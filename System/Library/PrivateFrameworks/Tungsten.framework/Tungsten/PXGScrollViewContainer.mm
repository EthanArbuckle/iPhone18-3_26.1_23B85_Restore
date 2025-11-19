@interface PXGScrollViewContainer
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (CGPoint)convertHostedChildCenter:(CGPoint)a3 fromGlobalLayer:(id)a4;
- (CGRect)clippingRect;
- (PXGScrollViewContainer)initWithFrame:(CGRect)a3;
- (id)focusItemsForScrollViewController:(id)a3 inRect:(CGRect)a4;
- (void)_invalidateScrollViewController;
- (void)_invalidateScrollViewDecelerationRate;
- (void)_invalidateScrollViewModel;
- (void)_updateScrollViewController;
- (void)_updateScrollViewDecelerationRate;
- (void)_updateScrollViewModel;
- (void)_willLayout;
- (void)layoutSubviews;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)scrollViewControllerDidEndScrolling:(id)a3;
- (void)scrollViewControllerDidScroll:(id)a3;
- (void)scrollViewControllerWillBeginScrolling:(id)a3;
- (void)scrollViewControllerWillEndScrolling:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5 currentContentOffset:(CGPoint)a6;
- (void)setAlpha:(double)a3;
- (void)setDelegate:(id)a3;
- (void)setScrollViewModel:(id)a3;
- (void)setUserData:(id)a3;
@end

@implementation PXGScrollViewContainer

