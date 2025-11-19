@interface SBHIconLibraryTableViewController
- (BOOL)_executeQuery:(id)a3;
- (BOOL)_isIndexPathVisible:(id)a3;
- (BOOL)_observeIcon:(id)a3;
- (BOOL)_shouldShowNoResultsViewForQueryResult:(id)a3;
- (BOOL)_startObservingIcon:(id)a3;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (BOOL)isDisplayingIcon:(id)a3;
- (BOOL)isDisplayingIcon:(id)a3 inLocation:(id)a4;
- (BOOL)isDisplayingIcon:(id)a3 inLocations:(id)a4;
- (BOOL)isDisplayingIconView:(id)a3;
- (BOOL)isDisplayingIconView:(id)a3 inLocation:(id)a4;
- (BOOL)searchControllerShouldReturn:(id)a3;
- (CGRect)tableView:(id)a3 frameForSectionIndexGivenProposedFrame:(CGRect)a4;
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
- (id)_iconViewAtIndexPath:(id)a3;
- (id)_iconViewForDragSession:(id)a3;
- (id)_iconViewForIcon:(id)a3;
- (id)_indexPathForDefaultSearchResult;
- (id)_nullQuery;
- (id)_processDragItemsForIconView:(id)a3 session:(id)a4;
- (id)_queryForCurrentSearchTextField;
- (id)_searchTextField;
- (id)_tableView:(id)a3 previewForContextMenuConfiguration:(id)a4;
- (id)_visibleIcons;
- (id)_visibleIndexPaths;
- (id)_visibleSectionIndicies;
- (id)acquireLibrarySearchPrewarmAssertionForReason:(id)a3;
- (id)firstIconViewForIcon:(id)a3;
- (id)firstIconViewForIcon:(id)a3 excludingLocations:(id)a4;
- (id)firstIconViewForIcon:(id)a3 inLocations:(id)a4;
- (id)iconViewForIcon:(id)a3 location:(id)a4;
- (id)tableView:(id)a3 contextMenuConfigurationForRowAtIndexPath:(id)a4 point:(CGPoint)a5;
- (id)tableView:(id)a3 dragPreviewParametersForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 itemsForBeginningDragSession:(id)a4 atIndexPath:(id)a5;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (void)_configureCell:(id)a3 forIcon:(id)a4;
- (void)_handleAlphaFadeForCell:(id)a3 atIndexPath:(id)a4;
- (void)_handleDidTapEmptyResultsArea:(id)a3;
- (void)_handleLowQualityAlphaFade;
- (void)_iconModelWillReload:(id)a3;
- (void)_invalidatePrewarmAssertion:(id)a3;
- (void)_logLaunchOfIcon:(id)a3 atIndexPath:(id)a4;
- (void)_mapIconView:(id)a3 forDragSession:(id)a4;
- (void)_notifyDelegatesOfAppLaunchFromSearchController:(id)a3;
- (void)_refreshIconIfVisible:(id)a3;
- (void)_reloadAppIcons;
- (void)_reloadRowsAtIndexPaths:(id)a3;
- (void)_reloadVisibleCells;
- (void)_resetDragSession:(id)a3;
- (void)_setupLibrary;
- (void)_setupObservedIcons;
- (void)_teardownLibrary;
- (void)_teardownObservedIcons;
- (void)_unobserveIcon:(id)a3;
- (void)_updateContentUnavailableConfigurationUsingState:(id)a3;
- (void)_updateSectionHeaderHeight;
- (void)_updateShowHeadersFromQueryResult:(id)a3;
- (void)enumerateDisplayedIconViewsForIcon:(id)a3 usingBlock:(id)a4;
- (void)enumerateDisplayedIconViewsUsingBlock:(id)a3;
- (void)iconLibrary:(id)a3 hasUpdatedQueryResult:(id)a4;
- (void)iconViewDidEndDrag:(id)a3;
- (void)iconViewWillBeginDrag:(id)a3;
- (void)scrollViewDidEndDecelerating:(id)a3;
- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)setIconModel:(id)a3;
- (void)setIconViewProvider:(id)a3;
- (void)setLegibilitySettings:(id)a3;
- (void)setLibraryCategoryMap:(id)a3;
- (void)setRootFolder:(id)a3;
- (void)settings:(id)a3 changedValueForKey:(id)a4;
- (void)tableView:(id)a3 didEndDisplayingCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 dragSessionDidEnd:(id)a4;
- (void)tableView:(id)a3 dragSessionWillBegin:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)tableView:(id)a3 willDisplayContextMenuWithConfiguration:(id)a4 animator:(id)a5;
- (void)tableView:(id)a3 willEndContextMenuInteractionWithConfiguration:(id)a4 animator:(id)a5;
- (void)tableView:(id)a3 willPerformPreviewActionForMenuWithConfiguration:(id)a4 animator:(id)a5;
- (void)updateSearchResultsForSearchController:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation SBHIconLibraryTableViewController

- (id)_visibleIcons
{
  v3 = [(SBHIconLibraryTableViewController *)self isViewLoaded];
  v4 = MEMORY[0x1E695DFD8];
  if (v3)
  {
    v5 = [(SBHIconLibraryTableViewController *)self _visibleIndexPaths];
    v6 = [v5 allObjects];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __50__SBHIconLibraryTableViewController__visibleIcons__block_invoke;
    v10[3] = &unk_1E808C4E0;
    v10[4] = self;
    v7 = [v6 bs_mapNoNulls:v10];
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
  v3 = [(SBHIconLibraryTableViewController *)self tableView];
  v4 = [v3 indexPathsForVisibleRows];
  v5 = [v2 setWithArray:v4];

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
    v6 = [(SBHIconLibraryTableViewController *)self tableView];
    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = __47__SBHIconLibraryTableViewController_dataSource__block_invoke;
    v13 = &unk_1E808C508;
    objc_copyWeak(&v14, &location);
    v7 = [(UITableViewDiffableDataSource *)v5 initWithTableView:v6 cellProvider:&v10];
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
  v4 = [(SBHIconLibraryTableViewController *)self _visibleIndexPaths];
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v4);
        }

        [v3 addIndex:{objc_msgSend(*(*(&v10 + 1) + 8 * i), "section")}];
      }

      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
    v6 = [v5 appLibrarySettings];
    settings = v2->_settings;
    v2->_settings = v6;

    v8 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    grabbedIconViews = v2->_grabbedIconViews;
    v2->_grabbedIconViews = v8;

    v10 = [(SBHScrollableIconViewInteraction *)[SBHScrollableZoomingIconViewInteraction alloc] initWithContainer:v2];
    scrollingInteraction = v2->_scrollingInteraction;
    v2->_scrollingInteraction = &v10->super;

    [(PTSettings *)v2->_settings addKeyObserver:v2];
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SBHIconLibraryTableViewController-<%p>", v2];
    [(SBHIconLibraryTableViewController *)v2 setFocusGroupIdentifier:v12];

    v13 = [MEMORY[0x1E69DC938] currentDevice];
    v2->_needsLowQualityAlphaFade = [v13 sbf_featherBlurGraphicsQuality] < 100;
  }

  return v2;
}

