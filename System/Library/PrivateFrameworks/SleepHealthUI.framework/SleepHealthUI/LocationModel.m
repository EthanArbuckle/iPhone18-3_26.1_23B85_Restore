@interface LocationModel
- (_TtC13SleepHealthUI13LocationModel)init;
- (void)locationManager:(id)a3 didFailWithError:(id)a4;
- (void)locationManager:(id)a3 didUpdateLocations:(id)a4;
- (void)locationManagerDidChangeAuthorization:(id)a3;
@end

@implementation LocationModel

- (_TtC13SleepHealthUI13LocationModel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)locationManager:(id)a3 didFailWithError:(id)a4
{
  v6 = a3;
  v8 = a4;
  v7 = self;
  sub_269D6DC78(v8);
}

- (void)locationManager:(id)a3 didUpdateLocations:(id)a4
{
  sub_269C1B0B8(0, &qword_28034E668);
  v6 = sub_269D9A7E0();
  v7 = a3;
  v8 = self;
  sub_269D6DF34(v6);
}

- (void)locationManagerDidChangeAuthorization:(id)a3
{
  v4 = a3;
  v5._internal = self;
  internal = v5._internal;
  v5.super.isa = v4;
  LocationModel.locationManagerDidChangeAuthorization(_:)(v5);
}

@end