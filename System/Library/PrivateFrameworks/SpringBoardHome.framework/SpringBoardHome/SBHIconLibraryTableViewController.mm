@interface SBHIconLibraryTableViewController
- (BOOL)_executeQuery:(id)query;
- (BOOL)_isIndexPathVisible:(id)visible;
- (BOOL)_observeIcon:(id)icon;
- (BOOL)_shouldShowNoResultsViewForQueryResult:(id)result;
- (BOOL)_startObservingIcon:(id)icon;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (BOOL)isDisplayingIcon:(id)icon;
- (BOOL)isDisplayingIcon:(id)icon inLocation:(id)location;
- (BOOL)isDisplayingIcon:(id)icon inLocations:(id)locations;
- (BOOL)isDisplayingIconView:(id)view;
- (BOOL)isDisplayingIconView:(id)view inLocation:(id)location;
- (BOOL)searchControllerShouldReturn:(id)return;
- (CGRect)tableView:(id)view frameForSectionIndexGivenProposedFrame:(CGRect)frame;
- (SBHIconLibraryTableViewController)init;
- (SBHIconLibraryTableViewControllerLayoutDelegate)layoutDelegate;
- (SBHIconLibraryTableViewControllerObserver)observer;
- (SBHIconTableViewDiffableDataSource)dataSource;
- (SBHLibrarySearchController)searchController;
- (SBIconViewProviding)iconViewProvider;
- (UIEdgeInsets)visibleContainerInsets;
- (UIView)headerBlurView;
- (double)headerTopOccludingInset;
- (id)_contentUnavailableConfigurationState;
- (id)_createIconView;
- (id)_iconViewAtIndexPath:(id)path;
- (id)_iconViewForDragSession:(id)session;
- (id)_iconViewForIcon:(id)icon;
- (id)_indexPathForDefaultSearchResult;
- (id)_nullQuery;
- (id)_processDragItemsForIconView:(id)view session:(id)session;
- (id)_queryForCurrentSearchTextField;
- (id)_searchTextField;
- (id)_tableView:(id)view previewForContextMenuConfiguration:(id)configuration;
- (id)_visibleIcons;
- (id)_visibleIndexPaths;
- (id)_visibleSectionIndicies;
- (id)acquireLibrarySearchPrewarmAssertionForReason:(id)reason;
- (id)firstIconViewForIcon:(id)icon;
- (id)firstIconViewForIcon:(id)icon excludingLocations:(id)locations;
- (id)firstIconViewForIcon:(id)icon inLocations:(id)locations;
- (id)iconViewForIcon:(id)icon location:(id)location;
- (id)tableView:(id)view contextMenuConfigurationForRowAtIndexPath:(id)path point:(CGPoint)point;
- (id)tableView:(id)view dragPreviewParametersForRowAtIndexPath:(id)path;
- (id)tableView:(id)view itemsForBeginningDragSession:(id)session atIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (void)_configureCell:(id)cell forIcon:(id)icon;
- (void)_handleAlphaFadeForCell:(id)cell atIndexPath:(id)path;
- (void)_handleDidTapEmptyResultsArea:(id)area;
- (void)_handleLowQualityAlphaFade;
- (void)_iconModelWillReload:(id)reload;
- (void)_invalidatePrewarmAssertion:(id)assertion;
- (void)_logLaunchOfIcon:(id)icon atIndexPath:(id)path;
- (void)_mapIconView:(id)view forDragSession:(id)session;
- (void)_notifyDelegatesOfAppLaunchFromSearchController:(id)controller;
- (void)_refreshIconIfVisible:(id)visible;
- (void)_reloadAppIcons;
- (void)_reloadRowsAtIndexPaths:(id)paths;
- (void)_reloadVisibleCells;
- (void)_resetDragSession:(id)session;
- (void)_setupLibrary;
- (void)_setupObservedIcons;
- (void)_teardownLibrary;
- (void)_teardownObservedIcons;
- (void)_unobserveIcon:(id)icon;
- (void)_updateContentUnavailableConfigurationUsingState:(id)state;
- (void)_updateSectionHeaderHeight;
- (void)_updateShowHeadersFromQueryResult:(id)result;
- (void)enumerateDisplayedIconViewsForIcon:(id)icon usingBlock:(id)block;
- (void)enumerateDisplayedIconViewsUsingBlock:(id)block;
- (void)iconLibrary:(id)library hasUpdatedQueryResult:(id)result;
- (void)iconViewDidEndDrag:(id)drag;
- (void)iconViewWillBeginDrag:(id)drag;
- (void)scrollViewDidEndDecelerating:(id)decelerating;
- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)setIconModel:(id)model;
- (void)setIconViewProvider:(id)provider;
- (void)setLegibilitySettings:(id)settings;
- (void)setLibraryCategoryMap:(id)map;
- (void)setRootFolder:(id)folder;
- (void)settings:(id)settings changedValueForKey:(id)key;
- (void)tableView:(id)view didEndDisplayingCell:(id)cell forRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view dragSessionDidEnd:(id)end;
- (void)tableView:(id)view dragSessionWillBegin:(id)begin;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayContextMenuWithConfiguration:(id)configuration animator:(id)animator;
- (void)tableView:(id)view willEndContextMenuInteractionWithConfiguration:(id)configuration animator:(id)animator;
- (void)tableView:(id)view willPerformPreviewActionForMenuWithConfiguration:(id)configuration animator:(id)animator;
- (void)updateSearchResultsForSearchController:(id)controller;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation SBHIconLibraryTableViewController

- (id)_visibleIcons
{
  isViewLoaded = [(SBHIconLibraryTableViewController *)self isViewLoaded];
  v4 = MEMORY[0x1E695DFD8];
  if (isViewLoaded)
  {
    _visibleIndexPaths = [(SBHIconLibraryTableViewController *)self _visibleIndexPaths];
    allObjects = [_visibleIndexPaths allObjects];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __50__SBHIconLibraryTableViewController__visibleIcons__block_invoke;
    v10[3] = &unk_1E808C4E0;
    v10[4] = self;
    v7 = [allObjects bs_mapNoNulls:v10];
    v8 = [v4 setWithArray:v7];
  }

  else
  {
    v8 = [MEMORY[0x1E695DFD8] set];
  }

  return v8;
}

- (id)_visibleIndexPaths
{
  v2 = MEMORY[0x1E695DFD8];
  tableView = [(SBHIconLibraryTableViewController *)self tableView];
  indexPathsForVisibleRows = [tableView indexPathsForVisibleRows];
  v5 = [v2 setWithArray:indexPathsForVisibleRows];

  return v5;
}

- (SBHIconTableViewDiffableDataSource)dataSource
{
  dataSource = self->_dataSource;
  if (dataSource)
  {
    v3 = dataSource;
  }

  else
  {
    objc_initWeak(&location, self);
    v5 = [SBHIconTableViewDiffableDataSource alloc];
    tableView = [(SBHIconLibraryTableViewController *)self tableView];
    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = __47__SBHIconLibraryTableViewController_dataSource__block_invoke;
    v13 = &unk_1E808C508;
    objc_copyWeak(&v14, &location);
    v7 = [(UITableViewDiffableDataSource *)v5 initWithTableView:tableView cellProvider:&v10];
    v8 = self->_dataSource;
    self->_dataSource = v7;

    [(UITableViewDiffableDataSource *)self->_dataSource setDefaultRowAnimation:5, v10, v11, v12, v13];
    [(SBHIconTableViewDiffableDataSource *)self->_dataSource setIconLibrary:self->_library];
    v3 = self->_dataSource;
    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  return v3;
}

- (id)_visibleSectionIndicies
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E696AD50]);
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  _visibleIndexPaths = [(SBHIconLibraryTableViewController *)self _visibleIndexPaths];
  v5 = [_visibleIndexPaths countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(_visibleIndexPaths);
        }

        [v3 addIndex:{objc_msgSend(*(*(&v10 + 1) + 8 * i), "section")}];
      }

      v6 = [_visibleIndexPaths countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return v3;
}

