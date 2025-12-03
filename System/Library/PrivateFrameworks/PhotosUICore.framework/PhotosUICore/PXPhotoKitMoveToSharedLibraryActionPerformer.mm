@interface PXPhotoKitMoveToSharedLibraryActionPerformer
+ (BOOL)_canPerformWithHasSharedLibraryOrPreview:(BOOL)preview isExitingSharedLibrary:(BOOL)library collectionAllowsMoveToSharedLibrary:(BOOL)sharedLibrary isUnsavedSyndicatedAsset:(BOOL)asset canMoveAssetsToSharedLibrary:(BOOL)toSharedLibrary;
+ (BOOL)canPerformOnAsset:(id)asset inAssetCollection:(id)collection person:(id)person socialGroup:(id)group;
+ (id)createBarButtonItemWithTarget:(id)target action:(SEL)action actionManager:(id)manager;
+ (id)createPreviewActionWithTitle:(id)title image:(id)image handler:(id)handler;
- (void)_checkMoveToSharedLibraryConfirmationForAssets:(id)assets;
- (void)_moveAssetsToSharedLibraryWithCompletionHandler:(id)handler;
- (void)_performAdditionalUserInteractionTasks;
- (void)_presentFailureWithError:(id)error completionHandler:(id)handler;
- (void)performBackgroundTask;
- (void)performUserInteractionTask;
@end

@implementation PXPhotoKitMoveToSharedLibraryActionPerformer

- (void)_presentFailureWithError:(id)error completionHandler:(id)handler
{
  errorCopy = error;
  v6 = PXLocalizedSharedLibraryString(@"PXSharedLibraryMoveToSharedLibraryFailureAlertTitle");
  v7 = PXLocalizedSharedLibraryString(@"PXSharedLibraryGenericFailureAlertMessage");
  v8 = PXLocalizedStringFromTable(@"PXOK", @"PhotosUICore");
  v9 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v6 message:v7 preferredStyle:1];
  v10 = MEMORY[0x1E69DC648];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __91__PXPhotoKitMoveToSharedLibraryActionPerformer__presentFailureWithError_completionHandler___block_invoke;
  v16[3] = &unk_1E774A2C8;
  v16[4] = self;
  v11 = errorCopy;
  v17 = v11;
  v12 = [v10 actionWithTitle:v8 style:0 handler:v16];
  [v9 addAction:v12];

  if (![(PXActionPerformer *)self presentViewController:v9])
  {
    v13 = PLSharedLibraryGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *v15 = 0;
      _os_log_impl(&dword_1A3C1C000, v13, OS_LOG_TYPE_ERROR, "Failed to present failure alert", v15, 2u);
    }

    v14 = [MEMORY[0x1E696ABC0] px_errorWithDomain:@"PXSharedLibraryErrorDomain" code:-1000 debugDescription:@"Failed to present failure alert"];
    [(PXActionPerformer *)self completeBackgroundTaskWithSuccess:0 error:v14];
  }
}

- (void)_moveAssetsToSharedLibraryWithCompletionHandler:(id)handler
{
  if (!handler)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotoKitMoveToSharedLibraryActionPerformer.m" lineNumber:183 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];
  }

  v5 = PLSharedLibraryGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_DEFAULT, "Attempting to move assets to shared library. Calling PXSharedLibraryMoveAssetsToSharedLibrary()", buf, 2u);
  }

  v6 = self->_assetsToProcess;
  if (![(NSArray *)v6 count])
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXPhotoKitMoveToSharedLibraryActionPerformer.m" lineNumber:186 description:{@"Invalid parameter not satisfying: %@", @"assets.count"}];
  }

  PXLocalizedSharedLibraryString(@"PXSharedLibraryMoveToSharedLibraryToastTitle");
  objc_claimAutoreleasedReturnValue();
  PXLocalizedAssetCountForUsage([(NSArray *)v6 count], 0, 0, 0);
}

void __96__PXPhotoKitMoveToSharedLibraryActionPerformer__moveAssetsToSharedLibraryWithCompletionHandler___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 finishProgressMarkingAsComplete:0];
  if (a2)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    [*(a1 + 40) _presentFailureWithError:v6 completionHandler:*(a1 + 48)];
  }
}

