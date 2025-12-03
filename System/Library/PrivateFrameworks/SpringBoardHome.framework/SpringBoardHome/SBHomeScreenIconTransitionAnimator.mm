@interface SBHomeScreenIconTransitionAnimator
- (BOOL)iconAnimator:(id)animator canAlterViewHierarchyDuringCleanupUsingBlock:(id)block;
- (SBHIconAnimationSettings)currentSettings;
- (SBHomeScreenIconTransitionAnimator)initWithIconAnimator:(id)animator childViewController:(id)controller operation:(unint64_t)operation;
- (SBHomeScreenIconTransitionAnimatorDelegate)delegate;
- (double)percentComplete;
- (double)transitionDuration:(id)duration;
- (id)transitionAnimationFactory:(id)factory;
- (unint64_t)currentOperation;
- (void)animateTransition:(id)transition;
- (void)animationEnded:(BOOL)ended;
- (void)cancel;
- (void)cancelTransition:(id)transition withCompletionSpeed:(double)speed completionCurve:(int64_t)curve;
- (void)completeImmediately;
- (void)finishInteractiveTransition:(id)transition withCompletionSpeed:(double)speed completionCurve:(int64_t)curve;
- (void)iconAnimatorWasInvalidated:(id)invalidated;
- (void)restart;
- (void)reverse;
- (void)updateTransition:(id)transition withPercentComplete:(double)complete;
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
    delegate = [(SBHomeScreenIconTransitionAnimator *)self delegate];
    if (delegate)
    {
      currentOperation = [(SBHomeScreenIconTransitionAnimator *)self currentOperation];
      self->_currentOperation = currentOperation;
      childViewController = [(SBHomeScreenIconTransitionAnimator *)self childViewController];
      v9 = [delegate animator:self animationSettingsForOperation:currentOperation childViewController:childViewController];
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
  operation = [(SBHomeScreenIconTransitionAnimator *)self operation];
  if ([(SBHomeScreenIconTransitionAnimator *)self isCancelled])
  {
    return operation == 0;
  }

  else
  {
    return operation;
  }
}

