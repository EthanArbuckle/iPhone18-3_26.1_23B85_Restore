@interface WLLockScreenView
- (BOOL)_hasVisiblePageForIndex:(unint64_t)index;
- (BOOL)isPassFooterViewInGroup:(id)group;
- (CGRect)_footerViewFrameForPassView:(id)view;
- (WLLockScreenView)initWithFrame:(CGRect)frame;
- (WLLockScreenViewDataSource)dataSource;
- (WLLockScreenViewDelegate)delegate;
- (id)_createPassFooterConfigurationForPassView:(id)view;
- (id)_dequeueRecycledPage;
- (id)_visiblePageForIndex:(unint64_t)index;
- (unint64_t)currentIndex;
- (void)_configurePage:(id)page forIndex:(unint64_t)index;
- (void)_dismissIfAppropriate;
- (void)_handleDidReceiveSuccessfulTransaction:(id)transaction;
- (void)_refreshBrightnessForFrontmostPass;
- (void)_tilePagesEagerly:(BOOL)eagerly;
- (void)_updateAlphasAndBacklight;
- (void)_updateInformativeAssertion;
- (void)_updateNumberOfPages;
- (void)_updatePageControl;
- (void)_updatePageScrollViewContentSize;
- (void)_updatePassFooterViewWithReload:(BOOL)reload;
- (void)_updateVisiblePage;
- (void)dealloc;
- (void)didAppear;
- (void)invalidate;
- (void)layoutSubviews;
- (void)pageChanged;
- (void)reloadCardAtIndex:(unint64_t)index;
- (void)safeAreaInsetsDidChange;
- (void)scrollViewDidEndDecelerating:(id)decelerating;
- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
- (void)setDataSource:(id)source;
- (void)setOffscreen:(BOOL)offscreen;
- (void)setSubviewAlpha:(double)alpha;
- (void)willDisappear;
@end

@implementation WLLockScreenView

