@interface TTRGeoLocationService
- (_TtC15RemindersUICore21TTRGeoLocationService)init;
- (void)locationManager:(id)manager didUpdateLocations:(id)locations;
- (void)locationManagerDidChangeAuthorization:(id)authorization;
@end

@implementation TTRGeoLocationService

- (_TtC15RemindersUICore21TTRGeoLocationService)init
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
  TTRGeoLocationService.locationManagerDidChangeAuthorization(_:)(v5);
}

- (void)locationManager:(id)manager didUpdateLocations:(id)locations
{
  sub_21D0D8CF0(0, &qword_280D17890);
  v6 = sub_21DBFA5EC();
  managerCopy = manager;
  selfCopy = self;
  sub_21D88FB80(v6);
}

@end