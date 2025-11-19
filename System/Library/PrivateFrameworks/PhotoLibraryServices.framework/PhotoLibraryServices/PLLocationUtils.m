@interface PLLocationUtils
+ (BOOL)canUseCoordinate:(CLLocationCoordinate2D)a3;
+ (BOOL)locationIsCoarse:(id)a3;
+ (CLLocationCoordinate2D)defaultLocationCoordinate2D;
+ (PLCartesianCoordinate3D)cartesianCoordinateFromLatitude:(float)a3 longitude:(float)a4;
@end

@implementation PLLocationUtils

+ (PLCartesianCoordinate3D)cartesianCoordinateFromLatitude:(float)a3 longitude:(float)a4
{
  v4 = a3 * 0.017453;
  v5 = __sincosf_stret(a4 * 0.017453);
  v6 = __sincosf_stret(v4);
  v7 = v6.__cosval * v5.__sinval;
  v8 = v6.__cosval * v5.__cosval;
  sinval = v6.__sinval;
  result.var2 = v8;
  result.var1 = sinval;
  result.var0 = v7;
  return result;
}

+ (BOOL)locationIsCoarse:(id)a3
{
  [a3 horizontalAccuracy];

  return [a1 horizontalAccuracyIsCoarse:?];
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

+ (BOOL)canUseCoordinate:(CLLocationCoordinate2D)a3
{
  longitude = a3.longitude;
  latitude = a3.latitude;
  v5 = CLLocationCoordinate2DIsValid(a3);
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