Rails.application.routes.draw do
  resources :users, only: [:new, :create]
  root 'welcome#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/login' => 'sessions#new'
  get '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
end
