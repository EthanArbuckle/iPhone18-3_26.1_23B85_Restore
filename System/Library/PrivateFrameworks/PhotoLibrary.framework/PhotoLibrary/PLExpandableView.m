@interface PLExpandableView
- (CGRect)contractedFrame;
- (CGRect)expandedFrame;
- (CGRect)pinchRect:(CGRect)a3 inView:(id)a4 insetTouches:(BOOL)a5;
- (PLExpandableView)initWithFrame:(CGRect)a3;
- (int)snapState:(BOOL)a3;
- (void)_notifyDidCancelCollapsing;
- (void)_notifyDidCancelExpanding;
- (void)_notifyDidCompleteCollapsing;
- (void)_notifyDidCompleteExpanding;
- (void)_notifyWillBeginCollapsing;
- (void)_notifyWillBeginExpanding;
- (void)_notifyWillCancelCollapsingWithDuration:(double)a3;
- (void)_notifyWillCancelExpandingWithDuration:(double)a3;
- (void)_notifyWillCompleteCollapsingWithDuration:(double)a3;
- (void)_notifyWillCompleteExpandingWithDuration:(double)a3;
- (void)_setAutorotationDisabled:(BOOL)a3;
- (void)_transitionFromCancelContract:(int)a3 withDuration:(double)a4;
- (void)_transitionFromCancelExpand:(int)a3 withDuration:(double)a4;
- (void)_transitionFromCompleteContract:(int)a3 withDuration:(double)a4;
- (void)_transitionFromCompleteExpand:(int)a3 withDuration:(double)a4;
- (void)_transitionFromContracted:(int)a3 withDuration:(double)a4;
- (void)_transitionFromContracting:(int)a3 withDuration:(double)a4;
- (void)_transitionFromExpanded:(int)a3 withDuration:(double)a4;
- (void)_transitionFromExpanding:(int)a3 withDuration:(double)a4;
- (void)canceledPinch:(id)a3;
- (void)collapseWithAnimation:(BOOL)a3 completion:(id)a4;
- (void)continuedPinch:(id)a3;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)expandWithAnimation:(BOOL)a3 completion:(id)a4;
- (void)finishTransition;
- (void)finishTransitionToState:(int)a3;
- (void)finishedPinch:(id)a3;
- (void)notifyExpansionFraction:(float)a3 force:(BOOL)a4;
- (void)setAllowsExpansion:(BOOL)a3;
- (void)setContractedFrame:(CGRect)a3;
- (void)setDelegate:(id)a3;
- (void)setExpandedFrame:(CGRect)a3;
- (void)setState:(int)a3 withDuration:(double)a4;
- (void)startedPinch:(id)a3;
- (void)updatePinchState:(id)a3;
- (void)willMoveToWindow:(id)a3;
@end

@implementation PLExpandableView

- (void)setAllowsExpansion:(BOOL)a3
{
  if (a3)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  self->_expandFlags = (*&self->_expandFlags & 0xFFFFF7FF | v3);
}

- (CGRect)expandedFrame
{
  p_expandedFrame = &self->_expandedFrame;
  if (!CGRectIsEmpty(self->_expandedFrame))
  {
    v8 = [(PLExpandableView *)self window];
    if (v8)
    {
      [-[PLExpandableView superview](self "superview")];
      goto LABEL_7;
    }

    if ([(PLExpandableView *)self state]!= 4)
    {
      x = p_expandedFrame->origin.x;
      y = p_expandedFrame->origin.y;
      width = p_expandedFrame->size.width;
      height = p_expandedFrame->size.height;
      goto LABEL_7;
    }
  }

  [(PLExpandableView *)self frame];
LABEL_7:
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)setExpandedFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(PLExpandableView *)self window];
  if (v8)
  {
    [-[PLExpandableView superview](self "superview")];
    self->_expandedFrame.origin.x = v9;
    self->_expandedFrame.origin.y = v10;
    self->_expandedFrame.size.width = v11;
    self->_expandedFrame.size.height = v12;
    v13 = (*&self->_expandFlags & 0xFFFFFBFF);
  }

  else
  {
    self->_expandedFrame.origin.x = x;
    self->_expandedFrame.origin.y = y;
    self->_expandedFrame.size.width = width;
    self->_expandedFrame.size.height = height;
    v13 = (*&self->_expandFlags | 0x400);
  }

  self->_expandFlags = v13;
}

