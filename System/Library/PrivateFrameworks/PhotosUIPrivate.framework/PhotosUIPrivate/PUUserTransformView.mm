@interface PUUserTransformView
+ (double)doubleTapZoomScaleForContentSize:(CGSize)size inBoundsSize:(CGSize)boundsSize defaultScale:(double)scale preferToFillOnDoubleTap:(BOOL)tap;
- (BOOL)_needsStateUpdate;
- (BOOL)contentContainsLocationFromProvider:(id)provider;
- (BOOL)isTrackingZoomGesture;
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (CGAffineTransform)userAffineTransform;
- (CGPoint)_contentCenter;
- (CGPoint)_contentOffsetAdjustmentForContentInsets:(UIEdgeInsets)insets;
- (CGPoint)offset;
- (CGRect)untransformedContentFrame;
- (CGRect)visibleRect;
- (CGSize)contentPixelSize;
- (CGSize)scrollPadding;
- (PUUserTransformView)initWithFrame:(CGRect)frame;
- (PUUserTransformViewDelegate)delegate;
- (UIEdgeInsets)_contentInsetsForContentScale:(double)scale;
- (double)_currentPresentationZoomScale;
- (double)doubleTapZoomScale;
- (double)fillZoomScale;
- (id)viewForZoomingInScrollView:(id)view;
- (void)_assertInsideStateChangeBlock;
- (void)_assertInsideStateUpdate;
- (void)_assertInsideZoomAndScrollChangeBlock;
- (void)_didChangeState;
- (void)_handleDisplayLink:(id)link;
- (void)_invalidateAnimatingZoomEnd;
- (void)_invalidateContentState;
- (void)_invalidateScrollView;
- (void)_invalidateShouldTrackContentAnimation;
- (void)_invalidateUserAffineTransform;
- (void)_invalidateUserInteracting;
- (void)_invalidateUserPanningOrDecelerating;
- (void)_invalidateUserZoomingOrBouncing;
- (void)_performStateChanges:(id)changes;
- (void)_performZoomAndScrollChanges:(id)changes;
- (void)_setAnimatingZoomEnd:(BOOL)end;
- (void)_setContentAnimating:(BOOL)animating;
- (void)_setContentCenter:(CGPoint)center;
- (void)_setContentZoomScale:(double)scale;
- (void)_setEnabledInteractions:(unint64_t)interactions;
- (void)_setNeedsStateUpdate;
- (void)_setPreferredMaximumZoomScale:(double)scale;
- (void)_setPreferredMinimumZoomScale:(double)scale;
- (void)_setShouldTrackContentAnimation:(BOOL)animation;
- (void)_setUpdatingScrollView:(BOOL)view;
- (void)_setUserAffineTransform:(CGAffineTransform *)transform;
- (void)_setUserDeceleratingPan:(BOOL)pan;
- (void)_setUserEndingZoom:(BOOL)zoom;
- (void)_setUserInteracting:(BOOL)interacting;
- (void)_setUserPanning:(BOOL)panning;
- (void)_setUserPanningOrDecelerating:(BOOL)decelerating;
- (void)_setUserZooming:(BOOL)zooming;
- (void)_setUserZoomingOrBouncing:(BOOL)bouncing;
- (void)_updateAnimatingZoomEndIfNeeded;
- (void)_updateContentStateIfNeeded;
- (void)_updateDisplayLink;
- (void)_updateEnabledInteractionsIfNeeded;
- (void)_updateScrollViewFrame;
- (void)_updateScrollViewIfNeeded;
- (void)_updateScrollViewMinimumZoomScaleAndGoToMinimum:(BOOL)minimum animated:(BOOL)animated;
- (void)_updateShouldTrackContentAnimationIfNeeded;
- (void)_updateStateIfNeeded;
- (void)_updateUserAffineTransformIfNeeded;
- (void)_updateUserInteractingIfNeeded;
- (void)_updateUserPanningOrDeceleratingIfNeeded;
- (void)_updateUserZoomingOrBouncingIfNeeded;
- (void)_updateZoomAndScrollIfNeeded;
- (void)_willChangeState;
- (void)layoutSubviews;
- (void)scrollViewDidEndDecelerating:(id)decelerating;
- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)scrollViewDidEndZooming:(id)zooming withView:(id)view atScale:(double)scale;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewDidZoom:(id)zoom;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)scrollViewWillBeginZooming:(id)zooming withView:(id)view;
- (void)setContentPixelSize:(CGSize)size;
- (void)setDebugScrollViewContentImage:(id)image;
- (void)setDelegate:(id)delegate;
- (void)setDesiredZoomScale:(double)scale;
- (void)setEnabledInteractions:(unint64_t)interactions;
- (void)setHasUserZoomedIn:(BOOL)in;
- (void)setHostedView:(id)view;
- (void)setMinimumZoomScale:(double)scale animated:(BOOL)animated;
- (void)setOffset:(CGPoint)offset animated:(BOOL)animated;
- (void)setRequireTwoTouchesForPan:(BOOL)pan;
- (void)setScrollPadding:(CGSize)padding;
- (void)setUntransformedContentFrame:(CGRect)frame;
- (void)setUserAffineTransform:(CGAffineTransform *)transform;
- (void)toggleZoomWithLocationProvider:(id)provider;
- (void)zoomInOnLocationFromProvider:(id)provider animated:(BOOL)animated;
- (void)zoomOut:(BOOL)out;
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

- (void)setHasUserZoomedIn:(BOOL)in
{
  if (self->_hasUserZoomedIn != in)
  {
    self->_hasUserZoomedIn = in;
    if (self->_delegateFlags.respondsToDidChangeIsZoomedIn)
    {
      delegate = [(PUUserTransformView *)self delegate];
      [delegate userTransformViewDidChangeIsZoomedIn:self];
    }
  }
}

