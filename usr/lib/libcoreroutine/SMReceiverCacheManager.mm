@interface SMReceiverCacheManager
+ (id)receiverEventToString:(int64_t)string;
- (BOOL)shouldRetryCacheDownloadForError:(id)error;
- (BOOL)shouldRetryZoneShareAcceptanceForError:(id)error;
- (NSUUID)sessionID;
- (SMCache)phoneCache;
- (SMCache)watchCache;
- (SMReceiverCacheManager)initWithReceiverContact:(id)contact safetyCacheStore:(id)store defaultsManager:(id)manager queue:(id)queue messagingService:(id)service;
- (SMReceiverCacheManager)initWithSessionID:(id)d initiatorHandle:(id)handle safetyCacheStore:(id)store defaultsManager:(id)manager queue:(id)queue messagingService:(id)service;
- (SMReceiverCacheManagerDelegateProtocol)delegate;
- (SMReceiverSessionStatus)sessionStatus;
- (id)computeReceiverSessionMetrics;
- (id)getCachePersistenceAlarmDate;
- (int64_t)normalizedSMErrorForCacheDownloadError:(id)error;
- (void)_setupCloudKitFunction;
- (void)acceptShareInvitation:(int64_t)invitation;
- (void)cachePersistenceStartTimer;
- (void)cachePersistenceStopTimer;
- (void)computeResponseModality:(id)modality completionHandler:(id)handler;
- (void)copyKeyReleaseMessageParameters:(id)parameters;
- (void)copySessionStartMessageParameters:(id)parameters;
- (void)decryptAndStoreSafetyCacheDataWithPhoneCacheData:(id)data watchCacheData:(id)cacheData userInitiatedDownload:(BOOL)download metricsDict:(id *)dict;
- (void)deleteReceiverContactFromStore:(unint64_t)store;
- (void)fetchSafetyCacheData:(int64_t)data;
- (void)onCacheDownloadResult:(BOOL)result userInitiatedDownload:(BOOL)download withError:(id)error;
- (void)onCachePersistenceExpiry;
- (void)onCacheUpdatedMessageReceived:(id)received;
- (void)onEstimatedEndTimeUpdateMessageReceived:(id)received;
- (void)onKeyReleaseInfoMessageReceived:(id)received;
- (void)onKeyReleaseMessageReceived:(id)received;
- (void)onLowPowerModeWarningStateUpdateMessageReceived:(id)received;
- (void)onSessionEndMessageReceived:(id)received;
- (void)onSessionStartInfoMessageReceived:(id)received;
- (void)onSessionStartMessageReceived:(id)received;
- (void)onSessionStatusLoadedFromDisk;
- (void)onShareInvitationAcceptenceResult:(BOOL)result withError:(id)error;
- (void)onUserCacheDownloadRequest;
- (void)onViewingSessionDetails;
- (void)requestMissingKeyReleaseInfo;
- (void)startCacheDownloadTimeoutTimer;
- (void)startMissingKeyReleaseTimer;
- (void)stopCacheDownloadTimeoutTimer;
- (void)stopMissingKeyReleaseTimer;
- (void)storeReceiverContactInStore:(unint64_t)store;
- (void)transitionFromActiveToCleanupDueToEvent:(int64_t)event;
- (void)transitionFromActiveToMissingKeyReleaseInfoDueToEvent:(int64_t)event;
- (void)transitionFromActiveToTriggeredDueToEvent:(int64_t)event;
- (void)transitionFromCacheDownloadFailedToCachePersistenceDueToEvent:(int64_t)event;
- (void)transitionFromCacheDownloadFailedToCacheReleasedDueToEvent:(int64_t)event;
- (void)transitionFromCacheDownloadFailedToCleanupDueToEvent:(int64_t)event;
- (void)transitionFromCachePersistenceToCleanupDueToEvent:(int64_t)event;
- (void)transitionFromCacheReleasedToCacheDownloadFailedDueToEvent:(int64_t)event;
- (void)transitionFromCacheReleasedToCachePersistenceDueToEvent:(int64_t)event;
- (void)transitionFromCacheReleasedToCleanupDueToEvent:(int64_t)event;
- (void)transitionFromInitializingToActiveDueToEvent:(int64_t)event;
- (void)transitionFromInitializingToCacheDownloadFailedDueToEvent:(int64_t)event;
- (void)transitionFromInitializingToCachePersistenceDueToEvent:(int64_t)event;
- (void)transitionFromInitializingToCacheReleasedDueToEvent:(int64_t)event;
- (void)transitionFromInitializingToCleanupDueToEvent:(int64_t)event;
- (void)transitionFromInitializingToMissingKeyReleaseInfoDueToEvent:(int64_t)event;
- (void)transitionFromInitializingToMissingSessionInfoDueToEvent:(int64_t)event;
- (void)transitionFromInitializingToTriggeredDueToEvent:(int64_t)event;
- (void)transitionFromMissingKeyReleaseInfoToCleanupDueToEvent:(int64_t)event;
- (void)transitionFromMissingKeyReleaseInfoToTriggeredDueToEvent:(int64_t)event;
- (void)transitionFromMissingSessionInfoToCleanupDueToEvent:(int64_t)event;
- (void)transitionFromMissingSessionInfoToTriggeredDueToEvent:(int64_t)event;
- (void)transitionFromTriggeredToCacheReleasedDueToEvent:(int64_t)event;
- (void)transitionFromTriggeredToCleanupDueToEvent:(int64_t)event;
- (void)transitionToState:(int64_t)state event:(int64_t)event;
- (void)updateReceiverContactInStore;
@end

@implementation SMReceiverCacheManager

- (SMReceiverCacheManager)initWithSessionID:(id)d initiatorHandle:(id)handle safetyCacheStore:(id)store defaultsManager:(id)manager queue:(id)queue messagingService:(id)service
{
  dCopy = d;
  handleCopy = handle;
  storeCopy = store;
  managerCopy = manager;
  queueCopy = queue;
  serviceCopy = service;
  if (!dCopy)
  {
    v25 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    v32 = 0;
    v26 = "Invalid parameter not satisfying: sessionID";
    v27 = &v32;
LABEL_14:
    _os_log_error_impl(&dword_2304B3000, v25, OS_LOG_TYPE_ERROR, v26, v27, 2u);
    goto LABEL_15;
  }

  if (!handleCopy)
  {
    v25 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    v31 = 0;
    v26 = "Invalid parameter not satisfying: initiatorHandle";
    v27 = &v31;
    goto LABEL_14;
  }

  if (!storeCopy)
  {
    v25 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    v30 = 0;
    v26 = "Invalid parameter not satisfying: safetyCacheStore";
    v27 = &v30;
    goto LABEL_14;
  }

  if (!queueCopy)
  {
    v25 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v26 = "Invalid parameter not satisfying: queue";
      v27 = buf;
      goto LABEL_14;
    }

LABEL_15:

    selfCopy = 0;
    goto LABEL_16;
  }

  v20 = [objc_alloc(MEMORY[0x277D4AB58]) initWithIdentifier:0 sessionID:dCopy initiatorHandle:handleCopy];
  [v20 setSessionState:1];
  v21 = objc_alloc(MEMORY[0x277D4AB48]);
  v22 = objc_opt_new();
  v23 = [v21 initWithIdentifier:v22 syncDate:0 phoneCache:0 watchCache:0 sessionStatus:v20 allowReadToken:0 safetyCacheKey:0.0 shareURL:-1.0 participantID:0 sharingInvitationData:0 numCacheDownloads:0 numSuccessfulCacheDownloads:0 maxPhoneCacheSize:0 maxWatchCacheSize:0 maxLocationsInPhoneCacheTrace:0 maxLocationsInWatchCacheTrace:0 timeTillCacheRelease:0 timeTillFirstSuccessfulCacheDownload:0 sessionID:dCopy firstDetailViewSessionState:0 lastDetailViewSessionState:0 phoneMaxWorkoutEvents:0 watchMaxWorkoutEvents:0];

  self = [(SMReceiverCacheManager *)self initWithReceiverContact:v23 safetyCacheStore:storeCopy defaultsManager:managerCopy queue:queueCopy messagingService:serviceCopy];
  selfCopy = self;
LABEL_16:

  return selfCopy;
}

- (SMReceiverCacheManager)initWithReceiverContact:(id)contact safetyCacheStore:(id)store defaultsManager:(id)manager queue:(id)queue messagingService:(id)service
{
  contactCopy = contact;
  storeCopy = store;
  managerCopy = manager;
  queueCopy = queue;
  serviceCopy = service;
  if (!contactCopy)
  {
    v20 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    *buf = 0;
    v21 = "Invalid parameter not satisfying: receiverContact";
LABEL_13:
    _os_log_error_impl(&dword_2304B3000, v20, OS_LOG_TYPE_ERROR, v21, buf, 2u);
    goto LABEL_14;
  }

  if (!storeCopy)
  {
    v20 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    *buf = 0;
    v21 = "Invalid parameter not satisfying: safetyCacheStore";
    goto LABEL_13;
  }

  if (!queueCopy)
  {
    v20 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v21 = "Invalid parameter not satisfying: queue";
      goto LABEL_13;
    }

LABEL_14:

    selfCopy = 0;
    goto LABEL_15;
  }

  v24.receiver = self;
  v24.super_class = SMReceiverCacheManager;
  v17 = [(SMReceiverCacheManager *)&v24 init];
  p_isa = &v17->super.isa;
  if (v17)
  {
    objc_storeStrong(&v17->_receiverContact, contact);
    objc_storeStrong(p_isa + 8, store);
    objc_storeStrong(p_isa + 9, manager);
    objc_storeStrong(p_isa + 10, queue);
    [p_isa _setupCloudKitFunction];
    objc_storeStrong(p_isa + 14, service);
  }

  self = p_isa;
  selfCopy = self;
LABEL_15:

  return selfCopy;
}

- (NSUUID)sessionID
{
  receiverContact = [(SMReceiverCacheManager *)self receiverContact];
  sessionUUID = [receiverContact sessionUUID];

  return sessionUUID;
}

- (SMReceiverSessionStatus)sessionStatus
{
  receiverContact = [(SMReceiverCacheManager *)self receiverContact];
  sessionStatus = [receiverContact sessionStatus];

  return sessionStatus;
}

- (SMCache)phoneCache
{
  receiverContact = [(SMReceiverCacheManager *)self receiverContact];
  phoneCache = [receiverContact phoneCache];

  return phoneCache;
}

- (SMCache)watchCache
{
  receiverContact = [(SMReceiverCacheManager *)self receiverContact];
  watchCache = [receiverContact watchCache];

  return watchCache;
}

- (void)onSessionStatusLoadedFromDisk
{
  v56 = *MEMORY[0x277D85DE8];
  [(SMReceiverCacheManager *)self setReceiverContactStored:1];
  receiverContact = [(SMReceiverCacheManager *)self receiverContact];
  sessionStatus = [receiverContact sessionStatus];
  sessionStartDate = [sessionStatus sessionStartDate];
  [sessionStartDate timeIntervalSinceNow];
  if (fabs(v7) > 604800.0)
  {
    receiverContact2 = [(SMReceiverCacheManager *)self receiverContact];
    sessionStatus2 = [receiverContact2 sessionStatus];
    sessionState = [sessionStatus2 sessionState];

    if (sessionState == 5)
    {
      goto LABEL_15;
    }

    v11 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sessionID = [(SMReceiverCacheManager *)self sessionID];
      v32 = objc_opt_class();
      v33 = NSStringFromClass(v32);
      v34 = NSStringFromSelector(a2);
      v48 = 138412802;
      v49 = sessionID;
      v50 = 2112;
      v51 = v33;
      v52 = 2112;
      v53 = v34;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "#SafetyCache,Receiver,sessionID:%@,%@,%@,forcefully cleanup lingering session", &v48, 0x20u);
    }

    receiverContact3 = [(SMReceiverCacheManager *)self receiverContact];
    sessionStatus3 = [receiverContact3 sessionStatus];
    if ([sessionStatus3 sessionState] == 4)
    {
      receiverContact4 = [(SMReceiverCacheManager *)self receiverContact];
      phoneCache = [receiverContact4 phoneCache];
      if (phoneCache)
      {

LABEL_12:
        receiverContact = [(SMReceiverCacheManager *)self receiverContact];
        sessionStatus4 = [receiverContact sessionStatus];
        sessionStatus = sessionStatus4;
        v17 = 5;
        goto LABEL_13;
      }

      receiverContact5 = [(SMReceiverCacheManager *)self receiverContact];
      watchCache = [receiverContact5 watchCache];

      if (watchCache)
      {
        goto LABEL_12;
      }
    }

    else
    {
    }

    receiverContact = [(SMReceiverCacheManager *)self receiverContact];
    sessionStatus4 = [receiverContact sessionStatus];
    sessionStatus = sessionStatus4;
    v17 = 6;
LABEL_13:
    [sessionStatus4 setSessionState:v17];
    goto LABEL_14;
  }

LABEL_14:
LABEL_15:
  receiverContact6 = [(SMReceiverCacheManager *)self receiverContact];
  sessionStatus5 = [receiverContact6 sessionStatus];
  sessionState2 = [sessionStatus5 sessionState];

  v23 = [MEMORY[0x277D4AB58] convertSessionStateToString:sessionState2];
  v24 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    sessionID2 = [(SMReceiverCacheManager *)self sessionID];
    v26 = objc_opt_class();
    v27 = NSStringFromClass(v26);
    v28 = NSStringFromSelector(a2);
    v48 = 138413058;
    v49 = sessionID2;
    v50 = 2112;
    v51 = v27;
    v52 = 2112;
    v53 = v28;
    v54 = 2112;
    v55 = v23;
    _os_log_impl(&dword_2304B3000, v24, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Receiver,sessionID:%@,%@,%@,transitioning to state:%@", &v48, 0x2Au);
  }

  if (sessionState2 > 5)
  {
    if (sessionState2 <= 7)
    {
      if (sessionState2 == 6)
      {
        [(SMReceiverCacheManager *)self transitionFromInitializingToCleanupDueToEvent:1];
      }

      else
      {
        [(SMReceiverCacheManager *)self transitionFromInitializingToMissingSessionInfoDueToEvent:1];
      }

      goto LABEL_39;
    }

    if (sessionState2 == 8)
    {
      [(SMReceiverCacheManager *)self transitionFromInitializingToMissingKeyReleaseInfoDueToEvent:1];
      goto LABEL_39;
    }

    if (sessionState2 == 9)
    {
      [(SMReceiverCacheManager *)self transitionFromInitializingToCacheDownloadFailedDueToEvent:1];
      goto LABEL_39;
    }
  }

  else
  {
    if (sessionState2 > 3)
    {
      if (sessionState2 == 4)
      {
        [(SMReceiverCacheManager *)self transitionFromInitializingToCacheReleasedDueToEvent:1];
      }

      else
      {
        [(SMReceiverCacheManager *)self transitionFromInitializingToCachePersistenceDueToEvent:1];
      }

      goto LABEL_39;
    }

    if (sessionState2 == 2)
    {
      [(SMReceiverCacheManager *)self transitionFromInitializingToActiveDueToEvent:1];
      goto LABEL_39;
    }

    if (sessionState2 == 3)
    {
      [(SMReceiverCacheManager *)self transitionFromInitializingToTriggeredDueToEvent:1];
      goto LABEL_39;
    }
  }

  v29 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    sessionID3 = [(SMReceiverCacheManager *)self sessionID];
    v36 = objc_opt_class();
    v37 = NSStringFromClass(v36);
    v38 = NSStringFromSelector(a2);
    receiverContact7 = [(SMReceiverCacheManager *)self receiverContact];
    sessionStatus6 = [receiverContact7 sessionStatus];
    sessionState3 = [sessionStatus6 sessionState];
    v48 = 138413058;
    v49 = sessionID3;
    v50 = 2112;
    v51 = v37;
    v52 = 2112;
    v53 = v38;
    v54 = 1024;
    LODWORD(v55) = sessionState3;
    _os_log_error_impl(&dword_2304B3000, v29, OS_LOG_TYPE_ERROR, "#SafetyCache,Receiver,sessionID:%@,%@,%@,unknown or unhandled cached state %d", &v48, 0x26u);
  }

  v30 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
  {
    v42 = objc_opt_class();
    v43 = NSStringFromClass(v42);
    v44 = NSStringFromSelector(a2);
    receiverContact8 = [(SMReceiverCacheManager *)self receiverContact];
    sessionStatus7 = [receiverContact8 sessionStatus];
    sessionState4 = [sessionStatus7 sessionState];
    v48 = 138412802;
    v49 = v43;
    v50 = 2112;
    v51 = v44;
    v52 = 1024;
    LODWORD(v53) = sessionState4;
    _os_log_fault_impl(&dword_2304B3000, v30, OS_LOG_TYPE_FAULT, "#SafetyCache,Receiver,%@,%@,unknown or unhandled cached state %d", &v48, 0x1Cu);
  }

LABEL_39:
}

- (void)onSessionStartMessageReceived:(id)received
{
  v26 = *MEMORY[0x277D85DE8];
  receivedCopy = received;
  if (!receivedCopy)
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v18) = 0;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: startMessage", &v18, 2u);
    }

    goto LABEL_8;
  }

  receiverContact = [(SMReceiverCacheManager *)self receiverContact];
  sessionStatus = [receiverContact sessionStatus];
  sessionState = [sessionStatus sessionState];

  if (sessionState != 1)
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sessionID = [(SMReceiverCacheManager *)self sessionID];
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v13 = NSStringFromSelector(a2);
      v14 = MEMORY[0x277D4AB58];
      receiverContact2 = [(SMReceiverCacheManager *)self receiverContact];
      sessionStatus2 = [receiverContact2 sessionStatus];
      v17 = [v14 convertSessionStateToString:{objc_msgSend(sessionStatus2, "sessionState")}];
      v18 = 138413058;
      v19 = sessionID;
      v20 = 2112;
      v21 = v12;
      v22 = 2112;
      v23 = v13;
      v24 = 2112;
      v25 = v17;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "#SafetyCache,Receiver,sessionID:%@,%@,%@,received start message outside of Initializing state,state,%@", &v18, 0x2Au);
    }

LABEL_8:

    goto LABEL_9;
  }

  [(SMReceiverCacheManager *)self copySessionStartMessageParameters:receivedCopy];
  [(SMReceiverCacheManager *)self transitionToState:2 event:2];
LABEL_9:
}

- (void)onSessionStartInfoMessageReceived:(id)received
{
  v20 = *MEMORY[0x277D85DE8];
  receivedCopy = received;
  if (!receivedCopy)
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v14) = 0;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: startInfoMessage", &v14, 2u);
    }

    goto LABEL_8;
  }

  receiverContact = [(SMReceiverCacheManager *)self receiverContact];
  sessionStatus = [receiverContact sessionStatus];
  sessionState = [sessionStatus sessionState];

  if (sessionState != 7)
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      sessionID = [(SMReceiverCacheManager *)self sessionID];
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v13 = NSStringFromSelector(a2);
      v14 = 138412802;
      v15 = sessionID;
      v16 = 2112;
      v17 = v12;
      v18 = 2112;
      v19 = v13;
      _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Receiver,sessionID:%@,%@,%@,received SMSessionStartInfoMessage without requesting for it", &v14, 0x20u);
    }

LABEL_8:

    goto LABEL_9;
  }

  [(SMReceiverCacheManager *)self copySessionStartMessageParameters:receivedCopy];
  [(SMReceiverCacheManager *)self transitionToState:3 event:11];
LABEL_9:
}

- (void)copySessionStartMessageParameters:(id)parameters
{
  v65 = *MEMORY[0x277D85DE8];
  parametersCopy = parameters;
  v6 = parametersCopy;
  if (parametersCopy)
  {
    sessionType = [parametersCopy sessionType];
    receiverContact = [(SMReceiverCacheManager *)self receiverContact];
    sessionStatus = [receiverContact sessionStatus];
    [sessionStatus setSessionType:sessionType];

    date = [v6 date];
    receiverContact2 = [(SMReceiverCacheManager *)self receiverContact];
    sessionStatus2 = [receiverContact2 sessionStatus];
    [sessionStatus2 setSessionStartDate:date];

    estimatedEndTime = [v6 estimatedEndTime];
    receiverContact3 = [(SMReceiverCacheManager *)self receiverContact];
    sessionStatus3 = [receiverContact3 sessionStatus];
    [sessionStatus3 setEstimatedEndDate:estimatedEndTime];

    coarseEstimatedEndTime = [v6 coarseEstimatedEndTime];
    estimatedEndTime2 = coarseEstimatedEndTime;
    if (!coarseEstimatedEndTime)
    {
      estimatedEndTime2 = [v6 estimatedEndTime];
    }

    receiverContact4 = [(SMReceiverCacheManager *)self receiverContact];
    sessionStatus4 = [receiverContact4 sessionStatus];
    [sessionStatus4 setCoarseEstimatedEndDate:estimatedEndTime2];

    if (!coarseEstimatedEndTime)
    {
    }

    destinationType = [v6 destinationType];
    receiverContact5 = [(SMReceiverCacheManager *)self receiverContact];
    sessionStatus5 = [receiverContact5 sessionStatus];
    [sessionStatus5 setDestinationType:destinationType];

    destinationMapItem = [v6 destinationMapItem];
    receiverContact6 = [(SMReceiverCacheManager *)self receiverContact];
    sessionStatus6 = [receiverContact6 sessionStatus];
    [sessionStatus6 setDestinationMapItem:destinationMapItem];

    lowPowerModeWarningState = [v6 lowPowerModeWarningState];
    receiverContact7 = [(SMReceiverCacheManager *)self receiverContact];
    sessionStatus7 = [receiverContact7 sessionStatus];
    [sessionStatus7 setLowPowerModeWarningState:lowPowerModeWarningState];

    messagingService = [(SMReceiverCacheManager *)self messagingService];
    invitationTokenDict = [v6 invitationTokenDict];
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __60__SMReceiverCacheManager_copySessionStartMessageParameters___block_invoke;
    v46[3] = &unk_2788CDA38;
    v46[4] = self;
    v48 = a2;
    v31 = v6;
    v47 = v31;
    [messagingService findObjectForMyAccountFromDict:invitationTokenDict withHandler:v46];

    v32 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      sessionID = [(SMReceiverCacheManager *)self sessionID];
      v33 = objc_opt_class();
      v44 = NSStringFromClass(v33);
      v43 = NSStringFromSelector(a2);
      date2 = [v31 date];
      stringFromDate = [date2 stringFromDate];
      estimatedEndTime3 = [v31 estimatedEndTime];
      stringFromDate2 = [estimatedEndTime3 stringFromDate];
      coarseEstimatedEndTime2 = [v31 coarseEstimatedEndTime];
      stringFromDate3 = [coarseEstimatedEndTime2 stringFromDate];
      sessionType2 = [v31 sessionType];
      destinationType2 = [v31 destinationType];
      *buf = 138414082;
      v50 = sessionID;
      v51 = 2112;
      v52 = v44;
      v53 = 2112;
      v54 = v43;
      v55 = 2112;
      v56 = stringFromDate;
      v57 = 2112;
      v58 = stringFromDate2;
      v59 = 2112;
      v60 = stringFromDate3;
      v61 = 1024;
      v62 = sessionType2;
      v63 = 1024;
      v64 = destinationType2;
      _os_log_impl(&dword_2304B3000, v32, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Receiver,sessionID:%@,%@,%@,sessionStartDate,%@,estimatedEndDate,%@,coarseEstimatedEndDate,%@,sessionType,%d,destinationType,%d", buf, 0x4Au);
    }
  }

  else
  {
    v41 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v41, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: startMessage", buf, 2u);
    }
  }
}

