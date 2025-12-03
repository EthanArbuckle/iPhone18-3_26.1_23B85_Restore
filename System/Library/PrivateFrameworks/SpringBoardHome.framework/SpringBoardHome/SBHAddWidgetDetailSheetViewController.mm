@interface SBHAddWidgetDetailSheetViewController
- (NSMutableDictionary)userInfo;
- (SBFFluidBehaviorSettings)widgetInfoScrollViewAnimationSettings;
- (SBHAddWidgetDetailsSheetPageViewController)currentPage;
- (SBHWidgetDragHandling)widgetDragHandler;
- (SBHWidgetSheetViewControllerPresenter)presenter;
- (double)_minumumWidgetGalleryScrollViewHeight;
- (id)_currentGalleryItem;
- (id)_materialViewForVisualStyling;
- (id)_newBackgroundView;
- (id)backgroundViewMatchingMaterialBeneathPageViewController:(id)controller;
- (unint64_t)_closestPageWithGalleryItem:(id)item;
- (unint64_t)_pageIndexAtContentOffset:(CGPoint)offset;
- (void)_addPage:(id)page;
- (void)_contentSizeCategoryDidChange;
- (void)_createConstraints;
- (void)_createViews;
- (void)_scrollMainScrollViewToMatchInfoScrollViewIfNeeded;
- (void)_scrollToPageIndex:(unint64_t)index animated:(BOOL)animated;
- (void)_updateBackgroundRecipe;
- (void)_updateConstraintConstants;
- (void)_updateControlsForContentOffset:(CGPoint)offset animated:(BOOL)animated;
- (void)_updateLayoutMargins;
- (void)_updateMaterialRecipeForBackgroundView:(id)view;
- (void)_updatePageViewControllerAppearanceForFastScrollToTargetIndex:(unint64_t)index;
- (void)_updatePageViewControllerAppearanceForNormalScroll;
- (void)_updatePageViewControllerAppearanceWithAppearedBlock:(id)block;
- (void)_updateParallaxEffect;
- (void)_updateStackViewForSizeCategory;
- (void)addButtonTapped:(id)tapped;
- (void)closeButtonTapped:(id)tapped;
- (void)configureBackgroundView:(id)view matchingMaterialBeneathPageViewController:(id)controller;
- (void)configureForGalleryItem:(id)item selectedSizeClass:(int64_t)class;
- (void)currentPage;
- (void)dealloc;
- (void)loadView;
- (void)pageControlChanged:(id)changed;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
- (void)setApplicationWidgetCollection:(id)collection;
- (void)updateViewConstraints;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewIsAppearing:(BOOL)appearing;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation SBHAddWidgetDetailSheetViewController

- (void)loadView
{
  v12[1] = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = SBHAddWidgetDetailSheetViewController;
  [(SBHAddWidgetDetailSheetViewController *)&v10 loadView];
  [(SBHAddWidgetDetailSheetViewController *)self _createViews];
  [(SBHAddWidgetDetailSheetViewController *)self _createConstraints];
  v3 = objc_opt_self();
  v12[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  v5 = [(SBHAddWidgetDetailSheetViewController *)self registerForTraitChanges:v4 withAction:sel__contentSizeCategoryDidChange];

  v6 = objc_opt_self();
  v11 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v11 count:1];
  v8 = [(SBHAddWidgetDetailSheetViewController *)self registerForTraitChanges:v7 withAction:sel__updateBackgroundRecipe];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__contentSizeCategoryDidChange name:*MEMORY[0x1E69DDC48] object:0];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69DDC48] object:0];

  v4.receiver = self;
  v4.super_class = SBHAddWidgetDetailSheetViewController;
  [(SBHAddWidgetDetailSheetViewController *)&v4 dealloc];
}

- (void)viewWillAppear:(BOOL)appear
{
  v11 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = SBHAddWidgetDetailSheetViewController;
  [(SBHAddWidgetDetailSheetViewController *)&v8 viewWillAppear:appear];
  v4 = SBLogWidgets();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    applicationWidgetCollection = self->_applicationWidgetCollection;
    *buf = 138543362;
    v10 = applicationWidgetCollection;
    _os_log_impl(&dword_1BEB18000, v4, OS_LOG_TYPE_DEFAULT, "Presenting add widget detail sheet for applicationWidgetCollection: %{public}@", buf, 0xCu);
  }

  if (!self->_performedInitialSelection)
  {
    view = [(SBHAddWidgetDetailSheetViewController *)self view];
    [view layoutIfNeeded];
  }

  navigationItem = [(SBHAddWidgetDetailSheetViewController *)self navigationItem];
  [navigationItem _setNavigationBarHidden:{-[SBHAddWidgetDetailSheetViewController _wantsNavigationBarHidden](self, "_wantsNavigationBarHidden")}];
}