- (void)viewDidLoad
{
  v49.receiver = self;
  v49.super_class = SBHIconLibraryTableViewController;
  [(SBHTableViewController *)&v49 viewDidLoad];
  v3 = [(SBHIconLibraryTableViewController *)self listLayoutProvider];
  v4 = [v3 layoutForIconLocation:@"SBIconLocationAppLibrarySearch"];
  [v4 iconImageInfo];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  [SBHIconTableViewCell defaultTableViewCellHeightForIconImageInfo:v6, v8, v10, v12];
  v48 = v13;
  v14 = [v3 layoutForIconLocation:@"SBIconLocationAppLibrary"];
  v15 = [v14 appLibraryVisualConfiguration];
  v16 = [v15 usesInsetPlatterSearchAppearance];

  self->_usesPlatterAppearance = v16;
  v17 = [MEMORY[0x1E69DC938] currentDevice];
  v18 = [v17 userInterfaceIdiom];

  if ((v18 & 0xFFFFFFFFFFFFFFFBLL) == 1)
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
    v27 = [v3 layoutForIconLocation:@"SBIconLocationRoot"];
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
  v39 = [(SBHIconLibraryTableViewController *)self tableView];
  [v39 setDragInteractionEnabled:1];
  [v39 setDragDelegate:self];
  [v39 setClipsToBounds:0];
  v40 = [MEMORY[0x1E69DC888] whiteColor];
  [v39 _setSectionIndexColor:v40];

  [v39 setBackgroundView:0];
  [v39 setBackgroundColor:0];
  v41 = [(SBHIconLibraryTableViewController *)self dataSource];
  [v39 setRowHeight:v48];
  v42 = objc_opt_new();
  [v39 setTableFooterView:v42];

  [v39 setPreservesSuperviewLayoutMargins:0];
  v43 = objc_opt_self();
  [v39 registerClass:v43 forCellReuseIdentifier:@"IconTableViewCell"];

  v44 = objc_opt_self();
  [v39 registerClass:v44 forHeaderFooterViewReuseIdentifier:@"IconTableViewHeaderFooterView"];

  [v39 setContentInsetAdjustmentBehavior:1];
  [v39 setKeyboardDismissMode:1];
  [v39 _setDrawsSeparatorAtTopOfSections:0];
  [v39 setInsetsContentViewsToSafeArea:0];
  [v39 setLayoutMargins:{v20, v22, v24, v26}];
  [v39 setSeparatorInset:{v32, v34, v36, v38}];
  [v39 setSectionHeaderTopPadding:0.0];
  if (v16)
  {
    [v39 _setHeaderAndFooterViewsFloat:0];
    self->_needsLowQualityAlphaFade = 0;
  }

  else
  {
    [v39 _setUseLegacySectionHeaderFooterPinningBehavior:1];
  }

  [(SBHIconLibraryTableViewController *)self _updateSectionHeaderHeight];
  v45 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel__handleDidTapEmptyResultsArea_];
  [v45 setCancelsTouchesInView:0];
  [v45 setDelaysTouchesBegan:0];
  [v45 setDelaysTouchesEnded:0];
  [v45 setDelegate:self];
  [v39 addGestureRecognizer:v45];
  v46 = [MEMORY[0x1E69DC888] colorWithRed:0.1 green:0.1 blue:0.1 alpha:1.0];
  v47 = [MEMORY[0x1E69DD248] vibrantEffectWithCompositingMode:24 compositingColor:v46];
  [v39 setSeparatorEffect:v47];
}

- (void)viewWillAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = SBHIconLibraryTableViewController;
  [(SBHTableViewController *)&v6 viewWillAppear:a3];
  [(SBHIconLibraryTableViewController *)self _setupObservedIcons];
  v4 = [(SBHIconLibraryTableViewController *)self acquireLibrarySearchPrewarmAssertionForReason:@"SBHIconLibraryTableViewController view will appear"];
  isVisibleLibrarySearchPrewarmAssertion = self->_isVisibleLibrarySearchPrewarmAssertion;
  self->_isVisibleLibrarySearchPrewarmAssertion = v4;

  [MEMORY[0x1E6979518] setFrameStallSkipRequest:1];
}

- (void)viewDidAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = SBHIconLibraryTableViewController;
  [(SBHIconLibraryTableViewController *)&v5 viewDidAppear:a3];
  self->_hasAppeared = 1;
  v4 = [(SBHIconLibraryTableViewController *)self observer];
  [v4 libraryTableViewControllerDidAppear:self];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = SBHIconLibraryTableViewController;
  [(SBHTableViewController *)&v8 viewWillDisappear:a3];
  v4 = [(SBHIconLibraryTableViewController *)self observer];
  [v4 libraryTableViewControllerWillDisappear:self];

  v5 = [(SBHIconLibraryTableViewController *)self searchController];
  v6 = [v5 searchBar];
  [v6 endEditing:1];

  [(SBHIconLibraryTableViewController *)self _teardownObservedIcons];
  [(BSInvalidatable *)self->_isVisibleLibrarySearchPrewarmAssertion invalidate];
  isVisibleLibrarySearchPrewarmAssertion = self->_isVisibleLibrarySearchPrewarmAssertion;
  self->_isVisibleLibrarySearchPrewarmAssertion = 0;
}

