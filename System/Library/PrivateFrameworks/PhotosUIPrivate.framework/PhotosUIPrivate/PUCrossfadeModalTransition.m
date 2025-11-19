@interface PUCrossfadeModalTransition
- (void)animateDismissTransition;
- (void)animatePresentTransition;
@end

@implementation PUCrossfadeModalTransition

- (void)animateDismissTransition
{
  v3 = [(PUViewControllerTransition *)self containerView];
  v4 = [(PUViewControllerTransition *)self toViewController];
  v5 = [v4 view];
  v6 = [(PUViewControllerTransition *)self fromViewController];
  v7 = [v6 view];
  [(PUViewControllerTransition *)self finalToViewFrame];
  [v5 setFrame:?];
  [v3 insertSubview:v5 aboveSubview:v7];
  [v5 setAlpha:0.0];
  v8 = MEMORY[0x1E69DD250];
  [(PUViewControllerTransition *)self duration];
  v10 = v9;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __54__PUCrossfadeModalTransition_animateDismissTransition__block_invoke;
  v13[3] = &unk_1E7B80DD0;
  v14 = v5;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __54__PUCrossfadeModalTransition_animateDismissTransition__block_invoke_2;
  v12[3] = &unk_1E7B7F020;
  v12[4] = self;
  v11 = v5;
  [v8 animateWithDuration:v13 animations:v12 completion:v10];
}

uint64_t __54__PUCrossfadeModalTransition_animateDismissTransition__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) transitionContext];
  v3 = [v2 transitionWasCancelled];

  v4 = *(a1 + 32);

  return [v4 completeTransition:v3 ^ 1u];
}

- (void)animatePresentTransition
{
  v3 = [(PUViewControllerTransition *)self containerView];
  v4 = [(PUViewControllerTransition *)self toViewController];
  v5 = [v4 view];
  v6 = [(PUViewControllerTransition *)self fromViewController];
  v7 = [v6 view];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v7 snapshotViewAfterScreenUpdates:0];
    [v8 setAutoresizingMask:18];
    [v5 insertSubview:v8 atIndex:0];
  }

  v9 = [v7 snapshotViewAfterScreenUpdates:0];
  [(PUViewControllerTransition *)self finalToViewFrame];
  [v5 setFrame:?];
  [v3 insertSubview:v5 aboveSubview:v7];
  [v3 addSubview:v9];
  v10 = MEMORY[0x1E69DD250];
  [(PUViewControllerTransition *)self duration];
  v12 = v11;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __54__PUCrossfadeModalTransition_animatePresentTransition__block_invoke;
  v17[3] = &unk_1E7B80DD0;
  v18 = v9;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __54__PUCrossfadeModalTransition_animatePresentTransition__block_invoke_2;
  v14[3] = &unk_1E7B80088;
  v15 = v18;
  v16 = self;
  v13 = v18;
  [v10 animateWithDuration:v17 animations:v14 completion:v12];
}

uint64_t __54__PUCrossfadeModalTransition_animatePresentTransition__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) removeFromSuperview];
  v2 = [*(a1 + 40) transitionContext];
  v3 = [v2 transitionWasCancelled];

  v4 = *(a1 + 40);

  return [v4 completeTransition:v3 ^ 1u];
}

@end