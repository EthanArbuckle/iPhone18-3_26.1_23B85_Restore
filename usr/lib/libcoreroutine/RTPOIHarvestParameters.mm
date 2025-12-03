@interface RTPOIHarvestParameters
- (RTPOIHarvestParameters)initWithDefaultsManager:(id)manager;
- (RTPOIHarvestParameters)initWithHarvestMask:(unint64_t)mask locationLookupWindowMaxMinutes:(double)minutes locationLookupWindowMinMinutes:(double)minMinutes locationUncertaintyThreshold:(double)threshold maxLocationsPerFingerprint:(unint64_t)fingerprint;
- (id)description;
@end

@implementation RTPOIHarvestParameters

- (RTPOIHarvestParameters)initWithHarvestMask:(unint64_t)mask locationLookupWindowMaxMinutes:(double)minutes locationLookupWindowMinMinutes:(double)minMinutes locationUncertaintyThreshold:(double)threshold maxLocationsPerFingerprint:(unint64_t)fingerprint
{
  selfCopy = self;
  if (minutes <= 0.0)
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    *buf = 0;
    v16 = "Invalid parameter not satisfying: locationLookupWindowMaxMinutes > 0";
LABEL_16:
    _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, v16, buf, 2u);
    goto LABEL_17;
  }

  if (minMinutes <= 0.0)
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    *buf = 0;
    v16 = "Invalid parameter not satisfying: locationLookupWindowMinMinutes > 0";
    goto LABEL_16;
  }

  if (threshold <= 0.0)
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    *buf = 0;
    v16 = "Invalid parameter not satisfying: locationUncertaintyThreshold > 0";
    goto LABEL_16;
  }

  if (!fingerprint)
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v16 = "Invalid parameter not satisfying: maxLocationsPerFingerprint > 0";
      goto LABEL_16;
    }

LABEL_17:

    v14 = 0;
    goto LABEL_18;
  }

  v18.receiver = self;
  v18.super_class = RTPOIHarvestParameters;
  v13 = [(RTPOIHarvestParameters *)&v18 init];
  if (v13)
  {
    v13->_harvestMask = mask;
    v13->_locationLookupWindowMaxMinutes = minutes;
    v13->_locationLookupWindowMinMinutes = minMinutes;
    v13->_locationUncertaintyThreshold = threshold;
    v13->_maxLocationsPerFingerprint = fingerprint;
  }

  selfCopy = v13;
  v14 = selfCopy;
LABEL_18:

  return v14;
}

- (RTPOIHarvestParameters)initWithDefaultsManager:(id)manager
{
  managerCopy = manager;
  v5 = managerCopy;
  if (managerCopy)
  {
    v6 = [managerCopy objectForKey:@"RTDefaultsPOIHarvestHarvestMask"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      unsignedIntegerValue = [v6 unsignedIntegerValue];
    }

    else
    {
      unsignedIntegerValue = -24577;
    }

    v10 = [v5 objectForKey:@"RTDefaultsPOIHarvestLookupWindowMaxMinutes"];
    objc_opt_class();
    v11 = 5.0;
    if (objc_opt_isKindOfClass())
    {
      [v10 doubleValue];
      v11 = v12;
    }

    v13 = [v5 objectForKey:@"RTDefaultsPOIHarvestLookupWindowMinMinutes"];
    objc_opt_class();
    v14 = 1.0;
    if (objc_opt_isKindOfClass())
    {
      [v13 doubleValue];
      v14 = v15;
    }

    v16 = [v5 objectForKey:@"RTDefaultsPOIHarvestLocationUncertaintyThreshold"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v16 doubleValue];
      v18 = v17;
    }

    else
    {
      v18 = 250.0;
    }

    v19 = [v5 objectForKey:@"RTDefaultsPOIHarvestMaxLocationsPerFingerprint"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      unsignedIntegerValue2 = [v19 unsignedIntegerValue];
    }

    else
    {
      unsignedIntegerValue2 = 300;
    }

    self = [(RTPOIHarvestParameters *)self initWithHarvestMask:unsignedIntegerValue locationLookupWindowMaxMinutes:unsignedIntegerValue2 locationLookupWindowMinMinutes:v11 locationUncertaintyThreshold:v14 maxLocationsPerFingerprint:v18];

    selfCopy = self;
  }

  else
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v22 = 0;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: defaultsManager", v22, 2u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [MEMORY[0x277D011A0] sourceToString:self->_harvestMask];
  v5 = [v3 stringWithFormat:@"harvestMask, %@, locationLookupWindowMaxMinutes, %.1f, locationLookupWindowMinMinutes, %.1f, locationUncertaintyThreshold, %.2f, maxLocationsPerFingerprint, %lu", v4, *&self->_locationLookupWindowMaxMinutes, *&self->_locationLookupWindowMinMinutes, *&self->_locationUncertaintyThreshold, self->_maxLocationsPerFingerprint];

  return v5;
}

@end