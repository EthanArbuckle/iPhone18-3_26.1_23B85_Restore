@interface SXWebCalActionSerializer
- (id)URLForAction:(id)a3 type:(int64_t)a4;
@end

@implementation SXWebCalActionSerializer

- (id)URLForAction:(id)a3 type:(int64_t)a4
{
  v5 = a3;
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = [v5 URL];

    v7 = 0;
    if (a4 != 1 && v6)
    {
      v7 = [v5 URL];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end