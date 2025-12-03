@interface PXMessagesStackDismissalAnimationController
- (PXMessagesStackDismissalAnimationController)initWithStackView:(id)view dismissingViewController:(id)controller;
- (UIViewControllerInteractiveTransitioning)interactionController;
- (void)_animateCrossfadeFallback:(uint64_t)fallback;
- (void)runTransitionAnimation:(id)animation;
@end

@implementation PXMessagesStackDismissalAnimationController

- (void)runTransitionAnimation:(id)animation
{
  animationCopy = animation;
  v5 = [animationCopy viewControllerForKey:*MEMORY[0x1E69DE778]];
  v6 = [animationCopy viewControllerForKey:*MEMORY[0x1E69DE768]];
  containerView = [animationCopy containerView];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_7:
    PXAssertGetLog();
  }

  topViewController = [v6 topViewController];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    goto LABEL_7;
  }

  if (!topViewController)
  {
    goto LABEL_7;
  }

  stackView = [(PXMessagesStackDismissalAnimationController *)self stackView];
  v10 = topViewController;
  v11 = stackView;
  v12 = v11;
  if (self)
  {
    [v11 currentAssetReference];
    v13 = [v10 regionOfInterestForAssetReference:objc_claimAutoreleasedReturnValue()];
    view = [v10 view];
    [v13 rectInCoordinateSpace:view];
    [view bounds];
    [view safeAreaInsets];
    PXEdgeInsetsInsetRect();
  }

  [(PXMessagesStackDismissalAnimationController *)0 _animateCrossfadeFallback:animationCopy];
}

- (void)_animateCrossfadeFallback:(uint64_t)fallback
{
  v3 = a2;
  v4 = v3;
  if (fallback)
  {
    v5 = [v3 viewControllerForKey:*MEMORY[0x1E69DE778]];
    v6 = [v4 viewControllerForKey:*MEMORY[0x1E69DE768]];
    containerView = [v4 containerView];
    [v4 finalFrameForViewController:v5];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    view = [v5 view];
    view2 = [v6 view];
    [containerView insertSubview:view belowSubview:view2];

    view3 = [v5 view];
    [view3 setFrame:{v9, v11, v13, v15}];

    v19 = *(fallback + 24);
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __73__PXMessagesStackDismissalAnimationController__animateCrossfadeFallback___block_invoke;
    v28[3] = &unk_1E774C648;
    v20 = v6;
    v29 = v20;
    [v19 addAnimations:v28];
    v21 = *(fallback + 24);
    v23 = MEMORY[0x1E69E9820];
    v24 = 3221225472;
    v25 = __73__PXMessagesStackDismissalAnimationController__animateCrossfadeFallback___block_invoke_2;
    v26 = &unk_1E7748D18;
    v22 = v4;
    v27 = v22;
    [v21 addCompletion:&v23];
    if (([v22 isInteractive] & 1) == 0)
    {
      [*(fallback + 24) startAnimation];
    }
  }
}

void __70__PXMessagesStackDismissalAnimationController_runTransitionAnimation___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) view];
  [v1 setAlpha:0.0];
}

uint64_t __70__PXMessagesStackDismissalAnimationController_runTransitionAnimation___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setHiddenAssetReferences:*(a1 + 40)];
  [*(a1 + 48) setHiddenAssetReferences:*(a1 + 56) animationType:2];
  [*(a1 + 48) setTransitionViewSource:0];
  v2 = *(a1 + 64);
  v3 = [v2 transitionWasCancelled] ^ 1;

  return [v2 completeTransition:v3];
}

void __73__PXMessagesStackDismissalAnimationController__animateCrossfadeFallback___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) view];
  [v1 setAlpha:0.0];
}

uint64_t __73__PXMessagesStackDismissalAnimationController__animateCrossfadeFallback___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 transitionWasCancelled] ^ 1;

  return [v1 completeTransition:v2];
}

- (UIViewControllerInteractiveTransitioning)interactionController
{
  dismissingViewController = [(PXMessagesStackDismissalAnimationController *)self dismissingViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    topViewController = [dismissingViewController topViewController];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = topViewController;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  edgeSwipeDismissalInteraction = [v5 edgeSwipeDismissalInteraction];
  [edgeSwipeDismissalInteraction setDelegate:self];

  return edgeSwipeDismissalInteraction;
}

- (PXMessagesStackDismissalAnimationController)initWithStackView:(id)view dismissingViewController:(id)controller
{
  viewCopy = view;
  controllerCopy = controller;
  v22.receiver = self;
  v22.super_class = PXMessagesStackDismissalAnimationController;
  v9 = [(PXMessagesStackDismissalAnimationController *)&v22 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_stackView, view);
    objc_storeStrong(&v10->_dismissingViewController, controller);
    v11 = +[PXMessagesUISettings sharedInstance];
    [v11 transitionDuration];
    v10->_transitionDuration = v12;
    [v11 transitionSpringDamping];
    v14 = v13;
    [v11 transitionSpringVelocity];
    v16 = [objc_alloc(MEMORY[0x1E69DCF88]) initWithDampingRatio:v14 initialVelocity:{v15, v15}];
    v17 = [objc_alloc(MEMORY[0x1E69DD278]) initWithDuration:v16 timingParameters:v10->_transitionDuration];
    propertyAnimator = v10->_propertyAnimator;
    v10->_propertyAnimator = v17;

    v19 = -[PXPhotosGridStackTransitionHelper initWithStackItemsCount:]([PXPhotosGridStackTransitionHelper alloc], [v11 transitionItemsCount]);
    transitionHelper = v10->_transitionHelper;
    v10->_transitionHelper = v19;
  }

  return v10;
}

@end