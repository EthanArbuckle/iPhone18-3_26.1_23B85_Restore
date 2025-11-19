@interface PUPXAssetReference
- (PUPXAssetReference)initWithAsset:(id)a3 assetCollection:(id)a4 indexPath:(id)a5 dataSourceIdentifier:(id)a6;
- (PUPXAssetReference)initWithPXAssetReference:(id)a3 dataSourceIdentifier:(id)a4;
@end

@implementation PUPXAssetReference

- (PUPXAssetReference)initWithPXAssetReference:(id)a3 dataSourceIdentifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (v7)
  {
    [v7 indexPath];
  }

  else
  {
    memset(&v14[1], 0, 32);
  }

  v9 = PXIndexPathFromSimpleIndexPath();
  v10 = [v7 asset];
  v11 = [v7 assetCollection];
  v14[0].receiver = self;
  v14[0].super_class = PUPXAssetReference;
  v12 = [(objc_super *)v14 initWithAsset:v10 assetCollection:v11 indexPath:v9 dataSourceIdentifier:v8];

  if (v12)
  {
    objc_storeStrong(&v12->_underlyingAssetReference, a3);
  }

  return v12;
}

- (PUPXAssetReference)initWithAsset:(id)a3 assetCollection:(id)a4 indexPath:(id)a5 dataSourceIdentifier:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = [MEMORY[0x1E696AAA8] currentHandler];
  [v15 handleFailureInMethod:a2 object:self file:@"PUPXAssetReference.m" lineNumber:15 description:{@"%s is not available as initializer", "-[PUPXAssetReference initWithAsset:assetCollection:indexPath:dataSourceIdentifier:]"}];

  abort();
}

@end