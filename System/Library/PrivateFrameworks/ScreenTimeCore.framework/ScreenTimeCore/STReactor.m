@interface STReactor
- (STReactor)initWithFamilyCirclePrimitives:(id)a3 deviceInformationPrimitives:(id)a4 idsTransportPrimitives:(id)a5 filesystemPrimitives:(id)a6 contactStorePrimitives:(id)a7 xpcServiceProvider:(id)a8 primitiveOSTransactionProvider:(id)a9 primitiveBackgroundActivitySchedulerProvider:(id)a10 coreDataObserver:(id)a11 coreDataConfigurationTransformer:(id)a12 coreDataDeviceStateTransformer:(id)a13 coreDataFamilyInformationTransformer:(id)a14 askForTimeEventRelay:(id)a15 askForTimeResponseHandler:(id)a16 biomeEventWriter:(id)a17 eyeReliefStateWriter:(id)a18 userSafetyPolicyWriter:(id)a19 messageAddressMapDirectoryURL:(id)a20 messageIdentifierMapDirectoryURL:(id)a21 messageLedgerDirectoryURL:(id)a22 genesisStateStoreDirectoryURL:(id)a23 reactorQueue:(id)a24 transportQueue:(id)a25 shutdownWillBegin:(id)a26 shutdownDidComplete:(id)a27;
- (id)_persistTargetableFamilyMembers:(id)a3;
- (void)_networkDidBecomeReachable:(id)a3;
- (void)_scheduleDonateDowntimeBiomeEventBackgroundActivity;
- (void)_scheduleFailStuckMessagesBackgroundActivity;
- (void)_scheduleMessageRetryBackgroundActivity;
- (void)_scheduleStoreCleanupBackgroundActivity;
- (void)_synchronizeGenesisStateStoreWithTargetableFamilyMembers:(id)a3;
- (void)applyUpdatedConfiguration:(id)a3 completionHandler:(id)a4;
- (void)authenticatePasscodeForUserWithEndpoint:(id)a3 completionHandler:(id)a4;
- (void)beginBackgroundActivity:(id)a3;
- (void)changeObserver:(id)a3 didObserveConfigurationChange:(id)a4;
- (void)changeObserver:(id)a3 didObserveDeviceStateChange:(id)a4;
- (void)currentCommunicationConfigurationWithCompletionHandler:(id)a3;
- (void)currentConfigurationForUser:(id)a3 completionHandler:(id)a4;
- (void)currentMessageTransportReachabilityMap:(id)a3;
- (void)eventRelay:(id)a3 didRelayRequestEvent:(id)a4;
- (void)eventRelay:(id)a3 didRelayResponseEvent:(id)a4;
- (void)familyProvider:(id)a3 didUpdateTargetableFamilyMembers:(id)a4;
- (void)familyProviderDidLeaveFamily:(id)a3;
- (void)isCapabilityEnabledForUser:(id)a3 capability:(id)a4 completionHandler:(id)a5;
- (void)isDowntimeEnabledForUserID:(id)a3 completionHandler:(id)a4;
- (void)promptForPasscodeFromUserWithEndpoint:(id)a3 completionHandler:(id)a4;
- (void)reconcileGenesisStateStore;
- (void)respondToAskForTimeRequestWithIdentifier:(id)a3 answer:(int64_t)a4 completionHandler:(id)a5;
- (void)scheduleFailStuckMessagesActivity:(id)a3;
- (void)scheduleMessageRetryActivity:(id)a3;
- (void)scheduleStoreCleanupActivity:(id)a3;
- (void)sendInitialSetup;
- (void)shutdown;
- (void)shutdownReactorWithCompletion:(id)a3;
- (void)start;
- (void)toggleOnDemandDowntimeForUserID:(id)a3 completionHandler:(id)a4;
- (void)transportEnvoy:(id)a3 didReceiveMessage:(id)a4;
- (void)transportEnvoy:(id)a3 didSendMessageWithIdentifier:(id)a4 result:(id)a5;
@end

@implementation STReactor

