@interface PUPXGridPresentation
- (PUPXGridPresentation)init;
- (id)_createPeopleViewControllerWithHostViewController:(id)a3;
- (id)createAssetPickerPhotosAlbumViewControllerForAlbum:(id)a3;
- (id)createDuplicatesGridViewControllerWithCollection:(id)a3;
- (id)createImportHistoryGridViewControllerWithCollection:(id)a3;
- (id)createPanoramaViewController;
- (id)createPhotosAlbumViewControllerForAlbum:(id)a3 withFetchResult:(id)a4;
- (id)createPlacesViewControllerForAssetCollection:(id)a3;
- (id)createViewControllerForAssetCollection:(id)a3 hostViewController:(id)a4;
- (void)_customizePhotosViewConfiguationForAssetPicker:(id)a3 assetCollection:(id)a4;
@end

@implementation PUPXGridPresentation

- (void)_customizePhotosViewConfiguationForAssetPicker:(id)a3 assetCollection:(id)a4
{
  v18 = a3;
  v6 = a4;
  [v18 setAllowsDragIn:0];
  v7 = [(PUPXGridPresentation *)self sessionInfo];
  [v18 setStartsInSelectMode:{objc_msgSend(v7, "allowsMultipleSelection")}];

  v8 = [(PUPXGridPresentation *)self sessionInfo];
  [v18 setWantsNumberedSelectionStyle:{objc_msgSend(v8, "wantsNumberedSelectionStyle")}];

  v9 = [(PUPXGridPresentation *)self sessionInfo];
  [v18 setNoContentPlaceholderType:{objc_msgSend(v9, "noContentPlaceholderType")}];

  v10 = [(PUPXGridPresentation *)self sessionInfo];
  v11 = [v10 photosViewDelegate];
  [v18 setDelegate:v11];

  v12 = [(PUPXGridPresentation *)self sessionInfo];
  v13 = [v12 loadingStatusManager];
  [v18 setLoadingStatusManager:v13];

  [v18 setOneUpPresentationOrigin:PXOneUpPresentationOriginForAssetCollection()];
  v14 = [(PUPXGridPresentation *)self sessionInfo];
  [v18 setContentStartingPosition:{objc_msgSend(v14, "contentStartingPosition")}];

  v15 = [(PUPXGridPresentation *)self sessionInfo];
  v16 = [v15 pickerClientBundleIdentifier];
  [v18 setPickerClientBundleIdentifier:v16];

  if ([v6 px_isImportHistoryCollection])
  {
    v17 = 2;
  }

  else if ([v6 px_isAllLibraryDuplicatesSmartAlbum])
  {
    v17 = 4;
  }

  else
  {
    v17 = 0;
  }

  [v18 setSectionHeaderStyle:v17];
}

- (id)createDuplicatesGridViewControllerWithCollection:(id)a3
{
  v5 = a3;
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = objc_opt_class();
    v13 = NSStringFromClass(v14);
    v15 = [v5 px_descriptionForAssertionMessage];
    [v11 handleFailureInMethod:a2 object:self file:@"PUPXGridPresentation.m" lineNumber:246 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"collection", v13, v15}];
  }

  else
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    [v11 handleFailureInMethod:a2 object:self file:@"PUPXGridPresentation.m" lineNumber:246 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"collection", v13}];
  }

LABEL_3:
  v6 = [(PUPXGridPresentation *)self sessionInfo];
  v7 = [v6 selectionCoordinator];
  v8 = PXDeduplicationPhotosViewConfiguration();

  v9 = [objc_alloc(MEMORY[0x1E69C38F8]) initWithConfiguration:v8];

  return v9;
}

