@interface PXPlacesMapFetchResultController
- (PXPlacesMapController)mapController;
- (PXPlacesMapFetchResultController)init;
- (PXPlacesMapFetchResultController)initWithLibraryFilterState:(id)a3 photoLibrary:(id)a4;
- (PXPlacesMapFetchResultController)initWithMapViewController:(id)a3 libraryFilterState:(id)a4 photoLibrary:(id)a5;
- (PXPlacesMapFetchResultController)initWithPhotoLibrary:(id)a3;
- (PXPlacesMapPipeline)albumPipeline;
- (PXPlacesMapThumbnailLocationCurator)thumbnailLocationCurator;
- (PXPlacesMapView)mapView;
- (PXPlacesPhotoAssetsStore)albumAssetStore;
- (id)currentAssetStore;
- (id)visibleGeotaggables;
- (void)focusOnGeotaggablesAnimated:(BOOL)a3;
- (void)focusOnMapRect:(id)a3 animated:(BOOL)a4;
- (void)focusOnProvidedAssetsAnimated:(BOOL)a3;
- (void)focusOnProvidedAssetsImmediately;
- (void)loadFetchResult:(id)a3 withCompletion:(id)a4;
- (void)loadFetchResults:(id)a3 withCompletion:(id)a4;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)preloadMap;
- (void)reloadContentModeWithCompletion:(id)a3;
- (void)reloadMapWithCompletion:(id)a3;
- (void)resumeWithCompletion:(id)a3;
@end

@implementation PXPlacesMapFetchResultController

- (PXPlacesMapThumbnailLocationCurator)thumbnailLocationCurator
{
  WeakRetained = objc_loadWeakRetained(&self->_thumbnailLocationCurator);

  return WeakRetained;
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v6 = a4;
  v9 = a3;
  if (PXLibraryFilterStateObservationContext_52002 != a5)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PXPlacesMapFetchResultController.m" lineNumber:306 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if (v6)
  {
    v11 = v9;
    [(PXPlacesMapFetchResultController *)self reloadMapWithCompletion:0];
    v9 = v11;
  }
}

- (void)focusOnMapRect:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  var1 = a3.var1.var1;
  var0 = a3.var1.var0;
  v7 = a3.var0.var1;
  v8 = a3.var0.var0;
  v11 = [(PXPlacesMapFetchResultController *)self mapController];
  v10 = [(PXPlacesMapFetchResultController *)self currentPipeline];
  [v11 setVisibleMapRect:v10 forPipeline:v4 animated:{v8, v7, var0, var1}];
}

- (void)focusOnGeotaggablesAnimated:(BOOL)a3
{
  v3 = a3;
  v6 = [(PXPlacesMapFetchResultController *)self mapController];
  v5 = [(PXPlacesMapFetchResultController *)self currentPipeline];
  [v6 focusOnGeotaggablesFromPipeline:v5 animated:v3];
}

- (void)focusOnProvidedAssetsImmediately
{
  v4 = [(PXPlacesMapFetchResultController *)self mapController];
  v3 = [(PXPlacesMapFetchResultController *)self providedPipeline];
  [v4 focusOnGeotaggablesFromPipelineImmediately:v3];
}

- (void)focusOnProvidedAssetsAnimated:(BOOL)a3
{
  v3 = a3;
  v6 = [(PXPlacesMapFetchResultController *)self mapController];
  v5 = [(PXPlacesMapFetchResultController *)self providedPipeline];
  [v6 focusOnGeotaggablesFromPipeline:v5 animated:v3];
}

- (void)resumeWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(PXPlacesMapFetchResultController *)self mapViewController];
  v6 = [v5 mapController];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __57__PXPlacesMapFetchResultController_resumeWithCompletion___block_invoke;
  v8[3] = &unk_1E774C250;
  v9 = v4;
  v7 = v4;
  [v6 resumePipelines:v8];
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

- (void)loadFetchResult:(id)a3 withCompletion:(id)a4
{
  v11 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v6 = MEMORY[0x1E695DEC8];
  v7 = a4;
  v8 = a3;
  v9 = [v6 arrayWithObjects:&v10 count:1];

  [(PXPlacesMapFetchResultController *)self loadFetchResults:v9 withCompletion:v7, v10, v11];
}

- (void)loadFetchResults:(id)a3 withCompletion:(id)a4
{
  v17 = a4;
  v6 = a3;
  v7 = [PXPlacesPhotoAssetsStore alloc];
  v8 = [(PXPlacesMapFetchResultController *)self photoLibrary];
  v9 = [(PXPlacesPhotoAssetsStore *)v7 initWithFetchResults:v6 photoLibrary:v8];

  [(PXPlacesMapFetchResultController *)self setProvidedAssetStore:v9];
  v10 = [(PXPlacesMapFetchResultController *)self providedAssetStore];
  v11 = [v10 dataSource];
  v12 = [(PXPlacesMapFetchResultController *)self mapViewController];
  v13 = [v12 px_extendedTraitCollection];
  v14 = [(PXPlacesMapFetchResultController *)self geotaggableInfoDelegate];
  v15 = [(PXPlacesMapFetchResultController *)self thumbnailLocationCurator];
  v16 = [PXPlacesMapPipelineFactory thumbnailPipelineForDataSource:v11 extendedTraitCollection:v13 geotaggableInfo:v14 popoverImageType:3 popoverImageOptions:0 countLabelStyle:1 thumbnailLocationCurator:v15];

  [(PXPlacesMapFetchResultController *)self setProvidedPipeline:v16];
  if (v17)
  {
    v17[2]();
  }
}

- (void)reloadContentModeWithCompletion:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(PXPlacesMapFetchResultController *)self serialQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __68__PXPlacesMapFetchResultController_reloadContentModeWithCompletion___block_invoke;
  v7[3] = &unk_1E773F368;
  objc_copyWeak(&v9, &location);
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);

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

