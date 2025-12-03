@interface WAClient
+ (id)WANetworkAuthFlagsLabel:(signed __int16)label;
+ (id)WANetworkHighestAuthFlagsLabel:(signed __int16)label;
+ (id)ouiFromThreeBytes:(unsigned __int8)bytes[3];
+ (id)sharedClientWithIdentifier:(id)identifier;
- (NSMutableDictionary)configuredMessageIdentifiers;
- (NSMutableDictionary)interestedMessageIdentifiers;
- (WAClient)init;
- (id)_getConnectionIssueHandlerBlock;
- (id)_initPrivate;
- (int64_t)_writeWiFiAnalyticsMessageToJSONFile:(id)file metricInfo:(id)info;
- (void)_clearMessageStoreAndReply:(id)reply queuedInvocation:(id)invocation;
- (void)_connectionRecovered;
- (void)_connectionRecoveryTick;
- (void)_connectionTimedOut;
- (void)_dequeueInvocation:(id)invocation;
- (void)_establishDaemonConnection;
- (void)_getDeviceAnalyticsConfigurationAndReply:(id)reply queuedInvocation:(id)invocation;
- (void)_getDpsStatsandReply:(id)reply queuedInvocation:(id)invocation;
- (void)_getMessagesModelForGroupType:(int64_t)type andReply:(id)reply queuedInvocation:(id)invocation;
- (void)_getNewMessageForKey:(id)key groupType:(int64_t)type withCopy:(id)copy andReply:(id)reply queuedInvocation:(id)invocation;
- (void)_getUsageStatsandReply:(id)reply queuedInvocation:(id)invocation;
- (void)_issueIOReportManagementCommand:(unint64_t)command andReply:(id)reply queuedInvocation:(id)invocation;
- (void)_killDaemonAndReply:(id)reply queuedInvocation:(id)invocation;
- (void)_lqmCrashTracerNotifyForInterfaceWithName:(id)name andReply:(id)reply queuedInvocation:(id)invocation;
- (void)_lqmCrashTracerReceiveBlock:(id)block forInterfaceWithName:(id)name andReply:(id)reply queuedInvocation:(id)invocation;
- (void)_processManagedFault:(id)fault at:(id)at andReply:(id)reply queuedInvocation:(id)invocation;
- (void)_processWAMessageForCoreAnalytics:(id)analytics;
- (void)_registerMessageGroup:(int64_t)group andReply:(id)reply queuedInvocation:(id)invocation;
- (void)_removeAllQueuedInvocations;
- (void)_replyAllWithTimeoutErrorAndRemove;
- (void)_reregister;
- (void)_sendMemoryPressureRequestAndReply:(id)reply queuedInvocation:(id)invocation;
- (void)_setDeviceAnalyticsConfiguration:(id)configuration andReply:(id)reply queuedInvocation:(id)invocation;
- (void)_signalPotentialNewIORChannelsAndReply:(id)reply queuedInvocation:(id)invocation;
- (void)_startConnectionRecovery;
- (void)_submitMessage:(id)message groupType:(int64_t)type andReply:(id)reply queuedInvocation:(id)invocation;
- (void)_trapCrashMiniTracerDumpReadyForInterfaceWithName:(id)name andReply:(id)reply queuedInvocation:(id)invocation;
- (void)_triggerDatapathDiagnosticsAndCollectUpdates:(int64_t)updates waMessage:(id)message andReply:(id)reply queuedInvocation:(id)invocation;
- (void)_triggerDeviceAnalyticsStoreMigrationAndReply:(id)reply queuedInvocation:(id)invocation;
- (void)_triggerQueryForNWActivity:(int64_t)activity andReply:(id)reply queuedInvocation:(id)invocation;
- (void)_triggerQueryForNWActivityWithPeers:(id)peers andReply:(id)reply queuedInvocation:(id)invocation;
- (void)_updateRoamPoliciesForSourceBssid:(id)bssid andUpdateRoamCache:(BOOL)cache andReply:(id)reply queuedInvocation:(id)invocation;
- (void)_wakeUpNotificationForThisClientReceived:(id)received;
- (void)convertWiFiStatsIntoPercentile:(id)percentile analysisGroup:(int64_t)group groupTarget:(id)target andReply:(id)reply queuedInvocation:(id)invocation;
- (void)dealloc;
- (void)fakeDaemonConnectionDead:(unsigned __int8)dead;
- (void)getNewMessageForKey:(id)key groupType:(int64_t)type andReply:(id)reply;
- (void)resetDeviceAnalyticsConfigurationAndReply:(id)reply;
- (void)setConfiguredMessageIdentifiers:(id)identifiers;
- (void)setDeviceAnalyticsConfiguration:(id)configuration andReply:(id)reply;
- (void)setInterestedMessageIdentifiers:(id)identifiers;
- (void)submitWiFiAnalytics:(id)analytics data:(id)data;
- (void)submitWiFiAnalyticsMessageAdvanced:(id)advanced;
- (void)updateRoamPoliciesAndSummarizeAnalyticsForNetwork:(id)network maxAgeInDays:(unint64_t)days andReply:(id)reply queuedInvocation:(id)invocation;
@end

@implementation WAClient

+ (id)sharedClientWithIdentifier:(id)identifier
{
  v16 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__WAClient_sharedClientWithIdentifier___block_invoke;
  block[3] = &unk_1E830D880;
  v4 = identifierCopy;
  v11 = v4;
  if (qword_1EDE5CB18 != -1)
  {
    dispatch_once(&qword_1EDE5CB18, block);
  }

  v5 = _MergedGlobals_5;
  if (!_MergedGlobals_5)
  {
    v6 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v13 = "+[WAClient sharedClientWithIdentifier:]";
      v14 = 1024;
      v15 = 128;
      _os_log_impl(&dword_1C8460000, v6, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed to get WAClient sharedClient instance", buf, 0x12u);
    }

    v5 = _MergedGlobals_5;
  }

  v7 = v5;

  v8 = *MEMORY[0x1E69E9840];
  return v5;
}

void __39__WAClient_sharedClientWithIdentifier___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = [WAUtil getValueForEntitlementForCurrentProcess:@"keychain-access-groups"];
  if (![v2 count])
  {
    v8 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v14 = 136446466;
      v15 = "+[WAClient sharedClientWithIdentifier:]_block_invoke";
      v16 = 1024;
      v17 = 113;
      v9 = "%{public}s::%d:XPC: no keychain-access-groups entries for this client";
      v10 = v8;
      v11 = 18;
LABEL_15:
      _os_log_impl(&dword_1C8460000, v10, OS_LOG_TYPE_ERROR, v9, &v14, v11);
    }

LABEL_16:

    goto LABEL_6;
  }

  if (([v2 containsObject:@"wifianalyticsd"] & 1) == 0)
  {
    v8 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v14 = 136446722;
      v15 = "+[WAClient sharedClientWithIdentifier:]_block_invoke";
      v16 = 1024;
      v17 = 114;
      v18 = 2112;
      v19 = @"wifianalyticsd";
      v9 = "%{public}s::%d:XPC: keychain-access-groups entries do NOT contain %@ for this client. WiFiAnalytics will be unusable until the required entitlement is added";
      v10 = v8;
      v11 = 28;
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  if (v1 || ([MEMORY[0x1E696AAE8] mainBundle], v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "bundleIdentifier"), v1 = objc_claimAutoreleasedReturnValue(), v3, v1))
  {
    v4 = [[WAClient alloc] _initPrivate];
    v5 = _MergedGlobals_5;
    _MergedGlobals_5 = v4;

    [_MergedGlobals_5 setIdentifierForThisClient:v1];
  }

  else
  {
    v1 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      v12 = [MEMORY[0x1E696AAE8] mainBundle];
      v13 = [v12 infoDictionary];
      v14 = 136446722;
      v15 = "+[WAClient sharedClientWithIdentifier:]_block_invoke";
      v16 = 1024;
      v17 = 117;
      v18 = 2112;
      v19 = v13;
      _os_log_impl(&dword_1C8460000, v1, OS_LOG_TYPE_ERROR, "%{public}s::%d:Couldn't determine an identify for this client, so access token can't be stored. WiFiAnalytics is disabled. :%@", &v14, 0x1Cu);
    }
  }

LABEL_6:

  if (!_MergedGlobals_5)
  {
    v6 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v14 = 136446466;
      v15 = "+[WAClient sharedClientWithIdentifier:]_block_invoke";
      v16 = 1024;
      v17 = 122;
      _os_log_impl(&dword_1C8460000, v6, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed to get WAClient sharedClient instance. Check for logged errors above this one", &v14, 0x12u);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (WAClient)init
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"-[WAClient init] unavailable" userInfo:0];
  objc_exception_throw(v2);
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = WAClient;
  [(WAClient *)&v4 dealloc];
}

- (void)_registerMessageGroup:(int64_t)group andReply:(id)reply queuedInvocation:(id)invocation
{
  replyCopy = reply;
  invocationCopy = invocation;
  objc_initWeak(&location, self);
  queue = [(WAClient *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__WAClient__registerMessageGroup_andReply_queuedInvocation___block_invoke;
  block[3] = &unk_1E830EC70;
  objc_copyWeak(v18, &location);
  v18[1] = group;
  v18[2] = a2;
  v15 = invocationCopy;
  selfCopy = self;
  v17 = replyCopy;
  v12 = replyCopy;
  v13 = invocationCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(v18);
  objc_destroyWeak(&location);
}

void __60__WAClient__registerMessageGroup_andReply_queuedInvocation___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v4 = [WeakRetained registeredGroupTypes];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 64)];
  [v4 addObject:v5];

  v6 = *(a1 + 32);
  if (!v6)
  {
    v6 = objc_alloc_init(WAQueuedInvocation);
    v7 = [[InvokeMakerInfo alloc] initWithSel:*(a1 + 72) andTarget:*(a1 + 40)];
    v8 = *(a1 + 64);
    v9 = MEMORY[0x1CCA780B0](*(a1 + 48));
    v10 = [WAUtil _generateInvocationForMethod:v7, v8, v9, v6, 0];

    [(WAQueuedInvocation *)v6 setInvocation:v10];
    [(WAQueuedInvocation *)v6 setReply:*(a1 + 48)];
    v11 = [WeakRetained queuedInvocations];
    [v11 addObject:v6];
  }

  if ([WeakRetained daemonConnectionValid])
  {
    v12 = [WeakRetained conn];
    v13 = [v12 remoteObjectProxyWithErrorHandler:&__block_literal_global_4];
    v14 = *(a1 + 64);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __60__WAClient__registerMessageGroup_andReply_queuedInvocation___block_invoke_86;
    v18[3] = &unk_1E830EC48;
    v20 = v14;
    v19 = v6;
    [v13 registerMessageGroup:v14 andReply:v18];

    v15 = v19;
  }

  else
  {
    v17 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446466;
      v22 = "[WAClient _registerMessageGroup:andReply:queuedInvocation:]_block_invoke";
      v23 = 1024;
      v24 = 169;
      _os_log_impl(&dword_1C8460000, v17, OS_LOG_TYPE_DEBUG, "%{public}s::%d:XPC: Daemon connection not valid, invocation queued and connection establishment about to be initiated...", buf, 0x12u);
    }

    v15 = [WeakRetained _getConnectionIssueHandlerBlock];
    v15[2]();
  }

  objc_autoreleasePoolPop(v2);
  v16 = *MEMORY[0x1E69E9840];
}

void __60__WAClient__registerMessageGroup_andReply_queuedInvocation___block_invoke_84(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v5 = 136446722;
    v6 = "[WAClient _registerMessageGroup:andReply:queuedInvocation:]_block_invoke";
    v7 = 1024;
    v8 = 173;
    v9 = 2112;
    v10 = v2;
    _os_log_impl(&dword_1C8460000, v3, OS_LOG_TYPE_ERROR, "%{public}s::%d:XPC: WAClient - registerMessageGroup - error: %@", &v5, 0x1Cu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void __60__WAClient__registerMessageGroup_andReply_queuedInvocation___block_invoke_86(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = [WAUtil groupTypeToString:*(a1 + 40)];
    *buf = 136446722;
    v19 = "[WAClient _registerMessageGroup:andReply:queuedInvocation:]_block_invoke";
    v20 = 1024;
    v21 = 176;
    v22 = 2112;
    v23 = v8;
    _os_log_impl(&dword_1C8460000, v7, OS_LOG_TYPE_INFO, "%{public}s::%d:XPC: WAClient - registerMessageGroup - %@ - DONE", buf, 0x1Cu);
  }

  v9 = +[WAClient sharedClient];
  v10 = [v9 replyQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__WAClient__registerMessageGroup_andReply_queuedInvocation___block_invoke_87;
  block[3] = &unk_1E830EC20;
  v15 = *(a1 + 32);
  v16 = v5;
  v17 = v6;
  v11 = v6;
  v12 = v5;
  dispatch_async(v10, block);

  v13 = *MEMORY[0x1E69E9840];
}

void __60__WAClient__registerMessageGroup_andReply_queuedInvocation___block_invoke_87(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) reply];

  if (v3)
  {
    v4 = [*(a1 + 32) reply];
    v4[2](v4, *(a1 + 40), *(a1 + 48));
  }

  v5 = +[WAClient sharedClient];
  [v5 _dequeueInvocation:*(a1 + 32)];

  objc_autoreleasePoolPop(v2);
}

- (void)getNewMessageForKey:(id)key groupType:(int64_t)type andReply:(id)reply
{
  v8 = MEMORY[0x1E696AD98];
  replyCopy = reply;
  keyCopy = key;
  v11 = [v8 numberWithBool:0];
  [(WAClient *)self _getNewMessageForKey:keyCopy groupType:type withCopy:v11 andReply:replyCopy queuedInvocation:0];
}

- (void)_getNewMessageForKey:(id)key groupType:(int64_t)type withCopy:(id)copy andReply:(id)reply queuedInvocation:(id)invocation
{
  keyCopy = key;
  copyCopy = copy;
  replyCopy = reply;
  invocationCopy = invocation;
  objc_initWeak(&location, self);
  queue = [(WAClient *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __78__WAClient__getNewMessageForKey_groupType_withCopy_andReply_queuedInvocation___block_invoke;
  block[3] = &unk_1E830ECC0;
  objc_copyWeak(v28, &location);
  v23 = invocationCopy;
  selfCopy = self;
  v28[1] = a2;
  v28[2] = type;
  v25 = keyCopy;
  v26 = copyCopy;
  v27 = replyCopy;
  v18 = replyCopy;
  v19 = copyCopy;
  v20 = keyCopy;
  v21 = invocationCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(v28);
  objc_destroyWeak(&location);
}

void __78__WAClient__getNewMessageForKey_groupType_withCopy_andReply_queuedInvocation___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v4 = *(a1 + 32);
  if (!v4)
  {
    v4 = objc_alloc_init(WAQueuedInvocation);
    v5 = [[InvokeMakerInfo alloc] initWithSel:*(a1 + 80) andTarget:*(a1 + 40)];
    v6 = *(a1 + 88);
    v7 = *(a1 + 48);
    v8 = *(a1 + 56);
    v9 = MEMORY[0x1CCA780B0](*(a1 + 64));
    v10 = [WAUtil _generateInvocationForMethod:v5, v7, v6, v8, v9, v4, 0];

    [(WAQueuedInvocation *)v4 setInvocation:v10];
    [(WAQueuedInvocation *)v4 setReply:*(a1 + 64)];
    v11 = [WeakRetained queuedInvocations];
    [v11 addObject:v4];
  }

  if ([WeakRetained daemonConnectionValid])
  {
    v12 = [WeakRetained conn];
    v13 = [v12 remoteObjectProxyWithErrorHandler:&__block_literal_global_91];
    v14 = *(a1 + 88);
    v16 = *(a1 + 48);
    v15 = *(a1 + 56);
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __78__WAClient__getNewMessageForKey_groupType_withCopy_andReply_queuedInvocation___block_invoke_92;
    v20[3] = &unk_1E830EC98;
    v21 = v4;
    [v13 getNewMessageForKey:v16 groupType:v14 withCopy:v15 andReply:v20];

    v17 = v21;
  }

  else
  {
    v19 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446466;
      v23 = "[WAClient _getNewMessageForKey:groupType:withCopy:andReply:queuedInvocation:]_block_invoke";
      v24 = 1024;
      v25 = 216;
      _os_log_impl(&dword_1C8460000, v19, OS_LOG_TYPE_DEBUG, "%{public}s::%d:XPC: Daemon connection not valid, invocation queued and connection establishment about to be initiated...", buf, 0x12u);
    }

    v17 = [WeakRetained _getConnectionIssueHandlerBlock];
    v17[2]();
  }

  objc_autoreleasePoolPop(v2);
  v18 = *MEMORY[0x1E69E9840];
}

void __78__WAClient__getNewMessageForKey_groupType_withCopy_andReply_queuedInvocation___block_invoke_89(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v5 = 136446722;
    v6 = "[WAClient _getNewMessageForKey:groupType:withCopy:andReply:queuedInvocation:]_block_invoke";
    v7 = 1024;
    v8 = 221;
    v9 = 2112;
    v10 = v2;
    _os_log_impl(&dword_1C8460000, v3, OS_LOG_TYPE_ERROR, "%{public}s::%d:XPC: WAClient - getNewMessageForKey - error: %@", &v5, 0x1Cu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void __78__WAClient__getNewMessageForKey_groupType_withCopy_andReply_queuedInvocation___block_invoke_92(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v6 code] == 9009)
  {
    v7 = +[WAClient sharedClient];
    [v7 _reregister];
  }

  v8 = +[WAClient sharedClient];
  v9 = [v8 replyQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __78__WAClient__getNewMessageForKey_groupType_withCopy_andReply_queuedInvocation___block_invoke_2;
  block[3] = &unk_1E830EC20;
  v13 = *(a1 + 32);
  v14 = v5;
  v15 = v6;
  v10 = v6;
  v11 = v5;
  dispatch_async(v9, block);
}

void __78__WAClient__getNewMessageForKey_groupType_withCopy_andReply_queuedInvocation___block_invoke_2(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) reply];

  if (v3)
  {
    v4 = [*(a1 + 32) reply];
    v4[2](v4, *(a1 + 40), *(a1 + 48));
  }

  v5 = +[WAClient sharedClient];
  [v5 _dequeueInvocation:*(a1 + 32)];

  objc_autoreleasePoolPop(v2);
}

- (void)_dequeueInvocation:(id)invocation
{
  invocationCopy = invocation;
  queue = [(WAClient *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __31__WAClient__dequeueInvocation___block_invoke;
  block[3] = &unk_1E830D880;
  v8 = invocationCopy;
  v6 = invocationCopy;
  dispatch_sync(queue, block);
}

void __31__WAClient__dequeueInvocation___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) setInvocation:0];
  [*(a1 + 32) setReply:0];
  v3 = +[WAClient sharedClient];
  v4 = [v3 queuedInvocations];
  [v4 removeObject:*(a1 + 32)];

  objc_autoreleasePoolPop(v2);
}

- (void)_submitMessage:(id)message groupType:(int64_t)type andReply:(id)reply queuedInvocation:(id)invocation
{
  v29 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  replyCopy = reply;
  invocationCopy = invocation;
  objc_initWeak(&location, self);
  if (messageCopy)
  {
    queue = [(WAClient *)self queue];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __63__WAClient__submitMessage_groupType_andReply_queuedInvocation___block_invoke;
    v18[3] = &unk_1E830ECE8;
    objc_copyWeak(v23, &location);
    v15 = invocationCopy;
    v23[1] = a2;
    v19 = v15;
    selfCopy = self;
    v21 = messageCopy;
    v23[2] = type;
    v22 = replyCopy;
    dispatch_async(queue, v18);

    objc_destroyWeak(v23);
  }

  else
  {
    v17 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v26 = "[WAClient _submitMessage:groupType:andReply:queuedInvocation:]";
      v27 = 1024;
      v28 = 253;
      _os_log_impl(&dword_1C8460000, v17, OS_LOG_TYPE_ERROR, "%{public}s::%d:message argument is null, bailing", buf, 0x12u);
    }
  }

  objc_destroyWeak(&location);

  v16 = *MEMORY[0x1E69E9840];
}

void __63__WAClient__submitMessage_groupType_andReply_queuedInvocation___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v4 = *(a1 + 32);
  if (!*(a1 + 32))
  {
    v5 = objc_alloc_init(WAQueuedInvocation);

    v6 = [[InvokeMakerInfo alloc] initWithSel:*(a1 + 72) andTarget:*(a1 + 40)];
    v7 = *(a1 + 80);
    v8 = *(a1 + 48);
    v9 = MEMORY[0x1CCA780B0](*(a1 + 56));
    v10 = [WAUtil _generateInvocationForMethod:v6, v8, v7, v9, v5, 0];

    [(WAQueuedInvocation *)v5 setInvocation:v10];
    [(WAQueuedInvocation *)v5 setReply:*(a1 + 56)];
    v11 = [WeakRetained queuedInvocations];
    [v11 addObject:v5];

    v4 = v5;
  }

  if ([WeakRetained daemonConnectionValid])
  {
    v12 = [WeakRetained conn];
    v13 = [v12 remoteObjectProxyWithErrorHandler:&__block_literal_global_95];
    v14 = *(a1 + 48);
    v15 = *(a1 + 80);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __63__WAClient__submitMessage_groupType_andReply_queuedInvocation___block_invoke_96;
    v19[3] = &unk_1E830EC98;
    v20 = v4;
    [v13 submitMessage:v14 groupType:v15 andReply:v19];

    v16 = v20;
  }

  else
  {
    v18 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446466;
      v22 = "[WAClient _submitMessage:groupType:andReply:queuedInvocation:]_block_invoke";
      v23 = 1024;
      v24 = 268;
      _os_log_impl(&dword_1C8460000, v18, OS_LOG_TYPE_DEBUG, "%{public}s::%d:XPC: Daemon connection not valid, invocation queued and connection establishment about to be initiated...", buf, 0x12u);
    }

    v16 = [WeakRetained _getConnectionIssueHandlerBlock];
    v16[2]();
  }

  objc_autoreleasePoolPop(v2);
  v17 = *MEMORY[0x1E69E9840];
}

