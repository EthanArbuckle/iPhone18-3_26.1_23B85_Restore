@interface _UIRapidClickPresentationAssistant
- (NSTimer)animationWatchdogTimer;
- (_UIRapidClickPresentationAssistant)initWithClickPresentation:(id)presentation;
- (double)transitionDuration:(id)duration;
- (id)animationControllerForDismissedController:(id)controller;
- (id)presentationControllerForPresentedViewController:(id)controller presentingViewController:(id)viewController sourceViewController:(id)sourceViewController;
- (void)_animateDismissalWithReason:(unint64_t)reason actions:(id)actions completion:(id)completion;
- (void)_animateUsingFluidSpringWithType:(unint64_t)type animations:(id)animations completion:(id)completion;
- (void)_firstResponderDidChange:(id)change;
- (void)_nonAnimatedDismissalWithReason:(unint64_t)reason actions:(id)actions completion:(id)completion;
- (void)_performPresentationAnimationsFromViewController:(id)controller;
- (void)animateTransition:(id)transition;
- (void)dealloc;
- (void)dismissWithReason:(unint64_t)reason alongsideActions:(id)actions completion:(id)completion;
- (void)presentFromSourcePreview:(id)preview lifecycleCompletion:(id)completion;
@end

@implementation _UIRapidClickPresentationAssistant

- (_UIRapidClickPresentationAssistant)initWithClickPresentation:(id)presentation
{
  presentationCopy = presentation;
  v9.receiver = self;
  v9.super_class = _UIRapidClickPresentationAssistant;
  v5 = [(_UIRapidClickPresentationAssistant *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(_UIRapidClickPresentationAssistant *)v5 setPresentation:presentationCopy];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v6 selector:sel__firstResponderDidChange_ name:@"UIWindowFirstResponderDidChangeNotification" object:0];
  }

  return v6;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:@"UIWindowFirstResponderDidChangeNotification"];

  v4.receiver = self;
  v4.super_class = _UIRapidClickPresentationAssistant;
  [(_UIRapidClickPresentationAssistant *)&v4 dealloc];
}

- (void)_firstResponderDidChange:(id)change
{
  object = [change object];
  firstResponder = [object firstResponder];

  if (firstResponder)
  {
    keyboardAssertionInvalidationHandler = [(_UIRapidClickPresentationAssistant *)self keyboardAssertionInvalidationHandler];
    if (keyboardAssertionInvalidationHandler)
    {
      presentation = [(_UIRapidClickPresentationAssistant *)self presentation];
      v7 = (keyboardAssertionInvalidationHandler)[2](keyboardAssertionInvalidationHandler, firstResponder, presentation);

      if ((v7 & 1) == 0)
      {
        [(_UIRapidClickPresentationAssistant *)self setKeyboardSuppressionAssertion:0];
      }
    }
  }
}

- (void)presentFromSourcePreview:(id)preview lifecycleCompletion:(id)completion
{
  completionCopy = completion;
  previewCopy = preview;
  presentation = [(_UIRapidClickPresentationAssistant *)self presentation];
  viewController = [presentation viewController];
  [viewController _setOverrideUseCustomPresentation:1];
  [viewController _setOverrideTransitioningDelegate:self];
  [(_UIRapidClickPresentationAssistant *)self setSourcePreview:previewCopy];

  [(_UIRapidClickPresentationAssistant *)self setLifecycleCompletion:completionCopy];
  _isDelayingPresentation = [viewController _isDelayingPresentation];
  presentationController = [presentation presentationController];
  presentingViewController = [presentationController presentingViewController];

  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __83___UIRapidClickPresentationAssistant_presentFromSourcePreview_lifecycleCompletion___block_invoke;
  v20 = &unk_1E70F5B18;
  v13 = presentingViewController;
  v21 = v13;
  v14 = viewController;
  v24 = _isDelayingPresentation;
  v22 = v14;
  selfCopy = self;
  [UIViewController _performWithoutDeferringTransitions:&v17];
  if ((_isDelayingPresentation & 1) == 0)
  {
    presentationController2 = [v14 presentationController];
    dismissed = [presentationController2 dismissed];

    if (dismissed)
    {
      [v14 _setOverrideUseCustomPresentation:0];
      [v14 _setOverrideTransitioningDelegate:0];
      [(_UIRapidClickPresentationAssistant *)self setLifecycleCompletion:0];
      completionCopy[2](completionCopy, 0);
    }

    else
    {
      [(_UIRapidClickPresentationAssistant *)self _performPresentationAnimationsFromViewController:v13];
    }
  }
}