void __60__SMReceiverCacheManager_copySessionStartMessageParameters___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v40 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5 && v6)
  {
    v8 = [*(a1 + 32) receiverContact];
    v9 = [v8 sessionStatus];
    [v9 setReceiverHandle:v5];

    v10 = v7;
    v11 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [*(a1 + 32) sessionID];
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      v15 = NSStringFromSelector(*(a1 + 48));
      v30 = 138413314;
      v31 = v12;
      v32 = 2112;
      v33 = v14;
      v34 = 2112;
      v35 = v15;
      v36 = 2112;
      v37 = v5;
      v38 = 2112;
      v39 = v10;
      _os_log_impl(&dword_2304B3000, v11, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Receiver,sessionID:%@,%@,%@,found handle %@ with invitationToken %@", &v30, 0x34u);
    }
  }

  else
  {
    v16 = [*(a1 + 40) invitationTokenDict];
    v17 = [v16 allKeys];
    v11 = [v17 firstObject];

    v18 = [*(a1 + 40) invitationTokenDict];
    v10 = [v18 objectForKey:v11];

    v19 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v26 = [*(a1 + 32) sessionID];
      v27 = objc_opt_class();
      v28 = NSStringFromClass(v27);
      v29 = NSStringFromSelector(*(a1 + 48));
      v30 = 138413314;
      v31 = v26;
      v32 = 2112;
      v33 = v28;
      v34 = 2112;
      v35 = v29;
      v36 = 2112;
      v37 = v11;
      v38 = 2112;
      v39 = v10;
      _os_log_error_impl(&dword_2304B3000, v19, OS_LOG_TYPE_ERROR, "#SafetyCache,Receiver,sessionID:%@,%@,%@,unable to find handle for my account,assuming first entry is for me with handle %@ and invitationToken %@", &v30, 0x34u);
    }
  }

  v20 = [v10 sharingInvitationData];
  v21 = [*(a1 + 32) receiverContact];
  [v21 setSharingInvitationData:v20];

  v22 = [v10 shareURL];
  v23 = [*(a1 + 32) receiverContact];
  [v23 setShareURL:v22];

  v24 = [v10 participantID];
  v25 = [*(a1 + 32) receiverContact];
  [v25 setParticipantID:v24];
}

- (void)onShareInvitationAcceptenceResult:(BOOL)result withError:(id)error
{
  resultCopy = result;
  v56 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  receiverContact = [(SMReceiverCacheManager *)self receiverContact];
  sessionStatus = [receiverContact sessionStatus];
  isSessionOngoing = [sessionStatus isSessionOngoing];

  if (isSessionOngoing)
  {
    if (resultCopy)
    {
      [(SMReceiverCacheManager *)self setZoneShareRetryCount:0];
      v11 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        sessionID = [(SMReceiverCacheManager *)self sessionID];
        v13 = objc_opt_class();
        v14 = NSStringFromClass(v13);
        v15 = NSStringFromSelector(a2);
        v44 = 138412802;
        v45 = sessionID;
        v46 = 2112;
        v47 = v14;
        v48 = 2112;
        v49 = v15;
        _os_log_impl(&dword_2304B3000, v11, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Receiver,sessionID:%@,%@,%@,successfully accepted zone share", &v44, 0x20u);
      }

      receiverContact2 = [(SMReceiverCacheManager *)self receiverContact];
      sessionStatus2 = [receiverContact2 sessionStatus];
      [sessionStatus2 setZoneShareAccepted:1];

      v18 = [MEMORY[0x277CBEAA8] now];
      receiverContact3 = [(SMReceiverCacheManager *)self receiverContact];
      sessionStatus3 = [receiverContact3 sessionStatus];
      [sessionStatus3 setLastUpdateDate:v18];

      if ([(SMReceiverCacheManager *)self safetyCacheFetchPending])
      {
        [(SMReceiverCacheManager *)self fetchSafetyCacheData:3];
      }

      delegate = [(SMReceiverCacheManager *)self delegate];
      sessionID2 = [(SMReceiverCacheManager *)self sessionID];
      sessionStatus4 = [(SMReceiverCacheManager *)self sessionStatus];
      [delegate sessionStatusChanged:sessionID2 status:sessionStatus4];

      [(SMReceiverCacheManager *)self updateReceiverContactInStore];
    }

    else
    {
      v33 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        sessionID3 = [(SMReceiverCacheManager *)self sessionID];
        v41 = objc_opt_class();
        v42 = NSStringFromClass(v41);
        v43 = NSStringFromSelector(a2);
        v44 = 138413058;
        v45 = sessionID3;
        v46 = 2112;
        v47 = v42;
        v48 = 2112;
        v49 = v43;
        v50 = 2112;
        v51 = errorCopy;
        _os_log_error_impl(&dword_2304B3000, v33, OS_LOG_TYPE_ERROR, "#SafetyCache,Receiver,sessionID:%@,%@,%@,failed to accept zone share with error %@", &v44, 0x2Au);
      }

      if ([(SMReceiverCacheManager *)self zoneShareRetryCount]<= 1 && [(SMReceiverCacheManager *)self shouldRetryZoneShareAcceptanceForError:errorCopy])
      {
        [(SMReceiverCacheManager *)self setZoneShareRetryCount:[(SMReceiverCacheManager *)self zoneShareRetryCount]+ 1];
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v34 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
          if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
          {
            sessionID4 = [(SMReceiverCacheManager *)self sessionID];
            v36 = objc_opt_class();
            v37 = NSStringFromClass(v36);
            v38 = NSStringFromSelector(a2);
            zoneShareRetryCount = [(SMReceiverCacheManager *)self zoneShareRetryCount];
            v44 = 138413058;
            v45 = sessionID4;
            v46 = 2112;
            v47 = v37;
            v48 = 2112;
            v49 = v38;
            v50 = 1024;
            LODWORD(v51) = zoneShareRetryCount;
            _os_log_impl(&dword_2304B3000, v34, OS_LOG_TYPE_INFO, "#SafetyCache,Receiver,sessionID:%@,%@,%@,retry accept zone share,attempt:%d", &v44, 0x26u);
          }
        }

        [(SMReceiverCacheManager *)self acceptShareInvitation:14];
      }

      else
      {
        [(SMReceiverCacheManager *)self setZoneShareRetryCount:0];
      }
    }
  }

  else
  {
    v24 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      sessionID5 = [(SMReceiverCacheManager *)self sessionID];
      v26 = objc_opt_class();
      v27 = NSStringFromClass(v26);
      v28 = NSStringFromSelector(a2);
      v29 = MEMORY[0x277D4AB58];
      receiverContact4 = [(SMReceiverCacheManager *)self receiverContact];
      sessionStatus5 = [receiverContact4 sessionStatus];
      v32 = [v29 convertSessionStateToString:{objc_msgSend(sessionStatus5, "sessionState")}];
      v44 = 138413570;
      v45 = sessionID5;
      v46 = 2112;
      v47 = v27;
      v48 = 2112;
      v49 = v28;
      v50 = 2112;
      v51 = v32;
      v52 = 1024;
      v53 = resultCopy;
      v54 = 2112;
      v55 = errorCopy;
      _os_log_impl(&dword_2304B3000, v24, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Receiver,sessionID:%@,%@,%@,zone acceptence result returned outside of session,state,%@,success,%d,error,%@", &v44, 0x3Au);
    }
  }
}

- (void)onEstimatedEndTimeUpdateMessageReceived:(id)received
{
  v51 = *MEMORY[0x277D85DE8];
  receivedCopy = received;
  if (receivedCopy)
  {
    receiverContact = [(SMReceiverCacheManager *)self receiverContact];
    sessionStatus = [receiverContact sessionStatus];
    sessionState = [sessionStatus sessionState];

    if (sessionState == 2)
    {
      estimatedEndTime = [receivedCopy estimatedEndTime];
      receiverContact2 = [(SMReceiverCacheManager *)self receiverContact];
      sessionStatus2 = [receiverContact2 sessionStatus];
      [sessionStatus2 setEstimatedEndDate:estimatedEndTime];

      coarseEstimatedEndTime = [receivedCopy coarseEstimatedEndTime];
      estimatedEndTime2 = coarseEstimatedEndTime;
      if (!coarseEstimatedEndTime)
      {
        estimatedEndTime2 = [receivedCopy estimatedEndTime];
      }

      receiverContact3 = [(SMReceiverCacheManager *)self receiverContact];
      sessionStatus3 = [receiverContact3 sessionStatus];
      [sessionStatus3 setCoarseEstimatedEndDate:estimatedEndTime2];

      if (!coarseEstimatedEndTime)
      {
      }

      v16 = [MEMORY[0x277CBEAA8] now];
      receiverContact4 = [(SMReceiverCacheManager *)self receiverContact];
      sessionStatus4 = [receiverContact4 sessionStatus];
      [sessionStatus4 setLastUpdateDate:v16];

      v19 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        sessionID = [(SMReceiverCacheManager *)self sessionID];
        v21 = objc_opt_class();
        v22 = NSStringFromClass(v21);
        v23 = NSStringFromSelector(a2);
        estimatedEndTime3 = [receivedCopy estimatedEndTime];
        stringFromDate = [estimatedEndTime3 stringFromDate];
        coarseEstimatedEndTime2 = [receivedCopy coarseEstimatedEndTime];
        stringFromDate2 = [coarseEstimatedEndTime2 stringFromDate];
        v41 = 138413314;
        v42 = sessionID;
        v43 = 2112;
        v44 = v22;
        v45 = 2112;
        v46 = v23;
        v47 = 2112;
        v48 = stringFromDate;
        v49 = 2112;
        v50 = stringFromDate2;
        _os_log_impl(&dword_2304B3000, v19, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Receiver,sessionID:%@,%@,%@,estimatedEndDate,%@,coarseEstimatedEndDate,%@", &v41, 0x34u);
      }

      delegate = [(SMReceiverCacheManager *)self delegate];
      sessionID2 = [(SMReceiverCacheManager *)self sessionID];
      sessionStatus5 = [(SMReceiverCacheManager *)self sessionStatus];
      [delegate sessionStatusChanged:sessionID2 status:sessionStatus5];

      [(SMReceiverCacheManager *)self updateReceiverContactInStore];
    }

    else
    {
      v32 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        sessionID3 = [(SMReceiverCacheManager *)self sessionID];
        v34 = objc_opt_class();
        v35 = NSStringFromClass(v34);
        v36 = NSStringFromSelector(a2);
        v37 = MEMORY[0x277D4AB58];
        receiverContact5 = [(SMReceiverCacheManager *)self receiverContact];
        sessionStatus6 = [receiverContact5 sessionStatus];
        v40 = [v37 convertSessionStateToString:{objc_msgSend(sessionStatus6, "sessionState")}];
        v41 = 138413058;
        v42 = sessionID3;
        v43 = 2112;
        v44 = v35;
        v45 = 2112;
        v46 = v36;
        v47 = 2112;
        v48 = v40;
        _os_log_error_impl(&dword_2304B3000, v32, OS_LOG_TYPE_ERROR, "#SafetyCache,Receiver,sessionID:%@,%@,%@,received estimated end time update message outside of Active state,state,%@", &v41, 0x2Au);
      }
    }
  }

  else
  {
    v31 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v41) = 0;
      _os_log_error_impl(&dword_2304B3000, v31, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: estimatedEndTimeUpdateMessage", &v41, 2u);
    }
  }
}

- (void)onLowPowerModeWarningStateUpdateMessageReceived:(id)received
{
  v42 = *MEMORY[0x277D85DE8];
  receivedCopy = received;
  receiverContact = [(SMReceiverCacheManager *)self receiverContact];
  sessionStatus = [receiverContact sessionStatus];
  if ([sessionStatus sessionState] == 3)
  {
    goto LABEL_4;
  }

  receiverContact2 = [(SMReceiverCacheManager *)self receiverContact];
  sessionStatus2 = [receiverContact2 sessionStatus];
  if ([sessionStatus2 sessionState] == 4)
  {

LABEL_4:
LABEL_5:
    lowPowerModeWarningState = [receivedCopy lowPowerModeWarningState];
    receiverContact3 = [(SMReceiverCacheManager *)self receiverContact];
    sessionStatus3 = [receiverContact3 sessionStatus];
    [sessionStatus3 setLowPowerModeWarningState:lowPowerModeWarningState];

    v13 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      sessionID = [(SMReceiverCacheManager *)self sessionID];
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      v17 = NSStringFromSelector(a2);
      v18 = [MEMORY[0x277D4AAB0] convertLowPowerModeWarningStateToString:{objc_msgSend(receivedCopy, "lowPowerModeWarningState")}];
      v34 = 138413058;
      v35 = sessionID;
      v36 = 2112;
      v37 = v16;
      v38 = 2112;
      v39 = v17;
      v40 = 2112;
      v41 = v18;
      _os_log_impl(&dword_2304B3000, v13, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Receiver,sessionID:%@,%@,%@,message.lowPowerModeWarningState %@", &v34, 0x2Au);
    }

    delegate = [(SMReceiverCacheManager *)self delegate];
    sessionID2 = [(SMReceiverCacheManager *)self sessionID];
    sessionStatus4 = [(SMReceiverCacheManager *)self sessionStatus];
    [delegate sessionStatusChanged:sessionID2 status:sessionStatus4];

    [(SMReceiverCacheManager *)self updateReceiverContactInStore];
    goto LABEL_8;
  }

  receiverContact4 = [(SMReceiverCacheManager *)self receiverContact];
  sessionStatus5 = [receiverContact4 sessionStatus];
  sessionState = [sessionStatus5 sessionState];

  if (sessionState == 2)
  {
    goto LABEL_5;
  }

  v25 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    sessionID3 = [(SMReceiverCacheManager *)self sessionID];
    v27 = objc_opt_class();
    v28 = NSStringFromClass(v27);
    v29 = NSStringFromSelector(a2);
    v30 = MEMORY[0x277D4AB58];
    receiverContact5 = [(SMReceiverCacheManager *)self receiverContact];
    sessionStatus6 = [receiverContact5 sessionStatus];
    v33 = [v30 convertSessionStateToString:{objc_msgSend(sessionStatus6, "sessionState")}];
    v34 = 138413058;
    v35 = sessionID3;
    v36 = 2112;
    v37 = v28;
    v38 = 2112;
    v39 = v29;
    v40 = 2112;
    v41 = v33;
    _os_log_error_impl(&dword_2304B3000, v25, OS_LOG_TYPE_ERROR, "#SafetyCache,Receiver,sessionID:%@,%@,%@,received low power mode warning state update message outside of Active state or CachedRelease state,state,%@", &v34, 0x2Au);
  }

LABEL_8:
}

- (void)onKeyReleaseMessageReceived:(id)received
{
  v60 = *MEMORY[0x277D85DE8];
  receivedCopy = received;
  if (!receivedCopy)
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v52) = 0;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: keyReleaseMessage", &v52, 2u);
    }

    goto LABEL_30;
  }

  receiverContact = [(SMReceiverCacheManager *)self receiverContact];
  sessionStatus = [receiverContact sessionStatus];
  if ([sessionStatus sessionState] != 3)
  {
    receiverContact2 = [(SMReceiverCacheManager *)self receiverContact];
    sessionStatus2 = [receiverContact2 sessionStatus];
    if ([sessionStatus2 sessionState] != 4)
    {

      goto LABEL_12;
    }

    isSOSTrigger = [receivedCopy isSOSTrigger];

    if ((isSOSTrigger & 1) == 0)
    {
      goto LABEL_12;
    }

LABEL_10:
    [(SMReceiverCacheManager *)self copyKeyReleaseMessageParameters:receivedCopy];
    delegate = [(SMReceiverCacheManager *)self delegate];
    sessionID = [(SMReceiverCacheManager *)self sessionID];
    sessionStatus3 = [(SMReceiverCacheManager *)self sessionStatus];
    [delegate sessionStatusChanged:sessionID status:sessionStatus3];

    [(SMReceiverCacheManager *)self updateReceiverContactInStore];
    goto LABEL_30;
  }

  isSOSTrigger2 = [receivedCopy isSOSTrigger];

  if (isSOSTrigger2)
  {
    goto LABEL_10;
  }

LABEL_12:
  receiverContact3 = [(SMReceiverCacheManager *)self receiverContact];
  sessionStatus4 = [receiverContact3 sessionStatus];
  if ([sessionStatus4 sessionState] != 2)
  {
    receiverContact4 = [(SMReceiverCacheManager *)self receiverContact];
    sessionStatus5 = [receiverContact4 sessionStatus];
    if ([sessionStatus5 sessionState] != 1)
    {
      receiverContact5 = [(SMReceiverCacheManager *)self receiverContact];
      sessionStatus6 = [receiverContact5 sessionStatus];
      sessionState = [sessionStatus6 sessionState];

      if (sessionState != 8)
      {
        v40 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          sessionID2 = [(SMReceiverCacheManager *)self sessionID];
          v45 = objc_opt_class();
          v46 = NSStringFromClass(v45);
          v47 = NSStringFromSelector(a2);
          v48 = MEMORY[0x277D4AB58];
          receiverContact6 = [(SMReceiverCacheManager *)self receiverContact];
          sessionStatus7 = [receiverContact6 sessionStatus];
          v51 = [v48 convertSessionStateToString:{objc_msgSend(sessionStatus7, "sessionState")}];
          v52 = 138413058;
          v53 = sessionID2;
          v54 = 2112;
          v55 = v46;
          v56 = 2112;
          v57 = v47;
          v58 = 2112;
          v59 = v51;
          _os_log_error_impl(&dword_2304B3000, v40, OS_LOG_TYPE_ERROR, "#SafetyCache,Receiver,sessionID:%@,%@,%@,received key release message outside of Active/Initializing/MissingKeyReleaseInfo state,state,%@", &v52, 0x2Au);
        }

        goto LABEL_30;
      }

      goto LABEL_16;
    }
  }

LABEL_16:
  receiverContact7 = [(SMReceiverCacheManager *)self receiverContact];
  sessionStatus8 = [receiverContact7 sessionStatus];
  sessionStartDate = [sessionStatus8 sessionStartDate];

  if (sessionStartDate)
  {
    date = [MEMORY[0x277CBEAA8] date];
    receiverContact8 = [(SMReceiverCacheManager *)self receiverContact];
    sessionStatus9 = [receiverContact8 sessionStatus];
    sessionStartDate2 = [sessionStatus9 sessionStartDate];
    [date timeIntervalSinceDate:sessionStartDate2];
    v28 = v27 / 60.0;
    receiverContact9 = [(SMReceiverCacheManager *)self receiverContact];
    [receiverContact9 setTimeTillCacheRelease:v28];
  }

  else
  {
    date = [(SMReceiverCacheManager *)self receiverContact];
    [date setTimeTillCacheRelease:0.0];
  }

  [(SMReceiverCacheManager *)self copyKeyReleaseMessageParameters:receivedCopy];
  [(SMReceiverCacheManager *)self stopMissingKeyReleaseTimer];
  receiverContact10 = [(SMReceiverCacheManager *)self receiverContact];
  sessionStatus10 = [receiverContact10 sessionStatus];
  sessionState2 = [sessionStatus10 sessionState];

  if (sessionState2 == 1)
  {
    selfCopy2 = self;
    v34 = 7;
LABEL_29:
    [(SMReceiverCacheManager *)selfCopy2 transitionToState:v34 event:5];
    goto LABEL_30;
  }

  receiverContact11 = [(SMReceiverCacheManager *)self receiverContact];
  sessionStatus11 = [receiverContact11 sessionStatus];
  if ([sessionStatus11 sessionState] == 2)
  {

LABEL_28:
    selfCopy2 = self;
    v34 = 3;
    goto LABEL_29;
  }

  receiverContact12 = [(SMReceiverCacheManager *)self receiverContact];
  sessionStatus12 = [receiverContact12 sessionStatus];
  sessionState3 = [sessionStatus12 sessionState];

  if (sessionState3 == 8)
  {
    goto LABEL_28;
  }

LABEL_30:
}

- (void)onKeyReleaseInfoMessageReceived:(id)received
{
  v28 = *MEMORY[0x277D85DE8];
  receivedCopy = received;
  if (receivedCopy)
  {
    receiverContact = [(SMReceiverCacheManager *)self receiverContact];
    sessionStatus = [receiverContact sessionStatus];
    sessionState = [sessionStatus sessionState];

    if (sessionState == 8)
    {
      date = [MEMORY[0x277CBEAA8] date];
      receiverContact2 = [(SMReceiverCacheManager *)self receiverContact];
      sessionStatus2 = [receiverContact2 sessionStatus];
      sessionStartDate = [sessionStatus2 sessionStartDate];
      [date timeIntervalSinceDate:sessionStartDate];
      v14 = v13 / 60.0;
      receiverContact3 = [(SMReceiverCacheManager *)self receiverContact];
      [receiverContact3 setTimeTillCacheRelease:v14];

      [(SMReceiverCacheManager *)self copyKeyReleaseMessageParameters:receivedCopy];
      [(SMReceiverCacheManager *)self transitionToState:3 event:12];
    }

    else
    {
      v17 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sessionID = [(SMReceiverCacheManager *)self sessionID];
        v19 = objc_opt_class();
        v20 = NSStringFromClass(v19);
        v21 = NSStringFromSelector(a2);
        v22 = 138412802;
        v23 = sessionID;
        v24 = 2112;
        v25 = v20;
        v26 = 2112;
        v27 = v21;
        _os_log_error_impl(&dword_2304B3000, v17, OS_LOG_TYPE_ERROR, "#SafetyCache,Receiver,sessionID:%@,%@,%@,received SMKeyReleaseInfoMessage without requesting for it", &v22, 0x20u);
      }
    }
  }

  else
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v22) = 0;
      _os_log_error_impl(&dword_2304B3000, v16, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: keyReleaseInfoMessage", &v22, 2u);
    }
  }
}

- (void)copyKeyReleaseMessageParameters:(id)parameters
{
  v43 = *MEMORY[0x277D85DE8];
  parametersCopy = parameters;
  v6 = parametersCopy;
  if (parametersCopy)
  {
    triggerDate = [parametersCopy triggerDate];
    receiverContact = [(SMReceiverCacheManager *)self receiverContact];
    sessionStatus = [receiverContact sessionStatus];
    [sessionStatus setTriggerDate:triggerDate];

    locationOfTrigger = [v6 locationOfTrigger];
    receiverContact2 = [(SMReceiverCacheManager *)self receiverContact];
    sessionStatus2 = [receiverContact2 sessionStatus];
    [sessionStatus2 setLocationOfTrigger:locationOfTrigger];

    triggerType = [v6 triggerType];
    receiverContact3 = [(SMReceiverCacheManager *)self receiverContact];
    sessionStatus3 = [receiverContact3 sessionStatus];
    [sessionStatus3 setTriggerType:triggerType];

    isSOSTrigger = [v6 isSOSTrigger];
    receiverContact4 = [(SMReceiverCacheManager *)self receiverContact];
    sessionStatus4 = [receiverContact4 sessionStatus];
    [sessionStatus4 setIsSOSTrigger:isSOSTrigger];

    lowPowerModeWarningState = [v6 lowPowerModeWarningState];
    receiverContact5 = [(SMReceiverCacheManager *)self receiverContact];
    sessionStatus5 = [receiverContact5 sessionStatus];
    [sessionStatus5 setLowPowerModeWarningState:lowPowerModeWarningState];

    safetyCacheKey = [v6 safetyCacheKey];
    receiverContact6 = [(SMReceiverCacheManager *)self receiverContact];
    [receiverContact6 setSafetyCacheKey:safetyCacheKey];

    safetyCacheToken = [v6 safetyCacheToken];
    receiverContact7 = [(SMReceiverCacheManager *)self receiverContact];
    [receiverContact7 setAllowReadToken:safetyCacheToken];

    v26 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      sessionID = [(SMReceiverCacheManager *)self sessionID];
      v28 = objc_opt_class();
      v29 = NSStringFromClass(v28);
      v30 = NSStringFromSelector(a2);
      triggerDate2 = [v6 triggerDate];
      stringFromDate = [triggerDate2 stringFromDate];
      v33 = 138413314;
      v34 = sessionID;
      v35 = 2112;
      v36 = v29;
      v37 = 2112;
      v38 = v30;
      v39 = 2112;
      v40 = stringFromDate;
      v41 = 1024;
      triggerType2 = [v6 triggerType];
      _os_log_impl(&dword_2304B3000, v26, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Receiver,sessionID:%@,%@,%@,triggerDate,%@,triggerType,%d", &v33, 0x30u);
    }
  }

  else
  {
    v26 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v33) = 0;
      _os_log_error_impl(&dword_2304B3000, v26, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: keyReleaseMessage", &v33, 2u);
    }
  }
}

