@interface STReactor
- (STReactor)initWithFamilyCirclePrimitives:(id)primitives deviceInformationPrimitives:(id)informationPrimitives idsTransportPrimitives:(id)transportPrimitives filesystemPrimitives:(id)filesystemPrimitives contactStorePrimitives:(id)storePrimitives xpcServiceProvider:(id)provider primitiveOSTransactionProvider:(id)transactionProvider primitiveBackgroundActivitySchedulerProvider:(id)self0 coreDataObserver:(id)self1 coreDataConfigurationTransformer:(id)self2 coreDataDeviceStateTransformer:(id)self3 coreDataFamilyInformationTransformer:(id)self4 askForTimeEventRelay:(id)self5 askForTimeResponseHandler:(id)self6 biomeEventWriter:(id)self7 eyeReliefStateWriter:(id)self8 userSafetyPolicyWriter:(id)self9 messageAddressMapDirectoryURL:(id)l messageIdentifierMapDirectoryURL:(id)rL messageLedgerDirectoryURL:(id)uRL genesisStateStoreDirectoryURL:(id)directoryURL reactorQueue:(id)queue transportQueue:(id)transportQueue shutdownWillBegin:(id)begin shutdownDidComplete:(id)complete;
- (id)_persistTargetableFamilyMembers:(id)members;
- (void)_networkDidBecomeReachable:(id)reachable;
- (void)_scheduleDonateDowntimeBiomeEventBackgroundActivity;
- (void)_scheduleFailStuckMessagesBackgroundActivity;
- (void)_scheduleMessageRetryBackgroundActivity;
- (void)_scheduleStoreCleanupBackgroundActivity;
- (void)_synchronizeGenesisStateStoreWithTargetableFamilyMembers:(id)members;
- (void)applyUpdatedConfiguration:(id)configuration completionHandler:(id)handler;
- (void)authenticatePasscodeForUserWithEndpoint:(id)endpoint completionHandler:(id)handler;
- (void)beginBackgroundActivity:(id)activity;
- (void)changeObserver:(id)observer didObserveConfigurationChange:(id)change;
- (void)changeObserver:(id)observer didObserveDeviceStateChange:(id)change;
- (void)currentCommunicationConfigurationWithCompletionHandler:(id)handler;
- (void)currentConfigurationForUser:(id)user completionHandler:(id)handler;
- (void)currentMessageTransportReachabilityMap:(id)map;
- (void)eventRelay:(id)relay didRelayRequestEvent:(id)event;
- (void)eventRelay:(id)relay didRelayResponseEvent:(id)event;
- (void)familyProvider:(id)provider didUpdateTargetableFamilyMembers:(id)members;
- (void)familyProviderDidLeaveFamily:(id)family;
- (void)isCapabilityEnabledForUser:(id)user capability:(id)capability completionHandler:(id)handler;
- (void)isDowntimeEnabledForUserID:(id)d completionHandler:(id)handler;
- (void)promptForPasscodeFromUserWithEndpoint:(id)endpoint completionHandler:(id)handler;
- (void)reconcileGenesisStateStore;
- (void)respondToAskForTimeRequestWithIdentifier:(id)identifier answer:(int64_t)answer completionHandler:(id)handler;
- (void)scheduleFailStuckMessagesActivity:(id)activity;
- (void)scheduleMessageRetryActivity:(id)activity;
- (void)scheduleStoreCleanupActivity:(id)activity;
- (void)sendInitialSetup;
- (void)shutdown;
- (void)shutdownReactorWithCompletion:(id)completion;
- (void)start;
- (void)toggleOnDemandDowntimeForUserID:(id)d completionHandler:(id)handler;
- (void)transportEnvoy:(id)envoy didReceiveMessage:(id)message;
- (void)transportEnvoy:(id)envoy didSendMessageWithIdentifier:(id)identifier result:(id)result;
@end

@implementation STReactor

