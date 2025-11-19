@interface PXPhotoKitMoveToSharedLibraryActionPerformer
+ (BOOL)_canPerformWithHasSharedLibraryOrPreview:(BOOL)a3 isExitingSharedLibrary:(BOOL)a4 collectionAllowsMoveToSharedLibrary:(BOOL)a5 isUnsavedSyndicatedAsset:(BOOL)a6 canMoveAssetsToSharedLibrary:(BOOL)a7;
+ (BOOL)canPerformOnAsset:(id)a3 inAssetCollection:(id)a4 person:(id)a5 socialGroup:(id)a6;
+ (id)createBarButtonItemWithTarget:(id)a3 action:(SEL)a4 actionManager:(id)a5;
+ (id)createPreviewActionWithTitle:(id)a3 image:(id)a4 handler:(id)a5;
- (void)_checkMoveToSharedLibraryConfirmationForAssets:(id)a3;
- (void)_moveAssetsToSharedLibraryWithCompletionHandler:(id)a3;
- (void)_performAdditionalUserInteractionTasks;
- (void)_presentFailureWithError:(id)a3 completionHandler:(id)a4;
- (void)performBackgroundTask;
- (void)performUserInteractionTask;
@end

@implementation PXPhotoKitMoveToSharedLibraryActionPerformer

- (void)_presentFailureWithError:(id)a3 completionHandler:(id)a4
{
  v5 = a3;
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
  v11 = v5;
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

- (void)_moveAssetsToSharedLibraryWithCompletionHandler:(id)a3
{
  if (!a3)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"PXPhotoKitMoveToSharedLibraryActionPerformer.m" lineNumber:183 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];
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
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"PXPhotoKitMoveToSharedLibraryActionPerformer.m" lineNumber:186 description:{@"Invalid parameter not satisfying: %@", @"assets.count"}];
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
  v3 = [(PXPhotoKitAssetActionPerformer *)self assets];
  v4 = [(PXActionPerformer *)self presentationEnvironment];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __86__PXPhotoKitMoveToSharedLibraryActionPerformer__performAdditionalUserInteractionTasks__block_invoke;
  v5[3] = &unk_1E77482C8;
  objc_copyWeak(&v6, &location);
  PXPromptToSaveUnsavedSyndicatedAssetsIfNecessary(v3, v4, v5);

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

- (void)_checkMoveToSharedLibraryConfirmationForAssets:(id)a3
{
  v5 = a3;
  if (PXSharedLibraryShouldDisplayMoveToSharedLibraryConfirmation())
  {
    PXSharedLibraryGetMoveToSharedLibraryConfirmationTitleAndMessage(v5);
  }

  objc_storeStrong(&self->_assetsToProcess, a3);
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

+ (id)createBarButtonItemWithTarget:(id)a3 action:(SEL)a4 actionManager:(id)a5
{
  v7 = a3;
  v8 = [a5 selectionManager];
  v9 = [v8 selectionSnapshot];
  v10 = [v9 allItemsEnumerator];
  v11 = _PXSharedLibraryFetchAssetsFromAssets(v10, 0, 0, 0);

  v12 = [v11 count];
  if (v12)
  {
    PXLocalizedSharedLibraryAssetCountForUsage(v12, 0, 0, 17);
  }

  v13 = objc_alloc(MEMORY[0x1E69DC708]);
  v14 = PXLocalizedStringFromTable(@"PXSelectItems", @"PhotosUICore");
  v15 = [v13 initWithTitle:v14 style:0 target:v7 action:a4];

  return v15;
}

+ (id)createPreviewActionWithTitle:(id)a3 image:(id)a4 handler:(id)a5
{
  v7 = a5;
  v8 = MEMORY[0x1E69DC628];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __91__PXPhotoKitMoveToSharedLibraryActionPerformer_createPreviewActionWithTitle_image_handler___block_invoke;
  v14[3] = &unk_1E7742C90;
  v9 = v7;
  v15 = v9;
  v10 = [v8 actionWithTitle:a3 image:a4 identifier:0 handler:v14];
  v11 = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
  v12 = [PXSharedLibraryStatusProvider sharedLibraryStatusProviderWithPhotoLibrary:v11];

  if ([v12 hasPreview])
  {
    PXSharedLibraryUpdateActionTitleForPreview(v10);
  }

  return v10;
}

+ (BOOL)canPerformOnAsset:(id)a3 inAssetCollection:(id)a4 person:(id)a5 socialGroup:(id)a6
{
  v19[1] = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a3;
  v9 = [v7 photoLibrary];
  v10 = [PXSharedLibraryStatusProvider sharedLibraryStatusProviderWithPhotoLibrary:v9];

  v11 = [v10 hasSharedLibraryOrPreview];
  v12 = [v10 exiting];
  v13 = v12 != 0;

  v14 = [v7 px_allowsMoveToSharedLibrary];
  v15 = [v8 px_isUnsavedSyndicatedAsset];
  v19[0] = v8;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
  CanMoveAssetsToSharedLibrary = PXSharedLibraryCanMoveAssetsToSharedLibrary(v16);

  LOBYTE(v15) = [PXPhotoKitMoveToSharedLibraryActionPerformer _canPerformWithHasSharedLibraryOrPreview:v11 isExitingSharedLibrary:v13 collectionAllowsMoveToSharedLibrary:v14 isUnsavedSyndicatedAsset:v15 canMoveAssetsToSharedLibrary:CanMoveAssetsToSharedLibrary];
  return v15;
}

+ (BOOL)_canPerformWithHasSharedLibraryOrPreview:(BOOL)a3 isExitingSharedLibrary:(BOOL)a4 collectionAllowsMoveToSharedLibrary:(BOOL)a5 isUnsavedSyndicatedAsset:(BOOL)a6 canMoveAssetsToSharedLibrary:(BOOL)a7
{
  v7 = (a6 || a7) && a5;
  if (a4)
  {
    v7 = 0;
  }

  return a3 && v7;
}

@end