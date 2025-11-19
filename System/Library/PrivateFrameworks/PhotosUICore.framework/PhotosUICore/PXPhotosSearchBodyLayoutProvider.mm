@interface PXPhotosSearchBodyLayoutProvider
- (PXPhotosSearchBodyLayoutProvider)initWithCollectionSectionProvider:(id)a3;
- (PXPhotosSearchBodyLayoutProvider)initWithPhotoLibrary:(id)a3;
- (PXPhotosSectionBodyLayoutProviderInvalidationDelegate)invalidationDelegate;
- (PXPhotosSelectionContainer)collectionsSelection;
- (UIViewController)hostViewController;
- (id)createSectionBodyLayoutForSectionedLayout:(id)a3 dataSource:(id)a4 sectionIndexPath:(PXSimpleIndexPath *)a5 spec:(id)a6 outWantsDecoration:(BOOL *)a7;
- (id)viewModelForPinchLocation:(CGPoint)a3 inCoordinateSpace:(id)a4;
- (int64_t)_numberOfColumnsWithSpec:(id)a3;
- (void)clearAssetSelections;
- (void)configureSectionBodyLayout:(id)a3 inAssetSectionLayout:(id)a4 forSectionedLayout:(id)a5;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)setViewModel:(id)a3;
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

- (id)viewModelForPinchLocation:(CGPoint)a3 inCoordinateSpace:(id)a4
{
  allResultsLayout = self->_allResultsLayout;
  v5 = a4;
  [(PXZoomablePhotosLayout *)allResultsLayout rootLayout];
  [objc_claimAutoreleasedReturnValue() coordinateSpace];
  objc_claimAutoreleasedReturnValue();
  PXPointConvertFromCoordinateSpaceToCoordinateSpace();
}

- (void)clearAssetSelections
{
  v3 = [(PXPhotosSearchBodyLayoutProvider *)self viewModel];
  v2 = [v3 selectionManager];
  [v2 performChanges:&__block_literal_global_444];
}

- (void)configureSectionBodyLayout:(id)a3 inAssetSectionLayout:(id)a4 forSectionedLayout:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [v10 dataSource];
  if (v10)
  {
    [v10 sectionIndexPath];
  }

  else
  {
    memset(v56, 0, sizeof(v56));
  }

  v13 = [v12 assetCollectionAtSectionIndexPath:v56];

  if (v13)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_6;
    }

    v51 = [MEMORY[0x1E696AAA8] currentHandler];
    v54 = objc_opt_class();
    v53 = NSStringFromClass(v54);
    v55 = [v13 px_descriptionForAssertionMessage];
    [v51 handleFailureInMethod:a2 object:self file:@"PXPhotosSearchBodyLayoutProvider.m" lineNumber:286 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"[assetsSectionLayout.dataSource assetCollectionAtSectionIndexPath:assetsSectionLayout.sectionIndexPath]", v53, v55}];
  }

  else
  {
    v51 = [MEMORY[0x1E696AAA8] currentHandler];
    v52 = objc_opt_class();
    v53 = NSStringFromClass(v52);
    [v51 handleFailureInMethod:a2 object:self file:@"PXPhotosSearchBodyLayoutProvider.m" lineNumber:286 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"[assetsSectionLayout.dataSource assetCollectionAtSectionIndexPath:assetsSectionLayout.sectionIndexPath]", v53}];
  }

