class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.create
    self.all << self.new
    self.all[-1]
  end

  def self.new_by_name(name)
    self.all << self.new
    self.all[-1].name = name
  end

end