- (void)reloadMapWithCompletion:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = MEMORY[0x1E6978830];
  v6 = [(PXPlacesMapFetchResultController *)self photoLibrary];
  v7 = [v5 fetchOptionsWithPhotoLibrary:v6 orObject:0];

  v8 = [(PXPlacesMapFetchResultController *)self libraryFilterState];
  [v7 setSharingFilter:{objc_msgSend(v8, "sharingFilter")}];

  v9 = [(PXPlacesMapFetchResultController *)self serialQueue];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __60__PXPlacesMapFetchResultController_reloadMapWithCompletion___block_invoke;
  v12[3] = &unk_1E773F368;
  v13 = v7;
  v10 = v7;
  objc_copyWeak(&v15, &location);
  v14 = v4;
  v11 = v4;
  dispatch_async(v9, v12);

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
    v5 = [(PXPlacesMapFetchResultController *)self photoLibrary];
    v6 = [v4 fetchOptionsWithPhotoLibrary:v5 orObject:0];

    v7 = [(PXPlacesMapFetchResultController *)self libraryFilterState];
    [v6 setSharingFilter:{objc_msgSend(v7, "sharingFilter")}];

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

    v12 = [(PXPlacesMapFetchResultController *)self photoLibrary];
    v13 = [(PXPlacesPhotoAssetsStore *)v10 initWithFetchResults:v11 photoLibrary:v12];
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
    v4 = [(PXPlacesMapFetchResultController *)self albumAssetStore];
    v5 = [v4 dataSource];
    v6 = [(PXPlacesMapFetchResultController *)self mapViewController];
    v7 = [v6 px_extendedTraitCollection];
    v8 = [(PXPlacesMapFetchResultController *)self geotaggableInfoDelegate];
    v9 = [(PXPlacesMapFetchResultController *)self thumbnailLocationCurator];
    v10 = [PXPlacesMapPipelineFactory thumbnailPipelineForDataSource:v5 extendedTraitCollection:v7 geotaggableInfo:v8 popoverImageType:3 popoverImageOptions:0 countLabelStyle:1 thumbnailLocationCurator:v9];

    v11 = self->_albumPipeline;
    self->_albumPipeline = v10;

    albumPipeline = self->_albumPipeline;
  }

  return albumPipeline;
}

- (id)currentAssetStore
{
  v3 = [(PXPlacesMapFetchResultController *)self contentMode];
  if (v3 == 1)
  {
    v4 = [(PXPlacesMapFetchResultController *)self providedAssetStore];
  }

  else if (v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = [(PXPlacesMapFetchResultController *)self albumAssetStore];
  }

  return v4;
}

- (id)visibleGeotaggables
{
  v3 = [(PXPlacesMapFetchResultController *)self currentAssetStore];
  v4 = [v3 dataSource];
  v5 = [(PXPlacesMapFetchResultController *)self mapViewController];
  v6 = [v5 mapController];
  v7 = [v6 visibleGeotaggableFromDataSource:v4];

  return v7;
}

- (PXPlacesMapController)mapController
{
  v2 = [(PXPlacesMapFetchResultController *)self mapViewController];
  v3 = [v2 mapController];

  return v3;
}

- (PXPlacesMapView)mapView
{
  v2 = [(PXPlacesMapFetchResultController *)self mapViewController];
  v3 = [v2 mapController];
  v4 = [v3 mapView];

  return v4;
}

- (PXPlacesMapFetchResultController)initWithLibraryFilterState:(id)a3 photoLibrary:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(PXPlacesMapViewController);
  v9 = [(PXPlacesMapFetchResultController *)self initWithMapViewController:v8 libraryFilterState:v7 photoLibrary:v6];

  return v9;
}

- (PXPlacesMapFetchResultController)initWithMapViewController:(id)a3 libraryFilterState:(id)a4 photoLibrary:(id)a5
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (!v12)
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"PXPlacesMapFetchResultController.m" lineNumber:73 description:{@"Invalid parameter not satisfying: %@", @"photoLibrary"}];
  }

  v21.receiver = self;
  v21.super_class = PXPlacesMapFetchResultController;
  v13 = [(PXPlacesMapFetchResultController *)&v21 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_photoLibrary, a5);
    v15 = objc_alloc_init(PXPlacesGeotaggableMediaProvider);
    geotaggableInfoDelegate = v14->_geotaggableInfoDelegate;
    v14->_geotaggableInfoDelegate = v15;

    objc_storeStrong(&v14->_mapViewController, a3);
    v14->_contentMode = 1;
    v17 = dispatch_queue_create("Reload Queue", 0);
    serialQueue = v14->_serialQueue;
    v14->_serialQueue = v17;

    v14->_isPreloaded = 0;
    objc_storeStrong(&v14->_libraryFilterState, a4);
    [(PXLibraryFilterState *)v14->_libraryFilterState registerChangeObserver:v14 context:PXLibraryFilterStateObservationContext_52002];
  }

  return v14;
}

- (PXPlacesMapFetchResultController)initWithPhotoLibrary:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PXPlacesMapFetchResultController.m" lineNumber:61 description:{@"Invalid parameter not satisfying: %@", @"photoLibrary"}];
  }

  v11.receiver = self;
  v11.super_class = PXPlacesMapFetchResultController;
  v7 = [(PXPlacesMapFetchResultController *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_photoLibrary, a3);
  }

  return v8;
}

- (PXPlacesMapFetchResultController)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXPlacesMapFetchResultController.m" lineNumber:56 description:{@"%s is not available as initializer", "-[PXPlacesMapFetchResultController init]"}];

  abort();
}

@end