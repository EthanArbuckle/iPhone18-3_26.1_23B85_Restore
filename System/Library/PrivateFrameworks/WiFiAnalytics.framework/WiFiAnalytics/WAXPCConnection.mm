@interface WAXPCConnection
- (WAXPCConnection)initWithXPCConnection:(id)connection;
- (WAXPCConnectionDelegate)delegate;
- (void)clearMessageStoreAndReply:(id)reply;
- (void)convertWiFiStatsIntoPercentile:(id)percentile analysisGroup:(int64_t)group groupTarget:(id)target andReply:(id)reply;
- (void)establishConnectionWithToken:(id)token andReply:(id)reply;
- (void)getDeviceAnalyticsConfigurationAndReply:(id)reply;
- (void)getDpsStatsandReply:(id)reply;
- (void)getMessagesModelForGroupType:(int64_t)type andReply:(id)reply;
- (void)getNewMessageForKey:(id)key groupType:(int64_t)type andReply:(id)reply;
- (void)getNewMessageForKey:(id)key groupType:(int64_t)type withCopy:(id)copy andReply:(id)reply;
- (void)getUsageStatsandReply:(id)reply;
- (void)issueIOReportManagementCommand:(unint64_t)command andReply:(id)reply;
- (void)killDaemonAndReply:(id)reply;
- (void)lqmCrashTracerNotifyForInterfaceWithName:(id)name andReply:(id)reply;
- (void)lqmCrashTracerReceiveBlock:(id)block forInterfaceWithName:(id)name andReply:(id)reply;
- (void)processManagedFault:(id)fault at:(id)at andReply:(id)reply;
- (void)registerMessageGroup:(int64_t)group andReply:(id)reply;
- (void)sendMemoryPressureRequestAndReply:(id)reply;
- (void)setDeviceAnalyticsConfiguration:(id)configuration andReply:(id)reply;
- (void)signalPotentialNewIORChannelsAndReply:(id)reply;
- (void)submitMessage:(id)message groupType:(int64_t)type andReply:(id)reply;
- (void)trapCrashMiniTracerDumpReadyForInterfaceWithName:(id)name andReply:(id)reply;
- (void)triggerDatapathDiagnosticsAndCollectUpdates:(int64_t)updates waMessage:(id)message andReply:(id)reply;
- (void)triggerDeviceAnalyticsStoreMigrationAndReply:(id)reply;
- (void)triggerQueryForNWActivity:(int64_t)activity andReply:(id)reply;
- (void)triggerQueryForNWActivityWithPeers:(id)peers andReply:(id)reply;
- (void)updateRoamPoliciesAndSummarizeAnalyticsForNetwork:(id)network maxAgeInDays:(unint64_t)days andReply:(id)reply;
- (void)updateRoamPoliciesForSourceBssid:(id)bssid andUpdateRoamCache:(BOOL)cache andReply:(id)reply;
@end

@implementation WAXPCConnection

- (WAXPCConnection)initWithXPCConnection:(id)connection
{
  connectionCopy = connection;
  v12.receiver = self;
  v12.super_class = WAXPCConnection;
  v6 = [(WAXPCConnection *)&v12 init];
  v7 = v6;
  if (!connectionCopy)
  {
    goto LABEL_4;
  }

  if (!v6)
  {
    goto LABEL_4;
  }

  objc_storeStrong(&v6->_connection, connection);
  v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v9 = dispatch_queue_create("com.apple.wifianalytics.xpc-connection", v8);
  queue = v7->_queue;
  v7->_queue = v9;

  if (!v7->_queue)
  {
LABEL_4:

    v7 = 0;
  }

  return v7;
}

