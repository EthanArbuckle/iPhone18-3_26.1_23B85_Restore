@interface UITextRangeAdjustmentInteraction
- (BOOL)_gestureTuningEnabledForTouches:(id)a3;
- (BOOL)_pointCloserToEnd:(CGPoint)a3;
- (BOOL)_shouldApplyOffsetForTouchType:(int64_t)a3;
- (BOOL)_shouldDisplayLoupeForTouchType:(int64_t)a3;
- (BOOL)gestureRecognizer:(id)a3 shouldBeRequiredToFailByGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (CGPoint)_convertPointToViewCoordinateSpace:(CGPoint)a3;
- (CGPoint)basePoint;
- (CGPoint)extentPoint;
- (CGPoint)initialBasePoint;
- (CGPoint)initialExtentPoint;
- (CGPoint)initialPoint;
- (CGRect)_activeAdjustmentEdgeRect;
- (CGRect)initialEndCaretRect;
- (CGRect)initialStartCaretRect;
- (UITextRangeAdjustmentInteraction)initWithAdjustmentDelegate:(id)a3 gestureHostView:(id)a4;
- (UITextRangeAdjustmentInteractionDelegate)adjustmentDelegate;
- (id)_gestureView;
- (id)gestureRecognizerHostView;
- (id)selectionWidgetForPoint:(CGPoint)a3;
- (void)_activeTouchEnded;
- (void)_adjustmentInteractionBeganWithLocation:(CGPoint)a3 startPoint:(CGPoint)a4 forTouchType:(int64_t)a5;
- (void)_adjustmentInteractionCancelled;
- (void)_adjustmentInteractionChangedWithLocation:(CGPoint)a3 forTouchType:(int64_t)a4;
- (void)_adjustmentInteractionEndedAtLocation:(CGPoint)a3 forTouchType:(int64_t)a4;
- (void)_createGestureTuningIfNecessary;
- (void)_didRecognizeAdjustmentGesture:(id)a3;
- (void)_loupeSessionDidInvalidate:(id)a3;
- (void)_updateAdjustmentInteractionWithState:(int64_t)a3 location:(CGPoint)a4 locationOfFirstTouch:(CGPoint)a5 forTouchType:(int64_t)a6;
- (void)manuallyUpdateInteractionWithGestureState:(int64_t)a3 location:(CGPoint)a4 locationOfFirstTouch:(CGPoint)a5 forTouchType:(int64_t)a6;
- (void)setModelPosition:(CGPoint)a3;
- (void)updateBaseAndExtentPointsFromEdges;
@end

@implementation UITextRangeAdjustmentInteraction

- (id)gestureRecognizerHostView
{
  WeakRetained = objc_loadWeakRetained(&self->_gestureHostView);

  return WeakRetained;
}

- (UITextRangeAdjustmentInteraction)initWithAdjustmentDelegate:(id)a3 gestureHostView:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = UITextRangeAdjustmentInteraction;
  v8 = [(UITextInteraction *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_adjustmentDelegate, v6);
    objc_storeWeak(&v9->_gestureHostView, v7);
    v10 = [(UIPanGestureRecognizer *)[UITextRangeAdjustmentGestureRecognizer alloc] initWithTarget:v9 action:sel__didRecognizeAdjustmentGesture_];
    adjustmentGestureRecognizer = v9->_adjustmentGestureRecognizer;
    v9->_adjustmentGestureRecognizer = v10;

    [(UIPanGestureRecognizer *)v9->_adjustmentGestureRecognizer _setHysteresis:1.0];
    [(UIPanGestureRecognizer *)v9->_adjustmentGestureRecognizer setDelegate:v9];
    [(UIGestureRecognizer *)v9->_adjustmentGestureRecognizer setName:@"UITextRangeAdjustmentGestureRecognizer"];
    [(UITextInteraction *)v9 addGestureRecognizer:v9->_adjustmentGestureRecognizer withName:0x1EFBA7730];
  }

  return v9;
}

