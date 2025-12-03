@interface TTRLocationChangeMonitor
- (_TtC15RemindersUICore24TTRLocationChangeMonitor)init;
- (void)locationManager:(id)manager didFailWithError:(id)error;
- (void)locationManager:(id)manager didUpdateLocations:(id)locations;
- (void)locationManagerDidChangeAuthorization:(id)authorization;
@end

@implementation TTRLocationChangeMonitor

- (_TtC15RemindersUICore24TTRLocationChangeMonitor)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)locationManagerDidChangeAuthorization:(id)authorization
{
  authorizationCopy = authorization;
  v5._internal = self;
  internal = v5._internal;
  v5.super.isa = authorizationCopy;
  TTRLocationChangeMonitor.locationManagerDidChangeAuthorization(_:)(v5);
}

- (void)locationManager:(id)manager didUpdateLocations:(id)locations
{
  sub_21D0D8CF0(0, &qword_280D17890);
  v6 = sub_21DBFA5EC();
  managerCopy = manager;
  selfCopy = self;
  sub_21D1B70C8(v6);
}

- (void)locationManager:(id)manager didFailWithError:(id)error
{
  managerCopy = manager;
  errorCopy = error;
  selfCopy = self;
  sub_21D1B7290(errorCopy);
}

@end