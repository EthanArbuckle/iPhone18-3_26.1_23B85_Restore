@interface PXGScrollViewContainer
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (CGPoint)convertHostedChildCenter:(CGPoint)center fromGlobalLayer:(id)layer;
- (CGRect)clippingRect;
- (PXGScrollViewContainer)initWithFrame:(CGRect)frame;
- (id)focusItemsForScrollViewController:(id)controller inRect:(CGRect)rect;
- (void)_invalidateScrollViewController;
- (void)_invalidateScrollViewDecelerationRate;
- (void)_invalidateScrollViewModel;
- (void)_updateScrollViewController;
- (void)_updateScrollViewDecelerationRate;
- (void)_updateScrollViewModel;
- (void)_willLayout;
- (void)layoutSubviews;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)scrollViewControllerDidEndScrolling:(id)scrolling;
- (void)scrollViewControllerDidScroll:(id)scroll;
- (void)scrollViewControllerWillBeginScrolling:(id)scrolling;
- (void)scrollViewControllerWillEndScrolling:(id)scrolling withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset currentContentOffset:(CGPoint)contentOffset;
- (void)setAlpha:(double)alpha;
- (void)setDelegate:(id)delegate;
- (void)setScrollViewModel:(id)model;
- (void)setUserData:(id)data;
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

- (id)focusItemsForScrollViewController:(id)controller inRect:(CGRect)rect
{
  if (self->_delegateRespondsTo.focusItemsInRect)
  {
    height = rect.size.height;
    width = rect.size.width;
    y = rect.origin.y;
    x = rect.origin.x;
    delegate = [(PXGScrollViewContainer *)self delegate];
    v10 = [delegate focusItemsForScrollViewContainer:self inRect:{x, y, width, height}];
  }

  else
  {
    v10 = MEMORY[0x277CBEBF8];
  }

  return v10;
}

- (void)scrollViewControllerDidEndScrolling:(id)scrolling
{
  if (self->_delegateRespondsTo.didEndScrolling)
  {
    delegate = [(PXGScrollViewContainer *)self delegate];
    [delegate scrollViewContainerDidEndScrolling:self];
  }
}

- (void)scrollViewControllerWillEndScrolling:(id)scrolling withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset currentContentOffset:(CGPoint)contentOffset
{
  if (self->_delegateRespondsTo.willEndScrollingWithVelocityTargetContentOffsetCurrentContentOffset)
  {
    y = contentOffset.y;
    x = contentOffset.x;
    v9 = velocity.y;
    v10 = velocity.x;
    scrollingCopy = scrolling;
    shouldFlipContentOffset = [(PXGScrollViewContainer *)self shouldFlipContentOffset];
    [scrollingCopy contentBounds];

    [(PXGScrollViewContainer *)self bounds];
    if (shouldFlipContentOffset)
    {
      PXContentOffsetFlippedHorizontally();
      offset->x = v14;
      offset->y = v15;
      PXVelocityFlippedHorizontally();
      v17 = v16;
      v19 = v18;
      delegate = [(PXGScrollViewContainer *)self delegate];
      [delegate scrollViewContainerWillEndScrolling:self withVelocity:offset targetContentOffset:v17 currentContentOffset:{v19, x, y}];

      PXContentOffsetFlippedHorizontally();
      offset->x = v21;
      offset->y = v22;
    }

    else
    {
      delegate2 = [(PXGScrollViewContainer *)self delegate];
      [delegate2 scrollViewContainerWillEndScrolling:self withVelocity:offset targetContentOffset:v10 currentContentOffset:{v9, x, y}];
    }
  }
}

- (void)scrollViewControllerDidScroll:(id)scroll
{
  if (self->_delegateRespondsTo.didScroll)
  {
    delegate = [(PXGScrollViewContainer *)self delegate];
    [delegate scrollViewContainerDidScroll:self];
  }

  [(PXGScrollViewContainer *)self _invalidateScrollViewModel];
}

- (void)scrollViewControllerWillBeginScrolling:(id)scrolling
{
  if (self->_delegateRespondsTo.willBeginScrolling)
  {
    delegate = [(PXGScrollViewContainer *)self delegate];
    [delegate scrollViewContainerWillBeginScrolling:self];
  }
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  changeCopy = change;
  observableCopy = observable;
  if (ScrollViewModelObservationContext_1474 == context)
  {
    v13 = observableCopy;
    changesOptions = [observableCopy changesOptions];
    if ((changeCopy & 0xFFE3) != 0 && (changesOptions & 2) == 0)
    {
      [(PXGScrollViewContainer *)self _invalidateScrollViewController];
    }

    if ((changeCopy & 8) != 0)
    {
      [(PXGScrollViewContainer *)self _invalidateScrollViewDecelerationRate];
    }

    observableCopy = v13;
    if ((changeCopy & 0x10) != 0)
    {
      scrollViewController = [(PXGScrollViewContainer *)self scrollViewController];
      [scrollViewController stopScrollingAndZoomingAnimations];

      goto LABEL_12;
    }
  }

  else
  {
    if (SpeedometerObservationContext != context)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXGScrollViewContainer.m" lineNumber:334 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    if ((changeCopy & 2) != 0)
    {
      v13 = observableCopy;
      [(PXGScrollViewContainer *)self _invalidateScrollViewModel];
LABEL_12:
      observableCopy = v13;
    }
  }
}

