@interface SBSearchGesture
- (BOOL)_isShowingSearch;
- (BOOL)searchScrollViewShouldRecognize:(id)a3;
- (CGPoint)locationInView:(id)a3;
- (SBSearchGesture)initWithSearchPresenter:(id)a3;
- (SBSearchGestureDelegate)delegate;
- (double)_maxGestureOffset;
- (double)_progressThreshold;
- (double)_startingGestureOffset;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (void)_notifyThaWeStartedShowingOrHiding;
- (void)_notifyThatGestureEndedWithShowingIfNeeded:(BOOL)a3;
- (void)_updateForFinalContentOffset;
- (void)_updateForScrollingEnded;
- (void)_updateScrollingEnabled;
- (void)addObserver:(id)a3;
- (void)resetAnimated:(BOOL)a3;
- (void)revealAnimated:(BOOL)a3;
- (void)scrollViewDidEndDecelerating:(id)a3;
- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5;
- (void)setDisabled:(BOOL)a3 forReason:(id)a4;
- (void)setTargetView:(id)a3;
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
  v7 = [(SBSearchScrollView *)self->_scrollView superview];
  [v7 bounds];
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

- (SBSearchGesture)initWithSearchPresenter:(id)a3
{
  v5 = a3;
  v17.receiver = self;
  v17.super_class = SBSearchGesture;
  v6 = [(SBSearchGesture *)&v17 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_searchPresenter, a3);
    v7->_suppressObserverCallbacks = v5 != 0;
    v8 = [SBSearchScrollView alloc];
    v9 = [(SBSearchScrollView *)v8 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    scrollView = v7->_scrollView;
    v7->_scrollView = v9;

    [(SBSearchScrollView *)v7->_scrollView setBounces:1];
    [(SBSearchScrollView *)v7->_scrollView setAlwaysBounceVertical:v5 != 0];
    [(SBSearchScrollView *)v7->_scrollView setDelegate:v7];
    [(SBSearchScrollView *)v7->_scrollView setShowsVerticalScrollIndicator:0];
    [(SBSearchScrollView *)v7->_scrollView setHidden:1];
    [(SBSearchScrollView *)v7->_scrollView setScrollsToTop:0];
    v11 = v7->_scrollView;
    [(SBSearchGesture *)v7 _startingGestureOffset];
    [(SBSearchScrollView *)v11 setContentOffset:0.0, v12];
    [(SBSearchScrollView *)v7->_scrollView setContentInsetAdjustmentBehavior:2];
    v13 = [(SBSearchScrollView *)v7->_scrollView panGestureRecognizer];
    [v13 _setHysteresis:18.5];

    [(SBSearchScrollView *)v7->_scrollView setSearchDelegate:v7];
    v14 = [(SBSearchScrollView *)v7->_scrollView panGestureRecognizer];
    panGestureRecognizer = v7->_panGestureRecognizer;
    v7->_panGestureRecognizer = v14;

    v7->_lastOffset = 0.0;
  }

  return v7;
}

- (void)setTargetView:(id)a3
{
  v5 = a3;
  if (self->_targetView != v5)
  {
    self->_suppressObserverCallbacks = 1;
    v13 = v5;
    v6 = [(SBSearchScrollView *)self->_scrollView panGestureRecognizer];
    panGestureRecognizer = self->_panGestureRecognizer;
    self->_panGestureRecognizer = v6;
    v8 = v6;

    [(UIView *)self->_targetView removeGestureRecognizer:v8];
    objc_storeStrong(&self->_targetView, a3);
    [(SBSearchScrollView *)self->_scrollView contentOffset];
    v10 = v9;
    v12 = v11;
    [(SBSearchScrollView *)self->_scrollView removeFromSuperview];
    [(UIView *)self->_targetView addSubview:self->_scrollView];
    [(SBSearchScrollView *)self->_scrollView setContentOffset:v10, v12];
    [(SBSearchGesture *)self updateForRotation];
    [(UIView *)self->_targetView addGestureRecognizer:v8];

    v5 = v13;
    self->_suppressObserverCallbacks = self->_searchPresenter != 0;
  }
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  observers = self->_observers;
  v8 = v4;
  if (!observers)
  {
    v6 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v7 = self->_observers;
    self->_observers = v6;

    v4 = v8;
    observers = self->_observers;
  }

  [(NSHashTable *)observers addObject:v4];
}

- (void)revealAnimated:(BOOL)a3
{
  if (!self->_searchPresenter)
  {
    v3 = a3;
    if (!self->_animatingResetOrReveal || !a3)
    {
      [(SBSearchScrollView *)self->_scrollView contentOffset];
      if (v6 != 0.0 || v5 != 0.0)
      {
        [(SBSearchGesture *)self setDisabled:1 forReason:@"revealAnimated"];
        self->_animatingResetOrReveal = v3;
        [(SBSearchGesture *)self _notifyThaWeStartedShowingOrHiding];
        [(SBSearchScrollView *)self->_scrollView setContentOffset:v3 animated:0.0, 0.0];
        if (!v3)
        {

          [(SBSearchGesture *)self _updateForFinalContentOffset];
        }
      }
    }
  }
}

