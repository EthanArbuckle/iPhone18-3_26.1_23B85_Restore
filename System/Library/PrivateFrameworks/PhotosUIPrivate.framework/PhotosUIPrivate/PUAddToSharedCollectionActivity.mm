@interface PUAddToSharedCollectionActivity
+ (BOOL)canPerformWithItemSourceController:(id)a3;
- (BOOL)_presentActivityOnViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (BOOL)canPerformWithActivityItems:(id)a3;
- (id)_albumPickerViewControllerWithAssets:(id)a3;
- (void)performActivity;
- (void)picker:(id)a3 didFinishPicking:(id)a4;
@end

@implementation PUAddToSharedCollectionActivity

- (void)performActivity
{
  v3 = [(PXActivity *)self itemSourceController];
  v4 = [v3 assets];
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

- (BOOL)canPerformWithActivityItems:(id)a3
{
  v4 = objc_opt_class();
  v5 = [(PXActivity *)self itemSourceController];
  LOBYTE(v4) = [v4 canPerformWithItemSourceController:v5];

  return v4;
}

- (void)picker:(id)a3 didFinishPicking:(id)a4
{
  v28[1] = *MEMORY[0x1E69E9840];
  v5 = a4;
  if ([v5 count])
  {
    v6 = [(PUAddToSharedCollectionActivity *)self selectedAssets];
    v7 = [v6 firstObject];
    v8 = [v7 photoLibrary];

    v9 = [v8 librarySpecificFetchOptions];
    v10 = [v5 firstObject];
    v11 = [v10 itemIdentifier];

    v12 = MEMORY[0x1E6978650];
    v28[0] = v11;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];
    v14 = [v12 fetchAssetCollectionsWithLocalIdentifiers:v13 options:v9];
    v15 = [v14 firstObject];

    WeakRetained = objc_loadWeakRetained(&self->_presenterViewController);
    v17 = [WeakRetained undoManager];

    if (v15)
    {
      v18 = objc_alloc(MEMORY[0x1E69C3328]);
      v19 = [(PUAddToSharedCollectionActivity *)self selectedAssets];
      v20 = [v18 initWithAssets:v19 assetCollection:v15];

      [v20 setShouldSortAssetsByCreationDate:1];
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __59__PUAddToSharedCollectionActivity_picker_didFinishPicking___block_invoke;
      v24[3] = &unk_1E7B7FB70;
      v24[4] = self;
      v25 = v15;
      [v20 executeWithUndoManager:v17 completionHandler:v24];
    }

    else
    {
      v20 = PLUIGetLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v27 = v11;
        _os_log_impl(&dword_1B36F3000, v20, OS_LOG_TYPE_ERROR, "Failed to fetch shared collection with UUID: %@ ", buf, 0xCu);
      }
    }
  }

  else
  {
    v15 = 0;
  }

  v21 = objc_loadWeakRetained(&self->_presenterViewController);
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __59__PUAddToSharedCollectionActivity_picker_didFinishPicking___block_invoke_216;
  v22[3] = &unk_1E7B7FF98;
  v22[4] = self;
  v23 = v15 != 0;
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

- (id)_albumPickerViewControllerWithAssets:(id)a3
{
  v4 = a3;
  [(PUAddToSharedCollectionActivity *)self setSelectedAssets:v4];
  v5 = [PUPickerUtilities pickerConfigurationForAddToSharedAlbumWithAssetsToAdd:v4];

  v6 = [objc_alloc(MEMORY[0x1E69790F8]) initWithConfiguration:v5];
  [v6 setDelegate:self];
  v7 = v6;
  [v7 setModalInPresentation:1];

  return v7;
}

- (BOOL)_presentActivityOnViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = a3;
  objc_storeWeak(&self->_presenterViewController, v9);
  v11.receiver = self;
  v11.super_class = PUAddToSharedCollectionActivity;
  LOBYTE(v5) = [(PUAddToAlbumActivity *)&v11 _presentActivityOnViewController:v9 animated:v5 completion:v8];

  return v5;
}

+ (BOOL)canPerformWithItemSourceController:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if ([v3 isPreparingIndividualItems])
  {
    v4 = [v3 assets];
    v5 = [v4 indexOfObjectPassingTest:&__block_literal_global_92588];
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
        v8 = v4;
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