- (void)viewIsAppearing:(BOOL)appearing
{
  v4.receiver = self;
  v4.super_class = SBHAddWidgetDetailSheetViewController;
  [(SBHAddWidgetDetailSheetViewController *)&v4 viewIsAppearing:appearing];
  if (!self->_performedInitialSelection)
  {
    self->_performedInitialSelection = 1;
    [(SBHAddWidgetDetailSheetViewController *)self _scrollToPageIndex:self->_initialSelectionIndex animated:0];
    [(SBHAddWidgetDetailSheetViewController *)self scrollViewDidScroll:self->_widgetGalleryScrollView];
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = SBHAddWidgetDetailSheetViewController;
  [(SBHAddWidgetDetailSheetViewController *)&v4 viewDidDisappear:disappear];
  [(SBHWidgetSearchController *)self->_externalSearchController updateSearchBarBackgroundForScrollDistance:self forClient:2.22507386e-308];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __92__SBHAddWidgetDetailSheetViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v9[3] = &unk_1E8089418;
  v9[4] = self;
  coordinatorCopy = coordinator;
  [coordinatorCopy animateAlongsideTransition:v9 completion:0];
  v8.receiver = self;
  v8.super_class = SBHAddWidgetDetailSheetViewController;
  [(SBHAddWidgetDetailSheetViewController *)&v8 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
}

- (void)updateViewConstraints
{
  v3.receiver = self;
  v3.super_class = SBHAddWidgetDetailSheetViewController;
  [(SBHAddWidgetDetailSheetViewController *)&v3 updateViewConstraints];
  [(SBHAddWidgetDetailSheetViewController *)self _updateConstraintConstants];
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = SBHAddWidgetDetailSheetViewController;
  [(SBHAddWidgetDetailSheetViewController *)&v3 viewDidLayoutSubviews];
  [(SBHAddWidgetDetailSheetViewController *)self _updateLayoutMargins];
}

- (void)_createViews
{
  v121 = *MEMORY[0x1E69E9840];
  view = [(SBHAddWidgetDetailSheetViewController *)self view];
  v4 = objc_alloc_init(MEMORY[0x1E69DD250]);
  containerView = self->_containerView;
  self->_containerView = v4;

  [(UIView *)self->_containerView setTranslatesAutoresizingMaskIntoConstraints:0];
  addWidgetSheetStyle = [(SBHAddWidgetSheetViewControllerBase *)self addWidgetSheetStyle];
  if (addWidgetSheetStyle != 1)
  {
    _newBackgroundView = [(SBHAddWidgetDetailSheetViewController *)self _newBackgroundView];
    backgroundView = self->_backgroundView;
    self->_backgroundView = _newBackgroundView;

    v8 = self->_backgroundView;
    [view bounds];
    [(MTMaterialView *)v8 setFrame:?];
    [(MTMaterialView *)self->_backgroundView setAutoresizingMask:18];
    [view addSubview:self->_backgroundView];
    [(SBHAddWidgetDetailSheetViewController *)self _updateMaterialRecipeForBackgroundView:self->_backgroundView];
  }

  v9 = objc_alloc_init(MEMORY[0x1E698E808]);
  contentScrollView = self->_contentScrollView;
  self->_contentScrollView = v9;

  [(BSUIScrollView *)self->_contentScrollView setDelegate:self];
  [(BSUIScrollView *)self->_contentScrollView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(BSUIScrollView *)self->_contentScrollView setShowsVerticalScrollIndicator:0];
  [(BSUIScrollView *)self->_contentScrollView setShowsHorizontalScrollIndicator:0];
  [(BSUIScrollView *)self->_contentScrollView setClipsToBounds:0];
  [(BSUIScrollView *)self->_contentScrollView _setPocketsEnabled:0];
  [(BSUIScrollView *)self->_contentScrollView setContentInsetAdjustmentBehavior:2];
  [(BSUIScrollView *)self->_contentScrollView addSubview:self->_containerView];
  [view addSubview:self->_contentScrollView];
  v11 = objc_alloc_init(MEMORY[0x1E69DCF90]);
  contentStackView = self->_contentStackView;
  self->_contentStackView = v11;

  [(UIStackView *)self->_contentStackView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIStackView *)self->_contentStackView setAxis:1];
  [(UIStackView *)self->_contentStackView setAlignment:0];
  [(UIView *)self->_containerView addSubview:self->_contentStackView];
  v13 = objc_alloc_init(MEMORY[0x1E69DD250]);
  headerView = self->_headerView;
  self->_headerView = v13;

  [(UIView *)self->_headerView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIStackView *)self->_contentStackView addArrangedSubview:self->_headerView];
  if (![(SBHAddWidgetSheetViewControllerBase *)self addWidgetSheetStyle])
  {
    traitCollection = [(SBHAddWidgetDetailSheetViewController *)self traitCollection];
    [traitCollection displayScale];
    v17 = v16;

    v18 = [[SBHAddWidgetDetailSheetTitleView alloc] initWithIconImageInfo:30.0 contentInsets:30.0, v17, 7.0, 21.0, 21.0, 21.0, 21.0];
    titleView = self->_titleView;
    self->_titleView = v18;

    [(SBHAddWidgetDetailSheetTitleView *)self->_titleView setTranslatesAutoresizingMaskIntoConstraints:0];
    applicationWidgetCollection = [(SBHAddWidgetDetailSheetViewController *)self applicationWidgetCollection];
    appCellConfigurator = [(SBHAddWidgetSheetViewControllerBase *)self appCellConfigurator];
    [appCellConfigurator configureCell:self->_titleView withApplicationWidgetCollection:applicationWidgetCollection];

    [(UIView *)self->_headerView addSubview:self->_titleView];
  }

  if (addWidgetSheetStyle != 1)
  {
    v22 = [MEMORY[0x1E69DC738] buttonWithType:7];
    closeButton = self->_closeButton;
    self->_closeButton = v22;

    [(UIButton *)self->_closeButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIButton *)self->_closeButton addTarget:self action:sel_closeButtonTapped_ forControlEvents:64];
    [view addSubview:self->_closeButton];
  }

  v83 = view;
  v24 = objc_alloc_init(MEMORY[0x1E69DCF90]);
  selfCopy3 = self;
  widgetInfoStackView = self->_widgetInfoStackView;
  self->_widgetInfoStackView = v24;

  [(UIStackView *)self->_widgetInfoStackView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIStackView *)self->_widgetInfoStackView setAxis:0];
  [(UIStackView *)self->_widgetInfoStackView setAlignment:0];
  v27 = objc_alloc_init(MEMORY[0x1E698E808]);
  widgetInfoScrollView = self->_widgetInfoScrollView;
  self->_widgetInfoScrollView = v27;

  [(BSUIScrollView *)selfCopy3->_widgetInfoScrollView setDelegate:selfCopy3];
  [(BSUIScrollView *)self->_widgetInfoScrollView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(BSUIScrollView *)self->_widgetInfoScrollView setPagingEnabled:1];
  [(BSUIScrollView *)self->_widgetInfoScrollView setShowsHorizontalScrollIndicator:0];
  [(BSUIScrollView *)selfCopy3->_widgetInfoScrollView addSubview:selfCopy3->_widgetInfoStackView];
  [(BSUIScrollView *)self->_widgetInfoScrollView _setPocketsEnabled:0];
  [(UIStackView *)selfCopy3->_contentStackView addArrangedSubview:selfCopy3->_widgetInfoScrollView];
  v29 = objc_alloc_init(MEMORY[0x1E69DCF90]);
  widgetGalleryStackView = self->_widgetGalleryStackView;
  self->_widgetGalleryStackView = v29;

  [(UIStackView *)self->_widgetGalleryStackView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIStackView *)self->_widgetGalleryStackView setSpacing:0.0];
  [(UIStackView *)self->_widgetGalleryStackView setAxis:0];
  v31 = objc_alloc_init(MEMORY[0x1E698E808]);
  widgetGalleryScrollView = self->_widgetGalleryScrollView;
  self->_widgetGalleryScrollView = v31;

  [(BSUIScrollView *)selfCopy3->_widgetGalleryScrollView setDelegate:selfCopy3];
  [(BSUIScrollView *)self->_widgetGalleryScrollView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(BSUIScrollView *)self->_widgetGalleryScrollView setDecelerationRate:*MEMORY[0x1E69DE3A0]];
  [(BSUIScrollView *)self->_widgetGalleryScrollView setClipsToBounds:0];
  [(BSUIScrollView *)self->_widgetGalleryScrollView setShowsHorizontalScrollIndicator:0];
  [(BSUIScrollView *)self->_widgetGalleryScrollView _setInterpageSpacing:0.0, 0.0];
  [(BSUIScrollView *)self->_widgetGalleryScrollView _setTouchInsets:0.0, -0.0, 0.0, -0.0];
  [(BSUIScrollView *)self->_widgetGalleryScrollView _setPocketsEnabled:0];
  [(BSUIScrollView *)selfCopy3->_widgetGalleryScrollView addSubview:selfCopy3->_widgetGalleryStackView];
  [(UIStackView *)selfCopy3->_contentStackView addArrangedSubview:selfCopy3->_widgetGalleryScrollView];
  v33 = objc_alloc_init(MEMORY[0x1E695DF70]);
  pages = self->_pages;
  self->_pages = v33;

  [(SBHAddWidgetSheetViewControllerBase *)self allowedWidgets];
  v86 = v35;
  allowedWidgets = [(SBHAddWidgetSheetViewControllerBase *)self allowedWidgets];
  widgetWrapperViewControllerBackgroundType = [(SBHAddWidgetSheetViewControllerBase *)self widgetWrapperViewControllerBackgroundType];
  v115 = 0u;
  v116 = 0u;
  v117 = 0u;
  v118 = 0u;
  applicationWidgetCollection2 = [(SBHAddWidgetDetailSheetViewController *)self applicationWidgetCollection];
  widgetDescriptors = [applicationWidgetCollection2 widgetDescriptors];

  obj = widgetDescriptors;
  v87 = [widgetDescriptors countByEnumeratingWithState:&v115 objects:v120 count:16];
  if (v87)
  {
    v85 = *v116;
    do
    {
      for (i = 0; i != v87; ++i)
      {
        if (*v116 != v85)
        {
          objc_enumerationMutation(obj);
        }

        v39 = *(*(&v115 + 1) + 8 * i);
        if ((v86 & 1) != 0 || [*(*(&v115 + 1) + 8 * i) sbh_canBeAddedToStack])
        {
          applicationWidgetCollection3 = [(SBHAddWidgetDetailSheetViewController *)selfCopy3 applicationWidgetCollection];
          isDisfavored = [applicationWidgetCollection3 isDisfavored];

          addWidgetSheetLocation = [(SBHAddWidgetSheetViewControllerBase *)selfCopy3 addWidgetSheetLocation];
          v114 = 0;
          v112 = 0u;
          v113 = 0u;
          v110 = 0u;
          v111 = 0u;
          v108 = 0u;
          v109 = 0u;
          v106 = 0u;
          v107 = 0u;
          v105 = 0u;
          [(SBHAddWidgetSheetViewControllerBase *)selfCopy3 addWidgetSheetMetrics];
          if (isDisfavored)
          {
            v43 = [v39 sbh_disfavoredSizeClassesForAddWidgetSheetLocation:addWidgetSheetLocation];
          }

          else
          {
            v43 = [v39 sbh_favoredSizeClassesForAddWidgetSheetLocation:addWidgetSheetLocation];
          }

          v88[0] = MEMORY[0x1E69E9820];
          v44 = (v43 & allowedWidgets);
          v88[1] = 3221225472;
          v89 = __53__SBHAddWidgetDetailSheetViewController__createViews__block_invoke;
          v90 = &unk_1E8091430;
          v91 = v39;
          v92 = selfCopy3;
          v93 = widgetWrapperViewControllerBackgroundType;
          v94 = addWidgetSheetStyle;
          v101 = v111;
          v102 = v112;
          v103 = v113;
          v104 = v114;
          v97 = v107;
          v98 = v108;
          v99 = v109;
          v100 = v110;
          v95 = v105;
          v96 = v106;
          v45 = v88;
          if (v44)
          {
            v46 = 0;
            v119 = 0;
            v47 = vcnt_s8(v44);
            v47.i16[0] = vaddlv_u8(v47);
            v48 = v47.i32[0];
            do
            {
              if (((1 << v46) & *&v44) != 0)
              {
                (v89)(v45);
                if (v119)
                {
                  break;
                }

                --v48;
              }

              if (v46 > 0x3E)
              {
                break;
              }

              ++v46;
            }

            while (v48 > 0);
            selfCopy3 = self;
          }

          v49 = [SBHAddWidgetDetailSheetWidgetDescriptionView alloc];
          sbh_widgetName = [v39 sbh_widgetName];
          sbh_widgetDescription = [v39 sbh_widgetDescription];
          v52 = [(SBHAddWidgetDetailSheetWidgetDescriptionView *)v49 initWithTitle:sbh_widgetName subtitle:sbh_widgetDescription];

          _materialViewForVisualStyling = [(SBHAddWidgetDetailSheetViewController *)selfCopy3 _materialViewForVisualStyling];
          v54 = [_materialViewForVisualStyling visualStylingProviderForCategory:1];
          descriptionLabel = [(SBHAddWidgetDetailSheetWidgetDescriptionView *)v52 descriptionLabel];
          [v54 automaticallyUpdateView:descriptionLabel withStyle:2];

          [(SBHAddWidgetDetailSheetWidgetDescriptionView *)v52 setTranslatesAutoresizingMaskIntoConstraints:0];
          [(UIStackView *)selfCopy3->_widgetInfoStackView addArrangedSubview:v52];
          widthAnchor = [(SBHAddWidgetDetailSheetWidgetDescriptionView *)v52 widthAnchor];
          safeAreaLayoutGuide = [v83 safeAreaLayoutGuide];
          widthAnchor2 = [safeAreaLayoutGuide widthAnchor];
          v59 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
          [v59 setActive:1];

          selfCopy3 = self;
        }
      }

      v87 = [obj countByEnumeratingWithState:&v115 objects:v120 count:16];
    }

    while (v87);
  }

  v60 = [MEMORY[0x1E69AE158] materialViewWithRecipe:54];
  magicPocketBackgroundView = selfCopy3->_magicPocketBackgroundView;
  selfCopy3->_magicPocketBackgroundView = v60;

  v62 = selfCopy3->_magicPocketBackgroundView;
  [(UIView *)selfCopy3->_addButtonContainerView bounds];
  [(MTMaterialView *)v62 setFrame:?];
  [(MTMaterialView *)selfCopy3->_magicPocketBackgroundView setAutoresizingMask:18];
  [(MTMaterialView *)selfCopy3->_magicPocketBackgroundView setGroupNameBase:@"Add-Sheet"];
  [(UIView *)selfCopy3->_addButtonContainerView addSubview:selfCopy3->_magicPocketBackgroundView];
  [(SBHAddWidgetDetailSheetViewController *)selfCopy3 _updateMaterialRecipeForBackgroundView:selfCopy3->_magicPocketBackgroundView];
  v63 = objc_alloc_init(MEMORY[0x1E69DD250]);
  addButtonStackSpacerView = selfCopy3->_addButtonStackSpacerView;
  selfCopy3->_addButtonStackSpacerView = v63;

  [(UIView *)selfCopy3->_addButtonStackSpacerView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIStackView *)selfCopy3->_contentStackView addArrangedSubview:selfCopy3->_addButtonStackSpacerView];
  v65 = objc_alloc_init(MEMORY[0x1E69DD250]);
  addButtonContainerView = selfCopy3->_addButtonContainerView;
  selfCopy3->_addButtonContainerView = v65;

  [(UIView *)selfCopy3->_addButtonContainerView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)selfCopy3->_addButtonStackSpacerView addSubview:selfCopy3->_addButtonContainerView];
  v67 = objc_alloc_init(SBHAddWidgetButton);
  addButton = selfCopy3->_addButton;
  selfCopy3->_addButton = v67;

  [(SBHAddWidgetButton *)selfCopy3->_addButton setAddWidgetSheetStyle:addWidgetSheetStyle];
  [(SBHAddWidgetButton *)selfCopy3->_addButton setTranslatesAutoresizingMaskIntoConstraints:0];
  [(SBHAddWidgetButton *)selfCopy3->_addButton addTarget:selfCopy3 action:sel_addButtonTapped_ forControlEvents:64];
  [(UIView *)selfCopy3->_addButtonContainerView addSubview:selfCopy3->_addButton];
  widgetDescriptors2 = [(SBHApplicationWidgetCollection *)selfCopy3->_applicationWidgetCollection widgetDescriptors];
  firstObject = [widgetDescriptors2 firstObject];

  v71 = selfCopy3->_addButton;
  mostInterestingColor = [firstObject mostInterestingColor];
  if (mostInterestingColor)
  {
    [(SBHAddWidgetButton *)v71 setBackgroundColor:mostInterestingColor];
  }

  else
  {
    systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
    [(SBHAddWidgetButton *)v71 setBackgroundColor:systemBlueColor];
  }

  if ([(NSMutableArray *)self->_pages count]>= 2)
  {
    v74 = objc_alloc_init(MEMORY[0x1E69DCD10]);
    pageControl = self->_pageControl;
    self->_pageControl = v74;

    [(UIPageControl *)self->_pageControl setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIPageControl *)self->_pageControl setNumberOfPages:[(NSMutableArray *)self->_pages count]];
    [(UIPageControl *)self->_pageControl setCurrentPage:0];
    [(UIPageControl *)self->_pageControl setHidesForSinglePage:1];
    v76 = self->_pageControl;
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UIPageControl *)v76 setPageIndicatorTintColor:secondaryLabelColor];

    v78 = self->_pageControl;
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    [(UIPageControl *)v78 setCurrentPageIndicatorTintColor:labelColor];

    [(UIPageControl *)self->_pageControl addTarget:self action:sel_pageControlChanged_ forControlEvents:4096];
    [(UIView *)self->_addButtonContainerView addSubview:self->_pageControl];
  }
}

