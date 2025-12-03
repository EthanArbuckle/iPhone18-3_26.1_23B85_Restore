@interface SPBeaconManager
- (SPBeaconManager)init;
- (SPBeaconManagerXPCProtocol)proxy;
- (id)beaconingKeyChangedBlockWithCompletion;
- (id)remoteInterface;
- (id)stateChangedBlockWithCompletion;
- (id)statusChangedBlockWithCompletion;
- (void)allBeaconingKeysForUUID:(id)d dateInterval:(id)interval forceGenerate:(BOOL)generate completion:(id)completion;
- (void)allBeaconsOfType:(id)type completion:(id)completion;
- (void)allBeaconsOfTypes:(id)types completion:(id)completion;
- (void)allBeaconsOfTypes:(id)types includeDupes:(BOOL)dupes includeHidden:(BOOL)hidden completion:(id)completion;
- (void)allBeaconsWithCompletion:(id)completion;
- (void)allDuriansWithCompletion:(id)completion;
- (void)beaconForUUID:(id)d completion:(id)completion;
- (void)beaconingKeysForUUID:(id)d dateInterval:(id)interval completion:(id)completion;
- (void)connectedToBeacon:(id)beacon withIndex:(unint64_t)index completion:(id)completion;
- (void)connectionTokensForBeaconUUID:(id)d completion:(id)completion;
- (void)connectionTokensForBeaconUUID:(id)d criteria:(id)criteria completion:(id)completion;
- (void)connectionTokensForBeaconUUID:(id)d dateInterval:(id)interval completion:(id)completion;
- (void)createDuplicateBeaconsForBeacon:(id)beacon skipGroupIdentifier:(BOOL)identifier count:(int64_t)count completion:(id)completion;
- (void)createKeyReconcilerWithCompletion:(id)completion;
- (void)createOwnedDeviceKeyRecordForUUID:(id)d completion:(id)completion;
- (void)dealloc;
- (void)fetchFirmwareVersionForBeacon:(id)beacon completion:(id)completion;
- (void)fetchUserStatsForBeacon:(id)beacon completion:(id)completion;
- (void)invalidate;
- (void)isLPEMModeSupported:(id)supported;
- (void)keySyncMetadataWithcompletion:(id)withcompletion;
- (void)notificationBeaconForSubscriptionId:(id)id completion:(id)completion;
- (void)ownedDeviceKeyRecordsForUUID:(id)d completion:(id)completion;
- (void)postedLocalNotifyWhenFoundNotificationForUUID:(id)d completion:(id)completion;
- (void)purgeOwnedDeviceKeyRecordsForUUID:(id)d completion:(id)completion;
- (void)removeDuplicateBeaconsWithCompletion:(id)completion;
- (void)repairDataStore:(id)store;
- (void)roleCategoriesWithCompletion:(id)completion;
- (void)setAlignmentUncertainty:(double)uncertainty atIndex:(unint64_t)index date:(id)date forBeacon:(id)beacon completion:(id)completion;
- (void)setBeaconingKeyChangedBlockWithCompletion:(id)completion;
- (void)setCurrentWildKeyIndex:(int64_t)index forBeacon:(id)beacon completion:(id)completion;
- (void)setKeyRollInterval:(unint64_t)interval forBeacon:(id)beacon completion:(id)completion;
- (void)setRole:(int64_t)role forBeacon:(id)beacon completion:(id)completion;
- (void)setStateChangedBlockWithCompletion:(id)completion;
- (void)setStatusChangedBlockWithCompletion:(id)completion;
- (void)setSuppressLPEMBeaconing:(BOOL)beaconing completion:(id)completion;
- (void)setUserHasAcknowledgedFindMy:(BOOL)my completion:(id)completion;
- (void)setWildKeyBase:(unint64_t)base interval:(unint64_t)interval fallback:(unint64_t)fallback forBeacon:(id)beacon completion:(id)completion;
- (void)start;
- (void)startUpdatingSimpleBeaconsWithContext:(id)context collectionDifference:(id)difference completion:(id)completion;
- (void)stopUpdatingSimpleBeaconsWithCompletion:(id)completion;
- (void)submitDeviceEvent:(id)event source:(unsigned int)source attachedTo:(id)to completion:(id)completion;
- (void)unacceptedBeaconsWithCompletion:(id)completion;
- (void)updateBeacon:(id)beacon updates:(id)updates completion:(id)completion;
- (void)updateObfuscatedIdentifierWithCompletion:(id)completion;
- (void)userHasAcknowledgeFindMyWithCompletion:(id)completion;
@end

@implementation SPBeaconManager

- (SPBeaconManager)init
{
  v21 = *MEMORY[0x277D85DE8];
  v18.receiver = self;
  v18.super_class = SPBeaconManager;
  v2 = [(SPBeaconManager *)&v18 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("SPBeaconManager", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    if (!os_variant_has_internal_content())
    {
      goto LABEL_4;
    }

    processInfo = [MEMORY[0x277CCAC38] processInfo];
    environment = [processInfo environment];
    v8 = [environment objectForKeyedSubscript:@"UNDER_TEST"];

    if (!v8)
    {
LABEL_4:
      v9 = objc_alloc_init(SPLocalBeaconManager);
      localBeaconingManager = v2->_localBeaconingManager;
      v2->_localBeaconingManager = v9;

      v11 = objc_alloc(MEMORY[0x277D07BA0]);
      remoteInterface = [(SPBeaconManager *)v2 remoteInterface];
      v13 = [v11 initWithMachServiceName:@"com.apple.icloud.searchpartyd.beaconmanager" options:0 remoteObjectInterface:remoteInterface interruptionHandler:0 invalidationHandler:0];
      serviceDescription = v2->_serviceDescription;
      v2->_serviceDescription = v13;

      v15 = LogCategory_BeaconManager();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v20 = v2;
        _os_log_impl(&dword_2643D0000, v15, OS_LOG_TYPE_DEFAULT, "SPBeaconManager: Created %{public}@", buf, 0xCu);
      }
    }
  }

  v16 = *MEMORY[0x277D85DE8];
  return v2;
}

- (id)remoteInterface
{
  v72[2] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_287606B50];
  v3 = MEMORY[0x277CBEB98];
  v72[0] = objc_opt_class();
  v72[1] = objc_opt_class();
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v72 count:2];
  v5 = [v3 setWithArray:v4];
  [v2 setClasses:v5 forSelector:sel_allBeaconsWithCompletion_ argumentIndex:0 ofReply:1];

  v6 = MEMORY[0x277CBEB98];
  v71[0] = objc_opt_class();
  v71[1] = objc_opt_class();
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v71 count:2];
  v8 = [v6 setWithArray:v7];
  [v2 setClasses:v8 forSelector:sel_allBeaconsOfTypes_includeDupes_includeHidden_completion_ argumentIndex:0 ofReply:1];

  v9 = MEMORY[0x277CBEB98];
  v70[0] = objc_opt_class();
  v70[1] = objc_opt_class();
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v70 count:2];
  v11 = [v9 setWithArray:v10];
  [v2 setClasses:v11 forSelector:sel_unacceptedBeaconsWithCompletion_ argumentIndex:0 ofReply:1];

  v12 = MEMORY[0x277CBEB98];
  v69[0] = objc_opt_class();
  v69[1] = objc_opt_class();
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v69 count:2];
  v14 = [v12 setWithArray:v13];
  [v2 setClasses:v14 forSelector:sel_beaconingKeysForUUID_dateInterval_completion_ argumentIndex:0 ofReply:1];

  v15 = MEMORY[0x277CBEB98];
  v68[0] = objc_opt_class();
  v68[1] = objc_opt_class();
  v68[2] = objc_opt_class();
  v68[3] = objc_opt_class();
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v68 count:4];
  v17 = [v15 setWithArray:v16];
  [v2 setClasses:v17 forSelector:sel_commandKeysForUUIDs_dateInterval_completion_ argumentIndex:0 ofReply:1];

  v18 = MEMORY[0x277CBEB98];
  v67[0] = objc_opt_class();
  v67[1] = objc_opt_class();
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v67 count:2];
  v20 = [v18 setWithArray:v19];
  [v2 setClasses:v20 forSelector:sel_allDuriansWithCompletion_ argumentIndex:0 ofReply:1];

  v21 = MEMORY[0x277CBEB98];
  v66[0] = objc_opt_class();
  v66[1] = objc_opt_class();
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v66 count:2];
  v23 = [v21 setWithArray:v22];
  [v2 setClasses:v23 forSelector:sel_nearOwnerCommandKeysWithCompletion_ argumentIndex:0 ofReply:1];

  v24 = MEMORY[0x277CBEB98];
  v65[0] = objc_opt_class();
  v65[1] = objc_opt_class();
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v65 count:2];
  v26 = [v24 setWithArray:v25];
  [v2 setClasses:v26 forSelector:sel_roleCategoriesWithCompletion_ argumentIndex:0 ofReply:1];

  v27 = MEMORY[0x277CBEB98];
  v64[0] = objc_opt_class();
  v64[1] = objc_opt_class();
  v64[2] = objc_opt_class();
  v64[3] = objc_opt_class();
  v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v64 count:4];
  v29 = [v27 setWithArray:v28];
  [v2 setClasses:v29 forSelector:sel_commandKeysForUUIDs_dateInterval_completion_ argumentIndex:0 ofReply:1];

  v30 = MEMORY[0x277CBEB98];
  v63[0] = objc_opt_class();
  v63[1] = objc_opt_class();
  v63[2] = objc_opt_class();
  v63[3] = objc_opt_class();
  v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v63 count:4];
  v32 = [v30 setWithArray:v31];
  [v2 setClasses:v32 forSelector:sel_commandKeysForUUIDs_completion_ argumentIndex:0 ofReply:1];

  v33 = MEMORY[0x277CBEB98];
  v62[0] = objc_opt_class();
  v62[1] = objc_opt_class();
  v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v62 count:2];
  v35 = [v33 setWithArray:v34];
  [v2 setClasses:v35 forSelector:sel_commandKeysForUUID_withCriteria_completion_ argumentIndex:0 ofReply:1];

  v36 = MEMORY[0x277CBEB98];
  v61[0] = objc_opt_class();
  v61[1] = objc_opt_class();
  v37 = [MEMORY[0x277CBEA60] arrayWithObjects:v61 count:2];
  v38 = [v36 setWithArray:v37];
  [v2 setClasses:v38 forSelector:sel_allBeaconingKeysForUUID_dateInterval_forceGenerate_completion_ argumentIndex:0 ofReply:1];

  v39 = MEMORY[0x277CBEB98];
  v60[0] = objc_opt_class();
  v60[1] = objc_opt_class();
  v60[2] = objc_opt_class();
  v60[3] = objc_opt_class();
  v40 = [MEMORY[0x277CBEA60] arrayWithObjects:v60 count:4];
  v41 = [v39 setWithArray:v40];
  [v2 setClasses:v41 forSelector:sel_fetchAllKeyMapFileDescriptorsWithCompletion_ argumentIndex:0 ofReply:1];

  v42 = MEMORY[0x277CBEB98];
  v59 = objc_opt_class();
  v43 = [MEMORY[0x277CBEA60] arrayWithObjects:&v59 count:1];
  v44 = [v42 setWithArray:v43];
  [v2 setClasses:v44 forSelector:sel_fetchAllKeyMapFileDescriptorsWithCompletion_ argumentIndex:1 ofReply:1];

  v45 = MEMORY[0x277CBEB98];
  v58[0] = objc_opt_class();
  v58[1] = objc_opt_class();
  v46 = [MEMORY[0x277CBEA60] arrayWithObjects:v58 count:2];
  v47 = [v45 setWithArray:v46];
  [v2 setClasses:v47 forSelector:sel_ownedDeviceKeyRecordsForUUID_completion_ argumentIndex:0 ofReply:1];

  v48 = MEMORY[0x277CBEB98];
  v57[0] = objc_opt_class();
  v57[1] = objc_opt_class();
  v49 = [MEMORY[0x277CBEA60] arrayWithObjects:v57 count:2];
  v50 = [v48 setWithArray:v49];
  [v2 setClasses:v50 forSelector:sel_purgeOwnedDeviceKeyRecordsForUUID_completion_ argumentIndex:0 ofReply:1];

  v51 = MEMORY[0x277CBEB98];
  v56[0] = objc_opt_class();
  v56[1] = objc_opt_class();
  v52 = [MEMORY[0x277CBEA60] arrayWithObjects:v56 count:2];
  v53 = [v51 setWithArray:v52];
  [v2 setClasses:v53 forSelector:sel_createOwnedDeviceKeyRecordForUUID_completion_ argumentIndex:0 ofReply:1];

  v54 = *MEMORY[0x277D85DE8];

  return v2;
}

