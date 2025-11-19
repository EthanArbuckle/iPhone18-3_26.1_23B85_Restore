@interface PUAssetExplorerReviewScreenAssetsDataSourceAssetReference
- (PUAssetExplorerReviewScreenAssetsDataSourceAssetReference)initWithOriginalAssetReference:(id)a3 asset:(id)a4 dataSourceIdentifier:(id)a5;
- (id)description;
@end

@implementation PUAssetExplorerReviewScreenAssetsDataSourceAssetReference

- (id)description
{
  v7.receiver = self;
  v7.super_class = PUAssetExplorerReviewScreenAssetsDataSourceAssetReference;
  v3 = [(PUAssetReference *)&v7 description];
  v4 = [(PUAssetExplorerReviewScreenAssetsDataSourceAssetReference *)self originalAssetReference];
  v5 = [v3 stringByAppendingFormat:@" originalAssetReference:%@", v4];

  return v5;
}

- (PUAssetExplorerReviewScreenAssetsDataSourceAssetReference)initWithOriginalAssetReference:(id)a3 asset:(id)a4 dataSourceIdentifier:(id)a5
{
  v9 = a3;
  v10 = a5;
  v11 = a4;
  v12 = [v9 assetCollection];
  v13 = [v9 indexPath];
  v17.receiver = self;
  v17.super_class = PUAssetExplorerReviewScreenAssetsDataSourceAssetReference;
  v14 = [(PUAssetReference *)&v17 initWithAsset:v11 assetCollection:v12 indexPath:v13 dataSourceIdentifier:v10];

  if (v14)
  {
    objc_storeStrong(&v14->_originalAssetReference, a3);
    v15 = v14;
  }

  return v14;
}

@end