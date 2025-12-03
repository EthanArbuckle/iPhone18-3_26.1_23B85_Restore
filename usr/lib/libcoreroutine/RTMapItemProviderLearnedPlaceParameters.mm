@interface RTMapItemProviderLearnedPlaceParameters
- (RTMapItemProviderLearnedPlaceParameters)initWithDefaultsManager:(id)manager;
- (RTMapItemProviderLearnedPlaceParameters)initWithMaxDistanceThreshold:(double)threshold minDistanceThreshold:(double)distanceThreshold softDistanceThreshold:(double)softDistanceThreshold homeConfidence:(double)confidence workConfidence:(double)workConfidence schoolConfidence:(double)schoolConfidence gymConfidence:(double)gymConfidence nonRevGeoConfidence:(double)self0 revGeoConfidence:(double)self1 revGeoSourceMask:(unint64_t)self2 removeSourceMask:(unint64_t)self3;
@end

@implementation RTMapItemProviderLearnedPlaceParameters

- (RTMapItemProviderLearnedPlaceParameters)initWithMaxDistanceThreshold:(double)threshold minDistanceThreshold:(double)distanceThreshold softDistanceThreshold:(double)softDistanceThreshold homeConfidence:(double)confidence workConfidence:(double)workConfidence schoolConfidence:(double)schoolConfidence gymConfidence:(double)gymConfidence nonRevGeoConfidence:(double)self0 revGeoConfidence:(double)self1 revGeoSourceMask:(unint64_t)self2 removeSourceMask:(unint64_t)self3
{
  if (threshold <= 0.0)
  {
    v24 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v25 = "Invalid parameter not satisfying: maxDistanceThreshold > 0";
      goto LABEL_31;
    }

LABEL_32:

    selfCopy = 0;
    goto LABEL_33;
  }

  if (distanceThreshold <= 0.0)
  {
    v24 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v25 = "Invalid parameter not satisfying: minDistanceThreshold > 0";
      goto LABEL_31;
    }

    goto LABEL_32;
  }

  if (softDistanceThreshold <= 0.0)
  {
    v24 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v25 = "Invalid parameter not satisfying: softDistanceThreshold > 0";
      goto LABEL_31;
    }

    goto LABEL_32;
  }

  if ((RTCommonValidConfidence() & 1) == 0)
  {
    v24 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v25 = "Invalid parameter not satisfying: RTCommonValidConfidence(homeConfidence)";
      goto LABEL_31;
    }

    goto LABEL_32;
  }

  if ((RTCommonValidConfidence() & 1) == 0)
  {
    v24 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v25 = "Invalid parameter not satisfying: RTCommonValidConfidence(workConfidence)";
      goto LABEL_31;
    }

    goto LABEL_32;
  }

  if ((RTCommonValidConfidence() & 1) == 0)
  {
    v24 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v25 = "Invalid parameter not satisfying: RTCommonValidConfidence(schoolConfidence)";
      goto LABEL_31;
    }

    goto LABEL_32;
  }

  if ((RTCommonValidConfidence() & 1) == 0)
  {
    v24 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v25 = "Invalid parameter not satisfying: RTCommonValidConfidence(gymConfidence)";
      goto LABEL_31;
    }

    goto LABEL_32;
  }

  if ((RTCommonValidConfidence() & 1) == 0)
  {
    v24 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v25 = "Invalid parameter not satisfying: RTCommonValidConfidence(nonRevGeoConfidence)";
      goto LABEL_31;
    }

    goto LABEL_32;
  }

  if ((RTCommonValidConfidence() & 1) == 0)
  {
    v24 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v25 = "Invalid parameter not satisfying: RTCommonValidConfidence(revGeoConfidence)";
      goto LABEL_31;
    }

    goto LABEL_32;
  }

  if ((mask & 0xFFFFFFFFFFC00020) != 0)
  {
    v24 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v25 = "Invalid parameter not satisfying: RTMapItemSourceValid(revGeoSourceMask)";
LABEL_31:
      _os_log_error_impl(&dword_2304B3000, v24, OS_LOG_TYPE_ERROR, v25, buf, 2u);
      goto LABEL_32;
    }

    goto LABEL_32;
  }

  if ((sourceMask & 0xFFFFFFFFFFC00020) != 0)
  {
    v24 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_32;
    }

    *buf = 0;
    v25 = "Invalid parameter not satisfying: RTMapItemSourceValid(removeSourceMask)";
    goto LABEL_31;
  }

  v29.receiver = self;
  v29.super_class = RTMapItemProviderLearnedPlaceParameters;
  v28 = [(RTMapItemProviderLearnedPlaceParameters *)&v29 init];
  if (v28)
  {
    v28->_maxDistanceThreshold = threshold;
    v28->_minDistanceThreshold = distanceThreshold;
    v28->_softDistanceThreshold = softDistanceThreshold;
    v28->_homeConfidence = confidence;
    v28->_workConfidence = workConfidence;
    v28->_schoolConfidence = schoolConfidence;
    v28->_gymConfidence = gymConfidence;
    v28->_nonRevGeoConfidence = geoConfidence;
    v28->_revGeoConfidence = revGeoConfidence;
    v28->_revGeoSourceMask = mask;
    v28->_removeSourceMask = sourceMask;
  }

  self = v28;
  selfCopy = self;