void __63__WAClient__submitMessage_groupType_andReply_queuedInvocation___block_invoke_93(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v5 = 136446722;
    v6 = "[WAClient _submitMessage:groupType:andReply:queuedInvocation:]_block_invoke";
    v7 = 1024;
    v8 = 274;
    v9 = 2112;
    v10 = v2;
    _os_log_impl(&dword_1C8460000, v3, OS_LOG_TYPE_ERROR, "%{public}s::%d:XPC: WAClient - submitMessage - error: %@", &v5, 0x1Cu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void __63__WAClient__submitMessage_groupType_andReply_queuedInvocation___block_invoke_96(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v6 code] == 9009)
  {
    v7 = +[WAClient sharedClient];
    [v7 _reregister];
  }

  v8 = +[WAClient sharedClient];
  v9 = [v8 replyQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__WAClient__submitMessage_groupType_andReply_queuedInvocation___block_invoke_2;
  block[3] = &unk_1E830EC20;
  v13 = *(a1 + 32);
  v14 = v5;
  v15 = v6;
  v10 = v6;
  v11 = v5;
  dispatch_async(v9, block);
}

void __63__WAClient__submitMessage_groupType_andReply_queuedInvocation___block_invoke_2(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) reply];

  if (v3)
  {
    v4 = [*(a1 + 32) reply];
    v4[2](v4, *(a1 + 40), *(a1 + 48));
  }

  v5 = +[WAClient sharedClient];
  [v5 _dequeueInvocation:*(a1 + 32)];

  objc_autoreleasePoolPop(v2);
}

- (int64_t)_writeWiFiAnalyticsMessageToJSONFile:(id)file metricInfo:(id)info
{
  v54 = *MEMORY[0x1E69E9840];
  fileCopy = file;
  infoCopy = info;
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:infoCopy])
  {
    v39 = infoCopy;
    v40 = fileCopy;
    v8 = objc_alloc_init(MEMORY[0x1E696AB78]);
    [v8 setDateFormat:@"yyyy'-'MM'-'dd-HHmmssSSS"];
    date = [MEMORY[0x1E695DF00] date];
    v38 = v8;
    v10 = [v8 stringFromDate:date];

    v43 = v10;
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"wifianalytics_%@.json", v10];
    selfCopy = self;
    wifianalyticsTmpDir = [(WAClient *)self wifianalyticsTmpDir];
    v13 = [wifianalyticsTmpDir URLByAppendingPathComponent:v11 isDirectory:0];

    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    path = [v13 path];
    v41 = defaultManager;
    v16 = [defaultManager fileExistsAtPath:path];

    if (v16)
    {
      v17 = 1;
      do
      {
        v18 = v17 + 1;
        v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"wifianalytics_%@_%lu.json", v43, v17];

        wifianalyticsTmpDir2 = [(WAClient *)selfCopy wifianalyticsTmpDir];
        v21 = [wifianalyticsTmpDir2 URLByAppendingPathComponent:v19 isDirectory:0];

        path2 = [v21 path];
        v23 = [v41 fileExistsAtPath:path2];

        v11 = v19;
        v17 = v18;
        v13 = v21;
      }

      while ((v23 & 1) != 0);
    }

    else
    {
      v21 = v13;
      v19 = v11;
    }

    v45 = 0;
    infoCopy = v39;
    v24 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v39 options:3 error:&v45];
    v25 = v45;
    if (v25)
    {
      v26 = v25;
      v27 = WALogCategoryDeviceStoreHandle();
      v28 = v41;
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446978;
        v47 = "[WAClient _writeWiFiAnalyticsMessageToJSONFile:metricInfo:]";
        v48 = 1024;
        v49 = 333;
        v50 = 2112;
        v51 = v19;
        v52 = 2112;
        v53 = v26;
        _os_log_impl(&dword_1C8460000, v27, OS_LOG_TYPE_ERROR, "%{public}s::%d:failed to write to file %@ error %@", buf, 0x26u);
      }

      v29 = v43;
    }

    else
    {
      v27 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v24 encoding:4];
      v44 = 0;
      [v27 writeToURL:v21 atomically:1 encoding:4 error:&v44];
      v26 = v44;
      [WAUtil setFutureApfsPurgeableDeadline:172800 forURL:v21];
      v29 = v43;
      v28 = v41;
    }

    wifianalyticsTmpDir3 = [(WAClient *)selfCopy wifianalyticsTmpDir];
    path3 = [wifianalyticsTmpDir3 path];
    v32 = [v28 contentsOfDirectoryAtPath:path3 error:0];

    v33 = [MEMORY[0x1E696AE18] predicateWithFormat:@"SELF EndsWith '.json'"];
    v34 = [v32 filteredArrayUsingPredicate:v33];

    v35 = [v34 count];
    fileCopy = v40;
  }

  else
  {
    v19 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v47 = "[WAClient _writeWiFiAnalyticsMessageToJSONFile:metricInfo:]";
      v48 = 1024;
      v49 = 307;
      v50 = 2112;
      v51 = fileCopy;
      _os_log_impl(&dword_1C8460000, v19, OS_LOG_TYPE_ERROR, "%{public}s::%d:Invalid data passed to JSON serialization for %@", buf, 0x1Cu);
    }

    v35 = -1;
  }

  v36 = *MEMORY[0x1E69E9840];
  return v35;
}

- (void)_processWAMessageForCoreAnalytics:(id)analytics
{
  v34 = *MEMORY[0x1E69E9840];
  analyticsCopy = analytics;
  v3 = WALogCategoryDefaultHandle();
  if (os_signpost_enabled(v3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C8460000, v3, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "_processWAMessageForCoreAnalytics", "", buf, 2u);
  }

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (!dictionary)
  {
    v17 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v29 = "[WAClient _processWAMessageForCoreAnalytics:]";
      v30 = 1024;
      v31 = 350;
      v32 = 2080;
      v33 = "[WAClient _processWAMessageForCoreAnalytics:]";
      _os_log_impl(&dword_1C8460000, v17, OS_LOG_TYPE_ERROR, "%{public}s::%d:%s: Null coreAnalyticsDict", buf, 0x1Cu);
    }

    goto LABEL_15;
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  metricInfo = [analyticsCopy metricInfo];
  allKeys = [metricInfo allKeys];

  v6 = [allKeys countByEnumeratingWithState:&v23 objects:v27 count:16];
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
          objc_enumerationMutation(allKeys);
        }

        v10 = *(*(&v23 + 1) + 8 * i);
        metricInfo2 = [analyticsCopy metricInfo];
        v12 = [metricInfo2 objectForKeyedSubscript:v10];

        v13 = [v12 objectForKeyedSubscript:@"options"];
        integerValue = [v13 integerValue];

        if (integerValue)
        {
          v15 = [v12 objectForKeyedSubscript:@"value"];
          [dictionary setObject:v15 forKey:v10];
        }
      }

      v7 = [allKeys countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v7);
  }

  if ([dictionary count])
  {
    metricName = [analyticsCopy metricName];
    v22 = dictionary;
    AnalyticsSendEventLazy();

    v17 = v22;
LABEL_15:
  }

  v18 = WALogCategoryDefaultHandle();
  if (os_signpost_enabled(v18))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C8460000, v18, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "_processWAMessageForCoreAnalytics", "", buf, 2u);
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)submitWiFiAnalytics:(id)analytics data:(id)data
{
  v22 = *MEMORY[0x1E69E9840];
  analyticsCopy = analytics;
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x3032000000;
  v12[3] = __Block_byref_object_copy__6;
  v12[4] = __Block_byref_object_dispose__6;
  dataCopy = data;
  v7 = dataCopy;
  v13 = dataCopy;
  if (analyticsCopy && dataCopy)
  {
    v8 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446978;
      v15 = "[WAClient submitWiFiAnalytics:data:]";
      v16 = 1024;
      v17 = 381;
      v18 = 2112;
      v19 = analyticsCopy;
      v20 = 2112;
      v21 = v7;
      _os_log_impl(&dword_1C8460000, v8, OS_LOG_TYPE_DEBUG, "%{public}s::%d:submitting %@: %@", buf, 0x26u);
    }

    v10 = analyticsCopy;
    v11 = v7;
    AnalyticsSendEventLazy();
  }

  _Block_object_dispose(v12, 8);

  v9 = *MEMORY[0x1E69E9840];
}

id __37__WAClient_submitWiFiAnalytics_data___block_invoke(void *a1)
{
  v39 = *MEMORY[0x1E69E9840];
  v2 = objc_opt_new();
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = [*(*(a1[6] + 8) + 40) allKeys];
  v3 = [obj countByEnumeratingWithState:&v30 objects:v38 count:16];
  if (v3)
  {
    v5 = v3;
    v29 = *v31;
    v6 = 0x1E830D000uLL;
    *&v4 = 138412802;
    v26 = v4;
    do
    {
      v7 = 0;
      do
      {
        if (*v31 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v30 + 1) + 8 * v7);
        v9 = [*(*(a1[6] + 8) + 40) objectForKeyedSubscript:{v8, v26}];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          goto LABEL_9;
        }

        v10 = v6;
        v11 = [*(*(a1[6] + 8) + 40) objectForKeyedSubscript:v8];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {

          v6 = v10;
LABEL_9:

LABEL_10:
          v12 = [*(*(a1[6] + 8) + 40) objectForKeyedSubscript:v8];
          [v2 setObject:v12 forKeyedSubscript:v8];

          if (([v8 containsString:@"channelFlags"] & 1) != 0 || objc_msgSend(v8, "containsString:", @"ChannelFlags"))
          {
            [*(v6 + 664) addFieldsForChannelFlagLikeKey:v8 inDict:v2];
          }

          if (([v8 containsString:@"authFlags"] & 1) != 0 || objc_msgSend(v8, "containsString:", @"AuthFlags"))
          {
            [*(v6 + 664) addFieldsForAuthFlagsLikeKey:v8 inDict:v2];
          }

          goto LABEL_16;
        }

        v13 = MEMORY[0x1E696ACB0];
        v14 = [*(*(a1[6] + 8) + 40) objectForKeyedSubscript:v8];
        LOBYTE(v13) = [v13 isValidJSONObject:v14];

        v6 = v10;
        if (v13)
        {
          goto LABEL_10;
        }

        v15 = WALogCategoryDefaultHandle();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
        {
          v16 = [*(*(a1[6] + 8) + 40) objectForKeyedSubscript:v8];
          v17 = objc_opt_class();
          v18 = *(*(a1[6] + 8) + 40);
          v27 = v17;
          v19 = [v18 objectForKeyedSubscript:v8];
          *buf = v26;
          v35 = v8;
          v36 = 2112;
          *v37 = v17;
          v6 = v10;
          *&v37[8] = 2112;
          *&v37[10] = v19;
          _os_log_fault_impl(&dword_1C8460000, v15, OS_LOG_TYPE_FAULT, "CODE FIX NEEDED! Only JSONifyable NSNumber and NSString can be sent to CoreAnalytics, dropping field %@ (%@): %@", buf, 0x20u);
        }

LABEL_16:
        ++v7;
      }

      while (v5 != v7);
      v20 = [obj countByEnumeratingWithState:&v30 objects:v38 count:16];
      v5 = v20;
    }

    while (v20);
  }

  v21 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    v22 = a1[4];
    v23 = a1[5];
    *buf = 136446978;
    v35 = "[WAClient submitWiFiAnalytics:data:]_block_invoke";
    v36 = 1024;
    *v37 = 400;
    *&v37[4] = 2112;
    *&v37[6] = v22;
    *&v37[14] = 2112;
    *&v37[16] = v23;
    _os_log_impl(&dword_1C8460000, v21, OS_LOG_TYPE_DEBUG, "%{public}s::%d:submitting %@: %@", buf, 0x26u);
  }

  v24 = *MEMORY[0x1E69E9840];

  return v2;
}

- (void)submitWiFiAnalyticsMessageAdvanced:(id)advanced
{
  v20 = *MEMORY[0x1E69E9840];
  advancedCopy = advanced;
  v5 = advancedCopy;
  if (!advancedCopy)
  {
    v10 = WALogCategoryDefaultHandle();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_8;
    }

    *buf = 136446466;
    v17 = "[WAClient submitWiFiAnalyticsMessageAdvanced:]";
    v18 = 1024;
    v19 = 410;
    v11 = "%{public}s::%d:message argument is null, bailing";
    goto LABEL_7;
  }

  metricName = [advancedCopy metricName];
  if (!metricName || (v7 = metricName, [v5 metricInfo], v8 = objc_claimAutoreleasedReturnValue(), v8, v7, !v8))
  {
    v10 = WALogCategoryDefaultHandle();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_8;
    }

    *buf = 136446466;
    v17 = "[WAClient submitWiFiAnalyticsMessageAdvanced:]";
    v18 = 1024;
    v19 = 411;
    v11 = "%{public}s::%d:NULL metricName or NULL metricInfo";
LABEL_7:
    _os_log_impl(&dword_1C8460000, v10, OS_LOG_TYPE_ERROR, v11, buf, 0x12u);
    goto LABEL_8;
  }

  queue = [(WAClient *)self queue];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __47__WAClient_submitWiFiAnalyticsMessageAdvanced___block_invoke;
  v13[3] = &unk_1E830DB70;
  v14 = v5;
  selfCopy = self;
  dispatch_async(queue, v13);

  v10 = v14;
LABEL_8:

  v12 = *MEMORY[0x1E69E9840];
}

void __47__WAClient_submitWiFiAnalyticsMessageAdvanced___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if ([*(a1 + 32) options])
  {
    [*(a1 + 40) _processWAMessageForCoreAnalytics:*(a1 + 32)];
  }

  objc_autoreleasePoolPop(v2);
}

- (void)_triggerQueryForNWActivityWithPeers:(id)peers andReply:(id)reply queuedInvocation:(id)invocation
{
  peersCopy = peers;
  replyCopy = reply;
  invocationCopy = invocation;
  objc_initWeak(&location, self);
  queue = [(WAClient *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __74__WAClient__triggerQueryForNWActivityWithPeers_andReply_queuedInvocation___block_invoke;
  block[3] = &unk_1E830ED38;
  objc_copyWeak(v21, &location);
  v21[1] = a2;
  v17 = invocationCopy;
  selfCopy = self;
  v19 = peersCopy;
  v20 = replyCopy;
  v13 = replyCopy;
  v14 = peersCopy;
  v15 = invocationCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(v21);
  objc_destroyWeak(&location);
}

void __74__WAClient__triggerQueryForNWActivityWithPeers_andReply_queuedInvocation___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v4 = *(a1 + 32);
  if (!v4)
  {
    v4 = objc_alloc_init(WAQueuedInvocation);
    v5 = [[InvokeMakerInfo alloc] initWithSel:*(a1 + 72) andTarget:*(a1 + 40)];
    v6 = *(a1 + 48);
    v7 = MEMORY[0x1CCA780B0](*(a1 + 56));
    v8 = [WAUtil _generateInvocationForMethod:v5, v6, v7, v4, 0];

    [(WAQueuedInvocation *)v4 setInvocation:v8];
    [(WAQueuedInvocation *)v4 setReply:*(a1 + 56)];
    v9 = [WeakRetained queuedInvocations];
    [v9 addObject:v4];
  }

  if ([WeakRetained daemonConnectionValid])
  {
    v10 = [WeakRetained conn];
    v11 = [v10 remoteObjectProxyWithErrorHandler:&__block_literal_global_132];
    v12 = *(a1 + 48);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __74__WAClient__triggerQueryForNWActivityWithPeers_andReply_queuedInvocation___block_invoke_133;
    v16[3] = &unk_1E830EC98;
    v17 = v4;
    [v11 triggerQueryForNWActivityWithPeers:v12 andReply:v16];

    v13 = v17;
  }

  else
  {
    v15 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446466;
      v19 = "[WAClient _triggerQueryForNWActivityWithPeers:andReply:queuedInvocation:]_block_invoke";
      v20 = 1024;
      v21 = 468;
      _os_log_impl(&dword_1C8460000, v15, OS_LOG_TYPE_DEBUG, "%{public}s::%d:XPC: Daemon connection not valid, invocation queued and connection establishment about to be initiated...", buf, 0x12u);
    }

    v13 = [WeakRetained _getConnectionIssueHandlerBlock];
    v13[2]();
  }

  objc_autoreleasePoolPop(v2);
  v14 = *MEMORY[0x1E69E9840];
}

