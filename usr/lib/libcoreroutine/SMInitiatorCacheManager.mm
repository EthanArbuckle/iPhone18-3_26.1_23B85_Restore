@interface SMInitiatorCacheManager
+ (id)getTelemetryEventStringForEvent:(int64_t)event;
- (BOOL)_isEffectivePairedDeviceNearby;
- (BOOL)_isEligibleForCacheUpdateAndPerformRecoveryIfNecessary;
- (BOOL)_isKeyReleaseScheduled;
- (BOOL)_shouldScheduleKeyReleaseMessage;
- (BOOL)isActiveDevice;
- (BOOL)isCellularActivated;
- (BOOL)isStandalone;
- (NSUUID)sessionUUID;
- (SMInitiatorCacheManager)initWithInitiatorContact:(id)contact loadedFromDisk:(BOOL)disk safetyCacheStore:(id)store sessionStore:(id)sessionStore defaultsManager:(id)manager locationManager:(id)locationManager queue:(id)queue batteryManager:(id)self0 xpcActivityManager:(id)self1 messagingService:(id)self2 networkOfInterestManager:(id)self3 authorizationManager:(id)self4 wristStateManager:(id)self5 vehicleLocationProvider:(id)self6 activeSessionDetailsZone:(id)self7 healthKitManager:(id)self8 platform:(id)self9 appDeletionManager:(id)deletionManager;
- (SMInitiatorCacheManager)initWithSafetyCacheStore:(id)store sessionStore:(id)sessionStore defaultsManager:(id)manager locationManager:(id)locationManager queue:(id)queue batteryManager:(id)batteryManager xpcActivityManager:(id)activityManager messagingService:(id)self0 networkOfInterestManager:(id)self1 authorizationManager:(id)self2 sessionID:(id)self3 wristStateManager:(id)self4 vehicleLocationProvider:(id)self5 activeSessionDetailsZone:(id)self6 healthKitManager:(id)self7 platform:(id)self8 appDeletionManager:(id)self9;
- (SMInitiatorCacheManagerDelegateProtocol)delegate;
- (double)_scheduledSendTimeAdvance;
- (double)getCacheUpdateBackstopTimeout;
- (double)requestTimeFromTimed;
- (id)_getScheduleSendCancelRetryXpcActivityIdentifier;
- (id)_scheduleKeyReleaseWithCompletion:(id)completion;
- (id)getXpcActivityIdentifier;
- (void)_cancelScheduledKeyRelease;
- (void)_cancelScheduledKeyReleaseForConversation:(id)conversation;
- (void)_checkConversationEligibilityWithCompletion:(id)completion;
- (void)_checkInitiatorEligibilityWithCompletion:(id)completion;
- (void)_cleanUpInitiatorContact;
- (void)_cleanUpInitiatorContactLocalStore;
- (void)_cleanupActiveSessionZone;
- (void)_deleteActiveSessionDetails:(int64_t)details;
- (void)_evaluateAndManagePeriodicCacheUpdate;
- (void)_fetchDeviceStatusWithCompletion:(id)completion;
- (void)_fetchLocationWithCompletion:(id)completion;
- (void)_fetchWorkoutSnapshotAndUpdateWorkoutEvents;
- (void)_handleScheduledSendTimerFired;
- (void)_onHealthKitManagerWorkoutSnapshotUpdate:(id)update;
- (void)_onNearbyEffectivePairedDeviceChangedNotification:(id)notification;
- (void)_periodicCacheUpdateWithCompletion:(id)completion;
- (void)_processCancelScheduledKeyReleaseResponseWithSuccess:(BOOL)success error:(id)error;
- (void)_processScheduleKeyReleaseResponseScheduledSendDate:(id)date messageID:(id)d success:(BOOL)success error:(id)error;
- (void)_processUploadCacheResponseForCache:(id)cache hashString:(id)string success:(BOOL)success error:(id)error;
- (void)_registerForActiveNotifications;
- (void)_registerForGeneralNotifications;
- (void)_requestSmoothedLocationsWithCompletion:(id)completion;
- (void)_schedulePeriodicCacheUpdate;
- (void)_scheduleScheduleSendCancelRetry;
- (void)_sendCacheUpdatedMessage;
- (void)_sendKeyReleaseMessageForIsSecondarySOSTrigger:(BOOL)trigger;
- (void)_setupActiveSessionZone;
- (void)_setupFetchOnZoneUpdates;
- (void)_setupShareZoneWithCompletion:(id)completion;
- (void)_stopCleanupCacheTimerAlarm;
- (void)_stopPeriodicCacheUpdate;
- (void)_stopScheduleSendCancelRetry;
- (void)_storeInitiatorContactInStore:(unint64_t)store;
- (void)_teardownFetchOnZoneUpdates;
- (void)_transitionToActiveState;
- (void)_transitionToCacheReleaseStateForIsSecondarySOSTrigger:(BOOL)trigger;
- (void)_transitionToNotActiveState:(BOOL)state;
- (void)_unregisterForActiveNotifications;
- (void)_unregisterForGeneralNotifications;
- (void)_updateCacheDataForNonActiveDeviceWithCompletion:(id)completion;
- (void)_updateCacheDataWithCompletion:(id)completion;
- (void)_updateInitiatorContactInStore;
- (void)_updateInitiatorContactWithConversation:(id)conversation;
- (void)_updateLockState:(BOOL)state location:(id)location;
- (void)_updateScheduledSendFireTimer;
- (void)_updateVehicleParkingLocation:(id)location;
- (void)_uploadCache:(id)cache completion:(id)completion;
- (void)_uploadCacheForNonActiveDevice:(id)device completion:(id)completion;
- (void)_writeActiveSessionDetails:(int64_t)details qos:(id)qos completion:(id)completion;
- (void)cleanupNonActiveSession;
- (void)decryptAndStoreSafetyCacheDataWithPhoneCacheData:(id)data watchCacheData:(id)cacheData metricsDict:(id *)dict;
- (void)deleteZoneFromDatabaseWithRetry:(int64_t)retry database:(id)database qos:(id)qos withCompletion:(id)completion;
- (void)eraseCacheDataInMemory;
- (void)fetchInitiatorSafetyCacheForSessionID:(id)d completion:(id)completion;
- (void)initializeSessionWithCompletion:(id)completion;
- (void)notifyObserversSafetyCacheDidUpdate;
- (void)onBecomingActiveDevice:(id)device;
- (void)onBecomingNonActiveDevice:(id)device;
- (void)onCellLinkQualityChangedNotification:(id)notification;
- (void)onHealthKitManagerNotification:(id)notification;
- (void)onLockStateChange:(BOOL)change;
- (void)onNearbyEffectivePairedDeviceChangedNotification:(id)notification;
- (void)onSecondarySOSTriggerWithState:(id)state forActiveDevice:(BOOL)device;
- (void)onSessionResumedWithState:(id)state forActiveDevice:(BOOL)device;
- (void)onSessionStateChanged:(id)changed forActiveDevice:(BOOL)device;
- (void)onVehicleEventNotification:(id)notification;
- (void)onWifiLinkQualityChangedNotification:(id)notification;
- (void)processKeyReleaseInfoRequest:(id)request;
- (void)processSessionStartInfoRequest:(id)request;
- (void)stopCacheUpdateBackstopTimer;
- (void)storeCAMetricForAllLocations:(id)locations;
- (void)submitCAMetricInitiatorSession;
- (void)submitCacheUpdateCAMetricForCache:(id)cache success:(BOOL)success error:(id)error;
- (void)submitPowerTelemetryMetricForEvent:(int64_t)event;
- (void)updateCacheUpdateBackstopTimer;
- (void)updateNonActiveSafetyCacheWithRetry:(int64_t)retry data:(id)data qos:(id)qos completion:(id)completion;
- (void)updateSafetyCacheWithRetry:(int64_t)retry data:(id)data cacheReleaseTime:(id)time qos:(id)qos completion:(id)completion;
@end

@implementation SMInitiatorCacheManager

- (SMInitiatorCacheManager)initWithInitiatorContact:(id)contact loadedFromDisk:(BOOL)disk safetyCacheStore:(id)store sessionStore:(id)sessionStore defaultsManager:(id)manager locationManager:(id)locationManager queue:(id)queue batteryManager:(id)self0 xpcActivityManager:(id)self1 messagingService:(id)self2 networkOfInterestManager:(id)self3 authorizationManager:(id)self4 wristStateManager:(id)self5 vehicleLocationProvider:(id)self6 activeSessionDetailsZone:(id)self7 healthKitManager:(id)self8 platform:(id)self9 appDeletionManager:(id)deletionManager
{
  v90 = *MEMORY[0x277D85DE8];
  contactCopy = contact;
  storeCopy = store;
  storeCopy2 = store;
  sessionStoreCopy = sessionStore;
  managerCopy = manager;
  locationManagerCopy = locationManager;
  queueCopy = queue;
  batteryManagerCopy = batteryManager;
  activityManagerCopy = activityManager;
  serviceCopy = service;
  interestManagerCopy = interestManager;
  authorizationManagerCopy = authorizationManager;
  stateManagerCopy = stateManager;
  providerCopy = provider;
  zoneCopy = zone;
  kitManagerCopy = kitManager;
  platformCopy = platform;
  deletionManagerCopy = deletionManager;
  v61 = deletionManagerCopy;
  if (!contactCopy)
  {
    v47 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v47, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: initiatorContact", buf, 2u);
    }

    v46 = 0;
    v26 = storeCopy2;
    goto LABEL_61;
  }

  v26 = storeCopy2;
  if (!storeCopy2)
  {
    v48 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_60;
    }

    *buf = 0;
    v49 = "Invalid parameter not satisfying: safetyCacheStore";
LABEL_59:
    _os_log_error_impl(&dword_2304B3000, v48, OS_LOG_TYPE_ERROR, v49, buf, 2u);
    goto LABEL_60;
  }

  if (!sessionStoreCopy)
  {
    v48 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_60;
    }

    *buf = 0;
    v49 = "Invalid parameter not satisfying: sessionStore";
    goto LABEL_59;
  }

  if (!managerCopy)
  {
    v48 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_60;
    }

    *buf = 0;
    v49 = "Invalid parameter not satisfying: defaultsManager";
    goto LABEL_59;
  }

  if (!locationManagerCopy)
  {
    v48 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_60;
    }

    *buf = 0;
    v49 = "Invalid parameter not satisfying: locationManager";
    goto LABEL_59;
  }

  if (!queueCopy)
  {
    v48 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_60;
    }

    *buf = 0;
    v49 = "Invalid parameter not satisfying: queue";
    goto LABEL_59;
  }

  if (!activityManagerCopy)
  {
    v48 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_60;
    }

    *buf = 0;
    v49 = "Invalid parameter not satisfying: xpcActivityManager";
    goto LABEL_59;
  }

  if (!serviceCopy)
  {
    v48 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_60;
    }

    *buf = 0;
    v49 = "Invalid parameter not satisfying: messagingService";
    goto LABEL_59;
  }

  if (!interestManagerCopy)
  {
    v48 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_60;
    }

    *buf = 0;
    v49 = "Invalid parameter not satisfying: networkOfInterestManager";
    goto LABEL_59;
  }

  if (!authorizationManagerCopy)
  {
    v48 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_60;
    }

    *buf = 0;
    v49 = "Invalid parameter not satisfying: authorizationManager";
    goto LABEL_59;
  }

  if (!kitManagerCopy)
  {
    v48 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_60;
    }

    *buf = 0;
    v49 = "Invalid parameter not satisfying: healthKitManager";
    goto LABEL_59;
  }

  if (!platformCopy)
  {
    v48 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_60;
    }

    *buf = 0;
    v49 = "Invalid parameter not satisfying: platform";
    goto LABEL_59;
  }

  if (!deletionManagerCopy)
  {
    v48 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v49 = "Invalid parameter not satisfying: appDeletionManager";
      goto LABEL_59;
    }

LABEL_60:

    v46 = 0;
LABEL_61:
    selfCopy = self;
    goto LABEL_62;
  }

  v79.receiver = self;
  v79.super_class = SMInitiatorCacheManager;
  v27 = [(SMInitiatorCacheManager *)&v79 init];
  v28 = v27;
  if (v27)
  {
    objc_storeStrong(&v27->_initiatorContact, contact);
    v28->_initiatorContactStored = disk;
    objc_storeStrong(&v28->_safetyCacheStore, storeCopy);
    objc_storeStrong(&v28->_sessionStore, sessionStore);
    objc_storeStrong(&v28->_defaultsManager, manager);
    objc_storeStrong(&v28->_locationManager, locationManager);
    objc_storeStrong(&v28->_batteryManager, batteryManager);
    objc_storeStrong(&v28->_queue, queue);
    objc_storeStrong(&v28->_xpcActivityManager, activityManager);
    objc_storeStrong(&v28->_messagingService, service);
    objc_storeStrong(&v28->_networkOfInterestManager, interestManager);
    objc_storeStrong(&v28->_authorizationManager, authorizationManager);
    v28->_initiatorEligibility = 0;
    v28->_receiverEligibility = 0;
    objc_storeStrong(&v28->_wristStateManager, stateManager);
    objc_storeStrong(&v28->_vehicleLocationProvider, provider);
    objc_storeStrong(&v28->_activeSessionDetailsZone, zone);
    objc_storeStrong(&v28->_healthKitManager, kitManager);
    objc_storeStrong(&v28->_platform, platform);
    objc_storeStrong(&v28->_appDeletionManager, deletionManager);
    v29 = v28;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v30 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
      {
        sessionUUID = [(SMInitiatorContact *)v29->_initiatorContact sessionUUID];
        v52 = objc_opt_class();
        v53 = NSStringFromClass(v52);
        v54 = NSStringFromSelector(a2);
        *buf = 138412802;
        v81 = sessionUUID;
        v82 = 2112;
        v83 = v53;
        v84 = 2112;
        v85 = v54;
        _os_log_debug_impl(&dword_2304B3000, v30, OS_LOG_TYPE_DEBUG, "#SafetyCache,Initiator,sessionID:%@,%@,%@,created SMInitiatorCacheManager", buf, 0x20u);
      }
    }

    if (!v29->_initiatorContactStored)
    {
      [(SMInitiatorCacheManager *)v29 _updateInitiatorContactInStore];
    }

    initiatorContact = [(SMInitiatorCacheManager *)v29 initiatorContact];
    shouldBeCleanedUpDate = [initiatorContact shouldBeCleanedUpDate];

    if (shouldBeCleanedUpDate)
    {
      v33 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        sessionUUID2 = [(SMInitiatorCacheManager *)v29 sessionUUID];
        v35 = objc_opt_class();
        v36 = NSStringFromClass(v35);
        v37 = NSStringFromSelector(aSelectora);
        *buf = 138412802;
        v81 = sessionUUID2;
        v82 = 2112;
        v83 = v36;
        v84 = 2112;
        v85 = v37;
        _os_log_impl(&dword_2304B3000, v33, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Initiator,sessionID:%@,%@,%@,SMInitiatorCacheManager should be cleaned up", buf, 0x20u);
      }

      queue = [(SMInitiatorCacheManager *)v29 queue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __344__SMInitiatorCacheManager_initWithInitiatorContact_loadedFromDisk_safetyCacheStore_sessionStore_defaultsManager_locationManager_queue_batteryManager_xpcActivityManager_messagingService_networkOfInterestManager_authorizationManager_wristStateManager_vehicleLocationProvider_activeSessionDetailsZone_healthKitManager_platform_appDeletionManager___block_invoke;
      block[3] = &unk_2788C4EA0;
      v78 = v29;
      dispatch_async(queue, block);
    }

    v39 = [(RTDefaultsManager *)v29->_defaultsManager objectForKey:@"RTDefaultsSMDefaultCacheUpdateBackstopTimeout" value:&unk_2845A1C48];
    [v39 doubleValue];
    v29->_cacheUpdateBackstopTimeout = v40;

    if (v29->_cacheUpdateBackstopTimeout != 900.0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v41 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
      {
        cacheUpdateBackstopTimeout = v29->_cacheUpdateBackstopTimeout;
        *buf = 136316162;
        v81 = "[SMInitiatorCacheManager initWithInitiatorContact:loadedFromDisk:safetyCacheStore:sessionStore:defaultsManager:locationManager:queue:batteryManager:xpcActivityManager:messagingService:networkOfInterestManager:authorizationManager:wristStateManager:vehicleLocationProvider:activeSessionDetailsZone:healthKitManager:platform:appDeletionManager:]";
        v82 = 2080;
        v83 = "overriding cache backstop timeouts";
        v84 = 2048;
        v85 = 0x408C200000000000;
        v86 = 2048;
        v87 = cacheUpdateBackstopTimeout;
        v88 = 2112;
        v89 = @"RTDefaultsSMDefaultCacheUpdateBackstopTimeout";
        _os_log_impl(&dword_2304B3000, v41, OS_LOG_TYPE_INFO, "%s, %s, original value, %.2f, overridden value, %.2f, by defaultsKey, %@", buf, 0x34u);
      }
    }

    [(SMInitiatorCacheManager *)v29 _setupActiveSessionZone];
    messagingService = v29->_messagingService;
    v44 = +[(RTNotification *)SMIDSMessengerNearbyEffectivePairedDeviceChangedNotification];
    [(RTNotifier *)messagingService addObserver:v29 selector:sel_onNearbyEffectivePairedDeviceChangedNotification_ name:v44];

    v28 = v29;
  }

  selfCopy = v28;
  v46 = selfCopy;
LABEL_62:

  return v46;
}

- (SMInitiatorCacheManager)initWithSafetyCacheStore:(id)store sessionStore:(id)sessionStore defaultsManager:(id)manager locationManager:(id)locationManager queue:(id)queue batteryManager:(id)batteryManager xpcActivityManager:(id)activityManager messagingService:(id)self0 networkOfInterestManager:(id)self1 authorizationManager:(id)self2 sessionID:(id)self3 wristStateManager:(id)self4 vehicleLocationProvider:(id)self5 activeSessionDetailsZone:(id)self6 healthKitManager:(id)self7 platform:(id)self8 appDeletionManager:(id)self9
{
  v32 = MEMORY[0x277D4AAF0];
  deletionManagerCopy = deletionManager;
  platformCopy = platform;
  kitManagerCopy = kitManager;
  zoneCopy = zone;
  providerCopy = provider;
  stateManagerCopy = stateManager;
  dCopy = d;
  authorizationManagerCopy = authorizationManager;
  interestManagerCopy = interestManager;
  serviceCopy = service;
  activityManagerCopy = activityManager;
  batteryManagerCopy = batteryManager;
  queueCopy = queue;
  locationManagerCopy = locationManager;
  managerCopy = manager;
  sessionStoreCopy = sessionStore;
  storeCopy = store;
  v21 = [v32 alloc];
  v22 = objc_opt_new();
  v23 = +[SMCryptoUtilities createSafetyCacheKey];
  v24 = +[SMCryptoUtilities createAllowReadToken];
  v25 = objc_opt_new();
  uUIDString = [v25 UUIDString];
  v27 = objc_opt_new();
  LOBYTE(v31) = 1;
  LOWORD(v30) = 0;
  v28 = [v21 initWithIdentifier:v22 shouldBeCleanedUpDate:0 cloudkitShareZoneCleanedUpSuccessfully:0 syncDate:0 keyReleaseMessageSendDate:0 scheduledSendExpiryDate:0 phoneCache:-1.0 watchCache:-1.0 sessionID:-1.0 safetyCacheKey:0 allowReadToken:0 scheduleSendMessageGUID:dCopy unlockLocation:v23 lockLocation:v24 startingLocation:uUIDString offWristLocation:0 parkedCarLocation:0 destinationMapItem:0 timeCacheUploadCompletion:0 maxCacheSize:0 maxLocationsInTrace:0 maxTimeBetweenCacheUpdates:0 numCacheUpdates:-1 timeTilCacheRelease:0 numberOfSuccessfulCacheUpdates:0 numberOfMessageCancelling:0 numberOfSuccessfulMessageCancelling:0 numberOfMessageScheduling:0 numberOfSuccessfulMessageScheduling:0 wasCacheReleased:v30 wasScheduledSendTriggered:0 locationOfTrigger:0 triggerDate:v31 lockState:0 cacheUpdateBackstopExpiryDate:v27 workoutEvents:0 numberOfHandoffBecomingActive:0 numberOfHandoffBecomingNonActive:0 earliestActiveDeviceIdentifier:0 latestActiveDeviceIdentifier:?];

  v42 = [(SMInitiatorCacheManager *)self initWithInitiatorContact:v28 loadedFromDisk:0 safetyCacheStore:storeCopy sessionStore:sessionStoreCopy defaultsManager:managerCopy locationManager:locationManagerCopy queue:queueCopy batteryManager:batteryManagerCopy xpcActivityManager:activityManagerCopy messagingService:serviceCopy networkOfInterestManager:interestManagerCopy authorizationManager:authorizationManagerCopy wristStateManager:stateManagerCopy vehicleLocationProvider:providerCopy activeSessionDetailsZone:zoneCopy healthKitManager:kitManagerCopy platform:platformCopy appDeletionManager:deletionManagerCopy];
  return v42;
}

- (NSUUID)sessionUUID
{
  initiatorContact = [(SMInitiatorCacheManager *)self initiatorContact];
  sessionUUID = [initiatorContact sessionUUID];

  return sessionUUID;
}

- (BOOL)isActiveDevice
{
  sessionManagerState = [(SMInitiatorCacheManager *)self sessionManagerState];
  activeDeviceIdentifier = [sessionManagerState activeDeviceIdentifier];
  messagingService = [(SMInitiatorCacheManager *)self messagingService];
  deviceIdentifier = [messagingService deviceIdentifier];
  v7 = [activeDeviceIdentifier isEqual:deviceIdentifier];

  return v7;
}

- (BOOL)isCellularActivated
{
  v43[1] = *MEMORY[0x277D85DE8];
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 0;
  v2 = dispatch_semaphore_create(0);
  v3 = dispatch_get_global_queue(2, 0);
  v28 = MEMORY[0x277D85DD0];
  v29 = 3221225472;
  v30 = __46__SMInitiatorCacheManager_isCellularActivated__block_invoke;
  v31 = &unk_2788CCCB0;
  v33 = &v34;
  v4 = v2;
  v32 = v4;
  [SMInitiatorEligibility checkCellularEnabledWithQueue:v3 handler:&v28];

  v5 = v4;
  v6 = [MEMORY[0x277CBEAA8] now];
  v7 = dispatch_time(0, 60000000000);
  if (dispatch_semaphore_wait(v5, v7))
  {
    v8 = [MEMORY[0x277CBEAA8] now];
    [v8 timeIntervalSinceDate:v6];
    v10 = v9;
    v11 = objc_opt_new();
    v12 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_968];
    callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
    v14 = [callStackSymbols filteredArrayUsingPredicate:v12];
    firstObject = [v14 firstObject];

    [v11 submitToCoreAnalytics:firstObject type:1 duration:v10];
    v16 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2304B3000, v16, OS_LOG_TYPE_FAULT, "Invalid parameter not satisfying: safetyCacheStore", buf, 2u);
    }

    v17 = MEMORY[0x277CCA9B8];
    v43[0] = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v43 count:1];
    v19 = [v17 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v18];

    if (v19)
    {
      v20 = v19;
    }
  }

  else
  {
    v19 = 0;
  }

  v21 = v19;
  if (v21)
  {
    v22 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v25 = objc_opt_class();
      v26 = NSStringFromClass(v25);
      v27 = [v21 description];
      *buf = 138412802;
      *&buf[4] = v26;
      v39 = 2080;
      v40 = "[SMInitiatorCacheManager isCellularActivated]";
      v41 = 2112;
      v42 = v27;
      _os_log_error_impl(&dword_2304B3000, v22, OS_LOG_TYPE_ERROR, "%@,%s,sema error,%@", buf, 0x20u);
    }
  }

  v23 = *(v35 + 24);

  _Block_object_dispose(&v34, 8);
  return v23 & 1;
}

intptr_t __46__SMInitiatorCacheManager_isCellularActivated__block_invoke(uint64_t a1, char a2, uint64_t a3)
{
  if (!a3)
  {
    *(*(*(a1 + 40) + 8) + 24) = a2;
  }

  return dispatch_semaphore_signal(*(a1 + 32));
}

- (BOOL)isStandalone
{
  v3 = objc_alloc(MEMORY[0x277D4AAB0]);
  queue = [(SMInitiatorCacheManager *)self queue];
  v5 = [v3 initWithQueue:queue];

  LOBYTE(queue) = [v5 isEffectivePairedDeviceNearby];
  return queue ^ 1;
}

- (void)notifyObserversSafetyCacheDidUpdate
{
  v25 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      sessionUUID = [(SMInitiatorCacheManager *)self sessionUUID];
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      v18 = NSStringFromSelector(a2);
      v19 = 138412802;
      v20 = sessionUUID;
      v21 = 2112;
      v22 = v17;
      v23 = 2112;
      v24 = v18;
      _os_log_debug_impl(&dword_2304B3000, v4, OS_LOG_TYPE_DEBUG, "#SafetyCache,Initiator,sessionID:%@,%@,%@,sending safety cache update to observers", &v19, 0x20u);
    }
  }

  delegate = [(SMInitiatorCacheManager *)self delegate];
  sessionUUID2 = [(SMInitiatorCacheManager *)self sessionUUID];
  initiatorContact = [(SMInitiatorCacheManager *)self initiatorContact];
  phoneCache = [initiatorContact phoneCache];
  initiatorContact2 = [(SMInitiatorCacheManager *)self initiatorContact];
  watchCache = [initiatorContact2 watchCache];
  initiatorContact3 = [(SMInitiatorCacheManager *)self initiatorContact];
  shouldBeCleanedUpDate = [initiatorContact3 shouldBeCleanedUpDate];
  initiatorContact4 = [(SMInitiatorCacheManager *)self initiatorContact];
  keyReleaseMessageSendDate = [initiatorContact4 keyReleaseMessageSendDate];
  [delegate cacheManagerDidUpdateCacheForSessionID:sessionUUID2 phoneCache:phoneCache watchCache:watchCache cacheExpiryDate:shouldBeCleanedUpDate cacheReleaseDate:keyReleaseMessageSendDate];
}

- (void)initializeSessionWithCompletion:(id)completion
{
  v97[1] = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  if (completionCopy)
  {
    if ([(SMInitiatorCacheManager *)self initializationInProgress])
    {
      v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sessionUUID = [(SMInitiatorCacheManager *)self sessionUUID];
        v49 = objc_opt_class();
        v50 = NSStringFromClass(v49);
        v51 = NSStringFromSelector(a2);
        *buf = 138412802;
        *&buf[4] = sessionUUID;
        *&buf[12] = 2112;
        *&buf[14] = v50;
        *&buf[22] = 2112;
        v91 = v51;
        _os_log_error_impl(&dword_2304B3000, v5, OS_LOG_TYPE_ERROR, "#SafetyCache,Initiator,sessionID:%@,%@,%@,initialization already in progress", buf, 0x20u);
      }

      v6 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        v52 = objc_opt_class();
        v53 = NSStringFromClass(v52);
        v54 = NSStringFromSelector(a2);
        *buf = 138412546;
        *&buf[4] = v53;
        *&buf[12] = 2112;
        *&buf[14] = v54;
        _os_log_fault_impl(&dword_2304B3000, v6, OS_LOG_TYPE_FAULT, "#SafetyCache,Initiator,%@,%@,initialization already in progress", buf, 0x16u);
      }

      v7 = objc_alloc(MEMORY[0x277CCA9B8]);
      v96 = *MEMORY[0x277CCA450];
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"Initialization already in progress"];
      v97[0] = v8;
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v97 forKeys:&v96 count:1];
      v10 = [v7 initWithDomain:*MEMORY[0x277D4ACD0] code:22 userInfo:v9];

      (*(completionCopy + 2))(completionCopy, 0, 0, 0, 0, 0, 0, v10);
    }

    else
    {
      sessionManagerState = [(SMInitiatorCacheManager *)self sessionManagerState];
      v13 = [sessionManagerState sessionState] == 10;

      v14 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      v15 = v14;
      if (v13)
      {
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          sessionUUID2 = [(SMInitiatorCacheManager *)self sessionUUID];
          v17 = objc_opt_class();
          v18 = NSStringFromClass(v17);
          v19 = NSStringFromSelector(a2);
          *buf = 138412802;
          *&buf[4] = sessionUUID2;
          *&buf[12] = 2112;
          *&buf[14] = v18;
          *&buf[22] = 2112;
          v91 = v19;
          _os_log_impl(&dword_2304B3000, v15, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Initiator,sessionID:%@,%@,%@,starting initialization sequence", buf, 0x20u);
        }

        [(SMInitiatorCacheManager *)self setInitializationInProgress:1];
        [(SMInitiatorCacheManager *)self setInitializationWasAborted:0];
        [(SMInitiatorCacheManager *)self setInitializationCompletionCalled:0];
        [(SMInitiatorCacheManager *)self setInitializationCompletion:completionCopy];
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        v91 = __Block_byref_object_copy__96;
        v92 = __Block_byref_object_dispose__96;
        v62 = completionCopy;
        v93 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v20 = *(*&buf[8] + 40);
        v21 = MEMORY[0x277CCABB0];
        v22 = MEMORY[0x277D4AAE8];
        sessionManagerState2 = [(SMInitiatorCacheManager *)self sessionManagerState];
        configuration = [sessionManagerState2 configuration];
        conversation = [configuration conversation];
        receiverHandles = [conversation receiverHandles];
        firstObject = [receiverHandles firstObject];
        primaryHandle = [firstObject primaryHandle];
        v29 = [v21 numberWithInteger:{objc_msgSend(v22, "getSMHandleTypeWithHandle:", primaryHandle)}];
        [v20 setValue:v29 forKey:@"receiverHandleType"];

        completionCopy = v62;
        Current = CFAbsoluteTimeGetCurrent();
        v31 = dispatch_group_create();
        v88[0] = 0;
        v88[1] = v88;
        v88[2] = 0x3032000000;
        v88[3] = __Block_byref_object_copy__96;
        v88[4] = __Block_byref_object_dispose__96;
        v89 = 0;
        v86[0] = 0;
        v86[1] = v86;
        v86[2] = 0x3032000000;
        v86[3] = __Block_byref_object_copy__96;
        v86[4] = __Block_byref_object_dispose__96;
        v87 = 0;
        objc_initWeak(&location, self);
        defaultsManager = [(SMInitiatorCacheManager *)self defaultsManager];
        [defaultsManager setObject:0 forKey:@"SMDefaultsSafetyCacheInitCKZoneCreateRecordsLatencyKey"];

        defaultsManager2 = [(SMInitiatorCacheManager *)self defaultsManager];
        [defaultsManager2 setObject:0 forKey:@"SMDefaultsSafetyCacheInitCKZoneSaveLatencyKey"];

        defaultsManager3 = [(SMInitiatorCacheManager *)self defaultsManager];
        [defaultsManager3 setObject:0 forKey:@"SMDefaultsSafetyCacheInitCKZoneSubscribeChangesLatencyKey"];

        dispatch_group_enter(v31);
        v35 = CFAbsoluteTimeGetCurrent();
        v79[0] = MEMORY[0x277D85DD0];
        v79[1] = 3221225472;
        v79[2] = __59__SMInitiatorCacheManager_initializeSessionWithCompletion___block_invoke;
        v79[3] = &unk_2788CCCD8;
        objc_copyWeak(v84, &location);
        v84[1] = *&v35;
        v84[2] = a2;
        v81 = buf;
        v82 = v88;
        v83 = v86;
        v36 = v31;
        v80 = v36;
        [(SMInitiatorCacheManager *)self _checkInitiatorEligibilityWithCompletion:v79];
        dispatch_group_enter(v36);
        v37 = CFAbsoluteTimeGetCurrent();
        v73[0] = MEMORY[0x277D85DD0];
        v73[1] = 3221225472;
        v73[2] = __59__SMInitiatorCacheManager_initializeSessionWithCompletion___block_invoke_187;
        v73[3] = &unk_2788CCCD8;
        objc_copyWeak(v78, &location);
        v78[1] = *&v37;
        v78[2] = a2;
        v75 = buf;
        v76 = v86;
        v77 = v88;
        v38 = v36;
        v74 = v38;
        [(SMInitiatorCacheManager *)self _checkConversationEligibilityWithCompletion:v73];
        dispatch_group_enter(v38);
        v39 = CFAbsoluteTimeGetCurrent();
        v69[0] = MEMORY[0x277D85DD0];
        v69[1] = 3221225472;
        v69[2] = __59__SMInitiatorCacheManager_initializeSessionWithCompletion___block_invoke_197;
        v69[3] = &unk_2788CCD00;
        v69[4] = self;
        objc_copyWeak(v72, &location);
        v71 = buf;
        v72[1] = *&v39;
        v72[2] = a2;
        v40 = v38;
        v70 = v40;
        [(SMInitiatorCacheManager *)self _setupShareZoneWithCompletion:v69];
        queue = [(SMInitiatorCacheManager *)self queue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __59__SMInitiatorCacheManager_initializeSessionWithCompletion___block_invoke_212;
        block[3] = &unk_2788CCD28;
        v65 = v40;
        v42 = v40;
        objc_copyWeak(v68, &location);
        v68[1] = *&Current;
        selfCopy = self;
        v67 = buf;
        v68[2] = a2;
        dispatch_group_notify(v42, queue, block);

        objc_destroyWeak(v68);
        objc_destroyWeak(v72);

        objc_destroyWeak(v78);
        objc_destroyWeak(v84);
        objc_destroyWeak(&location);
        _Block_object_dispose(v86, 8);

        _Block_object_dispose(v88, 8);
        _Block_object_dispose(buf, 8);
      }

      else
      {
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          sessionUUID3 = [(SMInitiatorCacheManager *)self sessionUUID];
          v56 = objc_opt_class();
          v57 = NSStringFromClass(v56);
          v58 = NSStringFromSelector(a2);
          *buf = 138412802;
          *&buf[4] = sessionUUID3;
          *&buf[12] = 2112;
          *&buf[14] = v57;
          *&buf[22] = 2112;
          v91 = v58;
          _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, "#SafetyCache,Initiator,sessionID:%@,%@,%@,not in initializing state", buf, 0x20u);
        }

        v43 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(v43, OS_LOG_TYPE_FAULT))
        {
          v59 = objc_opt_class();
          v60 = NSStringFromClass(v59);
          v61 = NSStringFromSelector(a2);
          *buf = 138412546;
          *&buf[4] = v60;
          *&buf[12] = 2112;
          *&buf[14] = v61;
          _os_log_fault_impl(&dword_2304B3000, v43, OS_LOG_TYPE_FAULT, "#SafetyCache,Initiator,%@,%@,not in initializing state", buf, 0x16u);
        }

        v44 = objc_alloc(MEMORY[0x277CCA9B8]);
        v94 = *MEMORY[0x277CCA450];
        v45 = [MEMORY[0x277CCACA8] stringWithFormat:@"Not in Initializing state"];
        v95 = v45;
        v46 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v95 forKeys:&v94 count:1];
        v47 = [v44 initWithDomain:*MEMORY[0x277D4ACD0] code:41 userInfo:v46];

        (*(completionCopy + 2))(completionCopy, 0, 0, 0, 0, 0, 0, v47);
      }
    }
  }

  else
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: completion", buf, 2u);
    }
  }
}

void __59__SMInitiatorCacheManager_initializeSessionWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v6 = *(*(*(a1 + 40) + 8) + 40);
  v7 = [MEMORY[0x277CCABB0] numberWithDouble:CFAbsoluteTimeGetCurrent() - *(a1 + 72)];
  [v6 setValue:v7 forKey:@"initiatorCheckDuration"];

  v8 = *(*(*(a1 + 40) + 8) + 40);
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(WeakRetained, "initiatorEligibility")}];
  [v8 setValue:v9 forKey:@"initiatorEligibility"];

  [*(*(*(a1 + 40) + 8) + 40) setValue:&unk_28459E760 forKey:@"lastStepToComplete"];
  v10 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [WeakRetained sessionUUID];
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v14 = NSStringFromSelector(*(a1 + 80));
    [WeakRetained initiatorEligibility];
    v15 = initiatorEligiblityStatusToString();
    *buf = 138413314;
    v21 = v11;
    v22 = 2112;
    v23 = v13;
    v24 = 2112;
    v25 = v14;
    v26 = 2112;
    v27 = v15;
    v28 = 2112;
    v29 = v4;
    _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Initiator,sessionID:%@,%@,%@,fetched initiator eligibility,%@,error,%@", buf, 0x34u);
  }

  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  if (([WeakRetained initializationCompletionCalled] & 1) == 0 && objc_msgSend(WeakRetained, "receiverEligibility") && (*(*(*(a1 + 48) + 8) + 40) || objc_msgSend(WeakRetained, "initiatorEligibility") != 1 || *(*(*(a1 + 56) + 8) + 40) || objc_msgSend(WeakRetained, "receiverEligibility") != 1))
  {
    v19 = *(*(*(a1 + 56) + 8) + 40);
    v16 = _SMSafeArray();
    v17 = _SMMultiErrorCreate();

    [WeakRetained setInitializationCompletionCalled:{1, v19, 1}];
    v18 = [WeakRetained initializationCompletion];
    (v18)[2](v18, 0, 0, 0, 0, [WeakRetained initiatorEligibility], objc_msgSend(WeakRetained, "receiverEligibility"), v17);

    [WeakRetained setInitializationCompletion:0];
  }

  dispatch_group_leave(*(a1 + 32));
}

void __59__SMInitiatorCacheManager_initializeSessionWithCompletion___block_invoke_187(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v6 = *(*(*(a1 + 40) + 8) + 40);
  v7 = [MEMORY[0x277CCABB0] numberWithDouble:CFAbsoluteTimeGetCurrent() - *(a1 + 72)];
  [v6 setValue:v7 forKey:@"receiverCheckDuration"];

  v8 = *(*(*(a1 + 40) + 8) + 40);
  v9 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(WeakRetained, "receiverEligibility") == 1}];
  [v8 setValue:v9 forKey:@"wasReceiverEligible"];

  [*(*(*(a1 + 40) + 8) + 40) setValue:&unk_28459E778 forKey:@"lastStepToComplete"];
  v10 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [WeakRetained sessionUUID];
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v14 = NSStringFromSelector(*(a1 + 80));
    v15 = [MEMORY[0x277D4AAC0] convertEligibilityTypeToString:{objc_msgSend(WeakRetained, "receiverEligibility")}];
    *buf = 138413314;
    v21 = v11;
    v22 = 2112;
    v23 = v13;
    v24 = 2112;
    v25 = v14;
    v26 = 2112;
    v27 = v15;
    v28 = 2112;
    v29 = v4;
    _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Initiator,sessionID:%@,%@,%@,fetched receiver eligibility,%@,error,%@", buf, 0x34u);
  }

  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  if (([WeakRetained initializationCompletionCalled] & 1) == 0 && objc_msgSend(WeakRetained, "initiatorEligibility") && (*(*(*(a1 + 56) + 8) + 40) || objc_msgSend(WeakRetained, "initiatorEligibility") != 1 || *(*(*(a1 + 48) + 8) + 40) || objc_msgSend(WeakRetained, "receiverEligibility") != 1))
  {
    v19 = *(*(*(a1 + 48) + 8) + 40);
    v16 = _SMSafeArray();
    v17 = _SMMultiErrorCreate();

    [WeakRetained setInitializationCompletionCalled:{1, v19, 1}];
    v18 = [WeakRetained initializationCompletion];
    (v18)[2](v18, 0, 0, 0, 0, [WeakRetained initiatorEligibility], objc_msgSend(WeakRetained, "receiverEligibility"), v17);

    [WeakRetained setInitializationCompletion:0];
  }

  dispatch_group_leave(*(a1 + 32));
}

void __59__SMInitiatorCacheManager_initializeSessionWithCompletion___block_invoke_197(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__SMInitiatorCacheManager_initializeSessionWithCompletion___block_invoke_2;
  block[3] = &unk_2788CCD28;
  objc_copyWeak(v11, (a1 + 56));
  v11[1] = *(a1 + 64);
  v9 = v3;
  v11[2] = *(a1 + 72);
  v7 = *(a1 + 40);
  v5 = v7;
  v10 = v7;
  v6 = v3;
  dispatch_async(v4, block);

  objc_destroyWeak(v11);
}

void __59__SMInitiatorCacheManager_initializeSessionWithCompletion___block_invoke_2(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = *(*(*(a1 + 48) + 8) + 40);
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:CFAbsoluteTimeGetCurrent() - *(a1 + 64)];
  [v3 setValue:v4 forKey:@"zoneSetupDuration"];

  v5 = *(*(*(a1 + 48) + 8) + 40);
  v6 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 32) == 0];
  [v5 setValue:v6 forKey:@"wasZoneSetupSuccessful"];

  v7 = *(a1 + 32);
  if (v7)
  {
    v8 = *(*(*(a1 + 48) + 8) + 40);
    v9 = MEMORY[0x277CCACA8];
    v10 = [v7 domain];
    v11 = [v9 stringWithFormat:@"%@:%d", v10, objc_msgSend(*(a1 + 32), "code")];
    [v8 setValue:v11 forKey:@"zoneSetupError"];
  }

  [*(*(*(a1 + 48) + 8) + 40) setValue:&unk_28459E790 forKey:@"lastStepToComplete"];
  v12 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [WeakRetained sessionUUID];
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    v16 = NSStringFromSelector(*(a1 + 72));
    v17 = *(a1 + 32);
    *buf = 138413058;
    v20 = v13;
    v21 = 2112;
    v22 = v15;
    v23 = 2112;
    v24 = v16;
    v25 = 2112;
    v26 = v17;
    _os_log_impl(&dword_2304B3000, v12, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Initiator,sessionID:%@,%@,%@,zone setup completed,error,%@", buf, 0x2Au);
  }

  if (([WeakRetained initializationCompletionCalled] & 1) == 0 && *(a1 + 32))
  {
    [WeakRetained setInitializationCompletionCalled:1];
    v18 = [WeakRetained initializationCompletion];
    v18[2](v18, 0, 0, 0, 0, [WeakRetained initiatorEligibility], objc_msgSend(WeakRetained, "receiverEligibility"), *(a1 + 32));

    [WeakRetained setInitializationCompletion:0];
  }

  dispatch_group_leave(*(a1 + 40));
}

void __59__SMInitiatorCacheManager_initializeSessionWithCompletion___block_invoke_212(uint64_t a1)
{
  v61 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained setInitializationInProgress:0];
  v3 = *(*(*(a1 + 48) + 8) + 40);
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:CFAbsoluteTimeGetCurrent() - *(a1 + 64)];
  [v3 setValue:v4 forKey:@"initializationDuration"];

  v5 = *(*(*(a1 + 48) + 8) + 40);
  v6 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(WeakRetained, "initializationCompletionCalled") ^ 1}];
  [v5 setValue:v6 forKey:@"initializationResult"];

  v7 = *(*(*(a1 + 48) + 8) + 40);
  v8 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(WeakRetained, "initializationWasAborted")}];
  [v7 setValue:v8 forKey:@"wasAborted"];

  v9 = *(*(*(a1 + 48) + 8) + 40);
  v10 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 40), "isCellularActivated")}];
  [v9 setValue:v10 forKey:@"isCellularActivated"];

  v11 = *(*(*(a1 + 48) + 8) + 40);
  v12 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 40), "isStandalone")}];
  [v11 setValue:v12 forKey:@"isStandalone"];

  v13 = [*(a1 + 40) sessionManagerState];
  v14 = [v13 configuration];
  v15 = [v14 conversation];
  v16 = [v15 receiverHandles];
  v17 = [v16 count];

  v18 = *(*(*(a1 + 48) + 8) + 40);
  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v17];
  [v18 setValue:v19 forKey:@"numRecipients"];

  v20 = [*(a1 + 40) defaultsManager];
  v21 = [v20 objectForKey:@"SMDefaultsSafetyCacheInitCKZoneCreateRecordsLatencyKey" value:&unk_28459E7A8];

  [v21 doubleValue];
  if (v22 > 0.0)
  {
    [*(*(*(a1 + 48) + 8) + 40) setValue:v21 forKey:@"zoneCreateRecordsLatency"];
  }

  v23 = [*(a1 + 40) defaultsManager];
  v24 = [v23 objectForKey:@"SMDefaultsSafetyCacheInitCKZoneSaveLatencyKey" value:&unk_28459E7A8];

  [v24 doubleValue];
  if (v25 > 0.0)
  {
    [*(*(*(a1 + 48) + 8) + 40) setValue:v24 forKey:@"zoneSaveLatency"];
  }

  v26 = [*(a1 + 40) defaultsManager];
  v27 = [v26 objectForKey:@"SMDefaultsSafetyCacheInitCKZoneSubscribeChangesLatencyKey" value:&unk_28459E7A8];

  [v27 doubleValue];
  if (v28 > 0.0)
  {
    [*(*(*(a1 + 48) + 8) + 40) setValue:v27 forKey:@"zoneSubscribeChangesLatency"];
  }

  AnalyticsSendEvent();
  v29 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    v30 = [WeakRetained sessionUUID];
    v31 = objc_opt_class();
    v32 = NSStringFromClass(v31);
    v33 = NSStringFromSelector(*(a1 + 72));
    if ([WeakRetained initializationCompletionCalled])
    {
      v34 = [WeakRetained initializationWasAborted];
      v35 = @"failed";
      if (v34)
      {
        v35 = @"was aborted";
      }
    }

    else
    {
      v35 = @"succeeded";
    }

    v36 = *(*(*(a1 + 48) + 8) + 40);
    *buf = 138413314;
    v52 = v30;
    v53 = 2112;
    v54 = v32;
    v55 = 2112;
    v56 = v33;
    v57 = 2112;
    v58 = v35;
    v59 = 2112;
    v60 = v36;
    _os_log_impl(&dword_2304B3000, v29, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Initiator,sessionID:%@,%@,%@,initialization %@,metric,%@", buf, 0x34u);
  }

  if (([WeakRetained initializationCompletionCalled] & 1) == 0)
  {
    [WeakRetained setInitializationCompletionCalled:1];
    v50 = [WeakRetained initializationCompletion];
    v48 = [WeakRetained initiatorContact];
    v37 = [v48 allowReadToken];
    v47 = [WeakRetained initiatorContact];
    v38 = [v47 safetyCacheKey];
    [WeakRetained initiatorContact];
    v39 = v49 = v21;
    v40 = [v39 scheduleSendMessageGUID];
    [WeakRetained activeSessionZone];
    v42 = v41 = v24;
    [v42 invitationTokenMap];
    v44 = v43 = v27;
    (v50)[2](v50, v37, v38, v40, v44, [WeakRetained initiatorEligibility], objc_msgSend(WeakRetained, "receiverEligibility"), 0);

    v27 = v43;
    v24 = v41;

    v21 = v49;
    [WeakRetained setInitializationCompletion:0];
  }

  v45 = [WeakRetained initiatorContact];
  v46 = [v45 shouldBeCleanedUpDate];

  if (v46)
  {
    [WeakRetained _cleanupActiveSessionZone];
  }
}

- (void)_setupActiveSessionZone
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = [SMSafetyCacheZone alloc];
  sessionUUID = [(SMInitiatorCacheManager *)self sessionUUID];
  initiatorContact = [(SMInitiatorCacheManager *)self initiatorContact];
  allowReadToken = [initiatorContact allowReadToken];
  v8 = [allowReadToken base64EncodedStringWithOptions:0];
  defaultsManager = [(SMInitiatorCacheManager *)self defaultsManager];
  queue = [(SMInitiatorCacheManager *)self queue];
  v11 = [(SMSafetyCacheZone *)v4 initWithSessionID:sessionUUID token:v8 defaultsManager:defaultsManager queue:queue];
  [(SMInitiatorCacheManager *)self setActiveSessionZone:v11];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      sessionUUID2 = [(SMInitiatorCacheManager *)self sessionUUID];
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      v16 = NSStringFromSelector(a2);
      activeSessionZone = [(SMInitiatorCacheManager *)self activeSessionZone];
      v18 = 138413058;
      v19 = sessionUUID2;
      v20 = 2112;
      v21 = v15;
      v22 = 2112;
      v23 = v16;
      v24 = 2112;
      v25 = activeSessionZone;
      _os_log_debug_impl(&dword_2304B3000, v12, OS_LOG_TYPE_DEBUG, "#SafetyCache,Initiator,sessionID:%@,%@,%@,Setting up share zone,%@", &v18, 0x2Au);
    }
  }
}

- (void)_setupFetchOnZoneUpdates
{
  v30 = *MEMORY[0x277D85DE8];
  activeSessionZone = [(SMInitiatorCacheManager *)self activeSessionZone];

  if (!activeSessionZone)
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sessionUUID = [(SMInitiatorCacheManager *)self sessionUUID];
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      v17 = NSStringFromSelector(a2);
      *buf = 138412802;
      v25 = sessionUUID;
      v26 = 2112;
      v27 = v16;
      v28 = 2112;
      v29 = v17;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "#SafetyCache,Initiator,sessionID:%@,%@,%@,No zone to setup", buf, 0x20u);
    }

LABEL_6:

    return;
  }

  activeSessionZone2 = [(SMInitiatorCacheManager *)self activeSessionZone];
  zoneUpdateHandler = [activeSessionZone2 zoneUpdateHandler];

  if (zoneUpdateHandler)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      return;
    }

    v7 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sessionUUID2 = [(SMInitiatorCacheManager *)self sessionUUID];
      v19 = objc_opt_class();
      v20 = NSStringFromClass(v19);
      v21 = NSStringFromSelector(a2);
      *buf = 138412802;
      v25 = sessionUUID2;
      v26 = 2112;
      v27 = v20;
      v28 = 2112;
      v29 = v21;
      _os_log_debug_impl(&dword_2304B3000, v7, OS_LOG_TYPE_DEBUG, "#SafetyCache,Initiator,sessionID:%@,%@,%@,fetch already active", buf, 0x20u);
    }

    goto LABEL_6;
  }

  v8 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    sessionUUID3 = [(SMInitiatorCacheManager *)self sessionUUID];
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = NSStringFromSelector(a2);
    *buf = 138412802;
    v25 = sessionUUID3;
    v26 = 2112;
    v27 = v11;
    v28 = 2112;
    v29 = v12;
    _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Initiator,sessionID:%@,%@,%@,Registering for zone updates", buf, 0x20u);
  }

  objc_initWeak(buf, self);
  activeSessionZone3 = [(SMInitiatorCacheManager *)self activeSessionZone];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __51__SMInitiatorCacheManager__setupFetchOnZoneUpdates__block_invoke;
  v22[3] = &unk_2788CCD78;
  objc_copyWeak(v23, buf);
  v23[1] = a2;
  [activeSessionZone3 registerForZoneUpdatesWithHandler:v22];

  objc_destroyWeak(v23);
  objc_destroyWeak(buf);
}

void __51__SMInitiatorCacheManager__setupFetchOnZoneUpdates__block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [WeakRetained sessionUUID];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = NSStringFromSelector(*(a1 + 40));
    *buf = 138413058;
    v18 = v6;
    v19 = 2112;
    v20 = v8;
    v21 = 2112;
    v22 = v9;
    v23 = 2112;
    v24 = v3;
    _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Initiator,sessionID:%@,%@,%@,Received zone update,%@", buf, 0x2Au);
  }

  v10 = [[SMCloudKitQosOptions alloc] initWithDefaultQos:1 masqueradeBundleID:0 xpcActivity:0];
  v11 = [WeakRetained activeSessionZone];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __51__SMInitiatorCacheManager__setupFetchOnZoneUpdates__block_invoke_257;
  v14[3] = &unk_2788CCD50;
  objc_copyWeak(v16, (a1 + 32));
  v12 = WeakRetained;
  v13 = *(a1 + 40);
  v15 = v12;
  v16[1] = v13;
  [v11 fetchSafetyCacheRecordsWithQos:v10 completion:v14];

  objc_destroyWeak(v16);
}

void __51__SMInitiatorCacheManager__setupFetchOnZoneUpdates__block_invoke_257(uint64_t a1, int a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [WeakRetained sessionUUID];
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = NSStringFromSelector(*(a1 + 48));
    v16 = 138413058;
    v17 = v8;
    v18 = 2112;
    v19 = v10;
    v20 = 2112;
    v21 = v11;
    v22 = 2112;
    v23 = v5;
    _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Initiator,sessionID:%@,%@,%@,fetchSafetyCacheRecordsWithQos,error,%@", &v16, 0x2Au);
  }

  if (a2)
  {
    v12 = [WeakRetained activeSessionZone];
    v13 = [v12 phoneSafetyCache];
    v14 = [WeakRetained activeSessionZone];
    v15 = [v14 watchSafetyCache];
    [WeakRetained decryptAndStoreSafetyCacheDataWithPhoneCacheData:v13 watchCacheData:v15 metricsDict:0];
  }
}

- (void)_teardownFetchOnZoneUpdates
{
  v22 = *MEMORY[0x277D85DE8];
  activeSessionZone = [(SMInitiatorCacheManager *)self activeSessionZone];
  zoneUpdateHandler = [activeSessionZone zoneUpdateHandler];

  if (zoneUpdateHandler)
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      sessionUUID = [(SMInitiatorCacheManager *)self sessionUUID];
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v10 = NSStringFromSelector(a2);
      v16 = 138412802;
      v17 = sessionUUID;
      v18 = 2112;
      v19 = v9;
      v20 = 2112;
      v21 = v10;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Initiator,sessionID:%@,%@,%@,Deregistering for zone updates", &v16, 0x20u);
    }

    activeSessionZone2 = [(SMInitiatorCacheManager *)self activeSessionZone];
    [activeSessionZone2 deregisterForZoneUpdates];
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      return;
    }

    activeSessionZone2 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(activeSessionZone2, OS_LOG_TYPE_DEBUG))
    {
      sessionUUID2 = [(SMInitiatorCacheManager *)self sessionUUID];
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      v15 = NSStringFromSelector(a2);
      v16 = 138412802;
      v17 = sessionUUID2;
      v18 = 2112;
      v19 = v14;
      v20 = 2112;
      v21 = v15;
      _os_log_debug_impl(&dword_2304B3000, activeSessionZone2, OS_LOG_TYPE_DEBUG, "#SafetyCache,Initiator,sessionID:%@,%@,%@,No fetch in progress to deregister", &v16, 0x20u);
    }
  }
}

- (void)_setupShareZoneWithCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    objc_initWeak(location, self);
    v6 = [SMCloudKitQosOptions alloc];
    v7 = [(SMCloudKitQosOptions *)v6 initWithDefaultQos:1 masqueradeBundleID:*MEMORY[0x277D4AD38] xpcActivity:0];
    activeSessionZone = [(SMInitiatorCacheManager *)self activeSessionZone];
    sessionManagerState = [(SMInitiatorCacheManager *)self sessionManagerState];
    configuration = [sessionManagerState configuration];
    conversation = [configuration conversation];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __57__SMInitiatorCacheManager__setupShareZoneWithCompletion___block_invoke;
    v15[3] = &unk_2788CCDC8;
    objc_copyWeak(v18, location);
    v12 = completionCopy;
    v18[1] = a2;
    v17 = v12;
    v15[4] = self;
    v13 = v7;
    v16 = v13;
    [activeSessionZone setupZoneAndShareWithConversation:conversation qos:v13 completion:v15];

    objc_destroyWeak(v18);
    objc_destroyWeak(location);
  }

  else
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      LOWORD(location[0]) = 0;
      _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: completion", location, 2u);
    }
  }
}

void __57__SMInitiatorCacheManager__setupShareZoneWithCompletion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v40[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v7 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        v19 = [WeakRetained sessionUUID];
        v20 = objc_opt_class();
        v21 = NSStringFromClass(v20);
        v22 = NSStringFromSelector(*(a1 + 64));
        *v33 = 138413314;
        *&v33[4] = v19;
        *&v33[12] = 2112;
        *&v33[14] = v21;
        *&v33[22] = 2112;
        Current = *&v22;
        v35 = 1024;
        v36 = a2;
        v37 = 2112;
        v38 = v5;
        _os_log_debug_impl(&dword_2304B3000, v7, OS_LOG_TYPE_DEBUG, "#SafetyCache,Initiator,sessionID:%@,%@,%@,success,%d,error,%@", v33, 0x30u);
      }
    }

    if (a2)
    {
      *v33 = 0;
      *&v33[8] = v33;
      *&v33[16] = 0x2020000000;
      Current = CFAbsoluteTimeGetCurrent();
      v29 = 0;
      v30 = &v29;
      v31 = 0x2020000000;
      v8 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorAnalytics);
      v9 = os_signpost_id_generate(v8);

      v32 = v9;
      v10 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorAnalytics);
      v11 = v10;
      v12 = v30[3];
      if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_2304B3000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v12, "SMInitializationSequenceSetupZoneAndShareSubscribeToZoneChanges", " enableTelemetry=YES ", buf, 2u);
      }

      v13 = [*(a1 + 32) activeSessionZone];
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __57__SMInitiatorCacheManager__setupShareZoneWithCompletion___block_invoke_262;
      v23[3] = &unk_2788CCDA0;
      v14 = *(a1 + 40);
      v23[4] = *(a1 + 32);
      v25 = v33;
      v15 = *(a1 + 64);
      v26 = &v29;
      v27 = v15;
      v24 = *(a1 + 48);
      [v13 subscribeToZoneChangesInPrivateDatabaseWithQoS:v14 completion:v23];

      _Block_object_dispose(&v29, 8);
      _Block_object_dispose(v33, 8);
    }

    else
    {
      (*(*(a1 + 48) + 16))();
    }
  }

  else
  {
    v16 = objc_alloc(MEMORY[0x277CCA9B8]);
    v39 = *MEMORY[0x277CCA450];
    v40[0] = @"SMInitiatorCacheManger was destroyed before zone setup";
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:&v39 count:1];
    v18 = [v16 initWithDomain:*MEMORY[0x277D4ACD0] code:24 userInfo:v17];

    (*(*(a1 + 48) + 16))();
  }
}

void __57__SMInitiatorCacheManager__setupShareZoneWithCompletion___block_invoke_262(uint64_t a1, unsigned int a2, void *a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [*(a1 + 32) defaultsManager];
  v7 = [MEMORY[0x277CCABB0] numberWithDouble:CFAbsoluteTimeGetCurrent() - *(*(*(a1 + 48) + 8) + 24)];
  [v6 setObject:v7 forKey:@"SMDefaultsSafetyCacheInitCKZoneSubscribeChangesLatencyKey"];

  v8 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorAnalytics);
  v9 = v8;
  v10 = *(*(*(a1 + 56) + 8) + 24);
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    v11 = a2;
    v12 = [v5 domain];
    v22 = 134349570;
    v23 = v11;
    v24 = 2082;
    v25 = [v12 UTF8String];
    v26 = 2050;
    v27 = [v5 code];
    _os_signpost_emit_with_name_impl(&dword_2304B3000, v9, OS_SIGNPOST_INTERVAL_END, v10, "SMInitializationSequenceSetupZoneAndShareSubscribeToZoneChanges", " enableTelemetry=YES {success:%{public, signpost.telemetry:number1}ld, errorDomain:%{public, signpost.telemetry:string1}s, errorCode:%{public, signpost.telemetry:number2}ld}", &v22, 0x20u);
  }

  v13 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [*(a1 + 32) activeSessionZone];
    v15 = [v14 zoneID];
    v16 = [v15 zoneName];
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    v19 = NSStringFromSelector(*(a1 + 64));
    v20 = [*(a1 + 32) activeSessionZone];
    v21 = [v20 zoneID];
    v22 = 138413314;
    v23 = v16;
    v24 = 2112;
    v25 = v18;
    v26 = 2112;
    v27 = v19;
    v28 = 2112;
    v29 = v21;
    v30 = 2112;
    v31 = v5;
    _os_log_impl(&dword_2304B3000, v13, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Initiator,sessionID:%@,%@,%@, subscribed to zone changes for zoneID %@, with error %@", &v22, 0x34u);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)decryptAndStoreSafetyCacheDataWithPhoneCacheData:(id)data watchCacheData:(id)cacheData metricsDict:(id *)dict
{
  v75 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  cacheDataCopy = cacheData;
  v10 = objc_opt_new();
  v11 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  v62 = dataCopy;
  if (dataCopy)
  {
    if (v12)
    {
      sessionUUID = [(SMInitiatorCacheManager *)self sessionUUID];
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      v16 = NSStringFromSelector(a2);
      *buf = 138412802;
      v66 = sessionUUID;
      v67 = 2112;
      v68 = v15;
      v69 = 2112;
      v70 = v16;
      _os_log_impl(&dword_2304B3000, v11, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Initiator,sessionID:%@,%@,%@,decrypting phone safety cache data", buf, 0x20u);
    }

    initiatorContact = [(SMInitiatorCacheManager *)self initiatorContact];
    safetyCacheKey = [initiatorContact safetyCacheKey];
    sessionUUID2 = [(SMInitiatorCacheManager *)self sessionUUID];
    v64 = 0;
    v20 = [SMCryptoUtilities decryptSafetyCache:v62 key:safetyCacheKey sessionID:sessionUUID2 role:@"Initiator" device:1 metricsDict:dict hashString:&v64];
    sessionUUID5 = v64;

    if (v20)
    {
      sessionUUID3 = [(SMInitiatorCacheManager *)self sessionUUID];
      [v20 logCacheForSessionID:sessionUUID3 role:@"Initiator" deviceType:@"phone" transaction:v10 hashString:sessionUUID5];
    }

    else
    {
      v28 = MEMORY[0x277D4AA70];
      sessionUUID3 = [(SMInitiatorCacheManager *)self sessionUUID];
      [v28 logNoCacheDataForSessionID:sessionUUID3 role:@"Initiator" deviceType:@"phone" transaction:v10];
    }
  }

  else
  {
    if (v12)
    {
      sessionUUID4 = [(SMInitiatorCacheManager *)self sessionUUID];
      v24 = objc_opt_class();
      v25 = NSStringFromClass(v24);
      v26 = NSStringFromSelector(a2);
      *buf = 138412802;
      v66 = sessionUUID4;
      v67 = 2112;
      v68 = v25;
      v69 = 2112;
      v70 = v26;
      _os_log_impl(&dword_2304B3000, v11, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Initiator,sessionID:%@,%@,%@,no phone safety cache data", buf, 0x20u);
    }

    v27 = MEMORY[0x277D4AA70];
    sessionUUID5 = [(SMInitiatorCacheManager *)self sessionUUID];
    [v27 logNoCacheDataForSessionID:sessionUUID5 role:@"Initiator" deviceType:@"phone" transaction:v10];
    v20 = 0;
  }

  v29 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  v30 = os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);
  if (cacheDataCopy)
  {
    if (v30)
    {
      sessionUUID6 = [(SMInitiatorCacheManager *)self sessionUUID];
      v32 = objc_opt_class();
      v33 = NSStringFromClass(v32);
      v34 = NSStringFromSelector(a2);
      *buf = 138412802;
      v66 = sessionUUID6;
      v67 = 2112;
      v68 = v33;
      v69 = 2112;
      v70 = v34;
      _os_log_impl(&dword_2304B3000, v29, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Initiator,sessionID:%@,%@,%@,decrypting watch safety cache data", buf, 0x20u);
    }

    initiatorContact2 = [(SMInitiatorCacheManager *)self initiatorContact];
    safetyCacheKey2 = [initiatorContact2 safetyCacheKey];
    sessionUUID7 = [(SMInitiatorCacheManager *)self sessionUUID];
    v63 = 0;
    v38 = [SMCryptoUtilities decryptSafetyCache:cacheDataCopy key:safetyCacheKey2 sessionID:sessionUUID7 role:@"Initiator" device:2 metricsDict:dict hashString:&v63];
    sessionUUID10 = v63;

    if (v38)
    {
      sessionUUID8 = [(SMInitiatorCacheManager *)self sessionUUID];
      [v38 logCacheForSessionID:sessionUUID8 role:@"Initiator" deviceType:@"watch" transaction:v10 hashString:sessionUUID10];
    }

    else
    {
      v46 = MEMORY[0x277D4AA70];
      sessionUUID8 = [(SMInitiatorCacheManager *)self sessionUUID];
      [v46 logNoCacheDataForSessionID:sessionUUID8 role:@"Initiator" deviceType:@"watch" transaction:v10];
    }
  }

  else
  {
    if (v30)
    {
      sessionUUID9 = [(SMInitiatorCacheManager *)self sessionUUID];
      v42 = objc_opt_class();
      v43 = NSStringFromClass(v42);
      v44 = NSStringFromSelector(a2);
      *buf = 138412802;
      v66 = sessionUUID9;
      v67 = 2112;
      v68 = v43;
      v69 = 2112;
      v70 = v44;
      _os_log_impl(&dword_2304B3000, v29, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Initiator,sessionID:%@,%@,%@,no watch safety cache data", buf, 0x20u);
    }

    if (dict)
    {
      [*dict setValue:&unk_28459E760 forKey:@"watchCacheDecryptionResult"];
    }

    v45 = MEMORY[0x277D4AA70];
    sessionUUID10 = [(SMInitiatorCacheManager *)self sessionUUID];
    [v45 logNoCacheDataForSessionID:sessionUUID10 role:@"Initiator" deviceType:@"watch" transaction:v10];
    v38 = 0;
  }

  v47 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  v48 = v47;
  if (v20 | v38)
  {
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      sessionUUID11 = [(SMInitiatorCacheManager *)self sessionUUID];
      v50 = objc_opt_class();
      v51 = NSStringFromClass(v50);
      v52 = NSStringFromSelector(a2);
      *buf = 138413315;
      v66 = sessionUUID11;
      v67 = 2112;
      v68 = v51;
      v69 = 2112;
      v70 = v52;
      v71 = 2117;
      v72 = v20;
      v73 = 2117;
      v74 = v38;
      _os_log_impl(&dword_2304B3000, v48, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Initiator,sessionID:%@,%@,%@,successfully decrypted safety cache data for,phone,%{sensitive}@,watch,%{sensitive}@", buf, 0x34u);
    }

    initiatorContact3 = [(SMInitiatorCacheManager *)self initiatorContact];
    [initiatorContact3 setPhoneCache:v20];

    initiatorContact4 = [(SMInitiatorCacheManager *)self initiatorContact];
    [initiatorContact4 setWatchCache:v38];

    v55 = [MEMORY[0x277CBEAA8] now];
    initiatorContact5 = [(SMInitiatorCacheManager *)self initiatorContact];
    [initiatorContact5 setSyncDate:v55];

    [(SMInitiatorCacheManager *)self _updateInitiatorContactInStore];
  }

  else
  {
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      sessionUUID12 = [(SMInitiatorCacheManager *)self sessionUUID];
      v58 = objc_opt_class();
      v59 = NSStringFromClass(v58);
      v60 = NSStringFromSelector(a2);
      *buf = 138412802;
      v66 = sessionUUID12;
      v67 = 2112;
      v68 = v59;
      v69 = 2112;
      v70 = v60;
      _os_log_error_impl(&dword_2304B3000, v48, OS_LOG_TYPE_ERROR, "#SafetyCache,Initiator,sessionID:%@,%@,%@,no safety cache data present", buf, 0x20u);
    }
  }
}

- (void)_checkInitiatorEligibilityWithCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    v5 = MEMORY[0x277CCACA8];
    sessionUUID = [(SMInitiatorCacheManager *)self sessionUUID];
    v7 = [v5 stringWithFormat:@"com.apple.SafetyMonitor.InitiatorEligibility.%@", sessionUUID];

    v8 = dispatch_queue_create([v7 UTF8String], 0);
    [(SMInitiatorCacheManager *)self setInitiatorEligibilityQueue:v8];

    objc_initWeak(location, self);
    initiatorEligibilityQueue = [(SMInitiatorCacheManager *)self initiatorEligibilityQueue];
    authorizationManager = [(SMInitiatorCacheManager *)self authorizationManager];
    messagingService = [(SMInitiatorCacheManager *)self messagingService];
    effectivePairedDevice = [messagingService effectivePairedDevice];
    defaultsManager = [(SMInitiatorCacheManager *)self defaultsManager];
    platform = [(SMInitiatorCacheManager *)self platform];
    appDeletionManager = [(SMInitiatorCacheManager *)self appDeletionManager];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __68__SMInitiatorCacheManager__checkInitiatorEligibilityWithCompletion___block_invoke;
    v16[3] = &unk_2788CCDF0;
    objc_copyWeak(&v18, location);
    v17 = completionCopy;
    [SMInitiatorEligibility checkInitiatorEligibilityWithQueue:initiatorEligibilityQueue authorizationManager:authorizationManager effectivePairedDevice:effectivePairedDevice handoffType:0 defaultsManager:defaultsManager platform:platform appDeletionManager:appDeletionManager handler:v16];

    objc_destroyWeak(&v18);
    objc_destroyWeak(location);
  }

  else
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      LOWORD(location[0]) = 0;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: completion", location, 2u);
    }
  }
}

void __68__SMInitiatorCacheManager__checkInitiatorEligibilityWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v19[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = [WeakRetained queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __68__SMInitiatorCacheManager__checkInitiatorEligibilityWithCompletion___block_invoke_2;
    block[3] = &unk_2788C6940;
    v14 = v7;
    v17 = a2;
    v16 = *(a1 + 32);
    v15 = v5;
    dispatch_async(v8, block);

    v9 = v14;
  }

  else
  {
    v10 = objc_alloc(MEMORY[0x277CCA9B8]);
    v11 = *MEMORY[0x277D4ACD0];
    v18 = *MEMORY[0x277CCA450];
    v19[0] = @"SMInitiatorCacheManger was destroyed before eligibility check";
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    v9 = [v10 initWithDomain:v11 code:24 userInfo:v12];

    (*(*(a1 + 32) + 16))();
  }
}

uint64_t __68__SMInitiatorCacheManager__checkInitiatorEligibilityWithCompletion___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setInitiatorEligibilityQueue:0];
  [*(a1 + 32) setInitiatorEligibility:*(a1 + 56)];
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

- (void)_checkConversationEligibilityWithCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    objc_initWeak(location, self);
    v5 = objc_alloc(MEMORY[0x277D4AAC0]);
    queue = [(SMInitiatorCacheManager *)self queue];
    v7 = [v5 initWithQueue:queue];

    sessionManagerState = [(SMInitiatorCacheManager *)self sessionManagerState];
    configuration = [sessionManagerState configuration];
    conversation = [configuration conversation];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __71__SMInitiatorCacheManager__checkConversationEligibilityWithCompletion___block_invoke;
    v13[3] = &unk_2788CCE18;
    v11 = v7;
    v14 = v11;
    objc_copyWeak(&v16, location);
    v15 = completionCopy;
    [v11 checkConversationEligibility:conversation handler:v13];

    objc_destroyWeak(&v16);
    objc_destroyWeak(location);
  }

  else
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      LOWORD(location[0]) = 0;
      _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: completion", location, 2u);
    }
  }
}

void __71__SMInitiatorCacheManager__checkConversationEligibilityWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained setReceiverEligibility:a2];
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v8 = objc_alloc(MEMORY[0x277CCA9B8]);
    v9 = *MEMORY[0x277D4ACD0];
    v12 = *MEMORY[0x277CCA450];
    v13[0] = @"SMInitiatorCacheManger was destroyed before eligibility check";
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    v11 = [v8 initWithDomain:v9 code:24 userInfo:v10];

    (*(*(a1 + 40) + 16))();
  }
}

- (void)onSessionStateChanged:(id)changed forActiveDevice:(BOOL)device
{
  deviceCopy = device;
  v160 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  if (changedCopy)
  {
    v131 = deviceCopy;
    v134 = dispatch_group_create();
    sessionManagerState = [(SMInitiatorCacheManager *)self sessionManagerState];
    [(SMInitiatorCacheManager *)self setSessionManagerState:changedCopy];
    configuration = [sessionManagerState configuration];
    conversation = [configuration conversation];

    configuration2 = [changedCopy configuration];
    conversation2 = [configuration2 conversation];

    v12 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      sessionUUID = [(SMInitiatorCacheManager *)self sessionUUID];
      v14 = objc_opt_class();
      NSStringFromClass(v14);
      v15 = v129 = conversation;
      v16 = NSStringFromSelector(a2);
      v17 = [MEMORY[0x277D4ABB0] convertSessionStateToString:{objc_msgSend(sessionManagerState, "sessionState")}];
      v18 = [MEMORY[0x277D4ABB0] convertSessionStateToString:{objc_msgSend(changedCopy, "sessionState")}];
      *buf = 138413570;
      v149 = sessionUUID;
      v150 = 2112;
      v151 = v15;
      v152 = 2112;
      v153 = v16;
      v154 = 2112;
      v155 = v17;
      v156 = 2112;
      v157 = v18;
      v158 = 1024;
      v159 = sessionManagerState == 0;
      _os_log_impl(&dword_2304B3000, v12, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Initiator,sessionID:%@,%@,%@,from: %@ to: %@ onBoot: %d", buf, 0x3Au);

      conversation = v129;
    }

    initiatorContact = [(SMInitiatorCacheManager *)self initiatorContact];
    earliestActiveDeviceIdentifier = [initiatorContact earliestActiveDeviceIdentifier];
    activeDeviceIdentifier = earliestActiveDeviceIdentifier;
    if (!earliestActiveDeviceIdentifier)
    {
      activeDeviceIdentifier = [changedCopy activeDeviceIdentifier];
    }

    initiatorContact2 = [(SMInitiatorCacheManager *)self initiatorContact];
    [initiatorContact2 setEarliestActiveDeviceIdentifier:activeDeviceIdentifier];

    v23 = v134;
    if (!earliestActiveDeviceIdentifier)
    {
    }

    activeDeviceIdentifier2 = [changedCopy activeDeviceIdentifier];
    initiatorContact3 = [(SMInitiatorCacheManager *)self initiatorContact];
    [initiatorContact3 setLatestActiveDeviceIdentifier:activeDeviceIdentifier2];

    v26 = &off_230AFD000;
    if (!v131)
    {
      if (sessionManagerState && ([sessionManagerState isEndSessionState] & 1) == 0 && objc_msgSend(changedCopy, "isEndSessionState"))
      {
        [(SMInitiatorCacheManager *)self _transitionToNotActiveState:0];
        [(SMInitiatorCacheManager *)self submitCAMetricInitiatorSession];
      }

      goto LABEL_87;
    }

    if ([sessionManagerState sessionState] != 11 || objc_msgSend(changedCopy, "sessionState") != 2)
    {
      if (([sessionManagerState sessionState] == 2 || objc_msgSend(sessionManagerState, "sessionState") == 9 || objc_msgSend(sessionManagerState, "sessionState") == 7 || objc_msgSend(sessionManagerState, "sessionState") == 14) && objc_msgSend(changedCopy, "sessionState") == 4)
      {
        v39 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          sessionUUID2 = [(SMInitiatorCacheManager *)self sessionUUID];
          v41 = objc_opt_class();
          v42 = NSStringFromClass(v41);
          v43 = NSStringFromSelector(a2);
          *buf = 138412802;
          v149 = sessionUUID2;
          v150 = 2112;
          v151 = v42;
          v152 = 2112;
          v153 = v43;
          _os_log_impl(&dword_2304B3000, v39, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Initiator,sessionID:%@,%@,%@,cache released", buf, 0x20u);

          v26 = &off_230AFD000;
        }

        [(SMInitiatorCacheManager *)self _transitionToCacheReleaseStateForIsSecondarySOSTrigger:0];
      }

      else if (sessionManagerState && ([sessionManagerState isEndSessionState] & 1) == 0 && objc_msgSend(changedCopy, "isEndSessionState"))
      {
        if ([sessionManagerState isActiveState])
        {
          v44 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
          if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
          {
            sessionUUID3 = [(SMInitiatorCacheManager *)self sessionUUID];
            v46 = objc_opt_class();
            v47 = NSStringFromClass(v46);
            v48 = NSStringFromSelector(a2);
            *buf = 138412802;
            v149 = sessionUUID3;
            v150 = 2112;
            v151 = v47;
            v152 = 2112;
            v153 = v48;
            _os_log_impl(&dword_2304B3000, v44, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Initiator,sessionID:%@,%@,%@,session has ended", buf, 0x20u);

            v26 = &off_230AFD000;
          }

          [(SMInitiatorCacheManager *)self _deleteActiveSessionDetails:2];
          [(SMInitiatorCacheManager *)self submitCAMetricInitiatorSession];
          [(SMInitiatorCacheManager *)self submitPowerTelemetryMetricForEvent:2];
        }

        else if ([(SMInitiatorCacheManager *)self initializationInProgress]&& ![(SMInitiatorCacheManager *)self initializationCompletionCalled])
        {
          v109 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
          if (os_log_type_enabled(v109, OS_LOG_TYPE_DEFAULT))
          {
            sessionUUID4 = [(SMInitiatorCacheManager *)self sessionUUID];
            v111 = objc_opt_class();
            v112 = NSStringFromClass(v111);
            v113 = NSStringFromSelector(a2);
            *buf = 138412802;
            v149 = sessionUUID4;
            v150 = 2112;
            v151 = v112;
            v152 = 2112;
            v153 = v113;
            _os_log_impl(&dword_2304B3000, v109, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Initiator,sessionID:%@,%@,%@,session was aborted during initialization", buf, 0x20u);
          }

          [(SMInitiatorCacheManager *)self setInitializationCompletionCalled:1];
          [(SMInitiatorCacheManager *)self setInitializationWasAborted:1];
          v114 = objc_alloc(MEMORY[0x277CCA9B8]);
          v115 = *MEMORY[0x277D4ACD0];
          v146 = *MEMORY[0x277CCA450];
          v116 = [MEMORY[0x277CCACA8] stringWithFormat:@"Initialization was canceled"];
          v147 = v116;
          v117 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v147 forKeys:&v146 count:1];
          v118 = [v114 initWithDomain:v115 code:24 userInfo:v117];

          initializationCompletion = [(SMInitiatorCacheManager *)self initializationCompletion];
          (initializationCompletion)[2](initializationCompletion, 0, 0, 0, 0, 0, 0, v118);

          [(SMInitiatorCacheManager *)self setInitializationCompletion:0];
          v26 = &off_230AFD000;
        }

        else
        {
          v97 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
          if (os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT))
          {
            sessionUUID5 = [(SMInitiatorCacheManager *)self sessionUUID];
            v99 = objc_opt_class();
            v100 = NSStringFromClass(v99);
            v101 = NSStringFromSelector(a2);
            *buf = 138412802;
            v149 = sessionUUID5;
            v150 = 2112;
            v151 = v100;
            v152 = 2112;
            v153 = v101;
            _os_log_impl(&dword_2304B3000, v97, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Initiator,sessionID:%@,%@,%@,session was aborted", buf, 0x20u);

            v26 = &off_230AFD000;
          }
        }

        [(SMInitiatorCacheManager *)self _transitionToNotActiveState:1];
      }

      else
      {
        sessionState = [sessionManagerState sessionState];
        if (sessionState != [changedCopy sessionState] || (objc_msgSend(changedCopy, "isEndSessionState") & 1) != 0 || +[SMMessagingUtilities handlesInConversation1:canonicallyEqualsHandlesInConversation2:](SMMessagingUtilities, "handlesInConversation1:canonicallyEqualsHandlesInConversation2:", conversation2, conversation))
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v50 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
            if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
            {
              sessionUUID6 = [(SMInitiatorCacheManager *)self sessionUUID];
              v52 = objc_opt_class();
              v53 = NSStringFromClass(v52);
              v54 = NSStringFromSelector(a2);
              *buf = 138412802;
              v149 = sessionUUID6;
              v150 = 2112;
              v151 = v53;
              v152 = 2112;
              v153 = v54;
              _os_log_impl(&dword_2304B3000, v50, OS_LOG_TYPE_INFO, "#SafetyCache,Initiator,sessionID:%@,%@,%@,noop", buf, 0x20u);

              v26 = &off_230AFD000;
            }
          }
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v63 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
            if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
            {
              sessionUUID7 = [(SMInitiatorCacheManager *)self sessionUUID];
              v65 = objc_opt_class();
              v66 = NSStringFromClass(v65);
              v67 = NSStringFromSelector(a2);
              *buf = 138412802;
              v149 = sessionUUID7;
              v150 = 2112;
              v151 = v66;
              v152 = 2112;
              v153 = v67;
              _os_log_impl(&dword_2304B3000, v63, OS_LOG_TYPE_INFO, "#SafetyCache,Initiator,sessionID:%@,%@,%@,self state transition with change in conversation handles", buf, 0x20u);
            }
          }

          v130 = conversation;
          v133 = conversation2;
          v68 = MEMORY[0x277CBEB58];
          v128 = sessionManagerState;
          configuration3 = [sessionManagerState configuration];
          conversation3 = [configuration3 conversation];
          receiverPrimaryHandles = [conversation3 receiverPrimaryHandles];
          v72 = [v68 setWithArray:receiverPrimaryHandles];

          v73 = MEMORY[0x277CBEB98];
          configuration4 = [changedCopy configuration];
          conversation4 = [configuration4 conversation];
          receiverPrimaryHandles2 = [conversation4 receiverPrimaryHandles];
          v77 = [v73 setWithArray:receiverPrimaryHandles2];

          v127 = v77;
          [v72 minusSet:v77];
          v78 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v72, "count")}];
          v140 = 0u;
          v141 = 0u;
          v142 = 0u;
          v143 = 0u;
          v79 = v72;
          v80 = [v79 countByEnumeratingWithState:&v140 objects:v145 count:16];
          if (v80)
          {
            v81 = v80;
            v82 = *v141;
            v83 = MEMORY[0x277CBEBF8];
            do
            {
              for (i = 0; i != v81; ++i)
              {
                if (*v141 != v82)
                {
                  objc_enumerationMutation(v79);
                }

                v85 = [objc_alloc(MEMORY[0x277D4AAE8]) initWithPrimaryHandle:*(*(&v140 + 1) + 8 * i) secondaryHandles:v83];
                [v78 addObject:v85];
              }

              v81 = [v79 countByEnumeratingWithState:&v140 objects:v145 count:16];
            }

            while (v81);
          }

          v86 = objc_alloc(MEMORY[0x277D4AA98]);
          v87 = [v78 copy];
          v88 = [v86 initWithReceiverHandles:v87 identifier:0 displayName:0];

          LODWORD(v86) = [(SMInitiatorCacheManager *)self _isKeyReleaseScheduled];
          v89 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
          if (v86)
          {
            v90 = v134;
            conversation = v130;
            v26 = &off_230AFD000;
            if (v89)
            {
              v91 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
              if (os_log_type_enabled(v91, OS_LOG_TYPE_INFO))
              {
                sessionUUID8 = [(SMInitiatorCacheManager *)self sessionUUID];
                v93 = objc_opt_class();
                v125 = NSStringFromClass(v93);
                v94 = NSStringFromSelector(a2);
                *buf = 138412802;
                v149 = sessionUUID8;
                v150 = 2112;
                v151 = v125;
                v152 = 2112;
                v153 = v94;
                v95 = v94;
                _os_log_impl(&dword_2304B3000, v91, OS_LOG_TYPE_INFO, "#SafetyCache,Initiator,sessionID:%@,%@,%@,rescheduling key release with new recipients", buf, 0x20u);

                v26 = &off_230AFD000;
              }
            }

            [(SMInitiatorCacheManager *)self _cancelScheduledKeyReleaseForConversation:v88];
            v96 = [(SMInitiatorCacheManager *)self _scheduleKeyReleaseWithCompletion:&__block_literal_global_82];
          }

          else
          {
            v90 = v134;
            conversation = v130;
            v26 = &off_230AFD000;
            if (v89)
            {
              v102 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
              if (os_log_type_enabled(v102, OS_LOG_TYPE_INFO))
              {
                sessionUUID9 = [(SMInitiatorCacheManager *)self sessionUUID];
                v104 = objc_opt_class();
                v126 = NSStringFromClass(v104);
                v105 = NSStringFromSelector(a2);
                *buf = 138412802;
                v149 = sessionUUID9;
                v150 = 2112;
                v151 = v126;
                v152 = 2112;
                v153 = v105;
                v106 = v105;
                _os_log_impl(&dword_2304B3000, v102, OS_LOG_TYPE_INFO, "#SafetyCache,Initiator,sessionID:%@,%@,%@,no key release was scheduled to begin with", buf, 0x20u);

                v26 = &off_230AFD000;
              }
            }
          }

          dispatch_group_enter(v90);
          activeSessionZone = [(SMInitiatorCacheManager *)self activeSessionZone];
          v108 = [[SMCloudKitQosOptions alloc] initWithDefaultQos:1 masqueradeBundleID:0 xpcActivity:0];
          v137[0] = MEMORY[0x277D85DD0];
          v137[1] = *(v26 + 327);
          v137[2] = __65__SMInitiatorCacheManager_onSessionStateChanged_forActiveDevice___block_invoke_299;
          v137[3] = &unk_2788CCE40;
          v137[4] = self;
          v139 = a2;
          v138 = v90;
          [activeSessionZone removeShareParticipantsInConversation:v88 qos:v108 withCompletion:v137];

          v23 = v90;
          sessionManagerState = v128;
          conversation2 = v133;
        }
      }

      goto LABEL_87;
    }

    v27 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      sessionUUID10 = [(SMInitiatorCacheManager *)self sessionUUID];
      v29 = objc_opt_class();
      v30 = NSStringFromClass(v29);
      v31 = NSStringFromSelector(a2);
      *buf = 138412802;
      v149 = sessionUUID10;
      v150 = 2112;
      v151 = v30;
      v152 = 2112;
      v153 = v31;
      _os_log_impl(&dword_2304B3000, v27, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Initiator,sessionID:%@,%@,%@,session started", buf, 0x20u);

      v26 = &off_230AFD000;
    }

    if ([(SMInitiatorCacheManager *)self _shouldPerformFirstCacheUpdateCKOperation])
    {
      v32 = v26;
      v132 = conversation2;
      v33 = [[SMCloudKitQosOptions alloc] initWithDefaultQos:1 masqueradeBundleID:0 xpcActivity:0];
      v34 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorAnalytics);
      sessionUUID11 = [(SMInitiatorCacheManager *)self sessionUUID];
      v36 = os_signpost_id_make_with_pointer(v34, sessionUUID11);

      v37 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorAnalytics);
      v38 = v37;
      if (v36 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v37))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_2304B3000, v38, OS_SIGNPOST_INTERVAL_BEGIN, v36, "SMSessionCacheUploadWriteActiveSessionDetailsCKLatency", " enableTelemetry=YES ", buf, 2u);
      }

      v144[0] = MEMORY[0x277D85DD0];
      v26 = v32;
      v144[1] = *(v32 + 327);
      v144[2] = __65__SMInitiatorCacheManager_onSessionStateChanged_forActiveDevice___block_invoke;
      v144[3] = &unk_2788C4DB0;
      v144[4] = self;
      v144[5] = v36;
      v144[6] = a2;
      [(SMInitiatorCacheManager *)self _writeActiveSessionDetails:10 qos:v33 completion:v144];
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
LABEL_50:
        sessionManagerState2 = [(SMInitiatorCacheManager *)self sessionManagerState];
        configuration5 = [sessionManagerState2 configuration];
        sessionType = [configuration5 sessionType];

        if (sessionType == 4)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
          {
            v62 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
            if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
            {
              sessionUUID12 = [(SMInitiatorCacheManager *)self sessionUUID];
              v122 = objc_opt_class();
              v123 = NSStringFromClass(v122);
              v124 = NSStringFromSelector(a2);
              *buf = 138412802;
              v149 = sessionUUID12;
              v150 = 2112;
              v151 = v123;
              v152 = 2112;
              v153 = v124;
              _os_log_debug_impl(&dword_2304B3000, v62, OS_LOG_TYPE_DEBUG, "#SafetyCache,Initiator,sessionID:%@,%@,%@,fetching current workout snapshot", buf, 0x20u);

              v26 = &off_230AFD000;
            }
          }

          [(SMInitiatorCacheManager *)self _fetchWorkoutSnapshotAndUpdateWorkoutEvents];
        }

LABEL_87:
        queue = [(SMInitiatorCacheManager *)self queue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = *(v26 + 327);
        block[2] = __65__SMInitiatorCacheManager_onSessionStateChanged_forActiveDevice___block_invoke_301;
        block[3] = &unk_2788C4EA0;
        block[4] = self;
        dispatch_group_notify(v23, queue, block);

        [(SMInitiatorCacheManager *)self _updateInitiatorContactInStore];
        goto LABEL_88;
      }

      v132 = conversation2;
      v33 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(&v33->super, OS_LOG_TYPE_INFO))
      {
        sessionUUID13 = [(SMInitiatorCacheManager *)self sessionUUID];
        v56 = objc_opt_class();
        v57 = NSStringFromClass(v56);
        v58 = NSStringFromSelector(a2);
        *buf = 138413058;
        v149 = sessionUUID13;
        v150 = 2112;
        v151 = v57;
        v152 = 2112;
        v153 = v58;
        v154 = 2112;
        v155 = @"NO";
        _os_log_impl(&dword_2304B3000, &v33->super, OS_LOG_TYPE_INFO, "#SafetyCache,Initiator,sessionID:%@,%@,%@, Active Session Details write to CK was skipped because session should soon handoff, shouldWriteActiveSessionDetails, %@", buf, 0x2Au);
      }
    }

    conversation2 = v132;
    v23 = v134;
    goto LABEL_50;
  }

  v23 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2304B3000, v23, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: newState", buf, 2u);
  }

LABEL_88:
}

void __65__SMInitiatorCacheManager_onSessionStateChanged_forActiveDevice___block_invoke(uint64_t a1, int a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorAnalytics);
  v7 = v6;
  v8 = *(a1 + 40);
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    LOWORD(v19) = 0;
    _os_signpost_emit_with_name_impl(&dword_2304B3000, v7, OS_SIGNPOST_INTERVAL_END, v8, "SMSessionCacheUploadWriteActiveSessionDetailsCKLatency", " enableTelemetry=YES ", &v19, 2u);
  }

  if (a2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = [*(a1 + 32) sessionUUID];
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        v13 = NSStringFromSelector(*(a1 + 48));
        v19 = 138412802;
        v20 = v10;
        v21 = 2112;
        v22 = v12;
        v23 = 2112;
        v24 = v13;
        _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "#SafetyCache,Initiator,sessionID:%@,%@,%@,Active Session Details stored, calling _transitionToActiveState", &v19, 0x20u);
      }
    }

    [*(a1 + 32) _transitionToActiveState];
    [*(a1 + 32) submitPowerTelemetryMetricForEvent:1];
  }

  else
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = [*(a1 + 32) sessionUUID];
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      v18 = NSStringFromSelector(*(a1 + 48));
      v19 = 138413058;
      v20 = v15;
      v21 = 2112;
      v22 = v17;
      v23 = 2112;
      v24 = v18;
      v25 = 2112;
      v26 = v5;
      _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, "#SafetyCache,Initiator,sessionID:%@,%@,%@,failed to write active session details with error %@", &v19, 0x2Au);
    }
  }
}

void __65__SMInitiatorCacheManager_onSessionStateChanged_forActiveDevice___block_invoke_299(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [*(a1 + 32) sessionUUID];
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = NSStringFromSelector(*(a1 + 48));
      v12 = [v5 participants];
      v18 = 138413058;
      v19 = v8;
      v20 = 2112;
      v21 = v10;
      v22 = 2112;
      v23 = v11;
      v24 = 2112;
      v25 = v12;
      _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "#SafetyCache,Initiator,sessionID:%@,%@,%@,remaining participants,%@", &v18, 0x2Au);
    }
  }

  if (v6)
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [*(a1 + 32) sessionUUID];
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      v17 = NSStringFromSelector(*(a1 + 48));
      v18 = 138413314;
      v19 = v14;
      v20 = 2112;
      v21 = v16;
      v22 = 2112;
      v23 = v17;
      v24 = 2112;
      v25 = v5;
      v26 = 2112;
      v27 = v6;
      _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "#SafetyCache,Initiator,sessionID:%@,%@,%@,failed to remove participants from share,%@,error,%@", &v18, 0x34u);
    }
  }

  dispatch_group_leave(*(a1 + 40));
}

- (void)onSecondarySOSTriggerWithState:(id)state forActiveDevice:(BOOL)device
{
  v33 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  v8 = stateCopy;
  if (!stateCopy)
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v25) = 0;
      _os_log_error_impl(&dword_2304B3000, v16, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: newState", &v25, 2u);
    }

    goto LABEL_14;
  }

  if (!device)
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
LABEL_14:

      goto LABEL_15;
    }

    sessionUUID = [(SMInitiatorCacheManager *)self sessionUUID];
    v24 = objc_opt_class();
    v19 = NSStringFromClass(v24);
    v20 = NSStringFromSelector(a2);
    v25 = 138413058;
    v26 = sessionUUID;
    v27 = 2112;
    v28 = v19;
    v29 = 2112;
    v30 = v20;
    v31 = 2112;
    v32 = v8;
    v21 = "#SafetyCache,Initiator,sessionID:%@,%@,%@,not active device transition state, %@";
    v22 = v16;
    v23 = 42;
LABEL_13:
    _os_log_impl(&dword_2304B3000, v22, OS_LOG_TYPE_DEFAULT, v21, &v25, v23);

    goto LABEL_14;
  }

  if ([stateCopy sessionState] == 4)
  {
    v9 = MEMORY[0x277D4ABC8];
    monitorContext = [v8 monitorContext];
    LODWORD(v9) = [v9 isSOSTriggerCategory:{objc_msgSend(monitorContext, "triggerCategory")}];

    if (v9)
    {
      v11 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        sessionUUID2 = [(SMInitiatorCacheManager *)self sessionUUID];
        v13 = objc_opt_class();
        v14 = NSStringFromClass(v13);
        v15 = NSStringFromSelector(a2);
        v25 = 138412802;
        v26 = sessionUUID2;
        v27 = 2112;
        v28 = v14;
        v29 = 2112;
        v30 = v15;
        _os_log_impl(&dword_2304B3000, v11, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Initiator,sessionID:%@,%@,%@,secondary SOS trigger received", &v25, 0x20u);
      }

      [(SMInitiatorCacheManager *)self _transitionToCacheReleaseStateForIsSecondarySOSTrigger:1];
      v16 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_14;
      }

      sessionUUID = [(SMInitiatorCacheManager *)self sessionUUID];
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      v20 = NSStringFromSelector(a2);
      v25 = 138412802;
      v26 = sessionUUID;
      v27 = 2112;
      v28 = v19;
      v29 = 2112;
      v30 = v20;
      v21 = "#SafetyCache,Initiator,sessionID:%@,%@,%@,cache released for secondary SOS Trigger";
      v22 = v16;
      v23 = 32;
      goto LABEL_13;
    }
  }

LABEL_15:
}

- (void)onSessionResumedWithState:(id)state forActiveDevice:(BOOL)device
{
  v40 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  if (stateCopy)
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      sessionUUID = [(SMInitiatorCacheManager *)self sessionUUID];
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = NSStringFromSelector(a2);
      v13 = [MEMORY[0x277D4ABB0] convertSessionStateToString:{objc_msgSend(stateCopy, "sessionState")}];
      v32 = 138413058;
      v33 = sessionUUID;
      v34 = 2112;
      v35 = v11;
      v36 = 2112;
      v37 = v12;
      v38 = 2112;
      v39 = v13;
      _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Initiator,sessionID:%@,%@,%@,resuming state: %@", &v32, 0x2Au);
    }

    [(SMInitiatorCacheManager *)self setSessionManagerState:stateCopy];
    [(SMInitiatorCacheManager *)self _evaluateAndManagePeriodicCacheUpdate];
    if (device)
    {
      [(SMInitiatorCacheManager *)self _updateScheduledSendFireTimer];
      sessionManagerState = [(SMInitiatorCacheManager *)self sessionManagerState];
      isActiveState = [sessionManagerState isActiveState];

      if (isActiveState)
      {
        [(SMInitiatorCacheManager *)self _transitionToActiveState];
        sessionManagerState2 = [(SMInitiatorCacheManager *)self sessionManagerState];
        if ([sessionManagerState2 sessionState] == 4)
        {
          initiatorContact = [(SMInitiatorCacheManager *)self initiatorContact];
          keyReleaseMessageSendDate = [initiatorContact keyReleaseMessageSendDate];

          if (!keyReleaseMessageSendDate)
          {
            [(SMInitiatorCacheManager *)self _sendKeyReleaseMessageForIsSecondarySOSTrigger:0];
          }
        }

        else
        {
        }

        goto LABEL_16;
      }

      sessionManagerState3 = [(SMInitiatorCacheManager *)self sessionManagerState];
      isEndSessionState = [sessionManagerState3 isEndSessionState];

      if (isEndSessionState)
      {
        [(SMInitiatorCacheManager *)self _transitionToNotActiveState:1];
        goto LABEL_16;
      }

      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        goto LABEL_16;
      }

      v20 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        sessionUUID2 = [(SMInitiatorCacheManager *)self sessionUUID];
        v31 = objc_opt_class();
        v23 = NSStringFromClass(v31);
        v24 = NSStringFromSelector(a2);
        v32 = 138412802;
        v33 = sessionUUID2;
        v34 = 2112;
        v35 = v23;
        v36 = 2112;
        v37 = v24;
        v25 = "#SafetyCache,Initiator,sessionID:%@,%@,%@,noop";
        v26 = v20;
        v27 = OS_LOG_TYPE_INFO;
        v28 = 32;
        goto LABEL_14;
      }
    }

    else
    {
      v20 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        sessionUUID2 = [(SMInitiatorCacheManager *)self sessionUUID];
        v22 = objc_opt_class();
        v23 = NSStringFromClass(v22);
        v24 = NSStringFromSelector(a2);
        v32 = 138413058;
        v33 = sessionUUID2;
        v34 = 2112;
        v35 = v23;
        v36 = 2112;
        v37 = v24;
        v38 = 2112;
        v39 = stateCopy;
        v25 = "#SafetyCache,Initiator,sessionID:%@,%@,%@,not active device transition state, %@";
        v26 = v20;
        v27 = OS_LOG_TYPE_DEFAULT;
        v28 = 42;
LABEL_14:
        _os_log_impl(&dword_2304B3000, v26, v27, v25, &v32, v28);
      }
    }

    goto LABEL_16;
  }

  v19 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v32) = 0;
    _os_log_error_impl(&dword_2304B3000, v19, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: state", &v32, 2u);
  }

LABEL_16:
}

- (void)onBecomingActiveDevice:(id)device
{
  v45 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  if ([deviceCopy isActiveState])
  {
    [(SMInitiatorCacheManager *)self setSessionManagerState:deviceCopy];
    safetyCacheKey = [deviceCopy safetyCacheKey];
    initiatorContact = [(SMInitiatorCacheManager *)self initiatorContact];
    [initiatorContact setSafetyCacheKey:safetyCacheKey];

    allowReadToken = [deviceCopy allowReadToken];
    initiatorContact2 = [(SMInitiatorCacheManager *)self initiatorContact];
    [initiatorContact2 setAllowReadToken:allowReadToken];

    scheduledSendMessageDate = [deviceCopy scheduledSendMessageDate];
    initiatorContact3 = [(SMInitiatorCacheManager *)self initiatorContact];
    [initiatorContact3 setScheduledSendExpiryDate:scheduledSendMessageDate];

    scheduledSendMessageGUID = [deviceCopy scheduledSendMessageGUID];
    initiatorContact4 = [(SMInitiatorCacheManager *)self initiatorContact];
    [initiatorContact4 setScheduleSendMessageGUID:scheduledSendMessageGUID];

    configuration = [deviceCopy configuration];
    destination = [configuration destination];
    destinationMapItem = [destination destinationMapItem];
    initiatorContact5 = [(SMInitiatorCacheManager *)self initiatorContact];
    [initiatorContact5 setDestinationMapItem:destinationMapItem];

    sessionManagerState = [(SMInitiatorCacheManager *)self sessionManagerState];
    sessionState = [sessionManagerState sessionState];

    if (sessionState == 4)
    {
      sessionStateTransitionDate = [deviceCopy sessionStateTransitionDate];
      initiatorContact6 = [(SMInitiatorCacheManager *)self initiatorContact];
      [initiatorContact6 setKeyReleaseMessageSendDate:sessionStateTransitionDate];
    }

    initiatorContact7 = [(SMInitiatorCacheManager *)self initiatorContact];
    [initiatorContact7 setNumberOfHandoffBecomingActive:{objc_msgSend(initiatorContact7, "numberOfHandoffBecomingActive") + 1}];

    [(SMInitiatorCacheManager *)self _updateInitiatorContactInStore];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v23 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        sessionUUID = [(SMInitiatorCacheManager *)self sessionUUID];
        v25 = objc_opt_class();
        v26 = NSStringFromClass(v25);
        v27 = NSStringFromSelector(a2);
        *buf = 138413058;
        v38 = sessionUUID;
        v39 = 2112;
        v40 = v26;
        v41 = 2112;
        v42 = v27;
        v43 = 2112;
        v44 = deviceCopy;
        _os_log_impl(&dword_2304B3000, v23, OS_LOG_TYPE_INFO, "#SafetyCache,Initiator,sessionID:%@,%@,%@,becoming active %@", buf, 0x2Au);
      }
    }

    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __50__SMInitiatorCacheManager_onBecomingActiveDevice___block_invoke;
    v36[3] = &unk_2788C52E8;
    v36[4] = self;
    v36[5] = a2;
    [(SMInitiatorCacheManager *)self _periodicCacheUpdateWithCompletion:v36];
  }

  [(SMInitiatorCacheManager *)self _evaluateAndManagePeriodicCacheUpdate];
  sessionManagerState2 = [(SMInitiatorCacheManager *)self sessionManagerState];
  configuration2 = [sessionManagerState2 configuration];
  sessionType = [configuration2 sessionType];

  if (sessionType == 4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v31 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        sessionUUID2 = [(SMInitiatorCacheManager *)self sessionUUID];
        v33 = objc_opt_class();
        v34 = NSStringFromClass(v33);
        v35 = NSStringFromSelector(a2);
        *buf = 138412802;
        v38 = sessionUUID2;
        v39 = 2112;
        v40 = v34;
        v41 = 2112;
        v42 = v35;
        _os_log_debug_impl(&dword_2304B3000, v31, OS_LOG_TYPE_DEBUG, "#SafetyCache,Initiator,sessionID:%@,%@,%@,fetching current workout snapshot", buf, 0x20u);
      }
    }

    [(SMInitiatorCacheManager *)self _fetchWorkoutSnapshotAndUpdateWorkoutEvents];
  }
}

void __50__SMInitiatorCacheManager_onBecomingActiveDevice___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) sessionUUID];
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = NSStringFromSelector(*(a1 + 40));
    v7 = 138412802;
    v8 = v3;
    v9 = 2112;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Initiator,sessionID:%@,%@,%@,completed initial cache upload", &v7, 0x20u);
  }
}

- (void)onBecomingNonActiveDevice:(id)device
{
  [(SMInitiatorCacheManager *)self _evaluateAndManagePeriodicCacheUpdate];
  initiatorContact = [(SMInitiatorCacheManager *)self initiatorContact];
  [initiatorContact setNumberOfHandoffBecomingNonActive:{objc_msgSend(initiatorContact, "numberOfHandoffBecomingNonActive") + 1}];

  [(SMInitiatorCacheManager *)self _updateInitiatorContactInStore];
}

- (void)cleanupNonActiveSession
{
  initiatorContact = [(SMInitiatorCacheManager *)self initiatorContact];
  shouldBeCleanedUpDate = [initiatorContact shouldBeCleanedUpDate];

  if (!shouldBeCleanedUpDate)
  {
    isActiveDevice = [(SMInitiatorCacheManager *)self isActiveDevice];

    [(SMInitiatorCacheManager *)self _transitionToNotActiveState:isActiveDevice];
  }
}

- (void)_transitionToActiveState
{
  v71 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      sessionUUID = [(SMInitiatorCacheManager *)self sessionUUID];
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = NSStringFromSelector(a2);
      v9 = MEMORY[0x277D4AB78];
      sessionManagerState = [(SMInitiatorCacheManager *)self sessionManagerState];
      configuration = [sessionManagerState configuration];
      v12 = [v9 sessionTypeToString:{objc_msgSend(configuration, "sessionType")}];
      *buf = 138413058;
      v60 = sessionUUID;
      v61 = 2112;
      v62 = v7;
      v63 = 2112;
      v64 = v8;
      v65 = 2112;
      v66 = v12;
      _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "#SafetyCache,Initiator,sessionID:%@,%@,%@,transitionToActiveState type %@", buf, 0x2Au);
    }
  }

  initiatorContact = [(SMInitiatorCacheManager *)self initiatorContact];
  destinationMapItem = [initiatorContact destinationMapItem];
  v15 = destinationMapItem == 0;
  if (destinationMapItem)
  {
    configuration3 = destinationMapItem;
LABEL_9:

    goto LABEL_10;
  }

  sessionManagerState2 = [(SMInitiatorCacheManager *)self sessionManagerState];
  configuration2 = [sessionManagerState2 configuration];
  destination = [configuration2 destination];

  if (destination)
  {
    initiatorContact = [(SMInitiatorCacheManager *)self sessionManagerState];
    configuration3 = [initiatorContact configuration];
    destination2 = [configuration3 destination];
    destinationMapItem2 = [destination2 destinationMapItem];
    initiatorContact2 = [(SMInitiatorCacheManager *)self initiatorContact];
    [initiatorContact2 setDestinationMapItem:destinationMapItem2];

    goto LABEL_9;
  }

  v15 = 0;
LABEL_10:
  initiatorContact3 = [(SMInitiatorCacheManager *)self initiatorContact];
  startingLocation = [initiatorContact3 startingLocation];
  if ([startingLocation isValid])
  {
  }

  else
  {
    v25 = MEMORY[0x277D4AB28];
    sessionManagerState3 = [(SMInitiatorCacheManager *)self sessionManagerState];
    location = [sessionManagerState3 location];
    LODWORD(v25) = [v25 isCLLocationValid:location];

    if (v25)
    {
      v28 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        sessionUUID2 = [(SMInitiatorCacheManager *)self sessionUUID];
        v30 = objc_opt_class();
        v31 = NSStringFromClass(v30);
        NSStringFromSelector(a2);
        v32 = v57 = a2;
        sessionManagerState4 = [(SMInitiatorCacheManager *)self sessionManagerState];
        location2 = [sessionManagerState4 location];
        [location2 coordinate];
        v35 = v34;
        sessionManagerState5 = [(SMInitiatorCacheManager *)self sessionManagerState];
        location3 = [sessionManagerState5 location];
        [location3 coordinate];
        v39 = v38;
        sessionManagerState6 = [(SMInitiatorCacheManager *)self sessionManagerState];
        location4 = [sessionManagerState6 location];
        [location4 horizontalAccuracy];
        *buf = 138413571;
        v60 = sessionUUID2;
        v61 = 2112;
        v62 = v31;
        v63 = 2112;
        v64 = v32;
        v65 = 2053;
        v66 = v35;
        v67 = 2053;
        v68 = v39;
        v69 = 2053;
        v70 = v42;
        _os_log_impl(&dword_2304B3000, v28, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Initiator,sessionID:%@,%@,%@,saving starting location,lat,%{sensitive}.4f,lon,%{sensitive}.4f,hunc,%{sensitive}.1f", buf, 0x3Eu);

        a2 = v57;
      }

      v43 = objc_alloc(MEMORY[0x277D4AB28]);
      sessionManagerState7 = [(SMInitiatorCacheManager *)self sessionManagerState];
      location5 = [sessionManagerState7 location];
      v46 = [v43 initWithCLLocation:location5];
      initiatorContact4 = [(SMInitiatorCacheManager *)self initiatorContact];
      [initiatorContact4 setStartingLocation:v46];

      goto LABEL_17;
    }
  }

  if (v15)
  {
LABEL_17:
    [(SMInitiatorCacheManager *)self _updateInitiatorContactInStore];
  }

  _shouldPerformFirstCacheUpdateCKOperation = [(SMInitiatorCacheManager *)self _shouldPerformFirstCacheUpdateCKOperation];
  initiatorContact5 = [(SMInitiatorCacheManager *)self initiatorContact];
  timeCacheUploadCompletion = [initiatorContact5 timeCacheUploadCompletion];

  if (!timeCacheUploadCompletion && _shouldPerformFirstCacheUpdateCKOperation)
  {
    v51 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
    {
      sessionUUID3 = [(SMInitiatorCacheManager *)self sessionUUID];
      v53 = objc_opt_class();
      v54 = NSStringFromClass(v53);
      v55 = NSStringFromSelector(a2);
      *buf = 138412802;
      v60 = sessionUUID3;
      v61 = 2112;
      v62 = v54;
      v63 = 2112;
      v64 = v55;
      _os_log_impl(&dword_2304B3000, v51, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Initiator,sessionID:%@,%@,%@,starting initial cache upload", buf, 0x20u);
    }

    v58[0] = MEMORY[0x277D85DD0];
    v58[1] = 3221225472;
    v58[2] = __51__SMInitiatorCacheManager__transitionToActiveState__block_invoke;
    v58[3] = &unk_2788C52E8;
    v58[4] = self;
    v58[5] = a2;
    [(SMInitiatorCacheManager *)self _periodicCacheUpdateWithCompletion:v58];
  }
}

void __51__SMInitiatorCacheManager__transitionToActiveState__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) sessionUUID];
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = NSStringFromSelector(*(a1 + 40));
    v7 = 138412802;
    v8 = v3;
    v9 = 2112;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Initiator,sessionID:%@,%@,%@,completed initial cache upload", &v7, 0x20u);
  }
}

- (void)_transitionToCacheReleaseStateForIsSecondarySOSTrigger:(BOOL)trigger
{
  triggerCopy = trigger;
  v18 = *MEMORY[0x277D85DE8];
  v6 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    sessionUUID = [(SMInitiatorCacheManager *)self sessionUUID];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = NSStringFromSelector(a2);
    *buf = 138412802;
    v13 = sessionUUID;
    v14 = 2112;
    v15 = v9;
    v16 = 2112;
    v17 = v10;
    _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Initiator,sessionID:%@,%@,%@,releasing cache", buf, 0x20u);
  }

  [(SMInitiatorCacheManager *)self _sendKeyReleaseMessageForIsSecondarySOSTrigger:triggerCopy];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __82__SMInitiatorCacheManager__transitionToCacheReleaseStateForIsSecondarySOSTrigger___block_invoke;
  v11[3] = &unk_2788C52E8;
  v11[4] = self;
  v11[5] = a2;
  [(SMInitiatorCacheManager *)self _periodicCacheUpdateWithCompletion:v11];
}

void __82__SMInitiatorCacheManager__transitionToCacheReleaseStateForIsSecondarySOSTrigger___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) sessionUUID];
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = NSStringFromSelector(*(a1 + 40));
    v7 = 138412802;
    v8 = v3;
    v9 = 2112;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Initiator,sessionID:%@,%@,%@,updated cache due to cache release", &v7, 0x20u);
  }
}

- (void)_transitionToNotActiveState:(BOOL)state
{
  v53 = *MEMORY[0x277D85DE8];
  v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    sessionUUID = [(SMInitiatorCacheManager *)self sessionUUID];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = NSStringFromSelector(a2);
    *buf = 138412802;
    v44 = sessionUUID;
    v45 = 2112;
    v46 = v8;
    v47 = 2112;
    v48 = v9;
    _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Initiator,sessionID:%@,%@,%@,transitioning session to not active", buf, 0x20u);
  }

  initiatorContact = [(SMInitiatorCacheManager *)self initiatorContact];
  shouldBeCleanedUpDate = [initiatorContact shouldBeCleanedUpDate];

  if (shouldBeCleanedUpDate)
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      sessionUUID2 = [(SMInitiatorCacheManager *)self sessionUUID];
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      v16 = NSStringFromSelector(a2);
      initiatorContact2 = [(SMInitiatorCacheManager *)self initiatorContact];
      shouldBeCleanedUpDate2 = [initiatorContact2 shouldBeCleanedUpDate];
      stringFromDate = [shouldBeCleanedUpDate2 stringFromDate];
      *buf = 138413058;
      v44 = sessionUUID2;
      v45 = 2112;
      v46 = v15;
      v47 = 2112;
      v48 = v16;
      v49 = 2112;
      v50 = *&stringFromDate;
      _os_log_impl(&dword_2304B3000, v12, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Initiator,sessionID:%@,%@,%@,cache cleanup already scheduled for after %@", buf, 0x2Au);
    }

    goto LABEL_19;
  }

  initiatorContact3 = [(SMInitiatorCacheManager *)self initiatorContact];
  keyReleaseMessageSendDate = [initiatorContact3 keyReleaseMessageSendDate];
  if (keyReleaseMessageSendDate)
  {
    v22 = keyReleaseMessageSendDate;
    sessionManagerState = [(SMInitiatorCacheManager *)self sessionManagerState];
    sessionEndReason = [sessionManagerState sessionEndReason];

    if (sessionEndReason == 3)
    {
      defaultsManager = [(SMInitiatorCacheManager *)self defaultsManager];
      v26 = [defaultsManager objectForKey:@"RTDefaultsSafetyCachePersistenceTimeKey" value:&unk_2845A1C58];
      [v26 doubleValue];
      v28 = v27;

      if (v28 != 604800.0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v29 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
        {
          *buf = 136316162;
          v44 = "[SMInitiatorCacheManager _transitionToNotActiveState:]";
          v45 = 2080;
          v46 = "overriding cache persistence interval";
          v47 = 2048;
          v48 = 0x4122750000000000;
          v49 = 2048;
          v50 = v28;
          v51 = 2112;
          v52 = @"RTDefaultsSafetyCachePersistenceTimeKey";
          _os_log_impl(&dword_2304B3000, v29, OS_LOG_TYPE_INFO, "%s, %s, original value, %.2f, overridden value, %.2f, by defaultsKey, %@", buf, 0x34u);
        }
      }

      v30 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:v28];
      initiatorContact4 = [(SMInitiatorCacheManager *)self initiatorContact];
      [initiatorContact4 setShouldBeCleanedUpDate:v30];

      v32 = MEMORY[0x277CCACA8];
      initiatorContact5 = [(SMInitiatorCacheManager *)self initiatorContact];
      shouldBeCleanedUpDate3 = [initiatorContact5 shouldBeCleanedUpDate];
      stringFromDate2 = [shouldBeCleanedUpDate3 stringFromDate];
      v12 = [v32 stringWithFormat:@"at %@", stringFromDate2];

      [(SMInitiatorCacheManager *)self notifyObserversSafetyCacheDidUpdate];
      goto LABEL_16;
    }
  }

  else
  {
  }

  distantPast = [MEMORY[0x277CBEAA8] distantPast];
  initiatorContact6 = [(SMInitiatorCacheManager *)self initiatorContact];
  [initiatorContact6 setShouldBeCleanedUpDate:distantPast];

  v12 = @"now";
LABEL_16:
  v38 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
  {
    sessionUUID3 = [(SMInitiatorCacheManager *)self sessionUUID];
    v40 = objc_opt_class();
    v41 = NSStringFromClass(v40);
    v42 = NSStringFromSelector(a2);
    *buf = 138413058;
    v44 = sessionUUID3;
    v45 = 2112;
    v46 = v41;
    v47 = 2112;
    v48 = v42;
    v49 = 2112;
    v50 = *&v12;
    _os_log_impl(&dword_2304B3000, v38, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Initiator,sessionID:%@,%@,%@,cleanup cache %@", buf, 0x2Au);
  }

  [(SMInitiatorCacheManager *)self _updateInitiatorContactInStore];
LABEL_19:

  [(SMInitiatorCacheManager *)self _cleanUpInitiatorContact];
}

- (void)processSessionStartInfoRequest:(id)request
{
  v86 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  if (!requestCopy)
  {
    v34 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v34, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: sessionStartInfoRequest", buf, 2u);
    }

    goto LABEL_29;
  }

  sessionManagerState = [(SMInitiatorCacheManager *)self sessionManagerState];
  if (!sessionManagerState)
  {
LABEL_15:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v34 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        sessionUUID = [(SMInitiatorCacheManager *)self sessionUUID];
        v36 = objc_opt_class();
        v37 = NSStringFromClass(v36);
        v38 = NSStringFromSelector(a2);
        v39 = MEMORY[0x277D4ABB0];
        sessionManagerState2 = [(SMInitiatorCacheManager *)self sessionManagerState];
        v41 = [v39 convertSessionStateToString:{objc_msgSend(sessionManagerState2, "sessionState")}];
        *buf = 138413058;
        v79 = sessionUUID;
        v80 = 2112;
        v81 = v37;
        v82 = 2112;
        v83 = v38;
        v84 = 2112;
        v85 = v41;
        _os_log_impl(&dword_2304B3000, v34, OS_LOG_TYPE_INFO, "#SafetyCache,Initiator,sessionID:%@,%@,%@,ignore request,state:%@", buf, 0x2Au);
      }

      goto LABEL_29;
    }

    goto LABEL_30;
  }

  sessionManagerState3 = [(SMInitiatorCacheManager *)self sessionManagerState];
  if (([sessionManagerState3 isActiveState] & 1) == 0)
  {

    goto LABEL_15;
  }

  isActiveDevice = [(SMInitiatorCacheManager *)self isActiveDevice];

  if (!isActiveDevice)
  {
    goto LABEL_15;
  }

  sessionID = [requestCopy sessionID];
  sessionManagerState4 = [(SMInitiatorCacheManager *)self sessionManagerState];
  configuration = [sessionManagerState4 configuration];
  sessionID2 = [configuration sessionID];
  v13 = [sessionID isEqual:sessionID2];

  v14 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
  if (v13)
  {
    if (v14)
    {
      v15 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        sessionUUID2 = [(SMInitiatorCacheManager *)self sessionUUID];
        v17 = objc_opt_class();
        v18 = NSStringFromClass(v17);
        v19 = NSStringFromSelector(a2);
        *buf = 138412802;
        v79 = sessionUUID2;
        v80 = 2112;
        v81 = v18;
        v82 = 2112;
        v83 = v19;
        _os_log_impl(&dword_2304B3000, v15, OS_LOG_TYPE_INFO, "#SafetyCache,Initiator,sessionID:%@,%@,%@,preparing SMSessionStartInfoMessage", buf, 0x20u);
      }
    }

    sessionManagerState5 = [(SMInitiatorCacheManager *)self sessionManagerState];
    configuration2 = [sessionManagerState5 configuration];
    sessionType = [configuration2 sessionType];

    LODWORD(sessionManagerState5) = sessionType == 1;
    sessionManagerState6 = [(SMInitiatorCacheManager *)self sessionManagerState];
    v24 = sessionManagerState6;
    if (sessionManagerState5)
    {
      configuration3 = [sessionManagerState6 configuration];
      time = [configuration3 time];
      timeBound = [time timeBound];

      v28 = MEMORY[0x277CBEAA8];
      sessionManagerState7 = [(SMInitiatorCacheManager *)self sessionManagerState];
      configuration4 = [sessionManagerState7 configuration];
      time2 = [configuration4 time];
      timeBound2 = [time2 timeBound];
      coarseEstimatedEndDate = [v28 roundingUpDate:timeBound2 bucketDurationMinute:*MEMORY[0x277D4AC98]];
    }

    else
    {
      timeBound = [sessionManagerState6 estimatedEndDate];

      sessionManagerState7 = [(SMInitiatorCacheManager *)self sessionManagerState];
      coarseEstimatedEndDate = [sessionManagerState7 coarseEstimatedEndDate];
    }

    objc_initWeak(&location, self);
    v46 = objc_opt_class();
    v47 = NSStringFromClass(v46);
    sessionUUID3 = [(SMInitiatorCacheManager *)self sessionUUID];
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __58__SMInitiatorCacheManager_processSessionStartInfoRequest___block_invoke;
    aBlock[3] = &unk_2788CCEE0;
    objc_copyWeak(v76, &location);
    v49 = sessionUUID3;
    v72 = v49;
    v65 = v47;
    v73 = v65;
    v76[1] = a2;
    v34 = timeBound;
    v74 = v34;
    v64 = coarseEstimatedEndDate;
    v75 = v64;
    v50 = _Block_copy(aBlock);
    activeSessionZone = [(SMInitiatorCacheManager *)self activeSessionZone];
    invitationTokenMap = [activeSessionZone invitationTokenMap];

    if (invitationTokenMap)
    {
      activeSessionZone2 = [(SMInitiatorCacheManager *)self activeSessionZone];
      invitationTokenMap2 = [(SMCloudKitQosOptions *)activeSessionZone2 invitationTokenMap];
      v50[2](v50, invitationTokenMap2);
    }

    else
    {
      sessionManagerState8 = [(SMInitiatorCacheManager *)self sessionManagerState];
      configuration5 = [sessionManagerState8 configuration];
      conversation = [configuration5 conversation];
      isGroup = [conversation isGroup];

      if (isGroup)
      {
        activeSessionZone2 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(&activeSessionZone2->super, OS_LOG_TYPE_ERROR))
        {
          v59 = NSStringFromSelector(a2);
          *buf = 138412802;
          v79 = v49;
          v80 = 2112;
          v81 = v65;
          v82 = 2112;
          v83 = v59;
          _os_log_error_impl(&dword_2304B3000, &activeSessionZone2->super, OS_LOG_TYPE_ERROR, "#SafetyCache,Initiator,sessionID:%@,%@,%@,cannot regenerate invitation token map for groups", buf, 0x20u);
        }
      }

      else
      {
        activeSessionZone2 = [[SMCloudKitQosOptions alloc] initWithDefaultQos:1 masqueradeBundleID:0 xpcActivity:0];
        activeSessionZone3 = [(SMInitiatorCacheManager *)self activeSessionZone];
        sessionManagerState9 = [(SMInitiatorCacheManager *)self sessionManagerState];
        configuration6 = [sessionManagerState9 configuration];
        conversation2 = [configuration6 conversation];
        v66[0] = MEMORY[0x277D85DD0];
        v66[1] = 3221225472;
        v66[2] = __58__SMInitiatorCacheManager_processSessionStartInfoRequest___block_invoke_323;
        v66[3] = &unk_2788CCF08;
        v67 = v49;
        v68 = v65;
        v70 = a2;
        v69 = v50;
        [activeSessionZone3 createNewInvitationTokensWithConversation:conversation2 qos:activeSessionZone2 completion:v66];
      }
    }

    objc_destroyWeak(v76);
    objc_destroyWeak(&location);

LABEL_29:
    goto LABEL_30;
  }

  if (v14)
  {
    v34 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      sessionUUID4 = [(SMInitiatorCacheManager *)self sessionUUID];
      v43 = objc_opt_class();
      v44 = NSStringFromClass(v43);
      v45 = NSStringFromSelector(a2);
      *buf = 138412802;
      v79 = sessionUUID4;
      v80 = 2112;
      v81 = v44;
      v82 = 2112;
      v83 = v45;
      _os_log_impl(&dword_2304B3000, v34, OS_LOG_TYPE_INFO, "#SafetyCache,Initiator,sessionID:%@,%@,%@,sessionID does not match", buf, 0x20u);
    }

    goto LABEL_29;
  }

LABEL_30:
}

void __58__SMInitiatorCacheManager_processSessionStartInfoRequest___block_invoke(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    if (v3)
    {
      v6 = [WeakRetained delegate];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __58__SMInitiatorCacheManager_processSessionStartInfoRequest___block_invoke_317;
      v14[3] = &unk_2788CCEB8;
      objc_copyWeak(v20, (a1 + 64));
      v15 = *(a1 + 32);
      v7 = *(a1 + 40);
      v8 = *(a1 + 72);
      v16 = v7;
      v20[1] = v8;
      v17 = v3;
      v18 = *(a1 + 48);
      v19 = *(a1 + 56);
      [v6 fetchDeviceConfigurationLowPowerModeWarningStateWithHandler:v14];

      objc_destroyWeak(v20);
    }

    else
    {
      v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: invitationTokenMap", buf, 2u);
      }
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = *(a1 + 32);
      v10 = *(a1 + 40);
      v12 = NSStringFromSelector(*(a1 + 72));
      *buf = 138412802;
      v22 = v11;
      v23 = 2112;
      v24 = v10;
      v25 = 2112;
      v26 = v12;
      _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "#SafetyCache,Initiator,sessionID:%@,%@,%@,cache manager is nil", buf, 0x20u);
    }
  }
}

void __58__SMInitiatorCacheManager_processSessionStartInfoRequest___block_invoke_317(uint64_t a1, uint64_t a2, void *a3)
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = [WeakRetained queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __58__SMInitiatorCacheManager_processSessionStartInfoRequest___block_invoke_318;
    block[3] = &unk_2788CCE90;
    v20 = v5;
    v25 = a2;
    v21 = *(a1 + 48);
    v22 = v7;
    v9 = *(a1 + 56);
    v10 = *(a1 + 64);
    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    *&v13 = v11;
    *(&v13 + 1) = v12;
    *&v14 = v9;
    *(&v14 + 1) = v10;
    v23 = v14;
    v24 = v13;
    v26 = *(a1 + 80);
    dispatch_async(v8, block);

    v15 = v20;
  }

  else
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(a1 + 32);
      v17 = *(a1 + 40);
      v18 = NSStringFromSelector(*(a1 + 80));
      *buf = 138412802;
      v28 = v16;
      v29 = 2112;
      v30 = v17;
      v31 = 2112;
      v32 = v18;
      _os_log_impl(&dword_2304B3000, v15, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Initiator,sessionID:%@,%@,%@,object released during fetchDeviceConfigurationLowPowerModeWarningStateWithHandler", buf, 0x20u);
    }
  }
}

void __58__SMInitiatorCacheManager_processSessionStartInfoRequest___block_invoke_318(uint64_t a1)
{
  v61 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v26 = 0;
  }

  else
  {
    v26 = *(a1 + 88);
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = *(a1 + 40);
  v27 = [obj countByEnumeratingWithState:&v45 objects:v60 count:16];
  if (v27)
  {
    v25 = *v46;
    do
    {
      v2 = 0;
      do
      {
        if (*v46 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v39 = v2;
        v3 = *(*(&v45 + 1) + 8 * v2);
        v4 = objc_alloc(MEMORY[0x277D4AA98]);
        v5 = objc_alloc(MEMORY[0x277D4AAE8]);
        v6 = [v5 initWithPrimaryHandle:v3 secondaryHandles:MEMORY[0x277CBEBF8]];
        v59 = v6;
        v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v59 count:1];
        v38 = [v4 initWithReceiverHandles:v7 identifier:0 displayName:0];

        v8 = objc_alloc(MEMORY[0x277D4ABD8]);
        v9 = [*(a1 + 48) sessionUUID];
        v32 = v3;
        v57 = v3;
        v35 = [*(a1 + 40) objectForKeyedSubscript:v3];
        v58 = v35;
        v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v58 forKeys:&v57 count:1];
        v34 = [*(a1 + 48) sessionManagerState];
        v33 = [v34 configuration];
        v36 = [v33 sessionType];
        v28 = *(a1 + 56);
        v29 = *(a1 + 64);
        v31 = [*(a1 + 48) sessionManagerState];
        v10 = [v31 configuration];
        v11 = [v10 destination];
        v12 = [v11 destinationType];
        v13 = [*(a1 + 48) sessionManagerState];
        v14 = [v13 configuration];
        v15 = [v14 destination];
        v16 = [v15 destinationMapItem];
        v37 = [v8 initWithSessionID:v9 invitationTokenDict:v30 sessionType:v36 estimatedEndTime:v28 coarseEstimatedEndTime:v29 destinationType:v12 destinationMapItem:v16 lowPowerModeWarningState:v26];

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
        {
          v17 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            v21 = *(a1 + 72);
            v22 = *(a1 + 80);
            v23 = NSStringFromSelector(*(a1 + 96));
            *buf = 138413058;
            v50 = v21;
            v51 = 2112;
            v52 = v22;
            v53 = 2112;
            v54 = v23;
            v55 = 2112;
            v56 = v32;
            _os_log_debug_impl(&dword_2304B3000, v17, OS_LOG_TYPE_DEBUG, "#SafetyCache,Initiator,sessionID:%@,%@,%@,sending message to %@", buf, 0x2Au);
          }
        }

        v18 = [*(a1 + 48) messagingService];
        v40[0] = MEMORY[0x277D85DD0];
        v40[1] = 3221225472;
        v40[2] = __58__SMInitiatorCacheManager_processSessionStartInfoRequest___block_invoke_321;
        v40[3] = &unk_2788CCE68;
        v41 = *(a1 + 72);
        v19 = *(a1 + 80);
        v20 = *(a1 + 96);
        v43 = v32;
        v44 = v20;
        v42 = v19;
        [v18 sendIDSMessage:v37 toConversation:v38 completion:v40];

        v2 = v39 + 1;
      }

      while (v27 != v39 + 1);
      v27 = [obj countByEnumeratingWithState:&v45 objects:v60 count:16];
    }

    while (v27);
  }
}

void __58__SMInitiatorCacheManager_processSessionStartInfoRequest___block_invoke_321(uint64_t a1, int a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 32);
      v8 = *(a1 + 40);
      v9 = NSStringFromSelector(*(a1 + 56));
      v10 = *(a1 + 48);
      v11 = 138413570;
      v12 = v7;
      v13 = 2112;
      v14 = v8;
      v15 = 2112;
      v16 = v9;
      v17 = 2112;
      v18 = v10;
      v19 = 1024;
      v20 = a2;
      v21 = 2112;
      v22 = v5;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "#SafetyCache,Initiator,sessionID:%@,%@,%@,sendIDSMessage sent to %@ returned with status:%d, error:%@", &v11, 0x3Au);
    }
  }
}

void __58__SMInitiatorCacheManager_processSessionStartInfoRequest___block_invoke_323(uint64_t a1, void *a2, char a3, void *a4)
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a4;
  if (v7 && (a3 & 1) != 0)
  {
    (*(*(a1 + 48) + 16))();
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = *(a1 + 32);
      v11 = *(a1 + 40);
      v12 = NSStringFromSelector(*(a1 + 56));
      v13 = 138413058;
      v14 = v10;
      v15 = 2112;
      v16 = v11;
      v17 = 2112;
      v18 = v12;
      v19 = 2112;
      v20 = v8;
      _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "#SafetyCache,Initiator,sessionID:%@,%@,%@,nil Invitation Token or fetch failed, error:%@", &v13, 0x2Au);
    }
  }
}

- (void)processKeyReleaseInfoRequest:(id)request
{
  v26 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  if (requestCopy)
  {
    sessionManagerState = [(SMInitiatorCacheManager *)self sessionManagerState];
    if ([sessionManagerState sessionState] == 4)
    {
      isActiveDevice = [(SMInitiatorCacheManager *)self isActiveDevice];

      if (isActiveDevice)
      {
        sessionID = [requestCopy sessionID];
        sessionUUID = [(SMInitiatorCacheManager *)self sessionUUID];
        v10 = [sessionID isEqual:sessionUUID];

        if (v10)
        {
          delegate = [(SMInitiatorCacheManager *)self delegate];
          v19[0] = MEMORY[0x277D85DD0];
          v19[1] = 3221225472;
          v19[2] = __56__SMInitiatorCacheManager_processKeyReleaseInfoRequest___block_invoke;
          v19[3] = &unk_2788C7E98;
          v19[4] = self;
          v19[5] = a2;
          [delegate fetchDeviceConfigurationLowPowerModeWarningStateWithHandler:v19];
LABEL_14:

          goto LABEL_15;
        }

        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          goto LABEL_15;
        }

        delegate = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (!os_log_type_enabled(delegate, OS_LOG_TYPE_INFO))
        {
          goto LABEL_14;
        }

        sessionUUID2 = [(SMInitiatorCacheManager *)self sessionUUID];
        v18 = objc_opt_class();
        v15 = NSStringFromClass(v18);
        v16 = NSStringFromSelector(a2);
        *buf = 138412802;
        v21 = sessionUUID2;
        v22 = 2112;
        v23 = v15;
        v24 = 2112;
        v25 = v16;
        v17 = "#SafetyCache,Initiator,sessionID:%@,%@,%@,sessionID does not match";
LABEL_13:
        _os_log_impl(&dword_2304B3000, delegate, OS_LOG_TYPE_INFO, v17, buf, 0x20u);

        goto LABEL_14;
      }
    }

    else
    {
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      delegate = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (!os_log_type_enabled(delegate, OS_LOG_TYPE_INFO))
      {
        goto LABEL_14;
      }

      sessionUUID2 = [(SMInitiatorCacheManager *)self sessionUUID];
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      v16 = NSStringFromSelector(a2);
      *buf = 138412802;
      v21 = sessionUUID2;
      v22 = 2112;
      v23 = v15;
      v24 = 2112;
      v25 = v16;
      v17 = "#SafetyCache,Initiator,sessionID:%@,%@,%@,ignore SMKeyReleaseInfoRequestMessage";
      goto LABEL_13;
    }
  }

  else
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: keyReleaseInfoRequest", buf, 2u);
    }
  }

LABEL_15:
}

void __56__SMInitiatorCacheManager_processKeyReleaseInfoRequest___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [*(a1 + 32) queue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __56__SMInitiatorCacheManager_processKeyReleaseInfoRequest___block_invoke_2;
  v10[3] = &unk_2788CCF58;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v11 = v5;
  v12 = v7;
  v13 = a2;
  v14 = v8;
  v9 = v5;
  dispatch_async(v6, v10);
}

void __56__SMInitiatorCacheManager_processKeyReleaseInfoRequest___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v28 = 0;
  }

  else
  {
    v28 = *(a1 + 48);
  }

  v2 = MEMORY[0x277D4ABC8];
  v3 = [*(a1 + 40) sessionManagerState];
  v4 = [v3 monitorContext];
  LOBYTE(v2) = [v2 isSOSTriggerCategory:{objc_msgSend(v4, "triggerCategory")}];

  v5 = objc_alloc(MEMORY[0x277D4AB00]);
  v31 = [*(a1 + 40) sessionUUID];
  v30 = [*(a1 + 40) initiatorContact];
  v6 = [v30 triggerDate];
  v27 = [*(a1 + 40) initiatorContact];
  v23 = [v27 locationOfTrigger];
  v26 = [*(a1 + 40) sessionManagerState];
  v25 = [v26 monitorContext];
  v21 = [v25 triggerCategory];
  v24 = [*(a1 + 40) initiatorContact];
  v20 = [v24 safetyCacheKey];
  v22 = [*(a1 + 40) initiatorContact];
  v19 = [v22 allowReadToken];
  v7 = [*(a1 + 40) sessionManagerState];
  v8 = [v7 configuration];
  v9 = [v8 sessionType];
  v10 = [*(a1 + 40) sessionManagerState];
  v11 = [v10 configuration];
  v12 = [v11 destination];
  LOBYTE(v18) = v2;
  v29 = [v5 initWithSessionID:v31 triggerDate:v6 locationOfTrigger:v23 triggerType:v21 safetyCacheKey:v20 safetyCacheToken:v19 sessionType:v9 destinationType:objc_msgSend(v12 isSOSTrigger:"destinationType") lowPowerModeWarningState:{v18, v28}];

  v13 = [*(a1 + 40) messagingService];
  v14 = [*(a1 + 40) sessionManagerState];
  v15 = [v14 configuration];
  v16 = [v15 conversation];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __56__SMInitiatorCacheManager_processKeyReleaseInfoRequest___block_invoke_3;
  v32[3] = &unk_2788CCF30;
  v17 = *(a1 + 56);
  v32[4] = *(a1 + 40);
  v32[5] = v17;
  [v13 sendIDSMessage:v29 toConversation:v16 completion:v32];
}

void __56__SMInitiatorCacheManager_processKeyReleaseInfoRequest___block_invoke_3(uint64_t a1, int a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = [*(a1 + 32) sessionUUID];
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v10 = NSStringFromSelector(*(a1 + 40));
      v11 = 138413314;
      v12 = v7;
      v13 = 2112;
      v14 = v9;
      v15 = 2112;
      v16 = v10;
      v17 = 1024;
      v18 = a2;
      v19 = 2112;
      v20 = v5;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "#SafetyCache,Initiator,sessionID:%@,%@,%@,sendIDSMessage returned with status:%d, error:%@", &v11, 0x30u);
    }
  }
}

- (void)_sendKeyReleaseMessageForIsSecondarySOSTrigger:(BOOL)trigger
{
  v45 = *MEMORY[0x277D85DE8];
  [(SMInitiatorCacheManager *)self _cancelScheduledKeyRelease];
  if (trigger)
  {
LABEL_2:
    sessionManagerState = [(SMInitiatorCacheManager *)self sessionManagerState];
    monitorContext = [sessionManagerState monitorContext];
    triggerCategory = [monitorContext triggerCategory];

    if (triggerCategory == 15)
    {
      sessionManagerState2 = [(SMInitiatorCacheManager *)self sessionManagerState];
      sessionStateTransitionDate = [sessionManagerState2 sessionStateTransitionDate];
      initiatorContact = [(SMInitiatorCacheManager *)self initiatorContact];
      [initiatorContact setKeyReleaseMessageSendDate:sessionStateTransitionDate];

      [(SMInitiatorCacheManager *)self _updateInitiatorContactInStore];
    }

    else
    {
      objc_initWeak(location, self);
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      sessionUUID = [(SMInitiatorCacheManager *)self sessionUUID];
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __74__SMInitiatorCacheManager__sendKeyReleaseMessageForIsSecondarySOSTrigger___block_invoke;
      v31[3] = &unk_2788CD020;
      objc_copyWeak(v34, location);
      v17 = sessionUUID;
      v32 = v17;
      v18 = v15;
      v33 = v18;
      v34[1] = a2;
      triggerCopy = trigger;
      [(SMInitiatorCacheManager *)self _fetchLocationWithCompletion:v31];

      objc_destroyWeak(v34);
      objc_destroyWeak(location);
    }

    return;
  }

  initiatorContact2 = [(SMInitiatorCacheManager *)self initiatorContact];
  keyReleaseMessageSendDate = [initiatorContact2 keyReleaseMessageSendDate];
  if (keyReleaseMessageSendDate)
  {
  }

  else
  {
    initiatorContact3 = [(SMInitiatorCacheManager *)self initiatorContact];
    shouldBeCleanedUpDate = [initiatorContact3 shouldBeCleanedUpDate];

    if (!shouldBeCleanedUpDate)
    {
      goto LABEL_2;
    }
  }

  v21 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    sessionUUID2 = [(SMInitiatorCacheManager *)self sessionUUID];
    v23 = objc_opt_class();
    v24 = NSStringFromClass(v23);
    v25 = NSStringFromSelector(a2);
    initiatorContact4 = [(SMInitiatorCacheManager *)self initiatorContact];
    keyReleaseMessageSendDate2 = [initiatorContact4 keyReleaseMessageSendDate];
    stringFromDate = [keyReleaseMessageSendDate2 stringFromDate];
    initiatorContact5 = [(SMInitiatorCacheManager *)self initiatorContact];
    identifier = [initiatorContact5 identifier];
    *location = 138413314;
    *&location[4] = sessionUUID2;
    v37 = 2112;
    v38 = v24;
    v39 = 2112;
    v40 = v25;
    v41 = 2112;
    v42 = stringFromDate;
    v43 = 2112;
    v44 = identifier;
    _os_log_impl(&dword_2304B3000, v21, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Initiator,sessionID:%@,%@,%@,either Key Release message already sent,%@,or session ended and being cleaned up,%@", location, 0x34u);
  }
}

void __74__SMInitiatorCacheManager__sendKeyReleaseMessageForIsSecondarySOSTrigger___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v63 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = [WeakRetained initiatorContact];
    v10 = [v9 shouldBeCleanedUpDate];

    if (v10)
    {
      v11 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v13 = *(a1 + 32);
        v12 = *(a1 + 40);
        v14 = NSStringFromSelector(*(a1 + 56));
        *buf = 138412802;
        v56 = v13;
        v57 = 2112;
        v58 = v12;
        v59 = 2112;
        v60 = v14;
        _os_log_impl(&dword_2304B3000, v11, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Initiator,sessionID:%@,%@,%@,session ended during location fetch", buf, 0x20u);
      }
    }

    else
    {
      if (v6 || ![v5 isValid])
      {
        v31 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          v47 = *(a1 + 32);
          v46 = *(a1 + 40);
          v48 = NSStringFromSelector(*(a1 + 56));
          *buf = 138413058;
          v56 = v47;
          v57 = 2112;
          v58 = v46;
          v59 = 2112;
          v60 = v48;
          v61 = 2112;
          v62 = v6;
          _os_log_error_impl(&dword_2304B3000, v31, OS_LOG_TYPE_ERROR, "#SafetyCache,Initiator,sessionID:%@,%@,%@,fetched nil location or error:%@", buf, 0x2Au);
        }

        v30 = 0;
      }

      else
      {
        v18 = objc_alloc(MEMORY[0x277D01160]);
        [v5 latitude];
        v20 = v19;
        [v5 longitude];
        v22 = v21;
        [v5 hunc];
        v24 = v23;
        [v5 altitude];
        v26 = v25;
        [v5 vunc];
        v28 = v27;
        v29 = [v5 date];
        v30 = [v18 initWithLatitude:v29 longitude:1 horizontalUncertainty:v20 altitude:v22 verticalUncertainty:v24 date:v26 referenceFrame:v28 speed:0.0];
      }

      if ((*(a1 + 64) & 1) == 0)
      {
        v32 = [v8 initiatorContact];
        [v32 setLocationOfTrigger:v30];

        v33 = [v8 sessionManagerState];
        v34 = [v33 sessionStateTransitionDate];
        v35 = [v8 initiatorContact];
        [v35 setTriggerDate:v34];

        v36 = [v8 sessionManagerState];
        v37 = [v36 configuration];
        v38 = [v37 sessionStartDate];
        [v38 timeIntervalSinceNow];
        v40 = v39;
        v41 = [v8 initiatorContact];
        [v41 setTimeTilCacheRelease:-v40];

        v42 = [v8 initiatorContact];
        [v42 setWasCacheReleased:1];

        [v8 _updateInitiatorContactInStore];
      }

      v43 = [v8 delegate];
      v49[0] = MEMORY[0x277D85DD0];
      v49[1] = 3221225472;
      v49[2] = __74__SMInitiatorCacheManager__sendKeyReleaseMessageForIsSecondarySOSTrigger___block_invoke_327;
      v49[3] = &unk_2788CCFF8;
      objc_copyWeak(v53, (a1 + 48));
      v50 = *(a1 + 32);
      v44 = *(a1 + 40);
      v45 = *(a1 + 56);
      v51 = v44;
      v53[1] = v45;
      v11 = v30;
      v52 = v11;
      v54 = *(a1 + 64);
      [v43 fetchDeviceConfigurationLowPowerModeWarningStateWithHandler:v49];

      objc_destroyWeak(v53);
    }
  }

  else
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(a1 + 32);
      v15 = *(a1 + 40);
      v17 = NSStringFromSelector(*(a1 + 56));
      *buf = 138412802;
      v56 = v16;
      v57 = 2112;
      v58 = v15;
      v59 = 2112;
      v60 = v17;
      _os_log_impl(&dword_2304B3000, v11, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Initiator,sessionID:%@,%@,%@,object released during location fetch", buf, 0x20u);
    }
  }
}

void __74__SMInitiatorCacheManager__sendKeyReleaseMessageForIsSecondarySOSTrigger___block_invoke_327(uint64_t a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = [WeakRetained queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __74__SMInitiatorCacheManager__sendKeyReleaseMessageForIsSecondarySOSTrigger___block_invoke_328;
    block[3] = &unk_2788CCFD0;
    v16 = v5;
    v21[1] = a2;
    v17 = v7;
    v18 = *(a1 + 48);
    objc_copyWeak(v21, (a1 + 56));
    v19 = *(a1 + 32);
    v9 = *(a1 + 40);
    v10 = *(a1 + 64);
    v20 = v9;
    v21[2] = v10;
    v22 = *(a1 + 72);
    dispatch_async(v8, block);

    objc_destroyWeak(v21);
    v11 = v16;
  }

  else
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 32);
      v13 = *(a1 + 40);
      v14 = NSStringFromSelector(*(a1 + 64));
      *buf = 138412802;
      v24 = v12;
      v25 = 2112;
      v26 = v13;
      v27 = 2112;
      v28 = v14;
      _os_log_impl(&dword_2304B3000, v11, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Initiator,sessionID:%@,%@,%@,object released during fetchDeviceConfigurationLowPowerModeWarningStateWithHandler", buf, 0x20u);
    }
  }
}

void __74__SMInitiatorCacheManager__sendKeyReleaseMessageForIsSecondarySOSTrigger___block_invoke_328(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v34 = 0;
  }

  else
  {
    v34 = *(a1 + 80);
  }

  v2 = MEMORY[0x277D4ABC8];
  v3 = [*(a1 + 40) sessionManagerState];
  v4 = [v3 monitorContext];
  v5 = [v2 isSOSTriggerCategory:{objc_msgSend(v4, "triggerCategory")}];

  v30 = objc_alloc(MEMORY[0x277D4AB10]);
  v6 = [*(a1 + 40) sessionUUID];
  v36 = [*(a1 + 40) sessionManagerState];
  v28 = [v36 sessionStateTransitionDate];
  v29 = *(a1 + 48);
  v33 = [*(a1 + 40) sessionManagerState];
  v32 = [v33 monitorContext];
  v26 = [v32 triggerCategory];
  v31 = [*(a1 + 40) initiatorContact];
  v25 = [v31 safetyCacheKey];
  v27 = [*(a1 + 40) initiatorContact];
  v7 = [v27 allowReadToken];
  v8 = [*(a1 + 40) sessionManagerState];
  v9 = [v8 configuration];
  v10 = [v9 sessionType];
  v11 = [*(a1 + 40) sessionManagerState];
  v12 = [v11 configuration];
  v13 = [v12 destination];
  LOBYTE(v24) = v5;
  v35 = [v30 initWithSessionID:v6 triggerDate:v28 locationOfTrigger:v29 triggerType:v26 safetyCacheKey:v25 safetyCacheToken:v7 sessionType:v10 destinationType:objc_msgSend(v13 isSOSTrigger:"destinationType") lowPowerModeWarningState:{v24, v34}];

  v14 = [*(a1 + 40) messagingService];
  v15 = [*(a1 + 40) sessionManagerState];
  v16 = [v15 startMessageGUID];
  v17 = [*(a1 + 40) sessionManagerState];
  v18 = [v17 configuration];
  v19 = [v18 conversation];
  v20 = [v35 summaryText];
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __74__SMInitiatorCacheManager__sendKeyReleaseMessageForIsSecondarySOSTrigger___block_invoke_2;
  v37[3] = &unk_2788CCFA8;
  objc_copyWeak(v41, (a1 + 72));
  v38 = *(a1 + 56);
  v21 = *(a1 + 64);
  v22 = *(a1 + 88);
  v39 = v21;
  v41[1] = v22;
  v42 = *(a1 + 96);
  v23 = v35;
  v40 = v23;
  [v14 sendMadridMessage:v23 associatedGUID:v16 toConversation:v19 summaryText:v20 completion:v37];

  objc_destroyWeak(v41);
}

void __74__SMInitiatorCacheManager__sendKeyReleaseMessageForIsSecondarySOSTrigger___block_invoke_2(uint64_t a1, void *a2, char a3, void *a4)
{
  v34 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v10 = WeakRetained;
  if (WeakRetained)
  {
    v11 = [WeakRetained queue];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __74__SMInitiatorCacheManager__sendKeyReleaseMessageForIsSecondarySOSTrigger___block_invoke_330;
    v18[3] = &unk_2788CCF80;
    v19 = *(a1 + 32);
    v12 = *(a1 + 40);
    v13 = *(a1 + 64);
    v20 = v12;
    v25 = v13;
    v26 = a3;
    v21 = v7;
    v22 = v8;
    v27 = *(a1 + 72);
    v23 = v10;
    v24 = *(a1 + 48);
    dispatch_async(v11, v18);

    v14 = v19;
  }

  else
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(a1 + 32);
      v16 = *(a1 + 40);
      v17 = NSStringFromSelector(*(a1 + 64));
      *buf = 138412802;
      v29 = v15;
      v30 = 2112;
      v31 = v16;
      v32 = 2112;
      v33 = v17;
      _os_log_impl(&dword_2304B3000, v14, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Initiator,sessionID:%@,%@,%@,object released during message send", buf, 0x20u);
    }
  }
}

void __74__SMInitiatorCacheManager__sendKeyReleaseMessageForIsSecondarySOSTrigger___block_invoke_330(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = NSStringFromSelector(*(a1 + 80));
    v6 = v5;
    v7 = @"failed";
    v8 = *(a1 + 48);
    v9 = *(a1 + 56);
    if (*(a1 + 88))
    {
      v7 = @"succeeded";
    }

    v12 = 138413570;
    v13 = v3;
    v14 = 2112;
    v15 = v4;
    v16 = 2112;
    v17 = v5;
    v18 = 2112;
    v19 = v7;
    v20 = 2112;
    v21 = v8;
    v22 = 2112;
    v23 = v9;
    _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Initiator,sessionID:%@,%@,%@,message send %@,messageGUID,%@,error,%@", &v12, 0x3Eu);
  }

  if ((*(a1 + 89) & 1) == 0)
  {
    v10 = [*(a1 + 72) date];
    v11 = [*(a1 + 64) initiatorContact];
    [v11 setKeyReleaseMessageSendDate:v10];

    [*(a1 + 64) _updateInitiatorContactInStore];
  }
}

- (void)_sendCacheUpdatedMessage
{
  v34 = *MEMORY[0x277D85DE8];
  initiatorContact = [(SMInitiatorCacheManager *)self initiatorContact];
  shouldBeCleanedUpDate = [initiatorContact shouldBeCleanedUpDate];

  if (shouldBeCleanedUpDate)
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      sessionUUID = [(SMInitiatorCacheManager *)self sessionUUID];
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v10 = NSStringFromSelector(a2);
      *buf = 138412802;
      v29 = sessionUUID;
      v30 = 2112;
      v31 = v9;
      v32 = 2112;
      v33 = v10;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Initiator,sessionID:%@,%@,%@,initiatorContact should be cleaned up", buf, 0x20u);
    }
  }

  else
  {
    initiatorContact2 = [(SMInitiatorCacheManager *)self initiatorContact];
    keyReleaseMessageSendDate = [initiatorContact2 keyReleaseMessageSendDate];

    if (!keyReleaseMessageSendDate)
    {
      return;
    }

    v13 = objc_alloc(MEMORY[0x277D4AA78]);
    sessionUUID2 = [(SMInitiatorCacheManager *)self sessionUUID];
    v6 = [v13 initWithSessionID:sessionUUID2];

    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    sessionUUID3 = [(SMInitiatorCacheManager *)self sessionUUID];
    messagingService = [(SMInitiatorCacheManager *)self messagingService];
    sessionManagerState = [(SMInitiatorCacheManager *)self sessionManagerState];
    configuration = [sessionManagerState configuration];
    conversation = [configuration conversation];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __51__SMInitiatorCacheManager__sendCacheUpdatedMessage__block_invoke;
    v24[3] = &unk_2788CD048;
    v25 = sessionUUID3;
    v26 = v16;
    v27 = a2;
    v22 = v16;
    v23 = sessionUUID3;
    [messagingService sendIDSMessage:v6 toConversation:conversation completion:v24];
  }
}

void __51__SMInitiatorCacheManager__sendCacheUpdatedMessage__block_invoke(uint64_t a1, int a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = NSStringFromSelector(*(a1 + 48));
    v10 = v9;
    v12 = 138413314;
    v11 = @"failed";
    v13 = v7;
    v14 = 2112;
    if (a2)
    {
      v11 = @"succeeded";
    }

    v15 = v8;
    v16 = 2112;
    v17 = v9;
    v18 = 2112;
    v19 = v11;
    v20 = 2112;
    v21 = v5;
    _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Initiator,sessionID:%@,%@,%@,message send %@ with error %@", &v12, 0x34u);
  }
}

- (BOOL)_isEffectivePairedDeviceNearby
{
  messagingService = [(SMInitiatorCacheManager *)self messagingService];
  effectivePairedDevice = [messagingService effectivePairedDevice];
  isNearby = [effectivePairedDevice isNearby];

  return isNearby;
}

- (id)getXpcActivityIdentifier
{
  v2 = MEMORY[0x277CCACA8];
  sessionUUID = [(SMInitiatorCacheManager *)self sessionUUID];
  v4 = [v2 stringWithFormat:@"%@.%@", @"com.apple.routined.cacheMaintenance.periodic", sessionUUID];

  return v4;
}

- (void)_evaluateAndManagePeriodicCacheUpdate
{
  v27 = *MEMORY[0x277D85DE8];
  sessionManagerState = [(SMInitiatorCacheManager *)self sessionManagerState];
  isActiveState = [sessionManagerState isActiveState];

  isActiveDevice = [(SMInitiatorCacheManager *)self isActiveDevice];
  v7 = ![(SMInitiatorCacheManager *)self isActiveDevice]&& [(SMInitiatorCacheManager *)self _isEffectivePairedDeviceNearby];
  v8 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    sessionUUID = [(SMInitiatorCacheManager *)self sessionUUID];
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = NSStringFromSelector(a2);
    v13 = 138413826;
    v14 = sessionUUID;
    v15 = 2112;
    v16 = v11;
    v17 = 2112;
    v18 = v12;
    v19 = 1024;
    v20 = isActiveState;
    v21 = 1024;
    v22 = isActiveDevice;
    v23 = 1024;
    v24 = v7;
    v25 = 1024;
    v26 = isActiveState & (isActiveDevice || v7);
    _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Initiator,sessionID:%@,%@,%@,isActiveState,%d,isActiveDevice,%d,isNonActiveDeviceAndIsCompanionConnected,%d,shouldScheduleCacheUpdates,%d", &v13, 0x38u);
  }

  if (isActiveState)
  {
    [(SMInitiatorCacheManager *)self _setupFetchOnZoneUpdates];
  }

  else
  {
    [(SMInitiatorCacheManager *)self _teardownFetchOnZoneUpdates];
  }

  if ((isActiveState & (isActiveDevice || v7)) != 0)
  {
    [(SMInitiatorCacheManager *)self _registerForGeneralNotifications];
    if (isActiveDevice)
    {
      [(SMInitiatorCacheManager *)self _registerForActiveNotifications];
    }

    else
    {
      [(SMInitiatorCacheManager *)self _unregisterForActiveNotifications];
    }

    [(SMInitiatorCacheManager *)self _schedulePeriodicCacheUpdate];
  }

  else
  {
    [(SMInitiatorCacheManager *)self _unregisterForGeneralNotifications];
    [(SMInitiatorCacheManager *)self _unregisterForActiveNotifications];
    [(SMInitiatorCacheManager *)self _stopPeriodicCacheUpdate];
    [(SMInitiatorCacheManager *)self stopCacheUpdateBackstopTimer];
  }
}

- (void)_schedulePeriodicCacheUpdate
{
  v48 = *MEMORY[0x277D85DE8];
  if (![(SMInitiatorCacheManager *)self isPeriodicallyUpdatingCache])
  {
    [(SMInitiatorCacheManager *)self setIsPeriodicallyUpdatingCache:1];
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __55__SMInitiatorCacheManager__schedulePeriodicCacheUpdate__block_invoke;
    v35[3] = &unk_2788C52E8;
    v35[4] = self;
    v35[5] = a2;
    [(SMInitiatorCacheManager *)self _periodicCacheUpdateWithCompletion:v35];
    v4 = MEMORY[0x277CBEAA8];
    [(SMInitiatorCacheManager *)self getCacheUpdateBackstopTimeout];
    v5 = [v4 dateWithTimeIntervalSinceNow:?];
    initiatorContact = [(SMInitiatorCacheManager *)self initiatorContact];
    [initiatorContact setCacheUpdateBackstopExpiryDate:v5];

    [(SMInitiatorCacheManager *)self _updateInitiatorContactInStore];
    [(SMInitiatorCacheManager *)self updateCacheUpdateBackstopTimer];
    defaultsManager = [(SMInitiatorCacheManager *)self defaultsManager];
    v8 = [defaultsManager objectForKey:@"RTDefaultsSafetyCacheUpdateInterval"];

    if (v8)
    {
      [v8 doubleValue];
      v10 = v9;
      v11 = 300.0;
      if (v9 != 300.0)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v12 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
          {
            *buf = 136316162;
            v37 = "[SMInitiatorCacheManager _schedulePeriodicCacheUpdate]";
            v38 = 2080;
            v39 = "overriding cache update interval";
            v40 = 2048;
            v41 = 0x4072C00000000000;
            v42 = 2048;
            v43 = v10;
            v44 = 2112;
            v45 = @"RTDefaultsSafetyCacheUpdateInterval";
            _os_log_impl(&dword_2304B3000, v12, OS_LOG_TYPE_INFO, "%s, %s, original value, %.2f, overridden value, %.2f, by defaultsKey, %@", buf, 0x34u);
          }
        }

        v11 = v10;
      }
    }

    else
    {
      v11 = 300.0;
    }

    defaultsManager2 = [(SMInitiatorCacheManager *)self defaultsManager];
    v14 = [defaultsManager2 objectForKey:@"RTDefaultsSafetyCacheUpdateGracePeriod"];

    if (v14)
    {
      [v14 doubleValue];
      v16 = v15;
    }

    else
    {
      v16 = 30.0;
    }

    LOBYTE(v30) = 0;
    v17 = [[RTXPCActivityCriteria alloc] initWithInterval:2 gracePeriod:1 priority:0 requireNetworkConnectivity:51200 requireInexpensiveNetworkConnectivity:51200 networkTransferUploadSize:1 networkTransferDownloadSize:v11 allowBattery:v16 powerNap:v11 - v16 delay:v30 requireBatteryLevel:&unk_28459E7C0];
    v18 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      sessionUUID = [(SMInitiatorCacheManager *)self sessionUUID];
      v20 = objc_opt_class();
      v21 = NSStringFromClass(v20);
      v22 = NSStringFromSelector(a2);
      *buf = 138413570;
      v37 = sessionUUID;
      v38 = 2112;
      v39 = v21;
      v40 = 2112;
      v41 = v22;
      v42 = 2048;
      v43 = v11;
      v44 = 2048;
      v45 = *&v16;
      v46 = 2048;
      v47 = v11 - v16;
      _os_log_impl(&dword_2304B3000, v18, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Initiator,sessionID:%@,%@,%@,schedule xpc activity,interval,%f,grace period,%f,delay,%lf", buf, 0x3Eu);
    }

    objc_initWeak(buf, self);
    v23 = objc_opt_class();
    v24 = NSStringFromClass(v23);
    sessionUUID2 = [(SMInitiatorCacheManager *)self sessionUUID];
    xpcActivityManager = [(SMInitiatorCacheManager *)self xpcActivityManager];
    getXpcActivityIdentifier = [(SMInitiatorCacheManager *)self getXpcActivityIdentifier];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __55__SMInitiatorCacheManager__schedulePeriodicCacheUpdate__block_invoke_347;
    v31[3] = &unk_2788CD070;
    objc_copyWeak(v34, buf);
    v28 = sessionUUID2;
    v32 = v28;
    v29 = v24;
    v33 = v29;
    v34[1] = a2;
    [xpcActivityManager registerActivityWithIdentifier:getXpcActivityIdentifier criteria:v17 handler:v31];

    objc_destroyWeak(v34);
    objc_destroyWeak(buf);
  }
}

void __55__SMInitiatorCacheManager__schedulePeriodicCacheUpdate__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) sessionUUID];
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = NSStringFromSelector(*(a1 + 40));
    v7 = 138412802;
    v8 = v3;
    v9 = 2112;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Initiator,sessionID:%@,%@,%@,completed initial cache upload", &v7, 0x20u);
  }
}

void __55__SMInitiatorCacheManager__schedulePeriodicCacheUpdate__block_invoke_347(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __55__SMInitiatorCacheManager__schedulePeriodicCacheUpdate__block_invoke_2;
    block[3] = &unk_2788C5110;
    v10 = v5;
    v11 = *(a1 + 32);
    v7 = *(a1 + 40);
    v8 = *(a1 + 56);
    v12 = v7;
    v14 = v8;
    v13 = v3;
    dispatch_async(v6, block);
  }

  else if (v3)
  {
    (*(v3 + 2))(v3, 0, 0);
  }
}

void __55__SMInitiatorCacheManager__schedulePeriodicCacheUpdate__block_invoke_2(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) initiatorContact];
  v3 = [v2 shouldBeCleanedUpDate];

  v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v6 = *(a1 + 40);
      v7 = *(a1 + 48);
      v8 = NSStringFromSelector(*(a1 + 64));
      v9 = [*(a1 + 32) initiatorContact];
      v10 = [v9 shouldBeCleanedUpDate];
      v11 = [v10 stringFromDate];
      *buf = 138413058;
      v24 = v6;
      v25 = 2112;
      v26 = v7;
      v27 = 2112;
      v28 = v8;
      v29 = 2112;
      v30 = v11;
      _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Initiator,sessionID:%@,%@,%@,uploadCache xpc fired,shouldBeCleanedUpDate %@", buf, 0x2Au);
    }

    v12 = *(a1 + 56);
    if (v12)
    {
      (*(v12 + 16))(v12, 0, 0);
    }

    [*(a1 + 32) _stopPeriodicCacheUpdate];
  }

  else
  {
    if (v5)
    {
      v13 = *(a1 + 40);
      v14 = *(a1 + 48);
      v15 = NSStringFromSelector(*(a1 + 64));
      *buf = 138412802;
      v24 = v13;
      v25 = 2112;
      v26 = v14;
      v27 = 2112;
      v28 = v15;
      _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Initiator,sessionID:%@,%@,%@,uploadCache xpc fired", buf, 0x20u);
    }

    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __55__SMInitiatorCacheManager__schedulePeriodicCacheUpdate__block_invoke_348;
    v19[3] = &unk_2788C4C20;
    v16 = *(a1 + 32);
    v20 = *(a1 + 40);
    v21 = *(a1 + 48);
    v18 = *(a1 + 56);
    v17 = v18;
    v22 = v18;
    [v16 _periodicCacheUpdateWithCompletion:v19];
  }
}

uint64_t __55__SMInitiatorCacheManager__schedulePeriodicCacheUpdate__block_invoke_348(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = NSStringFromSelector(*(a1 + 56));
    v7 = 138412802;
    v8 = v3;
    v9 = 2112;
    v10 = v4;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Initiator,sessionID:%@,%@,%@,uploadCache xpc completed", &v7, 0x20u);
  }

  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, 0, 0);
  }

  return result;
}

- (void)_stopPeriodicCacheUpdate
{
  if ([(SMInitiatorCacheManager *)self isPeriodicallyUpdatingCache])
  {
    [(SMInitiatorCacheManager *)self setIsPeriodicallyUpdatingCache:0];
    xpcActivityManager = [(SMInitiatorCacheManager *)self xpcActivityManager];
    getXpcActivityIdentifier = [(SMInitiatorCacheManager *)self getXpcActivityIdentifier];
    [xpcActivityManager deleteDefaultsForIdentifier:getXpcActivityIdentifier];

    xpcActivityManager2 = [(SMInitiatorCacheManager *)self xpcActivityManager];
    getXpcActivityIdentifier2 = [(SMInitiatorCacheManager *)self getXpcActivityIdentifier];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __51__SMInitiatorCacheManager__stopPeriodicCacheUpdate__block_invoke;
    v8[3] = &unk_2788C4D10;
    v8[4] = self;
    v8[5] = a2;
    [xpcActivityManager2 unregisterActivityWithIdentifier:getXpcActivityIdentifier2 handler:v8];
  }
}

void __51__SMInitiatorCacheManager__stopPeriodicCacheUpdate__block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) sessionUUID];
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = NSStringFromSelector(*(a1 + 40));
    v9 = 138413058;
    v10 = v5;
    v11 = 2112;
    v12 = v7;
    v13 = 2112;
    v14 = v8;
    v15 = 2112;
    v16 = v3;
    _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Initiator,sessionID:%@,%@,%@,unregisterActivityWithIdentifier with error %@", &v9, 0x2Au);
  }
}

- (void)_periodicCacheUpdateWithCompletion:(id)completion
{
  v61 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v6 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorAnalytics);
  v7 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorAnalytics);
  v8 = os_signpost_id_generate(v7);

  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_2304B3000, v6, OS_SIGNPOST_EVENT, v8, "SMUpdateInitiatorSafetyCache", " enableTelemetry=YES ", buf, 2u);
  }

  cacheUploadInProgress = [(SMInitiatorCacheManager *)self cacheUploadInProgress];
  v10 = cacheUploadInProgress == 0;

  if (v10)
  {
    v17 = MEMORY[0x277CBEAA8];
    [(SMInitiatorCacheManager *)self getCacheUpdateBackstopTimeout];
    v18 = [v17 dateWithTimeIntervalSinceNow:?];
    initiatorContact = [(SMInitiatorCacheManager *)self initiatorContact];
    [initiatorContact setCacheUpdateBackstopExpiryDate:v18];

    [(SMInitiatorCacheManager *)self _updateInitiatorContactInStore];
    [(SMInitiatorCacheManager *)self updateCacheUpdateBackstopTimer];
    v20 = objc_opt_new();
    [(SMInitiatorCacheManager *)self setCacheUploadInProgress:v20];
    v21 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      sessionUUID = [(SMInitiatorCacheManager *)self sessionUUID];
      v23 = objc_opt_class();
      v24 = NSStringFromClass(v23);
      v25 = NSStringFromSelector(a2);
      *buf = 138413058;
      v54 = sessionUUID;
      v55 = 2112;
      v56 = v24;
      v57 = 2112;
      v58 = v25;
      v59 = 2112;
      v60 = v20;
      _os_log_impl(&dword_2304B3000, v21, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Initiator,sessionID:%@,%@,%@,uploadCache started %@", buf, 0x2Au);
    }

    objc_initWeak(&location, self);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __62__SMInitiatorCacheManager__periodicCacheUpdateWithCompletion___block_invoke;
    block[3] = &unk_2788CD098;
    objc_copyWeak(v51, &location);
    block[4] = self;
    v51[1] = a2;
    v50 = completionCopy;
    v26 = v20;
    v49 = v26;
    v27 = dispatch_block_create(DISPATCH_BLOCK_ASSIGN_CURRENT, block);
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __62__SMInitiatorCacheManager__periodicCacheUpdateWithCompletion___block_invoke_350;
    v44[3] = &unk_2788C4E50;
    objc_copyWeak(v47, &location);
    v28 = v27;
    v46 = v28;
    v47[1] = a2;
    v29 = v26;
    v45 = v29;
    v30 = dispatch_block_create(DISPATCH_BLOCK_ASSIGN_CURRENT, v44);
    v31 = dispatch_time(0, 60000000000);
    queue = [(SMInitiatorCacheManager *)self queue];
    dispatch_after(v31, queue, v30);

    if ([(SMInitiatorCacheManager *)self isActiveDevice])
    {
      if (![(SMInitiatorCacheManager *)self _isEligibleForCacheUpdateAndPerformRecoveryIfNecessary])
      {
        v35 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          sessionUUID2 = [(SMInitiatorCacheManager *)self sessionUUID];
          v37 = objc_opt_class();
          v38 = NSStringFromClass(v37);
          v39 = NSStringFromSelector(a2);
          *buf = 138412802;
          v54 = sessionUUID2;
          v55 = 2112;
          v56 = v38;
          v57 = 2112;
          v58 = v39;
          _os_log_error_impl(&dword_2304B3000, v35, OS_LOG_TYPE_ERROR, "#SafetyCache,Initiator,sessionID:%@,%@,%@, not eligible for cache update", buf, 0x20u);
        }

        v28[2](v28);
        goto LABEL_18;
      }

      v33 = v42;
      v42[0] = MEMORY[0x277D85DD0];
      v42[1] = 3221225472;
      v42[2] = __62__SMInitiatorCacheManager__periodicCacheUpdateWithCompletion___block_invoke_351;
      v42[3] = &unk_2788CD0E8;
      v34 = v43;
      objc_copyWeak(v43, &location);
      v42[5] = v30;
      v42[6] = v28;
      v43[1] = a2;
      v42[4] = v29;
      [(SMInitiatorCacheManager *)self _updateCacheDataWithCompletion:v42];
    }

    else
    {
      v33 = v40;
      v40[0] = MEMORY[0x277D85DD0];
      v40[1] = 3221225472;
      v40[2] = __62__SMInitiatorCacheManager__periodicCacheUpdateWithCompletion___block_invoke_354;
      v40[3] = &unk_2788CD0E8;
      v34 = v41;
      objc_copyWeak(v41, &location);
      v40[5] = v30;
      v40[6] = v28;
      v41[1] = a2;
      v40[4] = v29;
      [(SMInitiatorCacheManager *)self _updateCacheDataForNonActiveDeviceWithCompletion:v40];
    }

    objc_destroyWeak(v34);
LABEL_18:

    objc_destroyWeak(v47);
    objc_destroyWeak(v51);
    objc_destroyWeak(&location);

    goto LABEL_19;
  }

  v11 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    sessionUUID3 = [(SMInitiatorCacheManager *)self sessionUUID];
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    v15 = NSStringFromSelector(a2);
    cacheUploadInProgress2 = [(SMInitiatorCacheManager *)self cacheUploadInProgress];
    *buf = 138413058;
    v54 = sessionUUID3;
    v55 = 2112;
    v56 = v14;
    v57 = 2112;
    v58 = v15;
    v59 = 2112;
    v60 = cacheUploadInProgress2;
    _os_log_impl(&dword_2304B3000, v11, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Initiator,sessionID:%@,%@,%@,uploadCache already in progress %@", buf, 0x2Au);
  }

  completionCopy[2](completionCopy);
LABEL_19:
}

void __62__SMInitiatorCacheManager__periodicCacheUpdateWithCompletion___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(a1 + 40);
    v5 = [WeakRetained cacheUploadInProgress];
    LODWORD(v4) = [v4 isEqual:v5];

    if (v4)
    {
      [v3 setCacheUploadInProgress:0];
      v6 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = [v3 sessionUUID];
        v8 = objc_opt_class();
        v9 = NSStringFromClass(v8);
        v10 = NSStringFromSelector(*(a1 + 64));
        v11 = *(a1 + 40);
        v17 = 138413058;
        v18 = v7;
        v19 = 2112;
        v20 = v9;
        v21 = 2112;
        v22 = v10;
        v23 = 2112;
        v24 = v11;
        _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Initiator,sessionID:%@,%@,%@,uploadCache completed %@", &v17, 0x2Au);
      }

      (*(*(a1 + 48) + 16))();
    }
  }

  else
  {
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v14 = [*(a1 + 32) sessionUUID];
    v15 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = NSStringFromSelector(*(a1 + 64));
      v17 = 138412802;
      v18 = v14;
      v19 = 2112;
      v20 = v13;
      v21 = 2112;
      v22 = v16;
      _os_log_impl(&dword_2304B3000, v15, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Initiator,sessionID:%@,%@,%@,cache manager released before completion called", &v17, 0x20u);
    }

    (*(*(a1 + 48) + 16))();
  }
}

void __62__SMInitiatorCacheManager__periodicCacheUpdateWithCompletion___block_invoke_350(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = [WeakRetained sessionUUID];
      v5 = objc_opt_class();
      v6 = NSStringFromClass(v5);
      v7 = NSStringFromSelector(*(a1 + 56));
      v8 = *(a1 + 32);
      v9 = 138413058;
      v10 = v4;
      v11 = 2112;
      v12 = v6;
      v13 = 2112;
      v14 = v7;
      v15 = 2112;
      v16 = v8;
      _os_log_error_impl(&dword_2304B3000, v3, OS_LOG_TYPE_ERROR, "#SafetyCache,Initiator,sessionID:%@,%@,%@,uploadCache timeout fired %@", &v9, 0x2Au);
    }
  }

  (*(*(a1 + 40) + 16))();
}

void __62__SMInitiatorCacheManager__periodicCacheUpdateWithCompletion___block_invoke_351(uint64_t a1, void *a2)
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [WeakRetained sessionUUID];
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = NSStringFromSelector(*(a1 + 64));
      v10 = *(a1 + 32);
      *buf = 138413315;
      v25 = v6;
      v26 = 2112;
      v27 = v8;
      v28 = 2112;
      v29 = v9;
      v30 = 2112;
      v31 = v10;
      v32 = 2117;
      v33 = v3;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Initiator,sessionID:%@,%@,%@,uploadCache updateCache completed %@, cache, %{sensitive}@", buf, 0x34u);
    }

    v11 = *(a1 + 32);
    v12 = [WeakRetained cacheUploadInProgress];
    LODWORD(v11) = [v11 isEqual:v12];

    if (v11)
    {
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __62__SMInitiatorCacheManager__periodicCacheUpdateWithCompletion___block_invoke_352;
      v20[3] = &unk_2788CD0C0;
      v21 = *(a1 + 40);
      objc_copyWeak(&v23, (a1 + 56));
      v22 = *(a1 + 48);
      [WeakRetained _uploadCache:v3 completion:v20];

      objc_destroyWeak(&v23);
    }

    else
    {
      v13 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [WeakRetained sessionUUID];
        v15 = objc_opt_class();
        v16 = NSStringFromClass(v15);
        v17 = NSStringFromSelector(*(a1 + 64));
        v18 = *(a1 + 32);
        v19 = [WeakRetained cacheUploadInProgress];
        *buf = 138413314;
        v25 = v14;
        v26 = 2112;
        v27 = v16;
        v28 = 2112;
        v29 = v17;
        v30 = 2112;
        v31 = v18;
        v32 = 2112;
        v33 = v19;
        _os_log_impl(&dword_2304B3000, v13, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Initiator,sessionID:%@,%@,%@,uploadCache was canceled %@, active %@", buf, 0x34u);
      }

      dispatch_block_cancel(*(a1 + 40));
      (*(*(a1 + 48) + 16))();
    }
  }

  else
  {
    dispatch_block_cancel(*(a1 + 40));
    (*(*(a1 + 48) + 16))();
  }
}

void __62__SMInitiatorCacheManager__periodicCacheUpdateWithCompletion___block_invoke_352(uint64_t a1)
{
  dispatch_block_cancel(*(a1 + 32));
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [MEMORY[0x277CBEAA8] now];
  v3 = [WeakRetained initiatorContact];
  [v3 setTimeCacheUploadCompletion:v2];

  [WeakRetained _updateInitiatorContactInStore];
  (*(*(a1 + 40) + 16))();
}

void __62__SMInitiatorCacheManager__periodicCacheUpdateWithCompletion___block_invoke_354(uint64_t a1, void *a2)
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [WeakRetained sessionUUID];
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = NSStringFromSelector(*(a1 + 64));
      v10 = *(a1 + 32);
      *buf = 138413315;
      v25 = v6;
      v26 = 2112;
      v27 = v8;
      v28 = 2112;
      v29 = v9;
      v30 = 2112;
      v31 = v10;
      v32 = 2117;
      v33 = v3;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Initiator,sessionID:%@,%@,%@,non-active uploadCache updateCache completed %@, cache, %{sensitive}@", buf, 0x34u);
    }

    v11 = *(a1 + 32);
    v12 = [WeakRetained cacheUploadInProgress];
    LODWORD(v11) = [v11 isEqual:v12];

    if (v11)
    {
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __62__SMInitiatorCacheManager__periodicCacheUpdateWithCompletion___block_invoke_355;
      v20[3] = &unk_2788CD0C0;
      v21 = *(a1 + 40);
      objc_copyWeak(&v23, (a1 + 56));
      v22 = *(a1 + 48);
      [WeakRetained _uploadCacheForNonActiveDevice:v3 completion:v20];

      objc_destroyWeak(&v23);
    }

    else
    {
      v13 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [WeakRetained sessionUUID];
        v15 = objc_opt_class();
        v16 = NSStringFromClass(v15);
        v17 = NSStringFromSelector(*(a1 + 64));
        v18 = *(a1 + 32);
        v19 = [WeakRetained cacheUploadInProgress];
        *buf = 138413314;
        v25 = v14;
        v26 = 2112;
        v27 = v16;
        v28 = 2112;
        v29 = v17;
        v30 = 2112;
        v31 = v18;
        v32 = 2112;
        v33 = v19;
        _os_log_impl(&dword_2304B3000, v13, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Initiator,sessionID:%@,%@,%@,non-active uploadCache was canceled %@, active %@", buf, 0x34u);
      }

      dispatch_block_cancel(*(a1 + 40));
      (*(*(a1 + 48) + 16))();
    }
  }

  else
  {
    dispatch_block_cancel(*(a1 + 40));
    (*(*(a1 + 48) + 16))();
  }
}

void __62__SMInitiatorCacheManager__periodicCacheUpdateWithCompletion___block_invoke_355(uint64_t a1)
{
  dispatch_block_cancel(*(a1 + 32));
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [MEMORY[0x277CBEAA8] now];
  v3 = [WeakRetained initiatorContact];
  [v3 setTimeCacheUploadCompletion:v2];

  [WeakRetained _updateInitiatorContactInStore];
  (*(*(a1 + 40) + 16))();
}

- (void)_updateCacheDataWithCompletion:(id)completion
{
  v91 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  if (!completionCopy)
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *v73 = 0;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: completion", v73, 2u);
    }

    goto LABEL_21;
  }

  aSelector = a2;
  initiatorContact = [(SMInitiatorCacheManager *)self initiatorContact];
  shouldBeCleanedUpDate = [initiatorContact shouldBeCleanedUpDate];

  if (!shouldBeCleanedUpDate)
  {
    v79 = 0;
    v80 = &v79;
    v81 = 0x2020000000;
    v82 = 0;
    *v73 = 0;
    v74 = v73;
    v75 = 0x3032000000;
    v76 = __Block_byref_object_copy__96;
    v77 = __Block_byref_object_dispose__96;
    v78 = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __58__SMInitiatorCacheManager__updateCacheDataWithCompletion___block_invoke;
    aBlock[3] = &unk_2788CD110;
    v71 = &v79;
    v70 = completionCopy;
    v72 = v73;
    v38 = _Block_copy(aBlock);
    v37 = objc_alloc(MEMORY[0x277D4AA70]);
    initiatorContact2 = [(SMInitiatorCacheManager *)self initiatorContact];
    cache = [initiatorContact2 cache];
    identifier = [cache identifier];
    uUID = identifier;
    if (!identifier)
    {
      uUID = [MEMORY[0x277CCAD78] UUID];
    }

    initiatorContact3 = [(SMInitiatorCacheManager *)self initiatorContact];
    cache2 = [initiatorContact3 cache];
    deviceStatus = [cache2 deviceStatus];
    v44 = objc_opt_new();
    initiatorContact4 = [(SMInitiatorCacheManager *)self initiatorContact];
    unlockLocation = [initiatorContact4 unlockLocation];
    initiatorContact5 = [(SMInitiatorCacheManager *)self initiatorContact];
    lockLocation = [initiatorContact5 lockLocation];
    initiatorContact6 = [(SMInitiatorCacheManager *)self initiatorContact];
    cache3 = [initiatorContact6 cache];
    mostRecentLocation = [cache3 mostRecentLocation];
    initiatorContact7 = [(SMInitiatorCacheManager *)self initiatorContact];
    startingLocation = [initiatorContact7 startingLocation];
    initiatorContact8 = [(SMInitiatorCacheManager *)self initiatorContact];
    offWristLocation = [initiatorContact8 offWristLocation];
    initiatorContact9 = [(SMInitiatorCacheManager *)self initiatorContact];
    parkedCarLocation = [initiatorContact9 parkedCarLocation];
    initiatorContact10 = [(SMInitiatorCacheManager *)self initiatorContact];
    destinationMapItem = [initiatorContact10 destinationMapItem];
    initiatorContact11 = [(SMInitiatorCacheManager *)self initiatorContact];
    workoutEvents = [initiatorContact11 workoutEvents];
    v18 = [workoutEvents copy];
    v19 = [v37 initWithIdentifier:uUID deviceStatus:deviceStatus locationsDuringSession:v44 unlockLocation:unlockLocation lockLocation:lockLocation mostRecentLocation:mostRecentLocation startingLocation:startingLocation offWristLocation:offWristLocation parkedCarLocation:parkedCarLocation destinationMapItem:destinationMapItem workoutEvents:v18];
    v20 = *(v74 + 5);
    *(v74 + 5) = v19;

    if (!identifier)
    {
    }

    if (!*(v74 + 5))
    {
      v21 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sessionUUID = [(SMInitiatorCacheManager *)self sessionUUID];
        v33 = objc_opt_class();
        v34 = NSStringFromClass(v33);
        v35 = NSStringFromSelector(aSelector);
        initiatorContact12 = [(SMInitiatorCacheManager *)self initiatorContact];
        *buf = 138413058;
        v84 = sessionUUID;
        v85 = 2112;
        v86 = v34;
        v87 = 2112;
        v88 = v35;
        v89 = 2112;
        v90 = initiatorContact12;
        _os_log_error_impl(&dword_2304B3000, v21, OS_LOG_TYPE_ERROR, "#SafetyCache,Initiator,sessionID:%@,%@,%@,default initializing cache due to failure to extract existing initiator contact data,%@", buf, 0x2Au);
      }

      v22 = objc_opt_new();
      v23 = *(v74 + 5);
      *(v74 + 5) = v22;
    }

    shareAllLocations = [MEMORY[0x277D4AB40] shareAllLocations];
    v25 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      sessionUUID2 = [(SMInitiatorCacheManager *)self sessionUUID];
      v27 = objc_opt_class();
      v28 = NSStringFromClass(v27);
      v29 = NSStringFromSelector(aSelector);
      *buf = 138413058;
      v84 = sessionUUID2;
      v85 = 2112;
      v86 = v28;
      v87 = 2112;
      v88 = v29;
      v89 = 1024;
      LODWORD(v90) = shareAllLocations;
      _os_log_impl(&dword_2304B3000, v25, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Initiator,sessionID:%@,%@,%@,updating cache data,shareAllLocations,%d", buf, 0x26u);
    }

    if (shareAllLocations)
    {
      v66[0] = MEMORY[0x277D85DD0];
      v66[1] = 3221225472;
      v66[2] = __58__SMInitiatorCacheManager__updateCacheDataWithCompletion___block_invoke_357;
      v66[3] = &unk_2788CD138;
      v66[4] = self;
      v68 = v73;
      v67 = v38;
      [(SMInitiatorCacheManager *)self _requestSmoothedLocationsWithCompletion:v66];
    }

    else
    {
      [*(v74 + 5) setUnlockLocation:0];
      [*(v74 + 5) setLockLocation:0];
      [*(v74 + 5) setStartingLocation:0];
      [*(v74 + 5) setOffWristLocation:0];
      [*(v74 + 5) setParkedCarLocation:0];
      ++v80[3];
    }

    v63[0] = MEMORY[0x277D85DD0];
    v63[1] = 3221225472;
    v63[2] = __58__SMInitiatorCacheManager__updateCacheDataWithCompletion___block_invoke_2;
    v63[3] = &unk_2788CD160;
    v65 = v73;
    v30 = v38;
    v64 = v30;
    [(SMInitiatorCacheManager *)self _fetchDeviceStatusWithCompletion:v63];
    objc_initWeak(buf, self);
    v58[0] = MEMORY[0x277D85DD0];
    v58[1] = 3221225472;
    v58[2] = __58__SMInitiatorCacheManager__updateCacheDataWithCompletion___block_invoke_3;
    v58[3] = &unk_2788CD188;
    objc_copyWeak(v61, buf);
    v60 = v73;
    v61[1] = aSelector;
    v62 = shareAllLocations;
    v31 = v30;
    v59 = v31;
    [(SMInitiatorCacheManager *)self _fetchLocationWithCompletion:v58];

    objc_destroyWeak(v61);
    objc_destroyWeak(buf);

    _Block_object_dispose(v73, 8);
    _Block_object_dispose(&v79, 8);
LABEL_21:
    v8 = completionCopy;
    goto LABEL_22;
  }

  v7 = objc_opt_new();
  v8 = completionCopy;
  (*(completionCopy + 2))(completionCopy, v7);

LABEL_22:
}

void *__58__SMInitiatorCacheManager__updateCacheDataWithCompletion___block_invoke(void *result)
{
  if (++*(*(result[5] + 8) + 24) == 3)
  {
    return (*(result[4] + 16))(result[4], *(*(result[6] + 8) + 40));
  }

  return result;
}

uint64_t __58__SMInitiatorCacheManager__updateCacheDataWithCompletion___block_invoke_357(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  [v3 storeCAMetricForAllLocations:v4];
  v5 = [MEMORY[0x277CBEB98] setWithArray:v4];

  [*(*(a1[6] + 8) + 40) setLocationsDuringSession:v5];
  v6 = *(a1[5] + 16);

  return v6();
}

uint64_t __58__SMInitiatorCacheManager__updateCacheDataWithCompletion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  [*(*(*(a1 + 40) + 8) + 40) setDeviceStatus:a2];
  v3 = *(*(a1 + 32) + 16);

  return v3();
}

void __58__SMInitiatorCacheManager__updateCacheDataWithCompletion___block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (v5 && !a3)
  {
    [*(*(*(a1 + 40) + 8) + 40) setMostRecentLocation:v5];
    v7 = [WeakRetained initiatorContact];
    v8 = [v7 startingLocation];
    if ([v8 isValid])
    {
    }

    else
    {
      v9 = [v5 isValid];

      if (v9)
      {
        v10 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v11 = [WeakRetained sessionUUID];
          v12 = objc_opt_class();
          v13 = NSStringFromClass(v12);
          v14 = NSStringFromSelector(*(a1 + 56));
          [v5 latitude];
          v16 = v15;
          [v5 longitude];
          v18 = v17;
          [v5 hunc];
          v21 = 138413571;
          v22 = v11;
          v23 = 2112;
          v24 = v13;
          v25 = 2112;
          v26 = v14;
          v27 = 2053;
          v28 = v16;
          v29 = 2053;
          v30 = v18;
          v31 = 2053;
          v32 = v19;
          _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Initiator,sessionID:%@,%@,%@,saving starting location,lat,%{sensitive}.4f,lon,%{sensitive}.4f,hunc,%{sensitive}.1f", &v21, 0x3Eu);
        }

        v20 = [WeakRetained initiatorContact];
        [v20 setStartingLocation:v5];

        [WeakRetained _updateInitiatorContactInStore];
        if (*(a1 + 64) == 1)
        {
          [*(*(*(a1 + 40) + 8) + 40) setStartingLocation:v5];
        }
      }
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)_requestSmoothedLocationsWithCompletion:(id)completion
{
  v38 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  if (completionCopy)
  {
    aSelector = a2;
    v6 = objc_alloc(MEMORY[0x277CCA970]);
    sessionManagerState = [(SMInitiatorCacheManager *)self sessionManagerState];
    configuration = [sessionManagerState configuration];
    sessionStartDate = [configuration sessionStartDate];
    v10 = [MEMORY[0x277CBEAA8] now];
    v11 = [v6 initWithStartDate:sessionStartDate endDate:v10];

    LOBYTE(v24) = 1;
    v12 = [objc_alloc(MEMORY[0x277D01320]) initWithDateInterval:v11 horizontalAccuracy:1000 batchSize:0 boundingBoxLocation:14 type:1 smoothingRequired:1 downsampleRequired:250.0 smoothingErrorThreshold:30.0 ascending:v24];
    objc_initWeak(&location, self);
    sessionUUID = [(SMInitiatorCacheManager *)self sessionUUID];
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    v16 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      sessionUUID2 = [(SMInitiatorCacheManager *)self sessionUUID];
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      v20 = NSStringFromSelector(aSelector);
      *buf = 138412802;
      v33 = sessionUUID2;
      v34 = 2112;
      v35 = v19;
      v36 = 2112;
      v37 = v20;
      _os_log_impl(&dword_2304B3000, v16, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Initiator,sessionID:%@,%@,%@,fetching smoothed locations", buf, 0x20u);
    }

    locationManager = [(SMInitiatorCacheManager *)self locationManager];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __67__SMInitiatorCacheManager__requestSmoothedLocationsWithCompletion___block_invoke;
    v26[3] = &unk_2788CD1D0;
    objc_copyWeak(v30, &location);
    v29 = completionCopy;
    v22 = sessionUUID;
    v27 = v22;
    v23 = v15;
    v28 = v23;
    v30[1] = aSelector;
    [locationManager fetchStoredLocationsWithOptions:v12 handler:v26];

    objc_destroyWeak(v30);
    objc_destroyWeak(&location);
  }

  else
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: completion", buf, 2u);
    }
  }
}

void __67__SMInitiatorCacheManager__requestSmoothedLocationsWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = [WeakRetained queue];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __67__SMInitiatorCacheManager__requestSmoothedLocationsWithCompletion___block_invoke_2;
    v14[3] = &unk_2788C56E8;
    v15 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11 = *(a1 + 64);
    v16 = v10;
    v20 = v11;
    v17 = v6;
    v18 = v5;
    v19 = *(a1 + 48);
    dispatch_async(v9, v14);
  }

  else
  {
    v12 = *(a1 + 48);
    v13 = objc_opt_new();
    (*(v12 + 16))(v12, v13);
  }
}

void __67__SMInitiatorCacheManager__requestSmoothedLocationsWithCompletion___block_invoke_2(uint64_t a1)
{
  v46 = *MEMORY[0x277D85DE8];
  v1 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 40);
    v4 = NSStringFromSelector(*(a1 + 72));
    v5 = *(a1 + 48);
    v6 = [*(a1 + 56) count];
    *buf = 138413314;
    v37 = v2;
    v38 = 2112;
    v39 = v3;
    v40 = 2112;
    v41 = v4;
    v42 = 2112;
    v43 = v5;
    v44 = 2048;
    v45 = v6;
    _os_log_impl(&dword_2304B3000, v1, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Initiator,sessionID:%@,%@,%@,fetched smoothed locations with Error: %@, locationCount: %lu", buf, 0x34u);
  }

  if (*(a1 + 48))
  {
    v7 = *(a1 + 64);
    v8 = objc_opt_new();
    (*(v7 + 16))(v7, v8);
  }

  else
  {
    v8 = objc_opt_new();
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v9 = *(a1 + 56);
    v10 = [v9 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v10)
    {
      v12 = v10;
      v13 = *v32;
      v14 = 0x277D4A000uLL;
      v15 = MEMORY[0x277D86220];
      *&v11 = 138412802;
      v28 = v11;
      v29 = v8;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v32 != v13)
          {
            objc_enumerationMutation(v9);
          }

          v17 = *(*(&v31 + 1) + 8 * i);
          if ([*(v14 + 2856) isCLLocationValid:{v17, v28}])
          {
            [v8 addObject:v17];
          }

          else if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            v18 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
            if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
            {
              v19 = v9;
              v20 = v15;
              v21 = *(a1 + 32);
              v22 = *(a1 + 40);
              v23 = NSStringFromSelector(*(a1 + 72));
              *buf = v28;
              v37 = v21;
              v9 = v19;
              v38 = 2112;
              v39 = v22;
              v15 = v20;
              v40 = 2112;
              v41 = v23;
              _os_log_impl(&dword_2304B3000, v18, OS_LOG_TYPE_INFO, "#SafetyCache,Initiator,sessionID:%@,%@,%@,filtering out invalid location", buf, 0x20u);

              v8 = v29;
              v14 = 0x277D4A000;
            }
          }
        }

        v12 = [v9 countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v12);
    }

    if ([v8 count])
    {
      v24 = [[_RTMap alloc] initWithInput:v8];
      v25 = [(_RTMap *)v24 withBlock:&__block_literal_global_366_0];

      v26 = *(*(a1 + 64) + 16);
    }

    else
    {
      v27 = *(a1 + 64);
      v25 = objc_opt_new();
      v26 = *(v27 + 16);
    }

    v26();
  }
}

id __67__SMInitiatorCacheManager__requestSmoothedLocationsWithCompletion___block_invoke_363(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D4AB28];
  v3 = a2;
  v4 = [[v2 alloc] initWithCLLocation:v3];

  return v4;
}

- (void)_fetchDeviceStatusWithCompletion:(id)completion
{
  v65 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  if (completionCopy)
  {
    objc_initWeak(&location, self);
    *v54 = 0;
    v55 = v54;
    v56 = 0x2020000000;
    v57 = 0;
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    sessionUUID = [(SMInitiatorCacheManager *)self sessionUUID];
    when = dispatch_time(0, 5000000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __60__SMInitiatorCacheManager__fetchDeviceStatusWithCompletion___block_invoke;
    block[3] = &unk_2788CD1F8;
    objc_copyWeak(v53, &location);
    v9 = sessionUUID;
    v51 = v9;
    v10 = v7;
    v52 = v10;
    v53[1] = a2;
    v11 = dispatch_block_create(DISPATCH_BLOCK_ASSIGN_CURRENT, block);
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __60__SMInitiatorCacheManager__fetchDeviceStatusWithCompletion___block_invoke_368;
    v46[3] = &unk_2788CD1F8;
    objc_copyWeak(v49, &location);
    v12 = v9;
    v47 = v12;
    v13 = v10;
    v48 = v13;
    v49[1] = a2;
    v14 = dispatch_block_create(DISPATCH_BLOCK_ASSIGN_CURRENT, v46);
    v45[0] = 0;
    v45[1] = v45;
    v45[2] = 0x2020000000;
    v45[3] = 0;
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __60__SMInitiatorCacheManager__fetchDeviceStatusWithCompletion___block_invoke_369;
    v36[3] = &unk_2788CD220;
    objc_copyWeak(v44, &location);
    v15 = v12;
    v37 = v15;
    v16 = v13;
    v38 = v16;
    v44[1] = a2;
    v30 = v11;
    v39 = v30;
    v17 = v14;
    v40 = v17;
    v42 = v45;
    v43 = v54;
    v41 = completionCopy;
    [(SMInitiatorCacheManager *)self setDeviceStatusReturnBlock:v36];
    v18 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [(SMInitiatorCacheManager *)self sessionUUID:when];
      v20 = objc_opt_class();
      v21 = NSStringFromClass(v20);
      v22 = NSStringFromSelector(a2);
      *buf = 138412802;
      v60 = v19;
      v61 = 2112;
      v62 = v21;
      v63 = 2112;
      v64 = v22;
      _os_log_impl(&dword_2304B3000, v18, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Initiator,sessionID:%@,%@,%@,fetching device status", buf, 0x20u);
    }

    if ([(SMInitiatorCacheManager *)self wifiStrength])
    {
      deviceStatusReturnBlock = [(SMInitiatorCacheManager *)self deviceStatusReturnBlock];
      (*(deviceStatusReturnBlock + 16))(deviceStatusReturnBlock, 2);
    }

    else
    {
      [(SMInitiatorCacheManager *)self setWifiLinkQualityFetchInProgress:1];
      deviceStatusReturnBlock = [(SMInitiatorCacheManager *)self queue];
      dispatch_after(when, deviceStatusReturnBlock, v30);
    }

    if ([(SMInitiatorCacheManager *)self cellularStrength])
    {
      deviceStatusReturnBlock2 = [(SMInitiatorCacheManager *)self deviceStatusReturnBlock];
      (*(deviceStatusReturnBlock2 + 16))(deviceStatusReturnBlock2, 3);
    }

    else
    {
      [(SMInitiatorCacheManager *)self setCellularLinkQualityFetchInProgress:1];
      deviceStatusReturnBlock2 = [(SMInitiatorCacheManager *)self queue];
      dispatch_after(when, deviceStatusReturnBlock2, v17);
    }

    batteryManager = [(SMInitiatorCacheManager *)self batteryManager];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __60__SMInitiatorCacheManager__fetchDeviceStatusWithCompletion___block_invoke_372;
    v31[3] = &unk_2788CD270;
    objc_copyWeak(v35, &location);
    v27 = v15;
    v32 = v27;
    v28 = v16;
    v35[1] = a2;
    v33 = v28;
    v34 = v54;
    [batteryManager fetchCurrentBatteryPercent:v31];

    objc_destroyWeak(v35);
    objc_destroyWeak(v44);
    _Block_object_dispose(v45, 8);

    objc_destroyWeak(v49);
    objc_destroyWeak(v53);

    _Block_object_dispose(v54, 8);
    objc_destroyWeak(&location);
  }

  else
  {
    v24 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *v54 = 0;
      _os_log_error_impl(&dword_2304B3000, v24, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: completion", v54, 2u);
    }
  }
}

void __60__SMInitiatorCacheManager__fetchDeviceStatusWithCompletion___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (!WeakRetained)
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      v10 = *(a1 + 40);
      v11 = NSStringFromSelector(*(a1 + 56));
      v12 = 138412802;
      v13 = v9;
      v14 = 2112;
      v15 = v10;
      v16 = 2112;
      v17 = v11;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "#SafetyCache,Initiator,sessionID:%@,%@,%@,object has been cleaned up", &v12, 0x20u);
    }

    goto LABEL_10;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 32);
      v5 = *(a1 + 40);
      v6 = NSStringFromSelector(*(a1 + 56));
      v12 = 138412802;
      v13 = v4;
      v14 = 2112;
      v15 = v5;
      v16 = 2112;
      v17 = v6;
      _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_INFO, "#SafetyCache,Initiator,sessionID:%@,%@,%@,wifiDeviceStatusTimeoutBlock timeout fired", &v12, 0x20u);
    }
  }

  v7 = [WeakRetained deviceStatusReturnBlock];

  if (v7)
  {
    v8 = [WeakRetained deviceStatusReturnBlock];
    (*(v8 + 16))(v8, 2);
LABEL_10:
  }
}

void __60__SMInitiatorCacheManager__fetchDeviceStatusWithCompletion___block_invoke_368(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (!WeakRetained)
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      v10 = *(a1 + 40);
      v11 = NSStringFromSelector(*(a1 + 56));
      v12 = 138412802;
      v13 = v9;
      v14 = 2112;
      v15 = v10;
      v16 = 2112;
      v17 = v11;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "#SafetyCache,Initiator,sessionID:%@,%@,%@,object has been cleaned up", &v12, 0x20u);
    }

    goto LABEL_10;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 32);
      v5 = *(a1 + 40);
      v6 = NSStringFromSelector(*(a1 + 56));
      v12 = 138412802;
      v13 = v4;
      v14 = 2112;
      v15 = v5;
      v16 = 2112;
      v17 = v6;
      _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_INFO, "#SafetyCache,Initiator,sessionID:%@,%@,%@,cellularDeviceStatusTimeoutBlock timeout fired", &v12, 0x20u);
    }
  }

  v7 = [WeakRetained deviceStatusReturnBlock];

  if (v7)
  {
    v8 = [WeakRetained deviceStatusReturnBlock];
    (*(v8 + 16))(v8, 3);
LABEL_10:
  }
}

void __60__SMInitiatorCacheManager__fetchDeviceStatusWithCompletion___block_invoke_369(uint64_t a1, uint64_t a2)
{
  v39 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 88));
  v5 = WeakRetained;
  if (!WeakRetained)
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v9 = *(a1 + 40);
      v10 = NSStringFromSelector(*(a1 + 96));
      *buf = 138412802;
      v28 = v8;
      v29 = 2112;
      v30 = v9;
      v31 = 2112;
      v32 = v10;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "#SafetyCache,Initiator,sessionID:%@,%@,%@,deviceStatusReturnBlock, object has been cleaned up", buf, 0x20u);
    }

    goto LABEL_19;
  }

  if (a2 == 3)
  {
    if (![WeakRetained cellularLinkQualityFetchInProgress])
    {
      goto LABEL_11;
    }

    [v5 setCellularLinkQualityFetchInProgress:0];
    v6 = 56;
    goto LABEL_10;
  }

  if (a2 == 2 && [WeakRetained wifiLinkQualityFetchInProgress])
  {
    [v5 setWifiLinkQualityFetchInProgress:0];
    v6 = 48;
LABEL_10:
    dispatch_block_cancel(*(a1 + v6));
  }

LABEL_11:
  if (++*(*(*(a1 + 72) + 8) + 24) == 3)
  {
    v11 = objc_alloc(MEMORY[0x277D4AAB8]);
    v26 = [v5 initiatorContact];
    v12 = [v26 cache];
    v13 = [v12 deviceStatus];
    v14 = [v13 identifier];
    v15 = v14;
    if (!v14)
    {
      v15 = [MEMORY[0x277CCAD78] UUID];
    }

    v16 = *(*(*(a1 + 80) + 8) + 24);
    v17 = [v5 cellularStrength];
    v18 = [MEMORY[0x277CBEAA8] now];
    v7 = [v11 initWithIdentifier:v15 batteryRemaining:v16 cellularStrength:v17 date:v18 wifiStrength:{objc_msgSend(v5, "wifiStrength")}];

    if (!v14)
    {
    }

    v19 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [v5 sessionUUID];
      v21 = *(a1 + 40);
      v22 = NSStringFromSelector(*(a1 + 96));
      v23 = [v5 wifiStrength];
      v24 = [v5 cellularStrength];
      v25 = *(*(*(a1 + 80) + 8) + 24);
      *buf = 138413570;
      v28 = v20;
      v29 = 2112;
      v30 = v21;
      v31 = 2112;
      v32 = v22;
      v33 = 1024;
      v34 = v23;
      v35 = 1024;
      v36 = v24;
      v37 = 1024;
      v38 = v25;
      _os_log_impl(&dword_2304B3000, v19, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Initiator,sessionID:%@,%@,%@,deviceStatusReturnBlock,wifistrength:%d,cellularstrength:%d,batteryRemaining:%d", buf, 0x32u);
    }

    [v5 setDeviceStatusReturnBlock:0];
    (*(*(a1 + 64) + 16))();
LABEL_19:
  }
}

void __60__SMInitiatorCacheManager__fetchDeviceStatusWithCompletion___block_invoke_372(uint64_t a1, int a2)
{
  v26 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __60__SMInitiatorCacheManager__fetchDeviceStatusWithCompletion___block_invoke_373;
    block[3] = &unk_2788CD248;
    v15 = v5;
    v7 = *(a1 + 40);
    v8 = *(a1 + 64);
    v19 = a2;
    v9 = *(a1 + 48);
    v16 = v7;
    v17 = v9;
    v18 = v8;
    dispatch_async(v6, block);

    v10 = v15;
  }

  else
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 32);
      v12 = *(a1 + 40);
      v13 = NSStringFromSelector(*(a1 + 64));
      *buf = 138412802;
      v21 = v11;
      v22 = 2112;
      v23 = v12;
      v24 = 2112;
      v25 = v13;
      _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "#SafetyCache,Initiator,sessionID:%@,%@,%@,object has been cleaned up", buf, 0x20u);
    }
  }
}

void __60__SMInitiatorCacheManager__fetchDeviceStatusWithCompletion___block_invoke_373(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = [*(a1 + 32) sessionUUID];
      v4 = *(a1 + 40);
      v5 = NSStringFromSelector(*(a1 + 56));
      v6 = *(a1 + 64);
      v9 = 138413058;
      v10 = v3;
      v11 = 2112;
      v12 = v4;
      v13 = 2112;
      v14 = v5;
      v15 = 1024;
      v16 = v6;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "#SafetyCache,Initiator,sessionID:%@,%@,%@,Updating battery percent %d", &v9, 0x26u);
    }
  }

  *(*(*(a1 + 48) + 8) + 24) = *(a1 + 64);
  v7 = [*(a1 + 32) deviceStatusReturnBlock];

  if (v7)
  {
    v8 = [*(a1 + 32) deviceStatusReturnBlock];
    v8[2](v8, 1);
  }
}

- (BOOL)_isEligibleForCacheUpdateAndPerformRecoveryIfNecessary
{
  v40 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D4AAE0] zelkovaHandoffEnabled])
  {
    activeSessionDetailsZone = [(SMInitiatorCacheManager *)self activeSessionDetailsZone];
    isActiveSessionDetailsOutOfSync = [activeSessionDetailsZone isActiveSessionDetailsOutOfSync];

    if (isActiveSessionDetailsOutOfSync)
    {
      v6 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sessionUUID = [(SMInitiatorCacheManager *)self sessionUUID];
        v28 = objc_opt_class();
        v29 = NSStringFromClass(v28);
        v30 = NSStringFromSelector(a2);
        v34 = 138412802;
        v35 = sessionUUID;
        v36 = 2112;
        v37 = v29;
        v38 = 2112;
        v39 = v30;
        _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "#SafetyCache,Initiator,sessionID:%@,%@,%@, activeSessionDetails is out of sync", &v34, 0x20u);
      }

      activeSessionDetailsZone2 = [(SMInitiatorCacheManager *)self activeSessionDetailsZone];
      [activeSessionDetailsZone2 updateActiveSessionDetailsFromCloudKitRecord];
    }

    messagingService = [(SMInitiatorCacheManager *)self messagingService];
    deviceIdentifier = [messagingService deviceIdentifier];

    activeSessionDetailsZone3 = [(SMInitiatorCacheManager *)self activeSessionDetailsZone];
    sessionManagerState = [(SMInitiatorCacheManager *)self sessionManagerState];
    v12 = [activeSessionDetailsZone3 isEligibleForCacheUpdateForCurrentDeviceIdentifier:deviceIdentifier sessionManagerState:sessionManagerState];

    if (v12)
    {
      v13 = 1;
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
LABEL_18:

        return v13;
      }

      v14 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
LABEL_17:

        v13 = v12;
        goto LABEL_18;
      }

      activeSessionDetailsZone4 = [(SMInitiatorCacheManager *)self activeSessionDetailsZone];
      getLatestActiveSessionDetails = [activeSessionDetailsZone4 getLatestActiveSessionDetails];
      v34 = 136315394;
      v35 = "[SMInitiatorCacheManager _isEligibleForCacheUpdateAndPerformRecoveryIfNecessary]";
      v36 = 2112;
      v37 = getLatestActiveSessionDetails;
      _os_log_impl(&dword_2304B3000, v14, OS_LOG_TYPE_INFO, "%s, activeSessionDetails, %@, isEligible YES", &v34, 0x16u);
    }

    else
    {
      sessionManagerState2 = [(SMInitiatorCacheManager *)self sessionManagerState];
      configuration = [sessionManagerState2 configuration];
      getLatestActiveSessionDetails = [configuration sessionID];

      sessionManagerState3 = [(SMInitiatorCacheManager *)self sessionManagerState];
      activePairedDeviceIdentifier = [sessionManagerState3 activePairedDeviceIdentifier];

      v21 = objc_alloc(MEMORY[0x277D4AC00]);
      date = [MEMORY[0x277CBEAA8] date];
      uUID = [MEMORY[0x277CCAD78] UUID];
      v14 = [v21 initWithDate:date messageID:uUID sessionID:getLatestActiveSessionDetails deviceToRequest:activePairedDeviceIdentifier];

      messagingService2 = [(SMInitiatorCacheManager *)self messagingService];
      [messagingService2 sendIDSMessageToPairedDevice:v14 completion:&__block_literal_global_378];

      v25 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
      {
        activeSessionDetailsZone5 = [(SMInitiatorCacheManager *)self activeSessionDetailsZone];
        getLatestActiveSessionDetails2 = [activeSessionDetailsZone5 getLatestActiveSessionDetails];
        sessionManagerState4 = [(SMInitiatorCacheManager *)self sessionManagerState];
        v34 = 136315651;
        v35 = "[SMInitiatorCacheManager _isEligibleForCacheUpdateAndPerformRecoveryIfNecessary]";
        v36 = 2112;
        v37 = getLatestActiveSessionDetails2;
        v38 = 2117;
        v39 = sessionManagerState4;
        _os_log_fault_impl(&dword_2304B3000, v25, OS_LOG_TYPE_FAULT, "%s, Error-Mismatch activeSessionDetails, %@, sessionManagerState: %{sensitive}@, current device thinks its active and try to perform cacheUpdate; have requested stateUpdate in order to become non-active. Stop cacheUpdate and cacheUpload.", &v34, 0x20u);
      }
    }

    goto LABEL_17;
  }

  v13 = 1;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    deviceIdentifier = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(deviceIdentifier, OS_LOG_TYPE_INFO))
    {
      v34 = 136315138;
      v35 = "[SMInitiatorCacheManager _isEligibleForCacheUpdateAndPerformRecoveryIfNecessary]";
      _os_log_impl(&dword_2304B3000, deviceIdentifier, OS_LOG_TYPE_INFO, "%s: Zelkova Handoff is not enabled; skip the check for cache upload eligibility; return YES", &v34, 0xCu);
    }

    goto LABEL_18;
  }

  return v13;
}

void __81__SMInitiatorCacheManager__isEligibleForCacheUpdateAndPerformRecoveryIfNecessary__block_invoke(uint64_t a1, int a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = 136315650;
      v7 = "[SMInitiatorCacheManager _isEligibleForCacheUpdateAndPerformRecoveryIfNecessary]_block_invoke";
      v8 = 1024;
      v9 = a2;
      v10 = 2112;
      v11 = v4;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "%s, sent state update request message with success: %d and error: %@", &v6, 0x1Cu);
    }
  }
}

- (void)_updateInitiatorContactWithConversation:(id)conversation
{
  if (!conversation)
  {
    v7 = v3;
    v8 = v4;
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&dword_2304B3000, v5, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: conversation", v6, 2u);
    }
  }
}

- (void)_uploadCache:(id)cache completion:(id)completion
{
  v106 = *MEMORY[0x277D85DE8];
  cacheCopy = cache;
  completionCopy = completion;
  if (completionCopy)
  {
    aSelector = a2;
    if (!cacheCopy)
    {
      v11 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sessionUUID = [(SMInitiatorCacheManager *)self sessionUUID];
        v72 = objc_opt_class();
        v73 = NSStringFromClass(v72);
        v74 = NSStringFromSelector(aSelector);
        *buf = 138412802;
        v97 = sessionUUID;
        v98 = 2112;
        v99 = v73;
        v100 = 2112;
        v101 = v74;
        _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "#SafetyCache,Initiator,sessionID:%@,%@,%@,no cache to upload", buf, 0x20u);
      }

      goto LABEL_6;
    }

    initiatorContact = [(SMInitiatorCacheManager *)self initiatorContact];
    shouldBeCleanedUpDate = [initiatorContact shouldBeCleanedUpDate];

    if (shouldBeCleanedUpDate)
    {
      v11 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        sessionUUID2 = [(SMInitiatorCacheManager *)self sessionUUID];
        v13 = objc_opt_class();
        v14 = NSStringFromClass(v13);
        v15 = NSStringFromSelector(aSelector);
        identifier = [cacheCopy identifier];
        *buf = 138413058;
        v97 = sessionUUID2;
        v98 = 2112;
        v99 = v14;
        v100 = 2112;
        v101 = v15;
        v102 = 2112;
        v103 = identifier;
        _os_log_impl(&dword_2304B3000, v11, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Initiator,sessionID:%@,%@,%@,initiatorContact should be cleaned up,cache identifier,%@", buf, 0x2Au);
      }

LABEL_6:

      completionCopy[2](completionCopy);
      goto LABEL_35;
    }

    v95[0] = 0;
    v95[1] = v95;
    v95[2] = 0x2020000000;
    v95[3] = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __51__SMInitiatorCacheManager__uploadCache_completion___block_invoke;
    aBlock[3] = &unk_2788CD298;
    v94 = v95;
    v93 = completionCopy;
    v18 = _Block_copy(aBlock);
    v19 = [(SMInitiatorCacheManager *)self _scheduleKeyReleaseWithCompletion:v18];
    initiatorContact2 = [(SMInitiatorCacheManager *)self initiatorContact];
    scheduledSendExpiryDate = [initiatorContact2 scheduledSendExpiryDate];
    v22 = scheduledSendExpiryDate;
    if (scheduledSendExpiryDate)
    {
      v23 = scheduledSendExpiryDate;
    }

    else
    {
      v23 = v19;
    }

    v76 = v23;

    xpcActivityManager = [(SMInitiatorCacheManager *)self xpcActivityManager];
    runningTask = [xpcActivityManager runningTask];
    if (runningTask)
    {
      xpcActivityManager2 = [(SMInitiatorCacheManager *)self xpcActivityManager];
      runningTask2 = [xpcActivityManager2 runningTask];
      identifier2 = [runningTask2 identifier];
      getXpcActivityIdentifier = [(SMInitiatorCacheManager *)self getXpcActivityIdentifier];
      v30 = identifier2 == getXpcActivityIdentifier;

      if (v30)
      {
        v31 = [SMCloudKitQosOptions alloc];
        xpcActivityManager3 = [(SMInitiatorCacheManager *)self xpcActivityManager];
        runningTask3 = [xpcActivityManager3 runningTask];
        activity = [runningTask3 activity];
        v80 = [(SMCloudKitQosOptions *)v31 initWithDefaultQos:0 masqueradeBundleID:0 xpcActivity:activity];

LABEL_21:
        v89[0] = MEMORY[0x277D85DD0];
        v89[1] = 3221225472;
        v89[2] = __51__SMInitiatorCacheManager__uploadCache_completion___block_invoke_2;
        v89[3] = &unk_2788C4E00;
        v89[4] = self;
        v91 = aSelector;
        v35 = v18;
        v90 = v35;
        [(SMInitiatorCacheManager *)self _writeActiveSessionDetails:2 qos:v80 completion:v89];
        sessionUUID3 = [(SMInitiatorCacheManager *)self sessionUUID];
        v36 = objc_opt_class();
        v77 = NSStringFromClass(v36);
        queue = [(SMInitiatorCacheManager *)self queue];
        v38 = [SMInitiatorEligibility checkRegulatoryDomainPassedWithQueue:queue];

        if (v38)
        {
          outputToDictionary = [cacheCopy outputToDictionary];
          v75 = [SMCryptoUtilities getSerializedJsonData:outputToDictionary];

          v40 = [v75 md5];
          hexString = [v40 hexString];

          initiatorContact3 = [(SMInitiatorCacheManager *)self initiatorContact];
          safetyCacheKey = [initiatorContact3 safetyCacheKey];
          v79 = [SMCryptoUtilities encryptSafetyCache:v75 withKey:safetyCacheKey];

          v44 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
          if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
          {
            sessionUUID4 = [(SMInitiatorCacheManager *)self sessionUUID];
            v46 = objc_opt_class();
            v47 = NSStringFromClass(v46);
            v48 = NSStringFromSelector(aSelector);
            identifier3 = [cacheCopy identifier];
            identifierHash = [cacheCopy identifierHash];
            *buf = 138413314;
            v97 = sessionUUID4;
            v98 = 2112;
            v99 = v47;
            v100 = 2112;
            v101 = v48;
            v102 = 2112;
            v103 = identifier3;
            v104 = 2048;
            v105 = identifierHash;
            _os_log_impl(&dword_2304B3000, v44, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Initiator,sessionID:%@,%@,%@,uploading cache,cache identifier,%@,hash,%lu", buf, 0x34u);
          }

          v51 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
          if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
          {
            sessionUUID5 = [(SMInitiatorCacheManager *)self sessionUUID];
            v53 = objc_opt_class();
            v54 = NSStringFromClass(v53);
            v55 = NSStringFromSelector(aSelector);
            v56 = [v79 length];
            +[RTRuntime footprint];
            *buf = 138413314;
            v97 = sessionUUID5;
            v98 = 2112;
            v99 = v54;
            v100 = 2112;
            v101 = v55;
            v102 = 2048;
            v103 = v56;
            v104 = 2048;
            v105 = v57;
            _os_log_impl(&dword_2304B3000, v51, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Initiator,sessionID:%@,%@,%@,uploading cache,cache size,%lu, current footprint, %.4f MB", buf, 0x34u);
          }

          v58 = [v79 length];
          initiatorContact4 = [(SMInitiatorCacheManager *)self initiatorContact];
          [initiatorContact4 maxCacheSize];
          LODWORD(v58) = v60 < v58;

          if (v58)
          {
            v61 = [v79 length];
            initiatorContact5 = [(SMInitiatorCacheManager *)self initiatorContact];
            [initiatorContact5 setMaxCacheSize:v61];

            [(SMInitiatorCacheManager *)self _updateInitiatorContactInStore];
          }

          caMetricCacheUpdate = [(SMInitiatorCacheManager *)self caMetricCacheUpdate];
          v64 = caMetricCacheUpdate == 0;

          if (v64)
          {
            v65 = objc_alloc_init(SMCAMetricCacheUpdate);
            [(SMInitiatorCacheManager *)self setCaMetricCacheUpdate:v65];
          }

          v66 = [v79 length];
          caMetricCacheUpdate2 = [(SMInitiatorCacheManager *)self caMetricCacheUpdate];
          [caMetricCacheUpdate2 setCacheSize:v66];

          objc_initWeak(buf, self);
          v82[0] = MEMORY[0x277D85DD0];
          v82[1] = 3221225472;
          v82[2] = __51__SMInitiatorCacheManager__uploadCache_completion___block_invoke_381;
          v82[3] = &unk_2788CD2C0;
          objc_copyWeak(v88, buf);
          v83 = sessionUUID3;
          v84 = v77;
          v88[1] = aSelector;
          v87 = v35;
          v85 = cacheCopy;
          v68 = hexString;
          v86 = v68;
          [(SMInitiatorCacheManager *)self updateSafetyCacheWithRetry:2 data:v79 cacheReleaseTime:v76 qos:v80 completion:v82];

          objc_destroyWeak(v88);
          objc_destroyWeak(buf);
        }

        else
        {
          v69 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
          if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
          {
            v70 = NSStringFromSelector(aSelector);
            *buf = 138412802;
            v97 = sessionUUID3;
            v98 = 2112;
            v99 = v77;
            v100 = 2112;
            v101 = v70;
            _os_log_impl(&dword_2304B3000, v69, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Initiator,sessionID:%@,%@,%@,failed regulatory domain check", buf, 0x20u);
          }

          v35[2](v35);
        }

        _Block_object_dispose(v95, 8);
        goto LABEL_35;
      }
    }

    else
    {
    }

    v80 = [[SMCloudKitQosOptions alloc] initWithDefaultQos:1 masqueradeBundleID:0 xpcActivity:0];
    goto LABEL_21;
  }

  v17 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2304B3000, v17, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: completion", buf, 2u);
  }

LABEL_35:
}

uint64_t __51__SMInitiatorCacheManager__uploadCache_completion___block_invoke(uint64_t result)
{
  if (++*(*(*(result + 40) + 8) + 24) == 3)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

void __51__SMInitiatorCacheManager__uploadCache_completion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_3;
    }

    v6 = [*(a1 + 32) sessionUUID];
    v10 = objc_opt_class();
    v8 = NSStringFromClass(v10);
    v9 = NSStringFromSelector(*(a1 + 48));
    v11 = 138413058;
    v12 = v6;
    v13 = 2112;
    v14 = v8;
    v15 = 2112;
    v16 = v9;
    v17 = 2112;
    v18 = v4;
    _os_log_error_impl(&dword_2304B3000, v5, OS_LOG_TYPE_ERROR, "#SafetyCache,Initiator,sessionID:%@,%@,%@,failed to write active session details with error %@", &v11, 0x2Au);
LABEL_9:

    goto LABEL_3;
  }

  if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    goto LABEL_4;
  }

  v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [*(a1 + 32) sessionUUID];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = NSStringFromSelector(*(a1 + 48));
    v11 = 138412802;
    v12 = v6;
    v13 = 2112;
    v14 = v8;
    v15 = 2112;
    v16 = v9;
    _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "#SafetyCache,Initiator,sessionID:%@,%@,%@,Active Session Details stored successfully", &v11, 0x20u);
    goto LABEL_9;
  }

LABEL_3:

LABEL_4:
  (*(*(a1 + 40) + 16))();
}

void __51__SMInitiatorCacheManager__uploadCache_completion___block_invoke_381(uint64_t a1, uint64_t a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _processUploadCacheResponseForCache:*(a1 + 48) hashString:*(a1 + 56) success:a2 error:v5];
  }

  else
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v10 = *(a1 + 40);
      v11 = NSStringFromSelector(*(a1 + 80));
      v12 = 138413314;
      v13 = v9;
      v14 = 2112;
      v15 = v10;
      v16 = 2112;
      v17 = v11;
      v18 = 1024;
      v19 = a2;
      v20 = 2112;
      v21 = v5;
      _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Initiator,sessionID:%@,%@,%@,cache manager released before update safety cache response,success,%d,error,%@", &v12, 0x30u);
    }
  }

  (*(*(a1 + 64) + 16))();
}

- (void)_updateCacheDataForNonActiveDeviceWithCompletion:(id)completion
{
  v39 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  if (completionCopy)
  {
    initiatorContact = [(SMInitiatorCacheManager *)self initiatorContact];
    shouldBeCleanedUpDate = [initiatorContact shouldBeCleanedUpDate];

    if (shouldBeCleanedUpDate)
    {
      v8 = objc_opt_new();
      completionCopy[2](completionCopy, v8);
    }

    else
    {
      *v25 = 0;
      v26 = v25;
      v27 = 0x3032000000;
      v28 = __Block_byref_object_copy__96;
      v29 = __Block_byref_object_dispose__96;
      v30 = 0;
      initiatorContact2 = [(SMInitiatorCacheManager *)self initiatorContact];
      cache = [initiatorContact2 cache];
      v12 = [cache copy];
      v13 = *(v26 + 5);
      *(v26 + 5) = v12;

      if (!*(v26 + 5))
      {
        v14 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          sessionUUID = [(SMInitiatorCacheManager *)self sessionUUID];
          v16 = objc_opt_class();
          v17 = NSStringFromClass(v16);
          v18 = NSStringFromSelector(a2);
          initiatorContact3 = [(SMInitiatorCacheManager *)self initiatorContact];
          *buf = 138413058;
          v32 = sessionUUID;
          v33 = 2112;
          v34 = v17;
          v35 = 2112;
          v36 = v18;
          v37 = 2112;
          v38 = initiatorContact3;
          _os_log_impl(&dword_2304B3000, v14, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Initiator,sessionID:%@,%@,%@,default initializing cache due to failure to extract existing initiator contact data,%@", buf, 0x2Au);
        }

        v20 = objc_opt_new();
        v21 = *(v26 + 5);
        *(v26 + 5) = v20;
      }

      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __76__SMInitiatorCacheManager__updateCacheDataForNonActiveDeviceWithCompletion___block_invoke;
      v22[3] = &unk_2788CD160;
      v24 = v25;
      v23 = completionCopy;
      [(SMInitiatorCacheManager *)self _fetchDeviceStatusWithCompletion:v22];

      _Block_object_dispose(v25, 8);
    }
  }

  else
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *v25 = 0;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: completion", v25, 2u);
    }
  }
}

uint64_t __76__SMInitiatorCacheManager__updateCacheDataForNonActiveDeviceWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(*(*(a1 + 40) + 8) + 40) setDeviceStatus:a2];
  v3 = *(*(a1 + 32) + 16);

  return v3();
}

- (void)_uploadCacheForNonActiveDevice:(id)device completion:(id)completion
{
  v79 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  completionCopy = completion;
  if (completionCopy)
  {
    if (!deviceCopy)
    {
      v11 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sessionUUID = [(SMInitiatorCacheManager *)self sessionUUID];
        v58 = objc_opt_class();
        v59 = NSStringFromClass(v58);
        v60 = NSStringFromSelector(a2);
        *buf = 138412802;
        v70 = sessionUUID;
        v71 = 2112;
        v72 = v59;
        v73 = 2112;
        v74 = v60;
        _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "#SafetyCache,Initiator,sessionID:%@,%@,%@,no cache to upload", buf, 0x20u);
      }

      goto LABEL_6;
    }

    initiatorContact = [(SMInitiatorCacheManager *)self initiatorContact];
    shouldBeCleanedUpDate = [initiatorContact shouldBeCleanedUpDate];

    if (shouldBeCleanedUpDate)
    {
      v11 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        sessionUUID2 = [(SMInitiatorCacheManager *)self sessionUUID];
        v13 = objc_opt_class();
        v14 = NSStringFromClass(v13);
        v15 = NSStringFromSelector(a2);
        identifier = [deviceCopy identifier];
        *buf = 138413058;
        v70 = sessionUUID2;
        v71 = 2112;
        v72 = v14;
        v73 = 2112;
        v74 = v15;
        v75 = 2112;
        v76 = identifier;
        _os_log_impl(&dword_2304B3000, v11, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Initiator,sessionID:%@,%@,%@,initiatorContact should be cleaned up,cache identifier,%@", buf, 0x2Au);
      }

LABEL_6:

      completionCopy[2](completionCopy);
      goto LABEL_27;
    }

    xpcActivityManager = [(SMInitiatorCacheManager *)self xpcActivityManager];
    runningTask = [xpcActivityManager runningTask];
    if (runningTask)
    {
      xpcActivityManager2 = [(SMInitiatorCacheManager *)self xpcActivityManager];
      runningTask2 = [xpcActivityManager2 runningTask];
      identifier2 = [runningTask2 identifier];
      getXpcActivityIdentifier = [(SMInitiatorCacheManager *)self getXpcActivityIdentifier];

      if (identifier2 == getXpcActivityIdentifier)
      {
        v24 = [SMCloudKitQosOptions alloc];
        xpcActivityManager3 = [(SMInitiatorCacheManager *)self xpcActivityManager];
        runningTask3 = [xpcActivityManager3 runningTask];
        activity = [runningTask3 activity];
        v62 = [(SMCloudKitQosOptions *)v24 initWithDefaultQos:0 masqueradeBundleID:0 xpcActivity:activity];

LABEL_18:
        outputToDictionary = [deviceCopy outputToDictionary];
        v63 = [SMCryptoUtilities getSerializedJsonData:outputToDictionary];

        v29 = [v63 md5];
        hexString = [v29 hexString];

        initiatorContact2 = [(SMInitiatorCacheManager *)self initiatorContact];
        safetyCacheKey = [initiatorContact2 safetyCacheKey];
        v32 = [SMCryptoUtilities encryptSafetyCache:v63 withKey:safetyCacheKey];

        v33 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          sessionUUID3 = [(SMInitiatorCacheManager *)self sessionUUID];
          v35 = objc_opt_class();
          v36 = NSStringFromClass(v35);
          v37 = NSStringFromSelector(a2);
          identifier3 = [deviceCopy identifier];
          *buf = 138413314;
          v70 = sessionUUID3;
          v71 = 2112;
          v72 = v36;
          v73 = 2112;
          v74 = v37;
          v75 = 2112;
          v76 = identifier3;
          v77 = 2048;
          identifierHash = [deviceCopy identifierHash];
          _os_log_impl(&dword_2304B3000, v33, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Initiator,sessionID:%@,%@,%@,uploading cache,cache identifier,%@,hash,%lu", buf, 0x34u);
        }

        v39 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          sessionUUID4 = [(SMInitiatorCacheManager *)self sessionUUID];
          v41 = objc_opt_class();
          v42 = NSStringFromClass(v41);
          v43 = NSStringFromSelector(a2);
          v44 = [v32 length];
          +[RTRuntime footprint];
          *buf = 138413314;
          v70 = sessionUUID4;
          v71 = 2112;
          v72 = v42;
          v73 = 2112;
          v74 = v43;
          v75 = 2048;
          v76 = v44;
          v77 = 2048;
          identifierHash = v45;
          _os_log_impl(&dword_2304B3000, v39, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Initiator,sessionID:%@,%@,%@,uploading cache,cache size,%lu, current footprint, %.4f MB", buf, 0x34u);
        }

        v46 = [v32 length];
        initiatorContact3 = [(SMInitiatorCacheManager *)self initiatorContact];
        [initiatorContact3 maxCacheSize];
        LODWORD(v46) = v48 < v46;

        if (v46)
        {
          v49 = [v32 length];
          initiatorContact4 = [(SMInitiatorCacheManager *)self initiatorContact];
          [initiatorContact4 setMaxCacheSize:v49];

          [(SMInitiatorCacheManager *)self _updateInitiatorContactInStore];
        }

        caMetricCacheUpdate = [(SMInitiatorCacheManager *)self caMetricCacheUpdate];
        v52 = caMetricCacheUpdate == 0;

        if (v52)
        {
          v53 = objc_alloc_init(SMCAMetricCacheUpdate);
          [(SMInitiatorCacheManager *)self setCaMetricCacheUpdate:v53];
        }

        v54 = [v32 length];
        caMetricCacheUpdate2 = [(SMInitiatorCacheManager *)self caMetricCacheUpdate];
        [caMetricCacheUpdate2 setCacheSize:v54];

        objc_initWeak(buf, self);
        v64[0] = MEMORY[0x277D85DD0];
        v64[1] = 3221225472;
        v64[2] = __69__SMInitiatorCacheManager__uploadCacheForNonActiveDevice_completion___block_invoke;
        v64[3] = &unk_2788CD2E8;
        objc_copyWeak(v68, buf);
        v64[4] = self;
        v68[1] = a2;
        v67 = completionCopy;
        v65 = deviceCopy;
        v56 = hexString;
        v66 = v56;
        [(SMInitiatorCacheManager *)self updateNonActiveSafetyCacheWithRetry:2 data:v32 qos:v62 completion:v64];

        objc_destroyWeak(v68);
        objc_destroyWeak(buf);

        goto LABEL_27;
      }
    }

    else
    {
    }

    v62 = [[SMCloudKitQosOptions alloc] initWithDefaultQos:1 masqueradeBundleID:0 xpcActivity:0];
    goto LABEL_18;
  }

  v17 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2304B3000, v17, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: completion", buf, 2u);
  }

LABEL_27:
}

void __69__SMInitiatorCacheManager__uploadCacheForNonActiveDevice_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _processUploadCacheResponseForCache:*(a1 + 40) hashString:*(a1 + 48) success:a2 error:v5];
  }

  else
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [0 sessionUUID];
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = NSStringFromSelector(*(a1 + 72));
      v13 = 138413314;
      v14 = v9;
      v15 = 2112;
      v16 = v11;
      v17 = 2112;
      v18 = v12;
      v19 = 1024;
      v20 = a2;
      v21 = 2112;
      v22 = v5;
      _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Initiator,sessionID:%@,%@,%@,cache manager released before update safety cache response,success,%d,error,%@", &v13, 0x30u);
    }
  }

  (*(*(a1 + 56) + 16))();
}

- (void)updateSafetyCacheWithRetry:(int64_t)retry data:(id)data cacheReleaseTime:(id)time qos:(id)qos completion:(id)completion
{
  v61 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  timeCopy = time;
  qosCopy = qos;
  completionCopy = completion;
  v38 = qosCopy;
  if (completionCopy)
  {
    if (dataCopy && timeCopy && qosCopy)
    {
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      sessionUUID = [(SMInitiatorCacheManager *)self sessionUUID];
      cacheUploadInProgress = [(SMInitiatorCacheManager *)self cacheUploadInProgress];
      objc_initWeak(location, self);
      activeSessionZone = [(SMInitiatorCacheManager *)self activeSessionZone];
      v39[0] = MEMORY[0x277D85DD0];
      v39[1] = 3221225472;
      v39[2] = __91__SMInitiatorCacheManager_updateSafetyCacheWithRetry_data_cacheReleaseTime_qos_completion___block_invoke;
      v39[3] = &unk_2788CD310;
      objc_copyWeak(v47, location);
      v22 = sessionUUID;
      v40 = v22;
      v23 = v18;
      v41 = v23;
      v47[1] = a2;
      v46 = completionCopy;
      v47[2] = retry;
      v24 = cacheUploadInProgress;
      v42 = v24;
      v43 = dataCopy;
      v44 = timeCopy;
      v45 = v38;
      [activeSessionZone updateSafetyCacheWithData:v43 cacheReleaseTime:v44 qos:v45 completion:v39];

      objc_destroyWeak(v47);
      objc_destroyWeak(location);
    }

    else
    {
      v25 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        sessionUUID2 = [(SMInitiatorCacheManager *)self sessionUUID];
        v35 = objc_opt_class();
        v36 = NSStringFromClass(v35);
        v37 = NSStringFromSelector(a2);
        *location = 138413570;
        *&location[4] = sessionUUID2;
        v51 = 2112;
        v52 = v36;
        v53 = 2112;
        v54 = v37;
        v55 = 2112;
        v56 = dataCopy;
        v57 = 2112;
        v58 = timeCopy;
        v59 = 2112;
        v60 = v38;
        _os_log_error_impl(&dword_2304B3000, v25, OS_LOG_TYPE_ERROR, "#SafetyCache,Initiator,sessionID:%@,%@,%@,missing required fields,safetyCacheData,%@,cacheReleaseTime,%@,qos,%@", location, 0x3Eu);
      }

      v26 = objc_alloc(MEMORY[0x277CCA9B8]);
      v48 = *MEMORY[0x277CCA450];
      v27 = MEMORY[0x277CCACA8];
      sessionUUID3 = [(SMInitiatorCacheManager *)self sessionUUID];
      v29 = objc_opt_class();
      v30 = NSStringFromClass(v29);
      v31 = NSStringFromSelector(a2);
      v32 = [v27 stringWithFormat:@"#SafetyCache, Initiator, sessionID:%@, %@, %@, failed due to invalid parameters", sessionUUID3, v30, v31];
      v49 = v32;
      v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
      v23 = [v26 initWithDomain:*MEMORY[0x277D4ACD0] code:7 userInfo:v33];

      (*(completionCopy + 2))(completionCopy, 0, v23);
    }
  }

  else
  {
    v23 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *location = 0;
      _os_log_error_impl(&dword_2304B3000, v23, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: completion", location, 2u);
    }
  }
}

void __91__SMInitiatorCacheManager_updateSafetyCacheWithRetry_data_cacheReleaseTime_qos_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v40 = *MEMORY[0x277D85DE8];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 88));
  if (!WeakRetained)
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v23 = *(a1 + 32);
      v24 = *(a1 + 40);
      v25 = NSStringFromSelector(*(a1 + 96));
      v30 = 138412802;
      v31 = v23;
      v32 = 2112;
      v33 = v24;
      v34 = 2112;
      v35 = v25;
      _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "#SafetyCache,Initiator,sessionID:%@,%@,%@,cache manager released during safety cache update", &v30, 0x20u);
    }

    v14 = *(*(a1 + 80) + 16);
    goto LABEL_21;
  }

  if (!v4)
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(a1 + 32);
      v16 = *(a1 + 40);
      v17 = NSStringFromSelector(*(a1 + 96));
      v30 = 138412802;
      v31 = v15;
      v32 = 2112;
      v33 = v16;
      v34 = 2112;
      v35 = v17;
      _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Initiator,sessionID:%@,%@,%@,safety cache data updated successfully", &v30, 0x20u);
    }

    goto LABEL_20;
  }

  if (![SMCloudKitZone shouldRetryCkError:v4])
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    v18 = *(a1 + 32);
    v19 = *(a1 + 40);
    v12 = NSStringFromSelector(*(a1 + 96));
    v30 = 138413058;
    v31 = v18;
    v32 = 2112;
    v33 = v19;
    v34 = 2112;
    v35 = v12;
    v36 = 2112;
    v37 = v4;
    v20 = "#SafetyCache,Initiator,sessionID:%@,%@,%@,failed to update safety cache data with non recoverable error %@";
LABEL_18:
    _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, v20, &v30, 0x2Au);
    goto LABEL_19;
  }

  if (*(a1 + 104) <= 0)
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    v21 = *(a1 + 32);
    v22 = *(a1 + 40);
    v12 = NSStringFromSelector(*(a1 + 96));
    v30 = 138413058;
    v31 = v21;
    v32 = 2112;
    v33 = v22;
    v34 = 2112;
    v35 = v12;
    v36 = 2112;
    v37 = v4;
    v20 = "#SafetyCache,Initiator,sessionID:%@,%@,%@,failed to update safety cache data after retries with recoverable error %@";
    goto LABEL_18;
  }

  v6 = *(a1 + 48);
  v7 = [WeakRetained cacheUploadInProgress];

  v8 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  v9 = v8;
  if (v6 != v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      v11 = *(a1 + 40);
      v12 = NSStringFromSelector(*(a1 + 96));
      v30 = 138412802;
      v31 = v10;
      v32 = 2112;
      v33 = v11;
      v34 = 2112;
      v35 = v12;
      _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Initiator,sessionID:%@,%@,%@,safety cache update timed out", &v30, 0x20u);
LABEL_19:
    }

LABEL_20:

    v14 = *(*(a1 + 80) + 16);
LABEL_21:
    v14();
    goto LABEL_22;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v26 = *(a1 + 32);
    v27 = *(a1 + 40);
    v28 = NSStringFromSelector(*(a1 + 96));
    v29 = *(a1 + 104);
    v30 = 138413314;
    v31 = v26;
    v32 = 2112;
    v33 = v27;
    v34 = 2112;
    v35 = v28;
    v36 = 2112;
    v37 = v4;
    v38 = 1024;
    v39 = v29;
    _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "#SafetyCache,Initiator,sessionID:%@,%@,%@,failed to update safety cache data with recoverable error %@, pendingRetryCount %d, retrying...", &v30, 0x30u);
  }

  [WeakRetained updateSafetyCacheWithRetry:*(a1 + 104) - 1 data:*(a1 + 56) cacheReleaseTime:*(a1 + 64) qos:*(a1 + 72) completion:*(a1 + 80)];
LABEL_22:
}

- (void)updateNonActiveSafetyCacheWithRetry:(int64_t)retry data:(id)data qos:(id)qos completion:(id)completion
{
  v54 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  qosCopy = qos;
  completionCopy = completion;
  if (completionCopy)
  {
    if (dataCopy && qosCopy)
    {
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      sessionUUID = [(SMInitiatorCacheManager *)self sessionUUID];
      cacheUploadInProgress = [(SMInitiatorCacheManager *)self cacheUploadInProgress];
      objc_initWeak(location, self);
      activeSessionZone = [(SMInitiatorCacheManager *)self activeSessionZone];
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = __83__SMInitiatorCacheManager_updateNonActiveSafetyCacheWithRetry_data_qos_completion___block_invoke;
      v35[3] = &unk_2788CD338;
      objc_copyWeak(v42, location);
      v19 = sessionUUID;
      v36 = v19;
      v20 = v15;
      v37 = v20;
      v42[1] = a2;
      v41 = completionCopy;
      v42[2] = retry;
      v21 = cacheUploadInProgress;
      v38 = v21;
      v39 = dataCopy;
      v40 = qosCopy;
      [activeSessionZone updateSafetyCacheRecordWithData:v39 qos:v40 completion:v35];

      objc_destroyWeak(v42);
      objc_destroyWeak(location);
    }

    else
    {
      v22 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sessionUUID2 = [(SMInitiatorCacheManager *)self sessionUUID];
        v32 = objc_opt_class();
        v33 = NSStringFromClass(v32);
        v34 = NSStringFromSelector(a2);
        *location = 138413314;
        *&location[4] = sessionUUID2;
        v46 = 2112;
        v47 = v33;
        v48 = 2112;
        v49 = v34;
        v50 = 2112;
        v51 = dataCopy;
        v52 = 2112;
        v53 = qosCopy;
        _os_log_error_impl(&dword_2304B3000, v22, OS_LOG_TYPE_ERROR, "#SafetyCache,Initiator,sessionID:%@,%@,%@,missing required fields,safetyCacheData,%@,qos,%@", location, 0x34u);
      }

      v23 = objc_alloc(MEMORY[0x277CCA9B8]);
      v43 = *MEMORY[0x277CCA450];
      v24 = MEMORY[0x277CCACA8];
      sessionUUID3 = [(SMInitiatorCacheManager *)self sessionUUID];
      v26 = objc_opt_class();
      v27 = NSStringFromClass(v26);
      v28 = NSStringFromSelector(a2);
      v29 = [v24 stringWithFormat:@"#SafetyCache, Initiator, sessionID:%@, %@, %@, failed due to invalid parameters", sessionUUID3, v27, v28];
      v44 = v29;
      v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v44 forKeys:&v43 count:1];
      v20 = [v23 initWithDomain:*MEMORY[0x277D4ACD0] code:7 userInfo:v30];

      (*(completionCopy + 2))(completionCopy, 0, v20);
    }
  }

  else
  {
    v20 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *location = 0;
      _os_log_error_impl(&dword_2304B3000, v20, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: completion", location, 2u);
    }
  }
}

void __83__SMInitiatorCacheManager_updateNonActiveSafetyCacheWithRetry_data_qos_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v40 = *MEMORY[0x277D85DE8];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  if (!WeakRetained)
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v23 = *(a1 + 32);
      v24 = *(a1 + 40);
      v25 = NSStringFromSelector(*(a1 + 88));
      v30 = 138412802;
      v31 = v23;
      v32 = 2112;
      v33 = v24;
      v34 = 2112;
      v35 = v25;
      _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "#SafetyCache,Initiator,sessionID:%@,%@,%@,cache manager released during safety cache update", &v30, 0x20u);
    }

    v14 = *(*(a1 + 72) + 16);
    goto LABEL_21;
  }

  if (!v4)
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(a1 + 32);
      v16 = *(a1 + 40);
      v17 = NSStringFromSelector(*(a1 + 88));
      v30 = 138412802;
      v31 = v15;
      v32 = 2112;
      v33 = v16;
      v34 = 2112;
      v35 = v17;
      _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Initiator,sessionID:%@,%@,%@,safety cache data updated successfully", &v30, 0x20u);
    }

    goto LABEL_20;
  }

  if (![SMCloudKitZone shouldRetryCkError:v4])
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    v18 = *(a1 + 32);
    v19 = *(a1 + 40);
    v12 = NSStringFromSelector(*(a1 + 88));
    v30 = 138413058;
    v31 = v18;
    v32 = 2112;
    v33 = v19;
    v34 = 2112;
    v35 = v12;
    v36 = 2112;
    v37 = v4;
    v20 = "#SafetyCache,Initiator,sessionID:%@,%@,%@,failed to update safety cache data with non recoverable error %@";
LABEL_18:
    _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, v20, &v30, 0x2Au);
    goto LABEL_19;
  }

  if (*(a1 + 96) <= 0)
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    v21 = *(a1 + 32);
    v22 = *(a1 + 40);
    v12 = NSStringFromSelector(*(a1 + 88));
    v30 = 138413058;
    v31 = v21;
    v32 = 2112;
    v33 = v22;
    v34 = 2112;
    v35 = v12;
    v36 = 2112;
    v37 = v4;
    v20 = "#SafetyCache,Initiator,sessionID:%@,%@,%@,failed to update safety cache data after retries with recoverable error %@";
    goto LABEL_18;
  }

  v6 = *(a1 + 48);
  v7 = [WeakRetained cacheUploadInProgress];

  v8 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  v9 = v8;
  if (v6 != v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      v11 = *(a1 + 40);
      v12 = NSStringFromSelector(*(a1 + 88));
      v30 = 138412802;
      v31 = v10;
      v32 = 2112;
      v33 = v11;
      v34 = 2112;
      v35 = v12;
      _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Initiator,sessionID:%@,%@,%@,safety cache update timed out", &v30, 0x20u);
LABEL_19:
    }

LABEL_20:

    v14 = *(*(a1 + 72) + 16);
LABEL_21:
    v14();
    goto LABEL_22;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v26 = *(a1 + 32);
    v27 = *(a1 + 40);
    v28 = NSStringFromSelector(*(a1 + 88));
    v29 = *(a1 + 96);
    v30 = 138413314;
    v31 = v26;
    v32 = 2112;
    v33 = v27;
    v34 = 2112;
    v35 = v28;
    v36 = 2112;
    v37 = v4;
    v38 = 1024;
    v39 = v29;
    _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "#SafetyCache,Initiator,sessionID:%@,%@,%@,failed to update safety cache data with recoverable error %@, pendingRetryCount %d, retrying...", &v30, 0x30u);
  }

  [WeakRetained updateNonActiveSafetyCacheWithRetry:*(a1 + 96) - 1 data:*(a1 + 56) qos:*(a1 + 64) completion:*(a1 + 72)];
LABEL_22:
}

- (void)_processUploadCacheResponseForCache:(id)cache hashString:(id)string success:(BOOL)success error:(id)error
{
  successCopy = success;
  v67 = *MEMORY[0x277D85DE8];
  cacheCopy = cache;
  stringCopy = string;
  errorCopy = error;
  if (cacheCopy)
  {
    initiatorContact = [(SMInitiatorCacheManager *)self initiatorContact];
    numCacheUpdates = [initiatorContact numCacheUpdates];
    initiatorContact2 = [(SMInitiatorCacheManager *)self initiatorContact];
    [initiatorContact2 setNumCacheUpdates:numCacheUpdates + 1];

    [(SMInitiatorCacheManager *)self submitCacheUpdateCAMetricForCache:cacheCopy success:successCopy error:errorCopy];
    v17 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    v18 = v17;
    if (successCopy)
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        sessionUUID = [(SMInitiatorCacheManager *)self sessionUUID];
        v20 = objc_opt_class();
        v21 = NSStringFromClass(v20);
        v22 = NSStringFromSelector(a2);
        v59 = 138412802;
        v60 = sessionUUID;
        v61 = 2112;
        v62 = v21;
        v63 = 2112;
        v64 = v22;
        _os_log_impl(&dword_2304B3000, v18, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Initiator,sessionID:%@,%@,%@,successfully uploaded cache", &v59, 0x20u);
      }

      initiatorContact3 = [(SMInitiatorCacheManager *)self initiatorContact];
      numberOfSuccessfulCacheUpdates = [initiatorContact3 numberOfSuccessfulCacheUpdates];
      initiatorContact4 = [(SMInitiatorCacheManager *)self initiatorContact];
      [initiatorContact4 setNumberOfSuccessfulCacheUpdates:numberOfSuccessfulCacheUpdates + 1];

      initiatorContact5 = [(SMInitiatorCacheManager *)self initiatorContact];
      syncDate = [initiatorContact5 syncDate];

      if (syncDate)
      {
        initiatorContact6 = [(SMInitiatorCacheManager *)self initiatorContact];
        syncDate2 = [initiatorContact6 syncDate];
        [syncDate2 timeIntervalSinceNow];
        v31 = -v30;

        initiatorContact7 = [(SMInitiatorCacheManager *)self initiatorContact];
        [initiatorContact7 maxTimeBetweenCacheUpdates];
        v34 = v33;

        if (v34 < v31)
        {
          initiatorContact8 = [(SMInitiatorCacheManager *)self initiatorContact];
          [initiatorContact8 setMaxTimeBetweenCacheUpdates:v31];
        }
      }

      locationsDuringSession = [cacheCopy locationsDuringSession];
      v37 = [locationsDuringSession count];
      initiatorContact9 = [(SMInitiatorCacheManager *)self initiatorContact];
      maxLocationsInTrace = [initiatorContact9 maxLocationsInTrace];

      if (v37 > maxLocationsInTrace)
      {
        locationsDuringSession2 = [cacheCopy locationsDuringSession];
        v41 = [locationsDuringSession2 count];
        initiatorContact10 = [(SMInitiatorCacheManager *)self initiatorContact];
        [initiatorContact10 setMaxLocationsInTrace:v41];
      }

      v43 = [MEMORY[0x277CBEAA8] now];
      initiatorContact11 = [(SMInitiatorCacheManager *)self initiatorContact];
      [initiatorContact11 setSyncDate:v43];

      initiatorContact12 = [(SMInitiatorCacheManager *)self initiatorContact];
      [initiatorContact12 setPhoneCache:cacheCopy];

      [(SMInitiatorCacheManager *)self _updateInitiatorContactInStore];
      [(SMInitiatorCacheManager *)self notifyObserversSafetyCacheDidUpdate];
      [(SMInitiatorCacheManager *)self _sendCacheUpdatedMessage];
      initiatorContact13 = [(SMInitiatorCacheManager *)self initiatorContact];
      phoneCache = [initiatorContact13 phoneCache];
      sessionUUID2 = [(SMInitiatorCacheManager *)self sessionUUID];
      cacheUploadInProgress = [(SMInitiatorCacheManager *)self cacheUploadInProgress];
      [phoneCache logCacheForSessionID:sessionUUID2 role:@"Initiator" deviceType:@"phone" transaction:cacheUploadInProgress hashString:stringCopy];

      initiatorContact14 = [(SMInitiatorCacheManager *)self initiatorContact];
      watchCache = [initiatorContact14 watchCache];
      sessionUUID3 = [(SMInitiatorCacheManager *)self sessionUUID];
      cacheUploadInProgress2 = [(SMInitiatorCacheManager *)self cacheUploadInProgress];
      [watchCache logCacheForSessionID:sessionUUID3 role:@"Initiator" deviceType:@"watch" transaction:cacheUploadInProgress2 hashString:stringCopy];
    }

    else
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sessionUUID4 = [(SMInitiatorCacheManager *)self sessionUUID];
        v56 = objc_opt_class();
        v57 = NSStringFromClass(v56);
        v58 = NSStringFromSelector(a2);
        v59 = 138413058;
        v60 = sessionUUID4;
        v61 = 2112;
        v62 = v57;
        v63 = 2112;
        v64 = v58;
        v65 = 2112;
        v66 = errorCopy;
        _os_log_error_impl(&dword_2304B3000, v18, OS_LOG_TYPE_ERROR, "#SafetyCache,Initiator,sessionID:%@,%@,%@,failed to upload cache with error %@", &v59, 0x2Au);
      }

      [(SMInitiatorCacheManager *)self _updateInitiatorContactInStore];
    }
  }

  else
  {
    v54 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v59) = 0;
      _os_log_error_impl(&dword_2304B3000, v54, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: cache", &v59, 2u);
    }
  }
}

- (BOOL)_shouldScheduleKeyReleaseMessage
{
  sessionManagerState = [(SMInitiatorCacheManager *)self sessionManagerState];
  sessionState = [sessionManagerState sessionState];

  return (sessionState < 0xF) & (0x4384u >> sessionState);
}

- (BOOL)_isKeyReleaseScheduled
{
  initiatorContact = [(SMInitiatorCacheManager *)self initiatorContact];
  scheduledSendExpiryDate = [initiatorContact scheduledSendExpiryDate];
  v4 = scheduledSendExpiryDate != 0;

  return v4;
}

- (double)_scheduledSendTimeAdvance
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = [(RTDefaultsManager *)self->_defaultsManager objectForKey:@"RTDefaultsSafetyCacheScheduledSendTimeAdvanceKey" value:&unk_2845A1C68];
  [v3 doubleValue];
  v5 = v4;

  if (v5 != 7200.0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v21 = 136316162;
      v22 = "[SMInitiatorCacheManager _scheduledSendTimeAdvance]";
      v23 = 2080;
      v24 = "overriding scheduled send time advance";
      v25 = 2048;
      v26 = 0x40BC200000000000;
      v27 = 2048;
      v28 = v5;
      v29 = 2112;
      v30 = @"RTDefaultsSafetyCacheScheduledSendTimeAdvanceKey";
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%s, %s, original value, %.2f, overridden value, %.2f, by defaultsKey, %@", &v21, 0x34u);
    }
  }

  v7 = [(RTDefaultsManager *)self->_defaultsManager objectForKey:@"RTDefaultsSafetyCacheScheduledSendTimeAdvancePadding" value:&unk_2845A1C78];
  [v7 doubleValue];
  v9 = v8;

  if (v9 != 1800.0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v21 = 136316162;
      v22 = "[SMInitiatorCacheManager _scheduledSendTimeAdvance]";
      v23 = 2080;
      v24 = "overriding scheduled send time padding";
      v25 = 2048;
      v26 = 0x409C200000000000;
      v27 = 2048;
      v28 = v9;
      v29 = 2112;
      v30 = @"RTDefaultsSafetyCacheScheduledSendTimeAdvancePadding";
      _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_INFO, "%s, %s, original value, %.2f, overridden value, %.2f, by defaultsKey, %@", &v21, 0x34u);
    }
  }

  sessionManagerState = [(SMInitiatorCacheManager *)self sessionManagerState];
  configuration = [sessionManagerState configuration];
  sessionType = [configuration sessionType];

  if (sessionType == 1)
  {
    sessionManagerState2 = [(SMInitiatorCacheManager *)self sessionManagerState];
    configuration2 = [sessionManagerState2 configuration];
    time = [configuration2 time];
    timeBound = [time timeBound];
    [timeBound timeIntervalSinceNow];
    v19 = v9 + v18;

    if (v5 < v19)
    {
      return v19;
    }
  }

  return v5;
}

- (id)_scheduleKeyReleaseWithCompletion:(id)completion
{
  v61 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  [(SMInitiatorCacheManager *)self _scheduledSendTimeAdvance];
  v7 = v6;
  [(SMInitiatorCacheManager *)self requestTimeFromTimed];
  v9 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v7 + v8];
  v45 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v7 + CFAbsoluteTimeGetCurrent()];
  if (!completionCopy)
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: completion", buf, 2u);
    }

    v14 = v9;
    goto LABEL_12;
  }

  if (![(SMInitiatorCacheManager *)self _shouldScheduleKeyReleaseMessage])
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      sessionUUID = [(SMInitiatorCacheManager *)self sessionUUID];
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      v19 = NSStringFromSelector(a2);
      v20 = MEMORY[0x277D4ABB0];
      sessionManagerState = [(SMInitiatorCacheManager *)self sessionManagerState];
      v22 = [v20 convertSessionStateToString:{objc_msgSend(sessionManagerState, "sessionState")}];
      *buf = 138413058;
      v54 = sessionUUID;
      v55 = 2112;
      v56 = v18;
      v57 = 2112;
      v58 = v19;
      v59 = 2112;
      v60 = v22;
      _os_log_impl(&dword_2304B3000, v15, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Initiator,sessionID:%@,%@,%@,Scheduled Send not needed in state %@", buf, 0x2Au);
    }

    [(SMInitiatorCacheManager *)self _cancelScheduledKeyRelease];
    completionCopy[2](completionCopy);
    v14 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:0.0];
LABEL_12:
    v23 = v14;
    goto LABEL_32;
  }

  defaultsManager = [(SMInitiatorCacheManager *)self defaultsManager];
  v11 = [defaultsManager objectForKey:@"RTDefaultsSafetyCacheScheduledSendEnabledKey"];

  if (v11)
  {
    if ([v11 BOOLValue])
    {
      zelkovaScheduledSendEnabled = [MEMORY[0x277D4AAE0] zelkovaScheduledSendEnabled];
    }

    else
    {
      zelkovaScheduledSendEnabled = 0;
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      goto LABEL_26;
    }

    v24 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v28 = NSStringFromSelector(a2);
      v29 = v28;
      v30 = @"NO";
      if (zelkovaScheduledSendEnabled)
      {
        v30 = @"YES";
      }

      *buf = 138412546;
      v54 = v28;
      v55 = 2112;
      v56 = v30;
      _os_log_impl(&dword_2304B3000, v24, OS_LOG_TYPE_INFO, "%@, overriding zelkova scheduled send enabled flag, BOOL value is, %@, read by defaultsManager", buf, 0x16u);
    }

    goto LABEL_25;
  }

  zelkovaScheduledSendEnabled = [MEMORY[0x277D4AAE0] zelkovaScheduledSendEnabled];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v24 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = NSStringFromSelector(a2);
      v26 = v25;
      v27 = @"NO";
      if (zelkovaScheduledSendEnabled)
      {
        v27 = @"YES";
      }

      *buf = 138412546;
      v54 = v25;
      v55 = 2112;
      v56 = v27;
      _os_log_impl(&dword_2304B3000, v24, OS_LOG_TYPE_INFO, "%@, zelkova scheduled send enabled feature flag, BOOL value is, %@", buf, 0x16u);
    }

LABEL_25:
  }

LABEL_26:
  if (zelkovaScheduledSendEnabled)
  {
    objc_initWeak(buf, self);
    v31 = objc_opt_class();
    v32 = NSStringFromClass(v31);
    sessionUUID2 = [(SMInitiatorCacheManager *)self sessionUUID];
    [(SMInitiatorCacheManager *)self setScheduledSendInProgress:1];
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __61__SMInitiatorCacheManager__scheduleKeyReleaseWithCompletion___block_invoke;
    v46[3] = &unk_2788CD3D8;
    objc_copyWeak(v52, buf);
    v34 = sessionUUID2;
    v47 = v34;
    v35 = v32;
    v48 = v35;
    v52[1] = a2;
    v51 = completionCopy;
    v36 = v9;
    v49 = v36;
    v50 = v45;
    [(SMInitiatorCacheManager *)self _fetchLocationWithCompletion:v46];
    v37 = v36;

    objc_destroyWeak(v52);
    objc_destroyWeak(buf);
  }

  else
  {
    v38 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      sessionUUID3 = [(SMInitiatorCacheManager *)self sessionUUID];
      v40 = objc_opt_class();
      v41 = NSStringFromClass(v40);
      v42 = NSStringFromSelector(a2);
      *buf = 138412802;
      v54 = sessionUUID3;
      v55 = 2112;
      v56 = v41;
      v57 = 2112;
      v58 = v42;
      _os_log_impl(&dword_2304B3000, v38, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Initiator,sessionID:%@,%@,%@,Scheduled Send not enabled", buf, 0x20u);
    }

    completionCopy[2](completionCopy);
    v43 = v9;
  }

  v23 = v9;
LABEL_32:

  return v23;
}

void __61__SMInitiatorCacheManager__scheduleKeyReleaseWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v60 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    if (([WeakRetained _shouldScheduleKeyReleaseMessage] & 1) == 0)
    {
      v11 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v17 = *(a1 + 32);
        v16 = *(a1 + 40);
        v18 = NSStringFromSelector(*(a1 + 80));
        *buf = 138412802;
        v53 = v17;
        v54 = 2112;
        v55 = v16;
        v56 = 2112;
        v57 = v18;
        _os_log_impl(&dword_2304B3000, v11, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Initiator,sessionID:%@,%@,%@,state change during location fetch,scheduled send no longer needed", buf, 0x20u);
      }

      goto LABEL_6;
    }

    v9 = [v8 initiatorContact];
    v10 = [v9 shouldBeCleanedUpDate];

    if (v10)
    {
      v11 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v13 = *(a1 + 32);
        v12 = *(a1 + 40);
        v14 = NSStringFromSelector(*(a1 + 80));
        *buf = 138412802;
        v53 = v13;
        v54 = 2112;
        v55 = v12;
        v56 = 2112;
        v57 = v14;
        _os_log_impl(&dword_2304B3000, v11, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Initiator,sessionID:%@,%@,%@,session ended during location fetch", buf, 0x20u);
      }

LABEL_6:

      [v8 setScheduledSendInProgress:0];
      (*(*(a1 + 64) + 16))();
      goto LABEL_20;
    }

    if (!v5 || v6)
    {
      v33 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v42 = *(a1 + 32);
        v41 = *(a1 + 40);
        v43 = NSStringFromSelector(*(a1 + 80));
        *buf = 138413058;
        v53 = v42;
        v54 = 2112;
        v55 = v41;
        v56 = 2112;
        v57 = v43;
        v58 = 2112;
        v59 = v6;
        _os_log_error_impl(&dword_2304B3000, v33, OS_LOG_TYPE_ERROR, "#SafetyCache,Initiator,sessionID:%@,%@,%@,fetched nil location or error:%@", buf, 0x2Au);
      }

      v34 = [v8 initiatorContact];
      [v34 setLocationOfTrigger:0];
    }

    else
    {
      v19 = objc_alloc(MEMORY[0x277D01160]);
      [v5 latitude];
      v21 = v20;
      [v5 longitude];
      v23 = v22;
      [v5 hunc];
      v25 = v24;
      [v5 altitude];
      v27 = v26;
      [v5 vunc];
      v29 = v28;
      v30 = [v5 date];
      v31 = [v19 initWithLatitude:v30 longitude:1 horizontalUncertainty:v21 altitude:v23 verticalUncertainty:v25 date:v27 referenceFrame:v29 speed:0.0];
      v32 = [v8 initiatorContact];
      [v32 setLocationOfTrigger:v31];
    }

    v35 = [v8 delegate];
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __61__SMInitiatorCacheManager__scheduleKeyReleaseWithCompletion___block_invoke_401;
    v44[3] = &unk_2788CD3B0;
    objc_copyWeak(v51, (a1 + 72));
    v45 = *(a1 + 32);
    v36 = *(a1 + 40);
    v37 = *(a1 + 80);
    v46 = v36;
    v51[1] = v37;
    v47 = *(a1 + 48);
    v48 = v8;
    v49 = *(a1 + 56);
    v50 = *(a1 + 64);
    [v35 fetchDeviceConfigurationLowPowerModeWarningStateWithHandler:v44];

    objc_destroyWeak(v51);
  }

  else
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v39 = *(a1 + 32);
      v38 = *(a1 + 40);
      v40 = NSStringFromSelector(*(a1 + 80));
      *buf = 138412802;
      v53 = v39;
      v54 = 2112;
      v55 = v38;
      v56 = 2112;
      v57 = v40;
      _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, "#SafetyCache,Initiator,sessionID:%@,%@,%@,cache manager released during location fetch", buf, 0x20u);
    }

    (*(*(a1 + 64) + 16))();
  }

LABEL_20:
}

void __61__SMInitiatorCacheManager__scheduleKeyReleaseWithCompletion___block_invoke_401(uint64_t a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = [WeakRetained queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __61__SMInitiatorCacheManager__scheduleKeyReleaseWithCompletion___block_invoke_402;
    block[3] = &unk_2788CD388;
    v20 = v5;
    v26[1] = a2;
    v21 = v7;
    v9 = *(a1 + 48);
    v10 = *(a1 + 56);
    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    *&v13 = v11;
    *(&v13 + 1) = v12;
    *&v14 = v9;
    *(&v14 + 1) = v10;
    v22 = v14;
    v23 = v13;
    v26[2] = *(a1 + 88);
    v24 = *(a1 + 64);
    objc_copyWeak(v26, (a1 + 80));
    v25 = *(a1 + 72);
    dispatch_async(v8, block);

    objc_destroyWeak(v26);
    v15 = v20;
  }

  else
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(a1 + 32);
      v17 = *(a1 + 40);
      v18 = NSStringFromSelector(*(a1 + 88));
      *buf = 138412802;
      v28 = v16;
      v29 = 2112;
      v30 = v17;
      v31 = 2112;
      v32 = v18;
      _os_log_impl(&dword_2304B3000, v15, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Initiator,sessionID:%@,%@,%@,object released during fetchDeviceConfigurationLowPowerModeWarningStateWithHandler", buf, 0x20u);
    }
  }
}

void __61__SMInitiatorCacheManager__scheduleKeyReleaseWithCompletion___block_invoke_402(uint64_t a1)
{
  v62 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v41 = 0;
  }

  else
  {
    v41 = *(a1 + 104);
  }

  v3 = (a1 + 48);
  v2 = *(a1 + 48);
  v4 = (a1 + 40);
  v5 = [*(a1 + 40) initiatorContact];
  [v5 setTriggerDate:v2];

  v6 = objc_alloc(MEMORY[0x277D4AB10]);
  v36 = [*v4 sessionUUID];
  v35 = *v3;
  v39 = [*v4 initiatorContact];
  v34 = [v39 locationOfTrigger];
  v37 = [*v4 initiatorContact];
  v7 = [v37 safetyCacheKey];
  v8 = [*v4 sessionManagerState];
  v9 = [v8 configuration];
  v10 = [v9 sessionType];
  v11 = [*v4 sessionManagerState];
  v12 = [v11 configuration];
  v13 = [v12 destination];
  LOBYTE(v33) = 0;
  v42 = [v6 initWithSessionID:v36 triggerDate:v35 locationOfTrigger:v34 triggerType:15 safetyCacheKey:v7 safetyCacheToken:0 sessionType:v10 destinationType:objc_msgSend(v13 isSOSTrigger:"destinationType") lowPowerModeWarningState:{v33, v41}];

  if (([*v4 _isKeyReleaseScheduled] & 1) == 0)
  {
    v14 = *(a1 + 48);
    v15 = [*(a1 + 56) initiatorContact];
    [v15 setScheduledSendExpiryDate:v14];
  }

  [*(a1 + 40) _updateInitiatorContactInStore];
  v16 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v18 = *(a1 + 64);
    v17 = *(a1 + 72);
    v19 = NSStringFromSelector(*(a1 + 112));
    v20 = [v42 messageID];
    v21 = [*(a1 + 48) stringFromDate];
    *buf = 138413571;
    v51 = v18;
    v52 = 2112;
    v53 = v17;
    v54 = 2112;
    v55 = v19;
    v56 = 2112;
    v57 = v20;
    v58 = 2112;
    v59 = v21;
    v60 = 2117;
    v61 = v42;
    _os_log_impl(&dword_2304B3000, v16, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Initiator,sessionID:%@,%@,%@,messageID:%@,scheduling Key Release for %@ with message %{sensitive}@", buf, 0x3Eu);
  }

  v38 = [*(a1 + 40) messagingService];
  v40 = [*(a1 + 40) initiatorContact];
  v22 = [v40 scheduleSendMessageGUID];
  v23 = [*(a1 + 40) sessionManagerState];
  v24 = [v23 startMessageGUID];
  v25 = *(a1 + 80);
  v26 = [*(a1 + 40) sessionManagerState];
  v27 = [v26 configuration];
  v28 = [v27 conversation];
  v29 = [v42 summaryText];
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __61__SMInitiatorCacheManager__scheduleKeyReleaseWithCompletion___block_invoke_403;
  v43[3] = &unk_2788CD360;
  objc_copyWeak(v49, (a1 + 96));
  v44 = *(a1 + 64);
  v30 = *(a1 + 72);
  v31 = *(a1 + 112);
  v45 = v30;
  v49[1] = v31;
  v48 = *(a1 + 88);
  v46 = *(a1 + 48);
  v32 = v42;
  v47 = v32;
  [v38 scheduleMadridMessageSendForMessage:v32 messageGUID:v22 associatedGUID:v24 sendDate:v25 toConversation:v28 summaryText:v29 completion:v43];

  objc_destroyWeak(v49);
}

void __61__SMInitiatorCacheManager__scheduleKeyReleaseWithCompletion___block_invoke_403(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = [WeakRetained queue];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __61__SMInitiatorCacheManager__scheduleKeyReleaseWithCompletion___block_invoke_404;
    v14[3] = &unk_2788CB7B0;
    v15 = v8;
    v16 = *(a1 + 48);
    v17 = *(a1 + 56);
    v20 = a3;
    v18 = v6;
    v19 = *(a1 + 64);
    dispatch_async(v9, v14);
  }

  else
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 32);
      v12 = *(a1 + 40);
      v13 = NSStringFromSelector(*(a1 + 80));
      *buf = 138412802;
      v22 = v11;
      v23 = 2112;
      v24 = v12;
      v25 = 2112;
      v26 = v13;
      _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "#SafetyCache,Initiator,sessionID:%@,%@,%@,cache manager released during message scheduling", buf, 0x20u);
    }

    (*(*(a1 + 64) + 16))();
  }
}

uint64_t __61__SMInitiatorCacheManager__scheduleKeyReleaseWithCompletion___block_invoke_404(uint64_t a1)
{
  [*(a1 + 32) setScheduledSendInProgress:0];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [*(a1 + 48) messageID];
  [v2 _processScheduleKeyReleaseResponseScheduledSendDate:v3 messageID:v4 success:*(a1 + 72) error:*(a1 + 56)];

  v5 = *(*(a1 + 64) + 16);

  return v5();
}

- (void)_processScheduleKeyReleaseResponseScheduledSendDate:(id)date messageID:(id)d success:(BOOL)success error:(id)error
{
  v78 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  dCopy = d;
  errorCopy = error;
  if (!dateCopy)
  {
    v36 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
LABEL_10:

      goto LABEL_23;
    }

    *buf = 0;
    v37 = "Invalid parameter not satisfying: scheduledSendDate";
LABEL_25:
    _os_log_error_impl(&dword_2304B3000, v36, OS_LOG_TYPE_ERROR, v37, buf, 2u);
    goto LABEL_10;
  }

  if (!dCopy)
  {
    v36 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    *buf = 0;
    v37 = "Invalid parameter not satisfying: messageID";
    goto LABEL_25;
  }

  aSelector = a2;
  initiatorContact = [(SMInitiatorCacheManager *)self initiatorContact];
  numberOfMessageScheduling = [initiatorContact numberOfMessageScheduling];
  initiatorContact2 = [(SMInitiatorCacheManager *)self initiatorContact];
  [initiatorContact2 setNumberOfMessageScheduling:numberOfMessageScheduling + 1];

  v17 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  v18 = v17;
  if (success)
  {
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      sessionUUID = [(SMInitiatorCacheManager *)self sessionUUID];
      v20 = objc_opt_class();
      v21 = NSStringFromClass(v20);
      v22 = NSStringFromSelector(a2);
      [dateCopy stringFromDate];
      v23 = v63 = errorCopy;
      initiatorContact3 = [(SMInitiatorCacheManager *)self initiatorContact];
      scheduleSendMessageGUID = [initiatorContact3 scheduleSendMessageGUID];
      *buf = 138413570;
      v67 = sessionUUID;
      v68 = 2112;
      v69 = v21;
      v70 = 2112;
      v71 = v22;
      v72 = 2112;
      v73 = dCopy;
      v74 = 2112;
      v75 = v23;
      v76 = 2112;
      v77 = scheduleSendMessageGUID;
      _os_log_impl(&dword_2304B3000, v18, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Initiator,sessionID:%@,%@,%@,messageID:%@,successfully scheduled Key Release message for %@ with GUID %@", buf, 0x3Eu);

      errorCopy = v63;
    }

    initiatorContact4 = [(SMInitiatorCacheManager *)self initiatorContact];
    [initiatorContact4 setScheduledSendExpiryDate:dateCopy];

    delegate = [(SMInitiatorCacheManager *)self delegate];
    sessionUUID2 = [(SMInitiatorCacheManager *)self sessionUUID];
    initiatorContact5 = [(SMInitiatorCacheManager *)self initiatorContact];
    scheduleSendMessageGUID2 = [initiatorContact5 scheduleSendMessageGUID];
    initiatorContact6 = [(SMInitiatorCacheManager *)self initiatorContact];
    scheduledSendExpiryDate = [initiatorContact6 scheduledSendExpiryDate];
    [delegate scheduledSendMessageScheduledForSessionID:sessionUUID2 guid:scheduleSendMessageGUID2 date:scheduledSendExpiryDate];

    initiatorContact7 = [(SMInitiatorCacheManager *)self initiatorContact];
    numberOfSuccessfulMessageScheduling = [initiatorContact7 numberOfSuccessfulMessageScheduling];
    initiatorContact8 = [(SMInitiatorCacheManager *)self initiatorContact];
    [initiatorContact8 setNumberOfSuccessfulMessageScheduling:numberOfSuccessfulMessageScheduling + 1];

    [(SMInitiatorCacheManager *)self _updateScheduledSendFireTimer];
  }

  else
  {
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sessionUUID3 = [(SMInitiatorCacheManager *)self sessionUUID];
      v56 = objc_opt_class();
      v57 = NSStringFromClass(v56);
      v58 = NSStringFromSelector(a2);
      [dateCopy stringFromDate];
      v60 = v59 = errorCopy;
      *buf = 138413570;
      v67 = sessionUUID3;
      v68 = 2112;
      v69 = v57;
      v70 = 2112;
      v71 = v58;
      v72 = 2112;
      v73 = dCopy;
      v74 = 2112;
      v75 = v60;
      v76 = 2112;
      v77 = v59;
      _os_log_error_impl(&dword_2304B3000, v18, OS_LOG_TYPE_ERROR, "#SafetyCache,Initiator,sessionID:%@,%@,%@,messageID:%@,failed to schedule Key Release message for %@ with error %@", buf, 0x3Eu);

      errorCopy = v59;
    }

    if ([(SMInitiatorCacheManager *)self _isKeyReleaseScheduled])
    {
      v38 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        sessionUUID4 = [(SMInitiatorCacheManager *)self sessionUUID];
        v40 = objc_opt_class();
        v61 = NSStringFromClass(v40);
        v41 = NSStringFromSelector(aSelector);
        initiatorContact9 = [(SMInitiatorCacheManager *)self initiatorContact];
        scheduleSendMessageGUID3 = [initiatorContact9 scheduleSendMessageGUID];
        initiatorContact10 = [(SMInitiatorCacheManager *)self initiatorContact];
        [initiatorContact10 scheduledSendExpiryDate];
        v44 = v64 = errorCopy;
        stringFromDate = [v44 stringFromDate];
        *buf = 138413314;
        v67 = sessionUUID4;
        v68 = 2112;
        v69 = v61;
        v70 = 2112;
        v71 = v41;
        v72 = 2112;
        v73 = scheduleSendMessageGUID3;
        v74 = 2112;
        v75 = stringFromDate;
        v46 = stringFromDate;
        _os_log_impl(&dword_2304B3000, v38, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Initiator,sessionID:%@,%@,%@,message %@ is still scheduled for %@", buf, 0x34u);

        errorCopy = v64;
      }
    }
  }

  [(SMInitiatorCacheManager *)self _updateInitiatorContactInStore];
  initiatorContact11 = [(SMInitiatorCacheManager *)self initiatorContact];
  shouldBeCleanedUpDate = [initiatorContact11 shouldBeCleanedUpDate];
  if (shouldBeCleanedUpDate)
  {
  }

  else
  {
    _shouldScheduleKeyReleaseMessage = [(SMInitiatorCacheManager *)self _shouldScheduleKeyReleaseMessage];

    if (_shouldScheduleKeyReleaseMessage)
    {
      goto LABEL_23;
    }
  }

  v50 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
  {
    sessionUUID5 = [(SMInitiatorCacheManager *)self sessionUUID];
    v52 = objc_opt_class();
    v53 = NSStringFromClass(v52);
    v54 = NSStringFromSelector(aSelector);
    *buf = 138412802;
    v67 = sessionUUID5;
    v68 = 2112;
    v69 = v53;
    v70 = 2112;
    v71 = v54;
    _os_log_impl(&dword_2304B3000, v50, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Initiator,sessionID:%@,%@,%@,state changed while scheduling message,canceling newly scheduled message and cleaning up", buf, 0x20u);
  }

  [(SMInitiatorCacheManager *)self _cancelScheduledKeyRelease];
LABEL_23:
}

- (void)_cancelScheduledKeyRelease
{
  sessionManagerState = [(SMInitiatorCacheManager *)self sessionManagerState];
  configuration = [sessionManagerState configuration];
  conversation = [configuration conversation];
  [(SMInitiatorCacheManager *)self _cancelScheduledKeyReleaseForConversation:conversation];
}

- (void)_cancelScheduledKeyReleaseForConversation:(id)conversation
{
  v52 = *MEMORY[0x277D85DE8];
  conversationCopy = conversation;
  [(SMInitiatorCacheManager *)self _stopScheduleSendCancelRetry];
  if ([(SMInitiatorCacheManager *)self _isKeyReleaseScheduled])
  {
    initiatorContact = [(SMInitiatorCacheManager *)self initiatorContact];
    scheduledSendExpiryDate = [initiatorContact scheduledSendExpiryDate];
    v8 = MEMORY[0x277CBEAA8];
    [(SMInitiatorCacheManager *)self requestTimeFromTimed];
    v9 = [v8 dateWithTimeIntervalSinceReferenceDate:?];
    LODWORD(v8) = [scheduledSendExpiryDate isBeforeDate:v9];

    v10 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    if (v8)
    {
      if (v11)
      {
        sessionUUID = [(SMInitiatorCacheManager *)self sessionUUID];
        v13 = objc_opt_class();
        v14 = NSStringFromClass(v13);
        v15 = NSStringFromSelector(a2);
        *buf = 138412802;
        v47 = sessionUUID;
        v48 = 2112;
        v49 = v14;
        v50 = 2112;
        v51 = v15;
        _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Initiator,sessionID:%@,%@,%@,schedule send has already fired", buf, 0x20u);
      }

      initiatorContact2 = [(SMInitiatorCacheManager *)self initiatorContact];
      [initiatorContact2 setScheduledSendExpiryDate:0];

      initiatorContact3 = [(SMInitiatorCacheManager *)self initiatorContact];
      shouldBeCleanedUpDate = [initiatorContact3 shouldBeCleanedUpDate];

      if (shouldBeCleanedUpDate)
      {
LABEL_6:
        [(SMInitiatorCacheManager *)self _cleanUpInitiatorContactLocalStore];
      }
    }

    else
    {
      if (v11)
      {
        sessionUUID2 = [(SMInitiatorCacheManager *)self sessionUUID];
        v27 = objc_opt_class();
        v28 = NSStringFromClass(v27);
        v29 = NSStringFromSelector(a2);
        *buf = 138412802;
        v47 = sessionUUID2;
        v48 = 2112;
        v49 = v28;
        v50 = 2112;
        v51 = v29;
        _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Initiator,sessionID:%@,%@,%@,canceling scheduled message", buf, 0x20u);
      }

      objc_initWeak(buf, self);
      sessionUUID3 = [(SMInitiatorCacheManager *)self sessionUUID];
      v31 = objc_opt_class();
      v32 = NSStringFromClass(v31);
      initiatorContact4 = [(SMInitiatorCacheManager *)self initiatorContact];
      scheduleSendMessageGUID = [initiatorContact4 scheduleSendMessageGUID];

      messagingService = [(SMInitiatorCacheManager *)self messagingService];
      initiatorContact5 = [(SMInitiatorCacheManager *)self initiatorContact];
      scheduleSendMessageGUID2 = [initiatorContact5 scheduleSendMessageGUID];
      v41[0] = MEMORY[0x277D85DD0];
      v41[1] = 3221225472;
      v41[2] = __69__SMInitiatorCacheManager__cancelScheduledKeyReleaseForConversation___block_invoke;
      v41[3] = &unk_2788CD400;
      objc_copyWeak(v45, buf);
      v38 = sessionUUID3;
      v42 = v38;
      v39 = v32;
      v43 = v39;
      v45[1] = a2;
      v40 = scheduleSendMessageGUID;
      v44 = v40;
      [messagingService cancelMadridMessageSendForMessageGUID:scheduleSendMessageGUID2 toConversation:conversationCopy completion:v41];

      objc_destroyWeak(v45);
      objc_destroyWeak(buf);
    }
  }

  else
  {
    v19 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      sessionUUID4 = [(SMInitiatorCacheManager *)self sessionUUID];
      v21 = objc_opt_class();
      v22 = NSStringFromClass(v21);
      v23 = NSStringFromSelector(a2);
      *buf = 138412802;
      v47 = sessionUUID4;
      v48 = 2112;
      v49 = v22;
      v50 = 2112;
      v51 = v23;
      _os_log_impl(&dword_2304B3000, v19, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Initiator,sessionID:%@,%@,%@,no messages to cancel, early return", buf, 0x20u);
    }

    initiatorContact6 = [(SMInitiatorCacheManager *)self initiatorContact];
    shouldBeCleanedUpDate2 = [initiatorContact6 shouldBeCleanedUpDate];

    if (shouldBeCleanedUpDate2)
    {
      goto LABEL_6;
    }
  }
}

void __69__SMInitiatorCacheManager__cancelScheduledKeyReleaseForConversation___block_invoke(uint64_t a1, int a2, void *a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = [WeakRetained queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __69__SMInitiatorCacheManager__cancelScheduledKeyReleaseForConversation___block_invoke_405;
    block[3] = &unk_2788C53C8;
    v15 = v7;
    v17 = a2;
    v16 = v5;
    dispatch_async(v8, block);

    v9 = v15;
  }

  else
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 32);
      v11 = *(a1 + 40);
      v12 = NSStringFromSelector(*(a1 + 64));
      v13 = *(a1 + 48);
      *buf = 138413570;
      v19 = v10;
      v20 = 2112;
      v21 = v11;
      v22 = 2112;
      v23 = v12;
      v24 = 2112;
      v25 = v13;
      v26 = 1024;
      v27 = a2;
      v28 = 2112;
      v29 = v5;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "#SafetyCache,Initiator,sessionID:%@,%@,%@,cache manager released before scheduled send cancel response,GUID,%@,success,%d,error,%@", buf, 0x3Au);
    }
  }
}

- (void)_processCancelScheduledKeyReleaseResponseWithSuccess:(BOOL)success error:(id)error
{
  v47 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  initiatorContact = [(SMInitiatorCacheManager *)self initiatorContact];
  numberOfMessageCancelling = [initiatorContact numberOfMessageCancelling];
  initiatorContact2 = [(SMInitiatorCacheManager *)self initiatorContact];
  [initiatorContact2 setNumberOfMessageCancelling:numberOfMessageCancelling + 1];

  v11 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  v12 = v11;
  if (success)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      sessionUUID = [(SMInitiatorCacheManager *)self sessionUUID];
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      v16 = NSStringFromSelector(a2);
      initiatorContact3 = [(SMInitiatorCacheManager *)self initiatorContact];
      scheduleSendMessageGUID = [initiatorContact3 scheduleSendMessageGUID];
      v37 = 138413058;
      v38 = sessionUUID;
      v39 = 2112;
      v40 = v15;
      v41 = 2112;
      v42 = v16;
      v43 = 2112;
      v44 = scheduleSendMessageGUID;
      _os_log_impl(&dword_2304B3000, v12, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Initiator,sessionID:%@,%@,%@,successfully canceled scheduled Key Release message %@", &v37, 0x2Au);
    }

    initiatorContact4 = [(SMInitiatorCacheManager *)self initiatorContact];
    [initiatorContact4 setScheduledSendExpiryDate:0];

    delegate = [(SMInitiatorCacheManager *)self delegate];
    sessionUUID2 = [(SMInitiatorCacheManager *)self sessionUUID];
    initiatorContact5 = [(SMInitiatorCacheManager *)self initiatorContact];
    scheduleSendMessageGUID2 = [initiatorContact5 scheduleSendMessageGUID];
    [delegate scheduledSendMessageCanceledForSessionID:sessionUUID2 guid:scheduleSendMessageGUID2];

    initiatorContact6 = [(SMInitiatorCacheManager *)self initiatorContact];
    numberOfSuccessfulMessageCancelling = [initiatorContact6 numberOfSuccessfulMessageCancelling];
    initiatorContact7 = [(SMInitiatorCacheManager *)self initiatorContact];
    [initiatorContact7 setNumberOfSuccessfulMessageCancelling:numberOfSuccessfulMessageCancelling + 1];

    [(SMInitiatorCacheManager *)self _updateInitiatorContactInStore];
    [(SMInitiatorCacheManager *)self _updateScheduledSendFireTimer];
    initiatorContact8 = [(SMInitiatorCacheManager *)self initiatorContact];
    shouldBeCleanedUpDate = [initiatorContact8 shouldBeCleanedUpDate];

    if (shouldBeCleanedUpDate)
    {
      [(SMInitiatorCacheManager *)self _cleanUpInitiatorContactLocalStore];
    }
  }

  else
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sessionUUID3 = [(SMInitiatorCacheManager *)self sessionUUID];
      v32 = objc_opt_class();
      v33 = NSStringFromClass(v32);
      v34 = NSStringFromSelector(a2);
      initiatorContact9 = [(SMInitiatorCacheManager *)self initiatorContact];
      scheduleSendMessageGUID3 = [initiatorContact9 scheduleSendMessageGUID];
      v37 = 138413314;
      v38 = sessionUUID3;
      v39 = 2112;
      v40 = v33;
      v41 = 2112;
      v42 = v34;
      v43 = 2112;
      v44 = scheduleSendMessageGUID3;
      v45 = 2112;
      v46 = errorCopy;
      _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, "#SafetyCache,Initiator,sessionID:%@,%@,%@,failed to cancel scheduled Key Release message %@ with error %@", &v37, 0x34u);
    }

    [(SMInitiatorCacheManager *)self _updateInitiatorContactInStore];
    initiatorContact10 = [(SMInitiatorCacheManager *)self initiatorContact];
    shouldBeCleanedUpDate2 = [initiatorContact10 shouldBeCleanedUpDate];

    if (shouldBeCleanedUpDate2)
    {
      [(SMInitiatorCacheManager *)self _scheduleScheduleSendCancelRetry];
    }
  }
}

- (id)_getScheduleSendCancelRetryXpcActivityIdentifier
{
  v2 = MEMORY[0x277CCACA8];
  sessionUUID = [(SMInitiatorCacheManager *)self sessionUUID];
  v4 = [v2 stringWithFormat:@"%@.%@", @"com.apple.routined.scheduleSend.cancelRetry", sessionUUID];

  return v4;
}

- (void)_scheduleScheduleSendCancelRetry
{
  v42 = *MEMORY[0x277D85DE8];
  defaultsManager = [(SMInitiatorCacheManager *)self defaultsManager];
  v5 = [defaultsManager objectForKey:@"RTDefaultsScheduleSendCancelRetryDelay"];

  if (v5)
  {
    [v5 doubleValue];
    v7 = v6;
  }

  else
  {
    v7 = 60.0;
  }

  defaultsManager2 = [(SMInitiatorCacheManager *)self defaultsManager];
  v9 = [defaultsManager2 objectForKey:@"RTDefaultsScheduleSendCancelRetryGracePeriod"];

  if (v9)
  {
    [v9 doubleValue];
    v11 = v10;
  }

  else
  {
    v11 = 60.0;
  }

  LOBYTE(v25) = 0;
  v12 = [[RTXPCActivityCriteria alloc] initWithInterval:2 gracePeriod:1 priority:0 requireNetworkConnectivity:1024 requireInexpensiveNetworkConnectivity:1024 networkTransferUploadSize:1 networkTransferDownloadSize:-1.0 allowBattery:v11 powerNap:v7 delay:v25 requireBatteryLevel:&unk_28459E7C0];
  v13 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    sessionUUID = [(SMInitiatorCacheManager *)self sessionUUID];
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    v17 = NSStringFromSelector(a2);
    *buf = 138413570;
    v31 = sessionUUID;
    v32 = 2112;
    v33 = v16;
    v34 = 2112;
    v35 = v17;
    v36 = 2048;
    v37 = 0xBFF0000000000000;
    v38 = 2048;
    v39 = v11;
    v40 = 2048;
    v41 = v7;
    _os_log_impl(&dword_2304B3000, v13, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Initiator,sessionID:%@,%@,%@,schedule singleshot xpc activity,interval,%f,grace period,%f,delay,%f", buf, 0x3Eu);
  }

  objc_initWeak(buf, self);
  v18 = objc_opt_class();
  v19 = NSStringFromClass(v18);
  sessionUUID2 = [(SMInitiatorCacheManager *)self sessionUUID];
  xpcActivityManager = [(SMInitiatorCacheManager *)self xpcActivityManager];
  _getScheduleSendCancelRetryXpcActivityIdentifier = [(SMInitiatorCacheManager *)self _getScheduleSendCancelRetryXpcActivityIdentifier];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __59__SMInitiatorCacheManager__scheduleScheduleSendCancelRetry__block_invoke;
  v26[3] = &unk_2788CD070;
  objc_copyWeak(v29, buf);
  v23 = sessionUUID2;
  v27 = v23;
  v24 = v19;
  v28 = v24;
  v29[1] = a2;
  [xpcActivityManager registerActivityWithIdentifier:_getScheduleSendCancelRetryXpcActivityIdentifier criteria:v12 handler:v26];

  objc_destroyWeak(v29);
  objc_destroyWeak(buf);
}

void __59__SMInitiatorCacheManager__scheduleScheduleSendCancelRetry__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __59__SMInitiatorCacheManager__scheduleScheduleSendCancelRetry__block_invoke_2;
    block[3] = &unk_2788C5110;
    v10 = *(a1 + 32);
    v7 = *(a1 + 40);
    v8 = *(a1 + 56);
    v11 = v7;
    v14 = v8;
    v12 = v5;
    v13 = v3;
    dispatch_async(v6, block);
  }

  else if (v3)
  {
    (*(v3 + 2))(v3, 0, 0);
  }
}

uint64_t __59__SMInitiatorCacheManager__scheduleScheduleSendCancelRetry__block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = NSStringFromSelector(*(a1 + 64));
    v7 = 138412802;
    v8 = v3;
    v9 = 2112;
    v10 = v4;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Initiator,sessionID:%@,%@,%@,schedule send cancel retry xpc fired", &v7, 0x20u);
  }

  [*(a1 + 48) _cancelScheduledKeyRelease];
  result = *(a1 + 56);
  if (result)
  {
    return (*(result + 16))(result, 0, 0);
  }

  return result;
}

- (void)_stopScheduleSendCancelRetry
{
  xpcActivityManager = [(SMInitiatorCacheManager *)self xpcActivityManager];
  _getScheduleSendCancelRetryXpcActivityIdentifier = [(SMInitiatorCacheManager *)self _getScheduleSendCancelRetryXpcActivityIdentifier];
  [xpcActivityManager deleteDefaultsForIdentifier:_getScheduleSendCancelRetryXpcActivityIdentifier];

  xpcActivityManager2 = [(SMInitiatorCacheManager *)self xpcActivityManager];
  _getScheduleSendCancelRetryXpcActivityIdentifier2 = [(SMInitiatorCacheManager *)self _getScheduleSendCancelRetryXpcActivityIdentifier];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __55__SMInitiatorCacheManager__stopScheduleSendCancelRetry__block_invoke;
  v8[3] = &unk_2788C4D10;
  v8[4] = self;
  v8[5] = a2;
  [xpcActivityManager2 unregisterActivityWithIdentifier:_getScheduleSendCancelRetryXpcActivityIdentifier2 handler:v8];
}

void __55__SMInitiatorCacheManager__stopScheduleSendCancelRetry__block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) sessionUUID];
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = NSStringFromSelector(*(a1 + 40));
    v9 = 138413058;
    v10 = v5;
    v11 = 2112;
    v12 = v7;
    v13 = 2112;
    v14 = v8;
    v15 = 2112;
    v16 = v3;
    _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Initiator,sessionID:%@,%@,%@,unregisterActivityWithIdentifier with error %@", &v9, 0x2Au);
  }
}

- (void)_updateScheduledSendFireTimer
{
  v62 = *MEMORY[0x277D85DE8];
  scheduledSendFireTimerAlarm = [(SMInitiatorCacheManager *)self scheduledSendFireTimerAlarm];
  [scheduledSendFireTimerAlarm invalidate];

  [(SMInitiatorCacheManager *)self setScheduledSendFireTimerAlarm:0];
  if ([(SMInitiatorCacheManager *)self _isKeyReleaseScheduled])
  {
    [(SMInitiatorCacheManager *)self requestTimeFromTimed];
    v6 = v5;
    initiatorContact = [(SMInitiatorCacheManager *)self initiatorContact];
    scheduledSendExpiryDate = [initiatorContact scheduledSendExpiryDate];
    v9 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v6];
    v10 = [scheduledSendExpiryDate isBeforeDate:v9];

    if (v10)
    {

      [(SMInitiatorCacheManager *)self _handleScheduledSendTimerFired];
    }

    else
    {
      objc_initWeak(&location, self);
      sessionUUID = [(SMInitiatorCacheManager *)self sessionUUID];
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      v19 = MEMORY[0x277CCACA8];
      sessionUUID2 = [(SMInitiatorCacheManager *)self sessionUUID];
      v47 = [v19 stringWithFormat:@"%@.%@", @"com.apple.routined.SMInitiatorCacheManager.scheduledSendFireTimerAlarmIdentifier", sessionUUID2];

      v21 = [RTXPCTimerAlarm alloc];
      queue = [(SMInitiatorCacheManager *)self queue];
      v49[0] = MEMORY[0x277D85DD0];
      v49[1] = 3221225472;
      v49[2] = __56__SMInitiatorCacheManager__updateScheduledSendFireTimer__block_invoke;
      v49[3] = &unk_2788CD1F8;
      objc_copyWeak(v52, &location);
      v23 = sessionUUID;
      v50 = v23;
      v24 = v18;
      v51 = v24;
      v52[1] = a2;
      v25 = [(RTXPCTimerAlarm *)v21 initWithIdentifier:v47 queue:queue handler:v49];
      [(SMInitiatorCacheManager *)self setScheduledSendFireTimerAlarm:v25];

      Current = CFAbsoluteTimeGetCurrent();
      initiatorContact2 = [(SMInitiatorCacheManager *)self initiatorContact];
      scheduledSendExpiryDate2 = [initiatorContact2 scheduledSendExpiryDate];
      [scheduledSendExpiryDate2 timeIntervalSinceReferenceDate];
      v30 = v29;

      v31 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:Current + v30 - v6];
      scheduledSendFireTimerAlarm2 = [(SMInitiatorCacheManager *)self scheduledSendFireTimerAlarm];
      v48 = 0;
      [scheduledSendFireTimerAlarm2 fireWithDate:v31 error:&v48];
      v33 = v48;

      if (v33)
      {
        v34 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          sessionUUID3 = [(SMInitiatorCacheManager *)self sessionUUID];
          v36 = objc_opt_class();
          v37 = NSStringFromClass(v36);
          v38 = NSStringFromSelector(a2);
          localizedDescription = [v33 localizedDescription];
          *buf = 138413058;
          v55 = sessionUUID3;
          v56 = 2112;
          v57 = v37;
          v58 = 2112;
          v59 = v38;
          v60 = 2112;
          v61 = localizedDescription;
          _os_log_error_impl(&dword_2304B3000, v34, OS_LOG_TYPE_ERROR, "#SafetyCache,Initiator,sessionID:%@,%@,%@,scheduledSendFireTimerAlarm fireWithDate hit error: %@", buf, 0x2Au);
        }
      }

      else
      {
        v34 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          sessionUUID4 = [(SMInitiatorCacheManager *)self sessionUUID];
          v40 = objc_opt_class();
          v41 = NSStringFromClass(v40);
          v42 = NSStringFromSelector(a2);
          initiatorContact3 = [(SMInitiatorCacheManager *)self initiatorContact];
          scheduledSendExpiryDate3 = [initiatorContact3 scheduledSendExpiryDate];
          stringFromDate = [scheduledSendExpiryDate3 stringFromDate];
          *buf = 138413058;
          v55 = sessionUUID4;
          v56 = 2112;
          v57 = v41;
          v58 = 2112;
          v59 = v42;
          v60 = 2112;
          v61 = stringFromDate;
          _os_log_impl(&dword_2304B3000, v34, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Initiator,sessionID:%@,%@,%@,scheduledSendFireTimerAlarm scheduled for: %@", buf, 0x2Au);
        }
      }

      objc_destroyWeak(v52);
      objc_destroyWeak(&location);
    }
  }

  else
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      sessionUUID5 = [(SMInitiatorCacheManager *)self sessionUUID];
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      v15 = NSStringFromSelector(a2);
      *buf = 138412802;
      v55 = sessionUUID5;
      v56 = 2112;
      v57 = v14;
      v58 = 2112;
      v59 = v15;
      _os_log_impl(&dword_2304B3000, v11, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Initiator,sessionID:%@,%@,%@,scheduled send not found", buf, 0x20u);
    }
  }
}

void __56__SMInitiatorCacheManager__updateScheduledSendFireTimer__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (WeakRetained)
  {
    if (v4)
    {
      v5 = *(a1 + 32);
      v6 = *(a1 + 40);
      v7 = NSStringFromSelector(*(a1 + 56));
      v11 = 138412802;
      v12 = v5;
      v13 = 2112;
      v14 = v6;
      v15 = 2112;
      v16 = v7;
      _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Initiator,sessionID:%@,%@,%@,scheduled send timer fired", &v11, 0x20u);
    }

    [WeakRetained _handleScheduledSendTimerFired];
  }

  else
  {
    if (v4)
    {
      v8 = *(a1 + 32);
      v9 = *(a1 + 40);
      v10 = NSStringFromSelector(*(a1 + 56));
      v11 = 138412802;
      v12 = v8;
      v13 = 2112;
      v14 = v9;
      v15 = 2112;
      v16 = v10;
      _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Initiator,sessionID:%@,%@,%@,self not found", &v11, 0x20u);
    }
  }
}

- (void)_handleScheduledSendTimerFired
{
  v31 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      sessionUUID = [(SMInitiatorCacheManager *)self sessionUUID];
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = NSStringFromSelector(a2);
      scheduledSendFireTimerAlarm = [(SMInitiatorCacheManager *)self scheduledSendFireTimerAlarm];
      identifier = [scheduledSendFireTimerAlarm identifier];
      v23 = 138413058;
      v24 = sessionUUID;
      v25 = 2112;
      v26 = v7;
      v27 = 2112;
      v28 = v8;
      v29 = 2112;
      v30 = identifier;
      _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "#SafetyCache,Initiator,sessionID:%@,%@,%@,%@ expired", &v23, 0x2Au);
    }
  }

  scheduledSendFireTimerAlarm2 = [(SMInitiatorCacheManager *)self scheduledSendFireTimerAlarm];
  [scheduledSendFireTimerAlarm2 invalidate];

  [(SMInitiatorCacheManager *)self setScheduledSendFireTimerAlarm:0];
  v12 = MEMORY[0x277CBEAA8];
  [(SMInitiatorCacheManager *)self requestTimeFromTimed];
  v13 = [v12 dateWithTimeIntervalSinceReferenceDate:?];
  initiatorContact = [(SMInitiatorCacheManager *)self initiatorContact];
  scheduledSendExpiryDate = [initiatorContact scheduledSendExpiryDate];
  [v13 timeIntervalSinceDate:scheduledSendExpiryDate];
  v17 = v16;

  if (v17 >= -10.0)
  {
    delegate = [(SMInitiatorCacheManager *)self delegate];
    sessionUUID2 = [(SMInitiatorCacheManager *)self sessionUUID];
    [delegate scheduledSendMessageSent:sessionUUID2];

    initiatorContact2 = [(SMInitiatorCacheManager *)self initiatorContact];
    [initiatorContact2 setWasScheduledSendTriggered:1];

    initiatorContact3 = [(SMInitiatorCacheManager *)self initiatorContact];
    [initiatorContact3 setWasCacheReleased:1];

    initiatorContact4 = [(SMInitiatorCacheManager *)self initiatorContact];
    [initiatorContact4 setScheduledSendExpiryDate:0];

    [(SMInitiatorCacheManager *)self _updateInitiatorContactInStore];
  }

  else
  {
    [(SMInitiatorCacheManager *)self _updateScheduledSendFireTimer];
  }
}

- (double)requestTimeFromTimed
{
  v28 = *MEMORY[0x277D85DE8];
  TMGetReferenceTime();
  v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sessionUUID = [(SMInitiatorCacheManager *)self sessionUUID];
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    v16 = NSStringFromSelector(a2);
    *buf = 138412802;
    v19 = sessionUUID;
    v20 = 2112;
    v21 = v15;
    v22 = 2112;
    v23 = v16;
    _os_log_error_impl(&dword_2304B3000, v4, OS_LOG_TYPE_ERROR, "#SafetyCache,Initiator,sessionID:%@,%@,%@,TMGetReferenceTime returned invalid time, using time from CFAbsoluteTimeGetCurrent", buf, 0x20u);
  }

  Current = CFAbsoluteTimeGetCurrent();
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      sessionUUID2 = [(SMInitiatorCacheManager *)self sessionUUID];
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = NSStringFromSelector(a2);
      v10 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:Current];
      stringFromDate = [v10 stringFromDate];
      *buf = 138413314;
      v19 = sessionUUID2;
      v20 = 2112;
      v21 = v8;
      v22 = 2112;
      v23 = v9;
      v24 = 2112;
      v25 = stringFromDate;
      v26 = 2048;
      v27 = 0;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "#SafetyCache,Initiator,sessionID:%@,%@,%@,referenceTime:%@,referenceTimeUnc:%f", buf, 0x34u);
    }
  }

  return Current;
}

- (void)updateCacheUpdateBackstopTimer
{
  v72 = *MEMORY[0x277D85DE8];
  [(SMInitiatorCacheManager *)self stopCacheUpdateBackstopTimer];
  initiatorContact = [(SMInitiatorCacheManager *)self initiatorContact];
  cacheUpdateBackstopExpiryDate = [initiatorContact cacheUpdateBackstopExpiryDate];
  [cacheUpdateBackstopExpiryDate timeIntervalSinceNow];
  v7 = v6;

  if (v7 <= 0.0)
  {
    v38 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      sessionUUID = [(SMInitiatorCacheManager *)self sessionUUID];
      v40 = objc_opt_class();
      v41 = NSStringFromClass(v40);
      v42 = NSStringFromSelector(a2);
      *buf = 138412802;
      *&buf[4] = sessionUUID;
      *&buf[12] = 2112;
      *&buf[14] = v41;
      *&buf[22] = 2112;
      v70 = v42;
      _os_log_impl(&dword_2304B3000, v38, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Initiator,sessionID:%@,%@,%@,cacheUpdateBackstopTimerAlarm expired in the past", buf, 0x20u);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v70 = __Block_byref_object_copy__96;
    *&v71 = __Block_byref_object_dispose__96;
    v43 = MEMORY[0x277CCACA8];
    v44 = objc_opt_class();
    v45 = NSStringFromClass(v44);
    v46 = NSStringFromSelector(a2);
    v47 = [v43 stringWithFormat:@"%@-%@", v45, v46];
    v48 = v47;
    [v47 UTF8String];
    *(&v71 + 1) = os_transaction_create();

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v49 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
      {
        v56 = objc_opt_class();
        v57 = NSStringFromClass(v56);
        v58 = NSStringFromSelector(a2);
        *location = 138412546;
        *&location[4] = v57;
        v67 = 2112;
        v68 = v58;
        _os_log_debug_impl(&dword_2304B3000, v49, OS_LOG_TYPE_DEBUG, "creating os_transaction, %@, %@", location, 0x16u);
      }
    }

    v65[0] = MEMORY[0x277D85DD0];
    v65[1] = 3221225472;
    v65[2] = __57__SMInitiatorCacheManager_updateCacheUpdateBackstopTimer__block_invoke;
    v65[3] = &unk_2788CD428;
    v65[4] = self;
    v65[5] = buf;
    v65[6] = a2;
    [(SMInitiatorCacheManager *)self _periodicCacheUpdateWithCompletion:v65];
    _Block_object_dispose(buf, 8);
  }

  else
  {
    initiatorContact2 = [(SMInitiatorCacheManager *)self initiatorContact];
    cacheUpdateBackstopExpiryDate2 = [initiatorContact2 cacheUpdateBackstopExpiryDate];
    [cacheUpdateBackstopExpiryDate2 timeIntervalSinceNow];
    v11 = v10;
    [(SMInitiatorCacheManager *)self getCacheUpdateBackstopTimeout];
    v13 = v12;

    if (v11 > v13)
    {
      v14 = MEMORY[0x277CBEAA8];
      [(SMInitiatorCacheManager *)self getCacheUpdateBackstopTimeout];
      v15 = [v14 dateWithTimeIntervalSinceNow:?];
      initiatorContact3 = [(SMInitiatorCacheManager *)self initiatorContact];
      [initiatorContact3 setCacheUpdateBackstopExpiryDate:v15];

      [(SMInitiatorCacheManager *)self _updateInitiatorContactInStore];
    }

    objc_initWeak(location, self);
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    sessionUUID2 = [(SMInitiatorCacheManager *)self sessionUUID];
    v20 = MEMORY[0x277CCACA8];
    sessionUUID3 = [(SMInitiatorCacheManager *)self sessionUUID];
    v22 = [v20 stringWithFormat:@"%@.%@", @"com.apple.routined.SMInitiatorCacheManager.cacheUpdateBackstopTimerIdentifierBase", sessionUUID3];

    v23 = [RTXPCTimerAlarm alloc];
    queue = [(SMInitiatorCacheManager *)self queue];
    v61[0] = MEMORY[0x277D85DD0];
    v61[1] = 3221225472;
    v61[2] = __57__SMInitiatorCacheManager_updateCacheUpdateBackstopTimer__block_invoke_416;
    v61[3] = &unk_2788CD1F8;
    objc_copyWeak(v64, location);
    v25 = sessionUUID2;
    v62 = v25;
    v26 = v18;
    v63 = v26;
    v64[1] = a2;
    v27 = [(RTXPCTimerAlarm *)v23 initWithIdentifier:v22 queue:queue handler:v61];
    [(SMInitiatorCacheManager *)self setCacheUpdateBackstopTimerAlarm:v27];

    cacheUpdateBackstopTimerAlarm = [(SMInitiatorCacheManager *)self cacheUpdateBackstopTimerAlarm];
    initiatorContact4 = [(SMInitiatorCacheManager *)self initiatorContact];
    cacheUpdateBackstopExpiryDate3 = [initiatorContact4 cacheUpdateBackstopExpiryDate];
    v60 = 0;
    [cacheUpdateBackstopTimerAlarm fireWithDate:cacheUpdateBackstopExpiryDate3 error:&v60];
    v31 = v60;

    if (v31)
    {
      v32 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        sessionUUID4 = [(SMInitiatorCacheManager *)self sessionUUID];
        v34 = objc_opt_class();
        v35 = NSStringFromClass(v34);
        v36 = NSStringFromSelector(a2);
        localizedDescription = [v31 localizedDescription];
        *buf = 138413058;
        *&buf[4] = sessionUUID4;
        *&buf[12] = 2112;
        *&buf[14] = v35;
        *&buf[22] = 2112;
        v70 = v36;
        LOWORD(v71) = 2112;
        *(&v71 + 2) = localizedDescription;
        _os_log_error_impl(&dword_2304B3000, v32, OS_LOG_TYPE_ERROR, "#SafetyCache,Initiator,sessionID:%@,%@,%@,cacheUpdateBackstopTimerAlarm fireWithDate hit error: %@", buf, 0x2Au);
      }
    }

    else
    {
      v32 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        sessionUUID5 = [(SMInitiatorCacheManager *)self sessionUUID];
        v50 = objc_opt_class();
        v51 = NSStringFromClass(v50);
        v52 = NSStringFromSelector(a2);
        initiatorContact5 = [(SMInitiatorCacheManager *)self initiatorContact];
        cacheUpdateBackstopExpiryDate4 = [initiatorContact5 cacheUpdateBackstopExpiryDate];
        stringFromDate = [cacheUpdateBackstopExpiryDate4 stringFromDate];
        *buf = 138413058;
        *&buf[4] = sessionUUID5;
        *&buf[12] = 2112;
        *&buf[14] = v51;
        *&buf[22] = 2112;
        v70 = v52;
        LOWORD(v71) = 2112;
        *(&v71 + 2) = stringFromDate;
        _os_log_impl(&dword_2304B3000, v32, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Initiator,sessionID:%@,%@,%@,cacheUpdateBackstopTimerAlarm scheduled for: %@", buf, 0x2Au);
      }
    }

    objc_destroyWeak(v64);
    objc_destroyWeak(location);
  }
}

void __57__SMInitiatorCacheManager_updateCacheUpdateBackstopTimer__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) sessionUUID];
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = NSStringFromSelector(*(a1 + 48));
    v9 = 138412802;
    v10 = v3;
    v11 = 2112;
    v12 = v5;
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Initiator,sessionID:%@,%@,%@,completed cache upload due to cacheUpdateBackstopTimerAlarm expiry in the past", &v9, 0x20u);
  }

  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;
}

void __57__SMInitiatorCacheManager_updateCacheUpdateBackstopTimer__block_invoke_416(uint64_t a1)
{
  v36 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  v4 = v3;
  if (WeakRetained)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v5 = *(a1 + 40);
      v7 = NSStringFromSelector(*(a1 + 56));
      *buf = 138412802;
      *&buf[4] = v6;
      *&buf[12] = 2112;
      *&buf[14] = v5;
      *&buf[22] = 2112;
      v33 = v7;
      _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Initiator,sessionID:%@,%@,%@,cacheUpdateBackstopTimerAlarm fired", buf, 0x20u);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v33 = __Block_byref_object_copy__96;
    v34 = __Block_byref_object_dispose__96;
    v8 = MEMORY[0x277CCACA8];
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = NSStringFromSelector(*(a1 + 56));
    v12 = [v8 stringWithFormat:@"%@-%@", v10, v11];
    v13 = v12;
    [v12 UTF8String];
    v35 = os_transaction_create();

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v14 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        v20 = objc_opt_class();
        v21 = NSStringFromClass(v20);
        v22 = NSStringFromSelector(*(a1 + 56));
        *v28 = 138412546;
        v29 = v21;
        v30 = 2112;
        v31 = v22;
        _os_log_debug_impl(&dword_2304B3000, v14, OS_LOG_TYPE_DEBUG, "creating os_transaction, %@, %@", v28, 0x16u);
      }
    }

    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __57__SMInitiatorCacheManager_updateCacheUpdateBackstopTimer__block_invoke_417;
    v23[3] = &unk_2788CD450;
    v24 = *(a1 + 32);
    v15 = *(a1 + 40);
    v16 = *(a1 + 56);
    v25 = v15;
    v26 = buf;
    v27 = v16;
    [WeakRetained _periodicCacheUpdateWithCompletion:v23];

    _Block_object_dispose(buf, 8);
  }

  else
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v18 = *(a1 + 32);
      v17 = *(a1 + 40);
      v19 = NSStringFromSelector(*(a1 + 56));
      *buf = 138412802;
      *&buf[4] = v18;
      *&buf[12] = 2112;
      *&buf[14] = v17;
      *&buf[22] = 2112;
      v33 = v19;
      _os_log_error_impl(&dword_2304B3000, v4, OS_LOG_TYPE_ERROR, "#SafetyCache,Initiator,sessionID:%@,%@,%@,self not found", buf, 0x20u);
    }
  }
}

void __57__SMInitiatorCacheManager_updateCacheUpdateBackstopTimer__block_invoke_417(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = NSStringFromSelector(*(a1 + 56));
    v8 = 138412802;
    v9 = v3;
    v10 = 2112;
    v11 = v4;
    v12 = 2112;
    v13 = v5;
    _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Initiator,sessionID:%@,%@,%@,completed cache upload due to cacheUpdateBackstopTimerAlarm firing", &v8, 0x20u);
  }

  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = 0;
}

- (void)stopCacheUpdateBackstopTimer
{
  cacheUpdateBackstopTimerAlarm = [(SMInitiatorCacheManager *)self cacheUpdateBackstopTimerAlarm];

  if (cacheUpdateBackstopTimerAlarm)
  {
    cacheUpdateBackstopTimerAlarm2 = [(SMInitiatorCacheManager *)self cacheUpdateBackstopTimerAlarm];
    [cacheUpdateBackstopTimerAlarm2 invalidate];

    [(SMInitiatorCacheManager *)self setCacheUpdateBackstopTimerAlarm:0];
  }
}

- (void)_storeInitiatorContactInStore:(unint64_t)store
{
  v33 = *MEMORY[0x277D85DE8];
  if ([(SMInitiatorCacheManager *)self initiatorContactStoreInProgress])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v6 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        sessionUUID = [(SMInitiatorCacheManager *)self sessionUUID];
        v8 = objc_opt_class();
        v9 = NSStringFromClass(v8);
        v10 = NSStringFromSelector(a2);
        *buf = 138412802;
        v28 = sessionUUID;
        v29 = 2112;
        v30 = v9;
        v31 = 2112;
        v32 = v10;
        _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "#SafetyCache,Initiator,sessionID:%@,%@,%@,Update already in progress", buf, 0x20u);
      }
    }

    [(SMInitiatorCacheManager *)self setInitiatorContactUpdatePending:1];
  }

  else
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      sessionUUID2 = [(SMInitiatorCacheManager *)self sessionUUID];
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      v15 = NSStringFromSelector(a2);
      *buf = 138412802;
      v28 = sessionUUID2;
      v29 = 2112;
      v30 = v14;
      v31 = 2112;
      v32 = v15;
      _os_log_impl(&dword_2304B3000, v11, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Receiver,sessionID:%@,%@,%@,storing SMInitiatorContact in store", buf, 0x20u);
    }

    [(SMInitiatorCacheManager *)self setInitiatorContactStoreInProgress:1];
    objc_initWeak(buf, self);
    sessionUUID3 = [(SMInitiatorCacheManager *)self sessionUUID];
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    safetyCacheStore = [(SMInitiatorCacheManager *)self safetyCacheStore];
    initiatorContact = [(SMInitiatorCacheManager *)self initiatorContact];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __57__SMInitiatorCacheManager__storeInitiatorContactInStore___block_invoke;
    v23[3] = &unk_2788CD4A0;
    objc_copyWeak(v26, buf);
    v21 = sessionUUID3;
    v24 = v21;
    v22 = v18;
    v25 = v22;
    v26[1] = a2;
    v26[2] = store;
    [safetyCacheStore storeInitiatorContact:initiatorContact handler:v23];

    objc_destroyWeak(v26);
    objc_destroyWeak(buf);
  }
}

void __57__SMInitiatorCacheManager__storeInitiatorContactInStore___block_invoke(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained queue];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __57__SMInitiatorCacheManager__storeInitiatorContactInStore___block_invoke_418;
    v14[3] = &unk_2788CD478;
    v15 = v5;
    v16 = v3;
    v17 = *(a1 + 32);
    v7 = *(a1 + 40);
    v8 = *(a1 + 56);
    v9 = *(a1 + 64);
    v18 = v7;
    v19 = v8;
    v20 = v9;
    dispatch_async(v6, v14);

    v10 = v15;
  }

  else
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 32);
      v12 = *(a1 + 40);
      v13 = NSStringFromSelector(*(a1 + 56));
      *buf = 138412802;
      v22 = v11;
      v23 = 2112;
      v24 = v12;
      v25 = 2112;
      v26 = v13;
      _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "#SafetyCache,Initiator,sessionID:%@,%@,%@,object has been cleaned up", buf, 0x20u);
    }
  }
}

uint64_t __57__SMInitiatorCacheManager__storeInitiatorContactInStore___block_invoke_418(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) setInitiatorContactStoreInProgress:0];
  v2 = *(a1 + 40);
  v3 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 48);
      v12 = *(a1 + 56);
      v13 = NSStringFromSelector(*(a1 + 64));
      v14 = *(a1 + 40);
      v15 = *(a1 + 72);
      v16 = 138413314;
      v17 = v11;
      v18 = 2112;
      v19 = v12;
      v20 = 2112;
      v21 = v13;
      v22 = 2112;
      v23 = v14;
      v24 = 1024;
      v25 = v15;
      _os_log_error_impl(&dword_2304B3000, v4, OS_LOG_TYPE_ERROR, "#SafetyCache,Initiator,sessionID:%@,%@,%@,Stored with error %@, retries left %d", &v16, 0x30u);
    }

    v5 = *(a1 + 72);
    v6 = *(a1 + 32);
    if (v5)
    {
      return [v6 _storeInitiatorContactInStore:v5 - 1];
    }

    else
    {
      return [v6 setInitiatorContactUpdatePending:0];
    }
  }

  else
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 48);
      v9 = *(a1 + 56);
      v10 = NSStringFromSelector(*(a1 + 64));
      v16 = 138412802;
      v17 = v8;
      v18 = 2112;
      v19 = v9;
      v20 = 2112;
      v21 = v10;
      _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Initiator,sessionID:%@,%@,%@,Successfully stored InitiatorContact", &v16, 0x20u);
    }

    [*(a1 + 32) setInitiatorContactStored:1];
    result = [*(a1 + 32) initiatorContactUpdatePending];
    if (result)
    {
      [*(a1 + 32) setInitiatorContactUpdatePending:0];
      return [*(a1 + 32) _updateInitiatorContactInStore];
    }
  }

  return result;
}

- (void)_updateInitiatorContactInStore
{
  v36 = *MEMORY[0x277D85DE8];
  if ([(SMInitiatorCacheManager *)self initiatorContactStored])
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      sessionUUID = [(SMInitiatorCacheManager *)self sessionUUID];
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = NSStringFromSelector(a2);
      *buf = 138413058;
      v29 = sessionUUID;
      v30 = 2112;
      v31 = v8;
      v32 = 2112;
      v33 = v9;
      v34 = 2112;
      v35 = uUID;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Initiator,sessionID:%@,%@,%@,Updating InitiatorContact, transaction,%@", buf, 0x2Au);
    }

    sessionUUID2 = [(SMInitiatorCacheManager *)self sessionUUID];
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    safetyCacheStore = [(SMInitiatorCacheManager *)self safetyCacheStore];
    initiatorContact = [(SMInitiatorCacheManager *)self initiatorContact];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __57__SMInitiatorCacheManager__updateInitiatorContactInStore__block_invoke;
    v23[3] = &unk_2788CD4C8;
    v24 = sessionUUID2;
    v25 = v12;
    v26 = uUID;
    v27 = a2;
    v15 = uUID;
    v16 = v12;
    v17 = sessionUUID2;
    [safetyCacheStore updateInitiatorContact:initiatorContact handler:v23];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v18 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        sessionUUID3 = [(SMInitiatorCacheManager *)self sessionUUID];
        v20 = objc_opt_class();
        v21 = NSStringFromClass(v20);
        v22 = NSStringFromSelector(a2);
        *buf = 138412802;
        v29 = sessionUUID3;
        v30 = 2112;
        v31 = v21;
        v32 = 2112;
        v33 = v22;
        _os_log_impl(&dword_2304B3000, v18, OS_LOG_TYPE_INFO, "#SafetyCache,Receiver,sessionID:%@,%@,%@,SMInitiatorContact not yet stored", buf, 0x20u);
      }
    }

    [(SMInitiatorCacheManager *)self _storeInitiatorContactInStore:2];
  }
}

void __57__SMInitiatorCacheManager__updateInitiatorContactInStore__block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v7 = *(a1 + 40);
      v8 = NSStringFromSelector(*(a1 + 56));
      v9 = *(a1 + 48);
      v13 = 138413314;
      v14 = v6;
      v15 = 2112;
      v16 = v7;
      v17 = 2112;
      v18 = v8;
      v19 = 2112;
      v20 = v3;
      v21 = 2112;
      v22 = v9;
      _os_log_error_impl(&dword_2304B3000, v5, OS_LOG_TYPE_ERROR, "#SafetyCache,Initiator,sessionID:%@,%@,%@,Update returned error %@, transaction,%@", &v13, 0x34u);
LABEL_6:
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v8 = NSStringFromSelector(*(a1 + 56));
    v12 = *(a1 + 48);
    v13 = 138413058;
    v14 = v10;
    v15 = 2112;
    v16 = v11;
    v17 = 2112;
    v18 = v8;
    v19 = 2112;
    v20 = v12;
    _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Initiator,sessionID:%@,%@,%@,Successfully updated InitiatorContact, transaction,%@", &v13, 0x2Au);
    goto LABEL_6;
  }
}

- (void)_cleanUpInitiatorContact
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    sessionUUID = [(SMInitiatorCacheManager *)self sessionUUID];
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = NSStringFromSelector(a2);
    v9 = 138412802;
    v10 = sessionUUID;
    v11 = 2112;
    v12 = v7;
    v13 = 2112;
    v14 = v8;
    _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Initiator,sessionID:%@,%@,%@,cleanup contact", &v9, 0x20u);
  }

  [(SMInitiatorCacheManager *)self _cancelScheduledKeyRelease];
  [(SMInitiatorCacheManager *)self _cleanupActiveSessionZone];
  [(SMInitiatorCacheManager *)self _cleanUpInitiatorContactLocalStore];
}

- (void)eraseCacheDataInMemory
{
  v21 = *MEMORY[0x277D85DE8];
  initiatorContact = [(SMInitiatorCacheManager *)self initiatorContact];
  phoneCache = [initiatorContact phoneCache];
  if (phoneCache)
  {
  }

  else
  {
    initiatorContact2 = [(SMInitiatorCacheManager *)self initiatorContact];
    watchCache = [initiatorContact2 watchCache];

    if (!watchCache)
    {
      return;
    }
  }

  v8 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    sessionUUID = [(SMInitiatorCacheManager *)self sessionUUID];
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = NSStringFromSelector(a2);
    v15 = 138412802;
    v16 = sessionUUID;
    v17 = 2112;
    v18 = v11;
    v19 = 2112;
    v20 = v12;
    _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Initiator,sessionID:%@,%@,%@", &v15, 0x20u);
  }

  initiatorContact3 = [(SMInitiatorCacheManager *)self initiatorContact];
  [initiatorContact3 setPhoneCache:0];

  initiatorContact4 = [(SMInitiatorCacheManager *)self initiatorContact];
  [initiatorContact4 setWatchCache:0];

  [(SMInitiatorCacheManager *)self notifyObserversSafetyCacheDidUpdate];
}

- (void)_cleanupActiveSessionZone
{
  initiatorContact = [(SMInitiatorCacheManager *)self initiatorContact];
  if ([initiatorContact cloudkitShareZoneCleanedUpSuccessfully])
  {
  }

  else
  {
    initializationInProgress = [(SMInitiatorCacheManager *)self initializationInProgress];

    if (!initializationInProgress)
    {
      objc_initWeak(&location, self);
      v5 = [[SMCloudKitQosOptions alloc] initWithDefaultQos:1 masqueradeBundleID:0 xpcActivity:0];
      activeSessionZone = [(SMInitiatorCacheManager *)self activeSessionZone];
      privateDatabase = [activeSessionZone privateDatabase];
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __52__SMInitiatorCacheManager__cleanupActiveSessionZone__block_invoke;
      v9[3] = &unk_2788CD4F0;
      objc_copyWeak(v10, &location);
      v10[1] = a2;
      [(SMInitiatorCacheManager *)self deleteZoneFromDatabaseWithRetry:2 database:privateDatabase qos:v5 withCompletion:v9];

      objc_destroyWeak(v10);
      objc_destroyWeak(&location);
    }
  }
}

void __52__SMInitiatorCacheManager__cleanupActiveSessionZone__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [WeakRetained sessionUUID];
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = NSStringFromSelector(*(a1 + 40));
      v13 = 138413314;
      v14 = v8;
      v15 = 2112;
      v16 = v10;
      v17 = 2112;
      v18 = v11;
      v19 = 2112;
      v20 = v5;
      v21 = 1024;
      v22 = a2;
      _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Initiator,sessionID:%@,%@,%@,cleanupCloudkit with error %@ and success %d", &v13, 0x30u);
    }

    v12 = [WeakRetained initiatorContact];
    [v12 setCloudkitShareZoneCleanedUpSuccessfully:a2];

    [WeakRetained _updateInitiatorContactInStore];
    [WeakRetained _cleanUpInitiatorContactLocalStore];
  }
}

- (void)deleteZoneFromDatabaseWithRetry:(int64_t)retry database:(id)database qos:(id)qos withCompletion:(id)completion
{
  v51 = *MEMORY[0x277D85DE8];
  databaseCopy = database;
  qosCopy = qos;
  completionCopy = completion;
  if (completionCopy)
  {
    if (databaseCopy && qosCopy)
    {
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      sessionUUID = [(SMInitiatorCacheManager *)self sessionUUID];
      objc_initWeak(location, self);
      activeSessionZone = [(SMInitiatorCacheManager *)self activeSessionZone];
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __87__SMInitiatorCacheManager_deleteZoneFromDatabaseWithRetry_database_qos_withCompletion___block_invoke;
      v33[3] = &unk_2788CD518;
      objc_copyWeak(v39, location);
      v18 = sessionUUID;
      v34 = v18;
      v19 = v15;
      v35 = v19;
      v39[1] = a2;
      v38 = completionCopy;
      v39[2] = retry;
      v36 = databaseCopy;
      v37 = qosCopy;
      [activeSessionZone deleteZoneFromDatabase:v36 qos:v37 withCompletion:v33];

      objc_destroyWeak(v39);
      objc_destroyWeak(location);
    }

    else
    {
      v20 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sessionUUID2 = [(SMInitiatorCacheManager *)self sessionUUID];
        v30 = objc_opt_class();
        v31 = NSStringFromClass(v30);
        v32 = NSStringFromSelector(a2);
        *location = 138413314;
        *&location[4] = sessionUUID2;
        v43 = 2112;
        v44 = v31;
        v45 = 2112;
        v46 = v32;
        v47 = 2112;
        v48 = databaseCopy;
        v49 = 2112;
        v50 = qosCopy;
        _os_log_error_impl(&dword_2304B3000, v20, OS_LOG_TYPE_ERROR, "#SafetyCache,Initiator,sessionID:%@,%@,%@,missing required fields,database,%@,qos,%@", location, 0x34u);
      }

      v21 = objc_alloc(MEMORY[0x277CCA9B8]);
      v40 = *MEMORY[0x277CCA450];
      v22 = MEMORY[0x277CCACA8];
      sessionUUID3 = [(SMInitiatorCacheManager *)self sessionUUID];
      v24 = objc_opt_class();
      v25 = NSStringFromClass(v24);
      v26 = NSStringFromSelector(a2);
      v27 = [v22 stringWithFormat:@"#SafetyCache, Initiator, sessionID:%@, %@, %@, failed due to invalid parameters", sessionUUID3, v25, v26];
      v41 = v27;
      v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
      v19 = [v21 initWithDomain:*MEMORY[0x277D4ACD0] code:7 userInfo:v28];

      (*(completionCopy + 2))(completionCopy, 0, v19);
    }
  }

  else
  {
    v19 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *location = 0;
      _os_log_error_impl(&dword_2304B3000, v19, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: completion", location, 2u);
    }
  }
}

void __87__SMInitiatorCacheManager_deleteZoneFromDatabaseWithRetry_database_qos_withCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  if (!WeakRetained)
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v18 = *(a1 + 32);
      v19 = *(a1 + 40);
      v20 = NSStringFromSelector(*(a1 + 80));
      v27 = 138412802;
      v28 = v18;
      v29 = 2112;
      v30 = v19;
      v31 = 2112;
      v32 = v20;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "#SafetyCache,Initiator,sessionID:%@,%@,%@,cache manager released during zone delete", &v27, 0x20u);
    }

    v10 = *(*(a1 + 64) + 16);
    goto LABEL_18;
  }

  if (!v4)
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      v12 = *(a1 + 40);
      v13 = NSStringFromSelector(*(a1 + 80));
      v27 = 138412802;
      v28 = v11;
      v29 = 2112;
      v30 = v12;
      v31 = 2112;
      v32 = v13;
      _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Initiator,sessionID:%@,%@,%@,zone deleted successfully", &v27, 0x20u);
    }

    goto LABEL_17;
  }

  if (![SMCloudKitZone shouldRetryCkError:v4])
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
LABEL_17:

      v10 = *(*(a1 + 64) + 16);
LABEL_18:
      v10();
      goto LABEL_19;
    }

    v14 = *(a1 + 32);
    v15 = *(a1 + 40);
    v16 = NSStringFromSelector(*(a1 + 80));
    v27 = 138413058;
    v28 = v14;
    v29 = 2112;
    v30 = v15;
    v31 = 2112;
    v32 = v16;
    v33 = 2112;
    v34 = v4;
    v17 = "#SafetyCache,Initiator,sessionID:%@,%@,%@,failed to delete zone with non recoverable error %@";
LABEL_21:
    _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, v17, &v27, 0x2Au);

    goto LABEL_17;
  }

  v6 = *(a1 + 88);
  v7 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
  if (v6 <= 0)
  {
    if (!v8)
    {
      goto LABEL_17;
    }

    v25 = *(a1 + 32);
    v26 = *(a1 + 40);
    v16 = NSStringFromSelector(*(a1 + 80));
    v27 = 138413058;
    v28 = v25;
    v29 = 2112;
    v30 = v26;
    v31 = 2112;
    v32 = v16;
    v33 = 2112;
    v34 = v4;
    v17 = "#SafetyCache,Initiator,sessionID:%@,%@,%@,failed to delete zone after retries with recoverable error %@";
    goto LABEL_21;
  }

  if (v8)
  {
    v21 = *(a1 + 32);
    v22 = *(a1 + 40);
    v23 = NSStringFromSelector(*(a1 + 80));
    v24 = *(a1 + 88);
    v27 = 138413314;
    v28 = v21;
    v29 = 2112;
    v30 = v22;
    v31 = 2112;
    v32 = v23;
    v33 = 2112;
    v34 = v4;
    v35 = 1024;
    v36 = v24;
    _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "#SafetyCache,Initiator,sessionID:%@,%@,%@,failed to delete zone with recoverable error %@, pendingRetryCount %d, retrying...", &v27, 0x30u);
  }

  [WeakRetained deleteZoneFromDatabaseWithRetry:*(a1 + 88) - 1 database:*(a1 + 48) qos:*(a1 + 56) withCompletion:*(a1 + 64)];
LABEL_19:
}

- (void)_cleanUpInitiatorContactLocalStore
{
  v110 = *MEMORY[0x277D85DE8];
  initiatorContact = [(SMInitiatorCacheManager *)self initiatorContact];
  if ([initiatorContact cloudkitShareZoneCleanedUpSuccessfully])
  {

    selfCopy2 = self;
    _isKeyReleaseScheduled = [(SMInitiatorCacheManager *)self _isKeyReleaseScheduled];
  }

  else
  {
    initiatorContact2 = [(SMInitiatorCacheManager *)self initiatorContact];
    startingLocation = [initiatorContact2 startingLocation];
    date = [startingLocation date];
    if (date)
    {
      v8 = MEMORY[0x277CBEAA8];
      initiatorContact3 = [(SMInitiatorCacheManager *)self initiatorContact];
      startingLocation2 = [initiatorContact3 startingLocation];
      date2 = [startingLocation2 date];
      v12 = [v8 dateWithTimeInterval:date2 sinceDate:604800.0];
      v13 = [MEMORY[0x277CBEAA8] now];
      v14 = [v12 isAfterDate:v13];
    }

    else
    {
      v14 = 0;
    }

    selfCopy2 = self;

    _isKeyReleaseScheduled = [(SMInitiatorCacheManager *)self _isKeyReleaseScheduled];
    if (v14)
    {
      v15 = 0;
      v16 = 1;
      goto LABEL_11;
    }
  }

  v16 = 0;
  v15 = 0;
  if (![(SMInitiatorCacheManager *)selfCopy2 initializationInProgress]&& !_isKeyReleaseScheduled)
  {
    _isKeyReleaseScheduled = 0;
    v16 = 0;
    v15 = ![(SMInitiatorCacheManager *)selfCopy2 scheduledSendInProgress];
  }

LABEL_11:
  v17 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    sessionUUID = [(SMInitiatorCacheManager *)self sessionUUID];
    v18 = objc_opt_class();
    v76 = NSStringFromClass(v18);
    v75 = NSStringFromSelector(a2);
    initiatorContact4 = [(SMInitiatorCacheManager *)self initiatorContact];
    identifier = [initiatorContact4 identifier];
    scheduledSendInProgress = [(SMInitiatorCacheManager *)self scheduledSendInProgress];
    initiatorContact5 = [(SMInitiatorCacheManager *)self initiatorContact];
    shouldBeCleanedUpDate = [initiatorContact5 shouldBeCleanedUpDate];
    stringFromDate = [shouldBeCleanedUpDate stringFromDate];
    *buf = 138414338;
    v93 = sessionUUID;
    v94 = 2112;
    v95 = v76;
    v96 = 2112;
    v97 = v75;
    v98 = 2112;
    v99 = identifier;
    v100 = 1024;
    v101 = v16;
    v102 = 1024;
    v103 = _isKeyReleaseScheduled;
    v104 = 1024;
    v105 = scheduledSendInProgress;
    v106 = 1024;
    v107 = v15;
    v108 = 2112;
    v109 = stringFromDate;
    _os_log_impl(&dword_2304B3000, v17, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Initiator,sessionID:%@,%@,%@,%@, cloudkit %d, scheduleSendMsgToCancel %d, scheduledSendInProgress %d, cleanupConditionsMet %d, shouldBeCleanedUpDate %@", buf, 0x4Cu);
  }

  sessionUUID2 = [(SMInitiatorCacheManager *)self sessionUUID];
  v26 = objc_opt_class();
  v27 = NSStringFromClass(v26);
  if (v15)
  {
    initiatorContact6 = [(SMInitiatorCacheManager *)self initiatorContact];
    shouldBeCleanedUpDate2 = [initiatorContact6 shouldBeCleanedUpDate];
    if (shouldBeCleanedUpDate2)
    {
      initiatorContact7 = [(SMInitiatorCacheManager *)self initiatorContact];
      shouldBeCleanedUpDate3 = [initiatorContact7 shouldBeCleanedUpDate];
      v32 = [MEMORY[0x277CBEAA8] now];
      v33 = [shouldBeCleanedUpDate3 isBeforeDate:v32];

      if (!v33)
      {
        initiatorContact8 = [(SMInitiatorCacheManager *)self initiatorContact];
        shouldBeCleanedUpDate4 = [initiatorContact8 shouldBeCleanedUpDate];
        v36 = [MEMORY[0x277CBEAA8] now];
        if ([shouldBeCleanedUpDate4 isAfterDate:v36])
        {
          cleanupCacheTimerAlarm = [(SMInitiatorCacheManager *)self cleanupCacheTimerAlarm];
          v38 = cleanupCacheTimerAlarm == 0;

          if (v38)
          {
            objc_initWeak(&location, self);
            v39 = MEMORY[0x277CCACA8];
            sessionUUID3 = [(SMInitiatorCacheManager *)self sessionUUID];
            v41 = [v39 stringWithFormat:@"%@.%@", @"com.apple.routined.SMInitiatorCacheManager.cachePersistenceTimerIdentifierBase", sessionUUID3];

            v42 = [RTXPCTimerAlarm alloc];
            queue = [(SMInitiatorCacheManager *)self queue];
            v82[0] = MEMORY[0x277D85DD0];
            v82[1] = 3221225472;
            v82[2] = __61__SMInitiatorCacheManager__cleanUpInitiatorContactLocalStore__block_invoke_420;
            v82[3] = &unk_2788CD1F8;
            objc_copyWeak(v85, &location);
            v83 = sessionUUID2;
            v84 = v27;
            v85[1] = a2;
            v44 = [(RTXPCTimerAlarm *)v42 initWithIdentifier:v41 queue:queue handler:v82];
            [(SMInitiatorCacheManager *)self setCleanupCacheTimerAlarm:v44];

            cleanupCacheTimerAlarm2 = [(SMInitiatorCacheManager *)self cleanupCacheTimerAlarm];
            initiatorContact9 = [(SMInitiatorCacheManager *)self initiatorContact];
            shouldBeCleanedUpDate5 = [initiatorContact9 shouldBeCleanedUpDate];
            v81 = 0;
            [cleanupCacheTimerAlarm2 fireWithDate:shouldBeCleanedUpDate5 error:&v81];
            v48 = v81;

            if (v48)
            {
              v49 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
              if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
              {
                sessionUUID4 = [(SMInitiatorCacheManager *)self sessionUUID];
                v71 = objc_opt_class();
                v72 = NSStringFromClass(v71);
                v73 = NSStringFromSelector(a2);
                localizedDescription = [v48 localizedDescription];
                *buf = 138413058;
                v93 = sessionUUID4;
                v94 = 2112;
                v95 = v72;
                v96 = 2112;
                v97 = v73;
                v98 = 2112;
                v99 = localizedDescription;
                _os_log_error_impl(&dword_2304B3000, v49, OS_LOG_TYPE_ERROR, "#SafetyCache,Initiator,sessionID:%@,%@,%@,cachePersistenceTimerAlarm fireWithDate hit error: %@", buf, 0x2Au);
              }

              [(SMInitiatorCacheManager *)self setCleanupCacheTimerAlarm:0];
            }

            else
            {
              v63 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
              if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
              {
                sessionUUID5 = [(SMInitiatorCacheManager *)self sessionUUID];
                v64 = objc_opt_class();
                v65 = NSStringFromClass(v64);
                v66 = NSStringFromSelector(a2);
                initiatorContact10 = [(SMInitiatorCacheManager *)self initiatorContact];
                shouldBeCleanedUpDate6 = [initiatorContact10 shouldBeCleanedUpDate];
                stringFromDate2 = [shouldBeCleanedUpDate6 stringFromDate];
                *buf = 138413058;
                v93 = sessionUUID5;
                v94 = 2112;
                v95 = v65;
                v96 = 2112;
                v97 = v66;
                v98 = 2112;
                v99 = stringFromDate2;
                _os_log_impl(&dword_2304B3000, v63, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Initiator,sessionID:%@,%@,%@,cachePersistenceTimerAlarm scheduled for: %@", buf, 0x2Au);
              }
            }

            objc_destroyWeak(v85);
            objc_destroyWeak(&location);
          }
        }

        else
        {
        }

        goto LABEL_29;
      }
    }

    else
    {
    }

    [(SMInitiatorCacheManager *)self _stopCleanupCacheTimerAlarm];
    v55 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
    {
      sessionUUID6 = [(SMInitiatorCacheManager *)self sessionUUID];
      v57 = objc_opt_class();
      v58 = NSStringFromClass(v57);
      v59 = NSStringFromSelector(a2);
      *buf = 138412802;
      v93 = sessionUUID6;
      v94 = 2112;
      v95 = v58;
      v96 = 2112;
      v97 = v59;
      _os_log_impl(&dword_2304B3000, v55, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Initiator,sessionID:%@,%@,%@,localCleanup starting", buf, 0x20u);
    }

    objc_initWeak(buf, self);
    safetyCacheStore = [(SMInitiatorCacheManager *)self safetyCacheStore];
    initiatorContact11 = [(SMInitiatorCacheManager *)self initiatorContact];
    v87[0] = MEMORY[0x277D85DD0];
    v87[1] = 3221225472;
    v87[2] = __61__SMInitiatorCacheManager__cleanUpInitiatorContactLocalStore__block_invoke;
    v87[3] = &unk_2788CD540;
    objc_copyWeak(v91, buf);
    v88 = sessionUUID2;
    v62 = v27;
    v91[1] = a2;
    v89 = v62;
    selfCopy3 = self;
    [safetyCacheStore removeInitiatorContact:initiatorContact11 handler:v87];

    objc_destroyWeak(v91);
    objc_destroyWeak(buf);
  }

  else
  {
    v50 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
    {
      sessionUUID7 = [(SMInitiatorCacheManager *)self sessionUUID];
      v52 = objc_opt_class();
      v53 = NSStringFromClass(v52);
      v54 = NSStringFromSelector(a2);
      *buf = 138412802;
      v93 = sessionUUID7;
      v94 = 2112;
      v95 = v53;
      v96 = 2112;
      v97 = v54;
      _os_log_impl(&dword_2304B3000, v50, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Initiator,sessionID:%@,%@,%@,cleanup conditions not yet satisfied", buf, 0x20u);
    }
  }

LABEL_29:
}

void __61__SMInitiatorCacheManager__cleanUpInitiatorContactLocalStore__block_invoke(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = [WeakRetained initiatorContact];

  if (v5)
  {
    v6 = [WeakRetained queue];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __61__SMInitiatorCacheManager__cleanUpInitiatorContactLocalStore__block_invoke_419;
    v15[3] = &unk_2788C5F50;
    v16 = *(a1 + 32);
    v7 = *(a1 + 40);
    v8 = *(a1 + 64);
    v17 = v7;
    v21 = v8;
    v18 = v3;
    v9 = WeakRetained;
    v10 = *(a1 + 48);
    v19 = v9;
    v20 = v10;
    dispatch_async(v6, v15);

    v11 = v16;
  }

  else
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = *(a1 + 32);
      v13 = *(a1 + 40);
      v14 = NSStringFromSelector(*(a1 + 64));
      *buf = 138413058;
      v23 = v12;
      v24 = 2112;
      v25 = v13;
      v26 = 2112;
      v27 = v14;
      v28 = 2112;
      v29 = v3;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "#SafetyCache,Initiator,sessionID:%@,%@,%@,localCleanup finished with not valid initiatorContact %@", buf, 0x2Au);
    }
  }
}

void __61__SMInitiatorCacheManager__cleanUpInitiatorContactLocalStore__block_invoke_419(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = NSStringFromSelector(*(a1 + 72));
    v6 = *(a1 + 48);
    v9 = 138413058;
    v10 = v3;
    v11 = 2112;
    v12 = v4;
    v13 = 2112;
    v14 = v5;
    v15 = 2112;
    v16 = v6;
    _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Initiator,sessionID:%@,%@,%@,localCleanup with error %@", &v9, 0x2Au);
  }

  if (!*(a1 + 48))
  {
    v7 = [*(a1 + 56) delegate];
    v8 = [*(a1 + 56) sessionUUID];
    [v7 cacheManagerCleanedUpForSessionID:v8];

    [*(a1 + 64) eraseCacheDataInMemory];
  }
}

void __61__SMInitiatorCacheManager__cleanUpInitiatorContactLocalStore__block_invoke_420(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained initiatorContact];

  if (v3)
  {
    [WeakRetained _stopCleanupCacheTimerAlarm];
    v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = *(a1 + 40);
      v7 = NSStringFromSelector(*(a1 + 56));
      v12 = 138412802;
      v13 = v5;
      v14 = 2112;
      v15 = v6;
      v16 = 2112;
      v17 = v7;
      _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Initiator,sessionID:%@,%@,%@,schedule cleanup fired", &v12, 0x20u);
    }

    [WeakRetained _cleanUpInitiatorContactLocalStore];
  }

  else
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      v10 = *(a1 + 40);
      v11 = NSStringFromSelector(*(a1 + 56));
      v12 = 138412802;
      v13 = v9;
      v14 = 2112;
      v15 = v10;
      v16 = 2112;
      v17 = v11;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "#SafetyCache,Initiator,sessionID:%@,%@,%@,schedule cleanup fired not valid initiatorContact", &v12, 0x20u);
    }
  }
}

- (void)_stopCleanupCacheTimerAlarm
{
  v17 = *MEMORY[0x277D85DE8];
  cleanupCacheTimerAlarm = [(SMInitiatorCacheManager *)self cleanupCacheTimerAlarm];

  if (cleanupCacheTimerAlarm)
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      sessionUUID = [(SMInitiatorCacheManager *)self sessionUUID];
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = NSStringFromSelector(a2);
      v11 = 138412802;
      v12 = sessionUUID;
      v13 = 2112;
      v14 = v8;
      v15 = 2112;
      v16 = v9;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Initiator,sessionID:%@,%@,%@,invalidate cleanupCacheTimerAlarm", &v11, 0x20u);
    }

    cleanupCacheTimerAlarm2 = [(SMInitiatorCacheManager *)self cleanupCacheTimerAlarm];
    [cleanupCacheTimerAlarm2 invalidate];

    [(SMInitiatorCacheManager *)self setCleanupCacheTimerAlarm:0];
  }
}

- (void)_registerForGeneralNotifications
{
  v19 = *MEMORY[0x277D85DE8];
  if (![(SMInitiatorCacheManager *)self registeredForGeneralNotifications])
  {
    [(SMInitiatorCacheManager *)self setRegisteredForGeneralNotifications:1];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        sessionUUID = [(SMInitiatorCacheManager *)self sessionUUID];
        v6 = objc_opt_class();
        v7 = NSStringFromClass(v6);
        v8 = NSStringFromSelector(a2);
        v13 = 138412802;
        v14 = sessionUUID;
        v15 = 2112;
        v16 = v7;
        v17 = 2112;
        v18 = v8;
        _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "#SafetyCache,Initiator,sessionID:%@,%@,%@,register for general notifications", &v13, 0x20u);
      }
    }

    networkOfInterestManager = [(SMInitiatorCacheManager *)self networkOfInterestManager];
    v10 = +[(RTNotification *)RTNetworkOfInterestManagerCellLinkQualityChangedNotification];
    [networkOfInterestManager addObserver:self selector:sel_onCellLinkQualityChangedNotification_ name:v10];

    networkOfInterestManager2 = [(SMInitiatorCacheManager *)self networkOfInterestManager];
    v12 = +[(RTNotification *)RTNetworkOfInterestManagerWifiLinkQualityChangedNotification];
    [networkOfInterestManager2 addObserver:self selector:sel_onWifiLinkQualityChangedNotification_ name:v12];
  }
}

- (void)_registerForActiveNotifications
{
  v46 = *MEMORY[0x277D85DE8];
  if (![(SMInitiatorCacheManager *)self registeredForActiveNotifications])
  {
    [(SMInitiatorCacheManager *)self setRegisteredForActiveNotifications:1];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        sessionUUID = [(SMInitiatorCacheManager *)self sessionUUID];
        v6 = objc_opt_class();
        v7 = NSStringFromClass(v6);
        v8 = NSStringFromSelector(a2);
        *buf = 138412802;
        v37 = sessionUUID;
        v38 = 2112;
        v39 = v7;
        v40 = 2112;
        v41 = v8;
        _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "#SafetyCache,Initiator,sessionID:%@,%@,%@,register for active notifications", buf, 0x20u);
      }
    }

    locationAwarenessManager = [(SMInitiatorCacheManager *)self locationAwarenessManager];
    v35 = 0;
    [locationAwarenessManager addLocationHeartbeatRequester:self interval:&v35 error:300.0];
    v10 = v35;

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v11 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        sessionUUID2 = [(SMInitiatorCacheManager *)self sessionUUID];
        v13 = objc_opt_class();
        v14 = NSStringFromClass(v13);
        v15 = NSStringFromSelector(a2);
        code = [v10 code];
        localizedDescription = [v10 localizedDescription];
        *buf = 138413314;
        v37 = sessionUUID2;
        v38 = 2112;
        v39 = v14;
        v40 = 2112;
        v41 = v15;
        v42 = 2048;
        v43 = code;
        v44 = 2112;
        v45 = localizedDescription;
        _os_log_impl(&dword_2304B3000, v11, OS_LOG_TYPE_INFO, "#SafetyCache,Initiator,sessionID:%@,%@,%@,Request location heartbeat error, code, %ld, description, %@", buf, 0x34u);
      }
    }

    objc_initWeak(buf, self);
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    sessionUUID3 = [(SMInitiatorCacheManager *)self sessionUUID];
    v21 = [SMScreenLockMonitor alloc];
    queue = [(SMInitiatorCacheManager *)self queue];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __58__SMInitiatorCacheManager__registerForActiveNotifications__block_invoke;
    v31[3] = &unk_2788CD568;
    objc_copyWeak(v34, buf);
    v23 = sessionUUID3;
    v32 = v23;
    v24 = v19;
    v33 = v24;
    v34[1] = a2;
    v25 = [(SMScreenLockMonitor *)v21 initWithQueue:queue handler:v31];
    [(SMInitiatorCacheManager *)self setScreenLockMonitor:v25];

    vehicleLocationProvider = [(SMInitiatorCacheManager *)self vehicleLocationProvider];
    v27 = +[(RTNotification *)RTVehicleEventNotification];
    [vehicleLocationProvider addObserver:self selector:sel_onVehicleEventNotification_ name:v27];

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, self, handleShareAllLocationsChanged, *MEMORY[0x277D4AE20], 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    if ([MEMORY[0x277D4AAE0] zelkovaWorkoutEnabled])
    {
      healthKitManager = [(SMInitiatorCacheManager *)self healthKitManager];
      v30 = +[(RTNotification *)RTHealthKitManagerWorkoutSnapshotUpdateNotification];
      [healthKitManager addObserver:self selector:sel_onHealthKitManagerNotification_ name:v30];
    }

    objc_destroyWeak(v34);
    objc_destroyWeak(buf);
  }
}

void __58__SMInitiatorCacheManager__registerForActiveNotifications__block_invoke(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained onLockStateChange:a2];
  }

  else
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v8 = *(a1 + 40);
      v9 = NSStringFromSelector(*(a1 + 56));
      v10 = 138412802;
      v11 = v7;
      v12 = 2112;
      v13 = v8;
      v14 = 2112;
      v15 = v9;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "#SafetyCache,Initiator,sessionID:%@,%@,%@,object has been cleaned up", &v10, 0x20u);
    }
  }
}

- (void)_unregisterForGeneralNotifications
{
  v16 = *MEMORY[0x277D85DE8];
  if ([(SMInitiatorCacheManager *)self registeredForGeneralNotifications])
  {
    [(SMInitiatorCacheManager *)self setRegisteredForGeneralNotifications:0];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        sessionUUID = [(SMInitiatorCacheManager *)self sessionUUID];
        v6 = objc_opt_class();
        v7 = NSStringFromClass(v6);
        v8 = NSStringFromSelector(a2);
        v10 = 138412802;
        v11 = sessionUUID;
        v12 = 2112;
        v13 = v7;
        v14 = 2112;
        v15 = v8;
        _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "#SafetyCache,Initiator,sessionID:%@,%@,%@,unregister for general notifications", &v10, 0x20u);
      }
    }

    networkOfInterestManager = [(SMInitiatorCacheManager *)self networkOfInterestManager];
    [networkOfInterestManager removeObserver:self];
  }
}

- (void)_unregisterForActiveNotifications
{
  v20 = *MEMORY[0x277D85DE8];
  if ([(SMInitiatorCacheManager *)self registeredForActiveNotifications])
  {
    [(SMInitiatorCacheManager *)self setRegisteredForActiveNotifications:0];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        sessionUUID = [(SMInitiatorCacheManager *)self sessionUUID];
        v6 = objc_opt_class();
        v7 = NSStringFromClass(v6);
        v8 = NSStringFromSelector(a2);
        v14 = 138412802;
        v15 = sessionUUID;
        v16 = 2112;
        v17 = v7;
        v18 = 2112;
        v19 = v8;
        _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "#SafetyCache,Initiator,sessionID:%@,%@,%@,unregister for active notifications", &v14, 0x20u);
      }
    }

    locationAwarenessManager = [(SMInitiatorCacheManager *)self locationAwarenessManager];
    [locationAwarenessManager removeLocationHeartbeatRequester:self];

    screenLockMonitor = [(SMInitiatorCacheManager *)self screenLockMonitor];
    [screenLockMonitor _unregisterForLockNotification];

    [(SMInitiatorCacheManager *)self setScreenLockMonitor:0];
    vehicleLocationProvider = [(SMInitiatorCacheManager *)self vehicleLocationProvider];
    [vehicleLocationProvider removeObserver:self];

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, *MEMORY[0x277D4AE20], 0);
    if ([MEMORY[0x277D4AAE0] zelkovaWorkoutEnabled])
    {
      healthKitManager = [(SMInitiatorCacheManager *)self healthKitManager];
      [healthKitManager removeObserver:self];
    }
  }
}

- (void)_fetchLocationWithCompletion:(id)completion
{
  completionCopy = completion;
  queue = [(SMInitiatorCacheManager *)self queue];
  v6 = [SMInitiatorEligibility checkRegulatoryDomainPassedWithQueue:queue];

  if (v6)
  {
    objc_initWeak(&location, self);
    v7 = [RTLocationRequestOptions alloc];
    v8 = [(RTLocationRequestOptions *)v7 initWithDesiredAccuracy:1 horizontalAccuracy:1 maxAge:*MEMORY[0x277CE4208] yieldLastLocation:35.0 timeout:10.0 fallback:10.0 fallbackHorizontalAccuracy:100.0 fallbackMaxAge:600.0];
    locationManager = [(SMInitiatorCacheManager *)self locationManager];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __56__SMInitiatorCacheManager__fetchLocationWithCompletion___block_invoke;
    v11[3] = &unk_2788CD590;
    objc_copyWeak(&v13, &location);
    v12 = completionCopy;
    [locationManager fetchCurrentLocationWithOptions:v8 handler:v11];

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  else
  {
    v10 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01448] code:2 userInfo:0];
    (*(completionCopy + 2))(completionCopy, 0, v10);
  }
}

void __56__SMInitiatorCacheManager__fetchLocationWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = [WeakRetained queue];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __56__SMInitiatorCacheManager__fetchLocationWithCompletion___block_invoke_2;
    v14[3] = &unk_2788C4500;
    v15 = v6;
    v16 = v5;
    v17 = *(a1 + 32);
    dispatch_async(v9, v14);

    v10 = v15;
  }

  else
  {
    v11 = objc_alloc(MEMORY[0x277CCA9B8]);
    v12 = *MEMORY[0x277D4ACD0];
    v18 = *MEMORY[0x277CCA450];
    v19[0] = @"SMInitiatorCacheManger was destroyed before location fetch completed";
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    v10 = [v11 initWithDomain:v12 code:24 userInfo:v13];

    (*(*(a1 + 32) + 16))();
  }
}

void __56__SMInitiatorCacheManager__fetchLocationWithCompletion___block_invoke_2(void *a1)
{
  if (!a1[4] && a1[5] && ([MEMORY[0x277D4AB28] isCLLocationValid:?] & 1) != 0)
  {
    v3 = [objc_alloc(MEMORY[0x277D4AB28]) initWithCLLocation:a1[5]];
    (*(a1[6] + 16))();
  }

  else
  {
    v2 = *(a1[6] + 16);

    v2();
  }
}

- (void)onCellLinkQualityChangedNotification:(id)notification
{
  notificationCopy = notification;
  if (notificationCopy)
  {
    queue = [(SMInitiatorCacheManager *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __64__SMInitiatorCacheManager_onCellLinkQualityChangedNotification___block_invoke;
    block[3] = &unk_2788C5020;
    v9 = notificationCopy;
    selfCopy = self;
    v11 = a2;
    dispatch_async(queue, block);

    v7 = v9;
  }

  else
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: notification", buf, 2u);
    }
  }
}

void __64__SMInitiatorCacheManager_onCellLinkQualityChangedNotification___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) name];
  v3 = +[(RTNotification *)RTNetworkOfInterestManagerCellLinkQualityChangedNotification];
  v4 = [v2 isEqualToString:v3];

  if ((v4 & 1) == 0)
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [*(a1 + 40) sessionUUID];
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      v17 = NSStringFromSelector(*(a1 + 48));
      v18 = [*(a1 + 32) name];
      v19 = 138413058;
      v20 = v14;
      v21 = 2112;
      v22 = v16;
      v23 = 2112;
      v24 = v17;
      v25 = 2112;
      v26 = v18;
      _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "#SafetyCache,Initiator,sessionID:%@,%@,%@,unhandled RTNetworkOfInterestManager notification,%@", &v19, 0x2Au);
    }

    goto LABEL_11;
  }

  v5 = [*(a1 + 32) linkQuality];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = [*(a1 + 40) sessionUUID];
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v10 = NSStringFromSelector(*(a1 + 48));
      v11 = RTLinkQualityToString();
      v19 = 138413058;
      v20 = v7;
      v21 = 2112;
      v22 = v9;
      v23 = 2112;
      v24 = v10;
      v25 = 2112;
      v26 = v11;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "#SafetyCache,Initiator,sessionID:%@,%@,%@,link quality,%@", &v19, 0x2Au);
    }
  }

  [*(a1 + 40) setCellularStrength:v5];
  if ([*(a1 + 40) cellularLinkQualityFetchInProgress])
  {
    v12 = [*(a1 + 40) deviceStatusReturnBlock];

    if (v12)
    {
      v13 = [*(a1 + 40) deviceStatusReturnBlock];
      (*(v13 + 16))(v13, 3);
LABEL_11:
    }
  }
}

- (void)onWifiLinkQualityChangedNotification:(id)notification
{
  notificationCopy = notification;
  if (notificationCopy)
  {
    queue = [(SMInitiatorCacheManager *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __64__SMInitiatorCacheManager_onWifiLinkQualityChangedNotification___block_invoke;
    block[3] = &unk_2788C5020;
    v9 = notificationCopy;
    selfCopy = self;
    v11 = a2;
    dispatch_async(queue, block);

    v7 = v9;
  }

  else
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: notification", buf, 2u);
    }
  }
}

void __64__SMInitiatorCacheManager_onWifiLinkQualityChangedNotification___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) name];
  v3 = +[(RTNotification *)RTNetworkOfInterestManagerWifiLinkQualityChangedNotification];
  v4 = [v2 isEqualToString:v3];

  if ((v4 & 1) == 0)
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [*(a1 + 40) sessionUUID];
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      v17 = NSStringFromSelector(*(a1 + 48));
      v18 = [*(a1 + 32) name];
      v19 = 138413058;
      v20 = v14;
      v21 = 2112;
      v22 = v16;
      v23 = 2112;
      v24 = v17;
      v25 = 2112;
      v26 = v18;
      _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "#SafetyCache,Initiator,sessionID:%@,%@,%@,unhandled RTNetworkOfInterestManager notification,%@", &v19, 0x2Au);
    }

    goto LABEL_11;
  }

  v5 = [*(a1 + 32) linkQuality];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = [*(a1 + 40) sessionUUID];
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v10 = NSStringFromSelector(*(a1 + 48));
      v11 = RTLinkQualityToString();
      v19 = 138413058;
      v20 = v7;
      v21 = 2112;
      v22 = v9;
      v23 = 2112;
      v24 = v10;
      v25 = 2112;
      v26 = v11;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "#SafetyCache,Initiator,sessionID:%@,%@,%@,link quality,%@", &v19, 0x2Au);
    }
  }

  [*(a1 + 40) setWifiStrength:v5];
  if ([*(a1 + 40) wifiLinkQualityFetchInProgress])
  {
    v12 = [*(a1 + 40) deviceStatusReturnBlock];

    if (v12)
    {
      v13 = [*(a1 + 40) deviceStatusReturnBlock];
      (*(v13 + 16))(v13, 2);
LABEL_11:
    }
  }
}

- (void)onVehicleEventNotification:(id)notification
{
  notificationCopy = notification;
  if (notificationCopy)
  {
    queue = [(SMInitiatorCacheManager *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __54__SMInitiatorCacheManager_onVehicleEventNotification___block_invoke;
    block[3] = &unk_2788C5020;
    v9 = notificationCopy;
    selfCopy = self;
    v11 = a2;
    dispatch_async(queue, block);

    v7 = v9;
  }

  else
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: notification", buf, 2u);
    }
  }
}

void __54__SMInitiatorCacheManager_onVehicleEventNotification___block_invoke(uint64_t a1)
{
  v42 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) name];
  v3 = +[(RTNotification *)RTVehicleEventNotification];
  v4 = [v2 isEqualToString:v3];

  if (v4)
  {
    v5 = [*(a1 + 32) vehicleEvents];
    v33 = [v5 firstObject];

    v6 = [v33 location];

    if (v6)
    {
      v7 = objc_alloc(MEMORY[0x277D4AB28]);
      v8 = objc_opt_new();
      v9 = [v33 location];
      [v9 latitude];
      v11 = v10;
      v12 = [v33 location];
      [v12 longitude];
      v14 = v13;
      v15 = [v33 location];
      [v15 horizontalUncertainty];
      v17 = v16;
      v18 = [v33 location];
      [v18 altitude];
      v20 = v19;
      v21 = [v33 location];
      [v21 verticalUncertainty];
      v23 = v22;
      v24 = [v33 location];
      v25 = [v24 date];
      v26 = [v7 initWithIdentifier:v8 latitude:v25 longitude:v11 hunc:v14 altitude:v17 vunc:v20 date:v23];
    }

    else
    {
      v26 = 0;
    }

    [*(a1 + 40) _updateVehicleParkingLocation:v26];
  }

  else
  {
    v27 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = [*(a1 + 40) sessionUUID];
      v29 = objc_opt_class();
      v30 = NSStringFromClass(v29);
      v31 = NSStringFromSelector(*(a1 + 48));
      v32 = [*(a1 + 32) name];
      *buf = 138413058;
      v35 = v28;
      v36 = 2112;
      v37 = v30;
      v38 = 2112;
      v39 = v31;
      v40 = 2112;
      v41 = v32;
      _os_log_error_impl(&dword_2304B3000, v27, OS_LOG_TYPE_ERROR, "#SafetyCache,Initiator,sessionID:%@,%@,%@,unhandled RTVehicleLocationProvider notification,%@", buf, 0x2Au);
    }
  }
}

- (void)_updateVehicleParkingLocation:(id)location
{
  v31 = *MEMORY[0x277D85DE8];
  locationCopy = location;
  initiatorContact = [(SMInitiatorCacheManager *)self initiatorContact];
  shouldBeCleanedUpDate = [initiatorContact shouldBeCleanedUpDate];

  if (shouldBeCleanedUpDate)
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
LABEL_3:

      goto LABEL_11;
    }

    sessionUUID = [(SMInitiatorCacheManager *)self sessionUUID];
    v22 = objc_opt_class();
    v17 = NSStringFromClass(v22);
    v18 = NSStringFromSelector(a2);
    v23 = 138412802;
    v24 = sessionUUID;
    v25 = 2112;
    v26 = v17;
    v27 = 2112;
    v28 = v18;
    v19 = "#SafetyCache,Initiator,sessionID:%@,%@,%@,contact should be cleaned up";
    v20 = v8;
    v21 = 32;
LABEL_15:
    _os_log_error_impl(&dword_2304B3000, v20, OS_LOG_TYPE_ERROR, v19, &v23, v21);

    goto LABEL_3;
  }

  if (locationCopy && ([locationCopy isValid] & 1) == 0)
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_3;
    }

    sessionUUID = [(SMInitiatorCacheManager *)self sessionUUID];
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    v18 = NSStringFromSelector(a2);
    v23 = 138413059;
    v24 = sessionUUID;
    v25 = 2112;
    v26 = v17;
    v27 = 2112;
    v28 = v18;
    v29 = 2117;
    v30 = locationCopy;
    v19 = "#SafetyCache,Initiator,sessionID:%@,%@,%@,parking location is not valid %{sensitive}@";
    v20 = v8;
    v21 = 42;
    goto LABEL_15;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      sessionUUID2 = [(SMInitiatorCacheManager *)self sessionUUID];
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v13 = NSStringFromSelector(a2);
      v23 = 138413059;
      v24 = sessionUUID2;
      v25 = 2112;
      v26 = v12;
      v27 = 2112;
      v28 = v13;
      v29 = 2117;
      v30 = locationCopy;
      _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "#SafetyCache,Initiator,sessionID:%@,%@,%@,updating parked car location %{sensitive}@", &v23, 0x2Au);
    }
  }

  initiatorContact2 = [(SMInitiatorCacheManager *)self initiatorContact];
  [initiatorContact2 setParkedCarLocation:locationCopy];

  [(SMInitiatorCacheManager *)self _updateInitiatorContactInStore];
LABEL_11:
}

- (void)onLockStateChange:(BOOL)change
{
  changeCopy = change;
  v63 = *MEMORY[0x277D85DE8];
  v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    initiatorContact = [(SMInitiatorCacheManager *)self initiatorContact];
    sessionUUID = [initiatorContact sessionUUID];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = NSStringFromSelector(a2);
    v11 = v10;
    v12 = "NO";
    *buf = 138413058;
    v50 = sessionUUID;
    if (changeCopy)
    {
      v12 = "YES";
    }

    v51 = 2112;
    v52 = v9;
    v53 = 2112;
    v54 = v10;
    v55 = 2080;
    v56 = v12;
    _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Initiator,sessionID:%@,%@,%@,lock state changed isLocked:%s", buf, 0x2Au);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      initiatorContact2 = [(SMInitiatorCacheManager *)self initiatorContact];
      sessionUUID2 = [initiatorContact2 sessionUUID];
      v14 = objc_opt_class();
      v41 = NSStringFromClass(v14);
      v40 = NSStringFromSelector(a2);
      initiatorContact3 = [(SMInitiatorCacheManager *)self initiatorContact];
      unlockLocation = [initiatorContact3 unlockLocation];
      date = [unlockLocation date];
      stringFromDate = [date stringFromDate];
      initiatorContact4 = [(SMInitiatorCacheManager *)self initiatorContact];
      lockLocation = [initiatorContact4 lockLocation];
      date2 = [lockLocation date];
      stringFromDate2 = [date2 stringFromDate];
      initiatorContact5 = [(SMInitiatorCacheManager *)self initiatorContact];
      lockState = [initiatorContact5 lockState];
      *buf = 138413826;
      v50 = sessionUUID2;
      v51 = 2112;
      v52 = v41;
      v53 = 2112;
      v54 = v40;
      v55 = 2112;
      v56 = stringFromDate;
      v57 = 2112;
      v58 = stringFromDate2;
      v59 = 1024;
      v60 = changeCopy;
      v61 = 1024;
      v62 = lockState;
      _os_log_impl(&dword_2304B3000, v13, OS_LOG_TYPE_INFO, "#SafetyCache,Initiator,sessionID:%@,%@,%@,checking expected lock state, unlock date %@, lock date %@, new lock state %d, prev lock state %d ", buf, 0x40u);
    }
  }

  initiatorContact6 = [(SMInitiatorCacheManager *)self initiatorContact];
  v24 = initiatorContact6;
  if (changeCopy)
  {
    lockLocation2 = [initiatorContact6 lockLocation];
    if (([lockLocation2 isValid] & 1) == 0)
    {
LABEL_11:

LABEL_14:
      v28 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        sessionUUID3 = [(SMInitiatorCacheManager *)self sessionUUID];
        v30 = objc_opt_class();
        v31 = NSStringFromClass(v30);
        v32 = NSStringFromSelector(a2);
        *buf = 138412802;
        v50 = sessionUUID3;
        v51 = 2112;
        v52 = v31;
        v53 = 2112;
        v54 = v32;
        _os_log_impl(&dword_2304B3000, v28, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Initiator,sessionID:%@,%@,%@, update lock state required", buf, 0x20u);
      }

      objc_initWeak(buf, self);
      v46[0] = MEMORY[0x277D85DD0];
      v46[1] = 3221225472;
      v46[2] = __45__SMInitiatorCacheManager_onLockStateChange___block_invoke;
      v46[3] = &unk_2788CD5B8;
      objc_copyWeak(&v47, buf);
      v48 = changeCopy;
      [(SMInitiatorCacheManager *)self _fetchLocationWithCompletion:v46];
      objc_destroyWeak(&v47);
      objc_destroyWeak(buf);
      return;
    }
  }

  else
  {
    lockLocation2 = [initiatorContact6 unlockLocation];
    if (![lockLocation2 isValid])
    {
      goto LABEL_11;
    }
  }

  initiatorContact7 = [(SMInitiatorCacheManager *)self initiatorContact];
  lockState2 = [initiatorContact7 lockState];

  if ((lockState2 ^ changeCopy))
  {
    goto LABEL_14;
  }

  v33 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    initiatorContact8 = [(SMInitiatorCacheManager *)self initiatorContact];
    sessionUUID4 = [initiatorContact8 sessionUUID];
    v36 = objc_opt_class();
    v37 = NSStringFromClass(v36);
    v38 = NSStringFromSelector(a2);
    *buf = 138412802;
    v50 = sessionUUID4;
    v51 = 2112;
    v52 = v37;
    v53 = 2112;
    v54 = v38;
    _os_log_impl(&dword_2304B3000, v33, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Initiator,sessionID:%@,%@,%@, lock state changed no update needed", buf, 0x20u);
  }
}

void __45__SMInitiatorCacheManager_onLockStateChange___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (v6 && !a3)
  {
    [WeakRetained _updateLockState:*(a1 + 40) location:v6];
  }
}

- (void)_updateLockState:(BOOL)state location:(id)location
{
  stateCopy = state;
  v38 = *MEMORY[0x277D85DE8];
  locationCopy = location;
  v8 = locationCopy;
  if (locationCopy)
  {
    if ([locationCopy isValid])
    {
      initiatorContact = [(SMInitiatorCacheManager *)self initiatorContact];
      shouldBeCleanedUpDate = [initiatorContact shouldBeCleanedUpDate];

      v11 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
      if (shouldBeCleanedUpDate)
      {
        if (v11)
        {
          v12 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
          {
            sessionUUID = [(SMInitiatorCacheManager *)self sessionUUID];
            v14 = objc_opt_class();
            v15 = NSStringFromClass(v14);
            v16 = NSStringFromSelector(a2);
            v28 = 138412802;
            v29 = sessionUUID;
            v30 = 2112;
            v31 = v15;
            v32 = 2112;
            v33 = v16;
            v17 = "#SafetyCache,Initiator,sessionID:%@,%@,%@,contact should be cleaned up";
LABEL_13:
            _os_log_impl(&dword_2304B3000, v12, OS_LOG_TYPE_INFO, v17, &v28, 0x20u);

            goto LABEL_14;
          }

          goto LABEL_14;
        }
      }

      else
      {
        if (v11)
        {
          v20 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
          {
            sessionUUID2 = [(SMInitiatorCacheManager *)self sessionUUID];
            v22 = objc_opt_class();
            v23 = NSStringFromClass(v22);
            v24 = NSStringFromSelector(a2);
            v28 = 138413315;
            v29 = sessionUUID2;
            v30 = 2112;
            v31 = v23;
            v32 = 2112;
            v33 = v24;
            v34 = 1024;
            v35 = stateCopy;
            v36 = 2117;
            v37 = v8;
            _os_log_impl(&dword_2304B3000, v20, OS_LOG_TYPE_INFO, "#SafetyCache,Initiator,sessionID:%@,%@,%@,update lock state %d with location %{sensitive}@", &v28, 0x30u);
          }
        }

        initiatorContact2 = [(SMInitiatorCacheManager *)self initiatorContact];
        v26 = initiatorContact2;
        if (stateCopy)
        {
          [initiatorContact2 setLockLocation:v8];
        }

        else
        {
          [initiatorContact2 setUnlockLocation:v8];
        }

        initiatorContact3 = [(SMInitiatorCacheManager *)self initiatorContact];
        [initiatorContact3 setLockState:stateCopy];

        [(SMInitiatorCacheManager *)self _updateInitiatorContactInStore];
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v12 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        sessionUUID = [(SMInitiatorCacheManager *)self sessionUUID];
        v19 = objc_opt_class();
        v15 = NSStringFromClass(v19);
        v16 = NSStringFromSelector(a2);
        v28 = 138412802;
        v29 = sessionUUID;
        v30 = 2112;
        v31 = v15;
        v32 = 2112;
        v33 = v16;
        v17 = "#SafetyCache,Initiator,sessionID:%@,%@,%@,invalid location";
        goto LABEL_13;
      }

LABEL_14:
    }
  }

  else
  {
    v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v28) = 0;
      _os_log_error_impl(&dword_2304B3000, v18, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: location", &v28, 2u);
    }
  }
}

- (double)getCacheUpdateBackstopTimeout
{
  v23 = *MEMORY[0x277D85DE8];
  [(SMInitiatorCacheManager *)self cacheUpdateBackstopTimeout];
  if (v4 == 0.0)
  {
    v5 = [(RTDefaultsManager *)self->_defaultsManager objectForKey:@"RTDefaultCacheUpdateBackstopTimeout"];
    v6 = v5;
    if (v5)
    {
      [v5 doubleValue];
    }

    else
    {
      v7 = 900.0;
    }

    [(SMInitiatorCacheManager *)self setCacheUpdateBackstopTimeout:v7];
    v8 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      sessionUUID = [(SMInitiatorCacheManager *)self sessionUUID];
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = NSStringFromSelector(a2);
      cacheUpdateBackstopTimeout = self->_cacheUpdateBackstopTimeout;
      v15 = 138413058;
      v16 = sessionUUID;
      v17 = 2112;
      v18 = v11;
      v19 = 2112;
      v20 = v12;
      v21 = 2048;
      v22 = cacheUpdateBackstopTimeout;
      _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Initiator,sessionID:%@,%@,%@,Cache backstop timeout %lf", &v15, 0x2Au);
    }
  }

  [(SMInitiatorCacheManager *)self cacheUpdateBackstopTimeout];
  return result;
}

- (void)onHealthKitManagerNotification:(id)notification
{
  notificationCopy = notification;
  queue = [(SMInitiatorCacheManager *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__SMInitiatorCacheManager_onHealthKitManagerNotification___block_invoke;
  v7[3] = &unk_2788C4A70;
  v8 = notificationCopy;
  selfCopy = self;
  v6 = notificationCopy;
  dispatch_async(queue, v7);
}

void __58__SMInitiatorCacheManager_onHealthKitManagerNotification___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) workoutSnapshot];
  [*(a1 + 40) _onHealthKitManagerWorkoutSnapshotUpdate:v2];
}

- (void)_onHealthKitManagerWorkoutSnapshotUpdate:(id)update
{
  v33 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  if (!updateCopy)
  {
    goto LABEL_13;
  }

  sessionManagerState = [(SMInitiatorCacheManager *)self sessionManagerState];
  if (![sessionManagerState isActiveState] || !-[SMInitiatorCacheManager isActiveDevice](self, "isActiveDevice"))
  {

    goto LABEL_10;
  }

  sessionManagerState2 = [(SMInitiatorCacheManager *)self sessionManagerState];
  configuration = [sessionManagerState2 configuration];
  sessionType = [configuration sessionType];

  if (sessionType != 4)
  {
LABEL_10:
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_13;
    }

    v15 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
LABEL_12:

      goto LABEL_13;
    }

    sessionUUID = [(SMInitiatorCacheManager *)self sessionUUID];
    v21 = objc_opt_class();
    v18 = NSStringFromClass(v21);
    v19 = NSStringFromSelector(a2);
    *buf = 138413058;
    v26 = sessionUUID;
    v27 = 2112;
    v28 = v18;
    v29 = 2112;
    v30 = v19;
    v31 = 2112;
    v32 = updateCopy;
    v20 = "#SafetyCache,Initiator,sessionID:%@,%@,%@,invalid state for workout update, %@";
LABEL_18:
    _os_log_debug_impl(&dword_2304B3000, v15, OS_LOG_TYPE_DEBUG, v20, buf, 0x2Au);

    goto LABEL_12;
  }

  if (![(SMInitiatorCacheManager *)self _shouldIncludeWorkoutSnapshotInCache:updateCopy])
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_13;
    }

    v15 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_12;
    }

    sessionUUID = [(SMInitiatorCacheManager *)self sessionUUID];
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    v19 = NSStringFromSelector(a2);
    *buf = 138413058;
    v26 = sessionUUID;
    v27 = 2112;
    v28 = v18;
    v29 = 2112;
    v30 = v19;
    v31 = 2112;
    v32 = updateCopy;
    v20 = "#SafetyCache,Initiator,sessionID:%@,%@,%@,workout update not to be included in cache, %@";
    goto LABEL_18;
  }

  v10 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    sessionUUID2 = [(SMInitiatorCacheManager *)self sessionUUID];
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v14 = NSStringFromSelector(a2);
    *buf = 138413058;
    v26 = sessionUUID2;
    v27 = 2112;
    v28 = v13;
    v29 = 2112;
    v30 = v14;
    v31 = 2112;
    v32 = updateCopy;
    _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Initiator,sessionID:%@,%@,%@,updating workout event, %@", buf, 0x2Au);
  }

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __68__SMInitiatorCacheManager__onHealthKitManagerWorkoutSnapshotUpdate___block_invoke;
  v22[3] = &unk_2788CD5E0;
  v22[4] = self;
  v24 = a2;
  v23 = updateCopy;
  [(SMInitiatorCacheManager *)self _fetchLocationWithCompletion:v22];

LABEL_13:
}

void __68__SMInitiatorCacheManager__onHealthKitManagerWorkoutSnapshotUpdate___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v75 = *MEMORY[0x277D85DE8];
  v62 = a2;
  v5 = a3;
  if (v5)
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v48 = [*(a1 + 32) sessionUUID];
      v49 = objc_opt_class();
      v50 = NSStringFromClass(v49);
      v51 = NSStringFromSelector(*(a1 + 48));
      v52 = *(a1 + 40);
      *buf = 138413571;
      v64 = v48;
      v65 = 2112;
      v66 = v50;
      v67 = 2112;
      v68 = v51;
      v69 = 2112;
      v70 = v52;
      v71 = 2117;
      v72 = v62;
      v73 = 2112;
      v74 = v5;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "#SafetyCache,Initiator,sessionID:%@,%@,%@,error with fetching location for workout event, %@, location, %{sensitive}@ error, %@", buf, 0x3Eu);
    }
  }

  v7 = [*(a1 + 40) snapshotDate];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = [MEMORY[0x277CBEAA8] now];
  }

  v10 = v9;

  v11 = [*(a1 + 32) initiatorContact];
  v12 = [v11 workoutEvents];
  if ([v12 count] || objc_msgSend(*(a1 + 40), "sessionState") != 2)
  {
  }

  else
  {
    v13 = [*(a1 + 40) workoutStartDate];

    if (!v13)
    {
      goto LABEL_14;
    }

    [*(a1 + 40) workoutStartDate];
    v10 = v11 = v10;
  }

LABEL_14:
  v14 = [*(a1 + 32) initiatorContact];
  v15 = [v14 workoutEvents];
  v16 = [v15 lastObject];

  v61 = v5;
  if (!v16)
  {
    goto LABEL_25;
  }

  v17 = [v16 sessionIdentifier];
  v18 = [*(a1 + 40) sessionIdentifier];
  if ([v17 isEqual:v18])
  {
    v19 = [v16 activityType];
    if (v19 == [*(a1 + 40) activityType] && objc_msgSend(v16, "sessionState") == 4)
    {
      v20 = [*(a1 + 40) sessionState];

      if (v20 == 2)
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
        {
          v21 = 1;
          goto LABEL_26;
        }

        v17 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          v55 = [*(a1 + 32) sessionUUID];
          v56 = objc_opt_class();
          v57 = NSStringFromClass(v56);
          v58 = NSStringFromSelector(*(a1 + 48));
          v59 = *(a1 + 40);
          *buf = 138413314;
          v64 = v55;
          v65 = 2112;
          v66 = v57;
          v67 = 2112;
          v68 = v58;
          v69 = 2112;
          v70 = v16;
          v71 = 2112;
          v72 = v59;
          _os_log_debug_impl(&dword_2304B3000, v17, OS_LOG_TYPE_DEBUG, "#SafetyCache,Initiator,sessionID:%@,%@,%@, the new event is a Resume. Last event, %@, new workout snapshot, %@", buf, 0x34u);
        }

        v21 = 1;
        goto LABEL_24;
      }

LABEL_25:
      v21 = 0;
      goto LABEL_26;
    }
  }

  v21 = 0;
LABEL_24:

LABEL_26:
  v22 = [*(a1 + 40) sessionIdentifier];
  v23 = [*(a1 + 40) activityType];
  v24 = [*(a1 + 40) locationType];
  v25 = [*(a1 + 40) swimmingLocationType];
  v26 = [*(a1 + 40) sessionState];
  if (v16 && v26 == 3)
  {
    if (!v22)
    {
      v22 = [v16 sessionIdentifier];

      if (v22)
      {
        v22 = [v16 sessionIdentifier];
      }
    }

    if (v23)
    {
      if (v24)
      {
        goto LABEL_33;
      }

LABEL_41:
      if ([v16 locationType])
      {
        v24 = [v16 locationType];
        if (v25)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v24 = 0;
        if (v25)
        {
          goto LABEL_45;
        }
      }

      goto LABEL_34;
    }

    if ([v16 activityType])
    {
      v23 = [v16 activityType];
      if (!v24)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v23 = 0;
      if (!v24)
      {
        goto LABEL_41;
      }
    }

LABEL_33:
    if (v25)
    {
      goto LABEL_45;
    }

LABEL_34:
    if ([v16 swimmingLocationType])
    {
      v25 = [v16 swimmingLocationType];
    }

    else
    {
      v25 = 0;
    }
  }

LABEL_45:
  v27 = objc_alloc(MEMORY[0x277D4AC40]);
  v28 = [MEMORY[0x277CCAD78] UUID];
  LOBYTE(v60) = v21;
  v29 = [v27 initWithIdentifier:v28 sessionIdentifier:v22 location:v62 activityType:v23 locationType:v24 swimmingLocationType:v25 sessionState:objc_msgSend(*(a1 + 40) isResumedSessionState:"sessionState") date:{v60, v10}];

  if (!v29)
  {
    v35 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v36 = [*(a1 + 32) sessionUUID];
      v53 = objc_opt_class();
      v38 = NSStringFromClass(v53);
      v39 = NSStringFromSelector(*(a1 + 48));
      v54 = *(a1 + 40);
      *buf = 138413058;
      v64 = v36;
      v65 = 2112;
      v66 = v38;
      v67 = 2112;
      v68 = v39;
      v69 = 2112;
      v70 = v54;
      _os_log_error_impl(&dword_2304B3000, v35, OS_LOG_TYPE_ERROR, "#SafetyCache,Initiator,sessionID:%@,%@,%@,failed to construct an SMWorkoutEvent with RTCurrentWorkoutSnapshot, %@", buf, 0x2Au);
      goto LABEL_61;
    }

LABEL_54:

    goto LABEL_59;
  }

  if (!v16)
  {
    goto LABEL_56;
  }

  v30 = [v16 sessionIdentifier];
  v31 = [v29 sessionIdentifier];
  if (![v30 isEqual:v31] || (v32 = objc_msgSend(v16, "activityType"), v32 != objc_msgSend(v29, "activityType")))
  {

    goto LABEL_56;
  }

  v33 = [v16 sessionState];
  v34 = [v29 sessionState];

  if (v33 != v34)
  {
LABEL_56:
    v41 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      v42 = [*(a1 + 32) sessionUUID];
      v43 = objc_opt_class();
      v44 = NSStringFromClass(v43);
      v45 = NSStringFromSelector(*(a1 + 48));
      *buf = 138413058;
      v64 = v42;
      v65 = 2112;
      v66 = v44;
      v67 = 2112;
      v68 = v45;
      v69 = 2112;
      v70 = v29;
      _os_log_impl(&dword_2304B3000, v41, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Initiator,sessionID:%@,%@,%@,adding workout event to intiator contact, %@", buf, 0x2Au);
    }

    v46 = [*(a1 + 32) initiatorContact];
    v47 = [v46 workoutEvents];
    [v47 addObject:v29];

    [*(a1 + 32) _updateInitiatorContactInStore];
    goto LABEL_59;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v35 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
    {
      v36 = [*(a1 + 32) sessionUUID];
      v37 = objc_opt_class();
      v38 = NSStringFromClass(v37);
      v39 = NSStringFromSelector(*(a1 + 48));
      v40 = *(a1 + 40);
      *buf = 138413314;
      v64 = v36;
      v65 = 2112;
      v66 = v38;
      v67 = 2112;
      v68 = v39;
      v69 = 2112;
      v70 = v16;
      v71 = 2112;
      v72 = v40;
      _os_log_debug_impl(&dword_2304B3000, v35, OS_LOG_TYPE_DEBUG, "#SafetyCache,Initiator,sessionID:%@,%@,%@,ignoring duplicated workout event, last event, %@, new workout snapshot, %@", buf, 0x34u);
LABEL_61:

      goto LABEL_54;
    }

    goto LABEL_54;
  }

LABEL_59:
}

- (void)_fetchWorkoutSnapshotAndUpdateWorkoutEvents
{
  healthKitManager = [(SMInitiatorCacheManager *)self healthKitManager];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __70__SMInitiatorCacheManager__fetchWorkoutSnapshotAndUpdateWorkoutEvents__block_invoke;
  v5[3] = &unk_2788CD608;
  v5[4] = self;
  v5[5] = a2;
  [healthKitManager fetchCurrentWorkoutSnapshotWithHandler:v5];
}

void __70__SMInitiatorCacheManager__fetchWorkoutSnapshotAndUpdateWorkoutEvents__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __70__SMInitiatorCacheManager__fetchWorkoutSnapshotAndUpdateWorkoutEvents__block_invoke_2;
  v12[3] = &unk_2788C4C70;
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

void __70__SMInitiatorCacheManager__fetchWorkoutSnapshotAndUpdateWorkoutEvents__block_invoke_2(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v10 = [*(a1 + 40) sessionUUID];
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v13 = NSStringFromSelector(*(a1 + 56));
      v14 = *(a1 + 32);
      v15 = 138413058;
      v16 = v10;
      v17 = 2112;
      v18 = v12;
      v19 = 2112;
      v20 = v13;
      v21 = 2112;
      v22 = v14;
      _os_log_error_impl(&dword_2304B3000, v4, OS_LOG_TYPE_ERROR, "#SafetyCache,Initiator,sessionID:%@,%@,%@,error with current workout snapshot fetch %@", &v15, 0x2Au);
    }
  }

  else
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [*(a1 + 40) sessionUUID];
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = NSStringFromSelector(*(a1 + 56));
      v9 = *(a1 + 48);
      v15 = 138413058;
      v16 = v5;
      v17 = 2112;
      v18 = v7;
      v19 = 2112;
      v20 = v8;
      v21 = 2112;
      v22 = v9;
      _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Initiator,sessionID:%@,%@,%@,fetched current workout snapshot, %@", &v15, 0x2Au);
    }

    [*(a1 + 40) _onHealthKitManagerWorkoutSnapshotUpdate:*(a1 + 48)];
  }
}

- (void)submitCAMetricInitiatorSession
{
  v92 = objc_alloc_init(MEMORY[0x277CBEB38]);
  initiatorContact = [(SMInitiatorCacheManager *)self initiatorContact];
  syncDate = [initiatorContact syncDate];
  sessionManagerState = [(SMInitiatorCacheManager *)self sessionManagerState];
  configuration = [sessionManagerState configuration];
  sessionStartDate = [configuration sessionStartDate];
  [syncDate timeIntervalSinceDate:sessionStartDate];
  v9 = v8;

  initiatorContact2 = [(SMInitiatorCacheManager *)self initiatorContact];
  numCacheUpdates = [initiatorContact2 numCacheUpdates];

  if (numCacheUpdates < 2)
  {
    [v92 setValue:&unk_28459E7A8 forKey:@"averageTimeBetweenCacheUpdates"];
  }

  else
  {
    v12 = MEMORY[0x277CCABB0];
    initiatorContact3 = [(SMInitiatorCacheManager *)self initiatorContact];
    v14 = [v12 numberWithDouble:{v9 / (objc_msgSend(initiatorContact3, "numCacheUpdates") - 1)}];
    [v92 setValue:v14 forKey:@"averageTimeBetweenCacheUpdates"];
  }

  v15 = MEMORY[0x277CCABB0];
  initiatorContact4 = [(SMInitiatorCacheManager *)self initiatorContact];
  [initiatorContact4 maxCacheSize];
  v18 = [v15 numberWithDouble:v17 * 0.0009765625];
  [v92 setValue:v18 forKey:@"maxCacheSize"];

  v19 = MEMORY[0x277CCABB0];
  initiatorContact5 = [(SMInitiatorCacheManager *)self initiatorContact];
  v21 = [v19 numberWithInteger:{objc_msgSend(initiatorContact5, "maxLocationsInTrace")}];
  [v92 setValue:v21 forKey:@"maxLocationsInTrace"];

  v22 = MEMORY[0x277CCABB0];
  initiatorContact6 = [(SMInitiatorCacheManager *)self initiatorContact];
  [initiatorContact6 maxTimeBetweenCacheUpdates];
  v24 = [v22 numberWithDouble:?];
  [v92 setValue:v24 forKey:@"maxTimeBetweenCacheUpdates"];

  v25 = MEMORY[0x277CCABB0];
  initiatorContact7 = [(SMInitiatorCacheManager *)self initiatorContact];
  v27 = [v25 numberWithInteger:{objc_msgSend(initiatorContact7, "numCacheUpdates")}];
  [v92 setValue:v27 forKey:@"numCacheUpdates"];

  v28 = MEMORY[0x277CCABB0];
  sessionManagerState2 = [(SMInitiatorCacheManager *)self sessionManagerState];
  configuration2 = [sessionManagerState2 configuration];
  sessionStartDate2 = [configuration2 sessionStartDate];
  [sessionStartDate2 timeIntervalSinceNow];
  v33 = [v28 numberWithDouble:v32 / -60.0];
  [v92 setValue:v33 forKey:@"sessionDuration"];

  v34 = MEMORY[0x277CCABB0];
  initiatorContact8 = [(SMInitiatorCacheManager *)self initiatorContact];
  [initiatorContact8 timeTilCacheRelease];
  v37 = [v34 numberWithDouble:v36 / 60.0];
  [v92 setValue:v37 forKey:@"timeTilCacheRelease"];

  initiatorContact9 = [(SMInitiatorCacheManager *)self initiatorContact];
  numCacheUpdates2 = [initiatorContact9 numCacheUpdates];

  if (numCacheUpdates2 < 1)
  {
    v43 = 0;
  }

  else
  {
    initiatorContact10 = [(SMInitiatorCacheManager *)self initiatorContact];
    numberOfSuccessfulCacheUpdates = [initiatorContact10 numberOfSuccessfulCacheUpdates];
    initiatorContact11 = [(SMInitiatorCacheManager *)self initiatorContact];
    v43 = vcvtpd_s64_f64(numberOfSuccessfulCacheUpdates / [initiatorContact11 numCacheUpdates] * 100.0);
  }

  v44 = [MEMORY[0x277CCABB0] numberWithInteger:v43];
  [v92 setValue:v44 forKey:@"percentageOfSuccessfulCacheUpdates"];

  initiatorContact12 = [(SMInitiatorCacheManager *)self initiatorContact];
  numberOfMessageCancelling = [initiatorContact12 numberOfMessageCancelling];

  if (numberOfMessageCancelling < 1)
  {
    v50 = 0;
  }

  else
  {
    initiatorContact13 = [(SMInitiatorCacheManager *)self initiatorContact];
    numberOfSuccessfulMessageCancelling = [initiatorContact13 numberOfSuccessfulMessageCancelling];
    initiatorContact14 = [(SMInitiatorCacheManager *)self initiatorContact];
    v50 = vcvtpd_s64_f64(numberOfSuccessfulMessageCancelling / [initiatorContact14 numberOfMessageCancelling] * 100.0);
  }

  v51 = [MEMORY[0x277CCABB0] numberWithInteger:v50];
  [v92 setValue:v51 forKey:@"percentageOfSuccessfulMessageCanceling"];

  initiatorContact15 = [(SMInitiatorCacheManager *)self initiatorContact];
  numberOfMessageScheduling = [initiatorContact15 numberOfMessageScheduling];

  if (numberOfMessageScheduling < 1)
  {
    v57 = 0;
  }

  else
  {
    initiatorContact16 = [(SMInitiatorCacheManager *)self initiatorContact];
    numberOfSuccessfulMessageScheduling = [initiatorContact16 numberOfSuccessfulMessageScheduling];
    initiatorContact17 = [(SMInitiatorCacheManager *)self initiatorContact];
    v57 = vcvtpd_s64_f64(numberOfSuccessfulMessageScheduling / [initiatorContact17 numberOfMessageScheduling] * 100.0);
  }

  v58 = [MEMORY[0x277CCABB0] numberWithInteger:v57];
  [v92 setValue:v58 forKey:@"percentageOfSuccessfulMessageScheduling"];

  v59 = MEMORY[0x277CCABB0];
  sessionManagerState3 = [(SMInitiatorCacheManager *)self sessionManagerState];
  configuration3 = [sessionManagerState3 configuration];
  v62 = [v59 numberWithUnsignedInteger:{objc_msgSend(configuration3, "sessionType")}];
  [v92 setValue:v62 forKey:@"sessionType"];

  v63 = MEMORY[0x277CCABB0];
  sessionManagerState4 = [(SMInitiatorCacheManager *)self sessionManagerState];
  monitorContext = [sessionManagerState4 monitorContext];
  v66 = [v63 numberWithUnsignedInteger:{objc_msgSend(monitorContext, "triggerCategory")}];
  [v92 setValue:v66 forKey:@"triggerType"];

  v67 = MEMORY[0x277CCABB0];
  initiatorContact18 = [(SMInitiatorCacheManager *)self initiatorContact];
  v69 = [v67 numberWithBool:{objc_msgSend(initiatorContact18, "wasCacheReleased")}];
  [v92 setValue:v69 forKey:@"wasCacheReleased"];

  v70 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(MEMORY[0x277D4AB40], "shareAllLocations")}];
  [v92 setValue:v70 forKey:@"wasLocationHistoryEnabled"];

  v71 = MEMORY[0x277CCABB0];
  initiatorContact19 = [(SMInitiatorCacheManager *)self initiatorContact];
  v73 = [v71 numberWithBool:{objc_msgSend(initiatorContact19, "wasScheduledSendTriggered")}];
  [v92 setValue:v73 forKey:@"wasScheduledSendTriggered"];

  v74 = MEMORY[0x277CCABB0];
  initiatorContact20 = [(SMInitiatorCacheManager *)self initiatorContact];
  v76 = [v74 numberWithInteger:{objc_msgSend(initiatorContact20, "numberOfHandoffBecomingActive")}];
  [v92 setValue:v76 forKey:@"numTakeover"];

  v77 = MEMORY[0x277CCABB0];
  initiatorContact21 = [(SMInitiatorCacheManager *)self initiatorContact];
  v79 = [v77 numberWithInteger:{objc_msgSend(initiatorContact21, "numberOfHandoffBecomingNonActive")}];
  [v92 setValue:v79 forKey:@"numHandoff"];

  v80 = MEMORY[0x277CCABB0];
  initiatorContact22 = [(SMInitiatorCacheManager *)self initiatorContact];
  earliestActiveDeviceIdentifier = [initiatorContact22 earliestActiveDeviceIdentifier];
  messagingService = [(SMInitiatorCacheManager *)self messagingService];
  deviceIdentifier = [messagingService deviceIdentifier];
  v85 = [v80 numberWithBool:{objc_msgSend(earliestActiveDeviceIdentifier, "isEqual:", deviceIdentifier)}];
  [v92 setValue:v85 forKey:@"isActiveAtStart"];

  v86 = MEMORY[0x277CCABB0];
  initiatorContact23 = [(SMInitiatorCacheManager *)self initiatorContact];
  latestActiveDeviceIdentifier = [initiatorContact23 latestActiveDeviceIdentifier];
  messagingService2 = [(SMInitiatorCacheManager *)self messagingService];
  deviceIdentifier2 = [messagingService2 deviceIdentifier];
  v91 = [v86 numberWithBool:{objc_msgSend(latestActiveDeviceIdentifier, "isEqual:", deviceIdentifier2)}];
  [v92 setValue:v91 forKey:@"isActiveAtEnd"];

  AnalyticsSendEvent();
}

- (void)storeCAMetricForAllLocations:(id)locations
{
  v145 = *MEMORY[0x277D85DE8];
  locationsCopy = locations;
  caMetricCacheUpdate = [(SMInitiatorCacheManager *)self caMetricCacheUpdate];

  if (caMetricCacheUpdate)
  {
    if (!locationsCopy)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v7 = objc_alloc_init(SMCAMetricCacheUpdate);
    [(SMInitiatorCacheManager *)self setCaMetricCacheUpdate:v7];

    if (!locationsCopy)
    {
LABEL_12:
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v29 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
        {
          sessionUUID = [(SMInitiatorCacheManager *)self sessionUUID];
          v31 = objc_opt_class();
          v32 = NSStringFromClass(v31);
          v33 = NSStringFromSelector(a2);
          *buf = 138412802;
          v138 = sessionUUID;
          v139 = 2112;
          v140 = v32;
          v141 = 2112;
          v142 = v33;
          _os_log_impl(&dword_2304B3000, v29, OS_LOG_TYPE_INFO, "#SafetyCache,Initiator,sessionID:%@,%@,%@,empty list of locations", buf, 0x20u);
        }
      }

      caMetricCacheUpdate2 = [(SMInitiatorCacheManager *)self caMetricCacheUpdate];
      [caMetricCacheUpdate2 setNumLocationsInTrace:0];

      caMetricCacheUpdate3 = [(SMInitiatorCacheManager *)self caMetricCacheUpdate];
      [caMetricCacheUpdate3 setAverageHuncForLocationsInTrace:-1.0];

      caMetricCacheUpdate4 = [(SMInitiatorCacheManager *)self caMetricCacheUpdate];
      [caMetricCacheUpdate4 setAverageTimeBetweenLocationsInTrace:-1.0];

      caMetricCacheUpdate5 = [(SMInitiatorCacheManager *)self caMetricCacheUpdate];
      [caMetricCacheUpdate5 setAverageDistanceBetweenLocationsInTrace:-1.0];

      caMetricCacheUpdate6 = [(SMInitiatorCacheManager *)self caMetricCacheUpdate];
      [caMetricCacheUpdate6 setMinHuncForLocationsInTrace:-1.0];

      caMetricCacheUpdate7 = [(SMInitiatorCacheManager *)self caMetricCacheUpdate];
      [(RTDistanceCalculator *)caMetricCacheUpdate7 setMaxHuncForLocationsInTrace:-1.0];
      goto LABEL_41;
    }
  }

  if (![locationsCopy count])
  {
    goto LABEL_12;
  }

  if ([locationsCopy count] > 1)
  {
    aSelector = a2;
    caMetricCacheUpdate7 = objc_alloc_init(RTDistanceCalculator);
    v39 = [locationsCopy count];
    caMetricCacheUpdate8 = [(SMInitiatorCacheManager *)self caMetricCacheUpdate];
    [caMetricCacheUpdate8 setNumLocationsInTrace:v39];

    [locationsCopy count];
    v41 = 0;
    v42 = 0.0;
    v43 = 0.0;
    v44 = 0.0;
    v132 = caMetricCacheUpdate7;
    do
    {
      v45 = [locationsCopy objectAtIndexedSubscript:v41];
      [v45 hunc];
      v47 = v46;
      [v45 hunc];
      v49 = v48;
      caMetricCacheUpdate9 = [(SMInitiatorCacheManager *)self caMetricCacheUpdate];
      [caMetricCacheUpdate9 minHuncForLocationsInTrace];
      v52 = v51;

      if (v49 < v52)
      {
        [v45 hunc];
        v54 = v53;
        caMetricCacheUpdate10 = [(SMInitiatorCacheManager *)self caMetricCacheUpdate];
        [caMetricCacheUpdate10 setMinHuncForLocationsInTrace:v54];
      }

      [v45 hunc];
      v57 = v56;
      caMetricCacheUpdate11 = [(SMInitiatorCacheManager *)self caMetricCacheUpdate];
      [caMetricCacheUpdate11 maxHuncForLocationsInTrace];
      v60 = v59;

      if (v57 > v60)
      {
        [v45 hunc];
        v62 = v61;
        caMetricCacheUpdate12 = [(SMInitiatorCacheManager *)self caMetricCacheUpdate];
        [caMetricCacheUpdate12 setMaxHuncForLocationsInTrace:v62];
      }

      v136.latitude = 0.0;
      v136.longitude = 0.0;
      [v45 latitude];
      v65 = v64;
      [v45 longitude];
      v136 = CLLocationCoordinate2DMake(v65, v66);
      v67 = [locationsCopy objectAtIndexedSubscript:++v41];
      v135.latitude = 0.0;
      v135.longitude = 0.0;
      [v67 latitude];
      v69 = v68;
      [v67 longitude];
      v135 = CLLocationCoordinate2DMake(v69, v70);
      v134 = 0;
      [(RTDistanceCalculator *)caMetricCacheUpdate7 distanceFromLocationCoordinate:&v136 toLocationCoordinate:&v135 error:&v134];
      v72 = v71;
      v73 = v134;
      if (v73)
      {
        v74 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
        {
          sessionUUID2 = [(SMInitiatorCacheManager *)self sessionUUID];
          v96 = objc_opt_class();
          v97 = NSStringFromClass(v96);
          v98 = NSStringFromSelector(aSelector);
          *buf = 138413058;
          v138 = sessionUUID2;
          v139 = 2112;
          v140 = v97;
          v141 = 2112;
          v142 = v98;
          v143 = 2112;
          v144 = v73;
          _os_log_error_impl(&dword_2304B3000, v74, OS_LOG_TYPE_ERROR, "#SafetyCache,Initiator,sessionID:%@,%@,%@,distanceBetweenLocations,error %@", buf, 0x2Au);

          caMetricCacheUpdate7 = v132;
        }
      }

      else
      {
        v43 = v43 + v72;
      }

      caMetricCacheUpdate13 = [(SMInitiatorCacheManager *)self caMetricCacheUpdate];
      [caMetricCacheUpdate13 minDistanceBetweenLocationsInTrace];
      v77 = v76;

      if (v72 < v77)
      {
        caMetricCacheUpdate14 = [(SMInitiatorCacheManager *)self caMetricCacheUpdate];
        [caMetricCacheUpdate14 setMinDistanceBetweenLocationsInTrace:v72];
      }

      caMetricCacheUpdate15 = [(SMInitiatorCacheManager *)self caMetricCacheUpdate];
      [caMetricCacheUpdate15 maxDistanceBetweenLocationsInTrace];
      v81 = v80;

      if (v72 > v81)
      {
        caMetricCacheUpdate16 = [(SMInitiatorCacheManager *)self caMetricCacheUpdate];
        [caMetricCacheUpdate16 setMaxDistanceBetweenLocationsInTrace:v72];
      }

      date = [v45 date];
      date2 = [v67 date];
      [date timeIntervalSinceDate:date2];
      v86 = v85 / -60.0;

      caMetricCacheUpdate17 = [(SMInitiatorCacheManager *)self caMetricCacheUpdate];
      [caMetricCacheUpdate17 minTimeBetweenLocationsInTrace];
      v89 = v88;

      if (v86 < v89)
      {
        caMetricCacheUpdate18 = [(SMInitiatorCacheManager *)self caMetricCacheUpdate];
        [caMetricCacheUpdate18 setMinTimeBetweenLocationsInTrace:v86];
      }

      caMetricCacheUpdate19 = [(SMInitiatorCacheManager *)self caMetricCacheUpdate];
      [caMetricCacheUpdate19 maxTimeBetweenLocationsInTrace];
      v93 = v92;

      if (v86 > v93)
      {
        caMetricCacheUpdate20 = [(SMInitiatorCacheManager *)self caMetricCacheUpdate];
        [caMetricCacheUpdate20 setMaxTimeBetweenLocationsInTrace:v86];
      }

      v42 = v42 + v47;
      v44 = v44 + v86;
    }

    while ([locationsCopy count] - 2 > (v41 - 1));
    v99 = [locationsCopy objectAtIndexedSubscript:{objc_msgSend(locationsCopy, "count") - 1}];
    [v99 hunc];
    v101 = v100;

    v102 = [locationsCopy objectAtIndexedSubscript:{objc_msgSend(locationsCopy, "count") - 1}];
    [v102 hunc];
    v104 = v103;
    caMetricCacheUpdate21 = [(SMInitiatorCacheManager *)self caMetricCacheUpdate];
    [caMetricCacheUpdate21 minHuncForLocationsInTrace];
    v107 = v106;

    if (v104 < v107)
    {
      v108 = [locationsCopy objectAtIndexedSubscript:{objc_msgSend(locationsCopy, "count") - 1}];
      [v108 hunc];
      v110 = v109;
      caMetricCacheUpdate22 = [(SMInitiatorCacheManager *)self caMetricCacheUpdate];
      [caMetricCacheUpdate22 setMinHuncForLocationsInTrace:v110];
    }

    v112 = v42 + v101;
    v113 = [locationsCopy objectAtIndexedSubscript:{objc_msgSend(locationsCopy, "count") - 1}];
    [v113 hunc];
    v115 = v114;
    caMetricCacheUpdate23 = [(SMInitiatorCacheManager *)self caMetricCacheUpdate];
    [caMetricCacheUpdate23 maxHuncForLocationsInTrace];
    v118 = v117;

    if (v115 > v118)
    {
      v119 = [locationsCopy objectAtIndexedSubscript:{objc_msgSend(locationsCopy, "count") - 1}];
      [v119 hunc];
      v121 = v120;
      caMetricCacheUpdate24 = [(SMInitiatorCacheManager *)self caMetricCacheUpdate];
      [caMetricCacheUpdate24 setMaxHuncForLocationsInTrace:v121];
    }

    caMetricCacheUpdate25 = [(SMInitiatorCacheManager *)self caMetricCacheUpdate];
    v124 = v112 / [caMetricCacheUpdate25 numLocationsInTrace];
    caMetricCacheUpdate26 = [(SMInitiatorCacheManager *)self caMetricCacheUpdate];
    [caMetricCacheUpdate26 setAverageHuncForLocationsInTrace:v124];

    caMetricCacheUpdate27 = [(SMInitiatorCacheManager *)self caMetricCacheUpdate];
    v127 = v44 / ([caMetricCacheUpdate27 numLocationsInTrace] - 1);
    caMetricCacheUpdate28 = [(SMInitiatorCacheManager *)self caMetricCacheUpdate];
    [caMetricCacheUpdate28 setAverageTimeBetweenLocationsInTrace:v127];

    caMetricCacheUpdate29 = [(SMInitiatorCacheManager *)self caMetricCacheUpdate];
    v130 = v43 / ([caMetricCacheUpdate29 numLocationsInTrace] - 1);
    caMetricCacheUpdate30 = [(SMInitiatorCacheManager *)self caMetricCacheUpdate];
    [caMetricCacheUpdate30 setAverageDistanceBetweenLocationsInTrace:v130];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v8 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        sessionUUID3 = [(SMInitiatorCacheManager *)self sessionUUID];
        v10 = objc_opt_class();
        v11 = NSStringFromClass(v10);
        v12 = NSStringFromSelector(a2);
        *buf = 138412802;
        v138 = sessionUUID3;
        v139 = 2112;
        v140 = v11;
        v141 = 2112;
        v142 = v12;
        _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "#SafetyCache,Initiator,sessionID:%@,%@,%@,one location available", buf, 0x20u);
      }
    }

    v13 = [locationsCopy count];
    caMetricCacheUpdate31 = [(SMInitiatorCacheManager *)self caMetricCacheUpdate];
    [caMetricCacheUpdate31 setNumLocationsInTrace:v13];

    v15 = [locationsCopy objectAtIndex:0];
    [v15 hunc];
    v17 = v16;
    caMetricCacheUpdate32 = [(SMInitiatorCacheManager *)self caMetricCacheUpdate];
    [caMetricCacheUpdate32 setAverageHuncForLocationsInTrace:v17];

    caMetricCacheUpdate33 = [(SMInitiatorCacheManager *)self caMetricCacheUpdate];
    [caMetricCacheUpdate33 setAverageTimeBetweenLocationsInTrace:-1.0];

    caMetricCacheUpdate34 = [(SMInitiatorCacheManager *)self caMetricCacheUpdate];
    [caMetricCacheUpdate34 setAverageDistanceBetweenLocationsInTrace:-1.0];

    v21 = [locationsCopy objectAtIndex:0];
    [v21 hunc];
    v23 = v22;
    caMetricCacheUpdate35 = [(SMInitiatorCacheManager *)self caMetricCacheUpdate];
    [caMetricCacheUpdate35 setMinHuncForLocationsInTrace:v23];

    caMetricCacheUpdate7 = [locationsCopy objectAtIndex:0];
    [(RTDistanceCalculator *)caMetricCacheUpdate7 hunc];
    v27 = v26;
    caMetricCacheUpdate36 = [(SMInitiatorCacheManager *)self caMetricCacheUpdate];
    [caMetricCacheUpdate36 setMaxHuncForLocationsInTrace:v27];
  }

LABEL_41:
}

- (void)submitCacheUpdateCAMetricForCache:(id)cache success:(BOOL)success error:(id)error
{
  successCopy = success;
  v127 = *MEMORY[0x277D85DE8];
  cacheCopy = cache;
  errorCopy = error;
  v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v11 = objc_alloc_init(RTDistanceCalculator);
  startingLocation = [cacheCopy startingLocation];
  if (startingLocation && (v13 = startingLocation, [cacheCopy mostRecentLocation], v14 = objc_claimAutoreleasedReturnValue(), v14, v13, v14))
  {
    startingLocation2 = [cacheCopy startingLocation];
    [startingLocation2 latitude];
    v17 = v16;
    startingLocation3 = [cacheCopy startingLocation];
    [startingLocation3 longitude];
    v118 = CLLocationCoordinate2DMake(v17, v19);

    mostRecentLocation = [cacheCopy mostRecentLocation];
    [mostRecentLocation latitude];
    v22 = v21;
    mostRecentLocation2 = [cacheCopy mostRecentLocation];
    [mostRecentLocation2 longitude];
    v117 = CLLocationCoordinate2DMake(v22, v24);

    v116 = 0;
    [(RTDistanceCalculator *)v11 distanceFromLocationCoordinate:&v118 toLocationCoordinate:&v117 error:&v116];
    v26 = v25;
    v27 = v116;
    if (v27)
    {
      v28 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        sessionUUID = [(SMInitiatorCacheManager *)self sessionUUID];
        v111 = objc_opt_class();
        NSStringFromClass(v111);
        v112 = v114 = v11;
        v113 = NSStringFromSelector(a2);
        *buf = 138413058;
        v120 = sessionUUID;
        v121 = 2112;
        v122 = v112;
        v123 = 2112;
        v124 = v113;
        v125 = 2112;
        v126 = v27;
        _os_log_error_impl(&dword_2304B3000, v28, OS_LOG_TYPE_ERROR, "#SafetyCache,Initiator,sessionID:%@,%@,%@,distanceFromStartingLocation,error %@", buf, 0x2Au);

        v11 = v114;
      }

      [v10 setValue:&unk_28459E7A8 forKey:@"distanceFromStartingLocation"];
    }

    else
    {
      v30 = [MEMORY[0x277CCABB0] numberWithDouble:v26];
      [v10 setValue:v30 forKey:@"distanceFromStartingLocation"];
    }

    v29 = v11;
  }

  else
  {
    v29 = v11;
    [v10 setValue:&unk_28459E7A8 forKey:@"distanceFromStartingLocation"];
  }

  v31 = MEMORY[0x277CCABB0];
  mostRecentLocation3 = [cacheCopy mostRecentLocation];
  date = [mostRecentLocation3 date];
  [date timeIntervalSinceNow];
  v35 = [v31 numberWithDouble:-v34];
  [v10 setValue:v35 forKey:@"mostRecentLocationAge"];

  v36 = MEMORY[0x277CCABB0];
  mostRecentLocation4 = [cacheCopy mostRecentLocation];
  [mostRecentLocation4 hunc];
  v38 = [v36 numberWithDouble:?];
  [v10 setValue:v38 forKey:@"mostRecentLocationHunc"];

  v39 = MEMORY[0x277CCABB0];
  sessionManagerState = [(SMInitiatorCacheManager *)self sessionManagerState];
  configuration = [sessionManagerState configuration];
  sessionStartDate = [configuration sessionStartDate];
  [sessionStartDate timeIntervalSinceNow];
  v44 = [v39 numberWithDouble:-v43];
  [v10 setValue:v44 forKey:@"sessionDuration"];

  v45 = MEMORY[0x277CCABB0];
  sessionManagerState2 = [(SMInitiatorCacheManager *)self sessionManagerState];
  v47 = [v45 numberWithInt:{objc_msgSend(sessionManagerState2, "sessionState") == 4}];
  [v10 setValue:v47 forKey:@"hasCacheBeenReleased"];

  v48 = MEMORY[0x277CCABB0];
  sessionManagerState3 = [(SMInitiatorCacheManager *)self sessionManagerState];
  configuration2 = [sessionManagerState3 configuration];
  v51 = [v48 numberWithUnsignedInteger:{objc_msgSend(configuration2, "sessionType")}];
  [v10 setValue:v51 forKey:@"sessionType"];

  v52 = errorCopy;
  if (errorCopy)
  {
    v53 = MEMORY[0x277CCACA8];
    domain = [errorCopy domain];
    v55 = [v53 stringWithFormat:@"%@:%d", domain, objc_msgSend(errorCopy, "code")];
    [v10 setValue:v55 forKey:@"uploadError"];
  }

  v56 = [MEMORY[0x277CCABB0] numberWithBool:successCopy];
  [v10 setValue:v56 forKey:@"wasSuccessful"];

  v57 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(MEMORY[0x277D4AB40], "shareAllLocations")}];
  [v10 setValue:v57 forKey:@"wasLocationHistoryEnabled"];

  sessionManagerState4 = [(SMInitiatorCacheManager *)self sessionManagerState];
  configuration3 = [sessionManagerState4 configuration];
  sessionType = [configuration3 sessionType];

  sessionManagerState5 = [(SMInitiatorCacheManager *)self sessionManagerState];
  configuration4 = [sessionManagerState5 configuration];
  estimatedEndDate = configuration4;
  if (sessionType == 1)
  {
    time = [configuration4 time];
    timeBound = [time timeBound];
    [timeBound timeIntervalSinceNow];
    v67 = v66;

    v52 = errorCopy;
LABEL_16:

    goto LABEL_17;
  }

  sessionType2 = [configuration4 sessionType];

  v67 = -1.0;
  if (sessionType2 == 2)
  {
    sessionManagerState5 = [(SMInitiatorCacheManager *)self sessionManagerState];
    estimatedEndDate = [sessionManagerState5 estimatedEndDate];
    [estimatedEndDate timeIntervalSinceNow];
    v67 = v69;
    goto LABEL_16;
  }

LABEL_17:
  v70 = [MEMORY[0x277CCABB0] numberWithDouble:ceil(v67 / 60.0)];
  [v10 setValue:v70 forKey:@"timeLeftInSession"];

  v71 = MEMORY[0x277CCABB0];
  caMetricCacheUpdate = [(SMInitiatorCacheManager *)self caMetricCacheUpdate];
  [caMetricCacheUpdate cacheSize];
  v74 = [v71 numberWithDouble:v73 * 0.0009765625];
  [v10 setValue:v74 forKey:@"cacheSize"];

  v75 = MEMORY[0x277CCABB0];
  caMetricCacheUpdate2 = [(SMInitiatorCacheManager *)self caMetricCacheUpdate];
  [caMetricCacheUpdate2 averageDistanceBetweenLocationsInTrace];
  v77 = [v75 numberWithDouble:?];
  [v10 setValue:v77 forKey:@"averageDistanceBetweenLocationsInTrace"];

  v78 = MEMORY[0x277CCABB0];
  caMetricCacheUpdate3 = [(SMInitiatorCacheManager *)self caMetricCacheUpdate];
  [caMetricCacheUpdate3 averageHuncForLocationsInTrace];
  v80 = [v78 numberWithDouble:?];
  [v10 setValue:v80 forKey:@"averageHuncForLocationsInTrace"];

  v81 = MEMORY[0x277CCABB0];
  caMetricCacheUpdate4 = [(SMInitiatorCacheManager *)self caMetricCacheUpdate];
  [caMetricCacheUpdate4 averageTimeBetweenLocationsInTrace];
  v83 = [v81 numberWithDouble:?];
  [v10 setValue:v83 forKey:@"averageTimeBetweenLocationsInTrace"];

  v84 = MEMORY[0x277CCABB0];
  caMetricCacheUpdate5 = [(SMInitiatorCacheManager *)self caMetricCacheUpdate];
  [caMetricCacheUpdate5 maxDistanceBetweenLocationsInTrace];
  v86 = [v84 numberWithDouble:?];
  [v10 setValue:v86 forKey:@"maxDistanceBetweenLocationsInTrace"];

  v87 = MEMORY[0x277CCABB0];
  caMetricCacheUpdate6 = [(SMInitiatorCacheManager *)self caMetricCacheUpdate];
  [caMetricCacheUpdate6 maxHuncForLocationsInTrace];
  v89 = [v87 numberWithDouble:?];
  [v10 setValue:v89 forKey:@"maxHuncForLocationsInTrace"];

  v90 = MEMORY[0x277CCABB0];
  caMetricCacheUpdate7 = [(SMInitiatorCacheManager *)self caMetricCacheUpdate];
  [caMetricCacheUpdate7 maxTimeBetweenLocationsInTrace];
  v92 = [v90 numberWithDouble:?];
  [v10 setValue:v92 forKey:@"maxTimeBetweenLocationsInTrace"];

  v93 = MEMORY[0x277CCABB0];
  caMetricCacheUpdate8 = [(SMInitiatorCacheManager *)self caMetricCacheUpdate];
  [caMetricCacheUpdate8 minDistanceBetweenLocationsInTrace];
  v95 = [v93 numberWithDouble:?];
  [v10 setValue:v95 forKey:@"minDistanceBetweenLocationsInTrace"];

  v96 = MEMORY[0x277CCABB0];
  caMetricCacheUpdate9 = [(SMInitiatorCacheManager *)self caMetricCacheUpdate];
  [caMetricCacheUpdate9 minHuncForLocationsInTrace];
  v98 = [v96 numberWithDouble:?];
  [v10 setValue:v98 forKey:@"minHuncForLocationsInTrace"];

  v99 = MEMORY[0x277CCABB0];
  caMetricCacheUpdate10 = [(SMInitiatorCacheManager *)self caMetricCacheUpdate];
  [caMetricCacheUpdate10 minTimeBetweenLocationsInTrace];
  v101 = [v99 numberWithDouble:?];
  [v10 setValue:v101 forKey:@"minTimeBetweenLocationsInTrace"];

  v102 = MEMORY[0x277CCABB0];
  caMetricCacheUpdate11 = [(SMInitiatorCacheManager *)self caMetricCacheUpdate];
  v104 = [v102 numberWithInteger:{objc_msgSend(caMetricCacheUpdate11, "numLocationsInTrace")}];
  [v10 setValue:v104 forKey:@"numLocationsInTrace"];

  v105 = MEMORY[0x277CCABB0];
  +[RTRuntime footprint];
  v106 = [v105 numberWithDouble:?];
  [v10 setValue:v106 forKey:@"processFootprint"];

  v107 = [MEMORY[0x277CCABB0] numberWithBool:{-[SMInitiatorCacheManager isActiveDevice](self, "isActiveDevice")}];
  [v10 setValue:v107 forKey:@"isActive"];

  v108 = [MEMORY[0x277CCABB0] numberWithBool:{-[SMInitiatorCacheManager isCellularActivated](self, "isCellularActivated")}];
  [v10 setValue:v108 forKey:@"isCellularActivated"];

  v109 = [MEMORY[0x277CCABB0] numberWithBool:{-[SMInitiatorCacheManager isStandalone](self, "isStandalone")}];
  [v10 setValue:v109 forKey:@"isStandalone"];

  AnalyticsSendEvent();
  [(SMInitiatorCacheManager *)self setCaMetricCacheUpdate:0];
}

- (void)submitPowerTelemetryMetricForEvent:(int64_t)event
{
  v30 = *MEMORY[0x277D85DE8];
  if (_MergedGlobals_116 != -1)
  {
    dispatch_once(&_MergedGlobals_116, &__block_literal_global_569);
  }

  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v7 = [SMInitiatorCacheManager getTelemetryEventStringForEvent:event];
  [v6 setValue:v7 forKey:@"event"];

  v8 = MEMORY[0x277CCABB0];
  sessionManagerState = [(SMInitiatorCacheManager *)self sessionManagerState];
  configuration = [sessionManagerState configuration];
  v11 = [v8 numberWithUnsignedInteger:{objc_msgSend(configuration, "sessionType")}];
  [v6 setValue:v11 forKey:@"sessionType"];

  sessionUUID = [(SMInitiatorCacheManager *)self sessionUUID];
  uUIDString = [sessionUUID UUIDString];
  [v6 setValue:uUIDString forKey:@"sessionid"];

  if (event == 2)
  {
    v14 = MEMORY[0x277CCABB0];
    initiatorContact = [(SMInitiatorCacheManager *)self initiatorContact];
    v16 = [v14 numberWithInteger:{objc_msgSend(initiatorContact, "numCacheUpdates")}];
    [v6 setValue:v16 forKey:@"numCacheUploads"];
  }

  v17 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    sessionUUID2 = [(SMInitiatorCacheManager *)self sessionUUID];
    v19 = objc_opt_class();
    v20 = NSStringFromClass(v19);
    v21 = NSStringFromSelector(a2);
    v22 = 138413058;
    v23 = sessionUUID2;
    v24 = 2112;
    v25 = v20;
    v26 = 2112;
    v27 = v21;
    v28 = 2112;
    v29 = v6;
    _os_log_impl(&dword_2304B3000, v17, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Initiator,sessionID:%@,%@,%@,eventDict:%@", &v22, 0x2Au);
  }

  PPSSendTelemetry();
}

uint64_t __62__SMInitiatorCacheManager_submitPowerTelemetryMetricForEvent___block_invoke()
{
  result = PPSCreateTelemetryIdentifier();
  qword_2814A7D38 = result;
  return result;
}

+ (id)getTelemetryEventStringForEvent:(int64_t)event
{
  v3 = @"unknown";
  if (event == 2)
  {
    v3 = @"stop";
  }

  if (event == 1)
  {
    return @"start";
  }

  else
  {
    return v3;
  }
}

- (void)fetchInitiatorSafetyCacheForSessionID:(id)d completion:(id)completion
{
  v40 = *MEMORY[0x277D85DE8];
  dCopy = d;
  completionCopy = completion;
  sessionUUID = [(SMInitiatorCacheManager *)self sessionUUID];
  v10 = [sessionUUID isEqual:dCopy];

  if (v10)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v11 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        uUIDString = [dCopy UUIDString];
        v13 = objc_opt_class();
        v14 = NSStringFromClass(v13);
        v15 = NSStringFromSelector(a2);
        *buf = 138412802;
        v35 = uUIDString;
        v36 = 2112;
        v37 = v14;
        v38 = 2112;
        v39 = v15;
        _os_log_impl(&dword_2304B3000, v11, OS_LOG_TYPE_INFO, "#SafetyCache,Initiator,sessionID:%@,%@,%@,Returning the initiator safety cache", buf, 0x20u);
      }
    }

    initiatorContact = [(SMInitiatorCacheManager *)self initiatorContact];
    phoneCache = [initiatorContact phoneCache];
    initiatorContact2 = [(SMInitiatorCacheManager *)self initiatorContact];
    watchCache = [initiatorContact2 watchCache];
    initiatorContact3 = [(SMInitiatorCacheManager *)self initiatorContact];
    shouldBeCleanedUpDate = [initiatorContact3 shouldBeCleanedUpDate];
    initiatorContact4 = [(SMInitiatorCacheManager *)self initiatorContact];
    keyReleaseMessageSendDate = [initiatorContact4 keyReleaseMessageSendDate];
    completionCopy[2](completionCopy, dCopy, phoneCache, watchCache, shouldBeCleanedUpDate, keyReleaseMessageSendDate, 0);

    completionCopy = initiatorContact2;
  }

  else
  {
    v24 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      uUIDString2 = [dCopy UUIDString];
      v29 = objc_opt_class();
      v30 = NSStringFromClass(v29);
      v31 = NSStringFromSelector(a2);
      *buf = 138412802;
      v35 = uUIDString2;
      v36 = 2112;
      v37 = v30;
      v38 = 2112;
      v39 = v31;
      _os_log_error_impl(&dword_2304B3000, v24, OS_LOG_TYPE_ERROR, "#SafetyCache,Initiator,sessionID:%@,%@,%@,SessionID mismatched", buf, 0x20u);
    }

    v32 = *MEMORY[0x277CCA450];
    v25 = MEMORY[0x277CCACA8];
    sessionUUID2 = [(SMInitiatorCacheManager *)self sessionUUID];
    v27 = [v25 stringWithFormat:@"SessionID mismatched, requestd cache for %@, found cache for %@", dCopy, sessionUUID2];
    v33 = v27;
    initiatorContact = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v33 forKeys:&v32 count:1];

    phoneCache = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01448] code:7 userInfo:initiatorContact];
    (completionCopy)[2](completionCopy, dCopy, 0, 0, 0, 0, phoneCache);
  }
}

- (void)_writeActiveSessionDetails:(int64_t)details qos:(id)qos completion:(id)completion
{
  completionCopy = completion;
  qosCopy = qos;
  v7 = objc_opt_class();
  v25 = NSStringFromClass(v7);
  sessionUUID = [(SMInitiatorCacheManager *)self sessionUUID];
  v21 = objc_alloc(MEMORY[0x277D4AA58]);
  sessionManagerState = [(SMInitiatorCacheManager *)self sessionManagerState];
  activeDeviceIdentifier = [sessionManagerState activeDeviceIdentifier];
  initiatorContact = [(SMInitiatorCacheManager *)self initiatorContact];
  keyReleaseMessageSendDate = [initiatorContact keyReleaseMessageSendDate];
  initiatorContact2 = [(SMInitiatorCacheManager *)self initiatorContact];
  scheduleSendMessageGUID = [initiatorContact2 scheduleSendMessageGUID];
  sessionManagerState2 = [(SMInitiatorCacheManager *)self sessionManagerState];
  configuration = [sessionManagerState2 configuration];
  conversation = [configuration conversation];
  receiverPrimaryHandles = [conversation receiverPrimaryHandles];
  v16 = [v21 initWithSessionID:sessionUUID activeDeviceIdentifier:activeDeviceIdentifier cacheReleasedDate:keyReleaseMessageSendDate scheduledSendGUID:scheduleSendMessageGUID receiverHandles:receiverPrimaryHandles];

  activeSessionDetailsZone = [(SMInitiatorCacheManager *)self activeSessionDetailsZone];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __69__SMInitiatorCacheManager__writeActiveSessionDetails_qos_completion___block_invoke;
  v30[3] = &unk_2788C7798;
  v31 = sessionUUID;
  v32 = v25;
  v33 = completionCopy;
  v34 = a2;
  detailsCopy = details;
  v18 = completionCopy;
  v19 = v25;
  v20 = sessionUUID;
  [activeSessionDetailsZone writeActiveSessionDetails:v16 pendingRetryCount:details qos:qosCopy completion:v30];
}

void __69__SMInitiatorCacheManager__writeActiveSessionDetails_qos_completion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (a2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v6 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = *(a1 + 32);
        v8 = *(a1 + 40);
        v9 = NSStringFromSelector(*(a1 + 56));
        v16 = 138412802;
        v17 = v7;
        v18 = 2112;
        v19 = v8;
        v20 = 2112;
        v21 = v9;
        _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "#SafetyCache,Initiator,sessionID:%@,%@,%@,active session details stored", &v16, 0x20u);
      }
    }

    v10 = *(*(a1 + 48) + 16);
  }

  else
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = *(a1 + 32);
      v13 = *(a1 + 40);
      v14 = NSStringFromSelector(*(a1 + 56));
      v15 = *(a1 + 64);
      v16 = 138413314;
      v17 = v12;
      v18 = 2112;
      v19 = v13;
      v20 = 2112;
      v21 = v14;
      v22 = 2048;
      v23 = v15;
      v24 = 2112;
      v25 = v5;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "#SafetyCache,Initiator,sessionID:%@,%@,%@,failed to write active session details after %ld retries with error %@", &v16, 0x34u);
    }

    v10 = *(*(a1 + 48) + 16);
  }

  v10();
}

- (void)_deleteActiveSessionDetails:(int64_t)details
{
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  sessionUUID = [(SMInitiatorCacheManager *)self sessionUUID];
  v9 = [[SMCloudKitQosOptions alloc] initWithDefaultQos:1 masqueradeBundleID:0 xpcActivity:0];
  objc_initWeak(&location, self);
  activeSessionDetailsZone = [(SMInitiatorCacheManager *)self activeSessionDetailsZone];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __55__SMInitiatorCacheManager__deleteActiveSessionDetails___block_invoke;
  v13[3] = &unk_2788CD630;
  objc_copyWeak(v17, &location);
  v11 = sessionUUID;
  v14 = v11;
  v12 = v7;
  v17[1] = a2;
  v17[2] = details;
  v15 = v12;
  selfCopy = self;
  [activeSessionDetailsZone deleteActiveSessionDetailsRecordWithQos:v9 completion:v13];

  objc_destroyWeak(v17);
  objc_destroyWeak(&location);
}

void __55__SMInitiatorCacheManager__deleteActiveSessionDetails___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (!WeakRetained)
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      v10 = *(a1 + 40);
      v11 = NSStringFromSelector(*(a1 + 64));
      v25 = 138412802;
      v26 = v9;
      v27 = 2112;
      v28 = v10;
      v29 = 2112;
      v30 = v11;
      v12 = "#SafetyCache,Initiator,sessionID:%@,%@,%@,cache manager released during zone delete";
      v13 = v7;
      v14 = 32;
LABEL_18:
      _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, v12, &v25, v14);
      goto LABEL_19;
    }

    goto LABEL_20;
  }

  if (!v4)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      goto LABEL_21;
    }

    v7 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v15 = *(a1 + 32);
      v16 = *(a1 + 40);
      v11 = NSStringFromSelector(*(a1 + 64));
      v25 = 138412802;
      v26 = v15;
      v27 = 2112;
      v28 = v16;
      v29 = 2112;
      v30 = v11;
      _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "#SafetyCache,Initiator,sessionID:%@,%@,%@,active session details record deleted successfully", &v25, 0x20u);
LABEL_19:

      goto LABEL_20;
    }

    goto LABEL_20;
  }

  if (![SMCloudKitZone shouldRetryCkError:v4])
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v17 = *(a1 + 32);
      v18 = *(a1 + 40);
      v11 = NSStringFromSelector(*(a1 + 64));
      v25 = 138413058;
      v26 = v17;
      v27 = 2112;
      v28 = v18;
      v29 = 2112;
      v30 = v11;
      v31 = 2112;
      v32 = v4;
      v12 = "#SafetyCache,Initiator,sessionID:%@,%@,%@,failed to delete active session details record with non recoverable error %@";
LABEL_17:
      v13 = v7;
      v14 = 42;
      goto LABEL_18;
    }

LABEL_20:

    goto LABEL_21;
  }

  v6 = *(a1 + 72);
  v7 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
  if (v6 <= 0)
  {
    if (v8)
    {
      v19 = *(a1 + 32);
      v20 = *(a1 + 40);
      v11 = NSStringFromSelector(*(a1 + 64));
      v25 = 138413058;
      v26 = v19;
      v27 = 2112;
      v28 = v20;
      v29 = 2112;
      v30 = v11;
      v31 = 2112;
      v32 = v4;
      v12 = "#SafetyCache,Initiator,sessionID:%@,%@,%@,failed to delete active session details record after retries with recoverable error %@";
      goto LABEL_17;
    }

    goto LABEL_20;
  }

  if (v8)
  {
    v21 = *(a1 + 32);
    v22 = *(a1 + 40);
    v23 = NSStringFromSelector(*(a1 + 64));
    v24 = *(a1 + 72);
    v25 = 138413314;
    v26 = v21;
    v27 = 2112;
    v28 = v22;
    v29 = 2112;
    v30 = v23;
    v31 = 2112;
    v32 = v4;
    v33 = 1024;
    v34 = v24;
    _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "#SafetyCache,Initiator,sessionID:%@,%@,%@,failed to delete active session details record with recoverable error %@, pendingRetryCount %d, retrying...", &v25, 0x30u);
  }

  [*(a1 + 48) _deleteActiveSessionDetails:*(a1 + 72) - 1];
LABEL_21:
}

- (void)onNearbyEffectivePairedDeviceChangedNotification:(id)notification
{
  notificationCopy = notification;
  queue = [(SMInitiatorCacheManager *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __76__SMInitiatorCacheManager_onNearbyEffectivePairedDeviceChangedNotification___block_invoke;
  v7[3] = &unk_2788C4A70;
  v7[4] = self;
  v8 = notificationCopy;
  v6 = notificationCopy;
  dispatch_async(queue, v7);
}

- (void)_onNearbyEffectivePairedDeviceChangedNotification:(id)notification
{
  v19 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = NSStringFromSelector(a2);
      v13 = 138412802;
      v14 = v8;
      v15 = 2112;
      v16 = v9;
      v17 = 2112;
      v18 = notificationCopy;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "#SafetyCache,%@,%@,on paired device notification %@", &v13, 0x20u);
    }
  }

  name = [notificationCopy name];
  v11 = +[(RTNotification *)SMIDSMessengerNearbyEffectivePairedDeviceChangedNotification];
  v12 = [name isEqualToString:v11];

  if (v12)
  {
    [(SMInitiatorCacheManager *)self _evaluateAndManagePeriodicCacheUpdate];
  }
}

- (SMInitiatorCacheManagerDelegateProtocol)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end