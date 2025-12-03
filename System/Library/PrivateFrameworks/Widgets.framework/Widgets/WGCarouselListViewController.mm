@interface WGCarouselListViewController
- (BOOL)_hasEnoughContentToScroll;
- (BOOL)headerVisible;
- (BOOL)shouldAnimateFirstTwoViewsAsOne;
- (CGRect)_cellFrameInScrollBoundsForCell:(id)cell;
- (NSMutableDictionary)catchupTimers;
- (WGCarouselListViewController)initWithWidgetDiscoveryController:(id)controller listSettings:(WGWidgetListSettings)settings;
- (WGWidgetListSettings)listSettings;
- (double)easedOutValueForValue:(double)value;
- (id)_animatablePropertiesForStackViewUpdate;
- (id)_identifierForCell:(id)cell;
- (id)_newCatchupPropertyForCell:(id)cell;
- (id)_thresholdsForCell:(id)cell;
- (id)extraViews;
- (unint64_t)_indexForNextCellAfterContentOffset:(double)offset;
- (unint64_t)_indexOfFirstNonFavoritedWidgetInStackView;
- (unint64_t)_insertionIndexofListItem:(id)item intoWidgetViews:(id)views withOrderedIdentifiers:(id)identifiers;
- (void)_animatablePropertiesForStackViewUpdate;
- (void)_createPropertiesForStackViewUpdate;
- (void)_repopulateStackViewWithWidgetIdentifiers:(id)identifiers;
- (void)_stackViewArrangedSubviewsTransformPresentationValueChanged;
- (void)_styleCroppedAndScaledCellForBottomEdge:(id)edge withCellFrameInScrollViewBounds:(CGRect)bounds intersectionRect:(CGRect)rect thresholds:(id)thresholds;
- (void)_styleCroppedAndScaledCellForTopEdge:(id)edge withCellFrameInScrollViewBounds:(CGRect)bounds thresholds:(id)thresholds;
- (void)_styleCroppedCellForBottomEdge:(id)edge intersectionRect:(CGRect)rect thresholds:(id)thresholds;
- (void)_styleCroppedCellForTopEdge:(id)edge withCellFrameInScrollViewBounds:(CGRect)bounds intersectionRect:(CGRect)rect thresholds:(id)thresholds;
- (void)_styleDisapearingCellForBottomEdge:(id)edge withCellFrameInScrollViewBounds:(CGRect)bounds previousCellFrameInContainerView:(CGRect)view thresholds:(id)thresholds;
- (void)_styleFooterView:(id)view withCellFrameInScrollViewBounds:(CGRect)bounds intersectionRect:(CGRect)rect containerHeight:(double)height;
- (void)_styleFullyInvisibleBottomCell:(id)cell withCellFrameInScrollViewBounds:(CGRect)bounds thresholds:(id)thresholds;
- (void)_styleFullyInvisibleTopCell:(id)cell;
- (void)_styleFullyVisibleCell:(id)cell;
- (void)_styleHeaderView:(id)view withCellFrameInScrollViewBounds:(CGRect)bounds intersectionRect:(CGRect)rect;
- (void)_styleTeachingView:(id)view withCellFrameInScrollViewBounds:(CGRect)bounds intersectionRect:(CGRect)rect;
- (void)_updateCarouselEffect;
- (void)_updateRevealState;
- (void)_updateScrollViewContentSize;
- (void)_updateTeachingViewVisibilityAnimated:(BOOL)animated withCompletion:(id)completion;
- (void)dealloc;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
- (void)setContainerView:(id)view;
- (void)setEditingIcons:(BOOL)icons;
- (void)setFooterVisible:(BOOL)visible;
- (void)setHeaderVisible:(BOOL)visible;
- (void)setListSettings:(WGWidgetListSettings)settings;
- (void)setRevealed:(BOOL)revealed;
- (void)setVisuallyRevealed:(BOOL)revealed withSlowAnimation:(BOOL)animation;
- (void)updateCarouselAndRevealState;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)widgetPinningTeachingViewDidSelectNo:(id)no;
- (void)widgetPinningTeachingViewDidSelectYes:(id)yes;
@end

@implementation WGCarouselListViewController

- (WGCarouselListViewController)initWithWidgetDiscoveryController:(id)controller listSettings:(WGWidgetListSettings)settings
{
  v4 = *&settings.useFavorites;
  carouselEdges = settings.carouselEdges;
  controllerCopy = controller;
  v20.receiver = self;
  v20.super_class = WGCarouselListViewController;
  v8 = [(WGWidgetListViewController *)&v20 initWithWidgetDiscoveryController:controllerCopy];
  v9 = v8;
  if (v8)
  {
    v8->_listSettings.carouselEdges = carouselEdges;
    *&v8->_listSettings.useFavorites = v4;
    objc_initWeak(&location, v8);
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    mainQueue = [MEMORY[0x277CCABD8] mainQueue];
    v12 = *MEMORY[0x277D76810];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __79__WGCarouselListViewController_initWithWidgetDiscoveryController_listSettings___block_invoke;
    v17[3] = &unk_279ED1060;
    objc_copyWeak(&v18, &location);
    v13 = [defaultCenter addObserverForName:v12 object:0 queue:mainQueue usingBlock:v17];
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
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self->_sizeChangeObserver];

  v4.receiver = self;
  v4.super_class = WGCarouselListViewController;
  [(WGWidgetListViewController *)&v4 dealloc];
}