- (CGPoint)convertHostedChildCenter:(CGPoint)center fromGlobalLayer:(id)layer
{
  y = center.y;
  x = center.x;
  scrollViewController = self->_scrollViewController;
  layerCopy = layer;
  scrollView = [(PXScrollViewController *)scrollViewController scrollView];
  layer = [scrollView layer];

  [layer convertPoint:layerCopy fromLayer:{x, y}];
  v11 = v10;
  v13 = v12;

  v14 = v11;
  v15 = v13;
  result.y = v15;
  result.x = v14;
  return result;
}

- (void)setUserData:(id)data
{
  dataCopy = data;
  v5 = dataCopy;
  if (self->_userData != dataCopy)
  {
    v11 = dataCopy;
    v6 = [(PXGScrollViewContainerConfiguration *)dataCopy isEqual:?];
    v5 = v11;
    if (!v6)
    {
      v7 = [(PXGScrollViewContainerConfiguration *)v11 copy];
      userData = self->_userData;
      self->_userData = v7;

      scrollViewModel = [(PXGScrollViewContainerConfiguration *)self->_userData scrollViewModel];
      [(PXGScrollViewContainer *)self setScrollViewModel:scrollViewModel];

      delegate = [(PXGScrollViewContainerConfiguration *)self->_userData delegate];
      [(PXGScrollViewContainer *)self setDelegate:delegate];

      v5 = v11;
    }
  }
}

- (void)_updateScrollViewModel
{
  scrollViewModel = [(PXGScrollViewContainer *)self scrollViewModel];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __48__PXGScrollViewContainer__updateScrollViewModel__block_invoke;
  v4[3] = &unk_2782A7E80;
  v4[4] = self;
  [scrollViewModel performChanges:v4 options:2];
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
  scrollViewModel = [(PXGScrollViewContainer *)self scrollViewModel];
  scrollDecelerationRate = [scrollViewModel scrollDecelerationRate];
  if (scrollDecelerationRate >= 2)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"PXScrollViewDecelerationRate PXScrollViewDecelerationRateFromPXGScrollDecelerationRate(PXGScrollDecelerationRate)"];
    [currentHandler handleFailureInFunction:v7 file:@"PXGScrollViewContainer.m" lineNumber:29 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  v4 = scrollDecelerationRate;
  scrollViewController = [(PXGScrollViewContainer *)self scrollViewController];
  [scrollViewController setDecelerationRate:v4];
}

- (void)_invalidateScrollViewDecelerationRate
{
  updater = [(PXGScrollViewContainer *)self updater];
  [updater setNeedsUpdateOf:sel__updateScrollViewDecelerationRate];
}

- (void)_updateScrollViewController
{
  scrollViewController = [(PXGScrollViewContainer *)self scrollViewController];
  scrollViewModel = [(PXGScrollViewContainer *)self scrollViewModel];
  self->_isUpdatingScrollViewController = 1;
  [scrollViewModel contentSize];
  PXRectWithOriginAndSize();
  [scrollViewController setContentBounds:?];
  [scrollViewModel contentOffset];
  v5 = v4;
  v7 = v6;
  if ([(PXGScrollViewContainer *)self shouldFlipContentOffset])
  {
    [scrollViewModel contentOffset];
    [scrollViewController contentBounds];
    [(PXGScrollViewContainer *)self bounds];
    PXContentOffsetFlippedHorizontally();
    v5 = v8;
    v7 = v9;
  }

  [scrollViewController setVisibleOrigin:{v5, v7}];
  if (scrollViewModel)
  {
    clipsToBounds = [scrollViewModel clipsToBounds];
  }

  else
  {
    clipsToBounds = 1;
  }

  [scrollViewController setClipsToBounds:clipsToBounds];
  [scrollViewController setShowsHorizontalScrollIndicator:{objc_msgSend(scrollViewModel, "showsHorizontalScrollIndicator")}];
  [scrollViewController setShowsVerticalScrollIndicator:{objc_msgSend(scrollViewModel, "showsVerticalScrollIndicator")}];
  [scrollViewController setDraggingPerformsScroll:{objc_msgSend(scrollViewModel, "draggingPerformsScroll")}];
  [scrollViewModel horizontalInterPageSpacing];
  [scrollViewController setHorizontalInterPageSpacing:?];
  [scrollViewController setAlwaysBounceHorizontal:{objc_msgSend(scrollViewModel, "alwaysBounceHorizontal")}];
  [scrollViewController setAlwaysBounceVertical:{objc_msgSend(scrollViewModel, "alwaysBounceVertical")}];
  [scrollViewController setTransfersScrollToContainer:{objc_msgSend(scrollViewModel, "transfersScrollToContainer")}];
  [scrollViewModel horizontalScrollIndicatorInsets];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  [scrollViewModel verticalScrollIndicatorInsets];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  [scrollViewController setHorizontalScrollIndicatorInsets:{v12, v14, v16, v18}];
  [scrollViewController setVerticalScrollIndicatorInsets:{v20, v22, v24, v26}];
  [scrollViewModel hitTestContentInsets];
  [scrollViewController setHitTestContentInsets:?];
  self->_isUpdatingScrollViewController = 0;
}