- (STReactor)initWithFamilyCirclePrimitives:(id)a3 deviceInformationPrimitives:(id)a4 idsTransportPrimitives:(id)a5 filesystemPrimitives:(id)a6 contactStorePrimitives:(id)a7 xpcServiceProvider:(id)a8 primitiveOSTransactionProvider:(id)a9 primitiveBackgroundActivitySchedulerProvider:(id)a10 coreDataObserver:(id)a11 coreDataConfigurationTransformer:(id)a12 coreDataDeviceStateTransformer:(id)a13 coreDataFamilyInformationTransformer:(id)a14 askForTimeEventRelay:(id)a15 askForTimeResponseHandler:(id)a16 biomeEventWriter:(id)a17 eyeReliefStateWriter:(id)a18 userSafetyPolicyWriter:(id)a19 messageAddressMapDirectoryURL:(id)a20 messageIdentifierMapDirectoryURL:(id)a21 messageLedgerDirectoryURL:(id)a22 genesisStateStoreDirectoryURL:(id)a23 reactorQueue:(id)a24 transportQueue:(id)a25 shutdownWillBegin:(id)a26 shutdownDidComplete:(id)a27
{
  v119 = a4;
  v118 = a5;
  v116 = a8;
  v115 = a9;
  v114 = a14;
  v113 = a15;
  v112 = a16;
  v111 = a17;
  v110 = a18;
  v109 = a19;
  v108 = a24;
  v117 = a25;
  v126.receiver = self;
  v126.super_class = STReactor;
  v104 = a27;
  v100 = a26;
  v96 = a23;
  v95 = a22;
  v29 = a21;
  v30 = a20;
  v90 = a13;
  v89 = a12;
  v88 = a11;
  v91 = a10;
  v31 = a7;
  v32 = a6;
  v33 = a3;
  v34 = [(STReactor *)&v126 init];
  objc_storeStrong(&v34->_reactorQueue, a24);
  objc_storeStrong(&v34->_transportQueue, a25);
  objc_storeStrong(&v34->_xpcServiceProvider, a8);
  objc_storeStrong(&v34->_primitiveOSTransactionProvider, a9);
  objc_storeStrong(&v34->_familyInformationTransformer, a14);
  v35 = [[STFamilyInformationProvider alloc] initWithFamilyCirclePrimitives:v33 deviceInformationPrimitives:v119 contactStorePrimitives:v31];

  v36 = [[STFileBackedKeyValueStore alloc] initWithDirectory:v30 fileExtension:@"plist" filesystemPrimitives:v32];
  v94 = v36;
  v37 = [(STFileBackedKeyValueStore *)v36 purge];
  v38 = [[STPersistentIDSMessageTransportMessageAddressMap alloc] initWithPrimitives:v118 userAliasResolver:v35 keyValueStore:v36];
  v39 = [[STFileBackedKeyValueStore alloc] initWithDirectory:v29 fileExtension:@"plist" filesystemPrimitives:v32];

  obja = v39;
  v40 = [(STFileBackedKeyValueStore *)v39 purge];
  v106 = v38;
  v102 = [[STPersistentIDSMessageTransportMessageIdentifierMap alloc] initWithKeyValueStore:v39];
  v41 = [[STIDSMessageTransport alloc] initWithPrimitives:v118 messageAddressMap:v38 messageIdentifierMap:v102 addressValidator:v35 userAliasResolver:v35 returnAddressProvider:v35 transportQueue:v117];
  v42 = [[STFileBackedKeyValueStore alloc] initWithDirectory:v95 fileExtension:@"plist" filesystemPrimitives:v32];

  v43 = [(STFileBackedKeyValueStore *)v42 purge];
  v44 = [[STPersistentTransportServiceMessageLedger alloc] initWithKeyValueStore:v42];
  v45 = [[STMessageTrackingTransportService alloc] initWithTransport:v41 returnAddressProvider:v35 messageLedger:v44 queue:v117];
  v46 = [[STFileBackedKeyValueStore alloc] initWithDirectory:v96 fileExtension:@"plist" filesystemPrimitives:v32];

  objc_storeStrong(&v34->_familyInformationProvider, v35);
  [(STFamilyProviding *)v34->_familyInformationProvider setObserver:v34];
  objc_storeStrong(&v34->_idsTransportPrimitives, a5);
  v99 = v41;
  objc_storeStrong(&v34->__messageTransport, v41);
  v97 = v44;
  v47 = [[STMessageTrackingTransportEnvoy alloc] initWithTransportService:v45 messageLedger:v44 queue:v34->_transportQueue];
  transportEnvoy = v34->_transportEnvoy;
  v34->_transportEnvoy = v47;

  [(STTransportEnvoy *)v34->_transportEnvoy setDelegate:v34];
  v49 = [STCoreDataConfigurationStore initWithObserver:"initWithObserver:transformer:reverseTransformer:" transformer:v88 reverseTransformer:?];

  configurationStore = v34->_configurationStore;
  v34->_configurationStore = v49;

  [(STConfigurationStoreChangeObserver *)v34->_configurationStore setDelegate:v34];
  v51 = [STCoreDataDeviceStateStore initWithObserver:"initWithObserver:transformer:reverseTransformer:" transformer:v88 reverseTransformer:?];

  deviceStateStore = v34->_deviceStateStore;
  v34->_deviceStateStore = v51;

  [(STDeviceStateChangeObserver *)v34->_deviceStateStore setDelegate:v34];
  objc_storeStrong(&v34->_askForTimeEventRelay, a15);
  objc_storeStrong(&v34->_askForTimeResponseHandler, a16);
  objc_storeStrong(&v34->_biomeEventWriter, a17);
  objc_storeStrong(&v34->_eyeReliefStateWriter, a18);
  objc_storeStrong(&v34->_userSafetyPolicyWriter, a19);
  v53 = v46;
  v54 = [[STPersistentFamilyMemberGenesisStateStore alloc] initWithKeyValueStore:v46];
  genesisStateStore = v34->_genesisStateStore;
  v34->_genesisStateStore = v54;

  v92 = [NSSet setWithArray:&off_1001B2550];
  v56 = [v91 createSchedulerRegisteredForTypes:? schedulerDelegate:?];

  backgroundActivityScheduler = v34->_backgroundActivityScheduler;
  v34->_backgroundActivityScheduler = v56;

  v58 = [STReactorDirectiveProcessor alloc];
  userSafetyPolicyWriter = v34->_userSafetyPolicyWriter;
  v60 = [(STReactorDirectiveProcessor *)v58 initWithQueue:v34->_reactorQueue transportEnvoy:v34->_transportEnvoy transportEnvoyQueue:v34->_transportQueue configurationStore:v34->_configurationStore deviceStateStore:v34->_deviceStateStore biomeEventWriter:v34->_biomeEventWriter backgroundActivityScheduler:v34->_backgroundActivityScheduler familyProvider:v34->_familyInformationProvider eyeReliefStateWriter:v34->_eyeReliefStateWriter userSafetyPolicyWriter:userSafetyPolicyWriter transportPrimitives:v34->_idsTransportPrimitives];
  directiveProcessor = v34->_directiveProcessor;
  v34->_directiveProcessor = v60;

  v62 = [(STXPCServiceProvider *)v34->_xpcServiceProvider provideAskService];
  askService = v34->_askService;
  v34->_askService = v62;

  [(STAskService *)v34->_askService setDelegate:v34];
  v64 = [(STXPCServiceProvider *)v34->_xpcServiceProvider provideCommunicationService];
  communicationService = v34->_communicationService;
  v34->_communicationService = v64;

  [(STCommunicationService *)v34->_communicationService setDelegate:v34];
  v66 = [(STXPCServiceProvider *)v34->_xpcServiceProvider provideSetupService];
  setupService = v34->_setupService;
  v34->_setupService = v66;

  [(STSetupService *)v34->_setupService setDelegate:v34];
  v68 = [(STXPCServiceProvider *)v34->_xpcServiceProvider provideReactorToolService];
  reactorToolService = v34->_reactorToolService;
  v34->_reactorToolService = v68;

  [(STReactorToolService *)v34->_reactorToolService setDelegate:v34];
  v70 = [(STXPCServiceProvider *)v34->_xpcServiceProvider provideDowntimeService];
  downtimeService = v34->_downtimeService;
  v34->_downtimeService = v70;

  [(STDowntimeService *)v34->_downtimeService setDelegate:v34];
  objc_storeStrong(&v34->_deviceInformationPrimitives, a4);
  v72 = objc_retainBlock(v100);

  shutdownWillBegin = v34->_shutdownWillBegin;
  v34->_shutdownWillBegin = v72;

  v74 = objc_retainBlock(v104);
  shutdownDidComplete = v34->_shutdownDidComplete;
  v34->_shutdownDidComplete = v74;

  v121[0] = _NSConcreteStackBlock;
  v121[1] = 3221225472;
  v121[2] = sub_10005FD74;
  v121[3] = &unk_1001A3E08;
  v76 = v94;
  v122 = v76;
  v77 = obja;
  v123 = v77;
  v78 = v42;
  v124 = v78;
  v79 = v53;
  v125 = v79;
  v80 = objc_retainBlock(v121);
  purgeKeyValueStores = v34->_purgeKeyValueStores;
  v34->_purgeKeyValueStores = v80;

  v82 = +[NSNotificationCenter defaultCenter];
  v83 = +[STNetworkDetector sharedInstance];
  [v82 addObserver:v34 selector:"_networkDidBecomeReachable:" name:@"STNetworkDetectorChangedNotificationName" object:v83];

  v84 = +[STLog reactor];
  if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v84, OS_LOG_TYPE_DEFAULT, "Initialized Reactor", buf, 2u);
  }

  return v34;
}