- (id)stateChangedBlockWithCompletion
{
  localBeaconingManager = [(SPBeaconManager *)self localBeaconingManager];
  stateChangedBlockWithCompletion = [localBeaconingManager stateChangedBlockWithCompletion];

  return stateChangedBlockWithCompletion;
}

- (void)setStateChangedBlockWithCompletion:(id)completion
{
  completionCopy = completion;
  localBeaconingManager = [(SPBeaconManager *)self localBeaconingManager];
  [localBeaconingManager setStateChangedBlockWithCompletion:completionCopy];
}

- (id)statusChangedBlockWithCompletion
{
  localBeaconingManager = [(SPBeaconManager *)self localBeaconingManager];
  statusChangedBlockWithCompletion = [localBeaconingManager statusChangedBlockWithCompletion];

  return statusChangedBlockWithCompletion;
}

- (void)setStatusChangedBlockWithCompletion:(id)completion
{
  completionCopy = completion;
  localBeaconingManager = [(SPBeaconManager *)self localBeaconingManager];
  [localBeaconingManager setStatusChangedBlockWithCompletion:completionCopy];
}

- (id)beaconingKeyChangedBlockWithCompletion
{
  localBeaconingManager = [(SPBeaconManager *)self localBeaconingManager];
  beaconingKeyChangedBlockWithCompletion = [localBeaconingManager beaconingKeyChangedBlockWithCompletion];

  return beaconingKeyChangedBlockWithCompletion;
}

- (void)setBeaconingKeyChangedBlockWithCompletion:(id)completion
{
  completionCopy = completion;
  localBeaconingManager = [(SPBeaconManager *)self localBeaconingManager];
  [localBeaconingManager setBeaconingKeyChangedBlockWithCompletion:completionCopy];
}

- (void)dealloc
{
  v9 = *MEMORY[0x277D85DE8];
  [(SPBeaconManager *)self invalidate];
  localBeaconingManager = self->_localBeaconingManager;
  self->_localBeaconingManager = 0;

  v4 = LogCategory_BeaconManager();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_2643D0000, v4, OS_LOG_TYPE_DEFAULT, "SPBeaconManager: Dealloc %{public}@", buf, 0xCu);
  }

  v6.receiver = self;
  v6.super_class = SPBeaconManager;
  [(SPBeaconManager *)&v6 dealloc];
  v5 = *MEMORY[0x277D85DE8];
}

- (SPBeaconManagerXPCProtocol)proxy
{
  v18 = *MEMORY[0x277D85DE8];
  queue = [(SPBeaconManager *)self queue];
  dispatch_assert_queue_V2(queue);

  session = [(SPBeaconManager *)self session];

  if (!session)
  {
    v5 = objc_alloc(MEMORY[0x277D07BA8]);
    serviceDescription = [(SPBeaconManager *)self serviceDescription];
    v7 = [v5 initWithServiceDescription:serviceDescription];
    [(SPBeaconManager *)self setSession:v7];

    v8 = LogCategory_BeaconManager();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      serviceDescription2 = [(SPBeaconManager *)self serviceDescription];
      machService = [serviceDescription2 machService];
      v16 = 138412290;
      v17 = machService;
      _os_log_impl(&dword_2643D0000, v8, OS_LOG_TYPE_DEFAULT, "SPBeaconManager: Establishing XPC connection to %@", &v16, 0xCu);
    }

    session2 = [(SPBeaconManager *)self session];
    [session2 resume];
  }

  session3 = [(SPBeaconManager *)self session];
  proxy = [session3 proxy];

  v14 = *MEMORY[0x277D85DE8];

  return proxy;
}

- (void)start
{
  localBeaconingManager = [(SPBeaconManager *)self localBeaconingManager];
  [localBeaconingManager start];
}

- (void)invalidate
{
  localBeaconingManager = [(SPBeaconManager *)self localBeaconingManager];
  [localBeaconingManager invalidate];
}

- (void)updateObfuscatedIdentifierWithCompletion:(id)completion
{
  v14 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = LogCategory_BeaconManager();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v13 = "[SPBeaconManager updateObfuscatedIdentifierWithCompletion:]";
    _os_log_impl(&dword_2643D0000, v5, OS_LOG_TYPE_DEFAULT, "SPBeaconManager: API: %s", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  queue = [(SPBeaconManager *)self queue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __60__SPBeaconManager_updateObfuscatedIdentifierWithCompletion___block_invoke;
  v9[3] = &unk_279B59650;
  objc_copyWeak(&v11, buf);
  v10 = completionCopy;
  v7 = completionCopy;
  dispatch_async(queue, v9);

  objc_destroyWeak(&v11);
  objc_destroyWeak(buf);
  v8 = *MEMORY[0x277D85DE8];
}

void __60__SPBeaconManager_updateObfuscatedIdentifierWithCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained userAgentProxy];
  [v2 updateObfuscatedIdentifierWithCompletion:*(a1 + 32)];
}

- (void)beaconForUUID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = __44__SPBeaconManager_beaconForUUID_completion___block_invoke;
  activity_block[3] = &unk_279B59A48;
  selfCopy = self;
  v13 = completionCopy;
  v11 = dCopy;
  v8 = completionCopy;
  v9 = dCopy;
  _os_activity_initiate(&dword_2643D0000, "SPBeaconManager: beaconForUUID:completion:", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

void __44__SPBeaconManager_beaconForUUID_completion___block_invoke(id *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = a1[4] == 0;
  v3 = LogCategory_BeaconManager();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      __44__SPBeaconManager_beaconForUUID_completion___block_invoke_cold_1(v4);
    }

    (*(a1[6] + 2))();
  }

  else
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v12 = "[SPBeaconManager beaconForUUID:completion:]_block_invoke";
      _os_log_impl(&dword_2643D0000, v4, OS_LOG_TYPE_DEFAULT, "SPBeaconManager: SPI: %s", buf, 0xCu);
    }

    objc_initWeak(buf, a1[5]);
    v5 = [a1[5] queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __44__SPBeaconManager_beaconForUUID_completion___block_invoke_220;
    block[3] = &unk_279B58BA8;
    objc_copyWeak(&v10, buf);
    v8 = a1[4];
    v9 = a1[6];
    dispatch_async(v5, block);

    objc_destroyWeak(&v10);
    objc_destroyWeak(buf);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __44__SPBeaconManager_beaconForUUID_completion___block_invoke_220(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained userAgentProxy];
  [v2 beaconForUUID:*(a1 + 32) completion:*(a1 + 40)];
}

- (void)ownedDeviceKeyRecordsForUUID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = __59__SPBeaconManager_ownedDeviceKeyRecordsForUUID_completion___block_invoke;
  activity_block[3] = &unk_279B58BD0;
  activity_block[4] = self;
  v11 = dCopy;
  v12 = completionCopy;
  v8 = completionCopy;
  v9 = dCopy;
  _os_activity_initiate(&dword_2643D0000, "SPBeaconManager: ownedDeviceKeyRecordsForUUID:completion:", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

void __59__SPBeaconManager_ownedDeviceKeyRecordsForUUID_completion___block_invoke(id *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = LogCategory_BeaconManager();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v10 = "[SPBeaconManager ownedDeviceKeyRecordsForUUID:completion:]_block_invoke";
    _os_log_impl(&dword_2643D0000, v2, OS_LOG_TYPE_DEFAULT, "SPBeaconManager: SPI: %s", buf, 0xCu);
  }

  objc_initWeak(buf, a1[4]);
  v3 = [a1[4] queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__SPBeaconManager_ownedDeviceKeyRecordsForUUID_completion___block_invoke_221;
  block[3] = &unk_279B58BA8;
  objc_copyWeak(&v8, buf);
  v6 = a1[5];
  v7 = a1[6];
  dispatch_async(v3, block);

  objc_destroyWeak(&v8);
  objc_destroyWeak(buf);
  v4 = *MEMORY[0x277D85DE8];
}

void __59__SPBeaconManager_ownedDeviceKeyRecordsForUUID_completion___block_invoke_221(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained userAgentProxy];
  [v2 ownedDeviceKeyRecordsForUUID:*(a1 + 32) completion:*(a1 + 40)];
}

- (void)purgeOwnedDeviceKeyRecordsForUUID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = __64__SPBeaconManager_purgeOwnedDeviceKeyRecordsForUUID_completion___block_invoke;
  activity_block[3] = &unk_279B58BD0;
  activity_block[4] = self;
  v11 = dCopy;
  v12 = completionCopy;
  v8 = completionCopy;
  v9 = dCopy;
  _os_activity_initiate(&dword_2643D0000, "SPBeaconManager: purgeOwnedDeviceKeyRecordsForUUID:completion:", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

void __64__SPBeaconManager_purgeOwnedDeviceKeyRecordsForUUID_completion___block_invoke(id *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = LogCategory_BeaconManager();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v10 = "[SPBeaconManager purgeOwnedDeviceKeyRecordsForUUID:completion:]_block_invoke";
    _os_log_impl(&dword_2643D0000, v2, OS_LOG_TYPE_DEFAULT, "SPBeaconManager: SPI: %s", buf, 0xCu);
  }

  objc_initWeak(buf, a1[4]);
  v3 = [a1[4] queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__SPBeaconManager_purgeOwnedDeviceKeyRecordsForUUID_completion___block_invoke_222;
  block[3] = &unk_279B58BA8;
  objc_copyWeak(&v8, buf);
  v6 = a1[5];
  v7 = a1[6];
  dispatch_async(v3, block);

  objc_destroyWeak(&v8);
  objc_destroyWeak(buf);
  v4 = *MEMORY[0x277D85DE8];
}

void __64__SPBeaconManager_purgeOwnedDeviceKeyRecordsForUUID_completion___block_invoke_222(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained userAgentProxy];
  [v2 purgeOwnedDeviceKeyRecordsForUUID:*(a1 + 32) completion:*(a1 + 40)];
}

