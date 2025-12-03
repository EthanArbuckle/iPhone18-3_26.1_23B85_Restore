@interface PXPlacesMapFetchResultController
- (PXPlacesMapController)mapController;
- (PXPlacesMapFetchResultController)init;
- (PXPlacesMapFetchResultController)initWithLibraryFilterState:(id)state photoLibrary:(id)library;
- (PXPlacesMapFetchResultController)initWithMapViewController:(id)controller libraryFilterState:(id)state photoLibrary:(id)library;
- (PXPlacesMapFetchResultController)initWithPhotoLibrary:(id)library;
- (PXPlacesMapPipeline)albumPipeline;
- (PXPlacesMapThumbnailLocationCurator)thumbnailLocationCurator;
- (PXPlacesMapView)mapView;
- (PXPlacesPhotoAssetsStore)albumAssetStore;
- (id)currentAssetStore;
- (id)visibleGeotaggables;
- (void)focusOnGeotaggablesAnimated:(BOOL)animated;
- (void)focusOnMapRect:(id)rect animated:(BOOL)animated;
- (void)focusOnProvidedAssetsAnimated:(BOOL)animated;
- (void)focusOnProvidedAssetsImmediately;
- (void)loadFetchResult:(id)result withCompletion:(id)completion;
- (void)loadFetchResults:(id)results withCompletion:(id)completion;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)preloadMap;
- (void)reloadContentModeWithCompletion:(id)completion;
- (void)reloadMapWithCompletion:(id)completion;
- (void)resumeWithCompletion:(id)completion;
@end

@implementation PXPlacesMapFetchResultController

- (PXPlacesMapThumbnailLocationCurator)thumbnailLocationCurator
{
  WeakRetained = objc_loadWeakRetained(&self->_thumbnailLocationCurator);

  return WeakRetained;
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  changeCopy = change;
  observableCopy = observable;
  if (PXLibraryFilterStateObservationContext_52002 != context)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPlacesMapFetchResultController.m" lineNumber:306 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if (changeCopy)
  {
    v11 = observableCopy;
    [(PXPlacesMapFetchResultController *)self reloadMapWithCompletion:0];
    observableCopy = v11;
  }
}

- (void)focusOnMapRect:(id)rect animated:(BOOL)animated
{
  animatedCopy = animated;
  var1 = rect.var1.var1;
  var0 = rect.var1.var0;
  v7 = rect.var0.var1;
  v8 = rect.var0.var0;
  mapController = [(PXPlacesMapFetchResultController *)self mapController];
  currentPipeline = [(PXPlacesMapFetchResultController *)self currentPipeline];
  [mapController setVisibleMapRect:currentPipeline forPipeline:animatedCopy animated:{v8, v7, var0, var1}];
}

- (void)focusOnGeotaggablesAnimated:(BOOL)animated
{
  animatedCopy = animated;
  mapController = [(PXPlacesMapFetchResultController *)self mapController];
  currentPipeline = [(PXPlacesMapFetchResultController *)self currentPipeline];
  [mapController focusOnGeotaggablesFromPipeline:currentPipeline animated:animatedCopy];
}

- (void)focusOnProvidedAssetsImmediately
{
  mapController = [(PXPlacesMapFetchResultController *)self mapController];
  providedPipeline = [(PXPlacesMapFetchResultController *)self providedPipeline];
  [mapController focusOnGeotaggablesFromPipelineImmediately:providedPipeline];
}

- (void)focusOnProvidedAssetsAnimated:(BOOL)animated
{
  animatedCopy = animated;
  mapController = [(PXPlacesMapFetchResultController *)self mapController];
  providedPipeline = [(PXPlacesMapFetchResultController *)self providedPipeline];
  [mapController focusOnGeotaggablesFromPipeline:providedPipeline animated:animatedCopy];
}

- (void)resumeWithCompletion:(id)completion
{
  completionCopy = completion;
  mapViewController = [(PXPlacesMapFetchResultController *)self mapViewController];
  mapController = [mapViewController mapController];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __57__PXPlacesMapFetchResultController_resumeWithCompletion___block_invoke;
  v8[3] = &unk_1E774C250;
  v9 = completionCopy;
  v7 = completionCopy;
  [mapController resumePipelines:v8];
}

