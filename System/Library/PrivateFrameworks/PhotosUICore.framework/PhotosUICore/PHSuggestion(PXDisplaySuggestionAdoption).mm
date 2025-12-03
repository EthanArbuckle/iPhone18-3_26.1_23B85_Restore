@interface PHSuggestion(PXDisplaySuggestionAdoption)
- (id)fetchKeyAssets;
@end

@implementation PHSuggestion(PXDisplaySuggestionAdoption)

- (id)fetchKeyAssets
{
  photoLibrary = [self photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

  [librarySpecificFetchOptions setIncludeGuestAssets:1];
  v4 = [MEMORY[0x1E6978630] fetchKeyAssetsInAssetCollection:self options:librarySpecificFetchOptions];

  return v4;
}

@end