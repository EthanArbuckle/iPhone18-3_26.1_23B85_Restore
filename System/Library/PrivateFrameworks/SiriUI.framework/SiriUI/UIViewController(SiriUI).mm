@interface UIViewController(SiriUI)
- (BOOL)siriui_isVisible;
@end

@implementation UIViewController(SiriUI)

- (BOOL)siriui_isVisible
{
  if (![a1 isViewLoaded])
  {
    return 0;
  }

  v2 = [a1 view];
  v3 = [v2 window];
  v4 = v3 != 0;

  return v4;
}

@end