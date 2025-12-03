@interface UIScrollViewPanGestureRecognizer
- (BOOL)_beganCaughtDeceleratingScrollViewAndMoved;
- (BOOL)_canTransferTrackingFromParentPagingScrollView;
- (BOOL)_isParentScrollView:(id)view consideringEvent:(id)event;
- (BOOL)_shouldContinueToWaitToTransferTrackingFromParentScrollView;
- (BOOL)_shouldReceiveTouch:(id)touch withEvent:(id)event;
- (BOOL)_shouldTransferTrackingFromParentScrollViewForCurrentOffset;
- (BOOL)_shouldTryToBeginWithEvent:(id)event;
- (BOOL)canBePreventedByGestureRecognizer:(id)recognizer;
- (BOOL)delaysTouchesBegan;
- (BOOL)shouldBeRequiredToFailByGestureRecognizer:(id)recognizer;
- (BOOL)shouldReceiveEvent:(id)event;
- (CGPoint)_adjustSceneReferenceLocation:(CGPoint)location;
- (CGPoint)_convertPoint:(CGPoint)point fromSceneReferenceCoordinatesToView:(id)view;
- (CGPoint)_convertPoint:(CGPoint)point toSceneReferenceCoordinatesFromView:(id)view;
- (CGPoint)_velocityIncludingDiscreteScrollInView:(id)view;
- (CGPoint)translationInView:(id)view;
- (CGPoint)velocityInView:(id)view;
- (UIScrollView)scrollView;
- (UIScrollViewDirectionalPressGestureRecognizer)directionalPressGestureRecognizer;
- (UIScrollViewPanGestureRecognizer)initWithTarget:(id)target action:(SEL)action;
- (double)_hysteresis;
- (id)_asyncDeliveryTargetForScrollEvent:(id)event;
- (void)_beginScrollWithEvent:(id)event;
- (void)_centroidMovedTo:(CGPoint)to atTime:(double)time affectingTranslation:(BOOL)translation;
- (void)_handleCaughtDeceleratingScrollViewWithEvent:(id)event;
- (void)_resetGestureRecognizer;
- (void)_scrollViewDidEndZooming;
- (void)_scrollingChangedWithEvent:(id)event;
- (void)removeTarget:(id)target action:(SEL)action;
- (void)setAllowedTouchTypes:(id)types;
- (void)setDelegate:(id)delegate;
- (void)setDirectionalLockEnabled:(BOOL)enabled;
- (void)setView:(id)view;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
@end

@implementation UIScrollViewPanGestureRecognizer

- (void)_resetGestureRecognizer
{
  *(self + 488) = *(self + 488) & 0xFC | (*(self + 488) >> 2) & 3;
  *(self + 488) &= 0xF3u;
  *(self + 488) &= ~0x10u;
  *(self + 488) &= ~0x20u;
  *(self + 488) &= ~0x80u;
  *(self + 489) &= ~1u;
  self->_scrollViewCanScrubWithTouch = 0;
  self->_discreteFastScrollMultiplier = 1.0;
  v4.receiver = self;
  v4.super_class = UIScrollViewPanGestureRecognizer;
  [(UIPanGestureRecognizer *)&v4 _resetGestureRecognizer];
  WeakRetained = objc_loadWeakRetained(&self->_scrollView);
  [WeakRetained _resetScrollableAncestor];
}

- (UIScrollView)scrollView
{
  WeakRetained = objc_loadWeakRetained(&self->_scrollView);

  return WeakRetained;
}

- (BOOL)_beganCaughtDeceleratingScrollViewAndMoved
{
  if ([(UIGestureRecognizer *)self state]== UIGestureRecognizerStateBegan)
  {
    return *(self + 489) & 1;
  }

  else
  {
    return 0;
  }
}

- (double)_hysteresis
{
  result = 0.0;
  if ((*(self + 488) & 0x80000000) == 0 && (self->super._lastTouchCount != 1 || !self->_scrollViewCanScrubWithTouch))
  {
    v6 = v2;
    v7 = v3;
    v5.receiver = self;
    v5.super_class = UIScrollViewPanGestureRecognizer;
    [(UIPanGestureRecognizer *)&v5 _hysteresis];
  }

  return result;
}