- (void)_performPresentationAnimationsFromViewController:(id)controller
{
  presentation = [(_UIRapidClickPresentationAssistant *)self presentation];
  if ([presentation suppressInputViewDuringPresentation])
  {
    v5 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
    v6 = [v5 vendKeyboardSuppressionAssertionForReason:@"com.apple.UIKit._UIRapidClickPresentationAssistant" type:1];
    [(_UIRapidClickPresentationAssistant *)self setKeyboardSuppressionAssertion:v6];
  }

  appearanceTransition = [presentation appearanceTransition];
  if (objc_opt_respondsToSelector())
  {
    sourcePreview = [(_UIRapidClickPresentationAssistant *)self sourcePreview];
    [appearanceTransition setSourcePreview:sourcePreview];
  }

  self->_didBeginPresentation = 1;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __87___UIRapidClickPresentationAssistant__performPresentationAnimationsFromViewController___block_invoke;
  v19[3] = &unk_1E70F3590;
  v9 = presentation;
  v20 = v9;
  [UIView performWithoutAnimation:v19];
  customViewForTouchContinuation = [v9 customViewForTouchContinuation];
  _window = [customViewForTouchContinuation _window];

  if (_window)
  {
    _gestureEnvironment = [UIApp _gestureEnvironment];
    [(UIGestureEnvironment *)_gestureEnvironment _performTouchContinuationWithOverrideHitTestedView:customViewForTouchContinuation];
  }

  v16 = appearanceTransition;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __87___UIRapidClickPresentationAssistant__performPresentationAnimationsFromViewController___block_invoke_2;
  v17[3] = &unk_1E70F3590;
  v18 = v9;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __87___UIRapidClickPresentationAssistant__performPresentationAnimationsFromViewController___block_invoke_3;
  v15[3] = &unk_1E70F3FD8;
  v13 = appearanceTransition;
  v14 = v9;
  [(_UIRapidClickPresentationAssistant *)self _animateUsingFluidSpringWithType:0 animations:v17 completion:v15];
}

- (void)dismissWithReason:(unint64_t)reason alongsideActions:(id)actions completion:(id)completion
{
  actionsCopy = actions;
  completionCopy = completion;
  presentation = [(_UIRapidClickPresentationAssistant *)self presentation];
  presentationController = [presentation presentationController];
  dismissing = [presentationController dismissing];

  if ((dismissing & 1) == 0 && self->_didBeginPresentation)
  {
    self->_isInteractionInitiatedDismiss = 1;
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __84___UIRapidClickPresentationAssistant_dismissWithReason_alongsideActions_completion___block_invoke;
    v17 = &unk_1E70F37C0;
    selfCopy = self;
    v19 = actionsCopy;
    v13 = _Block_copy(&v14);
    if ([UIView areAnimationsEnabled:v14])
    {
      [(_UIRapidClickPresentationAssistant *)self _animateDismissalWithReason:reason actions:v13 completion:completionCopy];
    }

    else
    {
      [(_UIRapidClickPresentationAssistant *)self _nonAnimatedDismissalWithReason:reason actions:v13 completion:completionCopy];
    }
  }
}

