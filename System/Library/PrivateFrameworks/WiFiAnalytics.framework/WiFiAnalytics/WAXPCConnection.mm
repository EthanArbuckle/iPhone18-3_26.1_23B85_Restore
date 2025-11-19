@interface WAXPCConnection
- (WAXPCConnection)initWithXPCConnection:(id)a3;
- (WAXPCConnectionDelegate)delegate;
- (void)clearMessageStoreAndReply:(id)a3;
- (void)convertWiFiStatsIntoPercentile:(id)a3 analysisGroup:(int64_t)a4 groupTarget:(id)a5 andReply:(id)a6;
- (void)establishConnectionWithToken:(id)a3 andReply:(id)a4;
- (void)getDeviceAnalyticsConfigurationAndReply:(id)a3;
- (void)getDpsStatsandReply:(id)a3;
- (void)getMessagesModelForGroupType:(int64_t)a3 andReply:(id)a4;
- (void)getNewMessageForKey:(id)a3 groupType:(int64_t)a4 andReply:(id)a5;
- (void)getNewMessageForKey:(id)a3 groupType:(int64_t)a4 withCopy:(id)a5 andReply:(id)a6;
- (void)getUsageStatsandReply:(id)a3;
- (void)issueIOReportManagementCommand:(unint64_t)a3 andReply:(id)a4;
- (void)killDaemonAndReply:(id)a3;
- (void)lqmCrashTracerNotifyForInterfaceWithName:(id)a3 andReply:(id)a4;
- (void)lqmCrashTracerReceiveBlock:(id)a3 forInterfaceWithName:(id)a4 andReply:(id)a5;
- (void)processManagedFault:(id)a3 at:(id)a4 andReply:(id)a5;
- (void)registerMessageGroup:(int64_t)a3 andReply:(id)a4;
- (void)sendMemoryPressureRequestAndReply:(id)a3;
- (void)setDeviceAnalyticsConfiguration:(id)a3 andReply:(id)a4;
- (void)signalPotentialNewIORChannelsAndReply:(id)a3;
- (void)submitMessage:(id)a3 groupType:(int64_t)a4 andReply:(id)a5;
- (void)trapCrashMiniTracerDumpReadyForInterfaceWithName:(id)a3 andReply:(id)a4;
- (void)triggerDatapathDiagnosticsAndCollectUpdates:(int64_t)a3 waMessage:(id)a4 andReply:(id)a5;
- (void)triggerDeviceAnalyticsStoreMigrationAndReply:(id)a3;
- (void)triggerQueryForNWActivity:(int64_t)a3 andReply:(id)a4;
- (void)triggerQueryForNWActivityWithPeers:(id)a3 andReply:(id)a4;
- (void)updateRoamPoliciesAndSummarizeAnalyticsForNetwork:(id)a3 maxAgeInDays:(unint64_t)a4 andReply:(id)a5;
- (void)updateRoamPoliciesForSourceBssid:(id)a3 andUpdateRoamCache:(BOOL)a4 andReply:(id)a5;
@end

@implementation WAXPCConnection

- (WAXPCConnection)initWithXPCConnection:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = WAXPCConnection;
  v6 = [(WAXPCConnection *)&v12 init];
  v7 = v6;
  if (!v5)
  {
    goto LABEL_4;
  }

  if (!v6)
  {
    goto LABEL_4;
  }

  objc_storeStrong(&v6->_connection, a3);
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

- (void)establishConnectionWithToken:(id)a3 andReply:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [(WAXPCConnection *)self queue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __57__WAXPCConnection_establishConnectionWithToken_andReply___block_invoke;
  v11[3] = &unk_1E830E9D8;
  objc_copyWeak(&v14, &location);
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, v11);

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