- (void)start
{
  v3 = [(STReactor *)self familyInformationProvider];
  v8 = 0;
  v4 = [v3 fetchTargetableFamilyMembersWithError:&v8];
  v5 = v8;

  if (!v5 || [v5 code] != 31)
  {
    v6 = [(STReactor *)self _persistTargetableFamilyMembers:v4];
  }

  [(STReactor *)self _synchronizeGenesisStateStoreWithTargetableFamilyMembers:v4];
  [(STReactor *)self _scheduleStoreCleanupBackgroundActivity];
  [(STReactor *)self _scheduleFailStuckMessagesBackgroundActivity];
  [(STReactor *)self _scheduleMessageRetryBackgroundActivity];
  [(STReactor *)self _scheduleDonateDowntimeBiomeEventBackgroundActivity];
  v7 = [(STReactor *)self askForTimeEventRelay];
  [v7 addObserver:self];
}

- (void)shutdown
{
  v3 = +[STLog reactor];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Reactor shutdown begin", buf, 2u);
  }

  v4 = [(STReactor *)self shutdownWillBegin];
  v4[2]();

  v5 = [(STReactor *)self purgeKeyValueStores];
  v5[2]();

  v6 = +[STLog reactor];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Reactor shutdown complete", v8, 2u);
  }

  v7 = [(STReactor *)self shutdownDidComplete];
  v7[2]();
}

