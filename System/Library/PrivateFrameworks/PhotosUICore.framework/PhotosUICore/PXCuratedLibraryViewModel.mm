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
- (PXCuratedLibraryViewModel)initWithAssetsDataSourceManagerConfiguration:(id)a3 zoomLevel:(int64_t)a4 mediaProvider:(id)a5 specManager:(id)a6 styleGuide:(id)a7;
- (PXCuratedLibraryViewModel)initWithConfiguration:(id)a3 assetsDataSourceManagerConfiguration:(id)a4 zoomLevel:(int64_t)a5 mediaProvider:(id)a6 specManager:(id)a7 styleGuide:(id)a8;
- (PXCuratedLibraryViewModelPresenter)mainPresenter;
- (PXLibrarySummaryOutputPresenter)librarySummaryPresenter;
- (PXSelectionSnapshot)selectionSnapshot;
- (id)_assetActionManagerWithAllowedActionTypes:(id)a3;
- (id)_indexPathsForAssetCollectionReference:(id)a3;
- (id)_updatedContentFilterState;
- (id)curatedLibraryAssetsDataSourceManager:(id)a3 dominantAssetCollectionReferenceForZoomLevel:(int64_t)a4;
- (id)visibleAssetCollectionsFromCuratedLibraryAssetsDataSourceManager:(id)a3;
- (int64_t)curatedLibraryAssetsDataSourceManager:(id)a3 transitionTypeFromZoomLevel:(int64_t)a4 toZoomLevel:(int64_t)a5;
- (int64_t)zoomLevelInDirection:(int64_t)a3 fromZoomLevel:(int64_t)a4;
- (void)_handleIsSelectingChange;
- (void)_handleSelectionManagerChange:(unint64_t)a3;
- (void)_handleSpecChange;
- (void)_invalidateAllowedActions;
- (void)_invalidateAspectFitContent;
- (void)_invalidateAssetActionManager;
- (void)_invalidateAssetCollectionActionManager;
- (void)_invalidateAssetsDataSourceManager;
- (void)_invalidateBannerViewConfiguration;
- (void)_invalidateChromeVisibilityWithChangeReason:(int64_t)a3;
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
- (void)_sendAllPhotosSortOrderAnalyticsEvent:(unint64_t)a3;
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
- (void)addView:(id)a3;
- (void)assetsDataSourceManagerDidFinishBackgroundFetching:(id)a3;
- (void)curatedLibraryAssetsDataSourceManager:(id)a3 didTransitionFromZoomLevel:(int64_t)a4 toZoomLevel:(int64_t)a5;
- (void)curatedLibraryAssetsDataSourceManager:(id)a3 willTransitionFromZoomLevel:(int64_t)a4 toZoomLevel:(int64_t)a5;
- (void)dealloc;
- (void)didPerformChanges;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)performChanges:(id)a3;
- (void)performInitialChanges:(id)a3;
- (void)removeView:(id)a3;
- (void)resetAllPhotosContentFilterState;
- (void)resetToInitialState;
- (void)setAllPhotosContentFilterState:(id)a3;
- (void)setAllowedActions:(id)a3;
- (void)setAspectFitContent:(BOOL)a3;
- (void)setBannerViewConfiguration:(id)a3;
- (void)setContentFillsTopSafeArea:(BOOL)a3;
- (void)setCplActionManagerClass:(Class)a3;
- (void)setCurrentContentFilterState:(id)a3;
- (void)setCurrentDataSource:(id)a3;
- (void)setDaysMarginScale:(double)a3;
- (void)setDesiredVerticalAlignment:(unint64_t)a3;
- (void)setDraggedAssetReferences:(id)a3;
- (void)setHidesDurationLabelBadge:(BOOL)a3;
- (void)setIsAppearing:(BOOL)a3;
- (void)setIsExpanded:(BOOL)a3;
- (void)setIsExpandedAnimating:(BOOL)a3;
- (void)setIsFullyExpanded:(BOOL)a3;
- (void)setIsModalInPresentation:(BOOL)a3;
- (void)setIsSelecting:(BOOL)a3;
- (void)setLastScrollDirection:(CGPoint)a3;
- (void)setLibraryState:(unint64_t)a3;
- (void)setScrollRegime:(int64_t)a3;
- (void)setScrolledToBottom:(BOOL)a3;
- (void)setScrolledToTop:(BOOL)a3;
- (void)setScrollingSpeedometer:(id)a3;
- (void)setSecondaryToolbarLegibilityGradientIsVisible:(BOOL)a3;
- (void)setSecondaryToolbarVisibility:(double)a3;
- (void)setSelectModeCaption:(id)a3;
- (void)setSelectedAssetsTypedCount:(id)a3;
- (void)setShouldShowEmptyPlaceholder:(BOOL)a3;
- (void)setSidebarCanBecomeVisible:(BOOL)a3;
- (void)setSkimmingInfo:(id)a3;
- (void)setUserWantsAspectFitContent:(id)a3;
- (void)setViewBasedDecorationsEnabled:(BOOL)a3;
- (void)setWantsDarkStatusBar:(BOOL)a3;
- (void)setWantsNavigationBarVisible:(BOOL)a3;
- (void)setWantsOptionalChromeVisible:(BOOL)a3 changeReason:(int64_t)a4;
- (void)setWantsSecondaryToolbarVisible:(BOOL)a3;
- (void)setWantsTabBarVisible:(BOOL)a3;
- (void)setWantsToolbarVisible:(BOOL)a3;
- (void)setZoomLevel:(int64_t)a3;
- (void)setZoomLevelTransitionPhase:(int64_t)a3;
- (void)toggleSelectionForAssetCollectionReference:(id)a3;
- (void)toggleSelectionForAssetReference:(id)a3 updateCursorIndexPath:(BOOL)a4;
- (void)toggleSelectionForIndexPath:(PXSimpleIndexPath *)a3;
- (void)toggleSelectionForIndexPath:(PXSimpleIndexPath *)a3 updateCursorIndexPath:(BOOL)a4;
- (void)userDidSetAllPhotosContentFilterState:(id)a3;
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
  v2 = [(PXCuratedLibraryViewModel *)self updater];
  [v2 setNeedsUpdateOf:sel__updateCurrentContentFilterState];
}

- (void)_invalidateAssetsDataSourceManager
{
  v2 = [(PXCuratedLibraryViewModel *)self updater];
  [v2 setNeedsUpdateOf:sel__updateAssetsDataSourceManager];
}

- (void)_invalidateAllowedActions
{
  v2 = [(PXCuratedLibraryViewModel *)self updater];
  [v2 setNeedsUpdateOf:sel__updateAllowedActions];
}

- (void)_invalidateCurrentDataSource
{
  v2 = [(PXCuratedLibraryViewModel *)self updater];
  [v2 setNeedsUpdateOf:sel__updateCurrentDataSource];
}

- (void)didPerformChanges
{
  v4.receiver = self;
  v4.super_class = PXCuratedLibraryViewModel;
  [(PXCuratedLibraryViewModel *)&v4 didPerformChanges];
  v3 = [(PXCuratedLibraryViewModel *)self updater];
  [v3 updateIfNeeded];
}

- (void)_updateAssetsDataSourceManager
{
  v3 = [(PXCuratedLibraryViewModel *)self allPhotosContentFilterState];
  v4 = [v3 predicateForUseCase:0];

  v5 = [(PXCuratedLibraryViewModel *)self viewOptionsModel];
  v6 = [v5 sortOrderState];
  v7 = [v6 sortOrder];

  v8 = PXFetchSortOrderStandardAssetSortDescriptors(v7);
  v9 = [(PXCuratedLibraryViewModel *)self assetsDataSourceManager];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __59__PXCuratedLibraryViewModel__updateAssetsDataSourceManager__block_invoke;
  v12[3] = &unk_1E7736F38;
  v12[4] = self;
  v13 = v4;
  v14 = v8;
  v10 = v8;
  v11 = v4;
  [v9 performChanges:v12];
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
  v2 = [(PXCuratedLibraryViewModel *)self photoLibrary];
  v3 = [PXContentSyndicationConfigurationProvider contentSyndicationConfigurationProviderWithPhotoLibrary:v2];

  return v3;
}

- (PXSelectionSnapshot)selectionSnapshot
{
  v2 = [(PXCuratedLibraryViewModel *)self selectionManager];
  v3 = [v2 selectionSnapshot];

  return v3;
}

- (void)_invalidateAssetCollectionActionManager
{
  assetCollectionActionManager = self->_assetCollectionActionManager;
  self->_assetCollectionActionManager = 0;
}

- (void)_updateCurrentDataSource
{
  v4 = [(PXCuratedLibraryViewModel *)self assetsDataSourceManager];
  v9 = [v4 dataSource];

  v5 = [(PXCuratedLibraryViewModel *)self selectionManager];
  v6 = [v5 dataSourceManager];
  v7 = [v6 dataSource];

  if (([v9 isEqual:v7] & 1) == 0)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryViewModel.m" lineNumber:900 description:@"Expected selection manager's data source to match assetsDataSourceManager.dataSource!"];
  }

  [(PXCuratedLibraryViewModel *)self setCurrentDataSource:v9];
}

- (void)_invalidateDraggedAssetReferences
{
  v2 = [(PXCuratedLibraryViewModel *)self updater];
  [v2 setNeedsUpdateOf:sel__updateDraggedAssetReferences];
}