void __74__WAClient__triggerQueryForNWActivityWithPeers_andReply_queuedInvocation___block_invoke_130(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v5 = 136446722;
    v6 = "[WAClient _triggerQueryForNWActivityWithPeers:andReply:queuedInvocation:]_block_invoke";
    v7 = 1024;
    v8 = 472;
    v9 = 2112;
    v10 = v2;
    _os_log_impl(&dword_1C8460000, v3, OS_LOG_TYPE_ERROR, "%{public}s::%d:XPC: WAClient - triggerQueryForNWActivityWithPeers - error: %@", &v5, 0x1Cu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void __74__WAClient__triggerQueryForNWActivityWithPeers_andReply_queuedInvocation___block_invoke_133(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = WALogCategoryDefaultHandle();
  v8 = v7;
  if (v6)
  {
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    *buf = 136446722;
    v25 = "[WAClient _triggerQueryForNWActivityWithPeers:andReply:queuedInvocation:]_block_invoke";
    v26 = 1024;
    v27 = 476;
    v28 = 2112;
    v29 = v6;
    v9 = "%{public}s::%d:XPC: WAClient - triggerQueryForNWActivityWithPeers - error: %@";
    v10 = v8;
    v11 = OS_LOG_TYPE_ERROR;
    v12 = 28;
  }

  else
  {
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    *buf = 136446466;
    v25 = "[WAClient _triggerQueryForNWActivityWithPeers:andReply:queuedInvocation:]_block_invoke";
    v26 = 1024;
    v27 = 478;
    v9 = "%{public}s::%d:WAClient - triggerQueryForNWActivityWithPeers - success";
    v10 = v8;
    v11 = OS_LOG_TYPE_DEFAULT;
    v12 = 18;
  }

  _os_log_impl(&dword_1C8460000, v10, v11, v9, buf, v12);
LABEL_7:

  v13 = v6;
  if ([v13 code] == 9009)
  {
    v14 = +[WAClient sharedClient];
    [v14 _reregister];
  }

  v15 = +[WAClient sharedClient];
  v16 = [v15 replyQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __74__WAClient__triggerQueryForNWActivityWithPeers_andReply_queuedInvocation___block_invoke_134;
  block[3] = &unk_1E830EC20;
  v21 = *(a1 + 32);
  v22 = v5;
  v23 = v13;
  v17 = v13;
  v18 = v5;
  dispatch_async(v16, block);

  v19 = *MEMORY[0x1E69E9840];
}

void __74__WAClient__triggerQueryForNWActivityWithPeers_andReply_queuedInvocation___block_invoke_134(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) reply];

  if (v3)
  {
    v4 = [*(a1 + 32) reply];
    v4[2](v4, *(a1 + 40), *(a1 + 48));
  }

  v5 = +[WAClient sharedClient];
  [v5 _dequeueInvocation:*(a1 + 32)];

  objc_autoreleasePoolPop(v2);
}

- (void)_triggerQueryForNWActivity:(int64_t)activity andReply:(id)reply queuedInvocation:(id)invocation
{
  replyCopy = reply;
  invocationCopy = invocation;
  objc_initWeak(&location, self);
  queue = [(WAClient *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__WAClient__triggerQueryForNWActivity_andReply_queuedInvocation___block_invoke;
  block[3] = &unk_1E830EC70;
  objc_copyWeak(v18, &location);
  v15 = invocationCopy;
  selfCopy = self;
  v18[1] = a2;
  v18[2] = activity;
  v17 = replyCopy;
  v12 = replyCopy;
  v13 = invocationCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(v18);
  objc_destroyWeak(&location);
}

void __65__WAClient__triggerQueryForNWActivity_andReply_queuedInvocation___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v4 = *(a1 + 32);
  if (!v4)
  {
    v4 = objc_alloc_init(WAQueuedInvocation);
    v5 = [[InvokeMakerInfo alloc] initWithSel:*(a1 + 64) andTarget:*(a1 + 40)];
    v6 = *(a1 + 72);
    v7 = MEMORY[0x1CCA780B0](*(a1 + 48));
    v8 = [WAUtil _generateInvocationForMethod:v5, v6, v7, v4, 0];

    [(WAQueuedInvocation *)v4 setInvocation:v8];
    [(WAQueuedInvocation *)v4 setReply:*(a1 + 48)];
    v9 = [WeakRetained queuedInvocations];
    [v9 addObject:v4];
  }

  if ([WeakRetained daemonConnectionValid])
  {
    v10 = [WeakRetained conn];
    v11 = [v10 remoteObjectProxyWithErrorHandler:&__block_literal_global_137];
    v12 = *(a1 + 72);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __65__WAClient__triggerQueryForNWActivity_andReply_queuedInvocation___block_invoke_138;
    v16[3] = &unk_1E830EC98;
    v17 = v4;
    [v11 triggerQueryForNWActivity:v12 andReply:v16];

    v13 = v17;
  }

  else
  {
    v15 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446466;
      v19 = "[WAClient _triggerQueryForNWActivity:andReply:queuedInvocation:]_block_invoke";
      v20 = 1024;
      v21 = 513;
      _os_log_impl(&dword_1C8460000, v15, OS_LOG_TYPE_DEBUG, "%{public}s::%d:XPC: Daemon connection not valid, invocation queued and connection establishment about to be initiated...", buf, 0x12u);
    }

    v13 = [WeakRetained _getConnectionIssueHandlerBlock];
    v13[2]();
  }

  objc_autoreleasePoolPop(v2);
  v14 = *MEMORY[0x1E69E9840];
}

void __65__WAClient__triggerQueryForNWActivity_andReply_queuedInvocation___block_invoke_135(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v5 = 136446722;
    v6 = "[WAClient _triggerQueryForNWActivity:andReply:queuedInvocation:]_block_invoke";
    v7 = 1024;
    v8 = 517;
    v9 = 2112;
    v10 = v2;
    _os_log_impl(&dword_1C8460000, v3, OS_LOG_TYPE_ERROR, "%{public}s::%d:XPC: WAClient - triggerQueryForNWActivity - error: %@", &v5, 0x1Cu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void __65__WAClient__triggerQueryForNWActivity_andReply_queuedInvocation___block_invoke_138(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = WALogCategoryDefaultHandle();
  v8 = v7;
  if (v6)
  {
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    *buf = 136446722;
    v25 = "[WAClient _triggerQueryForNWActivity:andReply:queuedInvocation:]_block_invoke";
    v26 = 1024;
    v27 = 521;
    v28 = 2112;
    v29 = v6;
    v9 = "%{public}s::%d:XPC: WAClient - triggerQueryForNWActivity - error: %@";
    v10 = v8;
    v11 = OS_LOG_TYPE_ERROR;
    v12 = 28;
  }

  else
  {
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    *buf = 136446466;
    v25 = "[WAClient _triggerQueryForNWActivity:andReply:queuedInvocation:]_block_invoke";
    v26 = 1024;
    v27 = 523;
    v9 = "%{public}s::%d:WAClient - triggerQueryForNWActivity - success";
    v10 = v8;
    v11 = OS_LOG_TYPE_DEFAULT;
    v12 = 18;
  }

  _os_log_impl(&dword_1C8460000, v10, v11, v9, buf, v12);
LABEL_7:

  v13 = v6;
  if ([v13 code] == 9009)
  {
    v14 = +[WAClient sharedClient];
    [v14 _reregister];
  }

  v15 = +[WAClient sharedClient];
  v16 = [v15 replyQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__WAClient__triggerQueryForNWActivity_andReply_queuedInvocation___block_invoke_139;
  block[3] = &unk_1E830EC20;
  v21 = *(a1 + 32);
  v22 = v5;
  v23 = v13;
  v17 = v13;
  v18 = v5;
  dispatch_async(v16, block);

  v19 = *MEMORY[0x1E69E9840];
}

void __65__WAClient__triggerQueryForNWActivity_andReply_queuedInvocation___block_invoke_139(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) reply];

  if (v3)
  {
    v4 = [*(a1 + 32) reply];
    v4[2](v4, *(a1 + 40), *(a1 + 48));
  }

  v5 = +[WAClient sharedClient];
  [v5 _dequeueInvocation:*(a1 + 32)];

  objc_autoreleasePoolPop(v2);
}

- (void)convertWiFiStatsIntoPercentile:(id)percentile analysisGroup:(int64_t)group groupTarget:(id)target andReply:(id)reply queuedInvocation:(id)invocation
{
  percentileCopy = percentile;
  targetCopy = target;
  replyCopy = reply;
  invocationCopy = invocation;
  objc_initWeak(&location, self);
  queue = [(WAClient *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __95__WAClient_convertWiFiStatsIntoPercentile_analysisGroup_groupTarget_andReply_queuedInvocation___block_invoke;
  block[3] = &unk_1E830ECC0;
  objc_copyWeak(v28, &location);
  v23 = invocationCopy;
  selfCopy = self;
  v28[1] = a2;
  v28[2] = group;
  v25 = percentileCopy;
  v26 = targetCopy;
  v27 = replyCopy;
  v18 = replyCopy;
  v19 = targetCopy;
  v20 = percentileCopy;
  v21 = invocationCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(v28);
  objc_destroyWeak(&location);
}

void __95__WAClient_convertWiFiStatsIntoPercentile_analysisGroup_groupTarget_andReply_queuedInvocation___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v4 = *(a1 + 32);
  if (!*(a1 + 32))
  {
    v5 = objc_alloc_init(WAQueuedInvocation);

    v6 = [[InvokeMakerInfo alloc] initWithSel:*(a1 + 80) andTarget:*(a1 + 40)];
    v7 = *(a1 + 88);
    v8 = *(a1 + 48);
    v9 = *(a1 + 56);
    v10 = MEMORY[0x1CCA780B0](*(a1 + 64));
    v11 = [WAUtil _generateInvocationForMethod:v6, v8, v7, v9, v10, v5, 0];

    [(WAQueuedInvocation *)v5 setInvocation:v11];
    [(WAQueuedInvocation *)v5 setReply:*(a1 + 64)];
    v12 = [WeakRetained queuedInvocations];
    [v12 addObject:v5];

    v4 = v5;
  }

  if ([WeakRetained daemonConnectionValid])
  {
    v13 = [WeakRetained conn];
    v14 = [v13 remoteObjectProxyWithErrorHandler:&__block_literal_global_142];
    v15 = *(a1 + 88);
    v17 = *(a1 + 48);
    v16 = *(a1 + 56);
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __95__WAClient_convertWiFiStatsIntoPercentile_analysisGroup_groupTarget_andReply_queuedInvocation___block_invoke_143;
    v21[3] = &unk_1E830EC98;
    v22 = v4;
    [v14 convertWiFiStatsIntoPercentile:v17 analysisGroup:v15 groupTarget:v16 andReply:v21];

    v18 = v22;
  }

  else
  {
    v20 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446466;
      v24 = "[WAClient convertWiFiStatsIntoPercentile:analysisGroup:groupTarget:andReply:queuedInvocation:]_block_invoke";
      v25 = 1024;
      v26 = 561;
      _os_log_impl(&dword_1C8460000, v20, OS_LOG_TYPE_DEBUG, "%{public}s::%d:XPC: Daemon connection not valid, invocation queued and connection establishment about to be initiated...", buf, 0x12u);
    }

    v18 = [WeakRetained _getConnectionIssueHandlerBlock];
    v18[2]();
  }

  objc_autoreleasePoolPop(v2);
  v19 = *MEMORY[0x1E69E9840];
}

void __95__WAClient_convertWiFiStatsIntoPercentile_analysisGroup_groupTarget_andReply_queuedInvocation___block_invoke_140(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v5 = 136446722;
    v6 = "[WAClient convertWiFiStatsIntoPercentile:analysisGroup:groupTarget:andReply:queuedInvocation:]_block_invoke";
    v7 = 1024;
    v8 = 569;
    v9 = 2112;
    v10 = v2;
    _os_log_impl(&dword_1C8460000, v3, OS_LOG_TYPE_ERROR, "%{public}s::%d:XPC: WAClient - convertWiFiStatsIntoPercentile - error: %@", &v5, 0x1Cu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void __95__WAClient_convertWiFiStatsIntoPercentile_analysisGroup_groupTarget_andReply_queuedInvocation___block_invoke_143(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = WALogCategoryDefaultHandle();
  v8 = v7;
  if (v6)
  {
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    *buf = 136446722;
    v25 = "[WAClient convertWiFiStatsIntoPercentile:analysisGroup:groupTarget:andReply:queuedInvocation:]_block_invoke";
    v26 = 1024;
    v27 = 573;
    v28 = 2112;
    v29 = v6;
    v9 = "%{public}s::%d:XPC: WAClient - convertWiFiStatsIntoPercentile - error: %@";
    v10 = v8;
    v11 = OS_LOG_TYPE_ERROR;
    v12 = 28;
  }

  else
  {
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    *buf = 136446466;
    v25 = "[WAClient convertWiFiStatsIntoPercentile:analysisGroup:groupTarget:andReply:queuedInvocation:]_block_invoke";
    v26 = 1024;
    v27 = 575;
    v9 = "%{public}s::%d:WAClient - convertWiFiStatsIntoPercentile - success";
    v10 = v8;
    v11 = OS_LOG_TYPE_DEFAULT;
    v12 = 18;
  }

  _os_log_impl(&dword_1C8460000, v10, v11, v9, buf, v12);
LABEL_7:

  v13 = v6;
  if ([v13 code] == 9009)
  {
    v14 = +[WAClient sharedClient];
    [v14 _reregister];
  }

  v15 = +[WAClient sharedClient];
  v16 = [v15 replyQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __95__WAClient_convertWiFiStatsIntoPercentile_analysisGroup_groupTarget_andReply_queuedInvocation___block_invoke_144;
  block[3] = &unk_1E830EC20;
  v21 = *(a1 + 32);
  v22 = v5;
  v23 = v13;
  v17 = v13;
  v18 = v5;
  dispatch_async(v16, block);

  v19 = *MEMORY[0x1E69E9840];
}

void __95__WAClient_convertWiFiStatsIntoPercentile_analysisGroup_groupTarget_andReply_queuedInvocation___block_invoke_144(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) reply];

  if (v3)
  {
    v4 = [*(a1 + 32) reply];
    v4[2](v4, *(a1 + 40), *(a1 + 48));
  }

  v5 = +[WAClient sharedClient];
  [v5 _dequeueInvocation:*(a1 + 32)];

  objc_autoreleasePoolPop(v2);
}

- (void)_triggerDatapathDiagnosticsAndCollectUpdates:(int64_t)updates waMessage:(id)message andReply:(id)reply queuedInvocation:(id)invocation
{
  messageCopy = message;
  replyCopy = reply;
  invocationCopy = invocation;
  objc_initWeak(&location, self);
  queue = [(WAClient *)self queue];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __93__WAClient__triggerDatapathDiagnosticsAndCollectUpdates_waMessage_andReply_queuedInvocation___block_invoke;
  v18[3] = &unk_1E830ECE8;
  objc_copyWeak(v23, &location);
  v19 = invocationCopy;
  selfCopy = self;
  v23[1] = a2;
  v23[2] = updates;
  v21 = messageCopy;
  v22 = replyCopy;
  v15 = replyCopy;
  v16 = messageCopy;
  v17 = invocationCopy;
  dispatch_async(queue, v18);

  objc_destroyWeak(v23);
  objc_destroyWeak(&location);
}

void __93__WAClient__triggerDatapathDiagnosticsAndCollectUpdates_waMessage_andReply_queuedInvocation___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v4 = *(a1 + 32);
  if (!v4)
  {
    v4 = objc_alloc_init(WAQueuedInvocation);
    v5 = [[InvokeMakerInfo alloc] initWithSel:*(a1 + 72) andTarget:*(a1 + 40)];
    v6 = *(a1 + 80);
    v7 = *(a1 + 48);
    v8 = MEMORY[0x1CCA780B0](*(a1 + 56));
    v9 = [WAUtil _generateInvocationForMethod:v5, v6, v7, v8, v4, 0];

    [(WAQueuedInvocation *)v4 setInvocation:v9];
    [(WAQueuedInvocation *)v4 setReply:*(a1 + 56)];
    v10 = [WeakRetained queuedInvocations];
    [v10 addObject:v4];
  }

  if ([WeakRetained daemonConnectionValid])
  {
    v11 = [WeakRetained conn];
    v12 = [v11 remoteObjectProxyWithErrorHandler:&__block_literal_global_147];
    v13 = *(a1 + 80);
    v14 = *(a1 + 48);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __93__WAClient__triggerDatapathDiagnosticsAndCollectUpdates_waMessage_andReply_queuedInvocation___block_invoke_148;
    v18[3] = &unk_1E830EC98;
    v19 = v4;
    [v12 triggerDatapathDiagnosticsAndCollectUpdates:v13 waMessage:v14 andReply:v18];

    v15 = v19;
  }

  else
  {
    v17 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446466;
      v21 = "[WAClient _triggerDatapathDiagnosticsAndCollectUpdates:waMessage:andReply:queuedInvocation:]_block_invoke";
      v22 = 1024;
      v23 = 616;
      _os_log_impl(&dword_1C8460000, v17, OS_LOG_TYPE_DEBUG, "%{public}s::%d:XPC: Daemon connection not valid, invocation queued and connection establishment about to be initiated...", buf, 0x12u);
    }

    v15 = [WeakRetained _getConnectionIssueHandlerBlock];
    v15[2]();
  }

  objc_autoreleasePoolPop(v2);
  v16 = *MEMORY[0x1E69E9840];
}

void __93__WAClient__triggerDatapathDiagnosticsAndCollectUpdates_waMessage_andReply_queuedInvocation___block_invoke_145(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v5 = 136446722;
    v6 = "[WAClient _triggerDatapathDiagnosticsAndCollectUpdates:waMessage:andReply:queuedInvocation:]_block_invoke";
    v7 = 1024;
    v8 = 620;
    v9 = 2112;
    v10 = v2;
    _os_log_impl(&dword_1C8460000, v3, OS_LOG_TYPE_ERROR, "%{public}s::%d:XPC: WAClient - triggerDatapathDiagnosticsAndCollectUpdates - error: %@", &v5, 0x1Cu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void __93__WAClient__triggerDatapathDiagnosticsAndCollectUpdates_waMessage_andReply_queuedInvocation___block_invoke_148(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = WALogCategoryDefaultHandle();
  v8 = v7;
  if (v6)
  {
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    *buf = 136446722;
    v25 = "[WAClient _triggerDatapathDiagnosticsAndCollectUpdates:waMessage:andReply:queuedInvocation:]_block_invoke";
    v26 = 1024;
    v27 = 624;
    v28 = 2112;
    v29 = v6;
    v9 = "%{public}s::%d:XPC: WAClient - triggerDatapathDiagnosticsAndCollectUpdates - error: %@";
    v10 = v8;
    v11 = OS_LOG_TYPE_ERROR;
    v12 = 28;
  }

  else
  {
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    *buf = 136446466;
    v25 = "[WAClient _triggerDatapathDiagnosticsAndCollectUpdates:waMessage:andReply:queuedInvocation:]_block_invoke";
    v26 = 1024;
    v27 = 626;
    v9 = "%{public}s::%d:WAClient - triggerDatapathDiagnosticsAndCollectUpdates - success";
    v10 = v8;
    v11 = OS_LOG_TYPE_DEFAULT;
    v12 = 18;
  }

  _os_log_impl(&dword_1C8460000, v10, v11, v9, buf, v12);
LABEL_7:

  v13 = v6;
  if ([v13 code] == 9009)
  {
    v14 = +[WAClient sharedClient];
    [v14 _reregister];
  }

  v15 = +[WAClient sharedClient];
  v16 = [v15 replyQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __93__WAClient__triggerDatapathDiagnosticsAndCollectUpdates_waMessage_andReply_queuedInvocation___block_invoke_149;
  block[3] = &unk_1E830EC20;
  v21 = *(a1 + 32);
  v22 = v5;
  v23 = v13;
  v17 = v13;
  v18 = v5;
  dispatch_async(v16, block);

  v19 = *MEMORY[0x1E69E9840];
}

void __93__WAClient__triggerDatapathDiagnosticsAndCollectUpdates_waMessage_andReply_queuedInvocation___block_invoke_149(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) reply];

  if (v3)
  {
    v4 = [*(a1 + 32) reply];
    v4[2](v4, *(a1 + 40), *(a1 + 48));
  }

  v5 = +[WAClient sharedClient];
  [v5 _dequeueInvocation:*(a1 + 32)];

  objc_autoreleasePoolPop(v2);
}

- (void)_getDpsStatsandReply:(id)reply queuedInvocation:(id)invocation
{
  replyCopy = reply;
  invocationCopy = invocation;
  objc_initWeak(&location, self);
  queue = [(WAClient *)self queue];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __50__WAClient__getDpsStatsandReply_queuedInvocation___block_invoke;
  v12[3] = &unk_1E830EA28;
  objc_copyWeak(v16, &location);
  v13 = invocationCopy;
  selfCopy = self;
  v16[1] = a2;
  v15 = replyCopy;
  v10 = replyCopy;
  v11 = invocationCopy;
  dispatch_async(queue, v12);

  objc_destroyWeak(v16);
  objc_destroyWeak(&location);
}

void __50__WAClient__getDpsStatsandReply_queuedInvocation___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v4 = *(a1 + 32);
  if (!*(a1 + 32))
  {
    v5 = objc_alloc_init(WAQueuedInvocation);

    v6 = [[InvokeMakerInfo alloc] initWithSel:*(a1 + 64) andTarget:*(a1 + 40)];
    v7 = MEMORY[0x1CCA780B0](*(a1 + 48));
    v8 = [WAUtil _generateInvocationForMethod:v6, v7, v5, 0];

    [(WAQueuedInvocation *)v5 setInvocation:v8];
    [(WAQueuedInvocation *)v5 setReply:*(a1 + 48)];
    v9 = [WeakRetained queuedInvocations];
    [v9 addObject:v5];

    v4 = v5;
  }

  if ([WeakRetained daemonConnectionValid])
  {
    v10 = [WeakRetained conn];
    v11 = [v10 remoteObjectProxyWithErrorHandler:&__block_literal_global_152];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __50__WAClient__getDpsStatsandReply_queuedInvocation___block_invoke_153;
    v15[3] = &unk_1E830EC98;
    v16 = v4;
    [v11 getDpsStatsandReply:v15];

    v12 = v16;
  }

  else
  {
    v14 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446466;
      v18 = "[WAClient _getDpsStatsandReply:queuedInvocation:]_block_invoke";
      v19 = 1024;
      v20 = 660;
      _os_log_impl(&dword_1C8460000, v14, OS_LOG_TYPE_DEBUG, "%{public}s::%d:XPC: Daemon connection not valid, invocation queued and connection establishment about to be initiated...", buf, 0x12u);
    }

    v12 = [WeakRetained _getConnectionIssueHandlerBlock];
    v12[2]();
  }

  objc_autoreleasePoolPop(v2);
  v13 = *MEMORY[0x1E69E9840];
}

void __50__WAClient__getDpsStatsandReply_queuedInvocation___block_invoke_150(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v5 = 136446722;
    v6 = "[WAClient _getDpsStatsandReply:queuedInvocation:]_block_invoke";
    v7 = 1024;
    v8 = 665;
    v9 = 2112;
    v10 = v2;
    _os_log_impl(&dword_1C8460000, v3, OS_LOG_TYPE_ERROR, "%{public}s::%d:XPC: WAClient - getDpsStatsandReply - error: %@", &v5, 0x1Cu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void __50__WAClient__getDpsStatsandReply_queuedInvocation___block_invoke_153(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v20 = "[WAClient _getDpsStatsandReply:queuedInvocation:]_block_invoke";
      v21 = 1024;
      v22 = 669;
      v23 = 2112;
      v24 = v6;
      _os_log_impl(&dword_1C8460000, v7, OS_LOG_TYPE_ERROR, "%{public}s::%d:XPC: WAClient - _getDpsStatsandReply - error: %@", buf, 0x1Cu);
    }
  }

  v8 = v6;
  if ([v8 code] == 9009)
  {
    v9 = +[WAClient sharedClient];
    [v9 _reregister];
  }

  v10 = +[WAClient sharedClient];
  v11 = [v10 replyQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__WAClient__getDpsStatsandReply_queuedInvocation___block_invoke_154;
  block[3] = &unk_1E830EC20;
  v16 = *(a1 + 32);
  v17 = v5;
  v18 = v8;
  v12 = v8;
  v13 = v5;
  dispatch_async(v11, block);

  v14 = *MEMORY[0x1E69E9840];
}

void __50__WAClient__getDpsStatsandReply_queuedInvocation___block_invoke_154(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) reply];

  if (v3)
  {
    v4 = [*(a1 + 32) reply];
    v4[2](v4, *(a1 + 40), *(a1 + 48));
  }

  v5 = +[WAClient sharedClient];
  [v5 _dequeueInvocation:*(a1 + 32)];

  objc_autoreleasePoolPop(v2);
}

- (void)_killDaemonAndReply:(id)reply queuedInvocation:(id)invocation
{
  replyCopy = reply;
  invocationCopy = invocation;
  objc_initWeak(&location, self);
  queue = [(WAClient *)self queue];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __49__WAClient__killDaemonAndReply_queuedInvocation___block_invoke;
  v12[3] = &unk_1E830EA28;
  objc_copyWeak(v16, &location);
  v13 = invocationCopy;
  selfCopy = self;
  v16[1] = a2;
  v15 = replyCopy;
  v10 = replyCopy;
  v11 = invocationCopy;
  dispatch_async(queue, v12);

  objc_destroyWeak(v16);
  objc_destroyWeak(&location);
}

void __49__WAClient__killDaemonAndReply_queuedInvocation___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v4 = *(a1 + 32);
  if (!*(a1 + 32))
  {
    v5 = objc_alloc_init(WAQueuedInvocation);

    v6 = [[InvokeMakerInfo alloc] initWithSel:*(a1 + 64) andTarget:*(a1 + 40)];
    v7 = MEMORY[0x1CCA780B0](*(a1 + 48));
    v8 = [WAUtil _generateInvocationForMethod:v6, v7, v5, 0];

    [(WAQueuedInvocation *)v5 setInvocation:v8];
    [(WAQueuedInvocation *)v5 setReply:*(a1 + 48)];
    v9 = [WeakRetained queuedInvocations];
    [v9 addObject:v5];

    v4 = v5;
  }

  if (![WeakRetained daemonConnectionValid])
  {
    v19 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446466;
      v26 = "[WAClient _killDaemonAndReply:queuedInvocation:]_block_invoke";
      v27 = 1024;
      v28 = 708;
      _os_log_impl(&dword_1C8460000, v19, OS_LOG_TYPE_DEBUG, "%{public}s::%d:XPC: Daemon connection not valid, invocation queued and connection establishment about to be initiated...", buf, 0x12u);
    }

    v17 = [WeakRetained _getConnectionIssueHandlerBlock];
    v17[2]();
    goto LABEL_6;
  }

  v10 = dispatch_semaphore_create(0);
  v11 = [WeakRetained conn];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __49__WAClient__killDaemonAndReply_queuedInvocation___block_invoke_155;
  v23[3] = &unk_1E830ED60;
  v12 = v10;
  v24 = v12;
  v13 = [v11 remoteObjectProxyWithErrorHandler:v23];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __49__WAClient__killDaemonAndReply_queuedInvocation___block_invoke_156;
  v20[3] = &unk_1E830ED88;
  v21 = v4;
  v22 = v12;
  v14 = v12;
  [v13 killDaemonAndReply:v20];

  v15 = dispatch_time(0, 15000000000);
  dispatch_semaphore_wait(v14, v15);

  [WeakRetained setDaemonConnectionValid:0];
  v16 = [WeakRetained conn];

  if (v16)
  {
    v17 = [WeakRetained conn];
    [v17 invalidate];
LABEL_6:
  }

  objc_autoreleasePoolPop(v2);
  v18 = *MEMORY[0x1E69E9840];
}

