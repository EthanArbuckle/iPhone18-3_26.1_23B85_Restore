@interface PGSinglePersonWallpaperAssetCandidate
- (PGSinglePersonWallpaperAssetCandidate)initWithAsset:(id)a3;
@end

@implementation PGSinglePersonWallpaperAssetCandidate

- (PGSinglePersonWallpaperAssetCandidate)initWithAsset:(id)a3
{
  v5 = a3;
  v18.receiver = self;
  v18.super_class = PGSinglePersonWallpaperAssetCandidate;
  v6 = [(PGSinglePersonWallpaperAssetCandidate *)&v18 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_asset, a3);
    v8 = [v5 uuid];
    assetUUID = v7->_assetUUID;
    v7->_assetUUID = v8;

    v10 = [v5 creationDate];
    creationDate = v7->_creationDate;
    v7->_creationDate = v10;

    v7->_isFavorite = [v5 isFavorite];
    v12 = [v5 mediaAnalysisProperties];
    [v12 wallpaperScore];
    v7->_wallpaperScore = v13;

    [v5 overallAestheticScore];
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