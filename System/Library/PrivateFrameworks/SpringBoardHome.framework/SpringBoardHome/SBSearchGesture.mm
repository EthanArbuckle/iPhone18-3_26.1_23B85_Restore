@interface SBSearchGesture
- (BOOL)_isShowingSearch;
- (BOOL)searchScrollViewShouldRecognize:(id)recognize;
- (CGPoint)locationInView:(id)view;
- (SBSearchGesture)initWithSearchPresenter:(id)presenter;
- (SBSearchGestureDelegate)delegate;
- (double)_maxGestureOffset;
- (double)_progressThreshold;
- (double)_startingGestureOffset;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (void)_notifyThaWeStartedShowingOrHiding;
- (void)_notifyThatGestureEndedWithShowingIfNeeded:(BOOL)needed;
- (void)_updateForFinalContentOffset;
- (void)_updateForScrollingEnded;
- (void)_updateScrollingEnabled;
- (void)addObserver:(id)observer;
- (void)resetAnimated:(BOOL)animated;
- (void)revealAnimated:(BOOL)animated;
- (void)scrollViewDidEndDecelerating:(id)decelerating;
- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
- (void)setDisabled:(BOOL)disabled forReason:(id)reason;
- (void)setTargetView:(id)view;
- (void)updateForRotation;
@end

@implementation SBSearchGesture

- (double)_startingGestureOffset
{
  searchPresenter = self->_searchPresenter;
  if (searchPresenter)
  {
    [(SBHSearchPresenting *)searchPresenter interactivePresentationMetrics];
    return -v5;
  }

  else
  {

    [(SBSearchGesture *)self _maxGestureOffset];
  }

  return result;
}

