@interface SMInitiatorService
- (BOOL)_hasSetupObjectsDependentOnPersistenceStack;
- (SMInitiatorService)initWithDefaultsManager:(id)manager contactsManager:(id)contactsManager locationManager:(id)locationManager motionActivityManager:(id)activityManager platform:(id)platform sessionManager:(id)sessionManager sessionMonitor:(id)monitor messagingService:(id)self0 safetyCacheStore:(id)self1 sessionStore:(id)self2 dataProtectionManager:(id)self3 batteryManager:(id)self4 xpcActivityManager:(id)self5 networkOfInterestManager:(id)self6 authorizationManager:(id)self7 wristStateManager:(id)self8 vehicleLocationProvider:(id)self9 starkManager:(id)starkManager suggestionsManager:(id)suggestionsManager suggestionsHelper:(id)helper learnedLocationManager:(id)learnedLocationManager healthKitManager:(id)kitManager deviceConfigurationChecker:(id)checker noMovementMonitor:(id)movementMonitor biomeManager:(id)biomeManager appDeletionManager:(id)deletionManager emergencyCallManager:(id)callManager;
- (id)_createInitiatorCacheManagerForSessionID:(id)d conversation:(id)conversation;
- (id)convertEligibilityToSMErrorWithInitiator:(int64_t)initiator receiver:(int64_t)receiver;
- (id)getCacheManagerForSessionID:(id)d;
- (id)invocationError;
- (int64_t)convertInitiatorEligibilityToSMError:(int64_t)error;
- (int64_t)convertReceiverEligibilityToSMError:(int64_t)error;
- (void)_cancelInitializationForSessionID:(id)d handler:(id)handler;
- (void)_cancelInitializationWithHandler:(id)handler;
- (void)_endSessionForSessionID:(id)d reason:(unint64_t)reason handler:(id)handler;
- (void)_fetchCurrentLocalSessionStateWithHandler:(id)handler;
- (void)_fetchCurrentSessionStateWithCompletion:(id)completion;
- (void)_fetchCurrentWorkoutSnapshotWithCompletion:(id)completion;
- (void)_fetchDeviceConfigurationLowPowerModeWarningStateWithHandler:(id)handler;
- (void)_fetchInitiatorSafetyCacheForSessionID:(id)d completion:(id)completion;
- (void)_fetchSOSReceiversWithCompletion:(id)completion;
- (void)_handoffSessionForSessionID:(id)d handler:(id)handler;
- (void)_initializeSessionWithConversation:(id)conversation handler:(id)handler;
- (void)_modifySessionWithConfiguration:(id)configuration handler:(id)handler;
- (void)_onBecomingActiveDevice:(id)device;
- (void)_onBecomingNonActiveDevice:(id)device;
- (void)_onDeletedConversation:(id)conversation;
- (void)_onDeletedMessage:(id)message;
- (void)_onEmergencyCallEnded;
- (void)_onEmergencyCallStarted;
- (void)_onHealthKitManagerNotification:(id)notification;
- (void)_onMessageReceived:(id)received;
- (void)_onNearbyEffectivePairedDeviceChangedNotification:(id)notification;
- (void)_onSafetyCacheStoreNotification:(id)notification;
- (void)_onSecondarySOSTriggerWithState:(id)state forActiveDevice:(BOOL)device;
- (void)_onSessionResumedWithState:(id)state forActiveDevice:(BOOL)device;
- (void)_onSessionStartMessageSendResult:(id)result;
- (void)_onSessionStateChanged:(id)changed forActiveDevice:(BOOL)device;
- (void)_onSessionStoreNotification:(id)notification;
- (void)_onWorkoutPause;
- (void)_onWorkoutResume;
- (void)_promptDestinationAnomalyVerificationWithContext:(id)context handler:(id)handler;
- (void)_promptRoundTripAnomalyVerificationWithContext:(id)context handler:(id)handler;
- (void)_promptSafeArrivalWithContext:(id)context handler:(id)handler;
- (void)_promptTimerEndedVerificationWithContext:(id)context handler:(id)handler;
- (void)_promptWorkoutAnomalyVerificationWithContext:(id)context handler:(id)handler;
- (void)_purgePredating:(id)predating completion:(id)completion;
- (void)_respondToNotificationWithIdentifier:(id)identifier sessionIdentifier:(id)sessionIdentifier actionIdentifier:(id)actionIdentifier handler:(id)handler;
- (void)_respondToTriggerPromptForSessionID:(id)d response:(int64_t)response handler:(id)handler;
- (void)_sendHeartbeatForSessionID:(id)d handler:(id)handler;
- (void)_sendSafetyCacheForSessionID:(id)d handler:(id)handler;
- (void)_setup;
- (void)_setupCacheManagersWithHandler:(id)handler;
- (void)_setupOncePersistenceStackAvailable;
- (void)_setupSessionManager;
- (void)_setupSessionMonitor;
- (void)_shutdownWithHandler:(id)handler;
- (void)_startInitializationProcess;
- (void)_startSessionWithConfiguration:(id)configuration handler:(id)handler;
- (void)_tearDownWorkoutEndedBufferTimer;
- (void)addObserver:(id)observer;
- (void)addObserverForSessionManager:(id)manager;
- (void)cacheManagerCleanedUpForSessionID:(id)d;
- (void)cancelInitializationForSessionID:(id)d handler:(id)handler;
- (void)cancelInitializationWithCompletion:(id)completion;
- (void)checkAndDeleteKey:(id)key forIdentifier:(id)identifier;
- (void)dealloc;
- (void)deleteAllStoredDefaults;
- (void)endSessionForSessionID:(id)d reason:(unint64_t)reason completion:(id)completion;
- (void)fetchCurrentLocalSessionStateWithHandler:(id)handler;
- (void)fetchCurrentSessionStateWithCompletion:(id)completion;
- (void)fetchCurrentWorkoutSnapshotWithCompletion:(id)completion;
- (void)fetchDeviceConfigurationLowPowerModeWarningStateWithHandler:(id)handler;
- (void)fetchInitiatorSafetyCacheForSessionID:(id)d completion:(id)completion;
- (void)fetchSOSReceiversWithCompletion:(id)completion;
- (void)handleSessionStateForNonActiveSessions:(id)sessions;
- (void)handoffSessionForSessionID:(id)d handler:(id)handler;
- (void)iMessageGroupDisplayNameChangedFor:(id)for;
- (void)iMessageGroupMembershipChangedFor:(id)for;
- (void)initializeSessionWithConversation:(id)conversation completion:(id)completion;
- (void)kickedFromIMessageGroupWith:(id)with;
- (void)modifySessionWithConfiguration:(id)configuration handler:(id)handler;
- (void)notifyObserversSafetyCacheDidUpdateForSessionID:(id)d phoneCache:(id)cache watchCache:(id)watchCache cacheExpiryDate:(id)date cacheReleaseDate:(id)releaseDate;
- (void)onBecomingActiveDevice:(id)device;
- (void)onBecomingNonActiveDevice:(id)device;
- (void)onDeletedConversation:(id)conversation;
- (void)onDeletedMessage:(id)message;
- (void)onEmergencyCallEnded;
- (void)onEmergencyCallStarted;
- (void)onHealthKitManagerNotification:(id)notification;
- (void)onMessageReceived:(id)received;
- (void)onNearbyEffectivePairedDeviceChangedNotification:(id)notification;
- (void)onSafetyCacheStoreNotification:(id)notification;
- (void)onSecondarySOSTriggerWithState:(id)state forActiveDevice:(BOOL)device;
- (void)onSessionResumedWithState:(id)state forActiveDevice:(BOOL)device;
- (void)onSessionStartMessageSendResult:(id)result;
- (void)onSessionStateChanged:(id)changed forActiveDevice:(BOOL)device;
- (void)onSessionStoreNotification:(id)notification;
- (void)performPurgeOfType:(int64_t)type referenceDate:(id)date completion:(id)completion;
- (void)promptDestinationAnomalyVerificationWithContext:(id)context handler:(id)handler;
- (void)promptRoundTripAnomalyVerificationWithContext:(id)context handler:(id)handler;
- (void)promptSafeArrivalWithContext:(id)context handler:(id)handler;
- (void)promptTimerEndedVerificationWithContext:(id)context handler:(id)handler;
- (void)promptWorkoutAnomalyVerificationWithContext:(id)context handler:(id)handler;
- (void)receivedEmergencyContactsNotifiedSyncMessage:(id)message;
- (void)receivedKeyReleaseInfoRequestMessage:(id)message fromHandle:(id)handle fromMe:(BOOL)me;
- (void)receivedResponseToTriggerPromptRemoteControlMessage:(id)message fromHandle:(id)handle fromMe:(BOOL)me;
- (void)receivedSessionConfigurationUpdateRemoteControlMessage:(id)message fromHandle:(id)handle fromMe:(BOOL)me;
- (void)receivedSessionEndRemoteControlMessage:(id)message fromHandle:(id)handle fromMe:(BOOL)me;
- (void)receivedSessionStartInfoRequestMessage:(id)message fromHandle:(id)handle fromMe:(BOOL)me;
- (void)receivedSessionStateUpdateReqMessage:(id)message fromHandle:(id)handle fromMe:(BOOL)me;
- (void)receivedSessionSyncMessage:(id)message fromHandle:(id)handle fromMe:(BOOL)me;
- (void)receivedSessionTypeKeyRelease:(id)release fromHandle:(id)handle fromMe:(BOOL)me;
- (void)removeObserver:(id)observer;
- (void)removeObserverForSessionManager:(id)manager;
- (void)respondToNotificationWithIdentifier:(id)identifier sessionIdentifier:(id)sessionIdentifier actionIdentifier:(id)actionIdentifier handler:(id)handler;
- (void)respondToTriggerPromptForSessionID:(id)d response:(int64_t)response handler:(id)handler;
- (void)scheduledSendMessageCanceledForSessionID:(id)d guid:(id)guid;
- (void)scheduledSendMessageScheduledForSessionID:(id)d guid:(id)guid date:(id)date;
- (void)scheduledSendMessageSent:(id)sent;
- (void)sendHeartbeatForSessionID:(id)d handler:(id)handler;
- (void)sendSafetyCacheForSessionID:(id)d handler:(id)handler;
- (void)startSessionWithConfiguration:(id)configuration completion:(id)completion;
@end

@implementation SMInitiatorService

- (SMInitiatorService)initWithDefaultsManager:(id)manager contactsManager:(id)contactsManager locationManager:(id)locationManager motionActivityManager:(id)activityManager platform:(id)platform sessionManager:(id)sessionManager sessionMonitor:(id)monitor messagingService:(id)self0 safetyCacheStore:(id)self1 sessionStore:(id)self2 dataProtectionManager:(id)self3 batteryManager:(id)self4 xpcActivityManager:(id)self5 networkOfInterestManager:(id)self6 authorizationManager:(id)self7 wristStateManager:(id)self8 vehicleLocationProvider:(id)self9 starkManager:(id)starkManager suggestionsManager:(id)suggestionsManager suggestionsHelper:(id)helper learnedLocationManager:(id)learnedLocationManager healthKitManager:(id)kitManager deviceConfigurationChecker:(id)checker noMovementMonitor:(id)movementMonitor biomeManager:(id)biomeManager appDeletionManager:(id)deletionManager emergencyCallManager:(id)callManager
{
  managerCopy = manager;
  contactsManagerCopy = contactsManager;
  locationManagerCopy = locationManager;
  activityManagerCopy = activityManager;
  platformCopy = platform;
  sessionManagerCopy = sessionManager;
  sessionManagerCopy2 = sessionManager;
  monitorCopy = monitor;
  serviceCopy = service;
  storeCopy = store;
  sessionStoreCopy = sessionStore;
  protectionManagerCopy = protectionManager;
  batteryManagerCopy = batteryManager;
  xpcActivityManagerCopy = xpcActivityManager;
  interestManagerCopy = interestManager;
  authorizationManagerCopy = authorizationManager;
  stateManagerCopy = stateManager;
  providerCopy = provider;
  starkManagerCopy = starkManager;
  suggestionsManagerCopy = suggestionsManager;
  helperCopy = helper;
  learnedLocationManagerCopy = learnedLocationManager;
  kitManagerCopy = kitManager;
  checkerCopy = checker;
  movementMonitorCopy = movementMonitor;
  biomeManagerCopy = biomeManager;
  deletionManagerCopy = deletionManager;
  callManagerCopy = callManager;
  v86 = callManagerCopy;
  if (!managerCopy)
  {
    v35 = contactsManagerCopy;
    v74 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_70;
    }

    *buf = 0;
    v75 = "Invalid parameter not satisfying: defaultsManager";
LABEL_69:
    _os_log_error_impl(&dword_2304B3000, v74, OS_LOG_TYPE_ERROR, v75, buf, 2u);
    goto LABEL_70;
  }

  v35 = contactsManagerCopy;
  if (!contactsManagerCopy)
  {
    v74 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_70;
    }

    *buf = 0;
    v75 = "Invalid parameter not satisfying: contactsManager";
    goto LABEL_69;
  }

  if (!locationManagerCopy)
  {
    v74 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_70;
    }

    *buf = 0;
    v75 = "Invalid parameter not satisfying: locationManager";
    goto LABEL_69;
  }

  if (!activityManagerCopy)
  {
    v74 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_70;
    }

    *buf = 0;
    v75 = "Invalid parameter not satisfying: motionActivityManager";
    goto LABEL_69;
  }

  if (!platformCopy)
  {
    v74 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_70;
    }

    *buf = 0;
    v75 = "Invalid parameter not satisfying: platform";
    goto LABEL_69;
  }

  if (!serviceCopy)
  {
    v74 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_70;
    }

    *buf = 0;
    v75 = "Invalid parameter not satisfying: messagingService";
    goto LABEL_69;
  }

  if (!storeCopy)
  {
    v74 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_70;
    }

    *buf = 0;
    v75 = "Invalid parameter not satisfying: safetyCacheStore";
    goto LABEL_69;
  }

  if (!sessionStoreCopy)
  {
    v74 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_70;
    }

    *buf = 0;
    v75 = "Invalid parameter not satisfying: sessionStore";
    goto LABEL_69;
  }

  if (!interestManagerCopy)
  {
    v74 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_70;
    }

    *buf = 0;
    v75 = "Invalid parameter not satisfying: networkOfInterestManager";
    goto LABEL_69;
  }

  if (!authorizationManagerCopy)
  {
    v74 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_70;
    }

    *buf = 0;
    v75 = "Invalid parameter not satisfying: authorizationManager";
    goto LABEL_69;
  }

  if (!starkManagerCopy)
  {
    v74 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_70;
    }

    *buf = 0;
    v75 = "Invalid parameter not satisfying: starkManager";
    goto LABEL_69;
  }

  if (!suggestionsManagerCopy)
  {
    v74 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_70;
    }

    *buf = 0;
    v75 = "Invalid parameter not satisfying: suggestionsManager";
    goto LABEL_69;
  }

  if (!helperCopy)
  {
    v74 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_70;
    }

    *buf = 0;
    v75 = "Invalid parameter not satisfying: suggestionsHelper";
    goto LABEL_69;
  }

  if (!learnedLocationManagerCopy)
  {
    v74 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_70;
    }

    *buf = 0;
    v75 = "Invalid parameter not satisfying: learnedLocationManager";
    goto LABEL_69;
  }

  if (!kitManagerCopy)
  {
    v74 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_70;
    }

    *buf = 0;
    v75 = "Invalid parameter not satisfying: healthKitManager";
    goto LABEL_69;
  }

  if (!checkerCopy)
  {
    v74 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_70;
    }

    *buf = 0;
    v75 = "Invalid parameter not satisfying: deviceConfigurationChecker";
    goto LABEL_69;
  }

  if (!movementMonitorCopy)
  {
    v74 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_70;
    }

    *buf = 0;
    v75 = "Invalid parameter not satisfying: noMovementMonitor";
    goto LABEL_69;
  }

  if (!biomeManagerCopy)
  {
    v74 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_70;
    }

    *buf = 0;
    v75 = "Invalid parameter not satisfying: biomeManager";
    goto LABEL_69;
  }

  if (!deletionManagerCopy)
  {
    v74 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_70;
    }

    *buf = 0;
    v75 = "Invalid parameter not satisfying: appDeletionManager";
    goto LABEL_69;
  }

  if (!callManagerCopy)
  {
    v74 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v75 = "Invalid parameter not satisfying: emergencyCallManager";
      goto LABEL_69;
    }

LABEL_70:

    v67 = 0;
    v68 = managerCopy;
    v70 = batteryManagerCopy;
    v69 = protectionManagerCopy;
    v72 = stateManagerCopy;
    v71 = xpcActivityManagerCopy;
    selfCopy = self;
    v73 = providerCopy;
    goto LABEL_71;
  }

  v107.receiver = self;
  v107.super_class = SMInitiatorService;
  v36 = [(RTNotifier *)&v107 init];
  v37 = v36;
  if (v36)
  {
    objc_storeStrong(&v36->_defaultsManager, manager);
    objc_storeStrong(&v37->_contactsManager, contactsManager);
    objc_storeStrong(&v37->_locationManager, locationManager);
    objc_storeStrong(&v37->_motionActivityManager, activityManager);
    objc_storeStrong(&v37->_platform, platform);
    v38 = [MEMORY[0x277CCAA50] hashTableWithOptions:517];
    observers = v37->_observers;
    v37->_observers = v38;

    objc_storeStrong(&v37->_safetyCacheStore, store);
    v37->_safetyCacheStoreAvailability = 0;
    objc_storeStrong(&v37->_sessionStore, sessionStore);
    v37->_sessionStoreAvailability = 0;
    objc_storeStrong(&v37->_dataProtectionManager, protectionManager);
    objc_storeStrong(&v37->_xpcActivityManager, xpcActivityManager);
    objc_storeStrong(&v37->_batteryManager, batteryManager);
    v40 = objc_opt_new();
    cacheManagerArray = v37->_cacheManagerArray;
    v37->_cacheManagerArray = v40;

    objc_storeStrong(&v37->_authorizationManager, authorizationManager);
    objc_storeStrong(&v37->_wristStateManager, stateManager);
    objc_storeStrong(&v37->_vehicleLocationProvider, provider);
    objc_storeStrong(&v37->_starkManager, starkManager);
    objc_storeStrong(&v37->_suggestionsManager, suggestionsManager);
    objc_storeStrong(&v37->_suggestionsHelper, helper);
    objc_storeStrong(&v37->_learnedLocationManager, learnedLocationManager);
    objc_storeStrong(&v37->_healthKitManager, kitManager);
    objc_storeStrong(&v37->_deviceConfigurationChecker, checker);
    v42 = [RTInvocationDispatcher alloc];
    queue = [(RTNotifier *)v37 queue];
    v44 = [(RTInvocationDispatcher *)v42 initWithQueue:queue];
    dispatcher = v37->_dispatcher;
    v37->_dispatcher = v44;

    objc_storeStrong(&v37->_noMovementMonitor, movementMonitor);
    objc_storeStrong(&v37->_biomeManager, biomeManager);
    objc_storeStrong(&v37->_appDeletionManager, deletionManager);
    objc_storeStrong(&v37->_emergencyCallManager, callManager);
    if (sessionManagerCopy2)
    {
      objc_storeStrong(&v37->_sessionManager, sessionManagerCopy);
      [(SMSessionManager *)v37->_sessionManager addObserver:v37];
    }

    if (monitorCopy)
    {
      objc_storeStrong(&v37->_sessionMonitor, monitor);
      if (sessionManagerCopy2)
      {
        [(SMSessionMonitor *)v37->_sessionMonitor setSessionManagerDelegate:v37->_sessionManager];
        [(SMSessionManager *)v37->_sessionManager addObserver:v37->_sessionMonitor];
      }
    }

    objc_storeStrong(&v37->_networkOfInterestManager, interestManager);
    objc_storeStrong(&v37->_messagingService, service);
    messagingService = v37->_messagingService;
    v47 = +[(RTNotification *)SMSessionStartMessageSendResultNotification];
    [(RTNotifier *)messagingService addObserver:v37 selector:sel_onSessionStartMessageSendResult_ name:v47];

    v48 = v37->_messagingService;
    v49 = +[(RTNotification *)SMMessageReceivedNotification];
    [(RTNotifier *)v48 addObserver:v37 selector:sel_onMessageReceived_ name:v49];

    v50 = v37->_messagingService;
    v51 = +[(RTNotification *)SMIDSMessengerNearbyEffectivePairedDeviceChangedNotification];
    [(RTNotifier *)v50 addObserver:v37 selector:sel_onNearbyEffectivePairedDeviceChangedNotification_ name:v51];

    v52 = v37->_messagingService;
    v53 = +[(RTNotification *)SMMessageDeletedNotification];
    [(RTNotifier *)v52 addObserver:v37 selector:sel_onDeletedMessage_ name:v53];

    v54 = v37->_messagingService;
    v55 = +[(RTNotification *)SMConversationDeletedNotification];
    [(RTNotifier *)v54 addObserver:v37 selector:sel_onDeletedConversation_ name:v55];

    v56 = [SMSessionMetricManager alloc];
    defaultsManager = [(SMInitiatorService *)v37 defaultsManager];
    learnedLocationManager = [(SMInitiatorService *)v37 learnedLocationManager];
    sessionStore = [(SMInitiatorService *)v37 sessionStore];
    locationManager = [(SMInitiatorService *)v37 locationManager];
    deviceIdentifier = [(SMMessagingService *)v37->_messagingService deviceIdentifier];
    v62 = [(SMSessionMetricManager *)v56 initWithDefaultsManager:defaultsManager learnedLocationManager:learnedLocationManager sessionStore:sessionStore locationManager:locationManager currentDeviceIdentifier:deviceIdentifier];
    sessionMetricManager = v37->_sessionMetricManager;
    v37->_sessionMetricManager = v62;

    v37->_isEmergencyCallOngoing = 0;
    v64 = objc_alloc_init(SMCheckInRemindersTipResponseMetricManager);
    tipResponseMetricManager = v37->_tipResponseMetricManager;
    v37->_tipResponseMetricManager = v64;

    [(RTService *)v37 setup];
  }

  selfCopy = v37;
  v67 = selfCopy;
  v68 = managerCopy;
  v70 = batteryManagerCopy;
  v69 = protectionManagerCopy;
  v72 = stateManagerCopy;
  v71 = xpcActivityManagerCopy;
  v73 = providerCopy;
LABEL_71:

  return v67;
}

- (void)_setup
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = _os_feature_enabled_impl();
  v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = NSStringFromSelector(a2);
      v23 = 138412546;
      v24 = v8;
      v25 = 2112;
      v26 = v9;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Initiator,%@,%@", &v23, 0x16u);
    }

    sessionStore = self->_sessionStore;
    v11 = +[(RTNotification *)RTStoreNotificationAvailabilityDidChange];
    [(RTNotifier *)sessionStore addObserver:self selector:sel_onSessionStoreNotification_ name:v11];

    safetyCacheStore = self->_safetyCacheStore;
    v13 = +[(RTNotification *)RTStoreNotificationAvailabilityDidChange];
    [(RTNotifier *)safetyCacheStore addObserver:self selector:sel_onSafetyCacheStoreNotification_ name:v13];

    if ([MEMORY[0x277D4AAE0] zelkovaWorkoutEnabled])
    {
      healthKitManager = self->_healthKitManager;
      v15 = +[(RTNotification *)RTHealthKitManagerWorkoutSnapshotUpdateNotification];
      [(RTNotifier *)healthKitManager addObserver:self selector:sel_onHealthKitManagerNotification_ name:v15];
    }

    [(SMEmergencyCallManager *)self->_emergencyCallManager addObserver:self];
    [MEMORY[0x277D4AB40] migrateIfNeeded];
    defaultsManager = [(SMInitiatorService *)self defaultsManager];
    v17 = [defaultsManager objectForKey:@"RTDefaultsSuggestionAlwaysOnPromptCount"];
    integerValue = [v17 integerValue];

    if (integerValue > [MEMORY[0x277D4AB40] alwaysOnPromptCount])
    {
      [MEMORY[0x277D4AB40] setAlwaysOnPromptCount:integerValue];
    }

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, self, _SiriSettingsLockScreenPrefsDidChange, *MEMORY[0x277D4AE28], 0, 0);
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v20 = objc_opt_class();
      v21 = NSStringFromClass(v20);
      v22 = NSStringFromSelector(a2);
      v23 = 138412546;
      v24 = v21;
      v25 = 2112;
      v26 = v22;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "%@, %@, feature not enabled", &v23, 0x16u);
    }
  }
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, *MEMORY[0x277D4AE28], 0);
  v4.receiver = self;
  v4.super_class = SMInitiatorService;
  [(SMInitiatorService *)&v4 dealloc];
}

