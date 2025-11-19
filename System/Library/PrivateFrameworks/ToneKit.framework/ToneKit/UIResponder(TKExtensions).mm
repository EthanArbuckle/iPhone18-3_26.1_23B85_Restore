@interface UIResponder(TKExtensions)
- (id)tk_firstViewControllerInResponderChain;
@end

@implementation UIResponder(TKExtensions)

- (id)tk_firstViewControllerInResponderChain
{
  v1 = [a1 nextResponder];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = [v1 tk_firstViewControllerInResponderChain];
  }

  v3 = v2;

  return v3;
}

@end