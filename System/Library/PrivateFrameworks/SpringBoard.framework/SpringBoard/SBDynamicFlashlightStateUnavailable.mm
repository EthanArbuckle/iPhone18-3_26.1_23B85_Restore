@interface SBDynamicFlashlightStateUnavailable
- (BOOL)isEqual:(id)a3;
@end

@implementation SBDynamicFlashlightStateUnavailable

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    return 1;
  }

  v3 = a3;
  v4 = objc_opt_class();
  v5 = objc_opt_class();

  return v4 == v5;
}

@end