@interface PUMutableAssetExplorerReviewScreenAssetsDataSourceManagerImplementation
- (PUMutableAssetExplorerReviewScreenAssetsDataSourceManagerImplementation)initWithReplacementAssetsByUUID:(id)d;
- (void)removeReplacementAssetInDataSourceForUUID:(id)d;
- (void)replaceAssetInDataSourceWithAsset:(id)asset;
@end

@implementation PUMutableAssetExplorerReviewScreenAssetsDataSourceManagerImplementation

- (void)removeReplacementAssetInDataSourceForUUID:(id)d
{
  if (d)
  {
    [(NSMutableDictionary *)self->_replacementAssetsByUUID removeObjectForKey:?];
  }
}

- (void)replaceAssetInDataSourceWithAsset:(id)asset
{
  assetCopy = asset;
  uuid = [assetCopy uuid];
  if (uuid)
  {
    [(NSMutableDictionary *)self->_replacementAssetsByUUID setObject:assetCopy forKeyedSubscript:uuid];
  }
}

- (PUMutableAssetExplorerReviewScreenAssetsDataSourceManagerImplementation)initWithReplacementAssetsByUUID:(id)d
{
  dCopy = d;
  v10.receiver = self;
  v10.super_class = PUMutableAssetExplorerReviewScreenAssetsDataSourceManagerImplementation;
  v5 = [(PUMutableAssetExplorerReviewScreenAssetsDataSourceManagerImplementation *)&v10 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:dCopy];
    replacementAssetsByUUID = v5->_replacementAssetsByUUID;
    v5->_replacementAssetsByUUID = v6;

    v8 = v5;
  }

  return v5;
}

@end