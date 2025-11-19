@interface SBHPadAddSheetViewController
- (NSMutableDictionary)userInfo;
- (SBHPadAddSheetViewController)initWithListLayoutProvider:(id)a3 iconViewProvider:(id)a4 allowedWidgets:(SBHWidgetFilteringParameters)a5 appCellConfigurator:(id)a6 addWidgetSheetStyle:(unint64_t)a7;
- (SBHPadAddWidgetSheetMetrics)_metricsForCurrentOrientation;
- (SBHPadAddWidgetSheetMetrics)_metricsForOrientation:(SEL)a3;
- (SBHWidgetDragHandling)widgetDragHandler;
- (SBHWidgetSheetViewControllerPresenter)presenter;
- (UIEdgeInsets)preferredInsetsForSheetPresentationInInterfaceOrientation:(int64_t)a3;
- (double)_columnSpacing;
- (double)_paddedSidebarWidthForInterfaceOrientation:(int64_t)a3;
- (double)_widthNeededForWidgetColumns:(unint64_t)a3;
- (id)_detailViewController;
- (id)_newBackgroundView;
- (id)addWidgetSheetViewController:(id)a3 detailViewControllerForWidgetCollection:(id)a4;
- (id)backgroundViewMatchingMaterialBeneathAddWidgetSheetViewController:(id)a3;
- (id)galleryViewControllerForAddWidgetSheetViewController:(id)a3;
- (id)suggestedItemsForGalleryLayoutSize:(unint64_t)a3;
- (unint64_t)_numberOfWidgetColumnsThatFitInWidth:(double)a3;
- (void)_layoutSearchBarGradientMaskLayers;
- (void)_layoutSeparatorView;
- (void)addWidgetSheetViewController:(id)a3 didSelectWidgetIconView:(id)a4;
- (void)addWidgetSheetViewControllerDidAppear:(id)a3;
- (void)addWidgetSheetViewControllerDidCancel:(id)a3;
- (void)addWidgetSheetViewControllerDidDisappear:(id)a3;
- (void)addWidgetSheetViewControllerWillAppear:(id)a3;
- (void)addWidgetSheetViewControllerWillDisappear:(id)a3;
- (void)closeButtonTapped:(id)a3;
- (void)configureViewsForCurrentInterfaceOrientation;
- (void)configureViewsForInterfaceOrientation:(int64_t)a3;
- (void)dealloc;
- (void)setAddWidgetSheetWidgetBackgroundType:(unint64_t)a3;
- (void)setApplicationWidgetCollections:(id)a3;
- (void)setCustomApplicationWidgetCollections:(id)a3;
- (void)setDisfavoredApplicationWidgetCollections:(id)a3;
- (void)setFavoredApplicationWidgetCollections:(id)a3;
- (void)setGalleryLayoutSize:(unint64_t)a3;
- (void)setPresenter:(id)a3;
- (void)setSuggestedItems:(id)a3 forGalleryLayoutSize:(unint64_t)a4;
- (void)setWantsBottomAttachedPresentation:(BOOL)a3;
- (void)setWantsSeparator:(BOOL)a3;
- (void)updateContentUnavailableConfigurationUsingState:(id)a3;
- (void)updateSearchResultsForSearchController:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation SBHPadAddSheetViewController