- (void)_setupOncePersistenceStackAvailable
{
  v19 = *MEMORY[0x277D85DE8];
  if ([(SMInitiatorService *)self _hasSetupObjectsDependentOnPersistenceStack])
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      return;
    }

    v3 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      sessionManager = self->_sessionManager;
      sessionMonitor = self->_sessionMonitor;
      v6 = [(NSMutableArray *)self->_cacheManagerArray count];
      *buf = 136315906;
      v12 = "[SMInitiatorService _setupOncePersistenceStackAvailable]";
      v13 = 2112;
      v14 = sessionManager;
      v15 = 2112;
      v16 = sessionMonitor;
      v17 = 2048;
      v18 = v6;
      _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_INFO, "%s, has already run. sessionManager, %@, sessionMonitor, %@, cacheManagerArray Count, %lu", buf, 0x2Au);
    }

    goto LABEL_12;
  }

  if ([(SMInitiatorService *)self sessionStoreAvailability]!= 2 || [(SMInitiatorService *)self safetyCacheStoreAvailability]!= 2)
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [RTStore availabilityToString:[(SMInitiatorService *)self sessionStoreAvailability]];
      v9 = [RTStore availabilityToString:[(SMInitiatorService *)self safetyCacheStoreAvailability]];
      *buf = 136315650;
      v12 = "[SMInitiatorService _setupOncePersistenceStackAvailable]";
      v13 = 2112;
      v14 = v8;
      v15 = 2112;
      v16 = v9;
      _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_DEFAULT, "%s, Deferring - Both stores are not available. Session Store, %@, Safety Cache Store, %@", buf, 0x20u);
    }

LABEL_12:

    return;
  }

  v7 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v12 = "[SMInitiatorService _setupOncePersistenceStackAvailable]";
    _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_DEFAULT, "%s, Setting up session monitor, cache managers, and session manager", buf, 0xCu);
  }

  [(SMInitiatorService *)self _setupSessionMonitor];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __57__SMInitiatorService__setupOncePersistenceStackAvailable__block_invoke;
  v10[3] = &unk_2788C4730;
  v10[4] = self;
  [(SMInitiatorService *)self _setupCacheManagersWithHandler:v10];
}

void __57__SMInitiatorService__setupOncePersistenceStackAvailable__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [SMWatchdog alloc];
  v5 = *(a1 + 32);
  v6 = *(v5 + 96);
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __57__SMInitiatorService__setupOncePersistenceStackAvailable__block_invoke_2;
  v12 = &unk_2788CBD90;
  v13 = v3;
  v14 = v5;
  v7 = v3;
  v8 = [(SMWatchdog *)v4 initWithDefaultsManager:v6 handler:&v9];
  [*(a1 + 32) setWatchdog:{v8, v9, v10, v11, v12}];

  [*(a1 + 32) _setupSessionManager];
}

void __57__SMInitiatorService__setupOncePersistenceStackAvailable__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v14 = [v5 configuration];
    v16 = 136315650;
    v17 = "[SMInitiatorService _setupOncePersistenceStackAvailable]_block_invoke_2";
    v18 = 2112;
    v19 = v14;
    v20 = 2112;
    v21 = v6;
    _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "%s, Watch dog fired with state, %@, error, %@", &v16, 0x20u);
  }

  if (!*(a1 + 32))
  {
    if ([v5 sessionState] == 10 || objc_msgSend(v5, "sessionState") == 11)
    {
      v8 = *(a1 + 40);
      v9 = [v5 configuration];
      v10 = [v9 sessionID];
      [v8 cancelInitializationForSessionID:v10 handler:&__block_literal_global_72];
    }

    else
    {
      if ([v5 sessionState] == 12)
      {
        v11 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v16 = 136315138;
          v17 = "[SMInitiatorService _setupOncePersistenceStackAvailable]_block_invoke";
          _os_log_impl(&dword_2304B3000, v11, OS_LOG_TYPE_DEFAULT, "%s, Watch dog fired, transitioning to not active", &v16, 0xCu);
        }

        v9 = [*(a1 + 40) sessionManager];
        v12 = [v5 configuration];
        v13 = [v12 sessionID];
        [v9 terminateSessionWithSessionID:v13];

        goto LABEL_8;
      }

      if ([v5 isPromptState])
      {
        v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
        {
          v16 = 136315395;
          v17 = "[SMInitiatorService _setupOncePersistenceStackAvailable]_block_invoke";
          v18 = 2117;
          v19 = v5;
          _os_log_fault_impl(&dword_2304B3000, v9, OS_LOG_TYPE_FAULT, "%s, Watch dog fired, logging fault for prompt state, %{sensitive}@", &v16, 0x16u);
        }

        goto LABEL_8;
      }

      v15 = *(a1 + 40);
      v9 = [v5 configuration];
      v10 = [v9 sessionID];
      [v15 endSessionForSessionID:v10 reason:6 completion:&__block_literal_global_140_0];
    }

LABEL_8:
  }
}

void __57__SMInitiatorService__setupOncePersistenceStackAvailable__block_invoke_136(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315394;
    v5 = "[SMInitiatorService _setupOncePersistenceStackAvailable]_block_invoke";
    v6 = 2112;
    v7 = v2;
    _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_DEFAULT, "%s, Watch dog fired, cancelled initialization, error %@", &v4, 0x16u);
  }
}

void __57__SMInitiatorService__setupOncePersistenceStackAvailable__block_invoke_138(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315394;
    v5 = "[SMInitiatorService _setupOncePersistenceStackAvailable]_block_invoke";
    v6 = 2112;
    v7 = v2;
    _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_DEFAULT, "%s, Watch dog fired, cancelled session, error %@", &v4, 0x16u);
  }
}

- (void)_setupSessionMonitor
{
  self->_sessionMonitor = [[SMSessionMonitor alloc] initWithDefaultsManager:self->_defaultsManager dataProtectionManager:self->_dataProtectionManager healthKitManager:self->_healthKitManager locationManager:self->_locationManager motionActivityManager:self->_motionActivityManager platform:self->_platform sessionMetricManager:self->_sessionMetricManager sessionStore:self->_sessionStore wristStateManager:self->_wristStateManager noMovementMonitor:self->_noMovementMonitor];

  MEMORY[0x2821F96F8]();
}

- (void)_setupSessionManager
{
  v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [v16 addObject:self];
  sessionMonitor = [(SMInitiatorService *)self sessionMonitor];

  if (sessionMonitor)
  {
    sessionMonitor2 = [(SMInitiatorService *)self sessionMonitor];
    [v16 addObject:sessionMonitor2];
  }

  watchdog = [(SMInitiatorService *)self watchdog];

  if (watchdog)
  {
    watchdog2 = [(SMInitiatorService *)self watchdog];
    [v16 addObject:watchdog2];
  }

  suggestionsManager = [(SMInitiatorService *)self suggestionsManager];

  if (suggestionsManager)
  {
    suggestionsManager2 = [(SMInitiatorService *)self suggestionsManager];
    [v16 addObject:suggestionsManager2];
  }

  sessionMetricManager = [(SMInitiatorService *)self sessionMetricManager];

  if (sessionMetricManager)
  {
    sessionMetricManager2 = [(SMInitiatorService *)self sessionMetricManager];
    [v16 addObject:sessionMetricManager2];
  }

  v11 = [SMCarPlayAlertManager alloc];
  queue = [(RTNotifier *)self queue];
  v13 = [(SMCarPlayAlertManager *)v11 initWithQueue:queue defaultsManager:self->_defaultsManager contactsManager:self->_contactsManager starkManager:self->_starkManager];

  v14 = [[SMSessionManager alloc] initWithAuthorizationManager:self->_authorizationManager biomeManager:self->_biomeManager contactsManager:self->_contactsManager defaultsManager:self->_defaultsManager locationManager:self->_locationManager platform:self->_platform sessionMetricManager:self->_sessionMetricManager sessionStore:self->_sessionStore messagingService:self->_messagingService carPlayAlertManager:v13 observers:v16 activeSessionDetailsDelegate:self->_activeSessionDetailsZone wristStateManager:self->_wristStateManager appDeletionManager:self->_appDeletionManager healthKitManager:self->_healthKitManager emergencyCallManager:self->_emergencyCallManager];
  sessionManager = self->_sessionManager;
  self->_sessionManager = v14;

  [(SMSessionMonitor *)self->_sessionMonitor setSessionManagerDelegate:self->_sessionManager];
}

- (void)_setupCacheManagersWithHandler:(id)handler
{
  v27 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v6 = [SMActiveSessionZone alloc];
  queue = [(RTNotifier *)self queue];
  defaultsManager = [(SMInitiatorService *)self defaultsManager];
  v9 = [(SMActiveSessionZone *)v6 initWithQueue:queue defaultsManager:defaultsManager];
  activeSessionDetailsZone = self->_activeSessionDetailsZone;
  self->_activeSessionDetailsZone = v9;

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v14 = NSStringFromSelector(a2);
      getLatestActiveSessionDetails = [(SMActiveSessionZone *)self->_activeSessionDetailsZone getLatestActiveSessionDetails];
      *buf = 138412802;
      v22 = v13;
      v23 = 2112;
      v24 = v14;
      v25 = 2112;
      v26 = getLatestActiveSessionDetails;
      _os_log_impl(&dword_2304B3000, v11, OS_LOG_TYPE_INFO, "#SafetyCache,Initiator,%@,%@, _activeSessionDetailsZone.latestActiveSessionDetails %@", buf, 0x20u);
    }
  }

  safetyCacheStore = self->_safetyCacheStore;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __53__SMInitiatorService__setupCacheManagersWithHandler___block_invoke;
  v18[3] = &unk_2788C5508;
  v19 = handlerCopy;
  v20 = a2;
  v18[4] = self;
  v17 = handlerCopy;
  [(SMSafetyCacheStore *)safetyCacheStore fetchInitiatorContactsWithHandler:v18];
}

void __53__SMInitiatorService__setupCacheManagersWithHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__SMInitiatorService__setupCacheManagersWithHandler___block_invoke_2;
  block[3] = &unk_2788C47F8;
  v8 = *(a1 + 32);
  v14 = v6;
  v15 = v8;
  v12 = *(a1 + 40);
  v9 = v12;
  v17 = v12;
  v16 = v5;
  v10 = v5;
  v11 = v6;
  dispatch_async(v7, block);
}

uint64_t __53__SMInitiatorService__setupCacheManagersWithHandler___block_invoke_2(uint64_t a1)
{
  v1 = a1;
  v54 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v26 = objc_opt_class();
      v27 = NSStringFromClass(v26);
      v28 = NSStringFromSelector(*(v1 + 64));
      v29 = *(v1 + 32);
      *buf = 138412802;
      v49 = v27;
      v50 = 2112;
      v51 = v28;
      v52 = 2112;
      v53 = v29;
      _os_log_error_impl(&dword_2304B3000, v2, OS_LOG_TYPE_ERROR, "#SafetyCache,Initiator,%@,%@,failed to fetch receiver contacts with error %@", buf, 0x20u);
    }

    result = *(v1 + 56);
    if (result)
    {
      v4 = *(result + 16);
      return v4();
    }
  }

  else
  {
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    obj = *(a1 + 48);
    v32 = [obj countByEnumeratingWithState:&v43 objects:v47 count:16];
    if (v32)
    {
      v31 = *v44;
      do
      {
        v5 = 0;
        do
        {
          if (*v44 != v31)
          {
            objc_enumerationMutation(obj);
          }

          v42 = v5;
          v6 = *(*(&v43 + 1) + 8 * v5);
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v7 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
            if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
            {
              v8 = [v6 sessionUUID];
              v9 = objc_opt_class();
              v10 = NSStringFromClass(v9);
              v11 = NSStringFromSelector(*(v1 + 64));
              *buf = 138412802;
              v49 = v8;
              v50 = 2112;
              v51 = v10;
              v52 = 2112;
              v53 = v11;
              _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "#SafetyCache,Initiator,sessionID:%@,%@,%@,loaded initiator contact from disk", buf, 0x20u);
            }
          }

          v41 = [SMInitiatorCacheManager alloc];
          v12 = *(v1 + 40);
          v39 = v6;
          v40 = v12[19];
          v37 = v12[12];
          v38 = v12[21];
          v36 = v12[5];
          v35 = [v12 queue];
          v13 = *(v1 + 40);
          v33 = v13[25];
          v34 = v13[24];
          v14 = v13[16];
          v15 = v13[17];
          v16 = v13[26];
          v17 = v13[30];
          v18 = v13[31];
          v19 = v13[38];
          v20 = [v13 healthKitManager];
          [*(v1 + 40) platform];
          v22 = v21 = v1;
          v23 = [*(v21 + 40) appDeletionManager];
          v24 = [(SMInitiatorCacheManager *)v41 initWithInitiatorContact:v39 loadedFromDisk:1 safetyCacheStore:v40 sessionStore:v38 defaultsManager:v37 locationManager:v36 queue:v35 batteryManager:v34 xpcActivityManager:v33 messagingService:v14 networkOfInterestManager:v15 authorizationManager:v16 wristStateManager:v17 vehicleLocationProvider:v18 activeSessionDetailsZone:v19 healthKitManager:v20 platform:v22 appDeletionManager:v23];

          v1 = v21;
          [(SMInitiatorCacheManager *)v24 setDelegate:*(v21 + 40)];
          v25 = [*(v21 + 40) cacheManagerArray];
          [v25 addObject:v24];

          v5 = v42 + 1;
        }

        while (v32 != v42 + 1);
        v32 = [obj countByEnumeratingWithState:&v43 objects:v47 count:16];
      }

      while (v32);
    }

    [*(v1 + 40) setSessionsLoadedFromDisk:1];
    [*(v1 + 40) deleteAllStoredDefaults];
    result = *(v1 + 56);
    if (result)
    {
      v4 = *(result + 16);
      return v4();
    }
  }

  return result;
}

- (BOOL)_hasSetupObjectsDependentOnPersistenceStack
{
  sessionManager = self->_sessionManager;
  if (sessionManager)
  {
    sessionManager = self->_sessionMonitor;
    if (sessionManager)
    {
      LOBYTE(sessionManager) = self->_sessionManagerBootstrapped;
    }
  }

  return sessionManager & 1;
}

- (id)invocationError
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = NSStringFromSelector(a2);
  v7 = [v3 stringWithFormat:@"%@, %@, failed invoking pending invocation - store did not become available", v5, v6];

  v8 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v17 = v7;
    _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
  }

  v9 = MEMORY[0x277CCA9B8];
  v10 = *MEMORY[0x277D4ACD0];
  v14 = *MEMORY[0x277CCA450];
  v15 = v7;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  v12 = [v9 errorWithDomain:v10 code:5 userInfo:v11];

  return v12;
}

- (void)deleteAllStoredDefaults
{
  v27 = *MEMORY[0x277D85DE8];
  defaultsManager = [(SMInitiatorService *)self defaultsManager];
  v5 = *MEMORY[0x277D4AD90];
  v6 = [defaultsManager copyKeyListContainingString:*MEMORY[0x277D4AD90]];

  if (v6 && [v6 count])
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v16 + 1) + 8 * i);
          [(SMInitiatorService *)self checkAndDeleteKey:v12 forIdentifier:@"com.apple.routined.cacheMaintenance.periodic", v16];
          [(SMInitiatorService *)self checkAndDeleteKey:v12 forIdentifier:@"com.apple.routined.scheduleSend.cancelRetry"];
        }

        v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v9);
    }

LABEL_14:

    goto LABEL_15;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      v15 = NSStringFromSelector(a2);
      *buf = 138412802;
      v22 = v14;
      v23 = 2112;
      v24 = v15;
      v25 = 2112;
      v26 = v5;
      _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "#SafetyCache,Initiator,%@,%@,nil stored defaults for %@, early return", buf, 0x20u);
    }

    goto LABEL_14;
  }

LABEL_15:
}

- (void)checkAndDeleteKey:(id)key forIdentifier:(id)identifier
{
  v41 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  identifierCopy = identifier;
  if ([keyCopy containsString:identifierCopy])
  {
    v9 = [keyCopy rangeOfString:identifierCopy];
    v11 = v10;
    if ([keyCopy length] <= (v9 + v10))
    {
      defaultsManager = [(SMInitiatorService *)self defaultsManager];
      [defaultsManager setObject:0 forKey:keyCopy];
    }

    else
    {
      aSelector = a2;
      v29 = identifierCopy;
      v12 = [keyCopy substringFromIndex:v9 + v11 + 1];
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      selfCopy = self;
      cacheManagerArray = [(SMInitiatorService *)self cacheManagerArray];
      v14 = [cacheManagerArray countByEnumeratingWithState:&v30 objects:v40 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v31;
LABEL_5:
        v17 = 0;
        while (1)
        {
          if (*v31 != v16)
          {
            objc_enumerationMutation(cacheManagerArray);
          }

          initiatorContact = [*(*(&v30 + 1) + 8 * v17) initiatorContact];
          sessionUUID = [initiatorContact sessionUUID];
          uUIDString = [sessionUUID UUIDString];
          v21 = [uUIDString isEqualToString:v12];

          if (v21)
          {
            break;
          }

          if (v15 == ++v17)
          {
            v15 = [cacheManagerArray countByEnumeratingWithState:&v30 objects:v40 count:16];
            if (v15)
            {
              goto LABEL_5;
            }

            goto LABEL_11;
          }
        }
      }

      else
      {
LABEL_11:

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v22 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
          {
            v23 = objc_opt_class();
            v24 = NSStringFromClass(v23);
            v25 = NSStringFromSelector(aSelector);
            *buf = 138412802;
            v35 = v24;
            v36 = 2112;
            v37 = v25;
            v38 = 2112;
            v39 = keyCopy;
            _os_log_impl(&dword_2304B3000, v22, OS_LOG_TYPE_INFO, "#SafetyCache,Initiator,%@,%@,deleted default for %@", buf, 0x20u);
          }
        }

        cacheManagerArray = [(SMInitiatorService *)selfCopy defaultsManager];
        [cacheManagerArray setObject:0 forKey:keyCopy];
      }

      identifierCopy = v29;
    }
  }
}

- (void)addObserverForSessionManager:(id)manager
{
  managerCopy = manager;
  if (managerCopy)
  {
    queue = [(RTNotifier *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __51__SMInitiatorService_addObserverForSessionManager___block_invoke;
    block[3] = &unk_2788C5020;
    block[4] = self;
    v9 = managerCopy;
    v10 = a2;
    dispatch_async(queue, block);
  }

  else
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: observer", buf, 2u);
    }
  }
}

void __51__SMInitiatorService_addObserverForSessionManager___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _hasSetupObjectsDependentOnPersistenceStack];
  v3 = *(a1 + 32);
  if (v2)
  {
    v9 = [v3 sessionManager];
    [v9 addObserver:*(a1 + 40)];
  }

  else
  {
    v4 = [v3 dispatcher];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __51__SMInitiatorService_addObserverForSessionManager___block_invoke_2;
    v10[3] = &unk_2788C4A70;
    v5 = *(a1 + 40);
    v10[4] = *(a1 + 32);
    v11 = v5;
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = NSStringFromSelector(*(a1 + 48));
    [v4 enqueueBlock:v10 description:{@"%@-%@", v7, v8}];
  }
}

void __51__SMInitiatorService_addObserverForSessionManager___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) sessionManager];
  [v2 addObserver:*(a1 + 40)];
}

- (void)removeObserverForSessionManager:(id)manager
{
  managerCopy = manager;
  if (managerCopy)
  {
    queue = [(RTNotifier *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __54__SMInitiatorService_removeObserverForSessionManager___block_invoke;
    block[3] = &unk_2788C5020;
    block[4] = self;
    v9 = managerCopy;
    v10 = a2;
    dispatch_async(queue, block);
  }

  else
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: observer", buf, 2u);
    }
  }
}

void __54__SMInitiatorService_removeObserverForSessionManager___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _hasSetupObjectsDependentOnPersistenceStack];
  v3 = *(a1 + 32);
  if (v2)
  {
    v9 = [v3 sessionManager];
    [v9 removeObserver:*(a1 + 40)];
  }

  else
  {
    v4 = [v3 dispatcher];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __54__SMInitiatorService_removeObserverForSessionManager___block_invoke_2;
    v10[3] = &unk_2788C4A70;
    v5 = *(a1 + 40);
    v10[4] = *(a1 + 32);
    v11 = v5;
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = NSStringFromSelector(*(a1 + 48));
    [v4 enqueueBlock:v10 description:{@"%@-%@", v7, v8}];
  }
}

void __54__SMInitiatorService_removeObserverForSessionManager___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) sessionManager];
  [v2 removeObserver:*(a1 + 40)];
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  if (observerCopy)
  {
    queue = [(RTNotifier *)self queue];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __34__SMInitiatorService_addObserver___block_invoke;
    v7[3] = &unk_2788C4A70;
    v7[4] = self;
    v8 = observerCopy;
    dispatch_async(queue, v7);
  }

  else
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: observer", buf, 2u);
    }
  }
}

void __34__SMInitiatorService_addObserver___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) observers];
  [v2 addObject:*(a1 + 40)];
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  if (observerCopy)
  {
    queue = [(RTNotifier *)self queue];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __37__SMInitiatorService_removeObserver___block_invoke;
    v7[3] = &unk_2788C4A70;
    v7[4] = self;
    v8 = observerCopy;
    dispatch_async(queue, v7);
  }

  else
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: observer", buf, 2u);
    }
  }
}

void __37__SMInitiatorService_removeObserver___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) observers];
  [v2 removeObject:*(a1 + 40)];
}

- (void)notifyObserversSafetyCacheDidUpdateForSessionID:(id)d phoneCache:(id)cache watchCache:(id)watchCache cacheExpiryDate:(id)date cacheReleaseDate:(id)releaseDate
{
  v40 = *MEMORY[0x277D85DE8];
  dCopy = d;
  cacheCopy = cache;
  watchCacheCopy = watchCache;
  dateCopy = date;
  releaseDateCopy = releaseDate;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v17 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      uUIDString = [dCopy UUIDString];
      v21 = NSStringFromSelector(a2);
      *buf = 138412802;
      v35 = v19;
      v36 = 2112;
      v37 = uUIDString;
      v38 = 2112;
      v39 = v21;
      _os_log_impl(&dword_2304B3000, v17, OS_LOG_TYPE_INFO, "#SafetyCache,Initiator,%@,sessionID:%@,%@,sending safety cache update to observers", buf, 0x20u);
    }
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  observers = [(SMInitiatorService *)self observers];
  v23 = [observers countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v30;
    do
    {
      v26 = 0;
      do
      {
        if (*v30 != v25)
        {
          objc_enumerationMutation(observers);
        }

        v27 = *(*(&v29 + 1) + 8 * v26);
        if (objc_opt_respondsToSelector())
        {
          [v27 onInitiatorSafetyCacheChangeForSessionID:dCopy phoneCache:cacheCopy watchCache:watchCacheCopy cacheExpiryDate:dateCopy cacheReleaseDate:releaseDateCopy];
        }

        ++v26;
      }

      while (v24 != v26);
      v24 = [observers countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v24);
  }
}

