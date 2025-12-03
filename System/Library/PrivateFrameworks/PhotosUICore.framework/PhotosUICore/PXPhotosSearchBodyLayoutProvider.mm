@interface PXPhotosSearchBodyLayoutProvider
- (PXPhotosSearchBodyLayoutProvider)initWithCollectionSectionProvider:(id)provider;
- (PXPhotosSearchBodyLayoutProvider)initWithPhotoLibrary:(id)library;
- (PXPhotosSectionBodyLayoutProviderInvalidationDelegate)invalidationDelegate;
- (PXPhotosSelectionContainer)collectionsSelection;
- (UIViewController)hostViewController;
- (id)createSectionBodyLayoutForSectionedLayout:(id)layout dataSource:(id)source sectionIndexPath:(PXSimpleIndexPath *)path spec:(id)spec outWantsDecoration:(BOOL *)decoration;
- (id)viewModelForPinchLocation:(CGPoint)location inCoordinateSpace:(id)space;
- (int64_t)_numberOfColumnsWithSpec:(id)spec;
- (void)clearAssetSelections;
- (void)configureSectionBodyLayout:(id)layout inAssetSectionLayout:(id)sectionLayout forSectionedLayout:(id)sectionedLayout;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)setViewModel:(id)model;
@end

@implementation PXPhotosSearchBodyLayoutProvider

- (PXPhotosSelectionContainer)collectionsSelection
{
  WeakRetained = objc_loadWeakRetained(&self->_collectionsSelection);

  return WeakRetained;
}

- (UIViewController)hostViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_hostViewController);

  return WeakRetained;
}

- (PXPhotosSectionBodyLayoutProviderInvalidationDelegate)invalidationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->invalidationDelegate);

  return WeakRetained;
}

- (id)viewModelForPinchLocation:(CGPoint)location inCoordinateSpace:(id)space
{
  allResultsLayout = self->_allResultsLayout;
  spaceCopy = space;
  [(PXZoomablePhotosLayout *)allResultsLayout rootLayout];
  [objc_claimAutoreleasedReturnValue() coordinateSpace];
  objc_claimAutoreleasedReturnValue();
  PXPointConvertFromCoordinateSpaceToCoordinateSpace();
}

- (void)clearAssetSelections
{
  viewModel = [(PXPhotosSearchBodyLayoutProvider *)self viewModel];
  selectionManager = [viewModel selectionManager];
  [selectionManager performChanges:&__block_literal_global_444];
}

