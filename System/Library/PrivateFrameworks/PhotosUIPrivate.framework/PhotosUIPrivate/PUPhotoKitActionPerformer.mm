@interface PUPhotoKitActionPerformer
- (id)_indexPathsInPhotosDataSource:(id)source;
- (void)forceIncludeAssetsInDataSource;
- (void)instantlyExcludeAssetsFromDataSource;
- (void)stopExcludingAssetsFromDataSource;
@end

@implementation PUPhotoKitActionPerformer

- (id)_indexPathsInPhotosDataSource:(id)source
{
  sourceCopy = source;
  v5 = MEMORY[0x1E695DF70];
  assets = [(PUAssetActionPerformer *)self assets];
  v7 = [v5 arrayWithCapacity:{objc_msgSend(assets, "count")}];

  assetsByAssetCollection = [(PUAssetActionPerformer *)self assetsByAssetCollection];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __59__PUPhotoKitActionPerformer__indexPathsInPhotosDataSource___block_invoke;
  v14[3] = &unk_1E7B7BA28;
  v15 = sourceCopy;
  v9 = v7;
  v16 = v9;
  v10 = sourceCopy;
  [assetsByAssetCollection enumerateKeysAndObjectsUsingBlock:v14];

  v11 = v16;
  v12 = v9;

  return v9;
}

void __59__PUPhotoKitActionPerformer__indexPathsInPhotosDataSource___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(a1 + 32) indexPathForAsset:*(*(&v12 + 1) + 8 * v10) hintIndexPath:0 hintCollection:v5];
        if (v11)
        {
          [*(a1 + 40) addObject:v11];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)forceIncludeAssetsInDataSource
{
  photosDataSource = [(PUPhotoKitActionPerformer *)self photosDataSource];
  v3 = [(PUPhotoKitActionPerformer *)self _indexPathsInPhotosDataSource:photosDataSource];
  [photosDataSource forceIncludeAssetsAtIndexPaths:v3];
}

- (void)stopExcludingAssetsFromDataSource
{
  photosDataSource = [(PUPhotoKitActionPerformer *)self photosDataSource];
  assets = [(PUAssetActionPerformer *)self assets];
  [photosDataSource stopExcludingAssets:assets];
}

- (void)instantlyExcludeAssetsFromDataSource
{
  photosDataSource = [(PUPhotoKitActionPerformer *)self photosDataSource];
  v3 = [(PUPhotoKitActionPerformer *)self _indexPathsInPhotosDataSource:photosDataSource];
  [photosDataSource forceExcludeAssetsAtIndexPaths:v3];
}

@end