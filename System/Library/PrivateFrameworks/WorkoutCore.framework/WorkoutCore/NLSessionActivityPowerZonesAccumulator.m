@interface NLSessionActivityPowerZonesAccumulator
- (void)updateTargetZone:(id)a3;
@end

@implementation NLSessionActivityPowerZonesAccumulator

- (void)updateTargetZone:(id)a3
{
  v4 = a3;
  v5 = self;
  PowerZonesAccumulator.updateTargetZone(_:)(v4);
}

@end