uint64_t __57__PXPlacesMapFetchResultController_resumeWithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)loadFetchResult:(id)result withCompletion:(id)completion
{
  v11 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  v6 = MEMORY[0x1E695DEC8];
  completionCopy = completion;
  resultCopy2 = result;
  v9 = [v6 arrayWithObjects:&resultCopy count:1];

  [(PXPlacesMapFetchResultController *)self loadFetchResults:v9 withCompletion:completionCopy, resultCopy, v11];
}

- (void)loadFetchResults:(id)results withCompletion:(id)completion
{
  completionCopy = completion;
  resultsCopy = results;
  v7 = [PXPlacesPhotoAssetsStore alloc];
  photoLibrary = [(PXPlacesMapFetchResultController *)self photoLibrary];
  v9 = [(PXPlacesPhotoAssetsStore *)v7 initWithFetchResults:resultsCopy photoLibrary:photoLibrary];

  [(PXPlacesMapFetchResultController *)self setProvidedAssetStore:v9];
  providedAssetStore = [(PXPlacesMapFetchResultController *)self providedAssetStore];
  dataSource = [providedAssetStore dataSource];
  mapViewController = [(PXPlacesMapFetchResultController *)self mapViewController];
  px_extendedTraitCollection = [mapViewController px_extendedTraitCollection];
  geotaggableInfoDelegate = [(PXPlacesMapFetchResultController *)self geotaggableInfoDelegate];
  thumbnailLocationCurator = [(PXPlacesMapFetchResultController *)self thumbnailLocationCurator];
  v16 = [PXPlacesMapPipelineFactory thumbnailPipelineForDataSource:dataSource extendedTraitCollection:px_extendedTraitCollection geotaggableInfo:geotaggableInfoDelegate popoverImageType:3 popoverImageOptions:0 countLabelStyle:1 thumbnailLocationCurator:thumbnailLocationCurator];

  [(PXPlacesMapFetchResultController *)self setProvidedPipeline:v16];
  if (completionCopy)
  {
    completionCopy[2]();
  }
}

- (void)reloadContentModeWithCompletion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  serialQueue = [(PXPlacesMapFetchResultController *)self serialQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __68__PXPlacesMapFetchResultController_reloadContentModeWithCompletion___block_invoke;
  v7[3] = &unk_1E773F368;
  objc_copyWeak(&v9, &location);
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(serialQueue, v7);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __68__PXPlacesMapFetchResultController_reloadContentModeWithCompletion___block_invoke(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained contentMode];
    if (v4 == 1)
    {
      v5 = [v3 providedPipeline];
      v6 = [v3 providedAssetStore];
    }

    else
    {
      if (v4)
      {
        v5 = 0;
        v7 = 0;
        goto LABEL_13;
      }

      v5 = [v3 albumPipeline];
      v6 = [v3 albumAssetStore];
    }

    v7 = v6;
    if (v5)
    {
      v8 = [v3 currentPipeline];

      if (v8)
      {
        v9 = [v3 currentPipeline];

        if (v9 == v5)
        {
          v16 = a1[5];
          if (v16)
          {
            v16[2]();
          }

          goto LABEL_13;
        }

        v10 = [v3 mapController];
        [v10 suspendPipelines];

        v11 = [v3 mapController];
        v12 = [a1[4] currentPipeline];
        [v11 removePipeline:v12];

        v13 = [v3 mapController];
        [v13 addPipeline:v5];

        [v3 setCurrentPipeline:v5];
        v14 = [v3 mapController];
        [v14 resumePipelines:0];
      }

      else
      {
        v15 = [v3 mapController];
        [v15 addPipeline:v5];

        [v3 setCurrentPipeline:v5];
      }

      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __68__PXPlacesMapFetchResultController_reloadContentModeWithCompletion___block_invoke_2;
      v17[3] = &unk_1E774C250;
      v18 = a1[5];
      [v7 loadWithCompletion:v17];
    }

LABEL_13:
  }
}

