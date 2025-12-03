@interface UIViewController(SiriUI)
- (BOOL)siriui_isVisible;
@end

@implementation UIViewController(SiriUI)

- (BOOL)siriui_isVisible
{
  if (![self isViewLoaded])
  {
    return 0;
  }

  view = [self view];
  window = [view window];
  v4 = window != 0;

  return v4;
}

@end