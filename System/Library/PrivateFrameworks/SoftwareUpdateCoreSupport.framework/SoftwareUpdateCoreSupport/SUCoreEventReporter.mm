@interface SUCoreEventReporter
+ (id)_errorDomainAbbreviation:(id)a3;
+ (id)_nsURLSessionTaskNameForState:(int64_t)a3;
+ (id)_sharedReporter:(id)a3 withAccessControl:(int64_t)a4;
+ (id)accessControlSummary:(int64_t)a3;
+ (id)buildSplunkServerURLFromBase:(id)a3;
+ (int64_t)eventForEventString:(id)a3;
+ (void)augmentEvent:(id)a3 withError:(id)a4;
- (BOOL)_sendFirstAwaitingRetry;
- (BOOL)_storeServerURLMetadata:(id)a3 toFileUUID:(id)a4;
- (BOOL)sendEvent:(id)a3 toServerURL:(id)a4 returningFinalEventDictionary:(id *)a5;
- (id)_activeEventForFileUUID:(id)a3;
- (id)_alignPersistedStateWithExistingFileUUIDs:(id)a3;
- (id)_buildContextFromNVRAMBootArgs;
- (id)_copyEscapeStringsForEventData:(id)a3;
- (id)_getJSONDataFromPayload:(id)a3 withFileUUID:(id)a4 forEventUUID:(id)a5;
- (id)_getSplunkRequestForURL:(id)a3;
- (id)_getSplunkServerURL:(id)a3;
- (id)_newExistingFileUUIDs;
- (id)_newScrubbedEvents:(id)a3;
- (id)_removeFileUUID:(id)a3 fromFilesToRetry:(id)a4;
- (id)_storeJSONData:(id)a3 withFileUUID:(id)a4 forEventUUID:(id)a5;
- (id)_synchonizeDiscoveredCanceling:(id)a3 forActiveEvent:(id)a4 withFileUUIDsToRetry:(id)a5;
- (id)_synchonizeDiscoveredCompleted:(id)a3 forActiveEvent:(id)a4 withFileUUIDsToRetry:(id)a5;
- (id)_synchonizeDiscoveredRunning:(id)a3 forActiveEvent:(id)a4 withFileUUIDsToRetry:(id)a5;
- (id)_synchonizeDiscoveredSuspended:(id)a3 forActiveEvent:(id)a4 withFileUUIDsToRetry:(id)a5;
- (id)_synchonizeDiscoveredUnknown:(id)a3 forActiveEvent:(id)a4 withFileUUIDsToRetry:(id)a5;
- (id)initStoringToPath:(id)a3;
- (id)initStoringToPath:(id)a3 withAccessControl:(int64_t)a4;
- (id)sendEventReturningAugmented:(id)a3 toServerURL:(id)a4;
- (int64_t)currentAccessControl;
- (void)_adoptLastErrorEvent:(id)a3;
- (void)_awaitRetryingFileUUID:(id)a3;
- (void)_checkWhetherIdle:(id)a3;
- (void)_decrementActiveSendCount;
- (void)_determineEventExtensions;
- (void)_incrementActiveSendCount:(id)a3;
- (void)_removeActiveEventForFileUUID:(id)a3;
- (void)_removeFileUUID:(id)a3 loggingError:(BOOL)a4 forReason:(id)a5;
- (void)_sendAllAwaitingRetry;
- (void)_sendCoreEvent:(id)a3;
- (void)_sendCoreEvents:(id)a3 secondEvent:(id)a4;
- (void)_sendInterruptedFromStorage:(id)a3;
- (void)_sendSplunkEvents:(id)a3 forEventUUID:(id)a4 toServerURL:(id)a5;
- (void)_splunkAccessSetup;
- (void)_synchronizeWithNSURLSessionExpecting:(id)a3;
- (void)_updateActiveEvent:(id)a3 forFileUUID:(id)a4;
- (void)_uploadFromFile:(id)a3 withFileUUID:(id)a4 forEventUUID:(id)a5 toServerURL:(id)a6;
- (void)dropOnSendFailure:(BOOL)a3;
- (void)flushEvent;
- (void)handleSendFinishedInvalidFileUUID:(id)a3 withError:(id)a4;
- (void)handleSendFinishedWithFileUUID:(id)a3 sendSucceeded:(BOOL)a4 withStatusCode:(int64_t)a5 withError:(id)a6;
- (void)indicateOnceIdle:(id)a3;
@end

@implementation SUCoreEventReporter

+ (id)_sharedReporter:(id)a3 withAccessControl:(int64_t)a4
{
  v5 = a3;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __57__SUCoreEventReporter__sharedReporter_withAccessControl___block_invoke;
  v11[3] = &unk_1E86FC370;
  v12 = v5;
  v13 = a4;
  v6 = _sharedReporter_withAccessControl__reporterOnce;
  v7 = v5;
  if (v6 != -1)
  {
    dispatch_once(&_sharedReporter_withAccessControl__reporterOnce, v11);
  }

  v8 = _sharedReporter_withAccessControl__reporter;
  v9 = _sharedReporter_withAccessControl__reporter;

  return v8;
}

uint64_t __57__SUCoreEventReporter__sharedReporter_withAccessControl___block_invoke(uint64_t a1)
{
  _sharedReporter_withAccessControl__reporter = [[SUCoreEventReporter alloc] initStoringToPath:*(a1 + 32) withAccessControl:*(a1 + 40)];

  return MEMORY[0x1EEE66BB8]();
}

- (id)initStoringToPath:(id)a3
{
  v4 = a3;
  v5 = [[SUCoreEventReporter alloc] initStoringToPath:v4 withAccessControl:1];

  return v5;
}

- (id)initStoringToPath:(id)a3 withAccessControl:(int64_t)a4
{
  v58 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v53.receiver = self;
  v53.super_class = SUCoreEventReporter;
  v7 = [(SUCoreEventReporter *)&v53 init];
  v8 = v7;
  if (!v7)
  {
    goto LABEL_13;
  }

  awaitingRetry = v7->_awaitingRetry;
  v7->_awaitingRetry = 0;

  splunkURL = v8->_splunkURL;
  v8->_splunkURL = 0;

  v11 = objc_alloc(MEMORY[0x1E696AEC0]);
  v12 = +[SUCore sharedCore];
  v13 = [v12 commonDomain];
  v14 = [v11 initWithFormat:@"%@.%@", v13, @"core.splunk.state"];
  v15 = [v14 UTF8String];
  v16 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v17 = dispatch_queue_create(v15, v16);
  splunkStateQueue = v8->_splunkStateQueue;
  v8->_splunkStateQueue = v17;

  if (!v8->_splunkStateQueue)
  {
    v20 = +[SUCoreDiag sharedDiag];
    v23 = objc_alloc(MEMORY[0x1E696AEC0]);
    v22 = +[SUCore sharedCore];
    v24 = [(NSString *)v22 commonDomain];
    v25 = [v23 initWithFormat:@"unable to create dispatch queue domain(%@.%@)", v24, @"core.splunk.state"];
    [v20 trackError:@"[EVENT_REPORTER] INIT" forReason:v25 withResult:8100 withError:0];

    goto LABEL_6;
  }

  v19 = +[SUCoreLog sharedLogger];
  v20 = [v19 oslog];

  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = +[SUCore sharedCore];
    v22 = [v21 commonDomain];
    *buf = 138543618;
    v55 = v22;
    v56 = 2114;
    v57 = @"core.splunk.state";
    _os_log_impl(&dword_1E0F71000, v20, OS_LOG_TYPE_DEFAULT, "[EVENT_REPORTER] DISPATCH | created dispatch queue domain(%{public}@.%{public}@)", buf, 0x16u);

LABEL_6:
  }

  inProcessConfig = v8->_inProcessConfig;
  v8->_inProcessConfig = 0;

  inProcessOperationQueue = v8->_inProcessOperationQueue;
  v8->_inProcessOperationQueue = 0;

  inProcessSession = v8->_inProcessSession;
  v8->_inProcessSession = 0;

  reporterDelegate = v8->_reporterDelegate;
  v8->_reporterDelegate = 0;

  if (v6)
  {
    v30 = [v6 stringByAppendingPathComponent:@"/RecorderSplunkRecords"];
    storeToPath = v8->_storeToPath;
    v8->_storeToPath = v30;

    v8->_accessControl = a4;
    v32 = [v6 stringByAppendingPathComponent:@"/EventReporterPersistedState"];
    persistedStatePath = v8->_persistedStatePath;
    v8->_persistedStatePath = v32;
  }

  else
  {
    v34 = +[SUCore sharedCore];
    v35 = [v34 commonFilesystemBaseDir];
    v36 = [v35 stringByAppendingPathComponent:@"/RecorderSplunkRecords"];
    v37 = v8->_storeToPath;
    v8->_storeToPath = v36;

    v8->_accessControl = a4;
    persistedStatePath = +[SUCore sharedCore];
    v38 = [persistedStatePath commonFilesystemBaseDir];
    v39 = [v38 stringByAppendingPathComponent:@"/EventReporterPersistedState"];
    v40 = v8->_persistedStatePath;
    v8->_persistedStatePath = v39;
  }

  v41 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@/%@", v8->_persistedStatePath, @"SUCoreEventReporterState.state"];
  v42 = [[SUCorePersistedState alloc] initWithDispatchQueue:v8->_splunkStateQueue withPersistencePath:v41 forPolicyVersion:@"1.0"];
  activeEventsState = v8->_activeEventsState;
  v8->_activeEventsState = v42;

  lastErrorEvent = v8->_lastErrorEvent;
  v8->_lastErrorEvent = 0;

  *&v8->_splunkAccessCreated = 0;
  eventExtensions = v8->_eventExtensions;
  v8->_eventExtensions = 0;

  v8->_activeSendTaskCount = 0;
  v8->_dropEventsOnSendFailure = 0;
  onceIdleCompletion = v8->_onceIdleCompletion;
  v8->_onceIdleCompletion = 0;

  v47 = +[SUCoreLog sharedLogger];
  v48 = [v47 oslog];

  if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
  {
    v49 = v8->_storeToPath;
    v50 = [SUCoreEventReporter accessControlSummary:v8->_accessControl];
    *buf = 138543618;
    v55 = v49;
    v56 = 2114;
    v57 = v50;
    _os_log_impl(&dword_1E0F71000, v48, OS_LOG_TYPE_DEFAULT, "[EVENT_REPORTER] INIT(v1.0) | storing to path: %{public}@, access control: %{public}@", buf, 0x16u);
  }

LABEL_13:
  v51 = *MEMORY[0x1E69E9840];
  return v8;
}

+ (void)augmentEvent:(id)a3 withError:(id)a4
{
  v13 = a3;
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    v8 = [v6 domain];
    v9 = [a1 _errorDomainAbbreviation:v8];

    if (v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = @"NoDomain";
    }

    v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@ %ld", v10, objc_msgSend(v7, "code")];
    v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@", v7];
    if (v11)
    {
      [v13 setSafeObject:v11 forKey:@"result"];
    }

    if (v12)
    {
      [v13 setSafeObject:v12 forKey:@"failureReason"];
    }
  }

  else
  {
    v11 = 0;
    v12 = 0;
    v10 = 0;
  }
}

