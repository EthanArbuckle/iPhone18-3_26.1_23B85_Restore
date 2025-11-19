@interface UINavigationController(PKCompactNavigationContainer)
- (void)pkui_compactNavigationContainer;
@end

@implementation UINavigationController(PKCompactNavigationContainer)

- (void)pkui_compactNavigationContainer
{
  v2 = [a1 parentViewController];
  v3 = [v2 parentViewController];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  v6 = [v5 containedNavigationController];
  if (v6 == a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  return v7;
}

@end