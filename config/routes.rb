Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  get "/blog_posts/new", to: "blog_posts#new", as: :new_blog_post

  # as: blog_post will generate blog_post_path and blog_post_url method that 
  # we can access in the views
  get "/blog_posts/:id", to: "blog_posts#show", as: :blog_post

  # Defines the root path route ("/")
  root "blog_posts#index"
end
