@interface PXPhotoKitAssetCollectionPickerActionPerformer
+ (BOOL)canPerformOnAssetCollectionReference:(id)reference withInputs:(id)inputs;
- (void)_addAssets:(id)assets toUserAlbum:(id)album;
- (void)_dismissPickerControllerAndCompleteTaskWithSuccess:(BOOL)success error:(id)error;
- (void)_handlePickedAssets:(id)assets;
- (void)performUserInteractionTask;
- (void)picker:(id)picker didFinishPicking:(id)picking;
- (void)presentationControllerDidDismiss:(id)dismiss;
@end

@implementation PXPhotoKitAssetCollectionPickerActionPerformer

- (void)presentationControllerDidDismiss:(id)dismiss
{
  v8 = *MEMORY[0x1E69E9840];
  if (self->_pickerDidFinishPicking)
  {
    assetCollection = PLUIGetLog();
    if (os_log_type_enabled(assetCollection, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v6) = 0;
      _os_log_impl(&dword_1A3C1C000, assetCollection, OS_LOG_TYPE_DEFAULT, "Ignoring swipe to dismiss callback because the action is already finished (dismissed via the Cancel/Add button).", &v6, 2u);
    }
  }

  else
  {
    self->_pickerDidFinishPicking = 1;
    assetCollection = [(PXAssetCollectionActionPerformer *)self assetCollection];
    v5 = PLUIGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = 138412290;
      v7 = assetCollection;
      _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_INFO, "Picker action manually dismissed with no picked assets for assetCollection %@", &v6, 0xCu);
    }

    [(PXActionPerformer *)self completeUserInteractionTaskWithSuccess:1 error:0];
  }
}

