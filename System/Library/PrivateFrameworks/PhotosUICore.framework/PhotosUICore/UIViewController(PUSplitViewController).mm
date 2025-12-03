@interface UIViewController(PUSplitViewController)
- (void)px_splitViewController;
@end

@implementation UIViewController(PUSplitViewController)

- (void)px_splitViewController
{
  splitViewController = [self splitViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = splitViewController;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;

  return v2;
}

@end