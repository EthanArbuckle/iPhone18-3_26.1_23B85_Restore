@interface UIKeyboardKeyplaneTransition
- (UIKeyboardKeyplaneTransitionDelegate)transitionDelegate;
- (void)addTransitionView:(id)view startFrame:(CGRect)frame endFrame:(CGRect)endFrame;
- (void)cancelNonInteractiveAnimation;
- (void)dealloc;
- (void)finalizeTransition;
- (void)finishWithProgress:(double)progress completionBlock:(id)block;
- (void)rebuildWithStartKeyplane:(id)keyplane startView:(id)view endKeyplane:(id)endKeyplane endView:(id)endView;
- (void)removeAllAnimations;
- (void)runNonInteractivelyWithCompletion:(id)completion;
- (void)transitionToFinalState:(id)state;
- (void)updateWithProgress:(double)progress;
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

- (void)rebuildWithStartKeyplane:(id)keyplane startView:(id)view endKeyplane:(id)endKeyplane endView:(id)endView
{
  keyplaneCopy = keyplane;
  viewCopy = view;
  endKeyplaneCopy = endKeyplane;
  endViewCopy = endView;
  [(UIKeyboardKeyplaneTransition *)self removeAllAnimations];
  [(NSMutableArray *)self->_transitionViews removeAllObjects];
  if (viewCopy)
  {
    objc_storeStrong(&self->_startView, view);
  }

  if (endViewCopy)
  {
    objc_storeStrong(&self->_endView, endView);
  }

  if (keyplaneCopy)
  {
    objc_storeStrong(&self->_start, keyplane);
  }

  if (endKeyplaneCopy)
  {
    objc_storeStrong(&self->_end, endKeyplane);
  }
}

- (void)addTransitionView:(id)view startFrame:(CGRect)frame endFrame:(CGRect)endFrame
{
  height = endFrame.size.height;
  width = endFrame.size.width;
  y = endFrame.origin.y;
  x = endFrame.origin.x;
  v9 = frame.size.height;
  v10 = frame.size.width;
  v11 = frame.origin.y;
  v12 = frame.origin.x;
  viewCopy = view;
  if (viewCopy)
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

        [(NSMutableArray *)transitionViews addObject:viewCopy];
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

        layer = [viewCopy layer];
        [layer addAnimation:v20 forKey:@"position interpolation"];

        v24 = *MEMORY[0x1E695EFF8];
        v25 = *(MEMORY[0x1E695EFF8] + 8);
        v26 = [MEMORY[0x1E6979318] normalizedAnimationWithKeyPath:@"bounds" fromValue:0 toValue:0];
        v27 = [MEMORY[0x1E696B098] valueWithCGRect:{v24, v25, v10, v9}];
        [v26 setFromValue:v27];

        v28 = [MEMORY[0x1E696B098] valueWithCGRect:{v24, v25, width, height}];
        [v26 setToValue:v28];

        layer2 = [viewCopy layer];
        [layer2 addAnimation:v26 forKey:@"bounds interpolation"];
      }
    }
  }
}

- (void)runNonInteractivelyWithCompletion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion);
  }
}

- (void)cancelNonInteractiveAnimation
{
  completionBlock = [(UIKeyboardKeyplaneTransition *)self completionBlock];
  [(UIKeyboardKeyplaneTransition *)self setCompletionBlock:0];
  v3 = completionBlock;
  if (completionBlock)
  {
    (*(completionBlock + 16))(completionBlock);
    v3 = completionBlock;
  }
}

- (void)updateWithProgress:(double)progress
{
  v28 = *MEMORY[0x1E69E9840];
  layer = [(UIView *)self->_startView layer];
  [layer setSpeed:0.0];

  layer2 = [(UIView *)self->_endView layer];
  [layer2 setSpeed:0.0];

  self->_currentProgress = progress;
  if (progress <= 1.0)
  {
    progressCopy = progress;
  }

  else
  {
    progressCopy = 1.0;
  }

  if (progress < 0.0)
  {
    progressCopy = 0.0;
  }

  if (self->_initiallyAtEnd)
  {
    v8 = 1.0 - progressCopy;
  }

  else
  {
    v8 = progressCopy;
  }

  layer3 = [(UIView *)self->_startView layer];
  [layer3 setTimeOffset:v8];

  layer4 = [(UIView *)self->_endView layer];
  [layer4 setTimeOffset:v8];

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
        layer5 = [v16 layer];
        [layer5 setSpeed:0.0];

        layer6 = [v16 layer];
        [layer6 setTimeOffset:v8];
      }

      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v13);
  }

  transitionDelegate = [(UIKeyboardKeyplaneTransition *)self transitionDelegate];
  [(UIKeyboardKeyplaneTransition *)self startHeight];
  v21 = v20;
  [(UIKeyboardKeyplaneTransition *)self endHeight];
  [transitionDelegate updateProgress:v8 startHeight:v21 endHeight:v22];
}

- (void)removeAllAnimations
{
  v22 = *MEMORY[0x1E69E9840];
  layer = [(UIView *)self->_startView layer];
  LODWORD(v4) = 1.0;
  [layer setSpeed:v4];

  layer2 = [(UIView *)self->_endView layer];
  LODWORD(v6) = 1.0;
  [layer2 setSpeed:v6];

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
        layer3 = [v12 layer];
        [layer3 removeAnimationForKey:@"position interpolation"];

        layer4 = [v12 layer];
        [layer4 removeAnimationForKey:@"bounds interpolation"];

        layer5 = [v12 layer];
        LODWORD(v16) = 1.0;
        [layer5 setSpeed:v16];
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

  completionBlock = [(UIKeyboardKeyplaneTransition *)self completionBlock];

  if (completionBlock)
  {
    completionBlock2 = [(UIKeyboardKeyplaneTransition *)self completionBlock];
    completionBlock2[2]();

    [(UIKeyboardKeyplaneTransition *)self setCompletionBlock:0];
  }

  transitionDelegate = [(UIKeyboardKeyplaneTransition *)self transitionDelegate];
  [transitionDelegate transitionDidFinish:1];
}

- (void)transitionToFinalState:(id)state
{
  [state timestamp];
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

- (void)finishWithProgress:(double)progress completionBlock:(id)block
{
  [(UIKeyboardKeyplaneTransition *)self setCompletionBlock:block];
  progressCopy = 1.0 - progress;
  if (!self->_initiallyAtEnd)
  {
    progressCopy = progress;
  }

  currentProgress = self->_currentProgress;
  self->_liftOffProgress = currentProgress;
  self->_finishProgress = progressCopy;
  v8 = currentProgress >= 0.0 && currentProgress <= 1.0;
  v9 = 3.0;
  if (!v8)
  {
    v9 = 9.0;
  }

  self->_finishDuration = vabdd_f64(currentProgress, progressCopy) / v9;
  self->_finalTransitionStartTime = CACurrentMediaTime();
  window = [(UIView *)self->_startView window];
  screen = [window screen];
  v12 = [screen displayLinkWithTarget:self selector:sel_transitionToFinalState_];
  displayLink = self->_displayLink;
  self->_displayLink = v12;

  v14 = self->_displayLink;
  mainRunLoop = [MEMORY[0x1E695DFD0] mainRunLoop];
  [(CADisplayLink *)v14 addToRunLoop:mainRunLoop forMode:*MEMORY[0x1E695DA28]];
}

- (UIKeyboardKeyplaneTransitionDelegate)transitionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_transitionDelegate);

  return WeakRetained;
}

@end