@interface PXMessagesStackDismissalAnimationController
- (PXMessagesStackDismissalAnimationController)initWithStackView:(id)a3 dismissingViewController:(id)a4;
- (UIViewControllerInteractiveTransitioning)interactionController;
- (void)_animateCrossfadeFallback:(uint64_t)a1;
- (void)runTransitionAnimation:(id)a3;
@end

@implementation PXMessagesStackDismissalAnimationController

- (void)runTransitionAnimation:(id)a3
{
  v4 = a3;
  v5 = [v4 viewControllerForKey:*MEMORY[0x1E69DE778]];
  v6 = [v4 viewControllerForKey:*MEMORY[0x1E69DE768]];
  v7 = [v4 containerView];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_7:
    PXAssertGetLog();
  }

  v8 = [v6 topViewController];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    goto LABEL_7;
  }

  if (!v8)
  {
    goto LABEL_7;
  }

  v9 = [(PXMessagesStackDismissalAnimationController *)self stackView];
  v10 = v8;
  v11 = v9;
  v12 = v11;
  if (self)
  {
    [v11 currentAssetReference];
    v13 = [v10 regionOfInterestForAssetReference:objc_claimAutoreleasedReturnValue()];
    v14 = [v10 view];
    [v13 rectInCoordinateSpace:v14];
    [v14 bounds];
    [v14 safeAreaInsets];
    PXEdgeInsetsInsetRect();
  }

  [(PXMessagesStackDismissalAnimationController *)0 _animateCrossfadeFallback:v4];
}

- (void)_animateCrossfadeFallback:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = [v3 viewControllerForKey:*MEMORY[0x1E69DE778]];
    v6 = [v4 viewControllerForKey:*MEMORY[0x1E69DE768]];
    v7 = [v4 containerView];
    [v4 finalFrameForViewController:v5];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v16 = [v5 view];
    v17 = [v6 view];
    [v7 insertSubview:v16 belowSubview:v17];

    v18 = [v5 view];
    [v18 setFrame:{v9, v11, v13, v15}];

    v19 = *(a1 + 24);
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __73__PXMessagesStackDismissalAnimationController__animateCrossfadeFallback___block_invoke;
    v28[3] = &unk_1E774C648;
    v20 = v6;
    v29 = v20;
    [v19 addAnimations:v28];
    v21 = *(a1 + 24);
    v23 = MEMORY[0x1E69E9820];
    v24 = 3221225472;
    v25 = __73__PXMessagesStackDismissalAnimationController__animateCrossfadeFallback___block_invoke_2;
    v26 = &unk_1E7748D18;
    v22 = v4;
    v27 = v22;
    [v21 addCompletion:&v23];
    if (([v22 isInteractive] & 1) == 0)
    {
      [*(a1 + 24) startAnimation];
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
  v3 = [(PXMessagesStackDismissalAnimationController *)self dismissingViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 topViewController];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
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

  v6 = [v5 edgeSwipeDismissalInteraction];
  [v6 setDelegate:self];

  return v6;
}

- (PXMessagesStackDismissalAnimationController)initWithStackView:(id)a3 dismissingViewController:(id)a4
{
  v7 = a3;
  v8 = a4;
  v22.receiver = self;
  v22.super_class = PXMessagesStackDismissalAnimationController;
  v9 = [(PXMessagesStackDismissalAnimationController *)&v22 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_stackView, a3);
    objc_storeStrong(&v10->_dismissingViewController, a4);
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