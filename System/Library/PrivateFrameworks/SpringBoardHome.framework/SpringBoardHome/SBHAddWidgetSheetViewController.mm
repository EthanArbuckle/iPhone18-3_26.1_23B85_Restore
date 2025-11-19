@interface SBHAddWidgetSheetViewController
- ($C48D5C44E1E4BC3B38DCA2BDA7A0443F)sheetIconMetrics;
- (BOOL)_canShowGallery;
- (BOOL)_shouldAnimateChanges;
- (BOOL)_shouldShowCustomApplicationsSection;
- (BOOL)_shouldShowDisfavoredSection;
- (BOOL)_shouldShowGallery;
- (BOOL)_shouldShowSuggestionsListItem;
- (BOOL)_shouldShowTitleAndSubtitle;
- (BOOL)_wantsNavigationBarHidden;
- (BOOL)collectionView:(id)a3 shouldSelectItemAtIndexPath:(id)a4;
- (CGRect)keyboardFrameIntersect;
- (NSDirectionalEdgeInsets)applicationsSectionInsets;
- (NSDirectionalEdgeInsets)contentInsets;
- (NSMutableDictionary)userInfo;
- (OS_dispatch_queue)applicationWidgetCollectionIconLoadingQueue;
- (SBHAddWidgetSheetViewController)initWithConfiguration:(id)a3;
- (SBHAddWidgetSheetViewController)initWithListLayoutProvider:(id)a3 iconViewProvider:(id)a4 allowedWidgets:(SBHWidgetFilteringParameters)a5 appCellConfigurator:(id)a6 addWidgetSheetStyle:(unint64_t)a7;
- (SBHPadAddWidgetSheetMetrics)_metricsForCurrentOrientation;
- (SBHPadAddWidgetSheetMetrics)_metricsForOrientation:(SEL)a3;
- (SBHWidgetDragHandling)widgetDragHandler;
- (SBHWidgetSheetViewControllerPresenter)presenter;
- (double)_horizontalSpacingForListLayout:(id)a3;
- (id)_collectionViewLayoutApplicationsSectionWithStyle:(unint64_t)a3;
- (id)_collectionViewLayoutGallerySectionWithWidth:(double)a3 sizeClasses:(id)a4;
- (id)_currentPresenter;
- (id)_effectiveSearchController;
- (id)_generateLayoutSectionForSectionIdx:(unint64_t)a3 width:(double)a4;
- (id)_generateSnapshotDiffedFromSnapshot:(id)a3;
- (id)_iconImageForApplicationWidgetCollection:(id)a3;
- (id)_itemsArrayWithSizeClasses:(id)a3 nSmallsGroup:(id)a4 mediumAndSmallGroup:(id)a5 usesThreeColumnLayout:(BOOL)a6;
- (id)_listLayoutForWidgetSizing;
- (id)_materialViewForVisualStyling;
- (id)_newBackgroundView;
- (id)_newPadCollectionViewLayoutGallerySectionWithWidth:(double)a3 sizeClasses:(id)a4;
- (id)_newWrapperViewControllerWithGalleryItem:(id)a3 sizeClass:(int64_t)a4;
- (id)_otherDescriptionLabel;
- (id)_podsArrayWithSizeClasses:(id)a3 columnCount:(int64_t)a4;
- (id)_presentedGalleryViewController;
- (id)_searchTextForSearchController:(id)a3;
- (id)_sizeClasses;
- (id)_suggestedItems;
- (id)_updatedContentUnavailableConfigurationUsingState:(id)a3;
- (id)applicationWidgetCollectionsToUse;
- (id)backgroundViewMatchingMaterialBeneathAddWidgetSheetViewController:(id)a3;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4 itemIdentifier:(id)a5;
- (id)contentUnavailableConfigurationState;
- (id)suggestedItemsForGalleryLayoutSize:(unint64_t)a3;
- (int64_t)widgetWrapperViewControllerBackgroundType;
- (unint64_t)_applicationWidgetCollectionIndexForItemIndex:(unint64_t)a3;
- (unint64_t)_sectionIndexForSection:(unint64_t)a3;
- (unint64_t)supportedInterfaceOrientations;
- (void)_addBarSwipeView;
- (void)_backgroundTapped:(id)a3;
- (void)_clearDetailViewController;
- (void)_collectionView:(id)a3 updateSeparatorVisibility:(BOOL)a4 forHighlightAtIndexPath:(id)a5;
- (void)_contentSizeCategoryDidChange:(id)a3;
- (void)_keyboardWillDismiss:(id)a3;
- (void)_keyboardWillShow:(id)a3;
- (void)_layoutCollectionViewForScalingIfNeeded;
- (void)_layoutSearchBarGradientMaskLayers;
- (void)_makeFakeGalleryItemsFromHomeScreenItems:(id)a3;
- (void)_makeGalleryItemsFromHomeScreenItems:(id)a3;
- (void)_presentDetailSheetForGalleryCellAtIndexPath:(id)a3;
- (void)_presentDetailSheetViewControllerForApplicationWidgetCollection:(id)a3 configuredWithGalleryItem:(id)a4 selectedSizeClass:(int64_t)a5 fromCell:(id)a6 atIndexPath:(id)a7;
- (void)_presentDetailViewController:(id)a3 fromCell:(id)a4;
- (void)_presentGalleryCell;
- (void)_refreshData:(BOOL)a3;
- (void)_relayoutSearchBarBackground;
- (void)_reloadData:(BOOL)a3;
- (void)_selectFirstItem;
- (void)_setContentInsetsForGridWithWidth:(double)a3;
- (void)_setGrabberTopSpacingForStyleCollapsed;
- (void)_splitApplicationWidgetCollections;
- (void)_toggleShowingDisfavoredApplicationWidgetCollections;
- (void)_updateCollectionViewInsets;
- (void)_updateContentInsetsIfNecessaryForWidth:(double)a3;
- (void)_updateHorizontalSpacing;
- (void)_updateSearchBarContentInsets;
- (void)_updateSearchBarOverrideUserInterfaceStyle;
- (void)addWidgetSheetViewController:(id)a3 didSelectWidgetIconView:(id)a4;
- (void)addWidgetSheetViewControllerDidCancel:(id)a3;
- (void)closeButtonTapped:(id)a3;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)dealloc;
- (void)didDismissSearchController:(id)a3;
- (void)didMoveToParentViewController:(id)a3;
- (void)loadView;
- (void)presentationControllerWillDismiss:(id)a3;
- (void)scrollViewDidScroll:(id)a3;
- (void)setApplicationWidgetCollections:(id)a3;
- (void)setBarSwipeViewController:(id)a3;
- (void)setCustomApplicationWidgetCollections:(id)a3;
- (void)setDisfavoredApplicationWidgetCollections:(id)a3;
- (void)setExternalSearchController:(id)a3;
- (void)setFavoredApplicationWidgetCollections:(id)a3;
- (void)setGalleryItems:(id)a3;
- (void)setGalleryLayoutSize:(unint64_t)a3;
- (void)setSuggestedItems:(id)a3 forGalleryLayoutSize:(unint64_t)a4;
- (void)setWantsBottomAttachedPresentation:(BOOL)a3;
- (void)updateContentUnavailableConfigurationUsingState:(id)a3;
- (void)updateSearchResultsForSearchController:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
- (void)willPresentSearchController:(id)a3;
@end

@implementation SBHAddWidgetSheetViewController

- (SBHAddWidgetSheetViewController)initWithConfiguration:(id)a3
{
  v4 = a3;
  v5 = [v4 listLayoutProvider];
  v6 = [v4 iconViewProvider];
  v7 = [v4 style];
  v8 = SBHWidgetFilteringParametersNone();
  v13.receiver = self;
  v13.super_class = SBHAddWidgetSheetViewController;
  v10 = [(SBHAddWidgetSheetViewControllerBase *)&v13 initWithListLayoutProvider:v5 iconViewProvider:v6 allowedWidgets:v8 appCellConfigurator:v9 addWidgetSheetStyle:0, v7];
  v11 = v10;
  if (v10)
  {
    [(SBHAddWidgetSheetViewController *)v10 setConfiguration:v4];
  }

  return v11;
}

- (SBHAddWidgetSheetViewController)initWithListLayoutProvider:(id)a3 iconViewProvider:(id)a4 allowedWidgets:(SBHWidgetFilteringParameters)a5 appCellConfigurator:(id)a6 addWidgetSheetStyle:(unint64_t)a7
{
  v38.receiver = self;
  v38.super_class = SBHAddWidgetSheetViewController;
  v7 = [(SBHAddWidgetSheetViewControllerBase *)&v38 initWithListLayoutProvider:a3 iconViewProvider:a4 allowedWidgets:a5.families appCellConfigurator:*&a5.includesNonStackable addWidgetSheetStyle:a6, a7];
  v8 = v7;
  if (v7)
  {
    v7->_galleryLayoutSize = 4;
    v9 = [MEMORY[0x1E695DF90] dictionary];
    suggestedItemsByGalleryLayoutSize = v8->_suggestedItemsByGalleryLayoutSize;
    v8->_suggestedItemsByGalleryLayoutSize = v9;

    v11 = [MEMORY[0x1E696AD88] defaultCenter];
    [v11 addObserver:v8 selector:sel__contentSizeCategoryDidChange_ name:*MEMORY[0x1E69DDC48] object:0];

    if ([(SBHAddWidgetSheetViewControllerBase *)v8 addWidgetSheetStyle]== 1)
    {
      v12 = SBHScreenTypeForCurrentDevice();
      SBHPadAddWidgetSheetMetricsForScreenTypeAndInterfaceOrientation(v12, 3, &v28);
      v13 = v29;
      *&v8->_landscapeMetrics.sheetMargin = v28;
      *&v8->_landscapeMetrics.sidebarWidth = v13;
      v14 = v30;
      v15 = v31;
      v16 = v33;
      *&v8->_landscapeMetrics.scaledWidgetSize.height = v32;
      v8->_landscapeMetrics.detailWidgetPadding = v16;
      *&v8->_landscapeMetrics.trailingPadding = v14;
      *&v8->_landscapeMetrics.widgetScaleFactor = v15;
      v17 = v34;
      v18 = v35;
      v19 = v36;
      v8->_landscapeMetrics.sidebarPadding.trailing = v37;
      *&v8->_landscapeMetrics.detailPageControlTopSpacing = v18;
      *&v8->_landscapeMetrics.sidebarPadding.leading = v19;
      *&v8->_landscapeMetrics.detailAddButtonTopSpacing = v17;
      SBHPadAddWidgetSheetMetricsForScreenTypeAndInterfaceOrientation(v12, 1, &v28);
      v20 = v29;
      *&v8->_portraitMetrics.sheetMargin = v28;
      *&v8->_portraitMetrics.sidebarWidth = v20;
      v21 = v30;
      v22 = v31;
      v23 = v33;
      *&v8->_portraitMetrics.scaledWidgetSize.height = v32;
      v8->_portraitMetrics.detailWidgetPadding = v23;
      *&v8->_portraitMetrics.trailingPadding = v21;
      *&v8->_portraitMetrics.widgetScaleFactor = v22;
      v24 = v34;
      v25 = v35;
      v26 = v36;
      v8->_portraitMetrics.sidebarPadding.trailing = v37;
      *&v8->_portraitMetrics.detailPageControlTopSpacing = v25;
      *&v8->_portraitMetrics.sidebarPadding.leading = v26;
      *&v8->_portraitMetrics.detailAddButtonTopSpacing = v24;
    }

    else if (![(SBHAddWidgetSheetViewControllerBase *)v8 addWidgetSheetStyle])
    {
      [(SBHAddWidgetSheetViewController *)v8 setWantsBottomAttachedPresentation:1];
    }

    v8->_widgetScaleFactor = 1.0;
    v8->_isShowingDisfavoredApplicationWidgetCollections = 0;
  }

  return v8;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x1E69DDC48] object:0];

  v4.receiver = self;
  v4.super_class = SBHAddWidgetSheetViewController;
  [(SBHAddWidgetSheetViewController *)&v4 dealloc];
}

- (unint64_t)supportedInterfaceOrientations
{
  if ([(SBHAddWidgetSheetViewControllerBase *)self addWidgetSheetStyle]== 1)
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

- (void)setSuggestedItems:(id)a3 forGalleryLayoutSize:(unint64_t)a4
{
  v12 = a3;
  suggestedItemsByGalleryLayoutSize = self->_suggestedItemsByGalleryLayoutSize;
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
  v8 = [(NSMutableDictionary *)suggestedItemsByGalleryLayoutSize objectForKeyedSubscript:v7];

  if (v8 != v12)
  {
    v9 = self->_suggestedItemsByGalleryLayoutSize;
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
    [(NSMutableDictionary *)v9 setObject:v12 forKeyedSubscript:v10];

    if ([(SBHAddWidgetSheetViewController *)self isViewLoaded]&& self->_galleryLayoutSize == a4)
    {
      [(SBHAddWidgetSheetViewController *)self _makeGalleryItemsFromHomeScreenItems:v12];
    }

    v11 = [(SBHAddWidgetSheetViewController *)self _presentedGalleryViewController];
    [v11 setSuggestedItems:v12 forGalleryLayoutSize:a4];
  }
}

- (id)suggestedItemsForGalleryLayoutSize:(unint64_t)a3
{
  suggestedItemsByGalleryLayoutSize = self->_suggestedItemsByGalleryLayoutSize;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v5 = [(NSMutableDictionary *)suggestedItemsByGalleryLayoutSize objectForKeyedSubscript:v4];

  return v5;
}

- (id)_suggestedItems
{
  suggestedItemsByGalleryLayoutSize = self->_suggestedItemsByGalleryLayoutSize;
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_galleryLayoutSize];
  v4 = [(NSMutableDictionary *)suggestedItemsByGalleryLayoutSize objectForKeyedSubscript:v3];

  return v4;
}

- (void)setApplicationWidgetCollections:(id)a3
{
  v4 = a3;
  v5 = [(SBHAddWidgetSheetViewControllerBase *)self allowedWidgets];
  applicationWidgetCollections = self->_applicationWidgetCollections;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __67__SBHAddWidgetSheetViewController_setApplicationWidgetCollections___block_invoke;
  v15[3] = &__block_descriptor_48_e40_B16__0__SBHApplicationWidgetCollection_8l;
  v15[4] = v5;
  v15[5] = v7;
  v8 = [v4 bs_filter:v15];

  v9 = self->_applicationWidgetCollections;
  self->_applicationWidgetCollections = v8;

  applicationWidgetCollectionForApplicationWidgetCollectionIdentifierLookupTable = self->_applicationWidgetCollectionForApplicationWidgetCollectionIdentifierLookupTable;
  if (applicationWidgetCollectionForApplicationWidgetCollectionIdentifierLookupTable)
  {
    [(NSMapTable *)applicationWidgetCollectionForApplicationWidgetCollectionIdentifierLookupTable removeAllObjects];
  }

  else
  {
    v11 = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
    v12 = self->_applicationWidgetCollectionForApplicationWidgetCollectionIdentifierLookupTable;
    self->_applicationWidgetCollectionForApplicationWidgetCollectionIdentifierLookupTable = v11;
  }

  v13 = self->_applicationWidgetCollections;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __67__SBHAddWidgetSheetViewController_setApplicationWidgetCollections___block_invoke_3;
  v14[3] = &unk_1E808ABA8;
  v14[4] = self;
  [(NSArray *)v13 enumerateObjectsUsingBlock:v14];
  [(SBHAddWidgetSheetViewController *)self _splitApplicationWidgetCollections];
  if (applicationWidgetCollections)
  {
    [(SBHAddWidgetSheetViewController *)self _refreshData:[(SBHAddWidgetSheetViewController *)self _shouldAnimateChanges]];
  }

  else
  {
    [(SBHAddWidgetSheetViewController *)self _reloadData];
  }
}

BOOL __67__SBHAddWidgetSheetViewController_setApplicationWidgetCollections___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 widgetDescriptors];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __67__SBHAddWidgetSheetViewController_setApplicationWidgetCollections___block_invoke_2;
  v9[3] = &__block_descriptor_48_e40_B16__0___SBHAddWidgetSheetGalleryItem__8l;
  v10 = *(a1 + 32);
  v5 = [v4 bs_filter:v9];
  [v3 setWidgetDescriptors:v5];

  v6 = [v3 widgetDescriptors];

  v7 = [v6 count] != 0;
  return v7;
}

uint64_t __67__SBHAddWidgetSheetViewController_setApplicationWidgetCollections___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = SBHWidgetFilteringParametersNone();
  v6 = *(a1 + 32);
  if (v6 == v4 && (v5 & 1) == *(a1 + 40) && ((v5 >> 8) & 1) == *(a1 + 41))
  {
    goto LABEL_10;
  }

  if (([v3 sbh_supportedSizeClasses] & v6) == 0 || (*(a1 + 40) & 1) == 0 && !objc_msgSend(v3, "sbh_canBeAddedToStack"))
  {
    v7 = 0;
    goto LABEL_11;
  }

  if (*(a1 + 41) != 1)
  {
LABEL_10:
    v7 = 1;
    goto LABEL_11;
  }

  v7 = [v3 sbh_supportsRemovableBackgroundOrAccessoryFamilies];
LABEL_11:

  return v7;
}

void __67__SBHAddWidgetSheetViewController_setApplicationWidgetCollections___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 1624);
  v3 = a2;
  v4 = [v3 collectionIdentifier];
  [v2 setObject:v3 forKey:v4];
}

- (void)setFavoredApplicationWidgetCollections:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = SBLogAddWidgetSheet();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = v5;
    _os_log_impl(&dword_1BEB18000, v6, OS_LOG_TYPE_DEFAULT, "setFavoredApplicationWidgetCollections:%@", buf, 0xCu);
  }

  objc_storeStrong(&self->_favoredApplicationWidgetCollections, a3);
  favoredApplicationWidgetCollectionForApplicationWidgetCollectionIdentifierLookupTable = self->_favoredApplicationWidgetCollectionForApplicationWidgetCollectionIdentifierLookupTable;
  if (favoredApplicationWidgetCollectionForApplicationWidgetCollectionIdentifierLookupTable)
  {
    [(NSMapTable *)favoredApplicationWidgetCollectionForApplicationWidgetCollectionIdentifierLookupTable removeAllObjects];
  }

  else
  {
    v8 = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
    v9 = self->_favoredApplicationWidgetCollectionForApplicationWidgetCollectionIdentifierLookupTable;
    self->_favoredApplicationWidgetCollectionForApplicationWidgetCollectionIdentifierLookupTable = v8;
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __74__SBHAddWidgetSheetViewController_setFavoredApplicationWidgetCollections___block_invoke;
  v10[3] = &unk_1E808ABA8;
  v10[4] = self;
  [v5 enumerateObjectsUsingBlock:v10];
}

void __74__SBHAddWidgetSheetViewController_setFavoredApplicationWidgetCollections___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 1632);
  v3 = a2;
  v4 = [v3 collectionIdentifier];
  [v2 setObject:v3 forKey:v4];
}

- (void)setDisfavoredApplicationWidgetCollections:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = SBLogAddWidgetSheet();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = v5;
    _os_log_impl(&dword_1BEB18000, v6, OS_LOG_TYPE_DEFAULT, "setDisFavoredApplicationWidgetCollections:%@", buf, 0xCu);
  }

  objc_storeStrong(&self->_disfavoredApplicationWidgetCollections, a3);
  disfavoredApplicationWidgetCollectionForApplicationWidgetCollectionIdentifierLookupTable = self->_disfavoredApplicationWidgetCollectionForApplicationWidgetCollectionIdentifierLookupTable;
  if (disfavoredApplicationWidgetCollectionForApplicationWidgetCollectionIdentifierLookupTable)
  {
    [(NSMapTable *)disfavoredApplicationWidgetCollectionForApplicationWidgetCollectionIdentifierLookupTable removeAllObjects];
  }

  else
  {
    v8 = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
    v9 = self->_disfavoredApplicationWidgetCollectionForApplicationWidgetCollectionIdentifierLookupTable;
    self->_disfavoredApplicationWidgetCollectionForApplicationWidgetCollectionIdentifierLookupTable = v8;
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __77__SBHAddWidgetSheetViewController_setDisfavoredApplicationWidgetCollections___block_invoke;
  v10[3] = &unk_1E808ABA8;
  v10[4] = self;
  [v5 enumerateObjectsUsingBlock:v10];
}

void __77__SBHAddWidgetSheetViewController_setDisfavoredApplicationWidgetCollections___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 1640);
  v3 = a2;
  v4 = [v3 collectionIdentifier];
  [v2 setObject:v3 forKey:v4];
}

