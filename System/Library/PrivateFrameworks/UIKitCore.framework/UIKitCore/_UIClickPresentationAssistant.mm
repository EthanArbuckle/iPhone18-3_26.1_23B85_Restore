@interface _UIClickPresentationAssistant
- (_UIClickPresentationAssistant)initWithClickPresentation:(id)presentation;
- (double)transitionDuration:(id)duration;
- (id)_sourcePreviewPortal;
- (id)presentationControllerForPresentedViewController:(id)controller presentingViewController:(id)viewController sourceViewController:(id)sourceViewController;
- (void)_animateDismissalIsInterruption:(BOOL)interruption;
- (void)_animatePresentation;
- (void)_applyStashedParentViewControllerIfNecessary;
- (void)_createPropertyAnimatorIfNecessaryForTransition:(id)transition isAppearing:(BOOL)appearing;
- (void)_didTransitionToDismissingFromState:(unint64_t)state;
- (void)_didTransitionToPossibleEndingTransition:(BOOL)transition;
- (void)_didTransitionToPresented;
- (void)_postInteractionCleanup;
- (void)_stashParentViewControllerIfNecessary;
- (void)animateTransition:(id)transition;
- (void)dismissWithReason:(unint64_t)reason alongsideActions:(id)actions completion:(id)completion;
- (void)presentFromSourcePreview:(id)preview lifecycleCompletion:(id)completion;
@end

@implementation _UIClickPresentationAssistant

- (_UIClickPresentationAssistant)initWithClickPresentation:(id)presentation
{
  presentationCopy = presentation;
  v8.receiver = self;
  v8.super_class = _UIClickPresentationAssistant;
  v5 = [(_UIClickPresentationAssistant *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(_UIClickPresentationAssistant *)v5 setPresentation:presentationCopy];
    v6->_currentState = 1;
  }

  return v6;
}

- (void)presentFromSourcePreview:(id)preview lifecycleCompletion:(id)completion
{
  completionCopy = completion;
  previewCopy = preview;
  presentation = [(_UIClickPresentationAssistant *)self presentation];
  viewController = [presentation viewController];

  presentation2 = [(_UIClickPresentationAssistant *)self presentation];
  presentationController = [presentation2 presentationController];
  presentingViewController = [presentationController presentingViewController];

  presentation3 = [(_UIClickPresentationAssistant *)self presentation];
  LODWORD(presentationController) = [presentation3 _presentsSelf];

  if (presentationController)
  {
    parentViewController = [viewController parentViewController];

    presentingViewController = parentViewController;
  }

  [(_UIClickPresentationAssistant *)self _stashParentViewControllerIfNecessary];
  [viewController _setOverrideUseCustomPresentation:1];
  [viewController _setOverrideTransitioningDelegate:self];
  [(_UIClickPresentationAssistant *)self setSourcePreview:previewCopy];

  [(_UIClickPresentationAssistant *)self setLifecycleCompletion:completionCopy];
  [presentingViewController presentViewController:viewController animated:1 completion:0];
}

- (void)dismissWithReason:(unint64_t)reason alongsideActions:(id)actions completion:(id)completion
{
  completionCopy = completion;
  if (self->_currentState == 2)
  {
    handleEvent(stateMachineSpec_4, 2, 2, self, &self->_currentState);
  }

  else
  {
    presentation = [(_UIClickPresentationAssistant *)self presentation];
    viewController = [presentation viewController];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __79___UIClickPresentationAssistant_dismissWithReason_alongsideActions_completion___block_invoke;
    v9[3] = &unk_1E70F0F78;
    v10 = completionCopy;
    [viewController dismissViewControllerAnimated:1 completion:v9];
  }
}

- (void)_didTransitionToPresented
{
  presentation = [(_UIClickPresentationAssistant *)self presentation];
  appearanceTransition = [presentation appearanceTransition];

  transitionCompletion = [(_UIClickPresentationAssistant *)self transitionCompletion];
  (transitionCompletion)[2](transitionCompletion, appearanceTransition, 1);

  [(_UIClickPresentationAssistant *)self setTransitionCompletion:0];
}