- (SBHIconLibraryTableViewController)init
{
  v15.receiver = self;
  v15.super_class = SBHIconLibraryTableViewController;
  v2 = [(SBHIconLibraryTableViewController *)&v15 initWithStyle:0];
  if (v2)
  {
    +[SBHLocalizedIndexedCollationStrategy prewarm];
    v3 = +[SBHLegibilitySettings defaultLegibilitySettings];
    legibilitySettings = v2->_legibilitySettings;
    v2->_legibilitySettings = v3;

    v5 = +[SBHHomeScreenDomain rootSettings];
    appLibrarySettings = [v5 appLibrarySettings];
    settings = v2->_settings;
    v2->_settings = appLibrarySettings;

    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    grabbedIconViews = v2->_grabbedIconViews;
    v2->_grabbedIconViews = weakObjectsHashTable;

    v10 = [(SBHScrollableIconViewInteraction *)[SBHScrollableZoomingIconViewInteraction alloc] initWithContainer:v2];
    scrollingInteraction = v2->_scrollingInteraction;
    v2->_scrollingInteraction = &v10->super;

    [(PTSettings *)v2->_settings addKeyObserver:v2];
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SBHIconLibraryTableViewController-<%p>", v2];
    [(SBHIconLibraryTableViewController *)v2 setFocusGroupIdentifier:v12];

    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    v2->_needsLowQualityAlphaFade = [currentDevice sbf_featherBlurGraphicsQuality] < 100;
  }

  return v2;
}

- (void)viewDidLoad
{
  v49.receiver = self;
  v49.super_class = SBHIconLibraryTableViewController;
  [(SBHTableViewController *)&v49 viewDidLoad];
  listLayoutProvider = [(SBHIconLibraryTableViewController *)self listLayoutProvider];
  v4 = [listLayoutProvider layoutForIconLocation:@"SBIconLocationAppLibrarySearch"];
  [v4 iconImageInfo];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  [SBHIconTableViewCell defaultTableViewCellHeightForIconImageInfo:v6, v8, v10, v12];
  v48 = v13;
  v14 = [listLayoutProvider layoutForIconLocation:@"SBIconLocationAppLibrary"];
  appLibraryVisualConfiguration = [v14 appLibraryVisualConfiguration];
  usesInsetPlatterSearchAppearance = [appLibraryVisualConfiguration usesInsetPlatterSearchAppearance];

  self->_usesPlatterAppearance = usesInsetPlatterSearchAppearance;
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    +[SBHIconTableViewCell defaultTableViewCellHorizontalMargin];
    UIEdgeInsetsMakeWithEdges();
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;
  }

  else
  {
    v27 = [listLayoutProvider layoutForIconLocation:@"SBIconLocationRoot"];
    v20 = SBHIconListLayoutNonDefaultIconGridSizeClassLayoutInsets(v27, 1);
    v22 = v28;
    v24 = v29;
    v26 = v30;
  }

  [SBHIconTableViewCell defaultTableViewCellSeparatorInsetsForIconImageInfo:v6, v8, v10, v12];
  UIEdgeInsetsAdd();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  tableView = [(SBHIconLibraryTableViewController *)self tableView];
  [tableView setDragInteractionEnabled:1];
  [tableView setDragDelegate:self];
  [tableView setClipsToBounds:0];
  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  [tableView _setSectionIndexColor:whiteColor];

  [tableView setBackgroundView:0];
  [tableView setBackgroundColor:0];
  dataSource = [(SBHIconLibraryTableViewController *)self dataSource];
  [tableView setRowHeight:v48];
  v42 = objc_opt_new();
  [tableView setTableFooterView:v42];

  [tableView setPreservesSuperviewLayoutMargins:0];
  v43 = objc_opt_self();
  [tableView registerClass:v43 forCellReuseIdentifier:@"IconTableViewCell"];

  v44 = objc_opt_self();
  [tableView registerClass:v44 forHeaderFooterViewReuseIdentifier:@"IconTableViewHeaderFooterView"];

  [tableView setContentInsetAdjustmentBehavior:1];
  [tableView setKeyboardDismissMode:1];
  [tableView _setDrawsSeparatorAtTopOfSections:0];
  [tableView setInsetsContentViewsToSafeArea:0];
  [tableView setLayoutMargins:{v20, v22, v24, v26}];
  [tableView setSeparatorInset:{v32, v34, v36, v38}];
  [tableView setSectionHeaderTopPadding:0.0];
  if (usesInsetPlatterSearchAppearance)
  {
    [tableView _setHeaderAndFooterViewsFloat:0];
    self->_needsLowQualityAlphaFade = 0;
  }

  else
  {
    [tableView _setUseLegacySectionHeaderFooterPinningBehavior:1];
  }

  [(SBHIconLibraryTableViewController *)self _updateSectionHeaderHeight];
  v45 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel__handleDidTapEmptyResultsArea_];
  [v45 setCancelsTouchesInView:0];
  [v45 setDelaysTouchesBegan:0];
  [v45 setDelaysTouchesEnded:0];
  [v45 setDelegate:self];
  [tableView addGestureRecognizer:v45];
  v46 = [MEMORY[0x1E69DC888] colorWithRed:0.1 green:0.1 blue:0.1 alpha:1.0];
  v47 = [MEMORY[0x1E69DD248] vibrantEffectWithCompositingMode:24 compositingColor:v46];
  [tableView setSeparatorEffect:v47];
}

- (void)viewWillAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = SBHIconLibraryTableViewController;
  [(SBHTableViewController *)&v6 viewWillAppear:appear];
  [(SBHIconLibraryTableViewController *)self _setupObservedIcons];
  v4 = [(SBHIconLibraryTableViewController *)self acquireLibrarySearchPrewarmAssertionForReason:@"SBHIconLibraryTableViewController view will appear"];
  isVisibleLibrarySearchPrewarmAssertion = self->_isVisibleLibrarySearchPrewarmAssertion;
  self->_isVisibleLibrarySearchPrewarmAssertion = v4;

  [MEMORY[0x1E6979518] setFrameStallSkipRequest:1];
}

- (void)viewDidAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = SBHIconLibraryTableViewController;
  [(SBHIconLibraryTableViewController *)&v5 viewDidAppear:appear];
  self->_hasAppeared = 1;
  observer = [(SBHIconLibraryTableViewController *)self observer];
  [observer libraryTableViewControllerDidAppear:self];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v8.receiver = self;
  v8.super_class = SBHIconLibraryTableViewController;
  [(SBHTableViewController *)&v8 viewWillDisappear:disappear];
  observer = [(SBHIconLibraryTableViewController *)self observer];
  [observer libraryTableViewControllerWillDisappear:self];

  searchController = [(SBHIconLibraryTableViewController *)self searchController];
  searchBar = [searchController searchBar];
  [searchBar endEditing:1];

  [(SBHIconLibraryTableViewController *)self _teardownObservedIcons];
  [(BSInvalidatable *)self->_isVisibleLibrarySearchPrewarmAssertion invalidate];
  isVisibleLibrarySearchPrewarmAssertion = self->_isVisibleLibrarySearchPrewarmAssertion;
  self->_isVisibleLibrarySearchPrewarmAssertion = 0;
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = SBHIconLibraryTableViewController;
  [(SBHIconLibraryTableViewController *)&v5 viewDidDisappear:disappear];
  self->_hasAppeared = 0;
  dragSessionsForIconView = self->_dragSessionsForIconView;
  self->_dragSessionsForIconView = 0;

  [(SBHIconLibraryTableViewController *)self _reloadAppIcons];
}

- (void)_updateContentUnavailableConfigurationUsingState:(id)state
{
  stateCopy = state;
  if ([(SBHTableViewController *)self showNoResultsView])
  {
    searchConfiguration = [MEMORY[0x1E69DC8C8] searchConfiguration];
    v5 = [searchConfiguration updatedConfigurationForState:stateCopy];

    v6 = [MEMORY[0x1E69DD1B8] traitCollectionWithUserInterfaceStyle:2];
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    v8 = [secondaryLabelColor resolvedColorWithTraitCollection:v6];

    imageProperties = [v5 imageProperties];
    [imageProperties setTintColor:v8];

    textProperties = [v5 textProperties];
    [textProperties setColor:v8];

    secondaryTextProperties = [v5 secondaryTextProperties];
    [secondaryTextProperties setColor:v8];
  }

  else
  {
    v5 = 0;
  }

  [(SBHIconLibraryTableViewController *)self _setContentUnavailableConfiguration:v5];
}