void __49__WAClient__killDaemonAndReply_queuedInvocation___block_invoke_155(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = 136446722;
    v7 = "[WAClient _killDaemonAndReply:queuedInvocation:]_block_invoke";
    v8 = 1024;
    v9 = 716;
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&dword_1C8460000, v4, OS_LOG_TYPE_ERROR, "%{public}s::%d:XPC: WAClient - killDaemonAndReply - error: %@", &v6, 0x1Cu);
  }

  dispatch_semaphore_signal(*(a1 + 32));
  v5 = *MEMORY[0x1E69E9840];
}

void __49__WAClient__killDaemonAndReply_queuedInvocation___block_invoke_156(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v6 code] == 9009)
  {
    v7 = +[WAClient sharedClient];
    [v7 _reregister];
  }

  v8 = +[WAClient sharedClient];
  v9 = [v8 replyQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__WAClient__killDaemonAndReply_queuedInvocation___block_invoke_2;
  block[3] = &unk_1E830EC20;
  v13 = *(a1 + 32);
  v14 = v5;
  v15 = v6;
  v10 = v6;
  v11 = v5;
  dispatch_async(v9, block);

  dispatch_semaphore_signal(*(a1 + 40));
}

void __49__WAClient__killDaemonAndReply_queuedInvocation___block_invoke_2(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) reply];

  if (v3)
  {
    v4 = [*(a1 + 32) reply];
    v4[2](v4, *(a1 + 40), *(a1 + 48));
  }

  v5 = +[WAClient sharedClient];
  [v5 _dequeueInvocation:*(a1 + 32)];

  objc_autoreleasePoolPop(v2);
}

- (void)_clearMessageStoreAndReply:(id)reply queuedInvocation:(id)invocation
{
  replyCopy = reply;
  invocationCopy = invocation;
  objc_initWeak(&location, self);
  queue = [(WAClient *)self queue];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __56__WAClient__clearMessageStoreAndReply_queuedInvocation___block_invoke;
  v12[3] = &unk_1E830EA28;
  objc_copyWeak(v16, &location);
  v13 = invocationCopy;
  selfCopy = self;
  v16[1] = a2;
  v15 = replyCopy;
  v10 = replyCopy;
  v11 = invocationCopy;
  dispatch_async(queue, v12);

  objc_destroyWeak(v16);
  objc_destroyWeak(&location);
}

void __56__WAClient__clearMessageStoreAndReply_queuedInvocation___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v4 = *(a1 + 32);
  if (!*(a1 + 32))
  {
    v5 = objc_alloc_init(WAQueuedInvocation);

    v6 = [[InvokeMakerInfo alloc] initWithSel:*(a1 + 64) andTarget:*(a1 + 40)];
    v7 = MEMORY[0x1CCA780B0](*(a1 + 48));
    v8 = [WAUtil _generateInvocationForMethod:v6, v7, v5, 0];

    [(WAQueuedInvocation *)v5 setInvocation:v8];
    [(WAQueuedInvocation *)v5 setReply:*(a1 + 48)];
    v9 = [WeakRetained queuedInvocations];
    [v9 addObject:v5];

    v4 = v5;
  }

  if ([WeakRetained daemonConnectionValid])
  {
    v10 = dispatch_semaphore_create(0);
    v11 = [WeakRetained conn];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __56__WAClient__clearMessageStoreAndReply_queuedInvocation___block_invoke_157;
    v21[3] = &unk_1E830ED60;
    v12 = v10;
    v22 = v12;
    v13 = [v11 remoteObjectProxyWithErrorHandler:v21];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __56__WAClient__clearMessageStoreAndReply_queuedInvocation___block_invoke_158;
    v18[3] = &unk_1E830ED88;
    v19 = v4;
    v20 = v12;
    v14 = v12;
    [v13 clearMessageStoreAndReply:v18];

    v15 = dispatch_time(0, 15000000000);
    dispatch_semaphore_wait(v14, v15);
  }

  else
  {
    v17 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446466;
      v24 = "[WAClient _clearMessageStoreAndReply:queuedInvocation:]_block_invoke";
      v25 = 1024;
      v26 = 763;
      _os_log_impl(&dword_1C8460000, v17, OS_LOG_TYPE_DEBUG, "%{public}s::%d:XPC: Daemon connection not valid, invocation queued and connection establishment about to be initiated...", buf, 0x12u);
    }

    v14 = [WeakRetained _getConnectionIssueHandlerBlock];
    (v14[2].isa)();
  }

  objc_autoreleasePoolPop(v2);
  v16 = *MEMORY[0x1E69E9840];
}

void __56__WAClient__clearMessageStoreAndReply_queuedInvocation___block_invoke_157(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = 136446722;
    v7 = "[WAClient _clearMessageStoreAndReply:queuedInvocation:]_block_invoke";
    v8 = 1024;
    v9 = 771;
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&dword_1C8460000, v4, OS_LOG_TYPE_ERROR, "%{public}s::%d:XPC: WAClient - clearMessageStoreAndReply - error: %@", &v6, 0x1Cu);
  }

  dispatch_semaphore_signal(*(a1 + 32));
  v5 = *MEMORY[0x1E69E9840];
}

void __56__WAClient__clearMessageStoreAndReply_queuedInvocation___block_invoke_158(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v6 code] == 9009)
  {
    v7 = +[WAClient sharedClient];
    [v7 _reregister];
  }

  v8 = +[WAClient sharedClient];
  v9 = [v8 replyQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__WAClient__clearMessageStoreAndReply_queuedInvocation___block_invoke_2;
  block[3] = &unk_1E830EC20;
  v13 = *(a1 + 32);
  v14 = v5;
  v15 = v6;
  v10 = v6;
  v11 = v5;
  dispatch_async(v9, block);

  dispatch_semaphore_signal(*(a1 + 40));
}

void __56__WAClient__clearMessageStoreAndReply_queuedInvocation___block_invoke_2(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) reply];

  if (v3)
  {
    v4 = [*(a1 + 32) reply];
    v4[2](v4, *(a1 + 40), *(a1 + 48));
  }

  v5 = +[WAClient sharedClient];
  [v5 _dequeueInvocation:*(a1 + 32)];

  objc_autoreleasePoolPop(v2);
}

- (void)_getMessagesModelForGroupType:(int64_t)type andReply:(id)reply queuedInvocation:(id)invocation
{
  replyCopy = reply;
  invocationCopy = invocation;
  objc_initWeak(&location, self);
  queue = [(WAClient *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__WAClient__getMessagesModelForGroupType_andReply_queuedInvocation___block_invoke;
  block[3] = &unk_1E830EC70;
  objc_copyWeak(v18, &location);
  v15 = invocationCopy;
  selfCopy = self;
  v18[1] = a2;
  v18[2] = type;
  v17 = replyCopy;
  v12 = replyCopy;
  v13 = invocationCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(v18);
  objc_destroyWeak(&location);
}

void __68__WAClient__getMessagesModelForGroupType_andReply_queuedInvocation___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v4 = *(a1 + 32);
  if (!*(a1 + 32))
  {
    v5 = objc_alloc_init(WAQueuedInvocation);

    v6 = [[InvokeMakerInfo alloc] initWithSel:*(a1 + 64) andTarget:*(a1 + 40)];
    v7 = *(a1 + 72);
    v8 = MEMORY[0x1CCA780B0](*(a1 + 48));
    v9 = [WAUtil _generateInvocationForMethod:v6, v7, v8, v5, 0];

    [(WAQueuedInvocation *)v5 setInvocation:v9];
    [(WAQueuedInvocation *)v5 setReply:*(a1 + 48)];
    v10 = [WeakRetained queuedInvocations];
    [v10 addObject:v5];

    v4 = v5;
  }

  if ([WeakRetained daemonConnectionValid])
  {
    v11 = [WeakRetained conn];
    v12 = [v11 remoteObjectProxyWithErrorHandler:&__block_literal_global_161];
    v13 = *(a1 + 72);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __68__WAClient__getMessagesModelForGroupType_andReply_queuedInvocation___block_invoke_162;
    v17[3] = &unk_1E830EC98;
    v18 = v4;
    [v12 getMessagesModelForGroupType:v13 andReply:v17];

    v14 = v18;
  }

  else
  {
    v16 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446466;
      v20 = "[WAClient _getMessagesModelForGroupType:andReply:queuedInvocation:]_block_invoke";
      v21 = 1024;
      v22 = 815;
      _os_log_impl(&dword_1C8460000, v16, OS_LOG_TYPE_DEBUG, "%{public}s::%d:XPC: Daemon connection not valid, invocation queued and connection establishment about to be initiated...", buf, 0x12u);
    }

    v14 = [WeakRetained _getConnectionIssueHandlerBlock];
    v14[2]();
  }

  objc_autoreleasePoolPop(v2);
  v15 = *MEMORY[0x1E69E9840];
}

void __68__WAClient__getMessagesModelForGroupType_andReply_queuedInvocation___block_invoke_159(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v5 = 136446722;
    v6 = "[WAClient _getMessagesModelForGroupType:andReply:queuedInvocation:]_block_invoke";
    v7 = 1024;
    v8 = 821;
    v9 = 2112;
    v10 = v2;
    _os_log_impl(&dword_1C8460000, v3, OS_LOG_TYPE_ERROR, "%{public}s::%d:XPC: WAClient - getMessagesModelAndReply - error: %@", &v5, 0x1Cu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void __68__WAClient__getMessagesModelForGroupType_andReply_queuedInvocation___block_invoke_162(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v6 code] == 9009)
  {
    v7 = +[WAClient sharedClient];
    [v7 _reregister];
  }

  v8 = +[WAClient sharedClient];
  v9 = [v8 replyQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__WAClient__getMessagesModelForGroupType_andReply_queuedInvocation___block_invoke_2;
  block[3] = &unk_1E830EC20;
  v13 = *(a1 + 32);
  v14 = v5;
  v15 = v6;
  v10 = v6;
  v11 = v5;
  dispatch_async(v9, block);
}

void __68__WAClient__getMessagesModelForGroupType_andReply_queuedInvocation___block_invoke_2(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) reply];

  if (v3)
  {
    v4 = [*(a1 + 32) reply];
    v4[2](v4, *(a1 + 40), *(a1 + 48));
  }

  v5 = +[WAClient sharedClient];
  [v5 _dequeueInvocation:*(a1 + 32)];

  objc_autoreleasePoolPop(v2);
}

- (void)_sendMemoryPressureRequestAndReply:(id)reply queuedInvocation:(id)invocation
{
  replyCopy = reply;
  invocationCopy = invocation;
  objc_initWeak(&location, self);
  queue = [(WAClient *)self queue];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __64__WAClient__sendMemoryPressureRequestAndReply_queuedInvocation___block_invoke;
  v12[3] = &unk_1E830EA28;
  objc_copyWeak(v16, &location);
  v13 = invocationCopy;
  selfCopy = self;
  v16[1] = a2;
  v15 = replyCopy;
  v10 = replyCopy;
  v11 = invocationCopy;
  dispatch_async(queue, v12);

  objc_destroyWeak(v16);
  objc_destroyWeak(&location);
}

void __64__WAClient__sendMemoryPressureRequestAndReply_queuedInvocation___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v4 = *(a1 + 32);
  if (!*(a1 + 32))
  {
    v5 = objc_alloc_init(WAQueuedInvocation);

    v6 = [[InvokeMakerInfo alloc] initWithSel:*(a1 + 64) andTarget:*(a1 + 40)];
    v7 = MEMORY[0x1CCA780B0](*(a1 + 48));
    v8 = [WAUtil _generateInvocationForMethod:v6, v7, v5, 0];

    [(WAQueuedInvocation *)v5 setInvocation:v8];
    [(WAQueuedInvocation *)v5 setReply:*(a1 + 48)];
    v9 = [WeakRetained queuedInvocations];
    [v9 addObject:v5];

    v4 = v5;
  }

  if ([WeakRetained daemonConnectionValid])
  {
    v10 = dispatch_semaphore_create(0);
    v11 = [WeakRetained conn];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __64__WAClient__sendMemoryPressureRequestAndReply_queuedInvocation___block_invoke_163;
    v21[3] = &unk_1E830ED60;
    v12 = v10;
    v22 = v12;
    v13 = [v11 remoteObjectProxyWithErrorHandler:v21];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __64__WAClient__sendMemoryPressureRequestAndReply_queuedInvocation___block_invoke_164;
    v18[3] = &unk_1E830ED88;
    v19 = v4;
    v20 = v12;
    v14 = v12;
    [v13 sendMemoryPressureRequestAndReply:v18];

    v15 = dispatch_time(0, 15000000000);
    dispatch_semaphore_wait(v14, v15);
  }

  else
  {
    v17 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446466;
      v24 = "[WAClient _sendMemoryPressureRequestAndReply:queuedInvocation:]_block_invoke";
      v25 = 1024;
      v26 = 861;
      _os_log_impl(&dword_1C8460000, v17, OS_LOG_TYPE_DEBUG, "%{public}s::%d:XPC: Daemon connection not valid, invocation queued and connection establishment about to be initiated...", buf, 0x12u);
    }

    v14 = [WeakRetained _getConnectionIssueHandlerBlock];
    (v14[2].isa)();
  }

  objc_autoreleasePoolPop(v2);
  v16 = *MEMORY[0x1E69E9840];
}

void __64__WAClient__sendMemoryPressureRequestAndReply_queuedInvocation___block_invoke_163(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = 136446722;
    v7 = "[WAClient _sendMemoryPressureRequestAndReply:queuedInvocation:]_block_invoke";
    v8 = 1024;
    v9 = 869;
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&dword_1C8460000, v4, OS_LOG_TYPE_ERROR, "%{public}s::%d:XPC: WAClient - _sendMemoryPressureRequestAndReply - error: %@", &v6, 0x1Cu);
  }

  dispatch_semaphore_signal(*(a1 + 32));
  v5 = *MEMORY[0x1E69E9840];
}

void __64__WAClient__sendMemoryPressureRequestAndReply_queuedInvocation___block_invoke_164(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v6 code] == 9009)
  {
    v7 = +[WAClient sharedClient];
    [v7 _reregister];
  }

  v8 = +[WAClient sharedClient];
  v9 = [v8 replyQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__WAClient__sendMemoryPressureRequestAndReply_queuedInvocation___block_invoke_2;
  block[3] = &unk_1E830EC20;
  v13 = *(a1 + 32);
  v14 = v5;
  v15 = v6;
  v10 = v6;
  v11 = v5;
  dispatch_async(v9, block);

  dispatch_semaphore_signal(*(a1 + 40));
}

void __64__WAClient__sendMemoryPressureRequestAndReply_queuedInvocation___block_invoke_2(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) reply];

  if (v3)
  {
    v4 = [*(a1 + 32) reply];
    v4[2](v4, *(a1 + 40), *(a1 + 48));
  }

  v5 = +[WAClient sharedClient];
  [v5 _dequeueInvocation:*(a1 + 32)];

  objc_autoreleasePoolPop(v2);
}

- (id)_initPrivate
{
  v38 = *MEMORY[0x1E69E9840];
  v31.receiver = self;
  v31.super_class = WAClient;
  v2 = [(WAClient *)&v31 init];
  if (!v2)
  {
    p_super = 0;
    goto LABEL_11;
  }

  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v4 = dispatch_queue_create("com.apple.wifianalytics.clientQueue", v3);
  queue = v2->_queue;
  v2->_queue = v4;

  if (!v2->_queue)
  {
    goto LABEL_16;
  }

  v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v7 = dispatch_queue_create("com.apple.wifianalytics.clientReplyQueue", v6);
  replyQueue = v2->_replyQueue;
  v2->_replyQueue = v7;

  if (!v2->_replyQueue)
  {
    goto LABEL_16;
  }

  v9 = dispatch_queue_create("com.apple.wifianalytics.clientPropertyQueue", MEMORY[0x1E69E96A8]);
  propertyQueue = v2->_propertyQueue;
  v2->_propertyQueue = v9;

  if (!v2->_propertyQueue)
  {
    goto LABEL_16;
  }

  v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v12 = dispatch_queue_create("com.apple.wifianalytics.queryableConcurrentQueue", v11);
  queryableQueue = v2->_queryableQueue;
  v2->_queryableQueue = v12;

  if (!v2->_queryableQueue)
  {
    goto LABEL_16;
  }

  v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v15 = dispatch_queue_create("com.apple.wifianalytics.fileHandlingQueue", v14);
  fileHandlingQueue = v2->_fileHandlingQueue;
  v2->_fileHandlingQueue = v15;

  if (!v2->_fileHandlingQueue || ([MEMORY[0x1E695DF70] array], v17 = objc_claimAutoreleasedReturnValue(), queuedInvocations = v2->_queuedInvocations, v2->_queuedInvocations = v17, queuedInvocations, !v2->_queuedInvocations))
  {
LABEL_16:
    p_super = &v2->super;
    v2 = 0;
    goto LABEL_11;
  }

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  configuredMessageIdentifiers = v2->_configuredMessageIdentifiers;
  v2->_configuredMessageIdentifiers = dictionary;

  dictionary2 = [MEMORY[0x1E695DF90] dictionary];
  interestedMessageIdentifiers = v2->_interestedMessageIdentifiers;
  v2->_interestedMessageIdentifiers = dictionary2;

  v23 = [MEMORY[0x1E695DFA8] set];
  registeredGroupTypes = v2->_registeredGroupTypes;
  v2->_registeredGroupTypes = v23;

  v2->_blockDaemonConnection = 0;
  v25 = +[WAUtil wifianalyticsTmpDirectory];
  wifianalyticsTmpDir = v2->_wifianalyticsTmpDir;
  v2->_wifianalyticsTmpDir = v25;

  if (!v2->_wifianalyticsTmpDir)
  {
    v30 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v33 = "[WAClient _initPrivate]";
      v34 = 1024;
      v35 = 928;
      _os_log_impl(&dword_1C8460000, v30, OS_LOG_TYPE_ERROR, "%{public}s::%d:nil wifianalyticsTmpDirectory", buf, 0x12u);
    }

    goto LABEL_16;
  }

  p_super = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v33 = "[WAClient _initPrivate]";
    v34 = 1024;
    v35 = 930;
    v36 = 2080;
    v37 = "WiFiAnalytics-785.10 Oct 22 2025 21:37:20";
    _os_log_impl(&dword_1C8460000, p_super, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:WiFiClient version: %s", buf, 0x1Cu);
  }

LABEL_11:

  v28 = *MEMORY[0x1E69E9840];
  return v2;
}

- (void)_establishDaemonConnection
{
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __38__WAClient__establishDaemonConnection__block_invoke;
  v6[3] = &unk_1E830D880;
  v6[4] = self;
  if (_establishDaemonConnection_tokenLookupOnceToken != -1)
  {
    dispatch_once(&_establishDaemonConnection_tokenLookupOnceToken, v6);
  }

  queue = [(WAClient *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__WAClient__establishDaemonConnection__block_invoke_2;
  block[3] = &unk_1E830EE00;
  objc_copyWeak(&v5, &location);
  dispatch_async(queue, block);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __38__WAClient__establishDaemonConnection__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) tokenForThisClient];

  if (!v2)
  {
    v4 = [*(a1 + 32) identifierForThisClient];
    v3 = [WAUtil getTokenForIdentifier:v4];
    [*(a1 + 32) setTokenForThisClient:v3];
  }
}

void __38__WAClient__establishDaemonConnection__block_invoke_2(uint64_t a1)
{
  v53 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained blockDaemonConnection])
  {
    v4 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v48 = "[WAClient _establishDaemonConnection]_block_invoke_2";
      v49 = 1024;
      v50 = 962;
      _os_log_impl(&dword_1C8460000, v4, OS_LOG_TYPE_ERROR, "%{public}s::%d:Connection to daemon blocked, this should only happen during testing.", buf, 0x12u);
    }
  }

  else
  {
    v5 = [WeakRetained conn];

    if (v5)
    {
      v6 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = [WeakRetained conn];
        *buf = 136446722;
        v48 = "[WAClient _establishDaemonConnection]_block_invoke";
        v49 = 1024;
        v50 = 967;
        v51 = 2112;
        v52 = v7;
        _os_log_impl(&dword_1C8460000, v6, OS_LOG_TYPE_ERROR, "%{public}s::%d:_establishDaemonConnection is called with existing connection %@, invalidating and force close before re-establishing...", buf, 0x1Cu);
      }

      v8 = [WeakRetained conn];
      [v8 invalidate];

      [WeakRetained setConn:0];
    }

    v9 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [WeakRetained tokenForThisClient];
      v11 = [WAUtil trimTokenForLogging:v10];
      *buf = 136446722;
      v48 = "[WAClient _establishDaemonConnection]_block_invoke";
      v49 = 1024;
      v50 = 972;
      v51 = 2112;
      v52 = v11;
      _os_log_impl(&dword_1C8460000, v9, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:XPC: establishing connection to daemon with token ending in: %@...", buf, 0x1Cu);
    }

    v12 = dispatch_semaphore_create(0);
    v13 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.wifianalyticsd" options:4096];
    [WeakRetained setConn:v13];

    v14 = [WeakRetained exportedRemoteInterface];
    LODWORD(v13) = v14 == 0;

    if (v13)
    {
      v15 = WAXPCRequestDelegateInterface();
      [WeakRetained setExportedRemoteInterface:v15];
    }

    v16 = [WeakRetained exportedRemoteInterface];
    v17 = [WeakRetained conn];
    [v17 setRemoteObjectInterface:v16];

    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = __38__WAClient__establishDaemonConnection__block_invoke_180;
    v43[3] = &unk_1E830EDB0;
    objc_copyWeak(&v45, (a1 + 32));
    v46 = 0;
    v18 = v12;
    v44 = v18;
    v19 = [WeakRetained conn];
    [v19 setInvalidationHandler:v43];

    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __38__WAClient__establishDaemonConnection__block_invoke_182;
    v39[3] = &unk_1E830EDB0;
    objc_copyWeak(&v41, (a1 + 32));
    v42 = 0;
    v20 = v18;
    v40 = v20;
    v21 = [WeakRetained conn];
    [v21 setInterruptionHandler:v39];

    v22 = [WeakRetained conn];
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __38__WAClient__establishDaemonConnection__block_invoke_184;
    v37[3] = &unk_1E830ED60;
    v23 = v20;
    v38 = v23;
    v24 = [v22 remoteObjectProxyWithErrorHandler:v37];
    v25 = [WeakRetained tokenForThisClient];
    v30 = MEMORY[0x1E69E9820];
    v31 = 3221225472;
    v32 = __38__WAClient__establishDaemonConnection__block_invoke_185;
    v33 = &unk_1E830EDD8;
    objc_copyWeak(&v35, (a1 + 32));
    v36 = 0;
    v4 = v23;
    v34 = v4;
    [v24 establishConnectionWithToken:v25 andReply:&v30];

    v26 = [WeakRetained conn];
    [v26 resume];

    v27 = dispatch_time(0, 15000000000);
    if (dispatch_semaphore_wait(v4, v27))
    {
      v28 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        v48 = "[WAClient _establishDaemonConnection]_block_invoke";
        v49 = 1024;
        v50 = 1044;
        _os_log_impl(&dword_1C8460000, v28, OS_LOG_TYPE_ERROR, "%{public}s::%d:PARSER: gave up waiting to establish connection. Bailing to avoid a hang", buf, 0x12u);
      }
    }

    objc_destroyWeak(&v35);
    objc_destroyWeak(&v41);

    objc_destroyWeak(&v45);
  }

  objc_autoreleasePoolPop(v2);
  v29 = *MEMORY[0x1E69E9840];
}

