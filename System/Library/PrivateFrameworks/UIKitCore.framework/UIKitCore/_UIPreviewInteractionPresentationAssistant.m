@interface _UIPreviewInteractionPresentationAssistant
- (_UIPreviewInteractionPresentationAssistant)initWithViewControllerPresentation:(id)a3;
- (double)transitionDuration:(id)a3;
- (id)_sourcePreviewPortal;
- (id)presentationControllerForPresentedViewController:(id)a3 presentingViewController:(id)a4 sourceViewController:(id)a5;
- (void)_applyStashedParentViewControllerIfNecessary;
- (void)_createpresentationAnimatorIfNecessary:(id)a3;
- (void)_postInteractionCleanup;
- (void)_stashParentViewControllerIfNecessary;
- (void)animateTransition:(id)a3;
- (void)dismissViewController;
- (void)presentFromViewController:(id)a3 sourcePreview:(id)a4 dismissalCompletion:(id)a5;
@end

@implementation _UIPreviewInteractionPresentationAssistant

- (_UIPreviewInteractionPresentationAssistant)initWithViewControllerPresentation:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = _UIPreviewInteractionPresentationAssistant;
  v5 = [(_UIPreviewInteractionPresentationAssistant *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(_UIPreviewInteractionPresentationAssistant *)v5 setPresentation:v4];
  }

  return v6;
}

- (void)presentFromViewController:(id)a3 sourcePreview:(id)a4 dismissalCompletion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(_UIPreviewInteractionPresentationAssistant *)self presentation];
  v12 = [v11 viewController];

  [(_UIPreviewInteractionPresentationAssistant *)self _stashParentViewControllerIfNecessary];
  [v12 _setOverrideUseCustomPresentation:1];
  [v12 _setOverrideTransitioningDelegate:self];
  [(_UIPreviewInteractionPresentationAssistant *)self setSourcePreview:v9];

  [(_UIPreviewInteractionPresentationAssistant *)self setDismissalCompletion:v8];
  [v10 presentViewController:v12 animated:1 completion:0];
}

- (void)dismissViewController
{
  v3 = [(UIViewControllerContextTransitioning *)self->_currentContext containerView];
  [v3 setUserInteractionEnabled:0];

  v4 = [(_UIPreviewInteractionPresentationAssistant *)self presentationAnimator];
  if (([v4 isReversed] & 1) == 0 && objc_msgSend(v4, "_animationState") != 5)
  {
    if (-[_UIPreviewInteractionPresentationAssistant isAppearing](self, "isAppearing") && [v4 isRunning])
    {
      [v4 pauseAnimation];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __67___UIPreviewInteractionPresentationAssistant_dismissViewController__block_invoke;
      v12[3] = &unk_1E70F3590;
      v12[4] = self;
      [UIView performWithoutAnimation:v12];
      v5 = [(_UIPreviewInteractionPresentationAssistant *)self presentation];
      v6 = [v5 appearanceTransition];
      v7 = objc_opt_respondsToSelector();

      if (v7)
      {
        v8 = [(_UIPreviewInteractionPresentationAssistant *)self presentation];
        v9 = [v8 appearanceTransition];
        [v9 transitionWillReverse];
      }

      [v4 setReversed:1];
      v10 = [v4 timingParameters];
      [v4 continueAnimationWithTimingParameters:v10 durationFactor:1.0];
    }

    else
    {
      v10 = [(_UIPreviewInteractionPresentationAssistant *)self presentation];
      v11 = [v10 viewController];
      [v11 dismissViewControllerAnimated:1 completion:0];
    }
  }
}

- (void)_stashParentViewControllerIfNecessary
{
  v3 = [(_UIPreviewInteractionPresentationAssistant *)self presentation];
  v8 = [v3 viewController];

  v4 = [v8 parentViewController];

  if (v4)
  {
    v5 = [v8 parentViewController];
    [(_UIPreviewInteractionPresentationAssistant *)self setStashedParentViewController:v5];

    v6 = [v8 view];
    v7 = [v6 superview];
    [(_UIPreviewInteractionPresentationAssistant *)self setStashedSuperView:v7];

    [v8 willMoveToParentViewController:0];
    [v8 removeFromParentViewController];
  }
}

