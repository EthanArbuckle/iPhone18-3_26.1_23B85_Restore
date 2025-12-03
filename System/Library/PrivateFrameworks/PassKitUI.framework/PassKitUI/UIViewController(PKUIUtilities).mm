@interface UIViewController(PKUIUtilities)
- (id)pkui_frontMostViewController;
- (uint64_t)pkui_userInterfaceIdiomSupportsLargeLayouts;
@end

@implementation UIViewController(PKUIUtilities)

- (id)pkui_frontMostViewController
{
  v2 = objc_autoreleasePoolPush();
  presentedViewController = [self presentedViewController];
  v4 = presentedViewController;
  if (!presentedViewController || presentedViewController == self)
  {
    selfCopy = self;
  }

  else
  {
    while (1)
    {
      presentedViewController2 = [v4 presentedViewController];
      if (!presentedViewController2 || v4 == presentedViewController2)
      {
        break;
      }

      v6 = v4;
      v4 = presentedViewController2;
    }

    selfCopy = v4;
    v4 = selfCopy;
  }

  v8 = selfCopy;

  objc_autoreleasePoolPop(v2);

  return v8;
}

- (uint64_t)pkui_userInterfaceIdiomSupportsLargeLayouts
{
  traitCollection = [self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];
  v3 = userInterfaceIdiom < 7;
  v4 = 0x62u >> userInterfaceIdiom;

  return v3 & v4;
}

@end