- (id)createImportHistoryGridViewControllerWithCollection:(id)a3
{
  v5 = a3;
  if ([v5 canContainAssets])
  {
    v6 = v5;
    if (v6)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
LABEL_4:
        v7 = [v6 photoLibrary];
        v8 = [v7 librarySpecificFetchOptions];

        [v8 setReverseSortOrder:0];
        v9 = [MEMORY[0x1E6978890] fetchImportSessionsWithOptions:v8];
        v10 = [(PUPXGridPresentation *)self sessionInfo];
        v11 = [v10 isForAssetPicker];

        v12 = [(PUPXGridPresentation *)self sessionInfo];
        v13 = v12;
        if (v11)
        {
          [v12 assetsFilterPredicate];
          v14 = v30 = v5;
          v15 = [(PUPXGridPresentation *)self sessionInfo];
          [v15 reverseSortOrder];
          v16 = [(PUPXGridPresentation *)self sessionInfo];
          v17 = [v16 selectionCoordinator];
          [(PUPXGridPresentation *)self sessionInfo];
          v18 = v31 = v8;
          *(&v29 + 1) = [v18 allowsSwipeToSelect];
          LOBYTE(v29) = 0;
          v19 = PXPhotosViewConfigurationForImagePickerWithAssetCollectionFetchResult();

          v5 = v30;
          [(PUPXGridPresentation *)self _customizePhotosViewConfiguationForAssetPicker:v19 assetCollection:v6, v29];
          v20 = [objc_alloc(MEMORY[0x1E69C38F8]) initWithConfiguration:v19];
          v21 = [v6 localizedTitle];
          [v20 setTitle:v21];

          v8 = v31;
        }

        else
        {
          v22 = [v12 selectionCoordinator];
          v19 = PXPhotosViewConfigurationForAssetCollectionFetchResult();

          [v19 setOneUpPresentationOrigin:10];
          v20 = [objc_alloc(MEMORY[0x1E69C38F8]) initWithConfiguration:v19];
        }

        goto LABEL_9;
      }

      v24 = [MEMORY[0x1E696AAA8] currentHandler];
      v27 = objc_opt_class();
      v26 = NSStringFromClass(v27);
      v28 = [v6 px_descriptionForAssertionMessage];
      [v24 handleFailureInMethod:a2 object:self file:@"PUPXGridPresentation.m" lineNumber:219 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"collection", v26, v28}];
    }

    else
    {
      v24 = [MEMORY[0x1E696AAA8] currentHandler];
      v25 = objc_opt_class();
      v26 = NSStringFromClass(v25);
      [v24 handleFailureInMethod:a2 object:self file:@"PUPXGridPresentation.m" lineNumber:219 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"collection", v26}];
    }

    goto LABEL_4;
  }

  v20 = 0;
LABEL_9:

  return v20;
}

- (id)createPanoramaViewController
{
  v3 = [(PUPXGridPresentation *)self photoLibrary];
  v4 = [(PUPXGridPresentation *)self sessionInfo];
  v5 = [v4 isForAssetPicker];

  v6 = MEMORY[0x1E6978650];
  v7 = [v3 librarySpecificFetchOptions];
  v8 = [v6 fetchAssetCollectionsWithType:2 subtype:201 options:v7];
  v9 = v8;
  if (v5)
  {
    v10 = [v8 firstObject];

    v11 = [(PUPXGridPresentation *)self sessionInfo];
    v12 = [v11 assetsFilterPredicate];
    v13 = [(PUPXGridPresentation *)self sessionInfo];
    [v13 reverseSortOrder];
    v14 = [(PUPXGridPresentation *)self sessionInfo];
    v15 = [v14 selectionCoordinator];
    v16 = [(PUPXGridPresentation *)self sessionInfo];
    [v16 allowsSwipeToSelect];
    v17 = PXPhotosViewConfigurationForImagePickerWithAssetCollection();

    [(PUPXGridPresentation *)self _customizePhotosViewConfiguationForAssetPicker:v17 assetCollection:v10];
    v18 = [objc_alloc(MEMORY[0x1E69C38F8]) initWithConfiguration:v17];
    v19 = [v10 localizedTitle];
    [v18 setTitle:v19];

    v9 = v10;
  }

  else
  {

    v20 = [(PUPXGridPresentation *)self sessionInfo];
    v21 = [v20 selectionCoordinator];
    v17 = PXPhotosViewConfigurationForAssetCollectionFetchResult();

    [v17 setOneUpPresentationOrigin:8];
    v18 = [objc_alloc(MEMORY[0x1E69C38F8]) initWithConfiguration:v17];
  }

  return v18;
}

- (id)createAssetPickerPhotosAlbumViewControllerForAlbum:(id)a3
{
  v4 = a3;
  v5 = [(PUPXGridPresentation *)self sessionInfo];
  v6 = [v5 assetsFilterPredicate];
  v7 = [(PUPXGridPresentation *)self sessionInfo];
  [v7 reverseSortOrder];
  v8 = [(PUPXGridPresentation *)self sessionInfo];
  v9 = [v8 selectionCoordinator];
  v10 = [(PUPXGridPresentation *)self sessionInfo];
  [v10 allowsSwipeToSelect];
  v11 = PXPhotosViewConfigurationForImagePickerWithAssetCollection();

  [(PUPXGridPresentation *)self _customizePhotosViewConfiguationForAssetPicker:v11 assetCollection:v4];
  v12 = [objc_alloc(MEMORY[0x1E69C38F8]) initWithConfiguration:v11];
  v13 = [v4 localizedTitle];

  [v12 setTitle:v13];

  return v12;
}

