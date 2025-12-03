@interface PXCuratedLibraryViewModel
- ($DE30A600513D762F9B6AB73D2AED4B95)selectedAssetsTypedCount;
- (BOOL)isResetToInitialState;
- (CGPoint)lastScrollDirection;
- (NSString)description;
- (PXAssetActionManager)assetActionManager;
- (PXAssetCollectionActionManager)assetCollectionActionManager;
- (PXAssetReference)singleSelectedAssetReference;
- (PXCPLUIStatusProvider)cplUIStatusProvider;
- (PXContentSyndicationConfigurationProvider)contentSyndicationConfigurationProvider;
- (PXCuratedLibraryViewModel)init;
- (PXCuratedLibraryViewModel)initWithAssetsDataSourceManagerConfiguration:(id)configuration zoomLevel:(int64_t)level mediaProvider:(id)provider specManager:(id)manager styleGuide:(id)guide;
- (PXCuratedLibraryViewModel)initWithConfiguration:(id)configuration assetsDataSourceManagerConfiguration:(id)managerConfiguration zoomLevel:(int64_t)level mediaProvider:(id)provider specManager:(id)manager styleGuide:(id)guide;
- (PXCuratedLibraryViewModelPresenter)mainPresenter;
- (PXLibrarySummaryOutputPresenter)librarySummaryPresenter;
- (PXSelectionSnapshot)selectionSnapshot;
- (id)_assetActionManagerWithAllowedActionTypes:(id)types;
- (id)_indexPathsForAssetCollectionReference:(id)reference;
- (id)_updatedContentFilterState;
- (id)curatedLibraryAssetsDataSourceManager:(id)manager dominantAssetCollectionReferenceForZoomLevel:(int64_t)level;
- (id)visibleAssetCollectionsFromCuratedLibraryAssetsDataSourceManager:(id)manager;
- (int64_t)curatedLibraryAssetsDataSourceManager:(id)manager transitionTypeFromZoomLevel:(int64_t)level toZoomLevel:(int64_t)zoomLevel;
- (int64_t)zoomLevelInDirection:(int64_t)direction fromZoomLevel:(int64_t)level;
- (void)_handleIsSelectingChange;
- (void)_handleSelectionManagerChange:(unint64_t)change;
- (void)_handleSpecChange;
- (void)_invalidateAllowedActions;
- (void)_invalidateAspectFitContent;
- (void)_invalidateAssetActionManager;
- (void)_invalidateAssetCollectionActionManager;
- (void)_invalidateAssetsDataSourceManager;
- (void)_invalidateBannerViewConfiguration;
- (void)_invalidateChromeVisibilityWithChangeReason:(int64_t)reason;
- (void)_invalidateContentFillsTopSafeArea;
- (void)_invalidateCurrentContentFilterState;
- (void)_invalidateCurrentDataSource;
- (void)_invalidateDesiredVerticalAlignment;
- (void)_invalidateDraggedAssetReferences;
- (void)_invalidateIsModalInPresentation;
- (void)_invalidateLibraryState;
- (void)_invalidateScrollingProperties;
- (void)_invalidateScrollingSpeedometer;
- (void)_invalidateSelectModeCaption;
- (void)_invalidateShouldShowEmptyPlaceholder;
- (void)_invalidateUserWantsAspectFitContent;
- (void)_invalidateZoomablePhotosViewModel;
- (void)_sendAllPhotosSortOrderAnalyticsEvent:(unint64_t)event;
- (void)_updateAllowedActions;
- (void)_updateAspectFitContent;
- (void)_updateAssetsDataSourceManager;
- (void)_updateBannerViewConfiguration;
- (void)_updateChromeVisibility;
- (void)_updateContentFillsTopSafeArea;
- (void)_updateCurrentContentFilterState;
- (void)_updateCurrentDataSource;
- (void)_updateDesiredVerticalAlignment;
- (void)_updateDraggedAssetReferences;
- (void)_updateIsFullyExpanded;
- (void)_updateIsModalInPresentation;
- (void)_updateLibraryState;
- (void)_updateScrollingProperties;
- (void)_updateScrollingSpeedometer;
- (void)_updateSelectModeCaption;
- (void)_updateShouldShowEmptyPlaceholder;
- (void)_updateUserWantsAspectFitContent;
- (void)_updateZoomablePhotosViewModel;
- (void)addView:(id)view;
- (void)assetsDataSourceManagerDidFinishBackgroundFetching:(id)fetching;
- (void)curatedLibraryAssetsDataSourceManager:(id)manager didTransitionFromZoomLevel:(int64_t)level toZoomLevel:(int64_t)zoomLevel;
- (void)curatedLibraryAssetsDataSourceManager:(id)manager willTransitionFromZoomLevel:(int64_t)level toZoomLevel:(int64_t)zoomLevel;
- (void)dealloc;
- (void)didPerformChanges;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)performChanges:(id)changes;
- (void)performInitialChanges:(id)changes;
- (void)removeView:(id)view;
- (void)resetAllPhotosContentFilterState;
- (void)resetToInitialState;
- (void)setAllPhotosContentFilterState:(id)state;
- (void)setAllowedActions:(id)actions;
- (void)setAspectFitContent:(BOOL)content;
- (void)setBannerViewConfiguration:(id)configuration;
- (void)setContentFillsTopSafeArea:(BOOL)area;
- (void)setCplActionManagerClass:(Class)class;
- (void)setCurrentContentFilterState:(id)state;
- (void)setCurrentDataSource:(id)source;
- (void)setDaysMarginScale:(double)scale;
- (void)setDesiredVerticalAlignment:(unint64_t)alignment;
- (void)setDraggedAssetReferences:(id)references;
- (void)setHidesDurationLabelBadge:(BOOL)badge;
- (void)setIsAppearing:(BOOL)appearing;
- (void)setIsExpanded:(BOOL)expanded;
- (void)setIsExpandedAnimating:(BOOL)animating;
- (void)setIsFullyExpanded:(BOOL)expanded;
- (void)setIsModalInPresentation:(BOOL)presentation;
- (void)setIsSelecting:(BOOL)selecting;
- (void)setLastScrollDirection:(CGPoint)direction;
- (void)setLibraryState:(unint64_t)state;
- (void)setScrollRegime:(int64_t)regime;
- (void)setScrolledToBottom:(BOOL)bottom;
- (void)setScrolledToTop:(BOOL)top;
- (void)setScrollingSpeedometer:(id)speedometer;
- (void)setSecondaryToolbarLegibilityGradientIsVisible:(BOOL)visible;
- (void)setSecondaryToolbarVisibility:(double)visibility;
- (void)setSelectModeCaption:(id)caption;
- (void)setSelectedAssetsTypedCount:(id)count;
- (void)setShouldShowEmptyPlaceholder:(BOOL)placeholder;
- (void)setSidebarCanBecomeVisible:(BOOL)visible;
- (void)setSkimmingInfo:(id)info;
- (void)setUserWantsAspectFitContent:(id)content;
- (void)setViewBasedDecorationsEnabled:(BOOL)enabled;
- (void)setWantsDarkStatusBar:(BOOL)bar;
- (void)setWantsNavigationBarVisible:(BOOL)visible;
- (void)setWantsOptionalChromeVisible:(BOOL)visible changeReason:(int64_t)reason;
- (void)setWantsSecondaryToolbarVisible:(BOOL)visible;
- (void)setWantsTabBarVisible:(BOOL)visible;
- (void)setWantsToolbarVisible:(BOOL)visible;
- (void)setZoomLevel:(int64_t)level;
- (void)setZoomLevelTransitionPhase:(int64_t)phase;
- (void)toggleSelectionForAssetCollectionReference:(id)reference;
- (void)toggleSelectionForAssetReference:(id)reference updateCursorIndexPath:(BOOL)path;
- (void)toggleSelectionForIndexPath:(PXSimpleIndexPath *)path;
- (void)toggleSelectionForIndexPath:(PXSimpleIndexPath *)path updateCursorIndexPath:(BOOL)indexPath;
- (void)userDidSetAllPhotosContentFilterState:(id)state;
@end

@implementation PXCuratedLibraryViewModel

- (void)resetAllPhotosContentFilterState
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __61__PXCuratedLibraryViewModel_resetAllPhotosContentFilterState__block_invoke;
  v2[3] = &unk_1E7748B68;
  v2[4] = self;
  [(PXCuratedLibraryViewModel *)self performChanges:v2];
}

void __61__PXCuratedLibraryViewModel_resetAllPhotosContentFilterState__block_invoke(uint64_t a1)
{
  v2 = [PXContentFilterState defaultAllPhotosFilterStateForPhotoLibrary:*(*(a1 + 32) + 176)];
  [*(a1 + 32) setAllPhotosContentFilterState:v2];
}

- (void)_invalidateCurrentContentFilterState
{
  updater = [(PXCuratedLibraryViewModel *)self updater];
  [updater setNeedsUpdateOf:sel__updateCurrentContentFilterState];
}

- (void)_invalidateAssetsDataSourceManager
{
  updater = [(PXCuratedLibraryViewModel *)self updater];
  [updater setNeedsUpdateOf:sel__updateAssetsDataSourceManager];
}

- (void)_invalidateAllowedActions
{
  updater = [(PXCuratedLibraryViewModel *)self updater];
  [updater setNeedsUpdateOf:sel__updateAllowedActions];
}

- (void)_invalidateCurrentDataSource
{
  updater = [(PXCuratedLibraryViewModel *)self updater];
  [updater setNeedsUpdateOf:sel__updateCurrentDataSource];
}

- (void)didPerformChanges
{
  v4.receiver = self;
  v4.super_class = PXCuratedLibraryViewModel;
  [(PXCuratedLibraryViewModel *)&v4 didPerformChanges];
  updater = [(PXCuratedLibraryViewModel *)self updater];
  [updater updateIfNeeded];
}

- (void)_updateAssetsDataSourceManager
{
  allPhotosContentFilterState = [(PXCuratedLibraryViewModel *)self allPhotosContentFilterState];
  v4 = [allPhotosContentFilterState predicateForUseCase:0];

  viewOptionsModel = [(PXCuratedLibraryViewModel *)self viewOptionsModel];
  sortOrderState = [viewOptionsModel sortOrderState];
  sortOrder = [sortOrderState sortOrder];

  v8 = PXFetchSortOrderStandardAssetSortDescriptors(sortOrder);
  assetsDataSourceManager = [(PXCuratedLibraryViewModel *)self assetsDataSourceManager];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __59__PXCuratedLibraryViewModel__updateAssetsDataSourceManager__block_invoke;
  v12[3] = &unk_1E7736F38;
  v12[4] = self;
  v13 = v4;
  v14 = v8;
  v10 = v8;
  v11 = v4;
  [assetsDataSourceManager performChanges:v12];
}

void __59__PXCuratedLibraryViewModel__updateAssetsDataSourceManager__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 loadIfNeeded];
  [v3 setZoomLevel:{objc_msgSend(*(a1 + 32), "zoomLevel")}];
  [v3 setAllPhotosFilterPredicate:*(a1 + 40)];
  [v3 setAllPhotosSortDescriptors:*(a1 + 48)];
  v4 = [*(a1 + 32) libraryFilterState];
  [v3 setLibraryFilter:{objc_msgSend(v4, "viewMode")}];

  v5 = [*(a1 + 32) contentSyndicationConfigurationProvider];
  [v3 setCanIncludeUnsavedSyndicatedAssets:{objc_msgSend(v5, "showUnsavedSyndicatedContentInPhotosGrids")}];
}

- (PXContentSyndicationConfigurationProvider)contentSyndicationConfigurationProvider
{
  photoLibrary = [(PXCuratedLibraryViewModel *)self photoLibrary];
  v3 = [PXContentSyndicationConfigurationProvider contentSyndicationConfigurationProviderWithPhotoLibrary:photoLibrary];

  return v3;
}

- (PXSelectionSnapshot)selectionSnapshot
{
  selectionManager = [(PXCuratedLibraryViewModel *)self selectionManager];
  selectionSnapshot = [selectionManager selectionSnapshot];

  return selectionSnapshot;
}

- (void)_invalidateAssetCollectionActionManager
{
  assetCollectionActionManager = self->_assetCollectionActionManager;
  self->_assetCollectionActionManager = 0;
}

