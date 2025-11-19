@interface RTVehicleLocationProvider
- (BOOL)_deleteLastVehicleEvent;
- (BOOL)_persistLastVehicleEvent;
- (BOOL)_persistVehicleEvent:(id)a3;
- (BOOL)_sameVehicleWithDeviceId:(id)a3 otherDeviceId:(id)a4;
- (BOOL)isFeatureSupported;
- (BOOL)pairedWithEligibleDevices;
- (RTVehicleLocationProvider)initWithLocationManager:(id)a3 motionActivityManager:(id)a4 mapsSupportManager:(id)a5 metricManager:(id)a6 managedObjectContext:(id)a7 persistenceManager:(id)a8 vehicleLocationHistoryController:(id)a9 learnedLocationManager:(id)a10 managedConfiguration:(id)a11 defaultsManager:(id)a12 keychainManager:(id)a13;
- (RTVehicleLocationProvider)initWithLocationManager:(id)a3 motionActivityManager:(id)a4 mapsSupportManager:(id)a5 metricManager:(id)a6 managedObjectContext:(id)a7 persistenceManager:(id)a8 vehicleLocationHistoryController:(id)a9 learnedLocationManager:(id)a10 managedConfiguration:(id)a11 defaultsManager:(id)a12 keychainManager:(id)a13 companionLink:(id)a14;
- (id)_createMetricFromParkingEvent:(id)a3;
- (id)_createMetricFromScoreBoard:(id)a3;
- (id)_getLastVehicleEvents;
- (id)createCompanionLink;
- (void)_clearAllVehicleEvents;
- (void)_clearBulletinNotifications;
- (void)_finalizeLastVehicleEventIfAppropriate;
- (void)_finalizeLocationEstimate;
- (void)_notifyClients;
- (void)_onDailyMetricNotification:(id)a3;
- (void)_onExternalVehicleEventReceived:(id)a3;
- (void)_onFinalizeLocationEstimateTimerExpiry;
- (void)_onLocation:(id)a3;
- (void)_onManagedObjectContextCreated:(id)a3;
- (void)_onVehicleConnectedNotification:(id)a3;
- (void)_onVehicleExit;
- (void)_onVehicleExitNotification:(id)a3;
- (void)_onVehicleParkedWithDeviceId:(id)a3;
- (void)_onVehicleStartedWithDeviceId:(id)a3;
- (void)_postBulletinNotificationIfAppropriate;
- (void)_postVehicleReplacementBulletinNotificationWithVehicleEvent:(id)a3 replacingEvent:(id)a4;
- (void)_processPendingVehicleEventAfterLocationFinalization;
- (void)_recordMetricAssistanceEvent:(id)a3;
- (void)_recordMetricEngagementEvent:(id)a3;
- (void)_recordMetricParkingEvent:(id)a3;
- (void)_recordMetricSuppressedEvent;
- (void)_registerScoreBoardSubmission;
- (void)_resendVehicleEventIfNecessary;
- (void)_restoreLastVehicleEvent;
- (void)_sendVehicleEventToCompanionDevice:(id)a3;
- (void)_setup;
- (void)_shutdownWithHandler:(id)a3;
- (void)_submitFMCAssistanceInstanceWithIdentifier:(id)a3 uiPlacement:(int)a4 assistanceType:(int)a5 assistanceValue:(int)a6;
- (void)_submitFMCCarParkedInstanceWithParkedEvents:(id)a3;
- (void)_submitFMCDailyAssessmentsWithSubmissionHandler:(id)a3;
- (void)_submitFMCParkingEventMetric:(id)a3;
- (void)_submitFMCReturnToCarInstanceWithIdentifier:(id)a3 horizontalAccuracy:(int)a4 horizontalDistance:(int)a5;
- (void)_submitFMCVehicleConnectionEventInstanceWithConnectionStatus:(int)a3;
- (void)_submitFMCVehicleConnectionEventInstanceWithConnectionStatus:(int)a3 value:(double)a4;
- (void)_submitFMCViewedInstanceWithIdentifier:(id)a3 uiPlacement:(int)a4;
- (void)_updateAuxiliaryDataIfAppropriate;
- (void)_updateFeatureEnablement;
- (void)_updateLastVehicleEventAndNotify:(id)a3;
- (void)_updateNearbyLocationOfInterestOfVehicleEvent:(id)a3 handler:(id)a4;
- (void)_updateUsualLocationOfVehicleEvent:(id)a3;
- (void)_vehicleEventAtLocation:(id)a3 notes:(id)a4 handler:(id)a5;
- (void)clearAllVehicleEvents;
- (void)didReceiveEffectiveSettingsChangedNotification;
- (void)engageInVehicleEventWithIdentifier:(id)a3;
- (void)fetchAutomaticVehicleEventDetectionSupportedWithHandler:(id)a3;
- (void)fetchFMCEnabledWithHandler:(id)a3;
- (void)fetchLastVehicleEventsWithHandler:(id)a3;
- (void)internalAddObserver:(id)a3 name:(id)a4;
- (void)internalRemoveObserver:(id)a3 name:(id)a4;
- (void)onDailyMetricNotification:(id)a3;
- (void)onLearnedLocationManagerNotification:(id)a3;
- (void)onLeechedLocation:(id)a3;
- (void)onLocationNotification:(id)a3;
- (void)onNanoRegistryNotification:(id)a3;
- (void)onVehicleConnectedNotification:(id)a3;
- (void)onVehicleExitNotification:(id)a3;
- (void)performPurgeOfType:(int64_t)a3 referenceDate:(id)a4 completion:(id)a5;
- (void)persistLastVehicleEvent;
- (void)requestLocations;
- (void)restoreLastVehicleEvent;
- (void)setMonitorLocation:(BOOL)a3;
- (void)setMonitorVehicleConnection:(BOOL)a3;
- (void)setMonitorVehicleExit:(BOOL)a3;
- (void)setMonitorVehicleLocation:(BOOL)a3;
- (void)updateVehicleEventWithIdentifier:(id)a3 location:(id)a4;
- (void)updateVehicleEventWithIdentifier:(id)a3 mapItem:(id)a4;
- (void)updateVehicleEventWithIdentifier:(id)a3 notes:(id)a4;
- (void)updateVehicleEventWithIdentifier:(id)a3 photo:(id)a4;
- (void)vehicleEventAtLocation:(id)a3 notes:(id)a4 handler:(id)a5;
@end

@implementation RTVehicleLocationProvider

- (id)_getLastVehicleEvents
{
  v12[1] = *MEMORY[0x277D85DE8];
  v3 = [(RTVehicleLocationProvider *)self lastVehicleParkedEvent];
  v4 = [v3 location];
  if (v4)
  {
    v5 = v4;
    v6 = [(RTVehicleLocationProvider *)self lastVehicleParkedEvent];
    v7 = [v6 confirmed];

    if (v7)
    {
      v8 = [(RTVehicleLocationProvider *)self lastVehicleParkedEvent];
      v9 = [v8 copy];
      v12[0] = v9;
      v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];

      goto LABEL_6;
    }
  }

  else
  {
  }

  v10 = 0;
LABEL_6:

  return v10;
}

- (RTVehicleLocationProvider)initWithLocationManager:(id)a3 motionActivityManager:(id)a4 mapsSupportManager:(id)a5 metricManager:(id)a6 managedObjectContext:(id)a7 persistenceManager:(id)a8 vehicleLocationHistoryController:(id)a9 learnedLocationManager:(id)a10 managedConfiguration:(id)a11 defaultsManager:(id)a12 keychainManager:(id)a13
{
  v38 = *MEMORY[0x277D85DE8];
  v33 = a3;
  v32 = a4;
  v31 = a5;
  v30 = a6;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  v21 = a10;
  v22 = a11;
  v23 = a12;
  v24 = a13;
  v27 = v18;
  if (!(v18 | v19))
  {
    v25 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v35 = "[RTVehicleLocationProvider initWithLocationManager:motionActivityManager:mapsSupportManager:metricManager:managedObjectContext:persistenceManager:vehicleLocationHistoryController:learnedLocationManager:managedConfiguration:defaultsManager:keychainManager:]";
      v36 = 1024;
      v37 = 197;
      _os_log_error_impl(&dword_2304B3000, v25, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: managedObjectContext || persistenceManager (in %s:%d)", buf, 0x12u);
    }
  }

  v29 = [(RTVehicleLocationProvider *)self initWithLocationManager:v33 motionActivityManager:v32 mapsSupportManager:v31 metricManager:v30 managedObjectContext:v27 persistenceManager:v19 vehicleLocationHistoryController:v20 learnedLocationManager:v21 managedConfiguration:v22 defaultsManager:v23 keychainManager:v24 companionLink:0];

  return v29;
}

- (RTVehicleLocationProvider)initWithLocationManager:(id)a3 motionActivityManager:(id)a4 mapsSupportManager:(id)a5 metricManager:(id)a6 managedObjectContext:(id)a7 persistenceManager:(id)a8 vehicleLocationHistoryController:(id)a9 learnedLocationManager:(id)a10 managedConfiguration:(id)a11 defaultsManager:(id)a12 keychainManager:(id)a13 companionLink:(id)a14
{
  v69 = *MEMORY[0x277D85DE8];
  v60 = a3;
  v59 = a4;
  v58 = a5;
  v51 = a6;
  v57 = a6;
  v19 = a7;
  v52 = a8;
  v20 = a8;
  v21 = a9;
  v56 = a10;
  v55 = a11;
  v54 = a12;
  v22 = a13;
  v23 = a14;
  v61 = v19;
  if (!(v19 | v20))
  {
    v39 = v23;
    v40 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v66 = "[RTVehicleLocationProvider initWithLocationManager:motionActivityManager:mapsSupportManager:metricManager:managedObjectContext:persistenceManager:vehicleLocationHistoryController:learnedLocationManager:managedConfiguration:defaultsManager:keychainManager:companionLink:]";
      v67 = 1024;
      v68 = 226;
      _os_log_error_impl(&dword_2304B3000, v40, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: managedObjectContext || persistenceManager (in %s:%d)", buf, 0x12u);
    }

    v41 = 0;
    v24 = v22;
    v23 = v39;
    goto LABEL_10;
  }

  v24 = v22;
  if (!v22)
  {
    v41 = 0;
LABEL_10:
    v42 = self;
    goto LABEL_16;
  }

  v49 = v23;
  v64.receiver = self;
  v64.super_class = RTVehicleLocationProvider;
  v25 = [(RTNotifier *)&v64 init];
  v26 = v25;
  if (v25)
  {
    objc_storeStrong(&v25->_locationManager, a3);
    objc_storeStrong(&v26->_motionActivityManager, a4);
    objc_storeStrong(&v26->_mapsSupportManager, a5);
    objc_storeStrong(&v26->_metricManager, v51);
    objc_storeStrong(&v26->_persistenceManager, v52);
    objc_storeStrong(&v26->_learnedLocationManager, a10);
    objc_storeStrong(&v26->_managedConfiguration, a11);
    objc_storeStrong(&v26->_defaultsManager, a12);
    objc_storeStrong(&v26->_keychainManager, a13);
    objc_storeStrong(&v26->_companionLink, a14);
    v27 = [MEMORY[0x277CBEAA8] distantPast];
    lastCompanionSyncDate = v26->_lastCompanionSyncDate;
    v26->_lastCompanionSyncDate = v27;

    v29 = [MEMORY[0x277CBEAA8] distantPast];
    lastCompanionSyncRequestDate = v26->_lastCompanionSyncRequestDate;
    v26->_lastCompanionSyncRequestDate = v29;

    v31 = [[RTFMCScoreBoard alloc] initWithLocationType:0xFFFFFFFFLL];
    scoreBoard = v26->_scoreBoard;
    v26->_scoreBoard = v31;

    v33 = [[RTFMCScoreBoard alloc] initWithLocationType:1];
    scoreBoardForUsualLocation = v26->_scoreBoardForUsualLocation;
    v26->_scoreBoardForUsualLocation = v33;

    v35 = [[RTFMCScoreBoard alloc] initWithLocationType:0];
    scoreBoardForUnusualLocation = v26->_scoreBoardForUnusualLocation;
    v26->_scoreBoardForUnusualLocation = v35;

    if (v61)
    {
      v37 = v61;
      managedObjectContext = v26->_managedObjectContext;
      v26->_managedObjectContext = v37;
    }

    else
    {
      persistenceManager = v26->_persistenceManager;
      v62[0] = MEMORY[0x277D85DD0];
      v62[1] = 3221225472;
      v62[2] = __271__RTVehicleLocationProvider_initWithLocationManager_motionActivityManager_mapsSupportManager_metricManager_managedObjectContext_persistenceManager_vehicleLocationHistoryController_learnedLocationManager_managedConfiguration_defaultsManager_keychainManager_companionLink___block_invoke;
      v62[3] = &unk_2788CAD20;
      v63 = v26;
      [(RTPersistenceManager *)persistenceManager createManagedObjectContext:v62];
      managedObjectContext = v63;
    }

    if (v21)
    {
      objc_storeStrong(&v26->_vehicleLocationHistoryController, a9);
    }

    v44 = objc_opt_new();
    locationsCache = v26->_locationsCache;
    v26->_locationsCache = v44;

    v46 = objc_opt_new();
    locationsCacheLeeched = v26->_locationsCacheLeeched;
    v26->_locationsCacheLeeched = v46;

    [(RTService *)v26 setup];
    [(RTManagedConfiguration *)v26->_managedConfiguration setDelegate:v26];
  }

  v42 = v26;
  v41 = v42;
  v23 = v49;
LABEL_16:

  return v41;
}

void __271__RTVehicleLocationProvider_initWithLocationManager_motionActivityManager_mapsSupportManager_metricManager_managedObjectContext_persistenceManager_vehicleLocationHistoryController_learnedLocationManager_managedConfiguration_defaultsManager_keychainManager_companionLink___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __271__RTVehicleLocationProvider_initWithLocationManager_motionActivityManager_mapsSupportManager_metricManager_managedObjectContext_persistenceManager_vehicleLocationHistoryController_learnedLocationManager_managedConfiguration_defaultsManager_keychainManager_companionLink___block_invoke_2;
  v6[3] = &unk_2788C4A70;
  v7 = *(a1 + 32);
  v8 = v3;
  v5 = v3;
  dispatch_async(v4, v6);
}

- (void)_setup
{
  [(RTVehicleLocationProvider *)self _updateFeatureEnablement];
  if (!self->_companionLink)
  {
    v3 = [(RTVehicleLocationProvider *)self createCompanionLink];
    companionLink = self->_companionLink;
    self->_companionLink = v3;
  }

  v5 = [(RTVehicleLocationProvider *)self learnedLocationManager];
  v6 = +[(RTNotification *)RTLearnedLocationManagerNotificationAvailabilityDidChange];
  [v5 addObserver:self selector:sel_onLearnedLocationManagerNotification_ name:v6];

  v7 = [MEMORY[0x277CCAB98] defaultCenter];
  [v7 addObserver:self selector:sel_onDailyMetricNotification_ name:@"RTMetricManagerDailyMetricNotification" object:0];

  v8 = [MEMORY[0x277CCAB98] defaultCenter];
  [v8 addObserver:self selector:sel_onNanoRegistryNotification_ name:*MEMORY[0x277D2BC68] object:0];

  v9 = [MEMORY[0x277CCAB98] defaultCenter];
  [v9 addObserver:self selector:sel_onNanoRegistryNotification_ name:*MEMORY[0x277D2BC78] object:0];
}

