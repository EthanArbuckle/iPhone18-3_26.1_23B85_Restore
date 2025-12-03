@interface PXUIMapWidget
+ (id)sharedSnapshotRequestConcurrentQueue;
- (BOOL)_containsLocationInPasteboard;
- (BOOL)_hasCachedSnapshotImageForKey:(id)key;
- (BOOL)_hasLocation;
- (BOOL)_requiresDetailedAddressFooterString;
- (BOOL)hasContentForCurrentInput;
- (BOOL)infoPanelLayoutEnabled;
- (CGSize)_estimatedMapViewImageSize;
- (NSString)localizedDisclosureTitle;
- (NSString)localizedTitle;
- (PXPlacesSnapshotFactory)_factory;
- (PXUIMapWidget)init;
- (PXWidgetDelegate)widgetDelegate;
- (PXWidgetUnlockDelegate)widgetUnlockDelegate;
- (UIFont)footerFont;
- (UIView)contentView;
- (double)_horizontalLayoutWidth;
- (double)preferredContentHeightForWidth:(double)width;
- (double)preferredContentWidthForHorizontalLayoutWithAvailableWidth:(double)width;
- (id)_contextMenuActions;
- (id)_copyLocationAction;
- (id)_createSnapshotOptions;
- (id)_fetchResultsForSections;
- (id)_firstAsset;
- (id)_localizedGeoDescriptionForAsset:(id)asset;
- (id)_pasteLocationAction;
- (id)_reloadFooterQueue;
- (id)_snapshotOptionsForExtendedTraitCollection:(id)collection queue:(id)queue viewSize:(CGSize)size snapshotMapType:(unint64_t)type;
- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location;
- (int64_t)_fetchCountOfAssetsWithLocation;
- (int64_t)contentLayoutStyle;
- (void)_clipboardChanged:(id)changed;
- (void)_copyLocationTapped;
- (void)_didTapAdjustLocation;
- (void)_fetchPlacesSnapshotUsingMapType:(unint64_t)type fetchResults:(id)results imageSize:(CGSize)size shouldFetchNearbyAssetCount:(BOOL)count;
- (void)_generateSnapshotsForExtendedTraitCollection:(id)collection queue:(id)queue size:(CGSize)size snapshotMapType:(unint64_t)type fetchResults:(id)results shouldFetchNearbyAssetCount:(BOOL)count;
- (void)_handleContentSizeCategoryDidChange:(id)change;
- (void)_handleReloadFooterTitle;
- (void)_handleSnapshotResponse:(id)response viewPort:(id)port snapshotMapType:(unint64_t)type shouldFetchNearbyAssetCount:(BOOL)count fetchedImageKey:(id)key error:(id)error userInterfaceStyle:(int64_t)style;
- (void)_handleTapGestureRecognizer:(id)recognizer;
- (void)_hasLocationDidChange;
- (void)_layoutSubviews;
- (void)_loadContainerView;
- (void)_openMapsAtCoordinate:(CLLocationCoordinate2D)coordinate title:(id)title;
- (void)_pasteLocationTapped;
- (void)_presentLocationSearchPicker;
- (void)_reloadFooterTitle;
- (void)_setHasLoadedContentData:(BOOL)data;
- (void)_setImage:(id)image animated:(BOOL)animated;
- (void)_showPlacesWithContentMode:(unint64_t)mode;
- (void)_updateContentViewFrame;
- (void)_updateFooterButton;
- (void)_updateFooterContextMenu;
- (void)_updateFooterHeight;
- (void)_updateFooterWithTitle:(id)title;
- (void)_updateHeight;
- (void)controllerTraitCollectionDidChangeFrom:(id)from to:(id)to;
- (void)dealloc;
- (void)loadContentData;
- (void)photosDataSource:(id)source didChange:(id)change;
- (void)setContentSize:(CGSize)size;
- (void)setContext:(id)context;
- (void)setShowAddressLink:(BOOL)link;
- (void)setSpec:(id)spec;
- (void)unloadContentData;
- (void)userDidSelectDisclosureControl;
- (void)userDidSelectFooter:(id)footer;
@end

@implementation PXUIMapWidget

- (PXWidgetUnlockDelegate)widgetUnlockDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_widgetUnlockDelegate);

  return WeakRetained;
}

- (PXWidgetDelegate)widgetDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_widgetDelegate);

  return WeakRetained;
}

- (BOOL)_hasCachedSnapshotImageForKey:(id)key
{
  v3 = [(NSMutableDictionary *)self->_fetchedImages objectForKey:key];
  v4 = v3 != 0;

  return v4;
}

- (void)_setImage:(id)image animated:(BOOL)animated
{
  animatedCopy = animated;
  imageCopy = image;
  _imageView = [(PXUIMapWidget *)self _imageView];
  if (imageCopy)
  {
    spec = [(PXUIMapWidget *)self spec];
    defaultPlacesPlaceholderColor = [spec defaultPlacesPlaceholderColor];
  }

  else
  {
    defaultPlacesPlaceholderColor = 0;
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __36__PXUIMapWidget__setImage_animated___block_invoke;
  aBlock[3] = &unk_1E774A1B8;
  v10 = _imageView;
  v19 = v10;
  v11 = imageCopy;
  v20 = v11;
  v12 = defaultPlacesPlaceholderColor;
  v21 = v12;
  v13 = _Block_copy(aBlock);
  v14 = v13;
  if (animatedCopy)
  {
    v15 = MEMORY[0x1E69DD250];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __36__PXUIMapWidget__setImage_animated___block_invoke_2;
    v16[3] = &unk_1E774C250;
    v17 = v13;
    [v15 transitionWithView:v10 duration:5242880 options:v16 animations:0 completion:0.25];
  }

  else
  {
    v13[2](v13);
  }
}

uint64_t __36__PXUIMapWidget__setImage_animated___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setImage:*(a1 + 40)];
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);

  return [v3 setBackgroundColor:v2];
}

- (void)_handleSnapshotResponse:(id)response viewPort:(id)port snapshotMapType:(unint64_t)type shouldFetchNearbyAssetCount:(BOOL)count fetchedImageKey:(id)key error:(id)error userInterfaceStyle:(int64_t)style
{
  countCopy = count;
  responseCopy = response;
  portCopy = port;
  keyCopy = key;
  errorCopy = error;
  v18 = errorCopy;
  if (self->_isLoaded)
  {
    if (errorCopy)
    {
      if (type == 1)
      {
        [(PXUIMapWidget *)self _showPlaceholder];
      }

      else
      {
        _imageView = [(PXUIMapWidget *)self _imageView];
        [_imageView frame];
        v22 = v21;
        v24 = v23;

        if (v22 == *MEMORY[0x1E695F060] && v24 == *(MEMORY[0x1E695F060] + 8))
        {
          [(PXUIMapWidget *)self _estimatedMapViewImageSize];
          v22 = v26;
          v24 = v27;
        }

        _fetchResultsForSections = [(PXUIMapWidget *)self _fetchResultsForSections];
        [(PXUIMapWidget *)self _fetchPlacesSnapshotUsingMapType:1 fetchResults:_fetchResultsForSections imageSize:countCopy shouldFetchNearbyAssetCount:v22, v24];
      }
    }

    else
    {
      if (type)
      {
        v19 = ![(PXUIMapWidget *)self _hasCachedSnapshotImageForKey:keyCopy];
      }

      else
      {
        [(NSMutableDictionary *)self->_fetchedImages setObject:responseCopy forKey:keyCopy];
        v19 = 1;
      }

      if ([(PXUIMapWidget *)self _prefersVisionOSInfoPanelLayout])
      {
        userInterfaceStyle = 1;
      }

      else
      {
        currentTraitCollection = [MEMORY[0x1E69DD1B8] currentTraitCollection];
        userInterfaceStyle = [currentTraitCollection userInterfaceStyle];
      }

      if (userInterfaceStyle == style)
      {
        v31 = v19;
      }

      else
      {
        v31 = 0;
      }

      if (v31 == 1)
      {
        [(PXUIMapWidget *)self _setHasLoadedContentData:1];
        [(PXUIMapWidget *)self _setImage:responseCopy animated:1];
      }
    }
  }
}

- (id)_createSnapshotOptions
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = objc_alloc_init(PXPlacesSnapshotOptions);
  objc_sync_exit(selfCopy);

  return v3;
}

- (PXPlacesSnapshotFactory)_factory
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->__factory)
  {
    px_deprecated_appPhotoLibrary = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
    v4 = [[PXPlacesSnapshotFactory alloc] initWithPhotoLibrary:px_deprecated_appPhotoLibrary];
    factory = selfCopy->__factory;
    selfCopy->__factory = v4;
  }

  objc_sync_exit(selfCopy);

  v6 = selfCopy->__factory;

  return v6;
}