- (void)_updateCurrentDataSource
{
  assetsDataSourceManager = [(PXCuratedLibraryViewModel *)self assetsDataSourceManager];
  dataSource = [assetsDataSourceManager dataSource];

  selectionManager = [(PXCuratedLibraryViewModel *)self selectionManager];
  dataSourceManager = [selectionManager dataSourceManager];
  dataSource2 = [dataSourceManager dataSource];

  if (([dataSource isEqual:dataSource2] & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryViewModel.m" lineNumber:900 description:@"Expected selection manager's data source to match assetsDataSourceManager.dataSource!"];
  }

  [(PXCuratedLibraryViewModel *)self setCurrentDataSource:dataSource];
}

- (void)_invalidateDraggedAssetReferences
{
  updater = [(PXCuratedLibraryViewModel *)self updater];
  [updater setNeedsUpdateOf:sel__updateDraggedAssetReferences];
}

- (void)_updateCurrentContentFilterState
{
  if ([(PXCuratedLibraryViewModel *)self zoomLevel]== 4)
  {
    allPhotosContentFilterState = [(PXCuratedLibraryViewModel *)self allPhotosContentFilterState];
    [(PXCuratedLibraryViewModel *)self setCurrentContentFilterState:allPhotosContentFilterState];
  }

  else
  {

    [(PXCuratedLibraryViewModel *)self setCurrentContentFilterState:0];
  }
}

- (void)_invalidateShouldShowEmptyPlaceholder
{
  updater = [(PXCuratedLibraryViewModel *)self updater];
  [updater setNeedsUpdateOf:sel__updateShouldShowEmptyPlaceholder];
}

- (void)_updateDraggedAssetReferences
{
  v19 = *MEMORY[0x1E69E9840];
  currentDataSource = [(PXCuratedLibraryViewModel *)self currentDataSource];
  v4 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  draggedAssetReferences = [(PXCuratedLibraryViewModel *)self draggedAssetReferences];
  v6 = [draggedAssetReferences countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(draggedAssetReferences);
        }

        v10 = [currentDataSource assetReferenceForAssetReference:*(*(&v14 + 1) + 8 * v9)];
        if (v10)
        {
          [v4 addObject:v10];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [draggedAssetReferences countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __58__PXCuratedLibraryViewModel__updateDraggedAssetReferences__block_invoke;
  v12[3] = &unk_1E7748B68;
  v13 = v4;
  v11 = v4;
  [(PXCuratedLibraryViewModel *)self performChanges:v12];
}

void __58__PXCuratedLibraryViewModel__updateDraggedAssetReferences__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v5 = a2;
  if ([v3 count])
  {
    v4 = *(a1 + 32);
  }

  else
  {
    v4 = 0;
  }

  [v5 setDraggedAssetReferences:v4];
}

- (void)_updateShouldShowEmptyPlaceholder
{
  libraryState = [(PXCuratedLibraryViewModel *)self libraryState];
  currentContentFilterState = [(PXCuratedLibraryViewModel *)self currentContentFilterState];
  -[PXCuratedLibraryViewModel setShouldShowEmptyPlaceholder:](self, "setShouldShowEmptyPlaceholder:", PXCuratedLibraryStateIsEmptyLibrary(libraryState) & [currentContentFilterState isContentFilterActive:2] & (objc_msgSend(currentContentFilterState, "isFiltering") ^ 1));
}

- (void)_invalidateDesiredVerticalAlignment
{
  updater = [(PXCuratedLibraryViewModel *)self updater];
  [updater setNeedsUpdateOf:sel__updateDesiredVerticalAlignment];
}

- (void)_updateAllowedActions
{
  zoomLevel = [(PXCuratedLibraryViewModel *)self zoomLevel];
  v100 = 0;
  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  v94 = 0u;
  v95 = 0u;
  zoomablePhotosViewModel = [(PXCuratedLibraryViewModel *)self zoomablePhotosViewModel];
  v5 = zoomablePhotosViewModel;
  if (zoomablePhotosViewModel)
  {
    [zoomablePhotosViewModel zoomState];
  }

  else
  {
    v100 = 0;
    v98 = 0u;
    v99 = 0u;
    v96 = 0u;
    v97 = 0u;
    v94 = 0u;
    v95 = 0u;
  }

  v88 = +[PXCuratedLibrarySettings sharedInstance];
  sharedInstance = [off_1E7721810 sharedInstance];
  zoomablePhotosViewModel2 = [(PXCuratedLibraryViewModel *)self zoomablePhotosViewModel];
  specManager = [(PXCuratedLibraryViewModel *)self specManager];
  spec = [specManager spec];

  isSelecting = [(PXCuratedLibraryViewModel *)self isSelecting];
  v87 = zoomablePhotosViewModel2;
  isDisplayingIndividualItems = [zoomablePhotosViewModel2 isDisplayingIndividualItems];
  userInterfaceIdiom = [spec userInterfaceIdiom];
  v89 = userInterfaceIdiom != 4;
  userInterfaceIdiom2 = [spec userInterfaceIdiom];
  userInterfaceIdiom3 = [spec userInterfaceIdiom];
  v84 = spec;
  sizeClass = [spec sizeClass];
  shouldShowEmptyPlaceholder = [(PXCuratedLibraryViewModel *)self shouldShowEmptyPlaceholder];
  isExpanded = [(PXCuratedLibraryViewModel *)self isExpanded];
  isExpandedAnimating = [(PXCuratedLibraryViewModel *)self isExpandedAnimating];
  analysisStatus = [(PXCuratedLibraryViewModel *)self analysisStatus];
  if (([analysisStatus isDaysMonthsYearsStructureEnabled] & 1) != 0 || +[PXCuratedLibrarySettings enableEmptyYearsMonthsDaysForTesting](PXCuratedLibrarySettings, "enableEmptyYearsMonthsDaysForTesting"))
  {
    currentContentFilterState = [(PXCuratedLibraryViewModel *)self currentContentFilterState];
    isFiltering = [currentContentFilterState isFiltering];
    v18 = !shouldShowEmptyPlaceholder && (isExpanded || isExpandedAnimating);
    if (isFiltering)
    {
      v18 = 0;
    }

    v83 = v18;
  }

  else
  {
    v83 = 0;
  }

  sharedLibraryStatusProvider = [(PXCuratedLibraryViewModel *)self sharedLibraryStatusProvider];
  hasSharedLibraryOrPreview = [sharedLibraryStatusProvider hasSharedLibraryOrPreview];

  if (![sharedInstance enableNewActionMenu])
  {
    if (zoomLevel != 1)
    {
      if (isSelecting)
      {
        LOBYTE(v66) = 0;
      }

      else
      {
        skimmingInfo = [(PXCuratedLibraryViewModel *)self skimmingInfo];
        v66 = [skimmingInfo touchInteractionStarted] ^ 1;
      }

      if (zoomLevel == 4)
      {
        enableContentFiltering = [sharedInstance enableContentFiltering];
        v76 = 0;
        LODWORD(v77) = 0;
        HIDWORD(v77) = enableContentFiltering;
        LODWORD(v78) = 0;
        HIDWORD(v78) = enableContentFiltering;
        LODWORD(v73) = 0;
        HIDWORD(v73) = enableContentFiltering;
        v26 = 0;
        v75 = enableContentFiltering;
        goto LABEL_32;
      }

      goto LABEL_28;
    }

LABEL_15:
    v76 = 0;
    v77 = 0;
    v78 = 0;
    v73 = 0;
    v75 = 0;
    v26 = 0;
    enableContentFiltering = 0;
    LOBYTE(v66) = 0;
    goto LABEL_32;
  }

  if (zoomLevel == 4)
  {
    v85 = isExpanded;
    enableContentFiltering = [sharedInstance enableContentFiltering];
    currentContentFilterState2 = [(PXCuratedLibraryViewModel *)self currentContentFilterState];
    shouldExcludeScreenshots = [currentContentFilterState2 shouldExcludeScreenshots];

    contentSyndicationConfigurationProvider = [(PXCuratedLibraryViewModel *)self contentSyndicationConfigurationProvider];
    contentSyndicationIsAvailable = [contentSyndicationConfigurationProvider contentSyndicationIsAvailable];

    HIDWORD(v78) = contentSyndicationIsAvailable;
    if (contentSyndicationIsAvailable)
    {
      currentContentFilterState3 = [(PXCuratedLibraryViewModel *)self currentContentFilterState];
      HIDWORD(v77) = [currentContentFilterState3 includeSharedWithYou];
    }

    else
    {
      HIDWORD(v77) = 0;
    }

    v75 = shouldExcludeScreenshots ^ 1;
    macSyncedAssetsStatusProvider = [(PXCuratedLibraryViewModel *)self macSyncedAssetsStatusProvider];
    hasAnyAssets = [macSyncedAssetsStatusProvider hasAnyAssets];

    LODWORD(v78) = hasAnyAssets;
    LOBYTE(isExpanded) = v85;
    if (hasAnyAssets)
    {
      currentContentFilterState4 = [(PXCuratedLibraryViewModel *)self currentContentFilterState];
      LODWORD(v76) = [currentContentFilterState4 shouldExcludeFromMyMac] ^ 1;
    }

    else
    {
      LODWORD(v76) = 0;
    }

    sharedInstance2 = [off_1E7721810 sharedInstance];
    LODWORD(v77) = [sharedInstance2 showLivePhotoFilter];

    sharedInstance3 = [off_1E7721810 sharedInstance];
    HIDWORD(v76) = [sharedInstance3 showPortraitFilter];

    sharedInstance4 = [off_1E7721810 sharedInstance];
    LODWORD(v73) = [sharedInstance4 showInUserAlbumFilter];

    v27 = 1;
    HIDWORD(v73) = 1;
    v26 = 1;
    goto LABEL_31;
  }

  if (zoomLevel != 3)
  {
    if (zoomLevel != 1)
    {
      skimmingInfo2 = [(PXCuratedLibraryViewModel *)self skimmingInfo];
      v66 = [skimmingInfo2 touchInteractionStarted] ^ 1;

LABEL_28:
      v76 = 0;
      v77 = 0;
      v78 = 0;
      v73 = 0;
      v75 = 0;
      v26 = 0;
      enableContentFiltering = 0;
      goto LABEL_32;
    }

    goto LABEL_15;
  }

  v76 = 0;
  v77 = 0;
  v78 = 0;
  v73 = 0;
  v75 = 0;
  v26 = 0;
  enableContentFiltering = 0;
  v27 = isSelecting ^ 1;
LABEL_31:
  LOBYTE(v66) = v27;
LABEL_32:
  v86 = sharedInstance;
  v36 = (zoomLevel == 4) & isDisplayingIndividualItems;
  if (zoomLevel == 3)
  {
    v36 = 1;
  }

  v37 = v36 & ~isSelecting;
  if (userInterfaceIdiom == 4)
  {
    v37 = 0;
  }

  v71 = v37;
  if (isSelecting)
  {
    v38 = 0;
  }

  else
  {
    v38 = (zoomLevel != 4) | isDisplayingIndividualItems;
    if (((zoomLevel == 4) & isDisplayingIndividualItems) == 1)
    {
      v74 = v96 > 1;
      goto LABEL_41;
    }
  }

  v74 = 0;
LABEL_41:
  if (zoomLevel == 4 && isExpanded)
  {
    currentDataSource = [(PXCuratedLibraryViewModel *)self currentDataSource];
    containsAnyItems = [currentDataSource containsAnyItems];

    v41 = *(&v96 + 1);
    if (containsAnyItems)
    {
      allowedColumns = [v87 allowedColumns];
      enableShowAllButtons = *(&v96 + 1) + 1 < [allowedColumns count];

      v89 = 0;
      v44 = 1;
    }

    else
    {
      v89 = 0;
      enableShowAllButtons = 0;
      v44 = 0;
    }
  }

  else
  {
    v41 = *(&v96 + 1);
    if (zoomLevel == 3)
    {
      v45 = isSelecting;
    }

    else
    {
      v45 = 1;
    }

    if ((v45 & 1) == 0)
    {
      enableShowAllButtons = [v88 enableShowAllButtons];
      v44 = 0;
      v69 = 0;
      v70 = 1;
      goto LABEL_63;
    }

    enableShowAllButtons = 0;
    v89 = (userInterfaceIdiom != 4) & ~((zoomLevel == 4) ^ (zoomLevel == 1));
    if ((zoomLevel & 0xFFFFFFFFFFFFFFFELL) == 2)
    {
      v69 = 0;
      v70 = 1;
      v44 = 0;
      goto LABEL_63;
    }

    v44 = 0;
  }

  v48 = zoomLevel == 4 && userInterfaceIdiom != 4 || zoomLevel == 1;
  v69 = enableShowAllButtons;
  v70 = v48;
  enableShowAllButtons = 0;
LABEL_63:
  if (userInterfaceIdiom == 4)
  {
    canShowInternalUI = 0;
  }

  else
  {
    v49 = +[PXRootSettings sharedInstance];
    canShowInternalUI = [v49 canShowInternalUI];
  }

  sidebarCanBecomeVisible = 0;
  v72 = enableShowAllButtons;
  if (userInterfaceIdiom2 == 2 && sizeClass != 1)
  {
    sidebarCanBecomeVisible = [(PXCuratedLibraryViewModel *)self sidebarCanBecomeVisible];
  }

  v80 = sidebarCanBecomeVisible;
  if (userInterfaceIdiom3 == 5)
  {
    v51 = (zoomLevel != 3) & (v66 | hasSharedLibraryOrPreview);
  }

  else
  {
    v51 = v66 | hasSharedLibraryOrPreview;
  }

  if (userInterfaceIdiom3 == 5)
  {
    v52 = 0;
  }

  else
  {
    v52 = v38;
  }

  v82 = userInterfaceIdiom3 == 5;
  if (zoomLevel == 1)
  {
    v53 = 0;
  }

  else
  {
    v53 = isSelecting ^ 1;
  }

  v62 = v52;
  v63 = v53;
  if ((zoomLevel - 1) < 2)
  {
    v54 = isSelecting ^ 1;
  }

  else
  {
    v54 = 0;
  }

  if (zoomLevel == 3)
  {
    v55 = isSelecting;
  }

  else
  {
    v55 = 0;
  }

  if (userInterfaceIdiom == 4)
  {
    v55 = 0;
  }

  v61 = v55;
  if (v41 > 0)
  {
    v56 = v44;
  }

  else
  {
    v56 = 0;
  }

  v67 = v56;
  if (zoomLevel == 4)
  {
    v57 = 0;
  }

  else
  {
    v57 = isSelecting ^ 1;
  }

  v65 = v57;
  v58 = objc_opt_new();
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __50__PXCuratedLibraryViewModel__updateAllowedActions__block_invoke;
  aBlock[3] = &unk_1E7736F88;
  v93 = v58;
  v59 = v58;
  v60 = _Block_copy(aBlock);
  v60[2](v60, v51 & 1, @"PXCuratedLibraryActionEllipsisButton");
  v60[2](v60, hasSharedLibraryOrPreview, @"PXCuratedLibraryActionSetAllLibrariesFilter");
  v60[2](v60, hasSharedLibraryOrPreview, @"PXCuratedLibraryActionSetPersonalLibraryFilter");
  v60[2](v60, hasSharedLibraryOrPreview, @"PXCuratedLibraryActionSetSharedLibraryFilter");
  v60[2](v60, hasSharedLibraryOrPreview, @"PXCuratedLibraryActionToggleSharedLibraryBadge");
  v60[2](v60, enableContentFiltering, @"PXCuratedLibraryActionShowFiltersMenu");
  v60[2](v60, enableContentFiltering, @"PXCuratedLibraryActionShowFilters");
  v60[2](v60, enableContentFiltering, @"PXCuratedLibraryActionUnfilter");
  v60[2](v60, enableContentFiltering, @"PXCuratedLibraryActionRemoveFilters");
  v60[2](v60, v26, @"PXCuratedLibraryActionToggleFavoriteFilter");
  v60[2](v60, v26, @"PXCuratedLibraryActionToggleEditFilter");
  v60[2](v60, v26, @"PXCuratedLibraryActionToggleImageFilter");
  v60[2](v60, v26, @"PXCuratedLibraryActionToggleNotInUserAlbumFilter");
  v60[2](v60, v73, @"PXCuratedLibraryActionToggleInUserAlbumFilter");
  v60[2](v60, v26, @"PXCuratedLibraryActionToggleVideoFilter");
  v60[2](v60, v75, @"PXCuratedLibraryActionToggleShowOnlyScreenshotFilter");
  v60[2](v60, HIDWORD(v73), @"PXCuratedLibraryActionToggleIncludeScreenshotFilter");
  v60[2](v60, HIDWORD(v77), @"PXCuratedLibraryActionToggleShowOnlySharedWithYouFilter");
  v60[2](v60, HIDWORD(v78), @"PXCuratedLibraryActionToggleIncludeSharedWithYouFilter");
  v60[2](v60, v76, @"PXCuratedLibraryActionToggleShowOnlyFromMyMacFilter");
  v60[2](v60, v78, @"PXCuratedLibraryActionToggleIncludeFromMyMacFilter");
  v60[2](v60, v77, @"PXCuratedLibraryActionToggleLiveFilter");
  v60[2](v60, HIDWORD(v76), @"PXCuratedLibraryActionTogglePortraitFilter");
  v60[2](v60, v71, @"PXCuratedLibraryActionEnterSelectMode");
  v60[2](v60, v61, @"PXCuratedLibraryActionSelectAllToggle");
  v60[2](v60, isSelecting, @"PXCuratedLibraryActionCancelSelectMode");
  v60[2](v60, v62 & 1, @"PXCuratedLibraryActionNavigateToOneUp");
  v60[2](v60, v63 & v83, @"PXCuratedLibraryActionNavigateToPreviousZoomLevel");
  v60[2](v60, v54 & v83, @"PXCuratedLibraryActionNavigateToNextZoomLevel");
  v60[2](v60, v65, @"PXCuratedLibraryActionPinchToSwitchZoomLevel");
  v60[2](v60, v54, @"PXCuratedLibraryActionSkim");
  v60[2](v60, v44, @"PXCuratedLibraryActionAllPhotosInteractiveZoom");
  (v60)[2](v60, v74, @"PXCuratedLibraryActionAllPhotosToggleAspectFit");
  v60[2](v60, v67, @"PXCuratedLibraryActionAllPhotosZoomIn");
  v60[2](v60, v69, @"PXCuratedLibraryActionAllPhotosZoomOut");
  v60[2](v60, 1, @"PXCuratedLibraryActionDropInFromDrag");
  v60[2](v60, v72, @"PXCuratedLibraryActionShowAll");
  v60[2](v60, v89, @"PXCuratedLibraryActionShare");
  v60[2](v60, v83, @"PXCuratedLibraryActionNavigateToYearsMonthsOrDays");
  v60[2](v60, v70, @"PXCuratedLibraryActionShowMap");
  v60[2](v60, canShowInternalUI, @"PXCuratedLibraryActionTapToRadar");
  v60[2](v60, canShowInternalUI, @"PXCuratedLibraryActionCurationDebug");
  (v60)[2](v60, v80, @"PXCuratedLibraryActionShowSidebar");
  (v60)[2](v60, v82, @"PXCuratedLibraryActionNavigateToAssetReference");
  v60[2](v60, 0, @"PXCuratedLibraryActionHover");
  [(PXCuratedLibraryViewModel *)self setAllowedActions:v59];
}

uint64_t __50__PXCuratedLibraryViewModel__updateAllowedActions__block_invoke(uint64_t result, int a2)
{
  if (a2)
  {
    return [*(result + 32) addObject:?];
  }

  return result;
}

- (void)_updateDesiredVerticalAlignment
{
  shouldShowEmptyPlaceholder = [(PXCuratedLibraryViewModel *)self shouldShowEmptyPlaceholder];

  [(PXCuratedLibraryViewModel *)self setDesiredVerticalAlignment:shouldShowEmptyPlaceholder];
}

- (void)_invalidateZoomablePhotosViewModel
{
  updater = [(PXCuratedLibraryViewModel *)self updater];
  [updater setNeedsUpdateOf:sel__updateZoomablePhotosViewModel];
}

- (void)_invalidateUserWantsAspectFitContent
{
  updater = [(PXCuratedLibraryViewModel *)self updater];
  [updater setNeedsUpdateOf:sel__updateUserWantsAspectFitContent];
}

- (void)_invalidateAspectFitContent
{
  updater = [(PXCuratedLibraryViewModel *)self updater];
  [updater setNeedsUpdateOf:sel__updateAspectFitContent];
}

- (void)_invalidateLibraryState
{
  updater = [(PXCuratedLibraryViewModel *)self updater];
  [updater setNeedsUpdateOf:sel__updateLibraryState];
}

- (void)_invalidateBannerViewConfiguration
{
  updater = [(PXCuratedLibraryViewModel *)self updater];
  [updater setNeedsUpdateOf:sel__updateBannerViewConfiguration];
}

- (void)_updateUserWantsAspectFitContent
{
  standardUserDefaults = [off_1E7721948 standardUserDefaults];
  allPhotosAspectFit = [standardUserDefaults allPhotosAspectFit];
  specManager = [(PXCuratedLibraryViewModel *)self specManager];
  spec = [specManager spec];

  if ([spec userInterfaceIdiom] == 2 && objc_msgSend(spec, "sizeClass") == 1)
  {
    allPhotosAspectFitInCompact = [standardUserDefaults allPhotosAspectFitInCompact];

    allPhotosAspectFit = allPhotosAspectFitInCompact;
  }

  [(PXCuratedLibraryViewModel *)self setUserWantsAspectFitContent:allPhotosAspectFit];
}

- (void)_updateAspectFitContent
{
  specManager = [(PXCuratedLibraryViewModel *)self specManager];
  spec = [specManager spec];
  bOOLValue = [spec userInterfaceIdiom] == 4;

  userWantsAspectFitContent = [(PXCuratedLibraryViewModel *)self userWantsAspectFitContent];

  if (userWantsAspectFitContent)
  {
    userWantsAspectFitContent2 = [(PXCuratedLibraryViewModel *)self userWantsAspectFitContent];
    bOOLValue = [userWantsAspectFitContent2 BOOLValue];
  }

  [(PXCuratedLibraryViewModel *)self setAspectFitContent:bOOLValue];
}

- (void)_updateLibraryState
{
  assetsDataSourceManager = [(PXCuratedLibraryViewModel *)self assetsDataSourceManager];
  v3 = 0;
  v4 = [(PXCuratedLibraryViewModel *)self zoomLevel]- 1;
  v5 = 1;
  do
  {
    if (v4 == v3 || v3 == 3)
    {
      v6 = [assetsDataSourceManager libraryStateForZoomLevel:v3 + 1];
      v7 = v5 & 0xFFFFFFFFFFFFFFFELL;
      if (v6)
      {
        v7 = v5;
      }

      v5 = v7 | v6 & 2;
    }

    ++v3;
  }

  while (v3 != 4);
  [(PXCuratedLibraryViewModel *)self setLibraryState:v5];
}

- (void)_updateBannerViewConfiguration
{
  sharedLibraryStatusProvider = [(PXCuratedLibraryViewModel *)self sharedLibraryStatusProvider];
  if ([sharedLibraryStatusProvider hasPreview])
  {
    v4 = PXSharedLibraryPreviewBannerConfiguration(sharedLibraryStatusProvider);
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  [(PXCuratedLibraryViewModel *)self setBannerViewConfiguration:v4];
}

- (void)_updateChromeVisibility
{
  specManager = [(PXCuratedLibraryViewModel *)self specManager];
  spec = [specManager spec];

  libraryState = [(PXCuratedLibraryViewModel *)self libraryState];
  if ([spec userInterfaceIdiom] != 4)
  {
    isSelecting = [(PXCuratedLibraryViewModel *)self isSelecting];
    layoutOrientation = [spec layoutOrientation];
    sizeClass = [spec sizeClass];
    v12 = +[PXLemonadeSettings sharedInstance];
    enableTabs = [v12 enableTabs];
    v14 = enableTabs;
    if ((libraryState & 2) != 0)
    {

      if (isSelecting)
      {
        wantsOptionalChromeVisible = 0;
        v6 = 0;
        v7 = 1;
        if (v14)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }

      v21 = +[PXLemonadeSettings sharedInstance];
      enableTabs2 = [v21 enableTabs];

      if ((enableTabs2 & 1) == 0 && layoutOrientation == 2 && sizeClass == 1)
      {
        wantsOptionalChromeVisible = [(PXCuratedLibraryViewModel *)self wantsOptionalChromeVisible];
        v7 = 0;
LABEL_9:
        v6 = 1;
        if (v14)
        {
          goto LABEL_14;
        }

LABEL_13:
        bannerViewConfiguration = [(PXCuratedLibraryViewModel *)self bannerViewConfiguration];

        if (!bannerViewConfiguration)
        {
          goto LABEL_15;
        }

LABEL_14:
        configuration = [(PXCuratedLibraryViewModel *)self configuration];
        LODWORD(bannerViewConfiguration) = [configuration enableNavigationHeader];

        goto LABEL_15;
      }
    }

    else
    {
      if (sizeClass == 1)
      {
        v14 = enableTabs;
      }

      else
      {
        v14 = 1;
      }
    }

    v7 = 0;
    wantsOptionalChromeVisible = 1;
    goto LABEL_9;
  }

  LODWORD(bannerViewConfiguration) = 0;
  v6 = 0;
  v7 = 0;
  wantsOptionalChromeVisible = 0;
LABEL_15:
  configuration2 = [(PXCuratedLibraryViewModel *)self configuration];
  isPresentingSearchOverlay = [configuration2 isPresentingSearchOverlay];

  v18 = (isPresentingSearchOverlay == 0) & bannerViewConfiguration;
  if (isPresentingSearchOverlay && bannerViewConfiguration)
  {
    configuration3 = [(PXCuratedLibraryViewModel *)self configuration];
    isPresentingSearchOverlay2 = [configuration3 isPresentingSearchOverlay];
    v18 = isPresentingSearchOverlay2[2]() ^ 1;
  }

  [(PXCuratedLibraryViewModel *)self setWantsNavigationBarVisible:v18];
  [(PXCuratedLibraryViewModel *)self setWantsTabBarVisible:wantsOptionalChromeVisible];
  [(PXCuratedLibraryViewModel *)self setWantsToolbarVisible:v7];
  [(PXCuratedLibraryViewModel *)self setWantsSecondaryToolbarVisible:v6];
  self->_lastChromeVisibilityChangeReason = self->_pendingChromeVisibilityChangeReason;
  self->_pendingChromeVisibilityChangeReason = 0;
}

- (void)_updateZoomablePhotosViewModel
{
  zoomablePhotosViewModel = [(PXCuratedLibraryViewModel *)self zoomablePhotosViewModel];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __59__PXCuratedLibraryViewModel__updateZoomablePhotosViewModel__block_invoke;
  v4[3] = &unk_1E7736F60;
  v4[4] = self;
  [zoomablePhotosViewModel performChanges:v4];
}

void __59__PXCuratedLibraryViewModel__updateZoomablePhotosViewModel__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v5 = a2;
  [v5 setIsInSelectMode:{objc_msgSend(v3, "isSelecting")}];
  [v5 setViewBasedDecorationsEnabled:{objc_msgSend(*(a1 + 32), "viewBasedDecorationsEnabled")}];
  [v5 setHidesDurationLabelBadge:{objc_msgSend(*(a1 + 32), "hidesDurationLabelBadge")}];
  v4 = [*(a1 + 32) draggedAssetReferences];
  [v5 setDraggedAssetReferences:v4];

  [v5 setAspectFit:{objc_msgSend(*(a1 + 32), "aspectFitContent")}];
  [v5 setIsInteractiveZoomingAllowed:{objc_msgSend(*(a1 + 32), "isExpanded")}];
}

- (void)_invalidateScrollingSpeedometer
{
  updater = [(PXCuratedLibraryViewModel *)self updater];
  [updater setNeedsUpdateOf:sel__updateScrollingSpeedometer];
}

- (void)_updateScrollingSpeedometer
{
  views = [(PXCuratedLibraryViewModel *)self views];
  firstObject = [views firstObject];
  scrollingSpeedometer = [firstObject scrollingSpeedometer];
  [(PXCuratedLibraryViewModel *)self setScrollingSpeedometer:scrollingSpeedometer];
}

- (void)_invalidateScrollingProperties
{
  updater = [(PXCuratedLibraryViewModel *)self updater];
  [updater setNeedsUpdateOf:sel__updateScrollingProperties];
}

- (void)_updateScrollingProperties
{
  scrollingSpeedometer = [(PXCuratedLibraryViewModel *)self scrollingSpeedometer];
  -[PXCuratedLibraryViewModel setScrollRegime:](self, "setScrollRegime:", [scrollingSpeedometer regime]);
  [scrollingSpeedometer lastScrollDirection];
  [(PXCuratedLibraryViewModel *)self setLastScrollDirection:?];
}

- (PXCPLUIStatusProvider)cplUIStatusProvider
{
  v17 = *MEMORY[0x1E69E9840];
  cplUIStatusProvider = self->_cplUIStatusProvider;
  if (!cplUIStatusProvider)
  {
    v4 = [objc_alloc(self->_cplActionManagerClass) initWithPhotoLibrary:self->_photoLibrary];
    v5 = [[PXCPLUIStatusProvider alloc] initWithPhotoLibrary:self->_photoLibrary actionManager:v4 presentationStyle:2];
    v6 = self->_cplUIStatusProvider;
    self->_cplUIStatusProvider = v5;

    v7 = PLUserStatusUIGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_opt_class();
      v9 = self->_cplUIStatusProvider;
      v11 = 138543874;
      v12 = v8;
      v13 = 2048;
      selfCopy = self;
      v15 = 2114;
      v16 = v9;
      _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_DEFAULT, "<%{public}@:%p> Did assign %{public}@", &v11, 0x20u);
    }

    cplUIStatusProvider = self->_cplUIStatusProvider;
  }

  return cplUIStatusProvider;
}