- (void)registerMessageGroup:(int64_t)a3 andReply:(id)a4
{
  v6 = a4;
  objc_initWeak(&location, self);
  v7 = [(WAXPCConnection *)self queue];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __49__WAXPCConnection_registerMessageGroup_andReply___block_invoke;
  v9[3] = &unk_1E830EA00;
  objc_copyWeak(v11, &location);
  v11[1] = a3;
  v10 = v6;
  v8 = v6;
  dispatch_async(v7, v9);

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

- (void)getNewMessageForKey:(id)a3 groupType:(int64_t)a4 withCopy:(id)a5 andReply:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  objc_initWeak(&location, self);
  v13 = [(WAXPCConnection *)self queue];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __67__WAXPCConnection_getNewMessageForKey_groupType_withCopy_andReply___block_invoke;
  v17[3] = &unk_1E830EA28;
  objc_copyWeak(v21, &location);
  v18 = v10;
  v19 = v11;
  v21[1] = a4;
  v20 = v12;
  v14 = v12;
  v15 = v11;
  v16 = v10;
  dispatch_async(v13, v17);

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

- (void)getNewMessageForKey:(id)a3 groupType:(int64_t)a4 andReply:(id)a5
{
  v8 = a3;
  v9 = a5;
  objc_initWeak(&location, self);
  v10 = [(WAXPCConnection *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__WAXPCConnection_getNewMessageForKey_groupType_andReply___block_invoke;
  block[3] = &unk_1E830EA50;
  objc_copyWeak(v16, &location);
  v16[1] = a4;
  v14 = v8;
  v15 = v9;
  v11 = v9;
  v12 = v8;
  dispatch_async(v10, block);

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

- (void)getMessagesModelForGroupType:(int64_t)a3 andReply:(id)a4
{
  v6 = a4;
  objc_initWeak(&location, self);
  v7 = [(WAXPCConnection *)self queue];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __57__WAXPCConnection_getMessagesModelForGroupType_andReply___block_invoke;
  v9[3] = &unk_1E830EA00;
  objc_copyWeak(v11, &location);
  v11[1] = a3;
  v10 = v6;
  v8 = v6;
  dispatch_async(v7, v9);

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

- (void)submitMessage:(id)a3 groupType:(int64_t)a4 andReply:(id)a5
{
  v8 = a3;
  v9 = a5;
  objc_initWeak(&location, self);
  v10 = [(WAXPCConnection *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__WAXPCConnection_submitMessage_groupType_andReply___block_invoke;
  block[3] = &unk_1E830EA50;
  objc_copyWeak(v16, &location);
  v16[1] = a4;
  v14 = v8;
  v15 = v9;
  v11 = v9;
  v12 = v8;
  dispatch_async(v10, block);

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

- (void)triggerQueryForNWActivity:(int64_t)a3 andReply:(id)a4
{
  v6 = a4;
  objc_initWeak(&location, self);
  v7 = [(WAXPCConnection *)self queue];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __54__WAXPCConnection_triggerQueryForNWActivity_andReply___block_invoke;
  v9[3] = &unk_1E830EA00;
  objc_copyWeak(v11, &location);
  v11[1] = a3;
  v10 = v6;
  v8 = v6;
  dispatch_async(v7, v9);

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

- (void)triggerQueryForNWActivityWithPeers:(id)a3 andReply:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [(WAXPCConnection *)self queue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __63__WAXPCConnection_triggerQueryForNWActivityWithPeers_andReply___block_invoke;
  v11[3] = &unk_1E830E9D8;
  objc_copyWeak(&v14, &location);
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, v11);

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

- (void)convertWiFiStatsIntoPercentile:(id)a3 analysisGroup:(int64_t)a4 groupTarget:(id)a5 andReply:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  objc_initWeak(&location, self);
  v13 = [(WAXPCConnection *)self queue];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __85__WAXPCConnection_convertWiFiStatsIntoPercentile_analysisGroup_groupTarget_andReply___block_invoke;
  v17[3] = &unk_1E830EA28;
  objc_copyWeak(v21, &location);
  v18 = v10;
  v19 = v11;
  v21[1] = a4;
  v20 = v12;
  v14 = v12;
  v15 = v11;
  v16 = v10;
  dispatch_async(v13, v17);

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

- (void)triggerDatapathDiagnosticsAndCollectUpdates:(int64_t)a3 waMessage:(id)a4 andReply:(id)a5
{
  v8 = a4;
  v9 = a5;
  objc_initWeak(&location, self);
  v10 = [(WAXPCConnection *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __82__WAXPCConnection_triggerDatapathDiagnosticsAndCollectUpdates_waMessage_andReply___block_invoke;
  block[3] = &unk_1E830EA50;
  objc_copyWeak(v16, &location);
  v16[1] = a3;
  v14 = v8;
  v15 = v9;
  v11 = v9;
  v12 = v8;
  dispatch_async(v10, block);

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

- (void)killDaemonAndReply:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(WAXPCConnection *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__WAXPCConnection_killDaemonAndReply___block_invoke;
  block[3] = &unk_1E830EA78;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);

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

- (void)clearMessageStoreAndReply:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(WAXPCConnection *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__WAXPCConnection_clearMessageStoreAndReply___block_invoke;
  block[3] = &unk_1E830EA78;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);

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

- (void)trapCrashMiniTracerDumpReadyForInterfaceWithName:(id)a3 andReply:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [(WAXPCConnection *)self queue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __77__WAXPCConnection_trapCrashMiniTracerDumpReadyForInterfaceWithName_andReply___block_invoke;
  v11[3] = &unk_1E830E9D8;
  objc_copyWeak(&v14, &location);
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, v11);

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

- (void)lqmCrashTracerNotifyForInterfaceWithName:(id)a3 andReply:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [(WAXPCConnection *)self queue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __69__WAXPCConnection_lqmCrashTracerNotifyForInterfaceWithName_andReply___block_invoke;
  v11[3] = &unk_1E830E9D8;
  objc_copyWeak(&v14, &location);
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, v11);

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

- (void)lqmCrashTracerReceiveBlock:(id)a3 forInterfaceWithName:(id)a4 andReply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_initWeak(&location, self);
  v11 = [(WAXPCConnection *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76__WAXPCConnection_lqmCrashTracerReceiveBlock_forInterfaceWithName_andReply___block_invoke;
  block[3] = &unk_1E830EAA0;
  objc_copyWeak(&v19, &location);
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(v11, block);

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

- (void)setDeviceAnalyticsConfiguration:(id)a3 andReply:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [(WAXPCConnection *)self queue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __60__WAXPCConnection_setDeviceAnalyticsConfiguration_andReply___block_invoke;
  v11[3] = &unk_1E830E9D8;
  objc_copyWeak(&v14, &location);
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, v11);

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

- (void)getDeviceAnalyticsConfigurationAndReply:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(WAXPCConnection *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__WAXPCConnection_getDeviceAnalyticsConfigurationAndReply___block_invoke;
  block[3] = &unk_1E830EA78;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);

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

- (void)signalPotentialNewIORChannelsAndReply:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(WAXPCConnection *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__WAXPCConnection_signalPotentialNewIORChannelsAndReply___block_invoke;
  block[3] = &unk_1E830EA78;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);

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

- (void)updateRoamPoliciesForSourceBssid:(id)a3 andUpdateRoamCache:(BOOL)a4 andReply:(id)a5
{
  v8 = a3;
  v9 = a5;
  objc_initWeak(&location, self);
  v10 = [(WAXPCConnection *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __80__WAXPCConnection_updateRoamPoliciesForSourceBssid_andUpdateRoamCache_andReply___block_invoke;
  block[3] = &unk_1E830EAC8;
  objc_copyWeak(&v16, &location);
  v17 = a4;
  v14 = v8;
  v15 = v9;
  v11 = v9;
  v12 = v8;
  dispatch_async(v10, block);

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

- (void)updateRoamPoliciesAndSummarizeAnalyticsForNetwork:(id)a3 maxAgeInDays:(unint64_t)a4 andReply:(id)a5
{
  v8 = a3;
  v9 = a5;
  objc_initWeak(&location, self);
  v10 = [(WAXPCConnection *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __91__WAXPCConnection_updateRoamPoliciesAndSummarizeAnalyticsForNetwork_maxAgeInDays_andReply___block_invoke;
  block[3] = &unk_1E830EA50;
  objc_copyWeak(v16, &location);
  v16[1] = a4;
  v14 = v8;
  v15 = v9;
  v11 = v9;
  v12 = v8;
  dispatch_async(v10, block);

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

- (void)getDpsStatsandReply:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(WAXPCConnection *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__WAXPCConnection_getDpsStatsandReply___block_invoke;
  block[3] = &unk_1E830EA78;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);

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

- (void)getUsageStatsandReply:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(WAXPCConnection *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__WAXPCConnection_getUsageStatsandReply___block_invoke;
  block[3] = &unk_1E830EA78;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);

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

- (void)triggerDeviceAnalyticsStoreMigrationAndReply:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(WAXPCConnection *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__WAXPCConnection_triggerDeviceAnalyticsStoreMigrationAndReply___block_invoke;
  block[3] = &unk_1E830EA78;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);

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

- (void)sendMemoryPressureRequestAndReply:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(WAXPCConnection *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__WAXPCConnection_sendMemoryPressureRequestAndReply___block_invoke;
  block[3] = &unk_1E830EA78;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);

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

- (void)issueIOReportManagementCommand:(unint64_t)a3 andReply:(id)a4
{
  v6 = a4;
  objc_initWeak(&location, self);
  v7 = [(WAXPCConnection *)self queue];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __59__WAXPCConnection_issueIOReportManagementCommand_andReply___block_invoke;
  v9[3] = &unk_1E830EA00;
  objc_copyWeak(v11, &location);
  v11[1] = a3;
  v10 = v6;
  v8 = v6;
  dispatch_async(v7, v9);

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

- (void)processManagedFault:(id)a3 at:(id)a4 andReply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_initWeak(&location, self);
  v11 = [(WAXPCConnection *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__WAXPCConnection_processManagedFault_at_andReply___block_invoke;
  block[3] = &unk_1E830EAA0;
  objc_copyWeak(&v19, &location);
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(v11, block);

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