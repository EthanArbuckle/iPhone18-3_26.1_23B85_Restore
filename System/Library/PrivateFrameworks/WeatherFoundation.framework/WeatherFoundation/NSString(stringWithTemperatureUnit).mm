@interface NSString(stringWithTemperatureUnit)
- (id)stringWithTemperatureUnit:()stringWithTemperatureUnit;
@end

@implementation NSString(stringWithTemperatureUnit)

- (id)stringWithTemperatureUnit:()stringWithTemperatureUnit
{
  v3 = @"℃";
  if (a3 == 3)
  {
    v3 = @"K";
  }

  if (a3 == 1)
  {
    v4 = @"℉";
  }

  else
  {
    v4 = v3;
  }

  v5 = [a1 stringByReplacingOccurrencesOfString:@"°" withString:v4];

  return v5;
}

@end