- (void)createOwnedDeviceKeyRecordForUUID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = __64__SPBeaconManager_createOwnedDeviceKeyRecordForUUID_completion___block_invoke;
  activity_block[3] = &unk_279B58BD0;
  activity_block[4] = self;
  v11 = dCopy;
  v12 = completionCopy;
  v8 = completionCopy;
  v9 = dCopy;
  _os_activity_initiate(&dword_2643D0000, "SPBeaconManager: createOwnedDeviceKeyRecordForUUID:completion:", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

void __64__SPBeaconManager_createOwnedDeviceKeyRecordForUUID_completion___block_invoke(id *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = LogCategory_BeaconManager();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v10 = "[SPBeaconManager createOwnedDeviceKeyRecordForUUID:completion:]_block_invoke";
    _os_log_impl(&dword_2643D0000, v2, OS_LOG_TYPE_DEFAULT, "SPBeaconManager: SPI: %s", buf, 0xCu);
  }

  objc_initWeak(buf, a1[4]);
  v3 = [a1[4] queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__SPBeaconManager_createOwnedDeviceKeyRecordForUUID_completion___block_invoke_223;
  block[3] = &unk_279B58BA8;
  objc_copyWeak(&v8, buf);
  v6 = a1[5];
  v7 = a1[6];
  dispatch_async(v3, block);

  objc_destroyWeak(&v8);
  objc_destroyWeak(buf);
  v4 = *MEMORY[0x277D85DE8];
}

void __64__SPBeaconManager_createOwnedDeviceKeyRecordForUUID_completion___block_invoke_223(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained userAgentProxy];
  [v2 createOwnedDeviceKeyRecordForUUID:*(a1 + 32) completion:*(a1 + 40)];
}

- (void)notificationBeaconForSubscriptionId:(id)id completion:(id)completion
{
  idCopy = id;
  completionCopy = completion;
  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = __66__SPBeaconManager_notificationBeaconForSubscriptionId_completion___block_invoke;
  activity_block[3] = &unk_279B58BD0;
  activity_block[4] = self;
  v11 = idCopy;
  v12 = completionCopy;
  v8 = completionCopy;
  v9 = idCopy;
  _os_activity_initiate(&dword_2643D0000, "SPBeaconManager: notificationBeaconForSubscriptionId:completion:", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

void __66__SPBeaconManager_notificationBeaconForSubscriptionId_completion___block_invoke(id *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = LogCategory_BeaconManager();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v10 = "[SPBeaconManager notificationBeaconForSubscriptionId:completion:]_block_invoke";
    _os_log_impl(&dword_2643D0000, v2, OS_LOG_TYPE_DEFAULT, "SPBeaconManager: SPI: %s", buf, 0xCu);
  }

  objc_initWeak(buf, a1[4]);
  v3 = [a1[4] queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__SPBeaconManager_notificationBeaconForSubscriptionId_completion___block_invoke_224;
  block[3] = &unk_279B58BA8;
  objc_copyWeak(&v8, buf);
  v6 = a1[5];
  v7 = a1[6];
  dispatch_async(v3, block);

  objc_destroyWeak(&v8);
  objc_destroyWeak(buf);
  v4 = *MEMORY[0x277D85DE8];
}

void __66__SPBeaconManager_notificationBeaconForSubscriptionId_completion___block_invoke_224(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained userAgentProxy];
  [v2 notificationBeaconForSubscriptionId:*(a1 + 32) completion:*(a1 + 40)];
}

- (void)allBeaconsWithCompletion:(id)completion
{
  completionCopy = completion;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __44__SPBeaconManager_allBeaconsWithCompletion___block_invoke;
  v6[3] = &unk_279B58B80;
  v6[4] = self;
  v7 = completionCopy;
  v5 = completionCopy;
  _os_activity_initiate(&dword_2643D0000, "SPBeaconManager: allBeaconsWithCompletion:", OS_ACTIVITY_FLAG_DEFAULT, v6);
}

void __44__SPBeaconManager_allBeaconsWithCompletion___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = LogCategory_BeaconManager();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v9 = "[SPBeaconManager allBeaconsWithCompletion:]_block_invoke";
    _os_log_impl(&dword_2643D0000, v2, OS_LOG_TYPE_DEFAULT, "SPBeaconManager: SPI: %s", buf, 0xCu);
  }

  objc_initWeak(buf, *(a1 + 32));
  v3 = [*(a1 + 32) queue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __44__SPBeaconManager_allBeaconsWithCompletion___block_invoke_225;
  v5[3] = &unk_279B59650;
  objc_copyWeak(&v7, buf);
  v6 = *(a1 + 40);
  dispatch_async(v3, v5);

  objc_destroyWeak(&v7);
  objc_destroyWeak(buf);
  v4 = *MEMORY[0x277D85DE8];
}

void __44__SPBeaconManager_allBeaconsWithCompletion___block_invoke_225(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained userAgentProxy];
  [v2 allBeaconsWithCompletion:*(a1 + 32)];
}

