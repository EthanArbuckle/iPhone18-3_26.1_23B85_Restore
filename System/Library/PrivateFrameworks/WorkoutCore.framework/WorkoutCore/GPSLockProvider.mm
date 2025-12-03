@interface GPSLockProvider
- (void)dealloc;
- (void)locationDidFailWithError:(id)error locationManager:(id)manager;
- (void)locationDidUpdateWithLocations:(id)locations locationManager:(id)manager;
- (void)locationManagerStateDidChangeWithState:(int64_t)state locationManager:(id)manager;
@end

@implementation GPSLockProvider

- (void)dealloc
{
  selfCopy = self;
  GPSLockProvider.deactivate()();
  v3.receiver = selfCopy;
  v3.super_class = type metadata accessor for GPSLockProvider();
  [(GPSLockProvider *)&v3 dealloc];
}

- (void)locationDidUpdateWithLocations:(id)locations locationManager:(id)manager
{
  type metadata accessor for CLLocation(0, &lazy cache variable for type metadata for CLLocation, 0x277CE41F8);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  managerCopy = manager;
  selfCopy = self;
  specialized GPSLockProvider.locationDidUpdate(locations:locationManager:)(v6);
}

- (void)locationDidFailWithError:(id)error locationManager:(id)manager
{
  errorCopy = error;
  managerCopy = manager;
  selfCopy = self;
  specialized GPSLockProvider.locationDidFail(error:locationManager:)(errorCopy);
}

- (void)locationManagerStateDidChangeWithState:(int64_t)state locationManager:(id)manager
{
  managerCopy = manager;
  selfCopy = self;
  specialized GPSLockProvider.locationManagerStateDidChange(state:locationManager:)(state);
}

@end