- (void)setCustomApplicationWidgetCollections:(id)a3
{
  v5 = a3;
  customApplicationWidgetCollections = self->_customApplicationWidgetCollections;
  objc_storeStrong(&self->_customApplicationWidgetCollections, a3);
  customApplicationWidgetCollectionForApplicationWidgetCollectionIdentifierLookupTable = self->_customApplicationWidgetCollectionForApplicationWidgetCollectionIdentifierLookupTable;
  if (customApplicationWidgetCollectionForApplicationWidgetCollectionIdentifierLookupTable)
  {
    [(NSMapTable *)customApplicationWidgetCollectionForApplicationWidgetCollectionIdentifierLookupTable removeAllObjects];
  }

  else
  {
    v8 = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
    v9 = self->_customApplicationWidgetCollectionForApplicationWidgetCollectionIdentifierLookupTable;
    self->_customApplicationWidgetCollectionForApplicationWidgetCollectionIdentifierLookupTable = v8;
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __73__SBHAddWidgetSheetViewController_setCustomApplicationWidgetCollections___block_invoke;
  v10[3] = &unk_1E808ABA8;
  v10[4] = self;
  [v5 enumerateObjectsUsingBlock:v10];
  if (customApplicationWidgetCollections)
  {
    [(SBHAddWidgetSheetViewController *)self _refreshData:[(SBHAddWidgetSheetViewController *)self _shouldAnimateChanges]];
  }

  else
  {
    [(SBHAddWidgetSheetViewController *)self _reloadData];
  }
}

void __73__SBHAddWidgetSheetViewController_setCustomApplicationWidgetCollections___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 1648);
  v3 = a2;
  v4 = [v3 collectionIdentifier];
  [v2 setObject:v3 forKey:v4];
}

- (OS_dispatch_queue)applicationWidgetCollectionIconLoadingQueue
{
  applicationWidgetCollectionIconLoadingQueue = self->_applicationWidgetCollectionIconLoadingQueue;
  if (applicationWidgetCollectionIconLoadingQueue)
  {
    v3 = applicationWidgetCollectionIconLoadingQueue;
  }

  else
  {
    v5 = [MEMORY[0x1E698E698] concurrent];
    v6 = [v5 serviceClass:25];

    v7 = BSDispatchQueueCreate();
    v8 = self->_applicationWidgetCollectionIconLoadingQueue;
    self->_applicationWidgetCollectionIconLoadingQueue = v7;

    v3 = self->_applicationWidgetCollectionIconLoadingQueue;
  }

  return v3;
}

- (void)setGalleryLayoutSize:(unint64_t)a3
{
  if (self->_galleryLayoutSize != a3)
  {
    self->_galleryLayoutSize = a3;
    if ([(SBHAddWidgetSheetViewController *)self _shouldShowGallery]&& ![(SBHAddWidgetSheetViewController *)self shouldShowGalleryOnly])
    {
      [(SBHAddWidgetSheetViewController *)self _reloadData];
    }

    else
    {
      v6 = [(SBHAddWidgetSheetViewController *)self _suggestedItems];
      [(SBHAddWidgetSheetViewController *)self _makeGalleryItemsFromHomeScreenItems:v6];
    }

    v7 = [(SBHAddWidgetSheetViewController *)self _presentedGalleryViewController];
    [v7 setGalleryLayoutSize:a3];
  }
}

- (void)setWantsBottomAttachedPresentation:(BOOL)a3
{
  if (self->_wantsBottomAttachedPresentation != a3)
  {
    v4 = a3;
    self->_wantsBottomAttachedPresentation = a3;
    [(SBHWidgetSearchController *)self->_searchController setShouldInsetContentForGrabber:?];
    v6 = [(SBHAddWidgetSheetViewController *)self sheetPresentationController];
    [v6 _setWantsBottomAttached:v4];
  }
}

- (void)loadView
{
  v69[4] = *MEMORY[0x1E69E9840];
  v67.receiver = self;
  v67.super_class = SBHAddWidgetSheetViewController;
  [(SBHAddWidgetSheetViewController *)&v67 loadView];
  v61 = [(SBHAddWidgetSheetViewController *)self view];
  v60 = [(SBHAddWidgetSheetViewController *)self configuration];
  v57 = [(SBHAddWidgetSheetViewControllerBase *)self addWidgetSheetStyle];
  if (v57 != 1)
  {
    v3 = [(SBHAddWidgetSheetViewController *)self _newBackgroundView];
    backgroundView = self->_backgroundView;
    self->_backgroundView = v3;

    v5 = self->_backgroundView;
    [v61 bounds];
    [(MTMaterialView *)v5 setFrame:?];
    [(MTMaterialView *)self->_backgroundView setAutoresizingMask:18];
    [v61 addSubview:self->_backgroundView];
  }

  objc_initWeak(&location, self);
  v6 = [_SBHCustomUICollectionViewCompositionalLayout alloc];
  v64[0] = MEMORY[0x1E69E9820];
  v64[1] = 3221225472;
  v64[2] = __43__SBHAddWidgetSheetViewController_loadView__block_invoke;
  v64[3] = &unk_1E808ABD0;
  objc_copyWeak(&v65, &location);
  v58 = [(_SBHCustomUICollectionViewCompositionalLayout *)v6 initWithSectionProvider:v64];
  v59 = objc_alloc_init(MEMORY[0x1E69DC810]);
  [v59 setInterSectionSpacing:16.0];
  [(_SBHCustomUICollectionViewCompositionalLayout *)v58 setConfiguration:v59];
  v7 = [_SBHAddWidgetSheetCollectionView alloc];
  [v61 bounds];
  v8 = [(_SBHAddWidgetSheetCollectionView *)v7 initWithFrame:v58 collectionViewLayout:?];
  collectionView = self->_collectionView;
  self->_collectionView = v8;

  [(_SBHAddWidgetSheetCollectionView *)self->_collectionView setDelegate:self];
  [(_SBHAddWidgetSheetCollectionView *)self->_collectionView setShowsVerticalScrollIndicator:0];
  [(_SBHAddWidgetSheetCollectionView *)self->_collectionView setDelaysContentTouches:0];
  [(_SBHAddWidgetSheetCollectionView *)self->_collectionView setAccessibilityIdentifier:@"add-sheet-collection-view"];
  -[_SBHAddWidgetSheetCollectionView setContainsInteractiveUIControls:](self->_collectionView, "setContainsInteractiveUIControls:", [v60 contentContainsInteractiveUIControls]);
  [(_SBHAddWidgetSheetCollectionView *)self->_collectionView _setPocketsEnabled:[(SBHAddWidgetSheetViewController *)self _wantsPocketSupressed]^ 1];
  if ([v60 wantsGlassGroupAppliedToGalleryContents])
  {
    [(UIView *)self->_collectionView sbh_createGlassGroup];
  }

  v10 = objc_alloc(MEMORY[0x1E69DC820]);
  v11 = self->_collectionView;
  v62[0] = MEMORY[0x1E69E9820];
  v62[1] = 3221225472;
  v62[2] = __43__SBHAddWidgetSheetViewController_loadView__block_invoke_2;
  v62[3] = &unk_1E808ABF8;
  objc_copyWeak(&v63, &location);
  v12 = [v10 initWithCollectionView:v11 cellProvider:v62];
  diffableDataSource = self->_diffableDataSource;
  self->_diffableDataSource = v12;

  v14 = self->_collectionView;
  v15 = [MEMORY[0x1E69DC888] clearColor];
  [(_SBHAddWidgetSheetCollectionView *)v14 setBackgroundColor:v15];

  [(_SBHAddWidgetSheetCollectionView *)self->_collectionView setKeyboardDismissMode:2];
  [(_SBHAddWidgetSheetCollectionView *)self->_collectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:@"kSBHAddWidgetSheetGalleryCellReuseIdentifier"];
  [(_SBHAddWidgetSheetCollectionView *)self->_collectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:@"kSBHAddWidgetSheetViewControllerCollectionViewReuseIdentifier"];
  [(_SBHAddWidgetSheetCollectionView *)self->_collectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:@"kSBHAddWidgetSheetViewControllerListCellReuseIdentifier"];
  [v61 addSubview:self->_collectionView];
  v16 = objc_alloc_init(_SBHAddWidgetSheetGalleryWrapperView);
  wrapperView = self->_wrapperView;
  self->_wrapperView = v16;

  [(_SBHAddWidgetSheetGalleryWrapperView *)self->_wrapperView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(_SBHAddWidgetSheetGalleryWrapperView *)self->_wrapperView setContentView:self->_collectionView];
  [v61 addSubview:self->_wrapperView];
  v55 = [(_SBHAddWidgetSheetGalleryWrapperView *)self->_wrapperView leadingAnchor];
  v56 = [v61 safeAreaLayoutGuide];
  v54 = [v56 leadingAnchor];
  v53 = [v55 constraintEqualToAnchor:v54];
  v69[0] = v53;
  v51 = [(_SBHAddWidgetSheetGalleryWrapperView *)self->_wrapperView trailingAnchor];
  v52 = [v61 safeAreaLayoutGuide];
  v18 = [v52 trailingAnchor];
  v19 = [v51 constraintEqualToAnchor:v18];
  v69[1] = v19;
  v20 = [(_SBHAddWidgetSheetGalleryWrapperView *)self->_wrapperView topAnchor];
  v21 = [v61 topAnchor];
  v22 = [v20 constraintEqualToAnchor:v21];
  v69[2] = v22;
  v23 = [(_SBHAddWidgetSheetGalleryWrapperView *)self->_wrapperView bottomAnchor];
  v24 = [v61 bottomAnchor];
  v25 = [v23 constraintEqualToAnchor:v24];
  v69[3] = v25;
  v49 = [MEMORY[0x1E695DEC8] arrayWithObjects:v69 count:4];

  [MEMORY[0x1E696ACD8] activateConstraints:v49];
  if (v57 != 1)
  {
    v26 = [v60 searchPlaceholderText];
    v27 = v26;
    if (v26)
    {
      v28 = v26;
    }

    else
    {
      v29 = SBHBundle();
      v28 = [v29 localizedStringForKey:@"WIDGET_ADD_SHEET_SEARCH_PLACEHOLDER" value:&stru_1F3D472A8 table:@"SpringBoardHome"];
    }

    v30 = [[SBHWidgetSearchController alloc] initWithAddWidgetSheetStyle:v57 placeholderText:v28];
    searchController = self->_searchController;
    self->_searchController = v30;

    [(SBHWidgetSearchController *)self->_searchController setObscuresBackgroundDuringPresentation:0];
    [(SBHWidgetSearchController *)self->_searchController setDelegate:self];
    [(SBHWidgetSearchController *)self->_searchController setSearchResultsUpdater:self];
    [(SBHWidgetSearchController *)self->_searchController setShouldInsetContentForGrabber:self->_wantsBottomAttachedPresentation];
    -[SBHWidgetSearchController setApplicationCellIncludesGalleryListView:](self->_searchController, "setApplicationCellIncludesGalleryListView:", [v60 applicationCellIncludesGalleryListView]);
    v32 = self->_searchController;
    v33 = [v60 listLayoutProvider];
    [(SBHWidgetSearchController *)v32 setListLayoutProvider:v33];

    v34 = self->_searchController;
    v35 = [v60 gridSizeClassForContentWidth];
    [(SBHWidgetSearchController *)v34 setWidthDefiningGridSizeClass:v35];

    v36 = [(SBHWidgetSearchController *)self->_searchController searchBar];
    [(SBHAddWidgetSheetViewController *)self _updateSearchBarContentInsets];
    [v36 sizeToFit];
    v37 = [v60 searchTintColor];
    if (v37)
    {
      [v36 setTintColor:v37];
    }

    [(SBHAddWidgetSheetViewController *)self _updateSearchBarOverrideUserInterfaceStyle];
    v38 = [objc_alloc(MEMORY[0x1E69DD6C8]) initWithScrollView:self->_collectionView edge:1 style:1];
    v39 = [v36 searchField];
    [v39 addInteraction:v38];

    [v61 addSubview:v36];
    [(SBHAddWidgetSheetViewController *)self _updateCollectionViewInsets];
    v40 = [MEMORY[0x1E69D3FC0] configureGradientMaskForFeatherBlurRecipe:4 onContentView:self->_collectionView];
    searchBarGradientMaskLayers = self->_searchBarGradientMaskLayers;
    self->_searchBarGradientMaskLayers = v40;

    [(SBHAddWidgetSheetViewController *)self _layoutSearchBarGradientMaskLayers];
  }

  v42 = [(SBHAddWidgetSheetViewController *)self _materialViewForVisualStyling];
  v43 = [v42 visualStylingProviderForCategory:2];

  v44 = [(SBHWidgetSearchController *)self->_searchController searchBarTextFieldBackgroundView];
  [v43 automaticallyUpdateView:v44 withStyle:2];

  v45 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel__backgroundTapped_];
  [v45 setCancelsTouchesInView:0];
  [(_SBHAddWidgetSheetCollectionView *)self->_collectionView addGestureRecognizer:v45];
  v46 = objc_opt_self();
  v68 = v46;
  v47 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v68 count:1];
  v48 = [(SBHAddWidgetSheetViewController *)self registerForTraitChanges:v47 withAction:sel__updateSearchBarOverrideUserInterfaceStyle];

  [(SBHAddWidgetSheetViewController *)self _addBarSwipeView];
  objc_destroyWeak(&v63);

  objc_destroyWeak(&v65);
  objc_destroyWeak(&location);
}

id __43__SBHAddWidgetSheetViewController_loadView__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v7 = [v5 container];
    [v7 contentSize];
    v9 = v8;

    v10 = [WeakRetained _generateLayoutSectionForSectionIdx:a2 width:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

id __43__SBHAddWidgetSheetViewController_loadView__block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11 = [WeakRetained collectionView:v9 cellForItemAtIndexPath:v8 itemIdentifier:v7];

  return v11;
}

- (id)_newBackgroundView
{
  v2 = [(SBHAddWidgetSheetViewController *)self configuration];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 backgroundMaterial];
    if (v4 > 2)
    {
      v5 = 0;
    }

    else
    {
      v5 = qword_1BEE858C0[v4];
    }
  }

  else
  {
    v5 = 54;
  }

  v6 = [MEMORY[0x1E69AE158] materialViewWithRecipe:v5];
  [v6 setBackdropScaleAdjustment:&__block_literal_global_20];
  [v6 setGroupNameBase:@"Add-Sheet"];

  return v6;
}

- (void)_contentSizeCategoryDidChange:(id)a3
{
  collectionView = self->_collectionView;
  v5 = a3;
  [(_SBHAddWidgetSheetCollectionView *)collectionView contentInset];
  v7 = v6;
  [(_SBHAddWidgetSheetCollectionView *)self->_collectionView contentOffset];
  v9 = v8;
  v11 = [(SBHAddWidgetSheetViewController *)self _effectiveSearchController];
  [v11 _contentSizeCategoryDidChange:v5];

  v10 = [v11 searchBar];
  [v10 sizeToFit];
  [v10 layoutIfNeeded];
  [(SBHAddWidgetSheetViewController *)self _updateCollectionViewInsets];
  [(_SBHAddWidgetSheetCollectionView *)self->_collectionView contentInset];
  [(_SBHAddWidgetSheetCollectionView *)self->_collectionView contentOffset];
  if (v9 == -v7)
  {
    [(_SBHAddWidgetSheetCollectionView *)self->_collectionView setContentOffset:?];
  }

  [(SBHAddWidgetSheetViewController *)self _layoutSearchBarGradientMaskLayers];
  [(SBHAddWidgetSheetViewController *)self scrollViewDidScroll:self->_collectionView];
}

- ($C48D5C44E1E4BC3B38DCA2BDA7A0443F)sheetIconMetrics
{
  p_var1 = &self[39].var1;
  if (self[39].var1.size.width == 0.0)
  {
    v5 = self;
    v6 = [($C48D5C44E1E4BC3B38DCA2BDA7A0443F *)self traitCollection];
    [v6 displayScale];
    v8 = v7;

    v9 = [($C48D5C44E1E4BC3B38DCA2BDA7A0443F *)v5 configuration];
    v10 = [v9 applicationCellIncludesGalleryListView];

    if (v10)
    {
      SBHAddWidgetSheetListViewIconMetricsForScale(v13, v8);
LABEL_8:
      v11 = v13[1];
      p_var1->size = v13[0];
      *&p_var1->scale = v11;
      p_var1[1].size.width = v14;
      goto LABEL_9;
    }

    self = [($C48D5C44E1E4BC3B38DCA2BDA7A0443F *)v5 addWidgetSheetStyle];
    if (self == 1)
    {
      SBHAddWidgetSheetSplitViewIconMetricsForScale(v13, v8);
      goto LABEL_8;
    }

    if (!self)
    {
      SBHAddWidgetSheetCompactViewIconMetricsForScale(v13, v8);
      goto LABEL_8;
    }
  }

LABEL_9:
  v12 = *&p_var1->scale;
  *&retstr->var0 = p_var1->size;
  *&retstr->var1.size.height = v12;
  retstr->var1.continuousCornerRadius = p_var1[1].size.width;
  return self;
}

- (void)viewWillAppear:(BOOL)a3
{
  v11.receiver = self;
  v11.super_class = SBHAddWidgetSheetViewController;
  [(SBHAddWidgetSheetViewController *)&v11 viewWillAppear:a3];
  v4 = [(SBHAddWidgetSheetViewControllerBase *)self delegate];
  [v4 addWidgetSheetViewControllerWillAppear:self];

  v5 = [(SBHAddWidgetSheetViewController *)self _suggestedItems];
  if ([(SBHAddWidgetSheetViewController *)self _canShowGallery]&& !self->_galleryItems)
  {
    [(SBHAddWidgetSheetViewController *)self _makeGalleryItemsFromHomeScreenItems:v5];
  }

  v6 = [MEMORY[0x1E696AD88] defaultCenter];
  [v6 addObserver:self selector:sel__keyboardWillShow_ name:*MEMORY[0x1E69DE080] object:0];

  v7 = [MEMORY[0x1E696AD88] defaultCenter];
  [v7 addObserver:self selector:sel__keyboardWillDismiss_ name:*MEMORY[0x1E69DE078] object:0];

  v8 = [(SBHAddWidgetSheetViewController *)self navigationItem];
  [v8 _setNavigationBarHidden:{-[SBHAddWidgetSheetViewController _wantsNavigationBarHidden](self, "_wantsNavigationBarHidden")}];

  if (!self->_performedInitialSelection)
  {
    self->_performedInitialSelection = 1;
    if ([(SBHAddWidgetSheetViewControllerBase *)self addWidgetSheetStyle]== 1 && ![(SBHAddWidgetSheetViewController *)self shouldShowGalleryOnly])
    {
      [(SBHAddWidgetSheetViewController *)self _selectFirstItem];
      if (!self->_lastSelectedIndexPath)
      {
        [(SBHAddWidgetSheetViewController *)self _presentGalleryCell];
        v9 = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:2];
        lastSelectedIndexPath = self->_lastSelectedIndexPath;
        self->_lastSelectedIndexPath = v9;
      }
    }
  }

  [(SBHAddWidgetSheetViewController *)self _relayoutSearchBarBackground];
  [(SBHAddWidgetSheetViewController *)self _setGrabberTopSpacingForStyleCollapsed];
}

- (void)viewDidAppear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = SBHAddWidgetSheetViewController;
  [(SBHAddWidgetSheetViewController *)&v7 viewDidAppear:a3];
  v4 = [(SBHAddWidgetSheetViewControllerBase *)self delegate];
  [v4 addWidgetSheetViewControllerDidAppear:self];

  if (!__sb__runningInSpringBoard())
  {
    v5 = [MEMORY[0x1E69DC938] currentDevice];
    v6 = [v5 userInterfaceIdiom];

    if (v6)
    {
      goto LABEL_7;
    }

LABEL_6:
    [(_SBHAddWidgetSheetCollectionView *)self->_collectionView setClipsToBounds:0];
    [(_SBHAddWidgetSheetCollectionView *)self->_collectionView setAutoresizingMask:34];
    goto LABEL_7;
  }

  if (!SBFEffectiveDeviceClass() || SBFEffectiveDeviceClass() == 1)
  {
    goto LABEL_6;
  }

LABEL_7:
  [(SBHAddWidgetSheetViewController *)self _updateCollectionViewInsets];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = SBHAddWidgetSheetViewController;
  [(SBHAddWidgetSheetViewController *)&v5 viewWillDisappear:a3];
  v4 = [(SBHAddWidgetSheetViewControllerBase *)self delegate];
  [v4 addWidgetSheetViewControllerWillDisappear:self];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = SBHAddWidgetSheetViewController;
  [(SBHAddWidgetSheetViewController *)&v8 viewDidDisappear:a3];
  v4 = [(SBHAddWidgetSheetViewControllerBase *)self delegate];
  [v4 addWidgetSheetViewControllerDidDisappear:self];

  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  [v5 removeObserver:self name:*MEMORY[0x1E69DE080] object:0];

  v6 = [MEMORY[0x1E696AD88] defaultCenter];
  [v6 removeObserver:self name:*MEMORY[0x1E69DE078] object:0];

  v7 = [(SBHAddWidgetSheetViewController *)self _effectiveSearchController];
  [v7 updateSearchBarBackgroundForScrollDistance:self forClient:2.22507386e-308];

  self->_sheetIconMetrics.horizontalSpacing = 0.0;
}

- (void)viewWillLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = SBHAddWidgetSheetViewController;
  [(SBHAddWidgetSheetViewController *)&v3 viewWillLayoutSubviews];
  [(SBHAddWidgetSheetViewController *)self _layoutSearchBarGradientMaskLayers];
}

