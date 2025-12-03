@interface _UIPreviewInteractionPresentationAssistant
- (_UIPreviewInteractionPresentationAssistant)initWithViewControllerPresentation:(id)presentation;
- (double)transitionDuration:(id)duration;
- (id)_sourcePreviewPortal;
- (id)presentationControllerForPresentedViewController:(id)controller presentingViewController:(id)viewController sourceViewController:(id)sourceViewController;
- (void)_applyStashedParentViewControllerIfNecessary;
- (void)_createpresentationAnimatorIfNecessary:(id)necessary;
- (void)_postInteractionCleanup;
- (void)_stashParentViewControllerIfNecessary;
- (void)animateTransition:(id)transition;
- (void)dismissViewController;
- (void)presentFromViewController:(id)controller sourcePreview:(id)preview dismissalCompletion:(id)completion;
@end

@implementation _UIPreviewInteractionPresentationAssistant

- (_UIPreviewInteractionPresentationAssistant)initWithViewControllerPresentation:(id)presentation
{
  presentationCopy = presentation;
  v8.receiver = self;
  v8.super_class = _UIPreviewInteractionPresentationAssistant;
  v5 = [(_UIPreviewInteractionPresentationAssistant *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(_UIPreviewInteractionPresentationAssistant *)v5 setPresentation:presentationCopy];
  }

  return v6;
}

- (void)presentFromViewController:(id)controller sourcePreview:(id)preview dismissalCompletion:(id)completion
{
  completionCopy = completion;
  previewCopy = preview;
  controllerCopy = controller;
  presentation = [(_UIPreviewInteractionPresentationAssistant *)self presentation];
  viewController = [presentation viewController];

  [(_UIPreviewInteractionPresentationAssistant *)self _stashParentViewControllerIfNecessary];
  [viewController _setOverrideUseCustomPresentation:1];
  [viewController _setOverrideTransitioningDelegate:self];
  [(_UIPreviewInteractionPresentationAssistant *)self setSourcePreview:previewCopy];

  [(_UIPreviewInteractionPresentationAssistant *)self setDismissalCompletion:completionCopy];
  [controllerCopy presentViewController:viewController animated:1 completion:0];
}

- (void)dismissViewController
{
  containerView = [(UIViewControllerContextTransitioning *)self->_currentContext containerView];
  [containerView setUserInteractionEnabled:0];

  presentationAnimator = [(_UIPreviewInteractionPresentationAssistant *)self presentationAnimator];
  if (([presentationAnimator isReversed] & 1) == 0 && objc_msgSend(presentationAnimator, "_animationState") != 5)
  {
    if (-[_UIPreviewInteractionPresentationAssistant isAppearing](self, "isAppearing") && [presentationAnimator isRunning])
    {
      [presentationAnimator pauseAnimation];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __67___UIPreviewInteractionPresentationAssistant_dismissViewController__block_invoke;
      v12[3] = &unk_1E70F3590;
      v12[4] = self;
      [UIView performWithoutAnimation:v12];
      presentation = [(_UIPreviewInteractionPresentationAssistant *)self presentation];
      appearanceTransition = [presentation appearanceTransition];
      v7 = objc_opt_respondsToSelector();

      if (v7)
      {
        presentation2 = [(_UIPreviewInteractionPresentationAssistant *)self presentation];
        appearanceTransition2 = [presentation2 appearanceTransition];
        [appearanceTransition2 transitionWillReverse];
      }

      [presentationAnimator setReversed:1];
      timingParameters = [presentationAnimator timingParameters];
      [presentationAnimator continueAnimationWithTimingParameters:timingParameters durationFactor:1.0];
    }

    else
    {
      timingParameters = [(_UIPreviewInteractionPresentationAssistant *)self presentation];
      viewController = [timingParameters viewController];
      [viewController dismissViewControllerAnimated:1 completion:0];
    }
  }
}

- (void)_stashParentViewControllerIfNecessary
{
  presentation = [(_UIPreviewInteractionPresentationAssistant *)self presentation];
  viewController = [presentation viewController];

  parentViewController = [viewController parentViewController];

  if (parentViewController)
  {
    parentViewController2 = [viewController parentViewController];
    [(_UIPreviewInteractionPresentationAssistant *)self setStashedParentViewController:parentViewController2];

    view = [viewController view];
    superview = [view superview];
    [(_UIPreviewInteractionPresentationAssistant *)self setStashedSuperView:superview];

    [viewController willMoveToParentViewController:0];
    [viewController removeFromParentViewController];
  }
}

