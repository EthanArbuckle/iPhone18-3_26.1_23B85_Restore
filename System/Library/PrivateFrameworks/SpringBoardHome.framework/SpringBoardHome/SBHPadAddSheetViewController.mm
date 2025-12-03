@interface SBHPadAddSheetViewController
- (NSMutableDictionary)userInfo;
- (SBHPadAddSheetViewController)initWithListLayoutProvider:(id)provider iconViewProvider:(id)viewProvider allowedWidgets:(SBHWidgetFilteringParameters)widgets appCellConfigurator:(id)configurator addWidgetSheetStyle:(unint64_t)style;
- (SBHPadAddWidgetSheetMetrics)_metricsForCurrentOrientation;
- (SBHPadAddWidgetSheetMetrics)_metricsForOrientation:(SEL)orientation;
- (SBHWidgetDragHandling)widgetDragHandler;
- (SBHWidgetSheetViewControllerPresenter)presenter;
- (UIEdgeInsets)preferredInsetsForSheetPresentationInInterfaceOrientation:(int64_t)orientation;
- (double)_columnSpacing;
- (double)_paddedSidebarWidthForInterfaceOrientation:(int64_t)orientation;
- (double)_widthNeededForWidgetColumns:(unint64_t)columns;
- (id)_detailViewController;
- (id)_newBackgroundView;
- (id)addWidgetSheetViewController:(id)controller detailViewControllerForWidgetCollection:(id)collection;
- (id)backgroundViewMatchingMaterialBeneathAddWidgetSheetViewController:(id)controller;
- (id)galleryViewControllerForAddWidgetSheetViewController:(id)controller;
- (id)suggestedItemsForGalleryLayoutSize:(unint64_t)size;
- (unint64_t)_numberOfWidgetColumnsThatFitInWidth:(double)width;
- (void)_layoutSearchBarGradientMaskLayers;
- (void)_layoutSeparatorView;
- (void)addWidgetSheetViewController:(id)controller didSelectWidgetIconView:(id)view;
- (void)addWidgetSheetViewControllerDidAppear:(id)appear;
- (void)addWidgetSheetViewControllerDidCancel:(id)cancel;
- (void)addWidgetSheetViewControllerDidDisappear:(id)disappear;
- (void)addWidgetSheetViewControllerWillAppear:(id)appear;
- (void)addWidgetSheetViewControllerWillDisappear:(id)disappear;
- (void)closeButtonTapped:(id)tapped;
- (void)configureViewsForCurrentInterfaceOrientation;
- (void)configureViewsForInterfaceOrientation:(int64_t)orientation;
- (void)dealloc;
- (void)setAddWidgetSheetWidgetBackgroundType:(unint64_t)type;
- (void)setApplicationWidgetCollections:(id)collections;
- (void)setCustomApplicationWidgetCollections:(id)collections;
- (void)setDisfavoredApplicationWidgetCollections:(id)collections;
- (void)setFavoredApplicationWidgetCollections:(id)collections;
- (void)setGalleryLayoutSize:(unint64_t)size;
- (void)setPresenter:(id)presenter;
- (void)setSuggestedItems:(id)items forGalleryLayoutSize:(unint64_t)size;
- (void)setWantsBottomAttachedPresentation:(BOOL)presentation;
- (void)setWantsSeparator:(BOOL)separator;
- (void)updateContentUnavailableConfigurationUsingState:(id)state;
- (void)updateSearchResultsForSearchController:(id)controller;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation SBHPadAddSheetViewController

