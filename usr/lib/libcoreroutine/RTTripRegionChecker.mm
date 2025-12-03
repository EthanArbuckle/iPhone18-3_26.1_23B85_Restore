@interface RTTripRegionChecker
- (BOOL)isValidCoordinate:(CLLocationCoordinate2D)coordinate;
- (BOOL)shouldAllowProcessingTripSegmentInCurrentCountry;
- (BOOL)shouldGenerateTripSegmentForTransitionWithStartLocation:(id)location stopLocation:(id)stopLocation startDate:(id)date stopDate:(id)stopDate identifier:(id)identifier;
- (BOOL)shouldGenerateTripSegmentWithLatitude:(double)latitude longitude:(double)longitude date:(id)date;
- (RTTripRegionChecker)initWithDefaultsManager:(id)manager;
- (double)getDistanceThresholdForEarlyReturn;
- (id)getGeoTerritoryListForLatitude:(double)latitude longitude:(double)longitude;
@end

@implementation RTTripRegionChecker

- (RTTripRegionChecker)initWithDefaultsManager:(id)manager
{
  v31 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  v26.receiver = self;
  v26.super_class = RTTripRegionChecker;
  v6 = [(RTTripRegionChecker *)&v26 init];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      uTF8String = [(RTTripRegionChecker *)v8 UTF8String];
    }

    else
    {
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%p", objc_opt_class(), v8];
      uTF8String = [v11 UTF8String];
    }

    v12 = dispatch_queue_create(uTF8String, v9);

    queue = v8->_queue;
    v8->_queue = v12;

    objc_storeStrong(&v8->_defaultsManager, manager);
    if (managerCopy)
    {
      v14 = [managerCopy objectForKey:@"RTDefaultsTripSegmentEnableRegionCheck"];
      v15 = v14;
      if (v14)
      {
        bOOLValue = [v14 BOOLValue];
      }

      else
      {
        bOOLValue = 1;
      }

      v8->_enableRegionCheck = bOOLValue;
      v17 = [managerCopy objectForKey:@"RTDefaultsTripSegmentShouldDisableProcessingInChina"];
      v18 = v17;
      if (v17)
      {
        bOOLValue2 = [v17 BOOLValue];
      }

      else
      {
        bOOLValue2 = 1;
      }

      v8->_shouldDisableProcessingInChina = bOOLValue2;
    }

    v8->_lastQueryVisitCoordinate.latitude = 0.0;
    v8->_lastQueryVisitCoordinate.longitude = 0.0;
    lastQueryVisitTime = v8->_lastQueryVisitTime;
    v8->_lastQueryVisitTime = 0;

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v21 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v22 = objc_opt_class();
        v23 = NSStringFromClass(v22);
        enableRegionCheck = v8->_enableRegionCheck;
        *buf = 138412546;
        v28 = v23;
        v29 = 1024;
        v30 = enableRegionCheck;
        _os_log_impl(&dword_2304B3000, v21, OS_LOG_TYPE_INFO, "%@:initWithDefaultsManager,enableRegionCheck,%d", buf, 0x12u);
      }
    }
  }

  return v7;
}

