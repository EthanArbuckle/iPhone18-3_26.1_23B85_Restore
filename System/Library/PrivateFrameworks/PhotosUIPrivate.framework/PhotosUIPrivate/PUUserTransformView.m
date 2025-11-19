@interface PUUserTransformView
+ (double)doubleTapZoomScaleForContentSize:(CGSize)a3 inBoundsSize:(CGSize)a4 defaultScale:(double)a5 preferToFillOnDoubleTap:(BOOL)a6;
- (BOOL)_needsStateUpdate;
- (BOOL)contentContainsLocationFromProvider:(id)a3;
- (BOOL)isTrackingZoomGesture;
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (CGAffineTransform)userAffineTransform;
- (CGPoint)_contentCenter;
- (CGPoint)_contentOffsetAdjustmentForContentInsets:(UIEdgeInsets)a3;
- (CGPoint)offset;
- (CGRect)untransformedContentFrame;
- (CGRect)visibleRect;
- (CGSize)contentPixelSize;
- (CGSize)scrollPadding;
- (PUUserTransformView)initWithFrame:(CGRect)a3;
- (PUUserTransformViewDelegate)delegate;
- (UIEdgeInsets)_contentInsetsForContentScale:(double)a3;
- (double)_currentPresentationZoomScale;
- (double)doubleTapZoomScale;
- (double)fillZoomScale;
- (id)viewForZoomingInScrollView:(id)a3;
- (void)_assertInsideStateChangeBlock;
- (void)_assertInsideStateUpdate;
- (void)_assertInsideZoomAndScrollChangeBlock;
- (void)_didChangeState;
- (void)_handleDisplayLink:(id)a3;
- (void)_invalidateAnimatingZoomEnd;
- (void)_invalidateContentState;
- (void)_invalidateScrollView;
- (void)_invalidateShouldTrackContentAnimation;
- (void)_invalidateUserAffineTransform;
- (void)_invalidateUserInteracting;
- (void)_invalidateUserPanningOrDecelerating;
- (void)_invalidateUserZoomingOrBouncing;
- (void)_performStateChanges:(id)a3;
- (void)_performZoomAndScrollChanges:(id)a3;
- (void)_setAnimatingZoomEnd:(BOOL)a3;
- (void)_setContentAnimating:(BOOL)a3;
- (void)_setContentCenter:(CGPoint)a3;
- (void)_setContentZoomScale:(double)a3;
- (void)_setEnabledInteractions:(unint64_t)a3;
- (void)_setNeedsStateUpdate;
- (void)_setPreferredMaximumZoomScale:(double)a3;
- (void)_setPreferredMinimumZoomScale:(double)a3;
- (void)_setShouldTrackContentAnimation:(BOOL)a3;
- (void)_setUpdatingScrollView:(BOOL)a3;
- (void)_setUserAffineTransform:(CGAffineTransform *)a3;
- (void)_setUserDeceleratingPan:(BOOL)a3;
- (void)_setUserEndingZoom:(BOOL)a3;
- (void)_setUserInteracting:(BOOL)a3;
- (void)_setUserPanning:(BOOL)a3;
- (void)_setUserPanningOrDecelerating:(BOOL)a3;
- (void)_setUserZooming:(BOOL)a3;
- (void)_setUserZoomingOrBouncing:(BOOL)a3;
- (void)_updateAnimatingZoomEndIfNeeded;
- (void)_updateContentStateIfNeeded;
- (void)_updateDisplayLink;
- (void)_updateEnabledInteractionsIfNeeded;
- (void)_updateScrollViewFrame;
- (void)_updateScrollViewIfNeeded;
- (void)_updateScrollViewMinimumZoomScaleAndGoToMinimum:(BOOL)a3 animated:(BOOL)a4;
- (void)_updateShouldTrackContentAnimationIfNeeded;
- (void)_updateStateIfNeeded;
- (void)_updateUserAffineTransformIfNeeded;
- (void)_updateUserInteractingIfNeeded;
- (void)_updateUserPanningOrDeceleratingIfNeeded;
- (void)_updateUserZoomingOrBouncingIfNeeded;
- (void)_updateZoomAndScrollIfNeeded;
- (void)_willChangeState;
- (void)layoutSubviews;
- (void)scrollViewDidEndDecelerating:(id)a3;
- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4;
- (void)scrollViewDidEndZooming:(id)a3 withView:(id)a4 atScale:(double)a5;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewDidZoom:(id)a3;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)scrollViewWillBeginZooming:(id)a3 withView:(id)a4;
- (void)setContentPixelSize:(CGSize)a3;
- (void)setDebugScrollViewContentImage:(id)a3;
- (void)setDelegate:(id)a3;
- (void)setDesiredZoomScale:(double)a3;
- (void)setEnabledInteractions:(unint64_t)a3;
- (void)setHasUserZoomedIn:(BOOL)a3;
- (void)setHostedView:(id)a3;
- (void)setMinimumZoomScale:(double)a3 animated:(BOOL)a4;
- (void)setOffset:(CGPoint)a3 animated:(BOOL)a4;
- (void)setRequireTwoTouchesForPan:(BOOL)a3;
- (void)setScrollPadding:(CGSize)a3;
- (void)setUntransformedContentFrame:(CGRect)a3;
- (void)setUserAffineTransform:(CGAffineTransform *)a3;
- (void)toggleZoomWithLocationProvider:(id)a3;
- (void)zoomInOnLocationFromProvider:(id)a3 animated:(BOOL)a4;
- (void)zoomOut:(BOOL)a3;
@end

@implementation PUUserTransformView

- (CGPoint)_contentCenter
{
  x = self->__contentCenter.x;
  y = self->__contentCenter.y;
  result.y = y;
  result.x = x;
  return result;
}

- (PUUserTransformViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGPoint)offset
{
  x = self->_offset.x;
  y = self->_offset.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGSize)scrollPadding
{
  width = self->_scrollPadding.width;
  height = self->_scrollPadding.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGAffineTransform)userAffineTransform
{
  v3 = *&self[14].a;
  *&retstr->a = *&self[13].tx;
  *&retstr->c = v3;
  *&retstr->tx = *&self[14].c;
  return self;
}

- (CGRect)untransformedContentFrame
{
  x = self->_untransformedContentFrame.origin.x;
  y = self->_untransformedContentFrame.origin.y;
  width = self->_untransformedContentFrame.size.width;
  height = self->_untransformedContentFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGSize)contentPixelSize
{
  width = self->_contentPixelSize.width;
  height = self->_contentPixelSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)setHasUserZoomedIn:(BOOL)a3
{
  if (self->_hasUserZoomedIn != a3)
  {
    self->_hasUserZoomedIn = a3;
    if (self->_delegateFlags.respondsToDidChangeIsZoomedIn)
    {
      v4 = [(PUUserTransformView *)self delegate];
      [v4 userTransformViewDidChangeIsZoomedIn:self];
    }
  }
}

- (CGRect)visibleRect
{
  v3 = [(PUUserTransformView *)self _scrollView];
  v4 = [(PUUserTransformView *)self scrollContentView];
  if (![(PUUserTransformView *)self _isContentAnimating])
  {
    goto LABEL_6;
  }

  v5 = [v3 layer];
  v6 = [v5 presentationLayer];

  v7 = [v4 layer];
  v8 = [v7 presentationLayer];

  if (!v6 || !v8)
  {

LABEL_6:
    [v3 bounds];
    [v3 convertRect:v4 toView:?];
    v10 = v17;
    v12 = v18;
    v14 = v19;
    v16 = v20;
    goto LABEL_7;
  }

  [v6 bounds];
  [v6 convertRect:v8 toLayer:?];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

LABEL_7:
  v21 = v10;
  v22 = v12;
  v23 = v14;
  v24 = v16;
  result.size.height = v24;
  result.size.width = v23;
  result.origin.y = v22;
  result.origin.x = v21;
  return result;
}

- (void)scrollViewDidEndZooming:(id)a3 withView:(id)a4 atScale:(double)a5
{
  v7 = a3;
  v8 = [(PUUserTransformView *)self _scrollView];

  if (v8 != v7)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PUUserTransformView.m" lineNumber:1195 description:{@"Invalid parameter not satisfying: %@", @"scrollView == [self _scrollView]"}];
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __64__PUUserTransformView_scrollViewDidEndZooming_withView_atScale___block_invoke;
  v12[3] = &unk_1E7B80DD0;
  v12[4] = self;
  [(PUUserTransformView *)self _performStateChanges:v12];
  v9 = dispatch_time(0, 50000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__PUUserTransformView_scrollViewDidEndZooming_withView_atScale___block_invoke_2;
  block[3] = &unk_1E7B80DD0;
  block[4] = self;
  dispatch_after(v9, MEMORY[0x1E69E96A0], block);
}

uint64_t __64__PUUserTransformView_scrollViewDidEndZooming_withView_atScale___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _setUserZooming:0];
  [*(a1 + 32) _setUserEndingZoom:1];
  v2 = *(a1 + 32);

  return [v2 _invalidateContentState];
}

