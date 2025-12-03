@interface PXMemoryCustomUserAssetsEdit
- (PXMemoryCustomUserAssetsEdit)initWithAssets:(id)assets;
@end

@implementation PXMemoryCustomUserAssetsEdit

- (PXMemoryCustomUserAssetsEdit)initWithAssets:(id)assets
{
  assetsCopy = assets;
  v9.receiver = self;
  v9.super_class = PXMemoryCustomUserAssetsEdit;
  v6 = [(PXMemoryCustomUserAssetsEdit *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_assets, assets);
  }

  return v7;
}

@end