- (void)_invalidateScrollViewController
{
  updater = [(PXGScrollViewContainer *)self updater];
  [updater setNeedsUpdateOf:sel__updateScrollViewController];
}

- (void)setAlpha:(double)alpha
{
  v5.receiver = self;
  v5.super_class = PXGScrollViewContainer;
  [(PXGScrollViewContainer *)&v5 setAlpha:?];
  [(PXGScrollViewContainer *)self setHidden:alpha == 0.0];
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
  updater = [(PXGScrollViewContainer *)self updater];
  [updater updateIfNeeded];
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  if (self->_delegate != delegateCopy)
  {
    v7 = delegateCopy;
    objc_storeStrong(&self->_delegate, delegate);
    self->_delegateRespondsTo.willBeginScrolling = objc_opt_respondsToSelector() & 1;
    self->_delegateRespondsTo.didScroll = objc_opt_respondsToSelector() & 1;
    self->_delegateRespondsTo.willEndScrollingWithVelocityTargetContentOffsetCurrentContentOffset = objc_opt_respondsToSelector() & 1;
    self->_delegateRespondsTo.didEndScrolling = objc_opt_respondsToSelector() & 1;
    v6 = objc_opt_respondsToSelector() & 1;
    delegateCopy = v7;
    self->_delegateRespondsTo.focusItemsInRect = v6;
  }
}

- (void)setScrollViewModel:(id)model
{
  modelCopy = model;
  scrollViewModel = self->_scrollViewModel;
  if (scrollViewModel != modelCopy)
  {
    v7 = modelCopy;
    [(PXGScrollViewModel *)scrollViewModel unregisterChangeObserver:self context:ScrollViewModelObservationContext_1474];
    objc_storeStrong(&self->_scrollViewModel, model);
    [(PXGScrollViewModel *)self->_scrollViewModel registerChangeObserver:self context:ScrollViewModelObservationContext_1474];
    [(PXGScrollViewContainer *)self _invalidateScrollViewController];
    [(PXGScrollViewContainer *)self _invalidateScrollViewDecelerationRate];
    modelCopy = v7;
  }
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  [(PXGScrollViewContainer *)self bounds];
  scrollViewModel = [(PXGScrollViewContainer *)self scrollViewModel];
  [scrollViewModel hitTestContentInsets];
  PXEdgeInsetsInsetRect();
  v10.x = x;
  v10.y = y;
  v8 = CGRectContainsPoint(v11, v10);

  return v8;
}

- (PXGScrollViewContainer)initWithFrame:(CGRect)frame
{
  v14.receiver = self;
  v14.super_class = PXGScrollViewContainer;
  v3 = [(PXGScrollViewContainer *)&v14 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
    scrollView = [v7 scrollView];
    [scrollView setAutoresizingMask:18];
    scrollViewController = v3->_scrollViewController;
    v3->_scrollViewController = v7;
    v10 = v7;

    [(PXScrollViewController *)v3->_scrollViewController registerObserver:v3];
    [(PXGScrollViewContainer *)v3 addSubview:scrollView];
    v11 = [objc_alloc(MEMORY[0x277D3CDC0]) initWithScrollController:v3->_scrollViewController];
    speedometer = v3->_speedometer;
    v3->_speedometer = v11;

    [(PXScrollViewSpeedometer *)v3->_speedometer registerChangeObserver:v3 context:SpeedometerObservationContext];
  }

  return v3;
}

@end