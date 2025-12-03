@interface WebGeolocationPositionInternal
- (WebGeolocationPositionInternal)initWithCoreGeolocationPosition:(void *)position;
- (id).cxx_construct;
@end

@implementation WebGeolocationPositionInternal

- (WebGeolocationPositionInternal)initWithCoreGeolocationPosition:(void *)position
{
  v10.receiver = self;
  v10.super_class = WebGeolocationPositionInternal;
  result = [(WebGeolocationPositionInternal *)&v10 init];
  if (result)
  {
    v5 = *position;
    v6 = *(position + 1);
    result->_position.altitude = *(position + 2);
    *&result->_position.longitude = v6;
    *&result->_position.timestamp = v5;
    v7 = *(position + 3);
    v8 = *(position + 4);
    v9 = *(position + 5);
    result->_position.floorLevel = *(position + 6);
    result->_position.speed = v9;
    result->_position.heading = v8;
    result->_position.altitudeAccuracy = v7;
  }

  return result;
}

- (id).cxx_construct
{
  v2 = vdupq_n_s64(0x7FF8000000000000uLL);
  *(self + 8) = v2;
  *(self + 24) = v2;
  *(self + 40) = 0;
  *(self + 48) = 0;
  *(self + 56) = 0;
  *(self + 64) = 0;
  *(self + 72) = 0;
  *(self + 80) = 0;
  *(self + 88) = 0;
  *(self + 96) = 0;
  *(self + 104) = 0;
  *(self + 112) = 0;
  return self;
}

@end