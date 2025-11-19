@interface _UIPreviewInteractionViewControllerHelper
- (_UIPreviewInteractionViewControllerHelper)initWithViewControllerPresentation:(id)a3;
- (id)customPresentationControllerForPresentedViewController:(id)a3 presentingViewController:(id)a4 sourceViewController:(id)a5;
- (id)defaultPresentationControllerForPresentedViewController:(id)a3 presentingViewController:(id)a4 sourceViewController:(id)a5;
- (id)presentationControllerForPresentedViewController:(id)a3 presentingViewController:(id)a4 sourceViewController:(id)a5;
- (void)_finalizeAfterViewControllerPresentation;
- (void)_performDismissalCompletionIfNeeded;
- (void)_performPresentViewControllerFromViewController:(id)a3;
- (void)animateTransition:(id)a3;
- (void)dismissViewController;
- (void)presentViewControllerFromViewController:(id)a3 highlighter:(id)a4 presentationCompletion:(id)a5 dismissalCompletion:(id)a6;
@end

@implementation _UIPreviewInteractionViewControllerHelper

- (_UIPreviewInteractionViewControllerHelper)initWithViewControllerPresentation:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"_UIPreviewInteractionViewControllerHelper.m" lineNumber:60 description:{@"Invalid parameter not satisfying: %@", @"viewControllerPresentation"}];
  }

  v15.receiver = self;
  v15.super_class = _UIPreviewInteractionViewControllerHelper;
  v7 = [(_UIPreviewInteractionViewControllerHelper *)&v15 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_viewControllerPresentation, a3);
    v9 = [v6 presentationController];
    if (v9)
    {
      v8->_shouldUseDefaultPresentationController = 0;
    }

    else
    {
      v10 = [v6 appearanceTransition];
      if (v10)
      {
        v8->_shouldUseDefaultPresentationController = 0;
      }

      else
      {
        v11 = [v6 disappearanceTransition];
        v8->_shouldUseDefaultPresentationController = v11 == 0;
      }
    }

    v12 = v8;
  }

  return v8;
}

- (void)presentViewControllerFromViewController:(id)a3 highlighter:(id)a4 presentationCompletion:(id)a5 dismissalCompletion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  objc_storeStrong(&self->_highlighter, a4);
  v14 = [v12 copy];
  presentationCompletion = self->_presentationCompletion;
  self->_presentationCompletion = v14;

  v16 = [v13 copy];
  dismissalCompletion = self->_dismissalCompletion;
  self->_dismissalCompletion = v16;

  if ([(_UIPreviewInteractionViewControllerPresentation *)self->_viewControllerPresentation shouldPresentAutomatically])
  {
    [(_UIPreviewInteractionViewControllerHelper *)self _performPresentViewControllerFromViewController:v10];
  }

  else
  {
    [(_UIPreviewInteractionHighlighter *)self->_highlighter _animateForDelayedViewControllerPresentation];
    objc_initWeak(&location, self);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __140___UIPreviewInteractionViewControllerHelper_presentViewControllerFromViewController_highlighter_presentationCompletion_dismissalCompletion___block_invoke;
    v18[3] = &unk_1E70F2F80;
    objc_copyWeak(&v20, &location);
    v19 = v10;
    [(_UIPreviewInteractionViewControllerPresentation *)self->_viewControllerPresentation setPrivatePresentationBlock:v18];

    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }
}

- (void)dismissViewController
{
  v5 = [(_UIPreviewInteractionViewControllerPresentation *)self->_viewControllerPresentation viewController];
  v3 = [v5 presentingViewController];

  if (v3)
  {
    [v5 dismissViewControllerAnimated:1 completion:0];
  }

  else
  {
    if ([(_UIPreviewInteractionViewControllerPresentation *)self->_viewControllerPresentation shouldPresentAutomatically])
    {
      v4 = 0;
    }

    else
    {
      v4 = self->_highlighter;
    }

    [(_UIPreviewInteractionViewControllerHelper *)self _finalizeAfterViewControllerPresentation];
    [(_UIPreviewInteractionViewControllerHelper *)self _performDismissalCompletionIfNeeded];
    if (v4)
    {
      [(_UIPreviewInteractionHighlighter *)v4 _delayedViewControllerPresentationDidCancel];
    }
  }
}

