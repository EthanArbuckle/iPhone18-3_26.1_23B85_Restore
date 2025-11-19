@interface SBUISystemApertureElementSourceContainerViewController
- (id)_transitionCoordinator;
- (void)setElementViewController:(id)a3;
@end

@implementation SBUISystemApertureElementSourceContainerViewController

- (void)setElementViewController:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_elementViewController != v4)
  {
    v6 = MEMORY[0x1E69DD250];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __83__SBUISystemApertureElementSourceContainerViewController_setElementViewController___block_invoke;
    v7[3] = &unk_1E789DD98;
    v7[4] = self;
    v8 = v4;
    [v6 performWithoutAnimation:v7];
  }
}

void __83__SBUISystemApertureElementSourceContainerViewController_setElementViewController___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 992) willMoveToParentViewController:0];
  v2 = [*(*(a1 + 32) + 992) view];
  [v2 removeFromSuperview];

  [*(*(a1 + 32) + 992) removeFromParentViewController];
  v3 = [*(a1 + 40) parentViewController];

  if (v3)
  {
    [*(a1 + 40) willMoveToParentViewController:0];
    v4 = [*(a1 + 40) view];
    [v4 removeFromSuperview];

    [*(a1 + 40) removeFromParentViewController];
  }

  objc_storeStrong((*(a1 + 32) + 992), *(a1 + 40));
  if (*(a1 + 40))
  {
    [*(a1 + 32) addChildViewController:?];
    v5 = [*(a1 + 32) view];
    v6 = [*(a1 + 40) view];
    [v5 addSubview:v6];

    v8 = *(a1 + 32);
    v7 = *(a1 + 40);

    [v7 didMoveToParentViewController:v8];
  }
}

- (id)_transitionCoordinator
{
  v3 = [(UIViewController *)self systemApertureElementContext];
  v4 = [v3 transitionContext];
  v5 = [v4 transitionCoordinator];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = SBUISystemApertureElementSourceContainerViewController;
    v7 = [(SBUISystemApertureElementSourceContainerViewController *)&v10 _transitionCoordinator];
  }

  v8 = v7;

  return v8;
}

@end