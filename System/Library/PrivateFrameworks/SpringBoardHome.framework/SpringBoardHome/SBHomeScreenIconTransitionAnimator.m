@interface SBHomeScreenIconTransitionAnimator
- (BOOL)iconAnimator:(id)a3 canAlterViewHierarchyDuringCleanupUsingBlock:(id)a4;
- (SBHIconAnimationSettings)currentSettings;
- (SBHomeScreenIconTransitionAnimator)initWithIconAnimator:(id)a3 childViewController:(id)a4 operation:(unint64_t)a5;
- (SBHomeScreenIconTransitionAnimatorDelegate)delegate;
- (double)percentComplete;
- (double)transitionDuration:(id)a3;
- (id)transitionAnimationFactory:(id)a3;
- (unint64_t)currentOperation;
- (void)animateTransition:(id)a3;
- (void)animationEnded:(BOOL)a3;
- (void)cancel;
- (void)cancelTransition:(id)a3 withCompletionSpeed:(double)a4 completionCurve:(int64_t)a5;
- (void)completeImmediately;
- (void)finishInteractiveTransition:(id)a3 withCompletionSpeed:(double)a4 completionCurve:(int64_t)a5;
- (void)iconAnimatorWasInvalidated:(id)a3;
- (void)restart;
- (void)reverse;
- (void)updateTransition:(id)a3 withPercentComplete:(double)a4;
@end

@implementation SBHomeScreenIconTransitionAnimator

- (SBHIconAnimationSettings)currentSettings
{
  currentOperation = self->_currentOperation;
  if (currentOperation != [(SBHomeScreenIconTransitionAnimator *)self currentOperation])
  {
    currentSettings = self->_currentSettings;
    self->_currentSettings = 0;
  }

  v5 = self->_currentSettings;
  if (!v5)
  {
    v6 = [(SBHomeScreenIconTransitionAnimator *)self delegate];
    if (v6)
    {
      v7 = [(SBHomeScreenIconTransitionAnimator *)self currentOperation];
      self->_currentOperation = v7;
      v8 = [(SBHomeScreenIconTransitionAnimator *)self childViewController];
      v9 = [v6 animator:self animationSettingsForOperation:v7 childViewController:v8];
      v10 = self->_currentSettings;
      self->_currentSettings = v9;
    }

    v5 = self->_currentSettings;
  }

  return v5;
}

- (SBHomeScreenIconTransitionAnimatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (unint64_t)currentOperation
{
  v3 = [(SBHomeScreenIconTransitionAnimator *)self operation];
  if ([(SBHomeScreenIconTransitionAnimator *)self isCancelled])
  {
    return v3 == 0;
  }

  else
  {
    return v3;
  }
}

- (SBHomeScreenIconTransitionAnimator)initWithIconAnimator:(id)a3 childViewController:(id)a4 operation:(unint64_t)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = SBHomeScreenIconTransitionAnimator;
  v11 = [(SBHomeScreenIconTransitionAnimator *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_iconAnimator, a3);
    [v9 setDelegate:v12];
    objc_storeStrong(&v12->_childViewController, a4);
    v12->_operation = a5;
  }

  return v12;
}

- (void)cancel
{
  if (![(SBHomeScreenIconTransitionAnimator *)self isCancelled])
  {
    transitionContext = self->_transitionContext;

    [(SBViewControllerContextTransitioning *)transitionContext cancelTransition];
  }
}

- (void)restart
{
  if ([(SBHomeScreenIconTransitionAnimator *)self isCancelled])
  {
    self->_needsTransitionTokenIncrementOnNextUpdate = 1;
    transitionContext = self->_transitionContext;

    [(SBViewControllerContextTransitioning *)transitionContext restartTransition];
  }
}

- (void)reverse
{
  if ([(SBHomeScreenIconTransitionAnimator *)self isCancelled])
  {

    [(SBHomeScreenIconTransitionAnimator *)self restart];
  }

  else
  {

    [(SBHomeScreenIconTransitionAnimator *)self cancel];
  }
}

- (void)completeImmediately
{
  v3 = [(SBHomeScreenIconTransitionAnimator *)self iconAnimator];
  v4 = v3;
  if (v3 && ([v3 invalidated] & 1) == 0)
  {
    v5 = self->_transitionToken + 1;
    self->_transitionToken = v5;
    [v4 setSettings:0];
    v6 = [(SBHomeScreenIconTransitionAnimator *)self currentOperation];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __57__SBHomeScreenIconTransitionAnimator_completeImmediately__block_invoke;
    v9[3] = &unk_1E8090A20;
    v9[4] = self;
    v9[5] = v5;
    v7 = _Block_copy(v9);
    v8 = 0.0;
    if (!v6)
    {
      v8 = 1.0;
    }

    [v4 animateToFraction:v7 afterDelay:v8 withCompletion:0.0];
  }

  else
  {
    [(SBViewControllerContextTransitioning *)self->_transitionContext completeTransition:[(SBHomeScreenIconTransitionAnimator *)self isCancelled]^ 1];
  }
}