- (SBHPadAddSheetViewController)initWithListLayoutProvider:(id)provider iconViewProvider:(id)viewProvider allowedWidgets:(SBHWidgetFilteringParameters)widgets appCellConfigurator:(id)configurator addWidgetSheetStyle:(unint64_t)style
{
  v37.receiver = self;
  v37.super_class = SBHPadAddSheetViewController;
  style = [(SBHAddWidgetSheetViewControllerBase *)&v37 initWithListLayoutProvider:provider iconViewProvider:viewProvider allowedWidgets:widgets.families appCellConfigurator:*&widgets.includesNonStackable addWidgetSheetStyle:configurator, style];
  if (style)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v9 = *(style + 197);
    *(style + 197) = dictionary;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:style selector:sel__contentSizeCategoryDidChange_ name:*MEMORY[0x1E69DDC48] object:0];

    v11 = SBHScreenTypeForCurrentDevice();
    SBHPadAddWidgetSheetMetricsForScreenTypeAndInterfaceOrientation(v11, 3, &v27);
    v12 = v28;
    *(style + 1240) = v27;
    *(style + 1256) = v12;
    v13 = v29;
    v14 = v30;
    v15 = v32;
    *(style + 1304) = v31;
    *(style + 1320) = v15;
    *(style + 1272) = v13;
    *(style + 1288) = v14;
    v16 = v33;
    v17 = v34;
    v18 = v35;
    *(style + 173) = v36;
    *(style + 1352) = v17;
    *(style + 1368) = v18;
    *(style + 1336) = v16;
    SBHPadAddWidgetSheetMetricsForScreenTypeAndInterfaceOrientation(v11, 1, &v27);
    v19 = v28;
    *(style + 87) = v27;
    *(style + 88) = v19;
    v20 = v29;
    v21 = v30;
    v22 = v32;
    *(style + 91) = v31;
    *(style + 92) = v22;
    *(style + 89) = v20;
    *(style + 90) = v21;
    v23 = v33;
    v24 = v34;
    v25 = v35;
    *(style + 192) = v36;
    *(style + 94) = v24;
    *(style + 95) = v25;
    *(style + 93) = v23;
    [style setWantsBottomAttachedPresentation:1];
  }

  return style;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69DDC48] object:0];

  v4.receiver = self;
  v4.super_class = SBHPadAddSheetViewController;
  [(SBHPadAddSheetViewController *)&v4 dealloc];
}