- (CGRect)visibleRect
{
  _scrollView = [(PUUserTransformView *)self _scrollView];
  scrollContentView = [(PUUserTransformView *)self scrollContentView];
  if (![(PUUserTransformView *)self _isContentAnimating])
  {
    goto LABEL_6;
  }

  layer = [_scrollView layer];
  presentationLayer = [layer presentationLayer];

  layer2 = [scrollContentView layer];
  presentationLayer2 = [layer2 presentationLayer];

  if (!presentationLayer || !presentationLayer2)
  {

LABEL_6:
    [_scrollView bounds];
    [_scrollView convertRect:scrollContentView toView:?];
    v10 = v17;
    v12 = v18;
    v14 = v19;
    v16 = v20;
    goto LABEL_7;
  }

  [presentationLayer bounds];
  [presentationLayer convertRect:presentationLayer2 toLayer:?];
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

- (void)scrollViewDidEndZooming:(id)zooming withView:(id)view atScale:(double)scale
{
  zoomingCopy = zooming;
  _scrollView = [(PUUserTransformView *)self _scrollView];

  if (_scrollView != zoomingCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUUserTransformView.m" lineNumber:1195 description:{@"Invalid parameter not satisfying: %@", @"scrollView == [self _scrollView]"}];
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

- (void)scrollViewWillBeginZooming:(id)zooming withView:(id)view
{
  zoomingCopy = zooming;
  _scrollView = [(PUUserTransformView *)self _scrollView];

  if (_scrollView != zoomingCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUUserTransformView.m" lineNumber:1187 description:{@"Invalid parameter not satisfying: %@", @"scrollView == [self _scrollView]"}];
  }

  date = [MEMORY[0x1E695DF00] date];
  [(PUUserTransformView *)self setZoomStartDate:date];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __59__PUUserTransformView_scrollViewWillBeginZooming_withView___block_invoke;
  v10[3] = &unk_1E7B80DD0;
  v10[4] = self;
  [(PUUserTransformView *)self _performStateChanges:v10];
}

- (void)scrollViewDidEndDecelerating:(id)decelerating
{
  deceleratingCopy = decelerating;
  _scrollView = [(PUUserTransformView *)self _scrollView];

  if (_scrollView != deceleratingCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUUserTransformView.m" lineNumber:1180 description:{@"Invalid parameter not satisfying: %@", @"scrollView == [self _scrollView]"}];
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __52__PUUserTransformView_scrollViewDidEndDecelerating___block_invoke;
  v8[3] = &unk_1E7B80DD0;
  v8[4] = self;
  [(PUUserTransformView *)self _performStateChanges:v8];
}

- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  draggingCopy = dragging;
  _scrollView = [(PUUserTransformView *)self _scrollView];

  if (_scrollView != draggingCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUUserTransformView.m" lineNumber:1172 description:{@"Invalid parameter not satisfying: %@", @"scrollView == [self _scrollView]"}];
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __63__PUUserTransformView_scrollViewDidEndDragging_willDecelerate___block_invoke;
  v10[3] = &unk_1E7B7FF98;
  v10[4] = self;
  decelerateCopy = decelerate;
  [(PUUserTransformView *)self _performStateChanges:v10];
}

uint64_t __63__PUUserTransformView_scrollViewDidEndDragging_willDecelerate___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _setUserPanning:0];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 _setUserDeceleratingPan:v3];
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  draggingCopy = dragging;
  _scrollView = [(PUUserTransformView *)self _scrollView];

  if (_scrollView != draggingCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUUserTransformView.m" lineNumber:1165 description:{@"Invalid parameter not satisfying: %@", @"scrollView == [self _scrollView]"}];
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __51__PUUserTransformView_scrollViewWillBeginDragging___block_invoke;
  v8[3] = &unk_1E7B80DD0;
  v8[4] = self;
  [(PUUserTransformView *)self _performStateChanges:v8];
}

- (void)scrollViewDidZoom:(id)zoom
{
  zoomCopy = zoom;
  _scrollView = [(PUUserTransformView *)self _scrollView];

  if (_scrollView != zoomCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUUserTransformView.m" lineNumber:1158 description:{@"Invalid parameter not satisfying: %@", @"scrollView == [self _scrollView]"}];
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __41__PUUserTransformView_scrollViewDidZoom___block_invoke;
  v8[3] = &unk_1E7B80DD0;
  v8[4] = self;
  [(PUUserTransformView *)self _performStateChanges:v8];
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  _scrollView = [(PUUserTransformView *)self _scrollView];

  if (_scrollView != scrollCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUUserTransformView.m" lineNumber:1151 description:{@"Invalid parameter not satisfying: %@", @"scrollView == [self _scrollView]"}];
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __43__PUUserTransformView_scrollViewDidScroll___block_invoke;
  v8[3] = &unk_1E7B80DD0;
  v8[4] = self;
  [(PUUserTransformView *)self _performStateChanges:v8];
}

- (id)viewForZoomingInScrollView:(id)view
{
  viewCopy = view;
  _scrollView = [(PUUserTransformView *)self _scrollView];

  if (_scrollView != viewCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUUserTransformView.m" lineNumber:1145 description:{@"Invalid parameter not satisfying: %@", @"scrollView == [self _scrollView]"}];
  }

  return [(PUUserTransformView *)self scrollContentView];
}

- (void)_handleDisplayLink:(id)link
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
  _shouldTrackContentAnimation = [(PUUserTransformView *)self _shouldTrackContentAnimation];
  _displayLink = [(PUUserTransformView *)self _displayLink];
  v5 = _displayLink;
  if (_shouldTrackContentAnimation)
  {
    if (!_displayLink)
    {
      v5 = [MEMORY[0x1E6979330] displayLinkWithTarget:self selector:sel__handleDisplayLink_];
      if ([MEMORY[0x1E69C44C8] highFramerateRequiresReasonAndRange])
      {
        [v5 setHighFrameRateReason:2228225];
        PXFrameRateRangeTypeGetCAFrameRateRange();
        [v5 setPreferredFrameRateRange:?];
      }

      currentRunLoop = [MEMORY[0x1E695DFD0] currentRunLoop];
      [v5 addToRunLoop:currentRunLoop forMode:*MEMORY[0x1E695D918]];

      [(PUUserTransformView *)self _setDisplayLink:v5];
      v7 = PLOneUpGetLog();
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_11;
      }

      v9 = 134217984;
      selfCopy2 = self;
      v8 = "%p starting display link";
      goto LABEL_10;
    }
  }

  else if (_displayLink)
  {
    [_displayLink invalidate];
    [(PUUserTransformView *)self _setDisplayLink:0];
    v7 = PLOneUpGetLog();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
LABEL_11:

      goto LABEL_12;
    }

    v9 = 134217984;
    selfCopy2 = self;
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

- (void)setHostedView:(id)view
{
  viewCopy = view;
  hostedView = self->_hostedView;
  v8 = viewCopy;
  if (hostedView != viewCopy)
  {
    [(UIView *)hostedView removeFromSuperview];
    objc_storeStrong(&self->_hostedView, view);
    if (self->_hostedView)
    {
      scrollContentView = [(PUUserTransformView *)self scrollContentView];
      [scrollContentView bounds];
      [(UIView *)self->_hostedView setFrame:?];
      [scrollContentView addSubview:self->_hostedView];
    }
  }
}

- (void)_setUpdatingScrollView:(BOOL)view
{
  if (self->__updatingScrollView != view)
  {
    self->__updatingScrollView = view;
    if (!view)
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
      _isUpdatingScrollView = [(PUUserTransformView *)self _isUpdatingScrollView];
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
      useDebuggingColors = [v20 useDebuggingColors];

      _scrollView = [(PUUserTransformView *)self _scrollView];
      v23 = _scrollView;
      if (!_scrollView)
      {
        v23 = [[_PUUserTransformScrollView alloc] initWithFrame:v5, v7, v9, v11];
        [(_PUUserTransformScrollView *)v23 setScrollsToTop:0];
        [(_PUUserTransformScrollView *)v23 setDecelerationRate:*MEMORY[0x1E69DE3A0]];
        [(_PUUserTransformScrollView *)v23 setPreservesCenterDuringRotation:1];
        [(_PUUserTransformScrollView *)v23 setShowsHorizontalScrollIndicator:0];
        [(_PUUserTransformScrollView *)v23 setShowsVerticalScrollIndicator:0];
        [(_PUUserTransformScrollView *)v23 setDelegate:self];
        if (useDebuggingColors)
        {
          layer = [(_PUUserTransformScrollView *)v23 layer];
          blueColor = [MEMORY[0x1E69DC888] blueColor];
          [layer setBorderColor:{objc_msgSend(blueColor, "CGColor")}];

          layer2 = [(_PUUserTransformScrollView *)v23 layer];
          [layer2 setBorderWidth:2.0];
        }

        [(PUUserTransformView *)self addSubview:v23];
        objc_storeStrong(&self->__scrollView, v23);
      }

      v81 = v11;
      v82 = v9;
      v27 = v5;
      v78 = v7;
      [(PUUserTransformView *)self _updateScrollViewFrame];
      scrollContentView = [(PUUserTransformView *)self scrollContentView];
      v29 = MEMORY[0x1E695EFF8];
      if (!scrollContentView)
      {
        v30 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), v16, v18}];
        scrollContentView = v30;
        if (useDebuggingColors)
        {
          layer3 = [v30 layer];
          purpleColor = [MEMORY[0x1E69DC888] purpleColor];
          [layer3 setBorderColor:{objc_msgSend(purpleColor, "CGColor")}];

          layer4 = [scrollContentView layer];
          [layer4 setBorderWidth:5.0];
        }

        [(_PUUserTransformScrollView *)v23 addSubview:scrollContentView];
        objc_storeStrong(&self->_scrollContentView, scrollContentView);
        debugScrollViewContentImage = [(PUUserTransformView *)self debugScrollViewContentImage];
        layer5 = [scrollContentView layer];
        [layer5 setContents:{objc_msgSend(debugScrollViewContentImage, "CGImage")}];

        hostedView = [(PUUserTransformView *)self hostedView];
        if (hostedView)
        {
          [scrollContentView bounds];
          [(UIView *)self->_hostedView setFrame:?];
          [scrollContentView addSubview:self->_hostedView];
          if (useDebuggingColors)
          {
            greenColor = [MEMORY[0x1E69DC888] greenColor];
            cGColor = [greenColor CGColor];
            [hostedView layer];
            v76 = _scrollView;
            v40 = v39 = _isUpdatingScrollView;
            [v40 setBorderColor:cGColor];

            _isUpdatingScrollView = v39;
            _scrollView = v76;
            v41 = 1.0;
          }

          else
          {
            greenColor = [hostedView layer];
            [greenColor setBorderColor:0];
            v41 = 0.0;
          }

          layer6 = [hostedView layer];
          [layer6 setBorderWidth:v41];
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
      v65 = _scrollView;
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
      v84 = _isUpdatingScrollView;
      [(PUUserTransformView *)self _performStateChanges:v83];
      if ([(PUUserTransformView *)self requireTwoTouchesForPan])
      {
        panGestureRecognizer = [(_PUUserTransformScrollView *)v23 panGestureRecognizer];
        [panGestureRecognizer setMinimumNumberOfTouches:2];
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

- (CGPoint)_contentOffsetAdjustmentForContentInsets:(UIEdgeInsets)insets
{
  left = insets.left;
  top = insets.top;
  [(PUUserTransformView *)self scrollPadding:insets.top];
  v7 = v5 * 0.5 - left;
  v8 = v6 * 0.5 - top;
  result.y = v8;
  result.x = v7;
  return result;
}

- (BOOL)isTrackingZoomGesture
{
  _scrollView = [(PUUserTransformView *)self _scrollView];
  isZooming = [_scrollView isZooming];

  return isZooming;
}

- (UIEdgeInsets)_contentInsetsForContentScale:(double)scale
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
    v11 = v10 * scale;
    v13 = v12 * scale;
    _scrollView = [(PUUserTransformView *)self _scrollView];
    [_scrollView bounds];
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
      enabledInteractions = [(PUUserTransformView *)self enabledInteractions];
      v4[0] = MEMORY[0x1E69E9820];
      v4[1] = 3221225472;
      v4[2] = __51__PUUserTransformView__updateZoomAndScrollIfNeeded__block_invoke;
      v4[3] = &unk_1E7B7FAF8;
      v4[4] = self;
      v5 = enabledInteractions & 1;
      v6 = (enabledInteractions & 4) != 0;
      v7 = (enabledInteractions & 2) != 0;
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
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUUserTransformView.m" lineNumber:843 description:@"not within a zoom and scroll change block"];
  }
}

- (void)_setPreferredMaximumZoomScale:(double)scale
{
  [(PUUserTransformView *)self _assertInsideZoomAndScrollChangeBlock];
  if (self->__preferredMaximumZoomScale != scale)
  {
    self->__preferredMaximumZoomScale = scale;

    [(PUUserTransformView *)self _invalidateZoomAndScroll];
  }
}

- (void)_setPreferredMinimumZoomScale:(double)scale
{
  [(PUUserTransformView *)self _assertInsideZoomAndScrollChangeBlock];
  if (self->__preferredMinimumZoomScale != scale)
  {
    self->__preferredMinimumZoomScale = scale;

    [(PUUserTransformView *)self _invalidateZoomAndScroll];
  }
}

- (void)setDesiredZoomScale:(double)scale
{
  [(PUUserTransformView *)self _assertInsideZoomAndScrollChangeBlock];
  if (self->_desiredZoomScale != scale)
  {
    self->_desiredZoomScale = scale;

    [(PUUserTransformView *)self _invalidateZoomAndScroll];
  }
}

- (void)_setEnabledInteractions:(unint64_t)interactions
{
  [(PUUserTransformView *)self _assertInsideZoomAndScrollChangeBlock];
  if (self->_enabledInteractions != interactions)
  {
    self->_enabledInteractions = interactions;

    [(PUUserTransformView *)self _invalidateZoomAndScroll];
  }
}

- (void)_performZoomAndScrollChanges:(id)changes
{
  changesCopy = changes;
  if (!changesCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUUserTransformView.m" lineNumber:789 description:{@"Invalid parameter not satisfying: %@", @"changeBlock"}];
  }

  _numberOfNestedZoomAndScrollChanges = [(PUUserTransformView *)self _numberOfNestedZoomAndScrollChanges];
  [(PUUserTransformView *)self _setNumberOfNestedZoomAndScrollChanges:_numberOfNestedZoomAndScrollChanges + 1];
  changesCopy[2]();
  [(PUUserTransformView *)self _setNumberOfNestedZoomAndScrollChanges:_numberOfNestedZoomAndScrollChanges];
  if (!_numberOfNestedZoomAndScrollChanges)
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
    _isContentAnimating = [(PUUserTransformView *)self _isContentAnimating];
    _isUserEndingZoom = 0;
    if (_isContentAnimating)
    {
      _isUserEndingZoom = [(PUUserTransformView *)self _isUserEndingZoom];
    }

    [(PUUserTransformView *)self _setAnimatingZoomEnd:_isUserEndingZoom];
  }
}

- (void)_invalidateAnimatingZoomEnd
{
  [(PUUserTransformView *)self _setNeedsUpdateAnimatingZoomEnd:1];

  [(PUUserTransformView *)self _setNeedsStateUpdate];
}

- (double)_currentPresentationZoomScale
{
  scrollContentView = [(PUUserTransformView *)self scrollContentView];
  layer = [scrollContentView layer];

  presentationLayer = [layer presentationLayer];
  _scrollView = [(PUUserTransformView *)self _scrollView];
  layer2 = [_scrollView layer];

  if (layer)
  {
    [layer transform];
    v8 = *&v25;
    if (presentationLayer)
    {
LABEL_3:
      [presentationLayer transform];
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
    if (presentationLayer)
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
  animationKeys = [layer animationKeys];
  if (![animationKeys count])
  {
    animationKeys2 = [presentationLayer animationKeys];
    if (![animationKeys2 count])
    {
      animationKeys3 = [layer2 animationKeys];
      if (![animationKeys3 count])
      {
        presentationLayer2 = [layer2 presentationLayer];
        animationKeys4 = [presentationLayer2 animationKeys];
        v16 = [animationKeys4 count];

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
  scrollContentView = [(PUUserTransformView *)self scrollContentView];

  if (!scrollContentView)
  {
    return;
  }

  layer = [(PUUserTransformView *)self layer];
  scrollContentView2 = [(PUUserTransformView *)self scrollContentView];
  layer2 = [scrollContentView2 layer];

  presentationLayer = [layer2 presentationLayer];
  v8 = presentationLayer;
  if (presentationLayer)
  {
    v9 = presentationLayer;
  }

  else
  {
    v9 = layer2;
  }

  v10 = v9;

  _scrollView = [(PUUserTransformView *)self _scrollView];
  layer3 = [_scrollView layer];

  [layer2 bounds];
  PXRectGetCenter();
  [layer convertPoint:layer2 fromLayer:?];
  v14 = v13;
  v16 = v15;
  [v10 bounds];
  PXRectGetCenter();
  [layer convertPoint:v10 fromLayer:?];
  v18 = v17;
  v20 = v19;
  if (!layer2)
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

  [layer2 transform];
  v21 = v39;
  if (!v10)
  {
    goto LABEL_10;
  }

LABEL_8:
  [v10 transform];
  v22 = v38;
LABEL_11:
  animationKeys = [layer2 animationKeys];
  if ([animationKeys count])
  {

    [(PUUserTransformView *)self _setContentAnimating:1];
  }

  else
  {
    animationKeys2 = [v10 animationKeys];
    if ([animationKeys2 count])
    {
      v25 = 1;
    }

    else
    {
      animationKeys3 = [layer3 animationKeys];
      if ([animationKeys3 count])
      {
        v25 = 1;
      }

      else
      {
        presentationLayer2 = [layer3 presentationLayer];
        animationKeys4 = [presentationLayer2 animationKeys];
        v25 = [animationKeys4 count] != 0;
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
  _scrollView2 = [(PUUserTransformView *)self _scrollView];
  [_scrollView2 setContentInset:{v29, v31, v33, v35}];
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
    _isContentAnimating = [(PUUserTransformView *)self _isContentAnimating];

    [(PUUserTransformView *)self _setShouldTrackContentAnimation:_isContentAnimating];
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
    _isUserZoomingOrBouncing = [(PUUserTransformView *)self _isUserPanningOrDecelerating]|| [(PUUserTransformView *)self _isUserZoomingOrBouncing];

    [(PUUserTransformView *)self _setUserInteracting:_isUserZoomingOrBouncing];
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
    _isAnimatingZoomEnd = [(PUUserTransformView *)self _isUserZooming]|| [(PUUserTransformView *)self _isUserEndingZoom]|| [(PUUserTransformView *)self _isAnimatingZoomEnd];

    [(PUUserTransformView *)self _setUserZoomingOrBouncing:_isAnimatingZoomEnd];
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
    _isUserDeceleratingPan = [(PUUserTransformView *)self _isUserPanning]|| [(PUUserTransformView *)self _isUserDeceleratingPan];

    [(PUUserTransformView *)self _setUserPanningOrDecelerating:_isUserDeceleratingPan];
  }
}

- (void)_invalidateUserPanningOrDecelerating
{
  [(PUUserTransformView *)self _setNeedsUpdateUserPanningOrDecelerating:1];

  [(PUUserTransformView *)self _setNeedsStateUpdate];
}

- (void)_setUserAffineTransform:(CGAffineTransform *)transform
{
  v18 = *MEMORY[0x1E69E9840];
  [(PUUserTransformView *)self _assertInsideStateUpdate];
  v5 = *&transform->c;
  *&t1.a = *&transform->a;
  *&t1.c = v5;
  *&t1.tx = *&transform->tx;
  v6 = *&self->_userAffineTransform.c;
  *&v16.a = *&self->_userAffineTransform.a;
  *&v16.c = v6;
  *&v16.tx = *&self->_userAffineTransform.tx;
  if (!CGAffineTransformEqualToTransform(&t1, &v16))
  {
    v7 = *&transform->a;
    v8 = *&transform->tx;
    *&self->_userAffineTransform.c = *&transform->c;
    *&self->_userAffineTransform.tx = v8;
    *&self->_userAffineTransform.a = v7;
    v9 = PLOneUpGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = *&transform->c;
      *&t1.a = *&transform->a;
      *&t1.c = v10;
      *&t1.tx = *&transform->tx;
      v11 = NSStringFromCGAffineTransform(&t1);
      LODWORD(t1.a) = 134218242;
      *(&t1.a + 4) = self;
      WORD2(t1.b) = 2112;
      *(&t1.b + 6) = v11;
      _os_log_impl(&dword_1B36F3000, v9, OS_LOG_TYPE_DEBUG, "%p userAffineTransform=%@", &t1, 0x16u);
    }

    isUserInteracting = [(PUUserTransformView *)self isUserInteracting];
    v13 = [(PUUserTransformView *)self _wasUserInteractingBeforeStateUpdate]|| isUserInteracting;
    delegate = [(PUUserTransformView *)self delegate];
    v15 = *&transform->c;
    *&t1.a = *&transform->a;
    *&t1.c = v15;
    *&t1.tx = *&transform->tx;
    [delegate userTransformView:self didChangeUserAffineTransform:&t1 isUserInteracting:v13 & 1];
  }
}

- (void)_setAnimatingZoomEnd:(BOOL)end
{
  endCopy = end;
  v10 = *MEMORY[0x1E69E9840];
  [(PUUserTransformView *)self _assertInsideStateUpdate];
  if (self->__isAnimatingZoomEnd != endCopy)
  {
    self->__isAnimatingZoomEnd = endCopy;
    v5 = PLOneUpGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 134218240;
      selfCopy = self;
      v8 = 1024;
      v9 = endCopy;
      _os_log_impl(&dword_1B36F3000, v5, OS_LOG_TYPE_DEFAULT, "%p isAnimatingZoomEnd=%i", &v6, 0x12u);
    }

    [(PUUserTransformView *)self _invalidateUserZoomingOrBouncing];
  }
}

- (void)_setContentZoomScale:(double)scale
{
  v13 = *MEMORY[0x1E69E9840];
  [(PUUserTransformView *)self _assertInsideStateUpdate];
  if (self->__contentZoomScale != scale)
  {
    _scrollView = [(PUUserTransformView *)self _scrollView];
    isZooming = [_scrollView isZooming];

    if (isZooming)
    {
      [(PUUserTransformView *)self minimumZoomScale];
      [(PUUserTransformView *)self setHasUserZoomedIn:v7 < scale];
    }

    self->__contentZoomScale = scale;
    v8 = PLOneUpGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = 134218240;
      selfCopy = self;
      v11 = 2048;
      scaleCopy = scale;
      _os_log_impl(&dword_1B36F3000, v8, OS_LOG_TYPE_DEBUG, "%p contentZoomScale=%f", &v9, 0x16u);
    }

    [(PUUserTransformView *)self _invalidateUserAffineTransform];
  }
}

- (void)_setContentCenter:(CGPoint)center
{
  y = center.y;
  x = center.x;
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
      selfCopy = self;
      v11 = 2112;
      v12 = v8;
      _os_log_impl(&dword_1B36F3000, v7, OS_LOG_TYPE_DEBUG, "%p contentCenter=%@", &v9, 0x16u);
    }

    [(PUUserTransformView *)self _invalidateUserAffineTransform];
  }
}

- (void)_setContentAnimating:(BOOL)animating
{
  animatingCopy = animating;
  v10 = *MEMORY[0x1E69E9840];
  [(PUUserTransformView *)self _assertInsideStateUpdate];
  if (self->__isContentAnimating != animatingCopy)
  {
    self->__isContentAnimating = animatingCopy;
    v5 = PLOneUpGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 134218240;
      selfCopy = self;
      v8 = 1024;
      v9 = animatingCopy;
      _os_log_impl(&dword_1B36F3000, v5, OS_LOG_TYPE_DEFAULT, "%p isContentAnimating=%i", &v6, 0x12u);
    }

    [(PUUserTransformView *)self _invalidateAnimatingZoomEnd];
    [(PUUserTransformView *)self _invalidateShouldTrackContentAnimation];
  }
}

- (void)_setShouldTrackContentAnimation:(BOOL)animation
{
  animationCopy = animation;
  v10 = *MEMORY[0x1E69E9840];
  [(PUUserTransformView *)self _assertInsideStateUpdate];
  if (self->__shouldTrackContentAnimation != animationCopy)
  {
    self->__shouldTrackContentAnimation = animationCopy;
    v5 = PLOneUpGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 134218240;
      selfCopy = self;
      v8 = 1024;
      v9 = animationCopy;
      _os_log_impl(&dword_1B36F3000, v5, OS_LOG_TYPE_DEFAULT, "%p shouldTrackContentAnimation=%i", &v6, 0x12u);
    }

    [(PUUserTransformView *)self _updateDisplayLink];
  }
}

- (void)_setUserInteracting:(BOOL)interacting
{
  interactingCopy = interacting;
  v11 = *MEMORY[0x1E69E9840];
  [(PUUserTransformView *)self _assertInsideStateUpdate];
  if (self->_isUserInteracting != interactingCopy)
  {
    self->_isUserInteracting = interactingCopy;
    v5 = PLOneUpGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 134218240;
      selfCopy = self;
      v9 = 1024;
      v10 = interactingCopy;
      _os_log_impl(&dword_1B36F3000, v5, OS_LOG_TYPE_DEFAULT, "%p isUserInteracting=%i", &v7, 0x12u);
    }

    [(PUUserTransformView *)self _invalidateUserAffineTransform];
    if (self->_delegateFlags.respondsToDidChangeIsUserInteracting)
    {
      delegate = [(PUUserTransformView *)self delegate];
      [delegate userTransformView:self didChangeIsUserInteracting:interactingCopy];
    }
  }
}

- (void)_setUserZoomingOrBouncing:(BOOL)bouncing
{
  bouncingCopy = bouncing;
  v10 = *MEMORY[0x1E69E9840];
  [(PUUserTransformView *)self _assertInsideStateUpdate];
  if (self->__isUserZoomingOrBouncing != bouncingCopy)
  {
    self->__isUserZoomingOrBouncing = bouncingCopy;
    v5 = PLOneUpGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 134218240;
      selfCopy = self;
      v8 = 1024;
      v9 = bouncingCopy;
      _os_log_impl(&dword_1B36F3000, v5, OS_LOG_TYPE_DEFAULT, "%p isUserZoomingOrBouncing=%i", &v6, 0x12u);
    }

    [(PUUserTransformView *)self _invalidateUserInteracting];
  }
}