- (BOOL)_canTransferTrackingFromParentPagingScrollView
{
  scrollView = [(UIScrollViewPanGestureRecognizer *)self scrollView];
  _parentScrollView = [scrollView _parentScrollView];
  if (![_parentScrollView isPagingEnabled] || !objc_msgSend(scrollView, "_transfersScrollToContainer"))
  {
    goto LABEL_21;
  }

  view = [(UIGestureRecognizer *)self view];
  [(UIScrollViewPanGestureRecognizer *)self translationInView:view];
  v31 = v7;
  v33 = v6;

  _canScrollX = [scrollView _canScrollX];
  _canScrollY = [scrollView _canScrollY];
  if ([_parentScrollView _canScrollX])
  {
    v10 = [_parentScrollView isScrollEnabled] ^ 1;
  }

  else
  {
    LOBYTE(v10) = 1;
  }

  v11 = [_parentScrollView _canScrollY] ? objc_msgSend(_parentScrollView, "isScrollEnabled") : 0;
  [scrollView contentInset];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  [scrollView bounds];
  v21 = v20;
  v23 = v22;
  [scrollView contentSize];
  v25 = v24;
  v27 = v26;
  _currentlyAbuttedContentEdges = [scrollView _currentlyAbuttedContentEdges];
  if (v10 & 1 | ((_canScrollX & 1) == 0) || v19 + v15 + v25 <= v21 || (_currentlyAbuttedContentEdges & 2) == 0 && (_currentlyAbuttedContentEdges & 8) == 0)
  {
    LOBYTE(v29) = 0;
    if ((v11 & _canScrollY) != 1 || v17 + v13 + v27 <= v23)
    {
      goto LABEL_22;
    }

    if ((_currentlyAbuttedContentEdges & 1) == 0 && (_currentlyAbuttedContentEdges & 4) == 0)
    {
LABEL_21:
      LOBYTE(v29) = 0;
      goto LABEL_22;
    }
  }

  if ((v33 <= 0.0 || ((_currentlyAbuttedContentEdges >> 1) & 1) == 0) | v10 & 1 && (v33 >= 0.0 || ((_currentlyAbuttedContentEdges >> 3) & 1) == 0) | v10 & 1 && (_currentlyAbuttedContentEdges & v11 & (v32 > 0.0)) == 0)
  {
    v29 = (v32 < 0.0) & (_currentlyAbuttedContentEdges >> 2) & v11;
  }

  else
  {
    LOBYTE(v29) = 1;
  }

LABEL_22:

  return v29;
}

- (BOOL)delaysTouchesBegan
{
  v6.receiver = self;
  v6.super_class = UIScrollViewPanGestureRecognizer;
  if ([(UIGestureRecognizer *)&v6 delaysTouchesBegan])
  {
    return 1;
  }

  if (![(UIGestureRecognizer *)self cancelsTouchesInView])
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_scrollView);
  isDecelerating = [WeakRetained isDecelerating];

  return isDecelerating;
}

- (UIScrollViewPanGestureRecognizer)initWithTarget:(id)target action:(SEL)action
{
  v10.receiver = self;
  v10.super_class = UIScrollViewPanGestureRecognizer;
  v5 = [(UIPanGestureRecognizer *)&v10 initWithTarget:target action:?];
  v6 = v5;
  if (v5)
  {
    if (action)
    {
      actionCopy = action;
    }

    else
    {
      actionCopy = 0;
    }

    v5->_scrollViewAction = actionCopy;
    *(v5 + 488) &= ~0x40u;
    *(v5 + 488) &= 0xF3u;
    v5->_indirectScrollingState = 0;
    [(UIPanGestureRecognizer *)v5 setFailsPastMaxTouches:0];
    [(UIScrollViewPanGestureRecognizer *)v6 setTranslationScaleFactor:1.0];
    [(UIPanGestureRecognizer *)v6 setAllowedScrollTypesMask:3];
    v6->_discreteFastScrollMultiplier = 1.0;
    v8 = v6;
  }

  return v6;
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  scrollView = [(UIScrollViewPanGestureRecognizer *)self scrollView];
  v6 = scrollView;
  if (scrollView && scrollView != delegateCopy)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"UIScrollView's built-in pan gesture recognizer must have its scroll view as its delegate."];
  }

  v7.receiver = self;
  v7.super_class = UIScrollViewPanGestureRecognizer;
  [(UIPanGestureRecognizer *)&v7 setDelegate:delegateCopy];
}

- (void)removeTarget:(id)target action:(SEL)action
{
  targetCopy = target;
  scrollView = [(UIScrollViewPanGestureRecognizer *)self scrollView];
  if (scrollView == targetCopy)
  {
    if (self->_scrollViewAction)
    {
      scrollViewAction = self->_scrollViewAction;
    }

    else
    {
      scrollViewAction = 0;
    }

    if (scrollViewAction == action)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"You can't remove the scroll view's target/action pair from its built-in pan gesture recognizer."];
    }
  }

  else
  {
  }

  v9.receiver = self;
  v9.super_class = UIScrollViewPanGestureRecognizer;
  [(UIGestureRecognizer *)&v9 removeTarget:targetCopy action:action];
}