- (void)viewDidLoad
{
  v54[2] = *MEMORY[0x1E69E9840];
  v53.receiver = self;
  v53.super_class = SBHPadAddSheetViewController;
  [(SBHPadAddSheetViewController *)&v53 viewDidLoad];
  view = [(SBHPadAddSheetViewController *)self view];
  window = [view window];
  _newBackgroundView = [(SBHPadAddSheetViewController *)self _newBackgroundView];
  backgroundView = self->_backgroundView;
  self->_backgroundView = _newBackgroundView;

  v7 = self->_backgroundView;
  [view bounds];
  [(MTMaterialView *)v7 setFrame:?];
  [(MTMaterialView *)self->_backgroundView setAutoresizingMask:18];
  [view addSubview:self->_backgroundView];
  v8 = [objc_alloc(MEMORY[0x1E69DCF78]) initWithStyle:1];
  splitViewController = self->_splitViewController;
  self->_splitViewController = v8;

  [(UISplitViewController *)self->_splitViewController _setOverrideHorizontalSizeClass:2];
  view2 = [(UISplitViewController *)self->_splitViewController view];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [view2 setBackgroundColor:clearColor];

  [(UISplitViewController *)self->_splitViewController setGutterWidth:0.0];
  [(UISplitViewController *)self->_splitViewController setPreferredSplitBehavior:1];
  [(UISplitViewController *)self->_splitViewController setPreferredDisplayMode:2];
  [(UISplitViewController *)self->_splitViewController setDisplayModeButtonVisibility:1];
  [(UISplitViewController *)self->_splitViewController setPrimaryBackgroundStyle:1];
  v52 = window;
  if (window)
  {
    selfCopy = window;
  }

  else
  {
    selfCopy = self;
  }

  [(SBHPadAddSheetViewController *)self _paddedSidebarWidthForInterfaceOrientation:[(SBHPadAddSheetViewController *)selfCopy interfaceOrientation]];
  v14 = v13;
  [(UISplitViewController *)self->_splitViewController setPreferredPrimaryColumnWidth:?];
  [(UISplitViewController *)self->_splitViewController setMaximumPrimaryColumnWidth:v14];
  [(UISplitViewController *)self->_splitViewController setMinimumPrimaryColumnWidth:v14];
  [(SBHPadAddSheetViewController *)self bs_addChildViewController:self->_splitViewController];
  addWidgetSheetStyle = [(SBHAddWidgetSheetViewControllerBase *)self addWidgetSheetStyle];
  v16 = [SBHAddWidgetSheetViewController alloc];
  listLayoutProvider = [(SBHAddWidgetSheetViewControllerBase *)self listLayoutProvider];
  iconViewProvider = [(SBHAddWidgetSheetViewControllerBase *)self iconViewProvider];
  allowedWidgets = [(SBHAddWidgetSheetViewControllerBase *)self allowedWidgets];
  v21 = [(SBHAddWidgetSheetViewControllerBase *)v16 initWithListLayoutProvider:listLayoutProvider iconViewProvider:iconViewProvider allowedWidgets:allowedWidgets addWidgetSheetStyle:v20, addWidgetSheetStyle];
  left = self->_left;
  self->_left = v21;

  [(SBHAddWidgetSheetViewControllerBase *)self->_left setAllowsFakeWidgets:self->_allowsFakeWidgets];
  [(SBHAddWidgetSheetViewControllerBase *)self->_left setExternalBackgroundView:self->_backgroundView];
  [(SBHAddWidgetSheetViewController *)self->_left setAddWidgetSheetLocation:self->_addWidgetSheetLocation];
  [(SBHAddWidgetSheetViewControllerBase *)self->_left setAddWidgetSheetWidgetBackgroundType:[(SBHAddWidgetSheetViewControllerBase *)self addWidgetSheetWidgetBackgroundType]];
  [(SBHAddWidgetSheetViewController *)self->_left setApplicationWidgetCollections:self->_applicationWidgetCollections];
  v23 = self->_left;
  v24 = [(SBHPadAddSheetViewController *)self suggestedItemsForGalleryLayoutSize:self->_galleryLayoutSize];
  [(SBHAddWidgetSheetViewController *)v23 setSuggestedItems:v24 forGalleryLayoutSize:self->_galleryLayoutSize];

  v25 = self->_left;
  WeakRetained = objc_loadWeakRetained(&self->_presenter);
  [(SBHAddWidgetSheetViewController *)v25 setPresenter:WeakRetained];

  [(SBHAddWidgetSheetViewController *)self->_left setGalleryLayoutSize:self->_galleryLayoutSize];
  [(SBHAddWidgetSheetViewControllerBase *)self->_left setDelegate:self];
  view3 = [(SBHAddWidgetSheetViewController *)self->_left view];
  clearColor2 = [MEMORY[0x1E69DC888] clearColor];
  [view3 setBackgroundColor:clearColor2];

  [(UISplitViewController *)self->_splitViewController setViewController:self->_left forColumn:0];
  v29 = SBHBundle();
  v30 = [v29 localizedStringForKey:@"WIDGET_ADD_SHEET_SEARCH_PLACEHOLDER" value:&stru_1F3D472A8 table:@"SpringBoardHome"];

  v31 = [[SBHWidgetSearchController alloc] initWithAddWidgetSheetStyle:addWidgetSheetStyle placeholderText:v30];
  widgetSearchController = self->_widgetSearchController;
  self->_widgetSearchController = v31;

  [(SBHWidgetSearchController *)self->_widgetSearchController setObscuresBackgroundDuringPresentation:0];
  [(SBHWidgetSearchController *)self->_widgetSearchController setDelegate:self->_left];
  [(SBHWidgetSearchController *)self->_widgetSearchController setSearchResultsUpdater:self];
  [(SBHWidgetSearchController *)self->_widgetSearchController setAlwaysShowBarBackground:self->_wantsSeparator];
  [(SBHWidgetSearchController *)self->_widgetSearchController setShouldInsetContentForGrabber:self->_wantsBottomAttachedPresentation];
  v33 = [(MTMaterialView *)self->_backgroundView visualStylingProviderForCategory:2];
  searchBarTextFieldBackgroundView = [(SBHWidgetSearchController *)self->_widgetSearchController searchBarTextFieldBackgroundView];
  [v33 automaticallyUpdateView:searchBarTextFieldBackgroundView withStyle:2];

  navigationItem = [(SBHAddWidgetSheetViewController *)self->_left navigationItem];
  [(SBHAddWidgetSheetViewController *)self->_left setDefinesPresentationContext:1];
  [navigationItem setLargeTitleDisplayMode:2];
  [navigationItem setSearchBarPlacementAllowsToolbarIntegration:0];
  [navigationItem setHidesSearchBarWhenScrolling:0];
  v36 = objc_alloc_init(MEMORY[0x1E69DD5E8]);
  [v36 setHideBackButton:1];
  [v36 setHideStandardTitle:1];
  [v36 setHideCenterBarButtons:1];
  [v36 setHideTrailingBarButtons:1];
  [v36 setHideLeadingBarButtons:1];
  [v36 setHeight:20.0];
  [navigationItem setTitleView:v36];
  [navigationItem setSearchController:self->_widgetSearchController];
  searchBar = [(SBHWidgetSearchController *)self->_widgetSearchController searchBar];
  [searchBar sizeToFit];

  searchBar2 = [(SBHWidgetSearchController *)self->_widgetSearchController searchBar];
  [searchBar2 layoutIfNeeded];

  [(SBHAddWidgetSheetViewController *)self->_left setExternalSearchController:self->_widgetSearchController];
  if ([(SBHPadAddSheetViewController *)self wantsCloseButton])
  {
    v39 = [MEMORY[0x1E69DC738] buttonWithType:7];
    [v39 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v39 addTarget:self action:sel_closeButtonTapped_ forControlEvents:64];
    view4 = [(UISplitViewController *)self->_splitViewController view];
    borderedButtonConfiguration = [MEMORY[0x1E69DC740] borderedButtonConfiguration];
    [borderedButtonConfiguration setCornerStyle:4];
    [v39 setConfiguration:borderedButtonConfiguration];
    [view4 addSubview:v39];
    v47 = MEMORY[0x1E696ACD8];
    trailingAnchor = [v39 trailingAnchor];
    [view4 trailingAnchor];
    v48 = v51 = view;
    v41 = [trailingAnchor constraintEqualToAnchor:v48 constant:-21.0];
    v54[0] = v41;
    topAnchor = [v39 topAnchor];
    topAnchor2 = [view4 topAnchor];
    [topAnchor constraintEqualToAnchor:topAnchor2 constant:21.0];
    v45 = v44 = v30;
    v54[1] = v45;
    v46 = [MEMORY[0x1E695DEC8] arrayWithObjects:v54 count:2];
    [v47 activateConstraints:v46];

    v30 = v44;
    view = v51;
  }
}

