@interface UIScrollViewPanGestureRecognizer
- (BOOL)_beganCaughtDeceleratingScrollViewAndMoved;
- (BOOL)_canTransferTrackingFromParentPagingScrollView;
- (BOOL)_isParentScrollView:(id)a3 consideringEvent:(id)a4;
- (BOOL)_shouldContinueToWaitToTransferTrackingFromParentScrollView;
- (BOOL)_shouldReceiveTouch:(id)a3 withEvent:(id)a4;
- (BOOL)_shouldTransferTrackingFromParentScrollViewForCurrentOffset;
- (BOOL)_shouldTryToBeginWithEvent:(id)a3;
- (BOOL)canBePreventedByGestureRecognizer:(id)a3;
- (BOOL)delaysTouchesBegan;
- (BOOL)shouldBeRequiredToFailByGestureRecognizer:(id)a3;
- (BOOL)shouldReceiveEvent:(id)a3;
- (CGPoint)_adjustSceneReferenceLocation:(CGPoint)a3;
- (CGPoint)_convertPoint:(CGPoint)a3 fromSceneReferenceCoordinatesToView:(id)a4;
- (CGPoint)_convertPoint:(CGPoint)a3 toSceneReferenceCoordinatesFromView:(id)a4;
- (CGPoint)_velocityIncludingDiscreteScrollInView:(id)a3;
- (CGPoint)translationInView:(id)a3;
- (CGPoint)velocityInView:(id)a3;
- (UIScrollView)scrollView;
- (UIScrollViewDirectionalPressGestureRecognizer)directionalPressGestureRecognizer;
- (UIScrollViewPanGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4;
- (double)_hysteresis;
- (id)_asyncDeliveryTargetForScrollEvent:(id)a3;
- (void)_beginScrollWithEvent:(id)a3;
- (void)_centroidMovedTo:(CGPoint)a3 atTime:(double)a4 affectingTranslation:(BOOL)a5;
- (void)_handleCaughtDeceleratingScrollViewWithEvent:(id)a3;
- (void)_resetGestureRecognizer;
- (void)_scrollViewDidEndZooming;
- (void)_scrollingChangedWithEvent:(id)a3;
- (void)removeTarget:(id)a3 action:(SEL)a4;
- (void)setAllowedTouchTypes:(id)a3;
- (void)setDelegate:(id)a3;
- (void)setDirectionalLockEnabled:(BOOL)a3;
- (void)setView:(id)a3;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
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
  v3 = [(UIScrollViewPanGestureRecognizer *)self scrollView];
  v4 = [v3 _parentScrollView];
  if (![v4 isPagingEnabled] || !objc_msgSend(v3, "_transfersScrollToContainer"))
  {
    goto LABEL_21;
  }

  v5 = [(UIGestureRecognizer *)self view];
  [(UIScrollViewPanGestureRecognizer *)self translationInView:v5];
  v31 = v7;
  v33 = v6;

  v8 = [v3 _canScrollX];
  v9 = [v3 _canScrollY];
  if ([v4 _canScrollX])
  {
    v10 = [v4 isScrollEnabled] ^ 1;
  }

  else
  {
    LOBYTE(v10) = 1;
  }

  v11 = [v4 _canScrollY] ? objc_msgSend(v4, "isScrollEnabled") : 0;
  [v3 contentInset];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  [v3 bounds];
  v21 = v20;
  v23 = v22;
  [v3 contentSize];
  v25 = v24;
  v27 = v26;
  v28 = [v3 _currentlyAbuttedContentEdges];
  if (v10 & 1 | ((v8 & 1) == 0) || v19 + v15 + v25 <= v21 || (v28 & 2) == 0 && (v28 & 8) == 0)
  {
    LOBYTE(v29) = 0;
    if ((v11 & v9) != 1 || v17 + v13 + v27 <= v23)
    {
      goto LABEL_22;
    }

    if ((v28 & 1) == 0 && (v28 & 4) == 0)
    {
LABEL_21:
      LOBYTE(v29) = 0;
      goto LABEL_22;
    }
  }

  if ((v33 <= 0.0 || ((v28 >> 1) & 1) == 0) | v10 & 1 && (v33 >= 0.0 || ((v28 >> 3) & 1) == 0) | v10 & 1 && (v28 & v11 & (v32 > 0.0)) == 0)
  {
    v29 = (v32 < 0.0) & (v28 >> 2) & v11;
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
  v3 = [WeakRetained isDecelerating];

  return v3;
}

- (UIScrollViewPanGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4
{
  v10.receiver = self;
  v10.super_class = UIScrollViewPanGestureRecognizer;
  v5 = [(UIPanGestureRecognizer *)&v10 initWithTarget:a3 action:?];
  v6 = v5;
  if (v5)
  {
    if (a4)
    {
      v7 = a4;
    }

    else
    {
      v7 = 0;
    }

    v5->_scrollViewAction = v7;
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

- (void)setDelegate:(id)a3
{
  v4 = a3;
  v5 = [(UIScrollViewPanGestureRecognizer *)self scrollView];
  v6 = v5;
  if (v5 && v5 != v4)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"UIScrollView's built-in pan gesture recognizer must have its scroll view as its delegate."];
  }

  v7.receiver = self;
  v7.super_class = UIScrollViewPanGestureRecognizer;
  [(UIPanGestureRecognizer *)&v7 setDelegate:v4];
}

- (void)removeTarget:(id)a3 action:(SEL)a4
{
  v6 = a3;
  v7 = [(UIScrollViewPanGestureRecognizer *)self scrollView];
  if (v7 == v6)
  {
    if (self->_scrollViewAction)
    {
      scrollViewAction = self->_scrollViewAction;
    }

    else
    {
      scrollViewAction = 0;
    }

    if (scrollViewAction == a4)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"You can't remove the scroll view's target/action pair from its built-in pan gesture recognizer."];
    }
  }

  else
  {
  }

  v9.receiver = self;
  v9.super_class = UIScrollViewPanGestureRecognizer;
  [(UIGestureRecognizer *)&v9 removeTarget:v6 action:a4];
}