void __38__WAClient__establishDaemonConnection__block_invoke_180(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__WAClient__establishDaemonConnection__block_invoke_2_181;
  block[3] = &unk_1E830EDB0;
  objc_copyWeak(&v6, (a1 + 40));
  v7 = *(a1 + 48);
  v5 = *(a1 + 32);
  dispatch_sync(v3, block);

  objc_destroyWeak(&v6);
}

void __38__WAClient__establishDaemonConnection__block_invoke_2_181(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setDaemonConnectionValid:0];
  v5 = [WeakRetained queuedInvocations];
  v6 = [v5 count];

  v7 = WALogCategoryDefaultHandle();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
  if (v6)
  {
    if (v8)
    {
      v12 = 136446466;
      v13 = "[WAClient _establishDaemonConnection]_block_invoke_2";
      v14 = 1024;
      v15 = 990;
      _os_log_impl(&dword_1C8460000, v7, OS_LOG_TYPE_ERROR, "%{public}s::%d:XPC: Client invalidation handler, but there are queued invocations! removing them", &v12, 0x12u);
    }

    [WeakRetained _removeAllQueuedInvocations];
  }

  else
  {
    if (v8)
    {
      v9 = [WeakRetained queuedInvocations];
      if (v9)
      {
        v1 = [WeakRetained queuedInvocations];
        v10 = [v1 count];
      }

      else
      {
        v10 = 99;
      }

      v12 = 136446722;
      v13 = "[WAClient _establishDaemonConnection]_block_invoke";
      v14 = 1024;
      v15 = 993;
      v16 = 2048;
      v17 = v10;
      _os_log_impl(&dword_1C8460000, v7, OS_LOG_TYPE_ERROR, "%{public}s::%d:XPC: Client invalidation handler, won't try to reestablish connection as the daemon could have been told to idle-exit. Queued invocations count: %ld", &v12, 0x1Cu);
      if (v9)
      {
      }
    }
  }

  if ((*(a1 + 48) & 1) == 0)
  {
    dispatch_semaphore_signal(*(a1 + 32));
  }

  objc_autoreleasePoolPop(v3);
  v11 = *MEMORY[0x1E69E9840];
}

void __38__WAClient__establishDaemonConnection__block_invoke_182(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__WAClient__establishDaemonConnection__block_invoke_2_183;
  block[3] = &unk_1E830EDB0;
  objc_copyWeak(&v6, (a1 + 40));
  v7 = *(a1 + 48);
  v5 = *(a1 + 32);
  dispatch_sync(v3, block);

  objc_destroyWeak(&v6);
}

void __38__WAClient__establishDaemonConnection__block_invoke_2_183(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setDaemonConnectionValid:0];
  v5 = [WeakRetained queuedInvocations];
  v6 = [v5 count];

  v7 = WALogCategoryDefaultHandle();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
  if (v6)
  {
    if (v8)
    {
      v12 = 136446466;
      v13 = "[WAClient _establishDaemonConnection]_block_invoke_2";
      v14 = 1024;
      v15 = 1004;
      _os_log_impl(&dword_1C8460000, v7, OS_LOG_TYPE_ERROR, "%{public}s::%d:XPC: Client interruption handler, but there are queued invocations! removing them", &v12, 0x12u);
    }

    [WeakRetained _removeAllQueuedInvocations];
  }

  else
  {
    if (v8)
    {
      v9 = [WeakRetained queuedInvocations];
      if (v9)
      {
        v1 = [WeakRetained queuedInvocations];
        v10 = [v1 count];
      }

      else
      {
        v10 = 99;
      }

      v12 = 136446722;
      v13 = "[WAClient _establishDaemonConnection]_block_invoke";
      v14 = 1024;
      v15 = 1007;
      v16 = 2048;
      v17 = v10;
      _os_log_impl(&dword_1C8460000, v7, OS_LOG_TYPE_ERROR, "%{public}s::%d:XPC: Client interruption handler, won't try to reestablish connection as the daemon could have been told to idle-exit. Queued invocations count: %ld", &v12, 0x1Cu);
      if (v9)
      {
      }
    }
  }

  if ((*(a1 + 48) & 1) == 0)
  {
    dispatch_semaphore_signal(*(a1 + 32));
  }

  objc_autoreleasePoolPop(v3);
  v11 = *MEMORY[0x1E69E9840];
}

void __38__WAClient__establishDaemonConnection__block_invoke_184(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v6 = 136446722;
    v7 = "[WAClient _establishDaemonConnection]_block_invoke";
    v8 = 1024;
    v9 = 1015;
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&dword_1C8460000, v4, OS_LOG_TYPE_DEBUG, "%{public}s::%d:XPC: WA XPC API error: %@", &v6, 0x1Cu);
  }

  dispatch_semaphore_signal(*(a1 + 32));
  v5 = *MEMORY[0x1E69E9840];
}

void __38__WAClient__establishDaemonConnection__block_invoke_185(uint64_t a1, void *a2, uint64_t a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = WeakRetained;
  if (!a3)
  {
    [WeakRetained setDaemonConnectionValid:1];
    v8 = [MEMORY[0x1E696AD88] defaultCenter];
    [v8 removeObserver:v7];

    v9 = [MEMORY[0x1E696AD88] defaultCenter];
    v10 = [v7 tokenForThisClient];
    [v9 addObserver:v7 selector:sel__wakeUpNotificationForThisClientReceived_ name:v10 object:0];

    v11 = [v7 tokenForThisClient];

    if (!v11)
    {
      if (v5)
      {
        [v7 setTokenForThisClient:v5];
        v12 = [v7 identifierForThisClient];
        [WAUtil storeToken:v5 withIdentifier:v12];
      }

      else
      {
        v17 = WALogCategoryDefaultHandle();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v18 = 136446466;
          v19 = "[WAClient _establishDaemonConnection]_block_invoke";
          v20 = 1024;
          v21 = 1030;
          _os_log_impl(&dword_1C8460000, v17, OS_LOG_TYPE_ERROR, "%{public}s::%d:XPC: Didn't supply a previously received token to WA daemon and didn't receive one back! Persistence *is* broken for this client", &v18, 0x12u);
        }
      }
    }
  }

  v13 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v14 = [v7 tokenForThisClient];
    v15 = [v7 identifierForThisClient];
    v18 = 136446978;
    v19 = "[WAClient _establishDaemonConnection]_block_invoke";
    v20 = 1024;
    v21 = 1036;
    v22 = 2112;
    v23 = v14;
    v24 = 2112;
    v25 = v15;
    _os_log_impl(&dword_1C8460000, v13, OS_LOG_TYPE_DEBUG, "%{public}s::%d:XPC: Connection established (token:%@ identifier:%@)", &v18, 0x26u);
  }

  if ((*(a1 + 48) & 1) == 0)
  {
    dispatch_semaphore_signal(*(a1 + 32));
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)_reregister
{
  objc_initWeak(&location, self);
  queue = [(WAClient *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __23__WAClient__reregister__block_invoke;
  block[3] = &unk_1E830EE28;
  objc_copyWeak(&v5, &location);
  block[4] = self;
  dispatch_async(queue, block);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __23__WAClient__reregister__block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  context = objc_autoreleasePoolPush();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained registeredGroupTypes];
  v3 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v15;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v14 + 1) + 8 * i);
        v8 = *(a1 + 32);
        v9 = [v7 unsignedIntegerValue];
        v13[0] = MEMORY[0x1E69E9820];
        v13[1] = 3221225472;
        v13[2] = __23__WAClient__reregister__block_invoke_2;
        v13[3] = &unk_1E830EC98;
        v13[4] = v7;
        [v8 _registerMessageGroup:v9 andReply:v13 queuedInvocation:0];
      }

      v4 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v4);
  }

  objc_autoreleasePoolPop(context);
  v10 = *MEMORY[0x1E69E9840];
}

void __23__WAClient__reregister__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = WALogCategoryDefaultHandle();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v12 = 136446722;
      v13 = "[WAClient _reregister]_block_invoke_2";
      v14 = 1024;
      v15 = 1062;
      v16 = 2112;
      v17 = v4;
      v7 = "%{public}s::%d:XPC: Error ensuring registration is intact: %@";
      v8 = v6;
      v9 = OS_LOG_TYPE_ERROR;
LABEL_6:
      _os_log_impl(&dword_1C8460000, v8, v9, v7, &v12, 0x1Cu);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v10 = [*(a1 + 32) unsignedLongValue];
    v12 = 136446722;
    v13 = "[WAClient _reregister]_block_invoke";
    v14 = 1024;
    v15 = 1064;
    v16 = 2048;
    v17 = v10;
    v7 = "%{public}s::%d:XPC: Successfully reregistered for group type: %lu";
    v8 = v6;
    v9 = OS_LOG_TYPE_DEBUG;
    goto LABEL_6;
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (id)_getConnectionIssueHandlerBlock
{
  objc_initWeak(&location, self);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __43__WAClient__getConnectionIssueHandlerBlock__block_invoke;
  v4[3] = &unk_1E830EE00;
  objc_copyWeak(&v5, &location);
  v2 = MEMORY[0x1CCA780B0](v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);

  return v2;
}

void __43__WAClient__getConnectionIssueHandlerBlock__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _startConnectionRecovery];
}

- (void)_wakeUpNotificationForThisClientReceived:(id)received
{
  receivedCopy = received;
  objc_initWeak(&location, self);
  queue = [(WAClient *)self queue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __53__WAClient__wakeUpNotificationForThisClientReceived___block_invoke;
  v6[3] = &unk_1E830EE00;
  objc_copyWeak(&v7, &location);
  dispatch_async(queue, v6);

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __53__WAClient__wakeUpNotificationForThisClientReceived___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained daemonConnectionValid];
  v5 = WALogCategoryDefaultHandle();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      v8 = 136446466;
      v9 = "[WAClient _wakeUpNotificationForThisClientReceived:]_block_invoke";
      v10 = 1024;
      v11 = 1091;
      _os_log_impl(&dword_1C8460000, v5, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:XPC: Received 'wake up' notification, but this client has no indication the connection is dead (daemonConnectionValid == true). Not starting connection recovery", &v8, 0x12u);
    }
  }

  else
  {
    if (v6)
    {
      v8 = 136446466;
      v9 = "[WAClient _wakeUpNotificationForThisClientReceived:]_block_invoke";
      v10 = 1024;
      v11 = 1088;
      _os_log_impl(&dword_1C8460000, v5, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:XPC: Received 'wake up' notification, establishing a connection to the daemon now...", &v8, 0x12u);
    }

    [WeakRetained _startConnectionRecovery];
  }

  objc_autoreleasePoolPop(v2);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)_removeAllQueuedInvocations
{
  objc_initWeak(&location, self);
  [(WAClient *)self setDaemonConnectionValid:0];
  v6 = MEMORY[0x1E69E9820];
  v7 = 3221225472;
  v8 = __39__WAClient__removeAllQueuedInvocations__block_invoke;
  v9 = &unk_1E830EE00;
  objc_copyWeak(&v10, &location);
  v3 = dispatch_block_create(DISPATCH_BLOCK_BARRIER, &v6);
  v4 = dispatch_time(0, 500000000);
  v5 = [(WAClient *)self queue:v6];
  dispatch_after(v4, v5, v3);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __39__WAClient__removeAllQueuedInvocations__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v5 = 136446466;
    v6 = "[WAClient _removeAllQueuedInvocations]_block_invoke";
    v7 = 1024;
    v8 = 1106;
    _os_log_impl(&dword_1C8460000, v2, OS_LOG_TYPE_ERROR, "%{public}s::%d:XPC: replying with WAErrorCodeDaemonContactTimeout error to all requests and removing them", &v5, 0x12u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _replyAllWithTimeoutErrorAndRemove];

  v4 = *MEMORY[0x1E69E9840];
}

- (void)_startConnectionRecovery
{
  v27 = *MEMORY[0x1E69E9840];
  objc_initWeak(&location, self);
  [(WAClient *)self connectionRecoveryStartTime];
  if (v3 >= 1.0)
  {
    v16 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446466;
      v24 = "[WAClient _startConnectionRecovery]";
      v25 = 1024;
      v26 = 1117;
      _os_log_impl(&dword_1C8460000, v16, OS_LOG_TYPE_DEBUG, "%{public}s::%d:XPC: connection recovery already in progress, won't start another.", buf, 0x12u);
    }
  }

  else
  {
    [(WAClient *)self setDaemonConnectionValid:0];
    conn = [(WAClient *)self conn];

    if (conn)
    {
      conn2 = [(WAClient *)self conn];
      [conn2 invalidate];

      [(WAClient *)self setConn:0];
    }

    date = [MEMORY[0x1E695DF00] date];
    [date timeIntervalSince1970];
    [(WAClient *)self setConnectionRecoveryStartTime:?];

    recoveryTickBlock = [(WAClient *)self recoveryTickBlock];
    if (recoveryTickBlock)
    {
      recoveryTickBlock2 = [(WAClient *)self recoveryTickBlock];
      v9 = dispatch_block_testcancel(recoveryTickBlock2) == 0;

      if (v9)
      {
        recoveryTickBlock3 = [(WAClient *)self recoveryTickBlock];
        dispatch_block_cancel(recoveryTickBlock3);
      }
    }

    v17 = MEMORY[0x1E69E9820];
    v18 = 3221225472;
    v19 = __36__WAClient__startConnectionRecovery__block_invoke;
    v20 = &unk_1E830EE00;
    objc_copyWeak(&v21, &location);
    v11 = dispatch_block_create(DISPATCH_BLOCK_BARRIER, &v17);
    [(WAClient *)self setRecoveryTickBlock:v11, v17, v18, v19, v20];

    v12 = dispatch_time(0, 500000000);
    queue = [(WAClient *)self queue];
    recoveryTickBlock4 = [(WAClient *)self recoveryTickBlock];
    dispatch_after(v12, queue, recoveryTickBlock4);

    objc_destroyWeak(&v21);
  }

  objc_destroyWeak(&location);
  v15 = *MEMORY[0x1E69E9840];
}

void __36__WAClient__startConnectionRecovery__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _connectionRecoveryTick];
}

- (void)_connectionRecoveryTick
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [(WAClient *)self connectionRecoveryStartTime];
    v6 = v5;
    [(WAClient *)self connectionRecoveryStartTime];
    v8 = v7;
    if (v7 < 2.22507386e-308)
    {
      v12 = -1.0;
    }

    else
    {
      date = [MEMORY[0x1E695DF00] date];
      [date timeIntervalSince1970];
      v10 = v9;
      [(WAClient *)self connectionRecoveryStartTime];
      v12 = v10 - v11;
    }

    v25 = 136446978;
    v26 = "[WAClient _connectionRecoveryTick]";
    v27 = 1024;
    v28 = 1144;
    v29 = 2048;
    v30 = v6;
    v31 = 2048;
    v32 = v12;
    _os_log_impl(&dword_1C8460000, v4, OS_LOG_TYPE_DEBUG, "%{public}s::%d:XPC: connectionRecoveryStartTime:%f delta:%f", &v25, 0x26u);
    if (v8 >= 2.22507386e-308)
    {
    }
  }

  if ([(WAClient *)self daemonConnectionValid])
  {
    [(WAClient *)self _connectionRecovered];
  }

  else
  {
    [(WAClient *)self connectionRecoveryStartTime];
    if (v13 >= 2.22507386e-308 && ([MEMORY[0x1E695DF00] date], v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "timeIntervalSince1970"), v16 = v15, -[WAClient connectionRecoveryStartTime](self, "connectionRecoveryStartTime"), v18 = v16 - v17, v14, v18 >= 60.0))
    {
      [(WAClient *)self _connectionTimedOut];
    }

    else
    {
      conn = [(WAClient *)self conn];

      if (conn)
      {
        conn2 = [(WAClient *)self conn];
        [conn2 invalidate];

        [(WAClient *)self setConn:0];
      }

      [(WAClient *)self _establishDaemonConnection];
      v21 = dispatch_time(0, 500000000);
      queue = [(WAClient *)self queue];
      recoveryTickBlock = [(WAClient *)self recoveryTickBlock];
      dispatch_after(v21, queue, recoveryTickBlock);
    }
  }

  v24 = *MEMORY[0x1E69E9840];
}

- (void)_connectionTimedOut
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v5 = 136446466;
    v6 = "[WAClient _connectionTimedOut]";
    v7 = 1024;
    v8 = 1162;
    _os_log_impl(&dword_1C8460000, v3, OS_LOG_TYPE_ERROR, "%{public}s::%d:XPC: connection recovery timed out, replying with WAErrorCodeDaemonContactTimeout error to all requests", &v5, 0x12u);
  }

  [(WAClient *)self _replyAllWithTimeoutErrorAndRemove];
  v4 = *MEMORY[0x1E69E9840];
}

- (void)_replyAllWithTimeoutErrorAndRemove
{
  v26 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_initWeak(&location, self);
  v2 = dispatch_group_create();
  dispatch_group_enter(v2);
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v3 = objc_loadWeakRetained(&location);
  obj = [v3 queuedInvocations];

  v4 = [obj countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v4)
  {
    v5 = *v21;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v21 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v20 + 1) + 8 * i);
        reply = [v7 reply];
        NSClassFromString(&cfstr_Nsblock.isa);
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          dispatch_group_enter(v2);
          replyQueue = [(WAClient *)selfCopy replyQueue];
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __46__WAClient__replyAllWithTimeoutErrorAndRemove__block_invoke;
          block[3] = &unk_1E830EE50;
          block[4] = v7;
          objc_copyWeak(&v19, &location);
          v18 = v2;
          dispatch_async(replyQueue, block);

          objc_destroyWeak(&v19);
        }
      }

      v4 = [obj countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v4);
  }

  queue = [(WAClient *)selfCopy queue];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __46__WAClient__replyAllWithTimeoutErrorAndRemove__block_invoke_3;
  v15[3] = &unk_1E830EE00;
  objc_copyWeak(&v16, &location);
  dispatch_group_notify(v2, queue, v15);

  dispatch_group_leave(v2);
  objc_destroyWeak(&v16);

  objc_destroyWeak(&location);
  v12 = *MEMORY[0x1E69E9840];
}

void __46__WAClient__replyAllWithTimeoutErrorAndRemove__block_invoke(uint64_t a1)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) reply];

  if (v3)
  {
    v4 = [*(a1 + 32) reply];
    v5 = MEMORY[0x1E696ABC0];
    v14 = *MEMORY[0x1E696A588];
    v15[0] = @"WAErrorCodeDaemonContactTimeout";
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    v7 = [v5 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9014 userInfo:v6];
    (v4)[2](v4, 0, v7);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v9 = [WeakRetained queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__WAClient__replyAllWithTimeoutErrorAndRemove__block_invoke_2;
  block[3] = &unk_1E830DB70;
  v10 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v13 = v10;
  dispatch_sync(v9, block);

  objc_autoreleasePoolPop(v2);
  v11 = *MEMORY[0x1E69E9840];
}

void __46__WAClient__replyAllWithTimeoutErrorAndRemove__block_invoke_2(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) setInvocation:0];
  [*(a1 + 32) setReply:0];
  dispatch_group_leave(*(a1 + 40));

  objc_autoreleasePoolPop(v2);
}

void __46__WAClient__replyAllWithTimeoutErrorAndRemove__block_invoke_3(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained queuedInvocations];
  [v2 removeAllObjects];

  v3 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v5 = 136446466;
    v6 = "[WAClient _replyAllWithTimeoutErrorAndRemove]_block_invoke_3";
    v7 = 1024;
    v8 = 1187;
    _os_log_impl(&dword_1C8460000, v3, OS_LOG_TYPE_ERROR, "%{public}s::%d:XPC: Removed all queuedInvocations", &v5, 0x12u);
  }

  [WeakRetained setConnectionRecoveryStartTime:0.0];
  v4 = *MEMORY[0x1E69E9840];
}

- (void)_connectionRecovered
{
  v28 = *MEMORY[0x1E69E9840];
  objc_initWeak(&location, self);
  v2 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v22 = "[WAClient _connectionRecovered]";
    v23 = 1024;
    v24 = 1197;
    _os_log_impl(&dword_1C8460000, v2, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:XPC: CONNECTION RECOVERED", buf, 0x12u);
  }

  v3 = +[WAClient sharedClient];
  obj = [v3 queuedInvocations];

  objc_sync_enter(obj);
  v14 = objc_loadWeakRetained(&location);
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  queuedInvocations = [v14 queuedInvocations];
  v5 = [queuedInvocations countByEnumeratingWithState:&v16 objects:v27 count:16];
  if (v5)
  {
    v6 = *v17;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(queuedInvocations);
        }

        v8 = *(*(&v16 + 1) + 8 * i);
        v9 = WALogCategoryDefaultHandle();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          invocation = [v8 invocation];
          v11 = NSStringFromSelector([invocation selector]);
          *buf = 136446722;
          v22 = "[WAClient _connectionRecovered]";
          v23 = 1024;
          v24 = 1201;
          v25 = 2112;
          v26 = v11;
          _os_log_impl(&dword_1C8460000, v9, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Connection recovery invoke iteration... selector: %@", buf, 0x1Cu);
        }

        invocation2 = [v8 invocation];
        [invocation2 invoke];
      }

      v5 = [queuedInvocations countByEnumeratingWithState:&v16 objects:v27 count:16];
    }

    while (v5);
  }

  [v14 setConnectionRecoveryStartTime:0.0];
  objc_sync_exit(obj);

  objc_destroyWeak(&location);
  v13 = *MEMORY[0x1E69E9840];
}