- (void)_updateFeatureEnablement
{
  v19 = *MEMORY[0x277D85DE8];
  [(RTVehicleLocationProvider *)self setMonitorVehicleLocation:[(RTVehicleLocationProvider *)self isFeatureSupported]];
  self->_monitorExternalVehicleLocation = 0;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilityVehicleLocation);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      if ([(RTVehicleLocationProvider *)self monitorVehicleLocation])
      {
        v4 = @"yes";
      }

      else
      {
        v4 = @"no";
      }

      if ([(RTVehicleLocationProvider *)self monitorExternalVehicleLocation])
      {
        v5 = @"yes";
      }

      else
      {
        v5 = @"no";
      }

      if ([(RTVehicleLocationProvider *)self monitorVehicleConnection])
      {
        v6 = @"yes";
      }

      else
      {
        v6 = @"no";
      }

      if ([(RTVehicleLocationProvider *)self monitorVehicleExit])
      {
        v7 = @"yes";
      }

      else
      {
        v7 = @"no";
      }

      v9 = 138413314;
      if ([(RTVehicleLocationProvider *)self monitorLocation])
      {
        v8 = @"yes";
      }

      else
      {
        v8 = @"no";
      }

      v10 = v4;
      v11 = 2112;
      v12 = v5;
      v13 = 2112;
      v14 = v6;
      v15 = 2112;
      v16 = v7;
      v17 = 2112;
      v18 = v8;
      _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_INFO, "monitoring states, local vehicle event, %@, external vehicle event, %@, vehicle connection, %@, vehicle exit, %@, location, %@", &v9, 0x34u);
    }
  }
}

- (BOOL)isFeatureSupported
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = [(RTDefaultsManager *)self->_defaultsManager objectForKey:@"RTDefaultsVehicleEventSupportDynamicEnablementPolicy"];

  if (v3 && (-[RTDefaultsManager objectForKey:](self->_defaultsManager, "objectForKey:", @"RTDefaultsVehicleEventSupportDynamicEnablementPolicy"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 BOOLValue], v4, !v5))
  {
    v13 = [(RTVehicleLocationProvider *)self managedConfiguration];
    v7 = [v13 isFindMyCarAllowed];

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v14 = _rt_log_facility_get_os_log(RTLogFacilityVehicleLocation);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        v15 = @"no";
        if (v7)
        {
          v15 = @"yes";
        }

        v16 = 138412290;
        v17 = v15;
        _os_log_debug_impl(&dword_2304B3000, v14, OS_LOG_TYPE_DEBUG, "isFeatureSupported states, hasEligibleClient, %@", &v16, 0xCu);
      }
    }
  }

  else
  {
    v6 = [(RTVehicleLocationProvider *)self managedConfiguration];
    v7 = [v6 isFindMyCarAllowed];

    v8 = [(RTVehicleLocationProvider *)self pairedWithEligibleDevices];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v9 = _rt_log_facility_get_os_log(RTLogFacilityVehicleLocation);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = @"no";
        if (v7)
        {
          v11 = @"yes";
        }

        else
        {
          v11 = @"no";
        }

        if (v8)
        {
          v10 = @"yes";
        }

        v16 = 138412546;
        v17 = v11;
        v18 = 2112;
        v19 = v10;
        _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "isFeatureSupported states, hasEligibleClient, %@, hasEligibleDevices, %@", &v16, 0x16u);
      }
    }

    LOBYTE(v7) = v7 | v8;
  }

  return v7 & 1;
}

- (BOOL)pairedWithEligibleDevices
{
  v23 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2050000000;
  v2 = _MergedGlobals_3;
  v21 = _MergedGlobals_3;
  if (!_MergedGlobals_3)
  {
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __getNRPairedDeviceRegistryClass_block_invoke;
    v17[3] = &unk_2788C6A40;
    v17[4] = &v18;
    __getNRPairedDeviceRegistryClass_block_invoke(v17);
    v2 = v19[3];
  }

  v3 = v2;
  _Block_object_dispose(&v18, 8);
  v4 = [v2 sharedInstance];
  v5 = [v4 getPairedDevices];

  v6 = [v5 countByEnumeratingWithState:&v13 objects:v22 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"4AF61239-2126-4FD6-8E7A-CDA2D7A0BFE9"];
        LOBYTE(v9) = [v9 supportsCapability:v10];

        if (v9)
        {
          v11 = 1;
          goto LABEL_13;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v13 objects:v22 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_13:

  return v11;
}

- (id)createCompanionLink
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilityVehicleLocation);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_INFO, "RTVehicleLocationCompanionLink init iphone", buf, 2u);
    }
  }

  v4 = [RTVehicleLocationCompanionLink alloc];
  v5 = [(RTNotifier *)self queue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __48__RTVehicleLocationProvider_createCompanionLink__block_invoke;
  v8[3] = &unk_2788C9890;
  v8[4] = self;
  v6 = [(RTVehicleLocationCompanionLink *)v4 initWithQueue:v5 deviceConnectionUpdateHandler:v8];

  return v6;
}

uint64_t __48__RTVehicleLocationProvider_createCompanionLink__block_invoke(uint64_t result, int a2)
{
  if (a2)
  {
    return [*(result + 32) _resendVehicleEventIfNecessary];
  }

  return result;
}

- (void)performPurgeOfType:(int64_t)a3 referenceDate:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(RTNotifier *)self queue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __73__RTVehicleLocationProvider_performPurgeOfType_referenceDate_completion___block_invoke;
  v13[3] = &unk_2788C4C20;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v16 = a3;
  v11 = v9;
  v12 = v8;
  dispatch_async(v10, v13);
}

void __73__RTVehicleLocationProvider_performPurgeOfType_referenceDate_completion___block_invoke(uint64_t a1)
{
  if (*(a1 + 56) == 2)
  {
    [*(a1 + 32) _clearAllVehicleEvents];
  }

  v2 = [*(a1 + 32) vehicleLocationHistoryController];

  if (v2)
  {
    v4 = [*(a1 + 32) vehicleLocationHistoryController];
    [v4 performPurgeOfType:*(a1 + 56) referenceDate:*(a1 + 40) completion:*(a1 + 48)];
  }

  else
  {
    v3 = *(*(a1 + 48) + 16);

    v3();
  }
}

- (void)_shutdownWithHandler:(id)a3
{
  v10 = a3;
  [(RTVehicleLocationProvider *)self setMonitorVehicleConnection:0];
  [(RTVehicleLocationProvider *)self setMonitorVehicleExit:0];
  v4 = [(RTVehicleLocationProvider *)self locationManager];
  [v4 removeObserver:self];

  v5 = [(RTVehicleLocationProvider *)self learnedLocationManager];
  [v5 removeObserver:self];

  v6 = [MEMORY[0x277CCAB98] defaultCenter];
  [v6 removeObserver:self];

  finalizeLocationEstimateTimer = self->_finalizeLocationEstimateTimer;
  if (finalizeLocationEstimateTimer)
  {
    dispatch_source_cancel(finalizeLocationEstimateTimer);
    v8 = self->_finalizeLocationEstimateTimer;
    self->_finalizeLocationEstimateTimer = 0;
  }

  v9 = v10;
  if (v10)
  {
    (*(v10 + 2))(v10, 0);
    v9 = v10;
  }
}

- (void)setMonitorVehicleLocation:(BOOL)a3
{
  v10 = *MEMORY[0x277D85DE8];
  if (self->_monitorVehicleLocation != a3)
  {
    v3 = a3;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v5 = _rt_log_facility_get_os_log(RTLogFacilityVehicleLocation);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v9[0] = 67109120;
        v9[1] = v3;
        _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "monitorVehicleLocation changed to, %d", v9, 8u);
      }
    }

    self->_monitorVehicleLocation = v3;
    if (v3)
    {
      [(RTVehicleLocationProvider *)self setMonitorVehicleConnection:1];
      [(RTVehicleLocationProvider *)self setMonitorVehicleExit:1];
      v6 = [(RTVehicleLocationProvider *)self locationManager];
      v7 = +[(RTNotification *)RTLocationManagerNotificationLocationsLeeched];
      [v6 addObserver:self selector:sel_onLeechedLocation_ name:v7];
    }

    else
    {
      [(RTVehicleLocationProvider *)self setMonitorVehicleConnection:0];
      [(RTVehicleLocationProvider *)self setMonitorVehicleExit:0];
      v8 = [(RTVehicleLocationProvider *)self locationManager];
      [v8 removeObserver:self];

      [(RTVehicleLocationProvider *)self _clearAllVehicleEvents];
    }
  }
}

- (void)setMonitorVehicleConnection:(BOOL)a3
{
  if (self->_monitorVehicleConnection != a3)
  {
    v4 = a3;
    self->_monitorVehicleConnection = a3;
    v7 = [(RTVehicleLocationProvider *)self motionActivityManager];
    +[(RTNotification *)RTMotionActivityManagerNotificationVehicleConnected];
    if (v4)
      v6 = {;
      [v7 addObserver:self selector:sel_onVehicleConnectedNotification_ name:v6];
    }

    else
      v6 = {;
      [v7 removeObserver:self fromNotification:v6];
    }
  }
}

- (void)setMonitorVehicleExit:(BOOL)a3
{
  if (self->_monitorVehicleExit != a3)
  {
    v14 = v3;
    v15 = v4;
    v5 = a3;
    self->_monitorVehicleExit = a3;
    v7 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
    if (v5)
    {
      if (v7)
      {
        v8 = _rt_log_facility_get_os_log(RTLogFacilityVehicleLocation);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "Start monitoring vehicle exit.", buf, 2u);
        }
      }

      v9 = [(RTVehicleLocationProvider *)self motionActivityManager];
      v10 = +[(RTNotification *)RTMotionActivityManagerNotificationVehicleExit];
      [v9 addObserver:self selector:sel_onVehicleExitNotification_ name:v10];
    }

    else
    {
      if (v7)
      {
        v11 = _rt_log_facility_get_os_log(RTLogFacilityVehicleLocation);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          *v12 = 0;
          _os_log_impl(&dword_2304B3000, v11, OS_LOG_TYPE_INFO, "Stop monitoring vehicle exit.", v12, 2u);
        }
      }

      v9 = [(RTVehicleLocationProvider *)self motionActivityManager];
      v10 = +[(RTNotification *)RTMotionActivityManagerNotificationVehicleExit];
      [v9 removeObserver:self fromNotification:v10];
    }
  }
}

- (void)setMonitorLocation:(BOOL)a3
{
  if (self->_monitorLocation != a3)
  {
    v14 = v3;
    v15 = v4;
    v5 = a3;
    self->_monitorLocation = a3;
    v7 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
    if (v5)
    {
      if (v7)
      {
        v8 = _rt_log_facility_get_os_log(RTLogFacilityVehicleLocation);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "Start monitoring location", buf, 2u);
        }
      }

      v9 = [(RTVehicleLocationProvider *)self locationManager];
      v10 = +[(RTNotification *)RTLocationManagerNotificationLocationsAccuracyBest];
      [v9 addObserver:self selector:sel_onLocationNotification_ name:v10];
    }

    else
    {
      if (v7)
      {
        v11 = _rt_log_facility_get_os_log(RTLogFacilityVehicleLocation);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          *v12 = 0;
          _os_log_impl(&dword_2304B3000, v11, OS_LOG_TYPE_INFO, "Stop monitoring location", v12, 2u);
        }
      }

      v9 = [(RTVehicleLocationProvider *)self locationManager];
      v10 = +[(RTNotification *)RTLocationManagerNotificationLocationsAccuracyBest];
      [v9 removeObserver:self fromNotification:v10];
    }
  }
}

- (void)onLocationNotification:(id)a3
{
  v4 = a3;
  v5 = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__RTVehicleLocationProvider_onLocationNotification___block_invoke;
  v7[3] = &unk_2788C4A70;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __52__RTVehicleLocationProvider_onLocationNotification___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) name];
  v3 = +[(RTNotification *)RTLocationManagerNotificationLocationsAccuracyBest];
  v4 = [v2 isEqualToString:v3];

  if (v4)
  {
    v5 = *(a1 + 32);
    v6 = [v5 locations];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __52__RTVehicleLocationProvider_onLocationNotification___block_invoke_2;
    v8[3] = &unk_2788C8170;
    v8[4] = *(a1 + 40);
    [v6 enumerateObjectsUsingBlock:v8];

LABEL_3:
    return;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityVehicleLocation);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = [*(a1 + 32) name];
      *buf = 138412290;
      v10 = v7;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "unhandled notification, %@", buf, 0xCu);
    }

    goto LABEL_3;
  }
}

- (void)onLeechedLocation:(id)a3
{
  v4 = a3;
  v5 = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__RTVehicleLocationProvider_onLeechedLocation___block_invoke;
  v7[3] = &unk_2788C4A70;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __47__RTVehicleLocationProvider_onLeechedLocation___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) name];
  v3 = +[(RTNotification *)RTLocationManagerNotificationLocationsLeeched];
  v4 = [v2 isEqualToString:v3];

  if (v4)
  {
    v5 = [*(a1 + 32) leechedLocations];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __47__RTVehicleLocationProvider_onLeechedLocation___block_invoke_2;
    v6[3] = &unk_2788C8170;
    v6[4] = *(a1 + 40);
    [v5 enumerateObjectsUsingBlock:v6];
  }
}

void __47__RTVehicleLocationProvider_onLeechedLocation___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = a2;
  if ([v7 type] == 1 || objc_msgSend(v7, "type") == 3 || objc_msgSend(v7, "type") == 2 || objc_msgSend(v7, "type") == 10)
  {
    v3 = [*(a1 + 32) locationsCacheLeeched];
    v4 = [v3 count];

    if (v4 >= 0xF)
    {
      v5 = [*(a1 + 32) locationsCacheLeeched];
      [v5 removeObjectAtIndex:0];
    }

    v6 = [*(a1 + 32) locationsCacheLeeched];
    [v6 addObject:v7];
  }
}

- (void)_onLocation:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = [(RTVehicleLocationProvider *)self pendingVehicleParkedEvent];

    if (v5)
    {
      v6 = [(RTVehicleLocationProvider *)self locationsCache];
      [v6 addObject:v4];

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v7 = _rt_log_facility_get_os_log(RTLogFacilityVehicleLocation);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          v8 = [v4 toString];
          v9 = [(RTVehicleLocationProvider *)self locationsCache];
          v10 = 138740227;
          v11 = v8;
          v12 = 2048;
          v13 = [v9 count];
          _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "Adding new location, %{sensitive}@, total locations in cache, %lu", &v10, 0x16u);
        }
      }
    }

    else
    {
      [(RTVehicleLocationProvider *)self setMonitorLocation:0];
    }
  }
}