- (CGRect)contractedFrame
{
  p_contractedFrame = &self->_contractedFrame;
  if (CGRectIsEmpty(self->_contractedFrame))
  {
    [(PLExpandableView *)self frame];
  }

  else
  {
    v8 = [(PLExpandableView *)self window];
    if (v8)
    {
      [-[PLExpandableView superview](self "superview")];
    }

    else
    {
      x = p_contractedFrame->origin.x;
      y = p_contractedFrame->origin.y;
      width = p_contractedFrame->size.width;
      height = p_contractedFrame->size.height;
    }
  }

  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)setContractedFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(PLExpandableView *)self window];
  if (v8)
  {
    [-[PLExpandableView superview](self "superview")];
    self->_contractedFrame.origin.x = v9;
    self->_contractedFrame.origin.y = v10;
    self->_contractedFrame.size.width = v11;
    self->_contractedFrame.size.height = v12;
    v13 = (*&self->_expandFlags & 0xFFFFFDFF);
  }

  else
  {
    self->_contractedFrame.origin.x = x;
    self->_contractedFrame.origin.y = y;
    self->_contractedFrame.size.width = width;
    self->_contractedFrame.size.height = height;
    v13 = (*&self->_expandFlags | 0x200);
  }

  self->_expandFlags = v13;
}

- (void)setDelegate:(id)a3
{
  if (self->_delegate != a3)
  {
    self->_delegate = a3;
    if (objc_opt_respondsToSelector())
    {
      v4 = 4096;
    }

    else
    {
      v4 = 0;
    }

    self->_expandFlags = (*&self->_expandFlags & 0xFFFFEFFF | v4);
    if (objc_opt_respondsToSelector())
    {
      v5 = 0x2000;
    }

    else
    {
      v5 = 0;
    }

    self->_expandFlags = (*&self->_expandFlags & 0xFFFFDFFF | v5);
    if (objc_opt_respondsToSelector())
    {
      v6 = 0x4000;
    }

    else
    {
      v6 = 0;
    }

    self->_expandFlags = (*&self->_expandFlags & 0xFFFFBFFF | v6);
    if (objc_opt_respondsToSelector())
    {
      v7 = 0x8000;
    }

    else
    {
      v7 = 0;
    }

    self->_expandFlags = (*&self->_expandFlags & 0xFFFF7FFF | v7);
    if (objc_opt_respondsToSelector())
    {
      v8 = 0x10000;
    }

    else
    {
      v8 = 0;
    }

    self->_expandFlags = (*&self->_expandFlags & 0xFFFEFFFF | v8);
    if (objc_opt_respondsToSelector())
    {
      v9 = 0x20000;
    }

    else
    {
      v9 = 0;
    }

    self->_expandFlags = (*&self->_expandFlags & 0xFFFDFFFF | v9);
    if (objc_opt_respondsToSelector())
    {
      v10 = 0x40000;
    }

    else
    {
      v10 = 0;
    }

    self->_expandFlags = (*&self->_expandFlags & 0xFFFBFFFF | v10);
    if (objc_opt_respondsToSelector())
    {
      v11 = 0x80000;
    }

    else
    {
      v11 = 0;
    }

    self->_expandFlags = (*&self->_expandFlags & 0xFFF7FFFF | v11);
    if (objc_opt_respondsToSelector())
    {
      v12 = 0x100000;
    }

    else
    {
      v12 = 0;
    }

    self->_expandFlags = (*&self->_expandFlags & 0xFFEFFFFF | v12);
    if (objc_opt_respondsToSelector())
    {
      v13 = 0x200000;
    }

    else
    {
      v13 = 0;
    }

    self->_expandFlags = (*&self->_expandFlags & 0xFFDFFFFF | v13);
    if (objc_opt_respondsToSelector())
    {
      v14 = 0x400000;
    }

    else
    {
      v14 = 0;
    }

    self->_expandFlags = (*&self->_expandFlags & 0xFFBFFFFF | v14);
  }
}

