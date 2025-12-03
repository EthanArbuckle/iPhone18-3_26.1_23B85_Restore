@interface PHFetchOptions(PXSearch)
+ (id)px_searchAssetFetchOptions;
+ (id)px_searchAssetFetchOptionsForPhotoLibrary:()PXSearch;
@end

@implementation PHFetchOptions(PXSearch)

+ (id)px_searchAssetFetchOptionsForPhotoLibrary:()PXSearch
{
  v7[1] = *MEMORY[0x1E69E9840];
  librarySpecificFetchOptions = [a3 librarySpecificFetchOptions];
  [librarySpecificFetchOptions setIncludeAssetSourceTypes:5];
  [librarySpecificFetchOptions setIncludeHiddenAssets:0];
  [librarySpecificFetchOptions setIncludeGuestAssets:1];
  [librarySpecificFetchOptions setIncludeTorsoAndFaceDetectionData:1];
  v7[0] = *MEMORY[0x1E6978D08];
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  [librarySpecificFetchOptions setFetchPropertySets:v4];

  px_defaultDetectionTypes = [MEMORY[0x1E6978830] px_defaultDetectionTypes];
  [librarySpecificFetchOptions setIncludedDetectionTypes:px_defaultDetectionTypes];

  return librarySpecificFetchOptions;
}

+ (id)px_searchAssetFetchOptions
{
  px_deprecated_appPhotoLibrary = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
  v3 = [self px_searchAssetFetchOptionsForPhotoLibrary:px_deprecated_appPhotoLibrary];

  return v3;
}

@end