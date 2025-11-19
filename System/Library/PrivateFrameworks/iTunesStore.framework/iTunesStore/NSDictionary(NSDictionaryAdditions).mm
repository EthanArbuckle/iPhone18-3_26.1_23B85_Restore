@interface NSDictionary(NSDictionaryAdditions)
- (void)objectForKey:()NSDictionaryAdditions matching:;
@end

@implementation NSDictionary(NSDictionaryAdditions)

- (void)objectForKey:()NSDictionaryAdditions matching:
{
  v1 = [a1 objectForKey:?];
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;

  return v2;
}

@end