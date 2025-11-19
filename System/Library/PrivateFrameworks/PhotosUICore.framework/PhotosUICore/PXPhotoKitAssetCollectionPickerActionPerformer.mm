@interface PXPhotoKitAssetCollectionPickerActionPerformer
+ (BOOL)canPerformOnAssetCollectionReference:(id)a3 withInputs:(id)a4;
- (void)_addAssets:(id)a3 toUserAlbum:(id)a4;
- (void)_dismissPickerControllerAndCompleteTaskWithSuccess:(BOOL)a3 error:(id)a4;
- (void)_handlePickedAssets:(id)a3;
- (void)performUserInteractionTask;
- (void)picker:(id)a3 didFinishPicking:(id)a4;
- (void)presentationControllerDidDismiss:(id)a3;
@end

@implementation PXPhotoKitAssetCollectionPickerActionPerformer

- (void)presentationControllerDidDismiss:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  if (self->_pickerDidFinishPicking)
  {
    v3 = PLUIGetLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v6) = 0;
      _os_log_impl(&dword_1A3C1C000, v3, OS_LOG_TYPE_DEFAULT, "Ignoring swipe to dismiss callback because the action is already finished (dismissed via the Cancel/Add button).", &v6, 2u);
    }
  }

  else
  {
    self->_pickerDidFinishPicking = 1;
    v3 = [(PXAssetCollectionActionPerformer *)self assetCollection];
    v5 = PLUIGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = 138412290;
      v7 = v3;
      _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_INFO, "Picker action manually dismissed with no picked assets for assetCollection %@", &v6, 0xCu);
    }

    [(PXActionPerformer *)self completeUserInteractionTaskWithSuccess:1 error:0];
  }
}

- (void)_addAssets:(id)a3 toUserAlbum:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (([v7 canPerformEditOperation:3] & 1) == 0)
  {
    PXAssertGetLog();
  }

  v8 = [[PXAddAssetsToAssetCollectionAction alloc] initWithAssets:v6 assetCollection:v7];
  if (v8)
  {
    v9 = [(PXActionPerformer *)self undoManager];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __73__PXPhotoKitAssetCollectionPickerActionPerformer__addAssets_toUserAlbum___block_invoke;
    v11[3] = &unk_1E774AEC0;
    v12 = v6;
    v13 = v7;
    v14 = self;
    [(PXAction *)v8 executeWithUndoManager:v9 completionHandler:v11];
  }

  else
  {
    v10 = PLUIGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v16 = v7;
      _os_log_impl(&dword_1A3C1C000, v10, OS_LOG_TYPE_INFO, "Finishing picker action with no assets needed to be added to assetCollection %@", buf, 0xCu);
    }

    [(PXPhotoKitAssetCollectionPickerActionPerformer *)self _dismissPickerControllerAndCompleteTaskWithSuccess:1 error:0];
  }
}

void __73__PXPhotoKitAssetCollectionPickerActionPerformer__addAssets_toUserAlbum___block_invoke(uint64_t a1, int a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = PLUIGetLog();
  v7 = v6;
  if (a2)
  {
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      goto LABEL_7;
    }

    v8 = [*(a1 + 32) count];
    v9 = *(a1 + 40);
    *buf = 134218242;
    v18 = v8;
    v19 = 2112;
    v20 = v9;
    v10 = "Picker action added %lu assets to asset collection %@";
    v11 = v7;
    v12 = OS_LOG_TYPE_INFO;
    v13 = 22;
  }

  else
  {
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v14 = [*(a1 + 32) count];
    v15 = *(a1 + 40);
    *buf = 134218498;
    v18 = v14;
    v19 = 2112;
    v20 = v15;
    v21 = 2112;
    v22 = v5;
    v10 = "Failed to add %lu assets to asset collection %@. Error: %@";
    v11 = v7;
    v12 = OS_LOG_TYPE_ERROR;
    v13 = 32;
  }

  _os_log_impl(&dword_1A3C1C000, v11, v12, v10, buf, v13);
LABEL_7:

  v16 = v5;
  px_dispatch_on_main_queue();
}

- (void)_handlePickedAssets:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PXAssetCollectionActionPerformer *)self assetCollection];
  v6 = [v4 count];
  v7 = PLUIGetLog();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
  if (v6)
  {
    if (v8)
    {
      *buf = 134218242;
      v19 = v6;
      v20 = 2112;
      v21 = v5;
      _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_INFO, "Picked %lu assets to add to %@", buf, 0x16u);
    }

    if (_os_feature_enabled_impl() && [v5 px_isCloudKitSharedAlbum])
    {
      pickerController = self->_pickerController;
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __70__PXPhotoKitAssetCollectionPickerActionPerformer__handlePickedAssets___block_invoke;
      v15[3] = &unk_1E774A1B8;
      v15[4] = self;
      v16 = v4;
      v17 = v5;
      [(PXActionPerformer *)self dismissViewController:pickerController completionHandler:v15];

      v10 = v16;
    }

    else
    {
      if (![v5 px_isStreamSharedAlbum])
      {
        [(PXPhotoKitAssetCollectionPickerActionPerformer *)self _addAssets:v4 toUserAlbum:v5];
        goto LABEL_14;
      }

      v11 = self->_pickerController;
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __70__PXPhotoKitAssetCollectionPickerActionPerformer__handlePickedAssets___block_invoke_2;
      v12[3] = &unk_1E774A1B8;
      v12[4] = self;
      v13 = v4;
      v14 = v5;
      [(PXActionPerformer *)self dismissViewController:v11 completionHandler:v12];

      v10 = v13;
    }
  }

  else
  {
    if (v8)
    {
      *buf = 138412290;
      v19 = v5;
      _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_INFO, "Finishing picker action with no picked assets for assetCollection %@", buf, 0xCu);
    }

    [(PXPhotoKitAssetCollectionPickerActionPerformer *)self _dismissPickerControllerAndCompleteTaskWithSuccess:1 error:0];
  }

