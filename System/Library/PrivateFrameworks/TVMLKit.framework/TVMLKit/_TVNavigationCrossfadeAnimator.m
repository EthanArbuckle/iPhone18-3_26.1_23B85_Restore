@interface _TVNavigationCrossfadeAnimator
+ (void)_beginCrossfadeAnimationFromView:(id)a3 toView:(id)a4 containerView:(id)a5 delay:(double)a6 fadeOutFromView:(BOOL)a7 removeFromView:(BOOL)a8 completion:(id)a9;
- (void)_beginCrossfadeAnimationFromViewController:(id)a3 toViewController:(id)a4 containerView:(id)a5 completion:(id)a6;
- (void)animateTransition:(id)a3;
@end

@implementation _TVNavigationCrossfadeAnimator

- (void)animateTransition:(id)a3
{
  v4 = a3;
  v5 = [v4 containerView];
  v6 = [v4 viewControllerForKey:*MEMORY[0x277D77240]];
  v7 = [v4 viewControllerForKey:*MEMORY[0x277D77230]];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __52___TVNavigationCrossfadeAnimator_animateTransition___block_invoke;
  v9[3] = &unk_279D6E7F8;
  v10 = v4;
  v8 = v4;
  [(_TVNavigationCrossfadeAnimator *)self _beginCrossfadeAnimationFromViewController:v7 toViewController:v6 containerView:v5 completion:v9];
}

+ (void)_beginCrossfadeAnimationFromView:(id)a3 toView:(id)a4 containerView:(id)a5 delay:(double)a6 fadeOutFromView:(BOOL)a7 removeFromView:(BOOL)a8 completion:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a9;
  v18 = a5;
  [v18 bounds];
  [v16 setFrame:?];
  [v16 setAlpha:0.0];
  [v18 addSubview:v16];

  v19 = MEMORY[0x277D75D18];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __136___TVNavigationCrossfadeAnimator__beginCrossfadeAnimationFromView_toView_containerView_delay_fadeOutFromView_removeFromView_completion___block_invoke;
  v27[3] = &unk_279D6E930;
  v30 = a7;
  v28 = v15;
  v29 = v16;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __136___TVNavigationCrossfadeAnimator__beginCrossfadeAnimationFromView_toView_containerView_delay_fadeOutFromView_removeFromView_completion___block_invoke_2;
  v23[3] = &unk_279D6E958;
  v26 = a8;
  v24 = v28;
  v25 = v17;
  v20 = v17;
  v21 = v28;
  v22 = v16;
  [v19 animateWithDuration:2 delay:v27 options:v23 animations:0.5 completion:a6];
}

- (void)_beginCrossfadeAnimationFromViewController:(id)a3 toViewController:(id)a4 containerView:(id)a5 completion:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = objc_opt_class();
  v16 = [v13 view];

  v15 = [v12 view];

  [v14 _beginCrossfadeAnimationFromView:v16 toView:v15 containerView:v11 delay:self->_fadeOutFromView fadeOutFromView:1 removeFromView:v10 completion:0.0];
}

@end