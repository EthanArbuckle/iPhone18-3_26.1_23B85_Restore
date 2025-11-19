@interface UIViewController
@end

@implementation UIViewController

void __97__UIViewController_PUNavigationController_Private__ppt_performBlockAfterNextNavigationAnimation___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __97__UIViewController_PUNavigationController_Private__ppt_performBlockAfterNextNavigationAnimation___block_invoke_2;
  block[3] = &unk_1E7B80C88;
  v2 = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __97__UIViewController_PUNavigationController_Private__ppt_performBlockAfterNextNavigationAnimation___block_invoke_2(uint64_t a1)
{
  v2 = dispatch_time(0, 100000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __97__UIViewController_PUNavigationController_Private__ppt_performBlockAfterNextNavigationAnimation___block_invoke_3;
  block[3] = &unk_1E7B80C88;
  v4 = *(a1 + 32);
  dispatch_after(v2, MEMORY[0x1E69E96A0], block);
}

uint64_t __95__UIViewController_CustomTransitions__pu_dismissViewControllerAnimated_interactive_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) transitionContext];
  v3 = [v2 transitionWasCancelled];

  if ((v3 & 1) == 0)
  {
    v4 = [*(a1 + 40) transitioningDelegate];
    v5 = *(a1 + 32);

    if (v4 == v5)
    {
      [*(a1 + 40) setTransitioningDelegate:0];
    }
  }

  result = *(a1 + 48);
  if (result)
  {
    v7 = *(result + 16);

    return v7();
  }

  return result;
}

void __59__UIViewController_PhotosUI__pu_currentViewControllerStack__block_invoke()
{
  v2 = [MEMORY[0x1E69DC668] sharedApplication];
  v0 = [v2 px_firstKeyWindow];
  v1 = pu_currentViewControllerStack_window;
  pu_currentViewControllerStack_window = v0;
}

@end