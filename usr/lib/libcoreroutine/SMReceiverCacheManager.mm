@interface SMReceiverCacheManager
+ (id)receiverEventToString:(int64_t)a3;
- (BOOL)shouldRetryCacheDownloadForError:(id)a3;
- (BOOL)shouldRetryZoneShareAcceptanceForError:(id)a3;
- (NSUUID)sessionID;
- (SMCache)phoneCache;
- (SMCache)watchCache;
- (SMReceiverCacheManager)initWithReceiverContact:(id)a3 safetyCacheStore:(id)a4 defaultsManager:(id)a5 queue:(id)a6 messagingService:(id)a7;
- (SMReceiverCacheManager)initWithSessionID:(id)a3 initiatorHandle:(id)a4 safetyCacheStore:(id)a5 defaultsManager:(id)a6 queue:(id)a7 messagingService:(id)a8;
- (SMReceiverCacheManagerDelegateProtocol)delegate;
- (SMReceiverSessionStatus)sessionStatus;
- (id)computeReceiverSessionMetrics;
- (id)getCachePersistenceAlarmDate;
- (int64_t)normalizedSMErrorForCacheDownloadError:(id)a3;
- (void)_setupCloudKitFunction;
- (void)acceptShareInvitation:(int64_t)a3;
- (void)cachePersistenceStartTimer;
- (void)cachePersistenceStopTimer;
- (void)computeResponseModality:(id)a3 completionHandler:(id)a4;
- (void)copyKeyReleaseMessageParameters:(id)a3;
- (void)copySessionStartMessageParameters:(id)a3;
- (void)decryptAndStoreSafetyCacheDataWithPhoneCacheData:(id)a3 watchCacheData:(id)a4 userInitiatedDownload:(BOOL)a5 metricsDict:(id *)a6;
- (void)deleteReceiverContactFromStore:(unint64_t)a3;
- (void)fetchSafetyCacheData:(int64_t)a3;
- (void)onCacheDownloadResult:(BOOL)a3 userInitiatedDownload:(BOOL)a4 withError:(id)a5;
- (void)onCachePersistenceExpiry;
- (void)onCacheUpdatedMessageReceived:(id)a3;
- (void)onEstimatedEndTimeUpdateMessageReceived:(id)a3;
- (void)onKeyReleaseInfoMessageReceived:(id)a3;
- (void)onKeyReleaseMessageReceived:(id)a3;
- (void)onLowPowerModeWarningStateUpdateMessageReceived:(id)a3;
- (void)onSessionEndMessageReceived:(id)a3;
- (void)onSessionStartInfoMessageReceived:(id)a3;
- (void)onSessionStartMessageReceived:(id)a3;
- (void)onSessionStatusLoadedFromDisk;
- (void)onShareInvitationAcceptenceResult:(BOOL)a3 withError:(id)a4;
- (void)onUserCacheDownloadRequest;
- (void)onViewingSessionDetails;
- (void)requestMissingKeyReleaseInfo;
- (void)startCacheDownloadTimeoutTimer;
- (void)startMissingKeyReleaseTimer;
- (void)stopCacheDownloadTimeoutTimer;
- (void)stopMissingKeyReleaseTimer;
- (void)storeReceiverContactInStore:(unint64_t)a3;
- (void)transitionFromActiveToCleanupDueToEvent:(int64_t)a3;
- (void)transitionFromActiveToMissingKeyReleaseInfoDueToEvent:(int64_t)a3;
- (void)transitionFromActiveToTriggeredDueToEvent:(int64_t)a3;
- (void)transitionFromCacheDownloadFailedToCachePersistenceDueToEvent:(int64_t)a3;
- (void)transitionFromCacheDownloadFailedToCacheReleasedDueToEvent:(int64_t)a3;
- (void)transitionFromCacheDownloadFailedToCleanupDueToEvent:(int64_t)a3;
- (void)transitionFromCachePersistenceToCleanupDueToEvent:(int64_t)a3;
- (void)transitionFromCacheReleasedToCacheDownloadFailedDueToEvent:(int64_t)a3;
- (void)transitionFromCacheReleasedToCachePersistenceDueToEvent:(int64_t)a3;
- (void)transitionFromCacheReleasedToCleanupDueToEvent:(int64_t)a3;
- (void)transitionFromInitializingToActiveDueToEvent:(int64_t)a3;
- (void)transitionFromInitializingToCacheDownloadFailedDueToEvent:(int64_t)a3;
- (void)transitionFromInitializingToCachePersistenceDueToEvent:(int64_t)a3;
- (void)transitionFromInitializingToCacheReleasedDueToEvent:(int64_t)a3;
- (void)transitionFromInitializingToCleanupDueToEvent:(int64_t)a3;
- (void)transitionFromInitializingToMissingKeyReleaseInfoDueToEvent:(int64_t)a3;
- (void)transitionFromInitializingToMissingSessionInfoDueToEvent:(int64_t)a3;
- (void)transitionFromInitializingToTriggeredDueToEvent:(int64_t)a3;
- (void)transitionFromMissingKeyReleaseInfoToCleanupDueToEvent:(int64_t)a3;
- (void)transitionFromMissingKeyReleaseInfoToTriggeredDueToEvent:(int64_t)a3;
- (void)transitionFromMissingSessionInfoToCleanupDueToEvent:(int64_t)a3;
- (void)transitionFromMissingSessionInfoToTriggeredDueToEvent:(int64_t)a3;
- (void)transitionFromTriggeredToCacheReleasedDueToEvent:(int64_t)a3;
- (void)transitionFromTriggeredToCleanupDueToEvent:(int64_t)a3;
- (void)transitionToState:(int64_t)a3 event:(int64_t)a4;
- (void)updateReceiverContactInStore;
@end

@implementation SMReceiverCacheManager

- (SMReceiverCacheManager)initWithSessionID:(id)a3 initiatorHandle:(id)a4 safetyCacheStore:(id)a5 defaultsManager:(id)a6 queue:(id)a7 messagingService:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  if (!v14)
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

  if (!v15)
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

  if (!v16)
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

  if (!v18)
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

    v24 = 0;
    goto LABEL_16;
  }

  v20 = [objc_alloc(MEMORY[0x277D4AB58]) initWithIdentifier:0 sessionID:v14 initiatorHandle:v15];
  [v20 setSessionState:1];
  v21 = objc_alloc(MEMORY[0x277D4AB48]);
  v22 = objc_opt_new();
  v23 = [v21 initWithIdentifier:v22 syncDate:0 phoneCache:0 watchCache:0 sessionStatus:v20 allowReadToken:0 safetyCacheKey:0.0 shareURL:-1.0 participantID:0 sharingInvitationData:0 numCacheDownloads:0 numSuccessfulCacheDownloads:0 maxPhoneCacheSize:0 maxWatchCacheSize:0 maxLocationsInPhoneCacheTrace:0 maxLocationsInWatchCacheTrace:0 timeTillCacheRelease:0 timeTillFirstSuccessfulCacheDownload:0 sessionID:v14 firstDetailViewSessionState:0 lastDetailViewSessionState:0 phoneMaxWorkoutEvents:0 watchMaxWorkoutEvents:0];

  self = [(SMReceiverCacheManager *)self initWithReceiverContact:v23 safetyCacheStore:v16 defaultsManager:v17 queue:v18 messagingService:v19];
  v24 = self;
LABEL_16:

  return v24;
}

- (SMReceiverCacheManager)initWithReceiverContact:(id)a3 safetyCacheStore:(id)a4 defaultsManager:(id)a5 queue:(id)a6 messagingService:(id)a7
{
  v13 = a3;
  v14 = a4;
  v23 = a5;
  v15 = a6;
  v16 = a7;
  if (!v13)
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

  if (!v14)
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

  if (!v15)
  {
    v20 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v21 = "Invalid parameter not satisfying: queue";
      goto LABEL_13;
    }

LABEL_14:

    v19 = 0;
    goto LABEL_15;
  }

  v24.receiver = self;
  v24.super_class = SMReceiverCacheManager;
  v17 = [(SMReceiverCacheManager *)&v24 init];
  p_isa = &v17->super.isa;
  if (v17)
  {
    objc_storeStrong(&v17->_receiverContact, a3);
    objc_storeStrong(p_isa + 8, a4);
    objc_storeStrong(p_isa + 9, a5);
    objc_storeStrong(p_isa + 10, a6);
    [p_isa _setupCloudKitFunction];
    objc_storeStrong(p_isa + 14, a7);
  }

  self = p_isa;
  v19 = self;
LABEL_15:

  return v19;
}

- (NSUUID)sessionID
{
  v2 = [(SMReceiverCacheManager *)self receiverContact];
  v3 = [v2 sessionUUID];

  return v3;
}

- (SMReceiverSessionStatus)sessionStatus
{
  v2 = [(SMReceiverCacheManager *)self receiverContact];
  v3 = [v2 sessionStatus];

  return v3;
}

- (SMCache)phoneCache
{
  v2 = [(SMReceiverCacheManager *)self receiverContact];
  v3 = [v2 phoneCache];

  return v3;
}

- (SMCache)watchCache
{
  v2 = [(SMReceiverCacheManager *)self receiverContact];
  v3 = [v2 watchCache];

  return v3;
}

- (void)onSessionStatusLoadedFromDisk
{
  v56 = *MEMORY[0x277D85DE8];
  [(SMReceiverCacheManager *)self setReceiverContactStored:1];
  v4 = [(SMReceiverCacheManager *)self receiverContact];
  v5 = [v4 sessionStatus];
  v6 = [v5 sessionStartDate];
  [v6 timeIntervalSinceNow];
  if (fabs(v7) > 604800.0)
  {
    v8 = [(SMReceiverCacheManager *)self receiverContact];
    v9 = [v8 sessionStatus];
    v10 = [v9 sessionState];

    if (v10 == 5)
    {
      goto LABEL_15;
    }

    v11 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v31 = [(SMReceiverCacheManager *)self sessionID];
      v32 = objc_opt_class();
      v33 = NSStringFromClass(v32);
      v34 = NSStringFromSelector(a2);
      v48 = 138412802;
      v49 = v31;
      v50 = 2112;
      v51 = v33;
      v52 = 2112;
      v53 = v34;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "#SafetyCache,Receiver,sessionID:%@,%@,%@,forcefully cleanup lingering session", &v48, 0x20u);
    }

    v12 = [(SMReceiverCacheManager *)self receiverContact];
    v13 = [v12 sessionStatus];
    if ([v13 sessionState] == 4)
    {
      v14 = [(SMReceiverCacheManager *)self receiverContact];
      v15 = [v14 phoneCache];
      if (v15)
      {

LABEL_12:
        v4 = [(SMReceiverCacheManager *)self receiverContact];
        v16 = [v4 sessionStatus];
        v5 = v16;
        v17 = 5;
        goto LABEL_13;
      }

      v18 = [(SMReceiverCacheManager *)self receiverContact];
      v19 = [v18 watchCache];

      if (v19)
      {
        goto LABEL_12;
      }
    }

    else
    {
    }

    v4 = [(SMReceiverCacheManager *)self receiverContact];
    v16 = [v4 sessionStatus];
    v5 = v16;
    v17 = 6;
LABEL_13:
    [v16 setSessionState:v17];
    goto LABEL_14;
  }

LABEL_14:
LABEL_15:
  v20 = [(SMReceiverCacheManager *)self receiverContact];
  v21 = [v20 sessionStatus];
  v22 = [v21 sessionState];

  v23 = [MEMORY[0x277D4AB58] convertSessionStateToString:v22];
  v24 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = [(SMReceiverCacheManager *)self sessionID];
    v26 = objc_opt_class();
    v27 = NSStringFromClass(v26);
    v28 = NSStringFromSelector(a2);
    v48 = 138413058;
    v49 = v25;
    v50 = 2112;
    v51 = v27;
    v52 = 2112;
    v53 = v28;
    v54 = 2112;
    v55 = v23;
    _os_log_impl(&dword_2304B3000, v24, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Receiver,sessionID:%@,%@,%@,transitioning to state:%@", &v48, 0x2Au);
  }

  if (v22 > 5)
  {
    if (v22 <= 7)
    {
      if (v22 == 6)
      {
        [(SMReceiverCacheManager *)self transitionFromInitializingToCleanupDueToEvent:1];
      }

      else
      {
        [(SMReceiverCacheManager *)self transitionFromInitializingToMissingSessionInfoDueToEvent:1];
      }

      goto LABEL_39;
    }

    if (v22 == 8)
    {
      [(SMReceiverCacheManager *)self transitionFromInitializingToMissingKeyReleaseInfoDueToEvent:1];
      goto LABEL_39;
    }

    if (v22 == 9)
    {
      [(SMReceiverCacheManager *)self transitionFromInitializingToCacheDownloadFailedDueToEvent:1];
      goto LABEL_39;
    }
  }

  else
  {
    if (v22 > 3)
    {
      if (v22 == 4)
      {
        [(SMReceiverCacheManager *)self transitionFromInitializingToCacheReleasedDueToEvent:1];
      }

      else
      {
        [(SMReceiverCacheManager *)self transitionFromInitializingToCachePersistenceDueToEvent:1];
      }

      goto LABEL_39;
    }

    if (v22 == 2)
    {
      [(SMReceiverCacheManager *)self transitionFromInitializingToActiveDueToEvent:1];
      goto LABEL_39;
    }

    if (v22 == 3)
    {
      [(SMReceiverCacheManager *)self transitionFromInitializingToTriggeredDueToEvent:1];
      goto LABEL_39;
    }
  }

  v29 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    v35 = [(SMReceiverCacheManager *)self sessionID];
    v36 = objc_opt_class();
    v37 = NSStringFromClass(v36);
    v38 = NSStringFromSelector(a2);
    v39 = [(SMReceiverCacheManager *)self receiverContact];
    v40 = [v39 sessionStatus];
    v41 = [v40 sessionState];
    v48 = 138413058;
    v49 = v35;
    v50 = 2112;
    v51 = v37;
    v52 = 2112;
    v53 = v38;
    v54 = 1024;
    LODWORD(v55) = v41;
    _os_log_error_impl(&dword_2304B3000, v29, OS_LOG_TYPE_ERROR, "#SafetyCache,Receiver,sessionID:%@,%@,%@,unknown or unhandled cached state %d", &v48, 0x26u);
  }

  v30 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
  {
    v42 = objc_opt_class();
    v43 = NSStringFromClass(v42);
    v44 = NSStringFromSelector(a2);
    v45 = [(SMReceiverCacheManager *)self receiverContact];
    v46 = [v45 sessionStatus];
    v47 = [v46 sessionState];
    v48 = 138412802;
    v49 = v43;
    v50 = 2112;
    v51 = v44;
    v52 = 1024;
    LODWORD(v53) = v47;
    _os_log_fault_impl(&dword_2304B3000, v30, OS_LOG_TYPE_FAULT, "#SafetyCache,Receiver,%@,%@,unknown or unhandled cached state %d", &v48, 0x1Cu);
  }

LABEL_39:
}

- (void)onSessionStartMessageReceived:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5)
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v18) = 0;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: startMessage", &v18, 2u);
    }

    goto LABEL_8;
  }

  v6 = [(SMReceiverCacheManager *)self receiverContact];
  v7 = [v6 sessionStatus];
  v8 = [v7 sessionState];

  if (v8 != 1)
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [(SMReceiverCacheManager *)self sessionID];
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v13 = NSStringFromSelector(a2);
      v14 = MEMORY[0x277D4AB58];
      v15 = [(SMReceiverCacheManager *)self receiverContact];
      v16 = [v15 sessionStatus];
      v17 = [v14 convertSessionStateToString:{objc_msgSend(v16, "sessionState")}];
      v18 = 138413058;
      v19 = v10;
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

  [(SMReceiverCacheManager *)self copySessionStartMessageParameters:v5];
  [(SMReceiverCacheManager *)self transitionToState:2 event:2];
LABEL_9:
}

