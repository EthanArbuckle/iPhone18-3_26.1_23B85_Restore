@interface PXMemoryCustomUserAssetsEdit
- (PXMemoryCustomUserAssetsEdit)initWithAssets:(id)a3;
@end

@implementation PXMemoryCustomUserAssetsEdit

- (PXMemoryCustomUserAssetsEdit)initWithAssets:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PXMemoryCustomUserAssetsEdit;
  v6 = [(PXMemoryCustomUserAssetsEdit *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_assets, a3);
  }

  return v7;
}

@end