- (void)_setUserPanningOrDecelerating:(BOOL)decelerating
{
  deceleratingCopy = decelerating;
  v10 = *MEMORY[0x1E69E9840];
  [(PUUserTransformView *)self _assertInsideStateUpdate];
  if (self->__isUserPanningOrDecelerating != deceleratingCopy)
  {
    self->__isUserPanningOrDecelerating = deceleratingCopy;
    v5 = PLOneUpGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 134218240;
      selfCopy = self;
      v8 = 1024;
      v9 = deceleratingCopy;
      _os_log_impl(&dword_1B36F3000, v5, OS_LOG_TYPE_DEFAULT, "%p isUserPanningOrDecelerating=%i", &v6, 0x12u);
    }

    [(PUUserTransformView *)self _invalidateUserInteracting];
  }
}

- (void)_setUserEndingZoom:(BOOL)zoom
{
  zoomCopy = zoom;
  v10 = *MEMORY[0x1E69E9840];
  [(PUUserTransformView *)self _assertInsideStateChangeBlock];
  if (self->__isUserEndingZoom != zoomCopy)
  {
    self->__isUserEndingZoom = zoomCopy;
    v5 = PLOneUpGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 134218240;
      selfCopy = self;
      v8 = 1024;
      v9 = zoomCopy;
      _os_log_impl(&dword_1B36F3000, v5, OS_LOG_TYPE_DEFAULT, "%p isUserEndingZoom=%i", &v6, 0x12u);
    }

    [(PUUserTransformView *)self _invalidateUserZoomingOrBouncing];
    if (zoomCopy)
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

- (void)_setUserZooming:(BOOL)zooming
{
  zoomingCopy = zooming;
  v10 = *MEMORY[0x1E69E9840];
  [(PUUserTransformView *)self _assertInsideStateChangeBlock];
  if (self->__isUserZooming != zoomingCopy)
  {
    self->__isUserZooming = zoomingCopy;
    v5 = PLOneUpGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 134218240;
      selfCopy = self;
      v8 = 1024;
      v9 = zoomingCopy;
      _os_log_impl(&dword_1B36F3000, v5, OS_LOG_TYPE_DEFAULT, "%p isUserZooming=%i", &v6, 0x12u);
    }

    [(PUUserTransformView *)self _invalidateUserZoomingOrBouncing];
    if (zoomingCopy)
    {
      [(PUUserTransformView *)self _invalidateEnabledInteractions];
    }
  }
}

