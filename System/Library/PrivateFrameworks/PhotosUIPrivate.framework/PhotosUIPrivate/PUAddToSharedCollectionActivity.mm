@interface PUAddToSharedCollectionActivity
+ (BOOL)canPerformWithItemSourceController:(id)controller;
- (BOOL)_presentActivityOnViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (BOOL)canPerformWithActivityItems:(id)items;
- (id)_albumPickerViewControllerWithAssets:(id)assets;
- (void)performActivity;
- (void)picker:(id)picker didFinishPicking:(id)picking;
@end

@implementation PUAddToSharedCollectionActivity

- (void)performActivity
{
  itemSourceController = [(PXActivity *)self itemSourceController];
  assets = [itemSourceController assets];
  v5 = PXEnsureAllSavedSyndicatedAssetsAreFromUserLibrary();

  v6 = [(PUAddToSharedCollectionActivity *)self _albumPickerViewControllerWithAssets:v5];
  if (v6)
  {
    WeakRetained = objc_loadWeakRetained(&self->_presenterViewController);
    [WeakRetained px_presentOverTopmostPresentedViewController:v6 animated:1 completion:0];
  }

  else
  {
    v8 = PLUIGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_impl(&dword_1B36F3000, v8, OS_LOG_TYPE_ERROR, "Share Sheet: Failed to create album picker for adding assets to album.", v9, 2u);
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
  v28[1] = *MEMORY[0x1E69E9840];
  pickingCopy = picking;
  if ([pickingCopy count])
  {
    selectedAssets = [(PUAddToSharedCollectionActivity *)self selectedAssets];
    firstObject = [selectedAssets firstObject];
    photoLibrary = [firstObject photoLibrary];

    librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];
    firstObject2 = [pickingCopy firstObject];
    itemIdentifier = [firstObject2 itemIdentifier];

    v12 = MEMORY[0x1E6978650];
    v28[0] = itemIdentifier;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];
    v14 = [v12 fetchAssetCollectionsWithLocalIdentifiers:v13 options:librarySpecificFetchOptions];
    firstObject3 = [v14 firstObject];

    WeakRetained = objc_loadWeakRetained(&self->_presenterViewController);
    undoManager = [WeakRetained undoManager];

    if (firstObject3)
    {
      v18 = objc_alloc(MEMORY[0x1E69C3328]);
      selectedAssets2 = [(PUAddToSharedCollectionActivity *)self selectedAssets];
      v20 = [v18 initWithAssets:selectedAssets2 assetCollection:firstObject3];

      [v20 setShouldSortAssetsByCreationDate:1];
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __59__PUAddToSharedCollectionActivity_picker_didFinishPicking___block_invoke;
      v24[3] = &unk_1E7B7FB70;
      v24[4] = self;
      v25 = firstObject3;
      [v20 executeWithUndoManager:undoManager completionHandler:v24];
    }

    else
    {
      v20 = PLUIGetLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v27 = itemIdentifier;
        _os_log_impl(&dword_1B36F3000, v20, OS_LOG_TYPE_ERROR, "Failed to fetch shared collection with UUID: %@ ", buf, 0xCu);
      }
    }
  }

  else
  {
    firstObject3 = 0;
  }

  v21 = objc_loadWeakRetained(&self->_presenterViewController);
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __59__PUAddToSharedCollectionActivity_picker_didFinishPicking___block_invoke_216;
  v22[3] = &unk_1E7B7FF98;
  v22[4] = self;
  v23 = firstObject3 != 0;
  [v21 dismissViewControllerAnimated:1 completion:v22];
}

void __59__PUAddToSharedCollectionActivity_picker_didFinishPicking___block_invoke(uint64_t a1, char a2, void *a3)
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
      _os_log_impl(&dword_1B36F3000, v6, OS_LOG_TYPE_ERROR, "Failed to add assets to shared collection: %@ %@ %@", &v9, 0x20u);
    }
  }
}

- (id)_albumPickerViewControllerWithAssets:(id)assets
{
  assetsCopy = assets;
  [(PUAddToSharedCollectionActivity *)self setSelectedAssets:assetsCopy];
  v5 = [PUPickerUtilities pickerConfigurationForAddToSharedAlbumWithAssetsToAdd:assetsCopy];

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
  v11.super_class = PUAddToSharedCollectionActivity;
  LOBYTE(animatedCopy) = [(PUAddToAlbumActivity *)&v11 _presentActivityOnViewController:controllerCopy animated:animatedCopy completion:completionCopy];

  return animatedCopy;
}

+ (BOOL)canPerformWithItemSourceController:(id)controller
{
  v19 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  if ([controllerCopy isPreparingIndividualItems])
  {
    assets = [controllerCopy assets];
    v5 = [assets indexOfObjectPassingTest:&__block_literal_global_92588];
    v6 = v5 == 0x7FFFFFFFFFFFFFFFLL;
    if ((PFIsPhotosAppAnyPlatform() & 1) == 0)
    {
      v7 = PFIsCameraAppAnyPlatform();
      if (v5 == 0x7FFFFFFFFFFFFFFFLL && (v7 & 1) == 0)
      {
        v16 = 0u;
        v17 = 0u;
        v14 = 0u;
        v15 = 0u;
        v8 = assets;
        v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v15;
          while (2)
          {
            for (i = 0; i != v10; ++i)
            {
              if (*v15 != v11)
              {
                objc_enumerationMutation(v8);
              }

              if (PXContentSyndicationAssetIsUnsavedOrInSyndicationLibrary())
              {
                v6 = 0;
                goto LABEL_16;
              }
            }

            v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
            if (v10)
            {
              continue;
            }

            break;
          }
        }

LABEL_16:
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