- (SBHPadAddSheetViewController)initWithListLayoutProvider:(id)a3 iconViewProvider:(id)a4 allowedWidgets:(SBHWidgetFilteringParameters)a5 appCellConfigurator:(id)a6 addWidgetSheetStyle:(unint64_t)a7
{
  v37.receiver = self;
  v37.super_class = SBHPadAddSheetViewController;
  v7 = [(SBHAddWidgetSheetViewControllerBase *)&v37 initWithListLayoutProvider:a3 iconViewProvider:a4 allowedWidgets:a5.families appCellConfigurator:*&a5.includesNonStackable addWidgetSheetStyle:a6, a7];
  if (v7)
  {
    v8 = [MEMORY[0x1E695DF90] dictionary];
    v9 = *(v7 + 197);
    *(v7 + 197) = v8;

    v10 = [MEMORY[0x1E696AD88] defaultCenter];
    [v10 addObserver:v7 selector:sel__contentSizeCategoryDidChange_ name:*MEMORY[0x1E69DDC48] object:0];

    v11 = SBHScreenTypeForCurrentDevice();
    SBHPadAddWidgetSheetMetricsForScreenTypeAndInterfaceOrientation(v11, 3, &v27);
    v12 = v28;
    *(v7 + 1240) = v27;
    *(v7 + 1256) = v12;
    v13 = v29;
    v14 = v30;
    v15 = v32;
    *(v7 + 1304) = v31;
    *(v7 + 1320) = v15;
    *(v7 + 1272) = v13;
    *(v7 + 1288) = v14;
    v16 = v33;
    v17 = v34;
    v18 = v35;
    *(v7 + 173) = v36;
    *(v7 + 1352) = v17;
    *(v7 + 1368) = v18;
    *(v7 + 1336) = v16;
    SBHPadAddWidgetSheetMetricsForScreenTypeAndInterfaceOrientation(v11, 1, &v27);
    v19 = v28;
    *(v7 + 87) = v27;
    *(v7 + 88) = v19;
    v20 = v29;
    v21 = v30;
    v22 = v32;
    *(v7 + 91) = v31;
    *(v7 + 92) = v22;
    *(v7 + 89) = v20;
    *(v7 + 90) = v21;
    v23 = v33;
    v24 = v34;
    v25 = v35;
    *(v7 + 192) = v36;
    *(v7 + 94) = v24;
    *(v7 + 95) = v25;
    *(v7 + 93) = v23;
    [v7 setWantsBottomAttachedPresentation:1];
  }

  return v7;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x1E69DDC48] object:0];

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
  v3 = [(SBHPadAddSheetViewController *)self view];
  v4 = [v3 window];
  v5 = [(SBHPadAddSheetViewController *)self _newBackgroundView];
  backgroundView = self->_backgroundView;
  self->_backgroundView = v5;

  v7 = self->_backgroundView;
  [v3 bounds];
  [(MTMaterialView *)v7 setFrame:?];
  [(MTMaterialView *)self->_backgroundView setAutoresizingMask:18];
  [v3 addSubview:self->_backgroundView];
  v8 = [objc_alloc(MEMORY[0x1E69DCF78]) initWithStyle:1];
  splitViewController = self->_splitViewController;
  self->_splitViewController = v8;

  [(UISplitViewController *)self->_splitViewController _setOverrideHorizontalSizeClass:2];
  v10 = [(UISplitViewController *)self->_splitViewController view];
  v11 = [MEMORY[0x1E69DC888] clearColor];
  [v10 setBackgroundColor:v11];

  [(UISplitViewController *)self->_splitViewController setGutterWidth:0.0];
  [(UISplitViewController *)self->_splitViewController setPreferredSplitBehavior:1];
  [(UISplitViewController *)self->_splitViewController setPreferredDisplayMode:2];
  [(UISplitViewController *)self->_splitViewController setDisplayModeButtonVisibility:1];
  [(UISplitViewController *)self->_splitViewController setPrimaryBackgroundStyle:1];
  v52 = v4;
  if (v4)
  {
    v12 = v4;
  }

  else
  {
    v12 = self;
  }

  [(SBHPadAddSheetViewController *)self _paddedSidebarWidthForInterfaceOrientation:[(SBHPadAddSheetViewController *)v12 interfaceOrientation]];
  v14 = v13;
  [(UISplitViewController *)self->_splitViewController setPreferredPrimaryColumnWidth:?];
  [(UISplitViewController *)self->_splitViewController setMaximumPrimaryColumnWidth:v14];
  [(UISplitViewController *)self->_splitViewController setMinimumPrimaryColumnWidth:v14];
  [(SBHPadAddSheetViewController *)self bs_addChildViewController:self->_splitViewController];
  v15 = [(SBHAddWidgetSheetViewControllerBase *)self addWidgetSheetStyle];
  v16 = [SBHAddWidgetSheetViewController alloc];
  v17 = [(SBHAddWidgetSheetViewControllerBase *)self listLayoutProvider];
  v18 = [(SBHAddWidgetSheetViewControllerBase *)self iconViewProvider];
  v19 = [(SBHAddWidgetSheetViewControllerBase *)self allowedWidgets];
  v21 = [(SBHAddWidgetSheetViewControllerBase *)v16 initWithListLayoutProvider:v17 iconViewProvider:v18 allowedWidgets:v19 addWidgetSheetStyle:v20, v15];
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
  v27 = [(SBHAddWidgetSheetViewController *)self->_left view];
  v28 = [MEMORY[0x1E69DC888] clearColor];
  [v27 setBackgroundColor:v28];

  [(UISplitViewController *)self->_splitViewController setViewController:self->_left forColumn:0];
  v29 = SBHBundle();
  v30 = [v29 localizedStringForKey:@"WIDGET_ADD_SHEET_SEARCH_PLACEHOLDER" value:&stru_1F3D472A8 table:@"SpringBoardHome"];

  v31 = [[SBHWidgetSearchController alloc] initWithAddWidgetSheetStyle:v15 placeholderText:v30];
  widgetSearchController = self->_widgetSearchController;
  self->_widgetSearchController = v31;

  [(SBHWidgetSearchController *)self->_widgetSearchController setObscuresBackgroundDuringPresentation:0];
  [(SBHWidgetSearchController *)self->_widgetSearchController setDelegate:self->_left];
  [(SBHWidgetSearchController *)self->_widgetSearchController setSearchResultsUpdater:self];
  [(SBHWidgetSearchController *)self->_widgetSearchController setAlwaysShowBarBackground:self->_wantsSeparator];
  [(SBHWidgetSearchController *)self->_widgetSearchController setShouldInsetContentForGrabber:self->_wantsBottomAttachedPresentation];
  v33 = [(MTMaterialView *)self->_backgroundView visualStylingProviderForCategory:2];
  v34 = [(SBHWidgetSearchController *)self->_widgetSearchController searchBarTextFieldBackgroundView];
  [v33 automaticallyUpdateView:v34 withStyle:2];

  v35 = [(SBHAddWidgetSheetViewController *)self->_left navigationItem];
  [(SBHAddWidgetSheetViewController *)self->_left setDefinesPresentationContext:1];
  [v35 setLargeTitleDisplayMode:2];
  [v35 setSearchBarPlacementAllowsToolbarIntegration:0];
  [v35 setHidesSearchBarWhenScrolling:0];
  v36 = objc_alloc_init(MEMORY[0x1E69DD5E8]);
  [v36 setHideBackButton:1];
  [v36 setHideStandardTitle:1];
  [v36 setHideCenterBarButtons:1];
  [v36 setHideTrailingBarButtons:1];
  [v36 setHideLeadingBarButtons:1];
  [v36 setHeight:20.0];
  [v35 setTitleView:v36];
  [v35 setSearchController:self->_widgetSearchController];
  v37 = [(SBHWidgetSearchController *)self->_widgetSearchController searchBar];
  [v37 sizeToFit];

  v38 = [(SBHWidgetSearchController *)self->_widgetSearchController searchBar];
  [v38 layoutIfNeeded];

  [(SBHAddWidgetSheetViewController *)self->_left setExternalSearchController:self->_widgetSearchController];
  if ([(SBHPadAddSheetViewController *)self wantsCloseButton])
  {
    v39 = [MEMORY[0x1E69DC738] buttonWithType:7];
    [v39 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v39 addTarget:self action:sel_closeButtonTapped_ forControlEvents:64];
    v40 = [(UISplitViewController *)self->_splitViewController view];
    v50 = [MEMORY[0x1E69DC740] borderedButtonConfiguration];
    [v50 setCornerStyle:4];
    [v39 setConfiguration:v50];
    [v40 addSubview:v39];
    v47 = MEMORY[0x1E696ACD8];
    v49 = [v39 trailingAnchor];
    [v40 trailingAnchor];
    v48 = v51 = v3;
    v41 = [v49 constraintEqualToAnchor:v48 constant:-21.0];
    v54[0] = v41;
    v42 = [v39 topAnchor];
    v43 = [v40 topAnchor];
    [v42 constraintEqualToAnchor:v43 constant:21.0];
    v45 = v44 = v30;
    v54[1] = v45;
    v46 = [MEMORY[0x1E695DEC8] arrayWithObjects:v54 count:2];
    [v47 activateConstraints:v46];

    v30 = v44;
    v3 = v51;
  }
}

