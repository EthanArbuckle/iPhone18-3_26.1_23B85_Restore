@interface CLLocation
- (id)distanceFromLat:(id)a3 andLon:(id)a4;
- (id)getLatitude;
- (id)getLongitude;
@end

@implementation CLLocation

- (id)distanceFromLat:(id)a3 andLon:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [CLLocation alloc];
  [v7 floatValue];
  v10 = v9;

  [v6 floatValue];
  v12 = v11;

  v13 = [v8 initWithLatitude:v10 longitude:v12];
  [(CLLocation *)self distanceFromLocation:v13];
  v14 = [NSNumber numberWithDouble:?];

  return v14;
}

- (id)getLatitude
{
  [(CLLocation *)self coordinate];

  return [NSNumber numberWithDouble:?];
}

- (id)getLongitude
{
  [(CLLocation *)self coordinate];

  return [NSNumber numberWithDouble:v2];
}

@end