@interface PNWallpaperAlbumSuggestionGenerator
+ (id)cloudIdentifierForShuffleUserAlbumWithAssetCollection:(id)collection photoLibrary:(id)library;
+ (id)shuffleUserAlbumForCloudIdentifier:(id)identifier photoLibrary:(id)library;
- (id)assetsForDate:(id)date numberOfAssets:(int64_t)assets;
- (id)updateSuggestionsForDate:(id)date numberOfSuggestions:(int64_t)suggestions;
@end

@implementation PNWallpaperAlbumSuggestionGenerator

- (id)updateSuggestionsForDate:(id)date numberOfSuggestions:(int64_t)suggestions
{
  v6 = sub_1C754DF6C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C754DF2C();
  selfCopy = self;
  v11 = sub_1C7259D24(v9, suggestions);

  (*(v7 + 8))(v9, v6);

  return v11;
}

- (id)assetsForDate:(id)date numberOfAssets:(int64_t)assets
{
  v5 = sub_1C754DF6C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C754DF2C();
  selfCopy = self;
  sub_1C725A380(v8);

  (*(v6 + 8))(v8, v5);
  sub_1C6F65BE8(0, &qword_1EDD0FA70);
  v10 = sub_1C7550B3C();

  return v10;
}

+ (id)cloudIdentifierForShuffleUserAlbumWithAssetCollection:(id)collection photoLibrary:(id)library
{
  collectionCopy = collection;
  libraryCopy = library;
  static WallpaperAlbumSuggestionGenerator.cloudIdentifierForShuffleUserAlbum(assetCollection:photoLibrary:)(collectionCopy, libraryCopy);
  v8 = v7;

  if (v8)
  {
    v9 = sub_1C755065C();
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)shuffleUserAlbumForCloudIdentifier:(id)identifier photoLibrary:(id)library
{
  v5 = sub_1C755068C();
  v7 = v6;
  libraryCopy = library;
  v9 = static WallpaperAlbumSuggestionGenerator.shuffleUserAlbumForCloudIdentifier(_:photoLibrary:)(v5, v7, libraryCopy);

  return v9;
}

@end