- (void)_updateCurrentContentFilterState
{
  if ([(PXCuratedLibraryViewModel *)self zoomLevel]== 4)
  {
    v3 = [(PXCuratedLibraryViewModel *)self allPhotosContentFilterState];
    [(PXCuratedLibraryViewModel *)self setCurrentContentFilterState:v3];
  }

  else
  {

    [(PXCuratedLibraryViewModel *)self setCurrentContentFilterState:0];
  }
}

- (void)_invalidateShouldShowEmptyPlaceholder
{
  v2 = [(PXCuratedLibraryViewModel *)self updater];
  [v2 setNeedsUpdateOf:sel__updateShouldShowEmptyPlaceholder];
}

- (void)_updateDraggedAssetReferences
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [(PXCuratedLibraryViewModel *)self currentDataSource];
  v4 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(PXCuratedLibraryViewModel *)self draggedAssetReferences];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = [v3 assetReferenceForAssetReference:*(*(&v14 + 1) + 8 * v9)];
        if (v10)
        {
          [v4 addObject:v10];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
  v3 = [(PXCuratedLibraryViewModel *)self libraryState];
  v4 = [(PXCuratedLibraryViewModel *)self currentContentFilterState];
  -[PXCuratedLibraryViewModel setShouldShowEmptyPlaceholder:](self, "setShouldShowEmptyPlaceholder:", PXCuratedLibraryStateIsEmptyLibrary(v3) & [v4 isContentFilterActive:2] & (objc_msgSend(v4, "isFiltering") ^ 1));
}

- (void)_invalidateDesiredVerticalAlignment
{
  v2 = [(PXCuratedLibraryViewModel *)self updater];
  [v2 setNeedsUpdateOf:sel__updateDesiredVerticalAlignment];
}