+ (id)buildSplunkServerURLFromBase:(id)a3
{
  v3 = a3;
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@/%d/%@", v3, 2, @"psr_ota"];
    v5 = [MEMORY[0x1E695DFF8] URLWithString:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)accessControlSummary:(int64_t)a3
{
  v3 = a3;
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  v5 = @"Y";
  if ((v3 & 1) == 0)
  {
    v5 = @"N";
  }

  v6 = [v4 initWithFormat:@"|NVRAM Allowed:%@", v5];
  v7 = [&stru_1F5BDE410 stringByAppendingString:v6];

  v8 = [v7 stringByAppendingString:@"|"];

  return v8;
}

+ (int64_t)eventForEventString:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"purge"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"preflightScan"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"preflightDownload"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"preflightPersonalize"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"preflightFDR"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"preflightWakeup"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"preflightPrerequisiteCheck"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"prepareStarted"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"prepareFinished"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"applyStarted"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"applyFinished"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"CryptegraftStarted"])
  {
    v4 = 11;
  }

  else if ([v3 isEqualToString:@"CryptegraftFinshed"])
  {
    v4 = 12;
  }

  else if ([v3 isEqualToString:@"updateFinished"])
  {
    v4 = 13;
  }

  else
  {
    v4 = 100;
  }

  return v4;
}

- (BOOL)sendEvent:(id)a3 toServerURL:(id)a4 returningFinalEventDictionary:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(SUCoreEventReporter *)self splunkStateQueue];
  dispatch_assert_queue_not_V2(v10);

  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__1;
  v25 = __Block_byref_object_dispose__1;
  v26 = 0;
  v11 = [(SUCoreEventReporter *)self splunkStateQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __75__SUCoreEventReporter_sendEvent_toServerURL_returningFinalEventDictionary___block_invoke;
  block[3] = &unk_1E86FC398;
  block[4] = self;
  v12 = v8;
  v17 = v12;
  v13 = v9;
  v18 = v13;
  v19 = &v27;
  v20 = &v21;
  dispatch_sync(v11, block);

  if (a5)
  {
    *a5 = v22[5];
  }

  v14 = *(v28 + 24);

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v27, 8);

  return v14;
}

void __75__SUCoreEventReporter_sendEvent_toServerURL_returningFinalEventDictionary___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _determineEventExtensions];
  v2 = [SUCoreEvent alloc];
  v3 = *(a1 + 40);
  v4 = [*(a1 + 32) eventExtensions];
  v5 = [(SUCoreEvent *)v2 initWithEventDictionary:v3 extendingWith:v4 reportingToServer:*(a1 + 48)];

  if (v5)
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
    v6 = [(SUCoreEvent *)v5 allFields];
    v7 = [v6 copy];
    v8 = *(*(a1 + 64) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    v10 = [*(a1 + 32) splunkStateQueue];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __75__SUCoreEventReporter_sendEvent_toServerURL_returningFinalEventDictionary___block_invoke_2;
    v12[3] = &unk_1E86FC150;
    v12[4] = *(a1 + 32);
    v13 = v5;
    dispatch_async(v10, v12);
  }

  else
  {
    v11 = +[SUCoreDiag sharedDiag];
    [v11 trackError:@"[EVENT_REPORTER] SEND" forReason:@"failed to create core event from provided event information" withResult:8100 withError:0];
  }
}

- (id)sendEventReturningAugmented:(id)a3 toServerURL:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SUCoreEventReporter *)self splunkStateQueue];
  dispatch_assert_queue_not_V2(v8);

  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__1;
  v22 = __Block_byref_object_dispose__1;
  v23 = 0;
  v9 = [(SUCoreEventReporter *)self splunkStateQueue];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __63__SUCoreEventReporter_sendEventReturningAugmented_toServerURL___block_invoke;
  v14[3] = &unk_1E86FC3C0;
  v14[4] = self;
  v15 = v6;
  v16 = v7;
  v17 = &v18;
  v10 = v7;
  v11 = v6;
  dispatch_sync(v9, v14);

  v12 = v19[5];
  _Block_object_dispose(&v18, 8);

  return v12;
}

void __63__SUCoreEventReporter_sendEventReturningAugmented_toServerURL___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _determineEventExtensions];
  v2 = [SUCoreEvent alloc];
  v3 = *(a1 + 40);
  v4 = [*(a1 + 32) eventExtensions];
  v5 = [(SUCoreEvent *)v2 initWithEventDictionary:v3 extendingWith:v4 reportingToServer:*(a1 + 48)];

  if (v5)
  {
    v6 = [(SUCoreEvent *)v5 getAugmentedEvent];
    v7 = *(*(a1 + 56) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    v9 = [*(a1 + 32) splunkStateQueue];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __63__SUCoreEventReporter_sendEventReturningAugmented_toServerURL___block_invoke_2;
    v11[3] = &unk_1E86FC150;
    v11[4] = *(a1 + 32);
    v12 = v5;
    dispatch_async(v9, v11);
  }

  else
  {
    v10 = +[SUCoreDiag sharedDiag];
    [v10 trackError:@"[EVENT_REPORTER] SEND_RETURNING_AUGMENTED" forReason:@"failed to create core event from provided event information" withResult:8100 withError:0];
  }
}

- (void)dropOnSendFailure:(BOOL)a3
{
  v5 = [(SUCoreEventReporter *)self splunkStateQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __41__SUCoreEventReporter_dropOnSendFailure___block_invoke;
  v6[3] = &unk_1E86FC3E8;
  v6[4] = self;
  v7 = a3;
  dispatch_async(v5, v6);
}

void __41__SUCoreEventReporter_dropOnSendFailure___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if (*(a1 + 40) != [*(a1 + 32) dropEventsOnSendFailure])
  {
    [*(a1 + 32) setDropEventsOnSendFailure:?];
    v2 = +[SUCoreLog sharedLogger];
    v3 = [v2 oslog];

    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [*(a1 + 32) dropEventsOnSendFailure];
      v5 = @"NO";
      if (v4)
      {
        v5 = @"YES";
      }

      v7 = 138543362;
      v8 = v5;
      _os_log_impl(&dword_1E0F71000, v3, OS_LOG_TYPE_DEFAULT, "[EVENT_REPORTER] CONFIG | dropEventsOnSendFailure=%{public}@", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)flushEvent
{
  v3 = [(SUCoreEventReporter *)self splunkStateQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__SUCoreEventReporter_flushEvent__block_invoke;
  block[3] = &unk_1E86FC178;
  block[4] = self;
  dispatch_async(v3, block);
}

uint64_t __33__SUCoreEventReporter_flushEvent__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _splunkAccessSetup];
  v2 = [*(a1 + 32) lastErrorEvent];
  if (v2 && (v3 = v2, [*(a1 + 32) lastErrorEvent], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "changedSinceReported"), v4, v3, v5))
  {
    v6 = +[SUCoreLog sharedLogger];
    v7 = [v6 oslog];

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E0F71000, v7, OS_LOG_TYPE_DEFAULT, "[EVENT_REPORTER] FLUSH | sending last error event", buf, 2u);
    }

    v8 = *(a1 + 32);
    v9 = [v8 lastErrorEvent];
    [v8 _sendCoreEvents:v9 secondEvent:0];
  }

  else
  {
    v10 = +[SUCoreLog sharedLogger];
    v11 = [v10 oslog];

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&dword_1E0F71000, v11, OS_LOG_TYPE_DEFAULT, "[EVENT_REPORTER] FLUSH | sending first awaiting retry", v13, 2u);
    }

    [*(a1 + 32) _sendFirstAwaitingRetry];
  }

  return [*(a1 + 32) setLastErrorEvent:0];
}

- (int64_t)currentAccessControl
{
  v3 = [(SUCoreEventReporter *)self splunkStateQueue];
  dispatch_assert_queue_not_V2(v3);

  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v4 = [(SUCoreEventReporter *)self splunkStateQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __43__SUCoreEventReporter_currentAccessControl__block_invoke;
  v7[3] = &unk_1E86FC1A0;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(v4, v7);

  v5 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v5;
}

uint64_t __43__SUCoreEventReporter_currentAccessControl__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) accessControl];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)indicateOnceIdle:(id)a3
{
  v4 = a3;
  v5 = [(SUCoreEventReporter *)self splunkStateQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __40__SUCoreEventReporter_indicateOnceIdle___block_invoke;
  v7[3] = &unk_1E86FC438;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

uint64_t __40__SUCoreEventReporter_indicateOnceIdle___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) onceIdleCompletion];

  if (v2)
  {
    v3 = +[SUCore sharedCore];
    v4 = [v3 buildError:8117 underlying:0 description:@"indicateOnceIdle completion when older completion in place - issuing error to older completion"];

    v5 = [*(a1 + 32) onceIdleCompletion];
    [*(a1 + 32) setOnceIdleCompletion:0];
    v6 = +[SUCore sharedCore];
    v7 = [v6 completionQueue];
    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __40__SUCoreEventReporter_indicateOnceIdle___block_invoke_2;
    v14 = &unk_1E86FC410;
    v15 = v4;
    v16 = v5;
    v8 = v4;
    v9 = v5;
    dispatch_async(v7, &v11);
  }

  [*(a1 + 32) setOnceIdleCompletion:{*(a1 + 40), v11, v12, v13, v14}];
  return [*(a1 + 32) _checkWhetherIdle:@"indicate once idle"];
}

- (void)_splunkAccessSetup
{
  v40 = *MEMORY[0x1E69E9840];
  v3 = [(SUCoreEventReporter *)self splunkStateQueue];
  dispatch_assert_queue_V2(v3);

  if (![(SUCoreEventReporter *)self splunkAccessCreated])
  {
    v4 = [MEMORY[0x1E696AC08] defaultManager];
    v5 = [[SUCoreEventReporterDelegate alloc] initWithReporter:self];
    [(SUCoreEventReporter *)self setReporterDelegate:v5];

    v6 = [MEMORY[0x1E696AF80] defaultSessionConfiguration];
    [(SUCoreEventReporter *)self setInProcessConfig:v6];

    v7 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    [(SUCoreEventReporter *)self setInProcessOperationQueue:v7];

    v8 = [(SUCoreEventReporter *)self inProcessOperationQueue];
    [v8 setMaxConcurrentOperationCount:1];

    v9 = MEMORY[0x1E696AF78];
    v10 = [(SUCoreEventReporter *)self inProcessConfig];
    v11 = [(SUCoreEventReporter *)self reporterDelegate];
    v12 = [(SUCoreEventReporter *)self inProcessOperationQueue];
    v13 = [v9 sessionWithConfiguration:v10 delegate:v11 delegateQueue:v12];
    [(SUCoreEventReporter *)self setInProcessSession:v13];

    v14 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:@"https://xp.apple.com/report/2/psr_ota"];
    [(SUCoreEventReporter *)self setSplunkURL:v14];

    v15 = +[SUCoreLog sharedLogger];
    v16 = [v15 oslog];

    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [(SUCoreEventReporter *)self splunkURL];
      *buf = 138543362;
      v39 = v17;
      _os_log_impl(&dword_1E0F71000, v16, OS_LOG_TYPE_DEFAULT, "[EVENT_REPORTER] SETUP | default Splunk URL: %{public}@", buf, 0xCu);
    }

    v18 = [(SUCoreEventReporter *)self storeToPath];
    v37 = 0;
    v19 = [v4 createDirectoryAtPath:v18 withIntermediateDirectories:1 attributes:0 error:&v37];
    v20 = v37;

    if ((v19 & 1) == 0 && (!v20 || [v20 code] != 17))
    {
      v21 = +[SUCoreDiag sharedDiag];
      v22 = objc_alloc(MEMORY[0x1E696AEC0]);
      v23 = [(SUCoreEventReporter *)self storeToPath];
      v24 = [v22 initWithFormat:@"failed to create store-to directory: %@", v23];
      [v21 trackError:@"[EVENT_REPORTER] SETUP" forReason:v24 withResult:objc_msgSend(v20 withError:{"code"), v20}];
    }

    v25 = [(SUCoreEventReporter *)self persistedStatePath];
    v36 = 0;
    v26 = [v4 createDirectoryAtPath:v25 withIntermediateDirectories:1 attributes:0 error:&v36];
    v27 = v36;

    if ((v26 & 1) == 0 && (!v27 || [v27 code] != 17))
    {
      v28 = +[SUCoreDiag sharedDiag];
      v29 = objc_alloc(MEMORY[0x1E696AEC0]);
      v30 = [(SUCoreEventReporter *)self persistedStatePath];
      v31 = [v29 initWithFormat:@"failed to create persisted-state directory: %@", v30];
      [v28 trackError:@"[EVENT_REPORTER] SETUP" forReason:v31 withResult:objc_msgSend(v27 withError:{"code"), v27}];
    }

    v32 = [(SUCoreEventReporter *)self activeEventsState];
    [v32 loadPersistedState];

    v33 = [(SUCoreEventReporter *)self _newExistingFileUUIDs];
    v34 = [(SUCoreEventReporter *)self _alignPersistedStateWithExistingFileUUIDs:v33];

    [(SUCoreEventReporter *)self _synchronizeWithNSURLSessionExpecting:v34];
    [(SUCoreEventReporter *)self setSplunkAccessCreated:1];
  }

  v35 = *MEMORY[0x1E69E9840];
}

