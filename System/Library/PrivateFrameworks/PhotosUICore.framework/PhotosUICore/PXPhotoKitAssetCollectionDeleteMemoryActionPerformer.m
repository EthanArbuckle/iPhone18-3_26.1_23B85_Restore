@interface PXPhotoKitAssetCollectionDeleteMemoryActionPerformer
+ (BOOL)canPerformOnAssetCollectionReference:(id)a3 withInputs:(id)a4;
- (void)_promptDeleteMemoryConfirmationWithCompletionHandler:(id)a3;
- (void)performBackgroundTask;
- (void)performUserInteractionTask;
@end

@implementation PXPhotoKitAssetCollectionDeleteMemoryActionPerformer

- (void)performBackgroundTask
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = [(PXAssetCollectionActionPerformer *)self assetCollection];
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    v18 = objc_opt_class();
    v17 = NSStringFromClass(v18);
    v19 = [v4 px_descriptionForAssertionMessage];
    [v15 handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetCollectionActionManager.m" lineNumber:1070 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"self.assetCollection", v17, v19}];
  }

  else
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    [v15 handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetCollectionActionManager.m" lineNumber:1070 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"self.assetCollection", v17}];
  }

LABEL_3:
  v5 = +[PXMemoriesRelatedSettings sharedInstance];
  v6 = [v5 deleteBehavior];

  v7 = PLMemoriesGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"delete";
    if (v6 != 1)
    {
      v8 = 0;
    }

    if (!v6)
    {
      v8 = @"reject";
    }

    v9 = v8;
    *buf = 138412546;
    v26 = v9;
    v27 = 2112;
    v28 = v4;
    _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_DEFAULT, "Will %@ memory: %@", buf, 0x16u);
  }

  if (v6 == 1)
  {
    v12 = [[PXDeleteCollectionsAction alloc] initWithCollection:v4];
  }

  else if (v6)
  {
    v12 = 0;
  }

  else
  {
    v10 = [PXRejectMemoriesAction alloc];
    v24 = v4;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v24 count:1];
    v12 = [(PXMemoriesAction *)v10 initWithMemories:v11];
  }

  v13 = [(PXActionPerformer *)self undoManager];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __77__PXPhotoKitAssetCollectionDeleteMemoryActionPerformer_performBackgroundTask__block_invoke;
  v20[3] = &unk_1E77411F0;
  v22 = self;
  v23 = v6;
  v21 = v4;
  v14 = v4;
  [(PXAction *)v12 executeWithUndoManager:v13 completionHandler:v20];
}

void __77__PXPhotoKitAssetCollectionDeleteMemoryActionPerformer_performBackgroundTask__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = PLMemoriesGetLog();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 48);
      v9 = @"delete";
      if (v8 != 1)
      {
        v9 = 0;
      }

      if (v8)
      {
        v10 = v9;
      }

      else
      {
        v10 = @"reject";
      }

      v11 = v10;
      v12 = *(a1 + 32);
      v21 = 138412546;
      v22 = v11;
      v23 = 2112;
      v24 = v12;
      v13 = "Did %@ memory: %@";
      v14 = v7;
      v15 = OS_LOG_TYPE_DEFAULT;
      v16 = 22;
LABEL_16:
      _os_log_impl(&dword_1A3C1C000, v14, v15, v13, &v21, v16);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v17 = *(a1 + 48);
    v18 = @"delete";
    if (v17 != 1)
    {
      v18 = 0;
    }

    if (v17)
    {
      v19 = v18;
    }

    else
    {
      v19 = @"reject";
    }

    v11 = v19;
    v20 = *(a1 + 32);
    v21 = 138412802;
    v22 = v11;
    v23 = 2112;
    v24 = v20;
    v25 = 2112;
    v26 = v5;
    v13 = "Failed to %@ memory: %@, error: %@";
    v14 = v7;
    v15 = OS_LOG_TYPE_ERROR;
    v16 = 32;
    goto LABEL_16;
  }

  [*(a1 + 40) completeBackgroundTaskWithSuccess:a2 error:v5];
}

- (void)performUserInteractionTask
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __82__PXPhotoKitAssetCollectionDeleteMemoryActionPerformer_performUserInteractionTask__block_invoke;
  v2[3] = &unk_1E774B308;
  v2[4] = self;
  [(PXPhotoKitAssetCollectionDeleteMemoryActionPerformer *)self _promptDeleteMemoryConfirmationWithCompletionHandler:v2];
}

uint64_t __82__PXPhotoKitAssetCollectionDeleteMemoryActionPerformer_performUserInteractionTask__block_invoke(uint64_t a1, int a2)
{
  v11[2] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = MEMORY[0x1E6991F28];
    v10[0] = *MEMORY[0x1E6991E08];
    v4 = [*(a1 + 32) assetCollection];
    v11[0] = v4;
    v10[1] = *MEMORY[0x1E6991E20];
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v11[1] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
    [v3 sendEvent:@"com.apple.photos.CPAnalytics.assetCollectionDeleted" withPayload:v7];

    return [*(a1 + 32) completeUserInteractionTaskWithSuccess:1 error:0];
  }

  else
  {
    v9 = *(a1 + 32);

    return [v9 completeUserInteractionTaskWithSuccess:0 error:0];
  }
}

- (void)_promptDeleteMemoryConfirmationWithCompletionHandler:(id)a3
{
  v14[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [(PXAssetCollectionActionPerformer *)self assetCollection];
  if (!v6)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    [v9 handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetCollectionActionManager.m" lineNumber:1050 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"self.assetCollection", v11}];
LABEL_6:

    goto LABEL_3;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    v12 = objc_opt_class();
    v11 = NSStringFromClass(v12);
    v13 = [v6 px_descriptionForAssertionMessage];
    [v9 handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetCollectionActionManager.m" lineNumber:1050 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"self.assetCollection", v11, v13}];

    goto LABEL_6;
  }

LABEL_3:
  v14[0] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  v8 = [(PXActionPerformer *)self presentationEnvironment];
  PXMemoriesDeleteConfirmationAlertShow(v7, v8, v5);
}

+ (BOOL)canPerformOnAssetCollectionReference:(id)a3 withInputs:(id)a4
{
  v4 = a3;
  if ([off_1E7721428 destructiveActionsEnabled])
  {
    v5 = [v4 assetCollection];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

@end