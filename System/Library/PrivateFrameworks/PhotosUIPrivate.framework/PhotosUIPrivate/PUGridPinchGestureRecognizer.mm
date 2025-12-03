@interface PUGridPinchGestureRecognizer
- (BOOL)transitionShouldFinish;
- (CGSize)centerOffset;
- (double)transitionProgress;
- (void)_resetTransitionState;
- (void)reset;
- (void)setState:(int64_t)state;
@end

@implementation PUGridPinchGestureRecognizer

- (BOOL)transitionShouldFinish
{
  [(PUGridPinchGestureRecognizer *)self transitionProgress];
  v4 = v3;
  [(UIPinchGestureRecognizer *)self velocity];
  if (self->_transitionDirection == 2)
  {
    v5 = -v5;
  }

  return v5 > 1.0 || v4 > 0.25 && v5 >= -0.2 || v4 > 0.7;
}

- (CGSize)centerOffset
{
  view = [(PUGridPinchGestureRecognizer *)self view];
  window = [view window];
  [(UIPinchGestureRecognizer *)self locationOfTouch:0 inView:window];
  v22 = v6;
  v23 = v5;

  view2 = [(PUGridPinchGestureRecognizer *)self view];
  window2 = [view2 window];
  [(UIPinchGestureRecognizer *)self locationOfTouch:1 inView:window2];
  v20 = v10;
  v21 = v9;

  __asm { FMOV            V1.2D, #0.5 }

  v16.f64[0] = v23;
  v16.f64[1] = v22;
  v17.f64[0] = v21;
  v17.f64[1] = v20;
  v18 = vsubq_f64(vmulq_f64(vaddq_f64(v16, v17), _Q1), vmulq_f64(vaddq_f64(self->_touch0InitialLocation, self->_touch1InitialLocation), _Q1));
  v19 = v18.f64[1];
  result.width = v18.f64[0];
  result.height = v19;
  return result;
}

- (double)transitionProgress
{
  if ([(UIPinchGestureRecognizer *)self numberOfTouches]<= 1)
  {
    return self->_lastTransitionProgress;
  }

  view = [(PUGridPinchGestureRecognizer *)self view];
  window = [view window];
  [(UIPinchGestureRecognizer *)self locationOfTouch:0 inView:window];

  view2 = [(PUGridPinchGestureRecognizer *)self view];
  window2 = [view2 window];
  [(UIPinchGestureRecognizer *)self locationOfTouch:1 inView:window2];

  UIDistanceBetweenPoints();
  v8 = v7;
  UIDistanceBetweenPoints();
  result = (v9 - v8) / 150.0;
  self->_lastTransitionProgress = result;
  if (self->_transitionDirection == 2)
  {
    result = -result;
    self->_lastTransitionProgress = result;
  }

  return result;
}

- (void)setState:(int64_t)state
{
  if (state == 2)
  {
    if ([(UIPinchGestureRecognizer *)self numberOfTouches]>= 2)
    {
      view = [(PUGridPinchGestureRecognizer *)self view];
      window = [view window];
      [(UIPinchGestureRecognizer *)self locationOfTouch:0 inView:window];
      self->_touch0InitialLocation.x = v7;
      self->_touch0InitialLocation.y = v8;

      view2 = [(PUGridPinchGestureRecognizer *)self view];
      window2 = [view2 window];
      [(UIPinchGestureRecognizer *)self locationOfTouch:1 inView:window2];
      self->_touch1InitialLocation.x = v11;
      self->_touch1InitialLocation.y = v12;

      if (!self->_transitionDirection)
      {
        [(UIPinchGestureRecognizer *)self velocity];
        v13 = 2;
        if (v14 > 0.0)
        {
          v13 = 1;
        }

        self->_transitionDirection = v13;
      }
    }
  }

  else if (state == 1 && [(UIPinchGestureRecognizer *)self numberOfTouches]>= 2)
  {
    [(PUGridPinchGestureRecognizer *)self _resetTransitionState];
  }

  v15.receiver = self;
  v15.super_class = PUGridPinchGestureRecognizer;
  [(PUGridPinchGestureRecognizer *)&v15 setState:state];
}

- (void)reset
{
  v3.receiver = self;
  v3.super_class = PUGridPinchGestureRecognizer;
  [(PUGridPinchGestureRecognizer *)&v3 reset];
  [(PUGridPinchGestureRecognizer *)self _resetTransitionState];
}

- (void)_resetTransitionState
{
  v2 = *MEMORY[0x1E695EFF8];
  self->_touch1InitialLocation = *MEMORY[0x1E695EFF8];
  self->_touch0InitialLocation = v2;
  self->_lastTransitionProgress = 0.0;
  self->_transitionDirection = 0;
}

@end