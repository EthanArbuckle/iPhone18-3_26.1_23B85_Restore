@interface PUJoiningAssetReference
- (PUJoiningAssetReference)initWithContainedAssetReference:(id)a3 hintDataSourceIndex:(int64_t)a4 indexPath:(id)a5 dataSourceIdentifier:(id)a6;
- (id)description;
@end

@implementation PUJoiningAssetReference

- (id)description
{
  v8.receiver = self;
  v8.super_class = PUJoiningAssetReference;
  v3 = [(PUAssetReference *)&v8 description];
  v4 = [(PUJoiningAssetReference *)self hintDataSourceIndex];
  v5 = [(PUJoiningAssetReference *)self containedAssetReference];
  v6 = [v3 stringByAppendingFormat:@" hintDataSourceIndex:%lu containedAssetReference:%@", v4, v5];

  return v6;
}

- (PUJoiningAssetReference)initWithContainedAssetReference:(id)a3 hintDataSourceIndex:(int64_t)a4 indexPath:(id)a5 dataSourceIdentifier:(id)a6
{
  v12 = a3;
  v13 = a5;
  v14 = a6;
  if (!v12)
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"PUJoiningAssetsDataSource.m" lineNumber:269 description:{@"Invalid parameter not satisfying: %@", @"containedAssetReference != nil"}];
  }

  v15 = [v12 asset];
  v16 = [v12 assetCollection];
  v20.receiver = self;
  v20.super_class = PUJoiningAssetReference;
  v17 = [(PUAssetReference *)&v20 initWithAsset:v15 assetCollection:v16 indexPath:v13 dataSourceIdentifier:v14];

  if (v17)
  {
    v17->_hintDataSourceIndex = a4;
    objc_storeStrong(&v17->_containedAssetReference, a3);
  }

  return v17;
}

@end