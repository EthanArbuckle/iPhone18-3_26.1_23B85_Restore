@interface NSObject(SBUIPresentableHomeGestureContext)
- (id)presentableHomeGestureContext;
@end

@implementation NSObject(SBUIPresentableHomeGestureContext)

- (id)presentableHomeGestureContext
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