- (id)_contentUnavailableConfigurationState
{
  v10.receiver = self;
  v10.super_class = SBHIconLibraryTableViewController;
  _contentUnavailableConfigurationState = [(SBHIconLibraryTableViewController *)&v10 _contentUnavailableConfigurationState];
  _searchTextField = [(SBHIconLibraryTableViewController *)self _searchTextField];
  searchText = [_searchTextField searchText];

  if ([searchText length] >= 0x3E9)
  {
    v6 = [searchText substringToIndex:999];

    v7 = SBHBundle();
    v8 = [v7 localizedStringForKey:@"CONTENT_UNAVAILABLE_TRUNCATION_ELLIPSIS" value:&stru_1F3D472A8 table:@"SpringBoardHome"];
    searchText = [v6 stringByAppendingString:v8];
  }

  [_contentUnavailableConfigurationState setSearchControllerText:searchText];

  return _contentUnavailableConfigurationState;
}

- (double)headerTopOccludingInset
{
  searchController = [(SBHIconLibraryTableViewController *)self searchController];
  searchBar = [searchController searchBar];
  searchTextField = [searchBar searchTextField];

  if (!searchTextField)
  {
    v36.receiver = self;
    v36.super_class = SBHIconLibraryTableViewController;
    [(SBHTableViewController *)&v36 headerTopOccludingInset];
    goto LABEL_5;
  }

  [searchTextField bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  view = [(SBHIconLibraryTableViewController *)self view];
  superview = [view superview];
  [searchTextField convertRect:superview toView:{v7, v9, v11, v13}];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  view2 = [(SBHIconLibraryTableViewController *)self view];
  [view2 frame];
  v41.origin.x = v25;
  v41.origin.y = v26;
  v41.size.width = v27;
  v41.size.height = v28;
  v37.origin.x = v17;
  v37.origin.y = v19;
  v37.size.width = v21;
  v37.size.height = v23;
  v38 = CGRectIntersection(v37, v41);
  x = v38.origin.x;
  y = v38.origin.y;
  width = v38.size.width;
  height = v38.size.height;

  v39.origin.x = x;
  v39.origin.y = y;
  v39.size.width = width;
  v39.size.height = height;
  v33 = 0.0;
  if (!CGRectIsNull(v39))
  {
    v40.origin.x = x;
    v40.origin.y = y;
    v40.size.width = width;
    v40.size.height = height;
    MaxY = CGRectGetMaxY(v40);
LABEL_5:
    v33 = MaxY;
  }

  return v33;
}

- (void)setIconModel:(id)model
{
  modelCopy = model;
  if (([modelCopy isEqual:self->_iconModel] & 1) == 0)
  {
    objc_storeStrong(&self->_iconModel, model);
    [(SBHIconLibraryTableViewController *)self _teardownObservedIcons];
    [(SBHIconLibraryTableViewController *)self _teardownLibrary];
  }
}

- (void)_teardownLibrary
{
  [(SBHIconTableViewDiffableDataSource *)self->_dataSource setIconLibrary:0];
  [(SBHTableViewIconLibrary *)self->_library removeObserver:self];
  library = self->_library;
  self->_library = 0;

  libraryPrewarmAssertions = self->_libraryPrewarmAssertions;
  self->_libraryPrewarmAssertions = 0;

  currentQuery = self->_currentQuery;
  self->_currentQuery = 0;
}

- (void)_setupLibrary
{
  if (!self->_library && self->_iconModel)
  {
    v8 = [(SBHIconLibraryAbstractQueryEngine *)[SBHIconLibrarySpotlightQueryEngine alloc] initWithIconModel:self->_iconModel];
    v3 = [[SBHTableViewIconLibrary alloc] initWithIconModel:self->_iconModel queryEngine:v8];
    library = self->_library;
    self->_library = v3;

    [(SBHTableViewIconLibrary *)self->_library addObserver:self];
    lastQueryResults = [(SBHTableViewIconLibrary *)self->_library lastQueryResults];
    query = [lastQueryResults query];
    currentQuery = self->_currentQuery;
    self->_currentQuery = query;

    [(SBHIconTableViewDiffableDataSource *)self->_dataSource setIconLibrary:self->_library];
  }
}

- (void)setRootFolder:(id)folder
{
  folderCopy = folder;
  if (([(SBRootFolder *)self->_rootFolder isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_rootFolder, folder);
    model = [folderCopy model];
    [(SBHIconLibraryTableViewController *)self setIconModel:model];
  }
}

- (void)setIconViewProvider:(id)provider
{
  obj = provider;
  WeakRetained = objc_loadWeakRetained(&self->_iconViewProvider);

  v6 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_iconViewProvider, obj);
    isViewLoaded = [(SBHIconLibraryTableViewController *)self isViewLoaded];
    v6 = obj;
    if (isViewLoaded)
    {
      tableView = [(SBHIconLibraryTableViewController *)self tableView];
      [tableView reloadData];

      v6 = obj;
    }
  }

  MEMORY[0x1EEE66BB8](isViewLoaded, v6);
}

- (void)setLibraryCategoryMap:(id)map
{
  mapCopy = map;
  if (![(SBHLibraryCategoryMap *)self->_libraryCategoryMap isEqualToCategoryMap:?])
  {
    v4 = [mapCopy copy];
    libraryCategoryMap = self->_libraryCategoryMap;
    self->_libraryCategoryMap = v4;

    if ([(SBHIconLibraryTableViewController *)self isViewLoaded])
    {
      tableView = [(SBHIconLibraryTableViewController *)self tableView];
      [tableView reloadData];
    }
  }
}

- (UIView)headerBlurView
{
  tableView = [(SBHIconLibraryTableViewController *)self tableView];
  v3 = objc_opt_class();
  v4 = tableView;
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  headerBlur = [v6 headerBlur];

  return headerBlur;
}

id __47__SBHIconLibraryTableViewController_dataSource__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = [a2 dequeueReusableCellWithIdentifier:@"IconTableViewCell"];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11 = WeakRetained;
  if (WeakRetained)
  {
    v12 = [WeakRetained focusGroupIdentifier];
    [v9 setFocusGroupIdentifier:v12];

    v13 = [v11 dataSource];
    v14 = [v13 queryResult];
    v15 = [v14 iconForItemIdentifier:v8];

    if (v15)
    {
      [v11 _configureCell:v9 forIcon:v15];
      [v11 _handleAlphaFadeForCell:v9 atIndexPath:v7];
    }

    else
    {
      v16 = SBLogIcon();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        __47__SBHIconLibraryTableViewController_dataSource__block_invoke_cold_1(v8, v16);
      }
    }
  }

  return v9;
}

- (void)_iconModelWillReload:(id)reload
{
  v4 = +[SBHIconLibraryQueryResult nullQueryResults];
  dataSource = self->_dataSource;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __58__SBHIconLibraryTableViewController__iconModelWillReload___block_invoke;
  v6[3] = &unk_1E8088C90;
  v6[4] = self;
  [(SBHIconTableViewDiffableDataSource *)dataSource applyQueryResult:v4 animatingDifferences:0 completion:v6];
}

- (void)_refreshIconIfVisible:(id)visible
{
  visibleCopy = visible;
  if (visibleCopy)
  {
    v13 = visibleCopy;
    dataSource = [(SBHIconLibraryTableViewController *)self dataSource];
    queryResult = [dataSource queryResult];

    v7 = [queryResult indexPathForIcon:v13];
    if (v7)
    {
      tableView = [(SBHIconLibraryTableViewController *)self tableView];
      indexPathsForVisibleRows = [tableView indexPathsForVisibleRows];
      v10 = [indexPathsForVisibleRows containsObject:v7];

      if (v10)
      {
        tableView2 = [(SBHIconLibraryTableViewController *)self tableView];
        v12 = [tableView2 cellForRowAtIndexPath:v7];

        [(SBHIconLibraryTableViewController *)self _configureCell:v12 forIcon:v13];
      }
    }

    visibleCopy = v13;
  }
}

- (void)settings:(id)settings changedValueForKey:(id)key
{
  [(SBHIconLibraryTableViewController *)self _updateShowHeadersFromQueryResult:0, key];
  tableView = [(SBHIconLibraryTableViewController *)self tableView];
  [tableView reloadData];
}

