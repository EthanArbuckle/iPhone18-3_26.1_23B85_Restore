@interface SXWebCalActionSerializer
- (id)URLForAction:(id)action type:(int64_t)type;
@end

@implementation SXWebCalActionSerializer

- (id)URLForAction:(id)action type:(int64_t)type
{
  actionCopy = action;
  if (actionCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = [actionCopy URL];

    v7 = 0;
    if (type != 1 && v6)
    {
      v7 = [actionCopy URL];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end