- (id)_snapshotOptionsForExtendedTraitCollection:(id)collection queue:(id)queue viewSize:(CGSize)size snapshotMapType:(unint64_t)type
{
  height = size.height;
  width = size.width;
  queueCopy = queue;
  collectionCopy = collection;
  _createSnapshotOptions = [(PXUIMapWidget *)self _createSnapshotOptions];
  [_createSnapshotOptions setExtendedTraitCollection:collectionCopy];

  v14 = objc_alloc_init(PXPlacesGeotaggableMediaProvider);
  [_createSnapshotOptions setGeotaggableInformationDelegate:v14];

  [_createSnapshotOptions setQueue:queueCopy];
  [_createSnapshotOptions setViewSize:{width, height}];
  [_createSnapshotOptions setSnapshotMapType:type];
  [_createSnapshotOptions setPopoverImageType:5];
  [_createSnapshotOptions setShouldRenderThumbnailForNoLocation:1];

  return _createSnapshotOptions;
}

- (void)_generateSnapshotsForExtendedTraitCollection:(id)collection queue:(id)queue size:(CGSize)size snapshotMapType:(unint64_t)type fetchResults:(id)results shouldFetchNearbyAssetCount:(BOOL)count
{
  height = size.height;
  width = size.width;
  collectionCopy = collection;
  queueCopy = queue;
  resultsCopy = results;
  traitCollection = [collectionCopy traitCollection];
  v18 = traitCollection;
  if (traitCollection)
  {
    v23 = [traitCollection traitCollectionByModifyingTraits:&__block_literal_global_520];
    v19 = [v18 traitCollectionByModifyingTraits:&__block_literal_global_522];
  }

  else
  {
    v19 = 0;
    v23 = 0;
  }

  height = [(PXUIMapWidget *)self _snapshotOptionsForExtendedTraitCollection:collectionCopy queue:queueCopy viewSize:type snapshotMapType:width, height];
  objc_initWeak(location, self);
  _factory = [(PXUIMapWidget *)self _factory];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __130__PXUIMapWidget__generateSnapshotsForExtendedTraitCollection_queue_size_snapshotMapType_fetchResults_shouldFetchNearbyAssetCount___block_invoke_3;
  v28[3] = &unk_1E773DAA0;
  objc_copyWeak(v29, location);
  v29[1] = *&width;
  v29[2] = *&height;
  v29[3] = type;
  countCopy = count;
  [_factory requestMapSnapshotWithAssets:resultsCopy snapshotOptions:height snapshotTraitCollection:v23 popoverImageOptions:1 completion:v28];

  _factory2 = [(PXUIMapWidget *)self _factory];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __130__PXUIMapWidget__generateSnapshotsForExtendedTraitCollection_queue_size_snapshotMapType_fetchResults_shouldFetchNearbyAssetCount___block_invoke_5;
  v25[3] = &unk_1E773DAA0;
  objc_copyWeak(v26, location);
  v26[1] = *&width;
  v26[2] = *&height;
  v26[3] = type;
  countCopy2 = count;
  [_factory2 requestMapSnapshotWithAssets:resultsCopy snapshotOptions:height snapshotTraitCollection:v19 popoverImageOptions:1 completion:v25];

  objc_destroyWeak(v26);
  objc_destroyWeak(v29);
  objc_destroyWeak(location);
}

void __130__PXUIMapWidget__generateSnapshotsForExtendedTraitCollection_queue_size_snapshotMapType_fetchResults_shouldFetchNearbyAssetCount___block_invoke_3(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));

  if (WeakRetained)
  {
    v12 = *(a1 + 40);
    objc_copyWeak(&v11, (a1 + 32));
    v7;
    v8;
    v13 = *(a1 + 56);
    v14 = *(a1 + 64);
    v9;
    px_dispatch_on_main_queue();
  }
}

void __130__PXUIMapWidget__generateSnapshotsForExtendedTraitCollection_queue_size_snapshotMapType_fetchResults_shouldFetchNearbyAssetCount___block_invoke_5(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));

  if (WeakRetained)
  {
    v12 = *(a1 + 40);
    objc_copyWeak(&v11, (a1 + 32));
    v7;
    v8;
    v13 = *(a1 + 56);
    v14 = *(a1 + 64);
    v9;
    px_dispatch_on_main_queue();
  }
}

void __130__PXUIMapWidget__generateSnapshotsForExtendedTraitCollection_queue_size_snapshotMapType_fetchResults_shouldFetchNearbyAssetCount___block_invoke_6(uint64_t a1)
{
  v3 = [[_PXPlacesSnapshotKey alloc] initWithImageSize:2 userInterfaceStyle:*(a1 + 64), *(a1 + 72)];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _handleSnapshotResponse:*(a1 + 32) viewPort:*(a1 + 40) snapshotMapType:*(a1 + 80) shouldFetchNearbyAssetCount:*(a1 + 88) fetchedImageKey:v3 error:*(a1 + 48) userInterfaceStyle:2];
}

void __130__PXUIMapWidget__generateSnapshotsForExtendedTraitCollection_queue_size_snapshotMapType_fetchResults_shouldFetchNearbyAssetCount___block_invoke_4(uint64_t a1)
{
  v3 = [[_PXPlacesSnapshotKey alloc] initWithImageSize:1 userInterfaceStyle:*(a1 + 64), *(a1 + 72)];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _handleSnapshotResponse:*(a1 + 32) viewPort:*(a1 + 40) snapshotMapType:*(a1 + 80) shouldFetchNearbyAssetCount:*(a1 + 88) fetchedImageKey:v3 error:*(a1 + 48) userInterfaceStyle:1];
}

- (void)_fetchPlacesSnapshotUsingMapType:(unint64_t)type fetchResults:(id)results imageSize:(CGSize)size shouldFetchNearbyAssetCount:(BOOL)count
{
  resultsCopy = results;
  objc_initWeak(&location, self);
  widgetDelegate = [(PXUIMapWidget *)self widgetDelegate];
  v9 = [widgetDelegate widgetExtendedTraitCollection:self];

  [v9 displayScale];
  PXSizeRoundToPixel();
}

void __101__PXUIMapWidget__fetchPlacesSnapshotUsingMapType_fetchResults_imageSize_shouldFetchNearbyAssetCount___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v4 = objc_loadWeakRetained((a1 + 48));
    v5 = [v4 _hasCachedSnapshotImageForKey:*(a1 + 32)];

    if ((v5 & 1) == 0)
    {
      v6 = objc_loadWeakRetained((a1 + 48));
      [v6 _fetchPlacesSnapshotUsingMapType:1 fetchResults:*(a1 + 40) imageSize:1 shouldFetchNearbyAssetCount:{*(a1 + 56), *(a1 + 64)}];
    }
  }
}

void __101__PXUIMapWidget__fetchPlacesSnapshotUsingMapType_fetchResults_imageSize_shouldFetchNearbyAssetCount___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _generateSnapshotsForExtendedTraitCollection:*(a1 + 32) queue:*(a1 + 40) size:*(a1 + 80) snapshotMapType:*(a1 + 48) fetchResults:*(a1 + 88) shouldFetchNearbyAssetCount:{*(a1 + 64), *(a1 + 72)}];
}

- (void)photosDataSource:(id)source didChange:(id)change
{
  sourceCopy = source;
  changeCopy = change;
  if (self->__contentView)
  {
    v8 = +[PXPhotosDetailsSettings sharedInstance];
    placesWidgetShowOnlyPlaceholder = [v8 placesWidgetShowOnlyPlaceholder];

    if ((placesWidgetShowOnlyPlaceholder & 1) == 0)
    {
      if (![changeCopy hasIncrementalChanges])
      {
        goto LABEL_13;
      }

      originatingPhotoLibraryChange = [changeCopy originatingPhotoLibraryChange];
      _firstAsset = [(PXUIMapWidget *)self _firstAsset];
      v12 = [originatingPhotoLibraryChange changeDetailsForObject:_firstAsset];

      objectBeforeChanges = [v12 objectBeforeChanges];
      if (objectBeforeChanges)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          v24 = objc_opt_class();
          v25 = NSStringFromClass(v24);
          px_descriptionForAssertionMessage = [objectBeforeChanges px_descriptionForAssertionMessage];
          [currentHandler handleFailureInMethod:a2 object:self file:@"PXUIMapWidget.m" lineNumber:1198 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"assetChangeDetails.objectBeforeChanges", v25, px_descriptionForAssertionMessage}];
        }
      }

      objectAfterChanges = [v12 objectAfterChanges];
      if (objectAfterChanges)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
          v28 = objc_opt_class();
          v29 = NSStringFromClass(v28);
          px_descriptionForAssertionMessage2 = [objectAfterChanges px_descriptionForAssertionMessage];
          [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXUIMapWidget.m" lineNumber:1199 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"assetChangeDetails.objectAfterChanges", v29, px_descriptionForAssertionMessage2}];
        }
      }

      location = [objectBeforeChanges location];
      location2 = [objectAfterChanges location];
      [location distanceFromLocation:location2];
      v18 = v17;
      contentChangedIndexPaths = [changeCopy contentChangedIndexPaths];
      v20 = [contentChangedIndexPaths count];

      if ((location == 0) != (location2 == 0) || v18 != 0.0 || v20)
      {
LABEL_13:
        [(PXUIMapWidget *)self _hasLocationDidChange];
        _fetchResultsForSections = [(PXUIMapWidget *)self _fetchResultsForSections];
        [(NSMutableDictionary *)self->_fetchedImages removeAllObjects];
        if ([(PXUIMapWidget *)self _hasLocation])
        {
          [(PXUIMapWidget *)self _estimatedMapViewImageSize];
          [(PXUIMapWidget *)self _fetchPlacesSnapshotUsingMapType:0 fetchResults:_fetchResultsForSections imageSize:0 shouldFetchNearbyAssetCount:?];
        }
      }

      widgetDelegate = [(PXUIMapWidget *)self widgetDelegate];
      [widgetDelegate widgetPreferredContentHeightForWidthDidChange:self];
    }
  }
}