- (void)viewDidDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = SBHIconLibraryTableViewController;
  [(SBHIconLibraryTableViewController *)&v5 viewDidDisappear:a3];
  self->_hasAppeared = 0;
  dragSessionsForIconView = self->_dragSessionsForIconView;
  self->_dragSessionsForIconView = 0;

  [(SBHIconLibraryTableViewController *)self _reloadAppIcons];
}

- (void)_updateContentUnavailableConfigurationUsingState:(id)a3
{
  v12 = a3;
  if ([(SBHTableViewController *)self showNoResultsView])
  {
    v4 = [MEMORY[0x1E69DC8C8] searchConfiguration];
    v5 = [v4 updatedConfigurationForState:v12];

    v6 = [MEMORY[0x1E69DD1B8] traitCollectionWithUserInterfaceStyle:2];
    v7 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    v8 = [v7 resolvedColorWithTraitCollection:v6];

    v9 = [v5 imageProperties];
    [v9 setTintColor:v8];

    v10 = [v5 textProperties];
    [v10 setColor:v8];

    v11 = [v5 secondaryTextProperties];
    [v11 setColor:v8];
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
  v3 = [(SBHIconLibraryTableViewController *)&v10 _contentUnavailableConfigurationState];
  v4 = [(SBHIconLibraryTableViewController *)self _searchTextField];
  v5 = [v4 searchText];

  if ([v5 length] >= 0x3E9)
  {
    v6 = [v5 substringToIndex:999];

    v7 = SBHBundle();
    v8 = [v7 localizedStringForKey:@"CONTENT_UNAVAILABLE_TRUNCATION_ELLIPSIS" value:&stru_1F3D472A8 table:@"SpringBoardHome"];
    v5 = [v6 stringByAppendingString:v8];
  }

  [v3 setSearchControllerText:v5];

  return v3;
}

- (double)headerTopOccludingInset
{
  v3 = [(SBHIconLibraryTableViewController *)self searchController];
  v4 = [v3 searchBar];
  v5 = [v4 searchTextField];

  if (!v5)
  {
    v36.receiver = self;
    v36.super_class = SBHIconLibraryTableViewController;
    [(SBHTableViewController *)&v36 headerTopOccludingInset];
    goto LABEL_5;
  }

  [v5 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = [(SBHIconLibraryTableViewController *)self view];
  v15 = [v14 superview];
  [v5 convertRect:v15 toView:{v7, v9, v11, v13}];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v24 = [(SBHIconLibraryTableViewController *)self view];
  [v24 frame];
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

- (void)setIconModel:(id)a3
{
  v5 = a3;
  if (([v5 isEqual:self->_iconModel] & 1) == 0)
  {
    objc_storeStrong(&self->_iconModel, a3);
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
    v5 = [(SBHTableViewIconLibrary *)self->_library lastQueryResults];
    v6 = [v5 query];
    currentQuery = self->_currentQuery;
    self->_currentQuery = v6;

    [(SBHIconTableViewDiffableDataSource *)self->_dataSource setIconLibrary:self->_library];
  }
}

- (void)setRootFolder:(id)a3
{
  v6 = a3;
  if (([(SBRootFolder *)self->_rootFolder isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_rootFolder, a3);
    v5 = [v6 model];
    [(SBHIconLibraryTableViewController *)self setIconModel:v5];
  }
}

- (void)setIconViewProvider:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_iconViewProvider);

  v6 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_iconViewProvider, obj);
    v5 = [(SBHIconLibraryTableViewController *)self isViewLoaded];
    v6 = obj;
    if (v5)
    {
      v7 = [(SBHIconLibraryTableViewController *)self tableView];
      [v7 reloadData];

      v6 = obj;
    }
  }

  MEMORY[0x1EEE66BB8](v5, v6);
}

- (void)setLibraryCategoryMap:(id)a3
{
  v7 = a3;
  if (![(SBHLibraryCategoryMap *)self->_libraryCategoryMap isEqualToCategoryMap:?])
  {
    v4 = [v7 copy];
    libraryCategoryMap = self->_libraryCategoryMap;
    self->_libraryCategoryMap = v4;

    if ([(SBHIconLibraryTableViewController *)self isViewLoaded])
    {
      v6 = [(SBHIconLibraryTableViewController *)self tableView];
      [v6 reloadData];
    }
  }
}

- (UIView)headerBlurView
{
  v2 = [(SBHIconLibraryTableViewController *)self tableView];
  v3 = objc_opt_class();
  v4 = v2;
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

  v7 = [v6 headerBlur];

  return v7;
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

- (void)_iconModelWillReload:(id)a3
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

- (void)_refreshIconIfVisible:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v13 = v4;
    v5 = [(SBHIconLibraryTableViewController *)self dataSource];
    v6 = [v5 queryResult];

    v7 = [v6 indexPathForIcon:v13];
    if (v7)
    {
      v8 = [(SBHIconLibraryTableViewController *)self tableView];
      v9 = [v8 indexPathsForVisibleRows];
      v10 = [v9 containsObject:v7];

      if (v10)
      {
        v11 = [(SBHIconLibraryTableViewController *)self tableView];
        v12 = [v11 cellForRowAtIndexPath:v7];

        [(SBHIconLibraryTableViewController *)self _configureCell:v12 forIcon:v13];
      }
    }

    v4 = v13;
  }
}

- (void)settings:(id)a3 changedValueForKey:(id)a4
{
  [(SBHIconLibraryTableViewController *)self _updateShowHeadersFromQueryResult:0, a4];
  v5 = [(SBHIconLibraryTableViewController *)self tableView];
  [v5 reloadData];
}

