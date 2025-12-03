@interface PGCityscapeWallpaperSuggestionCandidate
- (PGCityscapeWallpaperSuggestionCandidate)initWithAsset:(id)asset;
@end

@implementation PGCityscapeWallpaperSuggestionCandidate

- (PGCityscapeWallpaperSuggestionCandidate)initWithAsset:(id)asset
{
  assetCopy = asset;
  v17.receiver = self;
  v17.super_class = PGCityscapeWallpaperSuggestionCandidate;
  v6 = [(PGCityscapeWallpaperSuggestionCandidate *)&v17 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_asset, asset);
    uuid = [assetCopy uuid];
    assetUUID = v7->_assetUUID;
    v7->_assetUUID = uuid;

    creationDate = [assetCopy creationDate];
    creationDate = v7->_creationDate;
    v7->_creationDate = creationDate;

    v7->_isFavorite = [assetCopy isFavorite];
    mediaAnalysisProperties = [assetCopy mediaAnalysisProperties];
    [mediaAnalysisProperties wallpaperScore];
    v7->_wallpaperScore = v13;

    v14 = [objc_alloc(MEMORY[0x277D3C828]) initWithAsset:assetCopy classification:4 headroomFeasible:0];
    cropResult = v7->_cropResult;
    v7->_cropResult = v14;

    v7->_cropScorePenalty = 4.0;
  }

  return v7;
}

@end