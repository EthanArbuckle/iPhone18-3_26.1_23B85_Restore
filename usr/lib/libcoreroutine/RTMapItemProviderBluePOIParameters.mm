@interface RTMapItemProviderBluePOIParameters
- (RTMapItemProviderBluePOIParameters)initWithBaseDuration:(double)duration injectedPlistPath:(id)path aoiDistanceThreshold:(double)threshold poiDistanceThreshold:(double)distanceThreshold aoiConfidencePassThroughThreshold:(double)throughThreshold aoiConfidenceConsiderThreshold:(double)considerThreshold poiConfidencePassThroughThreshold:(double)passThroughThreshold poiConfidenceConsiderThreshold:(double)self0 maxNumberOfQueries:(unint64_t)self1 earlyStop:(BOOL)self2 noFingerprintMinVisitDuration:(double)self3 minVisitLength:(double)self4 tileSize:(double)self5 performServerWithLocal:(BOOL)self6 harvestParameters:(id)self7 aoiCategoriesToSuppressContainingPOIs:(id)self8;
- (RTMapItemProviderBluePOIParameters)initWithBaseDuration:(double)duration injectedPlistPath:(id)path locationLookupWindowMaxMinutes:(double)minutes locationLookupWindowMinMinutes:(double)minMinutes maxLocationsPerFingerprint:(unint64_t)fingerprint locationUncertaintyThreshold:(double)threshold aoiDistanceThreshold:(double)distanceThreshold poiDistanceThreshold:(double)self0 harvestMask:(unint64_t)self1 aoiConfidencePassThroughThreshold:(double)self2 aoiConfidenceConsiderThreshold:(double)self3 poiConfidencePassThroughThreshold:(double)self4 poiConfidenceConsiderThreshold:(double)self5 maxNumberOfQueries:(unint64_t)self6 earlyStop:(BOOL)self7 noFingerprintMinVisitDuration:(double)self8 minVisitLength:(double)self9 tileSize:(double)size performServerWithLocal:(BOOL)local;
- (RTMapItemProviderBluePOIParameters)initWithDefaultsManager:(id)manager;
- (id)description;
@end

@implementation RTMapItemProviderBluePOIParameters

- (RTMapItemProviderBluePOIParameters)initWithBaseDuration:(double)duration injectedPlistPath:(id)path aoiDistanceThreshold:(double)threshold poiDistanceThreshold:(double)distanceThreshold aoiConfidencePassThroughThreshold:(double)throughThreshold aoiConfidenceConsiderThreshold:(double)considerThreshold poiConfidencePassThroughThreshold:(double)passThroughThreshold poiConfidenceConsiderThreshold:(double)self0 maxNumberOfQueries:(unint64_t)self1 earlyStop:(BOOL)self2 noFingerprintMinVisitDuration:(double)self3 minVisitLength:(double)self4 tileSize:(double)self5 performServerWithLocal:(BOOL)self6 harvestParameters:(id)self7 aoiCategoriesToSuppressContainingPOIs:(id)self8
{
  pathCopy = path;
  parametersCopy = parameters;
  isCopy = is;
  if (duration <= 0.0)
  {
    v39 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_32;
    }

    *buf = 0;
    v40 = "Invalid parameter not satisfying: baseDuration > 0";
LABEL_31:
    _os_log_error_impl(&dword_2304B3000, v39, OS_LOG_TYPE_ERROR, v40, buf, 2u);
    goto LABEL_32;
  }

  if (threshold <= 0.0)
  {
    v39 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_32;
    }

    *buf = 0;
    v40 = "Invalid parameter not satisfying: aoiDistanceThreshold > 0";
    goto LABEL_31;
  }

  if (distanceThreshold <= 0.0)
  {
    v39 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_32;
    }

    *buf = 0;
    v40 = "Invalid parameter not satisfying: poiDistanceThreshold > 0";
    goto LABEL_31;
  }

  if (throughThreshold <= 0.0)
  {
    v39 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_32;
    }

    *buf = 0;
    v40 = "Invalid parameter not satisfying: aoiConfidencePassThroughThreshold > 0";
    goto LABEL_31;
  }

  if (considerThreshold <= 0.0)
  {
    v39 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_32;
    }

    *buf = 0;
    v40 = "Invalid parameter not satisfying: aoiConfidenceConsiderThreshold > 0";
    goto LABEL_31;
  }

  if (passThroughThreshold <= 0.0)
  {
    v39 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_32;
    }

    *buf = 0;
    v40 = "Invalid parameter not satisfying: poiConfidencePassThroughThreshold > 0";
    goto LABEL_31;
  }

  if (confidenceConsiderThreshold <= 0.0)
  {
    v39 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_32;
    }

    *buf = 0;
    v40 = "Invalid parameter not satisfying: poiConfidenceConsiderThreshold > 0";
    goto LABEL_31;
  }

  if (!queries)
  {
    v39 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_32;
    }

    *buf = 0;
    v40 = "Invalid parameter not satisfying: maxNumberOfQueries > 0";
    goto LABEL_31;
  }

  if (size <= 0.0)
  {
    v39 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v40 = "Invalid parameter not satisfying: tileSize > 0";
      goto LABEL_31;
    }