- (void)_finalizeLocationEstimate
{
  v36 = *MEMORY[0x277D85DE8];
  [(RTVehicleLocationProvider *)self setMonitorLocation:0];
  v3 = objc_opt_new();
  v4 = [(RTVehicleLocationProvider *)self locationsCache];
  v5 = [(RTVehicleLocationProvider *)self pendingVehicleParkedEvent];
  v6 = [v5 date];
  [v6 timeIntervalSinceReferenceDate];
  v7 = [v3 estimateVehicleLocationWithLocations:v4 parkingTimestamp:?];

  if (v7)
  {
    [v7 horizontalAccuracy];
    if (v8 > 0.0)
    {
      v9 = [objc_alloc(MEMORY[0x277D01160]) initWithCLLocation:v7];
      v10 = [(RTVehicleLocationProvider *)self pendingVehicleParkedEvent];
      [v10 setLocation:v9];
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityVehicleLocation);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = [(RTVehicleLocationProvider *)self pendingVehicleParkedEvent];
      v13 = [v12 date];
      v14 = [(RTVehicleLocationProvider *)self pendingVehicleParkedEvent];
      v15 = [v14 location];
      v30 = 138412547;
      v31 = v13;
      v32 = 2117;
      v33 = v15;
      _os_log_impl(&dword_2304B3000, v11, OS_LOG_TYPE_INFO, "Parking, timestamp, %@, final location, %{sensitive}@", &v30, 0x16u);
    }
  }

  v16 = objc_opt_new();
  v17 = [(RTVehicleLocationProvider *)self locationsCache];
  v18 = [(RTVehicleLocationProvider *)self pendingVehicleParkedEvent];
  v19 = [v18 date];
  [v19 timeIntervalSinceReferenceDate];
  v20 = [v16 calculateParkingQualityWithLocations:v17 parkingTimestamp:?];

  v21 = [(RTVehicleLocationProvider *)self pendingVehicleParkedEvent];
  [v21 setLocationQuality:v20];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v22 = _rt_log_facility_get_os_log(RTLogFacilityVehicleLocation);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = [(RTVehicleLocationProvider *)self pendingVehicleParkedEvent];
      v24 = [v23 date];
      v25 = [(RTVehicleLocationProvider *)self locationsCache];
      v26 = [v25 count];
      v30 = 138412802;
      v31 = v24;
      v32 = 2048;
      v33 = v26;
      v34 = 2048;
      v35 = v20;
      _os_log_impl(&dword_2304B3000, v22, OS_LOG_TYPE_INFO, "Parking, timestamp, %@, quality based on %lu samples is %lu.", &v30, 0x20u);
    }
  }

  v27 = [(RTVehicleLocationProvider *)self locationsCache];
  [v27 removeAllObjects];

  v28 = [(RTVehicleLocationProvider *)self pendingVehicleParkedEvent];
  v29 = [v28 location];

  if (v29)
  {
    [(RTVehicleLocationProvider *)self _processPendingVehicleEventAfterLocationFinalization];
  }

  else
  {
    [(RTVehicleLocationProvider *)self setPendingVehicleParkedEvent:0];
    [(RTVehicleLocationProvider *)self _recordMetricSuppressedEvent];
  }
}

- (void)_processPendingVehicleEventAfterLocationFinalization
{
  v4 = [(RTVehicleLocationProvider *)self pendingVehicleParkedEvent];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __81__RTVehicleLocationProvider__processPendingVehicleEventAfterLocationFinalization__block_invoke;
  v5[3] = &unk_2788C4D10;
  v5[4] = self;
  v5[5] = a2;
  [(RTVehicleLocationProvider *)self _updateNearbyLocationOfInterestOfVehicleEvent:v4 handler:v5];
}

void __81__RTVehicleLocationProvider__processPendingVehicleEventAfterLocationFinalization__block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityVehicleLocation);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = NSStringFromSelector(*(a1 + 40));
      v6 = [*(a1 + 32) pendingVehicleParkedEvent];
      v7 = [v6 nearbyLocationOfInterest];
      v11 = 138412803;
      v12 = v5;
      v13 = 2117;
      v14 = v7;
      v15 = 2112;
      v16 = v3;
      _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "%@, nearbyLOI, %{sensitive}@, error, %@", &v11, 0x20u);
    }
  }

  v8 = *(a1 + 32);
  v9 = [v8 pendingVehicleParkedEvent];
  [v8 _updateUsualLocationOfVehicleEvent:v9];

  v10 = [*(a1 + 32) pendingVehicleParkedEvent];
  [v10 setLocationFinalized:1];

  [*(a1 + 32) _finalizeLastVehicleEventIfAppropriate];
}

- (void)_onFinalizeLocationEstimateTimerExpiry
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilityVehicleLocation);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_INFO, "finalize location estimate timer expiry", v6, 2u);
    }
  }

  finalizeLocationEstimateTimer = self->_finalizeLocationEstimateTimer;
  if (finalizeLocationEstimateTimer)
  {
    dispatch_source_cancel(finalizeLocationEstimateTimer);
    v5 = self->_finalizeLocationEstimateTimer;
    self->_finalizeLocationEstimateTimer = 0;
  }

  [(RTVehicleLocationProvider *)self _finalizeLocationEstimate];
}

- (void)_finalizeLastVehicleEventIfAppropriate
{
  v28[1] = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilityVehicleLocation);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v27 = 0;
      _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_INFO, "_finalizeLastVehicleEventIfAppropriate called.", v27, 2u);
    }
  }

  v4 = [(RTVehicleLocationProvider *)self pendingVehicleParkedEvent];
  v5 = [v4 location];
  if (!v5)
  {
    goto LABEL_11;
  }

  v6 = v5;
  v7 = [(RTVehicleLocationProvider *)self pendingVehicleParkedEvent];
  if (([v7 locationFinalized] & 1) == 0)
  {

LABEL_11:
    return;
  }

  v8 = [(RTVehicleLocationProvider *)self pendingVehicleParkedEvent];
  v9 = [v8 confirmed];

  if (!v9)
  {
    return;
  }

  v10 = [(RTVehicleLocationProvider *)self pendingVehicleParkedEvent];
  v11 = [v10 nearbyLocationOfInterest];
  if (v11)
  {
    v12 = [(RTVehicleLocationProvider *)self pendingVehicleParkedEvent];
    v13 = [v12 nearbyLocationOfInterest];
    v14 = [v13 type] == 0;
  }

  else
  {
    v14 = 0;
  }

  v15 = [(RTVehicleLocationProvider *)self lastVehicleParkedEvent];
  if (!v15)
  {
    goto LABEL_20;
  }

  v16 = v15;
  v17 = [(RTVehicleLocationProvider *)self pendingVehicleParkedEvent];
  v18 = [v17 vehicleIdentifier];
  v19 = [(RTVehicleLocationProvider *)self lastVehicleParkedEvent];
  v20 = [v19 vehicleIdentifier];
  if ([(RTVehicleLocationProvider *)self _sameVehicleWithDeviceId:v18 otherDeviceId:v20])
  {

LABEL_19:
    goto LABEL_20;
  }

  v21 = [(RTVehicleLocationProvider *)self pendingVehicleParkedEvent];
  v22 = [v21 userSetLocation] | v14;

  if ((v22 & 1) == 0)
  {
    v16 = [(RTVehicleLocationProvider *)self pendingVehicleParkedEvent];
    v17 = [(RTVehicleLocationProvider *)self lastVehicleParkedEvent];
    [(RTVehicleLocationProvider *)self _postVehicleReplacementBulletinNotificationWithVehicleEvent:v16 replacingEvent:v17];
    v14 = 1;
    goto LABEL_19;
  }

LABEL_20:
  v23 = [(RTVehicleLocationProvider *)self pendingVehicleParkedEvent];
  [(RTVehicleLocationProvider *)self setLastVehicleParkedEvent:v23];

  [(RTVehicleLocationProvider *)self setPendingVehicleParkedEvent:0];
  v24 = [(RTVehicleLocationProvider *)self lastVehicleParkedEvent];
  v28[0] = v24;
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:1];
  [(RTVehicleLocationProvider *)self _submitFMCCarParkedInstanceWithParkedEvents:v25];

  v26 = [(RTVehicleLocationProvider *)self lastVehicleParkedEvent];
  [(RTVehicleLocationProvider *)self _submitFMCParkingEventMetric:v26];

  if (!v14)
  {
    [(RTVehicleLocationProvider *)self _postBulletinNotificationIfAppropriate];
  }

  [(RTVehicleLocationProvider *)self _persistLastVehicleEvent];
  [(RTVehicleLocationProvider *)self _notifyClients];
}

- (void)_onVehicleParkedWithDeviceId:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityVehicleLocation);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v18 = v4;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "onVehicleParked, deviceId, %@", buf, 0xCu);
    }
  }

  v6 = [MEMORY[0x277CBEAA8] date];
  v7 = [(RTVehicleLocationProvider *)self pendingVehicleParkedEvent];
  if (v7)
  {
    [(RTVehicleLocationProvider *)self pendingVehicleParkedEvent];
  }

  else
  {
    [(RTVehicleLocationProvider *)self lastVehicleParkedEvent];
  }
  v8 = ;
  v9 = [v8 date];

  if (v9 && ([v6 timeIntervalSinceDate:v9], v10 < 10.0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v11 = _rt_log_facility_get_os_log(RTLogFacilityVehicleLocation);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        [v6 timeIntervalSinceDate:v9];
        *buf = 134217984;
        v18 = v12;
        _os_log_impl(&dword_2304B3000, v11, OS_LOG_TYPE_INFO, "Got onVehicleParked too soon. Last event was %f seconds ago. Not updating.", buf, 0xCu);
      }
    }
  }

  else
  {
    v13 = objc_alloc(MEMORY[0x277D01420]);
    v14 = [MEMORY[0x277CCAD78] UUID];
    LOBYTE(v16) = 0;
    v15 = [v13 initWithDate:v6 location:0 vehicleIdentifier:v4 userSetLocation:0 notes:0 identifier:v14 photo:0 mapItem:0 confirmed:v16];
    [(RTVehicleLocationProvider *)self setPendingVehicleParkedEvent:v15];

    [(RTVehicleLocationProvider *)self requestLocations];
  }
}

- (void)requestLocations
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [(RTVehicleLocationProvider *)self locationsCache];
  v4 = [(RTVehicleLocationProvider *)self locationsCacheLeeched];
  [v3 addObjectsFromArray:v4];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityVehicleLocation);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [(RTVehicleLocationProvider *)self locationsCacheLeeched];
      *buf = 134217984;
      v20 = [v6 count];
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "Added %lu leeched locations to the locations array.", buf, 0xCu);
    }
  }

  v7 = [(RTVehicleLocationProvider *)self locationsCacheLeeched];
  [v7 removeAllObjects];

  [(RTVehicleLocationProvider *)self setMonitorLocation:1];
  finalizeLocationEstimateTimer = self->_finalizeLocationEstimateTimer;
  if (finalizeLocationEstimateTimer)
  {
    v9 = dispatch_time(0, 15000000000);
    dispatch_source_set_timer(finalizeLocationEstimateTimer, v9, 0xFFFFFFFFFFFFFFFFLL, 0xEE6B280uLL);
  }

  else
  {
    v10 = [(RTNotifier *)self queue];
    v11 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v10);
    v12 = self->_finalizeLocationEstimateTimer;
    self->_finalizeLocationEstimateTimer = v11;

    v13 = self->_finalizeLocationEstimateTimer;
    v14 = dispatch_time(0, 15000000000);
    dispatch_source_set_timer(v13, v14, 0xFFFFFFFFFFFFFFFFLL, 0xEE6B280uLL);
    objc_initWeak(buf, self);
    v15 = self->_finalizeLocationEstimateTimer;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __45__RTVehicleLocationProvider_requestLocations__block_invoke;
    handler[3] = &unk_2788C5908;
    objc_copyWeak(&v18, buf);
    dispatch_source_set_event_handler(v15, handler);
    dispatch_resume(self->_finalizeLocationEstimateTimer);
    objc_destroyWeak(&v18);
    objc_destroyWeak(buf);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilityVehicleLocation);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v20 = 0x402E000000000000;
      _os_log_impl(&dword_2304B3000, v16, OS_LOG_TYPE_INFO, "Set timer to fire in %f seconds", buf, 0xCu);
    }
  }
}

void __45__RTVehicleLocationProvider_requestLocations__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _onFinalizeLocationEstimateTimerExpiry];
}

- (void)_onVehicleStartedWithDeviceId:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityVehicleLocation);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v26 = v4;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "onVehicleStarted, deviceId, %@", buf, 0xCu);
    }
  }

  [(RTVehicleLocationProvider *)self setPendingVehicleParkedEvent:0];
  v6 = [(RTVehicleLocationProvider *)self lastVehicleParkedEvent];

  if (v6)
  {
    v7 = [(RTVehicleLocationProvider *)self lastVehicleParkedEvent];
    v8 = [v7 location];

    v9 = [(RTVehicleLocationProvider *)self lastVehicleParkedEvent];
    v10 = [v9 identifier];
    v11 = [v10 UUIDString];

    v12 = [(RTVehicleLocationProvider *)self locationManager];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __59__RTVehicleLocationProvider__onVehicleStartedWithDeviceId___block_invoke;
    v22[3] = &unk_2788CAD70;
    v22[4] = self;
    v23 = v8;
    v24 = v11;
    v13 = v11;
    v14 = v8;
    [v12 fetchCachedLocationWithHandler:v22];

    v15 = [(RTVehicleLocationProvider *)self lastVehicleParkedEvent];
    v16 = [v15 vehicleIdentifier];
    v17 = [(RTVehicleLocationProvider *)self _sameVehicleWithDeviceId:v4 otherDeviceId:v16];

    if (v17)
    {
      [(RTVehicleLocationProvider *)self setLastVehicleParkedEvent:0];
      [(RTVehicleLocationProvider *)self _deleteLastVehicleEvent];
      [(RTVehicleLocationProvider *)self _clearBulletinNotifications];
      [(RTVehicleLocationProvider *)self _notifyClients];
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v19 = _rt_log_facility_get_os_log(RTLogFacilityVehicleLocation);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v20 = [(RTVehicleLocationProvider *)self lastVehicleParkedEvent];
        v21 = [v20 vehicleIdentifier];
        *buf = 138412546;
        v26 = v4;
        v27 = 2112;
        v28 = v21;
        _os_log_impl(&dword_2304B3000, v19, OS_LOG_TYPE_INFO, "onVehicleStarted, different vehicle, deviceId, %@, old deviceId, %@", buf, 0x16u);
      }
    }

