@interface _UIQueuingScrollView
- (BOOL)_dataSourceProvidesViews;
- (BOOL)_gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (BOOL)_isDeceleratingInOppositionToNavigationDirection:(int64_t)a3;
- (BOOL)_isScrollInProgress:(BOOL)a3;
- (BOOL)isManualScrollInProgress;
- (BOOL)isPreviousScrollCompatibleWithScrollInDirection:(int64_t)a3;
- (CGRect)disabledScrollingRegion;
- (_UIQueuingScrollView)initWithFrame:(CGRect)a3 navigationOrientation:(int64_t)a4;
- (_UIQueuingScrollViewDataSource)qDataSource;
- (_UIQueuingScrollViewDelegate)qDelegate;
- (id)_dequeueViewForIndex:(int64_t)a3;
- (id)_requestViewForIndex:(int64_t)a3;
- (id)_viewAtIndex:(int64_t)a3 loadingIfNecessary:(BOOL)a4 updatingContents:(BOOL)a5 animated:(BOOL)a6;
- (id)_viewBefore:(BOOL)a3 view:(id)a4;
- (id)_visibleView;
- (int64_t)_navigationDirectionForActiveScroll:(BOOL)a3;
- (int64_t)_navigationDirectionFromCurrentOffset;
- (unint64_t)_abuttedPagingEdges;
- (void)_adjustContentInsets;
- (void)_boundsDidChangeToSize:(CGSize)a3;
- (void)_cleanUpCompletionState:(id)a3 didFinish:(BOOL)a4 didComplete:(BOOL)a5;
- (void)_commitGestureDrivenScrollRevealingView:(id)a3 concealingView:(id)a4 inDirection:(int64_t)a5 canComplete:(BOOL)a6;
- (void)_didEndDraggingManualScroll;
- (void)_didEndManualScroll;
- (void)_didEndScroll:(BOOL)a3;
- (void)_didScrollWithAnimation:(BOOL)a3 force:(BOOL)a4;
- (void)_enqueueAnimatedScrollInDirection:(int64_t)a3 withView:(id)a4 completion:(id)a5;
- (void)_enqueueCompletionState:(id)a3;
- (void)_flushView:(id)a3 animated:(BOOL)a4;
- (void)_handleDirectionalPageWithHorizontalVelocity:(double)a3 verticalVelocity:(double)a4;
- (void)_invalidateOffscreenViews;
- (void)_notifyDelegateDidBailoutOfScrollAndRevealedView:(id)a3;
- (void)_notifyDelegateDidCommitManualScroll:(BOOL)a3 toRevealView:(id)a4 concealView:(id)a5 direction:(int64_t)a6 animated:(BOOL)a7 canComplete:(BOOL)a8;
- (void)_notifyDelegateDidEndManualScroll:(BOOL)a3 toRevealView:(id)a4 direction:(int64_t)a5 animated:(BOOL)a6 didFinish:(BOOL)a7 didComplete:(BOOL)a8;
- (void)_notifyDelegateDidFinishScrolling;
- (void)_notifyDelegateWillManuallyScroll:(BOOL)a3 toRevealView:(id)a4 concealingView:(id)a5 animated:(BOOL)a6;
- (void)_replaceViews:(id)a3 updatingContents:(BOOL)a4 adjustContentInsets:(BOOL)a5 animated:(BOOL)a6;
- (void)_scrollViewAnimationEnded:(id)a3 finished:(BOOL)a4;
- (void)_scrollViewDidEndDecelerating;
- (void)_scrollViewDidEndDraggingWithDeceleration:(BOOL)a3;
- (void)_setFrameAndApplyPageSpacing:(CGRect)a3;
- (void)_setWrappedViewAtIndex:(int64_t)a3 withView:(id)a4;
- (void)layoutSubviews;
- (void)setBounds:(CGRect)a3;
- (void)setFrame:(CGRect)a3;
- (void)setPageSpacing:(double)a3;
- (void)setQDataSource:(id)a3;
- (void)setQDelegate:(id)a3;
- (void)setView:(id)a3 direction:(int64_t)a4 animated:(BOOL)a5 completion:(id)a6;
@end

@implementation _UIQueuingScrollView

