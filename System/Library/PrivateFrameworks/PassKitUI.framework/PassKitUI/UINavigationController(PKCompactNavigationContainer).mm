@interface UINavigationController(PKCompactNavigationContainer)
- (void)pkui_compactNavigationContainer;
@end

@implementation UINavigationController(PKCompactNavigationContainer)

- (void)pkui_compactNavigationContainer
{
  parentViewController = [self parentViewController];
  v2ParentViewController = [parentViewController parentViewController];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v2ParentViewController;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  containedNavigationController = [v5 containedNavigationController];
  if (containedNavigationController == self)
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