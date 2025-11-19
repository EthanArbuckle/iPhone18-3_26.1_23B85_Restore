@interface PXUIMapWidget
+ (id)sharedSnapshotRequestConcurrentQueue;
- (BOOL)_containsLocationInPasteboard;
- (BOOL)_hasCachedSnapshotImageForKey:(id)a3;
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
- (double)preferredContentHeightForWidth:(double)a3;
- (double)preferredContentWidthForHorizontalLayoutWithAvailableWidth:(double)a3;
- (id)_contextMenuActions;
- (id)_copyLocationAction;
- (id)_createSnapshotOptions;
- (id)_fetchResultsForSections;
- (id)_firstAsset;
- (id)_localizedGeoDescriptionForAsset:(id)a3;
- (id)_pasteLocationAction;
- (id)_reloadFooterQueue;
- (id)_snapshotOptionsForExtendedTraitCollection:(id)a3 queue:(id)a4 viewSize:(CGSize)a5 snapshotMapType:(unint64_t)a6;
- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4;
- (int64_t)_fetchCountOfAssetsWithLocation;
- (int64_t)contentLayoutStyle;
- (void)_clipboardChanged:(id)a3;
- (void)_copyLocationTapped;
- (void)_didTapAdjustLocation;
- (void)_fetchPlacesSnapshotUsingMapType:(unint64_t)a3 fetchResults:(id)a4 imageSize:(CGSize)a5 shouldFetchNearbyAssetCount:(BOOL)a6;
- (void)_generateSnapshotsForExtendedTraitCollection:(id)a3 queue:(id)a4 size:(CGSize)a5 snapshotMapType:(unint64_t)a6 fetchResults:(id)a7 shouldFetchNearbyAssetCount:(BOOL)a8;
- (void)_handleContentSizeCategoryDidChange:(id)a3;
- (void)_handleReloadFooterTitle;
- (void)_handleSnapshotResponse:(id)a3 viewPort:(id)a4 snapshotMapType:(unint64_t)a5 shouldFetchNearbyAssetCount:(BOOL)a6 fetchedImageKey:(id)a7 error:(id)a8 userInterfaceStyle:(int64_t)a9;
- (void)_handleTapGestureRecognizer:(id)a3;
- (void)_hasLocationDidChange;
- (void)_layoutSubviews;
- (void)_loadContainerView;
- (void)_openMapsAtCoordinate:(CLLocationCoordinate2D)a3 title:(id)a4;
- (void)_pasteLocationTapped;
- (void)_presentLocationSearchPicker;
- (void)_reloadFooterTitle;
- (void)_setHasLoadedContentData:(BOOL)a3;
- (void)_setImage:(id)a3 animated:(BOOL)a4;
- (void)_showPlacesWithContentMode:(unint64_t)a3;
- (void)_updateContentViewFrame;
- (void)_updateFooterButton;
- (void)_updateFooterContextMenu;
- (void)_updateFooterHeight;
- (void)_updateFooterWithTitle:(id)a3;
- (void)_updateHeight;
- (void)controllerTraitCollectionDidChangeFrom:(id)a3 to:(id)a4;
- (void)dealloc;
- (void)loadContentData;
- (void)photosDataSource:(id)a3 didChange:(id)a4;
- (void)setContentSize:(CGSize)a3;
- (void)setContext:(id)a3;
- (void)setShowAddressLink:(BOOL)a3;
- (void)setSpec:(id)a3;
- (void)unloadContentData;
- (void)userDidSelectDisclosureControl;
- (void)userDidSelectFooter:(id)a3;
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

- (BOOL)_hasCachedSnapshotImageForKey:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_fetchedImages objectForKey:a3];
  v4 = v3 != 0;

  return v4;
}

- (void)_setImage:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(PXUIMapWidget *)self _imageView];
  if (v6)
  {
    v8 = [(PXUIMapWidget *)self spec];
    v9 = [v8 defaultPlacesPlaceholderColor];
  }

  else
  {
    v9 = 0;
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __36__PXUIMapWidget__setImage_animated___block_invoke;
  aBlock[3] = &unk_1E774A1B8;
  v10 = v7;
  v19 = v10;
  v11 = v6;
  v20 = v11;
  v12 = v9;
  v21 = v12;
  v13 = _Block_copy(aBlock);
  v14 = v13;
  if (v4)
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

- (void)_handleSnapshotResponse:(id)a3 viewPort:(id)a4 snapshotMapType:(unint64_t)a5 shouldFetchNearbyAssetCount:(BOOL)a6 fetchedImageKey:(id)a7 error:(id)a8 userInterfaceStyle:(int64_t)a9
{
  v11 = a6;
  v32 = a3;
  v15 = a4;
  v16 = a7;
  v17 = a8;
  v18 = v17;
  if (self->_isLoaded)
  {
    if (v17)
    {
      if (a5 == 1)
      {
        [(PXUIMapWidget *)self _showPlaceholder];
      }

      else
      {
        v20 = [(PXUIMapWidget *)self _imageView];
        [v20 frame];
        v22 = v21;
        v24 = v23;

        if (v22 == *MEMORY[0x1E695F060] && v24 == *(MEMORY[0x1E695F060] + 8))
        {
          [(PXUIMapWidget *)self _estimatedMapViewImageSize];
          v22 = v26;
          v24 = v27;
        }

        v28 = [(PXUIMapWidget *)self _fetchResultsForSections];
        [(PXUIMapWidget *)self _fetchPlacesSnapshotUsingMapType:1 fetchResults:v28 imageSize:v11 shouldFetchNearbyAssetCount:v22, v24];
      }
    }

    else
    {
      if (a5)
      {
        v19 = ![(PXUIMapWidget *)self _hasCachedSnapshotImageForKey:v16];
      }

      else
      {
        [(NSMutableDictionary *)self->_fetchedImages setObject:v32 forKey:v16];
        v19 = 1;
      }

      if ([(PXUIMapWidget *)self _prefersVisionOSInfoPanelLayout])
      {
        v29 = 1;
      }

      else
      {
        v30 = [MEMORY[0x1E69DD1B8] currentTraitCollection];
        v29 = [v30 userInterfaceStyle];
      }

      if (v29 == a9)
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
        [(PXUIMapWidget *)self _setImage:v32 animated:1];
      }
    }
  }
}

