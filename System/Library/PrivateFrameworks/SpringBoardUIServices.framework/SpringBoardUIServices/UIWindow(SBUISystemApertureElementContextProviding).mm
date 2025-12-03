@interface UIWindow(SBUISystemApertureElementContextProviding)
- (id)systemApertureElementContext;
@end

@implementation UIWindow(SBUISystemApertureElementContextProviding)

- (id)systemApertureElementContext
{
  windowScene = [self windowScene];
  systemApertureElementContext = [windowScene systemApertureElementContext];
  v4 = systemApertureElementContext;
  if (systemApertureElementContext)
  {
    v5 = systemApertureElementContext;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = UIWindow_0;
    v5 = objc_msgSendSuper2(&v8, sel_systemApertureElementContext);
  }

  v6 = v5;

  return v6;
}

@end