- (void)performPurgeOfType:(int64_t)type referenceDate:(id)date completion:(id)completion
{
  dateCopy = date;
  completionCopy = completion;
  queue = [(RTNotifier *)self queue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __66__SMInitiatorService_performPurgeOfType_referenceDate_completion___block_invoke;
  v13[3] = &unk_2788C4C20;
  v13[4] = self;
  v14 = dateCopy;
  v15 = completionCopy;
  typeCopy = type;
  v11 = completionCopy;
  v12 = dateCopy;
  dispatch_async(queue, v13);
}

uint64_t __66__SMInitiatorService_performPurgeOfType_referenceDate_completion___block_invoke(uint64_t a1)
{
  if (*(a1 + 56))
  {
    return (*(*(a1 + 48) + 16))();
  }

  else
  {
    return [*(a1 + 32) _purgePredating:*(a1 + 40) completion:*(a1 + 48)];
  }
}

- (void)_purgePredating:(id)predating completion:(id)completion
{
  predatingCopy = predating;
  completionCopy = completion;
  v9 = dispatch_group_create();
  v10 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:2];
  dispatch_group_enter(v9);
  sessionStore = [(SMInitiatorService *)self sessionStore];
  v57[0] = MEMORY[0x277D85DD0];
  v57[1] = 3221225472;
  v57[2] = __49__SMInitiatorService__purgePredating_completion___block_invoke;
  v57[3] = &unk_2788CBDB8;
  v57[4] = self;
  v61 = a2;
  v12 = predatingCopy;
  v58 = v12;
  v13 = v10;
  v59 = v13;
  v14 = v9;
  v60 = v14;
  [sessionStore deleteSessionsPredating:v12 handler:v57];

  dispatch_group_enter(v14);
  sessionStore2 = [(SMInitiatorService *)self sessionStore];
  v52[0] = MEMORY[0x277D85DD0];
  v52[1] = 3221225472;
  v52[2] = __49__SMInitiatorService__purgePredating_completion___block_invoke_159;
  v52[3] = &unk_2788CBDB8;
  v52[4] = self;
  v56 = a2;
  v16 = v12;
  v53 = v16;
  v17 = v13;
  v54 = v17;
  v18 = v14;
  v55 = v18;
  [sessionStore2 deleteSessionMonitorStatesPredating:v16 handler:v52];

  dispatch_group_enter(v18);
  sessionStore3 = [(SMInitiatorService *)self sessionStore];
  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = __49__SMInitiatorService__purgePredating_completion___block_invoke_161;
  v47[3] = &unk_2788CBDB8;
  v47[4] = self;
  v51 = a2;
  v20 = v16;
  v48 = v20;
  v21 = v17;
  v49 = v21;
  v22 = v18;
  v50 = v22;
  [sessionStore3 deleteTriggerDestinationStatesPredating:v20 handler:v47];

  dispatch_group_enter(v22);
  sessionStore4 = [(SMInitiatorService *)self sessionStore];
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __49__SMInitiatorService__purgePredating_completion___block_invoke_163;
  v42[3] = &unk_2788CBDB8;
  v42[4] = self;
  v46 = a2;
  v24 = v20;
  v43 = v24;
  v25 = v21;
  v44 = v25;
  v26 = v22;
  v45 = v26;
  [sessionStore4 deleteSMLocationMOPredating:v24 handler:v42];

  dispatch_group_enter(v26);
  sessionStore5 = [(SMInitiatorService *)self sessionStore];
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __49__SMInitiatorService__purgePredating_completion___block_invoke_165;
  v37[3] = &unk_2788CBDB8;
  v41 = a2;
  v37[4] = self;
  v38 = v24;
  v28 = v25;
  v39 = v28;
  v40 = v26;
  v29 = v26;
  v30 = v24;
  [sessionStore5 deleteSMWorkoutEventMOPredating:v30 handler:v37];

  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__SMInitiatorService__purgePredating_completion___block_invoke_167;
  block[3] = &unk_2788C4938;
  v35 = v28;
  v36 = completionCopy;
  v32 = completionCopy;
  v33 = v28;
  dispatch_group_notify(v29, queue, block);
}

void __49__SMInitiatorService__purgePredating_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__SMInitiatorService__purgePredating_completion___block_invoke_2;
  block[3] = &unk_2788C50E8;
  v11 = *(a1 + 64);
  v7 = *(a1 + 40);
  v8 = v3;
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  v5 = v3;
  dispatch_async(v4, block);
}

void __49__SMInitiatorService__purgePredating_completion___block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = NSStringFromSelector(*(a1 + 64));
      v4 = *(a1 + 32);
      v5 = *(a1 + 40);
      v6 = 138412802;
      v7 = v3;
      v8 = 2112;
      v9 = v4;
      v10 = 2112;
      v11 = v5;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%@, deleted sessions, predating, %@, error, %@", &v6, 0x20u);
    }
  }

  if (*(a1 + 40))
  {
    [*(a1 + 48) addObject:?];
  }

  dispatch_group_leave(*(a1 + 56));
}

void __49__SMInitiatorService__purgePredating_completion___block_invoke_159(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__SMInitiatorService__purgePredating_completion___block_invoke_2_160;
  block[3] = &unk_2788C50E8;
  v11 = *(a1 + 64);
  v7 = *(a1 + 40);
  v8 = v3;
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  v5 = v3;
  dispatch_async(v4, block);
}

void __49__SMInitiatorService__purgePredating_completion___block_invoke_2_160(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = NSStringFromSelector(*(a1 + 64));
      v4 = *(a1 + 32);
      v5 = *(a1 + 40);
      v6 = 138412802;
      v7 = v3;
      v8 = 2112;
      v9 = v4;
      v10 = 2112;
      v11 = v5;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%@, deleted session monitor states, predating, %@, error, %@", &v6, 0x20u);
    }
  }

  if (*(a1 + 40))
  {
    [*(a1 + 48) addObject:?];
  }

  dispatch_group_leave(*(a1 + 56));
}

void __49__SMInitiatorService__purgePredating_completion___block_invoke_161(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__SMInitiatorService__purgePredating_completion___block_invoke_2_162;
  block[3] = &unk_2788C50E8;
  v11 = *(a1 + 64);
  v7 = *(a1 + 40);
  v8 = v3;
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  v5 = v3;
  dispatch_async(v4, block);
}

void __49__SMInitiatorService__purgePredating_completion___block_invoke_2_162(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = NSStringFromSelector(*(a1 + 64));
      v4 = *(a1 + 32);
      v5 = *(a1 + 40);
      v6 = 138412802;
      v7 = v3;
      v8 = 2112;
      v9 = v4;
      v10 = 2112;
      v11 = v5;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%@, deleted triggerDestinations, predating, %@, error, %@", &v6, 0x20u);
    }
  }

  if (*(a1 + 40))
  {
    [*(a1 + 48) addObject:?];
  }

  dispatch_group_leave(*(a1 + 56));
}

void __49__SMInitiatorService__purgePredating_completion___block_invoke_163(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__SMInitiatorService__purgePredating_completion___block_invoke_2_164;
  block[3] = &unk_2788C50E8;
  v11 = *(a1 + 64);
  v7 = *(a1 + 40);
  v8 = v3;
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  v5 = v3;
  dispatch_async(v4, block);
}

void __49__SMInitiatorService__purgePredating_completion___block_invoke_2_164(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = NSStringFromSelector(*(a1 + 64));
      v4 = *(a1 + 32);
      v5 = *(a1 + 40);
      v6 = 138412802;
      v7 = v3;
      v8 = 2112;
      v9 = v4;
      v10 = 2112;
      v11 = v5;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%@, deleted SMLocationMOs, predating, %@, error, %@", &v6, 0x20u);
    }
  }

  if (*(a1 + 40))
  {
    [*(a1 + 48) addObject:?];
  }

  dispatch_group_leave(*(a1 + 56));
}

void __49__SMInitiatorService__purgePredating_completion___block_invoke_165(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__SMInitiatorService__purgePredating_completion___block_invoke_2_166;
  block[3] = &unk_2788C50E8;
  v11 = *(a1 + 64);
  v7 = *(a1 + 40);
  v8 = v3;
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  v5 = v3;
  dispatch_async(v4, block);
}

void __49__SMInitiatorService__purgePredating_completion___block_invoke_2_166(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = NSStringFromSelector(*(a1 + 64));
      v4 = *(a1 + 32);
      v5 = *(a1 + 40);
      v6 = 138412802;
      v7 = v3;
      v8 = 2112;
      v9 = v4;
      v10 = 2112;
      v11 = v5;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%@, deleted SMWorkoutEventMOs, predating, %@, error, %@", &v6, 0x20u);
    }
  }

  if (*(a1 + 40))
  {
    [*(a1 + 48) addObject:?];
  }

  dispatch_group_leave(*(a1 + 56));
}

uint64_t __49__SMInitiatorService__purgePredating_completion___block_invoke_167(uint64_t a1)
{
  if ([*(a1 + 32) count])
  {
    v2 = _RTSafeArray();
    _RTMultiErrorCreate();
    objc_claimAutoreleasedReturnValue();
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))(v3);
  }

  return MEMORY[0x2821F96F8]();
}

- (id)getCacheManagerForSessionID:(id)d
{
  v18 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_cacheManagerArray;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        sessionUUID = [v9 sessionUUID];
        v11 = [dCopy isEqual:sessionUUID];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (id)_createInitiatorCacheManagerForSessionID:(id)d conversation:(id)conversation
{
  v42 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v6 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = NSStringFromSelector(a2);
    *buf = 138412802;
    v37 = dCopy;
    v38 = 2112;
    v39 = v8;
    v40 = 2112;
    v41 = v9;
    _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Initiator,sessionID:%@,%@,%@", buf, 0x20u);
  }

  v10 = [(SMInitiatorService *)self getCacheManagerForSessionID:dCopy];
  if (v10)
  {
    v11 = v10;
    cacheManagerArray = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(cacheManagerArray, OS_LOG_TYPE_FAULT))
    {
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      v15 = NSStringFromSelector(a2);
      *buf = 138412546;
      v37 = v14;
      v38 = 2112;
      v39 = v15;
      _os_log_fault_impl(&dword_2304B3000, cacheManagerArray, OS_LOG_TYPE_FAULT, "#SafetyCache,Initiator,%@,%@,cache manager already exists", buf, 0x16u);
    }
  }

  else
  {
    v31 = [SMInitiatorCacheManager alloc];
    safetyCacheStore = [(SMInitiatorService *)self safetyCacheStore];
    sessionStore = [(SMInitiatorService *)self sessionStore];
    defaultsManager = [(SMInitiatorService *)self defaultsManager];
    locationManager = [(SMInitiatorService *)self locationManager];
    queue = [(RTNotifier *)self queue];
    batteryManager = [(SMInitiatorService *)self batteryManager];
    xpcActivityManager = [(SMInitiatorService *)self xpcActivityManager];
    messagingService = [(SMInitiatorService *)self messagingService];
    networkOfInterestManager = [(SMInitiatorService *)self networkOfInterestManager];
    authorizationManager = [(SMInitiatorService *)self authorizationManager];
    wristStateManager = [(SMInitiatorService *)self wristStateManager];
    vehicleLocationProvider = [(SMInitiatorService *)self vehicleLocationProvider];
    activeSessionDetailsZone = [(SMInitiatorService *)self activeSessionDetailsZone];
    healthKitManager = [(SMInitiatorService *)self healthKitManager];
    platform = [(SMInitiatorService *)self platform];
    appDeletionManager = [(SMInitiatorService *)self appDeletionManager];
    v11 = [(SMInitiatorCacheManager *)v31 initWithSafetyCacheStore:safetyCacheStore sessionStore:sessionStore defaultsManager:defaultsManager locationManager:locationManager queue:queue batteryManager:batteryManager xpcActivityManager:xpcActivityManager messagingService:messagingService networkOfInterestManager:networkOfInterestManager authorizationManager:authorizationManager sessionID:dCopy wristStateManager:wristStateManager vehicleLocationProvider:vehicleLocationProvider activeSessionDetailsZone:activeSessionDetailsZone healthKitManager:healthKitManager platform:platform appDeletionManager:appDeletionManager];

    [(SMInitiatorCacheManager *)v11 setDelegate:self];
    cacheManagerArray = [(SMInitiatorService *)self cacheManagerArray];
    [cacheManagerArray addObject:v11];
  }

  v20 = v11;

  return v20;
}

- (void)_startInitializationProcess
{
  v26 = *MEMORY[0x277D85DE8];
  pendingInitializationRequest = [(SMInitiatorService *)self pendingInitializationRequest];
  sessionID = [pendingInitializationRequest sessionID];
  v5 = [(SMInitiatorService *)self getCacheManagerForSessionID:sessionID];

  if (v5)
  {
    pendingInitializationRequest2 = [(SMInitiatorService *)self pendingInitializationRequest];
    v7 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v23 = "[SMInitiatorService _startInitializationProcess]";
      v24 = 2112;
      v25 = pendingInitializationRequest2;
      _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_DEFAULT, "%s, starting initialization sequence for request, %@", buf, 0x16u);
    }

    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __49__SMInitiatorService__startInitializationProcess__block_invoke;
    v18[3] = &unk_2788CBE30;
    v18[4] = self;
    v19 = pendingInitializationRequest2;
    v8 = pendingInitializationRequest2;
    [v5 initializeSessionWithCompletion:v18];
  }

  else
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      pendingInitializationRequest3 = [(SMInitiatorService *)self pendingInitializationRequest];
      sessionID2 = [pendingInitializationRequest3 sessionID];
      *buf = 136315394;
      v23 = "[SMInitiatorService _startInitializationProcess]";
      v24 = 2112;
      v25 = sessionID2;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "%s, failed to find InitiatorCacheManager for sessionID %@", buf, 0x16u);
    }

    v10 = objc_alloc(MEMORY[0x277CCA9B8]);
    v11 = *MEMORY[0x277D4ACD0];
    v20 = *MEMORY[0x277CCA450];
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Couldn't find InitiatorCacheManager"];
    v21 = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    v8 = [v10 initWithDomain:v11 code:0 userInfo:v13];

    pendingInitializationRequest4 = [(SMInitiatorService *)self pendingInitializationRequest];
    handler = [pendingInitializationRequest4 handler];
    (handler)[2](handler, 0, 0, 0, v8);

    [(SMInitiatorService *)self setPendingInitializationRequest:0];
  }
}

void __49__SMInitiatorService__startInitializationProcess__block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5, uint64_t a6, uint64_t a7, void *a8)
{
  v83 = *MEMORY[0x277D85DE8];
  v14 = a2;
  v15 = a3;
  v58 = a4;
  v59 = a5;
  v16 = a8;
  v17 = [*(a1 + 32) pendingInitializationRequest];
  if (v17 && (v18 = v17, [*(a1 + 32) pendingInitializationRequest], v19 = v14, v20 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v20, "sessionID"), v21 = v15, v22 = objc_claimAutoreleasedReturnValue(), objc_msgSend(*(a1 + 40), "sessionID"), v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend(v22, "isEqual:", v23), v23, v22, v15 = v21, v20, v14 = v19, v18, (v24 & 1) != 0))
  {
    v25 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = [*(a1 + 32) pendingInitializationRequest];
      if (v59)
      {
        v27 = @"YES";
      }

      else
      {
        v27 = @"NO";
      }

      v28 = initiatorEligiblityStatusToString();
      v29 = [MEMORY[0x277D4AAC0] convertEligibilityTypeToString:a7];
      *buf = 136317186;
      v66 = "[SMInitiatorService _startInitializationProcess]_block_invoke";
      v67 = 2112;
      v68 = v26;
      v69 = 2112;
      v70 = v19;
      v71 = 2112;
      v72 = v21;
      v73 = 2112;
      v74 = v58;
      v75 = 2112;
      v76 = v27;
      v77 = 2112;
      v78 = v28;
      v79 = 2112;
      v80 = v29;
      v81 = 2112;
      v82 = v16;
      _os_log_impl(&dword_2304B3000, v25, OS_LOG_TYPE_DEFAULT, "%s, Session cacheManager initialization result for request, %@, allowReadToken, %@, safetyCacheKey, %@, scheduledSendGUID, %@, invitationTokens, %@, initiatorEligibility, %@, receiverEligibility, %@, error, %@", buf, 0x5Cu);

      v15 = v21;
    }

    if (a6 == 1 && a7 == 1)
    {
      v30 = *(a1 + 32);
      v14 = v19;
      if (!v59 || v16)
      {
        v47 = [v30 pendingInitializationRequest];
        v48 = [v47 sessionID];

        v49 = MEMORY[0x277D4AC20];
        v50 = [*(a1 + 32) pendingInitializationRequest];
        v51 = [v50 conversation];
        v52 = [v51 identifier];
        [v49 fileRadarWithError:v16 conversationIdentifier:v52 completionHandler:&__block_literal_global_185];

        v53 = [*(a1 + 32) pendingInitializationRequest];
        v54 = [v53 handler];
        (v54)[2](v54, 0, 1, 1, v16);

        [*(a1 + 32) setPendingInitializationRequest:0];
        v55 = [*(a1 + 32) sessionManager];
        [v55 cancelInitializationForSessionID:v48 handler:&__block_literal_global_187];
      }

      else
      {
        v31 = [v30 sessionManager];
        v32 = [*(a1 + 32) pendingInitializationRequest];
        v33 = [v32 sessionID];
        v60[0] = MEMORY[0x277D85DD0];
        v60[1] = 3221225472;
        v60[2] = __49__SMInitiatorService__startInitializationProcess__block_invoke_5;
        v60[3] = &unk_2788CBE08;
        v34 = *(a1 + 40);
        v60[4] = *(a1 + 32);
        v61 = v34;
        v62 = 0;
        v64 = vdupq_n_s64(1uLL);
        v63 = v59;
        [v31 sessionInitializedWithSessionID:v33 allowReadToken:v19 safetyCacheKey:v15 scheduledSendMessageGUID:v58 completionHandler:v60];
      }
    }

    else
    {
      v37 = [*(a1 + 32) pendingInitializationRequest];
      v38 = [v37 sessionID];

      v39 = [*(a1 + 32) convertEligibilityToSMErrorWithInitiator:a6 receiver:a7];
      if (drand48() < 0.5)
      {
        v40 = MEMORY[0x277D4AC20];
        v41 = [*(a1 + 32) pendingInitializationRequest];
        [v41 conversation];
        v42 = v56 = v38;
        v43 = [v42 identifier];
        [v40 fileRadarWithError:v39 conversationIdentifier:v43 completionHandler:&__block_literal_global_181];

        v38 = v56;
      }

      v44 = [*(a1 + 32) pendingInitializationRequest];
      v45 = [v44 handler];
      (v45)[2](v45, 0, a6, a7, v39);

      [*(a1 + 32) setPendingInitializationRequest:0];
      v46 = [*(a1 + 32) sessionManager];
      [v46 cancelInitializationForSessionID:v38 handler:&__block_literal_global_183];

      v14 = v19;
      v15 = v21;
    }
  }

  else
  {
    v35 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      v36 = *(a1 + 40);
      *buf = 136315650;
      v66 = "[SMInitiatorService _startInitializationProcess]_block_invoke";
      v67 = 2112;
      v68 = v36;
      v69 = 2112;
      v70 = v16;
      _os_log_impl(&dword_2304B3000, v35, OS_LOG_TYPE_DEFAULT, "%s, request was canceled prior to finishing initialization process for request, %@, error, %@", buf, 0x20u);
    }
  }
}

void __49__SMInitiatorService__startInitializationProcess__block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__SMInitiatorService__startInitializationProcess__block_invoke_6;
  block[3] = &unk_2788CBDE0;
  v5 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v8 = v5;
  v9 = *(a1 + 48);
  v10 = v3;
  v12 = *(a1 + 64);
  v11 = *(a1 + 56);
  v6 = v3;
  dispatch_async(v4, block);
}

void __49__SMInitiatorService__startInitializationProcess__block_invoke_6(uint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) pendingInitializationRequest];
  if (v2 && (v3 = v2, [*(a1 + 32) pendingInitializationRequest], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "sessionID"), v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(*(a1 + 40), "sessionID"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v5, "isEqual:", v6), v6, v5, v4, v3, (v7 & 1) != 0))
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [*(a1 + 32) pendingInitializationRequest];
      v10 = *(a1 + 56);
      v26 = 136315650;
      v27 = "[SMInitiatorService _startInitializationProcess]_block_invoke";
      v28 = 2112;
      v29 = v9;
      v30 = 2112;
      v31 = v10;
      _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_DEFAULT, "%s, sessionManager transition to ready for request, %@, error, %@", &v26, 0x20u);
    }

    v11 = *(a1 + 56);
    v12 = [*(a1 + 32) pendingInitializationRequest];
    v13 = v12;
    if (!v11)
    {
      v25 = [v12 handler];
      v25[2](v25, *(a1 + 64), *(a1 + 72), *(a1 + 80), 0);

      [*(a1 + 32) setPendingInitializationRequest:0];
      return;
    }

    v14 = [v12 sessionID];

    if (drand48() < 0.5)
    {
      v15 = MEMORY[0x277D4AC20];
      v16 = *(a1 + 56);
      v17 = [*(a1 + 32) pendingInitializationRequest];
      v18 = [v17 conversation];
      v19 = [v18 identifier];
      [v15 fileRadarWithError:v16 conversationIdentifier:v19 completionHandler:&__block_literal_global_190];
    }

    v20 = [*(a1 + 32) pendingInitializationRequest];
    v21 = [v20 handler];
    v21[2](v21, 0, *(a1 + 72), *(a1 + 80), *(a1 + 56));

    [*(a1 + 32) setPendingInitializationRequest:0];
    v22 = [*(a1 + 32) sessionManager];
    [v22 cancelInitializationForSessionID:v14 handler:&__block_literal_global_193];
  }

  else
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v23 = *(a1 + 40);
      v24 = *(a1 + 48);
      v26 = 136315650;
      v27 = "[SMInitiatorService _startInitializationProcess]_block_invoke_6";
      v28 = 2112;
      v29 = v23;
      v30 = 2112;
      v31 = v24;
      _os_log_impl(&dword_2304B3000, v14, OS_LOG_TYPE_DEFAULT, "%s, request was canceled prior to finishing transition to ready for request, %@, error, %@", &v26, 0x20u);
    }
  }
}

- (void)onSessionStartMessageSendResult:(id)result
{
  v22 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    queue = [(RTNotifier *)self queue];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __54__SMInitiatorService_onSessionStartMessageSendResult___block_invoke;
    v14[3] = &unk_2788C4A70;
    v14[4] = self;
    v15 = resultCopy;
    dispatch_async(queue, v14);
  }

  else
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = NSStringFromSelector(a2);
      name = [resultCopy name];
      *buf = 138412802;
      v17 = v10;
      v18 = 2112;
      v19 = v11;
      v20 = 2112;
      v21 = name;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "#SafetyCache,Initiator,%@,%@,unrecognized notification,%@", buf, 0x20u);
    }

    v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      name2 = [resultCopy name];
      *buf = 138412802;
      v17 = name2;
      v18 = 2080;
      v19 = "[SMInitiatorService onSessionStartMessageSendResult:]";
      v20 = 1024;
      LODWORD(v21) = 1030;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "unknown notification name, %@ (in %s:%d)", buf, 0x1Cu);
    }
  }
}

- (void)_onSessionStartMessageSendResult:(id)result
{
  resultCopy = result;
  if ([(SMInitiatorService *)self _hasSetupObjectsDependentOnPersistenceStack])
  {
    sessionManager = [(SMInitiatorService *)self sessionManager];
    message = [resultCopy message];
    messageGUID = [resultCopy messageGUID];
    success = [resultCopy success];
    error = [resultCopy error];
    [sessionManager onSessionStartMessageSendResultWithMessage:message messageGUID:messageGUID success:success error:error];
  }

  else
  {
    dispatcher = [(SMInitiatorService *)self dispatcher];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __55__SMInitiatorService__onSessionStartMessageSendResult___block_invoke;
    v15[3] = &unk_2788C4A70;
    v15[4] = self;
    v16 = resultCopy;
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v14 = NSStringFromSelector(a2);
    [dispatcher enqueueBlock:v15 description:{@"%@-%@", v13, v14}];
  }
}

- (void)onDeletedMessage:(id)message
{
  v18 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    queue = [(RTNotifier *)self queue];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __39__SMInitiatorService_onDeletedMessage___block_invoke;
    v10[3] = &unk_2788C4A70;
    v10[4] = self;
    v11 = messageCopy;
    dispatch_async(queue, v10);
  }

  else
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      name = [messageCopy name];
      *buf = 136315394;
      v13 = "[SMInitiatorService onDeletedMessage:]";
      v14 = 2112;
      v15 = name;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "SMInitiatorService,%s,unrecognized notification,%@", buf, 0x16u);
    }

    v7 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      name2 = [messageCopy name];
      *buf = 138412802;
      v13 = name2;
      v14 = 2080;
      v15 = "[SMInitiatorService onDeletedMessage:]";
      v16 = 1024;
      v17 = 1059;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "unknown notification name, %@ (in %s:%d)", buf, 0x1Cu);
    }
  }
}

