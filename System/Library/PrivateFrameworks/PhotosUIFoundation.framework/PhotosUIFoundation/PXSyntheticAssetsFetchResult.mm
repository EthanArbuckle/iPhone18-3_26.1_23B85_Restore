@interface PXSyntheticAssetsFetchResult
- (PXSyntheticAssetsFetchResult)initWithAssets:(id)assets;
@end

@implementation PXSyntheticAssetsFetchResult

- (PXSyntheticAssetsFetchResult)initWithAssets:(id)assets
{
  assetsCopy = assets;
  v9.receiver = self;
  v9.super_class = PXSyntheticAssetsFetchResult;
  v5 = [(PXSyntheticAssetsFetchResult *)&v9 init];
  if (v5)
  {
    v6 = [assetsCopy copy];
    assets = v5->_assets;
    v5->_assets = v6;
  }

  return v5;
}

@end