- (void)_setUserDeceleratingPan:(BOOL)pan
{
  panCopy = pan;
  v10 = *MEMORY[0x1E69E9840];
  [(PUUserTransformView *)self _assertInsideStateChangeBlock];
  if (self->__isUserDeceleratingPan != panCopy)
  {
    self->__isUserDeceleratingPan = panCopy;
    v5 = PLOneUpGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 134218240;
      selfCopy = self;
      v8 = 1024;
      v9 = panCopy;
      _os_log_impl(&dword_1B36F3000, v5, OS_LOG_TYPE_DEFAULT, "%p isUserDeceleratingPan=%i", &v6, 0x12u);
    }

    [(PUUserTransformView *)self _invalidateUserPanningOrDecelerating];
  }
}

- (void)_setUserPanning:(BOOL)panning
{
  panningCopy = panning;
  v10 = *MEMORY[0x1E69E9840];
  [(PUUserTransformView *)self _assertInsideStateChangeBlock];
  if (self->__isUserPanning != panningCopy)
  {
    self->__isUserPanning = panningCopy;
    v5 = PLOneUpGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 134218240;
      selfCopy = self;
      v8 = 1024;
      v9 = panningCopy;
      _os_log_impl(&dword_1B36F3000, v5, OS_LOG_TYPE_DEFAULT, "%p isUserPanning=%i", &v6, 0x12u);
    }

    [(PUUserTransformView *)self _invalidateUserPanningOrDecelerating];
  }
}

