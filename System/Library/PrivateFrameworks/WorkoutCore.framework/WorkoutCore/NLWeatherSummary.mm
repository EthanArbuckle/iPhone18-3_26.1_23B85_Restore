@interface NLWeatherSummary
- (CLLocationCoordinate2D)coordinate;
- (NLWeatherSummary)init;
- (NSString)description;
- (NSString)sourceName;
@end

@implementation NLWeatherSummary

- (CLLocationCoordinate2D)coordinate
{
  v2 = *(self + OBJC_IVAR___NLWeatherSummary_coordinate);
  v3 = *(self + OBJC_IVAR___NLWeatherSummary_coordinate + 8);
  result.longitude = v3;
  result.latitude = v2;
  return result;
}

- (NSString)sourceName
{
  v2 = *(self + OBJC_IVAR___NLWeatherSummary_sourceName + 8);
  if (v2)
  {
    v3 = *(self + OBJC_IVAR___NLWeatherSummary_sourceName);
    v4 = *(self + OBJC_IVAR___NLWeatherSummary_sourceName + 8);

    v5 = MEMORY[0x20F2E6C00](v3, v2);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSString)description
{
  v2 = self;
  v3 = WeatherSummary.description.getter();
  v5 = v4;

  v6 = MEMORY[0x20F2E6C00](v3, v5);

  return v6;
}

- (NLWeatherSummary)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end