- (id)_newBackgroundView
{
  v2 = [MEMORY[0x1E69AE158] materialViewWithRecipe:54];
  [v2 setBackdropScaleAdjustment:&__block_literal_global_25];
  [v2 setGroupNameBase:@"Add-Sheet"];
  return v2;
}

- (void)setWantsSeparator:(BOOL)a3
{
  if (self->_wantsSeparator != a3)
  {
    self->_wantsSeparator = a3;
    if (a3)
    {
      [(SBHPadAddSheetViewController *)self loadViewIfNeeded];
      v4 = objc_alloc_init(MEMORY[0x1E69DD250]);
      separatorView = self->_separatorView;
      self->_separatorView = v4;

      v6 = self->_separatorView;
      v7 = [MEMORY[0x1E69DC888] separatorColor];
      [(UIView *)v6 setBackgroundColor:v7];

      v8 = [(UISplitViewController *)self->_splitViewController view];
      [v8 addSubview:self->_separatorView];
    }

    else
    {
      [(UIView *)self->_separatorView removeFromSuperview];
      v8 = self->_separatorView;
      self->_separatorView = 0;
    }

    [(SBHWidgetSearchController *)self->_widgetSearchController setAlwaysShowBarBackground:self->_wantsSeparator];
    left = self->_left;
    wantsSeparator = self->_wantsSeparator;

    [(SBHAddWidgetSheetViewController *)left setShouldCenterAppCells:wantsSeparator];
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

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = SBHPadAddSheetViewController;
  [(SBHPadAddSheetViewController *)&v4 viewWillAppear:a3];
  [(SBHPadAddSheetViewController *)self configureViewsForCurrentInterfaceOrientation];
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = SBHPadAddSheetViewController;
  [(SBHPadAddSheetViewController *)&v4 viewDidAppear:a3];
  [(SBHPadAddSheetViewController *)self _layoutSeparatorView];
}

- (void)viewDidLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = SBHPadAddSheetViewController;
  [(SBHPadAddSheetViewController *)&v5 viewDidLayoutSubviews];
  v3 = [(SBHWidgetSearchController *)self->_widgetSearchController searchBar];
  [v3 layoutIfNeeded];

  [(SBHPadAddSheetViewController *)self _layoutSearchBarGradientMaskLayers];
  [(SBHPadAddSheetViewController *)self _layoutSeparatorView];
  v4 = [(SBHPadAddSheetViewController *)self sheetPresentationController];
  [(SBHWidgetSearchController *)self->_widgetSearchController grabberTopSpacing];
  [v4 _setGrabberTopSpacing:?];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v8 = SBFWindowForViewControllerTransition();
  v9 = [v8 _toWindowOrientation];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __83__SBHPadAddSheetViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v11[3] = &unk_1E808B460;
  v11[4] = self;
  v11[5] = v9;
  [v7 animateAlongsideTransition:v11 completion:0];
  v10.receiver = self;
  v10.super_class = SBHPadAddSheetViewController;
  [(SBHPadAddSheetViewController *)&v10 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
}

- (void)updateSearchResultsForSearchController:(id)a3
{
  [(SBHAddWidgetSheetViewController *)self->_left updateSearchResultsForSearchController:a3];

  [(SBHPadAddSheetViewController *)self setNeedsUpdateContentUnavailableConfiguration];
}

- (void)updateContentUnavailableConfigurationUsingState:(id)a3
{
  v4 = [(SBHAddWidgetSheetViewController *)self->_left _updatedContentUnavailableConfigurationUsingState:a3];
  [(SBHAddWidgetSheetViewController *)self->_left setContentUnavailableConfiguration:v4];
}

- (UIEdgeInsets)preferredInsetsForSheetPresentationInInterfaceOrientation:(int64_t)a3
{
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  v4 = SBHScreenTypeForCurrentDevice();
  SBHPadAddWidgetSheetMetricsForScreenTypeAndInterfaceOrientation(v4, a3, v9);
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

- (void)setAddWidgetSheetWidgetBackgroundType:(unint64_t)a3
{
  v6.receiver = self;
  v6.super_class = SBHPadAddSheetViewController;
  [(SBHAddWidgetSheetViewControllerBase *)&v6 setAddWidgetSheetWidgetBackgroundType:?];
  [(SBHAddWidgetSheetViewControllerBase *)self->_left setAddWidgetSheetWidgetBackgroundType:a3];
  v5 = [(SBHPadAddSheetViewController *)self _detailViewController];
  [v5 setAddWidgetSheetWidgetBackgroundType:a3];
}

- (void)configureViewsForInterfaceOrientation:(int64_t)a3
{
  v5 = [(SBHPadAddSheetViewController *)self view];
  v6 = [v5 _screen];
  [v6 _referenceBounds];
  v8 = v7;
  v10 = v9;

  if ((a3 - 3) >= 2)
  {
    v11 = v10;
  }

  else
  {
    v11 = v8;
  }

  if ((a3 - 3) < 2)
  {
    v8 = v10;
  }

  [(SBHPadAddSheetViewController *)self preferredInsetsForSheetPresentationInInterfaceOrientation:a3];
  [(SBHPadAddSheetViewController *)self setPreferredContentSize:v8 - (v12 + v13), v11 - (v14 + v15)];
  [(SBHPadAddSheetViewController *)self _paddedSidebarWidthForInterfaceOrientation:a3];
  v17 = v16;
  [(UISplitViewController *)self->_splitViewController setPreferredPrimaryColumnWidth:?];
  [(UISplitViewController *)self->_splitViewController setMaximumPrimaryColumnWidth:v17];
  [(UISplitViewController *)self->_splitViewController setMinimumPrimaryColumnWidth:v17];
  v18 = [(UISplitViewController *)self->_splitViewController view];
  [v18 layoutIfNeeded];

  v19 = [(SBHPadAddSheetViewController *)self view];
  [v19 setNeedsLayout];
}

- (void)configureViewsForCurrentInterfaceOrientation
{
  v3 = [(SBHPadAddSheetViewController *)self view];
  v5 = [v3 window];

  v4 = v5;
  if (!v5)
  {
    v4 = self;
  }

  [(SBHPadAddSheetViewController *)self configureViewsForInterfaceOrientation:[(SBHPadAddSheetViewController *)v4 interfaceOrientation]];
}

- (double)_columnSpacing
{
  v2 = [(SBHAddWidgetSheetViewControllerBase *)self listLayoutProvider];
  v3 = [v2 layoutForIconLocation:@"SBIconLocationRoot"];

  [v3 iconImageInfoForGridSizeClass:@"SBHIconGridSizeClassSmall"];
  v5 = v4;
  [v3 iconImageInfoForGridSizeClass:@"SBHIconGridSizeClassMedium"];
  v7 = v6 + v5 * -2.0;

  return v7;
}

- (unint64_t)_numberOfWidgetColumnsThatFitInWidth:(double)a3
{
  v5 = [(SBHAddWidgetSheetViewControllerBase *)self listLayoutProvider];
  v6 = [v5 layoutForIconLocation:@"SBIconLocationRoot"];

  [v6 iconImageInfoForGridSizeClass:@"SBHIconGridSizeClassSmall"];
  v8 = v7;
  [v6 iconImageInfoForGridSizeClass:@"SBHIconGridSizeClassMedium"];
  v10 = v9 - v8;
  [(SBHPadAddSheetViewController *)self _metricsForCurrentOrientation:0];
  v11 = ((v10 - v8 - 0.0 - 0.0 + a3) / v10);
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

- (double)_widthNeededForWidgetColumns:(unint64_t)a3
{
  v5 = [(SBHAddWidgetSheetViewControllerBase *)self listLayoutProvider];
  v6 = [v5 layoutForIconLocation:@"SBIconLocationRoot"];

  [v6 iconImageInfoForGridSizeClass:@"SBHIconGridSizeClassSmall"];
  v8 = v7;
  [v6 iconImageInfoForGridSizeClass:@"SBHIconGridSizeClassMedium"];
  v10 = v9 - v8;
  [(SBHPadAddSheetViewController *)self _metricsForCurrentOrientation:0];

  return 0.0 - (v10 - v8 - a3 * v10) + 0.0;
}

- (double)_paddedSidebarWidthForInterfaceOrientation:(int64_t)a3
{
  if ([(SBHPadAddSheetViewController *)self addWidgetSheetLocation]== 1)
  {
    return *MEMORY[0x1E69DE3C8];
  }

  [(SBHPadAddSheetViewController *)self _metricsForOrientation:a3, 0];
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
  v11 = [(SBHWidgetSearchController *)self->_widgetSearchController searchBar];
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

- (void)_layoutSeparatorView
{
  v3 = [(SBHPadAddSheetViewController *)self traitCollection];
  [v3 displayScale];
  v5 = v4;

  v6 = [(UISplitViewController *)self->_splitViewController view];
  v7 = [(SBHAddWidgetSheetViewController *)self->_left view];
  [v7 bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = [(SBHAddWidgetSheetViewController *)self->_left view];
  [v6 convertRect:v16 fromView:{v9, v11, v13, v15}];
  MaxX = CGRectGetMaxX(v24);

  if (v5 <= 0.0)
  {
    v18 = 1.0;
  }

  else
  {
    v18 = 1.0 / v5;
  }

  v19 = [(SBHPadAddSheetViewController *)self view];
  [v19 bounds];
  v21 = v20;

  separatorView = self->_separatorView;

  [(UIView *)separatorView setFrame:MaxX, 0.0, v18, v21];
}

- (id)_detailViewController
{
  v2 = [(SBHPadAddSheetViewController *)self splitViewController];
  v3 = [v2 viewControllerForColumn:2];
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
    v8 = v7;
  }

  else
  {
    v8 = [v5 navigationController];
  }

  v9 = v8;

  v10 = [v9 topViewController];
  v11 = objc_opt_class();
  v12 = v10;
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

- (SBHPadAddWidgetSheetMetrics)_metricsForOrientation:(SEL)a3
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
  v4 = [(SBHPadAddSheetViewController *)self view];
  v7 = [v4 window];

  v5 = v7;
  if (!v7)
  {
    v5 = self;
  }

  [(SBHPadAddSheetViewController *)self _metricsForOrientation:[(SBHPadAddSheetViewController *)v5 interfaceOrientation]];

  return result;
}

- (void)setApplicationWidgetCollections:(id)a3
{
  objc_storeStrong(&self->_applicationWidgetCollections, a3);
  v5 = a3;
  [(SBHAddWidgetSheetViewController *)self->_left setApplicationWidgetCollections:v5];
  v6 = [(SBHPadAddSheetViewController *)self _detailViewController];
  [v6 setApplicationWidgetCollections:v5];
}

- (void)setFavoredApplicationWidgetCollections:(id)a3
{
  v4 = a3;
  v5 = [v4 copy];
  favoredApplicationWidgetCollections = self->_favoredApplicationWidgetCollections;
  self->_favoredApplicationWidgetCollections = v5;

  [(SBHAddWidgetSheetViewController *)self->_left setFavoredApplicationWidgetCollections:v4];
  v7 = [(SBHPadAddSheetViewController *)self _detailViewController];
  [v7 setFavoredApplicationWidgetCollections:v4];
}

- (void)setDisfavoredApplicationWidgetCollections:(id)a3
{
  v4 = a3;
  v5 = [v4 copy];
  disfavoredApplicationWidgetCollections = self->_disfavoredApplicationWidgetCollections;
  self->_disfavoredApplicationWidgetCollections = v5;

  [(SBHAddWidgetSheetViewController *)self->_left setDisfavoredApplicationWidgetCollections:v4];
  v7 = [(SBHPadAddSheetViewController *)self _detailViewController];
  [v7 setDisfavoredApplicationWidgetCollections:v4];
}

- (void)setSuggestedItems:(id)a3 forGalleryLayoutSize:(unint64_t)a4
{
  v11 = a3;
  suggestedItemsByGalleryLayoutSize = self->_suggestedItemsByGalleryLayoutSize;
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
  v8 = [(NSMutableDictionary *)suggestedItemsByGalleryLayoutSize objectForKeyedSubscript:v7];

  if (v8 != v11)
  {
    v9 = self->_suggestedItemsByGalleryLayoutSize;
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
    [(NSMutableDictionary *)v9 setObject:v11 forKeyedSubscript:v10];

    [(SBHAddWidgetSheetViewController *)self->_left setSuggestedItems:v11 forGalleryLayoutSize:a4];
  }
}

- (void)setCustomApplicationWidgetCollections:(id)a3
{
  objc_storeStrong(&self->_customApplicationWidgetCollections, a3);
  v5 = a3;
  [(SBHAddWidgetSheetViewController *)self->_left setCustomApplicationWidgetCollections:v5];
  v6 = [(SBHPadAddSheetViewController *)self _detailViewController];
  [v6 setCustomApplicationWidgetCollections:v5];
}

- (void)setWantsBottomAttachedPresentation:(BOOL)a3
{
  if (self->_wantsBottomAttachedPresentation != a3)
  {
    v4 = a3;
    self->_wantsBottomAttachedPresentation = a3;
    [(SBHWidgetSearchController *)self->_widgetSearchController setShouldInsetContentForGrabber:?];
    v6 = [(SBHPadAddSheetViewController *)self sheetPresentationController];
    [v6 _setWantsBottomAttached:v4];
  }
}

- (id)suggestedItemsForGalleryLayoutSize:(unint64_t)a3
{
  suggestedItemsByGalleryLayoutSize = self->_suggestedItemsByGalleryLayoutSize;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v5 = [(NSMutableDictionary *)suggestedItemsByGalleryLayoutSize objectForKeyedSubscript:v4];

  return v5;
}

- (void)setPresenter:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_presenter);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_presenter, obj);
    [(SBHAddWidgetSheetViewController *)self->_left setPresenter:obj];
  }
}

