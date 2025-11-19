@interface PGCityscapeWallpaperSuggestionCandidate
- (PGCityscapeWallpaperSuggestionCandidate)initWithAsset:(id)a3;
@end

@implementation PGCityscapeWallpaperSuggestionCandidate

- (PGCityscapeWallpaperSuggestionCandidate)initWithAsset:(id)a3
{
  v5 = a3;
  v17.receiver = self;
  v17.super_class = PGCityscapeWallpaperSuggestionCandidate;
  v6 = [(PGCityscapeWallpaperSuggestionCandidate *)&v17 init];
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

    v14 = [objc_alloc(MEMORY[0x277D3C828]) initWithAsset:v5 classification:4 headroomFeasible:0];
    cropResult = v7->_cropResult;
    v7->_cropResult = v14;

    v7->_cropScorePenalty = 4.0;
  }

  return v7;
}

@end