- (void)_hasLocationDidChange
{
  [(PXUIMapWidget *)self _reloadFooterTitle];
  [(PXUIMapWidget *)self _showPlaceholder];
  [(PXUIMapWidget *)self _updateHeight];
  [(PXUIMapWidget *)self _updateContentViewFrame];
  if ([(PXUIMapWidget *)self infoPanelLayoutEnabled])
  {

    [(PXUIMapWidget *)self _updateFooterContextMenu];
  }
}

- (void)_presentLocationSearchPicker
{
  v16[1] = *MEMORY[0x1E69E9840];
  context = [(PXUIMapWidget *)self context];
  assetCollections = [context assetCollections];
  firstObject = [assetCollections firstObject];

  if (firstObject)
  {
    context2 = [(PXUIMapWidget *)self context];
    assetsByCollection = [context2 assetsByCollection];
    v8 = [assetsByCollection objectForKeyedSubscript:firstObject];
    firstObject2 = [v8 firstObject];

    if (firstObject2)
    {
      v10 = MEMORY[0x1E6978650];
      v16[0] = firstObject2;
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
      v12 = [v10 transientAssetCollectionWithAssets:v11 title:0];

      v13 = [MEMORY[0x1E6978630] fetchAssetsInAssetCollection:v12 options:0];
      v14 = [PXPhotosDetailsLocationSearchUIFactory searchViewControllerWithAssets:v13 delegate:self];
      widgetDelegate = [(PXUIMapWidget *)self widgetDelegate];
      [widgetDelegate widget:self transitionToViewController:v14 withTransitionType:2];
    }
  }
}

- (void)_clipboardChanged:(id)changed
{
  changedCopy = changed;
  object = [changedCopy object];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v6 = changedCopy;
  if (isKindOfClass)
  {
    object2 = [changedCopy object];
    pasteboardTypes = [object2 pasteboardTypes];
    if ([pasteboardTypes containsObject:@"com.apple.photos.pasteboard.location"])
    {
      infoPanelLayoutEnabled = [(PXUIMapWidget *)self infoPanelLayoutEnabled];

      if (infoPanelLayoutEnabled)
      {
        [(PXUIMapWidget *)self _updateFooterContextMenu];
      }
    }

    else
    {
    }

    v6 = changedCopy;
  }
}

- (void)_showPlacesWithContentMode:(unint64_t)mode
{
  _firstAsset = [(PXUIMapWidget *)self _firstAsset];
  photoLibrary = [_firstAsset photoLibrary];

  context = [(PXUIMapWidget *)self context];
  photosDataSource = [context photosDataSource];
  firstAssetCollection = [photosDataSource firstAssetCollection];

  v9 = photoLibrary;
  v17 = [PXSharedLibraryStatusProvider sharedLibraryStatusProviderWithPhotoLibrary:photoLibrary];
  v10 = [[PXLibraryFilterState alloc] initWithSharedLibraryStatusProvider:v17];
  viewMode = [(PXLibraryFilterState *)v10 viewMode];
  v12 = PXPhotoKitAssetCollectionSupportsNearbyAssetsAffordance(firstAssetCollection);
  _mapViewController = [(PXUIMapWidget *)self _mapViewController];
  mapFetchResultsController = [_mapViewController mapFetchResultsController];
  mapView = [mapFetchResultsController mapView];
  [mapView centerCoordinate];
  v18 = [_TtC12PhotosUICore17PXLemonadeMapView makeViewWithPhotoLibrary:v9 collection:firstAssetCollection libraryFilterViewMode:viewMode initialCenterCoordinate:1 wantsDismissButton:v12 wantsNearbyAssetsAffordance:1 enableGridView:?];

  widgetDelegate = [(PXUIMapWidget *)self widgetDelegate];
  [widgetDelegate widget:self transitionToViewController:v18 withTransitionType:2];
}

- (void)controllerTraitCollectionDidChangeFrom:(id)from to:(id)to
{
  from;
  toCopy = to;
  _imageView = [(PXUIMapWidget *)self _imageView];
  [_imageView frame];

  PXSizeIsEmpty();
}

- (void)_handleTapGestureRecognizer:(id)recognizer
{
  v26[1] = *MEMORY[0x1E69E9840];
  recognizerCopy = recognizer;
  if ([recognizerCopy state] != 3)
  {
    goto LABEL_13;
  }

  _imageView = [(PXUIMapWidget *)self _imageView];
  image = [_imageView image];
  if (image && [(PXUIMapWidget *)self _hasLocation])
  {
    _prefersVisionOSInfoPanelLayout = [(PXUIMapWidget *)self _prefersVisionOSInfoPanelLayout];

    if (!_prefersVisionOSInfoPanelLayout)
    {
      if ([(PXUIMapWidget *)self infoPanelLayoutEnabled])
      {
        v8 = MEMORY[0x1E6991F28];
        v25 = *MEMORY[0x1E6991E20];
        v9 = objc_opt_class();
        v10 = NSStringFromClass(v9);
        v26[0] = v10;
        v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];
        [v8 sendEvent:@"com.apple.photos.CPAnalytics.infoPanelLocationTapped" withPayload:v11];
      }

      objc_initWeak(&location, self);
      widgetUnlockDelegate = [(PXUIMapWidget *)self widgetUnlockDelegate];
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __45__PXUIMapWidget__handleTapGestureRecognizer___block_invoke;
      v20[3] = &unk_1E774C318;
      objc_copyWeak(&v21, &location);
      [widgetUnlockDelegate widget:self performAfterUnlockingDeviceIfNecessary:v20 failurehandler:0];

      objc_destroyWeak(&v21);
      objc_destroyWeak(&location);
      goto LABEL_13;
    }
  }

  else
  {
  }

  if (![(PXUIMapWidget *)self _hasLocation])
  {
    if ([(PXUIMapWidget *)self infoPanelLayoutEnabled])
    {
      v13 = MEMORY[0x1E6991F28];
      v23 = *MEMORY[0x1E6991E20];
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      v24 = v15;
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
      [v13 sendEvent:@"com.apple.photos.CPAnalytics.infoPanelAddLocationTapped" withPayload:v16];
    }

    objc_initWeak(&location, self);
    widgetUnlockDelegate2 = [(PXUIMapWidget *)self widgetUnlockDelegate];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __45__PXUIMapWidget__handleTapGestureRecognizer___block_invoke_2;
    v18[3] = &unk_1E774C318;
    objc_copyWeak(&v19, &location);
    [widgetUnlockDelegate2 widget:self performAfterUnlockingDeviceIfNecessary:v18 failurehandler:0];

    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }

LABEL_13:
}

void __45__PXUIMapWidget__handleTapGestureRecognizer___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _showPlacesWithContentMode:1];
}

void __45__PXUIMapWidget__handleTapGestureRecognizer___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _presentLocationSearchPicker];
}

- (void)userDidSelectDisclosureControl
{
  objc_initWeak(&location, self);
  widgetUnlockDelegate = [(PXUIMapWidget *)self widgetUnlockDelegate];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __47__PXUIMapWidget_userDidSelectDisclosureControl__block_invoke;
  v4[3] = &unk_1E774C318;
  objc_copyWeak(&v5, &location);
  [widgetUnlockDelegate widget:self performAfterUnlockingDeviceIfNecessary:v4 failurehandler:0];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __47__PXUIMapWidget_userDidSelectDisclosureControl__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _showPlacesWithContentMode:0];
}

- (void)_openMapsAtCoordinate:(CLLocationCoordinate2D)coordinate title:(id)title
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  v7 = MEMORY[0x1E695DF00];
  titleCopy = title;
  v9 = [v7 now];
  v10 = [PXProgressIndicatorAlertController beginShowingModalProgressWithConfiguration:&__block_literal_global_495];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __45__PXUIMapWidget__openMapsAtCoordinate_title___block_invoke_2;
  v13[3] = &unk_1E7747D28;
  v14 = v10;
  v15 = v9;
  selfCopy = self;
  v11 = v9;
  v12 = v10;
  [PXPlacesMapController launchMapsAtCoordinate:titleCopy withTitle:v13 completionHandler:latitude, longitude];
}

