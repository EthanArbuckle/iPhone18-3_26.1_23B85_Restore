@interface CyclingSensorsStore.CentralManagerDelegate
- (_TtCC11WorkoutCore19CyclingSensorsStoreP33_BFB47E54904849BCE37B11B0EFE4650622CentralManagerDelegate)init;
- (void)centralManagerDidUpdateState:(id)state;
@end

@implementation CyclingSensorsStore.CentralManagerDelegate

- (void)centralManagerDidUpdateState:(id)state
{
  stateCopy = state;
  selfCopy = self;
  CyclingSensorsStore.CentralManagerDelegate.centralManagerDidUpdateState(_:)(stateCopy);
}

- (_TtCC11WorkoutCore19CyclingSensorsStoreP33_BFB47E54904849BCE37B11B0EFE4650622CentralManagerDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end