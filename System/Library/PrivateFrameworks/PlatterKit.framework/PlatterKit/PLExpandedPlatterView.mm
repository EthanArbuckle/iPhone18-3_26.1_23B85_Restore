@interface PLExpandedPlatterView
- (BOOL)adjustForContentSizeCategoryChange;
- (BOOL)adjustsFontForContentSizeCategory;
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (BOOL)respondsToSelector:(SEL)selector;
- (CGRect)_actionsViewFrame;
- (CGRect)_boundsInsetHorizontallyFromDismissControlIfNecessary;
- (CGRect)_effectiveMainContentViewFrame;
- (CGRect)_headerFrame;
- (CGRect)_mainContentViewFrame;
- (CGRect)_scrollViewContentViewFrame;
- (CGRect)frameForPlatterFrame:(CGRect)frame;
- (CGRect)platterFrameForFrame:(CGRect)frame;
- (CGRect)scrollViewFrame;
- (CGSize)_actionsSizeThatFits:(CGSize)fits includingPadding:(BOOL)padding;
- (CGSize)_contentViewSize;
- (CGSize)_flexibleAreaSizeForBounds:(CGRect)bounds;
- (CGSize)_sizeThatFitsContentExcludingActionsWithSize:(CGSize)size;
- (CGSize)actionsSizeThatFits:(CGSize)fits;
- (CGSize)contentSizeExcludingActions;
- (CGSize)contentSizeForSize:(CGSize)size;
- (CGSize)customContentSize;
- (CGSize)sizeExcludingActions;
- (CGSize)sizeThatFits:(CGSize)fits;
- (CGSize)sizeThatFitsContentWithSize:(CGSize)size;
- (PLExpandedPlatterView)initWithFrame:(CGRect)frame;
- (PLExpandedPlatterViewDelegate)delegate;
- (UIButton)utilityButton;
- (UIControl)dismissControl;
- (UIEdgeInsets)_dismissControlTotalOutset;
- (UIEdgeInsets)dismissControlInsets;
- (UIEdgeInsets)minimumScrollViewContentInsets;
- (UIView)customContentView;
- (double)_headerKeyLineAlphaForContentOffset;
- (id)pointerInteraction:(id)interaction styleForRegion:(id)region;
- (void)_configureActionViewIfNecessaryWithActions:(id)actions;
- (void)_configureActionsBackgroundViewIfNecessaryWithActions:(id)actions;
- (void)_configureCustomContentView;
- (void)_configureCustomContentViewIfNecessary;
- (void)_configureDismissControlIfNecessary;
- (void)_configureHeaderBackgroundDefaultIfNecessary;
- (void)_configureHeaderBackgroundForReduceTransparencyIfNecessary;
- (void)_configureHeaderBackgroundViewsIfCanScroll;
- (void)_configureHeaderBackgroundViewsIfNecessary;
- (void)_configureHeaderContainerViewIfNecessary;
- (void)_configureHeaderContentViewIfNecessary;
- (void)_configureMainContentViewIfNecessary;
- (void)_configureScrollViewContentViewIfNecessary;
- (void)_configureScrollViewIfNecessary;
- (void)_invalidateHeaderBackgroundViews;
- (void)_layoutActionsView;
- (void)_layoutCustomContentView;
- (void)_layoutDismissControl;
- (void)_layoutHeaderBackgroundViewsWithFrame:(CGRect)frame;
- (void)_layoutHeaderContainerViewWithFrame:(CGRect)frame;
- (void)_layoutHeaderContentViewWithFrame:(CGRect)frame;
- (void)_layoutMainContentView;
- (void)_layoutMainContentViewIfNecessary;
- (void)_layoutScrollView;
- (void)_layoutScrollViewContentView;
- (void)_layoutTopRubberbandingView;
- (void)_reduceTransparencyDidChange:(id)change;
- (void)_updateHeaderKeyLineAlphaIfNecessaryAnimated:(BOOL)animated;
- (void)dealloc;
- (void)forwardInvocation:(id)invocation;
- (void)layoutSubviews;
- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)scrollViewDidScroll:(id)scroll;
- (void)setActionsHidden:(BOOL)hidden;
- (void)setAdjustsFontForContentSizeCategory:(BOOL)category;
- (void)setCustomContentSize:(CGSize)size;
- (void)setDate:(id)date;
- (void)setDateAllDay:(BOOL)day;
- (void)setDateFormatStyle:(int64_t)style;
- (void)setDismissControlEnabled:(BOOL)enabled;
- (void)setDismissControlPosition:(int64_t)position;
- (void)setHeaderEnabled:(BOOL)enabled;
- (void)setIcons:(id)icons;
- (void)setInterfaceActions:(id)actions;
- (void)setTimeZone:(id)zone;
- (void)setTitle:(id)title;
@end

@implementation PLExpandedPlatterView

- (BOOL)adjustForContentSizeCategoryChange
{
  adjustForContentSizeCategoryChange = [(PLPlatterHeaderContentView *)self->_headerContentView adjustForContentSizeCategoryChange];
  if (adjustForContentSizeCategoryChange)
  {
    [(PLExpandedPlatterView *)self setNeedsLayout];
  }

  return adjustForContentSizeCategoryChange;
}

