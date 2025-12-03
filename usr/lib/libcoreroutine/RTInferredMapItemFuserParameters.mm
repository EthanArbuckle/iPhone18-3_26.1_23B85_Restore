@interface RTInferredMapItemFuserParameters
- (RTInferredMapItemFuserParameters)initWithAoiConsiderThreshold:(double)threshold aoiUseThreshold:(double)useThreshold confidenceEqualityEpsilon:(double)epsilon distanceThreshold:(double)distanceThreshold placeholderMultiplier:(double)multiplier;
- (RTInferredMapItemFuserParameters)initWithDefaultsManager:(id)manager;
@end

@implementation RTInferredMapItemFuserParameters

- (RTInferredMapItemFuserParameters)initWithAoiConsiderThreshold:(double)threshold aoiUseThreshold:(double)useThreshold confidenceEqualityEpsilon:(double)epsilon distanceThreshold:(double)distanceThreshold placeholderMultiplier:(double)multiplier
{
  if ((RTCommonValidConfidence() & 1) == 0)
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v14 = "Invalid parameter not satisfying: RTCommonValidConfidence(aoiConsiderThreshold)";
      goto LABEL_16;
    }

LABEL_17:

    selfCopy = 0;
    goto LABEL_18;
  }

  if ((RTCommonValidConfidence() & 1) == 0)
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v14 = "Invalid parameter not satisfying: RTCommonValidConfidence(aoiUseThreshold)";
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  if ((RTCommonValidConfidence() & 1) == 0)
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v14 = "Invalid parameter not satisfying: RTCommonValidConfidence(confidenceEqualityEpsilon)";
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  if (distanceThreshold <= 0.0)
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v14 = "Invalid parameter not satisfying: distanceThreshold > 0";
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  if (multiplier < 1.0)
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v14 = "Invalid parameter not satisfying: placeholderMultiplier >= 1";
LABEL_16:
      _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, v14, buf, 2u);
      goto LABEL_17;
    }

    goto LABEL_17;
  }

  v18.receiver = self;
  v18.super_class = RTInferredMapItemFuserParameters;
  v17 = [(RTInferredMapItemFuserParameters *)&v18 init];
  if (v17)
  {
    v17->_aoiConsiderThreshold = threshold;
    v17->_aoiUseThreshold = useThreshold;
    v17->_confidenceEqualityEpsilon = epsilon;
    v17->_distanceThreshold = distanceThreshold;
    v17->_placeholderMultiplier = multiplier;
  }

  self = v17;
  selfCopy = self;
LABEL_18:

  return selfCopy;
}

- (RTInferredMapItemFuserParameters)initWithDefaultsManager:(id)manager
{
  managerCopy = manager;
  v5 = managerCopy;
  if (managerCopy)
  {
    v6 = [managerCopy objectForKey:@"RTDefaultsInferredMapItemFuserAOIConsiderThreshold"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v6 doubleValue];
      v8 = v7;
    }

    else
    {
      v8 = 0.3;
    }

    v11 = [v5 objectForKey:@"RTDefaultsInferredMapItemFuserAOIUseThreshold"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v11 doubleValue];
      v13 = v12;
    }

    else
    {
      v13 = 0.15;
    }

    v14 = [v5 objectForKey:@"RTDefaultsInferredMapItemFuserConfidenceEqualityEpsilon"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v14 doubleValue];
      v16 = v15;
    }

    else
    {
      v16 = 0.01;
    }

    v17 = [v5 objectForKey:@"RTDefaultsInferredMapItemFuserDistanceThreshold"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v17 doubleValue];
      v19 = v18;
    }

    else
    {
      v19 = 250.0;
    }

    v20 = [v5 objectForKey:@"RTDefaultsInferredMapItemFuserPlaceholderMultiplier"];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v22 = 3.0;
    if (isKindOfClass)
    {
      [v20 doubleValue];
      v22 = v23;
    }

    self = [(RTInferredMapItemFuserParameters *)self initWithAoiConsiderThreshold:v8 aoiUseThreshold:v13 confidenceEqualityEpsilon:v16 distanceThreshold:v19 placeholderMultiplier:v22];

    selfCopy = self;
  }

  else
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *v25 = 0;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: defaultsManager", v25, 2u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

@end