uint64_t __64__PUUserTransformView_scrollViewDidEndZooming_withView_atScale___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __64__PUUserTransformView_scrollViewDidEndZooming_withView_atScale___block_invoke_3;
  v3[3] = &unk_1E7B80DD0;
  v3[4] = v1;
  return [v1 _performStateChanges:v3];
}

- (void)scrollViewWillBeginZooming:(id)a3 withView:(id)a4
{
  v6 = a3;
  v7 = [(PUUserTransformView *)self _scrollView];

  if (v7 != v6)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"PUUserTransformView.m" lineNumber:1187 description:{@"Invalid parameter not satisfying: %@", @"scrollView == [self _scrollView]"}];
  }

  v8 = [MEMORY[0x1E695DF00] date];
  [(PUUserTransformView *)self setZoomStartDate:v8];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __59__PUUserTransformView_scrollViewWillBeginZooming_withView___block_invoke;
  v10[3] = &unk_1E7B80DD0;
  v10[4] = self;
  [(PUUserTransformView *)self _performStateChanges:v10];
}

- (void)scrollViewDidEndDecelerating:(id)a3
{
  v5 = a3;
  v6 = [(PUUserTransformView *)self _scrollView];

  if (v6 != v5)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"PUUserTransformView.m" lineNumber:1180 description:{@"Invalid parameter not satisfying: %@", @"scrollView == [self _scrollView]"}];
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __52__PUUserTransformView_scrollViewDidEndDecelerating___block_invoke;
  v8[3] = &unk_1E7B80DD0;
  v8[4] = self;
  [(PUUserTransformView *)self _performStateChanges:v8];
}

- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4
{
  v7 = a3;
  v8 = [(PUUserTransformView *)self _scrollView];

  if (v8 != v7)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"PUUserTransformView.m" lineNumber:1172 description:{@"Invalid parameter not satisfying: %@", @"scrollView == [self _scrollView]"}];
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __63__PUUserTransformView_scrollViewDidEndDragging_willDecelerate___block_invoke;
  v10[3] = &unk_1E7B7FF98;
  v10[4] = self;
  v11 = a4;
  [(PUUserTransformView *)self _performStateChanges:v10];
}

uint64_t __63__PUUserTransformView_scrollViewDidEndDragging_willDecelerate___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _setUserPanning:0];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 _setUserDeceleratingPan:v3];
}

- (void)scrollViewWillBeginDragging:(id)a3
{
  v5 = a3;
  v6 = [(PUUserTransformView *)self _scrollView];

  if (v6 != v5)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"PUUserTransformView.m" lineNumber:1165 description:{@"Invalid parameter not satisfying: %@", @"scrollView == [self _scrollView]"}];
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __51__PUUserTransformView_scrollViewWillBeginDragging___block_invoke;
  v8[3] = &unk_1E7B80DD0;
  v8[4] = self;
  [(PUUserTransformView *)self _performStateChanges:v8];
}

- (void)scrollViewDidZoom:(id)a3
{
  v5 = a3;
  v6 = [(PUUserTransformView *)self _scrollView];

  if (v6 != v5)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"PUUserTransformView.m" lineNumber:1158 description:{@"Invalid parameter not satisfying: %@", @"scrollView == [self _scrollView]"}];
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __41__PUUserTransformView_scrollViewDidZoom___block_invoke;
  v8[3] = &unk_1E7B80DD0;
  v8[4] = self;
  [(PUUserTransformView *)self _performStateChanges:v8];
}

- (void)scrollViewDidScroll:(id)a3
{
  v5 = a3;
  v6 = [(PUUserTransformView *)self _scrollView];

  if (v6 != v5)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"PUUserTransformView.m" lineNumber:1151 description:{@"Invalid parameter not satisfying: %@", @"scrollView == [self _scrollView]"}];
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __43__PUUserTransformView_scrollViewDidScroll___block_invoke;
  v8[3] = &unk_1E7B80DD0;
  v8[4] = self;
  [(PUUserTransformView *)self _performStateChanges:v8];
}

- (id)viewForZoomingInScrollView:(id)a3
{
  v5 = a3;
  v6 = [(PUUserTransformView *)self _scrollView];

  if (v6 != v5)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"PUUserTransformView.m" lineNumber:1145 description:{@"Invalid parameter not satisfying: %@", @"scrollView == [self _scrollView]"}];
  }

  return [(PUUserTransformView *)self scrollContentView];
}

- (void)_handleDisplayLink:(id)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __42__PUUserTransformView__handleDisplayLink___block_invoke;
  v3[3] = &unk_1E7B80DD0;
  v3[4] = self;
  [(PUUserTransformView *)self _performStateChanges:v3];
}

- (void)_updateDisplayLink
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = [(PUUserTransformView *)self _shouldTrackContentAnimation];
  v4 = [(PUUserTransformView *)self _displayLink];
  v5 = v4;
  if (v3)
  {
    if (!v4)
    {
      v5 = [MEMORY[0x1E6979330] displayLinkWithTarget:self selector:sel__handleDisplayLink_];
      if ([MEMORY[0x1E69C44C8] highFramerateRequiresReasonAndRange])
      {
        [v5 setHighFrameRateReason:2228225];
        PXFrameRateRangeTypeGetCAFrameRateRange();
        [v5 setPreferredFrameRateRange:?];
      }

      v6 = [MEMORY[0x1E695DFD0] currentRunLoop];
      [v5 addToRunLoop:v6 forMode:*MEMORY[0x1E695D918]];

      [(PUUserTransformView *)self _setDisplayLink:v5];
      v7 = PLOneUpGetLog();
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_11;
      }

      v9 = 134217984;
      v10 = self;
      v8 = "%p starting display link";
      goto LABEL_10;
    }
  }

  else if (v4)
  {
    [v4 invalidate];
    [(PUUserTransformView *)self _setDisplayLink:0];
    v7 = PLOneUpGetLog();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
LABEL_11:

      goto LABEL_12;
    }

    v9 = 134217984;
    v10 = self;
    v8 = "%p stopping display link";
LABEL_10:
    _os_log_impl(&dword_1B36F3000, v7, OS_LOG_TYPE_DEFAULT, v8, &v9, 0xCu);
    goto LABEL_11;
  }

LABEL_12:
}