- (void)_onDeletedMessage:(id)message
{
  v19 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  if ([(SMInitiatorService *)self _hasSetupObjectsDependentOnPersistenceStack])
  {
    if (messageCopy && ([messageCopy message], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
    {
      sessionManager = [(SMInitiatorService *)self sessionManager];
      message = [messageCopy message];
      [sessionManager onDeletedMessage:message handler:&__block_literal_global_197_0];
    }

    else
    {
      sessionManager = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (!os_log_type_enabled(sessionManager, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_8;
      }

      message = [messageCopy name];
      *buf = 136315394;
      v16 = "[SMInitiatorService _onDeletedMessage:]";
      v17 = 2112;
      v18 = message;
      _os_log_error_impl(&dword_2304B3000, sessionManager, OS_LOG_TYPE_ERROR, "SMInitiatorService,%s,invalid notification,%@", buf, 0x16u);
    }

LABEL_8:
    goto LABEL_9;
  }

  dispatcher = [(SMInitiatorService *)self dispatcher];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __40__SMInitiatorService__onDeletedMessage___block_invoke;
  v13[3] = &unk_2788C4A70;
  v13[4] = self;
  v14 = messageCopy;
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  v12 = NSStringFromSelector(a2);
  [dispatcher enqueueBlock:v13 description:{@"%@-%@", v11, v12}];

LABEL_9:
}

void __40__SMInitiatorService__onDeletedMessage___block_invoke_195(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v4 = 136315394;
      v5 = "[SMInitiatorService _onDeletedMessage:]_block_invoke";
      v6 = 2112;
      v7 = v2;
      _os_log_debug_impl(&dword_2304B3000, v3, OS_LOG_TYPE_DEBUG, "SMInitiatorService,%s,sessionManager,error,%@", &v4, 0x16u);
    }
  }
}

- (void)onDeletedConversation:(id)conversation
{
  v18 = *MEMORY[0x277D85DE8];
  conversationCopy = conversation;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    queue = [(RTNotifier *)self queue];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __44__SMInitiatorService_onDeletedConversation___block_invoke;
    v10[3] = &unk_2788C4A70;
    v10[4] = self;
    v11 = conversationCopy;
    dispatch_async(queue, v10);
  }

  else
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      name = [conversationCopy name];
      *buf = 136315394;
      v13 = "[SMInitiatorService onDeletedConversation:]";
      v14 = 2112;
      v15 = name;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "SMInitiatorService,%s,unrecognized notification,%@", buf, 0x16u);
    }

    v7 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      name2 = [conversationCopy name];
      *buf = 138412802;
      v13 = name2;
      v14 = 2080;
      v15 = "[SMInitiatorService onDeletedConversation:]";
      v16 = 1024;
      v17 = 1093;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "unknown notification name, %@ (in %s:%d)", buf, 0x1Cu);
    }
  }
}

- (void)_onDeletedConversation:(id)conversation
{
  v19 = *MEMORY[0x277D85DE8];
  conversationCopy = conversation;
  if ([(SMInitiatorService *)self _hasSetupObjectsDependentOnPersistenceStack])
  {
    if (conversationCopy && ([conversationCopy conversation], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
    {
      sessionManager = [(SMInitiatorService *)self sessionManager];
      conversation = [conversationCopy conversation];
      [sessionManager onDeletedConversation:conversation handler:&__block_literal_global_200_0];
    }

    else
    {
      sessionManager = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (!os_log_type_enabled(sessionManager, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_8;
      }

      conversation = [conversationCopy name];
      *buf = 136315394;
      v16 = "[SMInitiatorService _onDeletedConversation:]";
      v17 = 2112;
      v18 = conversation;
      _os_log_error_impl(&dword_2304B3000, sessionManager, OS_LOG_TYPE_ERROR, "SMInitiatorService,%s,invalid notification,%@", buf, 0x16u);
    }

LABEL_8:
    goto LABEL_9;
  }

  dispatcher = [(SMInitiatorService *)self dispatcher];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __45__SMInitiatorService__onDeletedConversation___block_invoke;
  v13[3] = &unk_2788C4A70;
  v13[4] = self;
  v14 = conversationCopy;
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  v12 = NSStringFromSelector(a2);
  [dispatcher enqueueBlock:v13 description:{@"%@-%@", v11, v12}];

LABEL_9:
}

void __45__SMInitiatorService__onDeletedConversation___block_invoke_198(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v4 = 136315394;
      v5 = "[SMInitiatorService _onDeletedConversation:]_block_invoke";
      v6 = 2112;
      v7 = v2;
      _os_log_debug_impl(&dword_2304B3000, v3, OS_LOG_TYPE_DEBUG, "SMInitiatorService,%s,sessionManager,error,%@", &v4, 0x16u);
    }
  }
}

- (void)onMessageReceived:(id)received
{
  v22 = *MEMORY[0x277D85DE8];
  receivedCopy = received;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    queue = [(RTNotifier *)self queue];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __40__SMInitiatorService_onMessageReceived___block_invoke;
    v14[3] = &unk_2788C4A70;
    v14[4] = self;
    v15 = receivedCopy;
    dispatch_async(queue, v14);
  }

  else
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = NSStringFromSelector(a2);
      name = [receivedCopy name];
      *buf = 138412802;
      v17 = v10;
      v18 = 2112;
      v19 = v11;
      v20 = 2112;
      v21 = name;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "#SafetyCache,Initiator,%@,%@,unrecognized notification,%@", buf, 0x20u);
    }

    v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      name2 = [receivedCopy name];
      *buf = 138412802;
      v17 = name2;
      v18 = 2080;
      v19 = "[SMInitiatorService onMessageReceived:]";
      v20 = 1024;
      LODWORD(v21) = 1128;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "unknown notification name, %@ (in %s:%d)", buf, 0x1Cu);
    }
  }
}

- (void)_onMessageReceived:(id)received
{
  v28 = *MEMORY[0x277D85DE8];
  receivedCopy = received;
  if ([(SMInitiatorService *)self _hasSetupObjectsDependentOnPersistenceStack])
  {
    message = [receivedCopy message];
    messageType = [objc_opt_class() messageType];

    switch(messageType)
    {
      case 1:
      case 2:
      case 6:
      case 10:
      case 13:
      case 15:
      case 20:
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v8 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
          if (!os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
          {
            goto LABEL_12;
          }

          v9 = objc_opt_class();
          v10 = NSStringFromClass(v9);
          v11 = NSStringFromSelector(a2);
          message2 = [receivedCopy message];
          *buf = 138412802;
          v23 = v10;
          v24 = 2112;
          v25 = v11;
          v26 = 1024;
          messageType2 = [objc_opt_class() messageType];
          _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "#SafetyCache,Initiator,%@,%@,ignore message type,%d", buf, 0x1Cu);
          goto LABEL_6;
        }

        break;
      case 3:
        message3 = [receivedCopy message];
        from = [receivedCopy from];
        -[SMInitiatorService receivedSessionTypeKeyRelease:fromHandle:fromMe:](self, "receivedSessionTypeKeyRelease:fromHandle:fromMe:", message3, from, [receivedCopy fromMe]);
        goto LABEL_19;
      case 7:
        message3 = [receivedCopy message];
        from = [receivedCopy from];
        -[SMInitiatorService receivedSessionSyncMessage:fromHandle:fromMe:](self, "receivedSessionSyncMessage:fromHandle:fromMe:", message3, from, [receivedCopy fromMe]);
        goto LABEL_19;
      case 8:
      case 9:
        break;
      case 11:
        message3 = [receivedCopy message];
        [(SMInitiatorService *)self receivedEmergencyContactsNotifiedSyncMessage:message3];
        goto LABEL_20;
      case 12:
        message3 = [receivedCopy message];
        from = [receivedCopy from];
        -[SMInitiatorService receivedSessionStartInfoRequestMessage:fromHandle:fromMe:](self, "receivedSessionStartInfoRequestMessage:fromHandle:fromMe:", message3, from, [receivedCopy fromMe]);
        goto LABEL_19;
      case 14:
        message3 = [receivedCopy message];
        from = [receivedCopy from];
        -[SMInitiatorService receivedKeyReleaseInfoRequestMessage:fromHandle:fromMe:](self, "receivedKeyReleaseInfoRequestMessage:fromHandle:fromMe:", message3, from, [receivedCopy fromMe]);
        goto LABEL_19;
      case 16:
        message3 = [receivedCopy message];
        from = [receivedCopy from];
        -[SMInitiatorService receivedSessionStateUpdateReqMessage:fromHandle:fromMe:](self, "receivedSessionStateUpdateReqMessage:fromHandle:fromMe:", message3, from, [receivedCopy fromMe]);
        goto LABEL_19;
      case 17:
        message3 = [receivedCopy message];
        from = [receivedCopy from];
        -[SMInitiatorService receivedSessionEndRemoteControlMessage:fromHandle:fromMe:](self, "receivedSessionEndRemoteControlMessage:fromHandle:fromMe:", message3, from, [receivedCopy fromMe]);
        goto LABEL_19;
      case 18:
        message3 = [receivedCopy message];
        from = [receivedCopy from];
        -[SMInitiatorService receivedSessionConfigurationUpdateRemoteControlMessage:fromHandle:fromMe:](self, "receivedSessionConfigurationUpdateRemoteControlMessage:fromHandle:fromMe:", message3, from, [receivedCopy fromMe]);
        goto LABEL_19;
      case 19:
        message3 = [receivedCopy message];
        from = [receivedCopy from];
        -[SMInitiatorService receivedResponseToTriggerPromptRemoteControlMessage:fromHandle:fromMe:](self, "receivedResponseToTriggerPromptRemoteControlMessage:fromHandle:fromMe:", message3, from, [receivedCopy fromMe]);
LABEL_19:

LABEL_20:
        break;
      default:
        v8 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          v19 = objc_opt_class();
          v10 = NSStringFromClass(v19);
          v11 = NSStringFromSelector(a2);
          message2 = [receivedCopy message];
          *buf = 138412802;
          v23 = v10;
          v24 = 2112;
          v25 = v11;
          v26 = 1024;
          messageType2 = [objc_opt_class() messageType];
          _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "#SafetyCache,Initiator,%@,%@,unrecognized message type,%d", buf, 0x1Cu);
LABEL_6:
        }

LABEL_12:

        break;
    }
  }

  else
  {
    dispatcher = [(SMInitiatorService *)self dispatcher];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __41__SMInitiatorService__onMessageReceived___block_invoke;
    v20[3] = &unk_2788C4A70;
    v20[4] = self;
    v21 = receivedCopy;
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    v16 = NSStringFromSelector(a2);
    [dispatcher enqueueBlock:v20 description:{@"%@-%@", v15, v16}];
  }
}

- (void)receivedResponseToTriggerPromptRemoteControlMessage:(id)message fromHandle:(id)handle fromMe:(BOOL)me
{
  v35 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  handleCopy = handle;
  v11 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  sessionManager = v11;
  if (me)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      sessionID = [messageCopy sessionID];
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      v16 = NSStringFromSelector(a2);
      sourceDeviceID = [messageCopy sourceDeviceID];
      v21 = 138413827;
      v22 = sessionID;
      v23 = 2112;
      v24 = v15;
      v25 = 2112;
      v26 = v16;
      v27 = 2112;
      v28 = handleCopy;
      v29 = 1024;
      v30 = 1;
      v31 = 2112;
      v32 = sourceDeviceID;
      v33 = 2117;
      v34 = messageCopy;
      _os_log_impl(&dword_2304B3000, sessionManager, OS_LOG_TYPE_DEFAULT, "#RemoteControl,Initiator,sessionID:%@,%@,%@,from,%@,fromMe,%d, sourceDeviceId, %@ ,message,%{sensitive}@", &v21, 0x44u);
    }

    sessionManager = [(SMInitiatorService *)self sessionManager];
    [sessionManager processResponseToTriggerPromptRemoteControlMessage:messageCopy];
  }

  else if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    v20 = NSStringFromSelector(a2);
    v21 = 138412546;
    v22 = v19;
    v23 = 2112;
    v24 = v20;
    _os_log_error_impl(&dword_2304B3000, sessionManager, OS_LOG_TYPE_ERROR, "#RemoteControl,Initiator,%@,%@,message not from my own device", &v21, 0x16u);
  }
}

- (void)receivedSessionEndRemoteControlMessage:(id)message fromHandle:(id)handle fromMe:(BOOL)me
{
  v35 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  handleCopy = handle;
  v11 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  sessionManager = v11;
  if (me)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      sessionID = [messageCopy sessionID];
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      v16 = NSStringFromSelector(a2);
      sourceDeviceID = [messageCopy sourceDeviceID];
      v21 = 138413827;
      v22 = sessionID;
      v23 = 2112;
      v24 = v15;
      v25 = 2112;
      v26 = v16;
      v27 = 2112;
      v28 = handleCopy;
      v29 = 1024;
      v30 = 1;
      v31 = 2112;
      v32 = sourceDeviceID;
      v33 = 2117;
      v34 = messageCopy;
      _os_log_impl(&dword_2304B3000, sessionManager, OS_LOG_TYPE_DEFAULT, "#RemoteControl,Initiator,sessionID:%@,%@,%@,from,%@,fromMe,%d, sourceDeviceId, %@ ,message,%{sensitive}@", &v21, 0x44u);
    }

    sessionManager = [(SMInitiatorService *)self sessionManager];
    [sessionManager processSessionEndRemoteControlMessage:messageCopy];
  }

  else if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    v20 = NSStringFromSelector(a2);
    v21 = 138412546;
    v22 = v19;
    v23 = 2112;
    v24 = v20;
    _os_log_error_impl(&dword_2304B3000, sessionManager, OS_LOG_TYPE_ERROR, "#RemoteControl,Initiator,%@,%@,message not from my own device", &v21, 0x16u);
  }
}

- (void)receivedSessionConfigurationUpdateRemoteControlMessage:(id)message fromHandle:(id)handle fromMe:(BOOL)me
{
  v35 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  handleCopy = handle;
  v11 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  sessionManager = v11;
  if (me)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      sessionID = [messageCopy sessionID];
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      v16 = NSStringFromSelector(a2);
      sourceDeviceID = [messageCopy sourceDeviceID];
      v21 = 138413827;
      v22 = sessionID;
      v23 = 2112;
      v24 = v15;
      v25 = 2112;
      v26 = v16;
      v27 = 2112;
      v28 = handleCopy;
      v29 = 1024;
      v30 = 1;
      v31 = 2112;
      v32 = sourceDeviceID;
      v33 = 2117;
      v34 = messageCopy;
      _os_log_impl(&dword_2304B3000, sessionManager, OS_LOG_TYPE_DEFAULT, "#RemoteControl,Initiator,sessionID:%@,%@,%@,from,%@,fromMe,%d, sourceDeviceId, %@ ,message,%{sensitive}@", &v21, 0x44u);
    }

    sessionManager = [(SMInitiatorService *)self sessionManager];
    [sessionManager processModifySessionConfigurationRemoteControlMessage:messageCopy];
  }

  else if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    v20 = NSStringFromSelector(a2);
    v21 = 138412546;
    v22 = v19;
    v23 = 2112;
    v24 = v20;
    _os_log_error_impl(&dword_2304B3000, sessionManager, OS_LOG_TYPE_ERROR, "#SafetyCache,Initiator,%@,%@,message not from my own device", &v21, 0x16u);
  }
}

- (void)receivedSessionSyncMessage:(id)message fromHandle:(id)handle fromMe:(BOOL)me
{
  v32 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  handleCopy = handle;
  v11 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  sessionManager = v11;
  if (me)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      sessionID = [messageCopy sessionID];
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      v16 = NSStringFromSelector(a2);
      v20 = 138413571;
      v21 = sessionID;
      v22 = 2112;
      v23 = v15;
      v24 = 2112;
      v25 = v16;
      v26 = 2112;
      v27 = handleCopy;
      v28 = 1024;
      v29 = 1;
      v30 = 2117;
      v31 = messageCopy;
      _os_log_impl(&dword_2304B3000, sessionManager, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Initiator,sessionID:%@,%@,%@,from,%@,fromMe,%d,message,%{sensitive}@", &v20, 0x3Au);
    }

    sessionManager = [(SMInitiatorService *)self sessionManager];
    [sessionManager processStateSyncMessage:messageCopy];
  }

  else if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    v19 = NSStringFromSelector(a2);
    v20 = 138412546;
    v21 = v18;
    v22 = 2112;
    v23 = v19;
    _os_log_error_impl(&dword_2304B3000, sessionManager, OS_LOG_TYPE_ERROR, "#SafetyCache,Initiator,%@,%@,message not from my own device", &v20, 0x16u);
  }
}

- (void)receivedSessionTypeKeyRelease:(id)release fromHandle:(id)handle fromMe:(BOOL)me
{
  v32 = *MEMORY[0x277D85DE8];
  releaseCopy = release;
  handleCopy = handle;
  v11 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  sessionManager = v11;
  if (me)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      sessionID = [releaseCopy sessionID];
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      v16 = NSStringFromSelector(a2);
      v20 = 138413571;
      v21 = sessionID;
      v22 = 2112;
      v23 = v15;
      v24 = 2112;
      v25 = v16;
      v26 = 2112;
      v27 = handleCopy;
      v28 = 1024;
      v29 = 1;
      v30 = 2117;
      v31 = releaseCopy;
      _os_log_impl(&dword_2304B3000, sessionManager, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Initiator,sessionID:%@,%@,%@,from,%@,fromMe,%d,message,%{sensitive}@", &v20, 0x3Au);
    }

    sessionManager = [(SMInitiatorService *)self sessionManager];
    [sessionManager processSessionTypeKeyRelease:releaseCopy];
  }

  else if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    v19 = NSStringFromSelector(a2);
    v20 = 138412546;
    v21 = v18;
    v22 = 2112;
    v23 = v19;
    _os_log_error_impl(&dword_2304B3000, sessionManager, OS_LOG_TYPE_ERROR, "#SafetyCache,Initiator,%@,%@,message not from my own device", &v20, 0x16u);
  }
}

- (void)receivedSessionStateUpdateReqMessage:(id)message fromHandle:(id)handle fromMe:(BOOL)me
{
  v37 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  handleCopy = handle;
  if (me)
  {
    messagingService = [(SMInitiatorService *)self messagingService];
    deviceIdentifier = [messagingService deviceIdentifier];
    deviceToRequest = [messageCopy deviceToRequest];
    v14 = [deviceIdentifier isEqual:deviceToRequest];

    if (v14)
    {
      v15 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        sessionID = [messageCopy sessionID];
        v17 = objc_opt_class();
        v18 = NSStringFromClass(v17);
        v19 = NSStringFromSelector(a2);
        v25 = 138413571;
        v26 = sessionID;
        v27 = 2112;
        v28 = v18;
        v29 = 2112;
        v30 = v19;
        v31 = 2112;
        v32 = handleCopy;
        v33 = 1024;
        v34 = 1;
        v35 = 2117;
        v36 = messageCopy;
        _os_log_impl(&dword_2304B3000, v15, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Initiator,sessionID:%@,%@,%@,from,%@,fromMe,%d,message,%{sensitive}@", &v25, 0x3Au);
      }

      sessionManager = [(SMInitiatorService *)self sessionManager];
      [sessionManager processStateSyncUpdateReqMessage:messageCopy];
      goto LABEL_7;
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      goto LABEL_8;
    }

    sessionManager = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(sessionManager, OS_LOG_TYPE_INFO))
    {
      v21 = objc_opt_class();
      v22 = NSStringFromClass(v21);
      v23 = NSStringFromSelector(a2);
      v25 = 138412803;
      v26 = v22;
      v27 = 2112;
      v28 = v23;
      v29 = 2117;
      v30 = messageCopy;
      _os_log_impl(&dword_2304B3000, sessionManager, OS_LOG_TYPE_INFO, "#SafetyCache,Initiator,%@,%@,received state sync req message for unmatched device identifier,%{sensitive}@", &v25, 0x20u);
LABEL_13:
    }
  }

  else
  {
    sessionManager = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(sessionManager, OS_LOG_TYPE_ERROR))
    {
      v24 = objc_opt_class();
      v22 = NSStringFromClass(v24);
      v23 = NSStringFromSelector(a2);
      v25 = 138412546;
      v26 = v22;
      v27 = 2112;
      v28 = v23;
      _os_log_error_impl(&dword_2304B3000, sessionManager, OS_LOG_TYPE_ERROR, "#SafetyCache,Initiator,%@,%@,message not from my own device", &v25, 0x16u);
      goto LABEL_13;
    }
  }

LABEL_7:

LABEL_8:
}

- (void)receivedEmergencyContactsNotifiedSyncMessage:(id)message
{
  v17 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v6 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = NSStringFromSelector(a2);
    v11 = 138412802;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2112;
    v16 = messageCopy;
    _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Initiator,%@,%@,%@", &v11, 0x20u);
  }

  sessionManager = [(SMInitiatorService *)self sessionManager];
  [sessionManager processEmergencyContactsNotifiedMessage:messageCopy];
}

- (void)receivedSessionStartInfoRequestMessage:(id)message fromHandle:(id)handle fromMe:(BOOL)me
{
  meCopy = me;
  v38 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  handleCopy = handle;
  if (meCopy)
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v14 = NSStringFromSelector(a2);
      v26 = 138412546;
      v27 = v13;
      v28 = 2112;
      v29 = v14;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "#SafetyCache,Initiator,%@,%@,message from my own device", &v26, 0x16u);
    }
  }

  else
  {
    sessionID = [messageCopy sessionID];
    v11 = [(SMInitiatorService *)self getCacheManagerForSessionID:sessionID];

    v16 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    v17 = v16;
    if (v11)
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        sessionID2 = [messageCopy sessionID];
        v19 = objc_opt_class();
        v20 = NSStringFromClass(v19);
        v21 = NSStringFromSelector(a2);
        v26 = 138413571;
        v27 = sessionID2;
        v28 = 2112;
        v29 = v20;
        v30 = 2112;
        v31 = v21;
        v32 = 2112;
        v33 = handleCopy;
        v34 = 1024;
        v35 = 0;
        v36 = 2117;
        v37 = messageCopy;
        _os_log_impl(&dword_2304B3000, v17, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Initiator,sessionID:%@,%@,%@,from,%@,fromMe,%d,message,%{sensitive}@", &v26, 0x3Au);
      }

      [v11 processSessionStartInfoRequest:messageCopy];
    }

    else
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sessionID3 = [messageCopy sessionID];
        v23 = objc_opt_class();
        v24 = NSStringFromClass(v23);
        v25 = NSStringFromSelector(a2);
        v26 = 138412802;
        v27 = sessionID3;
        v28 = 2112;
        v29 = v24;
        v30 = 2112;
        v31 = v25;
        _os_log_error_impl(&dword_2304B3000, v17, OS_LOG_TYPE_ERROR, "#SafetyCache,Initiator,sessionID:%@,%@,%@,cache manager for this session not found", &v26, 0x20u);
      }

      v11 = 0;
    }
  }
}

- (void)receivedKeyReleaseInfoRequestMessage:(id)message fromHandle:(id)handle fromMe:(BOOL)me
{
  meCopy = me;
  v39 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  handleCopy = handle;
  if (meCopy)
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v14 = NSStringFromSelector(a2);
      v27 = 138412546;
      v28 = v13;
      v29 = 2112;
      v30 = v14;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "#SafetyCache,Initiator,%@,%@,message from my own device", &v27, 0x16u);
    }
  }

  else
  {
    sessionID = [messageCopy sessionID];
    v11 = [(SMInitiatorService *)self getCacheManagerForSessionID:sessionID];

    v16 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    v17 = v16;
    if (v11)
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        sessionID2 = [messageCopy sessionID];
        uUIDString = [sessionID2 UUIDString];
        v20 = objc_opt_class();
        v21 = NSStringFromClass(v20);
        v22 = NSStringFromSelector(a2);
        v27 = 138413571;
        v28 = uUIDString;
        v29 = 2112;
        v30 = v21;
        v31 = 2112;
        v32 = v22;
        v33 = 2112;
        v34 = handleCopy;
        v35 = 1024;
        v36 = 0;
        v37 = 2117;
        v38 = messageCopy;
        _os_log_impl(&dword_2304B3000, v17, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Initiator,sessionID:%@,%@,%@,from,%@,fromMe,%d,message,%{sensitive}@", &v27, 0x3Au);
      }

      [v11 processKeyReleaseInfoRequest:messageCopy];
    }

    else
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sessionID3 = [messageCopy sessionID];
        v24 = objc_opt_class();
        v25 = NSStringFromClass(v24);
        v26 = NSStringFromSelector(a2);
        v27 = 138412802;
        v28 = sessionID3;
        v29 = 2112;
        v30 = v25;
        v31 = 2112;
        v32 = v26;
        _os_log_error_impl(&dword_2304B3000, v17, OS_LOG_TYPE_ERROR, "#SafetyCache,Initiator,sessionID:%@,%@,%@,cache manager for this session not found", &v27, 0x20u);
      }

      v11 = 0;
    }
  }
}

- (void)onSessionStoreNotification:(id)notification
{
  notificationCopy = notification;
  queue = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__SMInitiatorService_onSessionStoreNotification___block_invoke;
  v7[3] = &unk_2788C4A70;
  v7[4] = self;
  v8 = notificationCopy;
  v6 = notificationCopy;
  dispatch_async(queue, v7);
}

- (void)_onSessionStoreNotification:(id)notification
{
  v18 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  name = [notificationCopy name];
  v6 = +[(RTNotification *)RTStoreNotificationAvailabilityDidChange];
  v7 = [name isEqualToString:v6];

  if (v7)
  {
    availability = [notificationCopy availability];
    if ([(SMInitiatorService *)self sessionStoreAvailability]!= availability)
    {
      v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [RTStore availabilityToString:self->_sessionStoreAvailability];
        v11 = [RTStore availabilityToString:availability];
        v12 = 136315650;
        v13 = "[SMInitiatorService _onSessionStoreNotification:]";
        v14 = 2112;
        v15 = v10;
        v16 = 2112;
        v17 = v11;
        _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_DEFAULT, "%s, sessionStoreAvailability availability change from , %@, to, %@", &v12, 0x20u);
      }

      [(SMInitiatorService *)self setSessionStoreAvailability:availability];
      [(SMInitiatorService *)self _setupOncePersistenceStackAvailable];
    }
  }
}

