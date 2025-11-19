@interface UINavigationController(ReplaceViewController)
- (void)_VideosExtras_replaceViewController:()ReplaceViewController withViewController:animated:;
@end

@implementation UINavigationController(ReplaceViewController)

- (void)_VideosExtras_replaceViewController:()ReplaceViewController withViewController:animated:
{
  v12 = a4;
  v8 = a3;
  v9 = [a1 viewControllers];
  v10 = [v9 mutableCopy];

  v11 = [v10 indexOfObject:v8];
  if (v11 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v10 replaceObjectAtIndex:v11 withObject:v12];
    [a1 setViewControllers:v10 animated:a5];
  }
}

@end