@interface PUPXGridPresentation
- (PUPXGridPresentation)init;
- (id)_createPeopleViewControllerWithHostViewController:(id)controller;
- (id)createAssetPickerPhotosAlbumViewControllerForAlbum:(id)album;
- (id)createDuplicatesGridViewControllerWithCollection:(id)collection;
- (id)createImportHistoryGridViewControllerWithCollection:(id)collection;
- (id)createPanoramaViewController;
- (id)createPhotosAlbumViewControllerForAlbum:(id)album withFetchResult:(id)result;
- (id)createPlacesViewControllerForAssetCollection:(id)collection;
- (id)createViewControllerForAssetCollection:(id)collection hostViewController:(id)controller;
- (void)_customizePhotosViewConfiguationForAssetPicker:(id)picker assetCollection:(id)collection;
@end

@implementation PUPXGridPresentation

- (void)_customizePhotosViewConfiguationForAssetPicker:(id)picker assetCollection:(id)collection
{
  pickerCopy = picker;
  collectionCopy = collection;
  [pickerCopy setAllowsDragIn:0];
  sessionInfo = [(PUPXGridPresentation *)self sessionInfo];
  [pickerCopy setStartsInSelectMode:{objc_msgSend(sessionInfo, "allowsMultipleSelection")}];

  sessionInfo2 = [(PUPXGridPresentation *)self sessionInfo];
  [pickerCopy setWantsNumberedSelectionStyle:{objc_msgSend(sessionInfo2, "wantsNumberedSelectionStyle")}];

  sessionInfo3 = [(PUPXGridPresentation *)self sessionInfo];
  [pickerCopy setNoContentPlaceholderType:{objc_msgSend(sessionInfo3, "noContentPlaceholderType")}];

  sessionInfo4 = [(PUPXGridPresentation *)self sessionInfo];
  photosViewDelegate = [sessionInfo4 photosViewDelegate];
  [pickerCopy setDelegate:photosViewDelegate];

  sessionInfo5 = [(PUPXGridPresentation *)self sessionInfo];
  loadingStatusManager = [sessionInfo5 loadingStatusManager];
  [pickerCopy setLoadingStatusManager:loadingStatusManager];

  [pickerCopy setOneUpPresentationOrigin:PXOneUpPresentationOriginForAssetCollection()];
  sessionInfo6 = [(PUPXGridPresentation *)self sessionInfo];
  [pickerCopy setContentStartingPosition:{objc_msgSend(sessionInfo6, "contentStartingPosition")}];

  sessionInfo7 = [(PUPXGridPresentation *)self sessionInfo];
  pickerClientBundleIdentifier = [sessionInfo7 pickerClientBundleIdentifier];
  [pickerCopy setPickerClientBundleIdentifier:pickerClientBundleIdentifier];

  if ([collectionCopy px_isImportHistoryCollection])
  {
    v17 = 2;
  }

  else if ([collectionCopy px_isAllLibraryDuplicatesSmartAlbum])
  {
    v17 = 4;
  }

  else
  {
    v17 = 0;
  }

  [pickerCopy setSectionHeaderStyle:v17];
}