- (void)expandWithAnimation:(BOOL)a3 completion:(id)a4
{
  v5 = a3;
  if ([(PLExpandableView *)self allowsExpansion])
  {
    if (v5)
    {
      v7 = 0.3;
    }

    else
    {
      v7 = 0.0;
    }

    if (!v5)
    {
      *&self->_expandFlags |= 0x100u;
    }

    self->_expansionCompletionHandler = [a4 copy];
    [(PLExpandableView *)self setState:1 withDuration:0.0];
    [(PLExpandableView *)self setState:2 withDuration:v7];
    [(PLExpandableView *)self completeTrackingPinch:0 toState:4 duration:v7];
    [(PLExpandableView *)self setExpansionFraction:v8];
    if (!v5)
    {
      *&self->_expandFlags &= ~0x100u;
    }
  }
}

- (void)collapseWithAnimation:(BOOL)a3 completion:(id)a4
{
  if (a3)
  {
    v7 = 0.3;
  }

  else
  {
    v7 = 0.0;
  }

  if (!a3)
  {
    v8 = self;
    *&self->_expandFlags |= 0x100u;
  }

  self->_collapsingCompletionHandler = [a4 copy];
  [(PLExpandableView *)self setState:5 withDuration:0.0];
  [(PLExpandableView *)self setState:7 withDuration:v7];
  [(PLExpandableView *)self completeTrackingPinch:0 toState:0 duration:v7];
  [(PLExpandableView *)self setExpansionFraction:v9];
  if (!a3)
  {
    *&self->_expandFlags &= ~0x100u;
  }
}

- (CGRect)pinchRect:(CGRect)a3 inView:(id)a4 insetTouches:(BOOL)a5
{
  v7 = a3.size.width * 0.21;
  v8 = 0.0;
  if (!a5)
  {
    v7 = 0.0;
  }

  v9 = a3.size.height * 0.21;
  if (!a5)
  {
    v9 = 0.0;
  }

  v36 = v7;
  v38 = v9;
  v44 = CGRectInset(a3, v7, v9);
  x = v44.origin.x;
  y = v44.origin.y;
  width = v44.size.width;
  height = v44.size.height;
  [(PLExpandableView *)self convertPoint:a4 toView:self->_leftTouchLocation.x, self->_leftTouchLocation.y];
  v15 = v14;
  v17 = v16;
  [(PLExpandableView *)self convertPoint:a4 toView:self->_rightTouchLocation.x, self->_rightTouchLocation.y];
  v19 = v18;
  v40 = v20;
  v45.origin.x = x;
  v45.origin.y = y;
  v45.size.width = width;
  v45.size.height = height;
  if (v15 < CGRectGetMinX(v45) || (v46.origin.x = x, v46.origin.y = y, v46.size.width = width, v46.size.height = height, v15 > CGRectGetMaxX(v46)))
  {
    v47.origin.x = x;
    v47.origin.y = y;
    v47.size.width = width;
    v47.size.height = height;
    v8 = v15 - CGRectGetMidX(v47);
  }

  v34 = v15;
  v37 = v8;
  v48.origin.x = x;
  v48.origin.y = y;
  v48.size.width = width;
  v48.size.height = height;
  if (v17 < CGRectGetMinY(v48) || (v49.origin.x = x, v49.origin.y = y, v49.size.width = width, v49.size.height = height, v21 = 0.0, v17 > CGRectGetMaxY(v49)))
  {
    v50.origin.x = x;
    v50.origin.y = y;
    v50.size.width = width;
    v50.size.height = height;
    v21 = v17 - CGRectGetMidY(v50);
  }

  v35 = v17;
  v51.origin.x = x;
  v51.origin.y = y;
  v51.size.width = width;
  v51.size.height = height;
  if (v19 < CGRectGetMinX(v51) || (v52.origin.x = x, v52.origin.y = y, v52.size.width = width, v52.size.height = height, v22 = 0.0, v19 > CGRectGetMaxX(v52)))
  {
    v53.origin.x = x;
    v53.origin.y = y;
    v53.size.width = width;
    v53.size.height = height;
    v22 = v19 - CGRectGetMidX(v53);
  }

  v54.origin.x = x;
  v54.origin.y = y;
  v54.size.width = width;
  v54.size.height = height;
  if (v40 < CGRectGetMinY(v54) || (v55.origin.x = x, v55.origin.y = y, v55.size.width = width, v55.size.height = height, MaxY = CGRectGetMaxY(v55), v24 = v40, v25 = 0.0, v40 > MaxY))
  {
    v56.origin.x = x;
    v56.origin.y = y;
    v56.size.width = width;
    v56.size.height = height;
    MidY = CGRectGetMidY(v56);
    v24 = v40;
    v25 = v40 - MidY;
  }

  memset(&v43, 0, sizeof(v43));
  if (a4)
  {
    [a4 transform];
    v24 = v40;
  }

  v27 = (vabdd_f64(v34, v19) + v36 * 2.0) / a3.size.width;
  if (v27 < 1.0)
  {
    v27 = 1.0;
  }

  v28 = (vabdd_f64(v35, v24) + v38 * 2.0) / a3.size.height;
  if (v28 < 1.0)
  {
    v28 = 1.0;
  }

  if (v27 >= v28)
  {
    v29 = v27;
  }

  else
  {
    v29 = v28;
  }

  v41 = v43;
  CGAffineTransformTranslate(&v42, &v41, (v37 + v22) * 0.5, (v21 + v25) * 0.5);
  v43 = v42;
  UIRectGetCenter();
  v31 = v30;
  v33 = v32;
  v41 = v43;
  CGAffineTransformTranslate(&v42, &v41, v30, v32);
  v43 = v42;
  v41 = v42;
  CGAffineTransformScale(&v42, &v41, v29, v29);
  v43 = v42;
  v41 = v42;
  CGAffineTransformTranslate(&v42, &v41, -v31, -v33);
  v43 = v42;
  return CGRectApplyAffineTransform(a3, &v42);
}

