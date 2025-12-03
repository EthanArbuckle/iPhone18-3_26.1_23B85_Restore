@interface NLSessionActivityPowerZonesAccumulator
- (void)updateTargetZone:(id)zone;
@end

@implementation NLSessionActivityPowerZonesAccumulator

- (void)updateTargetZone:(id)zone
{
  zoneCopy = zone;
  selfCopy = self;
  PowerZonesAccumulator.updateTargetZone(_:)(zoneCopy);
}

@end