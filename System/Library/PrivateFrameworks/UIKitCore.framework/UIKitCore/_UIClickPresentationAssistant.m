@interface _UIClickPresentationAssistant
- (_UIClickPresentationAssistant)initWithClickPresentation:(id)a3;
- (double)transitionDuration:(id)a3;
- (id)_sourcePreviewPortal;
- (id)presentationControllerForPresentedViewController:(id)a3 presentingViewController:(id)a4 sourceViewController:(id)a5;
- (void)_animateDismissalIsInterruption:(BOOL)a3;
- (void)_animatePresentation;
- (void)_applyStashedParentViewControllerIfNecessary;
- (void)_createPropertyAnimatorIfNecessaryForTransition:(id)a3 isAppearing:(BOOL)a4;
- (void)_didTransitionToDismissingFromState:(unint64_t)a3;
- (void)_didTransitionToPossibleEndingTransition:(BOOL)a3;
- (void)_didTransitionToPresented;
- (void)_postInteractionCleanup;
- (void)_stashParentViewControllerIfNecessary;
- (void)animateTransition:(id)a3;
- (void)dismissWithReason:(unint64_t)a3 alongsideActions:(id)a4 completion:(id)a5;
- (void)presentFromSourcePreview:(id)a3 lifecycleCompletion:(id)a4;
@end

@implementation _UIClickPresentationAssistant

- (_UIClickPresentationAssistant)initWithClickPresentation:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = _UIClickPresentationAssistant;
  v5 = [(_UIClickPresentationAssistant *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(_UIClickPresentationAssistant *)v5 setPresentation:v4];
    v6->_currentState = 1;
  }

  return v6;
}

- (void)presentFromSourcePreview:(id)a3 lifecycleCompletion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(_UIClickPresentationAssistant *)self presentation];
  v14 = [v8 viewController];

  v9 = [(_UIClickPresentationAssistant *)self presentation];
  v10 = [v9 presentationController];
  v11 = [v10 presentingViewController];

  v12 = [(_UIClickPresentationAssistant *)self presentation];
  LODWORD(v10) = [v12 _presentsSelf];

  if (v10)
  {
    v13 = [v14 parentViewController];

    v11 = v13;
  }

  [(_UIClickPresentationAssistant *)self _stashParentViewControllerIfNecessary];
  [v14 _setOverrideUseCustomPresentation:1];
  [v14 _setOverrideTransitioningDelegate:self];
  [(_UIClickPresentationAssistant *)self setSourcePreview:v7];

  [(_UIClickPresentationAssistant *)self setLifecycleCompletion:v6];
  [v11 presentViewController:v14 animated:1 completion:0];
}

- (void)dismissWithReason:(unint64_t)a3 alongsideActions:(id)a4 completion:(id)a5
{
  v6 = a5;
  if (self->_currentState == 2)
  {
    handleEvent(stateMachineSpec_4, 2, 2, self, &self->_currentState);
  }

  else
  {
    v7 = [(_UIClickPresentationAssistant *)self presentation];
    v8 = [v7 viewController];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __79___UIClickPresentationAssistant_dismissWithReason_alongsideActions_completion___block_invoke;
    v9[3] = &unk_1E70F0F78;
    v10 = v6;
    [v8 dismissViewControllerAnimated:1 completion:v9];
  }
}

- (void)_didTransitionToPresented
{
  v3 = [(_UIClickPresentationAssistant *)self presentation];
  v5 = [v3 appearanceTransition];

  v4 = [(_UIClickPresentationAssistant *)self transitionCompletion];
  (v4)[2](v4, v5, 1);

  [(_UIClickPresentationAssistant *)self setTransitionCompletion:0];
}

- (void)_didTransitionToDismissingFromState:(unint64_t)a3
{
  if (a3 == 3)
  {
    v3 = 0;
    goto LABEL_4;
  }

  if (a3 == 2)
  {
    v3 = 1;
LABEL_4:
    [(_UIClickPresentationAssistant *)self _animateDismissalIsInterruption:v3];
    return;
  }

  os_variant_has_internal_diagnostics();
}

- (void)_didTransitionToPossibleEndingTransition:(BOOL)a3
{
  v3 = a3;
  v5 = [(_UIClickPresentationAssistant *)self presentation];
  v6 = v5;
  if (v3)
  {
    [v5 appearanceTransition];
  }

  else
  {
    [v5 disappearanceTransition];
  }
  v8 = ;

  v7 = [(_UIClickPresentationAssistant *)self transitionCompletion];
  (v7)[2](v7, v8, !v3);

  [(_UIClickPresentationAssistant *)self setTransitionCompletion:0];
  [(_UIClickPresentationAssistant *)self _postInteractionCleanup];
}