LABEL_32:

    selfCopy = 0;
    goto LABEL_33;
  }

  v42.receiver = self;
  v42.super_class = RTMapItemProviderBluePOIParameters;
  v36 = [(RTMapItemProviderBluePOIParameters *)&v42 init];
  v37 = v36;
  if (v36)
  {
    v36->_baseDuration = duration;
    objc_storeStrong(&v36->_injectedPlistPath, path);
    v37->_aoiDistanceThreshold = threshold;
    v37->_poiDistanceThreshold = distanceThreshold;
    v37->_aoiConfidencePassThroughThreshold = throughThreshold;
    v37->_aoiConfidenceConsiderThreshold = considerThreshold;
    v37->_poiConfidencePassThroughThreshold = passThroughThreshold;
    v37->_poiConfidenceConsiderThreshold = confidenceConsiderThreshold;
    v37->_maxNumberOfQueries = queries;
    v37->_earlyStop = stop;
    v37->_noFingerprintMinVisitDuration = visitDuration;
    v37->_minVisitLength = length;
    v37->_tileSize = size;
    v37->_performServerWithLocal = local;
    objc_storeStrong(&v37->_harvestParameters, parameters);
    objc_storeStrong(&v37->_aoiCategoriesToSuppressContainingPOIs, is);
  }

  self = v37;
  selfCopy = self;
LABEL_33:

  return selfCopy;
}

- (RTMapItemProviderBluePOIParameters)initWithBaseDuration:(double)duration injectedPlistPath:(id)path locationLookupWindowMaxMinutes:(double)minutes locationLookupWindowMinMinutes:(double)minMinutes maxLocationsPerFingerprint:(unint64_t)fingerprint locationUncertaintyThreshold:(double)threshold aoiDistanceThreshold:(double)distanceThreshold poiDistanceThreshold:(double)self0 harvestMask:(unint64_t)self1 aoiConfidencePassThroughThreshold:(double)self2 aoiConfidenceConsiderThreshold:(double)self3 poiConfidencePassThroughThreshold:(double)self4 poiConfidenceConsiderThreshold:(double)self5 maxNumberOfQueries:(unint64_t)self6 earlyStop:(BOOL)self7 noFingerprintMinVisitDuration:(double)self8 minVisitLength:(double)self9 tileSize:(double)size performServerWithLocal:(BOOL)local
{
  localCopy = local;
  stopCopy = stop;
  pathCopy = path;
  if (minutes <= 0.0)
  {
    v38 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    v45 = 0;
    v39 = "Invalid parameter not satisfying: locationLookupWindowMaxMinutes > 0";
    v40 = &v45;
LABEL_14:
    _os_log_error_impl(&dword_2304B3000, v38, OS_LOG_TYPE_ERROR, v39, v40, 2u);
    goto LABEL_15;
  }

  if (minMinutes <= 0.0)
  {
    v38 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    v44 = 0;
    v39 = "Invalid parameter not satisfying: locationLookupWindowMinMinutes > 0";
    v40 = &v44;
    goto LABEL_14;
  }

  if (!fingerprint)
  {
    v38 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    v43 = 0;
    v39 = "Invalid parameter not satisfying: maxLocationsPerFingerprint > 0";
    v40 = &v43;
    goto LABEL_14;
  }

  if (threshold <= 0.0)
  {
    v38 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v39 = "Invalid parameter not satisfying: locationUncertaintyThreshold > 0";
      v40 = buf;
      goto LABEL_14;
    }

LABEL_15:

    selfCopy = 0;
    goto LABEL_16;
  }

  v36 = [[RTPOIHarvestParameters alloc] initWithHarvestMask:mask locationLookupWindowMaxMinutes:fingerprint locationLookupWindowMinMinutes:minutes locationUncertaintyThreshold:minMinutes maxLocationsPerFingerprint:threshold];
  self = [(RTMapItemProviderBluePOIParameters *)self initWithBaseDuration:pathCopy injectedPlistPath:queries aoiDistanceThreshold:stopCopy poiDistanceThreshold:localCopy aoiConfidencePassThroughThreshold:v36 aoiConfidenceConsiderThreshold:0 poiConfidencePassThroughThreshold:duration poiConfidenceConsiderThreshold:distanceThreshold maxNumberOfQueries:poiDistanceThreshold earlyStop:throughThreshold noFingerprintMinVisitDuration:considerThreshold minVisitLength:passThroughThreshold tileSize:confidenceConsiderThreshold performServerWithLocal:visitDuration harvestParameters:*&length aoiCategoriesToSuppressContainingPOIs:*&size];

  selfCopy = self;
