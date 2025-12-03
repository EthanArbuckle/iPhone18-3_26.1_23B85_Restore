@interface NLSessionActivityHeartRateZonesAccumulator
- (void)updateTargetZone:(id)zone;
@end

@implementation NLSessionActivityHeartRateZonesAccumulator

- (void)updateTargetZone:(id)zone
{
  zoneCopy = zone;
  selfCopy = self;
  HeartRateZonesAccumulator.updateTargetZone(_:)(zoneCopy);
}

@end