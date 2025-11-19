@interface TTRGeoLocationService
- (_TtC15RemindersUICore21TTRGeoLocationService)init;
- (void)locationManager:(id)a3 didUpdateLocations:(id)a4;
- (void)locationManagerDidChangeAuthorization:(id)a3;
@end

@implementation TTRGeoLocationService

- (_TtC15RemindersUICore21TTRGeoLocationService)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)locationManagerDidChangeAuthorization:(id)a3
{
  v4 = a3;
  v5._internal = self;
  internal = v5._internal;
  v5.super.isa = v4;
  TTRGeoLocationService.locationManagerDidChangeAuthorization(_:)(v5);
}

- (void)locationManager:(id)a3 didUpdateLocations:(id)a4
{
  sub_21D0D8CF0(0, &qword_280D17890);
  v6 = sub_21DBFA5EC();
  v7 = a3;
  v8 = self;
  sub_21D88FB80(v6);
}

@end