- (id)presentationControllerForPresentedViewController:(id)a3 presentingViewController:(id)a4 sourceViewController:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (self->_shouldUseDefaultPresentationController)
  {
    [(_UIPreviewInteractionViewControllerHelper *)self defaultPresentationControllerForPresentedViewController:v8 presentingViewController:v9 sourceViewController:v10];
  }

  else
  {
    [(_UIPreviewInteractionViewControllerHelper *)self customPresentationControllerForPresentedViewController:v8 presentingViewController:v9 sourceViewController:v10];
  }
  v11 = ;
  [v11 setPreviewPresentationDelegate:self];
  [v11 setAppliesVisualEffectsToPresentingView:0];
  [v11 _setShouldContinueTouchesOnTargetViewController:1];
  v12 = [(_UIPreviewInteractionViewControllerPresentation *)self->_viewControllerPresentation customViewForTouchContinuation];
  [v11 _setCustomViewForTouchContinuation:v12];

  [v11 _setContainerIgnoresDirectTouchEvents:0];
  v13 = self->_highlighter;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __140___UIPreviewInteractionViewControllerHelper_presentationControllerForPresentedViewController_presentingViewController_sourceViewController___block_invoke;
  v21[3] = &unk_1E70FE928;
  v14 = v13;
  v22 = v14;
  [v11 set_containerSuperviewForCurrentTransition:v21];
  objc_initWeak(&location, self);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __140___UIPreviewInteractionViewControllerHelper_presentationControllerForPresentedViewController_presentingViewController_sourceViewController___block_invoke_2;
  v17[3] = &unk_1E70F2F80;
  objc_copyWeak(&v19, &location);
  v15 = v14;
  v18 = v15;
  [v11 setDismissalTransitionDidEndBlock:v17];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);

  return v11;
}

- (void)animateTransition:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_currentTransitionContext, a3);
  shouldActAsAppearanceAnimationController = self->_shouldActAsAppearanceAnimationController;
  v7 = [v5 containerView];
  v8 = [v5 viewForKey:@"UITransitionContextFromView"];
  v9 = [v5 viewForKey:@"UITransitionContextToView"];
  viewControllerPresentation = self->_viewControllerPresentation;
  if (shouldActAsAppearanceAnimationController)
  {
    [(_UIPreviewInteractionViewControllerPresentation *)viewControllerPresentation appearanceTransition];
  }

  else
  {
    [(_UIPreviewInteractionViewControllerPresentation *)viewControllerPresentation disappearanceTransition];
  }
  v11 = ;
  if (!v11)
  {
    v11 = objc_alloc_init(_UIPreviewInteractionCrossBlurViewControllerTransition);
    [(_UIPreviewInteractionCrossBlurViewControllerTransition *)v11 setDismissTransition:!shouldActAsAppearanceAnimationController];
  }

  if (objc_opt_respondsToSelector())
  {
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __63___UIPreviewInteractionViewControllerHelper_animateTransition___block_invoke;
    v36[3] = &unk_1E70F6B40;
    v37 = v11;
    v38 = v8;
    v39 = v9;
    v40 = v7;
    [UIView performWithoutAnimation:v36];
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __63___UIPreviewInteractionViewControllerHelper_animateTransition___block_invoke_2;
  aBlock[3] = &unk_1E711B150;
  v35 = shouldActAsAppearanceAnimationController;
  aBlock[4] = self;
  v12 = v11;
  v31 = v12;
  v13 = v8;
  v32 = v13;
  v14 = v9;
  v33 = v14;
  v15 = v7;
  v34 = v15;
  v16 = _Block_copy(aBlock);
  objc_initWeak(&location, self);
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __63___UIPreviewInteractionViewControllerHelper_animateTransition___block_invoke_3;
  v24[3] = &unk_1E711B178;
  objc_copyWeak(&v27, &location);
  v17 = v5;
  v25 = v17;
  v18 = v12;
  v26 = v18;
  v28 = shouldActAsAppearanceAnimationController;
  v19 = _Block_copy(v24);
  [(_UIPreviewInteractionViewControllerPresentation *)self->_viewControllerPresentation setPrivatePresentationCompletionBlock:v19];
  if (objc_opt_respondsToSelector())
  {
    [(_UIPreviewInteractionCrossBlurViewControllerTransition *)v18 performWithCustomAnimator:v16 completion:v19];
  }

  else if ([(_UIPreviewInteractionViewControllerPresentation *)self->_viewControllerPresentation shouldUseCATransitions])
  {
    [(_UIPreviewInteractionViewControllerHelper *)self transitionDuration:v17];
    [UIView animateWithDuration:"animateWithDuration:delay:usingSpringWithDamping:initialSpringVelocity:options:animations:completion:" delay:0 usingSpringWithDamping:v16 initialSpringVelocity:v19 options:? animations:? completion:?];
  }

  else
  {
    if (shouldActAsAppearanceAnimationController)
    {
      v20 = 660.0;
    }

    else
    {
      v20 = 500.0;
    }

    if (shouldActAsAppearanceAnimationController)
    {
      v21 = 44.0;
    }

    else
    {
      v21 = 35.0;
    }

    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __63___UIPreviewInteractionViewControllerHelper_animateTransition___block_invoke_4;
    v22[3] = &unk_1E7103030;
    v23 = v19;
    [UIView _animateUsingSpringWithTension:0 friction:v16 interactive:v22 animations:v20 completion:v21];
  }

  objc_destroyWeak(&v27);
  objc_destroyWeak(&location);
}

