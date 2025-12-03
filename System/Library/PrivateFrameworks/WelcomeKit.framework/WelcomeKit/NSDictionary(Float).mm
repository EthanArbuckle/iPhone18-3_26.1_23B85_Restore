@interface NSDictionary(Float)
- (double)wl_floatForKey:()Float;
@end

@implementation NSDictionary(Float)

- (double)wl_floatForKey:()Float
{
  v1 = [self objectForKey:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), v2 = 0.0, (objc_opt_isKindOfClass()))
  {
    [v1 floatValue];
    v2 = v3;
  }

  return v2;
}

@end