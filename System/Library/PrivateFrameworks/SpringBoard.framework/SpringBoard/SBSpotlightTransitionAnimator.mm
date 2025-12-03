@interface SBSpotlightTransitionAnimator
- (SBSpotlightTransitionAnimator)init;
- (void)_animateInteractiveTransition:(id)transition;
- (void)_animateIntoSearch:(BOOL)search;
- (void)_cancelInteractiveTransition:(id)transition withCompletionSpeed:(double)speed completionCurve:(int64_t)curve;
- (void)_cleanupAfterAnimating:(BOOL)animating;
- (void)_finishInteractiveTransition:(id)transition withCompletionSpeed:(double)speed completionCurve:(int64_t)curve;
- (void)_prepareToAnimate;
- (void)_restoreSpotlightHeaderToInitiatingViewControllerForCancellation:(BOOL)cancellation;
- (void)_updateTransitionIntoSearch:(BOOL)search percentComplete:(double)complete;
- (void)animateTransition:(id)transition;
- (void)cancelTransition:(id)transition withCompletionSpeed:(double)speed completionCurve:(int64_t)curve;
- (void)finishInteractiveTransition:(id)transition withCompletionSpeed:(double)speed completionCurve:(int64_t)curve;
- (void)settings:(id)settings changedValueForKey:(id)key;
- (void)updateTransition:(id)transition withPercentComplete:(double)complete;
@end

@implementation SBSpotlightTransitionAnimator

- (SBSpotlightTransitionAnimator)init
{
  v6.receiver = self;
  v6.super_class = SBSpotlightTransitionAnimator;
  v2 = [(SBSpotlightTransitionAnimator *)&v6 init];
  if (v2)
  {
    v3 = +[SBSystemAnimationDomain rootSettings];
    settings = v2->_settings;
    v2->_settings = v3;

    [(PTSettings *)v2->_settings addKeyObserver:v2];
    [(SBSpotlightTransitionAnimator *)v2 _prototypeSettingsChanged];
  }

  return v2;
}

- (void)animateTransition:(id)transition
{
  transitionCopy = transition;
  objc_storeStrong(&self->_transitionContext, transition);
  containerView = [transitionCopy containerView];
  containerView = self->_containerView;
  self->_containerView = containerView;

  if (!self->_containerView)
  {
    [SBSpotlightTransitionAnimator animateTransition:];
  }

  if ([transitionCopy isInteractive])
  {
    [(SBSpotlightTransitionAnimator *)self _animateInteractiveTransition:transitionCopy];
  }

  else
  {
    v8 = self->_transitionToken + 1;
    self->_transitionToken = v8;
    if (([transitionCopy transitionWasRestarted] & 1) == 0)
    {
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __51__SBSpotlightTransitionAnimator_animateTransition___block_invoke;
      v18[3] = &unk_2783A8C18;
      v18[4] = self;
      [MEMORY[0x277D75D18] performWithoutAnimation:v18];
    }

    shouldMoveIntoSearch = [(SBSpotlightTransitionAnimator *)self shouldMoveIntoSearch];
    [(SBSpotlightTransitionAnimator *)self transitionDuration:transitionCopy];
    v11 = v10;
    v12 = MEMORY[0x277D75D18];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __51__SBSpotlightTransitionAnimator_animateTransition___block_invoke_2;
    v16[3] = &unk_2783A9F58;
    v16[4] = self;
    v17 = shouldMoveIntoSearch;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __51__SBSpotlightTransitionAnimator_animateTransition___block_invoke_3;
    v13[3] = &unk_2783B6948;
    v15 = v8;
    v13[4] = self;
    v14 = transitionCopy;
    [v12 animateKeyframesWithDuration:0 delay:v16 options:v13 animations:v11 completion:0.0];
  }
}

void *__51__SBSpotlightTransitionAnimator_animateTransition___block_invoke_3(void *a1)
{
  v2 = a1[6];
  result = a1[4];
  if (v2 == result[5])
  {
    [result _cleanupAfterAnimating:1];
    v4 = a1[5];

    return [v4 completeTransition:1];
  }

  return result;
}

- (void)updateTransition:(id)transition withPercentComplete:(double)complete
{
  if (([(SBViewControllerContextTransitioning *)self->_transitionContext isAnimated]& 1) == 0)
  {
    [SBSpotlightTransitionAnimator updateTransition:withPercentComplete:];
  }

  [(SBSpotlightTransitionAnimator *)self _updateTransitionIntoSearch:[(SBSpotlightTransitionAnimator *)self shouldMoveIntoSearch] percentComplete:complete];
  if ([(SBSpotlightTransitionAnimator *)self shouldMoveIntoSearch])
  {
    spotlightViewController = self->_spotlightViewController;

    [(SPUIRemoteSearchViewController *)spotlightViewController setRevealProgress:complete];
  }
}