- (void)_applyStashedParentViewControllerIfNecessary
{
  stashedParentViewController = [(_UIPreviewInteractionPresentationAssistant *)self stashedParentViewController];

  if (stashedParentViewController)
  {
    presentation = [(_UIPreviewInteractionPresentationAssistant *)self presentation];
    viewController = [presentation viewController];

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __90___UIPreviewInteractionPresentationAssistant__applyStashedParentViewControllerIfNecessary__block_invoke;
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
      v9[2] = __90___UIPreviewInteractionPresentationAssistant__applyStashedParentViewControllerIfNecessary__block_invoke_3;
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
  sourcePreview = [(_UIPreviewInteractionPresentationAssistant *)self sourcePreview];
  v3 = [_UIPortalView alloc];
  view = [sourcePreview view];
  [view bounds];
  v5 = [(_UIPortalView *)v3 initWithFrame:?];

  [(_UIPortalView *)v5 setHidesSourceView:_AXSReduceMotionEnabled() == 0];
  [(_UIPortalView *)v5 setMatchesAlpha:1];
  view2 = [sourcePreview view];
  [(_UIPortalView *)v5 setSourceView:view2];

  target = [sourcePreview target];
  v8 = target;
  if (target)
  {
    [target transform];
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
    v11 = 0u;
  }

  v10[0] = v11;
  v10[1] = v12;
  v10[2] = v13;
  [(UIView *)v5 setTransform:v10];

  [(UIView *)v5 setUserInteractionEnabled:0];

  return v5;
}

- (id)presentationControllerForPresentedViewController:(id)controller presentingViewController:(id)viewController sourceViewController:(id)sourceViewController
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  sourceViewControllerCopy = sourceViewController;
  presentation = [(_UIPreviewInteractionPresentationAssistant *)self presentation];
  presentationController = [presentation presentationController];

  if (!presentationController)
  {
    presentationController = [[UIPreviewPresentationController alloc] initWithPresentedViewController:controllerCopy presentingViewController:viewControllerCopy];
  }

  [(UIPresentationController *)presentationController _setShouldContinueTouchesOnTargetViewController:1];
  [(UIPresentationController *)presentationController _setContainerIgnoresDirectTouchEvents:0];
  [(UIPreviewPresentationController *)presentationController setAppliesVisualEffectsToPresentingView:0];
  presentation2 = [(_UIPreviewInteractionPresentationAssistant *)self presentation];
  customViewForTouchContinuation = [presentation2 customViewForTouchContinuation];
  [(UIPresentationController *)presentationController _setCustomViewForTouchContinuation:customViewForTouchContinuation];

  _sourcePreviewPortal = [(_UIPreviewInteractionPresentationAssistant *)self _sourcePreviewPortal];
  [(_UIPreviewInteractionPresentationAssistant *)self setPresentationSourcePortalView:_sourcePreviewPortal];

  objc_initWeak(&location, presentationController);
  objc_initWeak(&from, self);
  presentation3 = [(_UIPreviewInteractionPresentationAssistant *)self presentation];
  customContainerView = [presentation3 customContainerView];

  if (customContainerView)
  {
    presentation4 = [(_UIPreviewInteractionPresentationAssistant *)self presentation];
    customContainerView2 = [presentation4 customContainerView];
  }

  else
  {
    highlighter = [(_UIPreviewInteractionPresentationAssistant *)self highlighter];
    customContainerView3 = [highlighter customContainerView];

    if (!customContainerView3)
    {
      v22 = 0;
      goto LABEL_10;
    }

    presentation4 = [(_UIPreviewInteractionPresentationAssistant *)self highlighter];
    customContainerView2 = [presentation4 customContainerView];
  }

  v22 = customContainerView2;

  if (v22)
  {
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __141___UIPreviewInteractionPresentationAssistant_presentationControllerForPresentedViewController_presentingViewController_sourceViewController___block_invoke;
    v30[3] = &unk_1E70FE928;
    v22 = v22;
    v31 = v22;
    [(UIPresentationController *)presentationController set_containerSuperviewForCurrentTransition:v30];
  }

LABEL_10:
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __141___UIPreviewInteractionPresentationAssistant_presentationControllerForPresentedViewController_presentingViewController_sourceViewController___block_invoke_2;
  v27[3] = &unk_1E711CB98;
  objc_copyWeak(&v28, &from);
  objc_copyWeak(&v29, &location);
  [(UIPresentationController *)presentationController set_customFromViewForCurrentTransition:v27];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __141___UIPreviewInteractionPresentationAssistant_presentationControllerForPresentedViewController_presentingViewController_sourceViewController___block_invoke_3;
  v24[3] = &unk_1E711CB98;
  objc_copyWeak(&v25, &from);
  objc_copyWeak(&v26, &location);
  [(UIPresentationController *)presentationController set_customToViewForCurrentTransition:v24];
  objc_destroyWeak(&v26);
  objc_destroyWeak(&v25);
  objc_destroyWeak(&v29);
  objc_destroyWeak(&v28);

  objc_destroyWeak(&from);
  objc_destroyWeak(&location);

  return presentationController;
}

- (double)transitionDuration:(id)duration
{
  isAppearing = [(_UIPreviewInteractionPresentationAssistant *)self isAppearing];
  result = 0.35;
  if (isAppearing)
  {
    return 0.4;
  }

  return result;
}

