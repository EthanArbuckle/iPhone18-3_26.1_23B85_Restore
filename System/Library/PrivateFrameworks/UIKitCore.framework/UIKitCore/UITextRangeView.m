@interface UITextRangeView
- (BOOL)_endIsHorizontal;
- (BOOL)_startIsHorizontal;
- (BOOL)areSelectionRectsVisible;
- (BOOL)autoscrolled;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (BOOL)isDisplayingVerticalSelection;
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (CGPoint)activeTouchPoint;
- (CGPoint)basePoint;
- (CGPoint)convertFromMagnifierPoint:(CGPoint)a3;
- (CGPoint)extentPoint;
- (CGPoint)initialExtentPoint;
- (CGPoint)magnifierPoint;
- (CGRect)_edgeHitRectForEdgeRect:(CGRect)a3 grabber:(id)a4 precision:(unint64_t)a5;
- (CGRect)_endEdgeHitRectWithPrecision:(unint64_t)a3;
- (CGRect)_selectionClipRect;
- (CGRect)_startEdgeHitRectWithPrecision:(unint64_t)a3;
- (CGRect)caretRectForTextRangeAdjustmentInteraction:(id)a3;
- (CGRect)endEdge;
- (CGRect)paddedTextRangeAdjustmentHitRegionForEdge:(unint64_t)a3 precision:(unint64_t)a4;
- (CGRect)startEdge;
- (CGRect)textRangeAdjustmentRectForEdge:(unint64_t)a3;
- (UITextInput)container;
- (UITextRangeView)initWithFrame:(CGRect)a3 selectionView:(id)a4;
- (UITextSelectionView)selectionView;
- (double)inverseScaleForView:(id)a3;
- (id)containerCoordinateSpaceForTextRangeAdjustmentInteraction:(id)a3;
- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5;
- (unint64_t)loupeOrientationForTextRangeAdjustmentInteraction:(id)a3;
- (void)_cancelGrabberTransitionOutAnimations:(id)a3;
- (void)_setGrabber:(id)a3 bounds:(CGRect)a4 center:(CGPoint)a5;
- (void)_updateGrabbersVisibility:(BOOL)a3 animated:(BOOL)a4;
- (void)animateHighlighterDelayedFadeInOnLayer:(id)a3;
- (void)animateHighlighterExpanderAnimation;
- (void)animateHighlighterExpanderOnLayer:(id)a3 withOffset:(CGPoint)a4;
- (void)beginMagnifying;
- (void)clearRangeAnimated:(BOOL)a3;
- (void)didRotate;
- (void)didScroll;
- (void)doneMagnifying;
- (void)inputViewDidChange;
- (void)inputViewWillChange;
- (void)prepareForMagnification;
- (void)removeFromSuperview;
- (void)scaleDidChange;
- (void)scaleWillChange;
- (void)setMagnifierOrientation;
- (void)setMode:(int)a3;
- (void)setRects:(id)a3;
- (void)startAnimating;
- (void)stopAnimating;
- (void)textRangeAdjustmentInteraction:(id)a3 didBeginAtPoint:(CGPoint)a4;
- (void)textRangeAdjustmentInteraction:(id)a3 didEndAtPoint:(CGPoint)a4;
- (void)textRangeAdjustmentInteraction:(id)a3 selectionMoved:(CGPoint)a4 withTouchPoint:(CGPoint)a5;
- (void)textRangeAdjustmentInteractionWasCancelled:(id)a3;
- (void)updateAfterEffectiveModeChange;
- (void)updateBaseAndExtentPointsFromEdges;
- (void)updateBaseIsStartWithDocumentPoint:(CGPoint)a3;
- (void)updateDots;
- (void)updateEdges;
- (void)updateGrabbers;
- (void)updateRectViews;
- (void)updateSelectionWithDocumentPoint:(CGPoint)a3;
- (void)willRotate;
- (void)willScroll;
@end

@implementation UITextRangeView

- (UITextRangeView)initWithFrame:(CGRect)a3 selectionView:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  v25.receiver = self;
  v25.super_class = UITextRangeView;
  v10 = [(UIView *)&v25 initWithFrame:x, y, width, height];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->m_selectionView, v9);
    v12 = [v9 interactionAssistant];
    v13 = [v12 view];
    objc_storeWeak(&v11->m_container, v13);

    v14 = [UIView alloc];
    v15 = [(UIView *)v14 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    m_rectContainerView = v11->m_rectContainerView;
    v11->m_rectContainerView = v15;

    [(UIView *)v11->m_rectContainerView setOpaque:0];
    [(UIView *)v11->m_rectContainerView setUserInteractionEnabled:0];
    [(UIView *)v11 addSubview:v11->m_rectContainerView];
    v17 = objc_alloc_init(MEMORY[0x1E695DEC8]);
    m_rects = v11->m_rects;
    v11->m_rects = v17;

    v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
    m_rectViews = v11->m_rectViews;
    v11->m_rectViews = v19;

    [(UIView *)v11 setOpaque:0];
    [(UIView *)v11 setUserInteractionEnabled:1];
    v21 = [[UIPointerInteraction alloc] initWithDelegate:v11];
    pointerInteraction = v11->_pointerInteraction;
    v11->_pointerInteraction = v21;

    [(UIView *)v11 addInteraction:v11->_pointerInteraction];
    v23 = v11;
  }

  return v11;
}

- (void)removeFromSuperview
{
  [(UITextRangeView *)self cancelDelayedActions];
  v3 = [(UITextRangeView *)self startGrabber];
  [v3 removeFromSuperview];

  v4 = [(UITextRangeView *)self endGrabber];
  [v4 removeFromSuperview];

  v5 = [(UIView *)self superview];

  if (v5)
  {
    v6 = +[UITextMagnifierRanged sharedRangedMagnifier];
    v7 = [v6 target];

    if (v7)
    {
      [v6 stopMagnifying:0];
    }
  }

  [(UITextRangeView *)self setIsScrolling:0];
  [(UITextRangeView *)self setInGesture:0];
  v8.receiver = self;
  v8.super_class = UITextRangeView;
  [(UIView *)&v8 removeFromSuperview];
}

- (CGRect)_edgeHitRectForEdgeRect:(CGRect)a3 grabber:(id)a4 precision:(unint64_t)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v11 = a4;
  v12 = [(UITextRangeView *)self container];
  v13 = [v12 textInputView];
  [v13 _scaleFromLayerTransforms];
  v15 = v14;
  v17 = v16;

  if (v15 >= 1.0)
  {
    v18 = v15;
  }

  else
  {
    v18 = 1.0;
  }

  if (v17 >= 1.0)
  {
    v19 = v17;
  }

  else
  {
    v19 = 1.0;
  }

  if (a5 == 2)
  {
    v48.origin.x = x;
    v48.origin.y = y;
    v48.size.width = width;
    v48.size.height = height;
    v49 = CGRectInset(v48, -6.0 / v18, -6.0 / v19);
    v20 = v49.origin.x;
    v21 = v49.origin.y;
    v22 = v49.size.width;
    v23 = v49.size.height;
  }

  else if (v11 && ![v11 isVertical])
  {
    v52.origin.x = x;
    v52.origin.y = y;
    v52.size.width = width;
    v52.size.height = height;
    v53 = CGRectInset(v52, -10.0 / v18, -30.0 / v19);
    v29 = v53.origin.x;
    v30 = v53.origin.y;
    v31 = v53.size.width;
    v23 = v53.size.height;
    v32 = [v11 isPointedRight];
    v21 = v30 + 0.0;
    v33 = -30.0 / v18;
    if (v32)
    {
      v20 = v33 + v29;
    }

    else
    {
      v20 = v29 + 0.0;
    }

    v22 = v31 - (v33 + 0.0);
  }

  else
  {
    v50.origin.x = x;
    v50.origin.y = y;
    v50.size.width = width;
    v50.size.height = height;
    v51 = CGRectInset(v50, -30.0 / v18, -10.0 / v19);
    v24 = v51.origin.x;
    v25 = v51.origin.y;
    v22 = v51.size.width;
    v26 = v51.size.height;
    v27 = [v11 isPointedDown];
    v20 = v24 + 0.0;
    v28 = -30.0 / v19;
    if (v27)
    {
      v21 = v28 + v25;
    }

    else
    {
      v21 = v25 + 0.0;
    }

    v23 = v26 - (v28 + 0.0);
  }

  v34 = [(UITextRangeView *)self container];
  v35 = [v34 textInputView];
  [v35 convertRect:self fromView:{v20, v21, v22, v23}];
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;

  v44 = v37;
  v45 = v39;
  v46 = v41;
  v47 = v43;
  result.size.height = v47;
  result.size.width = v46;
  result.origin.y = v45;
  result.origin.x = v44;
  return result;
}

