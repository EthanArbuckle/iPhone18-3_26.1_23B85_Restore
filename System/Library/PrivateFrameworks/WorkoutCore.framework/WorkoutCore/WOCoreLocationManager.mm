@interface WOCoreLocationManager
+ (WOCoreLocationManager)sharedManager;
- (BOOL)cacheLastKnownLocation:(id)a3;
- (CLLocation)lastLocation;
- (NSDate)lastLocationReceivedDate;
- (int64_t)currentState;
- (void)isAuthorizedAsync:(id)a3;
- (void)locationManager:(id)a3 didFailWithError:(id)a4;
- (void)locationManager:(id)a3 didUpdateLocations:(id)a4;
- (void)locationManagerDidChangeAuthorization:(id)a3;
- (void)requestSingleLocationUpdateWithTimeout:(double)a3 requestedAccuracy:(double)a4 acceptableAccuracy:(double)a5 completion:(id)a6;
- (void)setLastLocation:(id)a3;
- (void)setLastLocationReceivedDate:(id)a3;
@end

@implementation WOCoreLocationManager

+ (WOCoreLocationManager)sharedManager
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v3 = static LocationManager.shared;

  return v3;
}

- (CLLocation)lastLocation
{
  v3 = OBJC_IVAR___WOCoreLocationManager_lastLocation;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setLastLocation:(id)a3
{
  v5 = OBJC_IVAR___WOCoreLocationManager_lastLocation;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = a3;
  v7 = a3;
}

- (NSDate)lastLocationReceivedDate
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v14 - v5;
  v7 = OBJC_IVAR___WOCoreLocationManager_lastLocationReceivedDate;
  swift_beginAccess();
  outlined init with copy of Date?(self + v7, v6);
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 48))(v6, 1, v8);
  v11 = 0;
  if (v10 != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v9 + 8))(v6, v8);
    v11 = isa;
  }

  return v11;
}

- (void)setLastLocationReceivedDate:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v13 - v7;
  if (a3)
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = type metadata accessor for Date();
    (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  }

  else
  {
    v10 = type metadata accessor for Date();
    (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  }

  v11 = OBJC_IVAR___WOCoreLocationManager_lastLocationReceivedDate;
  swift_beginAccess();
  v12 = self;
  outlined assign with take of Date?(v8, self + v11);
  swift_endAccess();
}

- (int64_t)currentState
{
  v2 = self;
  v3 = LocationManager.currentState.getter();

  return v3;
}

- (void)requestSingleLocationUpdateWithTimeout:(double)a3 requestedAccuracy:(double)a4 acceptableAccuracy:(double)a5 completion:(id)a6
{
  v10 = _Block_copy(a6);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  v12 = self;
  LocationManager.requestSingleLocationUpdate(timeout:requestedAccuracy:acceptableAccuracy:completion:)(partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned CLLocation?) -> (), v11, a3, a4, a5);
}

- (void)isAuthorizedAsync:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = self;
  LocationManager.isAuthorizedAsync(_:)(partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned ObjCBool) -> (), v5);
}

- (BOOL)cacheLastKnownLocation:(id)a3
{
  v4 = a3;
  v5 = self;
  v6.super.isa = v4;
  LOBYTE(self) = LocationManager.cacheLastKnownLocation(_:)(v6);

  return self & 1;
}

- (void)locationManagerDidChangeAuthorization:(id)a3
{
  v4 = a3;
  v5._internal = self;
  internal = v5._internal;
  v5.super.isa = v4;
  LocationManager.locationManagerDidChangeAuthorization(_:)(v5);
}

- (void)locationManager:(id)a3 didUpdateLocations:(id)a4
{
  _sSo10CLLocationCMaTm_1(0, &lazy cache variable for type metadata for CLLocation, 0x277CE41F8);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = a3;
  v8 = self;
  specialized LocationManager.locationManager(_:didUpdateLocations:)(v6);
}

- (void)locationManager:(id)a3 didFailWithError:(id)a4
{
  v6 = a3;
  v8 = a4;
  v7 = self;
  specialized LocationManager.locationManager(_:didFailWithError:)(v8);
}

@end