- (void)cancelTransition:(id)transition withCompletionSpeed:(double)speed completionCurve:(int64_t)curve
{
  transitionCopy = transition;
  v9 = objc_opt_class();
  v10 = SBSafeCast(v9, transitionCopy);
  if ([v10 initiallyInteractive])
  {
    [(SBSpotlightTransitionAnimator *)self _cancelInteractiveTransition:transitionCopy withCompletionSpeed:curve completionCurve:speed];
  }

  else
  {
    v11 = self->_transitionToken + 1;
    self->_transitionToken = v11;
    shouldMoveIntoSearchOnCancel = [(SBSpotlightTransitionAnimator *)self shouldMoveIntoSearchOnCancel];
    [(SBSpotlightTransitionAnimator *)self transitionDuration:transitionCopy];
    v14 = v13;
    v15 = MEMORY[0x277D75D18];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __86__SBSpotlightTransitionAnimator_cancelTransition_withCompletionSpeed_completionCurve___block_invoke;
    v19[3] = &unk_2783A9F58;
    v19[4] = self;
    v20 = shouldMoveIntoSearchOnCancel;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __86__SBSpotlightTransitionAnimator_cancelTransition_withCompletionSpeed_completionCurve___block_invoke_2;
    v16[3] = &unk_2783B6948;
    v18 = v11;
    v16[4] = self;
    v17 = transitionCopy;
    [v15 animateKeyframesWithDuration:0 delay:v19 options:v16 animations:v14 completion:0.0];
  }
}

void *__86__SBSpotlightTransitionAnimator_cancelTransition_withCompletionSpeed_completionCurve___block_invoke_2(void *a1)
{
  v2 = a1[6];
  result = a1[4];
  if (v2 == result[5])
  {
    [result _cleanupAfterAnimating:0];
    v4 = a1[5];

    return [v4 completeTransition:0];
  }

  return result;
}

- (void)finishInteractiveTransition:(id)transition withCompletionSpeed:(double)speed completionCurve:(int64_t)curve
{
  transitionCopy = transition;
  v8 = objc_opt_class();
  v9 = SBSafeCast(v8, transitionCopy);
  if ([v9 initiallyInteractive])
  {
    [(SBSpotlightTransitionAnimator *)self _finishInteractiveTransition:transitionCopy withCompletionSpeed:curve completionCurve:speed];
  }
}

- (void)settings:(id)settings changedValueForKey:(id)key
{
  if ([key isEqualToString:@"spotlightNoninteractiveAnimationDuration"])
  {

    [(SBSpotlightTransitionAnimator *)self _prototypeSettingsChanged];
  }
}

- (void)_prepareToAnimate
{
  OUTLINED_FUNCTION_1_2();
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"[_transitionContext isAnimated]" object:? file:? lineNumber:? description:?];
}

- (void)_animateInteractiveTransition:(id)transition
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __63__SBSpotlightTransitionAnimator__animateInteractiveTransition___block_invoke;
  v3[3] = &unk_2783A8C18;
  v3[4] = self;
  [MEMORY[0x277D75D18] performWithoutAnimation:v3];
}

- (void)_updateTransitionIntoSearch:(BOOL)search percentComplete:(double)complete
{
  searchCopy = search;
  self->_percentComplete = complete;
  v7 = 1.0 - complete;
  [(SBSpotlightTransitionAnimator *)self _percentVisibleForPercentComplete:complete];
  v9 = v8;
  [(SBSpotlightTransitionAnimator *)self _percentVisibleForPercentComplete:v7];
  searchView = self->_searchView;
  if (searchCopy)
  {
    [(UIView *)searchView setAlpha:v9];
    if (([(SBViewControllerContextTransitioning *)self->_transitionContext isInteractive]& 1) == 0)
    {
      return;
    }
  }

  else
  {
    [(UIView *)searchView setAlpha:?];
    if (![(SBViewControllerContextTransitioning *)self->_transitionContext isInteractive])
    {
      return;
    }
  }

  backdropView = self->_backdropView;

  [(SBSearchBackdropView *)backdropView setTransitionProgress:complete];
}

- (void)_cancelInteractiveTransition:(id)transition withCompletionSpeed:(double)speed completionCurve:(int64_t)curve
{
  transitionCopy = transition;
  [(SBSpotlightTransitionAnimator *)self _cleanupAfterAnimating:0];
  [transitionCopy completeTransition:0];
}

- (void)_finishInteractiveTransition:(id)transition withCompletionSpeed:(double)speed completionCurve:(int64_t)curve
{
  transitionCopy = transition;
  [(SBSpotlightTransitionAnimator *)self _cleanupAfterAnimating:1];
  [transitionCopy completeTransition:1];
}

