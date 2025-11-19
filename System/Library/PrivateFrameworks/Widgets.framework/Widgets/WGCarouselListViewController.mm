@interface WGCarouselListViewController
- (BOOL)_hasEnoughContentToScroll;
- (BOOL)headerVisible;
- (BOOL)shouldAnimateFirstTwoViewsAsOne;
- (CGRect)_cellFrameInScrollBoundsForCell:(id)a3;
- (NSMutableDictionary)catchupTimers;
- (WGCarouselListViewController)initWithWidgetDiscoveryController:(id)a3 listSettings:(WGWidgetListSettings)a4;
- (WGWidgetListSettings)listSettings;
- (double)easedOutValueForValue:(double)a3;
- (id)_animatablePropertiesForStackViewUpdate;
- (id)_identifierForCell:(id)a3;
- (id)_newCatchupPropertyForCell:(id)a3;
- (id)_thresholdsForCell:(id)a3;
- (id)extraViews;
- (unint64_t)_indexForNextCellAfterContentOffset:(double)a3;
- (unint64_t)_indexOfFirstNonFavoritedWidgetInStackView;
- (unint64_t)_insertionIndexofListItem:(id)a3 intoWidgetViews:(id)a4 withOrderedIdentifiers:(id)a5;
- (void)_animatablePropertiesForStackViewUpdate;
- (void)_createPropertiesForStackViewUpdate;
- (void)_repopulateStackViewWithWidgetIdentifiers:(id)a3;
- (void)_stackViewArrangedSubviewsTransformPresentationValueChanged;
- (void)_styleCroppedAndScaledCellForBottomEdge:(id)a3 withCellFrameInScrollViewBounds:(CGRect)a4 intersectionRect:(CGRect)a5 thresholds:(id)a6;
- (void)_styleCroppedAndScaledCellForTopEdge:(id)a3 withCellFrameInScrollViewBounds:(CGRect)a4 thresholds:(id)a5;
- (void)_styleCroppedCellForBottomEdge:(id)a3 intersectionRect:(CGRect)a4 thresholds:(id)a5;
- (void)_styleCroppedCellForTopEdge:(id)a3 withCellFrameInScrollViewBounds:(CGRect)a4 intersectionRect:(CGRect)a5 thresholds:(id)a6;
- (void)_styleDisapearingCellForBottomEdge:(id)a3 withCellFrameInScrollViewBounds:(CGRect)a4 previousCellFrameInContainerView:(CGRect)a5 thresholds:(id)a6;
- (void)_styleFooterView:(id)a3 withCellFrameInScrollViewBounds:(CGRect)a4 intersectionRect:(CGRect)a5 containerHeight:(double)a6;
- (void)_styleFullyInvisibleBottomCell:(id)a3 withCellFrameInScrollViewBounds:(CGRect)a4 thresholds:(id)a5;
- (void)_styleFullyInvisibleTopCell:(id)a3;
- (void)_styleFullyVisibleCell:(id)a3;
- (void)_styleHeaderView:(id)a3 withCellFrameInScrollViewBounds:(CGRect)a4 intersectionRect:(CGRect)a5;
- (void)_styleTeachingView:(id)a3 withCellFrameInScrollViewBounds:(CGRect)a4 intersectionRect:(CGRect)a5;
- (void)_updateCarouselEffect;
- (void)_updateRevealState;
- (void)_updateScrollViewContentSize;
- (void)_updateTeachingViewVisibilityAnimated:(BOOL)a3 withCompletion:(id)a4;
- (void)dealloc;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5;
- (void)setContainerView:(id)a3;
- (void)setEditingIcons:(BOOL)a3;
- (void)setFooterVisible:(BOOL)a3;
- (void)setHeaderVisible:(BOOL)a3;
- (void)setListSettings:(WGWidgetListSettings)a3;
- (void)setRevealed:(BOOL)a3;
- (void)setVisuallyRevealed:(BOOL)a3 withSlowAnimation:(BOOL)a4;
- (void)updateCarouselAndRevealState;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)widgetPinningTeachingViewDidSelectNo:(id)a3;
- (void)widgetPinningTeachingViewDidSelectYes:(id)a3;
@end

@implementation WGCarouselListViewController

- (WGCarouselListViewController)initWithWidgetDiscoveryController:(id)a3 listSettings:(WGWidgetListSettings)a4
{
  v4 = *&a4.useFavorites;
  carouselEdges = a4.carouselEdges;
  v7 = a3;
  v20.receiver = self;
  v20.super_class = WGCarouselListViewController;
  v8 = [(WGWidgetListViewController *)&v20 initWithWidgetDiscoveryController:v7];
  v9 = v8;
  if (v8)
  {
    v8->_listSettings.carouselEdges = carouselEdges;
    *&v8->_listSettings.useFavorites = v4;
    objc_initWeak(&location, v8);
    v10 = [MEMORY[0x277CCAB98] defaultCenter];
    v11 = [MEMORY[0x277CCABD8] mainQueue];
    v12 = *MEMORY[0x277D76810];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __79__WGCarouselListViewController_initWithWidgetDiscoveryController_listSettings___block_invoke;
    v17[3] = &unk_279ED1060;
    objc_copyWeak(&v18, &location);
    v13 = [v10 addObserverForName:v12 object:0 queue:v11 usingBlock:v17];
    sizeChangeObserver = v9->_sizeChangeObserver;
    v9->_sizeChangeObserver = v13;

    v15 = v9;
    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }

  return v9;
}

void __79__WGCarouselListViewController_initWithWidgetDiscoveryController_listSettings___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setCachedThresholds:0];
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self->_sizeChangeObserver];

  v4.receiver = self;
  v4.super_class = WGCarouselListViewController;
  [(WGWidgetListViewController *)&v4 dealloc];
}

- (void)_repopulateStackViewWithWidgetIdentifiers:(id)a3
{
  v6.receiver = self;
  v6.super_class = WGCarouselListViewController;
  [(WGMajorListViewController *)&v6 _repopulateStackViewWithWidgetIdentifiers:a3];
  v4 = [(UIStackView *)self->super.super._stackView arrangedSubviews];
  v5 = [v4 count];

  if (v5)
  {
    [(WGCarouselListViewController *)self _updateTeachingViewVisibilityAnimated:0 withCompletion:0];
  }

  [(WGWidgetListViewController *)self _didUpdateStackViewArrangedSubviews];
}

- (unint64_t)_insertionIndexofListItem:(id)a3 intoWidgetViews:(id)a4 withOrderedIdentifiers:(id)a5
{
  v11.receiver = self;
  v11.super_class = WGCarouselListViewController;
  v6 = [(WGMajorListViewController *)&v11 _insertionIndexofListItem:a3 intoWidgetViews:a4 withOrderedIdentifiers:a5];
  v7 = [(UIStackView *)self->super.super._stackView arrangedSubviews];
  v8 = v7;
  if (self->_teachingView)
  {
    if ([v7 containsObject:?])
    {
      v9 = v6 == 1;
    }

    else
    {
      v9 = 0;
    }

    if (v9)
    {
      if ([v8 count] <= 1)
      {
        v6 = 1;
      }

      else
      {
        v6 = 2;
      }
    }
  }

  return v6;
}

