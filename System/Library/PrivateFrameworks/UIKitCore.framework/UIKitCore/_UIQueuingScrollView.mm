@interface _UIQueuingScrollView
- (BOOL)_dataSourceProvidesViews;
- (BOOL)_gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (BOOL)_isDeceleratingInOppositionToNavigationDirection:(int64_t)direction;
- (BOOL)_isScrollInProgress:(BOOL)progress;
- (BOOL)isManualScrollInProgress;
- (BOOL)isPreviousScrollCompatibleWithScrollInDirection:(int64_t)direction;
- (CGRect)disabledScrollingRegion;
- (_UIQueuingScrollView)initWithFrame:(CGRect)frame navigationOrientation:(int64_t)orientation;
- (_UIQueuingScrollViewDataSource)qDataSource;
- (_UIQueuingScrollViewDelegate)qDelegate;
- (id)_dequeueViewForIndex:(int64_t)index;
- (id)_requestViewForIndex:(int64_t)index;
- (id)_viewAtIndex:(int64_t)index loadingIfNecessary:(BOOL)necessary updatingContents:(BOOL)contents animated:(BOOL)animated;
- (id)_viewBefore:(BOOL)before view:(id)view;
- (id)_visibleView;
- (int64_t)_navigationDirectionForActiveScroll:(BOOL)scroll;
- (int64_t)_navigationDirectionFromCurrentOffset;
- (unint64_t)_abuttedPagingEdges;
- (void)_adjustContentInsets;
- (void)_boundsDidChangeToSize:(CGSize)size;
- (void)_cleanUpCompletionState:(id)state didFinish:(BOOL)finish didComplete:(BOOL)complete;
- (void)_commitGestureDrivenScrollRevealingView:(id)view concealingView:(id)concealingView inDirection:(int64_t)direction canComplete:(BOOL)complete;
- (void)_didEndDraggingManualScroll;
- (void)_didEndManualScroll;
- (void)_didEndScroll:(BOOL)scroll;
- (void)_didScrollWithAnimation:(BOOL)animation force:(BOOL)force;
- (void)_enqueueAnimatedScrollInDirection:(int64_t)direction withView:(id)view completion:(id)completion;
- (void)_enqueueCompletionState:(id)state;
- (void)_flushView:(id)view animated:(BOOL)animated;
- (void)_handleDirectionalPageWithHorizontalVelocity:(double)velocity verticalVelocity:(double)verticalVelocity;
- (void)_invalidateOffscreenViews;
- (void)_notifyDelegateDidBailoutOfScrollAndRevealedView:(id)view;
- (void)_notifyDelegateDidCommitManualScroll:(BOOL)scroll toRevealView:(id)view concealView:(id)concealView direction:(int64_t)direction animated:(BOOL)animated canComplete:(BOOL)complete;
- (void)_notifyDelegateDidEndManualScroll:(BOOL)scroll toRevealView:(id)view direction:(int64_t)direction animated:(BOOL)animated didFinish:(BOOL)finish didComplete:(BOOL)complete;
- (void)_notifyDelegateDidFinishScrolling;
- (void)_notifyDelegateWillManuallyScroll:(BOOL)scroll toRevealView:(id)view concealingView:(id)concealingView animated:(BOOL)animated;
- (void)_replaceViews:(id)views updatingContents:(BOOL)contents adjustContentInsets:(BOOL)insets animated:(BOOL)animated;
- (void)_scrollViewAnimationEnded:(id)ended finished:(BOOL)finished;
- (void)_scrollViewDidEndDecelerating;
- (void)_scrollViewDidEndDraggingWithDeceleration:(BOOL)deceleration;
- (void)_setFrameAndApplyPageSpacing:(CGRect)spacing;
- (void)_setWrappedViewAtIndex:(int64_t)index withView:(id)view;
- (void)layoutSubviews;
- (void)setBounds:(CGRect)bounds;
- (void)setFrame:(CGRect)frame;
- (void)setPageSpacing:(double)spacing;
- (void)setQDataSource:(id)source;
- (void)setQDelegate:(id)delegate;
- (void)setView:(id)view direction:(int64_t)direction animated:(BOOL)animated completion:(id)completion;
@end

@implementation _UIQueuingScrollView

- (_UIQueuingScrollView)initWithFrame:(CGRect)frame navigationOrientation:(int64_t)orientation
{
  v24.receiver = self;
  v24.super_class = _UIQueuingScrollView;
  v5 = [(UIScrollView *)&v24 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v6 = v5;
  if (v5)
  {
    v5->_navigationOrientation = orientation;
    [(UIScrollView *)v5 setPagingEnabled:1];
    [(UIScrollView *)v6 setShowsHorizontalScrollIndicator:0];
    [(UIScrollView *)v6 setShowsVerticalScrollIndicator:0];
    if (v6->_navigationOrientation)
    {
      [(UIScrollView *)v6 setAlwaysBounceVertical:1];
    }

    else
    {
      [(UIScrollView *)v6 setAlwaysBounceHorizontal:1];
    }

    if (dyld_program_sdk_at_least())
    {
      [(UIScrollView *)v6 setContentInsetAdjustmentBehavior:2];
    }

    [(UIScrollView *)v6 setScrollsToTop:0];
    v7 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{@"kUIFaultingViewSentinel", @"kUIFaultingViewSentinel", 0}];
    views = v6->_views;
    v6->_views = v7;

    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    viewStateQueue = v6->_viewStateQueue;
    v6->_viewStateQueue = v9;

    v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    completionStateQueue = v6->_completionStateQueue;
    v6->_completionStateQueue = v11;

    v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v14 = *MEMORY[0x1E695F058];
    v15 = *(MEMORY[0x1E695F058] + 8);
    v16 = *(MEMORY[0x1E695F058] + 16);
    v17 = *(MEMORY[0x1E695F058] + 24);
    v18 = 3;
    do
    {
      v19 = [[UIView alloc] initWithFrame:v14, v15, v16, v17];
      [(NSArray *)v13 addObject:v19];
      [(UIView *)v6 addSubview:v19];

      --v18;
    }

    while (v18);
    wrapperViews = v6->_wrapperViews;
    v6->_wrapperViews = v13;

    [(UIView *)v6 bounds];
    [(_UIQueuingScrollView *)v6 _boundsDidChangeToSize:v21, v22];
  }

  return v6;
}

- (void)setQDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_qDelegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_qDelegate, obj);
    *&self->_delegateFlags = *&self->_delegateFlags & 0xFFFE | objc_opt_respondsToSelector() & 1;
    if (objc_opt_respondsToSelector())
    {
      v5 = 2;
    }

    else
    {
      v5 = 0;
    }

    *&self->_delegateFlags = *&self->_delegateFlags & 0xFFFD | v5;
    if (objc_opt_respondsToSelector())
    {
      v6 = 4;
    }

    else
    {
      v6 = 0;
    }

    *&self->_delegateFlags = *&self->_delegateFlags & 0xFFFB | v6;
    if (objc_opt_respondsToSelector())
    {
      v7 = 8;
    }

    else
    {
      v7 = 0;
    }

    *&self->_delegateFlags = *&self->_delegateFlags & 0xFFF7 | v7;
    if (objc_opt_respondsToSelector())
    {
      v8 = 16;
    }

    else
    {
      v8 = 0;
    }

    *&self->_delegateFlags = *&self->_delegateFlags & 0xFFEF | v8;
    if (objc_opt_respondsToSelector())
    {
      v9 = 32;
    }

    else
    {
      v9 = 0;
    }

    *&self->_delegateFlags = *&self->_delegateFlags & 0xFFDF | v9;
  }
}

- (void)setQDataSource:(id)source
{
  obj = source;
  WeakRetained = objc_loadWeakRetained(&self->_qDataSource);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_qDataSource, obj);
    if (objc_opt_respondsToSelector())
    {
      v5 = 128;
    }

    else
    {
      v5 = 0;
    }

    *&self->_delegateFlags = *&self->_delegateFlags & 0xFF7F | v5;
    if (objc_opt_respondsToSelector())
    {
      v6 = 64;
    }

    else
    {
      v6 = 0;
    }

    *&self->_delegateFlags = *&self->_delegateFlags & 0xFFBF | v6;
    if (objc_opt_respondsToSelector())
    {
      v7 = 256;
    }

    else
    {
      v7 = 0;
    }

    *&self->_delegateFlags = *&self->_delegateFlags & 0xFEFF | v7;
  }
}

