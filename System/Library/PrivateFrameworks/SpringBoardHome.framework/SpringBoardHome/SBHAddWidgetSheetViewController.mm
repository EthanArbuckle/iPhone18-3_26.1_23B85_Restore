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
- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path;
- (CGRect)keyboardFrameIntersect;
- (NSDirectionalEdgeInsets)applicationsSectionInsets;
- (NSDirectionalEdgeInsets)contentInsets;
- (NSMutableDictionary)userInfo;
- (OS_dispatch_queue)applicationWidgetCollectionIconLoadingQueue;
- (SBHAddWidgetSheetViewController)initWithConfiguration:(id)configuration;
- (SBHAddWidgetSheetViewController)initWithListLayoutProvider:(id)provider iconViewProvider:(id)viewProvider allowedWidgets:(SBHWidgetFilteringParameters)widgets appCellConfigurator:(id)configurator addWidgetSheetStyle:(unint64_t)style;
- (SBHPadAddWidgetSheetMetrics)_metricsForCurrentOrientation;
- (SBHPadAddWidgetSheetMetrics)_metricsForOrientation:(SEL)orientation;
- (SBHWidgetDragHandling)widgetDragHandler;
- (SBHWidgetSheetViewControllerPresenter)presenter;
- (double)_horizontalSpacingForListLayout:(id)layout;
- (id)_collectionViewLayoutApplicationsSectionWithStyle:(unint64_t)style;
- (id)_collectionViewLayoutGallerySectionWithWidth:(double)width sizeClasses:(id)classes;
- (id)_currentPresenter;
- (id)_effectiveSearchController;
- (id)_generateLayoutSectionForSectionIdx:(unint64_t)idx width:(double)width;
- (id)_generateSnapshotDiffedFromSnapshot:(id)snapshot;
- (id)_iconImageForApplicationWidgetCollection:(id)collection;
- (id)_itemsArrayWithSizeClasses:(id)classes nSmallsGroup:(id)group mediumAndSmallGroup:(id)smallGroup usesThreeColumnLayout:(BOOL)layout;
- (id)_listLayoutForWidgetSizing;
- (id)_materialViewForVisualStyling;
- (id)_newBackgroundView;
- (id)_newPadCollectionViewLayoutGallerySectionWithWidth:(double)width sizeClasses:(id)classes;
- (id)_newWrapperViewControllerWithGalleryItem:(id)item sizeClass:(int64_t)class;
- (id)_otherDescriptionLabel;
- (id)_podsArrayWithSizeClasses:(id)classes columnCount:(int64_t)count;
- (id)_presentedGalleryViewController;
- (id)_searchTextForSearchController:(id)controller;
- (id)_sizeClasses;
- (id)_suggestedItems;
- (id)_updatedContentUnavailableConfigurationUsingState:(id)state;
- (id)applicationWidgetCollectionsToUse;
- (id)backgroundViewMatchingMaterialBeneathAddWidgetSheetViewController:(id)controller;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path itemIdentifier:(id)identifier;
- (id)contentUnavailableConfigurationState;
- (id)suggestedItemsForGalleryLayoutSize:(unint64_t)size;
- (int64_t)widgetWrapperViewControllerBackgroundType;
- (unint64_t)_applicationWidgetCollectionIndexForItemIndex:(unint64_t)index;
- (unint64_t)_sectionIndexForSection:(unint64_t)section;
- (unint64_t)supportedInterfaceOrientations;
- (void)_addBarSwipeView;
- (void)_backgroundTapped:(id)tapped;
- (void)_clearDetailViewController;
- (void)_collectionView:(id)view updateSeparatorVisibility:(BOOL)visibility forHighlightAtIndexPath:(id)path;
- (void)_contentSizeCategoryDidChange:(id)change;
- (void)_keyboardWillDismiss:(id)dismiss;
- (void)_keyboardWillShow:(id)show;
- (void)_layoutCollectionViewForScalingIfNeeded;
- (void)_layoutSearchBarGradientMaskLayers;
- (void)_makeFakeGalleryItemsFromHomeScreenItems:(id)items;
- (void)_makeGalleryItemsFromHomeScreenItems:(id)items;
- (void)_presentDetailSheetForGalleryCellAtIndexPath:(id)path;
- (void)_presentDetailSheetViewControllerForApplicationWidgetCollection:(id)collection configuredWithGalleryItem:(id)item selectedSizeClass:(int64_t)class fromCell:(id)cell atIndexPath:(id)path;
- (void)_presentDetailViewController:(id)controller fromCell:(id)cell;
- (void)_presentGalleryCell;
- (void)_refreshData:(BOOL)data;
- (void)_relayoutSearchBarBackground;
- (void)_reloadData:(BOOL)data;
- (void)_selectFirstItem;
- (void)_setContentInsetsForGridWithWidth:(double)width;
- (void)_setGrabberTopSpacingForStyleCollapsed;
- (void)_splitApplicationWidgetCollections;
- (void)_toggleShowingDisfavoredApplicationWidgetCollections;
- (void)_updateCollectionViewInsets;
- (void)_updateContentInsetsIfNecessaryForWidth:(double)width;
- (void)_updateHorizontalSpacing;
- (void)_updateSearchBarContentInsets;
- (void)_updateSearchBarOverrideUserInterfaceStyle;
- (void)addWidgetSheetViewController:(id)controller didSelectWidgetIconView:(id)view;
- (void)addWidgetSheetViewControllerDidCancel:(id)cancel;
- (void)closeButtonTapped:(id)tapped;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)dealloc;
- (void)didDismissSearchController:(id)controller;
- (void)didMoveToParentViewController:(id)controller;
- (void)loadView;
- (void)presentationControllerWillDismiss:(id)dismiss;
- (void)scrollViewDidScroll:(id)scroll;
- (void)setApplicationWidgetCollections:(id)collections;
- (void)setBarSwipeViewController:(id)controller;
- (void)setCustomApplicationWidgetCollections:(id)collections;
- (void)setDisfavoredApplicationWidgetCollections:(id)collections;
- (void)setExternalSearchController:(id)controller;
- (void)setFavoredApplicationWidgetCollections:(id)collections;
- (void)setGalleryItems:(id)items;
- (void)setGalleryLayoutSize:(unint64_t)size;
- (void)setSuggestedItems:(id)items forGalleryLayoutSize:(unint64_t)size;
- (void)setWantsBottomAttachedPresentation:(BOOL)presentation;
- (void)updateContentUnavailableConfigurationUsingState:(id)state;
- (void)updateSearchResultsForSearchController:(id)controller;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
- (void)willPresentSearchController:(id)controller;
@end

@implementation SBHAddWidgetSheetViewController

- (SBHAddWidgetSheetViewController)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  listLayoutProvider = [configurationCopy listLayoutProvider];
  iconViewProvider = [configurationCopy iconViewProvider];
  style = [configurationCopy style];
  v8 = SBHWidgetFilteringParametersNone();
  v13.receiver = self;
  v13.super_class = SBHAddWidgetSheetViewController;
  v10 = [(SBHAddWidgetSheetViewControllerBase *)&v13 initWithListLayoutProvider:listLayoutProvider iconViewProvider:iconViewProvider allowedWidgets:v8 appCellConfigurator:v9 addWidgetSheetStyle:0, style];
  v11 = v10;
  if (v10)
  {
    [(SBHAddWidgetSheetViewController *)v10 setConfiguration:configurationCopy];
  }

  return v11;
}

- (SBHAddWidgetSheetViewController)initWithListLayoutProvider:(id)provider iconViewProvider:(id)viewProvider allowedWidgets:(SBHWidgetFilteringParameters)widgets appCellConfigurator:(id)configurator addWidgetSheetStyle:(unint64_t)style
{
  v38.receiver = self;
  v38.super_class = SBHAddWidgetSheetViewController;
  style = [(SBHAddWidgetSheetViewControllerBase *)&v38 initWithListLayoutProvider:provider iconViewProvider:viewProvider allowedWidgets:widgets.families appCellConfigurator:*&widgets.includesNonStackable addWidgetSheetStyle:configurator, style];
  v8 = style;
  if (style)
  {
    style->_galleryLayoutSize = 4;
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    suggestedItemsByGalleryLayoutSize = v8->_suggestedItemsByGalleryLayoutSize;
    v8->_suggestedItemsByGalleryLayoutSize = dictionary;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v8 selector:sel__contentSizeCategoryDidChange_ name:*MEMORY[0x1E69DDC48] object:0];

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
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69DDC48] object:0];

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

- (void)setSuggestedItems:(id)items forGalleryLayoutSize:(unint64_t)size
{
  itemsCopy = items;
  suggestedItemsByGalleryLayoutSize = self->_suggestedItemsByGalleryLayoutSize;
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:size];
  v8 = [(NSMutableDictionary *)suggestedItemsByGalleryLayoutSize objectForKeyedSubscript:v7];

  if (v8 != itemsCopy)
  {
    v9 = self->_suggestedItemsByGalleryLayoutSize;
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:size];
    [(NSMutableDictionary *)v9 setObject:itemsCopy forKeyedSubscript:v10];

    if ([(SBHAddWidgetSheetViewController *)self isViewLoaded]&& self->_galleryLayoutSize == size)
    {
      [(SBHAddWidgetSheetViewController *)self _makeGalleryItemsFromHomeScreenItems:itemsCopy];
    }

    _presentedGalleryViewController = [(SBHAddWidgetSheetViewController *)self _presentedGalleryViewController];
    [_presentedGalleryViewController setSuggestedItems:itemsCopy forGalleryLayoutSize:size];
  }
}

- (id)suggestedItemsForGalleryLayoutSize:(unint64_t)size
{
  suggestedItemsByGalleryLayoutSize = self->_suggestedItemsByGalleryLayoutSize;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:size];
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

- (void)setApplicationWidgetCollections:(id)collections
{
  collectionsCopy = collections;
  allowedWidgets = [(SBHAddWidgetSheetViewControllerBase *)self allowedWidgets];
  applicationWidgetCollections = self->_applicationWidgetCollections;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __67__SBHAddWidgetSheetViewController_setApplicationWidgetCollections___block_invoke;
  v15[3] = &__block_descriptor_48_e40_B16__0__SBHApplicationWidgetCollection_8l;
  v15[4] = allowedWidgets;
  v15[5] = v7;
  v8 = [collectionsCopy bs_filter:v15];

  v9 = self->_applicationWidgetCollections;
  self->_applicationWidgetCollections = v8;

  applicationWidgetCollectionForApplicationWidgetCollectionIdentifierLookupTable = self->_applicationWidgetCollectionForApplicationWidgetCollectionIdentifierLookupTable;
  if (applicationWidgetCollectionForApplicationWidgetCollectionIdentifierLookupTable)
  {
    [(NSMapTable *)applicationWidgetCollectionForApplicationWidgetCollectionIdentifierLookupTable removeAllObjects];
  }

  else
  {
    strongToWeakObjectsMapTable = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
    v12 = self->_applicationWidgetCollectionForApplicationWidgetCollectionIdentifierLookupTable;
    self->_applicationWidgetCollectionForApplicationWidgetCollectionIdentifierLookupTable = strongToWeakObjectsMapTable;
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

- (void)setFavoredApplicationWidgetCollections:(id)collections
{
  v13 = *MEMORY[0x1E69E9840];
  collectionsCopy = collections;
  v6 = SBLogAddWidgetSheet();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = collectionsCopy;
    _os_log_impl(&dword_1BEB18000, v6, OS_LOG_TYPE_DEFAULT, "setFavoredApplicationWidgetCollections:%@", buf, 0xCu);
  }

  objc_storeStrong(&self->_favoredApplicationWidgetCollections, collections);
  favoredApplicationWidgetCollectionForApplicationWidgetCollectionIdentifierLookupTable = self->_favoredApplicationWidgetCollectionForApplicationWidgetCollectionIdentifierLookupTable;
  if (favoredApplicationWidgetCollectionForApplicationWidgetCollectionIdentifierLookupTable)
  {
    [(NSMapTable *)favoredApplicationWidgetCollectionForApplicationWidgetCollectionIdentifierLookupTable removeAllObjects];
  }

  else
  {
    strongToWeakObjectsMapTable = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
    v9 = self->_favoredApplicationWidgetCollectionForApplicationWidgetCollectionIdentifierLookupTable;
    self->_favoredApplicationWidgetCollectionForApplicationWidgetCollectionIdentifierLookupTable = strongToWeakObjectsMapTable;
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __74__SBHAddWidgetSheetViewController_setFavoredApplicationWidgetCollections___block_invoke;
  v10[3] = &unk_1E808ABA8;
  v10[4] = self;
  [collectionsCopy enumerateObjectsUsingBlock:v10];
}

void __74__SBHAddWidgetSheetViewController_setFavoredApplicationWidgetCollections___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 1632);
  v3 = a2;
  v4 = [v3 collectionIdentifier];
  [v2 setObject:v3 forKey:v4];
}