- (PXLibrarySummaryOutputPresenter)librarySummaryPresenter
{
  WeakRetained = objc_loadWeakRetained(&self->_librarySummaryPresenter);

  return WeakRetained;
}

- (void)_handleSpecChange
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __46__PXCuratedLibraryViewModel__handleSpecChange__block_invoke;
  v2[3] = &unk_1E7748B68;
  v2[4] = self;
  [(PXCuratedLibraryViewModel *)self performChanges:v2];
}

uint64_t __46__PXCuratedLibraryViewModel__handleSpecChange__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _invalidateUserWantsAspectFitContent];
  [*(a1 + 32) _invalidateChromeVisibility];
  v2 = *(a1 + 32);

  return [v2 _invalidateAllowedActions];
}

- ($DE30A600513D762F9B6AB73D2AED4B95)selectedAssetsTypedCount
{
  p_selectedAssetsTypedCount = &self->_selectedAssetsTypedCount;
  count = self->_selectedAssetsTypedCount.count;
  type = p_selectedAssetsTypedCount->type;
  result.var1 = type;
  result.var0 = count;
  return result;
}

- (CGPoint)lastScrollDirection
{
  x = self->_lastScrollDirection.x;
  y = self->_lastScrollDirection.y;
  result.y = y;
  result.x = x;
  return result;
}

