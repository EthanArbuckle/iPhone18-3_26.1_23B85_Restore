@interface UIViewController(PSControllerAdditions)
- (void)popRecursivelyToRootController;
@end

@implementation UIViewController(PSControllerAdditions)

- (void)popRecursivelyToRootController
{
  v2 = [a1 presentedViewController];

  if (v2)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __73__UIViewController_PSControllerAdditions__popRecursivelyToRootController__block_invoke;
    v7[3] = &unk_1E71DBE20;
    v7[4] = a1;
    [MEMORY[0x1E69DD258] _performWithoutDeferringTransitions:v7];
  }

  v3 = [a1 parentViewController];

  if (v3)
  {
    v4 = [a1 parentViewController];
  }

  else
  {
    v5 = [a1 presentingViewController];

    if (!v5)
    {
      return;
    }

    v4 = [a1 presentingViewController];
  }

  v6 = v4;
  [v4 popRecursivelyToRootController];
}

@end