- (void)_determineEventExtensions
{
  v3 = [(SUCoreEventReporter *)self splunkStateQueue];
  dispatch_assert_queue_V2(v3);

  if ([(SUCoreEventReporter *)self eventExtensionsDetermined])
  {
    return;
  }

  v9 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.UpdateMetrics"];
  v4 = [v9 stringForKey:@"Context"];
  if (v4)
  {
    v5 = 0;
    goto LABEL_4;
  }

  if (([(SUCoreEventReporter *)self accessControl]& 1) != 0)
  {
    v5 = [(SUCoreEventReporter *)self _buildContextFromNVRAMBootArgs];
    if (v5)
    {
LABEL_4:
      v6 = objc_opt_new();
      eventExtensions = self->_eventExtensions;
      self->_eventExtensions = v6;

      if (v4)
      {
        v8 = v4;
      }

      else
      {
        v8 = v5;
      }

      [(NSMutableDictionary *)self->_eventExtensions setSafeObject:v8 forKey:@"context"];
    }
  }

  [(SUCoreEventReporter *)self setEventExtensionsDetermined:1];
}

- (id)_buildContextFromNVRAMBootArgs
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = [(SUCoreEventReporter *)self splunkStateQueue];
  dispatch_assert_queue_V2(v2);

  v3 = IORegistryEntryFromPath(*MEMORY[0x1E696CD60], "IODeviceTree:/options");
  if (!v3)
  {
    v7 = +[SUCoreDiag sharedDiag];
    [v7 trackAnomaly:@"[EVENT_REPORTER] BUILD" forReason:@"unable to read NVRAM variables - unable to get registry entry for IODeviceTree:/options" withResult:8104 withError:0];

    v8 = 0;
    goto LABEL_27;
  }

  v4 = v3;
  CFProperty = IORegistryEntryCreateCFProperty(v3, @"boot-args", *MEMORY[0x1E695E480], 0);
  IOObjectRelease(v4);
  if (!CFProperty)
  {
    goto LABEL_23;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:CFProperty encoding:4];
    if (!v6)
    {
      goto LABEL_23;
    }

LABEL_9:
    v23 = v6;
    v24 = CFProperty;
    v9 = [v6 componentsSeparatedByString:@" "];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v10 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v10)
    {
      v11 = v10;
      v8 = 0;
      v12 = *v26;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v26 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [*(*(&v25 + 1) + 8 * i) componentsSeparatedByString:@"="];
          v15 = v14;
          if (!v8)
          {
            if ([v14 count] == 2 && (objc_msgSend(v15, "objectAtIndexedSubscript:", 0), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "isEqualToString:", @"BATS_TESTPLAN_ID"), v16, v17))
            {
              v18 = objc_alloc(MEMORY[0x1E696AEC0]);
              v19 = [v15 objectAtIndexedSubscript:1];
              v8 = [v18 initWithFormat:@"BATS_TESTPLAN_ID_%@", v19];
            }

            else
            {
              v8 = 0;
            }
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v11);
    }

    else
    {
      v8 = 0;
    }

    CFProperty = v24;
    goto LABEL_26;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = CFProperty;
    goto LABEL_9;
  }

  v20 = +[SUCoreDiag sharedDiag];
  [v20 trackAnomaly:@"[EVENT_REPORTER] BUILD" forReason:@"NVRAM boot-args exist but format unknown - ignored" withResult:8103 withError:0];

LABEL_23:
  v8 = 0;
LABEL_26:

LABEL_27:
  v21 = *MEMORY[0x1E69E9840];

  return v8;
}

- (void)_adoptLastErrorEvent:(id)a3
{
  v5 = a3;
  v4 = [v5 allFields];
  [v4 setSafeObject:@"false" forKey:@"sameErrorSignature"];

  [(SUCoreEventReporter *)self setLastErrorEvent:v5];
}

- (void)_sendCoreEvent:(id)a3
{
  v4 = a3;
  v5 = [(SUCoreEventReporter *)self splunkStateQueue];
  dispatch_assert_queue_V2(v5);

  [(SUCoreEventReporter *)self _splunkAccessSetup];
  v6 = [v4 allFields];
  v7 = [v6 safeStringForKey:@"UUID"];

  if (v7)
  {
    v8 = +[SUCoreDiag sharedDiag];
    [v8 trackLastReportedUUID:v7];
  }

  if ([v4 isSuccess])
  {
    v9 = +[SUCoreLog sharedLogger];
    v10 = [v9 oslog];

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E0F71000, v10, OS_LOG_TYPE_DEFAULT, "[EVENT_REPORTER] STATUS | sending event [event indicating successful operation]", buf, 2u);
    }

    v11 = [(SUCoreEventReporter *)self lastErrorEvent];
    v12 = [v11 changedSinceReported];

    if (v12)
    {
      v13 = [(SUCoreEventReporter *)self lastErrorEvent];
    }

    else
    {
      v13 = 0;
    }

    [(SUCoreEventReporter *)self setLastErrorEvent:0];
  }

  else
  {
    v14 = [(SUCoreEventReporter *)self lastErrorEvent];

    if (v14)
    {
      v15 = [(SUCoreEventReporter *)self lastErrorEvent];
      v16 = [v4 isEqualErrorEvent:v15];

      if (v16)
      {
        v17 = [(SUCoreEventReporter *)self lastErrorEvent];
        [v17 incrementErrorCount];

        v18 = +[SUCoreLog sharedLogger];
        v19 = [v18 oslog];

        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *v28 = 0;
          _os_log_impl(&dword_1E0F71000, v19, OS_LOG_TYPE_DEFAULT, "[EVENT_REPORTER] STATUS | not sending event [event indicating error matching last reported]", v28, 2u);
        }

        v13 = 0;
        v4 = 0;
      }

      else
      {
        v22 = +[SUCoreLog sharedLogger];
        v23 = [v22 oslog];

        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *v27 = 0;
          _os_log_impl(&dword_1E0F71000, v23, OS_LOG_TYPE_DEFAULT, "[EVENT_REPORTER] STATUS | sending event [event indicating error that is different than last reported]", v27, 2u);
        }

        v24 = [(SUCoreEventReporter *)self lastErrorEvent];
        v25 = [v24 changedSinceReported];

        if (v25)
        {
          v13 = [(SUCoreEventReporter *)self lastErrorEvent];
        }

        else
        {
          v13 = 0;
        }

        [(SUCoreEventReporter *)self _adoptLastErrorEvent:v4];
      }
    }

    else
    {
      v20 = +[SUCoreLog sharedLogger];
      v21 = [v20 oslog];

      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *v26 = 0;
        _os_log_impl(&dword_1E0F71000, v21, OS_LOG_TYPE_DEFAULT, "[EVENT_REPORTER] STATUS | sending event [event indicating error when no last error]", v26, 2u);
      }

      [(SUCoreEventReporter *)self _adoptLastErrorEvent:v4];
      v13 = 0;
    }
  }

  [(SUCoreEventReporter *)self _sendCoreEvents:v13 secondEvent:v4];
}

- (void)_sendCoreEvents:(id)a3 secondEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SUCoreEventReporter *)self splunkStateQueue];
  dispatch_assert_queue_V2(v8);

  v9 = objc_opt_new();
  if (v6 && v7)
  {
    v10 = [v6 reportedUUID];
    v11 = [(SUCoreEventReporter *)self _getSplunkServerURL:v6];
    v12 = [v7 reportedUUID];
    v13 = [(SUCoreEventReporter *)self _getSplunkServerURL:v7];
    v14 = [v6 allFields];
    [v9 addObject:v14];

    [(SUCoreEventReporter *)self _sendSplunkEvents:v9 forEventUUID:v10 toServerURL:v11];
    v15 = objc_opt_new();

    v16 = [v7 allFields];
    [v15 addObject:v16];

    [(SUCoreEventReporter *)self _sendSplunkEvents:v15 forEventUUID:v12 toServerURL:v13];
    v9 = v15;
    goto LABEL_9;
  }

  if (v6)
  {
    v17 = [(SUCoreEventReporter *)self _getSplunkServerURL:v6];
    v18 = [v6 allFields];
    [v9 addObject:v18];

    v19 = v6;
LABEL_8:
    v21 = [v19 reportedUUID];
    [(SUCoreEventReporter *)self _sendSplunkEvents:v9 forEventUUID:v21 toServerURL:v17];

    goto LABEL_9;
  }

  if (v7)
  {
    v17 = [(SUCoreEventReporter *)self _getSplunkServerURL:v7];
    v20 = [v7 allFields];
    [v9 addObject:v20];

    v19 = v7;
    goto LABEL_8;
  }

  v22 = +[SUCoreLog sharedLogger];
  v23 = [v22 oslog];

  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *v24 = 0;
    _os_log_impl(&dword_1E0F71000, v23, OS_LOG_TYPE_DEFAULT, "[EVENT_REPORTER] STATUS | send events with nothing to send", v24, 2u);
  }

LABEL_9:
}

- (void)_sendSplunkEvents:(id)a3 forEventUUID:(id)a4 toServerURL:(id)a5
{
  v35[2] = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = [(SUCoreEventReporter *)self splunkStateQueue];
  dispatch_assert_queue_V2(v11);

  v12 = [(SUCoreEventReporter *)self _newScrubbedEvents:v10];
  if (v8)
  {
    v13 = v8;
  }

  else
  {
    v14 = [MEMORY[0x1E696AFB0] UUID];
    v13 = [v14 UUIDString];
  }

  v15 = [MEMORY[0x1E696AFB0] UUID];
  v16 = [v15 UUIDString];

  if (v9 && v12 && v13 && v16 && ([(SUCoreEventReporter *)self inProcessSession], v17 = objc_claimAutoreleasedReturnValue(), v17, v17))
  {
    v34[0] = @"clientId";
    v34[1] = @"events";
    v35[0] = v13;
    v35[1] = v12;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:v34 count:2];
    v19 = [(SUCoreEventReporter *)self _getJSONDataFromPayload:v18 withFileUUID:v16 forEventUUID:v13];
    if (v19)
    {
      v20 = [(SUCoreEventReporter *)self _storeJSONData:v19 withFileUUID:v16 forEventUUID:v13];
      if (v20)
      {
        v27 = v20;
        v21 = [v9 dataRepresentation];
        [(SUCoreEventReporter *)self _storeServerURLMetadata:v21 toFileUUID:v16];

        v22 = +[SUCoreLog sharedLogger];
        v23 = [v22 oslog];

        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543874;
          v29 = v13;
          v30 = 2114;
          v31 = v16;
          v32 = 2114;
          v33 = v18;
          _os_log_impl(&dword_1E0F71000, v23, OS_LOG_TYPE_DEFAULT, "[EVENT_REPORTER] UPLOADING | sending [UUID: %{public}@] file: %{public}@ payload: %{public}@", buf, 0x20u);
        }

        [(SUCoreEventReporter *)self _uploadFromFile:v27 withFileUUID:v16 forEventUUID:v13 toServerURL:v9];
        [SUCoreSplunkHistory logEventUUID:v13];
      }
    }
  }

  else
  {
    v24 = +[SUCoreDiag sharedDiag];
    v25 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"missing required event resources [UUID: %@]", v13];
    [v24 trackAnomaly:@"[EVENT_REPORTER] SEND" forReason:v25 withResult:8101 withError:0];

    v18 = 0;
    v19 = 0;
  }

  v26 = *MEMORY[0x1E69E9840];
}