- (NSMutableDictionary)catchupTimers
{
  catchupTimers = self->_catchupTimers;
  if (!catchupTimers)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v5 = self->_catchupTimers;
    self->_catchupTimers = v4;

    catchupTimers = self->_catchupTimers;
  }

  return catchupTimers;
}

- (id)extraViews
{
  v12.receiver = self;
  v12.super_class = WGCarouselListViewController;
  v3 = [(WGMajorListViewController *)&v12 extraViews];
  teachingView = self->_teachingView;
  if (teachingView && (-[WGWidgetPinningTeachingView contentView](teachingView, "contentView"), v5 = objc_claimAutoreleasedReturnValue(), [v5 alpha], IsZero = BSFloatIsZero(), v5, (IsZero & 1) == 0))
  {
    v7 = [v3 mutableCopy];
    v10 = 0;
    if ([v3 count])
    {
      v8 = [v7 firstObject];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v10 = 1;
      }
    }

    [v7 insertObject:self->_teachingView atIndex:v10];
  }

  else
  {
    v7 = v3;
  }

  return v7;
}

- (BOOL)shouldAnimateFirstTwoViewsAsOne
{
  v9.receiver = self;
  v9.super_class = WGCarouselListViewController;
  if ([(WGMajorListViewController *)&v9 shouldAnimateFirstTwoViewsAsOne])
  {
    LOBYTE(v3) = 1;
  }

  else
  {
    teachingView = self->_teachingView;
    if (teachingView)
    {
      v5 = [(WGCarouselListViewController *)self extraViews];
      v6 = [v5 firstObject];
      if (teachingView == v6)
      {
        v7 = [(WGWidgetPinningTeachingView *)self->_teachingView contentView];
        [v7 alpha];
        v3 = BSFloatIsOne() ^ 1;
      }

      else
      {
        LOBYTE(v3) = 0;
      }
    }

    else
    {
      LOBYTE(v3) = 0;
    }
  }

  return v3;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = WGCarouselListViewController;
  [(WGWidgetListViewController *)&v5 viewDidLoad];
  [(WGCarouselListViewController *)self _updateTeachingViewVisibilityAnimated:0 withCompletion:0];
  v3 = 0;
  if (self->_listSettings.useFavorites)
  {
    v3 = [(WGWidgetDiscoveryController *)self->super.super._discoveryController areWidgetsPinned]|| [(WGWidgetDiscoveryController *)self->super.super._discoveryController alwaysShowsFavoriteWidgets];
  }

  [(WGCarouselListViewController *)self setRevealed:v3];
  [(WGCarouselListViewController *)self setRevealed:v3 ^ 1];
  [(WGCarouselListViewController *)self setVisuallyRevealed:v3];
  [(WGCarouselListViewController *)self setVisuallyRevealed:v3 ^ 1];
  if ((self->_listSettings.carouselEdges & 4) != 0)
  {
    v4 = [(WGMajorListViewController *)self footerView];
    [v4 setShouldSizeContent:0];
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = WGCarouselListViewController;
  [(WGMajorListViewController *)&v4 viewWillAppear:a3];
  [(WGCarouselListViewController *)self setCachedThresholds:0];
  [(WGCarouselListViewController *)self updateCarouselAndRevealState];
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = WGCarouselListViewController;
  [(WGMajorListViewController *)&v4 viewDidAppear:a3];
  [(WGWidgetPinningTeachingView *)self->_teachingView startAnimating];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = WGCarouselListViewController;
  [(WGMajorListViewController *)&v4 viewDidDisappear:a3];
  [(WGWidgetPinningTeachingView *)self->_teachingView stopAnimating];
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = WGCarouselListViewController;
  [(WGCarouselListViewController *)&v3 viewDidLayoutSubviews];
  [(WGCarouselListViewController *)self setCachedThresholds:0];
  if ([(WGCarouselListViewController *)self _appearState])
  {
    [(WGCarouselListViewController *)self updateCarouselAndRevealState];
  }
}

- (void)setListSettings:(WGWidgetListSettings)a3
{
  v3 = *&a3.useFavorites;
  carouselEdges = a3.carouselEdges;
  p_listSettings = &self->_listSettings;
  if (!WGWidgetListSettingsEqualsToWidgetListSettings(self->_listSettings.carouselEdges, *&self->_listSettings.useFavorites, a3.carouselEdges, *&a3.useFavorites))
  {
    p_listSettings->carouselEdges = carouselEdges;
    *&p_listSettings->useFavorites = v3;

    [(WGCarouselListViewController *)self updateCarouselAndRevealState];
  }
}

- (void)setRevealed:(BOOL)a3
{
  if (self->_revealed != a3)
  {
    v3 = a3;
    v5 = WGLogWidgets;
    if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEBUG))
    {
      [(WGCarouselListViewController *)v3 setRevealed:v5, v6, v7, v8, v9, v10, v11];
    }

    self->_revealed = v3;
    v12 = [(WGWidgetListViewController *)self widgetListView];
    [v12 bounds];
    v14 = v13;
    v16 = v15;
    v17 = *MEMORY[0x277CBF3A8];
    v18 = *(MEMORY[0x277CBF3A8] + 8);

    if (v17 != v14 || v18 != v16)
    {
      [(WGCarouselListViewController *)self _updateScrollViewContentSize];
    }
  }
}

- (void)setVisuallyRevealed:(BOOL)a3 withSlowAnimation:(BOOL)a4
{
  v50 = *MEMORY[0x277D85DE8];
  if (self->_visuallyRevealed != a3)
  {
    self->_visuallyRevealed = a3;
    v5 = WGLogWidgets;
    if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEBUG))
    {
      [(WGCarouselListViewController *)&self->_visuallyRevealed setVisuallyRevealed:v5 withSlowAnimation:v6, v7, v8, v9, v10, v11];
    }

    v38 = [(WGCarouselListViewController *)self _indexOfFirstNonFavoritedWidgetInStackView];
    [(UIStackView *)self->super.super._stackView arrangedSubviews];
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    obj = v48 = 0u;
    v12 = [obj countByEnumeratingWithState:&v45 objects:v49 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v46;
      v37 = v42;
      v36 = *MEMORY[0x277CBE738];
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v46 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v45 + 1) + 8 * i);
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
          objc_opt_class();
          v18 = objc_opt_isKindOfClass();
          if (isKindOfClass & 1) != 0 || (v18)
          {
            v19 = [(WGCarouselListViewController *)self _identifierForCell:v16, v36, v37];
            v20 = [(WGCarouselListViewController *)self catchupTimers];
            v21 = [v20 objectForKey:v19];

            [v21 invalidate];
            v22 = [(WGCarouselListViewController *)self catchupTimers];
            [v22 removeObjectForKey:v19];

            v23 = [(UIStackView *)self->super.super._stackView arrangedSubviews];
            v24 = [v23 indexOfObject:v16];

            v25 = (v24 - v38);
            v26 = pow(0.9, v25);
            visuallyRevealed = self->_visuallyRevealed;
            v28 = MEMORY[0x277CBEBB8];
            v41[0] = MEMORY[0x277D85DD0];
            v29 = v26 * 0.05 * v25;
            if (visuallyRevealed)
            {
              v30 = v29;
            }

            else
            {
              v30 = 0.0;
            }

            v41[1] = 3221225472;
            v42[0] = __70__WGCarouselListViewController_setVisuallyRevealed_withSlowAnimation___block_invoke;
            v42[1] = &unk_279ED10B0;
            v44 = a4;
            v42[2] = self;
            v43 = v19;
            v31 = v19;
            v32 = [v28 timerWithTimeInterval:0 repeats:v41 block:v30];
            v33 = [(WGCarouselListViewController *)self catchupTimers];
            [v33 setObject:v32 forKey:v31];

            v34 = [MEMORY[0x277CBEB88] mainRunLoop];
            [v34 addTimer:v32 forMode:v36];
          }
        }

        v13 = [obj countByEnumeratingWithState:&v45 objects:v49 count:16];
      }

      while (v13);
    }

    [(WGCarouselListViewController *)self _updateScrollViewContentSize];
  }

  v35 = [(WGWidgetListViewController *)self widgetListView];
  if (([v35 isTracking] & 1) == 0)
  {
    [(WGCarouselListViewController *)self setRevealed:self->_visuallyRevealed];
  }
}

