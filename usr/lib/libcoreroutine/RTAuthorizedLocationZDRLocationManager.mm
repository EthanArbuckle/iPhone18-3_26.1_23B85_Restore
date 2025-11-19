@interface RTAuthorizedLocationZDRLocationManager
- (BOOL)_fetchStoredZDRLocations;
- (BOOL)_isDeviceCurrentlyAtZDRLocation:(id)a3 handler:(id)a4;
- (BOOL)_isDistanceBetween2PointsInRange:(id)a3 aLoi:(id)a4 range:(double)a5;
- (BOOL)_isZdrLocationTrusted:(id)a3;
- (BOOL)_mergeCRClassifiedLOIWithZDRDb:(id)a3;
- (BOOL)_storeZDRLocationEntryToDb:(id)a3;
- (id)_deduceSetupLocation;
- (id)_fetchCurrentLocation;
- (id)_fetchLatestLocationFromListOfLocations:(id)a3;
- (id)_fetchRecentLocations;
- (id)_getHomeWorkSchoolLois;
- (id)initZDRLocationManager:(id)a3 visitManager:(id)a4 distanceCalculator:(id)a5 locationManager:(id)a6 learnedLocationManager:(id)a7 defaultsManager:(id)a8 confirmationStatus:(id)a9 zdrLocationsStore:(id)a10 platform:(id)a11 metrics:(id)a12;
- (id)trustedTimeNow;
- (int)_getSetupLocationValidAgeSeconds;
- (int64_t)_assertWeAreAtAnyZDRLocation:(id)a3;
- (int64_t)_assertWeAreAtSpecificZDRLocation:(id)a3 recentLocations:(id)a4;
- (int64_t)_assertWeAreAtZDRLocationWithVisit:(id)a3;
- (int64_t)_isDeviceCurrentlyAtAuthorizedLocation:(id)a3;
- (void)_collectCurationMetric;
- (void)_collectMetric:(int64_t)a3 reasonCode:(int64_t)a4 zdrComputationTime_s:(double)a5;
- (void)_collectZdrConfirmationMetric:(double)a3 zdrLoc:(id)a4;
- (void)_computeALOIMetrics:(id)a3 reasonCode:(int64_t)a4;
- (void)_deleteZDRLocationEntryFromDb:(id)a3;
- (void)_determineSetupLocation;
- (void)_disableNewSetupLocationGeneration;
- (void)_getSetupLocationFromZDRLocations:(id)a3;
- (void)_initMetric;
- (void)_purgeExtraSetupLocations;
- (void)_readDefaultsValues;
- (void)_refreshSetupLocationToDb:(id)a3 locToStore:(id)a4;
- (void)_removeStaleEntriesFromDatabase;
- (void)_storeClassifiedLocationToDB:(id)a3;
- (void)_updateALOILiveMetrics:(id)a3 aLoi:(id)a4 reasonCode:(int64_t)a5;
- (void)_updateSetupLocationToDb:(id)a3;
- (void)fetchAuthorizedLocationZDRLocations:(id)a3;
- (void)fetchZDRLocationStatus:(id)a3 fullSecurityAloiList:(id)a4 handler:(id)a5;
- (void)onFirstUnlock:(BOOL)a3;
@end

@implementation RTAuthorizedLocationZDRLocationManager

- (id)initZDRLocationManager:(id)a3 visitManager:(id)a4 distanceCalculator:(id)a5 locationManager:(id)a6 learnedLocationManager:(id)a7 defaultsManager:(id)a8 confirmationStatus:(id)a9 zdrLocationsStore:(id)a10 platform:(id)a11 metrics:(id)a12
{
  v69 = *MEMORY[0x277D85DE8];
  v52 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = v17;
  v22 = v20;
  v23 = a8;
  v24 = a9;
  v25 = a10;
  v26 = a11;
  v27 = a12;
  if (v21)
  {
    if (v18)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v28 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v66 = "[RTAuthorizedLocationZDRLocationManager initZDRLocationManager:visitManager:distanceCalculator:locationManager:learnedLocationManager:defaultsManager:confirmationStatus:zdrLocationsStore:platform:metrics:]";
      v67 = 1024;
      v68 = 143;
      _os_log_error_impl(&dword_2304B3000, v28, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: visitManager (in %s:%d)", buf, 0x12u);
    }

    if (v18)
    {
LABEL_3:
      if (v19)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  v29 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v66 = "[RTAuthorizedLocationZDRLocationManager initZDRLocationManager:visitManager:distanceCalculator:locationManager:learnedLocationManager:defaultsManager:confirmationStatus:zdrLocationsStore:platform:metrics:]";
    v67 = 1024;
    v68 = 144;
    _os_log_error_impl(&dword_2304B3000, v29, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: distanceCalculator (in %s:%d)", buf, 0x12u);
  }

  if (v19)
  {
LABEL_4:
    if (v22)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_17:
  v30 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v66 = "[RTAuthorizedLocationZDRLocationManager initZDRLocationManager:visitManager:distanceCalculator:locationManager:learnedLocationManager:defaultsManager:confirmationStatus:zdrLocationsStore:platform:metrics:]";
    v67 = 1024;
    v68 = 145;
    _os_log_error_impl(&dword_2304B3000, v30, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: locationManager (in %s:%d)", buf, 0x12u);
  }

  if (v22)
  {
LABEL_5:
    if (v23)
    {
      goto LABEL_6;
    }

    goto LABEL_23;
  }

LABEL_20:
  v31 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v66 = "[RTAuthorizedLocationZDRLocationManager initZDRLocationManager:visitManager:distanceCalculator:locationManager:learnedLocationManager:defaultsManager:confirmationStatus:zdrLocationsStore:platform:metrics:]";
    v67 = 1024;
    v68 = 146;
    _os_log_error_impl(&dword_2304B3000, v31, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: learnedLocationManager (in %s:%d)", buf, 0x12u);
  }

  if (v23)
  {
LABEL_6:
    if (v24)
    {
      goto LABEL_7;
    }

    goto LABEL_26;
  }

LABEL_23:
  v32 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v66 = "[RTAuthorizedLocationZDRLocationManager initZDRLocationManager:visitManager:distanceCalculator:locationManager:learnedLocationManager:defaultsManager:confirmationStatus:zdrLocationsStore:platform:metrics:]";
    v67 = 1024;
    v68 = 147;
    _os_log_error_impl(&dword_2304B3000, v32, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: defaultsManager (in %s:%d)", buf, 0x12u);
  }

  if (v24)
  {
LABEL_7:
    if (v25)
    {
      goto LABEL_8;
    }

    goto LABEL_29;
  }

LABEL_26:
  v33 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v66 = "[RTAuthorizedLocationZDRLocationManager initZDRLocationManager:visitManager:distanceCalculator:locationManager:learnedLocationManager:defaultsManager:confirmationStatus:zdrLocationsStore:platform:metrics:]";
    v67 = 1024;
    v68 = 148;
    _os_log_error_impl(&dword_2304B3000, v33, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: confirmationStatus (in %s:%d)", buf, 0x12u);
  }

  if (v25)
  {
LABEL_8:
    if (v26)
    {
      goto LABEL_9;
    }

    goto LABEL_32;
  }

LABEL_29:
  v34 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v66 = "[RTAuthorizedLocationZDRLocationManager initZDRLocationManager:visitManager:distanceCalculator:locationManager:learnedLocationManager:defaultsManager:confirmationStatus:zdrLocationsStore:platform:metrics:]";
    v67 = 1024;
    v68 = 149;
    _os_log_error_impl(&dword_2304B3000, v34, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: zdrLocationsStore (in %s:%d)", buf, 0x12u);
  }

  if (v26)
  {
LABEL_9:
    if (v27)
    {
      goto LABEL_38;
    }

    goto LABEL_35;
  }

LABEL_32:
  v35 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v66 = "[RTAuthorizedLocationZDRLocationManager initZDRLocationManager:visitManager:distanceCalculator:locationManager:learnedLocationManager:defaultsManager:confirmationStatus:zdrLocationsStore:platform:metrics:]";
    v67 = 1024;
    v68 = 150;
    _os_log_error_impl(&dword_2304B3000, v35, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: platform (in %s:%d)", buf, 0x12u);
  }

  if (!v27)
  {
LABEL_35:
    v36 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v66 = "[RTAuthorizedLocationZDRLocationManager initZDRLocationManager:visitManager:distanceCalculator:locationManager:learnedLocationManager:defaultsManager:confirmationStatus:zdrLocationsStore:platform:metrics:]";
      v67 = 1024;
      v68 = 151;
      _os_log_error_impl(&dword_2304B3000, v36, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: metrics (in %s:%d)", buf, 0x12u);
    }
  }

LABEL_38:
  v64.receiver = self;
  v64.super_class = RTAuthorizedLocationZDRLocationManager;
  v37 = [(RTAuthorizedLocationZDRLocationManager *)&v64 init];
  v38 = v37;
  if (v37)
  {
    objc_storeStrong(&v37->_queue, a3);
    [(RTAuthorizedLocationZDRLocationManager *)v38 queue];
    v51 = v27;
    v39 = v26;
    v40 = v25;
    v41 = v24;
    v42 = v23;
    v43 = v22;
    v44 = v19;
    v45 = v18;
    v47 = v46 = v21;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __206__RTAuthorizedLocationZDRLocationManager_initZDRLocationManager_visitManager_distanceCalculator_locationManager_learnedLocationManager_defaultsManager_confirmationStatus_zdrLocationsStore_platform_metrics___block_invoke;
    block[3] = &unk_2788D2450;
    v54 = v38;
    v55 = v39;
    v56 = v46;
    v57 = v44;
    v58 = v43;
    v59 = v42;
    v60 = v41;
    v61 = v45;
    v62 = v40;
    v63 = v51;
    dispatch_async(v47, block);

    v21 = v46;
    v18 = v45;
    v19 = v44;
    v22 = v43;
    v23 = v42;
    v24 = v41;
    v25 = v40;
    v26 = v39;
    v27 = v51;
  }

  return v38;
}

uint64_t __206__RTAuthorizedLocationZDRLocationManager_initZDRLocationManager_visitManager_distanceCalculator_locationManager_learnedLocationManager_defaultsManager_confirmationStatus_zdrLocationsStore_platform_metrics___block_invoke(id *a1)
{
  objc_storeStrong(a1[4] + 9, a1[5]);
  *(a1[4] + 8) = [*(a1[4] + 9) iPhoneDevice];
  objc_storeStrong(a1[4] + 3, a1[6]);
  objc_storeStrong(a1[4] + 7, a1[7]);
  objc_storeStrong(a1[4] + 4, a1[8]);
  objc_storeStrong(a1[4] + 5, a1[9]);
  objc_storeStrong(a1[4] + 6, a1[10]);
  objc_storeStrong(a1[4] + 8, a1[11]);
  objc_storeStrong(a1[4] + 10, a1[12]);
  v2 = a1[4];
  v3 = v2[11];
  v2[11] = 0;

  *(a1[4] + 9) = 0;
  *(a1[4] + 10) = 0;
  *(a1[4] + 11) = 0;
  *(a1[4] + 12) = 0;
  *(a1[4] + 13) = 0;
  v4 = objc_alloc_init(RTTrustedTimeCache);
  v5 = a1[4];
  v6 = v5[12];
  v5[12] = v4;

  objc_storeStrong(a1[4] + 13, a1[13]);
  [a1[4] _readDefaultsValues];
  v7 = a1[4];

  return [v7 _initZDR];
}

- (id)trustedTimeNow
{
  if (self->_relaxTrustedTimeRequirement)
  {
    v2 = [MEMORY[0x277CBEAA8] now];
  }

  else if (self->_allowUnsecureTimeFallback)
  {
    v2 = [(RTTrustedTimeCache *)self->_trustedTimeCache getApproximateTrustedDateNowWithUnsecureFallback];
  }

  else if (self->_forceTrustedTimeUnavailability)
  {
    v2 = 0;
  }

  else
  {
    v2 = [(RTTrustedTimeCache *)self->_trustedTimeCache getApproximateTrustedDateNow];
  }

  return v2;
}

- (void)_readDefaultsValues
{
  v19 = *MEMORY[0x277D85DE8];
  defaultsManager = self->_defaultsManager;
  if (defaultsManager)
  {
    v5 = [(RTDefaultsManager *)defaultsManager objectForKey:@"RTDefaultsAuthorizedLocationRelaxTrustedTimeRequirement"];
    self->_relaxTrustedTimeRequirement = [v5 BOOLValue];

    if (self->_relaxTrustedTimeRequirement && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v6 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        v9 = objc_opt_class();
        v10 = NSStringFromClass(v9);
        v11 = NSStringFromSelector(a2);
        v15 = 138412546;
        v16 = v10;
        v17 = 2112;
        v18 = v11;
        _os_log_debug_impl(&dword_2304B3000, v6, OS_LOG_TYPE_DEBUG, "%@:%@, WARNING, defaults set to relax trusted time requirement (not requiring user time and trusted time to align).", &v15, 0x16u);
      }
    }

    v7 = [(RTDefaultsManager *)self->_defaultsManager objectForKey:@"RTDefaultsAuthorizedLocationForceTrustedTimeUnavailability"];
    self->_forceTrustedTimeUnavailability = [v7 BOOLValue];

    if (self->_forceTrustedTimeUnavailability && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v8 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v12 = objc_opt_class();
        v13 = NSStringFromClass(v12);
        v14 = NSStringFromSelector(a2);
        v15 = 138412546;
        v16 = v13;
        v17 = 2112;
        v18 = v14;
        _os_log_debug_impl(&dword_2304B3000, v8, OS_LOG_TYPE_DEBUG, "%@:%@, WARNING, defaults set to force trusted time to be unavailable.", &v15, 0x16u);
      }
    }
  }
}

- (void)_updateSetupLocationToDb:(id)a3
{
  v76 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (!v5)
  {
    if (!v7)
    {
      goto LABEL_31;
    }

    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    v16 = NSStringFromSelector(a2);
    *buf = 138412546;
    v60 = v15;
    v61 = 2112;
    v62 = v16;
    v17 = "%@:%@,invalid setup location";
LABEL_26:
    _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_DEFAULT, v17, buf, 0x16u);

    goto LABEL_31;
  }

  if (v7)
  {
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = NSStringFromSelector(a2);
    *buf = 138412546;
    v60 = v9;
    v61 = 2112;
    v62 = v10;
    _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_DEFAULT, "%@:%@,storeInvoked", buf, 0x16u);
  }

  v11 = [(RTAuthorizedLocationZDRLocationManager *)self zdrLocationsStore];

  if (!v11)
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_31;
    }

    v18 = objc_opt_class();
    v15 = NSStringFromClass(v18);
    v16 = NSStringFromSelector(a2);
    *buf = 138412546;
    v60 = v15;
    v61 = 2112;
    v62 = v16;
    v17 = "%@:%@,invalid store";
    goto LABEL_26;
  }

  v12 = [v5 sourceInformation];
  v13 = ([v12 isProducedByAccessory] & 1) != 0 || objc_msgSend(v5, "type") == 3;

  v19 = [v5 sourceInformation];
  v20 = [v19 isSimulatedBySoftware];

  [v5 horizontalAccuracy];
  v22 = (v21 >= 0.0) & ((v20 | v13) ^ 1);
  v23 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = objc_opt_class();
    v25 = NSStringFromClass(v24);
    v26 = NSStringFromSelector(a2);
    *buf = 138413314;
    v60 = v25;
    v61 = 2112;
    v62 = v26;
    v63 = 1026;
    *v64 = v13;
    *&v64[4] = 1026;
    *&v64[6] = v20 & 1;
    LOWORD(v65) = 1026;
    *(&v65 + 2) = v22;
    _os_log_impl(&dword_2304B3000, v23, OS_LOG_TYPE_DEFAULT, "%@:%@,isAccessory,%{public}d,isSimulated,%{public}d,isValidLoc,%{public}d", buf, 0x28u);
  }

  if ((v22 & 1) == 0)
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_31;
    }

    v55 = objc_opt_class();
    v15 = NSStringFromClass(v55);
    v16 = NSStringFromSelector(a2);
    *buf = 138412546;
    v60 = v15;
    v61 = 2112;
    v62 = v16;
    v17 = "%@:%@,invalid Location to store";
    goto LABEL_26;
  }

  v27 = [RTAuthorizedLocationZDRLocations alloc];
  v28 = objc_alloc_init(MEMORY[0x277CCAD78]);
  v29 = [(RTAuthorizedLocationZDRLocationManager *)self trustedTimeNow];
  [v5 coordinate];
  v31 = v30;
  [v5 coordinate];
  v33 = v32;
  v34 = [(RTAuthorizedLocationZDRLocationManager *)self trustedTimeNow];
  v6 = [(RTAuthorizedLocationZDRLocations *)v27 initWithZDRLocation:v28 zdrLocationDbEntryTimeCfatSec:v29 zdrLocationType:4 zdrLocationLatitudeDeg:v34 zdrLocationLongitudeDeg:v31 zdrLocationLastSeenTimeCfatSec:v33];

  v35 = [(RTAuthorizedLocationZDRLocationManager *)self _storeZDRLocationEntryToDb:v6];
  if (v35)
  {
    [(RTAuthorizedLocationZDRLocationManager *)self _fetchStoredZDRLocations];
  }

  if (v6)
  {
    v36 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      v37 = objc_opt_class();
      v58 = NSStringFromClass(v37);
      v38 = NSStringFromSelector(a2);
      v39 = [v6 zdrLocationUUID];
      v40 = [v6 zdrLocationDbEntryTimeCfatSec];
      v57 = [v6 zdrLocationType];
      v56 = [v6 zdrLocationLastSeenTimeCfatSec];
      [v6 zdrLocationLatitudeDeg];
      v42 = v41;
      [v6 zdrLocationLongitudeDeg];
      v44 = v43;
      [v6 zdrLocationLatitudeDeg];
      v46 = v45;
      [v6 zdrLocationLongitudeDeg];
      v48 = [(RTAuthorizedLocationZDRLocationManager *)self _isNullLocation:v46 lon:v47];
      *buf = 138414339;
      v60 = v58;
      v61 = 2112;
      v62 = v38;
      v63 = 2114;
      *v64 = v39;
      *&v64[8] = 2114;
      v65 = v40;
      v66 = 1026;
      v67 = v57;
      v68 = 2114;
      v69 = v56;
      v70 = 2053;
      v71 = v42;
      v72 = 2053;
      v73 = v44;
      v74 = 1026;
      v75 = !v48;
      _os_log_impl(&dword_2304B3000, v36, OS_LOG_TYPE_DEFAULT, "%@:%@,zdrLoc,UUID,%{public}@,entryTime,%{public}@,locationType,%{public}d,lastSeenTime,%{public}@,lat,%{sensitive}.7lf,lon,%{sensitive}.7lf,isValid,%{public}d", buf, 0x54u);
    }
  }

  v49 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
  if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
  {
    v50 = objc_opt_class();
    v51 = NSStringFromClass(v50);
    v52 = NSStringFromSelector(a2);
    v53 = [(RTAuthorizedLocationZDRLocationManager *)self zdrLocationsMemoryCopy];
    v54 = v53;
    if (v53)
    {
      self = [(RTAuthorizedLocationZDRLocationManager *)self zdrLocationsMemoryCopy];
      LODWORD(v53) = [(RTAuthorizedLocationZDRLocationManager *)self count];
    }

    *buf = 138413058;
    v60 = v51;
    v61 = 2112;
    v62 = v52;
    v63 = 1026;
    *v64 = v35;
    *&v64[4] = 1026;
    *&v64[6] = v53;
    _os_log_impl(&dword_2304B3000, v49, OS_LOG_TYPE_DEFAULT, "%@:%@,storeSuccess,%{public}d,storeCount,%{public}u,", buf, 0x22u);
    if (v54)
    {
    }
  }