- (void)configureSectionBodyLayout:(id)layout inAssetSectionLayout:(id)sectionLayout forSectionedLayout:(id)sectionedLayout
{
  layoutCopy = layout;
  sectionLayoutCopy = sectionLayout;
  sectionedLayoutCopy = sectionedLayout;
  dataSource = [sectionLayoutCopy dataSource];
  if (sectionLayoutCopy)
  {
    [sectionLayoutCopy sectionIndexPath];
  }

  else
  {
    memset(v56, 0, sizeof(v56));
  }

  v13 = [dataSource assetCollectionAtSectionIndexPath:v56];

  if (v13)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_6;
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v54 = objc_opt_class();
    v53 = NSStringFromClass(v54);
    px_descriptionForAssertionMessage = [v13 px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosSearchBodyLayoutProvider.m" lineNumber:286 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"[assetsSectionLayout.dataSource assetCollectionAtSectionIndexPath:assetsSectionLayout.sectionIndexPath]", v53, px_descriptionForAssertionMessage}];
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v52 = objc_opt_class();
    v53 = NSStringFromClass(v52);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosSearchBodyLayoutProvider.m" lineNumber:286 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"[assetsSectionLayout.dataSource assetCollectionAtSectionIndexPath:assetsSectionLayout.sectionIndexPath]", v53}];
  }

LABEL_6:
  [sectionLayoutCopy setRemovesContentLayoutWhenEmpty:1];
  [sectionLayoutCopy setRemovesHeaderLayoutWhenEmpty:1];
  transientIdentifier = [v13 transientIdentifier];
  v15 = [transientIdentifier isEqualToString:@"SearchCollectionsSection"];

  if (v15)
  {
    goto LABEL_28;
  }

  if (!MEMORY[0x1A590D320]() || ([v13 transientIdentifier], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "isEqualToString:", @"SearchAllResultsSection"), v16, !v17))
  {
    [layoutCopy setContentSource:sectionLayoutCopy];
    viewModel = [sectionedLayoutCopy viewModel];
    [viewModel aspectFitContent];

    v26 = layoutCopy;
    v27 = +[PXLemonadeSettings sharedInstance];
    showSearchDebugBadges = [v27 showSearchDebugBadges];

    if (showSearchDebugBadges)
    {
      decoratingLayout = [v26 decoratingLayout];
      [decoratingLayout addActiveDecorations:&unk_1F1910420];
    }

    [v26 setDelegate:sectionLayoutCopy];
    spec = [sectionLayoutCopy spec];
    [v26 setNumberOfColumns:{-[PXPhotosSearchBodyLayoutProvider _numberOfColumnsWithSpec:](self, "_numberOfColumnsWithSpec:", spec)}];

    currentSpecOrientation = self->_currentSpecOrientation;
    spec2 = [sectionLayoutCopy spec];
    if (currentSpecOrientation == [spec2 layoutOrientation])
    {
      currentSpecSizeClass = self->_currentSpecSizeClass;
      spec3 = [sectionLayoutCopy spec];
      selfCopy = self;
      sizeClass = [spec3 sizeClass];

      v37 = currentSpecSizeClass == sizeClass;
      self = selfCopy;
      if (v37)
      {
        goto LABEL_21;
      }
    }

    else
    {
    }

    spec4 = [sectionLayoutCopy spec];
    self->_currentSpecOrientation = [spec4 layoutOrientation];

    spec5 = [sectionLayoutCopy spec];
    self->_currentSpecSizeClass = [spec5 sizeClass];

    layoutInformationChangedCallback = [(PXPhotosSearchBodyLayoutProvider *)self layoutInformationChangedCallback];

    if (layoutInformationChangedCallback)
    {
      layoutInformationChangedCallback2 = [(PXPhotosSearchBodyLayoutProvider *)self layoutInformationChangedCallback];
      layoutInformationChangedCallback2[2]();
    }

LABEL_21:
    specManager = [(PXZoomablePhotosViewModel *)self->_zoomableViewModel specManager];
    spec6 = [specManager spec];

    aspectFitContent = [(PXPhotosViewModel *)self->_viewModel aspectFitContent];
    if (aspectFitContent)
    {
      [spec6 aspectFitInteritemSpacing];
      [v26 setInterItemSpacing:{v45, v45}];
      [spec6 aspectFitItemCornerRadius];
    }

    else
    {
      [spec6 interitemSpacing];
      [v26 setInterItemSpacing:{v50, v50}];
      [spec6 itemCornerRadius];
    }

    *&v46 = v46;
    LODWORD(v47) = LODWORD(v46);
    LODWORD(v48) = LODWORD(v46);
    LODWORD(v49) = LODWORD(v46);
    [v26 setItemCornerRadius:{v46, v47, v48, v49}];
    if (aspectFitContent)
    {
      [spec6 aspectFitEdgeMargins];
    }

    else
    {
      [spec6 squareEdgeMargins];
    }

    [sectionLayoutCopy safeAreaInsets];
    PXEdgeInsetsAdd();
  }

  v18 = layoutCopy;
  v19 = +[PXLemonadeSettings sharedInstance];
  showSearchDebugBadges2 = [v19 showSearchDebugBadges];

  if (showSearchDebugBadges2)
  {
    [(PXZoomablePhotosLayout *)self->_allResultsLayout addDecorationsToAllLayers:&unk_1F1910408];
  }

  assetDecorationSource = [v18 assetDecorationSource];
  assetDecorationSource2 = [sectionLayoutCopy assetDecorationSource];
  loadingStatusManager = [sectionLayoutCopy loadingStatusManager];
  [assetDecorationSource setLoadingStatusManager:loadingStatusManager];

  [assetDecorationSource setHidesInteractiveFavoriteBadges:{objc_msgSend(assetDecorationSource2, "hidesInteractiveFavoriteBadges")}];
  [assetDecorationSource setDecorationViewClass:{objc_msgSend(assetDecorationSource2, "decorationViewClass")}];
  decorationDataSource = [assetDecorationSource2 decorationDataSource];
  [assetDecorationSource setDecorationDataSource:decorationDataSource];