void __70__WGCarouselListViewController_setVisuallyRevealed_withSlowAnimation___block_invoke(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  if (*(v4 + 1161))
  {
    v5 = 0.0;
  }

  else
  {
    v5 = 1.0;
  }

  v6 = MEMORY[0x277D75D18];
  if (*(a1 + 48))
  {
    v7 = 39.48;
  }

  else
  {
    v7 = 145.0;
  }

  if (*(a1 + 48))
  {
    v8 = 12.52;
  }

  else
  {
    v8 = 24.0;
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __70__WGCarouselListViewController_setVisuallyRevealed_withSlowAnimation___block_invoke_2;
  v11[3] = &unk_279ED1088;
  v11[4] = v4;
  v12 = *(a1 + 40);
  v13 = v5;
  v9 = a2;
  [v6 _animateUsingSpringWithTension:0 friction:v11 interactive:0 animations:v7 completion:v8];
  [v9 invalidate];

  v10 = [*(a1 + 32) catchupTimers];
  [v10 removeObjectForKey:*(a1 + 40)];
}

void __70__WGCarouselListViewController_setVisuallyRevealed_withSlowAnimation___block_invoke_2(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 1184) objectForKey:*(a1 + 40)];
  if (v2)
  {
    v3 = v2;
    [v2 setValue:*(a1 + 48)];
    v2 = v3;
  }
}

- (void)_updateScrollViewContentSize
{
  if ([(WGWidgetListViewController *)self shouldIncludeScrollView])
  {
    v8 = [(WGWidgetListViewController *)self widgetListView];
    [v8 _setAutomaticContentOffsetAdjustmentEnabled:0];
    visuallyRevealed = self->_visuallyRevealed;
    v4 = [(WGWidgetListViewController *)self stackViewBottomConstraint];
    v5 = v4;
    if (visuallyRevealed)
    {
      [v4 setActive:1];

      [(UIStackView *)self->super.super._stackView layoutIfNeeded];
    }

    else
    {
      [v4 setActive:0];

      [v8 frame];
      [v8 setContentSize:{v6, v7}];
    }
  }

  else
  {
    v8 = [(WGWidgetListViewController *)self stackViewBottomConstraint];
    [v8 setActive:1];
  }
}

- (void)setContainerView:(id)a3
{
  v4 = a3;
  v5 = [(WGMajorListViewController *)self containerView];
  v6.receiver = self;
  v6.super_class = WGCarouselListViewController;
  [(WGMajorListViewController *)&v6 setContainerView:v4];

  if (v5 != v4)
  {
    [(WGCarouselListViewController *)self setCachedThresholds:0];
  }
}

- (BOOL)headerVisible
{
  v2 = [(WGMajorListViewController *)self headerView];
  v3 = [v2 contentView];
  [v3 alpha];
  IsZero = BSFloatIsZero();

  return IsZero ^ 1;
}

- (void)setHeaderVisible:(BOOL)a3
{
  v3 = a3;
  v5 = [(WGMajorListViewController *)self headerView];
  v6 = [v5 contentView];

  LODWORD(v5) = [(WGCarouselListViewController *)self headerVisible];
  v11.receiver = self;
  v11.super_class = WGCarouselListViewController;
  [(WGMajorListViewController *)&v11 setHeaderVisible:v3];
  if (v5 != v3)
  {
    v7 = MEMORY[0x277D75D18];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __49__WGCarouselListViewController_setHeaderVisible___block_invoke;
    v8[3] = &unk_279ED10D8;
    v9 = v6;
    v10 = v3;
    [v7 animateWithDuration:4 delay:v8 options:0 animations:0.3 completion:0.0];
  }
}

uint64_t __49__WGCarouselListViewController_setHeaderVisible___block_invoke(uint64_t a1)
{
  v1 = 0.0;
  if (*(a1 + 40))
  {
    v1 = 1.0;
  }

  return [*(a1 + 32) setAlpha:v1];
}

- (void)setFooterVisible:(BOOL)a3
{
  if (self->_footerVisible != a3)
  {
    v7 = v3;
    v8 = v4;
    self->_footerVisible = a3;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __49__WGCarouselListViewController_setFooterVisible___block_invoke;
    v5[3] = &unk_279ED10D8;
    v5[4] = self;
    v6 = a3;
    [MEMORY[0x277D75D18] animateWithDuration:4 delay:v5 options:0 animations:0.3 completion:0.0];
  }
}

void __49__WGCarouselListViewController_setFooterVisible___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) footerView];
  v2 = [v5 contentView];
  v3 = v2;
  v4 = 0.0;
  if (*(a1 + 40))
  {
    v4 = 1.0;
  }

  [v2 setAlpha:v4];
}

- (void)setEditingIcons:(BOOL)a3
{
  v3 = a3;
  if ([(WGWidgetListViewController *)self isEditingIcons]!= a3)
  {
    if (v3)
    {
      [(WGCarouselListViewController *)self setVisuallyRevealedPriorToEditingIcons:[(WGCarouselListViewController *)self isVisuallyRevealed]];
    }

    else if (![(WGCarouselListViewController *)self visuallyRevealedPriorToEditingIcons])
    {
      v6 = [(WGWidgetListViewController *)self widgetListView];
      [v6 setContentOffset:1 animated:{*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)}];

      v5 = 0;
      goto LABEL_7;
    }

    v5 = 1;
LABEL_7:
    [(WGCarouselListViewController *)self setVisuallyRevealed:v5];
    v7.receiver = self;
    v7.super_class = WGCarouselListViewController;
    [(WGMajorListViewController *)&v7 setEditingIcons:v3];
  }
}

- (void)scrollViewDidScroll:(id)a3
{
  v4.receiver = self;
  v4.super_class = WGCarouselListViewController;
  [(WGMajorListViewController *)&v4 scrollViewDidScroll:a3];
  [(WGCarouselListViewController *)self updateCarouselAndRevealState];
}

- (void)updateCarouselAndRevealState
{
  [(WGCarouselListViewController *)self _updateCarouselEffect];
  if (self->_listSettings.useFavorites)
  {

    [(WGCarouselListViewController *)self _updateRevealState];
  }
}

- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5
{
  y = a4.y;
  x = a4.x;
  v43 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v40.receiver = self;
  v40.super_class = WGCarouselListViewController;
  [(WGWidgetListViewController *)&v40 scrollViewWillEndDragging:v9 withVelocity:a5 targetContentOffset:x, y];
  v10 = WGLogWidgets;
  if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v10;
    v12 = [(WGCarouselListViewController *)self isRevealed];
    v13 = [(WGCarouselListViewController *)self isVisuallyRevealed];
    *buf = 67109376;
    *&buf[4] = v12;
    *&buf[8] = 1024;
    *&buf[10] = v13;
    _os_log_impl(&dword_27425E000, v11, OS_LOG_TYPE_DEFAULT, "Carousel scrollview will end dragging isRevealed: %{BOOL}d isVisuallyRevealed: %{BOOL}d", buf, 0xEu);
  }

  if ([(WGCarouselListViewController *)self isRevealed]|| ![(WGCarouselListViewController *)self isVisuallyRevealed])
  {
    if ([(WGCarouselListViewController *)self isRevealed]&& ![(WGCarouselListViewController *)self isVisuallyRevealed])
    {
      [(WGCarouselListViewController *)self setRevealed:0];
    }
  }

  else
  {
    [(WGCarouselListViewController *)self setRevealed:1];
    if ([(WGCarouselListViewController *)self _hasEnoughContentToScroll])
    {
      [v9 contentOffset];
      v15 = [(WGCarouselListViewController *)self _indexForNextCellAfterContentOffset:v14];
      v16 = [(WGCarouselListViewController *)self _indexForNextCellAfterContentOffset:a5->y];
      v17 = [v9 panGestureRecognizer];
      [v17 velocityInView:v9];
      v19 = v18;

      v20 = fmin(fmax(v19 / -15000.0, 0.0), 1.0);
      v21 = vcvtad_u64_f64(pow(v20, 3.0) * (v16 - v15) + v15);
      v22 = [(UIStackView *)self->super.super._stackView arrangedSubviews];
      if ([v22 count] <= v21)
      {
        v23 = 0;
      }

      else
      {
        v23 = [v22 objectAtIndex:v21];
      }

      v24 = WGLogWidgets;
      if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134219008;
        *&buf[4] = v19;
        *&buf[12] = 2048;
        *&buf[14] = v20;
        *&buf[22] = 2048;
        *&buf[24] = v15;
        *v42 = 2048;
        *&v42[2] = v16;
        *&v42[10] = 2048;
        *&v42[12] = v21;
        _os_log_debug_impl(&dword_27425E000, v24, OS_LOG_TYPE_DEBUG, "gestureVelocity: %.2f normalizedVelocity: %.2f indexForCurrentContentOffset %lu indexForTargetContentOffset %lu, targetIndex %lu", buf, 0x34u);
        if (v23)
        {
LABEL_14:
          *v42 = 0u;
          memset(buf, 0, sizeof(buf));
          [v23 transform];
          v25 = *(MEMORY[0x277CBF2C0] + 16);
          v37 = *MEMORY[0x277CBF2C0];
          v38 = v25;
          v39 = *(MEMORY[0x277CBF2C0] + 32);
          [v23 setTransform:&v37];
          [v23 frame];
          v27 = v26;
          v29 = v28;
          [v9 contentSize];
          v31 = v30;
          [v9 bounds];
          if (v19 < 0.0 && v29 < v31 - v32)
          {
            [v9 contentOffset];
            a5->x = v33;
            a5->y = v34;
            [v9 contentOffset];
            v36 = smoothDecelerationAnimation(fmin(-v19 / (v29 - v35), 15.0));
            [v9 _setContentOffset:1 animated:3 animationCurve:0 animationAdjustsForContentOffsetDelta:v36 animation:{v27, v29}];
          }

          v37 = *buf;
          v38 = *&buf[16];
          v39 = *v42;
          [v23 setTransform:&v37];
        }
      }

      else if (v23)
      {
        goto LABEL_14;
      }
    }
  }
}

- (id)_newCatchupPropertyForCell:(id)a3
{
  v4 = objc_alloc_init(MEMORY[0x277D75D38]);
  v5 = [(WGCarouselListViewController *)self isRevealed];
  v6 = 1.0;
  if (v5)
  {
    v6 = 0.0;
  }

  [v4 setValue:v6];
  return v4;
}

- (void)_createPropertiesForStackViewUpdate
{
  v17 = *MEMORY[0x277D85DE8];
  v15.receiver = self;
  v15.super_class = WGCarouselListViewController;
  [(WGWidgetListViewController *)&v15 _createPropertiesForStackViewUpdate];
  if (self->_listSettings.useFavorites)
  {
    if ([(NSMutableDictionary *)self->_catchupProperties count])
    {
      v13 = 0u;
      v14 = 0u;
      v11 = 0u;
      v12 = 0u;
      v3 = [(NSMutableDictionary *)self->_catchupProperties allValues];
      v4 = [v3 countByEnumeratingWithState:&v11 objects:v16 count:16];
      if (v4)
      {
        v5 = v4;
        v6 = *v12;
        do
        {
          v7 = 0;
          do
          {
            if (*v12 != v6)
            {
              objc_enumerationMutation(v3);
            }

            [*(*(&v11 + 1) + 8 * v7++) invalidate];
          }

          while (v5 != v7);
          v5 = [v3 countByEnumeratingWithState:&v11 objects:v16 count:16];
        }

        while (v5);
      }

      catchupProperties = self->_catchupProperties;
      self->_catchupProperties = 0;
    }

    if (!self->_catchupProperties)
    {
      v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v10 = self->_catchupProperties;
      self->_catchupProperties = v9;
    }
  }
}

- (id)_animatablePropertiesForStackViewUpdate
{
  v3 = MEMORY[0x277CBEB18];
  v14.receiver = self;
  v14.super_class = WGCarouselListViewController;
  v4 = [(WGWidgetListViewController *)&v14 _animatablePropertiesForStackViewUpdate];
  v5 = [v3 arrayWithArray:v4];

  v6 = [(UIStackView *)self->super.super._stackView arrangedSubviews];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __71__WGCarouselListViewController__animatablePropertiesForStackViewUpdate__block_invoke;
  v12[3] = &unk_279ED1100;
  v12[4] = self;
  v7 = v5;
  v13 = v7;
  [v6 enumerateObjectsUsingBlock:v12];
  v8 = WGLogWidgets;
  if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEBUG))
  {
    [(WGCarouselListViewController *)self _animatablePropertiesForStackViewUpdate];
  }

  v9 = v13;
  v10 = v7;

  return v7;
}

void __71__WGCarouselListViewController__animatablePropertiesForStackViewUpdate__block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v3 = [*(a1 + 32) _identifierForCell:v7];
    v4 = *(a1 + 32);
    if (v4[1224] == 1)
    {
      v5 = [v4 _newCatchupPropertyForCell:v7];
      v6 = [*(a1 + 32) catchupProperties];
      [v6 setObject:v5 forKey:v3];

      [*(a1 + 40) addObject:v5];
    }
  }
}

