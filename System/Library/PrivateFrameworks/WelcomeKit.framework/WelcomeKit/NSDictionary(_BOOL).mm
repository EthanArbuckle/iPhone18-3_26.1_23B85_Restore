@interface NSDictionary(_BOOL)
- (uint64_t)wl_BOOLForKey:()_BOOL;
@end

@implementation NSDictionary(_BOOL)

- (uint64_t)wl_BOOLForKey:()_BOOL
{
  v1 = [a1 objectForKey:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [v1 BOOLValue];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

@end