- (_UIQueuingScrollView)initWithFrame:(CGRect)a3 navigationOrientation:(int64_t)a4
{
  v24.receiver = self;
  v24.super_class = _UIQueuingScrollView;
  v5 = [(UIScrollView *)&v24 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v6 = v5;
  if (v5)
  {
    v5->_navigationOrientation = a4;
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

- (void)setQDelegate:(id)a3
{
  obj = a3;
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

- (void)setQDataSource:(id)a3
{
  obj = a3;
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

- (void)_setFrameAndApplyPageSpacing:(CGRect)a3
{
  pageSpacing = self->_pageSpacing;
  navigationOrientation = self->_navigationOrientation;
  v5 = pageSpacing + pageSpacing;
  v6 = a3.origin.y - pageSpacing;
  v7 = a3.size.height + pageSpacing + pageSpacing;
  v8 = a3.origin.x - pageSpacing;
  v9 = a3.size.width + v5;
  if (navigationOrientation)
  {
    a3.origin.y = v6;
  }

  else
  {
    a3.origin.x = v8;
  }

  if (navigationOrientation)
  {
    a3.size.height = v7;
  }

  else
  {
    a3.size.width = v9;
  }

  [(_UIQueuingScrollView *)self setFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height, v8, v9];
}

- (void)setPageSpacing:(double)a3
{
  if (self->_pageSpacing != a3)
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

    self->_pageSpacing = a3;
    if (navigationOrientation)
    {
      v8 = v13;
    }

    [(_UIQueuingScrollView *)self _setFrameAndApplyPageSpacing:v5, v6, v7, v8, v14, v15];
  }
}

- (void)setBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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
    v5 = [(UIScrollView *)self isScrollAnimating];
    if (![(_UIQueuingScrollView *)self _isScrollInProgress:v5]|| [(_UIQueuingScrollView *)self _navigationDirectionForActiveScroll:v5]!= -1)
    {
      [(_UIQueuingScrollView *)self _didScrollWithAnimation:v5 force:0];
    }

    v6.receiver = self;
    v6.super_class = _UIQueuingScrollView;
    [(UIScrollView *)&v6 layoutSubviews];
  }
}

- (void)_scrollViewDidEndDraggingWithDeceleration:(BOOL)a3
{
  v3 = a3;
  if (a3)
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
  [(UIScrollView *)&v5 _scrollViewDidEndDraggingWithDeceleration:v3];
}

- (void)_scrollViewDidEndDecelerating
{
  [(_UIQueuingScrollView *)self _didScrollWithAnimation:[(UIScrollView *)self isScrollAnimating] force:1];
  [(_UIQueuingScrollView *)self _didEndManualScroll];
  v3.receiver = self;
  v3.super_class = _UIQueuingScrollView;
  [(UIScrollView *)&v3 _scrollViewDidEndDecelerating];
}

- (void)_scrollViewAnimationEnded:(id)a3 finished:(BOOL)a4
{
  v4 = a4;
  v6.receiver = self;
  v6.super_class = _UIQueuingScrollView;
  [(UIScrollView *)&v6 _scrollViewAnimationEnded:a3 finished:?];
  if (v4)
  {
    [(_UIQueuingScrollView *)self _didScrollWithAnimation:[(UIScrollView *)self isScrollAnimating] force:1];
    [(_UIQueuingScrollView *)self _didEndProgrammaticScroll];
  }
}

- (BOOL)_gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(UIView *)self gestureRecognizers];
  v9 = [v8 indexOfObject:v6];

  if (v9 == 0x7FFFFFFFFFFFFFFFLL || CGRectIsEmpty(self->_disabledScrollingRegion))
  {
    v10 = 0;
    goto LABEL_4;
  }

  v8 = [(UIView *)self superview];
  [v7 locationInView:v8];
  v16.x = v12;
  v16.y = v13;
  if (!CGRectContainsPoint(self->_disabledScrollingRegion, v16))
  {
    v10 = 1;
LABEL_4:
    v15.receiver = self;
    v15.super_class = _UIQueuingScrollView;
    v11 = [(UIScrollView *)&v15 _gestureRecognizer:v6 shouldReceiveTouch:v7];
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
  v3 = [(UIScrollView *)&v34 _abuttedPagingEdges];
  if ([(UIScrollView *)self _isHorizontalBouncing]|| [(UIScrollView *)self _isVerticalBouncing]|| ![(_UIQueuingScrollView *)self _dataSourceProvidesViews])
  {
    return v3;
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
    return v3;
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
        return v3;
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
      return v3;
    }

    [(UIScrollView *)self _pageDecelerationTarget];
    v25 = v24;
    [(UIView *)self bounds];
    if (v25 <= CGRectGetHeight(v38))
    {
      return v3;
    }
  }

  v21 = 1;
  v26 = [(_UIQueuingScrollView *)self _viewAtIndex:2 loadingIfNecessary:1 updatingContents:0 animated:0];

  if (!v26)
  {
    return v3;
  }

  v19 = 0;
LABEL_24:
  v27 = self->_navigationOrientation;
  if (v27)
  {
    if (v27 != 1)
    {
      return v3;
    }

    v28 = 4;
  }

  else
  {
    v27 = 2;
    v28 = 8;
  }

  v29 = v28 | v3;
  v30 = v3 & ~v28;
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

- (void)_handleDirectionalPageWithHorizontalVelocity:(double)a3 verticalVelocity:(double)a4
{
  v5 = fabs(a4);
  if (fabs(a3) >= 2.22044605e-16 || v5 >= 2.22044605e-16)
  {
    if (self->_navigationOrientation)
    {
      a3 = a4;
    }

    v8 = a3 <= 0.0;
    WeakRetained = objc_loadWeakRetained(&self->_qDelegate);
    [WeakRetained queuingScrollView:self attemptToPageInDirection:v8];
  }
}

- (void)_setWrappedViewAtIndex:(int64_t)a3 withView:(id)a4
{
  v7 = a4;
  if (!v7)
  {
    goto LABEL_9;
  }

  v14 = v7;
  v8 = [(NSArray *)self->_wrapperViews objectAtIndex:a3];
  v9 = [v8 subviews];
  if (![v9 count])
  {
    goto LABEL_5;
  }

  v10 = [v8 subviews];
  v11 = [v10 _ui_onlyObject];

  v12 = v14;
  if (v11 != v14)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"_UIQueuingScrollView.m" lineNumber:354 description:@"Unexpected subviews"];
LABEL_5:

    v12 = v14;
  }

  v13 = [v12 superview];

  if (v8 != v13)
  {
    [v8 bounds];
    [v14 setFrame:?];
    [v14 setAutoresizingMask:{objc_msgSend(v14, "autoresizingMask") | 0x12}];
    [v8 addSubview:v14];
  }

  v7 = v14;
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