- (void)setAllowedTouchTypes:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  v6 = [(UIGestureRecognizer *)self allowedTouchTypes];
  v7 = [v5 isEqualToArray:v6];

  if ((v7 & 1) == 0)
  {
    v14.receiver = self;
    v14.super_class = UIScrollViewPanGestureRecognizer;
    [(UIGestureRecognizer *)&v14 setAllowedTouchTypes:v5];
    v8 = [(UIGestureRecognizer *)self allowedTouchTypes];
    v9 = [(UIScrollViewPanGestureRecognizer *)self scrollView];
    [v9 _setAllowedTouchTypesForScrolling:v8];
  }

  v10 = [v5 containsObject:&unk_1EFE33E98];
  WeakRetained = objc_loadWeakRetained(&self->_directionalPressGestureRecognizer);
  [WeakRetained _setEnabledIfAllowed:v10];

  if (v10)
  {
    self->_indirectScrollingState = 1;
    v12 = objc_loadWeakRetained(&self->_directionalPressGestureRecognizer);
    v13 = [(UIGestureRecognizer *)self view];
    [v12 _addToViewIfAllowed:v13];
  }

  else if (self->_indirectScrollingState)
  {
    self->_indirectScrollingState = 2;
  }
}

- (void)setView:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = UIScrollViewPanGestureRecognizer;
  [(UIGestureRecognizer *)&v8 setView:v4];
  indirectScrollingState = self->_indirectScrollingState;
  if (indirectScrollingState)
  {
    WeakRetained = objc_loadWeakRetained(&self->_directionalPressGestureRecognizer);
    v7 = WeakRetained;
    if (v4 && indirectScrollingState == 1)
    {
      [WeakRetained _addToViewIfAllowed:v4];
    }

    else
    {
      [WeakRetained _resetToOriginalViewIfAllowed];
    }
  }
}

