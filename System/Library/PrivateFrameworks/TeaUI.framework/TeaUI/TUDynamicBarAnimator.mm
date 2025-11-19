@interface TUDynamicBarAnimator
- (BOOL)canTransitionToState:(int64_t)a3;
- (TUDynamicBarAnimator)init;
- (TUDynamicBarAnimatorDelegate)delegate;
- (double)_bottomBarOffsetForTopBarHeight:(double)a3;
- (void)_displayLinkFired:(id)a3;
- (void)_moveBarsWithDelta:(double)a3;
- (void)_setInSteadyState:(BOOL)a3;
- (void)_transitionToSteadyState;
- (void)_updateDisplayLink;
- (void)_updateOutputs;
- (void)attemptTransitionToState:(int64_t)a3 animated:(BOOL)a4;
- (void)beginScrollingWithOffset:(double)a3;
- (void)endScrollingWithTargetOffset:(double)a3 velocity:(double)a4;
- (void)setBottomBarOffset:(double)a3 forState:(int64_t)a4;
- (void)setMaximumBottomBarOffset:(double)a3;
- (void)setTopBarHeight:(double)a3 forState:(int64_t)a4;
- (void)updateScrollingWithOffset:(double)a3;
@end

@implementation TUDynamicBarAnimator

- (TUDynamicBarAnimator)init
{
  v6.receiver = self;
  v6.super_class = TUDynamicBarAnimator;
  v2 = [(TUDynamicBarAnimator *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_state = 1;
    v2->_inSteadyState = 1;
    v4 = v2;
  }

  return v3;
}

- (void)_moveBarsWithDelta:(double)a3
{
  unroundedTopBarHeight = self->_unroundedTopBarHeight;
  v6 = self->_targetTopBarHeight - a3;
  self->_targetTopBarHeight = v6;
  v7 = self->_topBarHeightForState[1] - self->_topBarHeightForState[0];
  v8 = vabdd_f64(unroundedTopBarHeight, v6);
  self->_unroundedTopBarHeight = unroundedTopBarHeight - exp(-(v8 * 3.0 / v7 * (v8 * 3.0 / v7))) * a3;

  [(TUDynamicBarAnimator *)self _updateOutputs];
}

- (void)attemptTransitionToState:(int64_t)a3 animated:(BOOL)a4
{
  v4 = a4;
  if (![(TUDynamicBarAnimator *)self canTransitionToState:?])
  {
    return;
  }

  self->_didHideOrShowBarsExplicitly = 1;
  v7 = self->_topBarHeightForState[a3];
  self->_targetTopBarHeight = v7;
  if (!v4)
  {
    goto LABEL_5;
  }

  if (([MEMORY[0x1E69DD250] areAnimationsEnabled] & 1) == 0)
  {
    v7 = self->_topBarHeightForState[a3];
LABEL_5:
    self->_unroundedTopBarHeight = v7;
  }

  [(TUDynamicBarAnimator *)self _updateOutputs];
}

- (void)_transitionToSteadyState
{
  if (self->_topBarHeight >= self->_topBarHeightForState[1] * 0.9 || (v3 = [(TUDynamicBarAnimator *)self canTransitionToState:0], v4 = 0, !v3))
  {
    v4 = 1;
  }

  [(TUDynamicBarAnimator *)self attemptTransitionToState:v4 animated:1];
}

- (double)_bottomBarOffsetForTopBarHeight:(double)a3
{
  v3 = self->_topBarHeightForState[0];
  v4 = a3 - v3;
  v5 = self->_topBarHeightForState[1] - v3;
  v6 = v5 == 0.0 && v4 == 0.0;
  v7 = v4 / v5;
  if (v6)
  {
    v7 = 1.0;
  }

  return self->_bottomBarOffsetForState[1] * v7 + (1.0 - v7) * self->_bottomBarOffsetForState[0];
}

- (void)_updateOutputs
{
  [(TUDynamicBarAnimator *)self _constrainTopBarHeight:self->_unroundedTopBarHeight];
  self->_unroundedTopBarHeight = v3;
  [(TUDynamicBarAnimator *)self _constrainTopBarHeight:self->_targetTopBarHeight];
  self->_targetTopBarHeight = v4;
  if (!self->_dragging && v4 != self->_topBarHeightForState[0])
  {
    self->_targetTopBarHeight = self->_topBarHeightForState[1];
  }

  [(TUDynamicBarAnimator *)self _updateDisplayLink];
  unroundedTopBarHeight = self->_unroundedTopBarHeight;
  v6 = llroundf(unroundedTopBarHeight);
  [(TUDynamicBarAnimator *)self _bottomBarOffsetForTopBarHeight:?];
  *&v7 = v7;
  v8 = llroundf(*&v7);
  v9 = vabdd_f64(v8, self->_bottomBarOffsetForState[0]) < 0.001 && vabdd_f64(v6, self->_topBarHeightForState[0]) < 0.001;
  v10 = vabdd_f64(v8, self->_bottomBarOffsetForState[1]) < 0.001 && vabdd_f64(v6, self->_topBarHeightForState[1]) < 0.001;
  v11 = v9 || v10;
  v12 = (v9 || v10) && self->_displayLink == 0;
  [(TUDynamicBarAnimator *)self _setInSteadyState:v12];
  v13 = !v9;
  if (self->_topBarHeight != v6 || self->_bottomBarOffset != v8 || self->_state != v13)
  {
    self->_state = v13;
    self->_topBarHeight = v6;
    self->_bottomBarOffset = v8;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained dynamicBarAnimatorOutputsDidChange:self];

    if (!v11 && !self->_dragging && !self->_displayLink)
    {

      [(TUDynamicBarAnimator *)self _transitionToSteadyState];
    }
  }
}

