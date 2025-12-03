@interface VUIBookmark
- (BOOL)hasRemoteData;
- (VUIBookmark)initWithCoder:(id)coder;
- (VUIBookmark)initWithKey:(id)key;
- (id)_copyWithResultClass:(Class)class;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VUIBookmark

- (VUIBookmark)initWithKey:(id)key
{
  keyCopy = key;
  if (keyCopy)
  {
    v10.receiver = self;
    v10.super_class = VUIBookmark;
    v6 = [(VUIBookmark *)&v10 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_key, key);
    }

    self = v7;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (VUIBookmark)initWithCoder:(id)coder
{
  coderCopy = coder;
  if (([coderCopy allowsKeyedCoding] & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Coder must allow keyed coding."];
  }

  v13.receiver = self;
  v13.super_class = VUIBookmark;
  v5 = [(VUIBookmark *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"TVSBookmark.Key"];
    key = v5->_key;
    v5->_key = v6;

    [coderCopy decodeDoubleForKey:@"TVSBookmark.BookmarkTime"];
    v5->_bookmarkTime = v8;
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"TVSBookmark.BookmarkTimestamp"];
    v10 = [v9 copy];
    bookmarkTimestamp = v5->_bookmarkTimestamp;
    v5->_bookmarkTimestamp = v10;

    v5->_playCount = [coderCopy decodeIntegerForKey:@"TVSBookmark.PlayCount"];
    v5->_hasBeenPlayed = [coderCopy decodeBoolForKey:@"TVSBookmark.HasBeenPlayed"];
    v5->_hasBeenRented = [coderCopy decodeBoolForKey:@"TVSBookmark.HasBeenRented"];
    v5->_isMarkedAsUnwatched = [coderCopy decodeBoolForKey:@"TVSBookmark.IsMarkedAsUnwatched"];
    v5->_hasFakeTimestamp = [coderCopy decodeBoolForKey:@"TVSBookmark.HasFakeTimestamp"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if (([coderCopy allowsKeyedCoding] & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Coder must allow keyed coding."];
  }

  v4 = [(VUIBookmark *)self key];
  [coderCopy encodeObject:v4 forKey:@"TVSBookmark.Key"];

  [(VUIBookmark *)self bookmarkTime];
  [coderCopy encodeDouble:@"TVSBookmark.BookmarkTime" forKey:?];
  bookmarkTimestamp = [(VUIBookmark *)self bookmarkTimestamp];
  [coderCopy encodeObject:bookmarkTimestamp forKey:@"TVSBookmark.BookmarkTimestamp"];

  [coderCopy encodeInteger:-[VUIBookmark playCount](self forKey:{"playCount"), @"TVSBookmark.PlayCount"}];
  [coderCopy encodeBool:-[VUIBookmark hasBeenPlayed](self forKey:{"hasBeenPlayed"), @"TVSBookmark.HasBeenPlayed"}];
  [coderCopy encodeBool:-[VUIBookmark hasBeenRented](self forKey:{"hasBeenRented"), @"TVSBookmark.HasBeenRented"}];
  [coderCopy encodeBool:-[VUIBookmark isMarkedAsUnwatched](self forKey:{"isMarkedAsUnwatched"), @"TVSBookmark.IsMarkedAsUnwatched"}];
  [coderCopy encodeBool:-[VUIBookmark hasFakeTimestamp](self forKey:{"hasFakeTimestamp"), @"TVSBookmark.HasFakeTimestamp"}];
}

- (id)_copyWithResultClass:(Class)class
{
  v4 = [[class alloc] initWithKey:self->_key];
  *(v4 + 24) = self->_bookmarkTime;
  objc_storeStrong((v4 + 32), self->_bookmarkTimestamp);
  *(v4 + 11) = self->_hasFakeTimestamp;
  *(v4 + 40) = self->_playCount;
  *(v4 + 8) = self->_hasBeenPlayed;
  *(v4 + 9) = self->_hasBeenRented;
  *(v4 + 10) = self->_isMarkedAsUnwatched;
  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  if ([(VUIBookmark *)self isMemberOfClass:objc_opt_class()])
  {

    return self;
  }

  else
  {
    v4 = objc_opt_class();

    return [(VUIBookmark *)self _copyWithResultClass:v4];
  }
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_class();

  return [(VUIBookmark *)self _copyWithResultClass:v4];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v7.receiver = self;
  v7.super_class = VUIBookmark;
  v4 = [(VUIBookmark *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@: key=[%@], bookmarkTime=%f, playCount=%d, hasBeenPlayed=%d, hasBeenRented=%d, isMarkedAsUnwatched=%d, bookmarkTimestamp=%@", v4, self->_key, *&self->_bookmarkTime, self->_playCount, self->_hasBeenPlayed, self->_hasBeenRented, self->_isMarkedAsUnwatched, self->_bookmarkTimestamp];

  return v5;
}

- (BOOL)hasRemoteData
{
  bookmarkTimestamp = [(VUIBookmark *)self bookmarkTimestamp];
  v3 = bookmarkTimestamp != 0;

  return v3;
}

@end