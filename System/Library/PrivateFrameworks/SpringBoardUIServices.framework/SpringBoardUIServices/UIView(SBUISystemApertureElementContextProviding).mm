@interface UIView(SBUISystemApertureElementContextProviding)
- (id)systemApertureElementContext;
@end

@implementation UIView(SBUISystemApertureElementContextProviding)

- (id)systemApertureElementContext
{
  window = [self window];
  windowScene = [window windowScene];
  systemApertureElementContext = [windowScene systemApertureElementContext];
  v5 = systemApertureElementContext;
  if (systemApertureElementContext)
  {
    v6 = systemApertureElementContext;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = UIView_0;
    v6 = objc_msgSendSuper2(&v9, sel_systemApertureElementContext);
  }

  v7 = v6;

  return v7;
}

@end