- (id)getGeoTerritoryListForLatitude:(double)latitude longitude:(double)longitude
{
  v89[1] = *MEMORY[0x277D85DE8];
  v7 = dispatch_semaphore_create(0);
  v49 = [objc_alloc(MEMORY[0x277D0EB80]) initWithLatitude:latitude longitude:longitude];
  v67 = 0;
  v68 = &v67;
  v69 = 0x3032000000;
  v70 = __Block_byref_object_copy__112;
  v71 = __Block_byref_object_dispose__112;
  v72 = 0;
  v61 = 0;
  v62 = &v61;
  v63 = 0x3032000000;
  v64 = __Block_byref_object_copy__112;
  v65 = __Block_byref_object_dispose__112;
  v66 = 0;
  v8 = MEMORY[0x277D0EB28];
  queue = [(RTTripRegionChecker *)self queue];
  v57[0] = MEMORY[0x277D85DD0];
  v57[1] = 3221225472;
  v57[2] = __64__RTTripRegionChecker_getGeoTerritoryListForLatitude_longitude___block_invoke;
  v57[3] = &unk_2788C8D40;
  v59 = &v67;
  v60 = &v61;
  v10 = v7;
  v58 = v10;
  [v8 fetchPossibleTerritoriesForLocation:v49 responseQueue:queue responseBlock:v57];

  dsema = v10;
  v11 = [MEMORY[0x277CBEAA8] now];
  v12 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(dsema, v12))
  {
    v13 = [MEMORY[0x277CBEAA8] now];
    [v13 timeIntervalSinceDate:v11];
    v15 = v14;
    v16 = objc_opt_new();
    v17 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_94];
    callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
    v19 = [callStackSymbols filteredArrayUsingPredicate:v17];
    firstObject = [v19 firstObject];

    [v16 submitToCoreAnalytics:firstObject type:1 duration:v15];
    v21 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2304B3000, v21, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
    }

    v22 = MEMORY[0x277CCA9B8];
    v89[0] = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v89 count:1];
    v24 = [v22 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v23];

    if (v24)
    {
      v25 = v24;
    }
  }

  else
  {
    v24 = 0;
  }

  v50 = v24;
  if (v68[5])
  {
    v26 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v43 = objc_opt_class();
      v44 = NSStringFromClass(v43);
      localizedDescription = [v68[5] localizedDescription];
      *buf = 138412546;
      *&buf[4] = v44;
      v74 = 2112;
      v75 = localizedDescription;
      _os_log_error_impl(&dword_2304B3000, v26, OS_LOG_TYPE_ERROR, "%@:getGeoTerritoryListForLatitude,processing error querying PossibleTerritoriesForLocation,error,%@", buf, 0x16u);
    }
  }

  if (v50)
  {
    v27 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v46 = objc_opt_class();
      v47 = NSStringFromClass(v46);
      localizedDescription2 = [v50 localizedDescription];
      *buf = 138412546;
      *&buf[4] = v47;
      v74 = 2112;
      v75 = localizedDescription2;
      _os_log_error_impl(&dword_2304B3000, v27, OS_LOG_TYPE_ERROR, "%@:getGeoTerritoryListForLatitude,Semaphore error querying PossibleTerritoriesForLocation,error,%@", buf, 0x16u);
    }
  }

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v28 = v62[5];
  v29 = [v28 countByEnumeratingWithState:&v53 objects:v88 count:16];
  if (v29)
  {
    v30 = *v54;
    v31 = MEMORY[0x277D86220];
    do
    {
      v32 = 0;
      do
      {
        if (*v54 != v30)
        {
          objc_enumerationMutation(v28);
        }

        v33 = *(*(&v53 + 1) + 8 * v32);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
        {
          v34 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
          {
            v35 = objc_opt_class();
            v36 = NSStringFromClass(v35);
            iso3166CountryCode = [v33 iso3166CountryCode];
            iso3166CountryCode2 = [v33 iso3166CountryCode2];
            iso3166CountryCode3 = [v33 iso3166CountryCode3];
            isDisputed = [v33 isDisputed];
            v40 = [v62[5] count];
            *buf = 138414083;
            *&buf[4] = v36;
            v74 = 2117;
            v75 = iso3166CountryCode;
            v76 = 2117;
            v77 = iso3166CountryCode2;
            v78 = 2117;
            v79 = iso3166CountryCode3;
            v80 = 1029;
            v81 = isDisputed;
            v82 = 1024;
            v83 = v40;
            v84 = 2053;
            latitudeCopy = latitude;
            v86 = 2053;
            longitudeCopy = longitude;
            _os_log_debug_impl(&dword_2304B3000, v34, OS_LOG_TYPE_DEBUG, "%@:getGeoTerritoryListForLatitude,mode,iso3166CountryCode,%{sensitive}@,iso3166CountryCode2,%{sensitive}@,iso3166CountryCode3,%{sensitive}@,isDisputed,%{sensitive}d,count,%d,coordinate,%{sensitive}.7lf,%{sensitive}.7lf", buf, 0x4Au);
          }
        }

        ++v32;
      }

      while (v29 != v32);
      v29 = [v28 countByEnumeratingWithState:&v53 objects:v88 count:16];
    }

    while (v29);
  }

  v41 = v62[5];
  _Block_object_dispose(&v61, 8);

  _Block_object_dispose(&v67, 8);

  return v41;
}

void __64__RTTripRegionChecker_getGeoTerritoryListForLatitude_longitude___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  v9 = a3;
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
  v8 = v5;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (double)getDistanceThresholdForEarlyReturn
{
  defaultsManager = self->_defaultsManager;
  if (!defaultsManager)
  {
    return 30000.0;
  }

  v3 = [(RTDefaultsManager *)defaultsManager objectForKey:@"RTDefaultsTripSegmentRegionCheckDistanceThreshold"];
  if (!v3)
  {
    return 30000.0;
  }

  v4 = v3;
  [v3 doubleValue];
  v6 = v5;

  return v6;
}