LABEL_16:

  return selfCopy;
}

- (RTMapItemProviderBluePOIParameters)initWithDefaultsManager:(id)manager
{
  v71[7] = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  v5 = managerCopy;
  if (managerCopy)
  {
    v6 = [managerCopy objectForKey:@"RTDefaultsMapItemProviderBluePOIBaseDuration"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v6 doubleValue];
    }

    else
    {
      *&v7 = 300.0;
    }

    v63 = *&v7;
    v10 = [v5 objectForKey:@"RTDefaultsMapItemProviderBluePOIInjectedPlistPath"];
    objc_opt_class();
    v66 = v10;
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v62 = v11;
    v12 = [v5 objectForKey:@"RTDefaultsMapItemProviderBluePOIAoiDistanceThreshold"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v12 doubleValue];
    }

    else
    {
      *&v13 = 5000.0;
    }

    v60 = *&v13;
    v14 = [v5 objectForKey:@"RTDefaultsMapItemProviderBluePOIPoiDistanceThreshold"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v14 doubleValue];
      v16 = v15;
    }

    else
    {
      v16 = 500.0;
    }

    v67 = v6;
    v17 = [v5 objectForKey:@"RTDefaultsMapItemProviderBluePOIAoiConfidencePassThroughThreshold"];
    objc_opt_class();
    v18 = 0.5;
    if (objc_opt_isKindOfClass())
    {
      [v17 doubleValue];
      v18 = v19;
    }

    v61 = v17;
    v20 = [v5 objectForKey:@"RTDefaultsMapItemProviderBluePOIAoiConfidenceConsiderThreshold"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v20 doubleValue];
      v22 = v21;
    }

    else
    {
      v22 = 0.1;
    }

    v23 = [v5 objectForKey:@"RTDefaultsMapItemProviderBluePOIPoiConfidencePassThroughThreshold"];
    objc_opt_class();
    v24 = 0.5;
    if (objc_opt_isKindOfClass())
    {
      [v23 doubleValue];
      v24 = v25;
    }

    v26 = [v5 objectForKey:@"RTDefaultsMapItemProviderBluePOIPoiConfidenceConsiderThreshold"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v26 doubleValue];
      v28 = v27;
    }

    else
    {
      v28 = 0.1;
    }

    v29 = [v5 objectForKey:@"RTDefaultsMapItemProviderBluePOIMaxNumberOfQueries"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      unsignedIntegerValue = [v29 unsignedIntegerValue];
    }

    else
    {
      unsignedIntegerValue = 6;
    }

    v30 = [v5 objectForKey:@"RTDefaultsMapItemProviderBluePOIEarlyStop"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      bOOLValue = [v30 BOOLValue];
    }

    else
    {
      bOOLValue = 0;
    }

    v58 = v23;
    v31 = [v5 objectForKey:@"RTDefaultsMapItemProviderBluePOINoFingerprintMinVisitDuration"];
    objc_opt_class();
    v32 = 0x408C200000000000;
    v33 = 900.0;
    if (objc_opt_isKindOfClass())
    {
      [v31 doubleValue];
      v33 = v34;
    }

    v53 = v31;
    v57 = v26;
    v35 = [v5 objectForKey:@"RTDefaultsMapItemProviderBluePOIMinVisitLength"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v35 doubleValue];
      v32 = v36;
    }

    v37 = [v5 objectForKey:@"RTDefaultsMapItemProviderBluePOITileSize"];
    objc_opt_class();
    v56 = v29;
    if (objc_opt_isKindOfClass())
    {
      [v37 doubleValue];
      v39 = v38;
    }

    else
    {
      v39 = 0x4062C00000000000;
    }

    v59 = v20;
    v65 = v12;
    v40 = [v5 objectForKey:@"RTDefaultsMapItemProviderBluePOIPerformServerBluePOIWithLocalBluePOI"];
    objc_opt_class();
    v64 = v14;
    v55 = v30;
    selfCopy = self;
    if (objc_opt_isKindOfClass())
    {
      bOOLValue2 = [v40 BOOLValue];
    }

    else
    {
      bOOLValue2 = 0;
    }

    v43 = [[RTPOIHarvestParameters alloc] initWithDefaultsManager:v5];
    v44 = [MEMORY[0x277CBEB58] set];
    v45 = [v5 objectForKey:@"RTDefaultsMapItemProviderBluePOIAOICategoriesToSuppressContainingPOIs"];
    if (v45 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v68[0] = MEMORY[0x277D85DD0];
      v68[1] = 3221225472;
      v68[2] = __62__RTMapItemProviderBluePOIParameters_initWithDefaultsManager___block_invoke;
      v68[3] = &unk_2788C4BA8;
      v69 = v44;
      [v45 enumerateObjectsUsingBlock:v68];
      v46 = v69;
    }

    else
    {
      v47 = *MEMORY[0x277D0E910];
      v71[0] = *MEMORY[0x277D0E7F0];
      v71[1] = v47;
      v48 = *MEMORY[0x277D0E8C8];
      v71[2] = *MEMORY[0x277D0E990];
      v71[3] = v48;
      v49 = *MEMORY[0x277D0E9A8];
      v71[4] = *MEMORY[0x277D0E7F8];
      v71[5] = v49;
      v71[6] = *MEMORY[0x277D0E8E0];
      v46 = [MEMORY[0x277CBEA60] arrayWithObjects:v71 count:7];
      [v44 addObjectsFromArray:v46];
    }

    v50 = [(RTMapItemProviderBluePOIParameters *)selfCopy initWithBaseDuration:v62 injectedPlistPath:unsignedIntegerValue aoiDistanceThreshold:bOOLValue poiDistanceThreshold:bOOLValue2 aoiConfidencePassThroughThreshold:v43 aoiConfidenceConsiderThreshold:v44 poiConfidencePassThroughThreshold:v63 poiConfidenceConsiderThreshold:v60 maxNumberOfQueries:v16 earlyStop:v18 noFingerprintMinVisitDuration:v22 minVisitLength:v24 tileSize:v28 performServerWithLocal:v33 harvestParameters:v32 aoiCategoriesToSuppressContainingPOIs:v39];
    self = v50;

    selfCopy2 = self;
    v8 = v67;
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