- (void)_setFrameAndApplyPageSpacing:(CGRect)spacing
{
  pageSpacing = self->_pageSpacing;
  navigationOrientation = self->_navigationOrientation;
  v5 = pageSpacing + pageSpacing;
  v6 = spacing.origin.y - pageSpacing;
  v7 = spacing.size.height + pageSpacing + pageSpacing;
  v8 = spacing.origin.x - pageSpacing;
  v9 = spacing.size.width + v5;
  if (navigationOrientation)
  {
    spacing.origin.y = v6;
  }

  else
  {
    spacing.origin.x = v8;
  }

  if (navigationOrientation)
  {
    spacing.size.height = v7;
  }

  else
  {
    spacing.size.width = v9;
  }

  [(_UIQueuingScrollView *)self setFrame:spacing.origin.x, spacing.origin.y, spacing.size.width, spacing.size.height, v8, v9];
}

- (void)setPageSpacing:(double)spacing
{
  if (self->_pageSpacing != spacing)
  {
    [(UIView *)self frame];
    pageSpacing = self->_pageSpacing;
    navigationOrientation = self->_navigationOrientation;
    v11 = pageSpacing * -2.0;
    v12 = pageSpacing + v6;
    v13 = v8 + pageSpacing * -2.0;
    v14 = pageSpacing + v5;
    v15 = v7 + v11;
    if (navigationOrientation)
    {
      v6 = v12;
    }

    else
    {
      v5 = v14;
    }

    if (!navigationOrientation)
    {
      v7 = v15;
    }

    self->_pageSpacing = spacing;
    if (navigationOrientation)
    {
      v8 = v13;
    }

    [(_UIQueuingScrollView *)self _setFrameAndApplyPageSpacing:v5, v6, v7, v8, v14, v15];
  }
}

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  [(UIView *)self bounds];
  v9 = v8;
  v11 = v10;
  v15.receiver = self;
  v15.super_class = _UIQueuingScrollView;
  [(UIScrollView *)&v15 setBounds:x, y, width, height];
  if (width != v9 || height != v11)
  {
    [(UIView *)self bounds];
    [(_UIQueuingScrollView *)self _boundsDidChangeToSize:v13, v14];
  }
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  [(UIView *)self frame];
  v9 = v8;
  v11 = v10;
  v15.receiver = self;
  v15.super_class = _UIQueuingScrollView;
  [(UIScrollView *)&v15 setFrame:x, y, width, height];
  if (width != v9 || height != v11)
  {
    [(UIView *)self bounds];
    [(_UIQueuingScrollView *)self _boundsDidChangeToSize:v13, v14];
  }
}

- (void)layoutSubviews
{
  if ((*&self->_delegateFlags & 0x20) == 0 || (WeakRetained = objc_loadWeakRetained(&self->_qDelegate), v4 = [WeakRetained queuingScrollViewShouldLayoutSubviews:self], WeakRetained, v4))
  {
    isScrollAnimating = [(UIScrollView *)self isScrollAnimating];
    if (![(_UIQueuingScrollView *)self _isScrollInProgress:isScrollAnimating]|| [(_UIQueuingScrollView *)self _navigationDirectionForActiveScroll:isScrollAnimating]!= -1)
    {
      [(_UIQueuingScrollView *)self _didScrollWithAnimation:isScrollAnimating force:0];
    }

    v6.receiver = self;
    v6.super_class = _UIQueuingScrollView;
    [(UIScrollView *)&v6 layoutSubviews];
  }
}

- (void)_scrollViewDidEndDraggingWithDeceleration:(BOOL)deceleration
{
  decelerationCopy = deceleration;
  if (deceleration)
  {
    [(_UIQueuingScrollView *)self _didEndDraggingManualScroll];
  }

  else
  {
    [(_UIQueuingScrollView *)self _didScrollWithAnimation:[(UIScrollView *)self isScrollAnimating] force:0];
    [(_UIQueuingScrollView *)self _didEndManualScroll];
  }

  v5.receiver = self;
  v5.super_class = _UIQueuingScrollView;
  [(UIScrollView *)&v5 _scrollViewDidEndDraggingWithDeceleration:decelerationCopy];
}

- (void)_scrollViewDidEndDecelerating
{
  [(_UIQueuingScrollView *)self _didScrollWithAnimation:[(UIScrollView *)self isScrollAnimating] force:1];
  [(_UIQueuingScrollView *)self _didEndManualScroll];
  v3.receiver = self;
  v3.super_class = _UIQueuingScrollView;
  [(UIScrollView *)&v3 _scrollViewDidEndDecelerating];
}

- (void)_scrollViewAnimationEnded:(id)ended finished:(BOOL)finished
{
  finishedCopy = finished;
  v6.receiver = self;
  v6.super_class = _UIQueuingScrollView;
  [(UIScrollView *)&v6 _scrollViewAnimationEnded:ended finished:?];
  if (finishedCopy)
  {
    [(_UIQueuingScrollView *)self _didScrollWithAnimation:[(UIScrollView *)self isScrollAnimating] force:1];
    [(_UIQueuingScrollView *)self _didEndProgrammaticScroll];
  }
}

- (BOOL)_gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  recognizerCopy = recognizer;
  touchCopy = touch;
  gestureRecognizers = [(UIView *)self gestureRecognizers];
  v9 = [gestureRecognizers indexOfObject:recognizerCopy];

  if (v9 == 0x7FFFFFFFFFFFFFFFLL || CGRectIsEmpty(self->_disabledScrollingRegion))
  {
    v10 = 0;
    goto LABEL_4;
  }

  gestureRecognizers = [(UIView *)self superview];
  [touchCopy locationInView:gestureRecognizers];
  v16.x = v12;
  v16.y = v13;
  if (!CGRectContainsPoint(self->_disabledScrollingRegion, v16))
  {
    v10 = 1;
LABEL_4:
    v15.receiver = self;
    v15.super_class = _UIQueuingScrollView;
    v11 = [(UIScrollView *)&v15 _gestureRecognizer:recognizerCopy shouldReceiveTouch:touchCopy];
    if (!v10)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v11 = 0;
LABEL_8:

LABEL_9:
  return v11;
}

- (unint64_t)_abuttedPagingEdges
{
  [(_UIQueuingScrollView *)self _adjustContentInsets];
  v34.receiver = self;
  v34.super_class = _UIQueuingScrollView;
  _abuttedPagingEdges = [(UIScrollView *)&v34 _abuttedPagingEdges];
  if ([(UIScrollView *)self _isHorizontalBouncing]|| [(UIScrollView *)self _isVerticalBouncing]|| ![(_UIQueuingScrollView *)self _dataSourceProvidesViews])
  {
    return _abuttedPagingEdges;
  }

  navigationOrientation = self->_navigationOrientation;
  [(UIScrollView *)self _pageDecelerationTarget];
  v6 = v5;
  v8 = v7;
  [(UIScrollView *)self contentOffset];
  v10 = v6 - v9;
  v12 = v8 - v11;
  v13 = navigationOrientation ? v12 : v10;
  if (![(UIScrollView *)self isDecelerating]|| fabs(v13) < 2.22044605e-16)
  {
    return _abuttedPagingEdges;
  }

  v14 = self->_navigationOrientation;
  if (!v14)
  {
    [(UIScrollView *)self _pageDecelerationTarget];
    v16 = v15;
    [(UIView *)self bounds];
    if (v16 < CGRectGetWidth(v35))
    {
LABEL_14:
      v19 = 1;
      v20 = [(_UIQueuingScrollView *)self _viewAtIndex:0 loadingIfNecessary:1 updatingContents:0 animated:0];

      if (!v20)
      {
        return _abuttedPagingEdges;
      }

      v21 = 0;
      goto LABEL_24;
    }

    v14 = self->_navigationOrientation;
  }

  if (v14 == 1)
  {
    [(UIScrollView *)self _pageDecelerationTarget];
    v18 = v17;
    [(UIView *)self bounds];
    if (v18 < CGRectGetHeight(v36))
    {
      goto LABEL_14;
    }

    v14 = self->_navigationOrientation;
  }

  if (v14)
  {
    goto LABEL_20;
  }

  [(UIScrollView *)self _pageDecelerationTarget];
  v23 = v22;
  [(UIView *)self bounds];
  if (v23 <= CGRectGetWidth(v37))
  {
    v14 = self->_navigationOrientation;
LABEL_20:
    if (v14 != 1)
    {
      return _abuttedPagingEdges;
    }

    [(UIScrollView *)self _pageDecelerationTarget];
    v25 = v24;
    [(UIView *)self bounds];
    if (v25 <= CGRectGetHeight(v38))
    {
      return _abuttedPagingEdges;
    }
  }

  v21 = 1;
  v26 = [(_UIQueuingScrollView *)self _viewAtIndex:2 loadingIfNecessary:1 updatingContents:0 animated:0];

  if (!v26)
  {
    return _abuttedPagingEdges;
  }

  v19 = 0;
LABEL_24:
  v27 = self->_navigationOrientation;
  if (v27)
  {
    if (v27 != 1)
    {
      return _abuttedPagingEdges;
    }

    v28 = 4;
  }

  else
  {
    v27 = 2;
    v28 = 8;
  }

  v29 = v28 | _abuttedPagingEdges;
  v30 = _abuttedPagingEdges & ~v28;
  if (v21)
  {
    v30 = v29;
  }

  v31 = v30 | v27;
  v32 = v30 & ~v27;
  if (v19)
  {
    return v31;
  }

  else
  {
    return v32;
  }
}