- (void)allBeaconsOfTypes:(id)types completion:(id)completion
{
  typesCopy = types;
  completionCopy = completion;
  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = __48__SPBeaconManager_allBeaconsOfTypes_completion___block_invoke;
  activity_block[3] = &unk_279B58BD0;
  activity_block[4] = self;
  v11 = typesCopy;
  v12 = completionCopy;
  v8 = completionCopy;
  v9 = typesCopy;
  _os_activity_initiate(&dword_2643D0000, "SPBeaconManager: allBeaconsOfTypes:completion:", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

void __48__SPBeaconManager_allBeaconsOfTypes_completion___block_invoke(id *a1)
{
  v2 = LogCategory_BeaconManager();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_2643D0000, v2, OS_LOG_TYPE_DEFAULT, "SPBeaconManager: SPI: allBeaconsOfTypes:completion:", buf, 2u);
  }

  objc_initWeak(buf, a1[4]);
  v3 = [a1[4] queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__SPBeaconManager_allBeaconsOfTypes_completion___block_invoke_226;
  block[3] = &unk_279B59718;
  v5 = a1[5];
  objc_copyWeak(&v7, buf);
  v6 = a1[6];
  dispatch_async(v3, block);

  objc_destroyWeak(&v7);
  objc_destroyWeak(buf);
}

void __48__SPBeaconManager_allBeaconsOfTypes_completion___block_invoke_226(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = LogCategory_BeaconManager();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138543362;
    v11 = v3;
    _os_log_impl(&dword_2643D0000, v2, OS_LOG_TYPE_DEFAULT, "SPBeaconManager: allBeaconsOfTypes: %{public}@", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = [WeakRetained userAgentProxy];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __48__SPBeaconManager_allBeaconsOfTypes_completion___block_invoke_227;
  v8[3] = &unk_279B59348;
  v6 = *(a1 + 32);
  v9 = *(a1 + 40);
  [v5 allBeaconsOfTypes:v6 includeDupes:0 includeHidden:0 completion:v8];

  v7 = *MEMORY[0x277D85DE8];
}

void __48__SPBeaconManager_allBeaconsOfTypes_completion___block_invoke_227(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = LogCategory_BeaconManager();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134217984;
    v7 = [v3 count];
    _os_log_impl(&dword_2643D0000, v4, OS_LOG_TYPE_DEFAULT, "SPBeaconManager: allBeaconsOfTypes completion beacon count: %lu", &v6, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
  v5 = *MEMORY[0x277D85DE8];
}

- (void)allBeaconsOfTypes:(id)types includeDupes:(BOOL)dupes includeHidden:(BOOL)hidden completion:(id)completion
{
  typesCopy = types;
  completionCopy = completion;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __75__SPBeaconManager_allBeaconsOfTypes_includeDupes_includeHidden_completion___block_invoke;
  v14[3] = &unk_279B5A470;
  v14[4] = self;
  v15 = typesCopy;
  dupesCopy = dupes;
  hiddenCopy = hidden;
  v16 = completionCopy;
  v12 = completionCopy;
  v13 = typesCopy;
  _os_activity_initiate(&dword_2643D0000, "SPBeaconManager: allBeaconsOfTypes:includeDupes:includeHidden:completion:", OS_ACTIVITY_FLAG_DEFAULT, v14);
}

void __75__SPBeaconManager_allBeaconsOfTypes_includeDupes_includeHidden_completion___block_invoke(uint64_t a1)
{
  v2 = LogCategory_BeaconManager();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_2643D0000, v2, OS_LOG_TYPE_DEFAULT, "SPBeaconManager: SPI: allBeaconsOfTypes:includeDupes:includeHidden:completion:", buf, 2u);
  }

  objc_initWeak(buf, *(a1 + 32));
  v3 = [*(a1 + 32) queue];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __75__SPBeaconManager_allBeaconsOfTypes_includeDupes_includeHidden_completion___block_invoke_229;
  v4[3] = &unk_279B5A448;
  v5 = *(a1 + 40);
  objc_copyWeak(&v7, buf);
  v8 = *(a1 + 56);
  v6 = *(a1 + 48);
  dispatch_async(v3, v4);

  objc_destroyWeak(&v7);
  objc_destroyWeak(buf);
}

void __75__SPBeaconManager_allBeaconsOfTypes_includeDupes_includeHidden_completion___block_invoke_229(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = LogCategory_BeaconManager();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138543362;
    v13 = v3;
    _os_log_impl(&dword_2643D0000, v2, OS_LOG_TYPE_DEFAULT, "SPBeaconManager: allBeaconsOfTypes: %{public}@", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = [WeakRetained userAgentProxy];
  v6 = *(a1 + 56);
  v7 = *(a1 + 57);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __75__SPBeaconManager_allBeaconsOfTypes_includeDupes_includeHidden_completion___block_invoke_230;
  v10[3] = &unk_279B59348;
  v8 = *(a1 + 32);
  v11 = *(a1 + 40);
  [v5 allBeaconsOfTypes:v8 includeDupes:v6 includeHidden:v7 completion:v10];

  v9 = *MEMORY[0x277D85DE8];
}

void __75__SPBeaconManager_allBeaconsOfTypes_includeDupes_includeHidden_completion___block_invoke_230(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = LogCategory_BeaconManager();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134217984;
    v7 = [v3 count];
    _os_log_impl(&dword_2643D0000, v4, OS_LOG_TYPE_DEFAULT, "SPBeaconManager: allBeaconsOfTypes:includeDupes:includeHidden: completion beacon count: %lu", &v6, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
  v5 = *MEMORY[0x277D85DE8];
}

- (void)allBeaconsOfType:(id)type completion:(id)completion
{
  typeCopy = type;
  completionCopy = completion;
  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = __47__SPBeaconManager_allBeaconsOfType_completion___block_invoke;
  activity_block[3] = &unk_279B58BD0;
  activity_block[4] = self;
  v11 = typeCopy;
  v12 = completionCopy;
  v8 = completionCopy;
  v9 = typeCopy;
  _os_activity_initiate(&dword_2643D0000, "SPBeaconManager: allBeaconsOfType:completion:", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

void __47__SPBeaconManager_allBeaconsOfType_completion___block_invoke(id *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = LogCategory_BeaconManager();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v13 = "[SPBeaconManager allBeaconsOfType:completion:]_block_invoke";
    _os_log_impl(&dword_2643D0000, v2, OS_LOG_TYPE_DEFAULT, "SPBeaconManager: SPI: %s", buf, 0xCu);
  }

  objc_initWeak(buf, a1[4]);
  v3 = [MEMORY[0x277CBEB98] setWithObject:a1[5]];
  v4 = [a1[4] queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__SPBeaconManager_allBeaconsOfType_completion___block_invoke_231;
  v7[3] = &unk_279B599D0;
  v8 = a1[5];
  objc_copyWeak(&v11, buf);
  v9 = v3;
  v10 = a1[6];
  v5 = v3;
  dispatch_async(v4, v7);

  objc_destroyWeak(&v11);
  objc_destroyWeak(buf);
  v6 = *MEMORY[0x277D85DE8];
}

void __47__SPBeaconManager_allBeaconsOfType_completion___block_invoke_231(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = LogCategory_BeaconManager();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 134217984;
    v7 = v3;
    _os_log_impl(&dword_2643D0000, v2, OS_LOG_TYPE_DEFAULT, "SPBeaconManager: SPI: %lu", &v6, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained allBeaconsOfTypes:*(a1 + 40) completion:*(a1 + 48)];

  v5 = *MEMORY[0x277D85DE8];
}

- (void)startUpdatingSimpleBeaconsWithContext:(id)context collectionDifference:(id)difference completion:(id)completion
{
  v27 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  differenceCopy = difference;
  completionCopy = completion;
  v11 = LogCategory_BeaconManager();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v26 = "[SPBeaconManager startUpdatingSimpleBeaconsWithContext:collectionDifference:completion:]";
    _os_log_impl(&dword_2643D0000, v11, OS_LOG_TYPE_DEFAULT, "SPBeaconManager: SPI: %{public}s", buf, 0xCu);
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __89__SPBeaconManager_startUpdatingSimpleBeaconsWithContext_collectionDifference_completion___block_invoke;
  aBlock[3] = &unk_279B58E30;
  aBlock[4] = self;
  v22 = contextCopy;
  v23 = differenceCopy;
  v24 = completionCopy;
  v12 = completionCopy;
  v13 = contextCopy;
  v14 = differenceCopy;
  v15 = _Block_copy(aBlock);
  queue = [(SPBeaconManager *)self queue];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __89__SPBeaconManager_startUpdatingSimpleBeaconsWithContext_collectionDifference_completion___block_invoke_4;
  v19[3] = &unk_279B58B80;
  v19[4] = self;
  v20 = v15;
  v17 = v15;
  dispatch_async(queue, v19);

  v18 = *MEMORY[0x277D85DE8];
}

void __89__SPBeaconManager_startUpdatingSimpleBeaconsWithContext_collectionDifference_completion___block_invoke(uint64_t a1)
{
  v2 = objc_opt_new();
  [*(a1 + 32) setSimpleBeaconUpdateInterface:v2];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __89__SPBeaconManager_startUpdatingSimpleBeaconsWithContext_collectionDifference_completion___block_invoke_2;
  v4[3] = &unk_279B58E78;
  v5 = *(a1 + 48);
  [v2 setSimpleBeaconDifferenceBlock:v4];
  v3 = [*(a1 + 32) simpleBeaconUpdateInterface];
  [v3 startUpdatingSimpleBeaconsWithContext:*(a1 + 40) completion:*(a1 + 56)];
}

void __89__SPBeaconManager_startUpdatingSimpleBeaconsWithContext_collectionDifference_completion___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v11 = v5;
  if (a3)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v6 = [v5 insertions];
    v7 = [v11 removals];
    v8 = [v6 arrayByAddingObjectsFromArray:v7];
    v9 = [v8 fm_map:&__block_literal_global_235];

    v10 = [objc_alloc(MEMORY[0x277CCABF0]) initWithChanges:v9];
    (*(*(a1 + 32) + 16))();
  }
}

id __89__SPBeaconManager_startUpdatingSimpleBeaconsWithContext_collectionDifference_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SPSimpleBeacon alloc];
  v4 = [v2 object];
  v5 = [(SPSimpleBeacon *)v3 initWithInternalSimpleBeacon:v4];

  v6 = objc_alloc(MEMORY[0x277CCABE8]);
  v7 = [v2 changeType];
  v8 = [v2 index];

  v9 = [v6 initWithObject:v5 type:v7 index:v8];

  return v9;
}

void __89__SPBeaconManager_startUpdatingSimpleBeaconsWithContext_collectionDifference_completion___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) simpleBeaconUpdateInterface];

  if (v2)
  {
    v3 = *(a1 + 32);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __89__SPBeaconManager_startUpdatingSimpleBeaconsWithContext_collectionDifference_completion___block_invoke_5;
    v5[3] = &unk_279B597A0;
    v5[4] = v3;
    v6 = *(a1 + 40);
    [v3 stopUpdatingSimpleBeaconsWithCompletion:v5];
  }

  else
  {
    v4 = *(*(a1 + 40) + 16);

    v4();
  }
}

void __89__SPBeaconManager_startUpdatingSimpleBeaconsWithContext_collectionDifference_completion___block_invoke_5(uint64_t a1)
{
  v2 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __89__SPBeaconManager_startUpdatingSimpleBeaconsWithContext_collectionDifference_completion___block_invoke_6;
  block[3] = &unk_279B58EF8;
  v4 = *(a1 + 40);
  dispatch_async(v2, block);
}

- (void)stopUpdatingSimpleBeaconsWithCompletion:(id)completion
{
  v13 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = LogCategory_BeaconManager();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v12 = "[SPBeaconManager stopUpdatingSimpleBeaconsWithCompletion:]";
    _os_log_impl(&dword_2643D0000, v5, OS_LOG_TYPE_DEFAULT, "SPBeaconManager: SPI: %{public}s", buf, 0xCu);
  }

  queue = [(SPBeaconManager *)self queue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __59__SPBeaconManager_stopUpdatingSimpleBeaconsWithCompletion___block_invoke;
  v9[3] = &unk_279B58B80;
  v9[4] = self;
  v10 = completionCopy;
  v7 = completionCopy;
  dispatch_async(queue, v9);

  v8 = *MEMORY[0x277D85DE8];
}

void __59__SPBeaconManager_stopUpdatingSimpleBeaconsWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) simpleBeaconUpdateInterface];
  if (v2)
  {
    [*(a1 + 32) setSimpleBeaconUpdateInterface:0];
    [v2 stopUpdatingSimpleBeaconsWithCompletion:*(a1 + 40)];
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

- (void)unacceptedBeaconsWithCompletion:(id)completion
{
  completionCopy = completion;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __51__SPBeaconManager_unacceptedBeaconsWithCompletion___block_invoke;
  v6[3] = &unk_279B58B80;
  v6[4] = self;
  v7 = completionCopy;
  v5 = completionCopy;
  _os_activity_initiate(&dword_2643D0000, "SPBeaconManager: unacceptedBeaconsWithCompletion:", OS_ACTIVITY_FLAG_DEFAULT, v6);
}

void __51__SPBeaconManager_unacceptedBeaconsWithCompletion___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = LogCategory_BeaconManager();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v9 = "[SPBeaconManager unacceptedBeaconsWithCompletion:]_block_invoke";
    _os_log_impl(&dword_2643D0000, v2, OS_LOG_TYPE_DEFAULT, "SPBeaconManager: SPI: %s", buf, 0xCu);
  }

  objc_initWeak(buf, *(a1 + 32));
  v3 = [*(a1 + 32) queue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __51__SPBeaconManager_unacceptedBeaconsWithCompletion___block_invoke_241;
  v5[3] = &unk_279B59650;
  objc_copyWeak(&v7, buf);
  v6 = *(a1 + 40);
  dispatch_async(v3, v5);

  objc_destroyWeak(&v7);
  objc_destroyWeak(buf);
  v4 = *MEMORY[0x277D85DE8];
}

void __51__SPBeaconManager_unacceptedBeaconsWithCompletion___block_invoke_241(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained userAgentProxy];
  [v2 unacceptedBeaconsWithCompletion:*(a1 + 32)];
}

- (void)beaconingKeysForUUID:(id)d dateInterval:(id)interval completion:(id)completion
{
  dCopy = d;
  intervalCopy = interval;
  completionCopy = completion;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __64__SPBeaconManager_beaconingKeysForUUID_dateInterval_completion___block_invoke;
  v14[3] = &unk_279B593C0;
  v14[4] = self;
  v15 = dCopy;
  v16 = intervalCopy;
  v17 = completionCopy;
  v11 = completionCopy;
  v12 = intervalCopy;
  v13 = dCopy;
  _os_activity_initiate(&dword_2643D0000, "SPBeaconManager: beaconingKeysForUUID:dateInterval:completion:", OS_ACTIVITY_FLAG_DEFAULT, v14);
}

void __64__SPBeaconManager_beaconingKeysForUUID_dateInterval_completion___block_invoke(id *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = LogCategory_BeaconManager();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v11 = "[SPBeaconManager beaconingKeysForUUID:dateInterval:completion:]_block_invoke";
    _os_log_impl(&dword_2643D0000, v2, OS_LOG_TYPE_DEFAULT, "SPBeaconManager: SPI: %s", buf, 0xCu);
  }

  objc_initWeak(buf, a1[4]);
  v3 = [a1[4] queue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __64__SPBeaconManager_beaconingKeysForUUID_dateInterval_completion___block_invoke_242;
  v5[3] = &unk_279B59A20;
  objc_copyWeak(&v9, buf);
  v6 = a1[5];
  v7 = a1[6];
  v8 = a1[7];
  dispatch_async(v3, v5);

  objc_destroyWeak(&v9);
  objc_destroyWeak(buf);
  v4 = *MEMORY[0x277D85DE8];
}

void __64__SPBeaconManager_beaconingKeysForUUID_dateInterval_completion___block_invoke_242(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v2 = [WeakRetained userAgentProxy];
  [v2 beaconingKeysForUUID:*(a1 + 32) dateInterval:*(a1 + 40) completion:*(a1 + 48)];
}

