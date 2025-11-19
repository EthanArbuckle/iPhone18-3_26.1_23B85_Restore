@interface RTMapItemProviderBaseParameters
- (RTMapItemProviderBaseParameters)initWithDefaultsManager:(id)a3;
- (RTMapItemProviderBaseParameters)initWithLocationUncertaintyMax:(double)a3 locationUncertaintyMin:(double)a4 mapItemUncertaintyMax:(double)a5 mapItemUncertaintyMin:(double)a6;
@end

@implementation RTMapItemProviderBaseParameters

- (RTMapItemProviderBaseParameters)initWithLocationUncertaintyMax:(double)a3 locationUncertaintyMin:(double)a4 mapItemUncertaintyMax:(double)a5 mapItemUncertaintyMin:(double)a6
{
  v6 = self;
  if (a4 <= 0.0)
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v10 = "Invalid parameter not satisfying: locationUncertaintyMin > 0.0";
      goto LABEL_18;
    }

    goto LABEL_6;
  }

  if (a3 < a4)
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v10 = "Invalid parameter not satisfying: locationUncertaintyMax >= locationUncertaintyMin";
LABEL_18:
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, v10, buf, 2u);
      goto LABEL_6;
    }

    goto LABEL_6;
  }

  if (a6 <= 0.0)
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v10 = "Invalid parameter not satisfying: mapItemUncertaintyMin > 0.0";
      goto LABEL_18;
    }

    goto LABEL_6;
  }

  if (a5 < a6)
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v10 = "Invalid parameter not satisfying: mapItemUncertaintyMax >= mapItemUncertaintyMin";
      goto LABEL_18;
    }

LABEL_6:

    v11 = 0;
    goto LABEL_7;
  }

  v16.receiver = self;
  v16.super_class = RTMapItemProviderBaseParameters;
  v15 = [(RTMapItemProviderBaseParameters *)&v16 init];
  if (v15)
  {
    v15->_locationUncertaintyMax = a3;
    v15->_locationUncertaintyMin = a4;
    v15->_mapItemUncertaintyMax = a5;
    v15->_mapItemUncertaintyMin = a6;
  }

  v6 = v15;
  v11 = v6;
LABEL_7:

  return v11;
}

- (RTMapItemProviderBaseParameters)initWithDefaultsManager:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 objectForKey:@"RTDefaultsMapItemProviderBaseLocationUncertaintyMax"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v6 doubleValue];
      v8 = v7;
    }

    else
    {
      v8 = 200.0;
    }

    v11 = [v5 objectForKey:@"RTDefaultsMapItemProviderBaseLocationUncertaintyMin"];
    objc_opt_class();
    v12 = 1.0;
    if (objc_opt_isKindOfClass())
    {
      [v11 doubleValue];
      v12 = v13;
    }

    v14 = [v5 objectForKey:@"RTDefaultsMapItemProviderBaseMapItemUncertaintyMax"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v14 doubleValue];
      v16 = v15;
    }

    else
    {
      v16 = 250.0;
    }

    v17 = [v5 objectForKey:@"RTDefaultsMapItemProviderBaseMapItemUncertaintyMin"];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v19 = 1.0;
    if (isKindOfClass)
    {
      [v17 doubleValue];
      v19 = v20;
    }

    self = [(RTMapItemProviderBaseParameters *)self initWithLocationUncertaintyMax:v8 locationUncertaintyMin:v12 mapItemUncertaintyMax:v16 mapItemUncertaintyMin:v19];

    v10 = self;
  }

  else
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *v22 = 0;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: defaultsManager", v22, 2u);
    }

    v10 = 0;
  }

  return v10;
}

@end