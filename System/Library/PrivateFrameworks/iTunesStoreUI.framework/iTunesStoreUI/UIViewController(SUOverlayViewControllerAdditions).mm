@interface UIViewController(SUOverlayViewControllerAdditions)
- (uint64_t)scriptWindowContext;
- (void)overlayViewController;
@end

@implementation UIViewController(SUOverlayViewControllerAdditions)

- (void)overlayViewController
{
  for (i = self; i; i = [i parentViewController])
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
  parentViewController = [self parentViewController];

  return [parentViewController scriptWindowContext];
}

@end