@interface NLSessionActivityHeartRateZonesAccumulator
- (void)updateTargetZone:(id)a3;
@end

@implementation NLSessionActivityHeartRateZonesAccumulator

- (void)updateTargetZone:(id)a3
{
  v4 = a3;
  v5 = self;
  HeartRateZonesAccumulator.updateTargetZone(_:)(v4);
}

@end