- (CGRect)clippingRect
{
  x = self->_clippingRect.origin.x;
  y = self->_clippingRect.origin.y;
  width = self->_clippingRect.size.width;
  height = self->_clippingRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (id)focusItemsForScrollViewController:(id)a3 inRect:(CGRect)a4
{
  if (self->_delegateRespondsTo.focusItemsInRect)
  {
    height = a4.size.height;
    width = a4.size.width;
    y = a4.origin.y;
    x = a4.origin.x;
    v9 = [(PXGScrollViewContainer *)self delegate];
    v10 = [v9 focusItemsForScrollViewContainer:self inRect:{x, y, width, height}];
  }

  else
  {
    v10 = MEMORY[0x277CBEBF8];
  }

  return v10;
}

- (void)scrollViewControllerDidEndScrolling:(id)a3
{
  if (self->_delegateRespondsTo.didEndScrolling)
  {
    v5 = [(PXGScrollViewContainer *)self delegate];
    [v5 scrollViewContainerDidEndScrolling:self];
  }
}

- (void)scrollViewControllerWillEndScrolling:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5 currentContentOffset:(CGPoint)a6
{
  if (self->_delegateRespondsTo.willEndScrollingWithVelocityTargetContentOffsetCurrentContentOffset)
  {
    y = a6.y;
    x = a6.x;
    v9 = a4.y;
    v10 = a4.x;
    v12 = a3;
    v13 = [(PXGScrollViewContainer *)self shouldFlipContentOffset];
    [v12 contentBounds];

    [(PXGScrollViewContainer *)self bounds];
    if (v13)
    {
      PXContentOffsetFlippedHorizontally();
      a5->x = v14;
      a5->y = v15;
      PXVelocityFlippedHorizontally();
      v17 = v16;
      v19 = v18;
      v20 = [(PXGScrollViewContainer *)self delegate];
      [v20 scrollViewContainerWillEndScrolling:self withVelocity:a5 targetContentOffset:v17 currentContentOffset:{v19, x, y}];

      PXContentOffsetFlippedHorizontally();
      a5->x = v21;
      a5->y = v22;
    }

    else
    {
      v23 = [(PXGScrollViewContainer *)self delegate];
      [v23 scrollViewContainerWillEndScrolling:self withVelocity:a5 targetContentOffset:v10 currentContentOffset:{v9, x, y}];
    }
  }
}

- (void)scrollViewControllerDidScroll:(id)a3
{
  if (self->_delegateRespondsTo.didScroll)
  {
    v4 = [(PXGScrollViewContainer *)self delegate];
    [v4 scrollViewContainerDidScroll:self];
  }

  [(PXGScrollViewContainer *)self _invalidateScrollViewModel];
}

- (void)scrollViewControllerWillBeginScrolling:(id)a3
{
  if (self->_delegateRespondsTo.willBeginScrolling)
  {
    v5 = [(PXGScrollViewContainer *)self delegate];
    [v5 scrollViewContainerWillBeginScrolling:self];
  }
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v6 = a4;
  v9 = a3;
  if (ScrollViewModelObservationContext_1474 == a5)
  {
    v13 = v9;
    v10 = [v9 changesOptions];
    if ((v6 & 0xFFE3) != 0 && (v10 & 2) == 0)
    {
      [(PXGScrollViewContainer *)self _invalidateScrollViewController];
    }

    if ((v6 & 8) != 0)
    {
      [(PXGScrollViewContainer *)self _invalidateScrollViewDecelerationRate];
    }

    v9 = v13;
    if ((v6 & 0x10) != 0)
    {
      v11 = [(PXGScrollViewContainer *)self scrollViewController];
      [v11 stopScrollingAndZoomingAnimations];

      goto LABEL_12;
    }
  }

  else
  {
    if (SpeedometerObservationContext != a5)
    {
      v12 = [MEMORY[0x277CCA890] currentHandler];
      [v12 handleFailureInMethod:a2 object:self file:@"PXGScrollViewContainer.m" lineNumber:334 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    if ((v6 & 2) != 0)
    {
      v13 = v9;
      [(PXGScrollViewContainer *)self _invalidateScrollViewModel];
LABEL_12:
      v9 = v13;
    }
  }
}

- (CGPoint)convertHostedChildCenter:(CGPoint)a3 fromGlobalLayer:(id)a4
{
  y = a3.y;
  x = a3.x;
  scrollViewController = self->_scrollViewController;
  v7 = a4;
  v8 = [(PXScrollViewController *)scrollViewController scrollView];
  v9 = [v8 layer];

  [v9 convertPoint:v7 fromLayer:{x, y}];
  v11 = v10;
  v13 = v12;

  v14 = v11;
  v15 = v13;
  result.y = v15;
  result.x = v14;
  return result;
}

- (void)setUserData:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_userData != v4)
  {
    v11 = v4;
    v6 = [(PXGScrollViewContainerConfiguration *)v4 isEqual:?];
    v5 = v11;
    if (!v6)
    {
      v7 = [(PXGScrollViewContainerConfiguration *)v11 copy];
      userData = self->_userData;
      self->_userData = v7;

      v9 = [(PXGScrollViewContainerConfiguration *)self->_userData scrollViewModel];
      [(PXGScrollViewContainer *)self setScrollViewModel:v9];

      v10 = [(PXGScrollViewContainerConfiguration *)self->_userData delegate];
      [(PXGScrollViewContainer *)self setDelegate:v10];

      v5 = v11;
    }
  }
}

- (void)_updateScrollViewModel
{
  v3 = [(PXGScrollViewContainer *)self scrollViewModel];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __48__PXGScrollViewContainer__updateScrollViewModel__block_invoke;
  v4[3] = &unk_2782A7E80;
  v4[4] = self;
  [v3 performChanges:v4 options:2];
}

void __48__PXGScrollViewContainer__updateScrollViewModel__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v12 = [v3 scrollViewController];
  [v12 visibleOrigin];
  v6 = v5;
  v8 = v7;
  if ([*(a1 + 32) shouldFlipContentOffset])
  {
    [v12 visibleOrigin];
    [v12 contentBounds];
    [*(a1 + 32) bounds];
    PXContentOffsetFlippedHorizontally();
    v6 = v9;
    v8 = v10;
  }

  [v4 setContentOffset:{v6, v8}];
  v11 = [*(a1 + 32) speedometer];
  [v4 setScrollRegime:{objc_msgSend(v11, "regime")}];
}

