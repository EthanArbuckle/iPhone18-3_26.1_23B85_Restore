@interface UIWindow(SBUISystemApertureElementContextProviding)
- (id)systemApertureElementContext;
@end

@implementation UIWindow(SBUISystemApertureElementContextProviding)

- (id)systemApertureElementContext
{
  v2 = [a1 windowScene];
  v3 = [v2 systemApertureElementContext];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v8.receiver = a1;
    v8.super_class = UIWindow_0;
    v5 = objc_msgSendSuper2(&v8, sel_systemApertureElementContext);
  }

  v6 = v5;

  return v6;
}

@end