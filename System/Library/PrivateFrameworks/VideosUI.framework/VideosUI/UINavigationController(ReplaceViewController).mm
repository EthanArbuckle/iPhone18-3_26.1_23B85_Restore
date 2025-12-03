@interface UINavigationController(ReplaceViewController)
- (void)_VideosExtras_replaceViewController:()ReplaceViewController withViewController:animated:;
@end

@implementation UINavigationController(ReplaceViewController)

- (void)_VideosExtras_replaceViewController:()ReplaceViewController withViewController:animated:
{
  v12 = a4;
  v8 = a3;
  viewControllers = [self viewControllers];
  v10 = [viewControllers mutableCopy];

  v11 = [v10 indexOfObject:v8];
  if (v11 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v10 replaceObjectAtIndex:v11 withObject:v12];
    [self setViewControllers:v10 animated:a5];
  }
}

@end