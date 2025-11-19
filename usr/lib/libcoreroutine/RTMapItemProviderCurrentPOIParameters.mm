@interface RTMapItemProviderCurrentPOIParameters
- (RTMapItemProviderCurrentPOIParameters)initWithDefaultsManager:(id)a3;
- (RTMapItemProviderCurrentPOIParameters)initWithDistanceThreshold:(double)a3;
@end

@implementation RTMapItemProviderCurrentPOIParameters

- (RTMapItemProviderCurrentPOIParameters)initWithDistanceThreshold:(double)a3
{
  v3 = self;
  if (a3 <= 0.0)
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
      v5->_distanceThreshold = a3;
    }

    v3 = v5;
    v6 = v3;
  }

  return v6;
}

- (RTMapItemProviderCurrentPOIParameters)initWithDefaultsManager:(id)a3
{
  if (a3)
  {
    v4 = [a3 objectForKey:@"RTDefaultsMapItemProviderCurrentPOIDistanceThreshold"];
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

    v7 = self;
  }

  else
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: defaultsManager", v9, 2u);
    }

    v7 = 0;
  }

  return v7;
}

@end