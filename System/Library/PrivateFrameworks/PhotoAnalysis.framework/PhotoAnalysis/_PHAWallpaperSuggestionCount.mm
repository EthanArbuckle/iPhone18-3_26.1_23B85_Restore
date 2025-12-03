@interface _PHAWallpaperSuggestionCount
- (_PHAWallpaperSuggestionCount)initWithPersonLocalIdentifier:(id)identifier count:(id)count;
@end

@implementation _PHAWallpaperSuggestionCount

- (_PHAWallpaperSuggestionCount)initWithPersonLocalIdentifier:(id)identifier count:(id)count
{
  identifierCopy = identifier;
  countCopy = count;
  v12.receiver = self;
  v12.super_class = _PHAWallpaperSuggestionCount;
  v9 = [(_PHAWallpaperSuggestionCount *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_personLocalIdentifer, identifier);
    objc_storeStrong(&v10->_count, count);
  }

  return v10;
}

@end