- (void)_stackViewArrangedSubviewsTransformPresentationValueChanged
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = [(UIStackView *)self->super.super._stackView arrangedSubviews];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v28;
    p_responderFlags = &self->super.super.super.super._responderFlags;
    v8 = 0x279ED0000uLL;
    do
    {
      v9 = 0;
      v24 = v5;
      do
      {
        if (*v28 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v10 = *(*(&v27 + 1) + 8 * v9);
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        objc_opt_class();
        v12 = objc_opt_isKindOfClass();
        if (isKindOfClass & 1) != 0 || (v12)
        {
          if (p_responderFlags[304] == 1)
          {
            if ((isKindOfClass & 1) != 0 && ([v10 platterView], v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "listItem"), v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "widgetIdentifier"), v15 = v6, v16 = v8, v17 = p_responderFlags, v18 = v3, v19 = objc_claimAutoreleasedReturnValue(), v14, v13, LODWORD(v13) = -[WGWidgetDiscoveryController isElementWithIdentifierFavorited:](self->super.super._discoveryController, "isElementWithIdentifierFavorited:", v19), v19, v3 = v18, p_responderFlags = v17, v8 = v16, v6 = v15, v5 = v24, v13))
            {
              v20 = *(MEMORY[0x277CBF2C0] + 16);
              *&v26.a = *MEMORY[0x277CBF2C0];
              *&v26.c = v20;
              *&v26.tx = *(MEMORY[0x277CBF2C0] + 32);
              [v10 setTransform:&v26];
            }

            else
            {
              v21 = [(WGCarouselListViewController *)self _identifierForCell:v10];
              v22 = [(NSMutableDictionary *)self->_catchupProperties objectForKey:v21];
              memset(&v26, 0, sizeof(v26));
              [v22 presentationValue];
              CGAffineTransformMakeTranslation(&v26, 0.0, v23 * 160.0);
              v25 = v26;
              [v10 setTransform:&v25];
            }
          }

          [(WGWidgetListViewController *)self _resizeCell:v10];
        }

        ++v9;
      }

      while (v5 != v9);
      v5 = [v3 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v5);
  }

  [(UIStackView *)self->super.super._stackView layoutIfNeeded];
  [(WGCarouselListViewController *)self _updateCarouselEffect];
}

- (void)_updateCarouselEffect
{
  *buf = 0;
  *a2 = 0;
  _os_log_debug_impl(&dword_27425E000, log, OS_LOG_TYPE_DEBUG, "setting alpha to 1 because favorited || header", buf, 2u);
}

- (void)_updateRevealState
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = [(WGWidgetListViewController *)self widgetListView];
  [v3 contentOffset];
  [(WGCarouselListViewController *)self setRevealProgress:fmin(fmax(v4 / 60.0, 0.0), 1.0)];
  [v3 contentOffset];
  v6 = fmax(v5 / 60.0, -1.0);
  if (v6 >= 0.0)
  {
    v7 = -0.0;
  }

  else
  {
    v7 = -v6;
  }

  [(WGCarouselListViewController *)self setDismissProgress:v7];
  v8 = [(WGCarouselListViewController *)self isRevealed];
  visuallyRevealed = self->_visuallyRevealed;
  if (v8)
  {
    IsOne = 0;
  }

  else
  {
    IsOne = BSFloatIsOne();
  }

  v11 = BSFloatIsOne();
  v12 = [v3 isDecelerating];
  v13 = WGLogWidgets;
  if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEBUG))
  {
    v15[0] = 67110144;
    v15[1] = v8;
    v16 = 1024;
    v17 = visuallyRevealed;
    v18 = 1024;
    v19 = IsOne;
    v20 = 1024;
    v21 = v11;
    v22 = 1024;
    v23 = v12;
    _os_log_debug_impl(&dword_27425E000, v13, OS_LOG_TYPE_DEBUG, "revealed: %{BOOL}u, wasVisuallyRevealed: %{BOOL}u, nowRevealed, %{BOOL}u, nowDismissed: %{BOOL}u, isDecelerating: %{BOOL}u", v15, 0x20u);
  }

  v14 = 1;
  if (self->_listSettings.pinned && ((!v8 | v11) & 1) != 0 && (!(v12 & 1 | ((v8 & v11 & 1) == 0)) || (v8 & v12 & 1) == 0 && ((v12 & 1) != 0 || (IsOne & 1) == 0 && ((!visuallyRevealed | v11) & 1) != 0)))
  {
    v14 = [(WGWidgetListViewController *)self isEditingIcons];
  }

  [(WGCarouselListViewController *)self setVisuallyRevealed:v14];
}

- (double)easedOutValueForValue:(double)a3
{
  v4 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7C0]];
  *&v5 = a3;
  [v4 _solveForInput:v5];
  v7 = v6;

  return v7;
}

- (unint64_t)_indexOfFirstNonFavoritedWidgetInStackView
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__2;
  v16 = __Block_byref_object_dispose__2;
  v17 = 0;
  v3 = [(WGWidgetListViewController *)self visibleWidgetIdentifiers];
  v4 = [v3 copy];

  for (i = 0; i < [v4 count]; ++i)
  {
    v6 = [v4 objectAtIndex:i];
    if (![(WGWidgetDiscoveryController *)self->super.super._discoveryController isElementWithIdentifierFavorited:v6])
    {
      v7 = v13[5];
      v13[5] = v6;

      break;
    }
  }

  v8 = [(UIStackView *)self->super.super._stackView arrangedSubviews];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __74__WGCarouselListViewController__indexOfFirstNonFavoritedWidgetInStackView__block_invoke;
  v11[3] = &unk_279ED1170;
  v11[4] = &v12;
  v9 = [v8 indexOfObjectPassingTest:v11];

  _Block_object_dispose(&v12, 8);
  return v9;
}

uint64_t __74__WGCarouselListViewController__indexOfFirstNonFavoritedWidgetInStackView__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
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

  v8 = [v7 platterView];

  v9 = [v8 listItem];
  v10 = [v9 widgetIdentifier];
  v11 = [v10 isEqualToString:*(*(*(a1 + 32) + 8) + 40)];

  return v11;
}

- (unint64_t)_indexForNextCellAfterContentOffset:(double)a3
{
  v5 = [(UIStackView *)self->super.super._stackView arrangedSubviews];
  v6 = [v5 copy];

  v7 = [v6 count];
  v8 = [(WGCarouselListViewController *)self _indexOfFirstNonFavoritedWidgetInStackView];
  v9 = 0;
  if (v7 <= v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = v7;
  }

  while (1)
  {
    v11 = v8;
    if (v10 == v8)
    {
      break;
    }

    v12 = [v6 objectAtIndex:v8];

    [v12 frame];
    v8 = v11 + 1;
    v9 = v12;
    if (v13 >= a3)
    {
      goto LABEL_8;
    }
  }

  v12 = v9;
LABEL_8:

  return v11;
}

- (id)_identifierForCell:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    goto LABEL_13;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
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

    v11 = v8;

    v12 = [v11 platterView];

    v13 = [v12 listItem];
    v10 = [v13 widgetIdentifier];

    if (v10)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (v9 = objc_opt_class(), NSStringFromClass(v9), (v10 = objc_claimAutoreleasedReturnValue()) == 0))
  {
LABEL_12:
    [(WGCarouselListViewController *)v5 _identifierForCell:a2, self];
LABEL_13:
    v10 = 0;
  }

LABEL_14:

  return v10;
}