- (void)updatePinchState:(id)a3
{
  if ([a3 numberOfTouches] == 2)
  {
    self->_previousLeftLocation = self->_leftTouchLocation;
    self->_previousRightLocation = self->_rightTouchLocation;
    [a3 locationOfTouch:self->_leftTouchIndex inView:self];
    self->_leftTouchLocation.x = v5;
    self->_leftTouchLocation.y = v6;
    [a3 locationOfTouch:self->_rightTouchIndex inView:self];
    self->_rightTouchLocation.x = v7;
    self->_rightTouchLocation.y = v8;
    [a3 velocity];
    self->_pinchVelocity = v9;
    [a3 scale];
    self->_trackingTimeInterval = v10 / self->_pinchVelocity;
  }
}

- (int)snapState:(BOOL)a3
{
  expansionFraction = self->_expansionFraction;
  if (a3)
  {
    pinchVelocity = self->_pinchVelocity;
  }

  else
  {
    expansionFraction = 1.0 - fmin(expansionFraction, 1.0);
    v5 = self->_pinchVelocity;
    pinchVelocity = -v5;
  }

  if (pinchVelocity <= 1.0 && ((v8 = pinchVelocity, v9 = expansionFraction, v9 > 0.25) ? (v10 = v8 < -0.2) : (v10 = 1), v10 && v9 <= 0.7))
  {
    v7 = 0;
    v6 = 4;
  }

  else
  {
    v6 = 0;
    v7 = 4;
  }

  if (a3)
  {
    return v7;
  }

  else
  {
    return v6;
  }
}

- (void)finishTransitionToState:(int)a3
{
  if (a3)
  {
    if (a3 != 4)
    {
      return;
    }

    if ((*&self->_expandFlags & 3 | 4) == 6)
    {
      [(PLExpandableView *)self setState:4 withDuration:0.0];
    }

    v4 = 424;
  }

  else
  {
    if ((~*&self->_expandFlags & 3) == 0)
    {
      [(PLExpandableView *)self setState:0 withDuration:0.0];
    }

    v4 = 416;
  }

  v5 = (&self->super.super.super.isa + v4);
  if (*v5)
  {
    (*(*v5 + 2))();

    *v5 = 0;
  }
}

- (void)finishTransition
{
  v3 = [(PLExpandableView *)self state]- 2;
  if (v3 <= 5 && ((0x33u >> v3) & 1) != 0)
  {
    v4 = dword_21AD11974[v3];

    [(PLExpandableView *)self finishTransitionToState:v4];
  }
}