- (void)_performPresentViewControllerFromViewController:(id)a3
{
  v4 = a3;
  [(_UIPreviewInteractionHighlighter *)self->_highlighter _prepareForViewControllerPresentation:self->_viewControllerPresentation];
  v5 = [v4 view];
  v6 = [v5 window];

  v7 = [(_UIPreviewInteractionViewControllerPresentation *)self->_viewControllerPresentation presentationController];
  v8 = [v7 _allowsAutorotation];

  if ((v8 & 1) == 0)
  {
    [v6 beginDisablingInterfaceAutorotation];
  }

  objc_storeStrong(&self->_presentingWindow, v6);
  v9 = [(_UIPreviewInteractionViewControllerPresentation *)self->_viewControllerPresentation viewController];
  v10 = [v9 parentViewController];
  if (v10)
  {
    objc_storeWeak(&self->_previousParentViewController, v10);
    v11 = [v9 view];
    v12 = [v11 superview];
    objc_storeWeak(&self->_previousSuperview, v12);

    [v9 willMoveToParentViewController:0];
    [v9 removeFromParentViewController];
  }

  [v9 _setOverrideUseCustomPresentation:1];
  [v9 _setOverrideTransitioningDelegate:self];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __93___UIPreviewInteractionViewControllerHelper__performPresentViewControllerFromViewController___block_invoke;
  v13[3] = &unk_1E70F5AC0;
  v13[4] = self;
  [v4 _presentViewController:v9 animated:1 completion:v13];
}

- (id)defaultPresentationControllerForPresentedViewController:(id)a3 presentingViewController:(id)a4 sourceViewController:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [[_UIPreviewPresentationController2 alloc] initWithPresentedViewController:v8 presentingViewController:v9 previewingContext:0];
  [(_UIPreviewPresentationController2 *)v11 setShouldScaleContentViewToAspectFitPlatter:0];
  [(_UIPreviewPresentationController2 *)v11 setShouldEnableUserInteractionOnPlatter:1];
  v12 = [(_UIPreviewInteractionHighlighter *)self->_highlighter interactiveHighlightEffect];
  objc_initWeak(&location, v11);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __147___UIPreviewInteractionViewControllerHelper_defaultPresentationControllerForPresentedViewController_presentingViewController_sourceViewController___block_invoke;
  v19[3] = &unk_1E7101A60;
  objc_copyWeak(&v21, &location);
  v13 = v12;
  v20 = v13;
  [(UIPresentationController *)v11 set_customFromViewForCurrentTransition:v19];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __147___UIPreviewInteractionViewControllerHelper_defaultPresentationControllerForPresentedViewController_presentingViewController_sourceViewController___block_invoke_2;
  v16[3] = &unk_1E7101A60;
  objc_copyWeak(&v18, &location);
  v14 = v13;
  v17 = v14;
  [(UIPresentationController *)v11 set_customToViewForCurrentTransition:v16];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);

  return v11;
}