- (void)setLegibilitySettings:(id)settings
{
  settingsCopy = settings;
  if (![(SBHLegibilitySettings *)self->_legibilitySettings isEqual:?])
  {
    objc_storeStrong(&self->_legibilitySettings, settings);
    [(SBHIconLibraryTableViewController *)self _reloadVisibleCells];
  }
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  [view deselectRowAtIndexPath:pathCopy animated:1];
  v8 = [(SBHIconLibraryTableViewController *)self _iconViewAtIndexPath:pathCopy];
  [v8 performTap];
  icon = [v8 icon];
  [(SBHIconLibraryTableViewController *)self _logLaunchOfIcon:icon atIndexPath:pathCopy];
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  if (self->_showHeaders)
  {
    viewCopy = view;
    v7 = [(SBHIconLibraryTableViewController *)self tableView:viewCopy titleForHeaderInSection:section];
    v8 = [viewCopy dequeueReusableHeaderFooterViewWithIdentifier:@"IconTableViewHeaderFooterView"];

    [v8 setTitle:v7];
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    v11 = 4.0;
    if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      v11 = 12.0;
    }

    [v8 setTitleLayoutMargins:{v11, 0.0, 4.0, 0.0}];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  pathCopy = path;
  dataSource = [(SBHIconLibraryTableViewController *)self dataSource];
  queryResult = [dataSource queryResult];
  v9 = [queryResult iconAtIndexPath:pathCopy];

  [(SBHIconLibraryTableViewController *)self _observeIcon:v9];
}

- (void)tableView:(id)view didEndDisplayingCell:(id)cell forRowAtIndexPath:(id)path
{
  icon = [cell icon];
  [(SBHIconLibraryTableViewController *)self _unobserveIcon:icon];
}

- (id)_tableView:(id)view previewForContextMenuConfiguration:(id)configuration
{
  viewCopy = view;
  identifier = [configuration identifier];
  v7 = identifier;
  if (identifier)
  {
    [identifier location];
    v9 = v8;
    v11 = v10;
    iconView = [v7 iconView];
    [viewCopy convertPoint:iconView fromView:{v9, v11}];
    v14 = v13;
    v16 = v15;

    v17 = [viewCopy indexPathForRowAtPoint:{v14, v16}];
    if (v17)
    {
      v18 = [viewCopy cellForRowAtIndexPath:v17];
      v19 = objc_alloc_init(MEMORY[0x1E69DCE28]);
      clearColor = [MEMORY[0x1E69DC888] clearColor];
      [v19 setBackgroundColor:clearColor];

      v21 = [objc_alloc(MEMORY[0x1E69DD070]) initWithView:v18 parameters:v19];
    }

    else
    {
      v21 = 0;
    }
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (void)tableView:(id)view willPerformPreviewActionForMenuWithConfiguration:(id)configuration animator:(id)animator
{
  viewCopy = view;
  configurationCopy = configuration;
  animatorCopy = animator;
  identifier = [configurationCopy identifier];
  v10 = identifier;
  if (identifier)
  {
    iconView = [identifier iconView];
    contextMenuInteraction = [viewCopy contextMenuInteraction];
    [iconView contextMenuInteraction:contextMenuInteraction willPerformPreviewActionForMenuWithConfiguration:configurationCopy animator:animatorCopy];
  }
}

- (void)tableView:(id)view willDisplayContextMenuWithConfiguration:(id)configuration animator:(id)animator
{
  viewCopy = view;
  configurationCopy = configuration;
  animatorCopy = animator;
  identifier = [configurationCopy identifier];
  v10 = identifier;
  if (identifier)
  {
    iconView = [identifier iconView];
    contextMenuInteraction = [viewCopy contextMenuInteraction];
    [iconView contextMenuInteraction:contextMenuInteraction willDisplayMenuForConfiguration:configurationCopy animator:animatorCopy];
  }
}

- (void)tableView:(id)view willEndContextMenuInteractionWithConfiguration:(id)configuration animator:(id)animator
{
  viewCopy = view;
  configurationCopy = configuration;
  animatorCopy = animator;
  identifier = [configurationCopy identifier];
  v10 = identifier;
  if (identifier)
  {
    iconView = [identifier iconView];
    contextMenuInteraction = [viewCopy contextMenuInteraction];
    [iconView contextMenuInteraction:contextMenuInteraction willEndForConfiguration:configurationCopy animator:animatorCopy];
  }
}

- (CGRect)tableView:(id)view frameForSectionIndexGivenProposedFrame:(CGRect)frame
{
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  viewCopy = view;
  [viewCopy frame];
  Height = CGRectGetHeight(v20);
  [viewCopy adjustedContentInset];
  v11 = v10;

  layoutDelegate = [(SBHIconLibraryTableViewController *)self layoutDelegate];
  [layoutDelegate fixedBottomLayoutInsetInWindowCoordinateSpaceForTableViewController:self];
  v14 = v13;

  [(SBHTableViewController *)self keyboardFrame];
  v15 = CGRectGetHeight(v21) - v14;
  if (v15 < 0.0)
  {
    v15 = 0.0;
  }

  v16 = Height - v11 - v15;
  v17 = x;
  v18 = y;
  v19 = width;
  result.size.height = v16;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  dataSource = [(SBHIconLibraryTableViewController *)self dataSource];
  queryResult = [dataSource queryResult];
  v7 = [queryResult titleForSectionAtIndex:section];

  return v7;
}

- (id)tableView:(id)view contextMenuConfigurationForRowAtIndexPath:(id)path point:(CGPoint)point
{
  y = point.y;
  x = point.x;
  viewCopy = view;
  v10 = [(SBHIconLibraryTableViewController *)self _iconViewAtIndexPath:path];
  [viewCopy convertPoint:v10 toView:{x, y}];
  v12 = v11;
  v14 = v13;

  v15 = [v10 contextMenuConfigurationAtLocation:{v12, v14}];

  return v15;
}

- (void)scrollViewDidScroll:(id)scroll
{
  [(SBHScrollableIconViewInteraction *)self->_scrollingInteraction clippingScrollViewDidScroll:scroll];

  [(SBHIconLibraryTableViewController *)self _handleLowQualityAlphaFade];
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  if (![(SBHTableViewController *)self showNoResultsView])
  {
    [(SBHScrollableIconViewInteraction *)self->_scrollingInteraction updateScrolling:1];
    WeakRetained = objc_loadWeakRetained(&self->_observer);
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained libraryTableViewControllerWillBeginDragging:self];
    }
  }
}

- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  if (!decelerate)
  {
    [(SBHScrollableIconViewInteraction *)self->_scrollingInteraction updateScrolling:0];
  }
}

- (void)scrollViewDidEndDecelerating:(id)decelerating
{
  [(SBHScrollableIconViewInteraction *)self->_scrollingInteraction updateScrolling:0];
  WeakRetained = objc_loadWeakRetained(&self->_observer);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained libraryTableViewControllerDidEndDecelerating:self];
  }
}

- (UIEdgeInsets)visibleContainerInsets
{
  headerBlurView = [(SBHIconLibraryTableViewController *)self headerBlurView];
  [headerBlurView frame];
  Height = CGRectGetHeight(v8);

  v4 = 0.0;
  v5 = 0.0;
  v6 = 0.0;
  v7 = Height;
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v7;
  return result;
}