- (double)fillZoomScale
{
  [(PUUserTransformView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(PUUserTransformView *)self untransformedContentFrame];
  v12 = v11;
  v14 = v13;
  v17.origin.x = v4;
  v17.origin.y = v6;
  v17.size.width = v8;
  v17.size.height = v10;
  v15 = CGRectGetWidth(v17) / v12;
  v18.origin.x = v4;
  v18.origin.y = v6;
  v18.size.width = v8;
  v18.size.height = v10;
  result = CGRectGetHeight(v18) / v14;
  if (v15 >= result)
  {
    return v15;
  }

  return result;
}

- (double)doubleTapZoomScale
{
  [(PUUserTransformView *)self bounds];
  v4 = v3;
  v6 = v5;
  [(PUUserTransformView *)self untransformedContentFrame];
  v8 = v7;
  v10 = v9;
  v11 = objc_opt_class();
  v12 = +[PUOneUpSettings sharedInstance];
  [v12 doubleTapZoomFactor];
  [v11 doubleTapZoomScaleForContentSize:-[PUUserTransformView preferToFillOnDoubleTap](self inBoundsSize:"preferToFillOnDoubleTap") defaultScale:v8 preferToFillOnDoubleTap:{v10, v4, v6, v13}];
  v15 = v14;

  return v15;
}

- (void)setHostedView:(id)a3
{
  v5 = a3;
  hostedView = self->_hostedView;
  v8 = v5;
  if (hostedView != v5)
  {
    [(UIView *)hostedView removeFromSuperview];
    objc_storeStrong(&self->_hostedView, a3);
    if (self->_hostedView)
    {
      v7 = [(PUUserTransformView *)self scrollContentView];
      [v7 bounds];
      [(UIView *)self->_hostedView setFrame:?];
      [v7 addSubview:self->_hostedView];
    }
  }
}

- (void)_setUpdatingScrollView:(BOOL)a3
{
  if (self->__updatingScrollView != a3)
  {
    self->__updatingScrollView = a3;
    if (!a3)
    {
      [(PUUserTransformView *)self _invalidateContentState];
    }
  }
}

- (void)_updateScrollViewIfNeeded
{
  if ([(PUUserTransformView *)self _needsUpdateScrollView])
  {
    [(PUUserTransformView *)self _setNeedsUpdateScrollView:0];
    [(PUUserTransformView *)self contentPixelSize];
    if ((PXSizeIsEmpty() & 1) == 0)
    {
      v3 = [(PUUserTransformView *)self _isUpdatingScrollView];
      [(PUUserTransformView *)self _setUpdatingScrollView:1];
      [(PUUserTransformView *)self bounds];
      v5 = v4;
      v7 = v6;
      v9 = v8;
      v11 = v10;
      [(PUUserTransformView *)self untransformedContentFrame];
      v13 = v12;
      v79 = v14;
      v16 = v15;
      v18 = v17;
      [(PUUserTransformView *)self contentPixelSize];
      v80 = v19;
      v20 = +[PUOneUpSettings sharedInstance];
      v21 = [v20 useDebuggingColors];

      v22 = [(PUUserTransformView *)self _scrollView];
      v23 = v22;
      if (!v22)
      {
        v23 = [[_PUUserTransformScrollView alloc] initWithFrame:v5, v7, v9, v11];
        [(_PUUserTransformScrollView *)v23 setScrollsToTop:0];
        [(_PUUserTransformScrollView *)v23 setDecelerationRate:*MEMORY[0x1E69DE3A0]];
        [(_PUUserTransformScrollView *)v23 setPreservesCenterDuringRotation:1];
        [(_PUUserTransformScrollView *)v23 setShowsHorizontalScrollIndicator:0];
        [(_PUUserTransformScrollView *)v23 setShowsVerticalScrollIndicator:0];
        [(_PUUserTransformScrollView *)v23 setDelegate:self];
        if (v21)
        {
          v24 = [(_PUUserTransformScrollView *)v23 layer];
          v25 = [MEMORY[0x1E69DC888] blueColor];
          [v24 setBorderColor:{objc_msgSend(v25, "CGColor")}];

          v26 = [(_PUUserTransformScrollView *)v23 layer];
          [v26 setBorderWidth:2.0];
        }

        [(PUUserTransformView *)self addSubview:v23];
        objc_storeStrong(&self->__scrollView, v23);
      }

      v81 = v11;
      v82 = v9;
      v27 = v5;
      v78 = v7;
      [(PUUserTransformView *)self _updateScrollViewFrame];
      v28 = [(PUUserTransformView *)self scrollContentView];
      v29 = MEMORY[0x1E695EFF8];
      if (!v28)
      {
        v30 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), v16, v18}];
        v28 = v30;
        if (v21)
        {
          v31 = [v30 layer];
          v32 = [MEMORY[0x1E69DC888] purpleColor];
          [v31 setBorderColor:{objc_msgSend(v32, "CGColor")}];

          v33 = [v28 layer];
          [v33 setBorderWidth:5.0];
        }

        [(_PUUserTransformScrollView *)v23 addSubview:v28];
        objc_storeStrong(&self->_scrollContentView, v28);
        v34 = [(PUUserTransformView *)self debugScrollViewContentImage];
        v35 = [v28 layer];
        [v35 setContents:{objc_msgSend(v34, "CGImage")}];

        v36 = [(PUUserTransformView *)self hostedView];
        if (v36)
        {
          [v28 bounds];
          [(UIView *)self->_hostedView setFrame:?];
          [v28 addSubview:self->_hostedView];
          if (v21)
          {
            v37 = [MEMORY[0x1E69DC888] greenColor];
            v38 = [v37 CGColor];
            [v36 layer];
            v76 = v22;
            v40 = v39 = v3;
            [v40 setBorderColor:v38];

            v3 = v39;
            v22 = v76;
            v41 = 1.0;
          }

          else
          {
            v37 = [v36 layer];
            [v37 setBorderColor:0];
            v41 = 0.0;
          }

          v42 = [v36 layer];
          [v42 setBorderWidth:v41];
        }

        v29 = MEMORY[0x1E695EFF8];
      }

      [(PUUserTransformView *)self minimumZoomScale];
      v44 = v43;
      v77 = v43;
      v94 = 0u;
      v95 = 0u;
      v93 = 0u;
      [(PUUserTransformView *)self userAffineTransform];
      v92 = *v29;
      v91 = v44;
      v90[0] = v93;
      v90[1] = v94;
      v90[2] = v95;
      PUDecomposeTransform(v90, &v92, &v91, 0, 0);
      v96.origin.x = v13;
      v96.origin.y = v79;
      v96.size.width = v16;
      v96.size.height = v18;
      MidX = CGRectGetMidX(v96);
      v97.origin.x = v13;
      v97.origin.y = v79;
      v97.size.width = v16;
      v97.size.height = v18;
      MidY = CGRectGetMidY(v97);
      v47 = v16 * v91;
      v48 = v18 * v91;
      v72 = MidY - v18 * v91 * 0.5 + *(&v92 + 1);
      v74 = *&v92 + MidX - v16 * v91 * 0.5;
      v98.origin.x = v13;
      v98.origin.y = v79;
      v98.size.width = v16;
      v98.size.height = v18;
      v104.origin.x = v27;
      v104.origin.y = v78;
      v104.size.width = v82;
      v104.size.height = v81;
      CGRectUnion(v98, v104);
      v70 = v18;
      v99.origin.y = v72;
      v99.origin.x = v74;
      v99.size.width = v47;
      v99.size.height = v48;
      v105.origin.x = v27;
      v105.origin.y = v78;
      v105.size.width = v82;
      v105.size.height = v81;
      CGRectUnion(v99, v105);
      [(PUUserTransformView *)self _contentInsetsForContentScale:v91];
      v73 = v50;
      v75 = v49;
      v52 = v51;
      v71 = v53;
      [(PUUserTransformView *)self _contentOffsetAdjustmentForContentInsets:?];
      v100.origin.x = v27;
      v100.origin.y = v78;
      v100.size.width = v82;
      v100.size.height = v81;
      v54 = CGRectGetWidth(v100) / v16;
      v101.origin.x = v27;
      v101.origin.y = v78;
      v101.size.width = v82;
      v101.size.height = v81;
      v55 = CGRectGetHeight(v101) / v70;
      if (v54 >= v55)
      {
        v56 = v54;
      }

      else
      {
        v56 = v55;
      }

      [(PUUserTransformView *)self px_screenScale];
      v58 = v80 / (v16 * v57);
      v59 = +[PUOneUpSettings sharedInstance];
      [v59 defaultZoomInFactor];
      v61 = v60;

      if (v58 * v61 >= 1.0)
      {
        v62 = v58 * v61;
      }

      else
      {
        v62 = v56;
      }

      if ((_UIAccessibilityZoomTouchEnabled() & (v62 < 60.0)) != 0)
      {
        v63 = 60.0;
      }

      else
      {
        v63 = v62;
      }

      PXClamp();
      v91 = v64;
      [(_PUUserTransformScrollView *)v23 setContentSize:v16, v70];
      v85[0] = MEMORY[0x1E69E9820];
      v85[1] = 3221225472;
      v85[2] = __48__PUUserTransformView__updateScrollViewIfNeeded__block_invoke;
      v85[3] = &unk_1E7B7FB20;
      v85[4] = self;
      v87 = v77;
      v88 = v63;
      v89 = v91;
      v65 = v22;
      v86 = v65;
      [(PUUserTransformView *)self _performZoomAndScrollChanges:v85];
      [(_PUUserTransformScrollView *)v23 setContentInset:v75, v52, v73, v71];
      [(_PUUserTransformScrollView *)v23 contentSize];
      [(_PUUserTransformScrollView *)v23 bounds];
      CGRectGetWidth(v102);
      PXClamp();
      v67 = v66;
      [(_PUUserTransformScrollView *)v23 contentSize];
      [(_PUUserTransformScrollView *)v23 bounds];
      CGRectGetHeight(v103);
      PXClamp();
      [(_PUUserTransformScrollView *)v23 setContentOffset:v67, v68];
      [(PUUserTransformView *)self _updateScrollViewMinimumZoomScaleAndGoToMinimum:0 animated:0];
      v83[0] = MEMORY[0x1E69E9820];
      v83[1] = 3221225472;
      v83[2] = __48__PUUserTransformView__updateScrollViewIfNeeded__block_invoke_2;
      v83[3] = &unk_1E7B7FF98;
      v83[4] = self;
      v84 = v3;
      [(PUUserTransformView *)self _performStateChanges:v83];
      if ([(PUUserTransformView *)self requireTwoTouchesForPan])
      {
        v69 = [(_PUUserTransformScrollView *)v23 panGestureRecognizer];
        [v69 setMinimumNumberOfTouches:2];
      }

      [(_PUUserTransformScrollView *)v23 px_setPocketsEnabled:[(PUUserTransformView *)self scrollPocketsEnabled]];
    }
  }
}

void *__48__PUUserTransformView__updateScrollViewIfNeeded__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setMinimumZoomScale:*(a1 + 48)];
  [*(a1 + 32) _setPreferredMinimumZoomScale:*(a1 + 48)];
  [*(a1 + 32) _setPreferredMaximumZoomScale:*(a1 + 56)];
  [*(a1 + 32) setDesiredZoomScale:*(a1 + 64)];
  result = *(a1 + 32);
  if (result[59] != *(a1 + 40))
  {

    return [result _invalidateZoomAndScroll];
  }

  return result;
}

uint64_t __48__PUUserTransformView__updateScrollViewIfNeeded__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _invalidateUserAffineTransform];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 _setUpdatingScrollView:v3];
}

- (void)_invalidateScrollView
{
  if (![(PUUserTransformView *)self isUserInteracting])
  {
    [(UIScrollView *)self->__scrollView setDelegate:0];
    [(UIScrollView *)self->__scrollView removeFromSuperview];
    scrollView = self->__scrollView;
    self->__scrollView = 0;

    scrollContentView = self->_scrollContentView;
    self->_scrollContentView = 0;

    [(PUUserTransformView *)self _setNeedsUpdateScrollView:1];

    [(PUUserTransformView *)self setNeedsLayout];
  }
}