- (id)_newBackgroundView
{
  v2 = [MEMORY[0x1E69AE158] materialViewWithRecipe:54];
  [v2 setBackdropScaleAdjustment:&__block_literal_global_25];
  [v2 setGroupNameBase:@"Add-Sheet"];
  return v2;
}

- (void)setWantsSeparator:(BOOL)separator
{
  if (self->_wantsSeparator != separator)
  {
    self->_wantsSeparator = separator;
    if (separator)
    {
      [(SBHPadAddSheetViewController *)self loadViewIfNeeded];
      v4 = objc_alloc_init(MEMORY[0x1E69DD250]);
      separatorView = self->_separatorView;
      self->_separatorView = v4;

      v6 = self->_separatorView;
      separatorColor = [MEMORY[0x1E69DC888] separatorColor];
      [(UIView *)v6 setBackgroundColor:separatorColor];

      view = [(UISplitViewController *)self->_splitViewController view];
      [view addSubview:self->_separatorView];
    }

    else
    {
      [(UIView *)self->_separatorView removeFromSuperview];
      view = self->_separatorView;
      self->_separatorView = 0;
    }

    [(SBHWidgetSearchController *)self->_widgetSearchController setAlwaysShowBarBackground:self->_wantsSeparator];
    left = self->_left;
    wantsSeparator = self->_wantsSeparator;

    [(SBHAddWidgetSheetViewController *)left setShouldCenterAppCells:wantsSeparator];
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

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = SBHPadAddSheetViewController;
  [(SBHPadAddSheetViewController *)&v4 viewWillAppear:appear];
  [(SBHPadAddSheetViewController *)self configureViewsForCurrentInterfaceOrientation];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = SBHPadAddSheetViewController;
  [(SBHPadAddSheetViewController *)&v4 viewDidAppear:appear];
  [(SBHPadAddSheetViewController *)self _layoutSeparatorView];
}

- (void)viewDidLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = SBHPadAddSheetViewController;
  [(SBHPadAddSheetViewController *)&v5 viewDidLayoutSubviews];
  searchBar = [(SBHWidgetSearchController *)self->_widgetSearchController searchBar];
  [searchBar layoutIfNeeded];

  [(SBHPadAddSheetViewController *)self _layoutSearchBarGradientMaskLayers];
  [(SBHPadAddSheetViewController *)self _layoutSeparatorView];
  sheetPresentationController = [(SBHPadAddSheetViewController *)self sheetPresentationController];
  [(SBHWidgetSearchController *)self->_widgetSearchController grabberTopSpacing];
  [sheetPresentationController _setGrabberTopSpacing:?];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  v8 = SBFWindowForViewControllerTransition();
  _toWindowOrientation = [v8 _toWindowOrientation];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __83__SBHPadAddSheetViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v11[3] = &unk_1E808B460;
  v11[4] = self;
  v11[5] = _toWindowOrientation;
  [coordinatorCopy animateAlongsideTransition:v11 completion:0];
  v10.receiver = self;
  v10.super_class = SBHPadAddSheetViewController;
  [(SBHPadAddSheetViewController *)&v10 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
}

- (void)updateSearchResultsForSearchController:(id)controller
{
  [(SBHAddWidgetSheetViewController *)self->_left updateSearchResultsForSearchController:controller];

  [(SBHPadAddSheetViewController *)self setNeedsUpdateContentUnavailableConfiguration];
}

- (void)updateContentUnavailableConfigurationUsingState:(id)state
{
  v4 = [(SBHAddWidgetSheetViewController *)self->_left _updatedContentUnavailableConfigurationUsingState:state];
  [(SBHAddWidgetSheetViewController *)self->_left setContentUnavailableConfiguration:v4];
}

- (UIEdgeInsets)preferredInsetsForSheetPresentationInInterfaceOrientation:(int64_t)orientation
{
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  v4 = SBHScreenTypeForCurrentDevice();
  SBHPadAddWidgetSheetMetricsForScreenTypeAndInterfaceOrientation(v4, orientation, v9);
  v5 = *v9;
  v6 = 0.0;
  v7 = 0.0;
  v8 = *v9;
  result.right = v8;
  result.bottom = v7;
  result.left = v5;
  result.top = v6;
  return result;
}

- (void)setAddWidgetSheetWidgetBackgroundType:(unint64_t)type
{
  v6.receiver = self;
  v6.super_class = SBHPadAddSheetViewController;
  [(SBHAddWidgetSheetViewControllerBase *)&v6 setAddWidgetSheetWidgetBackgroundType:?];
  [(SBHAddWidgetSheetViewControllerBase *)self->_left setAddWidgetSheetWidgetBackgroundType:type];
  _detailViewController = [(SBHPadAddSheetViewController *)self _detailViewController];
  [_detailViewController setAddWidgetSheetWidgetBackgroundType:type];
}

- (void)configureViewsForInterfaceOrientation:(int64_t)orientation
{
  view = [(SBHPadAddSheetViewController *)self view];
  _screen = [view _screen];
  [_screen _referenceBounds];
  v8 = v7;
  v10 = v9;

  if ((orientation - 3) >= 2)
  {
    v11 = v10;
  }

  else
  {
    v11 = v8;
  }

  if ((orientation - 3) < 2)
  {
    v8 = v10;
  }

  [(SBHPadAddSheetViewController *)self preferredInsetsForSheetPresentationInInterfaceOrientation:orientation];
  [(SBHPadAddSheetViewController *)self setPreferredContentSize:v8 - (v12 + v13), v11 - (v14 + v15)];
  [(SBHPadAddSheetViewController *)self _paddedSidebarWidthForInterfaceOrientation:orientation];
  v17 = v16;
  [(UISplitViewController *)self->_splitViewController setPreferredPrimaryColumnWidth:?];
  [(UISplitViewController *)self->_splitViewController setMaximumPrimaryColumnWidth:v17];
  [(UISplitViewController *)self->_splitViewController setMinimumPrimaryColumnWidth:v17];
  view2 = [(UISplitViewController *)self->_splitViewController view];
  [view2 layoutIfNeeded];

  view3 = [(SBHPadAddSheetViewController *)self view];
  [view3 setNeedsLayout];
}

- (void)configureViewsForCurrentInterfaceOrientation
{
  view = [(SBHPadAddSheetViewController *)self view];
  window = [view window];

  selfCopy = window;
  if (!window)
  {
    selfCopy = self;
  }

  [(SBHPadAddSheetViewController *)self configureViewsForInterfaceOrientation:[(SBHPadAddSheetViewController *)selfCopy interfaceOrientation]];
}

- (double)_columnSpacing
{
  listLayoutProvider = [(SBHAddWidgetSheetViewControllerBase *)self listLayoutProvider];
  v3 = [listLayoutProvider layoutForIconLocation:@"SBIconLocationRoot"];

  [v3 iconImageInfoForGridSizeClass:@"SBHIconGridSizeClassSmall"];
  v5 = v4;
  [v3 iconImageInfoForGridSizeClass:@"SBHIconGridSizeClassMedium"];
  v7 = v6 + v5 * -2.0;

  return v7;
}

- (unint64_t)_numberOfWidgetColumnsThatFitInWidth:(double)width
{
  listLayoutProvider = [(SBHAddWidgetSheetViewControllerBase *)self listLayoutProvider];
  v6 = [listLayoutProvider layoutForIconLocation:@"SBIconLocationRoot"];

  [v6 iconImageInfoForGridSizeClass:@"SBHIconGridSizeClassSmall"];
  v8 = v7;
  [v6 iconImageInfoForGridSizeClass:@"SBHIconGridSizeClassMedium"];
  v10 = v9 - v8;
  [(SBHPadAddSheetViewController *)self _metricsForCurrentOrientation:0];
  v11 = ((v10 - v8 - 0.0 - 0.0 + width) / v10);
  if (v11 <= 2)
  {
    v11 = 2;
  }

  if (v11 >= 5)
  {
    v12 = 5;
  }

  else
  {
    v12 = v11;
  }

  return v12;
}

- (double)_widthNeededForWidgetColumns:(unint64_t)columns
{
  listLayoutProvider = [(SBHAddWidgetSheetViewControllerBase *)self listLayoutProvider];
  v6 = [listLayoutProvider layoutForIconLocation:@"SBIconLocationRoot"];

  [v6 iconImageInfoForGridSizeClass:@"SBHIconGridSizeClassSmall"];
  v8 = v7;
  [v6 iconImageInfoForGridSizeClass:@"SBHIconGridSizeClassMedium"];
  v10 = v9 - v8;
  [(SBHPadAddSheetViewController *)self _metricsForCurrentOrientation:0];

  return 0.0 - (v10 - v8 - columns * v10) + 0.0;
}

- (double)_paddedSidebarWidthForInterfaceOrientation:(int64_t)orientation
{
  if ([(SBHPadAddSheetViewController *)self addWidgetSheetLocation]== 1)
  {
    return *MEMORY[0x1E69DE3C8];
  }

  [(SBHPadAddSheetViewController *)self _metricsForOrientation:orientation, 0];
  return 0.0 + 0.0 + 0.0 + 0.0;
}

- (void)_layoutSearchBarGradientMaskLayers
{
  v34 = *MEMORY[0x1E69E9840];
  [MEMORY[0x1E69D3FC0] gradientMaskLayerInsetsForFeatherBlurRecipe:4];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  searchBar = [(SBHWidgetSearchController *)self->_widgetSearchController searchBar];
  [searchBar frame];
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

- (void)_layoutSeparatorView
{
  traitCollection = [(SBHPadAddSheetViewController *)self traitCollection];
  [traitCollection displayScale];
  v5 = v4;

  view = [(UISplitViewController *)self->_splitViewController view];
  view2 = [(SBHAddWidgetSheetViewController *)self->_left view];
  [view2 bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  view3 = [(SBHAddWidgetSheetViewController *)self->_left view];
  [view convertRect:view3 fromView:{v9, v11, v13, v15}];
  MaxX = CGRectGetMaxX(v24);

  if (v5 <= 0.0)
  {
    v18 = 1.0;
  }

  else
  {
    v18 = 1.0 / v5;
  }

  view4 = [(SBHPadAddSheetViewController *)self view];
  [view4 bounds];
  v21 = v20;

  separatorView = self->_separatorView;

  [(UIView *)separatorView setFrame:MaxX, 0.0, v18, v21];
}

- (id)_detailViewController
{
  splitViewController = [(SBHPadAddSheetViewController *)self splitViewController];
  v3 = [splitViewController viewControllerForColumn:2];
  v4 = objc_opt_class();
  v5 = v3;
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    navigationController = v7;
  }

  else
  {
    navigationController = [v5 navigationController];
  }

  v9 = navigationController;

  topViewController = [v9 topViewController];
  v11 = objc_opt_class();
  v12 = topViewController;
  if (v11)
  {
    if (objc_opt_isKindOfClass())
    {
      v11 = v12;
    }

    else
    {
      v11 = 0;
    }
  }

  v13 = v11;

  return v11;
}

- (SBHPadAddWidgetSheetMetrics)_metricsForOrientation:(SEL)orientation
{
  if ((a4 - 3) >= 2)
  {
    v4 = &OBJC_IVAR___SBHPadAddSheetViewController__portraitMetrics;
  }

  else
  {
    v4 = &OBJC_IVAR___SBHPadAddSheetViewController__landscapeMetrics;
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
  view = [(SBHPadAddSheetViewController *)self view];
  window = [view window];

  selfCopy = window;
  if (!window)
  {
    selfCopy = self;
  }

  [(SBHPadAddSheetViewController *)self _metricsForOrientation:[(SBHPadAddSheetViewController *)selfCopy interfaceOrientation]];

  return result;
}

- (void)setApplicationWidgetCollections:(id)collections
{
  objc_storeStrong(&self->_applicationWidgetCollections, collections);
  collectionsCopy = collections;
  [(SBHAddWidgetSheetViewController *)self->_left setApplicationWidgetCollections:collectionsCopy];
  _detailViewController = [(SBHPadAddSheetViewController *)self _detailViewController];
  [_detailViewController setApplicationWidgetCollections:collectionsCopy];
}

- (void)setFavoredApplicationWidgetCollections:(id)collections
{
  collectionsCopy = collections;
  v5 = [collectionsCopy copy];
  favoredApplicationWidgetCollections = self->_favoredApplicationWidgetCollections;
  self->_favoredApplicationWidgetCollections = v5;

  [(SBHAddWidgetSheetViewController *)self->_left setFavoredApplicationWidgetCollections:collectionsCopy];
  _detailViewController = [(SBHPadAddSheetViewController *)self _detailViewController];
  [_detailViewController setFavoredApplicationWidgetCollections:collectionsCopy];
}

- (void)setDisfavoredApplicationWidgetCollections:(id)collections
{
  collectionsCopy = collections;
  v5 = [collectionsCopy copy];
  disfavoredApplicationWidgetCollections = self->_disfavoredApplicationWidgetCollections;
  self->_disfavoredApplicationWidgetCollections = v5;

  [(SBHAddWidgetSheetViewController *)self->_left setDisfavoredApplicationWidgetCollections:collectionsCopy];
  _detailViewController = [(SBHPadAddSheetViewController *)self _detailViewController];
  [_detailViewController setDisfavoredApplicationWidgetCollections:collectionsCopy];
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

    [(SBHAddWidgetSheetViewController *)self->_left setSuggestedItems:itemsCopy forGalleryLayoutSize:size];
  }
}

- (void)setCustomApplicationWidgetCollections:(id)collections
{
  objc_storeStrong(&self->_customApplicationWidgetCollections, collections);
  collectionsCopy = collections;
  [(SBHAddWidgetSheetViewController *)self->_left setCustomApplicationWidgetCollections:collectionsCopy];
  _detailViewController = [(SBHPadAddSheetViewController *)self _detailViewController];
  [_detailViewController setCustomApplicationWidgetCollections:collectionsCopy];
}

- (void)setWantsBottomAttachedPresentation:(BOOL)presentation
{
  if (self->_wantsBottomAttachedPresentation != presentation)
  {
    presentationCopy = presentation;
    self->_wantsBottomAttachedPresentation = presentation;
    [(SBHWidgetSearchController *)self->_widgetSearchController setShouldInsetContentForGrabber:?];
    sheetPresentationController = [(SBHPadAddSheetViewController *)self sheetPresentationController];
    [sheetPresentationController _setWantsBottomAttached:presentationCopy];
  }
}

- (id)suggestedItemsForGalleryLayoutSize:(unint64_t)size
{
  suggestedItemsByGalleryLayoutSize = self->_suggestedItemsByGalleryLayoutSize;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:size];
  v5 = [(NSMutableDictionary *)suggestedItemsByGalleryLayoutSize objectForKeyedSubscript:v4];

  return v5;
}

- (void)setPresenter:(id)presenter
{
  obj = presenter;
  WeakRetained = objc_loadWeakRetained(&self->_presenter);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_presenter, obj);
    [(SBHAddWidgetSheetViewController *)self->_left setPresenter:obj];
  }
}

