@interface PUPXPhotoKitAddToLastUsedAlbumActionPerformer
+ (BOOL)canPerformOnAsset:(id)asset inAssetCollection:(id)collection person:(id)person socialGroup:(id)group;
+ (id)localizedTitleForUseCase:(unint64_t)case actionManager:(id)manager;
- (id)localizedTitleForUseCase:(unint64_t)case;
- (void)_performUserInteractionTaskWithAssets:(id)assets;
- (void)performBackgroundTask;
- (void)performUserInteractionTask;
@end

@implementation PUPXPhotoKitAddToLastUsedAlbumActionPerformer

- (id)localizedTitleForUseCase:(unint64_t)case
{
  v3 = MEMORY[0x1E69C3320];
  assets = [(PXPhotoKitAssetActionPerformer *)self assets];
  firstObject = [assets firstObject];
  photoLibrary = [firstObject photoLibrary];
  v7 = [v3 commandTitleWithPhotoLibrary:photoLibrary];

  return v7;
}

- (void)performBackgroundTask
{
  v3 = self->_preparedAction;
  v4 = v3;
  if (v3)
  {
    underlyingAction = [(PXAddAssetsToLastUsedAssetCollectionAction *)v3 underlyingAction];
    [PUPXPhotoKitAddToAlbumActionPerformer _configureAction:underlyingAction];

    undoManager = [(PXActionPerformer *)self undoManager];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __70__PUPXPhotoKitAddToLastUsedAlbumActionPerformer_performBackgroundTask__block_invoke;
    v7[3] = &unk_1E7B7FB70;
    v7[4] = self;
    v8 = v4;
    [(PXAddAssetsToLastUsedAssetCollectionAction *)v8 executeWithUndoManager:undoManager completionHandler:v7];
  }

  else
  {
    [(PXActionPerformer *)self completeBackgroundTaskWithSuccess:0 error:0];
  }
}

void __70__PUPXPhotoKitAddToLastUsedAlbumActionPerformer_performBackgroundTask__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  v12[2] = *MEMORY[0x1E69E9840];
  [*(a1 + 32) completeBackgroundTaskWithSuccess:a2 error:a3];
  if (v3)
  {
    v5 = MEMORY[0x1E6991F28];
    v6 = *MEMORY[0x1E69C3F60];
    v11[0] = *MEMORY[0x1E6991E20];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v12[0] = v8;
    v11[1] = *MEMORY[0x1E6991E18];
    v9 = [*(a1 + 40) assets];
    v12[1] = v9;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
    [v5 sendEvent:v6 withPayload:v10];
  }
}

- (void)_performUserInteractionTaskWithAssets:(id)assets
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E69C3320];
  assetsCopy = assets;
  v21 = 0;
  v6 = [[v4 alloc] initWithAssets:assetsCopy error:&v21];

  v7 = v21;
  preparedAction = self->_preparedAction;
  self->_preparedAction = v6;

  if (v7)
  {
    v9 = PXAssertGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      v23 = v7;
      _os_log_fault_impl(&dword_1B36F3000, v9, OS_LOG_TYPE_FAULT, "unable to create action, %@", buf, 0xCu);
    }
  }

  targetAssetCollection = [(PXAddAssetsToLastUsedAssetCollectionAction *)self->_preparedAction targetAssetCollection];
  localizedTitle = [targetAssetCollection localizedTitle];
  if (!localizedTitle)
  {
    v12 = PXAssertGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      v23 = targetAssetCollection;
      _os_log_fault_impl(&dword_1B36F3000, v12, OS_LOG_TYPE_FAULT, "missing title for album %@", buf, 0xCu);
    }
  }

  v13 = MEMORY[0x1E69C3BC0];
  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __87__PUPXPhotoKitAddToLastUsedAlbumActionPerformer__performUserInteractionTaskWithAssets___block_invoke;
  v19 = &unk_1E7B7DB98;
  v20 = localizedTitle;
  v14 = localizedTitle;
  v15 = [v13 show:&v16];
  [(PXActionPerformer *)self completeUserInteractionTaskWithSuccess:1 error:0, v16, v17, v18, v19];
}

uint64_t __87__PUPXPhotoKitAddToLastUsedAlbumActionPerformer__performUserInteractionTaskWithAssets___block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32))
  {
    v2 = *(a1 + 32);
  }

  else
  {
    v2 = @"?";
  }

  return [MEMORY[0x1E69C3320] configureToast:a2 withAlbumName:v2];
}

- (void)performUserInteractionTask
{
  objc_initWeak(&location, self);
  assets = [(PXPhotoKitAssetActionPerformer *)self assets];
  presentationEnvironment = [(PXActionPerformer *)self presentationEnvironment];
  objc_copyWeak(&v5, &location);
  PXPromptToSaveUnsavedSyndicatedAssetsIfNecessary();

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __75__PUPXPhotoKitAddToLastUsedAlbumActionPerformer_performUserInteractionTask__block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v10 = a3;
  v6 = a4;
  v7 = [v10 count];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = WeakRetained;
  if (v7)
  {
    [WeakRetained _performUserInteractionTaskWithAssets:v10];
  }

  else
  {
    [WeakRetained completeUserInteractionTaskWithSuccess:0 error:v6];
  }
}

+ (id)localizedTitleForUseCase:(unint64_t)case actionManager:(id)manager
{
  v4 = MEMORY[0x1E69C3320];
  photoLibrary = [manager photoLibrary];
  v6 = [v4 commandTitleWithPhotoLibrary:photoLibrary];

  return v6;
}

+ (BOOL)canPerformOnAsset:(id)asset inAssetCollection:(id)collection person:(id)person socialGroup:(id)group
{
  v22 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  if (![PUPXPhotoKitAddToAlbumActionPerformer canPerformOnAsset:assetCopy inAssetCollection:collection person:person socialGroup:group])
  {
    v13 = PLUIGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v19 = assetCopy;
      _os_log_impl(&dword_1B36F3000, v13, OS_LOG_TYPE_DEBUG, "can't add %@ to last used album because PUPXPhotoKitAddToAlbumActionPerformer denies it", buf, 0xCu);
    }

    goto LABEL_9;
  }

  v10 = MEMORY[0x1E69C3320];
  photoLibrary = [assetCopy photoLibrary];
  v17 = 0;
  v12 = [v10 targetAssetCollectionInPhotoLibrary:photoLibrary error:&v17];
  v13 = v17;

  if (!v12)
  {
    v15 = PLUIGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v19 = assetCopy;
      v20 = 2112;
      v21 = v13;
      _os_log_impl(&dword_1B36F3000, v15, OS_LOG_TYPE_DEBUG, "can't add %@ to last used album because the target asset collection is missing: %@", buf, 0x16u);
    }

LABEL_9:
    v14 = 0;
    goto LABEL_10;
  }

  v14 = 1;
LABEL_10:

  return v14;
}

@end