- (void)_performAdditionalUserInteractionTasks
{
  objc_initWeak(&location, self);
  assets = [(PXPhotoKitAssetActionPerformer *)self assets];
  presentationEnvironment = [(PXActionPerformer *)self presentationEnvironment];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __86__PXPhotoKitMoveToSharedLibraryActionPerformer__performAdditionalUserInteractionTasks__block_invoke;
  v5[3] = &unk_1E77482C8;
  objc_copyWeak(&v6, &location);
  PXPromptToSaveUnsavedSyndicatedAssetsIfNecessary(assets, presentationEnvironment, v5);

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __86__PXPhotoKitMoveToSharedLibraryActionPerformer__performAdditionalUserInteractionTasks__block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v10 = a3;
  v6 = a4;
  v7 = [v10 count];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = WeakRetained;
  if (v7)
  {
    [WeakRetained _checkMoveToSharedLibraryConfirmationForAssets:v10];
  }

  else
  {
    [WeakRetained completeUserInteractionTaskWithSuccess:0 error:v6];
  }
}

- (void)_checkMoveToSharedLibraryConfirmationForAssets:(id)assets
{
  assetsCopy = assets;
  if (PXSharedLibraryShouldDisplayMoveToSharedLibraryConfirmation())
  {
    PXSharedLibraryGetMoveToSharedLibraryConfirmationTitleAndMessage(assetsCopy);
  }

  objc_storeStrong(&self->_assetsToProcess, assets);
  [(PXActionPerformer *)self completeUserInteractionTaskWithSuccess:1 error:0];
}

uint64_t __95__PXPhotoKitMoveToSharedLibraryActionPerformer__checkMoveToSharedLibraryConfirmationForAssets___block_invoke(uint64_t a1)
{
  PXSharedLibrarySetDidConfirmMoveToSharedLibrary(1);
  objc_storeStrong((*(a1 + 32) + 192), *(a1 + 40));
  v2 = *(a1 + 32);

  return [v2 completeUserInteractionTaskWithSuccess:1 error:0];
}

void __95__PXPhotoKitMoveToSharedLibraryActionPerformer__checkMoveToSharedLibraryConfirmationForAssets___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] px_genericErrorWithDebugDescription:@"Move to Shared Library canceled."];
  [v1 completeUserInteractionTaskWithSuccess:0 error:v2];
}

- (void)performBackgroundTask
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __69__PXPhotoKitMoveToSharedLibraryActionPerformer_performBackgroundTask__block_invoke;
  v2[3] = &unk_1E774C5C0;
  v2[4] = self;
  [(PXPhotoKitMoveToSharedLibraryActionPerformer *)self _moveAssetsToSharedLibraryWithCompletionHandler:v2];
}

- (void)performUserInteractionTask
{
  if (+[PXSharingConfidentialityController confidentialityCheckRequired]&& ([(PXPhotoKitAssetActionPerformer *)self assets], v3 = objc_claimAutoreleasedReturnValue(), v4 = [PXSharingConfidentialityController confidentialWarningRequiredForAssets:v3], v3, v4))
  {
    v7[4] = self;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __74__PXPhotoKitMoveToSharedLibraryActionPerformer_performUserInteractionTask__block_invoke;
    v8[3] = &unk_1E7749600;
    v8[4] = self;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __74__PXPhotoKitMoveToSharedLibraryActionPerformer_performUserInteractionTask__block_invoke_2;
    v7[3] = &unk_1E7749600;
    v5 = [PXSharingConfidentialityController confidentialityAlertWithConfirmAction:v8 abortAction:v7];
    if (![(PXActionPerformer *)self presentViewController:v5])
    {
      v6 = [MEMORY[0x1E696ABC0] px_genericErrorWithDebugDescription:@"Failed to present confidentiality alert"];
      [(PXActionPerformer *)self completeUserInteractionTaskWithSuccess:0 error:v6];
    }
  }

  else
  {

    [(PXPhotoKitMoveToSharedLibraryActionPerformer *)self _performAdditionalUserInteractionTasks];
  }
}