- (id)createPhotosAlbumViewControllerForAlbum:(id)a3 withFetchResult:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PUPXGridPresentation *)self sessionInfo];
  v9 = [v8 isForAssetPicker];

  if (v9)
  {
    v10 = [(PUPXGridPresentation *)self createAssetPickerPhotosAlbumViewControllerForAlbum:v6];
  }

  else
  {
    v11 = [(PUPXGridPresentation *)self sessionInfo];
    v12 = [v11 selectionCoordinator];
    v13 = PXPhotosViewConfigurationForAssetCollectionWithExistingAssetsFetchResult();

    [v13 setOneUpPresentationOrigin:PXOneUpPresentationOriginForAssetCollection()];
    v10 = [objc_alloc(MEMORY[0x1E69C38F8]) initWithConfiguration:v13];
  }

  return v10;
}

- (id)_createPeopleViewControllerWithHostViewController:(id)a3
{
  v4 = MEMORY[0x1E69C3648];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = [(PUPXGridPresentation *)self photoLibrary];
  v8 = [(PUPXGridPresentation *)self sessionInfo];
  v9 = [v8 selectionCoordinator];
  v10 = [v6 initWithPhotoLibrary:v7 selectionCoordinator:v9 hostViewController:v5];

  return v10;
}

- (id)createPlacesViewControllerForAssetCollection:(id)a3
{
  v3 = a3;
  v4 = [v3 photoLibrary];
  v5 = [objc_alloc(MEMORY[0x1E69C3918]) initWithConfiguration:&__block_literal_global_50773];
  v6 = [objc_alloc(MEMORY[0x1E69C3920]) initWithPhotoLibrary:v4 configuration:v5];
  v7 = [v6 fetchResultViewController];
  v8 = [v7 mapFetchResultsController];
  [v8 preloadMap];
  objc_initWeak(&location, v8);
  v9 = dispatch_get_global_queue(25, 0);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __69__PUPXGridPresentation_createPlacesViewControllerForAssetCollection___block_invoke_2;
  v13[3] = &unk_1E7B7F820;
  v14 = v4;
  v15 = v3;
  v10 = v3;
  v11 = v4;
  objc_copyWeak(&v16, &location);
  dispatch_async(v9, v13);

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);

  return v6;
}

void __69__PUPXGridPresentation_createPlacesViewControllerForAssetCollection___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) librarySpecificFetchOptions];
  v3 = [MEMORY[0x1E69C3A08] sharedLibraryStatusProviderWithPhotoLibrary:*(a1 + 32)];
  v4 = [objc_alloc(MEMORY[0x1E69C3660]) initWithSharedLibraryStatusProvider:v3];
  [v2 setSharingFilter:{objc_msgSend(v4, "sharingFilter")}];
  v5 = [MEMORY[0x1E6978630] px_fetchPlacesAssetsInAssetCollection:*(a1 + 40) options:v2];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __69__PUPXGridPresentation_createPlacesViewControllerForAssetCollection___block_invoke_3;
  v7[3] = &unk_1E7B80638;
  objc_copyWeak(&v8, (a1 + 48));
  [WeakRetained loadFetchResult:v5 withCompletion:v7];

  objc_destroyWeak(&v8);
}

void __69__PUPXGridPresentation_createPlacesViewControllerForAssetCollection___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadContentModeWithCompletion:0];
}

- (id)createViewControllerForAssetCollection:(id)a3 hostViewController:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 px_isImportHistoryCollection])
  {
    v8 = [(PUPXGridPresentation *)self createImportHistoryGridViewControllerWithCollection:v6];
  }

  else if ([v6 px_isAllLibraryDuplicatesSmartAlbum])
  {
    v8 = [(PUPXGridPresentation *)self createDuplicatesGridViewControllerWithCollection:v6];
  }

  else if (([v6 px_isTransientPlacesCollection] & 1) != 0 || objc_msgSend(v6, "px_isPlacesSmartAlbum"))
  {
    v8 = [(PUPXGridPresentation *)self createPlacesViewControllerForAssetCollection:v6];
  }

  else if ([v6 px_isPeopleVirtualCollection])
  {
    v8 = [(PUPXGridPresentation *)self _createPeopleViewControllerWithHostViewController:v7];
  }

  else
  {
    if ([v6 px_isPanoramasSmartAlbum])
    {
      [(PUPXGridPresentation *)self createPanoramaViewController];
    }

    else
    {
      [(PUPXGridPresentation *)self createPhotosAlbumViewControllerForAlbum:v6 withFetchResult:0];
    }
    v8 = ;
  }

  v9 = v8;

  return v9;
}

- (PUPXGridPresentation)init
{
  v6.receiver = self;
  v6.super_class = PUPXGridPresentation;
  v2 = [(PUPXGridPresentation *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
    photoLibrary = v2->_photoLibrary;
    v2->_photoLibrary = v3;
  }

  return v2;
}

@end