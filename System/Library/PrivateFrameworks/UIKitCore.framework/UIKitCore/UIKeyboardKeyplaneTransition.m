@interface UIKeyboardKeyplaneTransition
- (UIKeyboardKeyplaneTransitionDelegate)transitionDelegate;
- (void)addTransitionView:(id)a3 startFrame:(CGRect)a4 endFrame:(CGRect)a5;
- (void)cancelNonInteractiveAnimation;
- (void)dealloc;
- (void)finalizeTransition;
- (void)finishWithProgress:(double)a3 completionBlock:(id)a4;
- (void)rebuildWithStartKeyplane:(id)a3 startView:(id)a4 endKeyplane:(id)a5 endView:(id)a6;
- (void)removeAllAnimations;
- (void)runNonInteractivelyWithCompletion:(id)a3;
- (void)transitionToFinalState:(id)a3;
- (void)updateWithProgress:(double)a3;
@end

@implementation UIKeyboardKeyplaneTransition

- (void)dealloc
{
  displayLink = self->_displayLink;
  if (displayLink)
  {
    [(CADisplayLink *)displayLink invalidate];
    v4 = self->_displayLink;
    self->_displayLink = 0;
  }

  completionBlock = self->_completionBlock;
  self->_completionBlock = 0;

  v6.receiver = self;
  v6.super_class = UIKeyboardKeyplaneTransition;
  [(UIKeyboardKeyplaneTransition *)&v6 dealloc];
}

- (void)rebuildWithStartKeyplane:(id)a3 startView:(id)a4 endKeyplane:(id)a5 endView:(id)a6
{
  v14 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  [(UIKeyboardKeyplaneTransition *)self removeAllAnimations];
  [(NSMutableArray *)self->_transitionViews removeAllObjects];
  if (v11)
  {
    objc_storeStrong(&self->_startView, a4);
  }

  if (v13)
  {
    objc_storeStrong(&self->_endView, a6);
  }

  if (v14)
  {
    objc_storeStrong(&self->_start, a3);
  }

  if (v12)
  {
    objc_storeStrong(&self->_end, a5);
  }
}

- (void)addTransitionView:(id)a3 startFrame:(CGRect)a4 endFrame:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v9 = a4.size.height;
  v10 = a4.size.width;
  v11 = a4.origin.y;
  v12 = a4.origin.x;
  v31 = a3;
  if (v31)
  {
    v33.origin.x = v12;
    v33.origin.y = v11;
    v33.size.width = v10;
    v33.size.height = v9;
    if (!CGRectIsNull(v33))
    {
      v34.origin.x = x;
      v34.origin.y = y;
      v34.size.width = width;
      v34.size.height = height;
      if (!CGRectIsNull(v34))
      {
        transitionViews = self->_transitionViews;
        if (!transitionViews)
        {
          v15 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
          v16 = self->_transitionViews;
          self->_transitionViews = v15;

          transitionViews = self->_transitionViews;
        }

        [(NSMutableArray *)transitionViews addObject:v31];
        v35.origin.x = v12;
        v35.origin.y = v11;
        v35.size.width = v10;
        v35.size.height = v9;
        MidX = CGRectGetMidX(v35);
        v36.origin.x = v12;
        v36.origin.y = v11;
        v36.size.width = v10;
        v36.size.height = v9;
        MidY = CGRectGetMidY(v36);
        v37.origin.x = x;
        v37.origin.y = y;
        v37.size.width = width;
        v37.size.height = height;
        v18 = CGRectGetMidX(v37);
        v38.origin.x = x;
        v38.origin.y = y;
        v38.size.width = width;
        v38.size.height = height;
        v19 = CGRectGetMidY(v38);
        v20 = [MEMORY[0x1E6979318] normalizedAnimationWithKeyPath:@"position" fromValue:0 toValue:0];
        v21 = [MEMORY[0x1E696B098] valueWithCGPoint:{MidX, MidY}];
        [v20 setFromValue:v21];

        v22 = [MEMORY[0x1E696B098] valueWithCGPoint:{v18, v19}];
        [v20 setToValue:v22];

        v23 = [v31 layer];
        [v23 addAnimation:v20 forKey:@"position interpolation"];

        v24 = *MEMORY[0x1E695EFF8];
        v25 = *(MEMORY[0x1E695EFF8] + 8);
        v26 = [MEMORY[0x1E6979318] normalizedAnimationWithKeyPath:@"bounds" fromValue:0 toValue:0];
        v27 = [MEMORY[0x1E696B098] valueWithCGRect:{v24, v25, v10, v9}];
        [v26 setFromValue:v27];

        v28 = [MEMORY[0x1E696B098] valueWithCGRect:{v24, v25, width, height}];
        [v26 setToValue:v28];

        v29 = [v31 layer];
        [v29 addAnimation:v26 forKey:@"bounds interpolation"];
      }
    }
  }
}

- (void)runNonInteractivelyWithCompletion:(id)a3
{
  if (a3)
  {
    (*(a3 + 2))(a3);
  }
}

