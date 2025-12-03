@interface RTMapItemProviderCurrentPOIParameters
- (RTMapItemProviderCurrentPOIParameters)initWithDefaultsManager:(id)manager;
- (RTMapItemProviderCurrentPOIParameters)initWithDistanceThreshold:(double)threshold;
@end

@implementation RTMapItemProviderCurrentPOIParameters

- (RTMapItemProviderCurrentPOIParameters)initWithDistanceThreshold:(double)threshold
{
  selfCopy = self;
  if (threshold <= 0.0)
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: distanceThreshold > 0", buf, 2u);
    }

    v6 = 0;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = RTMapItemProviderCurrentPOIParameters;
    v5 = [(RTMapItemProviderCurrentPOIParameters *)&v9 init];
    if (v5)
    {
      v5->_distanceThreshold = threshold;
    }

    selfCopy = v5;
    v6 = selfCopy;
  }

  return v6;
}

- (RTMapItemProviderCurrentPOIParameters)initWithDefaultsManager:(id)manager
{
  if (manager)
  {
    v4 = [manager objectForKey:@"RTDefaultsMapItemProviderCurrentPOIDistanceThreshold"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v4 doubleValue];
    }

    else
    {
      v5 = 50.0;
    }

    self = [(RTMapItemProviderCurrentPOIParameters *)self initWithDistanceThreshold:v5];

    selfCopy = self;
  }

  else
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: defaultsManager", v9, 2u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

@end