- (void)_setNeedsStateUpdate
{
  if (![(PUUserTransformView *)self _isUpdatingState]&& [(PUUserTransformView *)self _numberOfNestedStateChanges]<= 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUUserTransformView.m" lineNumber:443 description:@"not within a state update or change block"];
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
      _isUpdatingState = [(PUUserTransformView *)self _isUpdatingState];
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
      [(PUUserTransformView *)self _setUpdatingState:_isUpdatingState];
      if ([(PUUserTransformView *)self _needsStateUpdate])
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"PUUserTransformView.m" lineNumber:425 description:@"state updates still needed after an update cycle"];
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

- (void)_performStateChanges:(id)changes
{
  changesCopy = changes;
  if (!changesCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUUserTransformView.m" lineNumber:379 description:{@"Invalid parameter not satisfying: %@", @"changeBlock"}];
  }

  [(PUUserTransformView *)self _willChangeState];
  changesCopy[2]();
  [(PUUserTransformView *)self _didChangeState];
}

- (void)_assertInsideStateUpdate
{
  if (![(PUUserTransformView *)self _isUpdatingState])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUUserTransformView.m" lineNumber:375 description:@"not within a state update"];
  }
}

- (void)_assertInsideStateChangeBlock
{
  if ([(PUUserTransformView *)self _numberOfNestedStateChanges]<= 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUUserTransformView.m" lineNumber:370 description:@"not within a state change block"];
  }
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  v10.receiver = self;
  v10.super_class = PUUserTransformView;
  if (![(PUUserTransformView *)&v10 pointInside:event withEvent:?])
  {
    return 0;
  }

  if (!self->_delegateFlags.respondsToShouldReceiveTouchAtPoint)
  {
    return 1;
  }

  delegate = [(PUUserTransformView *)self delegate];
  v8 = [delegate userTransformView:self shouldReceiveTouchAtPoint:{x, y}];

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
  _scrollView = [(PUUserTransformView *)self _scrollView];
  layer = [_scrollView layer];
  [layer setPosition:{v4, v6}];
}

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = PUUserTransformView;
  [(PUUserTransformView *)&v13 layoutSubviews];
  [(PUUserTransformView *)self _updateScrollViewFrame];
  _scrollView = [(PUUserTransformView *)self _scrollView];
  [_scrollView bounds];
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

