@interface PGLandscapeWallpaperSuggestionCandidate
- (PGLandscapeWallpaperSuggestionCandidate)initWithAsset:(id)asset;
@end

@implementation PGLandscapeWallpaperSuggestionCandidate

- (PGLandscapeWallpaperSuggestionCandidate)initWithAsset:(id)asset
{
  assetCopy = asset;
  v17.receiver = self;
  v17.super_class = PGLandscapeWallpaperSuggestionCandidate;
  v6 = [(PGLandscapeWallpaperSuggestionCandidate *)&v17 init];
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

    v14 = [objc_alloc(MEMORY[0x277D3C828]) initWithAsset:assetCopy classification:3 headroomFeasible:0];
    cropResult = v7->_cropResult;
    v7->_cropResult = v14;

    *&v7->_cropScorePenalty = vdupq_n_s64(4uLL);
    v7->_wallpaperScorePenalty = 4;
  }

  return v7;
}

@end