- (id)createDuplicatesGridViewControllerWithCollection:(id)collection
{
  collectionCopy = collection;
  if (collectionCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = objc_opt_class();
    v13 = NSStringFromClass(v14);
    px_descriptionForAssertionMessage = [collectionCopy px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPXGridPresentation.m" lineNumber:246 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"collection", v13, px_descriptionForAssertionMessage}];
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPXGridPresentation.m" lineNumber:246 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"collection", v13}];
  }

LABEL_3:
  sessionInfo = [(PUPXGridPresentation *)self sessionInfo];
  selectionCoordinator = [sessionInfo selectionCoordinator];
  v8 = PXDeduplicationPhotosViewConfiguration();

  v9 = [objc_alloc(MEMORY[0x1E69C38F8]) initWithConfiguration:v8];

  return v9;
}

- (id)createImportHistoryGridViewControllerWithCollection:(id)collection
{
  collectionCopy = collection;
  if ([collectionCopy canContainAssets])
  {
    v6 = collectionCopy;
    if (v6)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
LABEL_4:
        photoLibrary = [v6 photoLibrary];
        librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

        [librarySpecificFetchOptions setReverseSortOrder:0];
        v9 = [MEMORY[0x1E6978890] fetchImportSessionsWithOptions:librarySpecificFetchOptions];
        sessionInfo = [(PUPXGridPresentation *)self sessionInfo];
        isForAssetPicker = [sessionInfo isForAssetPicker];

        sessionInfo2 = [(PUPXGridPresentation *)self sessionInfo];
        v13 = sessionInfo2;
        if (isForAssetPicker)
        {
          [sessionInfo2 assetsFilterPredicate];
          v14 = v30 = collectionCopy;
          sessionInfo3 = [(PUPXGridPresentation *)self sessionInfo];
          [sessionInfo3 reverseSortOrder];
          sessionInfo4 = [(PUPXGridPresentation *)self sessionInfo];
          selectionCoordinator = [sessionInfo4 selectionCoordinator];
          [(PUPXGridPresentation *)self sessionInfo];
          v18 = v31 = librarySpecificFetchOptions;
          *(&v29 + 1) = [v18 allowsSwipeToSelect];
          LOBYTE(v29) = 0;
          v19 = PXPhotosViewConfigurationForImagePickerWithAssetCollectionFetchResult();

          collectionCopy = v30;
          [(PUPXGridPresentation *)self _customizePhotosViewConfiguationForAssetPicker:v19 assetCollection:v6, v29];
          v20 = [objc_alloc(MEMORY[0x1E69C38F8]) initWithConfiguration:v19];
          localizedTitle = [v6 localizedTitle];
          [v20 setTitle:localizedTitle];

          librarySpecificFetchOptions = v31;
        }

        else
        {
          selectionCoordinator2 = [sessionInfo2 selectionCoordinator];
          v19 = PXPhotosViewConfigurationForAssetCollectionFetchResult();

          [v19 setOneUpPresentationOrigin:10];
          v20 = [objc_alloc(MEMORY[0x1E69C38F8]) initWithConfiguration:v19];
        }

        goto LABEL_9;
      }

      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v27 = objc_opt_class();
      v26 = NSStringFromClass(v27);
      px_descriptionForAssertionMessage = [v6 px_descriptionForAssertionMessage];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PUPXGridPresentation.m" lineNumber:219 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"collection", v26, px_descriptionForAssertionMessage}];
    }

    else
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v25 = objc_opt_class();
      v26 = NSStringFromClass(v25);
      [currentHandler handleFailureInMethod:a2 object:self file:@"PUPXGridPresentation.m" lineNumber:219 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"collection", v26}];
    }

    goto LABEL_4;
  }

  v20 = 0;
LABEL_9:

  return v20;
}

- (id)createPanoramaViewController
{
  photoLibrary = [(PUPXGridPresentation *)self photoLibrary];
  sessionInfo = [(PUPXGridPresentation *)self sessionInfo];
  isForAssetPicker = [sessionInfo isForAssetPicker];

  v6 = MEMORY[0x1E6978650];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];
  v8 = [v6 fetchAssetCollectionsWithType:2 subtype:201 options:librarySpecificFetchOptions];
  v9 = v8;
  if (isForAssetPicker)
  {
    firstObject = [v8 firstObject];

    sessionInfo2 = [(PUPXGridPresentation *)self sessionInfo];
    assetsFilterPredicate = [sessionInfo2 assetsFilterPredicate];
    sessionInfo3 = [(PUPXGridPresentation *)self sessionInfo];
    [sessionInfo3 reverseSortOrder];
    sessionInfo4 = [(PUPXGridPresentation *)self sessionInfo];
    selectionCoordinator = [sessionInfo4 selectionCoordinator];
    sessionInfo5 = [(PUPXGridPresentation *)self sessionInfo];
    [sessionInfo5 allowsSwipeToSelect];
    v17 = PXPhotosViewConfigurationForImagePickerWithAssetCollection();

    [(PUPXGridPresentation *)self _customizePhotosViewConfiguationForAssetPicker:v17 assetCollection:firstObject];
    v18 = [objc_alloc(MEMORY[0x1E69C38F8]) initWithConfiguration:v17];
    localizedTitle = [firstObject localizedTitle];
    [v18 setTitle:localizedTitle];

    v9 = firstObject;
  }

  else
  {

    sessionInfo6 = [(PUPXGridPresentation *)self sessionInfo];
    selectionCoordinator2 = [sessionInfo6 selectionCoordinator];
    v17 = PXPhotosViewConfigurationForAssetCollectionFetchResult();

    [v17 setOneUpPresentationOrigin:8];
    v18 = [objc_alloc(MEMORY[0x1E69C38F8]) initWithConfiguration:v17];
  }

  return v18;
}

- (id)createAssetPickerPhotosAlbumViewControllerForAlbum:(id)album
{
  albumCopy = album;
  sessionInfo = [(PUPXGridPresentation *)self sessionInfo];
  assetsFilterPredicate = [sessionInfo assetsFilterPredicate];
  sessionInfo2 = [(PUPXGridPresentation *)self sessionInfo];
  [sessionInfo2 reverseSortOrder];
  sessionInfo3 = [(PUPXGridPresentation *)self sessionInfo];
  selectionCoordinator = [sessionInfo3 selectionCoordinator];
  sessionInfo4 = [(PUPXGridPresentation *)self sessionInfo];
  [sessionInfo4 allowsSwipeToSelect];
  v11 = PXPhotosViewConfigurationForImagePickerWithAssetCollection();

  [(PUPXGridPresentation *)self _customizePhotosViewConfiguationForAssetPicker:v11 assetCollection:albumCopy];
  v12 = [objc_alloc(MEMORY[0x1E69C38F8]) initWithConfiguration:v11];
  localizedTitle = [albumCopy localizedTitle];

  [v12 setTitle:localizedTitle];

  return v12;
}

