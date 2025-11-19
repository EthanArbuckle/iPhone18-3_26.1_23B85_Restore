@interface PUOneUpAssetNavigationTransition
- (PUOneUpAssetNavigationTransition)init;
- (id)toViewController;
- (void)_animateTransitionWithOperation:(int64_t)a3;
- (void)_prepareViewForTransition;
@end

@implementation PUOneUpAssetNavigationTransition

- (void)_prepareViewForTransition
{
  v7 = [(PUViewControllerTransition *)self containerView];
  v3 = [(PUOneUpAssetNavigationTransition *)self toViewController];
  v4 = [v3 view];
  v5 = [(PUViewControllerTransition *)self fromViewController];
  v6 = [v5 view];
  [(PUViewControllerTransition *)self finalToViewFrame];
  [v4 setFrame:?];
  [v7 insertSubview:v4 aboveSubview:v6];
}

- (id)toViewController
{
  v4.receiver = self;
  v4.super_class = PUOneUpAssetNavigationTransition;
  v2 = [(PUViewControllerTransition *)&v4 toViewController];

  return v2;
}

- (void)_animateTransitionWithOperation:(int64_t)a3
{
  v5 = [(PUViewControllerTransition *)self fromViewController];
  v6 = [(PUOneUpAssetNavigationTransition *)self toViewController];
  if (([v5 conformsToProtocol:&unk_1F2BE7160] & 1) == 0)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"PUOneUpAssetNavigationTransition.m" lineNumber:36 description:{@"%@ (fromViewController) isn't conforming to PUOneUpAssetTransitionViewController", v5}];
  }

  if (([v6 conformsToProtocol:&unk_1F2BE7160] & 1) == 0)
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"PUOneUpAssetNavigationTransition.m" lineNumber:37 description:{@"%@ (toViewController) isn't conforming to PUOneUpAssetTransitionViewController", v6}];
  }

  v7 = [(PUOneUpAssetNavigationTransition *)self toViewController];
  v8 = [v7 view];
  [v8 layoutIfNeeded];

  [(PUOneUpAssetNavigationTransition *)self _prepareViewForTransition];
  v9 = [v5 navigationController];
  if (v9)
  {
    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v5;
    if (v9)
    {
      goto LABEL_6;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v6;
LABEL_6:
    v10 = v9;
    goto LABEL_7;
  }

  v10 = 0;
LABEL_7:
  v11 = [v10 _useStandardStatusBarHeight];
  v12 = [v5 prefersStatusBarHidden];
  if (v12 != [v6 prefersStatusBarHidden])
  {
    [v10 _setUseStandardStatusBarHeight:1];
  }

  [v5 oneUpAssetTransitionWillBegin:self];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __68__PUOneUpAssetNavigationTransition__animateTransitionWithOperation___block_invoke;
  v18[3] = &unk_1E7B79568;
  v18[4] = self;
  v19 = v6;
  v20 = v5;
  v21 = v10;
  v22 = v11;
  v13 = v10;
  v14 = v5;
  v15 = v6;
  [v14 oneUpAssetTransition:self requestTransitionContextWithCompletion:v18];
}

void __68__PUOneUpAssetNavigationTransition__animateTransitionWithOperation___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 containerView];
  v6 = [v4 oneUpTransitionContextWithContextWithContainerView:v5];

  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  [v8 duration];
  v10 = v9;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __68__PUOneUpAssetNavigationTransition__animateTransitionWithOperation___block_invoke_2;
  v13[3] = &unk_1E7B79540;
  v11 = *(a1 + 48);
  v12 = *(a1 + 32);
  v14 = v11;
  v15 = v12;
  v16 = *(a1 + 56);
  v17 = *(a1 + 64);
  [v7 oneUpAssetTransition:v8 animateTransitionWithContext:v6 duration:v13 completion:v10];
}

uint64_t __68__PUOneUpAssetNavigationTransition__animateTransitionWithOperation___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) oneUpAssetTransitionDidEnd:*(a1 + 40)];
  v2 = [*(a1 + 40) transitionContext];
  v3 = [v2 transitionWasCancelled];

  [*(a1 + 40) completeTransition:v3 ^ 1u];
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);

  return [v4 _setUseStandardStatusBarHeight:v5];
}

- (PUOneUpAssetNavigationTransition)init
{
  v3.receiver = self;
  v3.super_class = PUOneUpAssetNavigationTransition;
  return [(PUNavigationTransition *)&v3 initWithDuration:0.300000012];
}

@end