LABEL_28:
}

- (int64_t)_numberOfColumnsWithSpec:(id)spec
{
  specCopy = spec;
  sizeClass = [specCopy sizeClass];
  layoutOrientation = [specCopy layoutOrientation];

  if (layoutOrientation == 2 || sizeClass == 2)
  {
    return 5;
  }

  else
  {
    return 3;
  }
}

- (id)createSectionBodyLayoutForSectionedLayout:(id)layout dataSource:(id)source sectionIndexPath:(PXSimpleIndexPath *)path spec:(id)spec outWantsDecoration:(BOOL *)decoration
{
  sourceCopy = source;
  v12 = *&path->item;
  v29[0] = *&path->dataSourceIdentifier;
  v29[1] = v12;
  v13 = [sourceCopy assetCollectionAtSectionIndexPath:v29];
  if (v13)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v27 = objc_opt_class();
    v26 = NSStringFromClass(v27);
    px_descriptionForAssertionMessage = [v13 px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosSearchBodyLayoutProvider.m" lineNumber:233 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"[dataSource assetCollectionAtSectionIndexPath:sectionIndexPath]", v26, px_descriptionForAssertionMessage}];
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v25 = objc_opt_class();
    v26 = NSStringFromClass(v25);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosSearchBodyLayoutProvider.m" lineNumber:233 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"[dataSource assetCollectionAtSectionIndexPath:sectionIndexPath]", v26}];
  }

LABEL_3:
  transientIdentifier = [v13 transientIdentifier];
  v15 = [transientIdentifier isEqualToString:@"SearchCollectionsSection"];

  if (v15)
  {
    collectionSectionProvider = [(PXPhotosSearchBodyLayoutProvider *)self collectionSectionProvider];
    hostViewController = [(PXPhotosSearchBodyLayoutProvider *)self hostViewController];
    containerInfo = [(_PXPhotosSearchBodyCollectionSectionLayout *)self->_collectionSectionLayout containerInfo];
    v19 = [PXPhotosSearchResultsCollectionsViewFactory createViewWithCollectionSectionProvider:collectionSectionProvider hostViewController:hostViewController containerInfo:containerInfo viewDelegate:self->_collectionSectionLayout selectionDelegate:self];

    [(PXGSingleViewLayout *)self->_collectionSectionLayout setContentView:v19];
    [(PXPhotosSearchBodyLayoutProvider *)self setCollectionsSelection:v19];
    v20 = self->_collectionSectionLayout;
  }

  else
  {
    if (MEMORY[0x1A590D320]())
    {
      transientIdentifier2 = [v13 transientIdentifier];
      v22 = [transientIdentifier2 isEqualToString:@"SearchAllResultsSection"];

      if (v22)
      {
        *decoration = 0;
        v20 = self->_allResultsLayout;
        goto LABEL_10;
      }
    }

    v20 = objc_alloc_init(off_1E7721600);
    [(_PXPhotosSearchBodyCollectionSectionLayout *)v20 setMediaKind:2];
    [(_PXPhotosSearchBodyCollectionSectionLayout *)v20 setPresentationType:0];
    [(_PXPhotosSearchBodyCollectionSectionLayout *)v20 setLazy:1];
    -[_PXPhotosSearchBodyCollectionSectionLayout setNumberOfItems:](v20, "setNumberOfItems:", [sourceCopy numberOfItemsInSection:path->section]);
    v19 = [[off_1E7721638 alloc] initWithStateHandler:&__block_literal_global_428];
    [(_PXPhotosSearchBodyCollectionSectionLayout *)v20 setSpriteModifier:v19];
  }

LABEL_10:

  return v20;
}

