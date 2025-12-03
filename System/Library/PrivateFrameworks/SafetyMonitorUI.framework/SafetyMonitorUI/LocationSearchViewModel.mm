@interface LocationSearchViewModel
- (_TtC15SafetyMonitorUI23LocationSearchViewModel)init;
- (void)completerDidUpdateResults:(id)results;
- (void)locationManager:(id)manager didFailWithError:(id)error;
- (void)locationManager:(id)manager didUpdateLocations:(id)locations;
@end

@implementation LocationSearchViewModel

- (_TtC15SafetyMonitorUI23LocationSearchViewModel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)locationManager:(id)manager didUpdateLocations:(id)locations
{
  sub_264659B70(0, &unk_27FF77870, 0x277CE41F8);
  v6 = sub_2647857F4();
  managerCopy = manager;
  selfCopy = self;
  sub_2646CFED8(v6);
}

- (void)locationManager:(id)manager didFailWithError:(id)error
{
  managerCopy = manager;
  errorCopy = error;
  selfCopy = self;
  sub_2646D013C(errorCopy);
}

- (void)completerDidUpdateResults:(id)results
{
  resultsCopy = results;
  selfCopy = self;
  LocationSearchViewModel.completerDidUpdateResults(_:)(resultsCopy);
}

@end