- (void)setDisfavoredApplicationWidgetCollections:(id)collections
{
  v13 = *MEMORY[0x1E69E9840];
  collectionsCopy = collections;
  v6 = SBLogAddWidgetSheet();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = collectionsCopy;
    _os_log_impl(&dword_1BEB18000, v6, OS_LOG_TYPE_DEFAULT, "setDisFavoredApplicationWidgetCollections:%@", buf, 0xCu);
  }

  objc_storeStrong(&self->_disfavoredApplicationWidgetCollections, collections);
  disfavoredApplicationWidgetCollectionForApplicationWidgetCollectionIdentifierLookupTable = self->_disfavoredApplicationWidgetCollectionForApplicationWidgetCollectionIdentifierLookupTable;
  if (disfavoredApplicationWidgetCollectionForApplicationWidgetCollectionIdentifierLookupTable)
  {
    [(NSMapTable *)disfavoredApplicationWidgetCollectionForApplicationWidgetCollectionIdentifierLookupTable removeAllObjects];
  }

  else
  {
    strongToWeakObjectsMapTable = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
    v9 = self->_disfavoredApplicationWidgetCollectionForApplicationWidgetCollectionIdentifierLookupTable;
    self->_disfavoredApplicationWidgetCollectionForApplicationWidgetCollectionIdentifierLookupTable = strongToWeakObjectsMapTable;
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __77__SBHAddWidgetSheetViewController_setDisfavoredApplicationWidgetCollections___block_invoke;
  v10[3] = &unk_1E808ABA8;
  v10[4] = self;
  [collectionsCopy enumerateObjectsUsingBlock:v10];
}

void __77__SBHAddWidgetSheetViewController_setDisfavoredApplicationWidgetCollections___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 1640);
  v3 = a2;
  v4 = [v3 collectionIdentifier];
  [v2 setObject:v3 forKey:v4];
}

- (void)setCustomApplicationWidgetCollections:(id)collections
{
  collectionsCopy = collections;
  customApplicationWidgetCollections = self->_customApplicationWidgetCollections;
  objc_storeStrong(&self->_customApplicationWidgetCollections, collections);
  customApplicationWidgetCollectionForApplicationWidgetCollectionIdentifierLookupTable = self->_customApplicationWidgetCollectionForApplicationWidgetCollectionIdentifierLookupTable;
  if (customApplicationWidgetCollectionForApplicationWidgetCollectionIdentifierLookupTable)
  {
    [(NSMapTable *)customApplicationWidgetCollectionForApplicationWidgetCollectionIdentifierLookupTable removeAllObjects];
  }

  else
  {
    strongToWeakObjectsMapTable = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
    v9 = self->_customApplicationWidgetCollectionForApplicationWidgetCollectionIdentifierLookupTable;
    self->_customApplicationWidgetCollectionForApplicationWidgetCollectionIdentifierLookupTable = strongToWeakObjectsMapTable;
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __73__SBHAddWidgetSheetViewController_setCustomApplicationWidgetCollections___block_invoke;
  v10[3] = &unk_1E808ABA8;
  v10[4] = self;
  [collectionsCopy enumerateObjectsUsingBlock:v10];
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
    concurrent = [MEMORY[0x1E698E698] concurrent];
    v6 = [concurrent serviceClass:25];

    v7 = BSDispatchQueueCreate();
    v8 = self->_applicationWidgetCollectionIconLoadingQueue;
    self->_applicationWidgetCollectionIconLoadingQueue = v7;

    v3 = self->_applicationWidgetCollectionIconLoadingQueue;
  }

  return v3;
}

- (void)setGalleryLayoutSize:(unint64_t)size
{
  if (self->_galleryLayoutSize != size)
  {
    self->_galleryLayoutSize = size;
    if ([(SBHAddWidgetSheetViewController *)self _shouldShowGallery]&& ![(SBHAddWidgetSheetViewController *)self shouldShowGalleryOnly])
    {
      [(SBHAddWidgetSheetViewController *)self _reloadData];
    }

    else
    {
      _suggestedItems = [(SBHAddWidgetSheetViewController *)self _suggestedItems];
      [(SBHAddWidgetSheetViewController *)self _makeGalleryItemsFromHomeScreenItems:_suggestedItems];
    }

    _presentedGalleryViewController = [(SBHAddWidgetSheetViewController *)self _presentedGalleryViewController];
    [_presentedGalleryViewController setGalleryLayoutSize:size];
  }
}

- (void)setWantsBottomAttachedPresentation:(BOOL)presentation
{
  if (self->_wantsBottomAttachedPresentation != presentation)
  {
    presentationCopy = presentation;
    self->_wantsBottomAttachedPresentation = presentation;
    [(SBHWidgetSearchController *)self->_searchController setShouldInsetContentForGrabber:?];
    sheetPresentationController = [(SBHAddWidgetSheetViewController *)self sheetPresentationController];
    [sheetPresentationController _setWantsBottomAttached:presentationCopy];
  }
}

