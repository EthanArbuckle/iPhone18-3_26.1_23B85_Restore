@interface RTMapItemProviderProactiveExpertsParameters
- (RTMapItemProviderProactiveExpertsParameters)initWithConfidence:(double)confidence;
- (RTMapItemProviderProactiveExpertsParameters)initWithDefaultsManager:(id)manager;
@end

@implementation RTMapItemProviderProactiveExpertsParameters

- (RTMapItemProviderProactiveExpertsParameters)initWithConfidence:(double)confidence
{
  if (RTCommonValidConfidence())
  {
    v9.receiver = self;
    v9.super_class = RTMapItemProviderProactiveExpertsParameters;
    v5 = [(RTMapItemProviderProactiveExpertsParameters *)&v9 init];
    if (v5)
    {
      v5->_confidence = confidence;
    }

    self = v5;
    selfCopy = self;
  }

  else
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: RTCommonValidConfidence(confidence)", buf, 2u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (RTMapItemProviderProactiveExpertsParameters)initWithDefaultsManager:(id)manager
{
  if (manager)
  {
    v4 = [manager objectForKey:@"RTDefaultsMapItemProviderProactiveExpertsConfidenceKey"];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v6 = 0.5;
    if (isKindOfClass)
    {
      [v4 doubleValue];
    }

    self = [(RTMapItemProviderProactiveExpertsParameters *)self initWithConfidence:v6];

    selfCopy = self;
  }

  else
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: defaultsManager", v10, 2u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

@end