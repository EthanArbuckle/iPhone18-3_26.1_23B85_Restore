@interface NSDictionary(YQLRequestAdditions)
- (void)yql_objectForKey:()YQLRequestAdditions ofClass:;
@end

@implementation NSDictionary(YQLRequestAdditions)

- (void)yql_objectForKey:()YQLRequestAdditions ofClass:
{
  v1 = [a1 objectForKey:?];
  if (v1)
  {
    if (objc_opt_isKindOfClass())
    {
      v2 = v1;
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;

  return v2;
}

@end