- (void)_repopulateStackViewWithWidgetIdentifiers:(id)identifiers
{
  v6.receiver = self;
  v6.super_class = WGCarouselListViewController;
  [(WGMajorListViewController *)&v6 _repopulateStackViewWithWidgetIdentifiers:identifiers];
  arrangedSubviews = [(UIStackView *)self->super.super._stackView arrangedSubviews];
  v5 = [arrangedSubviews count];

  if (v5)
  {
    [(WGCarouselListViewController *)self _updateTeachingViewVisibilityAnimated:0 withCompletion:0];
  }

  [(WGWidgetListViewController *)self _didUpdateStackViewArrangedSubviews];
}

- (unint64_t)_insertionIndexofListItem:(id)item intoWidgetViews:(id)views withOrderedIdentifiers:(id)identifiers
{
  v11.receiver = self;
  v11.super_class = WGCarouselListViewController;
  v6 = [(WGMajorListViewController *)&v11 _insertionIndexofListItem:item intoWidgetViews:views withOrderedIdentifiers:identifiers];
  arrangedSubviews = [(UIStackView *)self->super.super._stackView arrangedSubviews];
  v8 = arrangedSubviews;
  if (self->_teachingView)
  {
    if ([arrangedSubviews containsObject:?])
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
  extraViews = [(WGMajorListViewController *)&v12 extraViews];
  teachingView = self->_teachingView;
  if (teachingView && (-[WGWidgetPinningTeachingView contentView](teachingView, "contentView"), v5 = objc_claimAutoreleasedReturnValue(), [v5 alpha], IsZero = BSFloatIsZero(), v5, (IsZero & 1) == 0))
  {
    v7 = [extraViews mutableCopy];
    v10 = 0;
    if ([extraViews count])
    {
      firstObject = [v7 firstObject];
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
    v7 = extraViews;
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
      extraViews = [(WGCarouselListViewController *)self extraViews];
      firstObject = [extraViews firstObject];
      if (teachingView == firstObject)
      {
        contentView = [(WGWidgetPinningTeachingView *)self->_teachingView contentView];
        [contentView alpha];
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
  alwaysShowsFavoriteWidgets = 0;
  if (self->_listSettings.useFavorites)
  {
    alwaysShowsFavoriteWidgets = [(WGWidgetDiscoveryController *)self->super.super._discoveryController areWidgetsPinned]|| [(WGWidgetDiscoveryController *)self->super.super._discoveryController alwaysShowsFavoriteWidgets];
  }

  [(WGCarouselListViewController *)self setRevealed:alwaysShowsFavoriteWidgets];
  [(WGCarouselListViewController *)self setRevealed:alwaysShowsFavoriteWidgets ^ 1];
  [(WGCarouselListViewController *)self setVisuallyRevealed:alwaysShowsFavoriteWidgets];
  [(WGCarouselListViewController *)self setVisuallyRevealed:alwaysShowsFavoriteWidgets ^ 1];
  if ((self->_listSettings.carouselEdges & 4) != 0)
  {
    footerView = [(WGMajorListViewController *)self footerView];
    [footerView setShouldSizeContent:0];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = WGCarouselListViewController;
  [(WGMajorListViewController *)&v4 viewWillAppear:appear];
  [(WGCarouselListViewController *)self setCachedThresholds:0];
  [(WGCarouselListViewController *)self updateCarouselAndRevealState];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = WGCarouselListViewController;
  [(WGMajorListViewController *)&v4 viewDidAppear:appear];
  [(WGWidgetPinningTeachingView *)self->_teachingView startAnimating];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = WGCarouselListViewController;
  [(WGMajorListViewController *)&v4 viewDidDisappear:disappear];
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

- (void)setListSettings:(WGWidgetListSettings)settings
{
  v3 = *&settings.useFavorites;
  carouselEdges = settings.carouselEdges;
  p_listSettings = &self->_listSettings;
  if (!WGWidgetListSettingsEqualsToWidgetListSettings(self->_listSettings.carouselEdges, *&self->_listSettings.useFavorites, settings.carouselEdges, *&settings.useFavorites))
  {
    p_listSettings->carouselEdges = carouselEdges;
    *&p_listSettings->useFavorites = v3;

    [(WGCarouselListViewController *)self updateCarouselAndRevealState];
  }
}

- (void)setRevealed:(BOOL)revealed
{
  if (self->_revealed != revealed)
  {
    revealedCopy = revealed;
    v5 = WGLogWidgets;
    if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEBUG))
    {
      [(WGCarouselListViewController *)revealedCopy setRevealed:v5, v6, v7, v8, v9, v10, v11];
    }

    self->_revealed = revealedCopy;
    widgetListView = [(WGWidgetListViewController *)self widgetListView];
    [widgetListView bounds];
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

- (void)setVisuallyRevealed:(BOOL)revealed withSlowAnimation:(BOOL)animation
{
  v50 = *MEMORY[0x277D85DE8];
  if (self->_visuallyRevealed != revealed)
  {
    self->_visuallyRevealed = revealed;
    v5 = WGLogWidgets;
    if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEBUG))
    {
      [(WGCarouselListViewController *)&self->_visuallyRevealed setVisuallyRevealed:v5 withSlowAnimation:v6, v7, v8, v9, v10, v11];
    }

    _indexOfFirstNonFavoritedWidgetInStackView = [(WGCarouselListViewController *)self _indexOfFirstNonFavoritedWidgetInStackView];
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
            catchupTimers = [(WGCarouselListViewController *)self catchupTimers];
            v21 = [catchupTimers objectForKey:v19];

            [v21 invalidate];
            catchupTimers2 = [(WGCarouselListViewController *)self catchupTimers];
            [catchupTimers2 removeObjectForKey:v19];

            arrangedSubviews = [(UIStackView *)self->super.super._stackView arrangedSubviews];
            v24 = [arrangedSubviews indexOfObject:v16];

            v25 = (v24 - _indexOfFirstNonFavoritedWidgetInStackView);
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
            animationCopy = animation;
            v42[2] = self;
            v43 = v19;
            v31 = v19;
            v32 = [v28 timerWithTimeInterval:0 repeats:v41 block:v30];
            catchupTimers3 = [(WGCarouselListViewController *)self catchupTimers];
            [catchupTimers3 setObject:v32 forKey:v31];

            mainRunLoop = [MEMORY[0x277CBEB88] mainRunLoop];
            [mainRunLoop addTimer:v32 forMode:v36];
          }
        }

        v13 = [obj countByEnumeratingWithState:&v45 objects:v49 count:16];
      }

      while (v13);
    }

    [(WGCarouselListViewController *)self _updateScrollViewContentSize];
  }

  widgetListView = [(WGWidgetListViewController *)self widgetListView];
  if (([widgetListView isTracking] & 1) == 0)
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
    widgetListView = [(WGWidgetListViewController *)self widgetListView];
    [widgetListView _setAutomaticContentOffsetAdjustmentEnabled:0];
    visuallyRevealed = self->_visuallyRevealed;
    stackViewBottomConstraint = [(WGWidgetListViewController *)self stackViewBottomConstraint];
    v5 = stackViewBottomConstraint;
    if (visuallyRevealed)
    {
      [stackViewBottomConstraint setActive:1];

      [(UIStackView *)self->super.super._stackView layoutIfNeeded];
    }

    else
    {
      [stackViewBottomConstraint setActive:0];

      [widgetListView frame];
      [widgetListView setContentSize:{v6, v7}];
    }
  }

  else
  {
    widgetListView = [(WGWidgetListViewController *)self stackViewBottomConstraint];
    [widgetListView setActive:1];
  }
}