LABEL_31:
}

- (void)_refreshSetupLocationToDb:(id)a3 locToStore:(id)a4
{
  v50 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = NSStringFromSelector(a2);
    v40 = 138412546;
    v41 = v11;
    v42 = 2112;
    v43 = v12;
    _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_DEFAULT, "%@:%@,storeInvoked", &v40, 0x16u);
  }

  if (!v7 || !v8)
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_28;
    }

    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    v19 = NSStringFromSelector(a2);
    v40 = 138412546;
    v41 = v18;
    v42 = 2112;
    v43 = v19;
    v20 = "%@:%@,invalid setup location";
LABEL_23:
    _os_log_impl(&dword_2304B3000, v16, OS_LOG_TYPE_DEFAULT, v20, &v40, 0x16u);

    goto LABEL_28;
  }

  v13 = [(RTAuthorizedLocationZDRLocationManager *)self zdrLocationsStore];

  if (!v13)
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_28;
    }

    v21 = objc_opt_class();
    v18 = NSStringFromClass(v21);
    v19 = NSStringFromSelector(a2);
    v40 = 138412546;
    v41 = v18;
    v42 = 2112;
    v43 = v19;
    v20 = "%@:%@,invalid store";
    goto LABEL_23;
  }

  v14 = [v8 sourceInformation];
  v15 = ([v14 isProducedByAccessory] & 1) != 0 || objc_msgSend(v8, "type") == 3;

  v22 = [v8 sourceInformation];
  v23 = [v22 isSimulatedBySoftware];

  [v8 horizontalAccuracy];
  v25 = (v24 >= 0.0) & ((v23 | v15) ^ 1);
  v26 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v27 = objc_opt_class();
    v28 = NSStringFromClass(v27);
    v29 = NSStringFromSelector(a2);
    v40 = 138413314;
    v41 = v28;
    v42 = 2112;
    v43 = v29;
    v44 = 1026;
    v45 = v15;
    v46 = 1026;
    v47 = v23 & 1;
    v48 = 1026;
    v49 = v25;
    _os_log_impl(&dword_2304B3000, v26, OS_LOG_TYPE_DEFAULT, "%@:%@,isAccessory,%{public}d,isSimulated,%{public}d,isValidLoc,%{public}d", &v40, 0x28u);
  }

  if ((v25 & 1) == 0)
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_28;
    }

    v39 = objc_opt_class();
    v18 = NSStringFromClass(v39);
    v19 = NSStringFromSelector(a2);
    v40 = 138412546;
    v41 = v18;
    v42 = 2112;
    v43 = v19;
    v20 = "%@:%@,invalid Location to store";
    goto LABEL_23;
  }

  v16 = v7;
  [(RTAuthorizedLocationZDRLocationManager *)self _deleteZDRLocationEntryFromDb:v16];
  [v8 coordinate];
  [v16 setZdrLocationLatitudeDeg:?];
  [v8 coordinate];
  [v16 setZdrLocationLongitudeDeg:v30];
  v31 = [v8 timestamp];
  [v16 setZdrLocationLastSeenTimeCfatSec:v31];

  v32 = [(RTAuthorizedLocationZDRLocationManager *)self _storeZDRLocationEntryToDb:v16];
  if (v32)
  {
    [(RTAuthorizedLocationZDRLocationManager *)self _fetchStoredZDRLocations];
  }

  v33 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    v34 = objc_opt_class();
    v35 = NSStringFromClass(v34);
    v36 = NSStringFromSelector(a2);
    v37 = [(RTAuthorizedLocationZDRLocationManager *)self zdrLocationsMemoryCopy];
    v38 = v37;
    if (v37)
    {
      self = [(RTAuthorizedLocationZDRLocationManager *)self zdrLocationsMemoryCopy];
      LODWORD(v37) = [(RTAuthorizedLocationZDRLocationManager *)self count];
    }

    v40 = 138413058;
    v41 = v35;
    v42 = 2112;
    v43 = v36;
    v44 = 1026;
    v45 = v32;
    v46 = 1026;
    v47 = v37;
    _os_log_impl(&dword_2304B3000, v33, OS_LOG_TYPE_DEFAULT, "%@:%@,storeSuccess,%{public}d,storeCount,%{public}u", &v40, 0x22u);
    if (v38)
    {
    }
  }

LABEL_28:
}

- (void)_deleteZDRLocationEntryFromDb:(id)a3
{
  v40[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    v6 = dispatch_semaphore_create(0);
    v7 = [(RTAuthorizedLocationZDRLocationManager *)self zdrLocationsStore];
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __72__RTAuthorizedLocationZDRLocationManager__deleteZDRLocationEntryFromDb___block_invoke;
    v34[3] = &unk_2788C8A48;
    v34[4] = self;
    v36 = a2;
    v8 = v6;
    v35 = v8;
    [v7 deleteZDRLocation:v5 handler:v34];

    v9 = v8;
    v10 = [MEMORY[0x277CBEAA8] now];
    v11 = dispatch_time(0, 30000000000);
    if (dispatch_semaphore_wait(v9, v11))
    {
      v33 = a2;
      v32 = [MEMORY[0x277CBEAA8] now];
      [v32 timeIntervalSinceDate:v10];
      v13 = v12;
      v14 = objc_opt_new();
      v15 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_146];
      v16 = [MEMORY[0x277CCACC8] callStackSymbols];
      v17 = [v16 filteredArrayUsingPredicate:v15];
      v18 = [v17 firstObject];

      [v14 submitToCoreAnalytics:v18 type:1 duration:v13];
      v19 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_2304B3000, v19, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
      }

      v20 = MEMORY[0x277CCA9B8];
      v21 = *MEMORY[0x277D01448];
      v40[0] = *MEMORY[0x277CCA450];
      *buf = @"semaphore wait timeout";
      v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v40 count:1];
      v23 = [v20 errorWithDomain:v21 code:15 userInfo:v22];

      a2 = v33;
      if (v23)
      {
        v24 = v23;
      }
    }

    v25 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = objc_opt_class();
      v27 = NSStringFromClass(v26);
      v28 = NSStringFromSelector(a2);
      *buf = 138412546;
      *&buf[4] = v27;
      v38 = 2112;
      v39 = v28;
      _os_log_impl(&dword_2304B3000, v25, OS_LOG_TYPE_DEFAULT, "%@:%@,Entry Deleted", buf, 0x16u);
    }
  }

  else
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v29 = objc_opt_class();
      v30 = NSStringFromClass(v29);
      v31 = NSStringFromSelector(a2);
      *buf = 138412546;
      *&buf[4] = v30;
      v38 = 2112;
      v39 = v31;
      _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_DEFAULT, "%@:%@,invalid deleteEntry location", buf, 0x16u);
    }
  }
}

void __72__RTAuthorizedLocationZDRLocationManager__deleteZDRLocationEntryFromDb___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = objc_opt_class();
      v6 = NSStringFromClass(v5);
      v7 = NSStringFromSelector(*(a1 + 48));
      v8 = 138412802;
      v9 = v6;
      v10 = 2112;
      v11 = v7;
      v12 = 2114;
      v13 = v3;
      _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_DEFAULT, "%@:%@,deleteError,%{public}@", &v8, 0x20u);
    }
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

- (BOOL)_storeZDRLocationEntryToDb:(id)a3
{
  v48[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v47 = 0;
    v5 = dispatch_semaphore_create(0);
    v6 = [(RTAuthorizedLocationZDRLocationManager *)self zdrLocationsStore];
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __69__RTAuthorizedLocationZDRLocationManager__storeZDRLocationEntryToDb___block_invoke;
    v40[3] = &unk_2788C4618;
    v42 = buf;
    v7 = v5;
    v41 = v7;
    [v6 storeZDRLocation:v4 handler:v40];

    v8 = v7;
    v9 = [MEMORY[0x277CBEAA8] now];
    v10 = dispatch_time(0, 30000000000);
    if (dispatch_semaphore_wait(v8, v10))
    {
      v11 = [MEMORY[0x277CBEAA8] now];
      [v11 timeIntervalSinceDate:v9];
      v13 = v12;
      v14 = objc_opt_new();
      v15 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_146];
      v16 = [MEMORY[0x277CCACC8] callStackSymbols];
      v17 = [v16 filteredArrayUsingPredicate:v15];
      v18 = [v17 firstObject];

      [v14 submitToCoreAnalytics:v18 type:1 duration:v13];
      v19 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
      {
        *v43 = 0;
        _os_log_fault_impl(&dword_2304B3000, v19, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v43, 2u);
      }

      v20 = MEMORY[0x277CCA9B8];
      v48[0] = *MEMORY[0x277CCA450];
      *v43 = @"semaphore wait timeout";
      v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:v48 count:1];
      v22 = [v20 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v21];

      if (v22)
      {
        v23 = v22;
      }
    }

    else
    {
      v22 = 0;
    }

    v29 = v22;
    v30 = *(*&buf[8] + 24) | (v29 != 0);
    if (*(*&buf[8] + 24) & 1 | (v29 != 0))
    {
      v31 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v32 = objc_opt_class();
        v33 = NSStringFromClass(v32);
        v34 = NSStringFromSelector(a2);
        *v43 = 138412546;
        *&v43[4] = v33;
        v44 = 2112;
        v45 = v34;
        _os_log_impl(&dword_2304B3000, v31, OS_LOG_TYPE_DEFAULT, "%@:%@,Error while storing", v43, 0x16u);
      }
    }

    else
    {
      v31 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v35 = objc_opt_class();
        v36 = NSStringFromClass(v35);
        v37 = NSStringFromSelector(a2);
        *v43 = 138412546;
        *&v43[4] = v36;
        v44 = 2112;
        v45 = v37;
        _os_log_impl(&dword_2304B3000, v31, OS_LOG_TYPE_DEFAULT, "%@:%@,store success", v43, 0x16u);
      }
    }

    v28 = v30 ^ 1;
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v24 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = objc_opt_class();
      v26 = NSStringFromClass(v25);
      v27 = NSStringFromSelector(a2);
      *buf = 138412546;
      *&buf[4] = v26;
      *&buf[12] = 2112;
      *&buf[14] = v27;
      _os_log_impl(&dword_2304B3000, v24, OS_LOG_TYPE_DEFAULT, "%@:%@,invalid storeEntry location", buf, 0x16u);
    }

    v28 = 0;
  }

  return v28 & 1;
}

intptr_t __69__RTAuthorizedLocationZDRLocationManager__storeZDRLocationEntryToDb___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  return dispatch_semaphore_signal(*(a1 + 32));
}

- (BOOL)_fetchStoredZDRLocations
{
  v58[1] = *MEMORY[0x277D85DE8];
  if ([(RTAuthorizedLocationZDRLocationManager *)self isUnlockedSinceBoot])
  {
    v35 = objc_alloc_init(MEMORY[0x277D01090]);
    v45 = 0;
    v46 = &v45;
    v47 = 0x3032000000;
    v48 = __Block_byref_object_copy__185;
    v49 = __Block_byref_object_dispose__185;
    v50 = [MEMORY[0x277CBEB18] array];
    v41 = 0;
    v42 = &v41;
    v43 = 0x2020000000;
    v44 = 0;
    v4 = dispatch_semaphore_create(0);
    v5 = [(RTAuthorizedLocationZDRLocationManager *)self zdrLocationsStore];
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __66__RTAuthorizedLocationZDRLocationManager__fetchStoredZDRLocations__block_invoke;
    v36[3] = &unk_2788D2478;
    v36[4] = self;
    v40 = a2;
    v38 = &v41;
    v39 = &v45;
    v6 = v4;
    v37 = v6;
    [v5 fetchZDRLocationWithOptions:v35 handler:v36];

    v7 = v6;
    v8 = [MEMORY[0x277CBEAA8] now];
    v9 = dispatch_time(0, 30000000000);
    if (dispatch_semaphore_wait(v7, v9))
    {
      v10 = [MEMORY[0x277CBEAA8] now];
      [v10 timeIntervalSinceDate:v8];
      v12 = v11;
      v13 = objc_opt_new();
      v14 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_146];
      v15 = [MEMORY[0x277CCACC8] callStackSymbols];
      v16 = [v15 filteredArrayUsingPredicate:v14];
      v17 = [v16 firstObject];

      [v13 submitToCoreAnalytics:v17 type:1 duration:v12];
      v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_2304B3000, v18, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
      }

      v19 = MEMORY[0x277CCA9B8];
      v58[0] = *MEMORY[0x277CCA450];
      *buf = @"semaphore wait timeout";
      v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v58 count:1];
      v21 = [v19 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v20];

      if (v21)
      {
        v22 = v21;
      }
    }

    else
    {
      v21 = 0;
    }

    v24 = v21;
    if (v24 || *(v42 + 24) == 1)
    {
      v25 = v46[5];
      v46[5] = 0;

      v26 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v31 = objc_opt_class();
        v32 = NSStringFromClass(v31);
        v33 = NSStringFromSelector(a2);
        v34 = *(v42 + 24);
        *buf = 138413058;
        *&buf[4] = v32;
        v52 = 2112;
        v53 = v33;
        v54 = 2114;
        v55 = v24;
        v56 = 1026;
        v57 = v34;
        _os_log_error_impl(&dword_2304B3000, v26, OS_LOG_TYPE_ERROR, "%@:%@,semaphore error,%{public}@,fetchError,%{public}d", buf, 0x26u);
      }

      v23 = 0;
      goto LABEL_14;
    }

    v28 = v46;
    v29 = v46[5];
    if (v29)
    {
      if ([v29 count])
      {
LABEL_21:
        [(RTAuthorizedLocationZDRLocationManager *)self setZdrLocationsMemoryCopy:v46[5]];
        v23 = 1;
LABEL_14:

        _Block_object_dispose(&v41, 8);
        _Block_object_dispose(&v45, 8);

        return v23;
      }

      v28 = v46;
      v30 = v46[5];
    }

    else
    {
      v30 = 0;
    }

    v28[5] = 0;

    goto LABEL_21;
  }

  [(RTAuthorizedLocationZDRLocationManager *)self setZdrLocationsMemoryCopy:0];
  return 0;
}

void __66__RTAuthorizedLocationZDRLocationManager__fetchStoredZDRLocations__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v28[2] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    v7 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v20 = objc_opt_class();
      v21 = NSStringFromClass(v20);
      v22 = NSStringFromSelector(*(a1 + 64));
      v23 = 138412802;
      v24 = v21;
      v25 = 2112;
      v26 = v22;
      v27 = 2114;
      v28[0] = v6;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "%@:%@,zdr fetch error,%{public}@", &v23, 0x20u);
    }

    goto LABEL_4;
  }

  v14 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    v17 = NSStringFromSelector(*(a1 + 64));
    v23 = 138412802;
    v24 = v16;
    v25 = 2112;
    v26 = v17;
    v27 = 1026;
    LODWORD(v28[0]) = [v5 count];
    _os_log_impl(&dword_2304B3000, v14, OS_LOG_TYPE_DEFAULT, "%@:%@,Updated list,zdrLocs count,%{public}d", &v23, 0x1Cu);
  }

  if (v5 && [v5 count])
  {
    v18 = *(*(a1 + 56) + 8);
    v19 = v5;
    v7 = *(v18 + 40);
    *(v18 + 40) = v19;
LABEL_4:
  }

  v8 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = NSStringFromSelector(*(a1 + 64));
    v12 = [*(*(*(a1 + 56) + 8) + 40) count];
    v13 = [v5 count];
    v23 = 138413058;
    v24 = v10;
    v25 = 2112;
    v26 = v11;
    v27 = 1026;
    LODWORD(v28[0]) = v12;
    WORD2(v28[0]) = 1026;
    *(v28 + 6) = v13;
    _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_DEFAULT, "%@:%@,total zdrLocationsList,%{public}u,zdrLocs,%{public}u", &v23, 0x22u);
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