- (void)animateTransition:(id)transition
{
  transitionCopy = transition;
  [(_UIPreviewInteractionPresentationAssistant *)self _createpresentationAnimatorIfNecessary:transitionCopy];
  presentationAnimator = [(_UIPreviewInteractionPresentationAssistant *)self presentationAnimator];
  objc_storeStrong(&self->_currentContext, transition);
  isAppearing = [(_UIPreviewInteractionPresentationAssistant *)self isAppearing];
  containerView = [transitionCopy containerView];
  [containerView setUserInteractionEnabled:isAppearing];
  v9 = [transitionCopy viewForKey:@"UITransitionContextFromView"];
  v10 = [transitionCopy viewForKey:@"UITransitionContextToView"];
  presentation = [(_UIPreviewInteractionPresentationAssistant *)self presentation];
  v12 = presentation;
  if (isAppearing)
  {
    [presentation appearanceTransition];
  }

  else
  {
    [presentation disappearanceTransition];
  }
  v13 = ;

  if (objc_opt_respondsToSelector())
  {
    sourcePreview = [(_UIPreviewInteractionPresentationAssistant *)self sourcePreview];
    [v13 setSourcePreview:sourcePreview];
  }

  if (objc_opt_respondsToSelector())
  {
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __64___UIPreviewInteractionPresentationAssistant_animateTransition___block_invoke;
    v38[3] = &unk_1E711B150;
    v38[4] = self;
    v43 = isAppearing;
    v39 = containerView;
    v40 = v9;
    v41 = v10;
    v42 = v13;
    [UIView performWithoutAnimation:v38];
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __64___UIPreviewInteractionPresentationAssistant_animateTransition___block_invoke_2;
  aBlock[3] = &unk_1E711B150;
  v15 = v13;
  v32 = v15;
  v16 = v9;
  v33 = v16;
  v17 = v10;
  v34 = v17;
  v18 = containerView;
  v35 = v18;
  selfCopy = self;
  v37 = isAppearing;
  v19 = _Block_copy(aBlock);
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __64___UIPreviewInteractionPresentationAssistant_animateTransition___block_invoke_3;
  v28[3] = &unk_1E71049E0;
  v28[4] = self;
  v20 = v15;
  v29 = v20;
  v30 = isAppearing;
  v21 = _Block_copy(v28);
  if (isAppearing)
  {
    objc_initWeak(&location, self);
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __64___UIPreviewInteractionPresentationAssistant_animateTransition___block_invoke_16;
    v25[3] = &unk_1E70F3668;
    objc_copyWeak(&v26, &location);
    presentation2 = [(_UIPreviewInteractionPresentationAssistant *)self presentation];
    [presentation2 setPrivatePresentationCompletionBlock:v25];

    objc_destroyWeak(&v26);
    objc_destroyWeak(&location);
  }

  if (objc_opt_respondsToSelector())
  {
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __64___UIPreviewInteractionPresentationAssistant_animateTransition___block_invoke_2_20;
    v23[3] = &unk_1E70F3608;
    v24 = v21;
    [v20 performWithCustomAnimator:v19 completion:v23];
  }

  else
  {
    [presentationAnimator addAnimations:v19];
    [presentationAnimator addCompletion:v21];
    [presentationAnimator startAnimation];
  }
}

- (void)_postInteractionCleanup
{
  highlighter = [(_UIPreviewInteractionPresentationAssistant *)self highlighter];
  if (highlighter)
  {
    customBackgroundEffectView = [highlighter customBackgroundEffectView];
    [customBackgroundEffectView removeFromSuperview];

    [(_UIPreviewInteractionPresentationAssistant *)self setHighlighter:0];
  }

  presentationSourcePortalView = [(_UIPreviewInteractionPresentationAssistant *)self presentationSourcePortalView];
  [presentationSourcePortalView removeFromSuperview];

  [(_UIPreviewInteractionPresentationAssistant *)self setPresentationSourcePortalView:0];
  [(_UIPreviewInteractionPresentationAssistant *)self setSourcePreview:0];
  presentation = [(_UIPreviewInteractionPresentationAssistant *)self presentation];
  viewController = [presentation viewController];

  [viewController _setOverrideUseCustomPresentation:0];
  [viewController _setOverrideTransitioningDelegate:0];
  dismissalCompletion = [(_UIPreviewInteractionPresentationAssistant *)self dismissalCompletion];
  v8 = [dismissalCompletion copy];

  [(_UIPreviewInteractionPresentationAssistant *)self setDismissalCompletion:0];
  if (v8)
  {
    v8[2](v8);
  }

  [(_UIPreviewInteractionPresentationAssistant *)self _applyStashedParentViewControllerIfNecessary];
}

- (void)_createpresentationAnimatorIfNecessary:(id)necessary
{
  if (!self->_presentationAnimator)
  {
    [(_UIPreviewInteractionPresentationAssistant *)self transitionDuration:necessary];
    v6 = v5;
    if ([(_UIPreviewInteractionPresentationAssistant *)self isAppearing])
    {
      v7 = 0.85;
    }

    else
    {
      v7 = 1.0;
    }

    v8 = [[UIViewPropertyAnimator alloc] initWithDuration:0 dampingRatio:v6 animations:v7];
    presentationAnimator = self->_presentationAnimator;
    self->_presentationAnimator = v8;

    v10 = self->_presentationAnimator;

    [(UIViewPropertyAnimator *)v10 _setShouldLayoutSubviews:0];
  }
}

@end