- (void)loadView
{
  v69[4] = *MEMORY[0x1E69E9840];
  v67.receiver = self;
  v67.super_class = SBHAddWidgetSheetViewController;
  [(SBHAddWidgetSheetViewController *)&v67 loadView];
  view = [(SBHAddWidgetSheetViewController *)self view];
  configuration = [(SBHAddWidgetSheetViewController *)self configuration];
  addWidgetSheetStyle = [(SBHAddWidgetSheetViewControllerBase *)self addWidgetSheetStyle];
  if (addWidgetSheetStyle != 1)
  {
    _newBackgroundView = [(SBHAddWidgetSheetViewController *)self _newBackgroundView];
    backgroundView = self->_backgroundView;
    self->_backgroundView = _newBackgroundView;

    v5 = self->_backgroundView;
    [view bounds];
    [(MTMaterialView *)v5 setFrame:?];
    [(MTMaterialView *)self->_backgroundView setAutoresizingMask:18];
    [view addSubview:self->_backgroundView];
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
  [view bounds];
  v8 = [(_SBHAddWidgetSheetCollectionView *)v7 initWithFrame:v58 collectionViewLayout:?];
  collectionView = self->_collectionView;
  self->_collectionView = v8;

  [(_SBHAddWidgetSheetCollectionView *)self->_collectionView setDelegate:self];
  [(_SBHAddWidgetSheetCollectionView *)self->_collectionView setShowsVerticalScrollIndicator:0];
  [(_SBHAddWidgetSheetCollectionView *)self->_collectionView setDelaysContentTouches:0];
  [(_SBHAddWidgetSheetCollectionView *)self->_collectionView setAccessibilityIdentifier:@"add-sheet-collection-view"];
  -[_SBHAddWidgetSheetCollectionView setContainsInteractiveUIControls:](self->_collectionView, "setContainsInteractiveUIControls:", [configuration contentContainsInteractiveUIControls]);
  [(_SBHAddWidgetSheetCollectionView *)self->_collectionView _setPocketsEnabled:[(SBHAddWidgetSheetViewController *)self _wantsPocketSupressed]^ 1];
  if ([configuration wantsGlassGroupAppliedToGalleryContents])
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
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [(_SBHAddWidgetSheetCollectionView *)v14 setBackgroundColor:clearColor];

  [(_SBHAddWidgetSheetCollectionView *)self->_collectionView setKeyboardDismissMode:2];
  [(_SBHAddWidgetSheetCollectionView *)self->_collectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:@"kSBHAddWidgetSheetGalleryCellReuseIdentifier"];
  [(_SBHAddWidgetSheetCollectionView *)self->_collectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:@"kSBHAddWidgetSheetViewControllerCollectionViewReuseIdentifier"];
  [(_SBHAddWidgetSheetCollectionView *)self->_collectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:@"kSBHAddWidgetSheetViewControllerListCellReuseIdentifier"];
  [view addSubview:self->_collectionView];
  v16 = objc_alloc_init(_SBHAddWidgetSheetGalleryWrapperView);
  wrapperView = self->_wrapperView;
  self->_wrapperView = v16;

  [(_SBHAddWidgetSheetGalleryWrapperView *)self->_wrapperView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(_SBHAddWidgetSheetGalleryWrapperView *)self->_wrapperView setContentView:self->_collectionView];
  [view addSubview:self->_wrapperView];
  leadingAnchor = [(_SBHAddWidgetSheetGalleryWrapperView *)self->_wrapperView leadingAnchor];
  safeAreaLayoutGuide = [view safeAreaLayoutGuide];
  leadingAnchor2 = [safeAreaLayoutGuide leadingAnchor];
  v53 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v69[0] = v53;
  trailingAnchor = [(_SBHAddWidgetSheetGalleryWrapperView *)self->_wrapperView trailingAnchor];
  safeAreaLayoutGuide2 = [view safeAreaLayoutGuide];
  trailingAnchor2 = [safeAreaLayoutGuide2 trailingAnchor];
  v19 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v69[1] = v19;
  topAnchor = [(_SBHAddWidgetSheetGalleryWrapperView *)self->_wrapperView topAnchor];
  topAnchor2 = [view topAnchor];
  v22 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v69[2] = v22;
  bottomAnchor = [(_SBHAddWidgetSheetGalleryWrapperView *)self->_wrapperView bottomAnchor];
  bottomAnchor2 = [view bottomAnchor];
  v25 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v69[3] = v25;
  v49 = [MEMORY[0x1E695DEC8] arrayWithObjects:v69 count:4];

  [MEMORY[0x1E696ACD8] activateConstraints:v49];
  if (addWidgetSheetStyle != 1)
  {
    searchPlaceholderText = [configuration searchPlaceholderText];
    v27 = searchPlaceholderText;
    if (searchPlaceholderText)
    {
      v28 = searchPlaceholderText;
    }

    else
    {
      v29 = SBHBundle();
      v28 = [v29 localizedStringForKey:@"WIDGET_ADD_SHEET_SEARCH_PLACEHOLDER" value:&stru_1F3D472A8 table:@"SpringBoardHome"];
    }

    v30 = [[SBHWidgetSearchController alloc] initWithAddWidgetSheetStyle:addWidgetSheetStyle placeholderText:v28];
    searchController = self->_searchController;
    self->_searchController = v30;

    [(SBHWidgetSearchController *)self->_searchController setObscuresBackgroundDuringPresentation:0];
    [(SBHWidgetSearchController *)self->_searchController setDelegate:self];
    [(SBHWidgetSearchController *)self->_searchController setSearchResultsUpdater:self];
    [(SBHWidgetSearchController *)self->_searchController setShouldInsetContentForGrabber:self->_wantsBottomAttachedPresentation];
    -[SBHWidgetSearchController setApplicationCellIncludesGalleryListView:](self->_searchController, "setApplicationCellIncludesGalleryListView:", [configuration applicationCellIncludesGalleryListView]);
    v32 = self->_searchController;
    listLayoutProvider = [configuration listLayoutProvider];
    [(SBHWidgetSearchController *)v32 setListLayoutProvider:listLayoutProvider];

    v34 = self->_searchController;
    gridSizeClassForContentWidth = [configuration gridSizeClassForContentWidth];
    [(SBHWidgetSearchController *)v34 setWidthDefiningGridSizeClass:gridSizeClassForContentWidth];

    searchBar = [(SBHWidgetSearchController *)self->_searchController searchBar];
    [(SBHAddWidgetSheetViewController *)self _updateSearchBarContentInsets];
    [searchBar sizeToFit];
    searchTintColor = [configuration searchTintColor];
    if (searchTintColor)
    {
      [searchBar setTintColor:searchTintColor];
    }

    [(SBHAddWidgetSheetViewController *)self _updateSearchBarOverrideUserInterfaceStyle];
    v38 = [objc_alloc(MEMORY[0x1E69DD6C8]) initWithScrollView:self->_collectionView edge:1 style:1];
    searchField = [searchBar searchField];
    [searchField addInteraction:v38];

    [view addSubview:searchBar];
    [(SBHAddWidgetSheetViewController *)self _updateCollectionViewInsets];
    v40 = [MEMORY[0x1E69D3FC0] configureGradientMaskForFeatherBlurRecipe:4 onContentView:self->_collectionView];
    searchBarGradientMaskLayers = self->_searchBarGradientMaskLayers;
    self->_searchBarGradientMaskLayers = v40;

    [(SBHAddWidgetSheetViewController *)self _layoutSearchBarGradientMaskLayers];
  }

  _materialViewForVisualStyling = [(SBHAddWidgetSheetViewController *)self _materialViewForVisualStyling];
  v43 = [_materialViewForVisualStyling visualStylingProviderForCategory:2];

  searchBarTextFieldBackgroundView = [(SBHWidgetSearchController *)self->_searchController searchBarTextFieldBackgroundView];
  [v43 automaticallyUpdateView:searchBarTextFieldBackgroundView withStyle:2];

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
  configuration = [(SBHAddWidgetSheetViewController *)self configuration];
  v3 = configuration;
  if (configuration)
  {
    backgroundMaterial = [configuration backgroundMaterial];
    if (backgroundMaterial > 2)
    {
      v5 = 0;
    }

    else
    {
      v5 = qword_1BEE858C0[backgroundMaterial];
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

- (void)_contentSizeCategoryDidChange:(id)change
{
  collectionView = self->_collectionView;
  changeCopy = change;
  [(_SBHAddWidgetSheetCollectionView *)collectionView contentInset];
  v7 = v6;
  [(_SBHAddWidgetSheetCollectionView *)self->_collectionView contentOffset];
  v9 = v8;
  _effectiveSearchController = [(SBHAddWidgetSheetViewController *)self _effectiveSearchController];
  [_effectiveSearchController _contentSizeCategoryDidChange:changeCopy];

  searchBar = [_effectiveSearchController searchBar];
  [searchBar sizeToFit];
  [searchBar layoutIfNeeded];
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
    selfCopy = self;
    traitCollection = [($C48D5C44E1E4BC3B38DCA2BDA7A0443F *)self traitCollection];
    [traitCollection displayScale];
    v8 = v7;

    configuration = [($C48D5C44E1E4BC3B38DCA2BDA7A0443F *)selfCopy configuration];
    applicationCellIncludesGalleryListView = [configuration applicationCellIncludesGalleryListView];

    if (applicationCellIncludesGalleryListView)
    {
      SBHAddWidgetSheetListViewIconMetricsForScale(v13, v8);
LABEL_8:
      v11 = v13[1];
      p_var1->size = v13[0];
      *&p_var1->scale = v11;
      p_var1[1].size.width = v14;
      goto LABEL_9;
    }

    self = [($C48D5C44E1E4BC3B38DCA2BDA7A0443F *)selfCopy addWidgetSheetStyle];
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

- (void)viewWillAppear:(BOOL)appear
{
  v11.receiver = self;
  v11.super_class = SBHAddWidgetSheetViewController;
  [(SBHAddWidgetSheetViewController *)&v11 viewWillAppear:appear];
  delegate = [(SBHAddWidgetSheetViewControllerBase *)self delegate];
  [delegate addWidgetSheetViewControllerWillAppear:self];

  _suggestedItems = [(SBHAddWidgetSheetViewController *)self _suggestedItems];
  if ([(SBHAddWidgetSheetViewController *)self _canShowGallery]&& !self->_galleryItems)
  {
    [(SBHAddWidgetSheetViewController *)self _makeGalleryItemsFromHomeScreenItems:_suggestedItems];
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__keyboardWillShow_ name:*MEMORY[0x1E69DE080] object:0];

  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel__keyboardWillDismiss_ name:*MEMORY[0x1E69DE078] object:0];

  navigationItem = [(SBHAddWidgetSheetViewController *)self navigationItem];
  [navigationItem _setNavigationBarHidden:{-[SBHAddWidgetSheetViewController _wantsNavigationBarHidden](self, "_wantsNavigationBarHidden")}];

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

- (void)viewDidAppear:(BOOL)appear
{
  v7.receiver = self;
  v7.super_class = SBHAddWidgetSheetViewController;
  [(SBHAddWidgetSheetViewController *)&v7 viewDidAppear:appear];
  delegate = [(SBHAddWidgetSheetViewControllerBase *)self delegate];
  [delegate addWidgetSheetViewControllerDidAppear:self];

  if (!__sb__runningInSpringBoard())
  {
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if (userInterfaceIdiom)
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

- (void)viewWillDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = SBHAddWidgetSheetViewController;
  [(SBHAddWidgetSheetViewController *)&v5 viewWillDisappear:disappear];
  delegate = [(SBHAddWidgetSheetViewControllerBase *)self delegate];
  [delegate addWidgetSheetViewControllerWillDisappear:self];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v8.receiver = self;
  v8.super_class = SBHAddWidgetSheetViewController;
  [(SBHAddWidgetSheetViewController *)&v8 viewDidDisappear:disappear];
  delegate = [(SBHAddWidgetSheetViewControllerBase *)self delegate];
  [delegate addWidgetSheetViewControllerDidDisappear:self];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69DE080] object:0];

  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter2 removeObserver:self name:*MEMORY[0x1E69DE078] object:0];

  _effectiveSearchController = [(SBHAddWidgetSheetViewController *)self _effectiveSearchController];
  [_effectiveSearchController updateSearchBarBackgroundForScrollDistance:self forClient:2.22507386e-308];

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
  searchBar = [(SBHWidgetSearchController *)self->_searchController searchBar];
  [searchBar layoutIfNeeded];

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
  searchBarBackgroundView = [(SBHWidgetSearchController *)self->_searchController searchBarBackgroundView];
  [searchBarBackgroundView frame];
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

- (void)didMoveToParentViewController:(id)controller
{
  v10.receiver = self;
  v10.super_class = SBHAddWidgetSheetViewController;
  [(SBHAddWidgetSheetViewController *)&v10 didMoveToParentViewController:controller];
  if ([(SBHAddWidgetSheetViewControllerBase *)self addWidgetSheetStyle]== 1 && [(SBHAddWidgetSheetViewController *)self shouldShowGalleryOnly])
  {
    splitViewController = [(SBHAddWidgetSheetViewController *)self splitViewController];
    view = [splitViewController view];

    v6 = self->_collectionView;
    superview = v6;
    if (v6)
    {
      v8 = v6 == view;
    }

    else
    {
      v8 = 1;
    }

    if (!v8)
    {
      do
      {
        v9 = superview;
        [(_SBHAddWidgetSheetCollectionView *)superview setClipsToBounds:0];
        superview = [(_SBHAddWidgetSheetCollectionView *)superview superview];
      }

      while (superview && superview != view);
    }
  }
}

- (void)setGalleryItems:(id)items
{
  itemsCopy = items;
  if (self->_galleryItems != itemsCopy)
  {
    galleryIdentifierToGalleryItemLookupTable = self->_galleryIdentifierToGalleryItemLookupTable;
    if (galleryIdentifierToGalleryItemLookupTable)
    {
      [(NSMapTable *)galleryIdentifierToGalleryItemLookupTable removeAllObjects];
    }

    else
    {
      strongToWeakObjectsMapTable = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
      v7 = self->_galleryIdentifierToGalleryItemLookupTable;
      self->_galleryIdentifierToGalleryItemLookupTable = strongToWeakObjectsMapTable;
    }

    v8 = (itemsCopy | self->_galleryItems) != 0;
    if (itemsCopy)
    {
      v9 = [(NSArray *)itemsCopy copy];
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

- (void)setBarSwipeViewController:(id)controller
{
  controllerCopy = controller;
  v6 = controllerCopy;
  if (self->_barSwipeViewController != controllerCopy)
  {
    v7 = controllerCopy;
    [(SBHAddWidgetSheetViewController *)self bs_removeChildViewController:?];
    objc_storeStrong(&self->_barSwipeViewController, controller);
    controllerCopy = [(SBHAddWidgetSheetViewController *)self isViewLoaded];
    v6 = v7;
    if (controllerCopy)
    {
      controllerCopy = [(SBHAddWidgetSheetViewController *)self _addBarSwipeView];
      v6 = v7;
    }
  }

  MEMORY[0x1EEE66BB8](controllerCopy, v6);
}

- (void)_addBarSwipeView
{
  [(SBHAddWidgetSheetViewController *)self bs_addChildViewController:self->_barSwipeViewController];
  view = [(UIViewController *)self->_barSwipeViewController view];
  view2 = [(SBHAddWidgetSheetViewController *)self view];
  [view2 bounds];
  [view setFrame:?];

  [view setUserInteractionEnabled:0];
  [view setAutoresizingMask:18];
}

- (void)setExternalSearchController:(id)controller
{
  controllerCopy = controller;
  if (self->_externalSearchController != controllerCopy)
  {
    v6 = controllerCopy;
    objc_storeStrong(&self->_externalSearchController, controller);
    [(SBHAddWidgetSheetViewController *)self _updateSearchBarOverrideUserInterfaceStyle];
    controllerCopy = v6;
  }
}

- (void)closeButtonTapped:(id)tapped
{
  delegate = [(SBHAddWidgetSheetViewControllerBase *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate addWidgetSheetViewControllerDidCancel:self];
  }
}

- (void)_backgroundTapped:(id)tapped
{
  collectionView = self->_collectionView;
  [tapped locationInView:collectionView];
  v5 = [(_SBHAddWidgetSheetCollectionView *)collectionView indexPathForItemAtPoint:?];

  if (!v5)
  {
    searchController = [(SBHAddWidgetSheetViewController *)self searchController];
    isActive = [searchController isActive];

    if (isActive)
    {
      searchController2 = [(SBHAddWidgetSheetViewController *)self searchController];
      [searchController2 setActive:0];
    }
  }
}

- (void)_keyboardWillShow:(id)show
{
  userInfo = [show userInfo];
  view = [(SBHAddWidgetSheetViewController *)self view];
  v5 = [userInfo valueForKey:*MEMORY[0x1E69DDFA0]];
  [v5 CGRectValue];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  view2 = [(SBHAddWidgetSheetViewController *)self view];
  [view2 convertRect:0 fromView:{v7, v9, v11, v13}];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  [view bounds];
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

- (void)_keyboardWillDismiss:(id)dismiss
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
  _effectiveSearchController = [(SBHAddWidgetSheetViewController *)self _effectiveSearchController];
  [_effectiveSearchController updateSearchBarBackgroundForScrollDistance:self forClient:v4 + v6];

  [(SBHAddWidgetSheetViewController *)self _layoutSearchBarGradientMaskLayers];
  _effectiveSearchController2 = [(SBHAddWidgetSheetViewController *)self _effectiveSearchController];
  searchBar = [_effectiveSearchController2 searchBar];
  [searchBar layoutIfNeeded];
}

- (void)_setGrabberTopSpacingForStyleCollapsed
{
  if (![(SBHAddWidgetSheetViewControllerBase *)self addWidgetSheetStyle])
  {
    sheetPresentationController = [(SBHAddWidgetSheetViewController *)self sheetPresentationController];
    [(SBHWidgetSearchController *)self->_searchController grabberTopSpacing];
    [sheetPresentationController _setGrabberTopSpacing:?];
  }
}

- (void)scrollViewDidScroll:(id)scroll
{
  if (([MEMORY[0x1E69DD250] _isInAnimationBlock] & 1) == 0)
  {

    [(SBHAddWidgetSheetViewController *)self _relayoutSearchBarBackground];
  }
}

- (id)_generateSnapshotDiffedFromSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __71__SBHAddWidgetSheetViewController__generateSnapshotDiffedFromSnapshot___block_invoke;
  aBlock[3] = &unk_1E808AC90;
  v5 = snapshotCopy;
  v16 = v5;
  v6 = _Block_copy(aBlock);
  v7 = objc_alloc_init(MEMORY[0x1E69955A0]);
  v8 = 0;
  while (!v8)
  {
    if ([(SBHAddWidgetSheetViewController *)self _shouldShowGallery])
    {
      galleryItems = [(SBHAddWidgetSheetViewController *)self galleryItems];
      v6[2](v6, galleryItems, v7);
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
    _shouldShowCustomApplicationsSection = [(SBHAddWidgetSheetViewController *)self _shouldShowCustomApplicationsSection];
    if (_shouldShowCustomApplicationsSection)
    {
      __71__SBHAddWidgetSheetViewController__generateSnapshotDiffedFromSnapshot___block_invoke_5(_shouldShowCustomApplicationsSection, self->_customApplicationWidgetCollections, v7);
    }

    goto LABEL_14;
  }

  if (v8 == 2)
  {
    galleryItems = [(SBHAddWidgetSheetViewController *)self applicationWidgetCollectionsToUse];
    _shouldShowSuggestionsListItem = [(SBHAddWidgetSheetViewController *)self _shouldShowSuggestionsListItem];
    if (_shouldShowSuggestionsListItem)
    {
      __71__SBHAddWidgetSheetViewController__generateSnapshotDiffedFromSnapshot___block_invoke_4(_shouldShowSuggestionsListItem, v7);
    }

    __71__SBHAddWidgetSheetViewController__generateSnapshotDiffedFromSnapshot___block_invoke_7(_shouldShowSuggestionsListItem, galleryItems, v7);
    goto LABEL_13;
  }

  _shouldShowDisfavoredSection = [(SBHAddWidgetSheetViewController *)self _shouldShowDisfavoredSection];
  if (_shouldShowDisfavoredSection)
  {
    __71__SBHAddWidgetSheetViewController__generateSnapshotDiffedFromSnapshot___block_invoke_9(_shouldShowDisfavoredSection, v7);
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

- (void)_refreshData:(BOOL)data
{
  dataCopy = data;
  snapshot = [(UICollectionViewDiffableDataSource *)self->_diffableDataSource snapshot];
  v6 = [(SBHAddWidgetSheetViewController *)self _generateSnapshotDiffedFromSnapshot:snapshot];

  [(UICollectionViewDiffableDataSource *)self->_diffableDataSource applySnapshot:v6 animatingDifferences:dataCopy];
}

- (void)_reloadData:(BOOL)data
{
  v7 = [(SBHAddWidgetSheetViewController *)self _generateSnapshotDiffedFromSnapshot:0];
  if (data || (-[UICollectionViewDiffableDataSource snapshot](self->_diffableDataSource, "snapshot"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v7 isEqual:v5], v5, (v6 & 1) == 0))
  {
    [(UICollectionViewDiffableDataSource *)self->_diffableDataSource applySnapshotUsingReloadData:v7];
  }
}

- (unint64_t)_sectionIndexForSection:(unint64_t)section
{
  _canShowGallery = [(SBHAddWidgetSheetViewController *)self _canShowGallery];
  _shouldShowCustomApplicationsSection = [(SBHAddWidgetSheetViewController *)self _shouldShowCustomApplicationsSection];
  if (_canShowGallery && _shouldShowCustomApplicationsSection)
  {
    return section;
  }

  if (!_canShowGallery && !_shouldShowCustomApplicationsSection)
  {
    section -= 2;
    return section;
  }

  if (_shouldShowCustomApplicationsSection)
  {
    return --section;
  }

  if (section)
  {
    return section - 1;
  }

  else
  {
    return 0;
  }
}

- (unint64_t)_applicationWidgetCollectionIndexForItemIndex:(unint64_t)index
{
  _shouldShowSuggestionsListItem = [(SBHAddWidgetSheetViewController *)self _shouldShowSuggestionsListItem];
  v5 = index - 1;
  if (!index)
  {
    v5 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (_shouldShowSuggestionsListItem)
  {
    return v5;
  }

  else
  {
    return index;
  }
}

- (BOOL)_shouldAnimateChanges
{
  isViewLoaded = [(SBHAddWidgetSheetViewController *)self isViewLoaded];
  if (isViewLoaded)
  {

    LOBYTE(isViewLoaded) = [(SBHAddWidgetSheetViewController *)self bs_isAppearingOrAppeared];
  }

  return isViewLoaded;
}

- (id)_iconImageForApplicationWidgetCollection:(id)collection
{
  collectionCopy = collection;
  [(SBHAddWidgetSheetViewController *)self sheetIconMetrics];
  collectionView = [(SBHAddWidgetSheetViewController *)self collectionView];
  traitCollection = [collectionView traitCollection];

  customImage = [collectionCopy customImage];

  if (customImage)
  {
    customImage2 = [collectionCopy customImage];
  }

  else
  {
    typeIdentifier = [collectionCopy typeIdentifier];

    if (typeIdentifier)
    {
      v10 = objc_alloc(MEMORY[0x1E69A8A00]);
      typeIdentifier2 = [collectionCopy typeIdentifier];
      icon = [v10 initWithType:typeIdentifier2];

      applicationBundleID = [objc_alloc(MEMORY[0x1E69A8A30]) initWithSize:0.0 scale:{0.0, 0.0}];
      SBHModifyImageDescriptorWithTraitCollection(applicationBundleID, traitCollection, 0);
      v14 = SBHIconServicesImageForDescriptor(icon, applicationBundleID, 0);
      v15 = [MEMORY[0x1E69DD1B8] sbh_iconImageAppearanceFromTraitCollection:traitCollection];
      customImage2 = SBHGetIconImageFromIconServicesImage(v14);
    }

    else
    {
      icon = [collectionCopy icon];
      applicationBundleID = [icon applicationBundleID];
      customImage2 = SBHGetApplicationIconImageWithTraitCollection(applicationBundleID, traitCollection, 0, 0.0, 0.0, 0.0);
    }
  }

  return customImage2;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path itemIdentifier:(id)identifier
{
  v126 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  pathCopy = path;
  identifierCopy = identifier;
  section = [pathCopy section];
  if (section != [(SBHAddWidgetSheetViewController *)self _sectionIndexForSection:0])
  {
    if (section != [(SBHAddWidgetSheetViewController *)self _sectionIndexForSection:2]&& section != [(SBHAddWidgetSheetViewController *)self _sectionIndexForSection:3]&& section != [(SBHAddWidgetSheetViewController *)self _sectionIndexForSection:1])
    {
      v12 = 0;
      goto LABEL_63;
    }

    v124 = 0.0;
    v122 = 0u;
    v123 = 0u;
    [(SBHAddWidgetSheetViewController *)self sheetIconMetrics];
    configuration = [(SBHAddWidgetSheetViewController *)self configuration];
    if ([configuration applicationCellIncludesGalleryListView])
    {
      v110 = configuration;
      v22 = [viewCopy dequeueReusableCellWithReuseIdentifier:@"kSBHAddWidgetSheetViewControllerListCellReuseIdentifier" forIndexPath:pathCopy];
      v23 = *(&v122 + 1);
      v24 = v123;
      [v22 setIconImageInfo:{*(&v122 + 1), v123, v124}];
      v107 = identifierCopy;
      if (section == [(SBHAddWidgetSheetViewController *)self _sectionIndexForSection:1])
      {
        v25 = [(NSMapTable *)self->_customApplicationWidgetCollectionForApplicationWidgetCollectionIdentifierLookupTable objectForKey:identifierCopy];
        displayName = [v25 displayName];
        v27 = [displayName length];

        if (!v27)
        {
          [v22 setWantsHeaderView:0];
        }
      }

      else
      {
        v25 = [(NSMapTable *)self->_favoredApplicationWidgetCollectionForApplicationWidgetCollectionIdentifierLookupTable objectForKey:identifierCopy];
      }

      traitCollection = [(SBHAddWidgetSheetViewController *)self traitCollection];
      userInterfaceStyle = [traitCollection userInterfaceStyle];

      v39 = [[SBHIconImageAppearance alloc] initWithAppearanceType:userInterfaceStyle == 2];
      placeholderIcon = [MEMORY[0x1E69A8A00] placeholderIcon];
      v41 = [objc_alloc(MEMORY[0x1E69A8A30]) initWithSize:v23 scale:v24];
      v42 = SBHIconServicesOptionsForImageOptions(1);
      v104 = v41;
      v105 = placeholderIcon;
      v102 = SBHIconServicesImageForDescriptor(placeholderIcon, v41, v42);
      v106 = v39;
      v103 = SBHGetIconImageFromIconServicesImage(v102);
      [v22 setIconImage:?];
      collectionIdentifier = [v25 collectionIdentifier];
      [v22 setIdentifier:collectionIdentifier];
      applicationWidgetCollectionIconLoadingQueue = [(SBHAddWidgetSheetViewController *)self applicationWidgetCollectionIconLoadingQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __88__SBHAddWidgetSheetViewController_collectionView_cellForItemAtIndexPath_itemIdentifier___block_invoke;
      block[3] = &unk_1E808ACD8;
      block[4] = self;
      v45 = v25;
      v117 = v45;
      v109 = viewCopy;
      v99 = viewCopy;
      v118 = v99;
      v93 = pathCopy;
      v119 = v93;
      v46 = collectionIdentifier;
      v47 = v45;
      v100 = v46;
      v120 = v46;
      v48 = v22;
      v121 = v48;
      v101 = applicationWidgetCollectionIconLoadingQueue;
      dispatch_async(applicationWidgetCollectionIconLoadingQueue, block);
      displayName2 = [v45 displayName];
      [v48 setTitle:displayName2];

      iconListView = [v48 iconListView];
      model = [iconListView model];
      v52 = model;
      if (iconListView)
      {
        v98 = iconListView;
        v111 = model;
        configuration = v110;
      }

      else
      {
        v94 = v48;
        v96 = v47;
        _listLayoutForWidgetSizing = [(SBHAddWidgetSheetViewController *)self _listLayoutForWidgetSizing];
        v58 = [_listLayoutForWidgetSizing numberOfColumnsForOrientation:1];
        v59 = [_listLayoutForWidgetSizing numberOfRowsForOrientation:1];
        configuration = v110;
        if (objc_opt_respondsToSelector())
        {
          iconGridSizeClassSizes = [_listLayoutForWidgetSizing iconGridSizeClassSizes];
        }

        else
        {
          iconGridSizeClassSizes = objc_alloc_init(SBHIconGridSizeClassSizeMap);
        }

        v66 = iconGridSizeClassSizes;
        v67 = [[SBIconListModel alloc] initWithFolder:0 gridSize:v58 | (v59 << 16) gridSizeClassSizes:iconGridSizeClassSizes];

        [(SBIconListModel *)v67 setIconLayoutBehavior:3];
        gridSizeClassDomain = [v110 gridSizeClassDomain];
        v111 = v67;
        [(SBIconListModel *)v67 setGridSizeClassDomain:gridSizeClassDomain];

        if (objc_opt_respondsToSelector())
        {
          supportedIconGridSizeClasses = [_listLayoutForWidgetSizing supportedIconGridSizeClasses];
          [(SBIconListModel *)v67 setAllowedGridSizeClasses:supportedIconGridSizeClasses];
        }

        listViewClass = [v110 listViewClass];
        if (!listViewClass)
        {
          listViewClass = objc_opt_self();
        }

        v71 = [listViewClass alloc];
        listLayoutProvider = [(SBHAddWidgetSheetViewControllerBase *)self listLayoutProvider];
        iconViewProvider = [(SBHAddWidgetSheetViewControllerBase *)self iconViewProvider];
        v74 = [v71 initWithModel:v111 layoutProvider:listLayoutProvider iconLocation:@"SBIconLocationRoot" orientation:1 iconViewProvider:iconViewProvider];

        [v74 setIconViewConfigurationOptions:82];
        [v74 setIconSpacing:{SBHIconListLayoutListIconSpacingWithDefault(_listLayoutForWidgetSizing, 1, 12.0)}];
        v98 = v74;
        [v94 setIconListView:v74];

        v47 = v96;
        v48 = v94;
      }

      v75 = objc_alloc_init(MEMORY[0x1E695DF70]);
      delegate = [(SBHAddWidgetSheetViewControllerBase *)self delegate];
      filteredWidgetDescriptors = [v47 filteredWidgetDescriptors];
      if ([filteredWidgetDescriptors count])
      {
        [v47 filteredWidgetDescriptors];
      }

      else
      {
        [v47 widgetDescriptors];
      }
      v78 = ;

      v108 = pathCopy;
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

              v84 = [delegate addWidgetSheetViewController:self widgetIconForGalleryItem:*(*(&v112 + 1) + 8 * i)];
              [v75 bs_safeAddObject:v84];
            }

            v81 = [v79 countByEnumeratingWithState:&v112 objects:v125 count:16];
          }

          while (v81);
        }

        configuration = v110;
        v48 = v95;
        v47 = v97;
      }

      [v111 setIcons:v75];
      v85 = [v99 numberOfSections] - 1;
      v86 = [v99 numberOfItemsInSection:section];
      v87 = section != v85 || [v93 item] != v86 - 1;
      [v48 setSeparatorVisible:v87];
      visualStylingProvider = [v48 visualStylingProvider];
      if (!visualStylingProvider)
      {
        [(SBHAddWidgetSheetViewController *)self _materialViewForVisualStyling];
        v90 = v89 = v47;
        visualStylingProvider = [v90 visualStylingProviderForCategory:1];

        v47 = v89;
        [v48 setVisualStylingProvider:visualStylingProvider];
      }

      v12 = v48;

      pathCopy = v108;
      viewCopy = v109;
      identifierCopy = v107;
LABEL_62:

      goto LABEL_63;
    }

    v12 = [viewCopy dequeueReusableCellWithReuseIdentifier:@"kSBHAddWidgetSheetViewControllerCollectionViewReuseIdentifier" forIndexPath:pathCopy];
    addWidgetSheetStyle = [(SBHAddWidgetSheetViewControllerBase *)self addWidgetSheetStyle];
    [v12 setAddWidgetSheetStyle:addWidgetSheetStyle];
    [v12 setSeparatorAlignedToLabels:1];
    leading = 12.0;
    trailing = 12.0;
    if (!addWidgetSheetStyle)
    {
      leading = self->_contentInsets.leading;
      trailing = self->_contentInsets.trailing;
    }

    [v12 setContentInsets:{12.0, leading, 12.0, trailing}];
    [v12 setContentHorizontalSpacing:*&v122];
    [v12 setSeparatorVisible:{objc_msgSend(pathCopy, "item") != objc_msgSend(viewCopy, "numberOfItemsInSection:", section) - 1}];
    [v12 setIconImageInfo:{*(&v122 + 1), v123, v124}];
    if (section == [(SBHAddWidgetSheetViewController *)self _sectionIndexForSection:2])
    {
      if ([identifierCopy isEqual:@"kSBHAddWidgetSheetGallerySuggestionsItemIdentifier"])
      {
        textLabel = [v12 textLabel];
        v32 = SBHBundle();
        v33 = [v32 localizedStringForKey:@"ADD_WIDGET_SHEET_SUGGESTIONS_CELL_LABEL" value:&stru_1F3D472A8 table:@"SpringBoardHome"];
        [textLabel setText:v33];

        imageView = [v12 imageView];
        v35 = MEMORY[0x1E69DCAB8];
        v36 = @"rectangle.3.offgrid";
LABEL_27:
        v56 = [v35 systemImageNamed:v36];
        [imageView setImage:v56];

        [v12 setImageViewRequiresVisualStyling:1];
        goto LABEL_34;
      }

      v61 = 1632;
    }

    else
    {
      if (section != [(SBHAddWidgetSheetViewController *)self _sectionIndexForSection:3])
      {
        goto LABEL_34;
      }

      if ([identifierCopy isEqual:@"kSBHAddWidgetSheetOtherItemIdentifier"])
      {
        textLabel2 = [v12 textLabel];
        v54 = SBHBundle();
        v55 = [v54 localizedStringForKey:@"ADD_WIDGET_SHEET_OTHER_CELL_LABEL" value:&stru_1F3D472A8 table:@"SpringBoardHome"];
        [textLabel2 setText:v55];

        imageView = [v12 imageView];
        v35 = MEMORY[0x1E69DCAB8];
        v36 = @"ellipsis";
        goto LABEL_27;
      }

      if ([identifierCopy isEqual:@"kSBHAddWidgetSheetOtherDescriptionItemIdentifier"])
      {
        _otherDescriptionLabel = [(SBHAddWidgetSheetViewController *)self _otherDescriptionLabel];
        [v12 setDetailText:_otherDescriptionLabel];
        imageView2 = [v12 imageView];
        [imageView2 setHidden:1];

        [v12 setUserInteractionEnabled:0];
        goto LABEL_33;
      }

      v61 = 1640;
    }

    _otherDescriptionLabel = [*(&self->super.super.super.super.isa + v61) objectForKey:identifierCopy];
    appCellConfigurator = [(SBHAddWidgetSheetViewControllerBase *)self appCellConfigurator];
    [appCellConfigurator configureCell:v12 withApplicationWidgetCollection:_otherDescriptionLabel];

    [v12 setImageViewRequiresVisualStyling:0];
LABEL_33:

LABEL_34:
    visualStylingProvider2 = [v12 visualStylingProvider];
    v47 = visualStylingProvider2;
    if (addWidgetSheetStyle == 1 && !visualStylingProvider2)
    {
      _materialViewForVisualStyling = [(SBHAddWidgetSheetViewController *)self _materialViewForVisualStyling];
      v47 = [_materialViewForVisualStyling visualStylingProviderForCategory:1];

      [v12 setVisualStylingProvider:v47];
    }

    [v12 setFocusEffect:0];
    goto LABEL_62;
  }

  v12 = [viewCopy dequeueReusableCellWithReuseIdentifier:@"kSBHAddWidgetSheetGalleryCellReuseIdentifier" forIndexPath:pathCopy];
  identifierCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld/%@", objc_msgSend(pathCopy, "item"), identifierCopy];
  debugLabel = [v12 debugLabel];
  [debugLabel setText:identifierCopy];

  v15 = [(NSMapTable *)self->_galleryIdentifierToGalleryItemLookupTable objectForKey:identifierCopy];
  widgetWrapperViewController = [v12 widgetWrapperViewController];

  if (widgetWrapperViewController != v15)
  {
    parentViewController = [v15 parentViewController];
    if (parentViewController == self)
    {
      view = [v15 view];
      [view removeFromSuperview];

      [v15 removeFromParentViewController];
      parentViewController = 0;
    }

    [v12 setWidgetWrapperViewController:v15];
    if (parentViewController != self)
    {
      widgetWrapperViewController2 = [v12 widgetWrapperViewController];
      contentView = [v12 contentView];
      [(SBHAddWidgetSheetViewController *)self bs_addChildViewController:widgetWrapperViewController2 withSuperview:contentView];
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
  applicationWidgetCollections = [(SBHAddWidgetSheetViewController *)self applicationWidgetCollections];
  selfCopy = self;
  allowedWidgets = [(SBHAddWidgetSheetViewControllerBase *)self allowedWidgets];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = applicationWidgetCollections;
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
        widgetDescriptors = [v7 widgetDescriptors];
        v9 = [widgetDescriptors countByEnumeratingWithState:&v29 objects:v37 count:16];
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
                objc_enumerationMutation(widgetDescriptors);
              }

              v15 = *(*(&v29 + 1) + 8 * i);
              addWidgetSheetLocation = [(SBHAddWidgetSheetViewController *)selfCopy addWidgetSheetLocation];
              if (([v15 sbh_disfavoredSizeClassesForAddWidgetSheetLocation:addWidgetSheetLocation] & allowedWidgets) == 0)
              {
                goto LABEL_15;
              }

              if (!v11)
              {
                v11 = [v7 copy];
              }

              [v11 setDisfavored:1];
              if (([v15 sbh_favoredSizeClassesForAddWidgetSheetLocation:addWidgetSheetLocation] & allowedWidgets) == 0)
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

            v10 = [widgetDescriptors countByEnumeratingWithState:&v29 objects:v37 count:16];
          }

          while (v10);
        }

        else
        {
          v27 = 0;
          v11 = 0;
          v12 = 0;
        }

        widgetDescriptors2 = [v12 widgetDescriptors];
        v19 = [widgetDescriptors2 mutableCopy];

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

  [(SBHAddWidgetSheetViewController *)selfCopy setFavoredApplicationWidgetCollections:v24];
  [(SBHAddWidgetSheetViewController *)selfCopy setDisfavoredApplicationWidgetCollections:v5];
}

- (id)_otherDescriptionLabel
{
  addWidgetSheetLocation = [(SBHAddWidgetSheetViewController *)self addWidgetSheetLocation];
  if (addWidgetSheetLocation <= 1)
  {
    if (addWidgetSheetLocation)
    {
      if (addWidgetSheetLocation == 1)
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
      currentDevice = [MEMORY[0x1E69DC938] currentDevice];
      userInterfaceIdiom = [currentDevice userInterfaceIdiom];

      if (userInterfaceIdiom == 1)
      {
        goto LABEL_16;
      }
    }

    v3 = @"ADD_WIDGET_SHEET_OTHER_LOCATION_LABEL_IPHONE_HOME_SCREEN";
    goto LABEL_11;
  }

  v4 = @"ADD_WIDGET_SHEET_OTHER_LOCATION_LABEL_CARPLAY";
  if (addWidgetSheetLocation != 3)
  {
    v4 = 0;
  }

  if (addWidgetSheetLocation == 2)
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

- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  indexPathsForSelectedItems = [view indexPathsForSelectedItems];
  v7 = [indexPathsForSelectedItems containsObject:pathCopy];

  return v7 ^ 1;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  objc_storeStrong(&self->_lastSelectedIndexPath, path);
  section = [pathCopy section];
  if (section == [(SBHAddWidgetSheetViewController *)self _sectionIndexForSection:0])
  {
    [(SBHAddWidgetSheetViewController *)self _presentDetailSheetForGalleryCellAtIndexPath:pathCopy];
  }

  else
  {
    section2 = [pathCopy section];
    if (section2 == -[SBHAddWidgetSheetViewController _sectionIndexForSection:](self, "_sectionIndexForSection:", 2) || (v9 = [pathCopy section], v9 == -[SBHAddWidgetSheetViewController _sectionIndexForSection:](self, "_sectionIndexForSection:", 1)))
    {
      v10 = -[SBHAddWidgetSheetViewController _applicationWidgetCollectionIndexForItemIndex:](self, "_applicationWidgetCollectionIndexForItemIndex:", [pathCopy item]);
      configuration = [(SBHAddWidgetSheetViewController *)self configuration];
      applicationCellIncludesGalleryListView = [configuration applicationCellIncludesGalleryListView];

      if ((applicationCellIncludesGalleryListView & 1) == 0)
      {
        if (v10 == 0x7FFFFFFFFFFFFFFFLL)
        {
          [(SBHAddWidgetSheetViewController *)self _presentGalleryCell];
        }

        else
        {
          applicationWidgetCollectionsToUse = [(SBHAddWidgetSheetViewController *)self applicationWidgetCollectionsToUse];
          v17 = [applicationWidgetCollectionsToUse objectAtIndex:v10];
          [(SBHAddWidgetSheetViewController *)self _presentDetailSheetViewControllerForApplicationWidgetCollection:v17];
        }
      }
    }

    else
    {
      section3 = [pathCopy section];
      if (section3 == [(SBHAddWidgetSheetViewController *)self _sectionIndexForSection:3])
      {
        item = [pathCopy item];
        v15 = item - 2;
        if (item >= 2)
        {
          v18 = [(NSArray *)self->_disfavoredApplicationWidgetCollections objectAtIndex:v15];
          [(SBHAddWidgetSheetViewController *)self _presentDetailSheetViewControllerForApplicationWidgetCollection:v18];
        }

        else
        {
          [(SBHAddWidgetSheetViewController *)self _toggleShowingDisfavoredApplicationWidgetCollections];
          [viewCopy deselectItemAtIndexPath:pathCopy animated:1];
        }
      }
    }
  }
}

- (void)_presentGalleryCell
{
  delegate = [(SBHAddWidgetSheetViewControllerBase *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0 || ([delegate galleryViewControllerForAddWidgetSheetViewController:self], (v15 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v4 = [SBHAddWidgetSheetViewController alloc];
    listLayoutProvider = [(SBHAddWidgetSheetViewControllerBase *)self listLayoutProvider];
    iconViewProvider = [(SBHAddWidgetSheetViewControllerBase *)self iconViewProvider];
    allowedWidgets = [(SBHAddWidgetSheetViewControllerBase *)self allowedWidgets];
    v9 = v8;
    appCellConfigurator = [(SBHAddWidgetSheetViewControllerBase *)self appCellConfigurator];
    v15 = [(SBHAddWidgetSheetViewController *)v4 initWithListLayoutProvider:listLayoutProvider iconViewProvider:iconViewProvider allowedWidgets:allowedWidgets appCellConfigurator:v9 addWidgetSheetStyle:appCellConfigurator, [(SBHAddWidgetSheetViewControllerBase *)self addWidgetSheetStyle]];

    [(SBHAddWidgetSheetViewController *)v15 setAddWidgetSheetLocation:[(SBHAddWidgetSheetViewController *)self addWidgetSheetLocation]];
    [(SBHAddWidgetSheetViewControllerBase *)v15 setAddWidgetSheetWidgetBackgroundType:[(SBHAddWidgetSheetViewControllerBase *)self addWidgetSheetWidgetBackgroundType]];
    [(SBHAddWidgetSheetViewControllerBase *)v15 setAllowsFakeWidgets:[(SBHAddWidgetSheetViewControllerBase *)self allowsFakeWidgets]];
    [(SBHAddWidgetSheetViewController *)v15 setShouldShowGalleryOnly:1];
    [(SBHAddWidgetSheetViewControllerBase *)v15 setExternalBackgroundView:self->_backgroundView];
    [(SBHAddWidgetSheetViewController *)v15 setApplicationWidgetCollections:self->_favoredApplicationWidgetCollections];
    [(SBHAddWidgetSheetViewControllerBase *)v15 setDelegate:self];
    _suggestedItems = [(SBHAddWidgetSheetViewController *)self _suggestedItems];
    [(SBHAddWidgetSheetViewController *)v15 setSuggestedItems:_suggestedItems forGalleryLayoutSize:self->_galleryLayoutSize];

    externalSearchController = [(SBHAddWidgetSheetViewController *)self externalSearchController];
    [(SBHAddWidgetSheetViewController *)v15 setExternalSearchController:externalSearchController];

    view = [(SBHAddWidgetSheetViewController *)v15 view];
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [view setBackgroundColor:clearColor];

    [(SBHAddWidgetSheetViewController *)v15 setGalleryLayoutSize:self->_galleryLayoutSize];
  }

  [(SBHAddWidgetSheetViewController *)self _presentDetailViewController:v15 fromCell:0];
}

- (void)_toggleShowingDisfavoredApplicationWidgetCollections
{
  self->_isShowingDisfavoredApplicationWidgetCollections ^= 1u;
  _shouldAnimateChanges = [(SBHAddWidgetSheetViewController *)self _shouldAnimateChanges];

  [(SBHAddWidgetSheetViewController *)self _refreshData:_shouldAnimateChanges];
}

- (void)_collectionView:(id)view updateSeparatorVisibility:(BOOL)visibility forHighlightAtIndexPath:(id)path
{
  visibilityCopy = visibility;
  viewCopy = view;
  pathCopy = path;
  objc_opt_class();
  v8 = [viewCopy cellForItemAtIndexPath:pathCopy];
  v9 = SBFSafeCast();

  [v9 setSeparatorVisible:visibilityCopy];
  v10 = [MEMORY[0x1E696AC88] indexPathForItem:objc_msgSend(pathCopy inSection:{"row") - 1, objc_msgSend(pathCopy, "section")}];
  v11 = [pathCopy row];

  if ((v11 & 0x8000000000000000) == 0)
  {
    objc_opt_class();
    v12 = [viewCopy cellForItemAtIndexPath:v10];
    v13 = SBFSafeCast();

    [v13 setSeparatorVisible:visibilityCopy];
  }
}

- (void)_presentDetailSheetViewControllerForApplicationWidgetCollection:(id)collection configuredWithGalleryItem:(id)item selectedSizeClass:(int64_t)class fromCell:(id)cell atIndexPath:(id)path
{
  collectionCopy = collection;
  cellCopy = cell;
  widgetDescriptors = [collectionCopy widgetDescriptors];
  v12 = [widgetDescriptors count];

  if (v12)
  {
    delegate = [(SBHAddWidgetSheetViewControllerBase *)self delegate];
    if ((objc_opt_respondsToSelector() & 1) == 0 || ([(SBHAddWidgetSheetViewController *)delegate addWidgetSheetViewController:self detailViewControllerForWidgetCollection:collectionCopy], (indexPathsForSelectedItems = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v28 = cellCopy;
      addWidgetSheetStyle = [(SBHAddWidgetSheetViewControllerBase *)self addWidgetSheetStyle];
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
      listLayoutProvider = [(SBHAddWidgetSheetViewControllerBase *)self listLayoutProvider];
      iconViewProvider = [(SBHAddWidgetSheetViewControllerBase *)self iconViewProvider];
      allowedWidgets = [(SBHAddWidgetSheetViewControllerBase *)self allowedWidgets];
      v21 = v20;
      appCellConfigurator = [(SBHAddWidgetSheetViewControllerBase *)self appCellConfigurator];
      indexPathsForSelectedItems = [(SBHAddWidgetSheetViewControllerBase *)v16 initWithListLayoutProvider:listLayoutProvider iconViewProvider:iconViewProvider allowedWidgets:allowedWidgets appCellConfigurator:v21 addWidgetSheetStyle:appCellConfigurator, addWidgetSheetStyle];

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
      [(SBHAddWidgetSheetViewControllerBase *)indexPathsForSelectedItems setAddWidgetSheetMetrics:v29];
      if (addWidgetSheetStyle == 1)
      {
        selfCopy = delegate;
      }

      else
      {
        selfCopy = self;
      }

      [(SBHAddWidgetSheetViewControllerBase *)indexPathsForSelectedItems setDelegate:selfCopy];
      [(SBHAddWidgetDetailSheetViewController *)indexPathsForSelectedItems setApplicationWidgetCollection:collectionCopy];
      [(SBHAddWidgetSheetViewControllerBase *)indexPathsForSelectedItems setAddWidgetSheetLocation:[(SBHAddWidgetSheetViewController *)self addWidgetSheetLocation]];
      externalBackgroundView = [(SBHAddWidgetSheetViewControllerBase *)self externalBackgroundView];
      [(SBHAddWidgetSheetViewControllerBase *)indexPathsForSelectedItems setExternalBackgroundView:externalBackgroundView];

      [(SBHAddWidgetDetailSheetViewController *)indexPathsForSelectedItems setExternalSearchController:self->_externalSearchController];
      presenter = [(SBHAddWidgetSheetViewController *)self presenter];
      [(SBHAddWidgetDetailSheetViewController *)indexPathsForSelectedItems setPresenter:presenter];

      [(SBHAddWidgetSheetViewControllerBase *)indexPathsForSelectedItems setAddWidgetSheetWidgetBackgroundType:[(SBHAddWidgetSheetViewControllerBase *)self addWidgetSheetWidgetBackgroundType]];
      if (addWidgetSheetStyle == 1)
      {
        [(SBHAddWidgetDetailSheetViewController *)indexPathsForSelectedItems setAdditionalSafeAreaInsets:*(&v33 + 1), 0.0, 0.0, 0.0];
      }

      cellCopy = v28;
    }

    [(SBHAddWidgetSheetViewController *)self _presentDetailViewController:indexPathsForSelectedItems fromCell:cellCopy];
  }

  else
  {
    v26 = SBLogAddWidgetSheet();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      [SBHAddWidgetSheetViewController _presentDetailSheetViewControllerForApplicationWidgetCollection:collectionCopy configuredWithGalleryItem:v26 selectedSizeClass:? fromCell:? atIndexPath:?];
    }

    collectionView = self->_collectionView;
    indexPathsForSelectedItems = [(_SBHAddWidgetSheetCollectionView *)collectionView indexPathsForSelectedItems];
    delegate = [(SBHAddWidgetDetailSheetViewController *)indexPathsForSelectedItems firstObject];
    [(_SBHAddWidgetSheetCollectionView *)collectionView deselectItemAtIndexPath:delegate animated:1];
  }
}

- (void)_presentDetailViewController:(id)controller fromCell:(id)cell
{
  v32[1] = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  cellCopy = cell;
  if ([(SBHAddWidgetSheetViewControllerBase *)self addWidgetSheetStyle]== 1)
  {
    splitViewController = [(SBHAddWidgetSheetViewController *)self splitViewController];
    v9 = [splitViewController viewControllerForColumn:2];
    v10 = objc_opt_class();
    sheetPresentationController = v9;
    if (v10)
    {
      if (objc_opt_isKindOfClass())
      {
        v12 = sheetPresentationController;
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
      navigationController = [sheetPresentationController navigationController];
      if (!navigationController)
      {
        v23 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:controllerCopy];
        [(SBHAddWidgetSheetViewController *)self showDetailViewController:v23 sender:self];
LABEL_21:

        if (cellCopy)
        {
          v26 = objc_opt_self();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            widgetWrapperViewController = [cellCopy widgetWrapperViewController];
            galleryItem = [widgetWrapperViewController galleryItem];
            widgetWrapperViewController2 = [cellCopy widgetWrapperViewController];
            [controllerCopy configureForGalleryItem:galleryItem selectedSizeClass:{objc_msgSend(widgetWrapperViewController2, "selectedSizeClass")}];
          }
        }

        _effectiveSearchController = [(SBHAddWidgetSheetViewController *)self _effectiveSearchController];
        searchBar = [_effectiveSearchController searchBar];

        [searchBar resignFirstResponder];
        goto LABEL_25;
      }

      v23 = navigationController;
    }

    v32[0] = controllerCopy;
    v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:1];
    [v23 setViewControllers:v25];

    goto LABEL_21;
  }

  [controllerCopy setModalPresentationStyle:2];
  [(SBHAddWidgetSheetViewController *)self preferredContentSize];
  [controllerCopy setPreferredContentSize:?];
  if (cellCopy)
  {
    v13 = [[SBHWidgetAddSheetTransitionContext alloc] initWithSourceCell:cellCopy];
    [controllerCopy setTransitioningDelegate:v13];
    [(SBHAddWidgetSheetViewController *)self setTransitionContext:v13];
  }

  splitViewController = [(SBHAddWidgetSheetViewController *)self sheetPresentationController];
  sheetPresentationController = [controllerCopy sheetPresentationController];
  [sheetPresentationController _setShouldDismissWhenTappedOutside:1];
  if (__sb__runningInSpringBoard())
  {
    if (SBFEffectiveDeviceClass() == 2)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom != 1)
  {
LABEL_12:
    [sheetPresentationController setPrefersGrabberVisible:1];
    [splitViewController _additionalMinimumTopInset];
    [sheetPresentationController _setAdditionalMinimumTopInset:?];
    [splitViewController _grabberTopSpacing];
    [sheetPresentationController _setGrabberTopSpacing:?];
  }

LABEL_13:
  [splitViewController preferredCornerRadius];
  [sheetPresentationController setPreferredCornerRadius:?];
  [sheetPresentationController setDelegate:self];
  view = [(SBHAddWidgetSheetViewController *)self view];
  [sheetPresentationController setSourceView:view];

  traitCollection = [(SBHAddWidgetSheetViewController *)self traitCollection];
  v18 = objc_opt_self();
  searchBar = [traitCollection objectForTrait:v18];

  if (searchBar)
  {
    traitOverrides = [controllerCopy traitOverrides];
    v21 = objc_opt_self();
    [traitOverrides setObject:searchBar forTrait:v21];
  }

  _currentPresenter = [(SBHAddWidgetSheetViewController *)self _currentPresenter];
  [_currentPresenter presentViewController:controllerCopy animated:1 completion:0];

LABEL_25:
}

- (void)_clearDetailViewController
{
  v12[1] = *MEMORY[0x1E69E9840];
  splitViewController = [(SBHAddWidgetSheetViewController *)self splitViewController];
  v4 = [splitViewController viewControllerForColumn:2];
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

- (void)_presentDetailSheetForGalleryCellAtIndexPath:(id)path
{
  pathCopy = path;
  v5 = [(_SBHAddWidgetSheetCollectionView *)self->_collectionView cellForItemAtIndexPath:pathCopy];
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
    widgetWrapperViewController = [v9 widgetWrapperViewController];
    galleryItem = [widgetWrapperViewController galleryItem];
    favoredApplicationWidgetCollections = self->_favoredApplicationWidgetCollections;
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __80__SBHAddWidgetSheetViewController__presentDetailSheetForGalleryCellAtIndexPath___block_invoke;
    v28[3] = &unk_1E808AD00;
    v13 = galleryItem;
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
      parentViewController = [(SBHAddWidgetSheetViewController *)self parentViewController];
      v26ParentViewController = [parentViewController parentViewController];
      v18 = objc_opt_class();
      v19 = v26ParentViewController;
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

      collectionView = [v22 collectionView];
      v24 = [MEMORY[0x1E696AC88] indexPathForItem:objc_msgSend(v22 inSection:{"_itemIndexForApplicationWidgetCollectionIndex:", v15), 0}];
      [collectionView selectItemAtIndexPath:v24 animated:1 scrollPosition:2];

      v13 = v27;
    }

    if (!v16)
    {
LABEL_17:
      v16 = SBLogAddWidgetSheet();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [(SBHAddWidgetSheetViewController *)widgetWrapperViewController _presentDetailSheetForGalleryCellAtIndexPath:v16];
      }
    }

    else
    {
      galleryItem2 = [widgetWrapperViewController galleryItem];
      -[SBHAddWidgetSheetViewController _presentDetailSheetViewControllerForApplicationWidgetCollection:configuredWithGalleryItem:selectedSizeClass:fromCell:atIndexPath:](self, "_presentDetailSheetViewControllerForApplicationWidgetCollection:configuredWithGalleryItem:selectedSizeClass:fromCell:atIndexPath:", v16, galleryItem2, [widgetWrapperViewController selectedSizeClass], v9, pathCopy);
    }
  }
}

- (id)_currentPresenter
{
  searchController = [(SBHAddWidgetSheetViewController *)self searchController];
  if ([searchController isActive])
  {
    selfCopy = [(SBHAddWidgetSheetViewController *)self searchController];
  }

  else
  {
    selfCopy = self;
  }

  v5 = selfCopy;

  return v5;
}

- (id)_presentedGalleryViewController
{
  splitViewController = [(SBHAddWidgetSheetViewController *)self splitViewController];
  v3 = splitViewController;
  if (splitViewController)
  {
    v4 = [splitViewController viewControllerForColumn:2];
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

      topViewController = [v12 topViewController];

      v14 = objc_opt_class();
      v15 = topViewController;
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

- (void)didDismissSearchController:(id)controller
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

  view = [(SBHAddWidgetSheetViewController *)self view];
  [view bringSubviewToFront:self->_closeButton];

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

- (void)willPresentSearchController:(id)controller
{
  if ([(SBHAddWidgetSheetViewControllerBase *)self addWidgetSheetStyle]== 1)
  {

    [(SBHAddWidgetSheetViewController *)self _clearDetailViewController];
  }
}

- (void)updateSearchResultsForSearchController:(id)controller
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = [(SBHAddWidgetSheetViewController *)self _searchTextForSearchController:controller];
  whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  v25 = v4;
  v6 = [v4 componentsSeparatedByCharactersInSet:whitespaceCharacterSet];

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
  configuration = [(SBHAddWidgetSheetViewController *)self configuration];
  if ([configuration wantsGlassGroupAppliedToGalleryContents])
  {
    v23 = [v25 length];
    sbh_hasGlassGroup = [(UIView *)self->_collectionView sbh_hasGlassGroup];
    if (v23 || sbh_hasGlassGroup)
    {
      if (v23 != 0 && sbh_hasGlassGroup)
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

- (id)_searchTextForSearchController:(id)controller
{
  v3 = MEMORY[0x1E696AB08];
  controllerCopy = controller;
  whitespaceCharacterSet = [v3 whitespaceCharacterSet];
  searchBar = [controllerCopy searchBar];

  text = [searchBar text];
  v8 = [text stringByTrimmingCharactersInSet:whitespaceCharacterSet];

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
  contentUnavailableConfigurationState = [(SBHAddWidgetSheetViewController *)&v7 contentUnavailableConfigurationState];
  _effectiveSearchController = [(SBHAddWidgetSheetViewController *)self _effectiveSearchController];
  v5 = [(SBHAddWidgetSheetViewController *)self _searchTextForSearchController:_effectiveSearchController];
  [contentUnavailableConfigurationState setSearchText:v5];

  return contentUnavailableConfigurationState;
}

- (void)updateContentUnavailableConfigurationUsingState:(id)state
{
  stateCopy = state;
  if ([(SBHAddWidgetSheetViewController *)self _canShowContentUnavailableConfiguration])
  {
    v4 = [(SBHAddWidgetSheetViewController *)self _updatedContentUnavailableConfigurationUsingState:stateCopy];
  }

  else
  {
    v4 = 0;
  }

  [(SBHAddWidgetSheetViewController *)self setContentUnavailableConfiguration:v4];
}

- (id)_updatedContentUnavailableConfigurationUsingState:(id)state
{
  stateCopy = state;
  searchText = [stateCopy searchText];
  if ([searchText length])
  {
    v6 = [(NSArray *)self->_filteredApplicationWidgetCollections count];

    if (v6)
    {
      v7 = 0;
      goto LABEL_7;
    }

    searchText = [MEMORY[0x1E69DC8C8] searchConfiguration];
    v7 = [searchText updatedConfigurationForState:stateCopy];
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
  delegate = [(SBHAddWidgetSheetViewControllerBase *)self delegate];
  widgetDragHandler = [delegate widgetDragHandler];

  return widgetDragHandler;
}

- (void)presentationControllerWillDismiss:(id)dismiss
{
  collectionView = self->_collectionView;
  indexPathsForSelectedItems = [(_SBHAddWidgetSheetCollectionView *)collectionView indexPathsForSelectedItems];
  firstObject = [indexPathsForSelectedItems firstObject];
  [(_SBHAddWidgetSheetCollectionView *)collectionView deselectItemAtIndexPath:firstObject animated:1];

  [(SBHWidgetAddSheetTransitionContext *)self->_transitionContext interruptAnimation];

  [(SBHAddWidgetSheetViewController *)self setTransitionContext:0];
}

- (void)addWidgetSheetViewControllerDidCancel:(id)cancel
{
  _currentPresenter = [(SBHAddWidgetSheetViewController *)self _currentPresenter];
  [_currentPresenter dismissViewControllerAnimated:1 completion:0];

  collectionView = self->_collectionView;
  indexPathsForSelectedItems = [(_SBHAddWidgetSheetCollectionView *)collectionView indexPathsForSelectedItems];
  firstObject = [indexPathsForSelectedItems firstObject];
  [(_SBHAddWidgetSheetCollectionView *)collectionView deselectItemAtIndexPath:firstObject animated:1];

  [(SBHWidgetAddSheetTransitionContext *)self->_transitionContext interruptAnimation];

  [(SBHAddWidgetSheetViewController *)self setTransitionContext:0];
}

- (void)addWidgetSheetViewController:(id)controller didSelectWidgetIconView:(id)view
{
  viewCopy = view;
  delegate = [(SBHAddWidgetSheetViewControllerBase *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate addWidgetSheetViewController:self didSelectWidgetIconView:viewCopy];
  }
}

- (id)backgroundViewMatchingMaterialBeneathAddWidgetSheetViewController:(id)controller
{
  _newBackgroundView = [(SBHAddWidgetSheetViewController *)self _newBackgroundView];

  return _newBackgroundView;
}

- (void)_makeGalleryItemsFromHomeScreenItems:(id)items
{
  v91 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
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
  v7 = itemsCopy;
  v8 = [v7 countByEnumeratingWithState:&v82 objects:v90 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v83;
    v56 = v7;
    selfCopy = self;
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

        suggestedSize = [*(*(&v82 + 1) + 8 * v11) suggestedSize];
        if (suggestedSize <= 1)
        {
          if (!suggestedSize)
          {
            v64 = 1;
            v13 = 1;
            goto LABEL_18;
          }

          if (suggestedSize == 1)
          {
            v64 = 1;
            v13 = 2;
            goto LABEL_18;
          }
        }

        else
        {
          switch(suggestedSize)
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
        widgetKind = [v65 widgetKind];
        v15 = [widgetKind containsString:@"SBHSpecialAvocadoDescriptor"];

        if ([(SBHAddWidgetSheetViewControllerBase *)self allowsFakeWidgets]|| !v15)
        {
          objc_opt_class();
          v16 = SBFSafeCast();
          v62 = v16;
          if (v65 || !v16)
          {
            if (v65)
            {
              avocadoDescriptor = [v65 avocadoDescriptor];
              sanitizedDescriptor = [avocadoDescriptor sanitizedDescriptor];
              goto LABEL_62;
            }

            sanitizedDescriptor = 0;
          }

          else
          {
            avocadoDescriptor = objc_opt_new();
            v78 = 0u;
            v79 = 0u;
            v80 = 0u;
            v81 = 0u;
            smallDefaultStack = [v16 smallDefaultStack];
            v19 = [smallDefaultStack countByEnumeratingWithState:&v78 objects:v89 count:16];
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
                    objc_enumerationMutation(smallDefaultStack);
                  }

                  avocadoDescriptor2 = [*(*(&v78 + 1) + 8 * i) avocadoDescriptor];
                  sanitizedDescriptor2 = [avocadoDescriptor2 sanitizedDescriptor];

                  if (sanitizedDescriptor2)
                  {
                    [avocadoDescriptor addObject:sanitizedDescriptor2];
                  }
                }

                v20 = [smallDefaultStack countByEnumeratingWithState:&v78 objects:v89 count:16];
              }

              while (v20);
            }

            v25 = objc_opt_new();
            v74 = 0u;
            v75 = 0u;
            v76 = 0u;
            v77 = 0u;
            mediumDefaultStack = [v62 mediumDefaultStack];
            v27 = [mediumDefaultStack countByEnumeratingWithState:&v74 objects:v88 count:16];
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
                    objc_enumerationMutation(mediumDefaultStack);
                  }

                  avocadoDescriptor3 = [*(*(&v74 + 1) + 8 * j) avocadoDescriptor];
                  sanitizedDescriptor3 = [avocadoDescriptor3 sanitizedDescriptor];

                  if (sanitizedDescriptor3)
                  {
                    [v25 addObject:sanitizedDescriptor3];
                  }
                }

                v28 = [mediumDefaultStack countByEnumeratingWithState:&v74 objects:v88 count:16];
              }

              while (v28);
            }

            v33 = objc_opt_new();
            v70 = 0u;
            v71 = 0u;
            v72 = 0u;
            v73 = 0u;
            largeDefaultStack = [v62 largeDefaultStack];
            v35 = [largeDefaultStack countByEnumeratingWithState:&v70 objects:v87 count:16];
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
                    objc_enumerationMutation(largeDefaultStack);
                  }

                  avocadoDescriptor4 = [*(*(&v70 + 1) + 8 * k) avocadoDescriptor];
                  sanitizedDescriptor4 = [avocadoDescriptor4 sanitizedDescriptor];

                  if (sanitizedDescriptor4)
                  {
                    [v33 addObject:sanitizedDescriptor4];
                  }
                }

                v36 = [largeDefaultStack countByEnumeratingWithState:&v70 objects:v87 count:16];
              }

              while (v36);
            }

            v41 = objc_opt_new();
            v66 = 0u;
            v67 = 0u;
            v68 = 0u;
            v69 = 0u;
            extraLargeDefaultStack = [v62 extraLargeDefaultStack];
            v43 = [extraLargeDefaultStack countByEnumeratingWithState:&v66 objects:v86 count:16];
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
                    objc_enumerationMutation(extraLargeDefaultStack);
                  }

                  avocadoDescriptor5 = [*(*(&v66 + 1) + 8 * m) avocadoDescriptor];
                  sanitizedDescriptor5 = [avocadoDescriptor5 sanitizedDescriptor];

                  if (sanitizedDescriptor5)
                  {
                    [v41 addObject:sanitizedDescriptor5];
                  }
                }

                v44 = [extraLargeDefaultStack countByEnumeratingWithState:&v66 objects:v86 count:16];
              }

              while (v44);
            }

            sanitizedDescriptor = [[SBHWidgetStackDescriptor alloc] initWithSmallStackDescriptors:avocadoDescriptor mediumStackDescriptors:v25 largeStackDescriptors:v33 extraLargeStackDescriptors:v41];
            v7 = v56;
            self = selfCopy;
            v10 = v55;
            v9 = v60;
LABEL_62:
          }

          if (CHSWidgetFamilyIsAccessory())
          {
            sbh_supportsRemovableBackground = 1;
          }

          else
          {
            sbh_supportsRemovableBackground = [(SBHWidgetStackDescriptor *)sanitizedDescriptor sbh_supportsRemovableBackground];
          }

          v51 = v64 ^ 1;
          if (!sanitizedDescriptor)
          {
            v51 = 1;
          }

          if ((v51 & 1) == 0)
          {
            if (v59)
            {
              if (!(((v58 & 0x100) == 0) | sbh_supportsRemovableBackground & 1))
              {
                goto LABEL_75;
              }
            }

            else if (![(SBHWidgetStackDescriptor *)sanitizedDescriptor sbh_canBeAddedToStack]|| !(((v58 & 0x100) == 0) | sbh_supportsRemovableBackground & 1))
            {
              goto LABEL_75;
            }

            v52 = [(SBHAddWidgetSheetViewController *)self _newWrapperViewControllerWithGalleryItem:sanitizedDescriptor sizeClass:v61];
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

- (void)_makeFakeGalleryItemsFromHomeScreenItems:(id)items
{
  v122 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [(SBHAddWidgetSheetViewControllerBase *)self allowedWidgets];
  v7 = v6;
  [(SBHAddWidgetSheetViewControllerBase *)self allowedWidgets];
  v89 = v8;
  allowedWidgets = [(SBHAddWidgetSheetViewControllerBase *)self allowedWidgets];
  v112 = 0u;
  v113 = 0u;
  v114 = 0u;
  v115 = 0u;
  v10 = itemsCopy;
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
  selfCopy = self;
  v76 = v5;
  v73 = *v113;
  v74 = allowedWidgets;
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

      suggestedSize = [*(*(&v112 + 1) + 8 * v14) suggestedSize];
      if (suggestedSize <= 1)
      {
        if (!suggestedSize)
        {
          v85 = 0;
          v84 = 1;
          v82 = 1;
          v83 = 1;
          goto LABEL_18;
        }

        if (suggestedSize == 1)
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
        switch(suggestedSize)
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
        avocadoDescriptor5 = objc_opt_new();
        v108 = 0u;
        v109 = 0u;
        v110 = 0u;
        v111 = 0u;
        smallDefaultStack = [v23 smallDefaultStack];
        v25 = [smallDefaultStack countByEnumeratingWithState:&v108 objects:v120 count:16];
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
                objc_enumerationMutation(smallDefaultStack);
              }

              avocadoDescriptor = [*(*(&v108 + 1) + 8 * i) avocadoDescriptor];
              sanitizedDescriptor = [avocadoDescriptor sanitizedDescriptor];

              if (sanitizedDescriptor)
              {
                [avocadoDescriptor5 addObject:sanitizedDescriptor];
              }
            }

            v26 = [smallDefaultStack countByEnumeratingWithState:&v108 objects:v120 count:16];
          }

          while (v26);
        }

        v31 = objc_opt_new();
        v104 = 0u;
        v105 = 0u;
        v106 = 0u;
        v107 = 0u;
        mediumDefaultStack = [v86 mediumDefaultStack];
        v33 = [mediumDefaultStack countByEnumeratingWithState:&v104 objects:v119 count:16];
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
                objc_enumerationMutation(mediumDefaultStack);
              }

              avocadoDescriptor2 = [*(*(&v104 + 1) + 8 * j) avocadoDescriptor];
              sanitizedDescriptor2 = [avocadoDescriptor2 sanitizedDescriptor];

              if (sanitizedDescriptor2)
              {
                [v31 addObject:sanitizedDescriptor2];
              }
            }

            v34 = [mediumDefaultStack countByEnumeratingWithState:&v104 objects:v119 count:16];
          }

          while (v34);
        }

        v39 = objc_opt_new();
        v100 = 0u;
        v101 = 0u;
        v102 = 0u;
        v103 = 0u;
        largeDefaultStack = [v86 largeDefaultStack];
        v41 = [largeDefaultStack countByEnumeratingWithState:&v100 objects:v118 count:16];
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
                objc_enumerationMutation(largeDefaultStack);
              }

              avocadoDescriptor3 = [*(*(&v100 + 1) + 8 * k) avocadoDescriptor];
              sanitizedDescriptor3 = [avocadoDescriptor3 sanitizedDescriptor];

              if (sanitizedDescriptor3)
              {
                [v39 addObject:sanitizedDescriptor3];
              }
            }

            v42 = [largeDefaultStack countByEnumeratingWithState:&v100 objects:v118 count:16];
          }

          while (v42);
        }

        v47 = objc_opt_new();
        v96 = 0u;
        v97 = 0u;
        v98 = 0u;
        v99 = 0u;
        extraLargeDefaultStack = [v86 extraLargeDefaultStack];
        v49 = [extraLargeDefaultStack countByEnumeratingWithState:&v96 objects:v117 count:16];
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
                objc_enumerationMutation(extraLargeDefaultStack);
              }

              avocadoDescriptor4 = [*(*(&v96 + 1) + 8 * m) avocadoDescriptor];
              sanitizedDescriptor4 = [avocadoDescriptor4 sanitizedDescriptor];

              if (sanitizedDescriptor4)
              {
                [v47 addObject:sanitizedDescriptor4];
              }
            }

            v50 = [extraLargeDefaultStack countByEnumeratingWithState:&v96 objects:v117 count:16];
          }

          while (v50);
        }

        sanitizedDescriptor5 = [[SBHWidgetStackDescriptor alloc] initWithSmallStackDescriptors:avocadoDescriptor5 mediumStackDescriptors:v31 largeStackDescriptors:v39 extraLargeStackDescriptors:v47];
        self = selfCopy;
        v5 = v76;
        v10 = v77;
        v13 = v73;
        v22 = v85;
        v17 = v79;
        goto LABEL_62;
      }

      if (v16)
      {
        avocadoDescriptor5 = [v16 avocadoDescriptor];
        sanitizedDescriptor5 = [avocadoDescriptor5 sanitizedDescriptor];
        v22 = v85;
LABEL_62:

        v7 = v78;
        goto LABEL_63;
      }

      sanitizedDescriptor5 = 0;
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
        v91 = sanitizedDescriptor5;