void __45__PXUIMapWidget__openMapsAtCoordinate_title___block_invoke_2(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) stopShowing];
  [*(a1 + 40) timeIntervalSinceNow];
  v5 = -v4;
  v6 = *(*(a1 + 48) + 48);
  if (v4 >= -3.0)
  {
    if (a2)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        v10 = 138543618;
        v11 = @"YES";
        v12 = 2048;
        v13 = v5;
        _os_log_fault_impl(&dword_1A3C1C000, v6, OS_LOG_TYPE_FAULT, "PXUIMapWidget: launchMapsAtCoordinate completed with success: %{public}@, and took %f.", &v10, 0x16u);
      }
    }

    else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v10 = 138543618;
      v11 = @"NO";
      v12 = 2048;
      v13 = v5;
      _os_log_error_impl(&dword_1A3C1C000, v6, OS_LOG_TYPE_ERROR, "PXUIMapWidget: launchMapsAtCoordinate completed with success: %{public}@, and took %f.", &v10, 0x16u);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
  {
    v7 = @"NO";
    if (a2)
    {
      v7 = @"YES";
    }

    v8 = v7;
    v9 = v6;
    v10 = 138543618;
    v11 = v8;
    v12 = 2048;
    v13 = v5;
    _os_log_fault_impl(&dword_1A3C1C000, v9, OS_LOG_TYPE_FAULT, "PXUIMapWidget: launchMapsAtCoordinate completed with success: %{public}@, and took %f.", &v10, 0x16u);
  }
}

- (void)userDidSelectFooter:(id)footer
{
  v19[1] = *MEMORY[0x1E69E9840];
  if ([(PXUIMapWidget *)self _hasLocation])
  {
    v4 = MEMORY[0x1E6991F28];
    v18 = *MEMORY[0x1E6991E20];
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v19[0] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    [v4 sendEvent:@"com.apple.photos.CPAnalytics.infoPanelLocationTapped" withPayload:v7];

    _firstAsset = [(PXUIMapWidget *)self _firstAsset];
    if ([(PXUIMapWidget *)self showAddressLink]&& _firstAsset)
    {
      [_firstAsset coordinate];
      latitude = v20.latitude;
      longitude = v20.longitude;
      if (CLLocationCoordinate2DIsValid(v20))
      {
        v11 = [(PXUIMapWidget *)self _localizedGeoDescriptionForAsset:_firstAsset];
        [(PXUIMapWidget *)self _openMapsAtCoordinate:v11 title:latitude, longitude];
      }
    }
  }

  else if ([(PXUIMapWidget *)self infoPanelLayoutEnabled])
  {
    v12 = MEMORY[0x1E6991F28];
    v16 = *MEMORY[0x1E6991E20];
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    v17 = v14;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    [v12 sendEvent:@"com.apple.photos.CPAnalytics.infoPanelAddLocationTapped" withPayload:v15];

    [(PXUIMapWidget *)self _presentLocationSearchPicker];
  }
}

- (void)_updateHeight
{
  spec = [(PXUIMapWidget *)self spec];
  userInterfaceIdiom = [spec userInterfaceIdiom];

  if (userInterfaceIdiom == 3)
  {
    [(PXUIMapWidget *)self footerHeight];
    v6 = v5 + 400.0;
  }

  else
  {
    _hasLocation = [(PXUIMapWidget *)self _hasLocation];
    v6 = 42.0;
    if (_hasLocation)
    {
      v6 = 171.0;
    }
  }

  [(PXUIMapWidget *)self setHeight:v6];
}

- (BOOL)_requiresDetailedAddressFooterString
{
  currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  countryCode = [currentLocale countryCode];

  LOBYTE(currentLocale) = [countryCode isEqualToString:@"CN"];
  return currentLocale;
}

- (id)_localizedGeoDescriptionForAsset:(id)asset
{
  assetCopy = asset;
  v5 = assetCopy;
  if (assetCopy)
  {
    [assetCopy fetchPropertySetsIfNeeded];
    if ([(PXUIMapWidget *)self _requiresDetailedAddressFooterString])
    {
      px_singleLineMailingAddress = [v5 px_singleLineMailingAddress];
    }

    else
    {
      v10 = 0;
      photosOneUpProperties = [v5 photosOneUpProperties];
      px_singleLineMailingAddress = [photosOneUpProperties localizedGeoDescriptionIsHome:&v10];

      if (v10 == 1)
      {
        v8 = PXLocalizedStringFromTable(@"PXPlacesWidgetHomeTitle", @"PhotosUICore");

        px_singleLineMailingAddress = v8;
      }
    }
  }

  else
  {
    px_singleLineMailingAddress = 0;
  }

  return px_singleLineMailingAddress;
}

- (UIFont)footerFont
{
  footerFont = self->_footerFont;
  if (!footerFont)
  {
    if ([(PXUIMapWidget *)self _prefersVisionOSInfoPanelLayout]|| ![(PXUIMapWidget *)self infoPanelLayoutEnabled])
    {
      PXFontWithTextStyleSymbolicTraits();
    }

    v4 = MEMORY[0x1A590C430](7, 0x8000, 7);
    v5 = self->_footerFont;
    self->_footerFont = v4;

    footerFont = self->_footerFont;
  }

  return footerFont;
}

- (void)_updateFooterButton
{
  footerButton = [(PXUIMapWidget *)self footerButton];
  adjustButton = [(PXUIMapWidget *)self adjustButton];
  if ([(PXUIMapWidget *)self _hasLocation])
  {
    plainButtonConfiguration = [MEMORY[0x1E69DC740] plainButtonConfiguration];
    v6 = MEMORY[0x1E69DCAD8];
    footerFont = [(PXUIMapWidget *)self footerFont];
    v8 = [v6 configurationWithFont:footerFont];

    v9 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"chevron.forward" withConfiguration:v8];
    [plainButtonConfiguration setImage:v9];
    [plainButtonConfiguration setImagePlacement:8];
    [plainButtonConfiguration setImagePadding:4.0];
    [plainButtonConfiguration setTitleLineBreakMode:5];
    _prefersVisionOSInfoPanelLayout = [(PXUIMapWidget *)self _prefersVisionOSInfoPanelLayout];
    v11 = 10.0;
    v12 = 10.0;
    v13 = 10.0;
    v14 = 10.0;
    if (!_prefersVisionOSInfoPanelLayout)
    {
      v11 = *MEMORY[0x1E69DC5C0];
      v12 = *(MEMORY[0x1E69DC5C0] + 8);
      v13 = *(MEMORY[0x1E69DC5C0] + 16);
      v14 = *(MEMORY[0x1E69DC5C0] + 24);
    }

    [plainButtonConfiguration setContentInsets:{v11, v12, v13, v14}];
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __36__PXUIMapWidget__updateFooterButton__block_invoke;
    v38[3] = &unk_1E773DA10;
    v38[4] = self;
    v39 = _prefersVisionOSInfoPanelLayout;
    [plainButtonConfiguration setTitleTextAttributesTransformer:v38];
    if (_prefersVisionOSInfoPanelLayout)
    {
      layer = [footerButton layer];
      [layer setCornerRadius:18.0];

      layer2 = [footerButton layer];
      [layer2 setMasksToBounds:1];
    }

    else
    {
      [plainButtonConfiguration setImageColorTransformer:&__block_literal_global_477];
      layer2 = [MEMORY[0x1E69DC888] clearColor];
      background = [plainButtonConfiguration background];
      [background setBackgroundColor:layer2];
    }

    [footerButton setConfiguration:plainButtonConfiguration];
  }

  else
  {
    plainButtonConfiguration = [footerButton configuration];
    [plainButtonConfiguration setImage:0];
    [footerButton setConfiguration:plainButtonConfiguration];
  }

  titleLabel = [footerButton titleLabel];
  font = [titleLabel font];
  footerFont2 = [(PXUIMapWidget *)self footerFont];

  v21 = font != footerFont2;
  if (font != footerFont2)
  {
    footerFont3 = [(PXUIMapWidget *)self footerFont];
    titleLabel2 = [footerButton titleLabel];
    [titleLabel2 setFont:footerFont3];
  }

  titleLabel3 = [adjustButton titleLabel];
  font2 = [titleLabel3 font];
  footerFont4 = [(PXUIMapWidget *)self footerFont];

  if (font2 != footerFont4)
  {
    footerFont5 = [(PXUIMapWidget *)self footerFont];
    titleLabel4 = [adjustButton titleLabel];
    [titleLabel4 setFont:footerFont5];

    v21 = 1;
  }

  if ([(PXUIMapWidget *)self showAddressLink])
  {
    cachedFooterTitle = [(PXUIMapWidget *)self cachedFooterTitle];
  }

  else
  {
    cachedFooterTitle = 0;
  }

  v30 = [footerButton titleForState:0];
  v31 = v30;
  if (cachedFooterTitle == v30)
  {

LABEL_23:
    if (!v21)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  v32 = [cachedFooterTitle isEqualToString:v30];

  if (v32)
  {
    goto LABEL_23;
  }

  [footerButton setTitle:cachedFooterTitle forState:0];
  [footerButton setAccessibilityValue:cachedFooterTitle];
  [footerButton alpha];
  if (v33 == 0.0 && cachedFooterTitle)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __36__PXUIMapWidget__updateFooterButton__block_invoke_2;
    aBlock[3] = &unk_1E774C648;
    v34 = footerButton;
    v37 = v34;
    v35 = _Block_copy(aBlock);
    if ([v34 px_intersectsWindowBounds])
    {
      [MEMORY[0x1E69DD250] animateWithDuration:v35 animations:0.25];
    }

    else
    {
      v35[2](v35);
    }
  }

LABEL_27:
  [(PXUIMapWidget *)self _layoutSubviews];
LABEL_28:
}