- (CGPoint)_contentOffsetAdjustmentForContentInsets:(UIEdgeInsets)a3
{
  left = a3.left;
  top = a3.top;
  [(PUUserTransformView *)self scrollPadding:a3.top];
  v7 = v5 * 0.5 - left;
  v8 = v6 * 0.5 - top;
  result.y = v8;
  result.x = v7;
  return result;
}

- (BOOL)isTrackingZoomGesture
{
  v2 = [(PUUserTransformView *)self _scrollView];
  v3 = [v2 isZooming];

  return v3;
}

- (UIEdgeInsets)_contentInsetsForContentScale:(double)a3
{
  [(PUUserTransformView *)self scrollPadding];
  v7 = v6;
  v8 = v5;
  if (v6 == *MEMORY[0x1E695F060] && v5 == *(MEMORY[0x1E695F060] + 8))
  {
    v22 = *MEMORY[0x1E69DDCE0];
    v21 = *(MEMORY[0x1E69DDCE0] + 8);
    v19 = *(MEMORY[0x1E69DDCE0] + 16);
    v20 = *(MEMORY[0x1E69DDCE0] + 24);
  }

  else
  {
    [(PUUserTransformView *)self untransformedContentFrame];
    v11 = v10 * a3;
    v13 = v12 * a3;
    v14 = [(PUUserTransformView *)self _scrollView];
    [v14 bounds];
    v16 = v15;
    v18 = v17;

    v19 = fmax((v18 - v13) * 0.5, 0.0) + v8 * 0.5;
    v20 = fmax((v16 - v11) * 0.5, 0.0) + v7 * 0.5;
    v21 = v20;
    v22 = v19;
  }

  result.right = v20;
  result.bottom = v19;
  result.left = v21;
  result.top = v22;
  return result;
}

- (void)_updateZoomAndScrollIfNeeded
{
  if ([(PUUserTransformView *)self _needsUpdateZoomAndScroll])
  {
    [(PUUserTransformView *)self _setNeedsUpdateZoomAndScroll:0];
    if (![(PUUserTransformView *)self isUserInteracting])
    {
      v3 = [(PUUserTransformView *)self enabledInteractions];
      v4[0] = MEMORY[0x1E69E9820];
      v4[1] = 3221225472;
      v4[2] = __51__PUUserTransformView__updateZoomAndScrollIfNeeded__block_invoke;
      v4[3] = &unk_1E7B7FAF8;
      v4[4] = self;
      v5 = v3 & 1;
      v6 = (v3 & 4) != 0;
      v7 = (v3 & 2) != 0;
      [MEMORY[0x1E69DD250] performWithoutAnimation:v4];
    }
  }
}

void __51__PUUserTransformView__updateZoomAndScrollIfNeeded__block_invoke(uint64_t a1)
{
  v9 = [*(a1 + 32) _scrollView];
  v2 = *(a1 + 40);
  [*(a1 + 32) desiredZoomScale];
  v4 = v3;
  v5 = v3;
  if (*(a1 + 41) == 1)
  {
    [*(a1 + 32) minimumZoomScale];
    v5 = v6;
  }

  v7 = v4;
  if (*(a1 + 42) == 1)
  {
    [*(a1 + 32) _preferredMaximumZoomScale];
    v7 = v8;
  }

  [v9 setScrollEnabled:v2];
  [v9 setMinimumZoomScale:v5];
  [v9 setMaximumZoomScale:v7];
  [v9 setZoomScale:v4];
}

- (void)_assertInsideZoomAndScrollChangeBlock
{
  if ([(PUUserTransformView *)self _numberOfNestedZoomAndScrollChanges]<= 0)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    [v4 handleFailureInMethod:a2 object:self file:@"PUUserTransformView.m" lineNumber:843 description:@"not within a zoom and scroll change block"];
  }
}

- (void)_setPreferredMaximumZoomScale:(double)a3
{
  [(PUUserTransformView *)self _assertInsideZoomAndScrollChangeBlock];
  if (self->__preferredMaximumZoomScale != a3)
  {
    self->__preferredMaximumZoomScale = a3;

    [(PUUserTransformView *)self _invalidateZoomAndScroll];
  }
}

- (void)_setPreferredMinimumZoomScale:(double)a3
{
  [(PUUserTransformView *)self _assertInsideZoomAndScrollChangeBlock];
  if (self->__preferredMinimumZoomScale != a3)
  {
    self->__preferredMinimumZoomScale = a3;

    [(PUUserTransformView *)self _invalidateZoomAndScroll];
  }
}

- (void)setDesiredZoomScale:(double)a3
{
  [(PUUserTransformView *)self _assertInsideZoomAndScrollChangeBlock];
  if (self->_desiredZoomScale != a3)
  {
    self->_desiredZoomScale = a3;

    [(PUUserTransformView *)self _invalidateZoomAndScroll];
  }
}

- (void)_setEnabledInteractions:(unint64_t)a3
{
  [(PUUserTransformView *)self _assertInsideZoomAndScrollChangeBlock];
  if (self->_enabledInteractions != a3)
  {
    self->_enabledInteractions = a3;

    [(PUUserTransformView *)self _invalidateZoomAndScroll];
  }
}

- (void)_performZoomAndScrollChanges:(id)a3
{
  v7 = a3;
  if (!v7)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"PUUserTransformView.m" lineNumber:789 description:{@"Invalid parameter not satisfying: %@", @"changeBlock"}];
  }

  v5 = [(PUUserTransformView *)self _numberOfNestedZoomAndScrollChanges];
  [(PUUserTransformView *)self _setNumberOfNestedZoomAndScrollChanges:v5 + 1];
  v7[2]();
  [(PUUserTransformView *)self _setNumberOfNestedZoomAndScrollChanges:v5];
  if (!v5)
  {
    [(PUUserTransformView *)self _updateZoomAndScrollIfNeeded];
  }
}

- (void)_updateUserAffineTransformIfNeeded
{
  if ([(PUUserTransformView *)self _needsUpdateUserAffineTransform])
  {
    [(PUUserTransformView *)self _setNeedsUpdateUserAffineTransform:0];
    if (![(PUUserTransformView *)self _isUpdatingScrollView])
    {
      [(PUUserTransformView *)self bounds];
      PXRectGetCenter();
      v4 = v3;
      v6 = v5;
      [(PUUserTransformView *)self _contentCenter];
      v8 = v7 - v4;
      v10 = v9 - v6;
      [(PUUserTransformView *)self _contentZoomScale];
      v12 = v11;
      v13 = *(MEMORY[0x1E695EFD0] + 16);
      *&v16.a = *MEMORY[0x1E695EFD0];
      *&v16.c = v13;
      *&v16.tx = *(MEMORY[0x1E695EFD0] + 32);
      *&v15.a = *&v16.a;
      *&v15.c = v13;
      *&v15.tx = *&v16.tx;
      CGAffineTransformTranslate(&v16, &v15, v8, v10);
      v14 = v16;
      CGAffineTransformScale(&v15, &v14, v12, v12);
      v16 = v15;
      [(PUUserTransformView *)self _setUserAffineTransform:&v15];
    }
  }
}

- (void)_invalidateUserAffineTransform
{
  [(PUUserTransformView *)self _setNeedsUpdateUserAffineTransform:1];

  [(PUUserTransformView *)self _setNeedsStateUpdate];
}

- (void)_updateAnimatingZoomEndIfNeeded
{
  if ([(PUUserTransformView *)self _needsUpdateAnimatingZoomEnd])
  {
    [(PUUserTransformView *)self _setNeedsUpdateAnimatingZoomEnd:0];
    v3 = [(PUUserTransformView *)self _isContentAnimating];
    v4 = 0;
    if (v3)
    {
      v4 = [(PUUserTransformView *)self _isUserEndingZoom];
    }

    [(PUUserTransformView *)self _setAnimatingZoomEnd:v4];
  }
}

- (void)_invalidateAnimatingZoomEnd
{
  [(PUUserTransformView *)self _setNeedsUpdateAnimatingZoomEnd:1];

  [(PUUserTransformView *)self _setNeedsStateUpdate];
}

- (double)_currentPresentationZoomScale
{
  v3 = [(PUUserTransformView *)self scrollContentView];
  v4 = [v3 layer];

  v5 = [v4 presentationLayer];
  v6 = [(PUUserTransformView *)self _scrollView];
  v7 = [v6 layer];

  if (v4)
  {
    [v4 transform];
    v8 = *&v25;
    if (v5)
    {
LABEL_3:
      [v5 transform];
      v9 = *&v17;
      goto LABEL_6;
    }
  }

  else
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v8 = 0.0;
    v25 = 0u;
    v26 = 0u;
    if (v5)
    {
      goto LABEL_3;
    }
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = 0.0;
  v17 = 0u;
  v18 = 0u;
LABEL_6:
  v10 = [v4 animationKeys];
  if (![v10 count])
  {
    v11 = [v5 animationKeys];
    if (![v11 count])
    {
      v12 = [v7 animationKeys];
      if (![v12 count])
      {
        v14 = [v7 presentationLayer];
        v15 = [v14 animationKeys];
        v16 = [v15 count];

        if (!v16)
        {
          goto LABEL_13;
        }

        goto LABEL_12;
      }
    }
  }

LABEL_12:
  v8 = v9;
LABEL_13:

  return v8;
}