LABEL_18:
    goto LABEL_19;
  }

  v18 = [(RTVehicleLocationProvider *)self managedObjectContext];

  if (!v18)
  {
    [(RTVehicleLocationProvider *)self _deleteLastVehicleEvent];
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilityVehicleLocation);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_2304B3000, v14, OS_LOG_TYPE_INFO, "Metric: No existing parking information. no return to car metric is submitted.", buf, 2u);
    }

    goto LABEL_18;
  }

LABEL_19:
}

void __59__RTVehicleLocationProvider__onVehicleStartedWithDeviceId___block_invoke(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [a1[4] queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__RTVehicleLocationProvider__onVehicleStartedWithDeviceId___block_invoke_2;
  block[3] = &unk_2788CAD48;
  v13 = v6;
  v14 = v5;
  v8 = a1[5];
  v9 = a1[4];
  v15 = v8;
  v16 = v9;
  v17 = a1[6];
  v10 = v5;
  v11 = v6;
  dispatch_async(v7, block);
}

void __59__RTVehicleLocationProvider__onVehicleStartedWithDeviceId___block_invoke_2(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      return;
    }

    v1 = _rt_log_facility_get_os_log(RTLogFacilityVehicleLocation);
    if (!os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
    {
      goto LABEL_18;
    }

    *buf = 0;
    v2 = "Metric: No cached location is found. no return to car metric is submitted.";
    v3 = v1;
    v4 = 2;
    goto LABEL_17;
  }

  Current = CFAbsoluteTimeGetCurrent();
  v7 = *(a1 + 40);
  if (v7)
  {
    [v7 clientLocation];
    v8 = v21;
  }

  else
  {
    v8 = 0.0;
  }

  v9 = Current - v8;
  v10 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
  if (v9 < 15.0)
  {
    if (v10)
    {
      v11 = _rt_log_facility_get_os_log(RTLogFacilityVehicleLocation);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v23 = v9;
        _os_log_impl(&dword_2304B3000, v11, OS_LOG_TYPE_INFO, "Metric: A valid cached location is found. a return to car metric will be submitted. (%f seconds)", buf, 0xCu);
      }
    }

    v12 = objc_alloc(MEMORY[0x277CE41F8]);
    [*(a1 + 48) latitude];
    v14 = v13;
    [*(a1 + 48) longitude];
    v1 = [v12 initWithLatitude:v14 longitude:v15];
    [v1 distanceFromLocation:*(a1 + 40)];
    v17 = v16;
    v18 = *(a1 + 56);
    v19 = *(a1 + 64);
    [*(a1 + 40) horizontalAccuracy];
    [v18 _submitFMCReturnToCarInstanceWithIdentifier:v19 horizontalAccuracy:v20 horizontalDistance:{fmin(v17, 2147483650.0)}];
    goto LABEL_18;
  }

  if (!v10)
  {
    return;
  }

  v1 = _rt_log_facility_get_os_log(RTLogFacilityVehicleLocation);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v23 = v9;
    v2 = "Metric: The cached location is too old. no return to car metric is submitted. (%f seconds)";
    v3 = v1;
    v4 = 12;
LABEL_17:
    _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_INFO, v2, buf, v4);
  }

LABEL_18:
}

- (void)_onVehicleConnectedNotification:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 name];
  v6 = +[(RTNotification *)RTMotionActivityManagerNotificationVehicleConnected];
  v7 = [v5 isEqualToString:v6];

  if (v7)
  {
    v8 = v4;
    if ([v8 vehicleConnectedState] == 1)
    {
      v9 = [v8 deviceId];
      [(RTVehicleLocationProvider *)self _onVehicleParkedWithDeviceId:v9];
      v10 = 2;
    }

    else
    {
      if ([v8 vehicleConnectedState] != 2)
      {
LABEL_11:

        goto LABEL_12;
      }

      v9 = [v8 deviceId];
      [(RTVehicleLocationProvider *)self _onVehicleStartedWithDeviceId:v9];
      v10 = 1;
    }

    [(RTVehicleLocationProvider *)self _submitFMCVehicleConnectionEventInstanceWithConnectionStatus:v10];
    goto LABEL_11;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityVehicleLocation);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = [v4 name];
      v13 = 138412290;
      v14 = v12;
      _os_log_impl(&dword_2304B3000, v11, OS_LOG_TYPE_INFO, "unsupported notification, %@", &v13, 0xCu);
    }
  }

LABEL_12:
}

- (void)onVehicleConnectedNotification:(id)a3
{
  v4 = a3;
  v5 = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60__RTVehicleLocationProvider_onVehicleConnectedNotification___block_invoke;
  v7[3] = &unk_2788C4A70;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_onVehicleExit
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = [(RTVehicleLocationProvider *)self pendingVehicleParkedEvent];
  if (v4 && (-[RTVehicleLocationProvider pendingVehicleParkedEvent](self, "pendingVehicleParkedEvent"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 confirmed], v5, v4, !v6))
  {
    v8 = [(RTVehicleLocationProvider *)self pendingVehicleParkedEvent];
    v9 = [v8 date];
    [v9 timeIntervalSinceNow];
    v11 = v10;

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v12 = _rt_log_facility_get_os_log(RTLogFacilityVehicleLocation);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = NSStringFromSelector(a2);
        *buf = 138412546;
        v22 = v13;
        v23 = 2048;
        v24 = -v11;
        _os_log_impl(&dword_2304B3000, v12, OS_LOG_TYPE_INFO, "%@ called after %f seconds of the vehicle event.", buf, 0x16u);
      }
    }

    objc_initWeak(buf, self);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __43__RTVehicleLocationProvider__onVehicleExit__block_invoke;
    aBlock[3] = &unk_2788C5908;
    objc_copyWeak(&v20, buf);
    v14 = _Block_copy(aBlock);
    v15 = v14;
    if (v11 <= -300.0)
    {
      v16 = [(RTVehicleLocationProvider *)self locationManager];
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __43__RTVehicleLocationProvider__onVehicleExit__block_invoke_144;
      v17[3] = &unk_2788C8318;
      v17[4] = self;
      v18 = v15;
      [v16 fetchCurrentLocationWithHandler:v17];
    }

    else
    {
      (*(v14 + 2))(v14);
    }

    objc_destroyWeak(&v20);
    objc_destroyWeak(buf);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityVehicleLocation);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "No vehicle event to confirm or vehicle event already confirmed.", buf, 2u);
    }
  }
}

void __43__RTVehicleLocationProvider__onVehicleExit__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained pendingVehicleParkedEvent];
  if (v2 && (v3 = v2, [WeakRetained pendingVehicleParkedEvent], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "confirmed"), v4, v3, (v5 & 1) == 0))
  {
    v7 = [WeakRetained pendingVehicleParkedEvent];
    [v7 setConfirmed:1];

    [WeakRetained _finalizeLastVehicleEventIfAppropriate];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v6 = _rt_log_facility_get_os_log(RTLogFacilityVehicleLocation);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v8 = [WeakRetained pendingVehicleParkedEvent];
        v9 = 138739971;
        v10 = v8;
        _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "Confirming the vehicle event, %{sensitive}@", &v9, 0xCu);
      }

      goto LABEL_9;
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityVehicleLocation);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "No vehicle event to confirm, or vehicle event already confirmed.", &v9, 2u);
    }

LABEL_9:
  }
}

void __43__RTVehicleLocationProvider__onVehicleExit__block_invoke_144(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __43__RTVehicleLocationProvider__onVehicleExit__block_invoke_2;
  v12[3] = &unk_2788C5530;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v15 = v5;
  v16 = v9;
  v10 = v5;
  v11 = v6;
  dispatch_async(v7, v12);
}

void __43__RTVehicleLocationProvider__onVehicleExit__block_invoke_2(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v3)
  {
    [v2 setPendingVehicleParkedEvent:0];
    [*(a1 + 40) _recordMetricSuppressedEvent];
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      return;
    }

    v4 = _rt_log_facility_get_os_log(RTLogFacilityVehicleLocation);
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      goto LABEL_15;
    }

    LOWORD(v13) = 0;
    v5 = "Sanity check failed. No location fix on vehicle exit.";
    goto LABEL_14;
  }

  v6 = [v2 pendingVehicleParkedEvent];
  v7 = [v6 location];
  [v7 latitude];
  v8 = [*(a1 + 40) pendingVehicleParkedEvent];
  v9 = [v8 location];
  [v9 longitude];
  [*(a1 + 48) coordinate];
  [*(a1 + 48) coordinate];
  RTCommonCalculateDistance();
  v11 = v10;

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityVehicleLocation);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = 134217984;
      v14 = v11;
      _os_log_impl(&dword_2304B3000, v12, OS_LOG_TYPE_INFO, "Sanity check, distance between exit and disconnect, %f", &v13, 0xCu);
    }
  }

  if (v11 < 700.0)
  {
    (*(*(a1 + 56) + 16))();
    return;
  }

  [*(a1 + 40) setPendingVehicleParkedEvent:0];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityVehicleLocation);
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
LABEL_15:

      return;
    }

    LOWORD(v13) = 0;
    v5 = "Sanity check failed. Removing pending vehicle event since we're not confident about it.";
LABEL_14:
    _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, v5, &v13, 2u);
    goto LABEL_15;
  }
}

- (void)_onVehicleExitNotification:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 name];
  v6 = +[(RTNotification *)RTMotionActivityManagerNotificationVehicleExit];
  v7 = [v5 isEqualToString:v6];

  v8 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
  if (v7)
  {
    if (v8)
    {
      v9 = _rt_log_facility_get_os_log(RTLogFacilityVehicleLocation);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        LOWORD(v12) = 0;
        _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "Got onVehicleExitNotification.", &v12, 2u);
      }
    }

    [(RTVehicleLocationProvider *)self _onVehicleExit];
    [(RTVehicleLocationProvider *)self _submitFMCVehicleConnectionEventInstanceWithConnectionStatus:3];
  }

  else if (v8)
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityVehicleLocation);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = [v4 name];
      v12 = 138412290;
      v13 = v11;
      _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_INFO, "unsupported notification, %@", &v12, 0xCu);
    }
  }
}

- (void)onVehicleExitNotification:(id)a3
{
  v4 = a3;
  v5 = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__RTVehicleLocationProvider_onVehicleExitNotification___block_invoke;
  v7[3] = &unk_2788C4A70;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)internalAddObserver:(id)a3 name:(id)a4
{
  v4 = a4;
  v5 = +[(RTNotification *)RTVehicleEventNotification];
  [v4 isEqualToString:v5];
}

- (void)internalRemoveObserver:(id)a3 name:(id)a4
{
  v4 = a4;
  v5 = +[(RTNotification *)RTVehicleEventNotification];
  [v4 isEqualToString:v5];
}

- (void)fetchLastVehicleEventsWithHandler:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(RTNotifier *)self queue];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __63__RTVehicleLocationProvider_fetchLastVehicleEventsWithHandler___block_invoke;
    v6[3] = &unk_2788C4938;
    v6[4] = self;
    v7 = v4;
    dispatch_async(v5, v6);
  }
}

void __63__RTVehicleLocationProvider_fetchLastVehicleEventsWithHandler___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) monitorVehicleLocation] & 1) != 0 || (objc_msgSend(*(a1 + 32), "monitorExternalVehicleLocation"))
  {
    v2 = *(a1 + 40);
    v4 = [*(a1 + 32) _getLastVehicleEvents];
    (*(v2 + 16))(v2, v4, 0);
  }

  else
  {
    v3 = *(a1 + 40);
    v4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01448] code:2 userInfo:0];
    (*(v3 + 16))(v3, 0, v4);
  }
}

- (void)vehicleEventAtLocation:(id)a3 notes:(id)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(RTNotifier *)self queue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __66__RTVehicleLocationProvider_vehicleEventAtLocation_notes_handler___block_invoke;
  v15[3] = &unk_2788C5530;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(v11, v15);
}

- (void)_vehicleEventAtLocation:(id)a3 notes:(id)a4 handler:(id)a5
{
  v37 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityVehicleLocation);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138740227;
      v34 = v8;
      v35 = 2112;
      v36 = v9;
      _os_log_impl(&dword_2304B3000, v11, OS_LOG_TYPE_INFO, "_vehicleEventAtLocation, %{sensitive}@, notes, %@", buf, 0x16u);
    }
  }

  if ([(RTVehicleLocationProvider *)self monitorVehicleLocation])
  {
    v12 = [MEMORY[0x277CBEAA8] date];
    v13 = [(RTVehicleLocationProvider *)self pendingVehicleParkedEvent];
    if (v13 && (v14 = v13, -[RTVehicleLocationProvider pendingVehicleParkedEvent](self, "pendingVehicleParkedEvent"), v15 = objc_claimAutoreleasedReturnValue(), [v15 date], v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "timeIntervalSinceDate:", v16), v18 = v17, v16, v15, v14, v18 < 10.0))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v19 = _rt_log_facility_get_os_log(RTLogFacilityVehicleLocation);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_2304B3000, v19, OS_LOG_TYPE_INFO, "Found recent parking event. Merging into existing event.", buf, 2u);
        }
      }

      if (v8)
      {
        v20 = [objc_alloc(MEMORY[0x277D01160]) initWithCLLocation:v8];
        v21 = [(RTVehicleLocationProvider *)self pendingVehicleParkedEvent];
        [v21 setLocation:v20];

        v22 = [(RTVehicleLocationProvider *)self pendingVehicleParkedEvent];
        [v22 setUserSetLocation:1];
      }

      if (v9)
      {
        v23 = [(RTVehicleLocationProvider *)self pendingVehicleParkedEvent];
        [v23 setNotes:v9];
      }

      v24 = [(RTVehicleLocationProvider *)self pendingVehicleParkedEvent];
      [v24 setConfirmed:1];
    }

    else
    {
      v27 = objc_alloc(MEMORY[0x277D01420]);
      v24 = [objc_alloc(MEMORY[0x277D01160]) initWithCLLocation:v8];
      v28 = [MEMORY[0x277CCAD78] UUID];
      LOBYTE(v32) = 1;
      v29 = [v27 initWithDate:v12 location:v24 vehicleIdentifier:0 userSetLocation:v8 != 0 notes:v9 identifier:v28 photo:0 mapItem:0 confirmed:v32];
      [(RTVehicleLocationProvider *)self setPendingVehicleParkedEvent:v29];
    }

    v30 = [(RTVehicleLocationProvider *)self pendingVehicleParkedEvent];
    v31 = [v30 location];

    if (v31)
    {
      [(RTVehicleLocationProvider *)self _processPendingVehicleEventAfterLocationFinalization];
      if (!v10)
      {
        goto LABEL_30;
      }
    }

    else
    {
      [(RTVehicleLocationProvider *)self requestLocations];
      if (!v10)
      {
LABEL_30:

        goto LABEL_31;
      }
    }

    v26 = 0;
LABEL_29:
    v10[2](v10, v26);
    goto LABEL_30;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v25 = _rt_log_facility_get_os_log(RTLogFacilityVehicleLocation);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_2304B3000, v25, OS_LOG_TYPE_INFO, "FMC disabled, not creating vehicle event.", buf, 2u);
    }
  }

  if (v10)
  {
    v26 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01448] code:2 userInfo:0];
    v12 = v26;
    goto LABEL_29;
  }

