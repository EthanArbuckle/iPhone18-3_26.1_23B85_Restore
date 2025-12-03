@interface CLLocation
- (id)distanceFromLat:(id)lat andLon:(id)lon;
- (id)getLatitude;
- (id)getLongitude;
@end

@implementation CLLocation

- (id)distanceFromLat:(id)lat andLon:(id)lon
{
  lonCopy = lon;
  latCopy = lat;
  v8 = [CLLocation alloc];
  [latCopy floatValue];
  v10 = v9;

  [lonCopy floatValue];
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