- (void)onSafetyCacheStoreNotification:(id)notification
{
  notificationCopy = notification;
  queue = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__SMInitiatorService_onSafetyCacheStoreNotification___block_invoke;
  v7[3] = &unk_2788C4A70;
  v7[4] = self;
  v8 = notificationCopy;
  v6 = notificationCopy;
  dispatch_async(queue, v7);
}

- (void)_onSafetyCacheStoreNotification:(id)notification
{
  v18 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  name = [notificationCopy name];
  v6 = +[(RTNotification *)RTStoreNotificationAvailabilityDidChange];
  v7 = [name isEqualToString:v6];

  if (v7)
  {
    availability = [notificationCopy availability];
    if ([(SMInitiatorService *)self safetyCacheStoreAvailability]!= availability)
    {
      v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [RTStore availabilityToString:self->_safetyCacheStoreAvailability];
        v11 = [RTStore availabilityToString:availability];
        v12 = 136315650;
        v13 = "[SMInitiatorService _onSafetyCacheStoreNotification:]";
        v14 = 2112;
        v15 = v10;
        v16 = 2112;
        v17 = v11;
        _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_DEFAULT, "%s, safetyCacheStoreAvailability availability change from , %@, to, %@", &v12, 0x20u);
      }

      [(SMInitiatorService *)self setSafetyCacheStoreAvailability:availability];
      [(SMInitiatorService *)self _setupOncePersistenceStackAvailable];
    }
  }
}

- (void)onHealthKitManagerNotification:(id)notification
{
  notificationCopy = notification;
  queue = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__SMInitiatorService_onHealthKitManagerNotification___block_invoke;
  v7[3] = &unk_2788C4A70;
  v7[4] = self;
  v8 = notificationCopy;
  v6 = notificationCopy;
  dispatch_async(queue, v7);
}

- (void)_onHealthKitManagerNotification:(id)notification
{
  v15 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  name = [notificationCopy name];
  v6 = +[(RTNotification *)RTHealthKitManagerWorkoutSnapshotUpdateNotification];
  v7 = [name isEqualToString:v6];

  if (v7)
  {
    workoutSnapshot = [notificationCopy workoutSnapshot];
    v9 = workoutSnapshot;
    if (workoutSnapshot)
    {
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __54__SMInitiatorService__onHealthKitManagerNotification___block_invoke;
      v11[3] = &unk_2788CBE58;
      v11[4] = self;
      v12 = workoutSnapshot;
      [(SMInitiatorService *)self _fetchCurrentSessionStateWithCompletion:v11];
    }

    else
    {
      v10 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v14 = "[SMInitiatorService _onHealthKitManagerNotification:]";
        _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "%s, nil notification received", buf, 0xCu);
      }
    }
  }
}

void __54__SMInitiatorService__onHealthKitManagerNotification___block_invoke(uint64_t a1, void *a2, char a3, void *a4)
{
  v87 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a4;
  v9 = [*(a1 + 32) defaultsManager];
  v10 = [v9 objectForKey:@"RTDefaultsInitiatorServiceLastObservedWorkoutState"];
  v11 = [v10 intValue];

  v12 = [*(a1 + 32) defaultsManager];
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 40), "sessionState")}];
  [v12 setObject:v13 forKey:@"RTDefaultsInitiatorServiceLastObservedWorkoutState"];

  if (v8)
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315394;
      v82 = "[SMInitiatorService _onHealthKitManagerNotification:]_block_invoke";
      v83 = 2112;
      v84 = v8;
      _os_log_fault_impl(&dword_2304B3000, v14, OS_LOG_TYPE_FAULT, "%s, fetch error, %@", buf, 0x16u);
    }

LABEL_4:

    goto LABEL_5;
  }

  if ((a3 & 1) == 0)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      goto LABEL_5;
    }

    v14 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v82 = "[SMInitiatorService _onHealthKitManagerNotification:]_block_invoke";
      _os_log_impl(&dword_2304B3000, v14, OS_LOG_TYPE_INFO, "%s, ignore HK notification on non-active device", buf, 0xCu);
    }

    goto LABEL_4;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v44 = +[RTHealthKitManager workoutSessionStateToString:](RTHealthKitManager, "workoutSessionStateToString:", [*(a1 + 40) sessionState]);
      v45 = [MEMORY[0x277D4ABB0] convertSessionStateToString:{objc_msgSend(v7, "sessionState")}];
      *buf = 136315650;
      v82 = "[SMInitiatorService _onHealthKitManagerNotification:]_block_invoke";
      v83 = 2112;
      v84 = v44;
      v85 = 2112;
      v86 = v45;
      _os_log_debug_impl(&dword_2304B3000, v15, OS_LOG_TYPE_DEBUG, "%s, incoming HK notification %@, SMSessionState%@", buf, 0x20u);
    }
  }

  if ([*(a1 + 40) sessionState] != 3 || (objc_msgSend(v7, "configuration"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "sessionType") == 4, v16, !v17))
  {
    if ([*(a1 + 40) sessionState] == 2)
    {
      [*(*(a1 + 32) + 80) updateTipResponse:3];
      if (v11 == 4)
      {
        [*(a1 + 32) _onWorkoutResume];
        goto LABEL_5;
      }

      if ([v7 sessionState] != 2 && objc_msgSend(v7, "sessionState") != 14)
      {
        goto LABEL_68;
      }

      v30 = [*(a1 + 32) workoutSessionEndBufferTimerAlarm];
      v31 = [v30 state] == 2;

      if (!v31)
      {
        goto LABEL_68;
      }

      [*(a1 + 32) _tearDownWorkoutEndedBufferTimer];
      v66 = objc_alloc(MEMORY[0x277D4AB78]);
      v72 = [v7 configuration];
      v68 = [v72 conversation];
      v71 = [v7 configuration];
      v69 = [v71 sessionID];
      v70 = [v7 configuration];
      v67 = [v70 sessionStartDate];
      v32 = [v7 configuration];
      v65 = [v32 sessionSupportsHandoff];
      v33 = [v7 configuration];
      v34 = [v33 conversation];
      v35 = [*(a1 + 40) sessionIdentifier];
      v36 = [v66 initWorkoutBoundSessionConfigurationWithConversation:v68 sessionID:v69 sessionStartDate:v67 sessionSupportsHandoff:v65 sosReceivers:v34 sessionWorkoutIdentifier:v35 sessionWorkoutType:objc_msgSend(*(a1 + 40) sessionWorkoutMirrorType:{"activityType"), objc_msgSend(*(a1 + 40), "sessionType")}];

      v37 = *(a1 + 32);
      v74[0] = MEMORY[0x277D85DD0];
      v74[1] = 3221225472;
      v74[2] = __54__SMInitiatorService__onHealthKitManagerNotification___block_invoke_217;
      v74[3] = &unk_2788C4730;
      v75 = v36;
      v25 = v36;
      [v37 _modifySessionWithConfiguration:v25 handler:v74];

      goto LABEL_67;
    }

    if ([*(a1 + 40) sessionState] == 4)
    {
      [*(a1 + 32) _onWorkoutPause];
      v25 = [*(a1 + 32) sessionMetricManager];
      [v25 onWorkoutPaused];
LABEL_67:
    }

LABEL_68:
    if ([*(a1 + 40) sessionState] == 3)
    {
      v60 = [*(a1 + 32) tipResponseMetricManager];
      v73 = 0;
      [v60 submitMetricsWithError:&v73];
      v61 = v73;

      v62 = objc_alloc_init(SMCheckInRemindersTipResponseMetricManager);
      [*(a1 + 32) setTipResponseMetricManager:v62];
    }

    v63 = [*(a1 + 32) defaultsManager];
    v64 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 40), "sessionState")}];
    [v63 setObject:v64 forKey:@"RTDefaultsInitiatorServiceLastObservedWorkoutState"];

    goto LABEL_5;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v18 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v82 = "[SMInitiatorService _onHealthKitManagerNotification:]_block_invoke";
      _os_log_impl(&dword_2304B3000, v18, OS_LOG_TYPE_INFO, "%s, observed workout end", buf, 0xCu);
    }
  }

  if ([v7 sessionState] != 2 && objc_msgSend(v7, "sessionState") != 14)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v25 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v38 = [MEMORY[0x277D4ABB0] convertSessionStateToString:{objc_msgSend(v7, "sessionState")}];
        *buf = 136315394;
        v82 = "[SMInitiatorService _onHealthKitManagerNotification:]_block_invoke";
        v83 = 2112;
        v84 = v38;
        _os_log_impl(&dword_2304B3000, v25, OS_LOG_TYPE_INFO, "%s, not in monitoring state so not ending session, currentState: %@", buf, 0x16u);
      }

      goto LABEL_67;
    }

    goto LABEL_68;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v19 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v82 = "[SMInitiatorService _onHealthKitManagerNotification:]_block_invoke";
      _os_log_impl(&dword_2304B3000, v19, OS_LOG_TYPE_INFO, "%s, starting workout end timers", buf, 0xCu);
    }
  }

  v20 = [*(a1 + 40) sessionError];
  v21 = [v20 domain];
  v22 = 2.0;
  if ([v21 isEqualToString:*MEMORY[0x277CCBDB0]])
  {
    v23 = [*(a1 + 40) sessionError];
    if ([v23 code] == 6)
    {
      v22 = 60.0;
    }

    else
    {
      v22 = 2.0;
    }
  }

  v24 = [*(a1 + 32) defaultsManager];
  v25 = [v24 objectForKey:@"RTDefaultsInitiatorServiceWorkoutEndBufferTimerFireDate"];

  v26 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:v22];
  v27 = v26;
  if (!v25)
  {
LABEL_58:
    v48 = [*(a1 + 32) defaultsManager];
    [v48 setObject:MEMORY[0x277CBEC38] forKey:@"RTDefaultsInitiatorServiceWorkoutEndInProgress"];

    objc_initWeak(&location, *(a1 + 32));
    v49 = [RTXPCTimerAlarm alloc];
    v50 = [*(a1 + 32) queue];
    v77[0] = MEMORY[0x277D85DD0];
    v77[1] = 3221225472;
    v77[2] = __54__SMInitiatorService__onHealthKitManagerNotification___block_invoke_214;
    v77[3] = &unk_2788C57F8;
    objc_copyWeak(&v79, &location);
    v78 = v7;
    v51 = [(RTXPCTimerAlarm *)v49 initWithIdentifier:@"com.apple.routined.safetyMonitor.initiatorService.workoutEndGracePeriod" queue:v50 handler:v77];
    [*(a1 + 32) setWorkoutSessionEndBufferTimerAlarm:v51];

    v52 = [*(a1 + 32) workoutSessionEndBufferTimerAlarm];
    v76 = 0;
    [v52 fireWithDate:v27 error:&v76];
    v53 = v76;

    if (v53)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v54 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
        {
          *buf = 136446466;
          v82 = "[SMInitiatorService _onHealthKitManagerNotification:]_block_invoke";
          v83 = 2114;
          v84 = v53;
          _os_log_impl(&dword_2304B3000, v54, OS_LOG_TYPE_INFO, "%{public}s, workout end grace period timer not set due to error, %{public}@", buf, 0x16u);
        }

LABEL_65:
      }
    }

    else
    {
      v55 = [*(a1 + 32) defaultsManager];
      v56 = [*(a1 + 32) workoutSessionEndBufferTimerAlarm];
      v57 = [v56 endDate];
      [v55 setObject:v57 forKey:@"RTDefaultsInitiatorServiceWorkoutEndBufferTimerFireDate"];

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v54 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
        {
          v58 = [*(a1 + 32) workoutSessionEndBufferTimerAlarm];
          v59 = [v58 endDate];
          *buf = 136446466;
          v82 = "[SMInitiatorService _onHealthKitManagerNotification:]_block_invoke";
          v83 = 2112;
          v84 = v59;
          _os_log_impl(&dword_2304B3000, v54, OS_LOG_TYPE_INFO, "%{public}s, timer set with end date, %@", buf, 0x16u);
        }

        goto LABEL_65;
      }
    }

    objc_destroyWeak(&v79);
    objc_destroyWeak(&location);

    goto LABEL_67;
  }

  v28 = [v26 compare:v25];
  v29 = *(a1 + 32);
  if (v28 == 1)
  {
    [v29 _tearDownWorkoutEndedBufferTimer];
    goto LABEL_58;
  }

  v39 = [v29 workoutSessionEndBufferTimerAlarm];
  v40 = [v39 state] == 2;

  if (!v40)
  {
    [*(a1 + 32) _tearDownWorkoutEndedBufferTimer];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v46 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
      {
        *buf = 136446466;
        v82 = "[SMInitiatorService _onHealthKitManagerNotification:]_block_invoke";
        v83 = 2112;
        v84 = v25;
        _os_log_impl(&dword_2304B3000, v46, OS_LOG_TYPE_INFO, "%{public}s, resuming previous timer with longer fire date, %@", buf, 0x16u);
      }
    }

    v47 = v25;

    v27 = v47;
    goto LABEL_58;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v41 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
    {
      v42 = [*(a1 + 32) workoutSessionEndBufferTimerAlarm];
      v43 = [v42 endDate];
      *buf = 136446466;
      v82 = "[SMInitiatorService _onHealthKitManagerNotification:]_block_invoke";
      v83 = 2112;
      v84 = v43;
      _os_log_impl(&dword_2304B3000, v41, OS_LOG_TYPE_INFO, "%{public}s, new timer not set due to longer existing timer with fire date, %@", buf, 0x16u);
    }
  }

LABEL_5:
}

void __54__SMInitiatorService__onHealthKitManagerNotification___block_invoke_214(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446210;
      v12 = "[SMInitiatorService _onHealthKitManagerNotification:]_block_invoke";
      _os_log_debug_impl(&dword_2304B3000, v2, OS_LOG_TYPE_DEBUG, "%{public}s, workout session end buffer timer fired", buf, 0xCu);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained sessionMetricManager];
    [v5 onWorkoutEnded];

    if (([v4 isEmergencyCallOngoing] & 1) == 0)
    {
      v6 = [*(a1 + 32) configuration];
      v7 = [v6 sessionID];
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __54__SMInitiatorService__onHealthKitManagerNotification___block_invoke_215;
      v8[3] = &unk_2788C7E48;
      v9 = *(a1 + 32);
      v10 = v4;
      [v4 _endSessionForSessionID:v7 reason:8 handler:v8];
    }
  }
}

void __54__SMInitiatorService__onHealthKitManagerNotification___block_invoke_215(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) configuration];
    v6 = [v5 sessionID];
    v8 = 136446722;
    v9 = "[SMInitiatorService _onHealthKitManagerNotification:]_block_invoke";
    v10 = 2112;
    v11 = v6;
    v12 = 2114;
    v13 = v3;
    _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_DEFAULT, "%{public}s, session ended for sessionID, %@, error, %{public}@", &v8, 0x20u);
  }

  v7 = [*(a1 + 40) defaultsManager];
  [v7 setObject:MEMORY[0x277CBEC28] forKey:@"RTDefaultsInitiatorServiceWorkoutEndInProgress"];
}

void __54__SMInitiatorService__onHealthKitManagerNotification___block_invoke_217(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = 136315651;
    v7 = "[SMInitiatorService _onHealthKitManagerNotification:]_block_invoke";
    v8 = 2117;
    v9 = v5;
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_DEFAULT, "%s, chained workout modify session completed with configuration, %{sensitive}@, error, %@", &v6, 0x20u);
  }
}

- (void)_onWorkoutPause
{
  if ([(SMInitiatorService *)self _hasSetupObjectsDependentOnPersistenceStack])
  {
    sessionMonitor = [(SMInitiatorService *)self sessionMonitor];
    [sessionMonitor onWorkoutPause];
  }

  else
  {
    dispatcher = [(SMInitiatorService *)self dispatcher];
    v9[4] = self;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __37__SMInitiatorService__onWorkoutPause__block_invoke;
    v10[3] = &unk_2788C4EA0;
    v10[4] = self;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __37__SMInitiatorService__onWorkoutPause__block_invoke_2;
    v9[3] = &unk_2788C4EA0;
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = NSStringFromSelector(a2);
    [dispatcher enqueueBlock:v10 failureBlock:v9 description:{@"%@-%@", v6, v7}];
  }
}

void __37__SMInitiatorService__onWorkoutPause__block_invoke_2(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = [*(a1 + 32) invocationError];
    v4 = 136315394;
    v5 = "[SMInitiatorService _onWorkoutPause]_block_invoke_2";
    v6 = 2112;
    v7 = v3;
    _os_log_error_impl(&dword_2304B3000, v2, OS_LOG_TYPE_ERROR, "%s, workout pause signal ended with error, %@", &v4, 0x16u);
  }
}

- (void)_onWorkoutResume
{
  if ([(SMInitiatorService *)self _hasSetupObjectsDependentOnPersistenceStack])
  {
    sessionMonitor = [(SMInitiatorService *)self sessionMonitor];
    [sessionMonitor onWorkoutResume];
  }

  else
  {
    dispatcher = [(SMInitiatorService *)self dispatcher];
    v9[4] = self;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __38__SMInitiatorService__onWorkoutResume__block_invoke;
    v10[3] = &unk_2788C4EA0;
    v10[4] = self;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __38__SMInitiatorService__onWorkoutResume__block_invoke_2;
    v9[3] = &unk_2788C4EA0;
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = NSStringFromSelector(a2);
    [dispatcher enqueueBlock:v10 failureBlock:v9 description:{@"%@-%@", v6, v7}];
  }
}

void __38__SMInitiatorService__onWorkoutResume__block_invoke_2(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = [*(a1 + 32) invocationError];
    v4 = 136315394;
    v5 = "[SMInitiatorService _onWorkoutResume]_block_invoke_2";
    v6 = 2112;
    v7 = v3;
    _os_log_error_impl(&dword_2304B3000, v2, OS_LOG_TYPE_ERROR, "%s, workout resume signal ended with error, %@", &v4, 0x16u);
  }
}

- (void)fetchCurrentWorkoutSnapshotWithCompletion:(id)completion
{
  completionCopy = completion;
  queue = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__SMInitiatorService_fetchCurrentWorkoutSnapshotWithCompletion___block_invoke;
  v7[3] = &unk_2788C4938;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(queue, v7);
}

- (void)_fetchCurrentWorkoutSnapshotWithCompletion:(id)completion
{
  v12 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v11 = "[SMInitiatorService _fetchCurrentWorkoutSnapshotWithCompletion:]";
    _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  healthKitManager = self->_healthKitManager;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __65__SMInitiatorService__fetchCurrentWorkoutSnapshotWithCompletion___block_invoke;
  v8[3] = &unk_2788CBE80;
  v9 = completionCopy;
  v7 = completionCopy;
  [(RTHealthKitManager *)healthKitManager fetchCurrentWorkoutSnapshotWithHandler:v8];
}

void __65__SMInitiatorService__fetchCurrentWorkoutSnapshotWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [v5 sessionState];
    v8 = v7 < 6;
    v9 = 0x34u >> v7;
    v10 = objc_alloc(MEMORY[0x277D4AAA0]);
    v11 = [v5 sessionIdentifier];
    v12 = [v10 initWithSessionIdentifier:v11 activityType:objc_msgSend(v5 sessionType:"activityType") isWorkoutOngoing:objc_msgSend(v5 isFirstPartyWorkout:{"sessionType"), v8 & v9, objc_msgSend(v5, "isFirstPartyWorkout")}];
  }

  else
  {
    v12 = 0;
  }

  v13 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136315138;
    v15 = "[SMInitiatorService _fetchCurrentWorkoutSnapshotWithCompletion:]_block_invoke";
    _os_log_impl(&dword_2304B3000, v13, OS_LOG_TYPE_DEFAULT, "%s, calling handler", &v14, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)_tearDownWorkoutEndedBufferTimer
{
  v8 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v6 = 136446210;
      v7 = "[SMInitiatorService _tearDownWorkoutEndedBufferTimer]";
      _os_log_debug_impl(&dword_2304B3000, v3, OS_LOG_TYPE_DEBUG, "%{public}s, tearing down workout ended buffer timer", &v6, 0xCu);
    }
  }

  workoutSessionEndBufferTimerAlarm = [(SMInitiatorService *)self workoutSessionEndBufferTimerAlarm];
  [workoutSessionEndBufferTimerAlarm invalidate];

  [(SMInitiatorService *)self setWorkoutSessionEndBufferTimerAlarm:0];
  defaultsManager = [(SMInitiatorService *)self defaultsManager];
  [defaultsManager setObject:0 forKey:@"RTDefaultsInitiatorServiceWorkoutEndBufferTimerFireDate"];
}

- (void)onNearbyEffectivePairedDeviceChangedNotification:(id)notification
{
  notificationCopy = notification;
  queue = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __71__SMInitiatorService_onNearbyEffectivePairedDeviceChangedNotification___block_invoke;
  v7[3] = &unk_2788C4A70;
  v7[4] = self;
  v8 = notificationCopy;
  v6 = notificationCopy;
  dispatch_async(queue, v7);
}

- (void)_onNearbyEffectivePairedDeviceChangedNotification:(id)notification
{
  v22 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = NSStringFromSelector(a2);
      v16 = 138412802;
      v17 = v8;
      v18 = 2112;
      v19 = v9;
      v20 = 2112;
      v21 = notificationCopy;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "#SafetyCache,%@,%@,on paired device notification %@", &v16, 0x20u);
    }
  }

  name = [notificationCopy name];
  v11 = +[(RTNotification *)SMIDSMessengerNearbyEffectivePairedDeviceChangedNotification];
  v12 = [name isEqualToString:v11];

  if (v12)
  {
    v13 = notificationCopy;
    sessionManager = [(SMInitiatorService *)self sessionManager];
    device = [v13 device];

    [sessionManager processNearbyEffectivePairedDeviceChanged:device];
  }
}

- (void)onEmergencyCallStarted
{
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__SMInitiatorService_onEmergencyCallStarted__block_invoke;
  block[3] = &unk_2788C4EA0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_onEmergencyCallStarted
{
  v6 = *MEMORY[0x277D85DE8];
  [(SMInitiatorService *)self setIsEmergencyCallOngoing:1];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = 136446210;
      v5 = "[SMInitiatorService _onEmergencyCallStarted]";
      _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_INFO, "%{public}s, emergency call is being placed, tear down the workout end buffer timer", &v4, 0xCu);
    }
  }

  [(SMInitiatorService *)self _tearDownWorkoutEndedBufferTimer];
}

- (void)onEmergencyCallEnded
{
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__SMInitiatorService_onEmergencyCallEnded__block_invoke;
  block[3] = &unk_2788C4EA0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_onEmergencyCallEnded
{
  v5 = *MEMORY[0x277D85DE8];
  [(SMInitiatorService *)self setIsEmergencyCallOngoing:0];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = 136446210;
      v4 = "[SMInitiatorService _onEmergencyCallEnded]";
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%{public}s, emergency call ended", &v3, 0xCu);
    }
  }
}

- (void)initializeSessionWithConversation:(id)conversation completion:(id)completion
{
  v17 = *MEMORY[0x277D85DE8];
  conversationCopy = conversation;
  completionCopy = completion;
  v8 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v16 = "[SMInitiatorService initializeSessionWithConversation:completion:]";
    _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_DEFAULT, "%s, User requested to initialize the session", buf, 0xCu);
  }

  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__SMInitiatorService_initializeSessionWithConversation_completion___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v13 = conversationCopy;
  v14 = completionCopy;
  v10 = completionCopy;
  v11 = conversationCopy;
  dispatch_async(queue, block);
}