- (void)_uploadFromFile:(id)a3 withFileUUID:(id)a4 forEventUUID:(id)a5 toServerURL:(id)a6
{
  v39 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(SUCoreEventReporter *)self splunkStateQueue];
  dispatch_assert_queue_V2(v14);

  v15 = +[SUCore getFileMetadata:forKey:](SUCore, "getFileMetadata:forKey:", [v10 fileSystemRepresentation], @"SUCoreEventReporterServerURL");
  v16 = [(SUCoreEventReporter *)self _activeEventForFileUUID:v11];
  if (v16)
  {
    v17 = v16;
    [(SUCoreEventReporterActive *)v16 setAttemptedSendCount:[(SUCoreEventReporterActive *)v16 attemptedSendCount]+ 1];
    if ([(SUCoreEventReporterActive *)v17 attemptedSendCount]>= 9)
    {
      v18 = +[SUCoreLog sharedLogger];
      v19 = [v18 oslog];

      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = [(SUCoreEventReporterActive *)v17 summary];
        *buf = 138543618;
        v36 = v11;
        v37 = 2114;
        v38 = v20;
        _os_log_impl(&dword_1E0F71000, v19, OS_LOG_TYPE_DEFAULT, "[EVENT_REPORTER] UPLOADING | dropping event with fileUUID:%{public}@ - too many send attempts | active:%{public}@", buf, 0x16u);
      }

      [(SUCoreEventReporter *)self _removeFileUUID:v11 loggingError:1 forReason:@"too many send attempts"];
      goto LABEL_20;
    }
  }

  else
  {
    v17 = [[SUCoreEventReporterActive alloc] initWithServerURL:v13];
    [(SUCoreEventReporterActive *)v17 setAttemptedSendCount:[(SUCoreEventReporterActive *)v17 attemptedSendCount]+ 1];
  }

  [(SUCoreEventReporter *)self _updateActiveEvent:v17 forFileUUID:v11];
  v34 = v15;
  if (v15)
  {
    v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v15 encoding:4];
    if (v21)
    {
      v22 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v21];
      if (v22)
      {
        goto LABEL_13;
      }
    }
  }

  else
  {
    v21 = 0;
  }

  v22 = v13;
LABEL_13:
  v23 = [(SUCoreEventReporter *)self _getSplunkRequestForURL:v22];
  if (v23)
  {
    v24 = v23;
    v33 = v13;
    v25 = v12;
    v26 = [(SUCoreEventReporter *)self inProcessSession];
    v27 = [v26 uploadTaskWithRequest:v24 fromFile:v10];

    if (v27)
    {
      [(SUCoreEventReporter *)self _incrementActiveSendCount:@"uploading"];
      [v27 setTaskDescription:v11];
      [v27 resume];

      v12 = v25;
    }

    else
    {
      v30 = +[SUCoreDiag sharedDiag];
      v31 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"unable to create NSURL session task [UUID: %@] file: %@", v25, v11];
      [v30 trackAnomaly:@"[EVENT_REPORTER] QUEUED" forReason:v31 withResult:8101 withError:0];

      v12 = v25;
      [(SUCoreEventReporter *)self _awaitRetryingFileUUID:v11];
    }

    v13 = v33;
  }

  else
  {
    v28 = +[SUCoreDiag sharedDiag];
    v29 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"unable to create request to reach server [UUID: %@] file: %@", v12, v11];
    [v28 trackAnomaly:@"[EVENT_REPORTER] QUEUED" forReason:v29 withResult:8101 withError:0];

    [(SUCoreEventReporter *)self _awaitRetryingFileUUID:v11];
  }

  v15 = v34;
LABEL_20:

  v32 = *MEMORY[0x1E69E9840];
}

- (void)_sendInterruptedFromStorage:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(SUCoreEventReporter *)self splunkStateQueue];
  dispatch_assert_queue_V2(v5);

  if (v4)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v21 = v4;
    obj = v4;
    v6 = [obj countByEnumeratingWithState:&v23 objects:v31 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v24;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v24 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v23 + 1) + 8 * i);
          v11 = MEMORY[0x1E695DFF8];
          v12 = [(SUCoreEventReporter *)self storeToPath];
          v13 = [v12 stringByAppendingPathComponent:v10];
          v14 = [v11 fileURLWithPath:v13];

          v15 = [(SUCoreEventReporter *)self _activeEventForFileUUID:v10];
          v16 = +[SUCoreLog sharedLogger];
          v17 = [v16 oslog];

          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            v18 = [v15 summary];
            *buf = 138543618;
            v28 = v10;
            v29 = 2114;
            v30 = v18;
            _os_log_impl(&dword_1E0F71000, v17, OS_LOG_TYPE_DEFAULT, "[EVENT_REPORTER] SYNCHRONIZING | retrying (recovered from storage), re-sending fileUUID:%{public}@ | active:%{public}@", buf, 0x16u);
          }

          v19 = [(SUCoreEventReporter *)self splunkURL];
          [(SUCoreEventReporter *)self _uploadFromFile:v14 withFileUUID:v10 forEventUUID:0 toServerURL:v19];
        }

        v7 = [obj countByEnumeratingWithState:&v23 objects:v31 count:16];
      }

      while (v7);
    }

    v4 = v21;
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)_sendAllAwaitingRetry
{
  v3 = [(SUCoreEventReporter *)self splunkStateQueue];
  dispatch_assert_queue_V2(v3);

    ;
  }
}

- (BOOL)_sendFirstAwaitingRetry
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = [(SUCoreEventReporter *)self splunkStateQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(SUCoreEventReporter *)self awaitingRetry];
  v5 = [v4 count];

  if (v5)
  {
    v6 = [(SUCoreEventReporter *)self awaitingRetry];
    v7 = [v6 objectAtIndex:0];

    v8 = [(SUCoreEventReporter *)self awaitingRetry];
    [v8 removeObjectAtIndex:0];

    v9 = +[SUCoreLog sharedLogger];
    v10 = [v9 oslog];

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [(SUCoreEventReporter *)self activeSendTaskCount];
      v12 = [(SUCoreEventReporter *)self awaitingRetry];
      v24 = 67109376;
      *v25 = v11;
      *&v25[4] = 2048;
      *&v25[6] = [v12 count];
      _os_log_impl(&dword_1E0F71000, v10, OS_LOG_TYPE_DEFAULT, "[EVENT_REPORTER] IDLE_TRACK | sending first awaiting retry - activeSendTaskCount:%d, awaitingRetry:%lu", &v24, 0x12u);
    }

    if (v7)
    {
      v13 = MEMORY[0x1E695DFF8];
      v14 = [(SUCoreEventReporter *)self storeToPath];
      v15 = [v14 stringByAppendingPathComponent:v7];
      v16 = [v13 fileURLWithPath:v15];

      v17 = [(SUCoreEventReporter *)self _activeEventForFileUUID:v7];
      v18 = +[SUCoreLog sharedLogger];
      v19 = [v18 oslog];

      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = [v17 summary];
        v24 = 138543618;
        *v25 = v7;
        *&v25[8] = 2114;
        *&v25[10] = v20;
        _os_log_impl(&dword_1E0F71000, v19, OS_LOG_TYPE_DEFAULT, "[EVENT_REPORTER] UPLOADING | retrying, re-sending fileUUID:%{public}@ | active:%{public}@", &v24, 0x16u);
      }

      v21 = [(SUCoreEventReporter *)self splunkURL];
      [(SUCoreEventReporter *)self _uploadFromFile:v16 withFileUUID:v7 forEventUUID:0 toServerURL:v21];
    }

    else
    {
      v16 = +[SUCoreDiag sharedDiag];
      [v16 trackAnomaly:@"[EVENT_REPORTER] UPLOADING" forReason:@"unable to load fileUUID from awaiting retry array" withResult:8103 withError:0];
    }
  }

  result = v5 != 0;
  v23 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)_awaitRetryingFileUUID:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(SUCoreEventReporter *)self splunkStateQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(SUCoreEventReporter *)self awaitingRetry];

  if (!v6)
  {
    v7 = objc_opt_new();
    [(SUCoreEventReporter *)self setAwaitingRetry:v7];
  }

  v8 = [(SUCoreEventReporter *)self awaitingRetry];
  [v8 addObject:v4];

  v9 = [(SUCoreEventReporter *)self awaitingRetry];
  v10 = [v9 count];

  if (v10 >= 0x11)
  {
    do
    {
      v11 = [(SUCoreEventReporter *)self awaitingRetry];
      v12 = [v11 objectAtIndex:0];

      v13 = [(SUCoreEventReporter *)self awaitingRetry];
      [v13 removeObjectAtIndex:0];

      if (v12)
      {
        v14 = +[SUCoreDiag sharedDiag];
        v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"too many awaiting retry - not reporting file: %@", v12];
        [v14 trackError:@"[EVENT_REPORTER] DROP" forReason:v15 withResult:8108 withError:0];

        [(SUCoreEventReporter *)self _removeFileUUID:v12 loggingError:1 forReason:@"too many waiting retry"];
      }

      v16 = [(SUCoreEventReporter *)self awaitingRetry];
      v17 = [v16 count];
    }

    while (v17 > 0x10);
  }

  v18 = +[SUCoreLog sharedLogger];
  v19 = [v18 oslog];

  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = [(SUCoreEventReporter *)self activeSendTaskCount];
    v21 = [(SUCoreEventReporter *)self awaitingRetry];
    *buf = 67109376;
    v24 = v20;
    v25 = 2048;
    v26 = [v21 count];
    _os_log_impl(&dword_1E0F71000, v19, OS_LOG_TYPE_DEFAULT, "[EVENT_REPORTER] IDLE_TRACK | awaiting retrying - activeSendTaskCount:%d, awaitingRetry:%lu", buf, 0x12u);
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (id)_newExistingFileUUIDs
{
  v3 = [MEMORY[0x1E696AC08] defaultManager];
  v4 = [(SUCoreEventReporter *)self storeToPath];
  v11 = 0;
  v5 = [v3 contentsOfDirectoryAtPath:v4 error:&v11];
  v6 = v11;

  if (v6)
  {
    v7 = +[SUCoreDiag sharedDiag];
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"failed to get existing files error: %@", v6];
    [v7 trackError:@"[EVENT_REPORTER] SYNC" forReason:v8 withResult:objc_msgSend(v6 withError:{"code"), v6}];
  }

  else
  {
    v9 = [v5 mutableCopy];
    if (v9)
    {
      goto LABEL_5;
    }

    v7 = +[SUCoreDiag sharedDiag];
    [v7 trackError:@"[EVENT_REPORTER] SYNC" forReason:@"failed to copy existing files array" withResult:8105 withError:0];
  }

  v9 = 0;
