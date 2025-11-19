@interface UIViewController(PKUIUtilities)
- (id)pkui_frontMostViewController;
- (uint64_t)pkui_userInterfaceIdiomSupportsLargeLayouts;
@end

@implementation UIViewController(PKUIUtilities)

- (id)pkui_frontMostViewController
{
  v2 = objc_autoreleasePoolPush();
  v3 = [a1 presentedViewController];
  v4 = v3;
  if (!v3 || v3 == a1)
  {
    v7 = a1;
  }

  else
  {
    while (1)
    {
      v5 = [v4 presentedViewController];
      if (!v5 || v4 == v5)
      {
        break;
      }

      v6 = v4;
      v4 = v5;
    }

    v7 = v4;
    v4 = v7;
  }

  v8 = v7;

  objc_autoreleasePoolPop(v2);

  return v8;
}

- (uint64_t)pkui_userInterfaceIdiomSupportsLargeLayouts
{
  v1 = [a1 traitCollection];
  v2 = [v1 userInterfaceIdiom];
  v3 = v2 < 7;
  v4 = 0x62u >> v2;

  return v3 & v4;
}

@end