- (CGRect)_startEdgeHitRectWithPrecision:(unint64_t)a3
{
  [(UITextRangeView *)self startEdge];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [(UITextRangeView *)self startGrabber];
  [(UITextRangeView *)self _edgeHitRectForEdgeRect:v13 grabber:a3 precision:v6, v8, v10, v12];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v22 = v15;
  v23 = v17;
  v24 = v19;
  v25 = v21;
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
}

- (CGRect)_endEdgeHitRectWithPrecision:(unint64_t)a3
{
  [(UITextRangeView *)self endEdge];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [(UITextRangeView *)self endGrabber];
  [(UITextRangeView *)self _edgeHitRectForEdgeRect:v13 grabber:a3 precision:v6, v8, v10, v12];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v22 = v15;
  v23 = v17;
  v24 = v19;
  v25 = v21;
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
}

- (CGRect)textRangeAdjustmentRectForEdge:(unint64_t)a3
{
  if (a3)
  {
    [(UITextRangeView *)self endEdge];
  }

  else
  {
    [(UITextRangeView *)self startEdge];
  }

  v8 = v4;
  v9 = v5;
  v10 = v6;
  v11 = v7;
  v12 = [(UITextRangeView *)self container];
  v13 = [v12 textInputView];
  [v13 convertRect:self fromView:{v8, v9, v10, v11}];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v22 = v15;
  v23 = v17;
  v24 = v19;
  v25 = v21;
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
}

- (CGRect)paddedTextRangeAdjustmentHitRegionForEdge:(unint64_t)a3 precision:(unint64_t)a4
{
  if (a3)
  {
    [(UITextRangeView *)self _endEdgeHitRectWithPrecision:a4];
  }

  else
  {
    [(UITextRangeView *)self _startEdgeHitRectWithPrecision:a4];
  }

  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = [a4 _inputPrecision];
  v8 = [(UITextRangeView *)self shouldHitTestGrabbers];
  if (v8)
  {
    [(UITextRangeView *)self _startEdgeHitRectWithPrecision:v7];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    [(UITextRangeView *)self _endEdgeHitRectWithPrecision:v7];
    v30 = v18;
    v31 = v17;
    v20 = v19;
    v22 = v21;
    v34.origin.x = v10;
    v34.origin.y = v12;
    v34.size.width = v14;
    v34.size.height = v16;
    v33.x = x;
    v33.y = y;
    if (CGRectContainsPoint(v34, v33))
    {
      LOBYTE(v8) = 1;
    }

    else
    {
      v24 = v30;
      v23 = v31;
      v25 = v20;
      v26 = v22;
      v27 = x;
      v28 = y;

      LOBYTE(v8) = CGRectContainsPoint(*&v23, *&v27);
    }
  }

  return v8;
}

- (void)setMagnifierOrientation
{
  if ([(UITextRangeView *)self baseIsStart])
  {
    v3 = [(UITextRangeView *)self _endIsHorizontal];
  }

  else
  {
    v3 = [(UITextRangeView *)self _startIsHorizontal];
  }

  v4 = v3;
  v5 = +[UITextMagnifierRanged sharedRangedMagnifier];
  [v5 setIsHorizontal:v4];
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      isKindOfClass = 1;
    }

    else
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
    }

    objc_opt_class();
    v6 = objc_opt_isKindOfClass();
    if (v6 & 1) != 0 && ([v3 view], v7 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v8 = objc_opt_isKindOfClass(), v7, (v8))
    {
      v9 = [v3 view];
      [v9 contentSize];
      v11 = v10;
      [v9 frame];
      v13 = v11 <= v12;
    }

    else
    {
      v13 = 1;
    }

    if (isKindOfClass)
    {
      v4 = 1;
    }

    else
    {
      v4 = v6 & v13;
    }
  }

  return v4;
}

- (void)textRangeAdjustmentInteraction:(id)a3 didBeginAtPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  [(UITextRangeView *)self setInGesture:1];
  [(UITextRangeView *)self updateEdges];
  WeakRetained = objc_loadWeakRetained(&self->m_selectionView);
  v11 = [WeakRetained interactionAssistant];

  v8 = [v11 _editMenuAssistant];
  if ([v8 _editMenuIsVisibleOrDismissedRecently])
  {
    v9 = [v11 _editMenuAssistant];
    -[UITextRangeView setCommandsWereShowing:](self, "setCommandsWereShowing:", [v9 _hasTextReplacements] ^ 1);
  }

  else
  {
    [(UITextRangeView *)self setCommandsWereShowing:0];
  }

  v10 = [(UITextRangeView *)self selectionView];
  [v10 hideSelectionCommands];

  [(UITextRangeView *)self cancelDelayedActions];
  [v11 rangeSelectionStarted:{x, y}];
}

- (void)textRangeAdjustmentInteraction:(id)a3 selectionMoved:(CGPoint)a4 withTouchPoint:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  v7 = a4.y;
  v8 = a4.x;
  WeakRetained = objc_loadWeakRetained(&self->m_selectionView);
  v9 = [WeakRetained interactionAssistant];
  [v9 rangeSelectionMoved:v8 withTouchPoint:{v7, x, y}];
}

- (void)textRangeAdjustmentInteraction:(id)a3 didEndAtPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  [(UITextRangeView *)self setInGesture:0];
  [(UITextRangeView *)self cancelDelayedActions];
  WeakRetained = objc_loadWeakRetained(&self->m_selectionView);
  v7 = [WeakRetained interactionAssistant];
  [v7 rangeSelectionEnded:{x, y}];
}

- (void)textRangeAdjustmentInteractionWasCancelled:(id)a3
{
  [(UITextRangeView *)self setInGesture:0];
  [(UITextRangeView *)self cancelDelayedActions];
  WeakRetained = objc_loadWeakRetained(&self->m_selectionView);
  v5 = [WeakRetained interactionAssistant];
  [v5 rangeSelectionCanceled];

  [(UITextRangeView *)self _updateGrabbersVisibility:0 animated:0];
}

- (unint64_t)loupeOrientationForTextRangeAdjustmentInteraction:(id)a3
{
  if ([(UITextRangeView *)self isDisplayingVerticalSelection])
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (CGRect)caretRectForTextRangeAdjustmentInteraction:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->m_selectionView);
  v4 = [WeakRetained interactionAssistant];
  v5 = [v4 activeSelectionController];
  [v5 caretRectForCursorPosition];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (id)containerCoordinateSpaceForTextRangeAdjustmentInteraction:(id)a3
{
  v3 = [(UITextRangeView *)self container];
  v4 = [v3 textInputView];

  return v4;
}

- (void)updateAfterEffectiveModeChange
{
  [(UIView *)self setUserInteractionEnabled:[(UITextRangeView *)self shouldShowGrabbers]];
  [(UITextRangeView *)self updateRectViews];

  [(UITextRangeView *)self updateGrabbers];
}

- (void)setMode:(int)a3
{
  if (self->m_mode != a3)
  {
    self->m_mode = a3;
    [(UITextRangeView *)self updateAfterEffectiveModeChange];
  }
}

- (UITextSelectionView)selectionView
{
  WeakRetained = objc_loadWeakRetained(&self->m_selectionView);

  return WeakRetained;
}

- (UITextInput)container
{
  WeakRetained = objc_loadWeakRetained(&self->m_container);

  return WeakRetained;
}