void __53__SBHAddWidgetDetailSheetViewController__createViews__block_invoke(uint64_t a1, uint64_t a2, int a3)
{
  v5 = [SBHWidgetWrapperViewController alloc];
  v6 = *(a1 + 32);
  v7 = [*(a1 + 40) listLayoutProvider];
  v8 = [*(a1 + 40) iconViewProvider];
  v9 = [(SBHWidgetWrapperViewController *)v5 initWithGalleryItem:v6 titleAndSubtitleVisible:0 listLayoutProvider:v7 iconViewProvider:v8];

  if ([*(a1 + 40) addWidgetSheetLocation] == 2)
  {
    [(SBHWidgetWrapperViewController *)v9 setUsesAmbientScaleFactorForRemovableBackgroundItems:1];
  }

  [(SBHWidgetWrapperViewController *)v9 setSelectedSizeClass:a3];
  [(SBHWidgetWrapperViewController *)v9 setBackgroundType:*(a1 + 48)];
  v10 = [[SBHAddWidgetDetailsSheetPageViewController alloc] initWithWidgetWrapperViewController:v9];
  [(SBHAddWidgetDetailsSheetPageViewController *)v10 setAddWidgetSheetStyle:*(a1 + 56)];
  v11 = *(a1 + 176);
  v15[6] = *(a1 + 160);
  v15[7] = v11;
  v15[8] = *(a1 + 192);
  v16 = *(a1 + 208);
  v12 = *(a1 + 112);
  v15[2] = *(a1 + 96);
  v15[3] = v12;
  v13 = *(a1 + 144);
  v15[4] = *(a1 + 128);
  v15[5] = v13;
  v14 = *(a1 + 80);
  v15[0] = *(a1 + 64);
  v15[1] = v14;
  [(SBHAddWidgetDetailsSheetPageViewController *)v10 setAddWidgetSheetMetrics:v15];
  [(SBHAddWidgetDetailsSheetPageViewController *)v10 setDelegate:*(a1 + 40)];
  [*(*(a1 + 40) + 1456) addObject:v10];
  [*(a1 + 40) _addPage:v10];
}

