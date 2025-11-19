@interface PGPetWallpaperSuggestionCandidate
- (PGPetWallpaperSuggestionCandidate)initWithFace:(id)a3 inAsset:(id)a4;
@end

@implementation PGPetWallpaperSuggestionCandidate

- (PGPetWallpaperSuggestionCandidate)initWithFace:(id)a3 inAsset:(id)a4
{
  v7 = a3;
  v8 = a4;
  v20.receiver = self;
  v20.super_class = PGPetWallpaperSuggestionCandidate;
  v9 = [(PGPetWallpaperSuggestionCandidate *)&v20 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_face, a3);
    objc_storeStrong(&v10->_asset, a4);
    v11 = [v8 uuid];
    assetUUID = v10->_assetUUID;
    v10->_assetUUID = v11;

    v13 = [v8 creationDate];
    creationDate = v10->_creationDate;
    v10->_creationDate = v13;

    v10->_isFavorite = [v8 isFavorite];
    v15 = [v8 mediaAnalysisProperties];
    [v15 wallpaperScore];
    v10->_wallpaperScore = v16;

    v17 = [objc_alloc(MEMORY[0x277D3C828]) initWithAsset:v8 classification:2 headroomFeasible:1];
    cropResult = v10->_cropResult;
    v10->_cropResult = v17;

    v10->_headroomEngaged = 0;
  }

  return v10;
}

@end