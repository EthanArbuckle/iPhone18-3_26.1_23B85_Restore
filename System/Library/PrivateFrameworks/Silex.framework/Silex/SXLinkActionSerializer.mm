@interface SXLinkActionSerializer
- (id)URLForAction:(id)a3 type:(int64_t)a4;
@end

@implementation SXLinkActionSerializer

- (id)URLForAction:(id)a3 type:(int64_t)a4
{
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 conformsToProtocol:&unk_1F53FB4F8])
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