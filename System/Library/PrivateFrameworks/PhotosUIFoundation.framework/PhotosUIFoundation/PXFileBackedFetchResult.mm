@interface PXFileBackedFetchResult
- (PXFileBackedFetchResult)initWithAssets:(id)assets;
@end

@implementation PXFileBackedFetchResult

- (PXFileBackedFetchResult)initWithAssets:(id)assets
{
  assetsCopy = assets;
  v9.receiver = self;
  v9.super_class = PXFileBackedFetchResult;
  v5 = [(PXFileBackedFetchResult *)&v9 init];
  if (v5)
  {
    v6 = [assetsCopy copy];
    assets = v5->_assets;
    v5->_assets = v6;
  }

  return v5;
}

@end