- (void)_setInSteadyState:(BOOL)a3
{
  if (self->_inSteadyState == !a3)
  {
    v4 = a3;
    self->_inSteadyState = a3;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v7 = WeakRetained;
    if (v4)
    {
      [WeakRetained dynamicBarAnimatorWillEnterSteadyState:self];
    }

    else
    {
      [WeakRetained dynamicBarAnimatorWillLeaveSteadyState:self];
    }
  }
}

- (BOOL)canTransitionToState:(int64_t)a3
{
  v3 = (&self->super.isa + a3);
  [(TUDynamicBarAnimator *)self _constrainTopBarHeight:v3[1]];
  return v4 == v3[1];
}

- (void)_displayLinkFired:(id)a3
{
  [a3 duration];
  unroundedTopBarHeight = self->_unroundedTopBarHeight;
  self->_unroundedTopBarHeight = unroundedTopBarHeight - ((self->_lastUnroundedTopBarHeight - unroundedTopBarHeight) / v5 + ((self->_lastUnroundedTopBarHeight - unroundedTopBarHeight) / v5 * -50.0 + (unroundedTopBarHeight - self->_targetTopBarHeight) * 900.0) * v5) * v5;
  self->_lastUnroundedTopBarHeight = unroundedTopBarHeight;

  [(TUDynamicBarAnimator *)self _updateOutputs];
}

- (void)_updateDisplayLink
{
  if (vabdd_f64(self->_topBarHeight, self->_targetTopBarHeight) >= 0.1 || vabdd_f64(self->_lastUnroundedTopBarHeight, self->_unroundedTopBarHeight) >= 10.0)
  {
    if (!self->_displayLink)
    {
      v6 = [MEMORY[0x1E6979330] displayLinkWithTarget:self selector:sel__displayLinkFired_];
      displayLink = self->_displayLink;
      self->_displayLink = v6;

      v8 = self->_displayLink;
      v9 = [MEMORY[0x1E695DFD0] mainRunLoop];
      [(CADisplayLink *)v8 addToRunLoop:v9 forMode:*MEMORY[0x1E695DA28]];

      self->_lastUnroundedTopBarHeight = self->_unroundedTopBarHeight;
    }
  }

  else
  {
    v3 = self->_displayLink;
    if (v3)
    {
      [(CADisplayLink *)v3 invalidate];
      v4 = self->_displayLink;
      self->_displayLink = 0;

      topBarHeight = self->_topBarHeight;
      self->_targetTopBarHeight = topBarHeight;
      self->_unroundedTopBarHeight = topBarHeight;
      self->_lastUnroundedTopBarHeight = topBarHeight;

      [(TUDynamicBarAnimator *)self _updateOutputs];
    }
  }
}

- (void)beginScrollingWithOffset:(double)a3
{
  self->_dragging = 1;
  *&self->_didHideBarsByMoving = 0;
  self->_lastOffset = a3;
}

- (void)updateScrollingWithOffset:(double)a3
{
  if (!self->_didHideOrShowBarsExplicitly)
  {
    v5 = a3 - self->_lastOffset;
    v6 = fmax(self->_topBarHeight - self->_topBarHeightForState[0] - v5, 0.0);
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v8 = [WeakRetained dynamicBarAnimator:self canHideBarsByDraggingWithOffset:v6];

    if (v8)
    {
      [(TUDynamicBarAnimator *)self _moveBarsWithDelta:v5];
      if (!self->_state)
      {
        self->_didHideBarsByMoving = 1;
      }
    }
  }

  self->_lastOffset = a3;
}

- (void)endScrollingWithTargetOffset:(double)a3 velocity:(double)a4
{
  self->_dragging = 0;
  if (self->_didHideOrShowBarsExplicitly)
  {
    if (![(TUDynamicBarAnimator *)self targetState:a3]&& [(TUDynamicBarAnimator *)self canTransitionToState:0])
    {
      v5 = self;
      v6 = 0;
LABEL_7:

      [(TUDynamicBarAnimator *)v5 attemptTransitionToState:v6 animated:1];
      return;
    }

LABEL_6:
    v5 = self;
    v6 = 1;
    goto LABEL_7;
  }

  if (a4 < -250.0)
  {
    goto LABEL_6;
  }

  [(TUDynamicBarAnimator *)self _transitionToSteadyState];
}

- (void)setTopBarHeight:(double)a3 forState:(int64_t)a4
{
  if (self->_topBarHeightForState[a4] != a3)
  {
    self->_topBarHeightForState[a4] = a3;
    if (self->_state == a4)
    {
      self->_targetTopBarHeight = a3;
      self->_unroundedTopBarHeight = a3;
    }
  }
}

- (void)setBottomBarOffset:(double)a3 forState:(int64_t)a4
{
  if (self->_bottomBarOffsetForState[a4] != a3)
  {
    self->_bottomBarOffsetForState[a4] = a3;
    if (self->_state == a4)
    {
      [(TUDynamicBarAnimator *)self _updateOutputs];
    }
  }
}

- (void)setMaximumBottomBarOffset:(double)a3
{
  if (self->_maximumBottomBarOffset != a3)
  {
    self->_maximumBottomBarOffset = a3;
    [(TUDynamicBarAnimator *)self _updateOutputs];
  }
}

- (TUDynamicBarAnimatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end