LABEL_14:
}

void __70__PXPhotoKitAssetCollectionPickerActionPerformer__handlePickedAssets___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) fetchedObjects];
  [v2 addAssets:v3 toSharedCollection:*(a1 + 48)];
}

void __70__PXPhotoKitAssetCollectionPickerActionPerformer__handlePickedAssets___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) fetchedObjects];
  [v2 addAssets:v3 toSharedAlbum:*(a1 + 48)];
}

- (void)_dismissPickerControllerAndCompleteTaskWithSuccess:(BOOL)a3 error:(id)a4
{
  v4 = a3;
  pickerController = self->_pickerController;
  v7 = a4;
  [(PXActionPerformer *)self dismissViewController:pickerController completionHandler:0];
  [(PXActionPerformer *)self completeUserInteractionTaskWithSuccess:v4 error:v7];
}

- (void)picker:(id)a3 didFinishPicking:(id)a4
{
  v8 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!self->_pickerDidFinishPicking)
  {
    self->_pickerDidFinishPicking = 1;
    PXMap();
  }

  v6 = PLUIGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1A3C1C000, v6, OS_LOG_TYPE_DEFAULT, "Ignoring picker did finish picking callback because the action is already finished (dismissed via swipe gesture or Cancel + Done were tapped at the same time).", v7, 2u);
  }
}

- (void)performUserInteractionTask
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [(PXActionPerformer *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [(PXActionPerformer *)self delegate];
    v5 = [v4 memoryAssetsActionFactory];
    v6 = [v5 assetsPickerPresenter];

    if (v6)
    {
      [v6 presentAssetPicker];
      goto LABEL_14;
    }
  }

  else
  {
  }

  v7 = PLUIGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = [(PXAssetCollectionActionPerformer *)self assetCollection];
    v16 = 138412290;
    v17 = v8;
    _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_INFO, "Presenting picker for adding assets to assetCollection %@", &v16, 0xCu);
  }

  v6 = [(PXAssetCollectionActionPerformer *)self assetCollection];
  v9 = [v6 photoLibrary];
  if (_os_feature_enabled_impl() && [v6 px_isMomentShare])
  {
    v10 = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];

    v9 = v10;
  }

  v11 = [objc_alloc(MEMORY[0x1E69790E0]) initWithPhotoLibraryAndOnlyReturnsIdentifiers:v9];
  [v11 setSelectionLimit:0];
  [v11 setDisabledCapabilities:16];
  [v11 _setDisabledPrivateCapabilities:7];
  v12 = [objc_alloc(MEMORY[0x1E69790F8]) initWithConfiguration:v11];
  [v12 setDelegate:self];
  v13 = [v12 presentationController];
  [v13 setDelegate:self];

  if ([(PXActionPerformer *)self presentViewController:v12])
  {
    v14 = v12;
    pickerController = self->_pickerController;
    self->_pickerController = v14;
  }

  else
  {
    pickerController = [MEMORY[0x1E696ABC0] px_genericErrorWithDebugDescription:@"PXPhotoKitAssetCollectionPickerActionPerformer: Failed to present Picker"];
    [(PXActionPerformer *)self completeUserInteractionTaskWithSuccess:0 error:pickerController];
  }

LABEL_14:
}

+ (BOOL)canPerformOnAssetCollectionReference:(id)a3 withInputs:(id)a4
{
  v7 = a4;
  v8 = [a3 assetCollection];
  if (!v8)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    [v12 handleFailureInMethod:a2 object:a1 file:@"PXPhotoKitAssetCollectionActionManager.m" lineNumber:2436 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"assetCollectionReference.assetCollection", v14}];
LABEL_10:

    goto LABEL_3;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    v15 = objc_opt_class();
    v14 = NSStringFromClass(v15);
    v16 = [v8 px_descriptionForAssertionMessage];
    [v12 handleFailureInMethod:a2 object:a1 file:@"PXPhotoKitAssetCollectionActionManager.m" lineNumber:2436 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"assetCollectionReference.assetCollection", v14, v16}];

    goto LABEL_10;
  }

LABEL_3:
  if ((objc_opt_respondsToSelector() & 1) != 0 && ([v7 memoryAssetsActionFactory], v9 = objc_claimAutoreleasedReturnValue(), v9, v9))
  {
    v10 = 1;
  }

  else
  {
    v10 = [v8 canPerformEditOperation:3];
  }

  return v10;
}

@end