- (void)setContainerView:(id)view
{
  viewCopy = view;
  containerView = [(WGMajorListViewController *)self containerView];
  v6.receiver = self;
  v6.super_class = WGCarouselListViewController;
  [(WGMajorListViewController *)&v6 setContainerView:viewCopy];

  if (containerView != viewCopy)
  {
    [(WGCarouselListViewController *)self setCachedThresholds:0];
  }
}

- (BOOL)headerVisible
{
  headerView = [(WGMajorListViewController *)self headerView];
  contentView = [headerView contentView];
  [contentView alpha];
  IsZero = BSFloatIsZero();

  return IsZero ^ 1;
}

- (void)setHeaderVisible:(BOOL)visible
{
  visibleCopy = visible;
  headerView = [(WGMajorListViewController *)self headerView];
  contentView = [headerView contentView];

  LODWORD(headerView) = [(WGCarouselListViewController *)self headerVisible];
  v11.receiver = self;
  v11.super_class = WGCarouselListViewController;
  [(WGMajorListViewController *)&v11 setHeaderVisible:visibleCopy];
  if (headerView != visibleCopy)
  {
    v7 = MEMORY[0x277D75D18];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __49__WGCarouselListViewController_setHeaderVisible___block_invoke;
    v8[3] = &unk_279ED10D8;
    v9 = contentView;
    v10 = visibleCopy;
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

- (void)setFooterVisible:(BOOL)visible
{
  if (self->_footerVisible != visible)
  {
    v7 = v3;
    v8 = v4;
    self->_footerVisible = visible;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __49__WGCarouselListViewController_setFooterVisible___block_invoke;
    v5[3] = &unk_279ED10D8;
    v5[4] = self;
    visibleCopy = visible;
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

- (void)setEditingIcons:(BOOL)icons
{
  iconsCopy = icons;
  if ([(WGWidgetListViewController *)self isEditingIcons]!= icons)
  {
    if (iconsCopy)
    {
      [(WGCarouselListViewController *)self setVisuallyRevealedPriorToEditingIcons:[(WGCarouselListViewController *)self isVisuallyRevealed]];
    }

    else if (![(WGCarouselListViewController *)self visuallyRevealedPriorToEditingIcons])
    {
      widgetListView = [(WGWidgetListViewController *)self widgetListView];
      [widgetListView setContentOffset:1 animated:{*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)}];

      v5 = 0;
      goto LABEL_7;
    }

    v5 = 1;
LABEL_7:
    [(WGCarouselListViewController *)self setVisuallyRevealed:v5];
    v7.receiver = self;
    v7.super_class = WGCarouselListViewController;
    [(WGMajorListViewController *)&v7 setEditingIcons:iconsCopy];
  }
}

- (void)scrollViewDidScroll:(id)scroll
{
  v4.receiver = self;
  v4.super_class = WGCarouselListViewController;
  [(WGMajorListViewController *)&v4 scrollViewDidScroll:scroll];
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

- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  y = velocity.y;
  x = velocity.x;
  v43 = *MEMORY[0x277D85DE8];
  draggingCopy = dragging;
  v40.receiver = self;
  v40.super_class = WGCarouselListViewController;
  [(WGWidgetListViewController *)&v40 scrollViewWillEndDragging:draggingCopy withVelocity:offset targetContentOffset:x, y];
  v10 = WGLogWidgets;
  if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v10;
    isRevealed = [(WGCarouselListViewController *)self isRevealed];
    isVisuallyRevealed = [(WGCarouselListViewController *)self isVisuallyRevealed];
    *buf = 67109376;
    *&buf[4] = isRevealed;
    *&buf[8] = 1024;
    *&buf[10] = isVisuallyRevealed;
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
      [draggingCopy contentOffset];
      v15 = [(WGCarouselListViewController *)self _indexForNextCellAfterContentOffset:v14];
      v16 = [(WGCarouselListViewController *)self _indexForNextCellAfterContentOffset:offset->y];
      panGestureRecognizer = [draggingCopy panGestureRecognizer];
      [panGestureRecognizer velocityInView:draggingCopy];
      v19 = v18;

      v20 = fmin(fmax(v19 / -15000.0, 0.0), 1.0);
      v21 = vcvtad_u64_f64(pow(v20, 3.0) * (v16 - v15) + v15);
      arrangedSubviews = [(UIStackView *)self->super.super._stackView arrangedSubviews];
      if ([arrangedSubviews count] <= v21)
      {
        v23 = 0;
      }

      else
      {
        v23 = [arrangedSubviews objectAtIndex:v21];
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
          [draggingCopy contentSize];
          v31 = v30;
          [draggingCopy bounds];
          if (v19 < 0.0 && v29 < v31 - v32)
          {
            [draggingCopy contentOffset];
            offset->x = v33;
            offset->y = v34;
            [draggingCopy contentOffset];
            v36 = smoothDecelerationAnimation(fmin(-v19 / (v29 - v35), 15.0));
            [draggingCopy _setContentOffset:1 animated:3 animationCurve:0 animationAdjustsForContentOffsetDelta:v36 animation:{v27, v29}];
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

- (id)_newCatchupPropertyForCell:(id)cell
{
  v4 = objc_alloc_init(MEMORY[0x277D75D38]);
  isRevealed = [(WGCarouselListViewController *)self isRevealed];
  v6 = 1.0;
  if (isRevealed)
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
      allValues = [(NSMutableDictionary *)self->_catchupProperties allValues];
      v4 = [allValues countByEnumeratingWithState:&v11 objects:v16 count:16];
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
              objc_enumerationMutation(allValues);
            }

            [*(*(&v11 + 1) + 8 * v7++) invalidate];
          }

          while (v5 != v7);
          v5 = [allValues countByEnumeratingWithState:&v11 objects:v16 count:16];
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
  _animatablePropertiesForStackViewUpdate = [(WGWidgetListViewController *)&v14 _animatablePropertiesForStackViewUpdate];
  v5 = [v3 arrayWithArray:_animatablePropertiesForStackViewUpdate];

  arrangedSubviews = [(UIStackView *)self->super.super._stackView arrangedSubviews];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __71__WGCarouselListViewController__animatablePropertiesForStackViewUpdate__block_invoke;
  v12[3] = &unk_279ED1100;
  v12[4] = self;
  v7 = v5;
  v13 = v7;
  [arrangedSubviews enumerateObjectsUsingBlock:v12];
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
  arrangedSubviews = [(UIStackView *)self->super.super._stackView arrangedSubviews];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v4 = [arrangedSubviews countByEnumeratingWithState:&v27 objects:v31 count:16];
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
          objc_enumerationMutation(arrangedSubviews);
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
            if ((isKindOfClass & 1) != 0 && ([v10 platterView], v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "listItem"), v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "widgetIdentifier"), v15 = v6, v16 = v8, v17 = p_responderFlags, v18 = arrangedSubviews, v19 = objc_claimAutoreleasedReturnValue(), v14, v13, LODWORD(v13) = -[WGWidgetDiscoveryController isElementWithIdentifierFavorited:](self->super.super._discoveryController, "isElementWithIdentifierFavorited:", v19), v19, arrangedSubviews = v18, p_responderFlags = v17, v8 = v16, v6 = v15, v5 = v24, v13))
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
      v5 = [arrangedSubviews countByEnumeratingWithState:&v27 objects:v31 count:16];
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
  widgetListView = [(WGWidgetListViewController *)self widgetListView];
  [widgetListView contentOffset];
  [(WGCarouselListViewController *)self setRevealProgress:fmin(fmax(v4 / 60.0, 0.0), 1.0)];
  [widgetListView contentOffset];
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
  isRevealed = [(WGCarouselListViewController *)self isRevealed];
  visuallyRevealed = self->_visuallyRevealed;
  if (isRevealed)
  {
    IsOne = 0;
  }

  else
  {
    IsOne = BSFloatIsOne();
  }

  v11 = BSFloatIsOne();
  isDecelerating = [widgetListView isDecelerating];
  v13 = WGLogWidgets;
  if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEBUG))
  {
    v15[0] = 67110144;
    v15[1] = isRevealed;
    v16 = 1024;
    v17 = visuallyRevealed;
    v18 = 1024;
    v19 = IsOne;
    v20 = 1024;
    v21 = v11;
    v22 = 1024;
    v23 = isDecelerating;
    _os_log_debug_impl(&dword_27425E000, v13, OS_LOG_TYPE_DEBUG, "revealed: %{BOOL}u, wasVisuallyRevealed: %{BOOL}u, nowRevealed, %{BOOL}u, nowDismissed: %{BOOL}u, isDecelerating: %{BOOL}u", v15, 0x20u);
  }

  isEditingIcons = 1;
  if (self->_listSettings.pinned && ((!isRevealed | v11) & 1) != 0 && (!(isDecelerating & 1 | ((isRevealed & v11 & 1) == 0)) || (isRevealed & isDecelerating & 1) == 0 && ((isDecelerating & 1) != 0 || (IsOne & 1) == 0 && ((!visuallyRevealed | v11) & 1) != 0)))
  {
    isEditingIcons = [(WGWidgetListViewController *)self isEditingIcons];
  }

  [(WGCarouselListViewController *)self setVisuallyRevealed:isEditingIcons];
}