- (WLLockScreenView)initWithFrame:(CGRect)frame
{
  v25.receiver = self;
  v25.super_class = WLLockScreenView;
  v3 = [(WLLockScreenView *)&v25 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [UIView alloc];
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    v8 = [v4 initWithFrame:{CGRectZero.origin.x, y, width, height}];
    fadeView = v3->_fadeView;
    v3->_fadeView = v8;

    v10 = v3->_fadeView;
    v11 = +[PKPassGroupStackView backgroundColor];
    [(UIView *)v10 setBackgroundColor:v11];

    [(WLLockScreenView *)v3 addSubview:v3->_fadeView];
    v12 = [[UIScrollView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    verticalScrollView = v3->_verticalScrollView;
    v3->_verticalScrollView = v12;

    [(UIScrollView *)v3->_verticalScrollView setContentInsetAdjustmentBehavior:2];
    [(UIScrollView *)v3->_verticalScrollView setPagingEnabled:1];
    [(UIScrollView *)v3->_verticalScrollView setScrollsToTop:0];
    [(UIScrollView *)v3->_verticalScrollView setShowsVerticalScrollIndicator:0];
    [(UIScrollView *)v3->_verticalScrollView setShowsHorizontalScrollIndicator:0];
    [(UIScrollView *)v3->_verticalScrollView setDelegate:v3];
    [(WLLockScreenView *)v3 addSubview:v3->_verticalScrollView];
    v14 = [[UIScrollView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    pageScrollView = v3->_pageScrollView;
    v3->_pageScrollView = v14;

    [(UIScrollView *)v3->_pageScrollView setClipsToBounds:0];
    [(UIScrollView *)v3->_pageScrollView setPagingEnabled:1];
    [(UIScrollView *)v3->_pageScrollView setShowsVerticalScrollIndicator:0];
    [(UIScrollView *)v3->_pageScrollView setShowsHorizontalScrollIndicator:0];
    [(UIScrollView *)v3->_pageScrollView setDelegate:v3];
    [(UIScrollView *)v3->_verticalScrollView addSubview:v3->_pageScrollView];
    v16 = +[UIColor labelColor];
    v17 = [v16 colorWithAlphaComponent:0.3];
    v18 = [[UIPageControl alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    pageControl = v3->_pageControl;
    v3->_pageControl = v18;

    [(UIPageControl *)v3->_pageControl setCurrentPageIndicatorTintColor:v16];
    [(UIPageControl *)v3->_pageControl setPageIndicatorTintColor:v17];
    [(UIPageControl *)v3->_pageControl setHidesForSinglePage:1];
    [(UIPageControl *)v3->_pageControl addTarget:v3 action:"pageChanged" forControlEvents:4096];
    [(WLLockScreenView *)v3 addSubview:v3->_pageControl];
    v20 = objc_alloc_init(NSMutableSet);
    visiblePages = v3->_visiblePages;
    v3->_visiblePages = v20;

    v22 = objc_alloc_init(NSMutableSet);
    recycledPages = v3->_recycledPages;
    v3->_recycledPages = v22;
  }

  return v3;
}

- (void)dealloc
{
  if (self->_wantsBacklightRamping)
  {
    v3 = +[PKBacklightController sharedInstance];
    [v3 endRequestingBacklightRamping:self];
  }

  [(UIScrollView *)self->_verticalScrollView setDelegate:0];
  [(UIScrollView *)self->_pageScrollView setDelegate:0];
  v4.receiver = self;
  v4.super_class = WLLockScreenView;
  [(WLLockScreenView *)&v4 dealloc];
}

- (void)invalidate
{
  if (!self->_invalidated)
  {
    self->_invalidated = 1;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v3 = self->_visiblePages;
    v4 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v25;
      do
      {
        v7 = 0;
        do
        {
          if (*v25 != v6)
          {
            objc_enumerationMutation(v3);
          }

          [*(*(&v24 + 1) + 8 * v7) setPass:0];
          v7 = v7 + 1;
        }

        while (v5 != v7);
        v5 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v5);
    }

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v8 = self->_recycledPages;
    v9 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v20 objects:v28 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v21;
      do
      {
        v12 = 0;
        do
        {
          if (*v21 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [*(*(&v20 + 1) + 8 * v12) setPass:{0, v20}];
          v12 = v12 + 1;
        }

        while (v10 != v12);
        v10 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v20 objects:v28 count:16];
      }

      while (v10);
    }

    [(PKPassFooterView *)self->_passFooterView invalidate];
    passFooterView = self->_passFooterView;
    self->_passFooterView = 0;

    springboardInformativeAssertion = self->_springboardInformativeAssertion;
    if (springboardInformativeAssertion)
    {
      self->_springboardInformativeAssertion = 0;
      v15 = springboardInformativeAssertion;

      [(BSInvalidatable *)v15 invalidate];
    }

    informativeAssertion = self->_informativeAssertion;
    if (informativeAssertion)
    {
      v17 = informativeAssertion;
      v18 = self->_informativeAssertion;
      self->_informativeAssertion = 0;

      v19 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        sub_6FE4();
      }

      sub_43A8(v17);
    }
  }
}

- (void)setDataSource:(id)source
{
  objc_storeWeak(&self->_dataSource, source);

  [(WLLockScreenView *)self _updateNumberOfPages];
}

- (void)setSubviewAlpha:(double)alpha
{
  [(UIPageControl *)self->_pageControl setAlpha:?];
  if (self->_passFooterViewVisible)
  {
    passFooterView = self->_passFooterView;

    [(PKPassFooterView *)passFooterView setAlpha:alpha];
  }
}

- (void)setOffscreen:(BOOL)offscreen
{
  verticalScrollView = self->_verticalScrollView;
  if (offscreen)
  {
    [(WLLockScreenView *)self bounds];
    v5 = 0.0;
    CGAffineTransformMakeTranslation(&v8, 0.0, v6);
    [(UIScrollView *)verticalScrollView setTransform:&v8];
  }

  else
  {
    v7 = *&CGAffineTransformIdentity.c;
    *&v8.a = *&CGAffineTransformIdentity.a;
    *&v8.c = v7;
    *&v8.tx = *&CGAffineTransformIdentity.tx;
    [(UIScrollView *)verticalScrollView setTransform:&v8];
    v5 = 1.0;
  }

  [(UIView *)self->_fadeView setAlpha:v5];
  [(UIPageControl *)self->_pageControl setAlpha:v5];
}

- (void)didAppear
{
  v3 = +[PKSecureElement sharedSecureElement];
  secureElement = self->_secureElement;
  self->_secureElement = v3;

  [(WLLockScreenView *)self _updateNumberOfPages];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_visiblePages;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * v9);
        WeakRetained = objc_loadWeakRetained(&self->_dataSource);
        v12 = [WeakRetained diffForCardAtIndex:{objc_msgSend(v10, "index", v14)}];
        [v10 setDiff:v12];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  if (![(UIScrollView *)self->_pageScrollView isTracking]&& ![(UIScrollView *)self->_pageScrollView isDecelerating])
  {
    [(WLLockScreenView *)self _tilePagesEagerly:1];
  }

  self->_disappeared = 0;
  [(WLLockScreenView *)self _updateVisiblePage];
  [(WLLockScreenView *)self _updateInformativeAssertion];
  [(WLLockScreenView *)self _updatePassFooterViewIfNecessary];
  v13 = +[NSNotificationCenter defaultCenter];
  [v13 addObserver:self selector:"_handleDidReceiveSuccessfulTransaction:" name:PKPaymentDidReceiveSuccessfulTransactionNotification object:0];
}

- (void)willDisappear
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  self->_disappeared = 1;
  [(WLLockScreenView *)self _updateInformativeAssertion];
  [(WLLockScreenView *)self _updatePassFooterViewIfNecessary];
  secureElement = self->_secureElement;
  self->_secureElement = 0;
}

- (void)pageChanged
{
  currentPage = [(UIPageControl *)self->_pageControl currentPage];

  [(WLLockScreenView *)self _jumpToPage:currentPage animated:1];
}

- (void)layoutSubviews
{
  v45.receiver = self;
  v45.super_class = WLLockScreenView;
  [(WLLockScreenView *)&v45 layoutSubviews];
  [(WLLockScreenView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(UIView *)self->_fadeView setFrame:?];
  v43 = 0u;
  v44 = 0u;
  v42 = 0u;
  verticalScrollView = self->_verticalScrollView;
  if (verticalScrollView)
  {
    [(UIScrollView *)verticalScrollView transform];
    verticalScrollView = self->_verticalScrollView;
  }

  v12 = *&CGAffineTransformIdentity.c;
  v39 = *&CGAffineTransformIdentity.a;
  v40 = v12;
  v41 = *&CGAffineTransformIdentity.tx;
  [(UIScrollView *)verticalScrollView setTransform:&v39];
  [(UIScrollView *)self->_verticalScrollView setFrame:v4, v6, v8, v10];
  v13 = self->_verticalScrollView;
  v46.origin.x = v4;
  v46.origin.y = v6;
  v46.size.width = v8;
  v46.size.height = v10;
  Width = CGRectGetWidth(v46);
  v47.origin.x = v4;
  v47.origin.y = v6;
  v47.size.width = v8;
  v47.size.height = v10;
  Height = CGRectGetHeight(v47);
  [(UIScrollView *)v13 setContentSize:Width, Height + Height];
  v48.origin.x = v4;
  v48.origin.y = v6;
  v48.size.width = v8;
  v48.size.height = v10;
  [(UIScrollView *)self->_verticalScrollView setContentOffset:0.0, CGRectGetHeight(v48)];
  v16 = self->_verticalScrollView;
  v39 = v42;
  v40 = v43;
  v41 = v44;
  [(UIScrollView *)v16 setTransform:&v39];
  v17 = [(WLLockScreenView *)self _visiblePageForIndex:[(UIPageControl *)self->_pageControl currentPage]];
  passView = [v17 passView];
  [(UIScrollView *)self->_verticalScrollView bounds];
  v19 = CGRectGetWidth(v49) + 8.0;
  PKPassMaxFrontSize();
  v21 = v20;
  pass = [passView pass];
  if ([pass style] == &dword_8 + 1)
  {
    [(WLLockScreenView *)self safeAreaInsets];
    v24 = v23;
    [(UIScrollView *)self->_verticalScrollView contentOffset];
    v26 = v24 + v25 + 16.0;
    v27 = -4.0;
  }

  else
  {
    [(UIScrollView *)self->_verticalScrollView bounds];
    UIRectCenteredIntegralRect();
    v27 = v28;
    v30 = v29;
    v19 = v31;
    v21 = v32;
    v33 = PKUIGetMinScreenType();
    v34 = -30.0;
    if (v33 >= 4)
    {
      v34 = 0.0;
    }

    v26 = v30 + v34;
  }

  [(UIScrollView *)self->_pageScrollView setFrame:v27, v26, v19, v21];
  [(WLLockScreenView *)self _updatePageScrollViewContentSize];
  [(WLLockScreenView *)self _tilePagesEagerly:0];
  passFooterView = self->_passFooterView;
  configuration = [(PKPassFooterView *)passFooterView configuration];
  passView2 = [configuration passView];
  [(WLLockScreenView *)self _footerViewFrameForPassView:passView2];
  [(PKPassFooterView *)passFooterView setFrame:?];

  [(UIPageControl *)self->_pageControl sizeToFit];
  [(UIPageControl *)self->_pageControl frame];
  [(UIScrollView *)self->_pageScrollView frame];
  [(WLLockScreenView *)self convertPoint:self->_verticalScrollView fromView:?];
  [passView sizeOfFront];
  pageControl = self->_pageControl;
  UIRectCenteredXInRect();
  [(UIPageControl *)pageControl setFrame:?];
}

- (void)safeAreaInsetsDidChange
{
  v3.receiver = self;
  v3.super_class = WLLockScreenView;
  [(WLLockScreenView *)&v3 safeAreaInsetsDidChange];
  [(WLLockScreenView *)self setNeedsLayout];
}

- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  verticalScrollView = self->_verticalScrollView;
  if (verticalScrollView == dragging)
  {
    y = velocity.y;
    [(UIScrollView *)verticalScrollView bounds];
    if (y >= 0.0 || offset->y >= v8 / 1.5)
    {
      offset->x = 0.0;
      offset->y = v8;
    }

    else
    {
      *offset = CGPointZero;
    }
  }
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  if (self->_pageScrollView == scrollCopy)
  {
    [(WLLockScreenView *)self _tilePagesEagerly:0];
    if ([(UIScrollView *)self->_pageScrollView isDragging])
    {
      [(WLLockScreenView *)self _updatePageControl];
    }
  }

  else if ([(UIScrollView *)self->_verticalScrollView isDragging]|| [(UIScrollView *)self->_verticalScrollView isDecelerating])
  {
    [(WLLockScreenView *)self _updateAlphasAndBacklight];
  }
}

- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  draggingCopy = dragging;
  if (!decelerate)
  {
    v7 = draggingCopy;
    if (self->_pageScrollView == draggingCopy)
    {
      [(WLLockScreenView *)self _tilePagesEagerly:1];
      [(WLLockScreenView *)self _updatePageControl];
    }

    else
    {
      [(WLLockScreenView *)self _dismissIfAppropriate];
    }

    draggingCopy = v7;
  }
}