- (id)_viewBefore:(BOOL)a3 view:(id)a4
{
  v6 = a4;
  if ([(_UIQueuingScrollView *)self _dataSourceProvidesViews])
  {
    WeakRetained = objc_loadWeakRetained(&self->_qDataSource);
    v8 = WeakRetained;
    if (a3)
    {
      [WeakRetained queuingScrollView:self viewBeforeView:v6];
    }

    else
    {
      [WeakRetained queuingScrollView:self viewAfterView:v6];
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
  v5 = [MEMORY[0x1E695DFB0] null];

  if (v4 == v5)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"_UIQueuingScrollView.m" lineNumber:385 description:@"Visible view can't be 'NULL'"];
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

- (void)_flushView:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  pendingVisibleView = self->_pendingVisibleView;
  v9 = v6;
  if (pendingVisibleView == v6)
  {
    self->_pendingVisibleView = 0;
  }

  if ((*&self->_delegateFlags & 0x100) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_qDataSource);
    [WeakRetained queuingScrollView:self didFlushView:v9 animated:v4];
  }
}

- (void)_replaceViews:(id)a3 updatingContents:(BOOL)a4 adjustContentInsets:(BOOL)a5 animated:(BOOL)a6
{
  v6 = a6;
  v27 = *MEMORY[0x1E69E9840];
  v10 = a3;
  if ([(NSArray *)v10 count]!= 3)
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"_UIQueuingScrollView.m" lineNumber:399 description:{@"Invalid parameter not satisfying: %@", @"[views count] == 3"}];
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
          if (![(NSArray *)v10 containsObject:v16])
          {
            [(_UIQueuingScrollView *)self _flushView:v16 animated:v6];
          }
        }
      }

      v13 = [(NSArray *)v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v13);
  }

  for (j = 0; j != 3; ++j)
  {
    v18 = [(NSArray *)v10 objectAtIndex:j];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (a4 || [(NSArray *)self->_views containsObject:v18]))
    {
      [(_UIQueuingScrollView *)self _setWrappedViewAtIndex:j withView:v18];
    }
  }

  views = self->_views;
  self->_views = v10;

  if (a5)
  {
    [(_UIQueuingScrollView *)self _adjustContentInsets];
  }
}

- (id)_requestViewForIndex:(int64_t)a3
{
  if (a3)
  {
    if (a3 != 2)
    {
      v5 = [MEMORY[0x1E696AAA8] currentHandler];
      [v5 handleFailureInMethod:a2 object:self file:@"_UIQueuingScrollView.m" lineNumber:422 description:{@"Invalid parameter not satisfying: %@", @"LEFT_VIEW_INDEX == index || index == RIGHT_VIEW_INDEX"}];
    }

    v6 = [(_UIQueuingScrollView *)self _visibleView];
    v7 = [(_UIQueuingScrollView *)self _viewAfterView:v6];
  }

  else
  {
    v6 = [(_UIQueuingScrollView *)self _visibleView];
    v7 = [(_UIQueuingScrollView *)self _viewBeforeView:v6];
  }

  v8 = v7;

  return v8;
}

