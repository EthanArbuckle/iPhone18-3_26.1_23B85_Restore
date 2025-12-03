@interface PLLocationUtils
+ (BOOL)canUseCoordinate:(CLLocationCoordinate2D)coordinate;
+ (BOOL)locationIsCoarse:(id)coarse;
+ (CLLocationCoordinate2D)defaultLocationCoordinate2D;
+ (PLCartesianCoordinate3D)cartesianCoordinateFromLatitude:(float)latitude longitude:(float)longitude;
@end

@implementation PLLocationUtils

+ (PLCartesianCoordinate3D)cartesianCoordinateFromLatitude:(float)latitude longitude:(float)longitude
{
  v4 = latitude * 0.017453;
  v5 = __sincosf_stret(longitude * 0.017453);
  v6 = __sincosf_stret(v4);
  v7 = v6.__cosval * v5.__sinval;
  v8 = v6.__cosval * v5.__cosval;
  sinval = v6.__sinval;
  result.var2 = v8;
  result.var1 = sinval;
  result.var0 = v7;
  return result;
}

+ (BOOL)locationIsCoarse:(id)coarse
{
  [coarse horizontalAccuracy];

  return [self horizontalAccuracyIsCoarse:?];
}

+ (CLLocationCoordinate2D)defaultLocationCoordinate2D
{
  v4 = CLLocationCoordinate2DMake(-180.0, -180.0);
  longitude = v4.longitude;
  latitude = v4.latitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

+ (BOOL)canUseCoordinate:(CLLocationCoordinate2D)coordinate
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  v5 = CLLocationCoordinate2DIsValid(coordinate);
  if (v5)
  {
    v6 = latitude != 0.0;
    if (longitude != 0.0)
    {
      v6 = 1;
    }

    LOBYTE(v5) = v6 && (longitude != -100.0 || latitude != 40.0);
  }

  return v5;
}

@end