- (void)setGalleryLayoutSize:(unint64_t)a3
{
  self->_galleryLayoutSize = a3;
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

- (void)addWidgetSheetViewController:(id)a3 didSelectWidgetIconView:(id)a4
{
  v5 = a4;
  v6 = [(SBHAddWidgetSheetViewControllerBase *)self delegate];
  [v6 addWidgetSheetViewController:self didSelectWidgetIconView:v5];
}

- (void)addWidgetSheetViewControllerDidCancel:(id)a3
{
  v4 = [(SBHAddWidgetSheetViewControllerBase *)self delegate];
  [v4 addWidgetSheetViewControllerDidCancel:self];
}

- (void)addWidgetSheetViewControllerWillAppear:(id)a3
{
  v4 = [(SBHAddWidgetSheetViewControllerBase *)self delegate];
  [v4 addWidgetSheetViewControllerWillAppear:self];
}

- (void)addWidgetSheetViewControllerDidAppear:(id)a3
{
  v4 = [(SBHAddWidgetSheetViewControllerBase *)self delegate];
  [v4 addWidgetSheetViewControllerDidAppear:self];
}

- (void)addWidgetSheetViewControllerWillDisappear:(id)a3
{
  v4 = [(SBHAddWidgetSheetViewControllerBase *)self delegate];
  [v4 addWidgetSheetViewControllerWillDisappear:self];
}

- (void)addWidgetSheetViewControllerDidDisappear:(id)a3
{
  v4 = [(SBHAddWidgetSheetViewControllerBase *)self delegate];
  [v4 addWidgetSheetViewControllerDidDisappear:self];
}

- (SBHWidgetDragHandling)widgetDragHandler
{
  v2 = [(SBHAddWidgetSheetViewControllerBase *)self delegate];
  v3 = [v2 widgetDragHandler];

  return v3;
}

- (id)backgroundViewMatchingMaterialBeneathAddWidgetSheetViewController:(id)a3
{
  v3 = [(SBHPadAddSheetViewController *)self _newBackgroundView];

  return v3;
}

- (id)addWidgetSheetViewController:(id)a3 detailViewControllerForWidgetCollection:(id)a4
{
  v5 = a4;
  v6 = [(SBHAddWidgetSheetViewControllerBase *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v7 = [v6 addWidgetSheetViewController:self detailViewControllerForWidgetCollection:v5];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)galleryViewControllerForAddWidgetSheetViewController:(id)a3
{
  v4 = [(SBHAddWidgetSheetViewControllerBase *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = [v4 galleryViewControllerForAddWidgetSheetViewController:self];
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