void *__57__SBHomeScreenIconTransitionAnimator_completeImmediately__block_invoke(uint64_t a1)
{
  v3 = a1 + 32;
  result = *(a1 + 32);
  if (*(v3 + 8) == result[2])
  {
    v4 = result[1];
    v5 = [result isCancelled] ^ 1;

    return [v4 completeTransition:v5];
  }

  return result;
}

- (double)transitionDuration:(id)a3
{
  v4 = [(SBHomeScreenIconTransitionAnimator *)self iconAnimator];
  v5 = 0.0;
  if (([v4 invalidated] & 1) == 0)
  {
    v6 = [(SBHomeScreenIconTransitionAnimator *)self currentSettings];
    v7 = [v6 centralAnimationSettings];
    [v7 duration];
    v5 = v8;
  }

  return v5;
}

- (id)transitionAnimationFactory:(id)a3
{
  v4 = a3;
  v5 = [(SBHomeScreenIconTransitionAnimator *)self iconAnimator];
  if ([v5 invalidated])
  {
    v6 = [MEMORY[0x1E698E7D0] factoryWithDuration:0.0];
    goto LABEL_16;
  }

  v7 = [(SBHomeScreenIconTransitionAnimator *)self currentSettings];
  v8 = [v7 centralAnimationSettings];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [v7 crossfadeSettings];

    v8 = v9;
  }

  v10 = [v8 BSAnimationSettings];
  v11 = [v10 mutableCopy];

  v12 = [v4 transitionWasCancelled];
  v13 = ([(SBHomeScreenIconTransitionAnimator *)self operation]== 1) & v12;
  v14 = 0.0;
  if ((v13 & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_10;
    }

    [v7 appHeadStart];
    v16 = v15;
    if (!BSFloatGreaterThanFloat())
    {
      goto LABEL_10;
    }

    [v11 delay];
    v14 = v16 + v17;
  }

  [v11 setDelay:v14];
LABEL_10:
  if ((v12 & 1) == 0 && ([v4 transitionWasRestarted] & 1) == 0)
  {
    [v11 delay];
    v19 = v18;
    [(SBHomeScreenIconTransitionAnimator *)self initialDelay];
    [v11 setDelay:v19 + v20];
  }

  v21 = [MEMORY[0x1E698E7D0] factoryWithSettings:v11];
  v6 = v21;
  if ((v13 & 1) == 0)
  {
    [v21 setAllowsAdditiveAnimations:1];
  }

LABEL_16:

  return v6;
}

- (void)animateTransition:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_transitionContext, a3);
  v6 = [(SBHomeScreenIconTransitionAnimator *)self iconAnimator];
  v7 = [v6 invalidated];
  if (!v6 || (v7 & 1) != 0)
  {
    if (v7)
    {
      [(SBHomeScreenIconTransitionAnimator *)self cancel];
    }

    else
    {
      [v5 completeTransition:1];
    }
  }

  else
  {
    v8 = self->_transitionToken + 1;
    self->_transitionToken = v8;
    v9 = [(SBHomeScreenIconTransitionAnimator *)self currentSettings];
    [v6 setSettings:v9];

    v10 = [(SBHomeScreenIconTransitionAnimator *)self operation];
    v11 = 0.0;
    v12 = 0.0;
    if (([v5 transitionWasRestarted] & 1) == 0)
    {
      [v6 prepare];
      v13 = 1.0;
      if (!v10)
      {
        v13 = 0.0;
      }

      [v6 setFraction:v13];
      [(SBHomeScreenIconTransitionAnimator *)self initialDelay];
      v12 = v14;
    }

    v15[1] = 3221225472;
    v15[0] = MEMORY[0x1E69E9820];
    v15[2] = __56__SBHomeScreenIconTransitionAnimator_animateTransition___block_invoke;
    v15[3] = &unk_1E8090A48;
    if (!v10)
    {
      v11 = 1.0;
    }

    v17 = v8;
    v15[4] = self;
    v16 = v5;
    [v6 animateToFraction:v15 afterDelay:v11 withCompletion:v12];
  }
}

uint64_t __56__SBHomeScreenIconTransitionAnimator_animateTransition___block_invoke(uint64_t result)
{
  if (*(result + 48) == *(*(result + 32) + 16))
  {
    return [*(result + 40) completeTransition:1];
  }

  return result;
}

- (void)cancelTransition:(id)a3 withCompletionSpeed:(double)a4 completionCurve:(int64_t)a5
{
  v6 = a3;
  v7 = [(SBHomeScreenIconTransitionAnimator *)self iconAnimator];
  v8 = v7;
  if (v7 && ([v7 invalidated] & 1) == 0)
  {
    v9 = self->_transitionToken + 1;
    self->_transitionToken = v9;
    v10 = [(SBHomeScreenIconTransitionAnimator *)self currentSettings];
    [v8 setSettings:v10];
    v11 = [(SBHomeScreenIconTransitionAnimator *)self currentOperation];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __91__SBHomeScreenIconTransitionAnimator_cancelTransition_withCompletionSpeed_completionCurve___block_invoke;
    aBlock[3] = &unk_1E8090A48;
    v17 = v9;
    aBlock[4] = self;
    v12 = v6;
    v16 = v12;
    v13 = _Block_copy(aBlock);
    if (([v12 wasPreviousPhaseInteractive] & 1) == 0)
    {
      v14 = 0.0;
      if (!v11)
      {
        v14 = 1.0;
      }

      [v8 animateToFraction:v13 afterDelay:v14 withCompletion:0.0];
    }
  }

  else
  {
    [v6 completeTransition:0];
  }
}