- (void)canceledPinch:(id)a3
{
  expandFlags = self->_expandFlags;
  if ((*&expandFlags & 0x40) != 0)
  {
    self->_expandFlags = (*&expandFlags & 0xFFFFFFBF);
    v6 = [(PLExpandableView *)self state];
    if (v6 == 5)
    {
      expansionFraction = 1.0 - self->_expansionFraction;
      v7 = 4;
      v9 = 6;
    }

    else
    {
      if (v6 != 1)
      {
        return;
      }

      v7 = 0;
      expansionFraction = self->_expansionFraction;
      v9 = 3;
    }

    v10 = expansionFraction * 0.3;
    [(PLExpandableView *)self setState:v9 withDuration:expansionFraction * 0.3];
    [(PLExpandableView *)self completeTrackingPinch:a3 toState:v7 duration:v10];
    [(PLExpandableView *)self setExpansionFraction:v11];
    v12 = *MEMORY[0x277CBF348];
    self->_leftTouchLocation = *MEMORY[0x277CBF348];
    self->_previousLeftLocation = v12;
    self->_rightTouchLocation = v12;
    self->_previousRightLocation = v12;
  }
}

- (void)finishedPinch:(id)a3
{
  if ((*&self->_expandFlags & 0x40) != 0)
  {
    v5 = [(PLExpandableView *)self snapState:(*&self->_expandFlags & 7) == 1];
    expandFlags = self->_expandFlags;
    self->_expandFlags = (*&expandFlags & 0xFFFFFFBF);
    v7 = *&expandFlags & 7;
    if (v7 == 5)
    {
      if (v5)
      {
        if (v5 == 4)
        {
          v8 = 6;
          goto LABEL_10;
        }

LABEL_15:
        v13 = *MEMORY[0x277CBF348];
        self->_leftTouchLocation = *MEMORY[0x277CBF348];
        self->_previousLeftLocation = v13;
        self->_rightTouchLocation = v13;
        self->_previousRightLocation = v13;
        return;
      }

      v8 = 7;
    }

    else
    {
      if (v7 != 1)
      {
        goto LABEL_15;
      }

      if (v5)
      {
        if (v5 == 4)
        {
          v8 = 2;
LABEL_10:
          expansionFraction = 1.0 - self->_expansionFraction;
          v10 = 4;
LABEL_14:
          v11 = expansionFraction * 0.3;
          [(PLExpandableView *)self setState:v8 withDuration:expansionFraction * 0.3];
          [(PLExpandableView *)self completeTrackingPinch:a3 toState:v10 duration:v11];
          [(PLExpandableView *)self setExpansionFraction:v12];
          goto LABEL_15;
        }

        goto LABEL_15;
      }

      v8 = 3;
    }

    v10 = 0;
    expansionFraction = self->_expansionFraction;
    goto LABEL_14;
  }
}

- (void)continuedPinch:(id)a3
{
  if ((*&self->_expandFlags & 0x40) != 0)
  {
    [(PLExpandableView *)self updatePinchState:?];
    if ((*&self->_expandFlags & 3 | 4) == 5)
    {
      [(PLExpandableView *)self continueTrackingPinch:a3];

      [(PLExpandableView *)self notifyExpansionFraction:0 force:?];
    }
  }
}

