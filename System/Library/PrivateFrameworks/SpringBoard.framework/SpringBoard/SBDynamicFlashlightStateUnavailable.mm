@interface SBDynamicFlashlightStateUnavailable
- (BOOL)isEqual:(id)equal;
@end

@implementation SBDynamicFlashlightStateUnavailable

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    return 1;
  }

  equalCopy = equal;
  v4 = objc_opt_class();
  v5 = objc_opt_class();

  return v4 == v5;
}

@end