- (id)_createSnapshotOptions
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = objc_alloc_init(PXPlacesSnapshotOptions);
  objc_sync_exit(v2);

  return v3;
}

- (PXPlacesSnapshotFactory)_factory
{
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->__factory)
  {
    v3 = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
    v4 = [[PXPlacesSnapshotFactory alloc] initWithPhotoLibrary:v3];
    factory = v2->__factory;
    v2->__factory = v4;
  }

  objc_sync_exit(v2);

  v6 = v2->__factory;

  return v6;
}

- (id)_snapshotOptionsForExtendedTraitCollection:(id)a3 queue:(id)a4 viewSize:(CGSize)a5 snapshotMapType:(unint64_t)a6
{
  height = a5.height;
  width = a5.width;
  v11 = a4;
  v12 = a3;
  v13 = [(PXUIMapWidget *)self _createSnapshotOptions];
  [v13 setExtendedTraitCollection:v12];

  v14 = objc_alloc_init(PXPlacesGeotaggableMediaProvider);
  [v13 setGeotaggableInformationDelegate:v14];

  [v13 setQueue:v11];
  [v13 setViewSize:{width, height}];
  [v13 setSnapshotMapType:a6];
  [v13 setPopoverImageType:5];
  [v13 setShouldRenderThumbnailForNoLocation:1];

  return v13;
}

- (void)_generateSnapshotsForExtendedTraitCollection:(id)a3 queue:(id)a4 size:(CGSize)a5 snapshotMapType:(unint64_t)a6 fetchResults:(id)a7 shouldFetchNearbyAssetCount:(BOOL)a8
{
  height = a5.height;
  width = a5.width;
  v14 = a3;
  v15 = a4;
  v16 = a7;
  v17 = [v14 traitCollection];
  v18 = v17;
  if (v17)
  {
    v23 = [v17 traitCollectionByModifyingTraits:&__block_literal_global_520];
    v19 = [v18 traitCollectionByModifyingTraits:&__block_literal_global_522];
  }

  else
  {
    v19 = 0;
    v23 = 0;
  }

  v20 = [(PXUIMapWidget *)self _snapshotOptionsForExtendedTraitCollection:v14 queue:v15 viewSize:a6 snapshotMapType:width, height];
  objc_initWeak(location, self);
  v21 = [(PXUIMapWidget *)self _factory];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __130__PXUIMapWidget__generateSnapshotsForExtendedTraitCollection_queue_size_snapshotMapType_fetchResults_shouldFetchNearbyAssetCount___block_invoke_3;
  v28[3] = &unk_1E773DAA0;
  objc_copyWeak(v29, location);
  v29[1] = *&width;
  v29[2] = *&height;
  v29[3] = a6;
  v30 = a8;
  [v21 requestMapSnapshotWithAssets:v16 snapshotOptions:v20 snapshotTraitCollection:v23 popoverImageOptions:1 completion:v28];

  v22 = [(PXUIMapWidget *)self _factory];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __130__PXUIMapWidget__generateSnapshotsForExtendedTraitCollection_queue_size_snapshotMapType_fetchResults_shouldFetchNearbyAssetCount___block_invoke_5;
  v25[3] = &unk_1E773DAA0;
  objc_copyWeak(v26, location);
  v26[1] = *&width;
  v26[2] = *&height;
  v26[3] = a6;
  v27 = a8;
  [v22 requestMapSnapshotWithAssets:v16 snapshotOptions:v20 snapshotTraitCollection:v19 popoverImageOptions:1 completion:v25];

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

- (void)_fetchPlacesSnapshotUsingMapType:(unint64_t)a3 fetchResults:(id)a4 imageSize:(CGSize)a5 shouldFetchNearbyAssetCount:(BOOL)a6
{
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [(PXUIMapWidget *)self widgetDelegate];
  v9 = [v8 widgetExtendedTraitCollection:self];

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

- (void)photosDataSource:(id)a3 didChange:(id)a4
{
  v31 = a3;
  v7 = a4;
  if (self->__contentView)
  {
    v8 = +[PXPhotosDetailsSettings sharedInstance];
    v9 = [v8 placesWidgetShowOnlyPlaceholder];

    if ((v9 & 1) == 0)
    {
      if (![v7 hasIncrementalChanges])
      {
        goto LABEL_13;
      }

      v10 = [v7 originatingPhotoLibraryChange];
      v11 = [(PXUIMapWidget *)self _firstAsset];
      v12 = [v10 changeDetailsForObject:v11];

      v13 = [v12 objectBeforeChanges];
      if (v13)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v23 = [MEMORY[0x1E696AAA8] currentHandler];
          v24 = objc_opt_class();
          v25 = NSStringFromClass(v24);
          v26 = [v13 px_descriptionForAssertionMessage];
          [v23 handleFailureInMethod:a2 object:self file:@"PXUIMapWidget.m" lineNumber:1198 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"assetChangeDetails.objectBeforeChanges", v25, v26}];
        }
      }

      v14 = [v12 objectAfterChanges];
      if (v14)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v27 = [MEMORY[0x1E696AAA8] currentHandler];
          v28 = objc_opt_class();
          v29 = NSStringFromClass(v28);
          v30 = [v14 px_descriptionForAssertionMessage];
          [v27 handleFailureInMethod:a2 object:self file:@"PXUIMapWidget.m" lineNumber:1199 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"assetChangeDetails.objectAfterChanges", v29, v30}];
        }
      }

      v15 = [v13 location];
      v16 = [v14 location];
      [v15 distanceFromLocation:v16];
      v18 = v17;
      v19 = [v7 contentChangedIndexPaths];
      v20 = [v19 count];

      if ((v15 == 0) != (v16 == 0) || v18 != 0.0 || v20)
      {
LABEL_13:
        [(PXUIMapWidget *)self _hasLocationDidChange];
        v21 = [(PXUIMapWidget *)self _fetchResultsForSections];
        [(NSMutableDictionary *)self->_fetchedImages removeAllObjects];
        if ([(PXUIMapWidget *)self _hasLocation])
        {
          [(PXUIMapWidget *)self _estimatedMapViewImageSize];
          [(PXUIMapWidget *)self _fetchPlacesSnapshotUsingMapType:0 fetchResults:v21 imageSize:0 shouldFetchNearbyAssetCount:?];
        }
      }

      v22 = [(PXUIMapWidget *)self widgetDelegate];
      [v22 widgetPreferredContentHeightForWidthDidChange:self];
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
  v3 = [(PXUIMapWidget *)self context];
  v4 = [v3 assetCollections];
  v5 = [v4 firstObject];

  if (v5)
  {
    v6 = [(PXUIMapWidget *)self context];
    v7 = [v6 assetsByCollection];
    v8 = [v7 objectForKeyedSubscript:v5];
    v9 = [v8 firstObject];

    if (v9)
    {
      v10 = MEMORY[0x1E6978650];
      v16[0] = v9;
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
      v12 = [v10 transientAssetCollectionWithAssets:v11 title:0];

      v13 = [MEMORY[0x1E6978630] fetchAssetsInAssetCollection:v12 options:0];
      v14 = [PXPhotosDetailsLocationSearchUIFactory searchViewControllerWithAssets:v13 delegate:self];
      v15 = [(PXUIMapWidget *)self widgetDelegate];
      [v15 widget:self transitionToViewController:v14 withTransitionType:2];
    }
  }
}