- (void)_createConstraints
{
  v122[5] = *MEMORY[0x1E69E9840];
  view = [(SBHAddWidgetDetailSheetViewController *)self view];
  contentScrollView = self->_contentScrollView;
  safeAreaLayoutGuide = [view safeAreaLayoutGuide];
  v5 = SBHPinViewWithinLayoutGuide(contentScrollView, safeAreaLayoutGuide);

  v6 = SBHPinViewWithinView(self->_containerView, self->_contentScrollView);
  v7 = SBHPinViewWithinView(self->_contentStackView, self->_containerView);
  v8 = SBHPinViewWithinView(self->_widgetInfoScrollView, self->_widgetInfoStackView);
  v9 = SBHPinViewWithinView(self->_widgetGalleryScrollView, self->_widgetGalleryStackView);
  contentLayoutGuide = [(BSUIScrollView *)self->_contentScrollView contentLayoutGuide];
  frameLayoutGuide = [(BSUIScrollView *)self->_contentScrollView frameLayoutGuide];
  heightAnchor = [(UIStackView *)self->_widgetGalleryStackView heightAnchor];
  v13 = [heightAnchor constraintGreaterThanOrEqualToConstant:0.0];
  widgetGalleryHeightConstraint = self->_widgetGalleryHeightConstraint;
  self->_widgetGalleryHeightConstraint = v13;

  v99 = MEMORY[0x1E696ACD8];
  heightAnchor2 = [contentLayoutGuide heightAnchor];
  heightAnchor3 = [frameLayoutGuide heightAnchor];
  v103 = [heightAnchor2 constraintGreaterThanOrEqualToAnchor:heightAnchor3];
  v122[0] = v103;
  v110 = contentLayoutGuide;
  widthAnchor = [contentLayoutGuide widthAnchor];
  v109 = frameLayoutGuide;
  widthAnchor2 = [frameLayoutGuide widthAnchor];
  v16 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
  v122[1] = v16;
  heightAnchor4 = [(BSUIScrollView *)self->_widgetInfoScrollView heightAnchor];
  heightAnchor5 = [(UIStackView *)self->_widgetInfoStackView heightAnchor];
  v19 = [heightAnchor4 constraintEqualToAnchor:heightAnchor5];
  v122[2] = v19;
  heightAnchor6 = [(BSUIScrollView *)self->_widgetGalleryScrollView heightAnchor];
  heightAnchor7 = [(UIStackView *)self->_widgetGalleryStackView heightAnchor];
  v22 = [heightAnchor6 constraintEqualToAnchor:heightAnchor7];
  v23 = self->_widgetGalleryHeightConstraint;
  v122[3] = v22;
  v122[4] = v23;
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v122 count:5];
  [v99 activateConstraints:v24];

  if (self->_closeButton)
  {
    [(SBHAddWidgetDetailSheetTitleView *)self->_titleView contentInsets];
    v26 = v25;
    v28 = v27;
    v29 = MEMORY[0x1E696ACD8];
    trailingAnchor = [(UIButton *)self->_closeButton trailingAnchor];
    trailingAnchor2 = [view trailingAnchor];
    v32 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-v28];
    v121[0] = v32;
    topAnchor = [(UIButton *)self->_closeButton topAnchor];
    topAnchor2 = [view topAnchor];
    v35 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:v26];
    v121[1] = v35;
    v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:v121 count:2];
    [v29 activateConstraints:v36];
  }

  titleView = self->_titleView;
  if (titleView)
  {
    v101 = MEMORY[0x1E696ACD8];
    leadingAnchor = [(SBHAddWidgetDetailSheetTitleView *)titleView leadingAnchor];
    leadingAnchor2 = [(UIView *)self->_headerView leadingAnchor];
    v38 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v120[0] = v38;
    trailingAnchor3 = [(SBHAddWidgetDetailSheetTitleView *)self->_titleView trailingAnchor];
    trailingAnchor4 = [(UIView *)self->_headerView trailingAnchor];
    v41 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v120[1] = v41;
    topAnchor3 = [(SBHAddWidgetDetailSheetTitleView *)self->_titleView topAnchor];
    topAnchor4 = [(UIView *)self->_headerView topAnchor];
    v44 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    v120[2] = v44;
    v45 = [MEMORY[0x1E695DEC8] arrayWithObjects:v120 count:3];
    [v101 activateConstraints:v45];

    bottomAnchor = [(UIView *)self->_headerView bottomAnchor];
    bottomAnchor2 = [(SBHAddWidgetDetailSheetTitleView *)self->_titleView bottomAnchor];
    v48 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    topSpacingConstraint = self->_topSpacingConstraint;
    self->_topSpacingConstraint = v48;
  }

  else
  {
    bottomAnchor = [(UIView *)self->_headerView heightAnchor];
    v50 = [bottomAnchor constraintEqualToConstant:0.0];
    bottomAnchor2 = self->_topSpacingConstraint;
    self->_topSpacingConstraint = v50;
  }

  [(NSLayoutConstraint *)self->_topSpacingConstraint setActive:1];
  if (__sb__runningInSpringBoard())
  {
    v51 = SBFEffectiveDeviceClass() == 2;
  }

  else
  {
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    v51 = userInterfaceIdiom == 1;
  }

  v54 = MEMORY[0x1E696ACD8];
  if (v51)
  {
    widthAnchor3 = [(SBHAddWidgetButton *)self->_addButton widthAnchor];
    leadingAnchor3 = [widthAnchor3 constraintEqualToConstant:460.0];
    v119[0] = leadingAnchor3;
    centerXAnchor = [(SBHAddWidgetButton *)self->_addButton centerXAnchor];
    centerXAnchor2 = [(UIView *)self->_containerView centerXAnchor];
    trailingAnchor5 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v119[1] = trailingAnchor5;
    v60 = [MEMORY[0x1E695DEC8] arrayWithObjects:v119 count:2];
    [v54 activateConstraints:v60];
  }

  else
  {
    widthAnchor3 = [(SBHAddWidgetButton *)self->_addButton leadingAnchor];
    leadingAnchor3 = [(UIView *)self->_containerView leadingAnchor];
    centerXAnchor = [widthAnchor3 constraintEqualToAnchor:leadingAnchor3 constant:24.0];
    v118[0] = centerXAnchor;
    centerXAnchor2 = [(SBHAddWidgetButton *)self->_addButton trailingAnchor];
    trailingAnchor5 = [(UIView *)self->_containerView trailingAnchor];
    v60 = [centerXAnchor2 constraintEqualToAnchor:trailingAnchor5 constant:-24.0];
    v118[1] = v60;
    v61 = [MEMORY[0x1E695DEC8] arrayWithObjects:v118 count:2];
    [v54 activateConstraints:v61];
  }

  pageControl = self->_pageControl;
  if (pageControl)
  {
    v63 = MEMORY[0x1E696ACD8];
    leadingAnchor4 = [(UIPageControl *)pageControl leadingAnchor];
    leadingAnchor5 = [(UIView *)self->_containerView leadingAnchor];
    v66 = [leadingAnchor4 constraintEqualToAnchor:leadingAnchor5 constant:24.0];
    v117[0] = v66;
    trailingAnchor6 = [(UIPageControl *)self->_pageControl trailingAnchor];
    trailingAnchor7 = [(UIView *)self->_containerView trailingAnchor];
    v69 = [trailingAnchor6 constraintEqualToAnchor:trailingAnchor7 constant:-24.0];
    v117[1] = v69;
    v70 = [MEMORY[0x1E695DEC8] arrayWithObjects:v117 count:2];
    [v63 activateConstraints:v70];
  }

  bottomAnchor3 = [(SBHAddWidgetButton *)self->_addButton bottomAnchor];
  bottomAnchor4 = [(UIView *)self->_addButtonContainerView bottomAnchor];
  v73 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  addButtonBottomConstraint = self->_addButtonBottomConstraint;
  self->_addButtonBottomConstraint = v73;

  v75 = self->_pageControl;
  topAnchor5 = [(SBHAddWidgetButton *)self->_addButton topAnchor];
  if (v75)
  {
    bottomAnchor5 = [(UIPageControl *)self->_pageControl bottomAnchor];
    v78 = [topAnchor5 constraintEqualToAnchor:bottomAnchor5 constant:10.0];
    addButtonTopConstraint = self->_addButtonTopConstraint;
    self->_addButtonTopConstraint = v78;

    topAnchor6 = [(UIPageControl *)self->_pageControl topAnchor];
    topAnchor7 = [(UIView *)self->_addButtonContainerView topAnchor];
    v82 = [topAnchor6 constraintEqualToAnchor:topAnchor7 constant:10.0];
    pageControlTopConstraint = self->_pageControlTopConstraint;
    self->_pageControlTopConstraint = v82;

    [(NSLayoutConstraint *)self->_pageControlTopConstraint setActive:1];
  }

  else
  {
    topAnchor8 = [(UIView *)self->_addButtonContainerView topAnchor];
    v85 = [topAnchor5 constraintEqualToAnchor:topAnchor8 constant:24.0];
    v86 = self->_addButtonTopConstraint;
    self->_addButtonTopConstraint = v85;
  }

  v87 = MEMORY[0x1E696ACD8];
  v88 = self->_addButtonBottomConstraint;
  v116[0] = self->_addButtonTopConstraint;
  v116[1] = v88;
  v89 = [MEMORY[0x1E695DEC8] arrayWithObjects:v116 count:2];
  [v87 activateConstraints:v89];

  v102 = MEMORY[0x1E696ACD8];
  heightAnchor8 = [(UIView *)self->_addButtonContainerView heightAnchor];
  heightAnchor9 = [(UIView *)self->_addButtonStackSpacerView heightAnchor];
  v108 = [heightAnchor8 constraintEqualToAnchor:heightAnchor9];
  v115[0] = v108;
  leadingAnchor6 = [(UIView *)self->_addButtonContainerView leadingAnchor];
  leadingAnchor7 = [(UIView *)self->_addButtonStackSpacerView leadingAnchor];
  v91 = [leadingAnchor6 constraintEqualToAnchor:leadingAnchor7];
  v115[1] = v91;
  trailingAnchor8 = [(UIView *)self->_addButtonContainerView trailingAnchor];
  trailingAnchor9 = [(UIView *)self->_addButtonStackSpacerView trailingAnchor];
  v94 = [trailingAnchor8 constraintEqualToAnchor:trailingAnchor9];
  v115[2] = v94;
  bottomAnchor6 = [(UIView *)self->_addButtonContainerView bottomAnchor];
  bottomAnchor7 = [(UIView *)self->_addButtonStackSpacerView bottomAnchor];
  v97 = [bottomAnchor6 constraintEqualToAnchor:bottomAnchor7];
  v115[3] = v97;
  v98 = [MEMORY[0x1E695DEC8] arrayWithObjects:v115 count:4];
  [v102 activateConstraints:v98];

  [(SBHAddWidgetDetailSheetViewController *)self _contentSizeCategoryDidChange];
}

