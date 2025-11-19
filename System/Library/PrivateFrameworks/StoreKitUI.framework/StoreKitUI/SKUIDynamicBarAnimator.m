@interface SKUIDynamicBarAnimator
- (BOOL)canTransitionToState:(int64_t)a3;
- (SKUIDynamicBarAnimator)init;
- (SKUIDynamicBarAnimatorDelegate)delegate;
- (double)_constrainTopBarHeight:(double)a3;
- (void)_displayLinkFired:(id)a3;
- (void)_moveBarsWithDelta:(double)a3;
- (void)_setInSteadyState:(BOOL)a3;
- (void)_transitionToSteadyState;
- (void)_updateDisplayLink;
- (void)_updateOutputs;
- (void)attemptTransitionToState:(int64_t)a3 animated:(BOOL)a4;
- (void)beginDraggingWithOffset:(double)a3;
- (void)dealloc;
- (void)endDraggingWithTargetOffset:(double)a3 velocity:(double)a4;
- (void)init;
- (void)setBottomBarOffset:(double)a3 forState:(int64_t)a4;
- (void)setMaximumBottomBarOffset:(double)a3;
- (void)setMinimumTopBarHeight:(double)a3;
- (void)setTopBarHeight:(double)a3 forState:(int64_t)a4;
- (void)updateDraggingWithOffset:(double)a3;
@end

@implementation SKUIDynamicBarAnimator

- (SKUIDynamicBarAnimator)init
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIDynamicBarAnimator init];
  }

  v4.receiver = self;
  v4.super_class = SKUIDynamicBarAnimator;
  result = [(SKUIDynamicBarAnimator *)&v4 init];
  if (result)
  {
    result->_state = 1;
    result->_inSteadyState = 1;
  }

  return result;
}

- (void)dealloc
{
  if (self->_displayLink)
  {
    [SKUIDynamicBarAnimator dealloc];
  }

  v2.receiver = self;
  v2.super_class = SKUIDynamicBarAnimator;
  [(SKUIDynamicBarAnimator *)&v2 dealloc];
}

- (void)_moveBarsWithDelta:(double)a3
{
  unroundedTopBarHeight = self->_unroundedTopBarHeight;
  v6 = self->_targetTopBarHeight - a3;
  self->_targetTopBarHeight = v6;
  v7 = self->_topBarHeightForState[1] - self->_topBarHeightForState[0];
  v8 = vabdd_f64(unroundedTopBarHeight, v6);
  self->_unroundedTopBarHeight = unroundedTopBarHeight - exp(-(v8 * 3.0 / v7 * (v8 * 3.0 / v7))) * a3;

  [(SKUIDynamicBarAnimator *)self _updateOutputs];
}

- (void)attemptTransitionToState:(int64_t)a3 animated:(BOOL)a4
{
  if (a3 >= 2)
  {
    [SKUIDynamicBarAnimator attemptTransitionToState:animated:];
  }

  if ([(SKUIDynamicBarAnimator *)self canTransitionToState:?])
  {
    self->_didHideOrShowBarsExplicitly = 1;
    v7 = self->_topBarHeightForState[a3];
    self->_targetTopBarHeight = v7;
    if (!a4)
    {
      self->_unroundedTopBarHeight = v7;
    }

    [(SKUIDynamicBarAnimator *)self _updateOutputs];
  }
}

- (void)_transitionToSteadyState
{
  if (self->_topBarHeight >= self->_topBarHeightForState[1] * 0.9 || (v3 = [(SKUIDynamicBarAnimator *)self canTransitionToState:0], v4 = 0, !v3))
  {
    v4 = 1;
  }

  [(SKUIDynamicBarAnimator *)self attemptTransitionToState:v4 animated:1];
}