- (void)scrollViewDidEndDecelerating:(id)decelerating
{
  if (self->_pageScrollView == decelerating)
  {
    [(WLLockScreenView *)self _tilePagesEagerly:1];

    [(WLLockScreenView *)self _updatePageControl];
  }

  else
  {

    [(WLLockScreenView *)self _dismissIfAppropriate];
  }
}

- (void)_dismissIfAppropriate
{
  [(UIScrollView *)self->_verticalScrollView bounds];
  v4 = v3;
  [(UIScrollView *)self->_verticalScrollView contentOffset];
  if (v4 - v5 >= v4)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained dismissAnimated:0];
  }
}

- (void)_updateAlphasAndBacklight
{
  [(UIScrollView *)self->_verticalScrollView bounds];
  v4 = v3;
  [(UIScrollView *)self->_verticalScrollView contentOffset];
  v6 = v4 - v5;
  v7 = (v4 - v5) / v4;
  v8 = 1.0 - v7;
  v9 = 1.0 - v7 > 1.0 || 1.0 - v7 < 0.0;
  if (1.0 - v7 < 0.0 && 1.0 - v7 <= 1.0)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = 1.0;
  }

  if (v9)
  {
    v8 = v10;
  }

  [(WLLockScreenView *)self setFadeAlpha:v8];
  if (self->_passFooterViewVisible)
  {
    [(PKPassFooterView *)self->_passFooterView frame];
    if (1.0 - v6 / v11 > 1.0 || ([(PKPassFooterView *)self->_passFooterView frame], v13 = 0.0, v6 / v12 <= 1.0))
    {
      [(PKPassFooterView *)self->_passFooterView frame];
      v13 = 1.0;
      if (1.0 - v6 / v14 <= 1.0)
      {
        [(PKPassFooterView *)self->_passFooterView frame];
        v13 = 1.0 - v6 / v15;
      }
    }

    [(PKPassFooterView *)self->_passFooterView setAlpha:v13];
  }

  v16 = v7 > 1.0 || v7 < 0.0;
  if (v7 < 0.0 && v7 <= 1.0)
  {
    v17 = 0.0;
  }

  else
  {
    v17 = 1.0;
  }

  if (v16)
  {
    v7 = v17;
  }

  delegate = [(WLLockScreenView *)self delegate];
  [delegate updateBacklightWithProgress:v7];

  v19 = v6 / -80.0 + 1.0;
  v20 = v19 > 1.0 || v19 < 0.0;
  if (v19 < 0.0 && v19 <= 1.0)
  {
    v21 = 0.0;
  }

  else
  {
    v21 = 1.0;
  }

  if (v20)
  {
    v19 = v21;
  }

  [(WLLockScreenView *)self setSubviewAlpha:v19];
}