- (void)setAllowedTouchTypes:(id)types
{
  typesCopy = types;
  if (typesCopy)
  {
    v5 = typesCopy;
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  allowedTouchTypes = [(UIGestureRecognizer *)self allowedTouchTypes];
  v7 = [v5 isEqualToArray:allowedTouchTypes];

  if ((v7 & 1) == 0)
  {
    v14.receiver = self;
    v14.super_class = UIScrollViewPanGestureRecognizer;
    [(UIGestureRecognizer *)&v14 setAllowedTouchTypes:v5];
    allowedTouchTypes2 = [(UIGestureRecognizer *)self allowedTouchTypes];
    scrollView = [(UIScrollViewPanGestureRecognizer *)self scrollView];
    [scrollView _setAllowedTouchTypesForScrolling:allowedTouchTypes2];
  }

  v10 = [v5 containsObject:&unk_1EFE33E98];
  WeakRetained = objc_loadWeakRetained(&self->_directionalPressGestureRecognizer);
  [WeakRetained _setEnabledIfAllowed:v10];

  if (v10)
  {
    self->_indirectScrollingState = 1;
    v12 = objc_loadWeakRetained(&self->_directionalPressGestureRecognizer);
    view = [(UIGestureRecognizer *)self view];
    [v12 _addToViewIfAllowed:view];
  }

  else if (self->_indirectScrollingState)
  {
    self->_indirectScrollingState = 2;
  }
}

- (void)setView:(id)view
{
  viewCopy = view;
  v8.receiver = self;
  v8.super_class = UIScrollViewPanGestureRecognizer;
  [(UIGestureRecognizer *)&v8 setView:viewCopy];
  indirectScrollingState = self->_indirectScrollingState;
  if (indirectScrollingState)
  {
    WeakRetained = objc_loadWeakRetained(&self->_directionalPressGestureRecognizer);
    v7 = WeakRetained;
    if (viewCopy && indirectScrollingState == 1)
    {
      [WeakRetained _addToViewIfAllowed:viewCopy];
    }

    else
    {
      [WeakRetained _resetToOriginalViewIfAllowed];
    }
  }
}

- (BOOL)_shouldContinueToWaitToTransferTrackingFromParentScrollView
{
  scrollView = [(UIScrollViewPanGestureRecognizer *)self scrollView];
  _parentScrollView = [scrollView _parentScrollView];
  if (([_parentScrollView isDragging] & 1) != 0 || (objc_msgSend(_parentScrollView, "isDecelerating") & 1) != 0 || ((-[UIScrollViewPanGestureRecognizer translationInView:](self, "translationInView:", scrollView), v6 = v5, v8 = v7, v9 = objc_msgSend(scrollView, "_canScrollX"), v10 = objc_msgSend(scrollView, "_canScrollY"), !objc_msgSend(_parentScrollView, "_canScrollX")) ? (v11 = 0) : (v11 = objc_msgSend(_parentScrollView, "isScrollEnabled")), !objc_msgSend(_parentScrollView, "_canScrollY") ? (v12 = 0) : (v12 = objc_msgSend(_parentScrollView, "isScrollEnabled")), (v13 = objc_msgSend(scrollView, "_currentlyAbuttedContentEdges"), (*&v9 & ((v13 & 2) >> 1) & *&v11) == 1) && v6 > 0.0 || (*&v9 & ((v13 & 8) >> 3) & *&v11) == 1 && v6 < 0.0 || (v13 & v10 & v12 & 1) != 0 && v8 < 0.0))
  {
    v14 = 1;
  }

  else
  {
    if (v8 > 0.0)
    {
      v16 = v12;
    }

    else
    {
      v16 = 0;
    }

    v14 = (v10 & ((v13 & 4) >> 2)) == 1 && v16;
  }

  return v14;
}

- (BOOL)_shouldTransferTrackingFromParentScrollViewForCurrentOffset
{
  scrollView = [(UIScrollViewPanGestureRecognizer *)self scrollView];
  _parentScrollView = [scrollView _parentScrollView];
  [_parentScrollView _rectForPageContainingView:scrollView];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [_parentScrollView contentOffset];
  v13 = v12;
  v15 = v14;
  _currentlyAbuttedContentEdges = [scrollView _currentlyAbuttedContentEdges];
  v23.origin.x = v5;
  v23.origin.y = v7;
  v23.size.width = v9;
  v23.size.height = v11;
  if (!CGRectIsEmpty(v23))
  {
    if ((_currentlyAbuttedContentEdges & 2) != 0 && (v24.origin.x = v5, v24.origin.y = v7, v24.size.width = v9, v24.size.height = v11, v13 > CGRectGetMinX(v24)) || (_currentlyAbuttedContentEdges & 8) != 0 && ([_parentScrollView bounds], v19 = v13 + v18, v25.origin.x = v5, v25.origin.y = v7, v25.size.width = v9, v25.size.height = v11, v19 < CGRectGetMaxX(v25)) || (_currentlyAbuttedContentEdges & 1) != 0 && (v26.origin.x = v5, v26.origin.y = v7, v26.size.width = v9, v26.size.height = v11, v15 > CGRectGetMinY(v26)))
    {
      v17 = 1;
      goto LABEL_12;
    }

    if ((_currentlyAbuttedContentEdges & 4) != 0)
    {
      [_parentScrollView bounds];
      v21 = v15 + v20;
      v27.origin.x = v5;
      v27.origin.y = v7;
      v27.size.width = v9;
      v27.size.height = v11;
      v17 = v21 < CGRectGetMaxY(v27);
      goto LABEL_12;
    }
  }

  v17 = 0;
LABEL_12:

  return v17;
}

- (BOOL)_shouldReceiveTouch:(id)touch withEvent:(id)event
{
  touchCopy = touch;
  eventCopy = event;
  if (!self->super._lastTouchCount)
  {
    scrollView = [(UIScrollViewPanGestureRecognizer *)self scrollView];
    self->_scrollViewCanScrubWithTouch = [scrollView _canScrubWithTouch:touchCopy];
  }

  if ([eventCopy _containsHIDPointerEvent])
  {
    if (!self->_scrollViewCanScrubWithTouch)
    {
      scrollView2 = [(UIScrollViewPanGestureRecognizer *)self scrollView];
      _supportsPointerDragScrolling = [scrollView2 _supportsPointerDragScrolling];

      if ((_supportsPointerDragScrolling & 1) == 0)
      {
        scrollView3 = [(UIScrollViewPanGestureRecognizer *)self scrollView];
        if ([scrollView3 isDecelerating])
        {
          scrollView4 = [(UIScrollViewPanGestureRecognizer *)self scrollView];
          _isBouncing = [scrollView4 _isBouncing];

          if (_isBouncing)
          {
LABEL_12:
            v11 = 0;
            goto LABEL_7;
          }

          scrollView3 = [(UIScrollViewPanGestureRecognizer *)self scrollView];
          [scrollView3 _stopScrollingNotify:1 pin:0];
        }

        goto LABEL_12;
      }
    }
  }

  v11 = 1;
LABEL_7:

  return v11;
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  eventCopy = event;
  lastTouchCount = self->super._lastTouchCount;
  beganCopy = began;
  self->_modifierFlags = [eventCopy _modifierFlags];
  v9.receiver = self;
  v9.super_class = UIScrollViewPanGestureRecognizer;
  [(UIPanGestureRecognizer *)&v9 touchesBegan:beganCopy withEvent:eventCopy];

  if (!lastTouchCount)
  {
    [(UIScrollViewPanGestureRecognizer *)self _beginScrollWithEvent:eventCopy];
  }

  *(self + 488) &= 0xFCu;
  if ([(UIGestureRecognizer *)self state]== UIGestureRecognizerStatePossible && [(UIScrollViewPanGestureRecognizer *)self _shouldTryToBeginWithEvent:eventCopy])
  {
    [(UIPanGestureRecognizer *)self _removeHysteresisFromTranslation];
    [(UIGestureRecognizer *)self setState:1];
  }
}

- (void)_beginScrollWithEvent:(id)event
{
  scrollView = [(UIScrollViewPanGestureRecognizer *)self scrollView];
  if ([scrollView _shouldBeginScroll])
  {
    if ([scrollView _shouldTrackImmediatelyWhileDecelerating])
    {
      *(self + 488) |= 0x20u;
      [(UIGestureRecognizer *)self setState:1];
    }

    else
    {
      [scrollView _clearParentAdjustment];
    }

    *(self + 488) = *(self + 488) & 0xF3 | (4 * (*(self + 488) & 3));
  }

  if ([(UIScrollViewPanGestureRecognizer *)self _canTransferTrackingFromParentPagingScrollView])
  {
    *(self + 488) |= 0x80u;
  }

  _parentScrollView = [scrollView _parentScrollView];
  if (_parentScrollView)
  {
    *(self + 488) |= 0x10u;
  }

  else
  {
    _actingParentScrollView = [scrollView _actingParentScrollView];
    *(self + 488) = *(self + 488) & 0xEF | (16 * (_actingParentScrollView != 0));
  }

  *(self + 488) &= 0xFCu;
}

- (CGPoint)_adjustSceneReferenceLocation:(CGPoint)location
{
  v5 = (*(self + 488) >> 2) & 3;
  if (v5)
  {

    v6 = [(UIPanGestureRecognizer *)self _shiftPanLocationToNewSceneReferenceLocation:v5 lockingToAxis:location.x, location.y];
  }

  else
  {
    v9 = v3;
    v10 = v4;
    v8.receiver = self;
    v8.super_class = UIScrollViewPanGestureRecognizer;
    [(UIPanGestureRecognizer *)&v8 _adjustSceneReferenceLocation:location.x, location.y];
  }

  result.y = v7;
  result.x = v6;
  return result;
}

- (void)_centroidMovedTo:(CGPoint)to atTime:(double)time affectingTranslation:(BOOL)translation
{
  translationCopy = translation;
  y = to.y;
  x = to.x;
  if ((*(self + 488) & 0x40) == 0)
  {
    goto LABEL_30;
  }

  if (!translation)
  {
    goto LABEL_30;
  }

  lastTouchTime = self->super._lastTouchTime;
  if (([(UIGestureRecognizer *)self _state]- 1) <= 2 && self->_reconsideredLockingLocation.x == 9.22337204e18 && time - lastTouchTime < 0.6)
  {
    goto LABEL_30;
  }

  v11 = [(UIPanGestureRecognizer *)self _offsetInViewFromSceneReferenceLocation:self->super._lastUnadjustedSceneReferenceLocation.y toSceneReferenceLocation:x, y];
  v13 = v12;
  scrollView = [(UIScrollViewPanGestureRecognizer *)self scrollView];
  if (v11 != 0.0 && v13 != 0.0)
  {
    v15 = v13 / v11;
    v16 = atanf(fabsf(v15));
    if (!-[UIPanGestureRecognizer _canPanHorizontally](self, "_canPanHorizontally") || ![scrollView _canScrollX] || v16 > 0.34906585)
    {
      if (!-[UIPanGestureRecognizer _canPanVertically](self, "_canPanVertically") || ![scrollView _canScrollY] || v16 < 1.22173048)
      {
        goto LABEL_26;
      }

      goto LABEL_24;
    }

LABEL_19:
    v17 = 4;
LABEL_25:
    *(self + 488) = *(self + 488) & 0xF3 | v17;
    goto LABEL_26;
  }

  if (v13 == 0.0 && v11 != 0.0 && -[UIPanGestureRecognizer _canPanHorizontally](self, "_canPanHorizontally") && ([scrollView _canScrollX] & 1) != 0)
  {
    goto LABEL_19;
  }

  if (v11 == 0.0 && v13 != 0.0 && -[UIPanGestureRecognizer _canPanVertically](self, "_canPanVertically") && [scrollView _canScrollY])
  {
LABEL_24:
    v17 = 8;
    goto LABEL_25;
  }

LABEL_26:

  if (self->_reconsideredLockingLocation.x != 9.22337204e18)
  {
    v18 = vabdd_f64(x, self->_reconsideredLockingLocation.x);
    [(UIScrollViewPanGestureRecognizer *)self _hysteresis];
    if (v18 >= v19 || (v20 = vabdd_f64(y, self->_reconsideredLockingLocation.y), [(UIScrollViewPanGestureRecognizer *)self _hysteresis], v20 >= v21))
    {
      self->_reconsideredLockingLocation = vdupq_n_s64(0x43E0000000000000uLL);
    }
  }

LABEL_30:
  v22.receiver = self;
  v22.super_class = UIScrollViewPanGestureRecognizer;
  [(UIPanGestureRecognizer *)&v22 _centroidMovedTo:translationCopy atTime:x affectingTranslation:y, time];
}

- (CGPoint)_convertPoint:(CGPoint)point toSceneReferenceCoordinatesFromView:(id)view
{
  y = point.y;
  x = point.x;
  viewCopy = view;
  WeakRetained = objc_loadWeakRetained(&self->_scrollView);
  _relativePanView = [WeakRetained _relativePanView];

  view = [(UIGestureRecognizer *)self view];

  if (view == viewCopy && _relativePanView)
  {
    v11 = _relativePanView;

    viewCopy = v11;
  }

  v18.receiver = self;
  v18.super_class = UIScrollViewPanGestureRecognizer;
  [(UIPanGestureRecognizer *)&v18 _convertPoint:viewCopy toSceneReferenceCoordinatesFromView:x, y];
  v13 = v12;
  v15 = v14;

  v16 = v13;
  v17 = v15;
  result.y = v17;
  result.x = v16;
  return result;
}

- (CGPoint)_convertPoint:(CGPoint)point fromSceneReferenceCoordinatesToView:(id)view
{
  y = point.y;
  x = point.x;
  viewCopy = view;
  WeakRetained = objc_loadWeakRetained(&self->_scrollView);
  _relativePanView = [WeakRetained _relativePanView];

  view = [(UIGestureRecognizer *)self view];

  if (view == viewCopy && _relativePanView)
  {
    v11 = _relativePanView;

    viewCopy = v11;
  }

  v18.receiver = self;
  v18.super_class = UIScrollViewPanGestureRecognizer;
  [(UIPanGestureRecognizer *)&v18 _convertPoint:viewCopy fromSceneReferenceCoordinatesToView:x, y];
  v13 = v12;
  v15 = v14;

  v16 = v13;
  v17 = v15;
  result.y = v17;
  result.x = v16;
  return result;
}

- (CGPoint)translationInView:(id)view
{
  if ((*(self + 488) & 0x20) != 0)
  {
    v6 = *MEMORY[0x1E695EFF8];
    v8 = *(MEMORY[0x1E695EFF8] + 8);
  }

  else
  {
    v9.receiver = self;
    v9.super_class = UIScrollViewPanGestureRecognizer;
    [(UIPanGestureRecognizer *)&v9 translationInView:view];
    discreteFastScrollMultiplier = self->_discreteFastScrollMultiplier;
    v6 = v5 * discreteFastScrollMultiplier;
    v8 = v7 * discreteFastScrollMultiplier;
  }

  result.y = v8;
  result.x = v6;
  return result;
}

- (CGPoint)velocityInView:(id)view
{
  if ((*(self + 488) & 0x20) != 0)
  {
    v6 = *MEMORY[0x1E695EFF8];
    v7 = *(MEMORY[0x1E695EFF8] + 8);
    v5 = v7;
    v4 = *MEMORY[0x1E695EFF8];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = UIScrollViewPanGestureRecognizer;
    [(UIPanGestureRecognizer *)&v8 velocityInView:view];
    v6 = *MEMORY[0x1E695EFF8];
    v7 = *(MEMORY[0x1E695EFF8] + 8);
  }

  if (self->_activeEventIsDiscrete)
  {
    v5 = v7;
    v4 = v6;
  }

  result.y = v5;
  result.x = v4;
  return result;
}

- (CGPoint)_velocityIncludingDiscreteScrollInView:(id)view
{
  if ((*(self + 488) & 0x20) != 0)
  {
    v3 = *MEMORY[0x1E695EFF8];
    v4 = *(MEMORY[0x1E695EFF8] + 8);
  }

  else
  {
    v5.receiver = self;
    v5.super_class = UIScrollViewPanGestureRecognizer;
    [(UIPanGestureRecognizer *)&v5 velocityInView:view];
  }

  result.y = v4;
  result.x = v3;
  return result;
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  eventCopy = event;
  movedCopy = moved;
  state = [(UIGestureRecognizer *)self state];
  self->_modifierFlags = [eventCopy _modifierFlags];
  v12.receiver = self;
  v12.super_class = UIScrollViewPanGestureRecognizer;
  [(UIPanGestureRecognizer *)&v12 touchesMoved:movedCopy withEvent:eventCopy];

  [(UIScrollViewPanGestureRecognizer *)self _handleCaughtDeceleratingScrollViewWithEvent:eventCopy];
  if (state == UIGestureRecognizerStatePossible && [(UIGestureRecognizer *)self state]== UIGestureRecognizerStateBegan)
  {
    scrollView = [(UIScrollViewPanGestureRecognizer *)self scrollView];
    v10 = [eventCopy touchesForGestureRecognizer:self];
    v11 = [scrollView _canCancelContentTouches:v10];

    if ((v11 & 1) == 0)
    {
      [(UIGestureRecognizer *)self _failWithReason:@"contentTouchDelivery"];
    }
  }
}

- (void)_handleCaughtDeceleratingScrollViewWithEvent:(id)event
{
  eventCopy = event;
  if ((*(self + 488) & 0x20) != 0)
  {
    *(self + 488) &= ~0x20u;
    v6 = eventCopy;
    if ([(UIScrollViewPanGestureRecognizer *)self _shouldTryToBeginWithEvent:eventCopy])
    {
      if ((*(&self->super.super._gestureFlags + 4) & 0x10) != 0)
      {
        [(UIPanGestureRecognizer *)self _removeHysteresisFromTranslation];
        scrollView = [(UIScrollViewPanGestureRecognizer *)self scrollView];
        [scrollView _adjustStartOffsetForGrabbedBouncingScrollView];
      }

      else
      {
        *(self + 489) |= 1u;
      }
    }

    else
    {
      *(self + 488) |= 0x20u;
    }

    eventCopy = v6;
  }
}

- (BOOL)_isParentScrollView:(id)view consideringEvent:(id)event
{
  eventCopy = event;
  _panGestureRecognizer = [view _panGestureRecognizer];
  if (!_panGestureRecognizer)
  {
    goto LABEL_6;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = 1 << [eventCopy _scrollType];
      v10 = ([_panGestureRecognizer allowedScrollTypesMask] & v11) != 0;
      goto LABEL_7;
    }

LABEL_6:
    v10 = 0;
    goto LABEL_7;
  }

  v8 = [eventCopy touchesForGestureRecognizer:_panGestureRecognizer];
  v9 = [MEMORY[0x1E695DFD8] setWithArray:self->super._touches];
  v10 = [v8 intersectsSet:v9];

LABEL_7:
  return v10;
}