- (STReactor)initWithFamilyCirclePrimitives:(id)primitives deviceInformationPrimitives:(id)informationPrimitives idsTransportPrimitives:(id)transportPrimitives filesystemPrimitives:(id)filesystemPrimitives contactStorePrimitives:(id)storePrimitives xpcServiceProvider:(id)provider primitiveOSTransactionProvider:(id)transactionProvider primitiveBackgroundActivitySchedulerProvider:(id)self0 coreDataObserver:(id)self1 coreDataConfigurationTransformer:(id)self2 coreDataDeviceStateTransformer:(id)self3 coreDataFamilyInformationTransformer:(id)self4 askForTimeEventRelay:(id)self5 askForTimeResponseHandler:(id)self6 biomeEventWriter:(id)self7 eyeReliefStateWriter:(id)self8 userSafetyPolicyWriter:(id)self9 messageAddressMapDirectoryURL:(id)l messageIdentifierMapDirectoryURL:(id)rL messageLedgerDirectoryURL:(id)uRL genesisStateStoreDirectoryURL:(id)directoryURL reactorQueue:(id)queue transportQueue:(id)transportQueue shutdownWillBegin:(id)begin shutdownDidComplete:(id)complete
{
  informationPrimitivesCopy = informationPrimitives;
  transportPrimitivesCopy = transportPrimitives;
  providerCopy = provider;
  transactionProviderCopy = transactionProvider;
  informationTransformerCopy = informationTransformer;
  relayCopy = relay;
  handlerCopy = handler;
  writerCopy = writer;
  stateWriterCopy = stateWriter;
  policyWriterCopy = policyWriter;
  queueCopy = queue;
  transportQueueCopy = transportQueue;
  v126.receiver = self;
  v126.super_class = STReactor;
  completeCopy = complete;
  beginCopy = begin;
  directoryURLCopy = directoryURL;
  uRLCopy = uRL;
  rLCopy = rL;
  lCopy = l;
  stateTransformerCopy = stateTransformer;
  transformerCopy = transformer;
  observerCopy = observer;
  schedulerProviderCopy = schedulerProvider;
  storePrimitivesCopy = storePrimitives;
  filesystemPrimitivesCopy = filesystemPrimitives;
  primitivesCopy = primitives;
  v34 = [(STReactor *)&v126 init];
  objc_storeStrong(&v34->_reactorQueue, queue);
  objc_storeStrong(&v34->_transportQueue, transportQueue);
  objc_storeStrong(&v34->_xpcServiceProvider, provider);
  objc_storeStrong(&v34->_primitiveOSTransactionProvider, transactionProvider);
  objc_storeStrong(&v34->_familyInformationTransformer, informationTransformer);
  v35 = [[STFamilyInformationProvider alloc] initWithFamilyCirclePrimitives:primitivesCopy deviceInformationPrimitives:informationPrimitivesCopy contactStorePrimitives:storePrimitivesCopy];

  v36 = [[STFileBackedKeyValueStore alloc] initWithDirectory:lCopy fileExtension:@"plist" filesystemPrimitives:filesystemPrimitivesCopy];
  v94 = v36;
  purge = [(STFileBackedKeyValueStore *)v36 purge];
  v38 = [[STPersistentIDSMessageTransportMessageAddressMap alloc] initWithPrimitives:transportPrimitivesCopy userAliasResolver:v35 keyValueStore:v36];
  v39 = [[STFileBackedKeyValueStore alloc] initWithDirectory:rLCopy fileExtension:@"plist" filesystemPrimitives:filesystemPrimitivesCopy];

  obja = v39;
  purge2 = [(STFileBackedKeyValueStore *)v39 purge];
  v106 = v38;
  v102 = [[STPersistentIDSMessageTransportMessageIdentifierMap alloc] initWithKeyValueStore:v39];
  v41 = [[STIDSMessageTransport alloc] initWithPrimitives:transportPrimitivesCopy messageAddressMap:v38 messageIdentifierMap:v102 addressValidator:v35 userAliasResolver:v35 returnAddressProvider:v35 transportQueue:transportQueueCopy];
  v42 = [[STFileBackedKeyValueStore alloc] initWithDirectory:uRLCopy fileExtension:@"plist" filesystemPrimitives:filesystemPrimitivesCopy];

  purge3 = [(STFileBackedKeyValueStore *)v42 purge];
  v44 = [[STPersistentTransportServiceMessageLedger alloc] initWithKeyValueStore:v42];
  v45 = [[STMessageTrackingTransportService alloc] initWithTransport:v41 returnAddressProvider:v35 messageLedger:v44 queue:transportQueueCopy];
  v46 = [[STFileBackedKeyValueStore alloc] initWithDirectory:directoryURLCopy fileExtension:@"plist" filesystemPrimitives:filesystemPrimitivesCopy];

  objc_storeStrong(&v34->_familyInformationProvider, v35);
  [(STFamilyProviding *)v34->_familyInformationProvider setObserver:v34];
  objc_storeStrong(&v34->_idsTransportPrimitives, transportPrimitives);
  v99 = v41;
  objc_storeStrong(&v34->__messageTransport, v41);
  v97 = v44;
  v47 = [[STMessageTrackingTransportEnvoy alloc] initWithTransportService:v45 messageLedger:v44 queue:v34->_transportQueue];
  transportEnvoy = v34->_transportEnvoy;
  v34->_transportEnvoy = v47;

  [(STTransportEnvoy *)v34->_transportEnvoy setDelegate:v34];
  v49 = [STCoreDataConfigurationStore initWithObserver:"initWithObserver:transformer:reverseTransformer:" transformer:observerCopy reverseTransformer:?];

  configurationStore = v34->_configurationStore;
  v34->_configurationStore = v49;

  [(STConfigurationStoreChangeObserver *)v34->_configurationStore setDelegate:v34];
  v51 = [STCoreDataDeviceStateStore initWithObserver:"initWithObserver:transformer:reverseTransformer:" transformer:observerCopy reverseTransformer:?];

  deviceStateStore = v34->_deviceStateStore;
  v34->_deviceStateStore = v51;

  [(STDeviceStateChangeObserver *)v34->_deviceStateStore setDelegate:v34];
  objc_storeStrong(&v34->_askForTimeEventRelay, relay);
  objc_storeStrong(&v34->_askForTimeResponseHandler, handler);
  objc_storeStrong(&v34->_biomeEventWriter, writer);
  objc_storeStrong(&v34->_eyeReliefStateWriter, stateWriter);
  objc_storeStrong(&v34->_userSafetyPolicyWriter, policyWriter);
  v53 = v46;
  v54 = [[STPersistentFamilyMemberGenesisStateStore alloc] initWithKeyValueStore:v46];
  genesisStateStore = v34->_genesisStateStore;
  v34->_genesisStateStore = v54;

  v92 = [NSSet setWithArray:&off_1001B2550];
  v56 = [schedulerProviderCopy createSchedulerRegisteredForTypes:? schedulerDelegate:?];

  backgroundActivityScheduler = v34->_backgroundActivityScheduler;
  v34->_backgroundActivityScheduler = v56;

  v58 = [STReactorDirectiveProcessor alloc];
  userSafetyPolicyWriter = v34->_userSafetyPolicyWriter;
  v60 = [(STReactorDirectiveProcessor *)v58 initWithQueue:v34->_reactorQueue transportEnvoy:v34->_transportEnvoy transportEnvoyQueue:v34->_transportQueue configurationStore:v34->_configurationStore deviceStateStore:v34->_deviceStateStore biomeEventWriter:v34->_biomeEventWriter backgroundActivityScheduler:v34->_backgroundActivityScheduler familyProvider:v34->_familyInformationProvider eyeReliefStateWriter:v34->_eyeReliefStateWriter userSafetyPolicyWriter:userSafetyPolicyWriter transportPrimitives:v34->_idsTransportPrimitives];
  directiveProcessor = v34->_directiveProcessor;
  v34->_directiveProcessor = v60;

  provideAskService = [(STXPCServiceProvider *)v34->_xpcServiceProvider provideAskService];
  askService = v34->_askService;
  v34->_askService = provideAskService;

  [(STAskService *)v34->_askService setDelegate:v34];
  provideCommunicationService = [(STXPCServiceProvider *)v34->_xpcServiceProvider provideCommunicationService];
  communicationService = v34->_communicationService;
  v34->_communicationService = provideCommunicationService;

  [(STCommunicationService *)v34->_communicationService setDelegate:v34];
  provideSetupService = [(STXPCServiceProvider *)v34->_xpcServiceProvider provideSetupService];
  setupService = v34->_setupService;
  v34->_setupService = provideSetupService;

  [(STSetupService *)v34->_setupService setDelegate:v34];
  provideReactorToolService = [(STXPCServiceProvider *)v34->_xpcServiceProvider provideReactorToolService];
  reactorToolService = v34->_reactorToolService;
  v34->_reactorToolService = provideReactorToolService;

  [(STReactorToolService *)v34->_reactorToolService setDelegate:v34];
  provideDowntimeService = [(STXPCServiceProvider *)v34->_xpcServiceProvider provideDowntimeService];
  downtimeService = v34->_downtimeService;
  v34->_downtimeService = provideDowntimeService;

  [(STDowntimeService *)v34->_downtimeService setDelegate:v34];
  objc_storeStrong(&v34->_deviceInformationPrimitives, informationPrimitives);
  v72 = objc_retainBlock(beginCopy);

  shutdownWillBegin = v34->_shutdownWillBegin;
  v34->_shutdownWillBegin = v72;

  v74 = objc_retainBlock(completeCopy);
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
  familyInformationProvider = [(STReactor *)self familyInformationProvider];
  v8 = 0;
  v4 = [familyInformationProvider fetchTargetableFamilyMembersWithError:&v8];
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
  askForTimeEventRelay = [(STReactor *)self askForTimeEventRelay];
  [askForTimeEventRelay addObserver:self];
}

