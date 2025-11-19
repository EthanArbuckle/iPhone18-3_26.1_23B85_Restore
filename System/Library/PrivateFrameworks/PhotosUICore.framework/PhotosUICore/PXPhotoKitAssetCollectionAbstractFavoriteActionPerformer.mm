@interface PXPhotoKitAssetCollectionAbstractFavoriteActionPerformer
@end

@implementation PXPhotoKitAssetCollectionAbstractFavoriteActionPerformer

void __82___PXPhotoKitAssetCollectionAbstractFavoriteActionPerformer_performBackgroundTask__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v25[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = PLMemoriesGetLog();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 48);
      v9 = *(a1 + 32);
      v18 = 67109378;
      v19 = v8;
      v20 = 2112;
      v21 = v9;
      _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_DEFAULT, "Did favorite: %d, memory: %@", &v18, 0x12u);
    }

    v10 = MEMORY[0x1E6991F28];
    if (*(a1 + 48))
    {
      v11 = @"com.apple.photos.CPAnalytics.assetCollectionFavorited";
    }

    else
    {
      v11 = @"com.apple.photos.CPAnalytics.assetCollectionUnfavorited";
    }

    v12 = *MEMORY[0x1E6991E08];
    v25[0] = *(a1 + 32);
    v13 = *MEMORY[0x1E6991E20];
    v24[0] = v12;
    v24[1] = v13;
    v14 = objc_opt_class();
    v7 = NSStringFromClass(v14);
    v25[1] = v7;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:2];
    [v10 sendEvent:v11 withPayload:v15];
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v16 = *(a1 + 48);
    v17 = *(a1 + 32);
    v18 = 67109634;
    v19 = v16;
    v20 = 2112;
    v21 = v17;
    v22 = 2112;
    v23 = v5;
    _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_ERROR, "Failed to favorite: %d, memory: %@, error: %@", &v18, 0x1Cu);
  }

  [*(a1 + 40) completeBackgroundTaskWithSuccess:a2 error:v5];
}

void __87___PXPhotoKitAssetCollectionAbstractFavoriteActionPerformer_performUserInteractionTask__block_invoke(uint64_t a1, unint64_t a2, void *a3, void *a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    v9 = PLSyndicationUIGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [v8 localizedDescription];
      v15 = 138412290;
      v16 = v10;
      _os_log_impl(&dword_1A3C1C000, v9, OS_LOG_TYPE_ERROR, "Abstract Favorite: Error processing unsaved syndicated assets: %@", &v15, 0xCu);
    }

    v11 = *(a1 + 32);
    v12 = 0;
    v13 = v8;
    goto LABEL_12;
  }

  if (a2 < 3)
  {
    v11 = *(a1 + 32);
    v12 = 1;
LABEL_11:
    v13 = 0;
LABEL_12:
    [v11 completeUserInteractionTaskWithSuccess:v12 error:v13];
    goto LABEL_13;
  }

  if (a2 == 4)
  {
    v11 = *(a1 + 32);
    v12 = 0;
    goto LABEL_11;
  }

  if (a2 == 3)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"PXPhotoKitAssetCollectionActionManager.m" lineNumber:938 description:@"Code which should be unreachable has been reached"];

    abort();
  }

LABEL_13:
}

@end