- (id)_dequeueViewForIndex:(int64_t)a3
{
  if ((a3 | 2) != 2)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"_UIQueuingScrollView.m" lineNumber:428 description:{@"Invalid parameter not satisfying: %@", @"LEFT_VIEW_INDEX == index || index == RIGHT_VIEW_INDEX"}];
  }

  if (![(NSMutableArray *)self->_viewStateQueue count])
  {
    v9 = 0;
    goto LABEL_11;
  }

  v7 = [(NSMutableArray *)self->_viewStateQueue _ui_peek];
  v8 = [v7 transitionDirection];
  if (a3 == 2 && !v8)
  {

LABEL_10:
    v12 = [(NSMutableArray *)self->_viewStateQueue _ui_dequeue];
    v9 = [v12 view];

    goto LABEL_11;
  }

  v10 = [(NSMutableArray *)self->_viewStateQueue _ui_peek];
  v11 = [v10 transitionDirection];

  v9 = 0;
  if (!a3 && v11 == 1)
  {
    goto LABEL_10;
  }

LABEL_11:

  return v9;
}

- (id)_viewAtIndex:(int64_t)a3 loadingIfNecessary:(BOOL)a4 updatingContents:(BOOL)a5 animated:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v8 = a4;
  if (a3 >= 3)
  {
    v24 = [MEMORY[0x1E696AAA8] currentHandler];
    [v24 handleFailureInMethod:a2 object:self file:@"_UIQueuingScrollView.m" lineNumber:439 description:{@"Invalid parameter not satisfying: %@", @"LEFT_VIEW_INDEX <= index && index <= RIGHT_VIEW_INDEX"}];
  }

  v11 = [(NSArray *)self->_views objectAtIndex:a3];
  v12 = v11;
  if (v8 && v11 == @"kUIFaultingViewSentinel")
  {
    v13 = [(_UIQueuingScrollView *)self _dequeueViewForIndex:a3];
    v14 = v13;
    if (v13)
    {
      v12 = v13;
    }

    else
    {
      v15 = [(_UIQueuingScrollView *)self _requestViewForIndex:a3];
      v16 = v15;
      if (v15)
      {
        v17 = v15;
      }

      else
      {
        v17 = [MEMORY[0x1E695DFB0] null];
      }

      v12 = v17;
    }

    if (v12 != @"kUIFaultingViewSentinel")
    {
      v18 = v12;
      v19 = [(NSArray *)self->_views mutableCopy];
      [v19 replaceObjectAtIndex:a3 withObject:v18];
      [(_UIQueuingScrollView *)self _replaceViews:v19 updatingContents:v7 adjustContentInsets:1 animated:v6];
    }
  }

  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_UIQueuingScrollView *)self _setWrappedViewAtIndex:a3 withView:v12];
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
  v4 = [(_UIQueuingScrollView *)self _visibleView];
  v7 = v4;
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = @"kUIFaultingViewSentinel";
  }

  v6 = [v3 arrayWithObjects:{v5, @"kUIFaultingViewSentinel", 0}];
  [(_UIQueuingScrollView *)self _replaceViews:v6 updatingContents:1 adjustContentInsets:1 animated:0];
}

- (BOOL)isPreviousScrollCompatibleWithScrollInDirection:(int64_t)a3
{
  v4 = [(NSMutableArray *)self->_viewStateQueue lastObject];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 isCompatibleWithTransitionInDirection:a3];
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

  v3 = [(NSMutableArray *)self->_completionStateQueue lastObject];
  v4 = [v3 isManual];

  return v4;
}

- (int64_t)_navigationDirectionForActiveScroll:(BOOL)a3
{
  v3 = a3;
  if ([(UIScrollView *)self _pagingRight]|| [(UIScrollView *)self _pagingDown])
  {
    return 0;
  }

  if ([(UIScrollView *)self _pagingLeft]|| [(UIScrollView *)self _pagingUp])
  {
    return 1;
  }

  navigationOrientation = self->_navigationOrientation;
  if (v3)
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

- (void)_enqueueCompletionState:(id)a3
{
  v13 = a3;
  if (!v13)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"_UIQueuingScrollView.m" lineNumber:511 description:{@"Invalid parameter not satisfying: %@", @"state"}];
  }

  if ([(NSMutableArray *)self->_completionStateQueue count])
  {
    v5 = [(NSMutableArray *)self->_completionStateQueue lastObject];
    v6 = [v5 view];
    v7 = [v13 view];
    v8 = v7;
    if (v6 == v7)
    {
      v9 = [(NSMutableArray *)self->_completionStateQueue lastObject];
      v10 = [v9 transitionDirection];
      v11 = [v13 transitionDirection];

      if (v10 != v11)
      {
        goto LABEL_9;
      }

      v5 = [MEMORY[0x1E696AAA8] currentHandler];
      [v5 handleFailureInMethod:a2 object:self file:@"_UIQueuingScrollView.m" lineNumber:513 description:@"Duplicate states in queue"];
    }

    else
    {
    }
  }