LABEL_31:
}

- (void)_clearAllVehicleEvents
{
  v3 = [(RTVehicleLocationProvider *)self lastVehicleParkedEvent];
  if (v3)
  {
  }

  else
  {
    v4 = [(RTVehicleLocationProvider *)self pendingVehicleParkedEvent];

    if (!v4)
    {
      return;
    }
  }

  [(RTVehicleLocationProvider *)self setLastVehicleParkedEvent:0];
  [(RTVehicleLocationProvider *)self setPendingVehicleParkedEvent:0];
  [(RTVehicleLocationProvider *)self setMonitorLocation:0];
  [(RTVehicleLocationProvider *)self _deleteLastVehicleEvent];

  [(RTVehicleLocationProvider *)self _notifyClients];
}

- (void)clearAllVehicleEvents
{
  v3 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__RTVehicleLocationProvider_clearAllVehicleEvents__block_invoke;
  block[3] = &unk_2788C4EA0;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)updateVehicleEventWithIdentifier:(id)a3 notes:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__RTVehicleLocationProvider_updateVehicleEventWithIdentifier_notes___block_invoke;
  block[3] = &unk_2788C76F8;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __68__RTVehicleLocationProvider_updateVehicleEventWithIdentifier_notes___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) lastVehicleParkedEvent];
  v3 = [v2 identifier];
  v4 = [v3 isEqual:*(a1 + 40)];

  if (v4)
  {
    v5 = *(a1 + 48);
    v6 = [*(a1 + 32) lastVehicleParkedEvent];
    [v6 setNotes:v5];

    v7 = *(a1 + 32);
    v8 = [*(a1 + 40) UUIDString];
    [v7 _submitFMCAssistanceInstanceWithIdentifier:v8 uiPlacement:0 assistanceType:1 assistanceValue:0];

    [*(a1 + 32) _persistLastVehicleEvent];
    v9 = *(a1 + 32);

    [v9 _notifyClients];
  }
}

- (void)updateVehicleEventWithIdentifier:(id)a3 photo:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__RTVehicleLocationProvider_updateVehicleEventWithIdentifier_photo___block_invoke;
  block[3] = &unk_2788C76F8;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __68__RTVehicleLocationProvider_updateVehicleEventWithIdentifier_photo___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) lastVehicleParkedEvent];
  v3 = [v2 identifier];
  v4 = [v3 isEqual:*(a1 + 40)];

  if (v4)
  {
    v5 = *(a1 + 48);
    v6 = [*(a1 + 32) lastVehicleParkedEvent];
    [v6 setPhoto:v5];

    v7 = *(a1 + 32);
    v8 = [*(a1 + 40) UUIDString];
    [v7 _submitFMCAssistanceInstanceWithIdentifier:v8 uiPlacement:0 assistanceType:2 assistanceValue:0];

    [*(a1 + 32) _persistLastVehicleEvent];
    v9 = *(a1 + 32);

    [v9 _notifyClients];
  }
}

- (void)updateVehicleEventWithIdentifier:(id)a3 mapItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__RTVehicleLocationProvider_updateVehicleEventWithIdentifier_mapItem___block_invoke;
  block[3] = &unk_2788C76F8;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __70__RTVehicleLocationProvider_updateVehicleEventWithIdentifier_mapItem___block_invoke(id *a1)
{
  v2 = [a1[4] lastVehicleParkedEvent];
  v3 = [v2 identifier];
  v4 = [v3 isEqual:a1[5]];

  if (v4)
  {
    v5 = a1[6];
    v6 = [a1[4] lastVehicleParkedEvent];
    [v6 setMapItem:v5];

    v7 = objc_alloc(MEMORY[0x277CE41F8]);
    v8 = [a1[4] lastVehicleParkedEvent];
    v9 = [v8 location];
    [v9 latitude];
    v11 = v10;
    v12 = [a1[4] lastVehicleParkedEvent];
    v13 = [v12 location];
    [v13 longitude];
    v26 = [v7 initWithLatitude:v11 longitude:v14];

    v15 = objc_alloc(MEMORY[0x277CE41F8]);
    v16 = [a1[6] location];
    [v16 latitude];
    v18 = v17;
    v19 = [a1[6] location];
    [v19 longitude];
    v21 = [v15 initWithLatitude:v18 longitude:v20];

    [v26 distanceFromLocation:v21];
    v23 = v22;
    v24 = a1[4];
    v25 = [a1[5] UUIDString];
    [v24 _submitFMCAssistanceInstanceWithIdentifier:v25 uiPlacement:1 assistanceType:3 assistanceValue:v23];

    [a1[4] _persistLastVehicleEvent];
    [a1[4] _notifyClients];
  }
}

- (void)updateVehicleEventWithIdentifier:(id)a3 location:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__RTVehicleLocationProvider_updateVehicleEventWithIdentifier_location___block_invoke;
  block[3] = &unk_2788C76F8;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __71__RTVehicleLocationProvider_updateVehicleEventWithIdentifier_location___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) lastVehicleParkedEvent];
  v3 = [v2 identifier];
  v4 = [v3 isEqual:*(a1 + 40)];

  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x277CE41F8]);
    v6 = [*(a1 + 32) lastVehicleParkedEvent];
    v7 = [v6 location];
    [v7 latitude];
    v9 = v8;
    v10 = [*(a1 + 32) lastVehicleParkedEvent];
    v11 = [v10 location];
    [v11 longitude];
    v21 = [v5 initWithLatitude:v9 longitude:v12];

    [v21 distanceFromLocation:*(a1 + 48)];
    v14 = v13;
    v15 = *(a1 + 32);
    v16 = [*(a1 + 40) UUIDString];
    [v15 _submitFMCAssistanceInstanceWithIdentifier:v16 uiPlacement:1 assistanceType:4 assistanceValue:v14];

    v17 = [objc_alloc(MEMORY[0x277D01160]) initWithCLLocation:*(a1 + 48)];
    v18 = [*(a1 + 32) lastVehicleParkedEvent];
    [v18 setLocation:v17];

    v19 = [*(a1 + 32) lastVehicleParkedEvent];
    [v19 setUserSetLocation:1];

    v20 = [*(a1 + 32) lastVehicleParkedEvent];
    [v20 setLocationQuality:0];

    [*(a1 + 32) _persistLastVehicleEvent];
    [*(a1 + 32) _notifyClients];
  }
}

- (void)engageInVehicleEventWithIdentifier:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__RTVehicleLocationProvider_engageInVehicleEventWithIdentifier___block_invoke;
  block[3] = &unk_2788C57F8;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __64__RTVehicleLocationProvider_engageInVehicleEventWithIdentifier___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained lastVehicleParkedEvent];
  v3 = [v2 identifier];
  v4 = [v3 isEqual:*(a1 + 32)];

  if (v4)
  {
    v5 = [*(a1 + 32) UUIDString];
    [WeakRetained _submitFMCAssistanceInstanceWithIdentifier:v5 uiPlacement:1 assistanceType:5 assistanceValue:0];
  }
}

- (void)_postBulletinNotificationIfAppropriate
{
  *&v21[5] = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilityVehicleLocation);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      LOWORD(v19) = 0;
      _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_INFO, "_postNotificationIfAppropriate called.", &v19, 2u);
    }
  }

  v4 = [(RTVehicleLocationProvider *)self lastVehicleParkedEvent];
  if ([v4 userSetLocation])
  {
    goto LABEL_8;
  }

  v5 = [(RTVehicleLocationProvider *)self lastVehicleParkedEvent];
  if ([v5 usualLocation])
  {

LABEL_8:
    goto LABEL_9;
  }

  v13 = [(RTVehicleLocationProvider *)self lastVehicleParkedEvent];
  v14 = [v13 locationQuality];

  if (v14 == 1)
  {
    v6 = [(RTDefaultsManager *)self->_defaultsManager objectForKey:@"RTDefaultsVehicleEventBulletinNotificationPosted"];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v15 = _rt_log_facility_get_os_log(RTLogFacilityVehicleLocation);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v19 = 138412546;
        *v20 = @"RTDefaultsVehicleEventBulletinNotificationPosted";
        *&v20[8] = 2112;
        *v21 = v6;
        _os_log_impl(&dword_2304B3000, v15, OS_LOG_TYPE_INFO, "default, %@, value, %@", &v19, 0x16u);
      }
    }

    if ([v6 integerValue])
    {
      goto LABEL_19;
    }

    v16 = [(RTVehicleLocationProvider *)self mapsSupportManager];
    v17 = [(RTVehicleLocationProvider *)self lastVehicleParkedEvent];
    [v16 showParkedCarBulletinForEvent:v17];

    defaultsManager = self->_defaultsManager;
    v7 = [MEMORY[0x277CCABB0] numberWithInteger:{-[NSObject integerValue](v6, "integerValue") + 1}];
    [(RTDefaultsManager *)defaultsManager setObject:v7 forKey:@"RTDefaultsVehicleEventBulletinNotificationPosted"];
    goto LABEL_12;
  }

LABEL_9:
  if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    return;
  }

  v6 = _rt_log_facility_get_os_log(RTLogFacilityVehicleLocation);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [(RTVehicleLocationProvider *)self lastVehicleParkedEvent];
    v8 = [v7 userSetLocation];
    v9 = [(RTVehicleLocationProvider *)self lastVehicleParkedEvent];
    v10 = [v9 usualLocation];
    v11 = [(RTVehicleLocationProvider *)self lastVehicleParkedEvent];
    v12 = [v11 locationQuality];
    v19 = 67109632;
    *v20 = v8;
    *&v20[4] = 1024;
    *&v20[6] = v10;
    v21[0] = 2048;
    *&v21[1] = v12;
    _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "Not posting bulletin board notification, userSetLocation, %d, usualLocation, %d, locationQuality, %lu", &v19, 0x18u);

LABEL_12:
  }

LABEL_19:
}

- (void)_postVehicleReplacementBulletinNotificationWithVehicleEvent:(id)a3 replacingEvent:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(RTVehicleLocationProvider *)self mapsSupportManager];
  [v8 showParkedCarReplacementBulletinForEvent:v7 replacingEvent:v6];
}

- (void)_clearBulletinNotifications
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilityVehicleLocation);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_INFO, "_clearBulletinNotifications called.", v5, 2u);
    }
  }

  v4 = [(RTVehicleLocationProvider *)self mapsSupportManager];
  [v4 clearParkedCarBulletin];
}

- (void)_onExternalVehicleEventReceived:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityVehicleLocation);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v5;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "Notifying clients about an external vehicle event. %@", &buf, 0xCu);
    }
  }

  if (v5)
  {
    v7 = [v5 mapItem];
    if (!v7 || ([(RTVehicleLocationProvider *)self learnedLocationManager], v8 = objc_claimAutoreleasedReturnValue(), v9 = v8 == 0, v8, v7, v9))
    {
      [(RTVehicleLocationProvider *)self _updateLastVehicleEventAndNotify:v5];
    }

    else
    {
      *&buf = 0;
      *(&buf + 1) = &buf;
      v19 = 0x3032000000;
      v20 = __Block_byref_object_copy__76;
      v21 = __Block_byref_object_dispose__76;
      v10 = v5;
      v22 = v10;
      v11 = [(RTVehicleLocationProvider *)self learnedLocationManager];
      v12 = [v11 learnedLocationStore];
      v13 = [v10 mapItem];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __61__RTVehicleLocationProvider__onExternalVehicleEventReceived___block_invoke;
      v14[3] = &unk_2788CADC0;
      v14[4] = self;
      p_buf = &buf;
      v17 = a2;
      v15 = v10;
      [v12 processExternalMapItem:v13 handler:v14];

      _Block_object_dispose(&buf, 8);
    }
  }

  else
  {
    [(RTVehicleLocationProvider *)self _clearAllVehicleEvents];
  }
}

void __61__RTVehicleLocationProvider__onExternalVehicleEventReceived___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __61__RTVehicleLocationProvider__onExternalVehicleEventReceived___block_invoke_2;
  v12[3] = &unk_2788CAD98;
  v13 = v6;
  v14 = v5;
  v17 = *(a1 + 48);
  v8 = *(a1 + 40);
  v9 = *(a1 + 32);
  v15 = v8;
  v16 = v9;
  v10 = v5;
  v11 = v6;
  dispatch_async(v7, v12);
}

uint64_t __61__RTVehicleLocationProvider__onExternalVehicleEventReceived___block_invoke_2(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityVehicleLocation);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v17 = NSStringFromSelector(*(a1 + 72));
      v18 = *(a1 + 32);
      *buf = 138412546;
      v21 = v17;
      v22 = 2112;
      v23 = v18;
      _os_log_error_impl(&dword_2304B3000, v2, OS_LOG_TYPE_ERROR, "%@, error processing external mapItem, %@", buf, 0x16u);
    }
  }

  if (*(a1 + 40))
  {
    v3 = objc_alloc(MEMORY[0x277D01420]);
    v4 = [*(a1 + 48) date];
    v5 = [*(a1 + 48) location];
    v6 = [*(a1 + 48) vehicleIdentifier];
    v7 = [*(a1 + 48) userSetLocation];
    v8 = [*(a1 + 48) notes];
    v9 = [*(a1 + 48) identifier];
    v10 = [*(a1 + 48) photo];
    v11 = *(a1 + 40);
    LOBYTE(v19) = [*(a1 + 48) confirmed];
    v12 = [v3 initWithDate:v4 location:v5 vehicleIdentifier:v6 userSetLocation:v7 notes:v8 identifier:v9 photo:v10 mapItem:v11 confirmed:v19];
    v13 = *(*(a1 + 64) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;

    [*(*(*(a1 + 64) + 8) + 40) setLocationQuality:{objc_msgSend(*(a1 + 48), "locationQuality")}];
    [*(*(*(a1 + 64) + 8) + 40) setUsualLocation:{objc_msgSend(*(a1 + 48), "usualLocation")}];
    [*(*(*(a1 + 64) + 8) + 40) setLocationFinalized:{objc_msgSend(*(a1 + 48), "locationFinalized")}];
    v15 = [*(a1 + 48) nearbyLocationOfInterest];
    [*(*(*(a1 + 64) + 8) + 40) setNearbyLocationOfInterest:v15];
  }

  return [*(a1 + 56) _updateLastVehicleEventAndNotify:*(*(*(a1 + 64) + 8) + 40)];
}