- (void)updateEdges
{
  v4 = [(UITextRangeView *)self container];
  v5 = [v4 textInputView];

  v6 = [(UITextRangeView *)self rects];
  v7 = [UITextSelectionRect startCustomSelectionPathFromRects:v6];
  [(UITextRangeView *)self setStartCustomPath:v7];

  v8 = [UITextSelectionRect endCustomSelectionPathFromRects:v6];
  [(UITextRangeView *)self setEndCustomPath:v8];

  if (WebKitFramework)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [(UITextRangeView *)self rects];
      [UITextSelectionRect startEdgeFromRects:v9];
      [(UIView *)self convertRect:v5 fromView:?];
      v11 = v10;
      v13 = v12;
      v15 = v14;
      v17 = v16;
      [v5 bounds];
      v83.origin.x = v18;
      v83.origin.y = v19;
      v83.size.width = v20;
      v83.size.height = v21;
      v78.origin.x = v11;
      v78.origin.y = v13;
      v78.size.width = v15;
      v78.size.height = v17;
      v79 = CGRectIntersection(v78, v83);
      [(UITextRangeView *)self setStartEdge:v79.origin.x, v79.origin.y, v79.size.width, v79.size.height];

      v22 = [(UITextRangeView *)self rects];
      [UITextSelectionRect endEdgeFromRects:v22];
      [(UIView *)self convertRect:v5 fromView:?];
      v24 = v23;
      v26 = v25;
      v28 = v27;
      v30 = v29;
      [v5 bounds];
      v84.origin.x = v31;
      v84.origin.y = v32;
      v84.size.width = v33;
      v84.size.height = v34;
      v80.origin.x = v24;
      v80.origin.y = v26;
      v80.size.width = v28;
      v80.size.height = v30;
      v81 = CGRectIntersection(v80, v84);
      [(UITextRangeView *)self setEndEdge:v81.origin.x, v81.origin.y, v81.size.width, v81.size.height];
LABEL_35:

      goto LABEL_36;
    }
  }

  if (![v5 _usesAsynchronousProtocol])
  {
    v22 = [(UITextRangeView *)self startCustomPath];
    v64 = [(UITextRangeView *)self endCustomPath];
    if (v22)
    {
      [v22 boundingEdgeRect];
    }

    else
    {
      v2 = [(UITextRangeView *)self rects];
      [UITextSelectionRect startEdgeFromRects:v2];
      [(UIView *)self convertRect:v5 fromView:?];
    }

    [(UITextRangeView *)self setStartEdge:?];
    if (v22)
    {
      if (v64)
      {
LABEL_29:
        [v64 boundingEdgeRect];
LABEL_32:
        [(UITextRangeView *)self setEndEdge:?];
        if (!v64)
        {
        }

        goto LABEL_35;
      }
    }

    else
    {

      if (v64)
      {
        goto LABEL_29;
      }
    }

    v2 = [(UITextRangeView *)self rects];
    [UITextSelectionRect endEdgeFromRects:v2];
    [(UIView *)self convertRect:v5 fromView:?];
    goto LABEL_32;
  }

  [(UITextRangeView *)self inverseScaleForView:v5];
  v36 = v35;
  v37 = [(UITextRangeView *)self rects];
  [UITextSelectionRect startEdgeFromRects:v37];
  v71 = v38;
  v40 = v39;
  v42 = v41;
  v44 = v43;

  v45 = [(UITextRangeView *)self rects];
  [UITextSelectionRect endEdgeFromRects:v45];
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v53 = v52;

  if (v42 >= v44)
  {
    v54 = v36 * v44;
  }

  else
  {
    v54 = v44;
  }

  if (v42 >= v44)
  {
    v55 = v42;
  }

  else
  {
    v55 = v36 * v42;
  }

  v56 = v51 < v53;
  v57 = v49 + v53 - v36 * v53;
  v58 = v36 * v51;
  v59 = v47 + v51 - v36 * v51;
  if (v51 < v53)
  {
    v60 = v53;
  }

  else
  {
    v60 = v36 * v53;
  }

  if (v51 < v53)
  {
    v61 = v58;
  }

  else
  {
    v61 = v51;
  }

  if (v56)
  {
    v62 = v49;
  }

  else
  {
    v62 = v57;
  }

  if (v56)
  {
    v63 = v59;
  }

  else
  {
    v63 = v47;
  }

  [(UIView *)self convertRect:v5 fromView:v71, v40, v55, v54, v58, v59, *&v71];
  [(UITextRangeView *)self setStartEdge:?];
  [(UIView *)self convertRect:v5 fromView:v63, v62, v61, v60];
  [(UITextRangeView *)self setEndEdge:?];
LABEL_36:
  v65 = [(UITextRangeView *)self rects];
  v66 = [v65 firstObject];
  v67 = [v66 isMemberOfClass:objc_opt_class()];

  if (v67)
  {
    v73 = 0;
    v74 = &v73;
    v75 = 0x3010000000;
    v76 = "";
    v77 = *MEMORY[0x1E695EFF8];
    v68 = [(UITextRangeView *)self rects];
    v72[0] = MEMORY[0x1E69E9820];
    v72[1] = 3221225472;
    v72[2] = __30__UITextRangeView_updateEdges__block_invoke;
    v72[3] = &unk_1E71257C8;
    v72[4] = &v73;
    [v68 enumerateObjectsUsingBlock:v72];

    if (v74[5] > 0.0)
    {
      [(UITextRangeView *)self endEdge];
      if (CGRectGetMidY(v82) > v74[5])
      {
        [(UITextRangeView *)self startEdge];
        [(UITextRangeView *)self setEndEdge:v74[4] - v69, v74[5] - v70];
      }
    }

    _Block_object_dispose(&v73, 8);
  }
}

void __30__UITextRangeView_updateEdges__block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  [v6 rect];
  if (CGRectGetWidth(v8) > 0.0)
  {
    [v6 rect];
    if (CGRectGetMaxY(v9) > *(*(*(a1 + 32) + 8) + 40))
    {
      [v6 rect];
      MaxX = CGRectGetMaxX(v10);
      [v6 rect];
      MaxY = CGRectGetMaxY(v11);
      v5 = *(*(a1 + 32) + 8);
      *(v5 + 32) = MaxX;
      *(v5 + 40) = MaxY;
    }
  }
}

- (void)setRects:(id)a3
{
  obj = a3;
  if ([obj count])
  {
    if ([obj count] >= 0xB)
    {
      v4 = [MEMORY[0x1E695DFB8] orderedSetWithArray:obj];
      v5 = [v4 array];

      obj = v5;
    }

    if ([(UITextRangeView *)self isClearingRange])
    {
      [(UITextRangeView *)self setShouldStayVisible:1];
    }

    objc_storeStrong(&self->m_rects, obj);
    [(UITextRangeView *)self updateEdges];
    [(UITextRangeView *)self updateRectViews];
    [(UITextRangeView *)self updateGrabbers];
  }
}

- (void)updateSelectionWithDocumentPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  WeakRetained = objc_loadWeakRetained(&self->m_selectionView);
  v5 = [WeakRetained interactionAssistant];
  [v5 updateSelectionWithPoint:{x, y}];
}

- (void)updateBaseIsStartWithDocumentPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(UITextRangeView *)self container];
  v7 = [v6 textInputView];
  [(UIView *)self convertPoint:v7 fromView:x, y];
  v9 = v8;
  v11 = v10;

  [(UITextRangeView *)self startEdge];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  [(UITextRangeView *)self endEdge];
  v24 = [(UITextRangeView *)self pointCloserToEnd:v9 startEdge:v11 endEdge:v13, v15, v17, v19, v20, v21, v22, v23];

  [(UITextRangeView *)self setBaseIsStart:v24];
}

- (void)updateBaseAndExtentPointsFromEdges
{
  p_m_basePoint = &self->m_basePoint;
  if ([(UITextRangeView *)self baseIsStart])
  {
    [(UITextRangeView *)self startEdge];
    p_m_basePoint->x = v5 + v4 * 0.5;
    self->m_basePoint.y = v7 + v6 * 0.5;
    [(UITextRangeView *)self endEdge];
  }

  else
  {
    [(UITextRangeView *)self endEdge];
    p_m_basePoint->x = v13 + v12 * 0.5;
    self->m_basePoint.y = v15 + v14 * 0.5;
    [(UITextRangeView *)self startEdge];
  }

  self->m_extentPoint.x = v8 + v10 * 0.5;
  self->m_extentPoint.y = v9 + v11 * 0.5;
}

- (void)prepareForMagnification
{
  [(UITextRangeView *)self setMagnifying:1];
  v3 = [(UITextRangeView *)self startGrabber];
  [v3 setIsDotted:0];

  v4 = [(UITextRangeView *)self endGrabber];
  [v4 setIsDotted:0];

  [(UITextRangeView *)self updateGrabbers];
}

- (void)doneMagnifying
{
  [(UITextRangeView *)self setMagnifying:0];
  v3 = [(UITextRangeView *)self startGrabber];
  [v3 setIsDotted:1];

  v4 = [(UITextRangeView *)self endGrabber];
  [v4 setIsDotted:1];

  [(UITextRangeView *)self updateGrabbers];
}