- (void)_didTransitionToDismissingFromState:(unint64_t)state
{
  if (state == 3)
  {
    v3 = 0;
    goto LABEL_4;
  }

  if (state == 2)
  {
    v3 = 1;
LABEL_4:
    [(_UIClickPresentationAssistant *)self _animateDismissalIsInterruption:v3];
    return;
  }

  os_variant_has_internal_diagnostics();
}

- (void)_didTransitionToPossibleEndingTransition:(BOOL)transition
{
  transitionCopy = transition;
  presentation = [(_UIClickPresentationAssistant *)self presentation];
  v6 = presentation;
  if (transitionCopy)
  {
    [presentation appearanceTransition];
  }

  else
  {
    [presentation disappearanceTransition];
  }
  v8 = ;

  transitionCompletion = [(_UIClickPresentationAssistant *)self transitionCompletion];
  (transitionCompletion)[2](transitionCompletion, v8, !transitionCopy);

  [(_UIClickPresentationAssistant *)self setTransitionCompletion:0];
  [(_UIClickPresentationAssistant *)self _postInteractionCleanup];
}

- (void)_animatePresentation
{
  presentation = [(_UIClickPresentationAssistant *)self presentation];
  appearanceTransition = [presentation appearanceTransition];

  if (objc_opt_respondsToSelector())
  {
    sourcePreview = [(_UIClickPresentationAssistant *)self sourcePreview];
    [appearanceTransition setSourcePreview:sourcePreview];
  }

  containerView = [(UIViewControllerContextTransitioning *)self->_currentContext containerView];
  v7 = [(UIViewControllerContextTransitioning *)self->_currentContext viewForKey:@"UITransitionContextFromView"];
  v8 = [(UIViewControllerContextTransitioning *)self->_currentContext viewForKey:@"UITransitionContextToView"];
  if (objc_opt_respondsToSelector())
  {
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __53___UIClickPresentationAssistant__animatePresentation__block_invoke;
    v36[3] = &unk_1E70F8868;
    v36[4] = self;
    v37 = v7;
    v38 = containerView;
    v39 = appearanceTransition;
    v40 = v8;
    [UIView performWithoutAnimation:v36];
  }

  presentation2 = [(_UIClickPresentationAssistant *)self presentation];
  customViewForTouchContinuation = [presentation2 customViewForTouchContinuation];

  window = [customViewForTouchContinuation window];

  if (window)
  {
    _gestureEnvironment = [UIApp _gestureEnvironment];
    [(UIGestureEnvironment *)_gestureEnvironment _performTouchContinuationWithOverrideHitTestedView:customViewForTouchContinuation];
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __53___UIClickPresentationAssistant__animatePresentation__block_invoke_2;
  aBlock[3] = &unk_1E70F8868;
  aBlock[4] = self;
  v32 = appearanceTransition;
  v33 = v7;
  v34 = v8;
  v35 = containerView;
  v13 = containerView;
  v14 = v8;
  v15 = v7;
  v16 = appearanceTransition;
  v17 = _Block_copy(aBlock);
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __53___UIClickPresentationAssistant__animatePresentation__block_invoke_3;
  v30[3] = &unk_1E70F3590;
  v30[4] = self;
  v18 = _Block_copy(v30);
  [(_UIClickPresentationAssistant *)self _createPropertyAnimatorIfNecessaryForTransition:v16 isAppearing:1];
  presentationAnimator = [(_UIClickPresentationAssistant *)self presentationAnimator];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __53___UIClickPresentationAssistant__animatePresentation__block_invoke_4;
  v28[3] = &unk_1E70F0F78;
  v29 = v17;
  v20 = v17;
  [presentationAnimator addAnimations:v28];
  v22 = MEMORY[0x1E69E9820];
  v23 = 3221225472;
  v24 = __53___UIClickPresentationAssistant__animatePresentation__block_invoke_5;
  v25 = &unk_1E7104B90;
  selfCopy = self;
  v27 = v18;
  v21 = v18;
  [presentationAnimator addCompletion:&v22];
  [presentationAnimator startAnimation];
}

- (void)_animateDismissalIsInterruption:(BOOL)interruption
{
  interruptionCopy = interruption;
  presentation = [(_UIClickPresentationAssistant *)self presentation];
  disappearanceTransition = [presentation disappearanceTransition];

  if (objc_opt_respondsToSelector())
  {
    sourcePreview = [(_UIClickPresentationAssistant *)self sourcePreview];
    [disappearanceTransition setSourcePreview:sourcePreview];
  }

  containerView = [(UIViewControllerContextTransitioning *)self->_currentContext containerView];
  [containerView setUserInteractionEnabled:0];
  v9 = [(UIViewControllerContextTransitioning *)self->_currentContext viewForKey:@"UITransitionContextFromView"];
  v10 = [(UIViewControllerContextTransitioning *)self->_currentContext viewForKey:@"UITransitionContextToView"];
  v11 = v10;
  if (interruptionCopy)
  {
    presentation2 = [(_UIClickPresentationAssistant *)self presentation];
    appearanceTransition = [presentation2 appearanceTransition];

    if (objc_opt_respondsToSelector())
    {
      [appearanceTransition transitionWillReverse];
    }
  }

  else
  {
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __65___UIClickPresentationAssistant__animateDismissalIsInterruption___block_invoke;
    v39[3] = &unk_1E70F8868;
    v39[4] = self;
    v40 = v10;
    v41 = containerView;
    v42 = disappearanceTransition;
    v43 = v9;
    [UIView performWithoutAnimation:v39];
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __65___UIClickPresentationAssistant__animateDismissalIsInterruption___block_invoke_2;
  aBlock[3] = &unk_1E70F8868;
  aBlock[4] = self;
  v14 = disappearanceTransition;
  v35 = v14;
  v15 = v9;
  v36 = v15;
  v16 = v11;
  v37 = v16;
  v17 = containerView;
  v38 = v17;
  v18 = _Block_copy(aBlock);
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __65___UIClickPresentationAssistant__animateDismissalIsInterruption___block_invoke_3;
  v32[3] = &unk_1E70F35E0;
  v32[4] = self;
  v33 = interruptionCopy;
  v19 = _Block_copy(v32);
  if ([(UIViewControllerContextTransitioning *)self->_currentContext isAnimated])
  {
    [(_UIClickPresentationAssistant *)self _createPropertyAnimatorIfNecessaryForTransition:v14 isAppearing:0];
    presentationAnimator = [(_UIClickPresentationAssistant *)self presentationAnimator];
    v21 = presentationAnimator;
    if (interruptionCopy)
    {
      [presentationAnimator pauseAnimation];
      [v21 _setCompletions:0];
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __65___UIClickPresentationAssistant__animateDismissalIsInterruption___block_invoke_4;
      v30[3] = &unk_1E70FFB68;
      v22 = &v31;
      v31 = v19;
      [v21 addCompletion:v30];
      [v21 setReversed:1];
      [v21 continueAnimation];
    }

    else
    {
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __65___UIClickPresentationAssistant__animateDismissalIsInterruption___block_invoke_5;
      v28[3] = &unk_1E70F0F78;
      v22 = &v29;
      v29 = v18;
      [v21 addAnimations:v28];
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __65___UIClickPresentationAssistant__animateDismissalIsInterruption___block_invoke_6;
      v26[3] = &unk_1E70FFB68;
      v27 = v19;
      [v21 addCompletion:v26];
      [v21 startAnimation];
    }
  }

  else
  {
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __65___UIClickPresentationAssistant__animateDismissalIsInterruption___block_invoke_7;
    v23[3] = &unk_1E70F77D0;
    v24 = v18;
    v25 = v19;
    [UIView performWithoutAnimation:v23];

    v21 = v24;
  }
}

- (void)_postInteractionCleanup
{
  [(_UIClickPresentationAssistant *)self setSourcePreview:0];
  presentation = [(_UIClickPresentationAssistant *)self presentation];
  viewController = [presentation viewController];

  [viewController _setOverrideUseCustomPresentation:0];
  [viewController _setOverrideTransitioningDelegate:0];
  lifecycleCompletion = [(_UIClickPresentationAssistant *)self lifecycleCompletion];
  [(_UIClickPresentationAssistant *)self setLifecycleCompletion:0];
  if (lifecycleCompletion)
  {
    lifecycleCompletion[2](lifecycleCompletion, 1);
  }

  [(_UIClickPresentationAssistant *)self _applyStashedParentViewControllerIfNecessary];
}

- (void)_stashParentViewControllerIfNecessary
{
  presentation = [(_UIClickPresentationAssistant *)self presentation];
  viewController = [presentation viewController];

  parentViewController = [viewController parentViewController];

  if (parentViewController)
  {
    parentViewController2 = [viewController parentViewController];
    [(_UIClickPresentationAssistant *)self setStashedParentViewController:parentViewController2];

    view = [viewController view];
    superview = [view superview];
    [(_UIClickPresentationAssistant *)self setStashedSuperView:superview];

    [viewController willMoveToParentViewController:0];
    [viewController removeFromParentViewController];
  }
}

- (void)_applyStashedParentViewControllerIfNecessary
{
  stashedParentViewController = [(_UIClickPresentationAssistant *)self stashedParentViewController];

  if (stashedParentViewController)
  {
    presentation = [(_UIClickPresentationAssistant *)self presentation];
    viewController = [presentation viewController];

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __77___UIClickPresentationAssistant__applyStashedParentViewControllerIfNecessary__block_invoke;
    aBlock[3] = &unk_1E70F35B8;
    aBlock[4] = self;
    v6 = viewController;
    v12 = v6;
    v7 = _Block_copy(aBlock);
    transitionCoordinator = [v6 transitionCoordinator];
    if (transitionCoordinator)
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __77___UIClickPresentationAssistant__applyStashedParentViewControllerIfNecessary__block_invoke_3;
      v9[3] = &unk_1E70F3770;
      v10 = v7;
      [transitionCoordinator animateAlongsideTransition:0 completion:v9];
    }

    else
    {
      v7[2](v7);
    }
  }
}

- (id)_sourcePreviewPortal
{
  sourcePreview = [(_UIClickPresentationAssistant *)self sourcePreview];
  v4 = [_UIPortalView alloc];
  view = [sourcePreview view];
  [view bounds];
  v6 = [(_UIPortalView *)v4 initWithFrame:?];

  if (_AXSReduceMotionEnabled())
  {
    [(_UIPortalView *)v6 setHidesSourceView:0];
  }

  else
  {
    presentation = [(_UIClickPresentationAssistant *)self presentation];
    -[_UIPortalView setHidesSourceView:](v6, "setHidesSourceView:", [presentation _presentsSelf] ^ 1);
  }

  [(_UIPortalView *)v6 setAllowsBackdropGroups:1];
  [(_UIPortalView *)v6 setMatchesAlpha:1];
  view2 = [sourcePreview view];
  [(_UIPortalView *)v6 setSourceView:view2];

  target = [sourcePreview target];
  v10 = target;
  if (target)
  {
    [target transform];
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
    v13 = 0u;
  }

  v12[0] = v13;
  v12[1] = v14;
  v12[2] = v15;
  [(UIView *)v6 setTransform:v12];

  [(UIView *)v6 setUserInteractionEnabled:0];

  return v6;
}

- (id)presentationControllerForPresentedViewController:(id)controller presentingViewController:(id)viewController sourceViewController:(id)sourceViewController
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  sourceViewControllerCopy = sourceViewController;
  presentation = [(_UIClickPresentationAssistant *)self presentation];
  presentationController = [presentation presentationController];

  if (!presentationController)
  {
    presentationController = [[UIPresentationController alloc] initWithPresentedViewController:controllerCopy presentingViewController:viewControllerCopy];
  }

  [(UIPresentationController *)presentationController _setContainerIgnoresDirectTouchEvents:0];
  _sourcePreviewPortal = [(_UIClickPresentationAssistant *)self _sourcePreviewPortal];
  [(_UIClickPresentationAssistant *)self setPresentationSourcePortalView:_sourcePreviewPortal];

  objc_initWeak(&location, presentationController);
  objc_initWeak(&from, self);
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __128___UIClickPresentationAssistant_presentationControllerForPresentedViewController_presentingViewController_sourceViewController___block_invoke;
  v21[3] = &unk_1E7106378;
  objc_copyWeak(&v22, &from);
  [(UIPresentationController *)presentationController set_containerSuperviewForCurrentTransition:v21];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __128___UIClickPresentationAssistant_presentationControllerForPresentedViewController_presentingViewController_sourceViewController___block_invoke_2;
  v18[3] = &unk_1E711CB98;
  objc_copyWeak(&v19, &location);
  objc_copyWeak(&v20, &from);
  [(UIPresentationController *)presentationController set_customFromViewForCurrentTransition:v18];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __128___UIClickPresentationAssistant_presentationControllerForPresentedViewController_presentingViewController_sourceViewController___block_invoke_3;
  v15[3] = &unk_1E711CB98;
  objc_copyWeak(&v16, &location);
  objc_copyWeak(&v17, &from);
  [(UIPresentationController *)presentationController set_customToViewForCurrentTransition:v15];
  objc_destroyWeak(&v17);
  objc_destroyWeak(&v16);
  objc_destroyWeak(&v20);
  objc_destroyWeak(&v19);
  objc_destroyWeak(&v22);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);

  return presentationController;
}