id __36__PXUIMapWidget__updateFooterButton__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 mutableCopy];
  v4 = [*(a1 + 32) footerFont];
  [v3 setObject:v4 forKeyedSubscript:*MEMORY[0x1E69DB648]];

  if ((*(a1 + 40) & 1) == 0 && UIAccessibilityButtonShapesEnabled())
  {
    [v3 setObject:&unk_1F190CCB8 forKeyedSubscript:*MEMORY[0x1E69DB758]];
  }

  return v3;
}

- (id)_copyLocationAction
{
  objc_initWeak(&location, self);
  v2 = MEMORY[0x1E69DC628];
  v3 = PXLocalizedStringFromTable(@"PXPlacesWidgetCopyLocationButtonTitle", @"PhotosUICore");
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __36__PXUIMapWidget__copyLocationAction__block_invoke;
  v6[3] = &unk_1E774BB08;
  objc_copyWeak(&v7, &location);
  v4 = [v2 actionWithTitle:v3 image:0 identifier:0 handler:v6];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
  return v4;
}

void __36__PXUIMapWidget__copyLocationAction__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));

  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained((a1 + 32));
    [v3 _copyLocationTapped];
  }
}

- (id)_pasteLocationAction
{
  objc_initWeak(&location, self);
  v2 = MEMORY[0x1E69DC628];
  v3 = PXLocalizedStringFromTable(@"PXPlacesWidgetPasteLocationButtonTitle", @"PhotosUICore");
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __37__PXUIMapWidget__pasteLocationAction__block_invoke;
  v6[3] = &unk_1E774BB08;
  objc_copyWeak(&v7, &location);
  v4 = [v2 actionWithTitle:v3 image:0 identifier:0 handler:v6];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);

  return v4;
}

void __37__PXUIMapWidget__pasteLocationAction__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));

  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained((a1 + 32));
    [v3 _pasteLocationTapped];
  }
}

- (id)_contextMenuActions
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([(PXUIMapWidget *)self _containsLocationInPasteboard])
  {
    _pasteLocationAction = [(PXUIMapWidget *)self _pasteLocationAction];
    [v3 addObject:_pasteLocationAction];
  }

  if ([(PXUIMapWidget *)self _hasLocation])
  {
    _copyLocationAction = [(PXUIMapWidget *)self _copyLocationAction];
    [v3 addObject:_copyLocationAction];
  }

  return v3;
}

- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location
{
  if ([(PXUIMapWidget *)self _prefersVisionOSInfoPanelLayout:interaction])
  {
    v5 = 0;
  }

  else
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __71__PXUIMapWidget_contextMenuInteraction_configurationForMenuAtLocation___block_invoke;
    v7[3] = &unk_1E7740050;
    v7[4] = self;
    v5 = [MEMORY[0x1E69DC8D8] configurationWithIdentifier:0 previewProvider:0 actionProvider:v7];
  }

  return v5;
}

id __71__PXUIMapWidget_contextMenuInteraction_configurationForMenuAtLocation___block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x1E69DCC60];
  v2 = [*(a1 + 32) _contextMenuActions];
  v3 = [v1 menuWithChildren:v2];

  return v3;
}

- (void)_updateFooterContextMenu
{
  _hasLocation = [(PXUIMapWidget *)self _hasLocation];
  _containsLocationInPasteboard = [(PXUIMapWidget *)self _containsLocationInPasteboard];
  v5 = +[PXPhotosDetailsSettings sharedInstance];
  mapWidgetAllowCopyPasteLocation = [v5 mapWidgetAllowCopyPasteLocation];

  context = [(PXUIMapWidget *)self context];
  photosDataSource = [context photosDataSource];
  containsMultipleAssets = [photosDataSource containsMultipleAssets];

  if ((_hasLocation || _containsLocationInPasteboard) && mapWidgetAllowCopyPasteLocation && (containsMultipleAssets & 1) == 0)
  {
    v11 = [objc_alloc(MEMORY[0x1E69DC8E0]) initWithDelegate:self];
    _contentView = [(PXUIMapWidget *)self _contentView];
    [_contentView addInteraction:v11];
  }
}

- (void)_updateFooterWithTitle:(id)title
{
  [(PXUIMapWidget *)self setCachedFooterTitle:title];
  [(PXUIMapWidget *)self _updateFooterButton];

  [(PXUIMapWidget *)self _updateFooterHeight];
}

- (void)_handleReloadFooterTitle
{
  v35[1] = *MEMORY[0x1E69E9840];
  startSignpost = [MEMORY[0x1E6991F28] startSignpost];
  _firstAsset = [(PXUIMapWidget *)self _firstAsset];
  [_firstAsset fetchPropertySetsIfNeeded];
  photoLibrary = [_firstAsset photoLibrary];
  localIdentifier = [_firstAsset localIdentifier];
  v35[0] = localIdentifier;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:1];
  v29 = 0;
  v8 = [photoLibrary requestAssetRevGeocodingForAssetLocalIdentifiers:v7 withError:&v29];
  v9 = v29;

  if ((v8 & 1) == 0)
  {
    logger = self->_logger;
    if (os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
    {
      v22 = logger;
      uuid = [_firstAsset uuid];
      localizedDescription = [v9 localizedDescription];
      *location = 138478083;
      *&location[4] = uuid;
      v33 = 2114;
      v34 = localizedDescription;
      _os_log_error_impl(&dword_1A3C1C000, v22, OS_LOG_TYPE_ERROR, "PXUIMapWidget error requesting rev geocoding for assetuuid: %{private}@, error: %{public}@", location, 0x16u);
    }
  }

  _firstAsset2 = [(PXUIMapWidget *)self _firstAsset];
  if (_firstAsset2)
  {
    v25 = [(PXUIMapWidget *)self _localizedGeoDescriptionForAsset:_firstAsset2];
    v12 = MEMORY[0x1E6991F28];
    v13 = photoLibrary;
    v14 = v9;
    v15 = *MEMORY[0x1E6991C98];
    v16 = *MEMORY[0x1E6991E18];
    v30[0] = *MEMORY[0x1E6991E40];
    v30[1] = v16;
    v31[0] = @"com.apple.photos.CPAnalytics.infoPanelRevGeoLookupDuration";
    v31[1] = _firstAsset2;
    v30[2] = *MEMORY[0x1E6991E20];
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    v31[2] = v18;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:3];
    v20 = v15;
    v9 = v14;
    photoLibrary = v13;
    [v12 endSignpost:startSignpost forEventName:v20 withPayload:v19];

    objc_initWeak(location, self);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __41__PXUIMapWidget__handleReloadFooterTitle__block_invoke;
    block[3] = &unk_1E774B248;
    v27 = v25;
    v21 = v25;
    objc_copyWeak(&v28, location);
    dispatch_async(MEMORY[0x1E69E96A0], block);
    objc_destroyWeak(&v28);

    objc_destroyWeak(location);
  }
}

void __41__PXUIMapWidget__handleReloadFooterTitle__block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained _updateFooterWithTitle:*(a1 + 32)];
  }
}

- (void)_reloadFooterTitle
{
  if ([(PXUIMapWidget *)self showAddressLink])
  {
    if ([(PXUIMapWidget *)self _hasLocation])
    {
      objc_initWeak(&location, self);
      _reloadFooterQueue = [(PXUIMapWidget *)self _reloadFooterQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __35__PXUIMapWidget__reloadFooterTitle__block_invoke;
      block[3] = &unk_1E774C318;
      objc_copyWeak(&v6, &location);
      dispatch_async(_reloadFooterQueue, block);

      objc_destroyWeak(&v6);
      objc_destroyWeak(&location);
    }

    else if (![(PXUIMapWidget *)self _prefersVisionOSInfoPanelLayout])
    {
      v4 = PXLocalizedStringFromTable(@"PXPlacesWidgetAddLocationButtonTitle", @"PhotosUICore");
      [(PXUIMapWidget *)self _updateFooterWithTitle:v4];
    }
  }
}

void __35__PXUIMapWidget__reloadFooterTitle__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleReloadFooterTitle];
}

- (id)_reloadFooterQueue
{
  if (_reloadFooterQueue_onceToken != -1)
  {
    dispatch_once(&_reloadFooterQueue_onceToken, &__block_literal_global_445_149608);
  }

  v3 = _reloadFooterQueue_queue;

  return v3;
}

void __35__PXUIMapWidget__reloadFooterQueue__block_invoke()
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_BACKGROUND, 0);
  v1 = dispatch_queue_create("com.apple.photos.PXUIMapWidget.reloadFooterQueue", v0);
  v2 = _reloadFooterQueue_queue;
  _reloadFooterQueue_queue = v1;
}

- (void)_updateFooterHeight
{
  showAddressLink = [(PXUIMapWidget *)self showAddressLink];
  if ([(PXUIMapWidget *)self infoPanelLayoutEnabled])
  {
    if ([(PXUIMapWidget *)self _hasLocation])
    {
      v4 = 38.0;
    }

    else
    {
      v4 = 42.0;
    }
  }

  else
  {
    v4 = 0.0;
    if (showAddressLink)
    {
      _contentView = [(PXUIMapWidget *)self _contentView];
      [_contentView frame];
      v7 = v6;

      footerButton = [(PXUIMapWidget *)self footerButton];
      titleLabel = [footerButton titleLabel];
      [titleLabel sizeThatFits:{v7, 0.0}];
      v11 = v10;

      spec = [(PXUIMapWidget *)self spec];
      [spec distanceBetweenMapViewAndAddressTop];
      v4 = v11 + v13;
    }
  }

  [(PXUIMapWidget *)self setFooterHeight:v4];
}