- (void)updateForRotation
{
  self->_suppressObserverCallbacks = 1;
  [(SBSearchScrollView *)self->_scrollView contentOffset];
  v4 = v3;
  v6 = v5;
  superview = [(SBSearchScrollView *)self->_scrollView superview];
  [superview bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  [(SBSearchGesture *)self _startingGestureOffset];
  v17 = v15 + v16;
  [(SBSearchScrollView *)self->_scrollView setFrame:v9, v11, v13, v15];
  [(SBSearchScrollView *)self->_scrollView setContentSize:v13, v17];
  [(SBSearchScrollView *)self->_scrollView setContentOffset:v4, v6];
  self->_suppressObserverCallbacks = self->_searchPresenter != 0;
}

- (double)_maxGestureOffset
{
  searchPresenter = self->_searchPresenter;
  if (!searchPresenter)
  {
    return 94.0;
  }

  [(SBHSearchPresenting *)searchPresenter interactivePresentationMetrics];
  return v3;
}

- (void)_updateScrollingEnabled
{
  v3 = [(NSMutableSet *)self->_disabledReasons count]== 0;
  scrollView = self->_scrollView;

  [(SBSearchScrollView *)scrollView setScrollEnabled:v3];
}

- (SBSearchGesture)initWithSearchPresenter:(id)presenter
{
  presenterCopy = presenter;
  v17.receiver = self;
  v17.super_class = SBSearchGesture;
  v6 = [(SBSearchGesture *)&v17 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_searchPresenter, presenter);
    v7->_suppressObserverCallbacks = presenterCopy != 0;
    v8 = [SBSearchScrollView alloc];
    v9 = [(SBSearchScrollView *)v8 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    scrollView = v7->_scrollView;
    v7->_scrollView = v9;

    [(SBSearchScrollView *)v7->_scrollView setBounces:1];
    [(SBSearchScrollView *)v7->_scrollView setAlwaysBounceVertical:presenterCopy != 0];
    [(SBSearchScrollView *)v7->_scrollView setDelegate:v7];
    [(SBSearchScrollView *)v7->_scrollView setShowsVerticalScrollIndicator:0];
    [(SBSearchScrollView *)v7->_scrollView setHidden:1];
    [(SBSearchScrollView *)v7->_scrollView setScrollsToTop:0];
    v11 = v7->_scrollView;
    [(SBSearchGesture *)v7 _startingGestureOffset];
    [(SBSearchScrollView *)v11 setContentOffset:0.0, v12];
    [(SBSearchScrollView *)v7->_scrollView setContentInsetAdjustmentBehavior:2];
    panGestureRecognizer = [(SBSearchScrollView *)v7->_scrollView panGestureRecognizer];
    [panGestureRecognizer _setHysteresis:18.5];

    [(SBSearchScrollView *)v7->_scrollView setSearchDelegate:v7];
    panGestureRecognizer2 = [(SBSearchScrollView *)v7->_scrollView panGestureRecognizer];
    panGestureRecognizer = v7->_panGestureRecognizer;
    v7->_panGestureRecognizer = panGestureRecognizer2;

    v7->_lastOffset = 0.0;
  }

  return v7;
}

- (void)setTargetView:(id)view
{
  viewCopy = view;
  if (self->_targetView != viewCopy)
  {
    self->_suppressObserverCallbacks = 1;
    v13 = viewCopy;
    panGestureRecognizer = [(SBSearchScrollView *)self->_scrollView panGestureRecognizer];
    panGestureRecognizer = self->_panGestureRecognizer;
    self->_panGestureRecognizer = panGestureRecognizer;
    v8 = panGestureRecognizer;

    [(UIView *)self->_targetView removeGestureRecognizer:v8];
    objc_storeStrong(&self->_targetView, view);
    [(SBSearchScrollView *)self->_scrollView contentOffset];
    v10 = v9;
    v12 = v11;
    [(SBSearchScrollView *)self->_scrollView removeFromSuperview];
    [(UIView *)self->_targetView addSubview:self->_scrollView];
    [(SBSearchScrollView *)self->_scrollView setContentOffset:v10, v12];
    [(SBSearchGesture *)self updateForRotation];
    [(UIView *)self->_targetView addGestureRecognizer:v8];

    viewCopy = v13;
    self->_suppressObserverCallbacks = self->_searchPresenter != 0;
  }
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  observers = self->_observers;
  v8 = observerCopy;
  if (!observers)
  {
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v7 = self->_observers;
    self->_observers = weakObjectsHashTable;

    observerCopy = v8;
    observers = self->_observers;
  }

  [(NSHashTable *)observers addObject:observerCopy];
}

- (void)revealAnimated:(BOOL)animated
{
  if (!self->_searchPresenter)
  {
    animatedCopy = animated;
    if (!self->_animatingResetOrReveal || !animated)
    {
      [(SBSearchScrollView *)self->_scrollView contentOffset];
      if (v6 != 0.0 || v5 != 0.0)
      {
        [(SBSearchGesture *)self setDisabled:1 forReason:@"revealAnimated"];
        self->_animatingResetOrReveal = animatedCopy;
        [(SBSearchGesture *)self _notifyThaWeStartedShowingOrHiding];
        [(SBSearchScrollView *)self->_scrollView setContentOffset:animatedCopy animated:0.0, 0.0];
        if (!animatedCopy)
        {

          [(SBSearchGesture *)self _updateForFinalContentOffset];
        }
      }
    }
  }
}

- (void)resetAnimated:(BOOL)animated
{
  v21 = *MEMORY[0x1E69E9840];
  if (!self->_searchPresenter)
  {
    animatedCopy = animated;
    self->_isDismissing = 1;
    if (!self->_suppressObserverCallbacks)
    {
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v5 = [(NSHashTable *)self->_observers copy];
      v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v17;
        do
        {
          v9 = 0;
          do
          {
            if (*v17 != v8)
            {
              objc_enumerationMutation(v5);
            }

            v10 = *(*(&v16 + 1) + 8 * v9);
            if (objc_opt_respondsToSelector())
            {
              [v10 searchGesture:self resetAnimated:animatedCopy];
            }

            ++v9;
          }

          while (v7 != v9);
          v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
        }

        while (v7);
      }
    }

    if (!self->_animatingResetOrReveal || !animatedCopy)
    {
      [(SBSearchGesture *)self _maxGestureOffset];
      v12 = v11;
      [(SBSearchScrollView *)self->_scrollView contentOffset];
      if (v14 == 0.0 && v12 == v13)
      {
        self->_isDismissing = 0;
      }

      else
      {
        self->_animatingResetOrReveal = animatedCopy;
        [(SBSearchScrollView *)self->_scrollView setContentOffset:animatedCopy animated:0.0, v12];
        if (!animatedCopy)
        {
          [(SBSearchGesture *)self _updateForScrollingEnded];
        }
      }
    }
  }
}

- (void)setDisabled:(BOOL)disabled forReason:(id)reason
{
  disabledCopy = disabled;
  reasonCopy = reason;
  v7 = reasonCopy;
  if (reasonCopy)
  {
    disabledReasons = self->_disabledReasons;
    v11 = v7;
    if (disabledCopy)
    {
      if (!disabledReasons)
      {
        v9 = objc_alloc_init(MEMORY[0x1E695DFA8]);
        v10 = self->_disabledReasons;
        self->_disabledReasons = v9;

        v7 = v11;
        disabledReasons = self->_disabledReasons;
      }

      [(NSMutableSet *)disabledReasons addObject:v7];
    }

    else
    {
      [(NSMutableSet *)disabledReasons removeObject:v7];
    }

    reasonCopy = [(SBSearchGesture *)self _updateScrollingEnabled];
    v7 = v11;
  }

  MEMORY[0x1EEE66BB8](reasonCopy, v7);
}

