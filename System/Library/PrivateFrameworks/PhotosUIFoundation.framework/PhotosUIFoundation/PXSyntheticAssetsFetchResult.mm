@interface PXSyntheticAssetsFetchResult
- (PXSyntheticAssetsFetchResult)initWithAssets:(id)a3;
@end

@implementation PXSyntheticAssetsFetchResult

- (PXSyntheticAssetsFetchResult)initWithAssets:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PXSyntheticAssetsFetchResult;
  v5 = [(PXSyntheticAssetsFetchResult *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    assets = v5->_assets;
    v5->_assets = v6;
  }

  return v5;
}

@end