- (void)onUserCacheDownloadRequest
{
  v42 = *MEMORY[0x277D85DE8];
  receiverContact = [(SMReceiverCacheManager *)self receiverContact];
  sessionStatus = [receiverContact sessionStatus];
  if ([sessionStatus sessionState] == 3)
  {
    goto LABEL_4;
  }

  receiverContact2 = [(SMReceiverCacheManager *)self receiverContact];
  sessionStatus2 = [receiverContact2 sessionStatus];
  if ([sessionStatus2 sessionState] == 4)
  {

LABEL_4:
LABEL_5:
    v8 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      sessionID = [(SMReceiverCacheManager *)self sessionID];
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = NSStringFromSelector(a2);
      v34 = 138412802;
      v35 = sessionID;
      v36 = 2112;
      v37 = v11;
      v38 = 2112;
      v39 = v12;
      _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Receiver,sessionID:%@,%@,%@", &v34, 0x20u);
    }

    v13 = [MEMORY[0x277CBEAA8] now];
    receiverContact3 = [(SMReceiverCacheManager *)self receiverContact];
    sessionStatus3 = [receiverContact3 sessionStatus];
    [sessionStatus3 setCacheRequestDate:v13];

    receiverContact4 = [(SMReceiverCacheManager *)self receiverContact];
    sessionStatus4 = [receiverContact4 sessionStatus];
    sessionState = [sessionStatus4 sessionState];

    if (sessionState == 4)
    {
      [(SMReceiverCacheManager *)self fetchSafetyCacheData:6];
      delegate = [(SMReceiverCacheManager *)self delegate];
      sessionID2 = [(SMReceiverCacheManager *)self sessionID];
      sessionStatus5 = [(SMReceiverCacheManager *)self sessionStatus];
      [delegate sessionStatusChanged:sessionID2 status:sessionStatus5];
    }

    else
    {
      [(SMReceiverCacheManager *)self transitionToState:4 event:6];
    }

    return;
  }

  receiverContact5 = [(SMReceiverCacheManager *)self receiverContact];
  sessionStatus6 = [receiverContact5 sessionStatus];
  sessionState2 = [sessionStatus6 sessionState];

  if (sessionState2 == 9)
  {
    goto LABEL_5;
  }

  v25 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    sessionID3 = [(SMReceiverCacheManager *)self sessionID];
    v27 = objc_opt_class();
    v28 = NSStringFromClass(v27);
    v29 = NSStringFromSelector(a2);
    v30 = MEMORY[0x277D4AB58];
    receiverContact6 = [(SMReceiverCacheManager *)self receiverContact];
    sessionStatus7 = [receiverContact6 sessionStatus];
    v33 = [v30 convertSessionStateToString:{objc_msgSend(sessionStatus7, "sessionState")}];
    v34 = 138413058;
    v35 = sessionID3;
    v36 = 2112;
    v37 = v28;
    v38 = 2112;
    v39 = v29;
    v40 = 2112;
    v41 = v33;
    _os_log_error_impl(&dword_2304B3000, v25, OS_LOG_TYPE_ERROR, "#SafetyCache,Receiver,sessionID:%@,%@,%@,received user cache download request outside of Triggered and CacheReleased states,state,%@", &v34, 0x2Au);
  }
}

- (void)onCacheDownloadResult:(BOOL)result userInitiatedDownload:(BOOL)download withError:(id)error
{
  downloadCopy = download;
  resultCopy = result;
  v79 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  defaultsManager = [(SMReceiverCacheManager *)self defaultsManager];
  v11 = [defaultsManager objectForKey:@"RTDefaultsMockTimeoutNextReceiverSafetyCacheDownload"];
  bOOLValue = [v11 BOOLValue];

  if ((bOOLValue & 1) == 0)
  {
    [(SMReceiverCacheManager *)self stopCacheDownloadTimeoutTimer];
  }

  receiverContact = [(SMReceiverCacheManager *)self receiverContact];
  sessionStatus = [receiverContact sessionStatus];
  if ([sessionStatus isSessionOngoing])
  {
  }

  else
  {
    receiverContact2 = [(SMReceiverCacheManager *)self receiverContact];
    sessionStatus2 = [receiverContact2 sessionStatus];
    sessionState = [sessionStatus2 sessionState];

    if (sessionState != 5)
    {
      v54 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
      {
        sessionID = [(SMReceiverCacheManager *)self sessionID];
        v56 = objc_opt_class();
        v57 = NSStringFromClass(v56);
        v58 = NSStringFromSelector(a2);
        v59 = MEMORY[0x277D4AB58];
        receiverContact3 = [(SMReceiverCacheManager *)self receiverContact];
        sessionStatus3 = [receiverContact3 sessionStatus];
        v62 = [v59 convertSessionStateToString:{objc_msgSend(sessionStatus3, "sessionState")}];
        v67 = 138413570;
        v68 = sessionID;
        v69 = 2112;
        v70 = v57;
        v71 = 2112;
        v72 = v58;
        v73 = 2112;
        v74 = v62;
        v75 = 1024;
        v76 = resultCopy;
        v77 = 2112;
        v78 = errorCopy;
        _os_log_impl(&dword_2304B3000, v54, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Receiver,sessionID:%@,%@,%@,cache download result returned outside of session and Cache Persistence,state,%@,success,%d,error,%@", &v67, 0x3Au);
      }

      goto LABEL_32;
    }
  }

  receiverContact4 = [(SMReceiverCacheManager *)self receiverContact];
  [receiverContact4 setNumCacheDownloads:{objc_msgSend(receiverContact4, "numCacheDownloads") + 1}];

  if (resultCopy)
  {
    [(SMReceiverCacheManager *)self setCacheDownloadRetryCount:0];
    receiverContact5 = [(SMReceiverCacheManager *)self receiverContact];
    [receiverContact5 setNumSuccessfulCacheDownloads:{objc_msgSend(receiverContact5, "numSuccessfulCacheDownloads") + 1}];

    receiverContact6 = [(SMReceiverCacheManager *)self receiverContact];
    [receiverContact6 timeTillFirstSuccessfulCacheDownload];
    if (v21 == -1.0)
    {
      receiverContact7 = [(SMReceiverCacheManager *)self receiverContact];
      sessionStatus4 = [receiverContact7 sessionStatus];
      sessionStartDate = [sessionStatus4 sessionStartDate];

      if (!sessionStartDate)
      {
LABEL_11:
        v31 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          sessionID2 = [(SMReceiverCacheManager *)self sessionID];
          v33 = objc_opt_class();
          v34 = NSStringFromClass(v33);
          v35 = NSStringFromSelector(a2);
          v67 = 138412802;
          v68 = sessionID2;
          v69 = 2112;
          v70 = v34;
          v71 = 2112;
          v72 = v35;
          _os_log_impl(&dword_2304B3000, v31, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Receiver,sessionID:%@,%@,%@,successfully downloaded cache", &v67, 0x20u);
        }

        delegate = [(SMReceiverCacheManager *)self delegate];
        sessionID3 = [(SMReceiverCacheManager *)self sessionID];
        receiverContact8 = [(SMReceiverCacheManager *)self receiverContact];
        phoneCache = [receiverContact8 phoneCache];
        receiverContact9 = [(SMReceiverCacheManager *)self receiverContact];
        watchCache = [receiverContact9 watchCache];
        [delegate safetyCacheChanged:sessionID3 phoneCache:phoneCache watchCache:watchCache];

        [(SMReceiverCacheManager *)self updateReceiverContactInStore];
        goto LABEL_32;
      }

      receiverContact6 = [MEMORY[0x277CBEAA8] date];
      receiverContact10 = [(SMReceiverCacheManager *)self receiverContact];
      sessionStatus5 = [receiverContact10 sessionStatus];
      sessionStartDate2 = [sessionStatus5 sessionStartDate];
      [receiverContact6 timeIntervalSinceDate:sessionStartDate2];
      v29 = v28 / 60.0;
      receiverContact11 = [(SMReceiverCacheManager *)self receiverContact];
      [receiverContact11 setTimeTillFirstSuccessfulCacheDownload:v29];
    }

    goto LABEL_11;
  }

  v42 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
  {
    sessionID4 = [(SMReceiverCacheManager *)self sessionID];
    v64 = objc_opt_class();
    v65 = NSStringFromClass(v64);
    v66 = NSStringFromSelector(a2);
    v67 = 138412802;
    v68 = sessionID4;
    v69 = 2112;
    v70 = v65;
    v71 = 2112;
    v72 = v66;
    _os_log_error_impl(&dword_2304B3000, v42, OS_LOG_TYPE_ERROR, "#SafetyCache,Receiver,sessionID:%@,%@,%@,failed to download cache", &v67, 0x20u);
  }

  [(SMReceiverCacheManager *)self updateReceiverContactInStore];
  if ([(SMReceiverCacheManager *)self cacheDownloadRetryCount]<= 1 && [(SMReceiverCacheManager *)self shouldRetryCacheDownloadForError:errorCopy])
  {
    [(SMReceiverCacheManager *)self setCacheDownloadRetryCount:[(SMReceiverCacheManager *)self cacheDownloadRetryCount]+ 1];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v43 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
      {
        sessionID5 = [(SMReceiverCacheManager *)self sessionID];
        v45 = objc_opt_class();
        v46 = NSStringFromClass(v45);
        v47 = NSStringFromSelector(a2);
        cacheDownloadRetryCount = [(SMReceiverCacheManager *)self cacheDownloadRetryCount];
        v67 = 138413058;
        v68 = sessionID5;
        v69 = 2112;
        v70 = v46;
        v71 = 2112;
        v72 = v47;
        v73 = 1024;
        LODWORD(v74) = cacheDownloadRetryCount;
        _os_log_impl(&dword_2304B3000, v43, OS_LOG_TYPE_INFO, "#SafetyCache,Receiver,sessionID:%@,%@,%@,retry cache download,attempt:%d", &v67, 0x26u);
      }
    }

    if (downloadCopy)
    {
      v49 = 15;
    }

    else
    {
      v49 = 13;
    }

    [(SMReceiverCacheManager *)self fetchSafetyCacheData:v49];
  }

  else
  {
    [(SMReceiverCacheManager *)self setCacheDownloadRetryCount:0];
    if (downloadCopy)
    {
      [(SMReceiverCacheManager *)self transitionToState:9 event:7];
    }

    v50 = [(SMReceiverCacheManager *)self normalizedSMErrorForCacheDownloadError:errorCopy];
    receiverContact12 = [(SMReceiverCacheManager *)self receiverContact];
    sessionStatus6 = [receiverContact12 sessionStatus];
    [sessionStatus6 setCacheDownloadError:v50];

    defaultsManager2 = [(SMReceiverCacheManager *)self defaultsManager];
    [defaultsManager2 setObject:MEMORY[0x277CBEC28] forKey:@"RTDefaultsMockFailNextReceiverSafetyCacheDownload"];
  }

LABEL_32:
}

- (void)onCacheUpdatedMessageReceived:(id)received
{
  v40 = *MEMORY[0x277D85DE8];
  receivedCopy = received;
  if (receivedCopy)
  {
    receiverContact = [(SMReceiverCacheManager *)self receiverContact];
    sessionStatus = [receiverContact sessionStatus];
    sessionState = [sessionStatus sessionState];

    if (sessionState == 2)
    {
      v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        sessionID = [(SMReceiverCacheManager *)self sessionID];
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        v13 = NSStringFromSelector(a2);
        v32 = 138412802;
        v33 = sessionID;
        v34 = 2112;
        v35 = v12;
        v36 = 2112;
        v37 = v13;
        _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Receiver,sessionID:%@,%@,%@,missing key release message", &v32, 0x20u);
      }

      [(SMReceiverCacheManager *)self startMissingKeyReleaseTimer];
    }

    else
    {
      receiverContact2 = [(SMReceiverCacheManager *)self receiverContact];
      sessionStatus2 = [receiverContact2 sessionStatus];
      sessionState2 = [sessionStatus2 sessionState];

      if (sessionState2 == 4)
      {
        v18 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          sessionID2 = [(SMReceiverCacheManager *)self sessionID];
          v20 = objc_opt_class();
          v21 = NSStringFromClass(v20);
          v22 = NSStringFromSelector(a2);
          v32 = 138412802;
          v33 = sessionID2;
          v34 = 2112;
          v35 = v21;
          v36 = 2112;
          v37 = v22;
          _os_log_impl(&dword_2304B3000, v18, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Receiver,sessionID:%@,%@,%@,fetching updated Safety Cache data", &v32, 0x20u);
        }

        [(SMReceiverCacheManager *)self fetchSafetyCacheData:8];
      }

      else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v23 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          sessionID3 = [(SMReceiverCacheManager *)self sessionID];
          v25 = objc_opt_class();
          v26 = NSStringFromClass(v25);
          v27 = NSStringFromSelector(a2);
          v28 = MEMORY[0x277D4AB58];
          receiverContact3 = [(SMReceiverCacheManager *)self receiverContact];
          sessionStatus3 = [receiverContact3 sessionStatus];
          v31 = [v28 convertSessionStateToString:{objc_msgSend(sessionStatus3, "sessionState")}];
          v32 = 138413058;
          v33 = sessionID3;
          v34 = 2112;
          v35 = v26;
          v36 = 2112;
          v37 = v27;
          v38 = 2112;
          v39 = v31;
          _os_log_impl(&dword_2304B3000, v23, OS_LOG_TYPE_INFO, "#SafetyCache,Receiver,sessionID:%@,%@,%@,ignore cache updated message in state,%@", &v32, 0x2Au);
        }
      }
    }
  }

  else
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v32) = 0;
      _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: cacheUpdatedMessage", &v32, 2u);
    }
  }
}

- (void)onSessionEndMessageReceived:(id)received
{
  v115 = *MEMORY[0x277D85DE8];
  receivedCopy = received;
  if (receivedCopy)
  {
    receiverContact = [(SMReceiverCacheManager *)self receiverContact];
    sessionStatus = [receiverContact sessionStatus];
    isSessionOngoing = [sessionStatus isSessionOngoing];

    if (isSessionOngoing)
    {
      sessionEndReason = [receivedCopy sessionEndReason];
      receiverContact2 = [(SMReceiverCacheManager *)self receiverContact];
      sessionStatus2 = [receiverContact2 sessionStatus];
      [sessionStatus2 setSessionEndReason:sessionEndReason];

      v12 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        sessionID = [(SMReceiverCacheManager *)self sessionID];
        v14 = objc_opt_class();
        v15 = NSStringFromClass(v14);
        v16 = NSStringFromSelector(a2);
        v107 = 138413058;
        v108 = sessionID;
        v109 = 2112;
        v110 = v15;
        v111 = 2112;
        v112 = v16;
        v113 = 1024;
        LODWORD(v114) = [receivedCopy sessionEndReason];
        _os_log_impl(&dword_2304B3000, v12, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Receiver,sessionID:%@,%@,%@,sessionEndReason,%d", &v107, 0x26u);
      }

      v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v18 = MEMORY[0x277CCABB0];
      receiverContact3 = [(SMReceiverCacheManager *)self receiverContact];
      sessionStatus3 = [receiverContact3 sessionStatus];
      v21 = [v18 numberWithUnsignedInteger:{objc_msgSend(sessionStatus3, "sessionType")}];
      [v17 setValue:v21 forKey:@"sessionType"];

      v22 = MEMORY[0x277CCABB0];
      receiverContact4 = [(SMReceiverCacheManager *)self receiverContact];
      sessionStatus4 = [receiverContact4 sessionStatus];
      v25 = [v22 numberWithUnsignedInteger:{objc_msgSend(sessionStatus4, "triggerType")}];
      [v17 setValue:v25 forKey:@"triggerType"];

      v26 = MEMORY[0x277CCABB0];
      receiverContact5 = [(SMReceiverCacheManager *)self receiverContact];
      sessionStatus5 = [receiverContact5 sessionStatus];
      v29 = [v26 numberWithUnsignedInteger:{objc_msgSend(sessionStatus5, "sessionEndReason")}];
      [v17 setValue:v29 forKey:@"sessionEndReason"];

      v30 = MEMORY[0x277CCABB0];
      receiverContact6 = [(SMReceiverCacheManager *)self receiverContact];
      safetyCacheKey = [receiverContact6 safetyCacheKey];
      v33 = [v30 numberWithInt:safetyCacheKey != 0];
      [v17 setValue:v33 forKey:@"wasCacheReleased"];

      v34 = MEMORY[0x277CCABB0];
      receiverContact7 = [(SMReceiverCacheManager *)self receiverContact];
      v36 = [v34 numberWithLongLong:{objc_msgSend(receiverContact7, "numCacheDownloads")}];
      [v17 setValue:v36 forKey:@"numCacheDownloads"];

      receiverContact8 = [(SMReceiverCacheManager *)self receiverContact];
      numCacheDownloads = [receiverContact8 numCacheDownloads];

      if (numCacheDownloads < 1)
      {
        [v17 setValue:&unk_28459EA78 forKey:@"percentageOfSuccessfulCacheDownloads"];
      }

      else
      {
        v39 = MEMORY[0x277CCABB0];
        receiverContact9 = [(SMReceiverCacheManager *)self receiverContact];
        numSuccessfulCacheDownloads = [receiverContact9 numSuccessfulCacheDownloads];
        receiverContact10 = [(SMReceiverCacheManager *)self receiverContact];
        *&v43 = (numSuccessfulCacheDownloads / [receiverContact10 numCacheDownloads]) * 100.0;
        v44 = [v39 numberWithFloat:v43];
        [v17 setValue:v44 forKey:@"percentageOfSuccessfulCacheDownloads"];
      }

      v53 = MEMORY[0x277CCABB0];
      receiverContact11 = [(SMReceiverCacheManager *)self receiverContact];
      [receiverContact11 timeTillCacheRelease];
      v55 = [v53 numberWithDouble:?];
      [v17 setValue:v55 forKey:@"timeTilCacheRelease"];

      v56 = MEMORY[0x277CCABB0];
      receiverContact12 = [(SMReceiverCacheManager *)self receiverContact];
      *&v58 = vcvts_n_f32_s64([receiverContact12 maxPhoneCacheSize], 0xAuLL);
      v59 = [v56 numberWithFloat:v58];
      [v17 setValue:v59 forKey:@"phoneMaxCacheSize"];

      v60 = MEMORY[0x277CCABB0];
      receiverContact13 = [(SMReceiverCacheManager *)self receiverContact];
      *&v62 = vcvts_n_f32_s64([receiverContact13 maxWatchCacheSize], 0xAuLL);
      v63 = [v60 numberWithFloat:v62];
      [v17 setValue:v63 forKey:@"watchMaxCacheSize"];

      v64 = MEMORY[0x277CCABB0];
      receiverContact14 = [(SMReceiverCacheManager *)self receiverContact];
      v66 = [v64 numberWithLongLong:{objc_msgSend(receiverContact14, "maxLocationsInPhoneCacheTrace")}];
      [v17 setValue:v66 forKey:@"phoneMaxLocationsInTrace"];

      v67 = MEMORY[0x277CCABB0];
      receiverContact15 = [(SMReceiverCacheManager *)self receiverContact];
      v69 = [v67 numberWithLongLong:{objc_msgSend(receiverContact15, "maxLocationsInWatchCacheTrace")}];
      [v17 setValue:v69 forKey:@"watchMaxLocationsInTrace"];

      v70 = MEMORY[0x277CCABB0];
      phoneCache = [(SMReceiverCacheManager *)self phoneCache];
      locationsDuringSession = [phoneCache locationsDuringSession];
      v73 = [v70 numberWithInt:{objc_msgSend(locationsDuringSession, "count") != 0}];
      [v17 setValue:v73 forKey:@"phoneLocationHistoryAvailable"];

      v74 = MEMORY[0x277CCABB0];
      watchCache = [(SMReceiverCacheManager *)self watchCache];
      locationsDuringSession2 = [watchCache locationsDuringSession];
      v77 = [v74 numberWithInt:{objc_msgSend(locationsDuringSession2, "count") != 0}];
      [v17 setValue:v77 forKey:@"watchLocationHistoryAvailable"];

      v78 = MEMORY[0x277CCABB0];
      receiverContact16 = [(SMReceiverCacheManager *)self receiverContact];
      sessionStatus6 = [receiverContact16 sessionStatus];
      v81 = [v78 numberWithInt:{objc_msgSend(sessionStatus6, "triggerType") == 15}];
      [v17 setValue:v81 forKey:@"wasScheduledSendTriggered"];

      v82 = MEMORY[0x277CCABB0];
      receiverContact17 = [(SMReceiverCacheManager *)self receiverContact];
      v84 = [v82 numberWithLongLong:{objc_msgSend(receiverContact17, "phoneMaxWorkoutEvents")}];
      [v17 setValue:v84 forKey:@"phoneMaxWorkoutEvents"];

      v85 = MEMORY[0x277CCABB0];
      receiverContact18 = [(SMReceiverCacheManager *)self receiverContact];
      v87 = [v85 numberWithLongLong:{objc_msgSend(receiverContact18, "watchMaxWorkoutEvents")}];
      [v17 setValue:v87 forKey:@"watchMaxWorkoutEvents"];

      v88 = MEMORY[0x277CCABB0];
      receiverContact19 = [(SMReceiverCacheManager *)self receiverContact];
      sessionStatus7 = [receiverContact19 sessionStatus];
      v91 = [v88 numberWithInt:{objc_msgSend(sessionStatus7, "lowPowerModeWarningState") == 2}];
      [v17 setValue:v91 forKey:@"wasInLPM"];

      date = [MEMORY[0x277CBEAA8] date];
      receiverContact20 = [(SMReceiverCacheManager *)self receiverContact];
      sessionStatus8 = [receiverContact20 sessionStatus];
      sessionStartDate = [sessionStatus8 sessionStartDate];
      [date timeIntervalSinceDate:sessionStartDate];
      v97 = v96 / 60.0;

      v98 = [MEMORY[0x277CCABB0] numberWithDouble:v97];
      [v17 setValue:v98 forKey:@"sessionDuration"];

      AnalyticsSendEvent();
      computeReceiverSessionMetrics = [(SMReceiverCacheManager *)self computeReceiverSessionMetrics];
      [(SMReceiverCacheManager *)self computeResponseModality:computeReceiverSessionMetrics completionHandler:&__block_literal_global_87];
      if ([receivedCopy sessionEndReason] == 3)
      {
        receiverContact21 = [(SMReceiverCacheManager *)self receiverContact];
        sessionStatus9 = [receiverContact21 sessionStatus];
        if ([sessionStatus9 sessionState] == 4)
        {
          receiverContact22 = [(SMReceiverCacheManager *)self receiverContact];
          phoneCache2 = [receiverContact22 phoneCache];
          if (phoneCache2)
          {

LABEL_19:
            v104 = 5;
            goto LABEL_20;
          }

          receiverContact23 = [(SMReceiverCacheManager *)self receiverContact];
          watchCache2 = [receiverContact23 watchCache];

          if (watchCache2)
          {
            goto LABEL_19;
          }
        }

        else
        {
        }
      }

      v104 = 6;
LABEL_20:
      [(SMReceiverCacheManager *)self transitionToState:v104 event:9];

      goto LABEL_21;
    }

    v17 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      sessionID2 = [(SMReceiverCacheManager *)self sessionID];
      v46 = objc_opt_class();
      v47 = NSStringFromClass(v46);
      v48 = NSStringFromSelector(a2);
      v49 = MEMORY[0x277D4AB58];
      receiverContact24 = [(SMReceiverCacheManager *)self receiverContact];
      sessionStatus10 = [receiverContact24 sessionStatus];
      v52 = [v49 convertSessionStateToString:{objc_msgSend(sessionStatus10, "sessionState")}];
      v107 = 138413058;
      v108 = sessionID2;
      v109 = 2112;
      v110 = v47;
      v111 = 2112;
      v112 = v48;
      v113 = 2112;
      v114 = v52;
      _os_log_impl(&dword_2304B3000, v17, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Receiver,sessionID:%@,%@,%@,received session end message outside of session,state,%@", &v107, 0x2Au);
    }
  }

  else
  {
    v17 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v107) = 0;
      _os_log_error_impl(&dword_2304B3000, v17, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: endMessage", &v107, 2u);
    }
  }