- (void)postedLocalNotifyWhenFoundNotificationForUUID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = __76__SPBeaconManager_postedLocalNotifyWhenFoundNotificationForUUID_completion___block_invoke;
  activity_block[3] = &unk_279B58BD0;
  activity_block[4] = self;
  v11 = dCopy;
  v12 = completionCopy;
  v8 = completionCopy;
  v9 = dCopy;
  _os_activity_initiate(&dword_2643D0000, "SPBeaconManager: postedLocalNotifyWhenFoundNotificationForUUID:completion:", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

void __76__SPBeaconManager_postedLocalNotifyWhenFoundNotificationForUUID_completion___block_invoke(id *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = LogCategory_BeaconManager();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v10 = "[SPBeaconManager postedLocalNotifyWhenFoundNotificationForUUID:completion:]_block_invoke";
    _os_log_impl(&dword_2643D0000, v2, OS_LOG_TYPE_DEFAULT, "SPBeaconManager: SPI: %s", buf, 0xCu);
  }

  objc_initWeak(buf, a1[4]);
  v3 = [a1[4] queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__SPBeaconManager_postedLocalNotifyWhenFoundNotificationForUUID_completion___block_invoke_243;
  block[3] = &unk_279B58BA8;
  objc_copyWeak(&v8, buf);
  v6 = a1[5];
  v7 = a1[6];
  dispatch_async(v3, block);

  objc_destroyWeak(&v8);
  objc_destroyWeak(buf);
  v4 = *MEMORY[0x277D85DE8];
}

void __76__SPBeaconManager_postedLocalNotifyWhenFoundNotificationForUUID_completion___block_invoke_243(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained userAgentProxy];
  [v2 postedLocalNotifyWhenFoundNotificationForUUID:*(a1 + 32) completion:*(a1 + 40)];
}

- (void)allDuriansWithCompletion:(id)completion
{
  completionCopy = completion;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __44__SPBeaconManager_allDuriansWithCompletion___block_invoke;
  v6[3] = &unk_279B58B80;
  v6[4] = self;
  v7 = completionCopy;
  v5 = completionCopy;
  _os_activity_initiate(&dword_2643D0000, "SPBeaconManager: allDuriansWithCompletion:", OS_ACTIVITY_FLAG_DEFAULT, v6);
}

void __44__SPBeaconManager_allDuriansWithCompletion___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = LogCategory_BeaconManager();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v10 = "[SPBeaconManager allDuriansWithCompletion:]_block_invoke";
    _os_log_impl(&dword_2643D0000, v2, OS_LOG_TYPE_DEFAULT, "SPBeaconManager: SPI: %s", buf, 0xCu);
  }

  v3 = LogCategory_BeaconManager();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    __44__SPBeaconManager_allDuriansWithCompletion___block_invoke_cold_1(v3);
  }

  objc_initWeak(buf, *(a1 + 32));
  v4 = [*(a1 + 32) queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __44__SPBeaconManager_allDuriansWithCompletion___block_invoke_244;
  v6[3] = &unk_279B59650;
  objc_copyWeak(&v8, buf);
  v7 = *(a1 + 40);
  dispatch_async(v4, v6);

  objc_destroyWeak(&v8);
  objc_destroyWeak(buf);
  v5 = *MEMORY[0x277D85DE8];
}

void __44__SPBeaconManager_allDuriansWithCompletion___block_invoke_244(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained userAgentProxy];
  [v2 allDuriansWithCompletion:*(a1 + 32)];
}

- (void)roleCategoriesWithCompletion:(id)completion
{
  completionCopy = completion;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __48__SPBeaconManager_roleCategoriesWithCompletion___block_invoke;
  v6[3] = &unk_279B58B80;
  v6[4] = self;
  v7 = completionCopy;
  v5 = completionCopy;
  _os_activity_initiate(&dword_2643D0000, "SPBeaconManager: roleCategoriesWithCompletion:", OS_ACTIVITY_FLAG_DEFAULT, v6);
}

void __48__SPBeaconManager_roleCategoriesWithCompletion___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = LogCategory_BeaconManager();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v9 = "[SPBeaconManager roleCategoriesWithCompletion:]_block_invoke";
    _os_log_impl(&dword_2643D0000, v2, OS_LOG_TYPE_DEFAULT, "SPBeaconManager: SPI: %s", buf, 0xCu);
  }

  objc_initWeak(buf, *(a1 + 32));
  v3 = [*(a1 + 32) queue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __48__SPBeaconManager_roleCategoriesWithCompletion___block_invoke_245;
  v5[3] = &unk_279B59650;
  objc_copyWeak(&v7, buf);
  v6 = *(a1 + 40);
  dispatch_async(v3, v5);

  objc_destroyWeak(&v7);
  objc_destroyWeak(buf);
  v4 = *MEMORY[0x277D85DE8];
}

void __48__SPBeaconManager_roleCategoriesWithCompletion___block_invoke_245(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained userAgentProxy];
  [v2 roleCategoriesWithCompletion:*(a1 + 32)];
}

- (void)setRole:(int64_t)role forBeacon:(id)beacon completion:(id)completion
{
  beaconCopy = beacon;
  completionCopy = completion;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __48__SPBeaconManager_setRole_forBeacon_completion___block_invoke;
  v12[3] = &unk_279B5A498;
  v12[4] = self;
  v13 = beaconCopy;
  v14 = completionCopy;
  roleCopy = role;
  v10 = completionCopy;
  v11 = beaconCopy;
  _os_activity_initiate(&dword_2643D0000, "SPBeaconManager: setRole:forBeacon:completion:", OS_ACTIVITY_FLAG_DEFAULT, v12);
}

void __48__SPBeaconManager_setRole_forBeacon_completion___block_invoke(id *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = LogCategory_BeaconManager();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v10 = "[SPBeaconManager setRole:forBeacon:completion:]_block_invoke";
    _os_log_impl(&dword_2643D0000, v2, OS_LOG_TYPE_DEFAULT, "SPBeaconManager: SPI: %s", buf, 0xCu);
  }

  objc_initWeak(buf, a1[4]);
  v3 = [a1[4] queue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __48__SPBeaconManager_setRole_forBeacon_completion___block_invoke_246;
  v5[3] = &unk_279B59F78;
  objc_copyWeak(v8, buf);
  v8[1] = a1[7];
  v6 = a1[5];
  v7 = a1[6];
  dispatch_async(v3, v5);

  objc_destroyWeak(v8);
  objc_destroyWeak(buf);
  v4 = *MEMORY[0x277D85DE8];
}

void __48__SPBeaconManager_setRole_forBeacon_completion___block_invoke_246(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained userAgentProxy];
  [v2 setRole:*(a1 + 56) beaconId:*(a1 + 32) completion:*(a1 + 40)];
}

- (void)updateBeacon:(id)beacon updates:(id)updates completion:(id)completion
{
  beaconCopy = beacon;
  updatesCopy = updates;
  completionCopy = completion;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __51__SPBeaconManager_updateBeacon_updates_completion___block_invoke;
  v14[3] = &unk_279B593C0;
  v14[4] = self;
  v15 = beaconCopy;
  v16 = updatesCopy;
  v17 = completionCopy;
  v11 = completionCopy;
  v12 = updatesCopy;
  v13 = beaconCopy;
  _os_activity_initiate(&dword_2643D0000, "SPBeaconManager: updateBeacon:updates:completion:", OS_ACTIVITY_FLAG_DEFAULT, v14);
}

void __51__SPBeaconManager_updateBeacon_updates_completion___block_invoke(id *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = LogCategory_BeaconManager();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v10 = "[SPBeaconManager updateBeacon:updates:completion:]_block_invoke";
    _os_log_impl(&dword_2643D0000, v2, OS_LOG_TYPE_DEFAULT, "SPBeaconManager: SPI: %s", buf, 0xCu);
  }

  objc_initWeak(buf, a1[4]);
  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = __51__SPBeaconManager_updateBeacon_updates_completion___block_invoke_247;
  activity_block[3] = &unk_279B5A4C0;
  activity_block[4] = a1[4];
  objc_copyWeak(&v8, buf);
  v5 = a1[5];
  v6 = a1[6];
  v7 = a1[7];
  _os_activity_initiate(&dword_2643D0000, "SPOwnerSession: Calling commandKeysForUUIDs", OS_ACTIVITY_FLAG_DEFAULT, activity_block);

  objc_destroyWeak(&v8);
  objc_destroyWeak(buf);
  v3 = *MEMORY[0x277D85DE8];
}

void __51__SPBeaconManager_updateBeacon_updates_completion___block_invoke_247(id *a1)
{
  v2 = [a1[4] queue];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __51__SPBeaconManager_updateBeacon_updates_completion___block_invoke_2;
  v3[3] = &unk_279B59A20;
  objc_copyWeak(&v7, a1 + 8);
  v4 = a1[5];
  v5 = a1[6];
  v6 = a1[7];
  dispatch_async(v2, v3);

  objc_destroyWeak(&v7);
}

void __51__SPBeaconManager_updateBeacon_updates_completion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v2 = [WeakRetained userAgentProxy];
  [v2 updateBeacon:*(a1 + 32) updates:*(a1 + 40) completion:*(a1 + 48)];
}

- (void)connectionTokensForBeaconUUID:(id)d dateInterval:(id)interval completion:(id)completion
{
  dCopy = d;
  intervalCopy = interval;
  completionCopy = completion;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __73__SPBeaconManager_connectionTokensForBeaconUUID_dateInterval_completion___block_invoke;
  v14[3] = &unk_279B593C0;
  v14[4] = self;
  v15 = dCopy;
  v16 = intervalCopy;
  v17 = completionCopy;
  v11 = completionCopy;
  v12 = intervalCopy;
  v13 = dCopy;
  _os_activity_initiate(&dword_2643D0000, "SPBeaconManager: connectionTokensForBeaconUUID:dateInterval:completion:", OS_ACTIVITY_FLAG_DEFAULT, v14);
}

void __73__SPBeaconManager_connectionTokensForBeaconUUID_dateInterval_completion___block_invoke(id *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = LogCategory_BeaconManager();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v10 = "[SPBeaconManager connectionTokensForBeaconUUID:dateInterval:completion:]_block_invoke";
    _os_log_impl(&dword_2643D0000, v2, OS_LOG_TYPE_DEFAULT, "SPBeaconManager: SPI: %s", buf, 0xCu);
  }

  objc_initWeak(buf, a1[4]);
  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = __73__SPBeaconManager_connectionTokensForBeaconUUID_dateInterval_completion___block_invoke_248;
  activity_block[3] = &unk_279B5A4C0;
  activity_block[4] = a1[4];
  objc_copyWeak(&v8, buf);
  v5 = a1[5];
  v6 = a1[6];
  v7 = a1[7];
  _os_activity_initiate(&dword_2643D0000, "SPOwnerSession: Calling commandKeysForUUIDs", OS_ACTIVITY_FLAG_DEFAULT, activity_block);

  objc_destroyWeak(&v8);
  objc_destroyWeak(buf);
  v3 = *MEMORY[0x277D85DE8];
}