- (void)viewDidLayoutSubviews
{
  v4.receiver = self;
  v4.super_class = SBHAddWidgetSheetViewController;
  [(SBHAddWidgetSheetViewController *)&v4 viewDidLayoutSubviews];
  [(SBHAddWidgetSheetViewController *)self _updateSearchBarContentInsets];
  [(SBHAddWidgetSheetViewController *)self _layoutCollectionViewForScalingIfNeeded];
  v3 = [(SBHWidgetSearchController *)self->_searchController searchBar];
  [v3 layoutIfNeeded];

  [(SBHAddWidgetSheetViewController *)self _setGrabberTopSpacingForStyleCollapsed];
}

- (void)_layoutCollectionViewForScalingIfNeeded
{
  if ([(SBHAddWidgetSheetViewControllerBase *)self addWidgetSheetStyle]== 1)
  {
    if ([(SBHAddWidgetSheetViewController *)self shouldShowGalleryOnly])
    {
      [(SBHAddWidgetSheetViewController *)self _metricsForCurrentOrientation:0];
      [(_SBHAddWidgetSheetGalleryWrapperView *)self->_wrapperView setContentScaleFactor:0.0];
      [(_SBHAddWidgetSheetGalleryWrapperView *)self->_wrapperView layoutIfNeeded];
    }
  }
}

- (void)_layoutSearchBarGradientMaskLayers
{
  v34 = *MEMORY[0x1E69E9840];
  [MEMORY[0x1E69D3FC0] gradientMaskLayerInsetsForFeatherBlurRecipe:4];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(SBHWidgetSearchController *)self->_searchController searchBarBackgroundView];
  [v11 frame];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v20 = self->_searchBarGradientMaskLayers;
  v21 = [(NSArray *)v20 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = v19 - (v4 + v8);
    v24 = v17 - (v6 + v10);
    v25 = v4 + v15;
    v26 = v6 + v13;
    v27 = *v30;
    do
    {
      v28 = 0;
      do
      {
        if (*v30 != v27)
        {
          objc_enumerationMutation(v20);
        }

        [*(*(&v29 + 1) + 8 * v28++) setFrame:{v26, v25, v24, v23, v29}];
      }

      while (v22 != v28);
      v22 = [(NSArray *)v20 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v22);
  }
}

- (void)didMoveToParentViewController:(id)a3
{
  v10.receiver = self;
  v10.super_class = SBHAddWidgetSheetViewController;
  [(SBHAddWidgetSheetViewController *)&v10 didMoveToParentViewController:a3];
  if ([(SBHAddWidgetSheetViewControllerBase *)self addWidgetSheetStyle]== 1 && [(SBHAddWidgetSheetViewController *)self shouldShowGalleryOnly])
  {
    v4 = [(SBHAddWidgetSheetViewController *)self splitViewController];
    v5 = [v4 view];

    v6 = self->_collectionView;
    v7 = v6;
    if (v6)
    {
      v8 = v6 == v5;
    }

    else
    {
      v8 = 1;
    }

    if (!v8)
    {
      do
      {
        v9 = v7;
        [(_SBHAddWidgetSheetCollectionView *)v7 setClipsToBounds:0];
        v7 = [(_SBHAddWidgetSheetCollectionView *)v7 superview];
      }

      while (v7 && v7 != v5);
    }
  }
}

- (void)setGalleryItems:(id)a3
{
  v4 = a3;
  if (self->_galleryItems != v4)
  {
    galleryIdentifierToGalleryItemLookupTable = self->_galleryIdentifierToGalleryItemLookupTable;
    if (galleryIdentifierToGalleryItemLookupTable)
    {
      [(NSMapTable *)galleryIdentifierToGalleryItemLookupTable removeAllObjects];
    }

    else
    {
      v6 = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
      v7 = self->_galleryIdentifierToGalleryItemLookupTable;
      self->_galleryIdentifierToGalleryItemLookupTable = v6;
    }

    v8 = (v4 | self->_galleryItems) != 0;
    if (v4)
    {
      v9 = [(NSArray *)v4 copy];
    }

    else
    {
      v9 = MEMORY[0x1E695E0F0];
    }

    galleryItems = self->_galleryItems;
    self->_galleryItems = v9;

    v11 = self->_galleryItems;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __51__SBHAddWidgetSheetViewController_setGalleryItems___block_invoke;
    v12[3] = &unk_1E808AC20;
    v12[4] = self;
    [(NSArray *)v11 enumerateObjectsUsingBlock:v12];
    if (v8)
    {
      [(SBHAddWidgetSheetViewController *)self _refreshData:[(SBHAddWidgetSheetViewController *)self _shouldAnimateChanges]];
    }

    else
    {
      [(SBHAddWidgetSheetViewController *)self _reloadData];
    }
  }
}

void __51__SBHAddWidgetSheetViewController_setGalleryItems___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 1616);
  v3 = a2;
  v5 = [v3 galleryItem];
  v4 = [v5 sbh_galleryItemIdentifier];
  [v2 setObject:v3 forKey:v4];
}

- (void)setBarSwipeViewController:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_barSwipeViewController != v5)
  {
    v7 = v5;
    [(SBHAddWidgetSheetViewController *)self bs_removeChildViewController:?];
    objc_storeStrong(&self->_barSwipeViewController, a3);
    v5 = [(SBHAddWidgetSheetViewController *)self isViewLoaded];
    v6 = v7;
    if (v5)
    {
      v5 = [(SBHAddWidgetSheetViewController *)self _addBarSwipeView];
      v6 = v7;
    }
  }

  MEMORY[0x1EEE66BB8](v5, v6);
}

- (void)_addBarSwipeView
{
  [(SBHAddWidgetSheetViewController *)self bs_addChildViewController:self->_barSwipeViewController];
  v4 = [(UIViewController *)self->_barSwipeViewController view];
  v3 = [(SBHAddWidgetSheetViewController *)self view];
  [v3 bounds];
  [v4 setFrame:?];

  [v4 setUserInteractionEnabled:0];
  [v4 setAutoresizingMask:18];
}

- (void)setExternalSearchController:(id)a3
{
  v5 = a3;
  if (self->_externalSearchController != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_externalSearchController, a3);
    [(SBHAddWidgetSheetViewController *)self _updateSearchBarOverrideUserInterfaceStyle];
    v5 = v6;
  }
}

- (void)closeButtonTapped:(id)a3
{
  v4 = [(SBHAddWidgetSheetViewControllerBase *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 addWidgetSheetViewControllerDidCancel:self];
  }
}

- (void)_backgroundTapped:(id)a3
{
  collectionView = self->_collectionView;
  [a3 locationInView:collectionView];
  v5 = [(_SBHAddWidgetSheetCollectionView *)collectionView indexPathForItemAtPoint:?];

  if (!v5)
  {
    v6 = [(SBHAddWidgetSheetViewController *)self searchController];
    v7 = [v6 isActive];

    if (v7)
    {
      v8 = [(SBHAddWidgetSheetViewController *)self searchController];
      [v8 setActive:0];
    }
  }
}

- (void)_keyboardWillShow:(id)a3
{
  v27 = [a3 userInfo];
  v4 = [(SBHAddWidgetSheetViewController *)self view];
  v5 = [v27 valueForKey:*MEMORY[0x1E69DDFA0]];
  [v5 CGRectValue];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = [(SBHAddWidgetSheetViewController *)self view];
  [v14 convertRect:0 fromView:{v7, v9, v11, v13}];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  [v4 bounds];
  v30.origin.x = v23;
  v30.origin.y = v24;
  v30.size.width = v25;
  v30.size.height = v26;
  v29.origin.x = v16;
  v29.origin.y = v18;
  v29.size.width = v20;
  v29.size.height = v22;
  self->_keyboardFrameIntersect = CGRectIntersection(v29, v30);
  [(SBHAddWidgetSheetViewController *)self _updateCollectionViewInsets];
}

- (void)_keyboardWillDismiss:(id)a3
{
  v3 = *(MEMORY[0x1E695F058] + 16);
  self->_keyboardFrameIntersect.origin = *MEMORY[0x1E695F058];
  self->_keyboardFrameIntersect.size = v3;
  [(SBHAddWidgetSheetViewController *)self _updateCollectionViewInsets];
}

- (void)_relayoutSearchBarBackground
{
  [(_SBHAddWidgetSheetCollectionView *)self->_collectionView adjustedContentInset];
  v4 = v3;
  [(_SBHAddWidgetSheetCollectionView *)self->_collectionView contentOffset];
  v6 = v5;
  v7 = [(SBHAddWidgetSheetViewController *)self _effectiveSearchController];
  [v7 updateSearchBarBackgroundForScrollDistance:self forClient:v4 + v6];

  [(SBHAddWidgetSheetViewController *)self _layoutSearchBarGradientMaskLayers];
  v9 = [(SBHAddWidgetSheetViewController *)self _effectiveSearchController];
  v8 = [v9 searchBar];
  [v8 layoutIfNeeded];
}

- (void)_setGrabberTopSpacingForStyleCollapsed
{
  if (![(SBHAddWidgetSheetViewControllerBase *)self addWidgetSheetStyle])
  {
    v3 = [(SBHAddWidgetSheetViewController *)self sheetPresentationController];
    [(SBHWidgetSearchController *)self->_searchController grabberTopSpacing];
    [v3 _setGrabberTopSpacing:?];
  }
}

- (void)scrollViewDidScroll:(id)a3
{
  if (([MEMORY[0x1E69DD250] _isInAnimationBlock] & 1) == 0)
  {

    [(SBHAddWidgetSheetViewController *)self _relayoutSearchBarBackground];
  }
}

- (id)_generateSnapshotDiffedFromSnapshot:(id)a3
{
  v4 = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __71__SBHAddWidgetSheetViewController__generateSnapshotDiffedFromSnapshot___block_invoke;
  aBlock[3] = &unk_1E808AC90;
  v5 = v4;
  v16 = v5;
  v6 = _Block_copy(aBlock);
  v7 = objc_alloc_init(MEMORY[0x1E69955A0]);
  v8 = 0;
  while (!v8)
  {
    if ([(SBHAddWidgetSheetViewController *)self _shouldShowGallery])
    {
      v10 = [(SBHAddWidgetSheetViewController *)self galleryItems];
      v6[2](v6, v10, v7);
LABEL_13:
    }

LABEL_14:
    if (++v8 == 4)
    {
      goto LABEL_15;
    }
  }

  if ([(SBHAddWidgetSheetViewController *)self shouldShowGalleryOnly])
  {
    goto LABEL_14;
  }

  if (v8 <= 1)
  {
    v9 = [(SBHAddWidgetSheetViewController *)self _shouldShowCustomApplicationsSection];
    if (v9)
    {
      __71__SBHAddWidgetSheetViewController__generateSnapshotDiffedFromSnapshot___block_invoke_5(v9, self->_customApplicationWidgetCollections, v7);
    }

    goto LABEL_14;
  }

  if (v8 == 2)
  {
    v10 = [(SBHAddWidgetSheetViewController *)self applicationWidgetCollectionsToUse];
    v11 = [(SBHAddWidgetSheetViewController *)self _shouldShowSuggestionsListItem];
    if (v11)
    {
      __71__SBHAddWidgetSheetViewController__generateSnapshotDiffedFromSnapshot___block_invoke_4(v11, v7);
    }

    __71__SBHAddWidgetSheetViewController__generateSnapshotDiffedFromSnapshot___block_invoke_7(v11, v10, v7);
    goto LABEL_13;
  }

  v13 = [(SBHAddWidgetSheetViewController *)self _shouldShowDisfavoredSection];
  if (v13)
  {
    __71__SBHAddWidgetSheetViewController__generateSnapshotDiffedFromSnapshot___block_invoke_9(v13, v7);
    if (self->_isShowingDisfavoredApplicationWidgetCollections)
    {
      __71__SBHAddWidgetSheetViewController__generateSnapshotDiffedFromSnapshot___block_invoke_10(v14, self->_disfavoredApplicationWidgetCollections, v7);
    }
  }

LABEL_15:

  return v7;
}

void __71__SBHAddWidgetSheetViewController__generateSnapshotDiffedFromSnapshot___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if ([v5 count])
  {
    v7 = [v6 sectionIdentifiers];
    v8 = [v7 containsObject:@"SBHAddSheetCollectionViewSectionGallery"];

    if ((v8 & 1) == 0)
    {
      v16[0] = @"SBHAddSheetCollectionViewSectionGallery";
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
      [v6 appendSectionsWithIdentifiers:v9];
    }

    v10 = [v5 bs_mapNoNulls:&__block_literal_global_113];
    [v6 appendItemsWithIdentifiers:v10];
    v11 = [*(a1 + 32) sectionIdentifiers];
    v12 = [v11 containsObject:@"SBHAddSheetCollectionViewSectionGallery"];

    if (v12)
    {
      v13 = [*(a1 + 32) itemIdentifiersInSectionWithIdentifier:@"SBHAddSheetCollectionViewSectionGallery"];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __71__SBHAddWidgetSheetViewController__generateSnapshotDiffedFromSnapshot___block_invoke_3;
      v14[3] = &unk_1E808AC68;
      v15 = v6;
      [v13 enumerateObjectsUsingBlock:v14];
    }
  }
}

id __71__SBHAddWidgetSheetViewController__generateSnapshotDiffedFromSnapshot___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 galleryItem];
  v3 = [v2 sbh_galleryItemIdentifier];

  return v3;
}

void __71__SBHAddWidgetSheetViewController__generateSnapshotDiffedFromSnapshot___block_invoke_3(uint64_t a1, void *a2)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([*(a1 + 32) indexOfItemIdentifier:v3] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = *(a1 + 32);
    v6[0] = v3;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
    [v4 reconfigureItemsWithIdentifiers:v5];
  }
}

void __71__SBHAddWidgetSheetViewController__generateSnapshotDiffedFromSnapshot___block_invoke_4(uint64_t a1, void *a2)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = [v2 sectionIdentifiers];
  v4 = [v3 containsObject:@"SBHAddSheetCollectionViewSectionApplications"];

  if ((v4 & 1) == 0)
  {
    v8[0] = @"SBHAddSheetCollectionViewSectionApplications";
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
    [v2 appendSectionsWithIdentifiers:v5];
  }

  v7 = @"kSBHAddWidgetSheetGallerySuggestionsItemIdentifier";
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v7 count:1];
  [v2 appendItemsWithIdentifiers:v6];
}

void __71__SBHAddWidgetSheetViewController__generateSnapshotDiffedFromSnapshot___block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  v6 = [v5 sectionIdentifiers];
  v7 = [v6 containsObject:@"SBHAddSheetCollectionViewSectionCustomApplications"];

  if ((v7 & 1) == 0)
  {
    v10[0] = @"SBHAddSheetCollectionViewSectionCustomApplications";
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    [v5 appendSectionsWithIdentifiers:v8];
  }

  v9 = [v4 bs_mapNoNulls:&__block_literal_global_123];
  [v5 appendItemsWithIdentifiers:v9];
}

void __71__SBHAddWidgetSheetViewController__generateSnapshotDiffedFromSnapshot___block_invoke_7(uint64_t a1, void *a2, void *a3)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  if ([v4 count])
  {
    v6 = [v5 sectionIdentifiers];
    v7 = [v6 containsObject:@"SBHAddSheetCollectionViewSectionApplications"];

    if ((v7 & 1) == 0)
    {
      v10[0] = @"SBHAddSheetCollectionViewSectionApplications";
      v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
      [v5 appendSectionsWithIdentifiers:v8];
    }

    v9 = [v4 bs_mapNoNulls:&__block_literal_global_127];
    [v5 appendItemsWithIdentifiers:v9];
  }
}

void __71__SBHAddWidgetSheetViewController__generateSnapshotDiffedFromSnapshot___block_invoke_9(uint64_t a1, void *a2)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = [v2 sectionIdentifiers];
  v4 = [v3 containsObject:@"SBHAddSheetCollectionViewSectionDisfavoredApplications"];

  if ((v4 & 1) == 0)
  {
    v8[0] = @"SBHAddSheetCollectionViewSectionDisfavoredApplications";
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
    [v2 appendSectionsWithIdentifiers:v5];
  }

  v7 = @"kSBHAddWidgetSheetOtherItemIdentifier";
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v7 count:1];
  [v2 appendItemsWithIdentifiers:v6];
}

void __71__SBHAddWidgetSheetViewController__generateSnapshotDiffedFromSnapshot___block_invoke_10(uint64_t a1, void *a2, void *a3)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = a2;
  v6 = [v4 sectionIdentifiers];
  v7 = [v6 containsObject:@"SBHAddSheetCollectionViewSectionDisfavoredApplications"];

  if ((v7 & 1) == 0)
  {
    v12[0] = @"SBHAddSheetCollectionViewSectionDisfavoredApplications";
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
    [v4 appendSectionsWithIdentifiers:v8];
  }

  v11 = @"kSBHAddWidgetSheetOtherDescriptionItemIdentifier";
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v11 count:1];
  [v4 appendItemsWithIdentifiers:v9];

  v10 = [v5 bs_mapNoNulls:&__block_literal_global_133];

  if (v10)
  {
    [v4 appendItemsWithIdentifiers:v10];
  }
}

- (void)_refreshData:(BOOL)a3
{
  v3 = a3;
  v5 = [(UICollectionViewDiffableDataSource *)self->_diffableDataSource snapshot];
  v6 = [(SBHAddWidgetSheetViewController *)self _generateSnapshotDiffedFromSnapshot:v5];

  [(UICollectionViewDiffableDataSource *)self->_diffableDataSource applySnapshot:v6 animatingDifferences:v3];
}

- (void)_reloadData:(BOOL)a3
{
  v7 = [(SBHAddWidgetSheetViewController *)self _generateSnapshotDiffedFromSnapshot:0];
  if (a3 || (-[UICollectionViewDiffableDataSource snapshot](self->_diffableDataSource, "snapshot"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v7 isEqual:v5], v5, (v6 & 1) == 0))
  {
    [(UICollectionViewDiffableDataSource *)self->_diffableDataSource applySnapshotUsingReloadData:v7];
  }
}

- (unint64_t)_sectionIndexForSection:(unint64_t)a3
{
  v5 = [(SBHAddWidgetSheetViewController *)self _canShowGallery];
  v6 = [(SBHAddWidgetSheetViewController *)self _shouldShowCustomApplicationsSection];
  if (v5 && v6)
  {
    return a3;
  }

  if (!v5 && !v6)
  {
    a3 -= 2;
    return a3;
  }

  if (v6)
  {
    return --a3;
  }

  if (a3)
  {
    return a3 - 1;
  }

  else
  {
    return 0;
  }
}

- (unint64_t)_applicationWidgetCollectionIndexForItemIndex:(unint64_t)a3
{
  v4 = [(SBHAddWidgetSheetViewController *)self _shouldShowSuggestionsListItem];
  v5 = a3 - 1;
  if (!a3)
  {
    v5 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    return v5;
  }

  else
  {
    return a3;
  }
}

- (BOOL)_shouldAnimateChanges
{
  v3 = [(SBHAddWidgetSheetViewController *)self isViewLoaded];
  if (v3)
  {

    LOBYTE(v3) = [(SBHAddWidgetSheetViewController *)self bs_isAppearingOrAppeared];
  }

  return v3;
}