- (void)_updateConstraintConstants
{
  view = [(SBHAddWidgetDetailSheetViewController *)self view];
  window = [view window];

  if (window)
  {
    selfCopy = window;
  }

  else
  {
    selfCopy = self;
  }

  interfaceOrientation = [(SBHAddWidgetDetailSheetViewController *)selfCopy interfaceOrientation];
  addWidgetSheetStyle = [(SBHAddWidgetSheetViewControllerBase *)self addWidgetSheetStyle];
  v8 = 0.0;
  if (addWidgetSheetStyle == 1)
  {
    goto LABEL_15;
  }

  if (__sb__runningInSpringBoard())
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
LABEL_7:
      v8 = dbl_1BEE89C40[self->_titleView == 0];
      goto LABEL_15;
    }
  }

  else
  {
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if (userInterfaceIdiom != 1)
    {
      goto LABEL_7;
    }
  }

  v11 = interfaceOrientation - 3;
  externalSearchController = self->_externalSearchController;
  if (externalSearchController)
  {
    searchBarBackgroundView = [(SBHWidgetSearchController *)externalSearchController searchBarBackgroundView];
    [searchBarBackgroundView frame];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
  }

  else
  {
    v15 = *MEMORY[0x1E695F058];
    v17 = *(MEMORY[0x1E695F058] + 8);
    v19 = *(MEMORY[0x1E695F058] + 16);
    v21 = *(MEMORY[0x1E695F058] + 24);
  }

  v29.origin.x = v15;
  v29.origin.y = v17;
  v29.size.width = v19;
  v29.size.height = v21;
  MaxY = CGRectGetMaxY(v29);
  v23 = 40.0;
  if (v11 < 2)
  {
    v23 = 46.0;
  }

  v8 = v23 + MaxY;
LABEL_15:
  [(NSLayoutConstraint *)self->_topSpacingConstraint setConstant:v8];
  if ([(SBHAddWidgetSheetViewControllerBase *)self addWidgetSheetStyle]== 1)
  {
    [(SBHAddWidgetSheetViewControllerBase *)self addWidgetSheetMetrics:0];
    v25 = 0.0;
    v24 = 0.0;
    v26 = 0.0;
  }

  else
  {
    v25 = 24.0;
    v24 = 6.0;
    v26 = 5.0;
  }

  [(NSLayoutConstraint *)self->_pageControlTopConstraint setConstant:v24];
  [(NSLayoutConstraint *)self->_addButtonTopConstraint setConstant:v26];
  [(NSLayoutConstraint *)self->_addButtonBottomConstraint setConstant:-v25];
  if (_SBHTraitEnvironmentIsAccessibilityTextSize(self))
  {
    v27 = 1.0;
  }

  else
  {
    v27 = 0.25;
  }

  [(SBHAddWidgetDetailSheetViewController *)self _minumumWidgetGalleryScrollViewHeight];
  [(NSLayoutConstraint *)self->_widgetGalleryHeightConstraint setConstant:v27 * v28];
}

- (void)_updateLayoutMargins
{
  [(BSUIScrollView *)self->_contentScrollView layoutMargins];
  v5 = v4;
  v7 = v6;
  externalSearchController = self->_externalSearchController;
  if (externalSearchController)
  {
    searchBar = [(SBHWidgetSearchController *)externalSearchController searchBar];
    [searchBar frame];
    Height = CGRectGetHeight(v16);
  }

  else
  {
    Height = v3;
  }

  view = [(SBHAddWidgetDetailSheetViewController *)self view];
  [view bounds];
  v12 = CGRectGetHeight(v17);
  [(UIView *)self->_addButtonContainerView frame];
  v13 = v12 - CGRectGetMinY(v18);

  contentScrollView = self->_contentScrollView;

  [(BSUIScrollView *)contentScrollView setLayoutMargins:Height, v5, v13, v7];
}

- (double)_minumumWidgetGalleryScrollViewHeight
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = self->_pages;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v15;
    v6 = 0.0;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(v2);
        }

        widgetWrapperViewController = [*(*(&v14 + 1) + 8 * i) widgetWrapperViewController];
        wrapperView = [widgetWrapperViewController wrapperView];
        contentView = [wrapperView contentView];
        [contentView intrinsicContentSize];
        v12 = v11;

        if (v6 < v12)
        {
          v6 = v12;
        }
      }

      v4 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v4);
  }

  else
  {
    v6 = 0.0;
  }

  return v6;
}

- (void)setApplicationWidgetCollection:(id)collection
{
  collectionCopy = collection;
  allowedWidgets = [(SBHAddWidgetSheetViewControllerBase *)self allowedWidgets];
  v7 = v6;
  widgetDescriptors = [(SBHApplicationWidgetCollection *)collectionCopy widgetDescriptors];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __72__SBHAddWidgetDetailSheetViewController_setApplicationWidgetCollection___block_invoke;
  v11[3] = &__block_descriptor_48_e40_B16__0___SBHAddWidgetSheetGalleryItem__8l;
  v11[4] = allowedWidgets;
  v11[5] = v7;
  v9 = [widgetDescriptors bs_filter:v11];

  [(SBHApplicationWidgetCollection *)collectionCopy setWidgetDescriptors:v9];
  applicationWidgetCollection = self->_applicationWidgetCollection;
  self->_applicationWidgetCollection = collectionCopy;
}

