@interface PXMonthsViewKeyAssetHackService
- (BOOL)canPerformAction;
- (BOOL)shouldSetKeyAssetForHighlight:(id)highlight;
@end

@implementation PXMonthsViewKeyAssetHackService

- (BOOL)shouldSetKeyAssetForHighlight:(id)highlight
{
  highlightCopy = highlight;
  if (MEMORY[0x1A590BA50]([highlightCopy type]))
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = PXMonthsViewKeyAssetHackService;
    v5 = [(PXDaysViewKeyAssetHackService *)&v7 shouldSetKeyAssetForHighlight:highlightCopy];
  }

  return v5;
}

- (BOOL)canPerformAction
{
  if (![objc_opt_class() keyAssetHackServiceIsEnabled])
  {
    return 0;
  }

  asset = [(PXKeyAssetHackService *)self asset];
  v4 = asset;
  if (asset)
  {
    photoLibrary = [asset photoLibrary];
    librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

    v7 = [MEMORY[0x1E6978650] fetchAssetCollectionsContainingAsset:v4 withType:6 options:librarySpecificFetchOptions];
    firstObject = [v7 firstObject];

    if (firstObject)
    {
      v9 = [firstObject type] == 5;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end