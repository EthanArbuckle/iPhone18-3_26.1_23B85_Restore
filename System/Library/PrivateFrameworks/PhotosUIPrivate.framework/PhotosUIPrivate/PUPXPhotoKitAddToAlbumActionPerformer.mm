@interface PUPXPhotoKitAddToAlbumActionPerformer
+ (BOOL)canPerformOnAsset:(id)asset inAssetCollection:(id)collection person:(id)person socialGroup:(id)group;
+ (id)createBarButtonItemWithTarget:(id)target action:(SEL)action actionManager:(id)manager;
- (id)_addAssetsActionForAssets:(id)assets assetCollection:(id)collection;
- (void)_dismissPickerControllerAndCompleteTaskWithSuccess:(BOOL)success error:(id)error;
- (void)_handlePickedAlbum:(id)album assets:(id)assets;
- (void)_handleUserInteractionTaskResult:(BOOL)result error:(id)error;
- (void)_presentAlbumPickerForAssets:(id)assets;
- (void)performUserInteractionTask;
- (void)picker:(id)picker didFinishPicking:(id)picking;
- (void)presentationControllerDidDismiss:(id)dismiss;
@end

@implementation PUPXPhotoKitAddToAlbumActionPerformer

+ (id)createBarButtonItemWithTarget:(id)target action:(SEL)action actionManager:(id)manager
{
  v6 = MEMORY[0x1E69DC708];
  targetCopy = target;
  v8 = [v6 alloc];
  v9 = PULocalizedString(@"ADD_TO_ALBUM_BUTTON_TITLE");
  v10 = [v8 initWithTitle:v9 style:0 target:targetCopy action:action];

  return v10;
}

+ (BOOL)canPerformOnAsset:(id)asset inAssetCollection:(id)collection person:(id)person socialGroup:(id)group
{
  assetCopy = asset;
  collectionCopy = collection;
  sourceType = [assetCopy sourceType];
  if ([assetCopy isTrashed] & 1) != 0 || (objc_msgSend(assetCopy, "isRecoveredAsset"))
  {
    LOBYTE(v10) = 0;
  }

  else
  {
    LOBYTE(v10) = 0;
    if (sourceType != 2 && sourceType != 8)
    {
      LOBYTE(v10) = [collectionCopy assetCollectionType] != 7;
    }
  }

  if ((PFIsPhotosAppAnyPlatform() & 1) == 0 && (PFIsCameraAppAnyPlatform() & 1) == 0)
  {
    v10 = [assetCopy px_isUnsavedSyndicatedAsset] ^ 1;
  }

  return v10;
}

- (void)_handleUserInteractionTaskResult:(BOOL)result error:(id)error
{
  resultCopy = result;
  errorCopy = error;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPXPhotoKitAddToAlbumActionPerformer.m" lineNumber:188 description:{@"%s must be called on the main thread", "-[PUPXPhotoKitAddToAlbumActionPerformer _handleUserInteractionTaskResult:error:]"}];
  }

  objc_initWeak(&location, self);
  albumPickerViewController = [(PUPXPhotoKitAddToAlbumActionPerformer *)self albumPickerViewController];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __80__PUPXPhotoKitAddToAlbumActionPerformer__handleUserInteractionTaskResult_error___block_invoke;
  v10[3] = &unk_1E7B80638;
  objc_copyWeak(&v11, &location);
  [(PXActionPerformer *)self dismissViewController:albumPickerViewController completionHandler:v10];

  [(PXActionPerformer *)self completeUserInteractionTaskWithSuccess:resultCopy error:errorCopy];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __80__PUPXPhotoKitAddToAlbumActionPerformer__handleUserInteractionTaskResult_error___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setAlbumPickerViewController:0];
}

- (void)_handlePickedAlbum:(id)album assets:(id)assets
{
  albumCopy = album;
  assetsCopy = assets;
  objc_initWeak(&location, self);
  if (!albumCopy)
  {
    v10 = @"Missing asset collection";
LABEL_6:
    objc_copyWeak(&v11, &location);
    px_dispatch_on_main_queue();

    objc_destroyWeak(&v11);
    goto LABEL_7;
  }

  v8 = [(PUPXPhotoKitAddToAlbumActionPerformer *)self _addAssetsActionForAssets:assetsCopy assetCollection:albumCopy];
  if (!v8)
  {
    v10 = @"Failed to create add to asset collection action";
    goto LABEL_6;
  }

  [objc_opt_class() _configureAction:v8];
  undoManager = [(PXActionPerformer *)self undoManager];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __67__PUPXPhotoKitAddToAlbumActionPerformer__handlePickedAlbum_assets___block_invoke;
  v12[3] = &unk_1E7B7CEB0;
  v13 = assetsCopy;
  v14 = albumCopy;
  objc_copyWeak(&v15, &location);
  [v8 executeWithUndoManager:undoManager completionHandler:v12];

  objc_destroyWeak(&v15);
LABEL_7:
  objc_destroyWeak(&location);
}

void __67__PUPXPhotoKitAddToAlbumActionPerformer__handlePickedAlbum_assets___block_invoke(uint64_t a1, char a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = PLUIGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v8 = *(a1 + 40);
      *buf = 138412802;
      v13 = v5;
      v14 = 2112;
      v15 = v7;
      v16 = 2112;
      v17 = v8;
      _os_log_impl(&dword_1B36F3000, v6, OS_LOG_TYPE_ERROR, "failed adding assets to album: %@ %@ %@", buf, 0x20u);
    }
  }

  objc_copyWeak(&v10, (a1 + 48));
  v11 = a2;
  v9 = v5;
  px_dispatch_on_main_queue();

  objc_destroyWeak(&v10);
}

