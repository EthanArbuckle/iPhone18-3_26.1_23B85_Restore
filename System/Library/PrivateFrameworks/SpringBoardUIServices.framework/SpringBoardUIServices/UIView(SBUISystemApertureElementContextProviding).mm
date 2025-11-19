@interface UIView(SBUISystemApertureElementContextProviding)
- (id)systemApertureElementContext;
@end

@implementation UIView(SBUISystemApertureElementContextProviding)

- (id)systemApertureElementContext
{
  v2 = [a1 window];
  v3 = [v2 windowScene];
  v4 = [v3 systemApertureElementContext];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v9.receiver = a1;
    v9.super_class = UIView_0;
    v6 = objc_msgSendSuper2(&v9, sel_systemApertureElementContext);
  }

  v7 = v6;

  return v7;
}

@end