uint64_t __72__SBHAddWidgetDetailSheetViewController_setApplicationWidgetCollection___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (([v3 sbh_supportedSizeClasses] & v4) != 0 && ((*(a1 + 40) & 1) != 0 || objc_msgSend(v3, "sbh_canBeAddedToStack")))
  {
    if (*(a1 + 41) == 1)
    {
      v5 = [v3 sbh_supportsRemovableBackgroundOrAccessoryFamilies];
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)configureForGalleryItem:(id)item selectedSizeClass:(int64_t)class
{
  itemCopy = item;
  [(SBHAddWidgetDetailSheetViewController *)self loadViewIfNeeded];
  pages = self->_pages;
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __83__SBHAddWidgetDetailSheetViewController_configureForGalleryItem_selectedSizeClass___block_invoke;
  v14 = &unk_1E8091458;
  v8 = itemCopy;
  v15 = v8;
  classCopy = class;
  v9 = [(NSMutableArray *)pages indexOfObjectPassingTest:&v11];
  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = SBLogWidgets();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [SBHAddWidgetDetailSheetViewController configureForGalleryItem:v8 selectedSizeClass:v10];
    }
  }

  else if (self->_performedInitialSelection)
  {
    [(SBHAddWidgetDetailSheetViewController *)self _scrollToPageIndex:v9 animated:0, v11, v12, v13, v14];
  }

  else
  {
    self->_initialSelectionIndex = v9;
  }
}

BOOL __83__SBHAddWidgetDetailSheetViewController_configureForGalleryItem_selectedSizeClass___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 widgetWrapperViewController];
  v5 = [v4 galleryItem];
  v6 = [v5 sbh_galleryItemIdentifier];
  v7 = [*(a1 + 32) sbh_galleryItemIdentifier];
  if ([v6 isEqual:v7])
  {
    v8 = [v3 widgetWrapperViewController];
    v9 = [v8 selectedSizeClass] == *(a1 + 40);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)closeButtonTapped:(id)tapped
{
  delegate = [(SBHAddWidgetSheetViewControllerBase *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate addWidgetSheetViewControllerDidCancel:self];
  }
}

- (void)addButtonTapped:(id)tapped
{
  delegate = [(SBHAddWidgetSheetViewControllerBase *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    currentPage = [(SBHAddWidgetDetailSheetViewController *)self currentPage];
    widgetWrapperViewController = [currentPage widgetWrapperViewController];

    wrapperView = [widgetWrapperViewController wrapperView];
    contentView = [wrapperView contentView];

    if (contentView)
    {
      [delegate addWidgetSheetViewController:self didSelectWidgetIconView:contentView];
    }
  }
}

- (void)pageControlChanged:(id)changed
{
  currentPage = [changed currentPage];

  [(SBHAddWidgetDetailSheetViewController *)self _scrollToPageIndex:currentPage animated:1];
}

- (void)_scrollToPageIndex:(unint64_t)index animated:(BOOL)animated
{
  animatedCopy = animated;
  arrangedSubviews = [(UIStackView *)self->_widgetGalleryStackView arrangedSubviews];
  v8 = [arrangedSubviews count];

  if (v8 <= index)
  {
    v12 = SBLogWidgets();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(SBHAddWidgetDetailSheetViewController *)v8 _scrollToPageIndex:index animated:v12];
    }
  }

  else
  {
    view = [(SBHAddWidgetDetailSheetViewController *)self view];
    [view layoutIfNeeded];

    if ([*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection] == 1)
    {
      index = [(NSMutableArray *)self->_pages count]+ ~index;
    }

    [(BSUIScrollView *)self->_widgetGalleryScrollView bounds];
    v11 = v10 * index;
    [(BSUIScrollView *)self->_widgetGalleryScrollView setContentOffset:animatedCopy animated:v11, 0.0];

    [(SBHAddWidgetDetailSheetViewController *)self _updateControlsForContentOffset:animatedCopy animated:v11, 0.0];
  }
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  widgetGalleryScrollView = self->_widgetGalleryScrollView;
  v9 = scrollCopy;
  if (widgetGalleryScrollView == scrollCopy)
  {
    [(SBHAddWidgetDetailSheetViewController *)self _updateParallaxEffect];
    if (!self->_scrollingInitiatedByInfoScrollView)
    {
      [(SBHAddWidgetDetailSheetViewController *)self _updatePageViewControllerAppearanceForNormalScroll];
    }
  }

  else if (self->_widgetInfoScrollView == scrollCopy && ![(BSUIScrollView *)widgetGalleryScrollView isScrolling])
  {
    [(SBHAddWidgetDetailSheetViewController *)self _scrollMainScrollViewToMatchInfoScrollViewIfNeeded];
  }

  if (([MEMORY[0x1E69DD250] _isInAnimationBlock] & 1) == 0)
  {
    [(BSUIScrollView *)v9 adjustedContentInset];
    v7 = v6;
    [(BSUIScrollView *)v9 contentOffset];
    [(SBHWidgetSearchController *)self->_externalSearchController updateSearchBarBackgroundForScrollDistance:self forClient:v7 + v8];
  }
}

- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  widgetGalleryScrollView = self->_widgetGalleryScrollView;
  if (widgetGalleryScrollView == dragging)
  {
    x = velocity.x;
    [(BSUIScrollView *)widgetGalleryScrollView bounds:velocity.x];
    v10 = offset->x / v9;
    v11 = floor(v10);
    v12 = ceil(v10);
    if (x <= 0.0)
    {
      v12 = v11;
    }

    offset->x = v9 * v12;

    [(SBHAddWidgetDetailSheetViewController *)self _updateControlsForContentOffset:1 animated:?];
  }
}

- (id)_newBackgroundView
{
  v2 = [MEMORY[0x1E69AE158] materialViewWithRecipe:54];
  [v2 setGroupNameBase:@"Add-Sheet"];
  return v2;
}

- (void)_updateBackgroundRecipe
{
  [(SBHAddWidgetDetailSheetViewController *)self _updateMaterialRecipeForBackgroundView:self->_backgroundView];
  magicPocketBackgroundView = self->_magicPocketBackgroundView;

  [(SBHAddWidgetDetailSheetViewController *)self _updateMaterialRecipeForBackgroundView:magicPocketBackgroundView];
}