- (void)_getSetupLocationFromZDRLocations:(id)a3
{
  v44[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (![(RTAuthorizedLocationZDRLocationManager *)self isUnlockedSinceBoot])
  {
    v18 = objc_alloc(MEMORY[0x277CCA9B8]);
    v19 = *MEMORY[0x277D01448];
    v43 = *MEMORY[0x277CCA450];
    v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"Device is not first unlocked"];
    v44[0] = v20;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:&v43 count:1];
    v22 = v18;
    v23 = v19;
    v24 = 2;
LABEL_19:
    v25 = [v22 initWithDomain:v23 code:v24 userInfo:v21];

    v5[2](v5, 0, v25);
    goto LABEL_21;
  }

  v6 = [(RTAuthorizedLocationZDRLocationManager *)self zdrLocationsMemoryCopy];

  if (!v6)
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v29 = objc_opt_class();
      v30 = NSStringFromClass(v29);
      v31 = NSStringFromSelector(a2);
      *buf = 138412546;
      v40 = v30;
      v41 = 2112;
      v42 = v31;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "%@:%@,ZdrStoreEmpty,retry", buf, 0x16u);
    }

    if (![(RTAuthorizedLocationZDRLocationManager *)self _fetchStoredZDRLocations])
    {
      v27 = objc_alloc(MEMORY[0x277CCA9B8]);
      v28 = *MEMORY[0x277D01448];
      v37 = *MEMORY[0x277CCA450];
      v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"Fetch failed, ZDR not available"];
      v38 = v20;
      v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
      v22 = v27;
      v23 = v28;
      v24 = 5;
      goto LABEL_19;
    }
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v8 = [(RTAuthorizedLocationZDRLocationManager *)self zdrLocationsMemoryCopy];
  v9 = [v8 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v33;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v33 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v32 + 1) + 8 * i);
        if ([v13 zdrLocationType] == 4 || objc_msgSend(v13, "zdrLocationType") == 5)
        {
          v26 = [MEMORY[0x277CBEB18] array];
          [v26 addObject:v13];
          (v5)[2](v5, v26, 0);

          goto LABEL_21;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v32 objects:v36 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v14 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    v17 = NSStringFromSelector(a2);
    *buf = 138412546;
    v40 = v16;
    v41 = 2112;
    v42 = v17;
    _os_log_impl(&dword_2304B3000, v14, OS_LOG_TYPE_DEFAULT, "%@:%@,SetupLocation not present", buf, 0x16u);
  }

  v5[2](v5, 0, 0);
LABEL_21:
}

- (id)_deduceSetupLocation
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = [(RTAuthorizedLocationZDRLocationManager *)self trustedTimeNow];
  if (!v4)
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      v20 = NSStringFromSelector(a2);
      v22 = 138412546;
      v23 = v19;
      v24 = 2112;
      v25 = v20;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_DEFAULT, "%@:%@, failed to fetch trusted time.", &v22, 0x16u);
    }

    goto LABEL_10;
  }

  v5 = [(RTAuthorizedLocationZDRLocationManager *)self _fetchCurrentLocation];
  v6 = v5;
  if (!v5)
  {
LABEL_10:
    v17 = 0;
    goto LABEL_11;
  }

  v7 = [v5 timestamp];
  [v4 timeIntervalSinceDate:v7];
  v9 = v8;

  [v6 horizontalAccuracy];
  v11 = v10;
  v12 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    v15 = NSStringFromSelector(a2);
    [v6 horizontalAccuracy];
    v22 = 138413570;
    v23 = v14;
    v24 = 2112;
    v25 = v15;
    v26 = 2050;
    v27 = v9;
    v28 = 2050;
    v29 = v16;
    v30 = 1026;
    v31 = v11 < 100.0;
    v32 = 1026;
    v33 = v9 <= 3600.0;
    _os_log_impl(&dword_2304B3000, v12, OS_LOG_TYPE_DEFAULT, "%@:%@,ageOfCurLocation,%{public}.3lf,curLoc.horizontalAccuracy,%{public}.3lf,isHorAccAcceptableForCurLoc,%{public}d,isLocationAgeAcceptableForCurLoc,%{public}d", &v22, 0x36u);
  }

  v17 = 0;
  if (v11 < 100.0 && v9 <= 3600.0)
  {
    v6 = v6;
    v17 = v6;
  }

LABEL_11:

  return v17;
}

- (id)_fetchLatestLocationFromListOfLocations:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = a3;
  v3 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v26;
    v7 = *MEMORY[0x277CE4290];
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v26 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v25 + 1) + 8 * i);
        v10 = objc_autoreleasePoolPush();
        if (v9)
        {
          v11 = [v9 sourceInformation];
          v12 = ([v11 isProducedByAccessory] & 1) == 0 && objc_msgSend(v9, "type") != 3;

          v13 = [v9 sourceInformation];
          v14 = [v13 isSimulatedBySoftware];

          v15 = [v9 integrity];
          [v9 horizontalAccuracy];
          if (v12)
          {
            v17 = v16 >= 0.0 && v14 == 0;
            if (v17 && v15 != v7)
            {
              if (!v5 || ([v9 timestamp], v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "timestamp"), v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v19, "compare:", v20), v20, v19, v21 == -1))
              {
                v22 = v9;

                v5 = v22;
              }
            }
          }
        }

        objc_autoreleasePoolPop(v10);
      }

      v4 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_fetchCurrentLocation
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = [[RTLocationRequestOptions alloc] initWithDesiredAccuracy:1 horizontalAccuracy:0 maxAge:100.0 yieldLastLocation:100.0 timeout:3600.0 fallback:1.5 fallbackHorizontalAccuracy:1.0 fallbackMaxAge:1.0];
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__185;
  v32 = __Block_byref_object_dispose__185;
  v33 = 0;
  v4 = dispatch_semaphore_create(0);
  locationManager = self->_locationManager;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __63__RTAuthorizedLocationZDRLocationManager__fetchCurrentLocation__block_invoke;
  v25[3] = &unk_2788D24A0;
  v27 = &v28;
  v6 = v4;
  v26 = v6;
  [(RTLocationManager *)locationManager fetchCurrentLocationWithOptions:v3 handler:v25];
  v7 = v6;
  v8 = [MEMORY[0x277CBEAA8] now];
  v9 = dispatch_time(0, 30000000000);
  if (dispatch_semaphore_wait(v7, v9))
  {
    v10 = [MEMORY[0x277CBEAA8] now];
    [v10 timeIntervalSinceDate:v8];
    v12 = v11;
    v13 = objc_opt_new();
    v14 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_146];
    v15 = [MEMORY[0x277CCACC8] callStackSymbols];
    v16 = [v15 filteredArrayUsingPredicate:v14];
    v17 = [v16 firstObject];

    [v13 submitToCoreAnalytics:v17 type:1 duration:v12];
    v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2304B3000, v18, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
    }

    v19 = MEMORY[0x277CCA9B8];
    v34 = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v34 count:1];
    v21 = [v19 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v20];

    if (v21)
    {
      v22 = v21;
    }
  }

  v23 = v29[5];
  _Block_object_dispose(&v28, 8);

  return v23;
}

void __63__RTAuthorizedLocationZDRLocationManager__fetchCurrentLocation__block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (id)_fetchRecentLocations
{
  v65[1] = *MEMORY[0x277D85DE8];
  v44 = [(RTAuthorizedLocationZDRLocationManager *)self trustedTimeNow];
  if (v44)
  {
    v49 = 0;
    v50 = &v49;
    v51 = 0x3032000000;
    v52 = __Block_byref_object_copy__185;
    v53 = __Block_byref_object_dispose__185;
    v54 = [MEMORY[0x277CBEB18] array];
    v3 = v44;
    v43 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeInterval:v3 sinceDate:-3600.0];
    v4 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = objc_opt_class();
      v6 = NSStringFromClass(v5);
      v7 = NSStringFromSelector(a2);
      *buf = 138413570;
      *&buf[4] = v6;
      *&buf[12] = 2112;
      *&buf[14] = v7;
      *&buf[22] = 1026;
      LODWORD(v61) = 0;
      WORD2(v61) = 2114;
      *(&v61 + 6) = v3;
      HIWORD(v61) = 2114;
      v62 = v43;
      v63 = 2114;
      v64 = v3;
      _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_DEFAULT, "%@:%@,durationOfLocationQuery_s,%{public}d,endDate,%{public}@,startDate,%{public}@,curTime,%{public}@", buf, 0x3Au);
    }

    v42 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v43 endDate:v3];
    v8 = [objc_alloc(MEMORY[0x277D01320]) initWithDateInterval:v42 horizontalAccuracy:100 batchSize:0 ascending:100.0];
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    *&v61 = __Block_byref_object_copy__185;
    *(&v61 + 1) = __Block_byref_object_dispose__185;
    v62 = 0;
    v9 = dispatch_semaphore_create(0);
    locationManager = self->_locationManager;
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __63__RTAuthorizedLocationZDRLocationManager__fetchRecentLocations__block_invoke;
    v45[3] = &unk_2788C4490;
    v47 = buf;
    v48 = &v49;
    v11 = v9;
    v46 = v11;
    v40 = v8;
    [(RTLocationManager *)locationManager fetchStoredLocationsWithOptions:v8 handler:v45];
    v12 = v11;
    v13 = [MEMORY[0x277CBEAA8] now];
    v14 = dispatch_time(0, 30000000000);
    if (dispatch_semaphore_wait(v12, v14))
    {
      v15 = [MEMORY[0x277CBEAA8] now];
      [v15 timeIntervalSinceDate:v13];
      v17 = v16;
      v18 = objc_opt_new();
      v19 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_146];
      v20 = [MEMORY[0x277CCACC8] callStackSymbols];
      v21 = [v20 filteredArrayUsingPredicate:v19];
      v22 = [v21 firstObject];

      [v18 submitToCoreAnalytics:v22 type:1 duration:v17];
      v23 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
      {
        *v55 = 0;
        _os_log_fault_impl(&dword_2304B3000, v23, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v55, 2u);
      }

      v24 = MEMORY[0x277CCA9B8];
      v65[0] = *MEMORY[0x277CCA450];
      *v55 = @"semaphore wait timeout";
      v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v55 forKeys:v65 count:1];
      v26 = [v24 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v25];

      if (v26)
      {
        v27 = v26;
      }
    }

    else
    {
      v26 = 0;
    }

    v33 = v26;
    if (*(*&buf[8] + 40) | v33)
    {
      v34 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        v36 = objc_opt_class();
        v37 = NSStringFromClass(v36);
        v38 = NSStringFromSelector(a2);
        v39 = *(*&buf[8] + 40);
        *v55 = 138412802;
        *&v55[4] = v37;
        v56 = 2112;
        v57 = v38;
        v58 = 2114;
        v59 = v39;
        _os_log_error_impl(&dword_2304B3000, v34, OS_LOG_TYPE_ERROR, "%@:%@,failed to fetch locations:%{public}@.", v55, 0x20u);
      }

      v32 = 0;
    }

    else
    {
      v32 = v50[5];
    }

    _Block_object_dispose(buf, 8);
    _Block_object_dispose(&v49, 8);
  }

  else
  {
    v28 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v29 = objc_opt_class();
      v30 = NSStringFromClass(v29);
      v31 = NSStringFromSelector(a2);
      *buf = 138412546;
      *&buf[4] = v30;
      *&buf[12] = 2112;
      *&buf[14] = v31;
      _os_log_impl(&dword_2304B3000, v28, OS_LOG_TYPE_DEFAULT, "%@:%@,failed to fetch trusted time.", buf, 0x16u);
    }

    v32 = 0;
  }

  return v32;
}

void __63__RTAuthorizedLocationZDRLocationManager__fetchRecentLocations__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    [*(*(*(a1 + 48) + 8) + 40) addObjectsFromArray:v6];
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

- (id)_getHomeWorkSchoolLois
{
  v60[1] = *MEMORY[0x277D85DE8];
  v3 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = NSStringFromSelector(a2);
    *buf = 138412546;
    *&buf[4] = v5;
    *&buf[12] = 2112;
    *&buf[14] = v6;
    _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_DEFAULT, "%@:%@,called", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v57 = __Block_byref_object_copy__185;
  v58 = __Block_byref_object_dispose__185;
  v59 = [MEMORY[0x277CBEB18] array];
  v7 = 1;
  v44 = *MEMORY[0x277D01448];
  v45 = *MEMORY[0x277CCA450];
  do
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = NSStringFromSelector(a2);
      *v51 = 138412802;
      *&v51[4] = v10;
      v52 = 2112;
      v53 = v11;
      v54 = 2050;
      v55 = v7;
      _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_DEFAULT, "%@:%@,type,%{public}lu", v51, 0x20u);
    }

    v12 = dispatch_semaphore_create(0);
    v13 = [(RTAuthorizedLocationZDRLocationManager *)self learnedLocationManager];
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = __64__RTAuthorizedLocationZDRLocationManager__getHomeWorkSchoolLois__block_invoke;
    v47[3] = &unk_2788D24C8;
    v47[4] = self;
    v50 = a2;
    v14 = v12;
    v48 = v14;
    v49 = buf;
    [v13 fetchLocationsOfInterestWithPlaceType:v7 handler:v47];

    v15 = v14;
    v16 = [MEMORY[0x277CBEAA8] now];
    v17 = dispatch_time(0, 30000000000);
    if (dispatch_semaphore_wait(v15, v17))
    {
      v18 = [MEMORY[0x277CBEAA8] now];
      [v18 timeIntervalSinceDate:v16];
      v20 = v19;
      v21 = objc_opt_new();
      v22 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_146];
      v23 = [MEMORY[0x277CCACC8] callStackSymbols];
      v24 = [v23 filteredArrayUsingPredicate:v22];
      v25 = [v24 firstObject];

      [v21 submitToCoreAnalytics:v25 type:1 duration:v20];
      v26 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
      {
        *v51 = 0;
        _os_log_fault_impl(&dword_2304B3000, v26, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v51, 2u);
      }

      v27 = MEMORY[0x277CCA9B8];
      v60[0] = v45;
      *v51 = @"semaphore wait timeout";
      v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v51 forKeys:v60 count:1];
      v29 = [v27 errorWithDomain:v44 code:15 userInfo:v28];

      if (v29)
      {
        v30 = v29;
      }
    }

    else
    {
      v29 = 0;
    }

    v31 = v29;
    if (v31)
    {
      v32 = v31;
      v33 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        v34 = objc_opt_class();
        v35 = NSStringFromClass(v34);
        v36 = NSStringFromSelector(a2);
        *v51 = 138412546;
        *&v51[4] = v35;
        v52 = 2112;
        v53 = v36;
        _os_log_impl(&dword_2304B3000, v33, OS_LOG_TYPE_DEFAULT, "%@:%@,semaphore timeout error", v51, 0x16u);
      }

      goto LABEL_24;
    }

    ++v7;
  }

  while (v7 != 4);
  v37 = *(*&buf[8] + 40);
  if (v37 && [v37 count])
  {
    v38 = *(*&buf[8] + 40);
    goto LABEL_25;
  }

  v39 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
  {
    v40 = objc_opt_class();
    v41 = NSStringFromClass(v40);
    v42 = NSStringFromSelector(a2);
    *v51 = 138412546;
    *&v51[4] = v41;
    v52 = 2112;
    v53 = v42;
    _os_log_impl(&dword_2304B3000, v39, OS_LOG_TYPE_DEFAULT, "%@:%@,fetch error", v51, 0x16u);
  }

LABEL_24:
  v38 = 0;
LABEL_25:
  _Block_object_dispose(buf, 8);

  return v38;
}

void __64__RTAuthorizedLocationZDRLocationManager__getHomeWorkSchoolLois__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v37 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  log = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
  v7 = os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v7)
    {
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v10 = NSStringFromSelector(*(a1 + 56));
      *buf = 138412802;
      v32 = v9;
      v33 = 2112;
      v34 = v10;
      v35 = 2114;
      v36 = v6;
      _os_log_impl(&dword_2304B3000, log, OS_LOG_TYPE_DEFAULT, "%@:%@,error,%{public}@", buf, 0x20u);
    }
  }

  else
  {
    if (v7)
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v13 = NSStringFromSelector(*(a1 + 56));
      *buf = 138412802;
      v32 = v12;
      v33 = 2112;
      v34 = v13;
      v35 = 1026;
      LODWORD(v36) = [v5 count];
      _os_log_impl(&dword_2304B3000, log, OS_LOG_TYPE_DEFAULT, "%@:%@,LOI count,%{public}d", buf, 0x1Cu);
    }

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    log = v5;
    v14 = [log countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v14)
    {
      v15 = v14;
      v24 = v5;
      v16 = *v27;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v27 != v16)
          {
            objc_enumerationMutation(log);
          }

          v18 = *(*(&v26 + 1) + 8 * i);
          v19 = objc_autoreleasePoolPush();
          v20 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            v21 = objc_opt_class();
            v22 = NSStringFromClass(v21);
            v23 = NSStringFromSelector(*(a1 + 56));
            *buf = 138412803;
            v32 = v22;
            v33 = 2112;
            v34 = v23;
            v35 = 2117;
            v36 = v18;
            _os_log_impl(&dword_2304B3000, v20, OS_LOG_TYPE_DEFAULT, "%@:%@,%{sensitive}@", buf, 0x20u);
          }

          [*(*(*(a1 + 48) + 8) + 40) addObject:v18];
          objc_autoreleasePoolPop(v19);
        }

        v15 = [log countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v15);
      v6 = 0;
      v5 = v24;
    }
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

- (BOOL)_isZdrLocationTrusted:(id)a3
{
  v43 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [(RTAuthorizedLocationZDRLocationManager *)self trustedTimeNow];
  v7 = [v5 zdrLocationDbEntryTimeCfatSec];
  [v6 timeIntervalSinceDate:v7];
  v9 = v8;

  [v5 zdrLocationLatitudeDeg];
  v11 = v10;
  [v5 zdrLocationLongitudeDeg];
  v13 = [(RTAuthorizedLocationZDRLocationManager *)self _isNullLocation:v11 lon:v12];
  v14 = [v5 zdrLocationType];

  v15 = v14 == 4;
  if (v9 >= 604800.0)
  {
    v15 = 0;
  }

  v16 = !v13;
  v17 = v15 & v16;
  v18 = v9 > 3600.0 && v14 != 4;
  v19 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = objc_opt_class();
    v21 = NSStringFromClass(v20);
    v22 = NSStringFromSelector(a2);
    *buf = 138414338;
    v26 = v21;
    v27 = 2112;
    v28 = v22;
    v29 = 2050;
    v30 = v9;
    v31 = 1026;
    v32 = v9 > 3600.0;
    v33 = 1026;
    v34 = v17;
    v35 = 1026;
    v36 = v16;
    v37 = 1026;
    v38 = v9 < 604800.0;
    v39 = 1026;
    v40 = v14 == 4;
    v41 = 1026;
    v42 = v18 & v16;
    _os_log_impl(&dword_2304B3000, v19, OS_LOG_TYPE_DEFAULT, "%@:%@,zdrAge,%{public}.3lf,zdrLocationPassTrustAgeCriteria,%{public}d,isSetupLocationTrusted,%{public}d,isValidLoc,%{public}d,isZdrAgeWithinExemptLimit,%{public}d,isSetupLoc,%{public}d,isZdrLocTrusted,%{public}d", buf, 0x44u);
  }

  if (v18)
  {
    v23 = v16;
  }

  else
  {
    v23 = v17;
  }

  return v23;
}