- (void)resetAnimated:(BOOL)a3
{
  v21 = *MEMORY[0x1E69E9840];
  if (!self->_searchPresenter)
  {
    v3 = a3;
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
              [v10 searchGesture:self resetAnimated:v3];
            }

            ++v9;
          }

          while (v7 != v9);
          v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
        }

        while (v7);
      }
    }

    if (!self->_animatingResetOrReveal || !v3)
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
        self->_animatingResetOrReveal = v3;
        [(SBSearchScrollView *)self->_scrollView setContentOffset:v3 animated:0.0, v12];
        if (!v3)
        {
          [(SBSearchGesture *)self _updateForScrollingEnded];
        }
      }
    }
  }
}

- (void)setDisabled:(BOOL)a3 forReason:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    disabledReasons = self->_disabledReasons;
    v11 = v7;
    if (v4)
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

    v6 = [(SBSearchGesture *)self _updateScrollingEnabled];
    v7 = v11;
  }

  MEMORY[0x1EEE66BB8](v6, v7);
}

- (CGPoint)locationInView:(id)a3
{
  scrollView = self->_scrollView;
  v4 = a3;
  v5 = [(SBSearchScrollView *)scrollView panGestureRecognizer];
  [v5 locationInView:v4];
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
    v3 = [(SBSearchGesture *)self _isShowingSearch];
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
            [v9 searchGesture:self startedShowing:!v3];
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

- (void)_notifyThatGestureEndedWithShowingIfNeeded:(BOOL)a3
{
  v16 = *MEMORY[0x1E69E9840];
  if (self->_isDraggingAccordingToScrollView)
  {
    self->_isDraggingAccordingToScrollView = 0;
    if (!self->_suppressObserverCallbacks)
    {
      v4 = a3;
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
              [v10 searchGesture:self endedGesture:v4];
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
        v5 = [(SBSearchScrollView *)self->_scrollView panGestureRecognizer];
        [v5 setEnabled:0];

        v6 = [(SBSearchScrollView *)self->_scrollView panGestureRecognizer];
        [v6 setEnabled:1];

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

      v18 = [(SBSearchGesture *)self isShowingSearch];

      [(SBSearchGesture *)self _notifyThatGestureEndedWithShowingIfNeeded:v18];
    }
  }
}

- (void)_updateForFinalContentOffset
{
  v16 = *MEMORY[0x1E69E9840];
  [(SBSearchGesture *)self setDisabled:0 forReason:@"revealAnimated"];
  self->_animatingResetOrReveal = 0;
  v3 = [(SBSearchGesture *)self _isShowingSearch];
  if (!self->_suppressObserverCallbacks)
  {
    v4 = v3;
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

- (void)scrollViewWillBeginDragging:(id)a3
{
  self->_isDraggingAccordingToScrollView = 1;
  scrollView = self->_scrollView;
  v5 = a3;
  [(SBSearchScrollView *)scrollView setBounces:1];
  [(SBSearchGesture *)self _notifyThaWeStartedShowingOrHiding];
  [(SBHSearchPresenting *)self->_searchPresenter scrollViewWillBeginDragging:v5];
}

- (void)scrollViewDidScroll:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(SBSearchScrollView *)self->_scrollView contentOffset];
  v6 = v5;
  if ((SBFFloatEqualsFloat() & 1) == 0)
  {
    [(SBHSearchPresenting *)self->_searchPresenter scrollViewDidScroll:v4];
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

- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5
{
  y = a4.y;
  x = a4.x;
  v9 = a3;
  v19 = v9;
  if (self->_searchPresenter)
  {
    [v9 contentOffset];
    a5->x = v10;
    a5->y = v11;
    [(SBHSearchPresenting *)self->_searchPresenter scrollViewWillEndDragging:v19 withVelocity:x, y];
  }

  else
  {
    v12 = a5->y;
    [(SBSearchGesture *)self _maxGestureOffset];
    v14 = v13;
    [(SBSearchGesture *)self _progressThreshold];
    v16 = v12 / v14 < v15;
    v17 = 0.0;
    if (!v16)
    {
      v17 = v14;
    }

    a5->y = v17;
    v18 = fabs(v14) < 2.22044605e-16 || v16;
    [(SBSearchScrollView *)self->_scrollView setBounces:v18];
    [(SBSearchGesture *)self _notifyThatGestureEndedWithShowingIfNeeded:v18];
  }
}

- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4
{
  if (!a4)
  {
    [(SBSearchGesture *)self _updateForScrollingEnded];
  }
}

- (void)scrollViewDidEndDecelerating:(id)a3
{
  if (([(SBSearchScrollView *)self->_scrollView isTracking]& 1) == 0 && !self->_animatingResetOrReveal)
  {

    [(SBSearchGesture *)self _updateForScrollingEnded];
  }
}

- (BOOL)searchScrollViewShouldRecognize:(id)a3
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

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBSearchGesture *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
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
  v2 = [(SBSearchGesture *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (SBSearchGestureDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end