- (void)_clipboardChanged:(id)a3
{
  v10 = a3;
  v4 = [v10 object];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v6 = v10;
  if (isKindOfClass)
  {
    v7 = [v10 object];
    v8 = [v7 pasteboardTypes];
    if ([v8 containsObject:@"com.apple.photos.pasteboard.location"])
    {
      v9 = [(PXUIMapWidget *)self infoPanelLayoutEnabled];

      if (v9)
      {
        [(PXUIMapWidget *)self _updateFooterContextMenu];
      }
    }

    else
    {
    }

    v6 = v10;
  }
}

- (void)_showPlacesWithContentMode:(unint64_t)a3
{
  v4 = [(PXUIMapWidget *)self _firstAsset];
  v5 = [v4 photoLibrary];

  v6 = [(PXUIMapWidget *)self context];
  v7 = [v6 photosDataSource];
  v8 = [v7 firstAssetCollection];

  v9 = v5;
  v17 = [PXSharedLibraryStatusProvider sharedLibraryStatusProviderWithPhotoLibrary:v5];
  v10 = [[PXLibraryFilterState alloc] initWithSharedLibraryStatusProvider:v17];
  v11 = [(PXLibraryFilterState *)v10 viewMode];
  v12 = PXPhotoKitAssetCollectionSupportsNearbyAssetsAffordance(v8);
  v13 = [(PXUIMapWidget *)self _mapViewController];
  v14 = [v13 mapFetchResultsController];
  v15 = [v14 mapView];
  [v15 centerCoordinate];
  v18 = [_TtC12PhotosUICore17PXLemonadeMapView makeViewWithPhotoLibrary:v9 collection:v8 libraryFilterViewMode:v11 initialCenterCoordinate:1 wantsDismissButton:v12 wantsNearbyAssetsAffordance:1 enableGridView:?];

  v16 = [(PXUIMapWidget *)self widgetDelegate];
  [v16 widget:self transitionToViewController:v18 withTransitionType:2];
}

- (void)controllerTraitCollectionDidChangeFrom:(id)a3 to:(id)a4
{
  a3;
  v6 = a4;
  v7 = [(PXUIMapWidget *)self _imageView];
  [v7 frame];

  PXSizeIsEmpty();
}

- (void)_handleTapGestureRecognizer:(id)a3
{
  v26[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 state] != 3)
  {
    goto LABEL_13;
  }

  v5 = [(PXUIMapWidget *)self _imageView];
  v6 = [v5 image];
  if (v6 && [(PXUIMapWidget *)self _hasLocation])
  {
    v7 = [(PXUIMapWidget *)self _prefersVisionOSInfoPanelLayout];

    if (!v7)
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
      v12 = [(PXUIMapWidget *)self widgetUnlockDelegate];
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __45__PXUIMapWidget__handleTapGestureRecognizer___block_invoke;
      v20[3] = &unk_1E774C318;
      objc_copyWeak(&v21, &location);
      [v12 widget:self performAfterUnlockingDeviceIfNecessary:v20 failurehandler:0];

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
    v17 = [(PXUIMapWidget *)self widgetUnlockDelegate];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __45__PXUIMapWidget__handleTapGestureRecognizer___block_invoke_2;
    v18[3] = &unk_1E774C318;
    objc_copyWeak(&v19, &location);
    [v17 widget:self performAfterUnlockingDeviceIfNecessary:v18 failurehandler:0];

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
  v3 = [(PXUIMapWidget *)self widgetUnlockDelegate];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __47__PXUIMapWidget_userDidSelectDisclosureControl__block_invoke;
  v4[3] = &unk_1E774C318;
  objc_copyWeak(&v5, &location);
  [v3 widget:self performAfterUnlockingDeviceIfNecessary:v4 failurehandler:0];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __47__PXUIMapWidget_userDidSelectDisclosureControl__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _showPlacesWithContentMode:0];
}