- (id)customPresentationControllerForPresentedViewController:(id)a3 presentingViewController:(id)a4 sourceViewController:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(_UIPreviewInteractionViewControllerPresentation *)self->_viewControllerPresentation presentationController];
  if (!v11)
  {
    v11 = [[UIPreviewPresentationController alloc] initWithPresentedViewController:v8 presentingViewController:v9];
  }

  v12 = [(_UIPreviewInteractionHighlighter *)self->_highlighter interactiveHighlightEffect];
  objc_initWeak(location, v11);
  v13 = [(UIPresentationController *)v11 presentedView];
  v14 = [v12 view];
  v15 = v13 == v14;

  v16 = [(_UIPreviewInteractionViewControllerPresentation *)self->_viewControllerPresentation shouldFlipFromAndToViewsForDisappearanceTransition];
  v25 = v8;
  v17 = v10;
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __146___UIPreviewInteractionViewControllerHelper_customPresentationControllerForPresentedViewController_presentingViewController_sourceViewController___block_invoke;
  v32[3] = &unk_1E711B1A0;
  v36 = v15;
  v18 = v12;
  v33 = v18;
  objc_copyWeak(&v35, location);
  v37 = v16;
  v19 = v13;
  v34 = v19;
  [(UIPresentationController *)v11 set_customFromViewForCurrentTransition:v32];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __146___UIPreviewInteractionViewControllerHelper_customPresentationControllerForPresentedViewController_presentingViewController_sourceViewController___block_invoke_2;
  v26[3] = &unk_1E711B1A0;
  v30 = v15;
  objc_copyWeak(&v29, location);
  v31 = v16;
  v20 = v19;
  v27 = v20;
  v21 = v18;
  v28 = v21;
  [(UIPresentationController *)v11 set_customToViewForCurrentTransition:v26];
  v22 = v28;
  v23 = v11;

  objc_destroyWeak(&v29);
  objc_destroyWeak(&v35);

  objc_destroyWeak(location);

  return v23;
}

- (void)_finalizeAfterViewControllerPresentation
{
  [(UIWindow *)self->_presentingWindow endDisablingInterfaceAutorotationAnimated:1];
  presentingWindow = self->_presentingWindow;
  self->_presentingWindow = 0;

  highlighter = self->_highlighter;
  self->_highlighter = 0;

  v10 = [(_UIPreviewInteractionViewControllerPresentation *)self->_viewControllerPresentation viewController];
  [v10 _setOverrideUseCustomPresentation:0];
  [v10 _setOverrideTransitioningDelegate:0];
  WeakRetained = objc_loadWeakRetained(&self->_previousParentViewController);

  if (WeakRetained)
  {
    v6 = objc_loadWeakRetained(&self->_previousParentViewController);
    [v10 willMoveToParentViewController:v6];

    v7 = objc_loadWeakRetained(&self->_previousSuperview);
    v8 = [v10 view];
    [v7 addSubview:v8];

    v9 = objc_loadWeakRetained(&self->_previousParentViewController);
    [v9 addChildViewController:v10];
  }
}

- (void)_performDismissalCompletionIfNeeded
{
  dismissalCompletion = self->_dismissalCompletion;
  if (dismissalCompletion)
  {
    dismissalCompletion[2](dismissalCompletion, a2);
    v4 = self->_dismissalCompletion;
    self->_dismissalCompletion = 0;
  }
}

@end