- (SBHomeScreenIconTransitionAnimator)initWithIconAnimator:(id)animator childViewController:(id)controller operation:(unint64_t)operation
{
  animatorCopy = animator;
  controllerCopy = controller;
  v14.receiver = self;
  v14.super_class = SBHomeScreenIconTransitionAnimator;
  v11 = [(SBHomeScreenIconTransitionAnimator *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_iconAnimator, animator);
    [animatorCopy setDelegate:v12];
    objc_storeStrong(&v12->_childViewController, controller);
    v12->_operation = operation;
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
  iconAnimator = [(SBHomeScreenIconTransitionAnimator *)self iconAnimator];
  v4 = iconAnimator;
  if (iconAnimator && ([iconAnimator invalidated] & 1) == 0)
  {
    v5 = self->_transitionToken + 1;
    self->_transitionToken = v5;
    [v4 setSettings:0];
    currentOperation = [(SBHomeScreenIconTransitionAnimator *)self currentOperation];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __57__SBHomeScreenIconTransitionAnimator_completeImmediately__block_invoke;
    v9[3] = &unk_1E8090A20;
    v9[4] = self;
    v9[5] = v5;
    v7 = _Block_copy(v9);
    v8 = 0.0;
    if (!currentOperation)
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

- (double)transitionDuration:(id)duration
{
  iconAnimator = [(SBHomeScreenIconTransitionAnimator *)self iconAnimator];
  v5 = 0.0;
  if (([iconAnimator invalidated] & 1) == 0)
  {
    currentSettings = [(SBHomeScreenIconTransitionAnimator *)self currentSettings];
    centralAnimationSettings = [currentSettings centralAnimationSettings];
    [centralAnimationSettings duration];
    v5 = v8;
  }

  return v5;
}

- (id)transitionAnimationFactory:(id)factory
{
  factoryCopy = factory;
  iconAnimator = [(SBHomeScreenIconTransitionAnimator *)self iconAnimator];
  if ([iconAnimator invalidated])
  {
    v6 = [MEMORY[0x1E698E7D0] factoryWithDuration:0.0];
    goto LABEL_16;
  }

  currentSettings = [(SBHomeScreenIconTransitionAnimator *)self currentSettings];
  centralAnimationSettings = [currentSettings centralAnimationSettings];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    crossfadeSettings = [currentSettings crossfadeSettings];

    centralAnimationSettings = crossfadeSettings;
  }

  bSAnimationSettings = [centralAnimationSettings BSAnimationSettings];
  v11 = [bSAnimationSettings mutableCopy];

  transitionWasCancelled = [factoryCopy transitionWasCancelled];
  v13 = ([(SBHomeScreenIconTransitionAnimator *)self operation]== 1) & transitionWasCancelled;
  v14 = 0.0;
  if ((v13 & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_10;
    }

    [currentSettings appHeadStart];
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
  if ((transitionWasCancelled & 1) == 0 && ([factoryCopy transitionWasRestarted] & 1) == 0)
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

- (void)animateTransition:(id)transition
{
  transitionCopy = transition;
  objc_storeStrong(&self->_transitionContext, transition);
  iconAnimator = [(SBHomeScreenIconTransitionAnimator *)self iconAnimator];
  invalidated = [iconAnimator invalidated];
  if (!iconAnimator || (invalidated & 1) != 0)
  {
    if (invalidated)
    {
      [(SBHomeScreenIconTransitionAnimator *)self cancel];
    }

    else
    {
      [transitionCopy completeTransition:1];
    }
  }

  else
  {
    v8 = self->_transitionToken + 1;
    self->_transitionToken = v8;
    currentSettings = [(SBHomeScreenIconTransitionAnimator *)self currentSettings];
    [iconAnimator setSettings:currentSettings];

    operation = [(SBHomeScreenIconTransitionAnimator *)self operation];
    v11 = 0.0;
    v12 = 0.0;
    if (([transitionCopy transitionWasRestarted] & 1) == 0)
    {
      [iconAnimator prepare];
      v13 = 1.0;
      if (!operation)
      {
        v13 = 0.0;
      }

      [iconAnimator setFraction:v13];
      [(SBHomeScreenIconTransitionAnimator *)self initialDelay];
      v12 = v14;
    }

    v15[1] = 3221225472;
    v15[0] = MEMORY[0x1E69E9820];
    v15[2] = __56__SBHomeScreenIconTransitionAnimator_animateTransition___block_invoke;
    v15[3] = &unk_1E8090A48;
    if (!operation)
    {
      v11 = 1.0;
    }

    v17 = v8;
    v15[4] = self;
    v16 = transitionCopy;
    [iconAnimator animateToFraction:v15 afterDelay:v11 withCompletion:v12];
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

- (void)cancelTransition:(id)transition withCompletionSpeed:(double)speed completionCurve:(int64_t)curve
{
  transitionCopy = transition;
  iconAnimator = [(SBHomeScreenIconTransitionAnimator *)self iconAnimator];
  v8 = iconAnimator;
  if (iconAnimator && ([iconAnimator invalidated] & 1) == 0)
  {
    v9 = self->_transitionToken + 1;
    self->_transitionToken = v9;
    currentSettings = [(SBHomeScreenIconTransitionAnimator *)self currentSettings];
    [v8 setSettings:currentSettings];
    currentOperation = [(SBHomeScreenIconTransitionAnimator *)self currentOperation];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __91__SBHomeScreenIconTransitionAnimator_cancelTransition_withCompletionSpeed_completionCurve___block_invoke;
    aBlock[3] = &unk_1E8090A48;
    v17 = v9;
    aBlock[4] = self;
    v12 = transitionCopy;
    v16 = v12;
    v13 = _Block_copy(aBlock);
    if (([v12 wasPreviousPhaseInteractive] & 1) == 0)
    {
      v14 = 0.0;
      if (!currentOperation)
      {
        v14 = 1.0;
      }

      [v8 animateToFraction:v13 afterDelay:v14 withCompletion:0.0];
    }
  }

  else
  {
    [transitionCopy completeTransition:0];
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

- (void)updateTransition:(id)transition withPercentComplete:(double)complete
{
  transitionCopy = transition;
  iconAnimator = [(SBHomeScreenIconTransitionAnimator *)self iconAnimator];
  if ([iconAnimator invalidated])
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

    currentOperation = [(SBHomeScreenIconTransitionAnimator *)self currentOperation];
    if (!self->_receivedFirstInteractiveUpdate)
    {
      self->_receivedFirstInteractiveUpdate = 1;
      objc_storeStrong(&self->_transitionContext, transition);
      if (([transitionCopy transitionWasRestarted] & 1) == 0)
      {
        currentSettings = [(SBHomeScreenIconTransitionAnimator *)self currentSettings];
        [iconAnimator setSettings:currentSettings];

        [iconAnimator prepare];
        v9 = 1.0;
        if (!currentOperation)
        {
          v9 = 0.0;
        }

        [iconAnimator setFraction:v9];
      }
    }

    if (currentOperation)
    {
      backgroundDarkeningView = [iconAnimator backgroundDarkeningView];
      [backgroundDarkeningView setAlpha:1.0];
    }
  }
}

- (void)finishInteractiveTransition:(id)transition withCompletionSpeed:(double)speed completionCurve:(int64_t)curve
{
  transitionCopy = transition;
  iconAnimator = [(SBHomeScreenIconTransitionAnimator *)self iconAnimator];
  if ([iconAnimator invalidated])
  {
    [(SBHomeScreenIconTransitionAnimator *)self cancel];
  }

  else
  {
    v8 = self->_transitionToken + 1;
    self->_transitionToken = v8;
    currentSettings = [(SBHomeScreenIconTransitionAnimator *)self currentSettings];
    [iconAnimator setSettings:currentSettings];

    operation = [(SBHomeScreenIconTransitionAnimator *)self operation];
    v12[1] = 3221225472;
    v12[0] = MEMORY[0x1E69E9820];
    v12[2] = __102__SBHomeScreenIconTransitionAnimator_finishInteractiveTransition_withCompletionSpeed_completionCurve___block_invoke;
    v12[3] = &unk_1E8090A48;
    if (operation)
    {
      v11 = 0.0;
    }

    else
    {
      v11 = 1.0;
    }

    v14 = v8;
    v12[4] = self;
    v13 = transitionCopy;
    [iconAnimator animateToFraction:v12 afterDelay:v11 withCompletion:0.0];
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
  iconAnimator = [(SBHomeScreenIconTransitionAnimator *)self iconAnimator];
  [iconAnimator fraction];
  v4 = v3;

  return v4;
}

- (void)animationEnded:(BOOL)ended
{
  iconAnimator = [(SBHomeScreenIconTransitionAnimator *)self iconAnimator];
  [iconAnimator setDelegate:0];
  [iconAnimator cleanup];
  transitionContext = self->_transitionContext;
  self->_transitionContext = 0;
}

- (void)iconAnimatorWasInvalidated:(id)invalidated
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

- (BOOL)iconAnimator:(id)animator canAlterViewHierarchyDuringCleanupUsingBlock:(id)block
{
  blockCopy = block;
  delegate = [(SBHomeScreenIconTransitionAnimator *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v7 = [delegate animator:self canAlterViewHierarchyDuringCleanupUsingBlock:blockCopy];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

@end