void __130__PXPhotosSearchBodyLayoutProvider_createSectionBodyLayoutForSectionedLayout_dataSource_sectionIndexPath_spec_outWantsDecoration___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4)
{
  v4 = *a4;
  if (v4)
  {
    v5 = (v4 + 1) & 0x1FFFFFFFELL;
    v6 = vdupq_n_s64(v4 - 1);
    v7 = xmmword_1A5301350;
    v8 = (*(a4 + 2) + 48);
    v9 = vdupq_n_s64(2uLL);
    do
    {
      v10 = vmovn_s64(vcgeq_u64(v6, v7));
      if (v10.i8[0])
      {
        *(v8 - 4) = 0x4069000000000000;
      }

      if (v10.i8[4])
      {
        *v8 = 0x4069000000000000;
      }

      v7 = vaddq_s64(v7, v9);
      v8 += 8;
      v5 -= 2;
    }

    while (v5);
  }
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  observableCopy = observable;
  if (PXSelectionManagerObservationContext_66201 != context)
  {
    if (PXZoomObservationContext != context)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosSearchBodyLayoutProvider.m" lineNumber:228 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    isUpdatingPhotosViewModel = self->_isUpdatingPhotosViewModel;
    self->_isUpdatingPhotosViewModel = 1;
    viewModel = [(PXPhotosSearchBodyLayoutProvider *)self viewModel];
    zoomableViewModel = [(PXPhotosSearchBodyLayoutProvider *)self zoomableViewModel];
    [off_1E77219B8 updatePhotosViewModel:viewModel fromZoomablePhotosViewModel:zoomableViewModel changeDescriptor:change];

    self->_isUpdatingPhotosViewModel = isUpdatingPhotosViewModel;
    if ((change & 0x80) != 0)
    {
      self->_userChangedZoom = 1;
    }

    goto LABEL_27;
  }

  if ((change & 0x10000) != 0)
  {
    viewModel2 = [(PXPhotosSearchBodyLayoutProvider *)self viewModel];
    if ([viewModel2 shouldAnimateZooming])
    {

      goto LABEL_9;
    }

    viewModel3 = [(PXPhotosSearchBodyLayoutProvider *)self viewModel];
    isInteractiveZooming = [viewModel3 isInteractiveZooming];

    if (isInteractiveZooming)
    {
LABEL_9:
      superlayout = [(PXZoomablePhotosLayout *)self->_allResultsLayout superlayout];
      v16Superlayout = [superlayout superlayout];

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && [v16Superlayout numberOfSublayouts] >= 1)
      {
        createAnimation = [v16Superlayout createAnimation];
        [createAnimation setDuration:0.3];
        [createAnimation setScope:2];
        if ([v16Superlayout numberOfSublayouts] >= 2)
        {
          v19 = 0;
          do
          {
            v20 = [v16Superlayout sublayoutAtIndex:v19 loadIfNeeded:0];
            createAnimation2 = [v20 createAnimation];
            [createAnimation2 setDuration:0.3];
            [createAnimation2 setScope:1];

            ++v19;
          }

          while (v19 < [v16Superlayout numberOfSublayouts] - 1);
        }
      }
    }
  }

  if (!self->_isUpdatingPhotosViewModel)
  {
    if ((change & 2) != 0)
    {
      viewModel4 = [(PXPhotosSearchBodyLayoutProvider *)self viewModel];
      selectionSnapshot = [viewModel4 selectionSnapshot];
      isAnyItemSelected = [selectionSnapshot isAnyItemSelected];

      if (isAnyItemSelected)
      {
        collectionsSelection = [(PXPhotosSearchBodyLayoutProvider *)self collectionsSelection];
        [collectionsSelection clearPhotosSelection];
      }

      zoomableViewModel = self->_zoomableViewModel;
      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = __65__PXPhotosSearchBodyLayoutProvider_observable_didChange_context___block_invoke;
      v36[3] = &unk_1E7736F60;
      v36[4] = self;
      [(PXZoomablePhotosViewModel *)zoomableViewModel performChanges:v36];
    }

    if ((change & 0x10000) != 0)
    {
      v27 = 0;
      self->_userChangedZoom = 1;
    }

    else if (self->_userChangedZoom)
    {
      v27 = 0;
    }

    else
    {
      specManager = [(PXZoomablePhotosViewModel *)self->_zoomableViewModel specManager];
      spec = [specManager spec];

      v30 = [(PXPhotosSearchBodyLayoutProvider *)self _numberOfColumnsWithSpec:spec];
      v31 = MEMORY[0x1E696AD98];
      supportedColumns = [spec supportedColumns];
      v27 = [v31 numberWithInteger:{objc_msgSend(spec, "bestColumnIndexForPreferredNumberOfColumns:allowedColumns:", v30, supportedColumns)}];
    }

    [(PXZoomablePhotosViewModel *)self->_zoomableViewModel unregisterChangeObserver:self context:PXZoomObservationContext];
    zoomableViewModel2 = [(PXPhotosSearchBodyLayoutProvider *)self zoomableViewModel];
    viewModel5 = [(PXPhotosSearchBodyLayoutProvider *)self viewModel];
    [off_1E77219B8 updateZoomablePhotosViewModel:zoomableViewModel2 fromPhotosViewModel:viewModel5 changeDescriptor:change overrideZoomColumn:v27];

    [(PXZoomablePhotosViewModel *)self->_zoomableViewModel registerChangeObserver:self context:PXZoomObservationContext];
  }