- (void)willScroll
{
  [(UITextRangeView *)self setIsScrolling:1];

  [(UITextRangeView *)self updateDots];
}

- (void)didScroll
{
  [(UITextRangeView *)self setIsScrolling:0];

  [(UITextRangeView *)self updateDots];
}

- (void)scaleWillChange
{
  [(UITextRangeView *)self setScaling:1];

  [(UITextRangeView *)self updateDots];
}

- (void)scaleDidChange
{
  [(UITextRangeView *)self setScaling:0];

  [(UITextRangeView *)self updateDots];
}

- (void)willRotate
{
  [(UITextRangeView *)self setRotating:1];

  [(UITextRangeView *)self updateDots];
}

- (void)didRotate
{
  [(UITextRangeView *)self setRotating:0];

  [(UITextRangeView *)self performSelector:sel_updateDots withObject:0 afterDelay:0.0];
}

- (void)inputViewWillChange
{
  [(UITextRangeView *)self setInputViewIsChanging:1];

  [(UITextRangeView *)self updateDots];
}

- (void)inputViewDidChange
{
  [(UITextRangeView *)self setInputViewIsChanging:0];

  [(UITextRangeView *)self updateDots];
}

- (void)clearRangeAnimated:(BOOL)a3
{
  v3 = a3;
  v17 = *MEMORY[0x1E69E9840];
  if (![(UITextRangeView *)self isClearingRange])
  {
    if (v3 && !_AXSReduceMotionEnabled())
    {
      if (self->m_endGrabber)
      {
        [(UITextRangeView *)self setIsClearingRange:1];
      }

      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      v5 = self->m_rectViews;
      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v13;
        do
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v13 != v8)
            {
              objc_enumerationMutation(v5);
            }

            [*(*(&v12 + 1) + 8 * i) setHidden:1];
          }

          v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
        }

        while (v7);
      }

      if (self->m_endGrabber)
      {
        [(UISelectionGrabber *)self->m_startGrabber transitionDot:2 completion:0];
        m_endGrabber = self->m_endGrabber;
        v11[0] = MEMORY[0x1E69E9820];
        v11[1] = 3221225472;
        v11[2] = __38__UITextRangeView_clearRangeAnimated___block_invoke;
        v11[3] = &unk_1E70F3590;
        v11[4] = self;
        [(UISelectionGrabber *)m_endGrabber transitionDot:2 completion:v11];
      }

      else
      {
        [(UITextRangeView *)self removeFromSuperview];
      }
    }

    else
    {

      [(UITextRangeView *)self removeFromSuperview];
    }
  }
}

uint64_t __38__UITextRangeView_clearRangeAnimated___block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) shouldStayVisible] & 1) == 0)
  {
    [*(a1 + 32) removeFromSuperview];
  }

  [*(a1 + 32) setShouldStayVisible:0];
  v2 = *(a1 + 32);

  return [v2 setIsClearingRange:0];
}

- (void)updateDots
{
  if ([(UITextRangeView *)self shouldShowGrabbers])
  {
    v3 = [(UITextRangeView *)self startGrabber];
    [v3 updateDot];

    v6 = [(UITextRangeView *)self endGrabber];
    [(UISelectionGrabber *)v6 updateDot];
    m_endGrabber = v6;
  }

  else
  {
    [(UISelectionGrabber *)self->m_startGrabber removeFromSuperview];
    [(UISelectionGrabber *)self->m_endGrabber removeFromSuperview];
    m_startGrabber = self->m_startGrabber;
    self->m_startGrabber = 0;

    m_endGrabber = self->m_endGrabber;
    self->m_endGrabber = 0;
  }
}

- (void)startAnimating
{
  v3 = [(UITextRangeView *)self startGrabber];
  [v3 setAnimating:1];

  v4 = [(UITextRangeView *)self endGrabber];
  [v4 setAnimating:1];
}

- (void)stopAnimating
{
  v3 = [(UITextRangeView *)self startGrabber];
  [v3 setAnimating:0];

  v4 = [(UITextRangeView *)self endGrabber];
  [v4 setAnimating:0];
}

- (void)_updateGrabbersVisibility:(BOOL)a3 animated:(BOOL)a4
{
  if (a4)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __54__UITextRangeView__updateGrabbersVisibility_animated___block_invoke;
    v7[3] = &unk_1E70F35E0;
    v8 = a3;
    v7[4] = self;
    [UIView animateWithDuration:v7 animations:0.15];
  }

  else
  {
    v5 = [(UITextRangeView *)self startGrabber];
    [v5 updateDot];

    v6 = [(UITextRangeView *)self endGrabber];
    [v6 updateDot];

    [(UITextRangeView *)self updateGrabbers];
  }
}

uint64_t __54__UITextRangeView__updateGrabbersVisibility_animated___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 32);
  if (v2 == 1)
  {
    [v3 startAnimating];
  }

  else
  {
    [v3 stopAnimating];
  }

  v4 = *(a1 + 32);

  return [v4 updateGrabbers];
}

- (BOOL)autoscrolled
{
  WeakRetained = objc_loadWeakRetained(&self->m_selectionView);
  v3 = [WeakRetained interactionAssistant];
  v4 = [v3 autoscrolled];

  return v4;
}

- (void)animateHighlighterExpanderAnimation
{
  v38 = *MEMORY[0x1E69E9840];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v3 = self->m_rectViews;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (!v4)
  {
    goto LABEL_20;
  }

  v5 = v4;
  v6 = 0;
  v7 = *v34;
  do
  {
    for (i = 0; i != v5; ++i)
    {
      if (*v34 != v7)
      {
        objc_enumerationMutation(v3);
      }

      v6 += [*(*(&v33 + 1) + 8 * i) isHidden] ^ 1;
    }

    v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v33 objects:v37 count:16];
  }

  while (v5);

  if (v6 == 1)
  {
    v3 = [(NSMutableArray *)self->m_rectViews firstObject];
    v9 = [(NSMutableArray *)v3 layer];
    [(UITextRangeView *)self animateHighlighterExpanderOnLayer:v9 withOffset:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)];

    [(NSMutableArray *)v3 bounds];
    LODWORD(v9) = [(UITextRangeView *)self _startIsHorizontal];
    [(NSMutableArray *)v3 frame];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    [(UIView *)self->m_startGrabber frame];
    if (v9)
    {
      if (v18 < v11 + v15 * 0.5)
      {
LABEL_14:
        v20 = [(UITextRangeView *)self _endIsHorizontal];
        [(NSMutableArray *)v3 frame];
        v22 = v21;
        v24 = v23;
        v26 = v25;
        v28 = v27;
        [(UIView *)self->m_endGrabber frame];
        if (v20)
        {
          if (v29 < v22 + v26 * 0.5)
          {
            goto LABEL_19;
          }
        }

        else if (v30 < v24 + v28 * 0.5)
        {
LABEL_19:
          v31 = [(UIView *)self->m_startGrabber layer];
          [(UITextRangeView *)self animateHighlighterDelayedFadeInOnLayer:v31];

          v32 = [(UIView *)self->m_endGrabber layer];
          [(UITextRangeView *)self animateHighlighterDelayedFadeInOnLayer:v32];

LABEL_20:
          return;
        }

        [(UIView *)self->m_endGrabber frame];
        goto LABEL_19;
      }
    }

    else if (v19 < v13 + v17 * 0.5)
    {
      goto LABEL_14;
    }

    [(UIView *)self->m_startGrabber frame];
    goto LABEL_14;
  }
}