- (void)startedPinch:(id)a3
{
  if ([a3 numberOfTouches] >= 2 && -[PLExpandableView _canPinch](self, "_canPinch"))
  {
    [(PLExpandableView *)self _removeAllAnimations:1];
    *&self->_expandFlags |= 0x40u;
    self->_leftTouchIndex = 0;
    self->_rightTouchIndex = 1;
    v5 = *MEMORY[0x277CBF348];
    self->_leftTouchLocation = *MEMORY[0x277CBF348];
    self->_rightTouchLocation = v5;
    [(PLExpandableView *)self updatePinchState:a3];
    if (self->_leftTouchLocation.x >= self->_rightTouchLocation.x)
    {
      leftTouchLocation = self->_leftTouchLocation;
      self->_leftTouchIndex = 1;
      self->_rightTouchIndex = 0;
      self->_leftTouchLocation = self->_rightTouchLocation;
      self->_rightTouchLocation = leftTouchLocation;
    }

    v7 = (*&self->_expandFlags & 7) - 1;
    if (v7 > 5)
    {
      v8 = 0;
      v9 = 1;
    }

    else
    {
      v8 = dword_21AD11944[v7];
      v9 = dword_21AD1195C[v7];
    }

    [(PLExpandableView *)self setState:v8 withDuration:0.0];
    [(PLExpandableView *)self setState:v9 withDuration:0.0];
    [(PLExpandableView *)self beginTrackingPinch:a3];
    expansionFraction = self->_expansionFraction;
    *&expansionFraction = expansionFraction;

    [(PLExpandableView *)self notifyExpansionFraction:1 force:expansionFraction];
  }

  else
  {
    *&self->_expandFlags &= ~0x40u;
  }
}

- (void)notifyExpansionFraction:(float)a3 force:(BOOL)a4
{
  v4 = a3;
  if (self->_expansionFraction != a3 || a4)
  {
    if ((*(&self->_expandFlags + 2) & 0x40) != 0)
    {
      [(PLExpandableViewDelegate *)self->_delegate expandableView:self expansionFractionChanged:?];
    }

    [(PLExpandableView *)self setExpansionFraction:a4, v4];
  }
}

- (void)didMoveToWindow
{
  v3 = [(PLExpandableView *)self window];
  v4 = v3;
  expandFlags = self->_expandFlags;
  if ((*&expandFlags & 0x200) != 0 && v3)
  {
    p_contractedFrame = &self->_contractedFrame;
    if (!CGRectIsEmpty(self->_contractedFrame))
    {
      [-[PLExpandableView superview](self "superview")];
      p_contractedFrame->origin.x = v7;
      self->_contractedFrame.origin.y = v8;
      self->_contractedFrame.size.width = v9;
      self->_contractedFrame.size.height = v10;
    }

    expandFlags = (*&self->_expandFlags & 0xFFFFFDFF);
    self->_expandFlags = expandFlags;
  }

  if ((*&expandFlags & 0x400) != 0 && v4)
  {
    p_expandedFrame = &self->_expandedFrame;
    if (!CGRectIsEmpty(self->_expandedFrame))
    {
      [-[PLExpandableView superview](self "superview")];
      p_expandedFrame->origin.x = v12;
      self->_expandedFrame.origin.y = v13;
      self->_expandedFrame.size.width = v14;
      self->_expandedFrame.size.height = v15;
    }

    *&self->_expandFlags &= ~0x400u;
  }
}

- (void)willMoveToWindow:(id)a3
{
  if (!a3 && (*&self->_expandFlags & 0x80) != 0)
  {
    [(PLExpandableView *)self _setAutorotationDisabled:0];
  }
}

- (void)setState:(int)a3 withDuration:(double)a4
{
  if ((*&self->_expandFlags & 7) != a3)
  {
    v5 = *&a3;
    [(PLExpandableView *)self stateWillChangeTo:?];
    expandFlags = self->_expandFlags;
    self->_expandFlags = (*&expandFlags & 0xFFFFFFC0 | v5 & 7 | (8 * (*&expandFlags & 7)));
    v8 = *&expandFlags & 7;
    if (v8 > 3)
    {
      if (v8 > 5)
      {
        if (v8 == 6)
        {
          [(PLExpandableView *)self _transitionFromCancelContract:v5 withDuration:a4];
        }

        else
        {
          [(PLExpandableView *)self _transitionFromCompleteContract:v5 withDuration:a4];
        }
      }

      else if (v8 == 4)
      {
        [(PLExpandableView *)self _transitionFromExpanded:v5 withDuration:a4];
      }

      else
      {
        [(PLExpandableView *)self _transitionFromContracting:v5 withDuration:a4];
      }
    }

    else if (v8 > 1)
    {
      if (v8 == 2)
      {
        [(PLExpandableView *)self _transitionFromCompleteExpand:v5 withDuration:a4];
      }

      else
      {
        [(PLExpandableView *)self _transitionFromCancelExpand:v5 withDuration:a4];
      }
    }

    else if (v8)
    {
      [(PLExpandableView *)self _transitionFromExpanding:v5 withDuration:a4];
    }

    else
    {
      if (CGRectIsEmpty(self->_contractedFrame))
      {
        [(PLExpandableView *)self frame];
        [(PLExpandableView *)self setContractedFrame:?];
      }

      [(PLExpandableView *)self _transitionFromContracted:v5 withDuration:a4];
    }

    [(PLExpandableView *)self stateDidChangeFrom:(*&self->_expandFlags >> 3) & 7];
    v9 = (*&self->_expandFlags >> 3) & 7;
    if ((v9 - 1) > 6)
    {
      v10 = 0;
    }

    else
    {
      v10 = dword_21AD11928[v9 - 1];
    }

    v11 = *&self->_expandFlags & 7;
    if ((v11 - 1) > 6)
    {
      v12 = 0;
    }

    else
    {
      v12 = dword_21AD11928[v11 - 1];
    }

    if (v10 != v12)
    {
      if (((1 << v9) & 0xCC) != 0)
      {

        v11 = *&self->_expandFlags & 7;
      }

      if (((1 << v11) & 0xCC) != 0)
      {
        delegate = self->_delegate;

        v14 = delegate;
      }
    }
  }
}