- (void)shutdown
{
  v3 = +[STLog reactor];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Reactor shutdown begin", buf, 2u);
  }

  shutdownWillBegin = [(STReactor *)self shutdownWillBegin];
  shutdownWillBegin[2]();

  purgeKeyValueStores = [(STReactor *)self purgeKeyValueStores];
  purgeKeyValueStores[2]();

  v6 = +[STLog reactor];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Reactor shutdown complete", v8, 2u);
  }

  shutdownDidComplete = [(STReactor *)self shutdownDidComplete];
  shutdownDidComplete[2]();
}

- (void)_synchronizeGenesisStateStoreWithTargetableFamilyMembers:(id)members
{
  membersCopy = members;
  genesisStateStore = [(STReactor *)self genesisStateStore];
  readFamilyMemberGenesisStateItems = [genesisStateStore readFamilyMemberGenesisStateItems];

  v6 = [STGenesisStateReactorCoreComponent updateFamilyMemberGenesisStateItems:readFamilyMemberGenesisStateItems targetableFamilyMembers:membersCopy];

  v7 = [STGenesisStateReactorCoreComponent updateExpiredAwaitingResponseFamilyMemberGenesisStateItemsToPending:v6];

  genesisStateStore2 = [(STReactor *)self genesisStateStore];
  [genesisStateStore2 writeFamilyMemberGenesisStateItems:v7];
}

