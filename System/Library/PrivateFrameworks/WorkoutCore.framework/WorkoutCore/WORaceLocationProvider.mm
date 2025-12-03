@interface WORaceLocationProvider
- (WORaceLocationProvider)init;
- (void)locationDidFailWithError:(id)error locationManager:(id)manager;
- (void)locationDidUpdateWithLocations:(id)locations locationManager:(id)manager;
@end

@implementation WORaceLocationProvider

- (WORaceLocationProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)locationDidUpdateWithLocations:(id)locations locationManager:(id)manager
{
  _sSo17OS_dispatch_queueCMaTm_18(0, &lazy cache variable for type metadata for CLLocation, 0x277CE41F8);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  managerCopy = manager;
  selfCopy = self;
  specialized RaceLocationProvider.locationDidUpdate(locations:locationManager:)(v6);
}

- (void)locationDidFailWithError:(id)error locationManager:(id)manager
{
  errorCopy = error;
  managerCopy = manager;
  selfCopy = self;
  specialized RaceLocationProvider.locationDidFail(error:locationManager:)(errorCopy);
}

@end