- (void)_transitionFromCompleteContract:(int)a3 withDuration:(double)a4
{
  if (a3 == 1)
  {
    [(PLExpandableView *)self _notifyDidCompleteCollapsing];

    [(PLExpandableView *)self _notifyWillBeginExpanding];
  }

  else if (!a3)
  {

    [(PLExpandableView *)self _notifyDidCompleteCollapsing];
  }
}

- (void)_transitionFromCancelContract:(int)a3 withDuration:(double)a4
{
  if (a3 == 5)
  {
    [(PLExpandableView *)self _notifyDidCancelCollapsing];

    [(PLExpandableView *)self _notifyWillBeginCollapsing];
  }

  else if (a3 == 4)
  {

    [(PLExpandableView *)self _notifyDidCancelCollapsing];
  }
}

- (void)_transitionFromContracting:(int)a3 withDuration:(double)a4
{
  if (a3 == 7)
  {
    [(PLExpandableView *)self _notifyWillCompleteCollapsingWithDuration:a4];
  }

  else if (a3 == 6)
  {
    [(PLExpandableView *)self _notifyWillCancelCollapsingWithDuration:a4];
  }
}

- (void)_transitionFromExpanded:(int)a3 withDuration:(double)a4
{
  if (a3 == 5)
  {
    [(PLExpandableView *)self _notifyWillBeginCollapsing];
  }
}

- (void)_transitionFromCancelExpand:(int)a3 withDuration:(double)a4
{
  if (a3 == 1)
  {
    [(PLExpandableView *)self _notifyDidCancelExpanding];

    [(PLExpandableView *)self _notifyWillBeginExpanding];
  }

  else if (!a3)
  {

    [(PLExpandableView *)self _notifyDidCancelExpanding];
  }
}

- (void)_transitionFromCompleteExpand:(int)a3 withDuration:(double)a4
{
  if (a3 == 5)
  {
    [(PLExpandableView *)self _notifyDidCompleteExpanding];

    [(PLExpandableView *)self _notifyWillBeginCollapsing];
  }

  else if (a3 == 4)
  {

    [(PLExpandableView *)self _notifyDidCompleteExpanding];
  }
}

- (void)_transitionFromExpanding:(int)a3 withDuration:(double)a4
{
  if (a3 == 3)
  {
    [(PLExpandableView *)self _notifyWillCancelExpandingWithDuration:a4];
  }

  else if (a3 == 2)
  {
    [(PLExpandableView *)self _notifyWillCompleteExpandingWithDuration:a4];
  }
}

- (void)_transitionFromContracted:(int)a3 withDuration:(double)a4
{
  if (a3 == 1)
  {
    [(PLExpandableView *)self _notifyWillBeginExpanding];
  }
}

- (void)_notifyDidCancelCollapsing
{
  [(PLExpandableView *)self _setAutorotationDisabled:0];
  if ((*(&self->_expandFlags + 2) & 0x20) != 0)
  {
    delegate = self->_delegate;

    [(PLExpandableViewDelegate *)delegate expandableViewDidCancelCollapsing:self];
  }
}