- (CGSize)customContentSize
{
  width = self->_customContentSize.width;
  height = self->_customContentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)layoutSubviews
{
  v12.receiver = self;
  v12.super_class = PLExpandedPlatterView;
  [(PLExpandedPlatterView *)&v12 layoutSubviews];
  [(PLExpandedPlatterView *)self _configureDismissControlIfNecessary];
  [(PLExpandedPlatterView *)self _configureScrollViewIfNecessary];
  [(PLExpandedPlatterView *)self _configureScrollViewContentViewIfNecessary];
  [(PLExpandedPlatterView *)self _configureMainContentViewIfNecessary];
  [(PLExpandedPlatterView *)self _configureHeaderContainerViewIfNecessary];
  [(PLExpandedPlatterView *)self _configureCustomContentViewIfNecessary];
  [(PLExpandedPlatterView *)self _configureHeaderContentViewIfNecessary];
  [(PLExpandedPlatterView *)self _configureHeaderBackgroundViewsIfCanScroll];
  [(PLExpandedPlatterView *)self _layoutDismissControl];
  if ([(PLExpandedPlatterView *)self isHeaderEnabled])
  {
    [(PLExpandedPlatterView *)self _headerFrame];
    [(PLExpandedPlatterView *)self _layoutHeaderContainerViewWithFrame:?];
    [(UIView *)self->_headerContainerView bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    [(PLExpandedPlatterView *)self _layoutHeaderContentViewWithFrame:?];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __39__PLExpandedPlatterView_layoutSubviews__block_invoke;
    v11[3] = &unk_278425378;
    v11[4] = self;
    v11[5] = v4;
    v11[6] = v6;
    v11[7] = v8;
    v11[8] = v10;
    [MEMORY[0x277D75D18] performWithoutAnimation:v11];
  }

  [(PLExpandedPlatterView *)self _layoutScrollView];
  [(PLExpandedPlatterView *)self _layoutScrollViewContentView];
  [(PLExpandedPlatterView *)self _layoutMainContentView];
  [(PLExpandedPlatterView *)self _layoutCustomContentView];
  [(PLExpandedPlatterView *)self _layoutActionsView];
  [(PLExpandedPlatterView *)self _layoutTopRubberbandingView];
}

- (void)_configureDismissControlIfNecessary
{
  if ([(PLExpandedPlatterView *)self isDismissControlEnabled]&& !self->_dismissControl)
  {
    v3 = [PLGlyphControl dismissControlWithMaterialRecipe:1];
    [(UIControl *)v3 setBlurEnabled:0];
    [(UIControl *)v3 setAccessibilityIdentifier:@"dismiss-expanded-button"];
    v4 = [objc_alloc(MEMORY[0x277D75870]) initWithDelegate:self];
    [(UIControl *)v3 addInteraction:v4];

    dismissControl = self->_dismissControl;
    self->_dismissControl = v3;
    v6 = v3;

    [(PLExpandedPlatterView *)self addSubview:self->_dismissControl];
  }
}

- (void)_configureMainContentViewIfNecessary
{
  if (!self->_mainContentView)
  {
    [(PLExpandedPlatterView *)self _configureScrollViewContentViewIfNecessary];
    v3 = objc_alloc_init(MEMORY[0x277D75D18]);
    mainContentView = self->_mainContentView;
    self->_mainContentView = v3;

    v5 = self->_mainContentView;
    _systemBackgroundColor = [MEMORY[0x277D75348] _systemBackgroundColor];
    [(UIView *)v5 setBackgroundColor:_systemBackgroundColor];

    layer = [(UIView *)self->_mainContentView layer];
    [layer setMaskedCorners:12];

    [(UIView *)self->_mainContentView _setContinuousCornerRadius:13.0];
    scrollViewContentView = self->_scrollViewContentView;
    v9 = self->_mainContentView;

    [(UIView *)scrollViewContentView addSubview:v9];
  }
}

- (void)_configureHeaderContainerViewIfNecessary
{
  if ([(PLExpandedPlatterView *)self isHeaderEnabled]&& !self->_headerContainerView)
  {
    v3 = objc_alloc_init(MEMORY[0x277D75D18]);
    headerContainerView = self->_headerContainerView;
    self->_headerContainerView = v3;

    [(UIView *)self->_headerContainerView setClipsToBounds:0];
    v5 = self->_headerContainerView;

    [(PLExpandedPlatterView *)self addSubview:v5];
  }
}

- (void)_configureCustomContentViewIfNecessary
{
  if (!self->_customContentView)
  {
    [(PLExpandedPlatterView *)self customContentSize];
    if (v4 != 0.0 || v3 != 0.0)
    {

      [(PLExpandedPlatterView *)self _configureCustomContentView];
    }
  }
}

- (void)_configureHeaderContentViewIfNecessary
{
  if ([(PLExpandedPlatterView *)self isHeaderEnabled]&& !self->_headerContentView)
  {
    v3 = objc_alloc_init(PLExpandedPlatterHeaderContentView);
    headerContentView = self->_headerContentView;
    self->_headerContentView = &v3->super;

    layer = [(PLPlatterHeaderContentView *)self->_headerContentView layer];
    [layer setMaskedCorners:3];

    [(PLPlatterHeaderContentView *)self->_headerContentView _setContinuousCornerRadius:13.0];
    [(PLExpandedPlatterView *)self _configureHeaderContainerViewIfNecessary];
    headerContainerView = self->_headerContainerView;
    v7 = self->_headerContentView;

    [(UIView *)headerContainerView addSubview:v7];
  }
}

- (void)_configureHeaderBackgroundViewsIfCanScroll
{
  [(UIScrollView *)self->_scrollView contentOffset];
  v4 = v3;
  [(PLExpandedPlatterView *)self minimumScrollViewContentInsets];
  if (v4 <= -v5 && ([(UIScrollView *)self->_scrollView frame], Height = CGRectGetHeight(v10), [(UIScrollView *)self->_scrollView contentSize], Height >= v7))
  {

    [(PLExpandedPlatterView *)self _invalidateHeaderBackgroundViews];
  }

  else
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __67__PLExpandedPlatterView__configureHeaderBackgroundViewsIfCanScroll__block_invoke;
    v8[3] = &unk_2784250D8;
    v8[4] = self;
    [MEMORY[0x277D75D18] performWithoutAnimation:v8];
  }
}

- (UIEdgeInsets)minimumScrollViewContentInsets
{
  v3 = *(MEMORY[0x277D768C8] + 8);
  v4 = *(MEMORY[0x277D768C8] + 16);
  v5 = *(MEMORY[0x277D768C8] + 24);
  [(PLExpandedPlatterView *)self _boundsInsetHorizontallyFromDismissControlIfNecessary];
  v7 = v6;
  v9 = v8;
  [(PLExpandedPlatterView *)self _configureHeaderContentViewIfNecessary];
  [(PLPlatterHeaderContentView *)self->_headerContentView sizeThatFits:v7, v9];
  v11 = v10;
  v12 = v3;
  v13 = v4;
  v14 = v5;
  result.right = v14;
  result.bottom = v13;
  result.left = v12;
  result.top = v11;
  return result;
}

- (UIEdgeInsets)_dismissControlTotalOutset
{
  [(PLExpandedPlatterView *)self _configureDismissControlIfNecessary];
  v4 = *MEMORY[0x277D768C8];
  v3 = *(MEMORY[0x277D768C8] + 8);
  v5 = *(MEMORY[0x277D768C8] + 16);
  v6 = *(MEMORY[0x277D768C8] + 24);
  if ([(PLExpandedPlatterView *)self isDismissControlEnabled])
  {
    [(UIControl *)self->_dismissControl sizeThatFits:*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)];
    dismissControlPosition = self->_dismissControlPosition;
    if (dismissControlPosition == 1)
    {
      v6 = v7 + 8.0;
    }

    else if (!dismissControlPosition)
    {
      v4 = v8 + 8.0;
    }
  }

  v10 = v4;
  v11 = v3;
  v12 = v5;
  v13 = v6;
  result.right = v13;
  result.bottom = v12;
  result.left = v11;
  result.top = v10;
  return result;
}

