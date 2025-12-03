@interface NSDictionary(Integer)
- (uint64_t)wl_integerForKey:()Integer;
@end

@implementation NSDictionary(Integer)

- (uint64_t)wl_integerForKey:()Integer
{
  v1 = [self objectForKey:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    integerValue = [v1 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  return integerValue;
}

@end