- (void)_updateContentStateIfNeeded
{
  if (![(PUUserTransformView *)self _needsUpdateContentState])
  {
    return;
  }

  [(PUUserTransformView *)self _setNeedsUpdateContentState:0];
  v3 = [(PUUserTransformView *)self scrollContentView];

  if (!v3)
  {
    return;
  }

  v4 = [(PUUserTransformView *)self layer];
  v5 = [(PUUserTransformView *)self scrollContentView];
  v6 = [v5 layer];

  v7 = [v6 presentationLayer];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = v6;
  }

  v10 = v9;

  v11 = [(PUUserTransformView *)self _scrollView];
  v12 = [v11 layer];

  [v6 bounds];
  PXRectGetCenter();
  [v4 convertPoint:v6 fromLayer:?];
  v14 = v13;
  v16 = v15;
  [v10 bounds];
  PXRectGetCenter();
  [v4 convertPoint:v10 fromLayer:?];
  v18 = v17;
  v20 = v19;
  if (!v6)
  {
    v21 = 0.0;
    if (v10)
    {
      goto LABEL_8;
    }

LABEL_10:
    v22 = 0.0;
    goto LABEL_11;
  }

  [v6 transform];
  v21 = v39;
  if (!v10)
  {
    goto LABEL_10;
  }

LABEL_8:
  [v10 transform];
  v22 = v38;
LABEL_11:
  v23 = [v6 animationKeys];
  if ([v23 count])
  {

    [(PUUserTransformView *)self _setContentAnimating:1];
  }

  else
  {
    v24 = [v10 animationKeys];
    if ([v24 count])
    {
      v25 = 1;
    }

    else
    {
      v26 = [v12 animationKeys];
      if ([v26 count])
      {
        v25 = 1;
      }

      else
      {
        v37 = [v12 presentationLayer];
        v27 = [v37 animationKeys];
        v25 = [v27 count] != 0;
      }
    }

    [(PUUserTransformView *)self _setContentAnimating:v25];
    if (!v25)
    {
      v22 = v21;
      v20 = v16;
      v18 = v14;
    }
  }

  [(PUUserTransformView *)self _setContentCenter:v18, v20];
  [(PUUserTransformView *)self _setContentZoomScale:v22];
  [(PUUserTransformView *)self _contentZoomScale];
  [(PUUserTransformView *)self _contentInsetsForContentScale:?];
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v36 = [(PUUserTransformView *)self _scrollView];
  [v36 setContentInset:{v29, v31, v33, v35}];
}

- (void)_invalidateContentState
{
  [(PUUserTransformView *)self _setNeedsUpdateContentState:1];

  [(PUUserTransformView *)self _setNeedsStateUpdate];
}

- (void)_updateShouldTrackContentAnimationIfNeeded
{
  if ([(PUUserTransformView *)self _needsUpdateShouldTrackContentAnimation])
  {
    [(PUUserTransformView *)self _setNeedsUpdateShouldTrackContentAnimation:0];
    v3 = [(PUUserTransformView *)self _isContentAnimating];

    [(PUUserTransformView *)self _setShouldTrackContentAnimation:v3];
  }
}

- (void)_invalidateShouldTrackContentAnimation
{
  [(PUUserTransformView *)self _setNeedsUpdateShouldTrackContentAnimation:1];

  [(PUUserTransformView *)self _setNeedsStateUpdate];
}

- (void)_updateUserInteractingIfNeeded
{
  if ([(PUUserTransformView *)self _needsUpdateUserInteracting])
  {
    [(PUUserTransformView *)self _setNeedsUpdateUserInteracting:0];
    v3 = [(PUUserTransformView *)self _isUserPanningOrDecelerating]|| [(PUUserTransformView *)self _isUserZoomingOrBouncing];

    [(PUUserTransformView *)self _setUserInteracting:v3];
  }
}

- (void)_invalidateUserInteracting
{
  [(PUUserTransformView *)self _setNeedsUpdateUserInteracting:1];

  [(PUUserTransformView *)self _setNeedsStateUpdate];
}

- (void)_updateUserZoomingOrBouncingIfNeeded
{
  if ([(PUUserTransformView *)self _needsUpdateUserZoomingOrBouncing])
  {
    [(PUUserTransformView *)self _setNeedsUpdateUserZoomingOrBouncing:0];
    v3 = [(PUUserTransformView *)self _isUserZooming]|| [(PUUserTransformView *)self _isUserEndingZoom]|| [(PUUserTransformView *)self _isAnimatingZoomEnd];

    [(PUUserTransformView *)self _setUserZoomingOrBouncing:v3];
  }
}

- (void)_invalidateUserZoomingOrBouncing
{
  [(PUUserTransformView *)self _setNeedsUpdateUserZoomingOrBouncing:1];

  [(PUUserTransformView *)self _setNeedsStateUpdate];
}

- (void)_updateUserPanningOrDeceleratingIfNeeded
{
  if ([(PUUserTransformView *)self _needsUpdateUserPanningOrDecelerating])
  {
    [(PUUserTransformView *)self _setNeedsUpdateUserPanningOrDecelerating:0];
    v3 = [(PUUserTransformView *)self _isUserPanning]|| [(PUUserTransformView *)self _isUserDeceleratingPan];

    [(PUUserTransformView *)self _setUserPanningOrDecelerating:v3];
  }
}

- (void)_invalidateUserPanningOrDecelerating
{
  [(PUUserTransformView *)self _setNeedsUpdateUserPanningOrDecelerating:1];

  [(PUUserTransformView *)self _setNeedsStateUpdate];
}

- (void)_setUserAffineTransform:(CGAffineTransform *)a3
{
  v18 = *MEMORY[0x1E69E9840];
  [(PUUserTransformView *)self _assertInsideStateUpdate];
  v5 = *&a3->c;
  *&t1.a = *&a3->a;
  *&t1.c = v5;
  *&t1.tx = *&a3->tx;
  v6 = *&self->_userAffineTransform.c;
  *&v16.a = *&self->_userAffineTransform.a;
  *&v16.c = v6;
  *&v16.tx = *&self->_userAffineTransform.tx;
  if (!CGAffineTransformEqualToTransform(&t1, &v16))
  {
    v7 = *&a3->a;
    v8 = *&a3->tx;
    *&self->_userAffineTransform.c = *&a3->c;
    *&self->_userAffineTransform.tx = v8;
    *&self->_userAffineTransform.a = v7;
    v9 = PLOneUpGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = *&a3->c;
      *&t1.a = *&a3->a;
      *&t1.c = v10;
      *&t1.tx = *&a3->tx;
      v11 = NSStringFromCGAffineTransform(&t1);
      LODWORD(t1.a) = 134218242;
      *(&t1.a + 4) = self;
      WORD2(t1.b) = 2112;
      *(&t1.b + 6) = v11;
      _os_log_impl(&dword_1B36F3000, v9, OS_LOG_TYPE_DEBUG, "%p userAffineTransform=%@", &t1, 0x16u);
    }

    v12 = [(PUUserTransformView *)self isUserInteracting];
    v13 = [(PUUserTransformView *)self _wasUserInteractingBeforeStateUpdate]|| v12;
    v14 = [(PUUserTransformView *)self delegate];
    v15 = *&a3->c;
    *&t1.a = *&a3->a;
    *&t1.c = v15;
    *&t1.tx = *&a3->tx;
    [v14 userTransformView:self didChangeUserAffineTransform:&t1 isUserInteracting:v13 & 1];
  }
}

- (void)_setAnimatingZoomEnd:(BOOL)a3
{
  v3 = a3;
  v10 = *MEMORY[0x1E69E9840];
  [(PUUserTransformView *)self _assertInsideStateUpdate];
  if (self->__isAnimatingZoomEnd != v3)
  {
    self->__isAnimatingZoomEnd = v3;
    v5 = PLOneUpGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 134218240;
      v7 = self;
      v8 = 1024;
      v9 = v3;
      _os_log_impl(&dword_1B36F3000, v5, OS_LOG_TYPE_DEFAULT, "%p isAnimatingZoomEnd=%i", &v6, 0x12u);
    }

    [(PUUserTransformView *)self _invalidateUserZoomingOrBouncing];
  }
}

- (void)_setContentZoomScale:(double)a3
{
  v13 = *MEMORY[0x1E69E9840];
  [(PUUserTransformView *)self _assertInsideStateUpdate];
  if (self->__contentZoomScale != a3)
  {
    v5 = [(PUUserTransformView *)self _scrollView];
    v6 = [v5 isZooming];

    if (v6)
    {
      [(PUUserTransformView *)self minimumZoomScale];
      [(PUUserTransformView *)self setHasUserZoomedIn:v7 < a3];
    }

    self->__contentZoomScale = a3;
    v8 = PLOneUpGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = 134218240;
      v10 = self;
      v11 = 2048;
      v12 = a3;
      _os_log_impl(&dword_1B36F3000, v8, OS_LOG_TYPE_DEBUG, "%p contentZoomScale=%f", &v9, 0x16u);
    }

    [(PUUserTransformView *)self _invalidateUserAffineTransform];
  }
}

