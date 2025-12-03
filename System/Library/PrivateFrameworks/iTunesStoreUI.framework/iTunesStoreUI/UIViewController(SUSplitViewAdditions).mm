@interface UIViewController(SUSplitViewAdditions)
- (double)maximumViewSize;
- (double)minimumViewSize;
- (void)storeSplitViewController;
@end

@implementation UIViewController(SUSplitViewAdditions)

- (double)maximumViewSize
{
  childViewControllers = [self childViewControllers];
  if ([childViewControllers count] != 1)
  {
    return *MEMORY[0x1E695F060];
  }

  [objc_msgSend(childViewControllers objectAtIndex:{0), "maximumViewSize"}];
  return result;
}

- (double)minimumViewSize
{
  childViewControllers = [self childViewControllers];
  if ([childViewControllers count] != 1)
  {
    return *MEMORY[0x1E695F060];
  }

  [objc_msgSend(childViewControllers objectAtIndex:{0), "minimumViewSize"}];
  return result;
}

- (void)storeSplitViewController
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

@end