- (void)_synchronizeGenesisStateStoreWithTargetableFamilyMembers:(id)a3
{
  v4 = a3;
  v5 = [(STReactor *)self genesisStateStore];
  v9 = [v5 readFamilyMemberGenesisStateItems];

  v6 = [STGenesisStateReactorCoreComponent updateFamilyMemberGenesisStateItems:v9 targetableFamilyMembers:v4];

  v7 = [STGenesisStateReactorCoreComponent updateExpiredAwaitingResponseFamilyMemberGenesisStateItemsToPending:v6];

  v8 = [(STReactor *)self genesisStateStore];
  [v8 writeFamilyMemberGenesisStateItems:v7];
}

- (id)_persistTargetableFamilyMembers:(id)a3
{
  v4 = a3;
  v5 = [(STReactor *)self familyInformationTransformer];
  v6 = [v5 updateDatabaseWithFamilyMembers:v4];

  [v6 evaluateWithSuccess:&stru_1001A4E48 failure:&stru_1001A4E68];

  return v6;
}

- (void)reconcileGenesisStateStore
{
  v3 = +[STLog reactor];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Reconciling genesis state", buf, 2u);
  }

  v4 = [(STReactor *)self primitiveOSTransactionProvider];
  v5 = [v4 transactionWithDescription:"com.apple.ScreenTimeAgent.reconcile-genesis"];

  v6 = +[STPromise doOn];
  v7 = [(STReactor *)self reactorQueue];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000607D4;
  v18[3] = &unk_1001A4E90;
  v18[4] = self;
  v8 = (v6)[2](v6, v7, v18);
  v9 = [v8 then];
  v10 = (v9)[2](v9, &stru_1001A4ED0);
  v11 = [v10 catch];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100060A18;
  v15[3] = &unk_1001A4EF8;
  v16 = v5;
  v17 = self;
  v12 = v11[2];
  v13 = v5;
  v14 = v12(v11, v15);
}

- (void)sendInitialSetup
{
  v3 = [(STReactor *)self primitiveOSTransactionProvider];
  v4 = [v3 transactionWithDescription:"com.apple.ScreenTimeAgent.setup"];

  v5 = [(STReactor *)self familyInformationProvider];
  v6 = [v5 fetchTargetableFamilyMembersWithError:0];

  v7 = +[STPromise doOn];
  v8 = [(STReactor *)self reactorQueue];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100060C44;
  v18[3] = &unk_1001A4F20;
  v19 = v6;
  v20 = self;
  v9 = v7[2];
  v10 = v6;
  v11 = v9(v7, v8, v18);
  v12 = [v11 catch];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100060CC0;
  v16[3] = &unk_1001A4048;
  v17 = v4;
  v13 = v12[2];
  v14 = v4;
  v15 = v13(v12, v16);
}

- (void)_networkDidBecomeReachable:(id)a3
{
  v4 = a3;
  v5 = [(STReactor *)self primitiveOSTransactionProvider];
  v33 = [v5 transactionWithDescription:"com.apple.ScreenTimeAgent.network-reachability-checkin"];

  v6 = [v4 object];
  if ([v6 isOnline])
  {
    v7 = [(STReactor *)self familyInformationProvider];
    v8 = [v7 fetchTargetableFamilyMembersWithError:0];

    if ([v8 count] == 1 && (objc_msgSend(v8, "anyObject"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "isSignedInMember"), v9, v10))
    {
      v11 = +[STLog reactor];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Skipping check-in message in response to network reachability change because the signed in user is the only member of their iCloud family", buf, 2u);
      }
    }

    else
    {
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      obj = v8;
      v12 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
      if (v12)
      {
        v13 = v12;
        v28 = v8;
        v29 = v6;
        v30 = v4;
        v32 = *v41;
        do
        {
          for (i = 0; i != v13; i = i + 1)
          {
            if (*v41 != v32)
            {
              objc_enumerationMutation(obj);
            }

            v15 = *(*(&v40 + 1) + 8 * i);
            v16 = [STUserID alloc];
            v17 = [v15 dsid];
            v18 = [v16 initWithDSID:v17];

            v19 = +[STPromise doOn];
            v20 = [(STReactor *)self reactorQueue];
            v37[0] = _NSConcreteStackBlock;
            v37[1] = 3221225472;
            v37[2] = sub_100061118;
            v37[3] = &unk_1001A4F20;
            v38 = v18;
            v39 = self;
            v21 = v19[2];
            v22 = v18;
            v23 = v21(v19, v20, v37);
            v24 = [v23 then];
            v36[0] = _NSConcreteStackBlock;
            v36[1] = 3221225472;
            v36[2] = sub_100061228;
            v36[3] = &unk_1001A4F48;
            v36[4] = self;
            v25 = (v24)[2](v24, v36);
            v26 = [v25 catch];
            v34[0] = _NSConcreteStackBlock;
            v34[1] = 3221225472;
            v34[2] = sub_100061340;
            v34[3] = &unk_1001A4048;
            v35 = v33;
            v27 = (v26)[2](v26, v34);
          }

          v13 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
        }

        while (v13);
        v6 = v29;
        v4 = v30;
        v8 = v28;
      }

      v11 = obj;
    }
  }
}