- (void)_animateDismissalWithReason:(unint64_t)reason actions:(id)actions completion:(id)completion
{
  actionsCopy = actions;
  completionCopy = completion;
  presentation = [(_UIRapidClickPresentationAssistant *)self presentation];
  uiController = [presentation uiController];
  viewController = [presentation viewController];
  presentationController = [presentation presentationController];
  containerView = [presentationController containerView];

  disappearanceTransition = [presentation disappearanceTransition];
  if (objc_opt_respondsToSelector())
  {
    sourcePreview = [(_UIRapidClickPresentationAssistant *)self sourcePreview];
    [disappearanceTransition setSourcePreview:sourcePreview];
  }

  v15 = 2;
  if (reason <= 0xB)
  {
    if (((1 << reason) & 0xBBA) != 0)
    {
      v15 = 1;
    }

    else if (reason == 2)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [disappearanceTransition setDismissalStyle:1];
      }

      v15 = 2;
    }
  }

  v41[0] = 0;
  v41[1] = v41;
  v41[2] = 0x3032000000;
  v41[3] = __Block_byref_object_copy__9;
  v41[4] = __Block_byref_object_dispose__9;
  v42 = 0;
  v27 = uiController;
  platterContainerView = [uiController platterContainerView];
  presentation2 = [(_UIRapidClickPresentationAssistant *)self presentation];
  viewController2 = [presentation2 viewController];
  presentingViewController = [viewController2 presentingViewController];

  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __85___UIRapidClickPresentationAssistant__animateDismissalWithReason_actions_completion___block_invoke_23;
  v39[3] = &unk_1E70F3590;
  v20 = presentation;
  v40 = v20;
  [UIView performWithoutAnimation:v39];
  if (actionsCopy)
  {
    actionsCopy[2]();
  }

  [viewController _setOverrideUseCustomPresentation:0];
  [viewController _setOverrideTransitioningDelegate:0];
  if (completionCopy && [v20 addDismissalCompletion:completionCopy])
  {

    completionCopy = 0;
  }

  objc_initWeak(&location, self);
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __85___UIRapidClickPresentationAssistant__animateDismissalWithReason_actions_completion___block_invoke_2;
  v36[3] = &unk_1E70F3590;
  v21 = v20;
  v37 = v21;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __85___UIRapidClickPresentationAssistant__animateDismissalWithReason_actions_completion___block_invoke_3;
  v29[3] = &unk_1E70F5B40;
  objc_copyWeak(&v35, &location);
  v34 = v41;
  v22 = presentingViewController;
  v30 = v22;
  v23 = platterContainerView;
  v31 = v23;
  v24 = disappearanceTransition;
  v32 = v24;
  v25 = completionCopy;
  v33 = v25;
  [(_UIRapidClickPresentationAssistant *)self _animateUsingFluidSpringWithType:v15 animations:v36 completion:v29];
  [(_UIRapidClickPresentationAssistant *)self setKeyboardSuppressionAssertion:0];

  objc_destroyWeak(&v35);
  objc_destroyWeak(&location);

  _Block_object_dispose(v41, 8);
}

- (void)_nonAnimatedDismissalWithReason:(unint64_t)reason actions:(id)actions completion:(id)completion
{
  actionsCopy = actions;
  completionCopy = completion;
  presentation = [(_UIRapidClickPresentationAssistant *)self presentation];
  viewController = [presentation viewController];
  uiController = [presentation uiController];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __89___UIRapidClickPresentationAssistant__nonAnimatedDismissalWithReason_actions_completion___block_invoke;
  v18[3] = &unk_1E70F3590;
  v12 = presentation;
  v19 = v12;
  [UIView performWithoutAnimation:v18];
  platterContainerView = [uiController platterContainerView];
  [platterContainerView removeFromSuperview];

  flocker = [uiController flocker];
  [flocker unflockToDrag:0 animated:0];

  [viewController _setOverrideUseCustomPresentation:0];
  [viewController _setOverrideTransitioningDelegate:0];
  if (actionsCopy)
  {
    actionsCopy[2](actionsCopy);
  }

  disappearanceTransition = [v12 disappearanceTransition];
  dismissalAlongsideAnimator = [disappearanceTransition dismissalAlongsideAnimator];
  [dismissalAlongsideAnimator performAllAnimations];

  dismissalAlongsideAnimator2 = [disappearanceTransition dismissalAlongsideAnimator];
  [dismissalAlongsideAnimator2 performAllCompletions];

  [(_UIRapidClickPresentationAssistant *)self setKeyboardSuppressionAssertion:0];
  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }
}