- (NSMutableDictionary)interestedMessageIdentifiers
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__6;
  v11 = __Block_byref_object_dispose__6;
  v12 = 0;
  propertyQueue = [(WAClient *)self propertyQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __40__WAClient_interestedMessageIdentifiers__block_invoke;
  v6[3] = &unk_1E830EE78;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(propertyQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __40__WAClient_interestedMessageIdentifiers__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(*(a1 + 32) + 8));

  objc_autoreleasePoolPop(v2);
}

- (NSMutableDictionary)configuredMessageIdentifiers
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__6;
  v11 = __Block_byref_object_dispose__6;
  v12 = 0;
  propertyQueue = [(WAClient *)self propertyQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __40__WAClient_configuredMessageIdentifiers__block_invoke;
  v6[3] = &unk_1E830EE78;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(propertyQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __40__WAClient_configuredMessageIdentifiers__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(*(a1 + 32) + 16));

  objc_autoreleasePoolPop(v2);
}

- (void)setInterestedMessageIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  propertyQueue = [(WAClient *)self propertyQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__WAClient_setInterestedMessageIdentifiers___block_invoke;
  v7[3] = &unk_1E830DB70;
  v7[4] = self;
  v8 = identifiersCopy;
  v6 = identifiersCopy;
  dispatch_barrier_async(propertyQueue, v7);
}

void __44__WAClient_setInterestedMessageIdentifiers___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  objc_storeStrong((*(a1 + 32) + 8), *(a1 + 40));

  objc_autoreleasePoolPop(v2);
}

- (void)setConfiguredMessageIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  propertyQueue = [(WAClient *)self propertyQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__WAClient_setConfiguredMessageIdentifiers___block_invoke;
  v7[3] = &unk_1E830DB70;
  v7[4] = self;
  v8 = identifiersCopy;
  v6 = identifiersCopy;
  dispatch_barrier_async(propertyQueue, v7);
}

void __44__WAClient_setConfiguredMessageIdentifiers___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  objc_storeStrong((*(a1 + 32) + 16), *(a1 + 40));

  objc_autoreleasePoolPop(v2);
}

- (void)_trapCrashMiniTracerDumpReadyForInterfaceWithName:(id)name andReply:(id)reply queuedInvocation:(id)invocation
{
  nameCopy = name;
  replyCopy = reply;
  invocationCopy = invocation;
  objc_initWeak(&location, self);
  queue = [(WAClient *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __88__WAClient__trapCrashMiniTracerDumpReadyForInterfaceWithName_andReply_queuedInvocation___block_invoke;
  block[3] = &unk_1E830ED38;
  objc_copyWeak(v21, &location);
  v21[1] = a2;
  v17 = invocationCopy;
  selfCopy = self;
  v19 = nameCopy;
  v20 = replyCopy;
  v13 = replyCopy;
  v14 = nameCopy;
  v15 = invocationCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(v21);
  objc_destroyWeak(&location);
}

void __88__WAClient__trapCrashMiniTracerDumpReadyForInterfaceWithName_andReply_queuedInvocation___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v4 = *(a1 + 32);
  if (!*(a1 + 32))
  {
    v5 = objc_alloc_init(WAQueuedInvocation);

    v6 = [[InvokeMakerInfo alloc] initWithSel:*(a1 + 72) andTarget:*(a1 + 40)];
    v7 = *(a1 + 48);
    v8 = MEMORY[0x1CCA780B0](*(a1 + 56));
    v9 = [WAUtil _generateInvocationForMethod:v6, v7, v8, v5, 0];

    [(WAQueuedInvocation *)v5 setInvocation:v9];
    [(WAQueuedInvocation *)v5 setReply:*(a1 + 56)];
    v10 = [WeakRetained queuedInvocations];
    [v10 addObject:v5];

    v4 = v5;
  }

  if ([WeakRetained daemonConnectionValid])
  {
    v11 = [WeakRetained conn];
    v12 = [v11 remoteObjectProxyWithErrorHandler:&__block_literal_global_203];
    v13 = *(a1 + 48);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __88__WAClient__trapCrashMiniTracerDumpReadyForInterfaceWithName_andReply_queuedInvocation___block_invoke_204;
    v17[3] = &unk_1E830EC98;
    v18 = v4;
    [v12 trapCrashMiniTracerDumpReadyForInterfaceWithName:v13 andReply:v17];

    v14 = v18;
  }

  else
  {
    v16 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446466;
      v20 = "[WAClient _trapCrashMiniTracerDumpReadyForInterfaceWithName:andReply:queuedInvocation:]_block_invoke";
      v21 = 1024;
      v22 = 1261;
      _os_log_impl(&dword_1C8460000, v16, OS_LOG_TYPE_DEBUG, "%{public}s::%d:XPC: Daemon connection not valid, invocation queued and connection establishment about to be initiated...", buf, 0x12u);
    }

    v14 = [WeakRetained _getConnectionIssueHandlerBlock];
    v14[2]();
  }

  objc_autoreleasePoolPop(v2);
  v15 = *MEMORY[0x1E69E9840];
}

void __88__WAClient__trapCrashMiniTracerDumpReadyForInterfaceWithName_andReply_queuedInvocation___block_invoke_201(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v5 = 136446722;
    v6 = "[WAClient _trapCrashMiniTracerDumpReadyForInterfaceWithName:andReply:queuedInvocation:]_block_invoke";
    v7 = 1024;
    v8 = 1267;
    v9 = 2112;
    v10 = v2;
    _os_log_impl(&dword_1C8460000, v3, OS_LOG_TYPE_ERROR, "%{public}s::%d:XPC: WAClient - trapCrashMiniTracerDumpReady - error: %@", &v5, 0x1Cu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void __88__WAClient__trapCrashMiniTracerDumpReadyForInterfaceWithName_andReply_queuedInvocation___block_invoke_204(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if ([v4 code] == 9009)
  {
    v5 = +[WAClient sharedClient];
    [v5 _reregister];
  }

  v6 = +[WAClient sharedClient];
  v7 = [v6 replyQueue];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __88__WAClient__trapCrashMiniTracerDumpReadyForInterfaceWithName_andReply_queuedInvocation___block_invoke_2;
  v9[3] = &unk_1E830DB70;
  v10 = *(a1 + 32);
  v11 = v4;
  v8 = v4;
  dispatch_async(v7, v9);
}

void __88__WAClient__trapCrashMiniTracerDumpReadyForInterfaceWithName_andReply_queuedInvocation___block_invoke_2(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) reply];

  if (v3)
  {
    v4 = [*(a1 + 32) reply];
    v4[2](v4, 0, *(a1 + 40));
  }

  v5 = +[WAClient sharedClient];
  [v5 _dequeueInvocation:*(a1 + 32)];

  objc_autoreleasePoolPop(v2);
}

- (void)_lqmCrashTracerNotifyForInterfaceWithName:(id)name andReply:(id)reply queuedInvocation:(id)invocation
{
  nameCopy = name;
  replyCopy = reply;
  invocationCopy = invocation;
  objc_initWeak(&location, self);
  queue = [(WAClient *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __80__WAClient__lqmCrashTracerNotifyForInterfaceWithName_andReply_queuedInvocation___block_invoke;
  block[3] = &unk_1E830ED38;
  objc_copyWeak(v21, &location);
  v21[1] = a2;
  v17 = invocationCopy;
  selfCopy = self;
  v19 = nameCopy;
  v20 = replyCopy;
  v13 = replyCopy;
  v14 = nameCopy;
  v15 = invocationCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(v21);
  objc_destroyWeak(&location);
}

void __80__WAClient__lqmCrashTracerNotifyForInterfaceWithName_andReply_queuedInvocation___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v4 = *(a1 + 32);
  if (!*(a1 + 32))
  {
    v5 = objc_alloc_init(WAQueuedInvocation);

    v6 = [[InvokeMakerInfo alloc] initWithSel:*(a1 + 72) andTarget:*(a1 + 40)];
    v7 = *(a1 + 48);
    v8 = MEMORY[0x1CCA780B0](*(a1 + 56));
    v9 = [WAUtil _generateInvocationForMethod:v6, v7, v8, v5, 0];

    [(WAQueuedInvocation *)v5 setInvocation:v9];
    [(WAQueuedInvocation *)v5 setReply:*(a1 + 56)];
    v10 = [WeakRetained queuedInvocations];
    [v10 addObject:v5];

    v4 = v5;
  }

  if ([WeakRetained daemonConnectionValid])
  {
    v11 = [WeakRetained conn];
    v12 = [v11 remoteObjectProxyWithErrorHandler:&__block_literal_global_207];
    v13 = *(a1 + 48);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __80__WAClient__lqmCrashTracerNotifyForInterfaceWithName_andReply_queuedInvocation___block_invoke_208;
    v17[3] = &unk_1E830EC98;
    v18 = v4;
    [v12 lqmCrashTracerNotifyForInterfaceWithName:v13 andReply:v17];

    v14 = v18;
  }

  else
  {
    v16 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446466;
      v20 = "[WAClient _lqmCrashTracerNotifyForInterfaceWithName:andReply:queuedInvocation:]_block_invoke";
      v21 = 1024;
      v22 = 1306;
      _os_log_impl(&dword_1C8460000, v16, OS_LOG_TYPE_DEBUG, "%{public}s::%d:XPC: Daemon connection not valid, invocation queued and connection establishment about to be initiated...", buf, 0x12u);
    }

    v14 = [WeakRetained _getConnectionIssueHandlerBlock];
    v14[2]();
  }

  objc_autoreleasePoolPop(v2);
  v15 = *MEMORY[0x1E69E9840];
}

void __80__WAClient__lqmCrashTracerNotifyForInterfaceWithName_andReply_queuedInvocation___block_invoke_205(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v5 = 136446722;
    v6 = "[WAClient _lqmCrashTracerNotifyForInterfaceWithName:andReply:queuedInvocation:]_block_invoke";
    v7 = 1024;
    v8 = 1312;
    v9 = 2112;
    v10 = v2;
    _os_log_impl(&dword_1C8460000, v3, OS_LOG_TYPE_ERROR, "%{public}s::%d:XPC: WAClient - lqmCrashTracerNotify - error: %@", &v5, 0x1Cu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void __80__WAClient__lqmCrashTracerNotifyForInterfaceWithName_andReply_queuedInvocation___block_invoke_208(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if ([v4 code] == 9009)
  {
    v5 = +[WAClient sharedClient];
    [v5 _reregister];
  }

  v6 = +[WAClient sharedClient];
  v7 = [v6 replyQueue];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __80__WAClient__lqmCrashTracerNotifyForInterfaceWithName_andReply_queuedInvocation___block_invoke_2;
  v9[3] = &unk_1E830DB70;
  v10 = *(a1 + 32);
  v11 = v4;
  v8 = v4;
  dispatch_async(v7, v9);
}

void __80__WAClient__lqmCrashTracerNotifyForInterfaceWithName_andReply_queuedInvocation___block_invoke_2(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) reply];

  if (v3)
  {
    v4 = [*(a1 + 32) reply];
    v4[2](v4, 0, *(a1 + 40));
  }

  v5 = +[WAClient sharedClient];
  [v5 _dequeueInvocation:*(a1 + 32)];

  objc_autoreleasePoolPop(v2);
}

- (void)_lqmCrashTracerReceiveBlock:(id)block forInterfaceWithName:(id)name andReply:(id)reply queuedInvocation:(id)invocation
{
  blockCopy = block;
  nameCopy = name;
  replyCopy = reply;
  invocationCopy = invocation;
  objc_initWeak(&location, self);
  queue = [(WAClient *)self queue];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __87__WAClient__lqmCrashTracerReceiveBlock_forInterfaceWithName_andReply_queuedInvocation___block_invoke;
  v20[3] = &unk_1E830EEA0;
  objc_copyWeak(v26, &location);
  v21 = invocationCopy;
  selfCopy = self;
  v23 = blockCopy;
  v24 = nameCopy;
  v26[1] = a2;
  v25 = replyCopy;
  v16 = replyCopy;
  v17 = nameCopy;
  v18 = blockCopy;
  v19 = invocationCopy;
  dispatch_async(queue, v20);

  objc_destroyWeak(v26);
  objc_destroyWeak(&location);
}

void __87__WAClient__lqmCrashTracerReceiveBlock_forInterfaceWithName_andReply_queuedInvocation___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v4 = *(a1 + 32);
  if (!*(a1 + 32))
  {
    v5 = objc_alloc_init(WAQueuedInvocation);

    v6 = [[InvokeMakerInfo alloc] initWithSel:*(a1 + 80) andTarget:*(a1 + 40)];
    v7 = *(a1 + 48);
    v8 = *(a1 + 56);
    v9 = MEMORY[0x1CCA780B0](*(a1 + 64));
    v10 = [WAUtil _generateInvocationForMethod:v6, v7, v8, v9, v5, 0];

    [(WAQueuedInvocation *)v5 setInvocation:v10];
    [(WAQueuedInvocation *)v5 setReply:*(a1 + 64)];
    v11 = [WeakRetained queuedInvocations];
    [v11 addObject:v5];

    v4 = v5;
  }

  if ([WeakRetained daemonConnectionValid])
  {
    v12 = [WeakRetained conn];
    v13 = [v12 remoteObjectProxyWithErrorHandler:&__block_literal_global_211];
    v15 = *(a1 + 48);
    v14 = *(a1 + 56);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __87__WAClient__lqmCrashTracerReceiveBlock_forInterfaceWithName_andReply_queuedInvocation___block_invoke_212;
    v19[3] = &unk_1E830EC98;
    v20 = v4;
    [v13 lqmCrashTracerReceiveBlock:v15 forInterfaceWithName:v14 andReply:v19];

    v16 = v20;
  }

  else
  {
    v18 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446466;
      v22 = "[WAClient _lqmCrashTracerReceiveBlock:forInterfaceWithName:andReply:queuedInvocation:]_block_invoke";
      v23 = 1024;
      v24 = 1352;
      _os_log_impl(&dword_1C8460000, v18, OS_LOG_TYPE_DEBUG, "%{public}s::%d:XPC: Daemon connection not valid, invocation queued and connection establishment about to be initiated...", buf, 0x12u);
    }

    v16 = [WeakRetained _getConnectionIssueHandlerBlock];
    v16[2]();
  }

  objc_autoreleasePoolPop(v2);
  v17 = *MEMORY[0x1E69E9840];
}

void __87__WAClient__lqmCrashTracerReceiveBlock_forInterfaceWithName_andReply_queuedInvocation___block_invoke_209(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v5 = 136446722;
    v6 = "[WAClient _lqmCrashTracerReceiveBlock:forInterfaceWithName:andReply:queuedInvocation:]_block_invoke";
    v7 = 1024;
    v8 = 1358;
    v9 = 2112;
    v10 = v2;
    _os_log_impl(&dword_1C8460000, v3, OS_LOG_TYPE_ERROR, "%{public}s::%d:XPC: WAClient - lqmCrashTracerReceiveBlock - error: %@", &v5, 0x1Cu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void __87__WAClient__lqmCrashTracerReceiveBlock_forInterfaceWithName_andReply_queuedInvocation___block_invoke_212(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if ([v4 code] == 9009)
  {
    v5 = +[WAClient sharedClient];
    [v5 _reregister];
  }

  v6 = +[WAClient sharedClient];
  v7 = [v6 replyQueue];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __87__WAClient__lqmCrashTracerReceiveBlock_forInterfaceWithName_andReply_queuedInvocation___block_invoke_2;
  v9[3] = &unk_1E830DB70;
  v10 = *(a1 + 32);
  v11 = v4;
  v8 = v4;
  dispatch_async(v7, v9);
}

void __87__WAClient__lqmCrashTracerReceiveBlock_forInterfaceWithName_andReply_queuedInvocation___block_invoke_2(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) reply];

  if (v3)
  {
    v4 = [*(a1 + 32) reply];
    v4[2](v4, 0, *(a1 + 40));
  }

  v5 = +[WAClient sharedClient];
  [v5 _dequeueInvocation:*(a1 + 32)];

  objc_autoreleasePoolPop(v2);
}

- (void)setDeviceAnalyticsConfiguration:(id)configuration andReply:(id)reply
{
  replyCopy = reply;
  configurationCopy = configuration;
  [(WAClient *)self setDeviceAnalyticsConfig:configurationCopy];
  [(WAClient *)self _setDeviceAnalyticsConfiguration:configurationCopy andReply:replyCopy queuedInvocation:0];
}

- (void)resetDeviceAnalyticsConfigurationAndReply:(id)reply
{
  replyCopy = reply;
  [(WAClient *)self setDeviceAnalyticsConfig:0];
  [(WAClient *)self _setDeviceAnalyticsConfiguration:0 andReply:replyCopy queuedInvocation:0];
}

- (void)_setDeviceAnalyticsConfiguration:(id)configuration andReply:(id)reply queuedInvocation:(id)invocation
{
  v27 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  replyCopy = reply;
  invocationCopy = invocation;
  objc_initWeak(&location, self);
  if (configurationCopy)
  {
    queue = [(WAClient *)self queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __71__WAClient__setDeviceAnalyticsConfiguration_andReply_queuedInvocation___block_invoke;
    block[3] = &unk_1E830ED38;
    objc_copyWeak(v21, &location);
    v13 = invocationCopy;
    v21[1] = a2;
    v17 = v13;
    selfCopy = self;
    v19 = configurationCopy;
    v20 = replyCopy;
    dispatch_async(queue, block);

    objc_destroyWeak(v21);
  }

  else
  {
    v15 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v24 = "[WAClient _setDeviceAnalyticsConfiguration:andReply:queuedInvocation:]";
      v25 = 1024;
      v26 = 1395;
      _os_log_impl(&dword_1C8460000, v15, OS_LOG_TYPE_ERROR, "%{public}s::%d:configurationDict argument is null, bailing", buf, 0x12u);
    }
  }

  objc_destroyWeak(&location);

  v14 = *MEMORY[0x1E69E9840];
}

void __71__WAClient__setDeviceAnalyticsConfiguration_andReply_queuedInvocation___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v4 = *(a1 + 32);
  if (!*(a1 + 32))
  {
    v5 = objc_alloc_init(WAQueuedInvocation);

    v6 = [[InvokeMakerInfo alloc] initWithSel:*(a1 + 72) andTarget:*(a1 + 40)];
    v7 = *(a1 + 48);
    v8 = MEMORY[0x1CCA780B0](*(a1 + 56));
    v9 = [WAUtil _generateInvocationForMethod:v6, v7, v8, v5, 0];

    [(WAQueuedInvocation *)v5 setInvocation:v9];
    [(WAQueuedInvocation *)v5 setReply:*(a1 + 56)];
    v10 = [WeakRetained queuedInvocations];
    [v10 addObject:v5];

    v4 = v5;
  }

  if ([WeakRetained daemonConnectionValid])
  {
    v11 = [WeakRetained conn];
    v12 = [v11 remoteObjectProxyWithErrorHandler:&__block_literal_global_215];
    v13 = *(a1 + 48);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __71__WAClient__setDeviceAnalyticsConfiguration_andReply_queuedInvocation___block_invoke_216;
    v17[3] = &unk_1E830EC98;
    v18 = v4;
    [v12 setDeviceAnalyticsConfiguration:v13 andReply:v17];

    v14 = v18;
  }

  else
  {
    v16 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446466;
      v20 = "[WAClient _setDeviceAnalyticsConfiguration:andReply:queuedInvocation:]_block_invoke";
      v21 = 1024;
      v22 = 1410;
      _os_log_impl(&dword_1C8460000, v16, OS_LOG_TYPE_DEBUG, "%{public}s::%d:XPC: Daemon connection not valid, invocation queued and connection establishment about to be initiated...", buf, 0x12u);
    }

    v14 = [WeakRetained _getConnectionIssueHandlerBlock];
    v14[2]();
  }

  objc_autoreleasePoolPop(v2);
  v15 = *MEMORY[0x1E69E9840];
}

void __71__WAClient__setDeviceAnalyticsConfiguration_andReply_queuedInvocation___block_invoke_213(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v5 = 136446722;
    v6 = "[WAClient _setDeviceAnalyticsConfiguration:andReply:queuedInvocation:]_block_invoke";
    v7 = 1024;
    v8 = 1416;
    v9 = 2112;
    v10 = v2;
    _os_log_impl(&dword_1C8460000, v3, OS_LOG_TYPE_ERROR, "%{public}s::%d:XPC: WAClient - setDeviceAnalyticsConfiguration - error: %@", &v5, 0x1Cu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void __71__WAClient__setDeviceAnalyticsConfiguration_andReply_queuedInvocation___block_invoke_216(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v6 code] == 9009)
  {
    v7 = +[WAClient sharedClient];
    [v7 _reregister];
  }

  v8 = +[WAClient sharedClient];
  v9 = [v8 replyQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__WAClient__setDeviceAnalyticsConfiguration_andReply_queuedInvocation___block_invoke_2;
  block[3] = &unk_1E830EC20;
  v13 = *(a1 + 32);
  v14 = v5;
  v15 = v6;
  v10 = v6;
  v11 = v5;
  dispatch_async(v9, block);
}

void __71__WAClient__setDeviceAnalyticsConfiguration_andReply_queuedInvocation___block_invoke_2(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) reply];

  if (v3)
  {
    v4 = [*(a1 + 32) reply];
    v4[2](v4, *(a1 + 40), *(a1 + 48));
  }

  v5 = +[WAClient sharedClient];
  [v5 _dequeueInvocation:*(a1 + 32)];

  objc_autoreleasePoolPop(v2);
}

