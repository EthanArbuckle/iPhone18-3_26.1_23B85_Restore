@interface SBFramewiseInteractiveTransitionAnimator
- (SBFramewiseInteractiveTransitionAnimatorDelegate)delegate;
- (double)percentVisible;
- (void)animateTransition:(id)transition;
- (void)cancelTransition:(id)transition withCompletionSpeed:(double)speed completionCurve:(int64_t)curve;
- (void)finishInteractiveTransition:(id)transition withCompletionSpeed:(double)speed completionCurve:(int64_t)curve;
- (void)updateTransition:(id)transition withPercentComplete:(double)complete;
@end

@implementation SBFramewiseInteractiveTransitionAnimator

- (void)updateTransition:(id)transition withPercentComplete:(double)complete
{
  self->_percentComplete = complete;
  transitionCopy = transition;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained transitionContext:transitionCopy updateTransitionProgress:complete];
}

- (void)finishInteractiveTransition:(id)transition withCompletionSpeed:(double)speed completionCurve:(int64_t)curve
{
  transitionCopy = transition;
  [transitionCopy completeTransition:{objc_msgSend(transitionCopy, "transitionWasCancelled") ^ 1}];
}

- (void)cancelTransition:(id)transition withCompletionSpeed:(double)speed completionCurve:(int64_t)curve
{
  transitionCopy = transition;
  [transitionCopy completeTransition:{objc_msgSend(transitionCopy, "transitionWasCancelled") ^ 1}];
}

- (void)animateTransition:(id)transition
{
  transitionCopy = transition;
  if ([transitionCopy isAnimated])
  {
    v5 = MEMORY[0x1E69DD250];
    [(SBFramewiseInteractiveTransitionAnimator *)self transitionDuration:transitionCopy];
    v7 = v6;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __62__SBFramewiseInteractiveTransitionAnimator_animateTransition___block_invoke;
    v10[3] = &unk_1E8088F18;
    v10[4] = self;
    v11 = transitionCopy;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __62__SBFramewiseInteractiveTransitionAnimator_animateTransition___block_invoke_2;
    v8[3] = &unk_1E8088F40;
    v9 = v11;
    [v5 animateWithDuration:v10 animations:v8 completion:v7];
  }

  else
  {
    [transitionCopy completeTransition:{objc_msgSend(transitionCopy, "transitionWasCancelled") ^ 1}];
  }
}

uint64_t __62__SBFramewiseInteractiveTransitionAnimator_animateTransition___block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) isTransitioning];
  if (result)
  {
    v3 = *(a1 + 32);
    v4 = [v3 transitionWasCancelled] ^ 1;

    return [v3 completeTransition:v4];
  }

  return result;
}

- (double)percentVisible
{
  presenting = self->_presenting;
  [(SBFramewiseInteractiveTransitionAnimator *)self percentComplete];
  if (!presenting)
  {
    return 1.0 - result;
  }

  return result;
}

- (SBFramewiseInteractiveTransitionAnimatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end