- (void)_notifyDidCancelExpanding
{
  [(PLExpandableView *)self _setAutorotationDisabled:0];
  if (*(&self->_expandFlags + 2))
  {
    delegate = self->_delegate;

    [(PLExpandableViewDelegate *)delegate expandableViewDidCancelExpanding:self];
  }
}

- (void)_notifyWillBeginCollapsing
{
  [(PLExpandableView *)self _setAutorotationDisabled:1];
  if ((*(&self->_expandFlags + 2) & 2) != 0)
  {
    delegate = self->_delegate;

    [(PLExpandableViewDelegate *)delegate expandableViewDidBeginCollapsing:self];
  }
}

- (void)_notifyDidCompleteExpanding
{
  [(PLExpandableView *)self _setAutorotationDisabled:0];
  if ((*(&self->_expandFlags + 1) & 0x40) != 0)
  {
    delegate = self->_delegate;

    [(PLExpandableViewDelegate *)delegate expandableViewDidCompleteExpanding:self];
  }
}

- (void)_notifyWillCancelExpandingWithDuration:(double)a3
{
  if ((*(&self->_expandFlags + 1) & 0x80) != 0)
  {
    [(PLExpandableViewDelegate *)self->_delegate expandableView:self willCancelExpandingWithDuration:a3];
  }
}

- (void)_notifyWillCompleteExpandingWithDuration:(double)a3
{
  if ((*(&self->_expandFlags + 1) & 0x20) != 0)
  {
    [(PLExpandableViewDelegate *)self->_delegate expandableView:self willCompleteExpandingWithDuration:a3];
  }
}

- (void)_notifyWillCompleteCollapsingWithDuration:(double)a3
{
  if ((*(&self->_expandFlags + 2) & 4) != 0)
  {
    [(PLExpandableViewDelegate *)self->_delegate expandableView:self willCompleteCollapsingWithDuration:a3];
  }
}

- (void)_notifyWillCancelCollapsingWithDuration:(double)a3
{
  if ((*(&self->_expandFlags + 2) & 0x10) != 0)
  {
    [(PLExpandableViewDelegate *)self->_delegate expandableView:self willCancelCollapsingWithDuration:a3];
  }
}

- (void)_notifyWillBeginExpanding
{
  [(PLExpandableView *)self _setAutorotationDisabled:1];
  if ((*(&self->_expandFlags + 1) & 0x10) != 0)
  {
    delegate = self->_delegate;

    [(PLExpandableViewDelegate *)delegate expandableViewWillBeginExpanding:self];
  }
}

- (void)_notifyDidCompleteCollapsing
{
  [(PLExpandableView *)self _setAutorotationDisabled:0];
  if ((*(&self->_expandFlags + 2) & 8) != 0)
  {
    delegate = self->_delegate;

    [(PLExpandableViewDelegate *)delegate expandableViewDidCompleteCollapsing:self];
  }
}

- (void)_setAutorotationDisabled:(BOOL)a3
{
  expandFlags = self->_expandFlags;
  if (a3)
  {
    if ((*&expandFlags & 0x80) == 0)
    {
      self->_expandFlags = (*&expandFlags | 0x80);
      v5 = [(PLExpandableView *)self window];

      [v5 beginDisablingInterfaceAutorotation];
    }
  }

  else if ((*&expandFlags & 0x80) != 0)
  {
    self->_expandFlags = (*&expandFlags & 0xFFFFFF7F);
    if ([-[PLExpandableView window](self "window")])
    {
      v6 = [(PLExpandableView *)self window];

      [v6 endDisablingInterfaceAutorotation];
    }
  }
}

- (void)dealloc
{
  self->_expansionCompletionHandler = 0;

  self->_collapsingCompletionHandler = 0;
  v3.receiver = self;
  v3.super_class = PLExpandableView;
  [(PLExpandableView *)&v3 dealloc];
}

- (PLExpandableView)initWithFrame:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = PLExpandableView;
  result = [(PLExpandableView *)&v4 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  result->_expandFlags = (*&result->_expandFlags & 0xFFFFF7F8 | 0x800);
  return result;
}

@end