- (void)_scheduleStoreCleanupBackgroundActivity
{
  v3 = [(STReactor *)self primitiveOSTransactionProvider];
  v4 = [v3 transactionWithDescription:"com.apple.ScreenTimeAgent.schedule-store-cleanup-activity"];

  v5 = +[STPromise doOn];
  v6 = [(STReactor *)self reactorQueue];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100061558;
  v16[3] = &unk_1001A4E90;
  v16[4] = self;
  v7 = (v5)[2](v5, v6, v16);
  v8 = [v7 then];
  v9 = (v8)[2](v8, &stru_1001A4F88);
  v10 = [v9 catch];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000616C0;
  v14[3] = &unk_1001A4048;
  v15 = v4;
  v11 = v10[2];
  v12 = v4;
  v13 = v11(v10, v14);
}

- (void)_scheduleFailStuckMessagesBackgroundActivity
{
  v3 = [(STReactor *)self primitiveOSTransactionProvider];
  v4 = [v3 transactionWithDescription:"com.apple.ScreenTimeAgent.schedule-fail-stuck-messages-activity"];

  v5 = +[STPromise doOn];
  v6 = [(STReactor *)self reactorQueue];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000618D8;
  v16[3] = &unk_1001A4E90;
  v16[4] = self;
  v7 = (v5)[2](v5, v6, v16);
  v8 = [v7 then];
  v9 = (v8)[2](v8, &stru_1001A4FA8);
  v10 = [v9 catch];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100061A40;
  v14[3] = &unk_1001A4048;
  v15 = v4;
  v11 = v10[2];
  v12 = v4;
  v13 = v11(v10, v14);
}

- (void)_scheduleMessageRetryBackgroundActivity
{
  v3 = [(STReactor *)self primitiveOSTransactionProvider];
  v4 = [v3 transactionWithDescription:"com.apple.ScreenTimeAgent.schedule-message-retry-activity"];

  v5 = +[STPromise doOn];
  v6 = [(STReactor *)self reactorQueue];
  v7 = (v5)[2](v5, v6, &stru_1001A4FE8);
  v8 = [v7 then];
  v9 = (v8)[2](v8, &stru_1001A5008);
  v10 = [v9 catch];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100061D20;
  v14[3] = &unk_1001A4048;
  v15 = v4;
  v11 = v10[2];
  v12 = v4;
  v13 = v11(v10, v14);
}

- (void)_scheduleDonateDowntimeBiomeEventBackgroundActivity
{
  v3 = [(STReactor *)self primitiveOSTransactionProvider];
  v4 = [v3 transactionWithDescription:"com.apple.ScreenTimeAgent.schedule-downtime-biome-event-donation-activity"];

  v5 = +[STPromise doOn];
  v6 = [(STReactor *)self reactorQueue];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100061F38;
  v16[3] = &unk_1001A4E90;
  v16[4] = self;
  v7 = (v5)[2](v5, v6, v16);
  v8 = [v7 then];
  v9 = (v8)[2](v8, &stru_1001A5028);
  v10 = [v9 catch];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100062120;
  v14[3] = &unk_1001A4048;
  v15 = v4;
  v11 = v10[2];
  v12 = v4;
  v13 = v11(v10, v14);
}

- (void)transportEnvoy:(id)a3 didReceiveMessage:(id)a4
{
  v5 = a4;
  v6 = [v5 message];
  v7 = +[STLog reactor];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v34 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Received message: %{public}@", buf, 0xCu);
  }

  v8 = [(STReactor *)self primitiveOSTransactionProvider];
  v9 = [v8 transactionWithDescription:"com.apple.ScreenTimeAgent.receive-transport-message"];

  v10 = +[STPromise doOn];
  v22 = [(STReactor *)self reactorQueue];
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_10006246C;
  v30[3] = &unk_1001A5050;
  v30[4] = self;
  v31 = v5;
  v11 = v6;
  v32 = v11;
  v12 = v10[2];
  v23 = v5;
  v13 = v12(v10, v22, v30);
  v14 = [v13 then];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_1000625D8;
  v27[3] = &unk_1001A5078;
  v15 = v11;
  v28 = v15;
  v29 = self;
  v16 = (v14)[2](v14, v27);
  v17 = [v16 catch];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10006275C;
  v24[3] = &unk_1001A4EF8;
  v25 = v9;
  v26 = v15;
  v18 = v17[2];
  v19 = v15;
  v20 = v9;
  v21 = v18(v17, v24);
}