- (void)_updateAllowedActions
{
  v3 = [(PXCuratedLibraryViewModel *)self zoomLevel];
  v100 = 0;
  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  v94 = 0u;
  v95 = 0u;
  v4 = [(PXCuratedLibraryViewModel *)self zoomablePhotosViewModel];
  v5 = v4;
  if (v4)
  {
    [v4 zoomState];
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
  v6 = [off_1E7721810 sharedInstance];
  v7 = [(PXCuratedLibraryViewModel *)self zoomablePhotosViewModel];
  v8 = [(PXCuratedLibraryViewModel *)self specManager];
  v9 = [v8 spec];

  v91 = [(PXCuratedLibraryViewModel *)self isSelecting];
  v87 = v7;
  v10 = [v7 isDisplayingIndividualItems];
  v11 = [v9 userInterfaceIdiom];
  v89 = v11 != 4;
  v79 = [v9 userInterfaceIdiom];
  v81 = [v9 userInterfaceIdiom];
  v84 = v9;
  v64 = [v9 sizeClass];
  v12 = [(PXCuratedLibraryViewModel *)self shouldShowEmptyPlaceholder];
  v13 = [(PXCuratedLibraryViewModel *)self isExpanded];
  v14 = [(PXCuratedLibraryViewModel *)self isExpandedAnimating];
  v15 = [(PXCuratedLibraryViewModel *)self analysisStatus];
  if (([v15 isDaysMonthsYearsStructureEnabled] & 1) != 0 || +[PXCuratedLibrarySettings enableEmptyYearsMonthsDaysForTesting](PXCuratedLibrarySettings, "enableEmptyYearsMonthsDaysForTesting"))
  {
    v16 = [(PXCuratedLibraryViewModel *)self currentContentFilterState];
    v17 = [v16 isFiltering];
    v18 = !v12 && (v13 || v14);
    if (v17)
    {
      v18 = 0;
    }

    v83 = v18;
  }

  else
  {
    v83 = 0;
  }

  v19 = [(PXCuratedLibraryViewModel *)self sharedLibraryStatusProvider];
  v90 = [v19 hasSharedLibraryOrPreview];

  if (![v6 enableNewActionMenu])
  {
    if (v3 != 1)
    {
      if (v91)
      {
        LOBYTE(v66) = 0;
      }

      else
      {
        v32 = [(PXCuratedLibraryViewModel *)self skimmingInfo];
        v66 = [v32 touchInteractionStarted] ^ 1;
      }

      if (v3 == 4)
      {
        v20 = [v6 enableContentFiltering];
        v76 = 0;
        LODWORD(v77) = 0;
        HIDWORD(v77) = v20;
        LODWORD(v78) = 0;
        HIDWORD(v78) = v20;
        LODWORD(v73) = 0;
        HIDWORD(v73) = v20;
        v26 = 0;
        v75 = v20;
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
    v20 = 0;
    LOBYTE(v66) = 0;
    goto LABEL_32;
  }

  if (v3 == 4)
  {
    v85 = v13;
    v20 = [v6 enableContentFiltering];
    v21 = [(PXCuratedLibraryViewModel *)self currentContentFilterState];
    v22 = [v21 shouldExcludeScreenshots];

    v23 = [(PXCuratedLibraryViewModel *)self contentSyndicationConfigurationProvider];
    v24 = [v23 contentSyndicationIsAvailable];

    HIDWORD(v78) = v24;
    if (v24)
    {
      v25 = [(PXCuratedLibraryViewModel *)self currentContentFilterState];
      HIDWORD(v77) = [v25 includeSharedWithYou];
    }

    else
    {
      HIDWORD(v77) = 0;
    }

    v75 = v22 ^ 1;
    v28 = [(PXCuratedLibraryViewModel *)self macSyncedAssetsStatusProvider];
    v29 = [v28 hasAnyAssets];

    LODWORD(v78) = v29;
    LOBYTE(v13) = v85;
    if (v29)
    {
      v30 = [(PXCuratedLibraryViewModel *)self currentContentFilterState];
      LODWORD(v76) = [v30 shouldExcludeFromMyMac] ^ 1;
    }

    else
    {
      LODWORD(v76) = 0;
    }

    v33 = [off_1E7721810 sharedInstance];
    LODWORD(v77) = [v33 showLivePhotoFilter];

    v34 = [off_1E7721810 sharedInstance];
    HIDWORD(v76) = [v34 showPortraitFilter];

    v35 = [off_1E7721810 sharedInstance];
    LODWORD(v73) = [v35 showInUserAlbumFilter];

    v27 = 1;
    HIDWORD(v73) = 1;
    v26 = 1;
    goto LABEL_31;
  }

  if (v3 != 3)
  {
    if (v3 != 1)
    {
      v31 = [(PXCuratedLibraryViewModel *)self skimmingInfo];
      v66 = [v31 touchInteractionStarted] ^ 1;

LABEL_28:
      v76 = 0;
      v77 = 0;
      v78 = 0;
      v73 = 0;
      v75 = 0;
      v26 = 0;
      v20 = 0;
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
  v20 = 0;
  v27 = v91 ^ 1;
LABEL_31:
  LOBYTE(v66) = v27;
LABEL_32:
  v86 = v6;
  v36 = (v3 == 4) & v10;
  if (v3 == 3)
  {
    v36 = 1;
  }

  v37 = v36 & ~v91;
  if (v11 == 4)
  {
    v37 = 0;
  }

  v71 = v37;
  if (v91)
  {
    v38 = 0;
  }

  else
  {
    v38 = (v3 != 4) | v10;
    if (((v3 == 4) & v10) == 1)
    {
      v74 = v96 > 1;
      goto LABEL_41;
    }
  }

  v74 = 0;
LABEL_41:
  if (v3 == 4 && v13)
  {
    v39 = [(PXCuratedLibraryViewModel *)self currentDataSource];
    v40 = [v39 containsAnyItems];

    v41 = *(&v96 + 1);
    if (v40)
    {
      v42 = [v87 allowedColumns];
      v43 = *(&v96 + 1) + 1 < [v42 count];

      v89 = 0;
      v44 = 1;
    }

    else
    {
      v89 = 0;
      v43 = 0;
      v44 = 0;
    }
  }

  else
  {
    v41 = *(&v96 + 1);
    if (v3 == 3)
    {
      v45 = v91;
    }

    else
    {
      v45 = 1;
    }

    if ((v45 & 1) == 0)
    {
      v43 = [v88 enableShowAllButtons];
      v44 = 0;
      v69 = 0;
      v70 = 1;
      goto LABEL_63;
    }

    v43 = 0;
    v89 = (v11 != 4) & ~((v3 == 4) ^ (v3 == 1));
    if ((v3 & 0xFFFFFFFFFFFFFFFELL) == 2)
    {
      v69 = 0;
      v70 = 1;
      v44 = 0;
      goto LABEL_63;
    }

    v44 = 0;
  }

  v48 = v3 == 4 && v11 != 4 || v3 == 1;
  v69 = v43;
  v70 = v48;
  v43 = 0;
LABEL_63:
  if (v11 == 4)
  {
    v68 = 0;
  }

  else
  {
    v49 = +[PXRootSettings sharedInstance];
    v68 = [v49 canShowInternalUI];
  }

  v50 = 0;
  v72 = v43;
  if (v79 == 2 && v64 != 1)
  {
    v50 = [(PXCuratedLibraryViewModel *)self sidebarCanBecomeVisible];
  }

  v80 = v50;
  if (v81 == 5)
  {
    v51 = (v3 != 3) & (v66 | v90);
  }

  else
  {
    v51 = v66 | v90;
  }

  if (v81 == 5)
  {
    v52 = 0;
  }

  else
  {
    v52 = v38;
  }

  v82 = v81 == 5;
  if (v3 == 1)
  {
    v53 = 0;
  }

  else
  {
    v53 = v91 ^ 1;
  }

  v62 = v52;
  v63 = v53;
  if ((v3 - 1) < 2)
  {
    v54 = v91 ^ 1;
  }

  else
  {
    v54 = 0;
  }

  if (v3 == 3)
  {
    v55 = v91;
  }

  else
  {
    v55 = 0;
  }

  if (v11 == 4)
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
  if (v3 == 4)
  {
    v57 = 0;
  }

  else
  {
    v57 = v91 ^ 1;
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
  v60[2](v60, v90, @"PXCuratedLibraryActionSetAllLibrariesFilter");
  v60[2](v60, v90, @"PXCuratedLibraryActionSetPersonalLibraryFilter");
  v60[2](v60, v90, @"PXCuratedLibraryActionSetSharedLibraryFilter");
  v60[2](v60, v90, @"PXCuratedLibraryActionToggleSharedLibraryBadge");
  v60[2](v60, v20, @"PXCuratedLibraryActionShowFiltersMenu");
  v60[2](v60, v20, @"PXCuratedLibraryActionShowFilters");
  v60[2](v60, v20, @"PXCuratedLibraryActionUnfilter");
  v60[2](v60, v20, @"PXCuratedLibraryActionRemoveFilters");
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
  v60[2](v60, v91, @"PXCuratedLibraryActionCancelSelectMode");
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
  v60[2](v60, v68, @"PXCuratedLibraryActionTapToRadar");
  v60[2](v60, v68, @"PXCuratedLibraryActionCurationDebug");
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
  v3 = [(PXCuratedLibraryViewModel *)self shouldShowEmptyPlaceholder];

  [(PXCuratedLibraryViewModel *)self setDesiredVerticalAlignment:v3];
}

- (void)_invalidateZoomablePhotosViewModel
{
  v2 = [(PXCuratedLibraryViewModel *)self updater];
  [v2 setNeedsUpdateOf:sel__updateZoomablePhotosViewModel];
}

- (void)_invalidateUserWantsAspectFitContent
{
  v2 = [(PXCuratedLibraryViewModel *)self updater];
  [v2 setNeedsUpdateOf:sel__updateUserWantsAspectFitContent];
}

- (void)_invalidateAspectFitContent
{
  v2 = [(PXCuratedLibraryViewModel *)self updater];
  [v2 setNeedsUpdateOf:sel__updateAspectFitContent];
}

- (void)_invalidateLibraryState
{
  v2 = [(PXCuratedLibraryViewModel *)self updater];
  [v2 setNeedsUpdateOf:sel__updateLibraryState];
}

- (void)_invalidateBannerViewConfiguration
{
  v2 = [(PXCuratedLibraryViewModel *)self updater];
  [v2 setNeedsUpdateOf:sel__updateBannerViewConfiguration];
}

- (void)_updateUserWantsAspectFitContent
{
  v7 = [off_1E7721948 standardUserDefaults];
  v3 = [v7 allPhotosAspectFit];
  v4 = [(PXCuratedLibraryViewModel *)self specManager];
  v5 = [v4 spec];

  if ([v5 userInterfaceIdiom] == 2 && objc_msgSend(v5, "sizeClass") == 1)
  {
    v6 = [v7 allPhotosAspectFitInCompact];

    v3 = v6;
  }

  [(PXCuratedLibraryViewModel *)self setUserWantsAspectFitContent:v3];
}

- (void)_updateAspectFitContent
{
  v3 = [(PXCuratedLibraryViewModel *)self specManager];
  v4 = [v3 spec];
  v5 = [v4 userInterfaceIdiom] == 4;

  v6 = [(PXCuratedLibraryViewModel *)self userWantsAspectFitContent];

  if (v6)
  {
    v7 = [(PXCuratedLibraryViewModel *)self userWantsAspectFitContent];
    v5 = [v7 BOOLValue];
  }

  [(PXCuratedLibraryViewModel *)self setAspectFitContent:v5];
}

- (void)_updateLibraryState
{
  v8 = [(PXCuratedLibraryViewModel *)self assetsDataSourceManager];
  v3 = 0;
  v4 = [(PXCuratedLibraryViewModel *)self zoomLevel]- 1;
  v5 = 1;
  do
  {
    if (v4 == v3 || v3 == 3)
    {
      v6 = [v8 libraryStateForZoomLevel:v3 + 1];
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
  v3 = [(PXCuratedLibraryViewModel *)self sharedLibraryStatusProvider];
  if ([v3 hasPreview])
  {
    v4 = PXSharedLibraryPreviewBannerConfiguration(v3);
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
  v3 = [(PXCuratedLibraryViewModel *)self specManager];
  v23 = [v3 spec];

  v4 = [(PXCuratedLibraryViewModel *)self libraryState];
  if ([v23 userInterfaceIdiom] != 4)
  {
    v9 = [(PXCuratedLibraryViewModel *)self isSelecting];
    v10 = [v23 layoutOrientation];
    v11 = [v23 sizeClass];
    v12 = +[PXLemonadeSettings sharedInstance];
    v13 = [v12 enableTabs];
    v14 = v13;
    if ((v4 & 2) != 0)
    {

      if (v9)
      {
        v8 = 0;
        v6 = 0;
        v7 = 1;
        if (v14)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }

      v21 = +[PXLemonadeSettings sharedInstance];
      v22 = [v21 enableTabs];

      if ((v22 & 1) == 0 && v10 == 2 && v11 == 1)
      {
        v8 = [(PXCuratedLibraryViewModel *)self wantsOptionalChromeVisible];
        v7 = 0;
LABEL_9:
        v6 = 1;
        if (v14)
        {
          goto LABEL_14;
        }

LABEL_13:
        v5 = [(PXCuratedLibraryViewModel *)self bannerViewConfiguration];

        if (!v5)
        {
          goto LABEL_15;
        }

LABEL_14:
        v15 = [(PXCuratedLibraryViewModel *)self configuration];
        LODWORD(v5) = [v15 enableNavigationHeader];

        goto LABEL_15;
      }
    }

    else
    {
      if (v11 == 1)
      {
        v14 = v13;
      }

      else
      {
        v14 = 1;
      }
    }

    v7 = 0;
    v8 = 1;
    goto LABEL_9;
  }

  LODWORD(v5) = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
LABEL_15:
  v16 = [(PXCuratedLibraryViewModel *)self configuration];
  v17 = [v16 isPresentingSearchOverlay];

  v18 = (v17 == 0) & v5;
  if (v17 && v5)
  {
    v19 = [(PXCuratedLibraryViewModel *)self configuration];
    v20 = [v19 isPresentingSearchOverlay];
    v18 = v20[2]() ^ 1;
  }

  [(PXCuratedLibraryViewModel *)self setWantsNavigationBarVisible:v18];
  [(PXCuratedLibraryViewModel *)self setWantsTabBarVisible:v8];
  [(PXCuratedLibraryViewModel *)self setWantsToolbarVisible:v7];
  [(PXCuratedLibraryViewModel *)self setWantsSecondaryToolbarVisible:v6];
  self->_lastChromeVisibilityChangeReason = self->_pendingChromeVisibilityChangeReason;
  self->_pendingChromeVisibilityChangeReason = 0;
}

- (void)_updateZoomablePhotosViewModel
{
  v3 = [(PXCuratedLibraryViewModel *)self zoomablePhotosViewModel];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __59__PXCuratedLibraryViewModel__updateZoomablePhotosViewModel__block_invoke;
  v4[3] = &unk_1E7736F60;
  v4[4] = self;
  [v3 performChanges:v4];
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
  v2 = [(PXCuratedLibraryViewModel *)self updater];
  [v2 setNeedsUpdateOf:sel__updateScrollingSpeedometer];
}

- (void)_updateScrollingSpeedometer
{
  v5 = [(PXCuratedLibraryViewModel *)self views];
  v3 = [v5 firstObject];
  v4 = [v3 scrollingSpeedometer];
  [(PXCuratedLibraryViewModel *)self setScrollingSpeedometer:v4];
}

- (void)_invalidateScrollingProperties
{
  v2 = [(PXCuratedLibraryViewModel *)self updater];
  [v2 setNeedsUpdateOf:sel__updateScrollingProperties];
}

- (void)_updateScrollingProperties
{
  v3 = [(PXCuratedLibraryViewModel *)self scrollingSpeedometer];
  -[PXCuratedLibraryViewModel setScrollRegime:](self, "setScrollRegime:", [v3 regime]);
  [v3 lastScrollDirection];
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
      v14 = self;
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

- (void)_sendAllPhotosSortOrderAnalyticsEvent:(unint64_t)a3
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__PXCuratedLibraryViewModel__sendAllPhotosSortOrderAnalyticsEvent___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a3;
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

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v9 = a3;
  if (PXUserDefaultsObservationContext == a6)
  {
    v10 = MEMORY[0x1E695E000];
    v11 = a4;
    v12 = [v10 standardUserDefaults];
    LODWORD(v10) = [v11 isEqual:v12];

    if (v10)
    {
      if ([v9 isEqual:*off_1E7722280])
      {

LABEL_7:
        v14 = [(PXCuratedLibraryViewModel *)self _updatedContentFilterState];
        objc_initWeak(&location, self);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __76__PXCuratedLibraryViewModel_observeValueForKeyPath_ofObject_change_context___block_invoke;
        block[3] = &unk_1E774B248;
        objc_copyWeak(&v18, &location);
        v17 = v14;
        v15 = v14;
        dispatch_async(MEMORY[0x1E69E96A0], block);

        objc_destroyWeak(&v18);
        objc_destroyWeak(&location);
        goto LABEL_8;
      }

      v13 = [v9 isEqual:*off_1E7722278];

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
  v3 = [off_1E7721948 standardUserDefaults];
  v4 = [(PXCuratedLibraryViewModel *)self allPhotosContentFilterState];
  v5 = [v4 copy];

  v6 = [v3 includeScreenshots];
  [v5 setIncludeScreenshots:{objc_msgSend(v6, "BOOLValue")}];

  v7 = [v3 includeSharedWithYou];
  [v5 setIncludeSharedWithYou:{objc_msgSend(v7, "BOOLValue")}];

  return v5;
}

- (void)assetsDataSourceManagerDidFinishBackgroundFetching:(id)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __80__PXCuratedLibraryViewModel_assetsDataSourceManagerDidFinishBackgroundFetching___block_invoke;
  v3[3] = &unk_1E7748B68;
  v3[4] = self;
  [(PXCuratedLibraryViewModel *)self performChanges:v3];
}

- (void)_handleSelectionManagerChange:(unint64_t)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __59__PXCuratedLibraryViewModel__handleSelectionManagerChange___block_invoke;
  v3[3] = &unk_1E7737140;
  v3[4] = self;
  v3[5] = a3;
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
    v3 = [(PXCuratedLibraryViewModel *)self selectionManager];
    [v3 performChanges:&__block_literal_global_302_91267];
  }

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __53__PXCuratedLibraryViewModel__handleIsSelectingChange__block_invoke_2;
  v4[3] = &unk_1E7748B68;
  v4[4] = self;
  [(PXCuratedLibraryViewModel *)self performChanges:v4];
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v9 = a3;
  v10 = v9;
  if (PXCuratedLibraryViewModelObserverContext_91269 == a5)
  {
    if (a4)
    {
      [(PXCuratedLibraryViewModel *)self _handleIsSelectingChange];
    }

    if ((a4 & 0x10000) != 0)
    {
      v12 = [(PXCuratedLibraryViewModel *)self allowedActions];
      v13 = [v12 containsObject:@"PXCuratedLibraryActionNavigateToYearsMonthsOrDays"];

      if ((v13 & 1) == 0)
      {
        v11 = &__block_literal_global_294;
        goto LABEL_58;
      }
    }
  }

  else if (PXCuratedLibraryViewModelZoomablePhotosObserverContext == a5)
  {
    if (a4)
    {
      v56[0] = MEMORY[0x1E69E9820];
      v56[1] = 3221225472;
      v56[2] = __58__PXCuratedLibraryViewModel_observable_didChange_context___block_invoke_2;
      v56[3] = &unk_1E7748B68;
      v56[4] = self;
      [(PXCuratedLibraryViewModel *)self performChanges:v56];
    }

    if ((a4 & 0x2000000) != 0)
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

  else if (PXCuratedLibraryViewModelSelectionObserverContext == a5)
  {
    [(PXCuratedLibraryViewModel *)self _handleSelectionManagerChange:a4];
  }

  else if (PXCuratedLibraryViewModelScrollingSpeedometerObserverContext == a5)
  {
    if ((a4 & 0xA) != 0)
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

  else if (PXCuratedLibraryViewModelSpecManagerObserverContext == a5)
  {
    if (a4)
    {
      [(PXCuratedLibraryViewModel *)self _handleSpecChange];
    }
  }

  else if (PXCuratedLibraryViewModelAnalysisStatusObserverContext == a5)
  {
    if ((a4 & 0x20) != 0)
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

  else if (PXCuratedLibraryViewModelAllPhotosDataSourceManagerObserverContext == a5)
  {
    if (a4)
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

  else if (PXCuratedLibraryViewModelAssetsDataSourceManagerObserverContext == a5)
  {
    if ((a4 & 2) != 0)
    {
      v14 = [(PXCuratedLibraryViewModel *)self selectionManager];
      [v14 performChanges:&__block_literal_global_296];

      [(PXCuratedLibraryViewModel *)self _invalidateAssetCollectionActionManager];
    }

    if ((a4 & 4) != 0)
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

  else if (PXCuratedLibraryViewModelAssetSelectionTypeObserverContext == a5)
  {
    if (a4)
    {
      v49[0] = MEMORY[0x1E69E9820];
      v49[1] = 3221225472;
      v49[2] = __58__PXCuratedLibraryViewModel_observable_didChange_context___block_invoke_9;
      v49[3] = &unk_1E7737068;
      v49[4] = self;
      v50 = v9;
      [(PXCuratedLibraryViewModel *)self performChanges:v49];
    }
  }

  else if (PXSharedLibrarySharingSuggestionsCountsManagerObservationContext == a5)
  {
    if ((a4 & 0xA) != 0)
    {
      v44 = MEMORY[0x1E69E9820];
      v45 = 3221225472;
      v46 = __58__PXCuratedLibraryViewModel_observable_didChange_context___block_invoke_10;
      v47 = &unk_1E7748B68;
      v48 = self;
      v11 = &v44;
      goto LABEL_58;
    }
  }

  else if (PXPhotosSortOrderStateObservationContext == a5)
  {
    if (a4)
    {
      v39 = MEMORY[0x1E69E9820];
      v40 = 3221225472;
      v41 = __58__PXCuratedLibraryViewModel_observable_didChange_context___block_invoke_11;
      v42 = &unk_1E7748B68;
      v43 = self;
      v11 = &v39;
      goto LABEL_58;
    }
  }

  else if (PXSharedLibraryCameraSharingBannerStatusProviderObservationContext == a5)
  {
    if (a4)
    {
      v34 = MEMORY[0x1E69E9820];
      v35 = 3221225472;
      v36 = __58__PXCuratedLibraryViewModel_observable_didChange_context___block_invoke_12;
      v37 = &unk_1E7748B68;
      v38 = self;
      v11 = &v34;
      goto LABEL_58;
    }
  }

  else if (PXMacSyncedAssetsStatusProviderObservationContext == a5)
  {
    if (a4)
    {
      v29 = MEMORY[0x1E69E9820];
      v30 = 3221225472;
      v31 = __58__PXCuratedLibraryViewModel_observable_didChange_context___block_invoke_13;
      v32 = &unk_1E7748B68;
      v33 = self;
      v11 = &v29;
      goto LABEL_58;
    }
  }

  else if (PXSharedLibraryStatusProviderObservationContext_91270 == a5)
  {
    if ((a4 & 3) != 0)
    {
      if (a4)
      {
        v16 = [(PXCuratedLibraryViewModel *)self sharedLibraryStatusProvider];
        if ([v16 hasSharedLibraryOrPreview])
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

      v17 = [(PXCuratedLibraryViewModel *)self libraryFilterState];
      [v17 setViewMode:v15];

      v24 = MEMORY[0x1E69E9820];
      v25 = 3221225472;
      v26 = __58__PXCuratedLibraryViewModel_observable_didChange_context___block_invoke_14;
      v27 = &unk_1E7748B68;
      v28 = self;
      v11 = &v24;
      goto LABEL_58;
    }
  }

  else
  {
    if (PXLibraryFilterStateObservationContext_91271 != a5)
    {
      v18 = [MEMORY[0x1E696AAA8] currentHandler];
      [v18 handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryViewModel.m" lineNumber:1609 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    if (a4)
    {
      v19 = MEMORY[0x1E69E9820];
      v20 = 3221225472;
      v21 = __58__PXCuratedLibraryViewModel_observable_didChange_context___block_invoke_15;
      v22 = &unk_1E7748B68;
      v23 = self;
      v11 = &v19;
LABEL_58:
      [(PXCuratedLibraryViewModel *)self performChanges:v11, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48];
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

- (int64_t)curatedLibraryAssetsDataSourceManager:(id)a3 transitionTypeFromZoomLevel:(int64_t)a4 toZoomLevel:(int64_t)a5
{
  v8 = [(PXCuratedLibraryViewModel *)self mainPresenter];
  if (objc_opt_respondsToSelector())
  {
    v9 = [v8 viewModel:self transitionTypeFromZoomLevel:a4 toZoomLevel:a5];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)curatedLibraryAssetsDataSourceManager:(id)a3 dominantAssetCollectionReferenceForZoomLevel:(int64_t)a4
{
  v6 = [(PXCuratedLibraryViewModel *)self mainPresenter];
  v7 = [v6 viewModel:self dominantAssetCollectionReferenceForZoomLevel:a4];

  return v7;
}

- (void)curatedLibraryAssetsDataSourceManager:(id)a3 didTransitionFromZoomLevel:(int64_t)a4 toZoomLevel:(int64_t)a5
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [(PXCuratedLibraryViewModel *)self presenters:a3];
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
          [v13 viewModel:self didTransitionFromZoomLevel:a4 toZoomLevel:a5];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }
}

- (void)curatedLibraryAssetsDataSourceManager:(id)a3 willTransitionFromZoomLevel:(int64_t)a4 toZoomLevel:(int64_t)a5
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [(PXCuratedLibraryViewModel *)self presenters:a3];
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
          [v13 viewModel:self willTransitionFromZoomLevel:a4 toZoomLevel:a5];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }
}

- (id)visibleAssetCollectionsFromCuratedLibraryAssetsDataSourceManager:(id)a3
{
  v3 = [(PXCuratedLibraryViewModel *)self visibleAssetCollections];
  v4 = [v3 copy];

  return v4;
}

- (void)_updateIsModalInPresentation
{
  v3 = [(PXCuratedLibraryViewModel *)self isSelecting];

  [(PXCuratedLibraryViewModel *)self setIsModalInPresentation:v3];
}

- (void)_invalidateIsModalInPresentation
{
  v2 = [(PXCuratedLibraryViewModel *)self updater];
  [v2 setNeedsUpdateOf:sel__updateIsModalInPresentation];
}

- (void)setSecondaryToolbarVisibility:(double)a3
{
  if (self->_secondaryToolbarVisibility != a3)
  {
    self->_secondaryToolbarVisibility = a3;
    [(PXCuratedLibraryViewModel *)self signalChange:0x2000000000];
  }
}

- (void)setShouldShowEmptyPlaceholder:(BOOL)a3
{
  if (self->_shouldShowEmptyPlaceholder != a3)
  {
    self->_shouldShowEmptyPlaceholder = a3;
    [(PXCuratedLibraryViewModel *)self _invalidateDesiredVerticalAlignment];
    [(PXCuratedLibraryViewModel *)self _invalidateAllowedActions];

    [(PXCuratedLibraryViewModel *)self signalChange:0x1000000000];
  }
}

- (void)setContentFillsTopSafeArea:(BOOL)a3
{
  if (self->_contentFillsTopSafeArea != a3)
  {
    self->_contentFillsTopSafeArea = a3;
    [(PXCuratedLibraryViewModel *)self signalChange:0x100000000000];
  }
}

- (void)_updateContentFillsTopSafeArea
{
  if ([(PXCuratedLibraryViewModel *)self zoomLevel]== 4)
  {
    v3 = [(PXCuratedLibraryViewModel *)self zoomablePhotosViewModel];
    -[PXCuratedLibraryViewModel setContentFillsTopSafeArea:](self, "setContentFillsTopSafeArea:", [v3 isDisplayingIndividualItems] ^ 1);
  }

  else
  {

    [(PXCuratedLibraryViewModel *)self setContentFillsTopSafeArea:0];
  }
}

- (void)_invalidateContentFillsTopSafeArea
{
  v2 = [(PXCuratedLibraryViewModel *)self updater];
  [v2 setNeedsUpdateOf:sel__updateContentFillsTopSafeArea];
}

- (void)setAllowedActions:(id)a3
{
  v5 = a3;
  if (![(NSSet *)self->_allowedActions isEqualToSet:?])
  {
    objc_storeStrong(&self->_allowedActions, a3);
    [(PXCuratedLibraryViewModel *)self signalChange:0x10000];
  }
}

- (void)_invalidateChromeVisibilityWithChangeReason:(int64_t)a3
{
  if (a3)
  {
    self->_pendingChromeVisibilityChangeReason = a3;
  }

  v3 = [(PXCuratedLibraryViewModel *)self updater];
  [v3 setNeedsUpdateOf:sel__updateChromeVisibility];
}

- (void)_updateSelectModeCaption
{
  v16 = [(PXCuratedLibraryViewModel *)self selectionSnapshot];
  if ([v16 isAnyItemSelected])
  {
    v4 = [(PXCuratedLibraryViewModel *)self selectedAssetsTypedCount];
    v6 = v5;
  }

  else
  {
    v4 = *off_1E7721F88;
    v6 = *(off_1E7721F88 + 1);
  }

  v7 = [(PXCuratedLibraryViewModel *)self sharedLibraryStatusProvider];
  if ([v7 hasPreview])
  {
    v8 = [v16 isAnyItemSelected];

    if (v8)
    {
      v9 = [(PXCuratedLibraryViewModel *)self assetActionManager];
      v10 = [v9 canPerformActionType:*off_1E7721B10];
      v11 = [v9 canPerformActionType:*off_1E7721B18];
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

        PXLocalizedSharedLibraryAssetCountForUsage(v4, v6, 0, v13);
      }

      v15 = [MEMORY[0x1E696AAA8] currentHandler];
      [v15 handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryViewModel.m" lineNumber:1008 description:@"Code which should be unreachable has been reached"];

      abort();
    }
  }

  else
  {
  }

  v14 = PXLocalizedSelectModeCaption([(PXCuratedLibraryViewModel *)self isSelecting], v4, v6);
  [(PXCuratedLibraryViewModel *)self setSelectModeCaption:v14];
}

- (void)_invalidateSelectModeCaption
{
  v2 = [(PXCuratedLibraryViewModel *)self updater];
  [v2 setNeedsUpdateOf:sel__updateSelectModeCaption];
}

- (void)setSelectedAssetsTypedCount:(id)a3
{
  if (a3.var0 != self->_selectedAssetsTypedCount.count || a3.var1 != self->_selectedAssetsTypedCount.type)
  {
    self->_selectedAssetsTypedCount = a3;
    [(PXCuratedLibraryViewModel *)self signalChange:0x8000000];

    [(PXCuratedLibraryViewModel *)self _invalidateSelectModeCaption];
  }
}

- (void)_invalidateAssetActionManager
{
  v3 = [(PXCuratedLibraryViewModel *)self assetActionManager];
  v6 = [v3 allowedActionTypes];

  v4 = [(PXCuratedLibraryViewModel *)self _assetActionManagerWithAllowedActionTypes:v6];
  assetActionManager = self->_assetActionManager;
  self->_assetActionManager = v4;
}

- (void)setDesiredVerticalAlignment:(unint64_t)a3
{
  if (self->_desiredVerticalAlignment != a3)
  {
    self->_desiredVerticalAlignment = a3;
    [(PXCuratedLibraryViewModel *)self signalChange:0x800000000];
  }
}

- (void)resetToInitialState
{
  [(PXCuratedLibraryViewModel *)self setIsResetting:1];
  [(PXCuratedLibraryViewModel *)self setIsSelecting:0];
  [(PXCuratedLibraryViewModel *)self setZoomLevel:4];
  v3 = [(PXCuratedLibraryViewModel *)self allPhotosContentFilterState];
  v4 = [v3 isFiltering];

  if (v4)
  {
    [(PXCuratedLibraryViewModel *)self resetAllPhotosContentFilterState];
  }

  v5 = [(PXCuratedLibraryViewModel *)self zoomablePhotosViewModel];
  [v5 performChanges:&__block_literal_global_272_91318];
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

- (void)setScrolledToBottom:(BOOL)a3
{
  if (self->_scrolledToBottom != a3)
  {
    self->_scrolledToBottom = a3;
    [(PXCuratedLibraryViewModel *)self signalChange:0x40000000000];
  }
}

- (void)setScrolledToTop:(BOOL)a3
{
  if (self->_scrolledToTop != a3)
  {
    self->_scrolledToTop = a3;
    [(PXCuratedLibraryViewModel *)self signalChange:0x20000000000];
  }
}

- (void)setSecondaryToolbarLegibilityGradientIsVisible:(BOOL)a3
{
  if (self->_secondaryToolbarLegibilityGradientIsVisible != a3)
  {
    self->_secondaryToolbarLegibilityGradientIsVisible = a3;
    [(PXCuratedLibraryViewModel *)self signalChange:0x400000000];
  }
}

- (void)setIsModalInPresentation:(BOOL)a3
{
  if (self->_isModalInPresentation != a3)
  {
    self->_isModalInPresentation = a3;
    [(PXCuratedLibraryViewModel *)self signalChange:0x200000000];
  }
}

- (void)setBannerViewConfiguration:(id)a3
{
  v8 = a3;
  v5 = self->_bannerViewConfiguration;
  v6 = v5;
  if (v5 == v8)
  {
  }

  else
  {
    v7 = [(PXBannerViewConfiguration *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_bannerViewConfiguration, a3);
      [(PXCuratedLibraryViewModel *)self _invalidateChromeVisibility];
      [(PXCuratedLibraryViewModel *)self signalChange:0x80000000];
    }
  }
}

- (void)setUserWantsAspectFitContent:(id)a3
{
  v4 = a3;
  userWantsAspectFitContent = self->_userWantsAspectFitContent;
  if (userWantsAspectFitContent != v4)
  {
    v12 = v4;
    v6 = [(NSNumber *)userWantsAspectFitContent isEqual:v4];
    v4 = v12;
    if ((v6 & 1) == 0)
    {
      v7 = [(NSNumber *)v12 copy];
      v8 = self->_userWantsAspectFitContent;
      self->_userWantsAspectFitContent = v7;

      v9 = [(PXCuratedLibraryViewModel *)self specManager];
      v10 = [v9 spec];

      if ([v10 userInterfaceIdiom] == 2 && objc_msgSend(v10, "sizeClass") == 1)
      {
        v11 = [off_1E7721948 standardUserDefaults];
        [v11 setAllPhotosAspectFitInCompact:v12];
      }

      else
      {
        v11 = [off_1E7721948 standardUserDefaults];
        [v11 setAllPhotosAspectFit:v12];
      }

      [(PXCuratedLibraryViewModel *)self _invalidateAspectFitContent];
      v4 = v12;
    }
  }
}

- (void)setAspectFitContent:(BOOL)a3
{
  if (self->_aspectFitContent != a3)
  {
    self->_aspectFitContent = a3;
    [(PXCuratedLibraryViewModel *)self _invalidateZoomablePhotosViewModel];

    [(PXCuratedLibraryViewModel *)self signalChange:0x80000000000];
  }
}

- (void)setSidebarCanBecomeVisible:(BOOL)a3
{
  if (self->_sidebarCanBecomeVisible != a3)
  {
    self->_sidebarCanBecomeVisible = a3;
    [(PXCuratedLibraryViewModel *)self _invalidateAllowedActions];

    [(PXCuratedLibraryViewModel *)self signalChange:0x40000000];
  }
}

- (void)setCplActionManagerClass:(Class)a3
{
  v10 = *MEMORY[0x1E69E9840];
  if (self->_cplActionManagerClass != a3)
  {
    objc_storeStrong(&self->_cplActionManagerClass, a3);
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
        v9 = self;
        _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_DEFAULT, "<%{public}@:%p> Did reset PXCPLUIStatusProvider", &v6, 0x16u);
      }
    }

    [(PXCuratedLibraryViewModel *)self signalChange:0x10000000];
  }
}

- (void)setLastScrollDirection:(CGPoint)a3
{
  if (a3.x != self->_lastScrollDirection.x || a3.y != self->_lastScrollDirection.y)
  {
    self->_lastScrollDirection = a3;
    [(PXCuratedLibraryViewModel *)self signalChange:4096];
  }
}

- (void)setScrollRegime:(int64_t)a3
{
  if (self->_scrollRegime != a3)
  {
    self->_scrollRegime = a3;
    [(PXCuratedLibraryViewModel *)self signalChange:2048];
  }
}

- (void)setScrollingSpeedometer:(id)a3
{
  v5 = a3;
  scrollingSpeedometer = self->_scrollingSpeedometer;
  if (scrollingSpeedometer != v5)
  {
    v7 = v5;
    [(PXScrollViewSpeedometer *)scrollingSpeedometer unregisterChangeObserver:self context:PXCuratedLibraryViewModelScrollingSpeedometerObserverContext];
    objc_storeStrong(&self->_scrollingSpeedometer, a3);
    [(PXScrollViewSpeedometer *)self->_scrollingSpeedometer registerChangeObserver:self context:PXCuratedLibraryViewModelScrollingSpeedometerObserverContext];
    [(PXCuratedLibraryViewModel *)self _invalidateScrollingProperties];
    v5 = v7;
  }
}

- (id)_indexPathsForAssetCollectionReference:(id)a3
{
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v5 = [(PXCuratedLibraryViewModel *)self currentDataSource];
  v6 = v5;
  if (v5)
  {
    [v5 indexPathForAssetCollectionReference:v4];
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  v7 = [(PXCuratedLibraryViewModel *)self currentDataSource];
  v10[0] = v11;
  v10[1] = v12;
  v8 = [v7 indexPathSetForItemsInIndexPath:v10];

  return v8;
}

- (void)toggleSelectionForAssetCollectionReference:(id)a3
{
  v4 = [(PXCuratedLibraryViewModel *)self _indexPathsForAssetCollectionReference:a3];
  v5 = [(PXCuratedLibraryViewModel *)self selectionSnapshot];
  v6 = [v5 selectedIndexPaths];
  v7 = [v4 isSubsetOfSet:v6];

  v8 = [(PXCuratedLibraryViewModel *)self selectionManager];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __72__PXCuratedLibraryViewModel_toggleSelectionForAssetCollectionReference___block_invoke;
  v10[3] = &unk_1E77493D8;
  v12 = v7;
  v11 = v4;
  v9 = v4;
  [v8 performChanges:v10];
}

- (void)toggleSelectionForAssetReference:(id)a3 updateCursorIndexPath:(BOOL)a4
{
  v4 = a4;
  v14 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v11 = 0u;
  v12 = 0u;
  v7 = [(PXCuratedLibraryViewModel *)self currentDataSource];
  v8 = v7;
  if (v7)
  {
    [v7 indexPathForAssetReference:v6];
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
      v10 = [(PXCuratedLibraryViewModel *)self currentDataSource];
      *buf = 138412546;
      *&buf[4] = v6;
      *&buf[12] = 2112;
      *&buf[14] = v10;
      _os_log_impl(&dword_1A3C1C000, v9, OS_LOG_TYPE_DEFAULT, "can't toggle selection for %@ because it's not in %@", buf, 0x16u);
    }
  }

  else
  {
    *buf = v11;
    *&buf[16] = v12;
    [(PXCuratedLibraryViewModel *)self toggleSelectionForIndexPath:buf updateCursorIndexPath:v4];
  }
}

- (void)toggleSelectionForIndexPath:(PXSimpleIndexPath *)a3 updateCursorIndexPath:(BOOL)a4
{
  v7 = [(PXCuratedLibraryViewModel *)self selectionSnapshot];
  v8 = *&a3->item;
  v17[0] = *&a3->dataSourceIdentifier;
  v17[1] = v8;
  v9 = [v7 isIndexPathSelected:v17];

  v10 = [(PXCuratedLibraryViewModel *)self selectionManager];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __79__PXCuratedLibraryViewModel_toggleSelectionForIndexPath_updateCursorIndexPath___block_invoke;
  v12[3] = &__block_descriptor_66_e37_v16__0___PXMutableSelectionManager__8l;
  v15 = v9;
  v11 = *&a3->item;
  v13 = *&a3->dataSourceIdentifier;
  v14 = v11;
  v16 = a4;
  [v10 performChanges:v12];
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

- (void)toggleSelectionForIndexPath:(PXSimpleIndexPath *)a3
{
  v3 = *&a3->item;
  v4[0] = *&a3->dataSourceIdentifier;
  v4[1] = v3;
  [(PXCuratedLibraryViewModel *)self toggleSelectionForIndexPath:v4 updateCursorIndexPath:0];
}

- (PXAssetCollectionActionManager)assetCollectionActionManager
{
  assetCollectionActionManager = self->_assetCollectionActionManager;
  if (!assetCollectionActionManager)
  {
    v4 = [(PXCuratedLibraryViewModel *)self assetsDataSourceManager];
    v5 = [v4 currentPhotoKitAssetsDataSourceManager];

    v6 = [[PXPhotoKitAssetCollectionActionManager alloc] initWithAssetCollectionReference:0 displayTitleInfo:0];
    [(PXAssetCollectionActionManager *)v6 setAssetsDataSourceManager:v5];
    v7 = self->_assetCollectionActionManager;
    self->_assetCollectionActionManager = &v6->super;

    assetCollectionActionManager = self->_assetCollectionActionManager;
  }

  return assetCollectionActionManager;
}

- (id)_assetActionManagerWithAllowedActionTypes:(id)a3
{
  v4 = a3;
  v5 = [(PXCuratedLibraryViewModel *)self assetsDataSourceManager];
  v6 = [v5 currentPhotoKitAssetsDataSourceManager];

  v7 = [(PXCuratedLibraryViewModel *)self selectionManager];
  v8 = [[PXPhotoKitAssetActionManager alloc] initWithSelectionManager:v7];
  [(PXPhotoKitAssetActionManager *)v8 setDataSourceManager:v6];
  [(PXActionManager *)v8 setAllowedActionTypes:v4];

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

- (void)setCurrentDataSource:(id)a3
{
  v5 = a3;
  if (self->_currentDataSource != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_currentDataSource, a3);
    [(PXCuratedLibraryViewModel *)self signalChange:16];
    [(PXCuratedLibraryViewModel *)self _invalidateDraggedAssetReferences];
    [(PXCuratedLibraryViewModel *)self _invalidateAllowedActions];
    v5 = v6;
  }
}

- (void)setAllPhotosContentFilterState:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_allPhotosContentFilterState != v4)
  {
    v9 = v4;
    v6 = [(PXContentFilterState *)v4 isEqual:?];
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

- (void)userDidSetAllPhotosContentFilterState:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(PXCuratedLibraryViewModel *)self zoomLevel]== 4)
  {
    [(PXCuratedLibraryViewModel *)self setAllPhotosContentFilterState:v4];
  }

  else
  {
    v5 = PLUIGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 134217984;
      v7 = [(PXCuratedLibraryViewModel *)self zoomLevel];
      _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_DEFAULT, "Attempted content filtering with unexpected zoom level %li", &v6, 0xCu);
    }
  }
}

- (void)setCurrentContentFilterState:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_currentContentFilterState != v4)
  {
    v9 = v4;
    v6 = [(PXContentFilterState *)v4 isEqual:?];
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

- (int64_t)zoomLevelInDirection:(int64_t)a3 fromZoomLevel:(int64_t)a4
{
  if (a3 >= 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = a3;
  }

  if (v5 < 0)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  v7 = [(PXCuratedLibraryViewModel *)self configuration];
  v8 = v6 + a4;
  if (v8 > 4)
  {
LABEL_10:
    v8 = 0;
  }

  else
  {
    while (([v7 isZoomLevelEnabled:v8] & 1) == 0)
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

- (void)setZoomLevel:(int64_t)a3
{
  zoomLevel = self->_zoomLevel;
  if (zoomLevel != a3)
  {
    self->_zoomLevel = a3;
    [(PXCuratedLibraryViewModel *)self signalChange:4];
    [(PXCuratedLibraryViewModel *)self _invalidateAssetsDataSourceManager];
    [(PXCuratedLibraryViewModel *)self _invalidateAllowedActions];
    [(PXCuratedLibraryViewModel *)self _invalidateContentFillsTopSafeArea];
    [(PXCuratedLibraryViewModel *)self _invalidateCurrentContentFilterState];
    if (![(PXCuratedLibraryViewModel *)self isPerformingInitialChanges])
    {
      v6 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
      v7 = [off_1E7721948 standardUserDefaults];
      [v7 setCuratedLibraryZoomLevel:v6];
    }

    if (a3 == 4 && (zoomLevel - 1) <= 1)
    {
      v8 = [(PXCuratedLibraryViewModel *)self zoomablePhotosViewModel];
      v9 = [v8 isDisplayingIndividualItems];

      if ((v9 & 1) == 0)
      {
        v10 = [(PXCuratedLibraryViewModel *)self zoomablePhotosViewModel];
        [v10 performChanges:&__block_literal_global_265];
      }
    }
  }
}

- (void)removeView:(id)a3
{
  [(NSHashTable *)self->_views removeObject:a3];

  [(PXCuratedLibraryViewModel *)self _invalidateScrollingSpeedometer];
}

- (void)addView:(id)a3
{
  [(NSHashTable *)self->_views addObject:a3];

  [(PXCuratedLibraryViewModel *)self _invalidateScrollingSpeedometer];
}

- (PXCuratedLibraryViewModelPresenter)mainPresenter
{
  v2 = [(PXCuratedLibraryViewModel *)self presenters];
  v3 = [v2 firstObject];

  return v3;
}

- (void)setSelectModeCaption:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_selectModeCaption != v4)
  {
    v9 = v4;
    v6 = [(NSString *)v4 isEqualToString:?];
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
  v3 = [(PXCuratedLibraryViewModel *)self selectionManager];
  v4 = [v3 selectionSnapshot];

  v13 = 0u;
  v14 = 0u;
  v5 = [v4 selectedIndexPaths];
  if ([v5 count] == 1)
  {
    if (v4)
    {
      [v4 firstSelectedIndexPath];
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
    v10 = [(PXCuratedLibraryViewModel *)self currentDataSource];
    v12[0] = v13;
    v12[1] = v14;
    v9 = [v10 assetReferenceAtItemIndexPath:v12];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)setDraggedAssetReferences:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_draggedAssetReferences != v4)
  {
    v9 = v4;
    v6 = [(NSSet *)v4 isEqual:?];
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

- (void)setSkimmingInfo:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_skimmingInfo != v5)
  {
    v8 = v5;
    v7 = [(PXCuratedLibraryAssetCollectionSkimmingInfo *)v5 isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_skimmingInfo, a3);
      [(PXCuratedLibraryViewModel *)self signalChange:512];
      v6 = v8;
    }
  }
}

- (void)setLibraryState:(unint64_t)a3
{
  if (self->_libraryState != a3)
  {
    self->_libraryState = a3;
    [(PXCuratedLibraryViewModel *)self _invalidateChromeVisibility];
    [(PXCuratedLibraryViewModel *)self _invalidateShouldShowEmptyPlaceholder];

    [(PXCuratedLibraryViewModel *)self signalChange:64];
  }
}

- (void)setDaysMarginScale:(double)a3
{
  if (self->_daysMarginScale != a3)
  {
    self->_daysMarginScale = a3;
    [(PXCuratedLibraryViewModel *)self signalChange:128];
    if (![(PXCuratedLibraryViewModel *)self isPerformingInitialChanges])
    {
      v6 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
      v5 = [off_1E7721948 standardUserDefaults];
      [v5 setDaysMarginScale:v6];
    }
  }
}

- (void)setWantsDarkStatusBar:(BOOL)a3
{
  if (self->_wantsDarkStatusBar != a3)
  {
    self->_wantsDarkStatusBar = a3;
    [(PXCuratedLibraryViewModel *)self signalChange:0x1000000];
  }
}

- (void)setWantsOptionalChromeVisible:(BOOL)a3 changeReason:(int64_t)a4
{
  if (self->_wantsOptionalChromeVisible != a3)
  {
    self->_wantsOptionalChromeVisible = a3;
    [(PXCuratedLibraryViewModel *)self _invalidateChromeVisibilityWithChangeReason:a4];
  }
}

- (void)setWantsSecondaryToolbarVisible:(BOOL)a3
{
  if (self->_wantsSecondaryToolbarVisible != a3)
  {
    self->_wantsSecondaryToolbarVisible = a3;
    [(PXCuratedLibraryViewModel *)self signalChange:0x400000];
  }
}

- (void)setWantsToolbarVisible:(BOOL)a3
{
  if (self->_wantsToolbarVisible != a3)
  {
    self->_wantsToolbarVisible = a3;
    [(PXCuratedLibraryViewModel *)self signalChange:0x400000];
  }
}

- (void)setWantsTabBarVisible:(BOOL)a3
{
  if (self->_wantsTabBarVisible != a3)
  {
    self->_wantsTabBarVisible = a3;
    [(PXCuratedLibraryViewModel *)self signalChange:0x400000];
  }
}

- (void)setWantsNavigationBarVisible:(BOOL)a3
{
  if (self->_wantsNavigationBarVisible != a3)
  {
    self->_wantsNavigationBarVisible = a3;
    [(PXCuratedLibraryViewModel *)self signalChange:0x400000];
  }
}

- (void)setIsSelecting:(BOOL)a3
{
  if (self->_isSelecting != a3)
  {
    self->_isSelecting = a3;
    [(PXCuratedLibraryViewModel *)self signalChange:1];
    [(PXCuratedLibraryViewModel *)self _invalidateAssetActionManager];
    [(PXCuratedLibraryViewModel *)self _invalidateAllowedActions];
    [(PXCuratedLibraryViewModel *)self _invalidateChromeVisibility];
    [(PXCuratedLibraryViewModel *)self _invalidateZoomablePhotosViewModel];

    [(PXCuratedLibraryViewModel *)self _invalidateIsModalInPresentation];
  }
}

- (void)setHidesDurationLabelBadge:(BOOL)a3
{
  if (self->_hidesDurationLabelBadge != a3)
  {
    self->_hidesDurationLabelBadge = a3;
    [(PXCuratedLibraryViewModel *)self signalChange:0x800000];

    [(PXCuratedLibraryViewModel *)self _invalidateZoomablePhotosViewModel];
  }
}

- (void)setViewBasedDecorationsEnabled:(BOOL)a3
{
  if (self->_viewBasedDecorationsEnabled != a3)
  {
    self->_viewBasedDecorationsEnabled = a3;
    [(PXCuratedLibraryViewModel *)self signalChange:0x800000];

    [(PXCuratedLibraryViewModel *)self _invalidateZoomablePhotosViewModel];
  }
}

- (void)setIsFullyExpanded:(BOOL)a3
{
  if (self->_isFullyExpanded != a3)
  {
    self->_isFullyExpanded = a3;
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

- (void)setIsExpandedAnimating:(BOOL)a3
{
  if (self->_isExpandedAnimating != a3)
  {
    self->_isExpandedAnimating = a3;
    [(PXCuratedLibraryViewModel *)self signalChange:0x8000000000];
    [(PXCuratedLibraryViewModel *)self _invalidateAllowedActions];

    [(PXCuratedLibraryViewModel *)self _updateIsFullyExpanded];
  }
}

- (void)setIsExpanded:(BOOL)a3
{
  if (self->_isExpanded != a3)
  {
    self->_isExpanded = a3;
    [(PXCuratedLibraryViewModel *)self signalChange:0x4000000000];
    [(PXCuratedLibraryViewModel *)self _invalidateAllowedActions];
    [(PXCuratedLibraryViewModel *)self _invalidateZoomablePhotosViewModel];

    [(PXCuratedLibraryViewModel *)self _updateIsFullyExpanded];
  }
}

- (void)setZoomLevelTransitionPhase:(int64_t)a3
{
  if (self->_zoomLevelTransitionPhase != a3)
  {
    self->_zoomLevelTransitionPhase = a3;
    [(PXCuratedLibraryViewModel *)self signalChange:0x2000];
  }
}

- (void)setIsAppearing:(BOOL)a3
{
  if (self->_isAppearing != a3)
  {
    self->_isAppearing = a3;
    [(PXCuratedLibraryViewModel *)self signalChange:256];
  }
}

- (void)performInitialChanges:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __51__PXCuratedLibraryViewModel_performInitialChanges___block_invoke;
  v6[3] = &unk_1E7736EF0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
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

- (void)performChanges:(id)a3
{
  v3.receiver = self;
  v3.super_class = PXCuratedLibraryViewModel;
  [(PXCuratedLibraryViewModel *)&v3 performChanges:a3];
}

- (NSString)description
{
  v3 = [(PXCuratedLibraryViewModel *)self allowedActions];
  v4 = [v3 allObjects];
  v5 = [v4 sortedArrayUsingSelector:sel_localizedCaseInsensitiveCompare_];
  v6 = [v5 componentsJoinedByString:{@", "}];

  v7 = MEMORY[0x1E696AEC0];
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = [v7 stringWithFormat:@"<%@ %p; zoomLevel = %ld; allowedActions = [%@];>", v9, self, -[PXCuratedLibraryViewModel zoomLevel](self, "zoomLevel"), v6];;

  return v10;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v3 removeObserver:self forKeyPath:*off_1E7722280 context:PXUserDefaultsObservationContext];

  v4.receiver = self;
  v4.super_class = PXCuratedLibraryViewModel;
  [(PXCuratedLibraryViewModel *)&v4 dealloc];
}

- (PXCuratedLibraryViewModel)initWithConfiguration:(id)a3 assetsDataSourceManagerConfiguration:(id)a4 zoomLevel:(int64_t)a5 mediaProvider:(id)a6 specManager:(id)a7 styleGuide:(id)a8
{
  v87 = a3;
  v15 = a4;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v92.receiver = self;
  v92.super_class = PXCuratedLibraryViewModel;
  v19 = [(PXCuratedLibraryViewModel *)&v92 init];
  v20 = v19;
  if (v19)
  {
    v84 = v18;
    v86 = v16;
    objc_storeStrong(&v19->_configuration, a3);
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
    objc_storeStrong(&v20->_specManager, a7);
    v85 = v17;
    [v17 registerChangeObserver:v20 context:PXCuratedLibraryViewModelSpecManagerObserverContext];
    objc_storeStrong(&v20->_styleGuide, a8);
    v20->_desiredVerticalAlignment = 0;
    v23 = [[PXCuratedLibraryAssetsDataSourceManager alloc] initWithConfiguration:v15];
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

    v20->_zoomLevel = a5;
    v29 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    presenters = v20->_presenters;
    v20->_presenters = v29;

    v20->_wantsZoomControlVisible = 1;
    v31 = [v87 isExpandedInitially];
    v20->_isExpanded = v31;
    v20->_isFullyExpanded = v31;
    v20->_secondaryToolbarVisibility = 1.0;
    v32 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    views = v20->_views;
    v20->_views = v32;

    v34 = [MEMORY[0x1E695DFA8] set];
    visibleAssetCollections = v20->_visibleAssetCollections;
    v20->_visibleAssetCollections = v34;

    v36 = [[off_1E77218C8 alloc] initWithDataSourceManager:v20->_assetsDataSourceManager];
    selectionManager = v20->_selectionManager;
    v20->_selectionManager = v36;

    [(PXSectionedSelectionManager *)v20->_selectionManager setSnapshotValidator:v20];
    [(PXSectionedSelectionManager *)v20->_selectionManager registerChangeObserver:v20 context:PXCuratedLibraryViewModelSelectionObserverContext];
    [(PXCuratedLibraryViewModel *)v20 registerChangeObserver:v20 context:PXCuratedLibraryViewModelObserverContext_91269];
    v38 = [off_1E7721948 standardUserDefaults];
    v39 = [v38 daysMarginScale];

    v83 = v39;
    if (v39)
    {
      [v39 floatValue];
      v41 = v40;
    }

    else
    {
      v41 = 1.0;
    }

    v20->_daysMarginScale = v41;
    v42 = [v15 photoLibrary];
    v43 = [PXCuratedLibraryAnalysisStatus sharedStatusForLibrary:v42];
    analysisStatus = v20->_analysisStatus;
    v20->_analysisStatus = v43;

    [(PXCuratedLibraryAnalysisStatus *)v20->_analysisStatus setDataSourceManager:v20->_assetsDataSourceManager];
    [(PXCuratedLibraryAnalysisStatus *)v20->_analysisStatus registerChangeObserver:v20 context:PXCuratedLibraryViewModelAnalysisStatusObserverContext];
    v45 = [(PXCuratedLibraryViewModel *)v20 selectionManager];
    v46 = [v45 assetTypeCounter];
    [v46 registerChangeObserver:v20 context:PXCuratedLibraryViewModelAssetSelectionTypeObserverContext];

    v47 = [v15 photoLibrary];
    photoLibrary = v20->_photoLibrary;
    v20->_photoLibrary = v47;

    v49 = [PXSharedLibraryStatusProvider sharedLibraryStatusProviderWithPhotoLibrary:v20->_photoLibrary];
    sharedLibraryStatusProvider = v20->_sharedLibraryStatusProvider;
    v20->_sharedLibraryStatusProvider = v49;

    v51 = [[PXLibraryFilterState alloc] initWithSharedLibraryStatusProvider:v20->_sharedLibraryStatusProvider];
    libraryFilterState = v20->_libraryFilterState;
    v20->_libraryFilterState = v51;

    v53 = [v87 viewOptionsModel];
    viewOptionsModel = v20->_viewOptionsModel;
    v20->_viewOptionsModel = v53;

    v55 = [(PXPhotosViewOptionsModel *)v20->_viewOptionsModel sortOrderState];
    [v55 registerChangeObserver:v20 context:PXPhotosSortOrderStateObservationContext];

    v56 = [(PXPhotosViewOptionsModel *)v20->_viewOptionsModel sortOrderState];
    -[PXCuratedLibraryViewModel _sendAllPhotosSortOrderAnalyticsEvent:](v20, "_sendAllPhotosSortOrderAnalyticsEvent:", [v56 sortOrder]);

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
    v59 = [v85 extendedTraitCollection];
    v60 = [v58 initWithExtendedTraitCollection:v59];

    v61 = [off_1E7721948 standardUserDefaults];
    v62 = [v61 curatedLibraryUserDefaults];
    [v60 setUserDefaults:v62];

    v63 = [v85 availableThumbnailSizes];
    [v60 setAvailableThumbnailSizes:v63];

    v64 = [v57 configuration];
    [v60 setOverrideDefaultNumberOfColumns:{objc_msgSend(v64, "overrideDefaultNumberOfColumns")}];

    [v60 setGridStyle:2];
    v65 = [off_1E77219B0 alloc];
    v66 = v20->_selectionManager;
    v67 = [v57 videoPlaybackController];
    LOBYTE(v81) = 1;
    v68 = v66;
    v16 = v86;
    v69 = [v65 initWithDataSourceManager:v82 selectionManager:v68 mediaProvider:v86 specManager:v60 loadingStatusManager:0 badgesModifier:0 preferredAssetCropDelegate:0 preferredColumnCountsDelegate:0 inlinePlaybackController:v67 sectionIndex:0 headersEnabled:v81];
    v70 = v57[36];
    v57[36] = v69;

    [v57[36] registerChangeObserver:v57 context:PXCuratedLibraryViewModelZoomablePhotosObserverContext];
    [v57[36] performChanges:&__block_literal_global_91355];
    v71 = [(PHPhotoLibrary *)v20->_photoLibrary px_sharedLibrarySharingSuggestionsCountsManager];
    v72 = v57[58];
    v57[58] = v71;

    [v57[58] registerChangeObserver:v57 context:&PXSharedLibrarySharingSuggestionsCountsManagerObservationContext];
    v73 = objc_alloc_init(PXSharedLibraryCameraSharingBannerStatusProvider);
    v74 = v57[59];
    v57[59] = v73;

    [v57[59] registerChangeObserver:v57 context:&PXSharedLibraryCameraSharingBannerStatusProviderObservationContext];
    v75 = [(PHPhotoLibrary *)v20->_photoLibrary px_macSyncedAssetsStatusProvider];
    v76 = v57[60];
    v57[60] = v75;

    [v57[60] registerChangeObserver:v57 context:&PXMacSyncedAssetsStatusProviderObservationContext];
    *(v57 + 156) = [v87 enableFooter];
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
    v79 = [MEMORY[0x1E695E000] standardUserDefaults];
    [v79 addObserver:v78 forKeyPath:*off_1E7722278 options:0 context:PXUserDefaultsObservationContext];
    v17 = v85;
    [v79 addObserver:v78 forKeyPath:*off_1E7722280 options:0 context:PXUserDefaultsObservationContext];

    v18 = v84;
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

- (PXCuratedLibraryViewModel)initWithAssetsDataSourceManagerConfiguration:(id)a3 zoomLevel:(int64_t)a4 mediaProvider:(id)a5 specManager:(id)a6 styleGuide:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a3;
  v16 = [PXCuratedLibraryViewConfiguration alloc];
  v17 = [v15 photoLibrary];
  v18 = [(PXCuratedLibraryViewConfiguration *)v16 initWithPhotoLibrary:v17];

  v19 = [(PXCuratedLibraryViewModel *)self initWithConfiguration:v18 assetsDataSourceManagerConfiguration:v15 zoomLevel:a4 mediaProvider:v14 specManager:v13 styleGuide:v12];
  return v19;
}

- (PXCuratedLibraryViewModel)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryViewModel.m" lineNumber:132 description:{@"%s is not available as initializer", "-[PXCuratedLibraryViewModel init]"}];

  abort();
}

@end