- (void)onSessionStartInfoMessageReceived:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5)
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v14) = 0;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: startInfoMessage", &v14, 2u);
    }

    goto LABEL_8;
  }

  v6 = [(SMReceiverCacheManager *)self receiverContact];
  v7 = [v6 sessionStatus];
  v8 = [v7 sessionState];

  if (v8 != 7)
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [(SMReceiverCacheManager *)self sessionID];
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v13 = NSStringFromSelector(a2);
      v14 = 138412802;
      v15 = v10;
      v16 = 2112;
      v17 = v12;
      v18 = 2112;
      v19 = v13;
      _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Receiver,sessionID:%@,%@,%@,received SMSessionStartInfoMessage without requesting for it", &v14, 0x20u);
    }

LABEL_8:

    goto LABEL_9;
  }

  [(SMReceiverCacheManager *)self copySessionStartMessageParameters:v5];
  [(SMReceiverCacheManager *)self transitionToState:3 event:11];
LABEL_9:
}

- (void)copySessionStartMessageParameters:(id)a3
{
  v65 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = [v5 sessionType];
    v8 = [(SMReceiverCacheManager *)self receiverContact];
    v9 = [v8 sessionStatus];
    [v9 setSessionType:v7];

    v10 = [v6 date];
    v11 = [(SMReceiverCacheManager *)self receiverContact];
    v12 = [v11 sessionStatus];
    [v12 setSessionStartDate:v10];

    v13 = [v6 estimatedEndTime];
    v14 = [(SMReceiverCacheManager *)self receiverContact];
    v15 = [v14 sessionStatus];
    [v15 setEstimatedEndDate:v13];

    v16 = [v6 coarseEstimatedEndTime];
    v17 = v16;
    if (!v16)
    {
      v17 = [v6 estimatedEndTime];
    }

    v18 = [(SMReceiverCacheManager *)self receiverContact];
    v19 = [v18 sessionStatus];
    [v19 setCoarseEstimatedEndDate:v17];

    if (!v16)
    {
    }

    v20 = [v6 destinationType];
    v21 = [(SMReceiverCacheManager *)self receiverContact];
    v22 = [v21 sessionStatus];
    [v22 setDestinationType:v20];

    v23 = [v6 destinationMapItem];
    v24 = [(SMReceiverCacheManager *)self receiverContact];
    v25 = [v24 sessionStatus];
    [v25 setDestinationMapItem:v23];

    v26 = [v6 lowPowerModeWarningState];
    v27 = [(SMReceiverCacheManager *)self receiverContact];
    v28 = [v27 sessionStatus];
    [v28 setLowPowerModeWarningState:v26];

    v29 = [(SMReceiverCacheManager *)self messagingService];
    v30 = [v6 invitationTokenDict];
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __60__SMReceiverCacheManager_copySessionStartMessageParameters___block_invoke;
    v46[3] = &unk_2788CDA38;
    v46[4] = self;
    v48 = a2;
    v31 = v6;
    v47 = v31;
    [v29 findObjectForMyAccountFromDict:v30 withHandler:v46];

    v32 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v42 = [(SMReceiverCacheManager *)self sessionID];
      v33 = objc_opt_class();
      v44 = NSStringFromClass(v33);
      v43 = NSStringFromSelector(a2);
      v45 = [v31 date];
      v34 = [v45 stringFromDate];
      v35 = [v31 estimatedEndTime];
      v36 = [v35 stringFromDate];
      v37 = [v31 coarseEstimatedEndTime];
      v38 = [v37 stringFromDate];
      v39 = [v31 sessionType];
      v40 = [v31 destinationType];
      *buf = 138414082;
      v50 = v42;
      v51 = 2112;
      v52 = v44;
      v53 = 2112;
      v54 = v43;
      v55 = 2112;
      v56 = v34;
      v57 = 2112;
      v58 = v36;
      v59 = 2112;
      v60 = v38;
      v61 = 1024;
      v62 = v39;
      v63 = 1024;
      v64 = v40;
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

- (void)onShareInvitationAcceptenceResult:(BOOL)a3 withError:(id)a4
{
  v4 = a3;
  v56 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = [(SMReceiverCacheManager *)self receiverContact];
  v9 = [v8 sessionStatus];
  v10 = [v9 isSessionOngoing];

  if (v10)
  {
    if (v4)
    {
      [(SMReceiverCacheManager *)self setZoneShareRetryCount:0];
      v11 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [(SMReceiverCacheManager *)self sessionID];
        v13 = objc_opt_class();
        v14 = NSStringFromClass(v13);
        v15 = NSStringFromSelector(a2);
        v44 = 138412802;
        v45 = v12;
        v46 = 2112;
        v47 = v14;
        v48 = 2112;
        v49 = v15;
        _os_log_impl(&dword_2304B3000, v11, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Receiver,sessionID:%@,%@,%@,successfully accepted zone share", &v44, 0x20u);
      }

      v16 = [(SMReceiverCacheManager *)self receiverContact];
      v17 = [v16 sessionStatus];
      [v17 setZoneShareAccepted:1];

      v18 = [MEMORY[0x277CBEAA8] now];
      v19 = [(SMReceiverCacheManager *)self receiverContact];
      v20 = [v19 sessionStatus];
      [v20 setLastUpdateDate:v18];

      if ([(SMReceiverCacheManager *)self safetyCacheFetchPending])
      {
        [(SMReceiverCacheManager *)self fetchSafetyCacheData:3];
      }

      v21 = [(SMReceiverCacheManager *)self delegate];
      v22 = [(SMReceiverCacheManager *)self sessionID];
      v23 = [(SMReceiverCacheManager *)self sessionStatus];
      [v21 sessionStatusChanged:v22 status:v23];

      [(SMReceiverCacheManager *)self updateReceiverContactInStore];
    }

    else
    {
      v33 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v40 = [(SMReceiverCacheManager *)self sessionID];
        v41 = objc_opt_class();
        v42 = NSStringFromClass(v41);
        v43 = NSStringFromSelector(a2);
        v44 = 138413058;
        v45 = v40;
        v46 = 2112;
        v47 = v42;
        v48 = 2112;
        v49 = v43;
        v50 = 2112;
        v51 = v7;
        _os_log_error_impl(&dword_2304B3000, v33, OS_LOG_TYPE_ERROR, "#SafetyCache,Receiver,sessionID:%@,%@,%@,failed to accept zone share with error %@", &v44, 0x2Au);
      }

      if ([(SMReceiverCacheManager *)self zoneShareRetryCount]<= 1 && [(SMReceiverCacheManager *)self shouldRetryZoneShareAcceptanceForError:v7])
      {
        [(SMReceiverCacheManager *)self setZoneShareRetryCount:[(SMReceiverCacheManager *)self zoneShareRetryCount]+ 1];
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v34 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
          if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
          {
            v35 = [(SMReceiverCacheManager *)self sessionID];
            v36 = objc_opt_class();
            v37 = NSStringFromClass(v36);
            v38 = NSStringFromSelector(a2);
            v39 = [(SMReceiverCacheManager *)self zoneShareRetryCount];
            v44 = 138413058;
            v45 = v35;
            v46 = 2112;
            v47 = v37;
            v48 = 2112;
            v49 = v38;
            v50 = 1024;
            LODWORD(v51) = v39;
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
      v25 = [(SMReceiverCacheManager *)self sessionID];
      v26 = objc_opt_class();
      v27 = NSStringFromClass(v26);
      v28 = NSStringFromSelector(a2);
      v29 = MEMORY[0x277D4AB58];
      v30 = [(SMReceiverCacheManager *)self receiverContact];
      v31 = [v30 sessionStatus];
      v32 = [v29 convertSessionStateToString:{objc_msgSend(v31, "sessionState")}];
      v44 = 138413570;
      v45 = v25;
      v46 = 2112;
      v47 = v27;
      v48 = 2112;
      v49 = v28;
      v50 = 2112;
      v51 = v32;
      v52 = 1024;
      v53 = v4;
      v54 = 2112;
      v55 = v7;
      _os_log_impl(&dword_2304B3000, v24, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Receiver,sessionID:%@,%@,%@,zone acceptence result returned outside of session,state,%@,success,%d,error,%@", &v44, 0x3Au);
    }
  }
}

- (void)onEstimatedEndTimeUpdateMessageReceived:(id)a3
{
  v51 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    v6 = [(SMReceiverCacheManager *)self receiverContact];
    v7 = [v6 sessionStatus];
    v8 = [v7 sessionState];

    if (v8 == 2)
    {
      v9 = [v5 estimatedEndTime];
      v10 = [(SMReceiverCacheManager *)self receiverContact];
      v11 = [v10 sessionStatus];
      [v11 setEstimatedEndDate:v9];

      v12 = [v5 coarseEstimatedEndTime];
      v13 = v12;
      if (!v12)
      {
        v13 = [v5 estimatedEndTime];
      }

      v14 = [(SMReceiverCacheManager *)self receiverContact];
      v15 = [v14 sessionStatus];
      [v15 setCoarseEstimatedEndDate:v13];

      if (!v12)
      {
      }

      v16 = [MEMORY[0x277CBEAA8] now];
      v17 = [(SMReceiverCacheManager *)self receiverContact];
      v18 = [v17 sessionStatus];
      [v18 setLastUpdateDate:v16];

      v19 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = [(SMReceiverCacheManager *)self sessionID];
        v21 = objc_opt_class();
        v22 = NSStringFromClass(v21);
        v23 = NSStringFromSelector(a2);
        v24 = [v5 estimatedEndTime];
        v25 = [v24 stringFromDate];
        v26 = [v5 coarseEstimatedEndTime];
        v27 = [v26 stringFromDate];
        v41 = 138413314;
        v42 = v20;
        v43 = 2112;
        v44 = v22;
        v45 = 2112;
        v46 = v23;
        v47 = 2112;
        v48 = v25;
        v49 = 2112;
        v50 = v27;
        _os_log_impl(&dword_2304B3000, v19, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Receiver,sessionID:%@,%@,%@,estimatedEndDate,%@,coarseEstimatedEndDate,%@", &v41, 0x34u);
      }

      v28 = [(SMReceiverCacheManager *)self delegate];
      v29 = [(SMReceiverCacheManager *)self sessionID];
      v30 = [(SMReceiverCacheManager *)self sessionStatus];
      [v28 sessionStatusChanged:v29 status:v30];

      [(SMReceiverCacheManager *)self updateReceiverContactInStore];
    }

    else
    {
      v32 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v33 = [(SMReceiverCacheManager *)self sessionID];
        v34 = objc_opt_class();
        v35 = NSStringFromClass(v34);
        v36 = NSStringFromSelector(a2);
        v37 = MEMORY[0x277D4AB58];
        v38 = [(SMReceiverCacheManager *)self receiverContact];
        v39 = [v38 sessionStatus];
        v40 = [v37 convertSessionStateToString:{objc_msgSend(v39, "sessionState")}];
        v41 = 138413058;
        v42 = v33;
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

- (void)onLowPowerModeWarningStateUpdateMessageReceived:(id)a3
{
  v42 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [(SMReceiverCacheManager *)self receiverContact];
  v7 = [v6 sessionStatus];
  if ([v7 sessionState] == 3)
  {
    goto LABEL_4;
  }

  v8 = [(SMReceiverCacheManager *)self receiverContact];
  v9 = [v8 sessionStatus];
  if ([v9 sessionState] == 4)
  {

LABEL_4:
LABEL_5:
    v10 = [v5 lowPowerModeWarningState];
    v11 = [(SMReceiverCacheManager *)self receiverContact];
    v12 = [v11 sessionStatus];
    [v12 setLowPowerModeWarningState:v10];

    v13 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [(SMReceiverCacheManager *)self sessionID];
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      v17 = NSStringFromSelector(a2);
      v18 = [MEMORY[0x277D4AAB0] convertLowPowerModeWarningStateToString:{objc_msgSend(v5, "lowPowerModeWarningState")}];
      v34 = 138413058;
      v35 = v14;
      v36 = 2112;
      v37 = v16;
      v38 = 2112;
      v39 = v17;
      v40 = 2112;
      v41 = v18;
      _os_log_impl(&dword_2304B3000, v13, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Receiver,sessionID:%@,%@,%@,message.lowPowerModeWarningState %@", &v34, 0x2Au);
    }

    v19 = [(SMReceiverCacheManager *)self delegate];
    v20 = [(SMReceiverCacheManager *)self sessionID];
    v21 = [(SMReceiverCacheManager *)self sessionStatus];
    [v19 sessionStatusChanged:v20 status:v21];

    [(SMReceiverCacheManager *)self updateReceiverContactInStore];
    goto LABEL_8;
  }

  v22 = [(SMReceiverCacheManager *)self receiverContact];
  v23 = [v22 sessionStatus];
  v24 = [v23 sessionState];

  if (v24 == 2)
  {
    goto LABEL_5;
  }

  v25 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    v26 = [(SMReceiverCacheManager *)self sessionID];
    v27 = objc_opt_class();
    v28 = NSStringFromClass(v27);
    v29 = NSStringFromSelector(a2);
    v30 = MEMORY[0x277D4AB58];
    v31 = [(SMReceiverCacheManager *)self receiverContact];
    v32 = [v31 sessionStatus];
    v33 = [v30 convertSessionStateToString:{objc_msgSend(v32, "sessionState")}];
    v34 = 138413058;
    v35 = v26;
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

- (void)onKeyReleaseMessageReceived:(id)a3
{
  v60 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5)
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v52) = 0;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: keyReleaseMessage", &v52, 2u);
    }

    goto LABEL_30;
  }

  v6 = [(SMReceiverCacheManager *)self receiverContact];
  v7 = [v6 sessionStatus];
  if ([v7 sessionState] != 3)
  {
    v10 = [(SMReceiverCacheManager *)self receiverContact];
    v11 = [v10 sessionStatus];
    if ([v11 sessionState] != 4)
    {

      goto LABEL_12;
    }

    v12 = [v5 isSOSTrigger];

    if ((v12 & 1) == 0)
    {
      goto LABEL_12;
    }

LABEL_10:
    [(SMReceiverCacheManager *)self copyKeyReleaseMessageParameters:v5];
    v13 = [(SMReceiverCacheManager *)self delegate];
    v14 = [(SMReceiverCacheManager *)self sessionID];
    v15 = [(SMReceiverCacheManager *)self sessionStatus];
    [v13 sessionStatusChanged:v14 status:v15];

    [(SMReceiverCacheManager *)self updateReceiverContactInStore];
    goto LABEL_30;
  }

  v8 = [v5 isSOSTrigger];

  if (v8)
  {
    goto LABEL_10;
  }

LABEL_12:
  v16 = [(SMReceiverCacheManager *)self receiverContact];
  v17 = [v16 sessionStatus];
  if ([v17 sessionState] != 2)
  {
    v18 = [(SMReceiverCacheManager *)self receiverContact];
    v19 = [v18 sessionStatus];
    if ([v19 sessionState] != 1)
    {
      v37 = [(SMReceiverCacheManager *)self receiverContact];
      v38 = [v37 sessionStatus];
      v39 = [v38 sessionState];

      if (v39 != 8)
      {
        v40 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          v44 = [(SMReceiverCacheManager *)self sessionID];
          v45 = objc_opt_class();
          v46 = NSStringFromClass(v45);
          v47 = NSStringFromSelector(a2);
          v48 = MEMORY[0x277D4AB58];
          v49 = [(SMReceiverCacheManager *)self receiverContact];
          v50 = [v49 sessionStatus];
          v51 = [v48 convertSessionStateToString:{objc_msgSend(v50, "sessionState")}];
          v52 = 138413058;
          v53 = v44;
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
  v20 = [(SMReceiverCacheManager *)self receiverContact];
  v21 = [v20 sessionStatus];
  v22 = [v21 sessionStartDate];

  if (v22)
  {
    v23 = [MEMORY[0x277CBEAA8] date];
    v24 = [(SMReceiverCacheManager *)self receiverContact];
    v25 = [v24 sessionStatus];
    v26 = [v25 sessionStartDate];
    [v23 timeIntervalSinceDate:v26];
    v28 = v27 / 60.0;
    v29 = [(SMReceiverCacheManager *)self receiverContact];
    [v29 setTimeTillCacheRelease:v28];
  }

  else
  {
    v23 = [(SMReceiverCacheManager *)self receiverContact];
    [v23 setTimeTillCacheRelease:0.0];
  }

  [(SMReceiverCacheManager *)self copyKeyReleaseMessageParameters:v5];
  [(SMReceiverCacheManager *)self stopMissingKeyReleaseTimer];
  v30 = [(SMReceiverCacheManager *)self receiverContact];
  v31 = [v30 sessionStatus];
  v32 = [v31 sessionState];

  if (v32 == 1)
  {
    v33 = self;
    v34 = 7;
LABEL_29:
    [(SMReceiverCacheManager *)v33 transitionToState:v34 event:5];
    goto LABEL_30;
  }

  v35 = [(SMReceiverCacheManager *)self receiverContact];
  v36 = [v35 sessionStatus];
  if ([v36 sessionState] == 2)
  {

LABEL_28:
    v33 = self;
    v34 = 3;
    goto LABEL_29;
  }

  v41 = [(SMReceiverCacheManager *)self receiverContact];
  v42 = [v41 sessionStatus];
  v43 = [v42 sessionState];

  if (v43 == 8)
  {
    goto LABEL_28;
  }

LABEL_30:
}

- (void)onKeyReleaseInfoMessageReceived:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    v6 = [(SMReceiverCacheManager *)self receiverContact];
    v7 = [v6 sessionStatus];
    v8 = [v7 sessionState];

    if (v8 == 8)
    {
      v9 = [MEMORY[0x277CBEAA8] date];
      v10 = [(SMReceiverCacheManager *)self receiverContact];
      v11 = [v10 sessionStatus];
      v12 = [v11 sessionStartDate];
      [v9 timeIntervalSinceDate:v12];
      v14 = v13 / 60.0;
      v15 = [(SMReceiverCacheManager *)self receiverContact];
      [v15 setTimeTillCacheRelease:v14];

      [(SMReceiverCacheManager *)self copyKeyReleaseMessageParameters:v5];
      [(SMReceiverCacheManager *)self transitionToState:3 event:12];
    }

    else
    {
      v17 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = [(SMReceiverCacheManager *)self sessionID];
        v19 = objc_opt_class();
        v20 = NSStringFromClass(v19);
        v21 = NSStringFromSelector(a2);
        v22 = 138412802;
        v23 = v18;
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

- (void)copyKeyReleaseMessageParameters:(id)a3
{
  v43 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = [v5 triggerDate];
    v8 = [(SMReceiverCacheManager *)self receiverContact];
    v9 = [v8 sessionStatus];
    [v9 setTriggerDate:v7];

    v10 = [v6 locationOfTrigger];
    v11 = [(SMReceiverCacheManager *)self receiverContact];
    v12 = [v11 sessionStatus];
    [v12 setLocationOfTrigger:v10];

    v13 = [v6 triggerType];
    v14 = [(SMReceiverCacheManager *)self receiverContact];
    v15 = [v14 sessionStatus];
    [v15 setTriggerType:v13];

    v16 = [v6 isSOSTrigger];
    v17 = [(SMReceiverCacheManager *)self receiverContact];
    v18 = [v17 sessionStatus];
    [v18 setIsSOSTrigger:v16];

    v19 = [v6 lowPowerModeWarningState];
    v20 = [(SMReceiverCacheManager *)self receiverContact];
    v21 = [v20 sessionStatus];
    [v21 setLowPowerModeWarningState:v19];

    v22 = [v6 safetyCacheKey];
    v23 = [(SMReceiverCacheManager *)self receiverContact];
    [v23 setSafetyCacheKey:v22];

    v24 = [v6 safetyCacheToken];
    v25 = [(SMReceiverCacheManager *)self receiverContact];
    [v25 setAllowReadToken:v24];

    v26 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = [(SMReceiverCacheManager *)self sessionID];
      v28 = objc_opt_class();
      v29 = NSStringFromClass(v28);
      v30 = NSStringFromSelector(a2);
      v31 = [v6 triggerDate];
      v32 = [v31 stringFromDate];
      v33 = 138413314;
      v34 = v27;
      v35 = 2112;
      v36 = v29;
      v37 = 2112;
      v38 = v30;
      v39 = 2112;
      v40 = v32;
      v41 = 1024;
      v42 = [v6 triggerType];
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
  v4 = [(SMReceiverCacheManager *)self receiverContact];
  v5 = [v4 sessionStatus];
  if ([v5 sessionState] == 3)
  {
    goto LABEL_4;
  }

  v6 = [(SMReceiverCacheManager *)self receiverContact];
  v7 = [v6 sessionStatus];
  if ([v7 sessionState] == 4)
  {

LABEL_4:
LABEL_5:
    v8 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [(SMReceiverCacheManager *)self sessionID];
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = NSStringFromSelector(a2);
      v34 = 138412802;
      v35 = v9;
      v36 = 2112;
      v37 = v11;
      v38 = 2112;
      v39 = v12;
      _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Receiver,sessionID:%@,%@,%@", &v34, 0x20u);
    }

    v13 = [MEMORY[0x277CBEAA8] now];
    v14 = [(SMReceiverCacheManager *)self receiverContact];
    v15 = [v14 sessionStatus];
    [v15 setCacheRequestDate:v13];

    v16 = [(SMReceiverCacheManager *)self receiverContact];
    v17 = [v16 sessionStatus];
    v18 = [v17 sessionState];

    if (v18 == 4)
    {
      [(SMReceiverCacheManager *)self fetchSafetyCacheData:6];
      v19 = [(SMReceiverCacheManager *)self delegate];
      v20 = [(SMReceiverCacheManager *)self sessionID];
      v21 = [(SMReceiverCacheManager *)self sessionStatus];
      [v19 sessionStatusChanged:v20 status:v21];
    }

    else
    {
      [(SMReceiverCacheManager *)self transitionToState:4 event:6];
    }

    return;
  }

  v22 = [(SMReceiverCacheManager *)self receiverContact];
  v23 = [v22 sessionStatus];
  v24 = [v23 sessionState];

  if (v24 == 9)
  {
    goto LABEL_5;
  }

  v25 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    v26 = [(SMReceiverCacheManager *)self sessionID];
    v27 = objc_opt_class();
    v28 = NSStringFromClass(v27);
    v29 = NSStringFromSelector(a2);
    v30 = MEMORY[0x277D4AB58];
    v31 = [(SMReceiverCacheManager *)self receiverContact];
    v32 = [v31 sessionStatus];
    v33 = [v30 convertSessionStateToString:{objc_msgSend(v32, "sessionState")}];
    v34 = 138413058;
    v35 = v26;
    v36 = 2112;
    v37 = v28;
    v38 = 2112;
    v39 = v29;
    v40 = 2112;
    v41 = v33;
    _os_log_error_impl(&dword_2304B3000, v25, OS_LOG_TYPE_ERROR, "#SafetyCache,Receiver,sessionID:%@,%@,%@,received user cache download request outside of Triggered and CacheReleased states,state,%@", &v34, 0x2Au);
  }
}

- (void)onCacheDownloadResult:(BOOL)a3 userInitiatedDownload:(BOOL)a4 withError:(id)a5
{
  v5 = a4;
  v6 = a3;
  v79 = *MEMORY[0x277D85DE8];
  v9 = a5;
  v10 = [(SMReceiverCacheManager *)self defaultsManager];
  v11 = [v10 objectForKey:@"RTDefaultsMockTimeoutNextReceiverSafetyCacheDownload"];
  v12 = [v11 BOOLValue];

  if ((v12 & 1) == 0)
  {
    [(SMReceiverCacheManager *)self stopCacheDownloadTimeoutTimer];
  }

  v13 = [(SMReceiverCacheManager *)self receiverContact];
  v14 = [v13 sessionStatus];
  if ([v14 isSessionOngoing])
  {
  }

  else
  {
    v15 = [(SMReceiverCacheManager *)self receiverContact];
    v16 = [v15 sessionStatus];
    v17 = [v16 sessionState];

    if (v17 != 5)
    {
      v54 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
      {
        v55 = [(SMReceiverCacheManager *)self sessionID];
        v56 = objc_opt_class();
        v57 = NSStringFromClass(v56);
        v58 = NSStringFromSelector(a2);
        v59 = MEMORY[0x277D4AB58];
        v60 = [(SMReceiverCacheManager *)self receiverContact];
        v61 = [v60 sessionStatus];
        v62 = [v59 convertSessionStateToString:{objc_msgSend(v61, "sessionState")}];
        v67 = 138413570;
        v68 = v55;
        v69 = 2112;
        v70 = v57;
        v71 = 2112;
        v72 = v58;
        v73 = 2112;
        v74 = v62;
        v75 = 1024;
        v76 = v6;
        v77 = 2112;
        v78 = v9;
        _os_log_impl(&dword_2304B3000, v54, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Receiver,sessionID:%@,%@,%@,cache download result returned outside of session and Cache Persistence,state,%@,success,%d,error,%@", &v67, 0x3Au);
      }

      goto LABEL_32;
    }
  }

  v18 = [(SMReceiverCacheManager *)self receiverContact];
  [v18 setNumCacheDownloads:{objc_msgSend(v18, "numCacheDownloads") + 1}];

  if (v6)
  {
    [(SMReceiverCacheManager *)self setCacheDownloadRetryCount:0];
    v19 = [(SMReceiverCacheManager *)self receiverContact];
    [v19 setNumSuccessfulCacheDownloads:{objc_msgSend(v19, "numSuccessfulCacheDownloads") + 1}];

    v20 = [(SMReceiverCacheManager *)self receiverContact];
    [v20 timeTillFirstSuccessfulCacheDownload];
    if (v21 == -1.0)
    {
      v22 = [(SMReceiverCacheManager *)self receiverContact];
      v23 = [v22 sessionStatus];
      v24 = [v23 sessionStartDate];

      if (!v24)
      {
LABEL_11:
        v31 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          v32 = [(SMReceiverCacheManager *)self sessionID];
          v33 = objc_opt_class();
          v34 = NSStringFromClass(v33);
          v35 = NSStringFromSelector(a2);
          v67 = 138412802;
          v68 = v32;
          v69 = 2112;
          v70 = v34;
          v71 = 2112;
          v72 = v35;
          _os_log_impl(&dword_2304B3000, v31, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Receiver,sessionID:%@,%@,%@,successfully downloaded cache", &v67, 0x20u);
        }

        v36 = [(SMReceiverCacheManager *)self delegate];
        v37 = [(SMReceiverCacheManager *)self sessionID];
        v38 = [(SMReceiverCacheManager *)self receiverContact];
        v39 = [v38 phoneCache];
        v40 = [(SMReceiverCacheManager *)self receiverContact];
        v41 = [v40 watchCache];
        [v36 safetyCacheChanged:v37 phoneCache:v39 watchCache:v41];

        [(SMReceiverCacheManager *)self updateReceiverContactInStore];
        goto LABEL_32;
      }

      v20 = [MEMORY[0x277CBEAA8] date];
      v25 = [(SMReceiverCacheManager *)self receiverContact];
      v26 = [v25 sessionStatus];
      v27 = [v26 sessionStartDate];
      [v20 timeIntervalSinceDate:v27];
      v29 = v28 / 60.0;
      v30 = [(SMReceiverCacheManager *)self receiverContact];
      [v30 setTimeTillFirstSuccessfulCacheDownload:v29];
    }

    goto LABEL_11;
  }

  v42 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
  {
    v63 = [(SMReceiverCacheManager *)self sessionID];
    v64 = objc_opt_class();
    v65 = NSStringFromClass(v64);
    v66 = NSStringFromSelector(a2);
    v67 = 138412802;
    v68 = v63;
    v69 = 2112;
    v70 = v65;
    v71 = 2112;
    v72 = v66;
    _os_log_error_impl(&dword_2304B3000, v42, OS_LOG_TYPE_ERROR, "#SafetyCache,Receiver,sessionID:%@,%@,%@,failed to download cache", &v67, 0x20u);
  }

  [(SMReceiverCacheManager *)self updateReceiverContactInStore];
  if ([(SMReceiverCacheManager *)self cacheDownloadRetryCount]<= 1 && [(SMReceiverCacheManager *)self shouldRetryCacheDownloadForError:v9])
  {
    [(SMReceiverCacheManager *)self setCacheDownloadRetryCount:[(SMReceiverCacheManager *)self cacheDownloadRetryCount]+ 1];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v43 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
      {
        v44 = [(SMReceiverCacheManager *)self sessionID];
        v45 = objc_opt_class();
        v46 = NSStringFromClass(v45);
        v47 = NSStringFromSelector(a2);
        v48 = [(SMReceiverCacheManager *)self cacheDownloadRetryCount];
        v67 = 138413058;
        v68 = v44;
        v69 = 2112;
        v70 = v46;
        v71 = 2112;
        v72 = v47;
        v73 = 1024;
        LODWORD(v74) = v48;
        _os_log_impl(&dword_2304B3000, v43, OS_LOG_TYPE_INFO, "#SafetyCache,Receiver,sessionID:%@,%@,%@,retry cache download,attempt:%d", &v67, 0x26u);
      }
    }

    if (v5)
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
    if (v5)
    {
      [(SMReceiverCacheManager *)self transitionToState:9 event:7];
    }

    v50 = [(SMReceiverCacheManager *)self normalizedSMErrorForCacheDownloadError:v9];
    v51 = [(SMReceiverCacheManager *)self receiverContact];
    v52 = [v51 sessionStatus];
    [v52 setCacheDownloadError:v50];

    v53 = [(SMReceiverCacheManager *)self defaultsManager];
    [v53 setObject:MEMORY[0x277CBEC28] forKey:@"RTDefaultsMockFailNextReceiverSafetyCacheDownload"];
  }

LABEL_32:
}

- (void)onCacheUpdatedMessageReceived:(id)a3
{
  v40 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    v6 = [(SMReceiverCacheManager *)self receiverContact];
    v7 = [v6 sessionStatus];
    v8 = [v7 sessionState];

    if (v8 == 2)
    {
      v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [(SMReceiverCacheManager *)self sessionID];
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        v13 = NSStringFromSelector(a2);
        v32 = 138412802;
        v33 = v10;
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
      v15 = [(SMReceiverCacheManager *)self receiverContact];
      v16 = [v15 sessionStatus];
      v17 = [v16 sessionState];

      if (v17 == 4)
      {
        v18 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v19 = [(SMReceiverCacheManager *)self sessionID];
          v20 = objc_opt_class();
          v21 = NSStringFromClass(v20);
          v22 = NSStringFromSelector(a2);
          v32 = 138412802;
          v33 = v19;
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
          v24 = [(SMReceiverCacheManager *)self sessionID];
          v25 = objc_opt_class();
          v26 = NSStringFromClass(v25);
          v27 = NSStringFromSelector(a2);
          v28 = MEMORY[0x277D4AB58];
          v29 = [(SMReceiverCacheManager *)self receiverContact];
          v30 = [v29 sessionStatus];
          v31 = [v28 convertSessionStateToString:{objc_msgSend(v30, "sessionState")}];
          v32 = 138413058;
          v33 = v24;
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

- (void)onSessionEndMessageReceived:(id)a3
{
  v115 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    v6 = [(SMReceiverCacheManager *)self receiverContact];
    v7 = [v6 sessionStatus];
    v8 = [v7 isSessionOngoing];

    if (v8)
    {
      v9 = [v5 sessionEndReason];
      v10 = [(SMReceiverCacheManager *)self receiverContact];
      v11 = [v10 sessionStatus];
      [v11 setSessionEndReason:v9];

      v12 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [(SMReceiverCacheManager *)self sessionID];
        v14 = objc_opt_class();
        v15 = NSStringFromClass(v14);
        v16 = NSStringFromSelector(a2);
        v107 = 138413058;
        v108 = v13;
        v109 = 2112;
        v110 = v15;
        v111 = 2112;
        v112 = v16;
        v113 = 1024;
        LODWORD(v114) = [v5 sessionEndReason];
        _os_log_impl(&dword_2304B3000, v12, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Receiver,sessionID:%@,%@,%@,sessionEndReason,%d", &v107, 0x26u);
      }

      v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v18 = MEMORY[0x277CCABB0];
      v19 = [(SMReceiverCacheManager *)self receiverContact];
      v20 = [v19 sessionStatus];
      v21 = [v18 numberWithUnsignedInteger:{objc_msgSend(v20, "sessionType")}];
      [v17 setValue:v21 forKey:@"sessionType"];

      v22 = MEMORY[0x277CCABB0];
      v23 = [(SMReceiverCacheManager *)self receiverContact];
      v24 = [v23 sessionStatus];
      v25 = [v22 numberWithUnsignedInteger:{objc_msgSend(v24, "triggerType")}];
      [v17 setValue:v25 forKey:@"triggerType"];

      v26 = MEMORY[0x277CCABB0];
      v27 = [(SMReceiverCacheManager *)self receiverContact];
      v28 = [v27 sessionStatus];
      v29 = [v26 numberWithUnsignedInteger:{objc_msgSend(v28, "sessionEndReason")}];
      [v17 setValue:v29 forKey:@"sessionEndReason"];

      v30 = MEMORY[0x277CCABB0];
      v31 = [(SMReceiverCacheManager *)self receiverContact];
      v32 = [v31 safetyCacheKey];
      v33 = [v30 numberWithInt:v32 != 0];
      [v17 setValue:v33 forKey:@"wasCacheReleased"];

      v34 = MEMORY[0x277CCABB0];
      v35 = [(SMReceiverCacheManager *)self receiverContact];
      v36 = [v34 numberWithLongLong:{objc_msgSend(v35, "numCacheDownloads")}];
      [v17 setValue:v36 forKey:@"numCacheDownloads"];

      v37 = [(SMReceiverCacheManager *)self receiverContact];
      v38 = [v37 numCacheDownloads];

      if (v38 < 1)
      {
        [v17 setValue:&unk_28459EA78 forKey:@"percentageOfSuccessfulCacheDownloads"];
      }

      else
      {
        v39 = MEMORY[0x277CCABB0];
        v40 = [(SMReceiverCacheManager *)self receiverContact];
        v41 = [v40 numSuccessfulCacheDownloads];
        v42 = [(SMReceiverCacheManager *)self receiverContact];
        *&v43 = (v41 / [v42 numCacheDownloads]) * 100.0;
        v44 = [v39 numberWithFloat:v43];
        [v17 setValue:v44 forKey:@"percentageOfSuccessfulCacheDownloads"];
      }

      v53 = MEMORY[0x277CCABB0];
      v54 = [(SMReceiverCacheManager *)self receiverContact];
      [v54 timeTillCacheRelease];
      v55 = [v53 numberWithDouble:?];
      [v17 setValue:v55 forKey:@"timeTilCacheRelease"];

      v56 = MEMORY[0x277CCABB0];
      v57 = [(SMReceiverCacheManager *)self receiverContact];
      *&v58 = vcvts_n_f32_s64([v57 maxPhoneCacheSize], 0xAuLL);
      v59 = [v56 numberWithFloat:v58];
      [v17 setValue:v59 forKey:@"phoneMaxCacheSize"];

      v60 = MEMORY[0x277CCABB0];
      v61 = [(SMReceiverCacheManager *)self receiverContact];
      *&v62 = vcvts_n_f32_s64([v61 maxWatchCacheSize], 0xAuLL);
      v63 = [v60 numberWithFloat:v62];
      [v17 setValue:v63 forKey:@"watchMaxCacheSize"];

      v64 = MEMORY[0x277CCABB0];
      v65 = [(SMReceiverCacheManager *)self receiverContact];
      v66 = [v64 numberWithLongLong:{objc_msgSend(v65, "maxLocationsInPhoneCacheTrace")}];
      [v17 setValue:v66 forKey:@"phoneMaxLocationsInTrace"];

      v67 = MEMORY[0x277CCABB0];
      v68 = [(SMReceiverCacheManager *)self receiverContact];
      v69 = [v67 numberWithLongLong:{objc_msgSend(v68, "maxLocationsInWatchCacheTrace")}];
      [v17 setValue:v69 forKey:@"watchMaxLocationsInTrace"];

      v70 = MEMORY[0x277CCABB0];
      v71 = [(SMReceiverCacheManager *)self phoneCache];
      v72 = [v71 locationsDuringSession];
      v73 = [v70 numberWithInt:{objc_msgSend(v72, "count") != 0}];
      [v17 setValue:v73 forKey:@"phoneLocationHistoryAvailable"];

      v74 = MEMORY[0x277CCABB0];
      v75 = [(SMReceiverCacheManager *)self watchCache];
      v76 = [v75 locationsDuringSession];
      v77 = [v74 numberWithInt:{objc_msgSend(v76, "count") != 0}];
      [v17 setValue:v77 forKey:@"watchLocationHistoryAvailable"];

      v78 = MEMORY[0x277CCABB0];
      v79 = [(SMReceiverCacheManager *)self receiverContact];
      v80 = [v79 sessionStatus];
      v81 = [v78 numberWithInt:{objc_msgSend(v80, "triggerType") == 15}];
      [v17 setValue:v81 forKey:@"wasScheduledSendTriggered"];

      v82 = MEMORY[0x277CCABB0];
      v83 = [(SMReceiverCacheManager *)self receiverContact];
      v84 = [v82 numberWithLongLong:{objc_msgSend(v83, "phoneMaxWorkoutEvents")}];
      [v17 setValue:v84 forKey:@"phoneMaxWorkoutEvents"];

      v85 = MEMORY[0x277CCABB0];
      v86 = [(SMReceiverCacheManager *)self receiverContact];
      v87 = [v85 numberWithLongLong:{objc_msgSend(v86, "watchMaxWorkoutEvents")}];
      [v17 setValue:v87 forKey:@"watchMaxWorkoutEvents"];

      v88 = MEMORY[0x277CCABB0];
      v89 = [(SMReceiverCacheManager *)self receiverContact];
      v90 = [v89 sessionStatus];
      v91 = [v88 numberWithInt:{objc_msgSend(v90, "lowPowerModeWarningState") == 2}];
      [v17 setValue:v91 forKey:@"wasInLPM"];

      v92 = [MEMORY[0x277CBEAA8] date];
      v93 = [(SMReceiverCacheManager *)self receiverContact];
      v94 = [v93 sessionStatus];
      v95 = [v94 sessionStartDate];
      [v92 timeIntervalSinceDate:v95];
      v97 = v96 / 60.0;

      v98 = [MEMORY[0x277CCABB0] numberWithDouble:v97];
      [v17 setValue:v98 forKey:@"sessionDuration"];

      AnalyticsSendEvent();
      v99 = [(SMReceiverCacheManager *)self computeReceiverSessionMetrics];
      [(SMReceiverCacheManager *)self computeResponseModality:v99 completionHandler:&__block_literal_global_87];
      if ([v5 sessionEndReason] == 3)
      {
        v100 = [(SMReceiverCacheManager *)self receiverContact];
        v101 = [v100 sessionStatus];
        if ([v101 sessionState] == 4)
        {
          v102 = [(SMReceiverCacheManager *)self receiverContact];
          v103 = [v102 phoneCache];
          if (v103)
          {

LABEL_19:
            v104 = 5;
            goto LABEL_20;
          }

          v105 = [(SMReceiverCacheManager *)self receiverContact];
          v106 = [v105 watchCache];

          if (v106)
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
      v45 = [(SMReceiverCacheManager *)self sessionID];
      v46 = objc_opt_class();
      v47 = NSStringFromClass(v46);
      v48 = NSStringFromSelector(a2);
      v49 = MEMORY[0x277D4AB58];
      v50 = [(SMReceiverCacheManager *)self receiverContact];
      v51 = [v50 sessionStatus];
      v52 = [v49 convertSessionStateToString:{objc_msgSend(v51, "sessionState")}];
      v107 = 138413058;
      v108 = v45;
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
  v4 = [(SMReceiverCacheManager *)self receiverContact];
  v5 = [v4 sessionStatus];
  v6 = [v5 sessionState];

  v7 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  v8 = v7;
  if (v6 == 5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [(SMReceiverCacheManager *)self sessionID];
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = NSStringFromSelector(a2);
      v21 = 138412802;
      v22 = v9;
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
      v13 = [(SMReceiverCacheManager *)self sessionID];
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      v16 = NSStringFromSelector(a2);
      v17 = MEMORY[0x277D4AB58];
      v18 = [(SMReceiverCacheManager *)self receiverContact];
      v19 = [v18 sessionStatus];
      v20 = [v17 convertSessionStateToString:{objc_msgSend(v19, "sessionState")}];
      v21 = 138413058;
      v22 = v13;
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
  v4 = [(SMReceiverCacheManager *)self receiverContact];
  v5 = [v4 firstDetailViewSessionState];

  if (!v5)
  {
    v6 = [(SMReceiverCacheManager *)self receiverContact];
    v7 = [v6 sessionStatus];
    v8 = [v7 sessionState];
    v9 = [(SMReceiverCacheManager *)self receiverContact];
    [v9 setFirstDetailViewSessionState:v8];
  }

  v10 = [(SMReceiverCacheManager *)self receiverContact];
  v11 = [v10 sessionStatus];
  v12 = [v11 sessionState];
  v13 = [(SMReceiverCacheManager *)self receiverContact];
  [v13 setLastDetailViewSessionState:v12];

  [(SMReceiverCacheManager *)self updateReceiverContactInStore];
  v14 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [(SMReceiverCacheManager *)self sessionID];
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    v18 = NSStringFromSelector(a2);
    v19 = [(SMReceiverCacheManager *)self receiverContact];
    v20 = [v19 firstDetailViewSessionState];
    v21 = [(SMReceiverCacheManager *)self receiverContact];
    v22 = 138413314;
    v23 = v15;
    v24 = 2112;
    v25 = v17;
    v26 = 2112;
    v27 = v18;
    v28 = 1024;
    v29 = v20;
    v30 = 1024;
    v31 = [v21 lastDetailViewSessionState];
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
  v6 = [(SMReceiverCacheManager *)self sessionID];
  v7 = MEMORY[0x277CCACA8];
  v8 = [(SMReceiverCacheManager *)self sessionID];
  v9 = [v7 stringWithFormat:@"%@.%@", @"com.apple.routined.SMReceiverCacheManager.cacheDownloadTimeoutTimerIdentifierBase", v8];

  v10 = [RTXPCTimerAlarm alloc];
  v11 = [(SMReceiverCacheManager *)self queue];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __56__SMReceiverCacheManager_startCacheDownloadTimeoutTimer__block_invoke;
  v30[3] = &unk_2788CDA80;
  objc_copyWeak(v34, &location);
  v12 = v6;
  v31 = v12;
  v13 = v5;
  v34[1] = a2;
  v32 = v13;
  v33 = self;
  v14 = [(RTXPCTimerAlarm *)v10 initWithIdentifier:v9 queue:v11 handler:v30];
  [(SMReceiverCacheManager *)self setCacheDownloadTimeoutTimerAlarm:v14];

  v15 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:60.0];
  v16 = [(SMReceiverCacheManager *)self cacheDownloadTimeoutTimerAlarm];
  v29 = 0;
  [v16 fireWithDate:v15 error:&v29];
  v17 = v29;

  if (v17)
  {
    v18 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = [(SMReceiverCacheManager *)self sessionID];
      v20 = objc_opt_class();
      v21 = NSStringFromClass(v20);
      v22 = NSStringFromSelector(a2);
      v23 = [v17 localizedDescription];
      *buf = 138413058;
      v37 = v19;
      v38 = 2112;
      v39 = v21;
      v40 = 2112;
      v41 = v22;
      v42 = 2112;
      v43 = v23;
      _os_log_error_impl(&dword_2304B3000, v18, OS_LOG_TYPE_ERROR, "#SafetyCache,Receiver,sessionID:%@,%@,%@,cacheDownloadTimeoutTimerAlarm fireWithDate hit error: %@", buf, 0x2Au);
    }
  }

  else
  {
    v18 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v24 = [(SMReceiverCacheManager *)self sessionID];
      v25 = objc_opt_class();
      v26 = NSStringFromClass(v25);
      v27 = NSStringFromSelector(a2);
      v28 = [v15 stringFromDate];
      *buf = 138413058;
      v37 = v24;
      v38 = 2112;
      v39 = v26;
      v40 = 2112;
      v41 = v27;
      v42 = 2112;
      v43 = v28;
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
  v3 = [(SMReceiverCacheManager *)self cacheDownloadTimeoutTimerAlarm];

  if (v3)
  {
    v4 = [(SMReceiverCacheManager *)self cacheDownloadTimeoutTimerAlarm];
    [v4 invalidate];

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
  v6 = [(SMReceiverCacheManager *)self sessionID];
  v7 = MEMORY[0x277CCACA8];
  v8 = [(SMReceiverCacheManager *)self sessionID];
  v9 = [v7 stringWithFormat:@"%@.%@", @"com.apple.routined.SMReceiverCacheManager.missingKeyReleaseTimerIdentifierBase", v8];

  v10 = [RTXPCTimerAlarm alloc];
  v11 = [(SMReceiverCacheManager *)self queue];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __53__SMReceiverCacheManager_startMissingKeyReleaseTimer__block_invoke;
  v30[3] = &unk_2788CD1F8;
  objc_copyWeak(v33, &location);
  v12 = v6;
  v31 = v12;
  v13 = v5;
  v32 = v13;
  v33[1] = a2;
  v14 = [(RTXPCTimerAlarm *)v10 initWithIdentifier:v9 queue:v11 handler:v30];
  [(SMReceiverCacheManager *)self setMissingKeyReleaseTimerAlarm:v14];

  v15 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:30.0];
  v16 = [(SMReceiverCacheManager *)self missingKeyReleaseTimerAlarm];
  v29 = 0;
  [v16 fireWithDate:v15 error:&v29];
  v17 = v29;

  if (v17)
  {
    v18 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = [(SMReceiverCacheManager *)self sessionID];
      v20 = objc_opt_class();
      v21 = NSStringFromClass(v20);
      v22 = NSStringFromSelector(a2);
      v23 = [v17 localizedDescription];
      *buf = 138413058;
      v36 = v19;
      v37 = 2112;
      v38 = v21;
      v39 = 2112;
      v40 = v22;
      v41 = 2112;
      v42 = v23;
      _os_log_error_impl(&dword_2304B3000, v18, OS_LOG_TYPE_ERROR, "#SafetyCache,Receiver,sessionID:%@,%@,%@,missingKeyReleaseTimerAlarm fireWithDate hit error: %@", buf, 0x2Au);
    }
  }

  else
  {
    v18 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v24 = [(SMReceiverCacheManager *)self sessionID];
      v25 = objc_opt_class();
      v26 = NSStringFromClass(v25);
      v27 = NSStringFromSelector(a2);
      v28 = [v15 stringFromDate];
      *buf = 138413058;
      v36 = v24;
      v37 = 2112;
      v38 = v26;
      v39 = 2112;
      v40 = v27;
      v41 = 2112;
      v42 = v28;
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
  v3 = [(SMReceiverCacheManager *)self missingKeyReleaseTimerAlarm];

  if (v3)
  {
    v4 = [(SMReceiverCacheManager *)self missingKeyReleaseTimerAlarm];
    [v4 invalidate];

    [(SMReceiverCacheManager *)self setMissingKeyReleaseTimerAlarm:0];
  }
}

- (BOOL)shouldRetryZoneShareAcceptanceForError:(id)a3
{
  v3 = a3;
  v4 = [v3 domain];
  v5 = [v4 isEqualToString:*MEMORY[0x277CBBF50]];

  if (v5)
  {
    v6 = [v3 code];
    if (v6 <= 0x1A)
    {
      v7 = 0x3FFE1FDu >> v6;
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

- (BOOL)shouldRetryCacheDownloadForError:(id)a3
{
  v3 = a3;
  v4 = [v3 domain];
  v5 = [v4 isEqualToString:*MEMORY[0x277D4AC58]];

  if (v5)
  {
    v6 = [v3 code];
    if (v6 >= 9)
    {
      v7 = 1;
    }

    else
    {
      v7 = 0x103u >> v6;
    }
  }

  else
  {
    v8 = [v3 domain];
    v9 = [v8 isEqualToString:*MEMORY[0x277CBBF50]];

    if (v9)
    {
      v7 = [v3 code] != 7;
    }

    else
    {
      v7 = 1;
    }
  }

  return v7 & 1;
}

- (int64_t)normalizedSMErrorForCacheDownloadError:(id)a3
{
  v3 = a3;
  v4 = [v3 domain];
  v5 = [v4 isEqualToString:*MEMORY[0x277CBBF50]];

  if (v5)
  {
    if ([v3 code] == 3)
    {
      v6 = 46;
    }

    else if ([v3 code] == 7)
    {
      v6 = 12;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v7 = [v3 domain];
    v8 = [v7 isEqualToString:*MEMORY[0x277D4ACD0]];

    if (v8)
    {
      v6 = [v3 code];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (void)transitionToState:(int64_t)a3 event:(int64_t)a4
{
  v7 = self;
  v113 = *MEMORY[0x277D85DE8];
  v8 = [(SMReceiverCacheManager *)self receiverContact];
  v9 = [v8 sessionStatus];
  v10 = [v9 sessionState];

  v11 = [MEMORY[0x277D4AB58] convertSessionStateToString:v10];
  if (v10 != a3)
  {
    v12 = [MEMORY[0x277D4AB58] convertSessionStateToString:a3];
    v17 = [objc_opt_class() receiverEventToString:a4];
    v18 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      [(SMReceiverCacheManager *)v7 sessionID];
      v103 = a4;
      v19 = v12;
      v20 = v11;
      v22 = v21 = v17;
      v23 = objc_opt_class();
      NSStringFromClass(v23);
      v24 = v104 = a3;
      NSStringFromSelector(a2);
      v25 = v7;
      v27 = v26 = a2;
      *buf = 138413570;
      v106 = v22;
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
      a4 = v103;

      a2 = v26;
      v7 = v25;

      a3 = v104;
    }

    if (v10 <= 4)
    {
      if (v10 > 2)
      {
        if (v10 == 3)
        {
          if (a3 == 6)
          {
            [(SMReceiverCacheManager *)v7 transitionFromTriggeredToCleanupDueToEvent:a4];
          }

          else
          {
            if (a3 != 4)
            {
              v39 = a2;
              v42 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
              if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
              {
                [(SMReceiverCacheManager *)v7 sessionID];
                a3 = v75 = a3;
                v76 = objc_opt_class();
                v77 = NSStringFromClass(v76);
                v78 = NSStringFromSelector(v39);
                *buf = 138413314;
                v106 = a3;
                v107 = 2112;
                v108 = v77;
                v109 = 2112;
                *v110 = v78;
                *&v110[8] = 1024;
                *&v110[10] = v75;
                *&v110[14] = 2112;
                *&v110[16] = v11;
                _os_log_error_impl(&dword_2304B3000, v42, OS_LOG_TYPE_ERROR, "#SafetyCache,Receiver,sessionID:%@,%@,%@,unknown or unhandled toState:%d for fromState:%@", buf, 0x30u);

                LODWORD(a3) = v75;
              }

              v41 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
              if (!os_log_type_enabled(v41, OS_LOG_TYPE_FAULT))
              {
                goto LABEL_107;
              }

              goto LABEL_106;
            }

            [(SMReceiverCacheManager *)v7 transitionFromTriggeredToCacheReleasedDueToEvent:a4];
          }
        }

        else
        {
          switch(a3)
          {
            case 5:
              [(SMReceiverCacheManager *)v7 transitionFromCacheReleasedToCachePersistenceDueToEvent:a4];
              break;
            case 6:
              [(SMReceiverCacheManager *)v7 transitionFromCacheReleasedToCleanupDueToEvent:a4];
              break;
            case 9:
              [(SMReceiverCacheManager *)v7 transitionFromCacheReleasedToCacheDownloadFailedDueToEvent:a4];
              break;
            default:
              v39 = a2;
              v46 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
              if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
              {
                [(SMReceiverCacheManager *)v7 sessionID];
                a3 = v91 = a3;
                v92 = objc_opt_class();
                v93 = NSStringFromClass(v92);
                v94 = NSStringFromSelector(v39);
                *buf = 138413314;
                v106 = a3;
                v107 = 2112;
                v108 = v93;
                v109 = 2112;
                *v110 = v94;
                *&v110[8] = 1024;
                *&v110[10] = v91;
                *&v110[14] = 2112;
                *&v110[16] = v11;
                _os_log_error_impl(&dword_2304B3000, v46, OS_LOG_TYPE_ERROR, "#SafetyCache,Receiver,sessionID:%@,%@,%@,unknown or unhandled toState:%d for fromState:%@", buf, 0x30u);

                LODWORD(a3) = v91;
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
        v49 = [(SMReceiverCacheManager *)v7 receiverContact];
        v50 = [v49 sessionStatus];
        [v50 setLastUpdateDate:v48];

        v51 = [(SMReceiverCacheManager *)v7 delegate];
        v52 = [(SMReceiverCacheManager *)v7 sessionID];
        v53 = [(SMReceiverCacheManager *)v7 sessionStatus];
        [v51 sessionStatusChanged:v52 status:v53];

        v54 = [(SMReceiverCacheManager *)v7 receiverContact];
        v55 = [v54 sessionStatus];
        v56 = [v55 sessionState];

        if (v56 != 6)
        {
          [(SMReceiverCacheManager *)v7 updateReceiverContactInStore];
        }

        goto LABEL_108;
      }

      if (v10 == 1)
      {
        if (a3 > 5)
        {
          if (a3 <= 7)
          {
            if (a3 == 6)
            {
              [(SMReceiverCacheManager *)v7 transitionFromInitializingToCleanupDueToEvent:a4];
            }

            else
            {
              [(SMReceiverCacheManager *)v7 transitionFromInitializingToMissingSessionInfoDueToEvent:a4];
            }

            goto LABEL_101;
          }

          if (a3 == 8)
          {
            [(SMReceiverCacheManager *)v7 transitionFromInitializingToMissingKeyReleaseInfoDueToEvent:a4];
            goto LABEL_101;
          }

          if (a3 == 9)
          {
            [(SMReceiverCacheManager *)v7 transitionFromInitializingToCacheDownloadFailedDueToEvent:a4];
            goto LABEL_101;
          }
        }

        else
        {
          if (a3 > 3)
          {
            if (a3 == 4)
            {
              [(SMReceiverCacheManager *)v7 transitionFromInitializingToCacheReleasedDueToEvent:a4];
            }

            else
            {
              [(SMReceiverCacheManager *)v7 transitionFromInitializingToCachePersistenceDueToEvent:a4];
            }

            goto LABEL_101;
          }

          if (a3 == 2)
          {
            [(SMReceiverCacheManager *)v7 transitionFromInitializingToActiveDueToEvent:a4];
            goto LABEL_101;
          }

          if (a3 == 3)
          {
            [(SMReceiverCacheManager *)v7 transitionFromInitializingToTriggeredDueToEvent:a4];
            goto LABEL_101;
          }
        }

        v39 = a2;
        v57 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
        {
          [(SMReceiverCacheManager *)v7 sessionID];
          a3 = v99 = a3;
          v100 = objc_opt_class();
          v101 = NSStringFromClass(v100);
          v102 = NSStringFromSelector(v39);
          *buf = 138413314;
          v106 = a3;
          v107 = 2112;
          v108 = v101;
          v109 = 2112;
          *v110 = v102;
          *&v110[8] = 1024;
          *&v110[10] = v99;
          *&v110[14] = 2112;
          *&v110[16] = v11;
          _os_log_error_impl(&dword_2304B3000, v57, OS_LOG_TYPE_ERROR, "#SafetyCache,Receiver,sessionID:%@,%@,%@,unknown or unhandled toState:%d for fromState:%@", buf, 0x30u);

          LODWORD(a3) = v99;
        }

        v41 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (!os_log_type_enabled(v41, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_107;
        }

        goto LABEL_106;
      }

      if (v10 == 2)
      {
        switch(a3)
        {
          case 8:
            [(SMReceiverCacheManager *)v7 transitionFromActiveToMissingKeyReleaseInfoDueToEvent:a4];
            break;
          case 6:
            [(SMReceiverCacheManager *)v7 transitionFromActiveToCleanupDueToEvent:a4];
            break;
          case 3:
            [(SMReceiverCacheManager *)v7 transitionFromActiveToTriggeredDueToEvent:a4];
            break;
          default:
            v39 = a2;
            v45 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
            if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
            {
              [(SMReceiverCacheManager *)v7 sessionID];
              a3 = v87 = a3;
              v88 = objc_opt_class();
              v89 = NSStringFromClass(v88);
              v90 = NSStringFromSelector(v39);
              *buf = 138413314;
              v106 = a3;
              v107 = 2112;
              v108 = v89;
              v109 = 2112;
              *v110 = v90;
              *&v110[8] = 1024;
              *&v110[10] = v87;
              *&v110[14] = 2112;
              *&v110[16] = v11;
              _os_log_error_impl(&dword_2304B3000, v45, OS_LOG_TYPE_ERROR, "#SafetyCache,Receiver,sessionID:%@,%@,%@,unknown or unhandled toState:%d for fromState:%@", buf, 0x30u);

              LODWORD(a3) = v87;
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
      if (v10 <= 6)
      {
        if (v10 == 5)
        {
          if (a3 != 6)
          {
            v39 = a2;
            v40 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
            if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
            {
              [(SMReceiverCacheManager *)v7 sessionID];
              a3 = v71 = a3;
              v72 = objc_opt_class();
              v73 = NSStringFromClass(v72);
              v74 = NSStringFromSelector(v39);
              *buf = 138413314;
              v106 = a3;
              v107 = 2112;
              v108 = v73;
              v109 = 2112;
              *v110 = v74;
              *&v110[8] = 1024;
              *&v110[10] = v71;
              *&v110[14] = 2112;
              *&v110[16] = v11;
              _os_log_error_impl(&dword_2304B3000, v40, OS_LOG_TYPE_ERROR, "#SafetyCache,Receiver,sessionID:%@,%@,%@,unknown or unhandled toState:%d for fromState:%@", buf, 0x30u);

              LODWORD(a3) = v71;
            }

            v41 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
            if (!os_log_type_enabled(v41, OS_LOG_TYPE_FAULT))
            {
              goto LABEL_107;
            }

            goto LABEL_106;
          }

          [(SMReceiverCacheManager *)v7 transitionFromCachePersistenceToCleanupDueToEvent:a4];
          goto LABEL_101;
        }

        v28 = a2;
        v29 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          v62 = [(SMReceiverCacheManager *)v7 sessionID];
          v63 = objc_opt_class();
          v64 = NSStringFromClass(v63);
          v65 = NSStringFromSelector(v28);
          *buf = 138412802;
          v106 = v62;
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
        v106 = v32;
        v107 = 2112;
        v108 = v33;
        v34 = "#SafetyCache,Receiver,%@,%@,tried to transition out of Cleanup state";
        v35 = v30;
        v36 = 22;
LABEL_111:
        _os_log_fault_impl(&dword_2304B3000, v35, OS_LOG_TYPE_FAULT, v34, buf, v36);

        goto LABEL_51;
      }

      switch(v10)
      {
        case 7:
          if (a3 == 3)
          {
            [(SMReceiverCacheManager *)v7 transitionFromMissingSessionInfoToTriggeredDueToEvent:a4];
          }

          else
          {
            if (a3 != 6)
            {
              v39 = a2;
              v43 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
              if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
              {
                [(SMReceiverCacheManager *)v7 sessionID];
                a3 = v79 = a3;
                v80 = objc_opt_class();
                v81 = NSStringFromClass(v80);
                v82 = NSStringFromSelector(v39);
                *buf = 138413314;
                v106 = a3;
                v107 = 2112;
                v108 = v81;
                v109 = 2112;
                *v110 = v82;
                *&v110[8] = 1024;
                *&v110[10] = v79;
                *&v110[14] = 2112;
                *&v110[16] = v11;
                _os_log_error_impl(&dword_2304B3000, v43, OS_LOG_TYPE_ERROR, "#SafetyCache,Receiver,sessionID:%@,%@,%@,unknown or unhandled toState:%d for fromState:%@", buf, 0x30u);

                LODWORD(a3) = v79;
              }

              v41 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
              if (!os_log_type_enabled(v41, OS_LOG_TYPE_FAULT))
              {
                goto LABEL_107;
              }

              goto LABEL_106;
            }

            [(SMReceiverCacheManager *)v7 transitionFromMissingSessionInfoToCleanupDueToEvent:a4];
          }

          goto LABEL_101;
        case 8:
          if (a3 == 3)
          {
            [(SMReceiverCacheManager *)v7 transitionFromMissingKeyReleaseInfoToTriggeredDueToEvent:a4];
          }

          else
          {
            if (a3 != 6)
            {
              v39 = a2;
              v44 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
              if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
              {
                [(SMReceiverCacheManager *)v7 sessionID];
                a3 = v83 = a3;
                v84 = objc_opt_class();
                v85 = NSStringFromClass(v84);
                v86 = NSStringFromSelector(v39);
                *buf = 138413314;
                v106 = a3;
                v107 = 2112;
                v108 = v85;
                v109 = 2112;
                *v110 = v86;
                *&v110[8] = 1024;
                *&v110[10] = v83;
                *&v110[14] = 2112;
                *&v110[16] = v11;
                _os_log_error_impl(&dword_2304B3000, v44, OS_LOG_TYPE_ERROR, "#SafetyCache,Receiver,sessionID:%@,%@,%@,unknown or unhandled toState:%d for fromState:%@", buf, 0x30u);

                LODWORD(a3) = v83;
              }

              v41 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
              if (!os_log_type_enabled(v41, OS_LOG_TYPE_FAULT))
              {
                goto LABEL_107;
              }

              goto LABEL_106;
            }

            [(SMReceiverCacheManager *)v7 transitionFromMissingKeyReleaseInfoToCleanupDueToEvent:a4];
          }

          goto LABEL_101;
        case 9:
          switch(a3)
          {
            case 6:
              [(SMReceiverCacheManager *)v7 transitionFromCacheDownloadFailedToCleanupDueToEvent:a4];
              break;
            case 5:
              [(SMReceiverCacheManager *)v7 transitionFromCacheDownloadFailedToCachePersistenceDueToEvent:a4];
              break;
            case 4:
              [(SMReceiverCacheManager *)v7 transitionFromCacheDownloadFailedToCacheReleasedDueToEvent:a4];
              goto LABEL_101;
            default:
              v39 = a2;
              v47 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
              if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
              {
                [(SMReceiverCacheManager *)v7 sessionID];
                a3 = v95 = a3;
                v96 = objc_opt_class();
                v97 = NSStringFromClass(v96);
                v98 = NSStringFromSelector(v39);
                *buf = 138413314;
                v106 = a3;
                v107 = 2112;
                v108 = v97;
                v109 = 2112;
                *v110 = v98;
                *&v110[8] = 1024;
                *&v110[10] = v95;
                *&v110[14] = 2112;
                *&v110[16] = v11;
                _os_log_error_impl(&dword_2304B3000, v47, OS_LOG_TYPE_ERROR, "#SafetyCache,Receiver,sessionID:%@,%@,%@,unknown or unhandled toState:%d for fromState:%@", buf, 0x30u);

                LODWORD(a3) = v95;
              }

              v41 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
              if (!os_log_type_enabled(v41, OS_LOG_TYPE_FAULT))
              {
                goto LABEL_107;
              }

LABEL_106:
              v58 = objc_opt_class();
              NSStringFromClass(v58);
              v60 = v59 = a3;
              v61 = NSStringFromSelector(v39);
              *buf = 138413058;
              v106 = v60;
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
      v66 = [(SMReceiverCacheManager *)v7 sessionID];
      v67 = objc_opt_class();
      v68 = NSStringFromClass(v67);
      v69 = NSStringFromSelector(v37);
      *buf = 138413058;
      v106 = v66;
      v107 = 2112;
      v108 = v68;
      v109 = 2112;
      *v110 = v69;
      *&v110[8] = 1024;
      *&v110[10] = v10;
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
    v106 = v32;
    v107 = 2112;
    v108 = v33;
    v109 = 1024;
    *v110 = v10;
    v34 = "#SafetyCache,Receiver,%@,%@,unknown or unhandled fromState:%d";
    v35 = v30;
    v36 = 28;
    goto LABEL_111;
  }

  v12 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v13 = [(SMReceiverCacheManager *)v7 sessionID];
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    v16 = NSStringFromSelector(a2);
    *buf = 138413058;
    v106 = v13;
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

- (void)transitionFromInitializingToActiveDueToEvent:(int64_t)a3
{
  v5 = [(SMReceiverCacheManager *)self receiverContact];
  v6 = [v5 sessionStatus];
  [v6 setSessionState:2];

  [(SMReceiverCacheManager *)self acceptShareInvitation:a3];
}

- (void)transitionFromInitializingToTriggeredDueToEvent:(int64_t)a3
{
  v5 = [(SMReceiverCacheManager *)self receiverContact];
  v6 = [v5 sessionStatus];
  [v6 setSessionState:3];

  [(SMReceiverCacheManager *)self acceptShareInvitation:a3];
}

- (void)transitionFromInitializingToCacheReleasedDueToEvent:(int64_t)a3
{
  v5 = [(SMReceiverCacheManager *)self receiverContact];
  v6 = [v5 sessionStatus];
  [v6 setSessionState:4];

  [(SMReceiverCacheManager *)self fetchSafetyCacheData:a3];
}

- (void)transitionFromInitializingToCacheDownloadFailedDueToEvent:(int64_t)a3
{
  v4 = [(SMReceiverCacheManager *)self receiverContact];
  v5 = [v4 sessionStatus];
  [v5 setSessionState:4];

  [(SMReceiverCacheManager *)self fetchSafetyCacheData:15];
}

- (void)transitionFromInitializingToCachePersistenceDueToEvent:(int64_t)a3
{
  v4 = [(SMReceiverCacheManager *)self receiverContact];
  v5 = [v4 sessionStatus];
  [v5 setSessionState:5];

  [(SMReceiverCacheManager *)self cachePersistenceStartTimer];
}

- (void)transitionFromInitializingToCleanupDueToEvent:(int64_t)a3
{
  v4 = [(SMReceiverCacheManager *)self receiverContact];
  v5 = [v4 sessionStatus];
  [v5 setSessionState:6];

  [(SMReceiverCacheManager *)self deleteReceiverContactFromStore:2];
}

- (void)transitionFromActiveToTriggeredDueToEvent:(int64_t)a3
{
  v5 = [(SMReceiverCacheManager *)self receiverContact];
  v6 = [v5 sessionStatus];
  [v6 setSessionState:3];

  [(SMReceiverCacheManager *)self acceptShareInvitation:a3];
}

- (void)transitionFromInitializingToMissingSessionInfoDueToEvent:(int64_t)a3
{
  v49 = *MEMORY[0x277D85DE8];
  v8 = [(SMReceiverCacheManager *)self receiverContact];
  v9 = [v8 sessionStatus];
  v10 = [v9 sessionStartInfoRequestCount];
  if (v10 < 1)
  {
    v37 = a2;
  }

  else
  {
    v3 = [(SMReceiverCacheManager *)self receiverContact];
    v4 = [v3 sessionStatus];
    v5 = [v4 lastSessionStartInfoRequestDate];
    [v5 timeIntervalSinceNow];
    if (v11 > -60.0)
    {

LABEL_9:
      v16 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = [(SMReceiverCacheManager *)self sessionID];
        v18 = objc_opt_class();
        v19 = NSStringFromClass(v18);
        v20 = NSStringFromSelector(a2);
        *buf = 138412802;
        v44 = v17;
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

  v12 = [(SMReceiverCacheManager *)self receiverContact];
  v13 = [v12 sessionStatus];
  v14 = [v13 sessionStartInfoRequestCount];

  if (v10 >= 1)
  {
  }

  v15 = v14 <= 5;
  a2 = v37;
  if (!v15)
  {
    goto LABEL_9;
  }

  v21 = [(SMReceiverCacheManager *)self receiverContact];
  v22 = [v21 sessionStatus];
  [v22 setSessionState:7];

  v23 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = [(SMReceiverCacheManager *)self sessionID];
    v25 = objc_opt_class();
    v26 = NSStringFromClass(v25);
    v27 = NSStringFromSelector(v37);
    *buf = 138412802;
    v44 = v24;
    v45 = 2112;
    v46 = v26;
    v47 = 2112;
    v48 = v27;
    _os_log_impl(&dword_2304B3000, v23, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Receiver,sessionID:%@,%@,%@,send sessionStartInfoRequestMessage", buf, 0x20u);
  }

  v28 = objc_alloc(MEMORY[0x277D4ABE0]);
  v29 = [(SMReceiverCacheManager *)self sessionID];
  v30 = [v28 initWithSessionID:v29];

  v31 = [(SMReceiverCacheManager *)self messagingService];
  v32 = objc_alloc(MEMORY[0x277D4AA98]);
  v33 = [(SMReceiverCacheManager *)self sessionStatus];
  v34 = [v33 initiatorHandle];
  v42 = v34;
  v35 = [MEMORY[0x277CBEA60] arrayWithObjects:&v42 count:1];
  v36 = [v32 initWithReceiverHandles:v35 identifier:0 displayName:0];
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __83__SMReceiverCacheManager_transitionFromInitializingToMissingSessionInfoDueToEvent___block_invoke;
  v38[3] = &unk_2788CD048;
  v39 = v30;
  v40 = self;
  v41 = v37;
  v16 = v30;
  [v31 sendIDSMessage:v16 toConversation:v36 completion:v38];

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

- (void)transitionFromInitializingToMissingKeyReleaseInfoDueToEvent:(int64_t)a3
{
  v4 = [(SMReceiverCacheManager *)self receiverContact];
  v5 = [v4 sessionStatus];
  [v5 setSessionState:8];

  [(SMReceiverCacheManager *)self requestMissingKeyReleaseInfo];
}

- (void)transitionFromActiveToMissingKeyReleaseInfoDueToEvent:(int64_t)a3
{
  v4 = [(SMReceiverCacheManager *)self receiverContact];
  v5 = [v4 sessionStatus];
  [v5 setSessionState:8];

  [(SMReceiverCacheManager *)self requestMissingKeyReleaseInfo];
}

- (void)requestMissingKeyReleaseInfo
{
  v46 = *MEMORY[0x277D85DE8];
  v7 = [(SMReceiverCacheManager *)self receiverContact];
  v8 = [v7 sessionStatus];
  v9 = [v8 keyReleaseInfoRequestCount];
  if (v9 < 1)
  {
    v34 = a2;
  }

  else
  {
    v2 = [(SMReceiverCacheManager *)self receiverContact];
    v3 = [v2 sessionStatus];
    v4 = [v3 lastKeyReleaseInfoRequestDate];
    [v4 timeIntervalSinceNow];
    if (v10 > -60.0)
    {

LABEL_9:
      v15 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = [(SMReceiverCacheManager *)self sessionID];
        v17 = objc_opt_class();
        v18 = NSStringFromClass(v17);
        v19 = NSStringFromSelector(a2);
        *buf = 138412802;
        v41 = v16;
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

  v11 = [(SMReceiverCacheManager *)self receiverContact];
  v12 = [v11 sessionStatus];
  v13 = [v12 keyReleaseInfoRequestCount];

  if (v9 >= 1)
  {
  }

  v14 = v13 <= 5;
  a2 = v34;
  if (!v14)
  {
    goto LABEL_9;
  }

  v20 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = [(SMReceiverCacheManager *)self sessionID];
    v22 = objc_opt_class();
    v23 = NSStringFromClass(v22);
    v24 = NSStringFromSelector(v34);
    *buf = 138412802;
    v41 = v21;
    v42 = 2112;
    v43 = v23;
    v44 = 2112;
    v45 = v24;
    _os_log_impl(&dword_2304B3000, v20, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Receiver,sessionID:%@,%@,%@,send keyReleaseInfoRequestMessage", buf, 0x20u);
  }

  v25 = objc_alloc(MEMORY[0x277D4AB08]);
  v26 = [(SMReceiverCacheManager *)self sessionID];
  v27 = [v25 initWithSessionID:v26];

  v28 = [(SMReceiverCacheManager *)self messagingService];
  v29 = objc_alloc(MEMORY[0x277D4AA98]);
  v30 = [(SMReceiverCacheManager *)self sessionStatus];
  v31 = [v30 initiatorHandle];
  v39 = v31;
  v32 = [MEMORY[0x277CBEA60] arrayWithObjects:&v39 count:1];
  v33 = [v29 initWithReceiverHandles:v32 identifier:0 displayName:0];
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __54__SMReceiverCacheManager_requestMissingKeyReleaseInfo__block_invoke;
  v35[3] = &unk_2788CD048;
  v36 = v27;
  v37 = self;
  v38 = v34;
  v15 = v27;
  [v28 sendIDSMessage:v15 toConversation:v33 completion:v35];

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

- (void)transitionFromActiveToCleanupDueToEvent:(int64_t)a3
{
  v4 = [(SMReceiverCacheManager *)self receiverContact];
  v5 = [v4 sessionStatus];
  [v5 setSessionState:6];

  [(SMReceiverCacheManager *)self deleteReceiverContactFromStore:2];
}

- (void)transitionFromTriggeredToCacheReleasedDueToEvent:(int64_t)a3
{
  v5 = [(SMReceiverCacheManager *)self receiverContact];
  v6 = [v5 sessionStatus];
  [v6 setSessionState:4];

  [(SMReceiverCacheManager *)self fetchSafetyCacheData:a3];
}

- (void)transitionFromCacheReleasedToCacheDownloadFailedDueToEvent:(int64_t)a3
{
  v4 = [(SMReceiverCacheManager *)self receiverContact];
  v3 = [v4 sessionStatus];
  [v3 setSessionState:9];
}

- (void)transitionFromCacheDownloadFailedToCacheReleasedDueToEvent:(int64_t)a3
{
  v5 = [(SMReceiverCacheManager *)self receiverContact];
  v6 = [v5 sessionStatus];
  [v6 setSessionState:4];

  [(SMReceiverCacheManager *)self fetchSafetyCacheData:a3];
}

- (void)transitionFromCacheDownloadFailedToCachePersistenceDueToEvent:(int64_t)a3
{
  v4 = [(SMReceiverCacheManager *)self receiverContact];
  v5 = [v4 sessionStatus];
  [v5 setSessionState:5];

  [(SMReceiverCacheManager *)self cachePersistenceStartTimer];
}

- (void)transitionFromCacheDownloadFailedToCleanupDueToEvent:(int64_t)a3
{
  v4 = [(SMReceiverCacheManager *)self receiverContact];
  v5 = [v4 sessionStatus];
  [v5 setSessionState:6];

  [(SMReceiverCacheManager *)self deleteReceiverContactFromStore:2];
}

- (void)transitionFromTriggeredToCleanupDueToEvent:(int64_t)a3
{
  v4 = [(SMReceiverCacheManager *)self receiverContact];
  v5 = [v4 sessionStatus];
  [v5 setSessionState:6];

  [(SMReceiverCacheManager *)self deleteReceiverContactFromStore:2];
}

- (void)transitionFromCacheReleasedToCachePersistenceDueToEvent:(int64_t)a3
{
  v4 = [(SMReceiverCacheManager *)self receiverContact];
  v5 = [v4 sessionStatus];
  [v5 setSessionState:5];

  [(SMReceiverCacheManager *)self cachePersistenceStartTimer];
}

- (void)transitionFromCacheReleasedToCleanupDueToEvent:(int64_t)a3
{
  v4 = [(SMReceiverCacheManager *)self receiverContact];
  v5 = [v4 sessionStatus];
  [v5 setSessionState:6];

  [(SMReceiverCacheManager *)self deleteReceiverContactFromStore:2];
}

- (void)transitionFromCachePersistenceToCleanupDueToEvent:(int64_t)a3
{
  v4 = [(SMReceiverCacheManager *)self receiverContact];
  v5 = [v4 sessionStatus];
  [v5 setSessionState:6];

  [(SMReceiverCacheManager *)self cachePersistenceStopTimer];

  [(SMReceiverCacheManager *)self deleteReceiverContactFromStore:2];
}

- (void)transitionFromMissingSessionInfoToTriggeredDueToEvent:(int64_t)a3
{
  v5 = [(SMReceiverCacheManager *)self receiverContact];
  v6 = [v5 sessionStatus];
  [v6 setSessionState:3];

  [(SMReceiverCacheManager *)self acceptShareInvitation:a3];
}

- (void)transitionFromMissingSessionInfoToCleanupDueToEvent:(int64_t)a3
{
  v4 = [(SMReceiverCacheManager *)self receiverContact];
  v5 = [v4 sessionStatus];
  [v5 setSessionState:6];

  [(SMReceiverCacheManager *)self deleteReceiverContactFromStore:2];
}

- (void)transitionFromMissingKeyReleaseInfoToTriggeredDueToEvent:(int64_t)a3
{
  v5 = [(SMReceiverCacheManager *)self receiverContact];
  v6 = [v5 sessionStatus];
  [v6 setSessionState:3];

  [(SMReceiverCacheManager *)self acceptShareInvitation:a3];
}

- (void)transitionFromMissingKeyReleaseInfoToCleanupDueToEvent:(int64_t)a3
{
  v4 = [(SMReceiverCacheManager *)self receiverContact];
  v5 = [v4 sessionStatus];
  [v5 setSessionState:6];

  [(SMReceiverCacheManager *)self deleteReceiverContactFromStore:2];
}

- (void)cachePersistenceStartTimer
{
  v49 = *MEMORY[0x277D85DE8];
  [(SMReceiverCacheManager *)self cachePersistenceStopTimer];
  v4 = [(SMReceiverCacheManager *)self getCachePersistenceAlarmDate];
  [v4 timeIntervalSinceNow];
  if (v5 <= 0.0)
  {
    v24 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = [(SMReceiverCacheManager *)self sessionID];
      v26 = objc_opt_class();
      v27 = NSStringFromClass(v26);
      v28 = NSStringFromSelector(a2);
      *buf = 138412802;
      v42 = v25;
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
    v8 = [(SMReceiverCacheManager *)self sessionID];
    v9 = MEMORY[0x277CCACA8];
    v10 = [(SMReceiverCacheManager *)self sessionID];
    v11 = [v9 stringWithFormat:@"%@.%@", @"com.apple.routined.SMReceiverCacheManager.cachePersistenceTimerIdentifierBase", v10];

    v12 = [RTXPCTimerAlarm alloc];
    v13 = [(SMReceiverCacheManager *)self queue];
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __52__SMReceiverCacheManager_cachePersistenceStartTimer__block_invoke;
    v36[3] = &unk_2788CD1F8;
    objc_copyWeak(v39, &location);
    v14 = v8;
    v37 = v14;
    v15 = v7;
    v38 = v15;
    v39[1] = a2;
    v16 = [(RTXPCTimerAlarm *)v12 initWithIdentifier:v11 queue:v13 handler:v36];
    [(SMReceiverCacheManager *)self setCachePersistenceTimerAlarm:v16];

    v17 = [(SMReceiverCacheManager *)self cachePersistenceTimerAlarm];
    v35 = 0;
    [v17 fireWithDate:v4 error:&v35];
    v18 = v35;

    if (v18)
    {
      v19 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v33 = [(SMReceiverCacheManager *)self sessionID];
        v20 = objc_opt_class();
        v21 = NSStringFromClass(v20);
        v22 = NSStringFromSelector(a2);
        v23 = [v18 localizedDescription];
        *buf = 138413058;
        v42 = v33;
        v43 = 2112;
        v44 = v21;
        v45 = 2112;
        v46 = v22;
        v47 = 2112;
        v48 = v23;
        _os_log_error_impl(&dword_2304B3000, v19, OS_LOG_TYPE_ERROR, "#SafetyCache,Receiver,sessionID:%@,%@,%@,cachePersistenceTimerAlarm fireWithDate hit error: %@", buf, 0x2Au);
      }
    }

    else
    {
      v19 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v34 = [(SMReceiverCacheManager *)self sessionID];
        v29 = objc_opt_class();
        v30 = NSStringFromClass(v29);
        v31 = NSStringFromSelector(a2);
        v32 = [v4 stringFromDate];
        *buf = 138413058;
        v42 = v34;
        v43 = 2112;
        v44 = v30;
        v45 = 2112;
        v46 = v31;
        v47 = 2112;
        v48 = v32;
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
  v3 = [(SMReceiverCacheManager *)self receiverContact];
  v4 = [v3 sessionStatus];
  v5 = [v4 cacheExpiryDate];

  if (!v5)
  {
    v6 = MEMORY[0x277CBEAA8];
    [(SMReceiverCacheManager *)self cachePersistenceTime];
    v7 = [v6 dateWithTimeIntervalSinceNow:?];
    v8 = [(SMReceiverCacheManager *)self receiverContact];
    v9 = [v8 sessionStatus];
    [v9 setCacheExpiryDate:v7];
  }

  v10 = [(SMReceiverCacheManager *)self receiverContact];
  v11 = [v10 sessionStatus];
  v12 = [v11 cacheExpiryDate];

  return v12;
}

- (void)cachePersistenceStopTimer
{
  v3 = [(SMReceiverCacheManager *)self cachePersistenceTimerAlarm];

  if (v3)
  {
    v4 = [(SMReceiverCacheManager *)self cachePersistenceTimerAlarm];
    [v4 invalidate];

    [(SMReceiverCacheManager *)self setCachePersistenceTimerAlarm:0];
  }
}

- (void)_setupCloudKitFunction
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = +[SMCloudKitZone getContainer];
  container = self->_container;
  self->_container = v3;

  v5 = [(SMReceiverCacheManager *)self defaultsManager];
  v6 = [v5 objectForKey:@"RTDefaultsSafetyCacheUseDevEnvForCloudKitFunction"];
  v7 = [v6 BOOLValue];

  v8 = v7;
  v9 = objc_alloc(MEMORY[0x277D4AA80]);
  v10 = [(SMReceiverCacheManager *)self queue];
  v11 = [v9 initWithEnvironment:v8 version:0 queue:v10];
  cloudKitFunction = self->_cloudKitFunction;
  self->_cloudKitFunction = v11;

  v13 = [(SMReceiverCacheManager *)self defaultsManager];
  v14 = [v13 objectForKey:@"RTDefaultsSafetyCachePersistenceTimeKey" value:&unk_2845A1D28];
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

- (void)acceptShareInvitation:(int64_t)a3
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
      v6 = [(SMReceiverCacheManager *)self sessionID];
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = NSStringFromSelector(a2);
      *buf = 138412802;
      *&buf[4] = v6;
      *&buf[12] = 2112;
      *&buf[14] = v8;
      *&buf[22] = 2112;
      v56 = v9;
      _os_log_impl(&dword_2304B3000, oslog, OS_LOG_TYPE_INFO, "#SafetyCache,Receiver,sessionID:%@,%@,%@,zone share accept operation already in progress", buf, 0x20u);
    }
  }

  else
  {
    v10 = [(SMReceiverCacheManager *)self receiverContact];
    v11 = [v10 sessionStatus];
    v12 = [v11 zoneShareAccepted];

    if (v12)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        return;
      }

      oslog = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
      {
        v13 = [(SMReceiverCacheManager *)self sessionID];
        v14 = objc_opt_class();
        v15 = NSStringFromClass(v14);
        v16 = NSStringFromSelector(a2);
        *buf = 138412802;
        *&buf[4] = v13;
        *&buf[12] = 2112;
        *&buf[14] = v15;
        *&buf[22] = 2112;
        v56 = v16;
        _os_log_impl(&dword_2304B3000, oslog, OS_LOG_TYPE_INFO, "#SafetyCache,Receiver,sessionID:%@,%@,%@,zone share already accepted", buf, 0x20u);
      }
    }

    else
    {
      oslog = [objc_opt_class() receiverEventToString:a3];
      v17 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = [(SMReceiverCacheManager *)self sessionID];
        v19 = objc_opt_class();
        v20 = NSStringFromClass(v19);
        v21 = NSStringFromSelector(a2);
        *buf = 138413058;
        *&buf[4] = v18;
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
      v45 = [(SMReceiverCacheManager *)self sessionID];
      v22 = objc_opt_class();
      v44 = NSStringFromClass(v22);
      v23 = objc_alloc(MEMORY[0x277CBC2C0]);
      v24 = [(SMReceiverCacheManager *)self receiverContact];
      v25 = [v24 sharingInvitationData];
      v26 = [(SMReceiverCacheManager *)self receiverContact];
      v27 = [v26 shareURL];
      v28 = [(SMReceiverCacheManager *)self receiverContact];
      v29 = [v28 participantID];
      v46 = [v23 initWithSharingInvitationData:v25 shareURL:v27 participantID:v29];

      v30 = [MEMORY[0x277CBEAA8] now];
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v56 = __Block_byref_object_copy__104;
      *&v57 = __Block_byref_object_dispose__104;
      *(&v57 + 1) = objc_alloc_init(MEMORY[0x277CBEB38]);
      v31 = *(*&buf[8] + 40);
      v32 = MEMORY[0x277CCABB0];
      v33 = [(SMReceiverCacheManager *)self sessionStatus];
      v34 = [v32 numberWithInteger:{objc_msgSend(v33, "sessionState")}];
      [v31 setValue:v34 forKey:@"receiverSessionState"];

      v35 = *(*&buf[8] + 40);
      v36 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
      [v35 setValue:v36 forKey:@"responseToEvent"];

      v37 = [(SMReceiverCacheManager *)self sessionID];
      v38 = [(SMReceiverCacheManager *)self container];
      v39 = [(SMReceiverCacheManager *)self queue];
      v40 = [[SMCloudKitQosOptions alloc] initWithDefaultQos:1 masqueradeBundleID:0 xpcActivity:0];
      v48[0] = MEMORY[0x277D85DD0];
      v48[1] = 3221225472;
      v48[2] = __48__SMReceiverCacheManager_acceptShareInvitation___block_invoke;
      v48[3] = &unk_2788CDAA8;
      v52 = buf;
      v41 = v30;
      v49 = v41;
      objc_copyWeak(v53, &location);
      v42 = v45;
      v50 = v42;
      v43 = v44;
      v51 = v43;
      v53[1] = a2;
      [SMCloudKitZone acceptShareWithInvitationToken:v46 sessionID:v37 container:v38 queue:v39 qos:v40 withCompletion:v48];

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

- (void)fetchSafetyCacheData:(int64_t)a3
{
  v79 = *MEMORY[0x277D85DE8];
  v6 = [(SMReceiverCacheManager *)self receiverContact];
  v7 = [v6 sessionStatus];
  [v7 setCacheDownloadError:0];

  v8 = [(SMReceiverCacheManager *)self receiverContact];
  v9 = [v8 sessionStatus];
  v10 = [v9 sessionState];

  if (v10 == 4)
  {
    v11 = [(SMReceiverCacheManager *)self receiverContact];
    v12 = [v11 sessionStatus];
    v13 = [v12 zoneShareAccepted];

    if (v13)
    {
      [(SMReceiverCacheManager *)self setSafetyCacheFetchPending:0];
      v65 = [MEMORY[0x277CBEAA8] now];
      objc_initWeak(&location, self);
      v14 = [(SMReceiverCacheManager *)self sessionID];
      v15 = objc_opt_class();
      v64 = NSStringFromClass(v15);
      v16 = [(SMReceiverCacheManager *)self receiverContact];
      v17 = [v16 allowReadToken];
      v18 = [v17 base64EncodedStringWithOptions:0];

      v66 = [objc_opt_class() receiverEventToString:a3];
      v19 = a3 == 15 || a3 == 6;
      if (a3 == 15 || a3 == 6)
      {
        [(SMReceiverCacheManager *)self startCacheDownloadTimeoutTimer];
      }

      v20 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = [(SMReceiverCacheManager *)self sessionID];
        v22 = objc_opt_class();
        v23 = NSStringFromClass(v22);
        v24 = NSStringFromSelector(a2);
        *buf = 138413058;
        *&buf[4] = v21;
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
      v26 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
      [v25 setValue:v26 forKey:@"responseToEvent"];

      v27 = *(*&buf[8] + 40);
      v28 = MEMORY[0x277CCABB0];
      v29 = [(SMReceiverCacheManager *)self receiverContact];
      v30 = [v29 allowReadToken];
      v31 = [v28 numberWithInt:v30 != 0];
      [v27 setValue:v31 forKey:@"tokenAvailable"];

      v32 = *(*&buf[8] + 40);
      v33 = MEMORY[0x277CCABB0];
      v34 = [(SMReceiverCacheManager *)self receiverContact];
      v35 = [v34 sessionStatus];
      v36 = [v33 numberWithInt:{objc_msgSend(v35, "triggerType") == 15}];
      [v32 setValue:v36 forKey:@"cacheReleasedViaScheduledSend"];

      v37 = [(SMReceiverCacheManager *)self cloudKitFunction];
      v38 = [v14 UUIDString];
      v67[0] = MEMORY[0x277D85DD0];
      v67[1] = 3221225472;
      v67[2] = __47__SMReceiverCacheManager_fetchSafetyCacheData___block_invoke;
      v67[3] = &unk_2788CDAD0;
      v39 = v65;
      v68 = v39;
      v72 = buf;
      objc_copyWeak(v73, &location);
      v40 = v14;
      v69 = v40;
      v41 = v64;
      v73[1] = a2;
      v70 = v41;
      v71 = self;
      v74 = v19;
      [v37 requestSafetyCacheRecordFromZone:v38 withToken:v18 completion:v67];

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
          v45 = [(SMReceiverCacheManager *)self sessionID];
          v46 = objc_opt_class();
          v47 = NSStringFromClass(v46);
          v48 = NSStringFromSelector(a2);
          *buf = 138412802;
          *&buf[4] = v45;
          *&buf[12] = 2112;
          *&buf[14] = v47;
          *&buf[22] = 2112;
          v77 = v48;
          _os_log_impl(&dword_2304B3000, v44, OS_LOG_TYPE_INFO, "#SafetyCache,Receiver,sessionID:%@,%@,%@,initiate zone share accept process", buf, 0x20u);
        }
      }

      [(SMReceiverCacheManager *)self setSafetyCacheFetchPending:1];
      [(SMReceiverCacheManager *)self acceptShareInvitation:a3];
    }
  }

  else
  {
    v42 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      v49 = [(SMReceiverCacheManager *)self sessionID];
      v50 = objc_opt_class();
      v51 = NSStringFromClass(v50);
      v52 = NSStringFromSelector(a2);
      v53 = MEMORY[0x277D4AB58];
      v54 = [(SMReceiverCacheManager *)self receiverContact];
      v55 = [v54 sessionStatus];
      v56 = [v53 convertSessionStateToString:{objc_msgSend(v55, "sessionState")}];
      *buf = 138413058;
      *&buf[4] = v49;
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
      v61 = [(SMReceiverCacheManager *)self receiverContact];
      v62 = [v61 sessionStatus];
      v63 = [v60 convertSessionStateToString:{objc_msgSend(v62, "sessionState")}];
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

- (void)decryptAndStoreSafetyCacheDataWithPhoneCacheData:(id)a3 watchCacheData:(id)a4 userInitiatedDownload:(BOOL)a5 metricsDict:(id *)a6
{
  v112 = a5;
  v130[1] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = objc_opt_new();
  v12 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  v114 = v9;
  if (v9)
  {
    v14 = v11;
    v15 = v10;
    if (v13)
    {
      v16 = [(SMReceiverCacheManager *)self sessionID];
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      v19 = NSStringFromSelector(a2);
      *buf = 138412802;
      v118 = v16;
      v119 = 2112;
      v120 = v18;
      v121 = 2112;
      v122 = v19;
      _os_log_impl(&dword_2304B3000, v12, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Receiver,sessionID:%@,%@,%@,decrypting phone safety cache data", buf, 0x20u);
    }

    v20 = [(SMReceiverCacheManager *)self receiverContact];
    v21 = [v20 safetyCacheKey];
    v22 = [(SMReceiverCacheManager *)self sessionID];
    v116 = 0;
    v23 = [SMCryptoUtilities decryptSafetyCache:v114 key:v21 sessionID:v22 role:@"Receiver" device:1 metricsDict:a6 hashString:&v116];
    v24 = v116;

    v25 = *a6;
    v26 = MEMORY[0x277CCABB0];
    v27 = [v23 workoutEvents];
    v28 = [v26 numberWithUnsignedInteger:{objc_msgSend(v27, "count")}];
    [v25 setValue:v28 forKey:@"phoneNumWorkoutEvents"];

    v29 = [v23 locationsDuringSession];
    v30 = [v29 count];

    v31 = [(SMReceiverCacheManager *)self receiverContact];
    v32 = [v31 maxLocationsInPhoneCacheTrace];

    if (v30 <= v32)
    {
      v33 = v32;
    }

    else
    {
      v33 = v30;
    }

    v34 = [(SMReceiverCacheManager *)self receiverContact];
    [v34 setMaxLocationsInPhoneCacheTrace:v33];

    v35 = [v23 workoutEvents];
    v36 = [v35 count];

    v37 = [(SMReceiverCacheManager *)self receiverContact];
    v38 = [v37 phoneMaxWorkoutEvents];

    if (v36 <= v38)
    {
      v39 = v38;
    }

    else
    {
      v39 = v36;
    }

    v40 = [(SMReceiverCacheManager *)self receiverContact];
    [v40 setPhoneMaxWorkoutEvents:v39];

    if (v23)
    {
      v41 = [(SMReceiverCacheManager *)self sessionID];
      v11 = v14;
      [v23 logCacheForSessionID:v41 role:@"Receiver" deviceType:@"phone" transaction:v14 hashString:v24];
    }

    else
    {
      v48 = MEMORY[0x277D4AA70];
      v41 = [(SMReceiverCacheManager *)self sessionID];
      v11 = v14;
      [v48 logNoCacheDataForSessionID:v41 role:@"Receiver" deviceType:@"phone" transaction:v14];
    }

    v10 = v15;
  }

  else
  {
    if (v13)
    {
      v42 = [(SMReceiverCacheManager *)self sessionID];
      v43 = objc_opt_class();
      v44 = NSStringFromClass(v43);
      NSStringFromSelector(a2);
      v46 = v45 = v11;
      *buf = 138412802;
      v118 = v42;
      v119 = 2112;
      v120 = v44;
      v121 = 2112;
      v122 = v46;
      _os_log_impl(&dword_2304B3000, v12, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Receiver,sessionID:%@,%@,%@,no phone safety cache data", buf, 0x20u);

      v11 = v45;
    }

    [*a6 setValue:&unk_28459EA90 forKey:@"phoneCacheDecryptionResult"];
    v47 = MEMORY[0x277D4AA70];
    v24 = [(SMReceiverCacheManager *)self sessionID];
    [v47 logNoCacheDataForSessionID:v24 role:@"Receiver" deviceType:@"phone" transaction:v11];
    v23 = 0;
  }

  v49 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  v50 = os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT);
  if (v10)
  {
    v111 = v11;
    if (v50)
    {
      v51 = [(SMReceiverCacheManager *)self sessionID];
      v52 = objc_opt_class();
      v53 = NSStringFromClass(v52);
      v54 = NSStringFromSelector(a2);
      *buf = 138412802;
      v118 = v51;
      v119 = 2112;
      v120 = v53;
      v121 = 2112;
      v122 = v54;
      _os_log_impl(&dword_2304B3000, v49, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Receiver,sessionID:%@,%@,%@,decrypting watch safety cache data", buf, 0x20u);
    }

    v55 = [(SMReceiverCacheManager *)self receiverContact];
    v56 = [v55 safetyCacheKey];
    v57 = [(SMReceiverCacheManager *)self sessionID];
    v115 = 0;
    v58 = v10;
    v59 = [SMCryptoUtilities decryptSafetyCache:v10 key:v56 sessionID:v57 role:@"Receiver" device:2 metricsDict:a6 hashString:&v115];
    v60 = v115;

    v61 = [v59 locationsDuringSession];
    v62 = [v61 count];

    v63 = [(SMReceiverCacheManager *)self receiverContact];
    v64 = [v63 maxLocationsInWatchCacheTrace];

    if (v62 <= v64)
    {
      v65 = v64;
    }

    else
    {
      v65 = v62;
    }

    v66 = [(SMReceiverCacheManager *)self receiverContact];
    [v66 setMaxLocationsInWatchCacheTrace:v65];

    v67 = *a6;
    v68 = MEMORY[0x277CCABB0];
    v69 = [v59 workoutEvents];
    v70 = [v68 numberWithUnsignedInteger:{objc_msgSend(v69, "count")}];
    [v67 setValue:v70 forKey:@"watchNumWorkoutEvents"];

    v71 = [v59 workoutEvents];
    v72 = [v71 count];

    v73 = [(SMReceiverCacheManager *)self receiverContact];
    v74 = [v73 watchMaxWorkoutEvents];

    if (v72 <= v74)
    {
      v75 = v74;
    }

    else
    {
      v75 = v72;
    }

    v76 = [(SMReceiverCacheManager *)self receiverContact];
    [v76 setWatchMaxWorkoutEvents:v75];

    if (v59)
    {
      v77 = [(SMReceiverCacheManager *)self sessionID];
      v11 = v111;
      [v59 logCacheForSessionID:v77 role:@"Receiver" deviceType:@"watch" transaction:v111 hashString:v60];
    }

    else
    {
      v84 = MEMORY[0x277D4AA70];
      v77 = [(SMReceiverCacheManager *)self sessionID];
      v11 = v111;
      [v84 logNoCacheDataForSessionID:v77 role:@"Receiver" deviceType:@"watch" transaction:v111];
    }

    [(SMReceiverCacheManager *)self updateReceiverContactInStore];
    v10 = v58;
  }

  else
  {
    if (v50)
    {
      v78 = [(SMReceiverCacheManager *)self sessionID];
      v79 = objc_opt_class();
      v80 = NSStringFromClass(v79);
      v81 = NSStringFromSelector(a2);
      *buf = 138412802;
      v118 = v78;
      v119 = 2112;
      v120 = v80;
      v121 = 2112;
      v122 = v81;
      _os_log_impl(&dword_2304B3000, v49, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Receiver,sessionID:%@,%@,%@,no watch safety cache data", buf, 0x20u);
    }

    [*a6 setValue:&unk_28459EA90 forKey:@"watchCacheDecryptionResult"];
    v82 = MEMORY[0x277D4AA70];
    v83 = [(SMReceiverCacheManager *)self sessionID];
    [v82 logNoCacheDataForSessionID:v83 role:@"Receiver" deviceType:@"watch" transaction:v11];

    [(SMReceiverCacheManager *)self updateReceiverContactInStore];
    if (!v114)
    {
      v100 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v100, OS_LOG_TYPE_ERROR))
      {
        v107 = [(SMReceiverCacheManager *)self sessionID];
        v108 = objc_opt_class();
        v109 = NSStringFromClass(v108);
        v110 = NSStringFromSelector(a2);
        *buf = 138412802;
        v118 = v107;
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
      v103 = [(SMReceiverCacheManager *)self sessionID];
      v104 = objc_opt_class();
      v105 = NSStringFromClass(v104);
      v106 = NSStringFromSelector(a2);
      *buf = 138412802;
      v118 = v103;
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
    [(SMReceiverCacheManager *)self onCacheDownloadResult:0 userInitiatedDownload:v112 withError:v102];

    goto LABEL_45;
  }

  if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
  {
    [(SMReceiverCacheManager *)self sessionID];
    v92 = v91 = v10;
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

    v10 = v91;
  }

  v96 = [(SMReceiverCacheManager *)self receiverContact];
  [v96 setPhoneCache:v23];

  v97 = [(SMReceiverCacheManager *)self receiverContact];
  [v97 setWatchCache:v59];

  v98 = [MEMORY[0x277CBEAA8] now];
  v99 = [(SMReceiverCacheManager *)self receiverContact];
  [v99 setSyncDate:v98];

  [(SMReceiverCacheManager *)self onCacheDownloadResult:1 userInitiatedDownload:v112 withError:0];
LABEL_45:
}

- (void)storeReceiverContactInStore:(unint64_t)a3
{
  v25 = *MEMORY[0x277D85DE8];
  if ([(SMReceiverCacheManager *)self receiverContactStoreInProgress])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v6 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = [(SMReceiverCacheManager *)self sessionID];
        v8 = objc_opt_class();
        v9 = NSStringFromClass(v8);
        v10 = NSStringFromSelector(a2);
        *buf = 138412802;
        v20 = v7;
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
      v12 = [(SMReceiverCacheManager *)self sessionID];
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      v15 = NSStringFromSelector(a2);
      *buf = 138412802;
      v20 = v12;
      v21 = 2112;
      v22 = v14;
      v23 = 2112;
      v24 = v15;
      _os_log_impl(&dword_2304B3000, v11, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Receiver,sessionID:%@,%@,%@,storing SMReceiverContact in store", buf, 0x20u);
    }

    [(SMReceiverCacheManager *)self setReceiverContactStoreInProgress:1];
    v16 = [(SMReceiverCacheManager *)self safetyCacheStore];
    v17 = [(SMReceiverCacheManager *)self receiverContact];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __54__SMReceiverCacheManager_storeReceiverContactInStore___block_invoke;
    v18[3] = &unk_2788CDAF8;
    v18[4] = self;
    v18[5] = a2;
    v18[6] = a3;
    [v16 storeReceiverContact:v17 handler:v18];
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
    v4 = [MEMORY[0x277CCAD78] UUID];
    v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [(SMReceiverCacheManager *)self sessionID];
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = NSStringFromSelector(a2);
      *buf = 138413058;
      v22 = v6;
      v23 = 2112;
      v24 = v8;
      v25 = 2112;
      v26 = v9;
      v27 = 2112;
      v28 = v4;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Receiver,sessionID:%@,%@,%@,updating SMReceiverContact in store,transaction,%@", buf, 0x2Au);
    }

    v10 = [(SMReceiverCacheManager *)self safetyCacheStore];
    v11 = [(SMReceiverCacheManager *)self receiverContact];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __54__SMReceiverCacheManager_updateReceiverContactInStore__block_invoke;
    v18[3] = &unk_2788C8A48;
    v19 = v4;
    v20 = a2;
    v18[4] = self;
    v12 = v4;
    [v10 updateReceiverContact:v11 handler:v18];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v13 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = [(SMReceiverCacheManager *)self sessionID];
        v15 = objc_opt_class();
        v16 = NSStringFromClass(v15);
        v17 = NSStringFromSelector(a2);
        *buf = 138412802;
        v22 = v14;
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

- (void)deleteReceiverContactFromStore:(unint64_t)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(SMReceiverCacheManager *)self sessionID];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = NSStringFromSelector(a2);
    v11 = [(SMReceiverCacheManager *)self receiverContact];
    v12 = [v11 identifier];
    *buf = 138413058;
    v17 = v7;
    v18 = 2112;
    v19 = v9;
    v20 = 2112;
    v21 = v10;
    v22 = 2112;
    v23 = v12;
    _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Receiver,sessionID:%@,%@,%@,deleting SMReceiverContact from store with identifier %@", buf, 0x2Au);
  }

  v13 = [(SMReceiverCacheManager *)self safetyCacheStore];
  v14 = [(SMReceiverCacheManager *)self receiverContact];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __57__SMReceiverCacheManager_deleteReceiverContactFromStore___block_invoke;
  v15[3] = &unk_2788CDAF8;
  v15[4] = self;
  v15[5] = a2;
  v15[6] = a3;
  [v13 removeReceiverContact:v14 handler:v15];
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

+ (id)receiverEventToString:(int64_t)a3
{
  if ((a3 - 1) > 0xE)
  {
    return @"Unknown";
  }

  else
  {
    return off_2788CDB88[a3 - 1];
  }
}

- (id)computeReceiverSessionMetrics
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [(SMReceiverCacheManager *)self receiverContact];
  v5 = [v4 sessionStatus];
  v6 = [v5 sessionStartDate];

  v7 = -1.0;
  v8 = -1.0;
  v9 = -1.0;
  if (v6)
  {
    v10 = [MEMORY[0x277CBEAA8] date];
    v11 = [(SMReceiverCacheManager *)self receiverContact];
    v12 = [v11 sessionStatus];
    v13 = [v12 sessionStartDate];
    [v10 timeIntervalSinceDate:v13];
    v8 = v14 / 60.0;

    v15 = [(SMReceiverCacheManager *)self receiverContact];
    v16 = [v15 sessionStatus];
    v17 = [v16 estimatedEndDate];

    if (v17)
    {
      v18 = [(SMReceiverCacheManager *)self receiverContact];
      v19 = [v18 sessionStatus];
      v20 = [v19 estimatedEndDate];
      v21 = [(SMReceiverCacheManager *)self receiverContact];
      v22 = [v21 sessionStatus];
      v23 = [v22 sessionStartDate];
      [v20 timeIntervalSinceDate:v23];
      v9 = v24 / 60.0;
    }
  }

  v25 = [MEMORY[0x277CCABB0] numberWithDouble:v8];
  [v3 setValue:v25 forKey:@"actualDuration"];

  v26 = [MEMORY[0x277CCABB0] numberWithDouble:v9];
  [v3 setValue:v26 forKey:@"expectedDuration"];

  v27 = MEMORY[0x277CCABB0];
  v28 = [(SMReceiverCacheManager *)self receiverContact];
  [v28 timeTillFirstSuccessfulCacheDownload];
  v29 = [v27 numberWithDouble:?];
  [v3 setValue:v29 forKey:@"cacheAge"];

  v30 = MEMORY[0x277CCABB0];
  v31 = [(SMReceiverCacheManager *)self receiverContact];
  v32 = [v30 numberWithLongLong:{objc_msgSend(v31, "numCacheDownloads")}];
  [v3 setValue:v32 forKey:@"cacheDownloadAttemptCount"];

  v33 = MEMORY[0x277CCABB0];
  v34 = [(SMReceiverCacheManager *)self receiverContact];
  v35 = [v33 numberWithLongLong:{objc_msgSend(v34, "numSuccessfulCacheDownloads")}];
  [v3 setValue:v35 forKey:@"cacheDownloadSuccessCount"];

  if (v8 > 0.0)
  {
    v36 = [(SMReceiverCacheManager *)self receiverContact];
    [v36 timeTillCacheRelease];
    v7 = v37 / v8 * 100.0;
  }

  v38 = [MEMORY[0x277CCABB0] numberWithDouble:v7];
  [v3 setValue:v38 forKey:@"triggerTimePercent"];

  v39 = MEMORY[0x277CCABB0];
  v40 = [(SMReceiverCacheManager *)self receiverContact];
  v41 = [v40 sessionStatus];
  v42 = [v39 numberWithUnsignedInteger:{objc_msgSend(v41, "sessionEndReason")}];
  [v3 setValue:v42 forKey:@"endReason"];

  v43 = MEMORY[0x277CCABB0];
  v44 = [(SMReceiverCacheManager *)self receiverContact];
  v45 = [v44 sessionStatus];
  v46 = [v43 numberWithInteger:{objc_msgSend(v45, "sessionState")}];
  [v3 setValue:v46 forKey:@"maxSessionState"];

  v47 = [(SMReceiverCacheManager *)self receiverContact];
  v48 = [v47 sessionStatus];
  v49 = [v48 sessionStartDate];

  if (v49)
  {
    v50 = [(SMReceiverCacheManager *)self receiverContact];
    v51 = [v50 sessionStatus];
    v52 = [v51 sessionStartDate];
    v53 = 6 * ([v52 hour] / 6uLL);
  }

  else
  {
    v53 = -1;
  }

  v54 = [MEMORY[0x277CCABB0] numberWithInteger:v53];
  [v3 setValue:v54 forKey:@"partOfDay"];

  v55 = MEMORY[0x277CCABB0];
  v56 = [(SMReceiverCacheManager *)self receiverContact];
  v57 = [v56 sessionStatus];
  v58 = [v55 numberWithUnsignedInteger:{objc_msgSend(v57, "sessionType")}];
  [v3 setValue:v58 forKey:@"sessionType"];

  v59 = MEMORY[0x277CCABB0];
  v60 = [(SMReceiverCacheManager *)self receiverContact];
  v61 = [v60 sessionStatus];
  v62 = [v59 numberWithUnsignedInteger:{objc_msgSend(v61, "triggerType")}];
  [v3 setValue:v62 forKey:@"triggerCategory"];

  v63 = MEMORY[0x277CCABB0];
  v64 = [(SMReceiverCacheManager *)self receiverContact];
  v65 = [v63 numberWithInteger:{objc_msgSend(v64, "firstDetailViewSessionState")}];
  [v3 setValue:v65 forKey:@"firstDetailViewSessionState"];

  v66 = MEMORY[0x277CCABB0];
  v67 = [(SMReceiverCacheManager *)self receiverContact];
  v68 = [v66 numberWithInteger:{objc_msgSend(v67, "lastDetailViewSessionState")}];
  [v3 setValue:v68 forKey:@"lastDetailViewSessionState"];

  return v3;
}

- (void)computeResponseModality:(id)a3 completionHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = __Block_byref_object_copy__104;
  v44 = __Block_byref_object_dispose__104;
  v9 = v7;
  v45 = v9;
  v38[0] = 0;
  v38[1] = v38;
  v38[2] = 0x3032000000;
  v38[3] = __Block_byref_object_copy__104;
  v38[4] = __Block_byref_object_dispose__104;
  v39 = [(SMReceiverCacheManager *)self sessionID];
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
  v11 = [(SMReceiverCacheManager *)self receiverContact];
  v12 = [v11 sessionStatus];
  v13 = [v12 initiatorHandle];
  v35 = [v13 primaryHandle];

  [v41[5] setValue:&unk_28459EAA8 forKey:@"firstResponseModality"];
  [v41[5] setValue:&unk_28459EAA8 forKey:@"lastResponseModality"];
  v14 = MEMORY[0x277CCABB0];
  v15 = [(SMReceiverCacheManager *)self receiverContact];
  v16 = [v15 sessionStatus];
  v17 = [v16 sessionStartDate];
  [v17 timeIntervalSinceReferenceDate];
  v18 = [v14 numberWithDouble:?];

  v19 = MEMORY[0x277CCABB0];
  v20 = [MEMORY[0x277CBEAA8] date];
  [v20 timeIntervalSinceReferenceDate];
  v21 = [v19 numberWithDouble:?];

  v22 = [MEMORY[0x277CF1B58] intent];
  v23 = [v22 publisherWithStartTime:v18 endTime:v21 maxEvents:0 lastN:0 reversed:0];

  v24 = [v23 filterWithIsIncluded:&__block_literal_global_293];

  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __68__SMReceiverCacheManager_computeResponseModality_completionHandler___block_invoke_2;
  v28[3] = &unk_2788CDB40;
  v30 = v38;
  v31 = v36;
  v33 = a2;
  v25 = v8;
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