@interface PUJoiningAssetReference
- (PUJoiningAssetReference)initWithContainedAssetReference:(id)reference hintDataSourceIndex:(int64_t)index indexPath:(id)path dataSourceIdentifier:(id)identifier;
- (id)description;
@end

@implementation PUJoiningAssetReference

- (id)description
{
  v8.receiver = self;
  v8.super_class = PUJoiningAssetReference;
  v3 = [(PUAssetReference *)&v8 description];
  hintDataSourceIndex = [(PUJoiningAssetReference *)self hintDataSourceIndex];
  containedAssetReference = [(PUJoiningAssetReference *)self containedAssetReference];
  v6 = [v3 stringByAppendingFormat:@" hintDataSourceIndex:%lu containedAssetReference:%@", hintDataSourceIndex, containedAssetReference];

  return v6;
}

- (PUJoiningAssetReference)initWithContainedAssetReference:(id)reference hintDataSourceIndex:(int64_t)index indexPath:(id)path dataSourceIdentifier:(id)identifier
{
  referenceCopy = reference;
  pathCopy = path;
  identifierCopy = identifier;
  if (!referenceCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUJoiningAssetsDataSource.m" lineNumber:269 description:{@"Invalid parameter not satisfying: %@", @"containedAssetReference != nil"}];
  }

  asset = [referenceCopy asset];
  assetCollection = [referenceCopy assetCollection];
  v20.receiver = self;
  v20.super_class = PUJoiningAssetReference;
  v17 = [(PUAssetReference *)&v20 initWithAsset:asset assetCollection:assetCollection indexPath:pathCopy dataSourceIdentifier:identifierCopy];

  if (v17)
  {
    v17->_hintDataSourceIndex = index;
    objc_storeStrong(&v17->_containedAssetReference, reference);
  }

  return v17;
}

@end