- (void)_animateIntoSearch:(BOOL)search
{
  searchCopy = search;
  if (([(SBViewControllerContextTransitioning *)self->_transitionContext isAnimated]& 1) == 0)
  {
    [SBSpotlightTransitionAnimator _animateIntoSearch:];
  }

  if (searchCopy)
  {
    v5 = 0.75;
  }

  else
  {
    v5 = 0.25;
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __52__SBSpotlightTransitionAnimator__animateIntoSearch___block_invoke;
  v9[3] = &unk_2783ABD10;
  v9[4] = self;
  v10 = searchCopy;
  *&v9[5] = v5;
  [MEMORY[0x277D75D18] addKeyframeWithRelativeStartTime:v9 relativeDuration:0.0 animations:v5];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__SBSpotlightTransitionAnimator__animateIntoSearch___block_invoke_2;
  v7[3] = &unk_2783A9F58;
  v7[4] = self;
  v8 = searchCopy;
  [MEMORY[0x277D75D18] addKeyframeWithRelativeStartTime:v7 relativeDuration:v5 animations:1.0 - v5];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __52__SBSpotlightTransitionAnimator__animateIntoSearch___block_invoke_3;
  v6[3] = &unk_2783A8C18;
  v6[4] = self;
  [MEMORY[0x277D75D18] addKeyframeWithRelativeStartTime:v6 relativeDuration:0.0 animations:1.0];
}

- (void)_cleanupAfterAnimating:(BOOL)animating
{
  animatingCopy = animating;
  if (([(SBViewControllerContextTransitioning *)self->_transitionContext isAnimated]& 1) == 0)
  {
    [SBSpotlightTransitionAnimator _cleanupAfterAnimating:];
  }

  layer = [(UIView *)self->_searchView layer];
  v6 = *(MEMORY[0x277CBF2C0] + 16);
  v14[0] = *MEMORY[0x277CBF2C0];
  v14[1] = v6;
  v14[2] = *(MEMORY[0x277CBF2C0] + 32);
  [layer setAffineTransform:v14];

  [(UIView *)self->_searchView setAlpha:1.0];
  [(SBSearchBackdropView *)self->_backdropView completeTransitionSuccessfully:animatingCopy];
  [(SBSearchBackdropView *)self->_backdropView completeIncrementalTransitionSuccessfully:animatingCopy];
  if (self->_ownsBackdropView)
  {
    [(SBSearchBackdropView *)self->_backdropView setAlpha:0.0];
    [(SBSearchBackdropView *)self->_backdropView removeFromSuperview];
  }

  operation = self->_operation;
  if (operation == 1)
  {
    if (animatingCopy)
    {
      [(SBSpotlightTransitionAnimator *)self _restoreSpotlightHeaderToInitiatingViewController];
    }
  }

  else if (!operation)
  {
    touchSwallowingView = self->_touchSwallowingView;
    if (touchSwallowingView)
    {
      [(UIView *)touchSwallowingView removeFromSuperview];
      v9 = self->_touchSwallowingView;
      self->_touchSwallowingView = 0;

      navigationController = [(SPUIRemoteSearchViewController *)self->_spotlightViewController navigationController];
      view = [navigationController view];
      [view setUserInteractionEnabled:1];
    }

    if (!animatingCopy)
    {
      [(SBSpotlightTransitionAnimator *)self _restoreSpotlightHeaderToInitiatingViewControllerForCancellation:1];
    }
  }

  searchView = self->_searchView;
  self->_searchView = 0;

  backdropView = self->_backdropView;
  self->_backdropView = 0;
}

- (void)_restoreSpotlightHeaderToInitiatingViewControllerForCancellation:(BOOL)cancellation
{
  spotlightHeaderAcquiringViewController = [(SBUISpotlightInitiating *)self->_initiatingViewController spotlightHeaderAcquiringViewController];
  v5 = spotlightHeaderAcquiringViewController;
  if (spotlightHeaderAcquiringViewController)
  {
    navigationItem = [spotlightHeaderAcquiringViewController navigationItem];
    _canvasView = [navigationItem _canvasView];
  }

  else
  {
    _canvasView = [(SBViewControllerContextTransitioning *)self->_transitionContext viewForKey:@"SBSpotlightSearchHeaderViewKey"];
  }

  [_canvasView setAlpha:1.0];
}

- (void)animateTransition:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"_containerView" object:? file:? lineNumber:? description:?];
}

- (void)updateTransition:withPercentComplete:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"[_transitionContext isAnimated]" object:? file:? lineNumber:? description:?];
}

- (void)_animateIntoSearch:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"[_transitionContext isAnimated]" object:? file:? lineNumber:? description:?];
}

- (void)_cleanupAfterAnimating:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"[_transitionContext isAnimated]" object:? file:? lineNumber:? description:?];
}

@end