- (void)_setContentCenter:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v13 = *MEMORY[0x1E69E9840];
  [(PUUserTransformView *)self _assertInsideStateUpdate];
  if (x != self->__contentCenter.x || y != self->__contentCenter.y)
  {
    self->__contentCenter.x = x;
    self->__contentCenter.y = y;
    v7 = PLOneUpGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v14.x = x;
      v14.y = y;
      v8 = NSStringFromCGPoint(v14);
      v9 = 134218242;
      v10 = self;
      v11 = 2112;
      v12 = v8;
      _os_log_impl(&dword_1B36F3000, v7, OS_LOG_TYPE_DEBUG, "%p contentCenter=%@", &v9, 0x16u);
    }

    [(PUUserTransformView *)self _invalidateUserAffineTransform];
  }
}

- (void)_setContentAnimating:(BOOL)a3
{
  v3 = a3;
  v10 = *MEMORY[0x1E69E9840];
  [(PUUserTransformView *)self _assertInsideStateUpdate];
  if (self->__isContentAnimating != v3)
  {
    self->__isContentAnimating = v3;
    v5 = PLOneUpGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 134218240;
      v7 = self;
      v8 = 1024;
      v9 = v3;
      _os_log_impl(&dword_1B36F3000, v5, OS_LOG_TYPE_DEFAULT, "%p isContentAnimating=%i", &v6, 0x12u);
    }

    [(PUUserTransformView *)self _invalidateAnimatingZoomEnd];
    [(PUUserTransformView *)self _invalidateShouldTrackContentAnimation];
  }
}

- (void)_setShouldTrackContentAnimation:(BOOL)a3
{
  v3 = a3;
  v10 = *MEMORY[0x1E69E9840];
  [(PUUserTransformView *)self _assertInsideStateUpdate];
  if (self->__shouldTrackContentAnimation != v3)
  {
    self->__shouldTrackContentAnimation = v3;
    v5 = PLOneUpGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 134218240;
      v7 = self;
      v8 = 1024;
      v9 = v3;
      _os_log_impl(&dword_1B36F3000, v5, OS_LOG_TYPE_DEFAULT, "%p shouldTrackContentAnimation=%i", &v6, 0x12u);
    }

    [(PUUserTransformView *)self _updateDisplayLink];
  }
}

- (void)_setUserInteracting:(BOOL)a3
{
  v3 = a3;
  v11 = *MEMORY[0x1E69E9840];
  [(PUUserTransformView *)self _assertInsideStateUpdate];
  if (self->_isUserInteracting != v3)
  {
    self->_isUserInteracting = v3;
    v5 = PLOneUpGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 134218240;
      v8 = self;
      v9 = 1024;
      v10 = v3;
      _os_log_impl(&dword_1B36F3000, v5, OS_LOG_TYPE_DEFAULT, "%p isUserInteracting=%i", &v7, 0x12u);
    }

    [(PUUserTransformView *)self _invalidateUserAffineTransform];
    if (self->_delegateFlags.respondsToDidChangeIsUserInteracting)
    {
      v6 = [(PUUserTransformView *)self delegate];
      [v6 userTransformView:self didChangeIsUserInteracting:v3];
    }
  }
}

- (void)_setUserZoomingOrBouncing:(BOOL)a3
{
  v3 = a3;
  v10 = *MEMORY[0x1E69E9840];
  [(PUUserTransformView *)self _assertInsideStateUpdate];
  if (self->__isUserZoomingOrBouncing != v3)
  {
    self->__isUserZoomingOrBouncing = v3;
    v5 = PLOneUpGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 134218240;
      v7 = self;
      v8 = 1024;
      v9 = v3;
      _os_log_impl(&dword_1B36F3000, v5, OS_LOG_TYPE_DEFAULT, "%p isUserZoomingOrBouncing=%i", &v6, 0x12u);
    }

    [(PUUserTransformView *)self _invalidateUserInteracting];
  }
}

- (void)_setUserPanningOrDecelerating:(BOOL)a3
{
  v3 = a3;
  v10 = *MEMORY[0x1E69E9840];
  [(PUUserTransformView *)self _assertInsideStateUpdate];
  if (self->__isUserPanningOrDecelerating != v3)
  {
    self->__isUserPanningOrDecelerating = v3;
    v5 = PLOneUpGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 134218240;
      v7 = self;
      v8 = 1024;
      v9 = v3;
      _os_log_impl(&dword_1B36F3000, v5, OS_LOG_TYPE_DEFAULT, "%p isUserPanningOrDecelerating=%i", &v6, 0x12u);
    }

    [(PUUserTransformView *)self _invalidateUserInteracting];
  }
}

- (void)_setUserEndingZoom:(BOOL)a3
{
  v3 = a3;
  v10 = *MEMORY[0x1E69E9840];
  [(PUUserTransformView *)self _assertInsideStateChangeBlock];
  if (self->__isUserEndingZoom != v3)
  {
    self->__isUserEndingZoom = v3;
    v5 = PLOneUpGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 134218240;
      v7 = self;
      v8 = 1024;
      v9 = v3;
      _os_log_impl(&dword_1B36F3000, v5, OS_LOG_TYPE_DEFAULT, "%p isUserEndingZoom=%i", &v6, 0x12u);
    }

    [(PUUserTransformView *)self _invalidateUserZoomingOrBouncing];
    if (v3)
    {
      [(PUUserTransformView *)self _invalidateAnimatingZoomEnd];
    }
  }
}

- (void)_updateEnabledInteractionsIfNeeded
{
  if ([(PUUserTransformView *)self needsUpdateEnabledInteractions])
  {
    [(PUUserTransformView *)self setNeedsUpdateEnabledInteractions:0];
    if ([(PUUserTransformView *)self _isUserZooming])
    {

      [(PUUserTransformView *)self setEnabledInteractions:7];
    }
  }
}

- (void)_setUserZooming:(BOOL)a3
{
  v3 = a3;
  v10 = *MEMORY[0x1E69E9840];
  [(PUUserTransformView *)self _assertInsideStateChangeBlock];
  if (self->__isUserZooming != v3)
  {
    self->__isUserZooming = v3;
    v5 = PLOneUpGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 134218240;
      v7 = self;
      v8 = 1024;
      v9 = v3;
      _os_log_impl(&dword_1B36F3000, v5, OS_LOG_TYPE_DEFAULT, "%p isUserZooming=%i", &v6, 0x12u);
    }

    [(PUUserTransformView *)self _invalidateUserZoomingOrBouncing];
    if (v3)
    {
      [(PUUserTransformView *)self _invalidateEnabledInteractions];
    }
  }
}

- (void)_setUserDeceleratingPan:(BOOL)a3
{
  v3 = a3;
  v10 = *MEMORY[0x1E69E9840];
  [(PUUserTransformView *)self _assertInsideStateChangeBlock];
  if (self->__isUserDeceleratingPan != v3)
  {
    self->__isUserDeceleratingPan = v3;
    v5 = PLOneUpGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 134218240;
      v7 = self;
      v8 = 1024;
      v9 = v3;
      _os_log_impl(&dword_1B36F3000, v5, OS_LOG_TYPE_DEFAULT, "%p isUserDeceleratingPan=%i", &v6, 0x12u);
    }

    [(PUUserTransformView *)self _invalidateUserPanningOrDecelerating];
  }
}

- (void)_setUserPanning:(BOOL)a3
{
  v3 = a3;
  v10 = *MEMORY[0x1E69E9840];
  [(PUUserTransformView *)self _assertInsideStateChangeBlock];
  if (self->__isUserPanning != v3)
  {
    self->__isUserPanning = v3;
    v5 = PLOneUpGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 134218240;
      v7 = self;
      v8 = 1024;
      v9 = v3;
      _os_log_impl(&dword_1B36F3000, v5, OS_LOG_TYPE_DEFAULT, "%p isUserPanning=%i", &v6, 0x12u);
    }

    [(PUUserTransformView *)self _invalidateUserPanningOrDecelerating];
  }
}

- (void)_setNeedsStateUpdate
{
  if (![(PUUserTransformView *)self _isUpdatingState]&& [(PUUserTransformView *)self _numberOfNestedStateChanges]<= 0)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    [v4 handleFailureInMethod:a2 object:self file:@"PUUserTransformView.m" lineNumber:443 description:@"not within a state update or change block"];
  }
}

- (BOOL)_needsStateUpdate
{
  if ([(PUUserTransformView *)self _needsUpdateUserPanningOrDecelerating]|| [(PUUserTransformView *)self _needsUpdateUserZoomingOrBouncing]|| [(PUUserTransformView *)self _needsUpdateUserInteracting]|| [(PUUserTransformView *)self _needsUpdateShouldTrackContentAnimation]|| [(PUUserTransformView *)self _needsUpdateUserAffineTransform]|| [(PUUserTransformView *)self _needsUpdateContentState])
  {
    return 1;
  }

  return [(PUUserTransformView *)self _needsUpdateAnimatingZoomEnd];
}