- (void)_openMapsAtCoordinate:(CLLocationCoordinate2D)a3 title:(id)a4
{
  longitude = a3.longitude;
  latitude = a3.latitude;
  v7 = MEMORY[0x1E695DF00];
  v8 = a4;
  v9 = [v7 now];
  v10 = [PXProgressIndicatorAlertController beginShowingModalProgressWithConfiguration:&__block_literal_global_495];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __45__PXUIMapWidget__openMapsAtCoordinate_title___block_invoke_2;
  v13[3] = &unk_1E7747D28;
  v14 = v10;
  v15 = v9;
  v16 = self;
  v11 = v9;
  v12 = v10;
  [PXPlacesMapController launchMapsAtCoordinate:v8 withTitle:v13 completionHandler:latitude, longitude];
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

- (void)userDidSelectFooter:(id)a3
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

    v8 = [(PXUIMapWidget *)self _firstAsset];
    if ([(PXUIMapWidget *)self showAddressLink]&& v8)
    {
      [v8 coordinate];
      latitude = v20.latitude;
      longitude = v20.longitude;
      if (CLLocationCoordinate2DIsValid(v20))
      {
        v11 = [(PXUIMapWidget *)self _localizedGeoDescriptionForAsset:v8];
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
  v3 = [(PXUIMapWidget *)self spec];
  v4 = [v3 userInterfaceIdiom];

  if (v4 == 3)
  {
    [(PXUIMapWidget *)self footerHeight];
    v6 = v5 + 400.0;
  }

  else
  {
    v7 = [(PXUIMapWidget *)self _hasLocation];
    v6 = 42.0;
    if (v7)
    {
      v6 = 171.0;
    }
  }

  [(PXUIMapWidget *)self setHeight:v6];
}

- (BOOL)_requiresDetailedAddressFooterString
{
  v2 = [MEMORY[0x1E695DF58] currentLocale];
  v3 = [v2 countryCode];

  LOBYTE(v2) = [v3 isEqualToString:@"CN"];
  return v2;
}

- (id)_localizedGeoDescriptionForAsset:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    [v4 fetchPropertySetsIfNeeded];
    if ([(PXUIMapWidget *)self _requiresDetailedAddressFooterString])
    {
      v6 = [v5 px_singleLineMailingAddress];
    }

    else
    {
      v10 = 0;
      v7 = [v5 photosOneUpProperties];
      v6 = [v7 localizedGeoDescriptionIsHome:&v10];

      if (v10 == 1)
      {
        v8 = PXLocalizedStringFromTable(@"PXPlacesWidgetHomeTitle", @"PhotosUICore");

        v6 = v8;
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
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
  v3 = [(PXUIMapWidget *)self footerButton];
  v4 = [(PXUIMapWidget *)self adjustButton];
  if ([(PXUIMapWidget *)self _hasLocation])
  {
    v5 = [MEMORY[0x1E69DC740] plainButtonConfiguration];
    v6 = MEMORY[0x1E69DCAD8];
    v7 = [(PXUIMapWidget *)self footerFont];
    v8 = [v6 configurationWithFont:v7];

    v9 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"chevron.forward" withConfiguration:v8];
    [v5 setImage:v9];
    [v5 setImagePlacement:8];
    [v5 setImagePadding:4.0];
    [v5 setTitleLineBreakMode:5];
    v10 = [(PXUIMapWidget *)self _prefersVisionOSInfoPanelLayout];
    v11 = 10.0;
    v12 = 10.0;
    v13 = 10.0;
    v14 = 10.0;
    if (!v10)
    {
      v11 = *MEMORY[0x1E69DC5C0];
      v12 = *(MEMORY[0x1E69DC5C0] + 8);
      v13 = *(MEMORY[0x1E69DC5C0] + 16);
      v14 = *(MEMORY[0x1E69DC5C0] + 24);
    }

    [v5 setContentInsets:{v11, v12, v13, v14}];
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __36__PXUIMapWidget__updateFooterButton__block_invoke;
    v38[3] = &unk_1E773DA10;
    v38[4] = self;
    v39 = v10;
    [v5 setTitleTextAttributesTransformer:v38];
    if (v10)
    {
      v15 = [v3 layer];
      [v15 setCornerRadius:18.0];

      v16 = [v3 layer];
      [v16 setMasksToBounds:1];
    }

    else
    {
      [v5 setImageColorTransformer:&__block_literal_global_477];
      v16 = [MEMORY[0x1E69DC888] clearColor];
      v17 = [v5 background];
      [v17 setBackgroundColor:v16];
    }

    [v3 setConfiguration:v5];
  }

  else
  {
    v5 = [v3 configuration];
    [v5 setImage:0];
    [v3 setConfiguration:v5];
  }

  v18 = [v3 titleLabel];
  v19 = [v18 font];
  v20 = [(PXUIMapWidget *)self footerFont];

  v21 = v19 != v20;
  if (v19 != v20)
  {
    v22 = [(PXUIMapWidget *)self footerFont];
    v23 = [v3 titleLabel];
    [v23 setFont:v22];
  }

  v24 = [v4 titleLabel];
  v25 = [v24 font];
  v26 = [(PXUIMapWidget *)self footerFont];

  if (v25 != v26)
  {
    v27 = [(PXUIMapWidget *)self footerFont];
    v28 = [v4 titleLabel];
    [v28 setFont:v27];

    v21 = 1;
  }

  if ([(PXUIMapWidget *)self showAddressLink])
  {
    v29 = [(PXUIMapWidget *)self cachedFooterTitle];
  }

  else
  {
    v29 = 0;
  }

  v30 = [v3 titleForState:0];
  v31 = v30;
  if (v29 == v30)
  {

LABEL_23:
    if (!v21)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  v32 = [v29 isEqualToString:v30];

  if (v32)
  {
    goto LABEL_23;
  }

  [v3 setTitle:v29 forState:0];
  [v3 setAccessibilityValue:v29];
  [v3 alpha];
  if (v33 == 0.0 && v29)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __36__PXUIMapWidget__updateFooterButton__block_invoke_2;
    aBlock[3] = &unk_1E774C648;
    v34 = v3;
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
    v4 = [(PXUIMapWidget *)self _pasteLocationAction];
    [v3 addObject:v4];
  }

  if ([(PXUIMapWidget *)self _hasLocation])
  {
    v5 = [(PXUIMapWidget *)self _copyLocationAction];
    [v3 addObject:v5];
  }

  return v3;
}

- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4
{
  if ([(PXUIMapWidget *)self _prefersVisionOSInfoPanelLayout:a3])
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
  v3 = [(PXUIMapWidget *)self _hasLocation];
  v4 = [(PXUIMapWidget *)self _containsLocationInPasteboard];
  v5 = +[PXPhotosDetailsSettings sharedInstance];
  v6 = [v5 mapWidgetAllowCopyPasteLocation];

  v7 = [(PXUIMapWidget *)self context];
  v8 = [v7 photosDataSource];
  v9 = [v8 containsMultipleAssets];

  if ((v3 || v4) && v6 && (v9 & 1) == 0)
  {
    v11 = [objc_alloc(MEMORY[0x1E69DC8E0]) initWithDelegate:self];
    v10 = [(PXUIMapWidget *)self _contentView];
    [v10 addInteraction:v11];
  }
}

- (void)_updateFooterWithTitle:(id)a3
{
  [(PXUIMapWidget *)self setCachedFooterTitle:a3];
  [(PXUIMapWidget *)self _updateFooterButton];

  [(PXUIMapWidget *)self _updateFooterHeight];
}

- (void)_handleReloadFooterTitle
{
  v35[1] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E6991F28] startSignpost];
  v4 = [(PXUIMapWidget *)self _firstAsset];
  [v4 fetchPropertySetsIfNeeded];
  v5 = [v4 photoLibrary];
  v6 = [v4 localIdentifier];
  v35[0] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:1];
  v29 = 0;
  v8 = [v5 requestAssetRevGeocodingForAssetLocalIdentifiers:v7 withError:&v29];
  v9 = v29;

  if ((v8 & 1) == 0)
  {
    logger = self->_logger;
    if (os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
    {
      v22 = logger;
      v23 = [v4 uuid];
      v24 = [v9 localizedDescription];
      *location = 138478083;
      *&location[4] = v23;
      v33 = 2114;
      v34 = v24;
      _os_log_error_impl(&dword_1A3C1C000, v22, OS_LOG_TYPE_ERROR, "PXUIMapWidget error requesting rev geocoding for assetuuid: %{private}@, error: %{public}@", location, 0x16u);
    }
  }

  v11 = [(PXUIMapWidget *)self _firstAsset];
  if (v11)
  {
    v25 = [(PXUIMapWidget *)self _localizedGeoDescriptionForAsset:v11];
    v12 = MEMORY[0x1E6991F28];
    v13 = v5;
    v14 = v9;
    v15 = *MEMORY[0x1E6991C98];
    v16 = *MEMORY[0x1E6991E18];
    v30[0] = *MEMORY[0x1E6991E40];
    v30[1] = v16;
    v31[0] = @"com.apple.photos.CPAnalytics.infoPanelRevGeoLookupDuration";
    v31[1] = v11;
    v30[2] = *MEMORY[0x1E6991E20];
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    v31[2] = v18;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:3];
    v20 = v15;
    v9 = v14;
    v5 = v13;
    [v12 endSignpost:v3 forEventName:v20 withPayload:v19];

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
      v3 = [(PXUIMapWidget *)self _reloadFooterQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __35__PXUIMapWidget__reloadFooterTitle__block_invoke;
      block[3] = &unk_1E774C318;
      objc_copyWeak(&v6, &location);
      dispatch_async(v3, block);

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
  v3 = [(PXUIMapWidget *)self showAddressLink];
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
    if (v3)
    {
      v5 = [(PXUIMapWidget *)self _contentView];
      [v5 frame];
      v7 = v6;

      v8 = [(PXUIMapWidget *)self footerButton];
      v9 = [v8 titleLabel];
      [v9 sizeThatFits:{v7, 0.0}];
      v11 = v10;

      v12 = [(PXUIMapWidget *)self spec];
      [v12 distanceBetweenMapViewAndAddressTop];
      v4 = v11 + v13;
    }
  }

  [(PXUIMapWidget *)self setFooterHeight:v4];
}

