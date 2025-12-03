@interface PRProximity
- (PRProximity)initWithTime:(double)time range:(float)range;
- (PRProximity)initWithTime:(double)time range:(float)range azimuth:(float)azimuth elevation:(float)elevation;
- (__n128)vector;
@end

@implementation PRProximity

- (PRProximity)initWithTime:(double)time range:(float)range
{
  v7.receiver = self;
  v7.super_class = PRProximity;
  result = [(PRProximity *)&v7 init];
  if (result)
  {
    result->_timestamp = time;
    result->_range = range;
    *&result->_azimuth = 0;
    *&result->_azimuthIsValid = 0;
  }

  return result;
}

- (PRProximity)initWithTime:(double)time range:(float)range azimuth:(float)azimuth elevation:(float)elevation
{
  v11.receiver = self;
  v11.super_class = PRProximity;
  result = [(PRProximity *)&v11 init];
  if (result)
  {
    result->_timestamp = time;
    result->_range = range;
    result->_azimuth = azimuth;
    result->_elevation = elevation;
    *&result->_azimuthIsValid = 257;
  }

  return result;
}

- (__n128)vector
{
  [self azimuth];
  v3 = v2 * 3.14159265 / 180.0;
  [self elevation];
  v5 = v4 * 3.14159265 / 180.0;
  [self range];
  v15 = v6;
  v7 = __sincos_stret(v3);
  [self range];
  v14 = v7.__cosval * v8;
  v9 = __sincos_stret(v5);
  v10.f64[0] = v7.__sinval;
  v10.f64[1] = v14;
  v11.f64[0] = v15;
  v11.f64[1] = v9.__cosval;
  v12 = vmulq_f64(v10, v11);
  *&v12.f64[0] = vcvt_f32_f64(v12);
  v16 = v12;
  [self range];
  return v16;
}

@end