LABEL_21:
}

void __54__SMReceiverCacheManager_onSessionEndMessageReceived___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCACA8];
  v3 = a2;
  v4 = [v2 alloc];
  v6 = [v4 initWithCString:RTAnalyticsEventSafetyMonitorReceiverSession encoding:1];
  log_analytics_submission(v6, v3);
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.%@", v6];
  AnalyticsSendEvent();
}

- (void)onCachePersistenceExpiry
{
  v29 = *MEMORY[0x277D85DE8];
  [(SMReceiverCacheManager *)self cachePersistenceStopTimer];
  receiverContact = [(SMReceiverCacheManager *)self receiverContact];
  sessionStatus = [receiverContact sessionStatus];
  sessionState = [sessionStatus sessionState];

  v7 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  v8 = v7;
  if (sessionState == 5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      sessionID = [(SMReceiverCacheManager *)self sessionID];
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = NSStringFromSelector(a2);
      v21 = 138412802;
      v22 = sessionID;
      v23 = 2112;
      v24 = v11;
      v25 = 2112;
      v26 = v12;
      _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Receiver,sessionID:%@,%@,%@", &v21, 0x20u);
    }

    [(SMReceiverCacheManager *)self transitionToState:6 event:10];
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sessionID2 = [(SMReceiverCacheManager *)self sessionID];
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      v16 = NSStringFromSelector(a2);
      v17 = MEMORY[0x277D4AB58];
      receiverContact2 = [(SMReceiverCacheManager *)self receiverContact];
      sessionStatus2 = [receiverContact2 sessionStatus];
      v20 = [v17 convertSessionStateToString:{objc_msgSend(sessionStatus2, "sessionState")}];
      v21 = 138413058;
      v22 = sessionID2;
      v23 = 2112;
      v24 = v15;
      v25 = 2112;
      v26 = v16;
      v27 = 2112;
      v28 = v20;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "#SafetyCache,Receiver,sessionID:%@,%@,%@,received Cache Persistence Expiry when outside of Cache Persistence state,state,%@", &v21, 0x2Au);
    }
  }
}

- (void)onViewingSessionDetails
{
  v32 = *MEMORY[0x277D85DE8];
  receiverContact = [(SMReceiverCacheManager *)self receiverContact];
  firstDetailViewSessionState = [receiverContact firstDetailViewSessionState];

  if (!firstDetailViewSessionState)
  {
    receiverContact2 = [(SMReceiverCacheManager *)self receiverContact];
    sessionStatus = [receiverContact2 sessionStatus];
    sessionState = [sessionStatus sessionState];
    receiverContact3 = [(SMReceiverCacheManager *)self receiverContact];
    [receiverContact3 setFirstDetailViewSessionState:sessionState];
  }

  receiverContact4 = [(SMReceiverCacheManager *)self receiverContact];
  sessionStatus2 = [receiverContact4 sessionStatus];
  sessionState2 = [sessionStatus2 sessionState];
  receiverContact5 = [(SMReceiverCacheManager *)self receiverContact];
  [receiverContact5 setLastDetailViewSessionState:sessionState2];

  [(SMReceiverCacheManager *)self updateReceiverContactInStore];
  v14 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    sessionID = [(SMReceiverCacheManager *)self sessionID];
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    v18 = NSStringFromSelector(a2);
    receiverContact6 = [(SMReceiverCacheManager *)self receiverContact];
    firstDetailViewSessionState2 = [receiverContact6 firstDetailViewSessionState];
    receiverContact7 = [(SMReceiverCacheManager *)self receiverContact];
    v22 = 138413314;
    v23 = sessionID;
    v24 = 2112;
    v25 = v17;
    v26 = 2112;
    v27 = v18;
    v28 = 1024;
    v29 = firstDetailViewSessionState2;
    v30 = 1024;
    lastDetailViewSessionState = [receiverContact7 lastDetailViewSessionState];
    _os_log_impl(&dword_2304B3000, v14, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Receiver,sessionID:%@,%@,%@, SMReceiverTelemetry firstDetailViewSessionState %d, lastDetailViewSessionState %d", &v22, 0x2Cu);
  }
}

- (void)startCacheDownloadTimeoutTimer
{
  v44 = *MEMORY[0x277D85DE8];
  [(SMReceiverCacheManager *)self stopCacheDownloadTimeoutTimer];
  objc_initWeak(&location, self);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  sessionID = [(SMReceiverCacheManager *)self sessionID];
  v7 = MEMORY[0x277CCACA8];
  sessionID2 = [(SMReceiverCacheManager *)self sessionID];
  v9 = [v7 stringWithFormat:@"%@.%@", @"com.apple.routined.SMReceiverCacheManager.cacheDownloadTimeoutTimerIdentifierBase", sessionID2];

  v10 = [RTXPCTimerAlarm alloc];
  queue = [(SMReceiverCacheManager *)self queue];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __56__SMReceiverCacheManager_startCacheDownloadTimeoutTimer__block_invoke;
  v30[3] = &unk_2788CDA80;
  objc_copyWeak(v34, &location);
  v12 = sessionID;
  v31 = v12;
  v13 = v5;
  v34[1] = a2;
  v32 = v13;
  selfCopy = self;
  v14 = [(RTXPCTimerAlarm *)v10 initWithIdentifier:v9 queue:queue handler:v30];
  [(SMReceiverCacheManager *)self setCacheDownloadTimeoutTimerAlarm:v14];

  v15 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:60.0];
  cacheDownloadTimeoutTimerAlarm = [(SMReceiverCacheManager *)self cacheDownloadTimeoutTimerAlarm];
  v29 = 0;
  [cacheDownloadTimeoutTimerAlarm fireWithDate:v15 error:&v29];
  v17 = v29;

  if (v17)
  {
    v18 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sessionID3 = [(SMReceiverCacheManager *)self sessionID];
      v20 = objc_opt_class();
      v21 = NSStringFromClass(v20);
      v22 = NSStringFromSelector(a2);
      localizedDescription = [v17 localizedDescription];
      *buf = 138413058;
      v37 = sessionID3;
      v38 = 2112;
      v39 = v21;
      v40 = 2112;
      v41 = v22;
      v42 = 2112;
      v43 = localizedDescription;
      _os_log_error_impl(&dword_2304B3000, v18, OS_LOG_TYPE_ERROR, "#SafetyCache,Receiver,sessionID:%@,%@,%@,cacheDownloadTimeoutTimerAlarm fireWithDate hit error: %@", buf, 0x2Au);
    }
  }

  else
  {
    v18 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      sessionID4 = [(SMReceiverCacheManager *)self sessionID];
      v25 = objc_opt_class();
      v26 = NSStringFromClass(v25);
      v27 = NSStringFromSelector(a2);
      stringFromDate = [v15 stringFromDate];
      *buf = 138413058;
      v37 = sessionID4;
      v38 = 2112;
      v39 = v26;
      v40 = 2112;
      v41 = v27;
      v42 = 2112;
      v43 = stringFromDate;
      _os_log_impl(&dword_2304B3000, v18, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Receiver,sessionID:%@,%@,%@,missingKeyReleaseTimerAlarm scheduled for: %@", buf, 0x2Au);
    }
  }

  objc_destroyWeak(v34);
  objc_destroyWeak(&location);
}

void __56__SMReceiverCacheManager_startCacheDownloadTimeoutTimer__block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  v4 = v3;
  if (!WeakRetained)
  {
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v16 = *(a1 + 32);
    v17 = *(a1 + 40);
    v15 = NSStringFromSelector(*(a1 + 64));
    v18 = 138412802;
    v19 = v16;
    v20 = 2112;
    v21 = v17;
    v22 = 2112;
    v23 = v15;
    _os_log_error_impl(&dword_2304B3000, v4, OS_LOG_TYPE_ERROR, "#SafetyCache,Receiver,sessionID:%@,%@,%@,self not found", &v18, 0x20u);
LABEL_13:

    goto LABEL_7;
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = NSStringFromSelector(*(a1 + 64));
    v18 = 138412802;
    v19 = v5;
    v20 = 2112;
    v21 = v6;
    v22 = 2112;
    v23 = v7;
    _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Receiver,sessionID:%@,%@,%@,cache download timer timeout fired", &v18, 0x20u);
  }

  v8 = [*(a1 + 48) defaultsManager];
  [v8 setObject:MEMORY[0x277CBEC28] forKey:@"RTDefaultsMockTimeoutNextReceiverSafetyCacheDownload"];

  v4 = [*(a1 + 48) receiverContact];
  v9 = [v4 phoneCache];
  if (v9)
  {

LABEL_7:
    goto LABEL_8;
  }

  v10 = [*(a1 + 48) receiverContact];
  v11 = [v10 watchCache];

  if (!v11)
  {
    v12 = [WeakRetained receiverContact];
    v13 = [v12 sessionStatus];
    v14 = [v13 sessionState];

    if (v14 == 4)
    {
      [WeakRetained transitionToState:9 event:7];
      v4 = [*(a1 + 48) receiverContact];
      v15 = [v4 sessionStatus];
      [v15 setCacheDownloadError:15];
      goto LABEL_13;
    }
  }

LABEL_8:
}

- (void)stopCacheDownloadTimeoutTimer
{
  cacheDownloadTimeoutTimerAlarm = [(SMReceiverCacheManager *)self cacheDownloadTimeoutTimerAlarm];

  if (cacheDownloadTimeoutTimerAlarm)
  {
    cacheDownloadTimeoutTimerAlarm2 = [(SMReceiverCacheManager *)self cacheDownloadTimeoutTimerAlarm];
    [cacheDownloadTimeoutTimerAlarm2 invalidate];

    [(SMReceiverCacheManager *)self setCacheDownloadTimeoutTimerAlarm:0];
  }
}

- (void)startMissingKeyReleaseTimer
{
  v43 = *MEMORY[0x277D85DE8];
  [(SMReceiverCacheManager *)self stopMissingKeyReleaseTimer];
  objc_initWeak(&location, self);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  sessionID = [(SMReceiverCacheManager *)self sessionID];
  v7 = MEMORY[0x277CCACA8];
  sessionID2 = [(SMReceiverCacheManager *)self sessionID];
  v9 = [v7 stringWithFormat:@"%@.%@", @"com.apple.routined.SMReceiverCacheManager.missingKeyReleaseTimerIdentifierBase", sessionID2];

  v10 = [RTXPCTimerAlarm alloc];
  queue = [(SMReceiverCacheManager *)self queue];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __53__SMReceiverCacheManager_startMissingKeyReleaseTimer__block_invoke;
  v30[3] = &unk_2788CD1F8;
  objc_copyWeak(v33, &location);
  v12 = sessionID;
  v31 = v12;
  v13 = v5;
  v32 = v13;
  v33[1] = a2;
  v14 = [(RTXPCTimerAlarm *)v10 initWithIdentifier:v9 queue:queue handler:v30];
  [(SMReceiverCacheManager *)self setMissingKeyReleaseTimerAlarm:v14];

  v15 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:30.0];
  missingKeyReleaseTimerAlarm = [(SMReceiverCacheManager *)self missingKeyReleaseTimerAlarm];
  v29 = 0;
  [missingKeyReleaseTimerAlarm fireWithDate:v15 error:&v29];
  v17 = v29;

  if (v17)
  {
    v18 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sessionID3 = [(SMReceiverCacheManager *)self sessionID];
      v20 = objc_opt_class();
      v21 = NSStringFromClass(v20);
      v22 = NSStringFromSelector(a2);
      localizedDescription = [v17 localizedDescription];
      *buf = 138413058;
      v36 = sessionID3;
      v37 = 2112;
      v38 = v21;
      v39 = 2112;
      v40 = v22;
      v41 = 2112;
      v42 = localizedDescription;
      _os_log_error_impl(&dword_2304B3000, v18, OS_LOG_TYPE_ERROR, "#SafetyCache,Receiver,sessionID:%@,%@,%@,missingKeyReleaseTimerAlarm fireWithDate hit error: %@", buf, 0x2Au);
    }
  }

  else
  {
    v18 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      sessionID4 = [(SMReceiverCacheManager *)self sessionID];
      v25 = objc_opt_class();
      v26 = NSStringFromClass(v25);
      v27 = NSStringFromSelector(a2);
      stringFromDate = [v15 stringFromDate];
      *buf = 138413058;
      v36 = sessionID4;
      v37 = 2112;
      v38 = v26;
      v39 = 2112;
      v40 = v27;
      v41 = 2112;
      v42 = stringFromDate;
      _os_log_impl(&dword_2304B3000, v18, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Receiver,sessionID:%@,%@,%@,missingKeyReleaseTimerAlarm scheduled for: %@", buf, 0x2Au);
    }
  }

  objc_destroyWeak(v33);
  objc_destroyWeak(&location);
}

void __53__SMReceiverCacheManager_startMissingKeyReleaseTimer__block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  v4 = v3;
  if (WeakRetained)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = *(a1 + 40);
      v7 = NSStringFromSelector(*(a1 + 56));
      v14 = 138412802;
      v15 = v5;
      v16 = 2112;
      v17 = v6;
      v18 = 2112;
      v19 = v7;
      _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Receiver,sessionID:%@,%@,%@,missing key release wait timer fired", &v14, 0x20u);
    }

    v8 = [WeakRetained receiverContact];
    v9 = [v8 sessionStatus];
    v10 = [v9 sessionState];

    if (v10 == 2)
    {
      [WeakRetained transitionToState:8 event:8];
    }
  }

  else
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 32);
      v12 = *(a1 + 40);
      v13 = NSStringFromSelector(*(a1 + 56));
      v14 = 138412802;
      v15 = v11;
      v16 = 2112;
      v17 = v12;
      v18 = 2112;
      v19 = v13;
      _os_log_error_impl(&dword_2304B3000, v4, OS_LOG_TYPE_ERROR, "#SafetyCache,Receiver,sessionID:%@,%@,%@,self not found", &v14, 0x20u);
    }
  }
}

- (void)stopMissingKeyReleaseTimer
{
  missingKeyReleaseTimerAlarm = [(SMReceiverCacheManager *)self missingKeyReleaseTimerAlarm];

  if (missingKeyReleaseTimerAlarm)
  {
    missingKeyReleaseTimerAlarm2 = [(SMReceiverCacheManager *)self missingKeyReleaseTimerAlarm];
    [missingKeyReleaseTimerAlarm2 invalidate];

    [(SMReceiverCacheManager *)self setMissingKeyReleaseTimerAlarm:0];
  }
}

- (BOOL)shouldRetryZoneShareAcceptanceForError:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];
  v5 = [domain isEqualToString:*MEMORY[0x277CBBF50]];

  if (v5)
  {
    code = [errorCopy code];
    if (code <= 0x1A)
    {
      v7 = 0x3FFE1FDu >> code;
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 1;
  }

  return v7 & 1;
}

- (BOOL)shouldRetryCacheDownloadForError:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];
  v5 = [domain isEqualToString:*MEMORY[0x277D4AC58]];

  if (v5)
  {
    code = [errorCopy code];
    if (code >= 9)
    {
      v7 = 1;
    }

    else
    {
      v7 = 0x103u >> code;
    }
  }

  else
  {
    domain2 = [errorCopy domain];
    v9 = [domain2 isEqualToString:*MEMORY[0x277CBBF50]];

    if (v9)
    {
      v7 = [errorCopy code] != 7;
    }

    else
    {
      v7 = 1;
    }
  }

  return v7 & 1;
}

- (int64_t)normalizedSMErrorForCacheDownloadError:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];
  v5 = [domain isEqualToString:*MEMORY[0x277CBBF50]];

  if (v5)
  {
    if ([errorCopy code] == 3)
    {
      code = 46;
    }

    else if ([errorCopy code] == 7)
    {
      code = 12;
    }

    else
    {
      code = 0;
    }
  }

  else
  {
    domain2 = [errorCopy domain];
    v8 = [domain2 isEqualToString:*MEMORY[0x277D4ACD0]];

    if (v8)
    {
      code = [errorCopy code];
    }

    else
    {
      code = 0;
    }
  }

  return code;
}