- (BOOL)_shouldContinueToWaitToTransferTrackingFromParentScrollView
{
  v3 = [(UIScrollViewPanGestureRecognizer *)self scrollView];
  v4 = [v3 _parentScrollView];
  if (([v4 isDragging] & 1) != 0 || (objc_msgSend(v4, "isDecelerating") & 1) != 0 || ((-[UIScrollViewPanGestureRecognizer translationInView:](self, "translationInView:", v3), v6 = v5, v8 = v7, v9 = objc_msgSend(v3, "_canScrollX"), v10 = objc_msgSend(v3, "_canScrollY"), !objc_msgSend(v4, "_canScrollX")) ? (v11 = 0) : (v11 = objc_msgSend(v4, "isScrollEnabled")), !objc_msgSend(v4, "_canScrollY") ? (v12 = 0) : (v12 = objc_msgSend(v4, "isScrollEnabled")), (v13 = objc_msgSend(v3, "_currentlyAbuttedContentEdges"), (*&v9 & ((v13 & 2) >> 1) & *&v11) == 1) && v6 > 0.0 || (*&v9 & ((v13 & 8) >> 3) & *&v11) == 1 && v6 < 0.0 || (v13 & v10 & v12 & 1) != 0 && v8 < 0.0))
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
  v2 = [(UIScrollViewPanGestureRecognizer *)self scrollView];
  v3 = [v2 _parentScrollView];
  [v3 _rectForPageContainingView:v2];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [v3 contentOffset];
  v13 = v12;
  v15 = v14;
  v16 = [v2 _currentlyAbuttedContentEdges];
  v23.origin.x = v5;
  v23.origin.y = v7;
  v23.size.width = v9;
  v23.size.height = v11;
  if (!CGRectIsEmpty(v23))
  {
    if ((v16 & 2) != 0 && (v24.origin.x = v5, v24.origin.y = v7, v24.size.width = v9, v24.size.height = v11, v13 > CGRectGetMinX(v24)) || (v16 & 8) != 0 && ([v3 bounds], v19 = v13 + v18, v25.origin.x = v5, v25.origin.y = v7, v25.size.width = v9, v25.size.height = v11, v19 < CGRectGetMaxX(v25)) || (v16 & 1) != 0 && (v26.origin.x = v5, v26.origin.y = v7, v26.size.width = v9, v26.size.height = v11, v15 > CGRectGetMinY(v26)))
    {
      v17 = 1;
      goto LABEL_12;
    }

    if ((v16 & 4) != 0)
    {
      [v3 bounds];
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

- (BOOL)_shouldReceiveTouch:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!self->super._lastTouchCount)
  {
    v8 = [(UIScrollViewPanGestureRecognizer *)self scrollView];
    self->_scrollViewCanScrubWithTouch = [v8 _canScrubWithTouch:v6];
  }

  if ([v7 _containsHIDPointerEvent])
  {
    if (!self->_scrollViewCanScrubWithTouch)
    {
      v9 = [(UIScrollViewPanGestureRecognizer *)self scrollView];
      v10 = [v9 _supportsPointerDragScrolling];

      if ((v10 & 1) == 0)
      {
        v13 = [(UIScrollViewPanGestureRecognizer *)self scrollView];
        if ([v13 isDecelerating])
        {
          v14 = [(UIScrollViewPanGestureRecognizer *)self scrollView];
          v15 = [v14 _isBouncing];

          if (v15)
          {
LABEL_12:
            v11 = 0;
            goto LABEL_7;
          }

          v13 = [(UIScrollViewPanGestureRecognizer *)self scrollView];
          [v13 _stopScrollingNotify:1 pin:0];
        }

        goto LABEL_12;
      }
    }
  }

  v11 = 1;
LABEL_7:

  return v11;
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v6 = a4;
  lastTouchCount = self->super._lastTouchCount;
  v8 = a3;
  self->_modifierFlags = [v6 _modifierFlags];
  v9.receiver = self;
  v9.super_class = UIScrollViewPanGestureRecognizer;
  [(UIPanGestureRecognizer *)&v9 touchesBegan:v8 withEvent:v6];

  if (!lastTouchCount)
  {
    [(UIScrollViewPanGestureRecognizer *)self _beginScrollWithEvent:v6];
  }

  *(self + 488) &= 0xFCu;
  if ([(UIGestureRecognizer *)self state]== UIGestureRecognizerStatePossible && [(UIScrollViewPanGestureRecognizer *)self _shouldTryToBeginWithEvent:v6])
  {
    [(UIPanGestureRecognizer *)self _removeHysteresisFromTranslation];
    [(UIGestureRecognizer *)self setState:1];
  }
}

- (void)_beginScrollWithEvent:(id)a3
{
  v6 = [(UIScrollViewPanGestureRecognizer *)self scrollView];
  if ([v6 _shouldBeginScroll])
  {
    if ([v6 _shouldTrackImmediatelyWhileDecelerating])
    {
      *(self + 488) |= 0x20u;
      [(UIGestureRecognizer *)self setState:1];
    }

    else
    {
      [v6 _clearParentAdjustment];
    }

    *(self + 488) = *(self + 488) & 0xF3 | (4 * (*(self + 488) & 3));
  }

  if ([(UIScrollViewPanGestureRecognizer *)self _canTransferTrackingFromParentPagingScrollView])
  {
    *(self + 488) |= 0x80u;
  }

  v4 = [v6 _parentScrollView];
  if (v4)
  {
    *(self + 488) |= 0x10u;
  }

  else
  {
    v5 = [v6 _actingParentScrollView];
    *(self + 488) = *(self + 488) & 0xEF | (16 * (v5 != 0));
  }

  *(self + 488) &= 0xFCu;
}

- (CGPoint)_adjustSceneReferenceLocation:(CGPoint)a3
{
  v5 = (*(self + 488) >> 2) & 3;
  if (v5)
  {

    v6 = [(UIPanGestureRecognizer *)self _shiftPanLocationToNewSceneReferenceLocation:v5 lockingToAxis:a3.x, a3.y];
  }

  else
  {
    v9 = v3;
    v10 = v4;
    v8.receiver = self;
    v8.super_class = UIScrollViewPanGestureRecognizer;
    [(UIPanGestureRecognizer *)&v8 _adjustSceneReferenceLocation:a3.x, a3.y];
  }

  result.y = v7;
  result.x = v6;
  return result;
}

- (void)_centroidMovedTo:(CGPoint)a3 atTime:(double)a4 affectingTranslation:(BOOL)a5
{
  v5 = a5;
  y = a3.y;
  x = a3.x;
  if ((*(self + 488) & 0x40) == 0)
  {
    goto LABEL_30;
  }

  if (!a5)
  {
    goto LABEL_30;
  }

  lastTouchTime = self->super._lastTouchTime;
  if (([(UIGestureRecognizer *)self _state]- 1) <= 2 && self->_reconsideredLockingLocation.x == 9.22337204e18 && a4 - lastTouchTime < 0.6)
  {
    goto LABEL_30;
  }

  v11 = [(UIPanGestureRecognizer *)self _offsetInViewFromSceneReferenceLocation:self->super._lastUnadjustedSceneReferenceLocation.y toSceneReferenceLocation:x, y];
  v13 = v12;
  v14 = [(UIScrollViewPanGestureRecognizer *)self scrollView];
  if (v11 != 0.0 && v13 != 0.0)
  {
    v15 = v13 / v11;
    v16 = atanf(fabsf(v15));
    if (!-[UIPanGestureRecognizer _canPanHorizontally](self, "_canPanHorizontally") || ![v14 _canScrollX] || v16 > 0.34906585)
    {
      if (!-[UIPanGestureRecognizer _canPanVertically](self, "_canPanVertically") || ![v14 _canScrollY] || v16 < 1.22173048)
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

  if (v13 == 0.0 && v11 != 0.0 && -[UIPanGestureRecognizer _canPanHorizontally](self, "_canPanHorizontally") && ([v14 _canScrollX] & 1) != 0)
  {
    goto LABEL_19;
  }

  if (v11 == 0.0 && v13 != 0.0 && -[UIPanGestureRecognizer _canPanVertically](self, "_canPanVertically") && [v14 _canScrollY])
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
  [(UIPanGestureRecognizer *)&v22 _centroidMovedTo:v5 atTime:x affectingTranslation:y, a4];
}

- (CGPoint)_convertPoint:(CGPoint)a3 toSceneReferenceCoordinatesFromView:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_scrollView);
  v9 = [WeakRetained _relativePanView];

  v10 = [(UIGestureRecognizer *)self view];

  if (v10 == v7 && v9)
  {
    v11 = v9;

    v7 = v11;
  }

  v18.receiver = self;
  v18.super_class = UIScrollViewPanGestureRecognizer;
  [(UIPanGestureRecognizer *)&v18 _convertPoint:v7 toSceneReferenceCoordinatesFromView:x, y];
  v13 = v12;
  v15 = v14;

  v16 = v13;
  v17 = v15;
  result.y = v17;
  result.x = v16;
  return result;
}

- (CGPoint)_convertPoint:(CGPoint)a3 fromSceneReferenceCoordinatesToView:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_scrollView);
  v9 = [WeakRetained _relativePanView];

  v10 = [(UIGestureRecognizer *)self view];

  if (v10 == v7 && v9)
  {
    v11 = v9;

    v7 = v11;
  }

  v18.receiver = self;
  v18.super_class = UIScrollViewPanGestureRecognizer;
  [(UIPanGestureRecognizer *)&v18 _convertPoint:v7 fromSceneReferenceCoordinatesToView:x, y];
  v13 = v12;
  v15 = v14;

  v16 = v13;
  v17 = v15;
  result.y = v17;
  result.x = v16;
  return result;
}