- (BOOL)_shouldTryToBeginWithEvent:(id)event
{
  eventCopy = event;
  v55.receiver = self;
  v55.super_class = UIScrollViewPanGestureRecognizer;
  if ([(UIPanGestureRecognizer *)&v55 _shouldTryToBeginWithEvent:eventCopy])
  {
    scrollView = [(UIScrollViewPanGestureRecognizer *)self scrollView];
    if ([scrollView _canScrollX])
    {
      _canPanHorizontally = [(UIPanGestureRecognizer *)self _canPanHorizontally];
    }

    else
    {
      _canPanHorizontally = 0;
    }

    if ([scrollView _canScrollY])
    {
      _canPanVertically = [(UIPanGestureRecognizer *)self _canPanVertically];
    }

    else
    {
      _canPanVertically = 0;
    }

    _willScrollX = [(UIPanGestureRecognizer *)self _willScrollX];
    _willScrollY = [(UIPanGestureRecognizer *)self _willScrollY];
    view = [(UIGestureRecognizer *)self view];
    [(UIScrollViewPanGestureRecognizer *)self translationInView:view];
    v13 = v12;
    v15 = v14;

    if (!_canPanHorizontally && !_canPanVertically || !_canPanHorizontally && _canPanVertically && !_willScrollY || !_canPanVertically && _canPanHorizontally && !_willScrollX)
    {
      goto LABEL_47;
    }

    if ((*(self + 488) & 0x10) == 0)
    {
LABEL_43:
      _delegateShouldPanGestureTryToBegin = [scrollView _delegateShouldPanGestureTryToBegin];
LABEL_48:

      goto LABEL_49;
    }

    _actingParentScrollView = [scrollView _actingParentScrollView];
    v17 = _actingParentScrollView;
    if (_actingParentScrollView)
    {
      _parentScrollView = _actingParentScrollView;
    }

    else
    {
      _parentScrollView = [scrollView _parentScrollView];
    }

    v19 = _parentScrollView;

    if (![(UIScrollViewPanGestureRecognizer *)self _isParentScrollView:v19 consideringEvent:eventCopy])
    {
LABEL_42:

      goto LABEL_43;
    }

    _currentlyAbuttedContentEdges = [scrollView _currentlyAbuttedContentEdges];
    if (*(self + 488) < 0)
    {
      if ([(UIScrollViewPanGestureRecognizer *)self _shouldTransferTrackingFromParentScrollViewForCurrentOffset])
      {
        [v19 contentOffset];
        v21 = v20;
        v23 = v22;
        [v19 _pinContentOffsetToClosestPageBoundary];
        panGestureRecognizer = [v19 panGestureRecognizer];
        [(UIGestureRecognizer *)panGestureRecognizer _cancelRecognition];

        pinchGestureRecognizer = [v19 pinchGestureRecognizer];
        [(UIGestureRecognizer *)pinchGestureRecognizer _cancelRecognition];

        [v19 contentOffset];
        if ((_currentlyAbuttedContentEdges & 2) != 0 || (_currentlyAbuttedContentEdges & 8) != 0)
        {
          v30 = v21 - v28;
          v31 = 0.0;
        }

        else if ((_currentlyAbuttedContentEdges & 1) != 0 || (_currentlyAbuttedContentEdges & 4) != 0)
        {
          v31 = v23 - v29;
          v30 = 0.0;
        }

        else
        {
          v30 = *MEMORY[0x1E695EFF8];
          v31 = *(MEMORY[0x1E695EFF8] + 8);
        }

        [(UIPanGestureRecognizer *)self setTranslation:scrollView inView:v30, v31];
      }

      else if ([(UIScrollViewPanGestureRecognizer *)self _shouldContinueToWaitToTransferTrackingFromParentScrollView]|| (*(self + 488) &= ~0x80u, v54.receiver = self, v54.super_class = UIScrollViewPanGestureRecognizer, ![(UIPanGestureRecognizer *)&v54 _shouldTryToBeginWithEvent:eventCopy]))
      {
LABEL_46:

LABEL_47:
        _delegateShouldPanGestureTryToBegin = 0;
        goto LABEL_48;
      }
    }

    if ([scrollView isPagingEnabled])
    {
      _abuttedPagingEdges = [scrollView _abuttedPagingEdges];
      HIDWORD(v46) = (_abuttedPagingEdges >> 3) & 1;
      v49 = (_abuttedPagingEdges >> 1) & 1;
      _currentlyAbuttedContentEdges = _abuttedPagingEdges;
      LODWORD(v46) = (_abuttedPagingEdges >> 2) & 1;
    }

    else
    {
      LODWORD(v46) = _currentlyAbuttedContentEdges >> 2;
      HIDWORD(v46) = _currentlyAbuttedContentEdges >> 3;
      LOBYTE(v49) = _currentlyAbuttedContentEdges >> 1;
    }

    _canScrollX = [scrollView _canScrollX];
    _canScrollY = [scrollView _canScrollY];
    if ([v19 _canScrollX])
    {
      v34 = [v19 isScrollEnabled] ^ 1;
    }

    else
    {
      v34 = 1;
    }

    if ([v19 _canScrollY])
    {
      v35 = [v19 isScrollEnabled] ^ 1;
    }

    else
    {
      v35 = 1;
    }

    v51 = v35;
    transfersHorizontalScrollingToParent = [scrollView transfersHorizontalScrollingToParent];
    transfersVerticalScrollingToParent = [scrollView transfersVerticalScrollingToParent];
    view2 = [(UIGestureRecognizer *)self view];
    [(UIScrollViewPanGestureRecognizer *)self _hysteresis];
    v39 = v38;
    [(UIScrollViewPanGestureRecognizer *)self _hysteresis];
    [view2 convertSize:0 fromView:{v39, v40}];
    v42 = v41;
    v44 = v43;

    if ((((_canScrollY & _willScrollY | v34) & 1) != 0 || !transfersHorizontalScrollingToParent || _canScrollX && ((v13 >= v42) & v49) == 0 && ((v13 <= -v42) & v48) == 0) && (((_canScrollX & _willScrollX | v51) & 1) != 0 || ((transfersVerticalScrollingToParent ^ 1) & 1) != 0 || _canScrollY && ((v15 >= v44) & _currentlyAbuttedContentEdges) == 0 && ((v15 <= -v44) & v47) != 1))
    {
      goto LABEL_42;
    }

    goto LABEL_46;
  }

  _delegateShouldPanGestureTryToBegin = 0;
LABEL_49:

  return _delegateShouldPanGestureTryToBegin;
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  v6.receiver = self;
  v6.super_class = UIScrollViewPanGestureRecognizer;
  [(UIPanGestureRecognizer *)&v6 touchesCancelled:cancelled withEvent:event];
  if (![(UIPanGestureRecognizer *)self numberOfTouches])
  {
    scrollView = [(UIScrollViewPanGestureRecognizer *)self scrollView];
    [scrollView cancelTouchTracking];
  }
}

