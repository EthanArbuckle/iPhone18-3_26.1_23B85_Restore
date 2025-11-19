@interface UIViewController(SUOverlayViewControllerAdditions)
- (uint64_t)scriptWindowContext;
- (void)overlayViewController;
@end

@implementation UIViewController(SUOverlayViewControllerAdditions)

- (void)overlayViewController
{
  for (i = a1; i; i = [i parentViewController])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      break;
    }
  }

  return i;
}

- (uint64_t)scriptWindowContext
{
  v1 = [a1 parentViewController];

  return [v1 scriptWindowContext];
}

@end