- (id)_iconImageForApplicationWidgetCollection:(id)a3
{
  v4 = a3;
  [(SBHAddWidgetSheetViewController *)self sheetIconMetrics];
  v5 = [(SBHAddWidgetSheetViewController *)self collectionView];
  v6 = [v5 traitCollection];

  v7 = [v4 customImage];

  if (v7)
  {
    v8 = [v4 customImage];
  }

  else
  {
    v9 = [v4 typeIdentifier];

    if (v9)
    {
      v10 = objc_alloc(MEMORY[0x1E69A8A00]);
      v11 = [v4 typeIdentifier];
      v12 = [v10 initWithType:v11];

      v13 = [objc_alloc(MEMORY[0x1E69A8A30]) initWithSize:0.0 scale:{0.0, 0.0}];
      SBHModifyImageDescriptorWithTraitCollection(v13, v6, 0);
      v14 = SBHIconServicesImageForDescriptor(v12, v13, 0);
      v15 = [MEMORY[0x1E69DD1B8] sbh_iconImageAppearanceFromTraitCollection:v6];
      v8 = SBHGetIconImageFromIconServicesImage(v14);
    }

    else
    {
      v12 = [v4 icon];
      v13 = [v12 applicationBundleID];
      v8 = SBHGetApplicationIconImageWithTraitCollection(v13, v6, 0, 0.0, 0.0, 0.0);
    }
  }

  return v8;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4 itemIdentifier:(id)a5
{
  v126 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 section];
  if (v11 != [(SBHAddWidgetSheetViewController *)self _sectionIndexForSection:0])
  {
    if (v11 != [(SBHAddWidgetSheetViewController *)self _sectionIndexForSection:2]&& v11 != [(SBHAddWidgetSheetViewController *)self _sectionIndexForSection:3]&& v11 != [(SBHAddWidgetSheetViewController *)self _sectionIndexForSection:1])
    {
      v12 = 0;
      goto LABEL_63;
    }

    v124 = 0.0;
    v122 = 0u;
    v123 = 0u;
    [(SBHAddWidgetSheetViewController *)self sheetIconMetrics];
    v21 = [(SBHAddWidgetSheetViewController *)self configuration];
    if ([v21 applicationCellIncludesGalleryListView])
    {
      v110 = v21;
      v22 = [v8 dequeueReusableCellWithReuseIdentifier:@"kSBHAddWidgetSheetViewControllerListCellReuseIdentifier" forIndexPath:v9];
      v23 = *(&v122 + 1);
      v24 = v123;
      [v22 setIconImageInfo:{*(&v122 + 1), v123, v124}];
      v107 = v10;
      if (v11 == [(SBHAddWidgetSheetViewController *)self _sectionIndexForSection:1])
      {
        v25 = [(NSMapTable *)self->_customApplicationWidgetCollectionForApplicationWidgetCollectionIdentifierLookupTable objectForKey:v10];
        v26 = [v25 displayName];
        v27 = [v26 length];

        if (!v27)
        {
          [v22 setWantsHeaderView:0];
        }
      }

      else
      {
        v25 = [(NSMapTable *)self->_favoredApplicationWidgetCollectionForApplicationWidgetCollectionIdentifierLookupTable objectForKey:v10];
      }

      v37 = [(SBHAddWidgetSheetViewController *)self traitCollection];
      v38 = [v37 userInterfaceStyle];

      v39 = [[SBHIconImageAppearance alloc] initWithAppearanceType:v38 == 2];
      v40 = [MEMORY[0x1E69A8A00] placeholderIcon];
      v41 = [objc_alloc(MEMORY[0x1E69A8A30]) initWithSize:v23 scale:v24];
      v42 = SBHIconServicesOptionsForImageOptions(1);
      v104 = v41;
      v105 = v40;
      v102 = SBHIconServicesImageForDescriptor(v40, v41, v42);
      v106 = v39;
      v103 = SBHGetIconImageFromIconServicesImage(v102);
      [v22 setIconImage:?];
      v43 = [v25 collectionIdentifier];
      [v22 setIdentifier:v43];
      v44 = [(SBHAddWidgetSheetViewController *)self applicationWidgetCollectionIconLoadingQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __88__SBHAddWidgetSheetViewController_collectionView_cellForItemAtIndexPath_itemIdentifier___block_invoke;
      block[3] = &unk_1E808ACD8;
      block[4] = self;
      v45 = v25;
      v117 = v45;
      v109 = v8;
      v99 = v8;
      v118 = v99;
      v93 = v9;
      v119 = v93;
      v46 = v43;
      v47 = v45;
      v100 = v46;
      v120 = v46;
      v48 = v22;
      v121 = v48;
      v101 = v44;
      dispatch_async(v44, block);
      v49 = [v45 displayName];
      [v48 setTitle:v49];

      v50 = [v48 iconListView];
      v51 = [v50 model];
      v52 = v51;
      if (v50)
      {
        v98 = v50;
        v111 = v51;
        v21 = v110;
      }

      else
      {
        v94 = v48;
        v96 = v47;
        v57 = [(SBHAddWidgetSheetViewController *)self _listLayoutForWidgetSizing];
        v58 = [v57 numberOfColumnsForOrientation:1];
        v59 = [v57 numberOfRowsForOrientation:1];
        v21 = v110;
        if (objc_opt_respondsToSelector())
        {
          v60 = [v57 iconGridSizeClassSizes];
        }

        else
        {
          v60 = objc_alloc_init(SBHIconGridSizeClassSizeMap);
        }

        v66 = v60;
        v67 = [[SBIconListModel alloc] initWithFolder:0 gridSize:v58 | (v59 << 16) gridSizeClassSizes:v60];

        [(SBIconListModel *)v67 setIconLayoutBehavior:3];
        v68 = [v110 gridSizeClassDomain];
        v111 = v67;
        [(SBIconListModel *)v67 setGridSizeClassDomain:v68];

        if (objc_opt_respondsToSelector())
        {
          v69 = [v57 supportedIconGridSizeClasses];
          [(SBIconListModel *)v67 setAllowedGridSizeClasses:v69];
        }

        v70 = [v110 listViewClass];
        if (!v70)
        {
          v70 = objc_opt_self();
        }

        v71 = [v70 alloc];
        v72 = [(SBHAddWidgetSheetViewControllerBase *)self listLayoutProvider];
        v73 = [(SBHAddWidgetSheetViewControllerBase *)self iconViewProvider];
        v74 = [v71 initWithModel:v111 layoutProvider:v72 iconLocation:@"SBIconLocationRoot" orientation:1 iconViewProvider:v73];

        [v74 setIconViewConfigurationOptions:82];
        [v74 setIconSpacing:{SBHIconListLayoutListIconSpacingWithDefault(v57, 1, 12.0)}];
        v98 = v74;
        [v94 setIconListView:v74];

        v47 = v96;
        v48 = v94;
      }

      v75 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v76 = [(SBHAddWidgetSheetViewControllerBase *)self delegate];
      v77 = [v47 filteredWidgetDescriptors];
      if ([v77 count])
      {
        [v47 filteredWidgetDescriptors];
      }

      else
      {
        [v47 widgetDescriptors];
      }
      v78 = ;

      v108 = v9;
      if (objc_opt_respondsToSelector())
      {
        v95 = v48;
        v97 = v47;
        v114 = 0u;
        v115 = 0u;
        v112 = 0u;
        v113 = 0u;
        v79 = v78;
        v80 = [v79 countByEnumeratingWithState:&v112 objects:v125 count:16];
        if (v80)
        {
          v81 = v80;
          v82 = *v113;
          do
          {
            for (i = 0; i != v81; ++i)
            {
              if (*v113 != v82)
              {
                objc_enumerationMutation(v79);
              }

              v84 = [v76 addWidgetSheetViewController:self widgetIconForGalleryItem:*(*(&v112 + 1) + 8 * i)];
              [v75 bs_safeAddObject:v84];
            }

            v81 = [v79 countByEnumeratingWithState:&v112 objects:v125 count:16];
          }

          while (v81);
        }

        v21 = v110;
        v48 = v95;
        v47 = v97;
      }

      [v111 setIcons:v75];
      v85 = [v99 numberOfSections] - 1;
      v86 = [v99 numberOfItemsInSection:v11];
      v87 = v11 != v85 || [v93 item] != v86 - 1;
      [v48 setSeparatorVisible:v87];
      v88 = [v48 visualStylingProvider];
      if (!v88)
      {
        [(SBHAddWidgetSheetViewController *)self _materialViewForVisualStyling];
        v90 = v89 = v47;
        v88 = [v90 visualStylingProviderForCategory:1];

        v47 = v89;
        [v48 setVisualStylingProvider:v88];
      }

      v12 = v48;

      v9 = v108;
      v8 = v109;
      v10 = v107;
LABEL_62:

      goto LABEL_63;
    }

    v12 = [v8 dequeueReusableCellWithReuseIdentifier:@"kSBHAddWidgetSheetViewControllerCollectionViewReuseIdentifier" forIndexPath:v9];
    v28 = [(SBHAddWidgetSheetViewControllerBase *)self addWidgetSheetStyle];
    [v12 setAddWidgetSheetStyle:v28];
    [v12 setSeparatorAlignedToLabels:1];
    leading = 12.0;
    trailing = 12.0;
    if (!v28)
    {
      leading = self->_contentInsets.leading;
      trailing = self->_contentInsets.trailing;
    }

    [v12 setContentInsets:{12.0, leading, 12.0, trailing}];
    [v12 setContentHorizontalSpacing:*&v122];
    [v12 setSeparatorVisible:{objc_msgSend(v9, "item") != objc_msgSend(v8, "numberOfItemsInSection:", v11) - 1}];
    [v12 setIconImageInfo:{*(&v122 + 1), v123, v124}];
    if (v11 == [(SBHAddWidgetSheetViewController *)self _sectionIndexForSection:2])
    {
      if ([v10 isEqual:@"kSBHAddWidgetSheetGallerySuggestionsItemIdentifier"])
      {
        v31 = [v12 textLabel];
        v32 = SBHBundle();
        v33 = [v32 localizedStringForKey:@"ADD_WIDGET_SHEET_SUGGESTIONS_CELL_LABEL" value:&stru_1F3D472A8 table:@"SpringBoardHome"];
        [v31 setText:v33];

        v34 = [v12 imageView];
        v35 = MEMORY[0x1E69DCAB8];
        v36 = @"rectangle.3.offgrid";
LABEL_27:
        v56 = [v35 systemImageNamed:v36];
        [v34 setImage:v56];

        [v12 setImageViewRequiresVisualStyling:1];
        goto LABEL_34;
      }

      v61 = 1632;
    }

    else
    {
      if (v11 != [(SBHAddWidgetSheetViewController *)self _sectionIndexForSection:3])
      {
        goto LABEL_34;
      }

      if ([v10 isEqual:@"kSBHAddWidgetSheetOtherItemIdentifier"])
      {
        v53 = [v12 textLabel];
        v54 = SBHBundle();
        v55 = [v54 localizedStringForKey:@"ADD_WIDGET_SHEET_OTHER_CELL_LABEL" value:&stru_1F3D472A8 table:@"SpringBoardHome"];
        [v53 setText:v55];

        v34 = [v12 imageView];
        v35 = MEMORY[0x1E69DCAB8];
        v36 = @"ellipsis";
        goto LABEL_27;
      }

      if ([v10 isEqual:@"kSBHAddWidgetSheetOtherDescriptionItemIdentifier"])
      {
        v62 = [(SBHAddWidgetSheetViewController *)self _otherDescriptionLabel];
        [v12 setDetailText:v62];
        v92 = [v12 imageView];
        [v92 setHidden:1];

        [v12 setUserInteractionEnabled:0];
        goto LABEL_33;
      }

      v61 = 1640;
    }

    v62 = [*(&self->super.super.super.super.isa + v61) objectForKey:v10];
    v63 = [(SBHAddWidgetSheetViewControllerBase *)self appCellConfigurator];
    [v63 configureCell:v12 withApplicationWidgetCollection:v62];

    [v12 setImageViewRequiresVisualStyling:0];
LABEL_33:

LABEL_34:
    v64 = [v12 visualStylingProvider];
    v47 = v64;
    if (v28 == 1 && !v64)
    {
      v65 = [(SBHAddWidgetSheetViewController *)self _materialViewForVisualStyling];
      v47 = [v65 visualStylingProviderForCategory:1];

      [v12 setVisualStylingProvider:v47];
    }

    [v12 setFocusEffect:0];
    goto LABEL_62;
  }

  v12 = [v8 dequeueReusableCellWithReuseIdentifier:@"kSBHAddWidgetSheetGalleryCellReuseIdentifier" forIndexPath:v9];
  v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld/%@", objc_msgSend(v9, "item"), v10];
  v14 = [v12 debugLabel];
  [v14 setText:v13];

  v15 = [(NSMapTable *)self->_galleryIdentifierToGalleryItemLookupTable objectForKey:v10];
  v16 = [v12 widgetWrapperViewController];

  if (v16 != v15)
  {
    v17 = [v15 parentViewController];
    if (v17 == self)
    {
      v18 = [v15 view];
      [v18 removeFromSuperview];

      [v15 removeFromParentViewController];
      v17 = 0;
    }

    [v12 setWidgetWrapperViewController:v15];
    if (v17 != self)
    {
      v19 = [v12 widgetWrapperViewController];
      v20 = [v12 contentView];
      [(SBHAddWidgetSheetViewController *)self bs_addChildViewController:v19 withSuperview:v20];
    }
  }

LABEL_63:

  return v12;
}

void __88__SBHAddWidgetSheetViewController_collectionView_cellForItemAtIndexPath_itemIdentifier___block_invoke(id *a1)
{
  v2 = [a1[4] _iconImageForApplicationWidgetCollection:a1[5]];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __88__SBHAddWidgetSheetViewController_collectionView_cellForItemAtIndexPath_itemIdentifier___block_invoke_2;
  v10[3] = &unk_1E808ACD8;
  v3 = a1[6];
  v4 = a1[7];
  v5 = a1[8];
  v6 = a1[9];
  *&v7 = v5;
  *(&v7 + 1) = v6;
  *&v8 = v3;
  *(&v8 + 1) = v4;
  v11 = v8;
  v12 = v7;
  v13 = v2;
  v14 = a1[5];
  v9 = v2;
  dispatch_async(MEMORY[0x1E69E96A0], v10);
}

void __88__SBHAddWidgetSheetViewController_collectionView_cellForItemAtIndexPath_itemIdentifier___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) cellForItemAtIndexPath:*(a1 + 40)];
  if (v2)
  {
    v7 = v2;
    v3 = [v2 identifier];
    v4 = [v3 isEqualToString:*(a1 + 48)];

    v2 = v7;
    if (v4)
    {
      [*(a1 + 56) setIconImage:*(a1 + 64)];
      v5 = *(a1 + 56);
      v6 = [*(a1 + 72) customImageBackgroundColor];
      [v5 setIconBackgroundColor:v6];

      v2 = v7;
    }
  }
}

- (id)applicationWidgetCollectionsToUse
{
  filteredApplicationWidgetCollections = self->_filteredApplicationWidgetCollections;
  if (!filteredApplicationWidgetCollections)
  {
    filteredApplicationWidgetCollections = self->_favoredApplicationWidgetCollections;
  }

  return filteredApplicationWidgetCollections;
}

- (void)_splitApplicationWidgetCollections
{
  v39 = *MEMORY[0x1E69E9840];
  v3 = [(SBHAddWidgetSheetViewController *)self applicationWidgetCollections];
  v28 = self;
  v4 = [(SBHAddWidgetSheetViewControllerBase *)self allowedWidgets];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = v3;
  v23 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
  v5 = 0;
  if (v23)
  {
    v24 = 0;
    v22 = *v34;
    do
    {
      v6 = 0;
      do
      {
        if (*v34 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v25 = v6;
        v7 = *(*(&v33 + 1) + 8 * v6);
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v8 = [v7 widgetDescriptors];
        v9 = [v8 countByEnumeratingWithState:&v29 objects:v37 count:16];
        v26 = v5;
        if (v9)
        {
          v10 = v9;
          v27 = 0;
          v11 = 0;
          v12 = 0;
          v13 = *v30;
          do
          {
            for (i = 0; i != v10; ++i)
            {
              if (*v30 != v13)
              {
                objc_enumerationMutation(v8);
              }

              v15 = *(*(&v29 + 1) + 8 * i);
              v16 = [(SBHAddWidgetSheetViewController *)v28 addWidgetSheetLocation];
              if (([v15 sbh_disfavoredSizeClassesForAddWidgetSheetLocation:v16] & v4) == 0)
              {
                goto LABEL_15;
              }

              if (!v11)
              {
                v11 = [v7 copy];
              }

              [v11 setDisfavored:1];
              if (([v15 sbh_favoredSizeClassesForAddWidgetSheetLocation:v16] & v4) == 0)
              {
                v17 = v27;
                if (!v27)
                {
                  v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
                }

                v27 = v17;
                [v17 addObject:v15];
              }

              else
              {
LABEL_15:
                if (!v12)
                {
                  v12 = [v7 copy];
                }

                [v12 setDisfavored:0];
              }
            }

            v10 = [v8 countByEnumeratingWithState:&v29 objects:v37 count:16];
          }

          while (v10);
        }

        else
        {
          v27 = 0;
          v11 = 0;
          v12 = 0;
        }

        v18 = [v12 widgetDescriptors];
        v19 = [v18 mutableCopy];

        [v19 removeObjectsInArray:v27];
        [v12 setWidgetDescriptors:v19];
        if (v12)
        {
          v20 = v24;
          v5 = v26;
          if (!v24)
          {
            v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
          }

          v24 = v20;
          [v20 addObject:v12];
        }

        else
        {
          v5 = v26;
        }

        if (v11)
        {
          if (!v5)
          {
            v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
          }

          [v5 addObject:v11];
        }

        v6 = v25 + 1;
      }

      while (v25 + 1 != v23);
      v23 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v23);
  }

  else
  {
    v24 = 0;
  }

  [(SBHAddWidgetSheetViewController *)v28 setFavoredApplicationWidgetCollections:v24];
  [(SBHAddWidgetSheetViewController *)v28 setDisfavoredApplicationWidgetCollections:v5];
}

- (id)_otherDescriptionLabel
{
  v2 = [(SBHAddWidgetSheetViewController *)self addWidgetSheetLocation];
  if (v2 <= 1)
  {
    if (v2)
    {
      if (v2 == 1)
      {
        v3 = @"ADD_WIDGET_SHEET_OTHER_LOCATION_LABEL_IPAD_LOCK_SCREEN";
      }

      else
      {
        v3 = 0;
      }

      goto LABEL_11;
    }

    if (__sb__runningInSpringBoard())
    {
      if (SBFEffectiveDeviceClass() == 2)
      {
LABEL_16:
        v3 = @"ADD_WIDGET_SHEET_OTHER_LOCATION_LABEL_IPAD_HOME_SCREEN";
        goto LABEL_11;
      }
    }

    else
    {
      v12 = [MEMORY[0x1E69DC938] currentDevice];
      v13 = [v12 userInterfaceIdiom];

      if (v13 == 1)
      {
        goto LABEL_16;
      }
    }

    v3 = @"ADD_WIDGET_SHEET_OTHER_LOCATION_LABEL_IPHONE_HOME_SCREEN";
    goto LABEL_11;
  }

  v4 = @"ADD_WIDGET_SHEET_OTHER_LOCATION_LABEL_CARPLAY";
  if (v2 != 3)
  {
    v4 = 0;
  }

  if (v2 == 2)
  {
    v3 = @"ADD_WIDGET_SHEET_OTHER_LOCATION_LABEL_AMBIENT";
  }

  else
  {
    v3 = v4;
  }

LABEL_11:
  v5 = MEMORY[0x1E696AEC0];
  v6 = SBHBundle();
  v7 = [v6 localizedStringForKey:@"ADD_WIDGET_SHEET_OTHER_DESCRIPTION_LABEL" value:&stru_1F3D472A8 table:@"SpringBoardHome"];
  v8 = SBHBundle();
  v9 = [v8 localizedStringForKey:v3 value:&stru_1F3D472A8 table:@"SpringBoardHome"];
  v10 = [v5 stringWithFormat:v7, v9];

  return v10;
}

- (BOOL)collectionView:(id)a3 shouldSelectItemAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [a3 indexPathsForSelectedItems];
  v7 = [v6 containsObject:v5];

  return v7 ^ 1;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v19 = a3;
  v6 = a4;
  objc_storeStrong(&self->_lastSelectedIndexPath, a4);
  v7 = [v6 section];
  if (v7 == [(SBHAddWidgetSheetViewController *)self _sectionIndexForSection:0])
  {
    [(SBHAddWidgetSheetViewController *)self _presentDetailSheetForGalleryCellAtIndexPath:v6];
  }

  else
  {
    v8 = [v6 section];
    if (v8 == -[SBHAddWidgetSheetViewController _sectionIndexForSection:](self, "_sectionIndexForSection:", 2) || (v9 = [v6 section], v9 == -[SBHAddWidgetSheetViewController _sectionIndexForSection:](self, "_sectionIndexForSection:", 1)))
    {
      v10 = -[SBHAddWidgetSheetViewController _applicationWidgetCollectionIndexForItemIndex:](self, "_applicationWidgetCollectionIndexForItemIndex:", [v6 item]);
      v11 = [(SBHAddWidgetSheetViewController *)self configuration];
      v12 = [v11 applicationCellIncludesGalleryListView];

      if ((v12 & 1) == 0)
      {
        if (v10 == 0x7FFFFFFFFFFFFFFFLL)
        {
          [(SBHAddWidgetSheetViewController *)self _presentGalleryCell];
        }

        else
        {
          v16 = [(SBHAddWidgetSheetViewController *)self applicationWidgetCollectionsToUse];
          v17 = [v16 objectAtIndex:v10];
          [(SBHAddWidgetSheetViewController *)self _presentDetailSheetViewControllerForApplicationWidgetCollection:v17];
        }
      }
    }

    else
    {
      v13 = [v6 section];
      if (v13 == [(SBHAddWidgetSheetViewController *)self _sectionIndexForSection:3])
      {
        v14 = [v6 item];
        v15 = v14 - 2;
        if (v14 >= 2)
        {
          v18 = [(NSArray *)self->_disfavoredApplicationWidgetCollections objectAtIndex:v15];
          [(SBHAddWidgetSheetViewController *)self _presentDetailSheetViewControllerForApplicationWidgetCollection:v18];
        }

        else
        {
          [(SBHAddWidgetSheetViewController *)self _toggleShowingDisfavoredApplicationWidgetCollections];
          [v19 deselectItemAtIndexPath:v6 animated:1];
        }
      }
    }
  }
}