- (id)_firstAsset
{
  v2 = [(PXUIMapWidget *)self context];
  v3 = [v2 firstAsset];

  return v3;
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
  v3 = [(PXUIMapWidget *)self context];
  v4 = [v3 viewSourceOrigin];

  v5 = [(PXWidgetSpec *)self->_spec userInterfaceIdiom]== 3 || v4 == 1;
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
  v3 = [(PXUIMapWidget *)self _cachedLocalizedTitle];
  v4 = [(PXUIMapWidget *)self context];
  if ([v4 viewSourceOrigin] != 1)
  {

    goto LABEL_5;
  }

  v5 = [(PXUIMapWidget *)self infoPanelLayoutEnabled];

  if (!v5)
  {
LABEL_5:
    if (v3)
    {
      v7 = v3;
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
  v3 = [(PXUIMapWidget *)self _prefersVisionOSInfoPanelLayout];
  result = 0.0;
  if (v3)
  {
    v5 = [(PXUIMapWidget *)self spec];
    v6 = [v5 contentSizeCategory];

    [PXPhotosDetailsUIViewController dynamicTextScaleFactorForCategory:v6];
    v8 = v7;
    v9 = [(PXUIMapWidget *)self _hasLocation];
    result = v8 * 325.0;
    if (!v9)
    {
      return 0.0;
    }
  }

  return result;
}

- (double)preferredContentWidthForHorizontalLayoutWithAvailableWidth:(double)a3
{
  if (![(PXUIMapWidget *)self _hasLocation])
  {
    return 0.0;
  }

  [(PXUIMapWidget *)self _horizontalLayoutWidth];
  return result;
}

- (double)preferredContentHeightForWidth:(double)a3
{
  v4 = [(PXUIMapWidget *)self _prefersVisionOSInfoPanelLayout];
  v5 = [(PXUIMapWidget *)self spec];
  v6 = v5;
  if (v4)
  {
    v7 = [v5 contentSizeCategory];

    [PXPhotosDetailsUIViewController dynamicTextScaleFactorForCategory:v7];
    v9 = v8;
    v10 = [(PXUIMapWidget *)self _hasLocation];
    result = v9 * 171.0;
    if (!v10)
    {
      return 0.0;
    }
  }

  else
  {
    [v5 contentGuideInsets];
    v13 = v12;
    v15 = v14;

    return v15 + v13 + self->_height;
  }

  return result;
}

- (BOOL)_hasLocation
{
  v2 = [(PXUIMapWidget *)self context];
  v3 = [v2 photosDataSource];
  HasLocationForDataSource = PXPhotosDetailsContextHasLocationForDataSource(v3);

  return HasLocationForDataSource;
}

- (BOOL)hasContentForCurrentInput
{
  v3 = [(PXUIMapWidget *)self _firstAsset];
  v4 = [(PXUIMapWidget *)self infoPanelLayoutEnabled];
  v5 = [(PXUIMapWidget *)self context];
  v6 = [v5 viewSourceOrigin];

  v7 = [v3 canPerformEditOperation:3];
  v8 = [(PXUIMapWidget *)self widgetUnlockDelegate];
  v9 = [v8 widgetDeviceIsUnlocked:self];

  if (v9)
  {
    v10 = [(PXUIMapWidget *)self _hasLocation];
    if (v10 || !v4)
    {
      v11 = v10;
    }

    else
    {
      v11 = (v6 == 1) & v7;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)setSpec:(id)a3
{
  v5 = a3;
  if (self->_spec != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_spec, a3);
    [(PXUIMapWidget *)self _updateFooterHeight];
    [(PXUIMapWidget *)self _updateHeight];
    [(PXUIMapWidget *)self _updateContentViewFrame];
    v5 = v6;
  }
}

- (void)_layoutSubviews
{
  v3 = [(PXUIMapWidget *)self spec];
  [v3 contentGuideInsets];

  v4 = [(PXUIMapWidget *)self _hasLocation];
  if ([(PXUIMapWidget *)self _prefersVisionOSInfoPanelLayout]&& v4)
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
  v10 = [(PXUIMapWidget *)self spec];
  [v10 displayScale];

  v11 = [(PXUIMapWidget *)self _firstAsset];
  v12 = [v11 canPerformEditOperation:3];

  if (v4)
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

  v18 = [(PXUIMapWidget *)self _imageView];
  [v18 setFrame:{v17, v15, v16, v13}];

  v19 = [(PXUIMapWidget *)self _imageView];
  [v19 setHidden:!v4];

  v20 = [(PXUIMapWidget *)self adjustButton];
  [v20 setHidden:v14];

  v21 = [MEMORY[0x1E69DC668] sharedApplication];
  v22 = [v21 userInterfaceLayoutDirection];

  if (v4)
  {
    if (v22 == 1)
    {
      v23 = 2;
    }

    else
    {
      v23 = 1;
    }

    v24 = [(PXUIMapWidget *)self footerButton];
    [v24 setContentHorizontalAlignment:v23];

    v25 = [(PXUIMapWidget *)self footerButton];
    [v25 setContentVerticalAlignment:0];

    v26 = [(PXUIMapWidget *)self footerButton];
    [v26 setBackgroundColor:0];

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
    v27 = [(PXUIMapWidget *)self footerButton];
    [v27 setContentHorizontalAlignment:0];

    v28 = [(PXUIMapWidget *)self footerButton];
    [v28 setContentVerticalAlignment:0];

    v29 = [MEMORY[0x1E69DC888] quaternarySystemFillColor];
    v30 = [(PXUIMapWidget *)self footerButton];
    [v30 setBackgroundColor:v29];

    v31 = [(PXUIMapWidget *)self footerButton];
    v32 = [v31 layer];
    [v32 setCornerRadius:8.0];

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
  v33 = [(PXUIMapWidget *)self spec];
  [v33 distanceBetweenMapViewAndAddressTop];

  PXRectRoundToPixel();
}

- (void)_updateContentViewFrame
{
  v3 = [(PXUIMapWidget *)self spec];
  [v3 contentGuideInsets];

  width = self->_contentSize.width;
  height = self->_contentSize.height;
  if (![(PXUIMapWidget *)self _prefersVisionOSInfoPanelLayout])
  {
    PXEdgeInsetsInsetRect();
  }

  v6 = [(PXUIMapWidget *)self _contentView];
  [v6 setFrame:{0.0, 0.0, width, height}];

  [(PXUIMapWidget *)self _layoutSubviews];
}

- (int64_t)_fetchCountOfAssetsWithLocation
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = [(PXUIMapWidget *)self _fetchResultsForSections];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v19 objects:v24 count:16];
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
          objc_enumerationMutation(v2);
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

      v4 = [v2 countByEnumeratingWithState:&v19 objects:v24 count:16];
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
  v4 = [(PXUIMapWidget *)self context];
  v5 = [v4 photosDataSource];

  if ([v5 numberOfSections] >= 1)
  {
    v6 = 0;
    do
    {
      v7 = [v5 assetsInSection:v6];
      [v3 addObject:v7];

      ++v6;
    }

    while ([v5 numberOfSections] > v6);
  }

  v8 = [MEMORY[0x1E695DEC8] arrayWithArray:v3];

  return v8;
}

- (void)_handleContentSizeCategoryDidChange:(id)a3
{
  footerFont = self->_footerFont;
  self->_footerFont = 0;

  [(PXUIMapWidget *)self _updateFooterHeight];

  [(PXUIMapWidget *)self _updateFooterButton];
}

- (void)_setHasLoadedContentData:(BOOL)a3
{
  if (self->_hasLoadedContentData != a3)
  {
    self->_hasLoadedContentData = a3;
    v5 = [(PXUIMapWidget *)self widgetDelegate];
    [v5 widgetHasLoadedContentDataDidChange:self];
  }
}

- (void)unloadContentData
{
  self->_isLoaded = 0;
  v3 = [(PXPhotosDetailsContext *)self->_context photosDataSource];
  [v3 unregisterChangeObserver:self];
}

- (CGSize)_estimatedMapViewImageSize
{
  v3 = [(PXUIMapWidget *)self spec];
  [v3 contentGuideInsets];

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
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 addObserver:self selector:sel__handleContentSizeCategoryDidChange_ name:*MEMORY[0x1E69DDC48] object:0];

  if ([(PXUIMapWidget *)self _hasLocation])
  {
    [(PXUIMapWidget *)self _estimatedMapViewImageSize];
    v5 = v4;
    v7 = v6;
    v8 = [(PXUIMapWidget *)self _fetchResultsForSections];
    [(PXUIMapWidget *)self _fetchPlacesSnapshotUsingMapType:0 fetchResults:v8 imageSize:0 shouldFetchNearbyAssetCount:v5, v7];
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

  v7 = [(PXUIMapWidget *)self widgetUnlockDelegate];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __38__PXUIMapWidget__didTapAdjustLocation__block_invoke;
  v8[3] = &unk_1E774C648;
  v8[4] = self;
  [v7 widget:self performAfterUnlockingDeviceIfNecessary:v8 failurehandler:0];
}

- (void)_pasteLocationTapped
{
  v2 = [(PXUIMapWidget *)self _firstAsset];
  if (v2)
  {
    v3 = v2;
    PXAssignLocationFromPasteboardToAsset(v2);
    v2 = v3;
  }
}

- (BOOL)_containsLocationInPasteboard
{
  v2 = [(PXUIMapWidget *)self _firstAsset];
  v3 = v2;
  if (v2)
  {
    v4 = PXCanAssignLocationFromPasteboardToAsset(v2);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_copyLocationTapped
{
  v2 = [(PXUIMapWidget *)self _firstAsset];
  if (v2)
  {
    v3 = v2;
    PXCopyLocationFromAssetToPasteboard(v2);
    v2 = v3;
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

    v8 = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
    [(UIView *)self->__contentView setBackgroundColor:v8];

    v9 = [(PXUIMapWidget *)self widgetDelegate];
    v56 = [v9 widgetExtendedTraitCollection:self];

    [v56 displayScale];
    v11 = v10;
    v12 = objc_alloc_init(off_1E7721760);
    v13 = [(PXUIMapWidget *)self spec];
    v54 = [MEMORY[0x1E69DC888] systemBackgroundColor];
    [v12 setBackgroundColor:?];
    [v12 setDisplayScale:v11];
    v14 = [v56 userInterfaceIdiom];
    v15 = [(PXUIMapWidget *)self infoPanelLayoutEnabled];
    [(PXUIMapWidget *)self footerHeight];
    v17 = height - v16;
    v18 = objc_alloc_init(PXImageUIView);
    [(PXImageUIView *)v18 setFrame:0.0, 0.0, width, v17];
    v55 = v13;
    v19 = [v13 defaultPlacesPlaceholderColor];
    [(PXImageUIView *)v18 setBackgroundColor:v19];

    v20 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel__handleTapGestureRecognizer_];
    [(PXImageUIView *)v18 addGestureRecognizer:v20];

    [(PXImageUIView *)v18 setAutoresizingMask:18];
    [(PXImageUIView *)v18 setUserInteractionEnabled:1];
    [(PXImageUIView *)v18 setContentMode:2];
    [(PXImageUIView *)v18 setSpec:v12];
    [(PXImageUIView *)v18 setFloatingRotationEnabled:0];
    [(PXImageUIView *)v18 setFloatingViewEnabled:v14 == 3];
    if (v14 != 3)
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
    v25 = [v22 titleLabel];
    [v25 setLineBreakMode:5];
    [v25 setNumberOfLines:{-[PXUIMapWidget infoPanelLayoutEnabled](self, "infoPanelLayoutEnabled")}];
    [v25 setTextAlignment:4];
    if (v15)
    {
      [(PXUIMapWidget *)self _updateFooterContextMenu];
      v26 = [MEMORY[0x1E696AD88] defaultCenter];
      [v26 addObserver:self selector:sel__clipboardChanged_ name:*MEMORY[0x1E69DE270] object:0];

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
      v29 = [(UIView *)v28 contentView];
      [v29 addSubview:v22];

      v30 = [(PXUIMapWidget *)self _prefersVisionOSInfoPanelLayout];
      v31 = [MEMORY[0x1E69DC738] buttonWithType:1];
      if (v30)
      {
        v32 = [MEMORY[0x1E69DC740] borderlessButtonConfiguration];
        v33 = PXLocalizedStringFromTable(@"PXPlacesWidgetAdjustButtonTitle", @"PhotosUICore");
        [v32 setTitle:v33];

        [v32 setContentInsets:{8.0, 8.0, 8.0, 8.0}];
        v34 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.3];
        v35 = [v32 background];
        [v35 setBackgroundColor:v34];

        v36 = [v32 background];
        [v36 setCornerRadius:14.0];

        [(UIButton *)v31 setConfiguration:v32];
      }

      else
      {
        v32 = PXLocalizedStringFromTable(@"PXPlacesWidgetAdjustButtonTitle", @"PhotosUICore");
        [(UIButton *)v31 setTitle:v32 forState:0];
      }

      [(UIButton *)v31 addTarget:self action:sel__didTapAdjustLocation forControlEvents:64];
      v37 = PXLocalizedStringFromTable(@"PXPlacesWidgetAdjustButtonTitleAXHint", @"PhotosUICore");
      [(UIButton *)v31 setAccessibilityHint:v37];

      [(UIButton *)v31 setAccessibilityIdentifier:@"com.apple.photos.infoPanel.map.footer.adjust"];
      v38 = [(UIView *)v28 contentView];
      [v38 addSubview:v31];

      adjustButton = self->_adjustButton;
      self->_adjustButton = v31;
      v40 = v31;

      footerView = self->_footerView;
      self->_footerView = v28;
      v42 = v28;

      v43 = [(UIView *)self->__contentView layer];
      [v43 setCornerRadius:8.0];

      v44 = [(UIView *)self->__contentView layer];
      [v44 setMasksToBounds:1];

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
    v46 = [MEMORY[0x1E69DCEB0] px_mainScreen];
    [v46 bounds];
    v47 = [v45 initWithFrame:?];
    containerView = self->__containerView;
    self->__containerView = v47;

    [(UIView *)self->__containerView addSubview:self->__contentView];
    v49 = [_PXPlacesSnapshotKey alloc];
    [(PXUIMapWidget *)self _estimatedMapViewImageSize];
    v52 = -[_PXPlacesSnapshotKey initWithImageSize:userInterfaceStyle:](v49, "initWithImageSize:userInterfaceStyle:", [v56 userInterfaceStyle], v50, v51);
    if ([(PXUIMapWidget *)self _hasCachedSnapshotImageForKey:v52])
    {
      v53 = [(PXUIMapWidget *)self _fetchResultsForSections];
      [(PXUIMapWidget *)self _estimatedMapViewImageSize];
      [(PXUIMapWidget *)self _fetchPlacesSnapshotUsingMapType:0 fetchResults:v53 imageSize:0 shouldFetchNearbyAssetCount:?];
    }

    else
    {
      [(PXUIMapWidget *)self _showPlaceholder];
    }
  }
}

- (BOOL)infoPanelLayoutEnabled
{
  v3 = [(PXUIMapWidget *)self spec];
  v4 = [v3 userInterfaceIdiom];

  v5 = [(PXUIMapWidget *)self context];
  v6 = [v5 viewSourceOrigin];

  return v6 == 1 && v4 != 3;
}

- (void)setContentSize:(CGSize)a3
{
  if (self->_contentSize.width != a3.width || self->_contentSize.height != a3.height)
  {
    self->_contentSize = a3;
    if (self->__contentView)
    {
      [(PXUIMapWidget *)self _updateContentViewFrame];
      if ([(PXUIMapWidget *)self _hasLocation])
      {
        v9 = [(PXUIMapWidget *)self _fetchResultsForSections];
        v5 = [(PXUIMapWidget *)self _hasLocation]^ 1;
        v6 = [(PXUIMapWidget *)self _imageView];
        [v6 frame];
        [(PXUIMapWidget *)self _fetchPlacesSnapshotUsingMapType:v5 fetchResults:v9 imageSize:0 shouldFetchNearbyAssetCount:v7, v8];
      }
    }
  }
}

- (void)setContext:(id)a3
{
  v4 = a3;
  v5 = [(PXPhotosDetailsContext *)self->_context photosDataSource];
  [v5 unregisterChangeObserver:self];

  v7 = [(PXPhotosDetailsContext *)v4 photosDataSource];
  [v7 registerChangeObserver:self];
  context = self->_context;
  self->_context = v4;

  if (self->_isLoaded)
  {
    [(PXUIMapWidget *)self _reloadFooterTitle];
  }
}

- (void)setShowAddressLink:(BOOL)a3
{
  if (self->_showAddressLink != a3)
  {
    self->_showAddressLink = a3;
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