LABEL_6:
  [v10 setRemovesContentLayoutWhenEmpty:1];
  [v10 setRemovesHeaderLayoutWhenEmpty:1];
  v14 = [v13 transientIdentifier];
  v15 = [v14 isEqualToString:@"SearchCollectionsSection"];

  if (v15)
  {
    goto LABEL_28;
  }

  if (!MEMORY[0x1A590D320]() || ([v13 transientIdentifier], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "isEqualToString:", @"SearchAllResultsSection"), v16, !v17))
  {
    [v9 setContentSource:v10];
    v25 = [v11 viewModel];
    [v25 aspectFitContent];

    v26 = v9;
    v27 = +[PXLemonadeSettings sharedInstance];
    v28 = [v27 showSearchDebugBadges];

    if (v28)
    {
      v29 = [v26 decoratingLayout];
      [v29 addActiveDecorations:&unk_1F1910420];
    }

    [v26 setDelegate:v10];
    v30 = [v10 spec];
    [v26 setNumberOfColumns:{-[PXPhotosSearchBodyLayoutProvider _numberOfColumnsWithSpec:](self, "_numberOfColumnsWithSpec:", v30)}];

    currentSpecOrientation = self->_currentSpecOrientation;
    v32 = [v10 spec];
    if (currentSpecOrientation == [v32 layoutOrientation])
    {
      currentSpecSizeClass = self->_currentSpecSizeClass;
      v34 = [v10 spec];
      v35 = self;
      v36 = [v34 sizeClass];

      v37 = currentSpecSizeClass == v36;
      self = v35;
      if (v37)
      {
        goto LABEL_21;
      }
    }

    else
    {
    }

    v38 = [v10 spec];
    self->_currentSpecOrientation = [v38 layoutOrientation];

    v39 = [v10 spec];
    self->_currentSpecSizeClass = [v39 sizeClass];

    v40 = [(PXPhotosSearchBodyLayoutProvider *)self layoutInformationChangedCallback];

    if (v40)
    {
      v41 = [(PXPhotosSearchBodyLayoutProvider *)self layoutInformationChangedCallback];
      v41[2]();
    }

LABEL_21:
    v42 = [(PXZoomablePhotosViewModel *)self->_zoomableViewModel specManager];
    v43 = [v42 spec];

    v44 = [(PXPhotosViewModel *)self->_viewModel aspectFitContent];
    if (v44)
    {
      [v43 aspectFitInteritemSpacing];
      [v26 setInterItemSpacing:{v45, v45}];
      [v43 aspectFitItemCornerRadius];
    }

    else
    {
      [v43 interitemSpacing];
      [v26 setInterItemSpacing:{v50, v50}];
      [v43 itemCornerRadius];
    }

    *&v46 = v46;
    LODWORD(v47) = LODWORD(v46);
    LODWORD(v48) = LODWORD(v46);
    LODWORD(v49) = LODWORD(v46);
    [v26 setItemCornerRadius:{v46, v47, v48, v49}];
    if (v44)
    {
      [v43 aspectFitEdgeMargins];
    }

    else
    {
      [v43 squareEdgeMargins];
    }

    [v10 safeAreaInsets];
    PXEdgeInsetsAdd();
  }

  v18 = v9;
  v19 = +[PXLemonadeSettings sharedInstance];
  v20 = [v19 showSearchDebugBadges];

  if (v20)
  {
    [(PXZoomablePhotosLayout *)self->_allResultsLayout addDecorationsToAllLayers:&unk_1F1910408];
  }

  v21 = [v18 assetDecorationSource];
  v22 = [v10 assetDecorationSource];
  v23 = [v10 loadingStatusManager];
  [v21 setLoadingStatusManager:v23];

  [v21 setHidesInteractiveFavoriteBadges:{objc_msgSend(v22, "hidesInteractiveFavoriteBadges")}];
  [v21 setDecorationViewClass:{objc_msgSend(v22, "decorationViewClass")}];
  v24 = [v22 decorationDataSource];
  [v21 setDecorationDataSource:v24];

LABEL_28:
}

- (int64_t)_numberOfColumnsWithSpec:(id)a3
{
  v3 = a3;
  v4 = [v3 sizeClass];
  v5 = [v3 layoutOrientation];

  if (v5 == 2 || v4 == 2)
  {
    return 5;
  }

  else
  {
    return 3;
  }
}

- (id)createSectionBodyLayoutForSectionedLayout:(id)a3 dataSource:(id)a4 sectionIndexPath:(PXSimpleIndexPath *)a5 spec:(id)a6 outWantsDecoration:(BOOL *)a7
{
  v11 = a4;
  v12 = *&a5->item;
  v29[0] = *&a5->dataSourceIdentifier;
  v29[1] = v12;
  v13 = [v11 assetCollectionAtSectionIndexPath:v29];
  if (v13)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    v24 = [MEMORY[0x1E696AAA8] currentHandler];
    v27 = objc_opt_class();
    v26 = NSStringFromClass(v27);
    v28 = [v13 px_descriptionForAssertionMessage];
    [v24 handleFailureInMethod:a2 object:self file:@"PXPhotosSearchBodyLayoutProvider.m" lineNumber:233 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"[dataSource assetCollectionAtSectionIndexPath:sectionIndexPath]", v26, v28}];
  }

  else
  {
    v24 = [MEMORY[0x1E696AAA8] currentHandler];
    v25 = objc_opt_class();
    v26 = NSStringFromClass(v25);
    [v24 handleFailureInMethod:a2 object:self file:@"PXPhotosSearchBodyLayoutProvider.m" lineNumber:233 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"[dataSource assetCollectionAtSectionIndexPath:sectionIndexPath]", v26}];
  }

