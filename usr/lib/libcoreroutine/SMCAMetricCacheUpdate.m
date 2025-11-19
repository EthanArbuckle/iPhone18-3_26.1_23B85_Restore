@interface SMCAMetricCacheUpdate
- (SMCAMetricCacheUpdate)init;
@end

@implementation SMCAMetricCacheUpdate

- (SMCAMetricCacheUpdate)init
{
  v3.receiver = self;
  v3.super_class = SMCAMetricCacheUpdate;
  result = [(SMCAMetricCacheUpdate *)&v3 init];
  if (result)
  {
    *&result->_minDistanceBetweenLocationsInTrace = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
    result->_minTimeBetweenLocationsInTrace = 1.79769313e308;
    result->_cacheSize = -1.0;
  }

  return result;
}

@end