@interface UISheetAnimationController
@end

@implementation UISheetAnimationController

void __66___UISheetAnimationController_interruptibleAnimatorForTransition___block_invoke(uint64_t a1)
{
  [*(a1 + 32) layoutTransitionViews];
  v2 = [*(a1 + 32) forwardView];
  [v2 layoutIfNeeded];
}

void __66___UISheetAnimationController_interruptibleAnimatorForTransition___block_invoke_2(uint64_t a1)
{
  v5 = [*(a1 + 32) containerView];
  v2 = [v5 backgroundColor];
  if (v2)
  {
    v3 = 0;
  }

  else
  {
    v3 = +[UIColor clearColor];
  }

  v4 = [*(a1 + 32) containerView];
  [v4 setBackgroundColor:v3];

  if (!v2)
  {
  }
}

void __66___UISheetAnimationController_interruptibleAnimatorForTransition___block_invoke_3(uint64_t a1)
{
  v10 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  minimum = v10.minimum;
  maximum = v10.maximum;
  preferred = v10.preferred;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __66___UISheetAnimationController_interruptibleAnimatorForTransition___block_invoke_4;
  v8[3] = &unk_1E70F5A28;
  objc_copyWeak(&v9, (a1 + 32));
  *&v5 = minimum;
  *&v6 = maximum;
  *&v7 = preferred;
  [UIView _modifyAnimationsWithPreferredFrameRateRange:1048611 updateReason:v8 animations:v5, v6, v7];
  objc_destroyWeak(&v9);
}

void __66___UISheetAnimationController_interruptibleAnimatorForTransition___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained layoutTransitionViews];
  [WeakRetained runNoninteractiveAnimationsIfPossible];
  v1 = [WeakRetained forwardView];
  [v1 layoutIfNeeded];
}

uint64_t __66___UISheetAnimationController_interruptibleAnimatorForTransition___block_invoke_5(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 transitionWasCancelled] ^ 1;

  return [v1 completeTransition:v2];
}

@end