LABEL_3:
  v14 = [v13 transientIdentifier];
  v15 = [v14 isEqualToString:@"SearchCollectionsSection"];

  if (v15)
  {
    v16 = [(PXPhotosSearchBodyLayoutProvider *)self collectionSectionProvider];
    v17 = [(PXPhotosSearchBodyLayoutProvider *)self hostViewController];
    v18 = [(_PXPhotosSearchBodyCollectionSectionLayout *)self->_collectionSectionLayout containerInfo];
    v19 = [PXPhotosSearchResultsCollectionsViewFactory createViewWithCollectionSectionProvider:v16 hostViewController:v17 containerInfo:v18 viewDelegate:self->_collectionSectionLayout selectionDelegate:self];

    [(PXGSingleViewLayout *)self->_collectionSectionLayout setContentView:v19];
    [(PXPhotosSearchBodyLayoutProvider *)self setCollectionsSelection:v19];
    v20 = self->_collectionSectionLayout;
  }

  else
  {
    if (MEMORY[0x1A590D320]())
    {
      v21 = [v13 transientIdentifier];
      v22 = [v21 isEqualToString:@"SearchAllResultsSection"];

      if (v22)
      {
        *a7 = 0;
        v20 = self->_allResultsLayout;
        goto LABEL_10;
      }
    }

    v20 = objc_alloc_init(off_1E7721600);
    [(_PXPhotosSearchBodyCollectionSectionLayout *)v20 setMediaKind:2];
    [(_PXPhotosSearchBodyCollectionSectionLayout *)v20 setPresentationType:0];
    [(_PXPhotosSearchBodyCollectionSectionLayout *)v20 setLazy:1];
    -[_PXPhotosSearchBodyCollectionSectionLayout setNumberOfItems:](v20, "setNumberOfItems:", [v11 numberOfItemsInSection:a5->section]);
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

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v9 = a3;
  if (PXSelectionManagerObservationContext_66201 != a5)
  {
    if (PXZoomObservationContext != a5)
    {
      v35 = [MEMORY[0x1E696AAA8] currentHandler];
      [v35 handleFailureInMethod:a2 object:self file:@"PXPhotosSearchBodyLayoutProvider.m" lineNumber:228 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    isUpdatingPhotosViewModel = self->_isUpdatingPhotosViewModel;
    self->_isUpdatingPhotosViewModel = 1;
    v11 = [(PXPhotosSearchBodyLayoutProvider *)self viewModel];
    v12 = [(PXPhotosSearchBodyLayoutProvider *)self zoomableViewModel];
    [off_1E77219B8 updatePhotosViewModel:v11 fromZoomablePhotosViewModel:v12 changeDescriptor:a4];

    self->_isUpdatingPhotosViewModel = isUpdatingPhotosViewModel;
    if ((a4 & 0x80) != 0)
    {
      self->_userChangedZoom = 1;
    }

    goto LABEL_27;
  }

  if ((a4 & 0x10000) != 0)
  {
    v13 = [(PXPhotosSearchBodyLayoutProvider *)self viewModel];
    if ([v13 shouldAnimateZooming])
    {

      goto LABEL_9;
    }

    v14 = [(PXPhotosSearchBodyLayoutProvider *)self viewModel];
    v15 = [v14 isInteractiveZooming];

    if (v15)
    {
LABEL_9:
      v16 = [(PXZoomablePhotosLayout *)self->_allResultsLayout superlayout];
      v17 = [v16 superlayout];

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && [v17 numberOfSublayouts] >= 1)
      {
        v18 = [v17 createAnimation];
        [v18 setDuration:0.3];
        [v18 setScope:2];
        if ([v17 numberOfSublayouts] >= 2)
        {
          v19 = 0;
          do
          {
            v20 = [v17 sublayoutAtIndex:v19 loadIfNeeded:0];
            v21 = [v20 createAnimation];
            [v21 setDuration:0.3];
            [v21 setScope:1];

            ++v19;
          }

          while (v19 < [v17 numberOfSublayouts] - 1);
        }
      }
    }
  }

  if (!self->_isUpdatingPhotosViewModel)
  {
    if ((a4 & 2) != 0)
    {
      v22 = [(PXPhotosSearchBodyLayoutProvider *)self viewModel];
      v23 = [v22 selectionSnapshot];
      v24 = [v23 isAnyItemSelected];

      if (v24)
      {
        v25 = [(PXPhotosSearchBodyLayoutProvider *)self collectionsSelection];
        [v25 clearPhotosSelection];
      }

      zoomableViewModel = self->_zoomableViewModel;
      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = __65__PXPhotosSearchBodyLayoutProvider_observable_didChange_context___block_invoke;
      v36[3] = &unk_1E7736F60;
      v36[4] = self;
      [(PXZoomablePhotosViewModel *)zoomableViewModel performChanges:v36];
    }

    if ((a4 & 0x10000) != 0)
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
      v28 = [(PXZoomablePhotosViewModel *)self->_zoomableViewModel specManager];
      v29 = [v28 spec];

      v30 = [(PXPhotosSearchBodyLayoutProvider *)self _numberOfColumnsWithSpec:v29];
      v31 = MEMORY[0x1E696AD98];
      v32 = [v29 supportedColumns];
      v27 = [v31 numberWithInteger:{objc_msgSend(v29, "bestColumnIndexForPreferredNumberOfColumns:allowedColumns:", v30, v32)}];
    }

    [(PXZoomablePhotosViewModel *)self->_zoomableViewModel unregisterChangeObserver:self context:PXZoomObservationContext];
    v33 = [(PXPhotosSearchBodyLayoutProvider *)self zoomableViewModel];
    v34 = [(PXPhotosSearchBodyLayoutProvider *)self viewModel];
    [off_1E77219B8 updateZoomablePhotosViewModel:v33 fromPhotosViewModel:v34 changeDescriptor:a4 overrideZoomColumn:v27];

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

- (void)setViewModel:(id)a3
{
  v5 = a3;
  viewModel = self->_viewModel;
  if (viewModel != v5)
  {
    v37 = v5;
    [(PXPhotosViewModel *)viewModel unregisterChangeObserver:self context:PXSelectionManagerObservationContext_66201];
    objc_storeStrong(&self->_viewModel, a3);
    [(PXPhotosViewModel *)self->_viewModel performChanges:&__block_literal_global_66208];
    [(PXPhotosViewModel *)self->_viewModel registerChangeObserver:self context:PXSelectionManagerObservationContext_66201];
    v7 = [off_1E77219A0 alloc];
    v8 = [(PXPhotosViewModel *)v37 specManager];
    v9 = [v8 extendedTraitCollection];
    v10 = [v7 initWithExtendedTraitCollection:v9 options:4];

    if (([(PXPhotosViewModel *)v37 allowsUserDefaults]& 1) != 0)
    {
      v11 = [off_1E7721948 standardUserDefaults];
      v12 = [v11 searchGridsUserDefaults];
      [v10 setUserDefaults:v12];
    }

    else
    {
      [v10 setUserDefaults:0];
    }

    v13 = [(PXPhotosViewModel *)v37 specManager];
    v14 = [v13 availableThumbnailSizes];
    [v10 setAvailableThumbnailSizes:v14];

    [v10 setGridStyle:2];
    [v10 setPreferredUserInterfaceStyle:{-[PXPhotosViewModel preferredUserInterfaceStyle](v37, "preferredUserInterfaceStyle")}];
    [(PXPhotosViewModel *)v37 itemAspectRatio];
    [v10 setItemAspectRatio:?];
    v15 = [(PXPhotosViewModel *)v37 preferredAssetCropDelegate];
    [v10 setForceSaliency:v15 != 0];

    [v10 setOverrideDefaultNumberOfColumns:{-[PXPhotosViewModel overrideDefaultNumberOfColumns](v37, "overrideDefaultNumberOfColumns")}];
    v36 = [(PXPhotosViewModel *)v37 dataSourceManager];
    v16 = [v36 dataSource];
    v35 = [v16 numberOfSections] - 1;

    v17 = [off_1E77219B0 alloc];
    v18 = [(PXPhotosViewModel *)v37 selectionManager];
    v19 = [(PXPhotosViewModel *)v37 mediaProvider];
    v20 = [(PXPhotosViewModel *)v37 loadingStatusManager];
    v21 = [(PXPhotosViewModel *)v37 badgesModifier];
    v22 = [(PXPhotosViewModel *)v37 preferredAssetCropDelegate];
    v23 = [(PXPhotosViewModel *)v37 preferredColumnCountsDelegate];
    v24 = [(PXPhotosViewModel *)v37 inlinePlaybackController];
    LOBYTE(v34) = 0;
    v25 = [v17 initWithDataSourceManager:v36 selectionManager:v18 mediaProvider:v19 specManager:v10 loadingStatusManager:v20 badgesModifier:v21 preferredAssetCropDelegate:v22 preferredColumnCountsDelegate:v23 inlinePlaybackController:v24 sectionIndex:v35 headersEnabled:v34];

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

    v5 = v37;
  }
}

- (PXPhotosSearchBodyLayoutProvider)initWithPhotoLibrary:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PXPhotosSearchBodyLayoutProvider;
  v5 = [(PXPhotosSearchBodyLayoutProvider *)&v9 init];
  if (v5)
  {
    v6 = [[PXPhotosSearchCollectionSectionProvider alloc] initWithPhotoLibrary:v4];
    collectionSectionProvider = v5->_collectionSectionProvider;
    v5->_collectionSectionProvider = v6;
  }

  return v5;
}

- (PXPhotosSearchBodyLayoutProvider)initWithCollectionSectionProvider:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PXPhotosSearchBodyLayoutProvider;
  v6 = [(PXPhotosSearchBodyLayoutProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_collectionSectionProvider, a3);
  }

  return v7;
}

@end