LABEL_5:

  return v9;
}

- (void)_synchronizeWithNSURLSessionExpecting:(id)a3
{
  v4 = a3;
  v5 = +[SUCoreLog sharedLogger];
  v6 = [v5 oslog];

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1E0F71000, v6, OS_LOG_TYPE_DEFAULT, "[EVENT_REPORTER] SYNCHRONIZING | getAllTasksWithCompletionHandler... | synchronizing with NSURLSession to determine in-flight events", buf, 2u);
  }

  v7 = [(SUCoreEventReporter *)self inProcessSession];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __61__SUCoreEventReporter__synchronizeWithNSURLSessionExpecting___block_invoke;
  v9[3] = &unk_1E86FC488;
  v9[4] = self;
  v10 = v4;
  v8 = v4;
  [v7 getAllTasksWithCompletionHandler:v9];
}

void __61__SUCoreEventReporter__synchronizeWithNSURLSessionExpecting___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) splunkStateQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__SUCoreEventReporter__synchronizeWithNSURLSessionExpecting___block_invoke_2;
  block[3] = &unk_1E86FC460;
  v7 = *(a1 + 40);
  v8 = v3;
  v9 = *(a1 + 32);
  v5 = v3;
  dispatch_async(v4, block);
}

void __61__SUCoreEventReporter__synchronizeWithNSURLSessionExpecting___block_invoke_2(id *a1)
{
  v56 = *MEMORY[0x1E69E9840];
  v2 = [a1[4] copy];
  v3 = a1[5];
  v4 = 0x1E86FB000uLL;
  if (v3 && [v3 count])
  {
    v5 = +[SUCoreLog sharedLogger];
    v6 = [v5 oslog];

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [a1[5] count];
      v8 = [a1[5] count];
      v9 = @"s";
      if (v8 == 1)
      {
        v9 = &stru_1F5BDE410;
      }

      *buf = 134218242;
      v50 = v7;
      v51 = 2112;
      v52 = v9;
      _os_log_impl(&dword_1E0F71000, v6, OS_LOG_TYPE_DEFAULT, "[EVENT_REPORTER] SYNCHRONIZING | ...getAllTasksWithCompletionHandler | %lu in-flight event%@", buf, 0x16u);
    }

    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v10 = a1[5];
    v11 = [v10 countByEnumeratingWithState:&v45 objects:v55 count:16];
    if (v11)
    {
      v13 = v11;
      v42 = v2;
      v14 = *v46;
      *&v12 = 138543618;
      v40 = v12;
      v41 = v10;
      while (1)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v46 != v14)
          {
            objc_enumerationMutation(v10);
          }

          v16 = *(*(&v45 + 1) + 8 * i);
          v17 = [v16 taskDescription];
          if (v17)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v18 = [a1[6] _activeEventForFileUUID:v17];
              if ([a1[4] containsObject:v17])
              {
                v19 = [v16 state];
                v20 = a1[6];
                if (v19 > 1)
                {
                  if (v19 == 2)
                  {
                    v32 = v16;
                    v22 = v42;
                    v23 = [v20 _synchonizeDiscoveredCanceling:v32 forActiveEvent:v18 withFileUUIDsToRetry:v42];
                  }

                  else
                  {
                    if (v19 != 3)
                    {
                      goto LABEL_32;
                    }

                    v29 = v16;
                    v22 = v42;
                    v23 = [v20 _synchonizeDiscoveredCompleted:v29 forActiveEvent:v18 withFileUUIDsToRetry:v42];
                  }
                }

                else if (v19)
                {
                  if (v19 == 1)
                  {
                    v21 = v16;
                    v22 = v42;
                    v23 = [v20 _synchonizeDiscoveredSuspended:v21 forActiveEvent:v18 withFileUUIDsToRetry:v42];
                    goto LABEL_35;
                  }

LABEL_32:
                  v30 = v16;
                  v22 = v42;
                  v23 = [v20 _synchonizeDiscoveredUnknown:v30 forActiveEvent:v18 withFileUUIDsToRetry:v42];
                }

                else
                {
                  v31 = v16;
                  v22 = v42;
                  v23 = [v20 _synchonizeDiscoveredRunning:v31 forActiveEvent:v18 withFileUUIDsToRetry:v42];
                }

LABEL_35:
                v42 = v23;
              }

              else
              {
                v22 = +[SUCoreEventReporter _nsURLSessionTaskNameForState:](SUCoreEventReporter, "_nsURLSessionTaskNameForState:", [v16 state]);
                v25 = v4;
                v26 = [*(v4 + 3824) sharedLogger];
                v27 = [v26 oslog];

                v28 = os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);
                if (v18)
                {
                  if (v28)
                  {
                    v33 = [v18 summary];
                    *buf = 138543874;
                    v50 = v17;
                    v51 = 2114;
                    v52 = v22;
                    v53 = 2114;
                    v54 = v33;
                    _os_log_error_impl(&dword_1E0F71000, v27, OS_LOG_TYPE_ERROR, "[EVENT_REPORTER] SYNCHRONIZING | ignoring NSURLSession task for fileUUID:%{public}@, state:%{public}@ - no longer on the filesystem | active:%{public}@", buf, 0x20u);
                  }

                  [a1[6] _removeActiveEventForFileUUID:v17];
                }

                else
                {
                  if (v28)
                  {
                    *buf = v40;
                    v50 = v17;
                    v51 = 2114;
                    v52 = v22;
                    _os_log_error_impl(&dword_1E0F71000, v27, OS_LOG_TYPE_ERROR, "[EVENT_REPORTER] SYNCHRONIZING | ignoring NSURLSession task for fileUUID:%{public}@, state:%{public}@ - no longer on the filesystem", buf, 0x16u);
                  }
                }

                v4 = v25;
                v10 = v41;
              }

              goto LABEL_37;
            }
          }

          v24 = [*(v4 + 3824) sharedLogger];
          v18 = [v24 oslog];

          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            __61__SUCoreEventReporter__synchronizeWithNSURLSessionExpecting___block_invoke_2_cold_1(&v43, v44, v18);
          }

LABEL_37:
        }

        v13 = [v10 countByEnumeratingWithState:&v45 objects:v55 count:16];
        if (!v13)
        {
          v2 = v42;
          break;
        }
      }
    }
  }

  else
  {
    v34 = +[SUCoreLog sharedLogger];
    v10 = [v34 oslog];

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E0F71000, v10, OS_LOG_TYPE_DEFAULT, "[EVENT_REPORTER] SYNCHRONIZING | ...getAllTasksWithCompletionHandler | no in-flight events", buf, 2u);
    }
  }

  if (v2 && [(__CFString *)v2 count])
  {
    v35 = [*(v4 + 3824) sharedLogger];
    v36 = [v35 oslog];

    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E0F71000, v36, OS_LOG_TYPE_DEFAULT, "[EVENT_REPORTER] SYNCHRONIZING | retrying events discovered on the filesystem", buf, 2u);
    }

    [a1[6] _sendInterruptedFromStorage:v2];
  }

  else
  {
    v37 = [*(v4 + 3824) sharedLogger];
    v38 = [v37 oslog];

    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E0F71000, v38, OS_LOG_TYPE_DEFAULT, "[EVENT_REPORTER] SYNCHRONIZING | no events to retry", buf, 2u);
    }
  }

  v39 = *MEMORY[0x1E69E9840];
}

