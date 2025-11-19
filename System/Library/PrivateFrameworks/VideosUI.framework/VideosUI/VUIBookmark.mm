@interface VUIBookmark
- (BOOL)hasRemoteData;
- (VUIBookmark)initWithCoder:(id)a3;
- (VUIBookmark)initWithKey:(id)a3;
- (id)_copyWithResultClass:(Class)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation VUIBookmark

- (VUIBookmark)initWithKey:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v10.receiver = self;
    v10.super_class = VUIBookmark;
    v6 = [(VUIBookmark *)&v10 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_key, a3);
    }

    self = v7;
    v8 = self;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (VUIBookmark)initWithCoder:(id)a3
{
  v4 = a3;
  if (([v4 allowsKeyedCoding] & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Coder must allow keyed coding."];
  }

  v13.receiver = self;
  v13.super_class = VUIBookmark;
  v5 = [(VUIBookmark *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"TVSBookmark.Key"];
    key = v5->_key;
    v5->_key = v6;

    [v4 decodeDoubleForKey:@"TVSBookmark.BookmarkTime"];
    v5->_bookmarkTime = v8;
    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"TVSBookmark.BookmarkTimestamp"];
    v10 = [v9 copy];
    bookmarkTimestamp = v5->_bookmarkTimestamp;
    v5->_bookmarkTimestamp = v10;

    v5->_playCount = [v4 decodeIntegerForKey:@"TVSBookmark.PlayCount"];
    v5->_hasBeenPlayed = [v4 decodeBoolForKey:@"TVSBookmark.HasBeenPlayed"];
    v5->_hasBeenRented = [v4 decodeBoolForKey:@"TVSBookmark.HasBeenRented"];
    v5->_isMarkedAsUnwatched = [v4 decodeBoolForKey:@"TVSBookmark.IsMarkedAsUnwatched"];
    v5->_hasFakeTimestamp = [v4 decodeBoolForKey:@"TVSBookmark.HasFakeTimestamp"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  if (([v6 allowsKeyedCoding] & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Coder must allow keyed coding."];
  }

  v4 = [(VUIBookmark *)self key];
  [v6 encodeObject:v4 forKey:@"TVSBookmark.Key"];

  [(VUIBookmark *)self bookmarkTime];
  [v6 encodeDouble:@"TVSBookmark.BookmarkTime" forKey:?];
  v5 = [(VUIBookmark *)self bookmarkTimestamp];
  [v6 encodeObject:v5 forKey:@"TVSBookmark.BookmarkTimestamp"];

  [v6 encodeInteger:-[VUIBookmark playCount](self forKey:{"playCount"), @"TVSBookmark.PlayCount"}];
  [v6 encodeBool:-[VUIBookmark hasBeenPlayed](self forKey:{"hasBeenPlayed"), @"TVSBookmark.HasBeenPlayed"}];
  [v6 encodeBool:-[VUIBookmark hasBeenRented](self forKey:{"hasBeenRented"), @"TVSBookmark.HasBeenRented"}];
  [v6 encodeBool:-[VUIBookmark isMarkedAsUnwatched](self forKey:{"isMarkedAsUnwatched"), @"TVSBookmark.IsMarkedAsUnwatched"}];
  [v6 encodeBool:-[VUIBookmark hasFakeTimestamp](self forKey:{"hasFakeTimestamp"), @"TVSBookmark.HasFakeTimestamp"}];
}

- (id)_copyWithResultClass:(Class)a3
{
  v4 = [[a3 alloc] initWithKey:self->_key];
  *(v4 + 24) = self->_bookmarkTime;
  objc_storeStrong((v4 + 32), self->_bookmarkTimestamp);
  *(v4 + 11) = self->_hasFakeTimestamp;
  *(v4 + 40) = self->_playCount;
  *(v4 + 8) = self->_hasBeenPlayed;
  *(v4 + 9) = self->_hasBeenRented;
  *(v4 + 10) = self->_isMarkedAsUnwatched;
  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
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

- (id)mutableCopyWithZone:(_NSZone *)a3
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
  v2 = [(VUIBookmark *)self bookmarkTimestamp];
  v3 = v2 != 0;

  return v3;
}

@end