- (void)_updateNumberOfPages
{
  pageControl = self->_pageControl;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  -[UIPageControl setNumberOfPages:](pageControl, "setNumberOfPages:", [WeakRetained cardCount]);

  [(WLLockScreenView *)self _updatePageScrollViewContentSize];
  [(WLLockScreenView *)self _refreshBrightnessForFrontmostPass];

  [(WLLockScreenView *)self setNeedsLayout];
}

- (void)_updatePageScrollViewContentSize
{
  [(UIScrollView *)self->_pageScrollView bounds];
  v4 = v3;
  v6 = v5;
  [(UIScrollView *)self->_pageScrollView contentSize];
  v8 = v7;
  v10 = v9;
  v11 = v4 * [(UIPageControl *)self->_pageControl numberOfPages];
  if (v8 != v11 || v10 != v6)
  {
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    startIndex = [WeakRetained startIndex];

    [(UIScrollView *)self->_pageScrollView setContentSize:v11, v6];
    [(UIPageControl *)self->_pageControl setCurrentPage:startIndex];

    [(WLLockScreenView *)self _jumpToPage:startIndex];
  }
}

- (unint64_t)currentIndex
{
  [(UIScrollView *)self->_pageScrollView bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v13 = ([WeakRetained cardCount] - 1);
  v28.origin.x = v5;
  v28.origin.y = v7;
  v28.size.width = v9;
  v28.size.height = v11;
  MidX = CGRectGetMidX(v28);
  v29.origin.x = v5;
  v29.origin.y = v7;
  v29.size.width = v9;
  v29.size.height = v11;
  v15 = MidX / CGRectGetWidth(v29);
  v16 = floorf(v15);
  if (v16 <= v13)
  {
    v30.origin.x = v5;
    v30.origin.y = v7;
    v30.size.width = v9;
    v30.size.height = v11;
    v17 = CGRectGetMidX(v30);
    v31.origin.x = v5;
    v31.origin.y = v7;
    v31.size.width = v9;
    v31.size.height = v11;
    v18 = v17 / CGRectGetWidth(v31);
    v19 = 0.0;
    if (floorf(v18) < 0.0)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v2 = objc_loadWeakRetained(&self->_dataSource);
    [v2 cardCount];
  }

  v20 = objc_loadWeakRetained(&self->_dataSource);
  v21 = ([v20 cardCount] - 1);
  v32.origin.x = v5;
  v32.origin.y = v7;
  v32.size.width = v9;
  v32.size.height = v11;
  v22 = CGRectGetMidX(v32);
  v33.origin.x = v5;
  v33.origin.y = v7;
  v33.size.width = v9;
  v33.size.height = v11;
  v23 = v22 / CGRectGetWidth(v33);
  if (floorf(v23) <= v21)
  {
    v34.origin.x = v5;
    v34.origin.y = v7;
    v34.size.width = v9;
    v34.size.height = v11;
    v25 = CGRectGetMidX(v34);
    v35.origin.x = v5;
    v35.origin.y = v7;
    v35.size.width = v9;
    v35.size.height = v11;
    v26 = v25 / CGRectGetWidth(v35);
    v19 = floorf(v26);
  }

  else
  {
    v24 = objc_loadWeakRetained(&self->_dataSource);
    v19 = ([v24 cardCount] - 1);
  }

  if (v16 > v13)
  {
  }

LABEL_9:

  return v19;
}

- (void)reloadCardAtIndex:(unint64_t)index
{
  v5 = [(WLLockScreenView *)self _visiblePageForIndex:?];
  if (v5)
  {
    [(WLLockScreenView *)self _configurePage:v5 forIndex:index];
  }

  [(WLLockScreenView *)self _updateVisiblePage];
}

- (void)_updatePageControl
{
  currentIndex = [(WLLockScreenView *)self currentIndex];
  if ([(UIPageControl *)self->_pageControl currentPage]!= currentIndex)
  {
    v4 = [(WLLockScreenView *)self _visiblePageForIndex:[(UIPageControl *)self->_pageControl currentPage]];
    passView = [v4 passView];
    [passView setModalShadowVisibility:!self->_animatingPresentation animated:0.0];
    [(WLLockScreenView *)self _updateVisiblePage];
    [(WLLockScreenView *)self _updatePassFooterViewIfNecessary];
    v6 = [(WLLockScreenView *)self _visiblePageForIndex:currentIndex];
    passView2 = [v6 passView];
    [passView2 setModalShadowVisibility:!self->_animatingPresentation animated:1.0];
  }

  [(UIPageControl *)self->_pageControl setCurrentPage:currentIndex];

  [(WLLockScreenView *)self _refreshBrightnessForFrontmostPass];
}

- (id)_visiblePageForIndex:(unint64_t)index
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_visiblePages;
  v5 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 index] == index)
        {
          v10 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (BOOL)_hasVisiblePageForIndex:(unint64_t)index
{
  v3 = [(WLLockScreenView *)self _visiblePageForIndex:index];
  v4 = v3 != 0;

  return v4;
}

- (id)_dequeueRecycledPage
{
  anyObject = [(NSMutableSet *)self->_recycledPages anyObject];
  if (anyObject)
  {
    [(NSMutableSet *)self->_recycledPages removeObject:anyObject];
  }

  return anyObject;
}

- (void)_configurePage:(id)page forIndex:(unint64_t)index
{
  pageCopy = page;
  [pageCopy setIndex:index];
  if (!self->_invalidated)
  {
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    v7 = [WeakRetained cardAtIndex:index];
    [pageCopy setPass:v7];
  }

  passView = [pageCopy passView];
  currentPage = [(UIPageControl *)self->_pageControl currentPage];
  v10 = 0.0;
  if (currentPage == index)
  {
    v10 = 1.0;
  }

  [passView setModalShadowVisibility:0 animated:v10];

  [(UIScrollView *)self->_pageScrollView bounds];
  [pageCopy setFrame:{v11 * index, 0.0}];
}

- (void)_tilePagesEagerly:(BOOL)eagerly
{
  eagerlyCopy = eagerly;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  if ([WeakRetained cardCount])
  {
    v5 = objc_loadWeakRetained(&self->_dataSource);
    v6 = [v5 cardCount] - 1;
  }

  else
  {
    v6 = 0;
  }

  [(UIScrollView *)self->_pageScrollView bounds];
  x = v62.origin.x;
  y = v62.origin.y;
  width = v62.size.width;
  height = v62.size.height;
  v11 = v6;
  MinX = CGRectGetMinX(v62);
  v63.origin.x = x;
  v63.origin.y = y;
  v63.size.width = width;
  v63.size.height = height;
  v13 = MinX / CGRectGetWidth(v63);
  if (floorf(v13) < 0.0)
  {
    goto LABEL_50;
  }

  v64.origin.x = x;
  v64.origin.y = y;
  v64.size.width = width;
  v64.size.height = height;
  v14 = CGRectGetMinX(v64);
  v65.origin.x = x;
  v65.origin.y = y;
  v65.size.width = width;
  v65.size.height = height;
  v15 = v14 / CGRectGetWidth(v65);
  v16 = floorf(v15) <= v11;
  v17 = v6;
  if (v16)
  {
LABEL_50:
    v66.origin.x = x;
    v66.origin.y = y;
    v66.size.width = width;
    v66.size.height = height;
    v18 = CGRectGetMinX(v66);
    v67.origin.x = x;
    v67.origin.y = y;
    v67.size.width = width;
    v67.size.height = height;
    v19 = v18 / CGRectGetWidth(v67);
    v20 = floorf(v19);
    v17 = 0.0;
    if (v20 >= 0.0)
    {
      v68.origin.x = x;
      v68.origin.y = y;
      v68.size.width = width;
      v68.size.height = height;
      v21 = CGRectGetMinX(v68);
      v69.origin.x = x;
      v69.origin.y = y;
      v69.size.width = width;
      v69.size.height = height;
      v22 = v21 / CGRectGetWidth(v69);
      v17 = floorf(v22);
    }
  }

  v23 = v17;
  v70.origin.x = x;
  v70.origin.y = y;
  v70.size.width = width;
  v70.size.height = height;
  v24 = CGRectGetMaxX(v70) + -1.0;
  v71.origin.x = x;
  v71.origin.y = y;
  v71.size.width = width;
  v71.size.height = height;
  v25 = v24 / CGRectGetWidth(v71);
  if (floorf(v25) < 0.0)
  {
    goto LABEL_51;
  }

  v72.origin.x = x;
  v72.origin.y = y;
  v72.size.width = width;
  v72.size.height = height;
  v26 = CGRectGetMaxX(v72) + -1.0;
  v73.origin.x = x;
  v73.origin.y = y;
  v73.size.width = width;
  v73.size.height = height;
  v27 = v26 / CGRectGetWidth(v73);
  if (floorf(v27) <= v11)
  {
LABEL_51:
    v74.origin.x = x;
    v74.origin.y = y;
    v74.size.width = width;
    v74.size.height = height;
    v28 = CGRectGetMaxX(v74) + -1.0;
    v75.origin.x = x;
    v75.origin.y = y;
    v75.size.width = width;
    v75.size.height = height;
    v29 = v28 / CGRectGetWidth(v75);
    v11 = 0.0;
    if (floorf(v29) >= 0.0)
    {
      v76.origin.x = x;
      v76.origin.y = y;
      v76.size.width = width;
      v76.size.height = height;
      v30 = CGRectGetMaxX(v76) + -1.0;
      v77.origin.x = x;
      v77.origin.y = y;
      v77.size.width = width;
      v77.size.height = height;
      v31 = v30 / CGRectGetWidth(v77);
      v11 = floorf(v31);
    }
  }

  v32 = v11;
  v50 = v11;
  v33 = v23 - 4;
  if (v23 < 4)
  {
    v33 = 0;
  }

  if (v6 >= v33)
  {
    v34 = v33;
  }

  else
  {
    v34 = v6;
  }

  if (v6 >= v32 + 4)
  {
    v35 = v32 + 4;
  }

  else
  {
    v35 = v6;
  }

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v36 = self->_visiblePages;
  v37 = [(NSMutableSet *)v36 countByEnumeratingWithState:&v56 objects:v61 count:16];
  if (v37)
  {
    v38 = v37;
    v39 = *v57;
    do
    {
      for (i = 0; i != v38; i = i + 1)
      {
        if (*v57 != v39)
        {
          objc_enumerationMutation(v36);
        }

        v41 = *(*(&v56 + 1) + 8 * i);
        if ([v41 index] < v34 || objc_msgSend(v41, "index") > v35)
        {
          [v41 prepareForReuse];
          [(NSMutableSet *)self->_recycledPages addObject:v41];
          [v41 removeFromSuperview];
        }
      }

      v38 = [(NSMutableSet *)v36 countByEnumeratingWithState:&v56 objects:v61 count:16];
    }

    while (v38);
  }

  [(NSMutableSet *)self->_visiblePages minusSet:self->_recycledPages];
  if (eagerlyCopy)
  {
    v23 = v34;
    v42 = v35;
  }

  else
  {
    v42 = v50;
  }

  for (; v23 <= v42; ++v23)
  {
    if (![(WLLockScreenView *)self _hasVisiblePageForIndex:v23, v50])
    {
      _dequeueRecycledPage = [(WLLockScreenView *)self _dequeueRecycledPage];
      if (!_dequeueRecycledPage)
      {
        _dequeueRecycledPage = objc_alloc_init(WLLockScreenCardView);
      }

      [(WLLockScreenView *)self _configurePage:_dequeueRecycledPage forIndex:v23];
      [(UIScrollView *)self->_pageScrollView addSubview:_dequeueRecycledPage];
      [(NSMutableSet *)self->_visiblePages addObject:_dequeueRecycledPage];
    }
  }

  currentIndex = [(WLLockScreenView *)self currentIndex];
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v45 = self->_visiblePages;
  v46 = [(NSMutableSet *)v45 countByEnumeratingWithState:&v52 objects:v60 count:16];
  if (v46)
  {
    v47 = v46;
    v48 = *v53;
    do
    {
      for (j = 0; j != v47; j = j + 1)
      {
        if (*v53 != v48)
        {
          objc_enumerationMutation(v45);
        }

        [*(*(&v52 + 1) + 8 * j) setModallyPresented:{objc_msgSend(*(*(&v52 + 1) + 8 * j), "index") == currentIndex}];
      }

      v47 = [(NSMutableSet *)v45 countByEnumeratingWithState:&v52 objects:v60 count:16];
    }

    while (v47);
  }
}

- (BOOL)isPassFooterViewInGroup:(id)group
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v4 = [WeakRetained cardCount] > 1;

  return v4;
}

