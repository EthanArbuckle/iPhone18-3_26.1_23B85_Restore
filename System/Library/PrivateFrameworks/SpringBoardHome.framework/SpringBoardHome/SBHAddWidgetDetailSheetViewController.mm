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
- (id)backgroundViewMatchingMaterialBeneathPageViewController:(id)a3;
- (unint64_t)_closestPageWithGalleryItem:(id)a3;
- (unint64_t)_pageIndexAtContentOffset:(CGPoint)a3;
- (void)_addPage:(id)a3;
- (void)_contentSizeCategoryDidChange;
- (void)_createConstraints;
- (void)_createViews;
- (void)_scrollMainScrollViewToMatchInfoScrollViewIfNeeded;
- (void)_scrollToPageIndex:(unint64_t)a3 animated:(BOOL)a4;
- (void)_updateBackgroundRecipe;
- (void)_updateConstraintConstants;
- (void)_updateControlsForContentOffset:(CGPoint)a3 animated:(BOOL)a4;
- (void)_updateLayoutMargins;
- (void)_updateMaterialRecipeForBackgroundView:(id)a3;
- (void)_updatePageViewControllerAppearanceForFastScrollToTargetIndex:(unint64_t)a3;
- (void)_updatePageViewControllerAppearanceForNormalScroll;
- (void)_updatePageViewControllerAppearanceWithAppearedBlock:(id)a3;
- (void)_updateParallaxEffect;
- (void)_updateStackViewForSizeCategory;
- (void)addButtonTapped:(id)a3;
- (void)closeButtonTapped:(id)a3;
- (void)configureBackgroundView:(id)a3 matchingMaterialBeneathPageViewController:(id)a4;
- (void)configureForGalleryItem:(id)a3 selectedSizeClass:(int64_t)a4;
- (void)currentPage;
- (void)dealloc;
- (void)loadView;
- (void)pageControlChanged:(id)a3;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5;
- (void)setApplicationWidgetCollection:(id)a3;
- (void)updateViewConstraints;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewIsAppearing:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
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

  v9 = [MEMORY[0x1E696AD88] defaultCenter];
  [v9 addObserver:self selector:sel__contentSizeCategoryDidChange name:*MEMORY[0x1E69DDC48] object:0];
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x1E69DDC48] object:0];

  v4.receiver = self;
  v4.super_class = SBHAddWidgetDetailSheetViewController;
  [(SBHAddWidgetDetailSheetViewController *)&v4 dealloc];
}

- (void)viewWillAppear:(BOOL)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = SBHAddWidgetDetailSheetViewController;
  [(SBHAddWidgetDetailSheetViewController *)&v8 viewWillAppear:a3];
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
    v6 = [(SBHAddWidgetDetailSheetViewController *)self view];
    [v6 layoutIfNeeded];
  }

  v7 = [(SBHAddWidgetDetailSheetViewController *)self navigationItem];
  [v7 _setNavigationBarHidden:{-[SBHAddWidgetDetailSheetViewController _wantsNavigationBarHidden](self, "_wantsNavigationBarHidden")}];
}