uint64_t __68__PXPlacesMapFetchResultController_reloadContentModeWithCompletion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)reloadMapWithCompletion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  v5 = MEMORY[0x1E6978830];
  photoLibrary = [(PXPlacesMapFetchResultController *)self photoLibrary];
  v7 = [v5 fetchOptionsWithPhotoLibrary:photoLibrary orObject:0];

  libraryFilterState = [(PXPlacesMapFetchResultController *)self libraryFilterState];
  [v7 setSharingFilter:{objc_msgSend(libraryFilterState, "sharingFilter")}];

  serialQueue = [(PXPlacesMapFetchResultController *)self serialQueue];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __60__PXPlacesMapFetchResultController_reloadMapWithCompletion___block_invoke;
  v12[3] = &unk_1E773F368;
  v13 = v7;
  v10 = v7;
  objc_copyWeak(&v15, &location);
  v14 = completionCopy;
  v11 = completionCopy;
  dispatch_async(serialQueue, v12);

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __60__PXPlacesMapFetchResultController_reloadMapWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E6978630] pk_fetchPlacesAssetsInAssetCollection:0 shouldMergeOptionFetchPropertySets:0 options:*(a1 + 32)];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __60__PXPlacesMapFetchResultController_reloadMapWithCompletion___block_invoke_2;
  v4[3] = &unk_1E774AA30;
  objc_copyWeak(&v6, (a1 + 48));
  v5 = *(a1 + 40);
  [WeakRetained loadFetchResult:v2 withCompletion:v4];

  objc_destroyWeak(&v6);
}

void __60__PXPlacesMapFetchResultController_reloadMapWithCompletion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __60__PXPlacesMapFetchResultController_reloadMapWithCompletion___block_invoke_3;
  v3[3] = &unk_1E774AA30;
  objc_copyWeak(&v5, (a1 + 40));
  v4 = *(a1 + 32);
  [WeakRetained reloadContentModeWithCompletion:v3];

  objc_destroyWeak(&v5);
}

void __60__PXPlacesMapFetchResultController_reloadMapWithCompletion___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained resumeWithCompletion:*(a1 + 32)];
}

- (void)preloadMap
{
  if (![(PXPlacesMapFetchResultController *)self isPreloaded])
  {
    [(PXPlacesMapFetchResultController *)self setIsPreloaded:1];
    v3 = MEMORY[0x1E695E0F0];

    [(PXPlacesMapFetchResultController *)self loadFetchResults:v3 withCompletion:0];
  }
}

- (PXPlacesPhotoAssetsStore)albumAssetStore
{
  v16[1] = *MEMORY[0x1E69E9840];
  albumAssetStore = self->_albumAssetStore;
  if (!albumAssetStore)
  {
    v4 = MEMORY[0x1E6978830];
    photoLibrary = [(PXPlacesMapFetchResultController *)self photoLibrary];
    v6 = [v4 fetchOptionsWithPhotoLibrary:photoLibrary orObject:0];

    libraryFilterState = [(PXPlacesMapFetchResultController *)self libraryFilterState];
    [v6 setSharingFilter:{objc_msgSend(libraryFilterState, "sharingFilter")}];

    v8 = [MEMORY[0x1E6978830] px_placesFetchOptionsWith:v6];

    v9 = [MEMORY[0x1E6978630] pk_fetchPlacesAssetsInAssetCollection:0 shouldMergeOptionFetchPropertySets:0 options:v8];
    v10 = [PXPlacesPhotoAssetsStore alloc];
    if (v9)
    {
      v16[0] = v9;
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
    }

    else
    {
      v11 = MEMORY[0x1E695E0F0];
    }

    photoLibrary2 = [(PXPlacesMapFetchResultController *)self photoLibrary];
    v13 = [(PXPlacesPhotoAssetsStore *)v10 initWithFetchResults:v11 photoLibrary:photoLibrary2];
    v14 = self->_albumAssetStore;
    self->_albumAssetStore = v13;

    if (v9)
    {
    }

    albumAssetStore = self->_albumAssetStore;
  }

  return albumAssetStore;
}

- (PXPlacesMapPipeline)albumPipeline
{
  albumPipeline = self->_albumPipeline;
  if (!albumPipeline)
  {
    albumAssetStore = [(PXPlacesMapFetchResultController *)self albumAssetStore];
    dataSource = [albumAssetStore dataSource];
    mapViewController = [(PXPlacesMapFetchResultController *)self mapViewController];
    px_extendedTraitCollection = [mapViewController px_extendedTraitCollection];
    geotaggableInfoDelegate = [(PXPlacesMapFetchResultController *)self geotaggableInfoDelegate];
    thumbnailLocationCurator = [(PXPlacesMapFetchResultController *)self thumbnailLocationCurator];
    v10 = [PXPlacesMapPipelineFactory thumbnailPipelineForDataSource:dataSource extendedTraitCollection:px_extendedTraitCollection geotaggableInfo:geotaggableInfoDelegate popoverImageType:3 popoverImageOptions:0 countLabelStyle:1 thumbnailLocationCurator:thumbnailLocationCurator];

    v11 = self->_albumPipeline;
    self->_albumPipeline = v10;

    albumPipeline = self->_albumPipeline;
  }

  return albumPipeline;
}

