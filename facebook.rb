#Attributes:
#name
# age
# birthday
# location
# relationship_status
# num_friends
# pictures
# wall

# Actions:
#poke
#post on wall
#add friend
#remove friend
#block

class User
  attr_accessor :name, :email, :num_friends, :friends, :photos #reader and writeer for name and email attributes
  attr_writer :password #writer for password attribute
  
  def initialize(name, email, password)
    @name = name
    @email = email
    @password = password
    @num_friends = 0
    @friends = []
    @wall = []
    @photos = []
  end
  
#   def add_friend(new_friend)
#     @num_friends = @num_friends + 1
#     @friends.push(new_friend)
#     new_friend.num_friends += 1
#     new_friend.friends.push(self)
# #     @num_friends += 1
#   end
  
  def add_friends(new_friend)
    @num_friends = @num_friends + 1
    @friends.push(new_friend)
  end
  
  def upload_photo(new_photo)
    @photos.push(new_photo)
  end
  
  def wall
    puts "Here is #{@name}'s wall!!"
    puts @wall.each do |post|
      puts post 
    end
    puts @photos.each do |photo|
      puts photo
    end
  end
   
  
  
  
  

 
end

aj = User.new("AJ", "aj@gmail.com", "skittles123")
aj.email=("kittenluv45@aol.com")


kaitlin = User.new("Kaitlin Young", "k@al.com", "puppies6767")
kaitlin.upload_photo("picture of babies hugging puppies!!!")

jason = User.new("Jason", "frisbee4lyfe@yahoo.com", "unicorn77")
  
aj.add_friend("jason")
aj.upload_photo("kittenz on fleek<3")
aj.wall