- (id)_persistTargetableFamilyMembers:(id)members
{
  membersCopy = members;
  familyInformationTransformer = [(STReactor *)self familyInformationTransformer];
  v6 = [familyInformationTransformer updateDatabaseWithFamilyMembers:membersCopy];

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

  primitiveOSTransactionProvider = [(STReactor *)self primitiveOSTransactionProvider];
  v5 = [primitiveOSTransactionProvider transactionWithDescription:"com.apple.ScreenTimeAgent.reconcile-genesis"];

  v6 = +[STPromise doOn];
  reactorQueue = [(STReactor *)self reactorQueue];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000607D4;
  v18[3] = &unk_1001A4E90;
  v18[4] = self;
  v8 = (v6)[2](v6, reactorQueue, v18);
  then = [v8 then];
  v10 = (then)[2](then, &stru_1001A4ED0);
  catch = [v10 catch];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100060A18;
  v15[3] = &unk_1001A4EF8;
  v16 = v5;
  selfCopy = self;
  v12 = catch[2];
  v13 = v5;
  v14 = v12(catch, v15);
}

- (void)sendInitialSetup
{
  primitiveOSTransactionProvider = [(STReactor *)self primitiveOSTransactionProvider];
  v4 = [primitiveOSTransactionProvider transactionWithDescription:"com.apple.ScreenTimeAgent.setup"];

  familyInformationProvider = [(STReactor *)self familyInformationProvider];
  v6 = [familyInformationProvider fetchTargetableFamilyMembersWithError:0];

  v7 = +[STPromise doOn];
  reactorQueue = [(STReactor *)self reactorQueue];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100060C44;
  v18[3] = &unk_1001A4F20;
  v19 = v6;
  selfCopy = self;
  v9 = v7[2];
  v10 = v6;
  v11 = v9(v7, reactorQueue, v18);
  catch = [v11 catch];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100060CC0;
  v16[3] = &unk_1001A4048;
  v17 = v4;
  v13 = catch[2];
  v14 = v4;
  v15 = v13(catch, v16);
}

- (void)_networkDidBecomeReachable:(id)reachable
{
  reachableCopy = reachable;
  primitiveOSTransactionProvider = [(STReactor *)self primitiveOSTransactionProvider];
  v33 = [primitiveOSTransactionProvider transactionWithDescription:"com.apple.ScreenTimeAgent.network-reachability-checkin"];

  object = [reachableCopy object];
  if ([object isOnline])
  {
    familyInformationProvider = [(STReactor *)self familyInformationProvider];
    v8 = [familyInformationProvider fetchTargetableFamilyMembersWithError:0];

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
        v29 = object;
        v30 = reachableCopy;
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
            dsid = [v15 dsid];
            v18 = [v16 initWithDSID:dsid];

            v19 = +[STPromise doOn];
            reactorQueue = [(STReactor *)self reactorQueue];
            v37[0] = _NSConcreteStackBlock;
            v37[1] = 3221225472;
            v37[2] = sub_100061118;
            v37[3] = &unk_1001A4F20;
            v38 = v18;
            selfCopy = self;
            v21 = v19[2];
            v22 = v18;
            v23 = v21(v19, reactorQueue, v37);
            then = [v23 then];
            v36[0] = _NSConcreteStackBlock;
            v36[1] = 3221225472;
            v36[2] = sub_100061228;
            v36[3] = &unk_1001A4F48;
            v36[4] = self;
            v25 = (then)[2](then, v36);
            catch = [v25 catch];
            v34[0] = _NSConcreteStackBlock;
            v34[1] = 3221225472;
            v34[2] = sub_100061340;
            v34[3] = &unk_1001A4048;
            v35 = v33;
            v27 = (catch)[2](catch, v34);
          }

          v13 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
        }

        while (v13);
        object = v29;
        reachableCopy = v30;
        v8 = v28;
      }

      v11 = obj;
    }
  }
}

- (void)_scheduleStoreCleanupBackgroundActivity
{
  primitiveOSTransactionProvider = [(STReactor *)self primitiveOSTransactionProvider];
  v4 = [primitiveOSTransactionProvider transactionWithDescription:"com.apple.ScreenTimeAgent.schedule-store-cleanup-activity"];

  v5 = +[STPromise doOn];
  reactorQueue = [(STReactor *)self reactorQueue];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100061558;
  v16[3] = &unk_1001A4E90;
  v16[4] = self;
  v7 = (v5)[2](v5, reactorQueue, v16);
  then = [v7 then];
  v9 = (then)[2](then, &stru_1001A4F88);
  catch = [v9 catch];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000616C0;
  v14[3] = &unk_1001A4048;
  v15 = v4;
  v11 = catch[2];
  v12 = v4;
  v13 = v11(catch, v14);
}

