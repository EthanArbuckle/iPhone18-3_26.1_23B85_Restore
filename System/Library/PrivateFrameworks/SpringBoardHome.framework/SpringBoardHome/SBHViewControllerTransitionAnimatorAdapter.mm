@interface SBHViewControllerTransitionAnimatorAdapter
- (SBHViewControllerTransitionAnimatorAdapter)initWithAnimator:(id)animator;
- (void)animateTransition:(id)transition;
- (void)cancelTransition:(id)transition withCompletionSpeed:(double)speed completionCurve:(int64_t)curve;
@end

@implementation SBHViewControllerTransitionAnimatorAdapter

- (SBHViewControllerTransitionAnimatorAdapter)initWithAnimator:(id)animator
{
  animatorCopy = animator;
  v9.receiver = self;
  v9.super_class = SBHViewControllerTransitionAnimatorAdapter;
  v6 = [(SBHViewControllerTransitionAnimatorAdapter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_animator, animator);
  }

  return v7;
}

- (void)animateTransition:(id)transition
{
  transitionCopy = transition;
  v5 = objc_opt_class();
  v6 = transitionCopy;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  animationContext = [v8 animationContext];
  v10 = animationContext;
  if (animationContext)
  {
    transitionEndpoint = [animationContext transitionEndpoint];
    animator = [(SBHViewControllerTransitionAnimatorAdapter *)self animator];
    if (([v8 transitionWasRestarted] & 1) == 0)
    {
      [animator prepareToAnimateFromEndpoint:transitionEndpoint != 1 withContext:v10];
    }

    v13 = [(SBHViewControllerTransitionAnimatorAdapter *)self transitionToken]+ 1;
    [(SBHViewControllerTransitionAnimatorAdapter *)self setTransitionToken:v13];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __64__SBHViewControllerTransitionAnimatorAdapter_animateTransition___block_invoke;
    v15[3] = &unk_1E808EC20;
    v15[4] = self;
    v16 = animator;
    v19 = v13;
    v20 = transitionEndpoint;
    v17 = v10;
    v18 = v6;
    v14 = animator;
    [v14 animateToEndpoint:transitionEndpoint withContext:v17 completion:v15];
  }

  else
  {
    [v6 cancelTransition];
  }
}

uint64_t __64__SBHViewControllerTransitionAnimatorAdapter_animateTransition___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 64);
  result = [*(a1 + 32) transitionToken];
  if (v2 == result)
  {
    [*(a1 + 40) finalizeAnimationAtEndpoint:*(a1 + 72) withContext:*(a1 + 48)];
    v4 = *(a1 + 56);

    return [v4 completeTransition:1];
  }

  return result;
}

- (void)cancelTransition:(id)transition withCompletionSpeed:(double)speed completionCurve:(int64_t)curve
{
  transitionCopy = transition;
  v7 = objc_opt_class();
  v8 = transitionCopy;
  if (v7)
  {
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  animationContext = [v10 animationContext];
  if (animationContext)
  {
    animator = [(SBHViewControllerTransitionAnimatorAdapter *)self animator];
    v13 = [animationContext transitionEndpoint] != 1;
    v14 = [(SBHViewControllerTransitionAnimatorAdapter *)self transitionToken]+ 1;
    [(SBHViewControllerTransitionAnimatorAdapter *)self setTransitionToken:v14];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __99__SBHViewControllerTransitionAnimatorAdapter_cancelTransition_withCompletionSpeed_completionCurve___block_invoke;
    v16[3] = &unk_1E808EC20;
    v16[4] = self;
    v17 = animator;
    v20 = v14;
    v21 = v13;
    v18 = animationContext;
    v19 = v8;
    v15 = animator;
    [v15 animateToEndpoint:v13 withContext:v18 completion:v16];
  }

  else
  {
    [v8 completeTransition:0];
  }
}

uint64_t __99__SBHViewControllerTransitionAnimatorAdapter_cancelTransition_withCompletionSpeed_completionCurve___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 64);
  result = [*(a1 + 32) transitionToken];
  if (v2 == result)
  {
    [*(a1 + 40) finalizeAnimationAtEndpoint:*(a1 + 72) withContext:*(a1 + 48)];
    v4 = *(a1 + 56);

    return [v4 completeTransition:0];
  }

  return result;
}

@end