- (void)_addAssets:(id)assets toUserAlbum:(id)album
{
  v17 = *MEMORY[0x1E69E9840];
  assetsCopy = assets;
  albumCopy = album;
  if (([albumCopy canPerformEditOperation:3] & 1) == 0)
  {
    PXAssertGetLog();
  }

  v8 = [[PXAddAssetsToAssetCollectionAction alloc] initWithAssets:assetsCopy assetCollection:albumCopy];
  if (v8)
  {
    undoManager = [(PXActionPerformer *)self undoManager];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __73__PXPhotoKitAssetCollectionPickerActionPerformer__addAssets_toUserAlbum___block_invoke;
    v11[3] = &unk_1E774AEC0;
    v12 = assetsCopy;
    v13 = albumCopy;
    selfCopy = self;
    [(PXAction *)v8 executeWithUndoManager:undoManager completionHandler:v11];
  }

  else
  {
    v10 = PLUIGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v16 = albumCopy;
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

- (void)_handlePickedAssets:(id)assets
{
  v22 = *MEMORY[0x1E69E9840];
  assetsCopy = assets;
  assetCollection = [(PXAssetCollectionActionPerformer *)self assetCollection];
  v6 = [assetsCopy count];
  v7 = PLUIGetLog();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
  if (v6)
  {
    if (v8)
    {
      *buf = 134218242;
      v19 = v6;
      v20 = 2112;
      v21 = assetCollection;
      _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_INFO, "Picked %lu assets to add to %@", buf, 0x16u);
    }

    if (_os_feature_enabled_impl() && [assetCollection px_isCloudKitSharedAlbum])
    {
      pickerController = self->_pickerController;
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __70__PXPhotoKitAssetCollectionPickerActionPerformer__handlePickedAssets___block_invoke;
      v15[3] = &unk_1E774A1B8;
      v15[4] = self;
      v16 = assetsCopy;
      v17 = assetCollection;
      [(PXActionPerformer *)self dismissViewController:pickerController completionHandler:v15];

      v10 = v16;
    }

    else
    {
      if (![assetCollection px_isStreamSharedAlbum])
      {
        [(PXPhotoKitAssetCollectionPickerActionPerformer *)self _addAssets:assetsCopy toUserAlbum:assetCollection];
        goto LABEL_14;
      }

      v11 = self->_pickerController;
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __70__PXPhotoKitAssetCollectionPickerActionPerformer__handlePickedAssets___block_invoke_2;
      v12[3] = &unk_1E774A1B8;
      v12[4] = self;
      v13 = assetsCopy;
      v14 = assetCollection;
      [(PXActionPerformer *)self dismissViewController:v11 completionHandler:v12];

      v10 = v13;
    }
  }

  else
  {
    if (v8)
    {
      *buf = 138412290;
      v19 = assetCollection;
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

- (void)_dismissPickerControllerAndCompleteTaskWithSuccess:(BOOL)success error:(id)error
{
  successCopy = success;
  pickerController = self->_pickerController;
  errorCopy = error;
  [(PXActionPerformer *)self dismissViewController:pickerController completionHandler:0];
  [(PXActionPerformer *)self completeUserInteractionTaskWithSuccess:successCopy error:errorCopy];
}

- (void)picker:(id)picker didFinishPicking:(id)picking
{
  v8 = *MEMORY[0x1E69E9840];
  pickerCopy = picker;
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
  delegate = [(PXActionPerformer *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    delegate2 = [(PXActionPerformer *)self delegate];
    memoryAssetsActionFactory = [delegate2 memoryAssetsActionFactory];
    assetsPickerPresenter = [memoryAssetsActionFactory assetsPickerPresenter];

    if (assetsPickerPresenter)
    {
      [assetsPickerPresenter presentAssetPicker];
      goto LABEL_14;
    }
  }

  else
  {
  }

  v7 = PLUIGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    assetCollection = [(PXAssetCollectionActionPerformer *)self assetCollection];
    v16 = 138412290;
    v17 = assetCollection;
    _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_INFO, "Presenting picker for adding assets to assetCollection %@", &v16, 0xCu);
  }

  assetsPickerPresenter = [(PXAssetCollectionActionPerformer *)self assetCollection];
  photoLibrary = [assetsPickerPresenter photoLibrary];
  if (_os_feature_enabled_impl() && [assetsPickerPresenter px_isMomentShare])
  {
    px_deprecated_appPhotoLibrary = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];

    photoLibrary = px_deprecated_appPhotoLibrary;
  }

  v11 = [objc_alloc(MEMORY[0x1E69790E0]) initWithPhotoLibraryAndOnlyReturnsIdentifiers:photoLibrary];
  [v11 setSelectionLimit:0];
  [v11 setDisabledCapabilities:16];
  [v11 _setDisabledPrivateCapabilities:7];
  v12 = [objc_alloc(MEMORY[0x1E69790F8]) initWithConfiguration:v11];
  [v12 setDelegate:self];
  presentationController = [v12 presentationController];
  [presentationController setDelegate:self];

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

+ (BOOL)canPerformOnAssetCollectionReference:(id)reference withInputs:(id)inputs
{
  inputsCopy = inputs;
  assetCollection = [reference assetCollection];
  if (!assetCollection)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetCollectionActionManager.m" lineNumber:2436 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"assetCollectionReference.assetCollection", v14}];
LABEL_10:

    goto LABEL_3;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v15 = objc_opt_class();
    v14 = NSStringFromClass(v15);
    px_descriptionForAssertionMessage = [assetCollection px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetCollectionActionManager.m" lineNumber:2436 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"assetCollectionReference.assetCollection", v14, px_descriptionForAssertionMessage}];

    goto LABEL_10;
  }

LABEL_3:
  if ((objc_opt_respondsToSelector() & 1) != 0 && ([inputsCopy memoryAssetsActionFactory], v9 = objc_claimAutoreleasedReturnValue(), v9, v9))
  {
    v10 = 1;
  }

  else
  {
    v10 = [assetCollection canPerformEditOperation:3];
  }

  return v10;
}

@end