- (void)_initializeSessionWithConversation:(id)conversation handler:(id)handler
{
  v50 = *MEMORY[0x277D85DE8];
  conversationCopy = conversation;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v27 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v27, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler", buf, 2u);
    }

    goto LABEL_20;
  }

  if ([(SMInitiatorService *)self _hasSetupObjectsDependentOnPersistenceStack])
  {
    if (conversationCopy && (conversationHandlesValid() & 1) != 0)
    {
      pendingInitializationRequest = [(SMInitiatorService *)self pendingInitializationRequest];

      if (pendingInitializationRequest)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v10 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
          if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
          {
            pendingInitializationRequest2 = [(SMInitiatorService *)self pendingInitializationRequest];
            *buf = 136315394;
            v47 = "[SMInitiatorService _initializeSessionWithConversation:handler:]";
            v48 = 2112;
            v49 = pendingInitializationRequest2;
            _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_INFO, "%s, canceling previous initialization request %@", buf, 0x16u);
          }
        }

        v12 = objc_alloc(MEMORY[0x277CCA9B8]);
        v13 = *MEMORY[0x277D4ACD0];
        v42 = *MEMORY[0x277CCA450];
        v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"Canceled due to new request"];
        v43 = v14;
        v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
        v16 = [v12 initWithDomain:v13 code:22 userInfo:v15];

        pendingInitializationRequest3 = [(SMInitiatorService *)self pendingInitializationRequest];
        handler = [pendingInitializationRequest3 handler];
        (handler)[2](handler, 0, 0, 0, v16);

        [(SMInitiatorService *)self setPendingInitializationRequest:0];
      }

      v19 = [SMInitiatorSessionInitializationRequest alloc];
      uUID = [MEMORY[0x277CCAD78] UUID];
      v21 = [(SMInitiatorSessionInitializationRequest *)v19 initWithSessionID:uUID conversation:conversationCopy handler:handlerCopy];
      [(SMInitiatorService *)self setPendingInitializationRequest:v21];

      v22 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        pendingInitializationRequest4 = [(SMInitiatorService *)self pendingInitializationRequest];
        *buf = 136315394;
        v47 = "[SMInitiatorService _initializeSessionWithConversation:handler:]";
        v48 = 2112;
        v49 = pendingInitializationRequest4;
        _os_log_impl(&dword_2304B3000, v22, OS_LOG_TYPE_DEFAULT, "%s, request a transition to initializing for request, %@", buf, 0x16u);
      }

      pendingInitializationRequest5 = [(SMInitiatorService *)self pendingInitializationRequest];
      sessionManager = [(SMInitiatorService *)self sessionManager];
      sessionID = [pendingInitializationRequest5 sessionID];
      v37[0] = MEMORY[0x277D85DD0];
      v37[1] = 3221225472;
      v37[2] = __65__SMInitiatorService__initializeSessionWithConversation_handler___block_invoke_228;
      v37[3] = &unk_2788C7E48;
      v37[4] = self;
      v38 = pendingInitializationRequest5;
      v27 = pendingInitializationRequest5;
      [sessionManager initializeSessionWithSessionID:sessionID conversation:conversationCopy handler:v37];
    }

    else
    {
      v32 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v47 = "[SMInitiatorService _initializeSessionWithConversation:handler:]";
        v48 = 2112;
        v49 = conversationCopy;
        _os_log_error_impl(&dword_2304B3000, v32, OS_LOG_TYPE_ERROR, "%s, invalid conversation %@", buf, 0x16u);
      }

      v33 = objc_alloc(MEMORY[0x277CCA9B8]);
      v34 = *MEMORY[0x277D4ACD0];
      v44 = *MEMORY[0x277CCA450];
      v35 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid conversation"];
      v45 = v35;
      v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
      v27 = [v33 initWithDomain:v34 code:7 userInfo:v36];

      (*(handlerCopy + 2))(handlerCopy, 0, 0, 0, v27);
    }

LABEL_20:

    goto LABEL_21;
  }

  dispatcher = [(SMInitiatorService *)self dispatcher];
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __65__SMInitiatorService__initializeSessionWithConversation_handler___block_invoke;
  v39[3] = &unk_2788C4500;
  v39[4] = self;
  v40 = conversationCopy;
  v41 = handlerCopy;
  v29 = objc_opt_class();
  v30 = NSStringFromClass(v29);
  v31 = NSStringFromSelector(a2);
  [dispatcher enqueueBlock:v39 description:{@"%@-%@", v30, v31}];

LABEL_21:
}

void __65__SMInitiatorService__initializeSessionWithConversation_handler___block_invoke_228(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__SMInitiatorService__initializeSessionWithConversation_handler___block_invoke_2;
  block[3] = &unk_2788C76F8;
  v5 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v8 = v5;
  v9 = v3;
  v6 = v3;
  dispatch_async(v4, block);
}

void __65__SMInitiatorService__initializeSessionWithConversation_handler___block_invoke_2(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) pendingInitializationRequest];
  if (v2 && (v3 = v2, [*(a1 + 32) pendingInitializationRequest], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "sessionID"), v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(*(a1 + 40), "sessionID"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v5, "isEqual:", v6), v6, v5, v4, v3, (v7 & 1) != 0))
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [*(a1 + 32) pendingInitializationRequest];
      v10 = *(a1 + 48);
      v17 = 136315650;
      v18 = "[SMInitiatorService _initializeSessionWithConversation:handler:]_block_invoke";
      v19 = 2112;
      v20 = v9;
      v21 = 2112;
      v22 = v10;
      _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_DEFAULT, "%s, sessionManager finished attempting state change to initialization for request, %@, error, %@", &v17, 0x20u);
    }

    v11 = *(a1 + 32);
    if (*(a1 + 48))
    {
      v12 = [v11 pendingInitializationRequest];
      v13 = [v12 handler];
      v13[2](v13, 0, 0, 0, *(a1 + 48));

      [*(a1 + 32) setPendingInitializationRequest:0];
    }

    else
    {
      [v11 _startInitializationProcess];
    }
  }

  else
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(a1 + 40);
      v16 = *(a1 + 48);
      v17 = 136315650;
      v18 = "[SMInitiatorService _initializeSessionWithConversation:handler:]_block_invoke_2";
      v19 = 2112;
      v20 = v15;
      v21 = 2112;
      v22 = v16;
      _os_log_impl(&dword_2304B3000, v14, OS_LOG_TYPE_DEFAULT, "%s, request was canceled prior to finishing transition to initializing for request, %@, error, %@", &v17, 0x20u);
    }
  }
}

- (void)cancelInitializationWithCompletion:(id)completion
{
  v12 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v11 = "[SMInitiatorService cancelInitializationWithCompletion:]";
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "%s, User requested to cancel initialization", buf, 0xCu);
    }
  }

  queue = [(RTNotifier *)self queue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __57__SMInitiatorService_cancelInitializationWithCompletion___block_invoke;
  v8[3] = &unk_2788C4938;
  v8[4] = self;
  v9 = completionCopy;
  v7 = completionCopy;
  dispatch_async(queue, v8);
}

- (void)_cancelInitializationWithHandler:(id)handler
{
  v31 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if ([(SMInitiatorService *)self _hasSetupObjectsDependentOnPersistenceStack])
  {
    pendingInitializationRequest = [(SMInitiatorService *)self pendingInitializationRequest];

    if (pendingInitializationRequest)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v7 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          pendingInitializationRequest2 = [(SMInitiatorService *)self pendingInitializationRequest];
          *buf = 136315394;
          v28 = "[SMInitiatorService _cancelInitializationWithHandler:]";
          v29 = 2112;
          v30 = pendingInitializationRequest2;
          _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "%s, responding to previous initialization request %@", buf, 0x16u);
        }
      }

      v9 = objc_alloc(MEMORY[0x277CCA9B8]);
      v10 = *MEMORY[0x277D4ACD0];
      v25 = *MEMORY[0x277CCA450];
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Initialization canceled"];
      v26 = v11;
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
      v13 = [v9 initWithDomain:v10 code:42 userInfo:v12];

      pendingInitializationRequest3 = [(SMInitiatorService *)self pendingInitializationRequest];
      handler = [pendingInitializationRequest3 handler];
      (handler)[2](handler, 0, 0, 0, v13);

      [(SMInitiatorService *)self setPendingInitializationRequest:0];
    }

    sessionManager = [(SMInitiatorService *)self sessionManager];
    [sessionManager cancelInitializationWithCompletion:handlerCopy];
  }

  else
  {
    dispatcher = [(SMInitiatorService *)self dispatcher];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __55__SMInitiatorService__cancelInitializationWithHandler___block_invoke;
    v23[3] = &unk_2788C4938;
    v23[4] = self;
    v24 = handlerCopy;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __55__SMInitiatorService__cancelInitializationWithHandler___block_invoke_2;
    v21[3] = &unk_2788C4D38;
    v21[4] = self;
    v22 = v24;
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    v20 = NSStringFromSelector(a2);
    [dispatcher enqueueBlock:v23 failureBlock:v21 description:{@"%@-%@", v19, v20}];
  }
}

void __55__SMInitiatorService__cancelInitializationWithHandler___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) invocationError];
  (*(v1 + 16))(v1, v2);
}

- (void)cancelInitializationForSessionID:(id)d handler:(id)handler
{
  v19 = *MEMORY[0x277D85DE8];
  dCopy = d;
  handlerCopy = handler;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v16 = "[SMInitiatorService cancelInitializationForSessionID:handler:]";
      v17 = 2112;
      v18 = dCopy;
      _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "%s, User requested to cancel initialization with session ID %@", buf, 0x16u);
    }
  }

  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__SMInitiatorService_cancelInitializationForSessionID_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v13 = dCopy;
  v14 = handlerCopy;
  v10 = handlerCopy;
  v11 = dCopy;
  dispatch_async(queue, block);
}

- (void)_cancelInitializationForSessionID:(id)d handler:(id)handler
{
  v39 = *MEMORY[0x277D85DE8];
  dCopy = d;
  handlerCopy = handler;
  if ([(SMInitiatorService *)self _hasSetupObjectsDependentOnPersistenceStack])
  {
    pendingInitializationRequest = [(SMInitiatorService *)self pendingInitializationRequest];
    if (pendingInitializationRequest)
    {
      v10 = pendingInitializationRequest;
      pendingInitializationRequest2 = [(SMInitiatorService *)self pendingInitializationRequest];
      sessionID = [pendingInitializationRequest2 sessionID];
      v13 = [sessionID isEqual:dCopy];

      if (v13)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v14 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            pendingInitializationRequest3 = [(SMInitiatorService *)self pendingInitializationRequest];
            *buf = 136315394;
            v36 = "[SMInitiatorService _cancelInitializationForSessionID:handler:]";
            v37 = 2112;
            v38 = pendingInitializationRequest3;
            _os_log_impl(&dword_2304B3000, v14, OS_LOG_TYPE_INFO, "%s, responding to previous initialization request %@", buf, 0x16u);
          }
        }

        v16 = objc_alloc(MEMORY[0x277CCA9B8]);
        v17 = *MEMORY[0x277D4ACD0];
        v33 = *MEMORY[0x277CCA450];
        v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"Initialization canceled"];
        v34 = v18;
        v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
        v20 = [v16 initWithDomain:v17 code:2 userInfo:v19];

        pendingInitializationRequest4 = [(SMInitiatorService *)self pendingInitializationRequest];
        handler = [pendingInitializationRequest4 handler];
        (handler)[2](handler, 0, 0, 0, v20);

        [(SMInitiatorService *)self setPendingInitializationRequest:0];
      }
    }

    sessionManager = [(SMInitiatorService *)self sessionManager];
    [sessionManager cancelInitializationForSessionID:dCopy handler:handlerCopy];
  }

  else
  {
    dispatcher = [(SMInitiatorService *)self dispatcher];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __64__SMInitiatorService__cancelInitializationForSessionID_handler___block_invoke;
    v30[3] = &unk_2788C4500;
    v30[4] = self;
    v31 = dCopy;
    v32 = handlerCopy;
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __64__SMInitiatorService__cancelInitializationForSessionID_handler___block_invoke_2;
    v28[3] = &unk_2788C4D38;
    v28[4] = self;
    v29 = v32;
    v25 = objc_opt_class();
    v26 = NSStringFromClass(v25);
    v27 = NSStringFromSelector(a2);
    [dispatcher enqueueBlock:v30 failureBlock:v28 description:{@"%@-%@", v26, v27}];
  }
}

void __64__SMInitiatorService__cancelInitializationForSessionID_handler___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) invocationError];
  (*(v1 + 16))(v1, v2);
}

- (void)startSessionWithConfiguration:(id)configuration completion:(id)completion
{
  configurationCopy = configuration;
  completionCopy = completion;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__SMInitiatorService_startSessionWithConfiguration_completion___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = configurationCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = configurationCopy;
  dispatch_async(queue, block);
}

- (void)_startSessionWithConfiguration:(id)configuration handler:(id)handler
{
  configurationCopy = configuration;
  handlerCopy = handler;
  if ([(SMInitiatorService *)self _hasSetupObjectsDependentOnPersistenceStack])
  {
    sessionManager = [(SMInitiatorService *)self sessionManager];
    [sessionManager startSessionWithConfiguration:configurationCopy completion:handlerCopy];
  }

  else
  {
    dispatcher = [(SMInitiatorService *)self dispatcher];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __61__SMInitiatorService__startSessionWithConfiguration_handler___block_invoke;
    v16[3] = &unk_2788C4500;
    v16[4] = self;
    v17 = configurationCopy;
    v18 = handlerCopy;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __61__SMInitiatorService__startSessionWithConfiguration_handler___block_invoke_2;
    v14[3] = &unk_2788C4D38;
    v14[4] = self;
    v15 = v18;
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = NSStringFromSelector(a2);
    [dispatcher enqueueBlock:v16 failureBlock:v14 description:{@"%@-%@", v12, v13}];
  }
}

void __61__SMInitiatorService__startSessionWithConfiguration_handler___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) invocationError];
  (*(v1 + 16))(v1, v2);
}

- (void)modifySessionWithConfiguration:(id)configuration handler:(id)handler
{
  configurationCopy = configuration;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__SMInitiatorService_modifySessionWithConfiguration_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = configurationCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = configurationCopy;
  dispatch_async(queue, block);
}

- (void)_modifySessionWithConfiguration:(id)configuration handler:(id)handler
{
  configurationCopy = configuration;
  handlerCopy = handler;
  if ([(SMInitiatorService *)self _hasSetupObjectsDependentOnPersistenceStack])
  {
    sessionManager = [(SMInitiatorService *)self sessionManager];
    [sessionManager modifySessionWithConfiguration:configurationCopy handler:handlerCopy];
  }

  else
  {
    dispatcher = [(SMInitiatorService *)self dispatcher];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __62__SMInitiatorService__modifySessionWithConfiguration_handler___block_invoke;
    v16[3] = &unk_2788C4500;
    v16[4] = self;
    v17 = configurationCopy;
    v18 = handlerCopy;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __62__SMInitiatorService__modifySessionWithConfiguration_handler___block_invoke_2;
    v14[3] = &unk_2788C4D38;
    v14[4] = self;
    v15 = v18;
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = NSStringFromSelector(a2);
    [dispatcher enqueueBlock:v16 failureBlock:v14 description:{@"%@-%@", v12, v13}];
  }
}

void __62__SMInitiatorService__modifySessionWithConfiguration_handler___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) invocationError];
  (*(v1 + 16))(v1, v2);
}

- (void)handoffSessionForSessionID:(id)d handler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__SMInitiatorService_handoffSessionForSessionID_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = dCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = dCopy;
  dispatch_async(queue, block);
}

- (void)_handoffSessionForSessionID:(id)d handler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  if ([(SMInitiatorService *)self _hasSetupObjectsDependentOnPersistenceStack])
  {
    sessionManager = [(SMInitiatorService *)self sessionManager];
    [sessionManager handoffSessionForSessionID:dCopy handler:handlerCopy];
  }

  else
  {
    dispatcher = [(SMInitiatorService *)self dispatcher];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __58__SMInitiatorService__handoffSessionForSessionID_handler___block_invoke;
    v16[3] = &unk_2788C4500;
    v16[4] = self;
    v17 = dCopy;
    v18 = handlerCopy;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __58__SMInitiatorService__handoffSessionForSessionID_handler___block_invoke_2;
    v14[3] = &unk_2788C4D38;
    v14[4] = self;
    v15 = v18;
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = NSStringFromSelector(a2);
    [dispatcher enqueueBlock:v16 failureBlock:v14 description:{@"%@-%@", v12, v13}];
  }
}

void __58__SMInitiatorService__handoffSessionForSessionID_handler___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) invocationError];
  (*(v1 + 16))(v1, v2);
}

- (void)endSessionForSessionID:(id)d reason:(unint64_t)reason completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  queue = [(RTNotifier *)self queue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __63__SMInitiatorService_endSessionForSessionID_reason_completion___block_invoke;
  v13[3] = &unk_2788C4C20;
  v13[4] = self;
  v14 = dCopy;
  v15 = completionCopy;
  reasonCopy = reason;
  v11 = completionCopy;
  v12 = dCopy;
  dispatch_async(queue, v13);
}

- (void)_endSessionForSessionID:(id)d reason:(unint64_t)reason handler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  if ([(SMInitiatorService *)self _hasSetupObjectsDependentOnPersistenceStack])
  {
    sessionManager = [(SMInitiatorService *)self sessionManager];
    [sessionManager endSessionForSessionID:dCopy reason:reason completion:handlerCopy];
  }

  else
  {
    dispatcher = [(SMInitiatorService *)self dispatcher];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __61__SMInitiatorService__endSessionForSessionID_reason_handler___block_invoke;
    v18[3] = &unk_2788C4C20;
    v18[4] = self;
    v19 = dCopy;
    reasonCopy = reason;
    v20 = handlerCopy;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __61__SMInitiatorService__endSessionForSessionID_reason_handler___block_invoke_2;
    v16[3] = &unk_2788C4D38;
    v16[4] = self;
    v17 = v20;
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    v15 = NSStringFromSelector(a2);
    [dispatcher enqueueBlock:v18 failureBlock:v16 description:{@"%@-%@", v14, v15}];
  }
}

void __61__SMInitiatorService__endSessionForSessionID_reason_handler___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) invocationError];
  (*(v1 + 16))(v1, v2);
}

- (void)sendSafetyCacheForSessionID:(id)d handler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__SMInitiatorService_sendSafetyCacheForSessionID_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = dCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = dCopy;
  dispatch_async(queue, block);
}

- (void)_sendSafetyCacheForSessionID:(id)d handler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  if ([(SMInitiatorService *)self _hasSetupObjectsDependentOnPersistenceStack])
  {
    sessionManager = [(SMInitiatorService *)self sessionManager];
    [sessionManager sendSafetyCacheForSessionID:dCopy handler:handlerCopy];
  }

  else
  {
    dispatcher = [(SMInitiatorService *)self dispatcher];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __59__SMInitiatorService__sendSafetyCacheForSessionID_handler___block_invoke;
    v16[3] = &unk_2788C4500;
    v16[4] = self;
    v17 = dCopy;
    v18 = handlerCopy;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __59__SMInitiatorService__sendSafetyCacheForSessionID_handler___block_invoke_2;
    v14[3] = &unk_2788C4D38;
    v14[4] = self;
    v15 = v18;
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = NSStringFromSelector(a2);
    [dispatcher enqueueBlock:v16 failureBlock:v14 description:{@"%@-%@", v12, v13}];
  }
}

void __59__SMInitiatorService__sendSafetyCacheForSessionID_handler___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) invocationError];
  (*(v1 + 16))(v1, v2);
}

- (void)respondToTriggerPromptForSessionID:(id)d response:(int64_t)response handler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __74__SMInitiatorService_respondToTriggerPromptForSessionID_response_handler___block_invoke;
  v13[3] = &unk_2788C4C20;
  v13[4] = self;
  v14 = dCopy;
  v15 = handlerCopy;
  responseCopy = response;
  v11 = handlerCopy;
  v12 = dCopy;
  dispatch_async(queue, v13);
}

- (void)_respondToTriggerPromptForSessionID:(id)d response:(int64_t)response handler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  if ([(SMInitiatorService *)self _hasSetupObjectsDependentOnPersistenceStack])
  {
    sessionManager = [(SMInitiatorService *)self sessionManager];
    [sessionManager respondToTriggerPromptForSessionID:dCopy response:response handler:handlerCopy];
  }

  else
  {
    dispatcher = [(SMInitiatorService *)self dispatcher];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __75__SMInitiatorService__respondToTriggerPromptForSessionID_response_handler___block_invoke;
    v18[3] = &unk_2788C4C20;
    v18[4] = self;
    v19 = dCopy;
    responseCopy = response;
    v20 = handlerCopy;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __75__SMInitiatorService__respondToTriggerPromptForSessionID_response_handler___block_invoke_2;
    v16[3] = &unk_2788C4D38;
    v16[4] = self;
    v17 = v20;
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    v15 = NSStringFromSelector(a2);
    [dispatcher enqueueBlock:v18 failureBlock:v16 description:{@"%@-%@", v14, v15}];
  }
}

void __75__SMInitiatorService__respondToTriggerPromptForSessionID_response_handler___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) invocationError];
  (*(v1 + 16))(v1, v2);
}

- (void)promptDestinationAnomalyVerificationWithContext:(id)context handler:(id)handler
{
  contextCopy = context;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __78__SMInitiatorService_promptDestinationAnomalyVerificationWithContext_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = contextCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = contextCopy;
  dispatch_async(queue, block);
}

- (void)_promptDestinationAnomalyVerificationWithContext:(id)context handler:(id)handler
{
  contextCopy = context;
  handlerCopy = handler;
  if ([(SMInitiatorService *)self _hasSetupObjectsDependentOnPersistenceStack])
  {
    sessionManager = [(SMInitiatorService *)self sessionManager];
    [sessionManager promptDestinationAnomalyVerificationWithContext:contextCopy handler:handlerCopy];
  }

  else
  {
    dispatcher = [(SMInitiatorService *)self dispatcher];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __79__SMInitiatorService__promptDestinationAnomalyVerificationWithContext_handler___block_invoke;
    v16[3] = &unk_2788C4500;
    v16[4] = self;
    v17 = contextCopy;
    v18 = handlerCopy;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __79__SMInitiatorService__promptDestinationAnomalyVerificationWithContext_handler___block_invoke_2;
    v14[3] = &unk_2788C4D38;
    v14[4] = self;
    v15 = v18;
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = NSStringFromSelector(a2);
    [dispatcher enqueueBlock:v16 failureBlock:v14 description:{@"%@-%@", v12, v13}];
  }
}

void __79__SMInitiatorService__promptDestinationAnomalyVerificationWithContext_handler___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) invocationError];
  (*(v1 + 16))(v1, v2);
}

- (void)promptTimerEndedVerificationWithContext:(id)context handler:(id)handler
{
  contextCopy = context;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__SMInitiatorService_promptTimerEndedVerificationWithContext_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = contextCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = contextCopy;
  dispatch_async(queue, block);
}

- (void)_promptTimerEndedVerificationWithContext:(id)context handler:(id)handler
{
  contextCopy = context;
  handlerCopy = handler;
  if ([(SMInitiatorService *)self _hasSetupObjectsDependentOnPersistenceStack])
  {
    sessionManager = [(SMInitiatorService *)self sessionManager];
    [sessionManager promptTimerEndedVerificationWithContext:contextCopy handler:handlerCopy];
  }

  else
  {
    dispatcher = [(SMInitiatorService *)self dispatcher];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __71__SMInitiatorService__promptTimerEndedVerificationWithContext_handler___block_invoke;
    v16[3] = &unk_2788C4500;
    v16[4] = self;
    v17 = contextCopy;
    v18 = handlerCopy;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __71__SMInitiatorService__promptTimerEndedVerificationWithContext_handler___block_invoke_2;
    v14[3] = &unk_2788C4D38;
    v14[4] = self;
    v15 = v18;
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = NSStringFromSelector(a2);
    [dispatcher enqueueBlock:v16 failureBlock:v14 description:{@"%@-%@", v12, v13}];
  }
}

void __71__SMInitiatorService__promptTimerEndedVerificationWithContext_handler___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) invocationError];
  (*(v1 + 16))(v1, v2);
}

- (void)promptRoundTripAnomalyVerificationWithContext:(id)context handler:(id)handler
{
  contextCopy = context;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__SMInitiatorService_promptRoundTripAnomalyVerificationWithContext_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = contextCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = contextCopy;
  dispatch_async(queue, block);
}

- (void)_promptRoundTripAnomalyVerificationWithContext:(id)context handler:(id)handler
{
  contextCopy = context;
  handlerCopy = handler;
  if ([(SMInitiatorService *)self _hasSetupObjectsDependentOnPersistenceStack])
  {
    sessionManager = [(SMInitiatorService *)self sessionManager];
    [sessionManager promptRoundTripAnomalyVerificationWithContext:contextCopy handler:handlerCopy];
  }

  else
  {
    dispatcher = [(SMInitiatorService *)self dispatcher];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __77__SMInitiatorService__promptRoundTripAnomalyVerificationWithContext_handler___block_invoke;
    v16[3] = &unk_2788C4500;
    v16[4] = self;
    v17 = contextCopy;
    v18 = handlerCopy;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __77__SMInitiatorService__promptRoundTripAnomalyVerificationWithContext_handler___block_invoke_2;
    v14[3] = &unk_2788C4D38;
    v14[4] = self;
    v15 = v18;
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = NSStringFromSelector(a2);
    [dispatcher enqueueBlock:v16 failureBlock:v14 description:{@"%@-%@", v12, v13}];
  }
}