- (void)establishConnectionWithToken:(id)token andReply:(id)reply
{
  tokenCopy = token;
  replyCopy = reply;
  objc_initWeak(&location, self);
  queue = [(WAXPCConnection *)self queue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __57__WAXPCConnection_establishConnectionWithToken_andReply___block_invoke;
  v11[3] = &unk_1E830E9D8;
  objc_copyWeak(&v14, &location);
  v12 = tokenCopy;
  v13 = replyCopy;
  v9 = replyCopy;
  v10 = tokenCopy;
  dispatch_async(queue, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __57__WAXPCConnection_establishConnectionWithToken_andReply___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = [WeakRetained delegate];
  [v4 xpcConnection:WeakRetained establishConnectionWithToken:*(a1 + 32) andReply:*(a1 + 40)];

  objc_autoreleasePoolPop(v2);
}

- (void)registerMessageGroup:(int64_t)group andReply:(id)reply
{
  replyCopy = reply;
  objc_initWeak(&location, self);
  queue = [(WAXPCConnection *)self queue];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __49__WAXPCConnection_registerMessageGroup_andReply___block_invoke;
  v9[3] = &unk_1E830EA00;
  objc_copyWeak(v11, &location);
  v11[1] = group;
  v10 = replyCopy;
  v8 = replyCopy;
  dispatch_async(queue, v9);

  objc_destroyWeak(v11);
  objc_destroyWeak(&location);
}

void __49__WAXPCConnection_registerMessageGroup_andReply___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [WeakRetained delegate];
  [v4 xpcConnection:WeakRetained registerMessageGroup:*(a1 + 48) andReply:*(a1 + 32)];

  objc_autoreleasePoolPop(v2);
}

- (void)getNewMessageForKey:(id)key groupType:(int64_t)type withCopy:(id)copy andReply:(id)reply
{
  keyCopy = key;
  copyCopy = copy;
  replyCopy = reply;
  objc_initWeak(&location, self);
  queue = [(WAXPCConnection *)self queue];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __67__WAXPCConnection_getNewMessageForKey_groupType_withCopy_andReply___block_invoke;
  v17[3] = &unk_1E830EA28;
  objc_copyWeak(v21, &location);
  v18 = keyCopy;
  v19 = copyCopy;
  v21[1] = type;
  v20 = replyCopy;
  v14 = replyCopy;
  v15 = copyCopy;
  v16 = keyCopy;
  dispatch_async(queue, v17);

  objc_destroyWeak(v21);
  objc_destroyWeak(&location);
}

void __67__WAXPCConnection_getNewMessageForKey_groupType_withCopy_andReply___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v4 = [WeakRetained delegate];
  [v4 xpcConnection:WeakRetained getNewMessageForKey:*(a1 + 32) groupType:*(a1 + 64) withCopy:*(a1 + 40) andReply:*(a1 + 48)];

  objc_autoreleasePoolPop(v2);
}

- (void)getNewMessageForKey:(id)key groupType:(int64_t)type andReply:(id)reply
{
  keyCopy = key;
  replyCopy = reply;
  objc_initWeak(&location, self);
  queue = [(WAXPCConnection *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__WAXPCConnection_getNewMessageForKey_groupType_andReply___block_invoke;
  block[3] = &unk_1E830EA50;
  objc_copyWeak(v16, &location);
  v16[1] = type;
  v14 = keyCopy;
  v15 = replyCopy;
  v11 = replyCopy;
  v12 = keyCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(v16);
  objc_destroyWeak(&location);
}

void __58__WAXPCConnection_getNewMessageForKey_groupType_andReply___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = [WeakRetained delegate];
  v5 = *(a1 + 32);
  v6 = *(a1 + 56);
  v7 = [MEMORY[0x1E696AD98] numberWithBool:0];
  [v4 xpcConnection:WeakRetained getNewMessageForKey:v5 groupType:v6 withCopy:v7 andReply:*(a1 + 40)];

  objc_autoreleasePoolPop(v2);
}

- (void)getMessagesModelForGroupType:(int64_t)type andReply:(id)reply
{
  replyCopy = reply;
  objc_initWeak(&location, self);
  queue = [(WAXPCConnection *)self queue];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __57__WAXPCConnection_getMessagesModelForGroupType_andReply___block_invoke;
  v9[3] = &unk_1E830EA00;
  objc_copyWeak(v11, &location);
  v11[1] = type;
  v10 = replyCopy;
  v8 = replyCopy;
  dispatch_async(queue, v9);

  objc_destroyWeak(v11);
  objc_destroyWeak(&location);
}

void __57__WAXPCConnection_getMessagesModelForGroupType_andReply___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [WeakRetained delegate];
  [v4 xpcConnection:WeakRetained getMessagesModelForGroupType:*(a1 + 48) andReply:*(a1 + 32)];

  objc_autoreleasePoolPop(v2);
}