- (void)setLegibilitySettings:(id)a3
{
  v5 = a3;
  if (![(SBHLegibilitySettings *)self->_legibilitySettings isEqual:?])
  {
    objc_storeStrong(&self->_legibilitySettings, a3);
    [(SBHIconLibraryTableViewController *)self _reloadVisibleCells];
  }
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  [a3 deselectRowAtIndexPath:v6 animated:1];
  v8 = [(SBHIconLibraryTableViewController *)self _iconViewAtIndexPath:v6];
  [v8 performTap];
  v7 = [v8 icon];
  [(SBHIconLibraryTableViewController *)self _logLaunchOfIcon:v7 atIndexPath:v6];
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  if (self->_showHeaders)
  {
    v6 = a3;
    v7 = [(SBHIconLibraryTableViewController *)self tableView:v6 titleForHeaderInSection:a4];
    v8 = [v6 dequeueReusableHeaderFooterViewWithIdentifier:@"IconTableViewHeaderFooterView"];

    [v8 setTitle:v7];
    v9 = [MEMORY[0x1E69DC938] currentDevice];
    v10 = [v9 userInterfaceIdiom];

    v11 = 4.0;
    if ((v10 & 0xFFFFFFFFFFFFFFFBLL) == 1)
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

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v6 = a5;
  v7 = [(SBHIconLibraryTableViewController *)self dataSource];
  v8 = [v7 queryResult];
  v9 = [v8 iconAtIndexPath:v6];

  [(SBHIconLibraryTableViewController *)self _observeIcon:v9];
}

- (void)tableView:(id)a3 didEndDisplayingCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v6 = [a4 icon];
  [(SBHIconLibraryTableViewController *)self _unobserveIcon:v6];
}

- (id)_tableView:(id)a3 previewForContextMenuConfiguration:(id)a4
{
  v5 = a3;
  v6 = [a4 identifier];
  v7 = v6;
  if (v6)
  {
    [v6 location];
    v9 = v8;
    v11 = v10;
    v12 = [v7 iconView];
    [v5 convertPoint:v12 fromView:{v9, v11}];
    v14 = v13;
    v16 = v15;

    v17 = [v5 indexPathForRowAtPoint:{v14, v16}];
    if (v17)
    {
      v18 = [v5 cellForRowAtIndexPath:v17];
      v19 = objc_alloc_init(MEMORY[0x1E69DCE28]);
      v20 = [MEMORY[0x1E69DC888] clearColor];
      [v19 setBackgroundColor:v20];

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

- (void)tableView:(id)a3 willPerformPreviewActionForMenuWithConfiguration:(id)a4 animator:(id)a5
{
  v13 = a3;
  v7 = a4;
  v8 = a5;
  v9 = [v7 identifier];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 iconView];
    v12 = [v13 contextMenuInteraction];
    [v11 contextMenuInteraction:v12 willPerformPreviewActionForMenuWithConfiguration:v7 animator:v8];
  }
}

- (void)tableView:(id)a3 willDisplayContextMenuWithConfiguration:(id)a4 animator:(id)a5
{
  v13 = a3;
  v7 = a4;
  v8 = a5;
  v9 = [v7 identifier];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 iconView];
    v12 = [v13 contextMenuInteraction];
    [v11 contextMenuInteraction:v12 willDisplayMenuForConfiguration:v7 animator:v8];
  }
}

- (void)tableView:(id)a3 willEndContextMenuInteractionWithConfiguration:(id)a4 animator:(id)a5
{
  v13 = a3;
  v7 = a4;
  v8 = a5;
  v9 = [v7 identifier];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 iconView];
    v12 = [v13 contextMenuInteraction];
    [v11 contextMenuInteraction:v12 willEndForConfiguration:v7 animator:v8];
  }
}

- (CGRect)tableView:(id)a3 frameForSectionIndexGivenProposedFrame:(CGRect)a4
{
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v8 = a3;
  [v8 frame];
  Height = CGRectGetHeight(v20);
  [v8 adjustedContentInset];
  v11 = v10;

  v12 = [(SBHIconLibraryTableViewController *)self layoutDelegate];
  [v12 fixedBottomLayoutInsetInWindowCoordinateSpaceForTableViewController:self];
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

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v5 = [(SBHIconLibraryTableViewController *)self dataSource];
  v6 = [v5 queryResult];
  v7 = [v6 titleForSectionAtIndex:a4];

  return v7;
}

- (id)tableView:(id)a3 contextMenuConfigurationForRowAtIndexPath:(id)a4 point:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  v9 = a3;
  v10 = [(SBHIconLibraryTableViewController *)self _iconViewAtIndexPath:a4];
  [v9 convertPoint:v10 toView:{x, y}];
  v12 = v11;
  v14 = v13;

  v15 = [v10 contextMenuConfigurationAtLocation:{v12, v14}];

  return v15;
}

- (void)scrollViewDidScroll:(id)a3
{
  [(SBHScrollableIconViewInteraction *)self->_scrollingInteraction clippingScrollViewDidScroll:a3];

  [(SBHIconLibraryTableViewController *)self _handleLowQualityAlphaFade];
}

- (void)scrollViewWillBeginDragging:(id)a3
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

- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4
{
  if (!a4)
  {
    [(SBHScrollableIconViewInteraction *)self->_scrollingInteraction updateScrolling:0];
  }
}

- (void)scrollViewDidEndDecelerating:(id)a3
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
  v2 = [(SBHIconLibraryTableViewController *)self headerBlurView];
  [v2 frame];
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
    v3 = [(SBHIconLibraryTableViewController *)self tableView];
    v4 = [v3 indexPathsForVisibleRows];

    v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
            objc_enumerationMutation(v4);
          }

          [(SBHIconLibraryTableViewController *)self _handleAlphaFadeForCell:0 atIndexPath:*(*(&v9 + 1) + 8 * v8++)];
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }
  }
}

