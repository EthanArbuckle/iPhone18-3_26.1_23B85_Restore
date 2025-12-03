@interface PTCinematographyTrackAllocator
- (PTCinematographyTrackAllocator)initWithTrackIdentifier:(int64_t)identifier;
- (id)_asCinematographyDictionary;
- (id)_initWithCinematographyDictionary:(id)dictionary;
- (int64_t)nextTrackIdentifier;
@end

@implementation PTCinematographyTrackAllocator

- (PTCinematographyTrackAllocator)initWithTrackIdentifier:(int64_t)identifier
{
  v5.receiver = self;
  v5.super_class = PTCinematographyTrackAllocator;
  result = [(PTCinematographyTrackAllocator *)&v5 init];
  if (result)
  {
    result->_trackIdentifier = identifier;
  }

  return result;
}

- (int64_t)nextTrackIdentifier
{
  trackIdentifier = self->_trackIdentifier;
  self->_trackIdentifier = trackIdentifier + 1;
  return trackIdentifier;
}

- (id)_asCinematographyDictionary
{
  v3 = objc_opt_new();
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:{-[PTCinematographyTrackAllocator trackIdentifier](self, "trackIdentifier")}];
  [v3 setObject:v4 forKeyedSubscript:@"track_id"];

  v5 = [v3 copy];

  return v5;
}

- (id)_initWithCinematographyDictionary:(id)dictionary
{
  v4 = [dictionary objectForKeyedSubscript:@"track_id"];
  v5 = v4;
  if (v4)
  {
    self = -[PTCinematographyTrackAllocator initWithTrackIdentifier:](self, "initWithTrackIdentifier:", [v4 integerValue]);
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end