@interface UPQuiltConfigurationPad
- (UPQuiltConfigurationPad)initWithRandomizationSeedValue:(unint64_t)value viewport:(CGRect)viewport timeBounds:(CGRect)bounds lineVariance:(double)variance;
@end

@implementation UPQuiltConfigurationPad

- (UPQuiltConfigurationPad)initWithRandomizationSeedValue:(unint64_t)value viewport:(CGRect)viewport timeBounds:(CGRect)bounds lineVariance:(double)variance
{
  v7.receiver = self;
  v7.super_class = UPQuiltConfigurationPad;
  return [(UPQuiltConfiguration *)&v7 initWithRandomizationSeedValue:value viewport:viewport.origin.x timeBounds:viewport.origin.y lineVariance:viewport.size.width, viewport.size.height, bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height, *&variance];
}

@end