- (void)_updateLastVehicleEventAndNotify:(id)a3
{
  v8[1] = *MEMORY[0x277D85DE8];
  [(RTVehicleLocationProvider *)self setLastVehicleParkedEvent:a3];
  [(RTVehicleLocationProvider *)self _persistLastVehicleEvent];
  v4 = [RTVehicleEventNotification alloc];
  v5 = [(RTVehicleLocationProvider *)self lastVehicleParkedEvent];
  v8[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  v7 = [(RTVehicleEventNotification *)v4 initWithVehicleEvents:v6];

  [(RTNotifier *)self postNotification:v7];
}

- (void)_notifyClients
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [(RTVehicleLocationProvider *)self _getLastVehicleEvents];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v12 + 1) + 8 * v7++) setPhoto:0];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v12 objects:v18 count:16];
    }

    while (v5);
  }

  v8 = [[RTVehicleEventNotification alloc] initWithVehicleEvents:v3];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityVehicleLocation);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = [v3 count];
      *buf = 134217984;
      v17 = v10;
      _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "Notifying clients about %lu vehicle events.", buf, 0xCu);
    }
  }

  [(RTNotifier *)self postNotification:v8];
  v11 = [v3 lastObject];
  [(RTVehicleLocationProvider *)self _sendVehicleEventToCompanionDevice:v11];
}

- (void)_sendVehicleEventToCompanionDevice:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(RTVehicleLocationProvider *)self companionLink];
  if (v5)
  {
    v6 = v5;
    v7 = [(RTVehicleLocationProvider *)self monitorExternalVehicleLocation];

    if (!v7)
    {
      v8 = [MEMORY[0x277CBEAA8] now];
      [(RTVehicleLocationProvider *)self setLastCompanionSyncRequestDate:v8];

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v9 = _rt_log_facility_get_os_log(RTLogFacilityVehicleLocation);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          v10 = [v4 date];
          v11 = [(RTVehicleLocationProvider *)self lastCompanionSyncDate];
          v12 = [(RTVehicleLocationProvider *)self lastCompanionSyncRequestDate];
          *buf = 138412802;
          v18 = v10;
          v19 = 2112;
          v20 = v11;
          v21 = 2112;
          v22 = v12;
          _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "CompanionSync, vehicle.date, %@, last.sync.date, %@, request.date, %@", buf, 0x20u);
        }
      }

      v13 = [(RTVehicleLocationProvider *)self companionLink];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __64__RTVehicleLocationProvider__sendVehicleEventToCompanionDevice___block_invoke;
      v14[3] = &unk_2788C53F0;
      v15 = v4;
      v16 = self;
      [v13 sendVehicleEvent:v15 handler:v14];
    }
  }
}

void __64__RTVehicleLocationProvider__sendVehicleEventToCompanionDevice___block_invoke(uint64_t a1, int a2)
{
  v19 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityVehicleLocation);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = [*(a1 + 32) date];
      v6 = [*(a1 + 40) lastCompanionSyncDate];
      v7 = [*(a1 + 40) lastCompanionSyncRequestDate];
      v8 = v7;
      v9 = @"failure";
      v11 = 138413058;
      v12 = v5;
      if (a2)
      {
        v9 = @"success";
      }

      v13 = 2112;
      v14 = v6;
      v15 = 2112;
      v16 = v7;
      v17 = 2112;
      v18 = v9;
      _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "CompanionSync, vehicle.date, %@, last.sync.date, %@, request.date, %@, result, %@", &v11, 0x2Au);
    }
  }

  if (a2)
  {
    v10 = [MEMORY[0x277CBEAA8] now];
    [*(a1 + 40) setLastCompanionSyncDate:v10];
  }
}

- (void)_resendVehicleEventIfNecessary
{
  v3 = [(RTVehicleLocationProvider *)self lastCompanionSyncDate];
  v4 = [(RTVehicleLocationProvider *)self lastCompanionSyncRequestDate];
  v5 = [v3 isBeforeDate:v4];

  if (v5)
  {
    v7 = [(RTVehicleLocationProvider *)self _getLastVehicleEvents];
    v6 = [v7 lastObject];
    [(RTVehicleLocationProvider *)self _sendVehicleEventToCompanionDevice:v6];
  }
}

- (BOOL)_deleteLastVehicleEvent
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = [(RTVehicleLocationProvider *)self managedObjectContext];

  if (v3)
  {
    *v12 = 0;
    v13 = v12;
    v14 = 0x3032000000;
    v15 = __Block_byref_object_copy__76;
    v16 = __Block_byref_object_dispose__76;
    v17 = 0;
    v4 = [(RTVehicleLocationProvider *)self managedObjectContext];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __52__RTVehicleLocationProvider__deleteLastVehicleEvent__block_invoke;
    v11[3] = &unk_2788C4FD8;
    v11[4] = self;
    v11[5] = v12;
    [v4 performBlockAndWait:v11];

    v5 = *(v13 + 5);
    v6 = v5 == 0;
    if (v5 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v7 = _rt_log_facility_get_os_log(RTLogFacilityVehicleLocation);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = [*(v13 + 5) description];
        *buf = 138739971;
        v19 = v8;
        _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "Error deleting last parked event, %{sensitive}@", buf, 0xCu);
      }
    }

    _Block_object_dispose(v12, 8);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v9 = _rt_log_facility_get_os_log(RTLogFacilityVehicleLocation);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *v12 = 0;
        _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "No managed object context, not deleting.", v12, 2u);
      }
    }

    [(RTVehicleLocationProvider *)self setVehicleEventPendingPersist:0];
    [(RTVehicleLocationProvider *)self setVehicleEventPendingDeletion:1];
    return 0;
  }

  return v6;
}

void __52__RTVehicleLocationProvider__deleteLastVehicleEvent__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) managedObjectContext];
  v3 = +[(NSManagedObject *)RTVehicleEventMO];
  v4 = *(*(a1 + 40) + 8);
  obj = *(v4 + 40);
  [v2 deleteAllWithEntityName:v3 predicate:0 error:&obj];
  objc_storeStrong((v4 + 40), obj);

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v5 = [*(a1 + 32) managedObjectContext];
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    [v5 save:&v7];
    objc_storeStrong((v6 + 40), v7);
  }
}

- (BOOL)_persistLastVehicleEvent
{
  v2 = self;
  v3 = [(RTVehicleLocationProvider *)self lastVehicleParkedEvent];
  LOBYTE(v2) = [(RTVehicleLocationProvider *)v2 _persistVehicleEvent:v3];

  return v2;
}

- (BOOL)_persistVehicleEvent:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 date];
  if (v5)
  {
    v6 = [v4 location];
    if (v6)
    {
      v7 = [v4 identifier];

      if (v7)
      {
        v8 = [(RTVehicleLocationProvider *)self managedObjectContext];

        if (!v8)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v18 = _rt_log_facility_get_os_log(RTLogFacilityVehicleLocation);
            if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
            {
              *v24 = 0;
              _os_log_impl(&dword_2304B3000, v18, OS_LOG_TYPE_INFO, "No managed object context, not persisting.", v24, 2u);
            }
          }

          v19 = [(RTVehicleLocationProvider *)self lastVehicleParkedEvent];
          [(RTVehicleLocationProvider *)self setVehicleEventPendingPersist:v19];

          goto LABEL_15;
        }

        if ([(RTVehicleLocationProvider *)self _deleteLastVehicleEvent])
        {
          *v24 = 0;
          v25 = v24;
          v26 = 0x3032000000;
          v27 = __Block_byref_object_copy__76;
          v28 = __Block_byref_object_dispose__76;
          v29 = 0;
          v9 = [(RTVehicleLocationProvider *)self managedObjectContext];
          v20[0] = MEMORY[0x277D85DD0];
          v20[1] = 3221225472;
          v20[2] = __50__RTVehicleLocationProvider__persistVehicleEvent___block_invoke;
          v20[3] = &unk_2788C51F0;
          v10 = v4;
          v21 = v10;
          v22 = self;
          v23 = v24;
          [v9 performBlockAndWait:v20];

          v11 = *(v25 + 5);
          v12 = v11 == 0;
          v13 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
          if (v11)
          {
            if (v13)
            {
              v14 = _rt_log_facility_get_os_log(RTLogFacilityVehicleLocation);
              if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
              {
                v15 = [*(v25 + 5) description];
                *buf = 138740227;
                v31 = v10;
                v32 = 2112;
                v33 = v15;
                _os_log_impl(&dword_2304B3000, v14, OS_LOG_TYPE_INFO, "Error persisting last vehicle event, %{sensitive}@, error, %@", buf, 0x16u);
              }

LABEL_29:
            }
          }

          else if (v13)
          {
            v14 = _rt_log_facility_get_os_log(RTLogFacilityVehicleLocation);
            if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
            {
              *buf = 138739971;
              v31 = v10;
              _os_log_impl(&dword_2304B3000, v14, OS_LOG_TYPE_INFO, "Persisted last vehicle event, %{sensitive}@", buf, 0xCu);
            }

            goto LABEL_29;
          }

          _Block_object_dispose(v24, 8);
          goto LABEL_16;
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v16 = _rt_log_facility_get_os_log(RTLogFacilityVehicleLocation);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            *v24 = 0;
            _os_log_impl(&dword_2304B3000, v16, OS_LOG_TYPE_INFO, "Can't delete previous parked event, not saving.", v24, 2u);
          }

LABEL_14:

          goto LABEL_15;
        }

        goto LABEL_15;
      }
    }

    else
    {
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilityVehicleLocation);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *v24 = 0;
      _os_log_impl(&dword_2304B3000, v16, OS_LOG_TYPE_INFO, "Not persisting last vehicle event without a date, location or identifier.", v24, 2u);
    }

    goto LABEL_14;
  }

LABEL_15:
  v12 = 0;
LABEL_16:

  return v12;
}

void __50__RTVehicleLocationProvider__persistVehicleEvent___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) managedObjectContext];
  v4 = [RTVehicleEventMO managedObjectWithVehicleEvent:v2 inManagedObjectContext:v3];

  v5 = [*(a1 + 32) mapItem];
  if (v5)
  {
    v6 = v5;
    v7 = [v4 mapItem];

    if (!v7)
    {
      v8 = [*(a1 + 32) mapItem];
      v9 = [*(a1 + 40) managedObjectContext];
      v10 = [RTMapItemMO managedObjectWithMapItem:v8 inManagedObjectContext:v9];
    }
  }

  v11 = [*(a1 + 40) managedObjectContext];
  v12 = *(*(a1 + 48) + 8);
  obj = *(v12 + 40);
  [v11 save:&obj];
  objc_storeStrong((v12 + 40), obj);
}

- (void)persistLastVehicleEvent
{
  v3 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__RTVehicleLocationProvider_persistLastVehicleEvent__block_invoke;
  block[3] = &unk_2788C4EA0;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)_onManagedObjectContextCreated:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    [(RTVehicleLocationProvider *)self setManagedObjectContext:v4];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v5 = _rt_log_facility_get_os_log(RTLogFacilityVehicleLocation);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = [(RTVehicleLocationProvider *)self vehicleEventPendingPersist];
        v14[0] = 67109376;
        v14[1] = v6 != 0;
        v15 = 1024;
        v16 = [(RTVehicleLocationProvider *)self vehicleEventPendingDeletion];
        _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "_onManagedObjectContextCreated, vehicleEventPendingPersist, %d, vehicleEventPendingDeletion, %d.", v14, 0xEu);
      }
    }

    v7 = [(RTVehicleLocationProvider *)self vehicleEventPendingPersist];

    if (v7)
    {
      v8 = [(RTVehicleLocationProvider *)self vehicleEventPendingPersist];
      [(RTVehicleLocationProvider *)self _persistVehicleEvent:v8];
    }

    else if ([(RTVehicleLocationProvider *)self vehicleEventPendingDeletion])
    {
      [(RTVehicleLocationProvider *)self _deleteLastVehicleEvent];
    }

    else
    {
      [(RTVehicleLocationProvider *)self _restoreLastVehicleEvent];
    }

    v10 = [RTVehicleLocationHistoryController alloc];
    v11 = [(RTNotifier *)self queue];
    v12 = [(RTVehicleLocationProvider *)self managedObjectContext];
    v13 = [(RTVehicleLocationHistoryController *)v10 initWithQueue:v11 managedObjectContext:v12];
    [(RTVehicleLocationProvider *)self setVehicleLocationHistoryController:v13];

    [(RTVehicleLocationProvider *)self _updateAuxiliaryDataIfAppropriate];
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityVehicleLocation);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      LOWORD(v14[0]) = 0;
      _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "Failed to create managed object context.", v14, 2u);
    }
  }
}

- (void)_restoreLastVehicleEvent
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [(RTVehicleLocationProvider *)self managedObjectContext];
  if (v3)
  {
    v4 = [(RTVehicleLocationProvider *)self lastVehicleParkedEvent];

    if (!v4)
    {
      v9[0] = 0;
      v9[1] = v9;
      v9[2] = 0x3032000000;
      v9[3] = __Block_byref_object_copy__76;
      v9[4] = __Block_byref_object_dispose__76;
      v10 = 0;
      v5 = [(RTVehicleLocationProvider *)self managedObjectContext];
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __53__RTVehicleLocationProvider__restoreLastVehicleEvent__block_invoke;
      v8[3] = &unk_2788C4FD8;
      v8[4] = self;
      v8[5] = v9;
      [v5 performBlockAndWait:v8];

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v6 = _rt_log_facility_get_os_log(RTLogFacilityVehicleLocation);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          v7 = [(RTVehicleLocationProvider *)self lastVehicleParkedEvent];
          *buf = 138739971;
          v12 = v7;
          _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "Restored last vehicle event, %{sensitive}@.", buf, 0xCu);
        }
      }

      _Block_object_dispose(v9, 8);
    }
  }
}

void __53__RTVehicleLocationProvider__restoreLastVehicleEvent__block_invoke(uint64_t a1)
{
  v54[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"date" ascending:0];
  v54[0] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v54 count:1];

  v4 = [*(a1 + 32) managedObjectContext];
  v5 = +[(NSManagedObject *)RTVehicleEventMO];
  v6 = *(*(a1 + 40) + 8);
  obj = *(v6 + 40);
  v7 = [v4 fetchAllWithEntityName:v5 predicate:0 sortDescriptors:v3 error:&obj];
  objc_storeStrong((v6 + 40), obj);

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityVehicleLocation);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = [v7 count];
      v10 = *(*(*(a1 + 40) + 8) + 40);
      *buf = 134218242;
      v51 = v9;
      v52 = 2112;
      v53 = v10;
      _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "Retrieved %lu vehicle events from disk, error, %@.", buf, 0x16u);
    }
  }

  if (!*(*(*(a1 + 40) + 8) + 40) && [v7 count])
  {
    v11 = [v7 firstObject];
    v12 = MEMORY[0x277D011A0];
    v13 = [v11 mapItem];
    v48 = [v12 createWithManagedObject:v13];

    v14 = objc_alloc(MEMORY[0x277D01160]);
    v15 = [v11 locLatitude];
    [v15 doubleValue];
    v17 = v16;
    v18 = [v11 locLongitude];
    [v18 doubleValue];
    v20 = v19;
    v21 = [v11 locUncertainty];
    [v21 doubleValue];
    v23 = v22;
    v24 = [v11 locDate];
    v25 = [v11 locReferenceFrame];
    v47 = [v14 initWithLatitude:v24 longitude:objc_msgSend(v25 horizontalUncertainty:"intValue") date:v17 referenceFrame:{v20, v23}];

    v44 = objc_alloc(MEMORY[0x277D01420]);
    [v11 date];
    v26 = v46 = v3;
    [v11 vehicleIdentifier];
    v27 = v45 = v7;
    v28 = [v11 userSetLocation];
    v29 = [v28 BOOLValue];
    v30 = [v11 notes];
    v31 = objc_alloc(MEMORY[0x277CCAD78]);
    v32 = [v11 identifier];
    v33 = [v31 initWithUUIDString:v32];
    v34 = [v11 photoData];
    LOBYTE(v43) = 1;
    v35 = [v44 initWithDate:v26 location:v47 vehicleIdentifier:v27 userSetLocation:v29 notes:v30 identifier:v33 photo:v34 mapItem:v48 confirmed:v43];
    [*(a1 + 32) setLastVehicleParkedEvent:v35];

    v7 = v45;
    v3 = v46;
    v36 = [v11 locationQuality];
    v37 = [v36 integerValue];
    v38 = [*(a1 + 32) lastVehicleParkedEvent];
    [v38 setLocationQuality:v37];

    v39 = [v11 usualLocation];
    v40 = [v39 BOOLValue];
    v41 = [*(a1 + 32) lastVehicleParkedEvent];
    [v41 setUsualLocation:v40];

    v42 = [*(a1 + 32) lastVehicleParkedEvent];
    [v42 setLocationFinalized:1];
  }
}