- (void)_didRecognizeAdjustmentGesture:(id)a3
{
  v25 = a3;
  v4 = [v25 _allActiveTouches];
  [(UITextRangeAdjustmentInteraction *)self _createGestureTuningIfNecessary];
  if ([(UITextRangeAdjustmentInteraction *)self _gestureTuningEnabledForTouches:v4])
  {
    -[UITextGestureTuning updateWithTouches:gestureState:](self->_gestureTuning, "updateWithTouches:gestureState:", v4, [v25 state]);
  }

  if ([v25 state] == 1)
  {
    v5 = [v4 anyObject];
    [(UITextRangeAdjustmentInteraction *)self setActiveTouch:v5];
  }

  [v25 startPoint];
  [(UITextRangeAdjustmentInteraction *)self _convertPointToViewCoordinateSpace:?];
  v7 = v6;
  v9 = v8;
  v10 = [(UITextRangeAdjustmentInteraction *)self activeTouch];
  v11 = [(UITextRangeAdjustmentInteraction *)self _gestureView];
  [v10 locationInView:v11];
  v13 = v12;
  v15 = v14;

  [(UITextRangeAdjustmentInteraction *)self _convertPointToViewCoordinateSpace:v13, v15];
  v17 = v16;
  v19 = v18;
  v20 = [(UITextRangeAdjustmentInteraction *)self activeTouch];
  v21 = [v20 type];

  v22 = [(UITextRangeAdjustmentInteraction *)self activeTouch];
  v23 = [v22 _isPointerTouch];

  if (v23)
  {
    v24 = 3;
  }

  else
  {
    v24 = v21;
  }

  -[UITextRangeAdjustmentInteraction _updateAdjustmentInteractionWithState:location:locationOfFirstTouch:forTouchType:](self, "_updateAdjustmentInteractionWithState:location:locationOfFirstTouch:forTouchType:", [v25 state], v24, v17, v19, v7, v9);
}

- (BOOL)gestureRecognizer:(id)a3 shouldBeRequiredToFailByGestureRecognizer:(id)a4
{
  v4 = a4;
  if ([v4 _isGestureType:10] & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    isKindOfClass = 1;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

- (void)_createGestureTuningIfNecessary
{
  if (!self->_gestureTuning)
  {
    v3 = objc_alloc_init(UITextGestureTuning);
    gestureTuning = self->_gestureTuning;
    self->_gestureTuning = v3;

    [(UITextGestureTuning *)self->_gestureTuning setShouldUseLineThreshold:1];
    [(UITextGestureTuning *)self->_gestureTuning setStrongerBiasAgainstUp:1];
    v5 = [(UITextInteraction *)self view];
    [(UITextGestureTuning *)self->_gestureTuning setGestureCoordinateSpace:v5];

    v7 = [(UITextRangeAdjustmentInteraction *)self adjustmentDelegate];
    v6 = [v7 containerCoordinateSpaceForTextRangeAdjustmentInteraction:self];
    [(UITextGestureTuning *)self->_gestureTuning setContainerCoordinateSpace:v6];
  }
}

- (BOOL)_gestureTuningEnabledForTouches:(id)a3
{
  if (!self->_gestureTuning)
  {
    return 0;
  }

  v3 = self;
  v4 = [a3 anyObject];
  LOBYTE(v3) = -[UITextRangeAdjustmentInteraction _shouldApplyOffsetForTouchType:](v3, "_shouldApplyOffsetForTouchType:", [v4 type]);

  return v3;
}

- (id)_gestureView
{
  v2 = [(UITextInteraction *)self view];
  v3 = [v2 textInputView];

  return v3;
}

- (CGPoint)_convertPointToViewCoordinateSpace:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(UITextRangeAdjustmentInteraction *)self _gestureView];
  if ([UIApp _isSpringBoard])
  {
    v7 = [v6 window];
    v8 = [v7 _hostingWindow];

    if (v8)
    {
      v9 = [(UITextRangeAdjustmentInteraction *)self activeTouch];
      v10 = v9;
      if (v9)
      {
        v11 = *(v9 + 360);
      }

      else
      {
        v11 = 0;
      }

      v12 = v11;
      [v6 convertPoint:v12 toView:{x, y}];
      v14 = v13;
      v16 = v15;

      v17 = [v6 window];
      [v17 convertPoint:v6 toView:{v14, v16}];
      x = v18;
      y = v19;
    }
  }

  v20 = x;
  v21 = y;
  result.y = v21;
  result.x = v20;
  return result;
}