- (BOOL)_hasEnoughContentToScroll
{
  v3 = [(WGWidgetListViewController *)self widgetListView];
  [v3 contentSize];
  v5 = v4;
  v6 = [(WGMajorListViewController *)self containerView];
  [v6 bounds];
  v8 = v5 > v7;

  return v8;
}

- (void)_updateTeachingViewVisibilityAnimated:(BOOL)a3 withCompletion:(id)a4
{
  v5 = a4;
  if (self->_listSettings.useFavorites && [(WGCarouselListViewController *)self shouldShowTeachingView])
  {
    if (!self->_teachingView)
    {
      v6 = objc_alloc_init(WGWidgetPinningTeachingView);
      teachingView = self->_teachingView;
      self->_teachingView = v6;

      [(WGWidgetPinningTeachingView *)self->_teachingView setDelegate:self];
      v8 = [(UIStackView *)self->super.super._stackView arrangedSubviews];
      v9 = [(WGMajorListViewController *)self headerView];
      v10 = [v8 indexOfObject:v9];

      if (v10 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v11 = 0;
      }

      else
      {
        v11 = v10 + 1;
      }

      [(UIStackView *)self->super.super._stackView insertArrangedSubview:self->_teachingView atIndex:v11];
      if (v5)
      {
        v5[2](v5);
      }
    }
  }

  else if (self->_teachingView)
  {
    objc_initWeak(&location, self);
    v12 = MEMORY[0x277D75D18];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __85__WGCarouselListViewController__updateTeachingViewVisibilityAnimated_withCompletion___block_invoke;
    v16[3] = &unk_279ED0AB8;
    objc_copyWeak(&v17, &location);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __85__WGCarouselListViewController__updateTeachingViewVisibilityAnimated_withCompletion___block_invoke_2;
    v13[3] = &unk_279ED1198;
    objc_copyWeak(&v15, &location);
    v14 = v5;
    [v12 animateWithDuration:0 delay:v16 usingSpringWithDamping:v13 initialSpringVelocity:0.5 options:0.15 animations:1.0 completion:0.0];

    objc_destroyWeak(&v15);
    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }
}

void __85__WGCarouselListViewController__updateTeachingViewVisibilityAnimated_withCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained[150] setHidden:1];
}

void __85__WGCarouselListViewController__updateTeachingViewVisibilityAnimated_withCompletion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained[150] removeFromSuperview];
  v2 = WeakRetained[150];
  WeakRetained[150] = 0;

  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))();
  }
}

- (CGRect)_cellFrameInScrollBoundsForCell:(id)a3
{
  v4 = a3;
  v5 = [(WGWidgetListViewController *)self widgetListView];
  v6 = [(UIStackView *)self->super.super._stackView superview];

  if (v6 == v5)
  {
    [v4 frame];
    v19 = v18;
    [v5 contentOffset];
    v17 = v19 - v20;
  }

  else
  {
    [v4 bounds];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v15 = [(WGMajorListViewController *)self containerView];
    [v4 convertRect:v15 toView:{v8, v10, v12, v14}];
    v17 = v16;
  }

  [v4 frame];
  v22 = v21;
  v24 = v23;

  v25 = 0.0;
  v26 = v17;
  v27 = v22;
  v28 = v24;
  result.size.height = v28;
  result.size.width = v27;
  result.origin.y = v26;
  result.origin.x = v25;
  return result;
}

- (void)_styleFullyInvisibleTopCell:(id)a3
{
  v3 = a3;
  v4 = [v3 platterView];
  [v4 setClippingEdge:1];

  v5 = [v3 contentView];
  v6 = *(MEMORY[0x277CBF2C0] + 16);
  v11[0] = *MEMORY[0x277CBF2C0];
  v11[1] = v6;
  v11[2] = *(MEMORY[0x277CBF2C0] + 32);
  [v5 setTransform:v11];

  v7 = [v3 contentView];
  v8 = [v7 layer];
  [v8 setAnchorPoint:{0.5, 0.5}];

  v9 = [v3 contentView];
  [v3 bounds];
  [v9 setFrame:?];

  [v3 setTopMarginForLayout:0.0];
  v10 = [v3 contentView];

  [v10 setAlpha:0.0];
}

- (void)_styleCroppedAndScaledCellForTopEdge:(id)a3 withCellFrameInScrollViewBounds:(CGRect)a4 thresholds:(id)a5
{
  rect = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v10 = a5;
  v11 = a3;
  v12 = [v11 platterView];
  [v12 setClippingEdge:1];

  v13 = [v11 contentView];
  v14 = *(MEMORY[0x277CBF2C0] + 16);
  *&v30.a = *MEMORY[0x277CBF2C0];
  *&v30.c = v14;
  *&v30.tx = *(MEMORY[0x277CBF2C0] + 32);
  [v13 setTransform:&v30];
  v15 = [v13 layer];
  [v15 setAnchorPoint:{0.5, 0.0}];

  v16 = [(WGWidgetListViewController *)self widgetListView];
  [v11 frame];
  v18 = v17;
  v19 = v10[1];
  [v16 contentInset];
  v21 = v20 + 0.0;
  v23 = v22 - y;
  [v13 setBounds:{0.0, -y, v18, v19}];
  [v13 setOrigin:{v21, v23}];
  [v11 setTopMarginForLayout:v23];

  v31.origin.x = x;
  v31.origin.y = y;
  v31.size.width = width;
  v31.size.height = rect;
  MaxY = CGRectGetMaxY(v31);
  v25 = v10[2];
  v26 = v10[3];
  v27 = MaxY - v25;

  *&v30.a = 0u;
  v30.c = 1.0;
  LOBYTE(v30.b) = 1;
  *&v30.d = 1;
  BSIntervalMap();
  CGAffineTransformMakeScale(&v30, v28, v28);
  [v13 setTransform:&v30];
  [(WGCarouselListViewController *)self easedOutValueForValue:1.0 - v27 / (v26 - v25)];
  [v13 setAlpha:?];
}

- (void)_styleCroppedCellForTopEdge:(id)a3 withCellFrameInScrollViewBounds:(CGRect)a4 intersectionRect:(CGRect)a5 thresholds:(id)a6
{
  height = a5.size.height;
  width = a5.size.width;
  y = a4.origin.y;
  v10 = *(a6 + 1);
  v11 = a3;
  v12 = [v11 platterView];
  [v12 setClippingEdge:1];

  v13 = [v11 contentView];
  v14 = *(MEMORY[0x277CBF2C0] + 16);
  v24[0] = *MEMORY[0x277CBF2C0];
  v24[1] = v14;
  v24[2] = *(MEMORY[0x277CBF2C0] + 32);
  [v13 setTransform:v24];

  v15 = [v11 contentView];
  v16 = [v15 layer];
  [v16 setAnchorPoint:{0.5, 0.5}];

  v17 = [(WGWidgetListViewController *)self widgetListView];
  [v17 contentInset];
  v19 = v18 + 0.0;
  v21 = v20 - y;
  if (height < v10)
  {
    height = v10;
  }

  v22 = [v11 contentView];
  [v22 setFrame:{v19, v21, width, height}];

  [v11 setTopMarginForLayout:v21];
  v23 = [v11 contentView];

  [v23 setAlpha:1.0];
}

