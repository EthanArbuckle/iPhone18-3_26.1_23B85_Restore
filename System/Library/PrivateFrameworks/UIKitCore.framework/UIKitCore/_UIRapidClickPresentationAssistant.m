@interface _UIRapidClickPresentationAssistant
- (NSTimer)animationWatchdogTimer;
- (_UIRapidClickPresentationAssistant)initWithClickPresentation:(id)a3;
- (double)transitionDuration:(id)a3;
- (id)animationControllerForDismissedController:(id)a3;
- (id)presentationControllerForPresentedViewController:(id)a3 presentingViewController:(id)a4 sourceViewController:(id)a5;
- (void)_animateDismissalWithReason:(unint64_t)a3 actions:(id)a4 completion:(id)a5;
- (void)_animateUsingFluidSpringWithType:(unint64_t)a3 animations:(id)a4 completion:(id)a5;
- (void)_firstResponderDidChange:(id)a3;
- (void)_nonAnimatedDismissalWithReason:(unint64_t)a3 actions:(id)a4 completion:(id)a5;
- (void)_performPresentationAnimationsFromViewController:(id)a3;
- (void)animateTransition:(id)a3;
- (void)dealloc;
- (void)dismissWithReason:(unint64_t)a3 alongsideActions:(id)a4 completion:(id)a5;
- (void)presentFromSourcePreview:(id)a3 lifecycleCompletion:(id)a4;
@end

@implementation _UIRapidClickPresentationAssistant

- (_UIRapidClickPresentationAssistant)initWithClickPresentation:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _UIRapidClickPresentationAssistant;
  v5 = [(_UIRapidClickPresentationAssistant *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(_UIRapidClickPresentationAssistant *)v5 setPresentation:v4];
    v7 = [MEMORY[0x1E696AD88] defaultCenter];
    [v7 addObserver:v6 selector:sel__firstResponderDidChange_ name:@"UIWindowFirstResponderDidChangeNotification" object:0];
  }

  return v6;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:@"UIWindowFirstResponderDidChangeNotification"];

  v4.receiver = self;
  v4.super_class = _UIRapidClickPresentationAssistant;
  [(_UIRapidClickPresentationAssistant *)&v4 dealloc];
}

- (void)_firstResponderDidChange:(id)a3
{
  v4 = [a3 object];
  v8 = [v4 firstResponder];

  if (v8)
  {
    v5 = [(_UIRapidClickPresentationAssistant *)self keyboardAssertionInvalidationHandler];
    if (v5)
    {
      v6 = [(_UIRapidClickPresentationAssistant *)self presentation];
      v7 = (v5)[2](v5, v8, v6);

      if ((v7 & 1) == 0)
      {
        [(_UIRapidClickPresentationAssistant *)self setKeyboardSuppressionAssertion:0];
      }
    }
  }
}

- (void)presentFromSourcePreview:(id)a3 lifecycleCompletion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(_UIRapidClickPresentationAssistant *)self presentation];
  v9 = [v8 viewController];
  [v9 _setOverrideUseCustomPresentation:1];
  [v9 _setOverrideTransitioningDelegate:self];
  [(_UIRapidClickPresentationAssistant *)self setSourcePreview:v7];

  [(_UIRapidClickPresentationAssistant *)self setLifecycleCompletion:v6];
  v10 = [v9 _isDelayingPresentation];
  v11 = [v8 presentationController];
  v12 = [v11 presentingViewController];

  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __83___UIRapidClickPresentationAssistant_presentFromSourcePreview_lifecycleCompletion___block_invoke;
  v20 = &unk_1E70F5B18;
  v13 = v12;
  v21 = v13;
  v14 = v9;
  v24 = v10;
  v22 = v14;
  v23 = self;
  [UIViewController _performWithoutDeferringTransitions:&v17];
  if ((v10 & 1) == 0)
  {
    v15 = [v14 presentationController];
    v16 = [v15 dismissed];

    if (v16)
    {
      [v14 _setOverrideUseCustomPresentation:0];
      [v14 _setOverrideTransitioningDelegate:0];
      [(_UIRapidClickPresentationAssistant *)self setLifecycleCompletion:0];
      v6[2](v6, 0);
    }

    else
    {
      [(_UIRapidClickPresentationAssistant *)self _performPresentationAnimationsFromViewController:v13];
    }
  }
}