- (void)viewIsAppearing:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = SBHAddWidgetDetailSheetViewController;
  [(SBHAddWidgetDetailSheetViewController *)&v4 viewIsAppearing:a3];
  if (!self->_performedInitialSelection)
  {
    self->_performedInitialSelection = 1;
    [(SBHAddWidgetDetailSheetViewController *)self _scrollToPageIndex:self->_initialSelectionIndex animated:0];
    [(SBHAddWidgetDetailSheetViewController *)self scrollViewDidScroll:self->_widgetGalleryScrollView];
  }
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = SBHAddWidgetDetailSheetViewController;
  [(SBHAddWidgetDetailSheetViewController *)&v4 viewDidDisappear:a3];
  [(SBHWidgetSearchController *)self->_externalSearchController updateSearchBarBackgroundForScrollDistance:self forClient:2.22507386e-308];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __92__SBHAddWidgetDetailSheetViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v9[3] = &unk_1E8089418;
  v9[4] = self;
  v7 = a4;
  [v7 animateAlongsideTransition:v9 completion:0];
  v8.receiver = self;
  v8.super_class = SBHAddWidgetDetailSheetViewController;
  [(SBHAddWidgetDetailSheetViewController *)&v8 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
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
  v3 = [(SBHAddWidgetDetailSheetViewController *)self view];
  v4 = objc_alloc_init(MEMORY[0x1E69DD250]);
  containerView = self->_containerView;
  self->_containerView = v4;

  [(UIView *)self->_containerView setTranslatesAutoresizingMaskIntoConstraints:0];
  v84 = [(SBHAddWidgetSheetViewControllerBase *)self addWidgetSheetStyle];
  if (v84 != 1)
  {
    v6 = [(SBHAddWidgetDetailSheetViewController *)self _newBackgroundView];
    backgroundView = self->_backgroundView;
    self->_backgroundView = v6;

    v8 = self->_backgroundView;
    [v3 bounds];
    [(MTMaterialView *)v8 setFrame:?];
    [(MTMaterialView *)self->_backgroundView setAutoresizingMask:18];
    [v3 addSubview:self->_backgroundView];
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
  [v3 addSubview:self->_contentScrollView];
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
    v15 = [(SBHAddWidgetDetailSheetViewController *)self traitCollection];
    [v15 displayScale];
    v17 = v16;

    v18 = [[SBHAddWidgetDetailSheetTitleView alloc] initWithIconImageInfo:30.0 contentInsets:30.0, v17, 7.0, 21.0, 21.0, 21.0, 21.0];
    titleView = self->_titleView;
    self->_titleView = v18;

    [(SBHAddWidgetDetailSheetTitleView *)self->_titleView setTranslatesAutoresizingMaskIntoConstraints:0];
    v20 = [(SBHAddWidgetDetailSheetViewController *)self applicationWidgetCollection];
    v21 = [(SBHAddWidgetSheetViewControllerBase *)self appCellConfigurator];
    [v21 configureCell:self->_titleView withApplicationWidgetCollection:v20];

    [(UIView *)self->_headerView addSubview:self->_titleView];
  }

  if (v84 != 1)
  {
    v22 = [MEMORY[0x1E69DC738] buttonWithType:7];
    closeButton = self->_closeButton;
    self->_closeButton = v22;

    [(UIButton *)self->_closeButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIButton *)self->_closeButton addTarget:self action:sel_closeButtonTapped_ forControlEvents:64];
    [v3 addSubview:self->_closeButton];
  }

  v83 = v3;
  v24 = objc_alloc_init(MEMORY[0x1E69DCF90]);
  v25 = self;
  widgetInfoStackView = self->_widgetInfoStackView;
  self->_widgetInfoStackView = v24;

  [(UIStackView *)self->_widgetInfoStackView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIStackView *)self->_widgetInfoStackView setAxis:0];
  [(UIStackView *)self->_widgetInfoStackView setAlignment:0];
  v27 = objc_alloc_init(MEMORY[0x1E698E808]);
  widgetInfoScrollView = self->_widgetInfoScrollView;
  self->_widgetInfoScrollView = v27;

  [(BSUIScrollView *)v25->_widgetInfoScrollView setDelegate:v25];
  [(BSUIScrollView *)self->_widgetInfoScrollView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(BSUIScrollView *)self->_widgetInfoScrollView setPagingEnabled:1];
  [(BSUIScrollView *)self->_widgetInfoScrollView setShowsHorizontalScrollIndicator:0];
  [(BSUIScrollView *)v25->_widgetInfoScrollView addSubview:v25->_widgetInfoStackView];
  [(BSUIScrollView *)self->_widgetInfoScrollView _setPocketsEnabled:0];
  [(UIStackView *)v25->_contentStackView addArrangedSubview:v25->_widgetInfoScrollView];
  v29 = objc_alloc_init(MEMORY[0x1E69DCF90]);
  widgetGalleryStackView = self->_widgetGalleryStackView;
  self->_widgetGalleryStackView = v29;

  [(UIStackView *)self->_widgetGalleryStackView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIStackView *)self->_widgetGalleryStackView setSpacing:0.0];
  [(UIStackView *)self->_widgetGalleryStackView setAxis:0];
  v31 = objc_alloc_init(MEMORY[0x1E698E808]);
  widgetGalleryScrollView = self->_widgetGalleryScrollView;
  self->_widgetGalleryScrollView = v31;

  [(BSUIScrollView *)v25->_widgetGalleryScrollView setDelegate:v25];
  [(BSUIScrollView *)self->_widgetGalleryScrollView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(BSUIScrollView *)self->_widgetGalleryScrollView setDecelerationRate:*MEMORY[0x1E69DE3A0]];
  [(BSUIScrollView *)self->_widgetGalleryScrollView setClipsToBounds:0];
  [(BSUIScrollView *)self->_widgetGalleryScrollView setShowsHorizontalScrollIndicator:0];
  [(BSUIScrollView *)self->_widgetGalleryScrollView _setInterpageSpacing:0.0, 0.0];
  [(BSUIScrollView *)self->_widgetGalleryScrollView _setTouchInsets:0.0, -0.0, 0.0, -0.0];
  [(BSUIScrollView *)self->_widgetGalleryScrollView _setPocketsEnabled:0];
  [(BSUIScrollView *)v25->_widgetGalleryScrollView addSubview:v25->_widgetGalleryStackView];
  [(UIStackView *)v25->_contentStackView addArrangedSubview:v25->_widgetGalleryScrollView];
  v33 = objc_alloc_init(MEMORY[0x1E695DF70]);
  pages = self->_pages;
  self->_pages = v33;

  [(SBHAddWidgetSheetViewControllerBase *)self allowedWidgets];
  v86 = v35;
  v82 = [(SBHAddWidgetSheetViewControllerBase *)self allowedWidgets];
  v81 = [(SBHAddWidgetSheetViewControllerBase *)self widgetWrapperViewControllerBackgroundType];
  v115 = 0u;
  v116 = 0u;
  v117 = 0u;
  v118 = 0u;
  v36 = [(SBHAddWidgetDetailSheetViewController *)self applicationWidgetCollection];
  v37 = [v36 widgetDescriptors];

  obj = v37;
  v87 = [v37 countByEnumeratingWithState:&v115 objects:v120 count:16];
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
          v40 = [(SBHAddWidgetDetailSheetViewController *)v25 applicationWidgetCollection];
          v41 = [v40 isDisfavored];

          v42 = [(SBHAddWidgetSheetViewControllerBase *)v25 addWidgetSheetLocation];
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
          [(SBHAddWidgetSheetViewControllerBase *)v25 addWidgetSheetMetrics];
          if (v41)
          {
            v43 = [v39 sbh_disfavoredSizeClassesForAddWidgetSheetLocation:v42];
          }

          else
          {
            v43 = [v39 sbh_favoredSizeClassesForAddWidgetSheetLocation:v42];
          }

          v88[0] = MEMORY[0x1E69E9820];
          v44 = (v43 & v82);
          v88[1] = 3221225472;
          v89 = __53__SBHAddWidgetDetailSheetViewController__createViews__block_invoke;
          v90 = &unk_1E8091430;
          v91 = v39;
          v92 = v25;
          v93 = v81;
          v94 = v84;
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
            v25 = self;
          }

          v49 = [SBHAddWidgetDetailSheetWidgetDescriptionView alloc];
          v50 = [v39 sbh_widgetName];
          v51 = [v39 sbh_widgetDescription];
          v52 = [(SBHAddWidgetDetailSheetWidgetDescriptionView *)v49 initWithTitle:v50 subtitle:v51];

          v53 = [(SBHAddWidgetDetailSheetViewController *)v25 _materialViewForVisualStyling];
          v54 = [v53 visualStylingProviderForCategory:1];
          v55 = [(SBHAddWidgetDetailSheetWidgetDescriptionView *)v52 descriptionLabel];
          [v54 automaticallyUpdateView:v55 withStyle:2];

          [(SBHAddWidgetDetailSheetWidgetDescriptionView *)v52 setTranslatesAutoresizingMaskIntoConstraints:0];
          [(UIStackView *)v25->_widgetInfoStackView addArrangedSubview:v52];
          v56 = [(SBHAddWidgetDetailSheetWidgetDescriptionView *)v52 widthAnchor];
          v57 = [v83 safeAreaLayoutGuide];
          v58 = [v57 widthAnchor];
          v59 = [v56 constraintEqualToAnchor:v58];
          [v59 setActive:1];

          v25 = self;
        }
      }

      v87 = [obj countByEnumeratingWithState:&v115 objects:v120 count:16];
    }

    while (v87);
  }

  v60 = [MEMORY[0x1E69AE158] materialViewWithRecipe:54];
  magicPocketBackgroundView = v25->_magicPocketBackgroundView;
  v25->_magicPocketBackgroundView = v60;

  v62 = v25->_magicPocketBackgroundView;
  [(UIView *)v25->_addButtonContainerView bounds];
  [(MTMaterialView *)v62 setFrame:?];
  [(MTMaterialView *)v25->_magicPocketBackgroundView setAutoresizingMask:18];
  [(MTMaterialView *)v25->_magicPocketBackgroundView setGroupNameBase:@"Add-Sheet"];
  [(UIView *)v25->_addButtonContainerView addSubview:v25->_magicPocketBackgroundView];
  [(SBHAddWidgetDetailSheetViewController *)v25 _updateMaterialRecipeForBackgroundView:v25->_magicPocketBackgroundView];
  v63 = objc_alloc_init(MEMORY[0x1E69DD250]);
  addButtonStackSpacerView = v25->_addButtonStackSpacerView;
  v25->_addButtonStackSpacerView = v63;

  [(UIView *)v25->_addButtonStackSpacerView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIStackView *)v25->_contentStackView addArrangedSubview:v25->_addButtonStackSpacerView];
  v65 = objc_alloc_init(MEMORY[0x1E69DD250]);
  addButtonContainerView = v25->_addButtonContainerView;
  v25->_addButtonContainerView = v65;

  [(UIView *)v25->_addButtonContainerView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)v25->_addButtonStackSpacerView addSubview:v25->_addButtonContainerView];
  v67 = objc_alloc_init(SBHAddWidgetButton);
  addButton = v25->_addButton;
  v25->_addButton = v67;

  [(SBHAddWidgetButton *)v25->_addButton setAddWidgetSheetStyle:v84];
  [(SBHAddWidgetButton *)v25->_addButton setTranslatesAutoresizingMaskIntoConstraints:0];
  [(SBHAddWidgetButton *)v25->_addButton addTarget:v25 action:sel_addButtonTapped_ forControlEvents:64];
  [(UIView *)v25->_addButtonContainerView addSubview:v25->_addButton];
  v69 = [(SBHApplicationWidgetCollection *)v25->_applicationWidgetCollection widgetDescriptors];
  v70 = [v69 firstObject];

  v71 = v25->_addButton;
  v72 = [v70 mostInterestingColor];
  if (v72)
  {
    [(SBHAddWidgetButton *)v71 setBackgroundColor:v72];
  }

  else
  {
    v73 = [MEMORY[0x1E69DC888] systemBlueColor];
    [(SBHAddWidgetButton *)v71 setBackgroundColor:v73];
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
    v77 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UIPageControl *)v76 setPageIndicatorTintColor:v77];

    v78 = self->_pageControl;
    v79 = [MEMORY[0x1E69DC888] labelColor];
    [(UIPageControl *)v78 setCurrentPageIndicatorTintColor:v79];

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
  v114 = [(SBHAddWidgetDetailSheetViewController *)self view];
  contentScrollView = self->_contentScrollView;
  v4 = [v114 safeAreaLayoutGuide];
  v5 = SBHPinViewWithinLayoutGuide(contentScrollView, v4);

  v6 = SBHPinViewWithinView(self->_containerView, self->_contentScrollView);
  v7 = SBHPinViewWithinView(self->_contentStackView, self->_containerView);
  v8 = SBHPinViewWithinView(self->_widgetInfoScrollView, self->_widgetInfoStackView);
  v9 = SBHPinViewWithinView(self->_widgetGalleryScrollView, self->_widgetGalleryStackView);
  v10 = [(BSUIScrollView *)self->_contentScrollView contentLayoutGuide];
  v11 = [(BSUIScrollView *)self->_contentScrollView frameLayoutGuide];
  v12 = [(UIStackView *)self->_widgetGalleryStackView heightAnchor];
  v13 = [v12 constraintGreaterThanOrEqualToConstant:0.0];
  widgetGalleryHeightConstraint = self->_widgetGalleryHeightConstraint;
  self->_widgetGalleryHeightConstraint = v13;

  v99 = MEMORY[0x1E696ACD8];
  v111 = [v10 heightAnchor];
  v106 = [v11 heightAnchor];
  v103 = [v111 constraintGreaterThanOrEqualToAnchor:v106];
  v122[0] = v103;
  v110 = v10;
  v100 = [v10 widthAnchor];
  v109 = v11;
  v15 = [v11 widthAnchor];
  v16 = [v100 constraintEqualToAnchor:v15];
  v122[1] = v16;
  v17 = [(BSUIScrollView *)self->_widgetInfoScrollView heightAnchor];
  v18 = [(UIStackView *)self->_widgetInfoStackView heightAnchor];
  v19 = [v17 constraintEqualToAnchor:v18];
  v122[2] = v19;
  v20 = [(BSUIScrollView *)self->_widgetGalleryScrollView heightAnchor];
  v21 = [(UIStackView *)self->_widgetGalleryStackView heightAnchor];
  v22 = [v20 constraintEqualToAnchor:v21];
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
    v30 = [(UIButton *)self->_closeButton trailingAnchor];
    v31 = [v114 trailingAnchor];
    v32 = [v30 constraintEqualToAnchor:v31 constant:-v28];
    v121[0] = v32;
    v33 = [(UIButton *)self->_closeButton topAnchor];
    v34 = [v114 topAnchor];
    v35 = [v33 constraintEqualToAnchor:v34 constant:v26];
    v121[1] = v35;
    v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:v121 count:2];
    [v29 activateConstraints:v36];
  }

  titleView = self->_titleView;
  if (titleView)
  {
    v101 = MEMORY[0x1E696ACD8];
    v107 = [(SBHAddWidgetDetailSheetTitleView *)titleView leadingAnchor];
    v104 = [(UIView *)self->_headerView leadingAnchor];
    v38 = [v107 constraintEqualToAnchor:v104];
    v120[0] = v38;
    v39 = [(SBHAddWidgetDetailSheetTitleView *)self->_titleView trailingAnchor];
    v40 = [(UIView *)self->_headerView trailingAnchor];
    v41 = [v39 constraintEqualToAnchor:v40];
    v120[1] = v41;
    v42 = [(SBHAddWidgetDetailSheetTitleView *)self->_titleView topAnchor];
    v43 = [(UIView *)self->_headerView topAnchor];
    v44 = [v42 constraintEqualToAnchor:v43];
    v120[2] = v44;
    v45 = [MEMORY[0x1E695DEC8] arrayWithObjects:v120 count:3];
    [v101 activateConstraints:v45];

    v46 = [(UIView *)self->_headerView bottomAnchor];
    v47 = [(SBHAddWidgetDetailSheetTitleView *)self->_titleView bottomAnchor];
    v48 = [v46 constraintEqualToAnchor:v47];
    topSpacingConstraint = self->_topSpacingConstraint;
    self->_topSpacingConstraint = v48;
  }

  else
  {
    v46 = [(UIView *)self->_headerView heightAnchor];
    v50 = [v46 constraintEqualToConstant:0.0];
    v47 = self->_topSpacingConstraint;
    self->_topSpacingConstraint = v50;
  }

  [(NSLayoutConstraint *)self->_topSpacingConstraint setActive:1];
  if (__sb__runningInSpringBoard())
  {
    v51 = SBFEffectiveDeviceClass() == 2;
  }

  else
  {
    v52 = [MEMORY[0x1E69DC938] currentDevice];
    v53 = [v52 userInterfaceIdiom];

    v51 = v53 == 1;
  }

  v54 = MEMORY[0x1E696ACD8];
  if (v51)
  {
    v55 = [(SBHAddWidgetButton *)self->_addButton widthAnchor];
    v56 = [v55 constraintEqualToConstant:460.0];
    v119[0] = v56;
    v57 = [(SBHAddWidgetButton *)self->_addButton centerXAnchor];
    v58 = [(UIView *)self->_containerView centerXAnchor];
    v59 = [v57 constraintEqualToAnchor:v58];
    v119[1] = v59;
    v60 = [MEMORY[0x1E695DEC8] arrayWithObjects:v119 count:2];
    [v54 activateConstraints:v60];
  }

  else
  {
    v55 = [(SBHAddWidgetButton *)self->_addButton leadingAnchor];
    v56 = [(UIView *)self->_containerView leadingAnchor];
    v57 = [v55 constraintEqualToAnchor:v56 constant:24.0];
    v118[0] = v57;
    v58 = [(SBHAddWidgetButton *)self->_addButton trailingAnchor];
    v59 = [(UIView *)self->_containerView trailingAnchor];
    v60 = [v58 constraintEqualToAnchor:v59 constant:-24.0];
    v118[1] = v60;
    v61 = [MEMORY[0x1E695DEC8] arrayWithObjects:v118 count:2];
    [v54 activateConstraints:v61];
  }

  pageControl = self->_pageControl;
  if (pageControl)
  {
    v63 = MEMORY[0x1E696ACD8];
    v64 = [(UIPageControl *)pageControl leadingAnchor];
    v65 = [(UIView *)self->_containerView leadingAnchor];
    v66 = [v64 constraintEqualToAnchor:v65 constant:24.0];
    v117[0] = v66;
    v67 = [(UIPageControl *)self->_pageControl trailingAnchor];
    v68 = [(UIView *)self->_containerView trailingAnchor];
    v69 = [v67 constraintEqualToAnchor:v68 constant:-24.0];
    v117[1] = v69;
    v70 = [MEMORY[0x1E695DEC8] arrayWithObjects:v117 count:2];
    [v63 activateConstraints:v70];
  }

  v71 = [(SBHAddWidgetButton *)self->_addButton bottomAnchor];
  v72 = [(UIView *)self->_addButtonContainerView bottomAnchor];
  v73 = [v71 constraintEqualToAnchor:v72];
  addButtonBottomConstraint = self->_addButtonBottomConstraint;
  self->_addButtonBottomConstraint = v73;

  v75 = self->_pageControl;
  v76 = [(SBHAddWidgetButton *)self->_addButton topAnchor];
  if (v75)
  {
    v77 = [(UIPageControl *)self->_pageControl bottomAnchor];
    v78 = [v76 constraintEqualToAnchor:v77 constant:10.0];
    addButtonTopConstraint = self->_addButtonTopConstraint;
    self->_addButtonTopConstraint = v78;

    v80 = [(UIPageControl *)self->_pageControl topAnchor];
    v81 = [(UIView *)self->_addButtonContainerView topAnchor];
    v82 = [v80 constraintEqualToAnchor:v81 constant:10.0];
    pageControlTopConstraint = self->_pageControlTopConstraint;
    self->_pageControlTopConstraint = v82;

    [(NSLayoutConstraint *)self->_pageControlTopConstraint setActive:1];
  }

  else
  {
    v84 = [(UIView *)self->_addButtonContainerView topAnchor];
    v85 = [v76 constraintEqualToAnchor:v84 constant:24.0];
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
  v113 = [(UIView *)self->_addButtonContainerView heightAnchor];
  v112 = [(UIView *)self->_addButtonStackSpacerView heightAnchor];
  v108 = [v113 constraintEqualToAnchor:v112];
  v115[0] = v108;
  v105 = [(UIView *)self->_addButtonContainerView leadingAnchor];
  v90 = [(UIView *)self->_addButtonStackSpacerView leadingAnchor];
  v91 = [v105 constraintEqualToAnchor:v90];
  v115[1] = v91;
  v92 = [(UIView *)self->_addButtonContainerView trailingAnchor];
  v93 = [(UIView *)self->_addButtonStackSpacerView trailingAnchor];
  v94 = [v92 constraintEqualToAnchor:v93];
  v115[2] = v94;
  v95 = [(UIView *)self->_addButtonContainerView bottomAnchor];
  v96 = [(UIView *)self->_addButtonStackSpacerView bottomAnchor];
  v97 = [v95 constraintEqualToAnchor:v96];
  v115[3] = v97;
  v98 = [MEMORY[0x1E695DEC8] arrayWithObjects:v115 count:4];
  [v102 activateConstraints:v98];

  [(SBHAddWidgetDetailSheetViewController *)self _contentSizeCategoryDidChange];
}