uint64_t __91__SBHomeScreenIconTransitionAnimator_cancelTransition_withCompletionSpeed_completionCurve___block_invoke(uint64_t result)
{
  if (*(result + 48) == *(*(result + 32) + 16))
  {
    return [*(result + 40) completeTransition:0];
  }

  return result;
}

- (void)updateTransition:(id)a3 withPercentComplete:(double)a4
{
  v11 = a3;
  v6 = [(SBHomeScreenIconTransitionAnimator *)self iconAnimator];
  if ([v6 invalidated])
  {
    [(SBHomeScreenIconTransitionAnimator *)self cancel];
  }

  else
  {
    if (self->_needsTransitionTokenIncrementOnNextUpdate)
    {
      self->_needsTransitionTokenIncrementOnNextUpdate = 0;
      ++self->_transitionToken;
    }

    v7 = [(SBHomeScreenIconTransitionAnimator *)self currentOperation];
    if (!self->_receivedFirstInteractiveUpdate)
    {
      self->_receivedFirstInteractiveUpdate = 1;
      objc_storeStrong(&self->_transitionContext, a3);
      if (([v11 transitionWasRestarted] & 1) == 0)
      {
        v8 = [(SBHomeScreenIconTransitionAnimator *)self currentSettings];
        [v6 setSettings:v8];

        [v6 prepare];
        v9 = 1.0;
        if (!v7)
        {
          v9 = 0.0;
        }

        [v6 setFraction:v9];
      }
    }

    if (v7)
    {
      v10 = [v6 backgroundDarkeningView];
      [v10 setAlpha:1.0];
    }
  }
}

- (void)finishInteractiveTransition:(id)a3 withCompletionSpeed:(double)a4 completionCurve:(int64_t)a5
{
  v6 = a3;
  v7 = [(SBHomeScreenIconTransitionAnimator *)self iconAnimator];
  if ([v7 invalidated])
  {
    [(SBHomeScreenIconTransitionAnimator *)self cancel];
  }

  else
  {
    v8 = self->_transitionToken + 1;
    self->_transitionToken = v8;
    v9 = [(SBHomeScreenIconTransitionAnimator *)self currentSettings];
    [v7 setSettings:v9];

    v10 = [(SBHomeScreenIconTransitionAnimator *)self operation];
    v12[1] = 3221225472;
    v12[0] = MEMORY[0x1E69E9820];
    v12[2] = __102__SBHomeScreenIconTransitionAnimator_finishInteractiveTransition_withCompletionSpeed_completionCurve___block_invoke;
    v12[3] = &unk_1E8090A48;
    if (v10)
    {
      v11 = 0.0;
    }

    else
    {
      v11 = 1.0;
    }

    v14 = v8;
    v12[4] = self;
    v13 = v6;
    [v7 animateToFraction:v12 afterDelay:v11 withCompletion:0.0];
  }
}

uint64_t __102__SBHomeScreenIconTransitionAnimator_finishInteractiveTransition_withCompletionSpeed_completionCurve___block_invoke(uint64_t result)
{
  if (*(result + 48) == *(*(result + 32) + 16))
  {
    return [*(result + 40) completeTransition:1];
  }

  return result;
}

- (double)percentComplete
{
  v2 = [(SBHomeScreenIconTransitionAnimator *)self iconAnimator];
  [v2 fraction];
  v4 = v3;

  return v4;
}

- (void)animationEnded:(BOOL)a3
{
  v5 = [(SBHomeScreenIconTransitionAnimator *)self iconAnimator];
  [v5 setDelegate:0];
  [v5 cleanup];
  transitionContext = self->_transitionContext;
  self->_transitionContext = 0;
}

- (void)iconAnimatorWasInvalidated:(id)a3
{
  ++self->_transitionToken;
  if ([(SBHomeScreenIconTransitionAnimator *)self isCancelled])
  {
    transitionContext = self->_transitionContext;

    [(SBViewControllerContextTransitioning *)transitionContext completeTransition:0];
  }

  else
  {

    [(SBHomeScreenIconTransitionAnimator *)self cancel];
  }
}

- (BOOL)iconAnimator:(id)a3 canAlterViewHierarchyDuringCleanupUsingBlock:(id)a4
{
  v5 = a4;
  v6 = [(SBHomeScreenIconTransitionAnimator *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v7 = [v6 animator:self canAlterViewHierarchyDuringCleanupUsingBlock:v5];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

@end