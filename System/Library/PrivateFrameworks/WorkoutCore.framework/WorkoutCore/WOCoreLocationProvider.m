@interface WOCoreLocationProvider
- (WOCoreLocationProvider)init;
- (void)locationManager:(id)a3 didFailWithError:(id)a4;
- (void)locationManager:(id)a3 didUpdateLocations:(id)a4;
- (void)locationManagerDidChangeAuthorization:(id)a3;
@end

@implementation WOCoreLocationProvider

- (void)locationManagerDidChangeAuthorization:(id)a3
{
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = (&v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(&self->super.isa + OBJC_IVAR___WOCoreLocationProvider_queue);
  *v9 = v10;
  (*(v6 + 104))(v9, *MEMORY[0x277D85200], v5);
  v11 = a3;
  v12 = self;
  v13 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v9, v5);
  if (v10)
  {
    v14 = [v11 authorizationStatus];
    *(&v12->super.isa + OBJC_IVAR___WOCoreLocationProvider_currentAuthorizationStatus) = v14;
    LocationProvider.configureLocationUpdates()();
  }

  else
  {
    __break(1u);
  }
}

- (void)locationManager:(id)a3 didUpdateLocations:(id)a4
{
  _sSo17OS_dispatch_queueCMaTm_15(0, &lazy cache variable for type metadata for CLLocation, 0x277CE41F8);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = a3;
  v8 = self;
  specialized LocationProvider.locationManager(_:didUpdateLocations:)(v6);
}

- (void)locationManager:(id)a3 didFailWithError:(id)a4
{
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = (&v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(&self->super.isa + OBJC_IVAR___WOCoreLocationProvider_queue);
  *v9 = v10;
  (*(v6 + 104))(v9, *MEMORY[0x277D85200], v5);
  v11 = self;
  v12 = v10;
  LOBYTE(self) = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v9, v5);
  if (self)
  {
    LocationProvider.completeLocationRequests(location:)(0);
  }

  else
  {
    __break(1u);
  }
}

- (WOCoreLocationProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end