@interface RTLocationStoreMetrics
- (RTLocationStoreMetrics)initWithCount:(unint64_t)a3 maxIntervalBetweenLocations:(double)a4 spread:(double)a5 distanceTraveled:(double)a6;
@end

@implementation RTLocationStoreMetrics

- (RTLocationStoreMetrics)initWithCount:(unint64_t)a3 maxIntervalBetweenLocations:(double)a4 spread:(double)a5 distanceTraveled:(double)a6
{
  v11.receiver = self;
  v11.super_class = RTLocationStoreMetrics;
  result = [(RTLocationStoreMetrics *)&v11 init];
  if (result)
  {
    result->_count = a3;
    result->_maxIntervalBetweenLocations = a4;
    result->_spread = a5;
    result->_distanceTraveled = a6;
  }

  return result;
}

@end