- (void)_applyStashedParentViewControllerIfNecessary
{
  v3 = [(_UIPreviewInteractionPresentationAssistant *)self stashedParentViewController];

  if (v3)
  {
    v4 = [(_UIPreviewInteractionPresentationAssistant *)self presentation];
    v5 = [v4 viewController];

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __90___UIPreviewInteractionPresentationAssistant__applyStashedParentViewControllerIfNecessary__block_invoke;
    aBlock[3] = &unk_1E70F35B8;
    aBlock[4] = self;
    v6 = v5;
    v12 = v6;
    v7 = _Block_copy(aBlock);
    v8 = [v6 transitionCoordinator];
    if (v8)
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __90___UIPreviewInteractionPresentationAssistant__applyStashedParentViewControllerIfNecessary__block_invoke_3;
      v9[3] = &unk_1E70F3770;
      v10 = v7;
      [v8 animateAlongsideTransition:0 completion:v9];
    }

    else
    {
      v7[2](v7);
    }
  }
}

- (id)_sourcePreviewPortal
{
  v2 = [(_UIPreviewInteractionPresentationAssistant *)self sourcePreview];
  v3 = [_UIPortalView alloc];
  v4 = [v2 view];
  [v4 bounds];
  v5 = [(_UIPortalView *)v3 initWithFrame:?];

  [(_UIPortalView *)v5 setHidesSourceView:_AXSReduceMotionEnabled() == 0];
  [(_UIPortalView *)v5 setMatchesAlpha:1];
  v6 = [v2 view];
  [(_UIPortalView *)v5 setSourceView:v6];

  v7 = [v2 target];
  v8 = v7;
  if (v7)
  {
    [v7 transform];
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

- (id)presentationControllerForPresentedViewController:(id)a3 presentingViewController:(id)a4 sourceViewController:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(_UIPreviewInteractionPresentationAssistant *)self presentation];
  v12 = [v11 presentationController];

  if (!v12)
  {
    v12 = [[UIPreviewPresentationController alloc] initWithPresentedViewController:v8 presentingViewController:v9];
  }

  [(UIPresentationController *)v12 _setShouldContinueTouchesOnTargetViewController:1];
  [(UIPresentationController *)v12 _setContainerIgnoresDirectTouchEvents:0];
  [(UIPreviewPresentationController *)v12 setAppliesVisualEffectsToPresentingView:0];
  v13 = [(_UIPreviewInteractionPresentationAssistant *)self presentation];
  v14 = [v13 customViewForTouchContinuation];
  [(UIPresentationController *)v12 _setCustomViewForTouchContinuation:v14];

  v15 = [(_UIPreviewInteractionPresentationAssistant *)self _sourcePreviewPortal];
  [(_UIPreviewInteractionPresentationAssistant *)self setPresentationSourcePortalView:v15];

  objc_initWeak(&location, v12);
  objc_initWeak(&from, self);
  v16 = [(_UIPreviewInteractionPresentationAssistant *)self presentation];
  v17 = [v16 customContainerView];

  if (v17)
  {
    v18 = [(_UIPreviewInteractionPresentationAssistant *)self presentation];
    v19 = [v18 customContainerView];
  }

  else
  {
    v20 = [(_UIPreviewInteractionPresentationAssistant *)self highlighter];
    v21 = [v20 customContainerView];

    if (!v21)
    {
      v22 = 0;
      goto LABEL_10;
    }

    v18 = [(_UIPreviewInteractionPresentationAssistant *)self highlighter];
    v19 = [v18 customContainerView];
  }

  v22 = v19;

  if (v22)
  {
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __141___UIPreviewInteractionPresentationAssistant_presentationControllerForPresentedViewController_presentingViewController_sourceViewController___block_invoke;
    v30[3] = &unk_1E70FE928;
    v22 = v22;
    v31 = v22;
    [(UIPresentationController *)v12 set_containerSuperviewForCurrentTransition:v30];
  }

LABEL_10:
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __141___UIPreviewInteractionPresentationAssistant_presentationControllerForPresentedViewController_presentingViewController_sourceViewController___block_invoke_2;
  v27[3] = &unk_1E711CB98;
  objc_copyWeak(&v28, &from);
  objc_copyWeak(&v29, &location);
  [(UIPresentationController *)v12 set_customFromViewForCurrentTransition:v27];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __141___UIPreviewInteractionPresentationAssistant_presentationControllerForPresentedViewController_presentingViewController_sourceViewController___block_invoke_3;
  v24[3] = &unk_1E711CB98;
  objc_copyWeak(&v25, &from);
  objc_copyWeak(&v26, &location);
  [(UIPresentationController *)v12 set_customToViewForCurrentTransition:v24];
  objc_destroyWeak(&v26);
  objc_destroyWeak(&v25);
  objc_destroyWeak(&v29);
  objc_destroyWeak(&v28);

  objc_destroyWeak(&from);
  objc_destroyWeak(&location);

  return v12;
}