- (BOOL)canBePreventedByGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  if (*(self + 488) < 0 && (-[UIScrollViewPanGestureRecognizer scrollView](self, "scrollView"), v5 = objc_claimAutoreleasedReturnValue(), [v5 _parentScrollView], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "_panGestureRecognizer"), v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v5, v7 == recognizerCopy))
  {
    isKindOfClass = 0;
  }

  else if (self->_scrollViewCanScrubWithTouch)
  {
    view = [recognizerCopy view];
    scrollView = [(UIScrollViewPanGestureRecognizer *)self scrollView];
    if ([view isDescendantOfView:scrollView])
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
    }

    else
    {
      isKindOfClass = 1;
    }
  }

  else
  {
    isKindOfClass = 1;
  }

  return isKindOfClass & 1;
}

- (BOOL)shouldBeRequiredToFailByGestureRecognizer:(id)recognizer
{
  if (self->_scrollViewCanScrubWithTouch)
  {
    recognizerCopy = recognizer;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    v5 = isKindOfClass ^ 1;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = UIScrollViewPanGestureRecognizer;
    recognizerCopy2 = recognizer;
    v5 = [(UIGestureRecognizer *)&v8 shouldBeRequiredToFailByGestureRecognizer:recognizerCopy2];
  }

  return v5 & 1;
}