- (void)restoreLastVehicleEvent
{
  v3 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__RTVehicleLocationProvider_restoreLastVehicleEvent__block_invoke;
  block[3] = &unk_2788C4EA0;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)_updateNearbyLocationOfInterestOfVehicleEvent:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 location];

  if (v8)
  {
    v9 = [(RTVehicleLocationProvider *)self learnedLocationManager];
    v10 = [v6 location];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __83__RTVehicleLocationProvider__updateNearbyLocationOfInterestOfVehicleEvent_handler___block_invoke;
    v11[3] = &unk_2788CADE8;
    v11[4] = self;
    v12 = v6;
    v13 = v7;
    [v9 fetchLocationOfInterestAtLocation:v10 handler:v11];
  }

  else if (v7)
  {
    (*(v7 + 2))(v7, 0);
  }
}

void __83__RTVehicleLocationProvider__updateNearbyLocationOfInterestOfVehicleEvent_handler___block_invoke(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [a1[4] queue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __83__RTVehicleLocationProvider__updateNearbyLocationOfInterestOfVehicleEvent_handler___block_invoke_2;
  v11[3] = &unk_2788C5698;
  v12 = a1[5];
  v13 = v5;
  v8 = a1[6];
  v14 = v6;
  v15 = v8;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, v11);
}

uint64_t __83__RTVehicleLocationProvider__updateNearbyLocationOfInterestOfVehicleEvent_handler___block_invoke_2(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x277D01170]) initWithLearnedLocationOfInterest:*(a1 + 40)];
  [*(a1 + 32) setNearbyLocationOfInterest:v2];

  result = *(a1 + 56);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

- (void)_updateUsualLocationOfVehicleEvent:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [(RTVehicleLocationProvider *)self vehicleLocationHistoryController];
  [v5 setUsualLocation:{objc_msgSend(v6, "_evaluateUsualLocationWithVehicleEvent:", v5)}];

  v7 = [(RTVehicleLocationProvider *)self vehicleLocationHistoryController];
  [v7 _persistVehicleEventToHistory:v5];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityVehicleLocation);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = NSStringFromSelector(a2);
      v10 = [(RTVehicleLocationProvider *)self vehicleLocationHistoryController];
      v11 = 138412802;
      v12 = v9;
      v13 = 1024;
      v14 = v10 != 0;
      v15 = 1024;
      v16 = [v5 usualLocation];
      _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "%@, vehicleLocationHistoryController created, %d, usualLocation, %d", &v11, 0x18u);
    }
  }
}

- (void)_updateAuxiliaryDataIfAppropriate
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = [(RTVehicleLocationProvider *)self lastVehicleParkedEvent];
  if (v4)
  {
    v5 = v4;
    v6 = [(RTVehicleLocationProvider *)self managedObjectContext];
    if (v6)
    {
      v7 = v6;
      v8 = [(RTVehicleLocationProvider *)self locationsOfInterestAvailable];

      if (v8)
      {
        v9 = [(RTVehicleLocationProvider *)self lastVehicleParkedEvent];
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = __62__RTVehicleLocationProvider__updateAuxiliaryDataIfAppropriate__block_invoke;
        v13[3] = &unk_2788C4D10;
        v13[4] = self;
        v13[5] = a2;
        [(RTVehicleLocationProvider *)self _updateNearbyLocationOfInterestOfVehicleEvent:v9 handler:v13];
        goto LABEL_9;
      }
    }

    else
    {
    }
  }

  if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    return;
  }

  v9 = _rt_log_facility_get_os_log(RTLogFacilityVehicleLocation);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = NSStringFromSelector(a2);
    v11 = [(RTVehicleLocationProvider *)self lastVehicleParkedEvent];
    v12 = [(RTVehicleLocationProvider *)self managedObjectContext];
    *buf = 138413058;
    v15 = v10;
    v16 = 1024;
    v17 = v11 != 0;
    v18 = 1024;
    v19 = v12 != 0;
    v20 = 1024;
    v21 = [(RTVehicleLocationProvider *)self locationsOfInterestAvailable];
    _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "%@, lastVehicleParkedEvent, %d, managedObjectContext, %d, locationsOfInterestAvailable, %d", buf, 0x1Eu);
  }

LABEL_9:
}

void __62__RTVehicleLocationProvider__updateAuxiliaryDataIfAppropriate__block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityVehicleLocation);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = NSStringFromSelector(*(a1 + 40));
      v6 = [*(a1 + 32) lastVehicleParkedEvent];
      v7 = [v6 nearbyLocationOfInterest];
      v15 = 138412803;
      v16 = v5;
      v17 = 2117;
      v18 = v7;
      v19 = 2112;
      v20 = v3;
      _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "%@, nearbyLOI, %{sensitive}@, error, %@", &v15, 0x20u);
    }
  }

  v8 = [*(a1 + 32) lastVehicleParkedEvent];
  v9 = [v8 usualLocation];

  v10 = *(a1 + 32);
  v11 = [v10 lastVehicleParkedEvent];
  [v10 _updateUsualLocationOfVehicleEvent:v11];

  v12 = [*(a1 + 32) lastVehicleParkedEvent];
  if (v9 != [v12 usualLocation])
  {

LABEL_8:
    [*(a1 + 32) _notifyClients];
    goto LABEL_9;
  }

  v13 = [*(a1 + 32) lastVehicleParkedEvent];
  v14 = [v13 nearbyLocationOfInterest];

  if (v14)
  {
    goto LABEL_8;
  }

LABEL_9:
}

- (BOOL)_sameVehicleWithDeviceId:(id)a3 otherDeviceId:(id)a4
{
  if (a3 && a4)
  {
    return [a3 isEqualToString:a4];
  }

  else
  {
    return 1;
  }
}

- (void)didReceiveEffectiveSettingsChangedNotification
{
  v3 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __75__RTVehicleLocationProvider_didReceiveEffectiveSettingsChangedNotification__block_invoke;
  block[3] = &unk_2788C4EA0;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)onNanoRegistryNotification:(id)a3
{
  v4 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__RTVehicleLocationProvider_onNanoRegistryNotification___block_invoke;
  block[3] = &unk_2788C4EA0;
  block[4] = self;
  dispatch_async(v4, block);
}

- (void)onLearnedLocationManagerNotification:(id)a3
{
  v4 = a3;
  v5 = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __66__RTVehicleLocationProvider_onLearnedLocationManagerNotification___block_invoke;
  v7[3] = &unk_2788C4A70;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __66__RTVehicleLocationProvider_onLearnedLocationManagerNotification___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityVehicleLocation);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = [*(a1 + 32) name];
      v11 = 138412290;
      v12 = v3;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "received %@", &v11, 0xCu);
    }
  }

  v4 = [*(a1 + 32) name];
  v5 = +[(RTNotification *)RTLearnedLocationManagerNotificationAvailabilityDidChange];
  v6 = [v4 isEqualToString:v5];

  if (v6)
  {
    v7 = [*(a1 + 32) available];
    v8 = *(a1 + 40);
    if (v7)
    {
      [v8 setLocationsOfInterestAvailable:1];
      [*(a1 + 40) _updateAuxiliaryDataIfAppropriate];
    }

    else
    {
      [v8 setLocationsOfInterestAvailable:0];
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityVehicleLocation);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = [*(a1 + 32) name];
      v11 = 138412290;
      v12 = v10;
      _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "unhandled notification, %@", &v11, 0xCu);
    }
  }
}

- (void)fetchAutomaticVehicleEventDetectionSupportedWithHandler:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = [(RTNotifier *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __85__RTVehicleLocationProvider_fetchAutomaticVehicleEventDetectionSupportedWithHandler___block_invoke;
    block[3] = &unk_2788C4758;
    v8 = v4;
    dispatch_async(v5, block);

    v6 = v8;
  }

  else
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v10 = "[RTVehicleLocationProvider fetchAutomaticVehicleEventDetectionSupportedWithHandler:]";
      v11 = 1024;
      v12 = 1552;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }
}

uint64_t __85__RTVehicleLocationProvider_fetchAutomaticVehicleEventDetectionSupportedWithHandler___block_invoke(uint64_t a1)
{
  [MEMORY[0x277CC1D70] isAvailable];
  v2 = *(*(a1 + 32) + 16);

  return v2();
}

- (void)fetchFMCEnabledWithHandler:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = [(RTNotifier *)self queue];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __56__RTVehicleLocationProvider_fetchFMCEnabledWithHandler___block_invoke;
    v7[3] = &unk_2788C4D38;
    v7[4] = self;
    v8 = v4;
    dispatch_async(v5, v7);

    v6 = v8;
  }

  else
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v10 = "[RTVehicleLocationProvider fetchFMCEnabledWithHandler:]";
      v11 = 1024;
      v12 = 1572;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }
}

uint64_t __56__RTVehicleLocationProvider_fetchFMCEnabledWithHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) monitorVehicleLocation];
  v3 = *(v1 + 16);

  return v3(v1, v2, 0);
}

- (void)_submitFMCParkingEventMetric:(id)a3
{
  v6 = [(RTVehicleLocationProvider *)self _createMetricFromParkingEvent:a3];
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = [v3 initWithCString:RTAnalyticsEventFindMyCarParkingEvent encoding:1];
  log_analytics_submission(v4, v6);
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.%@", v4];
  AnalyticsSendEvent();
}

- (id)_createMetricFromParkingEvent:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = MEMORY[0x277CCABB0];
  v6 = [v3 location];
  [v6 horizontalUncertainty];
  v7 = [v5 numberWithDouble:?];
  [v4 setObject:v7 forKeyedSubscript:@"horizontalAccuracy"];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v3, "locationQuality")}];
  [v4 setObject:v8 forKeyedSubscript:@"qualityIndicator"];

  v9 = MEMORY[0x277CCABB0];
  LODWORD(v6) = [v3 userSetLocation];

  if (v6)
  {
    v10 = 2;
  }

  else
  {
    v10 = 1;
  }

  v11 = [v9 numberWithUnsignedInteger:v10];
  [v4 setObject:v11 forKeyedSubscript:@"triggerType"];

  [v4 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"userAssistanceRequired"];

  return v4;
}

- (void)_onDailyMetricNotification:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 name];
  v6 = [v5 isEqualToString:@"RTMetricManagerDailyMetricNotification"];

  if ((v6 & 1) == 0)
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v18 = [v4 name];
      *buf = 138412802;
      v20 = v18;
      v21 = 2080;
      v22 = "[RTVehicleLocationProvider _onDailyMetricNotification:]";
      v23 = 1024;
      v24 = 1604;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "unknown notification name, %@ (in %s:%d)", buf, 0x1Cu);
    }
  }

  v8 = [v4 name];
  v9 = [v8 isEqualToString:@"RTMetricManagerDailyMetricNotification"];

  if (v9)
  {
    v10 = [(RTVehicleLocationProvider *)self scoreBoard];
    v11 = [(RTVehicleLocationProvider *)self _createMetricFromScoreBoard:v10];

    v12 = [(RTVehicleLocationProvider *)self scoreBoardForUnusualLocation];
    [v12 clearScoreBoard];

    v13 = [(RTVehicleLocationProvider *)self scoreBoardForUsualLocation];
    [v13 clearScoreBoard];

    v14 = [(RTVehicleLocationProvider *)self scoreBoard];
    [v14 clearScoreBoard];

    v15 = objc_alloc(MEMORY[0x277CCACA8]);
    v16 = [v15 initWithCString:RTAnalyticsEventFindMyCarReports encoding:1];
    log_analytics_submission(v16, v11);
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.%@", v16];
    AnalyticsSendEvent();
  }

  else
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    v16 = [v4 name];
    *buf = 138412290;
    v20 = v16;
    _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "unknown notification name, %@", buf, 0xCu);
  }

LABEL_9:
}

- (void)onDailyMetricNotification:(id)a3
{
  v4 = a3;
  v5 = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__RTVehicleLocationProvider_onDailyMetricNotification___block_invoke;
  v7[3] = &unk_2788C4A70;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (id)_createMetricFromScoreBoard:(id)a3
{
  v3 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityVehicleLocation);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v18 = 0;
      _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "create mertric from scoreBoard", v18, 2u);
    }
  }

  v5 = objc_opt_new();
  v6 = MEMORY[0x277CCABB0];
  v7 = [MEMORY[0x277CBEAA8] date];
  v8 = [v3 creationDate];
  [v7 timeIntervalSinceDate:v8];
  v10 = [v6 numberWithInt:v9];
  [v5 setObject:v10 forKeyedSubscript:@"duration"];

  v11 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v3, "parkingEvents")}];
  [v5 setObject:v11 forKeyedSubscript:@"parkingEvents"];

  v12 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v3, "engagedParkingEvents")}];
  [v5 setObject:v12 forKeyedSubscript:@"engagedParkingEvents"];

  v13 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v3, "assistedParkingEvents")}];
  [v5 setObject:v13 forKeyedSubscript:@"assistedParkingEvents"];

  v14 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v3, "engagements")}];
  [v5 setObject:v14 forKeyedSubscript:@"engagements"];

  v15 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v3, "assistances")}];
  [v5 setObject:v15 forKeyedSubscript:@"assistances"];

  v16 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v3, "suppressedEvents")}];
  [v5 setObject:v16 forKeyedSubscript:@"suppressedParkingEvents"];

  return v5;
}

- (void)_recordMetricParkingEvent:(id)a3
{
  v4 = a3;
  v5 = [(RTVehicleLocationProvider *)self scoreBoard];
  [v5 parkingEvent];

  LODWORD(v5) = [v4 usualLocation];
  if (v5)
  {
    [(RTVehicleLocationProvider *)self scoreBoardForUsualLocation];
  }

  else
  {
    [(RTVehicleLocationProvider *)self scoreBoardForUnusualLocation];
  }
  v6 = ;
  [v6 parkingEvent];
}

