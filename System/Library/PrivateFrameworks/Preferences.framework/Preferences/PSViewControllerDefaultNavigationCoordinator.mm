@interface PSViewControllerDefaultNavigationCoordinator
- (void)preferencesViewController:(id)controller pushViewController:(id)viewController animated:(BOOL)animated;
@end

@implementation PSViewControllerDefaultNavigationCoordinator

- (void)preferencesViewController:(id)controller pushViewController:(id)viewController animated:(BOOL)animated
{
  animatedCopy = animated;
  viewControllerCopy = viewController;
  if (animatedCopy)
  {
    [controller showViewController:viewControllerCopy sender:self];
    v8 = viewControllerCopy;
  }

  else
  {
    navigationController = [controller navigationController];
    [navigationController pushViewController:viewControllerCopy animated:0];

    v8 = navigationController;
  }
}

@end