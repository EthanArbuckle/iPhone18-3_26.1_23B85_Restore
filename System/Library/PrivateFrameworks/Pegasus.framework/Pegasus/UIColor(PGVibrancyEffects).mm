@interface UIColor(PGVibrancyEffects)
- (BOOL)PG_wantsVibrancyEffect;
@end

@implementation UIColor(PGVibrancyEffects)

- (BOOL)PG_wantsVibrancyEffect
{
  v2 = 0.0;
  [self getRed:0 green:0 blue:0 alpha:&v2];
  return v2 < 1.0 && v2 > 0.0;
}

@end