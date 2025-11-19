@interface UPQuiltConfigurationPad
- (UPQuiltConfigurationPad)initWithRandomizationSeedValue:(unint64_t)a3 viewport:(CGRect)a4 timeBounds:(CGRect)a5 lineVariance:(double)a6;
@end

@implementation UPQuiltConfigurationPad

- (UPQuiltConfigurationPad)initWithRandomizationSeedValue:(unint64_t)a3 viewport:(CGRect)a4 timeBounds:(CGRect)a5 lineVariance:(double)a6
{
  v7.receiver = self;
  v7.super_class = UPQuiltConfigurationPad;
  return [(UPQuiltConfiguration *)&v7 initWithRandomizationSeedValue:a3 viewport:a4.origin.x timeBounds:a4.origin.y lineVariance:a4.size.width, a4.size.height, a5.origin.x, a5.origin.y, a5.size.width, a5.size.height, *&a6];
}

@end