- (void)_handleDirectionalPageWithHorizontalVelocity:(double)velocity verticalVelocity:(double)verticalVelocity
{
  v5 = fabs(verticalVelocity);
  if (fabs(velocity) >= 2.22044605e-16 || v5 >= 2.22044605e-16)
  {
    if (self->_navigationOrientation)
    {
      velocity = verticalVelocity;
    }

    v8 = velocity <= 0.0;
    WeakRetained = objc_loadWeakRetained(&self->_qDelegate);
    [WeakRetained queuingScrollView:self attemptToPageInDirection:v8];
  }
}

- (void)_setWrappedViewAtIndex:(int64_t)index withView:(id)view
{
  viewCopy = view;
  if (!viewCopy)
  {
    goto LABEL_9;
  }

  v14 = viewCopy;
  v8 = [(NSArray *)self->_wrapperViews objectAtIndex:index];
  subviews = [v8 subviews];
  if (![subviews count])
  {
    goto LABEL_5;
  }

  subviews2 = [v8 subviews];
  _ui_onlyObject = [subviews2 _ui_onlyObject];

  v12 = v14;
  if (_ui_onlyObject != v14)
  {
    subviews = [MEMORY[0x1E696AAA8] currentHandler];
    [subviews handleFailureInMethod:a2 object:self file:@"_UIQueuingScrollView.m" lineNumber:354 description:@"Unexpected subviews"];
LABEL_5:

    v12 = v14;
  }

  superview = [v12 superview];

  if (v8 != superview)
  {
    [v8 bounds];
    [v14 setFrame:?];
    [v14 setAutoresizingMask:{objc_msgSend(v14, "autoresizingMask") | 0x12}];
    [v8 addSubview:v14];
  }

  viewCopy = v14;
LABEL_9:
}

- (BOOL)_dataSourceProvidesViews
{
  WeakRetained = objc_loadWeakRetained(&self->_qDataSource);
  if (WeakRetained)
  {
    delegateFlags = self->_delegateFlags;
    if ((*&delegateFlags & 0x80) != 0)
    {
      v5 = (*&delegateFlags >> 6) & 1;
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (id)_viewBefore:(BOOL)before view:(id)view
{
  viewCopy = view;
  if ([(_UIQueuingScrollView *)self _dataSourceProvidesViews])
  {
    WeakRetained = objc_loadWeakRetained(&self->_qDataSource);
    v8 = WeakRetained;
    if (before)
    {
      [WeakRetained queuingScrollView:self viewBeforeView:viewCopy];
    }

    else
    {
      [WeakRetained queuingScrollView:self viewAfterView:viewCopy];
    }
    v9 = ;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_visibleView
{
  v4 = [(NSArray *)self->_views objectAtIndex:1];
  null = [MEMORY[0x1E695DFB0] null];

  if (v4 == null)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIQueuingScrollView.m" lineNumber:385 description:@"Visible view can't be 'NULL'"];
  }

  if (v4 == @"kUIFaultingViewSentinel")
  {
    v6 = 0;
  }

  else
  {
    v6 = v4;
  }

  v7 = v6;

  return v6;
}

- (void)_flushView:(id)view animated:(BOOL)animated
{
  animatedCopy = animated;
  viewCopy = view;
  pendingVisibleView = self->_pendingVisibleView;
  v9 = viewCopy;
  if (pendingVisibleView == viewCopy)
  {
    self->_pendingVisibleView = 0;
  }

  if ((*&self->_delegateFlags & 0x100) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_qDataSource);
    [WeakRetained queuingScrollView:self didFlushView:v9 animated:animatedCopy];
  }
}

- (void)_replaceViews:(id)views updatingContents:(BOOL)contents adjustContentInsets:(BOOL)insets animated:(BOOL)animated
{
  animatedCopy = animated;
  v27 = *MEMORY[0x1E69E9840];
  viewsCopy = views;
  if ([(NSArray *)viewsCopy count]!= 3)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIQueuingScrollView.m" lineNumber:399 description:{@"Invalid parameter not satisfying: %@", @"[views count] == 3"}];
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v11 = self->_views;
  v12 = [(NSArray *)v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v23;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v23 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v22 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v16 removeFromSuperview];
          if (![(NSArray *)viewsCopy containsObject:v16])
          {
            [(_UIQueuingScrollView *)self _flushView:v16 animated:animatedCopy];
          }
        }
      }

      v13 = [(NSArray *)v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v13);
  }

  for (j = 0; j != 3; ++j)
  {
    v18 = [(NSArray *)viewsCopy objectAtIndex:j];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (contents || [(NSArray *)self->_views containsObject:v18]))
    {
      [(_UIQueuingScrollView *)self _setWrappedViewAtIndex:j withView:v18];
    }
  }

  views = self->_views;
  self->_views = viewsCopy;

  if (insets)
  {
    [(_UIQueuingScrollView *)self _adjustContentInsets];
  }
}

- (id)_requestViewForIndex:(int64_t)index
{
  if (index)
  {
    if (index != 2)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"_UIQueuingScrollView.m" lineNumber:422 description:{@"Invalid parameter not satisfying: %@", @"LEFT_VIEW_INDEX == index || index == RIGHT_VIEW_INDEX"}];
    }

    _visibleView = [(_UIQueuingScrollView *)self _visibleView];
    v7 = [(_UIQueuingScrollView *)self _viewAfterView:_visibleView];
  }

  else
  {
    _visibleView = [(_UIQueuingScrollView *)self _visibleView];
    v7 = [(_UIQueuingScrollView *)self _viewBeforeView:_visibleView];
  }

  v8 = v7;

  return v8;
}

- (id)_dequeueViewForIndex:(int64_t)index
{
  if ((index | 2) != 2)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIQueuingScrollView.m" lineNumber:428 description:{@"Invalid parameter not satisfying: %@", @"LEFT_VIEW_INDEX == index || index == RIGHT_VIEW_INDEX"}];
  }

  if (![(NSMutableArray *)self->_viewStateQueue count])
  {
    view = 0;
    goto LABEL_11;
  }

  _ui_peek = [(NSMutableArray *)self->_viewStateQueue _ui_peek];
  transitionDirection = [_ui_peek transitionDirection];
  if (index == 2 && !transitionDirection)
  {

LABEL_10:
    _ui_dequeue = [(NSMutableArray *)self->_viewStateQueue _ui_dequeue];
    view = [_ui_dequeue view];

    goto LABEL_11;
  }

  _ui_peek2 = [(NSMutableArray *)self->_viewStateQueue _ui_peek];
  transitionDirection2 = [_ui_peek2 transitionDirection];

  view = 0;
  if (!index && transitionDirection2 == 1)
  {
    goto LABEL_10;
  }

LABEL_11:

  return view;
}

- (id)_viewAtIndex:(int64_t)index loadingIfNecessary:(BOOL)necessary updatingContents:(BOOL)contents animated:(BOOL)animated
{
  animatedCopy = animated;
  contentsCopy = contents;
  necessaryCopy = necessary;
  if (index >= 3)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIQueuingScrollView.m" lineNumber:439 description:{@"Invalid parameter not satisfying: %@", @"LEFT_VIEW_INDEX <= index && index <= RIGHT_VIEW_INDEX"}];
  }

  v11 = [(NSArray *)self->_views objectAtIndex:index];
  v12 = v11;
  if (necessaryCopy && v11 == @"kUIFaultingViewSentinel")
  {
    v13 = [(_UIQueuingScrollView *)self _dequeueViewForIndex:index];
    v14 = v13;
    if (v13)
    {
      v12 = v13;
    }

    else
    {
      v15 = [(_UIQueuingScrollView *)self _requestViewForIndex:index];
      v16 = v15;
      if (v15)
      {
        null = v15;
      }

      else
      {
        null = [MEMORY[0x1E695DFB0] null];
      }

      v12 = null;
    }

    if (v12 != @"kUIFaultingViewSentinel")
    {
      v18 = v12;
      v19 = [(NSArray *)self->_views mutableCopy];
      [v19 replaceObjectAtIndex:index withObject:v18];
      [(_UIQueuingScrollView *)self _replaceViews:v19 updatingContents:contentsCopy adjustContentInsets:1 animated:animatedCopy];
    }
  }

  if (contentsCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_UIQueuingScrollView *)self _setWrappedViewAtIndex:index withView:v12];
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v20 = v12;
  }

  else
  {
    v20 = 0;
  }

  v21 = v20;

  return v20;
}