- (void)_updateOutputs
{
  [(SKUIDynamicBarAnimator *)self _constrainTopBarHeight:self->_unroundedTopBarHeight];
  self->_unroundedTopBarHeight = v3;
  [(SKUIDynamicBarAnimator *)self _constrainTopBarHeight:self->_targetTopBarHeight];
  self->_targetTopBarHeight = v4;
  if (!self->_dragging && v4 != self->_topBarHeightForState[0])
  {
    self->_targetTopBarHeight = self->_topBarHeightForState[1];
  }

  [(SKUIDynamicBarAnimator *)self _updateDisplayLink];
  v5 = __40__SKUIDynamicBarAnimator__updateOutputs__block_invoke(self->_unroundedTopBarHeight);
  [(SKUIDynamicBarAnimator *)self _bottomBarOffsetForTopBarHeight:self->_unroundedTopBarHeight];
  v7 = __40__SKUIDynamicBarAnimator__updateOutputs__block_invoke(v6);
  v8 = v7 == self->_bottomBarOffsetForState[0] && v5 == self->_topBarHeightForState[0];
  v9 = v7 == self->_bottomBarOffsetForState[1] && v5 == self->_topBarHeightForState[1];
  v10 = v8 || v9;
  v11 = (v8 || v9) && self->_displayLink == 0;
  [(SKUIDynamicBarAnimator *)self _setInSteadyState:v11];
  v12 = !v8;
  if (v5 != self->_topBarHeight || v7 != self->_bottomBarOffset || self->_state != v12)
  {
    self->_state = v12;
    self->_topBarHeight = v5;
    self->_bottomBarOffset = v7;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained dynamicBarAnimatorDidUpdate:self];

    if (!v10 && !self->_dragging && !self->_displayLink)
    {

      [(SKUIDynamicBarAnimator *)self _transitionToSteadyState];
    }
  }
}

double __40__SKUIDynamicBarAnimator__updateOutputs__block_invoke(double a1)
{
  v2 = [MEMORY[0x277D759A0] mainScreen];
  [v2 scale];
  v4 = v3;

  return round(v4 * a1) / v4;
}

- (void)_setInSteadyState:(BOOL)a3
{
  if (self->_inSteadyState != a3)
  {
    v4 = a3;
    self->_inSteadyState = a3;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (v4)
    {
      if (objc_opt_respondsToSelector())
      {
        [WeakRetained dynamicBarAnimatorWillEnterSteadyState:self];
      }
    }

    else if (objc_opt_respondsToSelector())
    {
      [WeakRetained dynamicBarAnimatorWillLeaveSteadyState:self];
    }
  }
}

- (BOOL)canTransitionToState:(int64_t)a3
{
  if (a3 >= 2)
  {
    [SKUIDynamicBarAnimator canTransitionToState:];
  }

  v3 = (&self->super.isa + a3);
  [(SKUIDynamicBarAnimator *)self _constrainTopBarHeight:v3[1]];
  return v4 == v3[1];
}

- (double)_constrainTopBarHeight:(double)a3
{
  minimumTopBarHeight = self->_minimumTopBarHeight;
  [(SKUIDynamicBarAnimator *)self _topBarHeightForBottomBarOffset:self->_maximumBottomBarOffset];
  if (minimumTopBarHeight >= result)
  {
    result = minimumTopBarHeight;
  }

  if (result < self->_topBarHeightForState[0])
  {
    result = self->_topBarHeightForState[0];
  }

  if (result <= a3)
  {
    result = a3;
  }

  if (result >= self->_topBarHeightForState[1])
  {
    return self->_topBarHeightForState[1];
  }

  return result;
}

- (void)_displayLinkFired:(id)a3
{
  [a3 duration];
  unroundedTopBarHeight = self->_unroundedTopBarHeight;
  self->_unroundedTopBarHeight = unroundedTopBarHeight - ((self->_lastUnroundedTopBarHeight - unroundedTopBarHeight) / v5 + ((self->_lastUnroundedTopBarHeight - unroundedTopBarHeight) / v5 * -50.0 + (unroundedTopBarHeight - self->_targetTopBarHeight) * 900.0) * v5) * v5;
  self->_lastUnroundedTopBarHeight = unroundedTopBarHeight;

  [(SKUIDynamicBarAnimator *)self _updateOutputs];
}