- (void)_performPresentationAnimationsFromViewController:(id)a3
{
  v4 = [(_UIRapidClickPresentationAssistant *)self presentation];
  if ([v4 suppressInputViewDuringPresentation])
  {
    v5 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
    v6 = [v5 vendKeyboardSuppressionAssertionForReason:@"com.apple.UIKit._UIRapidClickPresentationAssistant" type:1];
    [(_UIRapidClickPresentationAssistant *)self setKeyboardSuppressionAssertion:v6];
  }

  v7 = [v4 appearanceTransition];
  if (objc_opt_respondsToSelector())
  {
    v8 = [(_UIRapidClickPresentationAssistant *)self sourcePreview];
    [v7 setSourcePreview:v8];
  }

  self->_didBeginPresentation = 1;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __87___UIRapidClickPresentationAssistant__performPresentationAnimationsFromViewController___block_invoke;
  v19[3] = &unk_1E70F3590;
  v9 = v4;
  v20 = v9;
  [UIView performWithoutAnimation:v19];
  v10 = [v9 customViewForTouchContinuation];
  v11 = [v10 _window];

  if (v11)
  {
    v12 = [UIApp _gestureEnvironment];
    [(UIGestureEnvironment *)v12 _performTouchContinuationWithOverrideHitTestedView:v10];
  }

  v16 = v7;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __87___UIRapidClickPresentationAssistant__performPresentationAnimationsFromViewController___block_invoke_2;
  v17[3] = &unk_1E70F3590;
  v18 = v9;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __87___UIRapidClickPresentationAssistant__performPresentationAnimationsFromViewController___block_invoke_3;
  v15[3] = &unk_1E70F3FD8;
  v13 = v7;
  v14 = v9;
  [(_UIRapidClickPresentationAssistant *)self _animateUsingFluidSpringWithType:0 animations:v17 completion:v15];
}

- (void)dismissWithReason:(unint64_t)a3 alongsideActions:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(_UIRapidClickPresentationAssistant *)self presentation];
  v11 = [v10 presentationController];
  v12 = [v11 dismissing];

  if ((v12 & 1) == 0 && self->_didBeginPresentation)
  {
    self->_isInteractionInitiatedDismiss = 1;
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __84___UIRapidClickPresentationAssistant_dismissWithReason_alongsideActions_completion___block_invoke;
    v17 = &unk_1E70F37C0;
    v18 = self;
    v19 = v8;
    v13 = _Block_copy(&v14);
    if ([UIView areAnimationsEnabled:v14])
    {
      [(_UIRapidClickPresentationAssistant *)self _animateDismissalWithReason:a3 actions:v13 completion:v9];
    }

    else
    {
      [(_UIRapidClickPresentationAssistant *)self _nonAnimatedDismissalWithReason:a3 actions:v13 completion:v9];
    }
  }
}