- (void)_signalPotentialNewIORChannelsAndReply:(id)reply queuedInvocation:(id)invocation
{
  replyCopy = reply;
  invocationCopy = invocation;
  objc_initWeak(&location, self);
  queue = [(WAClient *)self queue];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __68__WAClient__signalPotentialNewIORChannelsAndReply_queuedInvocation___block_invoke;
  v12[3] = &unk_1E830EA28;
  objc_copyWeak(v16, &location);
  v13 = invocationCopy;
  selfCopy = self;
  v16[1] = a2;
  v15 = replyCopy;
  v10 = replyCopy;
  v11 = invocationCopy;
  dispatch_async(queue, v12);

  objc_destroyWeak(v16);
  objc_destroyWeak(&location);
}

void __68__WAClient__signalPotentialNewIORChannelsAndReply_queuedInvocation___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v4 = *(a1 + 32);
  if (!*(a1 + 32))
  {
    v5 = objc_alloc_init(WAQueuedInvocation);

    v6 = [[InvokeMakerInfo alloc] initWithSel:*(a1 + 64) andTarget:*(a1 + 40)];
    v7 = MEMORY[0x1CCA780B0](*(a1 + 48));
    v8 = [WAUtil _generateInvocationForMethod:v6, v7, v5, 0];

    [(WAQueuedInvocation *)v5 setInvocation:v8];
    [(WAQueuedInvocation *)v5 setReply:*(a1 + 48)];
    v9 = [WeakRetained queuedInvocations];
    [v9 addObject:v5];

    v4 = v5;
  }

  if ([WeakRetained daemonConnectionValid])
  {
    v10 = [WeakRetained conn];
    v11 = [v10 remoteObjectProxyWithErrorHandler:&__block_literal_global_219];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __68__WAClient__signalPotentialNewIORChannelsAndReply_queuedInvocation___block_invoke_220;
    v15[3] = &unk_1E830EC98;
    v16 = v4;
    [v11 signalPotentialNewIORChannelsAndReply:v15];

    v12 = v16;
  }

  else
  {
    v14 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446466;
      v18 = "[WAClient _signalPotentialNewIORChannelsAndReply:queuedInvocation:]_block_invoke";
      v19 = 1024;
      v20 = 1455;
      _os_log_impl(&dword_1C8460000, v14, OS_LOG_TYPE_DEBUG, "%{public}s::%d:XPC: Daemon connection not valid, invocation queued and connection establishment about to be initiated...", buf, 0x12u);
    }

    v12 = [WeakRetained _getConnectionIssueHandlerBlock];
    v12[2]();
  }

  objc_autoreleasePoolPop(v2);
  v13 = *MEMORY[0x1E69E9840];
}

void __68__WAClient__signalPotentialNewIORChannelsAndReply_queuedInvocation___block_invoke_217(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v5 = 136446722;
    v6 = "[WAClient _signalPotentialNewIORChannelsAndReply:queuedInvocation:]_block_invoke";
    v7 = 1024;
    v8 = 1459;
    v9 = 2112;
    v10 = v2;
    _os_log_impl(&dword_1C8460000, v3, OS_LOG_TYPE_ERROR, "%{public}s::%d:XPC: error: %@", &v5, 0x1Cu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void __68__WAClient__signalPotentialNewIORChannelsAndReply_queuedInvocation___block_invoke_220(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v21 = "[WAClient _signalPotentialNewIORChannelsAndReply:queuedInvocation:]_block_invoke";
      v22 = 1024;
      v23 = 1462;
      v24 = 2112;
      v25 = v6;
      _os_log_impl(&dword_1C8460000, v7, OS_LOG_TYPE_ERROR, "%{public}s::%d:XPC: error: %@", buf, 0x1Cu);
    }

    v8 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v21 = "[WAClient _signalPotentialNewIORChannelsAndReply:queuedInvocation:]_block_invoke";
      v22 = 1024;
      v23 = 1463;
      _os_log_impl(&dword_1C8460000, v8, OS_LOG_TYPE_ERROR, "%{public}s::%d:Unable to call signalPotentialNewIORChannels:", buf, 0x12u);
    }
  }

  v9 = v6;
  if ([v9 code] == 9009)
  {
    v10 = +[WAClient sharedClient];
    [v10 _reregister];
  }

  v11 = +[WAClient sharedClient];
  v12 = [v11 replyQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__WAClient__signalPotentialNewIORChannelsAndReply_queuedInvocation___block_invoke_221;
  block[3] = &unk_1E830EC20;
  v17 = *(a1 + 32);
  v18 = v5;
  v19 = v9;
  v13 = v9;
  v14 = v5;
  dispatch_async(v12, block);

  v15 = *MEMORY[0x1E69E9840];
}

void __68__WAClient__signalPotentialNewIORChannelsAndReply_queuedInvocation___block_invoke_221(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) reply];

  if (v3)
  {
    v4 = [*(a1 + 32) reply];
    v4[2](v4, *(a1 + 40), *(a1 + 48));
  }

  v5 = +[WAClient sharedClient];
  [v5 _dequeueInvocation:*(a1 + 32)];

  objc_autoreleasePoolPop(v2);
}

- (void)_updateRoamPoliciesForSourceBssid:(id)bssid andUpdateRoamCache:(BOOL)cache andReply:(id)reply queuedInvocation:(id)invocation
{
  bssidCopy = bssid;
  replyCopy = reply;
  invocationCopy = invocation;
  objc_initWeak(&location, self);
  queue = [(WAClient *)self queue];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __91__WAClient__updateRoamPoliciesForSourceBssid_andUpdateRoamCache_andReply_queuedInvocation___block_invoke;
  v18[3] = &unk_1E830EEC8;
  objc_copyWeak(v23, &location);
  v23[1] = a2;
  v19 = invocationCopy;
  selfCopy = self;
  cacheCopy = cache;
  v21 = bssidCopy;
  v22 = replyCopy;
  v15 = replyCopy;
  v16 = bssidCopy;
  v17 = invocationCopy;
  dispatch_async(queue, v18);

  objc_destroyWeak(v23);
  objc_destroyWeak(&location);
}

void __91__WAClient__updateRoamPoliciesForSourceBssid_andUpdateRoamCache_andReply_queuedInvocation___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v4 = *(a1 + 32);
  if (!*(a1 + 32))
  {
    v5 = objc_alloc_init(WAQueuedInvocation);

    v6 = [[InvokeMakerInfo alloc] initWithSel:*(a1 + 72) andTarget:*(a1 + 40)];
    v7 = *(a1 + 80);
    v8 = *(a1 + 48);
    v9 = MEMORY[0x1CCA780B0](*(a1 + 56));
    v10 = [WAUtil _generateInvocationForMethod:v6, v8, v7, v9, v5, 0];

    [(WAQueuedInvocation *)v5 setInvocation:v10];
    [(WAQueuedInvocation *)v5 setReply:*(a1 + 56)];
    v11 = [WeakRetained queuedInvocations];
    [v11 addObject:v5];

    v4 = v5;
  }

  if ([WeakRetained daemonConnectionValid])
  {
    v12 = [WeakRetained conn];
    v13 = [v12 remoteObjectProxyWithErrorHandler:&__block_literal_global_224];
    v14 = *(a1 + 48);
    v15 = *(a1 + 80);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __91__WAClient__updateRoamPoliciesForSourceBssid_andUpdateRoamCache_andReply_queuedInvocation___block_invoke_225;
    v19[3] = &unk_1E830EC98;
    v20 = v4;
    [v13 updateRoamPoliciesForSourceBssid:v14 andUpdateRoamCache:v15 andReply:v19];

    v16 = v20;
  }

  else
  {
    v18 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446466;
      v22 = "[WAClient _updateRoamPoliciesForSourceBssid:andUpdateRoamCache:andReply:queuedInvocation:]_block_invoke";
      v23 = 1024;
      v24 = 1497;
      _os_log_impl(&dword_1C8460000, v18, OS_LOG_TYPE_DEBUG, "%{public}s::%d:XPC: Daemon connection not valid, invocation queued and connection establishment about to be initiated...", buf, 0x12u);
    }

    v16 = [WeakRetained _getConnectionIssueHandlerBlock];
    v16[2]();
  }

  objc_autoreleasePoolPop(v2);
  v17 = *MEMORY[0x1E69E9840];
}

void __91__WAClient__updateRoamPoliciesForSourceBssid_andUpdateRoamCache_andReply_queuedInvocation___block_invoke_222(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v5 = 136446722;
    v6 = "[WAClient _updateRoamPoliciesForSourceBssid:andUpdateRoamCache:andReply:queuedInvocation:]_block_invoke";
    v7 = 1024;
    v8 = 1501;
    v9 = 2112;
    v10 = v2;
    _os_log_impl(&dword_1C8460000, v3, OS_LOG_TYPE_ERROR, "%{public}s::%d:XPC: error: %@", &v5, 0x1Cu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void __91__WAClient__updateRoamPoliciesForSourceBssid_andUpdateRoamCache_andReply_queuedInvocation___block_invoke_225(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v21 = "[WAClient _updateRoamPoliciesForSourceBssid:andUpdateRoamCache:andReply:queuedInvocation:]_block_invoke";
      v22 = 1024;
      v23 = 1504;
      v24 = 2112;
      v25 = v6;
      _os_log_impl(&dword_1C8460000, v7, OS_LOG_TYPE_ERROR, "%{public}s::%d:XPC: error: %@", buf, 0x1Cu);
    }

    v8 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v21 = "[WAClient _updateRoamPoliciesForSourceBssid:andUpdateRoamCache:andReply:queuedInvocation:]_block_invoke";
      v22 = 1024;
      v23 = 1505;
      _os_log_impl(&dword_1C8460000, v8, OS_LOG_TYPE_ERROR, "%{public}s::%d:Unable to call updateRoamPoliciesForSourceBssid:", buf, 0x12u);
    }
  }

  v9 = v6;
  if ([v9 code] == 9009)
  {
    v10 = +[WAClient sharedClient];
    [v10 _reregister];
  }

  v11 = +[WAClient sharedClient];
  v12 = [v11 replyQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __91__WAClient__updateRoamPoliciesForSourceBssid_andUpdateRoamCache_andReply_queuedInvocation___block_invoke_226;
  block[3] = &unk_1E830EC20;
  v17 = *(a1 + 32);
  v18 = v5;
  v19 = v9;
  v13 = v9;
  v14 = v5;
  dispatch_async(v12, block);

  v15 = *MEMORY[0x1E69E9840];
}

void __91__WAClient__updateRoamPoliciesForSourceBssid_andUpdateRoamCache_andReply_queuedInvocation___block_invoke_226(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) reply];

  if (v3)
  {
    v4 = [*(a1 + 32) reply];
    v4[2](v4, *(a1 + 40), *(a1 + 48));
  }

  v5 = +[WAClient sharedClient];
  [v5 _dequeueInvocation:*(a1 + 32)];

  objc_autoreleasePoolPop(v2);
}

- (void)_getDeviceAnalyticsConfigurationAndReply:(id)reply queuedInvocation:(id)invocation
{
  replyCopy = reply;
  invocationCopy = invocation;
  objc_initWeak(&location, self);
  queue = [(WAClient *)self queue];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __70__WAClient__getDeviceAnalyticsConfigurationAndReply_queuedInvocation___block_invoke;
  v12[3] = &unk_1E830EA28;
  objc_copyWeak(v16, &location);
  v13 = invocationCopy;
  selfCopy = self;
  v16[1] = a2;
  v15 = replyCopy;
  v10 = replyCopy;
  v11 = invocationCopy;
  dispatch_async(queue, v12);

  objc_destroyWeak(v16);
  objc_destroyWeak(&location);
}

void __70__WAClient__getDeviceAnalyticsConfigurationAndReply_queuedInvocation___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v4 = *(a1 + 32);
  if (!*(a1 + 32))
  {
    v5 = objc_alloc_init(WAQueuedInvocation);

    v6 = [[InvokeMakerInfo alloc] initWithSel:*(a1 + 64) andTarget:*(a1 + 40)];
    v7 = MEMORY[0x1CCA780B0](*(a1 + 48));
    v8 = [WAUtil _generateInvocationForMethod:v6, v7, v5, 0];

    [(WAQueuedInvocation *)v5 setInvocation:v8];
    [(WAQueuedInvocation *)v5 setReply:*(a1 + 48)];
    v9 = [WeakRetained queuedInvocations];
    [v9 addObject:v5];

    v4 = v5;
  }

  if ([WeakRetained daemonConnectionValid])
  {
    v10 = [WeakRetained conn];
    v11 = [v10 remoteObjectProxyWithErrorHandler:&__block_literal_global_229];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __70__WAClient__getDeviceAnalyticsConfigurationAndReply_queuedInvocation___block_invoke_230;
    v15[3] = &unk_1E830EC98;
    v16 = v4;
    [v11 getDeviceAnalyticsConfigurationAndReply:v15];

    v12 = v16;
  }

  else
  {
    v14 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446466;
      v18 = "[WAClient _getDeviceAnalyticsConfigurationAndReply:queuedInvocation:]_block_invoke";
      v19 = 1024;
      v20 = 1540;
      _os_log_impl(&dword_1C8460000, v14, OS_LOG_TYPE_DEBUG, "%{public}s::%d:XPC: Daemon connection not valid, invocation queued and connection establishment about to be initiated...", buf, 0x12u);
    }

    v12 = [WeakRetained _getConnectionIssueHandlerBlock];
    v12[2]();
  }

  objc_autoreleasePoolPop(v2);
  v13 = *MEMORY[0x1E69E9840];
}

void __70__WAClient__getDeviceAnalyticsConfigurationAndReply_queuedInvocation___block_invoke_227(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v5 = 136446722;
    v6 = "[WAClient _getDeviceAnalyticsConfigurationAndReply:queuedInvocation:]_block_invoke";
    v7 = 1024;
    v8 = 1545;
    v9 = 2112;
    v10 = v2;
    _os_log_impl(&dword_1C8460000, v3, OS_LOG_TYPE_ERROR, "%{public}s::%d:XPC: WAClient - getDeviceAnalyticsConfigurationAndReply - error: %@", &v5, 0x1Cu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void __70__WAClient__getDeviceAnalyticsConfigurationAndReply_queuedInvocation___block_invoke_230(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v20 = "[WAClient _getDeviceAnalyticsConfigurationAndReply:queuedInvocation:]_block_invoke";
      v21 = 1024;
      v22 = 1549;
      v23 = 2112;
      v24 = v6;
      _os_log_impl(&dword_1C8460000, v7, OS_LOG_TYPE_ERROR, "%{public}s::%d:XPC: WAClient - _getDeviceAnalyticsConfigurationAndReply - error: %@", buf, 0x1Cu);
    }
  }

  v8 = v6;
  if ([v8 code] == 9009)
  {
    v9 = +[WAClient sharedClient];
    [v9 _reregister];
  }

  v10 = +[WAClient sharedClient];
  v11 = [v10 replyQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__WAClient__getDeviceAnalyticsConfigurationAndReply_queuedInvocation___block_invoke_231;
  block[3] = &unk_1E830EC20;
  v16 = *(a1 + 32);
  v17 = v5;
  v18 = v8;
  v12 = v8;
  v13 = v5;
  dispatch_async(v11, block);

  v14 = *MEMORY[0x1E69E9840];
}

void __70__WAClient__getDeviceAnalyticsConfigurationAndReply_queuedInvocation___block_invoke_231(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) reply];

  if (v3)
  {
    v4 = [*(a1 + 32) reply];
    v4[2](v4, *(a1 + 40), *(a1 + 48));
  }

  v5 = +[WAClient sharedClient];
  [v5 _dequeueInvocation:*(a1 + 32)];

  objc_autoreleasePoolPop(v2);
}

- (void)updateRoamPoliciesAndSummarizeAnalyticsForNetwork:(id)network maxAgeInDays:(unint64_t)days andReply:(id)reply queuedInvocation:(id)invocation
{
  networkCopy = network;
  replyCopy = reply;
  invocationCopy = invocation;
  objc_initWeak(&location, self);
  queue = [(WAClient *)self queue];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __101__WAClient_updateRoamPoliciesAndSummarizeAnalyticsForNetwork_maxAgeInDays_andReply_queuedInvocation___block_invoke;
  v18[3] = &unk_1E830ECE8;
  objc_copyWeak(v23, &location);
  v19 = invocationCopy;
  selfCopy = self;
  v23[1] = a2;
  v23[2] = days;
  v21 = networkCopy;
  v22 = replyCopy;
  v15 = replyCopy;
  v16 = networkCopy;
  v17 = invocationCopy;
  dispatch_async(queue, v18);

  objc_destroyWeak(v23);
  objc_destroyWeak(&location);
}

void __101__WAClient_updateRoamPoliciesAndSummarizeAnalyticsForNetwork_maxAgeInDays_andReply_queuedInvocation___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v4 = *(a1 + 32);
  if (!*(a1 + 32))
  {
    v5 = objc_alloc_init(WAQueuedInvocation);

    v6 = [[InvokeMakerInfo alloc] initWithSel:*(a1 + 72) andTarget:*(a1 + 40)];
    v7 = *(a1 + 80);
    v8 = *(a1 + 48);
    v9 = MEMORY[0x1CCA780B0](*(a1 + 56));
    v10 = [WAUtil _generateInvocationForMethod:v6, v8, v7, v9, v5, 0];

    [(WAQueuedInvocation *)v5 setInvocation:v10];
    [(WAQueuedInvocation *)v5 setReply:*(a1 + 56)];
    v11 = [WeakRetained queuedInvocations];
    [v11 addObject:v5];

    v4 = v5;
  }

  if ([WeakRetained daemonConnectionValid])
  {
    v12 = [WeakRetained conn];
    v13 = [v12 remoteObjectProxyWithErrorHandler:&__block_literal_global_234];
    v14 = *(a1 + 48);
    v15 = *(a1 + 80);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __101__WAClient_updateRoamPoliciesAndSummarizeAnalyticsForNetwork_maxAgeInDays_andReply_queuedInvocation___block_invoke_235;
    v19[3] = &unk_1E830EC98;
    v20 = v4;
    [v13 updateRoamPoliciesAndSummarizeAnalyticsForNetwork:v14 maxAgeInDays:v15 andReply:v19];

    v16 = v20;
  }

  else
  {
    v18 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446466;
      v22 = "[WAClient updateRoamPoliciesAndSummarizeAnalyticsForNetwork:maxAgeInDays:andReply:queuedInvocation:]_block_invoke";
      v23 = 1024;
      v24 = 1584;
      _os_log_impl(&dword_1C8460000, v18, OS_LOG_TYPE_DEBUG, "%{public}s::%d:XPC: Daemon connection not valid, invocation queued and connection establishment about to be initiated...", buf, 0x12u);
    }

    v16 = [WeakRetained _getConnectionIssueHandlerBlock];
    v16[2]();
  }

  objc_autoreleasePoolPop(v2);
  v17 = *MEMORY[0x1E69E9840];
}

void __101__WAClient_updateRoamPoliciesAndSummarizeAnalyticsForNetwork_maxAgeInDays_andReply_queuedInvocation___block_invoke_232(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v5 = 136446722;
    v6 = "[WAClient updateRoamPoliciesAndSummarizeAnalyticsForNetwork:maxAgeInDays:andReply:queuedInvocation:]_block_invoke";
    v7 = 1024;
    v8 = 1590;
    v9 = 2112;
    v10 = v2;
    _os_log_impl(&dword_1C8460000, v3, OS_LOG_TYPE_ERROR, "%{public}s::%d:XPC: WAClient - error: %@", &v5, 0x1Cu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void __101__WAClient_updateRoamPoliciesAndSummarizeAnalyticsForNetwork_maxAgeInDays_andReply_queuedInvocation___block_invoke_235(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v6 code] == 9009)
  {
    v7 = +[WAClient sharedClient];
    [v7 _reregister];
  }

  v8 = +[WAClient sharedClient];
  v9 = [v8 replyQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __101__WAClient_updateRoamPoliciesAndSummarizeAnalyticsForNetwork_maxAgeInDays_andReply_queuedInvocation___block_invoke_2;
  block[3] = &unk_1E830EC20;
  v13 = *(a1 + 32);
  v14 = v5;
  v15 = v6;
  v10 = v6;
  v11 = v5;
  dispatch_async(v9, block);
}

void __101__WAClient_updateRoamPoliciesAndSummarizeAnalyticsForNetwork_maxAgeInDays_andReply_queuedInvocation___block_invoke_2(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) reply];

  if (v3)
  {
    v4 = [*(a1 + 32) reply];
    v4[2](v4, *(a1 + 40), *(a1 + 48));
  }

  v5 = +[WAClient sharedClient];
  [v5 _dequeueInvocation:*(a1 + 32)];

  objc_autoreleasePoolPop(v2);
}

- (void)_triggerDeviceAnalyticsStoreMigrationAndReply:(id)reply queuedInvocation:(id)invocation
{
  replyCopy = reply;
  invocationCopy = invocation;
  objc_initWeak(&location, self);
  queue = [(WAClient *)self queue];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __75__WAClient__triggerDeviceAnalyticsStoreMigrationAndReply_queuedInvocation___block_invoke;
  v12[3] = &unk_1E830EA28;
  objc_copyWeak(v16, &location);
  v13 = invocationCopy;
  selfCopy = self;
  v16[1] = a2;
  v15 = replyCopy;
  v10 = replyCopy;
  v11 = invocationCopy;
  dispatch_async(queue, v12);

  objc_destroyWeak(v16);
  objc_destroyWeak(&location);
}

