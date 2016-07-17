defmodule Peepchat.Router do
  use Peepchat.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", Peepchat do
    pipe_through :api
    # Route stuff through our SessionController

    resources "session", SessionController, only: [:index]
  end
end
