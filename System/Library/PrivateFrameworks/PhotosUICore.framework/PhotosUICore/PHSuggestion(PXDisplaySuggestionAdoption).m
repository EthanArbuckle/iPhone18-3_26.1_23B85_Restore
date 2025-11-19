@interface PHSuggestion(PXDisplaySuggestionAdoption)
- (id)fetchKeyAssets;
@end

@implementation PHSuggestion(PXDisplaySuggestionAdoption)

- (id)fetchKeyAssets
{
  v2 = [a1 photoLibrary];
  v3 = [v2 librarySpecificFetchOptions];

  [v3 setIncludeGuestAssets:1];
  v4 = [MEMORY[0x1E6978630] fetchKeyAssetsInAssetCollection:a1 options:v3];

  return v4;
}

@end