- (void)_styleFullyVisibleCell:(id)a3
{
  v3 = a3;
  v4 = [v3 platterView];
  [v4 setClippingEdge:4];

  v5 = [v3 contentView];
  v6 = *(MEMORY[0x277CBF2C0] + 16);
  v11[0] = *MEMORY[0x277CBF2C0];
  v11[1] = v6;
  v11[2] = *(MEMORY[0x277CBF2C0] + 32);
  [v5 setTransform:v11];

  v7 = [v3 contentView];
  v8 = [v7 layer];
  [v8 setAnchorPoint:{0.5, 0.5}];

  v9 = [v3 contentView];
  [v3 bounds];
  [v9 setFrame:?];

  [v3 setTopMarginForLayout:0.0];
  v10 = [v3 contentView];

  [v10 setAlpha:1.0];
}

- (void)_styleCroppedCellForBottomEdge:(id)a3 intersectionRect:(CGRect)a4 thresholds:(id)a5
{
  height = a4.size.height;
  width = a4.size.width;
  v7 = *(a5 + 1);
  v8 = a3;
  v9 = [v8 platterView];
  [v9 setClippingEdge:4];

  v10 = [v8 contentView];
  v11 = *(MEMORY[0x277CBF2C0] + 16);
  v16[0] = *MEMORY[0x277CBF2C0];
  v16[1] = v11;
  v16[2] = *(MEMORY[0x277CBF2C0] + 32);
  [v10 setTransform:v16];

  v12 = [v8 contentView];
  v13 = [v12 layer];
  [v13 setAnchorPoint:{0.5, 0.5}];

  if (height < v7)
  {
    height = v7;
  }

  v14 = [v8 contentView];
  [v14 setFrame:{0.0, 0.0, width, height}];

  [v8 setTopMarginForLayout:0.0];
  v15 = [v8 contentView];

  [v15 setAlpha:1.0];
}

- (void)_styleCroppedAndScaledCellForBottomEdge:(id)a3 withCellFrameInScrollViewBounds:(CGRect)a4 intersectionRect:(CGRect)a5 thresholds:(id)a6
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v12 = *(a6 + 1);
  v13 = a6;
  v14 = a3;
  v15 = [v14 platterView];
  [v15 setClippingEdge:4];

  v16 = [v14 contentView];
  v17 = *(MEMORY[0x277CBF2C0] + 16);
  *&v29.a = *MEMORY[0x277CBF2C0];
  *&v29.c = v17;
  *&v29.tx = *(MEMORY[0x277CBF2C0] + 32);
  [v16 setTransform:&v29];
  v18 = [v16 layer];
  [v18 setAnchorPoint:{0.5, 1.0}];

  v30.origin.x = x;
  v30.origin.y = y;
  v30.size.width = width;
  v30.size.height = height;
  MinY = CGRectGetMinY(v30);
  v20 = v13[5];
  v21 = v13[6];
  v22 = MinY - v20;

  v23 = fmin(fmax(v22 / (v21 - v20), 0.0), 1.0);
  v24 = [(WGMajorListViewController *)self containerView];
  [v24 bounds];
  v26 = v25 - v12 + -10.0 - y + v23 * 10.0;
  [v14 frame];
  [v16 setBounds:{0.0, v26}];
  [v16 setOrigin:{0.0, v26}];
  [v14 setTopMarginForLayout:v26];

  *&v29.a = 0u;
  v29.c = 1.0;
  LOBYTE(v29.b) = 1;
  *&v29.d = 1;
  BSIntervalMap();
  CGAffineTransformMakeScale(&v29, v27, v27);
  [v16 setTransform:{&v29, 0x3FECCCCCCCCCCCCDLL, 1, 0x3FF0000000000000, 1}];
  [(WGCarouselListViewController *)self easedOutValueForValue:1.0 - v23];
  [v16 setAlpha:v28 * 0.3 + 0.7];
}

- (void)_styleDisapearingCellForBottomEdge:(id)a3 withCellFrameInScrollViewBounds:(CGRect)a4 previousCellFrameInContainerView:(CGRect)a5 thresholds:(id)a6
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v10 = a4.origin.y;
  v13 = *(a6 + 1);
  v14 = a6;
  v15 = a3;
  v16 = [v15 platterView];
  [v16 setClippingEdge:4];

  v17 = [v15 contentView];
  v18 = *(MEMORY[0x277CBF2C0] + 16);
  *&v28.a = *MEMORY[0x277CBF2C0];
  *&v28.c = v18;
  *&v28.tx = *(MEMORY[0x277CBF2C0] + 32);
  [v17 setTransform:&v28];
  v19 = [v17 layer];
  [v19 setAnchorPoint:{0.5, 1.0}];

  v29.origin.x = x;
  v29.origin.y = y;
  v29.size.width = width;
  v29.size.height = height;
  MinY = CGRectGetMinY(v29);
  v21 = v14[7];
  v22 = v14[8];
  v23 = MinY - v21;

  v24 = fmin(fmax(v23 / (v22 - v21), 0.0), 1.0);
  v25 = [(WGMajorListViewController *)self containerView];
  [v25 bounds];
  v27 = v26 - v13 - v10 + v24 * 6.0;
  [v15 frame];
  [v17 setBounds:{0.0, v27}];
  [v17 setOrigin:{0.0, v27}];
  [v15 setTopMarginForLayout:v27];

  CGAffineTransformMakeScale(&v28, 0.9, 0.9);
  [v17 setTransform:&v28];
  [v17 setAlpha:{fmin(fmax((v24 * -2.0 + 1.0) * 0.7, 0.0), 1.0)}];
}

- (void)_styleFullyInvisibleBottomCell:(id)a3 withCellFrameInScrollViewBounds:(CGRect)a4 thresholds:(id)a5
{
  y = a4.origin.y;
  v7 = *(a5 + 1);
  v8 = a3;
  v9 = [(WGMajorListViewController *)self containerView];
  [v9 bounds];
  v10 = [v8 platterView];
  [v10 setClippingEdge:4];

  v11 = [v8 contentView];
  v12 = *(MEMORY[0x277CBF2C0] + 16);
  *&v16.a = *MEMORY[0x277CBF2C0];
  *&v16.c = v12;
  *&v16.tx = *(MEMORY[0x277CBF2C0] + 32);
  [v11 setTransform:&v16];
  v13 = [v11 layer];
  [v13 setAnchorPoint:{0.5, 1.0}];

  [v9 bounds];
  v15 = v14 - v7 - y;
  [v8 frame];
  [v11 setBounds:{0.0, v15}];
  [v11 setOrigin:{0.0, v15}];
  [v8 setTopMarginForLayout:v15];

  CGAffineTransformMakeScale(&v16, 0.9, 0.9);
  [v11 setTransform:&v16];
  [v11 setAlpha:0.0];
}