- (void)_invalidateOffscreenViews
{
  v3 = MEMORY[0x1E695DEC8];
  _visibleView = [(_UIQueuingScrollView *)self _visibleView];
  v7 = _visibleView;
  if (_visibleView)
  {
    v5 = _visibleView;
  }

  else
  {
    v5 = @"kUIFaultingViewSentinel";
  }

  v6 = [v3 arrayWithObjects:{v5, @"kUIFaultingViewSentinel", 0}];
  [(_UIQueuingScrollView *)self _replaceViews:v6 updatingContents:1 adjustContentInsets:1 animated:0];
}

- (BOOL)isPreviousScrollCompatibleWithScrollInDirection:(int64_t)direction
{
  lastObject = [(NSMutableArray *)self->_viewStateQueue lastObject];
  v5 = lastObject;
  if (lastObject)
  {
    v6 = [lastObject isCompatibleWithTransitionInDirection:direction];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (BOOL)isManualScrollInProgress
{
  if (self->_manualScrollInProgress)
  {
    return 1;
  }

  lastObject = [(NSMutableArray *)self->_completionStateQueue lastObject];
  isManual = [lastObject isManual];

  return isManual;
}

- (int64_t)_navigationDirectionForActiveScroll:(BOOL)scroll
{
  scrollCopy = scroll;
  if ([(UIScrollView *)self _pagingRight]|| [(UIScrollView *)self _pagingDown])
  {
    return 0;
  }

  if ([(UIScrollView *)self _pagingLeft]|| [(UIScrollView *)self _pagingUp])
  {
    return 1;
  }

  navigationOrientation = self->_navigationOrientation;
  if (scrollCopy)
  {
    if (!navigationOrientation)
    {
      [(UIScrollView *)self _animatedTargetOffset];
      v8 = v7;
      [(UIScrollView *)self _animatedOriginalOffset];
      if (v8 > v9)
      {
        return 0;
      }

      navigationOrientation = self->_navigationOrientation;
    }

    if (navigationOrientation != 1)
    {
      goto LABEL_14;
    }

    [(UIScrollView *)self _animatedTargetOffset];
    v11 = v10;
    [(UIScrollView *)self _animatedOriginalOffset];
    if (v11 <= v12)
    {
      navigationOrientation = self->_navigationOrientation;
LABEL_14:
      if (!navigationOrientation)
      {
        [(UIScrollView *)self _animatedTargetOffset];
        v14 = v13;
        [(UIScrollView *)self _animatedOriginalOffset];
        if (v14 < v15)
        {
          return 1;
        }

        navigationOrientation = self->_navigationOrientation;
      }

      if (navigationOrientation == 1)
      {
        [(UIScrollView *)self _animatedTargetOffset];
        v17 = v16;
        [(UIScrollView *)self _animatedOriginalOffset];
        goto LABEL_19;
      }

      return -1;
    }

    return 0;
  }

  if (!navigationOrientation)
  {
    [(UIScrollView *)self _horizontalVelocity];
    if (v19 > 0.0)
    {
      return 0;
    }

    navigationOrientation = self->_navigationOrientation;
  }

  if (navigationOrientation == 1)
  {
    [(UIScrollView *)self _verticalVelocity];
    if (v20 > 0.0)
    {
      return 0;
    }

    navigationOrientation = self->_navigationOrientation;
  }

  if (!navigationOrientation)
  {
    [(UIScrollView *)self _horizontalVelocity];
    if (v21 < 0.0)
    {
      return 1;
    }

    navigationOrientation = self->_navigationOrientation;
  }

  if (navigationOrientation == 1)
  {
    [(UIScrollView *)self _verticalVelocity];
    if (v22 < 0.0)
    {
      return 1;
    }
  }

  if (![(UIScrollView *)self _isBouncing])
  {
    return -1;
  }

  v23 = self->_navigationOrientation;
  if (!v23)
  {
    [(UIScrollView *)self _pageDecelerationTarget];
    v25 = v24;
    [(UIScrollView *)self contentOffset];
    if (v25 > v26)
    {
      return 0;
    }

    v23 = self->_navigationOrientation;
  }

  if (v23 == 1)
  {
    [(UIScrollView *)self _pageDecelerationTarget];
    v28 = v27;
    [(UIScrollView *)self contentOffset];
    if (v28 > v29)
    {
      return 0;
    }

    v23 = self->_navigationOrientation;
  }

  if (!v23)
  {
    [(UIScrollView *)self _pageDecelerationTarget];
    v31 = v30;
    [(UIScrollView *)self contentOffset];
    if (v31 < v32)
    {
      return 1;
    }

    v23 = self->_navigationOrientation;
  }

  if (v23 == 1)
  {
    [(UIScrollView *)self _pageDecelerationTarget];
    v17 = v33;
    [(UIScrollView *)self contentOffset];
LABEL_19:
    if (v17 >= v18)
    {
      return -1;
    }

    return 1;
  }

  return -1;
}

- (int64_t)_navigationDirectionFromCurrentOffset
{
  [(UIView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  navigationOrientation = self->_navigationOrientation;
  [(UIScrollView *)self contentOffset];
  if (navigationOrientation)
  {
    v14 = v13;
    v21.origin.x = v4;
    v21.origin.y = v6;
    v21.size.width = v8;
    v21.size.height = v10;
    if (v14 >= CGRectGetHeight(v21))
    {
      [(UIScrollView *)self contentOffset];
      v16 = v15;
      v22.origin.x = v4;
      v22.origin.y = v6;
      v22.size.width = v8;
      v22.size.height = v10;
      Height = CGRectGetHeight(v22);
      goto LABEL_7;
    }

    return 1;
  }

  v18 = v12;
  v23.origin.x = v4;
  v23.origin.y = v6;
  v23.size.width = v8;
  v23.size.height = v10;
  if (v18 < CGRectGetWidth(v23))
  {
    return 1;
  }

  [(UIScrollView *)self contentOffset];
  v16 = v20;
  v24.origin.x = v4;
  v24.origin.y = v6;
  v24.size.width = v8;
  v24.size.height = v10;
  Height = CGRectGetWidth(v24);
LABEL_7:
  if (v16 > Height)
  {
    return 0;
  }

  else
  {
    return -1;
  }
}

- (void)_enqueueCompletionState:(id)state
{
  stateCopy = state;
  if (!stateCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIQueuingScrollView.m" lineNumber:511 description:{@"Invalid parameter not satisfying: %@", @"state"}];
  }

  if ([(NSMutableArray *)self->_completionStateQueue count])
  {
    lastObject = [(NSMutableArray *)self->_completionStateQueue lastObject];
    view = [lastObject view];
    view2 = [stateCopy view];
    v8 = view2;
    if (view == view2)
    {
      lastObject2 = [(NSMutableArray *)self->_completionStateQueue lastObject];
      transitionDirection = [lastObject2 transitionDirection];
      transitionDirection2 = [stateCopy transitionDirection];

      if (transitionDirection != transitionDirection2)
      {
        goto LABEL_9;
      }

      lastObject = [MEMORY[0x1E696AAA8] currentHandler];
      [lastObject handleFailureInMethod:a2 object:self file:@"_UIQueuingScrollView.m" lineNumber:513 description:@"Duplicate states in queue"];
    }

    else
    {
    }
  }

LABEL_9:
  [(NSMutableArray *)self->_completionStateQueue _ui_enqueue:stateCopy];
}

- (void)_cleanUpCompletionState:(id)state didFinish:(BOOL)finish didComplete:(BOOL)complete
{
  if (state)
  {
    completeCopy = complete;
    finishCopy = finish;
    viewStateQueue = self->_viewStateQueue;
    stateCopy = state;
    [(NSMutableArray *)viewStateQueue removeObject:stateCopy];
    [stateCopy cleanupWithFinishedState:finishCopy completedState:completeCopy];
  }
}

- (void)_enqueueAnimatedScrollInDirection:(int64_t)direction withView:(id)view completion:(id)completion
{
  viewCopy = view;
  completionCopy = completion;
  if (!viewCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIQueuingScrollView.m" lineNumber:529 description:{@"Invalid parameter not satisfying: %@", @"view"}];
  }

  [(UIScrollView *)self contentOffset];
  v12 = v11;
  v14 = v13;
  if ([(UIScrollView *)self _pagingLeft]|| [(UIScrollView *)self _pagingRight]|| [(UIScrollView *)self _pagingUp]|| [(UIScrollView *)self _pagingDown])
  {
    [(UIScrollView *)self _pageDecelerationTarget];
LABEL_8:
    v12 = v15;
    v14 = v16;
    goto LABEL_9;
  }

  if ([(UIScrollView *)self isScrollAnimating])
  {
    [(UIScrollView *)self _animatedTargetOffset];
    goto LABEL_8;
  }

LABEL_9:
  navigationOrientation = self->_navigationOrientation;
  [(UIView *)self bounds];
  if (navigationOrientation)
  {
    Height = CGRectGetHeight(*&v18);
    if (direction)
    {
      Height = -Height;
    }

    v14 = v14 + Height;
  }

  else
  {
    Width = CGRectGetWidth(*&v18);
    if (direction)
    {
      Width = -Width;
    }

    v12 = v12 + Width;
  }

  if (![(NSMutableArray *)self->_completionStateQueue count])
  {
    v29 = [_UIQueuingScrollViewState alloc];
    v72[0] = MEMORY[0x1E69E9820];
    v72[1] = 3221225472;
    v72[2] = __78___UIQueuingScrollView__enqueueAnimatedScrollInDirection_withView_completion___block_invoke_4;
    v72[3] = &unk_1E7103130;
    v72[4] = self;
    v73 = viewCopy;
    directionCopy = direction;
    v74 = completionCopy;
    v27 = [(_UIQueuingScrollViewState *)v29 initWithTransitionDirection:direction view:v73 manual:0 completion:v72];
    [(NSMutableArray *)self->_viewStateQueue _ui_enqueue:v27];
    v30 = MEMORY[0x1E695DEC8];
    if (direction == 1)
    {
      _visibleView = [(_UIQueuingScrollView *)self _visibleView];
      v32 = @"kUIFaultingViewSentinel";
    }

    else
    {
      v32 = [(NSArray *)self->_views objectAtIndex:0];
      _visibleView = [(_UIQueuingScrollView *)self _visibleView];
      if (!direction)
      {
        v62 = @"kUIFaultingViewSentinel";
LABEL_37:
        v63 = [v30 arrayWithObjects:{v32, _visibleView, v62, 0}];
        [(_UIQueuingScrollView *)self _replaceViews:v63 updatingContents:1 adjustContentInsets:1 animated:1];

        if (direction)
        {

          if (direction == 1)
          {
            goto LABEL_43;
          }
        }

        else
        {
        }

LABEL_43:
        [(_UIQueuingScrollView *)self _enqueueCompletionState:v27];
        [(UIScrollView *)self setContentOffset:1 animated:v12, v14];

        v28 = v73;
        goto LABEL_44;
      }
    }

    v62 = [(NSArray *)self->_views objectAtIndex:2];
    goto LABEL_37;
  }

  lastObject = [(NSMutableArray *)self->_completionStateQueue lastObject];
  transitionDirection = [lastObject transitionDirection];

  if (transitionDirection == direction)
  {
    v26 = [_UIQueuingScrollViewState alloc];
    v76[0] = MEMORY[0x1E69E9820];
    v76[1] = 3221225472;
    v76[2] = __78___UIQueuingScrollView__enqueueAnimatedScrollInDirection_withView_completion___block_invoke_3;
    v76[3] = &unk_1E7103130;
    v76[4] = self;
    v77 = viewCopy;
    directionCopy2 = direction;
    v78 = completionCopy;
    v27 = [(_UIQueuingScrollViewState *)v26 initWithTransitionDirection:direction view:v77 manual:0 completion:v76];
    [(NSMutableArray *)self->_viewStateQueue _ui_enqueue:v27];
    [(_UIQueuingScrollView *)self _enqueueCompletionState:v27];
    [(UIScrollView *)self setContentOffset:1 animated:v12, v14];

    v28 = v77;
LABEL_44:

    goto LABEL_45;
  }

  v33 = [(NSMutableArray *)self->_completionStateQueue count];
  completionStateQueue = self->_completionStateQueue;
  if (v33 == 1)
  {
    _ui_dequeue = [(NSMutableArray *)completionStateQueue _ui_dequeue];
    [(_UIQueuingScrollView *)self _cleanUpCompletionState:_ui_dequeue didFinish:0 didComplete:0];

    v36 = [_UIQueuingScrollViewState alloc];
    v87[0] = MEMORY[0x1E69E9820];
    v87[1] = 3221225472;
    v87[2] = __78___UIQueuingScrollView__enqueueAnimatedScrollInDirection_withView_completion___block_invoke;
    v87[3] = &unk_1E7103130;
    v87[4] = self;
    v37 = viewCopy;
    v88 = v37;
    directionCopy3 = direction;
    v71 = completionCopy;
    v89 = completionCopy;
    v27 = [(_UIQueuingScrollViewState *)v36 initWithTransitionDirection:direction view:v37 manual:0 completion:v87];
    [(UIScrollView *)self _stopScrollingAndZoomingAnimationsPinningToContentViewport:0];
    [(_UIQueuingScrollView *)self _enqueueCompletionState:v27];
    _visibleView2 = [(_UIQueuingScrollView *)self _visibleView];
    [(_UIQueuingScrollView *)self _notifyDelegateWillManuallyScroll:0 toRevealView:v37 concealingView:_visibleView2 animated:1];

    _visibleView3 = [(_UIQueuingScrollView *)self _visibleView];
    [(_UIQueuingScrollView *)self _notifyDelegateDidCommitManualScroll:0 toRevealView:v37 concealView:_visibleView3 direction:direction animated:1 canComplete:1];

    v40 = MEMORY[0x1E695DEC8];
    v41 = [(_UIQueuingScrollView *)self _viewAtIndex:0 loadingIfNecessary:0 updatingContents:0 animated:1];
    v42 = v41;
    if (v41)
    {
      v43 = v41;
    }

    else
    {
      v43 = @"kUIFaultingViewSentinel";
    }

    v44 = [(_UIQueuingScrollView *)self _viewAtIndex:2 loadingIfNecessary:0 updatingContents:0 animated:1];
    v45 = v44;
    if (v44)
    {
      v46 = v44;
    }

    else
    {
      v46 = @"kUIFaultingViewSentinel";
    }

    v47 = [v40 arrayWithObjects:{v43, v37, v46, 0}];
    [(_UIQueuingScrollView *)self _replaceViews:v47 updatingContents:1 adjustContentInsets:1 animated:1];

    [(UIScrollView *)self _contentOffsetAnimationDuration];
    v49 = v48;
    v50 = self->_navigationOrientation;
    [(UIScrollView *)self contentOffset];
    v52 = v12 - v51;
    v54 = v14 - v53;
    if (v50)
    {
      v52 = v54;
    }

    if (v52 >= 0.0)
    {
      v55 = v52;
    }

    else
    {
      v55 = -v52;
    }

    v56 = self->_navigationOrientation;
    [(UIView *)self bounds];
    if (v56)
    {
      v61 = CGRectGetHeight(*&v57);
    }

    else
    {
      v61 = CGRectGetWidth(*&v57);
    }

    [(UIScrollView *)self _setContentOffsetAnimationDuration:v49 * (v55 / v61)];
    [(UIScrollView *)self setContentOffset:1 animated:v12, v14];
    [(UIScrollView *)self _setContentOffsetAnimationDuration:v49];

    completionCopy = v71;
  }

  else
  {
    lastObject2 = [(NSMutableArray *)completionStateQueue lastObject];
    [(NSMutableArray *)self->_completionStateQueue removeLastObject];
    [(NSMutableArray *)self->_viewStateQueue removeObject:lastObject2];
    lastObject3 = [(NSMutableArray *)self->_completionStateQueue lastObject];
    [(NSMutableArray *)self->_completionStateQueue removeLastObject];
    v66 = [_UIQueuingScrollViewState alloc];
    transitionDirection2 = [lastObject3 transitionDirection];
    v80[0] = MEMORY[0x1E69E9820];
    v80[1] = 3221225472;
    v80[2] = __78___UIQueuingScrollView__enqueueAnimatedScrollInDirection_withView_completion___block_invoke_2;
    v80[3] = &unk_1E7103158;
    v80[4] = self;
    v81 = lastObject3;
    v82 = lastObject2;
    v83 = viewCopy;
    directionCopy4 = direction;
    v84 = completionCopy;
    v86 = a2;
    v68 = lastObject2;
    v69 = lastObject3;
    v27 = [(_UIQueuingScrollViewState *)v66 initWithTransitionDirection:transitionDirection2 view:v83 manual:0 completion:v80];
    [(_UIQueuingScrollView *)self _enqueueCompletionState:v27];
    [(UIScrollView *)self setContentOffset:1 animated:v12, v14];
  }

LABEL_45:
}

- (void)_notifyDelegateWillManuallyScroll:(BOOL)scroll toRevealView:(id)view concealingView:(id)concealingView animated:(BOOL)animated
{
  animatedCopy = animated;
  scrollCopy = scroll;
  viewCopy = view;
  concealingViewCopy = concealingView;
  if (viewCopy && (*&self->_delegateFlags & 1) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_qDelegate);
    [WeakRetained queuingScrollView:self willManuallyScroll:scrollCopy toRevealView:viewCopy concealView:concealingViewCopy animated:animatedCopy];
  }
}

- (void)_notifyDelegateDidCommitManualScroll:(BOOL)scroll toRevealView:(id)view concealView:(id)concealView direction:(int64_t)direction animated:(BOOL)animated canComplete:(BOOL)complete
{
  animatedCopy = animated;
  scrollCopy = scroll;
  viewCopy = view;
  concealViewCopy = concealView;
  if (viewCopy && (*&self->_delegateFlags & 2) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_qDelegate);
    LOBYTE(v16) = complete;
    [WeakRetained queuingScrollView:self didCommitManualScroll:scrollCopy toRevealView:viewCopy concealView:concealViewCopy direction:direction animated:animatedCopy canComplete:v16];
  }
}

- (void)_notifyDelegateDidEndManualScroll:(BOOL)scroll toRevealView:(id)view direction:(int64_t)direction animated:(BOOL)animated didFinish:(BOOL)finish didComplete:(BOOL)complete
{
  finishCopy = finish;
  animatedCopy = animated;
  scrollCopy = scroll;
  viewCopy = view;
  if (viewCopy && (*&self->_delegateFlags & 4) != 0)
  {
    v17 = viewCopy;
    WeakRetained = objc_loadWeakRetained(&self->_qDelegate);
    LOBYTE(v16) = complete;
    [WeakRetained queuingScrollView:self didEndManualScroll:scrollCopy toRevealView:v17 direction:direction animated:animatedCopy didFinish:finishCopy didComplete:v16];

    viewCopy = v17;
  }
}

- (void)_notifyDelegateDidBailoutOfScrollAndRevealedView:(id)view
{
  if ((*&self->_delegateFlags & 8) != 0)
  {
    viewCopy = view;
    WeakRetained = objc_loadWeakRetained(&self->_qDelegate);
    [WeakRetained queuingScrollView:self didBailoutOfScrollAndRevealedView:viewCopy];
  }
}

- (void)_notifyDelegateDidFinishScrolling
{
  if ((*&self->_delegateFlags & 0x10) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_qDelegate);
    [WeakRetained queuingScrollViewDidFinishScrolling:self];
  }
}

- (void)setView:(id)view direction:(int64_t)direction animated:(BOOL)animated completion:(id)completion
{
  viewCopy = view;
  completionCopy = completion;
  if (!viewCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIQueuingScrollView.m" lineNumber:681 description:{@"Invalid parameter not satisfying: %@", @"view"}];
  }

  if (![(UIScrollView *)self isTracking]|| ![(UIScrollView *)self isDragging])
  {
    if (animated)
    {
      [(_UIQueuingScrollView *)self _enqueueAnimatedScrollInDirection:direction withView:viewCopy completion:completionCopy];
    }

    else
    {
      while ([(NSMutableArray *)self->_completionStateQueue count])
      {
        _ui_dequeue = [(NSMutableArray *)self->_completionStateQueue _ui_dequeue];
        [(_UIQueuingScrollView *)self _cleanUpCompletionState:_ui_dequeue didFinish:0 didComplete:0];
      }

      [(NSMutableArray *)self->_viewStateQueue removeAllObjects];
      _visibleView = [(_UIQueuingScrollView *)self _visibleView];
      [(_UIQueuingScrollView *)self _notifyDelegateWillManuallyScroll:0 toRevealView:viewCopy concealingView:_visibleView animated:0];

      _visibleView2 = [(_UIQueuingScrollView *)self _visibleView];
      [(_UIQueuingScrollView *)self _notifyDelegateDidCommitManualScroll:0 toRevealView:viewCopy concealView:_visibleView2 direction:direction animated:0 canComplete:1];

      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:{viewCopy, @"kUIFaultingViewSentinel", 0}];
      [(_UIQueuingScrollView *)self _replaceViews:v15 updatingContents:1 adjustContentInsets:1 animated:0];

      [(_UIQueuingScrollView *)self _notifyDelegateDidEndManualScroll:0 toRevealView:viewCopy direction:direction animated:0 didFinish:1 didComplete:1];
      if (completionCopy)
      {
        completionCopy[2](completionCopy, 1, 1);
      }
    }
  }
}