LABEL_27:
}

void __65__PXPhotosSearchBodyLayoutProvider_observable_didChange_context___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 viewModel];
  [v3 setIsInSelectMode:{objc_msgSend(v4, "isInSelectMode")}];
}

- (void)setViewModel:(id)model
{
  modelCopy = model;
  viewModel = self->_viewModel;
  if (viewModel != modelCopy)
  {
    v37 = modelCopy;
    [(PXPhotosViewModel *)viewModel unregisterChangeObserver:self context:PXSelectionManagerObservationContext_66201];
    objc_storeStrong(&self->_viewModel, model);
    [(PXPhotosViewModel *)self->_viewModel performChanges:&__block_literal_global_66208];
    [(PXPhotosViewModel *)self->_viewModel registerChangeObserver:self context:PXSelectionManagerObservationContext_66201];
    v7 = [off_1E77219A0 alloc];
    specManager = [(PXPhotosViewModel *)v37 specManager];
    extendedTraitCollection = [specManager extendedTraitCollection];
    v10 = [v7 initWithExtendedTraitCollection:extendedTraitCollection options:4];

    if (([(PXPhotosViewModel *)v37 allowsUserDefaults]& 1) != 0)
    {
      standardUserDefaults = [off_1E7721948 standardUserDefaults];
      searchGridsUserDefaults = [standardUserDefaults searchGridsUserDefaults];
      [v10 setUserDefaults:searchGridsUserDefaults];
    }

    else
    {
      [v10 setUserDefaults:0];
    }

    specManager2 = [(PXPhotosViewModel *)v37 specManager];
    availableThumbnailSizes = [specManager2 availableThumbnailSizes];
    [v10 setAvailableThumbnailSizes:availableThumbnailSizes];

    [v10 setGridStyle:2];
    [v10 setPreferredUserInterfaceStyle:{-[PXPhotosViewModel preferredUserInterfaceStyle](v37, "preferredUserInterfaceStyle")}];
    [(PXPhotosViewModel *)v37 itemAspectRatio];
    [v10 setItemAspectRatio:?];
    preferredAssetCropDelegate = [(PXPhotosViewModel *)v37 preferredAssetCropDelegate];
    [v10 setForceSaliency:preferredAssetCropDelegate != 0];

    [v10 setOverrideDefaultNumberOfColumns:{-[PXPhotosViewModel overrideDefaultNumberOfColumns](v37, "overrideDefaultNumberOfColumns")}];
    dataSourceManager = [(PXPhotosViewModel *)v37 dataSourceManager];
    dataSource = [dataSourceManager dataSource];
    v35 = [dataSource numberOfSections] - 1;

    v17 = [off_1E77219B0 alloc];
    selectionManager = [(PXPhotosViewModel *)v37 selectionManager];
    mediaProvider = [(PXPhotosViewModel *)v37 mediaProvider];
    loadingStatusManager = [(PXPhotosViewModel *)v37 loadingStatusManager];
    badgesModifier = [(PXPhotosViewModel *)v37 badgesModifier];
    preferredAssetCropDelegate2 = [(PXPhotosViewModel *)v37 preferredAssetCropDelegate];
    preferredColumnCountsDelegate = [(PXPhotosViewModel *)v37 preferredColumnCountsDelegate];
    inlinePlaybackController = [(PXPhotosViewModel *)v37 inlinePlaybackController];
    LOBYTE(v34) = 0;
    v25 = [v17 initWithDataSourceManager:dataSourceManager selectionManager:selectionManager mediaProvider:mediaProvider specManager:v10 loadingStatusManager:loadingStatusManager badgesModifier:badgesModifier preferredAssetCropDelegate:preferredAssetCropDelegate2 preferredColumnCountsDelegate:preferredColumnCountsDelegate inlinePlaybackController:inlinePlaybackController sectionIndex:v35 headersEnabled:v34];

    [(PXZoomablePhotosViewModel *)self->_zoomableViewModel unregisterChangeObserver:self context:PXZoomObservationContext];
    zoomableViewModel = self->_zoomableViewModel;
    self->_zoomableViewModel = v25;
    v27 = v25;

    [(PXPhotosViewModel *)self->_viewModel setZoomablePhotosViewModel:v27];
    [(PXZoomablePhotosViewModel *)self->_zoomableViewModel registerChangeObserver:self context:PXZoomObservationContext];
    v28 = [[off_1E7721990 alloc] initWithViewModelProvider:self];
    zoomInteraction = self->_zoomInteraction;
    self->_zoomInteraction = v28;

    v30 = objc_alloc_init(_PXPhotosSearchBodyCollectionSectionLayout);
    collectionSectionLayout = self->_collectionSectionLayout;
    self->_collectionSectionLayout = v30;

    v32 = [[off_1E7721998 alloc] initWithViewModel:self->_zoomableViewModel];
    allResultsLayout = self->_allResultsLayout;
    self->_allResultsLayout = v32;

    [(PXZoomablePhotosLayout *)self->_allResultsLayout setPreventFillingTopAreaInsets:1];
    self->_userChangedZoom = 0;
    *&self->_currentSpecSizeClass = vdupq_n_s64(2uLL);

    modelCopy = v37;
  }
}

- (PXPhotosSearchBodyLayoutProvider)initWithPhotoLibrary:(id)library
{
  libraryCopy = library;
  v9.receiver = self;
  v9.super_class = PXPhotosSearchBodyLayoutProvider;
  v5 = [(PXPhotosSearchBodyLayoutProvider *)&v9 init];
  if (v5)
  {
    v6 = [[PXPhotosSearchCollectionSectionProvider alloc] initWithPhotoLibrary:libraryCopy];
    collectionSectionProvider = v5->_collectionSectionProvider;
    v5->_collectionSectionProvider = v6;
  }

  return v5;
}

- (PXPhotosSearchBodyLayoutProvider)initWithCollectionSectionProvider:(id)provider
{
  providerCopy = provider;
  v9.receiver = self;
  v9.super_class = PXPhotosSearchBodyLayoutProvider;
  v6 = [(PXPhotosSearchBodyLayoutProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_collectionSectionProvider, provider);
  }

  return v7;
}

@end