- (void)_configureScrollViewIfNecessary
{
  if (!self->_scrollView)
  {
    v3 = objc_alloc_init(MEMORY[0x277D759D8]);
    scrollView = self->_scrollView;
    self->_scrollView = v3;

    layer = [(UIScrollView *)self->_scrollView layer];
    [layer setMaskedCorners:3];

    [(UIScrollView *)self->_scrollView _setContinuousCornerRadius:13.0];
    [(UIScrollView *)self->_scrollView setShowsHorizontalScrollIndicator:0];
    [(UIScrollView *)self->_scrollView setShowsVerticalScrollIndicator:0];
    [(UIScrollView *)self->_scrollView setKeyboardDismissMode:0];
    [(UIScrollView *)self->_scrollView setDelegate:self];
    [(PLExpandedPlatterView *)self insertSubview:self->_scrollView atIndex:0];
    v6 = objc_alloc_init(MEMORY[0x277D75D18]);
    topRubberbandingView = self->_topRubberbandingView;
    self->_topRubberbandingView = v6;

    layer2 = [(UIView *)self->_topRubberbandingView layer];
    [layer2 setMaskedCorners:3];

    [(UIView *)self->_topRubberbandingView _setContinuousCornerRadius:13.0];
    v9 = self->_topRubberbandingView;
    _systemBackgroundColor = [MEMORY[0x277D75348] _systemBackgroundColor];
    [(UIView *)v9 setBackgroundColor:_systemBackgroundColor];

    v11 = self->_scrollView;
    v12 = self->_topRubberbandingView;

    [(UIScrollView *)v11 addSubview:v12];
  }
}

- (void)_configureScrollViewContentViewIfNecessary
{
  if (!self->_scrollViewContentView)
  {
    [(PLExpandedPlatterView *)self _configureScrollViewIfNecessary];
    v3 = objc_alloc_init(MEMORY[0x277D75D18]);
    scrollViewContentView = self->_scrollViewContentView;
    self->_scrollViewContentView = v3;

    layer = [(UIView *)self->_scrollViewContentView layer];
    [layer setMaskedCorners:3];

    [(UIView *)self->_scrollViewContentView _setContinuousCornerRadius:13.0];
    scrollView = self->_scrollView;
    v7 = self->_scrollViewContentView;

    [(UIScrollView *)scrollView addSubview:v7];
  }
}