- (CGPoint)locationInView:(id)view
{
  scrollView = self->_scrollView;
  viewCopy = view;
  panGestureRecognizer = [(SBSearchScrollView *)scrollView panGestureRecognizer];
  [panGestureRecognizer locationInView:viewCopy];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.y = v11;
  result.x = v10;
  return result;
}

- (void)_notifyThaWeStartedShowingOrHiding
{
  v15 = *MEMORY[0x1E69E9840];
  if (!self->_suppressObserverCallbacks)
  {
    _isShowingSearch = [(SBSearchGesture *)self _isShowingSearch];
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = [(NSHashTable *)self->_observers copy];
    v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
      do
      {
        v8 = 0;
        do
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v10 + 1) + 8 * v8);
          if (objc_opt_respondsToSelector())
          {
            [v9 searchGesture:self startedShowing:!_isShowingSearch];
          }

          ++v8;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }
  }
}

- (void)_notifyThatGestureEndedWithShowingIfNeeded:(BOOL)needed
{
  v16 = *MEMORY[0x1E69E9840];
  if (self->_isDraggingAccordingToScrollView)
  {
    self->_isDraggingAccordingToScrollView = 0;
    if (!self->_suppressObserverCallbacks)
    {
      neededCopy = needed;
      v13 = 0u;
      v14 = 0u;
      v11 = 0u;
      v12 = 0u;
      v5 = [(NSHashTable *)self->_observers copy];
      v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v12;
        do
        {
          v9 = 0;
          do
          {
            if (*v12 != v8)
            {
              objc_enumerationMutation(v5);
            }

            v10 = *(*(&v11 + 1) + 8 * v9);
            if (objc_opt_respondsToSelector())
            {
              [v10 searchGesture:self endedGesture:neededCopy];
            }

            ++v9;
          }

          while (v7 != v9);
          v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
        }

        while (v7);
      }
    }
  }
}

- (void)_updateForScrollingEnded
{
  if (!self->_ignoreScrollingEnded)
  {
    self->_ignoreScrollingEnded = 1;
    if (self->_searchPresenter)
    {
      scrollView = self->_scrollView;
      [(SBSearchGesture *)self _startingGestureOffset];
      [(SBSearchScrollView *)scrollView setContentOffset:0 animated:0.0, v4];
      self->_ignoreScrollingEnded = 0;
    }

    else
    {
      if (self->_isDismissing)
      {
        panGestureRecognizer = [(SBSearchScrollView *)self->_scrollView panGestureRecognizer];
        [panGestureRecognizer setEnabled:0];

        panGestureRecognizer2 = [(SBSearchScrollView *)self->_scrollView panGestureRecognizer];
        [panGestureRecognizer2 setEnabled:1];

        v7 = self->_scrollView;
        [(SBSearchGesture *)self _maxGestureOffset];
        [(SBSearchScrollView *)v7 setContentOffset:0 animated:0.0, v8];
      }

      [(SBSearchScrollView *)self->_scrollView contentOffset];
      v10 = v9;
      [(SBSearchGesture *)self _maxGestureOffset];
      if (v10 != 0.0 && v10 != v11)
      {
        v13 = v11;
        v14 = self->_scrollView;
        [(SBSearchGesture *)self _progressThreshold];
        if (v10 / v13 >= v15)
        {
          v16 = v13;
        }

        else
        {
          v16 = 0.0;
        }

        [(SBSearchScrollView *)v14 setContentOffset:1 animated:0.0, v16];
      }

      *&self->_isDismissing = 0;
      if (v10 == 0.0 || ([(SBSearchGesture *)self _maxGestureOffset], v10 == v17))
      {
        [(SBSearchGesture *)self _updateForFinalContentOffset];
      }

      isShowingSearch = [(SBSearchGesture *)self isShowingSearch];

      [(SBSearchGesture *)self _notifyThatGestureEndedWithShowingIfNeeded:isShowingSearch];
    }
  }
}