- (void)_sendAllPhotosSortOrderAnalyticsEvent:(unint64_t)event
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__PXCuratedLibraryViewModel__sendAllPhotosSortOrderAnalyticsEvent___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = event;
  if (_sendAllPhotosSortOrderAnalyticsEvent__onceToken != -1)
  {
    dispatch_once(&_sendAllPhotosSortOrderAnalyticsEvent__onceToken, block);
  }
}

uint64_t __67__PXCuratedLibraryViewModel__sendAllPhotosSortOrderAnalyticsEvent___block_invoke(uint64_t a1)
{
  if (*(a1 + 32) == 1)
  {
    v1 = @"com.apple.photos.CPAnalytics.allPhotosSortOrderDateCreated";
  }

  else
  {
    v1 = @"com.apple.photos.CPAnalytics.allPhotosSortOrderDateAdded";
  }

  return [MEMORY[0x1E6991F28] sendEvent:v1 withPayload:MEMORY[0x1E695E0F8]];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  if (PXUserDefaultsObservationContext == context)
  {
    v10 = MEMORY[0x1E695E000];
    objectCopy = object;
    standardUserDefaults = [v10 standardUserDefaults];
    LODWORD(v10) = [objectCopy isEqual:standardUserDefaults];

    if (v10)
    {
      if ([pathCopy isEqual:*off_1E7722280])
      {

LABEL_7:
        _updatedContentFilterState = [(PXCuratedLibraryViewModel *)self _updatedContentFilterState];
        objc_initWeak(&location, self);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __76__PXCuratedLibraryViewModel_observeValueForKeyPath_ofObject_change_context___block_invoke;
        block[3] = &unk_1E774B248;
        objc_copyWeak(&v18, &location);
        v17 = _updatedContentFilterState;
        v15 = _updatedContentFilterState;
        dispatch_async(MEMORY[0x1E69E96A0], block);

        objc_destroyWeak(&v18);
        objc_destroyWeak(&location);
        goto LABEL_8;
      }

      v13 = [pathCopy isEqual:*off_1E7722278];

      if (v13)
      {
        goto LABEL_7;
      }
    }

    else
    {
    }
  }

LABEL_8:
}

void __76__PXCuratedLibraryViewModel_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __76__PXCuratedLibraryViewModel_observeValueForKeyPath_ofObject_change_context___block_invoke_2;
  v3[3] = &unk_1E7737090;
  objc_copyWeak(&v5, (a1 + 40));
  v4 = *(a1 + 32);
  [WeakRetained performChanges:v3];

  objc_destroyWeak(&v5);
}

void __76__PXCuratedLibraryViewModel_observeValueForKeyPath_ofObject_change_context___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setAllPhotosContentFilterState:v1];
}

- (id)_updatedContentFilterState
{
  standardUserDefaults = [off_1E7721948 standardUserDefaults];
  allPhotosContentFilterState = [(PXCuratedLibraryViewModel *)self allPhotosContentFilterState];
  v5 = [allPhotosContentFilterState copy];

  includeScreenshots = [standardUserDefaults includeScreenshots];
  [v5 setIncludeScreenshots:{objc_msgSend(includeScreenshots, "BOOLValue")}];

  includeSharedWithYou = [standardUserDefaults includeSharedWithYou];
  [v5 setIncludeSharedWithYou:{objc_msgSend(includeSharedWithYou, "BOOLValue")}];

  return v5;
}

- (void)assetsDataSourceManagerDidFinishBackgroundFetching:(id)fetching
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __80__PXCuratedLibraryViewModel_assetsDataSourceManagerDidFinishBackgroundFetching___block_invoke;
  v3[3] = &unk_1E7748B68;
  v3[4] = self;
  [(PXCuratedLibraryViewModel *)self performChanges:v3];
}

- (void)_handleSelectionManagerChange:(unint64_t)change
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __59__PXCuratedLibraryViewModel__handleSelectionManagerChange___block_invoke;
  v3[3] = &unk_1E7737140;
  v3[4] = self;
  v3[5] = change;
  [(PXCuratedLibraryViewModel *)self performChanges:v3];
}

void __59__PXCuratedLibraryViewModel__handleSelectionManagerChange___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = *(a1 + 40);
  if ((v3 & 2) != 0)
  {
    [*(a1 + 32) _invalidateCurrentDataSource];
    v3 = *(a1 + 40);
  }

  if (v3)
  {
    v4 = [*(a1 + 32) selectionManager];
    v5 = [*(a1 + 32) lastSelectionSnapshot];
    v6 = [v4 hasAnyChangesFromSelection:v5];

    if (v6)
    {
      [*(a1 + 32) _invalidateAssetActionManager];
    }

    [*(a1 + 32) signalChange:8];
  }

  v7 = [*(a1 + 32) selectionSnapshot];
  [*(a1 + 32) setLastSelectionSnapshot:v7];
}

- (void)_handleIsSelectingChange
{
  if (![(PXCuratedLibraryViewModel *)self isSelecting])
  {
    selectionManager = [(PXCuratedLibraryViewModel *)self selectionManager];
    [selectionManager performChanges:&__block_literal_global_302_91267];
  }

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __53__PXCuratedLibraryViewModel__handleIsSelectingChange__block_invoke_2;
  v4[3] = &unk_1E7748B68;
  v4[4] = self;
  [(PXCuratedLibraryViewModel *)self performChanges:v4];
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  observableCopy = observable;
  v10 = observableCopy;
  if (PXCuratedLibraryViewModelObserverContext_91269 == context)
  {
    if (change)
    {
      [(PXCuratedLibraryViewModel *)self _handleIsSelectingChange];
    }

    if ((change & 0x10000) != 0)
    {
      allowedActions = [(PXCuratedLibraryViewModel *)self allowedActions];
      v13 = [allowedActions containsObject:@"PXCuratedLibraryActionNavigateToYearsMonthsOrDays"];

      if ((v13 & 1) == 0)
      {
        v11 = &__block_literal_global_294;
        goto LABEL_58;
      }
    }
  }

  else if (PXCuratedLibraryViewModelZoomablePhotosObserverContext == context)
  {
    if (change)
    {
      v56[0] = MEMORY[0x1E69E9820];
      v56[1] = 3221225472;
      v56[2] = __58__PXCuratedLibraryViewModel_observable_didChange_context___block_invoke_2;
      v56[3] = &unk_1E7748B68;
      v56[4] = self;
      [(PXCuratedLibraryViewModel *)self performChanges:v56];
    }

    if ((change & 0x2000000) != 0)
    {
      v55[0] = MEMORY[0x1E69E9820];
      v55[1] = 3221225472;
      v55[2] = __58__PXCuratedLibraryViewModel_observable_didChange_context___block_invoke_3;
      v55[3] = &unk_1E7748B68;
      v55[4] = self;
      v11 = v55;
      goto LABEL_58;
    }
  }

  else if (PXCuratedLibraryViewModelSelectionObserverContext == context)
  {
    [(PXCuratedLibraryViewModel *)self _handleSelectionManagerChange:change];
  }

  else if (PXCuratedLibraryViewModelScrollingSpeedometerObserverContext == context)
  {
    if ((change & 0xA) != 0)
    {
      v54[0] = MEMORY[0x1E69E9820];
      v54[1] = 3221225472;
      v54[2] = __58__PXCuratedLibraryViewModel_observable_didChange_context___block_invoke_4;
      v54[3] = &unk_1E7748B68;
      v54[4] = self;
      v11 = v54;
      goto LABEL_58;
    }
  }

  else if (PXCuratedLibraryViewModelSpecManagerObserverContext == context)
  {
    if (change)
    {
      [(PXCuratedLibraryViewModel *)self _handleSpecChange];
    }
  }

  else if (PXCuratedLibraryViewModelAnalysisStatusObserverContext == context)
  {
    if ((change & 0x20) != 0)
    {
      v53[0] = MEMORY[0x1E69E9820];
      v53[1] = 3221225472;
      v53[2] = __58__PXCuratedLibraryViewModel_observable_didChange_context___block_invoke_5;
      v53[3] = &unk_1E7748B68;
      v53[4] = self;
      v11 = v53;
      goto LABEL_58;
    }
  }

  else if (PXCuratedLibraryViewModelAllPhotosDataSourceManagerObserverContext == context)
  {
    if (change)
    {
      v52[0] = MEMORY[0x1E69E9820];
      v52[1] = 3221225472;
      v52[2] = __58__PXCuratedLibraryViewModel_observable_didChange_context___block_invoke_6;
      v52[3] = &unk_1E7748B68;
      v52[4] = self;
      v11 = v52;
      goto LABEL_58;
    }
  }

  else if (PXCuratedLibraryViewModelAssetsDataSourceManagerObserverContext == context)
  {
    if ((change & 2) != 0)
    {
      selectionManager = [(PXCuratedLibraryViewModel *)self selectionManager];
      [selectionManager performChanges:&__block_literal_global_296];

      [(PXCuratedLibraryViewModel *)self _invalidateAssetCollectionActionManager];
    }

    if ((change & 4) != 0)
    {
      v51[0] = MEMORY[0x1E69E9820];
      v51[1] = 3221225472;
      v51[2] = __58__PXCuratedLibraryViewModel_observable_didChange_context___block_invoke_8;
      v51[3] = &unk_1E7748B68;
      v51[4] = self;
      v11 = v51;
      goto LABEL_58;
    }
  }

  else if (PXCuratedLibraryViewModelAssetSelectionTypeObserverContext == context)
  {
    if (change)
    {
      v49[0] = MEMORY[0x1E69E9820];
      v49[1] = 3221225472;
      v49[2] = __58__PXCuratedLibraryViewModel_observable_didChange_context___block_invoke_9;
      v49[3] = &unk_1E7737068;
      v49[4] = self;
      v50 = observableCopy;
      [(PXCuratedLibraryViewModel *)self performChanges:v49];
    }
  }

  else if (PXSharedLibrarySharingSuggestionsCountsManagerObservationContext == context)
  {
    if ((change & 0xA) != 0)
    {
      v44 = MEMORY[0x1E69E9820];
      v45 = 3221225472;
      v46 = __58__PXCuratedLibraryViewModel_observable_didChange_context___block_invoke_10;
      v47 = &unk_1E7748B68;
      selfCopy = self;
      v11 = &v44;
      goto LABEL_58;
    }
  }

  else if (PXPhotosSortOrderStateObservationContext == context)
  {
    if (change)
    {
      v39 = MEMORY[0x1E69E9820];
      v40 = 3221225472;
      v41 = __58__PXCuratedLibraryViewModel_observable_didChange_context___block_invoke_11;
      v42 = &unk_1E7748B68;
      selfCopy2 = self;
      v11 = &v39;
      goto LABEL_58;
    }
  }

  else if (PXSharedLibraryCameraSharingBannerStatusProviderObservationContext == context)
  {
    if (change)
    {
      v34 = MEMORY[0x1E69E9820];
      v35 = 3221225472;
      v36 = __58__PXCuratedLibraryViewModel_observable_didChange_context___block_invoke_12;
      v37 = &unk_1E7748B68;
      selfCopy3 = self;
      v11 = &v34;
      goto LABEL_58;
    }
  }

  else if (PXMacSyncedAssetsStatusProviderObservationContext == context)
  {
    if (change)
    {
      v29 = MEMORY[0x1E69E9820];
      v30 = 3221225472;
      v31 = __58__PXCuratedLibraryViewModel_observable_didChange_context___block_invoke_13;
      v32 = &unk_1E7748B68;
      selfCopy4 = self;
      v11 = &v29;
      goto LABEL_58;
    }
  }

  else if (PXSharedLibraryStatusProviderObservationContext_91270 == context)
  {
    if ((change & 3) != 0)
    {
      if (change)
      {
        sharedLibraryStatusProvider = [(PXCuratedLibraryViewModel *)self sharedLibraryStatusProvider];
        if ([sharedLibraryStatusProvider hasSharedLibraryOrPreview])
        {
          v15 = 2;
        }

        else
        {
          v15 = 0;
        }
      }

      else
      {
        v15 = 0;
      }

      libraryFilterState = [(PXCuratedLibraryViewModel *)self libraryFilterState];
      [libraryFilterState setViewMode:v15];

      v24 = MEMORY[0x1E69E9820];
      v25 = 3221225472;
      v26 = __58__PXCuratedLibraryViewModel_observable_didChange_context___block_invoke_14;
      v27 = &unk_1E7748B68;
      selfCopy5 = self;
      v11 = &v24;
      goto LABEL_58;
    }
  }

  else
  {
    if (PXLibraryFilterStateObservationContext_91271 != context)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryViewModel.m" lineNumber:1609 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    if (change)
    {
      v19 = MEMORY[0x1E69E9820];
      v20 = 3221225472;
      v21 = __58__PXCuratedLibraryViewModel_observable_didChange_context___block_invoke_15;
      v22 = &unk_1E7748B68;
      selfCopy6 = self;
      v11 = &v19;
LABEL_58:
      [(PXCuratedLibraryViewModel *)self performChanges:v11, v19, v20, v21, v22, selfCopy6, v24, v25, v26, v27, selfCopy5, v29, v30, v31, v32, selfCopy4, v34, v35, v36, v37, selfCopy3, v39, v40, v41, v42, selfCopy2, v44, v45, v46, v47, selfCopy];
    }
  }
}