- (void)_scheduleFailStuckMessagesBackgroundActivity
{
  primitiveOSTransactionProvider = [(STReactor *)self primitiveOSTransactionProvider];
  v4 = [primitiveOSTransactionProvider transactionWithDescription:"com.apple.ScreenTimeAgent.schedule-fail-stuck-messages-activity"];

  v5 = +[STPromise doOn];
  reactorQueue = [(STReactor *)self reactorQueue];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000618D8;
  v16[3] = &unk_1001A4E90;
  v16[4] = self;
  v7 = (v5)[2](v5, reactorQueue, v16);
  then = [v7 then];
  v9 = (then)[2](then, &stru_1001A4FA8);
  catch = [v9 catch];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100061A40;
  v14[3] = &unk_1001A4048;
  v15 = v4;
  v11 = catch[2];
  v12 = v4;
  v13 = v11(catch, v14);
}

- (void)_scheduleMessageRetryBackgroundActivity
{
  primitiveOSTransactionProvider = [(STReactor *)self primitiveOSTransactionProvider];
  v4 = [primitiveOSTransactionProvider transactionWithDescription:"com.apple.ScreenTimeAgent.schedule-message-retry-activity"];

  v5 = +[STPromise doOn];
  reactorQueue = [(STReactor *)self reactorQueue];
  v7 = (v5)[2](v5, reactorQueue, &stru_1001A4FE8);
  then = [v7 then];
  v9 = (then)[2](then, &stru_1001A5008);
  catch = [v9 catch];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100061D20;
  v14[3] = &unk_1001A4048;
  v15 = v4;
  v11 = catch[2];
  v12 = v4;
  v13 = v11(catch, v14);
}

- (void)_scheduleDonateDowntimeBiomeEventBackgroundActivity
{
  primitiveOSTransactionProvider = [(STReactor *)self primitiveOSTransactionProvider];
  v4 = [primitiveOSTransactionProvider transactionWithDescription:"com.apple.ScreenTimeAgent.schedule-downtime-biome-event-donation-activity"];

  v5 = +[STPromise doOn];
  reactorQueue = [(STReactor *)self reactorQueue];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100061F38;
  v16[3] = &unk_1001A4E90;
  v16[4] = self;
  v7 = (v5)[2](v5, reactorQueue, v16);
  then = [v7 then];
  v9 = (then)[2](then, &stru_1001A5028);
  catch = [v9 catch];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100062120;
  v14[3] = &unk_1001A4048;
  v15 = v4;
  v11 = catch[2];
  v12 = v4;
  v13 = v11(catch, v14);
}

- (void)transportEnvoy:(id)envoy didReceiveMessage:(id)message
{
  messageCopy = message;
  message = [messageCopy message];
  v7 = +[STLog reactor];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v34 = message;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Received message: %{public}@", buf, 0xCu);
  }

  primitiveOSTransactionProvider = [(STReactor *)self primitiveOSTransactionProvider];
  v9 = [primitiveOSTransactionProvider transactionWithDescription:"com.apple.ScreenTimeAgent.receive-transport-message"];

  v10 = +[STPromise doOn];
  reactorQueue = [(STReactor *)self reactorQueue];
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_10006246C;
  v30[3] = &unk_1001A5050;
  v30[4] = self;
  v31 = messageCopy;
  v11 = message;
  v32 = v11;
  v12 = v10[2];
  v23 = messageCopy;
  v13 = v12(v10, reactorQueue, v30);
  then = [v13 then];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_1000625D8;
  v27[3] = &unk_1001A5078;
  v15 = v11;
  v28 = v15;
  selfCopy = self;
  v16 = (then)[2](then, v27);
  catch = [v16 catch];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10006275C;
  v24[3] = &unk_1001A4EF8;
  v25 = v9;
  v26 = v15;
  v18 = catch[2];
  v19 = v15;
  v20 = v9;
  v21 = v18(catch, v24);
}

- (void)transportEnvoy:(id)envoy didSendMessageWithIdentifier:(id)identifier result:(id)result
{
  identifierCopy = identifier;
  resultCopy = result;
  primitiveOSTransactionProvider = [(STReactor *)self primitiveOSTransactionProvider];
  v10 = [primitiveOSTransactionProvider transactionWithDescription:"com.apple.ScreenTimeAgent.did-send-message"];

  v11 = +[STLog reactor];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v30 = identifierCopy;
    v31 = 2114;
    v32 = resultCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Sent message %{public}@ with result: %{public}@", buf, 0x16u);
  }

  v12 = +[STPromise doOn];
  reactorQueue = [(STReactor *)self reactorQueue];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_100062A38;
  v26[3] = &unk_1001A4F20;
  v14 = resultCopy;
  v27 = v14;
  selfCopy = self;
  v15 = (v12)[2](v12, reactorQueue, v26);
  catch = [v15 catch];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100062AB4;
  v22[3] = &unk_1001A50A0;
  v23 = identifierCopy;
  v24 = v14;
  v25 = v10;
  v17 = catch[2];
  v18 = v10;
  v19 = v14;
  v20 = identifierCopy;
  v21 = v17(catch, v22);
}

