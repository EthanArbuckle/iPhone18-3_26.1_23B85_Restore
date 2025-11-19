@interface _PHAWallpaperSuggestionCount
- (_PHAWallpaperSuggestionCount)initWithPersonLocalIdentifier:(id)a3 count:(id)a4;
@end

@implementation _PHAWallpaperSuggestionCount

- (_PHAWallpaperSuggestionCount)initWithPersonLocalIdentifier:(id)a3 count:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = _PHAWallpaperSuggestionCount;
  v9 = [(_PHAWallpaperSuggestionCount *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_personLocalIdentifer, a3);
    objc_storeStrong(&v10->_count, a4);
  }

  return v10;
}

@end