- (void)_updateConstraintConstants
{
  v3 = [(SBHAddWidgetDetailSheetViewController *)self view];
  v4 = [v3 window];

  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = self;
  }

  v6 = [(SBHAddWidgetDetailSheetViewController *)v5 interfaceOrientation];
  v7 = [(SBHAddWidgetSheetViewControllerBase *)self addWidgetSheetStyle];
  v8 = 0.0;
  if (v7 == 1)
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
    v9 = [MEMORY[0x1E69DC938] currentDevice];
    v10 = [v9 userInterfaceIdiom];

    if (v10 != 1)
    {
      goto LABEL_7;
    }
  }

  v11 = v6 - 3;
  externalSearchController = self->_externalSearchController;
  if (externalSearchController)
  {
    v13 = [(SBHWidgetSearchController *)externalSearchController searchBarBackgroundView];
    [v13 frame];
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
    v9 = [(SBHWidgetSearchController *)externalSearchController searchBar];
    [v9 frame];
    Height = CGRectGetHeight(v16);
  }

  else
  {
    Height = v3;
  }

  v11 = [(SBHAddWidgetDetailSheetViewController *)self view];
  [v11 bounds];
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

        v8 = [*(*(&v14 + 1) + 8 * i) widgetWrapperViewController];
        v9 = [v8 wrapperView];
        v10 = [v9 contentView];
        [v10 intrinsicContentSize];
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

