@interface SBFramewiseInteractiveTransitionAnimator
- (SBFramewiseInteractiveTransitionAnimatorDelegate)delegate;
- (double)percentVisible;
- (void)animateTransition:(id)a3;
- (void)cancelTransition:(id)a3 withCompletionSpeed:(double)a4 completionCurve:(int64_t)a5;
- (void)finishInteractiveTransition:(id)a3 withCompletionSpeed:(double)a4 completionCurve:(int64_t)a5;
- (void)updateTransition:(id)a3 withPercentComplete:(double)a4;
@end

@implementation SBFramewiseInteractiveTransitionAnimator

- (void)updateTransition:(id)a3 withPercentComplete:(double)a4
{
  self->_percentComplete = a4;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained transitionContext:v6 updateTransitionProgress:a4];
}

- (void)finishInteractiveTransition:(id)a3 withCompletionSpeed:(double)a4 completionCurve:(int64_t)a5
{
  v5 = a3;
  [v5 completeTransition:{objc_msgSend(v5, "transitionWasCancelled") ^ 1}];
}

- (void)cancelTransition:(id)a3 withCompletionSpeed:(double)a4 completionCurve:(int64_t)a5
{
  v5 = a3;
  [v5 completeTransition:{objc_msgSend(v5, "transitionWasCancelled") ^ 1}];
}

- (void)animateTransition:(id)a3
{
  v4 = a3;
  if ([v4 isAnimated])
  {
    v5 = MEMORY[0x1E69DD250];
    [(SBFramewiseInteractiveTransitionAnimator *)self transitionDuration:v4];
    v7 = v6;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __62__SBFramewiseInteractiveTransitionAnimator_animateTransition___block_invoke;
    v10[3] = &unk_1E8088F18;
    v10[4] = self;
    v11 = v4;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __62__SBFramewiseInteractiveTransitionAnimator_animateTransition___block_invoke_2;
    v8[3] = &unk_1E8088F40;
    v9 = v11;
    [v5 animateWithDuration:v10 animations:v8 completion:v7];
  }

  else
  {
    [v4 completeTransition:{objc_msgSend(v4, "transitionWasCancelled") ^ 1}];
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