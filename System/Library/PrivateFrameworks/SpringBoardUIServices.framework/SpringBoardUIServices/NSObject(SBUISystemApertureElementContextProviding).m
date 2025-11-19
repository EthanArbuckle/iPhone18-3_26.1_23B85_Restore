@interface NSObject(SBUISystemApertureElementContextProviding)
- (id)systemApertureElementContext;
@end

@implementation NSObject(SBUISystemApertureElementContextProviding)

- (id)systemApertureElementContext
{
  if (objc_opt_respondsToSelector())
  {
    v2 = [a1 presentableContext];
    if (objc_opt_respondsToSelector())
    {
      v3 = [v2 systemApertureElementContext];

      if (v3)
      {
        goto LABEL_7;
      }
    }

    else
    {
    }
  }

  v3 = +[SBUISystemApertureElementSource unassociatedContext];
LABEL_7:

  return v3;
}

@end