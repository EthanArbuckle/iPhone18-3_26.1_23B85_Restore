@interface BFFNavigationControllerTransitionDelegate
- (id)navigationController:(id)controller animationControllerForOperation:(int64_t)operation fromViewController:(id)viewController toViewController:(id)toViewController;
@end

@implementation BFFNavigationControllerTransitionDelegate

- (id)navigationController:(id)controller animationControllerForOperation:(int64_t)operation fromViewController:(id)viewController toViewController:(id)toViewController
{
  v7 = [(BFFNavigationControllerTransitionDelegate *)self customAnimatorBlock:controller];

  if (v7)
  {
    customAnimatorBlock = [(BFFNavigationControllerTransitionDelegate *)self customAnimatorBlock];
    v9 = customAnimatorBlock[2]();
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end