@interface UIViewController(PSControllerAdditions)
- (void)popRecursivelyToRootController;
@end

@implementation UIViewController(PSControllerAdditions)

- (void)popRecursivelyToRootController
{
  presentedViewController = [self presentedViewController];

  if (presentedViewController)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __73__UIViewController_PSControllerAdditions__popRecursivelyToRootController__block_invoke;
    v7[3] = &unk_1E71DBE20;
    v7[4] = self;
    [MEMORY[0x1E69DD258] _performWithoutDeferringTransitions:v7];
  }

  parentViewController = [self parentViewController];

  if (parentViewController)
  {
    parentViewController2 = [self parentViewController];
  }

  else
  {
    presentingViewController = [self presentingViewController];

    if (!presentingViewController)
    {
      return;
    }

    parentViewController2 = [self presentingViewController];
  }

  v6 = parentViewController2;
  [parentViewController2 popRecursivelyToRootController];
}

@end