- (void)_updateStateIfNeeded
{
  if (![(PUUserTransformView *)self _isUpdatingScrollView])
  {
    if ([(PUUserTransformView *)self _needsStateUpdate])
    {
      v4 = [(PUUserTransformView *)self _isUpdatingState];
      [(PUUserTransformView *)self _setUpdatingState:1];
      [(PUUserTransformView *)self _setWasUserInteractingBeforeStateUpdate:[(PUUserTransformView *)self isUserInteracting]];
      [(PUUserTransformView *)self _updateUserPanningOrDeceleratingIfNeeded];
      [(PUUserTransformView *)self _updateContentStateIfNeeded];
      [(PUUserTransformView *)self _updateAnimatingZoomEndIfNeeded];
      [(PUUserTransformView *)self _updateUserZoomingOrBouncingIfNeeded];
      [(PUUserTransformView *)self _updateUserInteractingIfNeeded];
      [(PUUserTransformView *)self _updateShouldTrackContentAnimationIfNeeded];
      [(PUUserTransformView *)self _updateUserAffineTransformIfNeeded];
      [(PUUserTransformView *)self _updateEnabledInteractionsIfNeeded];
      [(PUUserTransformView *)self _setUpdatingState:v4];
      if ([(PUUserTransformView *)self _needsStateUpdate])
      {
        v5 = [MEMORY[0x1E696AAA8] currentHandler];
        [v5 handleFailureInMethod:a2 object:self file:@"PUUserTransformView.m" lineNumber:425 description:@"state updates still needed after an update cycle"];
      }
    }
  }
}

- (void)_didChangeState
{
  v3 = [(PUUserTransformView *)self _numberOfNestedStateChanges]- 1;
  [(PUUserTransformView *)self _setNumberOfNestedStateChanges:v3];
  if (!v3)
  {

    [(PUUserTransformView *)self _updateStateIfNeeded];
  }
}

- (void)_willChangeState
{
  v3 = [(PUUserTransformView *)self _numberOfNestedStateChanges]+ 1;

  [(PUUserTransformView *)self _setNumberOfNestedStateChanges:v3];
}

- (void)_performStateChanges:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    [v5 handleFailureInMethod:a2 object:self file:@"PUUserTransformView.m" lineNumber:379 description:{@"Invalid parameter not satisfying: %@", @"changeBlock"}];
  }

  [(PUUserTransformView *)self _willChangeState];
  v6[2]();
  [(PUUserTransformView *)self _didChangeState];
}

- (void)_assertInsideStateUpdate
{
  if (![(PUUserTransformView *)self _isUpdatingState])
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    [v4 handleFailureInMethod:a2 object:self file:@"PUUserTransformView.m" lineNumber:375 description:@"not within a state update"];
  }
}

- (void)_assertInsideStateChangeBlock
{
  if ([(PUUserTransformView *)self _numberOfNestedStateChanges]<= 0)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    [v4 handleFailureInMethod:a2 object:self file:@"PUUserTransformView.m" lineNumber:370 description:@"not within a state change block"];
  }
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v10.receiver = self;
  v10.super_class = PUUserTransformView;
  if (![(PUUserTransformView *)&v10 pointInside:a4 withEvent:?])
  {
    return 0;
  }

  if (!self->_delegateFlags.respondsToShouldReceiveTouchAtPoint)
  {
    return 1;
  }

  v7 = [(PUUserTransformView *)self delegate];
  v8 = [v7 userTransformView:self shouldReceiveTouchAtPoint:{x, y}];

  return v8;
}

- (void)_updateScrollViewFrame
{
  [(PUUserTransformView *)self bounds];
  [(PUUserTransformView *)self offset];
  PXRectGetCenter();
  PXPointAdd();
  v4 = v3;
  v6 = v5;
  v8 = [(PUUserTransformView *)self _scrollView];
  v7 = [v8 layer];
  [v7 setPosition:{v4, v6}];
}

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = PUUserTransformView;
  [(PUUserTransformView *)&v13 layoutSubviews];
  [(PUUserTransformView *)self _updateScrollViewFrame];
  v3 = [(PUUserTransformView *)self _scrollView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  [(PUUserTransformView *)self bounds];
  v9 = v8;
  v11 = v10;

  if (v5 != v9 || v7 != v11)
  {
    [(PUUserTransformView *)self _setNeedsUpdateScrollView:1];
  }

  [(PUUserTransformView *)self _updateScrollViewIfNeeded];
}

- (void)setDebugScrollViewContentImage:(id)a3
{
  v5 = a3;
  if (self->_debugScrollViewContentImage != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_debugScrollViewContentImage, a3);
    [(PUUserTransformView *)self _invalidateScrollView];
    v5 = v6;
  }
}

- (void)zoomOut:(BOOL)a3
{
  if (([(PUUserTransformView *)self enabledInteractions]& 4) != 0)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __31__PUUserTransformView_zoomOut___block_invoke;
    v5[3] = &unk_1E7B7FF98;
    v5[4] = self;
    v6 = a3;
    [(PUUserTransformView *)self _performZoomAndScrollChanges:v5];
  }
}

void __31__PUUserTransformView_zoomOut___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setHasUserZoomedIn:0];
  v4 = [*(a1 + 32) _scrollView];
  [v4 minimumZoomScale];
  v3 = v2;
  [*(a1 + 32) setDesiredZoomScale:?];
  [v4 setZoomScale:*(a1 + 40) animated:v3];
  [*(a1 + 32) _setEnabledInteractions:7];
}

- (void)zoomInOnLocationFromProvider:(id)a3 animated:(BOOL)a4
{
  v6 = a3;
  if (([(PUUserTransformView *)self enabledInteractions]& 2) != 0)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __61__PUUserTransformView_zoomInOnLocationFromProvider_animated___block_invoke;
    v7[3] = &unk_1E7B805E8;
    v7[4] = self;
    v8 = v6;
    v9 = a4;
    [(PUUserTransformView *)self _performZoomAndScrollChanges:v7];
  }
}

void __61__PUUserTransformView_zoomInOnLocationFromProvider_animated___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setHasUserZoomedIn:1];
  v18 = [*(a1 + 32) _scrollView];
  v2 = [*(a1 + 32) scrollContentView];
  v3 = *(a1 + 40);
  if (v3)
  {
    [v3 locationInView:v2];
  }

  else
  {
    [v18 bounds];
    PXRectGetCenter();
  }

  [*(a1 + 32) doubleTapZoomScale];
  v5 = v4;
  [v2 bounds];
  PXRectWithCenterAndSize();
  [v18 bounds];
  PURectGetAspectRatio(v6, v7, v8, v9);
  PXRectWithAspectRatioFillingRect();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  [*(a1 + 32) setDesiredZoomScale:v5];
  [v18 zoomToRect:*(a1 + 48) animated:{v11, v13, v15, v17}];
  [*(a1 + 32) _setEnabledInteractions:7];
}

- (void)toggleZoomWithLocationProvider:(id)a3
{
  v4 = a3;
  if ([(PUUserTransformView *)self hasUserZoomedIn])
  {
    [(PUUserTransformView *)self zoomInOnLocationFromProvider:v4];
  }

  else
  {
    [(PUUserTransformView *)self zoomOut:1];
  }
}

- (void)setOffset:(CGPoint)a3 animated:(BOOL)a4
{
  if (a3.x != self->_offset.x || a3.y != self->_offset.y)
  {
    v9 = v4;
    v10 = v5;
    self->_offset = a3;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __42__PUUserTransformView_setOffset_animated___block_invoke;
    v7[3] = &unk_1E7B7FF98;
    v7[4] = self;
    v8 = a4;
    [(PUUserTransformView *)self _performStateChanges:v7];
  }
}

uint64_t __42__PUUserTransformView_setOffset_animated___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _invalidateContentState];
  if (*(a1 + 40) == 1)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __42__PUUserTransformView_setOffset_animated___block_invoke_2;
    v4[3] = &unk_1E7B80DD0;
    v4[4] = *(a1 + 32);
    return [MEMORY[0x1E69DD250] animateWithDuration:v4 animations:0.3];
  }

  else
  {
    v3 = *(a1 + 32);

    return [v3 _updateScrollViewFrame];
  }
}

