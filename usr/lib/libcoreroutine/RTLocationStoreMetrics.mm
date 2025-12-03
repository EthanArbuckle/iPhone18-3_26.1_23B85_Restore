@interface RTLocationStoreMetrics
- (RTLocationStoreMetrics)initWithCount:(unint64_t)count maxIntervalBetweenLocations:(double)locations spread:(double)spread distanceTraveled:(double)traveled;
@end

@implementation RTLocationStoreMetrics

- (RTLocationStoreMetrics)initWithCount:(unint64_t)count maxIntervalBetweenLocations:(double)locations spread:(double)spread distanceTraveled:(double)traveled
{
  v11.receiver = self;
  v11.super_class = RTLocationStoreMetrics;
  result = [(RTLocationStoreMetrics *)&v11 init];
  if (result)
  {
    result->_count = count;
    result->_maxIntervalBetweenLocations = locations;
    result->_spread = spread;
    result->_distanceTraveled = traveled;
  }

  return result;
}

@end