- (id)_firstAsset
{
  context = [(PXUIMapWidget *)self context];
  firstAsset = [context firstAsset];

  return firstAsset;
}

- (int64_t)contentLayoutStyle
{
  if ([(PXUIMapWidget *)self _prefersVisionOSInfoPanelLayout])
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

- (NSString)localizedDisclosureTitle
{
  context = [(PXUIMapWidget *)self context];
  viewSourceOrigin = [context viewSourceOrigin];

  v5 = [(PXWidgetSpec *)self->_spec userInterfaceIdiom]== 3 || viewSourceOrigin == 1;
  if (v5 && [(PXUIMapWidget *)self infoPanelLayoutEnabled])
  {
    v6 = 0;
  }

  else
  {
    v6 = PXLocalizedStringFromTable(@"PXPlacesNearbyAssets", @"PhotosUICore");
  }

  return v6;
}

- (NSString)localizedTitle
{
  _cachedLocalizedTitle = [(PXUIMapWidget *)self _cachedLocalizedTitle];
  context = [(PXUIMapWidget *)self context];
  if ([context viewSourceOrigin] != 1)
  {

    goto LABEL_5;
  }

  infoPanelLayoutEnabled = [(PXUIMapWidget *)self infoPanelLayoutEnabled];

  if (!infoPanelLayoutEnabled)
  {
LABEL_5:
    if (_cachedLocalizedTitle)
    {
      v7 = _cachedLocalizedTitle;
    }

    else
    {
      v7 = PXLocalizedStringFromTable(@"PXPlacesWidgetTitle", @"PhotosUICore");
    }

    v6 = v7;
    goto LABEL_9;
  }

  v6 = 0;
LABEL_9:

  return v6;
}

- (UIView)contentView
{
  [(PXUIMapWidget *)self _loadContainerView];
  result = [(PXUIMapWidget *)self _containerView];
  self->_didDisplayContentView = 1;
  return result;
}

- (double)_horizontalLayoutWidth
{
  _prefersVisionOSInfoPanelLayout = [(PXUIMapWidget *)self _prefersVisionOSInfoPanelLayout];
  result = 0.0;
  if (_prefersVisionOSInfoPanelLayout)
  {
    spec = [(PXUIMapWidget *)self spec];
    contentSizeCategory = [spec contentSizeCategory];

    [PXPhotosDetailsUIViewController dynamicTextScaleFactorForCategory:contentSizeCategory];
    v8 = v7;
    _hasLocation = [(PXUIMapWidget *)self _hasLocation];
    result = v8 * 325.0;
    if (!_hasLocation)
    {
      return 0.0;
    }
  }

  return result;
}

- (double)preferredContentWidthForHorizontalLayoutWithAvailableWidth:(double)width
{
  if (![(PXUIMapWidget *)self _hasLocation])
  {
    return 0.0;
  }

  [(PXUIMapWidget *)self _horizontalLayoutWidth];
  return result;
}

- (double)preferredContentHeightForWidth:(double)width
{
  _prefersVisionOSInfoPanelLayout = [(PXUIMapWidget *)self _prefersVisionOSInfoPanelLayout];
  spec = [(PXUIMapWidget *)self spec];
  v6 = spec;
  if (_prefersVisionOSInfoPanelLayout)
  {
    contentSizeCategory = [spec contentSizeCategory];

    [PXPhotosDetailsUIViewController dynamicTextScaleFactorForCategory:contentSizeCategory];
    v9 = v8;
    _hasLocation = [(PXUIMapWidget *)self _hasLocation];
    result = v9 * 171.0;
    if (!_hasLocation)
    {
      return 0.0;
    }
  }

  else
  {
    [spec contentGuideInsets];
    v13 = v12;
    v15 = v14;

    return v15 + v13 + self->_height;
  }

  return result;
}

- (BOOL)_hasLocation
{
  context = [(PXUIMapWidget *)self context];
  photosDataSource = [context photosDataSource];
  HasLocationForDataSource = PXPhotosDetailsContextHasLocationForDataSource(photosDataSource);

  return HasLocationForDataSource;
}

- (BOOL)hasContentForCurrentInput
{
  _firstAsset = [(PXUIMapWidget *)self _firstAsset];
  infoPanelLayoutEnabled = [(PXUIMapWidget *)self infoPanelLayoutEnabled];
  context = [(PXUIMapWidget *)self context];
  viewSourceOrigin = [context viewSourceOrigin];

  v7 = [_firstAsset canPerformEditOperation:3];
  widgetUnlockDelegate = [(PXUIMapWidget *)self widgetUnlockDelegate];
  v9 = [widgetUnlockDelegate widgetDeviceIsUnlocked:self];

  if (v9)
  {
    _hasLocation = [(PXUIMapWidget *)self _hasLocation];
    if (_hasLocation || !infoPanelLayoutEnabled)
    {
      v11 = _hasLocation;
    }

    else
    {
      v11 = (viewSourceOrigin == 1) & v7;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)setSpec:(id)spec
{
  specCopy = spec;
  if (self->_spec != specCopy)
  {
    v6 = specCopy;
    objc_storeStrong(&self->_spec, spec);
    [(PXUIMapWidget *)self _updateFooterHeight];
    [(PXUIMapWidget *)self _updateHeight];
    [(PXUIMapWidget *)self _updateContentViewFrame];
    specCopy = v6;
  }
}

- (void)_layoutSubviews
{
  spec = [(PXUIMapWidget *)self spec];
  [spec contentGuideInsets];

  _hasLocation = [(PXUIMapWidget *)self _hasLocation];
  if ([(PXUIMapWidget *)self _prefersVisionOSInfoPanelLayout]&& _hasLocation)
  {
    [(PXUIMapWidget *)self _horizontalLayoutWidth];
    width = v5;
  }

  else
  {
    width = self->_contentSize.width;
  }

  height = self->_contentSize.height;
  if (![(PXUIMapWidget *)self _prefersVisionOSInfoPanelLayout])
  {
    PXEdgeInsetsInsetRect();
  }

  [(PXUIMapWidget *)self footerHeight];
  v9 = v8;
  spec2 = [(PXUIMapWidget *)self spec];
  [spec2 displayScale];

  _firstAsset = [(PXUIMapWidget *)self _firstAsset];
  v12 = [_firstAsset canPerformEditOperation:3];

  if (_hasLocation)
  {
    v13 = height - v9;
    v14 = v12 ^ 1u;
    v15 = 0.0;
    v16 = width;
    v17 = 0.0;
  }

  else
  {
    v17 = *MEMORY[0x1E695F058];
    v15 = *(MEMORY[0x1E695F058] + 8);
    v16 = *(MEMORY[0x1E695F058] + 16);
    v13 = *(MEMORY[0x1E695F058] + 24);
    v14 = 1;
  }

  _imageView = [(PXUIMapWidget *)self _imageView];
  [_imageView setFrame:{v17, v15, v16, v13}];

  _imageView2 = [(PXUIMapWidget *)self _imageView];
  [_imageView2 setHidden:!_hasLocation];

  adjustButton = [(PXUIMapWidget *)self adjustButton];
  [adjustButton setHidden:v14];

  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  userInterfaceLayoutDirection = [mEMORY[0x1E69DC668] userInterfaceLayoutDirection];

  if (_hasLocation)
  {
    if (userInterfaceLayoutDirection == 1)
    {
      v23 = 2;
    }

    else
    {
      v23 = 1;
    }

    footerButton = [(PXUIMapWidget *)self footerButton];
    [footerButton setContentHorizontalAlignment:v23];

    footerButton2 = [(PXUIMapWidget *)self footerButton];
    [footerButton2 setContentVerticalAlignment:0];

    footerButton3 = [(PXUIMapWidget *)self footerButton];
    [footerButton3 setBackgroundColor:0];

    if ([(PXUIMapWidget *)self infoPanelLayoutEnabled])
    {
      v34.origin.x = v17;
      v34.origin.y = v15;
      v34.size.width = v16;
      v34.size.height = v13;
      CGRectGetMaxY(v34);
      PXRectRoundToPixel();
    }
  }

  else
  {
    footerButton4 = [(PXUIMapWidget *)self footerButton];
    [footerButton4 setContentHorizontalAlignment:0];

    footerButton5 = [(PXUIMapWidget *)self footerButton];
    [footerButton5 setContentVerticalAlignment:0];

    quaternarySystemFillColor = [MEMORY[0x1E69DC888] quaternarySystemFillColor];
    footerButton6 = [(PXUIMapWidget *)self footerButton];
    [footerButton6 setBackgroundColor:quaternarySystemFillColor];

    footerButton7 = [(PXUIMapWidget *)self footerButton];
    layer = [footerButton7 layer];
    [layer setCornerRadius:8.0];

    [(PXUIMapWidget *)self infoPanelLayoutEnabled];
  }

  if ([(PXUIMapWidget *)self infoPanelLayoutEnabled])
  {
    PXRectRoundToPixel();
  }

  v35.origin.x = v17;
  v35.origin.y = v15;
  v35.size.width = v16;
  v35.size.height = v13;
  CGRectGetMaxY(v35);
  spec3 = [(PXUIMapWidget *)self spec];
  [spec3 distanceBetweenMapViewAndAddressTop];

  PXRectRoundToPixel();
}

- (void)_updateContentViewFrame
{
  spec = [(PXUIMapWidget *)self spec];
  [spec contentGuideInsets];

  width = self->_contentSize.width;
  height = self->_contentSize.height;
  if (![(PXUIMapWidget *)self _prefersVisionOSInfoPanelLayout])
  {
    PXEdgeInsetsInsetRect();
  }

  _contentView = [(PXUIMapWidget *)self _contentView];
  [_contentView setFrame:{0.0, 0.0, width, height}];

  [(PXUIMapWidget *)self _layoutSubviews];
}

- (int64_t)_fetchCountOfAssetsWithLocation
{
  v25 = *MEMORY[0x1E69E9840];
  _fetchResultsForSections = [(PXUIMapWidget *)self _fetchResultsForSections];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v3 = [_fetchResultsForSections countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v20;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(_fetchResultsForSections);
        }

        v8 = *(*(&v19 + 1) + 8 * i);
        v15 = 0u;
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        v9 = v8;
        v10 = [v9 countByEnumeratingWithState:&v15 objects:v23 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v16;
          do
          {
            for (j = 0; j != v11; ++j)
            {
              if (*v16 != v12)
              {
                objc_enumerationMutation(v9);
              }

              [*(*(&v15 + 1) + 8 * j) locationCoordinate];
              v5 += CLLocationCoordinate2DIsValid(v26);
            }

            v11 = [v9 countByEnumeratingWithState:&v15 objects:v23 count:16];
          }

          while (v11);
        }
      }

      v4 = [_fetchResultsForSections countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_fetchResultsForSections
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  context = [(PXUIMapWidget *)self context];
  photosDataSource = [context photosDataSource];

  if ([photosDataSource numberOfSections] >= 1)
  {
    v6 = 0;
    do
    {
      v7 = [photosDataSource assetsInSection:v6];
      [v3 addObject:v7];

      ++v6;
    }

    while ([photosDataSource numberOfSections] > v6);
  }

  v8 = [MEMORY[0x1E695DEC8] arrayWithArray:v3];

  return v8;
}

- (void)_handleContentSizeCategoryDidChange:(id)change
{
  footerFont = self->_footerFont;
  self->_footerFont = 0;

  [(PXUIMapWidget *)self _updateFooterHeight];

  [(PXUIMapWidget *)self _updateFooterButton];
}

- (void)_setHasLoadedContentData:(BOOL)data
{
  if (self->_hasLoadedContentData != data)
  {
    self->_hasLoadedContentData = data;
    widgetDelegate = [(PXUIMapWidget *)self widgetDelegate];
    [widgetDelegate widgetHasLoadedContentDataDidChange:self];
  }
}

- (void)unloadContentData
{
  self->_isLoaded = 0;
  photosDataSource = [(PXPhotosDetailsContext *)self->_context photosDataSource];
  [photosDataSource unregisterChangeObserver:self];
}

- (CGSize)_estimatedMapViewImageSize
{
  spec = [(PXUIMapWidget *)self spec];
  [spec contentGuideInsets];

  if ([(PXUIMapWidget *)self _prefersVisionOSInfoPanelLayout])
  {
    v4 = 133.0;
  }

  else
  {
    v4 = 171.0;
  }

  if ([(PXUIMapWidget *)self _prefersVisionOSInfoPanelLayout]&& [(PXUIMapWidget *)self _hasLocation])
  {
    [(PXUIMapWidget *)self _horizontalLayoutWidth];
    width = v5;
  }

  else
  {
    width = self->_contentSize.width;
  }

  if (![(PXUIMapWidget *)self _prefersVisionOSInfoPanelLayout])
  {
    PXEdgeInsetsInsetRect();
  }

  v7 = width;
  v8 = v4;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)loadContentData
{
  self->_isLoaded = 1;
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__handleContentSizeCategoryDidChange_ name:*MEMORY[0x1E69DDC48] object:0];

  if ([(PXUIMapWidget *)self _hasLocation])
  {
    [(PXUIMapWidget *)self _estimatedMapViewImageSize];
    v5 = v4;
    v7 = v6;
    _fetchResultsForSections = [(PXUIMapWidget *)self _fetchResultsForSections];
    [(PXUIMapWidget *)self _fetchPlacesSnapshotUsingMapType:0 fetchResults:_fetchResultsForSections imageSize:0 shouldFetchNearbyAssetCount:v5, v7];
  }
}

- (void)_didTapAdjustLocation
{
  v10[1] = *MEMORY[0x1E69E9840];
  if ([(PXUIMapWidget *)self infoPanelLayoutEnabled])
  {
    v3 = MEMORY[0x1E6991F28];
    v9 = *MEMORY[0x1E6991E20];
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v10[0] = v5;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    [v3 sendEvent:@"com.apple.photos.CPAnalytics.infoPanelAdjustLocationTapped" withPayload:v6];
  }

  widgetUnlockDelegate = [(PXUIMapWidget *)self widgetUnlockDelegate];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __38__PXUIMapWidget__didTapAdjustLocation__block_invoke;
  v8[3] = &unk_1E774C648;
  v8[4] = self;
  [widgetUnlockDelegate widget:self performAfterUnlockingDeviceIfNecessary:v8 failurehandler:0];
}

- (void)_pasteLocationTapped
{
  _firstAsset = [(PXUIMapWidget *)self _firstAsset];
  if (_firstAsset)
  {
    v3 = _firstAsset;
    PXAssignLocationFromPasteboardToAsset(_firstAsset);
    _firstAsset = v3;
  }
}

- (BOOL)_containsLocationInPasteboard
{
  _firstAsset = [(PXUIMapWidget *)self _firstAsset];
  v3 = _firstAsset;
  if (_firstAsset)
  {
    v4 = PXCanAssignLocationFromPasteboardToAsset(_firstAsset);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_copyLocationTapped
{
  _firstAsset = [(PXUIMapWidget *)self _firstAsset];
  if (_firstAsset)
  {
    v3 = _firstAsset;
    PXCopyLocationFromAssetToPasteboard(_firstAsset);
    _firstAsset = v3;
  }
}

- (void)_loadContainerView
{
  if (!self->__containerView)
  {
    width = self->_contentSize.width;
    height = self->_contentSize.height;
    v6 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{0.0, 0.0, width, height}];
    contentView = self->__contentView;
    self->__contentView = v6;

    secondarySystemBackgroundColor = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
    [(UIView *)self->__contentView setBackgroundColor:secondarySystemBackgroundColor];

    widgetDelegate = [(PXUIMapWidget *)self widgetDelegate];
    v56 = [widgetDelegate widgetExtendedTraitCollection:self];

    [v56 displayScale];
    v11 = v10;
    v12 = objc_alloc_init(off_1E7721760);
    spec = [(PXUIMapWidget *)self spec];
    systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
    [v12 setBackgroundColor:?];
    [v12 setDisplayScale:v11];
    userInterfaceIdiom = [v56 userInterfaceIdiom];
    infoPanelLayoutEnabled = [(PXUIMapWidget *)self infoPanelLayoutEnabled];
    [(PXUIMapWidget *)self footerHeight];
    v17 = height - v16;
    v18 = objc_alloc_init(PXImageUIView);
    [(PXImageUIView *)v18 setFrame:0.0, 0.0, width, v17];
    v55 = spec;
    defaultPlacesPlaceholderColor = [spec defaultPlacesPlaceholderColor];
    [(PXImageUIView *)v18 setBackgroundColor:defaultPlacesPlaceholderColor];

    v20 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel__handleTapGestureRecognizer_];
    [(PXImageUIView *)v18 addGestureRecognizer:v20];

    [(PXImageUIView *)v18 setAutoresizingMask:18];
    [(PXImageUIView *)v18 setUserInteractionEnabled:1];
    [(PXImageUIView *)v18 setContentMode:2];
    [(PXImageUIView *)v18 setSpec:v12];
    [(PXImageUIView *)v18 setFloatingRotationEnabled:0];
    [(PXImageUIView *)v18 setFloatingViewEnabled:userInterfaceIdiom == 3];
    if (userInterfaceIdiom != 3)
    {
      [(PXImageUIView *)v18 setDrawsFocusRing:1];
      v21 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel__handleTapGestureRecognizer_];
      [v21 setAllowedPressTypes:&unk_1F1911020];
      [(PXImageUIView *)v18 addGestureRecognizer:v21];
    }

    objc_storeStrong(&self->__imageView, v18);
    v22 = [MEMORY[0x1E69DC738] buttonWithType:1];
    [v22 addTarget:self action:sel_userDidSelectFooter_ forControlEvents:64];
    v23 = PXLocalizedStringFromTable(@"PXPlacesWidgetFooterAddressButtonTitleAXLabel", @"PhotosUICore");
    [v22 setAccessibilityLabel:v23];

    v24 = PXLocalizedStringFromTable(@"PXPlacesWidgetFooterAddressButtonTitleAXHint", @"PhotosUICore");
    [v22 setAccessibilityHint:v24];

    [v22 setAccessibilityIdentifier:@"com.apple.photos.infoPanel.map.footer.address"];
    objc_storeStrong(&self->_footerButton, v22);
    titleLabel = [v22 titleLabel];
    [titleLabel setLineBreakMode:5];
    [titleLabel setNumberOfLines:{-[PXUIMapWidget infoPanelLayoutEnabled](self, "infoPanelLayoutEnabled")}];
    [titleLabel setTextAlignment:4];
    if (infoPanelLayoutEnabled)
    {
      [(PXUIMapWidget *)self _updateFooterContextMenu];
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter addObserver:self selector:sel__clipboardChanged_ name:*MEMORY[0x1E69DE270] object:0];

      if ([(PXUIMapWidget *)self _prefersVisionOSInfoPanelLayout])
      {
        v27 = [MEMORY[0x1E69DC730] effectWithStyle:6];
        v28 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:v27];
      }

      else
      {
        v28 = objc_alloc_init(MEMORY[0x1E69DD298]);
      }

      [(UIView *)v28 setAutoresizingMask:18];
      contentView = [(UIView *)v28 contentView];
      [contentView addSubview:v22];

      _prefersVisionOSInfoPanelLayout = [(PXUIMapWidget *)self _prefersVisionOSInfoPanelLayout];
      v31 = [MEMORY[0x1E69DC738] buttonWithType:1];
      if (_prefersVisionOSInfoPanelLayout)
      {
        borderlessButtonConfiguration = [MEMORY[0x1E69DC740] borderlessButtonConfiguration];
        v33 = PXLocalizedStringFromTable(@"PXPlacesWidgetAdjustButtonTitle", @"PhotosUICore");
        [borderlessButtonConfiguration setTitle:v33];

        [borderlessButtonConfiguration setContentInsets:{8.0, 8.0, 8.0, 8.0}];
        v34 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.3];
        background = [borderlessButtonConfiguration background];
        [background setBackgroundColor:v34];

        background2 = [borderlessButtonConfiguration background];
        [background2 setCornerRadius:14.0];

        [(UIButton *)v31 setConfiguration:borderlessButtonConfiguration];
      }

      else
      {
        borderlessButtonConfiguration = PXLocalizedStringFromTable(@"PXPlacesWidgetAdjustButtonTitle", @"PhotosUICore");
        [(UIButton *)v31 setTitle:borderlessButtonConfiguration forState:0];
      }

      [(UIButton *)v31 addTarget:self action:sel__didTapAdjustLocation forControlEvents:64];
      v37 = PXLocalizedStringFromTable(@"PXPlacesWidgetAdjustButtonTitleAXHint", @"PhotosUICore");
      [(UIButton *)v31 setAccessibilityHint:v37];

      [(UIButton *)v31 setAccessibilityIdentifier:@"com.apple.photos.infoPanel.map.footer.adjust"];
      contentView2 = [(UIView *)v28 contentView];
      [contentView2 addSubview:v31];

      adjustButton = self->_adjustButton;
      self->_adjustButton = v31;
      v40 = v31;

      footerView = self->_footerView;
      self->_footerView = v28;
      v42 = v28;

      layer = [(UIView *)self->__contentView layer];
      [layer setCornerRadius:8.0];

      layer2 = [(UIView *)self->__contentView layer];
      [layer2 setMasksToBounds:1];

      [(UIView *)self->__contentView addSubview:v18];
      [(UIView *)self->__contentView addSubview:v42];
    }

    else
    {
      [(UIView *)self->__contentView addSubview:v18];
      [(UIView *)self->__contentView addSubview:v22];
    }

    [(PXUIMapWidget *)self _reloadFooterTitle];
    [(PXUIMapWidget *)self _updateContentViewFrame];
    v45 = objc_alloc(MEMORY[0x1E69DD250]);
    px_mainScreen = [MEMORY[0x1E69DCEB0] px_mainScreen];
    [px_mainScreen bounds];
    v47 = [v45 initWithFrame:?];
    containerView = self->__containerView;
    self->__containerView = v47;

    [(UIView *)self->__containerView addSubview:self->__contentView];
    v49 = [_PXPlacesSnapshotKey alloc];
    [(PXUIMapWidget *)self _estimatedMapViewImageSize];
    v52 = -[_PXPlacesSnapshotKey initWithImageSize:userInterfaceStyle:](v49, "initWithImageSize:userInterfaceStyle:", [v56 userInterfaceStyle], v50, v51);
    if ([(PXUIMapWidget *)self _hasCachedSnapshotImageForKey:v52])
    {
      _fetchResultsForSections = [(PXUIMapWidget *)self _fetchResultsForSections];
      [(PXUIMapWidget *)self _estimatedMapViewImageSize];
      [(PXUIMapWidget *)self _fetchPlacesSnapshotUsingMapType:0 fetchResults:_fetchResultsForSections imageSize:0 shouldFetchNearbyAssetCount:?];
    }

    else
    {
      [(PXUIMapWidget *)self _showPlaceholder];
    }
  }
}

