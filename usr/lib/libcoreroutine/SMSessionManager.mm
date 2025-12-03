@interface SMSessionManager
+ (id)SessionHandoffRebootReconciliationDecisionToString:(unint64_t)string;
+ (id)SessionHandoffRebootReconciliationStateToString:(unint64_t)string;
- (BOOL)_canDeviceModifyState;
- (BOOL)_isActiveDevice;
- (BOOL)_isActiveSessionDetailsFetchAttemptFailed;
- (BOOL)_isActiveSessionDetailsFetchedFromCloudKitSinceBoot;
- (BOOL)_isActiveSessionDetailsLocalRecordExpired;
- (BOOL)_isActiveSessionDetailsOutOfSync;
- (BOOL)_isEffectivePairedDeviceNearby;
- (BOOL)_isEffectivePairedDeviceSameAsActiveDeviceWithIdentifier:(id)identifier;
- (BOOL)_isEligibleOutOfOrderEndSessionMessage:(id)message currentSessionManagerState:(id)state;
- (BOOL)_isEligibleOutOfOrderStateSyncMessage:(id)message currentSessionManagerState:(id)state;
- (BOOL)_isEligibleRecentHandoffMessage:(id)message currentSessionManagerState:(id)state;
- (BOOL)_isEligibleToBecomeNonActiveDeviceForHandoffStateSyncMessage:(id)message;
- (BOOL)_isEligibleToProcessSessionTypeKeyReleaseMessage:(id)message;
- (BOOL)_isEligibleToSendStateUpdateReqMessageAfterBootstrap:(id)bootstrap isActiveDevice:(BOOL)device;
- (BOOL)_isEligibleTransitionFromStateSyncMessage:(id)message currentSessionManagerState:(id)state;
- (BOOL)_isLocalStateInSyncWithActiveSessionDetails:(id)details deviceSessionManagerState:(id)state;
- (BOOL)_isMultiDeviceSetupForLocalState:(id)state;
- (BOOL)_isRemoteSessionEndForPreviousState:(id)state nextState:(id)nextState;
- (BOOL)_isSessionManagerStateStaleToHandoff;
- (BOOL)_isWatchDeviceEligibleForHandoff;
- (BOOL)_performStateTransitionTo:(id)to transitionType:(unint64_t)type handler:(id)handler;
- (BOOL)_sessionSupportsHandoff;
- (BOOL)_shouldAlertNowWithTargetAlertDate:(id)date;
- (BOOL)_shouldExitHysteresisState:(unint64_t)state nearbyDeviceConnected:(BOOL)connected;
- (BOOL)_shouldRetryForHandoffError:(id)error retryCount:(unint64_t)count;
- (BOOL)_stateValidForSendSessionEndMessageRetry:(id)retry;
- (BOOL)_stateValidForSendingEndSessionMessage:(id)message;
- (BOOL)_stateValidForSessionResume:(id)resume;
- (SMSessionManager)initWithAuthorizationManager:(id)manager biomeManager:(id)biomeManager contactsManager:(id)contactsManager defaultsManager:(id)defaultsManager locationManager:(id)locationManager platform:(id)platform sessionMetricManager:(id)metricManager sessionStore:(id)self0 messagingService:(id)self1 carPlayAlertManager:(id)self2 observers:(id)self3 activeSessionDetailsDelegate:(id)self4 wristStateManager:(id)self5 appDeletionManager:(id)self6 healthKitManager:(id)self7 emergencyCallManager:(id)self8;
- (id)_checkDefaultsForCacheReleaseDateWithState:(id)state;
- (id)_getMostRecentSessionState;
- (id)_stateTransitionDecisionToState:(id)state transitionType:(unint64_t)type;
- (id)_updateDestinationForRoundTripSessionConfiguration:(id)configuration;
- (id)checkSessionIDAndCanDeviceModifyStateWithSelector:(SEL)selector sessionID:(id)d;
- (id)checkSessionIDCanDeviceModifyStateAndSessionStateWithSelector:(SEL)selector sessionID:(id)d validSessionStates:(id)states;
- (id)checkSessionIDWithSelector:(SEL)selector sessionID:(id)d;
- (id)checkSessionStateWithSelector:(SEL)selector validSessionStates:(id)states;
- (id)localState;
- (id)state;
- (unint64_t)_evaluateHandoffRebootReconciliationState:(id)state;
- (unint64_t)_getCurrentHysteresisStateType;
- (unint64_t)_getEndSessionStateWithReason:(unint64_t)reason;
- (unint64_t)_reconciliationDecisionForState:(id)state isActiveDevice:(BOOL)device;
- (unint64_t)_reconciliationForDecisionForCKFetchCompleted:(id)completed;
- (void)_addObserver:(id)observer;
- (void)_becomeActiveDeviceForSessionWithHandler:(id)handler;
- (void)_bootstrapHysteresisState;
- (void)_bootstrapToState;
- (void)_cancelMagnetBreakTimerAndExitHysteresisState;
- (void)_checkIfHandoffCriteriaSatisfiedForState:(id)state handler:(id)handler;
- (void)_checkInitiatorEligibilityWithHandoffType:(int64_t)type completion:(id)completion;
- (void)_clearActiveSessionDetailsTimeoutTimer;
- (void)_clearHysteresisState;
- (void)_endRemoteSessionForSessionID:(id)d reason:(unint64_t)reason handler:(id)handler;
- (void)_endSessionForSessionID:(id)d reason:(unint64_t)reason handler:(id)handler;
- (void)_handleMagnetBreakPhone;
- (void)_handleMagnetConnect:(int64_t)connect;
- (void)_handleTransitionToStateAfterBootstrap:(id)bootstrap isActiveDevice:(BOOL)device;
- (void)_handoffSessionForSessionID:(id)d retryCount:(unint64_t)count handler:(id)handler;
- (void)_initializeSessionWithSessionID:(id)d conversation:(id)conversation handler:(id)handler;
- (void)_invalidateScreenLockMonitor;
- (void)_invalidateSessionManagerXPCTimerAlarms;
- (void)_invalidateTimer:(id)timer;
- (void)_modifyRemoteSessionWithConfiguration:(id)configuration handler:(id)handler;
- (void)_modifySessionWithConfiguration:(id)configuration handler:(id)handler;
- (void)_notifyObserversForBecomingActiveDevice;
- (void)_notifyObserversForBecomingNonActiveDevice;
- (void)_notifyObserversForConfigurationChange;
- (void)_notifyObserversForLocalStateChange;
- (void)_notifyObserversForSecondarySOSTrigger;
- (void)_notifyObserversForSessionEndForActiveDevice:(BOOL)device;
- (void)_notifyObserversForSessionResume;
- (void)_notifyObserversForStart;
- (void)_notifyObserversForStateChangeWithTransitionType:(unint64_t)type;
- (void)_notifyObserversForTriggerResponse;
- (void)_onActiveSessionDetailsFetchAttemptFromCKCompleted:(id)completed success:(BOOL)success error:(id)error;
- (void)_onActiveSessionDetailsTimeoutTimerExpiry;
- (void)_onDeletedConversation:(id)conversation handler:(id)handler;
- (void)_onDeletedMessage:(id)message handler:(id)handler;
- (void)_onEmergencyCallEnded;
- (void)_onEmergencyCallStarted;
- (void)_onHandoffRetryTimerExpiry;
- (void)_onHealthKitManagerNotification:(id)notification;
- (void)_onMessagesAppUninstalled;
- (void)_onScheduledSendForSessionID:(id)d handler:(id)handler;
- (void)_onSessionStoreNotification:(id)notification;
- (void)_onWristStateChangeNotification:(id)notification;
- (void)_performActionsAndUpdatesUponStateTransitionWithType:(unint64_t)type;
- (void)_performStateSyncOriginatedTransitionTo:(id)to transitionType:(unint64_t)type handler:(id)handler;
- (void)_playCacheReleaseAndUpdatingSound;
- (void)_postAnomalyAlert;
- (void)_postCacheReleaseAndUpdatingWithTargetDate:(id)date;
- (void)_postEndAwarenessLiveActivity;
- (void)_processNearbyEffectivePairedDeviceChanged:(id)changed;
- (void)_registerForConnectivityNotifications;
- (void)_removeObserver:(id)observer;
- (void)_resetInitializationWithHandler:(id)handler;
- (void)_resetPendingSendSessionEndMessage;
- (void)_respondToTriggerPromptForSessionID:(id)d response:(int64_t)response handler:(id)handler;
- (void)_respondToTriggerPromptWithRemoteControlSessionID:(id)d response:(int64_t)response handler:(id)handler;
- (void)_sessionInitializedWithAllowReadToken:(id)token safetyCacheKey:(id)key scheduledSendMessageGUID:(id)d completionHandler:(id)handler;
- (void)_setHysteresisState:(unint64_t)state;
- (void)_setPendingSendSessionEndMessageWithReason:(unint64_t)reason associatedGUID:(id)d;
- (void)_setUpCacheReleaseTimer;
- (void)_setUpWorkoutTimeouts;
- (void)_setupAnomalyAlerts;
- (void)_setupAnomalyAlertsOnResume;
- (void)_setupTimerAndLockMonitorForEndAwareness;
- (void)_setupTimerForAnomaly;
- (void)_setupWithObservers:(id)observers;
- (void)_setupWorkoutTimeoutWithFireDate:(id)date;
- (void)_showUserDisabledConnectivityAlert;
- (void)_startActiveSessionDetailsTimerWithLatency:(double)latency;
- (void)_startHandoffRetryTimerWithLatency:(double)latency sessionID:(id)d retryCount:(unint64_t)count handoffCompletion:(id)completion;
- (void)_stopPlayingCacheReleaseAndUpdatingSound;
- (void)_tearDownWorkoutTimeouts;
- (void)_teardownAnomalyAlerts;
- (void)_terminateSessionWithSessionID:(id)d;
- (void)_transitionToState:(id)state transitionType:(unint64_t)type;
- (void)_updateActivityWithState:(id)state shouldNotify:(BOOL)notify;
- (void)_updateConnectivityAndStatusSignalsObserverUponStateTransition;
- (void)_updateLastLocationWithLocations:(id)locations;
- (void)_updateLocationObserverUponStateTransition;
- (void)_updateReceiverWithEstimatedEndDate:(id)date coarseEstimatedEndDate:(id)endDate sessionID:(id)d;
- (void)_updateReceiverWithLowPowerModeWarningStateUpdate:(int64_t)update sessionID:(id)d;
- (void)_updateSessionWithConversation:(id)conversation sosReceivers:(id)receivers handler:(id)handler;
- (void)_updateSessionWithWorkoutSnapshot:(id)snapshot handler:(id)handler;
- (void)_updateTimersUponStateTransition:(unint64_t)transition;
- (void)_updateUnsupportedSeparationStateIfNeededWithNotify:(BOOL)notify;
- (void)_updateUnsupportedSeparationStateWithNewState:(BOOL)state shouldNotify:(BOOL)notify;
- (void)_updateUserDisabledConnectivityStatus;
- (void)addObserver:(id)observer;
- (void)bootstrapToState;
- (void)cancelInitializationForSessionID:(id)d handler:(id)handler;
- (void)cancelInitializationWithCompletion:(id)completion;
- (void)endSessionForSessionID:(id)d reason:(unint64_t)reason completion:(id)completion;
- (void)fetchCurrentLocalSessionStateWithHandler:(id)handler;
- (void)fetchCurrentSessionStateWithCompletion:(id)completion;
- (void)fetchSOSReceiversWithCompletion:(id)completion;
- (void)handoffSessionForSessionID:(id)d handler:(id)handler;
- (void)iMessageGroupDisplayNameChangedFor:(id)for;
- (void)iMessageGroupMembershipChangedFor:(id)for;
- (void)initializeSessionWithConversation:(id)conversation completion:(id)completion;
- (void)initializeSessionWithSessionID:(id)d conversation:(id)conversation handler:(id)handler;
- (void)kickedFromIMessageGroupWith:(id)with;
- (void)logSignPostForStateTransition:(id)transition;
- (void)modifySessionWithConfiguration:(id)configuration handler:(id)handler;
- (void)onActiveSessionDetailsFetchAttemptFromCKCompleted:(id)completed success:(BOOL)success error:(id)error;
- (void)onDataSettingsChangedNotification;
- (void)onDeletedConversation:(id)conversation handler:(id)handler;
- (void)onDeletedMessage:(id)message handler:(id)handler;
- (void)onEmergencyCallEnded;
- (void)onEmergencyCallStarted;
- (void)onHealthKitManagerNotification:(id)notification;
- (void)onLocationNotification:(id)notification;
- (void)onMessagesAppUninstalled;
- (void)onScheduledSendForSessionID:(id)d;
- (void)onScheduledSendMessageCanceledForSessionID:(id)d guid:(id)guid;
- (void)onScheduledSendMessageScheduledForSessionID:(id)d guid:(id)guid date:(id)date;
- (void)onSessionStartMessageSendResultWithMessage:(id)message messageGUID:(id)d success:(BOOL)success error:(id)error;
- (void)onSessionStoreNotification:(id)notification;
- (void)onWristStateChangeNotification:(id)notification;
- (void)overrideMagnetBreakIntervalIfNeeded;
- (void)processEmergencyContactsNotifiedMessage:(id)message;
- (void)processModifySessionConfigurationRemoteControlMessage:(id)message;
- (void)processNearbyEffectivePairedDeviceChanged:(id)changed;
- (void)processResponseToTriggerPromptRemoteControlMessage:(id)message;
- (void)processSessionEndRemoteControlMessage:(id)message;
- (void)processSessionTypeKeyRelease:(id)release;
- (void)processStateSyncMessage:(id)message;
- (void)processStateSyncUpdateReqMessage:(id)message;
- (void)promptDestinationAnomalyVerificationWithContext:(id)context;
- (void)promptDestinationAnomalyVerificationWithContext:(id)context handler:(id)handler;
- (void)promptDirectTriggerWithContext:(id)context;
- (void)promptEstimatedEndDateUpdateWithContext:(id)context;
- (void)promptRoundTripAnomalyVerificationWithContext:(id)context;
- (void)promptRoundTripAnomalyVerificationWithContext:(id)context handler:(id)handler;
- (void)promptSafeArrivalWithContext:(id)context;
- (void)promptSafeArrivalWithContext:(id)context handler:(id)handler;
- (void)promptTimerEndedVerificationWithContext:(id)context;
- (void)promptTimerEndedVerificationWithContext:(id)context handler:(id)handler;
- (void)promptWorkoutAnomalyVerificationWithContext:(id)context;
- (void)promptWorkoutAnomalyVerificationWithContext:(id)context handler:(id)handler;
- (void)promptWorkoutSessionEndVerificationWithContext:(id)context handlers:(id)handlers;
- (void)removeObserver:(id)observer;
- (void)respondToNotificationWithIdentifier:(id)identifier sessionIdentifier:(id)sessionIdentifier actionIdentifier:(id)actionIdentifier handler:(id)handler;
- (void)respondToTriggerPromptForSessionID:(id)d response:(int64_t)response handler:(id)handler;
- (void)sendSafetyCacheForSessionID:(id)d handler:(id)handler;
- (void)sendSessionEndMessageWithReason:(unint64_t)reason associatedGUID:(id)d state:(id)state;
- (void)sessionInitializedWithSessionID:(id)d allowReadToken:(id)token safetyCacheKey:(id)key scheduledSendMessageGUID:(id)iD completionHandler:(id)handler;
- (void)setSessionStoreAvailability:(unint64_t)availability;
- (void)setupWarningStates;
- (void)setupWithObservers:(id)observers;
- (void)startSessionWithConfiguration:(id)configuration completion:(id)completion;
- (void)storeManagerStatusInStore:(unint64_t)store completion:(id)completion;
- (void)terminateSessionWithSessionID:(id)d;
- (void)updateManagerStatusInStoreWithCompletion:(id)completion;
- (void)updateUserWithContext:(id)context;
- (void)updateUserWithTriggerContext:(id)context;
@end

@implementation SMSessionManager

- (SMSessionManager)initWithAuthorizationManager:(id)manager biomeManager:(id)biomeManager contactsManager:(id)contactsManager defaultsManager:(id)defaultsManager locationManager:(id)locationManager platform:(id)platform sessionMetricManager:(id)metricManager sessionStore:(id)self0 messagingService:(id)self1 carPlayAlertManager:(id)self2 observers:(id)self3 activeSessionDetailsDelegate:(id)self4 wristStateManager:(id)self5 appDeletionManager:(id)self6 healthKitManager:(id)self7 emergencyCallManager:(id)self8
{
  v109 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  biomeManagerCopy = biomeManager;
  contactsManagerCopy = contactsManager;
  contactsManagerCopy2 = contactsManager;
  defaultsManagerCopy = defaultsManager;
  locationManagerCopy = locationManager;
  locationManagerCopy2 = locationManager;
  platformCopy = platform;
  platformCopy2 = platform;
  metricManagerCopy = metricManager;
  storeCopy = store;
  serviceCopy = service;
  alertManagerCopy = alertManager;
  observersCopy = observers;
  delegateCopy = delegate;
  stateManagerCopy = stateManager;
  deletionManagerCopy = deletionManager;
  kitManagerCopy = kitManager;
  callManagerCopy = callManager;
  v90 = locationManagerCopy2;
  if (locationManagerCopy2)
  {
    if (metricManagerCopy)
    {
      v25 = storeCopy;
      selfCopy3 = self;
      if (storeCopy)
      {
        if (alertManagerCopy)
        {
          v77 = metricManagerCopy;
          v98.receiver = self;
          v98.super_class = SMSessionManager;
          v27 = [(SMSessionManager *)&v98 init];
          v28 = v27;
          if (v27)
          {
            objc_storeStrong(&v27->_authorizationManager, manager);
            objc_storeStrong(&v28->_biomeManager, biomeManager);
            objc_storeStrong(&v28->_contactsManager, contactsManagerCopy);
            objc_storeStrong(&v28->_defaultsManager, defaultsManager);
            objc_storeStrong(&v28->_locationManager, locationManagerCopy);
            objc_storeStrong(&v28->_platform, platformCopy);
            objc_storeStrong(&v28->_sessionMetricManager, metricManager);
            objc_storeStrong(&v28->_sessionStore, store);
            v29 = objc_alloc_init(MEMORY[0x277D4ABB0]);
            state = v28->_state;
            v28->_state = v29;

            v31 = objc_alloc_init(MEMORY[0x277D4AB20]);
            localState = v28->_localState;
            v28->_localState = v31;

            v33 = [MEMORY[0x277CCAA50] hashTableWithOptions:517];
            observers = v28->_observers;
            v28->_observers = v33;

            v35 = v28;
            v36 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              uTF8String = [v35 UTF8String];
            }

            else
            {
              v42 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%p", objc_opt_class(), v35];
              uTF8String = [v42 UTF8String];
            }

            v43 = dispatch_queue_create(uTF8String, v36);

            v44 = v35[17];
            v35[17] = v43;

            objc_storeStrong(v35 + 36, service);
            objc_storeStrong(v35 + 38, alertManager);
            objc_storeStrong(v35 + 46, deletionManager);
            [v35[46] addObserver:v35];
            v35[10] = 0;
            v35[33] = 0;
            v35[34] = 0;
            defaultsManager = v28->_defaultsManager;
            v46 = *MEMORY[0x277D4AC60];
            v47 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D4AC60]];
            v48 = [(RTDefaultsManager *)defaultsManager objectForKey:@"RTDefaultsSessionManagerCacheReleaseMaxDurationKey" value:v47];
            [v48 doubleValue];
            v35[9] = v49;

            if (*(v35 + 9) != v46 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              v50 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
              if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
              {
                v51 = v35[9];
                *buf = 136316162;
                v100 = "[SMSessionManager initWithAuthorizationManager:biomeManager:contactsManager:defaultsManager:locationManager:platform:sessionMetricManager:sessionStore:messagingService:carPlayAlertManager:observers:activeSessionDetailsDelegate:wristStateManager:appDeletionManager:healthKitManager:emergencyCallManager:]";
                v101 = 2080;
                v102 = "overriding cache release max duration";
                v103 = 2048;
                v104 = *&v46;
                v105 = 2048;
                v106 = v51;
                v107 = 2112;
                v108 = @"RTDefaultsSessionManagerCacheReleaseMaxDurationKey";
                _os_log_impl(&dword_2304B3000, v50, OS_LOG_TYPE_INFO, "%s, %s, original value, %.2f, overridden value, %.2f, by defaultsKey, %@", buf, 0x34u);
              }
            }

            defaultsManager = [v35 defaultsManager];
            v53 = *MEMORY[0x277D4ADF0];
            v54 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D4ADF0]];
            v55 = [defaultsManager objectForKey:@"RTDefaultsSessionManagerSendSessionEndMessageTimeoutKey" value:v54];
            [v55 doubleValue];
            v35[14] = v56;

            if (*(v35 + 14) != v53 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              v57 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
              if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
              {
                v58 = v35[14];
                *buf = 136316162;
                v100 = "[SMSessionManager initWithAuthorizationManager:biomeManager:contactsManager:defaultsManager:locationManager:platform:sessionMetricManager:sessionStore:messagingService:carPlayAlertManager:observers:activeSessionDetailsDelegate:wristStateManager:appDeletionManager:healthKitManager:emergencyCallManager:]";
                v101 = 2080;
                v102 = "overriding send session end message timeout";
                v103 = 2048;
                v104 = *&v53;
                v105 = 2048;
                v106 = v58;
                v107 = 2112;
                v108 = @"RTDefaultsSessionManagerSendSessionEndMessageTimeoutKey";
                _os_log_impl(&dword_2304B3000, v57, OS_LOG_TYPE_INFO, "%s, %s, original value, %.2f, overridden value, %.2f, by defaultsKey, %@", buf, 0x34u);
              }
            }

            defaultsManager2 = [v35 defaultsManager];
            v60 = [MEMORY[0x277CCABB0] numberWithDouble:*&SMMagnetBreakHysteresisCellularTimeInterval];
            v61 = [defaultsManager2 objectForKey:@"RTDefaultsSessionManagerHysteresisMagnetBreakHysteresisTimeIntervalKey" value:v60];
            [v61 doubleValue];
            v35[13] = v62;

            if (*(v35 + 13) != *&SMMagnetBreakHysteresisCellularTimeInterval && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              v63 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
              if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
              {
                v64 = v35[13];
                *buf = 136316162;
                v100 = "[SMSessionManager initWithAuthorizationManager:biomeManager:contactsManager:defaultsManager:locationManager:platform:sessionMetricManager:sessionStore:messagingService:carPlayAlertManager:observers:activeSessionDetailsDelegate:wristStateManager:appDeletionManager:healthKitManager:emergencyCallManager:]";
                v101 = 2080;
                v102 = "overriding magnetBreak timer interval";
                v103 = 2048;
                v104 = SMMagnetBreakHysteresisCellularTimeInterval;
                v105 = 2048;
                v106 = v64;
                v107 = 2112;
                v108 = @"RTDefaultsSessionManagerHysteresisMagnetBreakHysteresisTimeIntervalKey";
                _os_log_impl(&dword_2304B3000, v63, OS_LOG_TYPE_INFO, "%s, %s, original value, %.2f, overridden value, %.2f, by defaultsKey, %@", buf, 0x34u);
              }
            }

            [v35 overrideMagnetBreakIntervalIfNeeded];
            defaultsManager3 = [v35 defaultsManager];
            v66 = *MEMORY[0x277D4ADE8];
            v67 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D4ADE8]];
            v68 = [defaultsManager3 objectForKey:@"RTDefaultsSessionManagerHandoffActiveSessionDetailsFetchTimeout" value:v67];
            [v68 doubleValue];
            v35[7] = v69;

            if (*(v35 + 7) != v66 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              v70 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
              if (os_log_type_enabled(v70, OS_LOG_TYPE_INFO))
              {
                v71 = v35[7];
                *buf = 136316162;
                v100 = "[SMSessionManager initWithAuthorizationManager:biomeManager:contactsManager:defaultsManager:locationManager:platform:sessionMetricManager:sessionStore:messagingService:carPlayAlertManager:observers:activeSessionDetailsDelegate:wristStateManager:appDeletionManager:healthKitManager:emergencyCallManager:]";
                v101 = 2080;
                v102 = "overriding active session details fech timeout";
                v103 = 2048;
                v104 = *&v66;
                v105 = 2048;
                v106 = v71;
                v107 = 2112;
                v108 = @"RTDefaultsSessionManagerHandoffActiveSessionDetailsFetchTimeout";
                _os_log_impl(&dword_2304B3000, v70, OS_LOG_TYPE_INFO, "%s, %s, original value, %.2f, overridden value, %.2f, by defaultsKey, %@", buf, 0x34u);
              }
            }

            objc_storeStrong(v35 + 18, delegate);
            [v35[18] addObserver:v35];
            objc_storeStrong(v35 + 44, stateManager);
            v72 = objc_opt_new();
            v73 = v35[15];
            v35[15] = v72;

            [v35 setupWithObservers:observersCopy];
            objc_storeStrong(v35 + 16, kitManager);
            v74 = v35[16];
            v75 = +[(RTNotification *)RTHealthKitManagerWorkoutSnapshotUpdateNotification];
            [v74 addObserver:v35 selector:sel_onHealthKitManagerNotification_ name:v75];

            *(v35 + 32) = 0;
            objc_storeStrong(v35 + 47, callManager);
            [v35[47] addObserver:v35];
            [v35 setupWarningStates];
          }

          selfCopy3 = v28;
          v39 = selfCopy3;
          metricManagerCopy = v77;
          v25 = storeCopy;
          goto LABEL_42;
        }

        v40 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          v41 = "Invalid parameter not satisfying: carPlayAlertManager";
          goto LABEL_17;
        }

LABEL_18:

        v39 = 0;
        goto LABEL_42;
      }

      v40 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (!os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_18;
      }

      *buf = 0;
      v41 = "Invalid parameter not satisfying: sessionStore";
    }

    else
    {
      v40 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      v25 = storeCopy;
      selfCopy3 = self;
      if (!os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_18;
      }

      *buf = 0;
      v41 = "Invalid parameter not satisfying: sessionMetricManager";
    }

LABEL_17:
    _os_log_error_impl(&dword_2304B3000, v40, OS_LOG_TYPE_ERROR, v41, buf, 2u);
    goto LABEL_18;
  }

  v38 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2304B3000, v38, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: locationManager", buf, 2u);
  }

  v39 = 0;
  v25 = storeCopy;
  selfCopy3 = self;
LABEL_42:

  return v39;
}

- (void)setupWarningStates
{
  queue = [(SMSessionManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__SMSessionManager_setupWarningStates__block_invoke;
  block[3] = &unk_2788C4EA0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)setupWithObservers:(id)observers
{
  observersCopy = observers;
  queue = [(SMSessionManager *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __39__SMSessionManager_setupWithObservers___block_invoke;
  v7[3] = &unk_2788C4A70;
  v7[4] = self;
  v8 = observersCopy;
  v6 = observersCopy;
  dispatch_async(queue, v7);
}

- (void)_setupWithObservers:(id)observers
{
  v16 = *MEMORY[0x277D85DE8];
  observersCopy = observers;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [observersCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(observersCopy);
        }

        [(SMSessionManager *)self _addObserver:*(*(&v11 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [observersCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  sessionStore = self->_sessionStore;
  v10 = +[(RTNotification *)RTStoreNotificationAvailabilityDidChange];
  [(RTNotifier *)sessionStore addObserver:self selector:sel_onSessionStoreNotification_ name:v10];
}

- (void)overrideMagnetBreakIntervalIfNeeded
{
  queue = [(SMSessionManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__SMSessionManager_overrideMagnetBreakIntervalIfNeeded__block_invoke;
  block[3] = &unk_2788C4EA0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)processResponseToTriggerPromptRemoteControlMessage:(id)message
{
  messageCopy = message;
  queue = [(SMSessionManager *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __71__SMSessionManager_processResponseToTriggerPromptRemoteControlMessage___block_invoke;
  v7[3] = &unk_2788C4A70;
  v8 = messageCopy;
  selfCopy = self;
  v6 = messageCopy;
  dispatch_async(queue, v7);
}

void __71__SMSessionManager_processResponseToTriggerPromptRemoteControlMessage___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = *(a1 + 32);
      *buf = 136315394;
      v15 = "[SMSessionManager processResponseToTriggerPromptRemoteControlMessage:]_block_invoke";
      v16 = 2112;
      v17 = v3;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%s,#RemoteControl, received sessionEndRemoteMessage %@", buf, 0x16u);
    }
  }

  if ([MEMORY[0x277D4AAE0] zelkovaRemoteControlEnabled])
  {
    v4 = [*(a1 + 32) sessionID];

    if (v4)
    {
      if ([*(a1 + 40) _isActiveDevice])
      {
        v5 = *(a1 + 40);
        v6 = [*(a1 + 32) sessionID];
        v7 = [*(a1 + 32) response];
        v12[0] = MEMORY[0x277D85DD0];
        v12[1] = 3221225472;
        v12[2] = __71__SMSessionManager_processResponseToTriggerPromptRemoteControlMessage___block_invoke_146;
        v12[3] = &unk_2788C4730;
        v13 = *(a1 + 32);
        [v5 _respondToTriggerPromptForSessionID:v6 response:v7 handler:v12];

        v8 = v13;
        goto LABEL_15;
      }

      v8 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_15;
      }

      v11 = *(a1 + 32);
      *buf = 136315394;
      v15 = "[SMSessionManager processResponseToTriggerPromptRemoteControlMessage:]_block_invoke";
      v16 = 2112;
      v17 = v11;
      v10 = "%s,#RemoteControl, the device is not active and received a remoteControl endSessionMessage, %@ skipping any action";
    }

    else
    {
      v8 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_15;
      }

      v9 = *(a1 + 32);
      *buf = 136315394;
      v15 = "[SMSessionManager processResponseToTriggerPromptRemoteControlMessage:]_block_invoke";
      v16 = 2112;
      v17 = v9;
      v10 = "%s,#RemoteControl, invalid sessionEndRemoteMessage: %@";
    }

    _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, v10, buf, 0x16u);
    goto LABEL_15;
  }

  if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    return;
  }

  v8 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v15 = "[SMSessionManager processResponseToTriggerPromptRemoteControlMessage:]_block_invoke";
    _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "%s: Zelkova RemoteControl is not enabled", buf, 0xCu);
  }

LABEL_15:
}

void __71__SMSessionManager_processResponseToTriggerPromptRemoteControlMessage___block_invoke_146(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = [*(a1 + 32) sessionID];
      v4 = *(a1 + 32);
      v5 = 136315650;
      v6 = "[SMSessionManager processResponseToTriggerPromptRemoteControlMessage:]_block_invoke";
      v7 = 2112;
      v8 = v3;
      v9 = 2112;
      v10 = v4;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%s,#RemoteControl, triggerToPrompt for session with sessionID %@,  served remoteControl request message, %@", &v5, 0x20u);
    }
  }
}

- (void)processSessionEndRemoteControlMessage:(id)message
{
  messageCopy = message;
  queue = [(SMSessionManager *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__SMSessionManager_processSessionEndRemoteControlMessage___block_invoke;
  v7[3] = &unk_2788C4A70;
  v8 = messageCopy;
  selfCopy = self;
  v6 = messageCopy;
  dispatch_async(queue, v7);
}

void __58__SMSessionManager_processSessionEndRemoteControlMessage___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = *(a1 + 32);
      *buf = 136315394;
      v15 = "[SMSessionManager processSessionEndRemoteControlMessage:]_block_invoke";
      v16 = 2112;
      v17 = v3;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%s,#RemoteControl, received sessionEndRemoteMessage %@", buf, 0x16u);
    }
  }

  if ([MEMORY[0x277D4AAE0] zelkovaRemoteControlEnabled])
  {
    v4 = [*(a1 + 32) sessionID];

    if (v4)
    {
      if ([*(a1 + 40) _isActiveDevice])
      {
        v5 = *(a1 + 40);
        v6 = [*(a1 + 32) sessionID];
        v7 = [*(a1 + 32) sessionEndReason];
        v12[0] = MEMORY[0x277D85DD0];
        v12[1] = 3221225472;
        v12[2] = __58__SMSessionManager_processSessionEndRemoteControlMessage___block_invoke_148;
        v12[3] = &unk_2788C4730;
        v13 = *(a1 + 32);
        [v5 _endSessionForSessionID:v6 reason:v7 handler:v12];

        v8 = v13;
        goto LABEL_15;
      }

      v8 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_15;
      }

      v11 = *(a1 + 32);
      *buf = 136315394;
      v15 = "[SMSessionManager processSessionEndRemoteControlMessage:]_block_invoke";
      v16 = 2112;
      v17 = v11;
      v10 = "%s,#RemoteControl, the device is not active and received a remoteControl endSessionMessage, %@ skipping any action";
    }

    else
    {
      v8 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_15;
      }

      v9 = *(a1 + 32);
      *buf = 136315394;
      v15 = "[SMSessionManager processSessionEndRemoteControlMessage:]_block_invoke";
      v16 = 2112;
      v17 = v9;
      v10 = "%s,#RemoteControl, invalid sessionEndRemoteMessage: %@";
    }

    _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, v10, buf, 0x16u);
    goto LABEL_15;
  }

  if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    return;
  }

  v8 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v15 = "[SMSessionManager processSessionEndRemoteControlMessage:]_block_invoke";
    _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "%s: Zelkova RemoteControl is not enabled", buf, 0xCu);
  }

LABEL_15:
}

void __58__SMSessionManager_processSessionEndRemoteControlMessage___block_invoke_148(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = [*(a1 + 32) sessionID];
      v4 = *(a1 + 32);
      v5 = 136315650;
      v6 = "[SMSessionManager processSessionEndRemoteControlMessage:]_block_invoke";
      v7 = 2112;
      v8 = v3;
      v9 = 2112;
      v10 = v4;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%s,#RemoteControl, Ended session with sessionID %@,  served remoteControl request message, %@", &v5, 0x20u);
    }
  }
}

- (void)processModifySessionConfigurationRemoteControlMessage:(id)message
{
  messageCopy = message;
  queue = [(SMSessionManager *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __74__SMSessionManager_processModifySessionConfigurationRemoteControlMessage___block_invoke;
  v7[3] = &unk_2788C4A70;
  v8 = messageCopy;
  selfCopy = self;
  v6 = messageCopy;
  dispatch_async(queue, v7);
}

void __74__SMSessionManager_processModifySessionConfigurationRemoteControlMessage___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = *(a1 + 32);
      *buf = 136315394;
      v18 = "[SMSessionManager processModifySessionConfigurationRemoteControlMessage:]_block_invoke";
      v19 = 2112;
      v20 = v3;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%s,#RemoteControl, received sessionEndRemoteMessage %@", buf, 0x16u);
    }
  }

  if (([MEMORY[0x277D4AAE0] zelkovaRemoteControlEnabled] & 1) == 0)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      return;
    }

    v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v18 = "[SMSessionManager processModifySessionConfigurationRemoteControlMessage:]_block_invoke";
      _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "%s: Zelkova RemoteControl is not enabled", buf, 0xCu);
    }

    goto LABEL_19;
  }

  v4 = [*(a1 + 32) sessionID];

  if (!v4)
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_19;
    }

    v10 = *(a1 + 32);
    *buf = 136315394;
    v18 = "[SMSessionManager processModifySessionConfigurationRemoteControlMessage:]_block_invoke";
    v19 = 2112;
    v20 = v10;
    v11 = "%s, invalid sessionEndRemoteMessage: %@";
    v12 = v9;
    v13 = 22;
LABEL_22:
    _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, v11, buf, v13);
    goto LABEL_19;
  }

  if ([*(a1 + 40) _isActiveDevice])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = [*(a1 + 32) updatedSessionConfiguration];
        *buf = 136315394;
        v18 = "[SMSessionManager processModifySessionConfigurationRemoteControlMessage:]_block_invoke";
        v19 = 2112;
        v20 = v6;
        _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "%s,#RemoteControl, ready to call _modifySession, remoteControl updatedSessionConfiguration %@", buf, 0x16u);
      }
    }

    v7 = *(a1 + 40);
    v8 = [*(a1 + 32) updatedSessionConfiguration];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __74__SMSessionManager_processModifySessionConfigurationRemoteControlMessage___block_invoke_149;
    v15[3] = &unk_2788C4730;
    v16 = *(a1 + 32);
    [v7 _modifySessionWithConfiguration:v8 handler:v15];

    v9 = v16;
    goto LABEL_19;
  }

  v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v14 = *(a1 + 32);
    *buf = 138412290;
    v18 = v14;
    v11 = "This device is not an active and received a sessionModifyMessage, %@, skipping any action";
    v12 = v9;
    v13 = 12;
    goto LABEL_22;
  }

LABEL_19:
}

void __74__SMSessionManager_processModifySessionConfigurationRemoteControlMessage___block_invoke_149(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = [*(a1 + 32) sessionID];
      v4 = *(a1 + 32);
      v5 = 136315650;
      v6 = "[SMSessionManager processModifySessionConfigurationRemoteControlMessage:]_block_invoke";
      v7 = 2112;
      v8 = v3;
      v9 = 2112;
      v10 = v4;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%s,#RemoteControl, requested to modify session with sessionID %@, remoteControl modifyConfig %@", &v5, 0x20u);
    }
  }
}

- (void)processStateSyncMessage:(id)message
{
  messageCopy = message;
  queue = [(SMSessionManager *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__SMSessionManager_processStateSyncMessage___block_invoke;
  v7[3] = &unk_2788C4A70;
  v8 = messageCopy;
  selfCopy = self;
  v6 = messageCopy;
  dispatch_async(queue, v7);
}

void __44__SMSessionManager_processStateSyncMessage___block_invoke(uint64_t a1)
{
  v44 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) sessionManagerState];

  if (v2)
  {
    v3 = [*(a1 + 40) messagingService];
    v4 = [v3 deviceIdentifier];
    v5 = [*(a1 + 32) sessionManagerState];
    v6 = [v5 activeDeviceIdentifier];
    v7 = [v4 isEqual:v6];

    if (v7)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        return;
      }

      v8 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = *(a1 + 32);
        v38 = 136315395;
        v39 = "[SMSessionManager processStateSyncMessage:]_block_invoke";
        v40 = 2117;
        v41 = v9;
        _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "%s, received state transition message from self, %{sensitive}@", &v38, 0x16u);
      }

      goto LABEL_43;
    }

    v10 = [*(*(a1 + 40) + 8) date];
    v11 = [*(a1 + 32) sessionManagerState];
    v12 = [v11 date];
    if (![v10 isAfterDate:v12])
    {

      goto LABEL_17;
    }

    v13 = [*(*(a1 + 40) + 8) isActiveState];

    if (!v13)
    {
      goto LABEL_18;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v14 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = [*(a1 + 32) sessionManagerState];
        v16 = *(*(a1 + 40) + 8);
        v38 = 136315651;
        v39 = "[SMSessionManager processStateSyncMessage:]_block_invoke";
        v40 = 2117;
        v41 = v15;
        v42 = 2117;
        v43 = v16;
        _os_log_impl(&dword_2304B3000, v14, OS_LOG_TYPE_INFO, "%s, received state transition message with older state: %{sensitive}@, current: %{sensitive}@", &v38, 0x20u);
      }
    }

    if ([*(a1 + 40) _isEligibleOutOfOrderStateSyncMessage:*(a1 + 32) currentSessionManagerState:*(*(a1 + 40) + 8)])
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        goto LABEL_18;
      }

      v10 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v38 = 136315138;
        v39 = "[SMSessionManager processStateSyncMessage:]_block_invoke";
        _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_INFO, "%s, ready to process an out of order message given it's eligible", &v38, 0xCu);
      }

LABEL_17:

LABEL_18:
      if (([*(a1 + 40) _isEligibleTransitionFromStateSyncMessage:*(a1 + 32) currentSessionManagerState:*(*(a1 + 40) + 8)] & 1) == 0)
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          return;
        }

        v8 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          v31 = [*(a1 + 32) sessionManagerState];
          v32 = *(*(a1 + 40) + 8);
          v38 = 136315651;
          v39 = "[SMSessionManager processStateSyncMessage:]_block_invoke";
          v40 = 2117;
          v41 = v31;
          v42 = 2117;
          v43 = v32;
          _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "%s, stateSyncMessage contains invalid transition, stateSyncMessage.state, %{sensitive}@, current.state, %{sensitive}@", &v38, 0x20u);
        }

        goto LABEL_43;
      }

      if ([*(*(a1 + 40) + 8) isActiveState])
      {
        v17 = [*(a1 + 32) sessionManagerState];
        if ([v17 isActiveState])
        {
          v18 = [*(a1 + 40) _isEligibleToBecomeNonActiveDeviceForHandoffStateSyncMessage:*(a1 + 32)];

          if (v18)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
            {
              v19 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
              if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
              {
                v37 = [*(a1 + 32) stateTransitionType];
                v38 = 136315394;
                v39 = "[SMSessionManager processStateSyncMessage:]_block_invoke";
                v40 = 2048;
                v41 = v37;
                _os_log_debug_impl(&dword_2304B3000, v19, OS_LOG_TYPE_DEBUG, "%s evaluating stateTransitionType %lu", &v38, 0x16u);
              }
            }

            v20 = [*(a1 + 32) stateTransitionType];
            if (v20 != 4)
            {
              if (v20 != 2)
              {
                v8 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
                if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
                {
                  v36 = *(a1 + 32);
                  v38 = 136315394;
                  v39 = "[SMSessionManager processStateSyncMessage:]_block_invoke";
                  v40 = 2112;
                  v41 = v36;
                  _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "%s, Received a modifying activeDeviceIdentifier stateSyncMessage, %@, that's not transitionType of SMStateTransitionTypeHandoffBecomeActive or SMStateTransitionTypeStateSyncUpdateReq", &v38, 0x16u);
                }

                goto LABEL_43;
              }

              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
              {
                v21 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
                if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
                {
                  v22 = [*(a1 + 32) sessionManagerState];
                  v23 = [v22 activeDeviceIdentifier];
                  v24 = [*(*(a1 + 40) + 8) activeDeviceIdentifier];
                  v38 = 136315650;
                  v39 = "[SMSessionManager processStateSyncMessage:]_block_invoke";
                  v40 = 2112;
                  v41 = v23;
                  v42 = 2112;
                  v43 = v24;
                  _os_log_impl(&dword_2304B3000, v21, OS_LOG_TYPE_INFO, "%s, received state transition message for a different device than expected: %@, current: %@", &v38, 0x20u);
                }
              }

              v25 = *(a1 + 40);
              v8 = [*(a1 + 32) sessionManagerState];
              v26 = [v8 copy];
              v27 = &__block_literal_global_156;
              v28 = v25;
              v29 = v26;
              v30 = 3;
LABEL_42:
              [v28 _performStateSyncOriginatedTransitionTo:v29 transitionType:v30 handler:v27];

LABEL_43:
              return;
            }

LABEL_41:
            v35 = *(a1 + 40);
            v8 = [*(a1 + 32) sessionManagerState];
            v26 = [v8 copy];
            v28 = v35;
            v29 = v26;
            v30 = 1;
            v27 = 0;
            goto LABEL_42;
          }
        }

        else
        {
        }
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v33 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
        {
          v34 = *(a1 + 32);
          v38 = 136315394;
          v39 = "[SMSessionManager processStateSyncMessage:]_block_invoke";
          v40 = 2112;
          v41 = v34;
          _os_log_impl(&dword_2304B3000, v33, OS_LOG_TYPE_INFO, "%s, notifying for state change in companion device, %@", &v38, 0x16u);
        }
      }

      goto LABEL_41;
    }
  }
}

void __44__SMSessionManager_processStateSyncMessage___block_invoke_150(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = 136315394;
      v5 = "[SMSessionManager processStateSyncMessage:]_block_invoke";
      v6 = 2112;
      v7 = v2;
      _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_INFO, "%s, becoming Non Active handler  was called, with error, %@", &v4, 0x16u);
    }
  }
}

- (void)processStateSyncUpdateReqMessage:(id)message
{
  messageCopy = message;
  queue = [(SMSessionManager *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__SMSessionManager_processStateSyncUpdateReqMessage___block_invoke;
  v7[3] = &unk_2788C4A70;
  v8 = messageCopy;
  selfCopy = self;
  v6 = messageCopy;
  dispatch_async(queue, v7);
}

void __53__SMSessionManager_processStateSyncUpdateReqMessage___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = *(a1 + 32);
      v8 = 136315394;
      v9 = "[SMSessionManager processStateSyncUpdateReqMessage:]_block_invoke";
      v10 = 2112;
      v11 = v3;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%s, state update requested, %@", &v8, 0x16u);
    }
  }

  v4 = objc_alloc(MEMORY[0x277D4ABF8]);
  v5 = [*(a1 + 40) state];
  v6 = [v4 initWithSessionManagerState:v5 stateTransitionType:4];

  v7 = [*(a1 + 40) messagingService];
  [v7 sendIDSMessageToMyDevices:v6 completion:&__block_literal_global_155];
}

void __53__SMSessionManager_processStateSyncUpdateReqMessage___block_invoke_152(uint64_t a1, int a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = 136315650;
      v7 = "[SMSessionManager processStateSyncUpdateReqMessage:]_block_invoke";
      v8 = 1024;
      v9 = a2;
      v10 = 2112;
      v11 = v4;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "%s, sent state message with success: %d and error: %@", &v6, 0x1Cu);
    }
  }
}

- (void)processSessionTypeKeyRelease:(id)release
{
  releaseCopy = release;
  queue = [(SMSessionManager *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__SMSessionManager_processSessionTypeKeyRelease___block_invoke;
  v7[3] = &unk_2788C4A70;
  v7[4] = self;
  v8 = releaseCopy;
  v6 = releaseCopy;
  dispatch_async(queue, v7);
}

void __49__SMSessionManager_processSessionTypeKeyRelease___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) _isEligibleToProcessSessionTypeKeyReleaseMessage:*(a1 + 40)])
  {
    v2 = [*(*(a1 + 32) + 8) mutableCopy];
    [v2 setSessionState:4];
    v3 = objc_alloc(MEMORY[0x277D4ABC8]);
    v4 = [*(*(a1 + 32) + 8) configuration];
    v5 = [v4 sessionID];
    v6 = [v3 initWithUpdateReason:1 triggerCategory:15 sessionID:v5];
    [v2 setMonitorContext:v6];

    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __49__SMSessionManager_processSessionTypeKeyRelease___block_invoke_157;
    v13[3] = &unk_2788C4730;
    v7 = *(a1 + 32);
    v14 = *(a1 + 40);
    [v7 _performStateSyncOriginatedTransitionTo:v2 transitionType:1 handler:v13];

LABEL_3:
    return;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v8 = [*(a1 + 32) _isActiveDevice];
      v9 = [*(*(a1 + 32) + 8) configuration];
      v10 = [v9 sessionID];
      v11 = [*(a1 + 40) sessionID];
      v12 = *(a1 + 40);
      *buf = 136316162;
      v16 = "[SMSessionManager processSessionTypeKeyRelease:]_block_invoke";
      v17 = 1024;
      v18 = v8;
      v19 = 2112;
      v20 = v10;
      v21 = 2112;
      v22 = v11;
      v23 = 2112;
      v24 = v12;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%s, isActiveDevice, %{Bool}d, sessionID, %@, message.sessionID, %@, not eligible to process directly SMKeyReleaseMessage, %@", buf, 0x30u);
    }

    goto LABEL_3;
  }
}

void __49__SMSessionManager_processSessionTypeKeyRelease___block_invoke_157(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "[SMSessionManager processSessionTypeKeyRelease:]_block_invoke";
      v9 = 2112;
      v10 = v3;
      _os_log_error_impl(&dword_2304B3000, v4, OS_LOG_TYPE_ERROR, " %s, unable to transition to SMSessionStateCacheReleasedAndUpdating due to, %@", &v7, 0x16u);
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 32);
      v7 = 136315394;
      v8 = "[SMSessionManager processSessionTypeKeyRelease:]_block_invoke";
      v9 = 2112;
      v10 = v6;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "%s, non active device transition completed for SMKeyReleaseMessage, %@", &v7, 0x16u);
    }
  }
}

- (BOOL)_isEligibleToProcessSessionTypeKeyReleaseMessage:(id)message
{
  v18 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  _isActiveDevice = [(SMSessionManager *)self _isActiveDevice];
  if (!_isActiveDevice)
  {
    if ([(SMSessionManagerState *)self->_state sessionState]!= 4 && ([(SMSessionManagerState *)self->_state isEndSessionState]& 1) == 0)
    {
      configuration = [(SMSessionManagerState *)self->_state configuration];
      sessionID = [configuration sessionID];
      sessionID2 = [messageCopy sessionID];
      v11 = [sessionID isEqual:sessionID2];

      if (v11)
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
        {
          v7 = 1;
          goto LABEL_12;
        }

        v6 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_4;
        }

        v14 = 136315394;
        v15 = "[SMSessionManager _isEligibleToProcessSessionTypeKeyReleaseMessage:]";
        v16 = 2112;
        v17 = messageCopy;
        v12 = "%s, non-active device isEligible to process keyReleaseMessage %@";
        goto LABEL_15;
      }
    }

LABEL_11:
    v7 = 0;
    goto LABEL_12;
  }

  if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    goto LABEL_11;
  }

  v6 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v14 = 136315394;
    v15 = "[SMSessionManager _isEligibleToProcessSessionTypeKeyReleaseMessage:]";
    v16 = 2112;
    v17 = messageCopy;
    v12 = "%s, active device, state transition has already been processed, ignores SMKeyReleaseMessage, %@";
LABEL_15:
    _os_log_debug_impl(&dword_2304B3000, v6, OS_LOG_TYPE_DEBUG, v12, &v14, 0x16u);
  }

LABEL_4:
  v7 = !_isActiveDevice;

LABEL_12:
  return v7;
}

- (void)processEmergencyContactsNotifiedMessage:(id)message
{
  messageCopy = message;
  queue = [(SMSessionManager *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60__SMSessionManager_processEmergencyContactsNotifiedMessage___block_invoke;
  v7[3] = &unk_2788C4A70;
  v7[4] = self;
  v8 = messageCopy;
  v6 = messageCopy;
  dispatch_async(queue, v7);
}

void __60__SMSessionManager_processEmergencyContactsNotifiedMessage___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) _isActiveDevice] && (objc_msgSend(*(*(a1 + 32) + 8), "isActiveState") & 1) != 0)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v2 = [*(a1 + 32) observers];
    v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v11;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v11 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v7 = *(*(&v10 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            [v7 onRemoteEmergencyContactsNotified:{objc_msgSend(*(a1 + 40), "triggerCategory")}];
          }
        }

        v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v4);
    }
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      return;
    }

    v2 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v8 = [*(a1 + 32) _isActiveDevice];
      v9 = [*(*(a1 + 32) + 8) isActiveState];
      *buf = 136315650;
      v16 = "[SMSessionManager processEmergencyContactsNotifiedMessage:]_block_invoke";
      v17 = 1024;
      v18 = v8;
      v19 = 1024;
      v20 = v9;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%s, not notifying observers, _isActiveDevice: %d, isActiveState: %d", buf, 0x18u);
    }
  }
}

- (id)state
{
  v2 = [(SMSessionManagerState *)self->_state copy];

  return v2;
}

- (id)localState
{
  v2 = [(SMLocalSessionState *)self->_localState copy];

  return v2;
}

- (void)_registerForConnectivityNotifications
{
  objc_initWeak(&location, self);
  out_token = 0;
  [(SMSessionManager *)self _updateUserDisabledConnectivityStatus];
  uTF8String = [@"com.apple.commcenter.DataSettingsChangedNotification" UTF8String];
  queue = [(SMSessionManager *)self queue];
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __57__SMSessionManager__registerForConnectivityNotifications__block_invoke;
  handler[3] = &unk_2788CA130;
  objc_copyWeak(&v6, &location);
  notify_register_dispatch(uTF8String, &out_token, queue, handler);

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __57__SMSessionManager__registerForConnectivityNotifications__block_invoke(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained onDataSettingsChangedNotification];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = 138412290;
      v4 = @"com.apple.commcenter.DataSettingsChangedNotification";
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "Registering for %@", &v3, 0xCu);
    }
  }
}

- (void)onDataSettingsChangedNotification
{
  queue = [(SMSessionManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__SMSessionManager_onDataSettingsChangedNotification__block_invoke;
  block[3] = &unk_2788C4EA0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_updateUserDisabledConnectivityStatus
{
  v13 = *MEMORY[0x277D85DE8];
  queue = [(SMSessionManager *)self queue];
  v4 = [SMInitiatorEligibility checkAirplaneModeEnabledWithQueue:queue];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v10 = "[SMSessionManager _updateUserDisabledConnectivityStatus]";
      v11 = 1024;
      v12 = v4;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "%s,Session Manager Data Settings Changed, AirplaneMode: %{Bool}d", buf, 0x12u);
    }
  }

  queue2 = [(SMSessionManager *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__SMSessionManager__updateUserDisabledConnectivityStatus__block_invoke;
  v7[3] = &unk_2788D2FC8;
  v8 = v4;
  v7[4] = self;
  [SMInitiatorEligibility checkCellularEnabledWithQueue:queue2 handler:v7];
}

void __57__SMSessionManager__updateUserDisabledConnectivityStatus__block_invoke(uint64_t a1, int a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v14 = 136315650;
      v15 = "[SMSessionManager _updateUserDisabledConnectivityStatus]_block_invoke";
      v16 = 1024;
      v17 = a2;
      v18 = 2112;
      v19 = v5;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%s,Session Manager Data Settings Changed, check cellular eligibility %{Bool}d, error, %@", &v14, 0x1Cu);
    }
  }

  if (a2)
  {
    v7 = *(a1 + 40);
  }

  else
  {
    v7 = 1;
  }

  if ((v7 & 1) != [*(*(a1 + 32) + 16) userDisabledConnectivity])
  {
    [*(*(a1 + 32) + 16) setUserDisabledConnectivity:?];
    v8 = MEMORY[0x277D4AA60];
    v9 = [*(a1 + 32) state];
    [v8 updateActivityWithState:v9 localState:*(*(a1 + 32) + 16) shouldNotify:0];

    [*(a1 + 32) _notifyObserversForLocalStateChange];
    if (v7)
    {
      v10 = [*(a1 + 32) state];
      if ([v10 isMonitoringState])
      {
      }

      else
      {
        v11 = [*(a1 + 32) state];
        v12 = [v11 isAnomalyState];

        if (!v12)
        {
LABEL_14:
          v13 = [*(a1 + 32) sessionMetricManager];
          [v13 onUserDisabledConnectivity];

          goto LABEL_15;
        }
      }

      [*(a1 + 32) _showUserDisabledConnectivityAlert];
      goto LABEL_14;
    }
  }

LABEL_15:
}

- (void)_showUserDisabledConnectivityAlert
{
  v21[4] = *MEMORY[0x277D85DE8];
  disabledConnectivityAlertTitle = [MEMORY[0x277D4AB70] disabledConnectivityAlertTitle];
  disabledConnectivityAlertOKButton = [MEMORY[0x277D4AB70] disabledConnectivityAlertOKButton];
  disabledConnectivityAlertGenericMessage = [MEMORY[0x277D4AB70] disabledConnectivityAlertGenericMessage];
  state = [(SMSessionManager *)self state];
  configuration = [state configuration];
  sessionType = [configuration sessionType];

  if (sessionType == 2)
  {
    disabledConnectivityAlertDestinationMessage = [MEMORY[0x277D4AB70] disabledConnectivityAlertDestinationMessage];

    disabledConnectivityAlertGenericMessage = disabledConnectivityAlertDestinationMessage;
  }

  error = 0;
  v10 = *MEMORY[0x277CBF188];
  v20[0] = *MEMORY[0x277CBF1B0];
  v20[1] = v10;
  v21[0] = MEMORY[0x277CBEC38];
  v21[1] = disabledConnectivityAlertTitle;
  v11 = *MEMORY[0x277CBF1E8];
  v20[2] = *MEMORY[0x277CBF198];
  v20[3] = v11;
  v21[2] = disabledConnectivityAlertGenericMessage;
  v21[3] = disabledConnectivityAlertOKButton;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:4];
  v13 = [v12 mutableCopy];

  v14 = *MEMORY[0x277CBECE8];
  v15 = CFUserNotificationCreate(*MEMORY[0x277CBECE8], 0.0, 3uLL, &error, v13);
  RunLoopSource = CFUserNotificationCreateRunLoopSource(v14, v15, userDisabledConnectivityAlertCallBack, 0);
  if (!RunLoopSource)
  {
    CFUserNotificationCancel(v15);
    if (!v15)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v17 = RunLoopSource;
  Main = CFRunLoopGetMain();
  CFRunLoopAddSource(Main, v17, *MEMORY[0x277CBF048]);
  CFRelease(v17);
  if (v15)
  {
LABEL_5:
    CFRelease(v15);
  }

LABEL_6:
}

- (void)bootstrapToState
{
  queue = [(SMSessionManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__SMSessionManager_bootstrapToState__block_invoke;
  block[3] = &unk_2788C4EA0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_bootstrapToState
{
  v84 = *MEMORY[0x277D85DE8];
  state = [(SMSessionManager *)self state];
  sessionState = [state sessionState];

  if (sessionState)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      return;
    }

    state3 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (!os_log_type_enabled(state3, OS_LOG_TYPE_INFO))
    {
      goto LABEL_42;
    }

    state2 = [(SMSessionManager *)self state];
    *buf = 136315395;
    v79 = "[SMSessionManager _bootstrapToState]";
    v80 = 2117;
    v81 = state2;
    v7 = "%s, Session State is not SMSessionStateUnknown, bootstrap not needed, %{sensitive}@";
    goto LABEL_13;
  }

  if ([(SMSessionManager *)self sessionStoreAvailability]!= 2)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      return;
    }

    state3 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(state3, OS_LOG_TYPE_INFO))
    {
      state2 = [RTStore availabilityToString:[(SMSessionManager *)self sessionStoreAvailability]];
      *buf = 136315394;
      v79 = "[SMSessionManager _bootstrapToState]";
      v80 = 2112;
      v81 = state2;
      v7 = "%s, Deferring - Session Store is not available, %@";
LABEL_13:
      _os_log_impl(&dword_2304B3000, state3, OS_LOG_TYPE_INFO, v7, buf, 0x16u);

      goto LABEL_42;
    }

    goto LABEL_42;
  }

  status = [(SMSessionManager *)self status];
  state3 = [status state];

  activeDeviceIdentifier = [state3 activeDeviceIdentifier];
  messagingService = [(SMSessionManager *)self messagingService];
  deviceIdentifier = [messagingService deviceIdentifier];
  v12 = [activeDeviceIdentifier isEqual:deviceIdentifier];

  [(SMSessionManager *)self setHandoffRebootReconciliationState:[(SMSessionManager *)self _evaluateHandoffRebootReconciliationState:state3]];
  v13 = [(SMSessionManager *)self _reconciliationDecisionForState:state3 isActiveDevice:v12];
  if (v13 != 1)
  {
    v17 = v13;
    v18 = [(SMSessionManager *)self _stateValidForSessionResume:state3];
    if (v17 == 2 && v18)
    {
      [(SMSessionManager *)self _transitionToState:state3 transitionType:1];
      [(SMSessionManager *)self _handleTransitionToStateAfterBootstrap:state3 isActiveDevice:v12];
      goto LABEL_35;
    }

    v19 = [(SMSessionManager *)self _stateValidForSendingEndSessionMessage:state3];
    if (v17 == 2)
    {
      v20 = v12;
    }

    else
    {
      v20 = 0;
    }

    if (v19 && v20)
    {
      v70 = objc_alloc(MEMORY[0x277D4ABB0]);
      configuration = [state3 configuration];
      monitorContext = [state3 monitorContext];
      date = [MEMORY[0x277CBEAA8] date];
      location = [state3 location];
      allowReadToken = [state3 allowReadToken];
      safetyCacheKey = [state3 safetyCacheKey];
      startMessageGUID = [state3 startMessageGUID];
      scheduledSendMessageGUID = [state3 scheduledSendMessageGUID];
      scheduledSendMessageDate = [state3 scheduledSendMessageDate];
      activeDeviceIdentifier2 = [state3 activeDeviceIdentifier];
      estimatedEndDate = [state3 estimatedEndDate];
      coarseEstimatedEndDate = [state3 coarseEstimatedEndDate];
      date2 = [MEMORY[0x277CBEAA8] date];
      v25 = [v70 initWithSessionState:1 configuration:configuration userTriggerResponse:0 monitorContext:monitorContext date:date location:location allowReadToken:allowReadToken safetyCacheKey:safetyCacheKey startMessageGUID:startMessageGUID scheduledSendMessageGUID:scheduledSendMessageGUID scheduledSendMessageDate:scheduledSendMessageDate activeDeviceIdentifier:activeDeviceIdentifier2 estimatedEndDate:estimatedEndDate coarseEstimatedEndDate:coarseEstimatedEndDate estimatedEndDateStatus:0 sessionEndReason:7 sessionStateTransitionDate:date2 activePairedDeviceIdentifier:0];

      [(SMSessionManager *)self _transitionToState:v25 transitionType:1];
      startMessageGUID2 = [v25 startMessageGUID];
      [(SMSessionManager *)self sendSessionEndMessageWithReason:7 associatedGUID:startMessageGUID2 state:v25];

      goto LABEL_35;
    }

    if (v17 == 3)
    {
      activeSessionDetails = [(SMSessionManager *)self activeSessionDetails];
      if (activeSessionDetails)
      {
        v28 = activeSessionDetails;
        activeSessionDetails2 = [(SMSessionManager *)self activeSessionDetails];
        activeDeviceIdentifier3 = [activeSessionDetails2 activeDeviceIdentifier];
        messagingService2 = [(SMSessionManager *)self messagingService];
        deviceIdentifier2 = [messagingService2 deviceIdentifier];
        if ([activeDeviceIdentifier3 isEqual:deviceIdentifier2])
        {
        }

        else
        {
          activeSessionDetails3 = [(SMSessionManager *)self activeSessionDetails];
          sessionID = [activeSessionDetails3 sessionID];
          configuration2 = [state3 configuration];
          [configuration2 sessionID];
          v36 = v76 = activeSessionDetails2;
          v73 = [sessionID isEqual:v36];

          if (v73)
          {
            activeSessionDetails4 = [(SMSessionManager *)self activeSessionDetails];
            activeDeviceIdentifier4 = [activeSessionDetails4 activeDeviceIdentifier];

            v68 = objc_alloc(MEMORY[0x277D4ABB0]);
            sessionState2 = [state3 sessionState];
            configuration3 = [state3 configuration];
            monitorContext2 = [state3 monitorContext];
            date3 = [state3 date];
            location2 = [state3 location];
            allowReadToken2 = [state3 allowReadToken];
            safetyCacheKey2 = [state3 safetyCacheKey];
            startMessageGUID3 = [state3 startMessageGUID];
            scheduledSendMessageGUID2 = [state3 scheduledSendMessageGUID];
            scheduledSendMessageDate2 = [state3 scheduledSendMessageDate];
            estimatedEndDate2 = [state3 estimatedEndDate];
            coarseEstimatedEndDate2 = [state3 coarseEstimatedEndDate];
            sessionStateTransitionDate = [state3 sessionStateTransitionDate];
            messagingService3 = [(SMSessionManager *)self messagingService];
            deviceIdentifier3 = [messagingService3 deviceIdentifier];
            v69 = [v68 initWithSessionState:sessionState2 configuration:configuration3 userTriggerResponse:0 monitorContext:monitorContext2 date:date3 location:location2 allowReadToken:allowReadToken2 safetyCacheKey:safetyCacheKey2 startMessageGUID:startMessageGUID3 scheduledSendMessageGUID:scheduledSendMessageGUID2 scheduledSendMessageDate:scheduledSendMessageDate2 activeDeviceIdentifier:activeDeviceIdentifier4 estimatedEndDate:estimatedEndDate2 coarseEstimatedEndDate:coarseEstimatedEndDate2 estimatedEndDateStatus:0 sessionEndReason:7 sessionStateTransitionDate:sessionStateTransitionDate activePairedDeviceIdentifier:deviceIdentifier3];

            [(SMSessionManager *)self _transitionToState:v69 transitionType:5];
            goto LABEL_35;
          }
        }
      }
    }

    v42 = objc_alloc(MEMORY[0x277D4ABB0]);
    if (state3)
    {
      configuration4 = [state3 configuration];
    }

    else
    {
      configuration4 = 0;
    }

    date4 = [MEMORY[0x277CBEAA8] date];
    messagingService4 = [(SMSessionManager *)self messagingService];
    deviceIdentifier4 = [messagingService4 deviceIdentifier];
    date5 = [MEMORY[0x277CBEAA8] date];
    v48 = [v42 initWithSessionState:1 configuration:configuration4 userTriggerResponse:0 monitorContext:0 date:date4 location:0 allowReadToken:0 safetyCacheKey:0 startMessageGUID:0 scheduledSendMessageGUID:0 scheduledSendMessageDate:0 activeDeviceIdentifier:deviceIdentifier4 estimatedEndDate:0 coarseEstimatedEndDate:0 estimatedEndDateStatus:0 sessionEndReason:0 sessionStateTransitionDate:date5 activePairedDeviceIdentifier:0];

    if (state3)
    {
    }

    [(SMSessionManager *)self _transitionToState:v48 transitionType:1];

LABEL_35:
    defaultsManager = [(SMSessionManager *)self defaultsManager];
    [RTBootInfo setBootSessionIDWithDefaultsManager:defaultsManager defaultsKey:@"SMDefaultsBootInfo"];

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      goto LABEL_42;
    }

    v14 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      state4 = [(SMSessionManager *)self state];
      _isActiveDevice = [(SMSessionManager *)self _isActiveDevice];
      v51 = "NO";
      v79 = "[SMSessionManager _bootstrapToState]";
      *buf = 136315651;
      if (_isActiveDevice)
      {
        v51 = "YES";
      }

      v80 = 2117;
      v81 = state4;
      v82 = 2080;
      v83 = v51;
      _os_log_impl(&dword_2304B3000, v14, OS_LOG_TYPE_INFO, "%s, bootstrapping complete with state, %{sensitive}@, activeDevice %s", buf, 0x20u);
      goto LABEL_40;
    }

LABEL_41:

    goto LABEL_42;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      state4 = [objc_opt_class() SessionHandoffRebootReconciliationStateToString:{-[SMSessionManager handoffRebootReconciliationState](self, "handoffRebootReconciliationState")}];
      v16 = [objc_opt_class() SessionHandoffRebootReconciliationDecisionToString:1];
      *buf = 136315650;
      v79 = "[SMSessionManager _bootstrapToState]";
      v80 = 2112;
      v81 = state4;
      v82 = 2112;
      v83 = v16;
      _os_log_impl(&dword_2304B3000, v14, OS_LOG_TYPE_INFO, "%s, Deferring - Handoff Reboot Reconciliation state, %@, reconciliationDecision, %@", buf, 0x20u);

LABEL_40:
      goto LABEL_41;
    }

    goto LABEL_41;
  }

LABEL_42:
}

- (void)_handleTransitionToStateAfterBootstrap:(id)bootstrap isActiveDevice:(BOOL)device
{
  deviceCopy = device;
  v34 = *MEMORY[0x277D85DE8];
  bootstrapCopy = bootstrap;
  defaultsManager = [(SMSessionManager *)self defaultsManager];
  v8 = [defaultsManager objectForKey:@"RTDefaultsSessionManagerPendingSendSessionEndMessageAssociatedGUIDKey"];

  if (v8)
  {
    if ([(SMSessionManager *)self _stateValidForSendSessionEndMessageRetry:bootstrapCopy])
    {
      defaultsManager2 = [(SMSessionManager *)self defaultsManager];
      v10 = [defaultsManager2 objectForKey:@"RTDefaultsSessionManagerPendingSendSessionEndMessageReasonKey"];
      unsignedIntegerValue = [v10 unsignedIntegerValue];

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v12 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          *buf = 136315650;
          v29 = "[SMSessionManager _handleTransitionToStateAfterBootstrap:isActiveDevice:]";
          v30 = 2048;
          v31 = unsignedIntegerValue;
          v32 = 2112;
          v33 = v8;
          _os_log_impl(&dword_2304B3000, v12, OS_LOG_TYPE_INFO, "%s, resending session end message, reason, %ld, associatedGUID, %@", buf, 0x20u);
        }
      }

      [(SMSessionManager *)self sendSessionEndMessageWithReason:unsignedIntegerValue associatedGUID:v8 state:bootstrapCopy];
    }

    else
    {
      [(SMSessionManager *)self _resetPendingSendSessionEndMessage];
    }
  }

  else if ([(SMSessionManager *)self _isEligibleToSendStateUpdateReqMessageAfterBootstrap:bootstrapCopy isActiveDevice:deviceCopy])
  {
    configuration = [bootstrapCopy configuration];
    sessionID = [configuration sessionID];
    if (sessionID)
    {
      v15 = sessionID;
      activePairedDeviceIdentifier = [bootstrapCopy activePairedDeviceIdentifier];

      if (activePairedDeviceIdentifier)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v17 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            *buf = 136315138;
            v29 = "[SMSessionManager _handleTransitionToStateAfterBootstrap:isActiveDevice:]";
            _os_log_impl(&dword_2304B3000, v17, OS_LOG_TYPE_INFO, "%s, Preparing SMSessionStateUpdateReqMessage", buf, 0xCu);
          }
        }

        configuration2 = [bootstrapCopy configuration];
        sessionID2 = [configuration2 sessionID];

        activeDeviceIdentifier = [bootstrapCopy activeDeviceIdentifier];
        v21 = objc_alloc(MEMORY[0x277D4AC00]);
        date = [MEMORY[0x277CBEAA8] date];
        uUID = [MEMORY[0x277CCAD78] UUID];
        v24 = [v21 initWithDate:date messageID:uUID sessionID:sessionID2 deviceToRequest:activeDeviceIdentifier];

        messagingService = [(SMSessionManager *)self messagingService];
        v26[0] = MEMORY[0x277D85DD0];
        v26[1] = 3221225472;
        v26[2] = __74__SMSessionManager__handleTransitionToStateAfterBootstrap_isActiveDevice___block_invoke;
        v26[3] = &__block_descriptor_33_e20_v20__0B8__NSError_12l;
        v27 = deviceCopy;
        [messagingService sendIDSMessageToPairedDevice:v24 completion:v26];
      }
    }

    else
    {
    }
  }
}

void __74__SMSessionManager__handleTransitionToStateAfterBootstrap_isActiveDevice___block_invoke(uint64_t a1, int a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 32);
      v8 = 136315906;
      v9 = "[SMSessionManager _handleTransitionToStateAfterBootstrap:isActiveDevice:]_block_invoke";
      v10 = 1024;
      v11 = v7;
      v12 = 1024;
      v13 = a2;
      v14 = 2112;
      v15 = v5;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%s, isActiveDevice, %{Bool}d, just completed bootstrap, sent state update request message with success: %d and error: %@", &v8, 0x22u);
    }
  }
}

- (BOOL)_isEligibleToSendStateUpdateReqMessageAfterBootstrap:(id)bootstrap isActiveDevice:(BOOL)device
{
  if (device)
  {
    return 0;
  }

  configuration = [bootstrap configuration];
  sessionSupportsHandoff = [configuration sessionSupportsHandoff];

  return sessionSupportsHandoff ^ 1;
}

- (void)fetchCurrentSessionStateWithCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    queue = [(SMSessionManager *)self queue];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __59__SMSessionManager_fetchCurrentSessionStateWithCompletion___block_invoke;
    v7[3] = &unk_2788C4D38;
    v7[4] = self;
    v8 = completionCopy;
    dispatch_async(queue, v7);

    v6 = v8;
  }

  else
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler", buf, 2u);
    }
  }
}

void __59__SMSessionManager_fetchCurrentSessionStateWithCompletion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) state];
  (*(v2 + 16))(v2, v3, [*(a1 + 32) _canDeviceModifyState], 0);
}

- (void)fetchCurrentLocalSessionStateWithHandler:(id)handler
{
  handlerCopy = handler;
  if (handlerCopy)
  {
    queue = [(SMSessionManager *)self queue];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __61__SMSessionManager_fetchCurrentLocalSessionStateWithHandler___block_invoke;
    v7[3] = &unk_2788C4D38;
    v7[4] = self;
    v8 = handlerCopy;
    dispatch_async(queue, v7);

    v6 = v8;
  }

  else
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler", buf, 2u);
    }
  }
}

void __61__SMSessionManager_fetchCurrentLocalSessionStateWithHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) localState];
  (*(v1 + 16))(v1, v2, 0);
}

- (id)_getMostRecentSessionState
{
  v55[1] = *MEMORY[0x277D85DE8];
  v44 = 0;
  v45 = &v44;
  v46 = 0x3032000000;
  v47 = __Block_byref_object_copy__198;
  v48 = __Block_byref_object_dispose__198;
  v49 = 0;
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy__198;
  v42 = __Block_byref_object_dispose__198;
  v43 = 0;
  sessionStore = self->_sessionStore;
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __46__SMSessionManager__getMostRecentSessionState__block_invoke;
  v37[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
  v37[4] = a2;
  [(SMSessionStore *)sessionStore logStoreWithReason:@"Running sessionStore logStoreWithReason before _getMostRecentSessionState" handler:v37];
  v4 = dispatch_semaphore_create(0);
  sessionStore = [(SMSessionManager *)self sessionStore];
  v30 = MEMORY[0x277D85DD0];
  v31 = 3221225472;
  v32 = __46__SMSessionManager__getMostRecentSessionState__block_invoke_186;
  v33 = &unk_2788D3010;
  v35 = &v44;
  v36 = &v38;
  v6 = v4;
  v34 = v6;
  [sessionStore fetchMostRecentSessionManagerStateWithHandler:&v30];

  v7 = v6;
  v8 = [MEMORY[0x277CBEAA8] now];
  v9 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v7, v9))
  {
    v10 = [MEMORY[0x277CBEAA8] now];
    [v10 timeIntervalSinceDate:v8];
    v12 = v11;
    v13 = objc_opt_new();
    v14 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_1253];
    callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
    v16 = [callStackSymbols filteredArrayUsingPredicate:v14];
    firstObject = [v16 firstObject];

    [v13 submitToCoreAnalytics:firstObject type:1 duration:v12];
    v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2304B3000, v18, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
    }

    v19 = MEMORY[0x277CCA9B8];
    v55[0] = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v55 count:1];
    v21 = [v19 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v20];

    if (v21)
    {
      v22 = v21;

      v23 = 0;
      goto LABEL_8;
    }
  }

  else
  {
    v21 = 0;
  }

  v23 = 1;
LABEL_8:

  v24 = v21;
  if ((v23 & 1) == 0)
  {
    objc_storeStrong(v39 + 5, v21);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v25 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      v26 = v45[5];
      v27 = v39[5];
      *buf = 136315651;
      *&buf[4] = "[SMSessionManager _getMostRecentSessionState]";
      v51 = 2117;
      v52 = v26;
      v53 = 2112;
      v54 = v27;
      _os_log_impl(&dword_2304B3000, v25, OS_LOG_TYPE_INFO, "%s, most recent state, %{sensitive}@, error, %@", buf, 0x20u);
    }
  }

  if (v39[5])
  {
    v28 = 0;
  }

  else
  {
    v28 = v45[5];
  }

  _Block_object_dispose(&v38, 8);
  _Block_object_dispose(&v44, 8);

  return v28;
}

void __46__SMSessionManager__getMostRecentSessionState__block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = NSStringFromSelector(*(a1 + 32));
      v4 = 138412290;
      v5 = v3;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "Finished running sessionStore logStoreWithReason in %@", &v4, 0xCu);
    }
  }
}

void __46__SMSessionManager__getMostRecentSessionState__block_invoke_186(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)_transitionToState:(id)state transitionType:(unint64_t)type
{
  v8 = [state mutableCopy];
  v6 = [(SMSessionManager *)self _stateTransitionDecisionToState:v8 transitionType:type];
  actionBlock = [v6 actionBlock];
  actionBlock[2]();
}

- (BOOL)_stateValidForSessionResume:(id)resume
{
  v25 = *MEMORY[0x277D85DE8];
  resumeCopy = resume;
  if (([resumeCopy isValidState] & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v7 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = [MEMORY[0x277D4ABB0] convertSessionStateToString:{objc_msgSend(resumeCopy, "sessionState")}];
        v21 = 136315394;
        v22 = "[SMSessionManager _stateValidForSessionResume:]";
        v23 = 2112;
        v24 = v8;
        _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "%s, invalid state for session resume, state, %@", &v21, 0x16u);
      }

      goto LABEL_11;
    }

LABEL_17:
    v19 = 0;
    goto LABEL_18;
  }

  defaultsManager = [(SMSessionManager *)self defaultsManager];
  v6 = [RTBootInfo isFirstRunSinceBootWithDefaultsManager:defaultsManager defaultsKey:@"SMDefaultsBootInfo"];

  if (v6 && ([resumeCopy sessionState] == 11 || objc_msgSend(resumeCopy, "sessionState") == 10))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v7 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v21 = 136315138;
        v22 = "[SMSessionManager _stateValidForSessionResume:]";
        _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "%s, ignoring persisted initialized state due to phone reboot", &v21, 0xCu);
      }

LABEL_11:

      goto LABEL_17;
    }

    goto LABEL_17;
  }

  defaultsManager2 = [(SMSessionManager *)self defaultsManager];
  v10 = [defaultsManager2 objectForKey:@"RTDefaultsSessionManagerSessionResumeWindowThresholdKey"];

  if (v10)
  {
    defaultsManager3 = [(SMSessionManager *)self defaultsManager];
    v12 = [defaultsManager3 objectForKey:@"RTDefaultsSessionManagerSessionResumeWindowThresholdKey"];
    [v12 doubleValue];
    v14 = v13;

    if (!resumeCopy)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v14 = *MEMORY[0x277D4ADF8];
    if (!resumeCopy)
    {
      goto LABEL_17;
    }
  }

  configuration = [resumeCopy configuration];
  if (configuration)
  {
    date = [MEMORY[0x277CBEAA8] date];
    date2 = [resumeCopy date];
    [date timeIntervalSinceDate:date2];
    v19 = v18 <= v14;
  }

  else
  {
    v19 = 0;
  }

LABEL_18:
  return v19;
}

- (BOOL)_stateValidForSendSessionEndMessageRetry:(id)retry
{
  retryCopy = retry;
  v4 = [MEMORY[0x277CBEB98] setWithObjects:{&unk_2845A0818, &unk_2845A0830, 0}];
  if (retryCopy)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(retryCopy, "sessionState")}];
    v6 = [v4 containsObject:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)_stateValidForSendingEndSessionMessage:(id)message
{
  messageCopy = message;
  v5 = [MEMORY[0x277CBEB98] setWithObjects:{&unk_2845A0848, &unk_2845A0860, &unk_2845A0878, &unk_2845A0890, &unk_2845A08A8, &unk_2845A08C0, 0}];
  if (messageCopy)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(messageCopy, "sessionState")}];
    if ([v5 containsObject:v6])
    {
      date = [MEMORY[0x277CBEAA8] date];
      date2 = [messageCopy date];
      [date timeIntervalSinceDate:date2];
      v10 = v9;
      [(SMSessionManager *)self sendSessionEndMessageTimeout];
      v12 = v10 <= v11;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)_updateDestinationForRoundTripSessionConfiguration:(id)configuration
{
  v70[1] = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  v57 = 0;
  v58 = &v57;
  v59 = 0x3032000000;
  v60 = __Block_byref_object_copy__198;
  v61 = __Block_byref_object_dispose__198;
  v62 = 0;
  v51 = 0;
  v52 = &v51;
  v53 = 0x3032000000;
  v54 = __Block_byref_object_copy__198;
  v55 = __Block_byref_object_dispose__198;
  v56 = 0;
  v5 = dispatch_semaphore_create(0);
  locationManager = [(SMSessionManager *)self locationManager];
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = __71__SMSessionManager__updateDestinationForRoundTripSessionConfiguration___block_invoke;
  v46[3] = &unk_2788D3038;
  v49 = &v51;
  v50 = &v57;
  v7 = configurationCopy;
  v47 = v7;
  v8 = v5;
  v48 = v8;
  [locationManager fetchCachedLocationWithHandler:v46];

  v9 = v8;
  v10 = [MEMORY[0x277CBEAA8] now];
  v11 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v9, v11))
  {
    v12 = [MEMORY[0x277CBEAA8] now];
    [v12 timeIntervalSinceDate:v10];
    v14 = v13;
    v15 = objc_opt_new();
    v16 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_1253];
    callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
    v18 = [callStackSymbols filteredArrayUsingPredicate:v16];
    firstObject = [v18 firstObject];

    [v15 submitToCoreAnalytics:firstObject type:1 duration:v14];
    v20 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2304B3000, v20, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
    }

    v21 = MEMORY[0x277CCA9B8];
    v70[0] = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v70 count:1];
    v23 = [v21 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v22];

    if (v23)
    {
      v24 = v23;
    }
  }

  else
  {
    v23 = 0;
  }

  v25 = v23;
  if (v25 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v26 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v27 = v58[5];
      v28 = MEMORY[0x277D4ABB0];
      state = [(SMSessionManager *)self state];
      v30 = [v28 convertSessionStateToString:{objc_msgSend(state, "sessionState")}];
      *buf = 136315907;
      *&buf[4] = "[SMSessionManager _updateDestinationForRoundTripSessionConfiguration:]";
      v64 = 2112;
      v65 = v27;
      v66 = 2117;
      v67 = v30;
      v68 = 2112;
      v69 = v25;
      _os_log_impl(&dword_2304B3000, v26, OS_LOG_TYPE_INFO, "%s, current location fetch failed, %@, current state, %{sensitive}@, error, %@", buf, 0x2Au);
    }
  }

  if (v52[5] && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v31 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      v32 = v58[5];
      v33 = MEMORY[0x277D4ABB0];
      state2 = [(SMSessionManager *)self state];
      v35 = [v33 convertSessionStateToString:{objc_msgSend(state2, "sessionState")}];
      v36 = v52[5];
      *buf = 136315907;
      *&buf[4] = "[SMSessionManager _updateDestinationForRoundTripSessionConfiguration:]";
      v64 = 2112;
      v65 = v32;
      v66 = 2117;
      v67 = v35;
      v68 = 2112;
      v69 = v36;
      _os_log_impl(&dword_2304B3000, v31, OS_LOG_TYPE_INFO, "%s, current location fetch failed, %@, current state, %{sensitive}@, error, %@", buf, 0x2Au);
    }
  }

  v37 = objc_alloc(MEMORY[0x277D4AB78]);
  conversation = [v7 conversation];
  sessionID = [v7 sessionID];
  v40 = v58[5];
  v41 = [MEMORY[0x277CBEAA8] now];
  sessionSupportsHandoff = [v7 sessionSupportsHandoff];
  sosReceivers = [v7 sosReceivers];
  v44 = [v37 initRoundTripSessionConfigurationWithConversation:conversation sessionID:sessionID destination:v40 sessionStartDate:v41 userResponseSafeDate:0 sessionSupportsHandoff:sessionSupportsHandoff sosReceivers:sosReceivers];

  _Block_object_dispose(&v51, 8);
  _Block_object_dispose(&v57, 8);

  return v44;
}

void __71__SMSessionManager__updateDestinationForRoundTripSessionConfiguration___block_invoke(uint64_t a1, void *a2, id obj)
{
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), obj);
  v14 = obj;
  v6 = a2;
  v7 = objc_alloc(MEMORY[0x277D4AB88]);
  v8 = *MEMORY[0x277D4ADB8];
  v9 = [*(a1 + 32) destination];
  v10 = [v9 destinationMapItem];
  v11 = [v7 initWithCLLocation:v6 eta:0 radius:4 destinationType:v10 destinationMapItem:v8];

  v12 = *(*(a1 + 56) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;

  dispatch_semaphore_signal(*(a1 + 40));
}

- (void)_invalidateTimer:(id)timer
{
  v10 = *MEMORY[0x277D85DE8];
  timerCopy = timer;
  v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [timerCopy identifier];
    v6 = 136315394;
    v7 = "[SMSessionManager _invalidateTimer:]";
    v8 = 2112;
    v9 = identifier;
    _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_DEFAULT, "%s, invalidating timer with identifier, %@", &v6, 0x16u);
  }

  [timerCopy invalidate];
}

- (id)_checkDefaultsForCacheReleaseDateWithState:(id)state
{
  v21 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  cacheReleaseDate = [stateCopy cacheReleaseDate];
  v6 = [stateCopy sessionState] - 7;
  if (v6 < 8 && ((0x87u >> v6) & 1) != 0)
  {
    v7 = off_2788D3460[v6];
    defaultsManager = [(SMSessionManager *)self defaultsManager];
    v9 = [defaultsManager objectForKey:v7];

    if (!v9)
    {
      goto LABEL_12;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v10 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        [v9 doubleValue];
        v17 = 136315394;
        v18 = "[SMSessionManager _checkDefaultsForCacheReleaseDateWithState:]";
        v19 = 2048;
        v20 = v11;
        _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_INFO, "%s, modifying timer duration to cache release to, %f", &v17, 0x16u);
      }
    }

    sessionStateTransitionDate = [stateCopy sessionStateTransitionDate];
    [v9 doubleValue];
    v13 = [sessionStateTransitionDate dateByAddingTimeInterval:?];

    cacheReleaseDate = v13;
  }

  else
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v16 = [MEMORY[0x277D4ABB0] convertSessionStateToString:{objc_msgSend(stateCopy, "sessionState")}];
      v17 = 136315394;
      v18 = "[SMSessionManager _checkDefaultsForCacheReleaseDateWithState:]";
      v19 = 2112;
      v20 = v16;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "%s, invalid session state, %@", &v17, 0x16u);
    }
  }

LABEL_12:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v17 = 136315394;
      v18 = "[SMSessionManager _checkDefaultsForCacheReleaseDateWithState:]";
      v19 = 2112;
      v20 = cacheReleaseDate;
      _os_log_impl(&dword_2304B3000, v14, OS_LOG_TYPE_INFO, "%s, cache release date set to, %@", &v17, 0x16u);
    }
  }

  return cacheReleaseDate;
}

- (void)_updateReceiverWithEstimatedEndDate:(id)date coarseEstimatedEndDate:(id)endDate sessionID:(id)d
{
  dateCopy = date;
  endDateCopy = endDate;
  dCopy = d;
  v11 = [objc_alloc(MEMORY[0x277D4AAD8]) initWithSessionID:dCopy estimatedEndTime:dateCopy coarseEstimatedEndTime:endDateCopy];
  messagingService = [(SMSessionManager *)self messagingService];
  state = [(SMSessionManager *)self state];
  configuration = [state configuration];
  conversation = [configuration conversation];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __89__SMSessionManager__updateReceiverWithEstimatedEndDate_coarseEstimatedEndDate_sessionID___block_invoke;
  v19[3] = &unk_2788CC598;
  v20 = dateCopy;
  v21 = endDateCopy;
  v22 = dCopy;
  v16 = dCopy;
  v17 = endDateCopy;
  v18 = dateCopy;
  [messagingService sendIDSMessage:v11 toConversation:conversation completion:v19];
}

void __89__SMSessionManager__updateReceiverWithEstimatedEndDate_coarseEstimatedEndDate_sessionID___block_invoke(uint64_t a1, int a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      if (a2)
      {
        v7 = @"succeeded";
      }

      else
      {
        v7 = @"failed";
      }

      v8 = [*(a1 + 32) stringFromDate];
      v9 = [*(a1 + 40) stringFromDate];
      v10 = *(a1 + 48);
      v11 = 136316418;
      v12 = "[SMSessionManager _updateReceiverWithEstimatedEndDate:coarseEstimatedEndDate:sessionID:]_block_invoke";
      v13 = 2112;
      v14 = v7;
      v15 = 2112;
      v16 = v8;
      v17 = 2112;
      v18 = v9;
      v19 = 2112;
      v20 = v10;
      v21 = 2112;
      v22 = v5;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%s, send, %@, estimatedEndDate, %@, coarseEstimatedEndDate, %@, sessionID, %@, error, %@", &v11, 0x3Eu);
    }
  }
}

- (void)_updateReceiverWithLowPowerModeWarningStateUpdate:(int64_t)update sessionID:(id)d
{
  dCopy = d;
  v7 = [objc_alloc(MEMORY[0x277D4AB30]) initWithSessionID:dCopy lowPowerModeWarningState:update];
  messagingService = [(SMSessionManager *)self messagingService];
  state = [(SMSessionManager *)self state];
  configuration = [state configuration];
  conversation = [configuration conversation];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __80__SMSessionManager__updateReceiverWithLowPowerModeWarningStateUpdate_sessionID___block_invoke;
  v13[3] = &unk_2788CCF30;
  v14 = dCopy;
  updateCopy = update;
  v12 = dCopy;
  [messagingService sendIDSMessage:v7 toConversation:conversation completion:v13];
}

void __80__SMSessionManager__updateReceiverWithLowPowerModeWarningStateUpdate_sessionID___block_invoke(uint64_t a1, int a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = [MEMORY[0x277D4AAB0] convertLowPowerModeWarningStateToString:*(a1 + 40)];
      v8 = *(a1 + 32);
      v9 = 136316162;
      v10 = "[SMSessionManager _updateReceiverWithLowPowerModeWarningStateUpdate:sessionID:]_block_invoke";
      v11 = 1024;
      v12 = a2;
      v13 = 2112;
      v14 = v7;
      v15 = 2112;
      v16 = v8;
      v17 = 2112;
      v18 = v5;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%s, send, %{Bool}d, lowPowerModeWarningState, %@, sessionID, %@, error, %@", &v9, 0x30u);
    }
  }
}

- (void)setSessionStoreAvailability:(unint64_t)availability
{
  v19 = *MEMORY[0x277D85DE8];
  if (self->_sessionStoreAvailability != availability)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v6 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = [RTStore availabilityToString:self->_sessionStoreAvailability];
        v8 = [RTStore availabilityToString:availability];
        *buf = 136315650;
        v14 = "[SMSessionManager setSessionStoreAvailability:]";
        v15 = 2112;
        v16 = v7;
        v17 = 2112;
        v18 = v8;
        _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%s, Session Store availability change from , %@, to, %@", buf, 0x20u);
      }
    }

    self->_sessionStoreAvailability = availability;
    if (availability == 2)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          *buf = 136315138;
          v14 = "[SMSessionManager setSessionStoreAvailability:]";
          _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "%s, Session Store available, fetch sessionManagerStatus", buf, 0xCu);
        }
      }

      objc_initWeak(buf, self);
      sessionStore = [(SMSessionManager *)self sessionStore];
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __48__SMSessionManager_setSessionStoreAvailability___block_invoke;
      v11[3] = &unk_2788D3060;
      objc_copyWeak(v12, buf);
      v12[1] = a2;
      [sessionStore fetchSessionStatusWithHandler:v11];

      objc_destroyWeak(v12);
      objc_destroyWeak(buf);
    }
  }
}

void __48__SMSessionManager_setSessionStoreAvailability___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = [WeakRetained queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __48__SMSessionManager_setSessionStoreAvailability___block_invoke_231;
    block[3] = &unk_2788C76F8;
    v13 = v5;
    v14 = v6;
    v15 = v8;
    dispatch_async(v9, block);

    v10 = v13;
  }

  else
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = NSStringFromSelector(*(a1 + 40));
      *buf = 138412290;
      v17 = v11;
      _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "%@,object has been cleaned up", buf, 0xCu);
    }
  }
}

uint64_t __48__SMSessionManager_setSessionStoreAvailability___block_invoke_231(uint64_t a1)
{
  v85[1] = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = [*(a1 + 32) count];
      v4 = *(a1 + 40);
      *buf = 136315650;
      *&buf[4] = "[SMSessionManager setSessionStoreAvailability:]_block_invoke";
      v81 = 2048;
      v82 = v3;
      v83 = 2112;
      v84 = v4;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%s,fetched %lu sessionManagerStatus with error %@", buf, 0x20u);
    }
  }

  v65 = a1;
  if ([*(a1 + 32) count])
  {
    v5 = [*(a1 + 32) firstObject];
    [*(a1 + 48) setStatus:v5];

    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    obj = *(a1 + 32);
    v6 = [obj countByEnumeratingWithState:&v72 objects:v79 count:16];
    if (v6)
    {
      v7 = v6;
      v63 = *v73;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v73 != v63)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v72 + 1) + 8 * i);
          v10 = [v9 state];
          if (v10)
          {
            v11 = v10;
            v12 = [v9 state];
            v13 = [v12 date];
            v14 = [*(v65 + 48) status];
            v15 = [v14 state];
            v16 = [v15 date];
            v17 = [v13 isAfterDate:v16];

            if (v17)
            {
              [*(v65 + 48) setStatus:v9];
            }
          }
        }

        v7 = [obj countByEnumeratingWithState:&v72 objects:v79 count:16];
      }

      while (v7);
    }

    a1 = v65;
    [*(v65 + 48) setStatusStored:1];
  }

  else
  {
    v18 = [*(a1 + 48) _getMostRecentSessionState];
    v19 = objc_alloc(MEMORY[0x277D4ABB8]);
    v20 = objc_opt_new();
    v21 = [v19 initWithIdentifier:v20 stateQueryDate:0 lastSessionIDDuringMagnetBreak:0 state:v18];
    [*(a1 + 48) setStatus:v21];

    v22 = dispatch_semaphore_create(0);
    v23 = *(a1 + 48);
    v76[0] = MEMORY[0x277D85DD0];
    v76[1] = 3221225472;
    v76[2] = __48__SMSessionManager_setSessionStoreAvailability___block_invoke_233;
    v76[3] = &unk_2788C4EA0;
    v24 = v22;
    v77 = v24;
    [v23 updateManagerStatusInStoreWithCompletion:v76];
    v25 = v24;
    v26 = [MEMORY[0x277CBEAA8] now];
    v27 = dispatch_time(0, 3600000000000);
    if (dispatch_semaphore_wait(v25, v27))
    {
      v64 = v18;
      v28 = [MEMORY[0x277CBEAA8] now];
      [v28 timeIntervalSinceDate:v26];
      v30 = v29;
      v31 = objc_opt_new();
      v32 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_1253];
      v33 = [MEMORY[0x277CCACC8] callStackSymbols];
      v34 = [v33 filteredArrayUsingPredicate:v32];
      v35 = [v34 firstObject];

      [v31 submitToCoreAnalytics:v35 type:1 duration:v30];
      v36 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_2304B3000, v36, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
      }

      v37 = MEMORY[0x277CCA9B8];
      v38 = *MEMORY[0x277D01448];
      v85[0] = *MEMORY[0x277CCA450];
      *buf = @"semaphore wait timeout";
      v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v85 count:1];
      v40 = [v37 errorWithDomain:v38 code:15 userInfo:v39];

      if (v40)
      {
        v41 = v40;
      }

      v18 = v64;
      a1 = v65;
    }

    else
    {
      v40 = 0;
    }

    v42 = v40;
    if (v42)
    {
      v43 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        v61 = [*(v65 + 48) state];
        *buf = 136315650;
        *&buf[4] = "[SMSessionManager setSessionStoreAvailability:]_block_invoke_2";
        v81 = 2112;
        v82 = v61;
        v83 = 2112;
        v84 = v42;
        _os_log_error_impl(&dword_2304B3000, v43, OS_LOG_TYPE_ERROR, "%s, failed to store session state with timeout, %@, with error, %@", buf, 0x20u);
      }

      a1 = v65;
    }
  }

  if ([*(a1 + 32) count] >= 2)
  {
    v44 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v44, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      *&buf[4] = "[SMSessionManager setSessionStoreAvailability:]_block_invoke";
      _os_log_fault_impl(&dword_2304B3000, v44, OS_LOG_TYPE_FAULT, "%s, more than 1 sessionStatus found", buf, 0xCu);
    }

    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v45 = *(a1 + 32);
    v46 = [v45 countByEnumeratingWithState:&v68 objects:v78 count:16];
    if (v46)
    {
      v47 = v46;
      v48 = *v69;
      do
      {
        for (j = 0; j != v47; ++j)
        {
          if (*v69 != v48)
          {
            objc_enumerationMutation(v45);
          }

          v50 = *(*(&v68 + 1) + 8 * j);
          v51 = [*(a1 + 48) status];
          v52 = [v51 identifier];
          v53 = [v50 identifier];
          v54 = [v52 isEqual:v53];

          a1 = v65;
          if ((v54 & 1) == 0)
          {
            v55 = [*(v65 + 48) sessionStore];
            v66[0] = MEMORY[0x277D85DD0];
            v66[1] = 3221225472;
            v66[2] = __48__SMSessionManager_setSessionStoreAvailability___block_invoke_235;
            v66[3] = &unk_2788C4730;
            v67 = *(v65 + 48);
            [v55 removeSessionManagerStatus:v50 handler:v66];
          }
        }

        v47 = [v45 countByEnumeratingWithState:&v68 objects:v78 count:16];
      }

      while (v47);
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v56 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
    {
      v57 = [*(a1 + 48) status];
      v58 = [v57 description];
      *buf = 136315395;
      *&buf[4] = "[SMSessionManager setSessionStoreAvailability:]_block_invoke";
      v81 = 2117;
      v82 = v58;
      _os_log_impl(&dword_2304B3000, v56, OS_LOG_TYPE_INFO, "%s,loaded sessionManagerStatus %{sensitive}@", buf, 0x16u);
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v59 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      *&buf[4] = "[SMSessionManager setSessionStoreAvailability:]_block_invoke";
      _os_log_impl(&dword_2304B3000, v59, OS_LOG_TYPE_INFO, "%s, Session Store available, Call bootstrapToState", buf, 0xCu);
    }
  }

  return [*(a1 + 48) _bootstrapToState];
}

void __48__SMSessionManager_setSessionStoreAvailability___block_invoke_235(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = [*(a1 + 32) status];
      v6 = [v5 description];
      v7 = 136315650;
      v8 = "[SMSessionManager setSessionStoreAvailability:]_block_invoke";
      v9 = 2112;
      v10 = v6;
      v11 = 2112;
      v12 = v3;
      _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "%s,removing sessionManagerStatus %@ with error %@", &v7, 0x20u);
    }
  }
}

- (void)_bootstrapHysteresisState
{
  magnetBreakTimer = [(SMSessionManager *)self magnetBreakTimer];

  if (magnetBreakTimer)
  {
    magnetBreakTimer2 = [(SMSessionManager *)self magnetBreakTimer];
    [(SMSessionManager *)self _invalidateTimer:magnetBreakTimer2];

    [(SMSessionManager *)self setMagnetBreakTimer:0];
  }

  messagingService = [(SMSessionManager *)self messagingService];
  effectivePairedDevice = [messagingService effectivePairedDevice];

  [(SMSessionManager *)self _processNearbyEffectivePairedDeviceChanged:effectivePairedDevice];
}

- (unint64_t)_getEndSessionStateWithReason:(unint64_t)reason
{
  if (reason - 1 > 8)
  {
    return 1;
  }

  else
  {
    return qword_230B02110[reason - 1];
  }
}

- (void)_postEndAwarenessLiveActivity
{
  state = [(SMSessionManager *)self state];
  [(SMSessionManager *)self _updateActivityWithState:state];
}

- (void)_initializeSessionWithSessionID:(id)d conversation:(id)conversation handler:(id)handler
{
  v46 = *MEMORY[0x277D85DE8];
  dCopy = d;
  conversationCopy = conversation;
  handlerCopy = handler;
  v11 = handlerCopy;
  if (handlerCopy)
  {
    v37 = handlerCopy;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v12 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        receiverHandles = [conversationCopy receiverHandles];
        identifier = [conversationCopy identifier];
        *buf = 136315906;
        v39 = "[SMSessionManager _initializeSessionWithSessionID:conversation:handler:]";
        v40 = 2112;
        v41 = dCopy;
        v42 = 2112;
        v43 = receiverHandles;
        v44 = 2112;
        v45 = identifier;
        _os_log_impl(&dword_2304B3000, v12, OS_LOG_TYPE_INFO, "%s, transitioning to Initializing, sessionID, %@, handles, %@, groupID, %@", buf, 0x2Au);
      }
    }

    v15 = objc_alloc(MEMORY[0x277D4AB78]);
    LOBYTE(v32) = [MEMORY[0x277D4AAE0] zelkovaHandoffEnabled];
    v16 = [v15 initWithConversation:conversationCopy sessionID:dCopy sessionStartDate:0 sessionType:0 time:0 destination:0 userResponseSafeDate:0 sessionSupportsHandoff:v32 sosReceivers:conversationCopy sessionWorkoutIdentifier:0 sessionWorkoutType:0 sessionWorkoutMirrorType:0];
    v33 = objc_alloc(MEMORY[0x277D4ABA8]);
    v17 = [MEMORY[0x277CBEAA8] now];
    messagingService = [(SMSessionManager *)self messagingService];
    deviceIdentifier = [messagingService deviceIdentifier];
    v19 = [MEMORY[0x277CBEAA8] now];
    uUID = [MEMORY[0x277CCAD78] UUID];
    selfCopy = self;
    selfCopy2 = self;
    v22 = uUID;
    messagingService2 = [(SMSessionManager *)selfCopy messagingService];
    [messagingService2 effectivePairedDevice];
    v24 = v36 = conversationCopy;
    [v24 uniqueIDOverride];
    v26 = v25 = dCopy;
    v27 = [v22 initWithUUIDString:v26];
    v28 = v16;
    v29 = v16;
    v30 = v17;
    v31 = [v33 initWithSessionState:10 configuration:v29 userTriggerResponse:0 monitorContext:0 date:v17 location:0 allowReadToken:0 safetyCacheKey:0 startMessageGUID:0 scheduledSendMessageGUID:0 scheduledSendMessageDate:0 activeDeviceIdentifier:deviceIdentifier estimatedEndDate:0 coarseEstimatedEndDate:0 estimatedEndDateStatus:0 sessionEndReason:0 sessionStateTransitionDate:v19 activePairedDeviceIdentifier:v27];

    dCopy = v25;
    conversationCopy = v36;

    v11 = v37;
    [(SMSessionManager *)selfCopy2 _performStateTransitionTo:v31 transitionType:1 handler:v37];
  }

  else
  {
    v28 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v28, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler", buf, 2u);
    }
  }
}

- (void)_resetInitializationWithHandler:(id)handler
{
  v21 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if (handlerCopy)
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = MEMORY[0x277D4ABB0];
      state = [(SMSessionManager *)self state];
      v8 = [v6 convertSessionStateToString:{objc_msgSend(state, "sessionState")}];
      state2 = [(SMSessionManager *)self state];
      configuration = [state2 configuration];
      sessionID = [configuration sessionID];
      *buf = 136315650;
      v16 = "[SMSessionManager _resetInitializationWithHandler:]";
      v17 = 2112;
      v18 = v8;
      v19 = 2112;
      v20 = sessionID;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_DEFAULT, "%s, resetting initialization for previous session with session state, %@, sessionID, %@", buf, 0x20u);
    }

    v12 = [(SMSessionManagerState *)self->_state mutableCopy];
    [v12 setSessionState:1];
    [v12 setStartMessageGUID:0];
    [v12 setScheduledSendMessageGUID:0];
    [v12 setScheduledSendMessageDate:0];
    [v12 setActiveDeviceIdentifier:0];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __52__SMSessionManager__resetInitializationWithHandler___block_invoke;
    v13[3] = &unk_2788C4F60;
    v13[4] = self;
    v14 = handlerCopy;
    [(SMSessionManager *)self _performStateTransitionTo:v12 transitionType:1 handler:v13];
  }

  else
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler", buf, 2u);
    }
  }
}

void __52__SMSessionManager__resetInitializationWithHandler___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = MEMORY[0x277D4ABB0];
    v6 = [*(a1 + 32) state];
    v7 = [v5 convertSessionStateToString:{objc_msgSend(v6, "sessionState")}];
    v8 = 136315650;
    v9 = "[SMSessionManager _resetInitializationWithHandler:]_block_invoke";
    v10 = 2112;
    v11 = v7;
    v12 = 2112;
    v13 = v3;
    _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_DEFAULT, "%s, resetting initialization finished with sessionState, %@, error, %@", &v8, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
}

+ (id)SessionHandoffRebootReconciliationStateToString:(unint64_t)string
{
  if (string - 1 > 3)
  {
    return @"Unknown";
  }

  else
  {
    return off_2788D34A0[string - 1];
  }
}

+ (id)SessionHandoffRebootReconciliationDecisionToString:(unint64_t)string
{
  if (string - 1 > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_2788D34C0[string - 1];
  }
}

- (void)storeManagerStatusInStore:(unint64_t)store completion:(id)completion
{
  v21 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  statusStoreInProgress = [(SMSessionManager *)self statusStoreInProgress];
  v9 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
  if (statusStoreInProgress)
  {
    if (v9)
    {
      v10 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = NSStringFromSelector(a2);
        *buf = 138412290;
        v20 = v11;
        _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_INFO, "%@,Update already in progress", buf, 0xCu);
      }
    }

    [(SMSessionManager *)self setStatusUpdatePending:1];
    completionCopy[2](completionCopy);
  }

  else
  {
    if (v9)
    {
      v12 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = NSStringFromSelector(a2);
        *buf = 138412290;
        v20 = v13;
        _os_log_impl(&dword_2304B3000, v12, OS_LOG_TYPE_INFO, "%@,storing SessionManagerStatus in store", buf, 0xCu);
      }
    }

    [(SMSessionManager *)self setStatusStoreInProgress:1];
    objc_initWeak(buf, self);
    sessionStore = [(SMSessionManager *)self sessionStore];
    status = [(SMSessionManager *)self status];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __57__SMSessionManager_storeManagerStatusInStore_completion___block_invoke;
    v16[3] = &unk_2788D3088;
    objc_copyWeak(v18, buf);
    v18[1] = a2;
    v17 = completionCopy;
    v18[2] = store;
    [sessionStore storeSessionManagerStatus:status handler:v16];

    objc_destroyWeak(v18);
    objc_destroyWeak(buf);
  }
}

void __57__SMSessionManager_storeManagerStatusInStore_completion___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (!WeakRetained)
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v13 = NSStringFromSelector(*(a1 + 48));
      *buf = 138412290;
      v16 = v13;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "%@,object has been cleaned up", buf, 0xCu);
    }

    goto LABEL_17;
  }

  [WeakRetained setStatusStoreInProgress:0];
  if (!v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = NSStringFromSelector(*(a1 + 48));
        *buf = 138412290;
        v16 = v10;
        _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "%@,Successfully stored status", buf, 0xCu);
      }
    }

    [v5 setStatusStored:1];
    if ([v5 statusUpdatePending])
    {
      [v5 setStatusUpdatePending:0];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __57__SMSessionManager_storeManagerStatusInStore_completion___block_invoke_259;
      v14[3] = &__block_descriptor_40_e5_v8__0l;
      v14[4] = *(a1 + 48);
      [v5 updateManagerStatusInStoreWithCompletion:v14];
    }

    goto LABEL_17;
  }

  v6 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v11 = NSStringFromSelector(*(a1 + 48));
    v12 = *(a1 + 56);
    *buf = 138412802;
    v16 = v11;
    v17 = 2112;
    v18 = v3;
    v19 = 1024;
    v20 = v12;
    _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "%@,Stored with error %@, retries left %d", buf, 0x1Cu);
  }

  v7 = *(a1 + 56);
  if (!v7)
  {
    [v5 setStatusUpdatePending:0];
LABEL_17:
    (*(*(a1 + 32) + 16))();
    goto LABEL_18;
  }

  [v5 storeManagerStatusInStore:v7 - 1 completion:*(a1 + 32)];
LABEL_18:
}

void __57__SMSessionManager_storeManagerStatusInStore_completion___block_invoke_259(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = NSStringFromSelector(*(a1 + 32));
      v4 = 138412290;
      v5 = v3;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%@,Successfully flushed status", &v4, 0xCu);
    }
  }
}

- (void)updateManagerStatusInStoreWithCompletion:(id)completion
{
  v20 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  if ([(SMSessionManager *)self statusStored])
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v7 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = NSStringFromSelector(a2);
        *buf = 138412546;
        v17 = v8;
        v18 = 2112;
        v19 = uUID;
        _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "%@,Attempting to update sessionManagerStatus, transaction,%@", buf, 0x16u);
      }
    }

    sessionStore = [(SMSessionManager *)self sessionStore];
    status = [(SMSessionManager *)self status];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __61__SMSessionManager_updateManagerStatusInStoreWithCompletion___block_invoke;
    v12[3] = &unk_2788C56C0;
    v15 = a2;
    v13 = uUID;
    v14 = completionCopy;
    v11 = uUID;
    [sessionStore updateSessionManagerStatus:status handler:v12];
  }

  else
  {
    [(SMSessionManager *)self storeManagerStatusInStore:2 completion:completionCopy];
  }
}

void __61__SMSessionManager_updateManagerStatusInStoreWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_3;
    }

    v5 = NSStringFromSelector(*(a1 + 48));
    v7 = *(a1 + 32);
    v8 = 138412802;
    v9 = v5;
    v10 = 2112;
    v11 = v3;
    v12 = 2112;
    v13 = v7;
    _os_log_error_impl(&dword_2304B3000, v4, OS_LOG_TYPE_ERROR, "%@,Update returned error %@, transaction,%@", &v8, 0x20u);
LABEL_9:

    goto LABEL_3;
  }

  if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    goto LABEL_4;
  }

  v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = NSStringFromSelector(*(a1 + 48));
    v6 = *(a1 + 32);
    v8 = 138412546;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "%@,Successfully updated sessionManagerStatus, transaction,%@", &v8, 0x16u);
    goto LABEL_9;
  }

LABEL_3:

LABEL_4:
  (*(*(a1 + 40) + 16))();
}

- (id)checkSessionIDWithSelector:(SEL)selector sessionID:(id)d
{
  v30 = *MEMORY[0x277D85DE8];
  dCopy = d;
  if (dCopy && (-[SMSessionManagerState configuration](self->_state, "configuration"), v7 = objc_claimAutoreleasedReturnValue(), [v7 sessionID], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(dCopy, "isEqual:", v8), v8, v7, (v9 & 1) != 0))
  {
    v10 = 0;
  }

  else
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v19 = NSStringFromSelector(selector);
      configuration = [(SMSessionManagerState *)self->_state configuration];
      sessionID = [configuration sessionID];
      *buf = 138412802;
      v25 = v19;
      v26 = 2112;
      v27 = dCopy;
      v28 = 2112;
      v29 = sessionID;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "%@, invalid session ID %@, current sessionID, %@", buf, 0x20u);
    }

    v12 = objc_alloc(MEMORY[0x277CCA9B8]);
    v13 = *MEMORY[0x277D4ACD0];
    v22 = *MEMORY[0x277CCA450];
    v14 = MEMORY[0x277CCACA8];
    v15 = NSStringFromSelector(selector);
    v16 = [v14 stringWithFormat:@"%@ cannot be completed since sessionID passed in does not match current sessionID", v15];
    v23 = v16;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    v10 = [v12 initWithDomain:v13 code:7 userInfo:v17];
  }

  return v10;
}

- (id)checkSessionIDAndCanDeviceModifyStateWithSelector:(SEL)selector sessionID:(id)d
{
  v24 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v7 = [(SMSessionManager *)self checkSessionIDWithSelector:selector sessionID:dCopy];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else if (sel__endSessionForSessionID_reason_handler_ == selector || [(SMSessionManager *)self _canDeviceModifyState])
  {
    v9 = 0;
  }

  else
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v17 = NSStringFromSelector(selector);
      *buf = 138412546;
      v21 = v17;
      v22 = 2112;
      v23 = dCopy;
      _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "%@, User requested on non active device with sessionID %@", buf, 0x16u);
    }

    v18 = *MEMORY[0x277CCA450];
    v11 = MEMORY[0x277CCACA8];
    v12 = NSStringFromSelector(selector);
    v13 = [v11 stringWithFormat:@"%@ cannot be completed since current device is not active", v12];
    v19 = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v19 forKeys:&v18 count:1];

    v15 = objc_alloc(MEMORY[0x277CCA9B8]);
    v9 = [v15 initWithDomain:*MEMORY[0x277D4ACD0] code:11 userInfo:v14];
  }

  return v9;
}

- (id)checkSessionStateWithSelector:(SEL)selector validSessionStates:(id)states
{
  v25 = *MEMORY[0x277D85DE8];
  statesCopy = states;
  state = self->_state;
  if (state)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SMSessionManagerState sessionState](state, "sessionState")}];
  }

  else
  {
    v8 = 0;
  }

  if ([statesCopy containsObject:v8])
  {
    v9 = 0;
  }

  else
  {
    v10 = MEMORY[0x277CCACA8];
    v11 = NSStringFromSelector(selector);
    v12 = [v10 stringWithFormat:@"%@ cannot run as session is not currently in an appropriate state for this function.", v11];

    v13 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v18 = [MEMORY[0x277D4ABB0] convertSessionStateToString:{-[SMSessionManagerState sessionState](self->_state, "sessionState")}];
      *buf = 138412547;
      v22 = v12;
      v23 = 2117;
      v24 = v18;
      _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "%@, current state, %{sensitive}@", buf, 0x16u);
    }

    v14 = MEMORY[0x277CCA9B8];
    v15 = *MEMORY[0x277D4ACD0];
    v19 = *MEMORY[0x277CCA450];
    v20 = v12;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    v9 = [v14 errorWithDomain:v15 code:11 userInfo:v16];
  }

  return v9;
}

- (id)checkSessionIDCanDeviceModifyStateAndSessionStateWithSelector:(SEL)selector sessionID:(id)d validSessionStates:(id)states
{
  statesCopy = states;
  v9 = [(SMSessionManager *)self checkSessionIDAndCanDeviceModifyStateWithSelector:selector sessionID:d];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = [(SMSessionManager *)self checkSessionStateWithSelector:selector validSessionStates:statesCopy];
  }

  v12 = v11;

  return v12;
}

- (void)onSessionStoreNotification:(id)notification
{
  notificationCopy = notification;
  queue = [(SMSessionManager *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__SMSessionManager_onSessionStoreNotification___block_invoke;
  v7[3] = &unk_2788C4A70;
  v7[4] = self;
  v8 = notificationCopy;
  v6 = notificationCopy;
  dispatch_async(queue, v7);
}

- (void)_onSessionStoreNotification:(id)notification
{
  notificationCopy = notification;
  name = [notificationCopy name];
  v5 = +[(RTNotification *)RTStoreNotificationAvailabilityDidChange];
  v6 = [name isEqualToString:v5];

  if (v6)
  {
    -[SMSessionManager setSessionStoreAvailability:](self, "setSessionStoreAvailability:", [notificationCopy availability]);
  }
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  queue = [(SMSessionManager *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __32__SMSessionManager_addObserver___block_invoke;
  v7[3] = &unk_2788C4A70;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_async(queue, v7);
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  queue = [(SMSessionManager *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __35__SMSessionManager_removeObserver___block_invoke;
  v7[3] = &unk_2788C4A70;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_async(queue, v7);
}

- (void)_addObserver:(id)observer
{
  v16 = *MEMORY[0x277D85DE8];
  observerCopy = observer;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v10 = 138412802;
      v11 = v7;
      v12 = 2080;
      v13 = "[SMSessionManager _addObserver:]";
      v14 = 2112;
      v15 = v9;
      _os_log_debug_impl(&dword_2304B3000, v5, OS_LOG_TYPE_DEBUG, "%@, %s, adding observer, %@", &v10, 0x20u);
    }
  }

  [(NSHashTable *)self->_observers addObject:observerCopy];
}

- (void)_removeObserver:(id)observer
{
  v16 = *MEMORY[0x277D85DE8];
  observerCopy = observer;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v10 = 138412802;
      v11 = v7;
      v12 = 2080;
      v13 = "[SMSessionManager _removeObserver:]";
      v14 = 2112;
      v15 = v9;
      _os_log_debug_impl(&dword_2304B3000, v5, OS_LOG_TYPE_DEBUG, "%@, %s, removing observer, %@", &v10, 0x20u);
    }
  }

  [(NSHashTable *)self->_observers removeObject:observerCopy];
}

- (void)_notifyObserversForStart
{
  v16 = *MEMORY[0x277D85DE8];
  [(SMSessionManager *)self _registerForNotifications];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  observers = [(SMSessionManager *)self observers];
  v4 = [observers countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(observers);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          state = [(SMSessionManager *)self state];
          configuration = [state configuration];
          [v8 onSessionStartedWithConfiguration:configuration];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [observers countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }
}

- (void)_notifyObserversForBecomingActiveDevice
{
  v16 = *MEMORY[0x277D85DE8];
  [(SMSessionManager *)self _registerForNotifications];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  observers = [(SMSessionManager *)self observers];
  v4 = [observers countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(observers);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          state = [(SMSessionManager *)self state];
          v10 = [state copy];
          [v8 onBecomingActiveDevice:v10];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [observers countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }
}

- (void)_notifyObserversForBecomingNonActiveDevice
{
  v16 = *MEMORY[0x277D85DE8];
  [(SMSessionManager *)self _unregisterForNotifications];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  observers = [(SMSessionManager *)self observers];
  v4 = [observers countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(observers);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          state = [(SMSessionManager *)self state];
          v10 = [state copy];
          [v8 onBecomingNonActiveDevice:v10];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [observers countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }
}

- (void)_notifyObserversForConfigurationChange
{
  v32 = *MEMORY[0x277D85DE8];
  state = [(SMSessionManager *)self state];
  configuration = [state configuration];
  sessionType = [configuration sessionType];

  if (sessionType == 1)
  {
    v6 = MEMORY[0x277CBEAA8];
    state2 = [(SMSessionManager *)self state];
    configuration2 = [state2 configuration];
    time = [configuration2 time];
    timeBound = [time timeBound];
    v11 = [v6 roundingUpDate:timeBound bucketDurationMinute:*MEMORY[0x277D4AC98]];

    state3 = [(SMSessionManager *)self state];
    configuration3 = [state3 configuration];
    time2 = [configuration3 time];
    timeBound2 = [time2 timeBound];
    state4 = [(SMSessionManager *)self state];
    configuration4 = [state4 configuration];
    sessionID = [configuration4 sessionID];
    [(SMSessionManager *)self _updateReceiverWithEstimatedEndDate:timeBound2 coarseEstimatedEndDate:v11 sessionID:sessionID];
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  observers = [(SMSessionManager *)self observers];
  v20 = [observers countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v28;
    do
    {
      v23 = 0;
      do
      {
        if (*v28 != v22)
        {
          objc_enumerationMutation(observers);
        }

        v24 = *(*(&v27 + 1) + 8 * v23);
        if (objc_opt_respondsToSelector())
        {
          state5 = [(SMSessionManager *)self state];
          configuration5 = [state5 configuration];
          [v24 onSessionChangedWithConfiguration:configuration5];
        }

        ++v23;
      }

      while (v21 != v23);
      v21 = [observers countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v21);
  }
}

- (void)_notifyObserversForSessionResume
{
  v15 = *MEMORY[0x277D85DE8];
  [(SMSessionManager *)self _registerForNotifications];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  observers = [(SMSessionManager *)self observers];
  v4 = [observers countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(observers);
        }

        v8 = *(*(&v10 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          state = [(SMSessionManager *)self state];
          [v8 onSessionResumedWithState:state forActiveDevice:{-[SMSessionManager _isActiveDevice](self, "_isActiveDevice")}];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [observers countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

- (void)_notifyObserversForSessionEndForActiveDevice:(BOOL)device
{
  deviceCopy = device;
  v16 = *MEMORY[0x277D85DE8];
  [(SMSessionManager *)self _unregisterForNotifications];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  observers = [(SMSessionManager *)self observers];
  v6 = [observers countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(observers);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 onSessionEndedForActiveDevice:deviceCopy];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [observers countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)_notifyObserversForStateChangeWithTransitionType:(unint64_t)type
{
  v58[1] = *MEMORY[0x277D85DE8];
  v4 = dispatch_semaphore_create(0);
  state = [(SMSessionManager *)self state];
  status = [(SMSessionManager *)self status];
  [status setState:state];

  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = __69__SMSessionManager__notifyObserversForStateChangeWithTransitionType___block_invoke;
  v50[3] = &unk_2788C4EA0;
  v7 = v4;
  v51 = v7;
  [(SMSessionManager *)self updateManagerStatusInStoreWithCompletion:v50];
  v8 = v7;
  v9 = [MEMORY[0x277CBEAA8] now];
  v10 = dispatch_time(0, 3600000000000);
  v45 = v8;
  if (dispatch_semaphore_wait(v8, v10))
  {
    v11 = [MEMORY[0x277CBEAA8] now];
    [v11 timeIntervalSinceDate:v9];
    v13 = v12;
    v14 = objc_opt_new();
    v15 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_1253];
    callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
    v17 = [callStackSymbols filteredArrayUsingPredicate:v15];
    firstObject = [v17 firstObject];

    [v14 submitToCoreAnalytics:firstObject type:1 duration:v13];
    v19 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2304B3000, v19, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
    }

    v20 = MEMORY[0x277CCA9B8];
    v21 = *MEMORY[0x277D01448];
    v58[0] = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v58 count:1];
    v23 = [v20 errorWithDomain:v21 code:15 userInfo:v22];

    if (v23)
    {
      v24 = v23;
    }
  }

  else
  {
    v23 = 0;
  }

  v25 = v23;
  if (v25)
  {
    v26 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      state2 = [(SMSessionManager *)self state];
      *buf = 136315650;
      *&buf[4] = "[SMSessionManager _notifyObserversForStateChangeWithTransitionType:]";
      v54 = 2112;
      v55 = state2;
      v56 = 2112;
      v57 = v25;
      _os_log_error_impl(&dword_2304B3000, v26, OS_LOG_TYPE_ERROR, "%s, failed to store most recent session state with timeout, %@, with error, %@", buf, 0x20u);
    }
  }

  v44 = v25;
  _isActiveDevice = [(SMSessionManager *)self _isActiveDevice];
  if (_isActiveDevice)
  {
    state3 = [(SMSessionManager *)self state];
    if ([state3 sessionState] != 10)
    {
      state4 = [(SMSessionManager *)self state];
      sessionState = [state4 sessionState];

      if (sessionState == 11)
      {
        goto LABEL_16;
      }

      v31 = objc_alloc(MEMORY[0x277D4ABF8]);
      state5 = [(SMSessionManager *)self state];
      state3 = [v31 initWithSessionManagerState:state5 stateTransitionType:type];

      messagingService = [(SMSessionManager *)self messagingService];
      [messagingService sendIDSMessageToMyDevices:state3 completion:&__block_literal_global_288];
    }
  }

LABEL_16:
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  observers = [(SMSessionManager *)self observers];
  v35 = [observers countByEnumeratingWithState:&v46 objects:v52 count:16];
  if (v35)
  {
    v36 = v35;
    v37 = *v47;
    do
    {
      v38 = 0;
      do
      {
        if (*v47 != v37)
        {
          objc_enumerationMutation(observers);
        }

        v39 = *(*(&v46 + 1) + 8 * v38);
        if (objc_opt_respondsToSelector())
        {
          state6 = [(SMSessionManager *)self state];
          v41 = [state6 copy];
          [v39 onSessionStateChanged:v41 forActiveDevice:_isActiveDevice];
        }

        ++v38;
      }

      while (v36 != v38);
      v36 = [observers countByEnumeratingWithState:&v46 objects:v52 count:16];
    }

    while (v36);
  }
}

void __69__SMSessionManager__notifyObserversForStateChangeWithTransitionType___block_invoke_286(uint64_t a1, int a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = 136315650;
      v7 = "[SMSessionManager _notifyObserversForStateChangeWithTransitionType:]_block_invoke";
      v8 = 1024;
      v9 = a2;
      v10 = 2112;
      v11 = v4;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "%s, sent state sync message with success: %d and error: %@", &v6, 0x1Cu);
    }
  }
}

- (void)_updateUnsupportedSeparationStateIfNeededWithNotify:(BOOL)notify
{
  state = [(SMSessionManager *)self state];
  isActiveState = [state isActiveState];

  _isEffectivePairedDeviceNearby = [(SMSessionManager *)self _isEffectivePairedDeviceNearby];
  _getCurrentHysteresisStateType = [(SMSessionManager *)self _getCurrentHysteresisStateType];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __72__SMSessionManager__updateUnsupportedSeparationStateIfNeededWithNotify___block_invoke;
  v14[3] = &unk_2788D30B0;
  v14[4] = self;
  notifyCopy = notify;
  v9 = _Block_copy(v14);
  state2 = [(SMSessionManager *)self state];
  configuration = [state2 configuration];
  sessionType = [configuration sessionType];

  v13 = 0;
  if (isActiveState && !_isEffectivePairedDeviceNearby && _getCurrentHysteresisStateType != 2 && sessionType == 4)
  {
    v13 = [(SMSessionManager *)self _isActiveDevice]^ 1;
  }

  v9[2](v9, v13);
}

uint64_t __72__SMSessionManager__updateUnsupportedSeparationStateIfNeededWithNotify___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) defaultsManager];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:a2];
  [v4 setObject:v5 forKey:@"RTDefaultsSessionManagerUnsupportedDeviceSeparationKey"];

  v6 = *(a1 + 32);
  v7 = *(a1 + 40);

  return [v6 _updateUnsupportedSeparationStateWithNewState:a2 shouldNotify:v7];
}

- (void)_updateUnsupportedSeparationStateWithNewState:(BOOL)state shouldNotify:(BOOL)notify
{
  notifyCopy = notify;
  stateCopy = state;
  v20 = *MEMORY[0x277D85DE8];
  unsupportedDeviceSeparationState = [(SMLocalSessionState *)self->_localState unsupportedDeviceSeparationState];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v14 = 136315650;
      v15 = "[SMSessionManager _updateUnsupportedSeparationStateWithNewState:shouldNotify:]";
      v16 = 1024;
      v17 = stateCopy;
      v18 = 1024;
      v19 = unsupportedDeviceSeparationState;
      _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "%s, newState:%{Bool}d, oldState:%{Bool}d", &v14, 0x18u);
    }
  }

  if ([(SMLocalSessionState *)self->_localState unsupportedDeviceSeparationState]!= stateCopy)
  {
    [(SMLocalSessionState *)self->_localState setUnsupportedDeviceSeparationState:stateCopy];
    defaultsManager = [(SMSessionManager *)self defaultsManager];
    v10 = [MEMORY[0x277CCABB0] numberWithBool:{-[SMLocalSessionState unsupportedDeviceSeparationState](self->_localState, "unsupportedDeviceSeparationState")}];
    [defaultsManager setObject:v10 forKey:@"RTDefaultsSessionManagerUnsupportedDeviceSeparationKey"];

    [(SMSessionManager *)self _notifyObserversForLocalStateChange];
    if (stateCopy)
    {
      sessionMetricManager = [(SMSessionManager *)self sessionMetricManager];
      [sessionMetricManager onUnsupportedDeviceSeparation];
    }
  }

  v12 = MEMORY[0x277D4AA60];
  state = [(SMSessionManager *)self state];
  [v12 updateActivityWithState:state localState:self->_localState shouldNotify:stateCopy & notifyCopy];
}

- (void)_notifyObserversForLocalStateChange
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  observers = [(SMSessionManager *)self observers];
  v4 = [observers countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(observers);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          localState = [(SMSessionManager *)self localState];
          v10 = [localState copy];
          [v8 onLocalSessionStateChanged:v10];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [observers countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }
}

- (void)_notifyObserversForSecondarySOSTrigger
{
  v17 = *MEMORY[0x277D85DE8];
  _isActiveDevice = [(SMSessionManager *)self _isActiveDevice];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  observers = [(SMSessionManager *)self observers];
  v5 = [observers countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(observers);
        }

        v9 = *(*(&v12 + 1) + 8 * v8);
        if (objc_opt_respondsToSelector())
        {
          state = [(SMSessionManager *)self state];
          v11 = [state copy];
          [v9 onSecondarySOSTriggerWithState:v11 forActiveDevice:_isActiveDevice];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [observers countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }
}

- (BOOL)_isActiveDevice
{
  v24 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      state = [(SMSessionManager *)self state];
      activeDeviceIdentifier = [state activeDeviceIdentifier];
      messagingService = [(SMSessionManager *)self messagingService];
      deviceIdentifier = [messagingService deviceIdentifier];
      state2 = [(SMSessionManager *)self state];
      activeDeviceIdentifier2 = [state2 activeDeviceIdentifier];
      messagingService2 = [(SMSessionManager *)self messagingService];
      deviceIdentifier2 = [messagingService2 deviceIdentifier];
      v12 = [activeDeviceIdentifier2 isEqual:deviceIdentifier2];
      v13 = "NO";
      *v20 = 136315906;
      *&v20[4] = "[SMSessionManager _isActiveDevice]";
      *&v20[12] = 2112;
      *&v20[14] = activeDeviceIdentifier;
      if (v12)
      {
        v13 = "YES";
      }

      *&v20[22] = 2112;
      v21 = deviceIdentifier;
      v22 = 2080;
      v23 = v13;
      _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_INFO, "%s, activeDeviceIdentifier, %@, messaging service device identifier, %@, result, %s", v20, 0x2Au);
    }
  }

  v14 = [(SMSessionManager *)self state:*v20];
  activeDeviceIdentifier3 = [v14 activeDeviceIdentifier];
  messagingService3 = [(SMSessionManager *)self messagingService];
  deviceIdentifier3 = [messagingService3 deviceIdentifier];
  v18 = [activeDeviceIdentifier3 isEqual:deviceIdentifier3];

  return v18;
}

- (BOOL)_canDeviceModifyState
{
  v22 = *MEMORY[0x277D85DE8];
  _isActiveDevice = [(SMSessionManager *)self _isActiveDevice];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      state = [(SMSessionManager *)self state];
      isActiveState = [state isActiveState];
      state2 = [(SMSessionManager *)self state];
      activeDeviceIdentifier = [state2 activeDeviceIdentifier];
      v14 = 136315906;
      v15 = "[SMSessionManager _canDeviceModifyState]";
      v16 = 1024;
      v17 = isActiveState;
      v18 = 2112;
      v19 = activeDeviceIdentifier;
      v20 = 1024;
      v21 = _isActiveDevice;
      _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "%s, isActiveState, %{Bool}d, activeDeviceIdentifier, %@, isActiveDevice, %{Bool}d", &v14, 0x22u);
    }
  }

  state3 = [(SMSessionManager *)self state];
  if ([state3 isActiveState])
  {
    state4 = [(SMSessionManager *)self state];
    activeDeviceIdentifier2 = [state4 activeDeviceIdentifier];
    v12 = activeDeviceIdentifier2 == 0 || _isActiveDevice;
  }

  else
  {
    v12 = 1;
  }

  return v12 & 1;
}

- (void)_notifyObserversForTriggerResponse
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  observers = [(SMSessionManager *)self observers];
  v4 = [observers countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(observers);
        }

        v8 = *(*(&v10 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          state = [(SMSessionManager *)self state];
          [v8 onUserTriggerResponse:{objc_msgSend(state, "userTriggerResponse")}];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [observers countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

- (void)handoffSessionForSessionID:(id)d handler:(id)handler
{
  v16 = *MEMORY[0x277D85DE8];
  dCopy = d;
  handlerCopy = handler;
  if (handlerCopy)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v8 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v15 = "[SMSessionManager handoffSessionForSessionID:handler:]";
        _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "%s, request to handoff the session to this device", buf, 0xCu);
      }
    }

    queue = [(SMSessionManager *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __55__SMSessionManager_handoffSessionForSessionID_handler___block_invoke;
    block[3] = &unk_2788C6210;
    v13 = handlerCopy;
    block[4] = self;
    v12 = dCopy;
    dispatch_async(queue, block);

    v10 = v13;
  }

  else
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler", buf, 2u);
    }
  }
}

void __55__SMSessionManager_handoffSessionForSessionID_handler___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  if (([MEMORY[0x277D4AAE0] zelkovaHandoffEnabled] & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v10 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v22 = "[SMSessionManager handoffSessionForSessionID:handler:]_block_invoke";
        _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_INFO, "%s: Zelkova Handoff is not enabled; skip and do nothing", buf, 0xCu);
      }
    }

    v11 = objc_alloc(MEMORY[0x277CCA9B8]);
    v12 = *MEMORY[0x277D4ACD0];
    v19 = *MEMORY[0x277CCA450];
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Zelkova Handoff is not enabled"];
    v20 = v5;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    v7 = v11;
    v8 = v12;
    v9 = 1;
    goto LABEL_13;
  }

  if ([*(a1 + 32) _isActiveDevice])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v2 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v22 = "[SMSessionManager handoffSessionForSessionID:handler:]_block_invoke";
        _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%s: This device is active and thus cannot handoff to itself; skip and do nothing", buf, 0xCu);
      }
    }

    v3 = objc_alloc(MEMORY[0x277CCA9B8]);
    v4 = *MEMORY[0x277D4ACD0];
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"This device is active and thus cannot handoff to itself skip and do nothing", *MEMORY[0x277CCA450]];;
    v18 = v5;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    v7 = v3;
    v8 = v4;
    v9 = 43;
LABEL_13:
    v13 = [v7 initWithDomain:v8 code:v9 userInfo:v6];

    (*(*(a1 + 48) + 16))();
    return;
  }

  v14 = *(a1 + 32);
  v15 = *(a1 + 40);
  v16 = *(a1 + 48);

  [v14 _handoffSessionForSessionID:v15 retryCount:2 handler:v16];
}

- (void)_handoffSessionForSessionID:(id)d retryCount:(unint64_t)count handler:(id)handler
{
  v42 = *MEMORY[0x277D85DE8];
  dCopy = d;
  handlerCopy = handler;
  if (handlerCopy)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v10 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v41 = "[SMSessionManager _handoffSessionForSessionID:retryCount:handler:]";
        _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_INFO, "%s, Request to handoff session to this device", buf, 0xCu);
      }
    }

    if ([(SMSessionManager *)self _sessionSupportsHandoff])
    {
      defaultsManager = [(SMSessionManager *)self defaultsManager];
      [defaultsManager setObject:MEMORY[0x277CBEC38] forKey:@"RTDefaultsSessionManagerHandoffInProgressKey"];

      state = [(SMSessionManager *)self state];
      objc_initWeak(buf, self);
      v12 = [MEMORY[0x277CBEAA8] now];
      v13 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorAnalytics);
      state2 = [(SMSessionManager *)self state];
      configuration = [state2 configuration];
      sessionID = [configuration sessionID];
      v17 = os_signpost_id_make_with_pointer(v13, sessionID);

      v18 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorAnalytics);
      v19 = v18;
      if ((v17 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
      {
        *v37 = 0;
        _os_signpost_emit_with_name_impl(&dword_2304B3000, v19, OS_SIGNPOST_INTERVAL_BEGIN, v17, "SMHandoffSessionCriteriaInitiatorEligibilityCheckLatency", " enableTelemetry=YES ", v37, 2u);
      }

      state3 = [(SMSessionManager *)self state];
      configuration2 = [state3 configuration];
      v22 = [configuration2 sessionType] == 4;

      if (v22)
      {
        v23 = 2;
      }

      else
      {
        v23 = 1;
      }

      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __67__SMSessionManager__handoffSessionForSessionID_retryCount_handler___block_invoke;
      v30[3] = &unk_2788D3100;
      v36[1] = v17;
      v24 = v12;
      v31 = v24;
      selfCopy = self;
      objc_copyWeak(v36, buf);
      v35 = handlerCopy;
      v25 = state;
      v33 = v25;
      v36[2] = count;
      v34 = dCopy;
      [(SMSessionManager *)self _checkInitiatorEligibilityWithHandoffType:v23 completion:v30];

      objc_destroyWeak(v36);
      objc_destroyWeak(buf);
    }

    else
    {
      v26 = objc_alloc(MEMORY[0x277CCA9B8]);
      v38 = *MEMORY[0x277CCA450];
      v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"Session State configuration does not support handoff"];
      v39 = v27;
      v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
      v25 = [v26 initWithDomain:*MEMORY[0x277D4ACD0] code:1 userInfo:v28];

      (*(handlerCopy + 2))(handlerCopy, v25);
    }
  }

  else
  {
    v25 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v25, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler", buf, 2u);
    }
  }
}

void __67__SMSessionManager__handoffSessionForSessionID_retryCount_handler___block_invoke(uint64_t a1, int a2, void *a3)
{
  v52[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorAnalytics);
  v7 = v6;
  v8 = *(a1 + 80);
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_2304B3000, v7, OS_SIGNPOST_INTERVAL_END, v8, "SMHandoffSessionCriteriaInitiatorEligibilityCheckLatency", " enableTelemetry=YES ", buf, 2u);
  }

  v9 = [MEMORY[0x277CBEAA8] date];
  [v9 timeIntervalSinceDate:*(a1 + 32)];
  v11 = v10;

  [*(*(a1 + 40) + 24) addMetricForLatencyEligibilityChecks:v11];
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  if (WeakRetained)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v13 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = @"NO";
        *buf = 136315650;
        v46 = "[SMSessionManager _handoffSessionForSessionID:retryCount:handler:]_block_invoke";
        v47 = 2112;
        if (a2)
        {
          v14 = @"YES";
        }

        v48 = v14;
        v49 = 2112;
        v50 = v5;
        _os_log_impl(&dword_2304B3000, v13, OS_LOG_TYPE_INFO, "%s, check general initiator eligibility callback, isEligible %@, error %@ ", buf, 0x20u);
      }
    }

    if (v5 || !a2)
    {
      v29 = [WeakRetained defaultsManager];
      [v29 setObject:MEMORY[0x277CBEC28] forKey:@"RTDefaultsSessionManagerHandoffInProgressKey"];

      v30 = *(a1 + 64);
      if (v5)
      {
        (*(v30 + 16))(v30, v5);
      }

      else
      {
        v31 = MEMORY[0x277CCA9B8];
        v32 = *MEMORY[0x277D4ACD0];
        v43 = *MEMORY[0x277CCA450];
        v44 = @"initiator eligibility failed";
        v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v44 forKeys:&v43 count:1];
        v34 = [v31 errorWithDomain:v32 code:26 userInfo:v33];
        (*(v30 + 16))(v30, v34);
      }
    }

    else
    {
      v15 = [MEMORY[0x277CBEAA8] now];
      v16 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorAnalytics);
      v17 = v16;
      v18 = *(a1 + 80);
      if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_2304B3000, v17, OS_SIGNPOST_INTERVAL_BEGIN, v18, "SMHandoffSessionCheckIfHandoffCriteriaSatisfiedSPILatency", " enableTelemetry=YES ", buf, 2u);
      }

      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = __67__SMSessionManager__handoffSessionForSessionID_retryCount_handler___block_invoke_322;
      v35[3] = &unk_2788D30D8;
      v41 = *(a1 + 80);
      v19 = *(a1 + 40);
      v20 = *(a1 + 48);
      v36 = v15;
      v37 = v19;
      v38 = WeakRetained;
      v21 = *(a1 + 64);
      v22 = *(a1 + 88);
      v40 = v21;
      v42 = v22;
      v39 = *(a1 + 56);
      v23 = v15;
      [v38 _checkIfHandoffCriteriaSatisfiedForState:v20 handler:v35];
    }
  }

  else
  {
    v24 = objc_alloc(MEMORY[0x277CCA9B8]);
    v25 = *MEMORY[0x277D4ACD0];
    v51 = *MEMORY[0x277CCA450];
    v52[0] = @"SMSessionManager was destroyed during eligibility check";
    v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v52 forKeys:&v51 count:1];
    v27 = [v24 initWithDomain:v25 code:24 userInfo:v26];

    v28 = [0 defaultsManager];
    [v28 setObject:MEMORY[0x277CBEC28] forKey:@"RTDefaultsSessionManagerHandoffInProgressKey"];

    (*(*(a1 + 64) + 16))();
  }
}

void __67__SMSessionManager__handoffSessionForSessionID_retryCount_handler___block_invoke_322(uint64_t a1, int a2, void *a3)
{
  *&v19[13] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorAnalytics);
  v7 = v6;
  v8 = *(a1 + 72);
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    LOWORD(v16) = 0;
    _os_signpost_emit_with_name_impl(&dword_2304B3000, v7, OS_SIGNPOST_INTERVAL_END, v8, "SMHandoffSessionCheckIfHandoffCriteriaSatisfiedSPILatency", " enableTelemetry=YES ", &v16, 2u);
  }

  v9 = [MEMORY[0x277CBEAA8] date];
  [v9 timeIntervalSinceDate:*(a1 + 32)];
  v11 = v10;

  [*(*(a1 + 40) + 24) addMetricForLatencyHandoffCriteria:v11];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v16 = 136315650;
      v17 = "[SMSessionManager _handoffSessionForSessionID:retryCount:handler:]_block_invoke";
      v18 = 1024;
      *v19 = a2;
      v19[2] = 2112;
      *&v19[3] = v5;
      _os_log_impl(&dword_2304B3000, v12, OS_LOG_TYPE_INFO, "%s, handoffCriteriaSatisfied, %{Bool}d, eligibilityError, %@", &v16, 0x1Cu);
    }
  }

  if (v5 || !a2)
  {
    if ([*(a1 + 40) _shouldRetryForHandoffError:v5 retryCount:*(a1 + 80)])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v13 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v14 = *(a1 + 80);
          v16 = 136315394;
          v17 = "[SMSessionManager _handoffSessionForSessionID:retryCount:handler:]_block_invoke";
          v18 = 2048;
          *v19 = v14;
          _os_log_impl(&dword_2304B3000, v13, OS_LOG_TYPE_INFO, "%s, Handoff is elibile to retry, pendingRetryCount, %lu, retrying...", &v16, 0x16u);
        }
      }

      [*(a1 + 40) _startHandoffRetryTimerWithLatency:*(a1 + 56) sessionID:*(a1 + 80) retryCount:*(a1 + 64) handoffCompletion:10.0];
    }

    else
    {
      v15 = [*(a1 + 48) defaultsManager];
      [v15 setObject:MEMORY[0x277CBEC28] forKey:@"RTDefaultsSessionManagerHandoffInProgressKey"];

      (*(*(a1 + 64) + 16))();
    }
  }

  else
  {
    [*(a1 + 48) _becomeActiveDeviceForSessionWithHandler:*(a1 + 64)];
  }
}

- (BOOL)_shouldRetryForHandoffError:(id)error retryCount:(unint64_t)count
{
  errorCopy = error;
  v6 = errorCopy;
  if (count)
  {
    LOBYTE(count) = [errorCopy code] == 3 || objc_msgSend(v6, "code") == 4 || objc_msgSend(v6, "code") == 7 || objc_msgSend(v6, "code") == 36;
  }

  return count;
}

- (void)_startHandoffRetryTimerWithLatency:(double)latency sessionID:(id)d retryCount:(unint64_t)count handoffCompletion:(id)completion
{
  v39 = *MEMORY[0x277D85DE8];
  dCopy = d;
  completionCopy = completion;
  handoffRetryTimer = self->_handoffRetryTimer;
  if (handoffRetryTimer)
  {
    [(RTTimer *)handoffRetryTimer invalidate];
    v14 = self->_handoffRetryTimer;
    self->_handoffRetryTimer = 0;
  }

  timerManager = self->_timerManager;
  queue = [(SMSessionManager *)self queue];
  v25 = MEMORY[0x277D85DD0];
  v26 = 3221225472;
  v27 = __94__SMSessionManager__startHandoffRetryTimerWithLatency_sessionID_retryCount_handoffCompletion___block_invoke;
  v28 = &unk_2788C4C20;
  selfCopy = self;
  v17 = dCopy;
  v30 = v17;
  countCopy = count;
  v18 = completionCopy;
  v31 = v18;
  v19 = [(RTTimerManager *)timerManager timerWithIdentifier:@"SMHandoffRetryTimerIdentifier" queue:queue handler:&v25];
  v20 = self->_handoffRetryTimer;
  self->_handoffRetryTimer = v19;

  [(RTTimer *)self->_handoffRetryTimer fireWithInterval:latency, v25, v26, v27, v28, selfCopy];
  [(RTTimer *)self->_handoffRetryTimer resume];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v21 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = objc_opt_class();
      v23 = NSStringFromClass(v22);
      v24 = NSStringFromSelector(a2);
      *buf = 138412802;
      v34 = v23;
      v35 = 2112;
      v36 = v24;
      v37 = 2048;
      latencyCopy = latency;
      _os_log_impl(&dword_2304B3000, v21, OS_LOG_TYPE_INFO, "%@, %@, handoff retry timer interval, %.2f", buf, 0x20u);
    }
  }
}

uint64_t __94__SMSessionManager__startHandoffRetryTimerWithLatency_sessionID_retryCount_handoffCompletion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _onHandoffRetryTimerExpiry];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56) - 1;

  return [v2 _handoffSessionForSessionID:v3 retryCount:v5 handler:v4];
}

- (void)_onHandoffRetryTimerExpiry
{
  [(RTTimer *)self->_handoffRetryTimer invalidate];
  handoffRetryTimer = self->_handoffRetryTimer;
  self->_handoffRetryTimer = 0;
}

- (void)_startActiveSessionDetailsTimerWithLatency:(double)latency
{
  v21 = *MEMORY[0x277D85DE8];
  if (self->_activeSessionDetailsTimeoutTimer)
  {
    [(SMSessionManager *)self _clearActiveSessionDetailsTimeoutTimer];
  }

  timerManager = self->_timerManager;
  queue = [(SMSessionManager *)self queue];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __63__SMSessionManager__startActiveSessionDetailsTimerWithLatency___block_invoke;
  v14[3] = &unk_2788C4EA0;
  v14[4] = self;
  v8 = [(RTTimerManager *)timerManager timerWithIdentifier:@"SMHandoffActiveSessionDetailsTimeoutTimerIdentifier" queue:queue handler:v14];
  activeSessionDetailsTimeoutTimer = self->_activeSessionDetailsTimeoutTimer;
  self->_activeSessionDetailsTimeoutTimer = v8;

  [(RTTimer *)self->_activeSessionDetailsTimeoutTimer fireWithInterval:latency];
  [(RTTimer *)self->_activeSessionDetailsTimeoutTimer resume];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v13 = NSStringFromSelector(a2);
      *buf = 138412802;
      v16 = v12;
      v17 = 2112;
      v18 = v13;
      v19 = 2048;
      latencyCopy = latency;
      _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_INFO, "%@, %@, ActiveSessionDetails fetch timeout / interval, %.2f", buf, 0x20u);
    }
  }
}

- (void)_onActiveSessionDetailsTimeoutTimerExpiry
{
  v11 = *MEMORY[0x277D85DE8];
  [(SMSessionManager *)self _clearActiveSessionDetailsTimeoutTimer];
  if ([(SMSessionManager *)self handoffRebootReconciliationState]== 2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v3 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        v4 = [objc_opt_class() SessionHandoffRebootReconciliationStateToString:{-[SMSessionManager handoffRebootReconciliationState](self, "handoffRebootReconciliationState")}];
        v7 = 136315394;
        v8 = "[SMSessionManager _onActiveSessionDetailsTimeoutTimerExpiry]";
        v9 = 2112;
        v10 = v4;
        _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_INFO, "%s timer expiry and handoffRebootReconciliationState, %@, declaring timeout and ActiveSessionDetailsFetchFailure", &v7, 0x16u);
      }
    }

    defaultsManager = self->_defaultsManager;
    date = [MEMORY[0x277CBEAA8] date];
    [(RTDefaultsManager *)defaultsManager setObject:date forKey:@"RTDefaultsSafetyCacheActiveSessionDetailsFetchFailureDateKey"];

    [(SMSessionManager *)self _bootstrapToState];
  }
}

- (void)_clearActiveSessionDetailsTimeoutTimer
{
  [(RTTimer *)self->_activeSessionDetailsTimeoutTimer invalidate];
  activeSessionDetailsTimeoutTimer = self->_activeSessionDetailsTimeoutTimer;
  self->_activeSessionDetailsTimeoutTimer = 0;
}

- (void)_checkIfHandoffCriteriaSatisfiedForState:(id)state handler:(id)handler
{
  stateCopy = state;
  handlerCopy = handler;
  v33[0] = 0;
  v33[1] = v33;
  v33[2] = 0x2020000000;
  v34 = 1;
  v8 = [MEMORY[0x277CBEAA8] now];
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorAnalytics);
  state = [(SMSessionManager *)self state];
  configuration = [state configuration];
  sessionID = [configuration sessionID];
  v13 = os_signpost_id_make_with_pointer(v9, sessionID);

  v32 = v13;
  v14 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorAnalytics);
  v15 = v14;
  v16 = v30[3];
  if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_2304B3000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v16, "SMHandoffSessionCriteriaFetchActiveSessionDetailsCkLatency", " enableTelemetry=YES ", buf, 2u);
  }

  activeSessionDetailsDelegate = [(SMSessionManager *)self activeSessionDetailsDelegate];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __69__SMSessionManager__checkIfHandoffCriteriaSatisfiedForState_handler___block_invoke;
  v21[3] = &unk_2788D31A0;
  v26 = &v29;
  v18 = v8;
  v22 = v18;
  selfCopy = self;
  v19 = stateCopy;
  v24 = v19;
  v27 = v33;
  v20 = handlerCopy;
  v25 = v20;
  [activeSessionDetailsDelegate fetchActiveSessionDetailsWithHandler:v21];

  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(v33, 8);
}

void __69__SMSessionManager__checkIfHandoffCriteriaSatisfiedForState_handler___block_invoke(uint64_t a1, void *a2, char a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorAnalytics);
  v10 = v9;
  v11 = *(*(*(a1 + 64) + 8) + 24);
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_2304B3000, v10, OS_SIGNPOST_INTERVAL_END, v11, "SMHandoffSessionCriteriaFetchActiveSessionDetailsCkLatency", " enableTelemetry=YES ", buf, 2u);
  }

  v12 = [MEMORY[0x277CBEAA8] date];
  [v12 timeIntervalSinceDate:*(a1 + 32)];
  v14 = v13;

  [*(*(a1 + 40) + 24) addMetricForLatencyFetchActiveSessionDetailsCK:v14];
  v15 = [*(a1 + 40) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__SMSessionManager__checkIfHandoffCriteriaSatisfiedForState_handler___block_invoke_329;
  block[3] = &unk_2788D3178;
  v29 = a3;
  v23 = v7;
  v24 = v8;
  v16 = *(a1 + 48);
  v17 = *(a1 + 40);
  v25 = v16;
  v26 = v17;
  v28 = *(a1 + 72);
  v21 = *(a1 + 56);
  v18 = v21;
  v27 = v21;
  v19 = v8;
  v20 = v7;
  dispatch_async(v15, block);
}

void __69__SMSessionManager__checkIfHandoffCriteriaSatisfiedForState_handler___block_invoke_329(uint64_t a1)
{
  v46 = *MEMORY[0x277D85DE8];
  if (*(a1 + 88) == 1)
  {
    v30 = [*(a1 + 32) cacheReleasedDate];
    v29 = [*(a1 + 32) scheduledSendGUID];
  }

  else
  {
    v29 = 0;
    v30 = 0;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = *(a1 + 88);
      v4 = *(a1 + 32);
      v5 = *(a1 + 40);
      *buf = 136315906;
      v39 = "[SMSessionManager _checkIfHandoffCriteriaSatisfiedForState:handler:]_block_invoke";
      v40 = 2112;
      v41 = v4;
      v42 = 1024;
      v43 = v3;
      v44 = 2112;
      v45 = v5;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%s, currentActiveSessionDetails %@, fethSuccess, %{Bool}d, read existing CK activeSessionDetails record to determine CK details, fetchError, %@", buf, 0x26u);
    }
  }

  v27 = objc_alloc(MEMORY[0x277D4AA58]);
  v25 = [*(a1 + 48) configuration];
  v6 = [v25 sessionID];
  v7 = [*(a1 + 56) messagingService];
  v8 = [v7 deviceIdentifier];
  v9 = [*(a1 + 48) configuration];
  v10 = [v9 conversation];
  v11 = [v10 receiverHandles];
  v12 = [v11 firstObject];
  v13 = [v12 primaryHandle];
  v37 = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v37 count:1];
  v28 = [v27 initWithSessionID:v6 activeDeviceIdentifier:v8 cacheReleasedDate:v30 scheduledSendGUID:v29 receiverHandles:v14];

  v15 = [MEMORY[0x277CBEAA8] now];
  v16 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorAnalytics);
  v17 = v16;
  v18 = *(*(*(a1 + 72) + 8) + 24);
  if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_2304B3000, v17, OS_SIGNPOST_INTERVAL_BEGIN, v18, "SMHandoffSessionCriteriaWriteActiveSessionDetailsCKLatency", " enableTelemetry=YES ", buf, 2u);
  }

  v19 = [*(a1 + 56) activeSessionDetailsDelegate];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __69__SMSessionManager__checkIfHandoffCriteriaSatisfiedForState_handler___block_invoke_332;
  v31[3] = &unk_2788D3150;
  v20 = *(a1 + 56);
  v32 = v15;
  v33 = v20;
  v21 = *(a1 + 80);
  v34 = v28;
  v36 = v21;
  v26 = *(a1 + 64);
  v22 = v26;
  v35 = v26;
  v23 = v28;
  v24 = v15;
  [v19 writeActiveSessionDetailOnCloudToInitiateHandoff:v23 handler:v31];
}

void __69__SMSessionManager__checkIfHandoffCriteriaSatisfiedForState_handler___block_invoke_332(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorAnalytics);
  v7 = v6;
  v8 = *(*(*(a1 + 64) + 8) + 24);
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_2304B3000, v7, OS_SIGNPOST_INTERVAL_END, v8, "SMHandoffSessionCriteriaWriteActiveSessionDetailsCKLatency", " enableTelemetry=YES ", buf, 2u);
  }

  v9 = [MEMORY[0x277CBEAA8] date];
  [v9 timeIntervalSinceDate:*(a1 + 32)];
  v11 = v10;

  [*(*(a1 + 40) + 24) addMetricForLatencyWriteActiveSessionDetailsCK:v11];
  v12 = [*(a1 + 40) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__SMSessionManager__checkIfHandoffCriteriaSatisfiedForState_handler___block_invoke_333;
  block[3] = &unk_2788D3128;
  v13 = *(a1 + 48);
  v20 = a2;
  v16 = v13;
  v17 = v5;
  v19 = *(a1 + 72);
  v18 = *(a1 + 56);
  v14 = v5;
  dispatch_async(v12, block);
}

uint64_t __69__SMSessionManager__checkIfHandoffCriteriaSatisfiedForState_handler___block_invoke_333(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = *(a1 + 64);
      v4 = *(a1 + 32);
      v5 = *(a1 + 40);
      v9 = 136315906;
      v10 = "[SMSessionManager _checkIfHandoffCriteriaSatisfiedForState:handler:]_block_invoke";
      v11 = 2112;
      v12 = v4;
      v13 = 1024;
      v14 = v3;
      v15 = 2112;
      v16 = v5;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%s, newCkInitiateHandoffActiveSessionDetails  %@, write operation returned callback, with success %{Bool}d, error %@ ", &v9, 0x26u);
    }
  }

  v6 = *(*(a1 + 56) + 8);
  if (*(a1 + 64) == 1)
  {
    v7 = *(v6 + 24);
  }

  else
  {
    v7 = 0;
  }

  *(v6 + 24) = v7 & 1;
  return (*(*(a1 + 48) + 16))();
}

- (void)_checkInitiatorEligibilityWithHandoffType:(int64_t)type completion:(id)completion
{
  v30 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      *&buf[4] = "[SMSessionManager _checkInitiatorEligibilityWithHandoffType:completion:]";
      *&buf[12] = 2048;
      *&buf[14] = type;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%s, check initiator eligibility for handoff type,%lu", buf, 0x16u);
    }
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v29 = 0;
  v7 = MEMORY[0x277CCACA8];
  state = [(SMSessionManager *)self state];
  configuration = [state configuration];
  sessionID = [configuration sessionID];
  v22 = [v7 stringWithFormat:@"com.apple.SafetyMonitor.SessionManager.handoff.InitiatorEligibility.%@", sessionID];

  v11 = v22;
  v12 = dispatch_queue_create([v22 UTF8String], 0);
  [(SMSessionManager *)self setInitiatorEligibilityQueue:v12];

  objc_initWeak(&location, self);
  initiatorEligibilityQueue = [(SMSessionManager *)self initiatorEligibilityQueue];
  authorizationManager = [(SMSessionManager *)self authorizationManager];
  messagingService = [(SMSessionManager *)self messagingService];
  effectivePairedDevice = [messagingService effectivePairedDevice];
  defaultsManager = [(SMSessionManager *)self defaultsManager];
  platform = [(SMSessionManager *)self platform];
  appDeletionManager = [(SMSessionManager *)self appDeletionManager];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __73__SMSessionManager__checkInitiatorEligibilityWithHandoffType_completion___block_invoke;
  v23[3] = &unk_2788D31F0;
  objc_copyWeak(&v26, &location);
  v20 = completionCopy;
  v24 = v20;
  v25 = buf;
  [SMInitiatorEligibility checkInitiatorEligibilityWithQueue:initiatorEligibilityQueue authorizationManager:authorizationManager effectivePairedDevice:effectivePairedDevice handoffType:type defaultsManager:defaultsManager platform:platform appDeletionManager:appDeletionManager handler:v23];

  objc_destroyWeak(&v26);
  objc_destroyWeak(&location);

  _Block_object_dispose(buf, 8);
}

void __73__SMSessionManager__checkInitiatorEligibilityWithHandoffType_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v25[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v7 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v21 = "[SMSessionManager _checkInitiatorEligibilityWithHandoffType:completion:]_block_invoke";
        v22 = 2112;
        v23 = v5;
        _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "%s Initiator eligibility check complete, returning to the queue of the SessionManager, error, %@", buf, 0x16u);
      }
    }

    v8 = [WeakRetained queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __73__SMSessionManager__checkInitiatorEligibilityWithHandoffType_completion___block_invoke_341;
    block[3] = &unk_2788D31C8;
    v16 = WeakRetained;
    v19 = a2;
    v14 = *(a1 + 32);
    v9 = v14;
    v18 = v14;
    v17 = v5;
    dispatch_async(v8, block);

    v10 = v16;
  }

  else
  {
    v11 = objc_alloc(MEMORY[0x277CCA9B8]);
    v12 = *MEMORY[0x277D4ACD0];
    v24 = *MEMORY[0x277CCA450];
    v25[0] = @"SMSessionManager was destroyed before eligibility check";
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    v10 = [v11 initWithDomain:v12 code:24 userInfo:v13];

    (*(*(a1 + 32) + 16))();
  }
}

uint64_t __73__SMSessionManager__checkInitiatorEligibilityWithHandoffType_completion___block_invoke_341(uint64_t a1)
{
  [*(a1 + 32) setInitiatorEligibilityQueue:0];
  if (*(a1 + 64) == 1)
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

  v2 = *(*(a1 + 48) + 16);

  return v2();
}

- (BOOL)_isWatchDeviceEligibleForHandoff
{
  v9 = *MEMORY[0x277D85DE8];
  _isWatchOnWristEligibilityCriteriaSatisfied = [(SMSessionManager *)self _isWatchOnWristEligibilityCriteriaSatisfied];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v5 = 136315394;
      v6 = "[SMSessionManager _isWatchDeviceEligibleForHandoff]";
      v7 = 1024;
      v8 = _isWatchOnWristEligibilityCriteriaSatisfied;
      _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_INFO, "%s isWatchOnWrist, %d", &v5, 0x12u);
    }
  }

  return _isWatchOnWristEligibilityCriteriaSatisfied;
}

- (BOOL)_sessionSupportsHandoff
{
  v39 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = objc_opt_class();
      v6 = NSStringFromClass(v5);
      v7 = NSStringFromSelector(a2);
      state = [(SMSessionManager *)self state];
      configuration = [state configuration];
      sessionID = [configuration sessionID];
      state2 = [(SMSessionManager *)self state];
      configuration2 = [state2 configuration];
      sessionSupportsHandoff = [configuration2 sessionSupportsHandoff];
      v9 = MEMORY[0x277D4ABB0];
      state3 = [(SMSessionManager *)self state];
      v11 = [v9 convertSessionStateToString:{objc_msgSend(state3, "sessionState")}];
      state4 = [(SMSessionManager *)self state];
      *buf = 138414082;
      v24 = v6;
      v25 = 2112;
      v26 = v7;
      v27 = 2112;
      v28 = sessionID;
      v29 = 1024;
      v30 = sessionSupportsHandoff;
      v31 = 2112;
      v32 = v11;
      v33 = 1024;
      v34 = -[SMSessionManager _isHandoffAllowedInSessionState:](self, "_isHandoffAllowedInSessionState:", [state4 sessionState]);
      v35 = 1024;
      _isSessionManagerStateStaleToHandoff = [(SMSessionManager *)self _isSessionManagerStateStaleToHandoff];
      v37 = 1024;
      zelkovaHandoffEnabled = [MEMORY[0x277D4AAE0] zelkovaHandoffEnabled];
      _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "#SessionManager,Initiator,sessionID:%@,%@,%@, config %d, sessionState, %@, _isHandoffAllowedInSessionState, %{Bool}d, _isSessionManagerStateStaleToHandoff, %{Bool}d, feature %d", buf, 0x42u);
    }
  }

  state5 = [(SMSessionManager *)self state];
  configuration3 = [state5 configuration];
  if ([configuration3 sessionSupportsHandoff] && objc_msgSend(MEMORY[0x277D4AAE0], "zelkovaHandoffEnabled"))
  {
    state6 = [(SMSessionManager *)self state];
    if (-[SMSessionManager _isHandoffAllowedInSessionState:](self, "_isHandoffAllowedInSessionState:", [state6 sessionState]))
    {
      v16 = ![(SMSessionManager *)self _isSessionManagerStateStaleToHandoff];
    }

    else
    {
      LOBYTE(v16) = 0;
    }
  }

  else
  {
    LOBYTE(v16) = 0;
  }

  return v16;
}

- (BOOL)_isSessionManagerStateStaleToHandoff
{
  date = [MEMORY[0x277CBEAA8] date];
  date2 = [(SMSessionManagerState *)self->_state date];
  [date timeIntervalSinceDate:date2];
  v6 = v5 > 172800.0;

  return v6;
}

- (void)onWristStateChangeNotification:(id)notification
{
  v18 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    queue = [(SMSessionManager *)self queue];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __51__SMSessionManager_onWristStateChangeNotification___block_invoke;
    v10[3] = &unk_2788C4A70;
    v10[4] = self;
    v11 = notificationCopy;
    dispatch_async(queue, v10);
  }

  else
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      name = [notificationCopy name];
      *buf = 138412290;
      v13 = name;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "unknown notification name, %@", buf, 0xCu);
    }

    v7 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      name2 = [notificationCopy name];
      *buf = 138412802;
      v13 = name2;
      v14 = 2080;
      v15 = "[SMSessionManager onWristStateChangeNotification:]";
      v16 = 1024;
      v17 = 2370;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "unknown notification name, %@ (in %s:%d)", buf, 0x1Cu);
    }
  }
}

- (void)_onWristStateChangeNotification:(id)notification
{
  v10 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = 136315394;
      v7 = "[SMSessionManager _onWristStateChangeNotification:]";
      v8 = 2048;
      wristState = [notificationCopy wristState];
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "%s, received wrist state, %ld", &v6, 0x16u);
    }
  }

  -[SMSessionManager setWristState:](self, "setWristState:", [notificationCopy wristState]);
}

- (unint64_t)_evaluateHandoffRebootReconciliationState:(id)state
{
  v58 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  if (![(SMSessionManager *)self _stateValidForSessionResume:stateCopy])
  {
    v11 = 1;
    goto LABEL_40;
  }

  if (![(SMSessionManager *)self _isActiveSessionDetailsFetchedFromCloudKitSinceBoot]&& ![(SMSessionManager *)self _isActiveSessionDetailsFetchAttemptFailed])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v35 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        _isActiveSessionDetailsFetchedFromCloudKitSinceBoot = [(SMSessionManager *)self _isActiveSessionDetailsFetchedFromCloudKitSinceBoot];
        v37 = [objc_opt_class() SessionHandoffRebootReconciliationStateToString:2];
        *buf = 136315650;
        *&buf[4] = "[SMSessionManager _evaluateHandoffRebootReconciliationState:]";
        *&buf[12] = 1024;
        *&buf[14] = _isActiveSessionDetailsFetchedFromCloudKitSinceBoot;
        *&buf[18] = 2112;
        *&buf[20] = v37;
        _os_log_impl(&dword_2304B3000, v35, OS_LOG_TYPE_INFO, "%s, _isActiveSessionDetailsFetchedFromCloudKitSinceBoot, %{Bool}d, setting handoffRebootReconciliationState to, %@", buf, 0x1Cu);
      }
    }

    [(SMSessionManager *)self _startActiveSessionDetailsTimerWithLatency:self->_activeSessionDetailsFetchTimeout];
    goto LABEL_31;
  }

  if ([(SMSessionManager *)self _isActiveSessionDetailsOutOfSync])
  {
    _isActiveSessionDetailsFetchAttemptFailed = [(SMSessionManager *)self _isActiveSessionDetailsFetchAttemptFailed];
    v6 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
    if (_isActiveSessionDetailsFetchAttemptFailed)
    {
      if (v6)
      {
        v7 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          _isActiveSessionDetailsOutOfSync = [(SMSessionManager *)self _isActiveSessionDetailsOutOfSync];
          _isActiveSessionDetailsFetchAttemptFailed2 = [(SMSessionManager *)self _isActiveSessionDetailsFetchAttemptFailed];
          v10 = [objc_opt_class() SessionHandoffRebootReconciliationStateToString:4];
          *buf = 136315906;
          *&buf[4] = "[SMSessionManager _evaluateHandoffRebootReconciliationState:]";
          *&buf[12] = 1024;
          *&buf[14] = _isActiveSessionDetailsOutOfSync;
          *&buf[18] = 1024;
          *&buf[20] = _isActiveSessionDetailsFetchAttemptFailed2;
          *&buf[24] = 2112;
          *&buf[26] = v10;
          _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "%s, _isActiveSessionDetailsOutOfSync, %{Bool}d, _isActiveSessionDetailsFetchAttemptFailed, %{Bool}d setting handoffRebootReconciliationState to, %@", buf, 0x22u);
        }
      }

      v11 = 4;
      goto LABEL_40;
    }

    if (v6)
    {
      v38 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
      {
        _isActiveSessionDetailsOutOfSync2 = [(SMSessionManager *)self _isActiveSessionDetailsOutOfSync];
        v40 = [objc_opt_class() SessionHandoffRebootReconciliationStateToString:2];
        *buf = 136315650;
        *&buf[4] = "[SMSessionManager _evaluateHandoffRebootReconciliationState:]";
        *&buf[12] = 1024;
        *&buf[14] = _isActiveSessionDetailsOutOfSync2;
        *&buf[18] = 2112;
        *&buf[20] = v40;
        _os_log_impl(&dword_2304B3000, v38, OS_LOG_TYPE_INFO, "%s, _isActiveSessionDetailsOutOfSync, %{Bool}d, setting handoffRebootReconciliationState to, %@", buf, 0x1Cu);
      }
    }

    activeSessionDetailsDelegate = [(SMSessionManager *)self activeSessionDetailsDelegate];
    [activeSessionDetailsDelegate fetchActiveSessionDetailsWithHandler:&__block_literal_global_346];

    [(SMSessionManager *)self _startActiveSessionDetailsTimerWithLatency:self->_activeSessionDetailsFetchTimeout];
LABEL_31:
    v11 = 2;
    goto LABEL_40;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      _isActiveSessionDetailsOutOfSync3 = [(SMSessionManager *)self _isActiveSessionDetailsOutOfSync];
      v14 = [objc_opt_class() SessionHandoffRebootReconciliationStateToString:3];
      *buf = 136315650;
      *&buf[4] = "[SMSessionManager _evaluateHandoffRebootReconciliationState:]";
      *&buf[12] = 1024;
      *&buf[14] = _isActiveSessionDetailsOutOfSync3;
      *&buf[18] = 2112;
      *&buf[20] = v14;
      _os_log_impl(&dword_2304B3000, v12, OS_LOG_TYPE_INFO, "%s, _isActiveSessionDetailsOutOfSync, %{Bool}d, setting handoffRebootReconciliationState to, %@", buf, 0x1Cu);
    }
  }

  v15 = dispatch_semaphore_create(0);
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  *&buf[24] = __Block_byref_object_copy__198;
  *&buf[32] = __Block_byref_object_dispose__198;
  v55 = 0;
  v48 = 0;
  v49 = &v48;
  v50 = 0x3032000000;
  v51 = __Block_byref_object_copy__198;
  v52 = __Block_byref_object_dispose__198;
  v53 = 0;
  activeSessionDetailsDelegate2 = [(SMSessionManager *)self activeSessionDetailsDelegate];
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __62__SMSessionManager__evaluateHandoffRebootReconciliationState___block_invoke;
  v44[3] = &unk_2788D3218;
  v46 = &v48;
  v47 = buf;
  v17 = v15;
  v45 = v17;
  [activeSessionDetailsDelegate2 fetchActiveSessionDetailsWithHandler:v44];

  v18 = v17;
  v19 = [MEMORY[0x277CBEAA8] now];
  v20 = dispatch_time(0, 2000000000);
  if (!dispatch_semaphore_wait(v18, v20))
  {
    v32 = 0;
LABEL_33:
    v34 = 1;
    goto LABEL_34;
  }

  v21 = [MEMORY[0x277CBEAA8] now];
  [v21 timeIntervalSinceDate:v19];
  v23 = v22;
  v24 = objc_opt_new();
  v25 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_1253];
  callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
  v27 = [callStackSymbols filteredArrayUsingPredicate:v25];
  firstObject = [v27 firstObject];

  [v24 submitToCoreAnalytics:firstObject type:1 duration:v23];
  v29 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
  {
    *v57 = 0;
    _os_log_fault_impl(&dword_2304B3000, v29, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v57, 2u);
  }

  v30 = MEMORY[0x277CCA9B8];
  v56 = *MEMORY[0x277CCA450];
  *v57 = @"semaphore wait timeout";
  v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v57 forKeys:&v56 count:1];
  v32 = [v30 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v31];

  if (!v32)
  {
    goto LABEL_33;
  }

  v33 = v32;

  v34 = 0;
LABEL_34:

  v42 = v32;
  if ((v34 & 1) == 0)
  {
    objc_storeStrong((*&buf[8] + 40), v32);
  }

  if (*(*&buf[8] + 40))
  {
    v11 = 4;
  }

  else
  {
    [(SMSessionManager *)self setActiveSessionDetails:v49[5]];
    v11 = 3;
  }

  _Block_object_dispose(&v48, 8);
  _Block_object_dispose(buf, 8);

LABEL_40:
  return v11;
}

void __62__SMSessionManager__evaluateHandoffRebootReconciliationState___block_invoke(uint64_t a1, void *a2, int a3, void *a4)
{
  v24 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a4;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v16 = 136315906;
      v17 = "[SMSessionManager _evaluateHandoffRebootReconciliationState:]_block_invoke";
      v18 = 2112;
      v19 = v7;
      v20 = 1024;
      v21 = a3;
      v22 = 2112;
      v23 = v8;
      _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "%s, activeSessionDetails record inSync, retrieved activeSessionDetails, %@, success, %{Bool}d, error, %@", &v16, 0x26u);
    }
  }

  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v7;
  v12 = v7;

  v13 = *(*(a1 + 48) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v8;
  v15 = v8;

  dispatch_semaphore_signal(*(a1 + 32));
}

void __62__SMSessionManager__evaluateHandoffRebootReconciliationState___block_invoke_344(uint64_t a1, void *a2, int a3, void *a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a4;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = 136315906;
      v10 = "[SMSessionManager _evaluateHandoffRebootReconciliationState:]_block_invoke";
      v11 = 2112;
      v12 = v6;
      v13 = 1024;
      v14 = a3;
      v15 = 2112;
      v16 = v7;
      _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "%s, callback from fetchActiveSessionDetailsWithHandler when CK record got stale (outofSync), activeSessionDetails, %@, success, %{Bool}d, error, %@", &v9, 0x26u);
    }
  }
}

- (unint64_t)_reconciliationDecisionForState:(id)state isActiveDevice:(BOOL)device
{
  deviceCopy = device;
  v23 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  if (!deviceCopy || ![(SMSessionManager *)self _isMultiDeviceSetupForLocalState:stateCopy])
  {
LABEL_6:
    v8 = 2;
    goto LABEL_7;
  }

  handoffRebootReconciliationState = [(SMSessionManager *)self handoffRebootReconciliationState];
  if (handoffRebootReconciliationState != 2)
  {
    if (handoffRebootReconciliationState == 3)
    {
      v8 = [(SMSessionManager *)self _reconciliationForDecisionForCKFetchCompleted:stateCopy];
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v8 = 1;
LABEL_7:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v13 = [objc_opt_class() SessionHandoffRebootReconciliationStateToString:{-[SMSessionManager handoffRebootReconciliationState](self, "handoffRebootReconciliationState")}];
      activeSessionDetails = [(SMSessionManager *)self activeSessionDetails];
      v15 = 136316163;
      v16 = "[SMSessionManager _reconciliationDecisionForState:isActiveDevice:]";
      v17 = 1024;
      *v18 = deviceCopy;
      *&v18[4] = 2112;
      *&v18[6] = v13;
      v19 = 2112;
      v20 = activeSessionDetails;
      v21 = 2117;
      v22 = stateCopy;
      _os_log_debug_impl(&dword_2304B3000, v9, OS_LOG_TYPE_DEBUG, "%s, isActiveDevice, %{Bool}d, self.handoffRebootReconciliationState, %@,\n activeSessionDetails, %@,\n sessionManagerState, %{sensitive}@", &v15, 0x30u);
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = [objc_opt_class() SessionHandoffRebootReconciliationDecisionToString:v8];
      v15 = 136315394;
      v16 = "[SMSessionManager _reconciliationDecisionForState:isActiveDevice:]";
      v17 = 2112;
      *v18 = v11;
      _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_INFO, "%s, bootstrapDecision, %@", &v15, 0x16u);
    }
  }

  return v8;
}

- (BOOL)_isMultiDeviceSetupForLocalState:(id)state
{
  activePairedDeviceIdentifier = [state activePairedDeviceIdentifier];

  return activePairedDeviceIdentifier != 0;
}

- (unint64_t)_reconciliationForDecisionForCKFetchCompleted:(id)completed
{
  completedCopy = completed;
  activeSessionDetails = [(SMSessionManager *)self activeSessionDetails];
  LODWORD(self) = [(SMSessionManager *)self _isLocalStateInSyncWithActiveSessionDetails:activeSessionDetails deviceSessionManagerState:completedCopy];

  if (self)
  {
    v6 = 2;
  }

  else
  {
    v6 = 3;
  }

  return v6;
}

- (BOOL)_isLocalStateInSyncWithActiveSessionDetails:(id)details deviceSessionManagerState:(id)state
{
  v23 = *MEMORY[0x277D85DE8];
  detailsCopy = details;
  stateCopy = state;
  sessionID = [detailsCopy sessionID];
  configuration = [stateCopy configuration];
  sessionID2 = [configuration sessionID];
  if ([sessionID isEqual:sessionID2])
  {
    activeDeviceIdentifier = [detailsCopy activeDeviceIdentifier];
    activeDeviceIdentifier2 = [stateCopy activeDeviceIdentifier];
    v12 = [activeDeviceIdentifier isEqual:activeDeviceIdentifier2];
  }

  else
  {
    v12 = 0;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v15 = 136315907;
      v16 = "[SMSessionManager _isLocalStateInSyncWithActiveSessionDetails:deviceSessionManagerState:]";
      v17 = 2112;
      v18 = detailsCopy;
      v19 = 2117;
      v20 = stateCopy;
      v21 = 1024;
      v22 = v12;
      _os_log_impl(&dword_2304B3000, v13, OS_LOG_TYPE_INFO, "%s, activeSessionDetails %@, deviceSessionManagerState, %{sensitive}@, isLocalStateInSync %{Bool}d", &v15, 0x26u);
    }
  }

  return v12;
}

- (void)onActiveSessionDetailsFetchAttemptFromCKCompleted:(id)completed success:(BOOL)success error:(id)error
{
  successCopy = success;
  v26 = *MEMORY[0x277D85DE8];
  completedCopy = completed;
  errorCopy = error;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 136315906;
      v19 = "[SMSessionManager onActiveSessionDetailsFetchAttemptFromCKCompleted:success:error:]";
      v20 = 2112;
      v21 = completedCopy;
      v22 = 1024;
      v23 = successCopy;
      v24 = 2112;
      v25 = errorCopy;
      _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_INFO, "%s activeSessionDetails, %@, success, %{Bool}d, error, %@", buf, 0x26u);
    }
  }

  queue = [(SMSessionManager *)self queue];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __84__SMSessionManager_onActiveSessionDetailsFetchAttemptFromCKCompleted_success_error___block_invoke;
  v14[3] = &unk_2788CC570;
  v14[4] = self;
  v15 = completedCopy;
  v17 = successCopy;
  v16 = errorCopy;
  v12 = errorCopy;
  v13 = completedCopy;
  dispatch_async(queue, v14);
}

- (void)_onActiveSessionDetailsFetchAttemptFromCKCompleted:(id)completed success:(BOOL)success error:(id)error
{
  successCopy = success;
  v25 = *MEMORY[0x277D85DE8];
  completedCopy = completed;
  errorCopy = error;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = [objc_opt_class() SessionHandoffRebootReconciliationStateToString:{-[SMSessionManager handoffRebootReconciliationState](self, "handoffRebootReconciliationState")}];
      v15 = 136316162;
      v16 = "[SMSessionManager _onActiveSessionDetailsFetchAttemptFromCKCompleted:success:error:]";
      v17 = 2112;
      v18 = completedCopy;
      v19 = 1024;
      v20 = successCopy;
      v21 = 2112;
      v22 = v12;
      v23 = 2112;
      v24 = errorCopy;
      _os_log_impl(&dword_2304B3000, v11, OS_LOG_TYPE_INFO, "%s activeSessionDetails, %@, success, %{Bool}d, current handoffRebootReconciliationState, %@,error, %@", &v15, 0x30u);
    }
  }

  if (!errorCopy)
  {
    v10 = completedCopy;
    if (successCopy)
    {
      goto LABEL_7;
    }
  }

  if (!successCopy && [errorCopy code] == 11)
  {
    v10 = 0;
LABEL_7:
    [(SMSessionManager *)self setActiveSessionDetails:v10];
  }

  if ([(SMSessionManager *)self handoffRebootReconciliationState]== 2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v13 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = [objc_opt_class() SessionHandoffRebootReconciliationStateToString:{-[SMSessionManager handoffRebootReconciliationState](self, "handoffRebootReconciliationState")}];
        v15 = 136315394;
        v16 = "[SMSessionManager _onActiveSessionDetailsFetchAttemptFromCKCompleted:success:error:]";
        v17 = 2112;
        v18 = v14;
        _os_log_impl(&dword_2304B3000, v13, OS_LOG_TYPE_INFO, "%s, handoffRebootReconciliationState, %@, ActiveSessionDetails fetch attempt completed, clearing ActiveSessionDetailsTimeoutTimer, calling _bootstrapToState", &v15, 0x16u);
      }
    }

    [(SMSessionManager *)self _clearActiveSessionDetailsTimeoutTimer];
    [(SMSessionManager *)self _bootstrapToState];
  }
}

- (BOOL)_isActiveSessionDetailsFetchAttemptFailed
{
  v14 = *MEMORY[0x277D85DE8];
  defaultsManager = [(SMSessionManager *)self defaultsManager];
  v3 = [defaultsManager objectForKey:@"RTDefaultsSafetyCacheActiveSessionDetailsFetchFailureDateKey"];

  if (v3)
  {
    date = [MEMORY[0x277CBEAA8] date];
    [date timeIntervalSinceDate:v3];
    v6 = v5 < 1800.0;
  }

  else
  {
    v6 = 0;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v9 = @"NO";
      if (v6)
      {
        v9 = @"YES";
      }

      v10 = 136315394;
      v11 = "[SMSessionManager _isActiveSessionDetailsFetchAttemptFailed]";
      v12 = 2112;
      v13 = v9;
      _os_log_debug_impl(&dword_2304B3000, v7, OS_LOG_TYPE_DEBUG, "%s, ActiveSessionDetails,  fetch attempt, didFail, %@", &v10, 0x16u);
    }
  }

  return v6;
}

- (BOOL)_isActiveSessionDetailsOutOfSync
{
  v11 = *MEMORY[0x277D85DE8];
  if ([(SMSessionManager *)self _isActiveSessionDetailsLocalRecordExpired])
  {
    v3 = 1;
  }

  else
  {
    v3 = ![(SMSessionManager *)self _isActiveSessionDetailsFetchedFromCloudKitSinceBoot];
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v6 = @"NO";
      if (v3)
      {
        v6 = @"YES";
      }

      v7 = 136315394;
      v8 = "[SMSessionManager _isActiveSessionDetailsOutOfSync]";
      v9 = 2112;
      v10 = v6;
      _os_log_debug_impl(&dword_2304B3000, v4, OS_LOG_TYPE_DEBUG, "%s, ActiveSessionDetails isOutOfSync, %@", &v7, 0x16u);
    }
  }

  return v3;
}

- (BOOL)_isActiveSessionDetailsLocalRecordExpired
{
  v14 = *MEMORY[0x277D85DE8];
  defaultsManager = [(SMSessionManager *)self defaultsManager];
  v3 = [defaultsManager objectForKey:@"RTDefaultsSafetyCacheActiveSessionDetailsFetchSuccessDateKey"];

  if (v3)
  {
    date = [MEMORY[0x277CBEAA8] date];
    [date timeIntervalSinceDate:v3];
    v6 = v5 < 1800.0;
  }

  else
  {
    v6 = 0;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v9 = @"YES";
      if (v6)
      {
        v9 = @"NO";
      }

      v10 = 136315394;
      v11 = "[SMSessionManager _isActiveSessionDetailsLocalRecordExpired]";
      v12 = 2112;
      v13 = v9;
      _os_log_debug_impl(&dword_2304B3000, v7, OS_LOG_TYPE_DEBUG, "%s, ActiveSessionDetails isExpired, %@", &v10, 0x16u);
    }
  }

  return !v6;
}

- (BOOL)_isActiveSessionDetailsFetchedFromCloudKitSinceBoot
{
  v12 = *MEMORY[0x277D85DE8];
  defaultsManager = [(SMSessionManager *)self defaultsManager];
  v3 = [defaultsManager objectForKey:@"RTDefaultsSafetyCacheActiveSessionDetailsFetchedFromCloudKitSinceBootKey"];
  bOOLValue = [v3 BOOLValue];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v7 = @"NO";
      if (bOOLValue)
      {
        v7 = @"YES";
      }

      v8 = 136315394;
      v9 = "[SMSessionManager _isActiveSessionDetailsFetchedFromCloudKitSinceBoot]";
      v10 = 2112;
      v11 = v7;
      _os_log_debug_impl(&dword_2304B3000, v5, OS_LOG_TYPE_DEBUG, "%s, ActiveSessionDetails isRecordFetchedFromCKSinceBoot, %@", &v8, 0x16u);
    }
  }

  return bOOLValue;
}

- (id)_stateTransitionDecisionToState:(id)state transitionType:(unint64_t)type
{
  v145 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      state = [(SMSessionManager *)self state];
      *buf = 136315651;
      v140 = "[SMSessionManager _stateTransitionDecisionToState:transitionType:]";
      v141 = 2117;
      stateCopy2 = state;
      v143 = 2117;
      v144 = stateCopy;
      _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "%s, attempting state transition from state, %{sensitive}@, to state, %{sensitive}@", buf, 0x20u);
    }
  }

  if ((type & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    state2 = [(SMSessionManager *)self state];
    sessionState = [state2 sessionState];
    sessionState2 = [stateCopy sessionState];

    if (sessionState != sessionState2)
    {
      v20 = [SMSessionStateTransitionDecision alloc];
      v21 = &__block_literal_global_355;
      goto LABEL_95;
    }

    state3 = [(SMSessionManager *)self state];
    v13 = -[SMSessionManager _isHandoffAllowedInSessionState:](self, "_isHandoffAllowedInSessionState:", [state3 sessionState]);

    if (!v13)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v27 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          state = self->_state;
          *buf = 136315651;
          v140 = "[SMSessionManager _stateTransitionDecisionToState:transitionType:]";
          v141 = 2117;
          stateCopy2 = state;
          v143 = 2117;
          v144 = stateCopy;
          _os_log_impl(&dword_2304B3000, v27, OS_LOG_TYPE_INFO, "%s, state transition from state, %{sensitive}@, to state, %{sensitive}@, invalid and not allowed for a handoff operation", buf, 0x20u);
        }
      }

      v20 = [SMSessionStateTransitionDecision alloc];
      v21 = &__block_literal_global_358;
      goto LABEL_95;
    }
  }

  state4 = [(SMSessionManager *)self state];
  sessionState3 = [state4 sessionState];

  if (sessionState3 <= 6)
  {
    if (sessionState3 > 1)
    {
      if (sessionState3 != 2)
      {
        if (sessionState3 == 4)
        {
          sessionState4 = [stateCopy sessionState];
          v17 = [SMSessionStateTransitionDecision alloc];
          switch(sessionState4)
          {
            case 12:
              v85[0] = MEMORY[0x277D85DD0];
              v85[1] = 3221225472;
              v85[2] = __67__SMSessionManager__stateTransitionDecisionToState_transitionType___block_invoke_3_371;
              v85[3] = &unk_2788C5020;
              v85[4] = self;
              v86 = stateCopy;
              typeCopy = type;
              v18 = [(SMSessionStateTransitionDecision *)v17 initWithIsAllowed:1 actionBlock:v85];
              v19 = v86;
              goto LABEL_104;
            case 4:
              v82[0] = MEMORY[0x277D85DD0];
              v82[1] = 3221225472;
              v82[2] = __67__SMSessionManager__stateTransitionDecisionToState_transitionType___block_invoke_4_372;
              v82[3] = &unk_2788C5020;
              v82[4] = self;
              v83 = stateCopy;
              typeCopy2 = type;
              v18 = [(SMSessionStateTransitionDecision *)v17 initWithIsAllowed:1 actionBlock:v82];
              v19 = v83;
              goto LABEL_104;
            case 1:
              v88[0] = MEMORY[0x277D85DD0];
              v88[1] = 3221225472;
              v88[2] = __67__SMSessionManager__stateTransitionDecisionToState_transitionType___block_invoke_2_370;
              v88[3] = &unk_2788C5020;
              v88[4] = self;
              v89 = stateCopy;
              typeCopy3 = type;
              v18 = [(SMSessionStateTransitionDecision *)v17 initWithIsAllowed:1 actionBlock:v88];
              v19 = v89;
              goto LABEL_104;
          }

          v21 = &__block_literal_global_375;
          goto LABEL_94;
        }

        goto LABEL_39;
      }

      sessionState5 = [stateCopy sessionState];
      if (sessionState5 <= 6)
      {
        switch(sessionState5)
        {
          case 1:
            v46 = [SMSessionStateTransitionDecision alloc];
            v103[0] = MEMORY[0x277D85DD0];
            v103[1] = 3221225472;
            v103[2] = __67__SMSessionManager__stateTransitionDecisionToState_transitionType___block_invoke_17;
            v103[3] = &unk_2788C5020;
            v103[4] = self;
            v104 = stateCopy;
            typeCopy4 = type;
            v18 = [(SMSessionStateTransitionDecision *)v46 initWithIsAllowed:1 actionBlock:v103];
            v19 = v104;
            goto LABEL_104;
          case 2:
            v47 = [SMSessionStateTransitionDecision alloc];
            v91[0] = MEMORY[0x277D85DD0];
            v91[1] = 3221225472;
            v91[2] = __67__SMSessionManager__stateTransitionDecisionToState_transitionType___block_invoke_21;
            v91[3] = &unk_2788C5020;
            v91[4] = self;
            v92 = stateCopy;
            typeCopy5 = type;
            v18 = [(SMSessionStateTransitionDecision *)v47 initWithIsAllowed:1 actionBlock:v91];
            v19 = v92;
            goto LABEL_104;
          case 4:
            v41 = [SMSessionStateTransitionDecision alloc];
            v94[0] = MEMORY[0x277D85DD0];
            v94[1] = 3221225472;
            v94[2] = __67__SMSessionManager__stateTransitionDecisionToState_transitionType___block_invoke_20;
            v94[3] = &unk_2788C5020;
            v94[4] = self;
            v95 = stateCopy;
            typeCopy6 = type;
            v18 = [(SMSessionStateTransitionDecision *)v41 initWithIsAllowed:1 actionBlock:v94];
            v19 = v95;
            goto LABEL_104;
        }
      }

      else
      {
        if ((sessionState5 - 7) < 3)
        {
          goto LABEL_52;
        }

        if (sessionState5 == 12)
        {
          v48 = [SMSessionStateTransitionDecision alloc];
          v100[0] = MEMORY[0x277D85DD0];
          v100[1] = 3221225472;
          v100[2] = __67__SMSessionManager__stateTransitionDecisionToState_transitionType___block_invoke_18;
          v100[3] = &unk_2788C5020;
          v100[4] = self;
          v101 = stateCopy;
          typeCopy7 = type;
          v18 = [(SMSessionStateTransitionDecision *)v48 initWithIsAllowed:1 actionBlock:v100];
          v19 = v101;
          goto LABEL_104;
        }

        if (sessionState5 == 14)
        {
LABEL_52:
          v34 = [SMSessionStateTransitionDecision alloc];
          v97[0] = MEMORY[0x277D85DD0];
          v97[1] = 3221225472;
          v97[2] = __67__SMSessionManager__stateTransitionDecisionToState_transitionType___block_invoke_19;
          v97[3] = &unk_2788C5020;
          v97[4] = self;
          v98 = stateCopy;
          typeCopy8 = type;
          v18 = [(SMSessionStateTransitionDecision *)v34 initWithIsAllowed:1 actionBlock:v97];
          v19 = v98;
          goto LABEL_104;
        }
      }

      v20 = [SMSessionStateTransitionDecision alloc];
      v21 = &__block_literal_global_369;
    }

    else
    {
      if (sessionState3)
      {
        if (sessionState3 == 1)
        {
          sessionState6 = [stateCopy sessionState];
          v17 = [SMSessionStateTransitionDecision alloc];
          if (sessionState6 == 10)
          {
            v115[0] = MEMORY[0x277D85DD0];
            v115[1] = 3221225472;
            v115[2] = __67__SMSessionManager__stateTransitionDecisionToState_transitionType___block_invoke_10;
            v115[3] = &unk_2788C5020;
            v115[4] = self;
            v116 = stateCopy;
            typeCopy9 = type;
            v18 = [(SMSessionStateTransitionDecision *)v17 initWithIsAllowed:1 actionBlock:v115];
            v19 = v116;
            goto LABEL_104;
          }

          v21 = &__block_literal_global_362;
          goto LABEL_94;
        }

        goto LABEL_39;
      }

      sessionState7 = [stateCopy sessionState];
      if (sessionState7 > 9)
      {
        if ((sessionState7 - 10) < 2)
        {
          v45 = [SMSessionStateTransitionDecision alloc];
          v133[0] = MEMORY[0x277D85DD0];
          v133[1] = 3221225472;
          v133[2] = __67__SMSessionManager__stateTransitionDecisionToState_transitionType___block_invoke_3;
          v133[3] = &unk_2788C5020;
          v133[4] = self;
          v134 = stateCopy;
          typeCopy10 = type;
          v18 = [(SMSessionStateTransitionDecision *)v45 initWithIsAllowed:1 actionBlock:v133];
          v19 = v134;
          goto LABEL_104;
        }

        if (sessionState7 == 12)
        {
          v51 = [SMSessionStateTransitionDecision alloc];
          v118[0] = MEMORY[0x277D85DD0];
          v118[1] = 3221225472;
          v118[2] = __67__SMSessionManager__stateTransitionDecisionToState_transitionType___block_invoke_8;
          v118[3] = &unk_2788C5020;
          v118[4] = self;
          v119 = stateCopy;
          typeCopy11 = type;
          v18 = [(SMSessionStateTransitionDecision *)v51 initWithIsAllowed:1 actionBlock:v118];
          v19 = v119;
          goto LABEL_104;
        }

        if (sessionState7 == 14)
        {
          v40 = [SMSessionStateTransitionDecision alloc];
          v124[0] = MEMORY[0x277D85DD0];
          v124[1] = 3221225472;
          v124[2] = __67__SMSessionManager__stateTransitionDecisionToState_transitionType___block_invoke_6;
          v124[3] = &unk_2788C5020;
          v124[4] = self;
          v125 = stateCopy;
          typeCopy12 = type;
          v18 = [(SMSessionStateTransitionDecision *)v40 initWithIsAllowed:1 actionBlock:v124];
          v19 = v125;
          goto LABEL_104;
        }
      }

      else
      {
        if (sessionState7 > 6)
        {
          v44 = [SMSessionStateTransitionDecision alloc];
          v127[0] = MEMORY[0x277D85DD0];
          v127[1] = 3221225472;
          v127[2] = __67__SMSessionManager__stateTransitionDecisionToState_transitionType___block_invoke_5;
          v127[3] = &unk_2788C5020;
          v127[4] = self;
          v128 = stateCopy;
          typeCopy13 = type;
          v18 = [(SMSessionStateTransitionDecision *)v44 initWithIsAllowed:1 actionBlock:v127];
          v19 = v128;
          goto LABEL_104;
        }

        switch(sessionState7)
        {
          case 1:
            v49 = [SMSessionStateTransitionDecision alloc];
            v136[0] = MEMORY[0x277D85DD0];
            v136[1] = 3221225472;
            v136[2] = __67__SMSessionManager__stateTransitionDecisionToState_transitionType___block_invoke_2;
            v136[3] = &unk_2788C5020;
            v136[4] = self;
            v137 = stateCopy;
            typeCopy14 = type;
            v18 = [(SMSessionStateTransitionDecision *)v49 initWithIsAllowed:1 actionBlock:v136];
            v19 = v137;
            goto LABEL_104;
          case 2:
            v50 = [SMSessionStateTransitionDecision alloc];
            v130[0] = MEMORY[0x277D85DD0];
            v130[1] = 3221225472;
            v130[2] = __67__SMSessionManager__stateTransitionDecisionToState_transitionType___block_invoke_4;
            v130[3] = &unk_2788C5020;
            v130[4] = self;
            v131 = stateCopy;
            typeCopy15 = type;
            v18 = [(SMSessionStateTransitionDecision *)v50 initWithIsAllowed:1 actionBlock:v130];
            v19 = v131;
            goto LABEL_104;
          case 4:
            v32 = [SMSessionStateTransitionDecision alloc];
            v121[0] = MEMORY[0x277D85DD0];
            v121[1] = 3221225472;
            v121[2] = __67__SMSessionManager__stateTransitionDecisionToState_transitionType___block_invoke_7;
            v121[3] = &unk_2788C5020;
            v121[4] = self;
            v122 = stateCopy;
            typeCopy16 = type;
            v18 = [(SMSessionStateTransitionDecision *)v32 initWithIsAllowed:1 actionBlock:v121];
            v19 = v122;
            goto LABEL_104;
        }
      }

      v20 = [SMSessionStateTransitionDecision alloc];
      v21 = &__block_literal_global_360;
    }

LABEL_95:
    v18 = [(SMSessionStateTransitionDecision *)v20 initWithIsAllowed:0 actionBlock:v21];
    goto LABEL_105;
  }

  if (sessionState3 < 10)
  {
    state5 = [(SMSessionManager *)self state];
    sessionState8 = [state5 sessionState];
    sessionState9 = [stateCopy sessionState];

    if (sessionState8 == sessionState9)
    {
      if (type > 2)
      {
        if (type == 3)
        {
          v43 = [SMSessionStateTransitionDecision alloc];
          v76[0] = MEMORY[0x277D85DD0];
          v76[1] = 3221225472;
          v76[2] = __67__SMSessionManager__stateTransitionDecisionToState_transitionType___block_invoke_7_377;
          v76[3] = &unk_2788C5020;
          v76[4] = self;
          v77 = stateCopy;
          v78 = 3;
          v18 = [(SMSessionStateTransitionDecision *)v43 initWithIsAllowed:1 actionBlock:v76];
          v19 = v77;
          goto LABEL_104;
        }

        if (type == 5)
        {
          v38 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_2304B3000, v38, OS_LOG_TYPE_ERROR, "SMStateTransitionTypeNonActiveBootstrapWaitStateSync self transition, Unexpected transition, it should have never happened", buf, 2u);
          }
        }
      }

      else
      {
        if (type == 1)
        {
          v42 = [SMSessionStateTransitionDecision alloc];
          v73[0] = MEMORY[0x277D85DD0];
          v73[1] = 3221225472;
          v73[2] = __67__SMSessionManager__stateTransitionDecisionToState_transitionType___block_invoke_8_378;
          v73[3] = &unk_2788C5020;
          v73[4] = self;
          v74 = stateCopy;
          v75 = 1;
          v18 = [(SMSessionStateTransitionDecision *)v42 initWithIsAllowed:1 actionBlock:v73];
          v19 = v74;
          goto LABEL_104;
        }

        if (type == 2)
        {
          v26 = [SMSessionStateTransitionDecision alloc];
          v79[0] = MEMORY[0x277D85DD0];
          v79[1] = 3221225472;
          v79[2] = __67__SMSessionManager__stateTransitionDecisionToState_transitionType___block_invoke_6_376;
          v79[3] = &unk_2788C5020;
          v79[4] = self;
          v80 = stateCopy;
          v81 = 2;
          v18 = [(SMSessionStateTransitionDecision *)v26 initWithIsAllowed:1 actionBlock:v79];
          v19 = v80;
          goto LABEL_104;
        }
      }
    }

    goto LABEL_63;
  }

  if (sessionState3 > 11)
  {
    if (sessionState3 == 12)
    {
      sessionState10 = [stateCopy sessionState];
      v17 = [SMSessionStateTransitionDecision alloc];
      if (sessionState10 == 1)
      {
        v55[0] = MEMORY[0x277D85DD0];
        v55[1] = 3221225472;
        v55[2] = __67__SMSessionManager__stateTransitionDecisionToState_transitionType___block_invoke_7_387;
        v55[3] = &unk_2788C5020;
        v55[4] = self;
        v56 = stateCopy;
        typeCopy17 = type;
        v18 = [(SMSessionStateTransitionDecision *)v17 initWithIsAllowed:1 actionBlock:v55];
        v19 = v56;
        goto LABEL_104;
      }

      v21 = &__block_literal_global_390;
      goto LABEL_94;
    }

    if (sessionState3 != 14)
    {
LABEL_39:
      v30 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
      {
        state6 = [(SMSessionManager *)self state];
        sessionState11 = [state6 sessionState];
        *buf = 136315394;
        v140 = "[SMSessionManager _stateTransitionDecisionToState:transitionType:]";
        v141 = 2048;
        stateCopy2 = sessionState11;
        _os_log_fault_impl(&dword_2304B3000, v30, OS_LOG_TYPE_FAULT, "%s, UNHANDLED FROM STATE, %lu", buf, 0x16u);
      }

      v20 = [SMSessionStateTransitionDecision alloc];
      v21 = &__block_literal_global_393;
      goto LABEL_95;
    }

LABEL_63:
    sessionState12 = [stateCopy sessionState];
    v17 = [SMSessionStateTransitionDecision alloc];
    if (sessionState12 <= 3)
    {
      if (sessionState12 == 1)
      {
        v70[0] = MEMORY[0x277D85DD0];
        v70[1] = 3221225472;
        v70[2] = __67__SMSessionManager__stateTransitionDecisionToState_transitionType___block_invoke_379;
        v70[3] = &unk_2788C5020;
        v70[4] = self;
        v71 = stateCopy;
        typeCopy18 = type;
        v18 = [(SMSessionStateTransitionDecision *)v17 initWithIsAllowed:1 actionBlock:v70];
        v19 = v71;
        goto LABEL_104;
      }

      if (sessionState12 == 2)
      {
        v64[0] = MEMORY[0x277D85DD0];
        v64[1] = 3221225472;
        v64[2] = __67__SMSessionManager__stateTransitionDecisionToState_transitionType___block_invoke_3_381;
        v64[3] = &unk_2788C5020;
        v64[4] = self;
        v65 = stateCopy;
        typeCopy19 = type;
        v18 = [(SMSessionStateTransitionDecision *)v17 initWithIsAllowed:1 actionBlock:v64];
        v19 = v65;
        goto LABEL_104;
      }
    }

    else
    {
      switch(sessionState12)
      {
        case 4:
          v61[0] = MEMORY[0x277D85DD0];
          v61[1] = 3221225472;
          v61[2] = __67__SMSessionManager__stateTransitionDecisionToState_transitionType___block_invoke_4_382;
          v61[3] = &unk_2788C5020;
          v61[4] = self;
          v62 = stateCopy;
          typeCopy20 = type;
          v18 = [(SMSessionStateTransitionDecision *)v17 initWithIsAllowed:1 actionBlock:v61];
          v19 = v62;
          goto LABEL_104;
        case 12:
          v67[0] = MEMORY[0x277D85DD0];
          v67[1] = 3221225472;
          v67[2] = __67__SMSessionManager__stateTransitionDecisionToState_transitionType___block_invoke_2_380;
          v67[3] = &unk_2788C5020;
          v67[4] = self;
          v68 = stateCopy;
          typeCopy21 = type;
          v18 = [(SMSessionStateTransitionDecision *)v17 initWithIsAllowed:1 actionBlock:v67];
          v19 = v68;
          goto LABEL_104;
        case 14:
          v58[0] = MEMORY[0x277D85DD0];
          v58[1] = 3221225472;
          v58[2] = __67__SMSessionManager__stateTransitionDecisionToState_transitionType___block_invoke_5_383;
          v58[3] = &unk_2788C5020;
          v58[4] = self;
          v59 = stateCopy;
          typeCopy22 = type;
          v18 = [(SMSessionStateTransitionDecision *)v17 initWithIsAllowed:1 actionBlock:v58];
          v19 = v59;
          goto LABEL_104;
      }
    }

    v21 = &__block_literal_global_386;
    goto LABEL_94;
  }

  if (sessionState3 == 10)
  {
    sessionState13 = [stateCopy sessionState];
    if (sessionState13 == 11 || sessionState13 == 1)
    {
      v36 = [SMSessionStateTransitionDecision alloc];
      v112[0] = MEMORY[0x277D85DD0];
      v112[1] = 3221225472;
      v112[2] = __67__SMSessionManager__stateTransitionDecisionToState_transitionType___block_invoke_12;
      v112[3] = &unk_2788C5020;
      v112[4] = self;
      v113 = stateCopy;
      typeCopy23 = type;
      v18 = [(SMSessionStateTransitionDecision *)v36 initWithIsAllowed:1 actionBlock:v112];
      v19 = v113;
      goto LABEL_104;
    }

    v20 = [SMSessionStateTransitionDecision alloc];
    v21 = &__block_literal_global_364;
    goto LABEL_95;
  }

  sessionState14 = [stateCopy sessionState];
  v17 = [SMSessionStateTransitionDecision alloc];
  if (sessionState14 == 2)
  {
    v106[0] = MEMORY[0x277D85DD0];
    v106[1] = 3221225472;
    v106[2] = __67__SMSessionManager__stateTransitionDecisionToState_transitionType___block_invoke_15;
    v106[3] = &unk_2788C5020;
    v106[4] = self;
    v107 = stateCopy;
    typeCopy24 = type;
    v18 = [(SMSessionStateTransitionDecision *)v17 initWithIsAllowed:1 actionBlock:v106];
    v19 = v107;
    goto LABEL_104;
  }

  if (sessionState14 != 1)
  {
    v21 = &__block_literal_global_366_1;
LABEL_94:
    v20 = v17;
    goto LABEL_95;
  }

  v109[0] = MEMORY[0x277D85DD0];
  v109[1] = 3221225472;
  v109[2] = __67__SMSessionManager__stateTransitionDecisionToState_transitionType___block_invoke_14;
  v109[3] = &unk_2788C5020;
  v109[4] = self;
  v110 = stateCopy;
  typeCopy25 = type;
  v18 = [(SMSessionStateTransitionDecision *)v17 initWithIsAllowed:1 actionBlock:v109];
  v19 = v110;
LABEL_104:

LABEL_105:

  return v18;
}

uint64_t __67__SMSessionManager__stateTransitionDecisionToState_transitionType___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  *(v3 + 8) = v2;

  [*(a1 + 32) _notifyObserversForSessionResume];
  [*(a1 + 32) _notifyObserversForSessionEndForActiveDevice:{objc_msgSend(*(a1 + 32), "_isActiveDevice")}];
  [*(a1 + 32) _initializeUserDisabledConnectivityWatchDefault];
  [MEMORY[0x277D4AA60] endActivities];
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);

  return [v5 _performActionsAndUpdatesUponStateTransitionWithType:v6];
}

uint64_t __67__SMSessionManager__stateTransitionDecisionToState_transitionType___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  *(v3 + 8) = v2;

  [*(a1 + 32) _notifyObserversForSessionResume];
  [*(a1 + 32) _bootstrapHysteresisState];
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);

  return [v5 _performActionsAndUpdatesUponStateTransitionWithType:v6];
}

uint64_t __67__SMSessionManager__stateTransitionDecisionToState_transitionType___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  *(v3 + 8) = v2;

  [*(a1 + 32) _notifyObserversForSessionResume];
  [*(a1 + 32) _bootstrapHysteresisState];
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);

  return [v5 _performActionsAndUpdatesUponStateTransitionWithType:v6];
}

uint64_t __67__SMSessionManager__stateTransitionDecisionToState_transitionType___block_invoke_5(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  *(v3 + 8) = v2;

  [*(a1 + 32) _notifyObserversForSessionResume];
  if (*(a1 + 48) != 5)
  {
    [*(a1 + 32) _setupAnomalyAlertsOnResume];
  }

  [*(a1 + 32) _bootstrapHysteresisState];
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);

  return [v5 _performActionsAndUpdatesUponStateTransitionWithType:v6];
}

uint64_t __67__SMSessionManager__stateTransitionDecisionToState_transitionType___block_invoke_6(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  *(v3 + 8) = v2;

  [*(a1 + 32) _notifyObserversForSessionResume];
  [*(a1 + 32) _setupAnomalyAlertsOnResume];
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);

  return [v5 _performActionsAndUpdatesUponStateTransitionWithType:v6];
}

uint64_t __67__SMSessionManager__stateTransitionDecisionToState_transitionType___block_invoke_7(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  *(v3 + 8) = v2;

  [*(a1 + 32) _notifyObserversForSessionResume];
  [*(a1 + 32) _bootstrapHysteresisState];
  [*(a1 + 32) _reconnectCarouselSessionAndSetupTimer];
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);

  return [v5 _performActionsAndUpdatesUponStateTransitionWithType:v6];
}

uint64_t __67__SMSessionManager__stateTransitionDecisionToState_transitionType___block_invoke_8(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  *(v3 + 8) = v2;

  [*(a1 + 32) _notifyObserversForSessionResume];
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);

  return [v5 _performActionsAndUpdatesUponStateTransitionWithType:v6];
}

uint64_t __67__SMSessionManager__stateTransitionDecisionToState_transitionType___block_invoke_10(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  *(v3 + 8) = v2;

  [*(a1 + 32) _notifyObserversForStateChangeWithTransitionType:1];
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);

  return [v5 _performActionsAndUpdatesUponStateTransitionWithType:v6];
}

uint64_t __67__SMSessionManager__stateTransitionDecisionToState_transitionType___block_invoke_12(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  *(v3 + 8) = v2;

  [*(a1 + 32) _notifyObserversForStateChangeWithTransitionType:1];
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);

  return [v5 _performActionsAndUpdatesUponStateTransitionWithType:v6];
}

uint64_t __67__SMSessionManager__stateTransitionDecisionToState_transitionType___block_invoke_14(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  *(v3 + 8) = v2;

  [*(a1 + 32) _notifyObserversForStateChangeWithTransitionType:1];
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);

  return [v5 _performActionsAndUpdatesUponStateTransitionWithType:v6];
}

uint64_t __67__SMSessionManager__stateTransitionDecisionToState_transitionType___block_invoke_15(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  *(v3 + 8) = v2;

  [*(a1 + 32) _notifyObserversForStateChangeWithTransitionType:1];
  [*(a1 + 32) _initializeUserDisabledConnectivityWatchDefault];
  [*(a1 + 32) _updateUnsupportedSeparationStateIfNeededWithNotify:0];
  [*(a1 + 32) _notifyObserversForStart];
  [MEMORY[0x277D4AA60] startActivityWithState:*(a1 + 40) localState:*(*(a1 + 32) + 16)];
  v5 = [*(a1 + 32) sessionMetricManager];
  [v5 onSessionStartedWithState:*(*(a1 + 32) + 8)];

  v6 = *(a1 + 32);
  v7 = *(a1 + 48);

  return [v6 _performActionsAndUpdatesUponStateTransitionWithType:v7];
}

uint64_t __67__SMSessionManager__stateTransitionDecisionToState_transitionType___block_invoke_17(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  *(v3 + 8) = v2;

  [*(a1 + 32) _notifyObserversForStateChangeWithTransitionType:1];
  [*(a1 + 32) _notifyObserversForSessionEndForActiveDevice:{objc_msgSend(*(a1 + 32), "_isActiveDevice")}];
  [*(a1 + 32) _initializeUserDisabledConnectivityWatchDefault];
  [MEMORY[0x277D4AA60] endActivities];
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);

  return [v5 _performActionsAndUpdatesUponStateTransitionWithType:v6];
}

uint64_t __67__SMSessionManager__stateTransitionDecisionToState_transitionType___block_invoke_18(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  *(v3 + 8) = v2;

  [*(a1 + 32) _notifyObserversForStateChangeWithTransitionType:1];
  [*(a1 + 32) _notifyObserversForSessionEndForActiveDevice:{objc_msgSend(*(a1 + 32), "_isActiveDevice")}];
  [*(a1 + 32) _initializeUserDisabledConnectivityWatchDefault];
  [*(a1 + 32) _postEndAwarenessLiveActivity];
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);

  return [v5 _performActionsAndUpdatesUponStateTransitionWithType:v6];
}

void __67__SMSessionManager__stateTransitionDecisionToState_transitionType___block_invoke_19(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  *(v3 + 8) = v2;

  [*(a1 + 32) _notifyObserversForStateChangeWithTransitionType:1];
  [*(a1 + 32) _postAnomalyAlert];
  [*(a1 + 32) _performActionsAndUpdatesUponStateTransitionWithType:*(a1 + 48)];
  v6 = [*(a1 + 32) sessionMetricManager];
  v5 = [*(*(a1 + 32) + 8) monitorContext];
  [v6 onDeclareAnomalyForTriggerCategory:{objc_msgSend(v5, "triggerCategory")}];
}

void __67__SMSessionManager__stateTransitionDecisionToState_transitionType___block_invoke_20(uint64_t a1)
{
  v5 = [*(a1 + 32) _checkDefaultsForCacheReleaseDateWithState:*(*(a1 + 32) + 8)];
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  *(v3 + 8) = v2;

  [*(a1 + 32) _notifyObserversForStateChangeWithTransitionType:1];
  [*(a1 + 32) _postCacheReleaseAndUpdatingWithTargetDate:v5];
  [*(a1 + 32) _performActionsAndUpdatesUponStateTransitionWithType:*(a1 + 48)];
}

uint64_t __67__SMSessionManager__stateTransitionDecisionToState_transitionType___block_invoke_21(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) state];
  v3 = [v2 configuration];
  v4 = [*(a1 + 40) configuration];
  v5 = [v3 isEqual:v4];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v12 = 136315394;
      v13 = "[SMSessionManager _stateTransitionDecisionToState:transitionType:]_block_invoke_21";
      v14 = 1024;
      v15 = v5 ^ 1;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%s, isSessionConfigChanged, %{Bool}d", &v12, 0x12u);
    }
  }

  v7 = [*(a1 + 40) copy];
  v8 = *(a1 + 32);
  v9 = *(v8 + 8);
  *(v8 + 8) = v7;

  [*(a1 + 32) _notifyObserversForStateChangeWithTransitionType:*(a1 + 48)];
  v10 = *(a1 + 48);
  if (v10 == 3)
  {
    [*(a1 + 32) _notifyObserversForBecomingNonActiveDevice];
  }

  else if (v10 == 2)
  {
    [*(a1 + 32) _notifyObserversForBecomingActiveDevice];
  }

  else if (v10 == 1 && (v5 & 1) == 0)
  {
    [*(a1 + 32) _notifyObserversForConfigurationChange];
  }

  return [*(a1 + 32) _performActionsAndUpdatesUponStateTransitionWithType:*(a1 + 48)];
}

uint64_t __67__SMSessionManager__stateTransitionDecisionToState_transitionType___block_invoke_2_370(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  *(v3 + 8) = v2;

  [*(a1 + 32) _notifyObserversForStateChangeWithTransitionType:1];
  [*(a1 + 32) _notifyObserversForSessionEndForActiveDevice:{objc_msgSend(*(a1 + 32), "_isActiveDevice")}];
  [*(a1 + 32) _initializeUserDisabledConnectivityWatchDefault];
  [*(a1 + 32) _stopPlayingCacheReleaseAndUpdatingSound];
  [MEMORY[0x277D4AA60] endActivities];
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);

  return [v5 _performActionsAndUpdatesUponStateTransitionWithType:v6];
}

uint64_t __67__SMSessionManager__stateTransitionDecisionToState_transitionType___block_invoke_3_371(uint64_t a1)
{
  [*(a1 + 32) _stopPlayingCacheReleaseAndUpdatingSound];
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  *(v3 + 8) = v2;

  [*(a1 + 32) _notifyObserversForStateChangeWithTransitionType:1];
  [*(a1 + 32) _notifyObserversForSessionEndForActiveDevice:{objc_msgSend(*(a1 + 32), "_isActiveDevice")}];
  [*(a1 + 32) _initializeUserDisabledConnectivityWatchDefault];
  [*(a1 + 32) _postEndAwarenessLiveActivity];
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);

  return [v5 _performActionsAndUpdatesUponStateTransitionWithType:v6];
}

uint64_t __67__SMSessionManager__stateTransitionDecisionToState_transitionType___block_invoke_4_372(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  *(v3 + 8) = v2;

  [*(a1 + 32) _notifyObserversForStateChangeWithTransitionType:*(a1 + 48)];
  v5 = *(a1 + 48);
  if (v5 == 3)
  {
    [*(a1 + 32) _notifyObserversForBecomingNonActiveDevice];
  }

  else if (v5 == 2)
  {
    [*(a1 + 32) _notifyObserversForBecomingActiveDevice];
  }

  v6 = *(a1 + 32);
  v7 = *(a1 + 48);

  return [v6 _performActionsAndUpdatesUponStateTransitionWithType:v7];
}

uint64_t __67__SMSessionManager__stateTransitionDecisionToState_transitionType___block_invoke_6_376(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  *(v3 + 8) = v2;

  [*(a1 + 32) _notifyObserversForStateChangeWithTransitionType:2];
  [*(a1 + 32) _notifyObserversForBecomingActiveDevice];
  [*(a1 + 32) _bootstrapHysteresisState];
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);

  return [v5 _performActionsAndUpdatesUponStateTransitionWithType:v6];
}

uint64_t __67__SMSessionManager__stateTransitionDecisionToState_transitionType___block_invoke_7_377(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  *(v3 + 8) = v2;

  [*(a1 + 32) _notifyObserversForStateChangeWithTransitionType:3];
  [*(a1 + 32) _notifyObserversForBecomingNonActiveDevice];
  [*(a1 + 32) _teardownAnomalyAlerts];
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);

  return [v5 _performActionsAndUpdatesUponStateTransitionWithType:v6];
}

uint64_t __67__SMSessionManager__stateTransitionDecisionToState_transitionType___block_invoke_8_378(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  *(v3 + 8) = v2;

  [*(a1 + 32) _notifyObserversForStateChangeWithTransitionType:*(a1 + 48)];
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);

  return [v5 _performActionsAndUpdatesUponStateTransitionWithType:v6];
}

uint64_t __67__SMSessionManager__stateTransitionDecisionToState_transitionType___block_invoke_379(uint64_t a1)
{
  [*(a1 + 32) _teardownAnomalyAlerts];
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  *(v3 + 8) = v2;

  [*(a1 + 32) _notifyObserversForStateChangeWithTransitionType:1];
  [*(a1 + 32) _notifyObserversForSessionEndForActiveDevice:{objc_msgSend(*(a1 + 32), "_isActiveDevice")}];
  [*(a1 + 32) _initializeUserDisabledConnectivityWatchDefault];
  [MEMORY[0x277D4AA60] endActivities];
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);

  return [v5 _performActionsAndUpdatesUponStateTransitionWithType:v6];
}

uint64_t __67__SMSessionManager__stateTransitionDecisionToState_transitionType___block_invoke_2_380(uint64_t a1)
{
  [*(a1 + 32) _teardownAnomalyAlerts];
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  *(v3 + 8) = v2;

  [*(a1 + 32) _notifyObserversForStateChangeWithTransitionType:1];
  [*(a1 + 32) _notifyObserversForSessionEndForActiveDevice:{objc_msgSend(*(a1 + 32), "_isActiveDevice")}];
  [*(a1 + 32) _initializeUserDisabledConnectivityWatchDefault];
  [*(a1 + 32) _postEndAwarenessLiveActivity];
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);

  return [v5 _performActionsAndUpdatesUponStateTransitionWithType:v6];
}

uint64_t __67__SMSessionManager__stateTransitionDecisionToState_transitionType___block_invoke_3_381(uint64_t a1)
{
  [*(a1 + 32) _teardownAnomalyAlerts];
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  *(v3 + 8) = v2;

  [*(a1 + 32) _notifyObserversForStateChangeWithTransitionType:1];
  [*(a1 + 32) _notifyObserversForTriggerResponse];
  [*(a1 + 32) _notifyObserversForConfigurationChange];
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);

  return [v5 _performActionsAndUpdatesUponStateTransitionWithType:v6];
}

void __67__SMSessionManager__stateTransitionDecisionToState_transitionType___block_invoke_4_382(uint64_t a1)
{
  [*(a1 + 32) _teardownAnomalyAlerts];
  v5 = [*(a1 + 32) _checkDefaultsForCacheReleaseDateWithState:*(*(a1 + 32) + 8)];
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  *(v3 + 8) = v2;

  [*(a1 + 32) _notifyObserversForStateChangeWithTransitionType:1];
  [*(a1 + 32) _notifyObserversForTriggerResponse];
  [*(a1 + 32) _postCacheReleaseAndUpdatingWithTargetDate:v5];
  [*(a1 + 32) _performActionsAndUpdatesUponStateTransitionWithType:*(a1 + 48)];
}

uint64_t __67__SMSessionManager__stateTransitionDecisionToState_transitionType___block_invoke_5_383(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  *(v3 + 8) = v2;

  [*(a1 + 32) _notifyObserversForStateChangeWithTransitionType:*(a1 + 48)];
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);

  return [v5 _performActionsAndUpdatesUponStateTransitionWithType:v6];
}

uint64_t __67__SMSessionManager__stateTransitionDecisionToState_transitionType___block_invoke_7_387(uint64_t a1)
{
  [*(a1 + 32) _invalidateScreenLockMonitor];
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  *(v3 + 8) = v2;

  [*(a1 + 32) _notifyObserversForStateChangeWithTransitionType:1];
  [MEMORY[0x277D4AA60] endActivities];
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);

  return [v5 _performActionsAndUpdatesUponStateTransitionWithType:v6];
}

- (void)_setPendingSendSessionEndMessageWithReason:(unint64_t)reason associatedGUID:(id)d
{
  v17 = *MEMORY[0x277D85DE8];
  dCopy = d;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v11 = 136315650;
      v12 = "[SMSessionManager _setPendingSendSessionEndMessageWithReason:associatedGUID:]";
      v13 = 2048;
      reasonCopy = reason;
      v15 = 2112;
      v16 = dCopy;
      _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "%s, reason, %ld, associatedGUID, %@", &v11, 0x20u);
    }
  }

  defaultsManager = [(SMSessionManager *)self defaultsManager];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:reason];
  [defaultsManager setObject:v9 forKey:@"RTDefaultsSessionManagerPendingSendSessionEndMessageReasonKey"];

  defaultsManager2 = [(SMSessionManager *)self defaultsManager];
  [defaultsManager2 setObject:dCopy forKey:@"RTDefaultsSessionManagerPendingSendSessionEndMessageAssociatedGUIDKey"];
}

- (void)_resetPendingSendSessionEndMessage
{
  v8 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v6 = 136315138;
      v7 = "[SMSessionManager _resetPendingSendSessionEndMessage]";
      _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_INFO, "%s", &v6, 0xCu);
    }
  }

  defaultsManager = [(SMSessionManager *)self defaultsManager];
  [defaultsManager setObject:0 forKey:@"RTDefaultsSessionManagerPendingSendSessionEndMessageReasonKey"];

  defaultsManager2 = [(SMSessionManager *)self defaultsManager];
  [defaultsManager2 setObject:0 forKey:@"RTDefaultsSessionManagerPendingSendSessionEndMessageAssociatedGUIDKey"];
}

- (void)_setupTimerAndLockMonitorForEndAwareness
{
  v51 = *MEMORY[0x277D85DE8];
  endAwarenessBeforeUnlockXPCTimerAlarm = [(SMSessionManager *)self endAwarenessBeforeUnlockXPCTimerAlarm];
  [(SMSessionManager *)self _invalidateTimer:endAwarenessBeforeUnlockXPCTimerAlarm];

  [(SMSessionManager *)self _invalidateScreenLockMonitor];
  objc_initWeak(&location, self);
  v42[0] = 0;
  v42[1] = v42;
  v42[2] = 0x3032000000;
  v42[3] = __Block_byref_object_copy__198;
  v42[4] = __Block_byref_object_dispose__198;
  configuration = [(SMSessionManagerState *)self->_state configuration];
  sessionID = [configuration sessionID];

  v5 = [RTXPCTimerAlarm alloc];
  queue = [(SMSessionManager *)self queue];
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __60__SMSessionManager__setupTimerAndLockMonitorForEndAwareness__block_invoke;
  v40[3] = &unk_2788D3260;
  v40[4] = self;
  objc_copyWeak(&v41, &location);
  v40[5] = v42;
  v7 = [(RTXPCTimerAlarm *)v5 initWithIdentifier:@"com.apple.routined.safetyMonitor.sessionManager.endAwarenessBeforeUnlock" queue:queue handler:v40];
  [(SMSessionManager *)self setEndAwarenessBeforeUnlockXPCTimerAlarm:v7];

  defaultsManager = [(SMSessionManager *)self defaultsManager];
  v9 = [defaultsManager objectForKey:@"RTDefaultsSessionManagerEndAwarenessBeforeUnlockTimerDurationKey"];

  if (v9)
  {
    defaultsManager2 = [(SMSessionManager *)self defaultsManager];
    v11 = [defaultsManager2 objectForKey:@"RTDefaultsSessionManagerEndAwarenessBeforeUnlockTimerDurationKey"];
    [v11 doubleValue];
    v13 = v12;
  }

  else
  {
    v13 = *MEMORY[0x277D4ACC8];
  }

  state = [(SMSessionManager *)self state];
  sessionStateTransitionDate = [state sessionStateTransitionDate];
  v16 = [sessionStateTransitionDate dateByAddingTimeInterval:v13];

  endAwarenessBeforeUnlockXPCTimerAlarm2 = [(SMSessionManager *)self endAwarenessBeforeUnlockXPCTimerAlarm];
  v39 = 0;
  [endAwarenessBeforeUnlockXPCTimerAlarm2 fireWithDate:v16 error:&v39];
  v18 = v39;

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v19 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      endAwarenessBeforeUnlockXPCTimerAlarm3 = [(SMSessionManager *)self endAwarenessBeforeUnlockXPCTimerAlarm];
      identifier = [endAwarenessBeforeUnlockXPCTimerAlarm3 identifier];
      *buf = 136315650;
      v46 = "[SMSessionManager _setupTimerAndLockMonitorForEndAwareness]";
      v47 = 2112;
      v48 = identifier;
      v49 = 2112;
      v50 = v16;
      _os_log_impl(&dword_2304B3000, v19, OS_LOG_TYPE_INFO, "%s, %@, set with end date, %@", buf, 0x20u);
    }
  }

  if (v18)
  {
    v22 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      endAwarenessBeforeUnlockXPCTimerAlarm4 = [(SMSessionManager *)self endAwarenessBeforeUnlockXPCTimerAlarm];
      identifier2 = [endAwarenessBeforeUnlockXPCTimerAlarm4 identifier];
      localizedDescription = [v18 localizedDescription];
      *buf = 136315650;
      v46 = "[SMSessionManager _setupTimerAndLockMonitorForEndAwareness]";
      v47 = 2112;
      v48 = identifier2;
      v49 = 2112;
      v50 = localizedDescription;
      _os_log_fault_impl(&dword_2304B3000, v22, OS_LOG_TYPE_FAULT, "%s, %@, unable to start timer error, %@", buf, 0x20u);
    }
  }

  configuration2 = [(SMSessionManagerState *)self->_state configuration];
  sessionID2 = [configuration2 sessionID];

  objc_initWeak(buf, self);
  v25 = [SMScreenLockMonitor alloc];
  queue2 = [(SMSessionManager *)self queue];
  v32 = MEMORY[0x277D85DD0];
  v33 = 3221225472;
  v34 = __60__SMSessionManager__setupTimerAndLockMonitorForEndAwareness__block_invoke_399;
  v35 = &unk_2788D3288;
  objc_copyWeak(&v38, buf);
  selfCopy = self;
  v27 = sessionID2;
  v37 = v27;
  v28 = [(SMScreenLockMonitor *)v25 initWithQueue:queue2 handler:&v32];
  [(SMSessionManager *)self setScreenLockMonitor:v28, v32, v33, v34, v35, selfCopy];

  objc_destroyWeak(&v38);
  objc_destroyWeak(buf);

  objc_destroyWeak(&v41);
  _Block_object_dispose(v42, 8);

  objc_destroyWeak(&location);
}

void __60__SMSessionManager__setupTimerAndLockMonitorForEndAwareness__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = [*(a1 + 32) endAwarenessBeforeUnlockXPCTimerAlarm];
      v4 = [v3 identifier];
      v7 = 138412290;
      v8 = v4;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%@ expired in SMSessionManager", &v7, 0xCu);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [*(a1 + 32) _invalidateScreenLockMonitor];
  v6 = [WeakRetained endAwarenessBeforeUnlockXPCTimerAlarm];
  [WeakRetained _invalidateTimer:v6];

  [WeakRetained terminateSessionWithSessionID:*(*(*(a1 + 40) + 8) + 40)];
}

void __60__SMSessionManager__setupTimerAndLockMonitorForEndAwareness__block_invoke_399(id *a1, int a2)
{
  v25 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = "NO";
      if (a2)
      {
        v6 = "YES";
      }

      *buf = 136315394;
      v22 = "[SMSessionManager _setupTimerAndLockMonitorForEndAwareness]_block_invoke";
      v23 = 2080;
      v24 = v6;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "%s, screen lock status changed isDeviceLocked, %s", buf, 0x16u);
    }
  }

  if ((a2 & 1) == 0)
  {
    [WeakRetained _invalidateScreenLockMonitor];
    v7 = [WeakRetained endAwarenessBeforeUnlockXPCTimerAlarm];
    [WeakRetained _invalidateTimer:v7];

    v8 = [a1[4] defaultsManager];
    v9 = [v8 objectForKey:@"RTDefaultsSessionManagerEndAwarenessAfterUnlockTimerDurationKey"];

    if (v9)
    {
      v10 = [a1[4] defaultsManager];
      v11 = [v10 objectForKey:@"RTDefaultsSessionManagerEndAwarenessAfterUnlockTimerDurationKey"];
      [v11 doubleValue];
      v13 = v12;
    }

    else
    {
      v13 = *MEMORY[0x277D4ACC0];
    }

    v14 = dispatch_time(0, (v13 * 1000000000.0));
    v15 = [WeakRetained queue];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __60__SMSessionManager__setupTimerAndLockMonitorForEndAwareness__block_invoke_403;
    v18[3] = &unk_2788C4A70;
    v16 = a1[5];
    v17 = a1[4];
    v19 = v16;
    v20 = v17;
    dispatch_after(v14, v15, v18);
  }
}

uint64_t __60__SMSessionManager__setupTimerAndLockMonitorForEndAwareness__block_invoke_403(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v4 = *(a1 + 32);
    v5 = 136315394;
    v6 = "[SMSessionManager _setupTimerAndLockMonitorForEndAwareness]_block_invoke";
    v7 = 2112;
    v8 = v4;
    _os_log_error_impl(&dword_2304B3000, v2, OS_LOG_TYPE_ERROR, "%s, terminating session after awareness, sessionID, %@", &v5, 0x16u);
  }

  return [*(a1 + 40) _terminateSessionWithSessionID:*(a1 + 32)];
}

- (void)_setUpCacheReleaseTimer
{
  v24 = *MEMORY[0x277D85DE8];
  cacheReleaseXPCTimerAlarm = [(SMSessionManager *)self cacheReleaseXPCTimerAlarm];
  [(SMSessionManager *)self _invalidateTimer:cacheReleaseXPCTimerAlarm];

  objc_initWeak(&location, self);
  v4 = [RTXPCTimerAlarm alloc];
  v5 = cacheReleaseXPCTimerAlarmIdentifier;
  queue = [(SMSessionManager *)self queue];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __43__SMSessionManager__setUpCacheReleaseTimer__block_invoke;
  v17[3] = &unk_2788C7638;
  v17[4] = self;
  objc_copyWeak(&v18, &location);
  v7 = [(RTXPCTimerAlarm *)v4 initWithIdentifier:v5 queue:queue handler:v17];
  [(SMSessionManager *)self setCacheReleaseXPCTimerAlarm:v7];

  state = [(SMSessionManager *)self state];
  sessionStateTransitionDate = [state sessionStateTransitionDate];
  [(SMSessionManager *)self cacheReleaseMaxDuration];
  v10 = [sessionStateTransitionDate dateByAddingTimeInterval:?];

  cacheReleaseXPCTimerAlarm2 = [(SMSessionManager *)self cacheReleaseXPCTimerAlarm];
  v16 = 0;
  [cacheReleaseXPCTimerAlarm2 fireWithDate:v10 error:&v16];
  v12 = v16;

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v21 = "[SMSessionManager _setUpCacheReleaseTimer]";
      v22 = 2112;
      v23 = v10;
      _os_log_impl(&dword_2304B3000, v13, OS_LOG_TYPE_INFO, "%s, timer set with end date, %@", buf, 0x16u);
    }
  }

  if (v12)
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      localizedDescription = [v12 localizedDescription];
      *buf = 136315394;
      v21 = "[SMSessionManager _setUpCacheReleaseTimer]";
      v22 = 2112;
      v23 = localizedDescription;
      _os_log_fault_impl(&dword_2304B3000, v14, OS_LOG_TYPE_FAULT, "%s cacheReleaseXPCTimerAlarm fireWithDate hit error: %@", buf, 0x16u);
    }
  }

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

void __43__SMSessionManager__setUpCacheReleaseTimer__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = [*(a1 + 32) cacheReleaseXPCTimerAlarm];
      v4 = [v3 identifier];
      v9 = 136315394;
      v10 = "[SMSessionManager _setUpCacheReleaseTimer]_block_invoke";
      v11 = 2112;
      v12 = v4;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%s, %@ expired in SMSessionManager", &v9, 0x16u);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = [WeakRetained cacheReleaseXPCTimerAlarm];
  [WeakRetained _invalidateTimer:v6];

  v7 = [*(*(a1 + 32) + 8) configuration];
  v8 = [v7 sessionID];
  [WeakRetained _endSessionForSessionID:v8 reason:3 handler:&__block_literal_global_406];
}

void __43__SMSessionManager__setUpCacheReleaseTimer__block_invoke_404(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (v2)
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = [v2 localizedDescription];
      v5 = 136315394;
      v6 = "[SMSessionManager _setUpCacheReleaseTimer]_block_invoke";
      v7 = 2112;
      v8 = v4;
      _os_log_error_impl(&dword_2304B3000, v3, OS_LOG_TYPE_ERROR, "%s, error ending session: %@", &v5, 0x16u);
    }
  }
}

- (void)_postCacheReleaseAndUpdatingWithTargetDate:(id)date
{
  v16 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v12 = 136315138;
      v13 = "[SMSessionManager _postCacheReleaseAndUpdatingWithTargetDate:]";
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "%s", &v12, 0xCu);
    }
  }

  if ([(SMSessionManager *)self _shouldAlertNowWithTargetAlertDate:dateCopy])
  {
    state = [(SMSessionManager *)self state];
    [(SMSessionManager *)self _updateActivityWithState:state];

    v7 = MEMORY[0x277D4ABC8];
    state2 = [(SMSessionManager *)self state];
    monitorContext = [state2 monitorContext];
    LOBYTE(v7) = [v7 isSOSTriggerCategory:{objc_msgSend(monitorContext, "triggerCategory")}];

    if ((v7 & 1) == 0)
    {
      [(SMSessionManager *)self _playCacheReleaseAndUpdatingSound];
    }

    carPlayAlertManager = [(SMSessionManager *)self carPlayAlertManager];
    state3 = [(SMSessionManager *)self state];
    [carPlayAlertManager postCarPlayNotificationForNotificationType:5 sessionManagerState:state3 handler:0];
  }

  else
  {
    carPlayAlertManager = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(carPlayAlertManager, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315394;
      v13 = "[SMSessionManager _postCacheReleaseAndUpdatingWithTargetDate:]";
      v14 = 2112;
      v15 = dateCopy;
      _os_log_error_impl(&dword_2304B3000, carPlayAlertManager, OS_LOG_TYPE_ERROR, "%s, current time exceeds the alert target allowance, target date, %@", &v12, 0x16u);
    }
  }
}

- (void)_playCacheReleaseAndUpdatingSound
{
  v3 = dispatch_time(0, 700000000);
  queue = [(SMSessionManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__SMSessionManager__playCacheReleaseAndUpdatingSound__block_invoke;
  block[3] = &unk_2788C4EA0;
  block[4] = self;
  dispatch_after(v3, queue, block);
}

void __53__SMSessionManager__playCacheReleaseAndUpdatingSound__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  [*(a1 + 32) _stopPlayingCacheReleaseAndUpdatingSound];
  v3 = [objc_alloc(MEMORY[0x277D71F58]) initWithType:18];
  v4 = [MEMORY[0x277CBEBC0] URLWithString:@"file:///System/Library/PrivateFrameworks/SafetyMonitor.framework/v4_level3_urgent_ML.wav"];
  [v3 setExternalToneFileURL:v4];

  v5 = [MEMORY[0x277CBEBC0] URLWithString:@"file:///System/Library/PrivateFrameworks/SafetyMonitor.framework/v4_level3_urgent_ML.plist"];
  [v3 setExternalVibrationPatternFileURL:v5];

  [v3 setShouldIgnoreRingerSwitch:1];
  v6 = [*v2 defaultsManager];
  v7 = [v6 objectForKey:@"RTDefaultsSessionManagerShouldIgnoreRingerSwitchKey"];

  if (v7)
  {
    [v3 setShouldIgnoreRingerSwitch:{objc_msgSend(v7, "BOOLValue")}];
  }

  v8 = [MEMORY[0x277D71F50] alertWithConfiguration:v3];
  [*(a1 + 32) setCacheReleaseTLAlert:v8];

  v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v14 = "[SMSessionManager _playCacheReleaseAndUpdatingSound]_block_invoke";
    v15 = 2112;
    v16 = v3;
    _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_DEFAULT, "%s, playing cache release sound alertConfiguration,%@", buf, 0x16u);
  }

  objc_initWeak(buf, *(a1 + 32));
  v10 = [*(a1 + 32) cacheReleaseTLAlert];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __53__SMSessionManager__playCacheReleaseAndUpdatingSound__block_invoke_413;
  v11[3] = &unk_2788CFB48;
  objc_copyWeak(&v12, buf);
  [v10 playWithCompletionHandler:v11];

  objc_destroyWeak(&v12);
  objc_destroyWeak(buf);
}

void __53__SMSessionManager__playCacheReleaseAndUpdatingSound__block_invoke_413(uint64_t a1, uint64_t a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = NSStringFromTLAlertPlaybackCompletionType();
    v10 = 138413058;
    v11 = v8;
    v12 = 2080;
    v13 = "[SMSessionManager _playCacheReleaseAndUpdatingSound]_block_invoke";
    v14 = 2112;
    v15 = v9;
    v16 = 2112;
    v17 = v4;
    _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_DEFAULT, "%@, %s, cache release play completion called, playbackCompletionType, %@, error, %@", &v10, 0x2Au);
  }
}

- (void)_stopPlayingCacheReleaseAndUpdatingSound
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    cacheReleaseTLAlert = [(SMSessionManager *)self cacheReleaseTLAlert];
    v7 = 136315394;
    v8 = "[SMSessionManager _stopPlayingCacheReleaseAndUpdatingSound]";
    v9 = 2112;
    v10 = cacheReleaseTLAlert;
    _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_DEFAULT, "%s, stopping cache release sound alert,%@", &v7, 0x16u);
  }

  cacheReleaseTLAlert2 = [(SMSessionManager *)self cacheReleaseTLAlert];

  if (cacheReleaseTLAlert2)
  {
    cacheReleaseTLAlert3 = [(SMSessionManager *)self cacheReleaseTLAlert];
    [cacheReleaseTLAlert3 stop];

    [(SMSessionManager *)self setCacheReleaseTLAlert:0];
  }
}

- (BOOL)_shouldAlertNowWithTargetAlertDate:(id)date
{
  v24 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  defaultsManager = [(SMSessionManager *)self defaultsManager];
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:300.0];
  v7 = [defaultsManager objectForKey:@"RTDefaultsSessionManagerCacheReleaseAlertDelayAllowanceKey" value:v6];
  [v7 doubleValue];
  v9 = v8;

  v10 = [MEMORY[0x277CBEAA8] now];
  [v10 timeIntervalSinceDate:dateCopy];
  v12 = v11;

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v15 = @"NO";
      v16 = 136315906;
      v17 = "[SMSessionManager _shouldAlertNowWithTargetAlertDate:]";
      v18 = 2112;
      v19 = dateCopy;
      if (v12 <= v9)
      {
        v15 = @"YES";
      }

      v20 = 2048;
      v21 = v9;
      v22 = 2112;
      v23 = v15;
      _os_log_debug_impl(&dword_2304B3000, v13, OS_LOG_TYPE_DEBUG, "%s, targetDate, %@, allowance, %f, shouldAlert, %@", &v16, 0x2Au);
    }
  }

  return v12 <= v9;
}

- (void)_postAnomalyAlert
{
  v21 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v17 = 136315138;
      v18 = "[SMSessionManager _postAnomalyAlert]";
      _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_INFO, "%s", &v17, 0xCu);
    }
  }

  state = [(SMSessionManager *)self state];
  isPromptState = [state isPromptState];

  if ((isPromptState & 1) == 0)
  {
    sessionStateTransitionDate = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (!os_log_type_enabled(sessionStateTransitionDate, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_17;
    }

    state2 = [(SMSessionManager *)self state];
    v17 = 136315394;
    v18 = "[SMSessionManager _postAnomalyAlert]";
    v19 = 2112;
    v20 = state2;
    _os_log_fault_impl(&dword_2304B3000, sessionStateTransitionDate, OS_LOG_TYPE_FAULT, "%s, unexpected state for anomaly alert, %@", &v17, 0x16u);
LABEL_16:

    goto LABEL_17;
  }

  state3 = [(SMSessionManager *)self state];
  sessionStateTransitionDate = [state3 sessionStateTransitionDate];

  state4 = [(SMSessionManager *)self state];
  if ([state4 sessionState] == 9)
  {
    state5 = [(SMSessionManager *)self state];
    configuration = [state5 configuration];
    time = [configuration time];
    timeBound = [time timeBound];

    if (!timeBound)
    {
      goto LABEL_10;
    }

    state4 = [(SMSessionManager *)self state];
    configuration2 = [state4 configuration];
    time2 = [configuration2 time];
    timeBound2 = [time2 timeBound];

    sessionStateTransitionDate = timeBound2;
  }

LABEL_10:
  if (![(SMSessionManager *)self _shouldAlertNowWithTargetAlertDate:sessionStateTransitionDate])
  {
    state2 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(state2, OS_LOG_TYPE_ERROR))
    {
      v17 = 136315394;
      v18 = "[SMSessionManager _postAnomalyAlert]";
      v19 = 2112;
      v20 = sessionStateTransitionDate;
      _os_log_error_impl(&dword_2304B3000, state2, OS_LOG_TYPE_ERROR, "%s, current time exceeds the alert target allowance, target date, %@", &v17, 0x16u);
    }

    goto LABEL_16;
  }

  [(SMSessionManager *)self _setupAnomalyAlerts];
LABEL_17:
}

- (void)_teardownAnomalyAlerts
{
  anomalyAlertManager = [(SMSessionManager *)self anomalyAlertManager];

  if (anomalyAlertManager)
  {
    anomalyAlertManager2 = [(SMSessionManager *)self anomalyAlertManager];
    [anomalyAlertManager2 stop];

    [(SMSessionManager *)self setAnomalyAlertManager:0];
  }
}

- (void)_setupAnomalyAlerts
{
  [(SMSessionManager *)self _teardownAnomalyAlerts];
  v3 = [SMAnomalyAlertManager alloc];
  queue = [(SMSessionManager *)self queue];
  state = [(SMSessionManager *)self state];
  defaultsManager = [(SMSessionManager *)self defaultsManager];
  carPlayAlertManager = [(SMSessionManager *)self carPlayAlertManager];
  v8 = [(SMAnomalyAlertManager *)v3 initWithQueue:queue anomalyState:state defaultsManager:defaultsManager carPlayAlertManager:carPlayAlertManager];
  [(SMSessionManager *)self setAnomalyAlertManager:v8];

  anomalyAlertManager = [(SMSessionManager *)self anomalyAlertManager];
  [anomalyAlertManager start];
}

- (void)_setupAnomalyAlertsOnResume
{
  [(SMSessionManager *)self _teardownAnomalyAlerts];
  v3 = [SMAnomalyAlertManager alloc];
  queue = [(SMSessionManager *)self queue];
  state = [(SMSessionManager *)self state];
  defaultsManager = [(SMSessionManager *)self defaultsManager];
  carPlayAlertManager = [(SMSessionManager *)self carPlayAlertManager];
  v8 = [(SMAnomalyAlertManager *)v3 initWithQueue:queue anomalyState:state defaultsManager:defaultsManager carPlayAlertManager:carPlayAlertManager];
  [(SMSessionManager *)self setAnomalyAlertManager:v8];

  anomalyAlertManager = [(SMSessionManager *)self anomalyAlertManager];
  [anomalyAlertManager resume];
}

- (void)_setupTimerForAnomaly
{
  v27 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v24 = "[SMSessionManager _setupTimerForAnomaly]";
      _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
    }
  }

  state = [(SMSessionManager *)self state];
  isPromptState = [state isPromptState];

  if (isPromptState)
  {
    checkInXPCTimerAlarm = [(SMSessionManager *)self checkInXPCTimerAlarm];
    [(SMSessionManager *)self _invalidateTimer:checkInXPCTimerAlarm];

    objc_initWeak(&location, self);
    v7 = [RTXPCTimerAlarm alloc];
    queue = [(SMSessionManager *)self queue];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __41__SMSessionManager__setupTimerForAnomaly__block_invoke;
    v20[3] = &unk_2788C7638;
    v20[4] = self;
    objc_copyWeak(&v21, &location);
    v9 = [(RTXPCTimerAlarm *)v7 initWithIdentifier:@"com.apple.routined.safetyMonitor.sessionManager.checkInTimerAlarm" queue:queue handler:v20];
    [(SMSessionManager *)self setCheckInXPCTimerAlarm:v9];

    state2 = [(SMSessionManager *)self state];
    v11 = [(SMSessionManager *)self _checkDefaultsForCacheReleaseDateWithState:state2];

    checkInXPCTimerAlarm2 = [(SMSessionManager *)self checkInXPCTimerAlarm];
    v19 = 0;
    [checkInXPCTimerAlarm2 fireWithDate:v11 error:&v19];
    v13 = v19;

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v14 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v24 = "[SMSessionManager _setupTimerForAnomaly]";
        v25 = 2112;
        v26 = v11;
        _os_log_impl(&dword_2304B3000, v14, OS_LOG_TYPE_INFO, "%s, timer set with end date, %@", buf, 0x16u);
      }
    }

    if (v13)
    {
      v15 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
      {
        localizedDescription = [v13 localizedDescription];
        *buf = 136315394;
        v24 = "[SMSessionManager _setupTimerForAnomaly]";
        v25 = 2112;
        v26 = localizedDescription;
        _os_log_fault_impl(&dword_2304B3000, v15, OS_LOG_TYPE_FAULT, "%s checkInXPCTimerAlarm fireWithDate hit error: %@", buf, 0x16u);
      }
    }

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }

  else
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      state3 = [(SMSessionManager *)self state];
      *buf = 136315394;
      v24 = "[SMSessionManager _setupTimerForAnomaly]";
      v25 = 2112;
      v26 = state3;
      _os_log_fault_impl(&dword_2304B3000, v16, OS_LOG_TYPE_FAULT, "%s, unexpected state for anomaly alert, %@", buf, 0x16u);
    }
  }
}

void __41__SMSessionManager__setupTimerForAnomaly__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = [*(a1 + 32) checkInXPCTimerAlarm];
      v4 = [v3 identifier];
      v9 = 136315394;
      v10 = "[SMSessionManager _setupTimerForAnomaly]_block_invoke";
      v11 = 2112;
      v12 = v4;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%s, %@ expired in SMSessionManager", &v9, 0x16u);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = [WeakRetained checkInXPCTimerAlarm];
  [WeakRetained _invalidateTimer:v6];

  v7 = [*(*(a1 + 32) + 8) configuration];
  v8 = [v7 sessionID];
  [WeakRetained _respondToTriggerPromptForSessionID:v8 response:1 handler:&__block_literal_global_420];
}

void __41__SMSessionManager__setupTimerForAnomaly__block_invoke_418(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = 136315394;
      v5 = "[SMSessionManager _setupTimerForAnomaly]_block_invoke";
      v6 = 2112;
      v7 = v2;
      _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_INFO, "%s, respondToTriggerPromptWithResponse, error, %@", &v4, 0x16u);
    }
  }
}

- (BOOL)_performStateTransitionTo:(id)to transitionType:(unint64_t)type handler:(id)handler
{
  v63 = *MEMORY[0x277D85DE8];
  toCopy = to;
  handlerCopy = handler;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = MEMORY[0x277D4ABB0];
      state = [(SMSessionManager *)self state];
      v14 = [v12 convertSessionStateToString:{objc_msgSend(state, "sessionState")}];
      v15 = [MEMORY[0x277D4ABB0] convertSessionStateToString:{objc_msgSend(toCopy, "sessionState")}];
      *buf = 136315906;
      v56 = "[SMSessionManager _performStateTransitionTo:transitionType:handler:]";
      v57 = 2048;
      typeCopy = type;
      v59 = 2112;
      v60 = v14;
      v61 = 2112;
      v62 = v15;
      _os_log_impl(&dword_2304B3000, v11, OS_LOG_TYPE_INFO, "%s, Attempting state transition type %ld from %@ to %@", buf, 0x2Au);
    }
  }

  state2 = [(SMSessionManager *)self state];
  sessionState = [state2 sessionState];

  date = [MEMORY[0x277CBEAA8] date];
  [toCopy setDate:date];

  state3 = [(SMSessionManager *)self state];
  sessionState2 = [state3 sessionState];
  sessionState3 = [toCopy sessionState];

  if (sessionState2 != sessionState3)
  {
    date2 = [MEMORY[0x277CBEAA8] date];
    [toCopy setSessionStateTransitionDate:date2];
  }

  if (type == 1)
  {
    messagingService = [(SMSessionManager *)self messagingService];
    deviceIdentifier = [messagingService deviceIdentifier];
    [toCopy setActiveDeviceIdentifier:deviceIdentifier];
  }

  lastLocation = [(SMSessionManager *)self lastLocation];
  timestamp = [lastLocation timestamp];
  if (timestamp)
  {
    v26 = timestamp;
    date3 = [MEMORY[0x277CBEAA8] date];
    [(SMSessionManager *)self lastLocation];
    v29 = v28 = a2;
    timestamp2 = [v29 timestamp];
    [date3 timeIntervalSinceDate:timestamp2];
    v32 = v31;

    a2 = v28;
    if (v32 <= 60.0)
    {
      lastLocation2 = [(SMSessionManager *)self lastLocation];
      [toCopy setLocation:lastLocation2];

      goto LABEL_14;
    }
  }

  else
  {
  }

  [toCopy setLocation:0];
LABEL_14:
  v34 = [(SMSessionManager *)self _stateTransitionDecisionToState:toCopy transitionType:type];
  isAllowed = [v34 isAllowed];
  if (isAllowed)
  {
    [(SMSessionManager *)self logSignPostForStateTransition:toCopy];
    actionBlock = [v34 actionBlock];
    actionBlock[2]();

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v37 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
      {
        v38 = [MEMORY[0x277D4ABB0] convertSessionStateToString:sessionState];
        v39 = [MEMORY[0x277D4ABB0] convertSessionStateToString:{objc_msgSend(toCopy, "sessionState")}];
        *buf = 136315650;
        v56 = "[SMSessionManager _performStateTransitionTo:transitionType:handler:]";
        v57 = 2112;
        typeCopy = v38;
        v59 = 2112;
        v60 = v39;
        _os_log_impl(&dword_2304B3000, v37, OS_LOG_TYPE_INFO, "%s, Successful state transition from %@ to %@", buf, 0x20u);
      }
    }

    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, 0);
    }
  }

  else
  {
    v40 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      v48 = MEMORY[0x277D4ABB0];
      state4 = [(SMSessionManager *)self state];
      v50 = [v48 convertSessionStateToString:{objc_msgSend(state4, "sessionState")}];
      v51 = [MEMORY[0x277D4ABB0] convertSessionStateToString:{objc_msgSend(toCopy, "sessionState")}];
      *buf = 136315650;
      v56 = "[SMSessionManager _performStateTransitionTo:transitionType:handler:]";
      v57 = 2112;
      typeCopy = v50;
      v59 = 2112;
      v60 = v51;
      _os_log_error_impl(&dword_2304B3000, v40, OS_LOG_TYPE_ERROR, "%s, Invalid transition from %@ to %@", buf, 0x20u);
    }

    if (handlerCopy)
    {
      v53 = *MEMORY[0x277CCA450];
      v41 = MEMORY[0x277CCACA8];
      v42 = NSStringFromSelector(a2);
      v43 = [v41 stringWithFormat:@"%@, cannot be completed due illegal state transition", v42];
      v54 = v43;
      v44 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v54 forKeys:&v53 count:1];

      v45 = objc_alloc(MEMORY[0x277CCA9B8]);
      v46 = [v45 initWithDomain:*MEMORY[0x277D4ACD0] code:16 userInfo:v44];
      (handlerCopy)[2](handlerCopy, v46);
    }
  }

  return isAllowed;
}

- (void)_performStateSyncOriginatedTransitionTo:(id)to transitionType:(unint64_t)type handler:(id)handler
{
  v84 = *MEMORY[0x277D85DE8];
  toCopy = to;
  handlerCopy = handler;
  p_state = &self->_state;
  if ([(SMSessionManagerState *)self->_state isEqual:toCopy])
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v79 = "[SMSessionManager _performStateSyncOriginatedTransitionTo:transitionType:handler:]";
      v80 = 2112;
      v81 = toCopy;
      _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, "%s, identical state sync state transition requested, %@", buf, 0x16u);
    }

    goto LABEL_31;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      state = [(SMSessionManager *)self state];
      *buf = 136315651;
      v79 = "[SMSessionManager _performStateSyncOriginatedTransitionTo:transitionType:handler:]";
      v80 = 2117;
      v81 = state;
      v82 = 2117;
      v83 = toCopy;
      _os_log_impl(&dword_2304B3000, v13, OS_LOG_TYPE_INFO, "%s, state transition originated by a state sync message, %{sensitive}@, to state, %{sensitive}@", buf, 0x20u);
    }
  }

  if (type != 3)
  {
    if (type == 2)
    {
      v15 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v79 = "[SMSessionManager _performStateSyncOriginatedTransitionTo:transitionType:handler:]";
        _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, "%s, SMStateTransitionTypeHandoffBecomeActive should never reach this method", buf, 0xCu);
      }

      v16 = objc_alloc(MEMORY[0x277CCA9B8]);
      v17 = *MEMORY[0x277D4ACD0];
      v76 = *MEMORY[0x277CCA450];
      v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid Parameter TypeHandoffBecomeActive"];
      v77 = v18;
      v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v77 forKeys:&v76 count:1];
      v12 = [v16 initWithDomain:v17 code:7 userInfo:v19];

LABEL_30:
      handlerCopy[2](handlerCopy, v12);
LABEL_31:

      goto LABEL_105;
    }

    goto LABEL_15;
  }

  state2 = [(SMSessionManager *)self state];
  sessionState = [state2 sessionState];
  sessionState2 = [(SMSessionManagerState *)toCopy sessionState];

  if (sessionState != sessionState2)
  {
    v27 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      state3 = [(SMSessionManager *)self state];
      *buf = 136315650;
      v79 = "[SMSessionManager _performStateSyncOriginatedTransitionTo:transitionType:handler:]";
      v80 = 2112;
      v81 = state3;
      v82 = 2112;
      v83 = toCopy;
      _os_log_error_impl(&dword_2304B3000, v27, OS_LOG_TYPE_ERROR, "%s, SMStateTransitionTypeHandoffBecomeNonActive; invalid state transition from %@ to %@", buf, 0x20u);
    }

    v28 = objc_alloc(MEMORY[0x277CCA9B8]);
    v29 = *MEMORY[0x277D4ACD0];
    v74 = *MEMORY[0x277CCA450];
    v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid State Transition HandoffBecomeNonActive"];
    v75 = v30;
    v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v75 forKeys:&v74 count:1];
    v12 = [v28 initWithDomain:v29 code:16 userInfo:v31];

    if (!handlerCopy)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  if ([(SMSessionManager *)self _isHandoffAllowedInSessionState:[(SMSessionManagerState *)self->_state sessionState]])
  {
LABEL_15:
    v23 = [(SMSessionManagerState *)self->_state copy];
    objc_storeStrong(&self->_state, to);
    [(SMSessionManager *)self _notifyObserversForStateChangeWithTransitionType:type];
    v24 = [(SMSessionManager *)self _isRemoteSessionEndForPreviousState:v23 nextState:toCopy];
    sessionState3 = [v23 sessionState];
    if (sessionState3 > 9)
    {
      if ((sessionState3 - 10) >= 2)
      {
        if (sessionState3 == 12)
        {
          if ([(SMSessionManagerState *)toCopy sessionState]== 1)
          {
            [(SMSessionManager *)self _clearHysteresisState];
            [MEMORY[0x277D4AA60] endActivities];
          }

          else
          {
            state4 = [(SMSessionManager *)self state];
            [(SMSessionManager *)self _updateActivityWithState:state4 shouldNotify:0];
          }
        }

        else if (sessionState3 != 14)
        {
          goto LABEL_102;
        }

        sessionState4 = [(SMSessionManagerState *)toCopy sessionState];
        if (sessionState4 > 3)
        {
          switch(sessionState4)
          {
            case 4:
              activeDeviceIdentifier = [(SMSessionManagerState *)self->_state activeDeviceIdentifier];
              v65 = [(SMSessionManager *)self _isEffectivePairedDeviceSameAsActiveDeviceWithIdentifier:activeDeviceIdentifier];

              if (!v65)
              {
                goto LABEL_102;
              }

              [(SMSessionManager *)self _teardownAnomalyAlerts];
              goto LABEL_97;
            case 12:
              activeDeviceIdentifier2 = [(SMSessionManagerState *)self->_state activeDeviceIdentifier];
              v67 = [(SMSessionManager *)self _isEffectivePairedDeviceSameAsActiveDeviceWithIdentifier:activeDeviceIdentifier2];

              if (v67)
              {
                state5 = [(SMSessionManager *)self state];
                [(SMSessionManager *)self _updateActivityWithState:state5 shouldNotify:1];

                [(SMSessionManager *)self _teardownAnomalyAlerts];
              }

              goto LABEL_101;
            case 14:
              goto LABEL_102;
          }

          goto LABEL_93;
        }

        if (!sessionState4)
        {
          goto LABEL_102;
        }

        if (sessionState4 != 1)
        {
          if (sessionState4 == 2)
          {
            goto LABEL_79;
          }

          goto LABEL_93;
        }

LABEL_81:
        [(SMSessionManager *)self _clearHysteresisState];
        [MEMORY[0x277D4AA60] endActivities];
        goto LABEL_101;
      }
    }

    else
    {
      if (sessionState3 > 6)
      {
LABEL_20:
        sessionState5 = [v23 sessionState];
        if (sessionState5 == [(SMSessionManagerState *)toCopy sessionState])
        {
          if (type == 3)
          {
            [(SMSessionManager *)self _notifyObserversForBecomingNonActiveDevice];
          }

LABEL_61:
          if (v24)
          {
            [MEMORY[0x277D4AA60] endActivities];
          }

          goto LABEL_102;
        }

        if ([(SMSessionManagerState *)toCopy sessionState]== 4)
        {
          activeDeviceIdentifier3 = [(SMSessionManagerState *)self->_state activeDeviceIdentifier];
          v43 = [(SMSessionManager *)self _isEffectivePairedDeviceSameAsActiveDeviceWithIdentifier:activeDeviceIdentifier3];

          if (v43)
          {
            [(SMSessionManager *)self _teardownAnomalyAlerts];
            v44 = [(SMSessionManager *)self _checkDefaultsForCacheReleaseDateWithState:v23];
            [(SMSessionManager *)self _postCacheReleaseAndUpdatingWithTargetDate:v44];
          }

          goto LABEL_61;
        }

        if ([(SMSessionManagerState *)toCopy sessionState]!= 2)
        {
          if ([(SMSessionManagerState *)toCopy isEndSessionState])
          {
            activeDeviceIdentifier4 = [(SMSessionManagerState *)self->_state activeDeviceIdentifier];
            v48 = [(SMSessionManager *)self _isEffectivePairedDeviceSameAsActiveDeviceWithIdentifier:activeDeviceIdentifier4];

            if (v48)
            {
              state6 = [(SMSessionManager *)self state];
              [(SMSessionManager *)self _updateActivityWithState:state6 shouldNotify:1];

              [(SMSessionManager *)self _teardownAnomalyAlerts];
            }

            [(SMSessionManager *)self _notifyObserversForSessionEndForActiveDevice:[(SMSessionManager *)self _isActiveDevice]];
          }

          goto LABEL_61;
        }

LABEL_79:
        activeDeviceIdentifier5 = [(SMSessionManagerState *)self->_state activeDeviceIdentifier];
        v57 = [(SMSessionManager *)self _isEffectivePairedDeviceSameAsActiveDeviceWithIdentifier:activeDeviceIdentifier5];

        if (v57)
        {
          state7 = [(SMSessionManager *)self state];
          [(SMSessionManager *)self _updateActivityWithState:state7 shouldNotify:0];

          [(SMSessionManager *)self _teardownAnomalyAlerts];
        }

        goto LABEL_102;
      }

      if (sessionState3 != 1)
      {
        if (sessionState3 != 2)
        {
          if (sessionState3 == 4)
          {
            goto LABEL_20;
          }

          goto LABEL_102;
        }

        goto LABEL_36;
      }
    }

    sessionState6 = [(SMSessionManagerState *)toCopy sessionState];
    if (sessionState6 > 0xE)
    {
      goto LABEL_36;
    }

    if (((1 << sessionState6) & 0x5390) == 0)
    {
      if (sessionState6 != 2)
      {
        goto LABEL_36;
      }

      activePairedDeviceIdentifier = [(SMSessionManagerState *)toCopy activePairedDeviceIdentifier];
      messagingService = [(SMSessionManager *)self messagingService];
      deviceIdentifier = [messagingService deviceIdentifier];
      if ([activePairedDeviceIdentifier isEqual:deviceIdentifier] && -[SMSessionManager _isEffectivePairedDeviceNearby](self, "_isEffectivePairedDeviceNearby"))
      {
        startMessageGUID = [(SMSessionManagerState *)toCopy startMessageGUID];

        if (startMessageGUID)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v53 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
            if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
            {
              *buf = 136315651;
              v79 = "[SMSessionManager _performStateSyncOriginatedTransitionTo:transitionType:handler:]";
              v80 = 2117;
              v81 = v23;
              v82 = 2117;
              v83 = toCopy;
              _os_log_impl(&dword_2304B3000, v53, OS_LOG_TYPE_INFO, "%s, state transition from state, %{sensitive}@, to state, %{sensitive}@, calling _handleMagnetConnect to evaluate if a handoff is needed", buf, 0x20u);
            }
          }

          [(SMSessionManager *)self _handleMagnetConnect:3];
        }
      }

      else
      {
      }

      sessionMetricManager = [(SMSessionManager *)self sessionMetricManager];
      [sessionMetricManager onSessionStartedWithState:toCopy];

      [(SMSessionManager *)self _updateUnsupportedSeparationStateIfNeededWithNotify:0];
    }

    activeDeviceIdentifier6 = [(SMSessionManagerState *)self->_state activeDeviceIdentifier];
    v34 = [(SMSessionManager *)self _isEffectivePairedDeviceSameAsActiveDeviceWithIdentifier:activeDeviceIdentifier6];

    if (v34)
    {
      [MEMORY[0x277D4AA60] startActivityWithState:toCopy localState:self->_localState];
    }

LABEL_36:
    sessionState7 = [(SMSessionManagerState *)toCopy sessionState];
    if (sessionState7 > 6)
    {
      if ((sessionState7 - 7) < 3)
      {
LABEL_40:
        activeDeviceIdentifier7 = [(SMSessionManagerState *)self->_state activeDeviceIdentifier];
        v37 = [(SMSessionManager *)self _isEffectivePairedDeviceSameAsActiveDeviceWithIdentifier:activeDeviceIdentifier7];

        if (!v37)
        {
          goto LABEL_102;
        }

        [(SMSessionManager *)self _postAnomalyAlert];
        sessionMetricManager2 = [(SMSessionManager *)self sessionMetricManager];
        monitorContext = [(SMSessionManagerState *)self->_state monitorContext];
        [sessionMetricManager2 onDeclareAnomalyForTriggerCategory:{objc_msgSend(monitorContext, "triggerCategory")}];

LABEL_98:
        goto LABEL_102;
      }

      if (sessionState7 != 12)
      {
        if (sessionState7 != 14)
        {
          goto LABEL_102;
        }

        goto LABEL_40;
      }

      objc_storeStrong(&self->_state, to);
      state8 = [(SMSessionManager *)self state];
      [(SMSessionManager *)self _updateActivityWithState:state8 shouldNotify:1];

LABEL_101:
      [(SMSessionManager *)self _notifyObserversForSessionEndForActiveDevice:[(SMSessionManager *)self _isActiveDevice]];
      goto LABEL_102;
    }

    if (sessionState7 >= 2)
    {
      if (sessionState7 != 2)
      {
        if (sessionState7 != 4)
        {
          goto LABEL_102;
        }

        activeDeviceIdentifier8 = [(SMSessionManagerState *)self->_state activeDeviceIdentifier];
        v46 = [(SMSessionManager *)self _isEffectivePairedDeviceSameAsActiveDeviceWithIdentifier:activeDeviceIdentifier8];

        if (!v46)
        {
          goto LABEL_102;
        }

LABEL_97:
        sessionMetricManager2 = [(SMSessionManager *)self _checkDefaultsForCacheReleaseDateWithState:v23];
        [(SMSessionManager *)self _postCacheReleaseAndUpdatingWithTargetDate:sessionMetricManager2];
        goto LABEL_98;
      }

      if (type == 3)
      {
        [(SMSessionManager *)self _notifyObserversForBecomingNonActiveDevice];
        goto LABEL_102;
      }

      if (type != 1)
      {
LABEL_102:
        [(SMSessionManager *)self _performActionsAndUpdatesUponStateTransitionWithType:type];
        if (handlerCopy)
        {
          handlerCopy[2](handlerCopy, 0);
        }

        goto LABEL_105;
      }

      activePairedDeviceIdentifier2 = [(SMSessionManagerState *)toCopy activePairedDeviceIdentifier];
      messagingService2 = [(SMSessionManager *)self messagingService];
      deviceIdentifier2 = [messagingService2 deviceIdentifier];
      if ([activePairedDeviceIdentifier2 isEqual:deviceIdentifier2] && -[SMSessionManager _isEffectivePairedDeviceNearby](self, "_isEffectivePairedDeviceNearby"))
      {
        startMessageGUID2 = [v23 startMessageGUID];
        if (!startMessageGUID2)
        {
          startMessageGUID3 = [(SMSessionManagerState *)toCopy startMessageGUID];

          if (startMessageGUID3)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              v72 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
              if (os_log_type_enabled(v72, OS_LOG_TYPE_INFO))
              {
                *buf = 136315651;
                v79 = "[SMSessionManager _performStateSyncOriginatedTransitionTo:transitionType:handler:]";
                v80 = 2117;
                v81 = v23;
                v82 = 2117;
                v83 = toCopy;
                _os_log_impl(&dword_2304B3000, v72, OS_LOG_TYPE_INFO, "%s, state transition from state, %{sensitive}@, to state, %{sensitive}@, calling _handleMagnetConnect to evaluate if a handoff is needed", buf, 0x20u);
              }
            }

            [(SMSessionManager *)self _handleMagnetConnect:3];
          }

          goto LABEL_93;
        }
      }

LABEL_93:
      sessionMetricManager2 = [(SMSessionManager *)self state];
      [(SMSessionManager *)self _updateActivityWithState:sessionMetricManager2 shouldNotify:0];
      goto LABEL_98;
    }

    goto LABEL_81;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v40 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
    {
      v41 = *p_state;
      *buf = 136315651;
      v79 = "[SMSessionManager _performStateSyncOriginatedTransitionTo:transitionType:handler:]";
      v80 = 2117;
      v81 = v41;
      v82 = 2117;
      v83 = toCopy;
      _os_log_impl(&dword_2304B3000, v40, OS_LOG_TYPE_INFO, "%s, state transition from state, %{sensitive}@, to state, %{sensitive}@, invalid and not allowed for a handoff operation", buf, 0x20u);
    }
  }

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, 0);
  }

LABEL_105:
}

- (BOOL)_isRemoteSessionEndForPreviousState:(id)state nextState:(id)nextState
{
  nextStateCopy = nextState;
  activeDeviceIdentifier = [state activeDeviceIdentifier];
  messagingService = [(SMSessionManager *)self messagingService];
  deviceIdentifier = [messagingService deviceIdentifier];
  if ([activeDeviceIdentifier isEqual:deviceIdentifier])
  {
    activeDeviceIdentifier2 = [nextStateCopy activeDeviceIdentifier];
    messagingService2 = [(SMSessionManager *)self messagingService];
    deviceIdentifier2 = [messagingService2 deviceIdentifier];
    if ([activeDeviceIdentifier2 isEqual:deviceIdentifier2])
    {
      isEndSessionState = 0;
    }

    else
    {
      isEndSessionState = [nextStateCopy isEndSessionState];
    }
  }

  else
  {
    isEndSessionState = 0;
  }

  return isEndSessionState;
}

- (void)_performActionsAndUpdatesUponStateTransitionWithType:(unint64_t)type
{
  [(SMSessionManager *)self _updateTimersUponStateTransition:type];
  [(SMSessionManager *)self _updateLocationObserverUponStateTransition];

  [(SMSessionManager *)self _updateConnectivityAndStatusSignalsObserverUponStateTransition];
}

- (void)logSignPostForStateTransition:(id)transition
{
  v48 = *MEMORY[0x277D85DE8];
  transitionCopy = transition;
  state = [(SMSessionManager *)self state];
  configuration = [state configuration];

  if (!configuration)
  {
    goto LABEL_26;
  }

  v7 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorAnalytics);
  state2 = [(SMSessionManager *)self state];
  configuration2 = [state2 configuration];
  sessionID = [configuration2 sessionID];
  v11 = os_signpost_id_make_with_pointer(v7, sessionID);

  state3 = [(SMSessionManager *)self state];
  if ([state3 sessionState]!= 11)
  {
    goto LABEL_7;
  }

  sessionState = [transitionCopy sessionState];

  if (sessionState == 2)
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorAnalytics);
    configuration3 = [transitionCopy configuration];
    sessionID2 = [configuration3 sessionID];
    v11 = os_signpost_id_make_with_pointer(v14, sessionID2);

    v17 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorAnalytics);
    state3 = v17;
    if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
    {
      v18 = MEMORY[0x277D4AB78];
      configuration4 = [transitionCopy configuration];
      v20 = [v18 sessionTypeToString:{objc_msgSend(configuration4, "sessionType")}];
      uTF8String = [v20 UTF8String];
      v22 = [MEMORY[0x277D4ABB0] convertSessionStateToString:{objc_msgSend(transitionCopy, "sessionState")}];
      v42 = 136446466;
      v43 = uTF8String;
      v44 = 2082;
      uTF8String2 = [v22 UTF8String];
      _os_signpost_emit_with_name_impl(&dword_2304B3000, state3, OS_SIGNPOST_INTERVAL_BEGIN, v11, "SMSessionDuration", " enableTelemetry=YES {sessionType:%{public, signpost.telemetry:string1}s, currentState:%{public, signpost.telemetry:string2}s}", &v42, 0x16u);
    }

LABEL_7:
  }

  if ([transitionCopy sessionState] == 1)
  {
    v23 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorAnalytics);
    v24 = v23;
    v25 = v11 - 1;
    if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
    {
      v26 = MEMORY[0x277D4ABB0];
      state4 = [(SMSessionManager *)self state];
      v28 = [v26 convertSessionStateToString:{objc_msgSend(state4, "sessionState")}];
      uTF8String3 = [v28 UTF8String];
      v42 = 136446210;
      v43 = uTF8String3;
      _os_signpost_emit_with_name_impl(&dword_2304B3000, v24, OS_SIGNPOST_INTERVAL_END, v11, "SMSessionDuration", " enableTelemetry=YES {currentState:%{public, signpost.telemetry:string2}s}", &v42, 0xCu);
    }
  }

  else
  {
    v25 = v11 - 1;
  }

  v30 = MEMORY[0x277D4ABB0];
  state5 = [(SMSessionManager *)self state];
  v32 = [v30 convertSessionStateToString:{objc_msgSend(state5, "sessionState")}];

  v33 = [MEMORY[0x277D4ABB0] convertSessionStateToString:{objc_msgSend(transitionCopy, "sessionState")}];
  v34 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorAnalytics);
  v35 = v34;
  if (v25 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v34))
  {
    uTF8String4 = [v32 UTF8String];
    uTF8String5 = [v33 UTF8String];
    v42 = 136446722;
    v43 = uTF8String4;
    v44 = 2082;
    uTF8String2 = uTF8String5;
    v46 = 2112;
    v47 = transitionCopy;
    _os_signpost_emit_with_name_impl(&dword_2304B3000, v35, OS_SIGNPOST_INTERVAL_END, v11, "SMSessionStateTransition", " enableTelemetry=YES {currentSessionState:%{public, signpost.telemetry:string1}s, nextSessionState:%{public, signpost.telemetry:string2}s, nextState:%@}", &v42, 0x20u);
  }

  if ([transitionCopy sessionState] != 1 || objc_msgSend(transitionCopy, "sessionState") || objc_msgSend(transitionCopy, "sessionState") != 11 || objc_msgSend(transitionCopy, "sessionState") != 10)
  {
    v38 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorAnalytics);
    v39 = v38;
    if (v25 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v38))
    {
      uTF8String6 = [v32 UTF8String];
      uTF8String7 = [v33 UTF8String];
      v42 = 136446722;
      v43 = uTF8String6;
      v44 = 2082;
      uTF8String2 = uTF8String7;
      v46 = 2112;
      v47 = transitionCopy;
      _os_signpost_emit_with_name_impl(&dword_2304B3000, v39, OS_SIGNPOST_INTERVAL_BEGIN, v11, "SMSessionStateTransition", " enableTelemetry=YES {currentSessionState:%{public, signpost.telemetry:string1}s, nextSessionState:%{public, signpost.telemetry:string2}s, nextState:%@}", &v42, 0x20u);
    }
  }

LABEL_26:
}

- (void)_updateConnectivityAndStatusSignalsObserverUponStateTransition
{
  v10 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v8 = 136315138;
      v9 = "[SMSessionManager _updateConnectivityAndStatusSignalsObserverUponStateTransition]";
      _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_INFO, "%s, updating connectivity and status observers signals", &v8, 0xCu);
    }
  }

  state = [(SMSessionManager *)self state];
  sessionState = [state sessionState];

  if (sessionState > 0xE)
  {
    goto LABEL_12;
  }

  if (((1 << sessionState) & 0x4394) != 0)
  {
    messagingService = [(SMSessionManager *)self messagingService];
    [messagingService startSubscriptionOnNearbyDevicesChanged];
LABEL_8:

    return;
  }

  if (((1 << sessionState) & 0x1003) != 0)
  {
    messagingService2 = [(SMSessionManager *)self messagingService];
    [messagingService2 cancelSubscriptionOnNearbyDevicesChanged];

    [(SMSessionManager *)self _clearHysteresisState];
    return;
  }

  if (((1 << sessionState) & 0xC00) == 0)
  {
LABEL_12:
    messagingService = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(messagingService, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315138;
      v9 = "[SMSessionManager _updateConnectivityAndStatusSignalsObserverUponStateTransition]";
      _os_log_error_impl(&dword_2304B3000, messagingService, OS_LOG_TYPE_ERROR, "%s, should never reach this code path, logging error.", &v8, 0xCu);
    }

    goto LABEL_8;
  }
}

- (void)_updateLocationObserverUponStateTransition
{
  v23 = *MEMORY[0x277D85DE8];
  _isActiveDevice = [(SMSessionManager *)self _isActiveDevice];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v22 = 136315394;
      *&v22[4] = "[SMSessionManager _updateLocationObserverUponStateTransition]";
      *&v22[12] = 1024;
      *&v22[14] = _isActiveDevice;
      _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "%s, updating location observers, isActiveDevice, %{Bool}d", v22, 0x12u);
    }
  }

  if (_isActiveDevice)
  {
    state = [(SMSessionManager *)self state];
    sessionState = [state sessionState];

    if (sessionState <= 0xE)
    {
      if (((1 << sessionState) & 0x4384) != 0)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v7 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
          if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
          {
            *v22 = 136315138;
            *&v22[4] = "[SMSessionManager _updateLocationObserverUponStateTransition]";
            _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "%s, Added rhythmic non waking GNSS location observer", v22, 0xCu);
          }
        }

        locationManager = [(SMSessionManager *)self locationManager];
        [locationManager removeObserver:self];

        locationManager2 = [(SMSessionManager *)self locationManager];
        v10 = RTLocationManagerNotificationLocationsAccuracyRhythmicNonWaking;
LABEL_31:
        notificationName = [(__objc2_class *)v10 notificationName];
        [locationManager2 addObserver:self selector:sel_onLocationNotification_ name:notificationName];

        locationManager3 = [(SMSessionManager *)self locationManager];
        v21 = +[(RTNotification *)RTLocationManagerNotificationLocationsLeeched];
        [locationManager3 addObserver:self selector:sel_onLocationNotification_ name:v21];

        goto LABEL_32;
      }

      if (((1 << sessionState) & 0xC00) != 0)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v16 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            *v22 = 136315138;
            *&v22[4] = "[SMSessionManager _updateLocationObserverUponStateTransition]";
            _os_log_impl(&dword_2304B3000, v16, OS_LOG_TYPE_INFO, "%s, Added GNSS location observer", v22, 0xCu);
          }
        }

        locationManager4 = [(SMSessionManager *)self locationManager];
        [locationManager4 removeObserver:self];

        locationManager2 = [(SMSessionManager *)self locationManager];
        v10 = RTLocationManagerNotificationLocationsAccuracyBest;
        goto LABEL_31;
      }

      if (sessionState == 4)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v18 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            *v22 = 136315138;
            *&v22[4] = "[SMSessionManager _updateLocationObserverUponStateTransition]";
            _os_log_impl(&dword_2304B3000, v18, OS_LOG_TYPE_INFO, "%s, Added rhythmic waking GNSS location observer", v22, 0xCu);
          }
        }

        locationManager5 = [(SMSessionManager *)self locationManager];
        [locationManager5 removeObserver:self];

        locationManager2 = [(SMSessionManager *)self locationManager];
        v10 = RTLocationManagerNotificationLocationsAccuracyRhythmicWaking;
        goto LABEL_31;
      }
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v11 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        goto LABEL_17;
      }

      *v22 = 136315138;
      *&v22[4] = "[SMSessionManager _updateLocationObserverUponStateTransition]";
      v12 = "%s, Stopped location observer";
      v13 = v11;
      v14 = 12;
      goto LABEL_16;
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
LABEL_17:

      goto LABEL_18;
    }

    *v22 = 136315394;
    *&v22[4] = "[SMSessionManager _updateLocationObserverUponStateTransition]";
    *&v22[12] = 1024;
    *&v22[14] = 0;
    v12 = "%s, Stopped location observer because isActiveDevice, %{Bool}d";
    v13 = v11;
    v14 = 18;
LABEL_16:
    _os_log_impl(&dword_2304B3000, v13, OS_LOG_TYPE_INFO, v12, v22, v14);
    goto LABEL_17;
  }

LABEL_18:
  locationManager3 = [(SMSessionManager *)self locationManager:*v22];
  [locationManager3 removeObserver:self];
LABEL_32:
}

- (void)_updateTimersUponStateTransition:(unint64_t)transition
{
  v27 = *MEMORY[0x277D85DE8];
  _isActiveDevice = [(SMSessionManager *)self _isActiveDevice];
  state = [(SMSessionManager *)self state];
  activeDeviceIdentifier = [state activeDeviceIdentifier];
  v8 = [(SMSessionManager *)self _isEffectivePairedDeviceSameAsActiveDeviceWithIdentifier:activeDeviceIdentifier];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v19 = 136315906;
      v20 = "[SMSessionManager _updateTimersUponStateTransition:]";
      v21 = 1024;
      v22 = _isActiveDevice;
      v23 = 1024;
      v24 = v8;
      v25 = 2048;
      transitionCopy = transition;
      _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "%s, updating timers upon state transition, isActiveDevice, %{Bool}d, isEffectivePairedDeviceSameAsActiveDevice, %{Bool}d, transitionType, %ld", &v19, 0x22u);
    }
  }

  state2 = [(SMSessionManager *)self state];
  sessionState = [state2 sessionState];

  if (sessionState > 6)
  {
    if (sessionState <= 0xE)
    {
      if (((1 << sessionState) & 0x4380) != 0)
      {
        [(SMSessionManager *)self _invalidateSessionManagerXPCTimerAlarms];
        [(SMSessionManager *)self _invalidateScreenLockMonitor];
        if (_isActiveDevice)
        {
          [(SMSessionManager *)self _setupTimerForAnomaly];
        }

        return;
      }

      if (((1 << sessionState) & 0xC00) != 0)
      {
        return;
      }

      if (sessionState == 12)
      {
        [(SMSessionManager *)self _invalidateSessionManagerXPCTimerAlarms];
        [(SMSessionManager *)self _invalidateScreenLockMonitor];
        [(SMSessionManager *)self _tearDownWorkoutTimeouts];
        if (_isActiveDevice || v8)
        {
          [(SMSessionManager *)self _setupTimerAndLockMonitorForEndAwareness];
        }

        return;
      }
    }

    goto LABEL_23;
  }

  if (sessionState < 2)
  {
    [(SMSessionManager *)self _invalidateSessionManagerXPCTimerAlarms];
    [(SMSessionManager *)self _invalidateScreenLockMonitor];
    [(SMSessionManager *)self _tearDownWorkoutTimeouts];
    return;
  }

  if (sessionState == 2)
  {
    [(SMSessionManager *)self _invalidateSessionManagerXPCTimerAlarms];
    [(SMSessionManager *)self _invalidateScreenLockMonitor];
    defaultsManager = [(SMSessionManager *)self defaultsManager];
    v13 = [defaultsManager objectForKey:@"RTDefaultsWorkoutOngoing"];
    bOOLValue = [v13 BOOLValue];

    if (_isActiveDevice)
    {
      state3 = [(SMSessionManager *)self state];
      configuration = [state3 configuration];
      if (([configuration sessionType] != 4) | bOOLValue & 1)
      {
      }

      else
      {
        isEmergencyCallOngoing = [(SMSessionManager *)self isEmergencyCallOngoing];

        if (!isEmergencyCallOngoing)
        {
          [(SMSessionManager *)self _setUpWorkoutTimeouts];
        }
      }
    }
  }

  else
  {
    if (sessionState != 4)
    {
LABEL_23:
      v17 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v19 = 136315138;
        v20 = "[SMSessionManager _updateTimersUponStateTransition:]";
        _os_log_error_impl(&dword_2304B3000, v17, OS_LOG_TYPE_ERROR, "%s, should never reach this code path, logging error.", &v19, 0xCu);
      }

      return;
    }

    [(SMSessionManager *)self _invalidateSessionManagerXPCTimerAlarms];
    [(SMSessionManager *)self _invalidateScreenLockMonitor];
    [(SMSessionManager *)self _tearDownWorkoutTimeouts];
    if (_isActiveDevice)
    {
      [(SMSessionManager *)self _setUpCacheReleaseTimer];
    }
  }
}

- (void)_invalidateSessionManagerXPCTimerAlarms
{
  cacheReleaseXPCTimerAlarm = [(SMSessionManager *)self cacheReleaseXPCTimerAlarm];
  [(SMSessionManager *)self _invalidateTimer:cacheReleaseXPCTimerAlarm];

  checkInXPCTimerAlarm = [(SMSessionManager *)self checkInXPCTimerAlarm];
  [(SMSessionManager *)self _invalidateTimer:checkInXPCTimerAlarm];

  endAwarenessBeforeUnlockXPCTimerAlarm = [(SMSessionManager *)self endAwarenessBeforeUnlockXPCTimerAlarm];
  [(SMSessionManager *)self _invalidateTimer:endAwarenessBeforeUnlockXPCTimerAlarm];
}

- (void)_invalidateScreenLockMonitor
{
  screenLockMonitor = [(SMSessionManager *)self screenLockMonitor];

  if (screenLockMonitor)
  {
    screenLockMonitor2 = [(SMSessionManager *)self screenLockMonitor];
    [screenLockMonitor2 _unregisterForLockNotification];

    screenLockMonitor = self->_screenLockMonitor;
    self->_screenLockMonitor = 0;
  }
}

- (void)_updateLastLocationWithLocations:(id)locations
{
  v32 = *MEMORY[0x277D85DE8];
  locationsCopy = locations;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v5 = [locationsCopy countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v28;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v28 != v7)
        {
          objc_enumerationMutation(locationsCopy);
        }

        v9 = *(*(&v27 + 1) + 8 * i);
        [v9 horizontalAccuracy];
        if (v10 <= 100.0)
        {
          timestamp = [v9 timestamp];

          if (timestamp)
          {
            lastLocation = [(SMSessionManager *)self lastLocation];
            timestamp2 = [lastLocation timestamp];
            if (!timestamp2)
            {

LABEL_12:
              [(SMSessionManager *)self setLastLocation:v9];
              continue;
            }

            v26 = timestamp2;
            lastLocation2 = [(SMSessionManager *)self lastLocation];
            timestamp3 = [lastLocation2 timestamp];
            timestamp4 = [v9 timestamp];
            v15 = [timestamp3 laterDate:timestamp4];
            [(SMSessionManager *)self lastLocation];
            v17 = v16 = locationsCopy;
            [v17 timestamp];
            v23 = lastLocation;
            v18 = v6;
            v19 = v7;
            v21 = v20 = self;
            v22 = [v15 isEqualToDate:v21];

            self = v20;
            v7 = v19;
            v6 = v18;

            locationsCopy = v16;
            if ((v22 & 1) == 0)
            {
              goto LABEL_12;
            }
          }
        }
      }

      v6 = [locationsCopy countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v6);
  }
}

- (void)onLocationNotification:(id)notification
{
  notificationCopy = notification;
  queue = [(SMSessionManager *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__SMSessionManager_onLocationNotification___block_invoke;
  v7[3] = &unk_2788C4A70;
  v8 = notificationCopy;
  selfCopy = self;
  v6 = notificationCopy;
  dispatch_async(queue, v7);
}

void __43__SMSessionManager_onLocationNotification___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) name];
  v3 = +[(RTNotification *)RTLocationManagerNotificationLocationsLeeched];
  v4 = [v2 isEqual:v3];

  if (v4)
  {
    v5 = *(a1 + 40);
    v6 = [*(a1 + 32) leechedLocations];
    [v5 _updateLastLocationWithLocations:v6];
  }
}

- (void)initializeSessionWithConversation:(id)conversation completion:(id)completion
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[SMSessionManager initializeSessionWithConversation:completion:]";
    v7 = 1024;
    v8 = 4128;
    _os_log_error_impl(&dword_2304B3000, v4, OS_LOG_TYPE_ERROR, "Unsupported (in %s:%d)", &v5, 0x12u);
  }
}

- (void)initializeSessionWithSessionID:(id)d conversation:(id)conversation handler:(id)handler
{
  dCopy = d;
  conversationCopy = conversation;
  handlerCopy = handler;
  if (handlerCopy)
  {
    queue = [(SMSessionManager *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __72__SMSessionManager_initializeSessionWithSessionID_conversation_handler___block_invoke;
    block[3] = &unk_2788C47F8;
    v15 = dCopy;
    selfCopy = self;
    v18 = handlerCopy;
    v17 = conversationCopy;
    v19 = a2;
    dispatch_async(queue, block);

    v13 = v15;
  }

  else
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler", buf, 2u);
    }
  }
}

void __72__SMSessionManager_initializeSessionWithSessionID_conversation_handler___block_invoke(uint64_t a1)
{
  v58 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = *(a1 + 32);
      *buf = 136315394;
      v53 = "[SMSessionManager initializeSessionWithSessionID:conversation:handler:]_block_invoke";
      v54 = 2112;
      v55 = v3;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%s, User requested to initialize a session with sessionID %@", buf, 0x16u);
    }
  }

  v4 = *(a1 + 32);
  if (!v4 || ([*(*(a1 + 40) + 8) configuration], v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "sessionID"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v4, "isEqual:", v6), v6, v5, v7))
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v31 = *(a1 + 32);
      v32 = [*(*(a1 + 40) + 8) configuration];
      v33 = [v32 sessionID];
      *buf = 136315650;
      v53 = "[SMSessionManager initializeSessionWithSessionID:conversation:handler:]_block_invoke";
      v54 = 2112;
      v55 = v31;
      v56 = 2112;
      v57 = v33;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "%s, invalid session ID %@, current session ID, %@", buf, 0x20u);
    }

    v9 = objc_alloc(MEMORY[0x277CCA9B8]);
    v10 = *MEMORY[0x277D4ACD0];
    v50 = *MEMORY[0x277CCA450];
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid session ID"];
    v51 = v11;
    v12 = MEMORY[0x277CBEAC0];
    v13 = &v51;
    v14 = &v50;
LABEL_18:
    v19 = [v12 dictionaryWithObjects:v13 forKeys:v14 count:1];
    v20 = v9;
    v21 = v10;
    v22 = 7;
LABEL_19:
    v23 = [v20 initWithDomain:v21 code:v22 userInfo:v19];

    (*(*(a1 + 56) + 16))();
    return;
  }

  if (!*(a1 + 48) || (conversationHandlesValid() & 1) == 0)
  {
    v18 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v34 = *(a1 + 48);
      *buf = 136315394;
      v53 = "[SMSessionManager initializeSessionWithSessionID:conversation:handler:]_block_invoke";
      v54 = 2112;
      v55 = v34;
      _os_log_error_impl(&dword_2304B3000, v18, OS_LOG_TYPE_ERROR, "%s, invalid conversation %@", buf, 0x16u);
    }

    v9 = objc_alloc(MEMORY[0x277CCA9B8]);
    v10 = *MEMORY[0x277D4ACD0];
    v48 = *MEMORY[0x277CCA450];
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid conversation"];
    v49 = v11;
    v12 = MEMORY[0x277CBEAC0];
    v13 = &v49;
    v14 = &v48;
    goto LABEL_18;
  }

  if ([*(a1 + 40) _canDeviceModifyState])
  {
    v15 = [*(*(a1 + 40) + 8) sessionState];
    if ((v15 - 10) < 3)
    {
      v16 = *(a1 + 40);
      v40[0] = MEMORY[0x277D85DD0];
      v40[1] = 3221225472;
      v40[2] = __72__SMSessionManager_initializeSessionWithSessionID_conversation_handler___block_invoke_448;
      v40[3] = &unk_2788D32B0;
      v43 = *(a1 + 56);
      v39 = *(a1 + 32);
      v17 = v39.i64[0];
      v41 = vextq_s8(v39, v39, 8uLL);
      v42 = *(a1 + 48);
      [v16 _resetInitializationWithHandler:v40];

      return;
    }

    if (v15 != 1)
    {
      v35 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        v38 = [MEMORY[0x277D4ABB0] convertSessionStateToString:{objc_msgSend(*(*(a1 + 40) + 8), "sessionState")}];
        *buf = 136315394;
        v53 = "[SMSessionManager initializeSessionWithSessionID:conversation:handler:]_block_invoke";
        v54 = 2112;
        v55 = v38;
        _os_log_error_impl(&dword_2304B3000, v35, OS_LOG_TYPE_ERROR, "%s, session already running in state %@", buf, 0x16u);
      }

      v36 = objc_alloc(MEMORY[0x277CCA9B8]);
      v37 = *MEMORY[0x277D4ACD0];
      v44 = *MEMORY[0x277CCA450];
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Session is active"];
      v45 = v11;
      v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
      v20 = v36;
      v21 = v37;
      v22 = 23;
      goto LABEL_19;
    }

    [*(a1 + 40) _initializeSessionWithSessionID:*(a1 + 32) conversation:*(a1 + 48) handler:*(a1 + 56)];
  }

  else
  {
    v24 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v53 = "[SMSessionManager initializeSessionWithSessionID:conversation:handler:]_block_invoke";
      _os_log_error_impl(&dword_2304B3000, v24, OS_LOG_TYPE_ERROR, "%s, User requested to initialize session on non active device", buf, 0xCu);
    }

    v46 = *MEMORY[0x277CCA450];
    v25 = MEMORY[0x277CCACA8];
    v26 = NSStringFromSelector(*(a1 + 64));
    v27 = [v25 stringWithFormat:@"%@ cannot be completed since current device is not active", v26];
    v47 = v27;
    v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v47 forKeys:&v46 count:1];

    v29 = objc_alloc(MEMORY[0x277CCA9B8]);
    v30 = [v29 initWithDomain:*MEMORY[0x277D4ACD0] code:11 userInfo:v28];
    (*(*(a1 + 56) + 16))();
  }
}

uint64_t __72__SMSessionManager_initializeSessionWithSessionID_conversation_handler___block_invoke_448(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return (*(*(a1 + 56) + 16))();
  }

  else
  {
    return [*(a1 + 32) _initializeSessionWithSessionID:*(a1 + 40) conversation:*(a1 + 48) handler:*(a1 + 56)];
  }
}

- (void)cancelInitializationWithCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    queue = [(SMSessionManager *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __55__SMSessionManager_cancelInitializationWithCompletion___block_invoke;
    block[3] = &unk_2788C6300;
    block[4] = self;
    v10 = a2;
    v9 = completionCopy;
    dispatch_async(queue, block);
  }

  else
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler", buf, 2u);
    }
  }
}

void __55__SMSessionManager_cancelInitializationWithCompletion___block_invoke(uint64_t a1)
{
  v30[1] = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v26 = "[SMSessionManager cancelInitializationWithCompletion:]_block_invoke";
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%s, User requested to cancel session initialization", buf, 0xCu);
    }
  }

  if ([*(a1 + 32) _canDeviceModifyState])
  {
    if ([*(*(a1 + 32) + 8) sessionState] == 10 || objc_msgSend(*(*(a1 + 32) + 8), "sessionState") == 11)
    {
      v3 = objc_alloc(MEMORY[0x277D4ABA8]);
      v4 = [*(a1 + 32) state];
      v5 = [v4 configuration];
      v6 = [MEMORY[0x277CBEAA8] now];
      v7 = [*(a1 + 32) messagingService];
      v8 = [v7 deviceIdentifier];
      v9 = [MEMORY[0x277CBEAA8] now];
      v10 = [v3 initWithSessionState:1 configuration:v5 userTriggerResponse:0 monitorContext:0 date:v6 location:0 allowReadToken:0 safetyCacheKey:0 startMessageGUID:0 scheduledSendMessageGUID:0 scheduledSendMessageDate:0 activeDeviceIdentifier:v8 estimatedEndDate:0 coarseEstimatedEndDate:0 estimatedEndDateStatus:0 sessionEndReason:0 sessionStateTransitionDate:v9 activePairedDeviceIdentifier:0];

      [*(a1 + 32) _performStateTransitionTo:v10 transitionType:1 handler:*(a1 + 40)];
    }

    else
    {
      v17 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v22 = [MEMORY[0x277D4ABB0] convertSessionStateToString:{objc_msgSend(*(*(a1 + 32) + 8), "sessionState")}];
        *buf = 136315395;
        v26 = "[SMSessionManager cancelInitializationWithCompletion:]_block_invoke";
        v27 = 2117;
        v28 = v22;
        _os_log_error_impl(&dword_2304B3000, v17, OS_LOG_TYPE_ERROR, "%s, session is not in Initializing or Ready, current state, %{sensitive}@", buf, 0x16u);
      }

      v18 = objc_alloc(MEMORY[0x277CCA9B8]);
      v19 = *MEMORY[0x277D4ACD0];
      v23 = *MEMORY[0x277CCA450];
      v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"Not in Initializing or Ready state"];
      v24 = v20;
      v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
      v10 = [v18 initWithDomain:v19 code:16 userInfo:v21];

      (*(*(a1 + 40) + 16))();
    }
  }

  else
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v26 = "[SMSessionManager cancelInitializationWithCompletion:]_block_invoke";
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "%s, User requested to cancel session initialization for non active device", buf, 0xCu);
    }

    v29 = *MEMORY[0x277CCA450];
    v12 = MEMORY[0x277CCACA8];
    v13 = NSStringFromSelector(*(a1 + 48));
    v14 = [v12 stringWithFormat:@"%@ cannot be completed since current device is not active", v13];
    v30[0] = v14;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:&v29 count:1];

    v15 = objc_alloc(MEMORY[0x277CCA9B8]);
    v16 = [v15 initWithDomain:*MEMORY[0x277D4ACD0] code:11 userInfo:v10];
    (*(*(a1 + 40) + 16))();
  }
}

- (void)cancelInitializationForSessionID:(id)d handler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  if (handlerCopy)
  {
    queue = [(SMSessionManager *)self queue];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __61__SMSessionManager_cancelInitializationForSessionID_handler___block_invoke;
    v11[3] = &unk_2788C4C20;
    v12 = dCopy;
    selfCopy = self;
    v14 = handlerCopy;
    v15 = a2;
    dispatch_async(queue, v11);

    v10 = v12;
  }

  else
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler", buf, 2u);
    }
  }
}

void __61__SMSessionManager_cancelInitializationForSessionID_handler___block_invoke(uint64_t a1)
{
  v50 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = *(a1 + 32);
      *buf = 136315394;
      v45 = "[SMSessionManager cancelInitializationForSessionID:handler:]_block_invoke";
      v46 = 2112;
      v47 = v3;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%s, User requested to cancel session initialization for sessionID %@", buf, 0x16u);
    }
  }

  v4 = *(a1 + 32);
  if (!v4 || ([*(*(a1 + 40) + 8) configuration], v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "sessionID"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v4, "isEqual:", v6), v6, v5, (v7 & 1) == 0))
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v30 = *(a1 + 32);
      v31 = [*(*(a1 + 40) + 8) configuration];
      v32 = [v31 sessionID];
      *buf = 136315650;
      v45 = "[SMSessionManager cancelInitializationForSessionID:handler:]_block_invoke";
      v46 = 2112;
      v47 = v30;
      v48 = 2112;
      v49 = v32;
      _os_log_error_impl(&dword_2304B3000, v16, OS_LOG_TYPE_ERROR, "%s, invalid session ID %@, current sessionID, %@", buf, 0x20u);
    }

    v17 = objc_alloc(MEMORY[0x277CCA9B8]);
    v18 = *MEMORY[0x277D4ACD0];
    v42 = *MEMORY[0x277CCA450];
    v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid session ID"];
    v43 = v19;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
    v21 = v17;
    v22 = v18;
    v23 = 7;
    goto LABEL_14;
  }

  if ([*(a1 + 40) _canDeviceModifyState])
  {
    if ([*(*(a1 + 40) + 8) sessionState] == 10 || objc_msgSend(*(*(a1 + 40) + 8), "sessionState") == 11)
    {
      v8 = objc_alloc(MEMORY[0x277D4ABA8]);
      v9 = [*(a1 + 40) state];
      v10 = [v9 configuration];
      v11 = [MEMORY[0x277CBEAA8] now];
      v12 = [*(a1 + 40) messagingService];
      v13 = [v12 deviceIdentifier];
      v14 = [MEMORY[0x277CBEAA8] now];
      v15 = [v8 initWithSessionState:1 configuration:v10 userTriggerResponse:0 monitorContext:0 date:v11 location:0 allowReadToken:0 safetyCacheKey:0 startMessageGUID:0 scheduledSendMessageGUID:0 scheduledSendMessageDate:0 activeDeviceIdentifier:v13 estimatedEndDate:0 coarseEstimatedEndDate:0 estimatedEndDateStatus:0 sessionEndReason:0 sessionStateTransitionDate:v14 activePairedDeviceIdentifier:0];

      [*(a1 + 40) _performStateTransitionTo:v15 transitionType:1 handler:*(a1 + 48)];
      goto LABEL_15;
    }

    v33 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v37 = [MEMORY[0x277D4ABB0] convertSessionStateToString:{objc_msgSend(*(*(a1 + 40) + 8), "sessionState")}];
      *buf = 136315395;
      v45 = "[SMSessionManager cancelInitializationForSessionID:handler:]_block_invoke";
      v46 = 2117;
      v47 = v37;
      _os_log_error_impl(&dword_2304B3000, v33, OS_LOG_TYPE_ERROR, "%s, session is not in Initializing or Ready, current state, %{sensitive}@", buf, 0x16u);
    }

    v34 = objc_alloc(MEMORY[0x277CCA9B8]);
    v35 = *MEMORY[0x277D4ACD0];
    v38 = *MEMORY[0x277CCA450];
    v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"Not in Initializing or Ready state"];
    v39 = v19;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
    v21 = v34;
    v22 = v35;
    v23 = 16;
LABEL_14:
    v15 = [v21 initWithDomain:v22 code:v23 userInfo:v20];

    (*(*(a1 + 48) + 16))();
    goto LABEL_15;
  }

  v24 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    v36 = *(a1 + 32);
    *buf = 136315394;
    v45 = "[SMSessionManager cancelInitializationForSessionID:handler:]_block_invoke";
    v46 = 2112;
    v47 = v36;
    _os_log_error_impl(&dword_2304B3000, v24, OS_LOG_TYPE_ERROR, "%s, User requested to cancel session initialization on non active device for sessionID %@", buf, 0x16u);
  }

  v40 = *MEMORY[0x277CCA450];
  v25 = MEMORY[0x277CCACA8];
  v26 = NSStringFromSelector(*(a1 + 56));
  v27 = [v25 stringWithFormat:@"%@ cannot be completed since current device is not active", v26];
  v41 = v27;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v41 forKeys:&v40 count:1];

  v28 = objc_alloc(MEMORY[0x277CCA9B8]);
  v29 = [v28 initWithDomain:*MEMORY[0x277D4ACD0] code:11 userInfo:v15];
  (*(*(a1 + 48) + 16))();

LABEL_15:
}

- (void)endSessionForSessionID:(id)d reason:(unint64_t)reason completion:(id)completion
{
  v21 = *MEMORY[0x277D85DE8];
  dCopy = d;
  completionCopy = completion;
  if (completionCopy)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v10 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v18 = "[SMSessionManager endSessionForSessionID:reason:completion:]";
        v19 = 2048;
        reasonCopy = reason;
        _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_INFO, "%s, User requested to end session with reason %lu", buf, 0x16u);
      }
    }

    queue = [(SMSessionManager *)self queue];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __61__SMSessionManager_endSessionForSessionID_reason_completion___block_invoke;
    v13[3] = &unk_2788C4C20;
    v13[4] = self;
    v14 = dCopy;
    reasonCopy2 = reason;
    v15 = completionCopy;
    dispatch_async(queue, v13);
  }

  else
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler", buf, 2u);
    }
  }
}

void __61__SMSessionManager_endSessionForSessionID_reason_completion___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) _isActiveDevice])
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 40);
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __61__SMSessionManager_endSessionForSessionID_reason_completion___block_invoke_2;
    v21[3] = &unk_2788C51C8;
    v4 = *(a1 + 56);
    v5 = *(a1 + 48);
    v21[4] = *(a1 + 32);
    v22 = v5;
    [v2 _endSessionForSessionID:v3 reason:v4 handler:v21];
    v6 = v22;
  }

  else if ([MEMORY[0x277D4AAE0] zelkovaRemoteControlEnabled])
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __61__SMSessionManager_endSessionForSessionID_reason_completion___block_invoke_3;
    v19[3] = &unk_2788C51C8;
    v9 = *(a1 + 56);
    v10 = *(a1 + 48);
    v19[4] = *(a1 + 32);
    v20 = v10;
    [v7 _endSessionForSessionID:v8 reason:v9 handler:v19];
    v6 = v20;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v11 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v26 = "[SMSessionManager endSessionForSessionID:reason:completion:]_block_invoke";
        _os_log_impl(&dword_2304B3000, v11, OS_LOG_TYPE_INFO, "%s: This device is not active and Zelkova RemoteControl is not enabled; skip and do nothing", buf, 0xCu);
      }
    }

    v12 = objc_alloc(MEMORY[0x277CCA9B8]);
    v13 = *MEMORY[0x277D4ACD0];
    v23 = *MEMORY[0x277CCA450];
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"This device is not active and RemoteControl is not enabled"];;
    v24 = v14;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    v6 = [v12 initWithDomain:v13 code:1 userInfo:v15];

    (*(*(a1 + 48) + 16))();
    v16 = [*(a1 + 32) sessionMetricManager];
    v17 = [v6 code];
    v18 = [v6 domain];
    [v16 onUserActionWithRemoteCommand:3 remoteCommandType:0 error:v17 errorDomain:v18];
  }
}

void __61__SMSessionManager_endSessionForSessionID_reason_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 16);
  v5 = a2;
  v4(v3, v5);
  v8 = [*(a1 + 32) sessionMetricManager];
  v6 = [v5 code];
  v7 = [v5 domain];

  [v8 onUserActionWithRemoteCommand:3 remoteCommandType:1 error:v6 errorDomain:v7];
}

void __61__SMSessionManager_endSessionForSessionID_reason_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 16);
  v5 = a2;
  v4(v3, v5);
  v8 = [*(a1 + 32) sessionMetricManager];
  v6 = [v5 code];
  v7 = [v5 domain];

  [v8 onUserActionWithRemoteCommand:3 remoteCommandType:2 error:v6 errorDomain:v7];
}

- (void)_endSessionForSessionID:(id)d reason:(unint64_t)reason handler:(id)handler
{
  v36 = *MEMORY[0x277D85DE8];
  dCopy = d;
  handlerCopy = handler;
  if (handlerCopy)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v11 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v33 = "[SMSessionManager _endSessionForSessionID:reason:handler:]";
        v34 = 2048;
        reasonCopy = reason;
        _os_log_impl(&dword_2304B3000, v11, OS_LOG_TYPE_INFO, "%s, User requested to end session with reason %lu", buf, 0x16u);
      }
    }

    v12 = [MEMORY[0x277CBEB98] setWithObjects:{&unk_2845A0848, &unk_2845A0860, &unk_2845A0878, &unk_2845A0890, &unk_2845A08C0, &unk_2845A08A8, 0}];
    v13 = [(SMSessionManager *)self checkSessionIDCanDeviceModifyStateAndSessionStateWithSelector:a2 sessionID:dCopy validSessionStates:v12];
    if (v13)
    {
      handlerCopy[2](handlerCopy, v13);
    }

    else
    {
      startMessageGUID = [(SMSessionManagerState *)self->_state startMessageGUID];
      v22 = [(SMSessionManager *)self _getEndSessionStateWithReason:reason];
      v21 = objc_alloc(MEMORY[0x277D4ABA8]);
      state = [(SMSessionManager *)self state];
      configuration = [state configuration];
      state2 = [(SMSessionManager *)self state];
      monitorContext = [state2 monitorContext];
      v15 = [MEMORY[0x277CBEAA8] now];
      messagingService = [(SMSessionManager *)self messagingService];
      [messagingService deviceIdentifier];
      v17 = v27 = dCopy;
      v18 = [MEMORY[0x277CBEAA8] now];
      v23 = [v21 initWithSessionState:v22 configuration:configuration userTriggerResponse:0 monitorContext:monitorContext date:v15 location:0 allowReadToken:0 safetyCacheKey:0 startMessageGUID:0 scheduledSendMessageGUID:0 scheduledSendMessageDate:0 activeDeviceIdentifier:v17 estimatedEndDate:0 coarseEstimatedEndDate:0 estimatedEndDateStatus:0 sessionEndReason:reason sessionStateTransitionDate:v18 activePairedDeviceIdentifier:0];

      [(SMSessionManager *)self _setPendingSendSessionEndMessageWithReason:reason associatedGUID:startMessageGUID];
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __59__SMSessionManager__endSessionForSessionID_reason_handler___block_invoke;
      v28[3] = &unk_2788C59D0;
      reasonCopy2 = reason;
      v28[4] = self;
      v29 = startMessageGUID;
      v30 = handlerCopy;
      v19 = startMessageGUID;
      [(SMSessionManager *)self _performStateTransitionTo:v23 transitionType:1 handler:v28];

      dCopy = v27;
    }
  }

  else
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler", buf, 2u);
    }
  }
}

void __59__SMSessionManager__endSessionForSessionID_reason_handler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v10 = v3;
  if (!v3)
  {
    v4 = *(a1 + 56);
    if (v4 != 9)
    {
      v5 = *(a1 + 32);
      v6 = *(a1 + 40);
      v7 = [v5 state];
      [v5 sendSessionEndMessageWithReason:v4 associatedGUID:v6 state:v7];

      v3 = 0;
    }
  }

  v8 = v3 == 0;
  v9 = [*(a1 + 32) sessionMetricManager];
  [v9 onSessionTerminationResult:v8 reason:*(a1 + 56) error:v10];

  (*(*(a1 + 48) + 16))();
}

- (void)_endRemoteSessionForSessionID:(id)d reason:(unint64_t)reason handler:(id)handler
{
  handlerCopy = handler;
  dCopy = d;
  messagingService = [(SMSessionManager *)self messagingService];
  deviceIdentifier = [messagingService deviceIdentifier];
  uUIDString = [deviceIdentifier UUIDString];

  messagingService2 = [(SMSessionManager *)self messagingService];
  platform = [(SMSessionManager *)self platform];
  v15 = [messagingService2 convertRTPlatformToIDSDeviceType:platform];

  v16 = [objc_alloc(MEMORY[0x277D4ABA0]) initWithSessionEndReason:reason sessionID:dCopy sourceDeviceType:v15 sourceDeviceID:uUIDString];
  messagingService3 = [(SMSessionManager *)self messagingService];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __65__SMSessionManager__endRemoteSessionForSessionID_reason_handler___block_invoke;
  v19[3] = &unk_2788C58B8;
  v19[4] = self;
  v20 = handlerCopy;
  v18 = handlerCopy;
  [messagingService3 sendIDSMessageToMyNearbyDevices:v16 completion:v19];
}

void __65__SMSessionManager__endRemoteSessionForSessionID_reason_handler___block_invoke(uint64_t a1, int a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      if (a2)
      {
        v7 = @"succeeded";
      }

      else
      {
        v7 = @"failed";
      }

      v8 = [*(a1 + 32) state];
      v9 = [v8 configuration];
      v10 = [v9 sessionID];
      v11 = 136315906;
      v12 = "[SMSessionManager _endRemoteSessionForSessionID:reason:handler:]_block_invoke";
      v13 = 2112;
      v14 = v7;
      v15 = 2112;
      v16 = v10;
      v17 = 2112;
      v18 = v5;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%s, send, %@, sessionID, %@, error, %@", &v11, 0x2Au);
    }
  }

  (*(*(a1 + 40) + 16))();
}

- (void)terminateSessionWithSessionID:(id)d
{
  dCopy = d;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "Received termination", buf, 2u);
    }
  }

  queue = [(SMSessionManager *)self queue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __50__SMSessionManager_terminateSessionWithSessionID___block_invoke;
  v8[3] = &unk_2788C4A70;
  v8[4] = self;
  v9 = dCopy;
  v7 = dCopy;
  dispatch_async(queue, v8);
}

- (void)_terminateSessionWithSessionID:(id)d
{
  v16 = *MEMORY[0x277D85DE8];
  dCopy = d;
  if ([(SMSessionManager *)self _canDeviceModifyState])
  {
    configuration = [(SMSessionManagerState *)self->_state configuration];
    sessionID = [configuration sessionID];
    v7 = [sessionID isEqual:dCopy];

    if (v7)
    {
      v8 = [(SMSessionManagerState *)self->_state mutableCopy];
      [v8 setSessionState:1];
      [v8 setStartMessageGUID:0];
      [v8 setScheduledSendMessageGUID:0];
      [v8 setScheduledSendMessageDate:0];
      [v8 setActiveDeviceIdentifier:0];
      [(SMSessionManager *)self _performStateTransitionTo:v8 transitionType:1 handler:0];
    }

    else
    {
      v8 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        configuration2 = [(SMSessionManagerState *)self->_state configuration];
        sessionID2 = [configuration2 sessionID];
        v12 = 138412546;
        v13 = dCopy;
        v14 = 2112;
        v15 = sessionID2;
        _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "sessionID %@ does not match current configuration sessionID %@", &v12, 0x16u);
      }
    }
  }

  else
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v12) = 0;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Received termination request from a device that cannot modify state", &v12, 2u);
    }
  }
}

- (void)modifySessionWithConfiguration:(id)configuration handler:(id)handler
{
  v16 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  handlerCopy = handler;
  if (handlerCopy)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v8 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v15 = "[SMSessionManager modifySessionWithConfiguration:handler:]";
        _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "%s, User requested to modify session", buf, 0xCu);
      }
    }

    queue = [(SMSessionManager *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __59__SMSessionManager_modifySessionWithConfiguration_handler___block_invoke;
    block[3] = &unk_2788C4500;
    block[4] = self;
    v12 = configurationCopy;
    v13 = handlerCopy;
    dispatch_async(queue, block);
  }

  else
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler", buf, 2u);
    }
  }
}

void __59__SMSessionManager_modifySessionWithConfiguration_handler___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) _isActiveDevice])
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 40);
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __59__SMSessionManager_modifySessionWithConfiguration_handler___block_invoke_2;
    v19[3] = &unk_2788C51C8;
    v4 = *(a1 + 48);
    v19[4] = *(a1 + 32);
    v20 = v4;
    [v2 _modifySessionWithConfiguration:v3 handler:v19];
    v5 = v20;
  }

  else if ([MEMORY[0x277D4AAE0] zelkovaRemoteControlEnabled])
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __59__SMSessionManager_modifySessionWithConfiguration_handler___block_invoke_3;
    v17[3] = &unk_2788C51C8;
    v8 = *(a1 + 48);
    v17[4] = *(a1 + 32);
    v18 = v8;
    [v6 _modifyRemoteSessionWithConfiguration:v7 handler:v17];
    v5 = v18;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v24 = "[SMSessionManager modifySessionWithConfiguration:handler:]_block_invoke";
        _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "%s: This device is not active and Zelkova RemoteControl is not enabled; skip and do nothing", buf, 0xCu);
      }
    }

    v10 = objc_alloc(MEMORY[0x277CCA9B8]);
    v11 = *MEMORY[0x277D4ACD0];
    v21 = *MEMORY[0x277CCA450];
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"This device is not active and RemoteControl is not enabled"];;
    v22 = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    v5 = [v10 initWithDomain:v11 code:1 userInfo:v13];

    (*(*(a1 + 48) + 16))();
    v14 = [*(a1 + 32) sessionMetricManager];
    v15 = [v5 code];
    v16 = [v5 domain];
    [v14 onUserActionWithRemoteCommand:1 remoteCommandType:0 error:v15 errorDomain:v16];
  }
}

void __59__SMSessionManager_modifySessionWithConfiguration_handler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 16);
  v5 = a2;
  v4(v3, v5);
  v8 = [*(a1 + 32) sessionMetricManager];
  v6 = [v5 code];
  v7 = [v5 domain];

  [v8 onUserActionWithRemoteCommand:1 remoteCommandType:1 error:v6 errorDomain:v7];
}

void __59__SMSessionManager_modifySessionWithConfiguration_handler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 16);
  v5 = a2;
  v4(v3, v5);
  v8 = [*(a1 + 32) sessionMetricManager];
  v6 = [v5 code];
  v7 = [v5 domain];

  [v8 onUserActionWithRemoteCommand:1 remoteCommandType:2 error:v6 errorDomain:v7];
}

- (void)_modifySessionWithConfiguration:(id)configuration handler:(id)handler
{
  v24 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  handlerCopy = handler;
  if (handlerCopy)
  {
    v9 = [MEMORY[0x277CBEB98] setWithObjects:{&unk_2845A0848, &unk_2845A0860, &unk_2845A0878, &unk_2845A0890, &unk_2845A08C0, 0}];
    sessionID = [configurationCopy sessionID];
    v11 = [(SMSessionManager *)self checkSessionIDCanDeviceModifyStateAndSessionStateWithSelector:a2 sessionID:sessionID validSessionStates:v9];

    if (v11)
    {
      handlerCopy[2](handlerCopy, v11);
LABEL_8:

      goto LABEL_9;
    }

    if ([MEMORY[0x277D4AB78] configurationIsValid:configurationCopy])
    {
      v11 = [(SMSessionManagerState *)self->_state mutableCopy];
      [v11 setSessionState:2];
      [v11 setConfiguration:configurationCopy];
      [(SMSessionManager *)self _performStateTransitionTo:v11 transitionType:1 handler:handlerCopy];
      goto LABEL_8;
    }

    v12 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sessionID2 = [configurationCopy sessionID];
      *buf = 136315394;
      v21 = "[SMSessionManager _modifySessionWithConfiguration:handler:]";
      v22 = 2112;
      v23 = sessionID2;
      _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, "%s, invalid configuration, %@", buf, 0x16u);
    }

    v18 = *MEMORY[0x277CCA450];
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s cannot be completed. Provided configuration is not valid.", "-[SMSessionManager _modifySessionWithConfiguration:handler:]"];
    v19 = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v19 forKeys:&v18 count:1];

    v15 = objc_alloc(MEMORY[0x277CCA9B8]);
    v16 = [v15 initWithDomain:*MEMORY[0x277D4ACD0] code:7 userInfo:v14];
    handlerCopy[2](handlerCopy, v16);
  }

  else
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler", buf, 2u);
    }
  }

LABEL_9:
}

- (void)_modifyRemoteSessionWithConfiguration:(id)configuration handler:(id)handler
{
  handlerCopy = handler;
  configurationCopy = configuration;
  messagingService = [(SMSessionManager *)self messagingService];
  deviceIdentifier = [messagingService deviceIdentifier];
  uUIDString = [deviceIdentifier UUIDString];

  messagingService2 = [(SMSessionManager *)self messagingService];
  platform = [(SMSessionManager *)self platform];
  v13 = [messagingService2 convertRTPlatformToIDSDeviceType:platform];

  v14 = [objc_alloc(MEMORY[0x277D4ABC0]) initWithSourceDeviceType:v13 sourceDeviceID:uUIDString updatedSessionConfiguration:configurationCopy];
  messagingService3 = [(SMSessionManager *)self messagingService];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __66__SMSessionManager__modifyRemoteSessionWithConfiguration_handler___block_invoke;
  v18[3] = &unk_2788D32D8;
  v19 = v14;
  selfCopy = self;
  v21 = handlerCopy;
  v16 = handlerCopy;
  v17 = v14;
  [messagingService3 sendIDSMessageToMyDevices:v17 completion:v18];
}

void __66__SMSessionManager__modifyRemoteSessionWithConfiguration_handler___block_invoke(uint64_t a1, int a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      if (a2)
      {
        v7 = @"succeeded";
      }

      else
      {
        v7 = @"failed";
      }

      v8 = *(a1 + 32);
      v9 = [*(a1 + 40) state];
      v10 = [v9 configuration];
      v11 = [v10 sessionID];
      v12 = 136316162;
      v13 = "[SMSessionManager _modifyRemoteSessionWithConfiguration:handler:]_block_invoke";
      v14 = 2112;
      v15 = v7;
      v16 = 2112;
      v17 = v8;
      v18 = 2112;
      v19 = v11;
      v20 = 2112;
      v21 = v5;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%s, Succeeded, %@, sendIDSMesssage modifyConfig, %@,sessionID, %@, error, %@", &v12, 0x34u);
    }
  }

  (*(*(a1 + 48) + 16))();
}

- (void)sendSafetyCacheForSessionID:(id)d handler:(id)handler
{
  v18 = *MEMORY[0x277D85DE8];
  dCopy = d;
  handlerCopy = handler;
  if (handlerCopy)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v17 = "[SMSessionManager sendSafetyCacheForSessionID:handler:]";
        _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "%s, User requested release", buf, 0xCu);
      }
    }

    queue = [(SMSessionManager *)self queue];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __56__SMSessionManager_sendSafetyCacheForSessionID_handler___block_invoke;
    v12[3] = &unk_2788C4C20;
    v12[4] = self;
    v15 = a2;
    v13 = dCopy;
    v14 = handlerCopy;
    dispatch_async(queue, v12);
  }

  else
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler", buf, 2u);
    }
  }
}

void __56__SMSessionManager_sendSafetyCacheForSessionID_handler___block_invoke(uint64_t a1)
{
  v4 = [MEMORY[0x277CBEB98] setWithObjects:{&unk_2845A0848, &unk_2845A0860, &unk_2845A0878, &unk_2845A0890, &unk_2845A08C0, 0}];
  v2 = [*(a1 + 32) checkSessionIDCanDeviceModifyStateAndSessionStateWithSelector:*(a1 + 56) sessionID:*(a1 + 40) validSessionStates:?];
  if (v2)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v3 = [*(*(a1 + 32) + 8) mutableCopy];
    [v3 setSessionState:4];
    [*(a1 + 32) _performStateTransitionTo:v3 transitionType:1 handler:*(a1 + 48)];
  }
}

- (void)startSessionWithConfiguration:(id)configuration completion:(id)completion
{
  v21 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  completionCopy = completion;
  if (completionCopy)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = NSStringFromSelector(a2);
        *buf = 138412547;
        v18 = v10;
        v19 = 2117;
        v20 = configurationCopy;
        _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "%@, configuration, %{sensitive}@", buf, 0x16u);
      }
    }

    queue = [(SMSessionManager *)self queue];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __61__SMSessionManager_startSessionWithConfiguration_completion___block_invoke;
    v13[3] = &unk_2788C4C20;
    v13[4] = self;
    v14 = configurationCopy;
    v16 = a2;
    v15 = completionCopy;
    dispatch_async(queue, v13);
  }

  else
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler", buf, 2u);
    }
  }
}

void __61__SMSessionManager_startSessionWithConfiguration_completion___block_invoke(uint64_t a1)
{
  v39[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) state];
  if ([v2 sessionState] == 2)
  {
    v3 = [*(a1 + 32) state];
    v4 = [v3 configuration];
    v5 = [v4 isSameSession:*(a1 + 40)];

    if (v5)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v6 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          v7 = NSStringFromSelector(*(a1 + 56));
          v8 = *(a1 + 40);
          *buf = 138412547;
          *&buf[4] = v7;
          *&buf[12] = 2117;
          *&buf[14] = v8;
          _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%@, configuration, %{sensitive}@, Trying to start session we already started, mark as success", buf, 0x16u);
        }
      }

      (*(*(a1 + 48) + 16))();
      return;
    }
  }

  else
  {
  }

  v9 = [MEMORY[0x277CBEB98] setWithObjects:{&unk_2845A08D8, 0}];
  v10 = *(a1 + 56);
  v11 = *(a1 + 32);
  v12 = [*(a1 + 40) sessionID];
  v13 = [v11 checkSessionIDCanDeviceModifyStateAndSessionStateWithSelector:v10 sessionID:v12 validSessionStates:v9];

  if (v13)
  {
    (*(*(a1 + 48) + 16))();
  }

  else if ([MEMORY[0x277D4AB78] configurationIsValid:*(a1 + 40)])
  {
    v13 = dispatch_group_create();
    v14 = [*(a1 + 40) conversation];
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v35 = __Block_byref_object_copy__198;
    v36 = __Block_byref_object_dispose__198;
    v37 = 0;
    v15 = [v14 identifier];

    if (v15)
    {
      dispatch_group_enter(v13);
      v16 = [v14 identifier];
      v17 = [*(a1 + 32) queue];
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __61__SMSessionManager_startSessionWithConfiguration_completion___block_invoke_2;
      v31[3] = &unk_2788CE7F8;
      v33 = buf;
      v32 = v13;
      [SMMessagingUtilities queryChatWithGroupID:v16 queue:v17 handler:v31];
    }

    v18 = [*(a1 + 32) queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __61__SMSessionManager_startSessionWithConfiguration_completion___block_invoke_3;
    block[3] = &unk_2788D3300;
    v19 = *(a1 + 40);
    v30 = buf;
    v20 = *(a1 + 32);
    v27 = v19;
    v28 = v20;
    v29 = *(a1 + 48);
    dispatch_group_notify(v13, v18, block);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v21 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v25 = [*(a1 + 40) sessionID];
      *buf = 136315394;
      *&buf[4] = "[SMSessionManager startSessionWithConfiguration:completion:]_block_invoke";
      *&buf[12] = 2112;
      *&buf[14] = v25;
      _os_log_error_impl(&dword_2304B3000, v21, OS_LOG_TYPE_ERROR, "%s, invalid configuration, %@", buf, 0x16u);
    }

    v38 = *MEMORY[0x277CCA450];
    v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s cannot be completed. Provided configuration is not valid.", "-[SMSessionManager startSessionWithConfiguration:completion:]_block_invoke"];
    v39[0] = v22;
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:&v38 count:1];

    v24 = objc_alloc(MEMORY[0x277CCA9B8]);
    v13 = [v24 initWithDomain:*MEMORY[0x277D4ACD0] code:7 userInfo:v23];
    (*(*(a1 + 48) + 16))();
  }
}

void __61__SMSessionManager_startSessionWithConfiguration_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 displayName];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *(a1 + 32);

  dispatch_group_leave(v6);
}

void __61__SMSessionManager_startSessionWithConfiguration_completion___block_invoke_3(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277D4AA98]);
  v3 = [*(a1 + 32) conversation];
  v4 = [v3 receiverHandles];
  v5 = [*(a1 + 32) conversation];
  v6 = [v5 identifier];
  v27 = [v2 initWithReceiverHandles:v4 identifier:v6 displayName:*(*(*(a1 + 56) + 8) + 40)];

  v7 = [*(*(a1 + 40) + 8) mutableCopy];
  [v7 setSessionState:2];
  v8 = objc_alloc(MEMORY[0x277D4AB78]);
  v26 = [*(a1 + 32) sessionID];
  v25 = [MEMORY[0x277CBEAA8] now];
  v24 = [*(a1 + 32) sessionType];
  v9 = [*(a1 + 32) time];
  v10 = [*(a1 + 32) destination];
  v11 = [*(a1 + 32) userResponseSafeDate];
  v12 = [*(a1 + 32) sessionSupportsHandoff];
  v13 = [*(a1 + 32) sosReceivers];
  v14 = [*(a1 + 32) sessionWorkoutIdentifier];
  LOBYTE(v23) = v12;
  v15 = [v8 initWithConversation:v27 sessionID:v26 sessionStartDate:v25 sessionType:v24 time:v9 destination:v10 userResponseSafeDate:v11 sessionSupportsHandoff:v23 sosReceivers:v13 sessionWorkoutIdentifier:v14 sessionWorkoutType:objc_msgSend(*(a1 + 32) sessionWorkoutMirrorType:{"sessionWorkoutType"), objc_msgSend(*(a1 + 32), "sessionWorkoutMirrorType")}];
  [v7 setConfiguration:v15];

  if ([*(a1 + 32) sessionType] == 3)
  {
    v16 = [*(a1 + 40) _updateDestinationForRoundTripSessionConfiguration:*(a1 + 32)];
    [v7 setConfiguration:v16];
  }

  if ([*(a1 + 32) sessionType] == 2)
  {
    v17 = [*(a1 + 32) destination];
    v18 = [v17 eta];
    v19 = [v18 etaDate];
    [v7 setEstimatedEndDate:v19];

    v20 = [*(a1 + 32) destination];
    v21 = [v20 eta];
    v22 = [v21 coarseEtaDate];
    [v7 setCoarseEstimatedEndDate:v22];

    [v7 setEstimatedEndDateStatus:1];
  }

  [*(a1 + 40) _performStateTransitionTo:v7 transitionType:1 handler:*(a1 + 48)];
}

- (void)respondToTriggerPromptForSessionID:(id)d response:(int64_t)response handler:(id)handler
{
  v19 = *MEMORY[0x277D85DE8];
  dCopy = d;
  handlerCopy = handler;
  if (handlerCopy)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v10 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v18 = "[SMSessionManager respondToTriggerPromptForSessionID:response:handler:]";
        _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_INFO, "%s, User responded to trigger prompt", buf, 0xCu);
      }
    }

    queue = [(SMSessionManager *)self queue];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __72__SMSessionManager_respondToTriggerPromptForSessionID_response_handler___block_invoke;
    v13[3] = &unk_2788C4C20;
    v13[4] = self;
    v14 = dCopy;
    responseCopy = response;
    v15 = handlerCopy;
    dispatch_async(queue, v13);
  }

  else
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler", buf, 2u);
    }
  }
}

void __72__SMSessionManager_respondToTriggerPromptForSessionID_response_handler___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) _isActiveDevice])
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 40);
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __72__SMSessionManager_respondToTriggerPromptForSessionID_response_handler___block_invoke_2;
    v21[3] = &unk_2788C51C8;
    v4 = *(a1 + 56);
    v5 = *(a1 + 48);
    v21[4] = *(a1 + 32);
    v22 = v5;
    [v2 _respondToTriggerPromptForSessionID:v3 response:v4 handler:v21];
    v6 = v22;
  }

  else if ([MEMORY[0x277D4AAE0] zelkovaRemoteControlEnabled])
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __72__SMSessionManager_respondToTriggerPromptForSessionID_response_handler___block_invoke_3;
    v19[3] = &unk_2788C51C8;
    v9 = *(a1 + 56);
    v10 = *(a1 + 48);
    v19[4] = *(a1 + 32);
    v20 = v10;
    [v7 _respondToTriggerPromptWithRemoteControlSessionID:v8 response:v9 handler:v19];
    v6 = v20;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v11 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v26 = "[SMSessionManager respondToTriggerPromptForSessionID:response:handler:]_block_invoke";
        _os_log_impl(&dword_2304B3000, v11, OS_LOG_TYPE_INFO, "%s: This device is not active and Zelkova RemoteControl is not enabled; skip and do nothing", buf, 0xCu);
      }
    }

    v12 = objc_alloc(MEMORY[0x277CCA9B8]);
    v13 = *MEMORY[0x277D4ACD0];
    v23 = *MEMORY[0x277CCA450];
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"This device is not active and RemoteControl is not enabled"];;
    v24 = v14;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    v6 = [v12 initWithDomain:v13 code:1 userInfo:v15];

    (*(*(a1 + 48) + 16))();
    v16 = [*(a1 + 32) sessionMetricManager];
    v17 = [v6 code];
    v18 = [v6 domain];
    [v16 onUserActionWithRemoteCommand:2 remoteCommandType:0 error:v17 errorDomain:v18];
  }
}

void __72__SMSessionManager_respondToTriggerPromptForSessionID_response_handler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 16);
  v5 = a2;
  v4(v3, v5);
  v8 = [*(a1 + 32) sessionMetricManager];
  v6 = [v5 code];
  v7 = [v5 domain];

  [v8 onUserActionWithRemoteCommand:2 remoteCommandType:1 error:v6 errorDomain:v7];
}

void __72__SMSessionManager_respondToTriggerPromptForSessionID_response_handler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 16);
  v5 = a2;
  v4(v3, v5);
  v8 = [*(a1 + 32) sessionMetricManager];
  v6 = [v5 code];
  v7 = [v5 domain];

  [v8 onUserActionWithRemoteCommand:2 remoteCommandType:2 error:v6 errorDomain:v7];
}

- (void)_respondToTriggerPromptWithRemoteControlSessionID:(id)d response:(int64_t)response handler:(id)handler
{
  handlerCopy = handler;
  dCopy = d;
  messagingService = [(SMSessionManager *)self messagingService];
  deviceIdentifier = [messagingService deviceIdentifier];
  uUIDString = [deviceIdentifier UUIDString];

  messagingService2 = [(SMSessionManager *)self messagingService];
  platform = [(SMSessionManager *)self platform];
  v15 = [messagingService2 convertRTPlatformToIDSDeviceType:platform];

  v16 = [objc_alloc(MEMORY[0x277D4AB60]) initWithTriggerPromptResponse:response sessionID:dCopy sourceDeviceType:v15 sourceDeviceID:uUIDString];
  messagingService3 = [(SMSessionManager *)self messagingService];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __87__SMSessionManager__respondToTriggerPromptWithRemoteControlSessionID_response_handler___block_invoke;
  v19[3] = &unk_2788C58B8;
  v19[4] = self;
  v20 = handlerCopy;
  v18 = handlerCopy;
  [messagingService3 sendIDSMessageToMyDevices:v16 completion:v19];
}

void __87__SMSessionManager__respondToTriggerPromptWithRemoteControlSessionID_response_handler___block_invoke(uint64_t a1, int a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      if (a2)
      {
        v7 = @"succeeded";
      }

      else
      {
        v7 = @"failed";
      }

      v8 = [*(a1 + 32) state];
      v9 = [v8 configuration];
      v10 = [v9 sessionID];
      v11 = 136315906;
      v12 = "[SMSessionManager _respondToTriggerPromptWithRemoteControlSessionID:response:handler:]_block_invoke";
      v13 = 2112;
      v14 = v7;
      v15 = 2112;
      v16 = v10;
      v17 = 2112;
      v18 = v5;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%s, send, %@, sessionID, %@, error, %@", &v11, 0x2Au);
    }
  }

  (*(*(a1 + 40) + 16))();
}

- (void)_respondToTriggerPromptForSessionID:(id)d response:(int64_t)response handler:(id)handler
{
  v85 = *MEMORY[0x277D85DE8];
  dCopy = d;
  handlerCopy = handler;
  if (handlerCopy)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v11 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v84 = "[SMSessionManager _respondToTriggerPromptForSessionID:response:handler:]";
        _os_log_impl(&dword_2304B3000, v11, OS_LOG_TYPE_INFO, "%s, User responded to trigger prompt", buf, 0xCu);
      }
    }

    v12 = [MEMORY[0x277CBEB98] setWithObjects:{&unk_2845A0848, &unk_2845A0860, &unk_2845A0878, &unk_2845A0890, &unk_2845A08C0, 0}];
    v13 = [(SMSessionManager *)self checkSessionIDCanDeviceModifyStateAndSessionStateWithSelector:a2 sessionID:dCopy validSessionStates:v12];
    if (v13)
    {
      handlerCopy[2](handlerCopy, v13);
LABEL_37:

      goto LABEL_38;
    }

    state = [(SMSessionManager *)self state];
    sessionState = [state sessionState];

    if (sessionState > 8)
    {
      if (sessionState == 9)
      {
        if (response != 1)
        {
          if (response == 2)
          {
            v36 = [(SMSessionManagerState *)self->_state mutableCopy];
            [v36 setSessionState:2];
            v68 = v36;
            [v36 setUserTriggerResponse:2];
            defaultsManager = [(SMSessionManager *)self defaultsManager];
            v38 = [defaultsManager objectForKey:@"RTDefaultsSessionManagerTimerExtensionPeriodKey"];

            if (v38)
            {
              defaultsManager2 = [(SMSessionManager *)self defaultsManager];
              v40 = [defaultsManager2 objectForKey:@"RTDefaultsSessionManagerTimerExtensionPeriodKey"];
              [v40 doubleValue];
              v42 = v41;
            }

            else
            {
              v42 = *MEMORY[0x277D4AE00];
            }

            state2 = [(SMSessionManager *)self state];
            configuration = [state2 configuration];
            time = [configuration time];
            timeBound = [time timeBound];

            v47 = objc_alloc(MEMORY[0x277D4AC08]);
            v48 = [MEMORY[0x277CBEAA8] dateWithTimeInterval:timeBound sinceDate:v42];
            v72 = [v47 initWithTimeBound:v48];

            v57 = objc_alloc(MEMORY[0x277D4AB78]);
            state3 = [(SMSessionManager *)self state];
            configuration2 = [state3 configuration];
            conversation = [configuration2 conversation];
            state4 = [(SMSessionManager *)self state];
            configuration3 = [state4 configuration];
            sessionID = [configuration3 sessionID];
            state5 = [(SMSessionManager *)self state];
            configuration4 = [state5 configuration];
            sessionSupportsHandoff = [configuration4 sessionSupportsHandoff];
            state6 = [(SMSessionManager *)self state];
            configuration5 = [state6 configuration];
            sosReceivers = [configuration5 sosReceivers];
            v54 = [v57 initTimeBoundSessionConfigurationWithConversation:conversation sessionID:sessionID time:v72 sessionSupportsHandoff:sessionSupportsHandoff sosReceivers:sosReceivers];

            v28 = v68;
            [v68 setConfiguration:v54];
            [(SMSessionManager *)self _performStateTransitionTo:v68 transitionType:1 handler:handlerCopy];

            goto LABEL_36;
          }

          if (response != 3)
          {
            v77 = *MEMORY[0x277CCA450];
            v43 = MEMORY[0x277CCACA8];
            v17 = NSStringFromSelector(a2);
            v18 = [v43 stringWithFormat:@"%@ cannot be completed due invalid response type", v17];
            v78 = v18;
            v19 = MEMORY[0x277CBEAC0];
            v20 = &v78;
            v21 = &v77;
            goto LABEL_24;
          }

          goto LABEL_32;
        }

        goto LABEL_33;
      }

      if (sessionState == 14)
      {
        if (response != 1)
        {
          if (response != 2)
          {
            if (response != 3)
            {
              v75 = *MEMORY[0x277CCA450];
              v22 = MEMORY[0x277CCACA8];
              v17 = NSStringFromSelector(a2);
              v18 = [v22 stringWithFormat:@"%@ cannot be completed due invalid response type", v17];
              v76 = v18;
              v19 = MEMORY[0x277CBEAC0];
              v20 = &v76;
              v21 = &v75;
              goto LABEL_24;
            }

            goto LABEL_32;
          }

          goto LABEL_34;
        }

LABEL_33:
        v28 = [(SMSessionManagerState *)self->_state mutableCopy];
        [v28 setSessionState:4];
        v29 = v28;
        v30 = 1;
        goto LABEL_35;
      }
    }

    else
    {
      if (sessionState == 7)
      {
        if (response != 1)
        {
          if (response == 2)
          {
            v69 = [(SMSessionManagerState *)self->_state mutableCopy];
            [v69 setSessionState:2];
            [v69 setUserTriggerResponse:2];
            state7 = [(SMSessionManager *)self state];
            configuration6 = [state7 configuration];

            v71 = [MEMORY[0x277CBEAA8] now];
            v67 = objc_alloc(MEMORY[0x277D4AB78]);
            conversation2 = [configuration6 conversation];
            sessionID2 = [configuration6 sessionID];
            destination = [configuration6 destination];
            sessionStartDate = [configuration6 sessionStartDate];
            sessionSupportsHandoff2 = [configuration6 sessionSupportsHandoff];
            sosReceivers2 = [configuration6 sosReceivers];
            v35 = [v67 initDestinationBoundSessionConfigurationWithConversation:conversation2 sessionID:sessionID2 destination:destination sessionStartDate:sessionStartDate userResponseSafeDate:v71 sessionSupportsHandoff:sessionSupportsHandoff2 sosReceivers:sosReceivers2];

            [v69 setConfiguration:v35];
            [(SMSessionManager *)self _performStateTransitionTo:v69 transitionType:1 handler:handlerCopy];

            goto LABEL_37;
          }

          if (response != 3)
          {
            v81 = *MEMORY[0x277CCA450];
            v27 = MEMORY[0x277CCACA8];
            v17 = NSStringFromSelector(a2);
            v18 = [v27 stringWithFormat:@"%@ cannot be completed due invalid response type", v17];
            v82 = v18;
            v19 = MEMORY[0x277CBEAC0];
            v20 = &v82;
            v21 = &v81;
            goto LABEL_24;
          }

LABEL_32:
          v28 = [(SMSessionManagerState *)self->_state mutableCopy];
          [v28 setSessionState:4];
          v29 = v28;
          v30 = 3;
LABEL_35:
          [v29 setUserTriggerResponse:v30];
          [(SMSessionManager *)self _performStateTransitionTo:v28 transitionType:1 handler:handlerCopy];
LABEL_36:

          goto LABEL_37;
        }

        goto LABEL_33;
      }

      if (sessionState == 8)
      {
        if (response != 1)
        {
          if (response != 2)
          {
            if (response != 3)
            {
              v79 = *MEMORY[0x277CCA450];
              v16 = MEMORY[0x277CCACA8];
              v17 = NSStringFromSelector(a2);
              v18 = [v16 stringWithFormat:@"%@ cannot be completed due invalid response type", v17];
              v80 = v18;
              v19 = MEMORY[0x277CBEAC0];
              v20 = &v80;
              v21 = &v79;
LABEL_24:
              v24 = [v19 dictionaryWithObjects:v20 forKeys:v21 count:1];

              v25 = objc_alloc(MEMORY[0x277CCA9B8]);
              v26 = [v25 initWithDomain:*MEMORY[0x277D4ACD0] code:7 userInfo:v24];
              handlerCopy[2](handlerCopy, v26);

              goto LABEL_37;
            }

            goto LABEL_32;
          }

LABEL_34:
          v28 = [(SMSessionManagerState *)self->_state mutableCopy];
          [v28 setSessionState:2];
          v29 = v28;
          v30 = 2;
          goto LABEL_35;
        }

        goto LABEL_33;
      }
    }

    v73 = *MEMORY[0x277CCA450];
    v23 = MEMORY[0x277CCACA8];
    v17 = NSStringFromSelector(a2);
    v18 = [v23 stringWithFormat:@"%@ cannot be completed due invalid state for response", v17];
    v74 = v18;
    v19 = MEMORY[0x277CBEAC0];
    v20 = &v74;
    v21 = &v73;
    goto LABEL_24;
  }

  v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler", buf, 2u);
  }

LABEL_38:
}

- (void)fetchSOSReceiversWithCompletion:(id)completion
{
  completionCopy = completion;
  state = [(SMSessionManager *)self state];
  isActiveState = [state isActiveState];

  if (isActiveState)
  {
    state2 = [(SMSessionManager *)self state];
    configuration = [state2 configuration];
    sosReceivers = [configuration sosReceivers];
    receiverHandles = [sosReceivers receiverHandles];
  }

  else
  {
    receiverHandles = MEMORY[0x277CBEBF8];
  }

  completionCopy[2](completionCopy, receiverHandles, 0);
}

- (void)iMessageGroupMembershipChangedFor:(id)for
{
  v30 = *MEMORY[0x277D85DE8];
  forCopy = for;
  if (forCopy)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        state = [(SMSessionManager *)self state];
        configuration = [state configuration];
        conversation = [configuration conversation];
        identifier = [conversation identifier];
        state2 = [(SMSessionManager *)self state];
        *buf = 136315906;
        *&buf[4] = "[SMSessionManager iMessageGroupMembershipChangedFor:]";
        *&buf[12] = 2112;
        *&buf[14] = identifier;
        *&buf[22] = 2112;
        v28 = forCopy;
        LOWORD(v29) = 2048;
        *(&v29 + 2) = [state2 sessionState];
        _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "%s, current session groupID, %@, membership changed for groupID, %@, session state, %lu", buf, 0x2Au);
      }
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v28 = __Block_byref_object_copy__198;
    *&v29 = __Block_byref_object_dispose__198;
    *(&v29 + 1) = objc_alloc_init(MEMORY[0x277CBEB58]);
    if (-[SMSessionManager _canDeviceModifyState](self, "_canDeviceModifyState") && (-[SMSessionManager state](self, "state"), v11 = objc_claimAutoreleasedReturnValue(), [v11 configuration], v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "conversation"), v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "identifier"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "isEqualToString:", forCopy), v14, v13, v12, v11, v15))
    {
      v16 = dispatch_group_create();
      dispatch_group_enter(v16);
      queue = [(SMSessionManager *)self queue];
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __54__SMSessionManager_iMessageGroupMembershipChangedFor___block_invoke;
      v22[3] = &unk_2788CE7F8;
      v24 = buf;
      v18 = v16;
      v23 = v18;
      [SMMessagingUtilities queryChatWithGroupID:forCopy queue:queue handler:v22];

      queue2 = [(SMSessionManager *)self queue];
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __54__SMSessionManager_iMessageGroupMembershipChangedFor___block_invoke_477;
      v21[3] = &unk_2788C4FD8;
      v21[4] = self;
      v21[5] = buf;
      dispatch_group_notify(v18, queue2, v21);
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
LABEL_13:
        _Block_object_dispose(buf, 8);

        goto LABEL_17;
      }

      v18 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        *v25 = 136315138;
        v26 = "[SMSessionManager iMessageGroupMembershipChangedFor:]";
        _os_log_debug_impl(&dword_2304B3000, v18, OS_LOG_TYPE_DEBUG, "%s, membership change ignored", v25, 0xCu);
      }
    }

    goto LABEL_13;
  }

  v20 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2304B3000, v20, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: groupID", buf, 2u);
  }

LABEL_17:
}

void __54__SMSessionManager_iMessageGroupMembershipChangedFor___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v5 = [v3 handles];
        *buf = 136315394;
        v19 = "[SMSessionManager iMessageGroupMembershipChangedFor:]_block_invoke";
        v20 = 2112;
        v21 = v5;
        _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "%s, found chat with handles, %@", buf, 0x16u);
      }
    }

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = [v3 handles];
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        v10 = 0;
        do
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(*(a1 + 40) + 8) + 40);
          v12 = [*(*(&v13 + 1) + 8 * v10) address];
          [v11 addObject:v12];

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }
  }

  dispatch_group_leave(*(a1 + 32));
}

void __54__SMSessionManager_iMessageGroupMembershipChangedFor___block_invoke_477(uint64_t a1)
{
  v34 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) state];
  v3 = [v2 configuration];
  v4 = [v3 conversation];

  v5 = [*(a1 + 32) state];
  v6 = [v5 configuration];
  v24 = [v6 sosReceivers];

  v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(*(*(*(a1 + 40) + 8) + 40), "count")}];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v8 = *(*(*(a1 + 40) + 8) + 40);
  v9 = [v8 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v26;
    v12 = MEMORY[0x277CBEBF8];
    do
    {
      v13 = 0;
      do
      {
        if (*v26 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v14 = [objc_alloc(MEMORY[0x277D4AAE8]) initWithPrimaryHandle:*(*(&v25 + 1) + 8 * v13) secondaryHandles:v12];
        [v7 addObject:v14];

        ++v13;
      }

      while (v10 != v13);
      v10 = [v8 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v10);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = *(*(*(a1 + 40) + 8) + 40);
      *buf = 136315394;
      v30 = "[SMSessionManager iMessageGroupMembershipChangedFor:]_block_invoke";
      v31 = 2112;
      v32 = v16;
      _os_log_impl(&dword_2304B3000, v15, OS_LOG_TYPE_INFO, "%s, updating conversation with receivers, %@", buf, 0x16u);
    }
  }

  v17 = objc_alloc(MEMORY[0x277D4AA98]);
  v18 = [v7 copy];
  v19 = [v4 identifier];
  v20 = [v4 displayName];
  v21 = [v17 initWithReceiverHandles:v18 identifier:v19 displayName:v20];

  v22 = [SMMessagingUtilities conversationFromHandlesInConversation1:v21 canonicallyMappedToHandlesInConversation2:v4];

  v23 = [SMMessagingUtilities conversationFromHandlesInConversation1:v24 canonicallyIntersectedWithHandlesInConversation2:v22];
  [*(a1 + 32) _updateSessionWithConversation:v22 sosReceivers:v23 handler:&__block_literal_global_482];
}

void __54__SMSessionManager_iMessageGroupMembershipChangedFor___block_invoke_480(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (v2)
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 136315394;
      v5 = "[SMSessionManager iMessageGroupMembershipChangedFor:]_block_invoke";
      v6 = 2112;
      v7 = v2;
      _os_log_error_impl(&dword_2304B3000, v3, OS_LOG_TYPE_ERROR, "%s, conversation receiver update failed due to, %@", &v4, 0x16u);
    }
  }
}

- (void)kickedFromIMessageGroupWith:(id)with
{
  v27 = *MEMORY[0x277D85DE8];
  withCopy = with;
  if (!withCopy)
  {
    state4 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(state4, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v19) = 0;
      _os_log_error_impl(&dword_2304B3000, state4, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: groupID", &v19, 2u);
    }

    goto LABEL_14;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      state = [(SMSessionManager *)self state];
      configuration = [state configuration];
      conversation = [configuration conversation];
      identifier = [conversation identifier];
      state2 = [(SMSessionManager *)self state];
      v19 = 136315906;
      v20 = "[SMSessionManager kickedFromIMessageGroupWith:]";
      v21 = 2112;
      v22 = identifier;
      v23 = 2112;
      v24 = withCopy;
      v25 = 2048;
      sessionState = [state2 sessionState];
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "%s, current session groupID, %@, unjoined from groupID, %@, session state, %lu", &v19, 0x2Au);
    }
  }

  if ([(SMSessionManager *)self _canDeviceModifyState])
  {
    state3 = [(SMSessionManager *)self state];
    configuration2 = [state3 configuration];
    conversation2 = [configuration2 conversation];
    identifier2 = [conversation2 identifier];
    v15 = [identifier2 isEqualToString:withCopy];

    if (v15)
    {
      state4 = [(SMSessionManager *)self state];
      configuration3 = [state4 configuration];
      sessionID = [configuration3 sessionID];
      [(SMSessionManager *)self _endSessionForSessionID:sessionID reason:9 handler:&__block_literal_global_484];

LABEL_14:
      goto LABEL_15;
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    state4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(state4, OS_LOG_TYPE_DEBUG))
    {
      v19 = 136315138;
      v20 = "[SMSessionManager kickedFromIMessageGroupWith:]";
      _os_log_debug_impl(&dword_2304B3000, state4, OS_LOG_TYPE_DEBUG, "%s, initiator unjoin ignored", &v19, 0xCu);
    }

    goto LABEL_14;
  }

LABEL_15:
}

void __48__SMSessionManager_kickedFromIMessageGroupWith___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (v2)
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 136315394;
      v5 = "[SMSessionManager kickedFromIMessageGroupWith:]_block_invoke";
      v6 = 2112;
      v7 = v2;
      _os_log_error_impl(&dword_2304B3000, v3, OS_LOG_TYPE_ERROR, "%s, failed to end session on initiator unjoin due to error, %@", &v4, 0x16u);
    }
  }
}

- (void)iMessageGroupDisplayNameChangedFor:(id)for
{
  v30 = *MEMORY[0x277D85DE8];
  forCopy = for;
  if (forCopy)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        state = [(SMSessionManager *)self state];
        configuration = [state configuration];
        conversation = [configuration conversation];
        identifier = [conversation identifier];
        state2 = [(SMSessionManager *)self state];
        *buf = 136315906;
        *&buf[4] = "[SMSessionManager iMessageGroupDisplayNameChangedFor:]";
        *&buf[12] = 2112;
        *&buf[14] = identifier;
        *&buf[22] = 2112;
        v28 = forCopy;
        LOWORD(v29) = 2048;
        *(&v29 + 2) = [state2 sessionState];
        _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "%s, current session groupID, %@, displayName changed for groupID, %@, session state, %lu", buf, 0x2Au);
      }
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v28 = __Block_byref_object_copy__198;
    *&v29 = __Block_byref_object_dispose__198;
    *(&v29 + 1) = 0;
    if (-[SMSessionManager _canDeviceModifyState](self, "_canDeviceModifyState") && (-[SMSessionManager state](self, "state"), v11 = objc_claimAutoreleasedReturnValue(), [v11 configuration], v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "conversation"), v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "identifier"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "isEqualToString:", forCopy), v14, v13, v12, v11, v15))
    {
      v16 = dispatch_group_create();
      dispatch_group_enter(v16);
      queue = [(SMSessionManager *)self queue];
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __55__SMSessionManager_iMessageGroupDisplayNameChangedFor___block_invoke;
      v22[3] = &unk_2788CE7F8;
      v24 = buf;
      v18 = v16;
      v23 = v18;
      [SMMessagingUtilities queryChatWithGroupID:forCopy queue:queue handler:v22];

      queue2 = [(SMSessionManager *)self queue];
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __55__SMSessionManager_iMessageGroupDisplayNameChangedFor___block_invoke_485;
      v21[3] = &unk_2788C4FD8;
      v21[4] = self;
      v21[5] = buf;
      dispatch_group_notify(v18, queue2, v21);
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
LABEL_13:
        _Block_object_dispose(buf, 8);

        goto LABEL_17;
      }

      v18 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        *v25 = 136315138;
        v26 = "[SMSessionManager iMessageGroupDisplayNameChangedFor:]";
        _os_log_debug_impl(&dword_2304B3000, v18, OS_LOG_TYPE_DEBUG, "%s, displayName change ignored", v25, 0xCu);
      }
    }

    goto LABEL_13;
  }

  v20 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2304B3000, v20, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: groupID", buf, 2u);
  }

LABEL_17:
}

void __55__SMSessionManager_iMessageGroupDisplayNameChangedFor___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v5 = [v3 displayName];
        v9 = 136315394;
        v10 = "[SMSessionManager iMessageGroupDisplayNameChangedFor:]_block_invoke";
        v11 = 2112;
        v12 = v5;
        _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "%s, found chat with displayName, %@", &v9, 0x16u);
      }
    }

    v6 = [v3 displayName];
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  dispatch_group_leave(*(a1 + 32));
}

void __55__SMSessionManager_iMessageGroupDisplayNameChangedFor___block_invoke_485(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) state];
  v3 = [v2 configuration];
  v4 = [v3 conversation];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = *(*(*(a1 + 40) + 8) + 40);
      v15 = 136315394;
      v16 = "[SMSessionManager iMessageGroupDisplayNameChangedFor:]_block_invoke";
      v17 = 2112;
      v18 = v6;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "%s, updating state with new conversation displayName, %@", &v15, 0x16u);
    }
  }

  v7 = objc_alloc(MEMORY[0x277D4AA98]);
  v8 = [v4 receiverHandles];
  v9 = [v4 identifier];
  v10 = [v7 initWithReceiverHandles:v8 identifier:v9 displayName:*(*(*(a1 + 40) + 8) + 40)];

  v11 = *(a1 + 32);
  v12 = [v11 state];
  v13 = [v12 configuration];
  v14 = [v13 sosReceivers];
  [v11 _updateSessionWithConversation:v10 sosReceivers:v14 handler:&__block_literal_global_488];
}

void __55__SMSessionManager_iMessageGroupDisplayNameChangedFor___block_invoke_486(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (v2)
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 136315394;
      v5 = "[SMSessionManager iMessageGroupDisplayNameChangedFor:]_block_invoke";
      v6 = 2112;
      v7 = v2;
      _os_log_error_impl(&dword_2304B3000, v3, OS_LOG_TYPE_ERROR, "%s, conversation display name update failed due to, %@", &v4, 0x16u);
    }
  }
}

- (void)_updateSessionWithConversation:(id)conversation sosReceivers:(id)receivers handler:(id)handler
{
  handlerCopy = handler;
  receiversCopy = receivers;
  conversationCopy = conversation;
  state = [(SMSessionManager *)self state];
  configuration = [state configuration];

  state2 = [(SMSessionManager *)self state];
  v27 = [state2 mutableCopy];

  v26 = objc_alloc(MEMORY[0x277D4AB78]);
  sessionID = [configuration sessionID];
  sessionStartDate = [configuration sessionStartDate];
  sessionType = [configuration sessionType];
  time = [configuration time];
  destination = [configuration destination];
  userResponseSafeDate = [configuration userResponseSafeDate];
  sessionSupportsHandoff = [configuration sessionSupportsHandoff];
  sessionWorkoutIdentifier = [configuration sessionWorkoutIdentifier];
  sessionWorkoutType = [configuration sessionWorkoutType];
  sessionWorkoutMirrorType = [configuration sessionWorkoutMirrorType];
  LOBYTE(v25) = sessionSupportsHandoff;
  v21 = conversationCopy;
  v22 = conversationCopy;
  v23 = sessionID;
  v24 = [v26 initWithConversation:v22 sessionID:sessionID sessionStartDate:sessionStartDate sessionType:sessionType time:time destination:destination userResponseSafeDate:userResponseSafeDate sessionSupportsHandoff:v25 sosReceivers:receiversCopy sessionWorkoutIdentifier:sessionWorkoutIdentifier sessionWorkoutType:sessionWorkoutType sessionWorkoutMirrorType:sessionWorkoutMirrorType];

  [v27 setConfiguration:v24];
  [(SMSessionManager *)self _performStateTransitionTo:v27 transitionType:1 handler:handlerCopy];
}

- (void)promptDestinationAnomalyVerificationWithContext:(id)context handler:(id)handler
{
  v18 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  handlerCopy = handler;
  if (handlerCopy)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v17 = "[SMSessionManager promptDestinationAnomalyVerificationWithContext:handler:]";
        _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "%s, Received prompt request for destination anomaly prompt with handler", buf, 0xCu);
      }
    }

    queue = [(SMSessionManager *)self queue];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __76__SMSessionManager_promptDestinationAnomalyVerificationWithContext_handler___block_invoke;
    v12[3] = &unk_2788C4C20;
    v12[4] = self;
    v15 = a2;
    v13 = contextCopy;
    v14 = handlerCopy;
    dispatch_async(queue, v12);
  }

  else
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler", buf, 2u);
    }
  }
}

void __76__SMSessionManager_promptDestinationAnomalyVerificationWithContext_handler___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB98] setWithObjects:{&unk_2845A0848, 0}];
  v3 = *(a1 + 56);
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) sessionID];
  v6 = [v4 checkSessionIDCanDeviceModifyStateAndSessionStateWithSelector:v3 sessionID:v5 validSessionStates:v2];

  if (v6)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v7 = [*(*(a1 + 32) + 8) configuration];
    v8 = [v7 sessionType];

    if (v8 == 2)
    {
      v9 = [*(*(a1 + 32) + 8) mutableCopy];
      [v9 setSessionState:7];
      [v9 setMonitorContext:*(a1 + 40)];
      [*(a1 + 32) _performStateTransitionTo:v9 transitionType:1 handler:*(a1 + 48)];
    }

    else
    {
      v10 = MEMORY[0x277CCACA8];
      v11 = MEMORY[0x277D4AB78];
      v12 = [*(*(a1 + 32) + 8) configuration];
      v13 = [v11 sessionTypeToString:{objc_msgSend(v12, "sessionType")}];
      v9 = [v10 stringWithFormat:@"%s cannot run for sessionType %@", "-[SMSessionManager promptDestinationAnomalyVerificationWithContext:handler:]_block_invoke", v13];

      v14 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v19 = *(*(a1 + 32) + 8);
        *buf = 138412547;
        v23 = v9;
        v24 = 2117;
        v25 = v19;
        _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, "%@, current state, %{sensitive}@", buf, 0x16u);
      }

      v15 = MEMORY[0x277CCA9B8];
      v16 = *MEMORY[0x277D4ACD0];
      v20 = *MEMORY[0x277CCA450];
      v21 = v9;
      v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
      v18 = [v15 errorWithDomain:v16 code:16 userInfo:v17];

      (*(*(a1 + 48) + 16))();
    }
  }
}

- (void)promptRoundTripAnomalyVerificationWithContext:(id)context handler:(id)handler
{
  v18 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  handlerCopy = handler;
  if (handlerCopy)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v17 = "[SMSessionManager promptRoundTripAnomalyVerificationWithContext:handler:]";
        _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "%s, Received prompt request for destination anomaly prompt with handler", buf, 0xCu);
      }
    }

    queue = [(SMSessionManager *)self queue];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __74__SMSessionManager_promptRoundTripAnomalyVerificationWithContext_handler___block_invoke;
    v12[3] = &unk_2788C4C20;
    v12[4] = self;
    v15 = a2;
    v13 = contextCopy;
    v14 = handlerCopy;
    dispatch_async(queue, v12);
  }

  else
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler", buf, 2u);
    }
  }
}

void __74__SMSessionManager_promptRoundTripAnomalyVerificationWithContext_handler___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB98] setWithObjects:{&unk_2845A0848, 0}];
  v3 = *(a1 + 56);
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) sessionID];
  v6 = [v4 checkSessionIDCanDeviceModifyStateAndSessionStateWithSelector:v3 sessionID:v5 validSessionStates:v2];

  if (v6)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v7 = [*(*(a1 + 32) + 8) configuration];
    v8 = [v7 sessionType];

    if (v8 == 3)
    {
      v9 = [*(*(a1 + 32) + 8) mutableCopy];
      [v9 setSessionState:8];
      [v9 setMonitorContext:*(a1 + 40)];
      [*(a1 + 32) _performStateTransitionTo:v9 transitionType:1 handler:*(a1 + 48)];
    }

    else
    {
      v10 = MEMORY[0x277CCACA8];
      v11 = MEMORY[0x277D4AB78];
      v12 = [*(*(a1 + 32) + 8) configuration];
      v13 = [v11 sessionTypeToString:{objc_msgSend(v12, "sessionType")}];
      v9 = [v10 stringWithFormat:@"%s cannot run for sessionType %@", "-[SMSessionManager promptRoundTripAnomalyVerificationWithContext:handler:]_block_invoke", v13];

      v14 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v19 = *(*(a1 + 32) + 8);
        *buf = 138412547;
        v23 = v9;
        v24 = 2117;
        v25 = v19;
        _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, "%@, current state, %{sensitive}@", buf, 0x16u);
      }

      v15 = MEMORY[0x277CCA9B8];
      v16 = *MEMORY[0x277D4ACD0];
      v20 = *MEMORY[0x277CCA450];
      v21 = v9;
      v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
      v18 = [v15 errorWithDomain:v16 code:16 userInfo:v17];

      (*(*(a1 + 48) + 16))();
    }
  }
}

- (void)promptTimerEndedVerificationWithContext:(id)context handler:(id)handler
{
  v18 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  handlerCopy = handler;
  if (handlerCopy)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v17 = "[SMSessionManager promptTimerEndedVerificationWithContext:handler:]";
        _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "%s, Received prompt request for timer ended prompt with handler", buf, 0xCu);
      }
    }

    queue = [(SMSessionManager *)self queue];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __68__SMSessionManager_promptTimerEndedVerificationWithContext_handler___block_invoke;
    v12[3] = &unk_2788C4C20;
    v12[4] = self;
    v15 = a2;
    v13 = contextCopy;
    v14 = handlerCopy;
    dispatch_async(queue, v12);
  }

  else
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler", buf, 2u);
    }
  }
}

void __68__SMSessionManager_promptTimerEndedVerificationWithContext_handler___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB98] setWithObjects:{&unk_2845A0848, 0}];
  v3 = *(a1 + 56);
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) sessionID];
  v6 = [v4 checkSessionIDCanDeviceModifyStateAndSessionStateWithSelector:v3 sessionID:v5 validSessionStates:v2];

  if (v6)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v7 = [*(*(a1 + 32) + 8) configuration];
    v8 = [v7 sessionType];

    if (v8 == 1)
    {
      v9 = [*(*(a1 + 32) + 8) mutableCopy];
      [v9 setSessionState:9];
      [v9 setMonitorContext:*(a1 + 40)];
      [*(a1 + 32) _performStateTransitionTo:v9 transitionType:1 handler:*(a1 + 48)];
    }

    else
    {
      v10 = MEMORY[0x277CCACA8];
      v11 = MEMORY[0x277D4AB78];
      v12 = [*(*(a1 + 32) + 8) configuration];
      v13 = [v11 sessionTypeToString:{objc_msgSend(v12, "sessionType")}];
      v9 = [v10 stringWithFormat:@"%s cannot run for sessionType %@", "-[SMSessionManager promptTimerEndedVerificationWithContext:handler:]_block_invoke", v13];

      v14 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v19 = *(*(a1 + 32) + 8);
        *buf = 138412547;
        v23 = v9;
        v24 = 2117;
        v25 = v19;
        _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, "%@, current state, %{sensitive}@", buf, 0x16u);
      }

      v15 = MEMORY[0x277CCA9B8];
      v16 = *MEMORY[0x277D4ACD0];
      v20 = *MEMORY[0x277CCA450];
      v21 = v9;
      v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
      v18 = [v15 errorWithDomain:v16 code:16 userInfo:v17];

      (*(*(a1 + 48) + 16))();
    }
  }
}

- (void)promptWorkoutAnomalyVerificationWithContext:(id)context handler:(id)handler
{
  v20 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  handlerCopy = handler;
  if (handlerCopy)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v17 = "[SMSessionManager promptWorkoutAnomalyVerificationWithContext:handler:]";
        v18 = 2112;
        v19 = contextCopy;
        _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "%s, Received prompt request for workout anoamly with handler, context, %@", buf, 0x16u);
      }
    }

    queue = [(SMSessionManager *)self queue];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __72__SMSessionManager_promptWorkoutAnomalyVerificationWithContext_handler___block_invoke;
    v12[3] = &unk_2788C4C20;
    v12[4] = self;
    v15 = a2;
    v13 = contextCopy;
    v14 = handlerCopy;
    dispatch_async(queue, v12);
  }

  else
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler", buf, 2u);
    }
  }
}

void __72__SMSessionManager_promptWorkoutAnomalyVerificationWithContext_handler___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB98] setWithObjects:{&unk_2845A0848, 0}];
  v3 = *(a1 + 56);
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) sessionID];
  v6 = [v4 checkSessionIDCanDeviceModifyStateAndSessionStateWithSelector:v3 sessionID:v5 validSessionStates:v2];

  if (v6)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v7 = [*(*(a1 + 32) + 8) configuration];
    v8 = [v7 sessionType];

    if (v8 == 4)
    {
      v9 = [*(*(a1 + 32) + 8) mutableCopy];
      [v9 setSessionState:14];
      [v9 setMonitorContext:*(a1 + 40)];
      [*(a1 + 32) _performStateTransitionTo:v9 transitionType:1 handler:*(a1 + 48)];
    }

    else
    {
      v10 = MEMORY[0x277CCACA8];
      v11 = MEMORY[0x277D4AB78];
      v12 = [*(*(a1 + 32) + 8) configuration];
      v13 = [v11 sessionTypeToString:{objc_msgSend(v12, "sessionType")}];
      v9 = [v10 stringWithFormat:@"%s cannot run for sessionType %@", "-[SMSessionManager promptWorkoutAnomalyVerificationWithContext:handler:]_block_invoke", v13];

      v14 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v19 = *(*(a1 + 32) + 8);
        *buf = 138412547;
        v23 = v9;
        v24 = 2117;
        v25 = v19;
        _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, "%@, current state, %{sensitive}@", buf, 0x16u);
      }

      v15 = MEMORY[0x277CCA9B8];
      v16 = *MEMORY[0x277D4ACD0];
      v20 = *MEMORY[0x277CCA450];
      v21 = v9;
      v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
      v18 = [v15 errorWithDomain:v16 code:16 userInfo:v17];

      (*(*(a1 + 48) + 16))();
    }
  }
}

- (void)promptWorkoutSessionEndVerificationWithContext:(id)context handlers:(id)handlers
{
  v20 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  handlersCopy = handlers;
  if (handlersCopy)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v17 = "[SMSessionManager promptWorkoutSessionEndVerificationWithContext:handlers:]";
        v18 = 2112;
        v19 = contextCopy;
        _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "%s, Received prompt request for watch anoamly with handler, context, %@", buf, 0x16u);
      }
    }

    queue = [(SMSessionManager *)self queue];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __76__SMSessionManager_promptWorkoutSessionEndVerificationWithContext_handlers___block_invoke;
    v12[3] = &unk_2788C4C20;
    v12[4] = self;
    v15 = a2;
    v13 = contextCopy;
    v14 = handlersCopy;
    dispatch_async(queue, v12);
  }

  else
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler", buf, 2u);
    }
  }
}

void __76__SMSessionManager_promptWorkoutSessionEndVerificationWithContext_handlers___block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB98] setWithObjects:{&unk_2845A0848, &unk_2845A08C0, 0}];
  v3 = *(a1 + 56);
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) sessionID];
  v6 = [v4 checkSessionIDCanDeviceModifyStateAndSessionStateWithSelector:v3 sessionID:v5 validSessionStates:v2];

  if (v6)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v7 = [*(*(a1 + 32) + 8) configuration];
    v8 = [v7 sessionType];

    if (v8 == 4)
    {
      v9 = *(a1 + 32);
      v10 = [v9[1] configuration];
      v11 = [v10 sessionID];
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __76__SMSessionManager_promptWorkoutSessionEndVerificationWithContext_handlers___block_invoke_492;
      v23[3] = &unk_2788C48C0;
      v24 = *(a1 + 48);
      [v9 _endSessionForSessionID:v11 reason:8 handler:v23];
    }

    else
    {
      v12 = MEMORY[0x277CCACA8];
      v13 = MEMORY[0x277D4AB78];
      v14 = [*(*(a1 + 32) + 8) configuration];
      v15 = [v13 sessionTypeToString:{objc_msgSend(v14, "sessionType")}];
      v16 = [v12 stringWithFormat:@"%s cannot run for sessionType %@", "-[SMSessionManager promptWorkoutSessionEndVerificationWithContext:handlers:]_block_invoke", v15];

      v17 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v22 = *(*(a1 + 32) + 8);
        *buf = 138412547;
        v28 = v16;
        v29 = 2117;
        v30 = v22;
        _os_log_error_impl(&dword_2304B3000, v17, OS_LOG_TYPE_ERROR, "%@, current state, %{sensitive}@", buf, 0x16u);
      }

      v18 = MEMORY[0x277CCA9B8];
      v19 = *MEMORY[0x277D4ACD0];
      v25 = *MEMORY[0x277CCA450];
      v26 = v16;
      v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
      v21 = [v18 errorWithDomain:v19 code:16 userInfo:v20];

      (*(*(a1 + 48) + 16))();
    }
  }
}

void __76__SMSessionManager_promptWorkoutSessionEndVerificationWithContext_handlers___block_invoke_492(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = 136446466;
      v6 = "[SMSessionManager promptWorkoutSessionEndVerificationWithContext:handlers:]_block_invoke";
      v7 = 2112;
      v8 = v3;
      _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "%{public}s, end session result, %@", &v5, 0x16u);
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)promptSafeArrivalWithContext:(id)context handler:(id)handler
{
  v20 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  handlerCopy = handler;
  if (handlerCopy)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v17 = "[SMSessionManager promptSafeArrivalWithContext:handler:]";
        v18 = 2112;
        v19 = contextCopy;
        _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "%s, Received prompt request for safe arrival with handler, context, %@", buf, 0x16u);
      }
    }

    queue = [(SMSessionManager *)self queue];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __57__SMSessionManager_promptSafeArrivalWithContext_handler___block_invoke;
    v12[3] = &unk_2788C4C20;
    v12[4] = self;
    v15 = a2;
    v13 = contextCopy;
    v14 = handlerCopy;
    dispatch_async(queue, v12);
  }

  else
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler", buf, 2u);
    }
  }
}

void __57__SMSessionManager_promptSafeArrivalWithContext_handler___block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB98] setWithObjects:{&unk_2845A0848, &unk_2845A0860, &unk_2845A0878, &unk_2845A0890, 0}];
  v3 = *(a1 + 56);
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) sessionID];
  v6 = [v4 checkSessionIDCanDeviceModifyStateAndSessionStateWithSelector:v3 sessionID:v5 validSessionStates:v2];

  if (v6)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v7 = [*(*(a1 + 32) + 8) configuration];
    v8 = [v7 sessionType];

    if (v8 == 2)
    {
      v9 = *(a1 + 32);
      v10 = [v9[1] configuration];
      v11 = [v10 sessionID];
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __57__SMSessionManager_promptSafeArrivalWithContext_handler___block_invoke_493;
      v23[3] = &unk_2788C48C0;
      v24 = *(a1 + 48);
      [v9 _endSessionForSessionID:v11 reason:1 handler:v23];
    }

    else
    {
      v12 = MEMORY[0x277CCACA8];
      v13 = MEMORY[0x277D4AB78];
      v14 = [*(*(a1 + 32) + 8) configuration];
      v15 = [v13 sessionTypeToString:{objc_msgSend(v14, "sessionType")}];
      v16 = [v12 stringWithFormat:@"%s cannot run for sessionType %@", "-[SMSessionManager promptSafeArrivalWithContext:handler:]_block_invoke", v15];

      v17 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v22 = *(*(a1 + 32) + 8);
        *buf = 138412547;
        v28 = v16;
        v29 = 2117;
        v30 = v22;
        _os_log_error_impl(&dword_2304B3000, v17, OS_LOG_TYPE_ERROR, "%@, current state, %{sensitive}@", buf, 0x16u);
      }

      v18 = MEMORY[0x277CCA9B8];
      v19 = *MEMORY[0x277D4ACD0];
      v25 = *MEMORY[0x277CCA450];
      v26 = v16;
      v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
      v21 = [v18 errorWithDomain:v19 code:16 userInfo:v20];

      (*(*(a1 + 48) + 16))();
    }
  }
}

void __57__SMSessionManager_promptSafeArrivalWithContext_handler___block_invoke_493(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = 136446466;
      v6 = "[SMSessionManager promptSafeArrivalWithContext:handler:]_block_invoke";
      v7 = 2112;
      v8 = v3;
      _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "%{public}s, end session result, %@", &v5, 0x16u);
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)onSessionStartMessageSendResultWithMessage:(id)message messageGUID:(id)d success:(BOOL)success error:(id)error
{
  messageCopy = message;
  dCopy = d;
  errorCopy = error;
  if (!messageCopy)
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
LABEL_7:

      goto LABEL_8;
    }

    *buf = 0;
    v16 = "Invalid parameter not satisfying: message";
LABEL_10:
    _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, v16, buf, 2u);
    goto LABEL_7;
  }

  if (!dCopy)
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    *buf = 0;
    v16 = "Invalid parameter not satisfying: messageGUID";
    goto LABEL_10;
  }

  queue = [(SMSessionManager *)self queue];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __89__SMSessionManager_onSessionStartMessageSendResultWithMessage_messageGUID_success_error___block_invoke;
  v17[3] = &unk_2788CCA70;
  v17[4] = self;
  v21 = a2;
  v18 = messageCopy;
  v19 = dCopy;
  successCopy = success;
  v20 = errorCopy;
  dispatch_async(queue, v17);

LABEL_8:
}

void __89__SMSessionManager_onSessionStartMessageSendResultWithMessage_messageGUID_success_error___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 64);
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) sessionID];
  v5 = [v3 checkSessionIDAndCanDeviceModifyStateWithSelector:v2 sessionID:v4];

  if (!v5)
  {
    v6 = [*(*(a1 + 32) + 8) startMessageGUID];
    if (v6)
    {
      v7 = v6;
      v8 = *(a1 + 48);
      v9 = [*(*(a1 + 32) + 8) startMessageGUID];
      LOBYTE(v8) = [v8 isEqual:v9];

      if ((v8 & 1) == 0)
      {
        v14 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
        {
          v17 = 136315138;
          v18 = "[SMSessionManager onSessionStartMessageSendResultWithMessage:messageGUID:success:error:]_block_invoke";
          _os_log_fault_impl(&dword_2304B3000, v14, OS_LOG_TYPE_FAULT, "%s, Received a second start message GUID for the same session", &v17, 0xCu);
        }

        goto LABEL_14;
      }
    }

    if (*(a1 + 72))
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
LABEL_11:
        v14 = [*(*(a1 + 32) + 8) mutableCopy];
        [v14 setStartMessageGUID:*(a1 + 48)];
        [*(a1 + 32) _performStateTransitionTo:v14 transitionType:1 handler:&__block_literal_global_496];
LABEL_14:

        goto LABEL_15;
      }

      v10 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
LABEL_10:

        goto LABEL_11;
      }

      v11 = *(a1 + 48);
      v12 = [*(*(a1 + 32) + 8) configuration];
      v13 = [v12 sessionID];
      v17 = 136315650;
      v18 = "[SMSessionManager onSessionStartMessageSendResultWithMessage:messageGUID:success:error:]_block_invoke";
      v19 = 2112;
      v20 = v11;
      v21 = 2112;
      v22 = v13;
      _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_INFO, "%s, Start message %@ successfully sent for session %@", &v17, 0x20u);
    }

    else
    {
      v10 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_10;
      }

      v15 = *(a1 + 48);
      v12 = [*(*(a1 + 32) + 8) configuration];
      v13 = [v12 sessionID];
      v16 = *(a1 + 56);
      v17 = 136315906;
      v18 = "[SMSessionManager onSessionStartMessageSendResultWithMessage:messageGUID:success:error:]_block_invoke";
      v19 = 2112;
      v20 = v15;
      v21 = 2112;
      v22 = v13;
      v23 = 2112;
      v24 = v16;
      _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "%s, Start message %@ failed to send for session %@ with error %@", &v17, 0x2Au);
    }

    goto LABEL_10;
  }

LABEL_15:
}

void __89__SMSessionManager_onSessionStartMessageSendResultWithMessage_messageGUID_success_error___block_invoke_494(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = 136315394;
      v5 = "[SMSessionManager onSessionStartMessageSendResultWithMessage:messageGUID:success:error:]_block_invoke";
      v6 = 2112;
      v7 = v2;
      _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_INFO, "%s, completed state update with error, %@", &v4, 0x16u);
    }
  }
}

- (void)onScheduledSendMessageScheduledForSessionID:(id)d guid:(id)guid date:(id)date
{
  dCopy = d;
  guidCopy = guid;
  dateCopy = date;
  v12 = dateCopy;
  if (!dCopy)
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    *buf = 0;
    v15 = "Invalid parameter not satisfying: sessionID";
LABEL_11:
    _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, v15, buf, 2u);
    goto LABEL_12;
  }

  if (!guidCopy)
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    *buf = 0;
    v15 = "Invalid parameter not satisfying: guid";
    goto LABEL_11;
  }

  if (!dateCopy)
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v15 = "Invalid parameter not satisfying: date";
      goto LABEL_11;
    }

LABEL_12:

    goto LABEL_13;
  }

  queue = [(SMSessionManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__SMSessionManager_onScheduledSendMessageScheduledForSessionID_guid_date___block_invoke;
  block[3] = &unk_2788C50E8;
  block[4] = self;
  v20 = a2;
  v17 = dCopy;
  v18 = guidCopy;
  v19 = v12;
  dispatch_async(queue, block);

LABEL_13:
}

void __74__SMSessionManager_onScheduledSendMessageScheduledForSessionID_guid_date___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB98] setWithObjects:{&unk_2845A0848, &unk_2845A0860, &unk_2845A0878, &unk_2845A0890, &unk_2845A08C0, 0}];
  v3 = [*(a1 + 32) checkSessionIDCanDeviceModifyStateAndSessionStateWithSelector:*(a1 + 64) sessionID:*(a1 + 40) validSessionStates:v2];
  if (!v3)
  {
    v4 = [*(*(a1 + 32) + 8) scheduledSendMessageGUID];
    if (v4)
    {
      v5 = v4;
      v6 = *(a1 + 48);
      v7 = [*(*(a1 + 32) + 8) scheduledSendMessageGUID];
      LOBYTE(v6) = [v6 isEqualToString:v7];

      if ((v6 & 1) == 0)
      {
        v8 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          v11 = [*(*(a1 + 32) + 8) scheduledSendMessageGUID];
          v12 = *(a1 + 48);
          *buf = 136315650;
          v14 = "[SMSessionManager onScheduledSendMessageScheduledForSessionID:guid:date:]_block_invoke";
          v15 = 2112;
          v16 = v11;
          v17 = 2112;
          v18 = v12;
          _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "%s, mismatch of Scheduled Send GUID, old GUID, %@, new GUID, %@", buf, 0x20u);
        }

        v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
        {
          *buf = 136315138;
          v14 = "[SMSessionManager onScheduledSendMessageScheduledForSessionID:guid:date:]_block_invoke";
          _os_log_fault_impl(&dword_2304B3000, v9, OS_LOG_TYPE_FAULT, "%s, mismatch of Scheduled Send GUID", buf, 0xCu);
        }
      }
    }

    v10 = [*(*(a1 + 32) + 8) mutableCopy];
    [v10 setScheduledSendMessageGUID:*(a1 + 48)];
    [v10 setScheduledSendMessageDate:*(a1 + 56)];
    [*(a1 + 32) _performStateTransitionTo:v10 transitionType:1 handler:&__block_literal_global_499];
  }
}

void __74__SMSessionManager_onScheduledSendMessageScheduledForSessionID_guid_date___block_invoke_497(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = 136315394;
      v5 = "[SMSessionManager onScheduledSendMessageScheduledForSessionID:guid:date:]_block_invoke";
      v6 = 2112;
      v7 = v2;
      _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_INFO, "%s, completed state update with error, %@", &v4, 0x16u);
    }
  }
}

- (void)onScheduledSendMessageCanceledForSessionID:(id)d guid:(id)guid
{
  dCopy = d;
  guidCopy = guid;
  v9 = guidCopy;
  if (!dCopy)
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
LABEL_7:

      goto LABEL_8;
    }

    *buf = 0;
    v12 = "Invalid parameter not satisfying: sessionID";
LABEL_10:
    _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, v12, buf, 2u);
    goto LABEL_7;
  }

  if (!guidCopy)
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    *buf = 0;
    v12 = "Invalid parameter not satisfying: guid";
    goto LABEL_10;
  }

  queue = [(SMSessionManager *)self queue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __68__SMSessionManager_onScheduledSendMessageCanceledForSessionID_guid___block_invoke;
  v13[3] = &unk_2788C4C70;
  v13[4] = self;
  v16 = a2;
  v14 = dCopy;
  v15 = v9;
  dispatch_async(queue, v13);

LABEL_8:
}

void __68__SMSessionManager_onScheduledSendMessageCanceledForSessionID_guid___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) checkSessionIDAndCanDeviceModifyStateWithSelector:*(a1 + 56) sessionID:*(a1 + 40)];
  if (!v2)
  {
    v3 = [*(*(a1 + 32) + 8) scheduledSendMessageGUID];
    if (v3 && (v4 = v3, v5 = *(a1 + 48), [*(*(a1 + 32) + 8) scheduledSendMessageGUID], v6 = objc_claimAutoreleasedReturnValue(), LOBYTE(v5) = objc_msgSend(v5, "isEqualToString:", v6), v6, v4, (v5 & 1) == 0))
    {
      v8 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v10 = [*(*(a1 + 32) + 8) scheduledSendMessageGUID];
        v11 = *(a1 + 48);
        v12 = 136315650;
        v13 = "[SMSessionManager onScheduledSendMessageCanceledForSessionID:guid:]_block_invoke";
        v14 = 2112;
        v15 = v10;
        v16 = 2112;
        v17 = v11;
        _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "%s, mismatch of Scheduled Send GUID, old GUID, %@, new GUID, %@", &v12, 0x20u);
      }

      v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        v12 = 136315138;
        v13 = "[SMSessionManager onScheduledSendMessageCanceledForSessionID:guid:]_block_invoke";
        _os_log_fault_impl(&dword_2304B3000, v9, OS_LOG_TYPE_FAULT, "%s, mismatch of Scheduled Send GUID", &v12, 0xCu);
      }
    }

    else
    {
      v7 = [*(*(a1 + 32) + 8) mutableCopy];
      [v7 setScheduledSendMessageDate:0];
      [*(a1 + 32) _performStateTransitionTo:v7 transitionType:1 handler:&__block_literal_global_502];
    }
  }
}

void __68__SMSessionManager_onScheduledSendMessageCanceledForSessionID_guid___block_invoke_500(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = 136315394;
      v5 = "[SMSessionManager onScheduledSendMessageCanceledForSessionID:guid:]_block_invoke";
      v6 = 2112;
      v7 = v2;
      _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_INFO, "%s, completed state update with error, %@", &v4, 0x16u);
    }
  }
}

- (void)onScheduledSendForSessionID:(id)d
{
  dCopy = d;
  queue = [(SMSessionManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__SMSessionManager_onScheduledSendForSessionID___block_invoke;
  block[3] = &unk_2788C5020;
  block[4] = self;
  v9 = dCopy;
  v10 = a2;
  v7 = dCopy;
  dispatch_async(queue, block);
}

void __48__SMSessionManager_onScheduledSendForSessionID___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __48__SMSessionManager_onScheduledSendForSessionID___block_invoke_2;
  v2[3] = &unk_2788C4D10;
  v3 = *(a1 + 40);
  [v1 _onScheduledSendForSessionID:v3 handler:v2];
}

void __48__SMSessionManager_onScheduledSendForSessionID___block_invoke_2(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = NSStringFromSelector(*(a1 + 40));
      v6 = *(a1 + 32);
      v7 = 138412802;
      v8 = v5;
      v9 = 2112;
      v10 = v6;
      v11 = 2112;
      v12 = v3;
      _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "SMSessionManager,%@,sessionID:%@,returned with error,%@", &v7, 0x20u);
    }
  }
}

- (void)_onScheduledSendForSessionID:(id)d handler:(id)handler
{
  v20 = *MEMORY[0x277D85DE8];
  dCopy = d;
  handlerCopy = handler;
  if (dCopy)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v17 = "[SMSessionManager _onScheduledSendForSessionID:handler:]";
        v18 = 2112;
        v19 = dCopy;
        _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "%s, Received scheduled send event for sessionID:%@", buf, 0x16u);
      }
    }

    v10 = [MEMORY[0x277CBEB98] setWithObjects:{&unk_2845A0848, &unk_2845A0860, &unk_2845A0878, &unk_2845A0890, &unk_2845A08C0, &unk_2845A08A8, 0}];
    v11 = [(SMSessionManager *)self checkSessionIDCanDeviceModifyStateAndSessionStateWithSelector:a2 sessionID:dCopy validSessionStates:v10];
    if (v11)
    {
      handlerCopy[2](handlerCopy, v11);
    }

    else
    {
      v12 = [(SMSessionManagerState *)self->_state mutableCopy];
      [v12 setSessionState:4];
      v13 = [objc_alloc(MEMORY[0x277D4ABC8]) initWithUpdateReason:1 triggerCategory:15 sessionID:dCopy];
      [v12 setMonitorContext:v13];

      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __57__SMSessionManager__onScheduledSendForSessionID_handler___block_invoke;
      v14[3] = &unk_2788C48C0;
      v15 = handlerCopy;
      [(SMSessionManager *)self _performStateTransitionTo:v12 transitionType:1 handler:v14];
    }
  }

  else
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: sessionID", buf, 2u);
    }
  }
}

void __57__SMSessionManager__onScheduledSendForSessionID_handler___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 136315394;
      v6 = "[SMSessionManager _onScheduledSendForSessionID:handler:]_block_invoke";
      v7 = 2112;
      v8 = v3;
      _os_log_error_impl(&dword_2304B3000, v4, OS_LOG_TYPE_ERROR, " %s, unable to transition to SMSessionStateCacheReleasedAndUpdating due to, %@", &v5, 0x16u);
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)promptDirectTriggerWithContext:(id)context
{
  v14 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v13 = "[SMSessionManager promptDirectTriggerWithContext:]";
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%s, Received prompt request for direct trigger", buf, 0xCu);
    }
  }

  queue = [(SMSessionManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__SMSessionManager_promptDirectTriggerWithContext___block_invoke;
  block[3] = &unk_2788C5020;
  block[4] = self;
  v10 = contextCopy;
  v11 = a2;
  v8 = contextCopy;
  dispatch_async(queue, block);
}

void __51__SMSessionManager_promptDirectTriggerWithContext___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) _isActiveDevice] && (objc_msgSend(*(*(a1 + 32) + 8), "isActiveState") & 1) != 0)
  {
    v2 = [MEMORY[0x277CBEB98] setWithObjects:{&unk_2845A0848, &unk_2845A0860, &unk_2845A0878, &unk_2845A0890, &unk_2845A08C0, &unk_2845A08A8, 0}];
    v3 = *(a1 + 48);
    v4 = *(a1 + 32);
    v5 = [*(a1 + 40) sessionID];
    v6 = [v4 checkSessionIDCanDeviceModifyStateAndSessionStateWithSelector:v3 sessionID:v5 validSessionStates:v2];

    if (v6)
    {
      v7 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v26 = "[SMSessionManager promptDirectTriggerWithContext:]_block_invoke";
        v27 = 2112;
        v28 = v6;
        _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "%s, %@", buf, 0x16u);
      }
    }

    else
    {
      v7 = [*(*(a1 + 32) + 8) mutableCopy];
      [v7 setSessionState:4];
      [v7 setMonitorContext:*(a1 + 40)];
      if ([*(*(a1 + 32) + 8) sessionState] == 4)
      {
        v16 = MEMORY[0x277D4ABC8];
        v17 = [v7 monitorContext];
        v18 = [v16 isSOSTriggerCategory:{objc_msgSend(v17, "triggerCategory")}];
      }

      else
      {
        v18 = 0;
      }

      v19 = *(a1 + 32);
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __51__SMSessionManager_promptDirectTriggerWithContext___block_invoke_507;
      v20[3] = &unk_2788D3350;
      v21 = v18;
      v20[4] = v19;
      [v19 _performStateTransitionTo:v7 transitionType:1 handler:v20];
      v6 = 0;
    }
  }

  else
  {
    v8 = [*(a1 + 32) state];
    v9 = [v8 configuration];
    v10 = [v9 sessionID];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"00000000-0000-0000-0000-000000000000"];
    }

    v2 = v12;

    v6 = [objc_alloc(MEMORY[0x277D4AAD0]) initWithSessionID:v2 triggerCategory:{objc_msgSend(*(a1 + 40), "triggerCategory")}];
    v13 = [*(a1 + 32) messagingService];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __51__SMSessionManager_promptDirectTriggerWithContext___block_invoke_2;
    v22[3] = &unk_2788D3328;
    v14 = *(a1 + 40);
    v15 = *(a1 + 32);
    v23 = v14;
    v24 = v15;
    [v13 sendIDSMessageToMyNearbyDevices:v6 completion:v22];

    v7 = v23;
  }
}

void __51__SMSessionManager_promptDirectTriggerWithContext___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      if (a2)
      {
        v7 = @"succeeded";
      }

      else
      {
        v7 = @"failed";
      }

      v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "triggerCategory")}];
      v9 = [*(a1 + 40) state];
      v10 = [v9 configuration];
      v11 = [v10 sessionID];
      v12 = 136316162;
      v13 = "[SMSessionManager promptDirectTriggerWithContext:]_block_invoke_2";
      v14 = 2112;
      v15 = v7;
      v16 = 2112;
      v17 = v8;
      v18 = 2112;
      v19 = v11;
      v20 = 2112;
      v21 = v5;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%s, send, %@, triggerCategory, %@, sessionID, %@, error, %@", &v12, 0x34u);
    }
  }
}

void __51__SMSessionManager_promptDirectTriggerWithContext___block_invoke_507(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 136315138;
      v6 = "[SMSessionManager promptDirectTriggerWithContext:]_block_invoke";
      _os_log_error_impl(&dword_2304B3000, v4, OS_LOG_TYPE_ERROR, "%s, unable to complete state transition for secondary SOS trigger", &v5, 0xCu);
    }
  }

  else if (*(a1 + 40) == 1)
  {
    [*(a1 + 32) _notifyObserversForSecondarySOSTrigger];
  }
}

- (void)updateUserWithContext:(id)context
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = 136315138;
      v5 = "[SMSessionManager updateUserWithContext:]";
      _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_INFO, "%s, Received prompt for safety session update", &v4, 0xCu);
    }
  }
}

- (void)updateUserWithTriggerContext:(id)context
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = 136315138;
      v5 = "[SMSessionManager updateUserWithTriggerContext:]";
      _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_INFO, "%s, Received update with trigger context", &v4, 0xCu);
    }
  }
}

- (void)promptSafeArrivalWithContext:(id)context
{
  v10 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = 136315394;
      v7 = "[SMSessionManager promptSafeArrivalWithContext:]";
      v8 = 2112;
      v9 = contextCopy;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "%s, Received safe arrival, context, %@", &v6, 0x16u);
    }
  }

  [(SMSessionManager *)self promptSafeArrivalWithContext:contextCopy handler:&__block_literal_global_509];
}

void __49__SMSessionManager_promptSafeArrivalWithContext___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = 136315394;
      v5 = "[SMSessionManager promptSafeArrivalWithContext:]_block_invoke";
      v6 = 2112;
      v7 = v2;
      _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_INFO, "%s, completed, error, %@", &v4, 0x16u);
    }
  }
}

- (void)promptEstimatedEndDateUpdateWithContext:(id)context
{
  v16 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v13 = "[SMSessionManager promptEstimatedEndDateUpdateWithContext:]";
      v14 = 2112;
      v15 = contextCopy;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%s, context, %@", buf, 0x16u);
    }
  }

  queue = [(SMSessionManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__SMSessionManager_promptEstimatedEndDateUpdateWithContext___block_invoke;
  block[3] = &unk_2788C5020;
  v10 = contextCopy;
  v11 = a2;
  block[4] = self;
  v8 = contextCopy;
  dispatch_async(queue, block);
}

void __60__SMSessionManager_promptEstimatedEndDateUpdateWithContext___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB98] setWithObjects:{&unk_2845A0848, &unk_2845A0860, &unk_2845A0878, &unk_2845A0890, &unk_2845A08C0, 0}];
  v3 = *(a1 + 48);
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) sessionID];
  v6 = [v4 checkSessionIDCanDeviceModifyStateAndSessionStateWithSelector:v3 sessionID:v5 validSessionStates:v2];

  if (v6)
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v20 = "[SMSessionManager promptEstimatedEndDateUpdateWithContext:]_block_invoke";
      v21 = 2112;
      v22 = v6;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "%s, %@", buf, 0x16u);
    }
  }

  else
  {
    v8 = [*(*(a1 + 32) + 8) mutableCopy];
    v9 = [*(a1 + 40) estimatedEndDate];
    [v8 setEstimatedEndDate:v9];

    v10 = [*(a1 + 40) coarseEstimatedEndDate];
    if (v10)
    {
      [v8 setCoarseEstimatedEndDate:v10];
    }

    else
    {
      v11 = [*(a1 + 40) estimatedEndDate];
      [v8 setCoarseEstimatedEndDate:v11];
    }

    if ([*(*(a1 + 32) + 8) estimatedEndDateStatus] == 2)
    {
      v12 = 3;
    }

    else
    {
      v12 = [*(*(a1 + 32) + 8) estimatedEndDateStatus];
    }

    [v8 setEstimatedEndDateStatus:v12];
    [v8 setMonitorContext:*(a1 + 40)];
    [*(a1 + 32) _performStateTransitionTo:v8 transitionType:1 handler:0];
    v13 = *(a1 + 32);
    v14 = [*(a1 + 40) estimatedEndDate];
    v15 = [*(a1 + 40) coarseEstimatedEndDate];
    v16 = [*(a1 + 32) state];
    v17 = [v16 configuration];
    v18 = [v17 sessionID];
    [v13 _updateReceiverWithEstimatedEndDate:v14 coarseEstimatedEndDate:v15 sessionID:v18];
  }
}

- (void)promptDestinationAnomalyVerificationWithContext:(id)context
{
  v8 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[SMSessionManager promptDestinationAnomalyVerificationWithContext:]";
    _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_DEFAULT, "%s, Received prompt request for destination anomaly verification", &v6, 0xCu);
  }

  [(SMSessionManager *)self promptDestinationAnomalyVerificationWithContext:contextCopy handler:&__block_literal_global_511];
}

void __68__SMSessionManager_promptDestinationAnomalyVerificationWithContext___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = 136315394;
      v5 = "[SMSessionManager promptDestinationAnomalyVerificationWithContext:]_block_invoke";
      v6 = 2112;
      v7 = v2;
      _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_INFO, "%s completed with error, %@", &v4, 0x16u);
    }
  }
}

- (void)promptRoundTripAnomalyVerificationWithContext:(id)context
{
  v8 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[SMSessionManager promptRoundTripAnomalyVerificationWithContext:]";
    _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_DEFAULT, "%s, Received prompt request for round trip anomaly verification", &v6, 0xCu);
  }

  [(SMSessionManager *)self promptRoundTripAnomalyVerificationWithContext:contextCopy handler:&__block_literal_global_513];
}

void __66__SMSessionManager_promptRoundTripAnomalyVerificationWithContext___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = 136315394;
      v5 = "[SMSessionManager promptRoundTripAnomalyVerificationWithContext:]_block_invoke";
      v6 = 2112;
      v7 = v2;
      _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_INFO, "%s completed with error, %@", &v4, 0x16u);
    }
  }
}

- (void)promptTimerEndedVerificationWithContext:(id)context
{
  v8 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[SMSessionManager promptTimerEndedVerificationWithContext:]";
    _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_DEFAULT, "%s, Received prompt request for timer ended verification", &v6, 0xCu);
  }

  [(SMSessionManager *)self promptTimerEndedVerificationWithContext:contextCopy handler:&__block_literal_global_515];
}

void __60__SMSessionManager_promptTimerEndedVerificationWithContext___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = 136315394;
      v5 = "[SMSessionManager promptTimerEndedVerificationWithContext:]_block_invoke";
      v6 = 2112;
      v7 = v2;
      _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_INFO, "%s completed with error, %@", &v4, 0x16u);
    }
  }
}

- (void)promptWorkoutAnomalyVerificationWithContext:(id)context
{
  v8 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[SMSessionManager promptWorkoutAnomalyVerificationWithContext:]";
    _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_DEFAULT, "%s, Received prompt request for workout anomaly verification", &v6, 0xCu);
  }

  [(SMSessionManager *)self promptWorkoutAnomalyVerificationWithContext:contextCopy handler:&__block_literal_global_517];
}

void __64__SMSessionManager_promptWorkoutAnomalyVerificationWithContext___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = 136315394;
      v5 = "[SMSessionManager promptWorkoutAnomalyVerificationWithContext:]_block_invoke";
      v6 = 2112;
      v7 = v2;
      _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_INFO, "%s completed with error, %@", &v4, 0x16u);
    }
  }
}

- (void)onDeletedMessage:(id)message handler:(id)handler
{
  messageCopy = message;
  handlerCopy = handler;
  queue = [(SMSessionManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__SMSessionManager_onDeletedMessage_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = messageCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = messageCopy;
  dispatch_async(queue, block);
}

- (void)_onDeletedMessage:(id)message handler:(id)handler
{
  v29 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  handlerCopy = handler;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      state = [(SMSessionManager *)self state];
      configuration = [state configuration];
      sessionID = [configuration sessionID];
      *buf = 136315651;
      v24 = "[SMSessionManager _onDeletedMessage:handler:]";
      v25 = 2112;
      v26 = sessionID;
      v27 = 2117;
      v28 = messageCopy;
      _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "SMSessionManager,%s,currentSessionID,%@,message,%{sensitive}@", buf, 0x20u);
    }
  }

  state2 = [(SMSessionManager *)self state];
  if (![state2 isActiveState])
  {
    goto LABEL_10;
  }

  state3 = [(SMSessionManager *)self state];
  configuration2 = [state3 configuration];
  sessionID2 = [configuration2 sessionID];
  sessionID3 = [messageCopy sessionID];
  if (![sessionID2 isEqual:sessionID3])
  {

LABEL_10:
    goto LABEL_11;
  }

  _isActiveDevice = [(SMSessionManager *)self _isActiveDevice];

  if (!_isActiveDevice)
  {
LABEL_11:
    handlerCopy[2](handlerCopy, 0);
    goto LABEL_12;
  }

  state4 = [(SMSessionManager *)self state];
  configuration3 = [state4 configuration];
  sessionID4 = [configuration3 sessionID];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __46__SMSessionManager__onDeletedMessage_handler___block_invoke;
  v21[3] = &unk_2788C4F60;
  v21[4] = self;
  v22 = handlerCopy;
  [(SMSessionManager *)self _endSessionForSessionID:sessionID4 reason:2 handler:v21];

LABEL_12:
}

void __46__SMSessionManager__onDeletedMessage_handler___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) state];
    v6 = [v5 configuration];
    v7 = [v6 sessionID];
    v8 = 136315650;
    v9 = "[SMSessionManager _onDeletedMessage:handler:]_block_invoke";
    v10 = 2112;
    v11 = v7;
    v12 = 2112;
    v13 = v3;
    _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_DEFAULT, "SMSessionManager,%s,sessionID:%@, end session due to message deletion with error,%@", &v8, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)onDeletedConversation:(id)conversation handler:(id)handler
{
  conversationCopy = conversation;
  handlerCopy = handler;
  queue = [(SMSessionManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__SMSessionManager_onDeletedConversation_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = conversationCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = conversationCopy;
  dispatch_async(queue, block);
}

- (void)_onDeletedConversation:(id)conversation handler:(id)handler
{
  v29 = *MEMORY[0x277D85DE8];
  conversationCopy = conversation;
  handlerCopy = handler;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      state = [(SMSessionManager *)self state];
      configuration = [state configuration];
      sessionID = [configuration sessionID];
      receiverHandles = [conversationCopy receiverHandles];
      *buf = 136315650;
      v24 = "[SMSessionManager _onDeletedConversation:handler:]";
      v25 = 2112;
      v26 = sessionID;
      v27 = 2112;
      v28 = receiverHandles;
      _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "SMSessionManager,%s,currentSessionID,%@,receiverHandles,%@", buf, 0x20u);
    }
  }

  state2 = [(SMSessionManager *)self state];
  if (![state2 isActiveState])
  {
    goto LABEL_10;
  }

  state3 = [(SMSessionManager *)self state];
  configuration2 = [state3 configuration];
  conversation = [configuration2 conversation];
  if (![SMMessagingUtilities handlesInConversation1:conversation canonicallyEqualsHandlesInConversation2:conversationCopy])
  {

LABEL_10:
    goto LABEL_11;
  }

  _isActiveDevice = [(SMSessionManager *)self _isActiveDevice];

  if (!_isActiveDevice)
  {
LABEL_11:
    handlerCopy[2](handlerCopy, 0);
    goto LABEL_12;
  }

  state4 = [(SMSessionManager *)self state];
  configuration3 = [state4 configuration];
  sessionID2 = [configuration3 sessionID];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __51__SMSessionManager__onDeletedConversation_handler___block_invoke;
  v21[3] = &unk_2788C4F60;
  v21[4] = self;
  v22 = handlerCopy;
  [(SMSessionManager *)self _endSessionForSessionID:sessionID2 reason:2 handler:v21];

LABEL_12:
}

void __51__SMSessionManager__onDeletedConversation_handler___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) state];
    v6 = [v5 configuration];
    v7 = [v6 sessionID];
    v8 = 136315650;
    v9 = "[SMSessionManager _onDeletedConversation:handler:]_block_invoke";
    v10 = 2112;
    v11 = v7;
    v12 = 2112;
    v13 = v3;
    _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_DEFAULT, "SMSessionManager,%s,sessionID:%@, end session due to conversation deletion with error,%@", &v8, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)sessionInitializedWithSessionID:(id)d allowReadToken:(id)token safetyCacheKey:(id)key scheduledSendMessageGUID:(id)iD completionHandler:(id)handler
{
  dCopy = d;
  tokenCopy = token;
  keyCopy = key;
  iDCopy = iD;
  handlerCopy = handler;
  if (handlerCopy)
  {
    queue = [(SMSessionManager *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __125__SMSessionManager_sessionInitializedWithSessionID_allowReadToken_safetyCacheKey_scheduledSendMessageGUID_completionHandler___block_invoke;
    block[3] = &unk_2788C6648;
    v21 = dCopy;
    selfCopy = self;
    v26 = handlerCopy;
    v23 = tokenCopy;
    v24 = keyCopy;
    v25 = iDCopy;
    v27 = a2;
    dispatch_async(queue, block);

    v19 = v21;
  }

  else
  {
    v19 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v19, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler", buf, 2u);
    }
  }
}

void __125__SMSessionManager_sessionInitializedWithSessionID_allowReadToken_safetyCacheKey_scheduledSendMessageGUID_completionHandler___block_invoke(uint64_t a1)
{
  v58 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (!v2 || ([*(*(a1 + 40) + 8) configuration], v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "sessionID"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v2, "isEqual:", v4), v4, v3, (v5 & 1) == 0))
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v26 = *(a1 + 32);
      v27 = [*(*(a1 + 40) + 8) configuration];
      v28 = [v27 sessionID];
      *buf = 136315650;
      v53 = "[SMSessionManager sessionInitializedWithSessionID:allowReadToken:safetyCacheKey:scheduledSendMessageGUID:completionHandler:]_block_invoke";
      v54 = 2112;
      v55 = v26;
      v56 = 2112;
      v57 = v28;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "%s, invalid session ID %@, current sessionID, %@", buf, 0x20u);
    }

    v12 = objc_alloc(MEMORY[0x277CCA9B8]);
    v13 = *MEMORY[0x277D4ACD0];
    v50 = *MEMORY[0x277CCA450];
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid session ID"];
    v51 = v14;
    v15 = MEMORY[0x277CBEAC0];
    v16 = &v51;
    v17 = &v50;
    goto LABEL_14;
  }

  if (!*(a1 + 48))
  {
    v23 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v53 = "[SMSessionManager sessionInitializedWithSessionID:allowReadToken:safetyCacheKey:scheduledSendMessageGUID:completionHandler:]_block_invoke";
      _os_log_error_impl(&dword_2304B3000, v23, OS_LOG_TYPE_ERROR, "%s, missing allowReadToken", buf, 0xCu);
    }

    v12 = objc_alloc(MEMORY[0x277CCA9B8]);
    v13 = *MEMORY[0x277D4ACD0];
    v48 = *MEMORY[0x277CCA450];
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"Missing allowReadToken"];
    v49 = v14;
    v15 = MEMORY[0x277CBEAC0];
    v16 = &v49;
    v17 = &v48;
    goto LABEL_14;
  }

  if (!*(a1 + 56))
  {
    v24 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v53 = "[SMSessionManager sessionInitializedWithSessionID:allowReadToken:safetyCacheKey:scheduledSendMessageGUID:completionHandler:]_block_invoke";
      _os_log_error_impl(&dword_2304B3000, v24, OS_LOG_TYPE_ERROR, "%s, missing safetyCacheKey", buf, 0xCu);
    }

    v12 = objc_alloc(MEMORY[0x277CCA9B8]);
    v13 = *MEMORY[0x277D4ACD0];
    v46 = *MEMORY[0x277CCA450];
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"Missing safetyCacheKey"];
    v47 = v14;
    v15 = MEMORY[0x277CBEAC0];
    v16 = &v47;
    v17 = &v46;
    goto LABEL_14;
  }

  if (!*(a1 + 64))
  {
    v25 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v53 = "[SMSessionManager sessionInitializedWithSessionID:allowReadToken:safetyCacheKey:scheduledSendMessageGUID:completionHandler:]_block_invoke";
      _os_log_error_impl(&dword_2304B3000, v25, OS_LOG_TYPE_ERROR, "%s, missing scheduledSendMessageGUID", buf, 0xCu);
    }

    v12 = objc_alloc(MEMORY[0x277CCA9B8]);
    v13 = *MEMORY[0x277D4ACD0];
    v44 = *MEMORY[0x277CCA450];
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"Missing scheduledSendMessageGUID"];
    v45 = v14;
    v15 = MEMORY[0x277CBEAC0];
    v16 = &v45;
    v17 = &v44;
LABEL_14:
    v18 = [v15 dictionaryWithObjects:v16 forKeys:v17 count:1];
    v19 = v12;
    v20 = v13;
    v21 = 7;
    goto LABEL_15;
  }

  if ([*(a1 + 40) _canDeviceModifyState])
  {
    if ([*(*(a1 + 40) + 8) sessionState] == 10)
    {
      v6 = *(a1 + 40);
      v7 = *(a1 + 48);
      v8 = *(a1 + 56);
      v9 = *(a1 + 64);
      v10 = *(a1 + 72);

      [v6 _sessionInitializedWithAllowReadToken:v7 safetyCacheKey:v8 scheduledSendMessageGUID:v9 completionHandler:v10];
      return;
    }

    v36 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      v39 = [MEMORY[0x277D4ABB0] convertSessionStateToString:{objc_msgSend(*(*(a1 + 40) + 8), "sessionState")}];
      *buf = 136315395;
      v53 = "[SMSessionManager sessionInitializedWithSessionID:allowReadToken:safetyCacheKey:scheduledSendMessageGUID:completionHandler:]_block_invoke";
      v54 = 2117;
      v55 = v39;
      _os_log_error_impl(&dword_2304B3000, v36, OS_LOG_TYPE_ERROR, "%s, session is not in Initializing, current state, %{sensitive}@", buf, 0x16u);
    }

    v37 = objc_alloc(MEMORY[0x277CCA9B8]);
    v38 = *MEMORY[0x277D4ACD0];
    v40 = *MEMORY[0x277CCA450];
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"Not in Initializing state"];
    v41 = v14;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
    v19 = v37;
    v20 = v38;
    v21 = 16;
LABEL_15:
    v22 = [v19 initWithDomain:v20 code:v21 userInfo:v18];

    (*(*(a1 + 72) + 16))();
    return;
  }

  v29 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v53 = "[SMSessionManager sessionInitializedWithSessionID:allowReadToken:safetyCacheKey:scheduledSendMessageGUID:completionHandler:]_block_invoke";
    _os_log_error_impl(&dword_2304B3000, v29, OS_LOG_TYPE_ERROR, "%s, User requested to complete session initialization on non active device", buf, 0xCu);
  }

  v42 = *MEMORY[0x277CCA450];
  v30 = MEMORY[0x277CCACA8];
  v31 = NSStringFromSelector(*(a1 + 80));
  v32 = [v30 stringWithFormat:@"%@ cannot be completed since current device is not active", v31];
  v43 = v32;
  v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v43 forKeys:&v42 count:1];

  v34 = objc_alloc(MEMORY[0x277CCA9B8]);
  v35 = [v34 initWithDomain:*MEMORY[0x277D4ACD0] code:11 userInfo:v33];
  (*(*(a1 + 72) + 16))();
}

- (void)_sessionInitializedWithAllowReadToken:(id)token safetyCacheKey:(id)key scheduledSendMessageGUID:(id)d completionHandler:(id)handler
{
  state = self->_state;
  handlerCopy = handler;
  dCopy = d;
  keyCopy = key;
  tokenCopy = token;
  v15 = [(SMSessionManagerState *)state mutableCopy];
  [v15 setSessionState:11];
  [v15 setAllowReadToken:tokenCopy];

  [v15 setSafetyCacheKey:keyCopy];
  [v15 setScheduledSendMessageGUID:dCopy];

  [(SMSessionManager *)self _performStateTransitionTo:v15 transitionType:1 handler:handlerCopy];
}

- (void)sendSessionEndMessageWithReason:(unint64_t)reason associatedGUID:(id)d state:(id)state
{
  dCopy = d;
  stateCopy = state;
  v31 = objc_alloc(MEMORY[0x277D4AB98]);
  configuration = [stateCopy configuration];
  sessionID = [configuration sessionID];
  configuration2 = [stateCopy configuration];
  sessionType = [configuration2 sessionType];
  configuration3 = [stateCopy configuration];
  destination = [configuration3 destination];
  destinationType = [destination destinationType];
  v35 = stateCopy;
  configuration4 = [stateCopy configuration];
  destination2 = [configuration4 destination];
  destinationMapItem = [destination2 destinationMapItem];
  v17 = [v31 initWithSessionID:sessionID sessionEndReason:reason sessionType:sessionType destinationType:destinationType destinationMapItem:destinationMapItem];

  v46[0] = 0;
  v46[1] = v46;
  v46[2] = 0x3032000000;
  v46[3] = __Block_byref_object_copy__198;
  v46[4] = __Block_byref_object_dispose__198;
  summaryText = [v17 summaryText];
  v18 = dispatch_group_create();
  if (reason == 1)
  {
    configuration5 = [v35 configuration];
    destination3 = [configuration5 destination];
    destinationType2 = [destination3 destinationType];

    if (destinationType2 == 4)
    {
      dispatch_group_enter(v18);
      v22 = MEMORY[0x277D4AB50];
      configuration6 = [v35 configuration];
      destination4 = [configuration6 destination];
      destinationMapItem2 = [destination4 destinationMapItem];
      v42[0] = MEMORY[0x277D85DD0];
      v42[1] = 3221225472;
      v42[2] = __73__SMSessionManager_sendSessionEndMessageWithReason_associatedGUID_state___block_invoke;
      v42[3] = &unk_2788D3378;
      v42[4] = self;
      v44 = v46;
      v45 = a2;
      v43 = v18;
      [v22 fetchDestinationNameFromMapItem:destinationMapItem2 completionHandler:v42];
    }
  }

  queue = [(SMSessionManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__SMSessionManager_sendSessionEndMessageWithReason_associatedGUID_state___block_invoke_533;
  block[3] = &unk_2788C79C8;
  block[4] = self;
  v37 = v17;
  v38 = dCopy;
  v39 = v35;
  v40 = v46;
  v41 = a2;
  v27 = v35;
  v28 = dCopy;
  v29 = v17;
  dispatch_group_notify(v18, queue, block);

  _Block_object_dispose(v46, 8);
}

void __73__SMSessionManager_sendSessionEndMessageWithReason_associatedGUID_state___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v13 = NSStringFromSelector(*(a1 + 56));
      v14 = 138412802;
      v15 = v12;
      v16 = 2112;
      v17 = v13;
      v18 = 2112;
      v19 = v5;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "#NotificationDeliveryRequest,Receiver,%@,%@,Unable to fetch destination name due to error %@", &v14, 0x20u);
    }
  }

  else
  {
    v7 = [MEMORY[0x277D4AB70] safeArrivalMessageWithCustomizedSummaryForDestination:a2];
    v8 = *(*(a1 + 48) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      goto LABEL_5;
    }

    v6 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v10 = *(*(*(a1 + 48) + 8) + 40);
      v14 = 138412290;
      v15 = v10;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "#NotificationDeliveryRequest, fetchDestinationNameFromMapItem %@", &v14, 0xCu);
    }
  }

LABEL_5:
  dispatch_group_leave(*(a1 + 40));
}

void __73__SMSessionManager_sendSessionEndMessageWithReason_associatedGUID_state___block_invoke_533(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) messagingService];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = [*(a1 + 56) configuration];
  v6 = [v5 conversation];
  v7 = *(*(*(a1 + 64) + 8) + 40);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __73__SMSessionManager_sendSessionEndMessageWithReason_associatedGUID_state___block_invoke_2;
  v13[3] = &unk_2788D33A0;
  v8 = *(a1 + 72);
  v13[4] = *(a1 + 32);
  v13[5] = v8;
  [v2 sendMadridMessage:v3 associatedGUID:v4 toConversation:v6 summaryText:v7 completion:v13];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = [*(a1 + 56) configuration];
      v11 = [v10 conversation];
      v12 = *(a1 + 40);
      *buf = 136315650;
      v15 = "[SMSessionManager sendSessionEndMessageWithReason:associatedGUID:state:]_block_invoke";
      v16 = 2112;
      v17 = v11;
      v18 = 2112;
      v19 = v12;
      _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "%s, Sent iMessage to conversation, %@, message, %@", buf, 0x20u);
    }
  }
}

void __73__SMSessionManager_sendSessionEndMessageWithReason_associatedGUID_state___block_invoke_2(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = a4;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = NSStringFromSelector(*(a1 + 40));
      v9 = "failure";
      *v10 = 138412802;
      *&v10[4] = v8;
      if (a3)
      {
        v9 = "success";
      }

      *&v10[12] = 2080;
      *&v10[14] = v9;
      v11 = 2112;
      v12 = v6;
      _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "SMSessionManager,%@,sendMessage returned with status,%s,error,%@", v10, 0x20u);
    }
  }

  [*(a1 + 32) _resetPendingSendSessionEndMessage];
}

- (void)processNearbyEffectivePairedDeviceChanged:(id)changed
{
  changedCopy = changed;
  queue = [(SMSessionManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__SMSessionManager_processNearbyEffectivePairedDeviceChanged___block_invoke;
  block[3] = &unk_2788C5020;
  v9 = changedCopy;
  v10 = a2;
  block[4] = self;
  v7 = changedCopy;
  dispatch_async(queue, block);
}

uint64_t __62__SMSessionManager_processNearbyEffectivePairedDeviceChanged___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = [*(a1 + 32) state];
      v4 = [v3 configuration];
      v5 = [v4 sessionID];
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = NSStringFromSelector(*(a1 + 48));
      v9 = *(a1 + 40);
      v11 = 138413058;
      v12 = v5;
      v13 = 2112;
      v14 = v7;
      v15 = 2112;
      v16 = v8;
      v17 = 2112;
      v18 = v9;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "#SessionManager,Initiator,sessionID:%@,%@,%@,effectivePairedDevice changed %@", &v11, 0x2Au);
    }
  }

  return [*(a1 + 32) _processNearbyEffectivePairedDeviceChanged:*(a1 + 40)];
}

- (void)_processNearbyEffectivePairedDeviceChanged:(id)changed
{
  v116 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  if (changedCopy)
  {
    aSelector = a2;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        name = [changedCopy name];
        isNearby = [changedCopy isNearby];
        state = [(SMSessionManager *)self state];
        configuration = [state configuration];
        sessionID = [configuration sessionID];
        status = [(SMSessionManager *)self status];
        lastSessionIDDuringMagnetBreak = [status lastSessionIDDuringMagnetBreak];
        magnetBreakTimer = [(SMSessionManager *)self magnetBreakTimer];
        state2 = [(SMSessionManager *)self state];
        isActiveState = [state2 isActiveState];
        state3 = [(SMSessionManager *)self state];
        *buf = 136316931;
        v109 = "[SMSessionManager _processNearbyEffectivePairedDeviceChanged:]";
        v110 = 2112;
        v111 = name;
        v112 = 1024;
        *v113 = isNearby;
        *&v113[4] = 2112;
        *&v113[6] = sessionID;
        *&v113[14] = 2112;
        *&v113[16] = lastSessionIDDuringMagnetBreak;
        *&v113[24] = 1024;
        *&v113[26] = magnetBreakTimer != 0;
        LOWORD(v114) = 1024;
        *(&v114 + 2) = isActiveState;
        HIWORD(v114) = 2117;
        v115 = state3;
        _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "%s, effectivePairedDevice, %@, effectivePairedDevice.nearby, %{Bool}d, sessionID, %@, lastSessionIDDuringMagnetBreak, %@, magnetBreakTimer, %{Bool}d, is state active state, %{Bool}d, state, %{sensitive}@", buf, 0x46u);
      }
    }

    v13 = [(SMSessionManager *)self _shouldExitHysteresisState:[(SMSessionManager *)self _getCurrentHysteresisStateType] nearbyDeviceConnected:[(SMSessionManager *)self _isEffectivePairedDeviceNearby]];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v14 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        state4 = [(SMSessionManager *)self state];
        configuration2 = [state4 configuration];
        sessionID2 = [configuration2 sessionID];
        v18 = objc_opt_class();
        v19 = NSStringFromClass(v18);
        v20 = NSStringFromSelector(aSelector);
        _getCurrentHysteresisStateType = [(SMSessionManager *)self _getCurrentHysteresisStateType];
        _isEffectivePairedDeviceNearby = [(SMSessionManager *)self _isEffectivePairedDeviceNearby];
        *buf = 138413570;
        v109 = sessionID2;
        v110 = 2112;
        v111 = v19;
        v112 = 2112;
        *v113 = v20;
        *&v113[8] = 2048;
        *&v113[10] = _getCurrentHysteresisStateType;
        *&v113[18] = 1024;
        *&v113[20] = _isEffectivePairedDeviceNearby;
        *&v113[24] = 1024;
        *&v113[26] = v13;
        _os_log_impl(&dword_2304B3000, v14, OS_LOG_TYPE_INFO, "#SessionManager,Initiator,sessionID:%@,%@,%@, hysteresisState, %lu, isNearbyDeviceConnected, %d, shouldExitHysteresisState, %d", buf, 0x36u);
      }
    }

    if (v13)
    {
      [(SMSessionManager *)self _cancelMagnetBreakTimerAndExitHysteresisState];
      goto LABEL_42;
    }

    magnetBreakTimer2 = [(SMSessionManager *)self magnetBreakTimer];

    if (magnetBreakTimer2)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v25 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          state5 = [(SMSessionManager *)self state];
          configuration3 = [state5 configuration];
          sessionID3 = [configuration3 sessionID];
          v29 = objc_opt_class();
          v30 = NSStringFromClass(v29);
          v31 = NSStringFromSelector(aSelector);
          _getCurrentHysteresisStateType2 = [(SMSessionManager *)self _getCurrentHysteresisStateType];
          _isEffectivePairedDeviceNearby2 = [(SMSessionManager *)self _isEffectivePairedDeviceNearby];
          *buf = 138413314;
          v109 = sessionID3;
          v110 = 2112;
          v111 = v30;
          v112 = 2112;
          *v113 = v31;
          *&v113[8] = 2048;
          *&v113[10] = _getCurrentHysteresisStateType2;
          *&v113[18] = 1024;
          *&v113[20] = _isEffectivePairedDeviceNearby2;
          _os_log_impl(&dword_2304B3000, v25, OS_LOG_TYPE_INFO, "#SessionManager,Initiator,sessionID:%@,%@,%@, hysteresisState, %lu, isNearbyDeviceConnected, %d, already processing a magnetEvent, waiting for the XPC timer to finish hysteresis, returning", buf, 0x30u);
        }
      }

      goto LABEL_42;
    }

    state6 = [(SMSessionManager *)self state];
    isActiveState2 = [state6 isActiveState];

    if (isActiveState2)
    {
      uUID = [MEMORY[0x277CCAD78] UUID];
      uniqueIDOverride = [changedCopy uniqueIDOverride];
      v98 = [uUID initWithUUIDString:uniqueIDOverride];

      state7 = [(SMSessionManager *)self state];
      activeDeviceIdentifier = [state7 activeDeviceIdentifier];
      if ([v98 isEqual:activeDeviceIdentifier])
      {
      }

      else
      {
        state8 = [(SMSessionManager *)self state];
        activePairedDeviceIdentifier = [state8 activePairedDeviceIdentifier];
        v49 = [v98 isEqual:activePairedDeviceIdentifier];

        if ((v49 & 1) == 0)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v81 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
            if (os_log_type_enabled(v81, OS_LOG_TYPE_INFO))
            {
              state9 = [(SMSessionManager *)self state];
              configuration4 = [state9 configuration];
              sessionID4 = [configuration4 sessionID];
              v85 = objc_opt_class();
              v86 = NSStringFromClass(v85);
              v87 = NSStringFromSelector(aSelector);
              state10 = [(SMSessionManager *)self state];
              activeDeviceIdentifier2 = [state10 activeDeviceIdentifier];
              state11 = [(SMSessionManager *)self state];
              activePairedDeviceIdentifier2 = [state11 activePairedDeviceIdentifier];
              *buf = 138413570;
              v109 = sessionID4;
              v110 = 2112;
              v111 = v86;
              v112 = 2112;
              *v113 = v87;
              *&v113[8] = 2112;
              *&v113[10] = v98;
              *&v113[18] = 2112;
              *&v113[20] = activeDeviceIdentifier2;
              *&v113[28] = 2112;
              v114 = activePairedDeviceIdentifier2;
              _os_log_impl(&dword_2304B3000, v81, OS_LOG_TYPE_INFO, "#SessionManager,Initiator,sessionID:%@,%@,%@,Ignoring changed device %@, activeDeviceIdentifier %@, activePairedDeviceIdentifier %@", buf, 0x3Eu);
            }
          }

          goto LABEL_41;
        }
      }

      objc_initWeak(&location, self);
      state12 = [(SMSessionManager *)self state];
      configuration5 = [state12 configuration];
      sessionID5 = [configuration5 sessionID];

      v53 = objc_opt_class();
      v54 = NSStringFromClass(v53);
      if ([(SMSessionManager *)self _isEffectivePairedDeviceNearby])
      {
        v55 = 1;
      }

      else
      {
        v55 = 2;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v56 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
        {
          state13 = [(SMSessionManager *)self state];
          configuration6 = [state13 configuration];
          sessionID6 = [configuration6 sessionID];
          v60 = objc_opt_class();
          v61 = NSStringFromClass(v60);
          v62 = NSStringFromSelector(aSelector);
          *buf = 138413058;
          v109 = sessionID6;
          v110 = 2112;
          v111 = v61;
          v112 = 2112;
          *v113 = v62;
          *&v113[8] = 2048;
          *&v113[10] = v55;
          _os_log_impl(&dword_2304B3000, v56, OS_LOG_TYPE_INFO, "#SessionManager,Initiator,sessionID:%@,%@,%@,Entering hysteresis state %lu", buf, 0x2Au);
        }
      }

      [(SMSessionManager *)self _setHysteresisState:v55];
      [(SMSessionManager *)self _updateUnsupportedSeparationStateIfNeededWithNotify:0];
      v63 = [RTXPCTimerAlarm alloc];
      queue = [(SMSessionManager *)self queue];
      v102[0] = MEMORY[0x277D85DD0];
      v102[1] = 3221225472;
      v102[2] = __63__SMSessionManager__processNearbyEffectivePairedDeviceChanged___block_invoke;
      v102[3] = &unk_2788CDA80;
      objc_copyWeak(v106, &location);
      v65 = sessionID5;
      v103 = v65;
      v66 = v54;
      v106[1] = aSelector;
      v104 = v66;
      selfCopy = self;
      v67 = [(RTXPCTimerAlarm *)v63 initWithIdentifier:@"com.apple.routined.magnetBreakTimer" queue:queue handler:v102];
      [(SMSessionManager *)self setMagnetBreakTimer:v67];

      magnetBreakTimerInterval = self->_magnetBreakTimerInterval;
      defaultsManager = [(SMSessionManager *)self defaultsManager];
      v70 = [defaultsManager objectForKey:@"RTDefaultsSessionManagerHysteresisMagnetEventDateKey"];

      magnetBreakTimer3 = [(SMSessionManager *)self magnetBreakTimer];
      v72 = [v70 dateByAddingTimeInterval:magnetBreakTimerInterval];
      v101 = 0;
      v73 = [magnetBreakTimer3 fireWithDate:v72 error:&v101];
      v74 = v101;

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v75 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(v75, OS_LOG_TYPE_INFO))
        {
          state14 = [(SMSessionManager *)self state];
          configuration7 = [state14 configuration];
          sessionID7 = [configuration7 sessionID];
          v77 = objc_opt_class();
          v78 = NSStringFromClass(v77);
          v79 = NSStringFromSelector(aSelector);
          localizedDescription = [v74 localizedDescription];
          *buf = 138413314;
          v109 = sessionID7;
          v110 = 2112;
          v111 = v78;
          v112 = 2112;
          *v113 = v79;
          *&v113[8] = 1024;
          *&v113[10] = v73;
          *&v113[14] = 2112;
          *&v113[16] = localizedDescription;
          _os_log_impl(&dword_2304B3000, v75, OS_LOG_TYPE_INFO, "#SessionManager,Initiator,sessionID:%@,%@,%@,magnetBreak timer scheduled %d with error, %@", buf, 0x30u);
        }
      }

      objc_destroyWeak(v106);
      objc_destroyWeak(&location);
LABEL_41:

      goto LABEL_42;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v40 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
      {
        state15 = [(SMSessionManager *)self state];
        configuration8 = [state15 configuration];
        sessionID8 = [configuration8 sessionID];
        v44 = objc_opt_class();
        v45 = NSStringFromClass(v44);
        v46 = NSStringFromSelector(aSelector);
        *buf = 138412802;
        v109 = sessionID8;
        v110 = 2112;
        v111 = v45;
        v112 = 2112;
        *v113 = v46;
        _os_log_impl(&dword_2304B3000, v40, OS_LOG_TYPE_INFO, "#SessionManager,Initiator,sessionID:%@,%@,%@,The session is no longer active", buf, 0x20u);
      }
    }

    [(SMSessionManager *)self _updateUnsupportedSeparationStateIfNeededWithNotify:0];
  }

  else
  {
    v23 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v23, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: effectivePairedDevice", buf, 2u);
    }
  }

LABEL_42:
}

void __63__SMSessionManager__processNearbyEffectivePairedDeviceChanged___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained && ([WeakRetained state], (v4 = objc_claimAutoreleasedReturnValue()) != 0) && (v5 = v4, objc_msgSend(v3, "state"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isActiveState"), v6, v5, (v7 & 1) != 0))
  {
    v8 = [v3 _isEffectivePairedDeviceNearby];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = [v3 state];
        v11 = [v10 configuration];
        v12 = [v11 sessionID];
        v13 = objc_opt_class();
        v14 = NSStringFromClass(v13);
        v15 = NSStringFromSelector(*(a1 + 64));
        v20 = 138413058;
        v21 = v12;
        v22 = 2112;
        v23 = v14;
        v24 = 2112;
        v25 = v15;
        v26 = 1024;
        v27 = v8;
        _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "#SessionManager,Initiator,sessionID:%@,%@,%@,magnetBreak timer fired deviceIsNearby %d", &v20, 0x26u);
      }
    }

    [v3 _cancelMagnetBreakTimerAndExitHysteresisState];
    if (v8)
    {
      [v3 _handleMagnetConnect:1];
    }

    else
    {
      [v3 _handleMagnetBreak];
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v16 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = *(a1 + 32);
        v18 = *(a1 + 40);
        v19 = NSStringFromSelector(*(a1 + 64));
        v20 = 138412802;
        v21 = v17;
        v22 = 2112;
        v23 = v18;
        v24 = 2112;
        v25 = v19;
        _os_log_impl(&dword_2304B3000, v16, OS_LOG_TYPE_INFO, "#SessionManager,Initiator,sessionID:%@,%@,%@,The session is no longer active after magnetBreak timer fire", &v20, 0x20u);
      }
    }

    [v3 _cancelMagnetBreakTimerAndExitHysteresisState];
  }
}

- (BOOL)_shouldExitHysteresisState:(unint64_t)state nearbyDeviceConnected:(BOOL)connected
{
  v4 = !connected;
  if (state != 1)
  {
    v4 = 0;
  }

  if (state == 2)
  {
    return connected;
  }

  else
  {
    return v4;
  }
}

- (void)_cancelMagnetBreakTimerAndExitHysteresisState
{
  magnetBreakTimer = [(SMSessionManager *)self magnetBreakTimer];

  if (magnetBreakTimer)
  {
    magnetBreakTimer2 = [(SMSessionManager *)self magnetBreakTimer];
    [(SMSessionManager *)self _invalidateTimer:magnetBreakTimer2];

    [(SMSessionManager *)self setMagnetBreakTimer:0];
  }

  [(SMSessionManager *)self _clearHysteresisState];
}

- (BOOL)_isEffectivePairedDeviceNearby
{
  messagingService = [(SMSessionManager *)self messagingService];
  effectivePairedDevice = [messagingService effectivePairedDevice];
  isNearby = [effectivePairedDevice isNearby];

  return isNearby;
}

- (BOOL)_isEffectivePairedDeviceSameAsActiveDeviceWithIdentifier:(id)identifier
{
  v4 = MEMORY[0x277CCAD78];
  identifierCopy = identifier;
  v6 = [v4 alloc];
  messagingService = [(SMSessionManager *)self messagingService];
  effectivePairedDevice = [messagingService effectivePairedDevice];
  uniqueIDOverride = [effectivePairedDevice uniqueIDOverride];
  v10 = [v6 initWithUUIDString:uniqueIDOverride];
  v11 = [identifierCopy compare:v10];

  return v11 == 0;
}

- (unint64_t)_getCurrentHysteresisStateType
{
  defaultsManager = [(SMSessionManager *)self defaultsManager];
  v3 = [defaultsManager objectForKey:@"RTDefaultsSessionManagerHysteresisEventTypeKey"];

  unsignedIntegerValue = [v3 unsignedIntegerValue];
  return unsignedIntegerValue;
}

- (void)_setHysteresisState:(unint64_t)state
{
  defaultsManager = [(SMSessionManager *)self defaultsManager];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:state];
  [defaultsManager setObject:v6 forKey:@"RTDefaultsSessionManagerHysteresisEventTypeKey"];

  defaultsManager2 = [(SMSessionManager *)self defaultsManager];
  date = [MEMORY[0x277CBEAA8] date];
  [defaultsManager2 setObject:date forKey:@"RTDefaultsSessionManagerHysteresisMagnetEventDateKey"];
}

- (void)_clearHysteresisState
{
  v19 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      state = [(SMSessionManager *)self state];
      configuration = [state configuration];
      sessionID = [configuration sessionID];
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v10 = NSStringFromSelector(a2);
      v13 = 138412802;
      v14 = sessionID;
      v15 = 2112;
      v16 = v9;
      v17 = 2112;
      v18 = v10;
      _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "#SessionManager,Initiator,sessionID:%@,%@,%@, clearing hysteresis state", &v13, 0x20u);
    }
  }

  defaultsManager = [(SMSessionManager *)self defaultsManager];
  [defaultsManager setObject:&unk_2845A08F0 forKey:@"RTDefaultsSessionManagerHysteresisEventTypeKey"];

  defaultsManager2 = [(SMSessionManager *)self defaultsManager];
  [defaultsManager2 setObject:0 forKey:@"RTDefaultsSessionManagerHysteresisMagnetEventDateKey"];

  [(SMSessionManager *)self _updateUnsupportedSeparationStateIfNeededWithNotify:0];
}

- (void)_handleMagnetBreakPhone
{
  v29 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      state = [(SMSessionManager *)self state];
      configuration = [state configuration];
      sessionID = [configuration sessionID];
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v10 = NSStringFromSelector(a2);
      v23 = 138412802;
      v24 = sessionID;
      v25 = 2112;
      v26 = v9;
      v27 = 2112;
      v28 = v10;
      _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "#SessionManager,Initiator,sessionID:%@,%@,%@,handle magnetBreak phone noop; nothing to do, watch should try to become the active device ", &v23, 0x20u);
    }
  }

  if (![(SMSessionManager *)self _isActiveDevice])
  {
    state2 = [(SMSessionManager *)self state];
    configuration2 = [state2 configuration];
    sessionType = [configuration2 sessionType];

    if (sessionType == 4)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v14 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          state3 = [(SMSessionManager *)self state];
          configuration3 = [state3 configuration];
          sessionID2 = [configuration3 sessionID];
          v18 = objc_opt_class();
          v19 = NSStringFromClass(v18);
          v20 = NSStringFromSelector(a2);
          v23 = 138412802;
          v24 = sessionID2;
          v25 = 2112;
          v26 = v19;
          v27 = 2112;
          v28 = v20;
          _os_log_impl(&dword_2304B3000, v14, OS_LOG_TYPE_INFO, "#SessionManager,Initiator,sessionID:%@,%@,%@, magnet break for workout session on phone", &v23, 0x20u);
        }
      }

      [(SMSessionManager *)self _updateUnsupportedSeparationStateIfNeededWithNotify:1];
      v21 = MEMORY[0x277D4AA60];
      state4 = [(SMSessionManager *)self state];
      [v21 updateActivityWithState:state4 localState:self->_localState shouldNotify:1];
    }
  }
}

- (void)_handleMagnetConnect:(int64_t)connect
{
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x2020000000;
  v23[3] = connect;
  v5 = dispatch_group_create();
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x2020000000;
  v22 = 0;
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x3032000000;
  v19[3] = __Block_byref_object_copy__198;
  v19[4] = __Block_byref_object_dispose__198;
  v20 = 0;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x2020000000;
  v18[3] = 0;
  state = [(SMSessionManager *)self state];
  configuration = [state configuration];
  sessionType = [configuration sessionType];

  if (sessionType == 4)
  {
    dispatch_group_enter(v5);
    healthKitManager = [(SMSessionManager *)self healthKitManager];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __41__SMSessionManager__handleMagnetConnect___block_invoke;
    v12[3] = &unk_2788D33C8;
    v15 = v19;
    v16 = v18;
    v14 = v21;
    v12[4] = self;
    v17 = a2;
    v13 = v5;
    [healthKitManager fetchCurrentWorkoutSnapshotWithHandler:v12];
  }

  queue = [(SMSessionManager *)self queue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __41__SMSessionManager__handleMagnetConnect___block_invoke_546;
  v11[3] = &unk_2788D3418;
  v11[4] = self;
  v11[5] = v21;
  v11[6] = v19;
  v11[7] = v18;
  v11[8] = v23;
  v11[9] = a2;
  dispatch_group_notify(v5, queue, v11);

  _Block_object_dispose(v18, 8);
  _Block_object_dispose(v19, 8);

  _Block_object_dispose(v21, 8);
  _Block_object_dispose(v23, 8);
}

void __41__SMSessionManager__handleMagnetConnect___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    *(*(*(a1 + 48) + 8) + 24) = [v5 isFirstPartyWorkout];
    v7 = [v5 sessionIdentifier];
    v8 = *(*(a1 + 56) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    *(*(*(a1 + 64) + 8) + 24) = [v5 sessionType];
  }

  else
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [*(a1 + 32) state];
      v12 = [v11 configuration];
      v13 = [v12 sessionID];
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      v16 = NSStringFromSelector(*(a1 + 72));
      v17 = 138413058;
      v18 = v13;
      v19 = 2112;
      v20 = v15;
      v21 = 2112;
      v22 = v16;
      v23 = 2112;
      v24 = v6;
      _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "#SessionManager,Initiator,sessionID:%@,%@,%@,failed to fetch workout snapshot with error,%@", &v17, 0x2Au);
    }
  }

  dispatch_group_leave(*(a1 + 40));
}

void __41__SMSessionManager__handleMagnetConnect___block_invoke_546(uint64_t a1)
{
  v81 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) defaultsManager];
  v3 = [v2 objectForKey:@"RTDefaultsWorkoutOngoing"];
  v4 = [v3 BOOLValue];

  v5 = [*(a1 + 32) state];
  v6 = [v5 configuration];
  v7 = [v6 sessionType];

  if (v7 != 4)
  {
    goto LABEL_16;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v55 = [*(a1 + 32) state];
      v54 = [v55 configuration];
      v9 = [v54 sessionID];
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = NSStringFromSelector(*(a1 + 72));
      v53 = [*(a1 + 32) state];
      v52 = [v53 configuration];
      v49 = [v52 sessionType];
      v48 = *(*(*(a1 + 40) + 8) + 24);
      v47 = *(*(*(a1 + 48) + 8) + 40);
      v51 = [*(a1 + 32) state];
      v50 = [v51 configuration];
      v13 = [v50 sessionWorkoutIdentifier];
      v14 = *(*(*(a1 + 56) + 8) + 24);
      v15 = [*(a1 + 32) state];
      v16 = [v15 configuration];
      *buf = 138414594;
      v62 = v9;
      v63 = 2112;
      v64 = v11;
      v65 = 2112;
      v66 = v12;
      v67 = 2048;
      v68 = v49;
      v69 = 1024;
      v70 = v4;
      v71 = 1024;
      v72 = v48;
      v73 = 2112;
      v74 = v47;
      v75 = 2112;
      v76 = v13;
      v77 = 2048;
      v78 = v14;
      v79 = 2048;
      v80 = [v16 sessionWorkoutMirrorType];
      _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "#SessionManager,Initiator,sessionID:%@,%@,%@, sessionType, %ld, workoutOngoing, %d, isFirstPartyWorkout, %d, local workoutID, %@, config workoutID, %@, local workoutSessionType, %ld, config workoutSessionType, %ld", buf, 0x5Eu);
    }
  }

  if (!v4 || *(*(*(a1 + 40) + 8) + 24) != 1)
  {
    goto LABEL_11;
  }

  v17 = [*(a1 + 32) state];
  v18 = [v17 configuration];
  if ([v18 sessionWorkoutMirrorType] == 1 && !*(*(*(a1 + 56) + 8) + 24))
  {
    v26 = *(*(*(a1 + 48) + 8) + 40);
    v27 = [*(a1 + 32) state];
    v28 = [v27 configuration];
    v29 = [v28 sessionWorkoutIdentifier];
    LOBYTE(v26) = [v26 isEqual:v29];

    if ((v26 & 1) == 0)
    {
      goto LABEL_11;
    }

    *(*(*(a1 + 64) + 8) + 24) = 4;
LABEL_16:
    v30 = objc_alloc_init(SMHandoffMetricsManager);
    v31 = *(a1 + 32);
    v32 = *(v31 + 24);
    *(v31 + 24) = v30;

    [*(*(a1 + 32) + 24) startMetricsCollection];
    [*(*(a1 + 32) + 24) addMetricHandoffReason:*(*(*(a1 + 64) + 8) + 24)];
    v33 = [MEMORY[0x277CBEAA8] now];
    v34 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorAnalytics);
    v35 = [*(a1 + 32) state];
    v36 = [v35 configuration];
    v37 = [v36 sessionID];
    v38 = os_signpost_id_make_with_pointer(v34, v37);

    v39 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorAnalytics);
    v40 = v39;
    if (v38 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v39))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_2304B3000, v40, OS_SIGNPOST_INTERVAL_BEGIN, v38, "SMHandoffSessionLatency", " enableTelemetry=YES ", buf, 2u);
    }

    v41 = *(a1 + 32);
    v42 = [v41 state];
    v43 = [v42 configuration];
    v44 = [v43 sessionID];
    v56[0] = MEMORY[0x277D85DD0];
    v56[1] = 3221225472;
    v56[2] = __41__SMSessionManager__handleMagnetConnect___block_invoke_548;
    v56[3] = &unk_2788D33F0;
    v45 = *(a1 + 32);
    v57 = v33;
    v58 = v45;
    v46 = *(a1 + 72);
    v59 = v38;
    v60 = v46;
    v19 = v33;
    [v41 handoffSessionForSessionID:v44 handler:v56];

    goto LABEL_20;
  }

LABEL_11:
  if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    return;
  }

  v19 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v20 = [*(a1 + 32) state];
    v21 = [v20 configuration];
    v22 = [v21 sessionID];
    v23 = objc_opt_class();
    v24 = NSStringFromClass(v23);
    v25 = NSStringFromSelector(*(a1 + 72));
    *buf = 138412802;
    v62 = v22;
    v63 = 2112;
    v64 = v24;
    v65 = 2112;
    v66 = v25;
    _os_log_impl(&dword_2304B3000, v19, OS_LOG_TYPE_INFO, "#SessionManager,Initiator,sessionID:%@,%@,%@, do not handoff", buf, 0x20u);
  }

LABEL_20:
}

void __41__SMSessionManager__handleMagnetConnect___block_invoke_548(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorAnalytics);
  v5 = v4;
  v6 = *(a1 + 48);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_2304B3000, v5, OS_SIGNPOST_INTERVAL_END, v6, "SMHandoffSessionLatency", " enableTelemetry=YES ", buf, 2u);
  }

  v7 = [MEMORY[0x277CBEAA8] date];
  [v7 timeIntervalSinceDate:*(a1 + 32)];
  v9 = v8;

  [*(*(a1 + 40) + 24) addMetricForLatencyHandoffEndToEnd:v9];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = [*(a1 + 40) state];
      v12 = [v11 configuration];
      v13 = [v12 sessionID];
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      v16 = NSStringFromSelector(*(a1 + 56));
      *buf = 138413058;
      v25 = v13;
      v26 = 2112;
      v27 = v15;
      v28 = 2112;
      v29 = v16;
      v30 = 2112;
      v31 = v3;
      _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_INFO, "#SessionManager,Initiator,sessionID:%@,%@,%@, handoff finished with error, %@ ", buf, 0x2Au);
    }
  }

  v17 = *(a1 + 40);
  if (v3)
  {
    [*(v17 + 24) addMetricErrorCode:{objc_msgSend(v3, "code")}];
    v18 = *(*(a1 + 40) + 24);
    v19 = [v3 domain];
    [v18 addMetricErrorDomain:v19];

    v20 = *(*(a1 + 40) + 24);
    v21 = 0;
  }

  else
  {
    v20 = *(v17 + 24);
    v21 = 1;
  }

  [v20 addMetricSucceeded:v21];
  v22 = *(*(a1 + 40) + 24);
  v23 = 0;
  [v22 submitMetricsWithError:&v23];
}

- (BOOL)_isEligibleOutOfOrderStateSyncMessage:(id)message currentSessionManagerState:(id)state
{
  v18 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  stateCopy = state;
  v8 = stateCopy;
  if (!messageCopy)
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
LABEL_10:
      v9 = 0;
      goto LABEL_11;
    }

    LOWORD(v14) = 0;
    v12 = "Invalid parameter not satisfying: stateSyncMessage";
LABEL_20:
    _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, v12, &v14, 2u);
    goto LABEL_10;
  }

  if (!stateCopy)
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    LOWORD(v14) = 0;
    v12 = "Invalid parameter not satisfying: currentSessionManagerState";
    goto LABEL_20;
  }

  if ([(SMSessionManager *)self _isEligibleRecentHandoffMessage:messageCopy currentSessionManagerState:self->_state])
  {
    v9 = 1;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v10 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v14 = 136315394;
        v15 = "[SMSessionManager _isEligibleOutOfOrderStateSyncMessage:currentSessionManagerState:]";
        v16 = 2112;
        v17 = messageCopy;
        v11 = "%s, received state transition message type SMStateTransitionTypeHandoffBecomeActive, with older state, but within accepted delta, stateSyncMessage, %@";
LABEL_17:
        _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_INFO, v11, &v14, 0x16u);
        goto LABEL_11;
      }

      goto LABEL_11;
    }
  }

  else
  {
    if (![(SMSessionManager *)self _isEligibleOutOfOrderEndSessionMessage:messageCopy currentSessionManagerState:self->_state])
    {
      v9 = 0;
      goto LABEL_12;
    }

    v9 = 1;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v10 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v14 = 136315394;
        v15 = "[SMSessionManager _isEligibleOutOfOrderStateSyncMessage:currentSessionManagerState:]";
        v16 = 2112;
        v17 = messageCopy;
        v11 = "%s, received state transition message to endState, with older date, but within accepted delta and same sessionID, stateSyncMessage, %@";
        goto LABEL_17;
      }

LABEL_11:
    }
  }

LABEL_12:

  return v9;
}

- (BOOL)_isEligibleOutOfOrderEndSessionMessage:(id)message currentSessionManagerState:(id)state
{
  messageCopy = message;
  stateCopy = state;
  v7 = stateCopy;
  if (!messageCopy)
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
LABEL_10:

      isEndSessionState = 0;
      goto LABEL_15;
    }

    v21 = 0;
    v17 = "Invalid parameter not satisfying: stateSyncMessage";
    v18 = &v21;
LABEL_17:
    _os_log_error_impl(&dword_2304B3000, v16, OS_LOG_TYPE_ERROR, v17, v18, 2u);
    goto LABEL_10;
  }

  if (!stateCopy)
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    v20 = 0;
    v17 = "Invalid parameter not satisfying: currentSessionManagerState";
    v18 = &v20;
    goto LABEL_17;
  }

  sessionID = [messageCopy sessionID];
  configuration = [v7 configuration];
  sessionID2 = [configuration sessionID];
  if ([sessionID isEqual:sessionID2])
  {
    date = [v7 date];
    sessionManagerState = [messageCopy sessionManagerState];
    date2 = [sessionManagerState date];
    if ([date isAfterDate:date2] && objc_msgSend(v7, "isActiveState"))
    {
      sessionManagerState2 = [messageCopy sessionManagerState];
      isEndSessionState = [sessionManagerState2 isEndSessionState];
    }

    else
    {
      isEndSessionState = 0;
    }
  }

  else
  {
    isEndSessionState = 0;
  }

LABEL_15:
  return isEndSessionState;
}

- (BOOL)_isEligibleRecentHandoffMessage:(id)message currentSessionManagerState:(id)state
{
  v25 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  stateCopy = state;
  v7 = stateCopy;
  if (!messageCopy)
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v23) = 0;
      v13 = "Invalid parameter not satisfying: stateSyncMessage";
LABEL_11:
      v14 = v12;
      v15 = 2;
LABEL_12:
      _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, v13, &v23, v15);
    }

LABEL_19:

    goto LABEL_20;
  }

  if (!stateCopy)
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v23) = 0;
      v13 = "Invalid parameter not satisfying: currentSessionManagerState";
      goto LABEL_11;
    }

    goto LABEL_19;
  }

  if ([messageCopy stateTransitionType] != 2)
  {
LABEL_20:
    v21 = 0;
    goto LABEL_21;
  }

  sessionManagerState = [messageCopy sessionManagerState];
  date = [sessionManagerState date];
  date2 = [v7 date];
  if (![date isAfterDate:date2])
  {

    goto LABEL_14;
  }

  isActiveState = [v7 isActiveState];

  if ((isActiveState & 1) == 0)
  {
LABEL_14:
    date3 = [v7 date];
    date4 = [messageCopy date];
    [date3 timeIntervalSinceDate:date4];
    v19 = v18;

    v20 = -v19;
    if (v19 >= 0.0)
    {
      v20 = v19;
    }

    if (v20 < 10.0)
    {
      goto LABEL_17;
    }

    v12 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_19;
    }

    v23 = 134217984;
    v24 = v19;
    v13 = "Out of order SMStateTransitionTypeHandoffBecomeActive, interval %f";
    v14 = v12;
    v15 = 12;
    goto LABEL_12;
  }

LABEL_17:
  v21 = 1;
LABEL_21:

  return v21;
}

- (BOOL)_isEligibleTransitionFromStateSyncMessage:(id)message currentSessionManagerState:(id)state
{
  v20 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  sessionManagerState = [message sessionManagerState];
  configuration = [stateCopy configuration];
  sessionID = [configuration sessionID];
  configuration2 = [sessionManagerState configuration];
  sessionID2 = [configuration2 sessionID];
  if (![sessionID isEqual:sessionID2] || !objc_msgSend(stateCopy, "isEndSessionState"))
  {

    goto LABEL_10;
  }

  isEndSessionState = [sessionManagerState isEndSessionState];

  if (isEndSessionState)
  {
LABEL_10:
    v14 = 1;
    goto LABEL_11;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v16 = 136315394;
      v17 = "[SMSessionManager _isEligibleTransitionFromStateSyncMessage:currentSessionManagerState:]";
      v18 = 1024;
      _isActiveDevice = [(SMSessionManager *)self _isActiveDevice];
      _os_log_impl(&dword_2304B3000, v13, OS_LOG_TYPE_INFO, "%s, stateSyncMessage invalid transition, NotActive State -> Active State, isActiveDevice, %{Bool}d", &v16, 0x12u);
    }
  }

  v14 = 0;
LABEL_11:

  return v14;
}

- (BOOL)_isEligibleToBecomeNonActiveDeviceForHandoffStateSyncMessage:(id)message
{
  v33 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  activeDeviceIdentifier = [(SMSessionManagerState *)self->_state activeDeviceIdentifier];
  sessionManagerState = [messageCopy sessionManagerState];
  activeDeviceIdentifier2 = [sessionManagerState activeDeviceIdentifier];
  v9 = [activeDeviceIdentifier isEqual:activeDeviceIdentifier2];

  if (v9)
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      state = [(SMSessionManager *)self state];
      configuration = [state configuration];
      sessionID = [configuration sessionID];
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      v16 = NSStringFromSelector(a2);
      v25 = 138412802;
      v26 = sessionID;
      v27 = 2112;
      v28 = v15;
      v29 = 2112;
      v30 = v16;
      _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "#SessionManager,Initiator,sessionID:%@,%@,%@, not mismatching in the active device identifier and not eligible for handoff", &v25, 0x20u);
LABEL_10:

      goto LABEL_7;
    }

    goto LABEL_7;
  }

  configuration2 = [(SMSessionManagerState *)self->_state configuration];
  sessionID2 = [configuration2 sessionID];
  sessionID3 = [messageCopy sessionID];
  v20 = [sessionID2 isEqual:sessionID3];

  if ((v20 & 1) == 0)
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      state = [(SMSessionManager *)self state];
      configuration = [state configuration];
      sessionID = [configuration sessionID];
      v23 = objc_opt_class();
      v15 = NSStringFromClass(v23);
      v16 = NSStringFromSelector(a2);
      sessionID4 = [messageCopy sessionID];
      v25 = 138413058;
      v26 = sessionID;
      v27 = 2112;
      v28 = v15;
      v29 = 2112;
      v30 = v16;
      v31 = 2112;
      v32 = sessionID4;
      _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "#SessionManager,Initiator,sessionID:%@,%@,%@,receiving a handoff message for a different session, stateSyncMessage.sessionID %@", &v25, 0x2Au);

      goto LABEL_10;
    }

LABEL_7:

    v21 = 0;
    goto LABEL_8;
  }

  v21 = 1;
LABEL_8:

  return v21;
}

- (void)_becomeActiveDeviceForSessionWithHandler:(id)handler
{
  v55 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  messagingService = [(SMSessionManager *)self messagingService];
  deviceIdentifier = [messagingService deviceIdentifier];
  state = [(SMSessionManager *)self state];
  activeDeviceIdentifier = [state activeDeviceIdentifier];
  v10 = [deviceIdentifier isEqual:activeDeviceIdentifier];

  if (v10)
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      state2 = [(SMSessionManager *)self state];
      configuration = [state2 configuration];
      sessionID = [configuration sessionID];
      v40 = objc_opt_class();
      v41 = NSStringFromClass(v40);
      v42 = NSStringFromSelector(a2);
      *buf = 138412802;
      v50 = sessionID;
      v51 = 2112;
      *v52 = v41;
      *&v52[8] = 2112;
      *&v52[10] = v42;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "#SessionManager,Initiator,sessionID:%@,%@,%@,Already the active device for the session device", buf, 0x20u);
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      state3 = [(SMSessionManager *)self state];
      configuration2 = [state3 configuration];
      sessionID2 = [configuration2 sessionID];
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      v18 = NSStringFromSelector(a2);
      messagingService2 = [(SMSessionManager *)self messagingService];
      deviceIdentifier2 = [messagingService2 deviceIdentifier];
      *buf = 138413058;
      v50 = sessionID2;
      v51 = 2112;
      *v52 = v17;
      *&v52[8] = 2112;
      *&v52[10] = v18;
      v53 = 2112;
      v54 = deviceIdentifier2;
      _os_log_impl(&dword_2304B3000, v12, OS_LOG_TYPE_INFO, "#SessionManager,Initiator,sessionID:%@,%@,%@,Becoming the active device, deviceIdentifier, %@", buf, 0x2Au);
    }
  }

  state4 = [(SMSessionManager *)self state];
  v22 = [state4 mutableCopy];

  messagingService3 = [(SMSessionManager *)self messagingService];
  deviceIdentifier3 = [messagingService3 deviceIdentifier];
  [v22 setActiveDeviceIdentifier:deviceIdentifier3];

  uUID = [MEMORY[0x277CCAD78] UUID];
  messagingService4 = [(SMSessionManager *)self messagingService];
  effectivePairedDevice = [messagingService4 effectivePairedDevice];
  uniqueIDOverride = [effectivePairedDevice uniqueIDOverride];
  v29 = [uUID initWithUUIDString:uniqueIDOverride];
  [v22 setActivePairedDeviceIdentifier:v29];

  v30 = [MEMORY[0x277CBEAA8] now];
  [v22 setDate:v30];

  date = [MEMORY[0x277CBEAA8] date];
  v43 = MEMORY[0x277D85DD0];
  v44 = 3221225472;
  v45 = __61__SMSessionManager__becomeActiveDeviceForSessionWithHandler___block_invoke;
  v46 = &unk_2788C4F60;
  selfCopy = self;
  v32 = handlerCopy;
  v48 = v32;
  v33 = [(SMSessionManager *)self _performStateTransitionTo:v22 transitionType:2 handler:&v43];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v34 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      date2 = [MEMORY[0x277CBEAA8] date];
      [date2 timeIntervalSinceDate:date];
      *buf = 136315650;
      v50 = "[SMSessionManager _becomeActiveDeviceForSessionWithHandler:]";
      v51 = 1024;
      *v52 = v33;
      *&v52[4] = 2048;
      *&v52[6] = v36;
      _os_log_impl(&dword_2304B3000, v34, OS_LOG_TYPE_INFO, "%s, handoff finished, %{Bool}d, latency, %.2f", buf, 0x1Cu);
    }
  }
}

void __61__SMSessionManager__becomeActiveDeviceForSessionWithHandler___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) defaultsManager];
  [v4 setObject:MEMORY[0x277CBEC28] forKey:@"RTDefaultsSessionManagerHandoffInProgressKey"];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = 136315394;
      v8 = "[SMSessionManager _becomeActiveDeviceForSessionWithHandler:]_block_invoke";
      v9 = 2112;
      v10 = v3;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "%s state transition complete, error %@", &v7, 0x16u);
    }
  }

  if (v3)
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      v7 = 138412290;
      v8 = v3;
      _os_log_fault_impl(&dword_2304B3000, v6, OS_LOG_TYPE_FAULT, "Given that we have gotten the successful handoff criteria (CK record etc) this error should not happen. error, %@", &v7, 0xCu);
    }
  }

  (*(*(a1 + 40) + 16))();
}

- (void)_updateActivityWithState:(id)state shouldNotify:(BOOL)notify
{
  notifyCopy = notify;
  v16 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  unsupportedDeviceSeparationState = [(SMLocalSessionState *)self->_localState unsupportedDeviceSeparationState];
  v8 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [stateCopy description];
    v10 = 136315651;
    v11 = "[SMSessionManager _updateActivityWithState:shouldNotify:]";
    v12 = 2117;
    v13 = v9;
    v14 = 1024;
    v15 = unsupportedDeviceSeparationState;
    _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_DEFAULT, "%s,state,%{sensitive}@, disconnected,%{Bool}d", &v10, 0x1Cu);
  }

  [MEMORY[0x277D4AA60] updateActivityWithState:stateCopy localState:self->_localState shouldNotify:notifyCopy];
}

- (void)respondToNotificationWithIdentifier:(id)identifier sessionIdentifier:(id)sessionIdentifier actionIdentifier:(id)actionIdentifier handler:(id)handler
{
  v93 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  sessionIdentifierCopy = sessionIdentifier;
  actionIdentifierCopy = actionIdentifier;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    goto LABEL_29;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 136315906;
      v86 = "[SMSessionManager respondToNotificationWithIdentifier:sessionIdentifier:actionIdentifier:handler:]";
      v87 = 2112;
      v88 = identifierCopy;
      v89 = 2112;
      v90 = sessionIdentifierCopy;
      v91 = 2112;
      v92 = actionIdentifierCopy;
      _os_log_impl(&dword_2304B3000, v15, OS_LOG_TYPE_INFO, "%s, notification identifier, %@, session identifier, %@, action identifier, %@,", buf, 0x2Au);
    }
  }

  v73 = identifierCopy;
  if (identifierCopy)
  {
    v16 = 0;
  }

  else
  {
    v17 = objc_alloc(MEMORY[0x277CCA9B8]);
    v18 = *MEMORY[0x277D4ACD0];
    v83 = *MEMORY[0x277CCA450];
    v19 = MEMORY[0x277CCACA8];
    v20 = NSStringFromSelector(a2);
    [v19 stringWithFormat:@"%@, missing notification identifier", v20];
    v22 = v21 = a2;
    v84 = v22;
    [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v84 forKeys:&v83 count:1];
    v24 = v23 = self;
    v25 = [v17 initWithDomain:v18 code:7 userInfo:v24];

    self = v23;
    a2 = v21;

    v16 = v25;
    handlerCopy[2](handlerCopy, v25);
  }

  aSelector = a2;
  if (!sessionIdentifierCopy)
  {
    v26 = objc_alloc(MEMORY[0x277CCA9B8]);
    v27 = *MEMORY[0x277D4ACD0];
    v81 = *MEMORY[0x277CCA450];
    v28 = MEMORY[0x277CCACA8];
    v29 = NSStringFromSelector(a2);
    v30 = [v28 stringWithFormat:@"%@, missing session identifier", v29];
    v82 = v30;
    [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v82 forKeys:&v81 count:1];
    v32 = v31 = self;
    v33 = [v26 initWithDomain:v27 code:7 userInfo:v32];

    self = v31;
    handlerCopy[2](handlerCopy, v33);
    v16 = v33;
  }

  configuration = [(SMSessionManagerState *)self->_state configuration];
  sessionID = [configuration sessionID];
  uUIDString = [sessionID UUIDString];
  v37 = [sessionIdentifierCopy isEqualToString:uUIDString];

  v72 = sessionIdentifierCopy;
  if (v37)
  {
    v38 = v16;
    if (actionIdentifierCopy)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v39 = objc_alloc(MEMORY[0x277CCA9B8]);
    v40 = *MEMORY[0x277D4ACD0];
    v79 = *MEMORY[0x277CCA450];
    v71 = actionIdentifierCopy;
    v41 = sessionIdentifierCopy;
    v42 = MEMORY[0x277CCACA8];
    v43 = NSStringFromSelector(aSelector);
    configuration2 = [(SMSessionManagerState *)self->_state configuration];
    [configuration2 sessionID];
    v45 = v70 = self;
    uUIDString2 = [v45 UUIDString];
    v47 = [v42 stringWithFormat:@"%@, session identifier, %@, does not match sessionId from config, %@", v43, v41, uUIDString2];
    v80 = v47;
    v48 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v80 forKeys:&v79 count:1];
    v49 = [v39 initWithDomain:v40 code:7 userInfo:v48];

    actionIdentifierCopy = v71;
    self = v70;

    handlerCopy[2](handlerCopy, v49);
    v38 = v49;
    if (v71)
    {
      goto LABEL_16;
    }
  }

  v50 = objc_alloc(MEMORY[0x277CCA9B8]);
  v51 = *MEMORY[0x277D4ACD0];
  v77 = *MEMORY[0x277CCA450];
  v52 = actionIdentifierCopy;
  v53 = MEMORY[0x277CCACA8];
  v54 = NSStringFromSelector(aSelector);
  v55 = [v53 stringWithFormat:@"%@, missing action identifier", v54];
  v78 = v55;
  v56 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v78 forKeys:&v77 count:1];
  v57 = [v50 initWithDomain:v51 code:7 userInfo:v56];

  actionIdentifierCopy = v52;
  handlerCopy[2](handlerCopy, v57);
  v38 = v57;
LABEL_16:
  if (([actionIdentifierCopy isEqualToString:*MEMORY[0x277D4AC68]] & 1) != 0 || objc_msgSend(actionIdentifierCopy, "isEqualToString:", *MEMORY[0x277D4AC70]))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v58 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v86 = "[SMSessionManager respondToNotificationWithIdentifier:sessionIdentifier:actionIdentifier:handler:]";
        _os_log_impl(&dword_2304B3000, v58, OS_LOG_TYPE_INFO, "%s, executing code path for extend", buf, 0xCu);
      }
    }

    configuration3 = [(SMSessionManagerState *)self->_state configuration];
    sessionID2 = [configuration3 sessionID];
    [(SMSessionManager *)self respondToTriggerPromptForSessionID:sessionID2 response:2 handler:handlerCopy];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v61 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v86 = "[SMSessionManager respondToNotificationWithIdentifier:sessionIdentifier:actionIdentifier:handler:]";
        _os_log_impl(&dword_2304B3000, v61, OS_LOG_TYPE_INFO, "%s, action identifier to code path mapping is invalid", buf, 0xCu);
      }
    }

    v62 = objc_alloc(MEMORY[0x277CCA9B8]);
    v63 = *MEMORY[0x277D4ACD0];
    v75 = *MEMORY[0x277CCA450];
    v64 = actionIdentifierCopy;
    v65 = MEMORY[0x277CCACA8];
    v66 = NSStringFromSelector(aSelector);
    v67 = [v65 stringWithFormat:@"%@, action identifier to code path mapping is invalid", v66];
    v76 = v67;
    v68 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v76 forKeys:&v75 count:1];
    v69 = [v62 initWithDomain:v63 code:7 userInfo:v68];

    actionIdentifierCopy = v64;
    handlerCopy[2](handlerCopy, v69);
    v38 = v69;
  }

  sessionIdentifierCopy = v72;
  identifierCopy = v73;
LABEL_29:
}

- (void)onMessagesAppUninstalled
{
  queue = [(SMSessionManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__SMSessionManager_onMessagesAppUninstalled__block_invoke;
  block[3] = &unk_2788C4EA0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_onMessagesAppUninstalled
{
  v14 = *MEMORY[0x277D85DE8];
  state = [(SMSessionManager *)self state];
  isActiveState = [state isActiveState];

  if (isActiveState)
  {
    state2 = [(SMSessionManager *)self state];
    configuration = [state2 configuration];
    sessionID = [configuration sessionID];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __45__SMSessionManager__onMessagesAppUninstalled__block_invoke;
    v9[3] = &unk_2788C4730;
    v9[4] = self;
    [(SMSessionManager *)self _endSessionForSessionID:sessionID reason:10 handler:v9];
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      return;
    }

    state2 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(state2, OS_LOG_TYPE_DEBUG))
    {
      state3 = [(SMSessionManager *)self state];
      *buf = 136315394;
      v11 = "[SMSessionManager _onMessagesAppUninstalled]";
      v12 = 2112;
      v13 = state3;
      _os_log_debug_impl(&dword_2304B3000, state2, OS_LOG_TYPE_DEBUG, "SMSessionManager,%s,ignoring deletion notification in non-active state,%@", buf, 0x16u);
    }
  }
}

void __45__SMSessionManager__onMessagesAppUninstalled__block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) state];
    v6 = [v5 configuration];
    v7 = [v6 sessionID];
    v8 = 136315650;
    v9 = "[SMSessionManager _onMessagesAppUninstalled]_block_invoke";
    v10 = 2112;
    v11 = v7;
    v12 = 2112;
    v13 = v3;
    _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_DEFAULT, "SMSessionManager,%s,sessionID:%@, end session due to message app deletion with error,%@", &v8, 0x20u);
  }
}

- (void)onEmergencyCallStarted
{
  queue = [(SMSessionManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__SMSessionManager_onEmergencyCallStarted__block_invoke;
  block[3] = &unk_2788C4EA0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_onEmergencyCallStarted
{
  v6 = *MEMORY[0x277D85DE8];
  [(SMSessionManager *)self setIsEmergencyCallOngoing:1];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = 136446210;
      v5 = "[SMSessionManager _onEmergencyCallStarted]";
      _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_INFO, "%{public}s, emergency call started, tearing down workout timeouts", &v4, 0xCu);
    }
  }

  [(SMSessionManager *)self _tearDownWorkoutTimeouts];
}

- (void)onEmergencyCallEnded
{
  queue = [(SMSessionManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__SMSessionManager_onEmergencyCallEnded__block_invoke;
  block[3] = &unk_2788C4EA0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_onEmergencyCallEnded
{
  v30 = *MEMORY[0x277D85DE8];
  [(SMSessionManager *)self setIsEmergencyCallOngoing:0];
  state = [(SMSessionManager *)self state];
  activeDeviceIdentifier = [state activeDeviceIdentifier];
  messagingService = [(SMSessionManager *)self messagingService];
  deviceIdentifier = [messagingService deviceIdentifier];
  v7 = [activeDeviceIdentifier isEqual:deviceIdentifier];

  defaultsManager = [(SMSessionManager *)self defaultsManager];
  v9 = [defaultsManager objectForKey:@"RTDefaultsWorkoutOngoing"];
  bOOLValue = [v9 BOOLValue];

  if (v7 && (-[SMSessionManager state](self, "state"), v11 = objc_claimAutoreleasedReturnValue(), [v11 configuration], v12 = objc_claimAutoreleasedReturnValue(), v13 = (objc_msgSend(v12, "sessionType") != 4) | bOOLValue, v12, v11, (v13 & 1) == 0))
  {
    v21 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:20.0];
    [(SMSessionManager *)self _setupWorkoutTimeoutWithFireDate:v21];
    defaultsManager2 = [(SMSessionManager *)self defaultsManager];
    [defaultsManager2 setObject:v21 forKey:@"RTDefaultsSessionManagerWorkoutEmergencyContactNotificationTimerFireDate"];
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      if (v7)
      {
        v16 = @"YES";
      }

      else
      {
        v16 = @"NO";
      }

      state2 = [(SMSessionManager *)self state];
      configuration = [state2 configuration];
      *buf = 136446978;
      v23 = "[SMSessionManager _onEmergencyCallEnded]";
      if ([configuration sessionType] == 4)
      {
        v19 = @"YES";
      }

      else
      {
        v19 = @"NO";
      }

      v24 = 2112;
      if (bOOLValue)
      {
        v20 = @"YES";
      }

      else
      {
        v20 = @"NO";
      }

      v25 = v16;
      v26 = 2112;
      v27 = v19;
      v28 = 2112;
      v29 = v20;
      _os_log_debug_impl(&dword_2304B3000, v14, OS_LOG_TYPE_DEBUG, "%{public}s, device not eligible to time out the session, isActiveDevice, %@, sessionType is workout, %@, workoutOngoing, %@", buf, 0x2Au);
    }
  }
}

- (void)onHealthKitManagerNotification:(id)notification
{
  v15 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      name = [notificationCopy name];
      *buf = 136446466;
      v12 = "[SMSessionManager onHealthKitManagerNotification:]";
      v13 = 2114;
      v14 = name;
      _os_log_debug_impl(&dword_2304B3000, v5, OS_LOG_TYPE_DEBUG, "%{public}s, received RTHealthKitManager notification, %{public}@", buf, 0x16u);
    }
  }

  queue = [(SMSessionManager *)self queue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __51__SMSessionManager_onHealthKitManagerNotification___block_invoke;
  v9[3] = &unk_2788C4A70;
  v9[4] = self;
  v10 = notificationCopy;
  v7 = notificationCopy;
  dispatch_async(queue, v9);
}

- (void)_onHealthKitManagerNotification:(id)notification
{
  notificationCopy = notification;
  state = [(SMSessionManager *)self state];
  configuration = [state configuration];
  if ([configuration sessionType] != 4)
  {

    goto LABEL_9;
  }

  name = [notificationCopy name];
  v8 = +[(RTNotification *)RTHealthKitManagerWorkoutSnapshotUpdateNotification];
  v9 = [name isEqualToString:v8];

  if (v9)
  {
    defaultsManager = [(SMSessionManager *)self defaultsManager];
    v11 = [defaultsManager objectForKey:@"RTDefaultsWorkoutOngoing"];
    bOOLValue = [v11 BOOLValue];

    if (bOOLValue)
    {
      state2 = [(SMSessionManager *)self state];
      startMessageGUID = [state2 startMessageGUID];
      if (!startMessageGUID)
      {
LABEL_7:

        goto LABEL_9;
      }

      v15 = startMessageGUID;
      _canDeviceModifyState = [(SMSessionManager *)self _canDeviceModifyState];

      if (_canDeviceModifyState)
      {
        workoutTimeoutXPCTimerAlarm = [(SMSessionManager *)self workoutTimeoutXPCTimerAlarm];
        [(SMSessionManager *)self _invalidateTimer:workoutTimeoutXPCTimerAlarm];

        state2 = [(SMSessionManager *)self healthKitManager];
        v18[0] = MEMORY[0x277D85DD0];
        v18[1] = 3221225472;
        v18[2] = __52__SMSessionManager__onHealthKitManagerNotification___block_invoke;
        v18[3] = &unk_2788D3440;
        v19 = bOOLValue;
        v18[4] = self;
        [state2 fetchCurrentWorkoutSnapshotWithHandler:v18];
        goto LABEL_7;
      }
    }
  }

LABEL_9:
}

void __52__SMSessionManager__onHealthKitManagerNotification___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v14 = "[SMSessionManager _onHealthKitManagerNotification:]_block_invoke";
      v15 = 2114;
      v16 = v6;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "%{public}s, workout snapshot fetch failed due to, %{public}@", buf, 0x16u);
    }
  }

  else
  {
    v8 = objc_alloc(MEMORY[0x277D4AAA0]);
    v9 = [v5 sessionIdentifier];
    v7 = [v8 initWithSessionIdentifier:v9 activityType:objc_msgSend(v5 sessionType:"activityType") isWorkoutOngoing:objc_msgSend(v5 isFirstPartyWorkout:{"sessionType"), *(a1 + 40), objc_msgSend(v5, "isFirstPartyWorkout")}];

    v10 = *(a1 + 32);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __52__SMSessionManager__onHealthKitManagerNotification___block_invoke_568;
    v11[3] = &unk_2788C4730;
    v12 = 0;
    [v10 _updateSessionWithWorkoutSnapshot:v7 handler:v11];
  }
}

void __52__SMSessionManager__onHealthKitManagerNotification___block_invoke_568(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = *(a1 + 32);
      v5 = 136446466;
      v6 = "[SMSessionManager _onHealthKitManagerNotification:]_block_invoke";
      v7 = 2114;
      v8 = v4;
      _os_log_error_impl(&dword_2304B3000, v3, OS_LOG_TYPE_ERROR, "%{public}s, state update with new workout snapshot failed due to, %{public}@", &v5, 0x16u);
    }
  }
}

- (void)_setUpWorkoutTimeouts
{
  v19 = *MEMORY[0x277D85DE8];
  workoutTimeoutXPCTimerAlarm = [(SMSessionManager *)self workoutTimeoutXPCTimerAlarm];
  [(SMSessionManager *)self _invalidateTimer:workoutTimeoutXPCTimerAlarm];

  state = [(SMSessionManager *)self state];
  configuration = [state configuration];
  sessionStartDate = [configuration sessionStartDate];
  v7 = [sessionStartDate dateByAddingTimeInterval:20.0];

  defaultsManager = [(SMSessionManager *)self defaultsManager];
  v9 = [defaultsManager objectForKey:@"RTDefaultsInitiatorServiceWorkoutEndBufferTimerFireDate"];

  defaultsManager2 = [(SMSessionManager *)self defaultsManager];
  v11 = [defaultsManager2 objectForKey:@"RTDefaultsSessionManagerWorkoutEmergencyContactNotificationTimerFireDate"];

  if (v11 && [v11 compare:v7] == 1)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v12 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v17 = 136446210;
        v18 = "[SMSessionManager _setUpWorkoutTimeouts]";
        _os_log_debug_impl(&dword_2304B3000, v12, OS_LOG_TYPE_DEBUG, "%{public}s, workout end awaiting emergency contact notification timeout resumed", &v17, 0xCu);
      }
    }

    selfCopy3 = self;
    v14 = v11;
  }

  else if (v9 && [v9 compare:v7] == 1)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v15 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v17 = 136446210;
        v18 = "[SMSessionManager _setUpWorkoutTimeouts]";
        _os_log_debug_impl(&dword_2304B3000, v15, OS_LOG_TYPE_DEBUG, "%{public}s, workout end buffer resumed", &v17, 0xCu);
      }
    }

    selfCopy3 = self;
    v14 = v9;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v16 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        v17 = 136446210;
        v18 = "[SMSessionManager _setUpWorkoutTimeouts]";
        _os_log_debug_impl(&dword_2304B3000, v16, OS_LOG_TYPE_DEBUG, "%{public}s, workout start timeout started", &v17, 0xCu);
      }
    }

    selfCopy3 = self;
    v14 = v7;
  }

  [(SMSessionManager *)selfCopy3 _setupWorkoutTimeoutWithFireDate:v14];
}

- (void)_setupWorkoutTimeoutWithFireDate:(id)date
{
  v19 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  objc_initWeak(&location, self);
  v5 = [RTXPCTimerAlarm alloc];
  queue = [(SMSessionManager *)self queue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __53__SMSessionManager__setupWorkoutTimeoutWithFireDate___block_invoke;
  v12[3] = &unk_2788C5908;
  objc_copyWeak(&v13, &location);
  v7 = [(RTXPCTimerAlarm *)v5 initWithIdentifier:@"com.apple.routined.safetyMonitor.sessionManager.workoutTimeout" queue:queue handler:v12];
  [(SMSessionManager *)self setWorkoutTimeoutXPCTimerAlarm:v7];

  workoutTimeoutXPCTimerAlarm = [(SMSessionManager *)self workoutTimeoutXPCTimerAlarm];
  v11 = 0;
  [workoutTimeoutXPCTimerAlarm fireWithDate:dateCopy error:&v11];
  v9 = v11;

  if (v9)
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446466;
      v16 = "[SMSessionManager _setupWorkoutTimeoutWithFireDate:]";
      v17 = 2114;
      v18 = v9;
      _os_log_fault_impl(&dword_2304B3000, v10, OS_LOG_TYPE_FAULT, "%{public}s workoutTimeoutXPCTimerAlarm fireWithDate failed with error, %{public}@", buf, 0x16u);
    }
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      goto LABEL_5;
    }

    v10 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v16 = "[SMSessionManager _setupWorkoutTimeoutWithFireDate:]";
      v17 = 2112;
      v18 = dateCopy;
      _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_INFO, "%{public}s, timer set with end date, %@", buf, 0x16u);
    }
  }

LABEL_5:
  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __53__SMSessionManager__setupWorkoutTimeoutWithFireDate___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained state];
  v2 = [v1 configuration];
  v3 = [v2 sessionID];
  [WeakRetained _endSessionForSessionID:v3 reason:8 handler:&__block_literal_global_573];
}

void __53__SMSessionManager__setupWorkoutTimeoutWithFireDate___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (v2)
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 136446466;
      v5 = "[SMSessionManager _setupWorkoutTimeoutWithFireDate:]_block_invoke_2";
      v6 = 2114;
      v7 = v2;
      _os_log_error_impl(&dword_2304B3000, v3, OS_LOG_TYPE_ERROR, "%{public}s, failed to end session due to error, %{public}@", &v4, 0x16u);
    }
  }
}

- (void)_tearDownWorkoutTimeouts
{
  workoutTimeoutXPCTimerAlarm = [(SMSessionManager *)self workoutTimeoutXPCTimerAlarm];
  [(SMSessionManager *)self _invalidateTimer:workoutTimeoutXPCTimerAlarm];

  defaultsManager = [(SMSessionManager *)self defaultsManager];
  [defaultsManager setObject:0 forKey:@"RTDefaultsInitiatorServiceWorkoutEndBufferTimerFireDate"];

  defaultsManager2 = [(SMSessionManager *)self defaultsManager];
  [defaultsManager2 setObject:0 forKey:@"RTDefaultsSessionManagerWorkoutEmergencyContactNotificationTimerFireDate"];
}

- (void)_updateSessionWithWorkoutSnapshot:(id)snapshot handler:(id)handler
{
  v34 = *MEMORY[0x277D85DE8];
  snapshotCopy = snapshot;
  handlerCopy = handler;
  state = [(SMSessionManager *)self state];
  configuration = [state configuration];

  state2 = [(SMSessionManager *)self state];
  v30 = [state2 mutableCopy];

  sessionWorkoutIdentifier = [configuration sessionWorkoutIdentifier];
  v31 = snapshotCopy;
  sessionIdentifier = [snapshotCopy sessionIdentifier];
  if (sessionWorkoutIdentifier != sessionIdentifier || (v13 = [configuration sessionWorkoutType], v13 != objc_msgSend(snapshotCopy, "activityType")))
  {

    goto LABEL_9;
  }

  sessionWorkoutMirrorType = [configuration sessionWorkoutMirrorType];
  sessionType = [snapshotCopy sessionType];

  if (sessionWorkoutMirrorType != sessionType)
  {
LABEL_9:
    v29 = objc_alloc(MEMORY[0x277D4AB78]);
    conversation = [configuration conversation];
    sessionID = [configuration sessionID];
    sessionStartDate = [configuration sessionStartDate];
    sessionType2 = [configuration sessionType];
    time = [configuration time];
    destination = [configuration destination];
    userResponseSafeDate = [configuration userResponseSafeDate];
    sessionSupportsHandoff = [configuration sessionSupportsHandoff];
    sosReceivers = [configuration sosReceivers];
    sessionIdentifier2 = [v31 sessionIdentifier];
    LOBYTE(v23) = sessionSupportsHandoff;
    v22 = [v29 initWithConversation:conversation sessionID:sessionID sessionStartDate:sessionStartDate sessionType:sessionType2 time:time destination:destination userResponseSafeDate:userResponseSafeDate sessionSupportsHandoff:v23 sosReceivers:sosReceivers sessionWorkoutIdentifier:sessionIdentifier2 sessionWorkoutType:objc_msgSend(v31 sessionWorkoutMirrorType:{"activityType"), objc_msgSend(v31, "sessionType")}];
    [v30 setConfiguration:v22];

    [(SMSessionManager *)self _performStateTransitionTo:v30 transitionType:1 handler:?];
    goto LABEL_10;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 136446210;
      v33 = "[SMSessionManager _updateSessionWithWorkoutSnapshot:handler:]";
      _os_log_impl(&dword_2304B3000, v16, OS_LOG_TYPE_INFO, "%{public}s, skipping session update due to identical workout snapshot", buf, 0xCu);
    }
  }

LABEL_10:
}

@end