void __73__SPBeaconManager_connectionTokensForBeaconUUID_dateInterval_completion___block_invoke_248(id *a1)
{
  v2 = [a1[4] queue];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __73__SPBeaconManager_connectionTokensForBeaconUUID_dateInterval_completion___block_invoke_2;
  v3[3] = &unk_279B59A20;
  objc_copyWeak(&v7, a1 + 8);
  v4 = a1[5];
  v5 = a1[6];
  v6 = a1[7];
  dispatch_async(v2, v3);

  objc_destroyWeak(&v7);
}

void __73__SPBeaconManager_connectionTokensForBeaconUUID_dateInterval_completion___block_invoke_2(uint64_t a1)
{
  v9[1] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = [WeakRetained userAgentProxy];
  v9[0] = *(a1 + 32);
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __73__SPBeaconManager_connectionTokensForBeaconUUID_dateInterval_completion___block_invoke_3;
  v7[3] = &unk_279B5A4E8;
  v5 = *(a1 + 40);
  v8 = *(a1 + 48);
  [v3 commandKeysForUUIDs:v4 dateInterval:v5 completion:v7];

  v6 = *MEMORY[0x277D85DE8];
}

void __73__SPBeaconManager_connectionTokensForBeaconUUID_dateInterval_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_new();
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __73__SPBeaconManager_connectionTokensForBeaconUUID_dateInterval_completion___block_invoke_4;
  v6[3] = &unk_279B59EA0;
  v7 = v4;
  v5 = v4;
  [v3 enumerateKeysAndObjectsUsingBlock:v6];

  (*(*(a1 + 32) + 16))();
}

void __73__SPBeaconManager_connectionTokensForBeaconUUID_dateInterval_completion___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  [*(a1 + 32) addObjectsFromArray:v5];
}

- (void)connectionTokensForBeaconUUID:(id)d criteria:(id)criteria completion:(id)completion
{
  dCopy = d;
  criteriaCopy = criteria;
  completionCopy = completion;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __69__SPBeaconManager_connectionTokensForBeaconUUID_criteria_completion___block_invoke;
  v14[3] = &unk_279B593C0;
  v14[4] = self;
  v15 = dCopy;
  v16 = criteriaCopy;
  v17 = completionCopy;
  v11 = completionCopy;
  v12 = criteriaCopy;
  v13 = dCopy;
  _os_activity_initiate(&dword_2643D0000, "SPBeaconManager: connectionTokensForBeaconUUID:criteria:completion:", OS_ACTIVITY_FLAG_DEFAULT, v14);
}

void __69__SPBeaconManager_connectionTokensForBeaconUUID_criteria_completion___block_invoke(id *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = LogCategory_BeaconManager();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v10 = "[SPBeaconManager connectionTokensForBeaconUUID:criteria:completion:]_block_invoke";
    _os_log_impl(&dword_2643D0000, v2, OS_LOG_TYPE_DEFAULT, "SPBeaconManager: SPI: %s", buf, 0xCu);
  }

  objc_initWeak(buf, a1[4]);
  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = __69__SPBeaconManager_connectionTokensForBeaconUUID_criteria_completion___block_invoke_252;
  activity_block[3] = &unk_279B5A4C0;
  activity_block[4] = a1[4];
  objc_copyWeak(&v8, buf);
  v5 = a1[5];
  v6 = a1[6];
  v7 = a1[7];
  _os_activity_initiate(&dword_2643D0000, "SPOwnerSession: Calling commandKeysForUUID withCriteria", OS_ACTIVITY_FLAG_DEFAULT, activity_block);

  objc_destroyWeak(&v8);
  objc_destroyWeak(buf);
  v3 = *MEMORY[0x277D85DE8];
}

void __69__SPBeaconManager_connectionTokensForBeaconUUID_criteria_completion___block_invoke_252(id *a1)
{
  v2 = [a1[4] queue];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __69__SPBeaconManager_connectionTokensForBeaconUUID_criteria_completion___block_invoke_2;
  v3[3] = &unk_279B59A20;
  objc_copyWeak(&v7, a1 + 8);
  v4 = a1[5];
  v5 = a1[6];
  v6 = a1[7];
  dispatch_async(v2, v3);

  objc_destroyWeak(&v7);
}

void __69__SPBeaconManager_connectionTokensForBeaconUUID_criteria_completion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = [WeakRetained userAgentProxy];
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __69__SPBeaconManager_connectionTokensForBeaconUUID_criteria_completion___block_invoke_3;
  v6[3] = &unk_279B59D60;
  v7 = *(a1 + 48);
  [v3 commandKeysForUUID:v4 withCriteria:v5 completion:v6];
}

- (void)allBeaconingKeysForUUID:(id)d dateInterval:(id)interval forceGenerate:(BOOL)generate completion:(id)completion
{
  dCopy = d;
  intervalCopy = interval;
  completionCopy = completion;
  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = __81__SPBeaconManager_allBeaconingKeysForUUID_dateInterval_forceGenerate_completion___block_invoke;
  activity_block[3] = &unk_279B59CE8;
  activity_block[4] = self;
  v17 = dCopy;
  generateCopy = generate;
  v18 = intervalCopy;
  v19 = completionCopy;
  v13 = completionCopy;
  v14 = intervalCopy;
  v15 = dCopy;
  _os_activity_initiate(&dword_2643D0000, "SPBeaconManager: allBeaconingKeysForUUID:dateInterval:forceGenerate:completion:", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

void __81__SPBeaconManager_allBeaconingKeysForUUID_dateInterval_forceGenerate_completion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = LogCategory_BeaconManager();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v12 = "[SPBeaconManager allBeaconingKeysForUUID:dateInterval:forceGenerate:completion:]_block_invoke";
    _os_log_impl(&dword_2643D0000, v2, OS_LOG_TYPE_DEFAULT, "SPBeaconManager: SPI: %s", buf, 0xCu);
  }

  objc_initWeak(buf, *(a1 + 32));
  v3 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __81__SPBeaconManager_allBeaconingKeysForUUID_dateInterval_forceGenerate_completion___block_invoke_254;
  block[3] = &unk_279B59AE8;
  objc_copyWeak(&v9, buf);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v10 = *(a1 + 64);
  v8 = *(a1 + 56);
  dispatch_async(v3, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(buf);
  v4 = *MEMORY[0x277D85DE8];
}

void __81__SPBeaconManager_allBeaconingKeysForUUID_dateInterval_forceGenerate_completion___block_invoke_254(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v2 = [WeakRetained userAgentProxy];
  [v2 allBeaconingKeysForUUID:*(a1 + 32) dateInterval:*(a1 + 40) forceGenerate:*(a1 + 64) completion:*(a1 + 48)];
}

- (void)setAlignmentUncertainty:(double)uncertainty atIndex:(unint64_t)index date:(id)date forBeacon:(id)beacon completion:(id)completion
{
  dateCopy = date;
  beaconCopy = beacon;
  completionCopy = completion;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __77__SPBeaconManager_setAlignmentUncertainty_atIndex_date_forBeacon_completion___block_invoke;
  v18[3] = &unk_279B5A538;
  uncertaintyCopy = uncertainty;
  indexCopy = index;
  v18[4] = self;
  v19 = dateCopy;
  v20 = beaconCopy;
  v21 = completionCopy;
  v15 = completionCopy;
  v16 = beaconCopy;
  v17 = dateCopy;
  _os_activity_initiate(&dword_2643D0000, "SPBeaconManager: setAlignmentUncertainty:atIndex:forceGenerate:date:forBeacon:completion:", OS_ACTIVITY_FLAG_DEFAULT, v18);
}

void __77__SPBeaconManager_setAlignmentUncertainty_atIndex_date_forBeacon_completion___block_invoke(id *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = LogCategory_BeaconManager();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v11 = "[SPBeaconManager setAlignmentUncertainty:atIndex:date:forBeacon:completion:]_block_invoke";
    _os_log_impl(&dword_2643D0000, v2, OS_LOG_TYPE_DEFAULT, "SPBeaconManager: SPI: %s", buf, 0xCu);
  }

  objc_initWeak(buf, a1[4]);
  v3 = [a1[4] queue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __77__SPBeaconManager_setAlignmentUncertainty_atIndex_date_forBeacon_completion___block_invoke_255;
  v5[3] = &unk_279B5A510;
  objc_copyWeak(v9, buf);
  v9[1] = a1[8];
  v9[2] = a1[9];
  v6 = a1[5];
  v7 = a1[6];
  v8 = a1[7];
  dispatch_async(v3, v5);

  objc_destroyWeak(v9);
  objc_destroyWeak(buf);
  v4 = *MEMORY[0x277D85DE8];
}

void __77__SPBeaconManager_setAlignmentUncertainty_atIndex_date_forBeacon_completion___block_invoke_255(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v2 = [WeakRetained userAgentProxy];
  [v2 setAlignmentUncertainty:*(a1 + 72) atIndex:*(a1 + 32) date:*(a1 + 40) forBeacon:*(a1 + 48) completion:*(a1 + 64)];
}

- (void)setKeyRollInterval:(unint64_t)interval forBeacon:(id)beacon completion:(id)completion
{
  beaconCopy = beacon;
  completionCopy = completion;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __59__SPBeaconManager_setKeyRollInterval_forBeacon_completion___block_invoke;
  v12[3] = &unk_279B5A498;
  v12[4] = self;
  v13 = beaconCopy;
  v14 = completionCopy;
  intervalCopy = interval;
  v10 = completionCopy;
  v11 = beaconCopy;
  _os_activity_initiate(&dword_2643D0000, "SPBeaconManager: setKeyRollInterval:forBeacon:completion:", OS_ACTIVITY_FLAG_DEFAULT, v12);
}

void __59__SPBeaconManager_setKeyRollInterval_forBeacon_completion___block_invoke(id *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = LogCategory_BeaconManager();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v10 = "[SPBeaconManager setKeyRollInterval:forBeacon:completion:]_block_invoke";
    _os_log_impl(&dword_2643D0000, v2, OS_LOG_TYPE_DEFAULT, "SPBeaconManager: SPI: %s", buf, 0xCu);
  }

  objc_initWeak(buf, a1[4]);
  v3 = [a1[4] queue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __59__SPBeaconManager_setKeyRollInterval_forBeacon_completion___block_invoke_256;
  v5[3] = &unk_279B59F78;
  objc_copyWeak(v8, buf);
  v8[1] = a1[7];
  v6 = a1[5];
  v7 = a1[6];
  dispatch_async(v3, v5);

  objc_destroyWeak(v8);
  objc_destroyWeak(buf);
  v4 = *MEMORY[0x277D85DE8];
}

void __59__SPBeaconManager_setKeyRollInterval_forBeacon_completion___block_invoke_256(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained userAgentProxy];
  [v2 setKeyRollInterval:*(a1 + 56) forBeacon:*(a1 + 32) completion:*(a1 + 40)];
}

