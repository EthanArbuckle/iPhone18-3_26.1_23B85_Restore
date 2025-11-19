@interface RTMapItemProviderUserCurationParameters
- (RTMapItemProviderUserCurationParameters)initWithDefaultsManager:(id)a3;
- (RTMapItemProviderUserCurationParameters)initWithDistanceThreshold:(double)a3 recentCurationOverrideWindow:(double)a4;
@end

@implementation RTMapItemProviderUserCurationParameters

- (RTMapItemProviderUserCurationParameters)initWithDistanceThreshold:(double)a3 recentCurationOverrideWindow:(double)a4
{
  v4 = self;
  if (a3 <= 0.0)
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
LABEL_9:

      v8 = 0;
      goto LABEL_10;
    }

    *buf = 0;
    v10 = "Invalid parameter not satisfying: distanceThreshold > 0";
LABEL_12:
    _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, v10, buf, 2u);
    goto LABEL_9;
  }

  if (a4 <= 0.0)
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    *buf = 0;
    v10 = "Invalid parameter not satisfying: recentCurationOverrideWindow > 0";
    goto LABEL_12;
  }

  v12.receiver = self;
  v12.super_class = RTMapItemProviderUserCurationParameters;
  v7 = [(RTMapItemProviderUserCurationParameters *)&v12 init];
  if (v7)
  {
    v7->_distanceThreshold = a3;
    v7->_recentCurationOverrideWindow = a4;
  }

  v4 = v7;
  v8 = v4;
LABEL_10:

  return v8;
}

- (RTMapItemProviderUserCurationParameters)initWithDefaultsManager:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 objectForKey:@"RTDefaultsMapItemProviderUserCurationDistanceThreshold"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v6 doubleValue];
      v8 = v7;
    }

    else
    {
      v8 = 500.0;
    }

    v11 = [v5 objectForKey:@"RTDefaultsMapItemProviderUserCurationRecentCurationOverrideWindow"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v11 doubleValue];
      v13 = v12;
    }

    else
    {
      v13 = 60.0;
    }

    self = [(RTMapItemProviderUserCurationParameters *)self initWithDistanceThreshold:v8 recentCurationOverrideWindow:v13];

    v10 = self;
  }

  else
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *v15 = 0;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: defaultsManager", v15, 2u);
    }

    v10 = 0;
  }

  return v10;
}

@end