- (CGPoint)translationInView:(id)a3
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
    [(UIPanGestureRecognizer *)&v9 translationInView:a3];
    discreteFastScrollMultiplier = self->_discreteFastScrollMultiplier;
    v6 = v5 * discreteFastScrollMultiplier;
    v8 = v7 * discreteFastScrollMultiplier;
  }

  result.y = v8;
  result.x = v6;
  return result;
}

- (CGPoint)velocityInView:(id)a3
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
    [(UIPanGestureRecognizer *)&v8 velocityInView:a3];
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

- (CGPoint)_velocityIncludingDiscreteScrollInView:(id)a3
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
    [(UIPanGestureRecognizer *)&v5 velocityInView:a3];
  }

  result.y = v4;
  result.x = v3;
  return result;
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(UIGestureRecognizer *)self state];
  self->_modifierFlags = [v6 _modifierFlags];
  v12.receiver = self;
  v12.super_class = UIScrollViewPanGestureRecognizer;
  [(UIPanGestureRecognizer *)&v12 touchesMoved:v7 withEvent:v6];

  [(UIScrollViewPanGestureRecognizer *)self _handleCaughtDeceleratingScrollViewWithEvent:v6];
  if (v8 == UIGestureRecognizerStatePossible && [(UIGestureRecognizer *)self state]== UIGestureRecognizerStateBegan)
  {
    v9 = [(UIScrollViewPanGestureRecognizer *)self scrollView];
    v10 = [v6 touchesForGestureRecognizer:self];
    v11 = [v9 _canCancelContentTouches:v10];

    if ((v11 & 1) == 0)
    {
      [(UIGestureRecognizer *)self _failWithReason:@"contentTouchDelivery"];
    }
  }
}