- (void)_animateDismissalWithReason:(unint64_t)a3 actions:(id)a4 completion:(id)a5
{
  v28 = a4;
  v8 = a5;
  v9 = [(_UIRapidClickPresentationAssistant *)self presentation];
  v10 = [v9 uiController];
  v11 = [v9 viewController];
  v12 = [v9 presentationController];
  v26 = [v12 containerView];

  v13 = [v9 disappearanceTransition];
  if (objc_opt_respondsToSelector())
  {
    v14 = [(_UIRapidClickPresentationAssistant *)self sourcePreview];
    [v13 setSourcePreview:v14];
  }

  v15 = 2;
  if (a3 <= 0xB)
  {
    if (((1 << a3) & 0xBBA) != 0)
    {
      v15 = 1;
    }

    else if (a3 == 2)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v13 setDismissalStyle:1];
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
  v27 = v10;
  v16 = [v10 platterContainerView];
  v17 = [(_UIRapidClickPresentationAssistant *)self presentation];
  v18 = [v17 viewController];
  v19 = [v18 presentingViewController];

  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __85___UIRapidClickPresentationAssistant__animateDismissalWithReason_actions_completion___block_invoke_23;
  v39[3] = &unk_1E70F3590;
  v20 = v9;
  v40 = v20;
  [UIView performWithoutAnimation:v39];
  if (v28)
  {
    v28[2]();
  }

  [v11 _setOverrideUseCustomPresentation:0];
  [v11 _setOverrideTransitioningDelegate:0];
  if (v8 && [v20 addDismissalCompletion:v8])
  {

    v8 = 0;
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
  v22 = v19;
  v30 = v22;
  v23 = v16;
  v31 = v23;
  v24 = v13;
  v32 = v24;
  v25 = v8;
  v33 = v25;
  [(_UIRapidClickPresentationAssistant *)self _animateUsingFluidSpringWithType:v15 animations:v36 completion:v29];
  [(_UIRapidClickPresentationAssistant *)self setKeyboardSuppressionAssertion:0];

  objc_destroyWeak(&v35);
  objc_destroyWeak(&location);

  _Block_object_dispose(v41, 8);
}

- (void)_nonAnimatedDismissalWithReason:(unint64_t)a3 actions:(id)a4 completion:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [(_UIRapidClickPresentationAssistant *)self presentation];
  v10 = [v9 viewController];
  v11 = [v9 uiController];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __89___UIRapidClickPresentationAssistant__nonAnimatedDismissalWithReason_actions_completion___block_invoke;
  v18[3] = &unk_1E70F3590;
  v12 = v9;
  v19 = v12;
  [UIView performWithoutAnimation:v18];
  v13 = [v11 platterContainerView];
  [v13 removeFromSuperview];

  v14 = [v11 flocker];
  [v14 unflockToDrag:0 animated:0];

  [v10 _setOverrideUseCustomPresentation:0];
  [v10 _setOverrideTransitioningDelegate:0];
  if (v7)
  {
    v7[2](v7);
  }

  v15 = [v12 disappearanceTransition];
  v16 = [v15 dismissalAlongsideAnimator];
  [v16 performAllAnimations];

  v17 = [v15 dismissalAlongsideAnimator];
  [v17 performAllCompletions];

  [(_UIRapidClickPresentationAssistant *)self setKeyboardSuppressionAssertion:0];
  if (v8)
  {
    v8[2](v8);
  }
}

- (id)presentationControllerForPresentedViewController:(id)a3 presentingViewController:(id)a4 sourceViewController:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [(_UIRapidClickPresentationAssistant *)self presentation];
  v10 = [v9 presentationController];

  if (!v10)
  {
    v10 = [[UIPresentationController alloc] initWithPresentedViewController:v7 presentingViewController:v8];
  }

  [(UIPresentationController *)v10 _setContainerIgnoresDirectTouchEvents:0];

  return v10;
}

- (id)animationControllerForDismissedController:(id)a3
{
  if (self->_isInteractionInitiatedDismiss)
  {
    self = 0;
  }

  return self;
}

- (double)transitionDuration:(id)a3
{
  v3 = [a3 isAnimated];
  result = 0.0;
  if (v3)
  {
    return 0.25;
  }

  return result;
}

- (void)animateTransition:(id)a3
{
  v4 = a3;
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __56___UIRapidClickPresentationAssistant_animateTransition___block_invoke;
  v10 = &unk_1E70F35B8;
  v11 = self;
  v5 = v4;
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

- (void)_animateUsingFluidSpringWithType:(unint64_t)a3 animations:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = 0.4;
  if (_AXSReduceMotionEnabled())
  {
    v11 = 0;
    v12 = 0.0;
    v13 = 1.0;
  }

  else
  {
    if (a3 == 2)
    {
      v11 = 0;
      v14 = 0.996;
      v12 = 0.15;
      v13 = 0.85;
      goto LABEL_4;
    }

    v12 = 0.0;
    if (a3 == 1)
    {
      v11 = 0;
      v10 = 0.35;
      v13 = 0.85;
    }

    else if (a3)
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
  v21 = v8;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __93___UIRapidClickPresentationAssistant__animateUsingFluidSpringWithType_animations_completion___block_invoke_2;
  v17[3] = &unk_1E70F5B68;
  v18 = v9;
  v19 = a3;
  v17[4] = self;
  v15 = v9;
  v16 = v8;
  [UIView _animateUsingSpringWithDampingRatio:v11 response:v20 tracking:v17 dampingRatioSmoothing:v13 responseSmoothing:v10 targetSmoothing:0.0 projectionDeceleration:0.0 animations:v12 completion:v14];
}

- (NSTimer)animationWatchdogTimer
{
  WeakRetained = objc_loadWeakRetained(&self->_animationWatchdogTimer);

  return WeakRetained;
}

@end