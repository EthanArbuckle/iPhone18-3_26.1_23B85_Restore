@interface LocationSearchViewModel
- (_TtC15SafetyMonitorUI23LocationSearchViewModel)init;
- (void)completerDidUpdateResults:(id)a3;
- (void)locationManager:(id)a3 didFailWithError:(id)a4;
- (void)locationManager:(id)a3 didUpdateLocations:(id)a4;
@end

@implementation LocationSearchViewModel

- (_TtC15SafetyMonitorUI23LocationSearchViewModel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)locationManager:(id)a3 didUpdateLocations:(id)a4
{
  sub_264659B70(0, &unk_27FF77870, 0x277CE41F8);
  v6 = sub_2647857F4();
  v7 = a3;
  v8 = self;
  sub_2646CFED8(v6);
}

- (void)locationManager:(id)a3 didFailWithError:(id)a4
{
  v6 = a3;
  v8 = a4;
  v7 = self;
  sub_2646D013C(v8);
}

- (void)completerDidUpdateResults:(id)a3
{
  v4 = a3;
  v5 = self;
  LocationSearchViewModel.completerDidUpdateResults(_:)(v4);
}

@end