- (id)currentAssetStore
{
  contentMode = [(PXPlacesMapFetchResultController *)self contentMode];
  if (contentMode == 1)
  {
    providedAssetStore = [(PXPlacesMapFetchResultController *)self providedAssetStore];
  }

  else if (contentMode)
  {
    providedAssetStore = 0;
  }

  else
  {
    providedAssetStore = [(PXPlacesMapFetchResultController *)self albumAssetStore];
  }

  return providedAssetStore;
}

- (id)visibleGeotaggables
{
  currentAssetStore = [(PXPlacesMapFetchResultController *)self currentAssetStore];
  dataSource = [currentAssetStore dataSource];
  mapViewController = [(PXPlacesMapFetchResultController *)self mapViewController];
  mapController = [mapViewController mapController];
  v7 = [mapController visibleGeotaggableFromDataSource:dataSource];

  return v7;
}

- (PXPlacesMapController)mapController
{
  mapViewController = [(PXPlacesMapFetchResultController *)self mapViewController];
  mapController = [mapViewController mapController];

  return mapController;
}

- (PXPlacesMapView)mapView
{
  mapViewController = [(PXPlacesMapFetchResultController *)self mapViewController];
  mapController = [mapViewController mapController];
  mapView = [mapController mapView];

  return mapView;
}

- (PXPlacesMapFetchResultController)initWithLibraryFilterState:(id)state photoLibrary:(id)library
{
  libraryCopy = library;
  stateCopy = state;
  v8 = objc_alloc_init(PXPlacesMapViewController);
  v9 = [(PXPlacesMapFetchResultController *)self initWithMapViewController:v8 libraryFilterState:stateCopy photoLibrary:libraryCopy];

  return v9;
}

- (PXPlacesMapFetchResultController)initWithMapViewController:(id)controller libraryFilterState:(id)state photoLibrary:(id)library
{
  controllerCopy = controller;
  stateCopy = state;
  libraryCopy = library;
  if (!libraryCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPlacesMapFetchResultController.m" lineNumber:73 description:{@"Invalid parameter not satisfying: %@", @"photoLibrary"}];
  }

  v21.receiver = self;
  v21.super_class = PXPlacesMapFetchResultController;
  v13 = [(PXPlacesMapFetchResultController *)&v21 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_photoLibrary, library);
    v15 = objc_alloc_init(PXPlacesGeotaggableMediaProvider);
    geotaggableInfoDelegate = v14->_geotaggableInfoDelegate;
    v14->_geotaggableInfoDelegate = v15;

    objc_storeStrong(&v14->_mapViewController, controller);
    v14->_contentMode = 1;
    v17 = dispatch_queue_create("Reload Queue", 0);
    serialQueue = v14->_serialQueue;
    v14->_serialQueue = v17;

    v14->_isPreloaded = 0;
    objc_storeStrong(&v14->_libraryFilterState, state);
    [(PXLibraryFilterState *)v14->_libraryFilterState registerChangeObserver:v14 context:PXLibraryFilterStateObservationContext_52002];
  }

  return v14;
}

- (PXPlacesMapFetchResultController)initWithPhotoLibrary:(id)library
{
  libraryCopy = library;
  if (!libraryCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPlacesMapFetchResultController.m" lineNumber:61 description:{@"Invalid parameter not satisfying: %@", @"photoLibrary"}];
  }

  v11.receiver = self;
  v11.super_class = PXPlacesMapFetchResultController;
  v7 = [(PXPlacesMapFetchResultController *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_photoLibrary, library);
  }

  return v8;
}

- (PXPlacesMapFetchResultController)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXPlacesMapFetchResultController.m" lineNumber:56 description:{@"%s is not available as initializer", "-[PXPlacesMapFetchResultController init]"}];

  abort();
}

@end