- (CGRect)_boundsInsetHorizontallyFromDismissControlIfNecessary
{
  [(PLExpandedPlatterView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if ([(PLExpandedPlatterView *)self isDismissControlEnabled])
  {
    [(PLExpandedPlatterView *)self _dismissControlTotalOutset];
    v12 = v11;
    _shouldReverseLayoutDirection = [(PLExpandedPlatterView *)self _shouldReverseLayoutDirection];
    v14 = 0.0;
    if (_shouldReverseLayoutDirection)
    {
      v14 = v12;
    }

    v4 = v4 + v14;
    v8 = v8 - v12;
  }

  v15 = v4;
  v16 = v6;
  v17 = v8;
  v18 = v10;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (void)_invalidateHeaderBackgroundViews
{
  [(UIView *)self->_headerBackgroundView removeFromSuperview];
  headerBackgroundView = self->_headerBackgroundView;
  self->_headerBackgroundView = 0;

  [(UIView *)self->_headerTintView removeFromSuperview];
  headerTintView = self->_headerTintView;
  self->_headerTintView = 0;

  [(UIView *)self->_headerKeyLineView removeFromSuperview];
  headerKeyLineView = self->_headerKeyLineView;
  self->_headerKeyLineView = 0;
}

- (void)_layoutDismissControl
{
  if ([(PLExpandedPlatterView *)self isDismissControlEnabled])
  {
    [(PLExpandedPlatterView *)self bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    [(UIControl *)self->_dismissControl sizeThatFits:v7, v9];
    BSRectWithSize();
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    _shouldReverseLayoutDirection = [(PLExpandedPlatterView *)self _shouldReverseLayoutDirection];
    v20 = v4;
    v21 = v6;
    v22 = v8;
    v23 = v10;
    if (_shouldReverseLayoutDirection)
    {
      MinX = CGRectGetMinX(*&v20);
      v25 = 12.0;
      if (self->_dismissControlPosition == 1)
      {
        v25 = 0.0;
      }

      v26 = MinX + v25;
    }

    else
    {
      MaxX = CGRectGetMaxX(*&v20);
      v32.origin.x = v12;
      v32.origin.y = v14;
      v32.size.width = v16;
      v32.size.height = v18;
      v28 = MaxX - CGRectGetWidth(v32);
      v29 = 12.0;
      if (self->_dismissControlPosition == 1)
      {
        v29 = 0.0;
      }

      v26 = v28 - v29;
    }

    dismissControl = self->_dismissControl;

    [(UIControl *)dismissControl setFrame:v26, v14, v16, v18];
  }
}

- (void)_layoutScrollView
{
  [(PLExpandedPlatterView *)self scrollViewFrame];
  [(UIScrollView *)self->_scrollView setFrame:?];
  scrollView = self->_scrollView;
  [(PLExpandedPlatterView *)self minimumScrollViewContentInsets];

  [(UIScrollView *)scrollView setContentInset:?];
}

- (CGRect)scrollViewFrame
{
  [(PLExpandedPlatterView *)self _boundsInsetHorizontallyFromDismissControlIfNecessary];
  [(PLExpandedPlatterView *)self _dismissControlTotalOutset];
  PLMainScreenScale();

  UIRectIntegralWithScale();
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (void)_layoutScrollViewContentView
{
  [(PLExpandedPlatterView *)self _scrollViewContentViewFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(UIView *)self->_scrollViewContentView setFrame:?];
  [(UIScrollView *)self->_scrollView setContentSize:v8, v10];
  [(PLExpandedPlatterView *)self _configureHeaderContentViewIfNecessary];
  [(PLExpandedPlatterView *)self scrollViewFrame];
  Height = CGRectGetHeight(v22);
  [(PLExpandedPlatterView *)self minimumScrollViewContentInsets];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v23.origin.x = v4;
  v23.origin.y = v6;
  v23.size.width = v8;
  v23.size.height = v10;
  v18 = CGRectGetHeight(v23);
  contentBottomInset = 0.0;
  if (v18 > Height)
  {
    contentBottomInset = self->_contentBottomInset;
  }

  scrollView = self->_scrollView;

  [(UIScrollView *)scrollView setContentInset:v13, v15, contentBottomInset, v17];
}

- (CGRect)_scrollViewContentViewFrame
{
  [(PLExpandedPlatterView *)self _boundsInsetHorizontallyFromDismissControlIfNecessary];
  v4 = v3;
  v6 = v5;
  [(PLExpandedPlatterView *)self _contentViewSize];
  BSRectWithSize();
  [(PLExpandedPlatterView *)self _configureHeaderContentViewIfNecessary];
  _headerContentView = [(PLExpandedPlatterView *)self _headerContentView];
  [_headerContentView sizeThatFits:{v4, v6}];

  PLMainScreenScale();

  UIRectIntegralWithScale();
  result.size.height = v11;
  result.size.width = v10;
  result.origin.y = v9;
  result.origin.x = v8;
  return result;
}

- (CGSize)_contentViewSize
{
  [(PLExpandedPlatterView *)self _boundsInsetHorizontallyFromDismissControlIfNecessary];
  width = v15.size.width;
  height = v15.size.height;
  v5 = CGRectGetWidth(v15);
  [(PLExpandedPlatterView *)self customContentSize];
  v7 = v6 + 0.0;
  if (self->_actionsView)
  {
    [(PLExpandedPlatterView *)self actionsSizeThatFits:width, height];
    v7 = v7 + v8;
  }

  [(PLExpandedPlatterView *)self minimumScrollViewContentInsets];
  v10 = v7 + v9;
  [(PLExpandedPlatterView *)self minimumScrollViewContentInsets];
  v12 = v10 + v11;
  v13 = v5;
  result.height = v12;
  result.width = v13;
  return result;
}

- (void)_layoutMainContentView
{
  mainContentView = self->_mainContentView;
  [(PLExpandedPlatterView *)self _effectiveMainContentViewFrame];

  [(UIView *)mainContentView setFrame:?];
}

- (CGRect)_effectiveMainContentViewFrame
{
  [(PLExpandedPlatterView *)self _mainContentViewFrame];
  v7 = v3;
  v8 = v4;
  v9 = v5;
  if (self->_clipsVisibleContentToBounds)
  {
    Height = CGRectGetHeight(*&v3);
    [(PLExpandedPlatterView *)self bounds];
    [(PLExpandedPlatterView *)self _flexibleAreaSizeForBounds:?];
    if (Height <= v11)
    {
      v6 = Height;
    }

    else
    {
      v6 = v11;
    }
  }

  v12 = v7;
  v13 = v8;
  v14 = v9;
  result.size.height = v6;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (CGRect)_mainContentViewFrame
{
  [(PLExpandedPlatterView *)self _boundsInsetHorizontallyFromDismissControlIfNecessary];
  CGRectGetWidth(v16);
  BSRectWithSize();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(PLExpandedPlatterView *)self customContentSize];
  v12 = v10 + v11;
  v13 = v4;
  v14 = v6;
  v15 = v8;
  result.size.height = v12;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (void)_layoutCustomContentView
{
  if (self->_customContentView)
  {
    [(PLExpandedPlatterView *)self _layoutMainContentViewIfNecessary];
    _mainContentView = [(PLExpandedPlatterView *)self _mainContentView];
    [_mainContentView frame];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    v18.origin.x = v5;
    v18.origin.y = v7;
    v18.size.width = v9;
    v18.size.height = v11;
    CGRectGetWidth(v18);
    [(PLExpandedPlatterView *)self customContentSize];
    BSRectWithSize();
    if (self->_clipsVisibleContentToBounds)
    {
      CGRectGetHeight(*&v12);
      [(PLExpandedPlatterView *)self bounds];
      [(PLExpandedPlatterView *)self _flexibleAreaSizeForBounds:?];
    }

    customContentView = self->_customContentView;
    PLMainScreenScale();
    UIRectIntegralWithScale();

    [(UIView *)customContentView setFrame:?];
  }
}

- (void)_layoutMainContentViewIfNecessary
{
  layer = [(UIView *)self->_mainContentView layer];
  needsLayout = [layer needsLayout];

  if (needsLayout)
  {

    [(PLExpandedPlatterView *)self _layoutMainContentView];
  }
}

- (void)_layoutActionsView
{
  if (self->_actionsView)
  {
    [(PLExpandedPlatterView *)self _actionsViewFrame];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    [(MTMaterialView *)self->_actionsBackgroundView setFrame:?];
    actionsView = self->_actionsView;

    [(PLInterfaceActionGroupView *)actionsView setFrame:v4, v6, v8, v10];
  }
}

- (void)_layoutTopRubberbandingView
{
  if ([(PLExpandedPlatterView *)self isHeaderEnabled])
  {
    [(UIScrollView *)self->_scrollView contentOffset];
    [(UIScrollView *)self->_scrollView contentSize];
    PLMainScreenScale();
    UIRectIntegralWithScale();
    topRubberbandingView = self->_topRubberbandingView;

    [(UIView *)topRubberbandingView setFrame:?];
  }
}

- (UIView)customContentView
{
  [(PLExpandedPlatterView *)self _configureCustomContentViewIfNecessary];
  customContentView = self->_customContentView;

  return customContentView;
}

- (PLExpandedPlatterView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = PLExpandedPlatterView;
  v3 = [(PLExpandedPlatterView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel__reduceTransparencyDidChange_ name:*MEMORY[0x277D764C8] object:0];

    [(PLExpandedPlatterView *)v3 setHeaderEnabled:1];
    [(PLExpandedPlatterView *)v3 setDismissControlEnabled:1];
  }

  return v3;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D764C8] object:0];

  v4.receiver = self;
  v4.super_class = PLExpandedPlatterView;
  [(PLExpandedPlatterView *)&v4 dealloc];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(PLExpandedPlatterView *)self contentSizeForSize:fits.width, fits.height];

  [(PLExpandedPlatterView *)self sizeThatFitsContentWithSize:?];
  result.height = v5;
  result.width = v4;
  return result;
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  eventCopy = event;
  v27.receiver = self;
  v27.super_class = PLExpandedPlatterView;
  if ([(PLExpandedPlatterView *)&v27 pointInside:eventCopy withEvent:x, y])
  {
    if (-[PLExpandedPlatterView isDismissControlEnabled](self, "isDismissControlEnabled") && ((-[PLPlatterHeaderContentView superview](self->_headerContentView, "superview"), v8 = objc_claimAutoreleasedReturnValue(), -[PLPlatterHeaderContentView frame](self->_headerContentView, "frame"), [v8 convertRect:self toView:?], v10 = v9, v12 = v11, v14 = v13, v16 = v15, v8, v28.origin.x = v10, v28.origin.y = v12, v28.size.width = v14, v28.size.height = v16, MinY = CGRectGetMinY(v28), v18 = -[PLExpandedPlatterView _shouldReverseLayoutDirection](self, "_shouldReverseLayoutDirection"), v19 = v10, v20 = v12, v21 = v14, v22 = v16, !v18) ? (v23 = x <= CGRectGetMaxX(*&v19)) : (v23 = x >= CGRectGetMinX(*&v19)), y < MinY || !v23))
    {
      dismissControl = self->_dismissControl;
      [(PLExpandedPlatterView *)self convertPoint:dismissControl toView:x, y];
      v24 = [(UIControl *)dismissControl pointInside:eventCopy withEvent:?];
    }

    else
    {
      v24 = 1;
    }
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

- (CGSize)sizeThatFitsContentWithSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  [(PLExpandedPlatterView *)self _sizeThatFitsContentExcludingActionsWithSize:?];
  v7 = v6;
  v9 = v8;
  if (self->_actionsView)
  {
    [(PLExpandedPlatterView *)self actionsSizeThatFits:width, height];
    v9 = v9 + v10;
  }

  v11 = v7;
  v12 = v9;
  result.height = v12;
  result.width = v11;
  return result;
}

- (CGSize)contentSizeForSize:(CGSize)size
{
  height = size.height;
  v5 = *MEMORY[0x277CBF3A8];
  v4 = *(MEMORY[0x277CBF3A8] + 8);
  if (size.width > 0.0 && height > 0.0)
  {
    width = size.width;
    [(PLExpandedPlatterView *)self _dismissControlTotalOutset];
    v5 = width - v8;
    [(PLExpandedPlatterView *)self sizeThatFitsContentWithSize:width - v8, 0.0];
    v4 = ((height - v9) & ~((height - v9) >> 31));
  }

  v10 = v5;
  result.height = v4;
  result.width = v10;
  return result;
}

- (void)setIcons:(id)icons
{
  iconsCopy = icons;
  [(PLExpandedPlatterView *)self _configureHeaderContentViewIfNecessary];
  [(PLPlatterHeaderContentView *)self->_headerContentView setIcons:iconsCopy];
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  title = [(PLPlatterHeaderContentView *)self->_headerContentView title];
  v5 = [titleCopy isEqual:title];

  if ((v5 & 1) == 0)
  {
    [(PLExpandedPlatterView *)self _configureHeaderContentViewIfNecessary];
    [(PLPlatterHeaderContentView *)self->_headerContentView setTitle:titleCopy];
  }
}

- (void)setDate:(id)date
{
  dateCopy = date;
  date = [(PLPlatterHeaderContentView *)self->_headerContentView date];
  v5 = [dateCopy isEqual:date];

  if ((v5 & 1) == 0)
  {
    [(PLExpandedPlatterView *)self _configureHeaderContentViewIfNecessary];
    [(PLPlatterHeaderContentView *)self->_headerContentView setDate:dateCopy];
  }
}

- (void)setDateAllDay:(BOOL)day
{
  dayCopy = day;
  if ([(PLPlatterHeaderContentView *)self->_headerContentView isDateAllDay]!= day)
  {
    [(PLExpandedPlatterView *)self _configureHeaderContentViewIfNecessary];
    headerContentView = self->_headerContentView;

    [(PLPlatterHeaderContentView *)headerContentView setDateAllDay:dayCopy];
  }
}

- (void)setTimeZone:(id)zone
{
  zoneCopy = zone;
  timeZone = [(PLPlatterHeaderContentView *)self->_headerContentView timeZone];
  v5 = [zoneCopy isEqual:timeZone];

  if ((v5 & 1) == 0)
  {
    [(PLExpandedPlatterView *)self _configureHeaderContentViewIfNecessary];
    [(PLPlatterHeaderContentView *)self->_headerContentView setTimeZone:zoneCopy];
  }
}

- (void)setDateFormatStyle:(int64_t)style
{
  if ([(PLPlatterHeaderContentView *)self->_headerContentView dateFormatStyle]!= style)
  {
    headerContentView = self->_headerContentView;

    [(PLPlatterHeaderContentView *)headerContentView setDateFormatStyle:style];
  }
}

- (UIButton)utilityButton
{
  [(PLExpandedPlatterView *)self _configureHeaderContentViewIfNecessary];
  headerContentView = self->_headerContentView;

  return [(PLPlatterHeaderContentView *)headerContentView utilityButton];
}

- (UIControl)dismissControl
{
  [(PLExpandedPlatterView *)self _configureDismissControlIfNecessary];
  dismissControl = self->_dismissControl;

  return dismissControl;
}

- (UIEdgeInsets)dismissControlInsets
{
  _shouldReverseLayoutDirection = [(PLExpandedPlatterView *)self _shouldReverseLayoutDirection];
  v4 = self->_dismissControlPosition == 0;
  v5 = 0.0;
  if ((_shouldReverseLayoutDirection & v4) != 0)
  {
    v6 = 12.0;
  }

  else
  {
    v6 = 0.0;
  }

  if ((_shouldReverseLayoutDirection & v4) != 0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = 12.0;
  }

  v8 = 0.0;
  result.right = v7;
  result.bottom = v8;
  result.left = v6;
  result.top = v5;
  return result;
}

- (void)setDismissControlPosition:(int64_t)position
{
  if (self->_dismissControlPosition != position)
  {
    self->_dismissControlPosition = position;
    [(PLExpandedPlatterView *)self setNeedsLayout];
  }
}

- (void)setCustomContentSize:(CGSize)size
{
  if (size.width != self->_customContentSize.width || size.height != self->_customContentSize.height)
  {
    self->_customContentSize = size;
    [(PLExpandedPlatterView *)self setNeedsLayout];
  }
}

- (void)setActionsHidden:(BOOL)hidden
{
  if (self->_actionsHidden != hidden)
  {
    v13 = v7;
    v14 = v3;
    self->_actionsHidden = hidden;
    actionsBackgroundView = self->_actionsBackgroundView;
    if (hidden)
    {
      v11 = 0.0;
    }

    else
    {
      v11 = 1.0;
    }

    [(MTMaterialView *)actionsBackgroundView setAlpha:v11, v8, v13, v4, v14, v5];
    actionsView = self->_actionsView;

    [(PLInterfaceActionGroupView *)actionsView setAlpha:v11];
  }
}

- (void)setDismissControlEnabled:(BOOL)enabled
{
  if (self->_dismissControlEnabled != enabled)
  {
    self->_dismissControlEnabled = enabled;
    [(PLExpandedPlatterView *)self setNeedsLayout];
  }
}

- (void)setHeaderEnabled:(BOOL)enabled
{
  if (self->_headerEnabled != enabled)
  {
    self->_headerEnabled = enabled;
    [(PLExpandedPlatterView *)self setNeedsLayout];
  }
}

- (CGSize)sizeExcludingActions
{
  [(PLExpandedPlatterView *)self _sizeThatFitsContentExcludingActionsWithSize:self->_customContentSize.width, self->_customContentSize.height];
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)contentSizeExcludingActions
{
  [(PLExpandedPlatterView *)self _contentSizeThatFitsContentWithSizeExcludingActions:self->_customContentSize.width, self->_customContentSize.height];
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)actionsSizeThatFits:(CGSize)fits
{
  [(PLExpandedPlatterView *)self _actionsSizeThatFits:1 includingPadding:fits.width, fits.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGRect)frameForPlatterFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  [(PLExpandedPlatterView *)self _dismissControlTotalOutset];
  v9 = v8;
  v11 = v10;
  _shouldReverseLayoutDirection = [(PLExpandedPlatterView *)self _shouldReverseLayoutDirection];
  v13 = 0.0;
  if (_shouldReverseLayoutDirection)
  {
    v13 = v11;
  }

  v14 = x - v13;
  v15 = width + v11;
  [(PLExpandedPlatterView *)self actionsSizeThatFits:v15, height];
  v17 = height + v9 + v16;
  v18 = v14;
  v19 = y - v9;
  v20 = v15;
  result.size.height = v17;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

- (CGRect)platterFrameForFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  [(PLExpandedPlatterView *)self _dismissControlTotalOutset];
  v9 = v8;
  v11 = v10;
  _shouldReverseLayoutDirection = [(PLExpandedPlatterView *)self _shouldReverseLayoutDirection];
  v13 = 0.0;
  if (_shouldReverseLayoutDirection)
  {
    v13 = v11;
  }

  v14 = x + v13;
  v15 = width - v11;
  [(PLExpandedPlatterView *)self actionsSizeThatFits:v15, height];
  v17 = height - (v9 + v16);
  v18 = v14;
  v19 = y + v9;
  v20 = v15;
  result.size.height = v17;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

- (void)setInterfaceActions:(id)actions
{
  actionsCopy = actions;
  interfaceActions = [(PLExpandedPlatterView *)self interfaceActions];
  v5 = [actionsCopy isEqual:interfaceActions];

  if ((v5 & 1) == 0)
  {
    [(PLExpandedPlatterView *)self _configureActionViewIfNecessaryWithActions:actionsCopy];
    [(PLInterfaceActionGroupView *)self->_actionsView setActions:actionsCopy];
    [(PLExpandedPlatterView *)self setNeedsLayout];
  }
}

- (CGSize)_sizeThatFitsContentExcludingActionsWithSize:(CGSize)size
{
  width = size.width;
  [(PLExpandedPlatterView *)self _contentSizeThatFitsContentWithSizeExcludingActions:size.width, size.height];
  v6 = v5;
  v8 = v7;
  if ([(PLExpandedPlatterView *)self isDismissControlEnabled])
  {
    [(PLExpandedPlatterView *)self _dismissControlTotalOutset];
    v6 = v6 + v9;
    v8 = v8 + v10;
  }

  if ([(PLExpandedPlatterView *)self isHeaderEnabled])
  {
    [(PLExpandedPlatterView *)self _configureHeaderContentViewIfNecessary];
    [(PLPlatterHeaderContentView *)self->_headerContentView sizeThatFits:width, 0.0];
    v8 = v8 + v11;
  }

  v12 = v6;
  v13 = v8;
  result.height = v13;
  result.width = v12;
  return result;
}

- (CGSize)_actionsSizeThatFits:(CGSize)fits includingPadding:(BOOL)padding
{
  actionsView = self->_actionsView;
  if (actionsView)
  {
    paddingCopy = padding;
    width = fits.width;
    [(PLInterfaceActionGroupView *)actionsView sizeThatFits:fits.width, fits.height];
    if (v7 < width)
    {
      v7 = width;
    }

    if (paddingCopy)
    {
      v8 = v8 + 8.0;
    }
  }

  else
  {
    v7 = *MEMORY[0x277CBF3A8];
    v8 = *(MEMORY[0x277CBF3A8] + 8);
  }

  result.height = v8;
  result.width = v7;
  return result;
}

- (void)_configureHeaderBackgroundDefaultIfNecessary
{
  if ([(PLExpandedPlatterView *)self isHeaderEnabled]&& !self->_headerBackgroundView)
  {
    v3 = MEMORY[0x277D26718];
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = [v3 materialViewWithRecipeNamed:@"expandedPlatterHeaderBackground" inBundle:v4 options:0 initialWeighting:0 scaleAdjustment:1.0];
    headerBackgroundView = self->_headerBackgroundView;
    self->_headerBackgroundView = v5;

    layer = [(UIView *)self->_headerBackgroundView layer];
    [layer setMaskedCorners:3];

    [(UIView *)self->_headerBackgroundView _setContinuousCornerRadius:13.0];
    [(PLExpandedPlatterView *)self _configureHeaderContainerViewIfNecessary];
    headerContainerView = self->_headerContainerView;
    v9 = self->_headerBackgroundView;
    if (self->_headerContentView)
    {
      [(UIView *)headerContainerView insertSubview:v9 belowSubview:?];
    }

    else
    {
      [(UIView *)headerContainerView addSubview:v9];
    }

    v10 = objc_alloc_init(MEMORY[0x277D75D18]);
    headerTintView = self->_headerTintView;
    self->_headerTintView = v10;

    v12 = self->_headerTintView;
    systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
    [(UIView *)v12 setBackgroundColor:systemBackgroundColor];

    [(UIView *)self->_headerTintView setAlpha:0.65];
    layer2 = [(UIView *)self->_headerTintView layer];
    [layer2 setMaskedCorners:3];

    [(UIView *)self->_headerTintView _setContinuousCornerRadius:13.0];
    [(UIView *)self->_headerContainerView insertSubview:self->_headerTintView aboveSubview:self->_headerBackgroundView];
    [(UIView *)self->_headerKeyLineView removeFromSuperview];
    headerKeyLineView = self->_headerKeyLineView;
    self->_headerKeyLineView = 0;
  }
}

- (double)_headerKeyLineAlphaForContentOffset
{
  [(UIScrollView *)self->_scrollView contentOffset];
  v4 = v3;
  [(UIScrollView *)self->_scrollView contentInset];
  v6 = v4 <= -v5;
  result = 0.0;
  if (!v6)
  {
    return 1.0;
  }

  return result;
}

- (void)_updateHeaderKeyLineAlphaIfNecessaryAnimated:(BOOL)animated
{
  if (self->_headerKeyLineView)
  {
    animatedCopy = animated;
    [(PLExpandedPlatterView *)self _headerKeyLineAlphaForContentOffset];
    v6 = v5;
    [(UIView *)self->_headerKeyLineView alpha];
    if (vabdd_f64(v7, v6) > 2.22044605e-16)
    {
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __70__PLExpandedPlatterView__updateHeaderKeyLineAlphaIfNecessaryAnimated___block_invoke;
      v10[3] = &unk_2784253A0;
      v10[4] = self;
      *&v10[5] = v6;
      v8 = MEMORY[0x223D70F60](v10);
      v9 = v8;
      if (animatedCopy)
      {
        [MEMORY[0x277D75D18] animateWithDuration:v8 animations:0.25];
      }

      else
      {
        (*(v8 + 16))(v8);
      }
    }
  }
}

- (void)_configureHeaderBackgroundForReduceTransparencyIfNecessary
{
  if ([(PLExpandedPlatterView *)self isHeaderEnabled]&& !self->_headerBackgroundView)
  {
    v3 = objc_alloc_init(MEMORY[0x277D75D18]);
    headerBackgroundView = self->_headerBackgroundView;
    self->_headerBackgroundView = v3;

    v5 = self->_headerBackgroundView;
    _systemBackgroundColor = [MEMORY[0x277D75348] _systemBackgroundColor];
    [(UIView *)v5 setBackgroundColor:_systemBackgroundColor];

    layer = [(UIView *)self->_headerBackgroundView layer];
    [layer setMaskedCorners:3];

    [(UIView *)self->_headerBackgroundView _setContinuousCornerRadius:13.0];
    [(PLExpandedPlatterView *)self _configureHeaderContainerViewIfNecessary];
    headerContainerView = self->_headerContainerView;
    v9 = self->_headerBackgroundView;
    if (self->_headerContentView)
    {
      [(UIView *)headerContainerView insertSubview:v9 belowSubview:?];
    }

    else
    {
      [(UIView *)headerContainerView addSubview:v9];
    }

    v10 = objc_alloc_init(MEMORY[0x277D75D18]);
    headerKeyLineView = self->_headerKeyLineView;
    self->_headerKeyLineView = v10;

    v12 = self->_headerKeyLineView;
    separatorColor = [MEMORY[0x277D75348] separatorColor];
    [(UIView *)v12 setBackgroundColor:separatorColor];

    [(PLExpandedPlatterView *)self _updateHeaderKeyLineAlphaIfNecessaryAnimated:0];
    [(UIView *)self->_headerContainerView addSubview:self->_headerKeyLineView];
    [(UIView *)self->_headerTintView removeFromSuperview];
    headerTintView = self->_headerTintView;
    self->_headerTintView = 0;
  }
}

- (void)_configureHeaderBackgroundViewsIfNecessary
{
  if (UIAccessibilityIsReduceTransparencyEnabled())
  {

    [(PLExpandedPlatterView *)self _configureHeaderBackgroundForReduceTransparencyIfNecessary];
  }

  else
  {

    [(PLExpandedPlatterView *)self _configureHeaderBackgroundDefaultIfNecessary];
  }
}

- (void)_configureActionsBackgroundViewIfNecessaryWithActions:(id)actions
{
  if (!self->_actionsBackgroundView && [actions count])
  {
    [(PLExpandedPlatterView *)self _configureScrollViewContentViewIfNecessary];
    v4 = [MEMORY[0x277D26718] materialViewWithRecipe:1 options:1];
    v5 = MEMORY[0x277CCACA8];
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = [v5 stringWithFormat:@"%@.actions", v7];
    [v4 setGroupNameBase:v8];

    [v4 _setContinuousCornerRadius:13.0];
    actionsBackgroundView = self->_actionsBackgroundView;
    self->_actionsBackgroundView = v4;
    v10 = v4;

    [(UIView *)self->_scrollViewContentView addSubview:self->_actionsBackgroundView];
  }
}

- (void)_configureActionViewIfNecessaryWithActions:(id)actions
{
  v25 = *MEMORY[0x277D85DE8];
  actionsCopy = actions;
  v5 = actionsCopy;
  if (self->_actionsView || ![actionsCopy count])
  {
    if (![v5 count])
    {
      [(MTMaterialView *)self->_actionsBackgroundView removeFromSuperview];
      [(PLInterfaceActionGroupView *)self->_actionsView removeFromSuperview];
      actionsBackgroundView = self->_actionsBackgroundView;
      self->_actionsBackgroundView = 0;

      actionsView = self->_actionsView;
      self->_actionsView = 0;
    }
  }

  else
  {
    v18 = v5;
    [(PLExpandedPlatterView *)self _configureActionsBackgroundViewIfNecessaryWithActions:v5];
    v8 = objc_alloc_init(PLInterfaceActionGroupView);
    v9 = self->_actionsView;
    self->_actionsView = v8;

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    requiredVisualStyleCategories = [(PLInterfaceActionGroupView *)self->_actionsView requiredVisualStyleCategories];
    v11 = [requiredVisualStyleCategories countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v21;
      do
      {
        v14 = 0;
        do
        {
          if (*v21 != v13)
          {
            objc_enumerationMutation(requiredVisualStyleCategories);
          }

          integerValue = [*(*(&v20 + 1) + 8 * v14) integerValue];
          v16 = self->_actionsView;
          v17 = [(MTMaterialView *)self->_actionsBackgroundView visualStylingProviderForCategory:integerValue];
          [(PLInterfaceActionGroupView *)v16 setVisualStylingProvider:v17 forCategory:integerValue];

          ++v14;
        }

        while (v12 != v14);
        v12 = [requiredVisualStyleCategories countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v12);
    }

    [(PLInterfaceActionGroupView *)self->_actionsView setCornerRadius:13.0];
    v5 = v18;
    [(PLInterfaceActionGroupView *)self->_actionsView setActions:v18];
    [(UIView *)self->_scrollViewContentView insertSubview:self->_actionsView aboveSubview:self->_actionsBackgroundView];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __68__PLExpandedPlatterView__configureActionViewIfNecessaryWithActions___block_invoke;
    v19[3] = &unk_2784250D8;
    v19[4] = self;
    [MEMORY[0x277D75D18] performWithoutAnimation:v19];
  }
}

uint64_t __68__PLExpandedPlatterView__configureActionViewIfNecessaryWithActions___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _layoutActionsView];
  v2 = *(*(a1 + 32) + 480);

  return [v2 layoutIfNeeded];
}

- (CGRect)_headerFrame
{
  [(PLExpandedPlatterView *)self _boundsInsetHorizontallyFromDismissControlIfNecessary];
  v4 = v3;
  v6 = v5;
  [(PLPlatterHeaderContentView *)self->_headerContentView sizeThatFits:v7, v8];
  BSRectWithSize();
  v10 = v9;
  v12 = v11;
  if (!self->_dismissControlPosition)
  {
    [(PLExpandedPlatterView *)self _dismissControlTotalOutset];
    v6 = v6 + v13;
  }

  v14 = v4;
  v15 = v6;
  v16 = v10;
  v17 = v12;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (void)_layoutHeaderContainerViewWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if ([(PLExpandedPlatterView *)self isHeaderEnabled])
  {
    headerContainerView = self->_headerContainerView;

    [(UIView *)headerContainerView setFrame:x, y, width, height];
  }
}

- (void)_layoutHeaderContentViewWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if ([(PLExpandedPlatterView *)self isHeaderEnabled])
  {
    [(PLPlatterHeaderContentView *)self->_headerContentView setFrame:x, y, width, height];
  }

  if ([(PLExpandedPlatterView *)self isDismissControlEnabled])
  {
    headerContentView = self->_headerContentView;
    MidX = 0.0;
    if (!self->_dismissControlPosition)
    {
      [(UIControl *)self->_dismissControl frame];
      MidX = CGRectGetMidX(v11);
    }

    [(PLPlatterHeaderContentView *)headerContentView _setUtilityButtonHorizontalLayoutReference:MidX];
  }
}

- (void)_layoutHeaderBackgroundViewsWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if ([(PLExpandedPlatterView *)self isHeaderEnabled])
  {
    headerBackgroundView = self->_headerBackgroundView;
    if (headerBackgroundView)
    {
      [(UIView *)headerBackgroundView setFrame:x, y, width, height];
      [(UIView *)self->_headerTintView setFrame:x, y, width, height];
      if (self->_headerKeyLineView)
      {
        v15.origin.x = x;
        v15.origin.y = y;
        v15.size.width = width;
        v15.size.height = height;
        MinX = CGRectGetMinX(v15);
        v16.origin.x = x;
        v16.origin.y = y;
        v16.size.width = width;
        v16.size.height = height;
        MaxY = CGRectGetMaxY(v16);
        v17.origin.x = x;
        v17.origin.y = y;
        v17.size.width = width;
        v17.size.height = height;
        v11 = CGRectGetWidth(v17);
        v12 = PLMainScreenScale();
        headerKeyLineView = self->_headerKeyLineView;

        [(UIView *)headerKeyLineView setFrame:MinX, MaxY, v11, 1.0 / v12];
      }
    }
  }
}

- (void)_reduceTransparencyDidChange:(id)change
{
  [(PLExpandedPlatterView *)self _invalidateHeaderBackgroundViews];

  [(PLExpandedPlatterView *)self setNeedsLayout];
}

- (BOOL)respondsToSelector:(SEL)selector
{
  v8.receiver = self;
  v8.super_class = PLExpandedPlatterView;
  if ([(PLExpandedPlatterView *)&v8 respondsToSelector:?])
  {
    v5 = 1;
  }

  else if ([(UIView *)self pl_isScrollViewDelegateMethod:selector])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v5 = objc_opt_respondsToSelector();
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

- (void)forwardInvocation:(id)invocation
{
  invocationCopy = invocation;
  if (-[UIView pl_isScrollViewDelegateMethod:](self, "pl_isScrollViewDelegateMethod:", [invocationCopy selector]))
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      [invocationCopy invokeWithTarget:WeakRetained];
    }

    else
    {
      v6.receiver = self;
      v6.super_class = PLExpandedPlatterView;
      [(PLExpandedPlatterView *)&v6 forwardInvocation:invocationCopy];
    }
  }
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  [(PLExpandedPlatterView *)self _configureHeaderBackgroundViewsIfCanScroll];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __45__PLExpandedPlatterView_scrollViewDidScroll___block_invoke;
  v10[3] = &unk_2784250D8;
  v10[4] = self;
  [MEMORY[0x277D75D18] performWithoutAnimation:v10];
  [(PLExpandedPlatterView *)self _layoutTopRubberbandingView];
  [scrollCopy contentOffset];
  v6 = v5;
  [scrollCopy contentInset];
  [scrollCopy setClipsToBounds:v6 > -v7];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v9 = [WeakRetained associatedViewControllerDidAppearForExpandedPlatterView:self];
  }

  else
  {
    v9 = 0;
  }

  [(PLExpandedPlatterView *)self _updateHeaderKeyLineAlphaIfNecessaryAnimated:v9];
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained scrollViewDidScroll:scrollCopy];
  }
}

