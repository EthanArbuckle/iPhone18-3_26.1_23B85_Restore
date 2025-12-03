@interface LocationModel
- (_TtC13SleepHealthUI13LocationModel)init;
- (void)locationManager:(id)manager didFailWithError:(id)error;
- (void)locationManager:(id)manager didUpdateLocations:(id)locations;
- (void)locationManagerDidChangeAuthorization:(id)authorization;
@end

@implementation LocationModel

- (_TtC13SleepHealthUI13LocationModel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)locationManager:(id)manager didFailWithError:(id)error
{
  managerCopy = manager;
  errorCopy = error;
  selfCopy = self;
  sub_269D6DC78(errorCopy);
}

- (void)locationManager:(id)manager didUpdateLocations:(id)locations
{
  sub_269C1B0B8(0, &qword_28034E668);
  v6 = sub_269D9A7E0();
  managerCopy = manager;
  selfCopy = self;
  sub_269D6DF34(v6);
}

- (void)locationManagerDidChangeAuthorization:(id)authorization
{
  authorizationCopy = authorization;
  v5._internal = self;
  internal = v5._internal;
  v5.super.isa = authorizationCopy;
  LocationModel.locationManagerDidChangeAuthorization(_:)(v5);
}

@end