- (BOOL)_pointCloserToEnd:(CGPoint)a3
{
  v41 = a3;
  v42 = *&a3.y;
  WeakRetained = objc_loadWeakRetained(&self->_adjustmentDelegate);
  [WeakRetained paddedTextRangeAdjustmentHitRegionForEdge:0 precision:0];
  v51 = v5;
  v53 = v6;
  rect = v7;
  v49 = v8;

  v9 = objc_loadWeakRetained(&self->_adjustmentDelegate);
  [v9 paddedTextRangeAdjustmentHitRegionForEdge:1 precision:0];
  v43 = v11;
  v44 = v10;
  v45 = v13;
  v46 = v12;

  v55.origin.x = v51;
  v55.origin.y = v53;
  v55.size.width = rect;
  v55.size.height = v49;
  if (CGRectIsNull(v55) || (v56.size.width = v43, v56.origin.x = v44, v56.size.height = v45, v56.origin.y = v46, CGRectIsNull(v56)))
  {
    v14 = objc_loadWeakRetained(&self->_adjustmentDelegate);
    [v14 textRangeAdjustmentRectForEdge:{0, v41, v42}];
    v52 = v15;
    v54 = v16;
    recta = v17;
    v50 = v18;

    v19 = objc_loadWeakRetained(&self->_adjustmentDelegate);
    [v19 textRangeAdjustmentRectForEdge:1];
    v43 = v21;
    v44 = v20;
    v45 = v23;
    v46 = v22;

    v24 = recta;
    v26 = v50;
    v25 = v52;
    v27 = v54;
  }

  else
  {
    v25 = v51;
    v27 = v53;
    v26 = v49;
    v24 = rect;
  }

  v28.f64[0] = v43;
  v29.f64[0] = v44;
  v28.f64[1] = v24;
  __asm { FMOV            V0.2D, #0.5 }

  v29.f64[1] = v25;
  v35 = vaddq_f64(v29, vmulq_f64(v28, _Q0));
  v36.f64[0] = v45;
  v29.f64[0] = v46;
  v36.f64[1] = v26;
  v29.f64[1] = v27;
  v37 = vsubq_f64(v35, vdupq_lane_s64(*&v41.x, 0));
  v38 = vsubq_f64(vaddq_f64(v29, vmulq_f64(v36, _Q0)), vdupq_lane_s64(v42, 0));
  v39 = vsqrtq_f64(vaddq_f64(vmulq_f64(v37, v37), vmulq_f64(v38, v38)));
  return vmovn_s64(vcgtq_f64(vdupq_laneq_s64(v39, 1), v39)).u8[0] & 1;
}

- (void)updateBaseAndExtentPointsFromEdges
{
  v3 = [(UITextRangeAdjustmentInteraction *)self adjustmentDelegate];
  [v3 textRangeAdjustmentRectForEdge:0];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [(UITextRangeAdjustmentInteraction *)self adjustmentDelegate];
  [v12 textRangeAdjustmentRectForEdge:1];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  [(UITextRangeAdjustmentInteraction *)self setInitialStartCaretRect:v5, v7, v9, v11];
  [(UITextRangeAdjustmentInteraction *)self setInitialEndCaretRect:v14, v16, v18, v20];
  v21 = [(UITextRangeAdjustmentInteraction *)self baseIsStart];
  if (v21)
  {
    v22 = v7;
  }

  else
  {
    v22 = v16;
  }

  if (v21)
  {
    v23 = v11;
  }

  else
  {
    v23 = v20;
  }

  if (v21)
  {
    v24 = v5;
  }

  else
  {
    v24 = v14;
  }

  if (v21)
  {
    v25 = v9;
  }

  else
  {
    v25 = v18;
  }

  if (v21)
  {
    v7 = v16;
    v11 = v20;
    v5 = v14;
    v9 = v18;
  }

  [(UITextRangeAdjustmentInteraction *)self setBasePoint:v24 + v25 * 0.5, v22 + v23 * 0.5];

  [(UITextRangeAdjustmentInteraction *)self setExtentPoint:v5 + v9 * 0.5, v7 + v11 * 0.5];
}

- (BOOL)_shouldApplyOffsetForTouchType:(int64_t)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_adjustmentDelegate);
  v6 = [WeakRetained textRangeAdjustmentInteractionShouldApplyTouchOffset:self];

  if (a3 == 3)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

