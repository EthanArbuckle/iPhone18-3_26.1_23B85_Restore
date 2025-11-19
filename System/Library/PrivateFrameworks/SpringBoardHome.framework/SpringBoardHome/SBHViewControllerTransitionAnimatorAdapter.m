@interface SBHViewControllerTransitionAnimatorAdapter
- (SBHViewControllerTransitionAnimatorAdapter)initWithAnimator:(id)a3;
- (void)animateTransition:(id)a3;
- (void)cancelTransition:(id)a3 withCompletionSpeed:(double)a4 completionCurve:(int64_t)a5;
@end

@implementation SBHViewControllerTransitionAnimatorAdapter

- (SBHViewControllerTransitionAnimatorAdapter)initWithAnimator:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SBHViewControllerTransitionAnimatorAdapter;
  v6 = [(SBHViewControllerTransitionAnimatorAdapter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_animator, a3);
  }

  return v7;
}

- (void)animateTransition:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = v4;
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

  v9 = [v8 animationContext];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 transitionEndpoint];
    v12 = [(SBHViewControllerTransitionAnimatorAdapter *)self animator];
    if (([v8 transitionWasRestarted] & 1) == 0)
    {
      [v12 prepareToAnimateFromEndpoint:v11 != 1 withContext:v10];
    }

    v13 = [(SBHViewControllerTransitionAnimatorAdapter *)self transitionToken]+ 1;
    [(SBHViewControllerTransitionAnimatorAdapter *)self setTransitionToken:v13];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __64__SBHViewControllerTransitionAnimatorAdapter_animateTransition___block_invoke;
    v15[3] = &unk_1E808EC20;
    v15[4] = self;
    v16 = v12;
    v19 = v13;
    v20 = v11;
    v17 = v10;
    v18 = v6;
    v14 = v12;
    [v14 animateToEndpoint:v11 withContext:v17 completion:v15];
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

- (void)cancelTransition:(id)a3 withCompletionSpeed:(double)a4 completionCurve:(int64_t)a5
{
  v6 = a3;
  v7 = objc_opt_class();
  v8 = v6;
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

  v11 = [v10 animationContext];
  if (v11)
  {
    v12 = [(SBHViewControllerTransitionAnimatorAdapter *)self animator];
    v13 = [v11 transitionEndpoint] != 1;
    v14 = [(SBHViewControllerTransitionAnimatorAdapter *)self transitionToken]+ 1;
    [(SBHViewControllerTransitionAnimatorAdapter *)self setTransitionToken:v14];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __99__SBHViewControllerTransitionAnimatorAdapter_cancelTransition_withCompletionSpeed_completionCurve___block_invoke;
    v16[3] = &unk_1E808EC20;
    v16[4] = self;
    v17 = v12;
    v20 = v14;
    v21 = v13;
    v18 = v11;
    v19 = v8;
    v15 = v12;
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