LABEL_33:

  return selfCopy;
}

- (RTMapItemProviderLearnedPlaceParameters)initWithDefaultsManager:(id)manager
{
  managerCopy = manager;
  v5 = managerCopy;
  if (managerCopy)
  {
    v6 = [managerCopy objectForKey:@"RTDefaultsMapItemProviderLearnedPlaceMaxDistanceThreshold"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v6 doubleValue];
      v44 = v7;
    }

    else
    {
      v44 = 200.0;
    }

    v10 = [v5 objectForKey:@"RTDefaultsMapItemProviderLearnedPlaceMinDistanceThreshold"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v10 doubleValue];
      v12 = v11;
    }

    else
    {
      v12 = 150.0;
    }

    v13 = [v5 objectForKey:@"RTDefaultsMapItemProviderLearnedPlaceSoftDistanceThreshold"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v13 doubleValue];
      v15 = v14;
    }

    else
    {
      v15 = 300.0;
    }

    v16 = [v5 objectForKey:@"RTDefaultsMapItemProviderLearnedPlaceHomeConfidence"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v16 doubleValue];
      v18 = v17;
    }

    else
    {
      v18 = 0.975;
    }

    v19 = [v5 objectForKey:@"RTDefaultsMapItemProviderLearnedPlaceWorkConfidence"];
    objc_opt_class();
    v20 = 0.95;
    v21 = 0.95;
    if (objc_opt_isKindOfClass())
    {
      [v19 doubleValue];
      v21 = v22;
    }

    v23 = [v5 objectForKey:@"RTDefaultsMapItemProviderLearnedPlaceSchoolConfidence"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v23 doubleValue];
      v20 = v24;
    }

    v41 = v23;
    v25 = [v5 objectForKey:@"RTDefaultsMapItemProviderLearnedPlaceGymConfidence"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v25 doubleValue];
      v27 = v26;
    }

    else
    {
      v27 = 0.9;
    }

    v28 = [v5 objectForKey:@"RTDefaultsMapItemProviderLearnedPlaceNonRevGeoConfidence"];
    objc_opt_class();
    v46 = v6;
    if (objc_opt_isKindOfClass())
    {
      [v28 doubleValue];
      v30 = v29;
    }

    else
    {
      v30 = 0.3;
    }

    v42 = v19;
    v45 = v10;
    v31 = [v5 objectForKey:@"RTDefaultsMapItemProviderLearnedPlaceRevGeoConfidence"];
    objc_opt_class();
    v32 = 0.25;
    if (objc_opt_isKindOfClass())
    {
      [v31 doubleValue];
      v32 = v33;
    }

    v43 = v16;
    selfCopy = self;
    v35 = [v5 objectForKey:@"RTDefaultsMapItemProviderLearnedPlaceRevGeoSourceMask"];
    objc_opt_class();
    v36 = v13;
    if (objc_opt_isKindOfClass())
    {
      unsignedIntegerValue = [v35 unsignedIntegerValue];
    }

    else
    {
      unsignedIntegerValue = 8193;
    }

    v38 = [v5 objectForKey:@"RTDefaultsMapItemProviderLearnedPlaceRemoveSourceMask"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      unsignedIntegerValue2 = [v38 unsignedIntegerValue];
    }

    else
    {
      unsignedIntegerValue2 = 0x4000;
    }

    self = [(RTMapItemProviderLearnedPlaceParameters *)selfCopy initWithMaxDistanceThreshold:unsignedIntegerValue minDistanceThreshold:unsignedIntegerValue2 softDistanceThreshold:v44 homeConfidence:v12 workConfidence:v15 schoolConfidence:v18 gymConfidence:v21 nonRevGeoConfidence:v20 revGeoConfidence:v27 revGeoSourceMask:v30 removeSourceMask:*&v32];

    selfCopy2 = self;
  }

  else
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: defaultsManager", buf, 2u);
    }

    selfCopy2 = 0;
  }

  return selfCopy2;
}

@end