- (void)_refreshBrightnessForFrontmostPass
{
  v15 = [(WLLockScreenView *)self _visiblePageForIndex:[(WLLockScreenView *)self currentIndex]];
  pass = [v15 pass];
  shouldRampBacklight = [pass shouldRampBacklight];
  if (shouldRampBacklight)
  {
    p_wantsBacklightRamping = &self->_wantsBacklightRamping;
    if (self->_wantsBacklightRamping)
    {
      LOBYTE(v6) = 1;
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  v6 = shouldRampBacklight;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  cardCount = [WeakRetained cardCount];

  if (cardCount)
  {
    v9 = 0;
    do
    {
      if (v9 != [(WLLockScreenView *)self currentIndex])
      {
        v10 = objc_loadWeakRetained(&self->_dataSource);
        v11 = [v10 cardAtIndex:v9];

        if ([v11 shouldRampBacklight])
        {
          p_wantsBacklightRamping = &self->_wantsBacklightRamping;
          if (self->_wantsBacklightRamping)
          {
            LOBYTE(v6) = 1;
            pass = v11;
            goto LABEL_21;
          }

          pass = v11;
          goto LABEL_19;
        }

        pass = v11;
      }

      ++v9;
      v12 = objc_loadWeakRetained(&self->_dataSource);
      cardCount2 = [v12 cardCount];
    }

    while (v9 < cardCount2);
    p_wantsBacklightRamping = &self->_wantsBacklightRamping;
    if (self->_wantsBacklightRamping != (v6 ^ 1))
    {
      goto LABEL_21;
    }

    if (!v6)
    {
      goto LABEL_14;
    }

LABEL_19:
    v14 = +[PKBacklightController sharedInstance];
    [v14 beginRequestingBacklightRamping:self];
    LOBYTE(v6) = 1;
    goto LABEL_20;
  }

  p_wantsBacklightRamping = &self->_wantsBacklightRamping;
  if (self->_wantsBacklightRamping != (v6 ^ 1))
  {
    LOBYTE(v6) = 0;
    goto LABEL_21;
  }

LABEL_14:
  v14 = +[PKBacklightController sharedInstance];
  [v14 endRequestingBacklightRamping:self];
  LOBYTE(v6) = 0;
LABEL_20:

LABEL_21:
  *p_wantsBacklightRamping = v6;
}

- (void)_updateVisiblePage
{
  v3 = [(WLLockScreenView *)self _visiblePageForIndex:[(WLLockScreenView *)self currentIndex]];
  if (self->_visiblePage != v3)
  {
    informativeAssertion = self->_informativeAssertion;
    if (informativeAssertion)
    {
      v5 = informativeAssertion;
      v6 = self->_informativeAssertion;
      self->_informativeAssertion = 0;

      v7 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        sub_6FE4();
      }

      sub_43A8(v5);
    }

    objc_storeStrong(&self->_visiblePage, v3);
    if (self->_visiblePage)
    {
      [(WLLockScreenView *)self _updateInformativeAssertion];
    }
  }
}

- (void)_updateInformativeAssertion
{
  if (self->_invalidated || self->_disappeared || (-[WLLockScreenCardView passView](self->_visiblePage, "passView"), v3 = objc_claimAutoreleasedReturnValue(), [v3 pass], v4 = objc_claimAutoreleasedReturnValue(), v3, !v4))
  {
    springboardInformativeAssertion = self->_springboardInformativeAssertion;
    if (springboardInformativeAssertion)
    {
      self->_springboardInformativeAssertion = 0;
      v12 = springboardInformativeAssertion;

      [(BSInvalidatable *)v12 invalidate];
    }

    informativeAssertion = self->_informativeAssertion;
    if (!informativeAssertion)
    {
      v4 = 0;
      goto LABEL_20;
    }

    uniqueID = informativeAssertion;
    v15 = self->_informativeAssertion;
    self->_informativeAssertion = 0;

    v16 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      sub_6FE4();
    }

    sub_43A8(uniqueID);
    v4 = 0;
    goto LABEL_14;
  }

  if (!self->_springboardInformativeAssertion)
  {
    v5 = SBUIGetUserAgent();
    v6 = [v5 acquireCaptureButtonSuppressionAssertionWithOptions:1 reason:@"WLLockScreenView"];
    v7 = self->_springboardInformativeAssertion;
    self->_springboardInformativeAssertion = v6;

    v8 = self->_springboardInformativeAssertion;
    v9 = PKLogFacilityTypeGetObject();
    v10 = v9;
    if (v8)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        sub_704C();
      }
    }

    else if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134349056;
      selfCopy2 = self;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "WLLockScreenView (%{public}p): failed to acquire presented springboard informative assertion.", buf, 0xCu);
    }
  }

  if (!self->_informativeAssertion)
  {
    uniqueID = [v4 uniqueID];
    pKGetClassNFHardwareManager() = [PKGetClassNFHardwareManager() sharedHardwareManagerWithNoUI];
    v25[0] = @"NFAssertionType";
    v25[1] = @"passID";
    v26[0] = &off_108E0;
    if (uniqueID)
    {
      v24 = uniqueID;
      v18 = [NSArray arrayWithObjects:&v24 count:1];
    }

    else
    {
      v18 = &__NSArray0__struct;
    }

    v26[1] = v18;
    v19 = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:2];
    v20 = [pKGetClassNFHardwareManager() queueAssertionWithParams:v19 completion:0];

    if (uniqueID)
    {
    }

    v21 = PKLogFacilityTypeGetObject();
    v22 = v21;
    if (v20)
    {
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        sub_70B4();
      }

      v23 = v20;
      v22 = self->_informativeAssertion;
      self->_informativeAssertion = v23;
    }

    else if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      selfCopy2 = self;
      _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEFAULT, "WLLockScreenView (%p): failed to acquire presented nearfield informative assertion.", buf, 0xCu);
    }