- (void)setDebugScrollViewContentImage:(id)image
{
  imageCopy = image;
  if (self->_debugScrollViewContentImage != imageCopy)
  {
    v6 = imageCopy;
    objc_storeStrong(&self->_debugScrollViewContentImage, image);
    [(PUUserTransformView *)self _invalidateScrollView];
    imageCopy = v6;
  }
}

- (void)zoomOut:(BOOL)out
{
  if (([(PUUserTransformView *)self enabledInteractions]& 4) != 0)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __31__PUUserTransformView_zoomOut___block_invoke;
    v5[3] = &unk_1E7B7FF98;
    v5[4] = self;
    outCopy = out;
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

- (void)zoomInOnLocationFromProvider:(id)provider animated:(BOOL)animated
{
  providerCopy = provider;
  if (([(PUUserTransformView *)self enabledInteractions]& 2) != 0)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __61__PUUserTransformView_zoomInOnLocationFromProvider_animated___block_invoke;
    v7[3] = &unk_1E7B805E8;
    v7[4] = self;
    v8 = providerCopy;
    animatedCopy = animated;
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

- (void)toggleZoomWithLocationProvider:(id)provider
{
  providerCopy = provider;
  if ([(PUUserTransformView *)self hasUserZoomedIn])
  {
    [(PUUserTransformView *)self zoomInOnLocationFromProvider:providerCopy];
  }

  else
  {
    [(PUUserTransformView *)self zoomOut:1];
  }
}

- (void)setOffset:(CGPoint)offset animated:(BOOL)animated
{
  if (offset.x != self->_offset.x || offset.y != self->_offset.y)
  {
    v9 = v4;
    v10 = v5;
    self->_offset = offset;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __42__PUUserTransformView_setOffset_animated___block_invoke;
    v7[3] = &unk_1E7B7FF98;
    v7[4] = self;
    animatedCopy = animated;
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

- (BOOL)contentContainsLocationFromProvider:(id)provider
{
  providerCopy = provider;
  scrollContentView = [(PUUserTransformView *)self scrollContentView];
  if (scrollContentView)
  {
    [providerCopy locationInView:scrollContentView];
    v6 = [scrollContentView pointInside:0 withEvent:?];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_updateScrollViewMinimumZoomScaleAndGoToMinimum:(BOOL)minimum animated:(BOOL)animated
{
  [(PUUserTransformView *)self minimumZoomScale];
  v8 = v7;
  _scrollView = [(PUUserTransformView *)self _scrollView];
  [_scrollView zoomScale];
  v11 = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __80__PUUserTransformView__updateScrollViewMinimumZoomScaleAndGoToMinimum_animated___block_invoke;
  aBlock[3] = &unk_1E7B7FA58;
  aBlock[4] = self;
  aBlock[5] = v8;
  animatedCopy = animated;
  v12 = _Block_copy(aBlock);
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __80__PUUserTransformView__updateScrollViewMinimumZoomScaleAndGoToMinimum_animated___block_invoke_2;
  v24[3] = &unk_1E7B7FF70;
  v25 = _scrollView;
  v26 = v8;
  v13 = _scrollView;
  v14 = _Block_copy(v24);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __80__PUUserTransformView__updateScrollViewMinimumZoomScaleAndGoToMinimum_animated___block_invoke_3;
  v17[3] = &unk_1E7B7FAD0;
  minimumCopy = minimum;
  v20 = v8;
  v21 = v11;
  animatedCopy2 = animated;
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

- (void)setMinimumZoomScale:(double)scale animated:(BOOL)animated
{
  animatedCopy = animated;
  if (scale < 0.0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUUserTransformView.m" lineNumber:177 description:{@"Invalid parameter not satisfying: %@", @"minimumZoomScale >= 0"}];
  }

  minimumZoomScale = self->_minimumZoomScale;
  if (minimumZoomScale != scale)
  {
    self->_minimumZoomScale = scale;
    _scrollView = [(PUUserTransformView *)self _scrollView];
    [_scrollView zoomScale];
    v10 = v9;

    [(PUUserTransformView *)self _updateScrollViewMinimumZoomScaleAndGoToMinimum:v10 == minimumZoomScale animated:animatedCopy];
  }
}

- (void)setScrollPadding:(CGSize)padding
{
  if (padding.width != self->_scrollPadding.width || padding.height != self->_scrollPadding.height)
  {
    v6[5] = v3;
    v6[6] = v4;
    self->_scrollPadding = padding;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __40__PUUserTransformView_setScrollPadding___block_invoke;
    v6[3] = &unk_1E7B80DD0;
    v6[4] = self;
    [(PUUserTransformView *)self _performStateChanges:v6];
  }
}

- (void)setEnabledInteractions:(unint64_t)interactions
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __46__PUUserTransformView_setEnabledInteractions___block_invoke;
  v3[3] = &unk_1E7B7FF70;
  v3[4] = self;
  v3[5] = interactions;
  [(PUUserTransformView *)self _performZoomAndScrollChanges:v3];
}

- (void)setUserAffineTransform:(CGAffineTransform *)transform
{
  p_userAffineTransform = &self->_userAffineTransform;
  if ((PUAffineTransformIsApproximatelyEqualToTransform() & 1) == 0)
  {
    v6 = *&transform->a;
    v7 = *&transform->tx;
    *&p_userAffineTransform->c = *&transform->c;
    *&p_userAffineTransform->tx = v7;
    *&p_userAffineTransform->a = v6;

    [(PUUserTransformView *)self _invalidateScrollView];
  }
}

- (void)setUntransformedContentFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  p_untransformedContentFrame = &self->_untransformedContentFrame;
  if (!CGRectEqualToRect(frame, self->_untransformedContentFrame))
  {
    p_untransformedContentFrame->origin.x = x;
    p_untransformedContentFrame->origin.y = y;
    p_untransformedContentFrame->size.width = width;
    p_untransformedContentFrame->size.height = height;

    [(PUUserTransformView *)self _invalidateScrollView];
  }
}

- (void)setRequireTwoTouchesForPan:(BOOL)pan
{
  if (self->_requireTwoTouchesForPan != pan)
  {
    self->_requireTwoTouchesForPan = pan;
    [(PUUserTransformView *)self _invalidateScrollView];
  }
}

- (void)setContentPixelSize:(CGSize)size
{
  if (size.width != self->_contentPixelSize.width || size.height != self->_contentPixelSize.height)
  {
    self->_contentPixelSize = size;
    [(PUUserTransformView *)self _invalidateScrollView];
  }
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
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

- (PUUserTransformView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = PUUserTransformView;
  result = [(PUUserTransformView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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

+ (double)doubleTapZoomScaleForContentSize:(CGSize)size inBoundsSize:(CGSize)boundsSize defaultScale:(double)scale preferToFillOnDoubleTap:(BOOL)tap
{
  width = size.width;
  v7 = boundsSize.width / size.width;
  v8 = boundsSize.height / size.height;
  if (v7 >= boundsSize.height / size.height)
  {
    v8 = v7;
  }

  if (v8 <= scale)
  {
    result = scale;
  }

  else
  {
    result = v8;
  }

  if (size.height != 0.0 && ((v10 = width / size.height, v10 > 2.0) || v10 < 0.5) || tap)
  {
    if (v8 > 1.01)
    {
      return v8;
    }
  }

  return result;
}

@end