- (int64_t)_assertWeAreAtZDRLocationWithVisit:(id)a3
{
  v138 = *MEMORY[0x277D85DE8];
  v112 = a3;
  v5 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
  v109 = a2;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = NSStringFromSelector(a2);
    v9 = [(RTAuthorizedLocationZDRLocationManager *)self zdrLocationsMemoryCopy];
    *buf = 138412802;
    v124 = v7;
    v125 = 2112;
    v126 = v8;
    v127 = 1026;
    *v128 = [v9 count];
    _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_DEFAULT, "%@:%@,zdrLocationsMemoryCopy.count,%{public}u", buf, 0x1Cu);

    a2 = v109;
  }

  if (!v112 || ![v112 type] || objc_msgSend(v112, "type") == 3 || (objc_msgSend(v112, "entry"), v10 = objc_claimAutoreleasedReturnValue(), v10, !v10))
  {
    v31 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = objc_opt_class();
      v33 = NSStringFromClass(v32);
      v34 = NSStringFromSelector(a2);
      *buf = 138412546;
      v124 = v33;
      v125 = 2112;
      v126 = v34;
      _os_log_impl(&dword_2304B3000, v31, OS_LOG_TYPE_DEFAULT, "%@:%@, no available curVisit locations, early return", buf, 0x16u);
    }

    v35 = 8;
    goto LABEL_17;
  }

  if (([MEMORY[0x277CBFC10] locationServicesEnabled] & 1) == 0)
  {
    v31 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v37 = objc_opt_class();
      v38 = NSStringFromClass(v37);
      v39 = NSStringFromSelector(a2);
      *buf = 138412546;
      v124 = v38;
      v125 = 2112;
      v126 = v39;
      _os_log_impl(&dword_2304B3000, v31, OS_LOG_TYPE_DEFAULT, "%@:%@, Location services disabled can not trust visit", buf, 0x16u);
    }

    v35 = 9;
    goto LABEL_17;
  }

  v122 = CLLocationCoordinate2DMake(0.0, 0.0);
  v11 = [v112 location];
  [v11 latitude];
  v13 = v12;
  v14 = [v112 location];
  [v14 longitude];
  v121 = CLLocationCoordinate2DMake(v13, v15);

  v16 = [v112 placeInference];
  if (v16)
  {
    v17 = v16;
    v18 = [v112 placeInference];
    v19 = [v18 mapItem];

    if (v19)
    {
      v20 = self;
      v21 = [v112 placeInference];
      v22 = [v21 mapItem];
      v23 = [v22 location];
      [v23 latitude];
      v25 = v24;
      v26 = [v112 placeInference];
      v27 = [v26 mapItem];
      v28 = [v27 location];
      [v28 longitude];
      v122 = CLLocationCoordinate2DMake(v25, v29);

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        v30 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
        a2 = v109;
        self = v20;
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
        {
          v102 = objc_opt_class();
          v103 = NSStringFromClass(v102);
          v104 = NSStringFromSelector(v109);
          *buf = 138413059;
          v124 = v103;
          v125 = 2112;
          v126 = v104;
          v127 = 2053;
          *v128 = v122.latitude;
          *&v128[8] = 2053;
          *&v128[10] = v122.longitude;
          _os_log_debug_impl(&dword_2304B3000, v30, OS_LOG_TYPE_DEBUG, "%@:%@, also using visit map item %{sensitive}.6f,%{sensitive}.6f", buf, 0x2Au);

          a2 = v109;
        }

        v106 = 1;
      }

      else
      {
        v106 = 1;
        a2 = v109;
        self = v20;
      }
    }

    else
    {
      v106 = 0;
      a2 = v109;
    }
  }

  else
  {
    v106 = 0;
  }

  v40 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
  {
    v41 = objc_opt_class();
    v42 = NSStringFromClass(v41);
    v43 = NSStringFromSelector(a2);
    *buf = 138412803;
    v124 = v42;
    v125 = 2112;
    v126 = v43;
    v127 = 2117;
    *v128 = v112;
    _os_log_impl(&dword_2304B3000, v40, OS_LOG_TYPE_DEFAULT, "%@:%@,curVisit,%{sensitive}@", buf, 0x20u);

    a2 = v109;
  }

  v119 = 0u;
  v120 = 0u;
  v117 = 0u;
  v118 = 0u;
  obj = [(RTAuthorizedLocationZDRLocationManager *)self zdrLocationsMemoryCopy];
  v44 = [obj countByEnumeratingWithState:&v117 objects:v137 count:16];
  if (!v44)
  {
    v108 = 0;
    goto LABEL_65;
  }

  v46 = v44;
  v108 = 0;
  v113 = *v118;
  *&v45 = 138412802;
  v105 = v45;
  while (2)
  {
    v47 = 0;
    v107 = v46;
    do
    {
      if (*v118 != v113)
      {
        objc_enumerationMutation(obj);
      }

      v48 = *(*(&v117 + 1) + 8 * v47);
      v49 = objc_autoreleasePoolPush();
      if (v48)
      {
        v50 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
        if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
        {
          v51 = objc_opt_class();
          NSStringFromClass(v51);
          v53 = v52 = self;
          v54 = NSStringFromSelector(a2);
          v55 = [v48 zdrLocationUUID];
          [v48 zdrLocationDbEntryTimeCfatSec];
          v56 = v111 = v49;
          v57 = [v48 zdrLocationType];
          v58 = [v48 zdrLocationLastSeenTimeCfatSec];
          [v48 zdrLocationLatitudeDeg];
          v60 = v59;
          [v48 zdrLocationLongitudeDeg];
          v62 = v61;
          [v48 zdrLocationLatitudeDeg];
          v64 = v63;
          [v48 zdrLocationLongitudeDeg];
          v66 = [(RTAuthorizedLocationZDRLocationManager *)v52 _isNullLocation:v64 lon:v65];
          *buf = 138414339;
          v124 = v53;
          v125 = 2112;
          v126 = v54;
          v127 = 2114;
          *v128 = v55;
          *&v128[8] = 2114;
          *&v128[10] = v56;
          *&v128[18] = 1026;
          *&v128[20] = v57;
          v129 = 2114;
          v130 = v58;
          v131 = 2053;
          v132 = v60;
          v133 = 2053;
          v134 = v62;
          v135 = 1026;
          v136 = !v66;
          _os_log_impl(&dword_2304B3000, v50, OS_LOG_TYPE_DEFAULT, "%@:%@,zdrLoc,UUID,%{public}@,entryTime,%{public}@,locationType,%{public}d,lastSeenTime,%{public}@,lat,%{sensitive}.7lf,lon,%{sensitive}.7lf,isValid,%{public}d", buf, 0x54u);

          v46 = v107;
          v49 = v111;

          a2 = v109;
          self = v52;
        }
      }

      if (![(RTAuthorizedLocationZDRLocationManager *)self _isZdrLocationTrusted:v48, v105])
      {
        v70 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
        if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
        {
          v77 = objc_opt_class();
          v72 = NSStringFromClass(v77);
          NSStringFromSelector(a2);
          v74 = v73 = v49;
          *buf = 138412546;
          v124 = v72;
          v125 = 2112;
          v126 = v74;
          v75 = v70;
          v76 = "%@:%@,zdrAge not trustable";
          goto LABEL_41;
        }

LABEL_42:

        goto LABEL_60;
      }

      v67 = [v112 location];
      [v67 horizontalUncertainty];
      v69 = v68;

      if (v69 > 100.0)
      {
        v70 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
        if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
        {
          v71 = objc_opt_class();
          v72 = NSStringFromClass(v71);
          NSStringFromSelector(a2);
          v74 = v73 = v49;
          *buf = 138412546;
          v124 = v72;
          v125 = 2112;
          v126 = v74;
          v75 = v70;
          v76 = "%@:%@,isHorAccTooLarge";
LABEL_41:
          _os_log_impl(&dword_2304B3000, v75, OS_LOG_TYPE_DEFAULT, v76, buf, 0x16u);

          v49 = v73;
          goto LABEL_42;
        }

        goto LABEL_42;
      }

      v116.latitude = 0.0;
      v116.longitude = 0.0;
      [v48 zdrLocationLatitudeDeg];
      v79 = v78;
      [v48 zdrLocationLongitudeDeg];
      v116 = CLLocationCoordinate2DMake(v79, v80);
      v81 = [(RTAuthorizedLocationZDRLocationManager *)self distanceCalculator];
      v115 = v108;
      [v81 distanceFromLocationCoordinate:&v116 toLocationCoordinate:&v121 error:&v115];
      v83 = v82;
      v31 = v115;

      if (v31)
      {
        v84 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
        if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
        {
          v94 = objc_opt_class();
          NSStringFromClass(v94);
          v96 = v95 = v49;
          v97 = NSStringFromSelector(a2);
          *buf = v105;
          v124 = v96;
          v125 = 2112;
          v126 = v97;
          v127 = 2114;
          *v128 = v31;
          _os_log_error_impl(&dword_2304B3000, v84, OS_LOG_TYPE_ERROR, "%@:%@,failed to compute distance:%{public}@.", buf, 0x20u);

          a2 = v109;
          v49 = v95;
        }
      }

      else
      {
        if (v106)
        {
          distanceCalculator = self->_distanceCalculator;
          v114 = 0;
          [(RTDistanceCalculator *)distanceCalculator distanceFromLocationCoordinate:&v116 toLocationCoordinate:&v122 error:&v114];
          v87 = v86;
          v31 = v114;
          if (v31)
          {
            v88 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
            if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
            {
              v98 = objc_opt_class();
              NSStringFromClass(v98);
              v100 = v99 = v49;
              v101 = NSStringFromSelector(a2);
              *buf = v105;
              v124 = v100;
              v125 = 2112;
              v126 = v101;
              v127 = 2114;
              *v128 = v31;
              _os_log_error_impl(&dword_2304B3000, v88, OS_LOG_TYPE_ERROR, "%@:%@,failed to compute distance:%{public}@.", buf, 0x20u);

              a2 = v109;
              v49 = v99;
            }
          }

          if (v87 >= v83)
          {
            v87 = v83;
          }
        }

        else
        {
          v31 = 0;
          v87 = v83;
        }

        v89 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
        if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
        {
          v90 = objc_opt_class();
          NSStringFromClass(v90);
          v92 = v91 = v49;
          v93 = NSStringFromSelector(a2);
          *buf = 138413314;
          v124 = v92;
          v125 = 2112;
          v126 = v93;
          v127 = 1026;
          *v128 = v87 <= 400.0;
          v46 = v107;
          *&v128[4] = 2050;
          *&v128[6] = v87;
          *&v128[14] = 2050;
          *&v128[16] = v83;
          _os_log_impl(&dword_2304B3000, v89, OS_LOG_TYPE_DEFAULT, "%@:%@,isNearZDRLocation,%{public}d,effectiveDistanceFromZdr_m,%{public}.3lf,distanceFromZDRLocToVisitEntryLoc_m,%{public}.3lf", buf, 0x30u);

          a2 = v109;
          v49 = v91;
        }

        [(RTAuthorizedLocationZDRLocationManager *)self _collectZdrConfirmationMetric:v48 zdrLoc:v87];
        if (v87 <= 400.0)
        {
          objc_autoreleasePoolPop(v49);

          v35 = 1;
          goto LABEL_17;
        }
      }

      v108 = v31;
LABEL_60:
      objc_autoreleasePoolPop(v49);
      ++v47;
    }

    while (v46 != v47);
    v46 = [obj countByEnumeratingWithState:&v117 objects:v137 count:16];
    if (v46)
    {
      continue;
    }

    break;
  }

LABEL_65:

  [(RTAuthorizedLocationZDRLocationManager *)self _collectZdrConfirmationMetric:0 zdrLoc:-1.0];
  v35 = 5;
  v31 = v108;
LABEL_17:

  return v35;
}

- (int64_t)_assertWeAreAtAnyZDRLocation:(id)a3
{
  v63 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = NSStringFromSelector(a2);
    *buf = 138412802;
    v45 = v7;
    v46 = 2112;
    v47 = v8;
    v48 = 1026;
    LODWORD(v49) = [v4 count];
    _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_DEFAULT, "%@:%@,zdrLocations count,%{public}u", buf, 0x1Cu);
  }

  v36 = [(RTAuthorizedLocationZDRLocationManager *)self _fetchRecentLocations];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = v4;
  v9 = [obj countByEnumeratingWithState:&v40 objects:v62 count:16];
  if (v9)
  {
    v11 = v9;
    v37 = 0;
    v12 = *v41;
    *&v10 = 138414339;
    v32 = v10;
    v33 = *v41;
    while (2)
    {
      v13 = 0;
      v35 = v11;
      do
      {
        if (*v41 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v40 + 1) + 8 * v13);
        v15 = objc_autoreleasePoolPush();
        if (v14)
        {
          v16 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            v17 = objc_opt_class();
            v18 = NSStringFromClass(v17);
            v19 = NSStringFromSelector(a2);
            v20 = [v14 zdrLocationUUID];
            v21 = [v14 zdrLocationDbEntryTimeCfatSec];
            v39 = [v14 zdrLocationType];
            v22 = [v14 zdrLocationLastSeenTimeCfatSec];
            [v14 zdrLocationLatitudeDeg];
            v24 = v23;
            [v14 zdrLocationLongitudeDeg];
            v26 = v25;
            [v14 zdrLocationLatitudeDeg];
            v28 = v27;
            [v14 zdrLocationLongitudeDeg];
            v30 = [(RTAuthorizedLocationZDRLocationManager *)self _isNullLocation:v28 lon:v29];
            *buf = v32;
            v45 = v18;
            v46 = 2112;
            v47 = v19;
            v48 = 2114;
            v49 = v20;
            v50 = 2114;
            v51 = v21;
            v52 = 1026;
            v53 = v39;
            v54 = 2114;
            v55 = v22;
            v56 = 2053;
            v57 = v24;
            v58 = 2053;
            v59 = v26;
            v60 = 1026;
            v61 = !v30;
            _os_log_impl(&dword_2304B3000, v16, OS_LOG_TYPE_DEFAULT, "%@:%@,zdrLoc,UUID,%{public}@,entryTime,%{public}@,locationType,%{public}d,lastSeenTime,%{public}@,lat,%{sensitive}.7lf,lon,%{sensitive}.7lf,isValid,%{public}d", buf, 0x54u);

            v11 = v35;
            v12 = v33;
          }
        }

        if ([(RTAuthorizedLocationZDRLocationManager *)self _isZdrLocationTrusted:v14, v32])
        {
          v37 = [(RTAuthorizedLocationZDRLocationManager *)self _assertWeAreAtSpecificZDRLocation:v14 recentLocations:v36];
          if (v37 == 1)
          {
            objc_autoreleasePoolPop(v15);
            v37 = 1;
            goto LABEL_19;
          }
        }

        objc_autoreleasePoolPop(v15);
        ++v13;
      }

      while (v11 != v13);
      v11 = [obj countByEnumeratingWithState:&v40 objects:v62 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v37 = 0;
  }

LABEL_19:

  return v37;
}

- (int64_t)_assertWeAreAtSpecificZDRLocation:(id)a3 recentLocations:(id)a4
{
  v86 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = NSStringFromSelector(a2);
    v12 = [(RTAuthorizedLocationZDRLocationManager *)self zdrLocationsMemoryCopy];
    *buf = 138413058;
    v81 = v10;
    v82 = 2112;
    v83 = v11;
    v84 = 1026;
    *v85 = [v12 count];
    *&v85[4] = 1026;
    *&v85[6] = [v7 count];
    _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_DEFAULT, "%@:%@,zdrLocationsMemoryCopy.count,%{public}u,recentLocations.count,%{public}u", buf, 0x22u);
  }

  if (v6)
  {
    if (v7 && [v7 count])
    {
      [v6 zdrLocationLatitudeDeg];
      v14 = v13;
      v73 = v6;
      [v6 zdrLocationLongitudeDeg];
      v79 = CLLocationCoordinate2DMake(v14, v15);
      v16 = [(RTAuthorizedLocationZDRLocationManager *)self trustedTimeNow];
      if ([v7 count] >= 1)
      {
        v18 = 0;
        v75 = 0;
        *&v17 = 138412802;
        v72 = v17;
        v74 = self;
        while (1)
        {
          v19 = [v7 objectAtIndexedSubscript:{v18, v72}];
          v20 = v19;
          if (!v19)
          {
            v23 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              v24 = objc_opt_class();
              v25 = NSStringFromClass(v24);
              v26 = NSStringFromSelector(a2);
              *buf = 138412546;
              v81 = v25;
              v82 = 2112;
              v83 = v26;
              _os_log_impl(&dword_2304B3000, v23, OS_LOG_TYPE_DEFAULT, "%@:%@,loc nil", buf, 0x16u);
            }

            goto LABEL_22;
          }

          v21 = [v19 sourceInformation];
          v22 = ([v21 isProducedByAccessory] & 1) != 0 || objc_msgSend(v20, "type") == 3;

          v27 = [v20 sourceInformation];
          v28 = [v27 isSimulatedBySoftware];

          if (v22 || v28)
          {
            break;
          }

          [v20 horizontalAccuracy];
          if (v29 > 100.0)
          {
            v23 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              v30 = objc_opt_class();
              v31 = NSStringFromClass(v30);
              v32 = NSStringFromSelector(a2);
              *buf = 138412546;
              v81 = v31;
              v82 = 2112;
              v83 = v32;
              v33 = v23;
              v34 = "%@:%@,isHorAccTooLarge";
              goto LABEL_21;
            }

            goto LABEL_22;
          }

          v36 = [v20 timestamp];
          [v16 timeIntervalSinceDate:v36];
          v38 = v37;

          v39 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
          {
            v40 = objc_opt_class();
            v41 = NSStringFromClass(v40);
            v42 = NSStringFromSelector(a2);
            v43 = [v20 timestamp];
            *buf = 138413314;
            v81 = v41;
            v82 = 2112;
            v83 = v42;
            v84 = 1026;
            *v85 = v38 > 3600.0;
            *&v85[4] = 2114;
            *&v85[6] = v16;
            *&v85[14] = 2114;
            *&v85[16] = v43;
            _os_log_impl(&dword_2304B3000, v39, OS_LOG_TYPE_DEFAULT, "%@:%@,Location isLocationStale,%{public}d,trustedNow,%{public}@,loc.timestamp,%{public}@", buf, 0x30u);
          }

          if (v38 > 3600.0)
          {

            v65 = 6;
            v6 = v73;
            goto LABEL_45;
          }

          v78.latitude = 0.0;
          v78.longitude = 0.0;
          [v20 coordinate];
          v45 = v44;
          [v20 coordinate];
          v78 = CLLocationCoordinate2DMake(v45, v46);
          self = v74;
          v47 = [(RTAuthorizedLocationZDRLocationManager *)v74 distanceCalculator];
          v77 = v75;
          [v47 distanceFromLocationCoordinate:&v79 toLocationCoordinate:&v78 error:&v77];
          v49 = v48;
          v50 = v77;

          if (v50)
          {
            v51 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
            if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
            {
              v58 = objc_opt_class();
              v59 = NSStringFromClass(v58);
              v60 = NSStringFromSelector(a2);
              *buf = v72;
              v81 = v59;
              v82 = 2112;
              v83 = v60;
              v84 = 2114;
              *v85 = v50;
              _os_log_error_impl(&dword_2304B3000, v51, OS_LOG_TYPE_ERROR, "%@:%@,failed to compute distance:%{public}@.", buf, 0x20u);
            }
          }

          else
          {
            [v20 horizontalAccuracy];
            v53 = v52 * 2.0 + 400.0;
            v54 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
            if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
            {
              v55 = objc_opt_class();
              v56 = NSStringFromClass(v55);
              v57 = NSStringFromSelector(a2);
              *buf = 138413314;
              v81 = v56;
              v82 = 2112;
              v83 = v57;
              v84 = 1026;
              *v85 = v49 <= 400.0;
              self = v74;
              *&v85[4] = 1026;
              *&v85[6] = v49 > v53;
              *&v85[10] = 2050;
              *&v85[12] = v49;
              _os_log_impl(&dword_2304B3000, v54, OS_LOG_TYPE_DEFAULT, "%@:%@,isNearZDRLocation,%{public}d,isOutsideOfAllowedArea,%{public}d,distanceFromZDRLocToStoredLoc_m,%{public}.3lf", buf, 0x2Cu);
            }

            if (v49 <= 400.0 || v49 > v53)
            {
              if (v49 <= 400.0)
              {
                v65 = 1;
              }

              else
              {
                v65 = 5;
              }

              v6 = v73;
              [(RTAuthorizedLocationZDRLocationManager *)self _collectZdrConfirmationMetric:v73 zdrLoc:v49];

              v70 = 0;
              goto LABEL_46;
            }
          }

          v75 = v50;
LABEL_23:

          if (++v18 >= [v7 count])
          {
            goto LABEL_44;
          }
        }

        v23 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v35 = objc_opt_class();
          v31 = NSStringFromClass(v35);
          v32 = NSStringFromSelector(a2);
          *buf = 138412546;
          v81 = v31;
          v82 = 2112;
          v83 = v32;
          v33 = v23;
          v34 = "%@:%@,isAccessory OR isSimulated location";
LABEL_21:
          _os_log_impl(&dword_2304B3000, v33, OS_LOG_TYPE_DEFAULT, v34, buf, 0x16u);
        }