- (void)_updateMaterialRecipeForBackgroundView:(id)view
{
  viewCopy = view;
  traitCollection = [(SBHAddWidgetDetailSheetViewController *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  if (userInterfaceStyle == 2)
  {
    v6 = 53;
  }

  else
  {
    v6 = 54;
  }

  [viewCopy setRecipe:v6];
}

- (void)_addPage:(id)page
{
  pageCopy = page;
  [(SBHAddWidgetDetailSheetViewController *)self addChildViewController:pageCopy];
  v5 = [(NSMutableArray *)self->_pages indexOfObject:pageCopy];
  view = [pageCopy view];
  [(UIStackView *)self->_widgetGalleryStackView insertArrangedSubview:view atIndex:v5];
  widthAnchor = [view widthAnchor];
  view2 = [(SBHAddWidgetDetailSheetViewController *)self view];
  safeAreaLayoutGuide = [view2 safeAreaLayoutGuide];
  widthAnchor2 = [safeAreaLayoutGuide widthAnchor];
  v10 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
  [v10 setActive:1];

  [pageCopy didMoveToParentViewController:self];
}

- (void)_updatePageViewControllerAppearanceForNormalScroll
{
  [(BSUIScrollView *)self->_widgetGalleryScrollView contentOffset];
  v4 = v3;
  v6 = v5;
  [(BSUIScrollView *)self->_widgetGalleryScrollView bounds];
  v8 = [(SBHAddWidgetDetailSheetViewController *)self _pageIndexAtContentOffset:v4 + v7 * 0.5, v6];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __91__SBHAddWidgetDetailSheetViewController__updatePageViewControllerAppearanceForNormalScroll__block_invoke;
  v9[3] = &__block_descriptor_40_e8_B16__0Q8l;
  v9[4] = v8;
  [(SBHAddWidgetDetailSheetViewController *)self _updatePageViewControllerAppearanceWithAppearedBlock:v9];
}

BOOL __91__SBHAddWidgetDetailSheetViewController__updatePageViewControllerAppearanceForNormalScroll__block_invoke(uint64_t a1, int a2)
{
  v2 = a2 - *(a1 + 32);
  if (v2 < 0)
  {
    v2 = *(a1 + 32) - a2;
  }

  return v2 < 3;
}

- (void)_updatePageViewControllerAppearanceWithAppearedBlock:(id)block
{
  blockCopy = block;
  pages = self->_pages;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __94__SBHAddWidgetDetailSheetViewController__updatePageViewControllerAppearanceWithAppearedBlock___block_invoke;
  v7[3] = &unk_1E80914A0;
  v8 = blockCopy;
  v6 = blockCopy;
  [(NSMutableArray *)pages enumerateObjectsWithOptions:0 usingBlock:v7];
}

void __94__SBHAddWidgetDetailSheetViewController__updatePageViewControllerAppearanceWithAppearedBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v8 = v5;
  if (v6 && (v7 = (*(v6 + 16))(v6, a3), v5 = v8, v7))
  {
    [v8 setContentVisibility:0];
    [v8 bs_endAppearanceTransition:1];
  }

  else
  {
    [v5 bs_endAppearanceTransition:0];
    [v8 setContentVisibility:2];
  }
}

- (void)_updatePageViewControllerAppearanceForFastScrollToTargetIndex:(unint64_t)index
{
  currentPage = [(UIPageControl *)self->_pageControl currentPage];
  if (currentPage >= index)
  {
    indexCopy = index;
  }

  else
  {
    indexCopy = currentPage;
  }

  if (currentPage > index)
  {
    index = currentPage;
  }

  if (indexCopy <= 1)
  {
    indexCopy = 1;
  }

  v7 = indexCopy - 1;
  v8 = [(NSMutableArray *)self->_pages count]- 1;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __103__SBHAddWidgetDetailSheetViewController__updatePageViewControllerAppearanceForFastScrollToTargetIndex___block_invoke;
  v9[3] = &__block_descriptor_48_e8_B16__0Q8l;
  if (index + 1 < v8)
  {
    v8 = index + 1;
  }

  v9[4] = v7;
  v9[5] = v8;
  [(SBHAddWidgetDetailSheetViewController *)self _updatePageViewControllerAppearanceWithAppearedBlock:v9];
}

- (SBHAddWidgetDetailsSheetPageViewController)currentPage
{
  currentPage = [(UIPageControl *)self->_pageControl currentPage];
  if (currentPage >= [(NSMutableArray *)self->_pages count])
  {
    v5 = SBLogWidgets();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(SBHAddWidgetDetailSheetViewController *)&self->_pages currentPage];
    }

    v4 = 0;
  }

  else
  {
    v4 = [(NSMutableArray *)self->_pages objectAtIndex:currentPage];
  }

  return v4;
}

- (SBFFluidBehaviorSettings)widgetInfoScrollViewAnimationSettings
{
  widgetInfoScrollViewAnimationSettings = self->_widgetInfoScrollViewAnimationSettings;
  if (!widgetInfoScrollViewAnimationSettings)
  {
    initWithDefaultValues = [objc_alloc(MEMORY[0x1E69D3FC8]) initWithDefaultValues];
    v5 = self->_widgetInfoScrollViewAnimationSettings;
    self->_widgetInfoScrollViewAnimationSettings = initWithDefaultValues;

    [(SBFFluidBehaviorSettings *)self->_widgetInfoScrollViewAnimationSettings setDampingRatio:1.0];
    [(SBFFluidBehaviorSettings *)self->_widgetInfoScrollViewAnimationSettings setResponse:0.456999987];
    widgetInfoScrollViewAnimationSettings = self->_widgetInfoScrollViewAnimationSettings;
  }

  return widgetInfoScrollViewAnimationSettings;
}

- (unint64_t)_pageIndexAtContentOffset:(CGPoint)offset
{
  v4 = [(UIStackView *)self->_widgetGalleryStackView hitTest:0 withEvent:offset.x, offset.y];
  arrangedSubviews = [(UIStackView *)self->_widgetGalleryStackView arrangedSubviews];
  v6 = [arrangedSubviews indexOfObject:v4];

  return v6;
}

- (void)_updateControlsForContentOffset:(CGPoint)offset animated:(BOOL)animated
{
  animatedCopy = animated;
  y = offset.y;
  x = offset.x;
  view = [(SBHAddWidgetDetailSheetViewController *)self view];
  [view layoutIfNeeded];

  v9 = [(SBHAddWidgetDetailSheetViewController *)self _pageIndexAtContentOffset:x, y];
  if (v9 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = v9;
    [(UIPageControl *)self->_pageControl setCurrentPage:v9];
    if (![(BSUIScrollView *)self->_widgetInfoScrollView isScrolling])
    {
      v11 = [(NSMutableArray *)self->_pages objectAtIndex:v10];
      widgetWrapperViewController = [v11 widgetWrapperViewController];
      galleryItem = [widgetWrapperViewController galleryItem];

      v14 = [(SBHApplicationWidgetCollection *)self->_applicationWidgetCollection indexOfWidgetDescriptorMatchingDescriptor:galleryItem];
      if (v14 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v15 = v14;
        arrangedSubviews = [(UIStackView *)self->_widgetInfoStackView arrangedSubviews];
        v17 = [arrangedSubviews count];

        if (v15 < v17)
        {
          arrangedSubviews2 = [(UIStackView *)self->_widgetInfoStackView arrangedSubviews];
          v19 = [arrangedSubviews2 objectAtIndex:v15];

          v28 = MEMORY[0x1E69E9820];
          v29 = 3221225472;
          v30 = __82__SBHAddWidgetDetailSheetViewController__updateControlsForContentOffset_animated___block_invoke;
          v31 = &unk_1E8088F18;
          selfCopy = self;
          v20 = v19;
          v33 = v20;
          v21 = _Block_copy(&v28);
          v22 = v21;
          if (animatedCopy)
          {
            v23 = [(SBHAddWidgetDetailSheetViewController *)self widgetInfoScrollViewAnimationSettings:v28];
            v24 = MEMORY[0x1E69DD250];
            [v23 settlingDuration];
            v26 = v25;
            [v23 dampingRatio];
            [v24 animateWithDuration:4 delay:v22 usingSpringWithDamping:0 initialSpringVelocity:v26 options:0.0 animations:v27 completion:0.0];
          }

          else
          {
            (*(v21 + 2))(v21);
          }
        }
      }
    }
  }
}

uint64_t __82__SBHAddWidgetDetailSheetViewController__updateControlsForContentOffset_animated___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 1320);
  [*(a1 + 40) frame];

  return [v1 setContentOffset:?];
}

- (void)_updateParallaxEffect
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = self->_pages;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7++) updateParallaxEffectInReferenceView:{self->_containerView, v8}];
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)_scrollMainScrollViewToMatchInfoScrollViewIfNeeded
{
  [(BSUIScrollView *)self->_widgetInfoScrollView contentOffset];
  v4 = v3;
  [(BSUIScrollView *)self->_widgetInfoScrollView bounds];
  v6 = [(UIStackView *)self->_widgetInfoStackView hitTest:0 withEvent:v4 + v5 * 0.5, 0.0];
  widgetInfoViews = [(SBHAddWidgetDetailSheetViewController *)self widgetInfoViews];
  v8 = [widgetInfoViews indexOfObject:v6];

  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    widgetDescriptors = [(SBHApplicationWidgetCollection *)self->_applicationWidgetCollection widgetDescriptors];
    v10 = [widgetDescriptors count];

    if (v8 < v10)
    {
      widgetDescriptors2 = [(SBHApplicationWidgetCollection *)self->_applicationWidgetCollection widgetDescriptors];
      v12 = [widgetDescriptors2 objectAtIndex:v8];

      _currentGalleryItem = [(SBHAddWidgetDetailSheetViewController *)self _currentGalleryItem];

      if (v12 != _currentGalleryItem)
      {
        v14 = [(SBHAddWidgetDetailSheetViewController *)self _closestPageWithGalleryItem:v12];
        widgetInfoScrollViewAnimationSettings = [(SBHAddWidgetDetailSheetViewController *)self widgetInfoScrollViewAnimationSettings];
        self->_scrollingInitiatedByInfoScrollView = 1;
        [(SBHAddWidgetDetailSheetViewController *)self _updatePageViewControllerAppearanceForFastScrollToTargetIndex:v14];
        v16 = MEMORY[0x1E69DD250];
        [widgetInfoScrollViewAnimationSettings settlingDuration];
        v18 = v17;
        [widgetInfoScrollViewAnimationSettings dampingRatio];
        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 3221225472;
        v21[2] = __91__SBHAddWidgetDetailSheetViewController__scrollMainScrollViewToMatchInfoScrollViewIfNeeded__block_invoke;
        v21[3] = &unk_1E8088CB8;
        v21[4] = self;
        v21[5] = v14;
        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 3221225472;
        v20[2] = __91__SBHAddWidgetDetailSheetViewController__scrollMainScrollViewToMatchInfoScrollViewIfNeeded__block_invoke_2;
        v20[3] = &unk_1E8088F40;
        v20[4] = self;
        [v16 animateWithDuration:4 delay:v21 usingSpringWithDamping:v20 initialSpringVelocity:v18 options:0.0 animations:v19 completion:0.0];
      }
    }
  }
}