- (void)_recordMetricAssistanceEvent:(id)a3
{
  v4 = a3;
  v5 = [(RTVehicleLocationProvider *)self scoreBoard];
  [v5 assistanceEvent];

  LODWORD(v5) = [v4 usualLocation];
  if (v5)
  {
    [(RTVehicleLocationProvider *)self scoreBoardForUsualLocation];
  }

  else
  {
    [(RTVehicleLocationProvider *)self scoreBoardForUnusualLocation];
  }
  v6 = ;
  [v6 assistanceEvent];
}

- (void)_recordMetricEngagementEvent:(id)a3
{
  v4 = a3;
  v5 = [(RTVehicleLocationProvider *)self scoreBoard];
  [v5 engagementEvent];

  LODWORD(v5) = [v4 usualLocation];
  if (v5)
  {
    [(RTVehicleLocationProvider *)self scoreBoardForUsualLocation];
  }

  else
  {
    [(RTVehicleLocationProvider *)self scoreBoardForUnusualLocation];
  }
  v6 = ;
  [v6 engagementEvent];
}

- (void)_recordMetricSuppressedEvent
{
  v2 = [(RTVehicleLocationProvider *)self scoreBoard];
  [v2 suppressedEvent];
}

- (void)_submitFMCDailyAssessmentsWithSubmissionHandler:(id)a3
{
  v4 = a3;
  v5 = [(RTVehicleLocationProvider *)self metricManager];
  objc_initWeak(&location, self);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __94__RTVehicleLocationProvider_RTMetricManager___submitFMCDailyAssessmentsWithSubmissionHandler___block_invoke;
  v8[3] = &unk_2788CAE10;
  objc_copyWeak(&v11, &location);
  v6 = v4;
  v10 = v6;
  v7 = v5;
  v9 = v7;
  [v7 fetchDiagnosticsEnabled:v8];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __94__RTVehicleLocationProvider_RTMetricManager___submitFMCDailyAssessmentsWithSubmissionHandler___block_invoke(id *a1, int a2)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained(a1 + 6);
    v4 = [WeakRetained queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __94__RTVehicleLocationProvider_RTMetricManager___submitFMCDailyAssessmentsWithSubmissionHandler___block_invoke_2;
    block[3] = &unk_2788C67D8;
    block[4] = WeakRetained;
    v7 = a1[5];
    v6 = a1[4];
    dispatch_async(v4, block);
  }
}

void __94__RTVehicleLocationProvider_RTMetricManager___submitFMCDailyAssessmentsWithSubmissionHandler___block_invoke_2(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = [RTMetricManager metricForType:3];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = [*(a1 + 32) scoreBoard];
  v18[0] = v3;
  v4 = [*(a1 + 32) scoreBoardForUsualLocation];
  v18[1] = v4;
  v5 = [*(a1 + 32) scoreBoardForUnusualLocation];
  v18[2] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:3];

  v7 = [v6 countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * v10);
        v12 = [RTMetricManager metricForType:2];
        [v11 copyToMetric:v12];
        [v11 clearScoreBoard];
        [v2 addAssessment:v12];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v8);
  }

  v13 = *(a1 + 48);
  if (v13)
  {
    (*(v13 + 16))(v13, v2, 0, &__block_literal_global_59);
  }

  else
  {
    [*(a1 + 40) submitMetric:v2 withHandler:&__block_literal_global_59];
  }
}

- (void)_registerScoreBoardSubmission
{
  objc_initWeak(&location, self);
  v3 = [(RTVehicleLocationProvider *)self metricManager];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __75__RTVehicleLocationProvider_RTMetricManager___registerScoreBoardSubmission__block_invoke;
  v4[3] = &unk_2788CAE60;
  objc_copyWeak(&v5, &location);
  [v3 registerQueriableMetric:3 withHandler:v4];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __75__RTVehicleLocationProvider_RTMetricManager___registerScoreBoardSubmission__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  if (!a3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v8 = [WeakRetained queue];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __75__RTVehicleLocationProvider_RTMetricManager___registerScoreBoardSubmission__block_invoke_2;
    v9[3] = &unk_2788CAE38;
    objc_copyWeak(&v11, (a1 + 32));
    v10 = v6;
    dispatch_async(v8, v9);

    objc_destroyWeak(&v11);
  }
}

void __75__RTVehicleLocationProvider_RTMetricManager___registerScoreBoardSubmission__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _submitFMCDailyAssessmentsWithSubmissionHandler:*(a1 + 32)];
}

- (void)_submitFMCCarParkedInstanceWithParkedEvents:(id)a3
{
  v4 = a3;
  v5 = [(RTVehicleLocationProvider *)self metricManager];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __90__RTVehicleLocationProvider_RTMetricManager___submitFMCCarParkedInstanceWithParkedEvents___block_invoke;
  v8[3] = &unk_2788CAEB0;
  v8[4] = self;
  v9 = v4;
  v10 = v5;
  v6 = v5;
  v7 = v4;
  [v6 fetchDiagnosticsEnabled:v8];
}

void __90__RTVehicleLocationProvider_RTMetricManager___submitFMCCarParkedInstanceWithParkedEvents___block_invoke(id *a1, int a2)
{
  if (a2)
  {
    v3 = [a1[4] queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __90__RTVehicleLocationProvider_RTMetricManager___submitFMCCarParkedInstanceWithParkedEvents___block_invoke_2;
    block[3] = &unk_2788C76F8;
    v7 = a1[5];
    v4 = a1[6];
    v5 = a1[4];
    v8 = v4;
    v9 = v5;
    dispatch_async(v3, block);
  }
}

void __90__RTVehicleLocationProvider_RTMetricManager___submitFMCCarParkedInstanceWithParkedEvents___block_invoke_2(uint64_t a1)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __90__RTVehicleLocationProvider_RTMetricManager___submitFMCCarParkedInstanceWithParkedEvents___block_invoke_3;
  v5[3] = &unk_2788CAE88;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = v3;
  v7 = v4;
  [v2 enumerateObjectsUsingBlock:v5];
}

void __90__RTVehicleLocationProvider_RTMetricManager___submitFMCCarParkedInstanceWithParkedEvents___block_invoke_3(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [RTMetricManager metricForType:1];
  v5 = [v3 location];
  [v5 horizontalUncertainty];
  [v4 setHorizontalAccuracy:v6];

  v7 = [v3 locationQuality];
  if (v7 >> 31)
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = "[RTVehicleLocationProvider(RTMetricManager) _submitFMCCarParkedInstanceWithParkedEvents:]_block_invoke_3";
      v12 = 1024;
      v13 = 1753;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "locationQuality cannot be greater than INT32_MAX (in %s:%d)", &v10, 0x12u);
    }
  }

  [v4 setQualityIndicator:v7];
  if ([v3 userSetLocation])
  {
    v9 = 2;
  }

  else
  {
    v9 = 1;
  }

  [v4 setTriggerTypes:v9];
  [v4 setUserAssistanceRequired:0];
  [v4 setLocationType:{objc_msgSend(v3, "usualLocation")}];
  [*(a1 + 32) submitMetric:v4];
  [*(a1 + 40) _recordMetricParkingEvent:v3];
}

- (void)_submitFMCViewedInstanceWithIdentifier:(id)a3 uiPlacement:(int)a4
{
  v6 = [(RTVehicleLocationProvider *)self metricManager];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __97__RTVehicleLocationProvider_RTMetricManager___submitFMCViewedInstanceWithIdentifier_uiPlacement___block_invoke;
  v8[3] = &unk_2788CAF00;
  v10 = a4;
  v8[4] = self;
  v9 = v6;
  v7 = v6;
  [v7 fetchDiagnosticsEnabled:v8];
}

void __97__RTVehicleLocationProvider_RTMetricManager___submitFMCViewedInstanceWithIdentifier_uiPlacement___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) queue];
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __97__RTVehicleLocationProvider_RTMetricManager___submitFMCViewedInstanceWithIdentifier_uiPlacement___block_invoke_2;
    v4[3] = &unk_2788CAED8;
    v6 = *(a1 + 48);
    v5 = *(a1 + 40);
    dispatch_async(v3, v4);
  }
}

void __97__RTVehicleLocationProvider_RTMetricManager___submitFMCViewedInstanceWithIdentifier_uiPlacement___block_invoke_2(uint64_t a1)
{
  v2 = [RTMetricManager metricForType:6];
  [v2 setUiPlacement:*(a1 + 40)];
  [*(a1 + 32) submitMetric:v2];
}

- (void)_submitFMCAssistanceInstanceWithIdentifier:(id)a3 uiPlacement:(int)a4 assistanceType:(int)a5 assistanceValue:(int)a6
{
  v10 = [(RTVehicleLocationProvider *)self metricManager];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __132__RTVehicleLocationProvider_RTMetricManager___submitFMCAssistanceInstanceWithIdentifier_uiPlacement_assistanceType_assistanceValue___block_invoke;
  v12[3] = &unk_2788CAF50;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v12[4] = self;
  v13 = v10;
  v11 = v10;
  [v11 fetchDiagnosticsEnabled:v12];
}

void __132__RTVehicleLocationProvider_RTMetricManager___submitFMCAssistanceInstanceWithIdentifier_uiPlacement_assistanceType_assistanceValue___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) queue];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __132__RTVehicleLocationProvider_RTMetricManager___submitFMCAssistanceInstanceWithIdentifier_uiPlacement_assistanceType_assistanceValue___block_invoke_2;
    v6[3] = &unk_2788CAF28;
    v9 = *(a1 + 48);
    v10 = *(a1 + 56);
    v4 = *(a1 + 40);
    v5 = *(a1 + 32);
    v7 = v4;
    v8 = v5;
    dispatch_async(v3, v6);
  }
}

void __132__RTVehicleLocationProvider_RTMetricManager___submitFMCAssistanceInstanceWithIdentifier_uiPlacement_assistanceType_assistanceValue___block_invoke_2(uint64_t a1)
{
  v5 = [RTMetricManager metricForType:0];
  [v5 setUiPlacement:*(a1 + 48)];
  [v5 setAssistanceType:*(a1 + 52)];
  [v5 setAssistanceValue:*(a1 + 56)];
  [*(a1 + 32) submitMetric:v5];
  v2 = *(a1 + 52);
  v3 = *(a1 + 40);
  v4 = [v3 lastVehicleParkedEvent];
  if (v2 == 5)
  {
    [v3 _recordMetricEngagementEvent:v4];
  }

  else
  {
    [v3 _recordMetricAssistanceEvent:v4];
  }
}

- (void)_submitFMCReturnToCarInstanceWithIdentifier:(id)a3 horizontalAccuracy:(int)a4 horizontalDistance:(int)a5
{
  v8 = [(RTVehicleLocationProvider *)self metricManager];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __128__RTVehicleLocationProvider_RTMetricManager___submitFMCReturnToCarInstanceWithIdentifier_horizontalAccuracy_horizontalDistance___block_invoke;
  v10[3] = &unk_2788CAF78;
  v12 = a4;
  v13 = a5;
  v10[4] = self;
  v11 = v8;
  v9 = v8;
  [v9 fetchDiagnosticsEnabled:v10];
}

void __128__RTVehicleLocationProvider_RTMetricManager___submitFMCReturnToCarInstanceWithIdentifier_horizontalAccuracy_horizontalDistance___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) queue];
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __128__RTVehicleLocationProvider_RTMetricManager___submitFMCReturnToCarInstanceWithIdentifier_horizontalAccuracy_horizontalDistance___block_invoke_2;
    v4[3] = &unk_2788C52E8;
    v6 = *(a1 + 48);
    v5 = *(a1 + 40);
    dispatch_async(v3, v4);
  }
}

void __128__RTVehicleLocationProvider_RTMetricManager___submitFMCReturnToCarInstanceWithIdentifier_horizontalAccuracy_horizontalDistance___block_invoke_2(uint64_t a1)
{
  v2 = [RTMetricManager metricForType:4];
  [v2 setHorizontalAccuracy:*(a1 + 40)];
  [v2 setHorizontalDistance:*(a1 + 44)];
  [*(a1 + 32) submitMetric:v2];
}

- (void)_submitFMCVehicleConnectionEventInstanceWithConnectionStatus:(int)a3
{
  v3 = self;
  if (a3 != 3)
  {
    v7 = 0.0;
    goto LABEL_9;
  }

  v4 = [(RTVehicleLocationProvider *)self lastVehicleParkedEvent];

  if (v4)
  {
    v5 = [MEMORY[0x277CBEAA8] date];
    v6 = [(RTVehicleLocationProvider *)v3 lastVehicleParkedEvent];
  }

  else
  {
    v8 = [(RTVehicleLocationProvider *)v3 pendingVehicleParkedEvent];

    if (!v8)
    {
      v12 = -1.0;
      goto LABEL_8;
    }

    v5 = [MEMORY[0x277CBEAA8] date];
    v6 = [(RTVehicleLocationProvider *)v3 pendingVehicleParkedEvent];
  }

  v9 = v6;
  v10 = [v6 date];
  [v5 timeIntervalSinceDate:v10];
  v12 = v11;

LABEL_8:
  self = v3;
  *&a3 = 3;
  v7 = v12;
LABEL_9:

  [(RTVehicleLocationProvider *)self _submitFMCVehicleConnectionEventInstanceWithConnectionStatus:*&a3 value:v7];
}

- (void)_submitFMCVehicleConnectionEventInstanceWithConnectionStatus:(int)a3 value:(double)a4
{
  v7 = [(RTVehicleLocationProvider *)self metricManager];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __113__RTVehicleLocationProvider_RTMetricManager___submitFMCVehicleConnectionEventInstanceWithConnectionStatus_value___block_invoke;
  v9[3] = &unk_2788CAF50;
  v12 = a3;
  v11 = a4;
  v9[4] = self;
  v10 = v7;
  v8 = v7;
  [v8 fetchDiagnosticsEnabled:v9];
}

void __113__RTVehicleLocationProvider_RTMetricManager___submitFMCVehicleConnectionEventInstanceWithConnectionStatus_value___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __113__RTVehicleLocationProvider_RTMetricManager___submitFMCVehicleConnectionEventInstanceWithConnectionStatus_value___block_invoke_2;
    block[3] = &unk_2788CAFA0;
    v7 = *(a1 + 56);
    v6 = *(a1 + 48);
    v5 = *(a1 + 40);
    dispatch_async(v3, block);
  }
}

void __113__RTVehicleLocationProvider_RTMetricManager___submitFMCVehicleConnectionEventInstanceWithConnectionStatus_value___block_invoke_2(uint64_t a1)
{
  v4 = [RTMetricManager metricForType:5];
  [v4 setEventType:*(a1 + 48)];
  v2 = *(a1 + 40);
  if (v2 < 0.0)
  {
    v3 = 0xFFFFFFFFLL;
  }

  else
  {
    v3 = (10 * (v2 * 10.0));
  }

  [v4 setValue:v3];
  [*(a1 + 32) submitMetric:v4];
}

@end