- (void)setApplicationWidgetCollection:(id)a3
{
  v4 = a3;
  v5 = [(SBHAddWidgetSheetViewControllerBase *)self allowedWidgets];
  v7 = v6;
  v8 = [(SBHApplicationWidgetCollection *)v4 widgetDescriptors];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __72__SBHAddWidgetDetailSheetViewController_setApplicationWidgetCollection___block_invoke;
  v11[3] = &__block_descriptor_48_e40_B16__0___SBHAddWidgetSheetGalleryItem__8l;
  v11[4] = v5;
  v11[5] = v7;
  v9 = [v8 bs_filter:v11];

  [(SBHApplicationWidgetCollection *)v4 setWidgetDescriptors:v9];
  applicationWidgetCollection = self->_applicationWidgetCollection;
  self->_applicationWidgetCollection = v4;
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

- (void)configureForGalleryItem:(id)a3 selectedSizeClass:(int64_t)a4
{
  v6 = a3;
  [(SBHAddWidgetDetailSheetViewController *)self loadViewIfNeeded];
  pages = self->_pages;
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __83__SBHAddWidgetDetailSheetViewController_configureForGalleryItem_selectedSizeClass___block_invoke;
  v14 = &unk_1E8091458;
  v8 = v6;
  v15 = v8;
  v16 = a4;
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

- (void)closeButtonTapped:(id)a3
{
  v4 = [(SBHAddWidgetSheetViewControllerBase *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 addWidgetSheetViewControllerDidCancel:self];
  }
}

- (void)addButtonTapped:(id)a3
{
  v8 = [(SBHAddWidgetSheetViewControllerBase *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [(SBHAddWidgetDetailSheetViewController *)self currentPage];
    v5 = [v4 widgetWrapperViewController];

    v6 = [v5 wrapperView];
    v7 = [v6 contentView];

    if (v7)
    {
      [v8 addWidgetSheetViewController:self didSelectWidgetIconView:v7];
    }
  }
}

- (void)pageControlChanged:(id)a3
{
  v4 = [a3 currentPage];

  [(SBHAddWidgetDetailSheetViewController *)self _scrollToPageIndex:v4 animated:1];
}

- (void)_scrollToPageIndex:(unint64_t)a3 animated:(BOOL)a4
{
  v4 = a4;
  v7 = [(UIStackView *)self->_widgetGalleryStackView arrangedSubviews];
  v8 = [v7 count];

  if (v8 <= a3)
  {
    v12 = SBLogWidgets();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(SBHAddWidgetDetailSheetViewController *)v8 _scrollToPageIndex:a3 animated:v12];
    }
  }

  else
  {
    v9 = [(SBHAddWidgetDetailSheetViewController *)self view];
    [v9 layoutIfNeeded];

    if ([*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection] == 1)
    {
      a3 = [(NSMutableArray *)self->_pages count]+ ~a3;
    }

    [(BSUIScrollView *)self->_widgetGalleryScrollView bounds];
    v11 = v10 * a3;
    [(BSUIScrollView *)self->_widgetGalleryScrollView setContentOffset:v4 animated:v11, 0.0];

    [(SBHAddWidgetDetailSheetViewController *)self _updateControlsForContentOffset:v4 animated:v11, 0.0];
  }
}

- (void)scrollViewDidScroll:(id)a3
{
  v4 = a3;
  widgetGalleryScrollView = self->_widgetGalleryScrollView;
  v9 = v4;
  if (widgetGalleryScrollView == v4)
  {
    [(SBHAddWidgetDetailSheetViewController *)self _updateParallaxEffect];
    if (!self->_scrollingInitiatedByInfoScrollView)
    {
      [(SBHAddWidgetDetailSheetViewController *)self _updatePageViewControllerAppearanceForNormalScroll];
    }
  }

  else if (self->_widgetInfoScrollView == v4 && ![(BSUIScrollView *)widgetGalleryScrollView isScrolling])
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

- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5
{
  widgetGalleryScrollView = self->_widgetGalleryScrollView;
  if (widgetGalleryScrollView == a3)
  {
    x = a4.x;
    [(BSUIScrollView *)widgetGalleryScrollView bounds:a4.x];
    v10 = a5->x / v9;
    v11 = floor(v10);
    v12 = ceil(v10);
    if (x <= 0.0)
    {
      v12 = v11;
    }

    a5->x = v9 * v12;

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

- (void)_updateMaterialRecipeForBackgroundView:(id)a3
{
  v7 = a3;
  v4 = [(SBHAddWidgetDetailSheetViewController *)self traitCollection];
  v5 = [v4 userInterfaceStyle];

  if (v5 == 2)
  {
    v6 = 53;
  }

  else
  {
    v6 = 54;
  }

  [v7 setRecipe:v6];
}

- (void)_addPage:(id)a3
{
  v4 = a3;
  [(SBHAddWidgetDetailSheetViewController *)self addChildViewController:v4];
  v5 = [(NSMutableArray *)self->_pages indexOfObject:v4];
  v11 = [v4 view];
  [(UIStackView *)self->_widgetGalleryStackView insertArrangedSubview:v11 atIndex:v5];
  v6 = [v11 widthAnchor];
  v7 = [(SBHAddWidgetDetailSheetViewController *)self view];
  v8 = [v7 safeAreaLayoutGuide];
  v9 = [v8 widthAnchor];
  v10 = [v6 constraintEqualToAnchor:v9];
  [v10 setActive:1];

  [v4 didMoveToParentViewController:self];
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

- (void)_updatePageViewControllerAppearanceWithAppearedBlock:(id)a3
{
  v4 = a3;
  pages = self->_pages;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __94__SBHAddWidgetDetailSheetViewController__updatePageViewControllerAppearanceWithAppearedBlock___block_invoke;
  v7[3] = &unk_1E80914A0;
  v8 = v4;
  v6 = v4;
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

- (void)_updatePageViewControllerAppearanceForFastScrollToTargetIndex:(unint64_t)a3
{
  v5 = [(UIPageControl *)self->_pageControl currentPage];
  if (v5 >= a3)
  {
    v6 = a3;
  }

  else
  {
    v6 = v5;
  }

  if (v5 > a3)
  {
    a3 = v5;
  }

  if (v6 <= 1)
  {
    v6 = 1;
  }

  v7 = v6 - 1;
  v8 = [(NSMutableArray *)self->_pages count]- 1;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __103__SBHAddWidgetDetailSheetViewController__updatePageViewControllerAppearanceForFastScrollToTargetIndex___block_invoke;
  v9[3] = &__block_descriptor_48_e8_B16__0Q8l;
  if (a3 + 1 < v8)
  {
    v8 = a3 + 1;
  }

  v9[4] = v7;
  v9[5] = v8;
  [(SBHAddWidgetDetailSheetViewController *)self _updatePageViewControllerAppearanceWithAppearedBlock:v9];
}

- (SBHAddWidgetDetailsSheetPageViewController)currentPage
{
  v3 = [(UIPageControl *)self->_pageControl currentPage];
  if (v3 >= [(NSMutableArray *)self->_pages count])
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
    v4 = [(NSMutableArray *)self->_pages objectAtIndex:v3];
  }

  return v4;
}

- (SBFFluidBehaviorSettings)widgetInfoScrollViewAnimationSettings
{
  widgetInfoScrollViewAnimationSettings = self->_widgetInfoScrollViewAnimationSettings;
  if (!widgetInfoScrollViewAnimationSettings)
  {
    v4 = [objc_alloc(MEMORY[0x1E69D3FC8]) initWithDefaultValues];
    v5 = self->_widgetInfoScrollViewAnimationSettings;
    self->_widgetInfoScrollViewAnimationSettings = v4;

    [(SBFFluidBehaviorSettings *)self->_widgetInfoScrollViewAnimationSettings setDampingRatio:1.0];
    [(SBFFluidBehaviorSettings *)self->_widgetInfoScrollViewAnimationSettings setResponse:0.456999987];
    widgetInfoScrollViewAnimationSettings = self->_widgetInfoScrollViewAnimationSettings;
  }

  return widgetInfoScrollViewAnimationSettings;
}

- (unint64_t)_pageIndexAtContentOffset:(CGPoint)a3
{
  v4 = [(UIStackView *)self->_widgetGalleryStackView hitTest:0 withEvent:a3.x, a3.y];
  v5 = [(UIStackView *)self->_widgetGalleryStackView arrangedSubviews];
  v6 = [v5 indexOfObject:v4];

  return v6;
}

- (void)_updateControlsForContentOffset:(CGPoint)a3 animated:(BOOL)a4
{
  v4 = a4;
  y = a3.y;
  x = a3.x;
  v8 = [(SBHAddWidgetDetailSheetViewController *)self view];
  [v8 layoutIfNeeded];

  v9 = [(SBHAddWidgetDetailSheetViewController *)self _pageIndexAtContentOffset:x, y];
  if (v9 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = v9;
    [(UIPageControl *)self->_pageControl setCurrentPage:v9];
    if (![(BSUIScrollView *)self->_widgetInfoScrollView isScrolling])
    {
      v11 = [(NSMutableArray *)self->_pages objectAtIndex:v10];
      v12 = [v11 widgetWrapperViewController];
      v13 = [v12 galleryItem];

      v14 = [(SBHApplicationWidgetCollection *)self->_applicationWidgetCollection indexOfWidgetDescriptorMatchingDescriptor:v13];
      if (v14 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v15 = v14;
        v16 = [(UIStackView *)self->_widgetInfoStackView arrangedSubviews];
        v17 = [v16 count];

        if (v15 < v17)
        {
          v18 = [(UIStackView *)self->_widgetInfoStackView arrangedSubviews];
          v19 = [v18 objectAtIndex:v15];

          v28 = MEMORY[0x1E69E9820];
          v29 = 3221225472;
          v30 = __82__SBHAddWidgetDetailSheetViewController__updateControlsForContentOffset_animated___block_invoke;
          v31 = &unk_1E8088F18;
          v32 = self;
          v20 = v19;
          v33 = v20;
          v21 = _Block_copy(&v28);
          v22 = v21;
          if (v4)
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
  v7 = [(SBHAddWidgetDetailSheetViewController *)self widgetInfoViews];
  v8 = [v7 indexOfObject:v6];

  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = [(SBHApplicationWidgetCollection *)self->_applicationWidgetCollection widgetDescriptors];
    v10 = [v9 count];

    if (v8 < v10)
    {
      v11 = [(SBHApplicationWidgetCollection *)self->_applicationWidgetCollection widgetDescriptors];
      v12 = [v11 objectAtIndex:v8];

      v13 = [(SBHAddWidgetDetailSheetViewController *)self _currentGalleryItem];

      if (v12 != v13)
      {
        v14 = [(SBHAddWidgetDetailSheetViewController *)self _closestPageWithGalleryItem:v12];
        v15 = [(SBHAddWidgetDetailSheetViewController *)self widgetInfoScrollViewAnimationSettings];
        self->_scrollingInitiatedByInfoScrollView = 1;
        [(SBHAddWidgetDetailSheetViewController *)self _updatePageViewControllerAppearanceForFastScrollToTargetIndex:v14];
        v16 = MEMORY[0x1E69DD250];
        [v15 settlingDuration];
        v18 = v17;
        [v15 dampingRatio];
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

- (unint64_t)_closestPageWithGalleryItem:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  applicationWidgetCollection = self->_applicationWidgetCollection;
  v6 = [(SBHAddWidgetDetailSheetViewController *)self _currentGalleryItem];
  v7 = [(SBHApplicationWidgetCollection *)applicationWidgetCollection indexOfWidgetDescriptorMatchingDescriptor:v6];

  v24 = v4;
  v8 = [(SBHApplicationWidgetCollection *)self->_applicationWidgetCollection indexOfWidgetDescriptorMatchingDescriptor:v4];
  v9 = 0x7FFFFFFFFFFFFFFFLL;
  if (v7 != 0x7FFFFFFFFFFFFFFFLL && v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = v8;
    v12 = [(NSMutableArray *)self->_pages count];
    v13 = [(UIPageControl *)self->_pageControl currentPage];
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
      v9 = v13;
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
      v19 = [v18 widgetWrapperViewController];
      v20 = [v19 galleryItem];

      v16 |= v20 == v24;
      if (v20 == v24)
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
  v2 = [(SBHAddWidgetDetailSheetViewController *)self currentPage];
  v3 = [v2 widgetWrapperViewController];
  v4 = [v3 galleryItem];

  return v4;
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
  v2 = [(SBHAddWidgetSheetViewControllerBase *)self delegate];
  v3 = [v2 widgetDragHandler];

  return v3;
}

- (id)backgroundViewMatchingMaterialBeneathPageViewController:(id)a3
{
  if ([(SBHAddWidgetSheetViewControllerBase *)self addWidgetSheetStyle]== 1)
  {
    v4 = [(SBHAddWidgetSheetViewControllerBase *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      v5 = [v4 backgroundViewMatchingMaterialBeneathAddWidgetSheetViewController:self];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = [(SBHAddWidgetDetailSheetViewController *)self _newBackgroundView];
  }

  return v5;
}

- (void)configureBackgroundView:(id)a3 matchingMaterialBeneathPageViewController:(id)a4
{
  v9 = a3;
  if ([(SBHAddWidgetSheetViewControllerBase *)self addWidgetSheetStyle]== 1)
  {
    v5 = [(SBHAddWidgetSheetViewControllerBase *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [v5 configureBackgroundView:v9 matchingMaterialBeneathAddWidgetSheetViewController:self];
    }
  }

  else
  {
    v6 = objc_opt_class();
    v7 = v9;
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

    v5 = v8;

    if (v5)
    {
      [(SBHAddWidgetDetailSheetViewController *)self _updateMaterialRecipeForBackgroundView:v5];
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
  v5 = [*a1 count];
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