- (void)_handleAlphaFadeForCell:(id)a3 atIndexPath:(id)a4
{
  v22 = a3;
  v6 = a4;
  if (v22 | v6)
  {
    if (self->_needsLowQualityAlphaFade && self->_hasAppeared)
    {
      v7 = [(SBHIconLibraryTableViewController *)self tableView];
      v8 = v22;
      if (!v22)
      {
        v8 = [v7 cellForRowAtIndexPath:v6];
      }

      v22 = v8;
      v9 = [v8 iconView];
      [v9 frame];
      v11 = v10;
      v13 = v12;
      v15 = v14;
      v17 = v16;
      v18 = [v7 superview];
      [v22 convertRect:v18 toView:{v11, v13, v15, v17}];
      v20 = v19;

      [v7 rowHeight];
      [v22 setAlpha:{fmin(fmax(v20 / (v21 + v21) * 0.75 / 0.66 + 0.25, 0.25), 1.0)}];
    }
  }

  else
  {
    v22 = 0;
  }
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = [(SBHIconLibraryTableViewController *)self tableView];
  [v4 locationInView:v5];
  v7 = v6;
  v9 = v8;

  v10 = [v5 indexPathForRowAtPoint:{v7, v9}];
  LOBYTE(v4) = v10 == 0;

  return v4;
}

- (void)updateSearchResultsForSearchController:(id)a3
{
  v4 = [(SBHIconLibraryTableViewController *)self _queryForCurrentSearchTextField];
  [(SBHIconLibraryTableViewController *)self _executeQuery:v4];
}

- (BOOL)searchControllerShouldReturn:(id)a3
{
  v4 = [(SBHIconLibraryTableViewController *)self currentQuery];
  v5 = [v4 searchString];
  v6 = [v5 length];

  if (v6)
  {
    v7 = [(SBHIconLibraryTableViewController *)self _indexPathForDefaultSearchResult];
    v8 = [v4 markedTextRange];
    LOBYTE(v6) = v8 == 0;

    if (v7 && !v8)
    {
      v6 = [(SBHIconLibraryTableViewController *)self tableView];
      [(SBHIconLibraryTableViewController *)self tableView:v6 didSelectRowAtIndexPath:v7];

      LOBYTE(v6) = 1;
    }
  }

  return v6;
}