LABEL_22:

        goto LABEL_23;
      }

      v75 = 0;
LABEL_44:
      v6 = v73;
      [(RTAuthorizedLocationZDRLocationManager *)self _collectZdrConfirmationMetric:v73 zdrLoc:-1.0];
      v65 = 5;
LABEL_45:
      v70 = v75;
LABEL_46:
    }

    else
    {
      v61 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
      if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
      {
        v62 = objc_opt_class();
        v63 = NSStringFromClass(v62);
        v64 = NSStringFromSelector(a2);
        *buf = 138412546;
        v81 = v63;
        v82 = 2112;
        v83 = v64;
        _os_log_impl(&dword_2304B3000, v61, OS_LOG_TYPE_DEFAULT, "%@:%@, no available storedLocations, early return", buf, 0x16u);
      }

      v65 = 2;
    }
  }

  else
  {
    v66 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
    if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
    {
      v67 = objc_opt_class();
      v68 = NSStringFromClass(v67);
      v69 = NSStringFromSelector(a2);
      *buf = 138412546;
      v81 = v68;
      v82 = 2112;
      v83 = v69;
      _os_log_impl(&dword_2304B3000, v66, OS_LOG_TYPE_DEFAULT, "%@:%@, no available ZDR locations, early return", buf, 0x16u);
    }

    v65 = 3;
  }

  return v65;
}

- (int)_getSetupLocationValidAgeSeconds
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = 4838400;
  v5 = [(RTAuthorizedLocationZDRLocationManager *)self platform];
  v6 = [v5 internalInstall];

  if (v6)
  {
    v7 = [(RTDefaultsManager *)self->_defaultsManager objectForKey:@"RTAuthorizedLocationManagerZDRSetupLocationAgeToBeStaleSeconds"];

    if (v7)
    {
      v8 = [(RTDefaultsManager *)self->_defaultsManager objectForKey:@"RTAuthorizedLocationManagerZDRSetupLocationAgeToBeStaleSeconds"];
      v4 = [v8 integerValue];
    }

    v9 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = NSStringFromSelector(a2);
      v14 = 138412802;
      v15 = v11;
      v16 = 2112;
      v17 = v12;
      v18 = 1026;
      v19 = v4;
      _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_DEFAULT, "%@:%@,setupAge,%{public}d", &v14, 0x1Cu);
    }
  }

  return v4;
}

- (void)_purgeExtraSetupLocations
{
  v125 = *MEMORY[0x277D85DE8];
  v105 = 0u;
  v106 = 0u;
  v107 = 0u;
  v108 = 0u;
  obj = [(RTAuthorizedLocationZDRLocationManager *)self zdrLocationsMemoryCopy];
  v96 = [obj countByEnumeratingWithState:&v105 objects:v124 count:16];
  if (v96)
  {
    v98 = 0;
    v3 = 0;
    v4 = 0;
    v5 = *v106;
    *&v2 = 138412546;
    v88 = v2;
    do
    {
      for (i = 0; i != v96; ++i)
      {
        if (*v106 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v105 + 1) + 8 * i);
        v8 = objc_autoreleasePoolPush();
        v9 = v8;
        if (v7)
        {
          v99 = v8;
          v10 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            v11 = objc_opt_class();
            NSStringFromClass(v11);
            v90 = v93 = v3;
            v12 = NSStringFromSelector(a2);
            [v7 zdrLocationUUID];
            v13 = v91 = v4;
            v14 = [v7 zdrLocationDbEntryTimeCfatSec];
            v15 = [v7 zdrLocationType];
            v16 = [v7 zdrLocationLastSeenTimeCfatSec];
            [v7 zdrLocationLatitudeDeg];
            v18 = v17;
            [v7 zdrLocationLongitudeDeg];
            v20 = v19;
            [v7 zdrLocationLatitudeDeg];
            v22 = v21;
            [v7 zdrLocationLongitudeDeg];
            v24 = [(RTAuthorizedLocationZDRLocationManager *)self _isNullLocation:v22 lon:v23];
            *buf = 138414339;
            v111 = v90;
            v112 = 2112;
            v113 = v12;
            v114 = 2114;
            *v115 = v13;
            *&v115[8] = 2114;
            *&v115[10] = v14;
            *&v115[18] = 1026;
            *&v115[20] = v15;
            v116 = 2114;
            v117 = v16;
            v118 = 2053;
            v119 = v18;
            v120 = 2053;
            v121 = v20;
            v122 = 1026;
            v123 = !v24;
            _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_DEFAULT, "%@:%@,zdrLoc,UUID,%{public}@,entryTime,%{public}@,locationType,%{public}d,lastSeenTime,%{public}@,lat,%{sensitive}.7lf,lon,%{sensitive}.7lf,isValid,%{public}d", buf, 0x54u);

            v4 = v91;
            v3 = v93;
          }

          v9 = v99;
        }

        if ([v7 zdrLocationType] == 4 || objc_msgSend(v7, "zdrLocationType") == 5)
        {
          v25 = [v7 zdrLocationDbEntryTimeCfatSec];

          if (v25)
          {
            if (v3)
            {
              v26 = [v3 zdrLocationLastSeenTimeCfatSec];
              v27 = [v7 zdrLocationLastSeenTimeCfatSec];
              if ([v26 compare:v27] == -1)
              {
                v28 = v3;
              }

              else
              {
                v28 = v7;
              }

              v29 = v28;

              v3 = v29;
            }

            else
            {
              v3 = v7;
            }

            ++v4;
            [v7 zdrLocationLatitudeDeg];
            v39 = v38;
            [v7 zdrLocationLongitudeDeg];
            v41 = [(RTAuthorizedLocationZDRLocationManager *)self _isNullLocation:v39 lon:v40];
            if (v98 || v41)
            {
              if (v98 != 0 && !v41)
              {
                v42 = [v3 zdrLocationLastSeenTimeCfatSec];
                v43 = [v7 zdrLocationLastSeenTimeCfatSec];
                if ([v42 compare:v43] == -1)
                {
                  v44 = v98;
                }

                else
                {
                  v44 = v7;
                }

                v45 = v44;

                v98 = v45;
              }
            }

            else
            {
              v98 = v7;
            }
          }

          else
          {
            v30 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
            {
              v31 = objc_opt_class();
              v32 = NSStringFromClass(v31);
              v33 = NSStringFromSelector(a2);
              *buf = v88;
              v111 = v32;
              v112 = 2112;
              v113 = v33;
              _os_log_impl(&dword_2304B3000, v30, OS_LOG_TYPE_DEFAULT, "%@:%@,entry time is invalid remove", buf, 0x16u);
            }

            [(RTAuthorizedLocationZDRLocationManager *)self _deleteZDRLocationEntryFromDb:v7];
          }
        }

        else
        {
          v34 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
          {
            v35 = objc_opt_class();
            v36 = NSStringFromClass(v35);
            v37 = NSStringFromSelector(a2);
            *buf = v88;
            v111 = v36;
            v112 = 2112;
            v113 = v37;
            _os_log_impl(&dword_2304B3000, v34, OS_LOG_TYPE_DEFAULT, "%@:%@,not a setuplocation skip", buf, 0x16u);
          }
        }

        objc_autoreleasePoolPop(v9);
      }

      v96 = [obj countByEnumeratingWithState:&v105 objects:v124 count:16];
    }

    while (v96);
  }

  else
  {
    v98 = 0;
    v3 = 0;
    v4 = 0;
  }

  v46 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
  if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
  {
    v47 = objc_opt_class();
    v48 = NSStringFromClass(v47);
    v49 = NSStringFromSelector(a2);
    *buf = 138413315;
    v111 = v48;
    v112 = 2112;
    v113 = v49;
    v114 = 1026;
    *v115 = v4;
    *&v115[4] = 2117;
    *&v115[6] = v3;
    *&v115[14] = 2117;
    *&v115[16] = v98;
    _os_log_impl(&dword_2304B3000, v46, OS_LOG_TYPE_DEFAULT, "%@:%@,numberOfSetupLocs,%{public}d,zdrSetupEntryWithOldestEntryTime,%{sensitive}@,zdrSetupEntryWithOldestValidLocation,%{sensitive}@", buf, 0x30u);
  }

  if (v3)
  {
    if (v98)
    {
      v50 = v98;
      v51 = [v50 zdrLocationDbEntryTimeCfatSec];
      v52 = [v3 zdrLocationDbEntryTimeCfatSec];
      v53 = [v51 earlierDate:v52];
      [v50 setZdrLocationDbEntryTimeCfatSec:v53];
    }

    else
    {
      v50 = v3;
    }

    v94 = v3;
    v54 = [(RTAuthorizedLocationZDRLocationManager *)self trustedTimeNow];
    v55 = [v50 zdrLocationDbEntryTimeCfatSec];
    [v54 timeIntervalSinceDate:v55];
    v57 = v56;

    v58 = [(RTAuthorizedLocationZDRLocationManager *)self _getSetupLocationValidAgeSeconds];
    v59 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
    if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
    {
      v60 = objc_opt_class();
      v61 = NSStringFromClass(v60);
      v62 = NSStringFromSelector(a2);
      *buf = 138413058;
      v111 = v61;
      v112 = 2112;
      v113 = v62;
      v114 = 1026;
      *v115 = v57 >= v58;
      *&v115[4] = 2050;
      *&v115[6] = v57;
      _os_log_impl(&dword_2304B3000, v59, OS_LOG_TYPE_DEFAULT, "%@:%@,isLocationAgedOut,%{public}d,setupLocAge,%{public}.3lf", buf, 0x26u);
    }

    if (v57 >= v58)
    {
      [v50 setZdrLocationLatitudeDeg:0.0];
      [v50 setZdrLocationLongitudeDeg:0.0];
      [v50 setZdrLocationType:5];
    }

    v63 = [RTAuthorizedLocationZDRLocations alloc];
    v64 = [v50 zdrLocationUUID];
    v65 = [v50 zdrLocationDbEntryTimeCfatSec];
    v66 = [v50 zdrLocationType];
    [v50 zdrLocationLatitudeDeg];
    v68 = v67;
    [v50 zdrLocationLongitudeDeg];
    v70 = v69;
    v97 = v50;
    v71 = [v50 zdrLocationLastSeenTimeCfatSec];
    v92 = [(RTAuthorizedLocationZDRLocations *)v63 initWithZDRLocation:v64 zdrLocationDbEntryTimeCfatSec:v65 zdrLocationType:v66 zdrLocationLatitudeDeg:v71 zdrLocationLongitudeDeg:v68 zdrLocationLastSeenTimeCfatSec:v70];

    v103 = 0u;
    v104 = 0u;
    v101 = 0u;
    v102 = 0u;
    v72 = [(RTAuthorizedLocationZDRLocationManager *)self zdrLocationsMemoryCopy];
    v73 = [v72 countByEnumeratingWithState:&v101 objects:v109 count:16];
    if (v73)
    {
      v74 = v73;
      v75 = 0;
      v76 = *v102;
      do
      {
        for (j = 0; j != v74; ++j)
        {
          if (*v102 != v76)
          {
            objc_enumerationMutation(v72);
          }

          v78 = *(*(&v101 + 1) + 8 * j);
          v79 = objc_autoreleasePoolPush();
          if ([v78 zdrLocationType] == 4 || objc_msgSend(v78, "zdrLocationType") == 5)
          {
            ++v75;
            [(RTAuthorizedLocationZDRLocationManager *)self _deleteZDRLocationEntryFromDb:v78];
          }

          else
          {
            v80 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
            if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
            {
              v81 = objc_opt_class();
              v82 = NSStringFromClass(v81);
              v83 = NSStringFromSelector(a2);
              *buf = 138412546;
              v111 = v82;
              v112 = 2112;
              v113 = v83;
              _os_log_impl(&dword_2304B3000, v80, OS_LOG_TYPE_DEFAULT, "%@:%@,not a setuplocation skip", buf, 0x16u);
            }
          }

          objc_autoreleasePoolPop(v79);
        }

        v74 = [v72 countByEnumeratingWithState:&v101 objects:v109 count:16];
      }

      while (v74);
    }

    else
    {
      v75 = 0;
    }

    v84 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
    if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
    {
      v85 = objc_opt_class();
      v86 = NSStringFromClass(v85);
      v87 = NSStringFromSelector(a2);
      *buf = 138412802;
      v111 = v86;
      v112 = 2112;
      v113 = v87;
      v114 = 1026;
      *v115 = v75;
      _os_log_impl(&dword_2304B3000, v84, OS_LOG_TYPE_DEFAULT, "%@:%@,merged %{public}d setup locations", buf, 0x1Cu);
    }

    [(RTAuthorizedLocationZDRLocationManager *)self _storeZDRLocationEntryToDb:v92];
    [(RTAuthorizedLocationZDRLocationManager *)self _fetchStoredZDRLocations];

    v3 = v94;
  }
}

