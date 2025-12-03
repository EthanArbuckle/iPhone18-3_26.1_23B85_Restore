@interface SXLinkActionSerializer
- (id)URLForAction:(id)action type:(int64_t)type;
@end

@implementation SXLinkActionSerializer

- (id)URLForAction:(id)action type:(int64_t)type
{
  actionCopy = action;
  v5 = actionCopy;
  if (actionCopy && [actionCopy conformsToProtocol:&unk_1F53FB4F8])
  {
    v6 = [v5 URL];

    if (v6)
    {
      v6 = [v5 URL];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end