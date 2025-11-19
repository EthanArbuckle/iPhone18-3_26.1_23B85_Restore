@interface TestPLClusterable
+ (id)clusterableWithLatitude:(double)a3 longitude:(double)a4 time:(double)a5;
- (CLLocationCoordinate2D)pl_coordinate;
- (NSString)description;
- (TestPLClusterable)initWithLatitude:(double)a3 longitude:(double)a4 time:(double)a5;
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
  v5 = [(TestPLClusterable *)self pl_date];
  v6 = [v2 stringWithFormat:@"(%20.20f, %20.20f) at %@", *&latitude, *&longitude, v5];

  return v6;
}

- (TestPLClusterable)initWithLatitude:(double)a3 longitude:(double)a4 time:(double)a5
{
  v12.receiver = self;
  v12.super_class = TestPLClusterable;
  v8 = [(TestPLClusterable *)&v12 init];
  if (v8)
  {
    v8->_pl_coordinate = CLLocationCoordinate2DMake(a3, a4);
    v9 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:a5];
    pl_date = v8->_pl_date;
    v8->_pl_date = v9;

    v8->_pl_gpsHorizontalAccuracy = -1.0;
  }

  return v8;
}

+ (id)clusterableWithLatitude:(double)a3 longitude:(double)a4 time:(double)a5
{
  v5 = [[TestPLClusterable alloc] initWithLatitude:a3 longitude:a4 time:a5];

  return v5;
}

@end