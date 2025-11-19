@interface PUPhotoKitFavoriteActionPerformer
- (void)_logEventForAssets:(id)a3 favorite:(BOOL)a4;
- (void)performBackgroundTask;
@end

@implementation PUPhotoKitFavoriteActionPerformer

- (void)_logEventForAssets:(id)a3 favorite:(BOOL)a4
{
  v16[2] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v5 = MEMORY[0x1E6991C70];
    if (!a4)
    {
      v5 = MEMORY[0x1E6991C78];
    }

    v6 = *v5;
    v7 = MEMORY[0x1E6991F28];
    v8 = *MEMORY[0x1E6991E18];
    v16[0] = a3;
    v9 = *MEMORY[0x1E6991E20];
    v15[0] = v8;
    v15[1] = v9;
    v10 = v6;
    v11 = a3;
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v16[1] = v13;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:2];
    [v7 sendEvent:v10 withPayload:v14];
  }
}

- (void)performBackgroundTask
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = [(PUPhotoKitFavoriteActionPerformer *)self favorite];
  if (!v3)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v4 = [(PUAssetActionPerformer *)self assetsByAssetCollection];
    v5 = [v4 allKeys];

    v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v18;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v18 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v17 + 1) + 8 * i);
          if ([v10 assetCollectionType] == 2 && objc_msgSend(v10, "assetCollectionSubtype") == 203)
          {

            [(PUPhotoKitActionPerformer *)self forceIncludeAssetsInDataSource];
            goto LABEL_13;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }
  }

LABEL_13:
  v11 = objc_alloc(MEMORY[0x1E69C3550]);
  v12 = [(PUAssetActionPerformer *)self assets];
  v13 = [v11 initWithAssets:v12 favorite:v3];

  v14 = [(PUAssetActionPerformer *)self undoManager];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __58__PUPhotoKitFavoriteActionPerformer_performBackgroundTask__block_invoke;
  v15[3] = &unk_1E7B7BAF0;
  v15[4] = self;
  v16 = v3;
  [v13 executeWithUndoManager:v14 completionHandler:v15];
}

void __58__PUPhotoKitFavoriteActionPerformer_performBackgroundTask__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  if (a2)
  {
    v5 = *(a1 + 32);
    v6 = [v5 assets];
    [v5 _logEventForAssets:v6 favorite:*(a1 + 40)];
  }

  [*(a1 + 32) completeBackgroundTaskWithSuccess:a2 error:v7];
}

@end