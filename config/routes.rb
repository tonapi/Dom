Dom::Application.routes.draw do
  get "admin/index"
  devise_for :users

  scope '/admin' do
  resources :devices
  resources :room_categories
  resources :categories
  resources :rooms
end

  get "main/index"
  root "main#index"

get '/room/:id', to: 'main#room', as: 'main_room'
get '/category/:id', to: 'main#category', as: 'main_category'

end