- (BOOL)shouldAllowProcessingTripSegmentInCurrentCountry
{
  v14 = *MEMORY[0x277D85DE8];
  mEMORY[0x277D0EB00] = [MEMORY[0x277D0EB00] sharedConfiguration];
  v3 = [mEMORY[0x277D0EB00] currentCountrySupportsFeature:1];
  v4 = v3 & [mEMORY[0x277D0EB00] currentCountrySupportsFeature:12];
  v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
  if (v4)
  {
    if (v5)
    {
      v6 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        v7 = objc_opt_class();
        v8 = NSStringFromClass(v7);
        v12 = 138412290;
        v13 = v8;
        v9 = "%@:shouldGenerateTripSegmentInCurrentCountry,YES";
LABEL_10:
        _os_log_debug_impl(&dword_2304B3000, v6, OS_LOG_TYPE_DEBUG, v9, &v12, 0xCu);

        goto LABEL_7;
      }

      goto LABEL_7;
    }
  }

  else if (v5)
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v11 = objc_opt_class();
      v8 = NSStringFromClass(v11);
      v12 = 138412290;
      v13 = v8;
      v9 = "%@:shouldGenerateTripSegmentInCurrentCountry,NO";
      goto LABEL_10;
    }

LABEL_7:
  }

  return v4;
}

- (BOOL)isValidCoordinate:(CLLocationCoordinate2D)coordinate
{
  v3 = coordinate.latitude < 0.0;
  if (coordinate.latitude > 0.0)
  {
    v3 = 1;
  }

  v4 = coordinate.longitude < 0.0;
  if (coordinate.longitude > 0.0)
  {
    v4 = 1;
  }

  return v3 && v4;
}

- (BOOL)shouldGenerateTripSegmentWithLatitude:(double)latitude longitude:(double)longitude date:(id)date
{
  v56 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  if (self->_enableRegionCheck)
  {
    v45 = CLLocationCoordinate2DMake(latitude, longitude);
    if ([(RTTripRegionChecker *)self isValidCoordinate:?])
    {
      if ([(RTTripRegionChecker *)self isValidCoordinate:self->_lastQueryVisitCoordinate.latitude, self->_lastQueryVisitCoordinate.longitude])
      {
        v10 = objc_alloc_init(RTDistanceCalculator);
        v44 = 0;
        [(RTDistanceCalculator *)v10 distanceFromLocationCoordinate:&self->_lastQueryVisitCoordinate toLocationCoordinate:&v45 error:&v44];
        v12 = v11;
        v13 = v44;
        [(RTTripRegionChecker *)self getDistanceThresholdForEarlyReturn];
        if (!v13)
        {
          v15 = v14;
          if (v12 < v14)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
            {
              v16 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
              if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
              {
                v37 = objc_opt_class();
                v38 = NSStringFromClass(v37);
                lastTripSegmentGenerationDecision = self->_lastTripSegmentGenerationDecision;
                *buf = 138413571;
                v48 = v38;
                v49 = 2048;
                *v50 = v12;
                *&v50[8] = 1024;
                *v51 = lastTripSegmentGenerationDecision;
                *&v51[4] = 2053;
                *&v51[6] = latitude;
                v52 = 2053;
                longitudeCopy = longitude;
                v54 = 2048;
                v55 = v15;
                _os_log_debug_impl(&dword_2304B3000, v16, OS_LOG_TYPE_DEBUG, "%@:shouldGenerateTripSegmentWithLatitude,early return, distance,%.2lf,decision,%d,coordinate,%{sensitive}.7lf,%{sensitive}.7lf,distThreshold,%.2lf", buf, 0x3Au);
              }
            }

            v17 = self->_lastTripSegmentGenerationDecision;
            goto LABEL_36;
          }
        }
      }

      v20 = [(RTTripRegionChecker *)self getGeoTerritoryListForLatitude:latitude longitude:longitude];
      v10 = v20;
      if (v20 && [(RTDistanceCalculator *)v20 count])
      {
        v42 = dateCopy;
        self->_lastQueryVisitCoordinate = v45;
        objc_storeStrong(&self->_lastQueryVisitTime, date);
        mEMORY[0x277D0EB00] = [MEMORY[0x277D0EB00] sharedConfiguration];
        self->_lastTripSegmentGenerationDecision = 1;
        memset(v43, 0, sizeof(v43));
        v22 = v10;
        if ([(RTDistanceCalculator *)v22 countByEnumeratingWithState:v43 objects:v46 count:16])
        {
          v24 = **(&v43[0] + 1);
          iso3166CountryCode2 = [**(&v43[0] + 1) iso3166CountryCode2];
          v26 = [mEMORY[0x277D0EB00] countryCode:iso3166CountryCode2 supportsFeature:1];

          os_eligibility_get_domain_answer();
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
          {
            v27 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
            {
              v28 = objc_opt_class();
              v41 = NSStringFromClass(v28);
              iso3166CountryCode22 = [v24 iso3166CountryCode2];
              *buf = v40;
              v48 = v41;
              v49 = 1024;
              *v50 = v26;
              *&v50[4] = 1024;
              *&v50[6] = 0;
              *v51 = 2117;
              *&v51[2] = iso3166CountryCode22;
              _os_log_debug_impl(&dword_2304B3000, v27, OS_LOG_TYPE_DEBUG, "%@:shouldGenerateTripSegmentWithLatitude,isNavigationSupported,%d,isLearnedRoutesSupported,%d,countryCode,%{sensitive}@", buf, 0x22u);
            }
          }

          self->_lastTripSegmentGenerationDecision = 0;
        }

        dateCopy = v42;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
        {
          v30 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
          {
            v34 = objc_opt_class();
            v35 = NSStringFromClass(v34);
            v36 = self->_lastTripSegmentGenerationDecision;
            *buf = 138412546;
            v48 = v35;
            v49 = 1024;
            *v50 = v36;
            _os_log_debug_impl(&dword_2304B3000, v30, OS_LOG_TYPE_DEBUG, "%@:shouldGenerateTripSegmentWithLatitude,finalDecision,%d", buf, 0x12u);
          }
        }

        v17 = self->_lastTripSegmentGenerationDecision;
LABEL_35:

        goto LABEL_36;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        mEMORY[0x277D0EB00] = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
        if (os_log_type_enabled(mEMORY[0x277D0EB00], OS_LOG_TYPE_DEBUG))
        {
          v32 = objc_opt_class();
          v33 = NSStringFromClass(v32);
          *buf = 138412290;
          v48 = v33;
          _os_log_debug_impl(&dword_2304B3000, mEMORY[0x277D0EB00], OS_LOG_TYPE_DEBUG, "%@:shouldGenerateTripSegmentWithLatitude,geoTerritoryList is nil,disallowing trip segment generation", buf, 0xCu);
        }

        v17 = 0;
        goto LABEL_35;
      }

LABEL_29:
      v17 = 0;
LABEL_36:

      goto LABEL_37;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v10 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(&v10->super.super.super, OS_LOG_TYPE_DEBUG))
      {
        v18 = objc_opt_class();
        v19 = NSStringFromClass(v18);
        *buf = 138412803;
        v48 = v19;
        v49 = 2053;
        *v50 = latitude;
        *&v50[8] = 2053;
        *v51 = longitude;
        _os_log_debug_impl(&dword_2304B3000, &v10->super.super.super, OS_LOG_TYPE_DEBUG, "%@:shouldGenerateTripSegmentWithLatitude,null island,%{sensitive}.7lf,%{sensitive}.7lf,disallowed", buf, 0x20u);
      }

      goto LABEL_29;
    }

    v17 = 0;
  }

  else
  {
    v17 = 1;
  }