- (void)animateHighlighterExpanderOnLayer:(id)a3 withOffset:(CGPoint)a4
{
  v4 = a3;
  [v4 bounds];
  v6 = v5;
  v7 = [MEMORY[0x1E69794A8] animationWithKeyPath:@"transform"];
  [v7 setFrameInterval:0.0166666667];
  v8 = *MEMORY[0x1E69797D8];
  [v7 setFillMode:*MEMORY[0x1E69797D8]];
  [v4 bounds];
  v11 = 1.0;
  v12 = 1.0;
  if (v9 > 0.0)
  {
    v13 = v6 + 300.0;
    if (v13 < 350.0)
    {
      v13 = 350.0;
    }

    v12 = v13 / v9;
  }

  if (v10 > 0.0)
  {
    v11 = (v10 + 100.0) / v10;
  }

  v14 = 0uLL;
  memset(&v22, 0, sizeof(v22));
  if (v4)
  {
    [v4 transform];
    v14 = 0uLL;
  }

  *&v21.m41 = v14;
  *&v21.m43 = v14;
  *&v21.m31 = v14;
  *&v21.m33 = v14;
  *&v21.m21 = v14;
  *&v21.m23 = v14;
  *&v21.m11 = v14;
  *&v21.m13 = v14;
  v20 = v22;
  CATransform3DScale(&v21, &v20, v12, v11, 1.0);
  v20 = v21;
  v15 = [MEMORY[0x1E696B098] valueWithCATransform3D:&v20];
  [v7 setFromValue:v15];

  v20 = v22;
  v16 = [MEMORY[0x1E696B098] valueWithCATransform3D:&v20];
  [v7 setToValue:v16];

  [v7 setMass:1.0];
  [v7 setStiffness:445.100006];
  [v7 setDamping:36.6100006];
  [v7 settlingDuration];
  [v7 setDuration:?];
  [v4 addAnimation:v7 forKey:@"transform"];
  v17 = [MEMORY[0x1E69794A8] animationWithKeyPath:@"cornerRadius"];
  [v17 setFromValue:&unk_1EFE33610];
  [v17 setToValue:&unk_1EFE33628];
  [v17 setMass:1.0];
  [v17 setStiffness:445.100006];
  [v17 setDamping:36.6100006];
  [v7 settlingDuration];
  [v17 setDuration:?];
  [v4 addAnimation:v17 forKey:@"cornerRadius"];
  v18 = [MEMORY[0x1E69794A8] animationWithKeyPath:@"opacity"];
  [v18 setFrameInterval:0.0166666667];
  [v18 setFillMode:v8];
  [v18 setFromValue:&unk_1EFE33628];
  [v18 setToValue:&unk_1EFE33640];
  [v18 setMass:1.0];
  [v18 setStiffness:445.100006];
  [v18 setDamping:36.6100006];
  [v7 settlingDuration];
  [v18 setDuration:?];
  [v4 addAnimation:v18 forKey:@"opacity"];
  LODWORD(v19) = 1.0;
  [v4 setOpacity:v19];
}

- (void)animateHighlighterDelayedFadeInOnLayer:(id)a3
{
  v3 = MEMORY[0x1E69794A8];
  v4 = a3;
  v7 = [v3 animationWithKeyPath:@"transform.scale"];
  [v7 setFrameInterval:0.0166666667];
  v5 = *MEMORY[0x1E69797D8];
  [v7 setFillMode:*MEMORY[0x1E69797D8]];
  [v7 setFromValue:&unk_1EFE2EE68];
  [v7 setToValue:&unk_1EFE33640];
  [v7 setMass:1.0];
  [v7 setStiffness:586.0];
  [v7 setDamping:31.7];
  [v7 settlingDuration];
  [v7 setDuration:?];
  [v7 setBeginTime:CACurrentMediaTime() + 0.2];
  [v4 addAnimation:v7 forKey:0];
  v6 = [MEMORY[0x1E69794A8] animationWithKeyPath:@"opacity"];
  [v6 setFrameInterval:0.0166666667];
  [v6 setFillMode:v5];
  [v6 setFromValue:&unk_1EFE33628];
  [v6 setToValue:&unk_1EFE33640];
  [v6 setMass:1.0];
  [v6 setStiffness:586.0];
  [v6 setDamping:31.7];
  [v6 settlingDuration];
  [v6 setDuration:?];
  [v6 setBeginTime:CACurrentMediaTime() + 0.2];
  [v6 setFillMode:v5];
  [v4 addAnimation:v6 forKey:0];
}

- (void)beginMagnifying
{
  self->m_willBeginMagnifying = 0;
  [(UITextRangeView *)self cancelDelayedActions];
  v3 = +[UITextMagnifierRanged sharedRangedMagnifier];
  [(UITextRangeView *)self setMagnifierOrientation];
}

- (CGRect)_selectionClipRect
{
  v2 = [(UITextRangeView *)self container];
  if (!v2)
  {
    goto LABEL_7;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    if (objc_opt_respondsToSelector())
    {
      [v2 _selectionClipRect];
      goto LABEL_6;
    }

LABEL_7:
    v7 = *MEMORY[0x1E695F050];
    v8 = *(MEMORY[0x1E695F050] + 8);
    v9 = *(MEMORY[0x1E695F050] + 16);
    v10 = *(MEMORY[0x1E695F050] + 24);
    goto LABEL_8;
  }

  [v2 selectionClipRect];
LABEL_6:
  v7 = v3;
  v8 = v4;
  v9 = v5;
  v10 = v6;
LABEL_8:

  v11 = v7;
  v12 = v8;
  v13 = v9;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (void)updateRectViews
{
  if ((![(UITextRangeView *)self mode]|| [(UITextRangeView *)self mode]== 5 || [(UITextRangeView *)self mode]== 4) && !_AXSReduceMotionEnabled())
  {
    v3 = [(UITextRangeView *)self container];
    if ([v3 _conformsToProtocolUIAsyncTextInputClient])
    {
LABEL_6:

      goto LABEL_8;
    }

    v4 = [(UITextRangeView *)self container];
    v5 = [v4 _conformsToProtocolBETextInput];

    if ((v5 & 1) == 0)
    {
      v65 = [(UITextRangeView *)self container];
      v66 = objc_opt_respondsToSelector();

      if ((v66 & 1) == 0 || (-[UITextRangeView container](self, "container"), v67 = objc_claimAutoreleasedReturnValue(), v68 = [v67 _allowAnimatedUpdateSelectionRectViews], v67, v68))
      {
        v69 = [(UIView *)self->m_rectContainerView layer];
        v3 = [v69 animationForKey:@"transition"];

        if (!v3)
        {
          v70 = [MEMORY[0x1E6979538] animation];
          [v70 setFrameInterval:0.0333333333];
          [v70 setType:*MEMORY[0x1E697A030]];
          [v70 setDuration:0.25];
          [v70 setFillMode:*MEMORY[0x1E69797D8]];
          v71 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EA0]];
          [v70 setTimingFunction:v71];

          v72 = [(UIView *)self->m_rectContainerView layer];
          [v72 addAnimation:v70 forKey:@"transition"];

          v3 = 0;
        }

        goto LABEL_6;
      }
    }
  }

