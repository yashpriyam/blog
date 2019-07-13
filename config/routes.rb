Rails.application.routes.draw do
  devise_for :users
  resources :posts
  resources :conversations do
    resources :messages
  end

  root 'posts#index'
  root 'conversations#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