- (double)easedOutValueForValue:(double)value
{
  v4 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7C0]];
  *&v5 = value;
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
  visibleWidgetIdentifiers = [(WGWidgetListViewController *)self visibleWidgetIdentifiers];
  v4 = [visibleWidgetIdentifiers copy];

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

  arrangedSubviews = [(UIStackView *)self->super.super._stackView arrangedSubviews];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __74__WGCarouselListViewController__indexOfFirstNonFavoritedWidgetInStackView__block_invoke;
  v11[3] = &unk_279ED1170;
  v11[4] = &v12;
  v9 = [arrangedSubviews indexOfObjectPassingTest:v11];

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

- (unint64_t)_indexForNextCellAfterContentOffset:(double)offset
{
  arrangedSubviews = [(UIStackView *)self->super.super._stackView arrangedSubviews];
  v6 = [arrangedSubviews copy];

  v7 = [v6 count];
  _indexOfFirstNonFavoritedWidgetInStackView = [(WGCarouselListViewController *)self _indexOfFirstNonFavoritedWidgetInStackView];
  v9 = 0;
  if (v7 <= _indexOfFirstNonFavoritedWidgetInStackView)
  {
    v10 = _indexOfFirstNonFavoritedWidgetInStackView;
  }

  else
  {
    v10 = v7;
  }

  while (1)
  {
    v11 = _indexOfFirstNonFavoritedWidgetInStackView;
    if (v10 == _indexOfFirstNonFavoritedWidgetInStackView)
    {
      break;
    }

    v12 = [v6 objectAtIndex:_indexOfFirstNonFavoritedWidgetInStackView];

    [v12 frame];
    _indexOfFirstNonFavoritedWidgetInStackView = v11 + 1;
    v9 = v12;
    if (v13 >= offset)
    {
      goto LABEL_8;
    }
  }

  v12 = v9;
LABEL_8:

  return v11;
}