uint64_t __45__PLExpandedPlatterView_scrollViewDidScroll___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  [v1[51] bounds];

  return [v1 _layoutHeaderBackgroundViewsWithFrame:?];
}

- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  decelerateCopy = decelerate;
  draggingCopy = dragging;
  if (decelerateCopy)
  {
    [draggingCopy setClipsToBounds:1];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained scrollViewDidEndDragging:draggingCopy willDecelerate:decelerateCopy];
  }
}

- (BOOL)adjustsFontForContentSizeCategory
{
  [(PLExpandedPlatterView *)self _configureHeaderContentViewIfNecessary];
  headerContentView = self->_headerContentView;

  return [(PLPlatterHeaderContentView *)headerContentView adjustsFontForContentSizeCategory];
}

- (void)setAdjustsFontForContentSizeCategory:(BOOL)category
{
  categoryCopy = category;
  [(PLExpandedPlatterView *)self _configureHeaderContentViewIfNecessary];
  headerContentView = self->_headerContentView;

  [(PLPlatterHeaderContentView *)headerContentView setAdjustsFontForContentSizeCategory:categoryCopy];
}

- (id)pointerInteraction:(id)interaction styleForRegion:(id)region
{
  v4 = [objc_alloc(MEMORY[0x277D75B90]) initWithView:self->_dismissControl];
  v5 = [MEMORY[0x277D75878] effectWithPreview:v4];
  v6 = [MEMORY[0x277D75890] styleWithEffect:v5 shape:0];

  return v6;
}

