@interface RTMapItemProviderEventKitParameters
- (RTMapItemProviderEventKitParameters)initWithConfidence:(double)a3;
- (RTMapItemProviderEventKitParameters)initWithDefaultsManager:(id)a3;
@end

@implementation RTMapItemProviderEventKitParameters

- (RTMapItemProviderEventKitParameters)initWithConfidence:(double)a3
{
  if (RTCommonValidConfidence())
  {
    v9.receiver = self;
    v9.super_class = RTMapItemProviderEventKitParameters;
    v5 = [(RTMapItemProviderEventKitParameters *)&v9 init];
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

- (RTMapItemProviderEventKitParameters)initWithDefaultsManager:(id)a3
{
  if (a3)
  {
    v4 = [a3 objectForKey:@"RTDefaultsMapItemProviderEventKitConfidence"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v4 doubleValue];
    }

    else
    {
      v5 = 0.95;
    }

    self = [(RTMapItemProviderEventKitParameters *)self initWithConfidence:v5];

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