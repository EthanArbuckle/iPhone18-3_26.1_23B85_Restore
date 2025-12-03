@interface RTMapItemProviderUserCurationParameters
- (RTMapItemProviderUserCurationParameters)initWithDefaultsManager:(id)manager;
- (RTMapItemProviderUserCurationParameters)initWithDistanceThreshold:(double)threshold recentCurationOverrideWindow:(double)window;
@end

@implementation RTMapItemProviderUserCurationParameters

- (RTMapItemProviderUserCurationParameters)initWithDistanceThreshold:(double)threshold recentCurationOverrideWindow:(double)window
{
  selfCopy = self;
  if (threshold <= 0.0)
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

  if (window <= 0.0)
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
    v7->_distanceThreshold = threshold;
    v7->_recentCurationOverrideWindow = window;
  }

  selfCopy = v7;
  v8 = selfCopy;
LABEL_10:

  return v8;
}

- (RTMapItemProviderUserCurationParameters)initWithDefaultsManager:(id)manager
{
  managerCopy = manager;
  v5 = managerCopy;
  if (managerCopy)
  {
    v6 = [managerCopy objectForKey:@"RTDefaultsMapItemProviderUserCurationDistanceThreshold"];
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

    selfCopy = self;
  }

  else
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *v15 = 0;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: defaultsManager", v15, 2u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

@end