@interface RTAuthorizedLocationManager
+ (unint64_t)_locationAvailabilityFromCLLocation:(id)a3;
- (BOOL)_assertMotionConsistencyForLocations:(id)a3 positionUncertaintyRate:(double)a4;
- (BOOL)_assertRecentLocationTechnologyQualityForAuthorizedLocation:(id)a3 visit:(id)a4 errorCode:(int64_t *)a5;
- (BOOL)_assertRecentLocationTechnologyQualityForAuthorizedLocationInParts:(id)a3 visit:(id)a4 recentLocation:(id)a5 technologyBitfield:(unint64_t *)a6 proximityStatus:(int64_t *)a7 errorCode:(int64_t *)a8;
- (BOOL)_assertRecentMotionActivityAndLocationHistoryAreConsistentForAuthorizedLocation:(id)a3 visit:(id)a4 errorCode:(int64_t *)a5;
- (BOOL)_assertUserTimeAndTrustedTimeAreConsistent:(int64_t *)a3;
- (BOOL)_doesNewLocationChangeTechnologyAvailability:(id)a3;
- (BOOL)_isExpeditedSyncAndLearnRequired;
- (BOOL)_isLocationServiceEnabled;
- (BOOL)_isRoutineEnabled;
- (BOOL)_loadEraseInstallInitializationXPCCriteriaFromDefaults;
- (BOOL)_oneTimeRetroactivelyRegisterAllStoredVisits;
- (BOOL)_requestLocation;
- (RTAuthorizedLocationManager)initWithVisitManager:(id)a3 locationManager:(id)a4 distanceCalculator:(id)a5 learnedLocationManager:(id)a6 motionActivityManager:(id)a7 visitLogStore:(id)a8 confirmationStatusStore:(id)a9 zdrLocationsStore:(id)a10 defaultsManager:(id)a11 xpcActivityManager:(id)a12 dataProtectionManager:(id)a13 persistenceMirroringManager:(id)a14 platform:(id)a15 authorizationManager:(id)a16;
- (double)_getActiveLocationRequestTime;
- (double)_positionUncertaintyRateFromMotionActivity:(id)a3 dateInterval:(id)a4;
- (id)_assertWeAreAtAuthorizedLocation:(id)a3;
- (id)_getCurrentVisit;
- (id)trustedTimeNow;
- (int)_getMaintenanceXPCTimeoutInSeconds;
- (int)_getMinimumLocationRequestIntervalSeconds;
- (unint64_t)_computeLocationTechnologyAvailabilityForDateInterval:(id)a3;
- (unint64_t)_computeLocationTechnologyExpectationFromHistoricalAvailability:(id)a3;
- (void)_checkConfiguration;
- (void)_checkStatusOverrideDefault;
- (void)_curateAuthorizedLocationsWithHandler:(id)a3;
- (void)_deleteConfirmationStatusFromDisk;
- (void)_fetchAuthorizedLocationExtendedStatus:(id)a3;
- (void)_fetchAuthorizedLocationExtendedStatusWithMetrics:(id)a3;
- (void)_fetchAuthorizedLocationStatusWithZdr:(id)a3;
- (void)_fetchAuthorizedLocations:(id)a3;
- (void)_fetchCurrentLocationWithHandler:(id)a3;
- (void)_fetchZDRLocations:(id)a3;
- (void)_initAtUserRequest;
- (void)_readConfirmationStatusFromDisk;
- (void)_registerForDeviceUnlockNotification;
- (void)_runEraseInstallDatabaseInitialization:(id)a3;
- (void)_runPeriodicConfirmationAlgorithm:(int64_t)a3 handler:(id)a4;
- (void)_setup;
- (void)_setupEraseInstallDatabaseInitializationActivity;
- (void)_setupVisitLogActivity;
- (void)_storeConfirmationStatusToDisk;
- (void)_submitMetrics;
- (void)_updateMostRecentDateAtWhichDeviceDataIsTrusted;
- (void)_updateReferenceTimeBoundsFromVisitLog;
- (void)_updateVisitLogWithTrustedTime:(id)a3 isRetroRegistrationTime:(BOOL)a4 handler:(id)a5;
- (void)collectMetricDataForTest:(int64_t)a3 handler:(id)a4;
- (void)curateAuthorizedLocationsWithHandler:(id)a3;
- (void)eraseVisitLogDatabase:(id)a3;
- (void)fetchAuthorizedLocationCachedStatus:(id)a3;
- (void)fetchAuthorizedLocationDetailedStatus:(id)a3;
- (void)fetchAuthorizedLocationExtendedStatus:(id)a3;
- (void)fetchAuthorizedLocations:(id)a3;
- (void)fetchVisitLogsWithOptions:(id)a3 handler:(id)a4;
- (void)onDataProtectionNotification:(id)a3;
- (void)onLeechedLocationNotification:(id)a3;
- (void)onVisitMonitorNotification:(id)a3;
- (void)prepareTestSetup:(int64_t)a3;
- (void)prepareZDRLocationSetupForTesting:(id)a3;
- (void)runEraseInstallDatabaseInitialization:(id)a3;
- (void)runPeriodicConfirmationAlgorithmForTest:(id)a3;
- (void)testFetchZDRLocationStatus:(id)a3 fullSecurityAloiList:(id)a4 handler:(id)a5;
@end

@implementation RTAuthorizedLocationManager

- (RTAuthorizedLocationManager)initWithVisitManager:(id)a3 locationManager:(id)a4 distanceCalculator:(id)a5 learnedLocationManager:(id)a6 motionActivityManager:(id)a7 visitLogStore:(id)a8 confirmationStatusStore:(id)a9 zdrLocationsStore:(id)a10 defaultsManager:(id)a11 xpcActivityManager:(id)a12 dataProtectionManager:(id)a13 persistenceMirroringManager:(id)a14 platform:(id)a15 authorizationManager:(id)a16
{
  v93 = *MEMORY[0x277D85DE8];
  v74 = a3;
  v86 = a4;
  v87 = a5;
  v85 = a6;
  v72 = a7;
  v84 = a7;
  v83 = a8;
  v82 = a9;
  v81 = a10;
  v80 = a11;
  v79 = a12;
  v78 = a13;
  v77 = a14;
  v76 = a15;
  v75 = a16;
  v21 = v74;
  if (!v74)
  {
    v22 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v90 = "[RTAuthorizedLocationManager initWithVisitManager:locationManager:distanceCalculator:learnedLocationManager:motionActivityManager:visitLogStore:confirmationStatusStore:zdrLocationsStore:defaultsManager:xpcActivityManager:dataProtectionManager:persistenceMirroringManager:platform:authorizationManager:]";
      v91 = 1024;
      v92 = 158;
      _os_log_error_impl(&dword_2304B3000, v22, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: visitManager (in %s:%d)", buf, 0x12u);
    }
  }

  if (!v86)
  {
    v23 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v90 = "[RTAuthorizedLocationManager initWithVisitManager:locationManager:distanceCalculator:learnedLocationManager:motionActivityManager:visitLogStore:confirmationStatusStore:zdrLocationsStore:defaultsManager:xpcActivityManager:dataProtectionManager:persistenceMirroringManager:platform:authorizationManager:]";
      v91 = 1024;
      v92 = 159;
      _os_log_error_impl(&dword_2304B3000, v23, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: locationManager (in %s:%d)", buf, 0x12u);
    }
  }

  if (!v87)
  {
    v24 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v90 = "[RTAuthorizedLocationManager initWithVisitManager:locationManager:distanceCalculator:learnedLocationManager:motionActivityManager:visitLogStore:confirmationStatusStore:zdrLocationsStore:defaultsManager:xpcActivityManager:dataProtectionManager:persistenceMirroringManager:platform:authorizationManager:]";
      v91 = 1024;
      v92 = 160;
      _os_log_error_impl(&dword_2304B3000, v24, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: distanceCalculator (in %s:%d)", buf, 0x12u);
    }
  }

  if (!v85)
  {
    v25 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v90 = "[RTAuthorizedLocationManager initWithVisitManager:locationManager:distanceCalculator:learnedLocationManager:motionActivityManager:visitLogStore:confirmationStatusStore:zdrLocationsStore:defaultsManager:xpcActivityManager:dataProtectionManager:persistenceMirroringManager:platform:authorizationManager:]";
      v91 = 1024;
      v92 = 161;
      _os_log_error_impl(&dword_2304B3000, v25, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: learnedLocationManager (in %s:%d)", buf, 0x12u);
    }
  }

  if (!v84)
  {
    v26 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v90 = "[RTAuthorizedLocationManager initWithVisitManager:locationManager:distanceCalculator:learnedLocationManager:motionActivityManager:visitLogStore:confirmationStatusStore:zdrLocationsStore:defaultsManager:xpcActivityManager:dataProtectionManager:persistenceMirroringManager:platform:authorizationManager:]";
      v91 = 1024;
      v92 = 162;
      _os_log_error_impl(&dword_2304B3000, v26, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: motionActivityManager (in %s:%d)", buf, 0x12u);
    }
  }

  if (!v83)
  {
    v27 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v90 = "[RTAuthorizedLocationManager initWithVisitManager:locationManager:distanceCalculator:learnedLocationManager:motionActivityManager:visitLogStore:confirmationStatusStore:zdrLocationsStore:defaultsManager:xpcActivityManager:dataProtectionManager:persistenceMirroringManager:platform:authorizationManager:]";
      v91 = 1024;
      v92 = 163;
      _os_log_error_impl(&dword_2304B3000, v27, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: visitLogStore (in %s:%d)", buf, 0x12u);
    }
  }

  if (!v80)
  {
    v28 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v90 = "[RTAuthorizedLocationManager initWithVisitManager:locationManager:distanceCalculator:learnedLocationManager:motionActivityManager:visitLogStore:confirmationStatusStore:zdrLocationsStore:defaultsManager:xpcActivityManager:dataProtectionManager:persistenceMirroringManager:platform:authorizationManager:]";
      v91 = 1024;
      v92 = 164;
      _os_log_error_impl(&dword_2304B3000, v28, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: defaultsManager (in %s:%d)", buf, 0x12u);
    }
  }

  if (!v79)
  {
    v29 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v90 = "[RTAuthorizedLocationManager initWithVisitManager:locationManager:distanceCalculator:learnedLocationManager:motionActivityManager:visitLogStore:confirmationStatusStore:zdrLocationsStore:defaultsManager:xpcActivityManager:dataProtectionManager:persistenceMirroringManager:platform:authorizationManager:]";
      v91 = 1024;
      v92 = 165;
      _os_log_error_impl(&dword_2304B3000, v29, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: xpcActivityManager (in %s:%d)", buf, 0x12u);
    }
  }

  if (!v78)
  {
    v30 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v90 = "[RTAuthorizedLocationManager initWithVisitManager:locationManager:distanceCalculator:learnedLocationManager:motionActivityManager:visitLogStore:confirmationStatusStore:zdrLocationsStore:defaultsManager:xpcActivityManager:dataProtectionManager:persistenceMirroringManager:platform:authorizationManager:]";
      v91 = 1024;
      v92 = 166;
      _os_log_error_impl(&dword_2304B3000, v30, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: dataProtectionManager (in %s:%d)", buf, 0x12u);
    }
  }

  if (!v77)
  {
    v31 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v90 = "[RTAuthorizedLocationManager initWithVisitManager:locationManager:distanceCalculator:learnedLocationManager:motionActivityManager:visitLogStore:confirmationStatusStore:zdrLocationsStore:defaultsManager:xpcActivityManager:dataProtectionManager:persistenceMirroringManager:platform:authorizationManager:]";
      v91 = 1024;
      v92 = 167;
      _os_log_error_impl(&dword_2304B3000, v31, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: persistenceMirroringManager (in %s:%d)", buf, 0x12u);
    }
  }

  if (!v76)
  {
    v32 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v90 = "[RTAuthorizedLocationManager initWithVisitManager:locationManager:distanceCalculator:learnedLocationManager:motionActivityManager:visitLogStore:confirmationStatusStore:zdrLocationsStore:defaultsManager:xpcActivityManager:dataProtectionManager:persistenceMirroringManager:platform:authorizationManager:]";
      v91 = 1024;
      v92 = 168;
      _os_log_error_impl(&dword_2304B3000, v32, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: platform (in %s:%d)", buf, 0x12u);
    }
  }

  if (!v75)
  {
    v33 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v90 = "[RTAuthorizedLocationManager initWithVisitManager:locationManager:distanceCalculator:learnedLocationManager:motionActivityManager:visitLogStore:confirmationStatusStore:zdrLocationsStore:defaultsManager:xpcActivityManager:dataProtectionManager:persistenceMirroringManager:platform:authorizationManager:]";
      v91 = 1024;
      v92 = 169;
      _os_log_error_impl(&dword_2304B3000, v33, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: authorizationManager (in %s:%d)", buf, 0x12u);
    }
  }

  if (!v82)
  {
    v34 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v90 = "[RTAuthorizedLocationManager initWithVisitManager:locationManager:distanceCalculator:learnedLocationManager:motionActivityManager:visitLogStore:confirmationStatusStore:zdrLocationsStore:defaultsManager:xpcActivityManager:dataProtectionManager:persistenceMirroringManager:platform:authorizationManager:]";
      v91 = 1024;
      v92 = 170;
      _os_log_error_impl(&dword_2304B3000, v34, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: confirmationStatusStore (in %s:%d)", buf, 0x12u);
    }
  }

  if (!v87)
  {
    v35 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v90 = "[RTAuthorizedLocationManager initWithVisitManager:locationManager:distanceCalculator:learnedLocationManager:motionActivityManager:visitLogStore:confirmationStatusStore:zdrLocationsStore:defaultsManager:xpcActivityManager:dataProtectionManager:persistenceMirroringManager:platform:authorizationManager:]";
      v91 = 1024;
      v92 = 171;
      _os_log_error_impl(&dword_2304B3000, v35, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: distanceCalculator (in %s:%d)", buf, 0x12u);
    }
  }

  if (!v81)
  {
    v36 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v90 = "[RTAuthorizedLocationManager initWithVisitManager:locationManager:distanceCalculator:learnedLocationManager:motionActivityManager:visitLogStore:confirmationStatusStore:zdrLocationsStore:defaultsManager:xpcActivityManager:dataProtectionManager:persistenceMirroringManager:platform:authorizationManager:]";
      v91 = 1024;
      v92 = 172;
      _os_log_error_impl(&dword_2304B3000, v36, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: zdrLocationsStore (in %s:%d)", buf, 0x12u);
    }
  }

  v88.receiver = self;
  v88.super_class = RTAuthorizedLocationManager;
  v37 = [(RTNotifier *)&v88 init];
  v38 = v37;
  if (v37)
  {
    objc_storeStrong(&v37->_platform, a15);
    v38->_isSupportedDevice = [(RTPlatform *)v38->_platform iPhoneDevice];
    objc_storeStrong(&v38->_authorizationManager, a16);
    objc_storeStrong(&v38->_visitManager, a3);
    objc_storeStrong(&v38->_distanceCalculator, a5);
    objc_storeStrong(&v38->_locationManager, a4);
    objc_storeStrong(&v38->_distanceCalculator, a5);
    objc_storeStrong(&v38->_learnedLocationManager, a6);
    objc_storeStrong(&v38->_motionActivityManager, v72);
    v39 = objc_alloc_init(MEMORY[0x277CBEB18]);
    authorizedLocationArr = v38->_authorizedLocationArr;
    v38->_authorizedLocationArr = v39;

    objc_storeStrong(&v38->_visitLogStore, a8);
    objc_storeStrong(&v38->_defaultsManager, a11);
    objc_storeStrong(&v38->_xpcActivityManager, a12);
    objc_storeStrong(&v38->_dataProtectionManager, a13);
    objc_storeStrong(&v38->_confirmationStatusStore, a9);
    objc_storeStrong(&v38->_zdrLocationsStore, a10);
    v41 = [MEMORY[0x277CBEAA8] distantPast];
    dateOfLastAuthorizedLocationsCuration = v38->_dateOfLastAuthorizedLocationsCuration;
    v38->_dateOfLastAuthorizedLocationsCuration = v41;

    dateOfLastAuthorizedLocationsUserRequest = v38->_dateOfLastAuthorizedLocationsUserRequest;
    v38->_dateOfLastAuthorizedLocationsUserRequest = 0;

    dateOfLastAuthorizedLocationsNonUserRequest = v38->_dateOfLastAuthorizedLocationsNonUserRequest;
    v38->_dateOfLastAuthorizedLocationsNonUserRequest = 0;

    overrideAuthorizedLocationStatus = v38->_overrideAuthorizedLocationStatus;
    v38->_overrideAuthorizedLocationStatus = 0;

    v38->_relaxTrustedTimeRequirement = 0;
    v38->_isEraseInstallDatabaseInitializationRequired = 0;
    v38->_isUnlockedSinceBoot = 0;
    v46 = objc_alloc_init(RTTrustedTimeCache);
    trustedTimeCache = v38->_trustedTimeCache;
    v38->_trustedTimeCache = v46;

    v38->_allowUnsecureTimeFallback = 0;
    v38->_forceTrustedTimeUnavailability = 0;
    v48 = [RTAuthorizedLocationMetrics alloc];
    v49 = [MEMORY[0x277CBEAA8] now];
    v50 = [(RTAuthorizedLocationMetrics *)v48 initWithDaemonStartDate:v49];
    metrics = v38->_metrics;
    v38->_metrics = v50;

    v52 = [[RTAuthorizedLocationBiometricsManager alloc] initWithTrustedTimeCache:v38->_trustedTimeCache defaultsManager:v38->_defaultsManager];
    biometricsManager = v38->_biometricsManager;
    v38->_biometricsManager = v52;

    v54 = [MEMORY[0x277CBEAA8] distantPast];
    mostRecentDateAtWhichDeviceDataIsTrusted = v38->_mostRecentDateAtWhichDeviceDataIsTrusted;
    v38->_mostRecentDateAtWhichDeviceDataIsTrusted = v54;

    objc_storeStrong(&v38->_persistenceMirroringManager, a14);
    eraseInstallInitializationXpcCriteria = v38->_eraseInstallInitializationXpcCriteria;
    v38->_eraseInstallInitializationXpcCriteria = 0;

    v38->_eraseInstallDatabaseInitializationMaxAttemptCount = 0;
    v38->_eraseInstallDatabaseInitializationAttemptCount = 0;
    eraseInstallInitializationStartDate = v38->_eraseInstallInitializationStartDate;
    v38->_eraseInstallInitializationStartDate = 0;

    v58 = objc_alloc_init(RTAuthorizedLocationManagerCachedStatus);
    authLocConfirmationStatus = v38->_authLocConfirmationStatus;
    v38->_authLocConfirmationStatus = v58;

    lastAuthLocConfirmationLocationTriggerTime = v38->_lastAuthLocConfirmationLocationTriggerTime;
    v38->_lastAuthLocConfirmationLocationTriggerTime = 0;

    lastAuthLocConfirmationXPCTriggerTime = v38->_lastAuthLocConfirmationXPCTriggerTime;
    v38->_lastAuthLocConfirmationXPCTriggerTime = 0;

    currentVisitCached = v38->_currentVisitCached;
    v38->_currentVisitCached = 0;

    eraseInstallInitTransaction = v38->_eraseInstallInitTransaction;
    v38->_eraseInstallInitTransaction = 0;

    v38->_technologiesMissingToLookForInLocationUpdates = 15;
    v64 = [RTAuthorizedLocationZDRLocationManager alloc];
    v65 = [(RTNotifier *)v38 queue];
    v21 = v74;
    v66 = [(RTAuthorizedLocationZDRLocationManager *)v64 initZDRLocationManager:v65 visitManager:v38->_visitManager distanceCalculator:v38->_distanceCalculator locationManager:v38->_locationManager learnedLocationManager:v38->_learnedLocationManager defaultsManager:v38->_defaultsManager confirmationStatus:v38->_authLocConfirmationStatus zdrLocationsStore:v38->_zdrLocationsStore platform:v38->_platform metrics:v38->_metrics];
    zdrLocationManager = v38->_zdrLocationManager;
    v38->_zdrLocationManager = v66;

    v68 = objc_opt_new();
    metricLock = v38->_metricLock;
    v38->_metricLock = v68;

    [(RTService *)v38 setup];
  }

  return v38;
}

- (void)_setup
{
  if (self->_isSupportedDevice)
  {
    v13 = v2;
    if (self->_metrics)
    {
      -[RTAuthorizedLocationMetrics setLocationServicesEnabled:](self->_metrics, "setLocationServicesEnabled:", [MEMORY[0x277CBFC10] locationServicesEnabled]);
      [(RTAuthorizedLocationMetrics *)self->_metrics setRoutineEnabled:[(RTAuthorizedLocationManager *)self _isRoutineEnabled]];
    }

    [(RTAuthorizedLocationManager *)self _checkConfiguration:v5];
    [(RTAuthorizedLocationManager *)self _loadEraseInstallInitializationXPCCriteriaFromDefaults];
    [(RTAuthorizedLocationManager *)self _setupVisitLogActivity];
    [(RTAuthorizedLocationManager *)self _registerForDeviceUnlockNotification];
    v9 = [(RTAuthorizedLocationManager *)self visitManager];
    v10 = +[(RTNotification *)RTVisitManagerVisitIncidentNotification];
    [v9 addObserver:self selector:sel_onVisitMonitorNotification_ name:v10];

    v11 = [(RTAuthorizedLocationManager *)self locationManager];
    v12 = +[(RTNotification *)RTLocationManagerNotificationLocationsLeeched];
    [v11 addObserver:self selector:sel_onLeechedLocationNotification_ name:v12];

    [(RTAuthorizedLocationManager *)self _readConfirmationStatusFromDisk];
  }
}

- (void)_deleteConfirmationStatusFromDisk
{
  v44 = *MEMORY[0x277D85DE8];
  v4 = [(RTAuthorizedLocationManager *)self confirmationStatusStore];

  if (v4)
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = NSStringFromSelector(a2);
      *buf = 138412546;
      *&buf[4] = v7;
      *&buf[12] = 2112;
      *&buf[14] = v8;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_DEFAULT, "%@:%@", buf, 0x16u);
    }

    v9 = dispatch_semaphore_create(0);
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v39 = __Block_byref_object_copy__53;
    v40 = __Block_byref_object_dispose__53;
    v41 = 0;
    v10 = [(RTAuthorizedLocationManager *)self confirmationStatusStore];
    v30 = MEMORY[0x277D85DD0];
    v31 = 3221225472;
    v32 = __64__RTAuthorizedLocationManager__deleteConfirmationStatusFromDisk__block_invoke;
    v33 = &unk_2788C9450;
    v36 = buf;
    v37 = a2;
    v34 = self;
    v11 = v9;
    v35 = v11;
    [v10 deleteConfirmationStatus:&v30];

    v12 = (*&buf[8] + 40);
    v13 = *(*&buf[8] + 40);
    v14 = v11;
    v15 = [MEMORY[0x277CBEAA8] now];
    v16 = dispatch_time(0, 10000000000);
    if (dispatch_semaphore_wait(v14, v16))
    {
      v17 = [MEMORY[0x277CBEAA8] now];
      [v17 timeIntervalSinceDate:v15];
      v19 = v18;
      v20 = objc_opt_new();
      v21 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_40];
      v22 = [MEMORY[0x277CCACC8] callStackSymbols];
      v23 = [v22 filteredArrayUsingPredicate:v21];
      v24 = [v23 firstObject];

      [v20 submitToCoreAnalytics:v24 type:1 duration:v19];
      v25 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
      {
        *v43 = 0;
        _os_log_fault_impl(&dword_2304B3000, v25, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v43, 2u);
      }

      v26 = MEMORY[0x277CCA9B8];
      v42 = *MEMORY[0x277CCA450];
      *v43 = @"semaphore wait timeout";
      v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:&v42 count:1];
      v28 = [v26 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v27];

      if (v28)
      {
        v29 = v28;

        v13 = v28;
      }
    }

    objc_storeStrong(v12, v13);
    _Block_object_dispose(buf, 8);
  }
}

void __64__RTAuthorizedLocationManager__deleteConfirmationStatusFromDisk__block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a2;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  if (v4)
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = NSStringFromSelector(*(a1 + 56));
      v9 = 138412802;
      v10 = v7;
      v11 = 2112;
      v12 = v8;
      v13 = 2114;
      v14 = v4;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_DEFAULT, "%@:%@,delete error,%{public}@", &v9, 0x20u);
    }
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

- (void)_readConfirmationStatusFromDisk
{
  v41 = *MEMORY[0x277D85DE8];
  v4 = [(RTAuthorizedLocationManager *)self confirmationStatusStore];

  if (v4)
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = NSStringFromSelector(a2);
      *buf = 138412546;
      *&buf[4] = v7;
      *&buf[12] = 2112;
      *&buf[14] = v8;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_DEFAULT, "%@:%@", buf, 0x16u);
    }

    v9 = dispatch_semaphore_create(0);
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v36 = __Block_byref_object_copy__53;
    v37 = __Block_byref_object_dispose__53;
    v38 = 0;
    v30 = objc_alloc_init(MEMORY[0x277D01078]);
    v10 = [(RTAuthorizedLocationManager *)self confirmationStatusStore];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __62__RTAuthorizedLocationManager__readConfirmationStatusFromDisk__block_invoke;
    v31[3] = &unk_2788C9478;
    v33 = buf;
    v34 = a2;
    v31[4] = self;
    v11 = v9;
    v32 = v11;
    [v10 fetchConfirmationStatusWithOptions:v30 handler:v31];

    v12 = (*&buf[8] + 40);
    v13 = *(*&buf[8] + 40);
    v14 = v11;
    v15 = [MEMORY[0x277CBEAA8] now];
    v16 = dispatch_time(0, 10000000000);
    if (dispatch_semaphore_wait(v14, v16))
    {
      v17 = [MEMORY[0x277CBEAA8] now];
      [v17 timeIntervalSinceDate:v15];
      v19 = v18;
      v20 = objc_opt_new();
      v21 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_40];
      v22 = [MEMORY[0x277CCACC8] callStackSymbols];
      v23 = [v22 filteredArrayUsingPredicate:v21];
      v24 = [v23 firstObject];

      [v20 submitToCoreAnalytics:v24 type:1 duration:v19];
      v25 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
      {
        *v40 = 0;
        _os_log_fault_impl(&dword_2304B3000, v25, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v40, 2u);
      }

      v26 = MEMORY[0x277CCA9B8];
      v39 = *MEMORY[0x277CCA450];
      *v40 = @"semaphore wait timeout";
      v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:&v39 count:1];
      v28 = [v26 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v27];

      if (v28)
      {
        v29 = v28;

        v13 = v28;
      }
    }

    objc_storeStrong(v12, v13);
    _Block_object_dispose(buf, 8);
  }
}

void __62__RTAuthorizedLocationManager__readConfirmationStatusFromDisk__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a3);
  if (!v5)
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v14 = objc_opt_class();
      v9 = NSStringFromClass(v14);
      v10 = NSStringFromSelector(*(a1 + 56));
      v27 = 138412546;
      v28 = v9;
      v29 = 2112;
      v30 = v10;
      v11 = "%@:%@,status,nil";
      v12 = v7;
      v13 = 22;
      goto LABEL_7;
    }

LABEL_8:

    dispatch_semaphore_signal(*(a1 + 40));
    goto LABEL_12;
  }

  if (v6)
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v10 = NSStringFromSelector(*(a1 + 56));
      v27 = 138412802;
      v28 = v9;
      v29 = 2112;
      v30 = v10;
      v31 = 2114;
      v32 = v6;
      v11 = "%@:%@,fetchError,%{public}@";
      v12 = v7;
      v13 = 32;
LABEL_7:
      _os_log_impl(&dword_2304B3000, v12, OS_LOG_TYPE_DEFAULT, v11, &v27, v13);

      goto LABEL_8;
    }

    goto LABEL_8;
  }

  v15 = [objc_alloc(MEMORY[0x277D01088]) initWithStatus:{objc_msgSend(v5, "confirmationStatus")}];
  v16 = [*(a1 + 32) authLocConfirmationStatus];
  v17 = [v5 confirmationStatusCode];
  v18 = [v5 confirmationStatusTime];
  [v16 setAuthConfirmationStatusToCacheInfo:v15 statusCode:v17 timestamp:v18];

  v19 = [*(a1 + 32) authLocConfirmationStatus];
  v20 = [v5 zdrConfirmationStatus];
  v21 = [v5 zdrConfirmationStatusCode];
  v22 = [v5 zdrConfirmationStatusTime];
  [v19 setZDRStatusToCacheInfo:v20 zdrStatusCode:v21 zdrTimestamp:v22];

  v23 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = objc_opt_class();
    v25 = NSStringFromClass(v24);
    v26 = NSStringFromSelector(*(a1 + 56));
    v27 = 138412802;
    v28 = v25;
    v29 = 2112;
    v30 = v26;
    v31 = 2114;
    v32 = v5;
    _os_log_impl(&dword_2304B3000, v23, OS_LOG_TYPE_DEFAULT, "%@:%@,confirmationStatus,%{public}@", &v27, 0x20u);
  }

  dispatch_semaphore_signal(*(a1 + 40));
LABEL_12:
}

- (void)_storeConfirmationStatusToDisk
{
  v60[1] = *MEMORY[0x277D85DE8];
  v3 = [(RTAuthorizedLocationManager *)self confirmationStatusStore];

  if (v3)
  {
    [(RTAuthorizedLocationManager *)self _deleteConfirmationStatusFromDisk];
    v43 = [RTAuthorizedLocationConfirmationStatus alloc];
    v40 = [(RTAuthorizedLocationManager *)self authLocConfirmationStatus];
    v39 = [v40 getAuthConfirmationStatus];
    v38 = [v39 eStatus];
    v4 = [(RTAuthorizedLocationManager *)self authLocConfirmationStatus];
    v37 = [v4 getAuthConfirmationStatusCode];
    v5 = [(RTAuthorizedLocationManager *)self authLocConfirmationStatus];
    v6 = [v5 getAuthLocConfirmationComputedTime];
    v7 = [(RTAuthorizedLocationManager *)self authLocConfirmationStatus];
    v8 = [v7 getZDRLocationStatus];
    v9 = [(RTAuthorizedLocationManager *)self authLocConfirmationStatus];
    v10 = [v9 getZDRLocationStatusCode];
    v11 = [(RTAuthorizedLocationManager *)self authLocConfirmationStatus];
    v12 = [v11 getZDRLocationStatusComputationTime];
    v44 = [(RTAuthorizedLocationConfirmationStatus *)v43 initWithConfirmationStatus:v38 statusCode:v37 timeOfEvent:v6 zdrStatus:v8 zdrStatusCode:v10 zdrTimeOfEvent:v12];

    v13 = dispatch_semaphore_create(0);
    v49 = 0;
    v50 = &v49;
    v51 = 0x3032000000;
    v52 = __Block_byref_object_copy__53;
    v53 = __Block_byref_object_dispose__53;
    v54 = 0;
    v14 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      v17 = NSStringFromSelector(a2);
      *buf = 138412802;
      *&buf[4] = v16;
      v56 = 2112;
      v57 = v17;
      v58 = 2114;
      v59 = v44;
      _os_log_impl(&dword_2304B3000, v14, OS_LOG_TYPE_DEFAULT, "%@:%@ confirmationStatus,%{public}@", buf, 0x20u);
    }

    v18 = [(RTAuthorizedLocationManager *)self confirmationStatusStore];
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __61__RTAuthorizedLocationManager__storeConfirmationStatusToDisk__block_invoke;
    v45[3] = &unk_2788C9450;
    v47 = &v49;
    v45[4] = self;
    v48 = a2;
    v19 = v13;
    v46 = v19;
    [v18 storeConfirmationStatus:v44 handler:v45];

    v20 = (v50 + 5);
    aSelectora = v50[5];
    v21 = v19;
    v22 = [MEMORY[0x277CBEAA8] now];
    v23 = dispatch_time(0, 10000000000);
    if (dispatch_semaphore_wait(v21, v23))
    {
      v24 = [MEMORY[0x277CBEAA8] now];
      [v24 timeIntervalSinceDate:v22];
      v26 = v25;
      v27 = objc_opt_new();
      v28 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_40];
      v29 = [MEMORY[0x277CCACC8] callStackSymbols];
      v30 = [v29 filteredArrayUsingPredicate:v28];
      v31 = [v30 firstObject];

      [v27 submitToCoreAnalytics:v31 type:1 duration:v26];
      v32 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_2304B3000, v32, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
      }

      v33 = MEMORY[0x277CCA9B8];
      v60[0] = *MEMORY[0x277CCA450];
      *buf = @"semaphore wait timeout";
      v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v60 count:1];
      v35 = [v33 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v34];

      if (v35)
      {
        v36 = v35;

        aSelectora = v35;
      }
    }

    objc_storeStrong(v20, aSelectora);
    _Block_object_dispose(&v49, 8);
  }
}

void __61__RTAuthorizedLocationManager__storeConfirmationStatusToDisk__block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a2;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  if (*(*(*(a1 + 48) + 8) + 40))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = NSStringFromSelector(*(a1 + 56));
      v9 = *(*(*(a1 + 48) + 8) + 40);
      v10 = 138412802;
      v11 = v7;
      v12 = 2112;
      v13 = v8;
      v14 = 2114;
      v15 = v9;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_DEFAULT, "%@:%@,storeError,%{public}@", &v10, 0x20u);
    }
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

- (int)_getMaintenanceXPCTimeoutInSeconds
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = [(RTAuthorizedLocationManager *)self platform];
  v5 = [v4 internalInstall];

  if (!v5)
  {
    return 3600;
  }

  v6 = [(RTDefaultsManager *)self->_defaultsManager objectForKey:@"RTAuthorizedLocationManagerXpcMaintenanceActivityInterval"];

  if (v6)
  {
    v7 = [(RTDefaultsManager *)self->_defaultsManager objectForKey:@"RTAuthorizedLocationManagerXpcMaintenanceActivityInterval"];
    v8 = [v7 integerValue];
  }

  else
  {
    v8 = 3600;
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
    v19 = v8;
    _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_DEFAULT, "%@:%@,xpcTimeout,%{public}d", &v14, 0x1Cu);
  }

  return v8;
}

- (int)_getMinimumLocationRequestIntervalSeconds
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = [(RTAuthorizedLocationManager *)self platform];
  v5 = [v4 internalInstall];

  if (!v5)
  {
    return 900;
  }

  v6 = [(RTDefaultsManager *)self->_defaultsManager objectForKey:@"RTAuthorizedLocationManagerMinimumLocationRequestInterval"];

  if (v6)
  {
    v7 = [(RTDefaultsManager *)self->_defaultsManager objectForKey:@"RTAuthorizedLocationManagerMinimumLocationRequestInterval"];
    v8 = [v7 integerValue];
  }

  else
  {
    v8 = 900;
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
    v19 = v8;
    _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_DEFAULT, "%@:%@,%{public}d", &v14, 0x1Cu);
  }

  return v8;
}

- (BOOL)_isLocationServiceEnabled
{
  v3 = [(RTDefaultsManager *)self->_defaultsManager objectForKey:@"RTAuthorizedLocationManagerLocationServiceEnabled"];

  if (v3)
  {
    v4 = [(RTDefaultsManager *)self->_defaultsManager objectForKey:@"RTAuthorizedLocationManagerLocationServiceEnabled"];
    v5 = [v4 BOOLValue];

    return v5;
  }

  else
  {
    v7 = MEMORY[0x277CBFC10];

    return [v7 locationServicesEnabled];
  }
}

- (BOOL)_isRoutineEnabled
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = dispatch_semaphore_create(0);
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  authorizationManager = self->_authorizationManager;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __48__RTAuthorizedLocationManager__isRoutineEnabled__block_invoke;
  v24[3] = &unk_2788C94A0;
  v26 = &v27;
  v5 = v3;
  v25 = v5;
  [(RTAuthorizationManager *)authorizationManager fetchRoutineEnabledWithHandler:v24];
  v6 = v5;
  v7 = [MEMORY[0x277CBEAA8] now];
  v8 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v6, v8))
  {
    v9 = [MEMORY[0x277CBEAA8] now];
    [v9 timeIntervalSinceDate:v7];
    v11 = v10;
    v12 = objc_opt_new();
    v13 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_40];
    v14 = [MEMORY[0x277CCACC8] callStackSymbols];
    v15 = [v14 filteredArrayUsingPredicate:v13];
    v16 = [v15 firstObject];

    [v12 submitToCoreAnalytics:v16 type:1 duration:v11];
    v17 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2304B3000, v17, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
    }

    v18 = MEMORY[0x277CCA9B8];
    v31 = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v31 count:1];
    v20 = [v18 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v19];

    if (v20)
    {
      v21 = v20;
    }
  }

  v22 = *(v28 + 24);
  _Block_object_dispose(&v27, 8);

  return v22 & 1;
}

- (void)_checkConfiguration
{
  v21 = *MEMORY[0x277D85DE8];
  if ([(RTPlatform *)self->_platform internalInstall])
  {
    [(RTAuthorizedLocationManager *)self _checkStatusOverrideDefault];
    v4 = [(RTDefaultsManager *)self->_defaultsManager objectForKey:@"RTDefaultsAuthorizedLocationRelaxTrustedTimeRequirement"];
    self->_relaxTrustedTimeRequirement = [v4 BOOLValue];

    if (self->_relaxTrustedTimeRequirement && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v5 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        v13 = NSStringFromSelector(a2);
        v17 = 138412546;
        v18 = v12;
        v19 = 2112;
        v20 = v13;
        _os_log_debug_impl(&dword_2304B3000, v5, OS_LOG_TYPE_DEBUG, "%@:%@, WARNING, defaults set to relax trusted time requirement (not requiring user time and trusted time to align).", &v17, 0x16u);
      }
    }

    v6 = [(RTDefaultsManager *)self->_defaultsManager objectForKey:@"RTDefaultsAuthorizedLocationForceTrustedTimeUnavailability"];
    self->_forceTrustedTimeUnavailability = [v6 BOOLValue];

    if (self->_forceTrustedTimeUnavailability && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v7 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        v14 = objc_opt_class();
        v15 = NSStringFromClass(v14);
        v16 = NSStringFromSelector(a2);
        v17 = 138412546;
        v18 = v15;
        v19 = 2112;
        v20 = v16;
        _os_log_debug_impl(&dword_2304B3000, v7, OS_LOG_TYPE_DEBUG, "%@:%@, WARNING, defaults set to force trusted time to be unavailable.", &v17, 0x16u);
      }
    }
  }

  v8 = [(RTDefaultsManager *)self->_defaultsManager objectForKey:@"RTAuthorizedLocationEraseInstallInitActivityAttemptCount"];

  if (v8)
  {
    v9 = [(RTDefaultsManager *)self->_defaultsManager objectForKey:@"RTAuthorizedLocationEraseInstallInitActivityAttemptCount"];
    self->_eraseInstallDatabaseInitializationAttemptCount = [v9 integerValue];
  }

  v10 = [(RTAuthorizedLocationManager *)self visitLogStore];
  self->_allowUnsecureTimeFallback = [v10 wasTrustedTimeRecentlyAvailable] ^ 1;
}

- (BOOL)_isExpeditedSyncAndLearnRequired
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = [(RTAuthorizedLocationManager *)self visitLogStore];
  v5 = [v4 getEraseInstallRetroRegistrationStatus];

  if (v5 == 2)
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v14 = NSStringFromSelector(a2);
      v23 = 138412546;
      v24 = v13;
      v25 = 2112;
      v26 = v14;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_DEFAULT, "%@:%@, expedited sync not required as it has already run.", &v23, 0x16u);
    }
  }

  else
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      if (v7)
      {
        v8 = objc_opt_class();
        v9 = NSStringFromClass(v8);
        v10 = NSStringFromSelector(a2);
        eraseInstallDatabaseInitializationAttemptCount = self->_eraseInstallDatabaseInitializationAttemptCount;
        v23 = 138412802;
        v24 = v9;
        v25 = 2112;
        v26 = v10;
        v27 = 1026;
        v28 = eraseInstallDatabaseInitializationAttemptCount;
        _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_DEFAULT, "%@:%@, expedited sync is required, and current running, attempt %{public}d.", &v23, 0x1Cu);
      }
    }

    else
    {
      if (v7)
      {
        v15 = objc_opt_class();
        v16 = NSStringFromClass(v15);
        v17 = NSStringFromSelector(a2);
        v23 = 138412546;
        v24 = v16;
        v25 = 2112;
        v26 = v17;
        _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_DEFAULT, "%@:%@, initiating first expedited sync attempt, storing start date.", &v23, 0x16u);
      }

      self->_eraseInstallDatabaseInitializationAttemptCount = 0;
      defaultsManager = self->_defaultsManager;
      v19 = [MEMORY[0x277CCABB0] numberWithInteger:0];
      [(RTDefaultsManager *)defaultsManager setObject:v19 forKey:@"RTAuthorizedLocationEraseInstallInitActivityAttemptCount"];

      v20 = self->_defaultsManager;
      v21 = [MEMORY[0x277CBEAA8] now];
      [(RTDefaultsManager *)v20 setObject:v21 forKey:@"RTAuthorizedLocationEraseInstallInitActivityStartDate"];

      v6 = [(RTAuthorizedLocationManager *)self visitLogStore];
      [v6 setEraseInstallRetroRegistrationStatus:1];
    }
  }

  return v5 != 2;
}

- (void)_checkStatusOverrideDefault
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = [(RTDefaultsManager *)self->_defaultsManager objectForKey:@"RTDefaultsAuthorizedLocationStatusOverride"];
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      if ([v5 isEqualToString:@"Confirmed"])
      {
        v6 = [objc_alloc(MEMORY[0x277D01088]) initWithStatus:2];
        overrideAuthorizedLocationStatus = self->_overrideAuthorizedLocationStatus;
        self->_overrideAuthorizedLocationStatus = v6;

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
        {
          v8 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
          {
            v9 = objc_opt_class();
            v10 = NSStringFromClass(v9);
            v11 = NSStringFromSelector(a2);
            v23 = 138412546;
            v24 = v10;
            v25 = 2112;
            v26 = v11;
            v12 = "%@:%@, WARNING, using defaults override of status with RTAuthorizedLocationEnumIsConfirmedAtAuthorizedLocation";
LABEL_20:
            _os_log_debug_impl(&dword_2304B3000, v8, OS_LOG_TYPE_DEBUG, v12, &v23, 0x16u);

            goto LABEL_21;
          }

          goto LABEL_21;
        }
      }

      else if ([v5 isEqualToString:@"NotConfirmed"])
      {
        v14 = [objc_alloc(MEMORY[0x277D01088]) initWithStatus:1];
        v15 = self->_overrideAuthorizedLocationStatus;
        self->_overrideAuthorizedLocationStatus = v14;

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
        {
          v8 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
          {
            v16 = objc_opt_class();
            v10 = NSStringFromClass(v16);
            v11 = NSStringFromSelector(a2);
            v23 = 138412546;
            v24 = v10;
            v25 = 2112;
            v26 = v11;
            v12 = "%@:%@, WARNING, using defaults override of status with RTAuthorizedLocationEnumIsNotConfirmedAtAuthorizedLocation";
            goto LABEL_20;
          }

LABEL_21:
        }
      }

      else
      {
        if (![v5 isEqualToString:@"NotAvailable"])
        {
          if (![v5 isEqualToString:@"IsPresumedAtAuthorizedLocation"])
          {
            goto LABEL_22;
          }

          v20 = [objc_alloc(MEMORY[0x277D01088]) initWithStatus:3];
          v21 = self->_overrideAuthorizedLocationStatus;
          self->_overrideAuthorizedLocationStatus = v20;

          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_22;
          }

          v8 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
          if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_21;
          }

          v22 = objc_opt_class();
          v10 = NSStringFromClass(v22);
          v11 = NSStringFromSelector(a2);
          v23 = 138412546;
          v24 = v10;
          v25 = 2112;
          v26 = v11;
          v12 = "%@:%@, WARNING, using defaults override of status with RTAuthorizedLocationEnumIsPresumedAtAuthorizedLocation";
          goto LABEL_20;
        }

        v17 = [objc_alloc(MEMORY[0x277D01088]) initWithStatus:0];
        v18 = self->_overrideAuthorizedLocationStatus;
        self->_overrideAuthorizedLocationStatus = v17;

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
        {
          v8 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
          {
            v19 = objc_opt_class();
            v10 = NSStringFromClass(v19);
            v11 = NSStringFromSelector(a2);
            v23 = 138412546;
            v24 = v10;
            v25 = 2112;
            v26 = v11;
            v12 = "%@:%@, WARNING, using defaults override of status with RTAuthorizedLocationEnumUnavailable";
            goto LABEL_20;
          }

          goto LABEL_21;
        }
      }

LABEL_22:

      goto LABEL_23;
    }
  }

  v13 = self->_overrideAuthorizedLocationStatus;
  self->_overrideAuthorizedLocationStatus = 0;

LABEL_23:
}

- (void)_setupVisitLogActivity
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = NSStringFromSelector(a2);
    *buf = 138412546;
    v13 = v6;
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_DEFAULT, "%@:%@", buf, 0x16u);
  }

  LOBYTE(v10) = 1;
  v8 = [[RTXPCActivityCriteria alloc] initWithInterval:1 gracePeriod:0 priority:0 requireNetworkConnectivity:0 requireInexpensiveNetworkConnectivity:0 networkTransferUploadSize:1 networkTransferDownloadSize:[(RTAuthorizedLocationManager *)self _getMaintenanceXPCTimeoutInSeconds] allowBattery:900.0 powerNap:900.0 delay:v10 requireBatteryLevel:0];
  xpcActivityManager = self->_xpcActivityManager;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __53__RTAuthorizedLocationManager__setupVisitLogActivity__block_invoke;
  v11[3] = &unk_2788C9518;
  v11[4] = self;
  v11[5] = a2;
  [(RTXPCActivityManager *)xpcActivityManager registerActivityWithIdentifier:@"com.apple.routined.authorizedLocation.maintenance" criteria:v8 handler:v11];
}

void __53__RTAuthorizedLocationManager__setupVisitLogActivity__block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = NSStringFromSelector(*(a1 + 40));
    *buf = 138412802;
    v16 = v6;
    v17 = 2112;
    v18 = v7;
    v19 = 2114;
    v20 = @"com.apple.routined.authorizedLocation.maintenance";
    _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_DEFAULT, "%@:%@, Begin XPC Activity: %{public}@", buf, 0x20u);
  }

  v8 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__RTAuthorizedLocationManager__setupVisitLogActivity__block_invoke_63;
  block[3] = &unk_2788C6300;
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v13 = v3;
  v14 = v10;
  block[4] = v9;
  v11 = v3;
  dispatch_async(v8, block);
}

void __53__RTAuthorizedLocationManager__setupVisitLogActivity__block_invoke_63(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) trustedTimeNow];
  [*(a1 + 32) _updateMostRecentDateAtWhichDeviceDataIsTrusted];
  v3 = *(a1 + 32);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __53__RTAuthorizedLocationManager__setupVisitLogActivity__block_invoke_2;
  v18[3] = &unk_2788C94C8;
  v4 = *(a1 + 48);
  v18[4] = v3;
  v18[5] = v4;
  [v3 _updateVisitLogWithTrustedTime:v2 isRetroRegistrationTime:0 handler:v18];
  [*(a1 + 32) _updateReferenceTimeBoundsFromVisitLog];
  v5 = [*(*(a1 + 32) + 192) queryMetrics];

  if (!v5)
  {
    v6 = objc_alloc_init(RTAuthorizedLocationQueryMetrics);
    [*(*(a1 + 32) + 192) setQueryMetrics:v6];
  }

  v7 = [*(a1 + 32) trustedTimeNow];
  [v7 timeIntervalSinceDate:*(*(a1 + 32) + 280)];
  v9 = v8;
  v10 = [*(*(a1 + 32) + 192) queryMetrics];
  [v10 setTimeSincePreviousXPCSchedule:v9];

  objc_storeStrong((*(a1 + 32) + 280), v2);
  v11 = *(a1 + 32);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __53__RTAuthorizedLocationManager__setupVisitLogActivity__block_invoke_66;
  v17[3] = &unk_2788C94F0;
  v12 = *(a1 + 48);
  v17[4] = v11;
  v17[5] = v12;
  [v11 _runPeriodicConfirmationAlgorithm:2 handler:v17];
  (*(*(a1 + 40) + 16))();
  v13 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    v16 = NSStringFromSelector(*(a1 + 48));
    *buf = 138412802;
    v20 = v15;
    v21 = 2112;
    v22 = v16;
    v23 = 2114;
    v24 = @"com.apple.routined.authorizedLocation.maintenance";
    _os_log_impl(&dword_2304B3000, v13, OS_LOG_TYPE_DEFAULT, "%@:%@, End XPC Activity: %{public}@", buf, 0x20u);
  }
}

void __53__RTAuthorizedLocationManager__setupVisitLogActivity__block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v10 = NSStringFromSelector(*(a1 + 40));
      v14 = 138412802;
      v15 = v9;
      v16 = 2112;
      v17 = v10;
      v18 = 2114;
      v19 = v5;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_DEFAULT, "%@:%@, error registering visits via XPC Activity: %{public}@.", &v14, 0x20u);
    }
  }

  else if (v7)
  {
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = NSStringFromSelector(*(a1 + 40));
    v14 = 138412802;
    v15 = v12;
    v16 = 2112;
    v17 = v13;
    v18 = 1026;
    LODWORD(v19) = a2;
    _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_DEFAULT, "%@:%@, successfully registered %{public}d visits via XPC Activity.", &v14, 0x1Cu);
  }
}

void __53__RTAuthorizedLocationManager__setupVisitLogActivity__block_invoke_66(uint64_t a1, uint64_t a2, int a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = NSStringFromSelector(*(a1 + 40));
    v9 = 138412802;
    v10 = v7;
    v11 = 2112;
    v12 = v8;
    v13 = 1026;
    v14 = a3;
    _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_DEFAULT, "%@:%@,periodic Trigger: status,%{public}d", &v9, 0x1Cu);
  }
}

- (BOOL)_loadEraseInstallInitializationXPCCriteriaFromDefaults
{
  v76 = *MEMORY[0x277D85DE8];
  v4 = [(RTDefaultsManager *)self->_defaultsManager objectForKey:@"RTAuthorizedLocationEraseInstallInitActivityMaxAttemptCount"];

  if (v4)
  {
    v5 = [(RTDefaultsManager *)self->_defaultsManager objectForKey:@"RTAuthorizedLocationEraseInstallInitActivityMaxAttemptCount"];
    v6 = [v5 integerValue];
  }

  else
  {
    v6 = 25;
  }

  v7 = [(RTDefaultsManager *)self->_defaultsManager objectForKey:@"RTAuthorizedLocationEraseInstallInitActivityIntervalSeconds"];

  if (v7)
  {
    v8 = [(RTDefaultsManager *)self->_defaultsManager objectForKey:@"RTAuthorizedLocationEraseInstallInitActivityIntervalSeconds"];
    [v8 floatValue];
    v10 = v9;
  }

  else
  {
    v10 = 3600.0;
  }

  v11 = [(RTDefaultsManager *)self->_defaultsManager objectForKey:@"RTAuthorizedLocationEraseInstallInitActivityGracePeriodSeconds"];

  if (v11)
  {
    v12 = [(RTDefaultsManager *)self->_defaultsManager objectForKey:@"RTAuthorizedLocationEraseInstallInitActivityGracePeriodSeconds"];
    [v12 floatValue];
    v14 = v13;

    v15 = v14;
  }

  else
  {
    v15 = 900.0;
  }

  v16 = [(RTDefaultsManager *)self->_defaultsManager objectForKey:@"RTAuthorizedLocationEraseInstallInitActivityDelaySeconds"];

  if (v16)
  {
    v17 = [(RTDefaultsManager *)self->_defaultsManager objectForKey:@"RTAuthorizedLocationEraseInstallInitActivityDelaySeconds"];
    [v17 floatValue];
    v19 = v18;
  }

  else
  {
    v19 = 7200.0;
  }

  v20 = [(RTDefaultsManager *)self->_defaultsManager objectForKey:@"RTAuthorizedLocationEraseInstallInitActivityPriority"];

  if (v20)
  {
    v21 = [(RTDefaultsManager *)self->_defaultsManager objectForKey:@"RTAuthorizedLocationEraseInstallInitActivityPriority"];
    v22 = [v21 integerValue];

    if (v22 == 1)
    {
      v23 = 1;
    }

    else
    {
      v23 = 2;
    }
  }

  else
  {
    v23 = 2;
  }

  v24 = [(RTDefaultsManager *)self->_defaultsManager objectForKey:@"RTAuthorizedLocationEraseInstallInitActivityInexpensiveConnectivity"];

  if (v24)
  {
    v25 = [(RTDefaultsManager *)self->_defaultsManager objectForKey:@"RTAuthorizedLocationEraseInstallInitActivityInexpensiveConnectivity"];
    v26 = [v25 BOOLValue];
  }

  else
  {
    v26 = 1;
  }

  v27 = [(RTDefaultsManager *)self->_defaultsManager objectForKey:@"RTAuthorizedLocationEraseInstallInitActivityAllowBattery"];

  if (v27)
  {
    v28 = [(RTDefaultsManager *)self->_defaultsManager objectForKey:@"RTAuthorizedLocationEraseInstallInitActivityAllowBattery"];
    v29 = [v28 BOOLValue];
  }

  else
  {
    v29 = 1;
  }

  v30 = [(RTDefaultsManager *)self->_defaultsManager objectForKey:@"RTAuthorizedLocationEraseInstallInitActivityUploadSize"];

  if (v30)
  {
    v31 = [(RTDefaultsManager *)self->_defaultsManager objectForKey:@"RTAuthorizedLocationEraseInstallInitActivityUploadSize"];
    v30 = [v31 integerValue];
  }

  v32 = [(RTDefaultsManager *)self->_defaultsManager objectForKey:@"RTAuthorizedLocationEraseInstallInitActivityDownloadSize"];

  if (v32)
  {
    v33 = [(RTDefaultsManager *)self->_defaultsManager objectForKey:@"RTAuthorizedLocationEraseInstallInitActivityDownloadSize"];
    v32 = [v33 integerValue];
  }

  if (self->_eraseInstallDatabaseInitializationAttemptCount > 1)
  {
    v19 = v10;
  }

  LOBYTE(v63) = 1;
  v34 = [[RTXPCActivityCriteria alloc] initWithInterval:v23 gracePeriod:1 priority:v26 requireNetworkConnectivity:v30 requireInexpensiveNetworkConnectivity:v32 networkTransferUploadSize:v29 networkTransferDownloadSize:v10 allowBattery:v15 powerNap:v19 delay:v63 requireBatteryLevel:0];
  v35 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    v36 = objc_opt_class();
    v37 = NSStringFromClass(v36);
    v38 = NSStringFromSelector(a2);
    v39 = [(RTXPCActivityCriteria *)v34 description];
    *buf = 138413314;
    v65 = v37;
    v66 = 2112;
    v67 = v38;
    v68 = 2114;
    v69 = v39;
    v70 = 1026;
    *v71 = v6;
    *&v71[4] = 2114;
    *&v71[6] = @"com.apple.routined.authorizedLocation.maintenance";
    _os_log_impl(&dword_2304B3000, v35, OS_LOG_TYPE_DEFAULT, "%@:%@, Loaded XPC activity criteria, %{public}@, maxAttemptCount, %{public}d, for activity, %{public}@", buf, 0x30u);
  }

  v40 = 0x28149B000uLL;
  if (!self->_eraseInstallInitializationXpcCriteria || ([(RTXPCActivityCriteria *)v34 interval], v42 = v41, [(RTXPCActivityCriteria *)self->_eraseInstallInitializationXpcCriteria interval], v42 == v43) && ([(RTXPCActivityCriteria *)v34 gracePeriod], v45 = v44, [(RTXPCActivityCriteria *)self->_eraseInstallInitializationXpcCriteria gracePeriod], v45 == v46) && (v47 = [(RTXPCActivityCriteria *)v34 priority], v47 == [(RTXPCActivityCriteria *)self->_eraseInstallInitializationXpcCriteria priority]) && (v48 = [(RTXPCActivityCriteria *)v34 requireInexpensiveNetworkConnectivity], v48 == [(RTXPCActivityCriteria *)self->_eraseInstallInitializationXpcCriteria requireInexpensiveNetworkConnectivity]) && (v49 = [(RTXPCActivityCriteria *)v34 networkTransferUploadSize], v49 == [(RTXPCActivityCriteria *)self->_eraseInstallInitializationXpcCriteria networkTransferUploadSize]) && (v50 = [(RTXPCActivityCriteria *)v34 networkTransferDownloadSize], v50 == [(RTXPCActivityCriteria *)self->_eraseInstallInitializationXpcCriteria networkTransferDownloadSize]) && (v51 = [(RTXPCActivityCriteria *)v34 allowBattery], v51 == [(RTXPCActivityCriteria *)self->_eraseInstallInitializationXpcCriteria allowBattery]))
  {
    v60 = 0;
  }

  else
  {
    v52 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
    {
      v53 = objc_opt_class();
      v54 = NSStringFromClass(v53);
      v55 = NSStringFromSelector(a2);
      v56 = [(RTXPCActivityCriteria *)self->_eraseInstallInitializationXpcCriteria description];
      v57 = v6;
      eraseInstallDatabaseInitializationMaxAttemptCount = self->_eraseInstallDatabaseInitializationMaxAttemptCount;
      v59 = [(RTXPCActivityCriteria *)v34 description];
      *buf = 138413826;
      v65 = v54;
      v66 = 2112;
      v67 = v55;
      v68 = 2114;
      v69 = @"com.apple.routined.authorizedLocation.maintenance";
      v70 = 2114;
      *v71 = v56;
      *&v71[8] = 1026;
      *&v71[10] = eraseInstallDatabaseInitializationMaxAttemptCount;
      v6 = v57;
      v72 = 2114;
      v73 = v59;
      v74 = 1026;
      v75 = v57;
      _os_log_impl(&dword_2304B3000, v52, OS_LOG_TYPE_DEFAULT, "%@:%@, Detected change in XPC activity criteria for activity, %{public}@, replacing old criteria, %{public}@, maxAttemptCount, %{public}d, with new criteria, %{public}@, maxAttemptCount, %{public}d.", buf, 0x40u);

      v40 = 0x28149B000;
    }

    v60 = 1;
  }

  eraseInstallInitializationXpcCriteria = self->_eraseInstallInitializationXpcCriteria;
  self->_eraseInstallInitializationXpcCriteria = v34;

  *(&self->super.super.super.isa + *(v40 + 1240)) = v6;
  return v60;
}

- (void)_setupEraseInstallDatabaseInitializationActivity
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = NSStringFromSelector(a2);
    v8 = [(RTXPCActivityCriteria *)self->_eraseInstallInitializationXpcCriteria description];
    eraseInstallDatabaseInitializationAttemptCount = self->_eraseInstallDatabaseInitializationAttemptCount;
    *buf = 138413314;
    v15 = v6;
    v16 = 2112;
    v17 = v7;
    v18 = 2114;
    v19 = @"com.apple.routined.authorizedLocation.maintenance";
    v20 = 2114;
    v21 = v8;
    v22 = 1026;
    v23 = eraseInstallDatabaseInitializationAttemptCount;
    _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_DEFAULT, "%@:%@, Registering erase-install initialization XPC activity, %{public}@, with criteria,%{public}@,_eraseInstallDatabaseInitializationAttemptCount,%{public}d", buf, 0x30u);
  }

  v10 = objc_alloc_init(RTAuthorizedLocationDatabaseInitializationMetrics);
  [(RTAuthorizedLocationMetrics *)self->_metrics setInitializationMetrics:v10];

  xpcActivityManager = self->_xpcActivityManager;
  eraseInstallInitializationXpcCriteria = self->_eraseInstallInitializationXpcCriteria;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __79__RTAuthorizedLocationManager__setupEraseInstallDatabaseInitializationActivity__block_invoke;
  v13[3] = &unk_2788C9518;
  v13[4] = self;
  v13[5] = a2;
  [(RTXPCActivityManager *)xpcActivityManager registerActivityWithIdentifier:@"com.apple.routined.authorizedLocation.eraseInstallInitialization" criteria:eraseInstallInitializationXpcCriteria handler:v13];
}

void __79__RTAuthorizedLocationManager__setupEraseInstallDatabaseInitializationActivity__block_invoke(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = NSStringFromSelector(*(a1 + 40));
    v8 = *(a1 + 32);
    v9 = *(v8 + 208);
    v10 = *(v8 + 216);
    *buf = 138413314;
    v19 = v6;
    v20 = 2112;
    v21 = v7;
    v22 = 2114;
    v23 = @"com.apple.routined.authorizedLocation.eraseInstallInitialization";
    v24 = 1026;
    v25 = v9;
    v26 = 1026;
    v27 = v10;
    _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_DEFAULT, "%@:%@, Begin XPC Activity: %{public}@,_eraseInstallDatabaseInitializationMaxAttemptCount,%{public}d,_eraseInstallDatabaseInitializationAttemptCount,%{public}d", buf, 0x2Cu);
  }

  v11 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __79__RTAuthorizedLocationManager__setupEraseInstallDatabaseInitializationActivity__block_invoke_98;
  block[3] = &unk_2788C6300;
  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  v16 = v3;
  v17 = v13;
  block[4] = v12;
  v14 = v3;
  dispatch_async(v11, block);
}

void __79__RTAuthorizedLocationManager__setupEraseInstallDatabaseInitializationActivity__block_invoke_98(uint64_t a1)
{
  v51 = *MEMORY[0x277D85DE8];
  ++*(*(a1 + 32) + 216);
  v2 = *(a1 + 32);
  v3 = *(v2 + 112);
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:*(v2 + 216)];
  [v3 setObject:v4 forKey:@"RTAuthorizedLocationEraseInstallInitActivityAttemptCount"];

  if ([*(a1 + 32) _loadEraseInstallInitializationXPCCriteriaFromDefaults])
  {
    v5 = *(a1 + 32);
    v6 = *(v5 + 168);
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __79__RTAuthorizedLocationManager__setupEraseInstallDatabaseInitializationActivity__block_invoke_2;
    v41[3] = &unk_2788C4D10;
    v7 = *(a1 + 48);
    v41[4] = v5;
    v41[5] = v7;
    [v6 unregisterActivityWithIdentifier:@"com.apple.routined.authorizedLocation.eraseInstallInitialization" handler:v41];
    v8 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = NSStringFromSelector(*(a1 + 48));
      *buf = 138412546;
      v43 = v10;
      v44 = 2112;
      v45 = v11;
      _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_DEFAULT, "%@:%@, erase-install initialization XPC activity due to criteria change.", buf, 0x16u);
    }

    [*(a1 + 32) _setupEraseInstallDatabaseInitializationActivity];
  }

  else
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      v15 = NSStringFromSelector(*(a1 + 48));
      v16 = *(a1 + 32);
      v17 = *(v16 + 208);
      v18 = *(v16 + 216);
      *buf = 138413314;
      v43 = v14;
      v44 = 2112;
      v45 = v15;
      v46 = 2114;
      *v47 = @"com.apple.routined.authorizedLocation.eraseInstallInitialization";
      *&v47[8] = 1026;
      v48 = v17;
      v49 = 1026;
      v50 = v18;
      _os_log_impl(&dword_2304B3000, v12, OS_LOG_TYPE_DEFAULT, "%@:%@, Begin XPC Activity: %{public}@,_eraseInstallDatabaseInitializationMaxAttemptCount,%{public}d,_eraseInstallDatabaseInitializationAttemptCount,%{public}d", buf, 0x2Cu);
    }

    v19 = *(a1 + 32);
    if (v19[27] >= v19[26])
    {
      v21 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = [*(*(a1 + 32) + 192) convertToDictionary];
        *buf = 138543362;
        v43 = v22;
        _os_log_impl(&dword_2304B3000, v21, OS_LOG_TYPE_DEFAULT, "Metric, eraseInstallInitialization, %{public}@", buf, 0xCu);
      }

      [*(*(a1 + 32) + 192) submitToCoreAnalytics];
      [*(*(a1 + 32) + 192) setInitializationMetrics:0];
      *(*(a1 + 32) + 35) = 0;
      v23 = *(a1 + 32);
      v24 = *(v23 + 168);
      v38[0] = MEMORY[0x277D85DD0];
      v38[1] = 3221225472;
      v38[2] = __79__RTAuthorizedLocationManager__setupEraseInstallDatabaseInitializationActivity__block_invoke_102;
      v38[3] = &unk_2788C4D10;
      v25 = *(a1 + 48);
      v38[4] = v23;
      v38[5] = v25;
      [v24 unregisterActivityWithIdentifier:@"com.apple.routined.authorizedLocation.eraseInstallInitialization" handler:v38];
      [*(*(a1 + 32) + 144) setEraseInstallRetroRegistrationStatus:2];
      v26 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = objc_opt_class();
        v28 = NSStringFromClass(v27);
        v29 = NSStringFromSelector(*(a1 + 48));
        v30 = *(a1 + 32);
        v31 = *(v30 + 216);
        v32 = *(v30 + 208);
        *buf = 138413058;
        v43 = v28;
        v44 = 2112;
        v45 = v29;
        v46 = 1026;
        *v47 = v31;
        *&v47[4] = 1026;
        *&v47[6] = v32;
        _os_log_impl(&dword_2304B3000, v26, OS_LOG_TYPE_DEFAULT, "%@:%@ attempt count %{public}d exceeded max retry count %{public}d, disabling erase install initialization.", buf, 0x22u);
      }
    }

    else
    {
      v39[0] = MEMORY[0x277D85DD0];
      v39[1] = 3221225472;
      v39[2] = __79__RTAuthorizedLocationManager__setupEraseInstallDatabaseInitializationActivity__block_invoke_99;
      v39[3] = &unk_2788C4E00;
      v39[4] = v19;
      v37 = *(a1 + 40);
      v20 = v37;
      v40 = v37;
      [v19 _runEraseInstallDatabaseInitialization:v39];
    }
  }

  (*(*(a1 + 40) + 16))();
  v33 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    v34 = objc_opt_class();
    v35 = NSStringFromClass(v34);
    v36 = NSStringFromSelector(*(a1 + 48));
    *buf = 138412802;
    v43 = v35;
    v44 = 2112;
    v45 = v36;
    v46 = 2114;
    *v47 = @"com.apple.routined.authorizedLocation.maintenance";
    _os_log_impl(&dword_2304B3000, v33, OS_LOG_TYPE_DEFAULT, "%@:%@, End XPC Activity: %{public}@", buf, 0x20u);
  }
}

void __79__RTAuthorizedLocationManager__setupEraseInstallDatabaseInitializationActivity__block_invoke_2(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = NSStringFromSelector(*(a1 + 40));
    v8 = 138413058;
    v9 = v6;
    v10 = 2112;
    v11 = v7;
    v12 = 2114;
    v13 = @"com.apple.routined.authorizedLocation.maintenance";
    v14 = 2114;
    v15 = v3;
    _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_DEFAULT, "%@:%@, unregistered erase-install initialization XPC activity due to criteria change: %{public}@, error, %{public}@", &v8, 0x2Au);
  }
}

uint64_t __79__RTAuthorizedLocationManager__setupEraseInstallDatabaseInitializationActivity__block_invoke_99(uint64_t a1, int a2, uint64_t a3)
{
  v34 = *MEMORY[0x277D85DE8];
  v6 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = NSStringFromSelector(*(a1 + 48));
    *buf = 138412802;
    v29 = v8;
    v30 = 2112;
    v31 = v9;
    v32 = 1026;
    LODWORD(v33) = a2;
    _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_DEFAULT, "%@:%@, _runEraseInstallDatabaseInitialization completed status: %{public}d", buf, 0x1Cu);
  }

  if (a3)
  {
    return (*(*(a1 + 40) + 16))();
  }

  v10 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if ((a2 & 1) == 0)
  {
    if (v11)
    {
      v24 = objc_opt_class();
      v25 = NSStringFromClass(v24);
      v26 = NSStringFromSelector(*(a1 + 48));
      *buf = 138412546;
      v29 = v25;
      v30 = 2112;
      v31 = v26;
      _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_DEFAULT, "%@:%@ eraseInstallDb no error not success", buf, 0x16u);
    }

    return (*(*(a1 + 40) + 16))();
  }

  if (v11)
  {
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v14 = NSStringFromSelector(*(a1 + 48));
    *buf = 138412546;
    v29 = v13;
    v30 = 2112;
    v31 = v14;
    _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_DEFAULT, "%@:%@ completed successfully, disabling erase install initialization.", buf, 0x16u);
  }

  v15 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    v18 = NSStringFromSelector(*(a1 + 48));
    v19 = [*(*(a1 + 32) + 192) convertToDictionary];
    *buf = 138412802;
    v29 = v17;
    v30 = 2112;
    v31 = v18;
    v32 = 2114;
    v33 = v19;
    _os_log_impl(&dword_2304B3000, v15, OS_LOG_TYPE_DEFAULT, "%@:%@ Metric, eraseInstallInitialization, %{public}@", buf, 0x20u);
  }

  [*(*(a1 + 32) + 192) submitToCoreAnalytics];
  [*(*(a1 + 32) + 192) setInitializationMetrics:0];
  *(*(a1 + 32) + 35) = 0;
  v20 = *(a1 + 32);
  v21 = *(v20 + 168);
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __79__RTAuthorizedLocationManager__setupEraseInstallDatabaseInitializationActivity__block_invoke_100;
  v27[3] = &unk_2788C4D10;
  v22 = *(a1 + 48);
  v27[4] = v20;
  v27[5] = v22;
  [v21 unregisterActivityWithIdentifier:@"com.apple.routined.authorizedLocation.eraseInstallInitialization" handler:v27];
  return [*(*(a1 + 32) + 144) setEraseInstallRetroRegistrationStatus:2];
}

void __79__RTAuthorizedLocationManager__setupEraseInstallDatabaseInitializationActivity__block_invoke_100(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = NSStringFromSelector(*(a1 + 40));
    v8 = 138413058;
    v9 = v6;
    v10 = 2112;
    v11 = v7;
    v12 = 2114;
    v13 = @"com.apple.routined.authorizedLocation.maintenance";
    v14 = 2114;
    v15 = v3;
    _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_DEFAULT, "%@:%@, unregistered erase-install initialization XPC activity due to successful completion or max-retry limit: %{public}@, error, %{public}@", &v8, 0x2Au);
  }
}

void __79__RTAuthorizedLocationManager__setupEraseInstallDatabaseInitializationActivity__block_invoke_102(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = NSStringFromSelector(*(a1 + 40));
    v8 = 138413058;
    v9 = v6;
    v10 = 2112;
    v11 = v7;
    v12 = 2114;
    v13 = @"com.apple.routined.authorizedLocation.maintenance";
    v14 = 2114;
    v15 = v3;
    _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_DEFAULT, "%@:%@, unregistered erase-install initialization XPC activity due to successful completion or max-retry limit: %{public}@, error, %{public}@", &v8, 0x2Au);
  }
}

- (void)_registerForDeviceUnlockNotification
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = NSStringFromSelector(a2);
    v10 = 138412546;
    v11 = v6;
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_DEFAULT, "%@:%@ invoked.", &v10, 0x16u);
  }

  v8 = [(RTAuthorizedLocationManager *)self dataProtectionManager];
  v9 = +[(RTNotification *)RTDataProtectionManagerNotificationUnlockedSinceBoot];
  [v8 addObserver:self selector:sel_onDataProtectionNotification_ name:v9];
}

- (void)onDataProtectionNotification:(id)a3
{
  v5 = a3;
  v6 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__RTAuthorizedLocationManager_onDataProtectionNotification___block_invoke;
  block[3] = &unk_2788C5020;
  v9 = v5;
  v10 = self;
  v11 = a2;
  v7 = v5;
  dispatch_async(v6, block);
}

void __60__RTAuthorizedLocationManager_onDataProtectionNotification___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) name];
  v3 = +[(RTNotification *)RTDataProtectionManagerNotificationUnlockedSinceBoot];
  v4 = [v2 isEqualToString:v3];

  if (v4)
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = NSStringFromSelector(*(a1 + 48));
      v17 = 138412546;
      v18 = v7;
      v19 = 2112;
      v20 = v8;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_DEFAULT, "%@:%@ invoked with notification RTDataProtectionManagerNotificationUnlockedSinceBoot", &v17, 0x16u);
    }

    v9 = *(a1 + 40);
    v10 = *(v9 + 176);
    v11 = +[(RTNotification *)RTDataProtectionManagerNotificationUnlockedSinceBoot];
    [v10 removeObserver:v9 fromNotification:v11];

    *(*(a1 + 40) + 33) = 1;
    v12 = [*(a1 + 40) visitLogStore];
    v13 = [v12 getEraseInstallRetroRegistrationStatus];

    v14 = [*(a1 + 40) zdrLocationManager];

    if (v14)
    {
      v15 = [*(a1 + 40) zdrLocationManager];
      [v15 onFirstUnlock:v13 != 2];
    }

    [*(a1 + 40) _readConfirmationStatusFromDisk];
    *(*(a1 + 40) + 35) = [*(a1 + 40) _isExpeditedSyncAndLearnRequired];
    v16 = *(a1 + 40);
    if (v16[35] == 1)
    {
      [v16 _setupEraseInstallDatabaseInitializationActivity];
    }
  }
}

- (BOOL)_oneTimeRetroactivelyRegisterAllStoredVisits
{
  v102 = *MEMORY[0x277D85DE8];
  isUnlockedSinceBoot = self->_isUnlockedSinceBoot;
  oslog = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
  v3 = os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT);
  if (!isUnlockedSinceBoot)
  {
    if (v3)
    {
      v57 = objc_opt_class();
      v58 = NSStringFromClass(v57);
      v59 = NSStringFromSelector(a2);
      *buf = 138412546;
      *&buf[4] = v58;
      *&buf[12] = 2112;
      *&buf[14] = v59;
      _os_log_impl(&dword_2304B3000, oslog, OS_LOG_TYPE_DEFAULT, "%@:%@, device not unlocked since last boot, unable to execute retro-registration.", buf, 0x16u);
    }

    goto LABEL_35;
  }

  if (v3)
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = NSStringFromSelector(a2);
    *buf = 138412546;
    *&buf[4] = v5;
    *&buf[12] = 2112;
    *&buf[14] = v6;
    _os_log_impl(&dword_2304B3000, oslog, OS_LOG_TYPE_DEFAULT, "%@:%@ invoked.", buf, 0x16u);
  }

  oslog = [(RTAuthorizedLocationManager *)self trustedTimeNow];
  v7 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (!oslog)
  {
    if (v8)
    {
      v67 = objc_opt_class();
      v68 = NSStringFromClass(v67);
      v69 = NSStringFromSelector(a2);
      *buf = 138412546;
      *&buf[4] = v68;
      *&buf[12] = 2112;
      *&buf[14] = v69;
      _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_DEFAULT, "%@:%@, failed to fetch trustedTimeNow, not retroactively registering visit logs.", buf, 0x16u);
    }

    oslog = 0;
LABEL_35:
    v63 = 0;
    goto LABEL_36;
  }

  if (v8)
  {
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = NSStringFromSelector(a2);
    *buf = 138412546;
    *&buf[4] = v10;
    *&buf[12] = 2112;
    *&buf[14] = v11;
    _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_DEFAULT, "%@:%@, WARNING, attempting to retroactively register all stored visits. This will be run one time after software upgrade.", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v97 = __Block_byref_object_copy__53;
  v98 = __Block_byref_object_dispose__53;
  v99 = 0;
  v12 = dispatch_semaphore_create(0);
  v13 = [(RTAuthorizedLocationManager *)self visitLogStore];
  v14 = [MEMORY[0x277CBEAA8] distantFuture];
  v85[0] = MEMORY[0x277D85DD0];
  v85[1] = 3221225472;
  v85[2] = __75__RTAuthorizedLocationManager__oneTimeRetroactivelyRegisterAllStoredVisits__block_invoke;
  v85[3] = &unk_2788C4618;
  v87 = buf;
  v15 = v12;
  v86 = v15;
  [v13 purgeVisitLogsPredating:v14 handler:v85];

  v16 = (*&buf[8] + 40);
  v17 = *(*&buf[8] + 40);
  dsema = v15;
  v18 = [MEMORY[0x277CBEAA8] now];
  v19 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(dsema, v19))
  {
    v20 = [MEMORY[0x277CBEAA8] now];
    [v20 timeIntervalSinceDate:v18];
    v22 = v21;
    v23 = objc_opt_new();
    v24 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_40];
    v25 = [MEMORY[0x277CCACC8] callStackSymbols];
    v26 = [v25 filteredArrayUsingPredicate:v24];
    v27 = [v26 firstObject];

    [v23 submitToCoreAnalytics:v27 type:1 duration:v22];
    v28 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
    {
      *v88 = 0;
      _os_log_fault_impl(&dword_2304B3000, v28, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v88, 2u);
    }

    v29 = MEMORY[0x277CCA9B8];
    v92 = *MEMORY[0x277CCA450];
    *v88 = @"semaphore wait timeout";
    v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v88 forKeys:&v92 count:1];
    v31 = [v29 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v30];

    if (v31)
    {
      v32 = v31;

      v17 = v31;
    }
  }

  objc_storeStrong(v16, v17);
  [(RTAuthorizedLocationManager *)self _updateMostRecentDateAtWhichDeviceDataIsTrusted];
  [oslog timeIntervalSinceDate:self->_mostRecentDateAtWhichDeviceDataIsTrusted];
  v92 = 0;
  v93 = &v92;
  v94 = 0x2020000000;
  v95 = 0;
  v78 = (v33 / 86400.0);
  if (v78 < 0)
  {
    goto LABEL_27;
  }

  v34 = v33 + (v33 / 86400.0) * 86400.0;
  v72 = *MEMORY[0x277D01448];
  v73 = *MEMORY[0x277CCA450];
  do
  {
    *v88 = 0;
    *&v88[8] = v88;
    *&v88[16] = 0x3032000000;
    v89 = __Block_byref_object_copy__53;
    v90 = __Block_byref_object_dispose__53;
    v91 = 0;
    v35 = dispatch_semaphore_create(0);
    v36 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeInterval:oslog sinceDate:-(v34 + v78 * 86400.0 + 3600.0)];
    v79[0] = MEMORY[0x277D85DD0];
    v79[1] = 3221225472;
    v79[2] = __75__RTAuthorizedLocationManager__oneTimeRetroactivelyRegisterAllStoredVisits__block_invoke_2;
    v79[3] = &unk_2788C9540;
    v82 = v88;
    v79[4] = self;
    v83 = &v92;
    v84 = a2;
    v37 = v36;
    v80 = v37;
    v38 = v35;
    v81 = v38;
    [(RTAuthorizedLocationManager *)self _updateVisitLogWithTrustedTime:v37 isRetroRegistrationTime:1 handler:v79];
    v39 = (*&v88[8] + 40);
    obj = *(*&v88[8] + 40);
    v40 = v38;
    v41 = [MEMORY[0x277CBEAA8] now];
    v42 = dispatch_time(0, 3600000000000);
    if (dispatch_semaphore_wait(v40, v42))
    {
      v43 = [MEMORY[0x277CBEAA8] now];
      [v43 timeIntervalSinceDate:v41];
      v45 = v44;
      v46 = objc_opt_new();
      v47 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_40];
      v48 = [MEMORY[0x277CCACC8] callStackSymbols];
      v49 = [v48 filteredArrayUsingPredicate:v47];
      v50 = [v49 firstObject];

      [v46 submitToCoreAnalytics:v50 type:1 duration:v45];
      v51 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v51, OS_LOG_TYPE_FAULT))
      {
        *v101 = 0;
        _os_log_fault_impl(&dword_2304B3000, v51, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v101, 2u);
      }

      v52 = MEMORY[0x277CCA9B8];
      v100 = v73;
      *v101 = @"semaphore wait timeout";
      v53 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v101 forKeys:&v100 count:1];
      v54 = [v52 errorWithDomain:v72 code:15 userInfo:v53];

      if (v54)
      {
        v55 = v54;

        obj = v54;
      }
    }

    objc_storeStrong(v39, obj);
    _Block_object_dispose(v88, 8);
  }

  while (v78-- > 0);
  if (!v93[3])
  {
LABEL_27:
    v62 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
    if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
    {
      v64 = objc_opt_class();
      v65 = NSStringFromClass(v64);
      v66 = NSStringFromSelector(a2);
      *v88 = 138412546;
      *&v88[4] = v65;
      *&v88[12] = 2112;
      *&v88[14] = v66;
      _os_log_impl(&dword_2304B3000, v62, OS_LOG_TYPE_DEFAULT, "%@:%@, failed to register any visits, will try again, not disabling visit retro-registration for next launch.", v88, 0x16u);
    }

    v63 = 0;
  }

  else
  {
    v60 = [(RTAuthorizedLocationMetrics *)self->_metrics initializationMetrics];

    if (!v60)
    {
      v63 = 1;
      goto LABEL_31;
    }

    v61 = v93[3];
    v62 = [(RTAuthorizedLocationMetrics *)self->_metrics initializationMetrics];
    [v62 setNumberOfVisitsRegisteredDuringEraseInstallInitialization:v61];
    v63 = 1;
  }

LABEL_31:
  _Block_object_dispose(&v92, 8);

  _Block_object_dispose(buf, 8);
LABEL_36:

  return v63;
}

void __75__RTAuthorizedLocationManager__oneTimeRetroactivelyRegisterAllStoredVisits__block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void __75__RTAuthorizedLocationManager__oneTimeRetroactivelyRegisterAllStoredVisits__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
  *(*(*(a1 + 64) + 8) + 24) += a2;
  if (*(*(*(a1 + 56) + 8) + 40))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v10 = NSStringFromSelector(*(a1 + 72));
      v11 = *(*(*(a1 + 56) + 8) + 40);
      v18 = 138412802;
      v19 = v9;
      v20 = 2112;
      v21 = v10;
      v22 = 2114;
      v23 = v11;
      v12 = "%@:%@, error retroactively registering visits %{public}@.";
LABEL_9:
      _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_DEFAULT, v12, &v18, 0x20u);
    }
  }

  else
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
    v13 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (a2)
    {
      if (v13)
      {
        v14 = objc_opt_class();
        v9 = NSStringFromClass(v14);
        v10 = NSStringFromSelector(*(a1 + 72));
        v15 = *(a1 + 40);
        v18 = 138412802;
        v19 = v9;
        v20 = 2112;
        v21 = v10;
        v22 = 2114;
        v23 = v15;
        v12 = "%@:%@, successfully registered visits with registrationDate: %{public}@";
        goto LABEL_9;
      }
    }

    else if (v13)
    {
      v16 = objc_opt_class();
      v9 = NSStringFromClass(v16);
      v10 = NSStringFromSelector(*(a1 + 72));
      v17 = *(a1 + 40);
      v18 = 138412802;
      v19 = v9;
      v20 = 2112;
      v21 = v10;
      v22 = 2114;
      v23 = v17;
      v12 = "%@:%@, no visits to register for registrationDate: %{public}@";
      goto LABEL_9;
    }
  }

  dispatch_semaphore_signal(*(a1 + 48));
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

- (void)_updateReferenceTimeBoundsFromVisitLog
{
  v55 = *MEMORY[0x277D85DE8];
  v34 = [MEMORY[0x277CBEAA8] distantPast];
  v3 = objc_alloc(MEMORY[0x277CBEAA8]);
  v4 = [MEMORY[0x277CBEAA8] distantFuture];
  v5 = [v3 initWithTimeInterval:v4 sinceDate:-120.0];

  v31 = v5;
  v32 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v34 endDate:v5];
  v33 = [[RTAuthorizedLocationVisitLogFetchOptions alloc] initWithAscending:0 dateInterval:v32 limit:&unk_28459DB48];
  v6 = dispatch_semaphore_create(0);
  v47 = 0;
  v48 = &v47;
  v49 = 0x3032000000;
  v50 = __Block_byref_object_copy__53;
  v51 = __Block_byref_object_dispose__53;
  v52 = 0;
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = __Block_byref_object_copy__53;
  v45 = __Block_byref_object_dispose__53;
  v46 = 0;
  v7 = [(RTAuthorizedLocationManager *)self visitLogStore];
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __69__RTAuthorizedLocationManager__updateReferenceTimeBoundsFromVisitLog__block_invoke;
  v36[3] = &unk_2788C8930;
  v38 = &v47;
  v39 = &v41;
  v36[4] = self;
  v40 = a2;
  v8 = v6;
  v37 = v8;
  [v7 fetchVisitLogsWithOptions:v33 handler:v36];

  v10 = (v48 + 5);
  v9 = v48[5];
  v11 = v8;
  v12 = [MEMORY[0x277CBEAA8] now];
  v13 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v11, v13))
  {
    v14 = [MEMORY[0x277CBEAA8] now];
    [v14 timeIntervalSinceDate:v12];
    v16 = v15;
    v17 = objc_opt_new();
    v18 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_40];
    v19 = [MEMORY[0x277CCACC8] callStackSymbols];
    v20 = [v19 filteredArrayUsingPredicate:v18];
    v21 = [v20 firstObject];

    [v17 submitToCoreAnalytics:v21 type:1 duration:v16];
    v22 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2304B3000, v22, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
    }

    v23 = MEMORY[0x277CCA9B8];
    v53 = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v53 count:1];
    v25 = [v23 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v24];

    if (v25)
    {
      v26 = v25;

      v9 = v25;
    }
  }

  objc_storeStrong(v10, v9);
  v27 = v42[5];
  if (v27)
  {
    v28 = v27;
    v29 = objc_alloc(MEMORY[0x277CBEAA8]);
    v30 = [v29 initWithTimeInterval:v42[5] sinceDate:259200.0];
    [(RTTrustedTimeCache *)self->_trustedTimeCache setBoundsForReferenceTimeWithMinimumDate:v28 maximumDate:v30];
  }

  _Block_object_dispose(&v41, 8);
  _Block_object_dispose(&v47, 8);
}

void __69__RTAuthorizedLocationManager__updateReferenceTimeBoundsFromVisitLog__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a3);
  if (!v6 && [v5 count] == 1)
  {
    v7 = [v5 firstObject];
    v8 = [v7 registrationDate];
    v9 = *(*(a1 + 56) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v11 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v12 = objc_opt_class();
        v13 = NSStringFromClass(v12);
        v14 = NSStringFromSelector(*(a1 + 64));
        v15 = *(*(*(a1 + 56) + 8) + 40);
        v16 = 138412802;
        v17 = v13;
        v18 = 2112;
        v19 = v14;
        v20 = 2114;
        v21 = v15;
        _os_log_debug_impl(&dword_2304B3000, v11, OS_LOG_TYPE_DEBUG, "%@:%@, setting bound from date %{public}@", &v16, 0x20u);
      }
    }
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

+ (unint64_t)_locationAvailabilityFromCLLocation:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (!v3)
  {
    goto LABEL_8;
  }

  v5 = [v3 integrity];
  v6 = [v4 type];
  if (v6 == 1)
  {
    v7 = 1;
    goto LABEL_10;
  }

  if (v6 == 11 || v6 == 4)
  {
    if (v5 >= *MEMORY[0x277CE4280])
    {
      v7 = 6;
    }

    else
    {
      v7 = 2;
    }
  }

  else
  {
LABEL_8:
    v7 = 0;
  }

LABEL_10:

  return v7;
}

- (unint64_t)_computeLocationTechnologyAvailabilityForDateInterval:(id)a3
{
  v80 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    [v4 duration];
    if (v6 >= 7200.0)
    {
      aSelector = a2;
      v54 = v5;
      v57 = [v5 startDate];
      v10 = 0;
      oslog = 0;
      v50 = *MEMORY[0x277D01448];
      v51 = *MEMORY[0x277CCA450];
      do
      {
        v11 = oslog;
        oslog = v57;

        v12 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeInterval:oslog sinceDate:1800.0];
        v13 = [v54 endDate];
        v57 = [v12 earlierDate:v13];

        v14 = objc_alloc(MEMORY[0x277D01320]);
        v15 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:oslog endDate:v57];
        v56 = [v14 initWithDateInterval:v15 horizontalAccuracy:0 batchSize:0 boundingBoxLocation:100.0];

        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        v75 = __Block_byref_object_copy__53;
        v76 = __Block_byref_object_dispose__53;
        v77 = 0;
        v67 = 0;
        v68 = &v67;
        v69 = 0x3032000000;
        v70 = __Block_byref_object_copy__53;
        v71 = __Block_byref_object_dispose__53;
        v72 = 0;
        v16 = dispatch_semaphore_create(0);
        v17 = [(RTAuthorizedLocationManager *)self locationManager];
        v63[0] = MEMORY[0x277D85DD0];
        v63[1] = 3221225472;
        v63[2] = __85__RTAuthorizedLocationManager__computeLocationTechnologyAvailabilityForDateInterval___block_invoke;
        v63[3] = &unk_2788C4490;
        v65 = buf;
        v66 = &v67;
        v18 = v16;
        v64 = v18;
        [v17 fetchStoredLocationsWithOptions:v56 handler:v63];

        v19 = (*&buf[8] + 40);
        obj = *(*&buf[8] + 40);
        v20 = v18;
        v21 = [MEMORY[0x277CBEAA8] now];
        v22 = dispatch_time(0, 3600000000000);
        if (dispatch_semaphore_wait(v20, v22))
        {
          v53 = [MEMORY[0x277CBEAA8] now];
          [v53 timeIntervalSinceDate:v21];
          v24 = v23;
          v25 = objc_opt_new();
          v26 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_40];
          v27 = [MEMORY[0x277CCACC8] callStackSymbols];
          v28 = [v27 filteredArrayUsingPredicate:v26];
          v29 = [v28 firstObject];

          [v25 submitToCoreAnalytics:v29 type:1 duration:v24];
          v30 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
          if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
          {
            *v79 = 0;
            _os_log_fault_impl(&dword_2304B3000, v30, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v79, 2u);
          }

          v31 = MEMORY[0x277CCA9B8];
          v78 = v51;
          *v79 = @"semaphore wait timeout";
          v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v79 forKeys:&v78 count:1];
          v33 = [v31 errorWithDomain:v50 code:15 userInfo:v32];

          if (v33)
          {
            v34 = v33;

            obj = v33;
          }
        }

        objc_storeStrong(v19, obj);
        if (v68[5])
        {
          v61 = 0u;
          v62 = 0u;
          v59 = 0u;
          v60 = 0u;
          v35 = v68[5];
          v36 = [v35 countByEnumeratingWithState:&v59 objects:v73 count:16];
          if (v36)
          {
            v37 = *v60;
            do
            {
              for (i = 0; i != v36; ++i)
              {
                if (*v60 != v37)
                {
                  objc_enumerationMutation(v35);
                }

                v10 |= [RTAuthorizedLocationManager _locationAvailabilityFromCLLocation:*(*(&v59 + 1) + 8 * i)];
              }

              v36 = [v35 countByEnumeratingWithState:&v59 objects:v73 count:16];
            }

            while (v36);
          }
        }

        _Block_object_dispose(&v67, 8);
        _Block_object_dispose(buf, 8);

        v39 = [v54 endDate];
        v40 = [v57 isBeforeDate:v39];
      }

      while ((v40 & 1) != 0);
      v41 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        v42 = objc_opt_class();
        v43 = NSStringFromClass(v42);
        v44 = NSStringFromSelector(aSelector);
        *buf = 138413058;
        *&buf[4] = v43;
        *&buf[12] = 2112;
        *&buf[14] = v44;
        *&buf[22] = 2114;
        v75 = v54;
        LOWORD(v76) = 1026;
        *(&v76 + 2) = v10;
        _os_log_impl(&dword_2304B3000, v41, OS_LOG_TYPE_DEFAULT, "%@:%@, dateInterval %{public}@, locationTechnologyAvailability, %{public}08x.", buf, 0x26u);
      }

      goto LABEL_30;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v54 = v5;
      oslog = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
      {
        v7 = objc_opt_class();
        v8 = NSStringFromClass(v7);
        v9 = NSStringFromSelector(a2);
        *buf = 138413058;
        *&buf[4] = v8;
        *&buf[12] = 2112;
        *&buf[14] = v9;
        *&buf[22] = 2114;
        v75 = v54;
        LOWORD(v76) = 1026;
        *(&v76 + 2) = 0;
        _os_log_debug_impl(&dword_2304B3000, oslog, OS_LOG_TYPE_DEBUG, "%@:%@, skipping short dateInterval %{public}@, locationTechnologyAvailability, %{public}08x.", buf, 0x26u);
      }

LABEL_9:
      v10 = 0;
LABEL_30:

      v5 = v54;
      goto LABEL_31;
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v54 = 0;
    oslog = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      v46 = objc_opt_class();
      v47 = NSStringFromClass(v46);
      v48 = NSStringFromSelector(a2);
      *buf = 138412802;
      *&buf[4] = v47;
      *&buf[12] = 2112;
      *&buf[14] = v48;
      *&buf[22] = 1026;
      LODWORD(v75) = 0;
      _os_log_debug_impl(&dword_2304B3000, oslog, OS_LOG_TYPE_DEBUG, "%@:%@, skipping nil dateInterval, locationTechnologyAvailability, %{public}08x.", buf, 0x1Cu);
    }

    goto LABEL_9;
  }

  v10 = 0;
LABEL_31:

  return v10;
}

void __85__RTAuthorizedLocationManager__computeLocationTechnologyAvailabilityForDateInterval___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v6 = a3;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

- (unint64_t)_computeLocationTechnologyExpectationFromHistoricalAvailability:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 count] >= 0xA)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v6 = v4;
    v5 = [v6 countByEnumeratingWithState:&v19 objects:v29 count:16];
    if (v5)
    {
      v7 = 0;
      v8 = *v20;
      v9 = 0.0;
      v10 = 0.0;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v20 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v12 = [*(*(&v19 + 1) + 8 * i) unsignedIntegerValue];
          if (v12)
          {
            ++v7;
            if (v12)
            {
              v13 = 1.0;
            }

            else
            {
              v13 = 0.0;
            }

            v10 = v10 + v13;
            if ((v12 & 4) != 0)
            {
              v14 = 1.0;
            }

            else
            {
              v14 = 0.0;
            }

            v9 = v9 + v14;
          }
        }

        v5 = [v6 countByEnumeratingWithState:&v19 objects:v29 count:16];
      }

      while (v5);

      if (!v7)
      {
        goto LABEL_2;
      }

      v5 = (v10 / v7 > 0.8) | (4 * (v9 / v7 > 0.8)) | 2;
      v6 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v15 = objc_opt_class();
        v16 = NSStringFromClass(v15);
        v17 = NSStringFromSelector(a2);
        *buf = 138412802;
        v24 = v16;
        v25 = 2112;
        v26 = v17;
        v27 = 1026;
        v28 = (v10 / v7 > 0.8) | (4 * (v9 / v7 > 0.8)) | 2;
        _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_DEFAULT, "%@:%@, technology expectation bitset %{public}08x.", buf, 0x1Cu);
      }
    }

    goto LABEL_22;
  }

LABEL_2:
  v5 = 0;
LABEL_22:

  return v5;
}

- (void)_updateVisitLogWithTrustedTime:(id)a3 isRetroRegistrationTime:(BOOL)a4 handler:(id)a5
{
  v6 = a4;
  v215 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v148 = a5;
  if (!v148)
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[RTAuthorizedLocationManager _updateVisitLogWithTrustedTime:isRetroRegistrationTime:handler:]";
      *&buf[12] = 1024;
      *&buf[14] = 1062;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

  v149 = v7;
  if (v7)
  {
    v9 = [MEMORY[0x277CBEB18] array];
    v146 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeInterval:v7 sinceDate:-2592000.0];
    v147 = v7;
    v144 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v146 endDate:v147];
    v143 = [[RTAuthorizedLocationVisitLogFetchOptions alloc] initWithAscending:1 dateInterval:v144 limit:0];
    v10 = dispatch_semaphore_create(0);
    v196 = 0;
    v197 = &v196;
    v198 = 0x3032000000;
    v199 = __Block_byref_object_copy__53;
    v200 = __Block_byref_object_dispose__53;
    v201 = 0;
    v11 = [(RTAuthorizedLocationManager *)self visitLogStore];
    v192[0] = MEMORY[0x277D85DD0];
    v192[1] = 3221225472;
    v192[2] = __94__RTAuthorizedLocationManager__updateVisitLogWithTrustedTime_isRetroRegistrationTime_handler___block_invoke;
    v192[3] = &unk_2788C9568;
    v195 = &v196;
    v161 = v9;
    v193 = v161;
    v12 = v10;
    v194 = v12;
    [v11 fetchVisitLogsWithOptions:v143 handler:v192];

    v13 = (v197 + 5);
    v14 = v197[5];
    dsema = v12;
    v15 = [MEMORY[0x277CBEAA8] now];
    v16 = dispatch_time(0, 3600000000000);
    if (dispatch_semaphore_wait(dsema, v16))
    {
      v17 = [MEMORY[0x277CBEAA8] now];
      [v17 timeIntervalSinceDate:v15];
      v19 = v18;
      v20 = objc_opt_new();
      v21 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_40];
      v22 = [MEMORY[0x277CCACC8] callStackSymbols];
      v23 = [v22 filteredArrayUsingPredicate:v21];
      v24 = [v23 firstObject];

      [v20 submitToCoreAnalytics:v24 type:1 duration:v19];
      v25 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_2304B3000, v25, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
      }

      v26 = MEMORY[0x277CCA9B8];
      v207 = *MEMORY[0x277CCA450];
      *buf = @"semaphore wait timeout";
      v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v207 count:1];
      v28 = [v26 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v27];

      if (v28)
      {
        v29 = v28;

        v14 = v28;
      }
    }

    objc_storeStrong(v13, v14);
    if (v197[5])
    {
      v30 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v134 = objc_opt_class();
        v135 = NSStringFromClass(v134);
        v136 = NSStringFromSelector(a2);
        v137 = v197[5];
        *buf = 138412802;
        *&buf[4] = v135;
        *&buf[12] = 2112;
        *&buf[14] = v136;
        *&buf[22] = 2114;
        v205 = v137;
        _os_log_error_impl(&dword_2304B3000, v30, OS_LOG_TYPE_ERROR, "%@:%@, failed to fetch visit logs: %{public}@.", buf, 0x20u);
      }

      v148[2](v148, 0, v197[5]);
    }

    else
    {
      v35 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        v36 = objc_opt_class();
        v37 = NSStringFromClass(v36);
        v38 = NSStringFromSelector(a2);
        v39 = [v161 count];
        *buf = 138413058;
        *&buf[4] = v37;
        *&buf[12] = 2112;
        *&buf[14] = v38;
        *&buf[22] = 2050;
        v205 = v39;
        *v206 = 2114;
        *&v206[2] = v144;
        _os_log_impl(&dword_2304B3000, v35, OS_LOG_TYPE_DEFAULT, "%@:%@, fetched %{public}ld visit logs for interval: %{public}@.", buf, 0x2Au);
      }

      v207 = 0;
      v208 = &v207;
      v209 = 0x3032000000;
      v210 = __Block_byref_object_copy__53;
      v211 = __Block_byref_object_dispose__53;
      v212 = 0;
      v186 = 0;
      v187 = &v186;
      v188 = 0x3032000000;
      v189 = __Block_byref_object_copy__53;
      v190 = __Block_byref_object_dispose__53;
      v191 = 0;
      v40 = dispatch_semaphore_create(0);
      v41 = [(RTAuthorizedLocationManager *)self learnedLocationManager];
      v182[0] = MEMORY[0x277D85DD0];
      v182[1] = 3221225472;
      v182[2] = __94__RTAuthorizedLocationManager__updateVisitLogWithTrustedTime_isRetroRegistrationTime_handler___block_invoke_112;
      v182[3] = &unk_2788C4490;
      v184 = &v207;
      v185 = &v186;
      v42 = v40;
      v183 = v42;
      [v41 fetchLocationsOfInterestVisitedBetweenStartDate:v146 endDate:v147 handler:v182];

      v43 = (v208 + 5);
      v44 = v208[5];
      v142 = v42;
      v45 = [MEMORY[0x277CBEAA8] now];
      v46 = dispatch_time(0, 3600000000000);
      if (dispatch_semaphore_wait(v142, v46))
      {
        v47 = [MEMORY[0x277CBEAA8] now];
        [v47 timeIntervalSinceDate:v45];
        v49 = v48;
        v50 = objc_opt_new();
        v51 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_40];
        v52 = [MEMORY[0x277CCACC8] callStackSymbols];
        v53 = [v52 filteredArrayUsingPredicate:v51];
        v54 = [v53 firstObject];

        [v50 submitToCoreAnalytics:v54 type:1 duration:v49];
        v55 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
        if (os_log_type_enabled(v55, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_2304B3000, v55, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
        }

        v56 = MEMORY[0x277CCA9B8];
        *v214 = *MEMORY[0x277CCA450];
        *buf = @"semaphore wait timeout";
        v57 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v214 count:1];
        v58 = [v56 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v57];

        if (v58)
        {
          v59 = v58;

          v44 = v58;
        }
      }

      objc_storeStrong(v43, v44);
      if (v208[5])
      {
        v60 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
        if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
        {
          v138 = objc_opt_class();
          v139 = NSStringFromClass(v138);
          v140 = NSStringFromSelector(a2);
          v141 = v208[5];
          *buf = 138412802;
          *&buf[4] = v139;
          *&buf[12] = 2112;
          *&buf[14] = v140;
          *&buf[22] = 2114;
          v205 = v141;
          _os_log_error_impl(&dword_2304B3000, v60, OS_LOG_TYPE_ERROR, "%@:%@, failed to fetch historical locations of interest: %{public}@.", buf, 0x20u);
        }

        v148[2](v148, 0, v208[5]);
      }

      else
      {
        v61 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
        if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
        {
          v62 = objc_opt_class();
          v63 = NSStringFromClass(v62);
          v64 = NSStringFromSelector(a2);
          v65 = [v187[5] count];
          *buf = 138413314;
          *&buf[4] = v63;
          *&buf[12] = 2112;
          *&buf[14] = v64;
          *&buf[22] = 2050;
          v205 = v65;
          *v206 = 2114;
          *&v206[2] = v146;
          *&v206[10] = 2114;
          *&v206[12] = v147;
          _os_log_impl(&dword_2304B3000, v61, OS_LOG_TYPE_DEFAULT, "%@:%@, fetched %{public}ld historical locations of interest between %{public}@ and %{public}@.", buf, 0x34u);
        }

        v66 = [(RTTrustedTimeCache *)self->_trustedTimeCache getApproximateTrustedDateNow];
        v67 = v66 != 0;

        v156 = [RTAuthorizedLocationVisitLog encodeTimeSourceWithValue:v147 isTrusted:v67 isRetroRegistration:v6];
        v180 = 0u;
        v181 = 0u;
        v178 = 0u;
        v179 = 0u;
        obj = v187[5];
        v151 = [obj countByEnumeratingWithState:&v178 objects:v203 count:16];
        if (v151)
        {
          v160 = 0;
          v150 = *v179;
          v154 = *MEMORY[0x277D01448];
          v155 = *MEMORY[0x277CCA450];
          do
          {
            for (i = 0; i != v151; ++i)
            {
              if (*v179 != v150)
              {
                objc_enumerationMutation(obj);
              }

              v68 = *(*(&v178 + 1) + 8 * i);
              v174 = 0u;
              v175 = 0u;
              v176 = 0u;
              v177 = 0u;
              v69 = [v68 visits];
              v70 = [v69 countByEnumeratingWithState:&v174 objects:v202 count:16];
              if (v70)
              {
                v162 = *v175;
                v157 = v69;
                do
                {
                  v163 = v70;
                  for (j = 0; j != v163; ++j)
                  {
                    if (*v175 != v162)
                    {
                      objc_enumerationMutation(v157);
                    }

                    v72 = *(*(&v174 + 1) + 8 * j);
                    v73 = [v72 identifier];
                    v74 = [v161 containsObject:v73];

                    if (v74)
                    {
                      v75 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
                      if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
                      {
                        v76 = objc_opt_class();
                        v77 = NSStringFromClass(v76);
                        v78 = NSStringFromSelector(a2);
                        v79 = [v72 identifier];
                        *buf = 138412802;
                        *&buf[4] = v77;
                        *&buf[12] = 2112;
                        *&buf[14] = v78;
                        *&buf[22] = 2114;
                        v205 = v79;
                        _os_log_impl(&dword_2304B3000, v75, OS_LOG_TYPE_DEFAULT, "%@:%@, visit already registered: %{public}@", buf, 0x20u);
                      }
                    }

                    else
                    {
                      v80 = [v72 entryDate];
                      if (v80)
                      {
                        v81 = [v72 exitDate];
                        v82 = v81 == 0;

                        if (v82)
                        {
                          v80 = 0;
                        }

                        else
                        {
                          v83 = objc_alloc(MEMORY[0x277CCA970]);
                          v84 = [v72 entryDate];
                          v85 = [v72 exitDate];
                          v86 = [v83 initWithStartDate:v84 endDate:v85];

                          v80 = [(RTAuthorizedLocationManager *)self _computeLocationTechnologyAvailabilityForDateInterval:v86];
                        }
                      }

                      v87 = [RTAuthorizedLocationVisitLog alloc];
                      v88 = [v72 identifier];
                      v89 = [(RTAuthorizedLocationVisitLog *)v87 initWithVisitIdentifier:v88 registrationDate:v156 locationTechnologyAvailability:v80];

                      v90 = dispatch_semaphore_create(0);
                      *buf = 0;
                      *&buf[8] = buf;
                      *&buf[16] = 0x3032000000;
                      v205 = __Block_byref_object_copy__53;
                      *v206 = __Block_byref_object_dispose__53;
                      *&v206[8] = 0;
                      v91 = [(RTAuthorizedLocationManager *)self visitLogStore];
                      v169[0] = MEMORY[0x277D85DD0];
                      v169[1] = 3221225472;
                      v169[2] = __94__RTAuthorizedLocationManager__updateVisitLogWithTrustedTime_isRetroRegistrationTime_handler___block_invoke_114;
                      v169[3] = &unk_2788C7F38;
                      v169[4] = self;
                      v172 = buf;
                      v173 = a2;
                      v75 = v89;
                      v170 = v75;
                      v92 = v90;
                      v171 = v92;
                      [v91 storeVisitLog:v75 handler:v169];

                      v93 = (*&buf[8] + 40);
                      v164 = *(*&buf[8] + 40);
                      v94 = v92;
                      v95 = [MEMORY[0x277CBEAA8] now];
                      v96 = dispatch_time(0, 3600000000000);
                      if (dispatch_semaphore_wait(v94, v96))
                      {
                        v159 = [MEMORY[0x277CBEAA8] now];
                        [v159 timeIntervalSinceDate:v95];
                        v98 = v97;
                        v99 = objc_opt_new();
                        v100 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_40];
                        v101 = [MEMORY[0x277CCACC8] callStackSymbols];
                        v102 = [v101 filteredArrayUsingPredicate:v100];
                        v103 = [v102 firstObject];

                        [v99 submitToCoreAnalytics:v103 type:1 duration:v98];
                        v104 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
                        if (os_log_type_enabled(v104, OS_LOG_TYPE_FAULT))
                        {
                          *v214 = 0;
                          _os_log_fault_impl(&dword_2304B3000, v104, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v214, 2u);
                        }

                        v105 = MEMORY[0x277CCA9B8];
                        v213 = v155;
                        *v214 = @"semaphore wait timeout";
                        v106 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v214 forKeys:&v213 count:1];
                        v107 = [v105 errorWithDomain:v154 code:15 userInfo:v106];

                        if (v107)
                        {
                          v108 = v107;

                          v164 = v107;
                        }
                      }

                      objc_storeStrong(v93, v164);
                      _Block_object_dispose(buf, 8);

                      ++v160;
                    }
                  }

                  v69 = v157;
                  v70 = [v157 countByEnumeratingWithState:&v174 objects:v202 count:16];
                }

                while (v70);
              }
            }

            v151 = [obj countByEnumeratingWithState:&v178 objects:v203 count:16];
          }

          while (v151);
        }

        else
        {
          v160 = 0;
        }

        v109 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
        if (os_log_type_enabled(v109, OS_LOG_TYPE_DEFAULT))
        {
          v110 = objc_opt_class();
          v111 = NSStringFromClass(v110);
          v112 = NSStringFromSelector(a2);
          *buf = 138412802;
          *&buf[4] = v111;
          *&buf[12] = 2112;
          *&buf[14] = v112;
          *&buf[22] = 2114;
          v205 = v146;
          _os_log_impl(&dword_2304B3000, v109, OS_LOG_TYPE_DEFAULT, "%@:%@, purging visit logs predating: %{public}@", buf, 0x20u);
        }

        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        v205 = __Block_byref_object_copy__53;
        *v206 = __Block_byref_object_dispose__53;
        *&v206[8] = 0;
        v113 = dispatch_semaphore_create(0);
        v114 = [(RTAuthorizedLocationManager *)self visitLogStore];
        v166[0] = MEMORY[0x277D85DD0];
        v166[1] = 3221225472;
        v166[2] = __94__RTAuthorizedLocationManager__updateVisitLogWithTrustedTime_isRetroRegistrationTime_handler___block_invoke_115;
        v166[3] = &unk_2788C4618;
        v168 = buf;
        v115 = v113;
        v167 = v115;
        [v114 purgeVisitLogsPredating:v146 handler:v166];

        v116 = (*&buf[8] + 40);
        v117 = *(*&buf[8] + 40);
        v118 = v115;
        v119 = [MEMORY[0x277CBEAA8] now];
        v120 = dispatch_time(0, 3600000000000);
        if (dispatch_semaphore_wait(v118, v120))
        {
          v121 = [MEMORY[0x277CBEAA8] now];
          [v121 timeIntervalSinceDate:v119];
          v123 = v122;
          v124 = objc_opt_new();
          v125 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_40];
          v126 = [MEMORY[0x277CCACC8] callStackSymbols];
          v127 = [v126 filteredArrayUsingPredicate:v125];
          v128 = [v127 firstObject];

          [v124 submitToCoreAnalytics:v128 type:1 duration:v123];
          v129 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
          if (os_log_type_enabled(v129, OS_LOG_TYPE_FAULT))
          {
            *v214 = 0;
            _os_log_fault_impl(&dword_2304B3000, v129, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v214, 2u);
          }

          v130 = MEMORY[0x277CCA9B8];
          v213 = *MEMORY[0x277CCA450];
          *v214 = @"semaphore wait timeout";
          v131 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v214 forKeys:&v213 count:1];
          v132 = [v130 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v131];

          if (v132)
          {
            v133 = v132;

            v117 = v132;
          }
        }

        objc_storeStrong(v116, v117);
        v148[2](v148, v160, *(*&buf[8] + 40));

        _Block_object_dispose(buf, 8);
      }

      _Block_object_dispose(&v186, 8);
      _Block_object_dispose(&v207, 8);
    }

    _Block_object_dispose(&v196, 8);
  }

  else
  {
    v31 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = objc_opt_class();
      v33 = NSStringFromClass(v32);
      v34 = NSStringFromSelector(a2);
      *buf = 138412546;
      *&buf[4] = v33;
      *&buf[12] = 2112;
      *&buf[14] = v34;
      _os_log_impl(&dword_2304B3000, v31, OS_LOG_TYPE_DEFAULT, "%@:%@, nil trusted time, not updating visit logs.", buf, 0x16u);
    }

    v148[2](v148, 0, 0);
  }
}

void __94__RTAuthorizedLocationManager__updateVisitLogWithTrustedTime_isRetroRegistrationTime_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a3);
  if (!v6)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      do
      {
        v11 = 0;
        do
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(a1 + 32);
          v13 = [*(*(&v14 + 1) + 8 * v11) visitIdentifier];
          [v12 addObject:v13];

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v9);
    }
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

void __94__RTAuthorizedLocationManager__updateVisitLogWithTrustedTime_isRetroRegistrationTime_handler___block_invoke_112(uint64_t a1, void *a2, void *a3)
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

void __94__RTAuthorizedLocationManager__updateVisitLogWithTrustedTime_isRetroRegistrationTime_handler___block_invoke_114(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a2;
  objc_storeStrong((*(*(a1 + 56) + 8) + 40), a2);
  if (!v4)
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = NSStringFromSelector(*(a1 + 64));
      v9 = *(a1 + 40);
      v10 = 138412802;
      v11 = v7;
      v12 = 2112;
      v13 = v8;
      v14 = 2114;
      v15 = v9;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_DEFAULT, "%@:%@, registered visit: %{public}@", &v10, 0x20u);
    }
  }

  dispatch_semaphore_signal(*(a1 + 48));
}

void __94__RTAuthorizedLocationManager__updateVisitLogWithTrustedTime_isRetroRegistrationTime_handler___block_invoke_115(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)_curateAuthorizedLocationsWithHandler:(id)a3
{
  v402 = *MEMORY[0x277D85DE8];
  v298 = a3;
  if (!v298)
  {
    v4 = self;
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[RTAuthorizedLocationManager _curateAuthorizedLocationsWithHandler:]";
      *&buf[12] = 1024;
      *&buf[14] = 1177;
      _os_log_error_impl(&dword_2304B3000, v5, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }

    self = v4;
  }

  v324 = self;
  v6 = [(RTAuthorizedLocationManager *)self trustedTimeNow];
  v316 = v6;
  if (v6)
  {
    [v6 timeIntervalSinceDate:self->_dateOfLastAuthorizedLocationsCuration];
    v8 = v7;
    if (v7 > 86400.0)
    {
      v9 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = objc_opt_class();
        v11 = NSStringFromClass(v10);
        v12 = NSStringFromSelector(a2);
        *buf = 138413058;
        *&buf[4] = v11;
        *&buf[12] = 2112;
        *&buf[14] = v12;
        *&buf[22] = 2050;
        *v398 = v8;
        *&v398[8] = 2050;
        *&v398[10] = 0x40F5180000000000;
        _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_DEFAULT, "%@:%@: time since last authorized location curation %{public}.0f seconds, greater than threshold %{public}.0f seconds. Clearing authorized location list.", buf, 0x2Au);
      }

      v13 = [MEMORY[0x277CBEA60] array];
      authorizedLocationArr = v324->_authorizedLocationArr;
      v324->_authorizedLocationArr = v13;

LABEL_18:
      v23 = objc_alloc_init(RTAuthorizedLocationCurationMetrics);
      [(RTAuthorizedLocationMetrics *)v324->_metrics setCurationMetrics:v23];

      [(RTAuthorizedLocationManager *)v324 _updateReferenceTimeBoundsFromVisitLog];
      v297 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeInterval:v316 sinceDate:-2592000.0];
      v296 = v324->_mostRecentDateAtWhichDeviceDataIsTrusted;
      v24 = [v297 isOnOrAfter:?];
      v25 = v24;
      if (v297)
      {
        v26 = v296 == 0;
      }

      else
      {
        v26 = 1;
      }

      v27 = v26;
      if ((v27 | v24))
      {
        v28 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          v236 = objc_opt_class();
          v237 = NSStringFromClass(v236);
          v238 = NSStringFromSelector(a2);
          *buf = 138413314;
          *&buf[4] = v237;
          *&buf[12] = 2112;
          *&buf[14] = v238;
          *&buf[22] = 1026;
          *v398 = v25;
          *&v398[4] = 2114;
          *&v398[6] = v297;
          *&v398[14] = 2114;
          *&v398[16] = v296;
          _os_log_error_impl(&dword_2304B3000, v28, OS_LOG_TYPE_ERROR, "%@:%@: isStartOlderThanEndDate,%{public}d,Either Start,%{public}@ or end,%{public}@ date is not valid", buf, 0x30u);
        }

        v298[2](v298, 0);
        v22 = 0;
        goto LABEL_182;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        v29 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
        {
          v285 = objc_opt_class();
          v286 = NSStringFromClass(v285);
          v287 = NSStringFromSelector(a2);
          *buf = 138413058;
          *&buf[4] = v286;
          *&buf[12] = 2112;
          *&buf[14] = v287;
          *&buf[22] = 2114;
          *v398 = v297;
          *&v398[8] = 2114;
          *&v398[10] = v296;
          _os_log_debug_impl(&dword_2304B3000, v29, OS_LOG_TYPE_DEBUG, "%@:%@: curation date interval start,%{public}@,end,%{public}@", buf, 0x2Au);
        }
      }

      v30 = objc_alloc(MEMORY[0x277CCA970]);
      v377 = 0;
      v303 = [v30 rt_initWithStartDate:v297 endDate:v296 error:&v377];
      v290 = v377;

      if (v290)
      {
        v31 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          v239 = objc_opt_class();
          v240 = NSStringFromClass(v239);
          v241 = NSStringFromSelector(a2);
          *buf = 138412802;
          *&buf[4] = v240;
          *&buf[12] = 2112;
          *&buf[14] = v241;
          *&buf[22] = 2114;
          *v398 = v290;
          _os_log_error_impl(&dword_2304B3000, v31, OS_LOG_TYPE_ERROR, "%@:%@: curation date interval error,%{public}@", buf, 0x20u);
        }
      }

      v371 = 0;
      v372 = &v371;
      v373 = 0x3032000000;
      v374 = __Block_byref_object_copy__53;
      v375 = __Block_byref_object_dispose__53;
      v376 = 0;
      v365 = 0;
      v366 = &v365;
      v367 = 0x3032000000;
      v368 = __Block_byref_object_copy__53;
      v369 = __Block_byref_object_dispose__53;
      v370 = 0;
      v32 = dispatch_semaphore_create(0);
      v33 = [(RTAuthorizedLocationManager *)v324 learnedLocationManager];
      v361[0] = MEMORY[0x277D85DD0];
      v361[1] = 3221225472;
      v361[2] = __69__RTAuthorizedLocationManager__curateAuthorizedLocationsWithHandler___block_invoke;
      v361[3] = &unk_2788C4490;
      v363 = &v371;
      v364 = &v365;
      v34 = v32;
      v362 = v34;
      [v33 fetchLocationsOfInterestVisitedBetweenStartDate:v297 endDate:v296 handler:v361];

      v35 = (v372 + 5);
      v36 = v372[5];
      dsema = v34;
      v37 = [MEMORY[0x277CBEAA8] now];
      v38 = dispatch_time(0, 3600000000000);
      if (dispatch_semaphore_wait(dsema, v38))
      {
        v39 = [MEMORY[0x277CBEAA8] now];
        [v39 timeIntervalSinceDate:v37];
        v41 = v40;
        v42 = objc_opt_new();
        v43 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_40];
        v44 = [MEMORY[0x277CCACC8] callStackSymbols];
        v45 = [v44 filteredArrayUsingPredicate:v43];
        v46 = [v45 firstObject];

        [v42 submitToCoreAnalytics:v46 type:1 duration:v41];
        v47 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
        if (os_log_type_enabled(v47, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_2304B3000, v47, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
        }

        v48 = MEMORY[0x277CCA9B8];
        v391 = *MEMORY[0x277CCA450];
        *buf = @"semaphore wait timeout";
        v49 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v391 count:1];
        v50 = [v48 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v49];

        if (v50)
        {
          v51 = v50;

          v36 = v50;
        }
      }

      objc_storeStrong(v35, v36);
      if (v372[5])
      {
        v52 = v366[5];
        v366[5] = 0;

        v22 = v372[5];
        v53 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
        if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
        {
          v242 = objc_opt_class();
          v243 = NSStringFromClass(v242);
          v244 = NSStringFromSelector(a2);
          v245 = v372[5];
          *buf = 138412802;
          *&buf[4] = v243;
          *&buf[12] = 2112;
          *&buf[14] = v244;
          *&buf[22] = 2114;
          *v398 = v245;
          _os_log_error_impl(&dword_2304B3000, v53, OS_LOG_TYPE_ERROR, "%@:%@, failed to fetch historical locations of interest: %{public}@.", buf, 0x20u);
        }

        (v298)[2](v298, v22);
LABEL_181:

        _Block_object_dispose(&v365, 8);
        _Block_object_dispose(&v371, 8);

LABEL_182:
        goto LABEL_183;
      }

      v54 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
      if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
      {
        v55 = objc_opt_class();
        v56 = NSStringFromClass(v55);
        v57 = NSStringFromSelector(a2);
        v58 = [v366[5] count];
        *buf = 138413570;
        *&buf[4] = v56;
        *&buf[12] = 2112;
        *&buf[14] = v57;
        *&buf[22] = 2050;
        *v398 = v58;
        *&v398[8] = 2114;
        *&v398[10] = v297;
        *&v398[18] = 2114;
        *&v398[20] = v296;
        *&v398[28] = 2050;
        v399 = v8;
        _os_log_impl(&dword_2304B3000, v54, OS_LOG_TYPE_DEFAULT, "%@:%@, fetched %{public}ld historical locations of interest between %{public}@ and %{public}@,timeSinceLastCurate,%{public}.0f", buf, 0x3Eu);
      }

      v59 = [MEMORY[0x277CBEB38] dictionary];
      v60 = [MEMORY[0x277CBEB18] array];
      v288 = [[RTAuthorizedLocationVisitLogFetchOptions alloc] initWithAscending:1 dateInterval:v303 limit:0];
      v61 = dispatch_semaphore_create(0);
      v391 = 0;
      v392 = &v391;
      v393 = 0x3032000000;
      v394 = __Block_byref_object_copy__53;
      v395 = __Block_byref_object_dispose__53;
      v396 = 0;
      v62 = [(RTAuthorizedLocationManager *)v324 visitLogStore];
      v356[0] = MEMORY[0x277D85DD0];
      v356[1] = 3221225472;
      v356[2] = __69__RTAuthorizedLocationManager__curateAuthorizedLocationsWithHandler___block_invoke_119;
      v356[3] = &unk_2788C4640;
      v360 = &v391;
      v323 = v59;
      v357 = v323;
      v63 = v60;
      v358 = v63;
      v64 = v61;
      v359 = v64;
      [v62 fetchVisitLogsWithOptions:v288 handler:v356];

      v65 = (v392 + 5);
      v66 = v392[5];
      v289 = v64;
      v67 = [MEMORY[0x277CBEAA8] now];
      v68 = dispatch_time(0, 3600000000000);
      if (dispatch_semaphore_wait(v289, v68))
      {
        v69 = [MEMORY[0x277CBEAA8] now];
        [v69 timeIntervalSinceDate:v67];
        v71 = v70;
        v72 = objc_opt_new();
        v73 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_40];
        v74 = [MEMORY[0x277CCACC8] callStackSymbols];
        v75 = [v74 filteredArrayUsingPredicate:v73];
        v76 = [v75 firstObject];

        [v72 submitToCoreAnalytics:v76 type:1 duration:v71];
        v77 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
        if (os_log_type_enabled(v77, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_2304B3000, v77, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
        }

        v78 = MEMORY[0x277CCA9B8];
        v379 = *MEMORY[0x277CCA450];
        *buf = @"semaphore wait timeout";
        v79 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v379 count:1];
        v80 = [v78 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v79];

        if (v80)
        {
          v81 = v80;

          v66 = v80;
        }
      }

      objc_storeStrong(v65, v66);
      v354 = 0u;
      v355 = 0u;
      v352 = 0u;
      v353 = 0u;
      obj = v63;
      v82 = [obj countByEnumeratingWithState:&v352 objects:v390 count:16];
      if (v82)
      {
        v305 = 0;
        v306 = 0;
        v83 = 0;
        v84 = 0;
        v307 = 0;
        v85 = *v353;
        do
        {
          for (i = 0; i != v82; ++i)
          {
            if (*v353 != v85)
            {
              objc_enumerationMutation(obj);
            }

            v87 = *(*(&v352 + 1) + 8 * i);
            v88 = [(RTAuthorizedLocationMetrics *)v324->_metrics curationMetrics];
            v89 = [v88 ageDaysRegistry];

            if (v89 < 0)
            {
              [v316 timeIntervalSinceDate:v87];
              v91 = v90;
              v92 = [(RTAuthorizedLocationMetrics *)v324->_metrics curationMetrics];
              LODWORD(v93) = llround(v91 / 86400.0);
              [v92 setAgeDaysRegistry:v93];
            }

            buf[0] = 0;
            LOBYTE(v379) = 0;
            if ([RTAuthorizedLocationVisitLog decodeTimeSourceWithValue:v87 isRetroRegistration:&v379 isTrusted:buf])
            {
              if (buf[0] == 1)
              {
                v94 = v305;
                if (!v305 || (v94 = v305, [v305 isOnOrAfter:v87]))
                {
                  v95 = v87;

                  v305 = v95;
                }

                ++v84;
                v96 = v306;
                if (!v306 || (v96 = v306, [v306 isOnOrBefore:v87]))
                {
                  v97 = v87;

                  v306 = v97;
                }
              }

              ++v307;
              v83 += v379;
            }
          }

          v82 = [obj countByEnumeratingWithState:&v352 objects:v390 count:16];
        }

        while (v82);

        if (v307 < 1)
        {
          goto LABEL_74;
        }

        v98 = [(RTAuthorizedLocationMetrics *)v324->_metrics curationMetrics];
        *&v99 = v84 / v307;
        [v98 setRegistrationUsesBestTimeFraction:v99];
      }

      else
      {
        v307 = 0;
        v84 = 0;
        v83 = 0;
        v305 = 0;
        v306 = 0;
        v98 = obj;
      }

LABEL_74:
      v100 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
      if (os_log_type_enabled(v100, OS_LOG_TYPE_DEFAULT))
      {
        v101 = objc_opt_class();
        v102 = NSStringFromClass(v101);
        v103 = NSStringFromSelector(a2);
        v104 = [v323 count];
        v105 = [(RTAuthorizedLocationVisitLogFetchOptions *)v288 dateInterval];
        *buf = 138413826;
        *&buf[4] = v102;
        *&buf[12] = 2112;
        *&buf[14] = v103;
        *&buf[22] = 2050;
        *v398 = v104;
        *&v398[8] = 2114;
        *&v398[10] = v105;
        *&v398[18] = 1026;
        *&v398[20] = v84;
        *&v398[24] = 1026;
        *&v398[26] = v307;
        LOWORD(v399) = 1026;
        *(&v399 + 2) = v83;
        _os_log_impl(&dword_2304B3000, v100, OS_LOG_TYPE_DEFAULT, "%@:%@, found %{public}zu UUIDs in visit log store for interval %{public}@ with %{public}d/%{public}d (%{public}d) sources", buf, 0x3Cu);
      }

      if ([v323 count])
      {
        v106 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
        if (os_log_type_enabled(v106, OS_LOG_TYPE_DEFAULT))
        {
          v107 = objc_opt_class();
          v108 = NSStringFromClass(v107);
          v109 = NSStringFromSelector(a2);
          v110 = [v366[5] count];
          *buf = 138412802;
          *&buf[4] = v108;
          *&buf[12] = 2112;
          *&buf[14] = v109;
          *&buf[22] = 2050;
          *v398 = v110;
          _os_log_impl(&dword_2304B3000, v106, OS_LOG_TYPE_DEFAULT, "%@:%@, starting visit curation, processing %{public}lu LOIs", buf, 0x20u);
        }

        v295 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v350 = 0u;
        v351 = 0u;
        v348 = 0u;
        v349 = 0u;
        v291 = v366[5];
        v111 = [v291 countByEnumeratingWithState:&v348 objects:v389 count:16];
        if (v111)
        {
          v318 = 0;
          v112 = 0;
          v293 = *v349;
          v294 = v111;
          do
          {
            for (j = 0; j != v294; ++j)
            {
              v300 = v112;
              if (*v349 != v293)
              {
                objc_enumerationMutation(v291);
              }

              v301 = *(*(&v348 + 1) + 8 * j);
              v113 = [v301 visits];
              v114 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"entryDate" ascending:1];
              v388 = v114;
              v115 = [MEMORY[0x277CBEA60] arrayWithObjects:&v388 count:1];
              v116 = [v113 sortedArrayUsingDescriptors:v115];

              v117 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
              if (os_log_type_enabled(v117, OS_LOG_TYPE_DEFAULT))
              {
                v118 = objc_opt_class();
                v119 = NSStringFromClass(v118);
                v120 = NSStringFromSelector(a2);
                v121 = [v116 count];
                *buf = 138413059;
                *&buf[4] = v119;
                *&buf[12] = 2112;
                *&buf[14] = v120;
                *&buf[22] = 2050;
                *v398 = v121;
                *&v398[8] = 2117;
                *&v398[10] = v301;
                _os_log_impl(&dword_2304B3000, v117, OS_LOG_TYPE_DEFAULT, "%@:%@, processing %{public}lu visits for LOI %{sensitive}@.", buf, 0x2Au);
              }

              v122 = [MEMORY[0x277CBEAA8] distantPast];
              v312 = [MEMORY[0x277CBEB18] array];
              v123 = [v116 count];
              v346 = 0u;
              v347 = 0u;
              v344 = 0u;
              v345 = 0u;
              v310 = v116;
              v124 = [v310 countByEnumeratingWithState:&v344 objects:v387 count:16];
              v125 = v122;
              v299 = v123;
              if (v124)
              {
                v317 = v124;
                v126 = 0;
                v127 = 0;
                v128 = 0;
                v314 = *v345;
                v129 = 0.0;
                v319 = -1;
                v321 = 0;
                v325 = -1;
                v327 = 0;
                do
                {
                  for (k = 0; k != v317; ++k)
                  {
                    if (*v345 != v314)
                    {
                      objc_enumerationMutation(v310);
                    }

                    v130 = *(*(&v344 + 1) + 8 * k);
                    v131 = [v130 entryDate];
                    [v316 timeIntervalSinceDate:v131];
                    v133 = v132;

                    v134 = [v130 exitDate];
                    v135 = [v130 entryDate];
                    [v134 timeIntervalSinceDate:v135];
                    v137 = v136;

                    v138 = llround(v133 / 86400.0);
                    v139 = v325;
                    if (v325 < 0)
                    {
                      v139 = v138;
                    }

                    v325 = v139;
                    v140 = [(RTAuthorizedLocationMetrics *)v324->_metrics curationMetrics];
                    v141 = v138 > [v140 ageDaysFirstAnyLoiVisit];

                    if (v141)
                    {
                      v142 = [(RTAuthorizedLocationMetrics *)v324->_metrics curationMetrics];
                      [v142 setAgeDaysFirstAnyLoiVisit:v138];
                    }

                    v143 = [v130 identifier];
                    v144 = [v323 objectForKey:v143];

                    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                    {
                      v145 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
                      if (os_log_type_enabled(v145, OS_LOG_TYPE_INFO))
                      {
                        v146 = objc_opt_class();
                        v147 = NSStringFromClass(v146);
                        v148 = NSStringFromSelector(a2);
                        *buf = 138413314;
                        *&buf[4] = v147;
                        *&buf[12] = 2112;
                        *&buf[14] = v148;
                        *&buf[22] = 1026;
                        *v398 = v144 != 0;
                        *&v398[4] = 2050;
                        *&v398[6] = v137;
                        *&v398[14] = 2114;
                        *&v398[16] = v130;
                        _os_log_impl(&dword_2304B3000, v145, OS_LOG_TYPE_INFO, "%@:%@, processing visit, isRegistered, %{public}d, dwell, %{public}.1f: %{public}@", buf, 0x30u);
                      }
                    }

                    if (v144)
                    {
                      v149 = [v130 entryDate];
                      v150 = [v149 startOfDay];

                      [v150 timeIntervalSinceDate:v125];
                      if (v151 > 86340.0)
                      {
                        v152 = v150;
                        v153 = v125;
                        v125 = v152;

                        ++v321;
                      }

                      v154 = [v130 exitDate];
                      v327 = [v154 startOfDay];

                      [v327 timeIntervalSinceDate:v125];
                      v156 = v155;
                      if (v155 > 86340.0)
                      {
                        v157 = v327;

                        v321 = (ceil(v156 / 86400.0) + v321);
                        v125 = v157;
                      }

                      v158 = v319;
                      if (v319 < 0)
                      {
                        v158 = v138;
                      }

                      v319 = v158;
                      v159 = [v130 identifier];
                      v160 = [v323 objectForKey:v159];

                      v161 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v160, "locationTechnologyAvailability")}];
                      [v312 addObject:v161];

                      if ([v160 locationTechnologyAvailability])
                      {
                        ++v128;
                      }

                      v162 = [v160 locationTechnologyAvailability];
                      v163 = [v160 locationTechnologyAvailability];

                      v129 = v129 + v137;
                      ++v318;
                      v127 += v162 & 1;
                      v126 += (v163 >> 2) & 1;
                    }
                  }

                  v317 = [v310 countByEnumeratingWithState:&v344 objects:v387 count:16];
                }

                while (v317);
              }

              else
              {
                v126 = 0;
                v127 = 0;
                v128 = 0;
                v129 = 0.0;
                v319 = -1;
                v321 = 0;
                v325 = -1;
                v327 = 0;
              }

              v164 = [[RTAuthorizedLocation alloc] initWithLoi:v301 dwellTime:v321 numberOfDaysVisited:v325 ageDaysFirstVisit:v319 ageDaysFirstRegisteredVisit:[(RTAuthorizedLocationManager *)v324 _computeLocationTechnologyExpectationFromHistoricalAvailability:v312] locationTechnologyAvailability:v128 visitsWithTechnologyAnnotation:v129 visitsWithGPS:v127 visitsWithWiFiHI:v126];
              [v295 addObject:v164];

              v112 = v300 + v299;
            }

            v294 = [v291 countByEnumeratingWithState:&v348 objects:v389 count:16];
          }

          while (v294);
        }

        else
        {
          v318 = 0;
          v112 = 0;
        }

        v169 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
        if (os_log_type_enabled(v169, OS_LOG_TYPE_DEFAULT))
        {
          v170 = objc_opt_class();
          v171 = NSStringFromClass(v170);
          v172 = NSStringFromSelector(a2);
          *buf = 138413058;
          *&buf[4] = v171;
          *&buf[12] = 2112;
          *&buf[14] = v172;
          *&buf[22] = 1026;
          *v398 = v318;
          *&v398[4] = 1026;
          *&v398[6] = v112;
          _os_log_impl(&dword_2304B3000, v169, OS_LOG_TYPE_DEFAULT, "%@:%@ %{public}d/%{public}d visits registered", buf, 0x22u);
        }

        if (v112 >= 1)
        {
          v173 = [(RTAuthorizedLocationMetrics *)v324->_metrics curationMetrics];
          *&v174 = v318 / v112;
          [v173 setVisitRegistrationFraction:v174];
        }

        v175 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"dwellTime_s" ascending:0];
        v386 = v175;
        v176 = [MEMORY[0x277CBEA60] arrayWithObjects:&v386 count:1];
        [v295 sortUsingDescriptors:v176];

        v315 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v342 = 0u;
        v343 = 0u;
        v340 = 0u;
        v341 = 0u;
        v320 = v295;
        v326 = [v320 countByEnumeratingWithState:&v340 objects:v385 count:16];
        if (v326)
        {
          v309 = 0;
          v322 = *v341;
          v311 = *MEMORY[0x277D01448];
          v313 = *MEMORY[0x277CCA450];
          do
          {
            for (m = 0; m != v326; ++m)
            {
              if (*v341 != v322)
              {
                objc_enumerationMutation(v320);
              }

              v177 = *(*(&v340 + 1) + 8 * m);
              [v177 dwellTime_s];
              if (v178 <= 86400.0 || [v177 numberOfDaysVisited] < 4 || objc_msgSend(v315, "count") > 3)
              {
                v179 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
                if (os_log_type_enabled(v179, OS_LOG_TYPE_DEFAULT))
                {
                  v183 = objc_opt_class();
                  v184 = NSStringFromClass(v183);
                  v185 = NSStringFromSelector(a2);
                  *buf = 138412803;
                  *&buf[4] = v184;
                  *&buf[12] = 2112;
                  *&buf[14] = v185;
                  *&buf[22] = 2117;
                  *v398 = v177;
                  _os_log_impl(&dword_2304B3000, v179, OS_LOG_TYPE_DEFAULT, "%@:%@, skipping ALOI, %{sensitive}@.", buf, 0x20u);
                }
              }

              else
              {
                ++v309;
                [v177 setRank:?];
                [v315 addObject:v177];
                v179 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
                if (os_log_type_enabled(v179, OS_LOG_TYPE_DEFAULT))
                {
                  v180 = objc_opt_class();
                  v181 = NSStringFromClass(v180);
                  v182 = NSStringFromSelector(a2);
                  *buf = 138412803;
                  *&buf[4] = v181;
                  *&buf[12] = 2112;
                  *&buf[14] = v182;
                  *&buf[22] = 2117;
                  *v398 = v177;
                  _os_log_impl(&dword_2304B3000, v179, OS_LOG_TYPE_DEFAULT, "%@:%@, appending ALOI, %{sensitive}@.", buf, 0x20u);
                }
              }

              if ([v177 rank] == 1)
              {
                v186 = [(RTAuthorizedLocationMetrics *)v324->_metrics curationMetrics];

                if (v186)
                {
                  v187 = [v177 ageDaysFirstVisit];
                  v188 = [(RTAuthorizedLocationMetrics *)v324->_metrics curationMetrics];
                  [v188 setAgeDaysFirstTopLoiVisit:v187];

                  v189 = [v177 ageDaysFirstRegisteredVisit];
                  v190 = [(RTAuthorizedLocationMetrics *)v324->_metrics curationMetrics];
                  [v190 setAgeDaysFirstTopLoiRegisteredVisit:v189];

                  v191 = [v177 visitsWithTechnologyAnnotation];
                  v192 = [(RTAuthorizedLocationMetrics *)v324->_metrics curationMetrics];
                  [v192 setVisitsToTopLOIWithTechAvailabilityKnown:v191];

                  if ([v177 visitsWithTechnologyAnnotation] >= 1)
                  {
                    v193 = [v177 visitsWithGPS];
                    v194 = [v177 visitsWithTechnologyAnnotation];
                    v195 = [(RTAuthorizedLocationMetrics *)v324->_metrics curationMetrics];
                    *&v196 = v193 / v194;
                    [v195 setFractionOfVisitsToTopLOIWithGPS:v196];

                    v197 = [v177 visitsWithWiFiHI];
                    v198 = [v177 visitsWithTechnologyAnnotation];
                    v199 = [(RTAuthorizedLocationMetrics *)v324->_metrics curationMetrics];
                    *&v200 = v197 / v198;
                    [v199 setFractionOfVisitsToTopLOIWithWiFiHI:v200];
                  }
                }

                v201 = [(RTAuthorizedLocationManager *)v324 learnedLocationManager];
                v202 = [v201 learnedLocationStore];
                v203 = [v177 loi];
                v204 = [v203 location];
                v205 = [v204 location];
                v328 = [v202 predicateForVisitsWithinDistance:v205 location:400.0];

                v206 = dispatch_semaphore_create(0);
                *buf = 0;
                *&buf[8] = buf;
                *&buf[16] = 0x3032000000;
                *v398 = __Block_byref_object_copy__53;
                *&v398[8] = __Block_byref_object_dispose__53;
                *&v398[16] = 0;
                v379 = 0;
                v380 = &v379;
                v381 = 0x3032000000;
                v382 = __Block_byref_object_copy__53;
                v383 = __Block_byref_object_dispose__53;
                v384 = 0;
                v207 = [(RTAuthorizedLocationManager *)v324 learnedLocationManager];
                v208 = [v207 learnedLocationStore];
                v335[0] = MEMORY[0x277D85DD0];
                v335[1] = 3221225472;
                v335[2] = __69__RTAuthorizedLocationManager__curateAuthorizedLocationsWithHandler___block_invoke_128;
                v335[3] = &unk_2788C8930;
                v337 = buf;
                v338 = &v379;
                v335[4] = v324;
                v339 = a2;
                v209 = v206;
                v336 = v209;
                [v208 fetchVisitsWithPredicate:v328 ascending:1 dateInterval:v303 limit:&unk_28459DB48 handler:v335];

                v210 = (*&buf[8] + 40);
                v211 = *(*&buf[8] + 40);
                v212 = v209;
                v213 = [MEMORY[0x277CBEAA8] now];
                v214 = dispatch_time(0, 3600000000000);
                if (dispatch_semaphore_wait(v212, v214))
                {
                  v215 = [MEMORY[0x277CBEAA8] now];
                  [v215 timeIntervalSinceDate:v213];
                  v217 = v216;
                  v218 = objc_opt_new();
                  v219 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_40];
                  v220 = [MEMORY[0x277CCACC8] callStackSymbols];
                  v221 = [v220 filteredArrayUsingPredicate:v219];
                  v222 = [v221 firstObject];

                  [v218 submitToCoreAnalytics:v222 type:1 duration:v217];
                  v223 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
                  if (os_log_type_enabled(v223, OS_LOG_TYPE_FAULT))
                  {
                    *v401 = 0;
                    _os_log_fault_impl(&dword_2304B3000, v223, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v401, 2u);
                  }

                  v224 = MEMORY[0x277CCA9B8];
                  v400 = v313;
                  *v401 = @"semaphore wait timeout";
                  v225 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v401 forKeys:&v400 count:1];
                  v226 = [v224 errorWithDomain:v311 code:15 userInfo:v225];

                  if (v226)
                  {
                    v227 = v226;

                    v211 = v226;
                  }
                }

                objc_storeStrong(v210, v211);
                v228 = v380[5];
                if (v228)
                {
                  v229 = [v228 entryDate];
                  [v316 timeIntervalSinceDate:v229];
                  v231 = v230;
                  v232 = [(RTAuthorizedLocationMetrics *)v324->_metrics curationMetrics];
                  LODWORD(v233) = llround(v231 / 86400.0);
                  [v232 setAgeDaysFirstTopLoiGeoVisit:v233];
                }

                _Block_object_dispose(&v379, 8);
                _Block_object_dispose(buf, 8);
              }
            }

            v326 = [v320 countByEnumeratingWithState:&v340 objects:v385 count:16];
          }

          while (v326);
        }

        if ([v315 count])
        {
          objc_storeStrong(&v324->_authorizedLocationArr, v315);
          v234 = v316;
          p_super = &v324->_dateOfLastAuthorizedLocationsCuration->super;
          v324->_dateOfLastAuthorizedLocationsCuration = v234;
        }

        else
        {
          p_super = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
          if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
          {
            v246 = objc_opt_class();
            v247 = NSStringFromClass(v246);
            v248 = NSStringFromSelector(a2);
            v249 = [(NSArray *)v324->_authorizedLocationArr count];
            dateOfLastAuthorizedLocationsCuration = v324->_dateOfLastAuthorizedLocationsCuration;
            *buf = 138413314;
            *&buf[4] = v247;
            *&buf[12] = 2112;
            *&buf[14] = v248;
            *&buf[22] = 2050;
            *v398 = v249;
            *&v398[8] = 2114;
            *&v398[10] = dateOfLastAuthorizedLocationsCuration;
            *&v398[18] = 2050;
            *&v398[20] = v8;
            _os_log_impl(&dword_2304B3000, p_super, OS_LOG_TYPE_DEFAULT, "%@:%@, zero authorized locations created during current curation, retaining previously generated list of length %{public}lu, creation, %{public}@, age, %{public}.1f.", buf, 0x34u);
          }
        }

        v251 = [(RTAuthorizedLocationMetrics *)v324->_metrics curationMetrics];

        if (v251)
        {
          v252 = [(RTAuthorizedLocationMetrics *)v324->_metrics curationMetrics];
          [v252 setMaxCumulativeDwellTimeForNotFamiliarLoiHours:0.0];

          v253 = [(RTAuthorizedLocationMetrics *)v324->_metrics curationMetrics];
          [v253 setMaxUniqueVisitDaysForNotFamiliarLois:0];

          v254 = [v320 count];
          if (v254 > [(NSArray *)v324->_authorizedLocationArr count])
          {
            v255 = [v320 objectAtIndexedSubscript:{-[NSArray count](v324->_authorizedLocationArr, "count")}];
            [v255 dwellTime_s];
            v257 = v256;
            v258 = [(RTAuthorizedLocationMetrics *)v324->_metrics curationMetrics];
            *&v259 = v257;
            [v258 setMaxCumulativeDwellTimeForNotFamiliarLoiHours:v259];

            v260 = [v320 objectAtIndexedSubscript:{-[NSArray count](v324->_authorizedLocationArr, "count")}];
            v261 = [v260 numberOfDaysVisited];
            v262 = [(RTAuthorizedLocationMetrics *)v324->_metrics curationMetrics];
            [v262 setMaxUniqueVisitDaysForNotFamiliarLois:v261];
          }
        }

        v333 = 0u;
        v334 = 0u;
        v331 = 0u;
        v332 = 0u;
        v263 = v324->_authorizedLocationArr;
        v264 = [(NSArray *)v263 countByEnumeratingWithState:&v331 objects:v378 count:16];
        if (v264)
        {
          v265 = *v332;
          do
          {
            for (n = 0; n != v264; ++n)
            {
              if (*v332 != v265)
              {
                objc_enumerationMutation(v263);
              }

              v267 = *(*(&v331 + 1) + 8 * n);
              v268 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
              if (os_log_type_enabled(v268, OS_LOG_TYPE_DEFAULT))
              {
                v269 = objc_opt_class();
                v270 = NSStringFromClass(v269);
                v271 = NSStringFromSelector(a2);
                *buf = 138412803;
                *&buf[4] = v270;
                *&buf[12] = 2112;
                *&buf[14] = v271;
                *&buf[22] = 2117;
                *v398 = v267;
                _os_log_impl(&dword_2304B3000, v268, OS_LOG_TYPE_DEFAULT, "%@:%@: Ranked Authorized Locations: %{sensitive}@.", buf, 0x20u);
              }
            }

            v264 = [(NSArray *)v263 countByEnumeratingWithState:&v331 objects:v378 count:16];
          }

          while (v264);
        }

        v272 = 0;
        if (v306)
        {
          if (v305)
          {
            [v306 timeIntervalSinceDate:v305];
            v272 = 0;
            if (v273 > 604800.0 && v307 >= 21)
            {
              v274 = [(RTAuthorizedLocationMetrics *)v324->_metrics curationMetrics];
              [v274 registrationUsesBestTimeFraction];
              v272 = v275 > 0.999999;
            }
          }
        }

        if (v324->_allowUnsecureTimeFallback == v272)
        {
          v276 = [(RTAuthorizedLocationManager *)v324 visitLogStore];
          v277 = [v276 setTrustedTimeRecentAvailability:v272];

          if (v277)
          {
            v278 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
            if (os_log_type_enabled(v278, OS_LOG_TYPE_DEFAULT))
            {
              v279 = objc_opt_class();
              v280 = NSStringFromClass(v279);
              v281 = NSStringFromSelector(a2);
              v282 = v281;
              allowUnsecureTimeFallback = v324->_allowUnsecureTimeFallback;
              *buf = 138412802;
              *&buf[4] = v280;
              if (allowUnsecureTimeFallback)
              {
                v284 = "YES";
              }

              else
              {
                v284 = "NO";
              }

              *&buf[12] = 2112;
              *&buf[14] = v281;
              *&buf[22] = 2082;
              *v398 = v284;
              _os_log_impl(&dword_2304B3000, v278, OS_LOG_TYPE_DEFAULT, "%@:%@ changing allowUnsecureTimeFallback flag to %{public}s", buf, 0x20u);
            }

            v324->_allowUnsecureTimeFallback = !v272;
          }
        }

        v298[2](v298, 0);
      }

      else
      {
        v165 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
        if (os_log_type_enabled(v165, OS_LOG_TYPE_DEFAULT))
        {
          v166 = objc_opt_class();
          v167 = NSStringFromClass(v166);
          v168 = NSStringFromSelector(a2);
          *buf = 138412546;
          *&buf[4] = v167;
          *&buf[12] = 2112;
          *&buf[14] = v168;
          _os_log_impl(&dword_2304B3000, v165, OS_LOG_TYPE_DEFAULT, "%@:%@, unable to curate authorized locations with empty visit log.", buf, 0x16u);
        }

        v298[2](v298, 0);
      }

      _Block_object_dispose(&v391, 8);
      v22 = 0;
      goto LABEL_181;
    }

    if (v7 > 14400.0 || ![(NSArray *)self->_authorizedLocationArr count])
    {
      goto LABEL_18;
    }

    v15 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v19 = objc_opt_class();
      v20 = NSStringFromClass(v19);
      v21 = NSStringFromSelector(a2);
      *buf = 138413058;
      *&buf[4] = v20;
      *&buf[12] = 2112;
      *&buf[14] = v21;
      *&buf[22] = 2050;
      *v398 = v8;
      *&v398[8] = 2050;
      *&v398[10] = 0x40CC200000000000;
      _os_log_impl(&dword_2304B3000, v15, OS_LOG_TYPE_DEFAULT, "%@:%@: time since last authorized location curation %{public}.0f seconds, less than threshold %{public}.0f seconds. Not regenerating authorized location list.", buf, 0x2Au);
    }
  }

  else
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      v18 = NSStringFromSelector(a2);
      *buf = 138412546;
      *&buf[4] = v17;
      *&buf[12] = 2112;
      *&buf[14] = v18;
      _os_log_impl(&dword_2304B3000, v15, OS_LOG_TYPE_DEFAULT, "%@:%@, failed to fetch trusted time now. Not regenerating authorized location list.", buf, 0x16u);
    }
  }

  v298[2](v298, 0);
  v22 = 0;
LABEL_183:
}

void __69__RTAuthorizedLocationManager__curateAuthorizedLocationsWithHandler___block_invoke(uint64_t a1, void *a2, void *a3)
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

void __69__RTAuthorizedLocationManager__curateAuthorizedLocationsWithHandler___block_invoke_119(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
  if (!v6)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v18;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v17 + 1) + 8 * i);
          v13 = *(a1 + 32);
          v14 = [v12 visitIdentifier];
          [v13 setObject:v12 forKey:v14];

          v15 = *(a1 + 40);
          v16 = [v12 registrationDate];
          [v15 addObject:v16];
        }

        v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v9);
    }
  }

  dispatch_semaphore_signal(*(a1 + 48));
}

void __69__RTAuthorizedLocationManager__curateAuthorizedLocationsWithHandler___block_invoke_128(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a3);
  if (!*(*(*(a1 + 48) + 8) + 40) && [v5 count] == 1)
  {
    v7 = [v5 firstObject];
    v8 = *(*(a1 + 56) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    v10 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v13 = NSStringFromSelector(*(a1 + 64));
      v14 = *(*(*(a1 + 56) + 8) + 40);
      v15 = 138412802;
      v16 = v12;
      v17 = 2112;
      v18 = v13;
      v19 = 2114;
      v20 = v14;
      _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_DEFAULT, "%@:%@, earliest visit to vicinity of LOI: %{public}@.", &v15, 0x20u);
    }
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

- (void)curateAuthorizedLocationsWithHandler:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4)
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v11 = "[RTAuthorizedLocationManager curateAuthorizedLocationsWithHandler:]";
      v12 = 1024;
      v13 = 1530;
      _os_log_error_impl(&dword_2304B3000, v5, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

  v6 = [(RTNotifier *)self queue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __68__RTAuthorizedLocationManager_curateAuthorizedLocationsWithHandler___block_invoke;
  v8[3] = &unk_2788C4938;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_async(v6, v8);
}

- (BOOL)_assertMotionConsistencyForLocations:(id)a3 positionUncertaintyRate:(double)a4
{
  v55 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [v6 count];
  v8 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
  v9 = v8;
  if (v7 <= 1)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = NSStringFromSelector(a2);
      v41 = 138412546;
      v42 = v11;
      v43 = 2112;
      v44 = v12;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "%@:%@ invoked with fewer than two locations, returning NO.", &v41, 0x16u);
LABEL_9:

      goto LABEL_10;
    }

    goto LABEL_10;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    v15 = NSStringFromSelector(a2);
    v16 = [v6 firstObject];
    v17 = [v6 lastObject];
    v41 = 138413059;
    v42 = v14;
    v43 = 2112;
    v44 = v15;
    v45 = 2117;
    v46 = *&v16;
    v47 = 2117;
    v48 = *&v17;
    _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_DEFAULT, "%@:%@ invoked with two or more locations, start location, %{sensitive}@, end location, %{sensitive}@.", &v41, 0x2Au);
  }

  v18 = [v6 firstObject];
  v19 = [v18 timestamp];
  v20 = [v6 lastObject];
  v21 = [v20 timestamp];
  [v19 timeIntervalSinceDate:v21];
  v23 = fabs(v22);

  v24 = [v6 firstObject];
  v25 = [v6 lastObject];
  [v24 distanceFromLocation:v25];
  v27 = v26;

  v28 = [v6 firstObject];
  [v28 horizontalAccuracy];
  v30 = v29;
  v31 = [v6 lastObject];
  [v31 horizontalAccuracy];
  v33 = (v30 + v32) * 3.0;

  v9 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
  v34 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v27 > v33 + a4 * v23)
  {
    if (v34)
    {
      v35 = objc_opt_class();
      v11 = NSStringFromClass(v35);
      v12 = NSStringFromSelector(a2);
      v41 = 138413826;
      v42 = v11;
      v43 = 2112;
      v44 = v12;
      v45 = 2050;
      v46 = v27;
      v47 = 2050;
      v48 = v23;
      v49 = 2050;
      v50 = v33;
      v51 = 2050;
      v52 = a4;
      v53 = 2050;
      v54 = v33 + a4 * v23;
      _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_DEFAULT, "%@:%@ distance, %{public}.1f, duration, %{public}.1f, accuracy, %{public}.1f, position uncertainty rate, %{public}.2f, distance threshold, %{public}.1f, location batch is not consistent.", &v41, 0x48u);
      goto LABEL_9;
    }

LABEL_10:
    v36 = 0;
    goto LABEL_14;
  }

  if (v34)
  {
    v37 = objc_opt_class();
    v38 = NSStringFromClass(v37);
    v39 = NSStringFromSelector(a2);
    v41 = 138413826;
    v42 = v38;
    v43 = 2112;
    v44 = v39;
    v45 = 2050;
    v46 = v27;
    v47 = 2050;
    v48 = v23;
    v49 = 2050;
    v50 = v33;
    v51 = 2050;
    v52 = a4;
    v53 = 2050;
    v54 = v33 + a4 * v23;
    _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_DEFAULT, "%@:%@ distance, %{public}.1f, duration, %{public}.1f, accuracy, %{public}.1f, position uncertainty rate, %{public}.2f, distance threshold, %{public}.1f, location batch is consistent.", &v41, 0x48u);
  }

  v36 = 1;
LABEL_14:

  return v36;
}

- (double)_positionUncertaintyRateFromMotionActivity:(id)a3 dateInterval:(id)a4
{
  v63 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = NSStringFromSelector(a2);
    *buf = 138412802;
    v55 = v9;
    v56 = 2112;
    v57 = v10;
    v58 = 2114;
    *v59 = v6;
    _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_DEFAULT, "%@:%@, processing motion activity on date interval %{public}@.", buf, 0x20u);
  }

  if (v5)
  {
    v11 = [RTMotionActivityHistogram alloc];
    v12 = [v6 startDate];
    v46 = v6;
    v13 = [v6 endDate];
    v47 = v5;
    v14 = [(RTMotionActivityHistogram *)v11 initWithActivites:v5 betweenDate:v12 andDate:v13];

    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    p_super = &v14->super;
    obj = [(RTMotionActivityHistogram *)v14 binsSortedByInterval];
    v15 = [obj countByEnumeratingWithState:&v50 objects:v62 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v51;
      v18 = 40.0;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v51 != v17)
          {
            objc_enumerationMutation(obj);
          }

          v20 = *(*(&v50 + 1) + 8 * i);
          v21 = [v20 type];
          if (v21 > 6)
          {
            v22 = 40.0;
          }

          else
          {
            v22 = dbl_230AFE330[v21];
          }

          [v20 interval];
          v24 = v23;
          v25 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            v26 = objc_opt_class();
            v27 = NSStringFromClass(v26);
            v28 = NSStringFromSelector(a2);
            v29 = [v20 type];
            [v20 interval];
            *buf = 138413314;
            v55 = v27;
            v56 = 2112;
            v57 = v28;
            v58 = 1026;
            *v59 = v29;
            *&v59[4] = 2050;
            *&v59[6] = v30;
            v60 = 2050;
            v61 = v22;
            _os_log_impl(&dword_2304B3000, v25, OS_LOG_TYPE_DEFAULT, "%@:%@, motion activity, %{public}d, cumulative interval %{public}.3f s, position uncertainty rate, %{public}.3f.", buf, 0x30u);
          }

          v18 = v18 + v22 * v24;
        }

        v16 = [obj countByEnumeratingWithState:&v50 objects:v62 count:16];
      }

      while (v16);
    }

    else
    {
      v18 = 40.0;
    }

    v31 = p_super;
    [p_super totalInterval];
    if (v36 <= 0.0)
    {
      v38 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
      v32 = 2.0;
      v6 = v46;
      v5 = v47;
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        v43 = objc_opt_class();
        v40 = NSStringFromClass(v43);
        v41 = NSStringFromSelector(a2);
        *buf = 138412802;
        v55 = v40;
        v56 = 2112;
        v57 = v41;
        v58 = 2050;
        *v59 = 0x4000000000000000;
        v42 = "%@:%@, using default position uncertainty rate, %{public}f mps.";
        goto LABEL_25;
      }
    }

    else
    {
      [p_super totalInterval];
      v32 = v18 / v37;
      v38 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
      v6 = v46;
      v5 = v47;
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        v39 = objc_opt_class();
        v40 = NSStringFromClass(v39);
        v41 = NSStringFromSelector(a2);
        *buf = 138412802;
        v55 = v40;
        v56 = 2112;
        v57 = v41;
        v58 = 2050;
        *v59 = v32;
        v42 = "%@:%@, using weighted average position uncertainty rate from motion activity, %{public}f mps.";
LABEL_25:
        _os_log_impl(&dword_2304B3000, v38, OS_LOG_TYPE_DEFAULT, v42, buf, 0x20u);
      }
    }

    goto LABEL_27;
  }

  v31 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
  v32 = 2.0;
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    v33 = objc_opt_class();
    v34 = NSStringFromClass(v33);
    v35 = NSStringFromSelector(a2);
    *buf = 138412802;
    v55 = v34;
    v56 = 2112;
    v57 = v35;
    v58 = 2050;
    *v59 = 0x4000000000000000;
    _os_log_impl(&dword_2304B3000, v31, OS_LOG_TYPE_DEFAULT, "%@:%@, no motion activity, defaulting to %{public}f mps.", buf, 0x20u);
  }

LABEL_27:

  return v32;
}

- (BOOL)_assertRecentMotionActivityAndLocationHistoryAreConsistentForAuthorizedLocation:(id)a3 visit:(id)a4 errorCode:(int64_t *)a5
{
  v213[1] = *MEMORY[0x277D85DE8];
  v157 = a3;
  v160 = a5;
  v161 = a4;
  if (!a5)
  {
    oslog = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v23 = objc_opt_class();
      v24 = NSStringFromClass(v23);
      v25 = NSStringFromSelector(a2);
      *buf = 138412546;
      *&buf[4] = v24;
      *&buf[12] = 2112;
      *&buf[14] = v25;
      _os_log_impl(&dword_2304B3000, oslog, OS_LOG_TYPE_DEFAULT, "%@:%@, invalid input error code.", buf, 0x16u);
    }

    LOBYTE(v26) = 0;
    goto LABEL_95;
  }

  v172 = self;
  oslog = [(RTAuthorizedLocationManager *)self trustedTimeNow];
  if (!oslog)
  {
    log = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      v32 = objc_opt_class();
      v33 = NSStringFromClass(v32);
      v34 = NSStringFromSelector(a2);
      *buf = 138412546;
      *&buf[4] = v33;
      *&buf[12] = 2112;
      *&buf[14] = v34;
      _os_log_impl(&dword_2304B3000, log, OS_LOG_TYPE_DEFAULT, "%@:%@, failed to fetch trusted time now, cannot verify motion and location consistency.", buf, 0x16u);
    }

    LOBYTE(v26) = 0;
    goto LABEL_94;
  }

  v8 = [v161 entry];

  if (!v8)
  {
    goto LABEL_14;
  }

  v9 = objc_alloc(MEMORY[0x277CBEAA8]);
  v10 = [v161 entry];
  v11 = [v9 initWithTimeInterval:v10 sinceDate:300.0];

  v12 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    v15 = NSStringFromSelector(a2);
    v16 = [v11 stringFromDate];
    *buf = 138412802;
    *&buf[4] = v14;
    *&buf[12] = 2112;
    *&buf[14] = v15;
    *&buf[22] = 2114;
    v211 = v16;
    _os_log_impl(&dword_2304B3000, v12, OS_LOG_TYPE_DEFAULT, "%@:%@, setting endTime to currentVisit.entry: %{public}@.", buf, 0x20u);
  }

  if (v11)
  {
    if ([oslog isBeforeDate:v11])
    {
      v17 = oslog;

      v18 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = objc_opt_class();
        v20 = NSStringFromClass(v19);
        v21 = NSStringFromSelector(a2);
        v22 = [v17 stringFromDate];
        *buf = 138412802;
        *&buf[4] = v20;
        *&buf[12] = 2112;
        *&buf[14] = v21;
        *&buf[22] = 2114;
        v211 = v22;
        _os_log_impl(&dword_2304B3000, v18, OS_LOG_TYPE_DEFAULT, "%@:%@, trustedNow is before user-time currentVisit.entry, overriding endTime with trustedNow: %{public}@.", buf, 0x20u);
      }
    }

    else
    {
      v17 = v11;
    }
  }

  else
  {
LABEL_14:
    v27 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = objc_opt_class();
      v29 = NSStringFromClass(v28);
      v30 = NSStringFromSelector(a2);
      v31 = [0 stringFromDate];
      *buf = 138412802;
      *&buf[4] = v29;
      *&buf[12] = 2112;
      *&buf[14] = v30;
      *&buf[22] = 2114;
      v211 = v31;
      _os_log_impl(&dword_2304B3000, v27, OS_LOG_TYPE_DEFAULT, "%@:%@, currentVisit.entry has no value setting endTime to trustedNow: %{public}@.", buf, 0x20u);
    }

    v17 = oslog;
  }

  v35 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeInterval:v17 sinceDate:-21600.0];
  v159 = v17;
  v36 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeInterval:v159 sinceDate:-5400.0];
  v170 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeInterval:v159 sinceDate:-1200.0];
  v168 = [v35 laterDate:v172->_mostRecentDateAtWhichDeviceDataIsTrusted];

  v156 = [v36 laterDate:v172->_mostRecentDateAtWhichDeviceDataIsTrusted];

  v37 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
  {
    v38 = objc_opt_class();
    v39 = NSStringFromClass(v38);
    v40 = NSStringFromSelector(a2);
    v41 = [v168 stringFromDate];
    v42 = [v156 stringFromDate];
    v43 = [v159 stringFromDate];
    *buf = 138413314;
    *&buf[4] = v39;
    *&buf[12] = 2112;
    *&buf[14] = v40;
    *&buf[22] = 2114;
    v211 = v41;
    *v212 = 2114;
    *&v212[2] = v42;
    *&v212[10] = 2114;
    *&v212[12] = v43;
    _os_log_impl(&dword_2304B3000, v37, OS_LOG_TYPE_DEFAULT, "%@:%@,applying check between lookbackStartEpoch %{public}@,stringentLookbackStartEpoch %{public}@ and endTime %{public}@.", buf, 0x34u);
  }

  v167 = 0;
  v164 = *MEMORY[0x277D01448];
  v165 = *MEMORY[0x277CCA450];
  v174 = *MEMORY[0x277CE4290];
  *&v44 = 138412802;
  v155 = v44;
  log = v159;
  do
  {
    v173 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v170 endDate:log];
    v171 = [objc_alloc(MEMORY[0x277D01320]) initWithDateInterval:v173 horizontalAccuracy:0 batchSize:1 ascending:100.0];
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v211 = __Block_byref_object_copy__53;
    *v212 = __Block_byref_object_dispose__53;
    *&v212[8] = 0;
    v187 = 0;
    v188 = &v187;
    v189 = 0x3032000000;
    v190 = __Block_byref_object_copy__53;
    v191 = __Block_byref_object_dispose__53;
    v192 = 0;
    v45 = dispatch_semaphore_create(0);
    locationManager = v172->_locationManager;
    v183[0] = MEMORY[0x277D85DD0];
    v183[1] = 3221225472;
    v183[2] = __127__RTAuthorizedLocationManager__assertRecentMotionActivityAndLocationHistoryAreConsistentForAuthorizedLocation_visit_errorCode___block_invoke;
    v183[3] = &unk_2788C4490;
    v185 = buf;
    v186 = &v187;
    v47 = v45;
    v184 = v47;
    [(RTLocationManager *)locationManager fetchStoredLocationsWithOptions:v171 handler:v183];
    v48 = (*&buf[8] + 40);
    v49 = *(*&buf[8] + 40);
    v50 = v47;
    v51 = [MEMORY[0x277CBEAA8] now];
    v52 = dispatch_time(0, 3600000000000);
    if (dispatch_semaphore_wait(v50, v52))
    {
      v53 = [MEMORY[0x277CBEAA8] now];
      [v53 timeIntervalSinceDate:v51];
      v55 = v54;
      v56 = objc_opt_new();
      v57 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_40];
      v58 = [MEMORY[0x277CCACC8] callStackSymbols];
      v59 = [v58 filteredArrayUsingPredicate:v57];
      v60 = [v59 firstObject];

      [v56 submitToCoreAnalytics:v60 type:1 duration:v55];
      v61 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v61, OS_LOG_TYPE_FAULT))
      {
        *v206 = 0;
        _os_log_fault_impl(&dword_2304B3000, v61, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v206, 2u);
      }

      v62 = MEMORY[0x277CCA9B8];
      v200 = v165;
      *v206 = @"semaphore wait timeout";
      v63 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v206 forKeys:&v200 count:1];
      v64 = [v62 errorWithDomain:v164 code:15 userInfo:v63];

      if (v64)
      {
        v65 = v64;

        v49 = v64;
      }
    }

    objc_storeStrong(v48, v49);
    if (!*(*&buf[8] + 40))
    {
      v69 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
      if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
      {
        v70 = objc_opt_class();
        v71 = NSStringFromClass(v70);
        v72 = NSStringFromSelector(a2);
        v73 = [v188[5] count];
        *v206 = 138413058;
        *&v206[4] = v71;
        *&v206[12] = 2112;
        *&v206[14] = v72;
        *&v206[22] = 2050;
        v207 = v73;
        LOWORD(v208) = 2114;
        *(&v208 + 2) = v173;
        _os_log_impl(&dword_2304B3000, v69, OS_LOG_TYPE_DEFAULT, "%@:%@, fetched %{public}ld locations for date interval %{public}@.", v206, 0x2Au);
      }

      v68 = [MEMORY[0x277CBEB18] array];
      v181 = 0u;
      v182 = 0u;
      v179 = 0u;
      v180 = 0u;
      v74 = v188[5];
      v75 = [v74 countByEnumeratingWithState:&v179 objects:v209 count:16];
      if (!v75)
      {
        goto LABEL_48;
      }

      v76 = *v180;
LABEL_38:
      v77 = 0;
      while (1)
      {
        if (*v180 != v76)
        {
          objc_enumerationMutation(v74);
        }

        v78 = *(*(&v179 + 1) + 8 * v77);
        v79 = [v78 sourceInformation];
        v80 = [v79 isSimulatedBySoftware];

        if (v80)
        {
          v107 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
          if (os_log_type_enabled(v107, OS_LOG_TYPE_DEFAULT))
          {
            v108 = objc_opt_class();
            v109 = NSStringFromClass(v108);
            v110 = NSStringFromSelector(a2);
            *v206 = 138412546;
            *&v206[4] = v109;
            *&v206[12] = 2112;
            *&v206[14] = v110;
            _os_log_impl(&dword_2304B3000, v107, OS_LOG_TYPE_DEFAULT, "%@:%@, rejection 9.", v206, 0x16u);
          }

          *v160 = 9;
          goto LABEL_63;
        }

        v81 = [v78 sourceInformation];
        if ([v81 isProducedByAccessory])
        {
          break;
        }

        v82 = [v78 integrity] == v174;

        if (!v82)
        {
          goto LABEL_45;
        }

LABEL_46:
        if (v75 == ++v77)
        {
          v75 = [v74 countByEnumeratingWithState:&v179 objects:v209 count:16];
          if (v75)
          {
            goto LABEL_38;
          }

LABEL_48:

          *v206 = 0;
          *&v206[8] = v206;
          *&v206[16] = 0x3032000000;
          v207 = __Block_byref_object_copy__53;
          *&v208 = __Block_byref_object_dispose__53;
          *(&v208 + 1) = 0;
          v200 = 0;
          v201 = &v200;
          v202 = 0x3032000000;
          v203 = __Block_byref_object_copy__53;
          v204 = __Block_byref_object_dispose__53;
          v205 = 0;
          v83 = dispatch_semaphore_create(0);
          motionActivityManager = v172->_motionActivityManager;
          v85 = [v173 startDate];
          v86 = [v173 endDate];
          v175[0] = MEMORY[0x277D85DD0];
          v175[1] = 3221225472;
          v175[2] = __127__RTAuthorizedLocationManager__assertRecentMotionActivityAndLocationHistoryAreConsistentForAuthorizedLocation_visit_errorCode___block_invoke_132;
          v175[3] = &unk_2788C4490;
          v177 = &v200;
          v178 = v206;
          v87 = v83;
          v176 = v87;
          [(RTMotionActivityManager *)motionActivityManager fetchMotionActivitiesFromStartDate:v85 endDate:v86 handler:v175];

          v88 = (v201 + 5);
          obj = v201[5];
          dsema = v87;
          v89 = [MEMORY[0x277CBEAA8] now];
          v90 = dispatch_time(0, 3600000000000);
          if (dispatch_semaphore_wait(dsema, v90))
          {
            v91 = [MEMORY[0x277CBEAA8] now];
            [v91 timeIntervalSinceDate:v89];
            v93 = v92;
            v94 = objc_opt_new();
            v95 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_40];
            v96 = [MEMORY[0x277CCACC8] callStackSymbols];
            v97 = [v96 filteredArrayUsingPredicate:v95];
            v98 = [v97 firstObject];

            [v94 submitToCoreAnalytics:v98 type:1 duration:v93];
            v99 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
            if (os_log_type_enabled(v99, OS_LOG_TYPE_FAULT))
            {
              *v193 = 0;
              _os_log_fault_impl(&dword_2304B3000, v99, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v193, 2u);
            }

            v100 = MEMORY[0x277CCA9B8];
            v213[0] = v165;
            *v193 = @"semaphore wait timeout";
            v101 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v193 forKeys:v213 count:1];
            v102 = [v100 errorWithDomain:v164 code:15 userInfo:v101];

            if (v102)
            {
              v103 = v102;

              obj = v102;
            }
          }

          objc_storeStrong(v88, obj);
          if (v201[5])
          {
            v104 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
            if (os_log_type_enabled(v104, OS_LOG_TYPE_ERROR))
            {
              v148 = objc_opt_class();
              v149 = NSStringFromClass(v148);
              v150 = NSStringFromSelector(a2);
              v151 = v201[5];
              *v193 = v155;
              *&v193[4] = v149;
              v194 = 2112;
              v195 = v150;
              v196 = 2114;
              v197 = v151;
              _os_log_error_impl(&dword_2304B3000, v104, OS_LOG_TYPE_ERROR, "%@:%@, failed to fetch motion activity: %{public}@.", v193, 0x20u);
            }

            v105 = [(RTAuthorizedLocationMetrics *)v172->_metrics queryMetrics];

            if (v105)
            {
              v106 = [(RTAuthorizedLocationMetrics *)v172->_metrics queryMetrics];
              [v106 setHistoricalRejectionReasonCode:8];
              goto LABEL_58;
            }

LABEL_87:
            v26 = 0;
LABEL_90:

            _Block_object_dispose(&v200, 8);
            _Block_object_dispose(v206, 8);

LABEL_64:
            goto LABEL_65;
          }

          v113 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
          if (os_log_type_enabled(v113, OS_LOG_TYPE_DEFAULT))
          {
            v114 = objc_opt_class();
            v115 = NSStringFromClass(v114);
            v116 = NSStringFromSelector(a2);
            v117 = [*(*&v206[8] + 40) count];
            *v193 = 138413058;
            *&v193[4] = v115;
            v194 = 2112;
            v195 = v116;
            v196 = 2050;
            v197 = v117;
            v198 = 2114;
            v199 = v173;
            _os_log_impl(&dword_2304B3000, v113, OS_LOG_TYPE_DEFAULT, "%@:%@, fetched %{public}ld motion activities for date interval %{public}@.", v193, 0x2Au);
          }

          [(RTAuthorizedLocationManager *)v172 _positionUncertaintyRateFromMotionActivity:*(*&v206[8] + 40) dateInterval:v173];
          v119 = v118;
          if (!-[RTAuthorizedLocationManager _assertMotionConsistencyForLocations:positionUncertaintyRate:](v172, "_assertMotionConsistencyForLocations:positionUncertaintyRate:", v68) && [v68 count] >= 2)
          {
            v120 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
            if (os_log_type_enabled(v120, OS_LOG_TYPE_DEFAULT))
            {
              v121 = objc_opt_class();
              v122 = NSStringFromClass(v121);
              v123 = NSStringFromSelector(a2);
              *v193 = v155;
              *&v193[4] = v122;
              v194 = 2112;
              v195 = v123;
              v196 = 2114;
              v197 = v173;
              _os_log_impl(&dword_2304B3000, v120, OS_LOG_TYPE_DEFAULT, "%@:%@, motion-derived position uncertainty rate inconsistent with locations for date interval %{public}@.", v193, 0x20u);
            }

            v124 = [(RTAuthorizedLocationMetrics *)v172->_metrics queryMetrics];

            if (!v124)
            {
              goto LABEL_87;
            }

            v125 = [(RTAuthorizedLocationMetrics *)v172->_metrics queryMetrics];
            *&v126 = v119;
            [v125 setHistoricalRejectionSpeedMps:v126];

            [v159 timeIntervalSinceDate:log];
            v128 = v127;
            [v159 timeIntervalSinceDate:v170];
            v130 = v129;
            v106 = [(RTAuthorizedLocationMetrics *)v172->_metrics queryMetrics];
            [v106 setMotionSpeedLimitRejectionCodeFromLookbackHours:(v128 + v130) * 0.5 / 3600.0];
            goto LABEL_58;
          }

          ++v167;
          if ([v68 count] < 2)
          {
            [log timeIntervalSinceDate:v170];
            if (v142 > 3600.0 && [v170 isOnOrAfter:v156])
            {
              v143 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
              if (os_log_type_enabled(v143, OS_LOG_TYPE_DEFAULT))
              {
                v144 = objc_opt_class();
                v145 = NSStringFromClass(v144);
                v146 = NSStringFromSelector(a2);
                *v193 = 138413058;
                *&v193[4] = v145;
                v194 = 2112;
                v195 = v146;
                v196 = 2114;
                v197 = v170;
                v198 = 2114;
                v199 = log;
                _os_log_impl(&dword_2304B3000, v143, OS_LOG_TYPE_DEFAULT, "%@:%@, no locations recorded on interval between %{public}@ and %{public}@, cannot assert location history.", v193, 0x2Au);
              }

              v147 = [(RTAuthorizedLocationMetrics *)v172->_metrics queryMetrics];

              if (!v147)
              {
                goto LABEL_87;
              }

              v106 = [(RTAuthorizedLocationMetrics *)v172->_metrics queryMetrics];
              [v106 setHistoricalRejectionReasonCode:7];
LABEL_58:
              v26 = 0;
            }

            else
            {
              v26 = 1;
              v106 = v170;
              v170 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeInterval:v170 sinceDate:-1200.0];
            }
          }

          else
          {
            v131 = objc_alloc(MEMORY[0x277CBEAA8]);
            v132 = [v68 firstObject];
            v133 = [v132 timestamp];
            v134 = [v131 initWithTimeInterval:v133 sinceDate:-1200.0];

            v135 = objc_alloc(MEMORY[0x277CBEAA8]);
            v106 = [v68 firstObject];
            v136 = [v106 timestamp];
            v137 = [v135 initWithTimeInterval:v136 sinceDate:0.01];

            v26 = 1;
            log = v137;
            v170 = v134;
          }

          goto LABEL_90;
        }
      }

LABEL_45:
      [v68 addObject:v78];
      goto LABEL_46;
    }

    v66 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
    if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
    {
      v138 = objc_opt_class();
      v139 = NSStringFromClass(v138);
      v140 = NSStringFromSelector(a2);
      v141 = *(*&buf[8] + 40);
      *v206 = v155;
      *&v206[4] = v139;
      *&v206[12] = 2112;
      *&v206[14] = v140;
      *&v206[22] = 2114;
      v207 = v141;
      _os_log_error_impl(&dword_2304B3000, v66, OS_LOG_TYPE_ERROR, "%@:%@, failed to fetch location: %{public}@.", v206, 0x20u);
    }

    v67 = [(RTAuthorizedLocationMetrics *)v172->_metrics queryMetrics];

    if (v67)
    {
      v68 = [(RTAuthorizedLocationMetrics *)v172->_metrics queryMetrics];
      [v68 setHistoricalRejectionReasonCode:8];
LABEL_63:
      v26 = 0;
      goto LABEL_64;
    }

    v26 = 0;
LABEL_65:

    _Block_object_dispose(&v187, 8);
    _Block_object_dispose(buf, 8);

    if (!v26)
    {
      goto LABEL_93;
    }

    v111 = [v170 isAfterDate:v168];
    if (v167 < 20)
    {
      v112 = v111;
    }

    else
    {
      v112 = 0;
    }
  }

  while ((v112 & 1) != 0);
  v152 = [(RTAuthorizedLocationMetrics *)v172->_metrics queryMetrics];

  if (v152)
  {
    v153 = [(RTAuthorizedLocationMetrics *)v172->_metrics queryMetrics];
    [v153 setHistoricalRejectionReasonCode:0];
  }

LABEL_93:

LABEL_94:
LABEL_95:

  return v26;
}

void __127__RTAuthorizedLocationManager__assertRecentMotionActivityAndLocationHistoryAreConsistentForAuthorizedLocation_visit_errorCode___block_invoke(uint64_t a1, void *a2, void *a3)
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

void __127__RTAuthorizedLocationManager__assertRecentMotionActivityAndLocationHistoryAreConsistentForAuthorizedLocation_visit_errorCode___block_invoke_132(uint64_t a1, void *a2, void *a3)
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

- (BOOL)_assertRecentLocationTechnologyQualityForAuthorizedLocation:(id)a3 visit:(id)a4 errorCode:(int64_t *)a5
{
  v137[1] = *MEMORY[0x277D85DE8];
  v99 = a3;
  v97 = a5;
  v98 = a4;
  if (!a5)
  {
    oslog = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v31 = objc_opt_class();
      v32 = NSStringFromClass(v31);
      v33 = NSStringFromSelector(a2);
      *buf = 138412546;
      *&buf[4] = v32;
      v128 = 2112;
      v129 = v33;
      _os_log_impl(&dword_2304B3000, oslog, OS_LOG_TYPE_DEFAULT, "%@:%@, invalid input error code", buf, 0x16u);
    }

    LOBYTE(v34) = 0;
LABEL_54:

    goto LABEL_55;
  }

  v8 = [(RTAuthorizedLocationManager *)self trustedTimeNow];
  if (v8)
  {
    v9 = [v99 loi];
    v10 = [v9 location];
    v11 = [v10 location];
    [v11 horizontalUncertainty];
    v13 = v12;

    v14 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      v17 = NSStringFromSelector(a2);
      *buf = 138412802;
      *&buf[4] = v16;
      v128 = 2112;
      v129 = v17;
      v130 = 2050;
      *v131 = fmax(fmin(v13 * 3.0, 400.0), 40.0);
      _os_log_impl(&dword_2304B3000, v14, OS_LOG_TYPE_DEFAULT, "%@:%@, threshold for INSIDE authorized location: %{public}f m", buf, 0x20u);
    }

    v18 = [(RTAuthorizedLocationManager *)self currentVisitCached];
    if (!v18 || (-[RTAuthorizedLocationManager currentVisitCached](self, "currentVisitCached"), v19 = objc_claimAutoreleasedReturnValue(), [v19 entry], v20 = objc_claimAutoreleasedReturnValue(), v21 = v20 == 0, v20, v19, v18, v21))
    {
      v105 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeInterval:v8 sinceDate:-43200.0];
      v25 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v35 = objc_opt_class();
        v36 = NSStringFromClass(v35);
        v37 = NSStringFromSelector(a2);
        *buf = 138413058;
        *&buf[4] = v36;
        v128 = 2112;
        v129 = v37;
        v130 = 2114;
        *v131 = v8;
        *&v131[8] = 2114;
        *v132 = v105;
        _os_log_impl(&dword_2304B3000, v25, OS_LOG_TYPE_DEFAULT, "%@:%@,location lookback start,%{public}@,trustedNow,%{public}@", buf, 0x2Au);
      }
    }

    else
    {
      v22 = objc_alloc(MEMORY[0x277CBEAA8]);
      v23 = [(RTAuthorizedLocationManager *)self currentVisitCached];
      v24 = [v23 entry];
      v105 = [v22 initWithTimeInterval:v24 sinceDate:-1800.0];

      v25 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = objc_opt_class();
        v27 = NSStringFromClass(v26);
        v28 = NSStringFromSelector(a2);
        v29 = [(RTAuthorizedLocationManager *)self currentVisitCached];
        v30 = [v29 entry];
        *buf = 138413058;
        *&buf[4] = v27;
        v128 = 2112;
        v129 = v28;
        v130 = 2114;
        *v131 = v30;
        *&v131[8] = 2114;
        *v132 = v105;
        _os_log_impl(&dword_2304B3000, v25, OS_LOG_TYPE_DEFAULT, "%@:%@,location lookback start,%{public}@,visit entry,%{public}@", buf, 0x2Au);
      }
    }

    [v8 timeIntervalSinceDate:v105];
    v39 = v38;
    v40 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
    v96 = fmin(ceil(v39 / 3600.0), 12.0);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      v41 = objc_opt_class();
      v42 = NSStringFromClass(v41);
      v43 = NSStringFromSelector(a2);
      *buf = 138413314;
      *&buf[4] = v42;
      v128 = 2112;
      v129 = v43;
      v130 = 2114;
      *v131 = v105;
      *&v131[8] = 1026;
      *v132 = v96;
      *&v132[4] = 2050;
      *&v132[6] = v39;
      _os_log_impl(&dword_2304B3000, v40, OS_LOG_TYPE_DEFAULT, "%@:%@,startDate,%{public}@,numberOfHours,%{public}d,timeSinceStart,%{public}.3lf", buf, 0x30u);
    }

    oslog = v8;
    v123 = 0;
    v124 = &v123;
    v125 = 0x2020000000;
    v126 = -1;
    v119 = 0;
    v120 = &v119;
    v121 = 0x2020000000;
    v122 = 0;
    if (v96 >= 1)
    {
      v44 = 0;
      v94 = *MEMORY[0x277D01448];
      v95 = *MEMORY[0x277CCA450];
      while (1)
      {
        v108 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeInterval:oslog sinceDate:v44 * -3600.0];
        v45 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeInterval:v108 sinceDate:-3600.0];
        v107 = [v45 laterDate:v105];
        v102 = v45;
        if ([v107 compare:v108] == 1)
        {
          break;
        }

        v106 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v107 endDate:v108];
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v46 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
          v47 = v44;
          if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
          {
            v48 = objc_opt_class();
            v49 = NSStringFromClass(v48);
            v50 = NSStringFromSelector(a2);
            *buf = 138414082;
            *&buf[4] = v49;
            v128 = 2112;
            v129 = v50;
            v130 = 2114;
            *v131 = v105;
            *&v131[8] = 2114;
            *v132 = v102;
            *&v132[8] = 2114;
            *&v132[10] = v107;
            v133 = 2114;
            *v134 = v106;
            *&v134[8] = 2114;
            *v135 = oslog;
            *&v135[8] = 2114;
            v136 = v108;
            _os_log_impl(&dword_2304B3000, v46, OS_LOG_TYPE_INFO, "%@:%@ startDate,%{public}@,startDateWithoutBoundsCheck,%{public}@,startDateForFetchInterval,%{public}@,fetchInterval,%{public}@,endDate,%{public}@,endDateForFetchInterval,%{public}@", buf, 0x52u);
          }

          v44 = v47;
        }

        v100 = v44;
        v51 = [objc_alloc(MEMORY[0x277D01320]) initWithDateInterval:v106 horizontalAccuracy:0 batchSize:0 ascending:100.0];
        v52 = dispatch_semaphore_create(0);
        locationManager = self->_locationManager;
        v110[0] = MEMORY[0x277D85DD0];
        v110[1] = 3221225472;
        v110[2] = __107__RTAuthorizedLocationManager__assertRecentLocationTechnologyQualityForAuthorizedLocation_visit_errorCode___block_invoke;
        v110[3] = &unk_2788C9590;
        v110[4] = self;
        v117 = a2;
        v118 = v97;
        v54 = v52;
        v111 = v54;
        v112 = v105;
        v113 = v99;
        v114 = v98;
        v115 = &v123;
        v116 = &v119;
        [(RTLocationManager *)locationManager fetchStoredLocationsWithOptions:v51 handler:v110];
        dsema = v54;
        v55 = [MEMORY[0x277CBEAA8] now];
        v56 = dispatch_time(0, 3600000000000);
        if (dispatch_semaphore_wait(dsema, v56))
        {
          v57 = [MEMORY[0x277CBEAA8] now];
          [v57 timeIntervalSinceDate:v55];
          v59 = v58;
          v60 = objc_opt_new();
          v61 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_40];
          v62 = [MEMORY[0x277CCACC8] callStackSymbols];
          v63 = [v62 filteredArrayUsingPredicate:v61];
          v64 = [v63 firstObject];

          [v60 submitToCoreAnalytics:v64 type:1 duration:v59];
          v65 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
          if (os_log_type_enabled(v65, OS_LOG_TYPE_FAULT))
          {
            *buf = 0;
            _os_log_fault_impl(&dword_2304B3000, v65, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
          }

          v66 = MEMORY[0x277CCA9B8];
          v137[0] = v95;
          *buf = @"semaphore wait timeout";
          v67 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v137 count:1];
          v68 = [v66 errorWithDomain:v94 code:15 userInfo:v67];

          if (v68)
          {
            v69 = v68;
          }
        }

        else
        {
          v68 = 0;
        }

        v101 = v68;
        if (v101)
        {
          v70 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
          if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
          {
            v82 = objc_opt_class();
            v83 = NSStringFromClass(v82);
            v84 = NSStringFromSelector(a2);
            *buf = 138412802;
            *&buf[4] = v83;
            v128 = 2112;
            v129 = v84;
            v130 = 2112;
            *v131 = v101;
            _os_log_error_impl(&dword_2304B3000, v70, OS_LOG_TYPE_ERROR, "%@:%@, failed to fetch locations in time: %@.", buf, 0x20u);
          }
        }

        v71 = v124[3];
        v72 = v120[3];
        v74 = v72 & 2 ^ 2;
        if ((v72 & 5) == 0)
        {
          v74 = v72 & 2 ^ 2 | 5;
        }

        v73 = (v72 & 5) != 0;
        v75 = v73 & (v72 >> 1);
        if (v71 == 1)
        {
          v34 = v73 & (v72 >> 1);
        }

        else
        {
          v34 = 0;
        }

        if ((v71 != 1) | v75 & 1)
        {
          v76 = 0;
        }

        else
        {
          v76 = v74;
        }

        self->_technologiesMissingToLookForInLocationUpdates = v76;
        v77 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
        if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
        {
          v78 = objc_opt_class();
          v79 = NSStringFromClass(v78);
          v80 = NSStringFromSelector(a2);
          technologiesMissingToLookForInLocationUpdates = self->_technologiesMissingToLookForInLocationUpdates;
          *buf = 138414594;
          *&buf[4] = v79;
          v128 = 2112;
          v129 = v80;
          v130 = 1026;
          *v131 = v75;
          *&v131[4] = 1026;
          *&v131[6] = v34;
          *v132 = 1026;
          *&v132[2] = (v72 & 2) >> 1;
          *&v132[6] = 1026;
          *&v132[8] = v72 & 1;
          *&v132[12] = 1026;
          *&v132[14] = (v72 >> 2) & 1;
          v133 = 1026;
          *v134 = v71 == 1;
          *&v134[4] = 1026;
          *&v134[6] = v71 == 0;
          *v135 = 2050;
          *&v135[2] = technologiesMissingToLookForInLocationUpdates;
          _os_log_impl(&dword_2304B3000, v77, OS_LOG_TYPE_DEFAULT, "%@:%@ didTechCrossCheckPass,%{public}d,didTechCrossCheckPassAndDeviceInsideALOI,%{public}d,foundAnyWiFi,%{public}d,foundGps,%{public}d,foundHighIntegrityWiFi,%{public}d,isDeviceLocationInsideALOI,%{public}d,isDeviceLocationOutsideALOI,%{public}d,_technologiesMissingToLookForInLocationUpdates,%{public}lu", buf, 0x4Au);
        }

        if ((v71 == 0) | v34 & 1)
        {
          goto LABEL_53;
        }

        v44 = v100 + 1;
        if (v96 == v100 + 1)
        {
          goto LABEL_50;
        }
      }
    }

LABEL_50:
    v89 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
    if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
    {
      v90 = objc_opt_class();
      v91 = NSStringFromClass(v90);
      v92 = NSStringFromSelector(a2);
      *buf = 138412546;
      *&buf[4] = v91;
      v128 = 2112;
      v129 = v92;
      _os_log_impl(&dword_2304B3000, v89, OS_LOG_TYPE_DEFAULT, "%@:%@ Tech cross check fail", buf, 0x16u);
    }

    LOBYTE(v34) = 0;
LABEL_53:
    _Block_object_dispose(&v119, 8);
    _Block_object_dispose(&v123, 8);

    goto LABEL_54;
  }

  v85 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
  if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
  {
    v86 = objc_opt_class();
    v87 = NSStringFromClass(v86);
    v88 = NSStringFromSelector(a2);
    *buf = 138412546;
    *&buf[4] = v87;
    v128 = 2112;
    v129 = v88;
    _os_log_impl(&dword_2304B3000, v85, OS_LOG_TYPE_DEFAULT, "%@:%@, failed to fetch trusted time.", buf, 0x16u);
  }

  LOBYTE(v34) = 0;
  *v97 = 1;

LABEL_55:
  return v34;
}

void __107__RTAuthorizedLocationManager__assertRecentLocationTechnologyQualityForAuthorizedLocation_visit_errorCode___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5 && !v6 && [v5 count])
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = NSStringFromSelector(*(a1 + 88));
      v12 = [v5 count];
      v13 = *(a1 + 48);
      *buf = 138413058;
      *&buf[4] = v10;
      v23 = 2112;
      v24 = v11;
      v25 = 2050;
      v26 = v12;
      v27 = 2114;
      v28 = v13;
      _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_DEFAULT, "%@:%@ NumberOfRecentLocs,%{public}lu,startDate,%{public}@", buf, 0x2Au);
    }

    v21 = 0;
    *buf = -1;
    [*(a1 + 32) _assertRecentLocationTechnologyQualityForAuthorizedLocationInParts:*(a1 + 56) visit:*(a1 + 64) recentLocation:v5 technologyBitfield:&v21 proximityStatus:buf errorCode:*(a1 + 96)];
    v14 = *(*(a1 + 72) + 8);
    v15 = *(v14 + 24);
    v16 = v21;
    if (v15 == -1)
    {
      v15 = *buf;
    }

    *(v14 + 24) = v15;
    *(*(*(a1 + 80) + 8) + 24) |= v16;
  }

  else
  {
    v17 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      v20 = NSStringFromSelector(*(a1 + 88));
      *buf = 138412802;
      *&buf[4] = v19;
      v23 = 2112;
      v24 = v20;
      v25 = 2114;
      v26 = v7;
      _os_log_impl(&dword_2304B3000, v17, OS_LOG_TYPE_DEFAULT, "%@:%@ either fetch error,%{public}@ Or no locations.", buf, 0x20u);
    }

    **(a1 + 96) = 5;
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

- (BOOL)_assertRecentLocationTechnologyQualityForAuthorizedLocationInParts:(id)a3 visit:(id)a4 recentLocation:(id)a5 technologyBitfield:(unint64_t *)a6 proximityStatus:(int64_t *)a7 errorCode:(int64_t *)a8
{
  v165 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a5;
  v13 = [v11 loi];
  v14 = [v13 location];
  v15 = [v14 location];
  [v15 horizontalUncertainty];
  v17 = v16;

  v18 = v17 * 3.0;
  v19 = objc_alloc(MEMORY[0x277CE41F8]);
  v20 = [v11 loi];
  v21 = [v20 location];
  v22 = [v21 location];
  v145 = [v19 initWithRTLocation:v22];

  v23 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = objc_opt_class();
    v25 = NSStringFromClass(v24);
    v26 = NSStringFromSelector(a2);
    *buf = 138413058;
    v155 = v25;
    v156 = 2112;
    v157 = v26;
    v158 = 2050;
    *v159 = [v12 count];
    *&v159[8] = 2050;
    *&v159[10] = v17 * 3.0;
    _os_log_impl(&dword_2304B3000, v23, OS_LOG_TYPE_DEFAULT, "%@:%@, processing %{public}zu locations using INSIDE distance threshold %{public}f m.", buf, 0x2Au);
  }

  v149 = self;

  v152 = 0u;
  v153 = 0u;
  v150 = 0u;
  v151 = 0u;
  v27 = [v12 reverseObjectEnumerator];
  v28 = [v27 countByEnumeratingWithState:&v150 objects:v164 count:16];
  if (!v28)
  {

    v30 = 0;
    v93 = 0;
    v140 = 0;
    LOBYTE(v138) = 0;
    v131 = 0;
    v141 = 0;
    v148 = 0;
    BYTE4(v136) = 0;
    v86 = 0;
    v32 = v145;
    v87 = a6;
    goto LABEL_82;
  }

  v29 = v28;
  v146 = a7;
  obj = v27;
  v130 = v12;
  v142 = v11;
  v30 = 0;
  v136 = 0;
  v138 = 0;
  v135 = 0;
  v140 = 0;
  v131 = 0;
  v141 = 0;
  v148 = 0;
  v31 = *v151;
  v143 = *MEMORY[0x277CE4290];
  v133 = *MEMORY[0x277CE4280];
  v32 = v145;
  while (2)
  {
    for (i = 0; i != v29; ++i)
    {
      if (*v151 != v31)
      {
        objc_enumerationMutation(obj);
      }

      v34 = *(*(&v150 + 1) + 8 * i);
      v35 = [v34 sourceInformation];
      v36 = [v35 isSimulatedBySoftware];

      if (v36)
      {
        v88 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
        if (os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
        {
          v89 = objc_opt_class();
          v90 = NSStringFromClass(v89);
          v91 = NSStringFromSelector(a2);
          *buf = 138412546;
          v155 = v90;
          v156 = 2112;
          v157 = v91;
          _os_log_impl(&dword_2304B3000, v88, OS_LOG_TYPE_DEFAULT, "%@:%@, rejection 9.", buf, 0x16u);

          v32 = v145;
        }

        *a8 = 9;
        v92 = 0;
        v11 = v142;
        v12 = v130;
        goto LABEL_124;
      }

      [v32 distanceFromLocation:v34];
      v38 = v37;
      [v34 horizontalAccuracy];
      v40 = v18 + v39 * 2.0;
      if (v38 > v40)
      {
        if (v30)
        {
          v41 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
          {
            v42 = objc_opt_class();
            v43 = NSStringFromClass(v42);
            v44 = NSStringFromSelector(a2);
            v45 = [v142 loi];
            v46 = [v45 location];
            v47 = [v46 location];
            *buf = 138413571;
            v155 = v43;
            v156 = 2112;
            v157 = v44;
            v158 = 2117;
            *v159 = v34;
            *&v159[8] = 2117;
            *&v159[10] = v47;
            v160 = 2050;
            v161 = v38;
            v162 = 2050;
            v163 = v40;
            _os_log_impl(&dword_2304B3000, v41, OS_LOG_TYPE_DEFAULT, "%@:%@, distance from location, %{sensitive}@, to ALOI location, %{sensitive}@, of %{public}.2f is greater than threshold, %{public}.2f m. Setting state to OUTSIDE.", buf, 0x3Eu);

            v32 = v145;
          }
        }

        if (v146)
        {
          *v146 = 0;
        }

        v48 = [(RTAuthorizedLocationMetrics *)v149->_metrics queryMetrics];

        if (v48)
        {
          v50 = [(RTAuthorizedLocationMetrics *)v149->_metrics queryMetrics];
          v49 = v38 / v18;
          *&v51 = v49;
          [v50 setNormalizedDistanceToCentroid:v51];
        }

        v30 = 0;
      }

      v52 = [v34 sourceInformation];
      if (([v52 isProducedByAccessory]& 1) != 0)
      {
        v148 = 1;
LABEL_21:

        continue;
      }

      v53 = [v34 type];

      if (v53 == 3)
      {
        v148 = 1;
      }

      else if ([v34 type] == 1 || objc_msgSend(v34, "type") == 4 || objc_msgSend(v34, "type") == 11 || objc_msgSend(v34, "type") == 13)
      {
        if ([v34 integrity] == v143)
        {
          v141 = 1;
        }

        else if (v38 <= 400.0)
        {
          if (v38 <= v18)
          {
            if ((v30 & 1) == 0)
            {
              v54 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
              if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
              {
                v55 = objc_opt_class();
                v56 = NSStringFromClass(v55);
                v57 = NSStringFromSelector(a2);
                *buf = 138413571;
                v155 = v56;
                v156 = 2112;
                v157 = v57;
                v158 = 2117;
                *v159 = v34;
                *&v159[8] = 2117;
                *&v159[10] = v142;
                v160 = 2050;
                v161 = v38;
                v162 = 2050;
                v163 = v18;
                _os_log_impl(&dword_2304B3000, v54, OS_LOG_TYPE_DEFAULT, "%@:%@, distance from location, %{sensitive}@, to ALOI, %{sensitive}@, of %{public}.2f is less than threshold, %{public}.2f m. Setting state to INSIDE.", buf, 0x3Eu);
              }
            }

            if (v146)
            {
              *v146 = 1;
            }

            v58 = [(RTAuthorizedLocationMetrics *)v149->_metrics queryMetrics];

            if (v58)
            {
              v60 = [(RTAuthorizedLocationMetrics *)v149->_metrics queryMetrics];
              v59 = v38 / v18;
              *&v61 = v59;
              [v60 setNormalizedDistanceToCentroid:v61];
            }

            v30 = 1;
          }

          v62 = [v34 type];
          v63 = [v34 integrity];
          v64 = [v34 type] == 4 || objc_msgSend(v34, "type") == 11;
          v65 = v62 != 1;
          v66 = [v34 type];
          if (v63 >= v133)
          {
            v67 = v64;
          }

          else
          {
            v67 = 0;
          }

          v137 = v67;
          v68 = v63 >= v133 && v66 == 13;
          v69 = v65 | v138;
          v32 = v145;
          if ((v69 & 1) == 0)
          {
            v70 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
            if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
            {
              v71 = objc_opt_class();
              NSStringFromClass(v71);
              v72 = v139 = v68;
              v73 = NSStringFromSelector(a2);
              *buf = 138413059;
              v155 = v72;
              v156 = 2112;
              v157 = v73;
              v158 = 1026;
              *v159 = 1;
              *&v159[4] = 2117;
              *&v159[6] = v34;
              _os_log_impl(&dword_2304B3000, v70, OS_LOG_TYPE_DEFAULT, "%@:%@, found technology (%{public}d): %{sensitive}@", buf, 0x26u);

              v32 = v145;
              v68 = v139;
            }

            v138 = 1;
          }

          if (!((v66 != 13) & ~v64 | v140 & 1))
          {
            v74 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
            if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
            {
              v75 = objc_opt_class();
              v76 = NSStringFromClass(v75);
              v77 = NSStringFromSelector(a2);
              *buf = 138413059;
              v155 = v76;
              v156 = 2112;
              v157 = v77;
              v158 = 1026;
              *v159 = 2;
              *&v159[4] = 2117;
              *&v159[6] = v34;
              _os_log_impl(&dword_2304B3000, v74, OS_LOG_TYPE_DEFAULT, "%@:%@, found technology (%{public}d): %{sensitive}@", buf, 0x26u);

              v32 = v145;
            }

            v140 = 1;
          }

          if (!(v135 & 1 | ((v137 & 1) == 0)))
          {
            v78 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
            if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
            {
              v79 = objc_opt_class();
              v80 = NSStringFromClass(v79);
              v81 = NSStringFromSelector(a2);
              *buf = 138413059;
              v155 = v80;
              v156 = 2112;
              v157 = v81;
              v158 = 1026;
              *v159 = 4;
              *&v159[4] = 2117;
              *&v159[6] = v34;
              _os_log_impl(&dword_2304B3000, v78, OS_LOG_TYPE_DEFAULT, "%@:%@, found technology (%{public}d): %{sensitive}@", buf, 0x26u);

              v32 = v145;
            }

            v135 = 1;
          }

          if (!(v136 & 1 | !v68))
          {
            v52 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
            if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
            {
              v82 = objc_opt_class();
              v83 = NSStringFromClass(v82);
              v84 = NSStringFromSelector(a2);
              *buf = 138413059;
              v155 = v83;
              v156 = 2112;
              v157 = v84;
              v158 = 1026;
              *v159 = 8;
              *&v159[4] = 2117;
              *&v159[6] = v34;
              _os_log_impl(&dword_2304B3000, v52, OS_LOG_TYPE_DEFAULT, "%@:%@, found technology (%{public}  d): %{sensitive}@", buf, 0x26u);
            }

            v136 = 0x100000001;
            goto LABEL_21;
          }

          BYTE4(v136) = 1;
        }
      }

      else
      {
        v131 = 1;
      }
    }

    v29 = [obj countByEnumeratingWithState:&v150 objects:v164 count:16];
    if (v29)
    {
      continue;
    }

    break;
  }

  v85 = 2;
  if (v138)
  {
    v85 = 3;
  }

  if (v140)
  {
    v86 = v85;
  }

  else
  {
    v86 = v138;
  }

  if (v135)
  {
    v11 = v142;
    v12 = v130;
    v87 = a6;
    if (v136)
    {
      v86 |= 0xCuLL;
    }

    else
    {
      v86 |= 4uLL;
    }

    goto LABEL_128;
  }

  v11 = v142;
  v12 = v130;
  v87 = a6;
  if (v136)
  {
    v86 |= 8uLL;
LABEL_128:
    v93 = 1;
    goto LABEL_82;
  }

  v93 = 0;
LABEL_82:
  v94 = [(RTAuthorizedLocationMetrics *)v149->_metrics queryMetrics];

  if (v94)
  {
    v95 = [(RTAuthorizedLocationMetrics *)v149->_metrics queryMetrics];
    [v95 setTechnologyAvailability:v86];
  }

  if (v87)
  {
    *v87 = v86;
  }

  if ((v136 & 0x100000000) == 0)
  {
    v98 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
    v99 = os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT);
    if (v141)
    {
      if (v99)
      {
        v100 = objc_opt_class();
        v101 = NSStringFromClass(v100);
        v102 = NSStringFromSelector(a2);
        *buf = 138412546;
        v155 = v101;
        v156 = 2112;
        v157 = v102;
        _os_log_impl(&dword_2304B3000, v98, OS_LOG_TYPE_DEFAULT, "%@:%@ rejection 7.", buf, 0x16u);
      }

      v92 = 0;
      v103 = 7;
    }

    else if (v131)
    {
      if (v99)
      {
        v108 = objc_opt_class();
        v109 = NSStringFromClass(v108);
        v110 = NSStringFromSelector(a2);
        *buf = 138412546;
        v155 = v109;
        v156 = 2112;
        v157 = v110;
        _os_log_impl(&dword_2304B3000, v98, OS_LOG_TYPE_DEFAULT, "%@:%@ rejection 8.", buf, 0x16u);
      }

      v92 = 0;
      v103 = 8;
    }

    else if (v148)
    {
      if (v99)
      {
        v117 = objc_opt_class();
        v118 = NSStringFromClass(v117);
        v119 = NSStringFromSelector(a2);
        *buf = 138412546;
        v155 = v118;
        v156 = 2112;
        v157 = v119;
        _os_log_impl(&dword_2304B3000, v98, OS_LOG_TYPE_DEFAULT, "%@:%@ rejection 10.", buf, 0x16u);
      }

      v92 = 0;
      v103 = 10;
    }

    else
    {
      if (v99)
      {
        v126 = objc_opt_class();
        v127 = NSStringFromClass(v126);
        v128 = NSStringFromSelector(a2);
        *buf = 138412546;
        v155 = v127;
        v156 = 2112;
        v157 = v128;
        _os_log_impl(&dword_2304B3000, v98, OS_LOG_TYPE_DEFAULT, "%@:%@ rejection 5.", buf, 0x16u);
      }

      v92 = 0;
      v103 = 5;
    }

    goto LABEL_123;
  }

  if ((v30 & 1) == 0)
  {
    v104 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
    if (os_log_type_enabled(v104, OS_LOG_TYPE_DEFAULT))
    {
      v105 = objc_opt_class();
      v106 = NSStringFromClass(v105);
      v107 = NSStringFromSelector(a2);
      *buf = 138412546;
      v155 = v106;
      v156 = 2112;
      v157 = v107;
      _os_log_impl(&dword_2304B3000, v104, OS_LOG_TYPE_DEFAULT, "%@:%@ rejection 6.", buf, 0x16u);
    }

    v92 = 0;
    v103 = 6;
LABEL_123:
    *a8 = v103;
    goto LABEL_124;
  }

  if (v138 & 1 | ((v140 & 1) == 0))
  {
    v96 = v140;
  }

  else
  {
    v96 = v93;
  }

  v97 = [v11 locationTechnologyAvailability] && (objc_msgSend(v11, "locationTechnologyAvailability") & 1) == 0 && (objc_msgSend(v11, "locationTechnologyAvailability") & 4) == 0;
  v111 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
  v112 = os_log_type_enabled(v111, OS_LOG_TYPE_DEFAULT);
  if (v96)
  {
    if (v112)
    {
      v113 = objc_opt_class();
      v114 = NSStringFromClass(v113);
      v115 = NSStringFromSelector(a2);
      v116 = [v11 locationTechnologyAvailability];
      *buf = 138413058;
      v155 = v114;
      v156 = 2112;
      v157 = v115;
      v158 = 1026;
      *v159 = v86;
      *&v159[4] = 1026;
      *&v159[6] = v116;
      _os_log_impl(&dword_2304B3000, v111, OS_LOG_TYPE_DEFAULT, "%@:%@ passed 11 (%{public}08x,%{public}08x)", buf, 0x22u);
    }

    v92 = 1;
  }

  else
  {
    if (v112)
    {
      v120 = objc_opt_class();
      v121 = NSStringFromClass(v120);
      v122 = NSStringFromSelector(a2);
      v123 = [v11 locationTechnologyAvailability];
      *buf = 138413058;
      v155 = v121;
      v156 = 2112;
      v157 = v122;
      v158 = 1026;
      *v159 = v86;
      *&v159[4] = 1026;
      *&v159[6] = v123;
      _os_log_impl(&dword_2304B3000, v111, OS_LOG_TYPE_DEFAULT, "%@:%@ rejection 11 (%{public}08x,%{public}08x)", buf, 0x22u);
    }

    v124 = [(RTAuthorizedLocationMetrics *)v149->_metrics queryMetrics];

    if (v124)
    {
      v125 = [(RTAuthorizedLocationMetrics *)v149->_metrics queryMetrics];
      [v125 setIsHistoricallyALowDiversityLocation:v97];
    }

    v92 = 0;
    *a8 = 11;
  }

  v32 = v145;
LABEL_124:

  return v92;
}

- (BOOL)_assertUserTimeAndTrustedTimeAreConsistent:(int64_t *)a3
{
  v35 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v5 = [(RTAuthorizedLocationManager *)self trustedTimeNow];
    if (v5)
    {
      v6 = [MEMORY[0x277CBEAA8] now];
      [v6 timeIntervalSinceDate:v5];
      v8 = v7;
      v9 = [(RTAuthorizedLocationMetrics *)self->_metrics queryMetrics];

      if (v9)
      {
        v10 = [(RTTrustedTimeCache *)self->_trustedTimeCache getApproximateTrustedDateNow];

        if (v10)
        {
          v11 = v8 / 3600.0;
        }

        else
        {
          v11 = 3.0;
        }

        v22 = [(RTAuthorizedLocationMetrics *)self->_metrics queryMetrics];
        *&v23 = v11;
        [v22 setUserTimeOffsetHours:v23];
      }

      if (fabs(v8) <= 36000.0)
      {
        v15 = 1;
LABEL_21:

        goto LABEL_22;
      }

      v24 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = objc_opt_class();
        v26 = NSStringFromClass(v25);
        v27 = NSStringFromSelector(a2);
        v29 = 138412802;
        v30 = v26;
        v31 = 2112;
        v32 = v27;
        v33 = 2050;
        v34 = v8;
        _os_log_impl(&dword_2304B3000, v24, OS_LOG_TYPE_DEFAULT, "%@:%@, rejection reason 1 (%{public}.1f).", &v29, 0x20u);
      }
    }

    else
    {
      v16 = [(RTAuthorizedLocationMetrics *)self->_metrics queryMetrics];

      if (v16)
      {
        v17 = [(RTAuthorizedLocationMetrics *)self->_metrics queryMetrics];
        LODWORD(v18) = -3.0;
        [v17 setUserTimeOffsetHours:v18];
      }

      v6 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v19 = objc_opt_class();
        v20 = NSStringFromClass(v19);
        v21 = NSStringFromSelector(a2);
        v29 = 138412546;
        v30 = v20;
        v31 = 2112;
        v32 = v21;
        _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_DEFAULT, "%@:%@, rejection reason 1 (unavailable).", &v29, 0x16u);
      }
    }

    v15 = 0;
    goto LABEL_21;
  }

  v5 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v14 = NSStringFromSelector(a2);
    v29 = 138412546;
    v30 = v13;
    v31 = 2112;
    v32 = v14;
    _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_DEFAULT, "%@:%@, invalid input error code.", &v29, 0x16u);
  }

  v15 = 0;
LABEL_22:

  return v15;
}

- (id)_getCurrentVisit
{
  v67[1] = *MEMORY[0x277D85DE8];
  v46 = [(RTAuthorizedLocationManager *)self trustedTimeNow];
  if (v46)
  {
    v3 = objc_alloc(MEMORY[0x277D01340]);
    v4 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D01470]];
    v5 = [MEMORY[0x277CBEB98] setWithObject:&unk_28459DB60];
    oslog = [v3 initWithAscending:0 confidence:v4 dateInterval:0 labelVisit:1 limit:&unk_28459DB48 sources:v5];

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v64 = __Block_byref_object_copy__53;
    v65 = __Block_byref_object_dispose__53;
    v66 = 0;
    v52 = 0;
    v53 = &v52;
    v54 = 0x3032000000;
    v55 = __Block_byref_object_copy__53;
    v56 = __Block_byref_object_dispose__53;
    v57 = 0;
    v6 = dispatch_semaphore_create(0);
    v7 = [(RTAuthorizedLocationManager *)self visitManager];
    v48[0] = MEMORY[0x277D85DD0];
    v48[1] = 3221225472;
    v48[2] = __47__RTAuthorizedLocationManager__getCurrentVisit__block_invoke;
    v48[3] = &unk_2788C4490;
    v50 = buf;
    v51 = &v52;
    v8 = v6;
    v49 = v8;
    [v7 fetchStoredVisitsWithOptions:oslog handler:v48];

    v9 = (*&buf[8] + 40);
    obj = *(*&buf[8] + 40);
    v10 = v8;
    v11 = [MEMORY[0x277CBEAA8] now];
    v12 = dispatch_time(0, 3600000000000);
    if (dispatch_semaphore_wait(v10, v12))
    {
      v13 = [MEMORY[0x277CBEAA8] now];
      [v13 timeIntervalSinceDate:v11];
      v15 = v14;
      v16 = objc_opt_new();
      v17 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_40];
      v18 = [MEMORY[0x277CCACC8] callStackSymbols];
      v19 = [v18 filteredArrayUsingPredicate:v17];
      v20 = [v19 firstObject];

      [v16 submitToCoreAnalytics:v20 type:1 duration:v15];
      v21 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
      {
        *v58 = 0;
        _os_log_fault_impl(&dword_2304B3000, v21, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v58, 2u);
      }

      v22 = MEMORY[0x277CCA9B8];
      v67[0] = *MEMORY[0x277CCA450];
      *v58 = @"semaphore wait timeout";
      v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v58 forKeys:v67 count:1];
      v24 = [v22 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v23];

      if (v24)
      {
        v25 = v24;

        obj = v24;
      }
    }

    objc_storeStrong(v9, obj);
    if (*(*&buf[8] + 40))
    {
      v26 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v40 = objc_opt_class();
        v41 = NSStringFromClass(v40);
        v42 = NSStringFromSelector(a2);
        v43 = *(*&buf[8] + 40);
        *v58 = 138412802;
        *&v58[4] = v41;
        v59 = 2112;
        v60 = v42;
        v61 = 2112;
        v62 = v43;
        _os_log_error_impl(&dword_2304B3000, v26, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", v58, 0x20u);
      }

      objc_storeStrong((*&buf[8] + 40), *(*&buf[8] + 40));
      v27 = 0;
    }

    else
    {
      if (v53[5])
      {
        v31 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          v32 = objc_opt_class();
          v33 = NSStringFromClass(v32);
          v34 = NSStringFromSelector(a2);
          v35 = v53[5];
          *v58 = 138412803;
          *&v58[4] = v33;
          v59 = 2112;
          v60 = v34;
          v61 = 2117;
          v62 = v35;
          _os_log_impl(&dword_2304B3000, v31, OS_LOG_TYPE_DEFAULT, "%@:%@ fetched visit %{sensitive}@.", v58, 0x20u);
        }
      }

      else
      {
        v31 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          v36 = objc_opt_class();
          v37 = NSStringFromClass(v36);
          v38 = NSStringFromSelector(a2);
          *v58 = 138412546;
          *&v58[4] = v37;
          v59 = 2112;
          v60 = v38;
          _os_log_impl(&dword_2304B3000, v31, OS_LOG_TYPE_DEFAULT, "%@:%@ no available visit, cannot compute settled time.", v58, 0x16u);
        }
      }

      v27 = v53[5];
    }

    _Block_object_dispose(&v52, 8);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    oslog = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v28 = objc_opt_class();
      v29 = NSStringFromClass(v28);
      v30 = NSStringFromSelector(a2);
      *buf = 138412546;
      *&buf[4] = v29;
      *&buf[12] = 2112;
      *&buf[14] = v30;
      _os_log_impl(&dword_2304B3000, oslog, OS_LOG_TYPE_DEFAULT, "%@:%@, failed to fetch trusted time now, cannot yield current visit.", buf, 0x16u);
    }

    v27 = 0;
  }

  return v27;
}

void __47__RTAuthorizedLocationManager__getCurrentVisit__block_invoke(uint64_t a1, void *a2, id obj)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), obj);
  v10 = obj;
  v6 = a2;
  v7 = [v6 firstObject];

  v8 = *(*(a1 + 48) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)_fetchCurrentLocationWithHandler:(id)a3
{
  v93[1] = *MEMORY[0x277D85DE8];
  v69 = a3;
  if (!v69)
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[RTAuthorizedLocationManager _fetchCurrentLocationWithHandler:]";
      *&buf[12] = 1024;
      *&buf[14] = 2266;
      _os_log_error_impl(&dword_2304B3000, v4, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

  v70 = [(RTAuthorizedLocationManager *)self trustedTimeNow];
  if (v70)
  {
    v68 = [[RTLocationRequestOptions alloc] initWithDesiredAccuracy:1 horizontalAccuracy:0 maxAge:100.0 yieldLastLocation:100.0 timeout:43200.0 fallback:1.5 fallbackHorizontalAccuracy:1.0 fallbackMaxAge:1.0];
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v90 = __Block_byref_object_copy__53;
    v91 = __Block_byref_object_dispose__53;
    v92 = 0;
    v76 = 0;
    v77 = &v76;
    v78 = 0x3032000000;
    v79 = __Block_byref_object_copy__53;
    v80 = __Block_byref_object_dispose__53;
    v81 = 0;
    v5 = dispatch_semaphore_create(0);
    locationManager = self->_locationManager;
    v72[0] = MEMORY[0x277D85DD0];
    v72[1] = 3221225472;
    v72[2] = __64__RTAuthorizedLocationManager__fetchCurrentLocationWithHandler___block_invoke;
    v72[3] = &unk_2788C8390;
    v74 = buf;
    v75 = &v76;
    v7 = v5;
    v73 = v7;
    [(RTLocationManager *)locationManager fetchCurrentLocationWithOptions:v68 handler:v72];
    v9 = (*&buf[8] + 40);
    v8 = *(*&buf[8] + 40);
    dsema = v7;
    v10 = [MEMORY[0x277CBEAA8] now];
    v11 = dispatch_time(0, 3600000000000);
    if (dispatch_semaphore_wait(dsema, v11))
    {
      v12 = [MEMORY[0x277CBEAA8] now];
      [v12 timeIntervalSinceDate:v10];
      v14 = v13;
      v15 = objc_opt_new();
      v16 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_40];
      v17 = [MEMORY[0x277CCACC8] callStackSymbols];
      v18 = [v17 filteredArrayUsingPredicate:v16];
      v19 = [v18 firstObject];

      [v15 submitToCoreAnalytics:v19 type:1 duration:v14];
      v20 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
      {
        *v82 = 0;
        _os_log_fault_impl(&dword_2304B3000, v20, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v82, 2u);
      }

      v21 = MEMORY[0x277CCA9B8];
      v93[0] = *MEMORY[0x277CCA450];
      *v82 = @"semaphore wait timeout";
      v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v82 forKeys:v93 count:1];
      v23 = [v21 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v22];

      if (v23)
      {
        v24 = v23;

        v8 = v23;
      }
    }

    objc_storeStrong(v9, v8);
    if (*(*&buf[8] + 40))
    {
      v25 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v59 = objc_opt_class();
        v60 = NSStringFromClass(v59);
        v61 = NSStringFromSelector(aSelectora);
        v62 = *(*&buf[8] + 40);
        *v82 = 138412802;
        *&v82[4] = v60;
        v83 = 2112;
        v84 = v61;
        v85 = 2114;
        v86 = v62;
        _os_log_error_impl(&dword_2304B3000, v25, OS_LOG_TYPE_ERROR, "%@:%@, failed to fetch location: %{public}@.", v82, 0x20u);
      }

      (*(v69 + 2))(v69, 0, *(*&buf[8] + 40));
    }

    else
    {
      if (v77[5])
      {
        v30 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          v31 = objc_opt_class();
          v32 = NSStringFromClass(v31);
          v33 = NSStringFromSelector(aSelectora);
          v34 = [v77[5] description];
          v35 = [v77[5] integrity];
          *v82 = 138413058;
          *&v82[4] = v32;
          v83 = 2112;
          v84 = v33;
          v85 = 2112;
          v86 = v34;
          v87 = 1026;
          LODWORD(v88) = v35;
          _os_log_impl(&dword_2304B3000, v30, OS_LOG_TYPE_DEFAULT, "%@:%@ fetched location: %@, integrity, %{public}d", v82, 0x26u);
        }

        v36 = [(RTAuthorizedLocationMetrics *)self->_metrics queryMetrics];

        if (v36)
        {
          v37 = [v77[5] timestamp];
          [v70 timeIntervalSinceDate:v37];
          v39 = v38;
          v40 = [(RTAuthorizedLocationMetrics *)self->_metrics queryMetrics];
          LODWORD(v41) = llround(v39 / 60.0);
          [v40 setLocationAgeMinutes:v41];
        }

        v42 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeInterval:v70 sinceDate:-43200.0];
        v43 = [v77[5] timestamp];
        v44 = [v43 isOnOrBefore:v42];

        if (v44)
        {
          v45 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
          if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
          {
            v46 = objc_opt_class();
            v47 = NSStringFromClass(v46);
            v48 = NSStringFromSelector(aSelectora);
            v49 = [v77[5] description];
            *v82 = 138413059;
            *&v82[4] = v47;
            v83 = 2112;
            v84 = v48;
            v85 = 2050;
            v86 = 0x40E5180000000000;
            v87 = 2117;
            v88 = v49;
            _os_log_impl(&dword_2304B3000, v45, OS_LOG_TYPE_DEFAULT, "%@:%@, most recent location is older than %{public}.0f seconds, %{sensitive}@.", v82, 0x2Au);
          }

          v50 = objc_alloc(MEMORY[0x277CCA9B8]);
          v51 = [v50 initWithDomain:*MEMORY[0x277D01448] code:5 userInfo:0];
          (*(v69 + 2))(v69, 0, v51);
        }

        else
        {
          v54 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
          if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
          {
            v55 = objc_opt_class();
            v56 = NSStringFromClass(v55);
            v57 = NSStringFromSelector(aSelectora);
            v58 = [v77[5] toVerboseString];
            *v82 = 138412803;
            *&v82[4] = v56;
            v83 = 2112;
            v84 = v57;
            v85 = 2117;
            v86 = v58;
            _os_log_impl(&dword_2304B3000, v54, OS_LOG_TYPE_DEFAULT, "%@:%@ fetched current location: %{sensitive}@", v82, 0x20u);
          }

          (*(v69 + 2))(v69, v77[5], 0);
        }
      }

      else
      {
        v52 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
        if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
        {
          v63 = objc_opt_class();
          v64 = NSStringFromClass(v63);
          v65 = NSStringFromSelector(aSelectora);
          *v82 = 138412546;
          *&v82[4] = v64;
          v83 = 2112;
          v84 = v65;
          _os_log_error_impl(&dword_2304B3000, v52, OS_LOG_TYPE_ERROR, "%@:%@, fetched nil location.", v82, 0x16u);
        }

        v53 = objc_alloc(MEMORY[0x277CCA9B8]);
        v42 = [v53 initWithDomain:*MEMORY[0x277D01448] code:5 userInfo:0];
        (*(v69 + 2))(v69, 0, v42);
      }
    }

    _Block_object_dispose(&v76, 8);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v26 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = objc_opt_class();
      v28 = NSStringFromClass(v27);
      v29 = NSStringFromSelector(aSelectora);
      *buf = 138412546;
      *&buf[4] = v28;
      *&buf[12] = 2112;
      *&buf[14] = v29;
      _os_log_impl(&dword_2304B3000, v26, OS_LOG_TYPE_DEFAULT, "%@:%@, failed to fetch trusted time now, not fetching current location.", buf, 0x16u);
    }

    (*(v69 + 2))(v69, 0, 0);
  }
}

void __64__RTAuthorizedLocationManager__fetchCurrentLocationWithHandler___block_invoke(uint64_t a1, void *a2, void *a3)
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

- (id)_assertWeAreAtAuthorizedLocation:(id)a3
{
  *(&v92[1] + 6) = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ([(NSArray *)self->_authorizedLocationArr count])
  {
    aSelector = a2;
    v6 = [v5 location];
    [v6 latitude];
    v8 = v7;
    v9 = [v5 location];
    [v9 longitude];
    v84 = CLLocationCoordinate2DMake(v8, v10);

    v83 = CLLocationCoordinate2DMake(0.0, 0.0);
    v11 = [v5 placeInference];
    if (v11 && (v12 = v11, [v5 placeInference], v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "mapItem"), v14 = objc_claimAutoreleasedReturnValue(), v14, v13, v12, v14))
    {
      v15 = [v5 placeInference];
      v16 = [v15 mapItem];
      v17 = [v16 location];
      [v17 latitude];
      v19 = v18;
      v20 = [v5 placeInference];
      v21 = [v20 mapItem];
      v22 = [v21 location];
      [v22 longitude];
      v24 = CLLocationCoordinate2DMake(v19, v23);
      v83 = v24;

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        v25 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          v72 = objc_opt_class();
          v73 = NSStringFromClass(v72);
          v74 = NSStringFromSelector(aSelector);
          *buf = 138413059;
          v86 = v73;
          v87 = 2112;
          v88 = v74;
          v89 = 2053;
          latitude = v24.latitude;
          v91 = 2053;
          v92[0] = *&v24.longitude;
          _os_log_debug_impl(&dword_2304B3000, v25, OS_LOG_TYPE_DEBUG, "%@:%@, also using visit map item (%{sensitive}.6f, %{sensitive}.6f)", buf, 0x2Au);
        }
      }

      v78 = 1;
    }

    else
    {
      v78 = 0;
    }

    v76 = v5;
    if ([(NSArray *)self->_authorizedLocationArr count])
    {
      v79 = 0;
      v27 = 0;
      v28 = 1000000000.0;
      *&v26 = 138412802;
      v75 = v26;
      while (1)
      {
        v29 = [(NSArray *)self->_authorizedLocationArr objectAtIndexedSubscript:v27, v75];
        v82.latitude = 0.0;
        v82.longitude = 0.0;
        v30 = [v29 loi];
        v31 = [v30 location];
        v32 = [v31 location];
        [v32 latitude];
        v34 = v33;
        v35 = [v29 loi];
        v36 = [v35 location];
        v37 = [v36 location];
        [v37 longitude];
        v82 = CLLocationCoordinate2DMake(v34, v38);

        distanceCalculator = self->_distanceCalculator;
        v81 = 0;
        [(RTDistanceCalculator *)distanceCalculator distanceFromLocationCoordinate:&v82 toLocationCoordinate:&v84 error:&v81];
        v41 = v40;
        v42 = v81;
        if (v42)
        {
          v43 = *&v42;
          v44 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
          if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
          {
            v52 = objc_opt_class();
            v53 = NSStringFromClass(v52);
            v54 = NSStringFromSelector(aSelector);
            *buf = v75;
            v86 = v53;
            v87 = 2112;
            v88 = v54;
            v89 = 2114;
            latitude = v43;
            _os_log_error_impl(&dword_2304B3000, v44, OS_LOG_TYPE_ERROR, "%@:%@, failed to compute distance: %{public}@.", buf, 0x20u);
          }

          goto LABEL_15;
        }

        if (!v78)
        {
          goto LABEL_23;
        }

        v45 = self->_distanceCalculator;
        v80 = 0;
        [(RTDistanceCalculator *)v45 distanceFromLocationCoordinate:&v82 toLocationCoordinate:&v83 error:&v80];
        v47 = v46;
        v48 = v80;
        if (v48)
        {
          v43 = *&v48;
          v49 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
          if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
          {
            v55 = objc_opt_class();
            v56 = NSStringFromClass(v55);
            v57 = NSStringFromSelector(aSelector);
            *buf = v75;
            v86 = v56;
            v87 = 2112;
            v88 = v57;
            v89 = 2114;
            latitude = v43;
            _os_log_error_impl(&dword_2304B3000, v49, OS_LOG_TYPE_ERROR, "%@:%@, failed to compute distance: %{public}@.", buf, 0x20u);
          }

          goto LABEL_24;
        }

        if (v47 < v41)
        {
          v43 = 0.0;
          v41 = v47;
        }

        else
        {
LABEL_23:
          v43 = 0.0;
        }

LABEL_24:
        if (v41 >= v28)
        {
          goto LABEL_28;
        }

        v50 = v29;

        v51 = [(RTAuthorizedLocationMetrics *)self->_metrics queryMetrics];

        if (!v51)
        {
          v28 = v41;
          v79 = v50;
          goto LABEL_28;
        }

        v44 = [(RTAuthorizedLocationMetrics *)self->_metrics queryMetrics];
        [v44 setLoiFamiliarityRank:(v27 + 1)];
        v28 = v41;
        v79 = v50;
LABEL_15:

LABEL_28:
        if (++v27 >= [(NSArray *)self->_authorizedLocationArr count])
        {
          goto LABEL_34;
        }
      }
    }

    v79 = 0;
    v28 = 1000000000.0;
LABEL_34:
    v63 = [(RTAuthorizedLocationMetrics *)self->_metrics queryMetrics];

    if (v63)
    {
      v65 = [(RTAuthorizedLocationMetrics *)self->_metrics queryMetrics];
      v64 = v28 / 400.0;
      *&v66 = v64;
      [v65 setNormalizedDistanceToCentroid:v66];
    }

    v67 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
    v5 = v76;
    if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
    {
      v68 = objc_opt_class();
      v69 = NSStringFromClass(v68);
      v70 = NSStringFromSelector(aSelector);
      *buf = 138413314;
      v86 = v69;
      v87 = 2112;
      v88 = v70;
      v89 = 2050;
      latitude = v28;
      v91 = 1026;
      LODWORD(v92[0]) = v28 < 400.0;
      WORD2(v92[0]) = 2050;
      *(v92 + 6) = 0x4079000000000000;
      _os_log_impl(&dword_2304B3000, v67, OS_LOG_TYPE_DEFAULT, "%@:%@ distance, %{public}.3f, matched, %{public}d, threshold %{public}.3f", buf, 0x30u);
    }

    if (v28 >= 400.0)
    {
      v62 = 0;
      v58 = v79;
    }

    else
    {
      v58 = v79;
      v62 = v79;
    }
  }

  else
  {
    v58 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
    if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
    {
      v59 = objc_opt_class();
      v60 = NSStringFromClass(v59);
      v61 = NSStringFromSelector(a2);
      *buf = 138412546;
      v86 = v60;
      v87 = 2112;
      v88 = v61;
      _os_log_impl(&dword_2304B3000, v58, OS_LOG_TYPE_DEFAULT, "%@:%@, no available authorized locations: is not considered at authorized location.", buf, 0x16u);
    }

    v62 = 0;
  }

  return v62;
}

- (void)_updateMostRecentDateAtWhichDeviceDataIsTrusted
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = [(RTAuthorizedLocationManager *)self trustedTimeNow];
  if (v4)
  {
    v5 = [(RTAuthorizedLocationManager *)self biometricsManager];
    v6 = [v5 updateDateOfLastSuccessfulBiometricAuthentication];

    if (v6)
    {
      v7 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeInterval:v6 sinceDate:-3600.0];
      mostRecentDateAtWhichDeviceDataIsTrusted = self->_mostRecentDateAtWhichDeviceDataIsTrusted;
      self->_mostRecentDateAtWhichDeviceDataIsTrusted = v7;
    }

    v13 = self->_mostRecentDateAtWhichDeviceDataIsTrusted;
    v14 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeInterval:v4 sinceDate:-604800.0];
    v15 = [(NSDate *)v13 laterDate:v14];
    v16 = self->_mostRecentDateAtWhichDeviceDataIsTrusted;
    self->_mostRecentDateAtWhichDeviceDataIsTrusted = v15;

    v10 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      v19 = NSStringFromSelector(a2);
      v20 = self->_mostRecentDateAtWhichDeviceDataIsTrusted;
      v21 = 138412802;
      v22 = v18;
      v23 = 2112;
      v24 = v19;
      v25 = 2114;
      v26 = v20;
      _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_DEFAULT, "%@:%@ Setting learning data age threshold to %{public}@", &v21, 0x20u);
    }

    goto LABEL_8;
  }

  v6 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = NSStringFromSelector(a2);
    v12 = self->_mostRecentDateAtWhichDeviceDataIsTrusted;
    v21 = 138412802;
    v22 = v10;
    v23 = 2112;
    v24 = v11;
    v25 = 2114;
    v26 = v12;
    _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_DEFAULT, "%@:%@, unable to fetch trustedNow, leaving _mostRecentDateAtWhichDeviceDataIsTrusted unchanged at %{public}@", &v21, 0x20u);

LABEL_8:
  }
}

- (void)_fetchAuthorizedLocationExtendedStatus:(id)a3
{
  v124 = *MEMORY[0x277D85DE8];
  v98 = a3;
  if (!v98)
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v114 = "[RTAuthorizedLocationManager _fetchAuthorizedLocationExtendedStatus:]";
      v115 = 1024;
      LODWORD(v116) = 2462;
      _os_log_error_impl(&dword_2304B3000, v4, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

  if (self->_isSupportedDevice)
  {
    if (self->_overrideAuthorizedLocationStatus)
    {
      [(RTAuthorizedLocationManager *)self _checkStatusOverrideDefault];
      overrideAuthorizedLocationStatus = self->_overrideAuthorizedLocationStatus;
      if (overrideAuthorizedLocationStatus)
      {
        v98[2](v98, overrideAuthorizedLocationStatus, -2, 0);
        goto LABEL_37;
      }
    }

    v100 = self;
    v112 = -1;
    -[RTAuthorizedLocationMetrics setLocationServicesEnabled:](self->_metrics, "setLocationServicesEnabled:", [MEMORY[0x277CBFC10] locationServicesEnabled]);
    [(RTAuthorizedLocationMetrics *)self->_metrics setRoutineEnabled:[(RTAuthorizedLocationManager *)self _isRoutineEnabled]];
    v6 = [(RTAuthorizedLocationManager *)self authLocConfirmationStatus];
    v7 = [v6 getAuthConfirmationStatusCode];
    v8 = [(RTAuthorizedLocationMetrics *)v100->_metrics queryMetrics];
    [v8 setLastConfirmationRejectionReasonCode:v7];

    v96 = [objc_alloc(MEMORY[0x277D01088]) initWithStatus:1];
    if (![(RTAuthorizedLocationManager *)v100 _assertUserTimeAndTrustedTimeAreConsistent:&v112])
    {
      v11 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = objc_opt_class();
        v13 = NSStringFromClass(v12);
        v14 = NSStringFromSelector(a2);
        *buf = 138412546;
        v114 = v13;
        v115 = 2112;
        v116 = v14;
        _os_log_impl(&dword_2304B3000, v11, OS_LOG_TYPE_DEFAULT, "%@:%@ rejection 1.", buf, 0x16u);
      }

      v112 = 1;
      v15 = [(RTAuthorizedLocationMetrics *)v100->_metrics queryMetrics];

      if (v15)
      {
        v16 = v112;
        v17 = [(RTAuthorizedLocationMetrics *)v100->_metrics queryMetrics];
        [v17 setRejectionReasonCode:v16];
      }

      v98[2](v98, v96, v112, 0);
      goto LABEL_36;
    }

    [(RTAuthorizedLocationManager *)v100 _updateMostRecentDateAtWhichDeviceDataIsTrusted];
    currentVisitCached = v100->_currentVisitCached;
    if (currentVisitCached)
    {
      v10 = currentVisitCached;
    }

    else
    {
      v18 = [(RTAuthorizedLocationManager *)v100 _getCurrentVisit];
      objc_storeStrong(&v100->_currentVisitCached, v18);
      v10 = v18;
      if (!v18)
      {
        v95 = 0;
        goto LABEL_30;
      }
    }

    v95 = v10;
    if ([(RTVisit *)v10 type])
    {
      if ([(RTVisit *)v95 type]!= 3)
      {
        v19 = [(RTVisit *)v95 entry];
        v20 = v19 == 0;

        if (!v20)
        {
          v21 = [(RTAuthorizedLocationMetrics *)v100->_metrics queryMetrics];

          if (v21)
          {
            v22 = [MEMORY[0x277CBEAA8] now];
            v23 = [(RTVisit *)v95 entry];
            [v22 timeIntervalSinceDate:v23];
            v25 = v24;
            v26 = [(RTAuthorizedLocationMetrics *)v100->_metrics queryMetrics];
            v27 = v25 / 60.0;
            *&v27 = v25 / 60.0;
            [v26 setVisitDwellMinutes:v27];
          }

          v106 = 0;
          v107 = &v106;
          v108 = 0x3032000000;
          v109 = __Block_byref_object_copy__53;
          v110 = __Block_byref_object_dispose__53;
          v111 = 0;
          v105[0] = MEMORY[0x277D85DD0];
          v105[1] = 3221225472;
          v105[2] = __70__RTAuthorizedLocationManager__fetchAuthorizedLocationExtendedStatus___block_invoke;
          v105[3] = &unk_2788C95B8;
          v105[4] = &v106;
          [(RTAuthorizedLocationManager *)v100 _curateAuthorizedLocationsWithHandler:v105];
          if (v107[5])
          {
            v28 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
            {
              v29 = objc_opt_class();
              v30 = NSStringFromClass(v29);
              v31 = NSStringFromSelector(a2);
              *buf = 138412546;
              v114 = v30;
              v115 = 2112;
              v116 = v31;
              _os_log_impl(&dword_2304B3000, v28, OS_LOG_TYPE_DEFAULT, "%@:%@ rejection 3.", buf, 0x16u);
            }

            v112 = 3;
            v32 = [(RTAuthorizedLocationMetrics *)v100->_metrics queryMetrics];

            if (v32)
            {
              v33 = v112;
              v34 = [(RTAuthorizedLocationMetrics *)v100->_metrics queryMetrics];
              [v34 setRejectionReasonCode:v33];
            }

            v98[2](v98, v96, v112, 0);
            goto LABEL_79;
          }

          v42 = [(RTAuthorizedLocationMetrics *)v100->_metrics queryMetrics];

          if (v42)
          {
            v43 = [(NSArray *)v100->_authorizedLocationArr count];
            v44 = [(RTAuthorizedLocationMetrics *)v100->_metrics queryMetrics];
            [v44 setNumFamiliarLois:v43];
          }

          if (![(NSArray *)v100->_authorizedLocationArr count])
          {
            v66 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
            if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
            {
              v67 = objc_opt_class();
              v68 = NSStringFromClass(v67);
              v69 = NSStringFromSelector(a2);
              *buf = 138412546;
              v114 = v68;
              v115 = 2112;
              v116 = v69;
              _os_log_impl(&dword_2304B3000, v66, OS_LOG_TYPE_DEFAULT, "%@:%@: rejection 4.", buf, 0x16u);
            }

            v112 = 4;
            v70 = [(RTAuthorizedLocationMetrics *)v100->_metrics queryMetrics];

            if (v70)
            {
              v71 = v112;
              v72 = [(RTAuthorizedLocationMetrics *)v100->_metrics queryMetrics];
              [v72 setRejectionReasonCode:v71];
            }

            v73 = [objc_alloc(MEMORY[0x277D01088]) initWithStatus:0];

            v98[2](v98, v73, v112, 0);
            v96 = v73;
            goto LABEL_79;
          }

          v103 = 0u;
          v104 = 0u;
          v101 = 0u;
          v102 = 0u;
          obj = v100->_authorizedLocationArr;
          v45 = [(NSArray *)obj countByEnumeratingWithState:&v101 objects:v123 count:16];
          if (v45)
          {
            v46 = *v102;
            do
            {
              for (i = 0; i != v45; ++i)
              {
                if (*v102 != v46)
                {
                  objc_enumerationMutation(obj);
                }

                v48 = *(*(&v101 + 1) + 8 * i);
                v49 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
                if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
                {
                  v50 = objc_opt_class();
                  v51 = NSStringFromClass(v50);
                  v52 = NSStringFromSelector(a2);
                  [v48 dwellTime_s];
                  v54 = v53;
                  v55 = [v48 numberOfDaysVisited];
                  v56 = [v48 loi];
                  *buf = 138413315;
                  v114 = v51;
                  v115 = 2112;
                  v116 = v52;
                  v117 = 2050;
                  v118 = v54;
                  v119 = 2050;
                  v120 = v55;
                  v121 = 2117;
                  v122 = v56;
                  _os_log_impl(&dword_2304B3000, v49, OS_LOG_TYPE_DEFAULT, "%@:%@, Authorized Locations: total visit dwell, %{public}.0f, number of unique days visited, %{public}ld, Authorized Location, %{sensitive}@.", buf, 0x34u);
                }
              }

              v45 = [(NSArray *)obj countByEnumeratingWithState:&v101 objects:v123 count:16];
            }

            while (v45);
          }

          v57 = [(RTAuthorizedLocationManager *)v100 _assertWeAreAtAuthorizedLocation:v95];
          if (v57)
          {
            if ([(RTAuthorizedLocationManager *)v100 _assertRecentLocationTechnologyQualityForAuthorizedLocation:v57 visit:v95 errorCode:&v112])
            {
              if ([(RTAuthorizedLocationManager *)v100 _assertRecentMotionActivityAndLocationHistoryAreConsistentForAuthorizedLocation:v57 visit:v95 errorCode:&v112])
              {
                v58 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
                if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
                {
                  v59 = objc_opt_class();
                  v60 = NSStringFromClass(v59);
                  v61 = NSStringFromSelector(a2);
                  *buf = 138412546;
                  v114 = v60;
                  v115 = 2112;
                  v116 = v61;
                  _os_log_impl(&dword_2304B3000, v58, OS_LOG_TYPE_DEFAULT, "%@:%@, confirmed at authorized location.", buf, 0x16u);
                }

                v62 = [objc_alloc(MEMORY[0x277D01088]) initWithStatus:2];
                v63 = [(RTAuthorizedLocationMetrics *)v100->_metrics queryMetrics];

                if (v63)
                {
                  v64 = [(RTAuthorizedLocationMetrics *)v100->_metrics queryMetrics];
                  [v64 setRejectionReasonCode:0];

                  v65 = [(RTAuthorizedLocationMetrics *)v100->_metrics queryMetrics];
                  [v65 setResponseValue:1];
                }

                v112 = 0;
                v98[2](v98, v62, 0, 0);
                v96 = v62;
                goto LABEL_78;
              }

              v88 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
              if (os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
              {
                v89 = objc_opt_class();
                v90 = NSStringFromClass(v89);
                v91 = NSStringFromSelector(a2);
                *buf = 138412546;
                v114 = v90;
                v115 = 2112;
                v116 = v91;
                _os_log_impl(&dword_2304B3000, v88, OS_LOG_TYPE_DEFAULT, "%@:%@, rejection 14.", buf, 0x16u);
              }

              v112 = 14;
              v92 = [(RTAuthorizedLocationMetrics *)v100->_metrics queryMetrics];

              if (v92)
              {
                v93 = v112;
                v94 = [(RTAuthorizedLocationMetrics *)v100->_metrics queryMetrics];
                [v94 setRejectionReasonCode:v93];
              }
            }

            else
            {
              v81 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
              if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
              {
                v82 = objc_opt_class();
                v83 = NSStringFromClass(v82);
                v84 = NSStringFromSelector(a2);
                *buf = 138412802;
                v114 = v83;
                v115 = 2112;
                v116 = v84;
                v117 = 1026;
                LODWORD(v118) = v112;
                _os_log_impl(&dword_2304B3000, v81, OS_LOG_TYPE_DEFAULT, "%@:%@, rejected by 5,7-12,code,%{public}d", buf, 0x1Cu);
              }

              v85 = [(RTAuthorizedLocationMetrics *)v100->_metrics queryMetrics];

              if (v85)
              {
                v86 = v112;
                v87 = [(RTAuthorizedLocationMetrics *)v100->_metrics queryMetrics];
                [v87 setRejectionReasonCode:v86];
              }
            }
          }

          else
          {
            v74 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
            if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
            {
              v75 = objc_opt_class();
              v76 = NSStringFromClass(v75);
              v77 = NSStringFromSelector(a2);
              *buf = 138412546;
              v114 = v76;
              v115 = 2112;
              v116 = v77;
              _os_log_impl(&dword_2304B3000, v74, OS_LOG_TYPE_DEFAULT, "%@:%@, rejection 6.", buf, 0x16u);
            }

            v112 = 6;
            v78 = [(RTAuthorizedLocationMetrics *)v100->_metrics queryMetrics];

            if (v78)
            {
              v79 = v112;
              v80 = [(RTAuthorizedLocationMetrics *)v100->_metrics queryMetrics];
              [v80 setRejectionReasonCode:v79];
            }
          }

          v98[2](v98, v96, v112, 0);
LABEL_78:

LABEL_79:
          _Block_object_dispose(&v106, 8);

LABEL_35:
LABEL_36:

          goto LABEL_37;
        }
      }
    }

LABEL_30:
    v35 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      v36 = objc_opt_class();
      v37 = NSStringFromClass(v36);
      v38 = NSStringFromSelector(a2);
      *buf = 138412546;
      v114 = v37;
      v115 = 2112;
      v116 = v38;
      _os_log_impl(&dword_2304B3000, v35, OS_LOG_TYPE_DEFAULT, "%@:%@ rejection 2.", buf, 0x16u);
    }

    v112 = 2;
    v39 = [(RTAuthorizedLocationMetrics *)v100->_metrics queryMetrics];

    if (v39)
    {
      v40 = v112;
      v41 = [(RTAuthorizedLocationMetrics *)v100->_metrics queryMetrics];
      [v41 setRejectionReasonCode:v40];
    }

    v98[2](v98, v96, v112, 0);
    goto LABEL_35;
  }

LABEL_37:
}

- (void)_initAtUserRequest
{
  v5 = objc_alloc_init(RTAuthorizedLocationQueryMetrics);
  [(RTAuthorizedLocationMetrics *)self->_metrics setQueryMetrics:v5];

  v6 = [(RTAuthorizedLocationMetrics *)self->_metrics queryMetrics];
  [v6 startTimer];

  v7 = [(RTAuthorizedLocationMetrics *)self->_metrics queryMetrics];
  [v7 setAuthorizedLocationConfirmationTriggerReason:4];

  v8 = [(RTAuthorizedLocationManager *)self dateOfLastAuthorizedLocationsUserRequest];
  if (v8)
  {
    v2 = [(RTAuthorizedLocationManager *)self trustedTimeNow];
    v3 = [(RTAuthorizedLocationManager *)self dateOfLastAuthorizedLocationsUserRequest];
    [v2 timeIntervalSinceDate:v3];
    v10 = v9;
  }

  else
  {
    v10 = -1.0;
  }

  v11 = [(RTAuthorizedLocationMetrics *)self->_metrics queryMetrics];
  [v11 setTimeSinceLastUserQuery:v10];

  if (v8)
  {
  }

  -[RTAuthorizedLocationMetrics setLocationServicesEnabled:](self->_metrics, "setLocationServicesEnabled:", [MEMORY[0x277CBFC10] locationServicesEnabled]);
  [(RTAuthorizedLocationMetrics *)self->_metrics setRoutineEnabled:[(RTAuthorizedLocationManager *)self _isRoutineEnabled]];
  self->_dateOfLastAuthorizedLocationsUserRequest = [(RTAuthorizedLocationManager *)self trustedTimeNow];

  MEMORY[0x2821F96F8]();
}

- (void)_fetchAuthorizedLocationStatusWithZdr:(id)a3
{
  v56 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = NSStringFromSelector(a2);
    *buf = 138412546;
    *&buf[4] = v8;
    *&buf[12] = 2112;
    *&buf[14] = v9;
    _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_DEFAULT, "%@:%@ request:", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v53 = __Block_byref_object_copy__53;
  v54 = __Block_byref_object_dispose__53;
  v55 = 0;
  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v45 = -1;
  v10 = MEMORY[0x277CCACA8];
  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  v13 = NSStringFromSelector(a2);
  v14 = [v10 stringWithFormat:@"%@-%@", v12, v13];
  v15 = v14;
  [v14 UTF8String];
  v16 = os_transaction_create();

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v17 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v37 = objc_opt_class();
      v38 = NSStringFromClass(v37);
      v39 = NSStringFromSelector(a2);
      *v50 = 138412546;
      *&v50[4] = v38;
      *&v50[12] = 2112;
      *&v50[14] = v39;
      _os_log_debug_impl(&dword_2304B3000, v17, OS_LOG_TYPE_DEBUG, "creating os_transaction, %@, %@", v50, 0x16u);
    }
  }

  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __69__RTAuthorizedLocationManager__fetchAuthorizedLocationStatusWithZdr___block_invoke;
  v41[3] = &unk_2788C95E0;
  v41[4] = self;
  v41[5] = buf;
  v41[6] = &v42;
  v41[7] = a2;
  [(RTAuthorizedLocationManager *)self _fetchAuthorizedLocationExtendedStatus:v41];
  *v50 = 0;
  *&v50[8] = v50;
  *&v50[16] = 0x2020000000;
  v51 = 1;
  v18 = [(RTAuthorizedLocationManager *)self zdrLocationManager];

  if (v18)
  {
    v19 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = objc_opt_class();
      v21 = NSStringFromClass(v20);
      v22 = NSStringFromSelector(a2);
      *v46 = 138412546;
      v47 = v21;
      v48 = 2112;
      v49 = v22;
      _os_log_impl(&dword_2304B3000, v19, OS_LOG_TYPE_DEFAULT, "%@:%@ ZDR Request", v46, 0x16u);
    }

    v23 = [(RTAuthorizedLocationManager *)self zdrLocationManager];
    v24 = [(RTAuthorizedLocationManager *)self currentVisitCached];
    v25 = [(RTAuthorizedLocationManager *)self authorizedLocationArr];
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __69__RTAuthorizedLocationManager__fetchAuthorizedLocationStatusWithZdr___block_invoke_145;
    v40[3] = &unk_2788C9608;
    v40[4] = self;
    v40[5] = v50;
    v40[6] = a2;
    [v23 fetchZDRLocationStatus:v24 fullSecurityAloiList:v25 handler:v40];
  }

  v26 = *(*&buf[8] + 40);
  if (v26)
  {
    v27 = v26;
  }

  else
  {
    v27 = [objc_alloc(MEMORY[0x277D01088]) initWithStatus:0];
    v28 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v29 = objc_opt_class();
      v30 = NSStringFromClass(v29);
      v31 = NSStringFromSelector(a2);
      *v46 = 138412546;
      v47 = v30;
      v48 = 2112;
      v49 = v31;
      _os_log_impl(&dword_2304B3000, v28, OS_LOG_TYPE_DEFAULT, "%@:%@ full confirmation could not be computed", v46, 0x16u);
    }
  }

  if ([v27 eStatus] != 2)
  {
    if (*(*&v50[8] + 24) == 1)
    {
      v32 = [objc_alloc(MEMORY[0x277D01088]) initWithStatus:3];

      v27 = v32;
    }

    v33 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      v34 = objc_opt_class();
      v35 = NSStringFromClass(v34);
      v36 = NSStringFromSelector(a2);
      *v46 = 138412546;
      v47 = v35;
      v48 = 2112;
      v49 = v36;
      _os_log_impl(&dword_2304B3000, v33, OS_LOG_TYPE_DEFAULT, "%@:%@ user responded with confirmed at ZDR loc", v46, 0x16u);
    }
  }

  v5[2](v5, v27, v43[3], 0);

  _Block_object_dispose(v50, 8);
  _Block_object_dispose(&v42, 8);
  _Block_object_dispose(buf, 8);
}

void __69__RTAuthorizedLocationManager__fetchAuthorizedLocationStatusWithZdr___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a2;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  *(*(*(a1 + 48) + 8) + 24) = a3;
  v7 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = NSStringFromSelector(*(a1 + 56));
    v11 = *(*(*(a1 + 40) + 8) + 40);
    v12 = *(*(*(a1 + 48) + 8) + 24);
    v15 = 138413058;
    v16 = v9;
    v17 = 2112;
    v18 = v10;
    v19 = 2114;
    v20 = v11;
    v21 = 2050;
    v22 = v12;
    _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_DEFAULT, "%@:%@ Full confirmation Response,fullConfirmationStatus,%{public}@,reasonCode,%{public}lu", &v15, 0x2Au);
  }

  v13 = [*(a1 + 32) authLocConfirmationStatus];
  v14 = [*(a1 + 32) trustedTimeNow];
  [v13 setAuthConfirmationStatusToCacheInfo:v6 statusCode:a3 timestamp:v14];

  [*(a1 + 32) _storeConfirmationStatusToDisk];
}

uint64_t __69__RTAuthorizedLocationManager__fetchAuthorizedLocationStatusWithZdr___block_invoke_145(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = NSStringFromSelector(*(a1 + 48));
    v13 = 138413058;
    v14 = v8;
    v15 = 2112;
    v16 = v9;
    v17 = 2050;
    v18 = a2;
    v19 = 2050;
    v20 = a3;
    _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_DEFAULT, "%@:%@ ZDR Response,zdrStatus,%{public}lu,zdrStatusCode,%{public}lu", &v13, 0x2Au);
  }

  *(*(*(a1 + 40) + 8) + 24) = a2;
  v10 = [*(a1 + 32) authLocConfirmationStatus];
  v11 = [*(a1 + 32) trustedTimeNow];
  [v10 setZDRStatusToCacheInfo:a2 zdrStatusCode:a3 zdrTimestamp:v11];

  return [*(a1 + 32) _storeConfirmationStatusToDisk];
}

- (void)_fetchAuthorizedLocationExtendedStatusWithMetrics:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (self->_isSupportedDevice)
  {
    if (self->_overrideAuthorizedLocationStatus && ([(RTAuthorizedLocationManager *)self _checkStatusOverrideDefault], self->_overrideAuthorizedLocationStatus))
    {
      v6 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = objc_opt_class();
        v8 = NSStringFromClass(v7);
        v9 = NSStringFromSelector(a2);
        *buf = 138412546;
        v15 = v8;
        v16 = 2112;
        v17 = v9;
        _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_DEFAULT, "%@:%@ user request: override defaults.", buf, 0x16u);
      }

      v5[2](v5, self->_overrideAuthorizedLocationStatus, -2, 0);
    }

    else
    {
      v10 = [(RTNotifier *)self queue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __81__RTAuthorizedLocationManager__fetchAuthorizedLocationExtendedStatusWithMetrics___block_invoke;
      block[3] = &unk_2788C6300;
      block[4] = self;
      v13 = a2;
      v12 = v5;
      dispatch_async(v10, block);
    }
  }
}

void __81__RTAuthorizedLocationManager__fetchAuthorizedLocationExtendedStatusWithMetrics___block_invoke(uint64_t a1)
{
  v61 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) _isLocationServiceEnabled])
  {
    [*(a1 + 32) _initAtUserRequest];
    v2 = [*(a1 + 32) trustedTimeNow];
    v3 = [*(a1 + 32) authLocConfirmationStatus];
    v4 = [v3 getAuthLocConfirmationComputedTime];
    [v2 timeIntervalSinceDate:v4];
    v6 = v5;

    if (v6 > 3600.0)
    {
      v9 = 0;
    }

    else
    {
      v7 = [*(a1 + 32) authLocConfirmationStatus];
      v8 = [v7 getAuthConfirmationStatus];
      v9 = [v8 eStatus] == 2;
    }

    v15 = [*(a1 + 32) trustedTimeNow];
    v16 = [*(a1 + 32) authLocConfirmationStatus];
    v17 = [v16 getZDRLocationStatusComputationTime];
    [v15 timeIntervalSinceDate:v17];
    v19 = v18;

    if (v19 > 3600.0)
    {
      v21 = 0;
    }

    else
    {
      v20 = [*(a1 + 32) authLocConfirmationStatus];
      v21 = [v20 getZDRLocationStatus] == 1;
    }

    v22 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = objc_opt_class();
      v24 = NSStringFromClass(v23);
      v25 = NSStringFromSelector(*(a1 + 48));
      *buf = 138413571;
      v50 = v24;
      v51 = 2112;
      v52 = v25;
      v53 = 1024;
      v54 = v6 <= 3600.0;
      v55 = 1025;
      v56 = v9;
      v57 = 1026;
      v58 = v19 <= 3600.0;
      v59 = 1026;
      v60 = v21;
      _os_log_impl(&dword_2304B3000, v22, OS_LOG_TYPE_DEFAULT, "%@:%@ user request: status is fresh,isFullSecurityConfirmationCacheFresh,%{privated}d,isFullSecurityConfirmationCacheStatusSuccess,%{private}d,isReducedSecurityConfirmationCacheFresh,%{public}d,isReducedSecurityConfirmationCacheStatusSuccess,%{public}d", buf, 0x2Eu);
    }

    if (v9)
    {
      v14 = [objc_alloc(MEMORY[0x277D01088]) initWithStatus:2];
      (*(*(a1 + 40) + 16))();
      v26 = [*(*(a1 + 32) + 192) queryMetrics];

      if (!v26)
      {
        v27 = objc_alloc_init(RTAuthorizedLocationQueryMetrics);
        [*(*(a1 + 32) + 192) setQueryMetrics:v27];
      }

      v28 = [*(*(a1 + 32) + 192) queryMetrics];

      if (v28)
      {
        v29 = [*(*(a1 + 32) + 192) queryMetrics];
        [v29 setResponseValue:1];

        v30 = [*(*(a1 + 32) + 192) queryMetrics];
        [v30 setRejectionReasonCode:0];
      }

      v31 = [*(*(a1 + 32) + 192) zdrLocationsLiveMetrics];

      if (!v31)
      {
        v32 = objc_alloc_init(RTAuthorizedLocationZDRLocationLiveMetrics);
        [*(*(a1 + 32) + 192) setZdrLocationsLiveMetrics:v32];
      }

      v33 = [*(*(a1 + 32) + 192) zdrLocationsLiveMetrics];

      if (v33)
      {
        v34 = [*(a1 + 32) authLocConfirmationStatus];
        v35 = [v34 getZDRLocationStatus];
        v36 = [*(*(a1 + 32) + 192) zdrLocationsLiveMetrics];
        [v36 setZdrConfirmationStatus:v35];

        v37 = [*(a1 + 32) authLocConfirmationStatus];
        v38 = [v37 getZDRLocationStatusCode];
        v39 = [*(*(a1 + 32) + 192) zdrLocationsLiveMetrics];
        [v39 setZdrConfirmationStatusCode:v38];
      }

      [*(a1 + 32) _submitMetrics];
    }

    else
    {
      if (v21)
      {
        v14 = [objc_alloc(MEMORY[0x277D01088]) initWithStatus:3];
        (*(*(a1 + 40) + 16))();
      }

      else
      {
        v14 = 0;
      }

      v43 = MEMORY[0x277D85DD0];
      v44 = 3221225472;
      v45 = __81__RTAuthorizedLocationManager__fetchAuthorizedLocationExtendedStatusWithMetrics___block_invoke_148;
      v46 = &unk_2788C9630;
      v48 = v21;
      v40 = *(a1 + 32);
      v47 = *(a1 + 40);
      [v40 _fetchAuthorizedLocationStatusWithZdr:&v43];
      v41 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        v42 = [*(*(a1 + 32) + 192) convertToDictionary];
        *buf = 138739971;
        v50 = v42;
        _os_log_impl(&dword_2304B3000, v41, OS_LOG_TYPE_DEFAULT, "Metric, query, %{sensitive}@", buf, 0xCu);
      }

      [*(a1 + 32) _submitMetrics];
    }
  }

  else
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v13 = NSStringFromSelector(*(a1 + 48));
      *buf = 138412546;
      v50 = v12;
      v51 = 2112;
      v52 = v13;
      _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_DEFAULT, "%@:%@ LocationServices is disabled", buf, 0x16u);
    }

    v14 = [objc_alloc(MEMORY[0x277D01088]) initWithStatus:0];
    (*(*(a1 + 40) + 16))();
  }
}

uint64_t __81__RTAuthorizedLocationManager__fetchAuthorizedLocationExtendedStatusWithMetrics___block_invoke_148(uint64_t result)
{
  if ((*(result + 40) & 1) == 0)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

- (void)fetchAuthorizedLocationExtendedStatus:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5)
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v13 = "[RTAuthorizedLocationManager fetchAuthorizedLocationExtendedStatus:]";
      v14 = 1024;
      v15 = 2776;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

  v7 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__RTAuthorizedLocationManager_fetchAuthorizedLocationExtendedStatus___block_invoke;
  block[3] = &unk_2788C6300;
  block[4] = self;
  v10 = v5;
  v11 = a2;
  v8 = v5;
  dispatch_async(v7, block);
}

void __69__RTAuthorizedLocationManager_fetchAuthorizedLocationExtendedStatus___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (_os_feature_enabled_impl() && (v2 = *(a1 + 32), v2[32] == 1))
  {
    v3 = *(a1 + 40);

    [v2 _fetchAuthorizedLocationExtendedStatusWithMetrics:v3];
  }

  else
  {
    v4 = [objc_alloc(MEMORY[0x277D01088]) initWithStatus:0];
    v5 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = NSStringFromSelector(*(a1 + 48));
      v9 = 138412546;
      v10 = v7;
      v11 = 2112;
      v12 = v8;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_DEFAULT, "%@:%@ feature not enabled or device not supported.", &v9, 0x16u);
    }

    (*(*(a1 + 40) + 16))();
  }
}

- (void)fetchAuthorizedLocationDetailedStatus:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5)
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v13 = "[RTAuthorizedLocationManager fetchAuthorizedLocationDetailedStatus:]";
      v14 = 1024;
      v15 = 2792;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

  v7 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__RTAuthorizedLocationManager_fetchAuthorizedLocationDetailedStatus___block_invoke;
  block[3] = &unk_2788C6300;
  v10 = v5;
  v11 = a2;
  block[4] = self;
  v8 = v5;
  dispatch_async(v7, block);
}

void __69__RTAuthorizedLocationManager_fetchAuthorizedLocationDetailedStatus___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  if (_os_feature_enabled_impl() && (v2 = *(a1 + 32), v2[32] == 1))
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __69__RTAuthorizedLocationManager_fetchAuthorizedLocationDetailedStatus___block_invoke_2;
    v10[3] = &unk_2788C9658;
    v10[4] = v2;
    v9 = *(a1 + 40);
    v3 = v9;
    v11 = v9;
    [v2 fetchAuthorizedLocationExtendedStatus:v10];
  }

  else
  {
    v4 = [objc_alloc(MEMORY[0x277D01088]) initWithStatus:0];
    v5 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = NSStringFromSelector(*(a1 + 48));
      *buf = 138412546;
      v13 = v7;
      v14 = 2112;
      v15 = v8;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_DEFAULT, "%@:%@ feature not enabled or device not supported.", buf, 0x16u);
    }

    (*(*(a1 + 40) + 16))();
  }
}

void __69__RTAuthorizedLocationManager_fetchAuthorizedLocationDetailedStatus___block_invoke_2(uint64_t a1, void *a2, int a3)
{
  v51 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = NSStringFromSelector(*(a1 + 48));
    *buf = 138413058;
    v34 = v8;
    v35 = 2112;
    v36 = v9;
    v37 = 2114;
    v38 = v5;
    v39 = 1026;
    LODWORD(v40) = a3;
    _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_DEFAULT, "%@:%@ Confirmation, confirmationStatus,%{public}@,confirmationStatusCode,%{public}d", buf, 0x26u);
  }

  v10 = objc_alloc(MEMORY[0x277D01088]);
  v11 = [*(a1 + 32) authLocConfirmationStatus];
  v12 = [v11 getAuthConfirmationStatus];
  v13 = [v10 initWithStatus:{objc_msgSend(v12, "eStatus")}];

  v14 = [*(a1 + 32) authLocConfirmationStatus];
  v15 = [v14 getAuthConfirmationStatusCode];

  v16 = [*(a1 + 32) authLocConfirmationStatus];
  v17 = [v16 getZDRLocationStatus];

  v18 = [*(a1 + 32) authLocConfirmationStatus];
  v19 = [v18 getZDRLocationStatusCode];

  v20 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = objc_opt_class();
    NSStringFromClass(v21);
    v22 = v32 = v19;
    NSStringFromSelector(*(a1 + 48));
    v23 = v31 = v13;
    v24 = [*(a1 + 32) trustedTimeNow];
    v29 = [*(a1 + 32) authLocConfirmationStatus];
    v30 = v5;
    v25 = [v29 getAuthLocConfirmationComputedTime];
    v26 = [*(a1 + 32) authLocConfirmationStatus];
    [v26 getZDRLocationStatusComputationTime];
    v28 = v27 = v15;
    *buf = 138414338;
    v34 = v22;
    v35 = 2112;
    v36 = v23;
    v37 = 2114;
    v38 = v24;
    v39 = 2114;
    v40 = v31;
    v41 = 2050;
    v42 = v27;
    v43 = 2114;
    v44 = v25;
    v45 = 1026;
    v46 = v17;
    v47 = 1026;
    v48 = v32;
    v49 = 2114;
    v50 = v28;
    _os_log_impl(&dword_2304B3000, v20, OS_LOG_TYPE_DEFAULT, "%@:%@ CurTime,%{public}@,confirmation Status,%{public}@,reasonCode,%{public}ld,statusTime,%{public}@,zdrStatus,%{public}d,zdrStatusCode,%{public}d,zdrStatusTime,%{public}@", buf, 0x54u);

    v5 = v30;
    v13 = v31;
  }

  (*(*(a1 + 40) + 16))();
}

- (void)fetchAuthorizedLocationCachedStatus:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5)
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v14 = 136315394;
      v15 = "[RTAuthorizedLocationManager fetchAuthorizedLocationCachedStatus:]";
      v16 = 1024;
      LODWORD(v17) = 2817;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", &v14, 0x12u);
    }
  }

  if (_os_feature_enabled_impl() && self->_isSupportedDevice)
  {
    v7 = [(RTAuthorizedLocationManager *)self authLocConfirmationStatus];
    v8 = [v7 getAuthConfirmationStatus];
    v9 = [(RTAuthorizedLocationManager *)self authLocConfirmationStatus];
    v5[2](v5, v8, [v9 getAuthConfirmationStatusCode], 0);
  }

  else
  {
    v7 = [objc_alloc(MEMORY[0x277D01088]) initWithStatus:0];
    v10 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v13 = NSStringFromSelector(a2);
      v14 = 138412546;
      v15 = v12;
      v16 = 2112;
      v17 = v13;
      _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_DEFAULT, "%@:%@ feature not enabled or device not supported.", &v14, 0x16u);
    }

    v5[2](v5, v7, -1, 0);
  }
}

- (void)_fetchAuthorizedLocations:(id)a3
{
  v46 = *MEMORY[0x277D85DE8];
  v28 = a3;
  if (!v28)
  {
    v4 = self;
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v42 = 136315394;
      *&v42[4] = "[RTAuthorizedLocationManager _fetchAuthorizedLocations:]";
      *&v42[12] = 1024;
      *&v42[14] = 2831;
      _os_log_error_impl(&dword_2304B3000, v5, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", v42, 0x12u);
    }

    self = v4;
  }

  [(RTAuthorizedLocationManager *)self _updateMostRecentDateAtWhichDeviceDataIsTrusted];
  *v42 = 0;
  *&v42[8] = v42;
  *&v42[16] = 0x3032000000;
  v43 = __Block_byref_object_copy__53;
  v44 = __Block_byref_object_dispose__53;
  v45 = 0;
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __57__RTAuthorizedLocationManager__fetchAuthorizedLocations___block_invoke;
  v34[3] = &unk_2788C95B8;
  v34[4] = v42;
  [(RTAuthorizedLocationManager *)self _curateAuthorizedLocationsWithHandler:v34];
  if (*(*&v42[8] + 40))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = NSStringFromSelector(a2);
      v10 = *(*&v42[8] + 40);
      *buf = 138412802;
      v36 = v8;
      v37 = 2112;
      v38 = v9;
      v39 = 2114;
      v40 = v10;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_DEFAULT, "%@:%@, error curating authorized locations: %{public}@", buf, 0x20u);
    }

    (*(v28 + 2))(v28, 0, 0);
  }

  else
  {
    v11 = [MEMORY[0x277CBEB18] array];
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v12 = self->_authorizedLocationArr;
    v13 = [(NSArray *)v12 countByEnumeratingWithState:&v30 objects:v41 count:16];
    if (v13)
    {
      v14 = *v31;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v31 != v14)
          {
            objc_enumerationMutation(v12);
          }

          v16 = *(*(&v30 + 1) + 8 * i);
          v17 = [v16 loi];
          [v11 addObject:v17];

          v18 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            v19 = objc_opt_class();
            v20 = NSStringFromClass(v19);
            v21 = NSStringFromSelector(a2);
            *buf = 138412803;
            v36 = v20;
            v37 = 2112;
            v38 = v21;
            v39 = 2117;
            v40 = v16;
            _os_log_impl(&dword_2304B3000, v18, OS_LOG_TYPE_DEFAULT, "%@:%@: Authorized Locations: %{sensitive}@.", buf, 0x20u);
          }
        }

        v13 = [(NSArray *)v12 countByEnumeratingWithState:&v30 objects:v41 count:16];
      }

      while (v13);
    }

    v22 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = objc_opt_class();
      v24 = NSStringFromClass(v23);
      v25 = NSStringFromSelector(a2);
      v26 = [v11 count];
      *buf = 138412802;
      v36 = v24;
      v37 = 2112;
      v38 = v25;
      v39 = 2048;
      v40 = v26;
      _os_log_impl(&dword_2304B3000, v22, OS_LOG_TYPE_DEFAULT, "%@:%@ Returning %zu available authorized locations.", buf, 0x20u);
    }

    v27 = [MEMORY[0x277D01170] locationsOfInterestFromLearnedLocationsOfInterest:v11];
    (*(v28 + 2))(v28, v27, 0);
  }

  _Block_object_dispose(v42, 8);
}

- (void)fetchAuthorizedLocations:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5)
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v16 = "[RTAuthorizedLocationManager fetchAuthorizedLocations:]";
      v17 = 1024;
      LODWORD(v18) = 2861;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

  if (_os_feature_enabled_impl() && self->_isSupportedDevice)
  {
    v7 = [(RTNotifier *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __56__RTAuthorizedLocationManager_fetchAuthorizedLocations___block_invoke;
    block[3] = &unk_2788C6300;
    block[4] = self;
    v14 = a2;
    v13 = v5;
    dispatch_async(v7, block);
  }

  else
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = NSStringFromSelector(a2);
      *buf = 138412546;
      v16 = v10;
      v17 = 2112;
      v18 = v11;
      _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_DEFAULT, "%@:%@: feature not enabled or device not supported.", buf, 0x16u);
    }

    (*(v5 + 2))(v5, 0, 0);
  }
}

void __56__RTAuthorizedLocationManager_fetchAuthorizedLocations___block_invoke(uint64_t a1)
{
  v47 = *MEMORY[0x277D85DE8];
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__53;
  v37 = __Block_byref_object_dispose__53;
  v38 = [MEMORY[0x277CBEB18] array];
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__53;
  v31 = __Block_byref_object_dispose__53;
  v32 = [MEMORY[0x277CBEB18] array];
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__53;
  v25 = __Block_byref_object_dispose__53;
  v26 = 0;
  v2 = *(a1 + 32);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __56__RTAuthorizedLocationManager_fetchAuthorizedLocations___block_invoke_2;
  v20[3] = &unk_2788C9680;
  v20[4] = &v21;
  v20[5] = &v33;
  [v2 _fetchAuthorizedLocations:v20];
  if (v22[5])
  {
    v3 = v34[5];
    v34[5] = 0;
  }

  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__53;
  v18 = __Block_byref_object_dispose__53;
  v19 = 0;
  v4 = *(a1 + 32);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __56__RTAuthorizedLocationManager_fetchAuthorizedLocations___block_invoke_3;
  v13[3] = &unk_2788C9680;
  v13[4] = &v14;
  v13[5] = &v27;
  [v4 _fetchZDRLocations:v13];
  if (v15[5])
  {
    v5 = v28[5];
    v28[5] = 0;
  }

  v6 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = NSStringFromSelector(*(a1 + 48));
    v10 = [v34[5] count];
    v11 = [v28[5] count];
    *buf = 138413058;
    v40 = v8;
    v41 = 2112;
    v42 = v9;
    v43 = 2050;
    v44 = v10;
    v45 = 2050;
    v46 = v11;
    _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_DEFAULT, "%@:%@: authorizedLocationsList.count,%{public}lu,zdrLocationsList.count,%{public}lu", buf, 0x2Au);
  }

  v12 = objc_alloc_init(MEMORY[0x277D01080]);
  [v12 setFullConfirmationList:v34[5]];
  [v12 setZdrConfirmationList:v28[5]];
  (*(*(a1 + 40) + 16))();

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v21, 8);

  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v33, 8);
}

void __56__RTAuthorizedLocationManager_fetchAuthorizedLocations___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  if (!v5)
  {
    [*(*(*(a1 + 40) + 8) + 40) addObjectsFromArray:v6];
  }
}

void __56__RTAuthorizedLocationManager_fetchAuthorizedLocations___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  if (!v5)
  {
    [*(*(*(a1 + 40) + 8) + 40) addObjectsFromArray:v6];
  }
}

- (void)_runEraseInstallDatabaseInitialization:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = MEMORY[0x277CCACA8];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = NSStringFromSelector(a2);
  v10 = [v6 stringWithFormat:@"%@-%@", v8, v9];
  [v10 UTF8String];
  v11 = os_transaction_create();
  [(RTAuthorizedLocationManager *)self setEraseInstallInitTransaction:v11];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v20 = objc_opt_class();
      v21 = NSStringFromClass(v20);
      v22 = NSStringFromSelector(a2);
      *buf = 138412546;
      v27 = v21;
      v28 = 2112;
      v29 = v22;
      _os_log_debug_impl(&dword_2304B3000, v12, OS_LOG_TYPE_DEBUG, "creating os_transaction, %@, %@", buf, 0x16u);
    }
  }

  v13 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    v16 = NSStringFromSelector(a2);
    eraseInstallDatabaseInitializationAttemptCount = self->_eraseInstallDatabaseInitializationAttemptCount;
    *buf = 138412802;
    v27 = v15;
    v28 = 2112;
    v29 = v16;
    v30 = 1026;
    v31 = eraseInstallDatabaseInitializationAttemptCount;
    _os_log_impl(&dword_2304B3000, v13, OS_LOG_TYPE_DEFAULT, "%@:%@: started, attempt count, %{public}d.", buf, 0x1Cu);
  }

  persistenceMirroringManager = self->_persistenceMirroringManager;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __70__RTAuthorizedLocationManager__runEraseInstallDatabaseInitialization___block_invoke;
  v23[3] = &unk_2788C56C0;
  v24 = v5;
  v25 = a2;
  v23[4] = self;
  v19 = v5;
  [(RTPersistenceMirroringManager *)persistenceMirroringManager performPeriodicSyncWithHandler:v23];
}

void __70__RTAuthorizedLocationManager__runEraseInstallDatabaseInitialization___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = NSStringFromSelector(*(a1 + 48));
    *buf = 138412802;
    v15 = v6;
    v16 = 2112;
    v17 = v7;
    v18 = 2114;
    v19 = v3;
    _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_DEFAULT, "%@:%@: sync executed, error: %{public}@.", buf, 0x20u);
  }

  if (!v3)
  {
    v8 = *(a1 + 32);
    v9 = *(v8 + 88);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __70__RTAuthorizedLocationManager__runEraseInstallDatabaseInitialization___block_invoke_153;
    v12[3] = &unk_2788C56C0;
    v12[4] = v8;
    v11 = *(a1 + 40);
    v10 = v11;
    v13 = v11;
    [v9 trainForReason:1 mode:1 handler:v12];
  }
}

void __70__RTAuthorizedLocationManager__runEraseInstallDatabaseInitialization___block_invoke_153(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = NSStringFromSelector(*(a1 + 48));
    *buf = 138412802;
    *&buf[4] = v6;
    *&buf[12] = 2112;
    *&buf[14] = v7;
    *&buf[22] = 2114;
    v17 = v3;
    _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_DEFAULT, "%@:%@: hindsight learning executed, trainError: %{public}@.", buf, 0x20u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  LOBYTE(v17) = v3 == 0;
  if (!v3)
  {
    v8 = [*(a1 + 32) _oneTimeRetroactivelyRegisterAllStoredVisits];
    *(*&buf[8] + 24) = v8;
  }

  v9 = [*(a1 + 32) queue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __70__RTAuthorizedLocationManager__runEraseInstallDatabaseInitialization___block_invoke_154;
  v12[3] = &unk_2788C96A8;
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v14 = buf;
  v12[4] = v10;
  v15 = *(a1 + 48);
  v13 = v11;
  dispatch_async(v9, v12);

  _Block_object_dispose(buf, 8);
}

void __70__RTAuthorizedLocationManager__runEraseInstallDatabaseInitialization___block_invoke_154(uint64_t a1)
{
  v49 = *MEMORY[0x277D85DE8];
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__53;
  v39 = __Block_byref_object_dispose__53;
  v40 = 0;
  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    [*(a1 + 32) _updateMostRecentDateAtWhichDeviceDataIsTrusted];
    v2 = *(a1 + 32);
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __70__RTAuthorizedLocationManager__runEraseInstallDatabaseInitialization___block_invoke_2;
    v34[3] = &unk_2788C6F18;
    v34[4] = v2;
    v34[5] = &v35;
    v34[6] = *(a1 + 56);
    [v2 _curateAuthorizedLocationsWithHandler:v34];
    *(*(*(a1 + 48) + 8) + 24) = [*(*(a1 + 32) + 104) count] != 0;
  }

  v3 = [*(*(a1 + 32) + 192) initializationMetrics];
  v4 = v3 == 0;

  if (v4)
  {
    v5 = objc_alloc_init(RTAuthorizedLocationDatabaseInitializationMetrics);
    [*(*(a1 + 32) + 192) setInitializationMetrics:v5];
  }

  v6 = [*(*(a1 + 32) + 192) initializationMetrics];

  if (v6)
  {
    v7 = [*(*(a1 + 32) + 112) objectForKey:@"RTAuthorizedLocationEraseInstallInitActivityAttemptCount"];
    v8 = [v7 integerValue];
    v9 = [*(*(a1 + 32) + 192) initializationMetrics];
    [v9 setEraseInstallInitializationAttemptCount:v8];

    v10 = [*(*(a1 + 32) + 112) objectForKey:@"RTAuthorizedLocationEraseInstallInitActivityStartDate"];
    LOBYTE(v7) = v10 == 0;

    if ((v7 & 1) == 0)
    {
      v11 = [*(*(a1 + 32) + 112) objectForKey:@"RTAuthorizedLocationEraseInstallInitActivityStartDate"];
      v12 = [MEMORY[0x277CBEAA8] now];
      [v12 timeIntervalSinceDate:v11];
      v14 = v13;

      v15 = [*(*(a1 + 32) + 192) initializationMetrics];
      LODWORD(v16) = vcvtmd_s64_f64(v14 / 3600.0);
      [v15 setEraseInstallInitializationCompletionTimeHours:v16];
    }

    [*(*(a1 + 32) + 192) setLocationServicesEnabled:{objc_msgSend(MEMORY[0x277CBFC10], "locationServicesEnabled")}];
    [*(*(a1 + 32) + 192) setRoutineEnabled:{objc_msgSend(*(a1 + 32), "_isRoutineEnabled")}];
    v17 = [*(*(a1 + 32) + 104) count];
    v18 = [*(*(a1 + 32) + 192) initializationMetrics];
    [v18 setNumberOfALOIsGeneratedDuringEraseInstallInitialization:v17];

    v19 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = objc_opt_class();
      v21 = NSStringFromClass(v20);
      v22 = NSStringFromSelector(*(a1 + 56));
      v23 = [*(*(a1 + 32) + 104) count];
      v24 = [*(*(a1 + 32) + 192) initializationMetrics];
      v25 = [v24 eraseInstallInitializationAttemptCount];
      v26 = [*(*(a1 + 32) + 192) initializationMetrics];
      v27 = [v26 eraseInstallInitializationCompletionTimeHours];
      *buf = 138413314;
      v42 = v21;
      v43 = 2112;
      v44 = v22;
      v45 = 1026;
      v46 = v23;
      v47 = 1026;
      *v48 = v25;
      *&v48[4] = 1026;
      *&v48[6] = v27;
      _os_log_impl(&dword_2304B3000, v19, OS_LOG_TYPE_DEFAULT, "%@:%@: Update metrics and defaults write,ALOICount,%{public}d,eraseInstallInitializationAttemptCount,%{public}d,eraseInstallInitializationCompletionTimeHours,%{public}d", buf, 0x28u);
    }
  }

  (*(*(a1 + 40) + 16))();
  [*(a1 + 32) setEraseInstallInitTransaction:0];
  v28 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v29 = objc_opt_class();
    v30 = NSStringFromClass(v29);
    v31 = NSStringFromSelector(*(a1 + 56));
    v32 = *(*(a1 + 32) + 216);
    v33 = v36[5];
    *buf = 138413058;
    v42 = v30;
    v43 = 2112;
    v44 = v31;
    v45 = 1026;
    v46 = v32;
    v47 = 2114;
    *v48 = v33;
    _os_log_impl(&dword_2304B3000, v28, OS_LOG_TYPE_DEFAULT, "%@:%@: finished, attempt count, %{public}d, dbCompletionError, %{public}@.", buf, 0x26u);
  }

  _Block_object_dispose(&v35, 8);
}

void __70__RTAuthorizedLocationManager__runEraseInstallDatabaseInitialization___block_invoke_2(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a2;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v5 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = NSStringFromSelector(*(a1 + 48));
    v9 = [*(*(a1 + 32) + 104) count];
    v10 = 138413058;
    v11 = v7;
    v12 = 2112;
    v13 = v8;
    v14 = 1026;
    v15 = v9;
    v16 = 2114;
    v17 = v4;
    _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_DEFAULT, "%@:%@: curate authorized locations executed, created %{public}d authorized locations, curateError: %{public}@.", &v10, 0x26u);
  }
}

- (void)runEraseInstallDatabaseInitialization:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5)
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v15 = "[RTAuthorizedLocationManager runEraseInstallDatabaseInitialization:]";
      v16 = 1024;
      LODWORD(v17) = 2976;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: databaseInitCompletionHandler (in %s:%d)", buf, 0x12u);
    }
  }

  if (_os_feature_enabled_impl() && self->_isSupportedDevice)
  {
    v7 = [(RTNotifier *)self queue];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __69__RTAuthorizedLocationManager_runEraseInstallDatabaseInitialization___block_invoke;
    v12[3] = &unk_2788C4938;
    v12[4] = self;
    v13 = v5;
    dispatch_async(v7, v12);
  }

  else
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = NSStringFromSelector(a2);
      *buf = 138412546;
      v15 = v10;
      v16 = 2112;
      v17 = v11;
      _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_DEFAULT, "%@:%@: feature not enabled or device not supported.", buf, 0x16u);
    }

    (*(v5 + 2))(v5, 0, 0);
  }
}

uint64_t __69__RTAuthorizedLocationManager_runEraseInstallDatabaseInitialization___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) _runEraseInstallDatabaseInitialization:*(a1 + 40)];
  v2 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(*(a1 + 32) + 192) convertToDictionary];
    v5 = 138739971;
    v6 = v3;
    _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_DEFAULT, "Metric, eraseInstallInitialization, %{sensitive}@", &v5, 0xCu);
  }

  [*(*(a1 + 32) + 192) submitToCoreAnalytics];
  return [*(*(a1 + 32) + 192) setInitializationMetrics:0];
}

- (void)eraseVisitLogDatabase:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5)
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v15 = "[RTAuthorizedLocationManager eraseVisitLogDatabase:]";
      v16 = 1024;
      LODWORD(v17) = 2997;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

  if (_os_feature_enabled_impl() && self->_isSupportedDevice)
  {
    v7 = [(RTNotifier *)self queue];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __53__RTAuthorizedLocationManager_eraseVisitLogDatabase___block_invoke;
    v12[3] = &unk_2788C4938;
    v12[4] = self;
    v13 = v5;
    dispatch_async(v7, v12);
  }

  else
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = NSStringFromSelector(a2);
      *buf = 138412546;
      v15 = v10;
      v16 = 2112;
      v17 = v11;
      _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_DEFAULT, "%@:%@: feature not enabled or device not supported.", buf, 0x16u);
    }

    (*(v5 + 2))(v5, 0);
  }
}

void __53__RTAuthorizedLocationManager_eraseVisitLogDatabase___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) visitLogStore];
  v2 = [MEMORY[0x277CBEAA8] distantFuture];
  [v3 purgeVisitLogsPredating:v2 handler:*(a1 + 40)];
}

- (void)fetchVisitLogsWithOptions:(id)a3 handler:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (!v8)
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v19 = "[RTAuthorizedLocationManager fetchVisitLogsWithOptions:handler:]";
      v20 = 1024;
      LODWORD(v21) = 3015;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

  if (_os_feature_enabled_impl() && self->_isSupportedDevice)
  {
    v10 = [(RTNotifier *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __65__RTAuthorizedLocationManager_fetchVisitLogsWithOptions_handler___block_invoke;
    block[3] = &unk_2788C4500;
    block[4] = self;
    v16 = v7;
    v17 = v8;
    dispatch_async(v10, block);
  }

  else
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v14 = NSStringFromSelector(a2);
      *buf = 138412546;
      v19 = v13;
      v20 = 2112;
      v21 = v14;
      _os_log_impl(&dword_2304B3000, v11, OS_LOG_TYPE_DEFAULT, "%@:%@: feature not enabled or device not supported.", buf, 0x16u);
    }

    (*(v8 + 2))(v8, 0, 0);
  }
}

void __65__RTAuthorizedLocationManager_fetchVisitLogsWithOptions_handler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) visitLogStore];
  [v2 fetchVisitLogsWithOptions:*(a1 + 40) handler:*(a1 + 48)];
}

- (double)_getActiveLocationRequestTime
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = [(RTAuthorizedLocationManager *)self platform];
  v5 = [v4 internalInstall];

  v6 = 10.0;
  if (v5)
  {
    v7 = [(RTDefaultsManager *)self->_defaultsManager objectForKey:@"RTAuthorizedLocationManagerActiveLocationSessionDuration"];

    if (v7)
    {
      v8 = [(RTDefaultsManager *)self->_defaultsManager objectForKey:@"RTAuthorizedLocationManagerActiveLocationSessionDuration"];
      [v8 doubleValue];
      v6 = v9;
    }

    v10 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v13 = NSStringFromSelector(a2);
      v15 = 138412802;
      v16 = v12;
      v17 = 2112;
      v18 = v13;
      v19 = 2050;
      v20 = v6;
      _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_DEFAULT, "%@:%@,activeSessionDuration,%{public}.3lf", &v15, 0x20u);
    }
  }

  return v6;
}

- (BOOL)_requestLocation
{
  v63[1] = *MEMORY[0x277D85DE8];
  v4 = [(RTAuthorizedLocationManager *)self locationManager];

  if (v4)
  {
    v5 = [(RTAuthorizedLocationManager *)self trustedTimeNow];
    v6 = v5;
    if (self->_lastAuthLocConfirmationLocationTriggerTime)
    {
      [v5 timeIntervalSinceDate:?];
      v8 = v7;
      v9 = v7 == 0.0 || v7 > [(RTAuthorizedLocationManager *)self _getMinimumLocationRequestIntervalSeconds];
    }

    else
    {
      v9 = 1;
      v8 = 0.0;
    }

    v13 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      v16 = NSStringFromSelector(a2);
      lastAuthLocConfirmationLocationTriggerTime = self->_lastAuthLocConfirmationLocationTriggerTime;
      *buf = 138413570;
      *&buf[4] = v15;
      v53 = 2112;
      v54 = v16;
      v55 = 2050;
      v56 = v8;
      v57 = 2114;
      v58 = lastAuthLocConfirmationLocationTriggerTime;
      v59 = 2112;
      v60 = v6;
      v61 = 1026;
      v62 = v9;
      _os_log_impl(&dword_2304B3000, v13, OS_LOG_TYPE_DEFAULT, "%@:%@ location read,timeSinceLastLocRequest,%{public}.3lf,_lastAuthLocConfirmationLocationTriggerTime,%{public}@,trustedTimeCur,%@{public}.3lf,isLocRequestPermitted,%{public}d", buf, 0x3Au);
    }

    if (v9)
    {
      v18 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = objc_opt_class();
        v20 = NSStringFromClass(v19);
        v21 = NSStringFromSelector(a2);
        *buf = 138412546;
        *&buf[4] = v20;
        v53 = 2112;
        v54 = v21;
        _os_log_impl(&dword_2304B3000, v18, OS_LOG_TYPE_DEFAULT, "%@:%@, start location", buf, 0x16u);
      }

      v22 = [(RTAuthorizedLocationManager *)self locationManager];
      v23 = +[(RTNotification *)RTLocationManagerNotificationLocationsAccuracyBest];
      [v22 addObserver:self selector:sel_onLeechedLocationNotification_ name:v23];

      v24 = dispatch_semaphore_create(0);
      [(RTAuthorizedLocationManager *)self _getActiveLocationRequestTime];
      v26 = v25;
      v27 = v24;
      v28 = [MEMORY[0x277CBEAA8] now];
      v29 = dispatch_time(0, (v26 * 1000000000.0));
      if (dispatch_semaphore_wait(v27, v29))
      {
        v51 = a2;
        v50 = [MEMORY[0x277CBEAA8] now];
        [v50 timeIntervalSinceDate:v28];
        v31 = v30;
        v32 = objc_opt_new();
        v33 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_40];
        v34 = [MEMORY[0x277CCACC8] callStackSymbols];
        v35 = [v34 filteredArrayUsingPredicate:v33];
        v36 = [v35 firstObject];

        [v32 submitToCoreAnalytics:v36 type:1 duration:v31];
        v37 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
        if (os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_2304B3000, v37, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
        }

        v38 = MEMORY[0x277CCA9B8];
        v39 = *MEMORY[0x277D01448];
        v63[0] = *MEMORY[0x277CCA450];
        *buf = @"semaphore wait timeout";
        v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v63 count:1];
        v41 = [v38 errorWithDomain:v39 code:15 userInfo:v40];

        a2 = v51;
        if (v41)
        {
          v42 = v41;
        }
      }

      v43 = [(RTAuthorizedLocationManager *)self locationManager];
      v44 = +[(RTNotification *)RTLocationManagerNotificationLocationsAccuracyBest];
      [v43 removeObserver:self fromNotification:v44];

      v45 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        v46 = objc_opt_class();
        v47 = NSStringFromClass(v46);
        v48 = NSStringFromSelector(a2);
        *buf = 138412546;
        *&buf[4] = v47;
        v53 = 2112;
        v54 = v48;
        _os_log_impl(&dword_2304B3000, v45, OS_LOG_TYPE_DEFAULT, "%@:%@, stop location", buf, 0x16u);
      }

      LOBYTE(v9) = 1;
    }
  }

  else
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = NSStringFromSelector(a2);
      *buf = 138412546;
      *&buf[4] = v11;
      v53 = 2112;
      v54 = v12;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_DEFAULT, "%@:%@, invalid location manager", buf, 0x16u);
    }

    LOBYTE(v9) = 0;
  }

  return v9;
}

- (void)onVisitMonitorNotification:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = NSStringFromSelector(a2);
      *buf = 138412802;
      v16 = v8;
      v17 = 2112;
      v18 = v9;
      v19 = 2114;
      v20 = v5;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%@, %@, received visit notification, %{public}@", buf, 0x20u);
    }
  }

  if (self->_isSupportedDevice)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [(RTNotifier *)self queue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __58__RTAuthorizedLocationManager_onVisitMonitorNotification___block_invoke;
      block[3] = &unk_2788C5020;
      v12 = v5;
      v13 = self;
      v14 = a2;
      dispatch_async(v10, block);
    }
  }
}

void __58__RTAuthorizedLocationManager_onVisitMonitorNotification___block_invoke(uint64_t a1)
{
  v21[2] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [v2 visitIncident];
  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v4 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v5 = objc_opt_class();
        v6 = NSStringFromClass(v5);
        v7 = NSStringFromSelector(*(a1 + 48));
        *buf = 138412803;
        v17 = v6;
        v18 = 2112;
        v19 = v7;
        v20 = 2117;
        v21[0] = v3;
        _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "%@, %@, received visit notification visit, %{sensitive}@", buf, 0x20u);
      }
    }

    if ([v3 type])
    {
      objc_storeStrong((*(a1 + 40) + 288), v3);
      v8 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = objc_opt_class();
        v10 = NSStringFromClass(v9);
        v11 = NSStringFromSelector(*(a1 + 48));
        v12 = [v3 type] == 1;
        v13 = [v3 type];
        *buf = 138413059;
        v17 = v10;
        v18 = 2112;
        v19 = v11;
        v20 = 1025;
        LODWORD(v21[0]) = v12;
        WORD2(v21[0]) = 1025;
        *(v21 + 6) = v13 == 3;
        _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_DEFAULT, "%@:%@, entry,%{private}d,exit,%{private}d", buf, 0x22u);
      }

      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __58__RTAuthorizedLocationManager_onVisitMonitorNotification___block_invoke_159;
      v14[3] = &unk_2788C94F0;
      v15 = *(a1 + 40);
      [v15 _runPeriodicConfirmationAlgorithm:1 handler:v14];
    }
  }
}

void __58__RTAuthorizedLocationManager_onVisitMonitorNotification___block_invoke_159(uint64_t a1, uint64_t a2, int a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = NSStringFromSelector(*(a1 + 40));
    v9 = 138412802;
    v10 = v7;
    v11 = 2112;
    v12 = v8;
    v13 = 1026;
    v14 = a3;
    _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_DEFAULT, "%@:%@,visitChange Trigger: status,%{public}d", &v9, 0x1Cu);
  }
}

- (void)_submitMetrics
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = [(RTAuthorizedLocationManager *)self metricLock];
  [v4 lock];

  v5 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = NSStringFromSelector(a2);
    v13 = 138412546;
    v14 = v7;
    v15 = 2112;
    v16 = v8;
    _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_DEFAULT, "%@:%@,Metric", &v13, 0x16u);
  }

  v9 = [(RTAuthorizedLocationMetrics *)self->_metrics queryMetrics];
  [v9 endTimer];

  metrics = self->_metrics;
  v11 = [(RTAuthorizedLocationMetrics *)metrics convertToDictionary];
  [(RTAuthorizedLocationMetrics *)metrics printMetricDictionary:v11];

  [(RTAuthorizedLocationMetrics *)self->_metrics submitToCoreAnalytics];
  [(RTAuthorizedLocationMetrics *)self->_metrics setQueryMetrics:0];
  [(RTAuthorizedLocationMetrics *)self->_metrics setZdrLocationsLiveMetrics:0];
  [(RTAuthorizedLocationMetrics *)self->_metrics setZdrLocationsCurationMetrics:0];
  v12 = [(RTAuthorizedLocationManager *)self metricLock];
  [v12 unlock];
}

- (BOOL)_doesNewLocationChangeTechnologyAvailability:(id)a3
{
  v85 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (self->_technologiesMissingToLookForInLocationUpdates)
  {
    aSelector = a2;
    v55 = self;
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v56 = v5;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v60 objects:v84 count:16];
    if (v8)
    {
      v9 = v8;
      v57 = 0;
      v10 = *v61;
      v58 = *MEMORY[0x277CE4290];
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v61 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v60 + 1) + 8 * i);
          v13 = objc_autoreleasePoolPush();
          if (v12)
          {
            v14 = [v12 sourceInformation];
            v15 = ([v14 isProducedByAccessory] & 1) == 0 && objc_msgSend(v12, "type") != 3;

            v16 = [v12 sourceInformation];
            v17 = [v16 isSimulatedBySoftware];

            v18 = [v12 integrity];
            [v12 horizontalAccuracy];
            if (v15)
            {
              v20 = v19 >= 0.0 && v17 == 0;
              if (v20 && v18 != v58)
              {
                if (!v57 || ([v12 timestamp], v22 = objc_claimAutoreleasedReturnValue(), -[NSObject timestamp](v57, "timestamp"), v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend(v22, "compare:", v23), v23, v22, v24 == -1))
                {
                  v25 = v12;

                  v57 = v25;
                }
              }
            }
          }

          objc_autoreleasePoolPop(v13);
        }

        v9 = [v7 countByEnumeratingWithState:&v60 objects:v84 count:16];
      }

      while (v9);

      if (v57)
      {
        v26 = [v57 type];
        v27 = [v57 integrity];
        v28 = *MEMORY[0x277CE4280];
        v29 = [v57 type]== 4 || [v57 type]== 11;
        v35 = [v57 type];
        v36 = v27 >= v28 && v29;
        v37 = v27 >= v28 && v35 == 13;
        technologiesMissingToLookForInLocationUpdates = v55->_technologiesMissingToLookForInLocationUpdates;
        v39 = technologiesMissingToLookForInLocationUpdates & (v26 == 1);
        v40 = (technologiesMissingToLookForInLocationUpdates & 2) != 0 && v29;
        v41 = technologiesMissingToLookForInLocationUpdates ^ v39;
        if (v40)
        {
          v41 = technologiesMissingToLookForInLocationUpdates ^ v39 ^ 2;
        }

        v42 = (technologiesMissingToLookForInLocationUpdates & 4) != 0 && v36;
        if (v42)
        {
          v41 ^= 4uLL;
        }

        v59 = v37;
        v43 = v37 & (technologiesMissingToLookForInLocationUpdates >> 3);
        v20 = v43 == 0;
        v30 = v39 | v40 | v42 | v43;
        v44 = v41 ^ 8;
        if (v20)
        {
          v44 = v41;
        }

        v55->_technologiesMissingToLookForInLocationUpdates = v44;
        v45 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
        {
          v53 = v35 == 13;
          v46 = v27 >= v28;
          v47 = v26 == 1;
          v48 = objc_opt_class();
          v49 = NSStringFromClass(v48);
          v50 = NSStringFromSelector(aSelector);
          v51 = v55->_technologiesMissingToLookForInLocationUpdates;
          *buf = 138414594;
          v65 = v49;
          v66 = 2112;
          v67 = v50;
          v68 = 1026;
          v69 = v30 & 1;
          v70 = 1026;
          v71 = v47;
          v72 = 1026;
          v73 = v46;
          v74 = 1026;
          v75 = v29;
          v76 = 1026;
          v77 = v53;
          v78 = 1026;
          v79 = v36;
          v80 = 1026;
          v81 = v59;
          v82 = 2050;
          v83 = v51;
          _os_log_impl(&dword_2304B3000, v45, OS_LOG_TYPE_DEFAULT, "%@:%@,hasStateChanged,%{public}d,isGps,%{public}d,isHighIntegrity,%{public}d,isWiFi,%{public}d,isLoiOverride,%{public}d,isHighIntegrityWiFi,%{public}d,isHighIntegrityLoiOverride,%{public}d,_technologiesMissingToLookForInLocationUpdates,%{public}lu", buf, 0x4Au);
        }

        v6 = v56;
        v31 = v57;
LABEL_49:

        goto LABEL_50;
      }
    }

    else
    {
    }

    v31 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = objc_opt_class();
      v33 = NSStringFromClass(v32);
      v34 = NSStringFromSelector(aSelector);
      *buf = 138412546;
      v65 = v33;
      v66 = 2112;
      v67 = v34;
      _os_log_impl(&dword_2304B3000, v31, OS_LOG_TYPE_DEFAULT, "%@:%@,invalidLocation", buf, 0x16u);
    }

    v30 = 0;
    v6 = v56;
    goto LABEL_49;
  }

  v30 = 0;
LABEL_50:

  return v30 & 1;
}

- (void)onLeechedLocationNotification:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = NSStringFromSelector(a2);
      *buf = 138412546;
      v16 = v10;
      v17 = 2112;
      v18 = v11;
      _os_log_debug_impl(&dword_2304B3000, v6, OS_LOG_TYPE_DEBUG, "%@:%@,onLeech Trigger", buf, 0x16u);
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (self->_isSupportedDevice)
    {
      v7 = [(RTNotifier *)self queue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __61__RTAuthorizedLocationManager_onLeechedLocationNotification___block_invoke;
      block[3] = &unk_2788C5020;
      block[4] = self;
      v13 = v5;
      v14 = a2;
      dispatch_async(v7, block);
    }
  }

  else
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: [notification isKindOfClass:[RTLocationManagerNotificationLocationsLeeched class]]", buf, 2u);
    }
  }
}

void __61__RTAuthorizedLocationManager_onLeechedLocationNotification___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) authLocConfirmationStatus];
  v3 = [v2 getAuthConfirmationStatusCode];

  if (v3)
  {
    v4 = [*(a1 + 40) leechedLocations];
    if ([*(a1 + 32) _doesNewLocationChangeTechnologyAvailability:v4])
    {
      v5 = *(a1 + 32);
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __61__RTAuthorizedLocationManager_onLeechedLocationNotification___block_invoke_2;
      v7[3] = &unk_2788C94F0;
      v6 = *(a1 + 48);
      v7[4] = v5;
      v7[5] = v6;
      [v5 _runPeriodicConfirmationAlgorithm:3 handler:v7];
    }
  }
}

void __61__RTAuthorizedLocationManager_onLeechedLocationNotification___block_invoke_2(uint64_t a1, uint64_t a2, int a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = NSStringFromSelector(*(a1 + 40));
    v9 = 138412802;
    v10 = v7;
    v11 = 2112;
    v12 = v8;
    v13 = 1026;
    v14 = a3;
    _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_DEFAULT, "%@:%@,onLeech Trigger: status,%{public}d", &v9, 0x1Cu);
  }
}

- (void)_runPeriodicConfirmationAlgorithm:(int64_t)a3 handler:(id)a4
{
  v64 = *MEMORY[0x277D85DE8];
  v7 = a4;
  if (self->_isSupportedDevice)
  {
    v8 = [(RTAuthorizedLocationMetrics *)self->_metrics queryMetrics];

    if (!v8)
    {
      v9 = objc_alloc_init(RTAuthorizedLocationQueryMetrics);
      [(RTAuthorizedLocationMetrics *)self->_metrics setQueryMetrics:v9];

      v10 = [(RTAuthorizedLocationMetrics *)self->_metrics queryMetrics];
      [v10 startTimer];
    }

    v11 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v14 = NSStringFromSelector(a2);
      *buf = 138412802;
      v57 = v13;
      v58 = 2112;
      v59 = v14;
      v60 = 1026;
      LODWORD(v61) = a3;
      _os_log_impl(&dword_2304B3000, v11, OS_LOG_TYPE_DEFAULT, "%@:%@ triggerReason,%{public}d", buf, 0x1Cu);
    }

    if (a3 != 5)
    {
      v15 = [(RTAuthorizedLocationMetrics *)self->_metrics queryMetrics];
      [v15 setAuthorizedLocationConfirmationTriggerReason:a3];

      v16 = [(RTAuthorizedLocationManager *)self trustedTimeNow];
      [v16 timeIntervalSinceDate:self->_dateOfLastAuthorizedLocationsNonUserRequest];
      v18 = v17;
      v19 = [(RTAuthorizedLocationMetrics *)self->_metrics queryMetrics];
      [v19 setDurationBetweenTwoConfirmationAlgoScheduling_s:v18];

      v20 = [(RTAuthorizedLocationManager *)self trustedTimeNow];
      dateOfLastAuthorizedLocationsNonUserRequest = self->_dateOfLastAuthorizedLocationsNonUserRequest;
      self->_dateOfLastAuthorizedLocationsNonUserRequest = v20;
    }

    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __73__RTAuthorizedLocationManager__runPeriodicConfirmationAlgorithm_handler___block_invoke;
    aBlock[3] = &unk_2788C94F0;
    aBlock[4] = self;
    aBlock[5] = a2;
    v22 = _Block_copy(aBlock);
    [(RTAuthorizedLocationManager *)self _fetchAuthorizedLocationStatusWithZdr:v22];
    v23 = [(RTAuthorizedLocationManager *)self authLocConfirmationStatus];
    v24 = [v23 getAuthConfirmationStatusCode];

    if ((v24 - 7) < 5 || v24 == 5)
    {
      v25 = [(RTAuthorizedLocationManager *)self trustedTimeNow];
      v26 = [(RTAuthorizedLocationManager *)self trustedTimeNow];
      [v26 timeIntervalSinceDate:self->_lastAuthLocConfirmationLocationTriggerTime];
      v28 = v27 + 10.0;
      v29 = [(RTAuthorizedLocationMetrics *)self->_metrics queryMetrics];
      [v29 setTimeSinceLastPeriodicLocRequest:v28];

      v30 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v31 = objc_opt_class();
        v32 = NSStringFromClass(v31);
        NSStringFromSelector(a2);
        v53 = v22;
        v54 = a2;
        v33 = v52 = v7;
        lastAuthLocConfirmationLocationTriggerTime = self->_lastAuthLocConfirmationLocationTriggerTime;
        [(RTAuthorizedLocationMetrics *)self->_metrics queryMetrics];
        v36 = v35 = v24;
        [v36 timeSinceLastPeriodicLocRequest];
        *buf = 138413058;
        v57 = v32;
        v58 = 2112;
        v59 = v33;
        v60 = 2114;
        v61 = lastAuthLocConfirmationLocationTriggerTime;
        v62 = 2050;
        v63 = v37;
        _os_log_impl(&dword_2304B3000, v30, OS_LOG_TYPE_DEFAULT, "%@:%@ location read,_lastAuthLocConfirmationLocationTriggerTime,%{public}@,timeSinceLastPeriodicLocRequest,%{public}.3lf", buf, 0x2Au);

        v24 = v35;
        v7 = v52;
        v22 = v53;
        a2 = v54;
      }

      if ([(RTAuthorizedLocationManager *)self _requestLocation])
      {
        v38 = [(RTAuthorizedLocationMetrics *)self->_metrics queryMetrics];
        [v38 setIsLocationRequestedPeriodically:1];

        objc_storeStrong(&self->_lastAuthLocConfirmationLocationTriggerTime, v25);
        [(RTAuthorizedLocationManager *)self _runPeriodicConfirmationAlgorithm:5 handler:v7];
      }

      else
      {
        v39 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          v40 = objc_opt_class();
          v41 = NSStringFromClass(v40);
          v42 = NSStringFromSelector(a2);
          v43 = self->_lastAuthLocConfirmationLocationTriggerTime;
          *buf = 138412802;
          v57 = v41;
          v58 = 2112;
          v59 = v42;
          v60 = 2114;
          v61 = v43;
          _os_log_impl(&dword_2304B3000, v39, OS_LOG_TYPE_DEFAULT, "%@:%@ location is good. read,_lastAuthLocConfirmationLocationTriggerTime,%{public}@", buf, 0x20u);
        }

        v44 = [(RTAuthorizedLocationManager *)self authLocConfirmationStatus];
        v45 = [v44 getAuthConfirmationStatus];
        v7[2](v7, v45, v24, 0);

        [(RTAuthorizedLocationManager *)self _submitMetrics];
      }
    }

    else
    {
      v46 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
      {
        v47 = objc_opt_class();
        v48 = NSStringFromClass(v47);
        v49 = NSStringFromSelector(a2);
        *buf = 138412546;
        v57 = v48;
        v58 = 2112;
        v59 = v49;
        _os_log_impl(&dword_2304B3000, v46, OS_LOG_TYPE_DEFAULT, "%@:%@ non-location error no need to process further", buf, 0x16u);
      }

      v50 = [(RTAuthorizedLocationManager *)self authLocConfirmationStatus];
      v51 = [v50 getAuthConfirmationStatus];
      v7[2](v7, v51, v24, 0);

      [(RTAuthorizedLocationManager *)self _submitMetrics];
    }
  }
}

void __73__RTAuthorizedLocationManager__runPeriodicConfirmationAlgorithm_handler___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    v5 = NSStringFromSelector(*(a1 + 40));
    v6 = 138412546;
    v7 = v4;
    v8 = 2112;
    v9 = v5;
    _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_DEFAULT, "%@:%@ Confirmation stored to disk", &v6, 0x16u);
  }
}

- (void)_fetchZDRLocations:(id)a3
{
  v5 = a3;
  v6 = [(RTAuthorizedLocationManager *)self zdrLocationManager];

  if (v6)
  {
    v7 = [(RTAuthorizedLocationManager *)self zdrLocationManager];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __50__RTAuthorizedLocationManager__fetchZDRLocations___block_invoke;
    v8[3] = &unk_2788C96D0;
    v8[4] = self;
    v10 = a2;
    v9 = v5;
    [v7 fetchAuthorizedLocationZDRLocations:v8];
  }
}

void __50__RTAuthorizedLocationManager__fetchZDRLocations___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v47 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (!v5 || a3)
  {
    v31 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = objc_opt_class();
      v33 = NSStringFromClass(v32);
      v34 = NSStringFromSelector(*(a1 + 48));
      *buf = 138412546;
      v44 = v33;
      v45 = 2112;
      v46 = v34;
      _os_log_impl(&dword_2304B3000, v31, OS_LOG_TYPE_DEFAULT, "%@:%@ no data", buf, 0x16u);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v37 = [MEMORY[0x277CBEB18] array];
    v6 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = NSStringFromSelector(*(a1 + 48));
      *buf = 138412546;
      v44 = v8;
      v45 = 2112;
      v46 = v9;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_DEFAULT, "%@:%@", buf, 0x16u);
    }

    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v35 = v5;
    obj = v5;
    v10 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v39;
      v13 = -1;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v39 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v38 + 1) + 8 * i);
          v16 = [v15 zdrLocationType];
          if (v16 <= 6)
          {
            v13 = qword_230AFE368[v16];
          }

          v17 = objc_alloc(MEMORY[0x277D01170]);
          v18 = objc_alloc(MEMORY[0x277D01160]);
          [v15 zdrLocationLatitudeDeg];
          v20 = v19;
          [v15 zdrLocationLongitudeDeg];
          v22 = v21;
          v23 = [v15 zdrLocationDbEntryTimeCfatSec];
          v24 = [v18 initWithLatitude:v23 longitude:v20 horizontalUncertainty:v22 date:0.0];
          v25 = [v15 zdrLocationUUID];
          v26 = [v17 initWithLocation:v24 confidence:v25 identifier:v13 type:0 typeSource:0 visits:0 customLabel:0.0 mapItem:0];

          [v37 addObject:v26];
        }

        v11 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
      }

      while (v11);
    }

    v27 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = objc_opt_class();
      v29 = NSStringFromClass(v28);
      v30 = NSStringFromSelector(*(a1 + 48));
      *buf = 138412546;
      v44 = v29;
      v45 = 2112;
      v46 = v30;
      _os_log_impl(&dword_2304B3000, v27, OS_LOG_TYPE_DEFAULT, "%@:%@", buf, 0x16u);
    }

    (*(*(a1 + 40) + 16))();
    v5 = v35;
  }
}

- (void)runPeriodicConfirmationAlgorithmForTest:(id)a3
{
  v5 = a3;
  v6 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__RTAuthorizedLocationManager_runPeriodicConfirmationAlgorithmForTest___block_invoke;
  block[3] = &unk_2788C6300;
  v9 = v5;
  v10 = a2;
  block[4] = self;
  v7 = v5;
  dispatch_async(v6, block);
}

void __71__RTAuthorizedLocationManager_runPeriodicConfirmationAlgorithmForTest___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _readConfirmationStatusFromDisk];
  v2 = *(a1 + 32);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __71__RTAuthorizedLocationManager_runPeriodicConfirmationAlgorithmForTest___block_invoke_2;
  v5[3] = &unk_2788C9658;
  v5[4] = v2;
  v4 = *(a1 + 40);
  v3 = v4;
  v6 = v4;
  [v2 _runPeriodicConfirmationAlgorithm:6 handler:v5];
}

void __71__RTAuthorizedLocationManager_runPeriodicConfirmationAlgorithmForTest___block_invoke_2(uint64_t a1, void *a2, int a3, void *a4)
{
  v19 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a2;
  v9 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = NSStringFromSelector(*(a1 + 48));
    v13 = 138412802;
    v14 = v11;
    v15 = 2112;
    v16 = v12;
    v17 = 1026;
    v18 = a3;
    _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_DEFAULT, "%@:%@,periodic Trigger: status,%{public}d", &v13, 0x1Cu);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)collectMetricDataForTest:(int64_t)a3 handler:(id)a4
{
  v7 = a4;
  v8 = [(RTNotifier *)self queue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __64__RTAuthorizedLocationManager_collectMetricDataForTest_handler___block_invoke;
  v10[3] = &unk_2788C6710;
  v12 = a3;
  v13 = a2;
  v10[4] = self;
  v11 = v7;
  v9 = v7;
  dispatch_async(v8, v10);
}

void __64__RTAuthorizedLocationManager_collectMetricDataForTest_handler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2 == 2)
  {
    v6 = [*(a1 + 32) trustedTimeNow];
    v7 = [*(*(a1 + 32) + 192) queryMetrics];

    if (!v7)
    {
      v8 = objc_alloc_init(RTAuthorizedLocationQueryMetrics);
      [*(*(a1 + 32) + 192) setQueryMetrics:v8];
    }

    v9 = [*(a1 + 32) trustedTimeNow];
    [v9 timeIntervalSinceDate:*(*(a1 + 32) + 280)];
    v11 = v10;
    v12 = [*(*(a1 + 32) + 192) queryMetrics];
    [v12 setTimeSincePreviousXPCSchedule:v11];

    v13 = *(a1 + 32);
    v14 = *(v13 + 280);
    *(v13 + 280) = v6;

    v2 = *(a1 + 48);
    goto LABEL_7;
  }

  if (v2 != 4)
  {
LABEL_7:
    v15 = *(a1 + 32);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __64__RTAuthorizedLocationManager_collectMetricDataForTest_handler___block_invoke_162;
    v17[3] = &unk_2788C9658;
    v16 = *(a1 + 56);
    v17[4] = v15;
    v18[1] = v16;
    v5 = v18;
    v18[0] = *(a1 + 40);
    [v15 _runPeriodicConfirmationAlgorithm:v2 handler:v17];
    goto LABEL_8;
  }

  v3 = *(a1 + 32);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __64__RTAuthorizedLocationManager_collectMetricDataForTest_handler___block_invoke_2;
  v19[3] = &unk_2788C9658;
  v4 = *(a1 + 56);
  v19[4] = v3;
  v20[1] = v4;
  v5 = v20;
  v20[0] = *(a1 + 40);
  [v3 _fetchAuthorizedLocationExtendedStatusWithMetrics:v19];
LABEL_8:
}

uint64_t __64__RTAuthorizedLocationManager_collectMetricDataForTest_handler___block_invoke_2(uint64_t a1, uint64_t a2, int a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = NSStringFromSelector(*(a1 + 48));
    v10 = 138412802;
    v11 = v7;
    v12 = 2112;
    v13 = v8;
    v14 = 1026;
    v15 = a3;
    _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_DEFAULT, "%@:%@,periodic Triggerstatus,%{public}d", &v10, 0x1Cu);
  }

  return (*(*(a1 + 40) + 16))();
}

uint64_t __64__RTAuthorizedLocationManager_collectMetricDataForTest_handler___block_invoke_162(uint64_t a1, uint64_t a2, int a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = NSStringFromSelector(*(a1 + 48));
    v10 = 138412802;
    v11 = v7;
    v12 = 2112;
    v13 = v8;
    v14 = 1026;
    v15 = a3;
    _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_DEFAULT, "%@:%@,periodic Trigger: status,%{public}d", &v10, 0x1Cu);
  }

  return (*(*(a1 + 40) + 16))();
}

- (void)prepareTestSetup:(int64_t)a3
{
  v4 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__RTAuthorizedLocationManager_prepareTestSetup___block_invoke;
  block[3] = &unk_2788C4EA0;
  block[4] = self;
  dispatch_async(v4, block);
}

void __48__RTAuthorizedLocationManager_prepareTestSetup___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _deleteConfirmationStatusFromDisk];
  v2 = objc_alloc(MEMORY[0x277CBEAA8]);
  v3 = [*(a1 + 32) trustedTimeNow];
  v7 = [v2 initWithTimeInterval:v3 sinceDate:-21600.0];

  v4 = [*(a1 + 32) authLocConfirmationStatus];
  v5 = [objc_alloc(MEMORY[0x277D01088]) initWithStatus:0];
  [v4 setAuthConfirmationStatusToCacheInfo:v5 statusCode:-1 timestamp:v7];

  v6 = [*(a1 + 32) authLocConfirmationStatus];
  [v6 setZDRStatusToCacheInfo:0 zdrStatusCode:0 zdrTimestamp:v7];
}

- (void)prepareZDRLocationSetupForTesting:(id)a3
{
  v4 = a3;
  v5 = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __65__RTAuthorizedLocationManager_prepareZDRLocationSetupForTesting___block_invoke;
  v7[3] = &unk_2788C4938;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __65__RTAuthorizedLocationManager_prepareZDRLocationSetupForTesting___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) zdrLocationsStore];
  [v2 deleteAllZDRLocations:*(a1 + 40)];
}

- (void)testFetchZDRLocationStatus:(id)a3 fullSecurityAloiList:(id)a4 handler:(id)a5
{
  v6 = a5;
  v7 = [(RTNotifier *)self queue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __87__RTAuthorizedLocationManager_testFetchZDRLocationStatus_fullSecurityAloiList_handler___block_invoke;
  v9[3] = &unk_2788C4938;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_async(v7, v9);
}

void __87__RTAuthorizedLocationManager_testFetchZDRLocationStatus_fullSecurityAloiList_handler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) zdrLocationManager];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __87__RTAuthorizedLocationManager_testFetchZDRLocationStatus_fullSecurityAloiList_handler___block_invoke_2;
  v3[3] = &unk_2788C96F8;
  v4 = *(a1 + 40);
  [v2 fetchZDRLocationStatus:0 fullSecurityAloiList:0 handler:v3];
}

@end