- (PLExpandedPlatterViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_configureCustomContentView
{
  [(PLExpandedPlatterView *)self _configureMainContentViewIfNecessary];
  v3 = objc_alloc_init(MEMORY[0x277D75D18]);
  customContentView = self->_customContentView;
  self->_customContentView = v3;

  v5 = self->_customContentView;
  _systemBackgroundColor = [MEMORY[0x277D75348] _systemBackgroundColor];
  [(UIView *)v5 setBackgroundColor:_systemBackgroundColor];

  [(UIView *)self->_customContentView setClipsToBounds:1];
  [(UIView *)self->_customContentView setAutoresizesSubviews:1];
  layer = [(UIView *)self->_customContentView layer];
  [layer setMaskedCorners:12];

  [(UIView *)self->_customContentView _setContinuousCornerRadius:13.0];
  mainContentView = self->_mainContentView;
  v9 = self->_customContentView;

  [(UIView *)mainContentView addSubview:v9];
}

- (CGRect)_actionsViewFrame
{
  [(PLExpandedPlatterView *)self _boundsInsetHorizontallyFromDismissControlIfNecessary];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(PLExpandedPlatterView *)self _actionsSizeThatFits:0 includingPadding:v7, v9];
  BSRectWithSize();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  [(PLExpandedPlatterView *)self customContentSize];
  v20 = v14 + v19 + 8.0;
  if (self->_clipsVisibleContentToBounds)
  {
    v26.origin.x = v12;
    v26.origin.y = v20;
    v26.size.width = v16;
    v26.size.height = v18;
    CGRectGetMinY(v26);
    v27.origin.x = v4;
    v27.origin.y = v6;
    v27.size.width = v8;
    v27.size.height = v10;
    CGRectGetHeight(v27);
    v28.origin.x = v12;
    v28.origin.y = v20;
    v28.size.width = v16;
    v28.size.height = v18;
    CGRectGetHeight(v28);
  }

  PLMainScreenScale();

  UIRectIntegralWithScale();
  result.size.height = v24;
  result.size.width = v23;
  result.origin.y = v22;
  result.origin.x = v21;
  return result;
}

- (CGSize)_flexibleAreaSizeForBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  [(PLExpandedPlatterView *)self _dismissControlTotalOutset:bounds.origin.x];
  v7 = v6;
  [(PLPlatterHeaderContentView *)self->_headerContentView sizeThatFits:width, height];
  v9 = v8;
  [(PLExpandedPlatterView *)self _actionsSizeThatFits:1 includingPadding:width, height];
  v11 = height - (v7 + v9 + v10);
  v12 = width;
  result.height = v11;
  result.width = v12;
  return result;
}

@end