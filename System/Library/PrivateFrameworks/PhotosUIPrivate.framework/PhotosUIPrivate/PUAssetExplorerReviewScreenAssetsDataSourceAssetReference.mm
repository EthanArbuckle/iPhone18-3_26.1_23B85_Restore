@interface PUAssetExplorerReviewScreenAssetsDataSourceAssetReference
- (PUAssetExplorerReviewScreenAssetsDataSourceAssetReference)initWithOriginalAssetReference:(id)reference asset:(id)asset dataSourceIdentifier:(id)identifier;
- (id)description;
@end

@implementation PUAssetExplorerReviewScreenAssetsDataSourceAssetReference

- (id)description
{
  v7.receiver = self;
  v7.super_class = PUAssetExplorerReviewScreenAssetsDataSourceAssetReference;
  v3 = [(PUAssetReference *)&v7 description];
  originalAssetReference = [(PUAssetExplorerReviewScreenAssetsDataSourceAssetReference *)self originalAssetReference];
  v5 = [v3 stringByAppendingFormat:@" originalAssetReference:%@", originalAssetReference];

  return v5;
}

- (PUAssetExplorerReviewScreenAssetsDataSourceAssetReference)initWithOriginalAssetReference:(id)reference asset:(id)asset dataSourceIdentifier:(id)identifier
{
  referenceCopy = reference;
  identifierCopy = identifier;
  assetCopy = asset;
  assetCollection = [referenceCopy assetCollection];
  indexPath = [referenceCopy indexPath];
  v17.receiver = self;
  v17.super_class = PUAssetExplorerReviewScreenAssetsDataSourceAssetReference;
  v14 = [(PUAssetReference *)&v17 initWithAsset:assetCopy assetCollection:assetCollection indexPath:indexPath dataSourceIdentifier:identifierCopy];

  if (v14)
  {
    objc_storeStrong(&v14->_originalAssetReference, reference);
    v15 = v14;
  }

  return v14;
}

@end