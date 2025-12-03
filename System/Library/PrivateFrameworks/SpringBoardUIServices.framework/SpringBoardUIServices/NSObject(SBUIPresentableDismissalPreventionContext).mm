@interface NSObject(SBUIPresentableDismissalPreventionContext)
- (id)presentableDismissalPreventionContext;
@end

@implementation NSObject(SBUIPresentableDismissalPreventionContext)

- (id)presentableDismissalPreventionContext
{
  if (objc_opt_respondsToSelector())
  {
    presentableContext = [self presentableContext];
    if (objc_opt_respondsToSelector())
    {
      v3 = presentableContext;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end