- (void)_presentGalleryCell
{
  v3 = [(SBHAddWidgetSheetViewControllerBase *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0 || ([v3 galleryViewControllerForAddWidgetSheetViewController:self], (v15 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v4 = [SBHAddWidgetSheetViewController alloc];
    v5 = [(SBHAddWidgetSheetViewControllerBase *)self listLayoutProvider];
    v6 = [(SBHAddWidgetSheetViewControllerBase *)self iconViewProvider];
    v7 = [(SBHAddWidgetSheetViewControllerBase *)self allowedWidgets];
    v9 = v8;
    v10 = [(SBHAddWidgetSheetViewControllerBase *)self appCellConfigurator];
    v15 = [(SBHAddWidgetSheetViewController *)v4 initWithListLayoutProvider:v5 iconViewProvider:v6 allowedWidgets:v7 appCellConfigurator:v9 addWidgetSheetStyle:v10, [(SBHAddWidgetSheetViewControllerBase *)self addWidgetSheetStyle]];

    [(SBHAddWidgetSheetViewController *)v15 setAddWidgetSheetLocation:[(SBHAddWidgetSheetViewController *)self addWidgetSheetLocation]];
    [(SBHAddWidgetSheetViewControllerBase *)v15 setAddWidgetSheetWidgetBackgroundType:[(SBHAddWidgetSheetViewControllerBase *)self addWidgetSheetWidgetBackgroundType]];
    [(SBHAddWidgetSheetViewControllerBase *)v15 setAllowsFakeWidgets:[(SBHAddWidgetSheetViewControllerBase *)self allowsFakeWidgets]];
    [(SBHAddWidgetSheetViewController *)v15 setShouldShowGalleryOnly:1];
    [(SBHAddWidgetSheetViewControllerBase *)v15 setExternalBackgroundView:self->_backgroundView];
    [(SBHAddWidgetSheetViewController *)v15 setApplicationWidgetCollections:self->_favoredApplicationWidgetCollections];
    [(SBHAddWidgetSheetViewControllerBase *)v15 setDelegate:self];
    v11 = [(SBHAddWidgetSheetViewController *)self _suggestedItems];
    [(SBHAddWidgetSheetViewController *)v15 setSuggestedItems:v11 forGalleryLayoutSize:self->_galleryLayoutSize];

    v12 = [(SBHAddWidgetSheetViewController *)self externalSearchController];
    [(SBHAddWidgetSheetViewController *)v15 setExternalSearchController:v12];

    v13 = [(SBHAddWidgetSheetViewController *)v15 view];
    v14 = [MEMORY[0x1E69DC888] clearColor];
    [v13 setBackgroundColor:v14];

    [(SBHAddWidgetSheetViewController *)v15 setGalleryLayoutSize:self->_galleryLayoutSize];
  }

  [(SBHAddWidgetSheetViewController *)self _presentDetailViewController:v15 fromCell:0];
}

- (void)_toggleShowingDisfavoredApplicationWidgetCollections
{
  self->_isShowingDisfavoredApplicationWidgetCollections ^= 1u;
  v3 = [(SBHAddWidgetSheetViewController *)self _shouldAnimateChanges];

  [(SBHAddWidgetSheetViewController *)self _refreshData:v3];
}

- (void)_collectionView:(id)a3 updateSeparatorVisibility:(BOOL)a4 forHighlightAtIndexPath:(id)a5
{
  v6 = a4;
  v14 = a3;
  v7 = a5;
  objc_opt_class();
  v8 = [v14 cellForItemAtIndexPath:v7];
  v9 = SBFSafeCast();

  [v9 setSeparatorVisible:v6];
  v10 = [MEMORY[0x1E696AC88] indexPathForItem:objc_msgSend(v7 inSection:{"row") - 1, objc_msgSend(v7, "section")}];
  v11 = [v7 row];

  if ((v11 & 0x8000000000000000) == 0)
  {
    objc_opt_class();
    v12 = [v14 cellForItemAtIndexPath:v10];
    v13 = SBFSafeCast();

    [v13 setSeparatorVisible:v6];
  }
}

- (void)_presentDetailSheetViewControllerForApplicationWidgetCollection:(id)a3 configuredWithGalleryItem:(id)a4 selectedSizeClass:(int64_t)a5 fromCell:(id)a6 atIndexPath:(id)a7
{
  v9 = a3;
  v10 = a6;
  v11 = [v9 widgetDescriptors];
  v12 = [v11 count];

  if (v12)
  {
    v13 = [(SBHAddWidgetSheetViewControllerBase *)self delegate];
    if ((objc_opt_respondsToSelector() & 1) == 0 || ([(SBHAddWidgetSheetViewController *)v13 addWidgetSheetViewController:self detailViewControllerForWidgetCollection:v9], (v14 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v28 = v10;
      v15 = [(SBHAddWidgetSheetViewControllerBase *)self addWidgetSheetStyle];
      v40 = 0;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v31 = 0u;
      [(SBHAddWidgetSheetViewController *)self _metricsForCurrentOrientation];
      v16 = [SBHAddWidgetDetailSheetViewController alloc];
      v17 = [(SBHAddWidgetSheetViewControllerBase *)self listLayoutProvider];
      v18 = [(SBHAddWidgetSheetViewControllerBase *)self iconViewProvider];
      v19 = [(SBHAddWidgetSheetViewControllerBase *)self allowedWidgets];
      v21 = v20;
      v22 = [(SBHAddWidgetSheetViewControllerBase *)self appCellConfigurator];
      v14 = [(SBHAddWidgetSheetViewControllerBase *)v16 initWithListLayoutProvider:v17 iconViewProvider:v18 allowedWidgets:v19 appCellConfigurator:v21 addWidgetSheetStyle:v22, v15];

      v29[6] = v37;
      v29[7] = v38;
      v29[8] = v39;
      v30 = v40;
      v29[2] = v33;
      v29[3] = v34;
      v29[4] = v35;
      v29[5] = v36;
      v29[0] = v31;
      v29[1] = v32;
      [(SBHAddWidgetSheetViewControllerBase *)v14 setAddWidgetSheetMetrics:v29];
      if (v15 == 1)
      {
        v23 = v13;
      }

      else
      {
        v23 = self;
      }

      [(SBHAddWidgetSheetViewControllerBase *)v14 setDelegate:v23];
      [(SBHAddWidgetDetailSheetViewController *)v14 setApplicationWidgetCollection:v9];
      [(SBHAddWidgetSheetViewControllerBase *)v14 setAddWidgetSheetLocation:[(SBHAddWidgetSheetViewController *)self addWidgetSheetLocation]];
      v24 = [(SBHAddWidgetSheetViewControllerBase *)self externalBackgroundView];
      [(SBHAddWidgetSheetViewControllerBase *)v14 setExternalBackgroundView:v24];

      [(SBHAddWidgetDetailSheetViewController *)v14 setExternalSearchController:self->_externalSearchController];
      v25 = [(SBHAddWidgetSheetViewController *)self presenter];
      [(SBHAddWidgetDetailSheetViewController *)v14 setPresenter:v25];

      [(SBHAddWidgetSheetViewControllerBase *)v14 setAddWidgetSheetWidgetBackgroundType:[(SBHAddWidgetSheetViewControllerBase *)self addWidgetSheetWidgetBackgroundType]];
      if (v15 == 1)
      {
        [(SBHAddWidgetDetailSheetViewController *)v14 setAdditionalSafeAreaInsets:*(&v33 + 1), 0.0, 0.0, 0.0];
      }

      v10 = v28;
    }

    [(SBHAddWidgetSheetViewController *)self _presentDetailViewController:v14 fromCell:v10];
  }

  else
  {
    v26 = SBLogAddWidgetSheet();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      [SBHAddWidgetSheetViewController _presentDetailSheetViewControllerForApplicationWidgetCollection:v9 configuredWithGalleryItem:v26 selectedSizeClass:? fromCell:? atIndexPath:?];
    }

    collectionView = self->_collectionView;
    v14 = [(_SBHAddWidgetSheetCollectionView *)collectionView indexPathsForSelectedItems];
    v13 = [(SBHAddWidgetDetailSheetViewController *)v14 firstObject];
    [(_SBHAddWidgetSheetCollectionView *)collectionView deselectItemAtIndexPath:v13 animated:1];
  }
}

- (void)_presentDetailViewController:(id)a3 fromCell:(id)a4
{
  v32[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([(SBHAddWidgetSheetViewControllerBase *)self addWidgetSheetStyle]== 1)
  {
    v8 = [(SBHAddWidgetSheetViewController *)self splitViewController];
    v9 = [v8 viewControllerForColumn:2];
    v10 = objc_opt_class();
    v11 = v9;
    if (v10)
    {
      if (objc_opt_isKindOfClass())
      {
        v12 = v11;
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }

    v23 = v12;

    if (!v23)
    {
      v24 = [v11 navigationController];
      if (!v24)
      {
        v23 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v6];
        [(SBHAddWidgetSheetViewController *)self showDetailViewController:v23 sender:self];
LABEL_21:

        if (v7)
        {
          v26 = objc_opt_self();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            v28 = [v7 widgetWrapperViewController];
            v29 = [v28 galleryItem];
            v30 = [v7 widgetWrapperViewController];
            [v6 configureForGalleryItem:v29 selectedSizeClass:{objc_msgSend(v30, "selectedSizeClass")}];
          }
        }

        v31 = [(SBHAddWidgetSheetViewController *)self _effectiveSearchController];
        v19 = [v31 searchBar];

        [v19 resignFirstResponder];
        goto LABEL_25;
      }

      v23 = v24;
    }

    v32[0] = v6;
    v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:1];
    [v23 setViewControllers:v25];

    goto LABEL_21;
  }

  [v6 setModalPresentationStyle:2];
  [(SBHAddWidgetSheetViewController *)self preferredContentSize];
  [v6 setPreferredContentSize:?];
  if (v7)
  {
    v13 = [[SBHWidgetAddSheetTransitionContext alloc] initWithSourceCell:v7];
    [v6 setTransitioningDelegate:v13];
    [(SBHAddWidgetSheetViewController *)self setTransitionContext:v13];
  }

  v8 = [(SBHAddWidgetSheetViewController *)self sheetPresentationController];
  v11 = [v6 sheetPresentationController];
  [v11 _setShouldDismissWhenTappedOutside:1];
  if (__sb__runningInSpringBoard())
  {
    if (SBFEffectiveDeviceClass() == 2)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v14 = [MEMORY[0x1E69DC938] currentDevice];
  v15 = [v14 userInterfaceIdiom];

  if (v15 != 1)
  {
LABEL_12:
    [v11 setPrefersGrabberVisible:1];
    [v8 _additionalMinimumTopInset];
    [v11 _setAdditionalMinimumTopInset:?];
    [v8 _grabberTopSpacing];
    [v11 _setGrabberTopSpacing:?];
  }

LABEL_13:
  [v8 preferredCornerRadius];
  [v11 setPreferredCornerRadius:?];
  [v11 setDelegate:self];
  v16 = [(SBHAddWidgetSheetViewController *)self view];
  [v11 setSourceView:v16];

  v17 = [(SBHAddWidgetSheetViewController *)self traitCollection];
  v18 = objc_opt_self();
  v19 = [v17 objectForTrait:v18];

  if (v19)
  {
    v20 = [v6 traitOverrides];
    v21 = objc_opt_self();
    [v20 setObject:v19 forTrait:v21];
  }

  v22 = [(SBHAddWidgetSheetViewController *)self _currentPresenter];
  [v22 presentViewController:v6 animated:1 completion:0];

LABEL_25:
}

- (void)_clearDetailViewController
{
  v12[1] = *MEMORY[0x1E69E9840];
  v3 = [(SBHAddWidgetSheetViewController *)self splitViewController];
  v4 = [v3 viewControllerForColumn:2];
  v5 = objc_opt_class();
  v6 = v4;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  v9 = objc_alloc_init(MEMORY[0x1E69DD258]);
  v10 = v9;
  if (v8)
  {
    v12[0] = v9;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
    [v8 setViewControllers:v11];
  }

  else
  {
    [(SBHAddWidgetSheetViewController *)self showDetailViewController:v9 sender:self];
  }
}

- (void)_presentDetailSheetForGalleryCellAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(_SBHAddWidgetSheetCollectionView *)self->_collectionView cellForItemAtIndexPath:v4];
  v6 = objc_opt_class();
  v7 = v5;
  if (v6)
  {
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  if (v7)
  {
    v10 = [v9 widgetWrapperViewController];
    v11 = [v10 galleryItem];
    favoredApplicationWidgetCollections = self->_favoredApplicationWidgetCollections;
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __80__SBHAddWidgetSheetViewController__presentDetailSheetForGalleryCellAtIndexPath___block_invoke;
    v28[3] = &unk_1E808AD00;
    v13 = v11;
    v29 = v13;
    v14 = [(NSArray *)favoredApplicationWidgetCollections indexOfObjectPassingTest:v28];
    if (v14 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_17;
    }

    v15 = v14;
    v16 = [(NSArray *)self->_favoredApplicationWidgetCollections objectAtIndex:v14];
    if ([(SBHAddWidgetSheetViewControllerBase *)self addWidgetSheetStyle]== 1)
    {
      v27 = v13;
      v26 = [(SBHAddWidgetSheetViewController *)self parentViewController];
      v17 = [v26 parentViewController];
      v18 = objc_opt_class();
      v19 = v17;
      if (v18)
      {
        if (objc_opt_isKindOfClass())
        {
          v20 = v19;
        }

        else
        {
          v20 = 0;
        }
      }

      else
      {
        v20 = 0;
      }

      v21 = v20;

      v22 = [v21 viewControllerForColumn:0];

      v23 = [v22 collectionView];
      v24 = [MEMORY[0x1E696AC88] indexPathForItem:objc_msgSend(v22 inSection:{"_itemIndexForApplicationWidgetCollectionIndex:", v15), 0}];
      [v23 selectItemAtIndexPath:v24 animated:1 scrollPosition:2];

      v13 = v27;
    }

    if (!v16)
    {
LABEL_17:
      v16 = SBLogAddWidgetSheet();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [(SBHAddWidgetSheetViewController *)v10 _presentDetailSheetForGalleryCellAtIndexPath:v16];
      }
    }

    else
    {
      v25 = [v10 galleryItem];
      -[SBHAddWidgetSheetViewController _presentDetailSheetViewControllerForApplicationWidgetCollection:configuredWithGalleryItem:selectedSizeClass:fromCell:atIndexPath:](self, "_presentDetailSheetViewControllerForApplicationWidgetCollection:configuredWithGalleryItem:selectedSizeClass:fromCell:atIndexPath:", v16, v25, [v10 selectedSizeClass], v9, v4);
    }
  }
}

- (id)_currentPresenter
{
  v3 = [(SBHAddWidgetSheetViewController *)self searchController];
  if ([v3 isActive])
  {
    v4 = [(SBHAddWidgetSheetViewController *)self searchController];
  }

  else
  {
    v4 = self;
  }

  v5 = v4;

  return v5;
}

- (id)_presentedGalleryViewController
{
  v2 = [(SBHAddWidgetSheetViewController *)self splitViewController];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 viewControllerForColumn:2];
    v5 = objc_opt_class();
    v6 = v4;
    if (v5)
    {
      if (objc_opt_isKindOfClass())
      {
        v7 = v6;
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;

    if (!v8)
    {
      v9 = objc_opt_class();
      v10 = v6;
      if (v9)
      {
        if (objc_opt_isKindOfClass())
        {
          v11 = v10;
        }

        else
        {
          v11 = 0;
        }
      }

      else
      {
        v11 = 0;
      }

      v12 = v11;

      v13 = [v12 topViewController];

      v14 = objc_opt_class();
      v15 = v13;
      if (v14)
      {
        if (objc_opt_isKindOfClass())
        {
          v16 = v15;
        }

        else
        {
          v16 = 0;
        }
      }

      else
      {
        v16 = 0;
      }

      v8 = v16;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (NSMutableDictionary)userInfo
{
  userInfo = self->_userInfo;
  if (!userInfo)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v5 = self->_userInfo;
    self->_userInfo = v4;

    userInfo = self->_userInfo;
  }

  return userInfo;
}

- (void)didDismissSearchController:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = self->_filteredApplicationWidgetCollections;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    v8 = MEMORY[0x1E695E0F0];
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v14 + 1) + 8 * v9++) setFilteredWidgetDescriptors:{v8, v14}];
      }

      while (v6 != v9);
      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  filteredApplicationWidgetCollections = self->_filteredApplicationWidgetCollections;
  self->_filteredApplicationWidgetCollections = 0;

  v11 = [(SBHAddWidgetSheetViewController *)self view];
  [v11 bringSubviewToFront:self->_closeButton];

  [(SBHAddWidgetSheetViewController *)self _reloadData];
  if ([(SBHAddWidgetSheetViewControllerBase *)self addWidgetSheetStyle]== 1 && ![(SBHAddWidgetSheetViewController *)self shouldShowGalleryOnly])
  {
    [(SBHAddWidgetSheetViewController *)self _selectFirstItem];
    [(SBHAddWidgetSheetViewController *)self _presentGalleryCell];
    v12 = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:2];
    lastSelectedIndexPath = self->_lastSelectedIndexPath;
    self->_lastSelectedIndexPath = v12;
  }
}

- (void)willPresentSearchController:(id)a3
{
  if ([(SBHAddWidgetSheetViewControllerBase *)self addWidgetSheetStyle]== 1)
  {

    [(SBHAddWidgetSheetViewController *)self _clearDetailViewController];
  }
}

- (void)updateSearchResultsForSearchController:(id)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = [(SBHAddWidgetSheetViewController *)self _searchTextForSearchController:a3];
  v5 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  v25 = v4;
  v6 = [v4 componentsSeparatedByCharactersInSet:v5];

  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = v6;
  v8 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v33;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v33 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v32 + 1) + 8 * i);
        v31[0] = MEMORY[0x1E69E9820];
        v31[1] = 3221225472;
        v31[2] = __74__SBHAddWidgetSheetViewController_updateSearchResultsForSearchController___block_invoke;
        v31[3] = &unk_1E808AD50;
        v31[4] = v12;
        v31[5] = self;
        v13 = [MEMORY[0x1E696AE18] predicateWithBlock:v31];
        [v7 addObject:v13];
      }

      v9 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v9);
  }

  v14 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v7];
  if ([v4 isEqualToString:&stru_1F3D472A8])
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v15 = self->_filteredApplicationWidgetCollections;
    v16 = [(NSArray *)v15 countByEnumeratingWithState:&v27 objects:v36 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v28;
      v19 = MEMORY[0x1E695E0F0];
      do
      {
        for (j = 0; j != v17; ++j)
        {
          if (*v28 != v18)
          {
            objc_enumerationMutation(v15);
          }

          [*(*(&v27 + 1) + 8 * j) setFilteredWidgetDescriptors:v19];
        }

        v17 = [(NSArray *)v15 countByEnumeratingWithState:&v27 objects:v36 count:16];
      }

      while (v17);
    }

    v21 = 0;
  }

  else
  {
    v21 = [(NSArray *)self->_favoredApplicationWidgetCollections filteredArrayUsingPredicate:v14];
  }

  objc_storeStrong(&self->_filteredApplicationWidgetCollections, v21);
  v22 = [(SBHAddWidgetSheetViewController *)self configuration];
  if ([v22 wantsGlassGroupAppliedToGalleryContents])
  {
    v23 = [v25 length];
    v24 = [(UIView *)self->_collectionView sbh_hasGlassGroup];
    if (v23 || v24)
    {
      if (v23 != 0 && v24)
      {
        [(UIView *)self->_collectionView sbh_removeGlass];
      }
    }

    else
    {
      [(UIView *)self->_collectionView sbh_createGlassGroup];
    }
  }

  [(SBHAddWidgetSheetViewController *)self _reloadData];
  if ([(SBHAddWidgetSheetViewController *)self _canShowContentUnavailableConfiguration])
  {
    [(SBHAddWidgetSheetViewController *)self setNeedsUpdateContentUnavailableConfiguration];
  }
}

BOOL __74__SBHAddWidgetSheetViewController_updateSearchResultsForSearchController___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 displayName];
  v5 = v4;
  if (v4 && ([v4 rangeOfString:*(a1 + 32) options:129], v6))
  {
    [v3 setFilteredWidgetDescriptors:MEMORY[0x1E695E0F0]];
    v7 = 1;
  }

  else
  {
    v8 = [*(a1 + 40) configuration];
    v9 = [v8 applicationCellIncludesGalleryListView];

    if (v9)
    {
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __74__SBHAddWidgetSheetViewController_updateSearchResultsForSearchController___block_invoke_2;
      v14[3] = &unk_1E808AD28;
      v14[4] = *(a1 + 32);
      v10 = [MEMORY[0x1E696AE18] predicateWithBlock:v14];
      v11 = [v3 widgetDescriptors];
      v12 = [v11 filteredArrayUsingPredicate:v10];

      [v3 setFilteredWidgetDescriptors:v12];
      v7 = [v12 count] != 0;
    }

    else
    {
      [v3 setFilteredWidgetDescriptors:MEMORY[0x1E695E0F0]];
      v7 = 0;
    }
  }

  return v7;
}