- (id)iconViewForIcon:(id)a3 location:(id)a4
{
  v6 = a3;
  if ([a4 isEqualToString:@"SBIconLocationAppLibrarySearch"] && -[SBHIconLibraryTableViewController _isViewControllerVisible](self, "_isViewControllerVisible"))
  {
    v7 = [(SBHIconLibraryTableViewController *)self dataSource];
    v8 = [v7 queryResult];
    v9 = [v8 indexPathForIcon:v6];

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

- (id)firstIconViewForIcon:(id)a3 inLocations:(id)a4
{
  v6 = a3;
  if ([a4 containsObject:@"SBIconLocationAppLibrarySearch"] && -[SBHIconLibraryTableViewController _isViewControllerVisible](self, "_isViewControllerVisible"))
  {
    v7 = [(SBHIconLibraryTableViewController *)self firstIconViewForIcon:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)firstIconViewForIcon:(id)a3
{
  v4 = a3;
  if ([(SBHIconLibraryTableViewController *)self _isViewControllerVisible])
  {
    v5 = [(SBHIconLibraryTableViewController *)self dataSource];
    v6 = [v5 queryResult];
    v7 = [v6 indexPathForIcon:v4];

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

- (BOOL)isDisplayingIcon:(id)a3
{
  v4 = a3;
  if ([(SBHIconLibraryTableViewController *)self _isViewControllerVisible])
  {
    v5 = [(SBHIconLibraryTableViewController *)self dataSource];
    v6 = [v5 queryResult];
    v7 = [v6 indexPathForIcon:v4];

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

- (BOOL)isDisplayingIcon:(id)a3 inLocation:(id)a4
{
  v6 = a3;
  if ([a4 isEqualToString:@"SBIconLocationAppLibrarySearch"])
  {
    v7 = [(SBHIconLibraryTableViewController *)self isDisplayingIcon:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isDisplayingIcon:(id)a3 inLocations:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = a4;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v7);
        }

        if ([(SBHIconLibraryTableViewController *)self isDisplayingIcon:v6 inLocation:*(*(&v14 + 1) + 8 * i), v14])
        {
          v12 = 1;
          goto LABEL_11;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
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

- (BOOL)isDisplayingIconView:(id)a3
{
  v4 = a3;
  if ([(SBHIconLibraryTableViewController *)self _isViewControllerVisible])
  {
    v5 = [(SBHIconLibraryTableViewController *)self dataSource];
    v6 = [v5 queryResult];
    v7 = [v4 icon];
    v8 = [v6 indexPathForIcon:v7];

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

- (BOOL)isDisplayingIconView:(id)a3 inLocation:(id)a4
{
  v6 = a3;
  if ([a4 isEqualToString:@"SBIconLocationAppLibrarySearch"])
  {
    v7 = [(SBHIconLibraryTableViewController *)self isDisplayingIconView:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)enumerateDisplayedIconViewsForIcon:(id)a3 usingBlock:(id)a4
{
  v11 = a4;
  v6 = a3;
  v7 = [(SBHIconLibraryTableViewController *)self dataSource];
  v8 = [v7 queryResult];
  v9 = [v8 indexPathForIcon:v6];

  if (v9 && [(SBHIconLibraryTableViewController *)self _isIndexPathVisible:v9])
  {
    v10 = [(SBHIconLibraryTableViewController *)self _iconViewAtIndexPath:v9];
    v11[2](v11, v10);
  }
}

- (void)enumerateDisplayedIconViewsUsingBlock:(id)a3
{
  v4 = a3;
  v5 = [(SBHIconLibraryTableViewController *)self _visibleIcons];
  v6 = [(SBHIconLibraryTableViewController *)self dataSource];
  v7 = [v6 queryResult];

  v8 = [(SBHIconLibraryTableViewController *)self _visibleSectionIndicies];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __75__SBHIconLibraryTableViewController_enumerateDisplayedIconViewsUsingBlock___block_invoke;
  v12[3] = &unk_1E808C558;
  v13 = v7;
  v14 = v5;
  v15 = self;
  v16 = v4;
  v9 = v4;
  v10 = v5;
  v11 = v7;
  [v8 enumerateIndexesUsingBlock:v12];
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

- (id)firstIconViewForIcon:(id)a3 excludingLocations:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SBHIconLibraryTableViewController *)self presentedIconLocations];
  v9 = [v8 mutableCopy];

  [v9 minusSet:v6];
  v10 = [v9 allObjects];
  v11 = [(SBHIconLibraryTableViewController *)self firstIconViewForIcon:v7 inLocations:v10];

  return v11;
}

- (void)iconViewWillBeginDrag:(id)a3
{
  v13 = a3;
  [(NSHashTable *)self->_grabbedIconViews addObject:v13];
  v4 = [v13 icon];
  v5 = [(SBHIconLibraryTableViewController *)self dataSource];
  v6 = [v5 queryResult];
  v7 = [v6 indexPathForIcon:v4];

  v8 = [(SBHIconLibraryTableViewController *)self tableView];
  v9 = [v8 cellForRowAtIndexPath:v7];

  v10 = [v9 iconView];
  v11 = [v10 isEqual:v13];

  if (v11)
  {
    v12 = [(SBHIconLibraryTableViewController *)self view];
    [v12 addSubview:v13];

    [v13 setCenter:{10000.0, 10000.0}];
    [v9 setIconView:0];
    [(SBHIconLibraryTableViewController *)self _configureCell:v9 forIcon:v4];
  }
}

- (void)iconViewDidEndDrag:(id)a3
{
  v6 = a3;
  [(NSHashTable *)self->_grabbedIconViews removeObject:v6];
  v4 = [v6 superview];
  v5 = [(SBHIconLibraryTableViewController *)self view];

  if (v4 == v5)
  {
    [v6 removeFromSuperview];
  }
}

- (BOOL)_observeIcon:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    goto LABEL_7;
  }

  observedIcons = self->_observedIcons;
  if (!observedIcons)
  {
    v6 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v7 = self->_observedIcons;
    self->_observedIcons = v6;

    observedIcons = self->_observedIcons;
  }

  if (![(NSHashTable *)observedIcons containsObject:v4]&& [(SBHIconLibraryTableViewController *)self _startObservingIcon:v4])
  {
    [(NSHashTable *)self->_observedIcons addObject:v4];
    v8 = 1;
  }

  else
  {
LABEL_7:
    v8 = 0;
  }

  return v8;
}

- (void)_unobserveIcon:(id)a3
{
  if (a3)
  {
    observedIcons = self->_observedIcons;
    v5 = a3;
    [(NSHashTable *)observedIcons removeObject:v5];
    [(SBHIconLibraryTableViewController *)self _stopObservingIcon:v5];
  }
}

- (BOOL)_startObservingIcon:(id)a3
{
  v4 = a3;
  v5 = [(SBHIconLibraryTableViewController *)self bs_isAppearingOrAppeared];
  if (v5)
  {
    [v4 addObserver:self];
  }

  return v5;
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
  v3 = [(SBHIconLibraryTableViewController *)self dataSource];
  v4 = [v3 queryResult];

  v5 = [(SBHIconLibraryTableViewController *)self tableView];
  v6 = [v5 indexPathsForVisibleRows];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __56__SBHIconLibraryTableViewController__setupObservedIcons__block_invoke;
  v18[3] = &unk_1E808C4E0;
  v7 = v4;
  v19 = v7;
  v8 = [v6 bs_mapNoNulls:v18];

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

- (id)tableView:(id)a3 itemsForBeginningDragSession:(id)a4 atIndexPath:(id)a5
{
  v7 = a4;
  v8 = [(SBHIconLibraryTableViewController *)self _iconViewAtIndexPath:a5];
  v9 = [(SBHIconLibraryTableViewController *)self _processDragItemsForIconView:v8 session:v7];

  return v9;
}

- (void)tableView:(id)a3 dragSessionWillBegin:(id)a4
{
  v5 = a4;
  v6 = [(SBHIconLibraryTableViewController *)self _iconViewForDragSession:v5];
  [v6 dragSessionWillBegin:v5];
}

- (void)tableView:(id)a3 dragSessionDidEnd:(id)a4
{
  v5 = a4;
  v6 = [(SBHIconLibraryTableViewController *)self _iconViewForDragSession:v5];
  [v6 dragSession:v5 willEndWithOperation:2];
  [v6 dragSession:v5 didEndWithOperation:2];
  [(SBHIconLibraryTableViewController *)self _resetDragSession:v5];
}

- (id)tableView:(id)a3 dragPreviewParametersForRowAtIndexPath:(id)a4
{
  v4 = objc_alloc_init(MEMORY[0x1E69DC9A0]);
  v5 = [MEMORY[0x1E69DC888] clearColor];
  [v4 setBackgroundColor:v5];

  return v4;
}

- (id)_processDragItemsForIconView:(id)a3 session:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 canBeginDrags])
  {
    [(SBHIconLibraryTableViewController *)self _mapIconView:v6 forDragSession:v7];
    objc_initWeak(&location, v7);
    v8 = [v6 dragItems];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __74__SBHIconLibraryTableViewController__processDragItemsForIconView_session___block_invoke;
    v10[3] = &unk_1E808C5A8;
    objc_copyWeak(&v12, &location);
    v11 = v6;
    [v8 enumerateObjectsUsingBlock:v10];

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  else
  {
    v8 = MEMORY[0x1E695E0F0];
  }

  return v8;
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

- (id)_iconViewForDragSession:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [(NSMapTable *)self->_dragSessionsForIconView keyEnumerator];
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [(NSMapTable *)self->_dragSessionsForIconView objectForKey:v10];
        v12 = v11;
        if (v11 == v4)
        {
          v13 = v10;

          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
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

- (void)_mapIconView:(id)a3 forDragSession:(id)a4
{
  v10 = a3;
  v6 = a4;
  dragSessionsForIconView = self->_dragSessionsForIconView;
  if (!dragSessionsForIconView)
  {
    v8 = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    v9 = self->_dragSessionsForIconView;
    self->_dragSessionsForIconView = v8;

    dragSessionsForIconView = self->_dragSessionsForIconView;
  }

  [(NSMapTable *)dragSessionsForIconView setObject:v6 forKey:v10];
}

- (void)_resetDragSession:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(NSMapTable *)self->_dragSessionsForIconView copy];
  v6 = [v5 keyEnumerator];

  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        v12 = [(NSMapTable *)self->_dragSessionsForIconView objectForKey:v11];

        if (v12 == v4)
        {
          [(NSMapTable *)self->_dragSessionsForIconView removeObjectForKey:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
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

- (BOOL)_executeQuery:(id)a3
{
  v5 = a3;
  if ((BSEqualObjects() & 1) != 0 || (v6 = -[SBHIconLibraryTableViewController _appearState](self, "_appearState"), v7 = -[SBHIconLibraryTableViewController disablesNullQueryExecution](self, "disablesNullQueryExecution"), -[SBHIconLibraryTableViewController _nullQuery](self, "_nullQuery"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v5 isEqual:v8], v8, v9) && (v6 == 0 || v7))
  {
    v10 = 0;
  }

  else
  {
    objc_storeStrong(&self->_currentQuery, a3);
    v11 = [(SBHIconLibraryTableViewController *)self library];
    [v11 executeQuery:self->_currentQuery];

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
    v3 = self->_currentQuery;
    if (!v3)
    {
      v3 = [(SBHIconLibraryTableViewController *)self _nullQuery];
    }

    v4 = v3;
    [(SBHIconLibraryTableViewController *)self _executeQuery:v3];
  }
}

- (void)iconLibrary:(id)a3 hasUpdatedQueryResult:(id)a4
{
  v5 = a4;
  v6 = [v5 query];
  objc_storeStrong(&self->_currentQuery, v6);
  [(SBHIconLibraryTableViewController *)self _updateShowHeadersFromQueryResult:v5];
  v7 = [(SBHIconLibraryTableViewController *)self dataSource];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __71__SBHIconLibraryTableViewController_iconLibrary_hasUpdatedQueryResult___block_invoke;
  v14[3] = &unk_1E8088C90;
  v14[4] = self;
  [v7 applyQueryResult:v5 animatingDifferences:0 completion:v14];

  v8 = [(SBHIconLibraryTableViewController *)self _shouldShowNoResultsViewForQueryResult:v5];
  [(SBHTableViewController *)self setShowNoResultsView:v8];
  [(SBHIconLibraryTableViewController *)self _setNeedsUpdateContentUnavailableConfiguration];
  v9 = [v6 searchString];
  v10 = [v9 length];

  v11 = [(SBHIconLibraryTableViewController *)self _searchTextField];
  v12 = v11;
  if (v8 || !v10 || [v11 hasMarkedText])
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

- (void)_updateShowHeadersFromQueryResult:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v5 = [(SBHIconLibraryTableViewController *)self dataSource];
    v11 = [v5 queryResult];

    v4 = v11;
  }

  v12 = v4;
  v6 = [v4 query];
  if (v6 && (v7 = v6, [v12 query], v8 = objc_claimAutoreleasedReturnValue(), v9 = SBLibraryUseSectionsForQuery(v8), v8, v7, !v9))
  {
    self->_showHeaders = 0;
  }

  else
  {
    v10 = [(SBHAppLibrarySettings *)self->_settings minimumNumberOfIconsToShowSectionHeaderInDeweySearch];
    self->_showHeaders = [v12 totalNumberOfItems] > v10;
  }

  [(SBHIconLibraryTableViewController *)self _updateSectionHeaderHeight];
}

- (void)_updateSectionHeaderHeight
{
  v3 = [(SBHIconLibraryTableViewController *)self tableView];
  v5 = v3;
  v4 = *MEMORY[0x1E69DE3D0];
  if (!self->_showHeaders)
  {
    v4 = 0.0;
  }

  [v3 setSectionHeaderHeight:v4];
}

- (void)_reloadVisibleCells
{
  if ([(SBHIconLibraryTableViewController *)self _isViewControllerVisible])
  {
    v4 = [(SBHIconLibraryTableViewController *)self _visibleIndexPaths];
    v3 = [v4 allObjects];
    [(SBHIconLibraryTableViewController *)self _reloadRowsAtIndexPaths:v3];
  }
}

- (void)_reloadRowsAtIndexPaths:(id)a3
{
  dataSource = self->_dataSource;
  v5 = a3;
  v6 = [(SBHIconTableViewDiffableDataSource *)dataSource queryResult];
  v7 = [v6 snapshot];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __61__SBHIconLibraryTableViewController__reloadRowsAtIndexPaths___block_invoke;
  v9[3] = &unk_1E808C4E0;
  v9[4] = self;
  v8 = [v5 bs_map:v9];

  [v7 reloadItemsWithIdentifiers:v8];
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

- (BOOL)_isIndexPathVisible:(id)a3
{
  v4 = a3;
  v5 = [(SBHIconLibraryTableViewController *)self _visibleIndexPaths];
  v6 = [v5 containsObject:v4];

  return v6;
}

- (void)_configureCell:(id)a3 forIcon:(id)a4
{
  v16 = a3;
  v6 = a4;
  v7 = [(SBHIconLibraryTableViewController *)self listLayoutProvider];
  if (v7)
  {
    v8 = [(SBHIconLibraryTableViewController *)self iconViewProvider];
    v9 = [v16 iconView];
    v10 = [v16 iconView];
    if (!v10 || (v11 = v10, v12 = [(NSHashTable *)self->_grabbedIconViews containsObject:v9], v11, v12))
    {
      v13 = [(SBHIconLibraryTableViewController *)self _createIconView];

      v9 = v13;
    }

    [v8 configureIconView:v9 forIcon:v6];
    [v9 setLabelHidden:1];
    [v9 setAllowsLabelArea:0];
    [v9 setAllowsCloseBox:0];
    [v9 setAllowsAccessoryView:0];
    v14 = [(SBHIconLibraryTableViewController *)self iconImageCache];
    [v9 setIconImageCache:v14];

    [v9 setListLayoutProvider:v7];
    [v9 setLocation:@"SBIconLocationAppLibrarySearch"];
    [v9 addObserver:self];
    [v9 setImageLoadingBehavior:1];
    [v9 setIcon:v6];
    [v16 setIconView:v9];
    [v16 configureCellForIcon:v6];
    v15 = [(SBHIconLibraryTableViewController *)self legibilitySettings];
    [v16 setLegibilitySettings:v15];
  }
}

- (BOOL)_shouldShowNoResultsViewForQueryResult:(id)a3
{
  v4 = a3;
  if (([(SBHIconLibraryTableViewController *)self bs_isDisappearingOrDisappeared]& 1) == 0)
  {
    if ([v4 isNullQueryResult])
    {
      LOBYTE(v5) = 1;
      goto LABEL_8;
    }

    v5 = [v4 query];

    if (!v5)
    {
      goto LABEL_8;
    }

    v6 = [v4 query];
    v7 = [v6 searchString];
    v8 = [v7 length];

    if (v8)
    {
      v9 = [v4 snapshot];
      LOBYTE(v5) = [v9 numberOfItems] < 1;

      goto LABEL_8;
    }
  }

  LOBYTE(v5) = 0;
LABEL_8:

  return v5;
}

- (void)_logLaunchOfIcon:(id)a3 atIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(SBHIconLibraryTableViewController *)self _notifyDelegatesOfAppLaunchFromSearchController:v6];
  if (!self->_appDirectoryClient)
  {
    v8 = [MEMORY[0x1E698AEB0] sharedInstance];
    appDirectoryClient = self->_appDirectoryClient;
    self->_appDirectoryClient = v8;
  }

  v10 = [(SBHIconLibraryTableViewController *)self _iconFilter];
  v11 = (v10)[2](v10, v6);

  if (v11)
  {
    v12 = [v6 leafIdentifier];
    v13 = [(SBHIconLibraryTableViewController *)self currentQuery];
    v14 = [v7 indexAtPosition:0];
    v15 = [(SBHIconLibraryTableViewController *)self libraryCategoryMap];
    v16 = [v15 metadata];
    v17 = [v16 objectForKey:@"response"];

    v18 = self->_appDirectoryClient;
    v19 = [MEMORY[0x1E695DF00] date];
    v20 = [v13 searchString];
    -[ATXAppDirectoryClient logLaunchFromSearchWithDate:bundleID:bundleIndex:searchQueryLength:searchTab:appDirectoryResponse:](v18, "logLaunchFromSearchWithDate:bundleID:bundleIndex:searchQueryLength:searchTab:appDirectoryResponse:", v19, v12, v14, [v20 length], 0, v17);
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

- (void)_handleDidTapEmptyResultsArea:(id)a3
{
  v3 = [(SBHIconLibraryTableViewController *)self searchController];
  [v3 setActive:0];
}

- (void)_notifyDelegatesOfAppLaunchFromSearchController:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_observer);
  [WeakRetained libraryTableViewControllerDidLaunchIcon:v4];
}

- (id)_indexPathForDefaultSearchResult
{
  v2 = [(SBHIconLibraryTableViewController *)self tableView];
  v3 = [v2 indexPathsForVisibleRows];
  v4 = [v3 firstObject];

  return v4;
}

- (id)_searchTextField
{
  v2 = [(SBHIconLibraryTableViewController *)self searchController];
  v3 = [v2 searchBar];
  v4 = [v3 searchTextField];

  return v4;
}

- (id)_queryForCurrentSearchTextField
{
  v27[3] = *MEMORY[0x1E69E9840];
  v2 = [(SBHIconLibraryTableViewController *)self _searchTextField];
  v3 = [v2 searchText];
  v4 = [v2 markedTextRange];
  if (v4)
  {
    v5 = [v2 textInRange:v4];
    if ([v5 length])
    {
      v6 = [v2 beginningOfDocument];
      v26 = [v2 endOfDocument];
      v7 = [v4 start];
      v8 = [v2 textRangeFromPosition:v6 toPosition:v7];

      v9 = [v2 textInRange:v8];
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

      v13 = [v4 end];
      v14 = [v2 positionFromPosition:v13 offset:1];

      if (v14)
      {
        v15 = [v2 textRangeFromPosition:v14 toPosition:v26];
        v16 = [v2 textInRange:v15];
        v17 = v6;
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

        v6 = v17;
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

    v21 = [[SBHIconLibraryQuery alloc] initWithMarkedTextSearchString:v3 markedTextRange:v4 markedTextArray:v20];
  }

  else
  {
    v21 = [[SBHIconLibraryQuery alloc] initWithSearchString:v3];
  }

  if ([v3 length])
  {
    v22 = [v2 textInputMode];
    v23 = [v22 primaryLanguage];
    [(SBHIconLibraryQuery *)v21 setKeyboardLanguageHint:v23];
  }

  return v21;
}

- (id)_nullQuery
{
  v2 = [[SBHIconLibraryQuery alloc] initWithSearchString:&stru_1F3D472A8];

  return v2;
}

- (id)_iconViewForIcon:(id)a3
{
  v4 = a3;
  v5 = [(SBHIconLibraryTableViewController *)self dataSource];
  v6 = [v5 queryResult];
  v7 = [v6 indexPathForIcon:v4];

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

- (id)_iconViewAtIndexPath:(id)a3
{
  v4 = a3;
  if ([(SBHIconLibraryTableViewController *)self _isIndexPathVisible:v4])
  {
    v5 = [(SBHIconLibraryTableViewController *)self tableView];
    v6 = [v5 cellForRowAtIndexPath:v4];

    v7 = [v6 iconView];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_createIconView
{
  v2 = [[SBIconView alloc] initWithConfigurationOptions:2 listLayoutProvider:self->_listLayoutProvider];

  return v2;
}

- (void)_invalidatePrewarmAssertion:(id)a3
{
  [(NSCountedSet *)self->_libraryPrewarmAssertions removeObject:a3];
  if (![(NSCountedSet *)self->_libraryPrewarmAssertions count])
  {

    [(SBHIconLibraryTableViewController *)self _teardownLibrary];
  }
}

- (id)acquireLibrarySearchPrewarmAssertionForReason:(id)a3
{
  v4 = a3;
  if (!self->_libraryPrewarmAssertions)
  {
    v5 = [MEMORY[0x1E696AB50] set];
    libraryPrewarmAssertions = self->_libraryPrewarmAssertions;
    self->_libraryPrewarmAssertions = v5;
  }

  v7 = [[_SBHIconLibraryPrewarmAssertion alloc] initWithReason:v4 iconLibraryTableViewController:self];
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