LABEL_14:
  }

LABEL_20:
}

- (id)_createPassFooterConfigurationForPassView:(id)view
{
  if (!view)
  {
    return 0;
  }

  viewCopy = view;
  pass = [viewCopy pass];
  if (PKValueAddedServicesEnabledForPass())
  {
    if ([(PKSecureElement *)self->_secureElement isInRestrictedMode])
    {
      v6 = 3;
    }

    else
    {
      v6 = 2;
    }
  }

  else
  {
    v6 = 0;
  }

  v8 = [[PKPassFooterViewConfiguration alloc] initWithPassView:viewCopy state:v6];

  return v8;
}

- (void)_updatePassFooterViewWithReload:(BOOL)reload
{
  reloadCopy = reload;
  v5 = [(WLLockScreenView *)self _visiblePageForIndex:[(WLLockScreenView *)self currentIndex]];
  passView = [v5 passView];

  v6 = [(WLLockScreenView *)self _createPassFooterConfigurationForPassView:passView];
  v7 = v6;
  if (self->_disappeared || self->_transacted || self->_invalidated)
  {

    v8 = 0;
    v9 = 0;
    v7 = 0;
    reloadCopy = 0;
  }

  else
  {
    v8 = 1;
    v9 = 1;
  }

  passFooterViewVisible = self->_passFooterViewVisible;
  [(PKPassFooterView *)self->_passFooterView alpha];
  v12 = v11;
  configuration = [(PKPassFooterView *)self->_passFooterView configuration];
  v14 = PKEqualObjects();

  if ((v9 & reloadCopy & 1) != 0 || (passFooterViewVisible == v8 ? (v15 = v14 == 0) : (v15 = 1), !v15 ? (v16 = v12 == 1.0) : (v16 = 0), !v16))
  {
    [(WLLockScreenView *)self layoutIfNeeded];
    self->_passFooterViewVisible = v8;
    passFooterView = self->_passFooterView;
    if (passFooterViewVisible == v8 || passFooterView == 0)
    {
      if (v9)
      {
        if (!passFooterView)
        {
          goto LABEL_24;
        }

        goto LABEL_20;
      }
    }

    else
    {
      if (v9)
      {
        [(PKPassFooterView *)passFooterView willBecomeVisibleAnimated:1];
        if (!self->_passFooterView)
        {
LABEL_24:
          v19 = objc_alloc_init(PKPassFooterView);
          v20 = self->_passFooterView;
          self->_passFooterView = v19;

          [(PKPassFooterView *)self->_passFooterView setDelegate:self];
          [(PKPassFooterView *)self->_passFooterView setAlpha:0.0];
          [(WLLockScreenView *)self insertSubview:self->_passFooterView aboveSubview:self->_verticalScrollView];
          [(WLLockScreenView *)self layoutIfNeeded];
          [(PKPassFooterView *)self->_passFooterView willBecomeVisibleAnimated:1];
          if ((v14 & 1) == 0)
          {
            goto LABEL_25;
          }

          goto LABEL_44;
        }

LABEL_20:
        if ((v14 & 1) == 0)
        {
LABEL_25:
          v21 = PKLogFacilityTypeGetObject();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            v22 = self->_passFooterView;
            *buf = 134349312;
            selfCopy = self;
            v37 = 2050;
            v38 = v22;
            _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEFAULT, "PKPassGroupStackView (%{public}p): configuring PKPassFooterView %{public}p.", buf, 0x16u);
          }

          if (v12 > 0.0)
          {
            v23 = passFooterViewVisible;
          }

          else
          {
            v23 = 0;
          }

          v24 = (v23 & 1) != 0 || self->_passFooterViewOutstandingAnimations != 0;
          if (reloadCopy)
          {
            v25 = 2;
          }

          else
          {
            v25 = 0;
          }

          if (self->_externalizedAuthenticationContext)
          {
            v26 = objc_alloc_init(PKPassPresentationContext);
            [v26 setExternalizedAuthenticationContext:self->_externalizedAuthenticationContext];
            externalizedAuthenticationContext = self->_externalizedAuthenticationContext;
            self->_externalizedAuthenticationContext = 0;
          }

          else
          {
            v26 = 0;
          }

          [(PKPassFooterView *)self->_passFooterView configureWithConfiguration:v7 context:v26 options:v24 | v25];
        }

LABEL_44:
        ++self->_passFooterViewOutstandingAnimations;
        [(WLLockScreenView *)self setNeedsLayout];
        if (passFooterViewVisible != v8)
        {
          [(PKPassFooterView *)self->_passFooterView willBecomeVisibleAnimated:1];
        }

LABEL_46:
        v34[0] = _NSConcreteStackBlock;
        v34[1] = 3221225472;
        v34[2] = sub_6ADC;
        v34[3] = &unk_10570;
        v34[4] = self;
        v28 = objc_retainBlock(v34);
        objc_initWeak(buf, self);
        v31[0] = _NSConcreteStackBlock;
        v31[1] = 3221225472;
        v31[2] = sub_6B28;
        v31[3] = &unk_106E0;
        objc_copyWeak(&v33, buf);
        v32 = &stru_106B8;
        [UIView animateWithDuration:6 delay:v28 options:v31 animations:0.25 completion:0.0];

        objc_destroyWeak(&v33);
        objc_destroyWeak(buf);

        goto LABEL_47;
      }

      [(PKPassFooterView *)passFooterView willBecomeHiddenAnimated:1];
    }

    ++self->_passFooterViewOutstandingAnimations;
    if (passFooterViewVisible != v8)
    {
      [(PKPassFooterView *)self->_passFooterView willBecomeHiddenAnimated:1];
    }

    goto LABEL_46;
  }