void __75__WAClient__triggerDeviceAnalyticsStoreMigrationAndReply_queuedInvocation___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v4 = *(a1 + 32);
  if (!*(a1 + 32))
  {
    v5 = objc_alloc_init(WAQueuedInvocation);

    v6 = [[InvokeMakerInfo alloc] initWithSel:*(a1 + 64) andTarget:*(a1 + 40)];
    v7 = MEMORY[0x1CCA780B0](*(a1 + 48));
    v8 = [WAUtil _generateInvocationForMethod:v6, v7, v5, 0];

    [(WAQueuedInvocation *)v5 setInvocation:v8];
    [(WAQueuedInvocation *)v5 setReply:*(a1 + 48)];
    v9 = [WeakRetained queuedInvocations];
    [v9 addObject:v5];

    v4 = v5;
  }

  if ([WeakRetained daemonConnectionValid])
  {
    v10 = [WeakRetained conn];
    v11 = [v10 remoteObjectProxyWithErrorHandler:&__block_literal_global_238];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __75__WAClient__triggerDeviceAnalyticsStoreMigrationAndReply_queuedInvocation___block_invoke_239;
    v15[3] = &unk_1E830EC98;
    v16 = v4;
    [v11 triggerDeviceAnalyticsStoreMigrationAndReply:v15];

    v12 = v16;
  }

  else
  {
    v14 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446466;
      v18 = "[WAClient _triggerDeviceAnalyticsStoreMigrationAndReply:queuedInvocation:]_block_invoke";
      v19 = 1024;
      v20 = 1627;
      _os_log_impl(&dword_1C8460000, v14, OS_LOG_TYPE_DEBUG, "%{public}s::%d:XPC: Daemon connection not valid, invocation queued and connection establishment about to be initiated...", buf, 0x12u);
    }

    v12 = [WeakRetained _getConnectionIssueHandlerBlock];
    v12[2]();
  }

  objc_autoreleasePoolPop(v2);
  v13 = *MEMORY[0x1E69E9840];
}

void __75__WAClient__triggerDeviceAnalyticsStoreMigrationAndReply_queuedInvocation___block_invoke_236(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v5 = 136446722;
    v6 = "[WAClient _triggerDeviceAnalyticsStoreMigrationAndReply:queuedInvocation:]_block_invoke";
    v7 = 1024;
    v8 = 1632;
    v9 = 2112;
    v10 = v2;
    _os_log_impl(&dword_1C8460000, v3, OS_LOG_TYPE_ERROR, "%{public}s::%d:XPC: WAClient - _triggerDeviceAnalyticsStoreMigrationAndReply - error: %@", &v5, 0x1Cu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void __75__WAClient__triggerDeviceAnalyticsStoreMigrationAndReply_queuedInvocation___block_invoke_239(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v20 = "[WAClient _triggerDeviceAnalyticsStoreMigrationAndReply:queuedInvocation:]_block_invoke";
      v21 = 1024;
      v22 = 1636;
      v23 = 2112;
      v24 = v6;
      _os_log_impl(&dword_1C8460000, v7, OS_LOG_TYPE_ERROR, "%{public}s::%d:XPC: WAClient - _triggerDeviceAnalyticsStoreMigrationAndReply - error: %@", buf, 0x1Cu);
    }
  }

  v8 = v6;
  if ([v8 code] == 9009)
  {
    v9 = +[WAClient sharedClient];
    [v9 _reregister];
  }

  v10 = +[WAClient sharedClient];
  v11 = [v10 replyQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __75__WAClient__triggerDeviceAnalyticsStoreMigrationAndReply_queuedInvocation___block_invoke_240;
  block[3] = &unk_1E830EC20;
  v16 = *(a1 + 32);
  v17 = v5;
  v18 = v8;
  v12 = v8;
  v13 = v5;
  dispatch_async(v11, block);

  v14 = *MEMORY[0x1E69E9840];
}

void __75__WAClient__triggerDeviceAnalyticsStoreMigrationAndReply_queuedInvocation___block_invoke_240(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) reply];

  if (v3)
  {
    v4 = [*(a1 + 32) reply];
    v4[2](v4, *(a1 + 40), *(a1 + 48));
  }

  v5 = +[WAClient sharedClient];
  [v5 _dequeueInvocation:*(a1 + 32)];

  objc_autoreleasePoolPop(v2);
}

- (void)_issueIOReportManagementCommand:(unint64_t)command andReply:(id)reply queuedInvocation:(id)invocation
{
  replyCopy = reply;
  invocationCopy = invocation;
  objc_initWeak(&location, self);
  queue = [(WAClient *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__WAClient__issueIOReportManagementCommand_andReply_queuedInvocation___block_invoke;
  block[3] = &unk_1E830EC70;
  objc_copyWeak(v18, &location);
  v15 = invocationCopy;
  selfCopy = self;
  v18[1] = a2;
  v18[2] = command;
  v17 = replyCopy;
  v12 = replyCopy;
  v13 = invocationCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(v18);
  objc_destroyWeak(&location);
}

void __70__WAClient__issueIOReportManagementCommand_andReply_queuedInvocation___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v4 = *(a1 + 32);
  if (!*(a1 + 32))
  {
    v5 = objc_alloc_init(WAQueuedInvocation);

    v6 = [[InvokeMakerInfo alloc] initWithSel:*(a1 + 64) andTarget:*(a1 + 40)];
    v7 = *(a1 + 72);
    v8 = MEMORY[0x1CCA780B0](*(a1 + 48));
    v9 = [WAUtil _generateInvocationForMethod:v6, v7, v8, v5, 0];

    [(WAQueuedInvocation *)v5 setInvocation:v9];
    [(WAQueuedInvocation *)v5 setReply:*(a1 + 48)];
    v10 = [WeakRetained queuedInvocations];
    [v10 addObject:v5];

    v4 = v5;
  }

  if ([WeakRetained daemonConnectionValid])
  {
    v11 = [WeakRetained conn];
    v12 = [v11 remoteObjectProxyWithErrorHandler:&__block_literal_global_243];
    v13 = *(a1 + 72);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __70__WAClient__issueIOReportManagementCommand_andReply_queuedInvocation___block_invoke_244;
    v17[3] = &unk_1E830EC98;
    v18 = v4;
    [v12 issueIOReportManagementCommand:v13 andReply:v17];

    v14 = v18;
  }

  else
  {
    v16 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446466;
      v20 = "[WAClient _issueIOReportManagementCommand:andReply:queuedInvocation:]_block_invoke";
      v21 = 1024;
      v22 = 1671;
      _os_log_impl(&dword_1C8460000, v16, OS_LOG_TYPE_DEBUG, "%{public}s::%d:XPC: Daemon connection not valid, invocation queued and connection establishment about to be initiated...", buf, 0x12u);
    }

    v14 = [WeakRetained _getConnectionIssueHandlerBlock];
    v14[2]();
  }

  objc_autoreleasePoolPop(v2);
  v15 = *MEMORY[0x1E69E9840];
}

void __70__WAClient__issueIOReportManagementCommand_andReply_queuedInvocation___block_invoke_241(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v5 = 136446722;
    v6 = "[WAClient _issueIOReportManagementCommand:andReply:queuedInvocation:]_block_invoke";
    v7 = 1024;
    v8 = 1676;
    v9 = 2112;
    v10 = v2;
    _os_log_impl(&dword_1C8460000, v3, OS_LOG_TYPE_ERROR, "%{public}s::%d:XPC: WAClient - _issueIOReportManagementCommand - error: %@", &v5, 0x1Cu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void __70__WAClient__issueIOReportManagementCommand_andReply_queuedInvocation___block_invoke_244(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v20 = "[WAClient _issueIOReportManagementCommand:andReply:queuedInvocation:]_block_invoke";
      v21 = 1024;
      v22 = 1680;
      v23 = 2112;
      v24 = v6;
      _os_log_impl(&dword_1C8460000, v7, OS_LOG_TYPE_ERROR, "%{public}s::%d:XPC: WAClient - issueIOReportManagementCommand - error: %@", buf, 0x1Cu);
    }
  }

  v8 = v6;
  if ([v8 code] == 9009)
  {
    v9 = +[WAClient sharedClient];
    [v9 _reregister];
  }

  v10 = +[WAClient sharedClient];
  v11 = [v10 replyQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__WAClient__issueIOReportManagementCommand_andReply_queuedInvocation___block_invoke_245;
  block[3] = &unk_1E830EC20;
  v16 = *(a1 + 32);
  v17 = v5;
  v18 = v8;
  v12 = v8;
  v13 = v5;
  dispatch_async(v11, block);

  v14 = *MEMORY[0x1E69E9840];
}

void __70__WAClient__issueIOReportManagementCommand_andReply_queuedInvocation___block_invoke_245(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) reply];

  if (v3)
  {
    v4 = [*(a1 + 32) reply];
    v4[2](v4, *(a1 + 40), *(a1 + 48));
  }

  v5 = +[WAClient sharedClient];
  [v5 _dequeueInvocation:*(a1 + 32)];

  objc_autoreleasePoolPop(v2);
}

- (void)_processManagedFault:(id)fault at:(id)at andReply:(id)reply queuedInvocation:(id)invocation
{
  faultCopy = fault;
  atCopy = at;
  replyCopy = reply;
  invocationCopy = invocation;
  objc_initWeak(&location, self);
  queue = [(WAClient *)self queue];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __62__WAClient__processManagedFault_at_andReply_queuedInvocation___block_invoke;
  v20[3] = &unk_1E830EEA0;
  objc_copyWeak(v26, &location);
  v21 = invocationCopy;
  selfCopy = self;
  v23 = faultCopy;
  v24 = atCopy;
  v26[1] = a2;
  v25 = replyCopy;
  v16 = replyCopy;
  v17 = atCopy;
  v18 = faultCopy;
  v19 = invocationCopy;
  dispatch_async(queue, v20);

  objc_destroyWeak(v26);
  objc_destroyWeak(&location);
}

void __62__WAClient__processManagedFault_at_andReply_queuedInvocation___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v4 = *(a1 + 32);
  if (!*(a1 + 32))
  {
    v5 = objc_alloc_init(WAQueuedInvocation);

    v6 = [[InvokeMakerInfo alloc] initWithSel:*(a1 + 80) andTarget:*(a1 + 40)];
    v7 = *(a1 + 48);
    v8 = *(a1 + 56);
    v9 = MEMORY[0x1CCA780B0](*(a1 + 64));
    v10 = [WAUtil _generateInvocationForMethod:v6, v7, v8, v9, v5, 0];

    [(WAQueuedInvocation *)v5 setInvocation:v10];
    [(WAQueuedInvocation *)v5 setReply:*(a1 + 64)];
    v11 = [WeakRetained queuedInvocations];
    [v11 addObject:v5];

    v4 = v5;
  }

  if ([WeakRetained daemonConnectionValid])
  {
    v12 = [WeakRetained conn];
    v13 = [v12 remoteObjectProxyWithErrorHandler:&__block_literal_global_248];
    v15 = *(a1 + 48);
    v14 = *(a1 + 56);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __62__WAClient__processManagedFault_at_andReply_queuedInvocation___block_invoke_249;
    v19[3] = &unk_1E830EC98;
    v20 = v4;
    [v13 processManagedFault:v15 at:v14 andReply:v19];

    v16 = v20;
  }

  else
  {
    v18 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446466;
      v22 = "[WAClient _processManagedFault:at:andReply:queuedInvocation:]_block_invoke";
      v23 = 1024;
      v24 = 1715;
      _os_log_impl(&dword_1C8460000, v18, OS_LOG_TYPE_DEBUG, "%{public}s::%d:XPC: Daemon connection not valid, invocation queued and connection establishment about to be initiated...", buf, 0x12u);
    }

    v16 = [WeakRetained _getConnectionIssueHandlerBlock];
    v16[2]();
  }

  objc_autoreleasePoolPop(v2);
  v17 = *MEMORY[0x1E69E9840];
}

void __62__WAClient__processManagedFault_at_andReply_queuedInvocation___block_invoke_246(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v5 = 136446722;
    v6 = "[WAClient _processManagedFault:at:andReply:queuedInvocation:]_block_invoke";
    v7 = 1024;
    v8 = 1720;
    v9 = 2112;
    v10 = v2;
    _os_log_impl(&dword_1C8460000, v3, OS_LOG_TYPE_ERROR, "%{public}s::%d:XPC: WAClient - _issueIOReportManagementCommand - error: %@", &v5, 0x1Cu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void __62__WAClient__processManagedFault_at_andReply_queuedInvocation___block_invoke_249(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v20 = "[WAClient _processManagedFault:at:andReply:queuedInvocation:]_block_invoke";
      v21 = 1024;
      v22 = 1724;
      v23 = 2112;
      v24 = v6;
      _os_log_impl(&dword_1C8460000, v7, OS_LOG_TYPE_ERROR, "%{public}s::%d:XPC: WAClient - issueIOReportManagementCommand - error: %@", buf, 0x1Cu);
    }
  }

  v8 = v6;
  if ([v8 code] == 9009)
  {
    v9 = +[WAClient sharedClient];
    [v9 _reregister];
  }

  v10 = +[WAClient sharedClient];
  v11 = [v10 replyQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__WAClient__processManagedFault_at_andReply_queuedInvocation___block_invoke_250;
  block[3] = &unk_1E830EC20;
  v16 = *(a1 + 32);
  v17 = v5;
  v18 = v8;
  v12 = v8;
  v13 = v5;
  dispatch_async(v11, block);

  v14 = *MEMORY[0x1E69E9840];
}

void __62__WAClient__processManagedFault_at_andReply_queuedInvocation___block_invoke_250(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) reply];

  if (v3)
  {
    v4 = [*(a1 + 32) reply];
    v4[2](v4, *(a1 + 40), *(a1 + 48));
  }

  v5 = +[WAClient sharedClient];
  [v5 _dequeueInvocation:*(a1 + 32)];

  objc_autoreleasePoolPop(v2);
}

- (void)_getUsageStatsandReply:(id)reply queuedInvocation:(id)invocation
{
  replyCopy = reply;
  invocationCopy = invocation;
  objc_initWeak(&location, self);
  queue = [(WAClient *)self queue];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __52__WAClient__getUsageStatsandReply_queuedInvocation___block_invoke;
  v12[3] = &unk_1E830EA28;
  objc_copyWeak(v16, &location);
  v13 = invocationCopy;
  selfCopy = self;
  v16[1] = a2;
  v15 = replyCopy;
  v10 = replyCopy;
  v11 = invocationCopy;
  dispatch_async(queue, v12);

  objc_destroyWeak(v16);
  objc_destroyWeak(&location);
}

void __52__WAClient__getUsageStatsandReply_queuedInvocation___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v4 = *(a1 + 32);
  if (!*(a1 + 32))
  {
    v5 = objc_alloc_init(WAQueuedInvocation);

    v6 = [[InvokeMakerInfo alloc] initWithSel:*(a1 + 64) andTarget:*(a1 + 40)];
    v7 = MEMORY[0x1CCA780B0](*(a1 + 48));
    v8 = [WAUtil _generateInvocationForMethod:v6, v7, v5, 0];

    [(WAQueuedInvocation *)v5 setInvocation:v8];
    [(WAQueuedInvocation *)v5 setReply:*(a1 + 48)];
    v9 = [WeakRetained queuedInvocations];
    [v9 addObject:v5];

    v4 = v5;
  }

  if ([WeakRetained daemonConnectionValid])
  {
    v10 = [WeakRetained conn];
    v11 = [v10 remoteObjectProxyWithErrorHandler:&__block_literal_global_253];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __52__WAClient__getUsageStatsandReply_queuedInvocation___block_invoke_254;
    v15[3] = &unk_1E830EC98;
    v16 = v4;
    [v11 getUsageStatsandReply:v15];

    v12 = v16;
  }

  else
  {
    v14 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446466;
      v18 = "[WAClient _getUsageStatsandReply:queuedInvocation:]_block_invoke";
      v19 = 1024;
      v20 = 1757;
      _os_log_impl(&dword_1C8460000, v14, OS_LOG_TYPE_DEBUG, "%{public}s::%d:XPC: Daemon connection not valid, invocation queued and connection establishment about to be initiated...", buf, 0x12u);
    }

    v12 = [WeakRetained _getConnectionIssueHandlerBlock];
    v12[2]();
  }

  objc_autoreleasePoolPop(v2);
  v13 = *MEMORY[0x1E69E9840];
}

void __52__WAClient__getUsageStatsandReply_queuedInvocation___block_invoke_251(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v5 = 136446722;
    v6 = "[WAClient _getUsageStatsandReply:queuedInvocation:]_block_invoke";
    v7 = 1024;
    v8 = 1762;
    v9 = 2112;
    v10 = v2;
    _os_log_impl(&dword_1C8460000, v3, OS_LOG_TYPE_ERROR, "%{public}s::%d:XPC: WAClient - getUsageStatsandReply - error: %@", &v5, 0x1Cu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void __52__WAClient__getUsageStatsandReply_queuedInvocation___block_invoke_254(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v20 = "[WAClient _getUsageStatsandReply:queuedInvocation:]_block_invoke";
      v21 = 1024;
      v22 = 1766;
      v23 = 2112;
      v24 = v6;
      _os_log_impl(&dword_1C8460000, v7, OS_LOG_TYPE_ERROR, "%{public}s::%d:XPC: WAClient - getUsageStatsandReply - error: %@", buf, 0x1Cu);
    }
  }

  v8 = v6;
  if ([v8 code] == 9009)
  {
    v9 = +[WAClient sharedClient];
    [v9 _reregister];
  }

  v10 = +[WAClient sharedClient];
  v11 = [v10 replyQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__WAClient__getUsageStatsandReply_queuedInvocation___block_invoke_255;
  block[3] = &unk_1E830EC20;
  v16 = *(a1 + 32);
  v17 = v5;
  v18 = v8;
  v12 = v8;
  v13 = v5;
  dispatch_async(v11, block);

  v14 = *MEMORY[0x1E69E9840];
}

void __52__WAClient__getUsageStatsandReply_queuedInvocation___block_invoke_255(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) reply];

  if (v3)
  {
    v4 = [*(a1 + 32) reply];
    v4[2](v4, *(a1 + 40), *(a1 + 48));
  }

  v5 = +[WAClient sharedClient];
  [v5 _dequeueInvocation:*(a1 + 32)];

  objc_autoreleasePoolPop(v2);
}

- (void)fakeDaemonConnectionDead:(unsigned __int8)dead
{
  objc_initWeak(&location, self);
  queue = [(WAClient *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__WAClient_fakeDaemonConnectionDead___block_invoke;
  block[3] = &unk_1E830EEF0;
  deadCopy = dead;
  objc_copyWeak(&v7, &location);
  dispatch_async(queue, block);

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __37__WAClient_fakeDaemonConnectionDead___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 40))
    {
      v4 = @"ACTIVE";
    }

    else
    {
      v4 = @"INACTIVE";
    }

    v5 = [MEMORY[0x1E696AF00] callStackSymbols];
    v10 = 136446978;
    v11 = "[WAClient fakeDaemonConnectionDead:]_block_invoke";
    v12 = 1024;
    v13 = 1784;
    v14 = 2112;
    v15 = v4;
    v16 = 2112;
    v17 = v5;
    _os_log_impl(&dword_1C8460000, v3, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:XPC: Faking dead daemon connection is: %@ - stack: %@", &v10, 0x26u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setDaemonConnectionValid:*(a1 + 40) == 0];
  if (![WeakRetained daemonConnectionValid])
  {
    v7 = [WeakRetained conn];

    if (v7)
    {
      v8 = [WeakRetained conn];
      [v8 invalidate];
    }
  }

  [WeakRetained setBlockDaemonConnection:*(a1 + 40)];
  if (!*(a1 + 40))
  {
    [WeakRetained _establishDaemonConnection];
  }

  objc_autoreleasePoolPop(v2);
  v9 = *MEMORY[0x1E69E9840];
}

+ (id)WANetworkHighestAuthFlagsLabel:(signed __int16)label
{
  v8 = *MEMORY[0x1E69E9840];
  if ((label & 0x10) != 0)
  {
    result = @"SAEPK";
  }

  else
  {
    labelCopy = label;
    if ((label & 4) != 0)
    {
      result = @"SAE";
    }

    else if ((label & 8) != 0)
    {
      result = @"EAP";
    }

    else if ((label & 2) != 0)
    {
      result = @"WPA";
    }

    else if (label)
    {
      result = @"WEP";
    }

    else if (label)
    {
      v4 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
      {
        v7[0] = 67109120;
        v7[1] = labelCopy;
        _os_log_fault_impl(&dword_1C8460000, v4, OS_LOG_TYPE_FAULT, "CODE FIX NEEDED! value %u does not have a mapping", v7, 8u);
      }

      result = 0;
    }

    else
    {
      result = @"Open";
    }
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

+ (id)WANetworkAuthFlagsLabel:(signed __int16)label
{
  labelCopy = label;
  v11 = *MEMORY[0x1E69E9840];
  v4 = objc_opt_new();
  v5 = v4;
  if ((labelCopy & 0x10) != 0)
  {
    [v4 addObject:@"SAEPK"];
    if ((labelCopy & 4) == 0)
    {
LABEL_3:
      if ((labelCopy & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((labelCopy & 4) == 0)
  {
    goto LABEL_3;
  }

  [v5 addObject:@"SAE"];
  if ((labelCopy & 8) == 0)
  {
LABEL_4:
    if ((labelCopy & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  [v5 addObject:@"EAP"];
  if ((labelCopy & 2) == 0)
  {
LABEL_5:
    if ((labelCopy & 1) == 0)
    {
      goto LABEL_6;
    }

LABEL_18:
    [v5 addObject:@"WEP"];
    if (labelCopy)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_17:
  [v5 addObject:@"WPA"];
  if (labelCopy)
  {
    goto LABEL_18;
  }

LABEL_6:
  if (labelCopy)
  {
    goto LABEL_7;
  }

LABEL_19:
  [v5 addObject:@"Open"];
LABEL_7:
  if (![v5 count])
  {
    v6 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      v10[0] = 67109120;
      v10[1] = labelCopy;
      _os_log_fault_impl(&dword_1C8460000, v6, OS_LOG_TYPE_FAULT, "CODE FIX NEEDED! value %u does not have a mapping", v10, 8u);
    }
  }

  v7 = [v5 componentsJoinedByString:{@", "}];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)ouiFromThreeBytes:(unsigned __int8)bytes[3]
{
  if (bytes)
  {
    string = [MEMORY[0x1E696AD60] string];
    v6 = *bytes;
    v5 = bytes + 1;
    [string appendFormat:@"%02x", v6];
    for (i = 0; i != 2; ++i)
    {
      [string appendFormat:@":"];
      [string appendFormat:@"%02x", v5[i]];
    }
  }

  else
  {
    string = 0;
  }

  return string;
}

@end