- (void)transportEnvoy:(id)a3 didSendMessageWithIdentifier:(id)a4 result:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [(STReactor *)self primitiveOSTransactionProvider];
  v10 = [v9 transactionWithDescription:"com.apple.ScreenTimeAgent.did-send-message"];

  v11 = +[STLog reactor];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v30 = v7;
    v31 = 2114;
    v32 = v8;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Sent message %{public}@ with result: %{public}@", buf, 0x16u);
  }

  v12 = +[STPromise doOn];
  v13 = [(STReactor *)self reactorQueue];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_100062A38;
  v26[3] = &unk_1001A4F20;
  v14 = v8;
  v27 = v14;
  v28 = self;
  v15 = (v12)[2](v12, v13, v26);
  v16 = [v15 catch];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100062AB4;
  v22[3] = &unk_1001A50A0;
  v23 = v7;
  v24 = v14;
  v25 = v10;
  v17 = v16[2];
  v18 = v10;
  v19 = v14;
  v20 = v7;
  v21 = v17(v16, v22);
}

- (void)changeObserver:(id)a3 didObserveConfigurationChange:(id)a4
{
  v5 = a4;
  v6 = [(STReactor *)self primitiveOSTransactionProvider];
  v7 = [v6 transactionWithDescription:"com.apple.ScreenTimeAgent.observe-configuration-change"];

  v8 = +[STLog reactor];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v51 = v5;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Observed change: %{public}@", buf, 0xCu);
  }

  v31 = [(STReactor *)self reactorQueue];
  v9 = +[STPromise doOn];
  v48[0] = _NSConcreteStackBlock;
  v48[1] = 3221225472;
  v48[2] = sub_100062F60;
  v48[3] = &unk_1001A4F20;
  v48[4] = self;
  v10 = v5;
  v49 = v10;
  v30 = v9;
  v29 = (*(v9 + 16))(v9, v31, v48);
  v11 = [v29 then];
  v45[0] = _NSConcreteStackBlock;
  v45[1] = 3221225472;
  v45[2] = sub_100063030;
  v45[3] = &unk_1001A50C8;
  v12 = v10;
  v46 = v12;
  v47 = self;
  v28 = v11;
  v27 = (*(v11 + 16))(v11, v45);
  v13 = [v27 then];
  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3221225472;
  v42[2] = sub_1000631F4;
  v42[3] = &unk_1001A50C8;
  v14 = v12;
  v43 = v14;
  v44 = self;
  v26 = (v13)[2](v13, v42);
  v15 = [v26 then];
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_1000632A8;
  v39[3] = &unk_1001A50C8;
  v16 = v14;
  v40 = v16;
  v41 = self;
  v17 = (v15)[2](v15, v39);
  v18 = [v17 then];
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_10006335C;
  v36[3] = &unk_1001A50C8;
  v19 = v16;
  v37 = v19;
  v38 = self;
  v20 = (v18)[2](v18, v36);
  v21 = [v20 catch];
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_100063458;
  v32[3] = &unk_1001A50A0;
  v33 = v7;
  v34 = v19;
  v35 = self;
  v22 = v21[2];
  v25 = v19;
  v23 = v7;
  v24 = v22(v21, v32);
}

- (void)changeObserver:(id)a3 didObserveDeviceStateChange:(id)a4
{
  v5 = a4;
  v6 = [(STReactor *)self primitiveOSTransactionProvider];
  v7 = [v6 transactionWithDescription:"com.apple.ScreenTimeAgent.observe-device-state-change"];

  v8 = [(STReactor *)self reactorQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000635C0;
  block[3] = &unk_1001A42E0;
  v12 = v5;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v5;
  dispatch_async(v8, block);
}

- (void)familyProvider:(id)a3 didUpdateTargetableFamilyMembers:(id)a4
{
  v5 = a4;
  v6 = +[STLog reactor];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446723;
    v12 = "[STReactor familyProvider:didUpdateTargetableFamilyMembers:]";
    v13 = 2048;
    v14 = [v5 count];
    v15 = 2113;
    v16 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}s: \nObserved family change - %lu members: %{private}@", buf, 0x20u);
  }

  v7 = [(STReactor *)self reactorQueue];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100063AE4;
  v9[3] = &unk_1001A3020;
  v9[4] = self;
  v10 = v5;
  v8 = v5;
  dispatch_async(v7, v9);
}

