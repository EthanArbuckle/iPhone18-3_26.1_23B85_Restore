@interface UIResponder(TKExtensions)
- (id)tk_firstViewControllerInResponderChain;
@end

@implementation UIResponder(TKExtensions)

- (id)tk_firstViewControllerInResponderChain
{
  nextResponder = [self nextResponder];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    tk_firstViewControllerInResponderChain = nextResponder;
  }

  else
  {
    tk_firstViewControllerInResponderChain = [nextResponder tk_firstViewControllerInResponderChain];
  }

  v3 = tk_firstViewControllerInResponderChain;

  return v3;
}

@end