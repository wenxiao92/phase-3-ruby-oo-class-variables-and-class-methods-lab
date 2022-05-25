class Song
    @@count = 0
    @@artists = []
    @@genres = []

    attr_accessor :name, :artist, :genre

    def initialize(name, artist, genre) #takes in three arguments
        @name = name #returns the name
        @artist = artist #returns the artist
        @genre = genre #returns the genre
        @@count += 1
        @@artists << artist #adds the artist to artists array when initailized
        @@genres << genre #adds the genre to genres array when initailized

    end

    def self.count #returns that number of songs created
        @@count
    end

    def self.artists
        @@artists.uniq #returns unique artists (removes duplicate if any)
    end

    def self.genres
        @@genres.uniq
    end

    def self.genre_count
        genre_count = {} #hash of genres
        @@genres.each do |genre|
            if genre_count[genre]
                genre_count[genre] += 1 #if genre already exists, then increment by 1
            else
                genre_count[genre] = 1 #if genre occur once, then set genre = 1
            end #end for if
        end #end for do
        return genre_count #return genres and their count
    end

    def self.artist_count
        artist_count = {} #hash of artists
        @@artists.each do |artist|
            if artist_count[artist]
                artist_count[artist] += 1 #if artist already exists, then increment by 1
            else
                artist_count[artist] = 1 #if artist occur once, then set artist = 1
            end #end for if
        end #end for do
        return artist_count #return artists and their count
    end

end