- (void)familyProviderDidLeaveFamily:(id)a3
{
  v4 = +[STLog reactor];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v8 = "[STReactor familyProviderDidLeaveFamily:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s: \nObserved family change: Left family", buf, 0xCu);
  }

  v5 = [(STReactor *)self reactorQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100063C4C;
  block[3] = &unk_1001A3180;
  block[4] = self;
  dispatch_async(v5, block);
}

- (void)beginBackgroundActivity:(id)a3
{
  v4 = a3;
  v5 = [v4 type];
  v6 = +[STLog reactor];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    if (v5 > 3)
    {
      v7 = &stru_1001AC900;
    }

    else
    {
      v7 = *(&off_1001A5280 + v5);
    }

    *buf = 138543362;
    v28 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Beginning background activity: %{public}@", buf, 0xCu);
  }

  v8 = +[STPromise doOn];
  v9 = [(STReactor *)self reactorQueue];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_100063F58;
  v26[3] = &unk_1001A50F0;
  v26[4] = self;
  v26[5] = v5;
  v10 = (v8)[2](v8, v9, v26);
  v11 = [v10 then];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100063FD4;
  v22[3] = &unk_1001A5118;
  v25 = v5;
  v12 = v4;
  v23 = v12;
  v24 = self;
  v13 = (v11)[2](v11, v22);
  v14 = [v13 catch];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000641F8;
  v18[3] = &unk_1001A5140;
  v20 = self;
  v21 = v5;
  v19 = v12;
  v15 = v14[2];
  v16 = v12;
  v17 = v15(v14, v18);
}

- (void)eventRelay:(id)a3 didRelayRequestEvent:(id)a4
{
  v5 = a4;
  v6 = [(STReactor *)self primitiveOSTransactionProvider];
  v7 = [v6 transactionWithDescription:"com.apple.ScreenTimeAgent.handle-relayed-ask-event"];

  v8 = +[STLog reactor];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v5 identifier];
    *buf = 138543362;
    v25 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Event relay did relay ask for time request event: %{public}@", buf, 0xCu);
  }

  v10 = +[STPromise doOn];
  v11 = [(STReactor *)self reactorQueue];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100064584;
  v21[3] = &unk_1001A4F20;
  v22 = v5;
  v23 = self;
  v12 = v10[2];
  v13 = v5;
  v14 = v12(v10, v11, v21);
  v15 = [v14 catch];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100064600;
  v19[3] = &unk_1001A4048;
  v20 = v7;
  v16 = v15[2];
  v17 = v7;
  v18 = v16(v15, v19);
}

- (void)eventRelay:(id)a3 didRelayResponseEvent:(id)a4
{
  v5 = a4;
  v6 = [(STReactor *)self primitiveOSTransactionProvider];
  v7 = [v6 transactionWithDescription:"com.apple.ScreenTimeAgent.handle-relayed-ask-event"];

  v8 = +[STLog reactor];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v5 identifier];
    *buf = 138543362;
    v25 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Event relay did relay ask for time response event: %{public}@", buf, 0xCu);
  }

  v10 = +[STPromise doOn];
  v11 = [(STReactor *)self reactorQueue];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100064898;
  v21[3] = &unk_1001A4F20;
  v22 = v5;
  v23 = self;
  v12 = v10[2];
  v13 = v5;
  v14 = v12(v10, v11, v21);
  v15 = [v14 catch];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100064914;
  v19[3] = &unk_1001A4048;
  v20 = v7;
  v16 = v15[2];
  v17 = v7;
  v18 = v16(v15, v19);
}

- (void)respondToAskForTimeRequestWithIdentifier:(id)a3 answer:(int64_t)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = +[STLog reactor];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543362;
    v13 = v8;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Responding to ask for time request: %{public}@", &v12, 0xCu);
  }

  v11 = [(STReactor *)self askForTimeResponseHandler];
  [v11 handleAnswer:a4 forRequestWithIdentifier:v8];

  v9[2](v9, 0);
}

- (void)isCapabilityEnabledForUser:(id)a3 capability:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(STReactor *)self _messageTransport];
  [v11 _isCapabilityEnabledForUser:v10 capability:v9 completionHandler:v8];
}

- (void)isDowntimeEnabledForUserID:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[STLog reactor];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Current downtime state requested for user: %{public}@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v19 = 0x2020000000;
  v20 = 0;
  v9 = [(STReactor *)self configurationStore];
  v10 = [v9 readDowntimeConfigurationForUserID:v6];

  v11 = [v10 mapError:&stru_1001A5160];

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100064DC8;
  v15[3] = &unk_1001A5188;
  p_buf = &buf;
  v16 = v7;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100064EA0;
  v13[3] = &unk_1001A3978;
  v12 = v16;
  v14 = v12;
  [v11 evaluateWithSuccess:v15 failure:v13];

  _Block_object_dispose(&buf, 8);
}

