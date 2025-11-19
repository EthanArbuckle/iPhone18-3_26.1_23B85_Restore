@interface _TVNavigationZoomAnimator
- (void)_beginZoomAnimationFromViewController:(id)a3 toViewController:(id)a4 containerView:(id)a5 completion:(id)a6;
- (void)animateTransition:(id)a3;
@end

@implementation _TVNavigationZoomAnimator

- (void)animateTransition:(id)a3
{
  v4 = a3;
  v5 = [v4 containerView];
  v6 = [v4 viewControllerForKey:*MEMORY[0x277D77240]];
  v7 = [v4 viewControllerForKey:*MEMORY[0x277D77230]];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __47___TVNavigationZoomAnimator_animateTransition___block_invoke;
  v9[3] = &unk_279D6E7F8;
  v10 = v4;
  v8 = v4;
  [(_TVNavigationZoomAnimator *)self _beginZoomAnimationFromViewController:v7 toViewController:v6 containerView:v5 completion:v9];
}

- (void)_beginZoomAnimationFromViewController:(id)a3 toViewController:(id)a4 containerView:(id)a5 completion:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a3;
  v12 = [a4 view];
  [v10 bounds];
  [v12 setFrame:?];
  [v12 setAlpha:0.0];
  v13 = [v12 layer];
  [v13 setShouldRasterize:1];

  v14 = [v12 layer];
  [v14 setRasterizationScale:1.0];

  v15 = [v11 view];

  [v10 insertSubview:v12 belowSubview:v15];
  v16 = [v15 layer];
  [v16 setShouldRasterize:1];

  v17 = [v15 layer];
  [v17 setRasterizationScale:1.0];

  v18 = MEMORY[0x277D75D18];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __109___TVNavigationZoomAnimator__beginZoomAnimationFromViewController_toViewController_containerView_completion___block_invoke;
  v30[3] = &unk_279D6E7F8;
  v31 = v15;
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
  v27 = v12;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __109___TVNavigationZoomAnimator__beginZoomAnimationFromViewController_toViewController_containerView_completion___block_invoke_4;
  v23[3] = &unk_279D6F090;
  v24 = v27;
  v25 = v9;
  v21 = v9;
  v22 = v27;
  [v20 animateWithDuration:v26 animations:v23 completion:0.5];
}

@end