- (BOOL)_shouldDisplayLoupeForTouchType:(int64_t)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_adjustmentDelegate);
  LOBYTE(a3) = [WeakRetained textRangeAdjustmentInteraction:self shouldDisplayLoupeForTouchType:a3];

  return a3;
}

- (void)_updateAdjustmentInteractionWithState:(int64_t)a3 location:(CGPoint)a4 locationOfFirstTouch:(CGPoint)a5 forTouchType:(int64_t)a6
{
  if (a3 > 3)
  {
    if ((a3 - 4) < 2)
    {
      [(UITextRangeAdjustmentInteraction *)self _adjustmentInteractionCancelled:a4.x];
    }
  }

  else
  {
    switch(a3)
    {
      case 1:
        [(UITextRangeAdjustmentInteraction *)self _adjustmentInteractionBeganWithLocation:a6 startPoint:a4.x forTouchType:a4.y, a5.x, a5.y];
        break;
      case 2:
        [(UITextRangeAdjustmentInteraction *)self _adjustmentInteractionChangedWithLocation:a6 forTouchType:a4.x, a4.y, a5.x, a5.y];
        break;
      case 3:
        [(UITextRangeAdjustmentInteraction *)self _adjustmentInteractionEndedAtLocation:a6 forTouchType:a4.x, a4.y, a5.x, a5.y];
        break;
    }
  }
}

- (CGRect)_activeAdjustmentEdgeRect
{
  WeakRetained = objc_loadWeakRetained(&self->_adjustmentDelegate);
  [WeakRetained textRangeAdjustmentRectForEdge:0];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = objc_loadWeakRetained(&self->_adjustmentDelegate);
  [v12 textRangeAdjustmentRectForEdge:1];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  baseIsStart = self->_baseIsStart;
  if (![(UITextRangeAdjustmentInteraction *)self clientFlipsBaseIsStart]&& (CGRectNearlyEqualToRectWithTolerance() & 1) == 0)
  {
    baseIsStart ^= CGRectNearlyEqualToRectWithTolerance() ^ 1;
  }

  if (baseIsStart)
  {
    v22 = v16;
  }

  else
  {
    v22 = v7;
  }

  if (baseIsStart)
  {
    v23 = v14;
  }

  else
  {
    v23 = v5;
  }

  if (baseIsStart)
  {
    v24 = v18;
  }

  else
  {
    v24 = v9;
  }

  if (baseIsStart)
  {
    v25 = v20;
  }

  else
  {
    v25 = v11;
  }

  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v22;
  result.origin.x = v23;
  return result;
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v6 = a4;
  if (a3)
  {
    v7 = *(a3 + 24);
  }

  else
  {
    v7 = 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_adjustmentDelegate);
  v9 = [WeakRetained containerCoordinateSpaceForTextRangeAdjustmentInteraction:self];

  [v6 locationInView:v9];
  v11 = v10;
  v13 = v12;

  v14 = objc_loadWeakRetained(&self->_adjustmentDelegate);
  [v14 paddedTextRangeAdjustmentHitRegionForEdge:0 precision:v7];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v36.origin.x = v16;
  v36.origin.y = v18;
  v36.size.width = v20;
  v36.size.height = v22;
  v34.x = v11;
  v34.y = v13;
  if (CGRectContainsPoint(v36, v34))
  {
    v23 = 1;
  }

  else
  {
    v24 = objc_loadWeakRetained(&self->_adjustmentDelegate);
    [v24 paddedTextRangeAdjustmentHitRegionForEdge:1 precision:v7];
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v32 = v31;

    v37.origin.x = v26;
    v37.origin.y = v28;
    v37.size.width = v30;
    v37.size.height = v32;
    v35.x = v11;
    v35.y = v13;
    v23 = CGRectContainsPoint(v37, v35);
  }

  return v23;
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = [(UITextRangeAdjustmentInteraction *)self _gestureView];
  [v4 locationInView:v5];
  v7 = v6;
  v9 = v8;

  WeakRetained = objc_loadWeakRetained(&self->_adjustmentDelegate);
  LOBYTE(self) = [WeakRetained textRangeAdjustmentInteraction:self shouldBeginAtPoint:{v7, v9}];

  return self;
}