- (id)presentationControllerForPresentedViewController:(id)controller presentingViewController:(id)viewController sourceViewController:(id)sourceViewController
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  presentation = [(_UIRapidClickPresentationAssistant *)self presentation];
  presentationController = [presentation presentationController];

  if (!presentationController)
  {
    presentationController = [[UIPresentationController alloc] initWithPresentedViewController:controllerCopy presentingViewController:viewControllerCopy];
  }

  [(UIPresentationController *)presentationController _setContainerIgnoresDirectTouchEvents:0];

  return presentationController;
}

- (id)animationControllerForDismissedController:(id)controller
{
  if (self->_isInteractionInitiatedDismiss)
  {
    self = 0;
  }

  return self;
}

- (double)transitionDuration:(id)duration
{
  isAnimated = [duration isAnimated];
  result = 0.0;
  if (isAnimated)
  {
    return 0.25;
  }

  return result;
}

- (void)animateTransition:(id)transition
{
  transitionCopy = transition;
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __56___UIRapidClickPresentationAssistant_animateTransition___block_invoke;
  v10 = &unk_1E70F35B8;
  selfCopy = self;
  v5 = transitionCopy;
  v12 = v5;
  v6 = _Block_copy(&v7);
  if ([v5 isAnimated])
  {
    v6[2](v6);
  }

  else
  {
    [UIView performWithoutAnimation:v6];
  }
}

- (void)_animateUsingFluidSpringWithType:(unint64_t)type animations:(id)animations completion:(id)completion
{
  animationsCopy = animations;
  completionCopy = completion;
  v10 = 0.4;
  if (_AXSReduceMotionEnabled())
  {
    v11 = 0;
    v12 = 0.0;
    v13 = 1.0;
  }

  else
  {
    if (type == 2)
    {
      v11 = 0;
      v14 = 0.996;
      v12 = 0.15;
      v13 = 0.85;
      goto LABEL_4;
    }

    v12 = 0.0;
    if (type == 1)
    {
      v11 = 0;
      v10 = 0.35;
      v13 = 0.85;
    }

    else if (type)
    {
      v11 = 0;
      v13 = 0.0;
      v10 = 0.0;
    }

    else
    {
      v11 = 1;
      v10 = 0.32;
      v13 = 0.8;
    }
  }

  v14 = 0.0;
LABEL_4:
  ++self->_animationCount;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __93___UIRapidClickPresentationAssistant__animateUsingFluidSpringWithType_animations_completion___block_invoke;
  v20[3] = &unk_1E70F0F78;
  v21 = animationsCopy;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __93___UIRapidClickPresentationAssistant__animateUsingFluidSpringWithType_animations_completion___block_invoke_2;
  v17[3] = &unk_1E70F5B68;
  v18 = completionCopy;
  typeCopy = type;
  v17[4] = self;
  v15 = completionCopy;
  v16 = animationsCopy;
  [UIView _animateUsingSpringWithDampingRatio:v11 response:v20 tracking:v17 dampingRatioSmoothing:v13 responseSmoothing:v10 targetSmoothing:0.0 projectionDeceleration:0.0 animations:v12 completion:v14];
}

- (NSTimer)animationWatchdogTimer
{
  WeakRetained = objc_loadWeakRetained(&self->_animationWatchdogTimer);

  return WeakRetained;
}

@end