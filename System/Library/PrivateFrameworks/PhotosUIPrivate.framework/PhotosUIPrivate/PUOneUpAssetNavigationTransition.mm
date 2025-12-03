@interface PUOneUpAssetNavigationTransition
- (PUOneUpAssetNavigationTransition)init;
- (id)toViewController;
- (void)_animateTransitionWithOperation:(int64_t)operation;
- (void)_prepareViewForTransition;
@end

@implementation PUOneUpAssetNavigationTransition

- (void)_prepareViewForTransition
{
  containerView = [(PUViewControllerTransition *)self containerView];
  toViewController = [(PUOneUpAssetNavigationTransition *)self toViewController];
  view = [toViewController view];
  fromViewController = [(PUViewControllerTransition *)self fromViewController];
  view2 = [fromViewController view];
  [(PUViewControllerTransition *)self finalToViewFrame];
  [view setFrame:?];
  [containerView insertSubview:view aboveSubview:view2];
}

- (id)toViewController
{
  v4.receiver = self;
  v4.super_class = PUOneUpAssetNavigationTransition;
  toViewController = [(PUViewControllerTransition *)&v4 toViewController];

  return toViewController;
}

- (void)_animateTransitionWithOperation:(int64_t)operation
{
  fromViewController = [(PUViewControllerTransition *)self fromViewController];
  toViewController = [(PUOneUpAssetNavigationTransition *)self toViewController];
  if (([fromViewController conformsToProtocol:&unk_1F2BE7160] & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUOneUpAssetNavigationTransition.m" lineNumber:36 description:{@"%@ (fromViewController) isn't conforming to PUOneUpAssetTransitionViewController", fromViewController}];
  }

  if (([toViewController conformsToProtocol:&unk_1F2BE7160] & 1) == 0)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PUOneUpAssetNavigationTransition.m" lineNumber:37 description:{@"%@ (toViewController) isn't conforming to PUOneUpAssetTransitionViewController", toViewController}];
  }

  toViewController2 = [(PUOneUpAssetNavigationTransition *)self toViewController];
  view = [toViewController2 view];
  [view layoutIfNeeded];

  [(PUOneUpAssetNavigationTransition *)self _prepareViewForTransition];
  navigationController = [fromViewController navigationController];
  if (navigationController)
  {
    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    navigationController = fromViewController;
    if (navigationController)
    {
      goto LABEL_6;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    navigationController = toViewController;
LABEL_6:
    v10 = navigationController;
    goto LABEL_7;
  }

  v10 = 0;
LABEL_7:
  _useStandardStatusBarHeight = [v10 _useStandardStatusBarHeight];
  prefersStatusBarHidden = [fromViewController prefersStatusBarHidden];
  if (prefersStatusBarHidden != [toViewController prefersStatusBarHidden])
  {
    [v10 _setUseStandardStatusBarHeight:1];
  }

  [fromViewController oneUpAssetTransitionWillBegin:self];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __68__PUOneUpAssetNavigationTransition__animateTransitionWithOperation___block_invoke;
  v18[3] = &unk_1E7B79568;
  v18[4] = self;
  v19 = toViewController;
  v20 = fromViewController;
  v21 = v10;
  v22 = _useStandardStatusBarHeight;
  v13 = v10;
  v14 = fromViewController;
  v15 = toViewController;
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