- (void)_adjustmentInteractionBeganWithLocation:(CGPoint)a3 startPoint:(CGPoint)a4 forTouchType:(int64_t)a5
{
  y = a4.y;
  x = a4.x;
  [(UITextRangeAdjustmentInteraction *)self setInitialPoint:a4.x, a4.y];
  v9 = [(UITextRangeAdjustmentInteraction *)self adjustmentDelegate];
  v40 = [v9 containerCoordinateSpaceForTextRangeAdjustmentInteraction:self];

  v10 = [(UITextRangeAdjustmentInteraction *)self _gestureView];
  [v40 convertPoint:v10 fromCoordinateSpace:{x, y}];
  v12 = v11;
  v14 = v13;

  self->_baseIsStart = [(UITextRangeAdjustmentInteraction *)self _pointCloserToEnd:v12, v14];
  [(UITextRangeAdjustmentInteraction *)self updateBaseAndExtentPointsFromEdges];
  [(UITextRangeAdjustmentInteraction *)self extentPoint];
  self->_initialExtentPoint.x = v15;
  self->_initialExtentPoint.y = v16;
  [(UITextRangeAdjustmentInteraction *)self basePoint];
  [(UITextRangeAdjustmentInteraction *)self setInitialBasePoint:?];
  [(UITextRangeAdjustmentInteraction *)self initialBasePoint];
  v18 = v17;
  v20 = v19;
  [(UITextRangeAdjustmentInteraction *)self initialExtentPoint];
  [(UITextRangeAdjustmentInteraction *)self setInitialDistance:sqrt((v21 - v18) * (v21 - v18) + (v22 - v20) * (v22 - v20))];
  [(UITextRangeAdjustmentInteraction *)self setFirstMovedTime:-1.0];
  [(UITextRangeAdjustmentInteraction *)self setExtentPoint:x, y];
  v23 = [(UITextRangeAdjustmentInteraction *)self adjustmentDelegate];
  [v23 textRangeAdjustmentInteraction:self didBeginAtPoint:{x, y}];

  [(UITextRangeAdjustmentInteraction *)self _activeAdjustmentEdgeRect];
  [(UITextGestureTuning *)self->_gestureTuning assertInitialPositionFromTopOfCaret:y - v27 distanceFromCaret:x - (v25 + v24 * 0.5), y - (v27 + v26 * 0.5)];
  if ([(UITextRangeAdjustmentInteraction *)self _shouldDisplayLoupeForTouchType:a5])
  {
    v28 = [(UITextRangeAdjustmentInteraction *)self _gestureView];
    if (objc_opt_respondsToSelector())
    {
      v29 = [v28 _rangeAdjustmentGestureView];

      v28 = v29;
    }

    if ([(UITextRangeAdjustmentInteraction *)self _shouldApplyOffsetForTouchType:a5])
    {
      gestureTuning = self->_gestureTuning;
      [(UITextRangeAdjustmentInteraction *)self initialPoint];
      [(UITextGestureTuning *)gestureTuning touchAlignedPointForPoint:x translation:y, x - v31, y - v32];
      x = v33;
      y = v34;
    }

    v35 = [(UITextRangeAdjustmentInteraction *)self adjustmentDelegate];
    v36 = [v35 loupeOrientationForTextRangeAdjustmentInteraction:self];

    v37 = [(UITextRangeAdjustmentInteraction *)self selectionWidgetForPoint:x, y];
    v38 = [UITextLoupeSession _beginLoupeSessionAtPoint:v37 fromSelectionWidgetView:v28 inView:v36 orientation:x, y];
    loupeSession = self->_loupeSession;
    self->_loupeSession = v38;

    [(UITextLoupeSession *)self->_loupeSession setDelegate:self];
    [(UITextLoupeSession *)self->_loupeSession setGestureTuning:self->_gestureTuning];
  }
}