- (BOOL)contentContainsLocationFromProvider:(id)a3
{
  v4 = a3;
  v5 = [(PUUserTransformView *)self scrollContentView];
  if (v5)
  {
    [v4 locationInView:v5];
    v6 = [v5 pointInside:0 withEvent:?];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_updateScrollViewMinimumZoomScaleAndGoToMinimum:(BOOL)a3 animated:(BOOL)a4
{
  [(PUUserTransformView *)self minimumZoomScale];
  v8 = v7;
  v9 = [(PUUserTransformView *)self _scrollView];
  [v9 zoomScale];
  v11 = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __80__PUUserTransformView__updateScrollViewMinimumZoomScaleAndGoToMinimum_animated___block_invoke;
  aBlock[3] = &unk_1E7B7FA58;
  aBlock[4] = self;
  aBlock[5] = v8;
  v28 = a4;
  v12 = _Block_copy(aBlock);
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __80__PUUserTransformView__updateScrollViewMinimumZoomScaleAndGoToMinimum_animated___block_invoke_2;
  v24[3] = &unk_1E7B7FF70;
  v25 = v9;
  v26 = v8;
  v13 = v9;
  v14 = _Block_copy(v24);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __80__PUUserTransformView__updateScrollViewMinimumZoomScaleAndGoToMinimum_animated___block_invoke_3;
  v17[3] = &unk_1E7B7FAD0;
  v22 = a3;
  v20 = v8;
  v21 = v11;
  v23 = a4;
  v17[4] = self;
  v18 = v12;
  v19 = v14;
  v15 = v14;
  v16 = v12;
  [(PUUserTransformView *)self _performZoomAndScrollChanges:v17];
}

void __80__PUUserTransformView__updateScrollViewMinimumZoomScaleAndGoToMinimum_animated___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setDesiredZoomScale:*(a1 + 40)];
  v2 = *MEMORY[0x1E695EFF8];
  v3 = *(MEMORY[0x1E695EFF8] + 8);
  v4 = [*(a1 + 32) _scrollView];
  [v4 setContentOffset:{v2, v3}];

  v5 = [*(a1 + 32) _scrollView];
  [v5 setZoomScale:*(a1 + 48) animated:*(a1 + 40)];
}

void __80__PUUserTransformView__updateScrollViewMinimumZoomScaleAndGoToMinimum_animated___block_invoke_3(uint64_t a1)
{
  if ((*(a1 + 72) & 1) != 0 || ([*(a1 + 32) _scrollView], v2 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v2, "zoomScale"), v4 = v3, v5 = *(a1 + 56), v2, v4 < v5))
  {
    [*(a1 + 32) setHasUserZoomedIn:0];
    if (*(a1 + 56) <= *(a1 + 64))
    {
      (*(*(a1 + 48) + 16))();
      v8 = MEMORY[0x1E69DD250];
      if (*(a1 + 73) == 1)
      {
        v12[0] = MEMORY[0x1E69E9820];
        v12[1] = 3221225472;
        v12[2] = __80__PUUserTransformView__updateScrollViewMinimumZoomScaleAndGoToMinimum_animated___block_invoke_7;
        v12[3] = &unk_1E7B80C88;
        v13 = *(a1 + 40);
        [v8 animateWithDuration:2 delay:v12 options:0 animations:0.3 completion:0.0];
        v7 = v13;
      }

      else
      {
        v10[0] = MEMORY[0x1E69E9820];
        v10[1] = 3221225472;
        v10[2] = __80__PUUserTransformView__updateScrollViewMinimumZoomScaleAndGoToMinimum_animated___block_invoke_8;
        v10[3] = &unk_1E7B80C88;
        v11 = *(a1 + 40);
        [v8 performWithoutAnimation:v10];
        v7 = v11;
      }
    }

    else
    {
      v6 = MEMORY[0x1E69DD250];
      if (*(a1 + 73) == 1)
      {
        v19[0] = MEMORY[0x1E69E9820];
        v19[1] = 3221225472;
        v19[2] = __80__PUUserTransformView__updateScrollViewMinimumZoomScaleAndGoToMinimum_animated___block_invoke_4;
        v19[3] = &unk_1E7B80C88;
        v20 = *(a1 + 40);
        v17[0] = MEMORY[0x1E69E9820];
        v17[1] = 3221225472;
        v17[2] = __80__PUUserTransformView__updateScrollViewMinimumZoomScaleAndGoToMinimum_animated___block_invoke_5;
        v17[3] = &unk_1E7B7FA80;
        v18 = *(a1 + 48);
        [v6 animateWithDuration:2 delay:v19 options:v17 animations:0.3 completion:0.0];

        v7 = v20;
      }

      else
      {
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __80__PUUserTransformView__updateScrollViewMinimumZoomScaleAndGoToMinimum_animated___block_invoke_6;
        v14[3] = &unk_1E7B7FAA8;
        v15 = *(a1 + 40);
        v16 = *(a1 + 48);
        [v6 performWithoutAnimation:v14];

        v7 = v15;
      }
    }
  }

  else
  {
    v9 = *(*(a1 + 48) + 16);

    v9();
  }
}

uint64_t __80__PUUserTransformView__updateScrollViewMinimumZoomScaleAndGoToMinimum_animated___block_invoke_6(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)setMinimumZoomScale:(double)a3 animated:(BOOL)a4
{
  v4 = a4;
  if (a3 < 0.0)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"PUUserTransformView.m" lineNumber:177 description:{@"Invalid parameter not satisfying: %@", @"minimumZoomScale >= 0"}];
  }

  minimumZoomScale = self->_minimumZoomScale;
  if (minimumZoomScale != a3)
  {
    self->_minimumZoomScale = a3;
    v8 = [(PUUserTransformView *)self _scrollView];
    [v8 zoomScale];
    v10 = v9;

    [(PUUserTransformView *)self _updateScrollViewMinimumZoomScaleAndGoToMinimum:v10 == minimumZoomScale animated:v4];
  }
}

- (void)setScrollPadding:(CGSize)a3
{
  if (a3.width != self->_scrollPadding.width || a3.height != self->_scrollPadding.height)
  {
    v6[5] = v3;
    v6[6] = v4;
    self->_scrollPadding = a3;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __40__PUUserTransformView_setScrollPadding___block_invoke;
    v6[3] = &unk_1E7B80DD0;
    v6[4] = self;
    [(PUUserTransformView *)self _performStateChanges:v6];
  }
}

- (void)setEnabledInteractions:(unint64_t)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __46__PUUserTransformView_setEnabledInteractions___block_invoke;
  v3[3] = &unk_1E7B7FF70;
  v3[4] = self;
  v3[5] = a3;
  [(PUUserTransformView *)self _performZoomAndScrollChanges:v3];
}

- (void)setUserAffineTransform:(CGAffineTransform *)a3
{
  p_userAffineTransform = &self->_userAffineTransform;
  if ((PUAffineTransformIsApproximatelyEqualToTransform() & 1) == 0)
  {
    v6 = *&a3->a;
    v7 = *&a3->tx;
    *&p_userAffineTransform->c = *&a3->c;
    *&p_userAffineTransform->tx = v7;
    *&p_userAffineTransform->a = v6;

    [(PUUserTransformView *)self _invalidateScrollView];
  }
}

- (void)setUntransformedContentFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  p_untransformedContentFrame = &self->_untransformedContentFrame;
  if (!CGRectEqualToRect(a3, self->_untransformedContentFrame))
  {
    p_untransformedContentFrame->origin.x = x;
    p_untransformedContentFrame->origin.y = y;
    p_untransformedContentFrame->size.width = width;
    p_untransformedContentFrame->size.height = height;

    [(PUUserTransformView *)self _invalidateScrollView];
  }
}

- (void)setRequireTwoTouchesForPan:(BOOL)a3
{
  if (self->_requireTwoTouchesForPan != a3)
  {
    self->_requireTwoTouchesForPan = a3;
    [(PUUserTransformView *)self _invalidateScrollView];
  }
}

- (void)setContentPixelSize:(CGSize)a3
{
  if (a3.width != self->_contentPixelSize.width || a3.height != self->_contentPixelSize.height)
  {
    self->_contentPixelSize = a3;
    [(PUUserTransformView *)self _invalidateScrollView];
  }
}

- (void)setDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    p_delegateFlags = &self->_delegateFlags;
    p_delegateFlags->respondsToShouldReceiveTouchAtPoint = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->respondsToDidChangeIsUserInteracting = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->respondsToDidChangeIsZoomedIn = objc_opt_respondsToSelector() & 1;
  }
}

- (PUUserTransformView)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = PUUserTransformView;
  result = [(PUUserTransformView *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (result)
  {
    v4 = MEMORY[0x1E695EFD0];
    v5 = *(MEMORY[0x1E695EFD0] + 16);
    *&result->_userAffineTransform.a = *MEMORY[0x1E695EFD0];
    *&result->_userAffineTransform.c = v5;
    *&result->_userAffineTransform.tx = *(v4 + 32);
    result->_enabledInteractions = 7;
    result->__needsUpdateScrollView = 1;
    result->__preferredMinimumZoomScale = 1.0;
    result->__contentZoomScale = 1.0;
    preferredMinimumZoomScale = result->__preferredMinimumZoomScale;
    result->_desiredZoomScale = preferredMinimumZoomScale;
    result->_minimumZoomScale = preferredMinimumZoomScale;
    result->_scrollPocketsEnabled = 1;
  }

  return result;
}

+ (double)doubleTapZoomScaleForContentSize:(CGSize)a3 inBoundsSize:(CGSize)a4 defaultScale:(double)a5 preferToFillOnDoubleTap:(BOOL)a6
{
  width = a3.width;
  v7 = a4.width / a3.width;
  v8 = a4.height / a3.height;
  if (v7 >= a4.height / a3.height)
  {
    v8 = v7;
  }

  if (v8 <= a5)
  {
    result = a5;
  }

  else
  {
    result = v8;
  }

  if (a3.height != 0.0 && ((v10 = width / a3.height, v10 > 2.0) || v10 < 0.5) || a6)
  {
    if (v8 > 1.01)
    {
      return v8;
    }
  }

  return result;
}

@end