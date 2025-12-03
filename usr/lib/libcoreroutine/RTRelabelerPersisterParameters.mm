@interface RTRelabelerPersisterParameters
- (RTRelabelerPersisterParameters)initWithDefaultsManager:(id)manager;
- (RTRelabelerPersisterParameters)initWithMaxCollapseIterations:(unint64_t)iterations placeholderCollapseDistanceThreshold:(double)threshold reverseGeocodeLeewayDistance:(double)distance reverseGeocodePlaceFetchDistanceThreshold:(double)distanceThreshold unconcreteLOICollapseDistanceThreshold:(double)collapseDistanceThreshold visitAdjacencyMergeThreshold:(double)mergeThreshold;
@end

@implementation RTRelabelerPersisterParameters

- (RTRelabelerPersisterParameters)initWithMaxCollapseIterations:(unint64_t)iterations placeholderCollapseDistanceThreshold:(double)threshold reverseGeocodeLeewayDistance:(double)distance reverseGeocodePlaceFetchDistanceThreshold:(double)distanceThreshold unconcreteLOICollapseDistanceThreshold:(double)collapseDistanceThreshold visitAdjacencyMergeThreshold:(double)mergeThreshold
{
  selfCopy = self;
  if (threshold <= 0.0)
  {
    v17 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    *buf = 0;
    v18 = "Invalid parameter not satisfying: placeholderCollapseDistanceThreshold > 0";
LABEL_19:
    _os_log_error_impl(&dword_2304B3000, v17, OS_LOG_TYPE_ERROR, v18, buf, 2u);
    goto LABEL_20;
  }

  if (distance <= 0.0)
  {
    v17 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    *buf = 0;
    v18 = "Invalid parameter not satisfying: reverseGeocodeLeewayDistance > 0";
    goto LABEL_19;
  }

  if (distanceThreshold <= 0.0)
  {
    v17 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    *buf = 0;
    v18 = "Invalid parameter not satisfying: reverseGeocodePlaceFetchDistanceThreshold > 0";
    goto LABEL_19;
  }

  if (collapseDistanceThreshold <= 0.0)
  {
    v17 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    *buf = 0;
    v18 = "Invalid parameter not satisfying: unconcreteLOICollapseDistanceThreshold > 0";
    goto LABEL_19;
  }

  if (mergeThreshold <= 0.0)
  {
    v17 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v18 = "Invalid parameter not satisfying: visitAdjacencyMergeThreshold > 0";
      goto LABEL_19;
    }

LABEL_20:

    v16 = 0;
    goto LABEL_21;
  }

  v20.receiver = self;
  v20.super_class = RTRelabelerPersisterParameters;
  v15 = [(RTRelabelerPersisterParameters *)&v20 init];
  if (v15)
  {
    v15->_maxCollapseIterations = iterations;
    v15->_placeholderCollapseDistanceThreshold = threshold;
    v15->_reverseGeocodeLeewayDistance = distance;
    v15->_reverseGeocodePlaceFetchDistanceThreshold = distanceThreshold;
    v15->_unconcreteLOICollapseDistanceThreshold = collapseDistanceThreshold;
    v15->_visitAdjacencyMergeThreshold = mergeThreshold;
  }

  selfCopy = v15;
  v16 = selfCopy;
LABEL_21:

  return v16;
}

- (RTRelabelerPersisterParameters)initWithDefaultsManager:(id)manager
{
  managerCopy = manager;
  v5 = managerCopy;
  if (managerCopy)
  {
    v6 = [managerCopy objectForKey:@"RTDefaultsRelabelerPersisterMaxCollapseIterations"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      unsignedIntegerValue = [v6 unsignedIntegerValue];
    }

    else
    {
      unsignedIntegerValue = 3;
    }

    v10 = [v5 objectForKey:@"RTDefaultsRelabelerPersisterReverseGeocodeCollapseThreshold"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v10 doubleValue];
      v12 = v11;
    }

    else
    {
      v12 = 125.0;
    }

    v13 = [v5 objectForKey:@"RTDefaultsRelabelerPersisterReverseGeocodeLeewayDistance"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v13 doubleValue];
      v15 = v14;
    }

    else
    {
      v15 = 50.0;
    }

    v16 = [v5 objectForKey:@"RTDefaultsRelabelerPersisterReverseGeocodePlaceFetchDistanceThreshold"];
    objc_opt_class();
    v17 = 150.0;
    v18 = 150.0;
    if (objc_opt_isKindOfClass())
    {
      [v16 doubleValue];
      v18 = v19;
    }

    v20 = [v5 objectForKey:@"RTDefaultsRelabelerPersisterUnconcreteLOICollapseDistanceThreshold"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v20 doubleValue];
      v17 = v21;
    }

    v22 = [v5 objectForKey:@"RTDefaultsRelabelerPersisterVisitAdjacencyMergeThreshold"];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v24 = 15.0;
    if (isKindOfClass)
    {
      [v22 doubleValue];
      v24 = v25;
    }

    self = [(RTRelabelerPersisterParameters *)self initWithMaxCollapseIterations:unsignedIntegerValue placeholderCollapseDistanceThreshold:v12 reverseGeocodeLeewayDistance:v15 reverseGeocodePlaceFetchDistanceThreshold:v18 unconcreteLOICollapseDistanceThreshold:v17 visitAdjacencyMergeThreshold:v24];

    selfCopy = self;
  }

  else
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v27 = 0;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: defaultsManager", v27, 2u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

@end