- (BOOL)_isDeviceCurrentlyAtZDRLocation:(id)a3 handler:(id)a4
{
  v88 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  [(RTAuthorizedLocationZDRLocationManager *)self _purgeExtraSetupLocations];
  v8 = [(RTAuthorizedLocationZDRLocationManager *)self _getHomeWorkSchoolLois];
  v9 = v8;
  if (v8 && [v8 count])
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v13 = NSStringFromSelector(a2);
      *buf = 138412546;
      v71 = v12;
      v72 = 2112;
      v73 = v13;
      _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_DEFAULT, "%@:%@,CR LOI", buf, 0x16u);
    }

    [(RTAuthorizedLocationZDRLocationManager *)self _mergeCRClassifiedLOIWithZDRDb:v9];
  }

  else
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v56 = objc_opt_class();
      v57 = NSStringFromClass(v56);
      v58 = NSStringFromSelector(a2);
      *buf = 138412546;
      v71 = v57;
      v72 = 2112;
      v73 = v58;
      _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, "%@:%@,No CR Classified Locations", buf, 0x16u);
    }
  }

  [(RTAuthorizedLocationZDRLocationManager *)self _removeStaleEntriesFromDatabase];
  [(RTAuthorizedLocationZDRLocationManager *)self _fetchStoredZDRLocations];
  v15 = [(RTAuthorizedLocationZDRLocationManager *)self zdrLocationsMemoryCopy];

  if (v15)
  {
    v59 = v9;
    v60 = v7;
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v62 = self;
    obj = [(RTAuthorizedLocationZDRLocationManager *)self zdrLocationsMemoryCopy];
    v16 = [obj countByEnumeratingWithState:&v66 objects:v87 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v67;
      v61 = *v67;
      do
      {
        v19 = 0;
        v64 = v17;
        do
        {
          if (*v67 != v18)
          {
            objc_enumerationMutation(obj);
          }

          v20 = *(*(&v66 + 1) + 8 * v19);
          if (v20)
          {
            v21 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
              v22 = objc_opt_class();
              v23 = NSStringFromClass(v22);
              v24 = NSStringFromSelector(a2);
              v25 = [v20 zdrLocationUUID];
              v26 = [v20 zdrLocationDbEntryTimeCfatSec];
              v27 = [v20 zdrLocationType];
              v28 = [v20 zdrLocationLastSeenTimeCfatSec];
              [v20 zdrLocationLatitudeDeg];
              v30 = v29;
              [v20 zdrLocationLongitudeDeg];
              v32 = v31;
              [v20 zdrLocationLatitudeDeg];
              v34 = v33;
              [v20 zdrLocationLongitudeDeg];
              v36 = [(RTAuthorizedLocationZDRLocationManager *)v62 _isNullLocation:v34 lon:v35];
              *buf = 138414339;
              v71 = v23;
              v72 = 2112;
              v73 = v24;
              v74 = 2114;
              v75 = v25;
              v76 = 2114;
              *v77 = v26;
              *&v77[8] = 1026;
              v78 = v27;
              v79 = 2114;
              v80 = v28;
              v81 = 2053;
              v82 = v30;
              v83 = 2053;
              v84 = v32;
              v85 = 1026;
              v86 = !v36;
              _os_log_impl(&dword_2304B3000, v21, OS_LOG_TYPE_DEFAULT, "%@:%@,zdrLoc,UUID,%{public}@,entryTime,%{public}@,locationType,%{public}d,lastSeenTime,%{public}@,lat,%{sensitive}.7lf,lon,%{sensitive}.7lf,isValid,%{public}d", buf, 0x54u);

              v17 = v64;
              v18 = v61;
            }
          }

          ++v19;
        }

        while (v17 != v19);
        v17 = [obj countByEnumeratingWithState:&v66 objects:v87 count:16];
      }

      while (v17);
    }

    if (v6)
    {
      v37 = v62;
      v38 = [(RTAuthorizedLocationZDRLocationManager *)v62 _assertWeAreAtZDRLocationWithVisit:v6];
      v9 = v59;
      v7 = v60;
    }

    else
    {
      v38 = 0;
      v9 = v59;
      v7 = v60;
      v37 = v62;
    }

    v44 = [(RTAuthorizedLocationZDRLocationManager *)v37 metrics];
    v45 = [v44 zdrLocationsLiveMetrics];

    if (v45)
    {
      v46 = [(RTAuthorizedLocationZDRLocationManager *)v37 metrics];
      v47 = [v46 zdrLocationsLiveMetrics];
      [v47 setIsVisitUsedForZdrConfirmation:v38 != 0];
    }

    if (v38 == 1)
    {
      v48 = 1;
    }

    else
    {
      v49 = [(RTAuthorizedLocationZDRLocationManager *)v37 zdrLocationsMemoryCopy];
      v48 = [(RTAuthorizedLocationZDRLocationManager *)v37 _assertWeAreAtAnyZDRLocation:v49];
    }

    v43 = v48 == 1;
    if (v48 == 1)
    {
      v50 = 1;
    }

    else
    {
      v50 = 2;
    }

    v7[2](v7, v50, v48);
    v51 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
    if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
    {
      v52 = objc_opt_class();
      v53 = NSStringFromClass(v52);
      v54 = NSStringFromSelector(a2);
      *buf = 138413314;
      v71 = v53;
      v72 = 2112;
      v73 = v54;
      v74 = 2050;
      v75 = v48;
      v76 = 1026;
      *v77 = v50;
      *&v77[4] = 1026;
      *&v77[6] = v48;
      _os_log_impl(&dword_2304B3000, v51, OS_LOG_TYPE_DEFAULT, "%@:%@, ZDRConfirmed,zdrLocConfirmReason,%{public}ld,zdrStatus,%{public}d,zdrLocConfirmReason,%{public}d", buf, 0x2Cu);
    }
  }

  else
  {
    v39 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      v40 = objc_opt_class();
      v41 = NSStringFromClass(v40);
      v42 = NSStringFromSelector(a2);
      *buf = 138412546;
      v71 = v41;
      v72 = 2112;
      v73 = v42;
      _os_log_impl(&dword_2304B3000, v39, OS_LOG_TYPE_DEFAULT, "%@:%@,no possible ZDR locations", buf, 0x16u);
    }

    v7[2](v7, 2, 3);
    v43 = 0;
  }

  return v43;
}

- (void)_storeClassifiedLocationToDB:(id)a3
{
  v65 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [v5 place];
  if (v6)
  {
    v7 = [v5 place];
    v8 = [v7 type];

    if ((v8 - 1) >= 3)
    {
      v6 = 0;
    }

    else
    {
      v6 = v8;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = NSStringFromSelector(a2);
    *buf = 138413058;
    v48 = v11;
    v49 = 2112;
    v50 = v12;
    v51 = 2050;
    v52 = v6;
    v53 = 2050;
    v54 = v8;
    _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_DEFAULT, "%@:%@,zdrType,%{public}lu,PlaceType,%{public}lu", buf, 0x2Au);
  }

  if ((v8 - 1) >= 3)
  {
    v25 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v42 = objc_opt_class();
      v43 = NSStringFromClass(v42);
      v44 = NSStringFromSelector(a2);
      *buf = 138412802;
      v48 = v43;
      v49 = 2112;
      v50 = v44;
      v51 = 1026;
      LODWORD(v52) = 0;
      _os_log_impl(&dword_2304B3000, v25, OS_LOG_TYPE_DEFAULT, "%@:%@,isKnownLocationType,%{public}d", buf, 0x1Cu);
    }
  }

  else
  {
    aSelector = a2;
    v13 = [RTAuthorizedLocationZDRLocations alloc];
    v14 = [v5 identifier];
    v15 = [(RTAuthorizedLocationZDRLocationManager *)self trustedTimeNow];
    v16 = [v5 location];
    v17 = [v16 location];
    [v17 latitude];
    v19 = v18;
    v20 = [v5 location];
    v21 = [v20 location];
    [v21 longitude];
    v23 = v22;
    v46 = self;
    v24 = [(RTAuthorizedLocationZDRLocationManager *)self trustedTimeNow];
    v25 = [(RTAuthorizedLocationZDRLocations *)v13 initWithZDRLocation:v14 zdrLocationDbEntryTimeCfatSec:v15 zdrLocationType:v6 zdrLocationLatitudeDeg:v24 zdrLocationLongitudeDeg:v19 zdrLocationLastSeenTimeCfatSec:v23];

    if (v25)
    {
      v26 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = objc_opt_class();
        v28 = NSStringFromClass(v27);
        v29 = NSStringFromSelector(aSelector);
        v30 = [v25 zdrLocationUUID];
        v31 = [v25 zdrLocationDbEntryTimeCfatSec];
        v32 = [v25 zdrLocationType];
        v33 = [v25 zdrLocationLastSeenTimeCfatSec];
        [v25 zdrLocationLatitudeDeg];
        v35 = v34;
        [v25 zdrLocationLongitudeDeg];
        v37 = v36;
        [v25 zdrLocationLatitudeDeg];
        v39 = v38;
        [v25 zdrLocationLongitudeDeg];
        v41 = [(RTAuthorizedLocationZDRLocationManager *)v46 _isNullLocation:v39 lon:v40];
        *buf = 138414339;
        v48 = v28;
        v49 = 2112;
        v50 = v29;
        v51 = 2114;
        v52 = v30;
        v53 = 2114;
        v54 = v31;
        v55 = 1026;
        v56 = v32;
        v57 = 2114;
        v58 = v33;
        v59 = 2053;
        v60 = v35;
        v61 = 2053;
        v62 = v37;
        v63 = 1026;
        v64 = !v41;
        _os_log_impl(&dword_2304B3000, v26, OS_LOG_TYPE_DEFAULT, "%@:%@,zdrLoc,UUID,%{public}@,entryTime,%{public}@,locationType,%{public}d,lastSeenTime,%{public}@,lat,%{sensitive}.7lf,lon,%{sensitive}.7lf,isValid,%{public}d", buf, 0x54u);
      }
    }

    if ([(RTAuthorizedLocationZDRLocationManager *)v46 _storeZDRLocationEntryToDb:v25, aSelector])
    {
      [(RTAuthorizedLocationZDRLocationManager *)v46 _fetchStoredZDRLocations];
    }
  }
}

- (void)_removeStaleEntriesFromDatabase
{
  v2 = self;
  v61 = *MEMORY[0x277D85DE8];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = [(RTAuthorizedLocationZDRLocationManager *)self zdrLocationsMemoryCopy];
  v38 = [obj countByEnumeratingWithState:&v39 objects:v60 count:16];
  if (v38)
  {
    v37 = *v40;
    *&v3 = 138414339;
    v33 = v3;
    v35 = v2;
    do
    {
      for (i = 0; i != v38; ++i)
      {
        if (*v40 != v37)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v39 + 1) + 8 * i);
        v6 = objc_autoreleasePoolPush();
        if (v5)
        {
          v7 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
          if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
          {
            v8 = objc_opt_class();
            v9 = NSStringFromClass(v8);
            v10 = NSStringFromSelector(a2);
            v11 = [v5 zdrLocationUUID];
            v12 = [v5 zdrLocationDbEntryTimeCfatSec];
            v13 = [v5 zdrLocationType];
            v14 = [v5 zdrLocationLastSeenTimeCfatSec];
            [v5 zdrLocationLatitudeDeg];
            v16 = v15;
            [v5 zdrLocationLongitudeDeg];
            v18 = v17;
            [v5 zdrLocationLatitudeDeg];
            v20 = v19;
            [v5 zdrLocationLongitudeDeg];
            v22 = [(RTAuthorizedLocationZDRLocationManager *)v35 _isNullLocation:v20 lon:v21];
            *buf = v33;
            v44 = v9;
            v45 = 2112;
            v46 = v10;
            v47 = 2114;
            v48 = *&v11;
            v49 = 2114;
            *v50 = v12;
            *&v50[8] = 1026;
            v51 = v13;
            v52 = 2114;
            v53 = v14;
            v54 = 2053;
            v55 = v16;
            v56 = 2053;
            v57 = v18;
            v58 = 1026;
            v59 = !v22;
            _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_DEFAULT, "%@:%@,zdrLoc,UUID,%{public}@,entryTime,%{public}@,locationType,%{public}d,lastSeenTime,%{public}@,lat,%{sensitive}.7lf,lon,%{sensitive}.7lf,isValid,%{public}d", buf, 0x54u);

            v2 = v35;
          }
        }

        v23 = [(RTAuthorizedLocationZDRLocationManager *)v2 trustedTimeNow];
        v24 = [v5 zdrLocationLastSeenTimeCfatSec];

        if (!v24)
        {
          goto LABEL_17;
        }

        v25 = [v5 zdrLocationLastSeenTimeCfatSec];
        [v23 timeIntervalSinceDate:v25];
        v27 = v26;

        v28 = [v5 zdrLocationType] == 4 || objc_msgSend(v5, "zdrLocationType") == 5;
        v29 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          v30 = objc_opt_class();
          v31 = NSStringFromClass(v30);
          v32 = NSStringFromSelector(a2);
          *buf = 138413314;
          v44 = v31;
          v45 = 2112;
          v46 = v32;
          v47 = 2050;
          v48 = v27;
          v49 = 1026;
          *v50 = (v27 > 604800.0) & ~v28;
          *&v50[4] = 1026;
          *&v50[6] = v28;
          _os_log_impl(&dword_2304B3000, v29, OS_LOG_TYPE_DEFAULT, "%@:%@,lastSeenAge,%{public}f,isZdrLocStale,%{public}d,isZdrSetupLoc,%{public}d", buf, 0x2Cu);
        }

        if (((v27 > 604800.0) & ~v28) != 0)
        {
LABEL_17:
          [(RTAuthorizedLocationZDRLocationManager *)v2 _deleteZDRLocationEntryFromDb:v5];
        }

        objc_autoreleasePoolPop(v6);
      }

      v38 = [obj countByEnumeratingWithState:&v39 objects:v60 count:16];
    }

    while (v38);
  }
}

- (BOOL)_mergeCRClassifiedLOIWithZDRDb:(id)a3
{
  v120 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v77 = v4;
  if (v4)
  {
    v101 = 0u;
    v102 = 0u;
    v99 = 0u;
    v100 = 0u;
    v5 = v4;
    v80 = [v5 countByEnumeratingWithState:&v99 objects:v119 count:16];
    if (v80)
    {
      v78 = *v100;
      v86 = self;
      v79 = v5;
      do
      {
        v6 = 0;
        do
        {
          if (*v100 != v78)
          {
            objc_enumerationMutation(v5);
          }

          v82 = v6;
          v7 = *(*(&v99 + 1) + 8 * v6);
          context = objc_autoreleasePoolPush();
          v8 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
          {
            v9 = objc_opt_class();
            v10 = NSStringFromClass(v9);
            v11 = NSStringFromSelector(a2);
            *buf = 138412803;
            v104 = v10;
            v105 = 2112;
            v106 = v11;
            v107 = 2117;
            v108 = *&v7;
            _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_DEFAULT, "%@:%@,for Loi,%{sensitive}@", buf, 0x20u);

            self = v86;
          }

          v83 = v7;

          v97 = 0u;
          v98 = 0u;
          v95 = 0u;
          v96 = 0u;
          obj = [(RTAuthorizedLocationZDRLocationManager *)self zdrLocationsMemoryCopy];
          v88 = [obj countByEnumeratingWithState:&v95 objects:v118 count:16];
          if (v88)
          {
            v87 = *v96;
LABEL_11:
            v12 = 0;
            while (1)
            {
              if (*v96 != v87)
              {
                objc_enumerationMutation(obj);
              }

              v13 = *(*(&v95 + 1) + 8 * v12);
              v14 = objc_autoreleasePoolPush();
              if (v13)
              {
                v15 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
                if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
                {
                  v16 = objc_opt_class();
                  v17 = NSStringFromClass(v16);
                  v18 = NSStringFromSelector(a2);
                  [v13 zdrLocationUUID];
                  v19 = v90 = v14;
                  v20 = [v13 zdrLocationDbEntryTimeCfatSec];
                  v21 = [v13 zdrLocationType];
                  v22 = [v13 zdrLocationLastSeenTimeCfatSec];
                  [v13 zdrLocationLatitudeDeg];
                  v24 = v23;
                  [v13 zdrLocationLongitudeDeg];
                  v26 = v25;
                  [v13 zdrLocationLatitudeDeg];
                  v28 = v27;
                  [v13 zdrLocationLongitudeDeg];
                  v30 = [(RTAuthorizedLocationZDRLocationManager *)v86 _isNullLocation:v28 lon:v29];
                  *buf = 138414339;
                  v104 = v17;
                  v105 = 2112;
                  v106 = v18;
                  v107 = 2114;
                  v108 = *&v19;
                  v109 = 2114;
                  *v110 = v20;
                  *&v110[8] = 1026;
                  *v111 = v21;
                  *&v111[4] = 2114;
                  *&v111[6] = v22;
                  v112 = 2053;
                  v113 = v24;
                  v114 = 2053;
                  v115 = v26;
                  self = v86;
                  v116 = 1026;
                  v117 = !v30;
                  _os_log_impl(&dword_2304B3000, v15, OS_LOG_TYPE_DEFAULT, "%@:%@,zdrLoc,UUID,%{public}@,entryTime,%{public}@,locationType,%{public}d,lastSeenTime,%{public}@,lat,%{sensitive}.7lf,lon,%{sensitive}.7lf,isValid,%{public}d", buf, 0x54u);

                  v14 = v90;
                }
              }

              v31 = [(RTAuthorizedLocationZDRLocationManager *)self trustedTimeNow];
              if ([v13 zdrLocationType] == 4 || objc_msgSend(v13, "zdrLocationType") == 5)
              {
                v32 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
                if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
                {
                  v33 = objc_opt_class();
                  v34 = NSStringFromClass(v33);
                  v35 = NSStringFromSelector(a2);
                  *buf = 138412546;
                  v104 = v34;
                  v105 = 2112;
                  v106 = v35;
                  _os_log_impl(&dword_2304B3000, v32, OS_LOG_TYPE_DEFAULT, "%@:%@,exclude Setup location", buf, 0x16u);
                }
              }

              else
              {
                v91 = v14;
                v94.latitude = 0.0;
                v94.longitude = 0.0;
                [v13 zdrLocationLatitudeDeg];
                v37 = v36;
                [v13 zdrLocationLongitudeDeg];
                v94 = CLLocationCoordinate2DMake(v37, v38);
                v93.latitude = 0.0;
                v93.longitude = 0.0;
                v39 = [v83 location];
                v40 = [v39 location];
                [v40 latitude];
                v42 = v41;
                v43 = [v83 location];
                v44 = [v43 location];
                [v44 longitude];
                v93 = CLLocationCoordinate2DMake(v42, v45);

                v46 = [(RTAuthorizedLocationZDRLocationManager *)self distanceCalculator];
                v92 = 0;
                [v46 distanceFromLocationCoordinate:&v94 toLocationCoordinate:&v93 error:&v92];
                v48 = v47;
                v32 = v92;

                if (!v32)
                {
                  v50 = [v13 zdrLocationUUID];
                  v51 = [v50 UUIDString];

                  v52 = [v83 identifier];
                  v53 = [v52 UUIDString];

                  v54 = [v51 isEqualToString:v53];
                  v55 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
                  if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
                  {
                    v56 = objc_opt_class();
                    v57 = NSStringFromClass(v56);
                    v58 = NSStringFromSelector(a2);
                    *buf = 138413570;
                    v104 = v57;
                    v105 = 2112;
                    v106 = v58;
                    v107 = 2050;
                    v108 = v48;
                    v109 = 1026;
                    *v110 = v48 < 100.0;
                    *&v110[4] = 1026;
                    *&v110[6] = v54;
                    *v111 = 2114;
                    *&v111[2] = v53;
                    _os_log_impl(&dword_2304B3000, v55, OS_LOG_TYPE_DEFAULT, "%@:%@,distanceBetweenLoiAndZdrLoc_m,%{public}f,isLOIAndZDRLocSame,%{public}d,isLOIAndZDRLocSameBasedOnUUID,%{public}d,loiUUID,%{public}@", buf, 0x36u);
                  }

                  if (v48 < 100.0)
                  {
                    v89 = v51;
                    v67 = v13;
                    [v67 setZdrLocationLastSeenTimeCfatSec:v31];
                    self = v86;
                    [(RTAuthorizedLocationZDRLocationManager *)v86 _deleteZDRLocationEntryFromDb:v67];
                    v5 = v79;
                    v68 = v91;
                    if (![(RTAuthorizedLocationZDRLocationManager *)v86 _storeZDRLocationEntryToDb:v67])
                    {
                      v69 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
                      if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
                      {
                        v70 = objc_opt_class();
                        v71 = NSStringFromClass(v70);
                        v72 = NSStringFromSelector(a2);
                        *buf = 138412802;
                        v104 = v71;
                        v105 = 2112;
                        v106 = v72;
                        v107 = 2114;
                        v108 = *&v83;
                        _os_log_error_impl(&dword_2304B3000, v69, OS_LOG_TYPE_ERROR, "%@:%@,Merging failed for loi,%{public}@", buf, 0x20u);

                        v68 = v91;
                      }
                    }

                    objc_autoreleasePoolPop(v68);
                    goto LABEL_42;
                  }

                  self = v86;
                  v14 = v91;
                  goto LABEL_27;
                }

                v49 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
                if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
                {
                  v59 = objc_opt_class();
                  v60 = NSStringFromClass(v59);
                  v61 = NSStringFromSelector(a2);
                  *buf = 138412802;
                  v104 = v60;
                  v105 = 2112;
                  v106 = v61;
                  v107 = 2114;
                  v108 = *&v32;
                  _os_log_error_impl(&dword_2304B3000, v49, OS_LOG_TYPE_ERROR, "%@:%@,failed to compute distance:%{public}@.", buf, 0x20u);
                }
              }

LABEL_27:
              objc_autoreleasePoolPop(v14);
              if (v88 == ++v12)
              {
                v62 = [obj countByEnumeratingWithState:&v95 objects:v118 count:16];
                v88 = v62;
                if (v62)
                {
                  goto LABEL_11;
                }

                break;
              }
            }
          }

          v63 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
          if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
          {
            v64 = objc_opt_class();
            v65 = NSStringFromClass(v64);
            v66 = NSStringFromSelector(a2);
            *buf = 138412803;
            v104 = v65;
            v105 = 2112;
            v106 = v66;
            v107 = 2117;
            v108 = *&v83;
            _os_log_impl(&dword_2304B3000, v63, OS_LOG_TYPE_DEFAULT, "%@:%@,Adding new location to db,%{sensitive}@", buf, 0x20u);

            self = v86;
          }

          [(RTAuthorizedLocationZDRLocationManager *)self _storeClassifiedLocationToDB:v83];
          v5 = v79;
LABEL_42:
          objc_autoreleasePoolPop(context);
          v6 = v82 + 1;
        }

        while (v82 + 1 != v80);
        v80 = [v5 countByEnumeratingWithState:&v99 objects:v119 count:16];
      }

      while (v80);
    }
  }

  else
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v73 = objc_opt_class();
      v74 = NSStringFromClass(v73);
      v75 = NSStringFromSelector(a2);
      *buf = 138412546;
      v104 = v74;
      v105 = 2112;
      v106 = v75;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_DEFAULT, "%@:%@,CR classified location", buf, 0x16u);
    }
  }

  return v77 != 0;
}

