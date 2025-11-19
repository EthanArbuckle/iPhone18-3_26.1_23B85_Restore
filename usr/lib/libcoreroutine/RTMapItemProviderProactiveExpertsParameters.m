@interface RTMapItemProviderProactiveExpertsParameters
- (RTMapItemProviderProactiveExpertsParameters)initWithConfidence:(double)a3;
- (RTMapItemProviderProactiveExpertsParameters)initWithDefaultsManager:(id)a3;
@end

@implementation RTMapItemProviderProactiveExpertsParameters

- (RTMapItemProviderProactiveExpertsParameters)initWithConfidence:(double)a3
{
  if (RTCommonValidConfidence())
  {
    v9.receiver = self;
    v9.super_class = RTMapItemProviderProactiveExpertsParameters;
    v5 = [(RTMapItemProviderProactiveExpertsParameters *)&v9 init];
    if (v5)
    {
      v5->_confidence = a3;
    }

    self = v5;
    v6 = self;
  }

  else
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: RTCommonValidConfidence(confidence)", buf, 2u);
    }

    v6 = 0;
  }

  return v6;
}

- (RTMapItemProviderProactiveExpertsParameters)initWithDefaultsManager:(id)a3
{
  if (a3)
  {
    v4 = [a3 objectForKey:@"RTDefaultsMapItemProviderProactiveExpertsConfidenceKey"];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v6 = 0.5;
    if (isKindOfClass)
    {
      [v4 doubleValue];
    }

    self = [(RTMapItemProviderProactiveExpertsParameters *)self initWithConfidence:v6];

    v7 = self;
  }

  else
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: defaultsManager", v10, 2u);
    }

    v7 = 0;
  }

  return v7;
}

@end