- (void)setModelPosition:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(UITextLoupeSession *)self->_loupeSession delegate];

  if (!v6)
  {
    [(UITextLoupeSession *)self->_loupeSession setDelegate:self];
  }

  loupeSession = self->_loupeSession;

  [(UITextLoupeSession *)loupeSession setModelPosition:x, y];
}

- (void)_loupeSessionDidInvalidate:(id)a3
{
  loupeSession = self->_loupeSession;
  if (loupeSession == a3)
  {
    self->_loupeSession = 0;
  }
}

- (id)selectionWidgetForPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(UITextRangeAdjustmentInteraction *)self adjustmentDelegate];
  v7 = [v6 containerCoordinateSpaceForTextRangeAdjustmentInteraction:self];

  v8 = [(UITextRangeAdjustmentInteraction *)self _gestureView];
  [v7 convertPoint:v8 fromCoordinateSpace:{x, y}];
  v10 = v9;
  v12 = v11;

  LODWORD(v8) = [(UITextRangeAdjustmentInteraction *)self _pointCloserToEnd:v10, v12];
  v13 = [(UITextRangeAdjustmentInteraction *)self adjustmentDelegate];
  WeakRetained = objc_loadWeakRetained(&self->_adjustmentDelegate);
  v15 = [WeakRetained textRangeAdjustmentViewForEdge:v8];

  return v15;
}

- (void)_adjustmentInteractionChangedWithLocation:(CGPoint)a3 forTouchType:(int64_t)a4
{
  y = a3.y;
  x = a3.x;
  if ([(UITextRangeAdjustmentInteraction *)self _shouldApplyOffsetForTouchType:a4])
  {
    gestureTuning = self->_gestureTuning;
    [(UITextRangeAdjustmentInteraction *)self initialPoint];
    [(UITextGestureTuning *)gestureTuning touchAlignedPointForPoint:x translation:y, x - v8, y - v9];
    x = v10;
    y = v11;
  }

  v18 = [(UITextRangeAdjustmentInteraction *)self selectionWidgetForPoint:x, y];
  loupeSession = self->_loupeSession;
  [(UITextRangeAdjustmentInteraction *)self _activeAdjustmentEdgeRect];
  [(UITextLoupeSession *)loupeSession _moveToPoint:v18 withCaretRect:1 selectionWidget:x trackingCaret:y, v13, v14, v15, v16];
  [(UITextRangeAdjustmentInteraction *)self setExtentPoint:x, y];
  v17 = [(UITextRangeAdjustmentInteraction *)self adjustmentDelegate];
  [(UITextRangeAdjustmentInteraction *)self extentPoint];
  [v17 textRangeAdjustmentInteraction:self selectionMoved:? withTouchPoint:?];
}

- (void)_adjustmentInteractionEndedAtLocation:(CGPoint)a3 forTouchType:(int64_t)a4
{
  y = a3.y;
  x = a3.x;
  if ([(UITextRangeAdjustmentInteraction *)self _shouldApplyOffsetForTouchType:a4])
  {
    [(UITextGestureTuning *)self->_gestureTuning pointIfPlacedCarefully:x, y];
    v8 = v7;
    v10 = v9;
    gestureTuning = self->_gestureTuning;
    [(UITextRangeAdjustmentInteraction *)self initialPoint];
    [(UITextGestureTuning *)gestureTuning touchAlignedPointForPoint:v8 translation:v10, v8 - v12, v10 - v13];
    x = v14;
    y = v15;
  }

  v16 = [(UITextRangeAdjustmentInteraction *)self adjustmentDelegate];
  [v16 textRangeAdjustmentInteraction:self didEndAtPoint:{x, y}];

  [(UITextRangeAdjustmentInteraction *)self _activeTouchEnded];
}

