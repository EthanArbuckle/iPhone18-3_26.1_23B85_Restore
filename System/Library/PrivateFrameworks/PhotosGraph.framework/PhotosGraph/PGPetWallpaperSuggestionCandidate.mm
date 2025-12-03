@interface PGPetWallpaperSuggestionCandidate
- (PGPetWallpaperSuggestionCandidate)initWithFace:(id)face inAsset:(id)asset;
@end

@implementation PGPetWallpaperSuggestionCandidate

- (PGPetWallpaperSuggestionCandidate)initWithFace:(id)face inAsset:(id)asset
{
  faceCopy = face;
  assetCopy = asset;
  v20.receiver = self;
  v20.super_class = PGPetWallpaperSuggestionCandidate;
  v9 = [(PGPetWallpaperSuggestionCandidate *)&v20 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_face, face);
    objc_storeStrong(&v10->_asset, asset);
    uuid = [assetCopy uuid];
    assetUUID = v10->_assetUUID;
    v10->_assetUUID = uuid;

    creationDate = [assetCopy creationDate];
    creationDate = v10->_creationDate;
    v10->_creationDate = creationDate;

    v10->_isFavorite = [assetCopy isFavorite];
    mediaAnalysisProperties = [assetCopy mediaAnalysisProperties];
    [mediaAnalysisProperties wallpaperScore];
    v10->_wallpaperScore = v16;

    v17 = [objc_alloc(MEMORY[0x277D3C828]) initWithAsset:assetCopy classification:2 headroomFeasible:1];
    cropResult = v10->_cropResult;
    v10->_cropResult = v17;

    v10->_headroomEngaged = 0;
  }

  return v10;
}

@end