void __77__SMInitiatorService__promptRoundTripAnomalyVerificationWithContext_handler___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) invocationError];
  (*(v1 + 16))(v1, v2);
}

- (void)promptSafeArrivalWithContext:(id)context handler:(id)handler
{
  contextCopy = context;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__SMInitiatorService_promptSafeArrivalWithContext_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = contextCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = contextCopy;
  dispatch_async(queue, block);
}

- (void)_promptSafeArrivalWithContext:(id)context handler:(id)handler
{
  contextCopy = context;
  handlerCopy = handler;
  if ([(SMInitiatorService *)self _hasSetupObjectsDependentOnPersistenceStack])
  {
    sessionManager = [(SMInitiatorService *)self sessionManager];
    [sessionManager promptSafeArrivalWithContext:contextCopy handler:handlerCopy];
  }

  else
  {
    dispatcher = [(SMInitiatorService *)self dispatcher];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __60__SMInitiatorService__promptSafeArrivalWithContext_handler___block_invoke;
    v16[3] = &unk_2788C4500;
    v16[4] = self;
    v17 = contextCopy;
    v18 = handlerCopy;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __60__SMInitiatorService__promptSafeArrivalWithContext_handler___block_invoke_2;
    v14[3] = &unk_2788C4D38;
    v14[4] = self;
    v15 = v18;
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = NSStringFromSelector(a2);
    [dispatcher enqueueBlock:v16 failureBlock:v14 description:{@"%@-%@", v12, v13}];
  }
}

void __60__SMInitiatorService__promptSafeArrivalWithContext_handler___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) invocationError];
  (*(v1 + 16))(v1, v2);
}

- (void)promptWorkoutAnomalyVerificationWithContext:(id)context handler:(id)handler
{
  contextCopy = context;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__SMInitiatorService_promptWorkoutAnomalyVerificationWithContext_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = contextCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = contextCopy;
  dispatch_async(queue, block);
}

- (void)_promptWorkoutAnomalyVerificationWithContext:(id)context handler:(id)handler
{
  contextCopy = context;
  handlerCopy = handler;
  if ([(SMInitiatorService *)self _hasSetupObjectsDependentOnPersistenceStack])
  {
    sessionManager = [(SMInitiatorService *)self sessionManager];
    [sessionManager promptWorkoutAnomalyVerificationWithContext:contextCopy handler:handlerCopy];
  }

  else
  {
    dispatcher = [(SMInitiatorService *)self dispatcher];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __75__SMInitiatorService__promptWorkoutAnomalyVerificationWithContext_handler___block_invoke;
    v16[3] = &unk_2788C4500;
    v16[4] = self;
    v17 = contextCopy;
    v18 = handlerCopy;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __75__SMInitiatorService__promptWorkoutAnomalyVerificationWithContext_handler___block_invoke_2;
    v14[3] = &unk_2788C4D38;
    v14[4] = self;
    v15 = v18;
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = NSStringFromSelector(a2);
    [dispatcher enqueueBlock:v16 failureBlock:v14 description:{@"%@-%@", v12, v13}];
  }
}

void __75__SMInitiatorService__promptWorkoutAnomalyVerificationWithContext_handler___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) invocationError];
  (*(v1 + 16))(v1, v2);
}

- (void)fetchCurrentSessionStateWithCompletion:(id)completion
{
  completionCopy = completion;
  queue = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61__SMInitiatorService_fetchCurrentSessionStateWithCompletion___block_invoke;
  v7[3] = &unk_2788C4938;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(queue, v7);
}

- (void)_fetchCurrentSessionStateWithCompletion:(id)completion
{
  completionCopy = completion;
  if ([(SMInitiatorService *)self _hasSetupObjectsDependentOnPersistenceStack])
  {
    sessionManager = [(SMInitiatorService *)self sessionManager];
    [sessionManager fetchCurrentSessionStateWithCompletion:completionCopy];
  }

  else
  {
    dispatcher = [(SMInitiatorService *)self dispatcher];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __62__SMInitiatorService__fetchCurrentSessionStateWithCompletion___block_invoke;
    v13[3] = &unk_2788C4938;
    v13[4] = self;
    v14 = completionCopy;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __62__SMInitiatorService__fetchCurrentSessionStateWithCompletion___block_invoke_2;
    v11[3] = &unk_2788C4D38;
    v11[4] = self;
    v12 = v14;
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = NSStringFromSelector(a2);
    [dispatcher enqueueBlock:v13 failureBlock:v11 description:{@"%@-%@", v9, v10}];
  }
}

void __62__SMInitiatorService__fetchCurrentSessionStateWithCompletion___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) invocationError];
  (*(v1 + 16))(v1, 0, 0, v2);
}

- (void)fetchDeviceConfigurationLowPowerModeWarningStateWithHandler:(id)handler
{
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __82__SMInitiatorService_fetchDeviceConfigurationLowPowerModeWarningStateWithHandler___block_invoke;
  v7[3] = &unk_2788C4938;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(queue, v7);
}

- (void)_fetchDeviceConfigurationLowPowerModeWarningStateWithHandler:(id)handler
{
  handlerCopy = handler;
  if ([(SMInitiatorService *)self _hasSetupObjectsDependentOnPersistenceStack])
  {
    deviceConfigurationChecker = [(SMInitiatorService *)self deviceConfigurationChecker];
    [deviceConfigurationChecker fetchDeviceConfigurationLowPowerModeWarningStateWithHandler:handlerCopy];
  }

  else
  {
    dispatcher = [(SMInitiatorService *)self dispatcher];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __83__SMInitiatorService__fetchDeviceConfigurationLowPowerModeWarningStateWithHandler___block_invoke;
    v13[3] = &unk_2788C4938;
    v13[4] = self;
    v14 = handlerCopy;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __83__SMInitiatorService__fetchDeviceConfigurationLowPowerModeWarningStateWithHandler___block_invoke_2;
    v11[3] = &unk_2788C4D38;
    v11[4] = self;
    v12 = v14;
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = NSStringFromSelector(a2);
    [dispatcher enqueueBlock:v13 failureBlock:v11 description:{@"%@-%@", v9, v10}];
  }
}

void __83__SMInitiatorService__fetchDeviceConfigurationLowPowerModeWarningStateWithHandler___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) invocationError];
  (*(v1 + 16))(v1, 0, v2);
}

- (void)fetchCurrentLocalSessionStateWithHandler:(id)handler
{
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __63__SMInitiatorService_fetchCurrentLocalSessionStateWithHandler___block_invoke;
  v7[3] = &unk_2788C4938;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(queue, v7);
}

- (void)_fetchCurrentLocalSessionStateWithHandler:(id)handler
{
  handlerCopy = handler;
  if ([(SMInitiatorService *)self _hasSetupObjectsDependentOnPersistenceStack])
  {
    sessionManager = [(SMInitiatorService *)self sessionManager];
    [sessionManager fetchCurrentLocalSessionStateWithHandler:handlerCopy];
  }

  else
  {
    dispatcher = [(SMInitiatorService *)self dispatcher];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __64__SMInitiatorService__fetchCurrentLocalSessionStateWithHandler___block_invoke;
    v13[3] = &unk_2788C4938;
    v13[4] = self;
    v14 = handlerCopy;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __64__SMInitiatorService__fetchCurrentLocalSessionStateWithHandler___block_invoke_2;
    v11[3] = &unk_2788C4D38;
    v11[4] = self;
    v12 = v14;
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = NSStringFromSelector(a2);
    [dispatcher enqueueBlock:v13 failureBlock:v11 description:{@"%@-%@", v9, v10}];
  }
}

void __64__SMInitiatorService__fetchCurrentLocalSessionStateWithHandler___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) invocationError];
  (*(v1 + 16))(v1, 0, v2);
}

- (void)sendHeartbeatForSessionID:(id)d handler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__SMInitiatorService_sendHeartbeatForSessionID_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = dCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = dCopy;
  dispatch_async(queue, block);
}

- (void)_sendHeartbeatForSessionID:(id)d handler:(id)handler
{
  v24 = *MEMORY[0x277D85DE8];
  dCopy = d;
  handlerCopy = handler;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v21 = "[SMInitiatorService _sendHeartbeatForSessionID:handler:]";
      v22 = 2112;
      v23 = dCopy;
      _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "%s, heartbeat received for sessionID, %@", buf, 0x16u);
    }
  }

  if ([(SMInitiatorService *)self _hasSetupObjectsDependentOnPersistenceStack])
  {
    watchdog = [(SMInitiatorService *)self watchdog];
    [watchdog receiveHeartbeatForSessionID:dCopy handler:handlerCopy];
  }

  else
  {
    dispatcher = [(SMInitiatorService *)self dispatcher];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __57__SMInitiatorService__sendHeartbeatForSessionID_handler___block_invoke;
    v17[3] = &unk_2788C4500;
    v17[4] = self;
    v18 = dCopy;
    v19 = handlerCopy;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __57__SMInitiatorService__sendHeartbeatForSessionID_handler___block_invoke_2;
    v15[3] = &unk_2788C4D38;
    v15[4] = self;
    v16 = v19;
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v14 = NSStringFromSelector(a2);
    [dispatcher enqueueBlock:v17 failureBlock:v15 description:{@"%@-%@", v13, v14}];
  }
}

void __57__SMInitiatorService__sendHeartbeatForSessionID_handler___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) invocationError];
  (*(v1 + 16))(v1, v2);
}

- (void)fetchSOSReceiversWithCompletion:(id)completion
{
  completionCopy = completion;
  queue = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__SMInitiatorService_fetchSOSReceiversWithCompletion___block_invoke;
  v7[3] = &unk_2788C4938;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(queue, v7);
}

- (void)_fetchSOSReceiversWithCompletion:(id)completion
{
  completionCopy = completion;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__SMInitiatorService__fetchSOSReceiversWithCompletion___block_invoke;
  block[3] = &unk_2788C6300;
  block[4] = self;
  v7 = completionCopy;
  v13 = v7;
  v14 = a2;
  dispatch_async(queue, block);

  sessionManager = [(SMInitiatorService *)self sessionManager];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __55__SMInitiatorService__fetchSOSReceiversWithCompletion___block_invoke_4;
  v10[3] = &unk_2788C6D60;
  v11 = v7;
  v9 = v7;
  [sessionManager fetchSOSReceiversWithCompletion:v10];
}

void __55__SMInitiatorService__fetchSOSReceiversWithCompletion___block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) _hasSetupObjectsDependentOnPersistenceStack] & 1) == 0)
  {
    v2 = [*(a1 + 32) dispatcher];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __55__SMInitiatorService__fetchSOSReceiversWithCompletion___block_invoke_2;
    v10[3] = &unk_2788C4938;
    v3 = *(a1 + 40);
    v10[4] = *(a1 + 32);
    v11 = v3;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __55__SMInitiatorService__fetchSOSReceiversWithCompletion___block_invoke_3;
    v8[3] = &unk_2788C4D38;
    v4 = *(a1 + 40);
    v8[4] = *(a1 + 32);
    v9 = v4;
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = NSStringFromSelector(*(a1 + 48));
    [v2 enqueueBlock:v10 failureBlock:v8 description:{@"%@-%@", v6, v7}];
  }
}

void __55__SMInitiatorService__fetchSOSReceiversWithCompletion___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) invocationError];
  (*(v1 + 16))(v1, MEMORY[0x277CBEBF8], v2);
}

- (void)fetchInitiatorSafetyCacheForSessionID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__SMInitiatorService_fetchInitiatorSafetyCacheForSessionID_completion___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = dCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = dCopy;
  dispatch_async(queue, block);
}

- (void)_fetchInitiatorSafetyCacheForSessionID:(id)d completion:(id)completion
{
  v47 = *MEMORY[0x277D85DE8];
  dCopy = d;
  completionCopy = completion;
  v9 = completionCopy;
  if (!dCopy)
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v17 = "Invalid parameter not satisfying: sessionID";
LABEL_14:
      _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, v17, buf, 2u);
    }

LABEL_21:

    goto LABEL_22;
  }

  if (!completionCopy)
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v17 = "Invalid parameter not satisfying: completion";
      goto LABEL_14;
    }

    goto LABEL_21;
  }

  if ([(SMInitiatorService *)self _hasSetupObjectsDependentOnPersistenceStack])
  {
    v10 = [(SMInitiatorService *)self getCacheManagerForSessionID:dCopy];
    v11 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
    if (v10)
    {
      if (v11)
      {
        v12 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorClient);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          uUIDString = [dCopy UUIDString];
          v14 = objc_opt_class();
          v15 = NSStringFromClass(v14);
          v16 = NSStringFromSelector(a2);
          *buf = 138412802;
          v42 = uUIDString;
          v43 = 2112;
          v44 = v15;
          v45 = 2112;
          v46 = v16;
          _os_log_impl(&dword_2304B3000, v12, OS_LOG_TYPE_INFO, "#SafetyCache,Initiator,sessionID:%@,%@,%@,fetching initiator safety cache", buf, 0x20u);
        }
      }

      [v10 fetchInitiatorSafetyCacheForSessionID:dCopy completion:v9];
    }

    else
    {
      if (v11)
      {
        v22 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorClient);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          uUIDString2 = [dCopy UUIDString];
          v24 = objc_opt_class();
          v25 = NSStringFromClass(v24);
          v26 = NSStringFromSelector(a2);
          *buf = 138412802;
          v42 = uUIDString2;
          v43 = 2112;
          v44 = v25;
          v45 = 2112;
          v46 = v26;
          _os_log_impl(&dword_2304B3000, v22, OS_LOG_TYPE_INFO, "#SafetyCache,Initiator,sessionID:%@,%@,%@,No CacheManager found Invalid", buf, 0x20u);
        }
      }

      v27 = objc_alloc(MEMORY[0x277CCA9B8]);
      v28 = *MEMORY[0x277D4ACD0];
      v39 = *MEMORY[0x277CCA450];
      v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"No CacheManager found Invalid session id"];
      v40 = v29;
      v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
      v31 = [v27 initWithDomain:v28 code:7 userInfo:v30];

      (v9)[2](v9, 0, 0, 0, 0, 0, v31);
    }

    goto LABEL_21;
  }

  dispatcher = [(SMInitiatorService *)self dispatcher];
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __72__SMInitiatorService__fetchInitiatorSafetyCacheForSessionID_completion___block_invoke;
  v36[3] = &unk_2788C4500;
  v36[4] = self;
  v37 = dCopy;
  v38 = v9;
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __72__SMInitiatorService__fetchInitiatorSafetyCacheForSessionID_completion___block_invoke_2;
  v32[3] = &unk_2788C6210;
  v35 = v38;
  v33 = v37;
  selfCopy = self;
  v19 = objc_opt_class();
  v20 = NSStringFromClass(v19);
  v21 = NSStringFromSelector(a2);
  [dispatcher enqueueBlock:v36 failureBlock:v32 description:{@"%@-%@", v20, v21}];

LABEL_22:
}

void __72__SMInitiatorService__fetchInitiatorSafetyCacheForSessionID_completion___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 48);
  v3 = [*(a1 + 40) invocationError];
  (*(v2 + 16))(v2, v1, 0, 0, 0, 0, v3);
}

- (void)scheduledSendMessageScheduledForSessionID:(id)d guid:(id)guid date:(id)date
{
  dCopy = d;
  guidCopy = guid;
  dateCopy = date;
  v12 = dateCopy;
  if (!dCopy)
  {
    sessionManager = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(sessionManager, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    *buf = 0;
    v14 = "Invalid parameter not satisfying: sessionID";
LABEL_12:
    _os_log_error_impl(&dword_2304B3000, sessionManager, OS_LOG_TYPE_ERROR, v14, buf, 2u);
    goto LABEL_13;
  }

  if (!guidCopy)
  {
    sessionManager = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(sessionManager, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    *buf = 0;
    v14 = "Invalid parameter not satisfying: guid";
    goto LABEL_12;
  }

  if (!dateCopy)
  {
    sessionManager = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(sessionManager, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    *buf = 0;
    v14 = "Invalid parameter not satisfying: date";
    goto LABEL_12;
  }

  if (![(SMInitiatorService *)self _hasSetupObjectsDependentOnPersistenceStack])
  {
    dispatcher = [(SMInitiatorService *)self dispatcher];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __74__SMInitiatorService_scheduledSendMessageScheduledForSessionID_guid_date___block_invoke;
    v19[3] = &unk_2788CBEA8;
    v19[4] = self;
    v20 = dCopy;
    v21 = guidCopy;
    v22 = v12;
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    v18 = NSStringFromSelector(a2);
    [dispatcher enqueueBlock:v19 description:{@"%@-%@", v17, v18}];

    goto LABEL_14;
  }

  sessionManager = [(SMInitiatorService *)self sessionManager];
  [sessionManager onScheduledSendMessageScheduledForSessionID:dCopy guid:guidCopy date:v12];
LABEL_13:

LABEL_14:
}

- (void)scheduledSendMessageCanceledForSessionID:(id)d guid:(id)guid
{
  dCopy = d;
  guidCopy = guid;
  v9 = guidCopy;
  if (!dCopy)
  {
    sessionManager = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(sessionManager, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_8;
    }

    *buf = 0;
    v11 = "Invalid parameter not satisfying: sessionID";
LABEL_12:
    _os_log_error_impl(&dword_2304B3000, sessionManager, OS_LOG_TYPE_ERROR, v11, buf, 2u);
    goto LABEL_8;
  }

  if (!guidCopy)
  {
    sessionManager = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(sessionManager, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_8;
    }

    *buf = 0;
    v11 = "Invalid parameter not satisfying: guid";
    goto LABEL_12;
  }

  if (![(SMInitiatorService *)self _hasSetupObjectsDependentOnPersistenceStack])
  {
    dispatcher = [(SMInitiatorService *)self dispatcher];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __68__SMInitiatorService_scheduledSendMessageCanceledForSessionID_guid___block_invoke;
    v16[3] = &unk_2788C76F8;
    v16[4] = self;
    v17 = dCopy;
    v18 = v9;
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    v15 = NSStringFromSelector(a2);
    [dispatcher enqueueBlock:v16 description:{@"%@-%@", v14, v15}];

    goto LABEL_9;
  }

  sessionManager = [(SMInitiatorService *)self sessionManager];
  [sessionManager onScheduledSendMessageCanceledForSessionID:dCopy guid:v9];
LABEL_8:

LABEL_9:
}

- (void)scheduledSendMessageSent:(id)sent
{
  sentCopy = sent;
  if (sentCopy)
  {
    if (![(SMInitiatorService *)self _hasSetupObjectsDependentOnPersistenceStack])
    {
      dispatcher = [(SMInitiatorService *)self dispatcher];
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __47__SMInitiatorService_scheduledSendMessageSent___block_invoke;
      v11[3] = &unk_2788C4A70;
      v11[4] = self;
      v12 = sentCopy;
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v10 = NSStringFromSelector(a2);
      [dispatcher enqueueBlock:v11 description:{@"%@-%@", v9, v10}];

      goto LABEL_8;
    }

    sessionManager = [(SMInitiatorService *)self sessionManager];
    [sessionManager onScheduledSendForSessionID:sentCopy];
  }

  else
  {
    sessionManager = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(sessionManager, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, sessionManager, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: sessionID", buf, 2u);
    }
  }

LABEL_8:
}

- (void)cacheManagerCleanedUpForSessionID:(id)d
{
  v29 = *MEMORY[0x277D85DE8];
  dCopy = d;
  if (!dCopy)
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: sessionID", buf, 2u);
    }

    goto LABEL_14;
  }

  if ([(SMInitiatorService *)self _hasSetupObjectsDependentOnPersistenceStack])
  {
    v6 = [(SMInitiatorService *)self getCacheManagerForSessionID:dCopy];
    if (v6)
    {
      cacheManagerArray = [(SMInitiatorService *)self cacheManagerArray];
      [cacheManagerArray removeObject:v6];

      v8 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        sessionUUID = [v6 sessionUUID];
        v10 = objc_opt_class();
        v11 = NSStringFromClass(v10);
        v12 = NSStringFromSelector(a2);
        *buf = 138412802;
        v24 = sessionUUID;
        v25 = 2112;
        v26 = v11;
        v27 = 2112;
        v28 = v12;
        v13 = "#SafetyCache,Initiator,sessionID:%@,%@,%@,remove SMInitiatorCacheManager";
        v14 = v8;
        v15 = OS_LOG_TYPE_DEFAULT;
LABEL_12:
        _os_log_impl(&dword_2304B3000, v14, v15, v13, buf, 0x20u);
      }
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
LABEL_14:

        goto LABEL_15;
      }

      v8 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        sessionUUID = [dCopy UUIDString];
        v20 = objc_opt_class();
        v11 = NSStringFromClass(v20);
        v12 = NSStringFromSelector(a2);
        *buf = 138412802;
        v24 = sessionUUID;
        v25 = 2112;
        v26 = v11;
        v27 = 2112;
        v28 = v12;
        v13 = "#SafetyCache,Initiator,sessionID:%@,%@,%@,no SMInitiatorCacheManager to remove";
        v14 = v8;
        v15 = OS_LOG_TYPE_INFO;
        goto LABEL_12;
      }
    }

    goto LABEL_14;
  }

  dispatcher = [(SMInitiatorService *)self dispatcher];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __56__SMInitiatorService_cacheManagerCleanedUpForSessionID___block_invoke;
  v21[3] = &unk_2788C4A70;
  v21[4] = self;
  v22 = dCopy;
  v17 = objc_opt_class();
  v18 = NSStringFromClass(v17);
  v19 = NSStringFromSelector(a2);
  [dispatcher enqueueBlock:v21 description:{@"%@-%@", v18, v19}];

LABEL_15:
}

- (void)iMessageGroupMembershipChangedFor:(id)for
{
  v15 = *MEMORY[0x277D85DE8];
  forCopy = for;
  if (forCopy)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v6 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = objc_opt_class();
        v8 = NSStringFromClass(v7);
        v9 = NSStringFromSelector(a2);
        v11 = 138412546;
        v12 = v8;
        v13 = 2112;
        v14 = v9;
        _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%@,%@,responding to change in group membership", &v11, 0x16u);
      }
    }

    sessionManager = [(SMInitiatorService *)self sessionManager];
    [sessionManager iMessageGroupMembershipChangedFor:forCopy];
  }

  else
  {
    sessionManager = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(sessionManager, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v11) = 0;
      _os_log_error_impl(&dword_2304B3000, sessionManager, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: groupID", &v11, 2u);
    }
  }
}

- (void)iMessageGroupDisplayNameChangedFor:(id)for
{
  forCopy = for;
  if (forCopy)
  {
    sessionManager = [(SMInitiatorService *)self sessionManager];
    [sessionManager iMessageGroupDisplayNameChangedFor:forCopy];
  }

  else
  {
    sessionManager = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(sessionManager, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&dword_2304B3000, sessionManager, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: groupID", v6, 2u);
    }
  }
}

- (void)kickedFromIMessageGroupWith:(id)with
{
  withCopy = with;
  if (withCopy)
  {
    sessionManager = [(SMInitiatorService *)self sessionManager];
    [sessionManager kickedFromIMessageGroupWith:withCopy];
  }

  else
  {
    sessionManager = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(sessionManager, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&dword_2304B3000, sessionManager, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: groupID", v6, 2u);
    }
  }
}

- (void)onSessionStateChanged:(id)changed forActiveDevice:(BOOL)device
{
  changedCopy = changed;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__SMInitiatorService_onSessionStateChanged_forActiveDevice___block_invoke;
  block[3] = &unk_2788C53C8;
  block[4] = self;
  v10 = changedCopy;
  deviceCopy = device;
  v8 = changedCopy;
  dispatch_async(queue, block);
}