- (void)submitMessage:(id)message groupType:(int64_t)type andReply:(id)reply
{
  messageCopy = message;
  replyCopy = reply;
  objc_initWeak(&location, self);
  queue = [(WAXPCConnection *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__WAXPCConnection_submitMessage_groupType_andReply___block_invoke;
  block[3] = &unk_1E830EA50;
  objc_copyWeak(v16, &location);
  v16[1] = type;
  v14 = messageCopy;
  v15 = replyCopy;
  v11 = replyCopy;
  v12 = messageCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(v16);
  objc_destroyWeak(&location);
}

void __52__WAXPCConnection_submitMessage_groupType_andReply___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = [WeakRetained delegate];
  [v4 xpcConnection:WeakRetained submitMessage:*(a1 + 32) groupType:*(a1 + 56) andReply:*(a1 + 40)];

  objc_autoreleasePoolPop(v2);
}

- (void)triggerQueryForNWActivity:(int64_t)activity andReply:(id)reply
{
  replyCopy = reply;
  objc_initWeak(&location, self);
  queue = [(WAXPCConnection *)self queue];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __54__WAXPCConnection_triggerQueryForNWActivity_andReply___block_invoke;
  v9[3] = &unk_1E830EA00;
  objc_copyWeak(v11, &location);
  v11[1] = activity;
  v10 = replyCopy;
  v8 = replyCopy;
  dispatch_async(queue, v9);

  objc_destroyWeak(v11);
  objc_destroyWeak(&location);
}

void __54__WAXPCConnection_triggerQueryForNWActivity_andReply___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [WeakRetained delegate];
  [v4 xpcConnection:WeakRetained triggerQueryForNWActivity:*(a1 + 48) andReply:*(a1 + 32)];

  objc_autoreleasePoolPop(v2);
}

