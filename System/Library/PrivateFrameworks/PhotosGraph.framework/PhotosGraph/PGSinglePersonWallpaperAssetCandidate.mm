@interface PGSinglePersonWallpaperAssetCandidate
- (PGSinglePersonWallpaperAssetCandidate)initWithAsset:(id)asset;
@end

@implementation PGSinglePersonWallpaperAssetCandidate

- (PGSinglePersonWallpaperAssetCandidate)initWithAsset:(id)asset
{
  assetCopy = asset;
  v18.receiver = self;
  v18.super_class = PGSinglePersonWallpaperAssetCandidate;
  v6 = [(PGSinglePersonWallpaperAssetCandidate *)&v18 init];
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

    [assetCopy overallAestheticScore];
    v15 = v14;
    v16 = v15 + v7->_wallpaperScore;
    v7->_aestheticScore = v15;
    v7->_score = v16;
    v7->_faceQualityPenalty = 4.0;
    v7->_headroomEngaged = 0;
  }

  return v7;
}

@end