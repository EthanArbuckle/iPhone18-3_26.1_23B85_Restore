@interface PNWallpaperAlbumSuggestionGenerator
+ (id)cloudIdentifierForShuffleUserAlbumWithAssetCollection:(id)a3 photoLibrary:(id)a4;
+ (id)shuffleUserAlbumForCloudIdentifier:(id)a3 photoLibrary:(id)a4;
- (id)assetsForDate:(id)a3 numberOfAssets:(int64_t)a4;
- (id)updateSuggestionsForDate:(id)a3 numberOfSuggestions:(int64_t)a4;
@end

@implementation PNWallpaperAlbumSuggestionGenerator

- (id)updateSuggestionsForDate:(id)a3 numberOfSuggestions:(int64_t)a4
{
  v6 = sub_1C754DF6C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C754DF2C();
  v10 = self;
  v11 = sub_1C7259D24(v9, a4);

  (*(v7 + 8))(v9, v6);

  return v11;
}

- (id)assetsForDate:(id)a3 numberOfAssets:(int64_t)a4
{
  v5 = sub_1C754DF6C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C754DF2C();
  v9 = self;
  sub_1C725A380(v8);

  (*(v6 + 8))(v8, v5);
  sub_1C6F65BE8(0, &qword_1EDD0FA70);
  v10 = sub_1C7550B3C();

  return v10;
}

+ (id)cloudIdentifierForShuffleUserAlbumWithAssetCollection:(id)a3 photoLibrary:(id)a4
{
  v5 = a3;
  v6 = a4;
  static WallpaperAlbumSuggestionGenerator.cloudIdentifierForShuffleUserAlbum(assetCollection:photoLibrary:)(v5, v6);
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

+ (id)shuffleUserAlbumForCloudIdentifier:(id)a3 photoLibrary:(id)a4
{
  v5 = sub_1C755068C();
  v7 = v6;
  v8 = a4;
  v9 = static WallpaperAlbumSuggestionGenerator.shuffleUserAlbumForCloudIdentifier(_:photoLibrary:)(v5, v7, v8);

  return v9;
}

@end