void __74__PXPhotoKitMoveToSharedLibraryActionPerformer_performUserInteractionTask__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] px_genericErrorWithDebugDescription:@"User cancelled because of confidentiality alert"];
  [v1 completeUserInteractionTaskWithSuccess:0 error:v2];
}

+ (id)createBarButtonItemWithTarget:(id)target action:(SEL)action actionManager:(id)manager
{
  targetCopy = target;
  selectionManager = [manager selectionManager];
  selectionSnapshot = [selectionManager selectionSnapshot];
  allItemsEnumerator = [selectionSnapshot allItemsEnumerator];
  v11 = _PXSharedLibraryFetchAssetsFromAssets(allItemsEnumerator, 0, 0, 0);

  v12 = [v11 count];
  if (v12)
  {
    PXLocalizedSharedLibraryAssetCountForUsage(v12, 0, 0, 17);
  }

  v13 = objc_alloc(MEMORY[0x1E69DC708]);
  v14 = PXLocalizedStringFromTable(@"PXSelectItems", @"PhotosUICore");
  v15 = [v13 initWithTitle:v14 style:0 target:targetCopy action:action];

  return v15;
}

+ (id)createPreviewActionWithTitle:(id)title image:(id)image handler:(id)handler
{
  handlerCopy = handler;
  v8 = MEMORY[0x1E69DC628];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __91__PXPhotoKitMoveToSharedLibraryActionPerformer_createPreviewActionWithTitle_image_handler___block_invoke;
  v14[3] = &unk_1E7742C90;
  v9 = handlerCopy;
  v15 = v9;
  v10 = [v8 actionWithTitle:title image:image identifier:0 handler:v14];
  px_deprecated_appPhotoLibrary = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
  v12 = [PXSharedLibraryStatusProvider sharedLibraryStatusProviderWithPhotoLibrary:px_deprecated_appPhotoLibrary];

  if ([v12 hasPreview])
  {
    PXSharedLibraryUpdateActionTitleForPreview(v10);
  }

  return v10;
}

+ (BOOL)canPerformOnAsset:(id)asset inAssetCollection:(id)collection person:(id)person socialGroup:(id)group
{
  v19[1] = *MEMORY[0x1E69E9840];
  collectionCopy = collection;
  assetCopy = asset;
  photoLibrary = [collectionCopy photoLibrary];
  v10 = [PXSharedLibraryStatusProvider sharedLibraryStatusProviderWithPhotoLibrary:photoLibrary];

  hasSharedLibraryOrPreview = [v10 hasSharedLibraryOrPreview];
  exiting = [v10 exiting];
  v13 = exiting != 0;

  px_allowsMoveToSharedLibrary = [collectionCopy px_allowsMoveToSharedLibrary];
  px_isUnsavedSyndicatedAsset = [assetCopy px_isUnsavedSyndicatedAsset];
  v19[0] = assetCopy;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
  CanMoveAssetsToSharedLibrary = PXSharedLibraryCanMoveAssetsToSharedLibrary(v16);

  LOBYTE(px_isUnsavedSyndicatedAsset) = [PXPhotoKitMoveToSharedLibraryActionPerformer _canPerformWithHasSharedLibraryOrPreview:hasSharedLibraryOrPreview isExitingSharedLibrary:v13 collectionAllowsMoveToSharedLibrary:px_allowsMoveToSharedLibrary isUnsavedSyndicatedAsset:px_isUnsavedSyndicatedAsset canMoveAssetsToSharedLibrary:CanMoveAssetsToSharedLibrary];
  return px_isUnsavedSyndicatedAsset;
}

+ (BOOL)_canPerformWithHasSharedLibraryOrPreview:(BOOL)preview isExitingSharedLibrary:(BOOL)library collectionAllowsMoveToSharedLibrary:(BOOL)sharedLibrary isUnsavedSyndicatedAsset:(BOOL)asset canMoveAssetsToSharedLibrary:(BOOL)toSharedLibrary
{
  v7 = (asset || toSharedLibrary) && sharedLibrary;
  if (library)
  {
    v7 = 0;
  }

  return preview && v7;
}

@end