ViewTemplateInheritance::Application.routes.draw do
  root 'home#show'
  resources :categories, only: :index
  resources :courses, only: :index
  resources :tutors, only: :index
  namespace :admin do
    resources :tutors, only: :index
  end
end
