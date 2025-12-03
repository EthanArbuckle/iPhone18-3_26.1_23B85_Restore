@interface NSObject(SBUISystemApertureElementContextProviding)
- (id)systemApertureElementContext;
@end

@implementation NSObject(SBUISystemApertureElementContextProviding)

- (id)systemApertureElementContext
{
  if (objc_opt_respondsToSelector())
  {
    presentableContext = [self presentableContext];
    if (objc_opt_respondsToSelector())
    {
      systemApertureElementContext = [presentableContext systemApertureElementContext];

      if (systemApertureElementContext)
      {
        goto LABEL_7;
      }
    }

    else
    {
    }
  }

  systemApertureElementContext = +[SBUISystemApertureElementSource unassociatedContext];
LABEL_7:

  return systemApertureElementContext;
}

@end