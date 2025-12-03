@interface PUPXAssetReference
- (PUPXAssetReference)initWithAsset:(id)asset assetCollection:(id)collection indexPath:(id)path dataSourceIdentifier:(id)identifier;
- (PUPXAssetReference)initWithPXAssetReference:(id)reference dataSourceIdentifier:(id)identifier;
@end

@implementation PUPXAssetReference

- (PUPXAssetReference)initWithPXAssetReference:(id)reference dataSourceIdentifier:(id)identifier
{
  referenceCopy = reference;
  identifierCopy = identifier;
  if (referenceCopy)
  {
    [referenceCopy indexPath];
  }

  else
  {
    memset(&v14[1], 0, 32);
  }

  v9 = PXIndexPathFromSimpleIndexPath();
  asset = [referenceCopy asset];
  assetCollection = [referenceCopy assetCollection];
  v14[0].receiver = self;
  v14[0].super_class = PUPXAssetReference;
  v12 = [(objc_super *)v14 initWithAsset:asset assetCollection:assetCollection indexPath:v9 dataSourceIdentifier:identifierCopy];

  if (v12)
  {
    objc_storeStrong(&v12->_underlyingAssetReference, reference);
  }

  return v12;
}

- (PUPXAssetReference)initWithAsset:(id)asset assetCollection:(id)collection indexPath:(id)path dataSourceIdentifier:(id)identifier
{
  assetCopy = asset;
  collectionCopy = collection;
  pathCopy = path;
  identifierCopy = identifier;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PUPXAssetReference.m" lineNumber:15 description:{@"%s is not available as initializer", "-[PUPXAssetReference initWithAsset:assetCollection:indexPath:dataSourceIdentifier:]"}];

  abort();
}

@end