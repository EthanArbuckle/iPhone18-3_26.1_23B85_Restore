@interface UIViewController(SBUISystemApertureElementContextProviding)
- (id)systemApertureElementContext;
@end

@implementation UIViewController(SBUISystemApertureElementContextProviding)

- (id)systemApertureElementContext
{
  viewIfLoaded = [self viewIfLoaded];
  systemApertureElementContext = [viewIfLoaded systemApertureElementContext];
  v4 = systemApertureElementContext;
  if (systemApertureElementContext)
  {
    v5 = systemApertureElementContext;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = UIViewController_0;
    v5 = objc_msgSendSuper2(&v8, sel_systemApertureElementContext);
  }

  v6 = v5;

  return v6;
}

@end