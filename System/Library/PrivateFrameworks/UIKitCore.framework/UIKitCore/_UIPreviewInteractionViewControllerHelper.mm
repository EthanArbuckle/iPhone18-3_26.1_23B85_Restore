@interface _UIPreviewInteractionViewControllerHelper
- (_UIPreviewInteractionViewControllerHelper)initWithViewControllerPresentation:(id)presentation;
- (id)customPresentationControllerForPresentedViewController:(id)controller presentingViewController:(id)viewController sourceViewController:(id)sourceViewController;
- (id)defaultPresentationControllerForPresentedViewController:(id)controller presentingViewController:(id)viewController sourceViewController:(id)sourceViewController;
- (id)presentationControllerForPresentedViewController:(id)controller presentingViewController:(id)viewController sourceViewController:(id)sourceViewController;
- (void)_finalizeAfterViewControllerPresentation;
- (void)_performDismissalCompletionIfNeeded;
- (void)_performPresentViewControllerFromViewController:(id)controller;
- (void)animateTransition:(id)transition;
- (void)dismissViewController;
- (void)presentViewControllerFromViewController:(id)controller highlighter:(id)highlighter presentationCompletion:(id)completion dismissalCompletion:(id)dismissalCompletion;
@end

@implementation _UIPreviewInteractionViewControllerHelper

- (_UIPreviewInteractionViewControllerHelper)initWithViewControllerPresentation:(id)presentation
{
  presentationCopy = presentation;
  if (!presentationCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIPreviewInteractionViewControllerHelper.m" lineNumber:60 description:{@"Invalid parameter not satisfying: %@", @"viewControllerPresentation"}];
  }

  v15.receiver = self;
  v15.super_class = _UIPreviewInteractionViewControllerHelper;
  v7 = [(_UIPreviewInteractionViewControllerHelper *)&v15 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_viewControllerPresentation, presentation);
    presentationController = [presentationCopy presentationController];
    if (presentationController)
    {
      v8->_shouldUseDefaultPresentationController = 0;
    }

    else
    {
      appearanceTransition = [presentationCopy appearanceTransition];
      if (appearanceTransition)
      {
        v8->_shouldUseDefaultPresentationController = 0;
      }

      else
      {
        disappearanceTransition = [presentationCopy disappearanceTransition];
        v8->_shouldUseDefaultPresentationController = disappearanceTransition == 0;
      }
    }

    v12 = v8;
  }

  return v8;
}

- (void)presentViewControllerFromViewController:(id)controller highlighter:(id)highlighter presentationCompletion:(id)completion dismissalCompletion:(id)dismissalCompletion
{
  controllerCopy = controller;
  highlighterCopy = highlighter;
  completionCopy = completion;
  dismissalCompletionCopy = dismissalCompletion;
  objc_storeStrong(&self->_highlighter, highlighter);
  v14 = [completionCopy copy];
  presentationCompletion = self->_presentationCompletion;
  self->_presentationCompletion = v14;

  v16 = [dismissalCompletionCopy copy];
  dismissalCompletion = self->_dismissalCompletion;
  self->_dismissalCompletion = v16;

  if ([(_UIPreviewInteractionViewControllerPresentation *)self->_viewControllerPresentation shouldPresentAutomatically])
  {
    [(_UIPreviewInteractionViewControllerHelper *)self _performPresentViewControllerFromViewController:controllerCopy];
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
    v19 = controllerCopy;
    [(_UIPreviewInteractionViewControllerPresentation *)self->_viewControllerPresentation setPrivatePresentationBlock:v18];

    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }
}