- (void)_determineSetupLocation
{
  v55 = *MEMORY[0x277D85DE8];
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = __Block_byref_object_copy__185;
  v43 = __Block_byref_object_dispose__185;
  v44 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__185;
  v37 = __Block_byref_object_dispose__185;
  v38 = 0;
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __65__RTAuthorizedLocationZDRLocationManager__determineSetupLocation__block_invoke;
  v32[3] = &unk_2788D24F0;
  v32[4] = self;
  v32[5] = &v39;
  v32[6] = &v33;
  v32[7] = a2;
  [(RTAuthorizedLocationZDRLocationManager *)self _getSetupLocationFromZDRLocations:v32];
  if (!v40[5] && !v34[5])
  {
    v26 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = objc_opt_class();
      v28 = NSStringFromClass(v27);
      v29 = NSStringFromSelector(a2);
      *buf = 138412546;
      v46 = v28;
      v47 = 2112;
      v48 = v29;
      _os_log_impl(&dword_2304B3000, v26, OS_LOG_TYPE_DEFAULT, "%@:%@,first time setup detected", buf, 0x16u);
    }

    v25 = [(RTAuthorizedLocationZDRLocationManager *)self _deduceSetupLocation];
    if (!v25)
    {
      v25 = [objc_alloc(MEMORY[0x277CE41F8]) initWithLatitude:0.0 longitude:0.0];
    }

    [(RTAuthorizedLocationZDRLocationManager *)self _updateSetupLocationToDb:v25];
    v30 = [(RTAuthorizedLocationZDRLocationManager *)self metrics];
    v31 = [v30 zdrLocationsLiveMetrics];
    [v31 setTimeSinceEraseInstall_s:0.0];

    goto LABEL_10;
  }

  v4 = [(RTAuthorizedLocationZDRLocationManager *)self trustedTimeNow];
  v5 = [v40[5] zdrLocationDbEntryTimeCfatSec];
  [v4 timeIntervalSinceDate:v5];
  v7 = v6;
  v8 = [(RTAuthorizedLocationZDRLocationManager *)self metrics];
  v9 = [v8 zdrLocationsLiveMetrics];
  [v9 setTimeSinceEraseInstall_s:v7];

  v10 = v40[5];
  if (!v10)
  {
    goto LABEL_7;
  }

  [v10 zdrLocationLatitudeDeg];
  v12 = v11;
  [v40[5] zdrLocationLongitudeDeg];
  v14 = [(RTAuthorizedLocationZDRLocationManager *)self _isNullLocation:v12 lon:v13];
  v15 = [v40[5] zdrLocationType];
  v16 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
  v17 = v14 ^ (v15 == 5);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    v20 = NSStringFromSelector(a2);
    *buf = 138413314;
    v46 = v19;
    v47 = 2112;
    v48 = v20;
    v49 = 1026;
    v50 = v14;
    v51 = 1026;
    v52 = v15 == 5;
    v53 = 1026;
    v54 = v17 ^ 1;
    _os_log_impl(&dword_2304B3000, v16, OS_LOG_TYPE_DEFAULT, "%@:%@,isSetupLocationNull,%{public}d,isSetupLocationOld,%{public}d,isSetupLocationValid,%{public}d", buf, 0x28u);
  }

  if (v17)
  {
LABEL_7:
    v21 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = objc_opt_class();
      v23 = NSStringFromClass(v22);
      v24 = NSStringFromSelector(a2);
      *buf = 138412546;
      v46 = v23;
      v47 = 2112;
      v48 = v24;
      _os_log_impl(&dword_2304B3000, v21, OS_LOG_TYPE_DEFAULT, "%@:%@,Update Setup location", buf, 0x16u);
    }

    v25 = [(RTAuthorizedLocationZDRLocationManager *)self _deduceSetupLocation];
    [(RTAuthorizedLocationZDRLocationManager *)self _refreshSetupLocationToDb:v40[5] locToStore:v25];
LABEL_10:
  }

  _Block_object_dispose(&v33, 8);

  _Block_object_dispose(&v39, 8);
}

void __65__RTAuthorizedLocationZDRLocationManager__determineSetupLocation__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (v6)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a3);
    v7 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v13 = NSStringFromSelector(*(a1 + 56));
      v14 = 138412802;
      v15 = v12;
      v16 = 2112;
      v17 = v13;
      v18 = 2114;
      v19 = v6;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "%@:%@,FetchFailed during setup location query,error,%{public}@", &v14, 0x20u);
    }
  }

  else
  {
    v8 = [a2 objectAtIndex:0];
    v9 = *(*(a1 + 40) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }
}

- (int64_t)_isDeviceCurrentlyAtAuthorizedLocation:(id)a3
{
  v48 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = NSStringFromSelector(a2);
    *buf = 138412802;
    v43 = v7;
    v44 = 2112;
    v45 = v8;
    v46 = 1026;
    v47 = [v4 count];
    _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_DEFAULT, "%@:%@,fullSecurityAloiList count,%{public}u", buf, 0x1Cu);
  }

  if (v4 && [v4 count])
  {
    v30 = [(RTAuthorizedLocationZDRLocationManager *)self trustedTimeNow];
    v29 = [MEMORY[0x277CBEB18] array];
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v26 = v4;
    obj = v4;
    v32 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
    if (v32)
    {
      v28 = *v38;
      do
      {
        v9 = 0;
        do
        {
          if (*v38 != v28)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v37 + 1) + 8 * v9);
          context = objc_autoreleasePoolPush();
          v33 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeInterval:v30 sinceDate:-3660.0];
          v34 = [RTAuthorizedLocationZDRLocations alloc];
          v35 = [v10 loi];
          v11 = [v35 identifier];
          v12 = [v10 loi];
          v13 = [v12 location];
          v14 = [v13 location];
          [v14 latitude];
          v16 = v15;
          v17 = [v10 loi];
          v18 = [v17 location];
          v19 = [v18 location];
          [v19 longitude];
          v21 = v20;
          v22 = [(RTAuthorizedLocationZDRLocationManager *)self trustedTimeNow];
          v23 = [(RTAuthorizedLocationZDRLocations *)v34 initWithZDRLocation:v11 zdrLocationDbEntryTimeCfatSec:v33 zdrLocationType:6 zdrLocationLatitudeDeg:v22 zdrLocationLongitudeDeg:v16 zdrLocationLastSeenTimeCfatSec:v21];

          [v29 addObject:v23];
          objc_autoreleasePoolPop(context);
          ++v9;
        }

        while (v32 != v9);
        v32 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
      }

      while (v32);
    }

    v24 = [(RTAuthorizedLocationZDRLocationManager *)self _assertWeAreAtAnyZDRLocation:v29];
    [(RTAuthorizedLocationZDRLocationManager *)self _computeALOIMetrics:obj reasonCode:v24];

    v4 = v26;
  }

  else
  {
    v24 = 7;
  }

  return v24;
}

- (void)fetchZDRLocationStatus:(id)a3 fullSecurityAloiList:(id)a4 handler:(id)a5
{
  v26 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if ([(RTAuthorizedLocationZDRLocationManager *)self isUnlockedSinceBoot])
  {
    [(RTAuthorizedLocationZDRLocationManager *)self _initMetric];
    [(RTAuthorizedLocationZDRLocationManager *)self _determineSetupLocation];
    v12 = [(RTAuthorizedLocationZDRLocationManager *)self trustedTimeNow];
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v25 = 0;
    v20 = 0;
    v21 = &v20;
    v22 = 0x2020000000;
    v23 = 0;
    if ([(RTAuthorizedLocationZDRLocationManager *)self _isDeviceCurrentlyAtAuthorizedLocation:v10]== 1)
    {
      *(*&buf[8] + 24) = 1;
      v21[3] = 1;
    }

    else
    {
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __94__RTAuthorizedLocationZDRLocationManager_fetchZDRLocationStatus_fullSecurityAloiList_handler___block_invoke;
      v19[3] = &unk_2788D2518;
      v19[4] = buf;
      v19[5] = &v20;
      [(RTAuthorizedLocationZDRLocationManager *)self _isDeviceCurrentlyAtZDRLocation:v9 handler:v19];
    }

    v16 = [(RTAuthorizedLocationZDRLocationManager *)self trustedTimeNow];
    [v16 timeIntervalSinceDate:v12];
    v18 = v17;

    [(RTAuthorizedLocationZDRLocationManager *)self _collectMetric:*(*&buf[8] + 24) reasonCode:v21[3] zdrComputationTime_s:v18];
    [(RTAuthorizedLocationZDRLocationManager *)self _collectCurationMetric];
    v11[2](v11, *(*&buf[8] + 24), v21[3]);
    _Block_object_dispose(&v20, 8);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      v15 = NSStringFromSelector(a2);
      *buf = 138412546;
      *&buf[4] = v14;
      *&buf[12] = 2112;
      *&buf[14] = v15;
      _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, "%@:%@,Device not unlocked", buf, 0x16u);
    }
  }
}

uint64_t __94__RTAuthorizedLocationZDRLocationManager_fetchZDRLocationStatus_fullSecurityAloiList_handler___block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(*(*(result + 32) + 8) + 24) = a2;
  *(*(*(result + 40) + 8) + 24) = a3;
  return result;
}

- (void)_initMetric
{
  v3 = [(RTAuthorizedLocationZDRLocationManager *)self metrics];
  if (v3)
  {
    v4 = v3;
    v5 = [(RTAuthorizedLocationZDRLocationManager *)self metrics];
    v6 = [v5 zdrLocationsLiveMetrics];

    if (!v6)
    {
      v7 = objc_alloc_init(RTAuthorizedLocationZDRLocationLiveMetrics);
      v8 = [(RTAuthorizedLocationZDRLocationManager *)self metrics];
      [v8 setZdrLocationsLiveMetrics:v7];
    }
  }

  v9 = [(RTAuthorizedLocationZDRLocationManager *)self metrics];
  if (v9)
  {
    v10 = v9;
    v11 = [(RTAuthorizedLocationZDRLocationManager *)self metrics];
    v12 = [v11 zdrLocationsCurationMetrics];

    if (!v12)
    {
      v14 = objc_alloc_init(RTAuthorizedLocationZDRLocationCurationMetrics);
      v13 = [(RTAuthorizedLocationZDRLocationManager *)self metrics];
      [v13 setZdrLocationsCurationMetrics:v14];
    }
  }
}

- (BOOL)_isDistanceBetween2PointsInRange:(id)a3 aLoi:(id)a4 range:(double)a5
{
  v43 = *MEMORY[0x277D85DE8];
  v9 = a4;
  v10 = a3;
  v11 = [v9 loi];
  v12 = [v11 location];
  v13 = [v12 location];
  [v13 latitude];
  v15 = v14;
  v16 = [v9 loi];

  v17 = [v16 location];
  v18 = [v17 location];
  [v18 longitude];
  v36 = CLLocationCoordinate2DMake(v15, v19);

  [v10 zdrLocationLatitudeDeg];
  v21 = v20;
  [v10 zdrLocationLongitudeDeg];
  v23 = v22;

  v35 = CLLocationCoordinate2DMake(v21, v23);
  v24 = [(RTAuthorizedLocationZDRLocationManager *)self distanceCalculator];
  v34 = 0;
  [v24 distanceFromLocationCoordinate:&v35 toLocationCoordinate:&v36 error:&v34];
  v26 = v25;
  v27 = v34;

  if (v27)
  {
    v28 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v31 = objc_opt_class();
      v32 = NSStringFromClass(v31);
      v33 = NSStringFromSelector(a2);
      *buf = 138412802;
      v38 = v32;
      v39 = 2112;
      v40 = v33;
      v41 = 2114;
      v42 = v27;
      _os_log_error_impl(&dword_2304B3000, v28, OS_LOG_TYPE_ERROR, "%@:%@, failed to compute distance: %{public}@.", buf, 0x20u);
    }

    v29 = 0;
  }

  else
  {
    v29 = v26 <= a5;
  }

  return v29;
}

- (void)_updateALOILiveMetrics:(id)a3 aLoi:(id)a4 reasonCode:(int64_t)a5
{
  v35 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = [(RTAuthorizedLocationZDRLocationManager *)self metrics];
  v12 = [v11 zdrLocationsLiveMetrics];

  if (!v12)
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v22 = objc_opt_class();
      v23 = NSStringFromClass(v22);
      v24 = NSStringFromSelector(a2);
      v29 = 138412546;
      v30 = v23;
      v31 = 2112;
      v32 = v24;
      _os_log_error_impl(&dword_2304B3000, v16, OS_LOG_TYPE_ERROR, "%@:%@, metric uninitialzed", &v29, 0x16u);
LABEL_12:
    }

LABEL_13:

    goto LABEL_14;
  }

  if (a5 != 1)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      goto LABEL_14;
    }

    v16 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v25 = objc_opt_class();
      v23 = NSStringFromClass(v25);
      v24 = NSStringFromSelector(a2);
      v29 = 138412546;
      v30 = v23;
      v31 = 2112;
      v32 = v24;
      _os_log_impl(&dword_2304B3000, v16, OS_LOG_TYPE_INFO, "%@:%@, ALOI is not confirmed", &v29, 0x16u);
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  v13 = [(RTAuthorizedLocationZDRLocationManager *)self metrics];
  v14 = [v13 zdrLocationsLiveMetrics];
  v15 = [v14 confirmedALOIMatchedWithZDRType];

  if (v15)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v16 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = objc_opt_class();
        v18 = NSStringFromClass(v17);
        v19 = NSStringFromSelector(a2);
        v20 = [(RTAuthorizedLocationZDRLocationManager *)self metrics];
        v21 = [v20 zdrLocationsLiveMetrics];
        v29 = 138412802;
        v30 = v18;
        v31 = 2112;
        v32 = v19;
        v33 = 1026;
        v34 = [v21 confirmedALOIMatchedWithZDRType];
        _os_log_impl(&dword_2304B3000, v16, OS_LOG_TYPE_INFO, "%@:%@, ALOI is already confirmed,%{public}d", &v29, 0x1Cu);
      }

      goto LABEL_13;
    }
  }

  else if ([(RTAuthorizedLocationZDRLocationManager *)self _isDistanceBetween2PointsInRange:v9 aLoi:v10 range:100.0])
  {
    v26 = [v9 zdrLocationType];
    v27 = [(RTAuthorizedLocationZDRLocationManager *)self metrics];
    v28 = [v27 zdrLocationsLiveMetrics];
    [v28 setConfirmedALOIMatchedWithZDRType:v26];
  }

LABEL_14:
}

