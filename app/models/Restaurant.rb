class Restaurant < ActiveRecord::Base
  has_many :reservations
  has_many :users, through: :reservations


  def self.all_names
    Restaurant.all.map do |restaurant_instance|
      restaurant_instance.name
    end
  end

 


end