- (id)_synchonizeDiscoveredRunning:(id)a3 forActiveEvent:(id)a4 withFileUUIDsToRetry:(id)a5
{
  v28 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = [(SUCoreEventReporter *)self splunkStateQueue];
  dispatch_assert_queue_V2(v11);

  v12 = [v10 taskDescription];
  v13 = [v10 state];

  v14 = [SUCoreEventReporter _nsURLSessionTaskNameForState:v13];
  v15 = +[SUCoreLog sharedLogger];
  v16 = [v15 oslog];

  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    if (v17)
    {
      v18 = [v8 summary];
      v22 = 138543874;
      v23 = v12;
      v24 = 2114;
      v25 = v14;
      v26 = 2114;
      v27 = v18;
      _os_log_impl(&dword_1E0F71000, v16, OS_LOG_TYPE_DEFAULT, "[EVENT_REPORTER] SYNCHRONIZING | tracked NSURLSession task for fileUUID:%{public}@, state:%{public}@ - continuing | active:%{public}@", &v22, 0x20u);
    }

    [v8 setDiscoveredRunningCount:{objc_msgSend(v8, "discoveredRunningCount") + 1}];
    [(SUCoreEventReporter *)self _updateActiveEvent:v8 forFileUUID:v12];
  }

  else
  {
    if (v17)
    {
      v22 = 138543618;
      v23 = v12;
      v24 = 2114;
      v25 = v14;
      _os_log_impl(&dword_1E0F71000, v16, OS_LOG_TYPE_DEFAULT, "[EVENT_REPORTER] SYNCHRONIZING | untracked NSURLSession task for fileUUID:%{public}@, state:%{public}@ - ignored", &v22, 0x16u);
    }

    v19 = [(SUCoreEventReporter *)self _removeFileUUID:v12 fromFilesToRetry:v9];

    v9 = v19;
  }

  v20 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)_synchonizeDiscoveredSuspended:(id)a3 forActiveEvent:(id)a4 withFileUUIDsToRetry:(id)a5
{
  v27 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(SUCoreEventReporter *)self splunkStateQueue];
  dispatch_assert_queue_V2(v11);

  v12 = [v8 taskDescription];
  v13 = +[SUCoreEventReporter _nsURLSessionTaskNameForState:](SUCoreEventReporter, "_nsURLSessionTaskNameForState:", [v8 state]);
  v14 = +[SUCoreLog sharedLogger];
  v15 = [v14 oslog];

  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (v16)
    {
      v17 = [v9 summary];
      v21 = 138543874;
      v22 = v12;
      v23 = 2114;
      v24 = v13;
      v25 = 2114;
      v26 = v17;
      _os_log_impl(&dword_1E0F71000, v15, OS_LOG_TYPE_DEFAULT, "[EVENT_REPORTER] SYNCHRONIZING | tracked NSURLSession task for fileUUID:%{public}@, state:%{public}@ - resuming | active:%{public}@", &v21, 0x20u);
    }

    [v9 setDiscoveredSuspendedCount:{objc_msgSend(v9, "discoveredSuspendedCount") + 1}];
    [v8 resume];
    [(SUCoreEventReporter *)self _updateActiveEvent:v9 forFileUUID:v12];
  }

  else
  {
    if (v16)
    {
      v21 = 138543618;
      v22 = v12;
      v23 = 2114;
      v24 = v13;
      _os_log_impl(&dword_1E0F71000, v15, OS_LOG_TYPE_DEFAULT, "[EVENT_REPORTER] SYNCHRONIZING | untracked NSURLSession task for fileUUID:%{public}@, state:%{public}@ - ignored", &v21, 0x16u);
    }

    v18 = [(SUCoreEventReporter *)self _removeFileUUID:v12 fromFilesToRetry:v10];

    v10 = v18;
  }

  v19 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)_synchonizeDiscoveredCanceling:(id)a3 forActiveEvent:(id)a4 withFileUUIDsToRetry:(id)a5
{
  v28 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = [(SUCoreEventReporter *)self splunkStateQueue];
  dispatch_assert_queue_V2(v11);

  v12 = [v10 taskDescription];
  v13 = [v10 state];

  v14 = [SUCoreEventReporter _nsURLSessionTaskNameForState:v13];
  v15 = +[SUCoreLog sharedLogger];
  v16 = [v15 oslog];

  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    if (v17)
    {
      v18 = [v8 summary];
      v22 = 138543874;
      v23 = v12;
      v24 = 2114;
      v25 = v14;
      v26 = 2114;
      v27 = v18;
      _os_log_impl(&dword_1E0F71000, v16, OS_LOG_TYPE_DEFAULT, "[EVENT_REPORTER] SYNCHRONIZING | tracked NSURLSession task for fileUUID:%{public}@, state:%{public}@ - awaiting didCompleteWithError | active:%{public}@", &v22, 0x20u);
    }

    [v8 setDiscoveredCancelingCount:{objc_msgSend(v8, "discoveredCancelingCount") + 1}];
    [(SUCoreEventReporter *)self _updateActiveEvent:v8 forFileUUID:v12];
  }

  else
  {
    if (v17)
    {
      v22 = 138543618;
      v23 = v12;
      v24 = 2114;
      v25 = v14;
      _os_log_impl(&dword_1E0F71000, v16, OS_LOG_TYPE_DEFAULT, "[EVENT_REPORTER] SYNCHRONIZING | untracked NSURLSession task for fileUUID:%{public}@, state:%{public}@ - ignored", &v22, 0x16u);
    }

    v19 = [(SUCoreEventReporter *)self _removeFileUUID:v12 fromFilesToRetry:v9];

    v9 = v19;
  }

  v20 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)_synchonizeDiscoveredCompleted:(id)a3 forActiveEvent:(id)a4 withFileUUIDsToRetry:(id)a5
{
  v36 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(SUCoreEventReporter *)self splunkStateQueue];
  dispatch_assert_queue_V2(v11);

  v12 = [v8 taskDescription];
  v13 = +[SUCoreEventReporter _nsURLSessionTaskNameForState:](SUCoreEventReporter, "_nsURLSessionTaskNameForState:", [v8 state]);
  if (v9)
  {
    v14 = [v8 error];
    if (v14)
    {
      [v9 setFailedSendCount:{objc_msgSend(v9, "failedSendCount") + 1}];
      v15 = [v9 failedSendCount];
      v16 = +[SUCoreLog sharedLogger];
      v17 = [v16 oslog];

      v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
      if (v15 <= 7)
      {
        if (v18)
        {
          v19 = [v9 summary];
          v30 = 138543874;
          v31 = v12;
          v32 = 2114;
          v33 = v13;
          v34 = 2114;
          v35 = v19;
          _os_log_impl(&dword_1E0F71000, v17, OS_LOG_TYPE_DEFAULT, "[EVENT_REPORTER] SYNCHRONIZING | tracked NSURLSession task for fileUUID:%{public}@, state:%{public}@ [ERROR] - will retry | active:%{public}@", &v30, 0x20u);
        }

        [(SUCoreEventReporter *)self _updateActiveEvent:v9 forFileUUID:v12];
        goto LABEL_17;
      }

      if (v18)
      {
        v26 = [v9 summary];
        v30 = 138543874;
        v31 = v12;
        v32 = 2114;
        v33 = v13;
        v34 = 2114;
        v35 = v26;
        _os_log_impl(&dword_1E0F71000, v17, OS_LOG_TYPE_DEFAULT, "[EVENT_REPORTER] SYNCHRONIZING | tracked NSURLSession task for fileUUID:%{public}@, state:%{public}@ [ERROR] - dropping | active:%{public}@", &v30, 0x20u);
      }

      [(SUCoreEventReporter *)self _removeActiveEventForFileUUID:v12];
    }

    else
    {
      v23 = +[SUCoreLog sharedLogger];
      v24 = [v23 oslog];

      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = [v9 summary];
        v30 = 138543874;
        v31 = v12;
        v32 = 2114;
        v33 = v13;
        v34 = 2114;
        v35 = v25;
        _os_log_impl(&dword_1E0F71000, v24, OS_LOG_TYPE_DEFAULT, "[EVENT_REPORTER] SYNCHRONIZING | tracked NSURLSession task for fileUUID:%{public}@, state:%{public}@ [SUCCESS] - considering done | active:%{public}@", &v30, 0x20u);
      }
    }

    v27 = [(SUCoreEventReporter *)self _removeFileUUID:v12 fromFilesToRetry:v10];

    v10 = v27;
LABEL_17:

    goto LABEL_18;
  }

  v20 = +[SUCoreLog sharedLogger];
  v21 = [v20 oslog];

  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v30 = 138543618;
    v31 = v12;
    v32 = 2114;
    v33 = v13;
    _os_log_impl(&dword_1E0F71000, v21, OS_LOG_TYPE_DEFAULT, "[EVENT_REPORTER] SYNCHRONIZING | untracked NSURLSession task for fileUUID:%{public}@, state:%{public}@ - ignored", &v30, 0x16u);
  }

  v22 = [(SUCoreEventReporter *)self _removeFileUUID:v12 fromFilesToRetry:v10];

  [(SUCoreEventReporter *)self _removeFileUUID:v12 loggingError:1 forReason:@"synchonize discovered Completed"];
  v10 = v22;
LABEL_18:

  v28 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)_synchonizeDiscoveredUnknown:(id)a3 forActiveEvent:(id)a4 withFileUUIDsToRetry:(id)a5
{
  v28 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = [(SUCoreEventReporter *)self splunkStateQueue];
  dispatch_assert_queue_V2(v11);

  v12 = [v10 taskDescription];
  v13 = [v10 state];

  v14 = [SUCoreEventReporter _nsURLSessionTaskNameForState:v13];
  v15 = +[SUCoreLog sharedLogger];
  v16 = [v15 oslog];

  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    if (v17)
    {
      v18 = [v8 summary];
      v22 = 138543874;
      v23 = v12;
      v24 = 2114;
      v25 = v14;
      v26 = 2114;
      v27 = v18;
      _os_log_impl(&dword_1E0F71000, v16, OS_LOG_TYPE_DEFAULT, "[EVENT_REPORTER] SYNCHRONIZING | tracked NSURLSession task for fileUUID:%{public}@, state:%{public}@ - dropping | active:%{public}@", &v22, 0x20u);
    }

    [(SUCoreEventReporter *)self _removeActiveEventForFileUUID:v12];
  }

  else
  {
    if (v17)
    {
      v22 = 138543618;
      v23 = v12;
      v24 = 2114;
      v25 = v14;
      _os_log_impl(&dword_1E0F71000, v16, OS_LOG_TYPE_DEFAULT, "[EVENT_REPORTER] SYNCHRONIZING | untracked NSURLSession task for fileUUID:%{public}@, state:%{public}@ - ignored", &v22, 0x16u);
    }
  }

  v19 = [(SUCoreEventReporter *)self _removeFileUUID:v12 fromFilesToRetry:v9];

  v20 = *MEMORY[0x1E69E9840];

  return v19;
}

- (id)_alignPersistedStateWithExistingFileUUIDs:(id)a3
{
  v4 = a3;
  v5 = [(SUCoreEventReporter *)self splunkStateQueue];
  dispatch_assert_queue_V2(v5);

  v6 = v4;
  v7 = [(SUCoreEventReporter *)self activeEventsState];
  v8 = [v7 dictionaryForKey:@"ActiveEventsState"];

  v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __65__SUCoreEventReporter__alignPersistedStateWithExistingFileUUIDs___block_invoke;
  v19 = &unk_1E86FC4B0;
  v10 = v6;
  v20 = v10;
  v21 = v9;
  v11 = v9;
  [v8 enumerateKeysAndObjectsUsingBlock:&v16];
  v12 = [(SUCoreEventReporter *)self activeEventsState:v16];
  [v12 persistDictionary:v11 forKey:@"ActiveEventsState"];

  v13 = v21;
  v14 = v10;

  return v10;
}

void __65__SUCoreEventReporter__alignPersistedStateWithExistingFileUUIDs___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v7 = v5;
    v8 = [[SUCoreEventReporterActive alloc] initFromArchivedData:v6];
    v9 = [*(a1 + 32) containsObject:v7];
    v10 = +[SUCoreLog sharedLogger];
    v11 = [v10 oslog];

    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (v9)
    {
      if (v12)
      {
        v13 = [v8 summary];
        v17 = 138543618;
        v18 = v7;
        v19 = 2114;
        v20 = v13;
        _os_log_impl(&dword_1E0F71000, v11, OS_LOG_TYPE_DEFAULT, "[EVENT_REPORTER] SYNCHRONIZING | aligning fileUUID:%{public}@ - on filesystem and persisted | active:%{public}@", &v17, 0x16u);
      }

      [*(a1 + 40) setSafeObject:v6 forKey:v7];
    }

    else
    {
      if (v12)
      {
        v15 = [v8 summary];
        v17 = 138543618;
        v18 = v7;
        v19 = 2114;
        v20 = v15;
        _os_log_impl(&dword_1E0F71000, v11, OS_LOG_TYPE_DEFAULT, "[EVENT_REPORTER] SYNCHRONIZING | aligning fileUUID:%{public}@ - no longer on filesystem, dropping | active:%{public}@", &v17, 0x16u);
      }
    }
  }

  else
  {
    v14 = +[SUCoreLog sharedLogger];
    v7 = [v14 oslog];

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __65__SUCoreEventReporter__alignPersistedStateWithExistingFileUUIDs___block_invoke_cold_1(v7);
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (id)_removeFileUUID:(id)a3 fromFilesToRetry:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SUCoreEventReporter *)self splunkStateQueue];
  dispatch_assert_queue_V2(v8);

  v9 = v7;
  v10 = v9;
  if (v9 && [v9 count] && objc_msgSend(v10, "count"))
  {
    v11 = 0;
    while (1)
    {
      v12 = [v10 objectAtIndex:v11];
      if ([SUCore stringIsEqual:v6 to:v12])
      {
        break;
      }

      if (++v11 >= [v10 count])
      {
        goto LABEL_9;
      }
    }

    [v10 removeObjectAtIndex:v11];
  }

LABEL_9:

  return v10;
}

- (id)_activeEventForFileUUID:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(SUCoreEventReporter *)self splunkStateQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(SUCoreEventReporter *)self activeEventsState];
  v7 = [v6 dictionaryForKey:@"ActiveEventsState"];

  if (v7 && ([v7 safeObjectForKey:v4 ofClass:objc_opt_class()], (v8 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v9 = v8;
    v10 = [[SUCoreEventReporterActive alloc] initFromArchivedData:v8];

    if (v10)
    {
      v11 = +[SUCoreLog sharedLogger];
      v12 = [v11 oslog];

      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [v10 summary];
        v16 = 138543618;
        v17 = v4;
        v18 = 2114;
        v19 = v13;
        _os_log_impl(&dword_1E0F71000, v12, OS_LOG_TYPE_DEFAULT, "[EVENT_REPORTER] ACTIVE | found active event for fileUUID:%{public}@ | activeEvent:%{public}@", &v16, 0x16u);
      }
    }
  }

  else
  {
    v10 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];

  return v10;
}