- (void)setWildKeyBase:(unint64_t)base interval:(unint64_t)interval fallback:(unint64_t)fallback forBeacon:(id)beacon completion:(id)completion
{
  beaconCopy = beacon;
  completionCopy = completion;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __73__SPBeaconManager_setWildKeyBase_interval_fallback_forBeacon_completion___block_invoke;
  v16[3] = &unk_279B5A588;
  intervalCopy = interval;
  fallbackCopy = fallback;
  v16[4] = self;
  v17 = beaconCopy;
  v18 = completionCopy;
  baseCopy = base;
  v14 = completionCopy;
  v15 = beaconCopy;
  _os_activity_initiate(&dword_2643D0000, "SPBeaconManager: setWildKeyBase:interval:fallback:forBeacon:completion:", OS_ACTIVITY_FLAG_DEFAULT, v16);
}

void __73__SPBeaconManager_setWildKeyBase_interval_fallback_forBeacon_completion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = LogCategory_BeaconManager();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v12 = "[SPBeaconManager setWildKeyBase:interval:fallback:forBeacon:completion:]_block_invoke";
    _os_log_impl(&dword_2643D0000, v2, OS_LOG_TYPE_DEFAULT, "SPBeaconManager: SPI: %s", buf, 0xCu);
  }

  objc_initWeak(buf, *(a1 + 32));
  v3 = [*(a1 + 32) queue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __73__SPBeaconManager_setWildKeyBase_interval_fallback_forBeacon_completion___block_invoke_257;
  v5[3] = &unk_279B5A560;
  objc_copyWeak(&v8, buf);
  v9 = *(a1 + 56);
  v10 = *(a1 + 72);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  dispatch_async(v3, v5);

  objc_destroyWeak(&v8);
  objc_destroyWeak(buf);
  v4 = *MEMORY[0x277D85DE8];
}

void __73__SPBeaconManager_setWildKeyBase_interval_fallback_forBeacon_completion___block_invoke_257(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained userAgentProxy];
  [v2 setWildKeyBase:*(a1 + 56) interval:*(a1 + 64) fallback:*(a1 + 72) forBeacon:*(a1 + 32) completion:*(a1 + 40)];
}

- (void)setCurrentWildKeyIndex:(int64_t)index forBeacon:(id)beacon completion:(id)completion
{
  beaconCopy = beacon;
  completionCopy = completion;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __63__SPBeaconManager_setCurrentWildKeyIndex_forBeacon_completion___block_invoke;
  v12[3] = &unk_279B5A498;
  v12[4] = self;
  v13 = beaconCopy;
  v14 = completionCopy;
  indexCopy = index;
  v10 = completionCopy;
  v11 = beaconCopy;
  _os_activity_initiate(&dword_2643D0000, "SPBeaconManager: setCurrentWildKeyIndex:forBeacon:completion:", OS_ACTIVITY_FLAG_DEFAULT, v12);
}

void __63__SPBeaconManager_setCurrentWildKeyIndex_forBeacon_completion___block_invoke(id *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = LogCategory_BeaconManager();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v10 = "[SPBeaconManager setCurrentWildKeyIndex:forBeacon:completion:]_block_invoke";
    _os_log_impl(&dword_2643D0000, v2, OS_LOG_TYPE_DEFAULT, "SPBeaconManager: SPI: %s", buf, 0xCu);
  }

  objc_initWeak(buf, a1[4]);
  v3 = [a1[4] queue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __63__SPBeaconManager_setCurrentWildKeyIndex_forBeacon_completion___block_invoke_258;
  v5[3] = &unk_279B59F78;
  objc_copyWeak(v8, buf);
  v8[1] = a1[7];
  v6 = a1[5];
  v7 = a1[6];
  dispatch_async(v3, v5);

  objc_destroyWeak(v8);
  objc_destroyWeak(buf);
  v4 = *MEMORY[0x277D85DE8];
}

void __63__SPBeaconManager_setCurrentWildKeyIndex_forBeacon_completion___block_invoke_258(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained userAgentProxy];
  [v2 setCurrentWildKeyIndex:*(a1 + 56) forBeacon:*(a1 + 32) completion:*(a1 + 40)];
}

- (void)connectionTokensForBeaconUUID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = __60__SPBeaconManager_connectionTokensForBeaconUUID_completion___block_invoke;
  activity_block[3] = &unk_279B58BD0;
  activity_block[4] = self;
  v11 = dCopy;
  v12 = completionCopy;
  v8 = completionCopy;
  v9 = dCopy;
  _os_activity_initiate(&dword_2643D0000, "SPBeaconManager: connectionTokensForBeaconUUID:completion:", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

void __60__SPBeaconManager_connectionTokensForBeaconUUID_completion___block_invoke(id *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = LogCategory_BeaconManager();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v9 = "[SPBeaconManager connectionTokensForBeaconUUID:completion:]_block_invoke";
    _os_log_impl(&dword_2643D0000, v2, OS_LOG_TYPE_DEFAULT, "SPBeaconManager: SPI: %s", buf, 0xCu);
  }

  objc_initWeak(buf, a1[4]);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __60__SPBeaconManager_connectionTokensForBeaconUUID_completion___block_invoke_259;
  v4[3] = &unk_279B599D0;
  v4[4] = a1[4];
  objc_copyWeak(&v7, buf);
  v5 = a1[5];
  v6 = a1[6];
  _os_activity_initiate(&dword_2643D0000, "SPOwnerSession: Calling commandKeysForUUIDs", OS_ACTIVITY_FLAG_DEFAULT, v4);

  objc_destroyWeak(&v7);
  objc_destroyWeak(buf);
  v3 = *MEMORY[0x277D85DE8];
}

void __60__SPBeaconManager_connectionTokensForBeaconUUID_completion___block_invoke_259(id *a1)
{
  v2 = [a1[4] queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__SPBeaconManager_connectionTokensForBeaconUUID_completion___block_invoke_2;
  block[3] = &unk_279B58BA8;
  objc_copyWeak(&v6, a1 + 7);
  v4 = a1[5];
  v5 = a1[6];
  dispatch_async(v2, block);

  objc_destroyWeak(&v6);
}

void __60__SPBeaconManager_connectionTokensForBeaconUUID_completion___block_invoke_2(uint64_t a1)
{
  v8[1] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained userAgentProxy];
  v8[0] = *(a1 + 32);
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __60__SPBeaconManager_connectionTokensForBeaconUUID_completion___block_invoke_3;
  v6[3] = &unk_279B5A4E8;
  v7 = *(a1 + 40);
  [v3 commandKeysForUUIDs:v4 completion:v6];

  v5 = *MEMORY[0x277D85DE8];
}

void __60__SPBeaconManager_connectionTokensForBeaconUUID_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_new();
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __60__SPBeaconManager_connectionTokensForBeaconUUID_completion___block_invoke_4;
  v6[3] = &unk_279B59EA0;
  v7 = v4;
  v5 = v4;
  [v3 enumerateKeysAndObjectsUsingBlock:v6];

  (*(*(a1 + 32) + 16))();
}

- (void)connectedToBeacon:(id)beacon withIndex:(unint64_t)index completion:(id)completion
{
  beaconCopy = beacon;
  completionCopy = completion;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __58__SPBeaconManager_connectedToBeacon_withIndex_completion___block_invoke;
  v12[3] = &unk_279B5A498;
  v12[4] = self;
  v13 = beaconCopy;
  v14 = completionCopy;
  indexCopy = index;
  v10 = completionCopy;
  v11 = beaconCopy;
  _os_activity_initiate(&dword_2643D0000, "SPBeaconManager: connectedToBeacon:withIndex:completion:", OS_ACTIVITY_FLAG_DEFAULT, v12);
}

void __58__SPBeaconManager_connectedToBeacon_withIndex_completion___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = LogCategory_BeaconManager();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v13 = "[SPBeaconManager connectedToBeacon:withIndex:completion:]_block_invoke";
    _os_log_impl(&dword_2643D0000, v2, OS_LOG_TYPE_DEFAULT, "SPBeaconManager: SPI: %s", buf, 0xCu);
  }

  objc_initWeak(buf, *(a1 + 32));
  v3 = [*(a1 + 32) queue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __58__SPBeaconManager_connectedToBeacon_withIndex_completion___block_invoke_260;
  v8[3] = &unk_279B59F78;
  objc_copyWeak(v11, buf);
  v4 = *(a1 + 40);
  v6 = *(a1 + 48);
  v5 = *(a1 + 56);
  v9 = v4;
  v11[1] = v5;
  v10 = v6;
  dispatch_async(v3, v8);

  objc_destroyWeak(v11);
  objc_destroyWeak(buf);
  v7 = *MEMORY[0x277D85DE8];
}

void __58__SPBeaconManager_connectedToBeacon_withIndex_completion___block_invoke_260(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained userAgentProxy];
  [v2 connectedToBeacon:*(a1 + 32) withIndex:*(a1 + 56) completion:*(a1 + 40)];
}