void __67__PUPXPhotoKitAddToAlbumActionPerformer__handlePickedAlbum_assets___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [MEMORY[0x1E696ABC0] px_genericErrorWithDebugDescription:*(a1 + 32)];
  [WeakRetained _handleUserInteractionTaskResult:0 error:v2];
}

void __67__PUPXPhotoKitAddToAlbumActionPerformer__handlePickedAlbum_assets___block_invoke_201(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _handleUserInteractionTaskResult:*(a1 + 48) error:*(a1 + 32)];
}

- (id)_addAssetsActionForAssets:(id)assets assetCollection:(id)collection
{
  v5 = MEMORY[0x1E69C3318];
  collectionCopy = collection;
  assetsCopy = assets;
  v8 = [[v5 alloc] initWithAssets:assetsCopy assetCollection:collectionCopy];

  [v8 setShouldSortAssetsByCreationDate:1];

  return v8;
}

- (void)_dismissPickerControllerAndCompleteTaskWithSuccess:(BOOL)success error:(id)error
{
  successCopy = success;
  errorCopy = error;
  albumPickerViewController = [(PUPXPhotoKitAddToAlbumActionPerformer *)self albumPickerViewController];
  [(PXActionPerformer *)self dismissViewController:albumPickerViewController completionHandler:0];

  [(PXActionPerformer *)self completeUserInteractionTaskWithSuccess:successCopy error:errorCopy];
}

- (void)picker:(id)picker didFinishPicking:(id)picking
{
  v22[1] = *MEMORY[0x1E69E9840];
  pickerCopy = picker;
  pickingCopy = picking;
  v8 = pickingCopy;
  if (self->_pickerDidFinishPicking)
  {
    v9 = PLUIGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v21 = 0;
      _os_log_impl(&dword_1B36F3000, v9, OS_LOG_TYPE_DEFAULT, "Ignoring picker did finish picking callback because the action is already finished (dismissed via swipe gesture or Cancel + Done were tapped at the same time).", v21, 2u);
    }
  }

  else
  {
    self->_pickerDidFinishPicking = 1;
    if ([pickingCopy count])
    {
      assets = [(PXPhotoKitAssetActionPerformer *)self assets];
      firstObject = [assets firstObject];
      photoLibrary = [firstObject photoLibrary];
      librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

      firstObject2 = [v8 firstObject];
      itemIdentifier = [firstObject2 itemIdentifier];

      v16 = MEMORY[0x1E6978650];
      v22[0] = itemIdentifier;
      v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
      v18 = [v16 fetchAssetCollectionsWithLocalIdentifiers:v17 options:librarySpecificFetchOptions];
      firstObject3 = [v18 firstObject];

      assets2 = [(PXPhotoKitAssetActionPerformer *)self assets];
      [(PUPXPhotoKitAddToAlbumActionPerformer *)self _handlePickedAlbum:firstObject3 assets:assets2];
    }

    else
    {
      [(PUPXPhotoKitAddToAlbumActionPerformer *)self _dismissPickerControllerAndCompleteTaskWithSuccess:0 error:0];
    }
  }
}

- (void)presentationControllerDidDismiss:(id)dismiss
{
  if (self->_pickerDidFinishPicking)
  {
    v3 = PLUIGetLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B36F3000, v3, OS_LOG_TYPE_DEFAULT, "Ignoring swipe to dismiss callback because the action is already finished (dismissed via the Cancel/Add button).", buf, 2u);
    }
  }

  else
  {
    self->_pickerDidFinishPicking = 1;
    v5 = [MEMORY[0x1E696ABC0] px_genericErrorWithDebugDescription:@"Picker cancelled by presentation controller dismissal"];
    [(PUPXPhotoKitAddToAlbumActionPerformer *)self _dismissPickerControllerAndCompleteTaskWithSuccess:0 error:v5];
  }
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

void __67__PUPXPhotoKitAddToAlbumActionPerformer_performUserInteractionTask__block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v10 = a3;
  v6 = a4;
  v7 = [v10 count];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = WeakRetained;
  if (v7)
  {
    [WeakRetained _presentAlbumPickerForAssets:v10];
  }

  else
  {
    [WeakRetained completeUserInteractionTaskWithSuccess:0 error:v6];
  }
}

- (void)_presentAlbumPickerForAssets:(id)assets
{
  v9 = PXEnsureAllSavedSyndicatedAssetsAreFromUserLibrary();
  v4 = [(PUPXPhotoKitAddToAlbumActionPerformer *)self _pickerConfigurationForAssets:v9];
  v5 = [objc_alloc(MEMORY[0x1E69790F8]) initWithConfiguration:v4];
  [v5 setDelegate:self];
  [(PUPXPhotoKitAddToAlbumActionPerformer *)self setAlbumPickerViewController:v5];
  albumPickerViewController = [(PUPXPhotoKitAddToAlbumActionPerformer *)self albumPickerViewController];
  presentationController = [albumPickerViewController presentationController];
  [presentationController setDelegate:self];

  albumPickerViewController2 = [(PUPXPhotoKitAddToAlbumActionPerformer *)self albumPickerViewController];
  [(PXActionPerformer *)self presentViewController:albumPickerViewController2];
}

@end