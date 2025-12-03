@interface WOCoreLocationProvider
- (WOCoreLocationProvider)init;
- (void)locationManager:(id)manager didFailWithError:(id)error;
- (void)locationManager:(id)manager didUpdateLocations:(id)locations;
- (void)locationManagerDidChangeAuthorization:(id)authorization;
@end

@implementation WOCoreLocationProvider

- (void)locationManagerDidChangeAuthorization:(id)authorization
{
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = (&v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(&self->super.isa + OBJC_IVAR___WOCoreLocationProvider_queue);
  *v9 = v10;
  (*(v6 + 104))(v9, *MEMORY[0x277D85200], v5);
  authorizationCopy = authorization;
  selfCopy = self;
  v13 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v9, v5);
  if (v10)
  {
    authorizationStatus = [authorizationCopy authorizationStatus];
    *(&selfCopy->super.isa + OBJC_IVAR___WOCoreLocationProvider_currentAuthorizationStatus) = authorizationStatus;
    LocationProvider.configureLocationUpdates()();
  }

  else
  {
    __break(1u);
  }
}

- (void)locationManager:(id)manager didUpdateLocations:(id)locations
{
  _sSo17OS_dispatch_queueCMaTm_15(0, &lazy cache variable for type metadata for CLLocation, 0x277CE41F8);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  managerCopy = manager;
  selfCopy = self;
  specialized LocationProvider.locationManager(_:didUpdateLocations:)(v6);
}

- (void)locationManager:(id)manager didFailWithError:(id)error
{
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = (&v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(&self->super.isa + OBJC_IVAR___WOCoreLocationProvider_queue);
  *v9 = v10;
  (*(v6 + 104))(v9, *MEMORY[0x277D85200], v5);
  selfCopy = self;
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