- (void)_onSessionStateChanged:(id)changed forActiveDevice:(BOOL)device
{
  deviceCopy = device;
  v105[1] = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  if ([(SMInitiatorService *)self _hasSetupObjectsDependentOnPersistenceStack])
  {
    if (!deviceCopy)
    {
      v28 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        configuration = [changedCopy configuration];
        sessionID = [configuration sessionID];
        v31 = objc_opt_class();
        v32 = NSStringFromClass(v31);
        v33 = NSStringFromSelector(a2);
        *buf = 138413059;
        v97 = sessionID;
        v98 = 2112;
        v99 = v32;
        v100 = 2112;
        v101 = v33;
        v102 = 2117;
        v103 = changedCopy;
        _os_log_impl(&dword_2304B3000, v28, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Initiator,sessionID:%@,%@,%@,not active device transition state, %{sensitive}@", buf, 0x2Au);
      }

      configuration2 = [changedCopy configuration];
      sessionID2 = [configuration2 sessionID];
      v36 = [(SMInitiatorService *)self getCacheManagerForSessionID:sessionID2];

      if (![changedCopy isActiveState]|| v36)
      {
        goto LABEL_27;
      }

      aSelector = a2;
      v37 = objc_alloc(MEMORY[0x277D4AAF0]);
      v38 = objc_opt_new();
      configuration3 = [changedCopy configuration];
      sessionID3 = [configuration3 sessionID];
      safetyCacheKey = [changedCopy safetyCacheKey];
      allowReadToken = [changedCopy allowReadToken];
      scheduledSendMessageGUID = [changedCopy scheduledSendMessageGUID];
      v44 = objc_opt_new();
      LOBYTE(v81) = 1;
      LOWORD(v80) = 0;
      v92 = [v37 initWithIdentifier:v38 shouldBeCleanedUpDate:0 cloudkitShareZoneCleanedUpSuccessfully:0 syncDate:0 keyReleaseMessageSendDate:0 scheduledSendExpiryDate:0 phoneCache:-1.0 watchCache:-1.0 sessionID:-1.0 safetyCacheKey:0 allowReadToken:0 scheduleSendMessageGUID:sessionID3 unlockLocation:safetyCacheKey lockLocation:allowReadToken startingLocation:scheduledSendMessageGUID offWristLocation:0 parkedCarLocation:0 destinationMapItem:0 timeCacheUploadCompletion:0 maxCacheSize:0 maxLocationsInTrace:0 maxTimeBetweenCacheUpdates:0 numCacheUpdates:-1 timeTilCacheRelease:-1 numberOfSuccessfulCacheUpdates:-1 numberOfMessageCancelling:-1 numberOfSuccessfulMessageCancelling:-1 numberOfMessageScheduling:-1 numberOfSuccessfulMessageScheduling:-1 wasCacheReleased:v80 wasScheduledSendTriggered:0 locationOfTrigger:0 triggerDate:v81 lockState:0 cacheUpdateBackstopExpiryDate:v44 workoutEvents:0 numberOfHandoffBecomingActive:0 numberOfHandoffBecomingNonActive:0 earliestActiveDeviceIdentifier:0 latestActiveDeviceIdentifier:?];

      v45 = [SMInitiatorCacheManager alloc];
      safetyCacheStore = self->_safetyCacheStore;
      v91 = v45;
      sessionStore = self->_sessionStore;
      locationManager = self->_locationManager;
      defaultsManager = self->_defaultsManager;
      queue = [(RTNotifier *)self queue];
      batteryManager = self->_batteryManager;
      v86 = queue;
      messagingService = self->_messagingService;
      xpcActivityManager = self->_xpcActivityManager;
      networkOfInterestManager = self->_networkOfInterestManager;
      authorizationManager = self->_authorizationManager;
      wristStateManager = self->_wristStateManager;
      vehicleLocationProvider = self->_vehicleLocationProvider;
      activeSessionDetailsZone = self->_activeSessionDetailsZone;
      healthKitManager = [(SMInitiatorService *)self healthKitManager];
      platform = [(SMInitiatorService *)self platform];
      appDeletionManager = [(SMInitiatorService *)self appDeletionManager];
      v79 = activeSessionDetailsZone;
      tipResponseMetricManager = v92;
      v36 = [(SMInitiatorCacheManager *)v91 initWithInitiatorContact:v92 loadedFromDisk:0 safetyCacheStore:safetyCacheStore sessionStore:sessionStore defaultsManager:defaultsManager locationManager:locationManager queue:v86 batteryManager:batteryManager xpcActivityManager:xpcActivityManager messagingService:messagingService networkOfInterestManager:networkOfInterestManager authorizationManager:authorizationManager wristStateManager:wristStateManager vehicleLocationProvider:vehicleLocationProvider activeSessionDetailsZone:v79 healthKitManager:healthKitManager platform:platform appDeletionManager:appDeletionManager];

      [v36 setDelegate:self];
      [v36 _setupFetchOnZoneUpdates];
      cacheManagerArray = [(SMInitiatorService *)self cacheManagerArray];
      [cacheManagerArray addObject:v36];

      v57 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
      {
        configuration4 = [changedCopy configuration];
        sessionID4 = [configuration4 sessionID];
        v60 = objc_opt_class();
        v61 = NSStringFromClass(v60);
        v62 = NSStringFromSelector(aSelector);
        *buf = 138413058;
        v97 = sessionID4;
        v98 = 2112;
        v99 = v61;
        v100 = 2112;
        v101 = v62;
        v102 = 2112;
        v103 = v36;
        _os_log_impl(&dword_2304B3000, v57, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Initiator,sessionID:%@,%@,%@,created non-active cache manager, %@", buf, 0x2Au);
      }

      deviceCopy = 0;
      goto LABEL_26;
    }

    if ([changedCopy sessionState]== 1)
    {
      pendingInitializationRequest = [(SMInitiatorService *)self pendingInitializationRequest];
      if (pendingInitializationRequest)
      {
        v9 = pendingInitializationRequest;
        pendingInitializationRequest2 = [(SMInitiatorService *)self pendingInitializationRequest];
        sessionID5 = [pendingInitializationRequest2 sessionID];
        configuration5 = [changedCopy configuration];
        sessionID6 = [configuration5 sessionID];
        v14 = [sessionID5 isEqual:sessionID6];

        if (v14)
        {
          v15 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            pendingInitializationRequest3 = [(SMInitiatorService *)self pendingInitializationRequest];
            *buf = 136315394;
            v97 = "[SMInitiatorService _onSessionStateChanged:forActiveDevice:]";
            v98 = 2112;
            v99 = pendingInitializationRequest3;
            _os_log_impl(&dword_2304B3000, v15, OS_LOG_TYPE_DEFAULT, "%s, responding to previous initialization request %@", buf, 0x16u);
          }

          v17 = objc_alloc(MEMORY[0x277CCA9B8]);
          v18 = *MEMORY[0x277D4ACD0];
          v104 = *MEMORY[0x277CCA450];
          v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"Transitioned to NotActive for unknown reason"];
          v105[0] = v19;
          v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v105 forKeys:&v104 count:1];
          v21 = [v17 initWithDomain:v18 code:0 userInfo:v20];

          pendingInitializationRequest4 = [(SMInitiatorService *)self pendingInitializationRequest];
          handler = [pendingInitializationRequest4 handler];
          (handler)[2](handler, 0, 0, 0, v21);

          [(SMInitiatorService *)self setPendingInitializationRequest:0];
        }
      }
    }

    else if ([changedCopy sessionState]!= 4)
    {
LABEL_19:
      sessionState = [changedCopy sessionState];
      configuration6 = [changedCopy configuration];
      sessionID7 = [configuration6 sessionID];
      if (sessionState == 10)
      {
        configuration7 = [changedCopy configuration];
        conversation = [configuration7 conversation];
        v36 = [(SMInitiatorService *)self _createInitiatorCacheManagerForSessionID:sessionID7 conversation:conversation];
      }

      else
      {
        v36 = [(SMInitiatorService *)self getCacheManagerForSessionID:sessionID7];

        if (!v36)
        {
          if (([changedCopy isEndSessionState]& 1) == 0)
          {
            v68 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorClient);
            if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
            {
              configuration8 = [changedCopy configuration];
              sessionID8 = [configuration8 sessionID];
              v75 = objc_opt_class();
              v76 = NSStringFromClass(v75);
              v77 = NSStringFromSelector(a2);
              sessionsLoadedFromDisk = [(SMInitiatorService *)self sessionsLoadedFromDisk];
              *buf = 138413058;
              v97 = sessionID8;
              v98 = 2112;
              v99 = v76;
              v100 = 2112;
              v101 = v77;
              v102 = 1024;
              LODWORD(v103) = sessionsLoadedFromDisk;
              _os_log_error_impl(&dword_2304B3000, v68, OS_LOG_TYPE_ERROR, "#SafetyCache,Initiator,sessionID:%@,%@,%@,loaded,%d,could not find SMInitiatorCacheManager", buf, 0x26u);
            }

            v36 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorClient);
            if (os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
            {
              v69 = objc_opt_class();
              v70 = NSStringFromClass(v69);
              v71 = NSStringFromSelector(a2);
              sessionsLoadedFromDisk2 = [(SMInitiatorService *)self sessionsLoadedFromDisk];
              *buf = 138412802;
              v97 = v70;
              v98 = 2112;
              v99 = v71;
              v100 = 1024;
              LODWORD(v101) = sessionsLoadedFromDisk2;
              _os_log_fault_impl(&dword_2304B3000, v36, OS_LOG_TYPE_FAULT, "#SafetyCache,Initiator,%@,%@,loaded,%d,SMInitiatorCacheManager does not exist", buf, 0x1Cu);
            }

            goto LABEL_28;
          }

          v36 = 0;
        }
      }

      if (![changedCopy isActiveState])
      {
LABEL_27:
        [v36 onSessionStateChanged:changedCopy forActiveDevice:deviceCopy];
        [(SMInitiatorService *)self handleSessionStateForNonActiveSessions:changedCopy];
LABEL_28:

        goto LABEL_29;
      }

      tipResponseMetricManager = [(SMInitiatorService *)self tipResponseMetricManager];
      [tipResponseMetricManager updateTipResponse:4];
LABEL_26:

      goto LABEL_27;
    }

    [(SMInitiatorService *)self _tearDownWorkoutEndedBufferTimer];
    goto LABEL_19;
  }

  dispatcher = [(SMInitiatorService *)self dispatcher];
  v93[0] = MEMORY[0x277D85DD0];
  v93[1] = 3221225472;
  v93[2] = __61__SMInitiatorService__onSessionStateChanged_forActiveDevice___block_invoke;
  v93[3] = &unk_2788C53C8;
  v93[4] = self;
  v94 = changedCopy;
  v95 = deviceCopy;
  v25 = objc_opt_class();
  v26 = NSStringFromClass(v25);
  v27 = NSStringFromSelector(a2);
  [dispatcher enqueueBlock:v93 description:{@"%@-%@", v26, v27}];

LABEL_29:
}

- (void)onSessionResumedWithState:(id)state forActiveDevice:(BOOL)device
{
  stateCopy = state;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__SMInitiatorService_onSessionResumedWithState_forActiveDevice___block_invoke;
  block[3] = &unk_2788C53C8;
  block[4] = self;
  v10 = stateCopy;
  deviceCopy = device;
  v8 = stateCopy;
  dispatch_async(queue, block);
}

- (void)_onSessionResumedWithState:(id)state forActiveDevice:(BOOL)device
{
  deviceCopy = device;
  v34 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  [(SMInitiatorService *)self setSessionManagerBootstrapped:1];
  configuration = [stateCopy configuration];
  sessionID = [configuration sessionID];
  v10 = [(SMInitiatorService *)self getCacheManagerForSessionID:sessionID];

  if (v10 || ([stateCopy isEndSessionState] & 1) != 0)
  {
    [v10 onSessionResumedWithState:stateCopy forActiveDevice:deviceCopy];
    [(SMInitiatorService *)self handleSessionStateForNonActiveSessions:stateCopy];
  }

  else
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorClient);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      configuration2 = [stateCopy configuration];
      sessionID2 = [configuration2 sessionID];
      v19 = objc_opt_class();
      v20 = NSStringFromClass(v19);
      v21 = NSStringFromSelector(a2);
      v26 = 138413058;
      v27 = sessionID2;
      v28 = 2112;
      v29 = v20;
      v30 = 2112;
      v31 = v21;
      v32 = 1024;
      sessionsLoadedFromDisk = [(SMInitiatorService *)self sessionsLoadedFromDisk];
      _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, "#SafetyCache,Initiator,sessionID:%@,%@,%@,loaded,%d,could not find SMInitiatorCacheManager", &v26, 0x26u);
    }

    v16 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorClient);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      v22 = objc_opt_class();
      v23 = NSStringFromClass(v22);
      v24 = NSStringFromSelector(a2);
      sessionsLoadedFromDisk2 = [(SMInitiatorService *)self sessionsLoadedFromDisk];
      v26 = 138412802;
      v27 = v23;
      v28 = 2112;
      v29 = v24;
      v30 = 1024;
      LODWORD(v31) = sessionsLoadedFromDisk2;
      _os_log_fault_impl(&dword_2304B3000, v16, OS_LOG_TYPE_FAULT, "#SafetyCache,Initiator,%@,%@,loaded,%d,SMInitiatorCacheManager does not exist", &v26, 0x1Cu);
    }
  }

  dispatcher = [(SMInitiatorService *)self dispatcher];
  invocationsPending = [dispatcher invocationsPending];

  if (invocationsPending)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v13 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v26 = 136315138;
        v27 = "[SMInitiatorService _onSessionResumedWithState:forActiveDevice:]";
        _os_log_impl(&dword_2304B3000, v13, OS_LOG_TYPE_INFO, "%s, dispatching work on SMInitiatorService queue", &v26, 0xCu);
      }
    }

    dispatcher2 = [(SMInitiatorService *)self dispatcher];
    [dispatcher2 dispatchPendingInvocations];
  }
}

- (void)handleSessionStateForNonActiveSessions:(id)sessions
{
  v34 = *MEMORY[0x277D85DE8];
  sessionsCopy = sessions;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  cacheManagerArray = [(SMInitiatorService *)self cacheManagerArray];
  v6 = [cacheManagerArray countByEnumeratingWithState:&v23 objects:v33 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v24;
    *&v7 = 138412802;
    v21 = v7;
    do
    {
      v10 = 0;
      do
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(cacheManagerArray);
        }

        v11 = *(*(&v23 + 1) + 8 * v10);
        configuration = [sessionsCopy configuration];
        sessionID = [configuration sessionID];
        sessionUUID = [v11 sessionUUID];
        v15 = [sessionID isEqual:sessionUUID];

        if ((v15 & 1) == 0)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v16 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorClient);
            if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
            {
              sessionUUID2 = [v11 sessionUUID];
              v18 = objc_opt_class();
              v19 = NSStringFromClass(v18);
              v20 = NSStringFromSelector(a2);
              *buf = v21;
              v28 = sessionUUID2;
              v29 = 2112;
              v30 = v19;
              v31 = 2112;
              v32 = v20;
              _os_log_impl(&dword_2304B3000, v16, OS_LOG_TYPE_INFO, "#SafetyCache,Initiator,sessionID:%@,%@,%@,cleanup this non active session", buf, 0x20u);
            }
          }

          [v11 cleanupNonActiveSession];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [cacheManagerArray countByEnumeratingWithState:&v23 objects:v33 count:16];
    }

    while (v8);
  }
}

- (void)onSecondarySOSTriggerWithState:(id)state forActiveDevice:(BOOL)device
{
  stateCopy = state;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__SMInitiatorService_onSecondarySOSTriggerWithState_forActiveDevice___block_invoke;
  block[3] = &unk_2788C53C8;
  block[4] = self;
  v10 = stateCopy;
  deviceCopy = device;
  v8 = stateCopy;
  dispatch_async(queue, block);
}

- (void)_onSecondarySOSTriggerWithState:(id)state forActiveDevice:(BOOL)device
{
  v26 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  v8 = stateCopy;
  if (device)
  {
    if ([stateCopy sessionState] == 4)
    {
      configuration = [v8 configuration];
      sessionID = [configuration sessionID];
      v11 = [(SMInitiatorService *)self getCacheManagerForSessionID:sessionID];

      [v11 onSecondarySOSTriggerWithState:v8 forActiveDevice:1];
    }
  }

  else
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      configuration2 = [v8 configuration];
      sessionID2 = [configuration2 sessionID];
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      v17 = NSStringFromSelector(a2);
      v18 = 138413059;
      v19 = sessionID2;
      v20 = 2112;
      v21 = v16;
      v22 = 2112;
      v23 = v17;
      v24 = 2117;
      v25 = v8;
      _os_log_impl(&dword_2304B3000, v12, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Initiator,sessionID:%@,%@,%@,not active device transition state, %{sensitive}@", &v18, 0x2Au);
    }
  }
}

- (void)onBecomingActiveDevice:(id)device
{
  deviceCopy = device;
  queue = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__SMInitiatorService_onBecomingActiveDevice___block_invoke;
  v7[3] = &unk_2788C4A70;
  v7[4] = self;
  v8 = deviceCopy;
  v6 = deviceCopy;
  dispatch_async(queue, v7);
}

- (void)_onBecomingActiveDevice:(id)device
{
  v24 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  configuration = [deviceCopy configuration];
  sessionID = [configuration sessionID];
  v8 = [(SMInitiatorService *)self getCacheManagerForSessionID:sessionID];

  if (!v8)
  {
    configuration2 = [deviceCopy configuration];
    sessionID2 = [configuration2 sessionID];
    configuration3 = [deviceCopy configuration];
    conversation = [configuration3 conversation];
    v8 = [(SMInitiatorService *)self _createInitiatorCacheManagerForSessionID:sessionID2 conversation:conversation];
  }

  [v8 onBecomingActiveDevice:deviceCopy];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorClient);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      sessionUUID = [v8 sessionUUID];
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      v17 = NSStringFromSelector(a2);
      v18 = 138412802;
      v19 = sessionUUID;
      v20 = 2112;
      v21 = v16;
      v22 = 2112;
      v23 = v17;
      _os_log_impl(&dword_2304B3000, v13, OS_LOG_TYPE_INFO, "#SafetyCache,Initiator,sessionID:%@,%@,%@,notify cache manager to become active", &v18, 0x20u);
    }
  }
}

- (void)onBecomingNonActiveDevice:(id)device
{
  deviceCopy = device;
  queue = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__SMInitiatorService_onBecomingNonActiveDevice___block_invoke;
  v7[3] = &unk_2788C4A70;
  v7[4] = self;
  v8 = deviceCopy;
  v6 = deviceCopy;
  dispatch_async(queue, v7);
}

- (void)_onBecomingNonActiveDevice:(id)device
{
  v29 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  configuration = [deviceCopy configuration];
  sessionID = [configuration sessionID];
  v8 = [(SMInitiatorService *)self getCacheManagerForSessionID:sessionID];

  if (!v8)
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorClient);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sessionUUID = [0 sessionUUID];
      v20 = objc_opt_class();
      v21 = NSStringFromClass(v20);
      v22 = NSStringFromSelector(a2);
      v23 = 138412802;
      v24 = sessionUUID;
      v25 = 2112;
      v26 = v21;
      v27 = 2112;
      v28 = v22;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "#SafetyCache,Initiator,sessionID:%@,%@,%@,becoming non-active but there is no cache manager,creating one...", &v23, 0x20u);
    }

    configuration2 = [deviceCopy configuration];
    sessionID2 = [configuration2 sessionID];
    configuration3 = [deviceCopy configuration];
    conversation = [configuration3 conversation];
    v8 = [(SMInitiatorService *)self _createInitiatorCacheManagerForSessionID:sessionID2 conversation:conversation];
  }

  [v8 onBecomingNonActiveDevice:deviceCopy];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorClient);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      sessionUUID2 = [v8 sessionUUID];
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      v18 = NSStringFromSelector(a2);
      v23 = 138412802;
      v24 = sessionUUID2;
      v25 = 2112;
      v26 = v17;
      v27 = 2112;
      v28 = v18;
      _os_log_impl(&dword_2304B3000, v14, OS_LOG_TYPE_INFO, "#SafetyCache,Initiator,sessionID:%@,%@,%@,notify cache manager to become non-active", &v23, 0x20u);
    }
  }
}

- (void)respondToNotificationWithIdentifier:(id)identifier sessionIdentifier:(id)sessionIdentifier actionIdentifier:(id)actionIdentifier handler:(id)handler
{
  identifierCopy = identifier;
  sessionIdentifierCopy = sessionIdentifier;
  actionIdentifierCopy = actionIdentifier;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __101__SMInitiatorService_respondToNotificationWithIdentifier_sessionIdentifier_actionIdentifier_handler___block_invoke;
  block[3] = &unk_2788C5580;
  block[4] = self;
  v20 = identifierCopy;
  v21 = sessionIdentifierCopy;
  v22 = actionIdentifierCopy;
  v23 = handlerCopy;
  v15 = handlerCopy;
  v16 = actionIdentifierCopy;
  v17 = sessionIdentifierCopy;
  v18 = identifierCopy;
  dispatch_async(queue, block);
}

- (void)_respondToNotificationWithIdentifier:(id)identifier sessionIdentifier:(id)sessionIdentifier actionIdentifier:(id)actionIdentifier handler:(id)handler
{
  identifierCopy = identifier;
  sessionIdentifierCopy = sessionIdentifier;
  actionIdentifierCopy = actionIdentifier;
  handlerCopy = handler;
  if ([(SMInitiatorService *)self _hasSetupObjectsDependentOnPersistenceStack])
  {
    sessionManager = [(SMInitiatorService *)self sessionManager];
    [sessionManager respondToNotificationWithIdentifier:identifierCopy sessionIdentifier:sessionIdentifierCopy actionIdentifier:actionIdentifierCopy handler:handlerCopy];
  }

  else
  {
    dispatcher = [(SMInitiatorService *)self dispatcher];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __102__SMInitiatorService__respondToNotificationWithIdentifier_sessionIdentifier_actionIdentifier_handler___block_invoke;
    v20[3] = &unk_2788C5580;
    v20[4] = self;
    v21 = identifierCopy;
    v22 = sessionIdentifierCopy;
    v23 = actionIdentifierCopy;
    v24 = handlerCopy;
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    v19 = NSStringFromSelector(a2);
    [dispatcher enqueueBlock:v20 description:{@"%@-%@", v18, v19}];
  }
}

- (id)convertEligibilityToSMErrorWithInitiator:(int64_t)initiator receiver:(int64_t)receiver
{
  v21[3] = *MEMORY[0x277D85DE8];
  if (initiator == 1)
  {
    if (receiver == 1)
    {
      v5 = 0;
      goto LABEL_7;
    }

    v7 = [(SMInitiatorService *)self convertReceiverEligibilityToSMError:receiver];
    v8 = objc_alloc(MEMORY[0x277CCA9B8]);
    v9 = *MEMORY[0x277D4ACD0];
    v18[0] = *MEMORY[0x277CCA450];
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Receiver eligibility failure"];
    v19[0] = v10;
    v18[1] = *MEMORY[0x277D4AD18];
    v11 = [MEMORY[0x277CCABB0] numberWithInteger:1];
    v19[1] = v11;
    v18[2] = *MEMORY[0x277D4AD48];
    v12 = [MEMORY[0x277CCABB0] numberWithInteger:receiver];
    v19[2] = v12;
    v13 = MEMORY[0x277CBEAC0];
    v14 = v19;
    v15 = v18;
  }

  else
  {
    v7 = [(SMInitiatorService *)self convertInitiatorEligibilityToSMError:?];
    v8 = objc_alloc(MEMORY[0x277CCA9B8]);
    v9 = *MEMORY[0x277D4ACD0];
    v20[0] = *MEMORY[0x277CCA450];
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Initiator eligibility failure"];
    v21[0] = v10;
    v20[1] = *MEMORY[0x277D4AD18];
    v11 = [MEMORY[0x277CCABB0] numberWithInteger:initiator];
    v21[1] = v11;
    v20[2] = *MEMORY[0x277D4AD48];
    v12 = [MEMORY[0x277CCABB0] numberWithInteger:receiver];
    v21[2] = v12;
    v13 = MEMORY[0x277CBEAC0];
    v14 = v21;
    v15 = v20;
  }

  v16 = [v13 dictionaryWithObjects:v14 forKeys:v15 count:3];
  v5 = [v8 initWithDomain:v9 code:v7 userInfo:v16];

LABEL_7:

  return v5;
}

- (int64_t)convertInitiatorEligibilityToSMError:(int64_t)error
{
  if ((error - 2) > 0xB)
  {
    return 25;
  }

  else
  {
    return qword_230B01088[error - 2];
  }
}

- (int64_t)convertReceiverEligibilityToSMError:(int64_t)error
{
  if ((error - 2) >= 6)
  {
    return 34;
  }

  else
  {
    return error + 33;
  }
}

- (void)_shutdownWithHandler:(id)handler
{
  handlerCopy = handler;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v13 = 0;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "Shutdown Initiator Service", v13, 2u);
    }
  }

  sessionStore = [(SMInitiatorService *)self sessionStore];
  [sessionStore removeObserver:self];

  safetyCacheStore = [(SMInitiatorService *)self safetyCacheStore];
  [safetyCacheStore removeObserver:self];

  sessionManager = [(SMInitiatorService *)self sessionManager];
  [sessionManager removeObserver:self];

  dispatcher = [(SMInitiatorService *)self dispatcher];
  [dispatcher shutdown];

  messagingService = [(SMInitiatorService *)self messagingService];
  [messagingService removeObserver:self];

  healthKitManager = [(SMInitiatorService *)self healthKitManager];
  [healthKitManager removeObserver:self];

  sessionMetricManager = self->_sessionMetricManager;
  self->_sessionMetricManager = 0;

  handlerCopy[2](handlerCopy, 0);
}

@end