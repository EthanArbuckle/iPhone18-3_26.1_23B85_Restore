@interface _TVNavigationZoomAnimator
- (void)_beginZoomAnimationFromViewController:(id)controller toViewController:(id)viewController containerView:(id)view completion:(id)completion;
- (void)animateTransition:(id)transition;
@end

@implementation _TVNavigationZoomAnimator

- (void)animateTransition:(id)transition
{
  transitionCopy = transition;
  containerView = [transitionCopy containerView];
  v6 = [transitionCopy viewControllerForKey:*MEMORY[0x277D77240]];
  v7 = [transitionCopy viewControllerForKey:*MEMORY[0x277D77230]];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __47___TVNavigationZoomAnimator_animateTransition___block_invoke;
  v9[3] = &unk_279D6E7F8;
  v10 = transitionCopy;
  v8 = transitionCopy;
  [(_TVNavigationZoomAnimator *)self _beginZoomAnimationFromViewController:v7 toViewController:v6 containerView:containerView completion:v9];
}

- (void)_beginZoomAnimationFromViewController:(id)controller toViewController:(id)viewController containerView:(id)view completion:(id)completion
{
  completionCopy = completion;
  viewCopy = view;
  controllerCopy = controller;
  view = [viewController view];
  [viewCopy bounds];
  [view setFrame:?];
  [view setAlpha:0.0];
  layer = [view layer];
  [layer setShouldRasterize:1];

  layer2 = [view layer];
  [layer2 setRasterizationScale:1.0];

  view2 = [controllerCopy view];

  [viewCopy insertSubview:view belowSubview:view2];
  layer3 = [view2 layer];
  [layer3 setShouldRasterize:1];

  layer4 = [view2 layer];
  [layer4 setRasterizationScale:1.0];

  v18 = MEMORY[0x277D75D18];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __109___TVNavigationZoomAnimator__beginZoomAnimationFromViewController_toViewController_containerView_completion___block_invoke;
  v30[3] = &unk_279D6E7F8;
  v31 = view2;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __109___TVNavigationZoomAnimator__beginZoomAnimationFromViewController_toViewController_containerView_completion___block_invoke_2;
  v28[3] = &unk_279D6EBD0;
  v29 = v31;
  v19 = v31;
  [v18 animateWithDuration:0x10000 delay:v30 options:v28 animations:0.3 completion:0.0];
  v20 = MEMORY[0x277D75D18];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __109___TVNavigationZoomAnimator__beginZoomAnimationFromViewController_toViewController_containerView_completion___block_invoke_3;
  v26[3] = &unk_279D6E7F8;
  v27 = view;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __109___TVNavigationZoomAnimator__beginZoomAnimationFromViewController_toViewController_containerView_completion___block_invoke_4;
  v23[3] = &unk_279D6F090;
  v24 = v27;
  v25 = completionCopy;
  v21 = completionCopy;
  v22 = v27;
  [v20 animateWithDuration:v26 animations:v23 completion:0.5];
}

@end