- (void)_invalidateScrollViewModel
{
  if (!self->_isUpdatingScrollViewController)
  {
    [(PXGScrollViewContainer *)self _updateScrollViewModel];
  }
}

- (void)_updateScrollViewDecelerationRate
{
  v8 = [(PXGScrollViewContainer *)self scrollViewModel];
  v3 = [v8 scrollDecelerationRate];
  if (v3 >= 2)
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"PXScrollViewDecelerationRate PXScrollViewDecelerationRateFromPXGScrollDecelerationRate(PXGScrollDecelerationRate)"];
    [v6 handleFailureInFunction:v7 file:@"PXGScrollViewContainer.m" lineNumber:29 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  v4 = v3;
  v5 = [(PXGScrollViewContainer *)self scrollViewController];
  [v5 setDecelerationRate:v4];
}

- (void)_invalidateScrollViewDecelerationRate
{
  v2 = [(PXGScrollViewContainer *)self updater];
  [v2 setNeedsUpdateOf:sel__updateScrollViewDecelerationRate];
}

- (void)_updateScrollViewController
{
  v27 = [(PXGScrollViewContainer *)self scrollViewController];
  v3 = [(PXGScrollViewContainer *)self scrollViewModel];
  self->_isUpdatingScrollViewController = 1;
  [v3 contentSize];
  PXRectWithOriginAndSize();
  [v27 setContentBounds:?];
  [v3 contentOffset];
  v5 = v4;
  v7 = v6;
  if ([(PXGScrollViewContainer *)self shouldFlipContentOffset])
  {
    [v3 contentOffset];
    [v27 contentBounds];
    [(PXGScrollViewContainer *)self bounds];
    PXContentOffsetFlippedHorizontally();
    v5 = v8;
    v7 = v9;
  }

  [v27 setVisibleOrigin:{v5, v7}];
  if (v3)
  {
    v10 = [v3 clipsToBounds];
  }

  else
  {
    v10 = 1;
  }

  [v27 setClipsToBounds:v10];
  [v27 setShowsHorizontalScrollIndicator:{objc_msgSend(v3, "showsHorizontalScrollIndicator")}];
  [v27 setShowsVerticalScrollIndicator:{objc_msgSend(v3, "showsVerticalScrollIndicator")}];
  [v27 setDraggingPerformsScroll:{objc_msgSend(v3, "draggingPerformsScroll")}];
  [v3 horizontalInterPageSpacing];
  [v27 setHorizontalInterPageSpacing:?];
  [v27 setAlwaysBounceHorizontal:{objc_msgSend(v3, "alwaysBounceHorizontal")}];
  [v27 setAlwaysBounceVertical:{objc_msgSend(v3, "alwaysBounceVertical")}];
  [v27 setTransfersScrollToContainer:{objc_msgSend(v3, "transfersScrollToContainer")}];
  [v3 horizontalScrollIndicatorInsets];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  [v3 verticalScrollIndicatorInsets];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  [v27 setHorizontalScrollIndicatorInsets:{v12, v14, v16, v18}];
  [v27 setVerticalScrollIndicatorInsets:{v20, v22, v24, v26}];
  [v3 hitTestContentInsets];
  [v27 setHitTestContentInsets:?];
  self->_isUpdatingScrollViewController = 0;
}

- (void)_invalidateScrollViewController
{
  v2 = [(PXGScrollViewContainer *)self updater];
  [v2 setNeedsUpdateOf:sel__updateScrollViewController];
}

- (void)setAlpha:(double)a3
{
  v5.receiver = self;
  v5.super_class = PXGScrollViewContainer;
  [(PXGScrollViewContainer *)&v5 setAlpha:?];
  [(PXGScrollViewContainer *)self setHidden:a3 == 0.0];
}