- (void)toggleOnDemandDowntimeForUserID:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[STLog reactor];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Attempt to toggle on demand downtime for user ID", buf, 2u);
  }

  v9 = [(STReactor *)self configurationStore];
  v10 = [v9 toggleOnDemandDowntimeConfigurationForUserID:v7];

  v11 = [v10 mapError:&stru_1001A51A8];

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000650EC;
  v15[3] = &unk_1001A51D0;
  v16 = v6;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100065174;
  v13[3] = &unk_1001A3978;
  v14 = v16;
  v12 = v16;
  [v11 evaluateWithSuccess:v15 failure:v13];
}

- (void)currentCommunicationConfigurationWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = +[STLog reactor];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Current communication configuration requested", buf, 2u);
  }

  v6 = [(STReactor *)self configurationStore];
  v7 = [v6 readCommunicationConfigurationForLocalUser];

  v8 = [v7 mapError:&stru_1001A51F0];

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100065434;
  v12[3] = &unk_1001A5218;
  v13 = v4;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000654D8;
  v10[3] = &unk_1001A3978;
  v11 = v13;
  v9 = v13;
  [v8 evaluateWithSuccess:v12 failure:v10];
}

- (void)authenticatePasscodeForUserWithEndpoint:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[STLog reactor];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Passcode authentication requested", v11, 2u);
  }

  v9 = [(STReactor *)self xpcServiceProvider];
  v10 = [v9 providePasscodeAuthenticationServiceWithClientListenerEndpoint:v7];

  [v10 activate];
  v6[2](v6);
}

- (void)currentConfigurationForUser:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[STLog reactor];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v24 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Current setup configuration requested for user: %{public}@", buf, 0xCu);
  }

  v9 = [(STReactor *)self configurationStore];
  v10 = [(STReactor *)self familyInformationProvider];
  v11 = [v9 readSetupConfigurationForUserID:v6 familyProvider:v10];

  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100065820;
  v21[3] = &unk_1001A3838;
  v12 = v6;
  v22 = v12;
  v13 = [v11 mapError:v21];

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100065954;
  v18[3] = &unk_1001A5240;
  v19 = v12;
  v20 = v7;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100065A34;
  v16[3] = &unk_1001A3978;
  v17 = v20;
  v14 = v20;
  v15 = v12;
  [v13 evaluateWithSuccess:v18 failure:v16];
}

- (void)applyUpdatedConfiguration:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[STLog reactor];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v18 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Apply configuration requested: %{public}@", buf, 0xCu);
  }

  v9 = [(STReactor *)self configurationStore];
  v10 = [v9 writeSetupConfiguration:v6];

  v11 = [v10 mapError:&stru_1001A5260];

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100065D2C;
  v15[3] = &unk_1001A51D0;
  v16 = v7;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100065DB4;
  v13[3] = &unk_1001A3978;
  v14 = v16;
  v12 = v16;
  [v11 evaluateWithSuccess:v15 failure:v13];
}

- (void)promptForPasscodeFromUserWithEndpoint:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[STLog reactor];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Prompting user for passcode", v11, 2u);
  }

  v9 = [(STReactor *)self xpcServiceProvider];
  v10 = [v9 providePasscodePromptServiceWithClientListenerEndpoint:v7];

  [v10 activate];
  v6[2](v6);
}

- (void)shutdownReactorWithCompletion:(id)a3
{
  v4 = a3;
  v5 = +[STLog reactor];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[TOOL] Reactor shutdown requested", v6, 2u);
  }

  v4[2](v4);
  [(STReactor *)self shutdown];
}

- (void)scheduleMessageRetryActivity:(id)a3
{
  v4 = a3;
  v5 = +[STLog reactor];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[TOOL] Schedule message retry requested", v6, 2u);
  }

  [(STReactor *)self _scheduleMessageRetryBackgroundActivity];
  v4[2](v4);
}

- (void)scheduleStoreCleanupActivity:(id)a3
{
  v4 = a3;
  v5 = +[STLog reactor];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[TOOL] Schedule store cleanup requested", v6, 2u);
  }

  [(STReactor *)self _scheduleStoreCleanupBackgroundActivity];
  v4[2](v4);
}

- (void)scheduleFailStuckMessagesActivity:(id)a3
{
  v4 = a3;
  v5 = +[STLog reactor];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[TOOL] Schedule fail stuck messages requested", v6, 2u);
  }

  [(STReactor *)self _scheduleFailStuckMessagesBackgroundActivity];
  v4[2](v4);
}

- (void)currentMessageTransportReachabilityMap:(id)a3
{
  v4 = a3;
  v5 = +[STLog reactor];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[TOOL] Getting current message transport reachability map", v8, 2u);
  }

  v6 = [(STReactor *)self _messageTransport];
  v7 = [v6 destinationReachabilityMap];
  v4[2](v4, v7);
}

@end