- (void)_adjustContentInsets
{
  _visibleView = [(_UIQueuingScrollView *)self _visibleView];

  if (_visibleView)
  {
    [(UIView *)self bounds];
    v6 = v4;
    v7 = v5;
    navigationOrientation = self->_navigationOrientation;
    if (navigationOrientation)
    {
      v9 = v5 * 100.0;
    }

    else
    {
      v9 = 0.0;
    }

    if (navigationOrientation)
    {
      v10 = 0.0;
    }

    else
    {
      v10 = v4 * 100.0;
    }

    v11 = [(_UIQueuingScrollView *)self _viewAtIndex:0 loadingIfNecessary:1 updatingContents:0 animated:0];

    v12 = v10;
    v13 = v9;
    if (!v11)
    {
      v14 = self->_navigationOrientation;
      if (v14)
      {
        v12 = v10;
      }

      else
      {
        v12 = -v6;
      }

      if (v14)
      {
        v13 = -v7;
      }

      else
      {
        v13 = v9;
      }
    }

    v15 = [(_UIQueuingScrollView *)self _viewAtIndex:2 loadingIfNecessary:1 updatingContents:0 animated:0];

    if (!v15)
    {
      if (self->_navigationOrientation)
      {
        v9 = -v7;
      }

      else
      {
        v10 = -v6;
      }
    }
  }

  else
  {
    v10 = 0.0;
    v9 = 0.0;
    v12 = 0.0;
    v13 = 0.0;
  }

  [(UIScrollView *)self setContentInset:v13, v12, v9, v10];
}

