@interface GPSLockProvider
- (void)dealloc;
- (void)locationDidFailWithError:(id)a3 locationManager:(id)a4;
- (void)locationDidUpdateWithLocations:(id)a3 locationManager:(id)a4;
- (void)locationManagerStateDidChangeWithState:(int64_t)a3 locationManager:(id)a4;
@end

@implementation GPSLockProvider

- (void)dealloc
{
  v2 = self;
  GPSLockProvider.deactivate()();
  v3.receiver = v2;
  v3.super_class = type metadata accessor for GPSLockProvider();
  [(GPSLockProvider *)&v3 dealloc];
}

- (void)locationDidUpdateWithLocations:(id)a3 locationManager:(id)a4
{
  type metadata accessor for CLLocation(0, &lazy cache variable for type metadata for CLLocation, 0x277CE41F8);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = a4;
  v8 = self;
  specialized GPSLockProvider.locationDidUpdate(locations:locationManager:)(v6);
}

- (void)locationDidFailWithError:(id)a3 locationManager:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  specialized GPSLockProvider.locationDidFail(error:locationManager:)(v6);
}

- (void)locationManagerStateDidChangeWithState:(int64_t)a3 locationManager:(id)a4
{
  v6 = a4;
  v7 = self;
  specialized GPSLockProvider.locationManagerStateDidChange(state:locationManager:)(a3);
}

@end