uint64_t __58__PXCuratedLibraryViewModel_observable_didChange_context___block_invoke_9(uint64_t a1)
{
  v3 = [*(a1 + 40) typedCount];
  v4 = *(a1 + 32);

  return [v4 setSelectedAssetsTypedCount:{v3, v2}];
}

uint64_t __58__PXCuratedLibraryViewModel_observable_didChange_context___block_invoke_11(uint64_t a1)
{
  [MEMORY[0x1E6991F28] sendEvent:@"com.apple.photos.CPAnalytics.allPhotosSortOrderChanged" withPayload:MEMORY[0x1E695E0F8]];
  v2 = *(a1 + 32);

  return [v2 _invalidateAssetsDataSourceManager];
}

uint64_t __58__PXCuratedLibraryViewModel_observable_didChange_context___block_invoke_14(uint64_t a1)
{
  [*(a1 + 32) _invalidateBannerViewConfiguration];
  [*(a1 + 32) _invalidateChromeVisibility];
  v2 = *(a1 + 32);

  return [v2 _invalidateAllowedActions];
}

uint64_t __58__PXCuratedLibraryViewModel_observable_didChange_context___block_invoke_15(uint64_t a1)
{
  [*(a1 + 32) _invalidateAssetsDataSourceManager];
  [*(a1 + 32) _invalidateCurrentDataSource];
  v2 = *(a1 + 32);

  return [v2 _invalidateAllowedActions];
}

- (int64_t)curatedLibraryAssetsDataSourceManager:(id)manager transitionTypeFromZoomLevel:(int64_t)level toZoomLevel:(int64_t)zoomLevel
{
  mainPresenter = [(PXCuratedLibraryViewModel *)self mainPresenter];
  if (objc_opt_respondsToSelector())
  {
    v9 = [mainPresenter viewModel:self transitionTypeFromZoomLevel:level toZoomLevel:zoomLevel];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)curatedLibraryAssetsDataSourceManager:(id)manager dominantAssetCollectionReferenceForZoomLevel:(int64_t)level
{
  mainPresenter = [(PXCuratedLibraryViewModel *)self mainPresenter];
  v7 = [mainPresenter viewModel:self dominantAssetCollectionReferenceForZoomLevel:level];

  return v7;
}

- (void)curatedLibraryAssetsDataSourceManager:(id)manager didTransitionFromZoomLevel:(int64_t)level toZoomLevel:(int64_t)zoomLevel
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [(PXCuratedLibraryViewModel *)self presenters:manager];
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v14 + 1) + 8 * v12);
        if (objc_opt_respondsToSelector())
        {
          [v13 viewModel:self didTransitionFromZoomLevel:level toZoomLevel:zoomLevel];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }
}

- (void)curatedLibraryAssetsDataSourceManager:(id)manager willTransitionFromZoomLevel:(int64_t)level toZoomLevel:(int64_t)zoomLevel
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [(PXCuratedLibraryViewModel *)self presenters:manager];
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v14 + 1) + 8 * v12);
        if (objc_opt_respondsToSelector())
        {
          [v13 viewModel:self willTransitionFromZoomLevel:level toZoomLevel:zoomLevel];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }
}

- (id)visibleAssetCollectionsFromCuratedLibraryAssetsDataSourceManager:(id)manager
{
  visibleAssetCollections = [(PXCuratedLibraryViewModel *)self visibleAssetCollections];
  v4 = [visibleAssetCollections copy];

  return v4;
}

- (void)_updateIsModalInPresentation
{
  isSelecting = [(PXCuratedLibraryViewModel *)self isSelecting];

  [(PXCuratedLibraryViewModel *)self setIsModalInPresentation:isSelecting];
}

- (void)_invalidateIsModalInPresentation
{
  updater = [(PXCuratedLibraryViewModel *)self updater];
  [updater setNeedsUpdateOf:sel__updateIsModalInPresentation];
}

- (void)setSecondaryToolbarVisibility:(double)visibility
{
  if (self->_secondaryToolbarVisibility != visibility)
  {
    self->_secondaryToolbarVisibility = visibility;
    [(PXCuratedLibraryViewModel *)self signalChange:0x2000000000];
  }
}

- (void)setShouldShowEmptyPlaceholder:(BOOL)placeholder
{
  if (self->_shouldShowEmptyPlaceholder != placeholder)
  {
    self->_shouldShowEmptyPlaceholder = placeholder;
    [(PXCuratedLibraryViewModel *)self _invalidateDesiredVerticalAlignment];
    [(PXCuratedLibraryViewModel *)self _invalidateAllowedActions];

    [(PXCuratedLibraryViewModel *)self signalChange:0x1000000000];
  }
}

- (void)setContentFillsTopSafeArea:(BOOL)area
{
  if (self->_contentFillsTopSafeArea != area)
  {
    self->_contentFillsTopSafeArea = area;
    [(PXCuratedLibraryViewModel *)self signalChange:0x100000000000];
  }
}

- (void)_updateContentFillsTopSafeArea
{
  if ([(PXCuratedLibraryViewModel *)self zoomLevel]== 4)
  {
    zoomablePhotosViewModel = [(PXCuratedLibraryViewModel *)self zoomablePhotosViewModel];
    -[PXCuratedLibraryViewModel setContentFillsTopSafeArea:](self, "setContentFillsTopSafeArea:", [zoomablePhotosViewModel isDisplayingIndividualItems] ^ 1);
  }

  else
  {

    [(PXCuratedLibraryViewModel *)self setContentFillsTopSafeArea:0];
  }
}

- (void)_invalidateContentFillsTopSafeArea
{
  updater = [(PXCuratedLibraryViewModel *)self updater];
  [updater setNeedsUpdateOf:sel__updateContentFillsTopSafeArea];
}

- (void)setAllowedActions:(id)actions
{
  actionsCopy = actions;
  if (![(NSSet *)self->_allowedActions isEqualToSet:?])
  {
    objc_storeStrong(&self->_allowedActions, actions);
    [(PXCuratedLibraryViewModel *)self signalChange:0x10000];
  }
}

- (void)_invalidateChromeVisibilityWithChangeReason:(int64_t)reason
{
  if (reason)
  {
    self->_pendingChromeVisibilityChangeReason = reason;
  }

  updater = [(PXCuratedLibraryViewModel *)self updater];
  [updater setNeedsUpdateOf:sel__updateChromeVisibility];
}

- (void)_updateSelectModeCaption
{
  selectionSnapshot = [(PXCuratedLibraryViewModel *)self selectionSnapshot];
  if ([selectionSnapshot isAnyItemSelected])
  {
    selectedAssetsTypedCount = [(PXCuratedLibraryViewModel *)self selectedAssetsTypedCount];
    v6 = v5;
  }

  else
  {
    selectedAssetsTypedCount = *off_1E7721F88;
    v6 = *(off_1E7721F88 + 1);
  }

  sharedLibraryStatusProvider = [(PXCuratedLibraryViewModel *)self sharedLibraryStatusProvider];
  if ([sharedLibraryStatusProvider hasPreview])
  {
    isAnyItemSelected = [selectionSnapshot isAnyItemSelected];

    if (isAnyItemSelected)
    {
      assetActionManager = [(PXCuratedLibraryViewModel *)self assetActionManager];
      v10 = [assetActionManager canPerformActionType:*off_1E7721B10];
      v11 = [assetActionManager canPerformActionType:*off_1E7721B18];
      if (v10 & 1) != 0 || (v11)
      {
        v12 = 15;
        if ((v10 & v11) == 0)
        {
          v12 = 16;
        }

        if (v10)
        {
          v13 = v12;
        }

        else
        {
          v13 = 17;
        }

        PXLocalizedSharedLibraryAssetCountForUsage(selectedAssetsTypedCount, v6, 0, v13);
      }

      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryViewModel.m" lineNumber:1008 description:@"Code which should be unreachable has been reached"];

      abort();
    }
  }

  else
  {
  }

  v14 = PXLocalizedSelectModeCaption([(PXCuratedLibraryViewModel *)self isSelecting], selectedAssetsTypedCount, v6);
  [(PXCuratedLibraryViewModel *)self setSelectModeCaption:v14];
}

- (void)_invalidateSelectModeCaption
{
  updater = [(PXCuratedLibraryViewModel *)self updater];
  [updater setNeedsUpdateOf:sel__updateSelectModeCaption];
}

- (void)setSelectedAssetsTypedCount:(id)count
{
  if (count.var0 != self->_selectedAssetsTypedCount.count || count.var1 != self->_selectedAssetsTypedCount.type)
  {
    self->_selectedAssetsTypedCount = count;
    [(PXCuratedLibraryViewModel *)self signalChange:0x8000000];

    [(PXCuratedLibraryViewModel *)self _invalidateSelectModeCaption];
  }
}

- (void)_invalidateAssetActionManager
{
  assetActionManager = [(PXCuratedLibraryViewModel *)self assetActionManager];
  allowedActionTypes = [assetActionManager allowedActionTypes];

  v4 = [(PXCuratedLibraryViewModel *)self _assetActionManagerWithAllowedActionTypes:allowedActionTypes];
  assetActionManager = self->_assetActionManager;
  self->_assetActionManager = v4;
}

- (void)setDesiredVerticalAlignment:(unint64_t)alignment
{
  if (self->_desiredVerticalAlignment != alignment)
  {
    self->_desiredVerticalAlignment = alignment;
    [(PXCuratedLibraryViewModel *)self signalChange:0x800000000];
  }
}

- (void)resetToInitialState
{
  [(PXCuratedLibraryViewModel *)self setIsResetting:1];
  [(PXCuratedLibraryViewModel *)self setIsSelecting:0];
  [(PXCuratedLibraryViewModel *)self setZoomLevel:4];
  allPhotosContentFilterState = [(PXCuratedLibraryViewModel *)self allPhotosContentFilterState];
  isFiltering = [allPhotosContentFilterState isFiltering];

  if (isFiltering)
  {
    [(PXCuratedLibraryViewModel *)self resetAllPhotosContentFilterState];
  }

  zoomablePhotosViewModel = [(PXCuratedLibraryViewModel *)self zoomablePhotosViewModel];
  [zoomablePhotosViewModel performChanges:&__block_literal_global_272_91318];
}

- (BOOL)isResetToInitialState
{
  if (-[PXCuratedLibraryViewModel zoomLevel](self, "zoomLevel") == 4 && (-[PXCuratedLibraryViewModel allPhotosContentFilterState](self, "allPhotosContentFilterState"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 isFiltering], v3, (v4 & 1) == 0) && (-[PXCuratedLibraryViewModel zoomablePhotosViewModel](self, "zoomablePhotosViewModel"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "isResetToInitialState"), v5, v6))
  {
    return ![(PXCuratedLibraryViewModel *)self isSelecting];
  }

  else
  {
    return 0;
  }
}

- (void)setScrolledToBottom:(BOOL)bottom
{
  if (self->_scrolledToBottom != bottom)
  {
    self->_scrolledToBottom = bottom;
    [(PXCuratedLibraryViewModel *)self signalChange:0x40000000000];
  }
}

- (void)setScrolledToTop:(BOOL)top
{
  if (self->_scrolledToTop != top)
  {
    self->_scrolledToTop = top;
    [(PXCuratedLibraryViewModel *)self signalChange:0x20000000000];
  }
}

- (void)setSecondaryToolbarLegibilityGradientIsVisible:(BOOL)visible
{
  if (self->_secondaryToolbarLegibilityGradientIsVisible != visible)
  {
    self->_secondaryToolbarLegibilityGradientIsVisible = visible;
    [(PXCuratedLibraryViewModel *)self signalChange:0x400000000];
  }
}

- (void)setIsModalInPresentation:(BOOL)presentation
{
  if (self->_isModalInPresentation != presentation)
  {
    self->_isModalInPresentation = presentation;
    [(PXCuratedLibraryViewModel *)self signalChange:0x200000000];
  }
}

- (void)setBannerViewConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v5 = self->_bannerViewConfiguration;
  v6 = v5;
  if (v5 == configurationCopy)
  {
  }

  else
  {
    v7 = [(PXBannerViewConfiguration *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_bannerViewConfiguration, configuration);
      [(PXCuratedLibraryViewModel *)self _invalidateChromeVisibility];
      [(PXCuratedLibraryViewModel *)self signalChange:0x80000000];
    }
  }
}