- (void)_updateForFinalContentOffset
{
  v16 = *MEMORY[0x1E69E9840];
  [(SBSearchGesture *)self setDisabled:0 forReason:@"revealAnimated"];
  self->_animatingResetOrReveal = 0;
  _isShowingSearch = [(SBSearchGesture *)self _isShowingSearch];
  if (!self->_suppressObserverCallbacks)
  {
    v4 = _isShowingSearch;
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = [(NSHashTable *)self->_observers copy];
    v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      do
      {
        v9 = 0;
        do
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v11 + 1) + 8 * v9);
          if (objc_opt_respondsToSelector())
          {
            [v10 searchGesture:self completedShowing:v4];
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }
  }
}

- (BOOL)_isShowingSearch
{
  if (self->_isDismissing)
  {
    return 0;
  }

  [(SBSearchScrollView *)self->_scrollView contentOffset:v2];
  return fabs(v5) < 2.22044605e-16;
}

- (double)_progressThreshold
{
  searchPresenter = self->_searchPresenter;
  if (!searchPresenter)
  {
    return 0.5;
  }

  [(SBHSearchPresenting *)searchPresenter interactivePresentationMetrics];
  return v3;
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  self->_isDraggingAccordingToScrollView = 1;
  scrollView = self->_scrollView;
  draggingCopy = dragging;
  [(SBSearchScrollView *)scrollView setBounces:1];
  [(SBSearchGesture *)self _notifyThaWeStartedShowingOrHiding];
  [(SBHSearchPresenting *)self->_searchPresenter scrollViewWillBeginDragging:draggingCopy];
}

- (void)scrollViewDidScroll:(id)scroll
{
  v22 = *MEMORY[0x1E69E9840];
  scrollCopy = scroll;
  [(SBSearchScrollView *)self->_scrollView contentOffset];
  v6 = v5;
  if ((SBFFloatEqualsFloat() & 1) == 0)
  {
    [(SBHSearchPresenting *)self->_searchPresenter scrollViewDidScroll:scrollCopy];
    [(SBSearchGesture *)self _startingGestureOffset];
    v8 = v7;
    [(SBSearchGesture *)self _maxGestureOffset];
    if (!self->_suppressObserverCallbacks)
    {
      v10 = v9;
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v11 = [(NSHashTable *)self->_observers copy];
      v12 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v18;
        v15 = (v8 - v6) / v10;
        do
        {
          v16 = 0;
          do
          {
            if (*v18 != v14)
            {
              objc_enumerationMutation(v11);
            }

            [*(*(&v17 + 1) + 8 * v16++) searchGesture:self changedPercentComplete:v15];
          }

          while (v13 != v16);
          v13 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
        }

        while (v13);
      }
    }

    self->_lastOffset = v6;
  }
}

- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  y = velocity.y;
  x = velocity.x;
  draggingCopy = dragging;
  v19 = draggingCopy;
  if (self->_searchPresenter)
  {
    [draggingCopy contentOffset];
    offset->x = v10;
    offset->y = v11;
    [(SBHSearchPresenting *)self->_searchPresenter scrollViewWillEndDragging:v19 withVelocity:x, y];
  }

  else
  {
    v12 = offset->y;
    [(SBSearchGesture *)self _maxGestureOffset];
    v14 = v13;
    [(SBSearchGesture *)self _progressThreshold];
    v16 = v12 / v14 < v15;
    v17 = 0.0;
    if (!v16)
    {
      v17 = v14;
    }

    offset->y = v17;
    v18 = fabs(v14) < 2.22044605e-16 || v16;
    [(SBSearchScrollView *)self->_scrollView setBounces:v18];
    [(SBSearchGesture *)self _notifyThatGestureEndedWithShowingIfNeeded:v18];
  }
}

- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  if (!decelerate)
  {
    [(SBSearchGesture *)self _updateForScrollingEnded];
  }
}

- (void)scrollViewDidEndDecelerating:(id)decelerating
{
  if (([(SBSearchScrollView *)self->_scrollView isTracking]& 1) == 0 && !self->_animatingResetOrReveal)
  {

    [(SBSearchGesture *)self _updateForScrollingEnded];
  }
}

- (BOOL)searchScrollViewShouldRecognize:(id)recognize
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained searchGestureShouldRecognize:self];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBSearchGesture *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v4 = [MEMORY[0x1E698E680] builderWithObject:self];
  v5 = [v4 appendBool:self->_isDismissing withName:@"isDismissing"];
  v6 = [v4 appendBool:self->_animatingResetOrReveal withName:@"animatingResetOrReveal"];
  v7 = [v4 appendFloat:@"lastOffset" withName:self->_lastOffset];
  v8 = [v4 appendObject:self->_disabledReasons withName:@"disabledReasons" skipIfNil:1];

  return v4;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBSearchGesture *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (SBSearchGestureDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end