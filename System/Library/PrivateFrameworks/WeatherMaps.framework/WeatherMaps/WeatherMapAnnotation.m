@interface WeatherMapAnnotation
- (CLLocationCoordinate2D)coordinate;
- (NSString)title;
@end

@implementation WeatherMapAnnotation

- (NSString)title
{
  v2 = self;
  sub_220FBF4D8();
  v4 = v3;

  if (v4)
  {
    v5 = sub_220FC26C0();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (CLLocationCoordinate2D)coordinate
{
  v2 = self;
  v3 = sub_220FBF640();
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.longitude = v7;
  result.latitude = v6;
  return result;
}

@end