- (void)_boundsDidChangeToSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v6 = size.height * 3.0;
  if (self->_navigationOrientation)
  {
    size.height = size.height * 3.0;
  }

  else
  {
    size.width = size.width * 3.0;
  }

  [(UIScrollView *)self setContentSize:size.width, size.height, v6];
  navigationOrientation = self->_navigationOrientation;
  if (navigationOrientation)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = width;
  }

  if (navigationOrientation)
  {
    v9 = height;
  }

  else
  {
    v9 = 0.0;
  }

  [(UIScrollView *)self setContentOffset:v8, v9];
  v10 = [(NSArray *)self->_wrapperViews objectAtIndex:0];
  v11 = v10;
  v12 = self->_navigationOrientation;
  pageSpacing = self->_pageSpacing;
  v14 = height - (pageSpacing + pageSpacing);
  v15 = width - (pageSpacing + pageSpacing);
  if (v12)
  {
    v16 = 0.0;
  }

  else
  {
    v16 = self->_pageSpacing;
  }

  if (v12)
  {
    v15 = width;
  }

  else
  {
    pageSpacing = 0.0;
    v14 = height;
  }

  [v10 setFrame:{v16, pageSpacing, v15, v14}];

  v17 = [(NSArray *)self->_wrapperViews objectAtIndex:1];
  v18 = v17;
  v19 = self->_navigationOrientation;
  v20 = self->_pageSpacing;
  v21 = v20 + v20;
  v22 = height + v20;
  v23 = height - (v20 + v20);
  v24 = width + v20;
  v25 = width - v21;
  if (v19)
  {
    v24 = 0.0;
    v26 = v22;
  }

  else
  {
    v26 = 0.0;
  }

  if (v19)
  {
    v27 = width;
  }

  else
  {
    v27 = v25;
  }

  if (!v19)
  {
    v23 = height;
  }

  [v17 setFrame:{v24, v26, v27, v23, v25}];

  v28 = [(NSArray *)self->_wrapperViews objectAtIndex:2];
  v29 = v28;
  v30 = self->_navigationOrientation;
  v31 = self->_pageSpacing;
  v32 = v31 + v31;
  v33 = height + height + v31;
  v34 = height - (v31 + v31);
  v35 = width + width + v31;
  v36 = width - v32;
  if (v30)
  {
    v35 = 0.0;
    v37 = v33;
  }

  else
  {
    v37 = 0.0;
  }

  if (v30)
  {
    v38 = width;
  }

  else
  {
    v38 = v36;
  }

  if (!v30)
  {
    v34 = height;
  }

  [v28 setFrame:{v35, v37, v38, v34, v36}];

  [(_UIQueuingScrollView *)self _adjustContentInsets];
}