- (double)transitionDuration:(id)a3
{
  v3 = [(_UIPreviewInteractionPresentationAssistant *)self isAppearing];
  result = 0.35;
  if (v3)
  {
    return 0.4;
  }

  return result;
}

- (void)animateTransition:(id)a3
{
  v5 = a3;
  [(_UIPreviewInteractionPresentationAssistant *)self _createpresentationAnimatorIfNecessary:v5];
  v6 = [(_UIPreviewInteractionPresentationAssistant *)self presentationAnimator];
  objc_storeStrong(&self->_currentContext, a3);
  v7 = [(_UIPreviewInteractionPresentationAssistant *)self isAppearing];
  v8 = [v5 containerView];
  [v8 setUserInteractionEnabled:v7];
  v9 = [v5 viewForKey:@"UITransitionContextFromView"];
  v10 = [v5 viewForKey:@"UITransitionContextToView"];
  v11 = [(_UIPreviewInteractionPresentationAssistant *)self presentation];
  v12 = v11;
  if (v7)
  {
    [v11 appearanceTransition];
  }

  else
  {
    [v11 disappearanceTransition];
  }
  v13 = ;

  if (objc_opt_respondsToSelector())
  {
    v14 = [(_UIPreviewInteractionPresentationAssistant *)self sourcePreview];
    [v13 setSourcePreview:v14];
  }

  if (objc_opt_respondsToSelector())
  {
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __64___UIPreviewInteractionPresentationAssistant_animateTransition___block_invoke;
    v38[3] = &unk_1E711B150;
    v38[4] = self;
    v43 = v7;
    v39 = v8;
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
  v18 = v8;
  v35 = v18;
  v36 = self;
  v37 = v7;
  v19 = _Block_copy(aBlock);
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __64___UIPreviewInteractionPresentationAssistant_animateTransition___block_invoke_3;
  v28[3] = &unk_1E71049E0;
  v28[4] = self;
  v20 = v15;
  v29 = v20;
  v30 = v7;
  v21 = _Block_copy(v28);
  if (v7)
  {
    objc_initWeak(&location, self);
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __64___UIPreviewInteractionPresentationAssistant_animateTransition___block_invoke_16;
    v25[3] = &unk_1E70F3668;
    objc_copyWeak(&v26, &location);
    v22 = [(_UIPreviewInteractionPresentationAssistant *)self presentation];
    [v22 setPrivatePresentationCompletionBlock:v25];

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
    [v6 addAnimations:v19];
    [v6 addCompletion:v21];
    [v6 startAnimation];
  }
}

- (void)_postInteractionCleanup
{
  v9 = [(_UIPreviewInteractionPresentationAssistant *)self highlighter];
  if (v9)
  {
    v3 = [v9 customBackgroundEffectView];
    [v3 removeFromSuperview];

    [(_UIPreviewInteractionPresentationAssistant *)self setHighlighter:0];
  }

  v4 = [(_UIPreviewInteractionPresentationAssistant *)self presentationSourcePortalView];
  [v4 removeFromSuperview];

  [(_UIPreviewInteractionPresentationAssistant *)self setPresentationSourcePortalView:0];
  [(_UIPreviewInteractionPresentationAssistant *)self setSourcePreview:0];
  v5 = [(_UIPreviewInteractionPresentationAssistant *)self presentation];
  v6 = [v5 viewController];

  [v6 _setOverrideUseCustomPresentation:0];
  [v6 _setOverrideTransitioningDelegate:0];
  v7 = [(_UIPreviewInteractionPresentationAssistant *)self dismissalCompletion];
  v8 = [v7 copy];

  [(_UIPreviewInteractionPresentationAssistant *)self setDismissalCompletion:0];
  if (v8)
  {
    v8[2](v8);
  }

  [(_UIPreviewInteractionPresentationAssistant *)self _applyStashedParentViewControllerIfNecessary];
}

- (void)_createpresentationAnimatorIfNecessary:(id)a3
{
  if (!self->_presentationAnimator)
  {
    [(_UIPreviewInteractionPresentationAssistant *)self transitionDuration:a3];
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