- (void)transitionToState:(int64_t)state event:(int64_t)event
{
  selfCopy = self;
  v113 = *MEMORY[0x277D85DE8];
  receiverContact = [(SMReceiverCacheManager *)self receiverContact];
  sessionStatus = [receiverContact sessionStatus];
  sessionState = [sessionStatus sessionState];

  v11 = [MEMORY[0x277D4AB58] convertSessionStateToString:sessionState];
  if (sessionState != state)
  {
    v12 = [MEMORY[0x277D4AB58] convertSessionStateToString:state];
    v17 = [objc_opt_class() receiverEventToString:event];
    v18 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      [(SMReceiverCacheManager *)selfCopy sessionID];
      eventCopy = event;
      v19 = v12;
      v20 = v11;
      v22 = v21 = v17;
      v23 = objc_opt_class();
      NSStringFromClass(v23);
      v24 = v104 = state;
      NSStringFromSelector(a2);
      v25 = selfCopy;
      v27 = v26 = a2;
      *buf = 138413570;
      stateCopy8 = v22;
      v107 = 2112;
      v108 = v24;
      v109 = 2112;
      *v110 = v27;
      *&v110[8] = 2112;
      *&v110[10] = v20;
      *&v110[18] = 2112;
      *&v110[20] = v19;
      v111 = 2112;
      v112 = v21;
      _os_log_impl(&dword_2304B3000, v18, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Receiver,sessionID:%@,%@,%@,fromState:%@,toState:%@,event:%@", buf, 0x3Eu);

      v17 = v21;
      v11 = v20;
      v12 = v19;
      event = eventCopy;

      a2 = v26;
      selfCopy = v25;

      state = v104;
    }

    if (sessionState <= 4)
    {
      if (sessionState > 2)
      {
        if (sessionState == 3)
        {
          if (state == 6)
          {
            [(SMReceiverCacheManager *)selfCopy transitionFromTriggeredToCleanupDueToEvent:event];
          }

          else
          {
            if (state != 4)
            {
              v39 = a2;
              v42 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
              if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
              {
                [(SMReceiverCacheManager *)selfCopy sessionID];
                state = v75 = state;
                v76 = objc_opt_class();
                v77 = NSStringFromClass(v76);
                v78 = NSStringFromSelector(v39);
                *buf = 138413314;
                stateCopy8 = state;
                v107 = 2112;
                v108 = v77;
                v109 = 2112;
                *v110 = v78;
                *&v110[8] = 1024;
                *&v110[10] = v75;
                *&v110[14] = 2112;
                *&v110[16] = v11;
                _os_log_error_impl(&dword_2304B3000, v42, OS_LOG_TYPE_ERROR, "#SafetyCache,Receiver,sessionID:%@,%@,%@,unknown or unhandled toState:%d for fromState:%@", buf, 0x30u);

                LODWORD(state) = v75;
              }

              v41 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
              if (!os_log_type_enabled(v41, OS_LOG_TYPE_FAULT))
              {
                goto LABEL_107;
              }

              goto LABEL_106;
            }

            [(SMReceiverCacheManager *)selfCopy transitionFromTriggeredToCacheReleasedDueToEvent:event];
          }
        }

        else
        {
          switch(state)
          {
            case 5:
              [(SMReceiverCacheManager *)selfCopy transitionFromCacheReleasedToCachePersistenceDueToEvent:event];
              break;
            case 6:
              [(SMReceiverCacheManager *)selfCopy transitionFromCacheReleasedToCleanupDueToEvent:event];
              break;
            case 9:
              [(SMReceiverCacheManager *)selfCopy transitionFromCacheReleasedToCacheDownloadFailedDueToEvent:event];
              break;
            default:
              v39 = a2;
              v46 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
              if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
              {
                [(SMReceiverCacheManager *)selfCopy sessionID];
                state = v91 = state;
                v92 = objc_opt_class();
                v93 = NSStringFromClass(v92);
                v94 = NSStringFromSelector(v39);
                *buf = 138413314;
                stateCopy8 = state;
                v107 = 2112;
                v108 = v93;
                v109 = 2112;
                *v110 = v94;
                *&v110[8] = 1024;
                *&v110[10] = v91;
                *&v110[14] = 2112;
                *&v110[16] = v11;
                _os_log_error_impl(&dword_2304B3000, v46, OS_LOG_TYPE_ERROR, "#SafetyCache,Receiver,sessionID:%@,%@,%@,unknown or unhandled toState:%d for fromState:%@", buf, 0x30u);

                LODWORD(state) = v91;
              }

              v41 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
              if (!os_log_type_enabled(v41, OS_LOG_TYPE_FAULT))
              {
                goto LABEL_107;
              }

              goto LABEL_106;
          }
        }

LABEL_101:
        v48 = [MEMORY[0x277CBEAA8] now];
        receiverContact2 = [(SMReceiverCacheManager *)selfCopy receiverContact];
        sessionStatus2 = [receiverContact2 sessionStatus];
        [sessionStatus2 setLastUpdateDate:v48];

        delegate = [(SMReceiverCacheManager *)selfCopy delegate];
        sessionID = [(SMReceiverCacheManager *)selfCopy sessionID];
        sessionStatus3 = [(SMReceiverCacheManager *)selfCopy sessionStatus];
        [delegate sessionStatusChanged:sessionID status:sessionStatus3];

        receiverContact3 = [(SMReceiverCacheManager *)selfCopy receiverContact];
        sessionStatus4 = [receiverContact3 sessionStatus];
        sessionState2 = [sessionStatus4 sessionState];

        if (sessionState2 != 6)
        {
          [(SMReceiverCacheManager *)selfCopy updateReceiverContactInStore];
        }

        goto LABEL_108;
      }

      if (sessionState == 1)
      {
        if (state > 5)
        {
          if (state <= 7)
          {
            if (state == 6)
            {
              [(SMReceiverCacheManager *)selfCopy transitionFromInitializingToCleanupDueToEvent:event];
            }

            else
            {
              [(SMReceiverCacheManager *)selfCopy transitionFromInitializingToMissingSessionInfoDueToEvent:event];
            }

            goto LABEL_101;
          }

          if (state == 8)
          {
            [(SMReceiverCacheManager *)selfCopy transitionFromInitializingToMissingKeyReleaseInfoDueToEvent:event];
            goto LABEL_101;
          }

          if (state == 9)
          {
            [(SMReceiverCacheManager *)selfCopy transitionFromInitializingToCacheDownloadFailedDueToEvent:event];
            goto LABEL_101;
          }
        }

        else
        {
          if (state > 3)
          {
            if (state == 4)
            {
              [(SMReceiverCacheManager *)selfCopy transitionFromInitializingToCacheReleasedDueToEvent:event];
            }

            else
            {
              [(SMReceiverCacheManager *)selfCopy transitionFromInitializingToCachePersistenceDueToEvent:event];
            }

            goto LABEL_101;
          }

          if (state == 2)
          {
            [(SMReceiverCacheManager *)selfCopy transitionFromInitializingToActiveDueToEvent:event];
            goto LABEL_101;
          }

          if (state == 3)
          {
            [(SMReceiverCacheManager *)selfCopy transitionFromInitializingToTriggeredDueToEvent:event];
            goto LABEL_101;
          }
        }

        v39 = a2;
        v57 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
        {
          [(SMReceiverCacheManager *)selfCopy sessionID];
          state = v99 = state;
          v100 = objc_opt_class();
          v101 = NSStringFromClass(v100);
          v102 = NSStringFromSelector(v39);
          *buf = 138413314;
          stateCopy8 = state;
          v107 = 2112;
          v108 = v101;
          v109 = 2112;
          *v110 = v102;
          *&v110[8] = 1024;
          *&v110[10] = v99;
          *&v110[14] = 2112;
          *&v110[16] = v11;
          _os_log_error_impl(&dword_2304B3000, v57, OS_LOG_TYPE_ERROR, "#SafetyCache,Receiver,sessionID:%@,%@,%@,unknown or unhandled toState:%d for fromState:%@", buf, 0x30u);

          LODWORD(state) = v99;
        }

        v41 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (!os_log_type_enabled(v41, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_107;
        }

        goto LABEL_106;
      }

      if (sessionState == 2)
      {
        switch(state)
        {
          case 8:
            [(SMReceiverCacheManager *)selfCopy transitionFromActiveToMissingKeyReleaseInfoDueToEvent:event];
            break;
          case 6:
            [(SMReceiverCacheManager *)selfCopy transitionFromActiveToCleanupDueToEvent:event];
            break;
          case 3:
            [(SMReceiverCacheManager *)selfCopy transitionFromActiveToTriggeredDueToEvent:event];
            break;
          default:
            v39 = a2;
            v45 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
            if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
            {
              [(SMReceiverCacheManager *)selfCopy sessionID];
              state = v87 = state;
              v88 = objc_opt_class();
              v89 = NSStringFromClass(v88);
              v90 = NSStringFromSelector(v39);
              *buf = 138413314;
              stateCopy8 = state;
              v107 = 2112;
              v108 = v89;
              v109 = 2112;
              *v110 = v90;
              *&v110[8] = 1024;
              *&v110[10] = v87;
              *&v110[14] = 2112;
              *&v110[16] = v11;
              _os_log_error_impl(&dword_2304B3000, v45, OS_LOG_TYPE_ERROR, "#SafetyCache,Receiver,sessionID:%@,%@,%@,unknown or unhandled toState:%d for fromState:%@", buf, 0x30u);

              LODWORD(state) = v87;
            }

            v41 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
            if (!os_log_type_enabled(v41, OS_LOG_TYPE_FAULT))
            {
              goto LABEL_107;
            }

            goto LABEL_106;
        }

        goto LABEL_101;
      }
    }

    else
    {
      if (sessionState <= 6)
      {
        if (sessionState == 5)
        {
          if (state != 6)
          {
            v39 = a2;
            v40 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
            if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
            {
              [(SMReceiverCacheManager *)selfCopy sessionID];
              state = v71 = state;
              v72 = objc_opt_class();
              v73 = NSStringFromClass(v72);
              v74 = NSStringFromSelector(v39);
              *buf = 138413314;
              stateCopy8 = state;
              v107 = 2112;
              v108 = v73;
              v109 = 2112;
              *v110 = v74;
              *&v110[8] = 1024;
              *&v110[10] = v71;
              *&v110[14] = 2112;
              *&v110[16] = v11;
              _os_log_error_impl(&dword_2304B3000, v40, OS_LOG_TYPE_ERROR, "#SafetyCache,Receiver,sessionID:%@,%@,%@,unknown or unhandled toState:%d for fromState:%@", buf, 0x30u);

              LODWORD(state) = v71;
            }

            v41 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
            if (!os_log_type_enabled(v41, OS_LOG_TYPE_FAULT))
            {
              goto LABEL_107;
            }

            goto LABEL_106;
          }

          [(SMReceiverCacheManager *)selfCopy transitionFromCachePersistenceToCleanupDueToEvent:event];
          goto LABEL_101;
        }

        v28 = a2;
        v29 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          sessionID2 = [(SMReceiverCacheManager *)selfCopy sessionID];
          v63 = objc_opt_class();
          v64 = NSStringFromClass(v63);
          v65 = NSStringFromSelector(v28);
          *buf = 138412802;
          stateCopy8 = sessionID2;
          v107 = 2112;
          v108 = v64;
          v109 = 2112;
          *v110 = v65;
          _os_log_error_impl(&dword_2304B3000, v29, OS_LOG_TYPE_ERROR, "#SafetyCache,Receiver,sessionID:%@,%@,%@,tried to transition out of Cleanup state", buf, 0x20u);
        }

        v30 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (!os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
        {
LABEL_51:

LABEL_108:
          goto LABEL_109;
        }

        v31 = objc_opt_class();
        v32 = NSStringFromClass(v31);
        v33 = NSStringFromSelector(v28);
        *buf = 138412546;
        stateCopy8 = v32;
        v107 = 2112;
        v108 = v33;
        v34 = "#SafetyCache,Receiver,%@,%@,tried to transition out of Cleanup state";
        v35 = v30;
        v36 = 22;
LABEL_111:
        _os_log_fault_impl(&dword_2304B3000, v35, OS_LOG_TYPE_FAULT, v34, buf, v36);

        goto LABEL_51;
      }

      switch(sessionState)
      {
        case 7:
          if (state == 3)
          {
            [(SMReceiverCacheManager *)selfCopy transitionFromMissingSessionInfoToTriggeredDueToEvent:event];
          }

          else
          {
            if (state != 6)
            {
              v39 = a2;
              v43 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
              if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
              {
                [(SMReceiverCacheManager *)selfCopy sessionID];
                state = v79 = state;
                v80 = objc_opt_class();
                v81 = NSStringFromClass(v80);
                v82 = NSStringFromSelector(v39);
                *buf = 138413314;
                stateCopy8 = state;
                v107 = 2112;
                v108 = v81;
                v109 = 2112;
                *v110 = v82;
                *&v110[8] = 1024;
                *&v110[10] = v79;
                *&v110[14] = 2112;
                *&v110[16] = v11;
                _os_log_error_impl(&dword_2304B3000, v43, OS_LOG_TYPE_ERROR, "#SafetyCache,Receiver,sessionID:%@,%@,%@,unknown or unhandled toState:%d for fromState:%@", buf, 0x30u);

                LODWORD(state) = v79;
              }

              v41 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
              if (!os_log_type_enabled(v41, OS_LOG_TYPE_FAULT))
              {
                goto LABEL_107;
              }

              goto LABEL_106;
            }

            [(SMReceiverCacheManager *)selfCopy transitionFromMissingSessionInfoToCleanupDueToEvent:event];
          }

          goto LABEL_101;
        case 8:
          if (state == 3)
          {
            [(SMReceiverCacheManager *)selfCopy transitionFromMissingKeyReleaseInfoToTriggeredDueToEvent:event];
          }

          else
          {
            if (state != 6)
            {
              v39 = a2;
              v44 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
              if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
              {
                [(SMReceiverCacheManager *)selfCopy sessionID];
                state = v83 = state;
                v84 = objc_opt_class();
                v85 = NSStringFromClass(v84);
                v86 = NSStringFromSelector(v39);
                *buf = 138413314;
                stateCopy8 = state;
                v107 = 2112;
                v108 = v85;
                v109 = 2112;
                *v110 = v86;
                *&v110[8] = 1024;
                *&v110[10] = v83;
                *&v110[14] = 2112;
                *&v110[16] = v11;
                _os_log_error_impl(&dword_2304B3000, v44, OS_LOG_TYPE_ERROR, "#SafetyCache,Receiver,sessionID:%@,%@,%@,unknown or unhandled toState:%d for fromState:%@", buf, 0x30u);

                LODWORD(state) = v83;
              }

              v41 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
              if (!os_log_type_enabled(v41, OS_LOG_TYPE_FAULT))
              {
                goto LABEL_107;
              }

              goto LABEL_106;
            }

            [(SMReceiverCacheManager *)selfCopy transitionFromMissingKeyReleaseInfoToCleanupDueToEvent:event];
          }

          goto LABEL_101;
        case 9:
          switch(state)
          {
            case 6:
              [(SMReceiverCacheManager *)selfCopy transitionFromCacheDownloadFailedToCleanupDueToEvent:event];
              break;
            case 5:
              [(SMReceiverCacheManager *)selfCopy transitionFromCacheDownloadFailedToCachePersistenceDueToEvent:event];
              break;
            case 4:
              [(SMReceiverCacheManager *)selfCopy transitionFromCacheDownloadFailedToCacheReleasedDueToEvent:event];
              goto LABEL_101;
            default:
              v39 = a2;
              v47 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
              if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
              {
                [(SMReceiverCacheManager *)selfCopy sessionID];
                state = v95 = state;
                v96 = objc_opt_class();
                v97 = NSStringFromClass(v96);
                v98 = NSStringFromSelector(v39);
                *buf = 138413314;
                stateCopy8 = state;
                v107 = 2112;
                v108 = v97;
                v109 = 2112;
                *v110 = v98;
                *&v110[8] = 1024;
                *&v110[10] = v95;
                *&v110[14] = 2112;
                *&v110[16] = v11;
                _os_log_error_impl(&dword_2304B3000, v47, OS_LOG_TYPE_ERROR, "#SafetyCache,Receiver,sessionID:%@,%@,%@,unknown or unhandled toState:%d for fromState:%@", buf, 0x30u);

                LODWORD(state) = v95;
              }

              v41 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
              if (!os_log_type_enabled(v41, OS_LOG_TYPE_FAULT))
              {
                goto LABEL_107;
              }

LABEL_106:
              v58 = objc_opt_class();
              NSStringFromClass(v58);
              v60 = v59 = state;
              v61 = NSStringFromSelector(v39);
              *buf = 138413058;
              stateCopy8 = v60;
              v107 = 2112;
              v108 = v61;
              v109 = 1024;
              *v110 = v59;
              *&v110[4] = 2112;
              *&v110[6] = v11;
              _os_log_fault_impl(&dword_2304B3000, v41, OS_LOG_TYPE_FAULT, "#SafetyCache,Receiver,%@,%@,unknown or unhandled toState:%d for fromState:%@", buf, 0x26u);

LABEL_107:
              goto LABEL_108;
          }

          goto LABEL_101;
      }
    }

    v37 = a2;
    v38 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      sessionID3 = [(SMReceiverCacheManager *)selfCopy sessionID];
      v67 = objc_opt_class();
      v68 = NSStringFromClass(v67);
      v69 = NSStringFromSelector(v37);
      *buf = 138413058;
      stateCopy8 = sessionID3;
      v107 = 2112;
      v108 = v68;
      v109 = 2112;
      *v110 = v69;
      *&v110[8] = 1024;
      *&v110[10] = sessionState;
      _os_log_error_impl(&dword_2304B3000, v38, OS_LOG_TYPE_ERROR, "#SafetyCache,Receiver,sessionID:%@,%@,%@,unknown or unhandled fromState:%d", buf, 0x26u);
    }

    v30 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (!os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_51;
    }

    v70 = objc_opt_class();
    v32 = NSStringFromClass(v70);
    v33 = NSStringFromSelector(v37);
    *buf = 138412802;
    stateCopy8 = v32;
    v107 = 2112;
    v108 = v33;
    v109 = 1024;
    *v110 = sessionState;
    v34 = "#SafetyCache,Receiver,%@,%@,unknown or unhandled fromState:%d";
    v35 = v30;
    v36 = 28;
    goto LABEL_111;
  }

  v12 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    sessionID4 = [(SMReceiverCacheManager *)selfCopy sessionID];
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    v16 = NSStringFromSelector(a2);
    *buf = 138413058;
    stateCopy8 = sessionID4;
    v107 = 2112;
    v108 = v15;
    v109 = 2112;
    *v110 = v16;
    *&v110[8] = 2112;
    *&v110[10] = v11;
    _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, "#SafetyCache,Receiver,sessionID:%@,%@,%@,attempted state transition when already in that state,%@", buf, 0x2Au);
  }

LABEL_109:
}

- (void)transitionFromInitializingToActiveDueToEvent:(int64_t)event
{
  receiverContact = [(SMReceiverCacheManager *)self receiverContact];
  sessionStatus = [receiverContact sessionStatus];
  [sessionStatus setSessionState:2];

  [(SMReceiverCacheManager *)self acceptShareInvitation:event];
}

- (void)transitionFromInitializingToTriggeredDueToEvent:(int64_t)event
{
  receiverContact = [(SMReceiverCacheManager *)self receiverContact];
  sessionStatus = [receiverContact sessionStatus];
  [sessionStatus setSessionState:3];

  [(SMReceiverCacheManager *)self acceptShareInvitation:event];
}

- (void)transitionFromInitializingToCacheReleasedDueToEvent:(int64_t)event
{
  receiverContact = [(SMReceiverCacheManager *)self receiverContact];
  sessionStatus = [receiverContact sessionStatus];
  [sessionStatus setSessionState:4];

  [(SMReceiverCacheManager *)self fetchSafetyCacheData:event];
}

- (void)transitionFromInitializingToCacheDownloadFailedDueToEvent:(int64_t)event
{
  receiverContact = [(SMReceiverCacheManager *)self receiverContact];
  sessionStatus = [receiverContact sessionStatus];
  [sessionStatus setSessionState:4];

  [(SMReceiverCacheManager *)self fetchSafetyCacheData:15];
}

- (void)transitionFromInitializingToCachePersistenceDueToEvent:(int64_t)event
{
  receiverContact = [(SMReceiverCacheManager *)self receiverContact];
  sessionStatus = [receiverContact sessionStatus];
  [sessionStatus setSessionState:5];

  [(SMReceiverCacheManager *)self cachePersistenceStartTimer];
}

- (void)transitionFromInitializingToCleanupDueToEvent:(int64_t)event
{
  receiverContact = [(SMReceiverCacheManager *)self receiverContact];
  sessionStatus = [receiverContact sessionStatus];
  [sessionStatus setSessionState:6];

  [(SMReceiverCacheManager *)self deleteReceiverContactFromStore:2];
}

- (void)transitionFromActiveToTriggeredDueToEvent:(int64_t)event
{
  receiverContact = [(SMReceiverCacheManager *)self receiverContact];
  sessionStatus = [receiverContact sessionStatus];
  [sessionStatus setSessionState:3];

  [(SMReceiverCacheManager *)self acceptShareInvitation:event];
}

- (void)transitionFromInitializingToMissingSessionInfoDueToEvent:(int64_t)event
{
  v49 = *MEMORY[0x277D85DE8];
  receiverContact = [(SMReceiverCacheManager *)self receiverContact];
  sessionStatus = [receiverContact sessionStatus];
  sessionStartInfoRequestCount = [sessionStatus sessionStartInfoRequestCount];
  if (sessionStartInfoRequestCount < 1)
  {
    v37 = a2;
  }

  else
  {
    receiverContact2 = [(SMReceiverCacheManager *)self receiverContact];
    sessionStatus2 = [receiverContact2 sessionStatus];
    lastSessionStartInfoRequestDate = [sessionStatus2 lastSessionStartInfoRequestDate];
    [lastSessionStartInfoRequestDate timeIntervalSinceNow];
    if (v11 > -60.0)
    {

LABEL_9:
      v16 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        sessionID = [(SMReceiverCacheManager *)self sessionID];
        v18 = objc_opt_class();
        v19 = NSStringFromClass(v18);
        v20 = NSStringFromSelector(a2);
        *buf = 138412802;
        v44 = sessionID;
        v45 = 2112;
        v46 = v19;
        v47 = 2112;
        v48 = v20;
        _os_log_impl(&dword_2304B3000, v16, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Receiver,sessionID:%@,%@,%@,repeated attempts to request SMSessionStartInfo, drop request", buf, 0x20u);
      }

      goto LABEL_14;
    }

    v37 = a2;
  }

  receiverContact3 = [(SMReceiverCacheManager *)self receiverContact];
  sessionStatus3 = [receiverContact3 sessionStatus];
  sessionStartInfoRequestCount2 = [sessionStatus3 sessionStartInfoRequestCount];

  if (sessionStartInfoRequestCount >= 1)
  {
  }

  v15 = sessionStartInfoRequestCount2 <= 5;
  a2 = v37;
  if (!v15)
  {
    goto LABEL_9;
  }

  receiverContact4 = [(SMReceiverCacheManager *)self receiverContact];
  sessionStatus4 = [receiverContact4 sessionStatus];
  [sessionStatus4 setSessionState:7];

  v23 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    sessionID2 = [(SMReceiverCacheManager *)self sessionID];
    v25 = objc_opt_class();
    v26 = NSStringFromClass(v25);
    v27 = NSStringFromSelector(v37);
    *buf = 138412802;
    v44 = sessionID2;
    v45 = 2112;
    v46 = v26;
    v47 = 2112;
    v48 = v27;
    _os_log_impl(&dword_2304B3000, v23, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Receiver,sessionID:%@,%@,%@,send sessionStartInfoRequestMessage", buf, 0x20u);
  }

  v28 = objc_alloc(MEMORY[0x277D4ABE0]);
  sessionID3 = [(SMReceiverCacheManager *)self sessionID];
  v30 = [v28 initWithSessionID:sessionID3];

  messagingService = [(SMReceiverCacheManager *)self messagingService];
  v32 = objc_alloc(MEMORY[0x277D4AA98]);
  sessionStatus5 = [(SMReceiverCacheManager *)self sessionStatus];
  initiatorHandle = [sessionStatus5 initiatorHandle];
  v42 = initiatorHandle;
  v35 = [MEMORY[0x277CBEA60] arrayWithObjects:&v42 count:1];
  v36 = [v32 initWithReceiverHandles:v35 identifier:0 displayName:0];
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __83__SMReceiverCacheManager_transitionFromInitializingToMissingSessionInfoDueToEvent___block_invoke;
  v38[3] = &unk_2788CD048;
  v39 = v30;
  selfCopy = self;
  v41 = v37;
  v16 = v30;
  [messagingService sendIDSMessage:v16 toConversation:v36 completion:v38];

LABEL_14:
}

void __83__SMReceiverCacheManager_transitionFromInitializingToMissingSessionInfoDueToEvent___block_invoke(uint64_t a1, int a2, void *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [*(a1 + 32) sessionID];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = NSStringFromSelector(*(a1 + 48));
    v19 = 138413314;
    v20 = v7;
    v21 = 2112;
    v22 = v9;
    v23 = 2112;
    v24 = v10;
    v25 = 1024;
    v26 = a2;
    v27 = 2112;
    v28 = v5;
    _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Receiver,sessionID:%@,%@,%@,SMMessageTypeSessionStartInfoRequest, sent with status:%d error:%@", &v19, 0x30u);
  }

  v11 = [MEMORY[0x277CBEAA8] date];
  v12 = [*(a1 + 40) receiverContact];
  v13 = [v12 sessionStatus];
  [v13 setLastSessionStartInfoRequestDate:v11];

  v14 = [*(a1 + 40) receiverContact];
  v15 = [v14 sessionStatus];
  v16 = [v15 sessionStartInfoRequestCount];
  v17 = [*(a1 + 40) receiverContact];
  v18 = [v17 sessionStatus];
  [v18 setSessionStartInfoRequestCount:v16 + 1];

  [*(a1 + 40) updateReceiverContactInStore];
}

- (void)transitionFromInitializingToMissingKeyReleaseInfoDueToEvent:(int64_t)event
{
  receiverContact = [(SMReceiverCacheManager *)self receiverContact];
  sessionStatus = [receiverContact sessionStatus];
  [sessionStatus setSessionState:8];

  [(SMReceiverCacheManager *)self requestMissingKeyReleaseInfo];
}

- (void)transitionFromActiveToMissingKeyReleaseInfoDueToEvent:(int64_t)event
{
  receiverContact = [(SMReceiverCacheManager *)self receiverContact];
  sessionStatus = [receiverContact sessionStatus];
  [sessionStatus setSessionState:8];

  [(SMReceiverCacheManager *)self requestMissingKeyReleaseInfo];
}

- (void)requestMissingKeyReleaseInfo
{
  v46 = *MEMORY[0x277D85DE8];
  receiverContact = [(SMReceiverCacheManager *)self receiverContact];
  sessionStatus = [receiverContact sessionStatus];
  keyReleaseInfoRequestCount = [sessionStatus keyReleaseInfoRequestCount];
  if (keyReleaseInfoRequestCount < 1)
  {
    v34 = a2;
  }

  else
  {
    receiverContact2 = [(SMReceiverCacheManager *)self receiverContact];
    sessionStatus2 = [receiverContact2 sessionStatus];
    lastKeyReleaseInfoRequestDate = [sessionStatus2 lastKeyReleaseInfoRequestDate];
    [lastKeyReleaseInfoRequestDate timeIntervalSinceNow];
    if (v10 > -60.0)
    {

LABEL_9:
      v15 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        sessionID = [(SMReceiverCacheManager *)self sessionID];
        v17 = objc_opt_class();
        v18 = NSStringFromClass(v17);
        v19 = NSStringFromSelector(a2);
        *buf = 138412802;
        v41 = sessionID;
        v42 = 2112;
        v43 = v18;
        v44 = 2112;
        v45 = v19;
        _os_log_impl(&dword_2304B3000, v15, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Receiver,sessionID:%@,%@,%@,repeated attempts to request KeyReleaseInfo, drop request", buf, 0x20u);
      }

      goto LABEL_14;
    }

    v34 = a2;
  }

  receiverContact3 = [(SMReceiverCacheManager *)self receiverContact];
  sessionStatus3 = [receiverContact3 sessionStatus];
  keyReleaseInfoRequestCount2 = [sessionStatus3 keyReleaseInfoRequestCount];

  if (keyReleaseInfoRequestCount >= 1)
  {
  }

  v14 = keyReleaseInfoRequestCount2 <= 5;
  a2 = v34;
  if (!v14)
  {
    goto LABEL_9;
  }

  v20 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    sessionID2 = [(SMReceiverCacheManager *)self sessionID];
    v22 = objc_opt_class();
    v23 = NSStringFromClass(v22);
    v24 = NSStringFromSelector(v34);
    *buf = 138412802;
    v41 = sessionID2;
    v42 = 2112;
    v43 = v23;
    v44 = 2112;
    v45 = v24;
    _os_log_impl(&dword_2304B3000, v20, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Receiver,sessionID:%@,%@,%@,send keyReleaseInfoRequestMessage", buf, 0x20u);
  }

  v25 = objc_alloc(MEMORY[0x277D4AB08]);
  sessionID3 = [(SMReceiverCacheManager *)self sessionID];
  v27 = [v25 initWithSessionID:sessionID3];

  messagingService = [(SMReceiverCacheManager *)self messagingService];
  v29 = objc_alloc(MEMORY[0x277D4AA98]);
  sessionStatus4 = [(SMReceiverCacheManager *)self sessionStatus];
  initiatorHandle = [sessionStatus4 initiatorHandle];
  v39 = initiatorHandle;
  v32 = [MEMORY[0x277CBEA60] arrayWithObjects:&v39 count:1];
  v33 = [v29 initWithReceiverHandles:v32 identifier:0 displayName:0];
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __54__SMReceiverCacheManager_requestMissingKeyReleaseInfo__block_invoke;
  v35[3] = &unk_2788CD048;
  v36 = v27;
  selfCopy = self;
  v38 = v34;
  v15 = v27;
  [messagingService sendIDSMessage:v15 toConversation:v33 completion:v35];

LABEL_14:
}

void __54__SMReceiverCacheManager_requestMissingKeyReleaseInfo__block_invoke(uint64_t a1, int a2, void *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [*(a1 + 32) sessionID];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = NSStringFromSelector(*(a1 + 48));
    v19 = 138413314;
    v20 = v7;
    v21 = 2112;
    v22 = v9;
    v23 = 2112;
    v24 = v10;
    v25 = 1024;
    v26 = a2;
    v27 = 2112;
    v28 = v5;
    _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Receiver,sessionID:%@,%@,%@,SMMessageTypeKeyReleaseInfoRequest, sent with status:%d error:%@", &v19, 0x30u);
  }

  v11 = [MEMORY[0x277CBEAA8] date];
  v12 = [*(a1 + 40) receiverContact];
  v13 = [v12 sessionStatus];
  [v13 setLastKeyReleaseInfoRequestDate:v11];

  v14 = [*(a1 + 40) receiverContact];
  v15 = [v14 sessionStatus];
  v16 = [v15 keyReleaseInfoRequestCount];
  v17 = [*(a1 + 40) receiverContact];
  v18 = [v17 sessionStatus];
  [v18 setKeyReleaseInfoRequestCount:v16 + 1];

  [*(a1 + 40) updateReceiverContactInStore];
}