- (void)_handleLowQualityAlphaFade
{
  v14 = *MEMORY[0x1E69E9840];
  if (self->_needsLowQualityAlphaFade)
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    tableView = [(SBHIconLibraryTableViewController *)self tableView];
    indexPathsForVisibleRows = [tableView indexPathsForVisibleRows];

    v5 = [indexPathsForVisibleRows countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v10;
      do
      {
        v8 = 0;
        do
        {
          if (*v10 != v7)
          {
            objc_enumerationMutation(indexPathsForVisibleRows);
          }

          [(SBHIconLibraryTableViewController *)self _handleAlphaFadeForCell:0 atIndexPath:*(*(&v9 + 1) + 8 * v8++)];
        }

        while (v6 != v8);
        v6 = [indexPathsForVisibleRows countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }
  }
}

- (void)_handleAlphaFadeForCell:(id)cell atIndexPath:(id)path
{
  cellCopy = cell;
  pathCopy = path;
  if (cellCopy | pathCopy)
  {
    if (self->_needsLowQualityAlphaFade && self->_hasAppeared)
    {
      tableView = [(SBHIconLibraryTableViewController *)self tableView];
      v8 = cellCopy;
      if (!cellCopy)
      {
        v8 = [tableView cellForRowAtIndexPath:pathCopy];
      }

      cellCopy = v8;
      iconView = [v8 iconView];
      [iconView frame];
      v11 = v10;
      v13 = v12;
      v15 = v14;
      v17 = v16;
      superview = [tableView superview];
      [cellCopy convertRect:superview toView:{v11, v13, v15, v17}];
      v20 = v19;

      [tableView rowHeight];
      [cellCopy setAlpha:{fmin(fmax(v20 / (v21 + v21) * 0.75 / 0.66 + 0.25, 0.25), 1.0)}];
    }
  }

  else
  {
    cellCopy = 0;
  }
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  tableView = [(SBHIconLibraryTableViewController *)self tableView];
  [beginCopy locationInView:tableView];
  v7 = v6;
  v9 = v8;

  v10 = [tableView indexPathForRowAtPoint:{v7, v9}];
  LOBYTE(beginCopy) = v10 == 0;

  return beginCopy;
}

- (void)updateSearchResultsForSearchController:(id)controller
{
  _queryForCurrentSearchTextField = [(SBHIconLibraryTableViewController *)self _queryForCurrentSearchTextField];
  [(SBHIconLibraryTableViewController *)self _executeQuery:_queryForCurrentSearchTextField];
}

- (BOOL)searchControllerShouldReturn:(id)return
{
  currentQuery = [(SBHIconLibraryTableViewController *)self currentQuery];
  searchString = [currentQuery searchString];
  tableView = [searchString length];

  if (tableView)
  {
    _indexPathForDefaultSearchResult = [(SBHIconLibraryTableViewController *)self _indexPathForDefaultSearchResult];
    markedTextRange = [currentQuery markedTextRange];
    LOBYTE(tableView) = markedTextRange == 0;

    if (_indexPathForDefaultSearchResult && !markedTextRange)
    {
      tableView = [(SBHIconLibraryTableViewController *)self tableView];
      [(SBHIconLibraryTableViewController *)self tableView:tableView didSelectRowAtIndexPath:_indexPathForDefaultSearchResult];

      LOBYTE(tableView) = 1;
    }
  }

  return tableView;
}

- (id)iconViewForIcon:(id)icon location:(id)location
{
  iconCopy = icon;
  if ([location isEqualToString:@"SBIconLocationAppLibrarySearch"] && -[SBHIconLibraryTableViewController _isViewControllerVisible](self, "_isViewControllerVisible"))
  {
    dataSource = [(SBHIconLibraryTableViewController *)self dataSource];
    queryResult = [dataSource queryResult];
    v9 = [queryResult indexPathForIcon:iconCopy];

    if (v9 && [(SBHIconLibraryTableViewController *)self _isIndexPathVisible:v9])
    {
      v10 = [(SBHIconLibraryTableViewController *)self _iconViewAtIndexPath:v9];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)firstIconViewForIcon:(id)icon inLocations:(id)locations
{
  iconCopy = icon;
  if ([locations containsObject:@"SBIconLocationAppLibrarySearch"] && -[SBHIconLibraryTableViewController _isViewControllerVisible](self, "_isViewControllerVisible"))
  {
    v7 = [(SBHIconLibraryTableViewController *)self firstIconViewForIcon:iconCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)firstIconViewForIcon:(id)icon
{
  iconCopy = icon;
  if ([(SBHIconLibraryTableViewController *)self _isViewControllerVisible])
  {
    dataSource = [(SBHIconLibraryTableViewController *)self dataSource];
    queryResult = [dataSource queryResult];
    v7 = [queryResult indexPathForIcon:iconCopy];

    if ([(SBHIconLibraryTableViewController *)self _isIndexPathVisible:v7])
    {
      v8 = [(SBHIconLibraryTableViewController *)self _iconViewAtIndexPath:v7];
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

  return v8;
}

- (BOOL)isDisplayingIcon:(id)icon
{
  iconCopy = icon;
  if ([(SBHIconLibraryTableViewController *)self _isViewControllerVisible])
  {
    dataSource = [(SBHIconLibraryTableViewController *)self dataSource];
    queryResult = [dataSource queryResult];
    v7 = [queryResult indexPathForIcon:iconCopy];

    if (v7)
    {
      v8 = [(SBHIconLibraryTableViewController *)self _isIndexPathVisible:v7];
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

  return v8;
}

- (BOOL)isDisplayingIcon:(id)icon inLocation:(id)location
{
  iconCopy = icon;
  if ([location isEqualToString:@"SBIconLocationAppLibrarySearch"])
  {
    v7 = [(SBHIconLibraryTableViewController *)self isDisplayingIcon:iconCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isDisplayingIcon:(id)icon inLocations:(id)locations
{
  v19 = *MEMORY[0x1E69E9840];
  iconCopy = icon;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  locationsCopy = locations;
  v8 = [locationsCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(locationsCopy);
        }

        if ([(SBHIconLibraryTableViewController *)self isDisplayingIcon:iconCopy inLocation:*(*(&v14 + 1) + 8 * i), v14])
        {
          v12 = 1;
          goto LABEL_11;
        }
      }

      v9 = [locationsCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_11:

  return v12;
}

- (BOOL)isDisplayingIconView:(id)view
{
  viewCopy = view;
  if ([(SBHIconLibraryTableViewController *)self _isViewControllerVisible])
  {
    dataSource = [(SBHIconLibraryTableViewController *)self dataSource];
    queryResult = [dataSource queryResult];
    icon = [viewCopy icon];
    v8 = [queryResult indexPathForIcon:icon];

    if (v8)
    {
      v9 = [(SBHIconLibraryTableViewController *)self _isIndexPathVisible:v8];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)isDisplayingIconView:(id)view inLocation:(id)location
{
  viewCopy = view;
  if ([location isEqualToString:@"SBIconLocationAppLibrarySearch"])
  {
    v7 = [(SBHIconLibraryTableViewController *)self isDisplayingIconView:viewCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)enumerateDisplayedIconViewsForIcon:(id)icon usingBlock:(id)block
{
  blockCopy = block;
  iconCopy = icon;
  dataSource = [(SBHIconLibraryTableViewController *)self dataSource];
  queryResult = [dataSource queryResult];
  v9 = [queryResult indexPathForIcon:iconCopy];

  if (v9 && [(SBHIconLibraryTableViewController *)self _isIndexPathVisible:v9])
  {
    v10 = [(SBHIconLibraryTableViewController *)self _iconViewAtIndexPath:v9];
    blockCopy[2](blockCopy, v10);
  }
}

- (void)enumerateDisplayedIconViewsUsingBlock:(id)block
{
  blockCopy = block;
  _visibleIcons = [(SBHIconLibraryTableViewController *)self _visibleIcons];
  dataSource = [(SBHIconLibraryTableViewController *)self dataSource];
  queryResult = [dataSource queryResult];

  _visibleSectionIndicies = [(SBHIconLibraryTableViewController *)self _visibleSectionIndicies];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __75__SBHIconLibraryTableViewController_enumerateDisplayedIconViewsUsingBlock___block_invoke;
  v12[3] = &unk_1E808C558;
  v13 = queryResult;
  v14 = _visibleIcons;
  selfCopy = self;
  v16 = blockCopy;
  v9 = blockCopy;
  v10 = _visibleIcons;
  v11 = queryResult;
  [_visibleSectionIndicies enumerateIndexesUsingBlock:v12];
}

void __75__SBHIconLibraryTableViewController_enumerateDisplayedIconViewsUsingBlock___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [*(a1 + 32) iconsForSectionAtIndex:a2];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __75__SBHIconLibraryTableViewController_enumerateDisplayedIconViewsUsingBlock___block_invoke_2;
  v9[3] = &unk_1E808C530;
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v10 = v6;
  v11 = v7;
  v12 = v8;
  v13 = a3;
  [v5 enumerateObjectsUsingBlock:v9];
}

void __75__SBHIconLibraryTableViewController_enumerateDisplayedIconViewsUsingBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) containsObject:v3])
  {
    v4 = [*(a1 + 40) _iconViewForIcon:v3];
    (*(*(a1 + 48) + 16))();
  }
}

- (id)firstIconViewForIcon:(id)icon excludingLocations:(id)locations
{
  locationsCopy = locations;
  iconCopy = icon;
  presentedIconLocations = [(SBHIconLibraryTableViewController *)self presentedIconLocations];
  v9 = [presentedIconLocations mutableCopy];

  [v9 minusSet:locationsCopy];
  allObjects = [v9 allObjects];
  v11 = [(SBHIconLibraryTableViewController *)self firstIconViewForIcon:iconCopy inLocations:allObjects];

  return v11;
}

- (void)iconViewWillBeginDrag:(id)drag
{
  dragCopy = drag;
  [(NSHashTable *)self->_grabbedIconViews addObject:dragCopy];
  icon = [dragCopy icon];
  dataSource = [(SBHIconLibraryTableViewController *)self dataSource];
  queryResult = [dataSource queryResult];
  v7 = [queryResult indexPathForIcon:icon];

  tableView = [(SBHIconLibraryTableViewController *)self tableView];
  v9 = [tableView cellForRowAtIndexPath:v7];

  iconView = [v9 iconView];
  v11 = [iconView isEqual:dragCopy];

  if (v11)
  {
    view = [(SBHIconLibraryTableViewController *)self view];
    [view addSubview:dragCopy];

    [dragCopy setCenter:{10000.0, 10000.0}];
    [v9 setIconView:0];
    [(SBHIconLibraryTableViewController *)self _configureCell:v9 forIcon:icon];
  }
}

- (void)iconViewDidEndDrag:(id)drag
{
  dragCopy = drag;
  [(NSHashTable *)self->_grabbedIconViews removeObject:dragCopy];
  superview = [dragCopy superview];
  view = [(SBHIconLibraryTableViewController *)self view];

  if (superview == view)
  {
    [dragCopy removeFromSuperview];
  }
}

- (BOOL)_observeIcon:(id)icon
{
  iconCopy = icon;
  if (!iconCopy)
  {
    goto LABEL_7;
  }

  observedIcons = self->_observedIcons;
  if (!observedIcons)
  {
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v7 = self->_observedIcons;
    self->_observedIcons = weakObjectsHashTable;

    observedIcons = self->_observedIcons;
  }

  if (![(NSHashTable *)observedIcons containsObject:iconCopy]&& [(SBHIconLibraryTableViewController *)self _startObservingIcon:iconCopy])
  {
    [(NSHashTable *)self->_observedIcons addObject:iconCopy];
    v8 = 1;
  }

  else
  {
LABEL_7:
    v8 = 0;
  }

  return v8;
}

- (void)_unobserveIcon:(id)icon
{
  if (icon)
  {
    observedIcons = self->_observedIcons;
    iconCopy = icon;
    [(NSHashTable *)observedIcons removeObject:iconCopy];
    [(SBHIconLibraryTableViewController *)self _stopObservingIcon:iconCopy];
  }
}

- (BOOL)_startObservingIcon:(id)icon
{
  iconCopy = icon;
  bs_isAppearingOrAppeared = [(SBHIconLibraryTableViewController *)self bs_isAppearingOrAppeared];
  if (bs_isAppearingOrAppeared)
  {
    [iconCopy addObserver:self];
  }

  return bs_isAppearingOrAppeared;
}

- (void)_teardownObservedIcons
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_observedIcons;
  v4 = [(NSHashTable *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [(SBHIconLibraryTableViewController *)self _stopObservingIcon:*(*(&v9 + 1) + 8 * v7++), v9];
      }

      while (v5 != v7);
      v5 = [(NSHashTable *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  observedIcons = self->_observedIcons;
  self->_observedIcons = 0;
}

- (void)_setupObservedIcons
{
  v21 = *MEMORY[0x1E69E9840];
  dataSource = [(SBHIconLibraryTableViewController *)self dataSource];
  queryResult = [dataSource queryResult];

  tableView = [(SBHIconLibraryTableViewController *)self tableView];
  indexPathsForVisibleRows = [tableView indexPathsForVisibleRows];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __56__SBHIconLibraryTableViewController__setupObservedIcons__block_invoke;
  v18[3] = &unk_1E808C4E0;
  v7 = queryResult;
  v19 = v7;
  v8 = [indexPathsForVisibleRows bs_mapNoNulls:v18];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v14 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v15;
    do
    {
      v13 = 0;
      do
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [(SBHIconLibraryTableViewController *)self _observeIcon:*(*(&v14 + 1) + 8 * v13++), v14];
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v14 objects:v20 count:16];
    }

    while (v11);
  }
}

- (id)tableView:(id)view itemsForBeginningDragSession:(id)session atIndexPath:(id)path
{
  sessionCopy = session;
  v8 = [(SBHIconLibraryTableViewController *)self _iconViewAtIndexPath:path];
  v9 = [(SBHIconLibraryTableViewController *)self _processDragItemsForIconView:v8 session:sessionCopy];

  return v9;
}

- (void)tableView:(id)view dragSessionWillBegin:(id)begin
{
  beginCopy = begin;
  v6 = [(SBHIconLibraryTableViewController *)self _iconViewForDragSession:beginCopy];
  [v6 dragSessionWillBegin:beginCopy];
}

- (void)tableView:(id)view dragSessionDidEnd:(id)end
{
  endCopy = end;
  v6 = [(SBHIconLibraryTableViewController *)self _iconViewForDragSession:endCopy];
  [v6 dragSession:endCopy willEndWithOperation:2];
  [v6 dragSession:endCopy didEndWithOperation:2];
  [(SBHIconLibraryTableViewController *)self _resetDragSession:endCopy];
}

- (id)tableView:(id)view dragPreviewParametersForRowAtIndexPath:(id)path
{
  v4 = objc_alloc_init(MEMORY[0x1E69DC9A0]);
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [v4 setBackgroundColor:clearColor];

  return v4;
}

- (id)_processDragItemsForIconView:(id)view session:(id)session
{
  viewCopy = view;
  sessionCopy = session;
  if ([viewCopy canBeginDrags])
  {
    [(SBHIconLibraryTableViewController *)self _mapIconView:viewCopy forDragSession:sessionCopy];
    objc_initWeak(&location, sessionCopy);
    dragItems = [viewCopy dragItems];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __74__SBHIconLibraryTableViewController__processDragItemsForIconView_session___block_invoke;
    v10[3] = &unk_1E808C5A8;
    objc_copyWeak(&v12, &location);
    v11 = viewCopy;
    [dragItems enumerateObjectsUsingBlock:v10];

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  else
  {
    dragItems = MEMORY[0x1E695E0F0];
  }

  return dragItems;
}

void __74__SBHIconLibraryTableViewController__processDragItemsForIconView_session___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_initWeak(&location, v3);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __74__SBHIconLibraryTableViewController__processDragItemsForIconView_session___block_invoke_2;
  v4[3] = &unk_1E808C580;
  objc_copyWeak(&v6, &location);
  objc_copyWeak(&v7, (a1 + 40));
  v5 = *(a1 + 32);
  [v3 setPreviewProvider:v4];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

id __74__SBHIconLibraryTableViewController__processDragItemsForIconView_session___block_invoke_2(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 5);
  v3 = objc_loadWeakRetained(a1 + 6);
  v4 = [a1[4] dragPreviewForItem:WeakRetained session:v3];
  v5 = [v4 parameters];
  v6 = [v4 view];
  if ([a1[4] isDragging] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v6 setDragState:2];
  }

  v7 = [objc_alloc(MEMORY[0x1E69DC998]) initWithView:v6 parameters:v5];

  return v7;
}

- (id)_iconViewForDragSession:(id)session
{
  v20 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  keyEnumerator = [(NSMapTable *)self->_dragSessionsForIconView keyEnumerator];
  v6 = [keyEnumerator countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(keyEnumerator);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [(NSMapTable *)self->_dragSessionsForIconView objectForKey:v10];
        v12 = v11;
        if (v11 == sessionCopy)
        {
          v13 = v10;

          goto LABEL_11;
        }
      }

      v7 = [keyEnumerator countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_11:

  return v13;
}

- (void)_mapIconView:(id)view forDragSession:(id)session
{
  viewCopy = view;
  sessionCopy = session;
  dragSessionsForIconView = self->_dragSessionsForIconView;
  if (!dragSessionsForIconView)
  {
    weakToStrongObjectsMapTable = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    v9 = self->_dragSessionsForIconView;
    self->_dragSessionsForIconView = weakToStrongObjectsMapTable;

    dragSessionsForIconView = self->_dragSessionsForIconView;
  }

  [(NSMapTable *)dragSessionsForIconView setObject:sessionCopy forKey:viewCopy];
}

- (void)_resetDragSession:(id)session
{
  v19 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(NSMapTable *)self->_dragSessionsForIconView copy];
  keyEnumerator = [v5 keyEnumerator];

  v7 = [keyEnumerator countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(keyEnumerator);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        v12 = [(NSMapTable *)self->_dragSessionsForIconView objectForKey:v11];

        if (v12 == sessionCopy)
        {
          [(NSMapTable *)self->_dragSessionsForIconView removeObjectForKey:v11];
        }
      }

      v8 = [keyEnumerator countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  if (![(NSMapTable *)self->_dragSessionsForIconView count])
  {
    dragSessionsForIconView = self->_dragSessionsForIconView;
    self->_dragSessionsForIconView = 0;
  }
}

uint64_t __48__SBHIconLibraryTableViewController__iconFilter__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isLeafIcon])
  {
    v3 = [v2 isWidgetIcon] ^ 1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)_executeQuery:(id)query
{
  queryCopy = query;
  if ((BSEqualObjects() & 1) != 0 || (v6 = -[SBHIconLibraryTableViewController _appearState](self, "_appearState"), v7 = -[SBHIconLibraryTableViewController disablesNullQueryExecution](self, "disablesNullQueryExecution"), -[SBHIconLibraryTableViewController _nullQuery](self, "_nullQuery"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [queryCopy isEqual:v8], v8, v9) && (v6 == 0 || v7))
  {
    v10 = 0;
  }

  else
  {
    objc_storeStrong(&self->_currentQuery, query);
    library = [(SBHIconLibraryTableViewController *)self library];
    [library executeQuery:self->_currentQuery];

    [(SBHIconLibraryTableViewController *)self _setNeedsUpdateContentUnavailableConfiguration];
    [(SBHIconLibraryTableViewController *)self _updateShowHeadersFromQueryResult:0];
    v10 = 1;
  }

  return v10;
}

- (void)_reloadAppIcons
{
  if (self->_library)
  {
    _nullQuery = self->_currentQuery;
    if (!_nullQuery)
    {
      _nullQuery = [(SBHIconLibraryTableViewController *)self _nullQuery];
    }

    v4 = _nullQuery;
    [(SBHIconLibraryTableViewController *)self _executeQuery:_nullQuery];
  }
}

- (void)iconLibrary:(id)library hasUpdatedQueryResult:(id)result
{
  resultCopy = result;
  query = [resultCopy query];
  objc_storeStrong(&self->_currentQuery, query);
  [(SBHIconLibraryTableViewController *)self _updateShowHeadersFromQueryResult:resultCopy];
  dataSource = [(SBHIconLibraryTableViewController *)self dataSource];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __71__SBHIconLibraryTableViewController_iconLibrary_hasUpdatedQueryResult___block_invoke;
  v14[3] = &unk_1E8088C90;
  v14[4] = self;
  [dataSource applyQueryResult:resultCopy animatingDifferences:0 completion:v14];

  v8 = [(SBHIconLibraryTableViewController *)self _shouldShowNoResultsViewForQueryResult:resultCopy];
  [(SBHTableViewController *)self setShowNoResultsView:v8];
  [(SBHIconLibraryTableViewController *)self _setNeedsUpdateContentUnavailableConfiguration];
  searchString = [query searchString];
  v10 = [searchString length];

  _searchTextField = [(SBHIconLibraryTableViewController *)self _searchTextField];
  v12 = _searchTextField;
  if (v8 || !v10 || [_searchTextField hasMarkedText])
  {
    v13 = 6;
  }

  else
  {
    v13 = 1;
  }

  [v12 setReturnKeyType:v13];
}

void __71__SBHIconLibraryTableViewController_iconLibrary_hasUpdatedQueryResult___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) tableView];
  [v1 reloadSectionIndexTitles];
}

- (void)_updateShowHeadersFromQueryResult:(id)result
{
  resultCopy = result;
  if (!resultCopy)
  {
    dataSource = [(SBHIconLibraryTableViewController *)self dataSource];
    queryResult = [dataSource queryResult];

    resultCopy = queryResult;
  }

  v12 = resultCopy;
  query = [resultCopy query];
  if (query && (v7 = query, [v12 query], v8 = objc_claimAutoreleasedReturnValue(), v9 = SBLibraryUseSectionsForQuery(v8), v8, v7, !v9))
  {
    self->_showHeaders = 0;
  }

  else
  {
    minimumNumberOfIconsToShowSectionHeaderInDeweySearch = [(SBHAppLibrarySettings *)self->_settings minimumNumberOfIconsToShowSectionHeaderInDeweySearch];
    self->_showHeaders = [v12 totalNumberOfItems] > minimumNumberOfIconsToShowSectionHeaderInDeweySearch;
  }

  [(SBHIconLibraryTableViewController *)self _updateSectionHeaderHeight];
}

- (void)_updateSectionHeaderHeight
{
  tableView = [(SBHIconLibraryTableViewController *)self tableView];
  v5 = tableView;
  v4 = *MEMORY[0x1E69DE3D0];
  if (!self->_showHeaders)
  {
    v4 = 0.0;
  }

  [tableView setSectionHeaderHeight:v4];
}

- (void)_reloadVisibleCells
{
  if ([(SBHIconLibraryTableViewController *)self _isViewControllerVisible])
  {
    _visibleIndexPaths = [(SBHIconLibraryTableViewController *)self _visibleIndexPaths];
    allObjects = [_visibleIndexPaths allObjects];
    [(SBHIconLibraryTableViewController *)self _reloadRowsAtIndexPaths:allObjects];
  }
}

- (void)_reloadRowsAtIndexPaths:(id)paths
{
  dataSource = self->_dataSource;
  pathsCopy = paths;
  queryResult = [(SBHIconTableViewDiffableDataSource *)dataSource queryResult];
  snapshot = [queryResult snapshot];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __61__SBHIconLibraryTableViewController__reloadRowsAtIndexPaths___block_invoke;
  v9[3] = &unk_1E808C4E0;
  v9[4] = self;
  v8 = [pathsCopy bs_map:v9];

  [snapshot reloadItemsWithIdentifiers:v8];
}

id __50__SBHIconLibraryTableViewController__visibleIcons__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 dataSource];
  v5 = [v4 queryResult];
  v6 = [v5 iconAtIndexPath:v3];

  return v6;
}

- (BOOL)_isIndexPathVisible:(id)visible
{
  visibleCopy = visible;
  _visibleIndexPaths = [(SBHIconLibraryTableViewController *)self _visibleIndexPaths];
  v6 = [_visibleIndexPaths containsObject:visibleCopy];

  return v6;
}

- (void)_configureCell:(id)cell forIcon:(id)icon
{
  cellCopy = cell;
  iconCopy = icon;
  listLayoutProvider = [(SBHIconLibraryTableViewController *)self listLayoutProvider];
  if (listLayoutProvider)
  {
    iconViewProvider = [(SBHIconLibraryTableViewController *)self iconViewProvider];
    iconView = [cellCopy iconView];
    iconView2 = [cellCopy iconView];
    if (!iconView2 || (v11 = iconView2, v12 = [(NSHashTable *)self->_grabbedIconViews containsObject:iconView], v11, v12))
    {
      _createIconView = [(SBHIconLibraryTableViewController *)self _createIconView];

      iconView = _createIconView;
    }

    [iconViewProvider configureIconView:iconView forIcon:iconCopy];
    [iconView setLabelHidden:1];
    [iconView setAllowsLabelArea:0];
    [iconView setAllowsCloseBox:0];
    [iconView setAllowsAccessoryView:0];
    iconImageCache = [(SBHIconLibraryTableViewController *)self iconImageCache];
    [iconView setIconImageCache:iconImageCache];

    [iconView setListLayoutProvider:listLayoutProvider];
    [iconView setLocation:@"SBIconLocationAppLibrarySearch"];
    [iconView addObserver:self];
    [iconView setImageLoadingBehavior:1];
    [iconView setIcon:iconCopy];
    [cellCopy setIconView:iconView];
    [cellCopy configureCellForIcon:iconCopy];
    legibilitySettings = [(SBHIconLibraryTableViewController *)self legibilitySettings];
    [cellCopy setLegibilitySettings:legibilitySettings];
  }
}

- (BOOL)_shouldShowNoResultsViewForQueryResult:(id)result
{
  resultCopy = result;
  if (([(SBHIconLibraryTableViewController *)self bs_isDisappearingOrDisappeared]& 1) == 0)
  {
    if ([resultCopy isNullQueryResult])
    {
      LOBYTE(query) = 1;
      goto LABEL_8;
    }

    query = [resultCopy query];

    if (!query)
    {
      goto LABEL_8;
    }

    query2 = [resultCopy query];
    searchString = [query2 searchString];
    v8 = [searchString length];

    if (v8)
    {
      snapshot = [resultCopy snapshot];
      LOBYTE(query) = [snapshot numberOfItems] < 1;

      goto LABEL_8;
    }
  }

  LOBYTE(query) = 0;
LABEL_8:

  return query;
}

- (void)_logLaunchOfIcon:(id)icon atIndexPath:(id)path
{
  iconCopy = icon;
  pathCopy = path;
  [(SBHIconLibraryTableViewController *)self _notifyDelegatesOfAppLaunchFromSearchController:iconCopy];
  if (!self->_appDirectoryClient)
  {
    mEMORY[0x1E698AEB0] = [MEMORY[0x1E698AEB0] sharedInstance];
    appDirectoryClient = self->_appDirectoryClient;
    self->_appDirectoryClient = mEMORY[0x1E698AEB0];
  }

  _iconFilter = [(SBHIconLibraryTableViewController *)self _iconFilter];
  v11 = (_iconFilter)[2](_iconFilter, iconCopy);

  if (v11)
  {
    leafIdentifier = [iconCopy leafIdentifier];
    currentQuery = [(SBHIconLibraryTableViewController *)self currentQuery];
    v14 = [pathCopy indexAtPosition:0];
    libraryCategoryMap = [(SBHIconLibraryTableViewController *)self libraryCategoryMap];
    metadata = [libraryCategoryMap metadata];
    v17 = [metadata objectForKey:@"response"];

    v18 = self->_appDirectoryClient;
    date = [MEMORY[0x1E695DF00] date];
    searchString = [currentQuery searchString];
    -[ATXAppDirectoryClient logLaunchFromSearchWithDate:bundleID:bundleIndex:searchQueryLength:searchTab:appDirectoryResponse:](v18, "logLaunchFromSearchWithDate:bundleID:bundleIndex:searchQueryLength:searchTab:appDirectoryResponse:", date, leafIdentifier, v14, [searchString length], 0, v17);
  }

  else
  {
    v21 = SBLogIcon();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [SBHIconLibraryTableViewController _logLaunchOfIcon:v21 atIndexPath:?];
    }
  }
}

- (void)_handleDidTapEmptyResultsArea:(id)area
{
  searchController = [(SBHIconLibraryTableViewController *)self searchController];
  [searchController setActive:0];
}

- (void)_notifyDelegatesOfAppLaunchFromSearchController:(id)controller
{
  controllerCopy = controller;
  WeakRetained = objc_loadWeakRetained(&self->_observer);
  [WeakRetained libraryTableViewControllerDidLaunchIcon:controllerCopy];
}

- (id)_indexPathForDefaultSearchResult
{
  tableView = [(SBHIconLibraryTableViewController *)self tableView];
  indexPathsForVisibleRows = [tableView indexPathsForVisibleRows];
  firstObject = [indexPathsForVisibleRows firstObject];

  return firstObject;
}

- (id)_searchTextField
{
  searchController = [(SBHIconLibraryTableViewController *)self searchController];
  searchBar = [searchController searchBar];
  searchTextField = [searchBar searchTextField];

  return searchTextField;
}

- (id)_queryForCurrentSearchTextField
{
  v27[3] = *MEMORY[0x1E69E9840];
  _searchTextField = [(SBHIconLibraryTableViewController *)self _searchTextField];
  searchText = [_searchTextField searchText];
  markedTextRange = [_searchTextField markedTextRange];
  if (markedTextRange)
  {
    v5 = [_searchTextField textInRange:markedTextRange];
    if ([v5 length])
    {
      beginningOfDocument = [_searchTextField beginningOfDocument];
      endOfDocument = [_searchTextField endOfDocument];
      start = [markedTextRange start];
      v8 = [_searchTextField textRangeFromPosition:beginningOfDocument toPosition:start];

      v9 = [_searchTextField textInRange:v8];
      v10 = v9;
      v11 = &stru_1F3D472A8;
      if (v9)
      {
        v12 = v9;
      }

      else
      {
        v12 = &stru_1F3D472A8;
      }

      v25 = v12;

      v13 = [markedTextRange end];
      v14 = [_searchTextField positionFromPosition:v13 offset:1];

      if (v14)
      {
        v15 = [_searchTextField textRangeFromPosition:v14 toPosition:endOfDocument];
        v16 = [_searchTextField textInRange:v15];
        v17 = beginningOfDocument;
        v18 = v16;
        if (v16)
        {
          v19 = v16;
        }

        else
        {
          v19 = &stru_1F3D472A8;
        }

        v11 = v19;

        beginningOfDocument = v17;
      }

      v27[0] = v25;
      v27[1] = v5;
      v27[2] = v11;
      v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:3];
    }

    else
    {
      v20 = 0;
    }

    v21 = [[SBHIconLibraryQuery alloc] initWithMarkedTextSearchString:searchText markedTextRange:markedTextRange markedTextArray:v20];
  }

  else
  {
    v21 = [[SBHIconLibraryQuery alloc] initWithSearchString:searchText];
  }

  if ([searchText length])
  {
    textInputMode = [_searchTextField textInputMode];
    primaryLanguage = [textInputMode primaryLanguage];
    [(SBHIconLibraryQuery *)v21 setKeyboardLanguageHint:primaryLanguage];
  }

  return v21;
}

- (id)_nullQuery
{
  v2 = [[SBHIconLibraryQuery alloc] initWithSearchString:&stru_1F3D472A8];

  return v2;
}

- (id)_iconViewForIcon:(id)icon
{
  iconCopy = icon;
  dataSource = [(SBHIconLibraryTableViewController *)self dataSource];
  queryResult = [dataSource queryResult];
  v7 = [queryResult indexPathForIcon:iconCopy];

  if (v7)
  {
    v8 = [(SBHIconLibraryTableViewController *)self _iconViewAtIndexPath:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_iconViewAtIndexPath:(id)path
{
  pathCopy = path;
  if ([(SBHIconLibraryTableViewController *)self _isIndexPathVisible:pathCopy])
  {
    tableView = [(SBHIconLibraryTableViewController *)self tableView];
    v6 = [tableView cellForRowAtIndexPath:pathCopy];

    iconView = [v6 iconView];
  }

  else
  {
    iconView = 0;
  }

  return iconView;
}

- (id)_createIconView
{
  v2 = [[SBIconView alloc] initWithConfigurationOptions:2 listLayoutProvider:self->_listLayoutProvider];

  return v2;
}

- (void)_invalidatePrewarmAssertion:(id)assertion
{
  [(NSCountedSet *)self->_libraryPrewarmAssertions removeObject:assertion];
  if (![(NSCountedSet *)self->_libraryPrewarmAssertions count])
  {

    [(SBHIconLibraryTableViewController *)self _teardownLibrary];
  }
}

- (id)acquireLibrarySearchPrewarmAssertionForReason:(id)reason
{
  reasonCopy = reason;
  if (!self->_libraryPrewarmAssertions)
  {
    v5 = [MEMORY[0x1E696AB50] set];
    libraryPrewarmAssertions = self->_libraryPrewarmAssertions;
    self->_libraryPrewarmAssertions = v5;
  }

  v7 = [[_SBHIconLibraryPrewarmAssertion alloc] initWithReason:reasonCopy iconLibraryTableViewController:self];
  [(NSCountedSet *)self->_libraryPrewarmAssertions addObject:v7];
  [(SBHIconLibraryTableViewController *)self _setupLibrary];

  return v7;
}

- (SBHLibrarySearchController)searchController
{
  WeakRetained = objc_loadWeakRetained(&self->_searchController);

  return WeakRetained;
}

- (SBIconViewProviding)iconViewProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_iconViewProvider);

  return WeakRetained;
}

- (SBHIconLibraryTableViewControllerObserver)observer
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);

  return WeakRetained;
}

- (SBHIconLibraryTableViewControllerLayoutDelegate)layoutDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_layoutDelegate);

  return WeakRetained;
}

void __47__SBHIconLibraryTableViewController_dataSource__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1BEB18000, a2, OS_LOG_TYPE_ERROR, "no icon for identifier: %@", &v2, 0xCu);
}

@end