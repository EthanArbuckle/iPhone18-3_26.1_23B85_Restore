@interface PHFetchOptions(PXSearch)
+ (id)px_searchAssetFetchOptions;
+ (id)px_searchAssetFetchOptionsForPhotoLibrary:()PXSearch;
@end

@implementation PHFetchOptions(PXSearch)

+ (id)px_searchAssetFetchOptionsForPhotoLibrary:()PXSearch
{
  v7[1] = *MEMORY[0x1E69E9840];
  v3 = [a3 librarySpecificFetchOptions];
  [v3 setIncludeAssetSourceTypes:5];
  [v3 setIncludeHiddenAssets:0];
  [v3 setIncludeGuestAssets:1];
  [v3 setIncludeTorsoAndFaceDetectionData:1];
  v7[0] = *MEMORY[0x1E6978D08];
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  [v3 setFetchPropertySets:v4];

  v5 = [MEMORY[0x1E6978830] px_defaultDetectionTypes];
  [v3 setIncludedDetectionTypes:v5];

  return v3;
}

+ (id)px_searchAssetFetchOptions
{
  v2 = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
  v3 = [a1 px_searchAssetFetchOptionsForPhotoLibrary:v2];

  return v3;
}

@end