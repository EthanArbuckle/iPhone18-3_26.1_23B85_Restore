@interface UIViewController(SettingsPop)
- (void)popViewControllerAnimated:()SettingsPop;
@end

@implementation UIViewController(SettingsPop)

- (void)popViewControllerAnimated:()SettingsPop
{
  navigationController = [self navigationController];
  viewControllers = [navigationController viewControllers];
  parentViewController = [self parentViewController];
  v8 = [viewControllers containsObject:parentViewController];

  navigationController2 = [self navigationController];
  if (v8)
  {
    parentViewController2 = [self parentViewController];
    v10 = [navigationController2 popToViewController:parentViewController2 animated:a3];
  }

  else
  {
    v11 = [navigationController2 popToViewController:self animated:a3];
  }
}

@end