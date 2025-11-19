@interface UITraitCollection(NCGlassLuminanceTraits)
- (uint64_t)glassLuminanceValue;
@end

@implementation UITraitCollection(NCGlassLuminanceTraits)

- (uint64_t)glassLuminanceValue
{
  v2 = objc_opt_class();

  return [a1 valueForCGFloatTrait:v2];
}

@end