LABEL_9:
  [(NSMutableArray *)self->_completionStateQueue _ui_enqueue:v13];
}

- (void)_cleanUpCompletionState:(id)a3 didFinish:(BOOL)a4 didComplete:(BOOL)a5
{
  if (a3)
  {
    v5 = a5;
    v6 = a4;
    viewStateQueue = self->_viewStateQueue;
    v8 = a3;
    [(NSMutableArray *)viewStateQueue removeObject:v8];
    [v8 cleanupWithFinishedState:v6 completedState:v5];
  }
}

- (void)_enqueueAnimatedScrollInDirection:(int64_t)a3 withView:(id)a4 completion:(id)a5
{
  v9 = a4;
  v10 = a5;
  if (!v9)
  {
    v70 = [MEMORY[0x1E696AAA8] currentHandler];
    [v70 handleFailureInMethod:a2 object:self file:@"_UIQueuingScrollView.m" lineNumber:529 description:{@"Invalid parameter not satisfying: %@", @"view"}];
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
    if (a3)
    {
      Height = -Height;
    }

    v14 = v14 + Height;
  }

  else
  {
    Width = CGRectGetWidth(*&v18);
    if (a3)
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
    v73 = v9;
    v75 = a3;
    v74 = v10;
    v27 = [(_UIQueuingScrollViewState *)v29 initWithTransitionDirection:a3 view:v73 manual:0 completion:v72];
    [(NSMutableArray *)self->_viewStateQueue _ui_enqueue:v27];
    v30 = MEMORY[0x1E695DEC8];
    if (a3 == 1)
    {
      v31 = [(_UIQueuingScrollView *)self _visibleView];
      v32 = @"kUIFaultingViewSentinel";
    }

    else
    {
      v32 = [(NSArray *)self->_views objectAtIndex:0];
      v31 = [(_UIQueuingScrollView *)self _visibleView];
      if (!a3)
      {
        v62 = @"kUIFaultingViewSentinel";
LABEL_37:
        v63 = [v30 arrayWithObjects:{v32, v31, v62, 0}];
        [(_UIQueuingScrollView *)self _replaceViews:v63 updatingContents:1 adjustContentInsets:1 animated:1];

        if (a3)
        {

          if (a3 == 1)
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

  v24 = [(NSMutableArray *)self->_completionStateQueue lastObject];
  v25 = [v24 transitionDirection];

  if (v25 == a3)
  {
    v26 = [_UIQueuingScrollViewState alloc];
    v76[0] = MEMORY[0x1E69E9820];
    v76[1] = 3221225472;
    v76[2] = __78___UIQueuingScrollView__enqueueAnimatedScrollInDirection_withView_completion___block_invoke_3;
    v76[3] = &unk_1E7103130;
    v76[4] = self;
    v77 = v9;
    v79 = a3;
    v78 = v10;
    v27 = [(_UIQueuingScrollViewState *)v26 initWithTransitionDirection:a3 view:v77 manual:0 completion:v76];
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
    v35 = [(NSMutableArray *)completionStateQueue _ui_dequeue];
    [(_UIQueuingScrollView *)self _cleanUpCompletionState:v35 didFinish:0 didComplete:0];

    v36 = [_UIQueuingScrollViewState alloc];
    v87[0] = MEMORY[0x1E69E9820];
    v87[1] = 3221225472;
    v87[2] = __78___UIQueuingScrollView__enqueueAnimatedScrollInDirection_withView_completion___block_invoke;
    v87[3] = &unk_1E7103130;
    v87[4] = self;
    v37 = v9;
    v88 = v37;
    v90 = a3;
    v71 = v10;
    v89 = v10;
    v27 = [(_UIQueuingScrollViewState *)v36 initWithTransitionDirection:a3 view:v37 manual:0 completion:v87];
    [(UIScrollView *)self _stopScrollingAndZoomingAnimationsPinningToContentViewport:0];
    [(_UIQueuingScrollView *)self _enqueueCompletionState:v27];
    v38 = [(_UIQueuingScrollView *)self _visibleView];
    [(_UIQueuingScrollView *)self _notifyDelegateWillManuallyScroll:0 toRevealView:v37 concealingView:v38 animated:1];

    v39 = [(_UIQueuingScrollView *)self _visibleView];
    [(_UIQueuingScrollView *)self _notifyDelegateDidCommitManualScroll:0 toRevealView:v37 concealView:v39 direction:a3 animated:1 canComplete:1];

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

    v10 = v71;
  }

  else
  {
    v64 = [(NSMutableArray *)completionStateQueue lastObject];
    [(NSMutableArray *)self->_completionStateQueue removeLastObject];
    [(NSMutableArray *)self->_viewStateQueue removeObject:v64];
    v65 = [(NSMutableArray *)self->_completionStateQueue lastObject];
    [(NSMutableArray *)self->_completionStateQueue removeLastObject];
    v66 = [_UIQueuingScrollViewState alloc];
    v67 = [v65 transitionDirection];
    v80[0] = MEMORY[0x1E69E9820];
    v80[1] = 3221225472;
    v80[2] = __78___UIQueuingScrollView__enqueueAnimatedScrollInDirection_withView_completion___block_invoke_2;
    v80[3] = &unk_1E7103158;
    v80[4] = self;
    v81 = v65;
    v82 = v64;
    v83 = v9;
    v85 = a3;
    v84 = v10;
    v86 = a2;
    v68 = v64;
    v69 = v65;
    v27 = [(_UIQueuingScrollViewState *)v66 initWithTransitionDirection:v67 view:v83 manual:0 completion:v80];
    [(_UIQueuingScrollView *)self _enqueueCompletionState:v27];
    [(UIScrollView *)self setContentOffset:1 animated:v12, v14];
  }

LABEL_45:
}

- (void)_notifyDelegateWillManuallyScroll:(BOOL)a3 toRevealView:(id)a4 concealingView:(id)a5 animated:(BOOL)a6
{
  v6 = a6;
  v8 = a3;
  v12 = a4;
  v10 = a5;
  if (v12 && (*&self->_delegateFlags & 1) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_qDelegate);
    [WeakRetained queuingScrollView:self willManuallyScroll:v8 toRevealView:v12 concealView:v10 animated:v6];
  }
}

- (void)_notifyDelegateDidCommitManualScroll:(BOOL)a3 toRevealView:(id)a4 concealView:(id)a5 direction:(int64_t)a6 animated:(BOOL)a7 canComplete:(BOOL)a8
{
  v9 = a7;
  v12 = a3;
  v17 = a4;
  v14 = a5;
  if (v17 && (*&self->_delegateFlags & 2) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_qDelegate);
    LOBYTE(v16) = a8;
    [WeakRetained queuingScrollView:self didCommitManualScroll:v12 toRevealView:v17 concealView:v14 direction:a6 animated:v9 canComplete:v16];
  }
}

- (void)_notifyDelegateDidEndManualScroll:(BOOL)a3 toRevealView:(id)a4 direction:(int64_t)a5 animated:(BOOL)a6 didFinish:(BOOL)a7 didComplete:(BOOL)a8
{
  v9 = a7;
  v10 = a6;
  v12 = a3;
  v14 = a4;
  if (v14 && (*&self->_delegateFlags & 4) != 0)
  {
    v17 = v14;
    WeakRetained = objc_loadWeakRetained(&self->_qDelegate);
    LOBYTE(v16) = a8;
    [WeakRetained queuingScrollView:self didEndManualScroll:v12 toRevealView:v17 direction:a5 animated:v10 didFinish:v9 didComplete:v16];

    v14 = v17;
  }
}

- (void)_notifyDelegateDidBailoutOfScrollAndRevealedView:(id)a3
{
  if ((*&self->_delegateFlags & 8) != 0)
  {
    v5 = a3;
    WeakRetained = objc_loadWeakRetained(&self->_qDelegate);
    [WeakRetained queuingScrollView:self didBailoutOfScrollAndRevealedView:v5];
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

- (void)setView:(id)a3 direction:(int64_t)a4 animated:(BOOL)a5 completion:(id)a6
{
  v17 = a3;
  v11 = a6;
  if (!v17)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"_UIQueuingScrollView.m" lineNumber:681 description:{@"Invalid parameter not satisfying: %@", @"view"}];
  }

  if (![(UIScrollView *)self isTracking]|| ![(UIScrollView *)self isDragging])
  {
    if (a5)
    {
      [(_UIQueuingScrollView *)self _enqueueAnimatedScrollInDirection:a4 withView:v17 completion:v11];
    }

    else
    {
      while ([(NSMutableArray *)self->_completionStateQueue count])
      {
        v12 = [(NSMutableArray *)self->_completionStateQueue _ui_dequeue];
        [(_UIQueuingScrollView *)self _cleanUpCompletionState:v12 didFinish:0 didComplete:0];
      }

      [(NSMutableArray *)self->_viewStateQueue removeAllObjects];
      v13 = [(_UIQueuingScrollView *)self _visibleView];
      [(_UIQueuingScrollView *)self _notifyDelegateWillManuallyScroll:0 toRevealView:v17 concealingView:v13 animated:0];

      v14 = [(_UIQueuingScrollView *)self _visibleView];
      [(_UIQueuingScrollView *)self _notifyDelegateDidCommitManualScroll:0 toRevealView:v17 concealView:v14 direction:a4 animated:0 canComplete:1];

      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:{v17, @"kUIFaultingViewSentinel", 0}];
      [(_UIQueuingScrollView *)self _replaceViews:v15 updatingContents:1 adjustContentInsets:1 animated:0];

      [(_UIQueuingScrollView *)self _notifyDelegateDidEndManualScroll:0 toRevealView:v17 direction:a4 animated:0 didFinish:1 didComplete:1];
      if (v11)
      {
        v11[2](v11, 1, 1);
      }
    }
  }
}

- (void)_adjustContentInsets
{
  v3 = [(_UIQueuingScrollView *)self _visibleView];

  if (v3)
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

- (void)_boundsDidChangeToSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = a3.height * 3.0;
  if (self->_navigationOrientation)
  {
    a3.height = a3.height * 3.0;
  }

  else
  {
    a3.width = a3.width * 3.0;
  }

  [(UIScrollView *)self setContentSize:a3.width, a3.height, v6];
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

- (void)_commitGestureDrivenScrollRevealingView:(id)a3 concealingView:(id)a4 inDirection:(int64_t)a5 canComplete:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  v11 = a4;
  v12 = v11;
  if (v10 && v11)
  {
    v13 = [(NSMutableArray *)self->_completionStateQueue lastObject];
    if ([v13 isManual])
    {
      v14 = [v13 view];
      v15 = v14;
      if (v14 == v10)
      {
        v16 = [v13 transitionDirection];

        if (v16 == a5)
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
    v26 = v10;
    v27 = a5;
    v17 = [(_UIQueuingScrollViewState *)v18 initWithTransitionDirection:a5 view:v26 manual:1 completion:v25];

LABEL_9:
    if ([v13 isManual])
    {
      v19 = [v13 view];

      if (v19 == v12)
      {
        v23 = [v13 view];
        v24 = [(_UIQueuingScrollView *)self _visibleView];
        v21 = v23 == v24;

LABEL_21:
        [(NSMutableArray *)self->_completionStateQueue removeLastObject];
        [(_UIQueuingScrollView *)self _cleanUpCompletionState:v13 didFinish:v21 didComplete:v21];
        if (!v17)
        {
          goto LABEL_18;
        }

        goto LABEL_17;
      }

      v20 = [v13 transitionDirection];
      if (v20 != [(_UITransitionState *)v17 transitionDirection])
      {
        v21 = 0;
        goto LABEL_21;
      }
    }

    else
    {
      while ([(NSMutableArray *)self->_completionStateQueue count])
      {
        v22 = [(NSMutableArray *)self->_completionStateQueue _ui_dequeue];
        [(_UIQueuingScrollView *)self _cleanUpCompletionState:v22 didFinish:0 didComplete:0];
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
    [(_UIQueuingScrollView *)self _notifyDelegateDidCommitManualScroll:1 toRevealView:v10 concealView:v12 direction:a5 animated:1 canComplete:v6];
    goto LABEL_18;
  }

LABEL_19:
}

- (BOOL)_isDeceleratingInOppositionToNavigationDirection:(int64_t)a3
{
  if (a3 == -1)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"_UIQueuingScrollView.m" lineNumber:779 description:@"'Undetermined' is not a valid navigation direction for this method"];
  }

  v5 = [(UIScrollView *)self isDecelerating];
  if (v5)
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

    if (a3)
    {
      LOBYTE(v5) = v9 < v11;
    }

    else
    {
      LOBYTE(v5) = v11 < v9;
    }
  }

  return v5;
}

- (BOOL)_isScrollInProgress:(BOOL)a3
{
  if ([(UIScrollView *)self isTracking])
  {
    return 1;
  }

  else
  {
    return [(UIScrollView *)self isDecelerating]|| a3;
  }
}

- (void)_didScrollWithAnimation:(BOOL)a3 force:(BOOL)a4
{
  v5 = a3;
  v45[3] = *MEMORY[0x1E69E9840];
  v8 = [(_UIQueuingScrollView *)self _isScrollInProgress:?];
  v9 = v8;
  if (a4 || v8 && ![(UIScrollView *)self _isHorizontalBouncing]&& ![(UIScrollView *)self _isVerticalBouncing])
  {
    if ([(UIScrollView *)self isTracking])
    {
      LOBYTE(v10) = 1;
    }

    else
    {
      v10 = [(UIScrollView *)self isDecelerating]&& !v5;
    }

    self->_manualScrollInProgress = v10;
    [(UIView *)self bounds];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    if (v9)
    {
      v19 = [(_UIQueuingScrollView *)self _navigationDirectionForActiveScroll:v5];
    }

    else
    {
      v19 = [(_UIQueuingScrollView *)self _navigationDirectionFromCurrentOffset];
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
    v38 = v5;
    v39 = v9;
    v37[6] = v19;
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

    v24 = [(NSMutableArray *)self->_completionStateQueue _ui_dequeue];
    [(_UIQueuingScrollView *)self _cleanUpCompletionState:v24 didFinish:1 didComplete:1];

    v25 = v41[3];
    if (v25 == -1)
    {
      v31 = [(_UIQueuingScrollView *)self _viewAtIndex:0 loadingIfNecessary:0 updatingContents:0 animated:v5];
      v26 = v31;
      if (v31)
      {
        v32 = @"kUIFaultingViewSentinel";
        v44[0] = @"kUIFaultingViewSentinel";
        v44[1] = v31;
        if (!v5)
        {
          v32 = [(_UIQueuingScrollView *)self _visibleView];
        }

        v44[2] = v32;
        v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:3];
        if (!v5)
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

      v26 = [(_UIQueuingScrollView *)self _viewAtIndex:2 loadingIfNecessary:0 updatingContents:0 animated:v5];
      if (v26)
      {
        if (v5)
        {
          v27 = @"kUIFaultingViewSentinel";
        }

        else
        {
          v27 = [(_UIQueuingScrollView *)self _visibleView];
        }

        v45[0] = v27;
        v45[1] = v26;
        v45[2] = @"kUIFaultingViewSentinel";
        v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:3];
        if (!v5)
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
      [(_UIQueuingScrollView *)self _replaceViews:v33 updatingContents:1 adjustContentInsets:1 animated:v5];
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
  v34 = [(NSMutableArray *)self->_completionStateQueue lastObject];
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
    if (!v34 || (v24 = [v34 transitionDirection], v4) || v24 != 1 || (objc_msgSend(v34, "view"), v25 = objc_claimAutoreleasedReturnValue(), v25, v25 != v20))
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

        v29 = [(_UIQueuingScrollView *)self _visibleView];

        v23 = 0;
        if (pendingVisibleView == v29)
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

      v27 = v31;
      v26 = [(_UIQueuingScrollView *)self _visibleView];
      v30 = 0;
      goto LABEL_50;
    }

    v27 = [(_UIQueuingScrollView *)self _visibleView];
    v26 = v20;
    v23 = 0;
LABEL_44:
    v30 = 1;
LABEL_50:
    [(_UIQueuingScrollView *)self _commitGestureDrivenScrollRevealingView:v27 concealingView:v26 inDirection:v23 canComplete:v30];
    goto LABEL_51;
  }

  v17 = v8 > v12 && navigationOrientation == 1;
  if ((v6 <= v10 || navigationOrientation != 0) && !v17)
  {
    goto LABEL_52;
  }

  v20 = [(_UIQueuingScrollView *)self _viewAtIndex:2 loadingIfNecessary:1 updatingContents:1 animated:1];
  if (v34)
  {
    v21 = [v34 transitionDirection];
    if (v4 == 1 && !v21)
    {
      v22 = [v34 view];

      if (v22 == v20)
      {
        v27 = [(_UIQueuingScrollView *)self _visibleView];
        v26 = v20;
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
      v33 = [(_UIQueuingScrollView *)self _visibleView];

      if (v32 != v33)
      {
        v23 = v4 == 0;
        goto LABEL_59;
      }
    }
  }

LABEL_37:
  v26 = 0;
  v27 = 0;
LABEL_51:

LABEL_52:
}

- (void)_didEndScroll:(BOOL)a3
{
  v3 = a3;
  if (a3 || [(NSMutableArray *)self->_completionStateQueue count]> 1)
  {
    v6 = 0;
  }

  else if (self->_manualScrollInProgress)
  {
    v5 = [(NSMutableArray *)self->_completionStateQueue _ui_peek];
    v6 = [v5 isManual];
  }

  else
  {
    v6 = 1;
  }

  v7 = [(_UIQueuingScrollView *)self _navigationDirectionFromCurrentOffset];
  v8 = [(_UIQueuingScrollView *)self _navigationDirectionForActiveScroll:v3];
  if (v6 && v7 == v8)
  {
    if ([(NSMutableArray *)self->_completionStateQueue count]== 1)
    {
      v9 = [(NSMutableArray *)self->_completionStateQueue _ui_dequeue];
      v10 = [v9 view];
      v11 = [(_UIQueuingScrollView *)self _visibleView];
      [(_UIQueuingScrollView *)self _cleanUpCompletionState:v9 didFinish:1 didComplete:v10 == v11];

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
          v24 = [(NSMutableArray *)self->_completionStateQueue _ui_dequeue];
          [(_UIQueuingScrollView *)self _cleanUpCompletionState:v24 didFinish:0 didComplete:0];
        }

        v25 = [(_UIQueuingScrollView *)self _visibleView];
        [(_UIQueuingScrollView *)self _notifyDelegateDidBailoutOfScrollAndRevealedView:v25];
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