- (void)_commitGestureDrivenScrollRevealingView:(id)view concealingView:(id)concealingView inDirection:(int64_t)direction canComplete:(BOOL)complete
{
  completeCopy = complete;
  viewCopy = view;
  concealingViewCopy = concealingView;
  v12 = concealingViewCopy;
  if (viewCopy && concealingViewCopy)
  {
    lastObject = [(NSMutableArray *)self->_completionStateQueue lastObject];
    if ([lastObject isManual])
    {
      view = [lastObject view];
      v15 = view;
      if (view == viewCopy)
      {
        transitionDirection = [lastObject transitionDirection];

        if (transitionDirection == direction)
        {
          v17 = 0;
          goto LABEL_9;
        }
      }

      else
      {
      }
    }

    v18 = [_UIQueuingScrollViewState alloc];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __103___UIQueuingScrollView__commitGestureDrivenScrollRevealingView_concealingView_inDirection_canComplete___block_invoke;
    v25[3] = &unk_1E7103180;
    v25[4] = self;
    v26 = viewCopy;
    directionCopy = direction;
    v17 = [(_UIQueuingScrollViewState *)v18 initWithTransitionDirection:direction view:v26 manual:1 completion:v25];

LABEL_9:
    if ([lastObject isManual])
    {
      view2 = [lastObject view];

      if (view2 == v12)
      {
        view3 = [lastObject view];
        _visibleView = [(_UIQueuingScrollView *)self _visibleView];
        v21 = view3 == _visibleView;

LABEL_21:
        [(NSMutableArray *)self->_completionStateQueue removeLastObject];
        [(_UIQueuingScrollView *)self _cleanUpCompletionState:lastObject didFinish:v21 didComplete:v21];
        if (!v17)
        {
          goto LABEL_18;
        }

        goto LABEL_17;
      }

      transitionDirection2 = [lastObject transitionDirection];
      if (transitionDirection2 != [(_UITransitionState *)v17 transitionDirection])
      {
        v21 = 0;
        goto LABEL_21;
      }
    }

    else
    {
      while ([(NSMutableArray *)self->_completionStateQueue count])
      {
        _ui_dequeue = [(NSMutableArray *)self->_completionStateQueue _ui_dequeue];
        [(_UIQueuingScrollView *)self _cleanUpCompletionState:_ui_dequeue didFinish:0 didComplete:0];
      }

      [(NSMutableArray *)self->_viewStateQueue removeAllObjects];
    }

    if (!v17)
    {
LABEL_18:

      goto LABEL_19;
    }

LABEL_17:
    [(_UIQueuingScrollView *)self _enqueueCompletionState:v17];
    [(_UIQueuingScrollView *)self _notifyDelegateDidCommitManualScroll:1 toRevealView:viewCopy concealView:v12 direction:direction animated:1 canComplete:completeCopy];
    goto LABEL_18;
  }

LABEL_19:
}

- (BOOL)_isDeceleratingInOppositionToNavigationDirection:(int64_t)direction
{
  if (direction == -1)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIQueuingScrollView.m" lineNumber:779 description:@"'Undetermined' is not a valid navigation direction for this method"];
  }

  isDecelerating = [(UIScrollView *)self isDecelerating];
  if (isDecelerating)
  {
    navigationOrientation = self->_navigationOrientation;
    [(UIScrollView *)self contentOffset];
    if (navigationOrientation)
    {
      v9 = v8;
    }

    else
    {
      v9 = v7;
    }

    v10 = self->_navigationOrientation;
    [(UIScrollView *)self _pageDecelerationTarget];
    if (v10)
    {
      v11 = v12;
    }

    if (direction)
    {
      LOBYTE(isDecelerating) = v9 < v11;
    }

    else
    {
      LOBYTE(isDecelerating) = v11 < v9;
    }
  }

  return isDecelerating;
}

- (BOOL)_isScrollInProgress:(BOOL)progress
{
  if ([(UIScrollView *)self isTracking])
  {
    return 1;
  }

  else
  {
    return [(UIScrollView *)self isDecelerating]|| progress;
  }
}

- (void)_didScrollWithAnimation:(BOOL)animation force:(BOOL)force
{
  animationCopy = animation;
  v45[3] = *MEMORY[0x1E69E9840];
  v8 = [(_UIQueuingScrollView *)self _isScrollInProgress:?];
  v9 = v8;
  if (force || v8 && ![(UIScrollView *)self _isHorizontalBouncing]&& ![(UIScrollView *)self _isVerticalBouncing])
  {
    if ([(UIScrollView *)self isTracking])
    {
      LOBYTE(v10) = 1;
    }

    else
    {
      v10 = [(UIScrollView *)self isDecelerating]&& !animationCopy;
    }

    self->_manualScrollInProgress = v10;
    [(UIView *)self bounds];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    if (v9)
    {
      _navigationDirectionFromCurrentOffset = [(_UIQueuingScrollView *)self _navigationDirectionForActiveScroll:animationCopy];
    }

    else
    {
      _navigationDirectionFromCurrentOffset = [(_UIQueuingScrollView *)self _navigationDirectionFromCurrentOffset];
    }

    v40 = 0;
    v41 = &v40;
    v42 = 0x2020000000;
    v43 = 0;
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __54___UIQueuingScrollView__didScrollWithAnimation_force___block_invoke;
    v37[3] = &unk_1E71031A8;
    v37[4] = self;
    v37[5] = &v40;
    v38 = animationCopy;
    v39 = v9;
    v37[6] = _navigationDirectionFromCurrentOffset;
    v37[7] = a2;
    *&v37[8] = v12;
    *&v37[9] = v14;
    *&v37[10] = v12;
    *&v37[11] = v14;
    *&v37[12] = v16;
    *&v37[13] = v18;
    v20 = _Block_copy(v37);
    v21 = v20;
    navigationOrientation = self->_navigationOrientation;
    if ((navigationOrientation || v12 >= v16) && (navigationOrientation != 1 || v14 >= v18))
    {
      v29 = v14 > v18 && navigationOrientation == 1;
      v30 = v12 > v16 && navigationOrientation == 0;
      v23 = 2;
      if (!v30 && !v29)
      {
        goto LABEL_57;
      }
    }

    else
    {
      v23 = 0;
    }

    if (!(*(v20 + 2))(v20, v23))
    {
LABEL_57:

      _Block_object_dispose(&v40, 8);
      return;
    }

    _ui_dequeue = [(NSMutableArray *)self->_completionStateQueue _ui_dequeue];
    [(_UIQueuingScrollView *)self _cleanUpCompletionState:_ui_dequeue didFinish:1 didComplete:1];

    v25 = v41[3];
    if (v25 == -1)
    {
      v31 = [(_UIQueuingScrollView *)self _viewAtIndex:0 loadingIfNecessary:0 updatingContents:0 animated:animationCopy];
      v26 = v31;
      if (v31)
      {
        _visibleView = @"kUIFaultingViewSentinel";
        v44[0] = @"kUIFaultingViewSentinel";
        v44[1] = v31;
        if (!animationCopy)
        {
          _visibleView = [(_UIQueuingScrollView *)self _visibleView];
        }

        v44[2] = _visibleView;
        v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:3];
        if (!animationCopy)
        {
        }
      }

      else
      {
        v33 = 0;
      }

      v34 = self->_navigationOrientation;
      v35 = v12 + v16;
      v36 = v14 + v18;
    }

    else
    {
      if (v25 != 1)
      {
        v33 = 0;
LABEL_56:
        [(UIScrollView *)self setContentOffset:v12, v14];
        [(_UIQueuingScrollView *)self _adjustContentInsets];

        goto LABEL_57;
      }

      v26 = [(_UIQueuingScrollView *)self _viewAtIndex:2 loadingIfNecessary:0 updatingContents:0 animated:animationCopy];
      if (v26)
      {
        if (animationCopy)
        {
          _visibleView2 = @"kUIFaultingViewSentinel";
        }

        else
        {
          _visibleView2 = [(_UIQueuingScrollView *)self _visibleView];
        }

        v45[0] = _visibleView2;
        v45[1] = v26;
        v45[2] = @"kUIFaultingViewSentinel";
        v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:3];
        if (!animationCopy)
        {
        }
      }

      else
      {
        v33 = 0;
      }

      v34 = self->_navigationOrientation;
      v35 = v12 - v16;
      v36 = v14 - v18;
    }

    if (v34)
    {
      v12 = 0.0;
    }

    else
    {
      v12 = v35;
    }

    if (v34)
    {
      v14 = v36;
    }

    else
    {
      v14 = 0.0;
    }

    if (v33)
    {
      [(_UIQueuingScrollView *)self _replaceViews:v33 updatingContents:1 adjustContentInsets:1 animated:animationCopy];
    }

    goto LABEL_56;
  }
}

