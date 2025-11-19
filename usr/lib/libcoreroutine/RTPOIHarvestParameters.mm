@interface RTPOIHarvestParameters
- (RTPOIHarvestParameters)initWithDefaultsManager:(id)a3;
- (RTPOIHarvestParameters)initWithHarvestMask:(unint64_t)a3 locationLookupWindowMaxMinutes:(double)a4 locationLookupWindowMinMinutes:(double)a5 locationUncertaintyThreshold:(double)a6 maxLocationsPerFingerprint:(unint64_t)a7;
- (id)description;
@end

@implementation RTPOIHarvestParameters

- (RTPOIHarvestParameters)initWithHarvestMask:(unint64_t)a3 locationLookupWindowMaxMinutes:(double)a4 locationLookupWindowMinMinutes:(double)a5 locationUncertaintyThreshold:(double)a6 maxLocationsPerFingerprint:(unint64_t)a7
{
  v7 = self;
  if (a4 <= 0.0)
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

  if (a5 <= 0.0)
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

  if (a6 <= 0.0)
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

  if (!a7)
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
    v13->_harvestMask = a3;
    v13->_locationLookupWindowMaxMinutes = a4;
    v13->_locationLookupWindowMinMinutes = a5;
    v13->_locationUncertaintyThreshold = a6;
    v13->_maxLocationsPerFingerprint = a7;
  }

  v7 = v13;
  v14 = v7;
LABEL_18:

  return v14;
}

- (RTPOIHarvestParameters)initWithDefaultsManager:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 objectForKey:@"RTDefaultsPOIHarvestHarvestMask"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 unsignedIntegerValue];
    }

    else
    {
      v7 = -24577;
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
      v20 = [v19 unsignedIntegerValue];
    }

    else
    {
      v20 = 300;
    }

    self = [(RTPOIHarvestParameters *)self initWithHarvestMask:v7 locationLookupWindowMaxMinutes:v20 locationLookupWindowMinMinutes:v11 locationUncertaintyThreshold:v14 maxLocationsPerFingerprint:v18];

    v9 = self;
  }

  else
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v22 = 0;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: defaultsManager", v22, 2u);
    }

    v9 = 0;
  }

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [MEMORY[0x277D011A0] sourceToString:self->_harvestMask];
  v5 = [v3 stringWithFormat:@"harvestMask, %@, locationLookupWindowMaxMinutes, %.1f, locationLookupWindowMinMinutes, %.1f, locationUncertaintyThreshold, %.2f, maxLocationsPerFingerprint, %lu", v4, *&self->_locationLookupWindowMaxMinutes, *&self->_locationLookupWindowMinMinutes, *&self->_locationUncertaintyThreshold, self->_maxLocationsPerFingerprint];

  return v5;
}

@end