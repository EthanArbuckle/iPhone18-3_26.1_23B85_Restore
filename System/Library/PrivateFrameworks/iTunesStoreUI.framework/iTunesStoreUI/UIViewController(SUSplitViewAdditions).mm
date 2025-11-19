@interface UIViewController(SUSplitViewAdditions)
- (double)maximumViewSize;
- (double)minimumViewSize;
- (void)storeSplitViewController;
@end

@implementation UIViewController(SUSplitViewAdditions)

- (double)maximumViewSize
{
  v1 = [a1 childViewControllers];
  if ([v1 count] != 1)
  {
    return *MEMORY[0x1E695F060];
  }

  [objc_msgSend(v1 objectAtIndex:{0), "maximumViewSize"}];
  return result;
}

- (double)minimumViewSize
{
  v1 = [a1 childViewControllers];
  if ([v1 count] != 1)
  {
    return *MEMORY[0x1E695F060];
  }

  [objc_msgSend(v1 objectAtIndex:{0), "minimumViewSize"}];
  return result;
}

- (void)storeSplitViewController
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

@end