- (void)fetchUserStatsForBeacon:(id)beacon completion:(id)completion
{
  beaconCopy = beacon;
  completionCopy = completion;
  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = __54__SPBeaconManager_fetchUserStatsForBeacon_completion___block_invoke;
  activity_block[3] = &unk_279B58BD0;
  activity_block[4] = self;
  v11 = beaconCopy;
  v12 = completionCopy;
  v8 = completionCopy;
  v9 = beaconCopy;
  _os_activity_initiate(&dword_2643D0000, "SPBeaconManager: fetchUserStatsForBeacon:completion:", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

void __54__SPBeaconManager_fetchUserStatsForBeacon_completion___block_invoke(id *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = LogCategory_BeaconManager();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v10 = "[SPBeaconManager fetchUserStatsForBeacon:completion:]_block_invoke";
    _os_log_impl(&dword_2643D0000, v2, OS_LOG_TYPE_DEFAULT, "SPBeaconManager: SPI: %s", buf, 0xCu);
  }

  objc_initWeak(buf, a1[4]);
  v3 = [a1[4] queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__SPBeaconManager_fetchUserStatsForBeacon_completion___block_invoke_264;
  block[3] = &unk_279B58BA8;
  objc_copyWeak(&v8, buf);
  v6 = a1[5];
  v7 = a1[6];
  dispatch_async(v3, block);

  objc_destroyWeak(&v8);
  objc_destroyWeak(buf);
  v4 = *MEMORY[0x277D85DE8];
}

void __54__SPBeaconManager_fetchUserStatsForBeacon_completion___block_invoke_264(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained userAgentProxy];
  [v2 fetchUserStatsForBeacon:*(a1 + 32) completion:*(a1 + 40)];
}

- (void)fetchFirmwareVersionForBeacon:(id)beacon completion:(id)completion
{
  beaconCopy = beacon;
  completionCopy = completion;
  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = __60__SPBeaconManager_fetchFirmwareVersionForBeacon_completion___block_invoke;
  activity_block[3] = &unk_279B58BD0;
  activity_block[4] = self;
  v11 = beaconCopy;
  v12 = completionCopy;
  v8 = completionCopy;
  v9 = beaconCopy;
  _os_activity_initiate(&dword_2643D0000, "SPBeaconManager: fetchFirmwareVersionForBeacon:completion:", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

void __60__SPBeaconManager_fetchFirmwareVersionForBeacon_completion___block_invoke(id *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = LogCategory_BeaconManager();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v10 = "[SPBeaconManager fetchFirmwareVersionForBeacon:completion:]_block_invoke";
    _os_log_impl(&dword_2643D0000, v2, OS_LOG_TYPE_DEFAULT, "SPBeaconManager: SPI: %s", buf, 0xCu);
  }

  objc_initWeak(buf, a1[4]);
  v3 = [a1[4] queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__SPBeaconManager_fetchFirmwareVersionForBeacon_completion___block_invoke_265;
  block[3] = &unk_279B58BA8;
  objc_copyWeak(&v8, buf);
  v6 = a1[5];
  v7 = a1[6];
  dispatch_async(v3, block);

  objc_destroyWeak(&v8);
  objc_destroyWeak(buf);
  v4 = *MEMORY[0x277D85DE8];
}

void __60__SPBeaconManager_fetchFirmwareVersionForBeacon_completion___block_invoke_265(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained userAgentProxy];
  [v2 fetchFirmwareVersionForBeacon:*(a1 + 32) completion:*(a1 + 40)];
}

- (void)createKeyReconcilerWithCompletion:(id)completion
{
  completionCopy = completion;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __53__SPBeaconManager_createKeyReconcilerWithCompletion___block_invoke;
  v6[3] = &unk_279B58B80;
  v6[4] = self;
  v7 = completionCopy;
  v5 = completionCopy;
  _os_activity_initiate(&dword_2643D0000, "SPOwnerSession: Calling createKeyReconcilerWithCompletion", OS_ACTIVITY_FLAG_DEFAULT, v6);
}

void __53__SPBeaconManager_createKeyReconcilerWithCompletion___block_invoke(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v2 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__SPBeaconManager_createKeyReconcilerWithCompletion___block_invoke_2;
  block[3] = &unk_279B59650;
  objc_copyWeak(&v5, &location);
  v4 = *(a1 + 40);
  dispatch_async(v2, block);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __53__SPBeaconManager_createKeyReconcilerWithCompletion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained userAgentProxy];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __53__SPBeaconManager_createKeyReconcilerWithCompletion___block_invoke_3;
  v4[3] = &unk_279B5A5D0;
  v5 = *(a1 + 32);
  [v3 fetchAllKeyMapFileDescriptorsWithCompletion:v4];
}

void __53__SPBeaconManager_createKeyReconcilerWithCompletion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = LogCategory_BeaconManager();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __53__SPBeaconManager_createKeyReconcilerWithCompletion___block_invoke_3_cold_1(v6, v8);
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 134217984;
      v12 = [v5 count];
      _os_log_impl(&dword_2643D0000, v8, OS_LOG_TYPE_DEFAULT, "SPBeaconManager: fetched %zu key map file descriptor sets", &v11, 0xCu);
    }

    v9 = [[SPKeyReconciler alloc] initWithDictionary:v5];
    (*(*(a1 + 32) + 16))();
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)repairDataStore:(id)store
{
  storeCopy = store;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __35__SPBeaconManager_repairDataStore___block_invoke;
  v6[3] = &unk_279B58B80;
  v6[4] = self;
  v7 = storeCopy;
  v5 = storeCopy;
  _os_activity_initiate(&dword_2643D0000, "SPBeaconManager: repairDataStore:", OS_ACTIVITY_FLAG_DEFAULT, v6);
}

void __35__SPBeaconManager_repairDataStore___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = LogCategory_BeaconManager();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v9 = "[SPBeaconManager repairDataStore:]_block_invoke";
    _os_log_impl(&dword_2643D0000, v2, OS_LOG_TYPE_DEFAULT, "SPBeaconManager: SPI: %s", buf, 0xCu);
  }

  objc_initWeak(buf, *(a1 + 32));
  v3 = [*(a1 + 32) queue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __35__SPBeaconManager_repairDataStore___block_invoke_268;
  v5[3] = &unk_279B59650;
  objc_copyWeak(&v7, buf);
  v6 = *(a1 + 40);
  dispatch_async(v3, v5);

  objc_destroyWeak(&v7);
  objc_destroyWeak(buf);
  v4 = *MEMORY[0x277D85DE8];
}

void __35__SPBeaconManager_repairDataStore___block_invoke_268(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained userAgentProxy];
  [v2 repairDataStore:*(a1 + 32)];
}

- (void)isLPEMModeSupported:(id)supported
{
  supportedCopy = supported;
  queue = [(SPBeaconManager *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __39__SPBeaconManager_isLPEMModeSupported___block_invoke;
  v7[3] = &unk_279B58B80;
  v7[4] = self;
  v8 = supportedCopy;
  v6 = supportedCopy;
  dispatch_async(queue, v7);
}

void __39__SPBeaconManager_isLPEMModeSupported___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) userAgentProxy];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __39__SPBeaconManager_isLPEMModeSupported___block_invoke_2;
  v3[3] = &unk_279B5A5F8;
  v4 = *(a1 + 40);
  [v2 isLPEMModeSupportedWithCompletion:v3];
}

- (void)userHasAcknowledgeFindMyWithCompletion:(id)completion
{
  completionCopy = completion;
  queue = [(SPBeaconManager *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__SPBeaconManager_userHasAcknowledgeFindMyWithCompletion___block_invoke;
  v7[3] = &unk_279B58B80;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(queue, v7);
}

void __58__SPBeaconManager_userHasAcknowledgeFindMyWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) userAgentProxy];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __58__SPBeaconManager_userHasAcknowledgeFindMyWithCompletion___block_invoke_2;
  v3[3] = &unk_279B5A5F8;
  v4 = *(a1 + 40);
  [v2 userHasAcknowledgeFindMyWithCompletion:v3];
}

- (void)setUserHasAcknowledgedFindMy:(BOOL)my completion:(id)completion
{
  completionCopy = completion;
  queue = [(SPBeaconManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__SPBeaconManager_setUserHasAcknowledgedFindMy_completion___block_invoke;
  block[3] = &unk_279B59FF0;
  myCopy = my;
  block[4] = self;
  v10 = completionCopy;
  v8 = completionCopy;
  dispatch_async(queue, block);
}

void __59__SPBeaconManager_setUserHasAcknowledgedFindMy_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) userAgentProxy];
  v3 = *(a1 + 48);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __59__SPBeaconManager_setUserHasAcknowledgedFindMy_completion___block_invoke_2;
  v4[3] = &unk_279B58EF8;
  v5 = *(a1 + 40);
  [v2 setUserHasAcknowledgedFindMy:v3 completion:v4];
}

- (void)setSuppressLPEMBeaconing:(BOOL)beaconing completion:(id)completion
{
  completionCopy = completion;
  queue = [(SPBeaconManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__SPBeaconManager_setSuppressLPEMBeaconing_completion___block_invoke;
  block[3] = &unk_279B59FF0;
  beaconingCopy = beaconing;
  block[4] = self;
  v10 = completionCopy;
  v8 = completionCopy;
  dispatch_async(queue, block);
}

void __55__SPBeaconManager_setSuppressLPEMBeaconing_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) userAgentProxy];
  v3 = *(a1 + 48);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __55__SPBeaconManager_setSuppressLPEMBeaconing_completion___block_invoke_2;
  v4[3] = &unk_279B58EF8;
  v5 = *(a1 + 40);
  [v2 setSuppressLPEMBeaconing:v3 completion:v4];
}

- (void)createDuplicateBeaconsForBeacon:(id)beacon skipGroupIdentifier:(BOOL)identifier count:(int64_t)count completion:(id)completion
{
  beaconCopy = beacon;
  completionCopy = completion;
  queue = [(SPBeaconManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __88__SPBeaconManager_createDuplicateBeaconsForBeacon_skipGroupIdentifier_count_completion___block_invoke;
  block[3] = &unk_279B5A620;
  block[4] = self;
  v16 = beaconCopy;
  identifierCopy = identifier;
  v17 = completionCopy;
  countCopy = count;
  v13 = completionCopy;
  v14 = beaconCopy;
  dispatch_async(queue, block);
}

void __88__SPBeaconManager_createDuplicateBeaconsForBeacon_skipGroupIdentifier_count_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) userAgentProxy];
  [v2 createDuplicateBeaconsForBeacon:*(a1 + 40) skipGroupIdentifier:*(a1 + 64) count:*(a1 + 56) completion:*(a1 + 48)];
}

- (void)removeDuplicateBeaconsWithCompletion:(id)completion
{
  completionCopy = completion;
  queue = [(SPBeaconManager *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__SPBeaconManager_removeDuplicateBeaconsWithCompletion___block_invoke;
  v7[3] = &unk_279B58B80;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(queue, v7);
}

void __56__SPBeaconManager_removeDuplicateBeaconsWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) userAgentProxy];
  [v2 removeDuplicateBeaconsWithCompletion:*(a1 + 40)];
}

- (void)submitDeviceEvent:(id)event source:(unsigned int)source attachedTo:(id)to completion:(id)completion
{
  eventCopy = event;
  toCopy = to;
  completionCopy = completion;
  queue = [(SPBeaconManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__SPBeaconManager_submitDeviceEvent_source_attachedTo_completion___block_invoke;
  block[3] = &unk_279B5A648;
  block[4] = self;
  v18 = eventCopy;
  sourceCopy = source;
  v19 = toCopy;
  v20 = completionCopy;
  v14 = completionCopy;
  v15 = toCopy;
  v16 = eventCopy;
  dispatch_async(queue, block);
}

void __66__SPBeaconManager_submitDeviceEvent_source_attachedTo_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) userAgentProxy];
  [v2 submitDeviceEvent:*(a1 + 40) source:*(a1 + 64) attachedTo:*(a1 + 48) completion:*(a1 + 56)];
}

- (void)keySyncMetadataWithcompletion:(id)withcompletion
{
  withcompletionCopy = withcompletion;
  queue = [(SPBeaconManager *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__SPBeaconManager_keySyncMetadataWithcompletion___block_invoke;
  v7[3] = &unk_279B58B80;
  v7[4] = self;
  v8 = withcompletionCopy;
  v6 = withcompletionCopy;
  dispatch_async(queue, v7);
}

void __49__SPBeaconManager_keySyncMetadataWithcompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) userAgentProxy];
  [v2 keySyncMetadataWithcompletion:*(a1 + 40)];
}

void __53__SPBeaconManager_createKeyReconcilerWithCompletion___block_invoke_3_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_2643D0000, a2, OS_LOG_TYPE_ERROR, "SPBeaconManager: failed to fetch key map file descriptors: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end