- (void)_scrollViewDidEndZooming
{
  scrollView = [(UIScrollViewPanGestureRecognizer *)self scrollView];
  [(UIPanGestureRecognizer *)self setTranslation:scrollView inView:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)];

  if ((*(self + 488) & 0x40) != 0)
  {
    self->_reconsideredLockingLocation = self->super._lastUnadjustedSceneReferenceLocation;
    *(self + 488) &= 0xFCu;
    *(self + 488) &= 0xF3u;
  }

  velocitySample = self->super._velocitySample;
  self->super._velocitySample = 0;

  previousVelocitySample = self->super._previousVelocitySample;
  self->super._previousVelocitySample = 0;
}

- (void)setDirectionalLockEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *(self + 488) = *(self + 488) & 0xBF | v3;
}

- (BOOL)shouldReceiveEvent:(id)event
{
  eventCopy = event;
  if ([eventCopy type] == 10)
  {
    scrollView = [(UIScrollViewPanGestureRecognizer *)self scrollView];
    v7.receiver = self;
    v7.super_class = UIScrollViewPanGestureRecognizer;
    LODWORD(self) = [(UIPanGestureRecognizer *)&v7 shouldReceiveEvent:eventCopy];
    if (self && ([scrollView isTracking] & 1) == 0)
    {
      [scrollView _beginTrackingWithEvent:eventCopy];
    }
  }

  else
  {
    v8.receiver = self;
    v8.super_class = UIScrollViewPanGestureRecognizer;
    LOBYTE(self) = [(UIPanGestureRecognizer *)&v8 shouldReceiveEvent:eventCopy];
  }

  return self;
}