LABEL_82:
        v59 = v87;
LABEL_83:
        v60 = sanitizedDescriptor5;
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
        v88 = sanitizedDescriptor5;
        goto LABEL_82;
      }

      v57 = v83;
      if (v90)
      {
        v57 = 1;
      }

      if (v57 != 1)
      {
        v90 = sanitizedDescriptor5;
        goto LABEL_82;
      }

      v58 = v82;
      if (v87)
      {
        v58 = 1;
      }

      v59 = sanitizedDescriptor5;
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

        integerValue = [*(*(&v92 + 1) + 8 * n) integerValue];
        v68 = integerValue;
        v69 = 0;
        if (integerValue > 2)
        {
          v70 = v90;
          if (integerValue != 3)
          {
            if (integerValue != 4)
            {
              goto LABEL_114;
            }

            v70 = v87;
          }
        }

        else
        {
          v70 = v91;
          if (integerValue != 1)
          {
            v70 = v88;
            if (integerValue != 2)
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

- (id)_itemsArrayWithSizeClasses:(id)classes nSmallsGroup:(id)group mediumAndSmallGroup:(id)smallGroup usesThreeColumnLayout:(BOOL)layout
{
  layoutCopy = layout;
  classesCopy = classes;
  groupCopy = group;
  smallGroupCopy = smallGroup;
  v10 = objc_opt_new();
  v11 = [classesCopy count];
  if (v11)
  {
    v12 = v11;
    v13 = 0;
    v14 = 0;
    v15 = !layoutCopy;
    if (layoutCopy)
    {
      v16 = 2;
    }

    else
    {
      v16 = 1;
    }

    do
    {
      v17 = [classesCopy objectAtIndex:{v13, groupCopy}];
      integerValue = [v17 integerValue];
      v19 = v14 + 1;
      v20 = SBHItemAtIndexIsOfSize(classesCopy, v14 + 1);
      v21 = v20;
      if (integerValue == 1)
      {
        v23 = SBHItemAtIndexIsOfSize(classesCopy, v14 + 2);
        v22 = groupCopy;
        if ((v21 & (v15 | v23)) != 1)
        {
          goto LABEL_9;
        }
      }

      else
      {
        if (integerValue != 2)
        {
          goto LABEL_9;
        }

        v22 = smallGroupCopy;
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
    [v10 addObject:smallGroupCopy];
  }

  return v10;
}

- (id)_collectionViewLayoutGallerySectionWithWidth:(double)width sizeClasses:(id)classes
{
  v48[1] = *MEMORY[0x1E69E9840];
  v43 = self->_galleryLayoutSize == 1;
  classesCopy = classes;
  _listLayoutForWidgetSizing = [(SBHAddWidgetSheetViewController *)self _listLayoutForWidgetSizing];
  v5 = SBHIconListLayoutIconImageInfoForGridSizeClass(_listLayoutForWidgetSizing, @"SBHIconGridSizeClassSmall");
  v7 = v6;
  v8 = SBHIconListLayoutIconImageInfoForGridSizeClass(_listLayoutForWidgetSizing, @"SBHIconGridSizeClassMedium");
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

  v31 = [(SBHAddWidgetSheetViewController *)self _itemsArrayWithSizeClasses:classesCopy nSmallsGroup:v25 mediumAndSmallGroup:v29 usesThreeColumnLayout:v43];

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

- (id)_newPadCollectionViewLayoutGallerySectionWithWidth:(double)width sizeClasses:(id)classes
{
  classesCopy = classes;
  _listLayoutForWidgetSizing = [(SBHAddWidgetSheetViewController *)self _listLayoutForWidgetSizing];
  v6 = SBHIconListLayoutIconImageInfoForGridSizeClass(_listLayoutForWidgetSizing, @"SBHIconGridSizeClassSmall");
  v8 = v7;
  v9 = SBHIconListLayoutIconImageInfoForGridSizeClass(_listLayoutForWidgetSizing, @"SBHIconGridSizeClassMedium");
  v11 = v10;
  v12 = SBHIconListLayoutIconImageInfoForGridSizeClass(_listLayoutForWidgetSizing, @"SBHIconGridSizeClassLarge");
  v14 = v13;
  v15 = SBHIconListLayoutIconImageInfoForGridSizeClass(_listLayoutForWidgetSizing, @"SBHIconGridSizeClassExtraLarge");
  v73 = v16;
  v74 = v15;
  v66 = _listLayoutForWidgetSizing;
  [(SBHAddWidgetSheetViewController *)self _horizontalSpacingForListLayout:_listLayoutForWidgetSizing];
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

  selfCopy = self;
  v33 = [(SBHAddWidgetSheetViewController *)self _podsArrayWithSizeClasses:classesCopy columnCount:v27];
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
          horizontalSpacing = selfCopy->_horizontalSpacing;
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

      v41 = v12 + selfCopy->_horizontalSpacing;
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
  if (!selfCopy->_wrapperView)
  {
    v48 = selfCopy->_horizontalSpacing;
  }

  v49 = MEMORY[0x1E6995588];
  v50 = [MEMORY[0x1E6995558] absoluteDimension:v28 + v48];
  v51 = [MEMORY[0x1E6995558] estimatedDimension:selfCopy->_horizontalSpacing * (v47 - 1) + v47 * v14];
  v52 = [v49 sizeWithWidthDimension:v50 heightDimension:v51];

  v53 = [MEMORY[0x1E6995568] verticalGroupWithLayoutSize:v52 subitems:v34];
  v54 = [MEMORY[0x1E6995590] fixedSpacing:selfCopy->_horizontalSpacing];
  [v53 setInterItemSpacing:v54];

  v55 = [MEMORY[0x1E6995580] sectionWithGroup:v53];
  [v55 setInterGroupSpacing:selfCopy->_horizontalSpacing];
  [v55 setContentInsets:{selfCopy->_searchBarHeightAdjustment, (width - v28) * 0.5, 8.0, (width - v28) * 0.5}];

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

- (id)_podsArrayWithSizeClasses:(id)classes columnCount:(int64_t)count
{
  classesCopy = classes;
  v6 = [classesCopy count];
  v7 = objc_opt_new();
  if (v6)
  {
    v8 = 0;
    v9 = count & 1;
    v10 = v9 + count / 2;
    do
    {
      v11 = [v7 count];
      if (v9 && !(v11 % v10))
      {
        v18 = SBHSizeClassForItemAtIndex(classesCopy, v8);
        v19 = SBHSizeClassForItemAtIndex(classesCopy, v8 + 1);
        if (v18 == 1 && v19 <= 1)
        {
          [v7 addObject:&unk_1F3DB2558];
          v8 += 2;
        }

        continue;
      }

      v12 = SBHSizeClassForItemAtIndex(classesCopy, v8);
      v13 = SBHSizeClassForItemAtIndex(classesCopy, v8 + 1);
      v14 = SBHSizeClassForItemAtIndex(classesCopy, v8 + 2);
      v15 = SBHSizeClassForItemAtIndex(classesCopy, v8 + 3);
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

- (void)_setContentInsetsForGridWithWidth:(double)width
{
  galleryLayoutSize = self->_galleryLayoutSize;
  _listLayoutForWidgetSizing = [(SBHAddWidgetSheetViewController *)self _listLayoutForWidgetSizing];
  iconGridSizeClassSizes = [_listLayoutForWidgetSizing iconGridSizeClassSizes];
  v7 = [iconGridSizeClassSizes hasGridSizeForGridSizeClass:@"SBHIconGridSizeClassSmall"];

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

      v8 = SBHIconListLayoutIconImageInfoForGridSizeClass(_listLayoutForWidgetSizing, @"SBHIconGridSizeClassSmall");
      v9 = 4;
      if (self->_galleryLayoutSize != 2)
      {
        v9 = 5;
      }
    }

    else
    {
      v8 = SBHIconListLayoutIconImageInfoForGridSizeClass(_listLayoutForWidgetSizing, @"SBHIconGridSizeClassSmall");
      v9 = 2;
      if (self->_galleryLayoutSize == 1)
      {
        v9 = 3;
      }
    }

    v10 = width - (self->_horizontalSpacing * (v9 - 1) + v9 * v8);
    self->_contentInsets.top = 0.0;
    v11 = v10 * 0.5;
    self->_contentInsets.leading = v11;
    self->_contentInsets.bottom = 0.0;
    self->_contentInsets.trailing = v11;
  }

LABEL_11:
}

- (void)_updateContentInsetsIfNecessaryForWidth:(double)width
{
  if (self->_contentInsetUpdatedForWidth != width)
  {
    [(SBHAddWidgetSheetViewController *)self _setContentInsetsForGridWithWidth:width];
    self->_contentInsetUpdatedForWidth = width;
  }
}

- (id)_collectionViewLayoutApplicationsSectionWithStyle:(unint64_t)style
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
  if (style)
  {
    top = 0.0;
    [v15 setInterGroupSpacing:0.0];
    __asm { FMOV            V1.2D, #20.0 }

    *&self->_applicationsSectionInsets.top = xmmword_1BEE858B0;
    *&self->_applicationsSectionInsets.bottom = _Q1;
    if (style == 1)
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
    configuration = [(SBHAddWidgetSheetViewController *)self configuration];
    v3 = [configuration applicationCellIncludesGalleryListView] ^ 1;
  }

  return v3;
}

- (BOOL)_canShowGallery
{
  _shouldShowGallery = [(SBHAddWidgetSheetViewController *)self _shouldShowGallery];
  _suggestedItems = [(SBHAddWidgetSheetViewController *)self _suggestedItems];
  v5 = [_suggestedItems count];

  return v5 && _shouldShowGallery;
}

- (BOOL)_shouldShowCustomApplicationsSection
{
  configuration = [(SBHAddWidgetSheetViewController *)self configuration];
  wantsCustomApplicationsSection = [configuration wantsCustomApplicationsSection];

  v5 = [(NSArray *)self->_customApplicationWidgetCollections count];
  result = 0;
  if (wantsCustomApplicationsSection)
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
  externalBackgroundView = [(SBHAddWidgetSheetViewControllerBase *)self externalBackgroundView];
  backgroundView = externalBackgroundView;
  if (!externalBackgroundView)
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
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    v2 = [currentDevice userInterfaceIdiom] == 0;
  }

  return v2;
}

- (id)_newWrapperViewControllerWithGalleryItem:(id)item sizeClass:(int64_t)class
{
  itemCopy = item;
  v7 = [SBHWidgetWrapperViewController alloc];
  _shouldShowTitleAndSubtitle = [(SBHAddWidgetSheetViewController *)self _shouldShowTitleAndSubtitle];
  listLayoutProvider = [(SBHAddWidgetSheetViewControllerBase *)self listLayoutProvider];
  iconViewProvider = [(SBHAddWidgetSheetViewControllerBase *)self iconViewProvider];
  v11 = [(SBHWidgetWrapperViewController *)v7 initWithGalleryItem:itemCopy titleAndSubtitleVisible:_shouldShowTitleAndSubtitle listLayoutProvider:listLayoutProvider iconViewProvider:iconViewProvider];

  if ([(SBHAddWidgetSheetViewController *)self addWidgetSheetLocation]== 2)
  {
    [(SBHWidgetWrapperViewController *)v11 setUsesAmbientScaleFactorForRemovableBackgroundItems:1];
  }

  [(SBHWidgetWrapperViewController *)v11 setDelegate:self];
  [(SBHWidgetWrapperViewController *)v11 setSelectedSizeClass:class];
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
  _effectiveSearchController = [(SBHAddWidgetSheetViewController *)self _effectiveSearchController];
  traitCollection = [(SBHAddWidgetSheetViewController *)self traitCollection];
  [_effectiveSearchController setOverrideUserInterfaceStyle:{objc_msgSend(traitCollection, "userInterfaceStyle")}];
}

- (void)_updateSearchBarContentInsets
{
  searchController = self->_searchController;
  view = [(SBHAddWidgetSheetViewController *)self view];
  [view bounds];
  [(SBHWidgetSearchController *)searchController updateSearchBarContentInsetsWithWidth:v5];

  [(SBHAddWidgetSheetViewController *)self _updateCollectionViewInsets];
}

- (void)_updateCollectionViewInsets
{
  _listLayoutForWidgetSizing = [(SBHAddWidgetSheetViewController *)self _listLayoutForWidgetSizing];
  configuration = [(SBHAddWidgetSheetViewController *)self configuration];
  gridSizeClassForContentWidth = [configuration gridSizeClassForContentWidth];
  v6 = gridSizeClassForContentWidth;
  v7 = @"SBHIconGridSizeClassMedium";
  if (gridSizeClassForContentWidth)
  {
    v7 = gridSizeClassForContentWidth;
  }

  v8 = v7;

  v9 = SBHIconListLayoutIconImageInfoForGridSizeClass(_listLayoutForWidgetSizing, v8);
  view = [(SBHAddWidgetSheetViewController *)self view];
  [view frame];
  v12 = (v11 - v9) * -0.5;

  addWidgetSheetStyle = [(SBHAddWidgetSheetViewControllerBase *)self addWidgetSheetStyle];
  searchController = [(SBHAddWidgetSheetViewController *)self searchController];
  [searchController textFieldToWidgetsSpacing];
  v16 = v15;

  v17 = v16 + 12.0 + v12;
  if (addWidgetSheetStyle == 1)
  {
    v17 = 0.0;
  }

  self->_searchBarHeightAdjustment = v17;
  [(_SBHAddWidgetSheetCollectionView *)self->_collectionView contentInset];
  v19 = v18;
  v21 = v20;
  if (addWidgetSheetStyle == 1)
  {
    [(SBHAddWidgetSheetViewController *)self _metricsForCurrentOrientation:0];
    shouldShowGalleryOnly = [(SBHAddWidgetSheetViewController *)self shouldShowGalleryOnly];
    v23 = 120;
    if (shouldShowGalleryOnly)
    {
      v23 = 40;
    }

    v24 = *(&v40 + v23);
  }

  else
  {
    _effectiveSearchController = [(SBHAddWidgetSheetViewController *)self _effectiveSearchController];
    searchBar = [_effectiveSearchController searchBar];
    [searchBar frame];
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
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    if ([currentDevice userInterfaceIdiom] != 1)
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

- (SBHPadAddWidgetSheetMetrics)_metricsForOrientation:(SEL)orientation
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
  view = [(SBHAddWidgetSheetViewController *)self view];
  window = [view window];

  selfCopy = window;
  if (!window)
  {
    selfCopy = self;
  }

  [(SBHAddWidgetSheetViewController *)self _metricsForOrientation:[(SBHAddWidgetSheetViewController *)selfCopy interfaceOrientation]];

  return result;
}

- (id)_generateLayoutSectionForSectionIdx:(unint64_t)idx width:(double)width
{
  [(SBHAddWidgetSheetViewController *)self _updateContentInsetsIfNecessaryForWidth:?];
  if ([(SBHAddWidgetSheetViewController *)self _sectionIndexForSection:0]== idx)
  {
    galleryLayoutSize = [(SBHAddWidgetSheetViewController *)self galleryLayoutSize];
    _sizeClasses = [(SBHAddWidgetSheetViewController *)self _sizeClasses];
    if (galleryLayoutSize > 1)
    {
      v9 = [(SBHAddWidgetSheetViewController *)self _newPadCollectionViewLayoutGallerySectionWithWidth:_sizeClasses sizeClasses:width];
    }

    else
    {
      v9 = [(SBHAddWidgetSheetViewController *)self _collectionViewLayoutGallerySectionWithWidth:_sizeClasses sizeClasses:width];
    }

    v10 = v9;
  }

  else if ([(SBHAddWidgetSheetViewController *)self _sectionIndexForSection:2]== idx || [(SBHAddWidgetSheetViewController *)self _sectionIndexForSection:3]== idx || [(SBHAddWidgetSheetViewController *)self _sectionIndexForSection:1]== idx)
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
  listLayoutProvider = [(SBHAddWidgetSheetViewControllerBase *)self listLayoutProvider];
  v3 = [listLayoutProvider layoutForIconLocation:@"SBIconLocationRoot"];

  return v3;
}

- (void)_updateHorizontalSpacing
{
  _listLayoutForWidgetSizing = [(SBHAddWidgetSheetViewController *)self _listLayoutForWidgetSizing];
  [(SBHAddWidgetSheetViewController *)self _horizontalSpacingForListLayout:_listLayoutForWidgetSizing];
  self->_horizontalSpacing = v3;
}

- (double)_horizontalSpacingForListLayout:(id)layout
{
  layoutCopy = layout;
  v4 = SBHIconListLayoutIconImageInfoForGridSizeClass(layoutCopy, @"SBHIconGridSizeClassSmall");
  v5 = SBHIconListLayoutIconImageInfoForGridSizeClass(layoutCopy, @"SBHIconGridSizeClassMedium");

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