- (void)_animatePresentation
{
  v3 = [(_UIClickPresentationAssistant *)self presentation];
  v4 = [v3 appearanceTransition];

  if (objc_opt_respondsToSelector())
  {
    v5 = [(_UIClickPresentationAssistant *)self sourcePreview];
    [v4 setSourcePreview:v5];
  }

  v6 = [(UIViewControllerContextTransitioning *)self->_currentContext containerView];
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
    v38 = v6;
    v39 = v4;
    v40 = v8;
    [UIView performWithoutAnimation:v36];
  }

  v9 = [(_UIClickPresentationAssistant *)self presentation];
  v10 = [v9 customViewForTouchContinuation];

  v11 = [v10 window];

  if (v11)
  {
    v12 = [UIApp _gestureEnvironment];
    [(UIGestureEnvironment *)v12 _performTouchContinuationWithOverrideHitTestedView:v10];
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __53___UIClickPresentationAssistant__animatePresentation__block_invoke_2;
  aBlock[3] = &unk_1E70F8868;
  aBlock[4] = self;
  v32 = v4;
  v33 = v7;
  v34 = v8;
  v35 = v6;
  v13 = v6;
  v14 = v8;
  v15 = v7;
  v16 = v4;
  v17 = _Block_copy(aBlock);
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __53___UIClickPresentationAssistant__animatePresentation__block_invoke_3;
  v30[3] = &unk_1E70F3590;
  v30[4] = self;
  v18 = _Block_copy(v30);
  [(_UIClickPresentationAssistant *)self _createPropertyAnimatorIfNecessaryForTransition:v16 isAppearing:1];
  v19 = [(_UIClickPresentationAssistant *)self presentationAnimator];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __53___UIClickPresentationAssistant__animatePresentation__block_invoke_4;
  v28[3] = &unk_1E70F0F78;
  v29 = v17;
  v20 = v17;
  [v19 addAnimations:v28];
  v22 = MEMORY[0x1E69E9820];
  v23 = 3221225472;
  v24 = __53___UIClickPresentationAssistant__animatePresentation__block_invoke_5;
  v25 = &unk_1E7104B90;
  v26 = self;
  v27 = v18;
  v21 = v18;
  [v19 addCompletion:&v22];
  [v19 startAnimation];
}