BOOL __74__SBHAddWidgetSheetViewController_updateSearchResultsForSearchController___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 sbh_widgetName];
  v4 = v3;
  if (v3)
  {
    [v3 rangeOfString:*(a1 + 32) options:129];
    v6 = v5 != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_searchTextForSearchController:(id)a3
{
  v3 = MEMORY[0x1E696AB08];
  v4 = a3;
  v5 = [v3 whitespaceCharacterSet];
  v6 = [v4 searchBar];

  v7 = [v6 text];
  v8 = [v7 stringByTrimmingCharactersInSet:v5];

  if ([v8 length] >= 0x3E9)
  {
    v9 = [v8 substringToIndex:999];

    v10 = SBHBundle();
    v11 = [v10 localizedStringForKey:@"CONTENT_UNAVAILABLE_TRUNCATION_ELLIPSIS" value:&stru_1F3D472A8 table:@"SpringBoardHome"];
    v8 = [v9 stringByAppendingString:v11];
  }

  return v8;
}

- (id)contentUnavailableConfigurationState
{
  v7.receiver = self;
  v7.super_class = SBHAddWidgetSheetViewController;
  v3 = [(SBHAddWidgetSheetViewController *)&v7 contentUnavailableConfigurationState];
  v4 = [(SBHAddWidgetSheetViewController *)self _effectiveSearchController];
  v5 = [(SBHAddWidgetSheetViewController *)self _searchTextForSearchController:v4];
  [v3 setSearchText:v5];

  return v3;
}

- (void)updateContentUnavailableConfigurationUsingState:(id)a3
{
  v5 = a3;
  if ([(SBHAddWidgetSheetViewController *)self _canShowContentUnavailableConfiguration])
  {
    v4 = [(SBHAddWidgetSheetViewController *)self _updatedContentUnavailableConfigurationUsingState:v5];
  }

  else
  {
    v4 = 0;
  }

  [(SBHAddWidgetSheetViewController *)self setContentUnavailableConfiguration:v4];
}

- (id)_updatedContentUnavailableConfigurationUsingState:(id)a3
{
  v4 = a3;
  v5 = [v4 searchText];
  if ([v5 length])
  {
    v6 = [(NSArray *)self->_filteredApplicationWidgetCollections count];

    if (v6)
    {
      v7 = 0;
      goto LABEL_7;
    }

    v5 = [MEMORY[0x1E69DC8C8] searchConfiguration];
    v7 = [v5 updatedConfigurationForState:v4];
  }

  else
  {
    v7 = 0;
  }

LABEL_7:

  return v7;
}

- (SBHWidgetDragHandling)widgetDragHandler
{
  v2 = [(SBHAddWidgetSheetViewControllerBase *)self delegate];
  v3 = [v2 widgetDragHandler];

  return v3;
}

- (void)presentationControllerWillDismiss:(id)a3
{
  collectionView = self->_collectionView;
  v5 = [(_SBHAddWidgetSheetCollectionView *)collectionView indexPathsForSelectedItems];
  v6 = [v5 firstObject];
  [(_SBHAddWidgetSheetCollectionView *)collectionView deselectItemAtIndexPath:v6 animated:1];

  [(SBHWidgetAddSheetTransitionContext *)self->_transitionContext interruptAnimation];

  [(SBHAddWidgetSheetViewController *)self setTransitionContext:0];
}

- (void)addWidgetSheetViewControllerDidCancel:(id)a3
{
  v4 = [(SBHAddWidgetSheetViewController *)self _currentPresenter];
  [v4 dismissViewControllerAnimated:1 completion:0];

  collectionView = self->_collectionView;
  v6 = [(_SBHAddWidgetSheetCollectionView *)collectionView indexPathsForSelectedItems];
  v7 = [v6 firstObject];
  [(_SBHAddWidgetSheetCollectionView *)collectionView deselectItemAtIndexPath:v7 animated:1];

  [(SBHWidgetAddSheetTransitionContext *)self->_transitionContext interruptAnimation];

  [(SBHAddWidgetSheetViewController *)self setTransitionContext:0];
}

- (void)addWidgetSheetViewController:(id)a3 didSelectWidgetIconView:(id)a4
{
  v6 = a4;
  v5 = [(SBHAddWidgetSheetViewControllerBase *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 addWidgetSheetViewController:self didSelectWidgetIconView:v6];
  }
}

- (id)backgroundViewMatchingMaterialBeneathAddWidgetSheetViewController:(id)a3
{
  v3 = [(SBHAddWidgetSheetViewController *)self _newBackgroundView];

  return v3;
}

- (void)_makeGalleryItemsFromHomeScreenItems:(id)a3
{
  v91 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v54 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [(SBHAddWidgetSheetViewControllerBase *)self allowedWidgets];
  v59 = v5;
  [(SBHAddWidgetSheetViewControllerBase *)self allowedWidgets];
  v58 = v6;
  [(SBHAddWidgetSheetViewControllerBase *)self allowedWidgets];
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v82 objects:v90 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v83;
    v56 = v7;
    v57 = self;
    v55 = *v83;
    do
    {
      v11 = 0;
      v60 = v9;
      do
      {
        if (*v83 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v82 + 1) + 8 * v11) suggestedSize];
        if (v12 <= 1)
        {
          if (!v12)
          {
            v64 = 1;
            v13 = 1;
            goto LABEL_18;
          }

          if (v12 == 1)
          {
            v64 = 1;
            v13 = 2;
            goto LABEL_18;
          }
        }

        else
        {
          switch(v12)
          {
            case 2:
              v64 = 1;
              v13 = 3;
              goto LABEL_18;
            case 3:
              v64 = 1;
              v13 = 6;
              goto LABEL_18;
            case 4:
              v64 = 1;
              v13 = 4;
              goto LABEL_18;
          }
        }

        v64 = 0;
        v13 = 0;
LABEL_18:
        if (!CHSWidgetFamilyMaskContainsFamily())
        {
          goto LABEL_77;
        }

        v61 = v13;
        v63 = v11;
        objc_opt_class();
        v65 = SBFSafeCast();
        v14 = [v65 widgetKind];
        v15 = [v14 containsString:@"SBHSpecialAvocadoDescriptor"];

        if ([(SBHAddWidgetSheetViewControllerBase *)self allowsFakeWidgets]|| !v15)
        {
          objc_opt_class();
          v16 = SBFSafeCast();
          v62 = v16;
          if (v65 || !v16)
          {
            if (v65)
            {
              v17 = [v65 avocadoDescriptor];
              v49 = [v17 sanitizedDescriptor];
              goto LABEL_62;
            }

            v49 = 0;
          }

          else
          {
            v17 = objc_opt_new();
            v78 = 0u;
            v79 = 0u;
            v80 = 0u;
            v81 = 0u;
            v18 = [v16 smallDefaultStack];
            v19 = [v18 countByEnumeratingWithState:&v78 objects:v89 count:16];
            if (v19)
            {
              v20 = v19;
              v21 = *v79;
              do
              {
                for (i = 0; i != v20; ++i)
                {
                  if (*v79 != v21)
                  {
                    objc_enumerationMutation(v18);
                  }

                  v23 = [*(*(&v78 + 1) + 8 * i) avocadoDescriptor];
                  v24 = [v23 sanitizedDescriptor];

                  if (v24)
                  {
                    [v17 addObject:v24];
                  }
                }

                v20 = [v18 countByEnumeratingWithState:&v78 objects:v89 count:16];
              }

              while (v20);
            }

            v25 = objc_opt_new();
            v74 = 0u;
            v75 = 0u;
            v76 = 0u;
            v77 = 0u;
            v26 = [v62 mediumDefaultStack];
            v27 = [v26 countByEnumeratingWithState:&v74 objects:v88 count:16];
            if (v27)
            {
              v28 = v27;
              v29 = *v75;
              do
              {
                for (j = 0; j != v28; ++j)
                {
                  if (*v75 != v29)
                  {
                    objc_enumerationMutation(v26);
                  }

                  v31 = [*(*(&v74 + 1) + 8 * j) avocadoDescriptor];
                  v32 = [v31 sanitizedDescriptor];

                  if (v32)
                  {
                    [v25 addObject:v32];
                  }
                }

                v28 = [v26 countByEnumeratingWithState:&v74 objects:v88 count:16];
              }

              while (v28);
            }

            v33 = objc_opt_new();
            v70 = 0u;
            v71 = 0u;
            v72 = 0u;
            v73 = 0u;
            v34 = [v62 largeDefaultStack];
            v35 = [v34 countByEnumeratingWithState:&v70 objects:v87 count:16];
            if (v35)
            {
              v36 = v35;
              v37 = *v71;
              do
              {
                for (k = 0; k != v36; ++k)
                {
                  if (*v71 != v37)
                  {
                    objc_enumerationMutation(v34);
                  }

                  v39 = [*(*(&v70 + 1) + 8 * k) avocadoDescriptor];
                  v40 = [v39 sanitizedDescriptor];

                  if (v40)
                  {
                    [v33 addObject:v40];
                  }
                }

                v36 = [v34 countByEnumeratingWithState:&v70 objects:v87 count:16];
              }

              while (v36);
            }

            v41 = objc_opt_new();
            v66 = 0u;
            v67 = 0u;
            v68 = 0u;
            v69 = 0u;
            v42 = [v62 extraLargeDefaultStack];
            v43 = [v42 countByEnumeratingWithState:&v66 objects:v86 count:16];
            if (v43)
            {
              v44 = v43;
              v45 = *v67;
              do
              {
                for (m = 0; m != v44; ++m)
                {
                  if (*v67 != v45)
                  {
                    objc_enumerationMutation(v42);
                  }

                  v47 = [*(*(&v66 + 1) + 8 * m) avocadoDescriptor];
                  v48 = [v47 sanitizedDescriptor];

                  if (v48)
                  {
                    [v41 addObject:v48];
                  }
                }

                v44 = [v42 countByEnumeratingWithState:&v66 objects:v86 count:16];
              }

              while (v44);
            }

            v49 = [[SBHWidgetStackDescriptor alloc] initWithSmallStackDescriptors:v17 mediumStackDescriptors:v25 largeStackDescriptors:v33 extraLargeStackDescriptors:v41];
            v7 = v56;
            self = v57;
            v10 = v55;
            v9 = v60;
LABEL_62:
          }

          if (CHSWidgetFamilyIsAccessory())
          {
            v50 = 1;
          }

          else
          {
            v50 = [(SBHWidgetStackDescriptor *)v49 sbh_supportsRemovableBackground];
          }

          v51 = v64 ^ 1;
          if (!v49)
          {
            v51 = 1;
          }

          if ((v51 & 1) == 0)
          {
            if (v59)
            {
              if (!(((v58 & 0x100) == 0) | v50 & 1))
              {
                goto LABEL_75;
              }
            }

            else if (![(SBHWidgetStackDescriptor *)v49 sbh_canBeAddedToStack]|| !(((v58 & 0x100) == 0) | v50 & 1))
            {
              goto LABEL_75;
            }

            v52 = [(SBHAddWidgetSheetViewController *)self _newWrapperViewControllerWithGalleryItem:v49 sizeClass:v61];
            [v54 addObject:v52];
          }

LABEL_75:
        }

        v11 = v63;
LABEL_77:
        ++v11;
      }

      while (v11 != v9);
      v53 = [v7 countByEnumeratingWithState:&v82 objects:v90 count:16];
      v9 = v53;
    }

    while (v53);
  }

  [(SBHAddWidgetSheetViewController *)self setGalleryItems:v54];
}

- (void)_makeFakeGalleryItemsFromHomeScreenItems:(id)a3
{
  v122 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [(SBHAddWidgetSheetViewControllerBase *)self allowedWidgets];
  v7 = v6;
  [(SBHAddWidgetSheetViewControllerBase *)self allowedWidgets];
  v89 = v8;
  v9 = [(SBHAddWidgetSheetViewControllerBase *)self allowedWidgets];
  v112 = 0u;
  v113 = 0u;
  v114 = 0u;
  v115 = 0u;
  v10 = v4;
  v11 = [v10 countByEnumeratingWithState:&v112 objects:v121 count:16];
  v77 = v10;
  if (!v11)
  {
    v87 = 0;
    v88 = 0;
    v90 = 0;
    v91 = 0;
    goto LABEL_93;
  }

  v12 = v11;
  v87 = 0;
  v88 = 0;
  v90 = 0;
  v91 = 0;
  v13 = *v113;
  v78 = v7;
  v75 = self;
  v76 = v5;
  v73 = *v113;
  v74 = v9;
  do
  {
    v14 = 0;
    v80 = v12;
    do
    {
      if (*v113 != v13)
      {
        objc_enumerationMutation(v10);
      }

      v15 = [*(*(&v112 + 1) + 8 * v14) suggestedSize];
      if (v15 <= 1)
      {
        if (!v15)
        {
          v85 = 0;
          v84 = 1;
          v82 = 1;
          v83 = 1;
          goto LABEL_18;
        }

        if (v15 == 1)
        {
          v84 = 0;
          v85 = 1;
          v82 = 1;
          v83 = 1;
          goto LABEL_18;
        }
      }

      else
      {
        switch(v15)
        {
          case 2:
            v85 = 1;
            v84 = 1;
            v82 = 1;
            v83 = 0;
            goto LABEL_18;
          case 3:
            v85 = 1;
            v84 = 1;
            v82 = 1;
            v83 = 1;
            goto LABEL_18;
          case 4:
            v85 = 1;
            v84 = 1;
            v82 = 0;
            v83 = 1;
            goto LABEL_18;
        }
      }

      v85 = 1;
      v84 = 1;
      v82 = 1;
      v83 = 1;
LABEL_18:
      if (!CHSWidgetFamilyMaskContainsFamily())
      {
        goto LABEL_89;
      }

      objc_opt_class();
      v16 = SBFSafeCast();
      objc_opt_class();
      v17 = v16;
      v18 = SBFSafeCast();
      if (v18)
      {
        v19 = v16 == 0;
      }

      else
      {
        v19 = 0;
      }

      v81 = v14;
      v86 = v18;
      if (v19)
      {
        v23 = v18;
        v79 = v17;
        v20 = objc_opt_new();
        v108 = 0u;
        v109 = 0u;
        v110 = 0u;
        v111 = 0u;
        v24 = [v23 smallDefaultStack];
        v25 = [v24 countByEnumeratingWithState:&v108 objects:v120 count:16];
        if (v25)
        {
          v26 = v25;
          v27 = *v109;
          do
          {
            for (i = 0; i != v26; ++i)
            {
              if (*v109 != v27)
              {
                objc_enumerationMutation(v24);
              }

              v29 = [*(*(&v108 + 1) + 8 * i) avocadoDescriptor];
              v30 = [v29 sanitizedDescriptor];

              if (v30)
              {
                [v20 addObject:v30];
              }
            }

            v26 = [v24 countByEnumeratingWithState:&v108 objects:v120 count:16];
          }

          while (v26);
        }

        v31 = objc_opt_new();
        v104 = 0u;
        v105 = 0u;
        v106 = 0u;
        v107 = 0u;
        v32 = [v86 mediumDefaultStack];
        v33 = [v32 countByEnumeratingWithState:&v104 objects:v119 count:16];
        if (v33)
        {
          v34 = v33;
          v35 = *v105;
          do
          {
            for (j = 0; j != v34; ++j)
            {
              if (*v105 != v35)
              {
                objc_enumerationMutation(v32);
              }

              v37 = [*(*(&v104 + 1) + 8 * j) avocadoDescriptor];
              v38 = [v37 sanitizedDescriptor];

              if (v38)
              {
                [v31 addObject:v38];
              }
            }

            v34 = [v32 countByEnumeratingWithState:&v104 objects:v119 count:16];
          }

          while (v34);
        }

        v39 = objc_opt_new();
        v100 = 0u;
        v101 = 0u;
        v102 = 0u;
        v103 = 0u;
        v40 = [v86 largeDefaultStack];
        v41 = [v40 countByEnumeratingWithState:&v100 objects:v118 count:16];
        if (v41)
        {
          v42 = v41;
          v43 = *v101;
          do
          {
            for (k = 0; k != v42; ++k)
            {
              if (*v101 != v43)
              {
                objc_enumerationMutation(v40);
              }

              v45 = [*(*(&v100 + 1) + 8 * k) avocadoDescriptor];
              v46 = [v45 sanitizedDescriptor];

              if (v46)
              {
                [v39 addObject:v46];
              }
            }

            v42 = [v40 countByEnumeratingWithState:&v100 objects:v118 count:16];
          }

          while (v42);
        }

        v47 = objc_opt_new();
        v96 = 0u;
        v97 = 0u;
        v98 = 0u;
        v99 = 0u;
        v48 = [v86 extraLargeDefaultStack];
        v49 = [v48 countByEnumeratingWithState:&v96 objects:v117 count:16];
        if (v49)
        {
          v50 = v49;
          v51 = *v97;
          do
          {
            for (m = 0; m != v50; ++m)
            {
              if (*v97 != v51)
              {
                objc_enumerationMutation(v48);
              }

              v53 = [*(*(&v96 + 1) + 8 * m) avocadoDescriptor];
              v54 = [v53 sanitizedDescriptor];

              if (v54)
              {
                [v47 addObject:v54];
              }
            }

            v50 = [v48 countByEnumeratingWithState:&v96 objects:v117 count:16];
          }

          while (v50);
        }

        v21 = [[SBHWidgetStackDescriptor alloc] initWithSmallStackDescriptors:v20 mediumStackDescriptors:v31 largeStackDescriptors:v39 extraLargeStackDescriptors:v47];
        self = v75;
        v5 = v76;
        v10 = v77;
        v13 = v73;
        v22 = v85;
        v17 = v79;
        goto LABEL_62;
      }

      if (v16)
      {
        v20 = [v16 avocadoDescriptor];
        v21 = [v20 sanitizedDescriptor];
        v22 = v85;
LABEL_62:

        v7 = v78;
        goto LABEL_63;
      }

      v21 = 0;
      v22 = v85;
LABEL_63:
      if (v91)
      {
        v55 = 1;
      }

      else
      {
        v55 = v22;
      }

      if (v55 != 1)
      {
        v91 = v21;
LABEL_82:
        v59 = v87;
LABEL_83:
        v60 = v21;
        v87 = v59;
        goto LABEL_84;
      }

      if (v88)
      {
        v56 = 1;
      }

      else
      {
        v56 = v84;
      }

      if (v56 != 1)
      {
        v88 = v21;
        goto LABEL_82;
      }

      v57 = v83;
      if (v90)
      {
        v57 = 1;
      }

      if (v57 != 1)
      {
        v90 = v21;
        goto LABEL_82;
      }

      v58 = v82;
      if (v87)
      {
        v58 = 1;
      }

      v59 = v21;
      if ((v58 & 1) == 0)
      {
        goto LABEL_83;
      }

LABEL_84:

      if (v91)
      {
        v12 = v80;
        v14 = v81;
        if (v88 && v90)
        {
          goto LABEL_93;
        }
      }

      else
      {
        v12 = v80;
        v14 = v81;
      }

LABEL_89:
      ++v14;
    }

    while (v14 != v12);
    v12 = [v10 countByEnumeratingWithState:&v112 objects:v121 count:16];
  }

  while (v12);
LABEL_93:

  galleryLayoutSize = self->_galleryLayoutSize;
  if (galleryLayoutSize > 4)
  {
    v62 = &unk_1F3DB2BA0;
  }

  else
  {
    v62 = *(&off_1E808AE68 + galleryLayoutSize);
  }

  v94 = 0u;
  v95 = 0u;
  v92 = 0u;
  v93 = 0u;
  v63 = [v62 countByEnumeratingWithState:&v92 objects:v116 count:16];
  if (v63)
  {
    v64 = v63;
    v65 = *v93;
    do
    {
      for (n = 0; n != v64; ++n)
      {
        if (*v93 != v65)
        {
          objc_enumerationMutation(v62);
        }

        v67 = [*(*(&v92 + 1) + 8 * n) integerValue];
        v68 = v67;
        v69 = 0;
        if (v67 > 2)
        {
          v70 = v90;
          if (v67 != 3)
          {
            if (v67 != 4)
            {
              goto LABEL_114;
            }

            v70 = v87;
          }
        }

        else
        {
          v70 = v91;
          if (v67 != 1)
          {
            v70 = v88;
            if (v67 != 2)
            {
              goto LABEL_114;
            }
          }
        }

        v71 = v70;
        v69 = v71;
        if (v71 && ((v7 & 1) != 0 || [(SBHWidgetStackDescriptor *)v71 sbh_canBeAddedToStack]) && ((v89 & 0x100) == 0 || [(SBHWidgetStackDescriptor *)v69 sbh_supportsRemovableBackground]))
        {
          v72 = [(SBHAddWidgetSheetViewController *)self _newWrapperViewControllerWithGalleryItem:v69 sizeClass:v68];
          [v5 addObject:v72];
        }

LABEL_114:
      }

      v64 = [v62 countByEnumeratingWithState:&v92 objects:v116 count:16];
    }

    while (v64);
  }

  [(SBHAddWidgetSheetViewController *)self setGalleryItems:v5];
}