- (void)_updateDisplayLink
{
  if (vabdd_f64(self->_topBarHeight, self->_targetTopBarHeight) >= 0.1 || vabdd_f64(self->_lastUnroundedTopBarHeight, self->_unroundedTopBarHeight) >= 10.0)
  {
    if (!self->_displayLink)
    {
      v6 = [MEMORY[0x277CD9E48] displayLinkWithTarget:self selector:sel__displayLinkFired_];
      displayLink = self->_displayLink;
      self->_displayLink = v6;

      v8 = self->_displayLink;
      v9 = [MEMORY[0x277CBEB88] mainRunLoop];
      [(CADisplayLink *)v8 addToRunLoop:v9 forMode:*MEMORY[0x277CBE738]];

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

      [(SKUIDynamicBarAnimator *)self _updateOutputs];
    }
  }
}

- (void)beginDraggingWithOffset:(double)a3
{
  self->_dragging = 1;
  *&self->_didHideBarsByMoving = 0;
  self->_lastOffset = a3;
}

- (void)updateDraggingWithOffset:(double)a3
{
  if (self->_state == 1 && !self->_didHideOrShowBarsExplicitly)
  {
    v5 = a3 - self->_lastOffset;
    v6 = fmax(self->_topBarHeight - self->_topBarHeightForState[0] - v5, 0.0);
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v8 = [WeakRetained dynamicBarAnimator:self canHideBarsByDraggingWithOffset:v6];

    if (v8)
    {
      [(SKUIDynamicBarAnimator *)self _moveBarsWithDelta:v5];
      if (!self->_state)
      {
        self->_didHideBarsByMoving = 1;
      }
    }
  }

  self->_lastOffset = a3;
}

- (void)endDraggingWithTargetOffset:(double)a3 velocity:(double)a4
{
  self->_dragging = 0;
  if (self->_didHideOrShowBarsExplicitly)
  {
    if (![(SKUIDynamicBarAnimator *)self targetState:a3]&& [(SKUIDynamicBarAnimator *)self canTransitionToState:0])
    {
      v5 = self;
      v6 = 0;
LABEL_7:

      [(SKUIDynamicBarAnimator *)v5 attemptTransitionToState:v6 animated:1];
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

  [(SKUIDynamicBarAnimator *)self _transitionToSteadyState];
}

- (void)setTopBarHeight:(double)a3 forState:(int64_t)a4
{
  if (a4 >= 2)
  {
    [SKUIDynamicBarAnimator setTopBarHeight:forState:];
  }

  if (self->_topBarHeightForState[a4] != a3)
  {
    self->_topBarHeightForState[a4] = a3;
    if (self->_state == a4)
    {
      self->_targetTopBarHeight = a3;
      self->_unroundedTopBarHeight = a3;

      [(SKUIDynamicBarAnimator *)self _updateOutputs];
    }
  }
}

- (void)setBottomBarOffset:(double)a3 forState:(int64_t)a4
{
  if (a4 >= 2)
  {
    [SKUIDynamicBarAnimator setBottomBarOffset:forState:];
  }

  if (self->_bottomBarOffsetForState[a4] != a3)
  {
    self->_bottomBarOffsetForState[a4] = a3;
    if (self->_state == a4)
    {

      [(SKUIDynamicBarAnimator *)self _updateOutputs];
    }
  }
}

- (void)setMinimumTopBarHeight:(double)a3
{
  if (self->_minimumTopBarHeight != a3)
  {
    self->_minimumTopBarHeight = a3;
    [(SKUIDynamicBarAnimator *)self _updateOutputs];
  }
}

- (void)setMaximumBottomBarOffset:(double)a3
{
  if (self->_maximumBottomBarOffset != a3)
  {
    self->_maximumBottomBarOffset = a3;
    [(SKUIDynamicBarAnimator *)self _updateOutputs];
  }
}

- (SKUIDynamicBarAnimatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)init
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIDynamicBarAnimator init]";
}

@end