- (void)setUserWantsAspectFitContent:(id)content
{
  contentCopy = content;
  userWantsAspectFitContent = self->_userWantsAspectFitContent;
  if (userWantsAspectFitContent != contentCopy)
  {
    v12 = contentCopy;
    v6 = [(NSNumber *)userWantsAspectFitContent isEqual:contentCopy];
    contentCopy = v12;
    if ((v6 & 1) == 0)
    {
      v7 = [(NSNumber *)v12 copy];
      v8 = self->_userWantsAspectFitContent;
      self->_userWantsAspectFitContent = v7;

      specManager = [(PXCuratedLibraryViewModel *)self specManager];
      spec = [specManager spec];

      if ([spec userInterfaceIdiom] == 2 && objc_msgSend(spec, "sizeClass") == 1)
      {
        standardUserDefaults = [off_1E7721948 standardUserDefaults];
        [standardUserDefaults setAllPhotosAspectFitInCompact:v12];
      }

      else
      {
        standardUserDefaults = [off_1E7721948 standardUserDefaults];
        [standardUserDefaults setAllPhotosAspectFit:v12];
      }

      [(PXCuratedLibraryViewModel *)self _invalidateAspectFitContent];
      contentCopy = v12;
    }
  }
}

- (void)setAspectFitContent:(BOOL)content
{
  if (self->_aspectFitContent != content)
  {
    self->_aspectFitContent = content;
    [(PXCuratedLibraryViewModel *)self _invalidateZoomablePhotosViewModel];

    [(PXCuratedLibraryViewModel *)self signalChange:0x80000000000];
  }
}

- (void)setSidebarCanBecomeVisible:(BOOL)visible
{
  if (self->_sidebarCanBecomeVisible != visible)
  {
    self->_sidebarCanBecomeVisible = visible;
    [(PXCuratedLibraryViewModel *)self _invalidateAllowedActions];

    [(PXCuratedLibraryViewModel *)self signalChange:0x40000000];
  }
}

- (void)setCplActionManagerClass:(Class)class
{
  v10 = *MEMORY[0x1E69E9840];
  if (self->_cplActionManagerClass != class)
  {
    objc_storeStrong(&self->_cplActionManagerClass, class);
    cplUIStatusProvider = self->_cplUIStatusProvider;
    if (cplUIStatusProvider)
    {
      self->_cplUIStatusProvider = 0;

      v5 = PLUserStatusUIGetLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = 138543618;
        v7 = objc_opt_class();
        v8 = 2048;
        selfCopy = self;
        _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_DEFAULT, "<%{public}@:%p> Did reset PXCPLUIStatusProvider", &v6, 0x16u);
      }
    }

    [(PXCuratedLibraryViewModel *)self signalChange:0x10000000];
  }
}

- (void)setLastScrollDirection:(CGPoint)direction
{
  if (direction.x != self->_lastScrollDirection.x || direction.y != self->_lastScrollDirection.y)
  {
    self->_lastScrollDirection = direction;
    [(PXCuratedLibraryViewModel *)self signalChange:4096];
  }
}

- (void)setScrollRegime:(int64_t)regime
{
  if (self->_scrollRegime != regime)
  {
    self->_scrollRegime = regime;
    [(PXCuratedLibraryViewModel *)self signalChange:2048];
  }
}

- (void)setScrollingSpeedometer:(id)speedometer
{
  speedometerCopy = speedometer;
  scrollingSpeedometer = self->_scrollingSpeedometer;
  if (scrollingSpeedometer != speedometerCopy)
  {
    v7 = speedometerCopy;
    [(PXScrollViewSpeedometer *)scrollingSpeedometer unregisterChangeObserver:self context:PXCuratedLibraryViewModelScrollingSpeedometerObserverContext];
    objc_storeStrong(&self->_scrollingSpeedometer, speedometer);
    [(PXScrollViewSpeedometer *)self->_scrollingSpeedometer registerChangeObserver:self context:PXCuratedLibraryViewModelScrollingSpeedometerObserverContext];
    [(PXCuratedLibraryViewModel *)self _invalidateScrollingProperties];
    speedometerCopy = v7;
  }
}

- (id)_indexPathsForAssetCollectionReference:(id)reference
{
  referenceCopy = reference;
  v11 = 0u;
  v12 = 0u;
  currentDataSource = [(PXCuratedLibraryViewModel *)self currentDataSource];
  v6 = currentDataSource;
  if (currentDataSource)
  {
    [currentDataSource indexPathForAssetCollectionReference:referenceCopy];
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  currentDataSource2 = [(PXCuratedLibraryViewModel *)self currentDataSource];
  v10[0] = v11;
  v10[1] = v12;
  v8 = [currentDataSource2 indexPathSetForItemsInIndexPath:v10];

  return v8;
}

- (void)toggleSelectionForAssetCollectionReference:(id)reference
{
  v4 = [(PXCuratedLibraryViewModel *)self _indexPathsForAssetCollectionReference:reference];
  selectionSnapshot = [(PXCuratedLibraryViewModel *)self selectionSnapshot];
  selectedIndexPaths = [selectionSnapshot selectedIndexPaths];
  v7 = [v4 isSubsetOfSet:selectedIndexPaths];

  selectionManager = [(PXCuratedLibraryViewModel *)self selectionManager];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __72__PXCuratedLibraryViewModel_toggleSelectionForAssetCollectionReference___block_invoke;
  v10[3] = &unk_1E77493D8;
  v12 = v7;
  v11 = v4;
  v9 = v4;
  [selectionManager performChanges:v10];
}

- (void)toggleSelectionForAssetReference:(id)reference updateCursorIndexPath:(BOOL)path
{
  pathCopy = path;
  v14 = *MEMORY[0x1E69E9840];
  referenceCopy = reference;
  v11 = 0u;
  v12 = 0u;
  currentDataSource = [(PXCuratedLibraryViewModel *)self currentDataSource];
  v8 = currentDataSource;
  if (currentDataSource)
  {
    [currentDataSource indexPathForAssetReference:referenceCopy];
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  if (v11 == *off_1E7721F68)
  {
    v9 = PLUIGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      currentDataSource2 = [(PXCuratedLibraryViewModel *)self currentDataSource];
      *buf = 138412546;
      *&buf[4] = referenceCopy;
      *&buf[12] = 2112;
      *&buf[14] = currentDataSource2;
      _os_log_impl(&dword_1A3C1C000, v9, OS_LOG_TYPE_DEFAULT, "can't toggle selection for %@ because it's not in %@", buf, 0x16u);
    }
  }

  else
  {
    *buf = v11;
    *&buf[16] = v12;
    [(PXCuratedLibraryViewModel *)self toggleSelectionForIndexPath:buf updateCursorIndexPath:pathCopy];
  }
}

- (void)toggleSelectionForIndexPath:(PXSimpleIndexPath *)path updateCursorIndexPath:(BOOL)indexPath
{
  selectionSnapshot = [(PXCuratedLibraryViewModel *)self selectionSnapshot];
  v8 = *&path->item;
  v17[0] = *&path->dataSourceIdentifier;
  v17[1] = v8;
  v9 = [selectionSnapshot isIndexPathSelected:v17];

  selectionManager = [(PXCuratedLibraryViewModel *)self selectionManager];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __79__PXCuratedLibraryViewModel_toggleSelectionForIndexPath_updateCursorIndexPath___block_invoke;
  v12[3] = &__block_descriptor_66_e37_v16__0___PXMutableSelectionManager__8l;
  v15 = v9;
  v11 = *&path->item;
  v13 = *&path->dataSourceIdentifier;
  v14 = v11;
  indexPathCopy = indexPath;
  [selectionManager performChanges:v12];
}

uint64_t __79__PXCuratedLibraryViewModel_toggleSelectionForIndexPath_updateCursorIndexPath___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 64);
  v3 = *(a1 + 65);
  v4 = *(a1 + 48);
  v6[0] = *(a1 + 32);
  v6[1] = v4;
  return [a2 setSelectedState:(v2 & 1) == 0 forIndexPath:v6 andUpdateCursorIndexPath:v3];
}

- (void)toggleSelectionForIndexPath:(PXSimpleIndexPath *)path
{
  v3 = *&path->item;
  v4[0] = *&path->dataSourceIdentifier;
  v4[1] = v3;
  [(PXCuratedLibraryViewModel *)self toggleSelectionForIndexPath:v4 updateCursorIndexPath:0];
}

- (PXAssetCollectionActionManager)assetCollectionActionManager
{
  assetCollectionActionManager = self->_assetCollectionActionManager;
  if (!assetCollectionActionManager)
  {
    assetsDataSourceManager = [(PXCuratedLibraryViewModel *)self assetsDataSourceManager];
    currentPhotoKitAssetsDataSourceManager = [assetsDataSourceManager currentPhotoKitAssetsDataSourceManager];

    v6 = [[PXPhotoKitAssetCollectionActionManager alloc] initWithAssetCollectionReference:0 displayTitleInfo:0];
    [(PXAssetCollectionActionManager *)v6 setAssetsDataSourceManager:currentPhotoKitAssetsDataSourceManager];
    v7 = self->_assetCollectionActionManager;
    self->_assetCollectionActionManager = &v6->super;

    assetCollectionActionManager = self->_assetCollectionActionManager;
  }

  return assetCollectionActionManager;
}

- (id)_assetActionManagerWithAllowedActionTypes:(id)types
{
  typesCopy = types;
  assetsDataSourceManager = [(PXCuratedLibraryViewModel *)self assetsDataSourceManager];
  currentPhotoKitAssetsDataSourceManager = [assetsDataSourceManager currentPhotoKitAssetsDataSourceManager];

  selectionManager = [(PXCuratedLibraryViewModel *)self selectionManager];
  v8 = [[PXPhotoKitAssetActionManager alloc] initWithSelectionManager:selectionManager];
  [(PXPhotoKitAssetActionManager *)v8 setDataSourceManager:currentPhotoKitAssetsDataSourceManager];
  [(PXActionManager *)v8 setAllowedActionTypes:typesCopy];

  return v8;
}

- (PXAssetActionManager)assetActionManager
{
  assetActionManager = self->_assetActionManager;
  if (!assetActionManager)
  {
    v4 = [(PXCuratedLibraryViewModel *)self _assetActionManagerWithAllowedActionTypes:0];
    v5 = self->_assetActionManager;
    self->_assetActionManager = v4;

    assetActionManager = self->_assetActionManager;
  }

  return assetActionManager;
}

- (void)setCurrentDataSource:(id)source
{
  sourceCopy = source;
  if (self->_currentDataSource != sourceCopy)
  {
    v6 = sourceCopy;
    objc_storeStrong(&self->_currentDataSource, source);
    [(PXCuratedLibraryViewModel *)self signalChange:16];
    [(PXCuratedLibraryViewModel *)self _invalidateDraggedAssetReferences];
    [(PXCuratedLibraryViewModel *)self _invalidateAllowedActions];
    sourceCopy = v6;
  }
}

- (void)setAllPhotosContentFilterState:(id)state
{
  stateCopy = state;
  v5 = stateCopy;
  if (self->_allPhotosContentFilterState != stateCopy)
  {
    v9 = stateCopy;
    v6 = [(PXContentFilterState *)stateCopy isEqual:?];
    v5 = v9;
    if (!v6)
    {
      v7 = [(PXContentFilterState *)v9 copy];
      allPhotosContentFilterState = self->_allPhotosContentFilterState;
      self->_allPhotosContentFilterState = v7;

      [(PXCuratedLibraryViewModel *)self signalChange:0x4000000];
      [(PXCuratedLibraryViewModel *)self _invalidateCurrentContentFilterState];
      [(PXCuratedLibraryViewModel *)self _invalidateAssetsDataSourceManager];
      [(PXCuratedLibraryViewModel *)self _invalidateAllowedActions];
      v5 = v9;
    }
  }
}

- (void)userDidSetAllPhotosContentFilterState:(id)state
{
  v8 = *MEMORY[0x1E69E9840];
  stateCopy = state;
  if ([(PXCuratedLibraryViewModel *)self zoomLevel]== 4)
  {
    [(PXCuratedLibraryViewModel *)self setAllPhotosContentFilterState:stateCopy];
  }

  else
  {
    v5 = PLUIGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 134217984;
      zoomLevel = [(PXCuratedLibraryViewModel *)self zoomLevel];
      _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_DEFAULT, "Attempted content filtering with unexpected zoom level %li", &v6, 0xCu);
    }
  }
}

- (void)setCurrentContentFilterState:(id)state
{
  stateCopy = state;
  v5 = stateCopy;
  if (self->_currentContentFilterState != stateCopy)
  {
    v9 = stateCopy;
    v6 = [(PXContentFilterState *)stateCopy isEqual:?];
    v5 = v9;
    if (!v6)
    {
      v7 = [(PXContentFilterState *)v9 copy];
      currentContentFilterState = self->_currentContentFilterState;
      self->_currentContentFilterState = v7;

      [(PXCuratedLibraryViewModel *)self signalChange:0x2000000];
      [(PXCuratedLibraryViewModel *)self _invalidateAllowedActions];
      [(PXCuratedLibraryViewModel *)self _invalidateShouldShowEmptyPlaceholder];
      v5 = v9;
    }
  }
}

- (int64_t)zoomLevelInDirection:(int64_t)direction fromZoomLevel:(int64_t)level
{
  if (direction >= 1)
  {
    directionCopy = 1;
  }

  else
  {
    directionCopy = direction;
  }

  if (directionCopy < 0)
  {
    v6 = -1;
  }

  else
  {
    v6 = directionCopy;
  }

  configuration = [(PXCuratedLibraryViewModel *)self configuration];
  v8 = v6 + level;
  if (v8 > 4)
  {
LABEL_10:
    v8 = 0;
  }

  else
  {
    while (([configuration isZoomLevelEnabled:v8] & 1) == 0)
    {
      v8 += v6;
      if (v8 >= 5)
      {
        goto LABEL_10;
      }
    }
  }

  return v8;
}