- (void)_didEndDraggingManualScroll
{
  v3 = [(_UIQueuingScrollView *)self _navigationDirectionForActiveScroll:0];
  if (v3 == -1)
  {
    return;
  }

  v4 = v3;
  [(UIView *)self bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  lastObject = [(NSMutableArray *)self->_completionStateQueue lastObject];
  navigationOrientation = self->_navigationOrientation;
  if (navigationOrientation)
  {
    v14 = 0;
  }

  else
  {
    v14 = v6 < v10;
  }

  if (v14 || (navigationOrientation == 1 ? (v15 = v8 < v12) : (v15 = 0), v15))
  {
    v20 = [(_UIQueuingScrollView *)self _viewAtIndex:0 loadingIfNecessary:1 updatingContents:1 animated:1];
    if (!lastObject || (v24 = [lastObject transitionDirection], v4) || v24 != 1 || (objc_msgSend(lastObject, "view"), v25 = objc_claimAutoreleasedReturnValue(), v25, v25 != v20))
    {
      if ([(UIScrollView *)self _pagingLeft]|| [(UIScrollView *)self _pagingUp])
      {
        goto LABEL_37;
      }

      if (v4)
      {
        pendingVisibleView = self->_pendingVisibleView;
        if (!pendingVisibleView)
        {
          goto LABEL_37;
        }

        _visibleView = [(_UIQueuingScrollView *)self _visibleView];

        v23 = 0;
        if (pendingVisibleView == _visibleView)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v23 = 1;
      }

      v31 = self->_pendingVisibleView;
LABEL_47:
      if (!v31)
      {
        v31 = v20;
      }

      _visibleView3 = v31;
      _visibleView2 = [(_UIQueuingScrollView *)self _visibleView];
      v30 = 0;
      goto LABEL_50;
    }

    _visibleView3 = [(_UIQueuingScrollView *)self _visibleView];
    _visibleView2 = v20;
    v23 = 0;
LABEL_44:
    v30 = 1;
LABEL_50:
    [(_UIQueuingScrollView *)self _commitGestureDrivenScrollRevealingView:_visibleView3 concealingView:_visibleView2 inDirection:v23 canComplete:v30];
    goto LABEL_51;
  }

  v17 = v8 > v12 && navigationOrientation == 1;
  if ((v6 <= v10 || navigationOrientation != 0) && !v17)
  {
    goto LABEL_52;
  }

  v20 = [(_UIQueuingScrollView *)self _viewAtIndex:2 loadingIfNecessary:1 updatingContents:1 animated:1];
  if (lastObject)
  {
    transitionDirection = [lastObject transitionDirection];
    if (v4 == 1 && !transitionDirection)
    {
      view = [lastObject view];

      if (view == v20)
      {
        _visibleView3 = [(_UIQueuingScrollView *)self _visibleView];
        _visibleView2 = v20;
        v23 = 1;
        goto LABEL_44;
      }
    }
  }

  if (![(UIScrollView *)self _pagingRight]&& ![(UIScrollView *)self _pagingDown])
  {
    if (v4 == 1)
    {
      v23 = 0;
LABEL_59:
      v31 = self->_pendingVisibleView;
      goto LABEL_47;
    }

    v32 = self->_pendingVisibleView;
    if (v32)
    {
      _visibleView4 = [(_UIQueuingScrollView *)self _visibleView];

      if (v32 != _visibleView4)
      {
        v23 = v4 == 0;
        goto LABEL_59;
      }
    }
  }

LABEL_37:
  _visibleView2 = 0;
  _visibleView3 = 0;
LABEL_51:

LABEL_52:
}

- (void)_didEndScroll:(BOOL)scroll
{
  scrollCopy = scroll;
  if (scroll || [(NSMutableArray *)self->_completionStateQueue count]> 1)
  {
    isManual = 0;
  }

  else if (self->_manualScrollInProgress)
  {
    _ui_peek = [(NSMutableArray *)self->_completionStateQueue _ui_peek];
    isManual = [_ui_peek isManual];
  }

  else
  {
    isManual = 1;
  }

  _navigationDirectionFromCurrentOffset = [(_UIQueuingScrollView *)self _navigationDirectionFromCurrentOffset];
  v8 = [(_UIQueuingScrollView *)self _navigationDirectionForActiveScroll:scrollCopy];
  if (isManual && _navigationDirectionFromCurrentOffset == v8)
  {
    if ([(NSMutableArray *)self->_completionStateQueue count]== 1)
    {
      _ui_dequeue = [(NSMutableArray *)self->_completionStateQueue _ui_dequeue];
      view = [_ui_dequeue view];
      _visibleView = [(_UIQueuingScrollView *)self _visibleView];
      [(_UIQueuingScrollView *)self _cleanUpCompletionState:_ui_dequeue didFinish:1 didComplete:view == _visibleView];

      if (![(UIScrollView *)self isTracking])
      {
        pendingVisibleView = self->_pendingVisibleView;
        self->_pendingVisibleView = 0;
      }
    }

    [(UIScrollView *)self contentOffset];
    v14 = v13;
    v16 = v15;
    navigationOrientation = self->_navigationOrientation;
    [(UIView *)self bounds];
    if (navigationOrientation)
    {
      if (v16 != CGRectGetHeight(*&v18))
      {
        [(UIView *)self bounds];
        Height = CGRectGetHeight(v27);
LABEL_18:
        Width = v14;
        goto LABEL_19;
      }
    }

    else if (v14 != CGRectGetWidth(*&v18))
    {
      [(UIView *)self bounds];
      Width = CGRectGetWidth(v28);
      Height = v16;
LABEL_19:
      if (v14 != Width || v16 != Height)
      {
        [(UIScrollView *)self _stopScrollingAndZoomingAnimationsPinningToContentViewport:0];
        [(UIScrollView *)self setContentOffset:Width, Height];
        while ([(NSMutableArray *)self->_completionStateQueue count])
        {
          _ui_dequeue2 = [(NSMutableArray *)self->_completionStateQueue _ui_dequeue];
          [(_UIQueuingScrollView *)self _cleanUpCompletionState:_ui_dequeue2 didFinish:0 didComplete:0];
        }

        _visibleView2 = [(_UIQueuingScrollView *)self _visibleView];
        [(_UIQueuingScrollView *)self _notifyDelegateDidBailoutOfScrollAndRevealedView:_visibleView2];
      }

      return;
    }

    Height = v16;
    goto LABEL_18;
  }
}

- (void)_didEndManualScroll
{
  [(_UIQueuingScrollView *)self _didEndScroll:[(UIScrollView *)self isScrollAnimating]];
  self->_manualScrollInProgress = 0;

  [(_UIQueuingScrollView *)self _notifyDelegateDidFinishScrolling];
}

- (_UIQueuingScrollViewDelegate)qDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_qDelegate);

  return WeakRetained;
}

- (_UIQueuingScrollViewDataSource)qDataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_qDataSource);

  return WeakRetained;
}

- (CGRect)disabledScrollingRegion
{
  x = self->_disabledScrollingRegion.origin.x;
  y = self->_disabledScrollingRegion.origin.y;
  width = self->_disabledScrollingRegion.size.width;
  height = self->_disabledScrollingRegion.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end