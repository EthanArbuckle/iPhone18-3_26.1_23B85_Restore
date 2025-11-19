@interface PRProximity
- (PRProximity)initWithTime:(double)a3 range:(float)a4;
- (PRProximity)initWithTime:(double)a3 range:(float)a4 azimuth:(float)a5 elevation:(float)a6;
- (__n128)vector;
@end

@implementation PRProximity

- (PRProximity)initWithTime:(double)a3 range:(float)a4
{
  v7.receiver = self;
  v7.super_class = PRProximity;
  result = [(PRProximity *)&v7 init];
  if (result)
  {
    result->_timestamp = a3;
    result->_range = a4;
    *&result->_azimuth = 0;
    *&result->_azimuthIsValid = 0;
  }

  return result;
}

- (PRProximity)initWithTime:(double)a3 range:(float)a4 azimuth:(float)a5 elevation:(float)a6
{
  v11.receiver = self;
  v11.super_class = PRProximity;
  result = [(PRProximity *)&v11 init];
  if (result)
  {
    result->_timestamp = a3;
    result->_range = a4;
    result->_azimuth = a5;
    result->_elevation = a6;
    *&result->_azimuthIsValid = 257;
  }

  return result;
}

- (__n128)vector
{
  [a1 azimuth];
  v3 = v2 * 3.14159265 / 180.0;
  [a1 elevation];
  v5 = v4 * 3.14159265 / 180.0;
  [a1 range];
  v15 = v6;
  v7 = __sincos_stret(v3);
  [a1 range];
  v14 = v7.__cosval * v8;
  v9 = __sincos_stret(v5);
  v10.f64[0] = v7.__sinval;
  v10.f64[1] = v14;
  v11.f64[0] = v15;
  v11.f64[1] = v9.__cosval;
  v12 = vmulq_f64(v10, v11);
  *&v12.f64[0] = vcvt_f32_f64(v12);
  v16 = v12;
  [a1 range];
  return v16;
}

@end