- (void)cancelNonInteractiveAnimation
{
  v4 = [(UIKeyboardKeyplaneTransition *)self completionBlock];
  [(UIKeyboardKeyplaneTransition *)self setCompletionBlock:0];
  v3 = v4;
  if (v4)
  {
    (*(v4 + 16))(v4);
    v3 = v4;
  }
}

- (void)updateWithProgress:(double)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = [(UIView *)self->_startView layer];
  [v5 setSpeed:0.0];

  v6 = [(UIView *)self->_endView layer];
  [v6 setSpeed:0.0];

  self->_currentProgress = a3;
  if (a3 <= 1.0)
  {
    v7 = a3;
  }

  else
  {
    v7 = 1.0;
  }

  if (a3 < 0.0)
  {
    v7 = 0.0;
  }

  if (self->_initiallyAtEnd)
  {
    v8 = 1.0 - v7;
  }

  else
  {
    v8 = v7;
  }

  v9 = [(UIView *)self->_startView layer];
  [v9 setTimeOffset:v8];

  v10 = [(UIView *)self->_endView layer];
  [v10 setTimeOffset:v8];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v11 = self->_transitionViews;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v24;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v24 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v23 + 1) + 8 * i);
        v17 = [v16 layer];
        [v17 setSpeed:0.0];

        v18 = [v16 layer];
        [v18 setTimeOffset:v8];
      }

      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v13);
  }

  v19 = [(UIKeyboardKeyplaneTransition *)self transitionDelegate];
  [(UIKeyboardKeyplaneTransition *)self startHeight];
  v21 = v20;
  [(UIKeyboardKeyplaneTransition *)self endHeight];
  [v19 updateProgress:v8 startHeight:v21 endHeight:v22];
}

- (void)removeAllAnimations
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = [(UIView *)self->_startView layer];
  LODWORD(v4) = 1.0;
  [v3 setSpeed:v4];

  v5 = [(UIView *)self->_endView layer];
  LODWORD(v6) = 1.0;
  [v5 setSpeed:v6];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = self->_transitionViews;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        v13 = [v12 layer];
        [v13 removeAnimationForKey:@"position interpolation"];

        v14 = [v12 layer];
        [v14 removeAnimationForKey:@"bounds interpolation"];

        v15 = [v12 layer];
        LODWORD(v16) = 1.0;
        [v15 setSpeed:v16];
      }

      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }
}

- (void)finalizeTransition
{
  [(UIKeyboardKeyplaneTransition *)self removeAllAnimations];
  displayLink = self->_displayLink;
  if (displayLink)
  {
    [(CADisplayLink *)displayLink invalidate];
    v4 = self->_displayLink;
    self->_displayLink = 0;
  }

  v5 = [(UIKeyboardKeyplaneTransition *)self completionBlock];

  if (v5)
  {
    v6 = [(UIKeyboardKeyplaneTransition *)self completionBlock];
    v6[2]();

    [(UIKeyboardKeyplaneTransition *)self setCompletionBlock:0];
  }

  v7 = [(UIKeyboardKeyplaneTransition *)self transitionDelegate];
  [v7 transitionDidFinish:1];
}

- (void)transitionToFinalState:(id)a3
{
  [a3 timestamp];
  finishProgress = self->_finishProgress;
  if (vabdd_f64(self->_currentProgress, finishProgress) < 0.01 || (finishDuration = self->_finishDuration, v7 = v4 - self->_finalTransitionStartTime, v7 >= finishDuration))
  {

    [(UIKeyboardKeyplaneTransition *)self finalizeTransition];
  }

  else
  {
    v8 = self->_liftOffProgress + v7 / finishDuration * (finishProgress - self->_liftOffProgress);

    [(UIKeyboardKeyplaneTransition *)self updateWithProgress:v8];
  }
}

- (void)finishWithProgress:(double)a3 completionBlock:(id)a4
{
  [(UIKeyboardKeyplaneTransition *)self setCompletionBlock:a4];
  v6 = 1.0 - a3;
  if (!self->_initiallyAtEnd)
  {
    v6 = a3;
  }

  currentProgress = self->_currentProgress;
  self->_liftOffProgress = currentProgress;
  self->_finishProgress = v6;
  v8 = currentProgress >= 0.0 && currentProgress <= 1.0;
  v9 = 3.0;
  if (!v8)
  {
    v9 = 9.0;
  }

  self->_finishDuration = vabdd_f64(currentProgress, v6) / v9;
  self->_finalTransitionStartTime = CACurrentMediaTime();
  v10 = [(UIView *)self->_startView window];
  v11 = [v10 screen];
  v12 = [v11 displayLinkWithTarget:self selector:sel_transitionToFinalState_];
  displayLink = self->_displayLink;
  self->_displayLink = v12;

  v14 = self->_displayLink;
  v15 = [MEMORY[0x1E695DFD0] mainRunLoop];
  [(CADisplayLink *)v14 addToRunLoop:v15 forMode:*MEMORY[0x1E695DA28]];
}

- (UIKeyboardKeyplaneTransitionDelegate)transitionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_transitionDelegate);

  return WeakRetained;
}

@end