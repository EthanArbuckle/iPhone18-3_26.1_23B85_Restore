@interface WORaceLocationProvider
- (WORaceLocationProvider)init;
- (void)locationDidFailWithError:(id)a3 locationManager:(id)a4;
- (void)locationDidUpdateWithLocations:(id)a3 locationManager:(id)a4;
@end

@implementation WORaceLocationProvider

- (WORaceLocationProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)locationDidUpdateWithLocations:(id)a3 locationManager:(id)a4
{
  _sSo17OS_dispatch_queueCMaTm_18(0, &lazy cache variable for type metadata for CLLocation, 0x277CE41F8);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = a4;
  v8 = self;
  specialized RaceLocationProvider.locationDidUpdate(locations:locationManager:)(v6);
}

- (void)locationDidFailWithError:(id)a3 locationManager:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  specialized RaceLocationProvider.locationDidFail(error:locationManager:)(v6);
}

@end