- (void)dismissViewController
{
  viewController = [(_UIPreviewInteractionViewControllerPresentation *)self->_viewControllerPresentation viewController];
  presentingViewController = [viewController presentingViewController];

  if (presentingViewController)
  {
    [viewController dismissViewControllerAnimated:1 completion:0];
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

- (id)presentationControllerForPresentedViewController:(id)controller presentingViewController:(id)viewController sourceViewController:(id)sourceViewController
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  sourceViewControllerCopy = sourceViewController;
  if (self->_shouldUseDefaultPresentationController)
  {
    [(_UIPreviewInteractionViewControllerHelper *)self defaultPresentationControllerForPresentedViewController:controllerCopy presentingViewController:viewControllerCopy sourceViewController:sourceViewControllerCopy];
  }

  else
  {
    [(_UIPreviewInteractionViewControllerHelper *)self customPresentationControllerForPresentedViewController:controllerCopy presentingViewController:viewControllerCopy sourceViewController:sourceViewControllerCopy];
  }
  v11 = ;
  [v11 setPreviewPresentationDelegate:self];
  [v11 setAppliesVisualEffectsToPresentingView:0];
  [v11 _setShouldContinueTouchesOnTargetViewController:1];
  customViewForTouchContinuation = [(_UIPreviewInteractionViewControllerPresentation *)self->_viewControllerPresentation customViewForTouchContinuation];
  [v11 _setCustomViewForTouchContinuation:customViewForTouchContinuation];

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

- (void)animateTransition:(id)transition
{
  transitionCopy = transition;
  objc_storeStrong(&self->_currentTransitionContext, transition);
  shouldActAsAppearanceAnimationController = self->_shouldActAsAppearanceAnimationController;
  containerView = [transitionCopy containerView];
  v8 = [transitionCopy viewForKey:@"UITransitionContextFromView"];
  v9 = [transitionCopy viewForKey:@"UITransitionContextToView"];
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
    v40 = containerView;
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
  v15 = containerView;
  v34 = v15;
  v16 = _Block_copy(aBlock);
  objc_initWeak(&location, self);
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __63___UIPreviewInteractionViewControllerHelper_animateTransition___block_invoke_3;
  v24[3] = &unk_1E711B178;
  objc_copyWeak(&v27, &location);
  v17 = transitionCopy;
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

- (void)_performPresentViewControllerFromViewController:(id)controller
{
  controllerCopy = controller;
  [(_UIPreviewInteractionHighlighter *)self->_highlighter _prepareForViewControllerPresentation:self->_viewControllerPresentation];
  view = [controllerCopy view];
  window = [view window];

  presentationController = [(_UIPreviewInteractionViewControllerPresentation *)self->_viewControllerPresentation presentationController];
  _allowsAutorotation = [presentationController _allowsAutorotation];

  if ((_allowsAutorotation & 1) == 0)
  {
    [window beginDisablingInterfaceAutorotation];
  }

  objc_storeStrong(&self->_presentingWindow, window);
  viewController = [(_UIPreviewInteractionViewControllerPresentation *)self->_viewControllerPresentation viewController];
  parentViewController = [viewController parentViewController];
  if (parentViewController)
  {
    objc_storeWeak(&self->_previousParentViewController, parentViewController);
    view2 = [viewController view];
    superview = [view2 superview];
    objc_storeWeak(&self->_previousSuperview, superview);

    [viewController willMoveToParentViewController:0];
    [viewController removeFromParentViewController];
  }

  [viewController _setOverrideUseCustomPresentation:1];
  [viewController _setOverrideTransitioningDelegate:self];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __93___UIPreviewInteractionViewControllerHelper__performPresentViewControllerFromViewController___block_invoke;
  v13[3] = &unk_1E70F5AC0;
  v13[4] = self;
  [controllerCopy _presentViewController:viewController animated:1 completion:v13];
}

- (id)defaultPresentationControllerForPresentedViewController:(id)controller presentingViewController:(id)viewController sourceViewController:(id)sourceViewController
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  sourceViewControllerCopy = sourceViewController;
  v11 = [[_UIPreviewPresentationController2 alloc] initWithPresentedViewController:controllerCopy presentingViewController:viewControllerCopy previewingContext:0];
  [(_UIPreviewPresentationController2 *)v11 setShouldScaleContentViewToAspectFitPlatter:0];
  [(_UIPreviewPresentationController2 *)v11 setShouldEnableUserInteractionOnPlatter:1];
  interactiveHighlightEffect = [(_UIPreviewInteractionHighlighter *)self->_highlighter interactiveHighlightEffect];
  objc_initWeak(&location, v11);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __147___UIPreviewInteractionViewControllerHelper_defaultPresentationControllerForPresentedViewController_presentingViewController_sourceViewController___block_invoke;
  v19[3] = &unk_1E7101A60;
  objc_copyWeak(&v21, &location);
  v13 = interactiveHighlightEffect;
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

- (id)customPresentationControllerForPresentedViewController:(id)controller presentingViewController:(id)viewController sourceViewController:(id)sourceViewController
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  sourceViewControllerCopy = sourceViewController;
  presentationController = [(_UIPreviewInteractionViewControllerPresentation *)self->_viewControllerPresentation presentationController];
  if (!presentationController)
  {
    presentationController = [[UIPreviewPresentationController alloc] initWithPresentedViewController:controllerCopy presentingViewController:viewControllerCopy];
  }

  interactiveHighlightEffect = [(_UIPreviewInteractionHighlighter *)self->_highlighter interactiveHighlightEffect];
  objc_initWeak(location, presentationController);
  presentedView = [(UIPresentationController *)presentationController presentedView];
  view = [interactiveHighlightEffect view];
  v15 = presentedView == view;

  shouldFlipFromAndToViewsForDisappearanceTransition = [(_UIPreviewInteractionViewControllerPresentation *)self->_viewControllerPresentation shouldFlipFromAndToViewsForDisappearanceTransition];
  v25 = controllerCopy;
  v17 = sourceViewControllerCopy;
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __146___UIPreviewInteractionViewControllerHelper_customPresentationControllerForPresentedViewController_presentingViewController_sourceViewController___block_invoke;
  v32[3] = &unk_1E711B1A0;
  v36 = v15;
  v18 = interactiveHighlightEffect;
  v33 = v18;
  objc_copyWeak(&v35, location);
  v37 = shouldFlipFromAndToViewsForDisappearanceTransition;
  v19 = presentedView;
  v34 = v19;
  [(UIPresentationController *)presentationController set_customFromViewForCurrentTransition:v32];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __146___UIPreviewInteractionViewControllerHelper_customPresentationControllerForPresentedViewController_presentingViewController_sourceViewController___block_invoke_2;
  v26[3] = &unk_1E711B1A0;
  v30 = v15;
  objc_copyWeak(&v29, location);
  v31 = shouldFlipFromAndToViewsForDisappearanceTransition;
  v20 = v19;
  v27 = v20;
  v21 = v18;
  v28 = v21;
  [(UIPresentationController *)presentationController set_customToViewForCurrentTransition:v26];
  v22 = v28;
  v23 = presentationController;

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

  viewController = [(_UIPreviewInteractionViewControllerPresentation *)self->_viewControllerPresentation viewController];
  [viewController _setOverrideUseCustomPresentation:0];
  [viewController _setOverrideTransitioningDelegate:0];
  WeakRetained = objc_loadWeakRetained(&self->_previousParentViewController);

  if (WeakRetained)
  {
    v6 = objc_loadWeakRetained(&self->_previousParentViewController);
    [viewController willMoveToParentViewController:v6];

    v7 = objc_loadWeakRetained(&self->_previousSuperview);
    view = [viewController view];
    [v7 addSubview:view];

    v9 = objc_loadWeakRetained(&self->_previousParentViewController);
    [v9 addChildViewController:viewController];
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