- (id)_sizeClasses
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_galleryItems;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(*(*(&v11 + 1) + 8 * i), "selectedSizeClass", v11)}];
        [v3 addObject:v9];
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)_itemsArrayWithSizeClasses:(id)a3 nSmallsGroup:(id)a4 mediumAndSmallGroup:(id)a5 usesThreeColumnLayout:(BOOL)a6
{
  v6 = a6;
  v9 = a3;
  v25 = a4;
  v27 = a5;
  v10 = objc_opt_new();
  v11 = [v9 count];
  if (v11)
  {
    v12 = v11;
    v13 = 0;
    v14 = 0;
    v15 = !v6;
    if (v6)
    {
      v16 = 2;
    }

    else
    {
      v16 = 1;
    }

    do
    {
      v17 = [v9 objectAtIndex:{v13, v25}];
      v18 = [v17 integerValue];
      v19 = v14 + 1;
      v20 = SBHItemAtIndexIsOfSize(v9, v14 + 1);
      v21 = v20;
      if (v18 == 1)
      {
        v23 = SBHItemAtIndexIsOfSize(v9, v14 + 2);
        v22 = v25;
        if ((v21 & (v15 | v23)) != 1)
        {
          goto LABEL_9;
        }
      }

      else
      {
        if (v18 != 2)
        {
          goto LABEL_9;
        }

        v22 = v27;
        v19 = v14;
        if (((v15 | v20) & 1) == 0)
        {
          goto LABEL_9;
        }
      }

      [v10 addObject:v22];
      v14 = v19;
LABEL_9:

      v14 += v16;
      v13 = v14;
    }

    while (v12 > v14);
  }

  if (![v10 count])
  {
    [v10 addObject:v27];
  }

  return v10;
}

- (id)_collectionViewLayoutGallerySectionWithWidth:(double)a3 sizeClasses:(id)a4
{
  v48[1] = *MEMORY[0x1E69E9840];
  v43 = self->_galleryLayoutSize == 1;
  v42 = a4;
  v46 = [(SBHAddWidgetSheetViewController *)self _listLayoutForWidgetSizing];
  v5 = SBHIconListLayoutIconImageInfoForGridSizeClass(v46, @"SBHIconGridSizeClassSmall");
  v7 = v6;
  v8 = SBHIconListLayoutIconImageInfoForGridSizeClass(v46, @"SBHIconGridSizeClassMedium");
  v10 = v9;
  v11 = MEMORY[0x1E6995588];
  v12 = [MEMORY[0x1E6995558] absoluteDimension:v5];
  v13 = [MEMORY[0x1E6995558] estimatedDimension:v7];
  v45 = [v11 sizeWithWidthDimension:v12 heightDimension:v13];

  v14 = [MEMORY[0x1E6995578] itemWithLayoutSize:v45];
  v15 = MEMORY[0x1E6995588];
  v16 = [MEMORY[0x1E6995558] absoluteDimension:v8];
  v17 = [MEMORY[0x1E6995558] estimatedDimension:v10];
  v44 = [v15 sizeWithWidthDimension:v16 heightDimension:v17];

  v18 = [MEMORY[0x1E6995578] itemWithLayoutSize:v44];
  v19 = MEMORY[0x1E6995588];
  v20 = [MEMORY[0x1E6995558] fractionalWidthDimension:1.0];
  v21 = [MEMORY[0x1E6995558] estimatedDimension:v7 * 0.5];
  v22 = [v19 sizeWithWidthDimension:v20 heightDimension:v21];

  v23 = MEMORY[0x1E6995568];
  v41 = v14;
  v48[0] = v14;
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:1];
  v25 = [v23 horizontalGroupWithLayoutSize:v22 subitems:v24];

  v26 = [MEMORY[0x1E6995590] fixedSpacing:self->_horizontalSpacing];
  [v25 setInterItemSpacing:v26];

  v27 = MEMORY[0x1E6995568];
  v47[0] = v18;
  v47[1] = v14;
  v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:2];
  v29 = [v27 horizontalGroupWithLayoutSize:v22 subitems:v28];

  v30 = [MEMORY[0x1E6995590] fixedSpacing:self->_horizontalSpacing];
  [v29 setInterItemSpacing:v30];

  v31 = [(SBHAddWidgetSheetViewController *)self _itemsArrayWithSizeClasses:v42 nSmallsGroup:v25 mediumAndSmallGroup:v29 usesThreeColumnLayout:v43];

  v32 = [v31 count];
  v33 = MEMORY[0x1E6995588];
  v34 = [MEMORY[0x1E6995558] fractionalWidthDimension:1.0];
  v35 = [MEMORY[0x1E6995558] estimatedDimension:(v32 - 1) * 16.0 + v32 * (v7 + 30.0)];
  v36 = [v33 sizeWithWidthDimension:v34 heightDimension:v35];

  v37 = [MEMORY[0x1E6995568] verticalGroupWithLayoutSize:v36 subitems:v31];
  v38 = [MEMORY[0x1E6995590] fixedSpacing:16.0];
  [v37 setInterItemSpacing:v38];

  v39 = [MEMORY[0x1E6995580] sectionWithGroup:v37];
  [v39 setInterGroupSpacing:16.0];
  [v39 setContentInsets:{self->_searchBarHeightAdjustment, self->_contentInsets.leading, 8.0, self->_contentInsets.trailing}];

  return v39;
}

- (id)_newPadCollectionViewLayoutGallerySectionWithWidth:(double)a3 sizeClasses:(id)a4
{
  v67 = a4;
  v5 = [(SBHAddWidgetSheetViewController *)self _listLayoutForWidgetSizing];
  v6 = SBHIconListLayoutIconImageInfoForGridSizeClass(v5, @"SBHIconGridSizeClassSmall");
  v8 = v7;
  v9 = SBHIconListLayoutIconImageInfoForGridSizeClass(v5, @"SBHIconGridSizeClassMedium");
  v11 = v10;
  v12 = SBHIconListLayoutIconImageInfoForGridSizeClass(v5, @"SBHIconGridSizeClassLarge");
  v14 = v13;
  v15 = SBHIconListLayoutIconImageInfoForGridSizeClass(v5, @"SBHIconGridSizeClassExtraLarge");
  v73 = v16;
  v74 = v15;
  v66 = v5;
  [(SBHAddWidgetSheetViewController *)self _horizontalSpacingForListLayout:v5];
  v18 = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __98__SBHAddWidgetSheetViewController__newPadCollectionViewLayoutGallerySectionWithWidth_sizeClasses___block_invoke;
  aBlock[3] = &__block_descriptor_56_e38_v32__0__NSMutableArray_8_CGPoint_dd_16l;
  *&aBlock[4] = v6;
  aBlock[5] = v8;
  aBlock[6] = v17;
  v19 = _Block_copy(aBlock);
  v100[0] = MEMORY[0x1E69E9820];
  v100[1] = 3221225472;
  v100[2] = __98__SBHAddWidgetSheetViewController__newPadCollectionViewLayoutGallerySectionWithWidth_sizeClasses___block_invoke_2;
  v100[3] = &__block_descriptor_72_e38_v32__0__NSMutableArray_8_CGPoint_dd_16l;
  *&v100[4] = v6;
  v100[5] = v8;
  v100[6] = v18;
  *&v100[7] = v9;
  v100[8] = v11;
  v20 = _Block_copy(v100);
  v99[0] = MEMORY[0x1E69E9820];
  v99[1] = 3221225472;
  v99[2] = __98__SBHAddWidgetSheetViewController__newPadCollectionViewLayoutGallerySectionWithWidth_sizeClasses___block_invoke_3;
  v99[3] = &__block_descriptor_72_e38_v32__0__NSMutableArray_8_CGPoint_dd_16l;
  *&v99[4] = v9;
  v99[5] = v11;
  *&v99[6] = v6;
  v99[7] = v8;
  v99[8] = v18;
  v21 = _Block_copy(v99);
  v98[0] = MEMORY[0x1E69E9820];
  v98[1] = 3221225472;
  v98[2] = __98__SBHAddWidgetSheetViewController__newPadCollectionViewLayoutGallerySectionWithWidth_sizeClasses___block_invoke_4;
  v98[3] = &__block_descriptor_56_e38_v32__0__NSMutableArray_8_CGPoint_dd_16l;
  *&v98[4] = v9;
  v98[5] = v11;
  v98[6] = v18;
  v22 = _Block_copy(v98);
  v97[0] = MEMORY[0x1E69E9820];
  v97[1] = 3221225472;
  v97[2] = __98__SBHAddWidgetSheetViewController__newPadCollectionViewLayoutGallerySectionWithWidth_sizeClasses___block_invoke_5;
  v97[3] = &__block_descriptor_48_e38_v32__0__NSMutableArray_8_CGPoint_dd_16l;
  *&v97[4] = v12;
  *&v97[5] = v14;
  v23 = _Block_copy(v97);
  v96[0] = MEMORY[0x1E69E9820];
  v96[1] = 3221225472;
  v96[2] = __98__SBHAddWidgetSheetViewController__newPadCollectionViewLayoutGallerySectionWithWidth_sizeClasses___block_invoke_6;
  v96[3] = &__block_descriptor_56_e38_v32__0__NSMutableArray_8_CGPoint_dd_16l;
  *&v96[4] = v6;
  v96[5] = v8;
  v96[6] = v18;
  v24 = _Block_copy(v96);
  v95[0] = MEMORY[0x1E69E9820];
  v95[1] = 3221225472;
  v95[2] = __98__SBHAddWidgetSheetViewController__newPadCollectionViewLayoutGallerySectionWithWidth_sizeClasses___block_invoke_7;
  v95[3] = &__block_descriptor_48_e38_v32__0__NSMutableArray_8_CGPoint_dd_16l;
  *&v95[4] = v74;
  v95[5] = v73;
  v25 = _Block_copy(v95);
  v87[0] = MEMORY[0x1E69E9820];
  v87[1] = 3221225472;
  v87[2] = __98__SBHAddWidgetSheetViewController__newPadCollectionViewLayoutGallerySectionWithWidth_sizeClasses___block_invoke_8;
  v87[3] = &unk_1E808ADD8;
  v64 = v19;
  v88 = v64;
  v63 = v20;
  v89 = v63;
  v62 = v21;
  v90 = v62;
  v61 = v22;
  v91 = v61;
  v60 = v23;
  v92 = v60;
  v59 = v24;
  v93 = v59;
  v57 = v25;
  v94 = v57;
  v72 = _Block_copy(v87);
  v85[0] = MEMORY[0x1E69E9820];
  v85[1] = 3221225472;
  v85[2] = __98__SBHAddWidgetSheetViewController__newPadCollectionViewLayoutGallerySectionWithWidth_sizeClasses___block_invoke_10;
  v85[3] = &unk_1E808AE20;
  v86 = &__block_literal_global_246;
  v26 = _Block_copy(v85);
  galleryLayoutSize = self->_galleryLayoutSize;
  if (galleryLayoutSize == 2)
  {
    v27 = 4;
  }

  else
  {
    v27 = 5;
  }

  v28 = self->_horizontalSpacing * (v27 - 1) + v27 * v6;
  v29 = MEMORY[0x1E6995588];
  v30 = [MEMORY[0x1E6995558] absoluteDimension:{v28 + 100.0, v57}];
  v31 = [MEMORY[0x1E6995558] estimatedDimension:v14];
  v71 = [v29 sizeWithWidthDimension:v30 heightDimension:v31];

  v32 = self;
  v33 = [(SBHAddWidgetSheetViewController *)self _podsArrayWithSizeClasses:v67 columnCount:v27];
  v34 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([v33 count])
  {
    v35 = 0;
    v36 = 2;
    if (galleryLayoutSize != 2)
    {
      v36 = 3;
    }

    v69 = v36;
    v68 = *MEMORY[0x1E695EFF8];
    do
    {
      v37 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v38 = [v33 objectAtIndex:v35];
      [v37 addObject:v38];

      if (v26[2](v26, v33, v35) && v26[2](v26, v33, v35 + 1))
      {
        v39 = [v33 objectAtIndex:v35 + 1];
        [v37 addObject:v39];

        v40 = v35 + 2;
        if (galleryLayoutSize != 2)
        {
          if (v26[2](v26, v33, v35 + 2))
          {
            v42 = [v33 objectAtIndex:v35 + 2];
            [v37 addObject:v42];
          }

          v40 = v35 + 3;
          v84 = *MEMORY[0x1E695EFF8];
LABEL_17:
          horizontalSpacing = v32->_horizontalSpacing;
          v41 = v6 + horizontalSpacing;
          v75 = COERCE_UNSIGNED_INT64(horizontalSpacing + v9 + v6 + horizontalSpacing);
          v35 = v40;
          goto LABEL_18;
        }

        v84 = *MEMORY[0x1E695EFF8];
      }

      else
      {
        v40 = v35 + v69;
        v84 = *MEMORY[0x1E695EFF8];
        if (galleryLayoutSize != 2)
        {
          goto LABEL_17;
        }
      }

      v41 = v12 + v32->_horizontalSpacing;
      v35 = v40;
      v75 = v68;
LABEL_18:
      v44 = MEMORY[0x1E6995568];
      v76[0] = MEMORY[0x1E69E9820];
      v76[1] = 3221225472;
      v76[2] = __98__SBHAddWidgetSheetViewController__newPadCollectionViewLayoutGallerySectionWithWidth_sizeClasses___block_invoke_11;
      v76[3] = &unk_1E808AE48;
      v77 = v37;
      v78 = v72;
      v79 = &__block_literal_global_246;
      v80 = v84;
      v81 = v41;
      v82 = 0;
      v83 = v75;
      v45 = v37;
      v46 = [v44 customGroupWithLayoutSize:v71 itemProvider:v76];
      [v34 addObject:v46];
    }

    while (v35 < [v33 count]);
  }

  v47 = [v34 count];
  v48 = 0.0;
  if (!v32->_wrapperView)
  {
    v48 = v32->_horizontalSpacing;
  }

  v49 = MEMORY[0x1E6995588];
  v50 = [MEMORY[0x1E6995558] absoluteDimension:v28 + v48];
  v51 = [MEMORY[0x1E6995558] estimatedDimension:v32->_horizontalSpacing * (v47 - 1) + v47 * v14];
  v52 = [v49 sizeWithWidthDimension:v50 heightDimension:v51];

  v53 = [MEMORY[0x1E6995568] verticalGroupWithLayoutSize:v52 subitems:v34];
  v54 = [MEMORY[0x1E6995590] fixedSpacing:v32->_horizontalSpacing];
  [v53 setInterItemSpacing:v54];

  v55 = [MEMORY[0x1E6995580] sectionWithGroup:v53];
  [v55 setInterGroupSpacing:v32->_horizontalSpacing];
  [v55 setContentInsets:{v32->_searchBarHeightAdjustment, (a3 - v28) * 0.5, 8.0, (a3 - v28) * 0.5}];

  return v55;
}

void __98__SBHAddWidgetSheetViewController__newPadCollectionViewLayoutGallerySectionWithWidth_sizeClasses___block_invoke(double *a1, void *a2, double a3, double a4)
{
  v7 = MEMORY[0x1E6995570];
  v8 = a1[4];
  v9 = a1[5];
  v10 = a2;
  v11 = [v7 customItemWithFrame:{a3, a4, v8, v9}];
  [v10 addObject:v11];

  v12 = [MEMORY[0x1E6995570] customItemWithFrame:{a3 + a1[4] + a1[6], a4, a1[4], a1[5]}];
  [v10 addObject:v12];

  v13 = [MEMORY[0x1E6995570] customItemWithFrame:{a3, a4 + a1[5] + a1[6], a1[4]}];
  [v10 addObject:v13];

  v14 = [MEMORY[0x1E6995570] customItemWithFrame:{a3 + a1[4] + a1[6], a1[6] + a4 + a1[5]}];
  [v10 addObject:v14];
}

void __98__SBHAddWidgetSheetViewController__newPadCollectionViewLayoutGallerySectionWithWidth_sizeClasses___block_invoke_2(double *a1, void *a2, double a3, double a4)
{
  v7 = MEMORY[0x1E6995570];
  v8 = a1[4];
  v9 = a1[5];
  v10 = a2;
  v11 = [v7 customItemWithFrame:{a3, a4, v8, v9}];
  [v10 addObject:v11];

  v12 = [MEMORY[0x1E6995570] customItemWithFrame:{a3 + a1[4] + a1[6], a4, a1[4], a1[5]}];
  [v10 addObject:v12];

  v13 = [MEMORY[0x1E6995570] customItemWithFrame:{a3, a4 + a1[5] + a1[6], a1[7], a1[8]}];
  [v10 addObject:v13];
}

void __98__SBHAddWidgetSheetViewController__newPadCollectionViewLayoutGallerySectionWithWidth_sizeClasses___block_invoke_3(double *a1, void *a2, double a3, double a4)
{
  v7 = MEMORY[0x1E6995570];
  v8 = a1[4];
  v9 = a1[5];
  v10 = a2;
  v11 = [v7 customItemWithFrame:{a3, a4, v8, v9}];
  [v10 addObject:v11];

  v12 = [MEMORY[0x1E6995570] customItemWithFrame:{a3, a4 + a1[7] + a1[8], a1[6]}];
  [v10 addObject:v12];

  v13 = [MEMORY[0x1E6995570] customItemWithFrame:{a3 + a1[6] + a1[8], a1[8] + a4 + a1[7]}];
  [v10 addObject:v13];
}

void __98__SBHAddWidgetSheetViewController__newPadCollectionViewLayoutGallerySectionWithWidth_sizeClasses___block_invoke_4(double *a1, void *a2, double a3, double a4)
{
  v7 = MEMORY[0x1E6995570];
  v8 = a1[4];
  v9 = a1[5];
  v10 = a2;
  v11 = [v7 customItemWithFrame:{a3, a4, v8, v9}];
  [v10 addObject:v11];

  v12 = [MEMORY[0x1E6995570] customItemWithFrame:{a3, a4 + a1[5] + a1[6], a1[4]}];
  [v10 addObject:v12];
}

void __98__SBHAddWidgetSheetViewController__newPadCollectionViewLayoutGallerySectionWithWidth_sizeClasses___block_invoke_5(uint64_t a1, void *a2, double a3, double a4)
{
  v6 = MEMORY[0x1E6995570];
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = a2;
  v10 = [v6 customItemWithFrame:{a3, a4, v7, v8}];
  [v9 addObject:v10];
}

void __98__SBHAddWidgetSheetViewController__newPadCollectionViewLayoutGallerySectionWithWidth_sizeClasses___block_invoke_6(double *a1, void *a2, double a3, double a4)
{
  v7 = MEMORY[0x1E6995570];
  v8 = a1[4];
  v9 = a1[5];
  v10 = a2;
  v11 = [v7 customItemWithFrame:{a3, a4, v8, v9}];
  [v10 addObject:v11];

  v12 = [MEMORY[0x1E6995570] customItemWithFrame:{a3, a4 + a1[5] + a1[6], a1[4]}];
  [v10 addObject:v12];
}

void __98__SBHAddWidgetSheetViewController__newPadCollectionViewLayoutGallerySectionWithWidth_sizeClasses___block_invoke_7(uint64_t a1, void *a2, double a3, double a4)
{
  v6 = MEMORY[0x1E6995570];
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = a2;
  v10 = [v6 customItemWithFrame:{a3, a4, v7, v8}];
  [v9 addObject:v10];
}

uint64_t __98__SBHAddWidgetSheetViewController__newPadCollectionViewLayoutGallerySectionWithWidth_sizeClasses___block_invoke_8(uint64_t a1, void *a2, unint64_t a3, double a4, double a5)
{
  v9 = a2;
  v10 = v9;
  if (a3 <= 6)
  {
    v12 = v9;
    v9 = (*(*(a1 + qword_1BEE85900[a3]) + 16))(a4, a5);
    v10 = v12;
  }

  return MEMORY[0x1EEE66BB8](v9, v10);
}

uint64_t __98__SBHAddWidgetSheetViewController__newPadCollectionViewLayoutGallerySectionWithWidth_sizeClasses___block_invoke_9(uint64_t a1, void *a2)
{
  v2 = [a2 objectAtIndex:?];
  v3 = [v2 integerValue];

  return v3;
}

BOOL __98__SBHAddWidgetSheetViewController__newPadCollectionViewLayoutGallerySectionWithWidth_sizeClasses___block_invoke_10(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = a2;
  v6 = [v5 count] > a3 && (*(*(a1 + 32) + 16))() != 6;

  return v6;
}

id __98__SBHAddWidgetSheetViewController__newPadCollectionViewLayoutGallerySectionWithWidth_sizeClasses___block_invoke_11(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([*(a1 + 32) count])
  {
    v3 = *(a1 + 40);
    v4 = (*(*(a1 + 48) + 16))();
    (*(v3 + 16))(v3, v2, v4, *(a1 + 56), *(a1 + 64));
  }

  if ([*(a1 + 32) count] >= 2)
  {
    v5 = *(a1 + 40);
    v6 = (*(*(a1 + 48) + 16))();
    (*(v5 + 16))(v5, v2, v6, *(a1 + 72), *(a1 + 80));
  }

  if ([*(a1 + 32) count] >= 3)
  {
    v7 = *(a1 + 40);
    v8 = (*(*(a1 + 48) + 16))();
    (*(v7 + 16))(v7, v2, v8, *(a1 + 88), *(a1 + 96));
  }

  return v2;
}