- (void)triggerQueryForNWActivityWithPeers:(id)peers andReply:(id)reply
{
  peersCopy = peers;
  replyCopy = reply;
  objc_initWeak(&location, self);
  queue = [(WAXPCConnection *)self queue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __63__WAXPCConnection_triggerQueryForNWActivityWithPeers_andReply___block_invoke;
  v11[3] = &unk_1E830E9D8;
  objc_copyWeak(&v14, &location);
  v12 = peersCopy;
  v13 = replyCopy;
  v9 = replyCopy;
  v10 = peersCopy;
  dispatch_async(queue, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __63__WAXPCConnection_triggerQueryForNWActivityWithPeers_andReply___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = [WeakRetained delegate];
  [v4 xpcConnection:WeakRetained triggerQueryForNWActivityWithPeers:*(a1 + 32) andReply:*(a1 + 40)];

  objc_autoreleasePoolPop(v2);
}

- (void)convertWiFiStatsIntoPercentile:(id)percentile analysisGroup:(int64_t)group groupTarget:(id)target andReply:(id)reply
{
  percentileCopy = percentile;
  targetCopy = target;
  replyCopy = reply;
  objc_initWeak(&location, self);
  queue = [(WAXPCConnection *)self queue];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __85__WAXPCConnection_convertWiFiStatsIntoPercentile_analysisGroup_groupTarget_andReply___block_invoke;
  v17[3] = &unk_1E830EA28;
  objc_copyWeak(v21, &location);
  v18 = percentileCopy;
  v19 = targetCopy;
  v21[1] = group;
  v20 = replyCopy;
  v14 = replyCopy;
  v15 = targetCopy;
  v16 = percentileCopy;
  dispatch_async(queue, v17);

  objc_destroyWeak(v21);
  objc_destroyWeak(&location);
}

void __85__WAXPCConnection_convertWiFiStatsIntoPercentile_analysisGroup_groupTarget_andReply___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v4 = [WeakRetained delegate];
  [v4 xpcConnection:WeakRetained convertWiFiStatsIntoPercentile:*(a1 + 32) analysisGroup:*(a1 + 64) groupTarget:*(a1 + 40) andReply:*(a1 + 48)];

  objc_autoreleasePoolPop(v2);
}

- (void)triggerDatapathDiagnosticsAndCollectUpdates:(int64_t)updates waMessage:(id)message andReply:(id)reply
{
  messageCopy = message;
  replyCopy = reply;
  objc_initWeak(&location, self);
  queue = [(WAXPCConnection *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __82__WAXPCConnection_triggerDatapathDiagnosticsAndCollectUpdates_waMessage_andReply___block_invoke;
  block[3] = &unk_1E830EA50;
  objc_copyWeak(v16, &location);
  v16[1] = updates;
  v14 = messageCopy;
  v15 = replyCopy;
  v11 = replyCopy;
  v12 = messageCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(v16);
  objc_destroyWeak(&location);
}

void __82__WAXPCConnection_triggerDatapathDiagnosticsAndCollectUpdates_waMessage_andReply___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = [WeakRetained delegate];
  [v4 xpcConnection:WeakRetained triggerDatapathDiagnosticsAndCollectUpdates:*(a1 + 56) waMessage:*(a1 + 32) andReply:*(a1 + 40)];

  objc_autoreleasePoolPop(v2);
}

- (void)killDaemonAndReply:(id)reply
{
  replyCopy = reply;
  objc_initWeak(&location, self);
  queue = [(WAXPCConnection *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__WAXPCConnection_killDaemonAndReply___block_invoke;
  block[3] = &unk_1E830EA78;
  objc_copyWeak(&v9, &location);
  v8 = replyCopy;
  v6 = replyCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __38__WAXPCConnection_killDaemonAndReply___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [WeakRetained delegate];
  [v4 xpcConnection:WeakRetained killDaemonAndReply:*(a1 + 32)];

  objc_autoreleasePoolPop(v2);
}

- (void)clearMessageStoreAndReply:(id)reply
{
  replyCopy = reply;
  objc_initWeak(&location, self);
  queue = [(WAXPCConnection *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__WAXPCConnection_clearMessageStoreAndReply___block_invoke;
  block[3] = &unk_1E830EA78;
  objc_copyWeak(&v9, &location);
  v8 = replyCopy;
  v6 = replyCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __45__WAXPCConnection_clearMessageStoreAndReply___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [WeakRetained delegate];
  [v4 xpcConnection:WeakRetained clearMessageStoreAndReply:*(a1 + 32)];

  objc_autoreleasePoolPop(v2);
}

- (void)trapCrashMiniTracerDumpReadyForInterfaceWithName:(id)name andReply:(id)reply
{
  nameCopy = name;
  replyCopy = reply;
  objc_initWeak(&location, self);
  queue = [(WAXPCConnection *)self queue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __77__WAXPCConnection_trapCrashMiniTracerDumpReadyForInterfaceWithName_andReply___block_invoke;
  v11[3] = &unk_1E830E9D8;
  objc_copyWeak(&v14, &location);
  v12 = nameCopy;
  v13 = replyCopy;
  v9 = replyCopy;
  v10 = nameCopy;
  dispatch_async(queue, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __77__WAXPCConnection_trapCrashMiniTracerDumpReadyForInterfaceWithName_andReply___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = [WeakRetained delegate];
  [v4 xpcConnection:WeakRetained trapCrashMiniTracerDumpReadyForInterfaceWithName:*(a1 + 32) andReply:*(a1 + 40)];

  objc_autoreleasePoolPop(v2);
}

- (void)lqmCrashTracerNotifyForInterfaceWithName:(id)name andReply:(id)reply
{
  nameCopy = name;
  replyCopy = reply;
  objc_initWeak(&location, self);
  queue = [(WAXPCConnection *)self queue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __69__WAXPCConnection_lqmCrashTracerNotifyForInterfaceWithName_andReply___block_invoke;
  v11[3] = &unk_1E830E9D8;
  objc_copyWeak(&v14, &location);
  v12 = nameCopy;
  v13 = replyCopy;
  v9 = replyCopy;
  v10 = nameCopy;
  dispatch_async(queue, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __69__WAXPCConnection_lqmCrashTracerNotifyForInterfaceWithName_andReply___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = [WeakRetained delegate];
  [v4 xpcConnection:WeakRetained lqmCrashTracerNotifyForInterfaceWithName:*(a1 + 32) andReply:*(a1 + 40)];

  objc_autoreleasePoolPop(v2);
}

- (void)lqmCrashTracerReceiveBlock:(id)block forInterfaceWithName:(id)name andReply:(id)reply
{
  blockCopy = block;
  nameCopy = name;
  replyCopy = reply;
  objc_initWeak(&location, self);
  queue = [(WAXPCConnection *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76__WAXPCConnection_lqmCrashTracerReceiveBlock_forInterfaceWithName_andReply___block_invoke;
  block[3] = &unk_1E830EAA0;
  objc_copyWeak(&v19, &location);
  v16 = blockCopy;
  v17 = nameCopy;
  v18 = replyCopy;
  v12 = replyCopy;
  v13 = nameCopy;
  v14 = blockCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

void __76__WAXPCConnection_lqmCrashTracerReceiveBlock_forInterfaceWithName_andReply___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v4 = [WeakRetained delegate];
  [v4 xpcConnection:WeakRetained lqmCrashTracerReceiveBlock:*(a1 + 32) forInterfaceWithName:*(a1 + 40) andReply:*(a1 + 48)];

  objc_autoreleasePoolPop(v2);
}

- (void)setDeviceAnalyticsConfiguration:(id)configuration andReply:(id)reply
{
  configurationCopy = configuration;
  replyCopy = reply;
  objc_initWeak(&location, self);
  queue = [(WAXPCConnection *)self queue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __60__WAXPCConnection_setDeviceAnalyticsConfiguration_andReply___block_invoke;
  v11[3] = &unk_1E830E9D8;
  objc_copyWeak(&v14, &location);
  v12 = configurationCopy;
  v13 = replyCopy;
  v9 = replyCopy;
  v10 = configurationCopy;
  dispatch_async(queue, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __60__WAXPCConnection_setDeviceAnalyticsConfiguration_andReply___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = [WeakRetained delegate];
  [v4 xpcConnection:WeakRetained setDeviceAnalyticsConfiguration:*(a1 + 32) andReply:*(a1 + 40)];

  objc_autoreleasePoolPop(v2);
}

- (void)getDeviceAnalyticsConfigurationAndReply:(id)reply
{
  replyCopy = reply;
  objc_initWeak(&location, self);
  queue = [(WAXPCConnection *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__WAXPCConnection_getDeviceAnalyticsConfigurationAndReply___block_invoke;
  block[3] = &unk_1E830EA78;
  objc_copyWeak(&v9, &location);
  v8 = replyCopy;
  v6 = replyCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __59__WAXPCConnection_getDeviceAnalyticsConfigurationAndReply___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [WeakRetained delegate];
  [v4 xpcConnection:WeakRetained getDeviceAnalyticsConfigurationAndReply:*(a1 + 32)];

  objc_autoreleasePoolPop(v2);
}

- (void)signalPotentialNewIORChannelsAndReply:(id)reply
{
  replyCopy = reply;
  objc_initWeak(&location, self);
  queue = [(WAXPCConnection *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__WAXPCConnection_signalPotentialNewIORChannelsAndReply___block_invoke;
  block[3] = &unk_1E830EA78;
  objc_copyWeak(&v9, &location);
  v8 = replyCopy;
  v6 = replyCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __57__WAXPCConnection_signalPotentialNewIORChannelsAndReply___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v7 = 136446466;
    v8 = "[WAXPCConnection signalPotentialNewIORChannelsAndReply:]_block_invoke";
    v9 = 1024;
    v10 = 207;
    _os_log_impl(&dword_1C8460000, v4, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Calling signalPotentialNewIORChannels: on strongSelf.delegate", &v7, 0x12u);
  }

  v5 = [WeakRetained delegate];
  [v5 xpcConnection:WeakRetained signalPotentialNewIORChannelsAndReply:*(a1 + 32)];

  objc_autoreleasePoolPop(v2);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)updateRoamPoliciesForSourceBssid:(id)bssid andUpdateRoamCache:(BOOL)cache andReply:(id)reply
{
  bssidCopy = bssid;
  replyCopy = reply;
  objc_initWeak(&location, self);
  queue = [(WAXPCConnection *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __80__WAXPCConnection_updateRoamPoliciesForSourceBssid_andUpdateRoamCache_andReply___block_invoke;
  block[3] = &unk_1E830EAC8;
  objc_copyWeak(&v16, &location);
  cacheCopy = cache;
  v14 = bssidCopy;
  v15 = replyCopy;
  v11 = replyCopy;
  v12 = bssidCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __80__WAXPCConnection_updateRoamPoliciesForSourceBssid_andUpdateRoamCache_andReply___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v7 = 136446466;
    v8 = "[WAXPCConnection updateRoamPoliciesForSourceBssid:andUpdateRoamCache:andReply:]_block_invoke";
    v9 = 1024;
    v10 = 216;
    _os_log_impl(&dword_1C8460000, v4, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Calling updateRoamPoliciesForSourceBssid: on strongSelf.delegate", &v7, 0x12u);
  }

  v5 = [WeakRetained delegate];
  [v5 xpcConnection:WeakRetained updateRoamPoliciesForSourceBssid:*(a1 + 32) andUpdateRoamCache:*(a1 + 56) andReply:*(a1 + 40)];

  objc_autoreleasePoolPop(v2);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)updateRoamPoliciesAndSummarizeAnalyticsForNetwork:(id)network maxAgeInDays:(unint64_t)days andReply:(id)reply
{
  networkCopy = network;
  replyCopy = reply;
  objc_initWeak(&location, self);
  queue = [(WAXPCConnection *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __91__WAXPCConnection_updateRoamPoliciesAndSummarizeAnalyticsForNetwork_maxAgeInDays_andReply___block_invoke;
  block[3] = &unk_1E830EA50;
  objc_copyWeak(v16, &location);
  v16[1] = days;
  v14 = networkCopy;
  v15 = replyCopy;
  v11 = replyCopy;
  v12 = networkCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(v16);
  objc_destroyWeak(&location);
}

void __91__WAXPCConnection_updateRoamPoliciesAndSummarizeAnalyticsForNetwork_maxAgeInDays_andReply___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = [WeakRetained delegate];
  [v4 xpcConnection:WeakRetained updateRoamPoliciesAndSummarizeAnalyticsForNetwork:*(a1 + 32) maxAgeInDays:*(a1 + 56) andReply:*(a1 + 40)];

  objc_autoreleasePoolPop(v2);
}

- (void)getDpsStatsandReply:(id)reply
{
  replyCopy = reply;
  objc_initWeak(&location, self);
  queue = [(WAXPCConnection *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__WAXPCConnection_getDpsStatsandReply___block_invoke;
  block[3] = &unk_1E830EA78;
  objc_copyWeak(&v9, &location);
  v8 = replyCopy;
  v6 = replyCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __39__WAXPCConnection_getDpsStatsandReply___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [WeakRetained delegate];
  [v4 xpcConnection:WeakRetained getDpsStatsandReply:*(a1 + 32)];

  objc_autoreleasePoolPop(v2);
}

- (void)getUsageStatsandReply:(id)reply
{
  replyCopy = reply;
  objc_initWeak(&location, self);
  queue = [(WAXPCConnection *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__WAXPCConnection_getUsageStatsandReply___block_invoke;
  block[3] = &unk_1E830EA78;
  objc_copyWeak(&v9, &location);
  v8 = replyCopy;
  v6 = replyCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __41__WAXPCConnection_getUsageStatsandReply___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [WeakRetained delegate];
  [v4 xpcConnection:WeakRetained getUsageStatsandReply:*(a1 + 32)];

  objc_autoreleasePoolPop(v2);
}

- (void)triggerDeviceAnalyticsStoreMigrationAndReply:(id)reply
{
  replyCopy = reply;
  objc_initWeak(&location, self);
  queue = [(WAXPCConnection *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__WAXPCConnection_triggerDeviceAnalyticsStoreMigrationAndReply___block_invoke;
  block[3] = &unk_1E830EA78;
  objc_copyWeak(&v9, &location);
  v8 = replyCopy;
  v6 = replyCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __64__WAXPCConnection_triggerDeviceAnalyticsStoreMigrationAndReply___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [WeakRetained delegate];
  [v4 xpcConnection:WeakRetained triggerDeviceAnalyticsStoreMigrationAndReply:*(a1 + 32)];

  objc_autoreleasePoolPop(v2);
}

- (void)sendMemoryPressureRequestAndReply:(id)reply
{
  replyCopy = reply;
  objc_initWeak(&location, self);
  queue = [(WAXPCConnection *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__WAXPCConnection_sendMemoryPressureRequestAndReply___block_invoke;
  block[3] = &unk_1E830EA78;
  objc_copyWeak(&v9, &location);
  v8 = replyCopy;
  v6 = replyCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __53__WAXPCConnection_sendMemoryPressureRequestAndReply___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [WeakRetained delegate];
  [v4 xpcConnection:WeakRetained sendMemoryPressureRequestAndReply:*(a1 + 32)];

  objc_autoreleasePoolPop(v2);
}

- (void)issueIOReportManagementCommand:(unint64_t)command andReply:(id)reply
{
  replyCopy = reply;
  objc_initWeak(&location, self);
  queue = [(WAXPCConnection *)self queue];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __59__WAXPCConnection_issueIOReportManagementCommand_andReply___block_invoke;
  v9[3] = &unk_1E830EA00;
  objc_copyWeak(v11, &location);
  v11[1] = command;
  v10 = replyCopy;
  v8 = replyCopy;
  dispatch_async(queue, v9);

  objc_destroyWeak(v11);
  objc_destroyWeak(&location);
}

void __59__WAXPCConnection_issueIOReportManagementCommand_andReply___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [WeakRetained delegate];
  [v4 xpcConnection:WeakRetained issueIOReportManagementCommand:*(a1 + 48) andReply:*(a1 + 32)];

  objc_autoreleasePoolPop(v2);
}

- (void)processManagedFault:(id)fault at:(id)at andReply:(id)reply
{
  faultCopy = fault;
  atCopy = at;
  replyCopy = reply;
  objc_initWeak(&location, self);
  queue = [(WAXPCConnection *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__WAXPCConnection_processManagedFault_at_andReply___block_invoke;
  block[3] = &unk_1E830EAA0;
  objc_copyWeak(&v19, &location);
  v16 = faultCopy;
  v17 = atCopy;
  v18 = replyCopy;
  v12 = replyCopy;
  v13 = atCopy;
  v14 = faultCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

void __51__WAXPCConnection_processManagedFault_at_andReply___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v4 = [WeakRetained delegate];
  [v4 xpcConnection:WeakRetained processManagedFault:*(a1 + 32) at:*(a1 + 40) andReply:*(a1 + 48)];

  objc_autoreleasePoolPop(v2);
}

- (WAXPCConnectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end