- (void)setGalleryLayoutSize:(unint64_t)size
{
  self->_galleryLayoutSize = size;
  [(SBHAddWidgetSheetViewController *)self->_left setGalleryLayoutSize:?];

  [(SBHPadAddSheetViewController *)self configureViewsForCurrentInterfaceOrientation];
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

- (void)addWidgetSheetViewController:(id)controller didSelectWidgetIconView:(id)view
{
  viewCopy = view;
  delegate = [(SBHAddWidgetSheetViewControllerBase *)self delegate];
  [delegate addWidgetSheetViewController:self didSelectWidgetIconView:viewCopy];
}

- (void)addWidgetSheetViewControllerDidCancel:(id)cancel
{
  delegate = [(SBHAddWidgetSheetViewControllerBase *)self delegate];
  [delegate addWidgetSheetViewControllerDidCancel:self];
}

- (void)addWidgetSheetViewControllerWillAppear:(id)appear
{
  delegate = [(SBHAddWidgetSheetViewControllerBase *)self delegate];
  [delegate addWidgetSheetViewControllerWillAppear:self];
}

- (void)addWidgetSheetViewControllerDidAppear:(id)appear
{
  delegate = [(SBHAddWidgetSheetViewControllerBase *)self delegate];
  [delegate addWidgetSheetViewControllerDidAppear:self];
}

- (void)addWidgetSheetViewControllerWillDisappear:(id)disappear
{
  delegate = [(SBHAddWidgetSheetViewControllerBase *)self delegate];
  [delegate addWidgetSheetViewControllerWillDisappear:self];
}

- (void)addWidgetSheetViewControllerDidDisappear:(id)disappear
{
  delegate = [(SBHAddWidgetSheetViewControllerBase *)self delegate];
  [delegate addWidgetSheetViewControllerDidDisappear:self];
}

- (SBHWidgetDragHandling)widgetDragHandler
{
  delegate = [(SBHAddWidgetSheetViewControllerBase *)self delegate];
  widgetDragHandler = [delegate widgetDragHandler];

  return widgetDragHandler;
}

- (id)backgroundViewMatchingMaterialBeneathAddWidgetSheetViewController:(id)controller
{
  _newBackgroundView = [(SBHPadAddSheetViewController *)self _newBackgroundView];

  return _newBackgroundView;
}

- (id)addWidgetSheetViewController:(id)controller detailViewControllerForWidgetCollection:(id)collection
{
  collectionCopy = collection;
  delegate = [(SBHAddWidgetSheetViewControllerBase *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v7 = [delegate addWidgetSheetViewController:self detailViewControllerForWidgetCollection:collectionCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)galleryViewControllerForAddWidgetSheetViewController:(id)controller
{
  delegate = [(SBHAddWidgetSheetViewControllerBase *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = [delegate galleryViewControllerForAddWidgetSheetViewController:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (SBHWidgetSheetViewControllerPresenter)presenter
{
  WeakRetained = objc_loadWeakRetained(&self->_presenter);

  return WeakRetained;
}

@end