- (id)createPhotosAlbumViewControllerForAlbum:(id)album withFetchResult:(id)result
{
  albumCopy = album;
  resultCopy = result;
  sessionInfo = [(PUPXGridPresentation *)self sessionInfo];
  isForAssetPicker = [sessionInfo isForAssetPicker];

  if (isForAssetPicker)
  {
    v10 = [(PUPXGridPresentation *)self createAssetPickerPhotosAlbumViewControllerForAlbum:albumCopy];
  }

  else
  {
    sessionInfo2 = [(PUPXGridPresentation *)self sessionInfo];
    selectionCoordinator = [sessionInfo2 selectionCoordinator];
    v13 = PXPhotosViewConfigurationForAssetCollectionWithExistingAssetsFetchResult();

    [v13 setOneUpPresentationOrigin:PXOneUpPresentationOriginForAssetCollection()];
    v10 = [objc_alloc(MEMORY[0x1E69C38F8]) initWithConfiguration:v13];
  }

  return v10;
}

- (id)_createPeopleViewControllerWithHostViewController:(id)controller
{
  v4 = MEMORY[0x1E69C3648];
  controllerCopy = controller;
  v6 = [v4 alloc];
  photoLibrary = [(PUPXGridPresentation *)self photoLibrary];
  sessionInfo = [(PUPXGridPresentation *)self sessionInfo];
  selectionCoordinator = [sessionInfo selectionCoordinator];
  v10 = [v6 initWithPhotoLibrary:photoLibrary selectionCoordinator:selectionCoordinator hostViewController:controllerCopy];

  return v10;
}

- (id)createPlacesViewControllerForAssetCollection:(id)collection
{
  collectionCopy = collection;
  photoLibrary = [collectionCopy photoLibrary];
  v5 = [objc_alloc(MEMORY[0x1E69C3918]) initWithConfiguration:&__block_literal_global_50773];
  v6 = [objc_alloc(MEMORY[0x1E69C3920]) initWithPhotoLibrary:photoLibrary configuration:v5];
  fetchResultViewController = [v6 fetchResultViewController];
  mapFetchResultsController = [fetchResultViewController mapFetchResultsController];
  [mapFetchResultsController preloadMap];
  objc_initWeak(&location, mapFetchResultsController);
  v9 = dispatch_get_global_queue(25, 0);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __69__PUPXGridPresentation_createPlacesViewControllerForAssetCollection___block_invoke_2;
  v13[3] = &unk_1E7B7F820;
  v14 = photoLibrary;
  v15 = collectionCopy;
  v10 = collectionCopy;
  v11 = photoLibrary;
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

- (id)createViewControllerForAssetCollection:(id)collection hostViewController:(id)controller
{
  collectionCopy = collection;
  controllerCopy = controller;
  if ([collectionCopy px_isImportHistoryCollection])
  {
    v8 = [(PUPXGridPresentation *)self createImportHistoryGridViewControllerWithCollection:collectionCopy];
  }

  else if ([collectionCopy px_isAllLibraryDuplicatesSmartAlbum])
  {
    v8 = [(PUPXGridPresentation *)self createDuplicatesGridViewControllerWithCollection:collectionCopy];
  }

  else if (([collectionCopy px_isTransientPlacesCollection] & 1) != 0 || objc_msgSend(collectionCopy, "px_isPlacesSmartAlbum"))
  {
    v8 = [(PUPXGridPresentation *)self createPlacesViewControllerForAssetCollection:collectionCopy];
  }

  else if ([collectionCopy px_isPeopleVirtualCollection])
  {
    v8 = [(PUPXGridPresentation *)self _createPeopleViewControllerWithHostViewController:controllerCopy];
  }

  else
  {
    if ([collectionCopy px_isPanoramasSmartAlbum])
    {
      [(PUPXGridPresentation *)self createPanoramaViewController];
    }

    else
    {
      [(PUPXGridPresentation *)self createPhotosAlbumViewControllerForAlbum:collectionCopy withFetchResult:0];
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
    px_deprecated_appPhotoLibrary = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
    photoLibrary = v2->_photoLibrary;
    v2->_photoLibrary = px_deprecated_appPhotoLibrary;
  }

  return v2;
}

@end