- (void)_updateActiveEvent:(id)a3 forFileUUID:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(SUCoreEventReporter *)self splunkStateQueue];
  dispatch_assert_queue_V2(v8);

  v9 = [(SUCoreEventReporter *)self activeEventsState];
  v10 = [v9 dictionaryForKey:@"ActiveEventsState"];
  v11 = [v10 mutableCopy];

  if (!v11)
  {
    v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v12 = [v6 toArchivedData];
  [v11 setSafeObject:v12 forKey:v7];

  v13 = [(SUCoreEventReporter *)self activeEventsState];
  [v13 persistDictionary:v11 forKey:@"ActiveEventsState"];

  v14 = +[SUCoreLog sharedLogger];
  v15 = [v14 oslog];

  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [v6 summary];
    v18 = 138543618;
    v19 = v7;
    v20 = 2114;
    v21 = v16;
    _os_log_impl(&dword_1E0F71000, v15, OS_LOG_TYPE_DEFAULT, "[EVENT_REPORTER] ACTIVE | updated active event for fileUUID:%{public}@ | activeEvent:%{public}@", &v18, 0x16u);
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)_removeActiveEventForFileUUID:(id)a3
{
  v9 = a3;
  v4 = [(SUCoreEventReporter *)self splunkStateQueue];
  dispatch_assert_queue_V2(v4);

  v5 = [(SUCoreEventReporter *)self activeEventsState];
  v6 = [v5 dictionaryForKey:@"ActiveEventsState"];
  v7 = [v6 mutableCopy];

  if (v7)
  {
    [v7 removeObjectForKey:v9];
    v8 = [(SUCoreEventReporter *)self activeEventsState];
    [v8 persistDictionary:v7 forKey:@"ActiveEventsState"];
  }
}

- (id)_getSplunkServerURL:(id)a3
{
  v4 = [a3 serverURL];
  if (!v4)
  {
    v4 = [(SUCoreEventReporter *)self splunkURL];
  }

  return v4;
}

- (id)_getSplunkRequestForURL:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = [MEMORY[0x1E696AD68] requestWithURL:v3];
    v5 = v4;
    if (v4)
    {
      [v4 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
      [v5 setHTTPMethod:@"POST"];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_newScrubbedEvents:(id)a3
{
  v4 = a3;
  if (v4 && (v5 = objc_opt_new()) != 0)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __42__SUCoreEventReporter__newScrubbedEvents___block_invoke;
    v8[3] = &unk_1E86FC4D8;
    v8[4] = self;
    v6 = v5;
    v9 = v6;
    [v4 enumerateObjectsUsingBlock:v8];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __42__SUCoreEventReporter__newScrubbedEvents___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _copyEscapeStringsForEventData:a2];
  [*(a1 + 40) addObject:v3];
}

- (id)_copyEscapeStringsForEventData:(id)a3
{
  v3 = MEMORY[0x1E696AD48];
  v4 = a3;
  v5 = [v3 characterSetWithCharactersInString:@"%\\""];
  v6 = [MEMORY[0x1E696AB08] controlCharacterSet];
  [v5 formUnionWithCharacterSet:v6];

  v7 = [MEMORY[0x1E696AB08] newlineCharacterSet];
  [v5 formUnionWithCharacterSet:v7];

  v8 = [MEMORY[0x1E696AD48] characterSetWithRange:{0, 127}];
  v9 = [v5 invertedSet];
  [v8 formIntersectionWithCharacterSet:v9];

  v10 = [v4 allKeys];
  v11 = [MEMORY[0x1E695DFB0] null];
  v12 = [v4 objectsForKeys:v10 notFoundMarker:v11];

  v13 = [v12 mutableCopy];
  v19 = MEMORY[0x1E69E9820];
  v20 = 3221225472;
  v21 = __54__SUCoreEventReporter__copyEscapeStringsForEventData___block_invoke;
  v22 = &unk_1E86FC500;
  v23 = v13;
  v24 = v8;
  v14 = v8;
  v15 = v13;
  [v15 enumerateObjectsUsingBlock:&v19];
  v16 = objc_alloc(MEMORY[0x1E695DF20]);
  v17 = [v16 initWithObjects:v15 forKeys:{v10, v19, v20, v21, v22}];

  return v17;
}

void __54__SUCoreEventReporter__copyEscapeStringsForEventData___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v10 = a2;
  *a4 = 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v10 stringByReplacingOccurrencesOfString:@"=" withString:@":"];
    v8 = *(a1 + 32);
    v9 = [v7 stringByAddingPercentEncodingWithAllowedCharacters:*(a1 + 40)];
    [v8 replaceObjectAtIndex:a3 withObject:v9];
  }
}

+ (id)_errorDomainAbbreviation:(id)a3
{
  v3 = a3;
  if (([(__CFString *)v3 isEqualToString:@"com.apple.softwareupdateservices.errors"]& 1) != 0)
  {
    v4 = @"SUS";
  }

  else if (([(__CFString *)v3 isEqualToString:@"SUControllerError"]& 1) != 0)
  {
    v4 = @"SUC";
  }

  else if (([(__CFString *)v3 isEqualToString:@"SUBError"]& 1) != 0)
  {
    v4 = @"SUB";
  }

  else if (([(__CFString *)v3 isEqualToString:@"BridgeOSSoftwareUpdateError"]& 1) != 0)
  {
    v4 = @"BSU";
  }

  else if (([(__CFString *)v3 isEqualToString:@"MobileSoftwareUpdateErrorDomain"]& 1) != 0)
  {
    v4 = @"MSU";
  }

  else if (([(__CFString *)v3 isEqualToString:@"ASError"]& 1) != 0)
  {
    v4 = @"AS";
  }

  else
  {
    v4 = v3;
    if (![(__CFString *)v3 isEqualToString:@"MobileAssetError"])
    {
      goto LABEL_16;
    }

    v4 = @"MA";
  }

LABEL_16:

  return v4;
}

- (id)_getJSONDataFromPayload:(id)a3 withFileUUID:(id)a4 forEventUUID:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:v7])
  {
    v18 = 0;
    v10 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v7 options:0 error:&v18];
    v11 = v18;
    if (!v10)
    {
      v12 = +[SUCoreDiag sharedDiag];
      v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"unable to serialize data into JSON [UUID: %@] file: %@", v9, v8];
      if (v11)
      {
        v14 = [v11 code];
      }

      else
      {
        v14 = 8106;
      }

      [v12 trackError:@"[EVENT_REPORTER] DROP" forReason:v13 withResult:v14 withError:v11];
    }
  }

  else
  {
    v15 = +[SUCoreDiag sharedDiag];
    v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"encountered invalid JSON payload [UUID: %@] file: %@", v9, v8];
    [v15 trackError:@"[EVENT_REPORTER] DROP" forReason:v16 withResult:8107 withError:0];

    v10 = 0;
  }

  return v10;
}

- (id)_storeJSONData:(id)a3 withFileUUID:(id)a4 forEventUUID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(SUCoreEventReporter *)self splunkStateQueue];
  dispatch_assert_queue_V2(v11);

  v12 = MEMORY[0x1E695DFF8];
  v13 = [(SUCoreEventReporter *)self storeToPath];
  v14 = [v13 stringByAppendingPathComponent:v9];
  v15 = [v12 fileURLWithPath:v14];

  if (v15)
  {
    v25 = 0;
    v16 = [v8 writeToURL:v15 options:1 error:&v25];
    v17 = v25;
    v18 = v17;
    if (!v16 || v17)
    {
      v19 = +[SUCoreDiag sharedDiag];
      v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"failed to write JSON data to file [UUID: %@] file: %@", v10, v9];
      if (v18)
      {
        v21 = [v18 code];
      }

      else
      {
        v21 = 8109;
      }

      [v19 trackError:@"[EVENT_REPORTER] DROP" forReason:v20 withResult:v21 withError:v18];

      [(SUCoreEventReporter *)self _removeFileUUID:v9 loggingError:0 forReason:@"failed to write JSON data"];
      v15 = 0;
    }
  }

  else
  {
    v22 = +[SUCoreDiag sharedDiag];
    v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"failed to form JSON data file [UUID: %@] file: %@", v10, v9];
    [v22 trackAnomaly:@"[EVENT_REPORTER] DROP" forReason:v23 withResult:8100 withError:0];

    v15 = 0;
  }

  return v15;
}

- (BOOL)_storeServerURLMetadata:(id)a3 toFileUUID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SUCoreEventReporter *)self splunkStateQueue];
  dispatch_assert_queue_V2(v8);

  v9 = MEMORY[0x1E695DFF8];
  v10 = [(SUCoreEventReporter *)self storeToPath];
  v11 = [v10 stringByAppendingPathComponent:v7];
  v12 = [v9 fileURLWithPath:v11];

  if (!v12)
  {
    v14 = +[SUCoreDiag sharedDiag];
    v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"failed to create file: %@ for attaching of serverURL metadata", v7];
    [v14 trackAnomaly:@"[EVENT_REPORTER] DROP" forReason:v15 withResult:8100 withError:0];
    v13 = 0;
    goto LABEL_5;
  }

  v13 = +[SUCore setFileMetadata:forKey:value:](SUCore, "setFileMetadata:forKey:value:", [v12 fileSystemRepresentation], @"SUCoreEventReporterServerURL", v6);
  if (!v13)
  {
    v14 = +[SUCoreDiag sharedDiag];
    v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"failed to add serverURL metadata to file: %@", v7];
    [v14 trackError:@"[EVENT_REPORTER] DROP" forReason:v15 withResult:8109 withError:0];
LABEL_5:
  }

  return v13;
}

- (void)_removeFileUUID:(id)a3 loggingError:(BOOL)a4 forReason:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v10 = [(SUCoreEventReporter *)self splunkStateQueue];
  dispatch_assert_queue_V2(v10);

  v11 = [(SUCoreEventReporter *)self storeToPath];
  v12 = [v11 stringByAppendingPathComponent:v8];

  v13 = [MEMORY[0x1E696AC08] defaultManager];
  v19 = 0;
  v14 = [v13 removeItemAtPath:v12 error:&v19];
  v15 = v19;

  if ((v14 & 1) == 0 && v6)
  {
    v16 = +[SUCoreDiag sharedDiag];
    v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@ - could not remove event file: %@", v9, v12];
    if (v15)
    {
      v18 = [v15 code];
    }

    else
    {
      v18 = 8110;
    }

    [v16 trackAnomaly:@"[EVENT_REPORTER] REMOVE" forReason:v17 withResult:v18 withError:v15];
  }

  [(SUCoreEventReporter *)self _removeActiveEventForFileUUID:v8];
}