- (unint64_t)_closestPageWithGalleryItem:(id)item
{
  v31 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  applicationWidgetCollection = self->_applicationWidgetCollection;
  _currentGalleryItem = [(SBHAddWidgetDetailSheetViewController *)self _currentGalleryItem];
  v7 = [(SBHApplicationWidgetCollection *)applicationWidgetCollection indexOfWidgetDescriptorMatchingDescriptor:_currentGalleryItem];

  v24 = itemCopy;
  v8 = [(SBHApplicationWidgetCollection *)self->_applicationWidgetCollection indexOfWidgetDescriptorMatchingDescriptor:itemCopy];
  v9 = 0x7FFFFFFFFFFFFFFFLL;
  if (v7 != 0x7FFFFFFFFFFFFFFFLL && v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = v8;
    v12 = [(NSMutableArray *)self->_pages count];
    currentPage = [(UIPageControl *)self->_pageControl currentPage];
    if (v11 >= v12)
    {
      v14 = SBLogWidgets();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        pages = self->_pages;
        *buf = 134218498;
        v26 = v11;
        v27 = 2112;
        v28 = v24;
        v29 = 2112;
        v30 = pages;
        _os_log_error_impl(&dword_1BEB18000, v14, OS_LOG_TYPE_ERROR, "Invalid targetGalleryItemIndex:%lu for galleryItem:%@ in pages:%@", buf, 0x20u);
      }

      v9 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = currentPage;
    }

    if (v7 < v11)
    {
      v15 = 1;
    }

    else
    {
      v15 = -1;
    }

    if (v9 >= v12 || (v9 & 0x8000000000000000) != 0)
    {
      goto LABEL_21;
    }

    v16 = 0;
    v17 = v9;
    do
    {
      v18 = [(NSMutableArray *)self->_pages objectAtIndex:v17];
      widgetWrapperViewController = [v18 widgetWrapperViewController];
      galleryItem = [widgetWrapperViewController galleryItem];

      v16 |= galleryItem == v24;
      if (galleryItem == v24)
      {
        v9 = v17;
      }

      v17 += v15;
    }

    while (v17 < v12 && (v17 & 0x8000000000000000) == 0);
    if ((v16 & 1) == 0)
    {
LABEL_21:
      v21 = SBLogWidgets();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [(SBHAddWidgetDetailSheetViewController *)v24 _closestPageWithGalleryItem:v21];
      }

      v9 = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  return v9;
}

- (id)_currentGalleryItem
{
  currentPage = [(SBHAddWidgetDetailSheetViewController *)self currentPage];
  widgetWrapperViewController = [currentPage widgetWrapperViewController];
  galleryItem = [widgetWrapperViewController galleryItem];

  return galleryItem;
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

- (void)_contentSizeCategoryDidChange
{
  [(SBHAddWidgetDetailSheetViewController *)self _updateStackViewForSizeCategory];
  [(SBHAddWidgetDetailSheetViewController *)self _updateConstraintConstants];
  magicPocketBackgroundView = self->_magicPocketBackgroundView;
  v4 = !_SBHTraitEnvironmentIsAccessibilityTextSize(self);

  [(MTMaterialView *)magicPocketBackgroundView setHidden:v4];
}

- (void)_updateStackViewForSizeCategory
{
  if (_SBHTraitEnvironmentIsAccessibilityTextSize(self) && ([MEMORY[0x1E69DC938] currentDevice], v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "userInterfaceIdiom"), v3, (v4 & 0xFFFFFFFFFFFFFFFBLL) != 1))
  {
    v5 = &OBJC_IVAR___SBHAddWidgetDetailSheetViewController__widgetGalleryScrollView;
  }

  else
  {
    v5 = &OBJC_IVAR___SBHAddWidgetDetailSheetViewController__widgetInfoScrollView;
  }

  v6 = *(&self->super.super.super.super.isa + *v5);
  v7 = self->_headerView != 0;
  contentStackView = self->_contentStackView;

  [(UIStackView *)contentStackView insertArrangedSubview:v6 atIndex:v7];
}

- (SBHWidgetDragHandling)widgetDragHandler
{
  delegate = [(SBHAddWidgetSheetViewControllerBase *)self delegate];
  widgetDragHandler = [delegate widgetDragHandler];

  return widgetDragHandler;
}

- (id)backgroundViewMatchingMaterialBeneathPageViewController:(id)controller
{
  if ([(SBHAddWidgetSheetViewControllerBase *)self addWidgetSheetStyle]== 1)
  {
    delegate = [(SBHAddWidgetSheetViewControllerBase *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      _newBackgroundView = [delegate backgroundViewMatchingMaterialBeneathAddWidgetSheetViewController:self];
    }

    else
    {
      _newBackgroundView = 0;
    }
  }

  else
  {
    _newBackgroundView = [(SBHAddWidgetDetailSheetViewController *)self _newBackgroundView];
  }

  return _newBackgroundView;
}

- (void)configureBackgroundView:(id)view matchingMaterialBeneathPageViewController:(id)controller
{
  viewCopy = view;
  if ([(SBHAddWidgetSheetViewControllerBase *)self addWidgetSheetStyle]== 1)
  {
    delegate = [(SBHAddWidgetSheetViewControllerBase *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate configureBackgroundView:viewCopy matchingMaterialBeneathAddWidgetSheetViewController:self];
    }
  }

  else
  {
    v6 = objc_opt_class();
    v7 = viewCopy;
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

    delegate = v8;

    if (delegate)
    {
      [(SBHAddWidgetDetailSheetViewController *)self _updateMaterialRecipeForBackgroundView:delegate];
    }
  }
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

- (SBHWidgetSheetViewControllerPresenter)presenter
{
  WeakRetained = objc_loadWeakRetained(&self->_presenter);

  return WeakRetained;
}

- (void)configureForGalleryItem:(uint64_t)a1 selectedSizeClass:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1BEB18000, a2, OS_LOG_TYPE_ERROR, "Trying to configure SBHAddWidgetDetailSheetViewController with unknown galleryItem %{public}@", &v2, 0xCu);
}

- (void)_scrollToPageIndex:(NSObject *)a3 animated:.cold.1(__int16 a1, uint64_t a2, NSObject *a3)
{
  LODWORD(v3) = 134218240;
  *(&v3 + 4) = a2;
  WORD6(v3) = 2048;
  HIWORD(v3) = a1 - 1;
  OUTLINED_FUNCTION_5(&dword_1BEB18000, a2, a3, "Trying to scroll to a page index (%lu) outside the bounds [0 - %lu]", v3, *(&v3 + 1));
}

- (void)currentPage
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = [*self count];
  v6 = 134218240;
  v7 = a2;
  v8 = 2048;
  v9 = v5;
  _os_log_error_impl(&dword_1BEB18000, a3, OS_LOG_TYPE_ERROR, "currentPageIndex %lu >= count %lu", &v6, 0x16u);
}

- (void)_closestPageWithGalleryItem:(NSObject *)a3 .cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  *v3 = 138412546;
  *&v3[4] = a1;
  *&v3[12] = 2112;
  *&v3[14] = *a2;
  OUTLINED_FUNCTION_5(&dword_1BEB18000, a2, a3, "Could not find page for gallery item:%@ in pages:%@", *v3, *&v3[8], *&v3[16], *MEMORY[0x1E69E9840]);
}

@end