- (void)_computeALOIMetrics:(id)a3 reasonCode:(int64_t)a4
{
  v83 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = [(RTAuthorizedLocationZDRLocationManager *)self metrics];
  v9 = [v8 zdrLocationsLiveMetrics];
  if (!v9)
  {

LABEL_32:
    v29 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v40 = objc_opt_class();
      v41 = NSStringFromClass(v40);
      v42 = NSStringFromSelector(a2);
      *buf = 138412546;
      v68 = v41;
      v69 = 2112;
      v70 = v42;
      _os_log_error_impl(&dword_2304B3000, v29, OS_LOG_TYPE_ERROR, "%@:%@, metric uninitialzed", buf, 0x16u);
    }

    goto LABEL_34;
  }

  v10 = v9;
  v11 = [(RTAuthorizedLocationZDRLocationManager *)self metrics];
  v12 = [v11 zdrLocationsCurationMetrics];

  if (!v12)
  {
    goto LABEL_32;
  }

  aSelector = a2;
  v46 = v7;
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  obj = v7;
  v51 = [obj countByEnumeratingWithState:&v63 objects:v82 count:16];
  if (v51)
  {
    v49 = *v64;
    do
    {
      v13 = 0;
      do
      {
        if (*v64 != v49)
        {
          objc_enumerationMutation(obj);
        }

        v55 = v13;
        v14 = *(*(&v63 + 1) + 8 * v13);
        context = objc_autoreleasePoolPush();
        v59 = 0u;
        v60 = 0u;
        v61 = 0u;
        v62 = 0u;
        v57 = [(RTAuthorizedLocationZDRLocationManager *)self zdrLocationsMemoryCopy];
        v15 = [v57 countByEnumeratingWithState:&v59 objects:v81 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v60;
          do
          {
            v18 = 0;
            do
            {
              if (*v60 != v17)
              {
                objc_enumerationMutation(v57);
              }

              v19 = *(*(&v59 + 1) + 8 * v18);
              v20 = objc_autoreleasePoolPush();
              if (a4 == 1)
              {
                [(RTAuthorizedLocationZDRLocationManager *)self _updateALOILiveMetrics:v19 aLoi:v14 reasonCode:1];
              }

              if ([(RTAuthorizedLocationZDRLocationManager *)self _isDistanceBetween2PointsInRange:v19 aLoi:v14 range:100.0])
              {
                if ([v19 zdrLocationType] == 1)
                {
                  v21 = [(RTAuthorizedLocationZDRLocationManager *)self metrics];
                  v22 = [v21 zdrLocationsCurationMetrics];
                  [v22 setIsZDRHomeLearnedALoi:1];
                }

                if ([v19 zdrLocationType] == 2)
                {
                  v23 = [(RTAuthorizedLocationZDRLocationManager *)self metrics];
                  v24 = [v23 zdrLocationsCurationMetrics];
                  [v24 setIsZDRWorkLearnedALoi:1];
                }

                if ([v19 zdrLocationType] == 3)
                {
                  v25 = [(RTAuthorizedLocationZDRLocationManager *)self metrics];
                  v26 = [v25 zdrLocationsCurationMetrics];
                  [v26 setIsZDRSchoolLearnedALoi:1];
                }

                if ([v19 zdrLocationType] == 4)
                {
                  v27 = [(RTAuthorizedLocationZDRLocationManager *)self metrics];
                  v28 = [v27 zdrLocationsCurationMetrics];
                  [v28 setIsZDRSetupLearnedALoi:1];
                }
              }

              objc_autoreleasePoolPop(v20);
              ++v18;
            }

            while (v16 != v18);
            v16 = [v57 countByEnumeratingWithState:&v59 objects:v81 count:16];
          }

          while (v16);
        }

        objc_autoreleasePoolPop(context);
        v13 = v55 + 1;
      }

      while (v55 + 1 != v51);
      v51 = [obj countByEnumeratingWithState:&v63 objects:v82 count:16];
    }

    while (v51);
  }

  v7 = v46;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v29 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      v30 = objc_opt_class();
      v31 = NSStringFromClass(v30);
      aSelectora = NSStringFromSelector(aSelector);
      v58 = [(RTAuthorizedLocationZDRLocationManager *)self metrics];
      v56 = [v58 zdrLocationsCurationMetrics];
      obja = [v56 isZDRHomeLearnedALoi];
      contexta = [(RTAuthorizedLocationZDRLocationManager *)self metrics];
      v52 = [contexta zdrLocationsCurationMetrics];
      v43 = [v52 isZDRWorkLearnedALoi];
      v50 = [(RTAuthorizedLocationZDRLocationManager *)self metrics];
      v32 = [v50 zdrLocationsCurationMetrics];
      v33 = [v32 isZDRSchoolLearnedALoi];
      v34 = [(RTAuthorizedLocationZDRLocationManager *)self metrics];
      v35 = [v34 zdrLocationsCurationMetrics];
      v36 = [v35 isZDRSetupLearnedALoi];
      v37 = [(RTAuthorizedLocationZDRLocationManager *)self metrics];
      v38 = [v37 zdrLocationsLiveMetrics];
      v39 = [v38 confirmedALOIMatchedWithZDRType];
      *buf = 138413826;
      v68 = v31;
      v69 = 2112;
      v70 = aSelectora;
      v71 = 1026;
      v72 = obja;
      v73 = 1026;
      v74 = v43;
      v7 = v46;
      v75 = 1026;
      v76 = v33;
      v77 = 1026;
      v78 = v36;
      v79 = 1026;
      v80 = v39;
      _os_log_impl(&dword_2304B3000, v29, OS_LOG_TYPE_INFO, "%@:%@,number of isZDRHomeLearnedALoi,%{public}d,isZDRWorkLearnedALoi,%{public}d,isZDRSchoolLearnedALoi,%{public}d,isZDRSetupLearnedALoi,%{public}d,confirmedALOIMatchedWithZDRType,%{public}d", buf, 0x34u);
    }

LABEL_34:
  }
}

- (void)_collectZdrConfirmationMetric:(double)a3 zdrLoc:(id)a4
{
  v46 = *MEMORY[0x277D85DE8];
  v9 = a4;
  v10 = [(RTAuthorizedLocationZDRLocationManager *)self metrics];
  v11 = [v10 zdrLocationsLiveMetrics];

  if (v11)
  {
    v12 = [(RTAuthorizedLocationZDRLocationManager *)self metrics];
    v13 = [v12 zdrLocationsLiveMetrics];
    [v13 distanceBetweenZDRToUserLocation_m];
    v15 = v14;

    v16 = [(RTAuthorizedLocationZDRLocationManager *)self metrics];
    v17 = [v16 zdrLocationsLiveMetrics];
    v18 = v17;
    if (v15 == 0.0)
    {
      [v17 setDistanceBetweenZDRToUserLocation_m:a3];
    }

    else
    {
      [v17 distanceBetweenZDRToUserLocation_m];
      v20 = v19;
      v21 = a3;
      if (v19 <= a3)
      {
        v4 = [(RTAuthorizedLocationZDRLocationManager *)self metrics];
        v5 = [v4 zdrLocationsLiveMetrics];
        [v5 distanceBetweenZDRToUserLocation_m];
        v21 = v22;
      }

      v23 = [(RTAuthorizedLocationZDRLocationManager *)self metrics];
      v24 = [v23 zdrLocationsLiveMetrics];
      [v24 setDistanceBetweenZDRToUserLocation_m:v21];

      if (v20 <= a3)
      {
      }
    }

    if (v9)
    {
      v25 = [v9 zdrLocationType];
    }

    else
    {
      v25 = 0;
    }

    v26 = [(RTAuthorizedLocationZDRLocationManager *)self metrics];
    v27 = [v26 zdrLocationsLiveMetrics];
    [v27 setZdrConfirmationPlaceType:v25];

    v28 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v29 = objc_opt_class();
      v30 = NSStringFromClass(v29);
      v31 = NSStringFromSelector(a2);
      v32 = [(RTAuthorizedLocationZDRLocationManager *)self metrics];
      v33 = [v32 zdrLocationsLiveMetrics];
      [v33 distanceBetweenZDRToUserLocation_m];
      v35 = v34;
      v36 = [(RTAuthorizedLocationZDRLocationManager *)self metrics];
      v37 = [v36 zdrLocationsLiveMetrics];
      v38 = 138413058;
      v39 = v30;
      v40 = 2112;
      v41 = v31;
      v42 = 2050;
      v43 = v35;
      v44 = 1026;
      v45 = [v37 zdrConfirmationPlaceType];
      _os_log_impl(&dword_2304B3000, v28, OS_LOG_TYPE_DEFAULT, "%@:%@,ZDRConfirmed,distanceBetweenZDRToUserLocation_m,%{public}.3lf,zdrConfirmationPlaceType,%{public}d", &v38, 0x26u);
    }
  }
}

- (void)_collectMetric:(int64_t)a3 reasonCode:(int64_t)a4 zdrComputationTime_s:(double)a5
{
  v37 = *MEMORY[0x277D85DE8];
  v10 = [(RTAuthorizedLocationZDRLocationManager *)self metrics];
  v11 = [v10 zdrLocationsLiveMetrics];

  if (v11)
  {
    v12 = [(RTAuthorizedLocationZDRLocationManager *)self metrics];
    v13 = [v12 zdrLocationsLiveMetrics];
    [v13 setZdrConfirmationStatus:a3];

    v14 = [(RTAuthorizedLocationZDRLocationManager *)self metrics];
    v15 = [v14 zdrLocationsLiveMetrics];
    [v15 setZdrConfirmationStatusCode:a4];

    v16 = [(RTAuthorizedLocationZDRLocationManager *)self metrics];
    v17 = [v16 zdrLocationsLiveMetrics];
    [v17 setZdrComputationTime_s:a5];

    v18 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = objc_opt_class();
      v20 = NSStringFromClass(v19);
      v21 = NSStringFromSelector(a2);
      v22 = [(RTAuthorizedLocationZDRLocationManager *)self metrics];
      v23 = [v22 zdrLocationsLiveMetrics];
      v24 = [v23 zdrConfirmationStatus];
      v25 = [(RTAuthorizedLocationZDRLocationManager *)self metrics];
      v26 = [v25 zdrLocationsLiveMetrics];
      v27 = 138413314;
      v28 = v20;
      v29 = 2112;
      v30 = v21;
      v31 = 2050;
      v32 = a5;
      v33 = 1026;
      v34 = v24;
      v35 = 1026;
      v36 = [v26 zdrConfirmationStatusCode];
      _os_log_impl(&dword_2304B3000, v18, OS_LOG_TYPE_DEFAULT, "%@:%@,zdrComputationTime_s,%{public}.3lf,zdrConfirmationStatus,%{public}d,zdrConfirmationStatus,%{public}d", &v27, 0x2Cu);
    }
  }
}

- (void)_collectCurationMetric
{
  v81 = *MEMORY[0x277D85DE8];
  v3 = [(RTAuthorizedLocationZDRLocationManager *)self metrics];
  v4 = [v3 zdrLocationsCurationMetrics];

  if (!v4)
  {
    return;
  }

  v5 = [(RTAuthorizedLocationZDRLocationManager *)self metrics];
  v6 = [v5 zdrLocationsCurationMetrics];
  [v6 setNumberOfZDRLocationsHome:0];

  v7 = [(RTAuthorizedLocationZDRLocationManager *)self metrics];
  v8 = [v7 zdrLocationsCurationMetrics];
  [v8 setNumberOfZDRLocationsWork:0];

  v9 = [(RTAuthorizedLocationZDRLocationManager *)self metrics];
  v10 = [v9 zdrLocationsCurationMetrics];
  [v10 setNumberOfZDRLocationsSchool:0];

  v11 = [(RTAuthorizedLocationZDRLocationManager *)self metrics];
  v12 = [v11 zdrLocationsCurationMetrics];
  [v12 setTotalZDRLocations:0];

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v13 = [(RTAuthorizedLocationZDRLocationManager *)self zdrLocationsMemoryCopy];
  v14 = [v13 countByEnumeratingWithState:&v60 objects:v80 count:16];
  if (!v14)
  {
    v16 = 0;
    v17 = 0;
    goto LABEL_24;
  }

  v15 = v14;
  v16 = 0;
  v17 = 0;
  v18 = *v61;
  do
  {
    for (i = 0; i != v15; ++i)
    {
      if (*v61 != v18)
      {
        objc_enumerationMutation(v13);
      }

      v20 = [*(*(&v60 + 1) + 8 * i) zdrLocationType];
      if (v20 > 2)
      {
        if ((v20 - 4) < 2)
        {
          ++v16;
          continue;
        }

        if (v20 != 3)
        {
          if (v20 != 6)
          {
            continue;
          }

LABEL_15:
          ++v17;
          continue;
        }

        v21 = [(RTAuthorizedLocationZDRLocationManager *)self metrics];
        v22 = [v21 zdrLocationsCurationMetrics];
        [v22 setNumberOfZDRLocationsSchool:{objc_msgSend(v22, "numberOfZDRLocationsSchool") + 1}];
      }

      else
      {
        switch(v20)
        {
          case 0:
            goto LABEL_15;
          case 1:
            v21 = [(RTAuthorizedLocationZDRLocationManager *)self metrics];
            v22 = [v21 zdrLocationsCurationMetrics];
            [v22 setNumberOfZDRLocationsHome:{objc_msgSend(v22, "numberOfZDRLocationsHome") + 1}];
            break;
          case 2:
            v21 = [(RTAuthorizedLocationZDRLocationManager *)self metrics];
            v22 = [v21 zdrLocationsCurationMetrics];
            [v22 setNumberOfZDRLocationsWork:{objc_msgSend(v22, "numberOfZDRLocationsWork") + 1}];
            break;
          default:
            continue;
        }
      }
    }

    v15 = [v13 countByEnumeratingWithState:&v60 objects:v80 count:16];
  }

  while (v15);
LABEL_24:

  v58 = [(RTAuthorizedLocationZDRLocationManager *)self metrics];
  v56 = [v58 zdrLocationsCurationMetrics];
  v23 = [v56 numberOfZDRLocationsHome];
  v54 = [(RTAuthorizedLocationZDRLocationManager *)self metrics];
  v24 = [v54 zdrLocationsCurationMetrics];
  v25 = [v24 numberOfZDRLocationsWork];
  v26 = [(RTAuthorizedLocationZDRLocationManager *)self metrics];
  v27 = [v26 zdrLocationsCurationMetrics];
  v28 = v17 + v16 + v23;
  v29 = v25 + [v27 numberOfZDRLocationsSchool];
  v30 = [(RTAuthorizedLocationZDRLocationManager *)self metrics];
  v31 = [v30 zdrLocationsCurationMetrics];
  [v31 setTotalZDRLocations:(v28 + v29)];

  if (v17)
  {
    v32 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
    {
      v44 = objc_opt_class();
      v45 = NSStringFromClass(v44);
      v46 = NSStringFromSelector(a2);
      *buf = 138412802;
      v65 = v45;
      v66 = 2112;
      v67 = v46;
      v68 = 1026;
      v69 = v17;
      _os_log_fault_impl(&dword_2304B3000, v32, OS_LOG_TYPE_FAULT, "%@:%@,number of invalid ZDR locations found,%{public}u", buf, 0x1Cu);
    }
  }

  if (v16 >= 2)
  {
    v33 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
    {
      v47 = objc_opt_class();
      v48 = NSStringFromClass(v47);
      v49 = NSStringFromSelector(a2);
      *buf = 138412802;
      v65 = v48;
      v66 = 2112;
      v67 = v49;
      v68 = 1026;
      v69 = v16;
      _os_log_fault_impl(&dword_2304B3000, v33, OS_LOG_TYPE_FAULT, "%@:%@,number of invalid ZDR setup locations found,%{public}u", buf, 0x1Cu);
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v34 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      v35 = objc_opt_class();
      v36 = NSStringFromClass(v35);
      v37 = NSStringFromSelector(a2);
      v59 = [(RTAuthorizedLocationZDRLocationManager *)self metrics];
      v57 = [v59 zdrLocationsCurationMetrics];
      v51 = [v57 totalZDRLocations];
      v55 = [(RTAuthorizedLocationZDRLocationManager *)self metrics];
      aSelectora = [v55 zdrLocationsCurationMetrics];
      v50 = [aSelectora numberOfZDRLocationsHome];
      v38 = [(RTAuthorizedLocationZDRLocationManager *)self metrics];
      v39 = [v38 zdrLocationsCurationMetrics];
      v40 = [v39 numberOfZDRLocationsWork];
      v41 = [(RTAuthorizedLocationZDRLocationManager *)self metrics];
      v42 = [v41 zdrLocationsCurationMetrics];
      v43 = [v42 numberOfZDRLocationsSchool];
      *buf = 138414082;
      v65 = v36;
      v66 = 2112;
      v67 = v37;
      v68 = 1026;
      v69 = v51;
      v70 = 1026;
      v71 = v50;
      v72 = 1026;
      v73 = v40;
      v74 = 1026;
      v75 = v43;
      v76 = 1026;
      v77 = v16;
      v78 = 1026;
      v79 = v17;
      _os_log_impl(&dword_2304B3000, v34, OS_LOG_TYPE_INFO, "%@:%@,totalZDRLocations,%{public}u,home,%{public}u,work,%{public}u,school,%{public}u,Setup,%{public}u,other,%{public}u", buf, 0x3Au);
    }
  }
}

- (void)fetchAuthorizedLocationZDRLocations:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  [(RTAuthorizedLocationZDRLocationManager *)self _fetchStoredZDRLocations];
  v6 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = NSStringFromSelector(a2);
    v11 = 138412546;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_DEFAULT, "%@:%@,", &v11, 0x16u);
  }

  v10 = [(RTAuthorizedLocationZDRLocationManager *)self zdrLocationsMemoryCopy];
  v5[2](v5, v10, 0);
}

- (void)_disableNewSetupLocationGeneration
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = [(RTAuthorizedLocationZDRLocationManager *)self zdrLocationsMemoryCopy];
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (!v4)
  {

LABEL_14:
    v11 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceNow:{-(-[RTAuthorizedLocationZDRLocationManager _getSetupLocationValidAgeSeconds](self, "_getSetupLocationValidAgeSeconds") + 1.0)}];
    v12 = [RTAuthorizedLocationZDRLocations alloc];
    v13 = objc_alloc_init(MEMORY[0x277CCAD78]);
    v14 = [(RTAuthorizedLocationZDRLocations *)v12 initWithZDRLocation:v13 zdrLocationDbEntryTimeCfatSec:v11 zdrLocationType:5 zdrLocationLatitudeDeg:v11 zdrLocationLongitudeDeg:0.0 zdrLocationLastSeenTimeCfatSec:0.0];

    [(RTAuthorizedLocationZDRLocationManager *)self _storeZDRLocationEntryToDb:v14];
    [(RTAuthorizedLocationZDRLocationManager *)self _fetchStoredZDRLocations];

    return;
  }

  v5 = v4;
  v6 = 0;
  v7 = *v16;
  do
  {
    for (i = 0; i != v5; ++i)
    {
      if (*v16 != v7)
      {
        objc_enumerationMutation(v3);
      }

      v9 = *(*(&v15 + 1) + 8 * i);
      v10 = [v9 zdrLocationType] == 4 || objc_msgSend(v9, "zdrLocationType") == 5;
      v6 = v10 | v6 & 1;
    }

    v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  }

  while (v5);

  if ((v6 & 1) == 0)
  {
    goto LABEL_14;
  }
}

- (void)onFirstUnlock:(BOOL)a3
{
  [(RTAuthorizedLocationZDRLocationManager *)self setIsUnlockedSinceBoot:1];
  [(RTAuthorizedLocationZDRLocationManager *)self _fetchStoredZDRLocations];
  if (!a3)
  {

    [(RTAuthorizedLocationZDRLocationManager *)self _disableNewSetupLocationGeneration];
  }
}

@end