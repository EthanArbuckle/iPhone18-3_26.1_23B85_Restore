@interface NSValue
+ (NSValue)valueWithCoordinate:(CLLocationCoordinate2D)coordinate;
- (CLLocationCoordinate2D)coordinateValue;
@end

@implementation NSValue

+ (NSValue)valueWithCoordinate:(CLLocationCoordinate2D)coordinate
{
  coordinateCopy = coordinate;
  v3 = [NSValue valueWithBytes:&coordinateCopy objCType:"{CLLocationCoordinate2D=dd}"];

  return v3;
}

- (CLLocationCoordinate2D)coordinateValue
{
  v4 = 0.0;
  v5 = 0.0;
  [(NSValue *)self getValue:&v4];
  v2 = v4;
  v3 = v5;
  result.longitude = v3;
  result.latitude = v2;
  return result;
}

@end