- (BOOL)infoPanelLayoutEnabled
{
  spec = [(PXUIMapWidget *)self spec];
  userInterfaceIdiom = [spec userInterfaceIdiom];

  context = [(PXUIMapWidget *)self context];
  viewSourceOrigin = [context viewSourceOrigin];

  return viewSourceOrigin == 1 && userInterfaceIdiom != 3;
}

- (void)setContentSize:(CGSize)size
{
  if (self->_contentSize.width != size.width || self->_contentSize.height != size.height)
  {
    self->_contentSize = size;
    if (self->__contentView)
    {
      [(PXUIMapWidget *)self _updateContentViewFrame];
      if ([(PXUIMapWidget *)self _hasLocation])
      {
        _fetchResultsForSections = [(PXUIMapWidget *)self _fetchResultsForSections];
        v5 = [(PXUIMapWidget *)self _hasLocation]^ 1;
        _imageView = [(PXUIMapWidget *)self _imageView];
        [_imageView frame];
        [(PXUIMapWidget *)self _fetchPlacesSnapshotUsingMapType:v5 fetchResults:_fetchResultsForSections imageSize:0 shouldFetchNearbyAssetCount:v7, v8];
      }
    }
  }
}

- (void)setContext:(id)context
{
  contextCopy = context;
  photosDataSource = [(PXPhotosDetailsContext *)self->_context photosDataSource];
  [photosDataSource unregisterChangeObserver:self];

  photosDataSource2 = [(PXPhotosDetailsContext *)contextCopy photosDataSource];
  [photosDataSource2 registerChangeObserver:self];
  context = self->_context;
  self->_context = contextCopy;

  if (self->_isLoaded)
  {
    [(PXUIMapWidget *)self _reloadFooterTitle];
  }
}