- (void)layoutSubviews
{
  [(PXGScrollViewContainer *)self _willLayout];
  v3.receiver = self;
  v3.super_class = PXGScrollViewContainer;
  [(PXGScrollViewContainer *)&v3 layoutSubviews];
}

- (void)_willLayout
{
  v2 = [(PXGScrollViewContainer *)self updater];
  [v2 updateIfNeeded];
}

- (void)setDelegate:(id)a3
{
  v5 = a3;
  if (self->_delegate != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_delegate, a3);
    self->_delegateRespondsTo.willBeginScrolling = objc_opt_respondsToSelector() & 1;
    self->_delegateRespondsTo.didScroll = objc_opt_respondsToSelector() & 1;
    self->_delegateRespondsTo.willEndScrollingWithVelocityTargetContentOffsetCurrentContentOffset = objc_opt_respondsToSelector() & 1;
    self->_delegateRespondsTo.didEndScrolling = objc_opt_respondsToSelector() & 1;
    v6 = objc_opt_respondsToSelector() & 1;
    v5 = v7;
    self->_delegateRespondsTo.focusItemsInRect = v6;
  }
}

- (void)setScrollViewModel:(id)a3
{
  v5 = a3;
  scrollViewModel = self->_scrollViewModel;
  if (scrollViewModel != v5)
  {
    v7 = v5;
    [(PXGScrollViewModel *)scrollViewModel unregisterChangeObserver:self context:ScrollViewModelObservationContext_1474];
    objc_storeStrong(&self->_scrollViewModel, a3);
    [(PXGScrollViewModel *)self->_scrollViewModel registerChangeObserver:self context:ScrollViewModelObservationContext_1474];
    [(PXGScrollViewContainer *)self _invalidateScrollViewController];
    [(PXGScrollViewContainer *)self _invalidateScrollViewDecelerationRate];
    v5 = v7;
  }
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  [(PXGScrollViewContainer *)self bounds];
  v7 = [(PXGScrollViewContainer *)self scrollViewModel];
  [v7 hitTestContentInsets];
  PXEdgeInsetsInsetRect();
  v10.x = x;
  v10.y = y;
  v8 = CGRectContainsPoint(v11, v10);

  return v8;
}

- (PXGScrollViewContainer)initWithFrame:(CGRect)a3
{
  v14.receiver = self;
  v14.super_class = PXGScrollViewContainer;
  v3 = [(PXGScrollViewContainer *)&v14 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x277D3CE28]) initWithTarget:v3 needsUpdateSelector:sel__setNeedsUpdate];
    updater = v3->_updater;
    v3->_updater = v4;

    [(PXUpdater *)v3->_updater addUpdateSelector:sel__updateScrollViewController needsUpdate:1];
    [(PXUpdater *)v3->_updater addUpdateSelector:sel__updateScrollViewDecelerationRate needsUpdate:1];
    v6 = objc_alloc(MEMORY[0x277D3CE20]);
    [(PXGScrollViewContainer *)v3 bounds];
    v7 = [v6 initWithFrame:?];
    [v7 setFocusItemProvider:v3];
    v8 = [v7 scrollView];
    [v8 setAutoresizingMask:18];
    scrollViewController = v3->_scrollViewController;
    v3->_scrollViewController = v7;
    v10 = v7;

    [(PXScrollViewController *)v3->_scrollViewController registerObserver:v3];
    [(PXGScrollViewContainer *)v3 addSubview:v8];
    v11 = [objc_alloc(MEMORY[0x277D3CDC0]) initWithScrollController:v3->_scrollViewController];
    speedometer = v3->_speedometer;
    v3->_speedometer = v11;

    [(PXScrollViewSpeedometer *)v3->_speedometer registerChangeObserver:v3 context:SpeedometerObservationContext];
  }

  return v3;
}

@end