- (void)setZoomLevel:(int64_t)level
{
  zoomLevel = self->_zoomLevel;
  if (zoomLevel != level)
  {
    self->_zoomLevel = level;
    [(PXCuratedLibraryViewModel *)self signalChange:4];
    [(PXCuratedLibraryViewModel *)self _invalidateAssetsDataSourceManager];
    [(PXCuratedLibraryViewModel *)self _invalidateAllowedActions];
    [(PXCuratedLibraryViewModel *)self _invalidateContentFillsTopSafeArea];
    [(PXCuratedLibraryViewModel *)self _invalidateCurrentContentFilterState];
    if (![(PXCuratedLibraryViewModel *)self isPerformingInitialChanges])
    {
      v6 = [MEMORY[0x1E696AD98] numberWithInteger:level];
      standardUserDefaults = [off_1E7721948 standardUserDefaults];
      [standardUserDefaults setCuratedLibraryZoomLevel:v6];
    }

    if (level == 4 && (zoomLevel - 1) <= 1)
    {
      zoomablePhotosViewModel = [(PXCuratedLibraryViewModel *)self zoomablePhotosViewModel];
      isDisplayingIndividualItems = [zoomablePhotosViewModel isDisplayingIndividualItems];

      if ((isDisplayingIndividualItems & 1) == 0)
      {
        zoomablePhotosViewModel2 = [(PXCuratedLibraryViewModel *)self zoomablePhotosViewModel];
        [zoomablePhotosViewModel2 performChanges:&__block_literal_global_265];
      }
    }
  }
}

- (void)removeView:(id)view
{
  [(NSHashTable *)self->_views removeObject:view];

  [(PXCuratedLibraryViewModel *)self _invalidateScrollingSpeedometer];
}

- (void)addView:(id)view
{
  [(NSHashTable *)self->_views addObject:view];

  [(PXCuratedLibraryViewModel *)self _invalidateScrollingSpeedometer];
}

- (PXCuratedLibraryViewModelPresenter)mainPresenter
{
  presenters = [(PXCuratedLibraryViewModel *)self presenters];
  firstObject = [presenters firstObject];

  return firstObject;
}

- (void)setSelectModeCaption:(id)caption
{
  captionCopy = caption;
  v5 = captionCopy;
  if (self->_selectModeCaption != captionCopy)
  {
    v9 = captionCopy;
    v6 = [(NSString *)captionCopy isEqualToString:?];
    v5 = v9;
    if (!v6)
    {
      v7 = [(NSString *)v9 copy];
      selectModeCaption = self->_selectModeCaption;
      self->_selectModeCaption = v7;

      [(PXCuratedLibraryViewModel *)self signalChange:2];
      v5 = v9;
    }
  }
}

- (PXAssetReference)singleSelectedAssetReference
{
  selectionManager = [(PXCuratedLibraryViewModel *)self selectionManager];
  selectionSnapshot = [selectionManager selectionSnapshot];

  v13 = 0u;
  v14 = 0u;
  selectedIndexPaths = [selectionSnapshot selectedIndexPaths];
  if ([selectedIndexPaths count] == 1)
  {
    if (selectionSnapshot)
    {
      [selectionSnapshot firstSelectedIndexPath];
    }

    else
    {
      v13 = 0u;
      v14 = 0u;
    }
  }

  else
  {
    v6 = *(off_1E7722228 + 1);
    v13 = *off_1E7722228;
    v14 = v6;
  }

  if (v13 != *off_1E7721F68 && v14 != 0x7FFFFFFFFFFFFFFFLL && *(&v14 + 1) == 0x7FFFFFFFFFFFFFFFLL)
  {
    currentDataSource = [(PXCuratedLibraryViewModel *)self currentDataSource];
    v12[0] = v13;
    v12[1] = v14;
    v9 = [currentDataSource assetReferenceAtItemIndexPath:v12];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)setDraggedAssetReferences:(id)references
{
  referencesCopy = references;
  v5 = referencesCopy;
  if (self->_draggedAssetReferences != referencesCopy)
  {
    v9 = referencesCopy;
    v6 = [(NSSet *)referencesCopy isEqual:?];
    v5 = v9;
    if ((v6 & 1) == 0)
    {
      v7 = [(NSSet *)v9 copy];
      draggedAssetReferences = self->_draggedAssetReferences;
      self->_draggedAssetReferences = v7;

      [(PXCuratedLibraryViewModel *)self signalChange:0x200000];
      [(PXCuratedLibraryViewModel *)self _invalidateZoomablePhotosViewModel];
      v5 = v9;
    }
  }
}

- (void)setSkimmingInfo:(id)info
{
  infoCopy = info;
  v6 = infoCopy;
  if (self->_skimmingInfo != infoCopy)
  {
    v8 = infoCopy;
    v7 = [(PXCuratedLibraryAssetCollectionSkimmingInfo *)infoCopy isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_skimmingInfo, info);
      [(PXCuratedLibraryViewModel *)self signalChange:512];
      v6 = v8;
    }
  }
}

- (void)setLibraryState:(unint64_t)state
{
  if (self->_libraryState != state)
  {
    self->_libraryState = state;
    [(PXCuratedLibraryViewModel *)self _invalidateChromeVisibility];
    [(PXCuratedLibraryViewModel *)self _invalidateShouldShowEmptyPlaceholder];

    [(PXCuratedLibraryViewModel *)self signalChange:64];
  }
}

- (void)setDaysMarginScale:(double)scale
{
  if (self->_daysMarginScale != scale)
  {
    self->_daysMarginScale = scale;
    [(PXCuratedLibraryViewModel *)self signalChange:128];
    if (![(PXCuratedLibraryViewModel *)self isPerformingInitialChanges])
    {
      v6 = [MEMORY[0x1E696AD98] numberWithDouble:scale];
      standardUserDefaults = [off_1E7721948 standardUserDefaults];
      [standardUserDefaults setDaysMarginScale:v6];
    }
  }
}

- (void)setWantsDarkStatusBar:(BOOL)bar
{
  if (self->_wantsDarkStatusBar != bar)
  {
    self->_wantsDarkStatusBar = bar;
    [(PXCuratedLibraryViewModel *)self signalChange:0x1000000];
  }
}

- (void)setWantsOptionalChromeVisible:(BOOL)visible changeReason:(int64_t)reason
{
  if (self->_wantsOptionalChromeVisible != visible)
  {
    self->_wantsOptionalChromeVisible = visible;
    [(PXCuratedLibraryViewModel *)self _invalidateChromeVisibilityWithChangeReason:reason];
  }
}

- (void)setWantsSecondaryToolbarVisible:(BOOL)visible
{
  if (self->_wantsSecondaryToolbarVisible != visible)
  {
    self->_wantsSecondaryToolbarVisible = visible;
    [(PXCuratedLibraryViewModel *)self signalChange:0x400000];
  }
}

- (void)setWantsToolbarVisible:(BOOL)visible
{
  if (self->_wantsToolbarVisible != visible)
  {
    self->_wantsToolbarVisible = visible;
    [(PXCuratedLibraryViewModel *)self signalChange:0x400000];
  }
}

- (void)setWantsTabBarVisible:(BOOL)visible
{
  if (self->_wantsTabBarVisible != visible)
  {
    self->_wantsTabBarVisible = visible;
    [(PXCuratedLibraryViewModel *)self signalChange:0x400000];
  }
}

- (void)setWantsNavigationBarVisible:(BOOL)visible
{
  if (self->_wantsNavigationBarVisible != visible)
  {
    self->_wantsNavigationBarVisible = visible;
    [(PXCuratedLibraryViewModel *)self signalChange:0x400000];
  }
}

- (void)setIsSelecting:(BOOL)selecting
{
  if (self->_isSelecting != selecting)
  {
    self->_isSelecting = selecting;
    [(PXCuratedLibraryViewModel *)self signalChange:1];
    [(PXCuratedLibraryViewModel *)self _invalidateAssetActionManager];
    [(PXCuratedLibraryViewModel *)self _invalidateAllowedActions];
    [(PXCuratedLibraryViewModel *)self _invalidateChromeVisibility];
    [(PXCuratedLibraryViewModel *)self _invalidateZoomablePhotosViewModel];

    [(PXCuratedLibraryViewModel *)self _invalidateIsModalInPresentation];
  }
}

- (void)setHidesDurationLabelBadge:(BOOL)badge
{
  if (self->_hidesDurationLabelBadge != badge)
  {
    self->_hidesDurationLabelBadge = badge;
    [(PXCuratedLibraryViewModel *)self signalChange:0x800000];

    [(PXCuratedLibraryViewModel *)self _invalidateZoomablePhotosViewModel];
  }
}

- (void)setViewBasedDecorationsEnabled:(BOOL)enabled
{
  if (self->_viewBasedDecorationsEnabled != enabled)
  {
    self->_viewBasedDecorationsEnabled = enabled;
    [(PXCuratedLibraryViewModel *)self signalChange:0x800000];

    [(PXCuratedLibraryViewModel *)self _invalidateZoomablePhotosViewModel];
  }
}

- (void)setIsFullyExpanded:(BOOL)expanded
{
  if (self->_isFullyExpanded != expanded)
  {
    self->_isFullyExpanded = expanded;
    [(PXCuratedLibraryViewModel *)self signalChange:0x10000000000];
  }
}

- (void)_updateIsFullyExpanded
{
  if ([(PXCuratedLibraryViewModel *)self isExpanded])
  {
    v3 = [(PXCuratedLibraryViewModel *)self isExpandedAnimating]^ 1;
  }

  else
  {
    v3 = 0;
  }

  [(PXCuratedLibraryViewModel *)self setIsFullyExpanded:v3];
}

- (void)setIsExpandedAnimating:(BOOL)animating
{
  if (self->_isExpandedAnimating != animating)
  {
    self->_isExpandedAnimating = animating;
    [(PXCuratedLibraryViewModel *)self signalChange:0x8000000000];
    [(PXCuratedLibraryViewModel *)self _invalidateAllowedActions];

    [(PXCuratedLibraryViewModel *)self _updateIsFullyExpanded];
  }
}

- (void)setIsExpanded:(BOOL)expanded
{
  if (self->_isExpanded != expanded)
  {
    self->_isExpanded = expanded;
    [(PXCuratedLibraryViewModel *)self signalChange:0x4000000000];
    [(PXCuratedLibraryViewModel *)self _invalidateAllowedActions];
    [(PXCuratedLibraryViewModel *)self _invalidateZoomablePhotosViewModel];

    [(PXCuratedLibraryViewModel *)self _updateIsFullyExpanded];
  }
}

- (void)setZoomLevelTransitionPhase:(int64_t)phase
{
  if (self->_zoomLevelTransitionPhase != phase)
  {
    self->_zoomLevelTransitionPhase = phase;
    [(PXCuratedLibraryViewModel *)self signalChange:0x2000];
  }
}

- (void)setIsAppearing:(BOOL)appearing
{
  if (self->_isAppearing != appearing)
  {
    self->_isAppearing = appearing;
    [(PXCuratedLibraryViewModel *)self signalChange:256];
  }
}

- (void)performInitialChanges:(id)changes
{
  changesCopy = changes;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __51__PXCuratedLibraryViewModel_performInitialChanges___block_invoke;
  v6[3] = &unk_1E7736EF0;
  v6[4] = self;
  v7 = changesCopy;
  v5 = changesCopy;
  [(PXCuratedLibraryViewModel *)self performChanges:v6];
}

uint64_t __51__PXCuratedLibraryViewModel_performInitialChanges___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 163);
  *(v2 + 163) = 1;
  result = (*(*(a1 + 40) + 16))();
  *(*(a1 + 32) + 163) = v3;
  return result;
}

- (void)performChanges:(id)changes
{
  v3.receiver = self;
  v3.super_class = PXCuratedLibraryViewModel;
  [(PXCuratedLibraryViewModel *)&v3 performChanges:changes];
}

- (NSString)description
{
  allowedActions = [(PXCuratedLibraryViewModel *)self allowedActions];
  allObjects = [allowedActions allObjects];
  v5 = [allObjects sortedArrayUsingSelector:sel_localizedCaseInsensitiveCompare_];
  v6 = [v5 componentsJoinedByString:{@", "}];

  v7 = MEMORY[0x1E696AEC0];
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = [v7 stringWithFormat:@"<%@ %p; zoomLevel = %ld; allowedActions = [%@];>", v9, self, -[PXCuratedLibraryViewModel zoomLevel](self, "zoomLevel"), v6];;

  return v10;
}

- (void)dealloc
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults removeObserver:self forKeyPath:*off_1E7722280 context:PXUserDefaultsObservationContext];

  v4.receiver = self;
  v4.super_class = PXCuratedLibraryViewModel;
  [(PXCuratedLibraryViewModel *)&v4 dealloc];
}