- (void)_handleCaughtDeceleratingScrollViewWithEvent:(id)a3
{
  v4 = a3;
  if ((*(self + 488) & 0x20) != 0)
  {
    *(self + 488) &= ~0x20u;
    v6 = v4;
    if ([(UIScrollViewPanGestureRecognizer *)self _shouldTryToBeginWithEvent:v4])
    {
      if ((*(&self->super.super._gestureFlags + 4) & 0x10) != 0)
      {
        [(UIPanGestureRecognizer *)self _removeHysteresisFromTranslation];
        v5 = [(UIScrollViewPanGestureRecognizer *)self scrollView];
        [v5 _adjustStartOffsetForGrabbedBouncingScrollView];
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

    v4 = v6;
  }
}

- (BOOL)_isParentScrollView:(id)a3 consideringEvent:(id)a4
{
  v6 = a4;
  v7 = [a3 _panGestureRecognizer];
  if (!v7)
  {
    goto LABEL_6;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = 1 << [v6 _scrollType];
      v10 = ([v7 allowedScrollTypesMask] & v11) != 0;
      goto LABEL_7;
    }

LABEL_6:
    v10 = 0;
    goto LABEL_7;
  }

  v8 = [v6 touchesForGestureRecognizer:v7];
  v9 = [MEMORY[0x1E695DFD8] setWithArray:self->super._touches];
  v10 = [v8 intersectsSet:v9];

LABEL_7:
  return v10;
}

- (BOOL)_shouldTryToBeginWithEvent:(id)a3
{
  v4 = a3;
  v55.receiver = self;
  v55.super_class = UIScrollViewPanGestureRecognizer;
  if ([(UIPanGestureRecognizer *)&v55 _shouldTryToBeginWithEvent:v4])
  {
    v5 = [(UIScrollViewPanGestureRecognizer *)self scrollView];
    if ([v5 _canScrollX])
    {
      v6 = [(UIPanGestureRecognizer *)self _canPanHorizontally];
    }

    else
    {
      v6 = 0;
    }

    if ([v5 _canScrollY])
    {
      v8 = [(UIPanGestureRecognizer *)self _canPanVertically];
    }

    else
    {
      v8 = 0;
    }

    v9 = [(UIPanGestureRecognizer *)self _willScrollX];
    v10 = [(UIPanGestureRecognizer *)self _willScrollY];
    v11 = [(UIGestureRecognizer *)self view];
    [(UIScrollViewPanGestureRecognizer *)self translationInView:v11];
    v13 = v12;
    v15 = v14;

    if (!v6 && !v8 || !v6 && v8 && !v10 || !v8 && v6 && !v9)
    {
      goto LABEL_47;
    }

    if ((*(self + 488) & 0x10) == 0)
    {
LABEL_43:
      v7 = [v5 _delegateShouldPanGestureTryToBegin];
LABEL_48:

      goto LABEL_49;
    }

    v16 = [v5 _actingParentScrollView];
    v17 = v16;
    if (v16)
    {
      v18 = v16;
    }

    else
    {
      v18 = [v5 _parentScrollView];
    }

    v19 = v18;

    if (![(UIScrollViewPanGestureRecognizer *)self _isParentScrollView:v19 consideringEvent:v4])
    {
LABEL_42:

      goto LABEL_43;
    }

    v53 = [v5 _currentlyAbuttedContentEdges];
    if (*(self + 488) < 0)
    {
      if ([(UIScrollViewPanGestureRecognizer *)self _shouldTransferTrackingFromParentScrollViewForCurrentOffset])
      {
        [v19 contentOffset];
        v21 = v20;
        v23 = v22;
        [v19 _pinContentOffsetToClosestPageBoundary];
        v24 = [v19 panGestureRecognizer];
        [(UIGestureRecognizer *)v24 _cancelRecognition];

        v26 = [v19 pinchGestureRecognizer];
        [(UIGestureRecognizer *)v26 _cancelRecognition];

        [v19 contentOffset];
        if ((v53 & 2) != 0 || (v53 & 8) != 0)
        {
          v30 = v21 - v28;
          v31 = 0.0;
        }

        else if ((v53 & 1) != 0 || (v53 & 4) != 0)
        {
          v31 = v23 - v29;
          v30 = 0.0;
        }

        else
        {
          v30 = *MEMORY[0x1E695EFF8];
          v31 = *(MEMORY[0x1E695EFF8] + 8);
        }

        [(UIPanGestureRecognizer *)self setTranslation:v5 inView:v30, v31];
      }

      else if ([(UIScrollViewPanGestureRecognizer *)self _shouldContinueToWaitToTransferTrackingFromParentScrollView]|| (*(self + 488) &= ~0x80u, v54.receiver = self, v54.super_class = UIScrollViewPanGestureRecognizer, ![(UIPanGestureRecognizer *)&v54 _shouldTryToBeginWithEvent:v4]))
      {
LABEL_46:

LABEL_47:
        v7 = 0;
        goto LABEL_48;
      }
    }

    if ([v5 isPagingEnabled])
    {
      v32 = [v5 _abuttedPagingEdges];
      HIDWORD(v46) = (v32 >> 3) & 1;
      v49 = (v32 >> 1) & 1;
      v53 = v32;
      LODWORD(v46) = (v32 >> 2) & 1;
    }

    else
    {
      LODWORD(v46) = v53 >> 2;
      HIDWORD(v46) = v53 >> 3;
      LOBYTE(v49) = v53 >> 1;
    }

    v52 = [v5 _canScrollX];
    v33 = [v5 _canScrollY];
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
    v36 = [v5 transfersHorizontalScrollingToParent];
    v50 = [v5 transfersVerticalScrollingToParent];
    v37 = [(UIGestureRecognizer *)self view];
    [(UIScrollViewPanGestureRecognizer *)self _hysteresis];
    v39 = v38;
    [(UIScrollViewPanGestureRecognizer *)self _hysteresis];
    [v37 convertSize:0 fromView:{v39, v40}];
    v42 = v41;
    v44 = v43;

    if ((((v33 & v10 | v34) & 1) != 0 || !v36 || v52 && ((v13 >= v42) & v49) == 0 && ((v13 <= -v42) & v48) == 0) && (((v52 & v9 | v51) & 1) != 0 || ((v50 ^ 1) & 1) != 0 || v33 && ((v15 >= v44) & v53) == 0 && ((v15 <= -v44) & v47) != 1))
    {
      goto LABEL_42;
    }

    goto LABEL_46;
  }

  v7 = 0;
LABEL_49:

  return v7;
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  v6.receiver = self;
  v6.super_class = UIScrollViewPanGestureRecognizer;
  [(UIPanGestureRecognizer *)&v6 touchesCancelled:a3 withEvent:a4];
  if (![(UIPanGestureRecognizer *)self numberOfTouches])
  {
    v5 = [(UIScrollViewPanGestureRecognizer *)self scrollView];
    [v5 cancelTouchTracking];
  }
}

- (BOOL)canBePreventedByGestureRecognizer:(id)a3
{
  v4 = a3;
  if (*(self + 488) < 0 && (-[UIScrollViewPanGestureRecognizer scrollView](self, "scrollView"), v5 = objc_claimAutoreleasedReturnValue(), [v5 _parentScrollView], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "_panGestureRecognizer"), v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v5, v7 == v4))
  {
    isKindOfClass = 0;
  }

  else if (self->_scrollViewCanScrubWithTouch)
  {
    v8 = [v4 view];
    v9 = [(UIScrollViewPanGestureRecognizer *)self scrollView];
    if ([v8 isDescendantOfView:v9])
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

- (BOOL)shouldBeRequiredToFailByGestureRecognizer:(id)a3
{
  if (self->_scrollViewCanScrubWithTouch)
  {
    v3 = a3;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    v5 = isKindOfClass ^ 1;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = UIScrollViewPanGestureRecognizer;
    v6 = a3;
    v5 = [(UIGestureRecognizer *)&v8 shouldBeRequiredToFailByGestureRecognizer:v6];
  }

  return v5 & 1;
}

- (void)_scrollViewDidEndZooming
{
  v3 = [(UIScrollViewPanGestureRecognizer *)self scrollView];
  [(UIPanGestureRecognizer *)self setTranslation:v3 inView:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)];

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

- (void)setDirectionalLockEnabled:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *(self + 488) = *(self + 488) & 0xBF | v3;
}

- (BOOL)shouldReceiveEvent:(id)a3
{
  v4 = a3;
  if ([v4 type] == 10)
  {
    v5 = [(UIScrollViewPanGestureRecognizer *)self scrollView];
    v7.receiver = self;
    v7.super_class = UIScrollViewPanGestureRecognizer;
    LODWORD(self) = [(UIPanGestureRecognizer *)&v7 shouldReceiveEvent:v4];
    if (self && ([v5 isTracking] & 1) == 0)
    {
      [v5 _beginTrackingWithEvent:v4];
    }
  }

  else
  {
    v8.receiver = self;
    v8.super_class = UIScrollViewPanGestureRecognizer;
    LOBYTE(self) = [(UIPanGestureRecognizer *)&v8 shouldReceiveEvent:v4];
  }

  return self;
}

- (void)_scrollingChangedWithEvent:(id)a3
{
  v4 = a3;
  v5 = [v4 phase];
  v6 = [(UIGestureRecognizer *)self state];
  if (v6 == UIGestureRecognizerStateBegan && v5 == 5)
  {
    if ((!self || (*(&self->super.super._gestureFlags + 4) & 0x10) == 0) && (*(self + 488) & 0x20) != 0)
    {
      [(UIGestureRecognizer *)self setState:3];
    }

    v8.receiver = self;
    v8.super_class = UIScrollViewPanGestureRecognizer;
    [(UIPanGestureRecognizer *)&v8 _scrollingChangedWithEvent:v4];
    goto LABEL_10;
  }

  v8.receiver = self;
  v8.super_class = UIScrollViewPanGestureRecognizer;
  [(UIPanGestureRecognizer *)&v8 _scrollingChangedWithEvent:v4];
  if ((v5 - 1) < 2)
  {
    if (v6 == UIGestureRecognizerStatePossible)
    {
      self->_activeEventIsDiscrete = [v4 _scrollType] == 0;
      [(UIScrollViewPanGestureRecognizer *)self _beginScrollWithEvent:v4];
    }
  }

  else
  {
    if ((v5 - 4) < 2)
    {
LABEL_10:
      v7 = [(UIGestureRecognizer *)self state];
      if ((v7 - 1) > 1)
      {
        if (v7 == UIGestureRecognizerStatePossible)
        {
          [(UIGestureRecognizer *)self _failWithReason:@"scrollCancelled"];
        }
      }

      else
      {
        [(UIGestureRecognizer *)self setState:3];
      }

      if (v5 == 5)
      {
        [(UIPanGestureRecognizer *)self numberOfTouches];
      }

      self->_activeEventIsDiscrete = 0;
      goto LABEL_17;
    }

    if (v5 == 3)
    {
      [(UIScrollViewPanGestureRecognizer *)self _handleCaughtDeceleratingScrollViewWithEvent:v4];
    }
  }

LABEL_17:
}

- (id)_asyncDeliveryTargetForScrollEvent:(id)a3
{
  v4 = a3;
  v5 = [(UIScrollViewPanGestureRecognizer *)self scrollView];
  v6 = [v5 _asyncDeliveryTargetForScrollEvent:v4];

  return v6;
}

- (UIScrollViewDirectionalPressGestureRecognizer)directionalPressGestureRecognizer
{
  WeakRetained = objc_loadWeakRetained(&self->_directionalPressGestureRecognizer);

  return WeakRetained;
}

@end