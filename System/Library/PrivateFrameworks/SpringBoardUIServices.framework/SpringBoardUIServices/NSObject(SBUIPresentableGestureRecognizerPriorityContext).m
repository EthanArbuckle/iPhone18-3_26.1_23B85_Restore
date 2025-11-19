@interface NSObject(SBUIPresentableGestureRecognizerPriorityContext)
- (id)presentableGestureRecognizerPriorityContext;
@end

@implementation NSObject(SBUIPresentableGestureRecognizerPriorityContext)

- (id)presentableGestureRecognizerPriorityContext
{
  if (objc_opt_respondsToSelector())
  {
    v2 = [a1 presentableContext];
    if (objc_opt_respondsToSelector())
    {
      v3 = v2;
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