- (id)_podsArrayWithSizeClasses:(id)a3 columnCount:(int64_t)a4
{
  v5 = a3;
  v6 = [v5 count];
  v7 = objc_opt_new();
  if (v6)
  {
    v8 = 0;
    v9 = a4 & 1;
    v10 = v9 + a4 / 2;
    do
    {
      v11 = [v7 count];
      if (v9 && !(v11 % v10))
      {
        v18 = SBHSizeClassForItemAtIndex(v5, v8);
        v19 = SBHSizeClassForItemAtIndex(v5, v8 + 1);
        if (v18 == 1 && v19 <= 1)
        {
          [v7 addObject:&unk_1F3DB2558];
          v8 += 2;
        }

        continue;
      }

      v12 = SBHSizeClassForItemAtIndex(v5, v8);
      v13 = SBHSizeClassForItemAtIndex(v5, v8 + 1);
      v14 = SBHSizeClassForItemAtIndex(v5, v8 + 2);
      v15 = SBHSizeClassForItemAtIndex(v5, v8 + 3);
      v16 = 0;
      if (v12 > 2)
      {
        if (v12 == 3)
        {
          v17 = &unk_1F3DB2540;
LABEL_22:
          v16 = 1;
LABEL_23:
          [v7 addObject:v17];
          goto LABEL_31;
        }

        if (v12 == 4)
        {
          v17 = &unk_1F3DB2570;
          goto LABEL_22;
        }
      }

      else
      {
        if (v12 == 1)
        {
          if (v13 > 1)
          {
            goto LABEL_30;
          }

          if (v14 <= 1 && v15 < 2)
          {
            v17 = &unk_1F3DB24E0;
            v16 = 4;
            goto LABEL_23;
          }

          if (v13 != 1 || (v14 | 2) != 2)
          {
LABEL_30:
            v16 = 0;
            goto LABEL_31;
          }

          v17 = &unk_1F3DB24F8;
LABEL_29:
          v16 = 3;
          goto LABEL_23;
        }

        if (v12 == 2)
        {
          if (v13 >= 2)
          {
            if (v13 != 2)
            {
              goto LABEL_30;
            }

            v17 = &unk_1F3DB2528;
            v16 = 2;
            goto LABEL_23;
          }

          if (v14 >= 2)
          {
            goto LABEL_30;
          }

          v17 = &unk_1F3DB2510;
          goto LABEL_29;
        }
      }

LABEL_31:
      v8 += v16;
    }

    while (v8 < v6);
  }

  if (![v7 count])
  {
    [v7 addObject:&unk_1F3DB24E0];
  }

  return v7;
}

- (void)_setContentInsetsForGridWithWidth:(double)a3
{
  galleryLayoutSize = self->_galleryLayoutSize;
  v12 = [(SBHAddWidgetSheetViewController *)self _listLayoutForWidgetSizing];
  v6 = [v12 iconGridSizeClassSizes];
  v7 = [v6 hasGridSizeForGridSizeClass:@"SBHIconGridSizeClassSmall"];

  if (v7)
  {
    [(SBHAddWidgetSheetViewController *)self _updateHorizontalSpacing];
    if (galleryLayoutSize >= 2)
    {
      if ([(SBHAddWidgetSheetViewControllerBase *)self addWidgetSheetStyle]== 1)
      {
        *&self->_contentInsets.top = 0u;
        *&self->_contentInsets.bottom = 0u;
        goto LABEL_11;
      }

      v8 = SBHIconListLayoutIconImageInfoForGridSizeClass(v12, @"SBHIconGridSizeClassSmall");
      v9 = 4;
      if (self->_galleryLayoutSize != 2)
      {
        v9 = 5;
      }
    }

    else
    {
      v8 = SBHIconListLayoutIconImageInfoForGridSizeClass(v12, @"SBHIconGridSizeClassSmall");
      v9 = 2;
      if (self->_galleryLayoutSize == 1)
      {
        v9 = 3;
      }
    }

    v10 = a3 - (self->_horizontalSpacing * (v9 - 1) + v9 * v8);
    self->_contentInsets.top = 0.0;
    v11 = v10 * 0.5;
    self->_contentInsets.leading = v11;
    self->_contentInsets.bottom = 0.0;
    self->_contentInsets.trailing = v11;
  }

LABEL_11:
}

- (void)_updateContentInsetsIfNecessaryForWidth:(double)a3
{
  if (self->_contentInsetUpdatedForWidth != a3)
  {
    [(SBHAddWidgetSheetViewController *)self _setContentInsetsForGridWithWidth:a3];
    self->_contentInsetUpdatedForWidth = a3;
  }
}

- (id)_collectionViewLayoutApplicationsSectionWithStyle:(unint64_t)a3
{
  v5 = MEMORY[0x1E6995588];
  v6 = [MEMORY[0x1E6995558] fractionalWidthDimension:1.0];
  v7 = [MEMORY[0x1E6995558] estimatedDimension:80.0];
  v8 = [v5 sizeWithWidthDimension:v6 heightDimension:v7];

  v9 = [MEMORY[0x1E6995578] itemWithLayoutSize:v8];
  v10 = MEMORY[0x1E6995588];
  v11 = [MEMORY[0x1E6995558] fractionalWidthDimension:1.0];
  v12 = [MEMORY[0x1E6995558] estimatedDimension:80.0];
  v13 = [v10 sizeWithWidthDimension:v11 heightDimension:v12];

  v14 = [MEMORY[0x1E6995568] horizontalGroupWithLayoutSize:v13 repeatingSubitem:v9 count:1];
  v15 = [MEMORY[0x1E6995580] sectionWithGroup:v14];
  v16 = v15;
  if (a3)
  {
    top = 0.0;
    [v15 setInterGroupSpacing:0.0];
    __asm { FMOV            V1.2D, #20.0 }

    *&self->_applicationsSectionInsets.top = xmmword_1BEE858B0;
    *&self->_applicationsSectionInsets.bottom = _Q1;
    if (a3 == 1)
    {
      [(SBHAddWidgetSheetViewController *)self _metricsForCurrentOrientation];
      self->_applicationsSectionInsets.leading = 0.0 + 0.0;
      self->_applicationsSectionInsets.trailing = 0.0 + 0.0;
      top = self->_applicationsSectionInsets.top;
    }
  }

  else
  {
    v23 = self->_contentInsets.leading + -12.0;
    self->_applicationsSectionInsets.top = 0.0;
    self->_applicationsSectionInsets.leading = 0.0;
    self->_applicationsSectionInsets.bottom = v23;
    self->_applicationsSectionInsets.trailing = 0.0;
    top = 0.0;
  }

  [v16 setContentInsets:top];

  return v16;
}

- (BOOL)_shouldShowGallery
{
  if ([(SBHAddWidgetSheetViewControllerBase *)self addWidgetSheetStyle]== 1 && ![(SBHAddWidgetSheetViewController *)self shouldShowGalleryOnly]|| [(SBHAddWidgetSheetViewController *)self _isSearchVisible])
  {
    LOBYTE(v3) = 0;
  }

  else
  {
    v4 = [(SBHAddWidgetSheetViewController *)self configuration];
    v3 = [v4 applicationCellIncludesGalleryListView] ^ 1;
  }

  return v3;
}

- (BOOL)_canShowGallery
{
  v3 = [(SBHAddWidgetSheetViewController *)self _shouldShowGallery];
  v4 = [(SBHAddWidgetSheetViewController *)self _suggestedItems];
  v5 = [v4 count];

  return v5 && v3;
}

- (BOOL)_shouldShowCustomApplicationsSection
{
  v3 = [(SBHAddWidgetSheetViewController *)self configuration];
  v4 = [v3 wantsCustomApplicationsSection];

  v5 = [(NSArray *)self->_customApplicationWidgetCollections count];
  result = 0;
  if (v4)
  {
    if (v5)
    {
      return ![(SBHAddWidgetSheetViewController *)self _isSearchVisible];
    }
  }

  return result;
}

- (BOOL)_shouldShowSuggestionsListItem
{
  if ([(SBHAddWidgetSheetViewControllerBase *)self addWidgetSheetStyle]== 1)
  {
    return ![(SBHAddWidgetSheetViewController *)self _isSearchVisible];
  }

  else
  {
    return 0;
  }
}

- (BOOL)_shouldShowDisfavoredSection
{
  if (self->_disfavoredApplicationWidgetCollections)
  {
    return ![(SBHAddWidgetSheetViewController *)self _isSearchVisible];
  }

  else
  {
    return 0;
  }
}

- (id)_materialViewForVisualStyling
{
  v3 = [(SBHAddWidgetSheetViewControllerBase *)self externalBackgroundView];
  backgroundView = v3;
  if (!v3)
  {
    backgroundView = self->_backgroundView;
  }

  v5 = backgroundView;

  return backgroundView;
}

- (BOOL)_shouldShowTitleAndSubtitle
{
  if (__sb__runningInSpringBoard())
  {
    return !SBFEffectiveDeviceClass() || SBFEffectiveDeviceClass() == 1;
  }

  else
  {
    v3 = [MEMORY[0x1E69DC938] currentDevice];
    v2 = [v3 userInterfaceIdiom] == 0;
  }

  return v2;
}

- (id)_newWrapperViewControllerWithGalleryItem:(id)a3 sizeClass:(int64_t)a4
{
  v6 = a3;
  v7 = [SBHWidgetWrapperViewController alloc];
  v8 = [(SBHAddWidgetSheetViewController *)self _shouldShowTitleAndSubtitle];
  v9 = [(SBHAddWidgetSheetViewControllerBase *)self listLayoutProvider];
  v10 = [(SBHAddWidgetSheetViewControllerBase *)self iconViewProvider];
  v11 = [(SBHWidgetWrapperViewController *)v7 initWithGalleryItem:v6 titleAndSubtitleVisible:v8 listLayoutProvider:v9 iconViewProvider:v10];

  if ([(SBHAddWidgetSheetViewController *)self addWidgetSheetLocation]== 2)
  {
    [(SBHWidgetWrapperViewController *)v11 setUsesAmbientScaleFactorForRemovableBackgroundItems:1];
  }

  [(SBHWidgetWrapperViewController *)v11 setDelegate:self];
  [(SBHWidgetWrapperViewController *)v11 setSelectedSizeClass:a4];
  [(SBHWidgetWrapperViewController *)v11 setBackgroundType:[(SBHAddWidgetSheetViewController *)self widgetWrapperViewControllerBackgroundType]];
  return v11;
}

- (int64_t)widgetWrapperViewControllerBackgroundType
{
  result = [(SBHAddWidgetSheetViewControllerBase *)self addWidgetSheetWidgetBackgroundType];
  if (result != 2)
  {
    return result == 1;
  }

  return result;
}

- (void)_updateSearchBarOverrideUserInterfaceStyle
{
  v4 = [(SBHAddWidgetSheetViewController *)self _effectiveSearchController];
  v3 = [(SBHAddWidgetSheetViewController *)self traitCollection];
  [v4 setOverrideUserInterfaceStyle:{objc_msgSend(v3, "userInterfaceStyle")}];
}

- (void)_updateSearchBarContentInsets
{
  searchController = self->_searchController;
  v4 = [(SBHAddWidgetSheetViewController *)self view];
  [v4 bounds];
  [(SBHWidgetSearchController *)searchController updateSearchBarContentInsetsWithWidth:v5];

  [(SBHAddWidgetSheetViewController *)self _updateCollectionViewInsets];
}

- (void)_updateCollectionViewInsets
{
  v3 = [(SBHAddWidgetSheetViewController *)self _listLayoutForWidgetSizing];
  v4 = [(SBHAddWidgetSheetViewController *)self configuration];
  v5 = [v4 gridSizeClassForContentWidth];
  v6 = v5;
  v7 = @"SBHIconGridSizeClassMedium";
  if (v5)
  {
    v7 = v5;
  }

  v8 = v7;

  v9 = SBHIconListLayoutIconImageInfoForGridSizeClass(v3, v8);
  v10 = [(SBHAddWidgetSheetViewController *)self view];
  [v10 frame];
  v12 = (v11 - v9) * -0.5;

  v13 = [(SBHAddWidgetSheetViewControllerBase *)self addWidgetSheetStyle];
  v14 = [(SBHAddWidgetSheetViewController *)self searchController];
  [v14 textFieldToWidgetsSpacing];
  v16 = v15;

  v17 = v16 + 12.0 + v12;
  if (v13 == 1)
  {
    v17 = 0.0;
  }

  self->_searchBarHeightAdjustment = v17;
  [(_SBHAddWidgetSheetCollectionView *)self->_collectionView contentInset];
  v19 = v18;
  v21 = v20;
  if (v13 == 1)
  {
    [(SBHAddWidgetSheetViewController *)self _metricsForCurrentOrientation:0];
    v22 = [(SBHAddWidgetSheetViewController *)self shouldShowGalleryOnly];
    v23 = 120;
    if (v22)
    {
      v23 = 40;
    }

    v24 = *(&v40 + v23);
  }

  else
  {
    v25 = [(SBHAddWidgetSheetViewController *)self _effectiveSearchController];
    v26 = [v25 searchBar];
    [v26 frame];
    v28 = v27;

    v24 = v28 - self->_searchBarHeightAdjustment;
  }

  Height = CGRectGetHeight(self->_keyboardFrameIntersect);
  if (__sb__runningInSpringBoard())
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      Height = Height - self->_applicationsSectionInsets.bottom;
    }
  }

  else
  {
    v30 = [MEMORY[0x1E69DC938] currentDevice];
    if ([v30 userInterfaceIdiom] != 1)
    {
      Height = Height - self->_applicationsSectionInsets.bottom;
    }
  }

  v31 = fmax(Height, 0.0);
  [(_SBHAddWidgetSheetCollectionView *)self->_collectionView contentInset];
  if (v35 != v19 || v32 != v24 || v34 != v21 || v33 != v31)
  {
    [(_SBHAddWidgetSheetCollectionView *)self->_collectionView setContentInset:v24, v19, v31, v21];
    [(_SBHAddWidgetSheetCollectionView *)self->_collectionView contentOffset];
    if (v37 == *MEMORY[0x1E695EFF8] && v36 == *(MEMORY[0x1E695EFF8] + 8))
    {
      collectionView = self->_collectionView;
      [(_SBHAddWidgetSheetCollectionView *)collectionView contentInset];
      [(_SBHAddWidgetSheetCollectionView *)collectionView setContentOffset:0.0, -v39];
    }
  }
}

- (void)_selectFirstItem
{
  v3 = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:0];
  [(_SBHAddWidgetSheetCollectionView *)self->_collectionView selectItemAtIndexPath:v3 animated:0 scrollPosition:0];
}

- (id)_effectiveSearchController
{
  externalSearchController = self->_externalSearchController;
  if (!externalSearchController)
  {
    externalSearchController = self->_searchController;
  }

  return externalSearchController;
}

- (SBHPadAddWidgetSheetMetrics)_metricsForOrientation:(SEL)a3
{
  if ((a4 - 3) >= 2)
  {
    v4 = &OBJC_IVAR___SBHAddWidgetSheetViewController__portraitMetrics;
  }

  else
  {
    v4 = &OBJC_IVAR___SBHAddWidgetSheetViewController__landscapeMetrics;
  }

  v5 = self + *v4;
  v6 = *(v5 + 7);
  *&retstr->detailAddButtonTopSpacing = *(v5 + 6);
  *&retstr->detailPageControlTopSpacing = v6;
  *&retstr->sidebarPadding.leading = *(v5 + 8);
  retstr->sidebarPadding.trailing = *(v5 + 18);
  v7 = *(v5 + 3);
  *&retstr->trailingPadding = *(v5 + 2);
  *&retstr->widgetScaleFactor = v7;
  v8 = *(v5 + 5);
  *&retstr->scaledWidgetSize.height = *(v5 + 4);
  retstr->detailWidgetPadding = v8;
  v9 = *(v5 + 1);
  *&retstr->sheetMargin = *v5;
  *&retstr->sidebarWidth = v9;
  return self;
}

- (SBHPadAddWidgetSheetMetrics)_metricsForCurrentOrientation
{
  v4 = [(SBHAddWidgetSheetViewController *)self view];
  v7 = [v4 window];

  v5 = v7;
  if (!v7)
  {
    v5 = self;
  }

  [(SBHAddWidgetSheetViewController *)self _metricsForOrientation:[(SBHAddWidgetSheetViewController *)v5 interfaceOrientation]];

  return result;
}

- (id)_generateLayoutSectionForSectionIdx:(unint64_t)a3 width:(double)a4
{
  [(SBHAddWidgetSheetViewController *)self _updateContentInsetsIfNecessaryForWidth:?];
  if ([(SBHAddWidgetSheetViewController *)self _sectionIndexForSection:0]== a3)
  {
    v7 = [(SBHAddWidgetSheetViewController *)self galleryLayoutSize];
    v8 = [(SBHAddWidgetSheetViewController *)self _sizeClasses];
    if (v7 > 1)
    {
      v9 = [(SBHAddWidgetSheetViewController *)self _newPadCollectionViewLayoutGallerySectionWithWidth:v8 sizeClasses:a4];
    }

    else
    {
      v9 = [(SBHAddWidgetSheetViewController *)self _collectionViewLayoutGallerySectionWithWidth:v8 sizeClasses:a4];
    }

    v10 = v9;
  }

  else if ([(SBHAddWidgetSheetViewController *)self _sectionIndexForSection:2]== a3 || [(SBHAddWidgetSheetViewController *)self _sectionIndexForSection:3]== a3 || [(SBHAddWidgetSheetViewController *)self _sectionIndexForSection:1]== a3)
  {
    v10 = [(SBHAddWidgetSheetViewController *)self _collectionViewLayoutApplicationsSectionWithStyle:[(SBHAddWidgetSheetViewControllerBase *)self addWidgetSheetStyle]];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_listLayoutForWidgetSizing
{
  v2 = [(SBHAddWidgetSheetViewControllerBase *)self listLayoutProvider];
  v3 = [v2 layoutForIconLocation:@"SBIconLocationRoot"];

  return v3;
}

- (void)_updateHorizontalSpacing
{
  v4 = [(SBHAddWidgetSheetViewController *)self _listLayoutForWidgetSizing];
  [(SBHAddWidgetSheetViewController *)self _horizontalSpacingForListLayout:v4];
  self->_horizontalSpacing = v3;
}

- (double)_horizontalSpacingForListLayout:(id)a3
{
  v3 = a3;
  v4 = SBHIconListLayoutIconImageInfoForGridSizeClass(v3, @"SBHIconGridSizeClassSmall");
  v5 = SBHIconListLayoutIconImageInfoForGridSizeClass(v3, @"SBHIconGridSizeClassMedium");

  result = v5 + v4 * -2.0;
  if (v5 <= v4)
  {
    return 20.0;
  }

  return result;
}

- (BOOL)_wantsNavigationBarHidden
{
  if ([(SBHAddWidgetSheetViewControllerBase *)self addWidgetSheetStyle]!= 1)
  {
    return 1;
  }

  return [(SBHAddWidgetSheetViewController *)self shouldShowGalleryOnly];
}

- (SBHWidgetSheetViewControllerPresenter)presenter
{
  WeakRetained = objc_loadWeakRetained(&self->_presenter);

  return WeakRetained;
}

- (NSDirectionalEdgeInsets)contentInsets
{
  top = self->_contentInsets.top;
  leading = self->_contentInsets.leading;
  bottom = self->_contentInsets.bottom;
  trailing = self->_contentInsets.trailing;
  result.trailing = trailing;
  result.bottom = bottom;
  result.leading = leading;
  result.top = top;
  return result;
}

- (NSDirectionalEdgeInsets)applicationsSectionInsets
{
  top = self->_applicationsSectionInsets.top;
  leading = self->_applicationsSectionInsets.leading;
  bottom = self->_applicationsSectionInsets.bottom;
  trailing = self->_applicationsSectionInsets.trailing;
  result.trailing = trailing;
  result.bottom = bottom;
  result.leading = leading;
  result.top = top;
  return result;
}

- (CGRect)keyboardFrameIntersect
{
  x = self->_keyboardFrameIntersect.origin.x;
  y = self->_keyboardFrameIntersect.origin.y;
  width = self->_keyboardFrameIntersect.size.width;
  height = self->_keyboardFrameIntersect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)_presentDetailSheetViewControllerForApplicationWidgetCollection:(uint64_t)a1 configuredWithGalleryItem:(NSObject *)a2 selectedSizeClass:fromCell:atIndexPath:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1BEB18000, a2, OS_LOG_TYPE_ERROR, "Cannot present detail sheet for application collection with 0 descriptors: %{public}@", &v2, 0xCu);
}

- (void)_presentDetailSheetForGalleryCellAtIndexPath:(os_log_t)log .cold.1(uint64_t a1, uint64_t *a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  v4 = 138543618;
  v5 = a1;
  v6 = 2114;
  v7 = v3;
  _os_log_error_impl(&dword_1BEB18000, log, OS_LOG_TYPE_ERROR, "widgetWrapperViewController: %{public}@ not found in known applicationWidgetCollections: %{public}@", &v4, 0x16u);
}

@end