- (void)transitionFromActiveToCleanupDueToEvent:(int64_t)event
{
  receiverContact = [(SMReceiverCacheManager *)self receiverContact];
  sessionStatus = [receiverContact sessionStatus];
  [sessionStatus setSessionState:6];

  [(SMReceiverCacheManager *)self deleteReceiverContactFromStore:2];
}

- (void)transitionFromTriggeredToCacheReleasedDueToEvent:(int64_t)event
{
  receiverContact = [(SMReceiverCacheManager *)self receiverContact];
  sessionStatus = [receiverContact sessionStatus];
  [sessionStatus setSessionState:4];

  [(SMReceiverCacheManager *)self fetchSafetyCacheData:event];
}

- (void)transitionFromCacheReleasedToCacheDownloadFailedDueToEvent:(int64_t)event
{
  receiverContact = [(SMReceiverCacheManager *)self receiverContact];
  sessionStatus = [receiverContact sessionStatus];
  [sessionStatus setSessionState:9];
}

- (void)transitionFromCacheDownloadFailedToCacheReleasedDueToEvent:(int64_t)event
{
  receiverContact = [(SMReceiverCacheManager *)self receiverContact];
  sessionStatus = [receiverContact sessionStatus];
  [sessionStatus setSessionState:4];

  [(SMReceiverCacheManager *)self fetchSafetyCacheData:event];
}

- (void)transitionFromCacheDownloadFailedToCachePersistenceDueToEvent:(int64_t)event
{
  receiverContact = [(SMReceiverCacheManager *)self receiverContact];
  sessionStatus = [receiverContact sessionStatus];
  [sessionStatus setSessionState:5];

  [(SMReceiverCacheManager *)self cachePersistenceStartTimer];
}

- (void)transitionFromCacheDownloadFailedToCleanupDueToEvent:(int64_t)event
{
  receiverContact = [(SMReceiverCacheManager *)self receiverContact];
  sessionStatus = [receiverContact sessionStatus];
  [sessionStatus setSessionState:6];

  [(SMReceiverCacheManager *)self deleteReceiverContactFromStore:2];
}

- (void)transitionFromTriggeredToCleanupDueToEvent:(int64_t)event
{
  receiverContact = [(SMReceiverCacheManager *)self receiverContact];
  sessionStatus = [receiverContact sessionStatus];
  [sessionStatus setSessionState:6];

  [(SMReceiverCacheManager *)self deleteReceiverContactFromStore:2];
}

- (void)transitionFromCacheReleasedToCachePersistenceDueToEvent:(int64_t)event
{
  receiverContact = [(SMReceiverCacheManager *)self receiverContact];
  sessionStatus = [receiverContact sessionStatus];
  [sessionStatus setSessionState:5];

  [(SMReceiverCacheManager *)self cachePersistenceStartTimer];
}

- (void)transitionFromCacheReleasedToCleanupDueToEvent:(int64_t)event
{
  receiverContact = [(SMReceiverCacheManager *)self receiverContact];
  sessionStatus = [receiverContact sessionStatus];
  [sessionStatus setSessionState:6];

  [(SMReceiverCacheManager *)self deleteReceiverContactFromStore:2];
}

- (void)transitionFromCachePersistenceToCleanupDueToEvent:(int64_t)event
{
  receiverContact = [(SMReceiverCacheManager *)self receiverContact];
  sessionStatus = [receiverContact sessionStatus];
  [sessionStatus setSessionState:6];

  [(SMReceiverCacheManager *)self cachePersistenceStopTimer];

  [(SMReceiverCacheManager *)self deleteReceiverContactFromStore:2];
}

- (void)transitionFromMissingSessionInfoToTriggeredDueToEvent:(int64_t)event
{
  receiverContact = [(SMReceiverCacheManager *)self receiverContact];
  sessionStatus = [receiverContact sessionStatus];
  [sessionStatus setSessionState:3];

  [(SMReceiverCacheManager *)self acceptShareInvitation:event];
}

- (void)transitionFromMissingSessionInfoToCleanupDueToEvent:(int64_t)event
{
  receiverContact = [(SMReceiverCacheManager *)self receiverContact];
  sessionStatus = [receiverContact sessionStatus];
  [sessionStatus setSessionState:6];

  [(SMReceiverCacheManager *)self deleteReceiverContactFromStore:2];
}

- (void)transitionFromMissingKeyReleaseInfoToTriggeredDueToEvent:(int64_t)event
{
  receiverContact = [(SMReceiverCacheManager *)self receiverContact];
  sessionStatus = [receiverContact sessionStatus];
  [sessionStatus setSessionState:3];

  [(SMReceiverCacheManager *)self acceptShareInvitation:event];
}

- (void)transitionFromMissingKeyReleaseInfoToCleanupDueToEvent:(int64_t)event
{
  receiverContact = [(SMReceiverCacheManager *)self receiverContact];
  sessionStatus = [receiverContact sessionStatus];
  [sessionStatus setSessionState:6];

  [(SMReceiverCacheManager *)self deleteReceiverContactFromStore:2];
}

- (void)cachePersistenceStartTimer
{
  v49 = *MEMORY[0x277D85DE8];
  [(SMReceiverCacheManager *)self cachePersistenceStopTimer];
  getCachePersistenceAlarmDate = [(SMReceiverCacheManager *)self getCachePersistenceAlarmDate];
  [getCachePersistenceAlarmDate timeIntervalSinceNow];
  if (v5 <= 0.0)
  {
    v24 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      sessionID = [(SMReceiverCacheManager *)self sessionID];
      v26 = objc_opt_class();
      v27 = NSStringFromClass(v26);
      v28 = NSStringFromSelector(a2);
      *buf = 138412802;
      v42 = sessionID;
      v43 = 2112;
      v44 = v27;
      v45 = 2112;
      v46 = v28;
      _os_log_impl(&dword_2304B3000, v24, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Receiver,sessionID:%@,%@,%@,cache persistence timer expired in the past", buf, 0x20u);
    }

    [(SMReceiverCacheManager *)self onCachePersistenceExpiry];
  }

  else
  {
    objc_initWeak(&location, self);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    sessionID2 = [(SMReceiverCacheManager *)self sessionID];
    v9 = MEMORY[0x277CCACA8];
    sessionID3 = [(SMReceiverCacheManager *)self sessionID];
    v11 = [v9 stringWithFormat:@"%@.%@", @"com.apple.routined.SMReceiverCacheManager.cachePersistenceTimerIdentifierBase", sessionID3];

    v12 = [RTXPCTimerAlarm alloc];
    queue = [(SMReceiverCacheManager *)self queue];
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __52__SMReceiverCacheManager_cachePersistenceStartTimer__block_invoke;
    v36[3] = &unk_2788CD1F8;
    objc_copyWeak(v39, &location);
    v14 = sessionID2;
    v37 = v14;
    v15 = v7;
    v38 = v15;
    v39[1] = a2;
    v16 = [(RTXPCTimerAlarm *)v12 initWithIdentifier:v11 queue:queue handler:v36];
    [(SMReceiverCacheManager *)self setCachePersistenceTimerAlarm:v16];

    cachePersistenceTimerAlarm = [(SMReceiverCacheManager *)self cachePersistenceTimerAlarm];
    v35 = 0;
    [cachePersistenceTimerAlarm fireWithDate:getCachePersistenceAlarmDate error:&v35];
    v18 = v35;

    if (v18)
    {
      v19 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sessionID4 = [(SMReceiverCacheManager *)self sessionID];
        v20 = objc_opt_class();
        v21 = NSStringFromClass(v20);
        v22 = NSStringFromSelector(a2);
        localizedDescription = [v18 localizedDescription];
        *buf = 138413058;
        v42 = sessionID4;
        v43 = 2112;
        v44 = v21;
        v45 = 2112;
        v46 = v22;
        v47 = 2112;
        v48 = localizedDescription;
        _os_log_error_impl(&dword_2304B3000, v19, OS_LOG_TYPE_ERROR, "#SafetyCache,Receiver,sessionID:%@,%@,%@,cachePersistenceTimerAlarm fireWithDate hit error: %@", buf, 0x2Au);
      }
    }

    else
    {
      v19 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        sessionID5 = [(SMReceiverCacheManager *)self sessionID];
        v29 = objc_opt_class();
        v30 = NSStringFromClass(v29);
        v31 = NSStringFromSelector(a2);
        stringFromDate = [getCachePersistenceAlarmDate stringFromDate];
        *buf = 138413058;
        v42 = sessionID5;
        v43 = 2112;
        v44 = v30;
        v45 = 2112;
        v46 = v31;
        v47 = 2112;
        v48 = stringFromDate;
        _os_log_impl(&dword_2304B3000, v19, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Receiver,sessionID:%@,%@,%@,cachePersistenceTimerAlarm scheduled for: %@", buf, 0x2Au);
      }
    }

    objc_destroyWeak(v39);
    objc_destroyWeak(&location);
  }
}

void __52__SMReceiverCacheManager_cachePersistenceStartTimer__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  v4 = v3;
  if (WeakRetained)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
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
      _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Receiver,sessionID:%@,%@,%@,cache persistence timer fired", &v11, 0x20u);
    }

    [WeakRetained onCachePersistenceExpiry];
  }

  else
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
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
      _os_log_error_impl(&dword_2304B3000, v4, OS_LOG_TYPE_ERROR, "#SafetyCache,Receiver,sessionID:%@,%@,%@,self not found", &v11, 0x20u);
    }
  }
}

- (id)getCachePersistenceAlarmDate
{
  receiverContact = [(SMReceiverCacheManager *)self receiverContact];
  sessionStatus = [receiverContact sessionStatus];
  cacheExpiryDate = [sessionStatus cacheExpiryDate];

  if (!cacheExpiryDate)
  {
    v6 = MEMORY[0x277CBEAA8];
    [(SMReceiverCacheManager *)self cachePersistenceTime];
    v7 = [v6 dateWithTimeIntervalSinceNow:?];
    receiverContact2 = [(SMReceiverCacheManager *)self receiverContact];
    sessionStatus2 = [receiverContact2 sessionStatus];
    [sessionStatus2 setCacheExpiryDate:v7];
  }

  receiverContact3 = [(SMReceiverCacheManager *)self receiverContact];
  sessionStatus3 = [receiverContact3 sessionStatus];
  cacheExpiryDate2 = [sessionStatus3 cacheExpiryDate];

  return cacheExpiryDate2;
}

- (void)cachePersistenceStopTimer
{
  cachePersistenceTimerAlarm = [(SMReceiverCacheManager *)self cachePersistenceTimerAlarm];

  if (cachePersistenceTimerAlarm)
  {
    cachePersistenceTimerAlarm2 = [(SMReceiverCacheManager *)self cachePersistenceTimerAlarm];
    [cachePersistenceTimerAlarm2 invalidate];

    [(SMReceiverCacheManager *)self setCachePersistenceTimerAlarm:0];
  }
}

- (void)_setupCloudKitFunction
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = +[SMCloudKitZone getContainer];
  container = self->_container;
  self->_container = v3;

  defaultsManager = [(SMReceiverCacheManager *)self defaultsManager];
  v6 = [defaultsManager objectForKey:@"RTDefaultsSafetyCacheUseDevEnvForCloudKitFunction"];
  bOOLValue = [v6 BOOLValue];

  v8 = bOOLValue;
  v9 = objc_alloc(MEMORY[0x277D4AA80]);
  queue = [(SMReceiverCacheManager *)self queue];
  v11 = [v9 initWithEnvironment:v8 version:0 queue:queue];
  cloudKitFunction = self->_cloudKitFunction;
  self->_cloudKitFunction = v11;

  defaultsManager2 = [(SMReceiverCacheManager *)self defaultsManager];
  v14 = [defaultsManager2 objectForKey:@"RTDefaultsSafetyCachePersistenceTimeKey" value:&unk_2845A1D28];
  [v14 doubleValue];
  self->_cachePersistenceTime = v15;

  if (self->_cachePersistenceTime != 604800.0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      cachePersistenceTime = self->_cachePersistenceTime;
      v18 = 136316162;
      v19 = "[SMReceiverCacheManager _setupCloudKitFunction]";
      v20 = 2080;
      v21 = "overriding cache persistence time";
      v22 = 2048;
      v23 = 0x4122750000000000;
      v24 = 2048;
      v25 = cachePersistenceTime;
      v26 = 2112;
      v27 = @"RTDefaultsSafetyCachePersistenceTimeKey";
      _os_log_impl(&dword_2304B3000, v16, OS_LOG_TYPE_INFO, "%s, %s, original value, %.2f, overridden value, %.2f, by defaultsKey, %@", &v18, 0x34u);
    }
  }
}

- (void)acceptShareInvitation:(int64_t)invitation
{
  v58 = *MEMORY[0x277D85DE8];
  if ([(SMReceiverCacheManager *)self acceptShareInvitationInProgress])
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      return;
    }

    oslog = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
    {
      sessionID = [(SMReceiverCacheManager *)self sessionID];
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = NSStringFromSelector(a2);
      *buf = 138412802;
      *&buf[4] = sessionID;
      *&buf[12] = 2112;
      *&buf[14] = v8;
      *&buf[22] = 2112;
      v56 = v9;
      _os_log_impl(&dword_2304B3000, oslog, OS_LOG_TYPE_INFO, "#SafetyCache,Receiver,sessionID:%@,%@,%@,zone share accept operation already in progress", buf, 0x20u);
    }
  }

  else
  {
    receiverContact = [(SMReceiverCacheManager *)self receiverContact];
    sessionStatus = [receiverContact sessionStatus];
    zoneShareAccepted = [sessionStatus zoneShareAccepted];

    if (zoneShareAccepted)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        return;
      }

      oslog = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
      {
        sessionID2 = [(SMReceiverCacheManager *)self sessionID];
        v14 = objc_opt_class();
        v15 = NSStringFromClass(v14);
        v16 = NSStringFromSelector(a2);
        *buf = 138412802;
        *&buf[4] = sessionID2;
        *&buf[12] = 2112;
        *&buf[14] = v15;
        *&buf[22] = 2112;
        v56 = v16;
        _os_log_impl(&dword_2304B3000, oslog, OS_LOG_TYPE_INFO, "#SafetyCache,Receiver,sessionID:%@,%@,%@,zone share already accepted", buf, 0x20u);
      }
    }

    else
    {
      oslog = [objc_opt_class() receiverEventToString:invitation];
      v17 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        sessionID3 = [(SMReceiverCacheManager *)self sessionID];
        v19 = objc_opt_class();
        v20 = NSStringFromClass(v19);
        v21 = NSStringFromSelector(a2);
        *buf = 138413058;
        *&buf[4] = sessionID3;
        *&buf[12] = 2112;
        *&buf[14] = v20;
        *&buf[22] = 2112;
        v56 = v21;
        LOWORD(v57) = 2112;
        *(&v57 + 2) = oslog;
        _os_log_impl(&dword_2304B3000, v17, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Receiver,sessionID:%@,%@,%@,event:%@,attempting to accept the zone share", buf, 0x2Au);
      }

      [(SMReceiverCacheManager *)self setAcceptShareInvitationInProgress:1];
      objc_initWeak(&location, self);
      sessionID4 = [(SMReceiverCacheManager *)self sessionID];
      v22 = objc_opt_class();
      v44 = NSStringFromClass(v22);
      v23 = objc_alloc(MEMORY[0x277CBC2C0]);
      receiverContact2 = [(SMReceiverCacheManager *)self receiverContact];
      sharingInvitationData = [receiverContact2 sharingInvitationData];
      receiverContact3 = [(SMReceiverCacheManager *)self receiverContact];
      shareURL = [receiverContact3 shareURL];
      receiverContact4 = [(SMReceiverCacheManager *)self receiverContact];
      participantID = [receiverContact4 participantID];
      v46 = [v23 initWithSharingInvitationData:sharingInvitationData shareURL:shareURL participantID:participantID];

      v30 = [MEMORY[0x277CBEAA8] now];
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v56 = __Block_byref_object_copy__104;
      *&v57 = __Block_byref_object_dispose__104;
      *(&v57 + 1) = objc_alloc_init(MEMORY[0x277CBEB38]);
      v31 = *(*&buf[8] + 40);
      v32 = MEMORY[0x277CCABB0];
      sessionStatus2 = [(SMReceiverCacheManager *)self sessionStatus];
      v34 = [v32 numberWithInteger:{objc_msgSend(sessionStatus2, "sessionState")}];
      [v31 setValue:v34 forKey:@"receiverSessionState"];

      v35 = *(*&buf[8] + 40);
      v36 = [MEMORY[0x277CCABB0] numberWithInteger:invitation];
      [v35 setValue:v36 forKey:@"responseToEvent"];

      sessionID5 = [(SMReceiverCacheManager *)self sessionID];
      container = [(SMReceiverCacheManager *)self container];
      queue = [(SMReceiverCacheManager *)self queue];
      v40 = [[SMCloudKitQosOptions alloc] initWithDefaultQos:1 masqueradeBundleID:0 xpcActivity:0];
      v48[0] = MEMORY[0x277D85DD0];
      v48[1] = 3221225472;
      v48[2] = __48__SMReceiverCacheManager_acceptShareInvitation___block_invoke;
      v48[3] = &unk_2788CDAA8;
      v52 = buf;
      v41 = v30;
      v49 = v41;
      objc_copyWeak(v53, &location);
      v42 = sessionID4;
      v50 = v42;
      v43 = v44;
      v51 = v43;
      v53[1] = a2;
      [SMCloudKitZone acceptShareWithInvitationToken:v46 sessionID:sessionID5 container:container queue:queue qos:v40 withCompletion:v48];

      objc_destroyWeak(v53);
      _Block_object_dispose(buf, 8);

      objc_destroyWeak(&location);
    }
  }
}

void __48__SMReceiverCacheManager_acceptShareInvitation___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = *(*(*(a1 + 56) + 8) + 40);
  v7 = [MEMORY[0x277CCABB0] numberWithBool:a2];
  [v6 setValue:v7 forKey:@"wasSuccessful"];

  if (v5)
  {
    v8 = *(*(*(a1 + 56) + 8) + 40);
    v9 = MEMORY[0x277CCACA8];
    v10 = [v5 domain];
    v11 = [v9 stringWithFormat:@"%@:%d", v10, objc_msgSend(v5, "code")];
    [v8 setValue:v11 forKey:@"shareAcceptanceError"];
  }

  v12 = [MEMORY[0x277CBEAA8] date];
  [v12 timeIntervalSinceDate:*(a1 + 32)];
  v14 = v13;

  v15 = *(*(*(a1 + 56) + 8) + 40);
  v16 = [MEMORY[0x277CCABB0] numberWithDouble:v14];
  [v15 setValue:v16 forKey:@"timeToAcceptShare"];

  AnalyticsSendEvent();
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v18 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained setAcceptShareInvitationInProgress:0];
    [v18 onShareInvitationAcceptenceResult:a2 withError:v5];
  }

  else
  {
    v19 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = *(a1 + 40);
      v21 = *(a1 + 48);
      v22 = NSStringFromSelector(*(a1 + 72));
      *buf = 138413314;
      v24 = v20;
      v25 = 2112;
      v26 = v21;
      v27 = 2112;
      v28 = v22;
      v29 = 1024;
      v30 = a2;
      v31 = 2112;
      v32 = v5;
      _os_log_error_impl(&dword_2304B3000, v19, OS_LOG_TYPE_ERROR, "#SafetyCache,Receiver,sessionID:%@,%@,%@,cache manager released before zone share acceptence returned,success,%d,error,%@", buf, 0x30u);
    }
  }
}

- (void)fetchSafetyCacheData:(int64_t)data
{
  v79 = *MEMORY[0x277D85DE8];
  receiverContact = [(SMReceiverCacheManager *)self receiverContact];
  sessionStatus = [receiverContact sessionStatus];
  [sessionStatus setCacheDownloadError:0];

  receiverContact2 = [(SMReceiverCacheManager *)self receiverContact];
  sessionStatus2 = [receiverContact2 sessionStatus];
  sessionState = [sessionStatus2 sessionState];

  if (sessionState == 4)
  {
    receiverContact3 = [(SMReceiverCacheManager *)self receiverContact];
    sessionStatus3 = [receiverContact3 sessionStatus];
    zoneShareAccepted = [sessionStatus3 zoneShareAccepted];

    if (zoneShareAccepted)
    {
      [(SMReceiverCacheManager *)self setSafetyCacheFetchPending:0];
      v65 = [MEMORY[0x277CBEAA8] now];
      objc_initWeak(&location, self);
      sessionID = [(SMReceiverCacheManager *)self sessionID];
      v15 = objc_opt_class();
      v64 = NSStringFromClass(v15);
      receiverContact4 = [(SMReceiverCacheManager *)self receiverContact];
      allowReadToken = [receiverContact4 allowReadToken];
      v18 = [allowReadToken base64EncodedStringWithOptions:0];

      v66 = [objc_opt_class() receiverEventToString:data];
      v19 = data == 15 || data == 6;
      if (data == 15 || data == 6)
      {
        [(SMReceiverCacheManager *)self startCacheDownloadTimeoutTimer];
      }

      v20 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        sessionID2 = [(SMReceiverCacheManager *)self sessionID];
        v22 = objc_opt_class();
        v23 = NSStringFromClass(v22);
        v24 = NSStringFromSelector(a2);
        *buf = 138413058;
        *&buf[4] = sessionID2;
        *&buf[12] = 2112;
        *&buf[14] = v23;
        *&buf[22] = 2112;
        v77 = v24;
        LOWORD(v78) = 2112;
        *(&v78 + 2) = v66;
        _os_log_impl(&dword_2304B3000, v20, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Receiver,sessionID:%@,%@,%@,event:%@,requesting Safety Cache", buf, 0x2Au);
      }

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v77 = __Block_byref_object_copy__104;
      *&v78 = __Block_byref_object_dispose__104;
      *(&v78 + 1) = objc_alloc_init(MEMORY[0x277CBEB38]);
      v25 = *(*&buf[8] + 40);
      v26 = [MEMORY[0x277CCABB0] numberWithInteger:data];
      [v25 setValue:v26 forKey:@"responseToEvent"];

      v27 = *(*&buf[8] + 40);
      v28 = MEMORY[0x277CCABB0];
      receiverContact5 = [(SMReceiverCacheManager *)self receiverContact];
      allowReadToken2 = [receiverContact5 allowReadToken];
      v31 = [v28 numberWithInt:allowReadToken2 != 0];
      [v27 setValue:v31 forKey:@"tokenAvailable"];

      v32 = *(*&buf[8] + 40);
      v33 = MEMORY[0x277CCABB0];
      receiverContact6 = [(SMReceiverCacheManager *)self receiverContact];
      sessionStatus4 = [receiverContact6 sessionStatus];
      v36 = [v33 numberWithInt:{objc_msgSend(sessionStatus4, "triggerType") == 15}];
      [v32 setValue:v36 forKey:@"cacheReleasedViaScheduledSend"];

      cloudKitFunction = [(SMReceiverCacheManager *)self cloudKitFunction];
      uUIDString = [sessionID UUIDString];
      v67[0] = MEMORY[0x277D85DD0];
      v67[1] = 3221225472;
      v67[2] = __47__SMReceiverCacheManager_fetchSafetyCacheData___block_invoke;
      v67[3] = &unk_2788CDAD0;
      v39 = v65;
      v68 = v39;
      v72 = buf;
      objc_copyWeak(v73, &location);
      v40 = sessionID;
      v69 = v40;
      v41 = v64;
      v73[1] = a2;
      v70 = v41;
      selfCopy = self;
      v74 = v19;
      [cloudKitFunction requestSafetyCacheRecordFromZone:uUIDString withToken:v18 completion:v67];

      objc_destroyWeak(v73);
      _Block_object_dispose(buf, 8);

      objc_destroyWeak(&location);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v44 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
        {
          sessionID3 = [(SMReceiverCacheManager *)self sessionID];
          v46 = objc_opt_class();
          v47 = NSStringFromClass(v46);
          v48 = NSStringFromSelector(a2);
          *buf = 138412802;
          *&buf[4] = sessionID3;
          *&buf[12] = 2112;
          *&buf[14] = v47;
          *&buf[22] = 2112;
          v77 = v48;
          _os_log_impl(&dword_2304B3000, v44, OS_LOG_TYPE_INFO, "#SafetyCache,Receiver,sessionID:%@,%@,%@,initiate zone share accept process", buf, 0x20u);
        }
      }

      [(SMReceiverCacheManager *)self setSafetyCacheFetchPending:1];
      [(SMReceiverCacheManager *)self acceptShareInvitation:data];
    }
  }

  else
  {
    v42 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      sessionID4 = [(SMReceiverCacheManager *)self sessionID];
      v50 = objc_opt_class();
      v51 = NSStringFromClass(v50);
      v52 = NSStringFromSelector(a2);
      v53 = MEMORY[0x277D4AB58];
      receiverContact7 = [(SMReceiverCacheManager *)self receiverContact];
      sessionStatus5 = [receiverContact7 sessionStatus];
      v56 = [v53 convertSessionStateToString:{objc_msgSend(sessionStatus5, "sessionState")}];
      *buf = 138413058;
      *&buf[4] = sessionID4;
      *&buf[12] = 2112;
      *&buf[14] = v51;
      *&buf[22] = 2112;
      v77 = v52;
      LOWORD(v78) = 2112;
      *(&v78 + 2) = v56;
      _os_log_error_impl(&dword_2304B3000, v42, OS_LOG_TYPE_ERROR, "#SafetyCache,Receiver,sessionID:%@,%@,%@,tried to fetch safety cache in state: %@", buf, 0x2Au);
    }

    v43 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_FAULT))
    {
      v57 = objc_opt_class();
      v58 = NSStringFromClass(v57);
      v59 = NSStringFromSelector(a2);
      v60 = MEMORY[0x277D4AB58];
      receiverContact8 = [(SMReceiverCacheManager *)self receiverContact];
      sessionStatus6 = [receiverContact8 sessionStatus];
      v63 = [v60 convertSessionStateToString:{objc_msgSend(sessionStatus6, "sessionState")}];
      *buf = 138412802;
      *&buf[4] = v58;
      *&buf[12] = 2112;
      *&buf[14] = v59;
      *&buf[22] = 2112;
      v77 = v63;
      _os_log_fault_impl(&dword_2304B3000, v43, OS_LOG_TYPE_FAULT, "#SafetyCache,Receiver,%@,%@,tried to fetch safety cache in state: %@", buf, 0x20u);
    }
  }
}