- (void)changeObserver:(id)observer didObserveConfigurationChange:(id)change
{
  changeCopy = change;
  primitiveOSTransactionProvider = [(STReactor *)self primitiveOSTransactionProvider];
  v7 = [primitiveOSTransactionProvider transactionWithDescription:"com.apple.ScreenTimeAgent.observe-configuration-change"];

  v8 = +[STLog reactor];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v51 = changeCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Observed change: %{public}@", buf, 0xCu);
  }

  reactorQueue = [(STReactor *)self reactorQueue];
  v9 = +[STPromise doOn];
  v48[0] = _NSConcreteStackBlock;
  v48[1] = 3221225472;
  v48[2] = sub_100062F60;
  v48[3] = &unk_1001A4F20;
  v48[4] = self;
  v10 = changeCopy;
  v49 = v10;
  v30 = v9;
  v29 = (*(v9 + 16))(v9, reactorQueue, v48);
  then = [v29 then];
  v45[0] = _NSConcreteStackBlock;
  v45[1] = 3221225472;
  v45[2] = sub_100063030;
  v45[3] = &unk_1001A50C8;
  v12 = v10;
  v46 = v12;
  selfCopy = self;
  v28 = then;
  v27 = (*(then + 16))(then, v45);
  then2 = [v27 then];
  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3221225472;
  v42[2] = sub_1000631F4;
  v42[3] = &unk_1001A50C8;
  v14 = v12;
  v43 = v14;
  selfCopy2 = self;
  v26 = (then2)[2](then2, v42);
  then3 = [v26 then];
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_1000632A8;
  v39[3] = &unk_1001A50C8;
  v16 = v14;
  v40 = v16;
  selfCopy3 = self;
  v17 = (then3)[2](then3, v39);
  then4 = [v17 then];
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_10006335C;
  v36[3] = &unk_1001A50C8;
  v19 = v16;
  v37 = v19;
  selfCopy4 = self;
  v20 = (then4)[2](then4, v36);
  catch = [v20 catch];
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_100063458;
  v32[3] = &unk_1001A50A0;
  v33 = v7;
  v34 = v19;
  selfCopy5 = self;
  v22 = catch[2];
  v25 = v19;
  v23 = v7;
  v24 = v22(catch, v32);
}

- (void)changeObserver:(id)observer didObserveDeviceStateChange:(id)change
{
  changeCopy = change;
  primitiveOSTransactionProvider = [(STReactor *)self primitiveOSTransactionProvider];
  v7 = [primitiveOSTransactionProvider transactionWithDescription:"com.apple.ScreenTimeAgent.observe-device-state-change"];

  reactorQueue = [(STReactor *)self reactorQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000635C0;
  block[3] = &unk_1001A42E0;
  v12 = changeCopy;
  selfCopy = self;
  v14 = v7;
  v9 = v7;
  v10 = changeCopy;
  dispatch_async(reactorQueue, block);
}

- (void)familyProvider:(id)provider didUpdateTargetableFamilyMembers:(id)members
{
  membersCopy = members;
  v6 = +[STLog reactor];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446723;
    v12 = "[STReactor familyProvider:didUpdateTargetableFamilyMembers:]";
    v13 = 2048;
    v14 = [membersCopy count];
    v15 = 2113;
    v16 = membersCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}s: \nObserved family change - %lu members: %{private}@", buf, 0x20u);
  }

  reactorQueue = [(STReactor *)self reactorQueue];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100063AE4;
  v9[3] = &unk_1001A3020;
  v9[4] = self;
  v10 = membersCopy;
  v8 = membersCopy;
  dispatch_async(reactorQueue, v9);
}

- (void)familyProviderDidLeaveFamily:(id)family
{
  v4 = +[STLog reactor];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v8 = "[STReactor familyProviderDidLeaveFamily:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s: \nObserved family change: Left family", buf, 0xCu);
  }

  reactorQueue = [(STReactor *)self reactorQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100063C4C;
  block[3] = &unk_1001A3180;
  block[4] = self;
  dispatch_async(reactorQueue, block);
}

- (void)beginBackgroundActivity:(id)activity
{
  activityCopy = activity;
  type = [activityCopy type];
  v6 = +[STLog reactor];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    if (type > 3)
    {
      v7 = &stru_1001AC900;
    }

    else
    {
      v7 = *(&off_1001A5280 + type);
    }

    *buf = 138543362;
    v28 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Beginning background activity: %{public}@", buf, 0xCu);
  }

  v8 = +[STPromise doOn];
  reactorQueue = [(STReactor *)self reactorQueue];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_100063F58;
  v26[3] = &unk_1001A50F0;
  v26[4] = self;
  v26[5] = type;
  v10 = (v8)[2](v8, reactorQueue, v26);
  then = [v10 then];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100063FD4;
  v22[3] = &unk_1001A5118;
  v25 = type;
  v12 = activityCopy;
  v23 = v12;
  selfCopy = self;
  v13 = (then)[2](then, v22);
  catch = [v13 catch];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000641F8;
  v18[3] = &unk_1001A5140;
  selfCopy2 = self;
  v21 = type;
  v19 = v12;
  v15 = catch[2];
  v16 = v12;
  v17 = v15(catch, v18);
}