- (void)_animateDismissalIsInterruption:(BOOL)a3
{
  v3 = a3;
  v5 = [(_UIClickPresentationAssistant *)self presentation];
  v6 = [v5 disappearanceTransition];

  if (objc_opt_respondsToSelector())
  {
    v7 = [(_UIClickPresentationAssistant *)self sourcePreview];
    [v6 setSourcePreview:v7];
  }

  v8 = [(UIViewControllerContextTransitioning *)self->_currentContext containerView];
  [v8 setUserInteractionEnabled:0];
  v9 = [(UIViewControllerContextTransitioning *)self->_currentContext viewForKey:@"UITransitionContextFromView"];
  v10 = [(UIViewControllerContextTransitioning *)self->_currentContext viewForKey:@"UITransitionContextToView"];
  v11 = v10;
  if (v3)
  {
    v12 = [(_UIClickPresentationAssistant *)self presentation];
    v13 = [v12 appearanceTransition];

    if (objc_opt_respondsToSelector())
    {
      [v13 transitionWillReverse];
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
    v41 = v8;
    v42 = v6;
    v43 = v9;
    [UIView performWithoutAnimation:v39];
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __65___UIClickPresentationAssistant__animateDismissalIsInterruption___block_invoke_2;
  aBlock[3] = &unk_1E70F8868;
  aBlock[4] = self;
  v14 = v6;
  v35 = v14;
  v15 = v9;
  v36 = v15;
  v16 = v11;
  v37 = v16;
  v17 = v8;
  v38 = v17;
  v18 = _Block_copy(aBlock);
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __65___UIClickPresentationAssistant__animateDismissalIsInterruption___block_invoke_3;
  v32[3] = &unk_1E70F35E0;
  v32[4] = self;
  v33 = v3;
  v19 = _Block_copy(v32);
  if ([(UIViewControllerContextTransitioning *)self->_currentContext isAnimated])
  {
    [(_UIClickPresentationAssistant *)self _createPropertyAnimatorIfNecessaryForTransition:v14 isAppearing:0];
    v20 = [(_UIClickPresentationAssistant *)self presentationAnimator];
    v21 = v20;
    if (v3)
    {
      [v20 pauseAnimation];
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
  v3 = [(_UIClickPresentationAssistant *)self presentation];
  v5 = [v3 viewController];

  [v5 _setOverrideUseCustomPresentation:0];
  [v5 _setOverrideTransitioningDelegate:0];
  v4 = [(_UIClickPresentationAssistant *)self lifecycleCompletion];
  [(_UIClickPresentationAssistant *)self setLifecycleCompletion:0];
  if (v4)
  {
    v4[2](v4, 1);
  }

  [(_UIClickPresentationAssistant *)self _applyStashedParentViewControllerIfNecessary];
}

- (void)_stashParentViewControllerIfNecessary
{
  v3 = [(_UIClickPresentationAssistant *)self presentation];
  v8 = [v3 viewController];

  v4 = [v8 parentViewController];

  if (v4)
  {
    v5 = [v8 parentViewController];
    [(_UIClickPresentationAssistant *)self setStashedParentViewController:v5];

    v6 = [v8 view];
    v7 = [v6 superview];
    [(_UIClickPresentationAssistant *)self setStashedSuperView:v7];

    [v8 willMoveToParentViewController:0];
    [v8 removeFromParentViewController];
  }
}

- (void)_applyStashedParentViewControllerIfNecessary
{
  v3 = [(_UIClickPresentationAssistant *)self stashedParentViewController];

  if (v3)
  {
    v4 = [(_UIClickPresentationAssistant *)self presentation];
    v5 = [v4 viewController];

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __77___UIClickPresentationAssistant__applyStashedParentViewControllerIfNecessary__block_invoke;
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
      v9[2] = __77___UIClickPresentationAssistant__applyStashedParentViewControllerIfNecessary__block_invoke_3;
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
  v3 = [(_UIClickPresentationAssistant *)self sourcePreview];
  v4 = [_UIPortalView alloc];
  v5 = [v3 view];
  [v5 bounds];
  v6 = [(_UIPortalView *)v4 initWithFrame:?];

  if (_AXSReduceMotionEnabled())
  {
    [(_UIPortalView *)v6 setHidesSourceView:0];
  }

  else
  {
    v7 = [(_UIClickPresentationAssistant *)self presentation];
    -[_UIPortalView setHidesSourceView:](v6, "setHidesSourceView:", [v7 _presentsSelf] ^ 1);
  }

  [(_UIPortalView *)v6 setAllowsBackdropGroups:1];
  [(_UIPortalView *)v6 setMatchesAlpha:1];
  v8 = [v3 view];
  [(_UIPortalView *)v6 setSourceView:v8];

  v9 = [v3 target];
  v10 = v9;
  if (v9)
  {
    [v9 transform];
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

- (id)presentationControllerForPresentedViewController:(id)a3 presentingViewController:(id)a4 sourceViewController:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(_UIClickPresentationAssistant *)self presentation];
  v12 = [v11 presentationController];

  if (!v12)
  {
    v12 = [[UIPresentationController alloc] initWithPresentedViewController:v8 presentingViewController:v9];
  }

  [(UIPresentationController *)v12 _setContainerIgnoresDirectTouchEvents:0];
  v13 = [(_UIClickPresentationAssistant *)self _sourcePreviewPortal];
  [(_UIClickPresentationAssistant *)self setPresentationSourcePortalView:v13];

  objc_initWeak(&location, v12);
  objc_initWeak(&from, self);
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __128___UIClickPresentationAssistant_presentationControllerForPresentedViewController_presentingViewController_sourceViewController___block_invoke;
  v21[3] = &unk_1E7106378;
  objc_copyWeak(&v22, &from);
  [(UIPresentationController *)v12 set_containerSuperviewForCurrentTransition:v21];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __128___UIClickPresentationAssistant_presentationControllerForPresentedViewController_presentingViewController_sourceViewController___block_invoke_2;
  v18[3] = &unk_1E711CB98;
  objc_copyWeak(&v19, &location);
  objc_copyWeak(&v20, &from);
  [(UIPresentationController *)v12 set_customFromViewForCurrentTransition:v18];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __128___UIClickPresentationAssistant_presentationControllerForPresentedViewController_presentingViewController_sourceViewController___block_invoke_3;
  v15[3] = &unk_1E711CB98;
  objc_copyWeak(&v16, &location);
  objc_copyWeak(&v17, &from);
  [(UIPresentationController *)v12 set_customToViewForCurrentTransition:v15];
  objc_destroyWeak(&v17);
  objc_destroyWeak(&v16);
  objc_destroyWeak(&v20);
  objc_destroyWeak(&v19);
  objc_destroyWeak(&v22);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);

  return v12;
}

- (double)transitionDuration:(id)a3
{
  v4 = [(_UIClickPresentationAssistant *)self presentationAnimator];

  if (!v4)
  {
    return 0.4;
  }

  v5 = [(_UIClickPresentationAssistant *)self presentationAnimator];
  [v5 duration];
  v7 = v6;

  return v7;
}

- (void)animateTransition:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_currentContext, a3);
  objc_initWeak(&location, self);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __51___UIClickPresentationAssistant_animateTransition___block_invoke;
  v9[3] = &unk_1E711CBC0;
  objc_copyWeak(&v11, &location);
  v6 = v5;
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

- (void)_createPropertyAnimatorIfNecessaryForTransition:(id)a3 isAppearing:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (!self->_presentationAnimator)
  {
    v14 = v6;
    if (objc_opt_respondsToSelector())
    {
      v7 = [v14 customAnimator];
      presentationAnimator = self->_presentationAnimator;
      self->_presentationAnimator = v7;
    }

    v9 = self->_presentationAnimator;
    if (!v9)
    {
      if (v4)
      {
        v10 = 0.4;
      }

      else
      {
        v10 = 0.35;
      }

      if (v4)
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
    v6 = v14;
  }
}

@end