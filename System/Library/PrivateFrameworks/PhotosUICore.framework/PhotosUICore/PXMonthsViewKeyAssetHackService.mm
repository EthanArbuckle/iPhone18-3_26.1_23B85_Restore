@interface PXMonthsViewKeyAssetHackService
- (BOOL)canPerformAction;
- (BOOL)shouldSetKeyAssetForHighlight:(id)a3;
@end

@implementation PXMonthsViewKeyAssetHackService

- (BOOL)shouldSetKeyAssetForHighlight:(id)a3
{
  v4 = a3;
  if (MEMORY[0x1A590BA50]([v4 type]))
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = PXMonthsViewKeyAssetHackService;
    v5 = [(PXDaysViewKeyAssetHackService *)&v7 shouldSetKeyAssetForHighlight:v4];
  }

  return v5;
}

- (BOOL)canPerformAction
{
  if (![objc_opt_class() keyAssetHackServiceIsEnabled])
  {
    return 0;
  }

  v3 = [(PXKeyAssetHackService *)self asset];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 photoLibrary];
    v6 = [v5 librarySpecificFetchOptions];

    v7 = [MEMORY[0x1E6978650] fetchAssetCollectionsContainingAsset:v4 withType:6 options:v6];
    v8 = [v7 firstObject];

    if (v8)
    {
      v9 = [v8 type] == 5;
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