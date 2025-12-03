@interface NSDictionary(_BOOL)
- (uint64_t)wl_BOOLForKey:()_BOOL;
@end

@implementation NSDictionary(_BOOL)

- (uint64_t)wl_BOOLForKey:()_BOOL
{
  v1 = [self objectForKey:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bOOLValue = [v1 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

@end