- (void)_incrementActiveSendCount:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(SUCoreEventReporter *)self splunkStateQueue];
  dispatch_assert_queue_V2(v5);

  if ([(SUCoreEventReporter *)self activeSendTaskCount]<= 127)
  {
    [(SUCoreEventReporter *)self setActiveSendTaskCount:[(SUCoreEventReporter *)self activeSendTaskCount]+ 1];
    v6 = +[SUCoreLog sharedLogger];
    v7 = [v6 oslog];

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [(SUCoreEventReporter *)self activeSendTaskCount];
      v9 = [(SUCoreEventReporter *)self awaitingRetry];
      v11 = 138543874;
      v12 = v4;
      v13 = 1024;
      v14 = v8;
      v15 = 2048;
      v16 = [v9 count];
      _os_log_impl(&dword_1E0F71000, v7, OS_LOG_TYPE_DEFAULT, "[EVENT_REPORTER] IDLE_TRACK | %{public}@ - activeSendTaskCount:%d, awaitingRetry:%lu", &v11, 0x1Cu);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_decrementActiveSendCount
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = [(SUCoreEventReporter *)self splunkStateQueue];
  dispatch_assert_queue_V2(v3);

  if ([(SUCoreEventReporter *)self activeSendTaskCount]>= 1)
  {
    [(SUCoreEventReporter *)self setActiveSendTaskCount:[(SUCoreEventReporter *)self activeSendTaskCount]- 1];
    v4 = +[SUCoreLog sharedLogger];
    v5 = [v4 oslog];

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [(SUCoreEventReporter *)self activeSendTaskCount];
      v7 = [(SUCoreEventReporter *)self awaitingRetry];
      v9[0] = 67109376;
      v9[1] = v6;
      v10 = 2048;
      v11 = [v7 count];
      _os_log_impl(&dword_1E0F71000, v5, OS_LOG_TYPE_DEFAULT, "[EVENT_REPORTER] IDLE_TRACK | decrement active - activeSendTaskCount:%d, awaitingRetry:%lu", v9, 0x12u);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_checkWhetherIdle:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(SUCoreEventReporter *)self splunkStateQueue];
  dispatch_assert_queue_V2(v5);

  if (![(SUCoreEventReporter *)self activeSendTaskCount])
  {
    v6 = [(SUCoreEventReporter *)self awaitingRetry];
    if ([v6 count])
    {
    }

    else
    {
      v12 = [(SUCoreEventReporter *)self onceIdleCompletion];

      if (v12)
      {
        v13 = +[SUCoreLog sharedLogger];
        v14 = [v13 oslog];

        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = [(SUCoreEventReporter *)self activeSendTaskCount];
          v16 = [(SUCoreEventReporter *)self awaitingRetry];
          *buf = 138543874;
          v24 = v4;
          v25 = 1024;
          v26 = v15;
          v27 = 2048;
          v28 = [v16 count];
          _os_log_impl(&dword_1E0F71000, v14, OS_LOG_TYPE_DEFAULT, "[EVENT_REPORTER] IDLE_TRACK | now idle (%{public}@) - activeSendTaskCount:%d, awaitingRetry:%lu", buf, 0x1Cu);
        }

        v17 = [(SUCoreEventReporter *)self onceIdleCompletion];
        [(SUCoreEventReporter *)self setOnceIdleCompletion:0];
        v18 = +[SUCore sharedCore];
        v19 = [v18 completionQueue];
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __41__SUCoreEventReporter__checkWhetherIdle___block_invoke;
        block[3] = &unk_1E86FC528;
        v22 = v17;
        v9 = v17;
        dispatch_async(v19, block);

        goto LABEL_11;
      }
    }
  }

  v7 = [(SUCoreEventReporter *)self onceIdleCompletion];

  if (v7)
  {
    v8 = +[SUCoreLog sharedLogger];
    v9 = [v8 oslog];

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [(SUCoreEventReporter *)self activeSendTaskCount];
      v11 = [(SUCoreEventReporter *)self awaitingRetry];
      *buf = 138543874;
      v24 = v4;
      v25 = 1024;
      v26 = v10;
      v27 = 2048;
      v28 = [v11 count];
      _os_log_impl(&dword_1E0F71000, v9, OS_LOG_TYPE_DEFAULT, "[EVENT_REPORTER] IDLE_TRACK | not idle (%{public}@) - activeSendTaskCount:%d, awaitingRetry:%lu", buf, 0x1Cu);
    }

LABEL_11:
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)handleSendFinishedWithFileUUID:(id)a3 sendSucceeded:(BOOL)a4 withStatusCode:(int64_t)a5 withError:(id)a6
{
  v10 = a3;
  v11 = a6;
  v12 = [(SUCoreEventReporter *)self splunkStateQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __93__SUCoreEventReporter_handleSendFinishedWithFileUUID_sendSucceeded_withStatusCode_withError___block_invoke;
  block[3] = &unk_1E86FC550;
  block[4] = self;
  v16 = v10;
  v19 = a4;
  v17 = v11;
  v18 = a5;
  v13 = v11;
  v14 = v10;
  dispatch_async(v12, block);
}

uint64_t __93__SUCoreEventReporter_handleSendFinishedWithFileUUID_sendSucceeded_withStatusCode_withError___block_invoke(uint64_t a1)
{
  v53 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) _decrementActiveSendCount];
  if (!*(a1 + 40))
  {
    v7 = +[SUCoreDiag sharedDiag];
    v8 = objc_alloc(MEMORY[0x1E696AEC0]);
    v9 = @"failed";
    if (*(a1 + 64))
    {
      v9 = @"succeeded";
    }

    v10 = [v8 initWithFormat:@"callback [send %@ (status=%ld)] without file UUID - event file may be left on filesystem", v9, *(a1 + 56)];
    v11 = *(a1 + 48);
    if (v11)
    {
      v12 = [v11 code];
      v13 = *(a1 + 48);
    }

    else
    {
      v13 = 0;
      v12 = *(a1 + 56);
    }

    [v7 trackError:@"[EVENT_REPORTER] SEND_FINISHED" forReason:v10 withResult:v12 withError:v13];

    goto LABEL_35;
  }

  v2 = *(a1 + 48);
  if (*(a1 + 64) != 1)
  {
    v14 = +[SUCoreDiag sharedDiag];
    v15 = objc_alloc(MEMORY[0x1E696AEC0]);
    v16 = *(a1 + 56);
    v17 = [v15 initWithFormat:@"failed to send event (status=%ld) validated file: %@", v16, *(a1 + 40)];
    if (v2)
    {
      v18 = [*(a1 + 48) code];
      v19 = *(a1 + 48);
      v20 = v14;
      v21 = v17;
    }

    else
    {
      v20 = v14;
      v21 = v17;
      v18 = 8202;
      v19 = 0;
    }

    [v20 trackError:@"[EVENT_REPORTER] SEND_FINISHED" forReason:v21 withResult:v18 withError:v19];

    v7 = [*(a1 + 32) _activeEventForFileUUID:*(a1 + 40)];
    if ([*(a1 + 32) dropEventsOnSendFailure])
    {
      v22 = +[SUCoreLog sharedLogger];
      v23 = [v22 oslog];

      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = *(a1 + 40);
        v25 = [v7 summary];
        *buf = 138543618;
        v48 = v24;
        v49 = 2114;
        v50 = v25;
        _os_log_impl(&dword_1E0F71000, v23, OS_LOG_TYPE_DEFAULT, "[EVENT_REPORTER] SEND_FINISHED | FAILURE | event for fileUUID:%{public}@ failed to be sent (dropped) | active:%{public}@", buf, 0x16u);
      }

      v26 = *(a1 + 32);
      v27 = *(a1 + 40);
      v28 = @"dropping on failed send";
    }

    else
    {
      [v7 setFailedSendCount:{objc_msgSend(v7, "failedSendCount") + 1}];
      v29 = [v7 failedSendCount];
      v30 = +[SUCoreLog sharedLogger];
      v31 = [v30 oslog];

      v32 = os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT);
      if (v29 <= 7)
      {
        if (v32)
        {
          v33 = *(a1 + 40);
          v34 = [v7 summary];
          *buf = 138543618;
          v48 = v33;
          v49 = 2114;
          v50 = v34;
          _os_log_impl(&dword_1E0F71000, v31, OS_LOG_TYPE_DEFAULT, "[EVENT_REPORTER] SEND_FINISHED | FAILURE | event for fileUUID:%{public}@ failed to be sent (will retry) | active:%{public}@", buf, 0x16u);
        }

        [*(a1 + 32) _updateActiveEvent:v7 forFileUUID:*(a1 + 40)];
        [*(a1 + 32) _awaitRetryingFileUUID:*(a1 + 40)];
        goto LABEL_35;
      }

      if (v32)
      {
        v43 = *(a1 + 40);
        v44 = [v7 summary];
        *buf = 138543618;
        v48 = v43;
        v49 = 2114;
        v50 = v44;
        _os_log_impl(&dword_1E0F71000, v31, OS_LOG_TYPE_DEFAULT, "[EVENT_REPORTER] SEND_FINISHED | FAILURE | event for fileUUID:%{public}@ failed to be sent (max retries) | active:%{public}@", buf, 0x16u);
      }

      v26 = *(a1 + 32);
      v27 = *(a1 + 40);
      v28 = @"dropping on failed send (max retries)";
    }

    [v26 _removeFileUUID:v27 loggingError:1 forReason:v28];
    [*(a1 + 32) _sendFirstAwaitingRetry];
LABEL_35:

    goto LABEL_36;
  }

  if (!v2 && *(a1 + 56) == 200)
  {
    goto LABEL_28;
  }

  v3 = +[SUCoreDiag sharedDiag];
  v4 = *(a1 + 48);
  if (v4)
  {
    v5 = [v4 code];
    v6 = *(a1 + 48);
  }

  else
  {
    v6 = 0;
    v5 = *(a1 + 56);
  }

  [v3 trackAnomaly:@"[EVENT_REPORTER] SEND_FINISHED" forReason:@"callback where send considered successful yet may not have been [completely sent]" withResult:v5 withError:v6];

  if (*(a1 + 48))
  {
    v35 = +[SUCoreLog sharedLogger];
    v36 = [v35 oslog];

    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      v37 = *(a1 + 56);
      v38 = *(a1 + 40);
      v39 = [*(a1 + 48) checkedDescription];
      *buf = 134218498;
      v48 = v37;
      v49 = 2114;
      v50 = v38;
      v51 = 2114;
      v52 = v39;
      _os_log_impl(&dword_1E0F71000, v36, OS_LOG_TYPE_DEFAULT, "[EVENT_REPORTER] SEND_FINISHED | SUCCESS (with error) | sent event (status=%ld) validated file: %{public}@, error: %{public}@", buf, 0x20u);
    }
  }

  else
  {
LABEL_28:
    v40 = +[SUCoreLog sharedLogger];
    v36 = [v40 oslog];

    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      v41 = *(a1 + 56);
      v42 = *(a1 + 40);
      *buf = 134218242;
      v48 = v41;
      v49 = 2114;
      v50 = v42;
      _os_log_impl(&dword_1E0F71000, v36, OS_LOG_TYPE_DEFAULT, "[EVENT_REPORTER] SEND_FINISHED | SUCCESS | sent event (status=%ld) validated file: %{public}@", buf, 0x16u);
    }
  }

  [*(a1 + 32) _removeFileUUID:*(a1 + 40) loggingError:1 forReason:@"send finished"];
  [*(a1 + 32) _sendAllAwaitingRetry];
LABEL_36:
  result = [*(a1 + 32) _checkWhetherIdle:@"send finished"];
  v46 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)handleSendFinishedInvalidFileUUID:(id)a3 withError:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SUCoreEventReporter *)self splunkStateQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__SUCoreEventReporter_handleSendFinishedInvalidFileUUID_withError___block_invoke;
  block[3] = &unk_1E86FC460;
  v12 = v6;
  v13 = v7;
  v14 = self;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

uint64_t __67__SUCoreEventReporter_handleSendFinishedInvalidFileUUID_withError___block_invoke(uint64_t a1)
{
  v2 = +[SUCoreDiag sharedDiag];
  v3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"send callback fileUUID invalid (%@) - event file may be left on filesystem", *(a1 + 32)];
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = [v4 code];
    v6 = *(a1 + 40);
  }

  else
  {
    v6 = 0;
    v5 = 8204;
  }

  [v2 trackError:@"[EVENT_REPORTER] SEND_FINISHED" forReason:v3 withResult:v5 withError:v6];

  [*(a1 + 48) _decrementActiveSendCount];
  v7 = *(a1 + 48);

  return [v7 _checkWhetherIdle:@"send finished with invalid file UUID"];
}

+ (id)_nsURLSessionTaskNameForState:(int64_t)a3
{
  if (a3 >= 4)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"NSURLSessionTaskState(%d)", a3];
  }

  else
  {
    v4 = off_1E86FC570[a3];
  }

  return v4;
}

void __61__SUCoreEventReporter__synchronizeWithNSURLSessionExpecting___block_invoke_2_cold_1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_1E0F71000, log, OS_LOG_TYPE_ERROR, "[EVENT_REPORTER] SYNCHRONIZING | ignoring NSURLSession task without appropriate description", buf, 2u);
}

@end