- (id)_identifierForCell:(id)cell
{
  cellCopy = cell;
  if (!cellCopy)
  {
    goto LABEL_13;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = objc_opt_class();
    v7 = cellCopy;
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

    platterView = [v11 platterView];

    listItem = [platterView listItem];
    widgetIdentifier = [listItem widgetIdentifier];

    if (widgetIdentifier)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (v9 = objc_opt_class(), NSStringFromClass(v9), (widgetIdentifier = objc_claimAutoreleasedReturnValue()) == 0))
  {
LABEL_12:
    [(WGCarouselListViewController *)cellCopy _identifierForCell:a2, self];
LABEL_13:
    widgetIdentifier = 0;
  }

LABEL_14:

  return widgetIdentifier;
}

- (BOOL)_hasEnoughContentToScroll
{
  widgetListView = [(WGWidgetListViewController *)self widgetListView];
  [widgetListView contentSize];
  v5 = v4;
  containerView = [(WGMajorListViewController *)self containerView];
  [containerView bounds];
  v8 = v5 > v7;

  return v8;
}

- (void)_updateTeachingViewVisibilityAnimated:(BOOL)animated withCompletion:(id)completion
{
  completionCopy = completion;
  if (self->_listSettings.useFavorites && [(WGCarouselListViewController *)self shouldShowTeachingView])
  {
    if (!self->_teachingView)
    {
      v6 = objc_alloc_init(WGWidgetPinningTeachingView);
      teachingView = self->_teachingView;
      self->_teachingView = v6;

      [(WGWidgetPinningTeachingView *)self->_teachingView setDelegate:self];
      arrangedSubviews = [(UIStackView *)self->super.super._stackView arrangedSubviews];
      headerView = [(WGMajorListViewController *)self headerView];
      v10 = [arrangedSubviews indexOfObject:headerView];

      if (v10 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v11 = 0;
      }

      else
      {
        v11 = v10 + 1;
      }

      [(UIStackView *)self->super.super._stackView insertArrangedSubview:self->_teachingView atIndex:v11];
      if (completionCopy)
      {
        completionCopy[2](completionCopy);
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
    v14 = completionCopy;
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

- (CGRect)_cellFrameInScrollBoundsForCell:(id)cell
{
  cellCopy = cell;
  widgetListView = [(WGWidgetListViewController *)self widgetListView];
  superview = [(UIStackView *)self->super.super._stackView superview];

  if (superview == widgetListView)
  {
    [cellCopy frame];
    v19 = v18;
    [widgetListView contentOffset];
    v17 = v19 - v20;
  }

  else
  {
    [cellCopy bounds];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    containerView = [(WGMajorListViewController *)self containerView];
    [cellCopy convertRect:containerView toView:{v8, v10, v12, v14}];
    v17 = v16;
  }

  [cellCopy frame];
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

- (void)_styleFullyInvisibleTopCell:(id)cell
{
  cellCopy = cell;
  platterView = [cellCopy platterView];
  [platterView setClippingEdge:1];

  contentView = [cellCopy contentView];
  v6 = *(MEMORY[0x277CBF2C0] + 16);
  v11[0] = *MEMORY[0x277CBF2C0];
  v11[1] = v6;
  v11[2] = *(MEMORY[0x277CBF2C0] + 32);
  [contentView setTransform:v11];

  contentView2 = [cellCopy contentView];
  layer = [contentView2 layer];
  [layer setAnchorPoint:{0.5, 0.5}];

  contentView3 = [cellCopy contentView];
  [cellCopy bounds];
  [contentView3 setFrame:?];

  [cellCopy setTopMarginForLayout:0.0];
  contentView4 = [cellCopy contentView];

  [contentView4 setAlpha:0.0];
}

- (void)_styleCroppedAndScaledCellForTopEdge:(id)edge withCellFrameInScrollViewBounds:(CGRect)bounds thresholds:(id)thresholds
{
  rect = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  thresholdsCopy = thresholds;
  edgeCopy = edge;
  platterView = [edgeCopy platterView];
  [platterView setClippingEdge:1];

  contentView = [edgeCopy contentView];
  v14 = *(MEMORY[0x277CBF2C0] + 16);
  *&v30.a = *MEMORY[0x277CBF2C0];
  *&v30.c = v14;
  *&v30.tx = *(MEMORY[0x277CBF2C0] + 32);
  [contentView setTransform:&v30];
  layer = [contentView layer];
  [layer setAnchorPoint:{0.5, 0.0}];

  widgetListView = [(WGWidgetListViewController *)self widgetListView];
  [edgeCopy frame];
  v18 = v17;
  v19 = thresholdsCopy[1];
  [widgetListView contentInset];
  v21 = v20 + 0.0;
  v23 = v22 - y;
  [contentView setBounds:{0.0, -y, v18, v19}];
  [contentView setOrigin:{v21, v23}];
  [edgeCopy setTopMarginForLayout:v23];

  v31.origin.x = x;
  v31.origin.y = y;
  v31.size.width = width;
  v31.size.height = rect;
  MaxY = CGRectGetMaxY(v31);
  v25 = thresholdsCopy[2];
  v26 = thresholdsCopy[3];
  v27 = MaxY - v25;

  *&v30.a = 0u;
  v30.c = 1.0;
  LOBYTE(v30.b) = 1;
  *&v30.d = 1;
  BSIntervalMap();
  CGAffineTransformMakeScale(&v30, v28, v28);
  [contentView setTransform:&v30];
  [(WGCarouselListViewController *)self easedOutValueForValue:1.0 - v27 / (v26 - v25)];
  [contentView setAlpha:?];
}

- (void)_styleCroppedCellForTopEdge:(id)edge withCellFrameInScrollViewBounds:(CGRect)bounds intersectionRect:(CGRect)rect thresholds:(id)thresholds
{
  height = rect.size.height;
  width = rect.size.width;
  y = bounds.origin.y;
  v10 = *(thresholds + 1);
  edgeCopy = edge;
  platterView = [edgeCopy platterView];
  [platterView setClippingEdge:1];

  contentView = [edgeCopy contentView];
  v14 = *(MEMORY[0x277CBF2C0] + 16);
  v24[0] = *MEMORY[0x277CBF2C0];
  v24[1] = v14;
  v24[2] = *(MEMORY[0x277CBF2C0] + 32);
  [contentView setTransform:v24];

  contentView2 = [edgeCopy contentView];
  layer = [contentView2 layer];
  [layer setAnchorPoint:{0.5, 0.5}];

  widgetListView = [(WGWidgetListViewController *)self widgetListView];
  [widgetListView contentInset];
  v19 = v18 + 0.0;
  v21 = v20 - y;
  if (height < v10)
  {
    height = v10;
  }

  contentView3 = [edgeCopy contentView];
  [contentView3 setFrame:{v19, v21, width, height}];

  [edgeCopy setTopMarginForLayout:v21];
  contentView4 = [edgeCopy contentView];

  [contentView4 setAlpha:1.0];
}

- (void)_styleFullyVisibleCell:(id)cell
{
  cellCopy = cell;
  platterView = [cellCopy platterView];
  [platterView setClippingEdge:4];

  contentView = [cellCopy contentView];
  v6 = *(MEMORY[0x277CBF2C0] + 16);
  v11[0] = *MEMORY[0x277CBF2C0];
  v11[1] = v6;
  v11[2] = *(MEMORY[0x277CBF2C0] + 32);
  [contentView setTransform:v11];

  contentView2 = [cellCopy contentView];
  layer = [contentView2 layer];
  [layer setAnchorPoint:{0.5, 0.5}];

  contentView3 = [cellCopy contentView];
  [cellCopy bounds];
  [contentView3 setFrame:?];

  [cellCopy setTopMarginForLayout:0.0];
  contentView4 = [cellCopy contentView];

  [contentView4 setAlpha:1.0];
}

- (void)_styleCroppedCellForBottomEdge:(id)edge intersectionRect:(CGRect)rect thresholds:(id)thresholds
{
  height = rect.size.height;
  width = rect.size.width;
  v7 = *(thresholds + 1);
  edgeCopy = edge;
  platterView = [edgeCopy platterView];
  [platterView setClippingEdge:4];

  contentView = [edgeCopy contentView];
  v11 = *(MEMORY[0x277CBF2C0] + 16);
  v16[0] = *MEMORY[0x277CBF2C0];
  v16[1] = v11;
  v16[2] = *(MEMORY[0x277CBF2C0] + 32);
  [contentView setTransform:v16];

  contentView2 = [edgeCopy contentView];
  layer = [contentView2 layer];
  [layer setAnchorPoint:{0.5, 0.5}];

  if (height < v7)
  {
    height = v7;
  }

  contentView3 = [edgeCopy contentView];
  [contentView3 setFrame:{0.0, 0.0, width, height}];

  [edgeCopy setTopMarginForLayout:0.0];
  contentView4 = [edgeCopy contentView];

  [contentView4 setAlpha:1.0];
}

- (void)_styleCroppedAndScaledCellForBottomEdge:(id)edge withCellFrameInScrollViewBounds:(CGRect)bounds intersectionRect:(CGRect)rect thresholds:(id)thresholds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v12 = *(thresholds + 1);
  thresholdsCopy = thresholds;
  edgeCopy = edge;
  platterView = [edgeCopy platterView];
  [platterView setClippingEdge:4];

  contentView = [edgeCopy contentView];
  v17 = *(MEMORY[0x277CBF2C0] + 16);
  *&v29.a = *MEMORY[0x277CBF2C0];
  *&v29.c = v17;
  *&v29.tx = *(MEMORY[0x277CBF2C0] + 32);
  [contentView setTransform:&v29];
  layer = [contentView layer];
  [layer setAnchorPoint:{0.5, 1.0}];

  v30.origin.x = x;
  v30.origin.y = y;
  v30.size.width = width;
  v30.size.height = height;
  MinY = CGRectGetMinY(v30);
  v20 = thresholdsCopy[5];
  v21 = thresholdsCopy[6];
  v22 = MinY - v20;

  v23 = fmin(fmax(v22 / (v21 - v20), 0.0), 1.0);
  containerView = [(WGMajorListViewController *)self containerView];
  [containerView bounds];
  v26 = v25 - v12 + -10.0 - y + v23 * 10.0;
  [edgeCopy frame];
  [contentView setBounds:{0.0, v26}];
  [contentView setOrigin:{0.0, v26}];
  [edgeCopy setTopMarginForLayout:v26];

  *&v29.a = 0u;
  v29.c = 1.0;
  LOBYTE(v29.b) = 1;
  *&v29.d = 1;
  BSIntervalMap();
  CGAffineTransformMakeScale(&v29, v27, v27);
  [contentView setTransform:{&v29, 0x3FECCCCCCCCCCCCDLL, 1, 0x3FF0000000000000, 1}];
  [(WGCarouselListViewController *)self easedOutValueForValue:1.0 - v23];
  [contentView setAlpha:v28 * 0.3 + 0.7];
}

- (void)_styleDisapearingCellForBottomEdge:(id)edge withCellFrameInScrollViewBounds:(CGRect)bounds previousCellFrameInContainerView:(CGRect)view thresholds:(id)thresholds
{
  height = view.size.height;
  width = view.size.width;
  y = view.origin.y;
  x = view.origin.x;
  v10 = bounds.origin.y;
  v13 = *(thresholds + 1);
  thresholdsCopy = thresholds;
  edgeCopy = edge;
  platterView = [edgeCopy platterView];
  [platterView setClippingEdge:4];

  contentView = [edgeCopy contentView];
  v18 = *(MEMORY[0x277CBF2C0] + 16);
  *&v28.a = *MEMORY[0x277CBF2C0];
  *&v28.c = v18;
  *&v28.tx = *(MEMORY[0x277CBF2C0] + 32);
  [contentView setTransform:&v28];
  layer = [contentView layer];
  [layer setAnchorPoint:{0.5, 1.0}];

  v29.origin.x = x;
  v29.origin.y = y;
  v29.size.width = width;
  v29.size.height = height;
  MinY = CGRectGetMinY(v29);
  v21 = thresholdsCopy[7];
  v22 = thresholdsCopy[8];
  v23 = MinY - v21;

  v24 = fmin(fmax(v23 / (v22 - v21), 0.0), 1.0);
  containerView = [(WGMajorListViewController *)self containerView];
  [containerView bounds];
  v27 = v26 - v13 - v10 + v24 * 6.0;
  [edgeCopy frame];
  [contentView setBounds:{0.0, v27}];
  [contentView setOrigin:{0.0, v27}];
  [edgeCopy setTopMarginForLayout:v27];

  CGAffineTransformMakeScale(&v28, 0.9, 0.9);
  [contentView setTransform:&v28];
  [contentView setAlpha:{fmin(fmax((v24 * -2.0 + 1.0) * 0.7, 0.0), 1.0)}];
}

- (void)_styleFullyInvisibleBottomCell:(id)cell withCellFrameInScrollViewBounds:(CGRect)bounds thresholds:(id)thresholds
{
  y = bounds.origin.y;
  v7 = *(thresholds + 1);
  cellCopy = cell;
  containerView = [(WGMajorListViewController *)self containerView];
  [containerView bounds];
  platterView = [cellCopy platterView];
  [platterView setClippingEdge:4];

  contentView = [cellCopy contentView];
  v12 = *(MEMORY[0x277CBF2C0] + 16);
  *&v16.a = *MEMORY[0x277CBF2C0];
  *&v16.c = v12;
  *&v16.tx = *(MEMORY[0x277CBF2C0] + 32);
  [contentView setTransform:&v16];
  layer = [contentView layer];
  [layer setAnchorPoint:{0.5, 1.0}];

  [containerView bounds];
  v15 = v14 - v7 - y;
  [cellCopy frame];
  [contentView setBounds:{0.0, v15}];
  [contentView setOrigin:{0.0, v15}];
  [cellCopy setTopMarginForLayout:v15];

  CGAffineTransformMakeScale(&v16, 0.9, 0.9);
  [contentView setTransform:&v16];
  [contentView setAlpha:0.0];
}

- (void)_styleFooterView:(id)view withCellFrameInScrollViewBounds:(CGRect)bounds intersectionRect:(CGRect)rect containerHeight:(double)height
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  viewCopy = view;
  contentView = [viewCopy contentView];
  v26.origin.x = x;
  v26.origin.y = y;
  v26.size.width = width;
  v26.size.height = height;
  v12 = (CGRectGetMaxY(v26) - (height + 10.0)) / (height + height + 10.0 - (height + 10.0)) + 0.0;
  v13 = *(MEMORY[0x277CBF2C0] + 16);
  *&v25.a = *MEMORY[0x277CBF2C0];
  *&v25.c = v13;
  *&v25.tx = *(MEMORY[0x277CBF2C0] + 32);
  [contentView setTransform:&v25];
  layer = [contentView layer];
  [layer setAnchorPoint:{0.5, 0.5}];

  [viewCopy bounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  [contentView setFrame:{v16, v18, v20, v22}];
  v23 = *(MEMORY[0x277CF0B28] + 16);
  *&v25.a = *MEMORY[0x277CF0B28];
  *&v25.c = v23;
  BSUIConstrainValueToIntervalWithRubberBand();
  CGAffineTransformMakeScale(&v25, v24, v24);
  [contentView setTransform:&v25];
  [contentView setAlpha:{fmin(fmax(1.0 - v12, 0.0), 1.0)}];
}

- (void)_styleHeaderView:(id)view withCellFrameInScrollViewBounds:(CGRect)bounds intersectionRect:(CGRect)rect
{
  CGRectGetMinY(bounds);
  *&v10.a = 0u;
  v10.c = 1.0;
  LOBYTE(v10.b) = 1;
  *&v10.d = 1;
  BSUIConstrainValueToIntervalWithRubberBand();
  v7 = fmin(fmax(v6, 0.75), 1.25);
  v8 = [(WGMajorListViewController *)self headerView:*&v10.a];
  contentView = [v8 contentView];
  CGAffineTransformMakeScale(&v10, v7, v7);
  [contentView setTransform:&v10];
}

- (void)_styleTeachingView:(id)view withCellFrameInScrollViewBounds:(CGRect)bounds intersectionRect:(CGRect)rect
{
  height = bounds.size.height;
  rect = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  viewCopy = view;
  contentView = [viewCopy contentView];
  v11 = *(MEMORY[0x277CBF2C0] + 16);
  *&v25.a = *MEMORY[0x277CBF2C0];
  *&v25.c = v11;
  *&v25.tx = *(MEMORY[0x277CBF2C0] + 32);
  [contentView setTransform:&v25];
  layer = [contentView layer];
  [layer setAnchorPoint:{0.5, 0.5}];

  widgetListView = [(WGWidgetListViewController *)self widgetListView];
  [viewCopy frame];

  [widgetListView contentInset];
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
    layer2 = [contentView layer];
    [layer2 setAnchorPoint:{0.5, 0.0}];
  }

  [contentView setBounds:0.0];
  [contentView setOrigin:{v17 + 0.0, fmax(v15 - y, 0.0)}];
  CGAffineTransformMakeScale(&v25, v22, v22);
  [contentView setTransform:&v25];
  [(WGCarouselListViewController *)self easedOutValueForValue:v20];
  [contentView setAlpha:?];
}

- (id)_thresholdsForCell:(id)cell
{
  cellCopy = cell;
  v5 = [(WGCarouselListViewController *)self _identifierForCell:cellCopy];
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
    containerView = [(WGMajorListViewController *)self containerView];
    [containerView bounds];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17 + -10.0;
    widgetListView = [(WGWidgetListViewController *)self widgetListView];
    [widgetListView contentInset];
    v21 = v20;

    platterView = [cellCopy platterView];
    v28.origin.x = v12;
    v28.origin.y = v14;
    v28.size.width = v16;
    v28.size.height = v18;
    [platterView minimumSizeThatFits:{CGRectGetWidth(v28), 0.0}];
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

- (void)widgetPinningTeachingViewDidSelectYes:(id)yes
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

- (void)widgetPinningTeachingViewDidSelectNo:(id)no
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
  v2 = *(self + 1184);
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