- (void)_adjustmentInteractionCancelled
{
  v3 = [(UITextRangeAdjustmentInteraction *)self adjustmentDelegate];
  [v3 textRangeAdjustmentInteractionWasCancelled:self];

  [(UITextRangeAdjustmentInteraction *)self _activeTouchEnded];
}

- (void)_activeTouchEnded
{
  objc_initWeak(&location, self);
  objc_initWeak(&from, self->_loupeSession);
  v3 = [(UITextRangeAdjustmentInteraction *)self adjustmentDelegate];
  v4 = [_UIBurnableBlock alloc];
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __53__UITextRangeAdjustmentInteraction__activeTouchEnded__block_invoke;
  v10 = &unk_1E71049B8;
  objc_copyWeak(&v11, &from);
  objc_copyWeak(&v12, &location);
  v5 = [(_UIBurnableBlock *)v4 initWithTimeout:&v7 block:0 defaultInputProvider:0.3];
  [v3 textRangeAdjustmentInteraction:self prepareForInvalidation:{v5, v7, v8, v9, v10}];

  activeTouch = self->_activeTouch;
  self->_activeTouch = 0;

  objc_destroyWeak(&v12);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

void __53__UITextRangeAdjustmentInteraction__activeTouchEnded__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained invalidate];

  v3 = objc_loadWeakRetained((a1 + 40));
  if (v3)
  {
    v8 = v3;
    v4 = v3[16];
    v5 = objc_loadWeakRetained((a1 + 32));
    if (v4 != v5)
    {
LABEL_3:

      v3 = v8;
      goto LABEL_5;
    }

    v6 = objc_loadWeakRetained((a1 + 32));
    v7 = [v6 delegate];

    v3 = v8;
    if (!v7)
    {
      v5 = v8[16];
      v8[16] = 0;
      goto LABEL_3;
    }
  }

LABEL_5:
}

- (void)manuallyUpdateInteractionWithGestureState:(int64_t)a3 location:(CGPoint)a4 locationOfFirstTouch:(CGPoint)a5 forTouchType:(int64_t)a6
{
  y = a5.y;
  x = a5.x;
  v9 = a4.y;
  v10 = a4.x;
  [(UITextRangeAdjustmentInteraction *)self _createGestureTuningIfNecessary];
  if ([(UITextRangeAdjustmentInteraction *)self _shouldApplyOffsetForTouchType:a6])
  {
    [(UITextGestureTuning *)self->_gestureTuning updateVisibilityOffsetForGestureState:a3 touchType:0 locationInSceneReferenceSpace:v10 majorRadius:v9, 1.0];
  }

  [(UITextRangeAdjustmentInteraction *)self _updateAdjustmentInteractionWithState:a3 location:a6 locationOfFirstTouch:v10 forTouchType:v9, x, y];
}

- (CGPoint)initialExtentPoint
{
  x = self->_initialExtentPoint.x;
  y = self->_initialExtentPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)extentPoint
{
  x = self->_extentPoint.x;
  y = self->_extentPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (UITextRangeAdjustmentInteractionDelegate)adjustmentDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_adjustmentDelegate);

  return WeakRetained;
}

- (CGPoint)initialPoint
{
  x = self->_initialPoint.x;
  y = self->_initialPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)basePoint
{
  x = self->_basePoint.x;
  y = self->_basePoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)initialBasePoint
{
  x = self->_initialBasePoint.x;
  y = self->_initialBasePoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGRect)initialStartCaretRect
{
  x = self->_initialStartCaretRect.origin.x;
  y = self->_initialStartCaretRect.origin.y;
  width = self->_initialStartCaretRect.size.width;
  height = self->_initialStartCaretRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)initialEndCaretRect
{
  x = self->_initialEndCaretRect.origin.x;
  y = self->_initialEndCaretRect.origin.y;
  width = self->_initialEndCaretRect.size.width;
  height = self->_initialEndCaretRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end