LABEL_47:
}

- (CGRect)_footerViewFrameForPassView:(id)view
{
  pass = [view pass];
  [pass style];

  [(UIScrollView *)self->_pageScrollView frame];
  [(WLLockScreenView *)self convertRect:self->_verticalScrollView fromView:?];
  MinY = CGRectGetMinY(v17);
  PKPassViewFrontSize();
  v7 = MinY + v6;
  PKPassHeightAdjustmentForStyle();
  v9 = v7 - v8;
  [(WLLockScreenView *)self bounds];
  memset(&remainder, 0, sizeof(remainder));
  memset(&v15, 0, sizeof(v15));
  CGRectDivide(v18, &v15, &remainder, v9, CGRectMinYEdge);
  [(WLLockScreenView *)self safeAreaInsets];
  CGRectDivide(remainder, &v15, &remainder, v10, CGRectMaxYEdge);
  PKPassFrontFaceContentSize();
  PKSizeAlignedInRect();
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (void)_handleDidReceiveSuccessfulTransaction:(id)transaction
{
  transactionCopy = transaction;
  object = [transactionCopy object];
  if ([(PKPassFooterView *)self->_passFooterView isViewCurrentContentView:object])
  {
    userInfo = [transactionCopy userInfo];
    v6 = [userInfo PKBoolForKey:PKPaymentDidReceiveSuccessfulTransactionPersistUI];

    if ((v6 & 1) == 0)
    {
      self->_transacted = 1;
      [(WLLockScreenView *)self _updatePassFooterViewIfNecessary];
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained dismissAnimated:1];
    }
  }
}

- (WLLockScreenViewDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (WLLockScreenViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end