void __62__RTMapItemProviderBluePOIParameters_initWithDefaultsManager___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(a1 + 32) addObject:v3];
  }
}

- (id)description
{
  v2 = @"NO";
  if (self->_earlyStop)
  {
    v3 = @"YES";
  }

  else
  {
    v3 = @"NO";
  }

  if (self->_performServerWithLocal)
  {
    v2 = @"YES";
  }

  return [MEMORY[0x277CCACA8] stringWithFormat:@"baseDuration, %.2f, aoiDistanceThreshold, %.2f, poiDistanceThreshold, %.2f, aoiConfidencePassThroughThreshold, %.2f, aoiConfidenceConsiderThreshold, %.2f, poiConfidencePassThroughThreshold, %.2f, poiConfidenceConsiderThreshold, %.2f, maxNumberOfQueries, %lu, earlyStop, %@, noFingerprintMinVisitDuration, %.2f, minVisitLength, %.2f, tileSize, %.2f, performServerWithLocal, %@, harvestParameters, %@, aoiCategoriesToSuppressContainingPOIs, %@", *&self->_baseDuration, *&self->_aoiDistanceThreshold, *&self->_poiDistanceThreshold, *&self->_aoiConfidencePassThroughThreshold, *&self->_aoiConfidenceConsiderThreshold, *&self->_poiConfidencePassThroughThreshold, *&self->_poiConfidenceConsiderThreshold, self->_maxNumberOfQueries, v3, *&self->_noFingerprintMinVisitDuration, *&self->_tileSize, v2, self->_harvestParameters, self->_aoiCategoriesToSuppressContainingPOIs];
}

@end