LABEL_8:
  v6 = [(NSArray *)self->m_rects count];
  v7 = v6 - [(NSMutableArray *)self->m_rectViews count];
  if (v7 >= 1)
  {
    v8 = *MEMORY[0x1E695F058];
    v9 = *(MEMORY[0x1E695F058] + 8);
    v10 = *(MEMORY[0x1E695F058] + 16);
    v11 = *(MEMORY[0x1E695F058] + 24);
    do
    {
      v12 = [(UIView *)[UITextSelectionRectView alloc] initWithFrame:v8, v9, v10, v11];
      [(UIView *)v12 setUserInteractionEnabled:0];
      [(UIView *)self->m_rectContainerView addSubview:v12];
      [(NSMutableArray *)self->m_rectViews addObject:v12];

      --v7;
    }

    while (v7);
  }

  v13 = [(UITextRangeView *)self container];
  v14 = [v13 textInputView];
  [(UITextRangeView *)self _selectionClipRect];
  x = v81.origin.x;
  y = v81.origin.y;
  width = v81.size.width;
  height = v81.size.height;
  IsNull = CGRectIsNull(v81);
  if (!IsNull)
  {
    [(UIView *)self convertRect:v14 fromView:x, y, width, height];
    x = v20;
    y = v21;
    width = v22;
    height = v23;
  }

  if (objc_opt_respondsToSelector())
  {
    v24 = +[UIKeyboard currentDocumentState];
    v25 = [v24 autocorrectTextBackgroundColor];

    if (v25)
    {
      v26 = [v24 autocorrectTextBackgroundColor];
      v77 = +[UIColor colorWithCGColor:](UIColor, "colorWithCGColor:", [v26 cgColor]);
    }

    else
    {
      v77 = [v13 selectionHighlightColor];
    }
  }

  else
  {
    v77 = +[UIColor selectionHighlightColor];
  }

  v79 = v13;
  if (objc_opt_respondsToSelector())
  {
    v27 = [v79 selectionBorderColor];
    v76 = v27 != 0;
  }

  else
  {
    v76 = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    [v79 selectionBorderWidth];
    v75 = v28 > 0.0;
  }

  else
  {
    v75 = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    [v79 selectionCornerRadius];
    v74 = v29 > 0.0;
  }

  else
  {
    v74 = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    [v79 selectionEdgeInsets];
    v33 = v32 != 0.0;
    if (v34 != 0.0)
    {
      v33 = 1;
    }

    if (v31 != 0.0)
    {
      v33 = 1;
    }

    v35 = v30 != 0.0 || v33;
  }

  else
  {
    v35 = 0;
  }

  if ([(NSArray *)self->m_rects count])
  {
    v78 = y;
    v36 = 0;
    v73 = 0.2;
    while (1)
    {
      v37 = [(NSArray *)self->m_rects objectAtIndex:v36, *&v73];
      [v37 rect];
      v38 = v82.origin.x;
      v39 = v82.origin.y;
      v40 = v82.size.width;
      v41 = v82.size.height;
      v42 = CGRectGetWidth(v82);
      if (v42 <= 2.0 || v35 == 0)
      {
        if (!v14)
        {
          goto LABEL_48;
        }
      }

      else
      {
        [v79 selectionEdgeInsets];
        v38 = v38 + v49;
        v39 = v39 + v48;
        v40 = v40 - (v49 + v51);
        v41 = v41 - (v48 + v50);
        if (!v14)
        {
          goto LABEL_48;
        }
      }

      [(UIView *)self convertRect:v14 fromView:v38, v39, v40, v41];
      v38 = v44;
      v39 = v45;
      v40 = v46;
      v41 = v47;
      if (!IsNull)
      {
        v83.origin.x = x;
        v83.size.height = height;
        v83.origin.y = v78;
        v83.size.width = width;
        v86.origin.x = v38;
        v86.origin.y = v39;
        v86.size.width = v40;
        v86.size.height = v41;
        v84 = CGRectIntersection(v83, v86);
        v38 = v84.origin.x;
        v39 = v84.origin.y;
        v40 = v84.size.width;
        v41 = v84.size.height;
      }

LABEL_48:
      v52 = [(NSMutableArray *)self->m_rectViews objectAtIndex:v36];
      [v52 frame];
      if (v54 != v40 || v53 != v41)
      {
        v56 = [v52 layer];
        [v56 removeAllAnimations];
      }

      if (([v37 _drawsOwnHighlight] & 1) == 0)
      {
        v85.origin.x = v38;
        v85.origin.y = v39;
        v85.size.width = v40;
        v85.size.height = v41;
        if (!CGRectIsEmpty(v85) && (*&v38 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&v39 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000 && (*&v40 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000 && (*&v41 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
        {
          [v52 setHidden:0];
          [v52 setFrame:{v38, v39, v40, v41}];
          v57 = [v37 _path];
          [v52 setPath:v57];

          if ([(UITextRangeView *)self mode]== 2)
          {
            v58 = 1.0;
            v59 = 0.0;
            goto LABEL_66;
          }

          if ([(UITextRangeView *)self mode]== 3)
          {
            v58 = 0.0;
            v59 = 1.0;
LABEL_66:
            v60 = [UIColor colorWithRed:v58 green:0.0 blue:v59 alpha:0.15];
LABEL_67:
            v61 = v60;
            [v52 setSelectionColor:v60];
          }

          else
          {
            if ([(UITextRangeView *)self mode]== 5)
            {
              v60 = [UIColor colorWithWhite:0.5 alpha:v73];
              goto LABEL_67;
            }

            [v52 setSelectionColor:v77];
          }

          if (v42 > 2.0)
          {
            if (v76)
            {
              v62 = [v79 selectionBorderColor];
              [v52 setSelectionBorderColor:v62];
            }

            if (v75)
            {
              [v79 selectionBorderWidth];
              [v52 setSelectionBorderWidth:?];
            }

            if (v74)
            {
              [v79 selectionCornerRadius];
              [v52 setSelectionCornerRadius:?];
            }
          }

          goto LABEL_56;
        }
      }

      [v52 setHidden:1];
LABEL_56:

      if ([(NSArray *)self->m_rects count]<= ++v36)
      {
        v63 = v36;
        goto LABEL_80;
      }
    }
  }

  v63 = 0;
LABEL_80:
  while ([(NSMutableArray *)self->m_rectViews count]> v63)
  {
    v64 = [(NSMutableArray *)self->m_rectViews objectAtIndex:v63];
    [v64 setHidden:1];

    ++v63;
  }
}

- (BOOL)isDisplayingVerticalSelection
{
  if ([(UITextRangeView *)self _startIsHorizontal])
  {
    return ![(UITextRangeView *)self _endIsHorizontal];
  }

  else
  {
    return 1;
  }
}

- (BOOL)_startIsHorizontal
{
  v2 = [(UITextRangeView *)self rects];
  v3 = [UITextSelectionRect startIsHorizontal:v2];

  return v3;
}

- (BOOL)_endIsHorizontal
{
  v2 = [(UITextRangeView *)self rects];
  v3 = [UITextSelectionRect endIsHorizontal:v2];

  return v3;
}

- (void)updateGrabbers
{
  v3 = [(UITextRangeView *)self selectionView];
  v4 = [v3 shouldSuppressSelectionHandles];

  v5 = [(UITextRangeView *)self container];
  if (objc_opt_respondsToSelector())
  {
    if (([v5 _shouldSuppressSelectionHandles] | v4))
    {
      goto LABEL_19;
    }
  }

  else if (v4)
  {
LABEL_19:
    [(UISelectionGrabber *)self->m_startGrabber removeFromSuperview];
    [(UISelectionGrabber *)self->m_endGrabber removeFromSuperview];
    m_startGrabber = self->m_startGrabber;
    self->m_startGrabber = 0;

    m_endGrabber = self->m_endGrabber;
    self->m_endGrabber = 0;

    goto LABEL_20;
  }

  if (![(UITextRangeView *)self shouldShowGrabbers])
  {
    goto LABEL_19;
  }

  v6 = [(UITextRangeView *)self rects];
  v7 = [v6 count];

  if (!v7)
  {
    goto LABEL_20;
  }

  v8 = [(UITextRangeView *)self _startIsHorizontal];
  v9 = [(UITextRangeView *)self _endIsHorizontal];
  if (!self->m_startGrabber)
  {
    v10 = [UISelectionGrabber alloc];
    v11 = [(UISelectionGrabber *)v10 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    v12 = self->m_startGrabber;
    self->m_startGrabber = v11;

    [(UISelectionGrabber *)self->m_startGrabber setHidden:1];
    if (v8)
    {
      v13 = 0;
    }

    else
    {
      v13 = 3;
    }

    [(UISelectionGrabber *)self->m_startGrabber setOrientation:v13];
  }

  if (!self->m_endGrabber)
  {
    v14 = [UISelectionGrabber alloc];
    v15 = [(UISelectionGrabber *)v14 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    v16 = self->m_endGrabber;
    self->m_endGrabber = v15;

    [(UISelectionGrabber *)self->m_endGrabber setHidden:1];
    if (v9)
    {
      v17 = 1;
    }

    else
    {
      v17 = 2;
    }

    [(UISelectionGrabber *)self->m_endGrabber setOrientation:v17];
  }

  v18 = [(UIView *)self window];

  if (v18)
  {
    v19 = [(UIView *)self window];
    [v19 convertRect:self toView:{0.0, 0.0, 1.0, 1.0}];
    v21 = v20;
    v23 = v22;
  }

  else
  {
    v23 = 1.0;
    v21 = 1.0;
  }

  [(UITextRangeView *)self startEdge];
  if (v8)
  {
    v30 = -0.5;
    v31 = 0.0;
  }

  else
  {
    v30 = 0.0;
    v31 = -0.5;
  }

  v121 = CGRectInset(*&v26, v30, v31);
  x = v121.origin.x;
  y = v121.origin.y;
  width = v121.size.width;
  height = v121.size.height;
  [(UITextRangeView *)self endEdge];
  v39 = v21 * width;
  v40 = v23 * height;
  if (v8)
  {
    v41 = v21 * width;
  }

  else
  {
    v41 = v23 * height;
  }

  v105 = width;
  v108 = v41;
  if (v8)
  {
    v42 = height;
  }

  else
  {
    v42 = v23 * height;
  }

  v117 = x;
  rect = v42;
  if (v8)
  {
    v43 = v21 * width;
  }

  else
  {
    v43 = width;
  }

  v116 = v43;
  if (v9)
  {
    v122 = CGRectInset(*&v35, -0.5, 0.0);
    v111 = v122.origin.y;
    v112 = v122.size.height;
    v113 = v21 * v122.size.width;
    v110 = v122.origin.x + v122.size.width - v21 * v122.size.width;
  }

  else
  {
    v123 = CGRectInset(*&v35, 0.0, -0.5);
    v110 = v123.origin.x;
    v112 = v23 * v123.size.height;
    v113 = v123.size.width;
    v111 = v123.origin.y + v123.size.height - v23 * v123.size.height;
  }

  if (v8)
  {
    v44 = v21;
  }

  else
  {
    v44 = v23;
  }

  v45 = [(UITextRangeView *)self container];
  v46 = [v45 textInputView];

  [(UITextRangeView *)self _selectionClipRect];
  v47 = v124.origin.x;
  v48 = v124.origin.y;
  v49 = v124.size.width;
  v50 = v124.size.height;
  if (!CGRectIsNull(v124))
  {
    [v46 convertRect:self toView:{v47, v48, v49, v50}];
    v47 = v51;
    v48 = v52;
    v49 = v53;
    v50 = v54;
  }

  if (v46)
  {
    v125.origin.x = v47;
    v125.origin.y = v48;
    v125.size.width = v49;
    v125.size.height = v50;
    if (!CGRectIsNull(v125))
    {
      v109 = v44 * v108;
      if (v8)
      {
        v126.size.width = v116;
        v126.origin.x = v117;
        v126.origin.y = y;
        v126.size.height = rect;
        MinX = CGRectGetMinX(v126);
        v127.origin.x = v47;
        v127.origin.y = v48;
        v127.size.width = v49;
        v127.size.height = v50;
        if (MinX >= CGRectGetMinX(v127))
        {
          v65 = v116;
          v67 = v117;
          v66 = rect;
        }

        else
        {
          v128.origin.x = v117;
          v128.origin.y = y;
          v128.size.width = v116;
          v128.size.height = rect;
          v106 = CGRectGetMinX(v128);
          v129.origin.x = v47;
          v129.origin.y = v48;
          v129.size.width = v49;
          v129.size.height = v50;
          v64 = CGRectGetMinX(v129);
          v65 = v116;
          v66 = rect;
          v67 = v117;
          if (v106 >= v64 - v109)
          {
            v130.origin.x = v47;
            v130.origin.y = v48;
            v130.size.width = v49;
            v130.size.height = v50;
            v67 = CGRectGetMinX(v130);
            v65 = v39;
            v66 = height;
          }
        }

        v73 = v67;
        v74 = y;
        v75 = y;
        v107 = v65;
        v76 = v66;
        MaxX = CGRectGetMaxX(*(&v65 - 2));
        v136.origin.x = v47;
        v136.origin.y = v48;
        v136.size.width = v49;
        v136.size.height = v50;
        if (MaxX <= v109 + CGRectGetMaxX(v136))
        {
          v137.origin.x = v67;
          v137.origin.y = y;
          v137.size.width = v107;
          v137.size.height = v66;
          v78 = CGRectGetMaxX(v137);
          v138.origin.x = v47;
          v138.origin.y = v48;
          v138.size.width = v49;
          v138.size.height = v50;
          if (v78 >= CGRectGetMaxX(v138))
          {
            v142.origin.x = v47;
            v142.origin.y = v48;
            v142.size.width = v49;
            v142.size.height = v50;
            v67 = CGRectGetMaxX(v142) - v109;
          }
        }
      }

      else
      {
        v131.origin.x = v117;
        v131.origin.y = y;
        v131.size.width = v116;
        v131.size.height = rect;
        MinY = CGRectGetMinY(v131);
        v132.origin.x = v47;
        v132.origin.y = v48;
        v132.size.width = v49;
        v132.size.height = v50;
        if (MinY >= CGRectGetMinY(v132))
        {
          v71 = v116;
          v69 = rect;
          v72 = y;
        }

        else
        {
          v133.origin.x = v117;
          v133.origin.y = y;
          v133.size.width = v116;
          v69 = rect;
          v133.size.height = rect;
          v104 = CGRectGetMinY(v133);
          v134.origin.x = v47;
          v134.origin.y = v48;
          v134.size.width = v49;
          v134.size.height = v50;
          v70 = CGRectGetMinY(v134);
          v71 = v116;
          v72 = y;
          if (v104 >= v70 - v109)
          {
            v135.origin.x = v47;
            v135.origin.y = v48;
            v135.size.width = v49;
            v135.size.height = v50;
            v72 = CGRectGetMinY(v135);
            v71 = v105;
            v69 = v40;
          }
        }

        v67 = v117;
        v79 = v117;
        v80 = v72;
        v115 = v71;
        v81 = v69;
        v82 = v72;
        MaxY = CGRectGetMaxY(*(&v71 - 2));
        v139.origin.x = v47;
        v139.origin.y = v48;
        v139.size.width = v49;
        v139.size.height = v50;
        if (MaxY >= CGRectGetMaxY(v139))
        {
          v140.origin.x = v117;
          v140.origin.y = v82;
          v140.size.width = v115;
          v140.size.height = v69;
          v84 = CGRectGetMaxY(v140);
          v141.origin.x = v47;
          v141.origin.y = v48;
          v141.size.width = v49;
          v141.size.height = v50;
          v85 = v84 > v109 + CGRectGetMaxY(v141);
          v86 = v116;
          if (v85)
          {
            v74 = v82;
          }

          else
          {
            v150.origin.x = v47;
            v150.origin.y = v48;
            v150.size.width = v49;
            v150.size.height = v50;
            v74 = v109 + CGRectGetMaxY(v150);
          }

          goto LABEL_64;
        }

        v74 = v82;
      }

      v86 = v116;
LABEL_64:
      v143.origin.x = v47;
      v143.origin.y = v48;
      v143.size.width = v49;
      v143.size.height = v50;
      v151.origin.x = v67;
      v151.origin.y = v74;
      v151.size.width = v86;
      v151.size.height = rect;
      v144 = CGRectIntersection(v143, v151);
      v61 = v144.origin.x;
      v59 = v144.origin.y;
      v60 = v144.size.width;
      v62 = v144.size.height;
      v144.origin.x = v47;
      v144.origin.y = v48;
      v144.size.width = v49;
      v144.size.height = v50;
      v152.origin.x = v110;
      v152.origin.y = v111;
      v152.size.height = v112;
      v152.size.width = v113;
      v145 = CGRectIntersection(v144, v152);
      v58 = v145.origin.x;
      v57 = v145.origin.y;
      v55 = v145.size.width;
      v56 = v145.size.height;
      goto LABEL_65;
    }
  }

  v56 = v112;
  v55 = v113;
  v58 = v110;
  v57 = v111;
  v59 = y;
  v60 = v116;
  v61 = v117;
  v62 = rect;
LABEL_65:
  v87 = _AXSReduceMotionEnabled();
  if ([(UIView *)self->m_startGrabber isHidden])
  {
    v88 = 1;
  }

  else
  {
    v89 = [(UIView *)self->m_startGrabber superview];
    v88 = v89 == 0;
  }

  v146.origin.x = v61;
  v146.origin.y = v59;
  v146.size.width = v60;
  v146.size.height = v62;
  if (CGRectIsNull(v146) || (*&v61 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v59 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000 || (*&v60 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000 || (*&v62 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    if (v87 != 0 || v88)
    {
      v90 = 0;
    }

    else
    {
      v90 = 2;
    }

    v91 = self->m_startGrabber;
    v120[0] = MEMORY[0x1E69E9820];
    v120[1] = 3221225472;
    v120[2] = __33__UITextRangeView_updateGrabbers__block_invoke;
    v120[3] = &unk_1E70F3590;
    v120[4] = self;
    [(UISelectionGrabber *)v91 transitionDot:v90 completion:v120, *&v104];
  }

  else
  {
    [(UIView *)self->m_startGrabber frame];
    v153.origin.x = v61;
    v153.origin.y = v59;
    v153.size.width = v60;
    v153.size.height = v62;
    if (!CGRectEqualToRect(v147, v153))
    {
      [(UITextRangeView *)self _cancelGrabberTransitionOutAnimations:self->m_startGrabber];
    }

    v92 = [(UITextRangeView *)self startCustomPath];
    [v92 setLineWidth:v60];
    if (v92)
    {
      [v92 boundingRect];
      [v46 convertRect:self toView:?];
      [(UITextRangeView *)self _setGrabber:self->m_startGrabber bounds:*MEMORY[0x1E695EFF8] center:*(MEMORY[0x1E695EFF8] + 8)];
      [(UIView *)self->m_startGrabber setNeedsDisplay];
    }

    else
    {
      [(UITextRangeView *)self _setGrabber:self->m_startGrabber bounds:*MEMORY[0x1E695EFF8] center:*(MEMORY[0x1E695EFF8] + 8), v60, v62, v60 * 0.5 + v61, v62 * 0.5 + v59];
    }

    [(UISelectionGrabber *)self->m_startGrabber setCustomPath:v92];
    [(UISelectionGrabber *)self->m_startGrabber setHidden:0];
    [(UISelectionGrabber *)self->m_startGrabber updateDot];
    v93 = [(UIView *)self->m_startGrabber superview];

    if (!v93)
    {
      [(UIView *)self addSubview:self->m_startGrabber];
    }

    [(UISelectionGrabber *)self->m_startGrabber transitionDot:(v87 == 0) & v88 completion:0];
  }

  if ([(UIView *)self->m_endGrabber isHidden])
  {
    v94 = 1;
  }

  else
  {
    v95 = [(UIView *)self->m_endGrabber superview];
    v94 = v95 == 0;
  }

  v148.origin.x = v58;
  v148.origin.y = v57;
  v148.size.width = v55;
  v148.size.height = v56;
  if (CGRectIsNull(v148) || (*&v58 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v57 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000 || (*&v55 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000 || (*&v56 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    if (v87 != 0 || v94)
    {
      v96 = 0;
    }

    else
    {
      v96 = 2;
    }

    v97 = self->m_endGrabber;
    v119[0] = MEMORY[0x1E69E9820];
    v119[1] = 3221225472;
    v119[2] = __33__UITextRangeView_updateGrabbers__block_invoke_2;
    v119[3] = &unk_1E70F3590;
    v119[4] = self;
    [(UISelectionGrabber *)v97 transitionDot:v96 completion:v119];
  }

  else
  {
    [(UIView *)self->m_endGrabber frame];
    v154.origin.x = v58;
    v154.origin.y = v57;
    v154.size.width = v55;
    v154.size.height = v56;
    if (!CGRectEqualToRect(v149, v154))
    {
      [(UITextRangeView *)self _cancelGrabberTransitionOutAnimations:self->m_endGrabber];
    }

    v98 = [(UITextRangeView *)self endCustomPath];
    [v98 setLineWidth:v55];
    [(UISelectionGrabber *)self->m_endGrabber setCustomPath:v98];
    if (v98)
    {
      [v98 boundingRect];
      v58 = v99;
      v57 = v100;
      v55 = v101;
      v56 = v102;
    }

    [(UITextRangeView *)self _setGrabber:self->m_endGrabber bounds:*MEMORY[0x1E695EFF8] center:*(MEMORY[0x1E695EFF8] + 8), v55, v56, v58 + v55 * 0.5, v57 + v56 * 0.5];
    [(UISelectionGrabber *)self->m_endGrabber setHidden:0];
    [(UISelectionGrabber *)self->m_endGrabber updateDot];
    v103 = [(UIView *)self->m_endGrabber superview];

    if (!v103)
    {
      [(UIView *)self addSubview:self->m_endGrabber];
    }

    [(UISelectionGrabber *)self->m_endGrabber transitionDot:(v87 == 0) & v94 completion:0];
  }

LABEL_20:
}

- (void)_setGrabber:(id)a3 bounds:(CGRect)a4 center:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  height = a4.size.height;
  width = a4.size.width;
  v9 = a4.origin.y;
  v10 = a4.origin.x;
  v11 = a3;
  [v11 setBounds:{v10, v9, width, height}];
  [v11 setCenter:{x, y}];
}

- (void)_cancelGrabberTransitionOutAnimations:(id)a3
{
  v3 = a3;
  v6 = [v3 layer];
  [v6 removeAnimationForKey:@"stemView transition out"];
  [v6 removeAnimationForKey:@"stemView opacity transition out"];
  v4 = [v3 _dotView];

  v5 = [v4 layer];

  [v5 removeAnimationForKey:@"dotView transition out"];
  [v5 removeAnimationForKey:@"dotView opacity transition out"];
}

- (CGPoint)magnifierPoint
{
  if ([(UITextRangeView *)self baseIsStart])
  {
    v3 = [(UITextRangeView *)self _endIsHorizontal];
    [(UITextRangeView *)self endEdge];
    v5 = v4;
    [(UITextRangeView *)self endEdge];
    v8 = v6 + v7;
    v9 = v6 + v7 * 0.5;
    if (v3)
    {
      v10 = v9;
    }

    else
    {
      v10 = v8;
    }
  }

  else
  {
    v11 = [(UITextRangeView *)self _startIsHorizontal];
    [(UITextRangeView *)self startEdge];
    v5 = v12;
    [(UITextRangeView *)self startEdge];
    if (v11)
    {
      v10 = v13 + v14 * 0.5;
    }

    else
    {
      v10 = v13;
    }
  }

  v15 = [(UITextRangeView *)self container];
  v16 = [v15 textInputView];
  if (v16)
  {
    v17 = [(UITextRangeView *)self container];
    v18 = [v17 textInputView];
    [(UIView *)self convertPoint:v18 toView:v5, v10];
    v5 = v19;
    v10 = v20;
  }

  v21 = v5;
  v22 = v10;
  result.y = v22;
  result.x = v21;
  return result;
}

- (CGPoint)convertFromMagnifierPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(UITextRangeView *)self container];
  v7 = [v6 textInputView];
  if (v7)
  {
    v8 = [(UITextRangeView *)self container];
    v9 = [v8 textInputView];
    [(UIView *)self convertPoint:v9 fromView:x, y];
    x = v10;
    y = v11;
  }

  v12 = x;
  v13 = y;
  result.y = v13;
  result.x = v12;
  return result;
}

- (BOOL)areSelectionRectsVisible
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = self->m_rectViews;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if (![*(*(&v7 + 1) + 8 * i) isHidden])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (double)inverseScaleForView:(id)a3
{
  v3 = [a3 layer];
  v4 = v3;
  if (v3)
  {
    [v3 transform];
    v5 = v8;
  }

  else
  {
    v5 = 0.0;
  }

  v6 = 1.0 / v5;

  return v6;
}

- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5
{
  v7 = a4;
  v8 = a5;
  [(UITextRangeView *)self _startEdgeHitRectWithPrecision:2];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  [(UITextRangeView *)self _endEdgeHitRectWithPrecision:2];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  [v7 location];
  v33.x = v25;
  v33.y = v26;
  v35.origin.x = v10;
  v35.origin.y = v12;
  v35.size.width = v14;
  v35.size.height = v16;
  if (CGRectContainsPoint(v35, v33))
  {
    v27 = @"_UITextCursorStartGrabberRegion";
  }

  else
  {
    [v7 location];
    v34.x = v28;
    v34.y = v29;
    v36.origin.x = v18;
    v36.origin.y = v20;
    v36.size.width = v22;
    v36.size.height = v24;
    v30 = v8;
    if (!CGRectContainsPoint(v36, v34))
    {
      goto LABEL_6;
    }

    v10 = v18;
    v12 = v20;
    v14 = v22;
    v16 = v24;
    v27 = @"_UITextCursorEndGrabberRegion";
  }

  v30 = [UIPointerRegion regionWithRect:v27 identifier:v10, v12, v14, v16];

LABEL_6:

  return v30;
}

- (CGRect)startEdge
{
  x = self->m_startEdge.origin.x;
  y = self->m_startEdge.origin.y;
  width = self->m_startEdge.size.width;
  height = self->m_startEdge.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)endEdge
{
  x = self->m_endEdge.origin.x;
  y = self->m_endEdge.origin.y;
  width = self->m_endEdge.size.width;
  height = self->m_endEdge.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGPoint)basePoint
{
  x = self->m_basePoint.x;
  y = self->m_basePoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)extentPoint
{
  x = self->m_extentPoint.x;
  y = self->m_extentPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)initialExtentPoint
{
  x = self->m_initialExtentPoint.x;
  y = self->m_initialExtentPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)activeTouchPoint
{
  x = self->_activeTouchPoint.x;
  y = self->_activeTouchPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

@end