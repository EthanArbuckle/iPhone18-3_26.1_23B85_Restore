@interface PUAssetExplorerReviewScreenAssetsDataSourceManager
- (PUAssetExplorerReviewScreenAssetsDataSourceManager)initWithOriginalDataSourceManager:(id)manager;
- (id)assetsDataSourceManagerInterestingAssetReferences:(id)references;
- (void)_updateDataSource;
- (void)detachFromOriginalDataSourceManager;
- (void)performChanges:(id)changes;
@end

@implementation PUAssetExplorerReviewScreenAssetsDataSourceManager

- (id)assetsDataSourceManagerInterestingAssetReferences:(id)references
{
  delegate = [(PUAssetsDataSourceManager *)self delegate];
  v5 = [delegate assetsDataSourceManagerInterestingAssetReferences:self];
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __104__PUAssetExplorerReviewScreenAssetsDataSourceManager_assetsDataSourceManagerInterestingAssetReferences___block_invoke;
  v10[3] = &unk_1E7B75528;
  v11 = v6;
  v7 = v6;
  [v5 enumerateObjectsUsingBlock:v10];
  v8 = [v7 copy];

  return v8;
}

void __104__PUAssetExplorerReviewScreenAssetsDataSourceManager_assetsDataSourceManagerInterestingAssetReferences___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v4 originalAssetReference];
    if (v3)
    {
      [*(a1 + 32) addObject:v3];
    }
  }

  else
  {
    [*(a1 + 32) addObject:v4];
  }
}

- (void)_updateDataSource
{
  _originalDataSourceManager = [(PUAssetExplorerReviewScreenAssetsDataSourceManager *)self _originalDataSourceManager];
  assetsDataSource = [_originalDataSourceManager assetsDataSource];
  _replacementAssetsByUUID = [(PUAssetExplorerReviewScreenAssetsDataSourceManager *)self _replacementAssetsByUUID];
  v5 = MEMORY[0x1E695DFD8];
  allValues = [_replacementAssetsByUUID allValues];
  v7 = [v5 setWithArray:allValues];

  v8 = [[PUAssetExplorerReviewScreenAssetsDataSource alloc] initWithDataSource:assetsDataSource substitutedAssets:v7];
  [(PUAssetsDataSourceManager *)self setAssetsDataSource:v8];
}

- (void)performChanges:(id)changes
{
  changesCopy = changes;
  _replacementAssetsByUUID = [(PUAssetExplorerReviewScreenAssetsDataSourceManager *)self _replacementAssetsByUUID];
  v5 = [[PUMutableAssetExplorerReviewScreenAssetsDataSourceManagerImplementation alloc] initWithReplacementAssetsByUUID:_replacementAssetsByUUID];
  changesCopy[2](changesCopy, v5);

  replacementAssetsByUUID = [(PUMutableAssetExplorerReviewScreenAssetsDataSourceManagerImplementation *)v5 replacementAssetsByUUID];
  [(PUAssetExplorerReviewScreenAssetsDataSourceManager *)self _setReplacementAssetsByUUID:replacementAssetsByUUID];
  [(PUAssetExplorerReviewScreenAssetsDataSourceManager *)self _updateDataSource];
}

- (void)detachFromOriginalDataSourceManager
{
  _originalDataSourceManager = [(PUAssetExplorerReviewScreenAssetsDataSourceManager *)self _originalDataSourceManager];
  [_originalDataSourceManager setDelegate:0];

  [(PUAssetExplorerReviewScreenAssetsDataSourceManager *)self _setOriginalDataSourceManager:0];
}

- (PUAssetExplorerReviewScreenAssetsDataSourceManager)initWithOriginalDataSourceManager:(id)manager
{
  managerCopy = manager;
  v11.receiver = self;
  v11.super_class = PUAssetExplorerReviewScreenAssetsDataSourceManager;
  v6 = [(PUAssetExplorerReviewScreenAssetsDataSourceManager *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->__originalDataSourceManager, manager);
    [(PUAssetsDataSourceManager *)v7->__originalDataSourceManager setDelegate:v7];
    assetsDataSource = [managerCopy assetsDataSource];
    [(PUAssetsDataSourceManager *)v7 setAssetsDataSource:assetsDataSource];
    v9 = v7;
  }

  return v7;
}

@end