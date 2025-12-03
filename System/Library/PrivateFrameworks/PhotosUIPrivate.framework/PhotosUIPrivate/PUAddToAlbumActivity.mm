@interface PUAddToAlbumActivity
+ (BOOL)canPerformWithItemSourceController:(id)controller;
- (BOOL)_presentActivityOnViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (BOOL)canPerformWithActivityItems:(id)items;
- (id)_albumPickerViewControllerWithAssets:(id)assets;
- (void)performActivity;
- (void)picker:(id)picker didFinishPicking:(id)picking;
@end

@implementation PUAddToAlbumActivity

- (void)performActivity
{
  itemSourceController = [(PXActivity *)self itemSourceController];
  assets = [itemSourceController assets];
  array = [assets array];

  v6 = PXEnsureAllSavedSyndicatedAssetsAreFromUserLibrary();
  v7 = [(PUAddToAlbumActivity *)self _albumPickerViewControllerWithAssets:v6];
  if (v7)
  {
    WeakRetained = objc_loadWeakRetained(&self->_presenterViewController);
    [WeakRetained px_presentOverTopmostPresentedViewController:v7 animated:1 completion:0];
  }

  else
  {
    v9 = PLUIGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_impl(&dword_1B36F3000, v9, OS_LOG_TYPE_ERROR, "Share Sheet: Failed to create album picker for adding assets to album.", v10, 2u);
    }

    [(UIActivity *)self activityDidFinish:0];
  }
}

- (BOOL)canPerformWithActivityItems:(id)items
{
  v4 = objc_opt_class();
  itemSourceController = [(PXActivity *)self itemSourceController];
  LOBYTE(v4) = [v4 canPerformWithItemSourceController:itemSourceController];

  return v4;
}

- (void)picker:(id)picker didFinishPicking:(id)picking
{
  v26[1] = *MEMORY[0x1E69E9840];
  pickingCopy = picking;
  if ([pickingCopy count])
  {
    selectedAssets = [(PUAddToAlbumActivity *)self selectedAssets];
    firstObject = [selectedAssets firstObject];
    photoLibrary = [firstObject photoLibrary];
    librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

    firstObject2 = [pickingCopy firstObject];
    itemIdentifier = [firstObject2 itemIdentifier];

    v12 = MEMORY[0x1E6978650];
    v26[0] = itemIdentifier;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
    v14 = [v12 fetchAssetCollectionsWithLocalIdentifiers:v13 options:librarySpecificFetchOptions];
    firstObject3 = [v14 firstObject];

    WeakRetained = objc_loadWeakRetained(&self->_presenterViewController);
    undoManager = [WeakRetained undoManager];

    if (firstObject3)
    {
      v18 = objc_alloc(MEMORY[0x1E69C3318]);
      selectedAssets2 = [(PUAddToAlbumActivity *)self selectedAssets];
      v20 = [v18 initWithAssets:selectedAssets2 assetCollection:firstObject3];

      [v20 setShouldSortAssetsByCreationDate:1];
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __48__PUAddToAlbumActivity_picker_didFinishPicking___block_invoke;
      v24[3] = &unk_1E7B7FB70;
      v24[4] = self;
      v25 = firstObject3;
      [v20 executeWithUndoManager:undoManager completionHandler:v24];
    }
  }

  else
  {
    firstObject3 = 0;
  }

  v21 = objc_loadWeakRetained(&self->_presenterViewController);
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __48__PUAddToAlbumActivity_picker_didFinishPicking___block_invoke_216;
  v22[3] = &unk_1E7B7FF98;
  v22[4] = self;
  v23 = firstObject3 != 0;
  [v21 dismissViewControllerAnimated:1 completion:v22];
}

void __48__PUAddToAlbumActivity_picker_didFinishPicking___block_invoke(uint64_t a1, char a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = PLUIGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [*(a1 + 32) selectedAssets];
      v8 = *(a1 + 40);
      v9 = 138412802;
      v10 = v5;
      v11 = 2112;
      v12 = v7;
      v13 = 2112;
      v14 = v8;
      _os_log_impl(&dword_1B36F3000, v6, OS_LOG_TYPE_ERROR, "failed adding assets to album: %@ %@ %@", &v9, 0x20u);
    }
  }
}

- (id)_albumPickerViewControllerWithAssets:(id)assets
{
  assetsCopy = assets;
  [(PUAddToAlbumActivity *)self setSelectedAssets:assetsCopy];
  v5 = [PUPickerUtilities pickerConfigurationForAddToAlbumWithAssetsToAdd:assetsCopy];

  v6 = [objc_alloc(MEMORY[0x1E69790F8]) initWithConfiguration:v5];
  [v6 setDelegate:self];
  v7 = v6;
  [v7 setModalInPresentation:1];

  return v7;
}

- (BOOL)_presentActivityOnViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  controllerCopy = controller;
  objc_storeWeak(&self->_presenterViewController, controllerCopy);
  v11.receiver = self;
  v11.super_class = PUAddToAlbumActivity;
  LOBYTE(animatedCopy) = [(PXActivity *)&v11 _presentActivityOnViewController:controllerCopy animated:animatedCopy completion:completionCopy];

  return animatedCopy;
}

+ (BOOL)canPerformWithItemSourceController:(id)controller
{
  controllerCopy = controller;
  if ([controllerCopy isPreparingIndividualItems])
  {
    assets = [controllerCopy assets];
    v5 = [assets indexOfObjectPassingTest:&__block_literal_global_3707];
    v6 = v5 == 0x7FFFFFFFFFFFFFFFLL;
    if ((PFIsPhotosAppAnyPlatform() & 1) == 0)
    {
      v7 = PFIsCameraAppAnyPlatform();
      if (v5 == 0x7FFFFFFFFFFFFFFFLL && (v7 & 1) == 0)
      {
        v6 = [assets indexOfObjectPassingTest:&__block_literal_global_220] == 0x7FFFFFFFFFFFFFFFLL;
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end