- (double)transitionDuration:(id)duration
{
  presentationAnimator = [(_UIClickPresentationAssistant *)self presentationAnimator];

  if (!presentationAnimator)
  {
    return 0.4;
  }

  presentationAnimator2 = [(_UIClickPresentationAssistant *)self presentationAnimator];
  [presentationAnimator2 duration];
  v7 = v6;

  return v7;
}

- (void)animateTransition:(id)transition
{
  transitionCopy = transition;
  objc_storeStrong(&self->_currentContext, transition);
  objc_initWeak(&location, self);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __51___UIClickPresentationAssistant_animateTransition___block_invoke;
  v9[3] = &unk_1E711CBC0;
  objc_copyWeak(&v11, &location);
  v6 = transitionCopy;
  v10 = v6;
  [(_UIClickPresentationAssistant *)self setTransitionCompletion:v9];
  currentState = self->_currentState;
  if (currentState == 3)
  {
    v8 = 2;
    goto LABEL_5;
  }

  if (currentState == 1)
  {
    v8 = 0;
LABEL_5:
    handleEvent(stateMachineSpec_4, currentState, v8, self, &self->_currentState);
  }

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (void)_createPropertyAnimatorIfNecessaryForTransition:(id)transition isAppearing:(BOOL)appearing
{
  appearingCopy = appearing;
  transitionCopy = transition;
  if (!self->_presentationAnimator)
  {
    v14 = transitionCopy;
    if (objc_opt_respondsToSelector())
    {
      customAnimator = [v14 customAnimator];
      presentationAnimator = self->_presentationAnimator;
      self->_presentationAnimator = customAnimator;
    }

    v9 = self->_presentationAnimator;
    if (!v9)
    {
      if (appearingCopy)
      {
        v10 = 0.4;
      }

      else
      {
        v10 = 0.35;
      }

      if (appearingCopy)
      {
        v11 = 0.85;
      }

      else
      {
        v11 = 1.0;
      }

      v12 = [[UIViewPropertyAnimator alloc] initWithDuration:0 dampingRatio:v10 animations:v11];
      v13 = self->_presentationAnimator;
      self->_presentationAnimator = v12;

      v9 = self->_presentationAnimator;
    }

    [(UIViewPropertyAnimator *)v9 _setShouldLayoutSubviews:0];
    transitionCopy = v14;
  }
}

@end