void __47__SMReceiverCacheManager_fetchSafetyCacheData___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v96 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [MEMORY[0x277CBEAA8] date];
  [v7 timeIntervalSinceDate:*(a1 + 32)];
  v9 = v8;

  v10 = *(*(*(a1 + 64) + 8) + 40);
  v11 = [MEMORY[0x277CCABB0] numberWithDouble:v9];
  [v10 setValue:v11 forKey:@"timeToRequestCache"];

  v12 = *(*(*(a1 + 64) + 8) + 40);
  v13 = [MEMORY[0x277CCABB0] numberWithInt:v6 == 0];
  [v12 setValue:v13 forKey:@"wasRequestSuccessful"];

  if (v6)
  {
    v14 = *(*(*(a1 + 64) + 8) + 40);
    v15 = MEMORY[0x277CCACA8];
    v16 = [v6 domain];
    v17 = [v15 stringWithFormat:@"%@:%d", v16, objc_msgSend(v6, "code")];
    [v14 setValue:v17 forKey:@"cacheRequestError"];
  }

  WeakRetained = objc_loadWeakRetained((a1 + 72));
  if (!WeakRetained)
  {
    v26 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v78 = *(a1 + 40);
      v79 = *(a1 + 48);
      v80 = NSStringFromSelector(*(a1 + 80));
      *buf = 138413314;
      v87 = v78;
      v88 = 2112;
      v89 = v79;
      v90 = 2112;
      v91 = v80;
      v92 = 2112;
      v93 = v6;
      v94 = 2112;
      v95 = v5;
      _os_log_error_impl(&dword_2304B3000, v26, OS_LOG_TYPE_ERROR, "#SafetyCache,Receiver,sessionID:%@,%@,%@,cache manager released before request Safety Cache returned,error,%@,record,%@", buf, 0x34u);
    }

    goto LABEL_23;
  }

  v19 = [*(a1 + 56) defaultsManager];
  v20 = [v19 objectForKey:@"RTDefaultsMockTimeoutNextReceiverSafetyCacheDownload"];
  v21 = [v20 BOOLValue];

  if (!v21)
  {
    v27 = [*(a1 + 56) defaultsManager];
    v28 = [v27 objectForKey:@"RTDefaultsMockFailNextReceiverSafetyCacheDownload"];
    v29 = [v28 BOOLValue];

    v30 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    v31 = v30;
    if (!v6 && !v29)
    {
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v32 = *(a1 + 40);
        v33 = *(a1 + 48);
        v34 = NSStringFromSelector(*(a1 + 80));
        *buf = 138413058;
        v87 = v32;
        v88 = 2112;
        v89 = v33;
        v90 = 2112;
        v91 = v34;
        v92 = 2112;
        v93 = v5;
        _os_log_impl(&dword_2304B3000, v31, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Receiver,sessionID:%@,%@,%@,request for safety cache record successful,record,%@", buf, 0x2Au);
      }

      v35 = [v5 encryptedValues];
      v22 = [v35 objectForKeyedSubscript:@"PhoneSafetyCacheEncryptedData"];

      v36 = [v5 encryptedValues];
      v37 = [v36 objectForKeyedSubscript:@"WatchSafetyCacheEncryptedData"];

      v38 = [v22 length];
      v39 = [*(a1 + 56) receiverContact];
      v84 = v5;
      v40 = [v39 maxPhoneCacheSize];

      if (v38 <= v40)
      {
        v38 = v40;
      }

      v41 = [*(a1 + 56) receiverContact];
      [v41 setMaxPhoneCacheSize:v38];

      v42 = [v37 length];
      v43 = [*(a1 + 56) receiverContact];
      v44 = [v43 maxWatchCacheSize];

      if (v42 <= v44)
      {
        v42 = v44;
      }

      v45 = [*(a1 + 56) receiverContact];
      [v45 setMaxWatchCacheSize:v42];

      v46 = *(a1 + 88);
      v47 = *(*(a1 + 64) + 8);
      obj = *(v47 + 40);
      [WeakRetained decryptAndStoreSafetyCacheDataWithPhoneCacheData:v22 watchCacheData:v37 userInitiatedDownload:v46 metricsDict:&obj];
      objc_storeStrong((v47 + 40), obj);
      v48 = *(*(*(a1 + 64) + 8) + 40);
      v49 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[NSObject length](v22, "length") >> 10}];
      [v48 setValue:v49 forKey:@"phoneCacheSize"];

      v50 = *(*(*(a1 + 64) + 8) + 40);
      v51 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v37, "length") >> 10}];
      [v50 setValue:v51 forKey:@"watchCacheSize"];

      v52 = *(*(*(a1 + 64) + 8) + 40);
      v53 = MEMORY[0x277CCABB0];
      v54 = [WeakRetained phoneCache];
      v55 = [v54 locationsDuringSession];
      v56 = [v53 numberWithUnsignedInteger:{objc_msgSend(v55, "count")}];
      [v52 setValue:v56 forKey:@"phoneNumLocationsInTrace"];

      v57 = *(*(*(a1 + 64) + 8) + 40);
      v58 = MEMORY[0x277CCABB0];
      v59 = [WeakRetained watchCache];
      v60 = [v59 locationsDuringSession];
      v61 = [v58 numberWithUnsignedInteger:{objc_msgSend(v60, "count")}];
      [v57 setValue:v61 forKey:@"watchNumLocationsInTrace"];

      v62 = *(*(*(a1 + 64) + 8) + 40);
      v63 = MEMORY[0x277CCABB0];
      v64 = [WeakRetained phoneCache];
      v65 = [v64 locationsDuringSession];
      v66 = [v63 numberWithInt:{objc_msgSend(v65, "count") != 0}];
      [v62 setValue:v66 forKey:@"phoneLocationHistoryAvailable"];

      v67 = *(*(*(a1 + 64) + 8) + 40);
      v68 = MEMORY[0x277CCABB0];
      v69 = [WeakRetained watchCache];
      v70 = [v69 locationsDuringSession];
      v71 = [v68 numberWithInt:{objc_msgSend(v70, "count") != 0}];
      [v67 setValue:v71 forKey:@"watchLocationHistoryAvailable"];

      v5 = v84;
      v72 = *(*(*(a1 + 64) + 8) + 40);
      v73 = MEMORY[0x277CCABB0];
      +[RTRuntime footprint];
      v74 = [v73 numberWithDouble:?];
      [v72 setValue:v74 forKey:@"processFootprint"];

      AnalyticsSendEvent();
      goto LABEL_19;
    }

    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v81 = *(a1 + 40);
      v82 = *(a1 + 48);
      v83 = NSStringFromSelector(*(a1 + 80));
      *buf = 138413058;
      v87 = v81;
      v88 = 2112;
      v89 = v82;
      v90 = 2112;
      v91 = v83;
      v92 = 2112;
      v93 = v6;
      _os_log_error_impl(&dword_2304B3000, v31, OS_LOG_TYPE_ERROR, "#SafetyCache,Receiver,sessionID:%@,%@,%@,request cache failed with error %@", buf, 0x2Au);
    }

    [WeakRetained onCacheDownloadResult:0 userInitiatedDownload:*(a1 + 88) withError:v6];
LABEL_23:
    v75 = *(*(*(a1 + 64) + 8) + 40);
    v76 = MEMORY[0x277CCABB0];
    +[RTRuntime footprint];
    v77 = [v76 numberWithDouble:?];
    [v75 setValue:v77 forKey:@"processFootprint"];

    AnalyticsSendEvent();
    goto LABEL_24;
  }

  v22 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = *(a1 + 40);
    v24 = *(a1 + 48);
    v25 = NSStringFromSelector(*(a1 + 80));
    *buf = 138413058;
    v87 = v23;
    v88 = 2112;
    v89 = v24;
    v90 = 2112;
    v91 = v25;
    v92 = 2112;
    v93 = v5;
    _os_log_impl(&dword_2304B3000, v22, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Receiver,sessionID:%@,%@,%@,mock timing out safety cache record request,%@", buf, 0x2Au);
  }

LABEL_19:

LABEL_24:
}

- (void)decryptAndStoreSafetyCacheDataWithPhoneCacheData:(id)data watchCacheData:(id)cacheData userInitiatedDownload:(BOOL)download metricsDict:(id *)dict
{
  downloadCopy = download;
  v130[1] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  cacheDataCopy = cacheData;
  v11 = objc_opt_new();
  v12 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  v114 = dataCopy;
  if (dataCopy)
  {
    v14 = v11;
    v15 = cacheDataCopy;
    if (v13)
    {
      sessionID = [(SMReceiverCacheManager *)self sessionID];
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      v19 = NSStringFromSelector(a2);
      *buf = 138412802;
      v118 = sessionID;
      v119 = 2112;
      v120 = v18;
      v121 = 2112;
      v122 = v19;
      _os_log_impl(&dword_2304B3000, v12, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Receiver,sessionID:%@,%@,%@,decrypting phone safety cache data", buf, 0x20u);
    }

    receiverContact = [(SMReceiverCacheManager *)self receiverContact];
    safetyCacheKey = [receiverContact safetyCacheKey];
    sessionID2 = [(SMReceiverCacheManager *)self sessionID];
    v116 = 0;
    v23 = [SMCryptoUtilities decryptSafetyCache:v114 key:safetyCacheKey sessionID:sessionID2 role:@"Receiver" device:1 metricsDict:dict hashString:&v116];
    sessionID5 = v116;

    v25 = *dict;
    v26 = MEMORY[0x277CCABB0];
    workoutEvents = [v23 workoutEvents];
    v28 = [v26 numberWithUnsignedInteger:{objc_msgSend(workoutEvents, "count")}];
    [v25 setValue:v28 forKey:@"phoneNumWorkoutEvents"];

    locationsDuringSession = [v23 locationsDuringSession];
    v30 = [locationsDuringSession count];

    receiverContact2 = [(SMReceiverCacheManager *)self receiverContact];
    maxLocationsInPhoneCacheTrace = [receiverContact2 maxLocationsInPhoneCacheTrace];

    if (v30 <= maxLocationsInPhoneCacheTrace)
    {
      v33 = maxLocationsInPhoneCacheTrace;
    }

    else
    {
      v33 = v30;
    }

    receiverContact3 = [(SMReceiverCacheManager *)self receiverContact];
    [receiverContact3 setMaxLocationsInPhoneCacheTrace:v33];

    workoutEvents2 = [v23 workoutEvents];
    v36 = [workoutEvents2 count];

    receiverContact4 = [(SMReceiverCacheManager *)self receiverContact];
    phoneMaxWorkoutEvents = [receiverContact4 phoneMaxWorkoutEvents];

    if (v36 <= phoneMaxWorkoutEvents)
    {
      v39 = phoneMaxWorkoutEvents;
    }

    else
    {
      v39 = v36;
    }

    receiverContact5 = [(SMReceiverCacheManager *)self receiverContact];
    [receiverContact5 setPhoneMaxWorkoutEvents:v39];

    if (v23)
    {
      sessionID3 = [(SMReceiverCacheManager *)self sessionID];
      v11 = v14;
      [v23 logCacheForSessionID:sessionID3 role:@"Receiver" deviceType:@"phone" transaction:v14 hashString:sessionID5];
    }

    else
    {
      v48 = MEMORY[0x277D4AA70];
      sessionID3 = [(SMReceiverCacheManager *)self sessionID];
      v11 = v14;
      [v48 logNoCacheDataForSessionID:sessionID3 role:@"Receiver" deviceType:@"phone" transaction:v14];
    }

    cacheDataCopy = v15;
  }

  else
  {
    if (v13)
    {
      sessionID4 = [(SMReceiverCacheManager *)self sessionID];
      v43 = objc_opt_class();
      v44 = NSStringFromClass(v43);
      NSStringFromSelector(a2);
      v46 = v45 = v11;
      *buf = 138412802;
      v118 = sessionID4;
      v119 = 2112;
      v120 = v44;
      v121 = 2112;
      v122 = v46;
      _os_log_impl(&dword_2304B3000, v12, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Receiver,sessionID:%@,%@,%@,no phone safety cache data", buf, 0x20u);

      v11 = v45;
    }

    [*dict setValue:&unk_28459EA90 forKey:@"phoneCacheDecryptionResult"];
    v47 = MEMORY[0x277D4AA70];
    sessionID5 = [(SMReceiverCacheManager *)self sessionID];
    [v47 logNoCacheDataForSessionID:sessionID5 role:@"Receiver" deviceType:@"phone" transaction:v11];
    v23 = 0;
  }

  v49 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  v50 = os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT);
  if (cacheDataCopy)
  {
    v111 = v11;
    if (v50)
    {
      sessionID6 = [(SMReceiverCacheManager *)self sessionID];
      v52 = objc_opt_class();
      v53 = NSStringFromClass(v52);
      v54 = NSStringFromSelector(a2);
      *buf = 138412802;
      v118 = sessionID6;
      v119 = 2112;
      v120 = v53;
      v121 = 2112;
      v122 = v54;
      _os_log_impl(&dword_2304B3000, v49, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Receiver,sessionID:%@,%@,%@,decrypting watch safety cache data", buf, 0x20u);
    }

    receiverContact6 = [(SMReceiverCacheManager *)self receiverContact];
    safetyCacheKey2 = [receiverContact6 safetyCacheKey];
    sessionID7 = [(SMReceiverCacheManager *)self sessionID];
    v115 = 0;
    v58 = cacheDataCopy;
    v59 = [SMCryptoUtilities decryptSafetyCache:cacheDataCopy key:safetyCacheKey2 sessionID:sessionID7 role:@"Receiver" device:2 metricsDict:dict hashString:&v115];
    v60 = v115;

    locationsDuringSession2 = [v59 locationsDuringSession];
    v62 = [locationsDuringSession2 count];

    receiverContact7 = [(SMReceiverCacheManager *)self receiverContact];
    maxLocationsInWatchCacheTrace = [receiverContact7 maxLocationsInWatchCacheTrace];

    if (v62 <= maxLocationsInWatchCacheTrace)
    {
      v65 = maxLocationsInWatchCacheTrace;
    }

    else
    {
      v65 = v62;
    }

    receiverContact8 = [(SMReceiverCacheManager *)self receiverContact];
    [receiverContact8 setMaxLocationsInWatchCacheTrace:v65];

    v67 = *dict;
    v68 = MEMORY[0x277CCABB0];
    workoutEvents3 = [v59 workoutEvents];
    v70 = [v68 numberWithUnsignedInteger:{objc_msgSend(workoutEvents3, "count")}];
    [v67 setValue:v70 forKey:@"watchNumWorkoutEvents"];

    workoutEvents4 = [v59 workoutEvents];
    v72 = [workoutEvents4 count];

    receiverContact9 = [(SMReceiverCacheManager *)self receiverContact];
    watchMaxWorkoutEvents = [receiverContact9 watchMaxWorkoutEvents];

    if (v72 <= watchMaxWorkoutEvents)
    {
      v75 = watchMaxWorkoutEvents;
    }

    else
    {
      v75 = v72;
    }

    receiverContact10 = [(SMReceiverCacheManager *)self receiverContact];
    [receiverContact10 setWatchMaxWorkoutEvents:v75];

    if (v59)
    {
      sessionID8 = [(SMReceiverCacheManager *)self sessionID];
      v11 = v111;
      [v59 logCacheForSessionID:sessionID8 role:@"Receiver" deviceType:@"watch" transaction:v111 hashString:v60];
    }

    else
    {
      v84 = MEMORY[0x277D4AA70];
      sessionID8 = [(SMReceiverCacheManager *)self sessionID];
      v11 = v111;
      [v84 logNoCacheDataForSessionID:sessionID8 role:@"Receiver" deviceType:@"watch" transaction:v111];
    }

    [(SMReceiverCacheManager *)self updateReceiverContactInStore];
    cacheDataCopy = v58;
  }

  else
  {
    if (v50)
    {
      sessionID9 = [(SMReceiverCacheManager *)self sessionID];
      v79 = objc_opt_class();
      v80 = NSStringFromClass(v79);
      v81 = NSStringFromSelector(a2);
      *buf = 138412802;
      v118 = sessionID9;
      v119 = 2112;
      v120 = v80;
      v121 = 2112;
      v122 = v81;
      _os_log_impl(&dword_2304B3000, v49, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Receiver,sessionID:%@,%@,%@,no watch safety cache data", buf, 0x20u);
    }

    [*dict setValue:&unk_28459EA90 forKey:@"watchCacheDecryptionResult"];
    v82 = MEMORY[0x277D4AA70];
    sessionID10 = [(SMReceiverCacheManager *)self sessionID];
    [v82 logNoCacheDataForSessionID:sessionID10 role:@"Receiver" deviceType:@"watch" transaction:v11];

    [(SMReceiverCacheManager *)self updateReceiverContactInStore];
    if (!v114)
    {
      v100 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v100, OS_LOG_TYPE_ERROR))
      {
        sessionID11 = [(SMReceiverCacheManager *)self sessionID];
        v108 = objc_opt_class();
        v109 = NSStringFromClass(v108);
        v110 = NSStringFromSelector(a2);
        *buf = 138412802;
        v118 = sessionID11;
        v119 = 2112;
        v120 = v109;
        v121 = 2112;
        v122 = v110;
        _os_log_error_impl(&dword_2304B3000, v100, OS_LOG_TYPE_ERROR, "#SafetyCache,Receiver,sessionID:%@,%@,%@,no safety cache data present", buf, 0x20u);
      }

      v129 = *MEMORY[0x277CCA450];
      v101 = [MEMORY[0x277CCACA8] stringWithFormat:@"no safety cache data"];
      v130[0] = v101;
      v59 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v130 forKeys:&v129 count:1];

      v88 = MEMORY[0x277CCA9B8];
      v89 = *MEMORY[0x277D4ACD0];
      v90 = 47;
      goto LABEL_44;
    }

    v59 = 0;
  }

  v85 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  v86 = v85;
  if (!(v23 | v59))
  {
    if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
    {
      sessionID12 = [(SMReceiverCacheManager *)self sessionID];
      v104 = objc_opt_class();
      v105 = NSStringFromClass(v104);
      v106 = NSStringFromSelector(a2);
      *buf = 138412802;
      v118 = sessionID12;
      v119 = 2112;
      v120 = v105;
      v121 = 2112;
      v122 = v106;
      _os_log_error_impl(&dword_2304B3000, v86, OS_LOG_TYPE_ERROR, "#SafetyCache,Receiver,sessionID:%@,%@,%@,no decrypted safety cache data present", buf, 0x20u);
    }

    v127 = *MEMORY[0x277CCA450];
    v87 = [MEMORY[0x277CCACA8] stringWithFormat:@"no decrypted safety cache data"];
    v128 = v87;
    v59 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v128 forKeys:&v127 count:1];

    v88 = MEMORY[0x277CCA9B8];
    v89 = *MEMORY[0x277D4ACD0];
    v90 = 48;
LABEL_44:
    v102 = [v88 errorWithDomain:v89 code:v90 userInfo:v59];
    [(SMReceiverCacheManager *)self onCacheDownloadResult:0 userInitiatedDownload:downloadCopy withError:v102];

    goto LABEL_45;
  }

  if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
  {
    [(SMReceiverCacheManager *)self sessionID];
    v92 = v91 = cacheDataCopy;
    v93 = objc_opt_class();
    v94 = NSStringFromClass(v93);
    v95 = NSStringFromSelector(a2);
    *buf = 138413314;
    v118 = v92;
    v119 = 2112;
    v120 = v94;
    v121 = 2112;
    v122 = v95;
    v123 = 1024;
    v124 = v23 != 0;
    v125 = 1024;
    v126 = v59 != 0;
    _os_log_impl(&dword_2304B3000, v86, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Receiver,sessionID:%@,%@,%@,successfully decrypted safety cache data for,phone,%d,watch,%d", buf, 0x2Cu);

    cacheDataCopy = v91;
  }

  receiverContact11 = [(SMReceiverCacheManager *)self receiverContact];
  [receiverContact11 setPhoneCache:v23];

  receiverContact12 = [(SMReceiverCacheManager *)self receiverContact];
  [receiverContact12 setWatchCache:v59];

  v98 = [MEMORY[0x277CBEAA8] now];
  receiverContact13 = [(SMReceiverCacheManager *)self receiverContact];
  [receiverContact13 setSyncDate:v98];

  [(SMReceiverCacheManager *)self onCacheDownloadResult:1 userInitiatedDownload:downloadCopy withError:0];
LABEL_45:
}

- (void)storeReceiverContactInStore:(unint64_t)store
{
  v25 = *MEMORY[0x277D85DE8];
  if ([(SMReceiverCacheManager *)self receiverContactStoreInProgress])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v6 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        sessionID = [(SMReceiverCacheManager *)self sessionID];
        v8 = objc_opt_class();
        v9 = NSStringFromClass(v8);
        v10 = NSStringFromSelector(a2);
        *buf = 138412802;
        v20 = sessionID;
        v21 = 2112;
        v22 = v9;
        v23 = 2112;
        v24 = v10;
        _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "#SafetyCache,Receiver,sessionID:%@,%@,%@,SMReceiverContact store operation already in progress", buf, 0x20u);
      }
    }

    [(SMReceiverCacheManager *)self setReceiverContactUpdatePending:1];
  }

  else
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      sessionID2 = [(SMReceiverCacheManager *)self sessionID];
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      v15 = NSStringFromSelector(a2);
      *buf = 138412802;
      v20 = sessionID2;
      v21 = 2112;
      v22 = v14;
      v23 = 2112;
      v24 = v15;
      _os_log_impl(&dword_2304B3000, v11, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Receiver,sessionID:%@,%@,%@,storing SMReceiverContact in store", buf, 0x20u);
    }

    [(SMReceiverCacheManager *)self setReceiverContactStoreInProgress:1];
    safetyCacheStore = [(SMReceiverCacheManager *)self safetyCacheStore];
    receiverContact = [(SMReceiverCacheManager *)self receiverContact];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __54__SMReceiverCacheManager_storeReceiverContactInStore___block_invoke;
    v18[3] = &unk_2788CDAF8;
    v18[4] = self;
    v18[5] = a2;
    v18[6] = store;
    [safetyCacheStore storeReceiverContact:receiverContact handler:v18];
  }
}