- (PXCuratedLibraryViewModel)initWithConfiguration:(id)configuration assetsDataSourceManagerConfiguration:(id)managerConfiguration zoomLevel:(int64_t)level mediaProvider:(id)provider specManager:(id)manager styleGuide:(id)guide
{
  configurationCopy = configuration;
  managerConfigurationCopy = managerConfiguration;
  providerCopy = provider;
  managerCopy = manager;
  guideCopy = guide;
  v92.receiver = self;
  v92.super_class = PXCuratedLibraryViewModel;
  v19 = [(PXCuratedLibraryViewModel *)&v92 init];
  v20 = v19;
  if (v19)
  {
    v84 = guideCopy;
    v86 = providerCopy;
    objc_storeStrong(&v19->_configuration, configuration);
    v21 = [[off_1E7721940 alloc] initWithTarget:v20];
    updater = v20->_updater;
    v20->_updater = v21;

    [(PXUpdater *)v20->_updater setNeedsUpdateSelector:sel__setNeedsUpdate];
    [(PXUpdater *)v20->_updater addUpdateSelector:sel__updateAssetsDataSourceManager];
    [(PXUpdater *)v20->_updater addUpdateSelector:sel__updateCurrentDataSource];
    [(PXUpdater *)v20->_updater addUpdateSelector:sel__updateSelectModeCaption];
    [(PXUpdater *)v20->_updater addUpdateSelector:sel__updateUserWantsAspectFitContent];
    [(PXUpdater *)v20->_updater addUpdateSelector:sel__updateAspectFitContent];
    [(PXUpdater *)v20->_updater addUpdateSelector:sel__updateLibraryState];
    [(PXUpdater *)v20->_updater addUpdateSelector:sel__updateCurrentContentFilterState];
    [(PXUpdater *)v20->_updater addUpdateSelector:sel__updateScrollingSpeedometer];
    [(PXUpdater *)v20->_updater addUpdateSelector:sel__updateScrollingProperties];
    [(PXUpdater *)v20->_updater addUpdateSelector:sel__updateBannerViewConfiguration];
    [(PXUpdater *)v20->_updater addUpdateSelector:sel__updateChromeVisibility];
    [(PXUpdater *)v20->_updater addUpdateSelector:sel__updateDraggedAssetReferences];
    [(PXUpdater *)v20->_updater addUpdateSelector:sel__updateZoomablePhotosViewModel];
    [(PXUpdater *)v20->_updater addUpdateSelector:sel__updateShouldShowEmptyPlaceholder];
    [(PXUpdater *)v20->_updater addUpdateSelector:sel__updateAllowedActions];
    [(PXUpdater *)v20->_updater addUpdateSelector:sel__updateContentFillsTopSafeArea];
    [(PXUpdater *)v20->_updater addUpdateSelector:sel__updateIsModalInPresentation];
    [(PXUpdater *)v20->_updater addUpdateSelector:sel__updateDesiredVerticalAlignment];
    objc_storeStrong(&v20->_specManager, manager);
    v85 = managerCopy;
    [managerCopy registerChangeObserver:v20 context:PXCuratedLibraryViewModelSpecManagerObserverContext];
    objc_storeStrong(&v20->_styleGuide, guide);
    v20->_desiredVerticalAlignment = 0;
    v23 = [[PXCuratedLibraryAssetsDataSourceManager alloc] initWithConfiguration:managerConfigurationCopy];
    assetsDataSourceManager = v20->_assetsDataSourceManager;
    v20->_assetsDataSourceManager = v23;

    [(PXCuratedLibraryAssetsDataSourceManager *)v20->_assetsDataSourceManager setDelegate:v20];
    [(PXSectionedDataSourceManager *)v20->_assetsDataSourceManager registerChangeObserver:v20 context:PXCuratedLibraryViewModelAssetsDataSourceManagerObserverContext];
    v25 = [[PXCuratedLibraryVideoPlaybackController alloc] initViewViewModel:v20];
    videoPlaybackController = v20->_videoPlaybackController;
    v20->_videoPlaybackController = v25;

    v27 = [[PXCuratedLibraryActionManager alloc] initWithViewModel:v20];
    actionManager = v20->_actionManager;
    v20->_actionManager = v27;

    v20->_zoomLevel = level;
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    presenters = v20->_presenters;
    v20->_presenters = weakObjectsHashTable;

    v20->_wantsZoomControlVisible = 1;
    isExpandedInitially = [configurationCopy isExpandedInitially];
    v20->_isExpanded = isExpandedInitially;
    v20->_isFullyExpanded = isExpandedInitially;
    v20->_secondaryToolbarVisibility = 1.0;
    weakObjectsHashTable2 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    views = v20->_views;
    v20->_views = weakObjectsHashTable2;

    v34 = [MEMORY[0x1E695DFA8] set];
    visibleAssetCollections = v20->_visibleAssetCollections;
    v20->_visibleAssetCollections = v34;

    v36 = [[off_1E77218C8 alloc] initWithDataSourceManager:v20->_assetsDataSourceManager];
    selectionManager = v20->_selectionManager;
    v20->_selectionManager = v36;

    [(PXSectionedSelectionManager *)v20->_selectionManager setSnapshotValidator:v20];
    [(PXSectionedSelectionManager *)v20->_selectionManager registerChangeObserver:v20 context:PXCuratedLibraryViewModelSelectionObserverContext];
    [(PXCuratedLibraryViewModel *)v20 registerChangeObserver:v20 context:PXCuratedLibraryViewModelObserverContext_91269];
    standardUserDefaults = [off_1E7721948 standardUserDefaults];
    daysMarginScale = [standardUserDefaults daysMarginScale];

    v83 = daysMarginScale;
    if (daysMarginScale)
    {
      [daysMarginScale floatValue];
      v41 = v40;
    }

    else
    {
      v41 = 1.0;
    }

    v20->_daysMarginScale = v41;
    photoLibrary = [managerConfigurationCopy photoLibrary];
    v43 = [PXCuratedLibraryAnalysisStatus sharedStatusForLibrary:photoLibrary];
    analysisStatus = v20->_analysisStatus;
    v20->_analysisStatus = v43;

    [(PXCuratedLibraryAnalysisStatus *)v20->_analysisStatus setDataSourceManager:v20->_assetsDataSourceManager];
    [(PXCuratedLibraryAnalysisStatus *)v20->_analysisStatus registerChangeObserver:v20 context:PXCuratedLibraryViewModelAnalysisStatusObserverContext];
    selectionManager = [(PXCuratedLibraryViewModel *)v20 selectionManager];
    assetTypeCounter = [selectionManager assetTypeCounter];
    [assetTypeCounter registerChangeObserver:v20 context:PXCuratedLibraryViewModelAssetSelectionTypeObserverContext];

    photoLibrary2 = [managerConfigurationCopy photoLibrary];
    photoLibrary = v20->_photoLibrary;
    v20->_photoLibrary = photoLibrary2;

    v49 = [PXSharedLibraryStatusProvider sharedLibraryStatusProviderWithPhotoLibrary:v20->_photoLibrary];
    sharedLibraryStatusProvider = v20->_sharedLibraryStatusProvider;
    v20->_sharedLibraryStatusProvider = v49;

    v51 = [[PXLibraryFilterState alloc] initWithSharedLibraryStatusProvider:v20->_sharedLibraryStatusProvider];
    libraryFilterState = v20->_libraryFilterState;
    v20->_libraryFilterState = v51;

    viewOptionsModel = [configurationCopy viewOptionsModel];
    viewOptionsModel = v20->_viewOptionsModel;
    v20->_viewOptionsModel = viewOptionsModel;

    sortOrderState = [(PXPhotosViewOptionsModel *)v20->_viewOptionsModel sortOrderState];
    [sortOrderState registerChangeObserver:v20 context:PXPhotosSortOrderStateObservationContext];

    sortOrderState2 = [(PXPhotosViewOptionsModel *)v20->_viewOptionsModel sortOrderState];
    -[PXCuratedLibraryViewModel _sendAllPhotosSortOrderAnalyticsEvent:](v20, "_sendAllPhotosSortOrderAnalyticsEvent:", [sortOrderState2 sortOrder]);

    v90[0] = MEMORY[0x1E69E9820];
    v90[1] = 3221225472;
    v90[2] = __135__PXCuratedLibraryViewModel_initWithConfiguration_assetsDataSourceManagerConfiguration_zoomLevel_mediaProvider_specManager_styleGuide___block_invoke;
    v90[3] = &unk_1E7748B68;
    v57 = v20;
    v91 = v57;
    [v57 performChanges:v90];
    v82 = [(PXCuratedLibraryAssetsDataSourceManager *)v20->_assetsDataSourceManager dataSourceManagerForZoomLevel:4];
    [v82 registerChangeObserver:v57 context:PXCuratedLibraryViewModelAllPhotosDataSourceManagerObserverContext];
    v58 = [off_1E77219A0 alloc];
    extendedTraitCollection = [v85 extendedTraitCollection];
    v60 = [v58 initWithExtendedTraitCollection:extendedTraitCollection];

    standardUserDefaults2 = [off_1E7721948 standardUserDefaults];
    curatedLibraryUserDefaults = [standardUserDefaults2 curatedLibraryUserDefaults];
    [v60 setUserDefaults:curatedLibraryUserDefaults];

    availableThumbnailSizes = [v85 availableThumbnailSizes];
    [v60 setAvailableThumbnailSizes:availableThumbnailSizes];

    configuration = [v57 configuration];
    [v60 setOverrideDefaultNumberOfColumns:{objc_msgSend(configuration, "overrideDefaultNumberOfColumns")}];

    [v60 setGridStyle:2];
    v65 = [off_1E77219B0 alloc];
    v66 = v20->_selectionManager;
    videoPlaybackController = [v57 videoPlaybackController];
    LOBYTE(v81) = 1;
    v68 = v66;
    providerCopy = v86;
    v69 = [v65 initWithDataSourceManager:v82 selectionManager:v68 mediaProvider:v86 specManager:v60 loadingStatusManager:0 badgesModifier:0 preferredAssetCropDelegate:0 preferredColumnCountsDelegate:0 inlinePlaybackController:videoPlaybackController sectionIndex:0 headersEnabled:v81];
    v70 = v57[36];
    v57[36] = v69;

    [v57[36] registerChangeObserver:v57 context:PXCuratedLibraryViewModelZoomablePhotosObserverContext];
    [v57[36] performChanges:&__block_literal_global_91355];
    px_sharedLibrarySharingSuggestionsCountsManager = [(PHPhotoLibrary *)v20->_photoLibrary px_sharedLibrarySharingSuggestionsCountsManager];
    v72 = v57[58];
    v57[58] = px_sharedLibrarySharingSuggestionsCountsManager;

    [v57[58] registerChangeObserver:v57 context:&PXSharedLibrarySharingSuggestionsCountsManagerObservationContext];
    v73 = objc_alloc_init(PXSharedLibraryCameraSharingBannerStatusProvider);
    v74 = v57[59];
    v57[59] = v73;

    [v57[59] registerChangeObserver:v57 context:&PXSharedLibraryCameraSharingBannerStatusProviderObservationContext];
    px_macSyncedAssetsStatusProvider = [(PHPhotoLibrary *)v20->_photoLibrary px_macSyncedAssetsStatusProvider];
    v76 = v57[60];
    v57[60] = px_macSyncedAssetsStatusProvider;

    [v57[60] registerChangeObserver:v57 context:&PXMacSyncedAssetsStatusProviderObservationContext];
    *(v57 + 156) = [configurationCopy enableFooter];
    v77 = +[PXCuratedLibrarySettings sharedInstance];
    *(v57 + 157) = [v77 hideStatusFooterInSelectMode];

    v88[0] = MEMORY[0x1E69E9820];
    v88[1] = 3221225472;
    v88[2] = __135__PXCuratedLibraryViewModel_initWithConfiguration_assetsDataSourceManagerConfiguration_zoomLevel_mediaProvider_specManager_styleGuide___block_invoke_3;
    v88[3] = &unk_1E7748B68;
    v78 = v57;
    v89 = v78;
    [v78 performChanges:v88];
    [(PXSharedLibraryStatusProvider *)v20->_sharedLibraryStatusProvider registerChangeObserver:v78 context:PXSharedLibraryStatusProviderObservationContext_91270];
    [(PXLibraryFilterState *)v20->_libraryFilterState registerChangeObserver:v78 context:PXLibraryFilterStateObservationContext_91271];
    standardUserDefaults3 = [MEMORY[0x1E695E000] standardUserDefaults];
    [standardUserDefaults3 addObserver:v78 forKeyPath:*off_1E7722278 options:0 context:PXUserDefaultsObservationContext];
    managerCopy = v85;
    [standardUserDefaults3 addObserver:v78 forKeyPath:*off_1E7722280 options:0 context:PXUserDefaultsObservationContext];

    guideCopy = v84;
  }

  return v20;
}

uint64_t __135__PXCuratedLibraryViewModel_initWithConfiguration_assetsDataSourceManagerConfiguration_zoomLevel_mediaProvider_specManager_styleGuide___block_invoke(uint64_t a1)
{
  [*(a1 + 32) resetAllPhotosContentFilterState];
  [*(a1 + 32) _invalidateAssetsDataSourceManager];
  v2 = *(a1 + 32);

  return [v2 _invalidateCurrentDataSource];
}

uint64_t __135__PXCuratedLibraryViewModel_initWithConfiguration_assetsDataSourceManagerConfiguration_zoomLevel_mediaProvider_specManager_styleGuide___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) _invalidateZoomablePhotosViewModel];
  [*(a1 + 32) _invalidateUserWantsAspectFitContent];
  [*(a1 + 32) _invalidateAspectFitContent];
  [*(a1 + 32) _invalidateAllowedActions];
  [*(a1 + 32) _invalidateLibraryState];
  [*(a1 + 32) _invalidateCurrentContentFilterState];
  [*(a1 + 32) _invalidateBannerViewConfiguration];
  [*(a1 + 32) _invalidateChromeVisibility];
  v2 = *(a1 + 32);

  return [v2 _invalidateShouldShowEmptyPlaceholder];
}

void __135__PXCuratedLibraryViewModel_initWithConfiguration_assetsDataSourceManagerConfiguration_zoomLevel_mediaProvider_specManager_styleGuide___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setContentStartsAtEnd:1];
  v2 = +[PXCuratedLibrarySettings sharedInstance];
  [v3 setContentShiftStrategy:{objc_msgSend(v2, "allPhotosContentShiftStrategy")}];

  [v3 setEnableCornerRadiusMaskingWhenAlignedWithEdge:1];
}

- (PXCuratedLibraryViewModel)initWithAssetsDataSourceManagerConfiguration:(id)configuration zoomLevel:(int64_t)level mediaProvider:(id)provider specManager:(id)manager styleGuide:(id)guide
{
  guideCopy = guide;
  managerCopy = manager;
  providerCopy = provider;
  configurationCopy = configuration;
  v16 = [PXCuratedLibraryViewConfiguration alloc];
  photoLibrary = [configurationCopy photoLibrary];
  v18 = [(PXCuratedLibraryViewConfiguration *)v16 initWithPhotoLibrary:photoLibrary];

  v19 = [(PXCuratedLibraryViewModel *)self initWithConfiguration:v18 assetsDataSourceManagerConfiguration:configurationCopy zoomLevel:level mediaProvider:providerCopy specManager:managerCopy styleGuide:guideCopy];
  return v19;
}

- (PXCuratedLibraryViewModel)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryViewModel.m" lineNumber:132 description:{@"%s is not available as initializer", "-[PXCuratedLibraryViewModel init]"}];

  abort();
}

@end