LABEL_37:

  return v17;
}

- (BOOL)shouldGenerateTripSegmentForTransitionWithStartLocation:(id)location stopLocation:(id)stopLocation startDate:(id)date stopDate:(id)stopDate identifier:(id)identifier
{
  v37 = *MEMORY[0x277D85DE8];
  locationCopy = location;
  stopLocationCopy = stopLocation;
  dateCopy = date;
  stopDateCopy = stopDate;
  identifierCopy = identifier;
  if (!(locationCopy | stopLocationCopy))
  {
    goto LABEL_11;
  }

  [locationCopy coordinate];
  v18 = v17;
  [locationCopy coordinate];
  if (![(RTTripRegionChecker *)self shouldGenerateTripSegmentWithLatitude:dateCopy longitude:v18 date:?])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v22 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
LABEL_10:

        goto LABEL_11;
      }

      [locationCopy coordinate];
      v24 = v23;
      [locationCopy coordinate];
      v31 = 138412803;
      v32 = identifierCopy;
      v33 = 2053;
      v34 = v24;
      v35 = 2053;
      v36 = v25;
      v26 = "RTTripSegmentProvider:transition processing disallowed based on region check,%@,startCoordinate,%{sensitive}.7lf,%{sensitive}.7lf";
LABEL_14:
      _os_log_debug_impl(&dword_2304B3000, v22, OS_LOG_TYPE_DEBUG, v26, &v31, 0x20u);
      goto LABEL_10;
    }

LABEL_11:
    v21 = 0;
    goto LABEL_12;
  }

  [stopLocationCopy coordinate];
  v20 = v19;
  [stopLocationCopy coordinate];
  if (![(RTTripRegionChecker *)self shouldGenerateTripSegmentWithLatitude:stopDateCopy longitude:v20 date:?])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v22 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_10;
      }

      [stopLocationCopy coordinate];
      v29 = v28;
      [stopLocationCopy coordinate];
      v31 = 138412803;
      v32 = identifierCopy;
      v33 = 2053;
      v34 = v29;
      v35 = 2053;
      v36 = v30;
      v26 = "RTTripSegmentProvider:transition processing disallowed based on region check,%@,stopCoordinate,%{sensitive}.7lf,%{sensitive}.7lf";
      goto LABEL_14;
    }

    goto LABEL_11;
  }

  v21 = 1;
LABEL_12:

  return v21;
}

@end