void __54__SMReceiverCacheManager_storeReceiverContactInStore___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __54__SMReceiverCacheManager_storeReceiverContactInStore___block_invoke_2;
  v8[3] = &unk_2788CCF58;
  v5 = *(a1 + 40);
  v8[4] = *(a1 + 32);
  v9 = v3;
  v6 = *(a1 + 48);
  v10 = v5;
  v11 = v6;
  v7 = v3;
  dispatch_async(v4, v8);
}

uint64_t __54__SMReceiverCacheManager_storeReceiverContactInStore___block_invoke_2(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) setReceiverContactStoreInProgress:0];
  v2 = *(a1 + 40);
  v3 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v12 = [*(a1 + 32) sessionID];
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      v15 = NSStringFromSelector(*(a1 + 48));
      v16 = *(a1 + 40);
      v17 = *(a1 + 56);
      v18 = 138413314;
      v19 = v12;
      v20 = 2112;
      v21 = v14;
      v22 = 2112;
      v23 = v15;
      v24 = 2112;
      v25 = v16;
      v26 = 1024;
      v27 = v17;
      _os_log_error_impl(&dword_2304B3000, v4, OS_LOG_TYPE_ERROR, "#SafetyCache,Receiver,sessionID:%@,%@,%@,failed to store receiver contact with error %@, retries left %d", &v18, 0x30u);
    }

    v5 = *(a1 + 56);
    v6 = *(a1 + 32);
    if (v5)
    {
      return [v6 storeReceiverContactInStore:v5 - 1];
    }

    else
    {
      return [v6 setReceiverContactUpdatePending:0];
    }
  }

  else
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 32) sessionID];
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = NSStringFromSelector(*(a1 + 48));
      v18 = 138412802;
      v19 = v8;
      v20 = 2112;
      v21 = v10;
      v22 = 2112;
      v23 = v11;
      _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Receiver,sessionID:%@,%@,%@,successfully stored receiver contact", &v18, 0x20u);
    }

    [*(a1 + 32) setReceiverContactStored:1];
    result = [*(a1 + 32) receiverContactUpdatePending];
    if (result)
    {
      [*(a1 + 32) setReceiverContactUpdatePending:0];
      return [*(a1 + 32) updateReceiverContactInStore];
    }
  }

  return result;
}

- (void)updateReceiverContactInStore
{
  v29 = *MEMORY[0x277D85DE8];
  if ([(SMReceiverCacheManager *)self receiverContactStored])
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      sessionID = [(SMReceiverCacheManager *)self sessionID];
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = NSStringFromSelector(a2);
      *buf = 138413058;
      v22 = sessionID;
      v23 = 2112;
      v24 = v8;
      v25 = 2112;
      v26 = v9;
      v27 = 2112;
      v28 = uUID;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Receiver,sessionID:%@,%@,%@,updating SMReceiverContact in store,transaction,%@", buf, 0x2Au);
    }

    safetyCacheStore = [(SMReceiverCacheManager *)self safetyCacheStore];
    receiverContact = [(SMReceiverCacheManager *)self receiverContact];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __54__SMReceiverCacheManager_updateReceiverContactInStore__block_invoke;
    v18[3] = &unk_2788C8A48;
    v19 = uUID;
    v20 = a2;
    v18[4] = self;
    v12 = uUID;
    [safetyCacheStore updateReceiverContact:receiverContact handler:v18];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v13 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        sessionID2 = [(SMReceiverCacheManager *)self sessionID];
        v15 = objc_opt_class();
        v16 = NSStringFromClass(v15);
        v17 = NSStringFromSelector(a2);
        *buf = 138412802;
        v22 = sessionID2;
        v23 = 2112;
        v24 = v16;
        v25 = 2112;
        v26 = v17;
        _os_log_impl(&dword_2304B3000, v13, OS_LOG_TYPE_INFO, "#SafetyCache,Receiver,sessionID:%@,%@,%@,SMReceiverContact not yet stored", buf, 0x20u);
      }
    }

    [(SMReceiverCacheManager *)self storeReceiverContactInStore:2];
  }
}

void __54__SMReceiverCacheManager_updateReceiverContactInStore__block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = [*(a1 + 32) sessionID];
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = NSStringFromSelector(*(a1 + 48));
      v10 = *(a1 + 40);
      v13 = 138413314;
      v14 = v6;
      v15 = 2112;
      v16 = v8;
      v17 = 2112;
      v18 = v9;
      v19 = 2112;
      v20 = v10;
      v21 = 2112;
      v22 = v3;
      _os_log_error_impl(&dword_2304B3000, v5, OS_LOG_TYPE_ERROR, "#SafetyCache,Receiver,sessionID:%@,%@,%@,failed to update SMReceiverContact in store,transaction,%@,error,%@", &v13, 0x34u);
LABEL_6:
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [*(a1 + 32) sessionID];
    v11 = objc_opt_class();
    v8 = NSStringFromClass(v11);
    v9 = NSStringFromSelector(*(a1 + 48));
    v12 = *(a1 + 40);
    v13 = 138413058;
    v14 = v6;
    v15 = 2112;
    v16 = v8;
    v17 = 2112;
    v18 = v9;
    v19 = 2112;
    v20 = v12;
    _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Receiver,sessionID:%@,%@,%@,successfully updated SMReceiverContact in store,transaction,%@", &v13, 0x2Au);
    goto LABEL_6;
  }
}

- (void)deleteReceiverContactFromStore:(unint64_t)store
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    sessionID = [(SMReceiverCacheManager *)self sessionID];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = NSStringFromSelector(a2);
    receiverContact = [(SMReceiverCacheManager *)self receiverContact];
    identifier = [receiverContact identifier];
    *buf = 138413058;
    v17 = sessionID;
    v18 = 2112;
    v19 = v9;
    v20 = 2112;
    v21 = v10;
    v22 = 2112;
    v23 = identifier;
    _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Receiver,sessionID:%@,%@,%@,deleting SMReceiverContact from store with identifier %@", buf, 0x2Au);
  }

  safetyCacheStore = [(SMReceiverCacheManager *)self safetyCacheStore];
  receiverContact2 = [(SMReceiverCacheManager *)self receiverContact];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __57__SMReceiverCacheManager_deleteReceiverContactFromStore___block_invoke;
  v15[3] = &unk_2788CDAF8;
  v15[4] = self;
  v15[5] = a2;
  v15[6] = store;
  [safetyCacheStore removeReceiverContact:receiverContact2 handler:v15];
}

void __57__SMReceiverCacheManager_deleteReceiverContactFromStore___block_invoke(uint64_t a1, void *a2)
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v15 = [*(a1 + 32) sessionID];
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      v18 = NSStringFromSelector(*(a1 + 40));
      v19 = [*(a1 + 32) receiverContact];
      v20 = [v19 identifier];
      v21 = *(a1 + 48);
      v22 = 138413570;
      v23 = v15;
      v24 = 2112;
      v25 = v17;
      v26 = 2112;
      v27 = v18;
      v28 = 2112;
      v29 = v20;
      v30 = 2112;
      v31 = v3;
      v32 = 1024;
      v33 = v21;
      _os_log_error_impl(&dword_2304B3000, v5, OS_LOG_TYPE_ERROR, "#SafetyCache,Receiver,sessionID:%@,%@,%@,failed to delete SMReceiverContact from store with identifier %@ and error %@ retries left %d", &v22, 0x3Au);
    }

    v6 = *(a1 + 48);
    if (v6)
    {
      [*(a1 + 32) deleteReceiverContactFromStore:v6 - 1];
    }
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [*(a1 + 32) sessionID];
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v10 = NSStringFromSelector(*(a1 + 40));
      v11 = [*(a1 + 32) receiverContact];
      v12 = [v11 identifier];
      v22 = 138413058;
      v23 = v7;
      v24 = 2112;
      v25 = v9;
      v26 = 2112;
      v27 = v10;
      v28 = 2112;
      v29 = v12;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Receiver,sessionID:%@,%@,%@,successfully deleted SMReceiverContact from store with identifier %@", &v22, 0x2Au);
    }

    [*(a1 + 32) setReceiverContactStored:0];
    v13 = [*(a1 + 32) delegate];
    v14 = [*(a1 + 32) sessionID];
    [v13 cacheManagerDidCompleteCleanupForSessionId:v14];
  }
}

+ (id)receiverEventToString:(int64_t)string
{
  if ((string - 1) > 0xE)
  {
    return @"Unknown";
  }

  else
  {
    return off_2788CDB88[string - 1];
  }
}

- (id)computeReceiverSessionMetrics
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  receiverContact = [(SMReceiverCacheManager *)self receiverContact];
  sessionStatus = [receiverContact sessionStatus];
  sessionStartDate = [sessionStatus sessionStartDate];

  v7 = -1.0;
  v8 = -1.0;
  v9 = -1.0;
  if (sessionStartDate)
  {
    date = [MEMORY[0x277CBEAA8] date];
    receiverContact2 = [(SMReceiverCacheManager *)self receiverContact];
    sessionStatus2 = [receiverContact2 sessionStatus];
    sessionStartDate2 = [sessionStatus2 sessionStartDate];
    [date timeIntervalSinceDate:sessionStartDate2];
    v8 = v14 / 60.0;

    receiverContact3 = [(SMReceiverCacheManager *)self receiverContact];
    sessionStatus3 = [receiverContact3 sessionStatus];
    estimatedEndDate = [sessionStatus3 estimatedEndDate];

    if (estimatedEndDate)
    {
      receiverContact4 = [(SMReceiverCacheManager *)self receiverContact];
      sessionStatus4 = [receiverContact4 sessionStatus];
      estimatedEndDate2 = [sessionStatus4 estimatedEndDate];
      receiverContact5 = [(SMReceiverCacheManager *)self receiverContact];
      sessionStatus5 = [receiverContact5 sessionStatus];
      sessionStartDate3 = [sessionStatus5 sessionStartDate];
      [estimatedEndDate2 timeIntervalSinceDate:sessionStartDate3];
      v9 = v24 / 60.0;
    }
  }

  v25 = [MEMORY[0x277CCABB0] numberWithDouble:v8];
  [dictionary setValue:v25 forKey:@"actualDuration"];

  v26 = [MEMORY[0x277CCABB0] numberWithDouble:v9];
  [dictionary setValue:v26 forKey:@"expectedDuration"];

  v27 = MEMORY[0x277CCABB0];
  receiverContact6 = [(SMReceiverCacheManager *)self receiverContact];
  [receiverContact6 timeTillFirstSuccessfulCacheDownload];
  v29 = [v27 numberWithDouble:?];
  [dictionary setValue:v29 forKey:@"cacheAge"];

  v30 = MEMORY[0x277CCABB0];
  receiverContact7 = [(SMReceiverCacheManager *)self receiverContact];
  v32 = [v30 numberWithLongLong:{objc_msgSend(receiverContact7, "numCacheDownloads")}];
  [dictionary setValue:v32 forKey:@"cacheDownloadAttemptCount"];

  v33 = MEMORY[0x277CCABB0];
  receiverContact8 = [(SMReceiverCacheManager *)self receiverContact];
  v35 = [v33 numberWithLongLong:{objc_msgSend(receiverContact8, "numSuccessfulCacheDownloads")}];
  [dictionary setValue:v35 forKey:@"cacheDownloadSuccessCount"];

  if (v8 > 0.0)
  {
    receiverContact9 = [(SMReceiverCacheManager *)self receiverContact];
    [receiverContact9 timeTillCacheRelease];
    v7 = v37 / v8 * 100.0;
  }

  v38 = [MEMORY[0x277CCABB0] numberWithDouble:v7];
  [dictionary setValue:v38 forKey:@"triggerTimePercent"];

  v39 = MEMORY[0x277CCABB0];
  receiverContact10 = [(SMReceiverCacheManager *)self receiverContact];
  sessionStatus6 = [receiverContact10 sessionStatus];
  v42 = [v39 numberWithUnsignedInteger:{objc_msgSend(sessionStatus6, "sessionEndReason")}];
  [dictionary setValue:v42 forKey:@"endReason"];

  v43 = MEMORY[0x277CCABB0];
  receiverContact11 = [(SMReceiverCacheManager *)self receiverContact];
  sessionStatus7 = [receiverContact11 sessionStatus];
  v46 = [v43 numberWithInteger:{objc_msgSend(sessionStatus7, "sessionState")}];
  [dictionary setValue:v46 forKey:@"maxSessionState"];

  receiverContact12 = [(SMReceiverCacheManager *)self receiverContact];
  sessionStatus8 = [receiverContact12 sessionStatus];
  sessionStartDate4 = [sessionStatus8 sessionStartDate];

  if (sessionStartDate4)
  {
    receiverContact13 = [(SMReceiverCacheManager *)self receiverContact];
    sessionStatus9 = [receiverContact13 sessionStatus];
    sessionStartDate5 = [sessionStatus9 sessionStartDate];
    v53 = 6 * ([sessionStartDate5 hour] / 6uLL);
  }

  else
  {
    v53 = -1;
  }

  v54 = [MEMORY[0x277CCABB0] numberWithInteger:v53];
  [dictionary setValue:v54 forKey:@"partOfDay"];

  v55 = MEMORY[0x277CCABB0];
  receiverContact14 = [(SMReceiverCacheManager *)self receiverContact];
  sessionStatus10 = [receiverContact14 sessionStatus];
  v58 = [v55 numberWithUnsignedInteger:{objc_msgSend(sessionStatus10, "sessionType")}];
  [dictionary setValue:v58 forKey:@"sessionType"];

  v59 = MEMORY[0x277CCABB0];
  receiverContact15 = [(SMReceiverCacheManager *)self receiverContact];
  sessionStatus11 = [receiverContact15 sessionStatus];
  v62 = [v59 numberWithUnsignedInteger:{objc_msgSend(sessionStatus11, "triggerType")}];
  [dictionary setValue:v62 forKey:@"triggerCategory"];

  v63 = MEMORY[0x277CCABB0];
  receiverContact16 = [(SMReceiverCacheManager *)self receiverContact];
  v65 = [v63 numberWithInteger:{objc_msgSend(receiverContact16, "firstDetailViewSessionState")}];
  [dictionary setValue:v65 forKey:@"firstDetailViewSessionState"];

  v66 = MEMORY[0x277CCABB0];
  receiverContact17 = [(SMReceiverCacheManager *)self receiverContact];
  v68 = [v66 numberWithInteger:{objc_msgSend(receiverContact17, "lastDetailViewSessionState")}];
  [dictionary setValue:v68 forKey:@"lastDetailViewSessionState"];

  return dictionary;
}

- (void)computeResponseModality:(id)modality completionHandler:(id)handler
{
  modalityCopy = modality;
  handlerCopy = handler;
  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = __Block_byref_object_copy__104;
  v44 = __Block_byref_object_dispose__104;
  v9 = modalityCopy;
  v45 = v9;
  v38[0] = 0;
  v38[1] = v38;
  v38[2] = 0x3032000000;
  v38[3] = __Block_byref_object_copy__104;
  v38[4] = __Block_byref_object_dispose__104;
  sessionID = [(SMReceiverCacheManager *)self sessionID];
  v36[0] = 0;
  v36[1] = v36;
  v36[2] = 0x3032000000;
  v36[3] = __Block_byref_object_copy__104;
  v36[4] = __Block_byref_object_dispose__104;
  v10 = objc_opt_class();
  v37 = NSStringFromClass(v10);
  v34[0] = 0;
  v34[1] = v34;
  v34[2] = 0x3032000000;
  v34[3] = __Block_byref_object_copy__104;
  v34[4] = __Block_byref_object_dispose__104;
  receiverContact = [(SMReceiverCacheManager *)self receiverContact];
  sessionStatus = [receiverContact sessionStatus];
  initiatorHandle = [sessionStatus initiatorHandle];
  primaryHandle = [initiatorHandle primaryHandle];

  [v41[5] setValue:&unk_28459EAA8 forKey:@"firstResponseModality"];
  [v41[5] setValue:&unk_28459EAA8 forKey:@"lastResponseModality"];
  v14 = MEMORY[0x277CCABB0];
  receiverContact2 = [(SMReceiverCacheManager *)self receiverContact];
  sessionStatus2 = [receiverContact2 sessionStatus];
  sessionStartDate = [sessionStatus2 sessionStartDate];
  [sessionStartDate timeIntervalSinceReferenceDate];
  v18 = [v14 numberWithDouble:?];

  v19 = MEMORY[0x277CCABB0];
  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSinceReferenceDate];
  v21 = [v19 numberWithDouble:?];

  intent = [MEMORY[0x277CF1B58] intent];
  v23 = [intent publisherWithStartTime:v18 endTime:v21 maxEvents:0 lastN:0 reversed:0];

  v24 = [v23 filterWithIsIncluded:&__block_literal_global_293];

  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __68__SMReceiverCacheManager_computeResponseModality_completionHandler___block_invoke_2;
  v28[3] = &unk_2788CDB40;
  v30 = v38;
  v31 = v36;
  v33 = a2;
  v25 = handlerCopy;
  v29 = v25;
  v32 = &v40;
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __68__SMReceiverCacheManager_computeResponseModality_completionHandler___block_invoke_297;
  v27[3] = &unk_2788CDB68;
  v27[4] = v38;
  v27[5] = v36;
  v27[7] = &v40;
  v27[8] = a2;
  v27[6] = v34;
  v26 = [v24 sinkWithCompletion:v28 receiveInput:v27];

  _Block_object_dispose(v34, 8);
  _Block_object_dispose(v36, 8);

  _Block_object_dispose(v38, 8);
  _Block_object_dispose(&v40, 8);
}

BOOL __68__SMReceiverCacheManager_computeResponseModality_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 eventBody];

  if (v3)
  {
    v4 = [v2 eventBody];
    v5 = [v4 intentClass];

    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    if (([v5 isEqualToString:v7] & 1) != 0 || objc_msgSend(v5, "isEqualToString:", v9))
    {
      v10 = [v2 eventBody];
      v11 = [v10 interactionDirection] == 2;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

void __68__SMReceiverCacheManager_computeResponseModality_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 state];
  v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = *(*(*(a1 + 40) + 8) + 40);
      v8 = *(*(*(a1 + 48) + 8) + 40);
      v9 = NSStringFromSelector(*(a1 + 64));
      v10 = [v3 error];
      v11 = [v10 description];
      v14 = 138413058;
      v15 = v7;
      v16 = 2112;
      v17 = v8;
      v18 = 2112;
      v19 = v9;
      v20 = 2080;
      v21 = [v11 UTF8String];
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "#SafetyCache,Receiver,sessionID:%@,%@,%@, SMReceiverTelemetry failed to hit Biome completion hanlder with error %s", &v14, 0x2Au);

LABEL_6:
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(*(*(a1 + 40) + 8) + 40);
    v13 = *(*(*(a1 + 48) + 8) + 40);
    v9 = NSStringFromSelector(*(a1 + 64));
    v14 = 138412802;
    v15 = v12;
    v16 = 2112;
    v17 = v13;
    v18 = 2112;
    v19 = v9;
    _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Receiver,sessionID:%@,%@,%@, SMReceiverTelemetry successfully looped through biome events phone & messages.", &v14, 0x20u);
    goto LABEL_6;
  }

  (*(*(a1 + 32) + 16))();
}

void __68__SMReceiverCacheManager_computeResponseModality_completionHandler___block_invoke_297(uint64_t a1, void *a2)
{
  v57 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = MEMORY[0x277CCAAC8];
  v5 = objc_opt_class();
  v6 = [v3 eventBody];
  v7 = [v6 interaction];
  v46 = 0;
  v8 = [v4 unarchivedObjectOfClass:v5 fromData:v7 error:&v46];
  v9 = v46;

  if (!v9)
  {
    v16 = MEMORY[0x277CBEAA8];
    v17 = [v3 eventBody];
    [v17 absoluteTimestamp];
    v10 = [v16 dateWithTimeIntervalSinceReferenceDate:?];

    v18 = [MEMORY[0x277CCAC30] predicateWithFormat:@"personHandle.value ==[c] %@", *(*(*(a1 + 48) + 8) + 40)];
    v19 = [v8 intent];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    v21 = [v8 intent];
    v22 = v21;
    if (isKindOfClass)
    {
      v23 = [v21 recipients];
      v24 = [v23 filteredArrayUsingPredicate:v18];

      v25 = [v24 count];
      if (v25)
      {
        v26 = 1;
LABEL_10:
        v32 = [*(*(*(a1 + 56) + 8) + 40) valueForKey:@"firstResponseModality"];
        if (![v32 integerValue])
        {
          v33 = *(*(*(a1 + 56) + 8) + 40);
          [MEMORY[0x277CCABB0] numberWithInteger:v26];
          v44 = v18;
          v35 = v34 = v32;
          [v33 setValue:v35 forKey:@"firstResponseModality"];

          v32 = v34;
          v18 = v44;
        }

        v36 = *(*(*(a1 + 56) + 8) + 40);
        v37 = [MEMORY[0x277CCABB0] numberWithInteger:v26];
        [v36 setValue:v37 forKey:@"lastResponseModality"];

        v38 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          v39 = *(*(*(a1 + 32) + 8) + 40);
          v43 = *(*(*(a1 + 40) + 8) + 40);
          v40 = NSStringFromSelector(*(a1 + 64));
          [*(*(*(a1 + 56) + 8) + 40) valueForKey:@"firstResponseModality"];
          v41 = v45 = v32;
          v42 = [*(*(*(a1 + 56) + 8) + 40) valueForKey:@"lastResponseModality"];
          *buf = 138413570;
          v48 = v39;
          v49 = 2112;
          v50 = v43;
          v51 = 2112;
          v52 = v40;
          v53 = 1024;
          *v54 = v41;
          *&v54[4] = 1024;
          *&v54[6] = v42;
          v55 = 2112;
          v56 = v10;
          _os_log_impl(&dword_2304B3000, v38, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Receiver,sessionID:%@,%@,%@ firstResponseModality: %d, lastResponseModality: %d, timestamp: %@", buf, 0x36u);

          v32 = v45;
        }
      }
    }

    else
    {
      objc_opt_class();
      v27 = objc_opt_isKindOfClass();

      if (v27)
      {
        v28 = [v8 intent];
        v29 = [v28 contacts];
        v30 = [v29 filteredArrayUsingPredicate:v18];

        v31 = [v30 count];
        if (v31)
        {
          v26 = 2;
          goto LABEL_10;
        }
      }
    }

    goto LABEL_16;
  }

  v10 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = *(*(*(a1 + 32) + 8) + 40);
    v12 = *(*(*(a1 + 40) + 8) + 40);
    v13 = NSStringFromSelector(*(a1 + 64));
    v14 = [v9 description];
    v15 = [v14 UTF8String];
    *buf = 138413058;
    v48 = v11;
    v49 = 2112;
    v50 = v12;
    v51 = 2112;
    v52 = v13;
    v53 = 2080;
    *v54 = v15;
    _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "#SafetyCache,Receiver,sessionID:%@,%@,%@, SMReceiverTelemetry failed to convert BMIntentEvent --> INInteraction. Error %s", buf, 0x2Au);
  }

LABEL_16:
}

- (SMReceiverCacheManagerDelegateProtocol)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end