- (void)_scrollingChangedWithEvent:(id)event
{
  eventCopy = event;
  phase = [eventCopy phase];
  state = [(UIGestureRecognizer *)self state];
  if (state == UIGestureRecognizerStateBegan && phase == 5)
  {
    if ((!self || (*(&self->super.super._gestureFlags + 4) & 0x10) == 0) && (*(self + 488) & 0x20) != 0)
    {
      [(UIGestureRecognizer *)self setState:3];
    }

    v8.receiver = self;
    v8.super_class = UIScrollViewPanGestureRecognizer;
    [(UIPanGestureRecognizer *)&v8 _scrollingChangedWithEvent:eventCopy];
    goto LABEL_10;
  }

  v8.receiver = self;
  v8.super_class = UIScrollViewPanGestureRecognizer;
  [(UIPanGestureRecognizer *)&v8 _scrollingChangedWithEvent:eventCopy];
  if ((phase - 1) < 2)
  {
    if (state == UIGestureRecognizerStatePossible)
    {
      self->_activeEventIsDiscrete = [eventCopy _scrollType] == 0;
      [(UIScrollViewPanGestureRecognizer *)self _beginScrollWithEvent:eventCopy];
    }
  }

  else
  {
    if ((phase - 4) < 2)
    {
LABEL_10:
      state2 = [(UIGestureRecognizer *)self state];
      if ((state2 - 1) > 1)
      {
        if (state2 == UIGestureRecognizerStatePossible)
        {
          [(UIGestureRecognizer *)self _failWithReason:@"scrollCancelled"];
        }
      }

      else
      {
        [(UIGestureRecognizer *)self setState:3];
      }

      if (phase == 5)
      {
        [(UIPanGestureRecognizer *)self numberOfTouches];
      }

      self->_activeEventIsDiscrete = 0;
      goto LABEL_17;
    }

    if (phase == 3)
    {
      [(UIScrollViewPanGestureRecognizer *)self _handleCaughtDeceleratingScrollViewWithEvent:eventCopy];
    }
  }

LABEL_17:
}

- (id)_asyncDeliveryTargetForScrollEvent:(id)event
{
  eventCopy = event;
  scrollView = [(UIScrollViewPanGestureRecognizer *)self scrollView];
  v6 = [scrollView _asyncDeliveryTargetForScrollEvent:eventCopy];

  return v6;
}

- (UIScrollViewDirectionalPressGestureRecognizer)directionalPressGestureRecognizer
{
  WeakRetained = objc_loadWeakRetained(&self->_directionalPressGestureRecognizer);

  return WeakRetained;
}

@end