- (void)setShowAddressLink:(BOOL)link
{
  if (self->_showAddressLink != link)
  {
    self->_showAddressLink = link;
    if (self->_isLoaded)
    {
      [(PXUIMapWidget *)self _reloadFooterTitle];
    }
  }
}

- (void)dealloc
{
  [(PXUIMapWidget *)self unloadContentData];
  v3.receiver = self;
  v3.super_class = PXUIMapWidget;
  [(PXUIMapWidget *)&v3 dealloc];
}

- (PXUIMapWidget)init
{
  v13.receiver = self;
  v13.super_class = PXUIMapWidget;
  v2 = [(PXUIMapWidget *)&v13 init];
  v3 = v2;
  if (v2)
  {
    v2->_height = 171.0;
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    fetchedImages = v3->_fetchedImages;
    v3->_fetchedImages = v4;

    v3->_lastFetchedBoundingRectAssetCount = -1;
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    nearbyCountCompletionBlocks = v3->__nearbyCountCompletionBlocks;
    v3->__nearbyCountCompletionBlocks = v6;

    v3->_contentSize = *MEMORY[0x1E695F060];
    v8 = PXLocalizedStringFromTable(@"PXPlacesWidgetTitle", @"PhotosUICore");
    cachedLocalizedTitle = v3->__cachedLocalizedTitle;
    v3->__cachedLocalizedTitle = v8;

    v10 = os_log_create("com.apple.photos.infopanel", "InfoPanel");
    logger = v3->_logger;
    v3->_logger = v10;
  }

  return v3;
}

+ (id)sharedSnapshotRequestConcurrentQueue
{
  if (sharedSnapshotRequestConcurrentQueue_onceToken != -1)
  {
    dispatch_once(&sharedSnapshotRequestConcurrentQueue_onceToken, &__block_literal_global_149666);
  }

  v3 = sharedSnapshotRequestConcurrentQueue_sharedQueue;

  return v3;
}

void __53__PXUIMapWidget_sharedSnapshotRequestConcurrentQueue__block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x1E69E96A8], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  attr = dispatch_queue_attr_make_with_qos_class(v0, QOS_CLASS_USER_INITIATED, 0);

  v1 = dispatch_queue_create("com.apple.photos.mapSnapshotRequestQueue", attr);
  v2 = sharedSnapshotRequestConcurrentQueue_sharedQueue;
  sharedSnapshotRequestConcurrentQueue_sharedQueue = v1;
}

@end