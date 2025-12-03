@interface TestPLClusterable
+ (id)clusterableWithLatitude:(double)latitude longitude:(double)longitude time:(double)time;
- (CLLocationCoordinate2D)pl_coordinate;
- (NSString)description;
- (TestPLClusterable)initWithLatitude:(double)latitude longitude:(double)longitude time:(double)time;
@end

@implementation TestPLClusterable

- (CLLocationCoordinate2D)pl_coordinate
{
  latitude = self->_pl_coordinate.latitude;
  longitude = self->_pl_coordinate.longitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

- (NSString)description
{
  v2 = MEMORY[0x1E696AEC0];
  latitude = self->_pl_coordinate.latitude;
  longitude = self->_pl_coordinate.longitude;
  pl_date = [(TestPLClusterable *)self pl_date];
  v6 = [v2 stringWithFormat:@"(%20.20f, %20.20f) at %@", *&latitude, *&longitude, pl_date];

  return v6;
}

- (TestPLClusterable)initWithLatitude:(double)latitude longitude:(double)longitude time:(double)time
{
  v12.receiver = self;
  v12.super_class = TestPLClusterable;
  v8 = [(TestPLClusterable *)&v12 init];
  if (v8)
  {
    v8->_pl_coordinate = CLLocationCoordinate2DMake(latitude, longitude);
    v9 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:time];
    pl_date = v8->_pl_date;
    v8->_pl_date = v9;

    v8->_pl_gpsHorizontalAccuracy = -1.0;
  }

  return v8;
}

+ (id)clusterableWithLatitude:(double)latitude longitude:(double)longitude time:(double)time
{
  v5 = [[TestPLClusterable alloc] initWithLatitude:latitude longitude:longitude time:time];

  return v5;
}

@end