- (void)eventRelay:(id)relay didRelayRequestEvent:(id)event
{
  eventCopy = event;
  primitiveOSTransactionProvider = [(STReactor *)self primitiveOSTransactionProvider];
  v7 = [primitiveOSTransactionProvider transactionWithDescription:"com.apple.ScreenTimeAgent.handle-relayed-ask-event"];

  v8 = +[STLog reactor];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [eventCopy identifier];
    *buf = 138543362;
    v25 = identifier;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Event relay did relay ask for time request event: %{public}@", buf, 0xCu);
  }

  v10 = +[STPromise doOn];
  reactorQueue = [(STReactor *)self reactorQueue];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100064584;
  v21[3] = &unk_1001A4F20;
  v22 = eventCopy;
  selfCopy = self;
  v12 = v10[2];
  v13 = eventCopy;
  v14 = v12(v10, reactorQueue, v21);
  catch = [v14 catch];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100064600;
  v19[3] = &unk_1001A4048;
  v20 = v7;
  v16 = catch[2];
  v17 = v7;
  v18 = v16(catch, v19);
}

- (void)eventRelay:(id)relay didRelayResponseEvent:(id)event
{
  eventCopy = event;
  primitiveOSTransactionProvider = [(STReactor *)self primitiveOSTransactionProvider];
  v7 = [primitiveOSTransactionProvider transactionWithDescription:"com.apple.ScreenTimeAgent.handle-relayed-ask-event"];

  v8 = +[STLog reactor];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [eventCopy identifier];
    *buf = 138543362;
    v25 = identifier;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Event relay did relay ask for time response event: %{public}@", buf, 0xCu);
  }

  v10 = +[STPromise doOn];
  reactorQueue = [(STReactor *)self reactorQueue];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100064898;
  v21[3] = &unk_1001A4F20;
  v22 = eventCopy;
  selfCopy = self;
  v12 = v10[2];
  v13 = eventCopy;
  v14 = v12(v10, reactorQueue, v21);
  catch = [v14 catch];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100064914;
  v19[3] = &unk_1001A4048;
  v20 = v7;
  v16 = catch[2];
  v17 = v7;
  v18 = v16(catch, v19);
}

- (void)respondToAskForTimeRequestWithIdentifier:(id)identifier answer:(int64_t)answer completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  v10 = +[STLog reactor];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543362;
    v13 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Responding to ask for time request: %{public}@", &v12, 0xCu);
  }

  askForTimeResponseHandler = [(STReactor *)self askForTimeResponseHandler];
  [askForTimeResponseHandler handleAnswer:answer forRequestWithIdentifier:identifierCopy];

  handlerCopy[2](handlerCopy, 0);
}

- (void)isCapabilityEnabledForUser:(id)user capability:(id)capability completionHandler:(id)handler
{
  handlerCopy = handler;
  capabilityCopy = capability;
  userCopy = user;
  _messageTransport = [(STReactor *)self _messageTransport];
  [_messageTransport _isCapabilityEnabledForUser:userCopy capability:capabilityCopy completionHandler:handlerCopy];
}

- (void)isDowntimeEnabledForUserID:(id)d completionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  v8 = +[STLog reactor];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = dCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Current downtime state requested for user: %{public}@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v19 = 0x2020000000;
  v20 = 0;
  configurationStore = [(STReactor *)self configurationStore];
  v10 = [configurationStore readDowntimeConfigurationForUserID:dCopy];

  v11 = [v10 mapError:&stru_1001A5160];

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100064DC8;
  v15[3] = &unk_1001A5188;
  p_buf = &buf;
  v16 = handlerCopy;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100064EA0;
  v13[3] = &unk_1001A3978;
  v12 = v16;
  v14 = v12;
  [v11 evaluateWithSuccess:v15 failure:v13];

  _Block_object_dispose(&buf, 8);
}

- (void)toggleOnDemandDowntimeForUserID:(id)d completionHandler:(id)handler
{
  handlerCopy = handler;
  dCopy = d;
  v8 = +[STLog reactor];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Attempt to toggle on demand downtime for user ID", buf, 2u);
  }

  configurationStore = [(STReactor *)self configurationStore];
  v10 = [configurationStore toggleOnDemandDowntimeConfigurationForUserID:dCopy];

  v11 = [v10 mapError:&stru_1001A51A8];

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000650EC;
  v15[3] = &unk_1001A51D0;
  v16 = handlerCopy;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100065174;
  v13[3] = &unk_1001A3978;
  v14 = v16;
  v12 = v16;
  [v11 evaluateWithSuccess:v15 failure:v13];
}

- (void)currentCommunicationConfigurationWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = +[STLog reactor];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Current communication configuration requested", buf, 2u);
  }

  configurationStore = [(STReactor *)self configurationStore];
  readCommunicationConfigurationForLocalUser = [configurationStore readCommunicationConfigurationForLocalUser];

  v8 = [readCommunicationConfigurationForLocalUser mapError:&stru_1001A51F0];

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100065434;
  v12[3] = &unk_1001A5218;
  v13 = handlerCopy;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000654D8;
  v10[3] = &unk_1001A3978;
  v11 = v13;
  v9 = v13;
  [v8 evaluateWithSuccess:v12 failure:v10];
}

- (void)authenticatePasscodeForUserWithEndpoint:(id)endpoint completionHandler:(id)handler
{
  handlerCopy = handler;
  endpointCopy = endpoint;
  v8 = +[STLog reactor];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Passcode authentication requested", v11, 2u);
  }

  xpcServiceProvider = [(STReactor *)self xpcServiceProvider];
  v10 = [xpcServiceProvider providePasscodeAuthenticationServiceWithClientListenerEndpoint:endpointCopy];

  [v10 activate];
  handlerCopy[2](handlerCopy);
}

- (void)currentConfigurationForUser:(id)user completionHandler:(id)handler
{
  userCopy = user;
  handlerCopy = handler;
  v8 = +[STLog reactor];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v24 = userCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Current setup configuration requested for user: %{public}@", buf, 0xCu);
  }

  configurationStore = [(STReactor *)self configurationStore];
  familyInformationProvider = [(STReactor *)self familyInformationProvider];
  v11 = [configurationStore readSetupConfigurationForUserID:userCopy familyProvider:familyInformationProvider];

  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100065820;
  v21[3] = &unk_1001A3838;
  v12 = userCopy;
  v22 = v12;
  v13 = [v11 mapError:v21];

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100065954;
  v18[3] = &unk_1001A5240;
  v19 = v12;
  v20 = handlerCopy;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100065A34;
  v16[3] = &unk_1001A3978;
  v17 = v20;
  v14 = v20;
  v15 = v12;
  [v13 evaluateWithSuccess:v18 failure:v16];
}

- (void)applyUpdatedConfiguration:(id)configuration completionHandler:(id)handler
{
  configurationCopy = configuration;
  handlerCopy = handler;
  v8 = +[STLog reactor];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v18 = configurationCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Apply configuration requested: %{public}@", buf, 0xCu);
  }

  configurationStore = [(STReactor *)self configurationStore];
  v10 = [configurationStore writeSetupConfiguration:configurationCopy];

  v11 = [v10 mapError:&stru_1001A5260];

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100065D2C;
  v15[3] = &unk_1001A51D0;
  v16 = handlerCopy;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100065DB4;
  v13[3] = &unk_1001A3978;
  v14 = v16;
  v12 = v16;
  [v11 evaluateWithSuccess:v15 failure:v13];
}

- (void)promptForPasscodeFromUserWithEndpoint:(id)endpoint completionHandler:(id)handler
{
  handlerCopy = handler;
  endpointCopy = endpoint;
  v8 = +[STLog reactor];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Prompting user for passcode", v11, 2u);
  }

  xpcServiceProvider = [(STReactor *)self xpcServiceProvider];
  v10 = [xpcServiceProvider providePasscodePromptServiceWithClientListenerEndpoint:endpointCopy];

  [v10 activate];
  handlerCopy[2](handlerCopy);
}

- (void)shutdownReactorWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = +[STLog reactor];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[TOOL] Reactor shutdown requested", v6, 2u);
  }

  completionCopy[2](completionCopy);
  [(STReactor *)self shutdown];
}

- (void)scheduleMessageRetryActivity:(id)activity
{
  activityCopy = activity;
  v5 = +[STLog reactor];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[TOOL] Schedule message retry requested", v6, 2u);
  }

  [(STReactor *)self _scheduleMessageRetryBackgroundActivity];
  activityCopy[2](activityCopy);
}

- (void)scheduleStoreCleanupActivity:(id)activity
{
  activityCopy = activity;
  v5 = +[STLog reactor];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[TOOL] Schedule store cleanup requested", v6, 2u);
  }

  [(STReactor *)self _scheduleStoreCleanupBackgroundActivity];
  activityCopy[2](activityCopy);
}

- (void)scheduleFailStuckMessagesActivity:(id)activity
{
  activityCopy = activity;
  v5 = +[STLog reactor];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[TOOL] Schedule fail stuck messages requested", v6, 2u);
  }

  [(STReactor *)self _scheduleFailStuckMessagesBackgroundActivity];
  activityCopy[2](activityCopy);
}

- (void)currentMessageTransportReachabilityMap:(id)map
{
  mapCopy = map;
  v5 = +[STLog reactor];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[TOOL] Getting current message transport reachability map", v8, 2u);
  }

  _messageTransport = [(STReactor *)self _messageTransport];
  destinationReachabilityMap = [_messageTransport destinationReachabilityMap];
  mapCopy[2](mapCopy, destinationReachabilityMap);
}

@end