- (void)_styleFooterView:(id)a3 withCellFrameInScrollViewBounds:(CGRect)a4 intersectionRect:(CGRect)a5 containerHeight:(double)a6
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v10 = a3;
  v11 = [v10 contentView];
  v26.origin.x = x;
  v26.origin.y = y;
  v26.size.width = width;
  v26.size.height = height;
  v12 = (CGRectGetMaxY(v26) - (a6 + 10.0)) / (height + a6 + 10.0 - (a6 + 10.0)) + 0.0;
  v13 = *(MEMORY[0x277CBF2C0] + 16);
  *&v25.a = *MEMORY[0x277CBF2C0];
  *&v25.c = v13;
  *&v25.tx = *(MEMORY[0x277CBF2C0] + 32);
  [v11 setTransform:&v25];
  v14 = [v11 layer];
  [v14 setAnchorPoint:{0.5, 0.5}];

  [v10 bounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  [v11 setFrame:{v16, v18, v20, v22}];
  v23 = *(MEMORY[0x277CF0B28] + 16);
  *&v25.a = *MEMORY[0x277CF0B28];
  *&v25.c = v23;
  BSUIConstrainValueToIntervalWithRubberBand();
  CGAffineTransformMakeScale(&v25, v24, v24);
  [v11 setTransform:&v25];
  [v11 setAlpha:{fmin(fmax(1.0 - v12, 0.0), 1.0)}];
}

- (void)_styleHeaderView:(id)a3 withCellFrameInScrollViewBounds:(CGRect)a4 intersectionRect:(CGRect)a5
{
  CGRectGetMinY(a4);
  *&v10.a = 0u;
  v10.c = 1.0;
  LOBYTE(v10.b) = 1;
  *&v10.d = 1;
  BSUIConstrainValueToIntervalWithRubberBand();
  v7 = fmin(fmax(v6, 0.75), 1.25);
  v8 = [(WGMajorListViewController *)self headerView:*&v10.a];
  v9 = [v8 contentView];
  CGAffineTransformMakeScale(&v10, v7, v7);
  [v9 setTransform:&v10];
}

- (void)_styleTeachingView:(id)a3 withCellFrameInScrollViewBounds:(CGRect)a4 intersectionRect:(CGRect)a5
{
  height = a4.size.height;
  rect = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = a3;
  v10 = [v9 contentView];
  v11 = *(MEMORY[0x277CBF2C0] + 16);
  *&v25.a = *MEMORY[0x277CBF2C0];
  *&v25.c = v11;
  *&v25.tx = *(MEMORY[0x277CBF2C0] + 32);
  [v10 setTransform:&v25];
  v12 = [v10 layer];
  [v12 setAnchorPoint:{0.5, 0.5}];

  v13 = [(WGWidgetListViewController *)self widgetListView];
  [v9 frame];

  [v13 contentInset];
  v15 = v14;
  v17 = v16;
  IsZero = BSFloatIsZero();
  v19 = 0.0;
  if ((IsZero & 1) == 0)
  {
    v26.origin.x = x;
    v26.origin.y = y;
    v26.size.width = rect;
    v26.size.height = height;
    v19 = (CGRectGetMaxY(v26) - v15) / height;
  }

  *&v25.a = 0u;
  v20 = fmin(fmax(v19, 0.0), 1.0);
  v25.c = 1.0;
  LOBYTE(v25.b) = 1;
  *&v25.d = 1;
  BSIntervalMap();
  if (IsZero)
  {
    v22 = 1.0;
  }

  else
  {
    v22 = v21;
  }

  if (v22 < 1.0)
  {
    v23 = [v10 layer];
    [v23 setAnchorPoint:{0.5, 0.0}];
  }

  [v10 setBounds:0.0];
  [v10 setOrigin:{v17 + 0.0, fmax(v15 - y, 0.0)}];
  CGAffineTransformMakeScale(&v25, v22, v22);
  [v10 setTransform:&v25];
  [(WGCarouselListViewController *)self easedOutValueForValue:v20];
  [v10 setAlpha:?];
}

- (id)_thresholdsForCell:(id)a3
{
  v4 = a3;
  v5 = [(WGCarouselListViewController *)self _identifierForCell:v4];
  cachedThresholds = self->_cachedThresholds;
  if (!cachedThresholds)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v8 = self->_cachedThresholds;
    self->_cachedThresholds = v7;

    cachedThresholds = self->_cachedThresholds;
  }

  v9 = [(NSMutableDictionary *)cachedThresholds objectForKey:v5];
  if (!v9)
  {
    v9 = objc_alloc_init(WGCarouselCellThresholds);
    v10 = [(WGMajorListViewController *)self containerView];
    [v10 bounds];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17 + -10.0;
    v19 = [(WGWidgetListViewController *)self widgetListView];
    [v19 contentInset];
    v21 = v20;

    v22 = [v4 platterView];
    v28.origin.x = v12;
    v28.origin.y = v14;
    v28.size.width = v16;
    v28.size.height = v18;
    [v22 minimumSizeThatFits:{CGRectGetWidth(v28), 0.0}];
    v9->_headerHeight = v23;

    v9->_threshold1 = v21 + v9->_headerHeight;
    [(UIStackView *)self->super.super._stackView spacing];
    v9->_threshold2 = v21 - v24;
    v9->_threshold3 = v18;
    v25 = v18 - v9->_headerHeight;
    v9->_threshold4 = v25;
    v9->_threshold5 = v18;
    v9->_threshold6 = v25;
    v9->_threshold7 = v18;
    [(NSMutableDictionary *)self->_cachedThresholds setObject:v9 forKey:v5];
  }

  return v9;
}

- (void)widgetPinningTeachingViewDidSelectYes:(id)a3
{
  [(WGWidgetDiscoveryController *)self->super.super._discoveryController noteWidgetsPinningViewControllerDidDismiss:1];
  v4 = dispatch_time(0, 500000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__WGCarouselListViewController_widgetPinningTeachingViewDidSelectYes___block_invoke;
  block[3] = &unk_279ED0948;
  block[4] = self;
  dispatch_after(v4, MEMORY[0x277D85CD0], block);
}

uint64_t __70__WGCarouselListViewController_widgetPinningTeachingViewDidSelectYes___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __70__WGCarouselListViewController_widgetPinningTeachingViewDidSelectYes___block_invoke_2;
  v3[3] = &unk_279ED0948;
  v3[4] = v1;
  return [v1 _updateTeachingViewVisibilityAnimated:1 withCompletion:v3];
}

- (void)widgetPinningTeachingViewDidSelectNo:(id)a3
{
  [(WGWidgetDiscoveryController *)self->super.super._discoveryController noteWidgetsPinningViewControllerDidDismiss:0];

  [(WGCarouselListViewController *)self _updateTeachingViewVisibilityAnimated:1 withCompletion:0];
}

- (WGWidgetListSettings)listSettings
{
  p_listSettings = &self->_listSettings;
  carouselEdges = self->_listSettings.carouselEdges;
  v4 = *&p_listSettings->useFavorites;
  result.useFavorites = v4;
  result.carouselIgnoresHeader = BYTE1(v4);
  result.pinned = BYTE2(v4);
  result.carouselEdges = carouselEdges;
  return result;
}

- (void)_animatablePropertiesForStackViewUpdate
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 1184);
  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&dword_27425E000, a2, OS_LOG_TYPE_DEBUG, "Created catchup properties: %@", &v3, 0xCu);
}

- (void)_identifierForCell:(uint64_t)a3 .cold.1(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v6 = [a1 recursiveDescription];
  [v7 handleFailureInMethod:a2 object:a3 file:@"WGCarouselListViewController.m" lineNumber:802 description:{@"_identifierForCell: no identifier for cell with view hierarchy: %@", v6}];
}

@end