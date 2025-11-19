@interface SPBeaconManagerSimpleBeaconUpdateInterface
+ (id)exportedInterface;
+ (id)remoteInterface;
- (NSArray)simpleBeacons;
- (SPBeaconManagerSimpleBeaconUpdateInterface)init;
- (SPBeaconManagerXPCProtocol)proxy;
- (void)_processRemovals:(id)a3;
- (void)dealloc;
- (void)handleReconnection;
- (void)interruptionHandler:(id)a3;
- (void)invalidationHandler:(id)a3;
- (void)receivedSimpleBeaconRemovals:(id)a3;
- (void)receivedSimpleBeaconUpdates:(id)a3;
- (void)removeObservers;
- (void)setSimpleBeaconDifferenceBlock:(id)a3;
- (void)startUpdatingSimpleBeaconsWithContext:(id)a3 completion:(id)a4;
- (void)stopUpdatingSimpleBeaconsWithCompletion:(id)a3;
@end

@implementation SPBeaconManagerSimpleBeaconUpdateInterface

- (SPBeaconManagerSimpleBeaconUpdateInterface)init
{
  v9.receiver = self;
  v9.super_class = SPBeaconManagerSimpleBeaconUpdateInterface;
  v2 = [(SPBeaconManagerSimpleBeaconUpdateInterface *)&v9 init];
  v3 = v2;
  if (v2)
  {
    simpleBeacons = v2->_simpleBeacons;
    v2->_simpleBeacons = MEMORY[0x277CBEBF8];

    v3->_reconnectionUpdate = 0;
    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("com.apple.icloud.seachpartyd.simpleBeaconUpdate", v5);
    serialQueue = v3->_serialQueue;
    v3->_serialQueue = v6;
  }

  return v3;
}

- (void)dealloc
{
  v3 = LogCategory_SimpleBeaconUpdateInterface();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2643D0000, v3, OS_LOG_TYPE_DEFAULT, "SPBeaconManagerSimpleBeaconUpdateInterface: dealloc.", buf, 2u);
  }

  v4.receiver = self;
  v4.super_class = SPBeaconManagerSimpleBeaconUpdateInterface;
  [(SPBeaconManagerSimpleBeaconUpdateInterface *)&v4 dealloc];
}

- (NSArray)simpleBeacons
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__0;
  v11 = __Block_byref_object_dispose__0;
  v12 = 0;
  v3 = [(SPBeaconManagerSimpleBeaconUpdateInterface *)self serialQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __59__SPBeaconManagerSimpleBeaconUpdateInterface_simpleBeacons__block_invoke;
  v6[3] = &unk_279B58D60;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)setSimpleBeaconDifferenceBlock:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = LogCategory_BeaconManager();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136446210;
    v10 = "[SPBeaconManagerSimpleBeaconUpdateInterface setSimpleBeaconDifferenceBlock:]";
    _os_log_impl(&dword_2643D0000, v5, OS_LOG_TYPE_DEFAULT, "SPBeaconManagerSimpleBeaconUpdateInterface: SPI: %{public}s", &v9, 0xCu);
  }

  v6 = _Block_copy(v4);
  collectionDifferenceBlock = self->_collectionDifferenceBlock;
  self->_collectionDifferenceBlock = v6;

  v8 = *MEMORY[0x277D85DE8];
}

- (void)startUpdatingSimpleBeaconsWithContext:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [(SPBeaconManagerSimpleBeaconUpdateInterface *)self serialQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __95__SPBeaconManagerSimpleBeaconUpdateInterface_startUpdatingSimpleBeaconsWithContext_completion___block_invoke;
  v11[3] = &unk_279B58BA8;
  objc_copyWeak(&v14, &location);
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __95__SPBeaconManagerSimpleBeaconUpdateInterface_startUpdatingSimpleBeaconsWithContext_completion___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = LogCategory_BeaconManager();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136446210;
      v7 = "[SPBeaconManagerSimpleBeaconUpdateInterface startUpdatingSimpleBeaconsWithContext:completion:]_block_invoke";
      _os_log_impl(&dword_2643D0000, v3, OS_LOG_TYPE_DEFAULT, "SPBeaconManagerSimpleBeaconUpdateInterface: SPI: %{public}s", &v6, 0xCu);
    }

    objc_storeStrong(WeakRetained + 7, *(a1 + 32));
    v4 = [WeakRetained proxy];
    [v4 startUpdatingSimpleBeaconsWithContext:*(a1 + 32) completion:*(a1 + 40)];
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)stopUpdatingSimpleBeaconsWithCompletion:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = LogCategory_BeaconManager();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v12 = "[SPBeaconManagerSimpleBeaconUpdateInterface stopUpdatingSimpleBeaconsWithCompletion:]";
    _os_log_impl(&dword_2643D0000, v5, OS_LOG_TYPE_DEFAULT, "SPBeaconManagerSimpleBeaconUpdateInterface: SPI: %{public}s", buf, 0xCu);
  }

  [(SPBeaconManagerSimpleBeaconUpdateInterface *)self removeObservers];
  [(SPBeaconManagerSimpleBeaconUpdateInterface *)self setCollectionDifferenceBlock:0];
  v6 = [(SPBeaconManagerSimpleBeaconUpdateInterface *)self session];
  [v6 invalidate];

  [(SPBeaconManagerSimpleBeaconUpdateInterface *)self setSession:0];
  objc_initWeak(buf, self);
  v7 = [(SPBeaconManagerSimpleBeaconUpdateInterface *)self serialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __86__SPBeaconManagerSimpleBeaconUpdateInterface_stopUpdatingSimpleBeaconsWithCompletion___block_invoke;
  block[3] = &unk_279B58D88;
  objc_copyWeak(&v10, buf);
  dispatch_async(v7, block);

  v4[2](v4, 1, 0);
  objc_destroyWeak(&v10);
  objc_destroyWeak(buf);

  v8 = *MEMORY[0x277D85DE8];
}

void __86__SPBeaconManagerSimpleBeaconUpdateInterface_stopUpdatingSimpleBeaconsWithCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained[2];
    WeakRetained[2] = MEMORY[0x277CBEBF8];
    v3 = WeakRetained;

    WeakRetained = v3;
  }
}

- (void)interruptionHandler:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = LogCategory_BeaconManager();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v14 = "[SPBeaconManagerSimpleBeaconUpdateInterface interruptionHandler:]";
    _os_log_impl(&dword_2643D0000, v5, OS_LOG_TYPE_DEFAULT, "SPBeaconManagerSimpleBeaconUpdateInterface: SPI: %{public}s", buf, 0xCu);
  }

  v6 = _Block_copy(self->_collectionDifferenceBlock);
  if (v6)
  {
    v7 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.icloud.searchpartyd.SPBeaconManager.ErrorDomain" code:2 userInfo:0];
    v6[2](v6, 0, v7);
  }

  v8 = [(SPBeaconManagerSimpleBeaconUpdateInterface *)self session];

  if (v8)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __66__SPBeaconManagerSimpleBeaconUpdateInterface_interruptionHandler___block_invoke;
    block[3] = &unk_279B58AE8;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
    v9 = objc_autoreleasePoolPush();
    v10 = [MEMORY[0x277CCAB98] defaultCenter];
    [v10 addObserver:self selector:sel_handleReconnection name:SPSimpleBeaconUpdateInterfaceReconnect object:0];

    objc_autoreleasePoolPop(v9);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __66__SPBeaconManagerSimpleBeaconUpdateInterface_interruptionHandler___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, *(a1 + 32), interfaceReconnectTrampoline, @"SPSimpleBeaconUpdateInterfaceReconnectNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  objc_autoreleasePoolPop(v2);
}

- (void)invalidationHandler:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = LogCategory_BeaconManager();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136446210;
    v9 = "[SPBeaconManagerSimpleBeaconUpdateInterface invalidationHandler:]";
    _os_log_impl(&dword_2643D0000, v4, OS_LOG_TYPE_DEFAULT, "SPBeaconManagerSimpleBeaconUpdateInterface: SPI: %{public}s", &v8, 0xCu);
  }

  collectionDifferenceBlock = self->_collectionDifferenceBlock;
  if (collectionDifferenceBlock)
  {
    v6 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.icloud.searchpartyd.SPBeaconManager.ErrorDomain" code:1 userInfo:0];
    collectionDifferenceBlock[2](collectionDifferenceBlock, 0, v6);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (SPBeaconManagerXPCProtocol)proxy
{
  v3 = [(SPBeaconManagerSimpleBeaconUpdateInterface *)self session];

  if (!v3)
  {
    objc_initWeak(&location, self);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __51__SPBeaconManagerSimpleBeaconUpdateInterface_proxy__block_invoke;
    aBlock[3] = &unk_279B58B10;
    objc_copyWeak(&v21, &location);
    v4 = _Block_copy(aBlock);
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __51__SPBeaconManagerSimpleBeaconUpdateInterface_proxy__block_invoke_2;
    v18 = &unk_279B58B10;
    objc_copyWeak(&v19, &location);
    v5 = _Block_copy(&v15);
    v6 = objc_alloc(MEMORY[0x277D07BA0]);
    v7 = +[SPBeaconManagerSimpleBeaconUpdateInterface exportedInterface];
    v8 = +[SPBeaconManagerSimpleBeaconUpdateInterface remoteInterface];
    v9 = [v6 initWithMachServiceName:@"com.apple.icloud.searchpartyd.beaconmanager.simplebeacon" options:0 exportedObject:self exportedInterface:v7 remoteObjectInterface:v8 interruptionHandler:v4 invalidationHandler:{v5, v15, v16, v17, v18}];

    v10 = [objc_alloc(MEMORY[0x277D07BA8]) initWithServiceDescription:v9];
    [(SPBeaconManagerSimpleBeaconUpdateInterface *)self setSession:v10];

    v11 = [(SPBeaconManagerSimpleBeaconUpdateInterface *)self session];
    [v11 resume];

    objc_destroyWeak(&v19);
    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }

  v12 = [(SPBeaconManagerSimpleBeaconUpdateInterface *)self session];
  v13 = [v12 proxy];

  return v13;
}

void __51__SPBeaconManagerSimpleBeaconUpdateInterface_proxy__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained interruptionHandler:v3];
}

void __51__SPBeaconManagerSimpleBeaconUpdateInterface_proxy__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained invalidationHandler:v3];
}

+ (id)exportedInterface
{
  if (exportedInterface_onceToken_2 != -1)
  {
    +[SPBeaconManagerSimpleBeaconUpdateInterface exportedInterface];
  }

  v3 = exportedInterface_interface_2;

  return v3;
}

void __63__SPBeaconManagerSimpleBeaconUpdateInterface_exportedInterface__block_invoke()
{
  v12[2] = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2875F60A0];
  v1 = exportedInterface_interface_2;
  exportedInterface_interface_2 = v0;

  v2 = exportedInterface_interface_2;
  v3 = MEMORY[0x277CBEB98];
  v12[0] = objc_opt_class();
  v12[1] = objc_opt_class();
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];
  v5 = [v3 setWithArray:v4];
  [v2 setClasses:v5 forSelector:sel_receivedSimpleBeaconUpdates_ argumentIndex:0 ofReply:0];

  v6 = exportedInterface_interface_2;
  v7 = MEMORY[0x277CBEB98];
  v11[0] = objc_opt_class();
  v11[1] = objc_opt_class();
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];
  v9 = [v7 setWithArray:v8];
  [v6 setClasses:v9 forSelector:sel_receivedSimpleBeaconRemovals_ argumentIndex:0 ofReply:0];

  v10 = *MEMORY[0x277D85DE8];
}

+ (id)remoteInterface
{
  if (remoteInterface_onceToken_2 != -1)
  {
    +[SPBeaconManagerSimpleBeaconUpdateInterface remoteInterface];
  }

  v3 = remoteInterface_interface_2;

  return v3;
}

uint64_t __61__SPBeaconManagerSimpleBeaconUpdateInterface_remoteInterface__block_invoke()
{
  remoteInterface_interface_2 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_287606B50];

  return MEMORY[0x2821F96F8]();
}

- (void)receivedSimpleBeaconUpdates:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = LogCategory_BeaconManager();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v12 = "[SPBeaconManagerSimpleBeaconUpdateInterface receivedSimpleBeaconUpdates:]";
    _os_log_impl(&dword_2643D0000, v5, OS_LOG_TYPE_DEFAULT, "SPBeaconManagerSimpleBeaconUpdateInterface: SPI: %{public}s", buf, 0xCu);
  }

  v6 = [(SPBeaconManagerSimpleBeaconUpdateInterface *)self serialQueue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __74__SPBeaconManagerSimpleBeaconUpdateInterface_receivedSimpleBeaconUpdates___block_invoke;
  v9[3] = &unk_279B58C78;
  v9[4] = self;
  v10 = v4;
  v7 = v4;
  dispatch_async(v6, v9);

  v8 = *MEMORY[0x277D85DE8];
}

void __74__SPBeaconManagerSimpleBeaconUpdateInterface_receivedSimpleBeaconUpdates___block_invoke(uint64_t a1)
{
  v1 = a1;
  v62 = *MEMORY[0x277D85DE8];
  v42 = a1;
  if ([*(a1 + 32) reconnectionUpdate])
  {
    [*(v1 + 32) setReconnectionUpdate:0];
    v2 = [*(v1 + 40) fm_map:&__block_literal_global_186];
    v3 = objc_opt_new();
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v4 = *(*(v1 + 32) + 16);
    v5 = [v4 countByEnumeratingWithState:&v52 objects:v61 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v53;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v53 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v52 + 1) + 8 * i);
          v10 = [v9 identifier];
          v11 = [v2 containsObject:v10];

          if ((v11 & 1) == 0)
          {
            v12 = [v9 identifier];
            [v3 addObject:v12];
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v52 objects:v61 count:16];
      }

      while (v6);
    }

    v1 = v42;
    [*(v42 + 32) _processRemovals:v3];
  }

  v44 = *(*(v1 + 32) + 16);
  v45 = [MEMORY[0x277CBEBF8] mutableCopy];
  v13 = [v44 count];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  obj = *(v1 + 40);
  v14 = [obj countByEnumeratingWithState:&v48 objects:v60 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v49;
    v17 = v47;
    v18 = 0x277CCA000uLL;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v49 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v48 + 1) + 8 * j);
        v46[0] = MEMORY[0x277D85DD0];
        v46[1] = 3221225472;
        v47[0] = __74__SPBeaconManagerSimpleBeaconUpdateInterface_receivedSimpleBeaconUpdates___block_invoke_3;
        v47[1] = &unk_279B58DD0;
        v47[2] = v20;
        v21 = [v44 indexOfObjectPassingTest:{v46, v42}];
        v22 = objc_alloc(*(v18 + 3048));
        if (v21 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v23 = [v22 initWithObject:v20 type:0 index:v13];
          [v45 addObject:v23];

          v24 = LogCategory_BeaconManager();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            v25 = [v20 identifier];
            *buf = 134218242;
            v57 = v13;
            v58 = 2112;
            v59 = v25;
            _os_log_impl(&dword_2643D0000, v24, OS_LOG_TYPE_DEFAULT, "SimpleBeaconUpdate receivedSimpleBeaconUpdates. Change: Insert, index: %lu, id: %@.", buf, 0x16u);
          }

          ++v13;
        }

        else
        {
          v26 = v13;
          v27 = v15;
          v28 = v17;
          v29 = [v22 initWithObject:v20 type:1 index:v21];
          [v45 addObject:v29];

          v30 = [objc_alloc(*(v18 + 3048)) initWithObject:v20 type:0 index:v21];
          [v45 addObject:v30];

          v31 = LogCategory_BeaconManager();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            v32 = [v20 identifier];
            *buf = 134218242;
            v57 = v21;
            v58 = 2112;
            v59 = v32;
            _os_log_impl(&dword_2643D0000, v31, OS_LOG_TYPE_DEFAULT, "SimpleBeaconUpdate receivedSimpleBeaconUpdates. Change: Remove, index: %lu, id: %@.", buf, 0x16u);
          }

          v33 = LogCategory_BeaconManager();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            v34 = [v20 identifier];
            *buf = 134218242;
            v57 = v21;
            v58 = 2112;
            v59 = v34;
            _os_log_impl(&dword_2643D0000, v33, OS_LOG_TYPE_DEFAULT, "SimpleBeaconUpdate receivedSimpleBeaconUpdates. Change: Insert, index: %lu, id: %@.", buf, 0x16u);
          }

          v17 = v28;
          v15 = v27;
          v13 = v26;
          v18 = 0x277CCA000;
        }
      }

      v15 = [obj countByEnumeratingWithState:&v48 objects:v60 count:16];
    }

    while (v15);
  }

  v35 = [objc_alloc(MEMORY[0x277CCABF0]) initWithChanges:v45];
  v36 = [v44 arrayByApplyingDifference:v35];
  v37 = *(v42 + 32);
  v38 = *(v37 + 16);
  *(v37 + 16) = v36;

  v39 = [*(v42 + 32) collectionDifferenceBlock];

  if (v39)
  {
    v40 = [*(v42 + 32) collectionDifferenceBlock];
    (v40)[2](v40, v35, 0);
  }

  v41 = *MEMORY[0x277D85DE8];
}

uint64_t __74__SPBeaconManagerSimpleBeaconUpdateInterface_receivedSimpleBeaconUpdates___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 identifier];
  v7 = [*(a1 + 32) identifier];
  v8 = [v6 isEqual:v7];

  *a4 = v8;
  return v8;
}

- (void)receivedSimpleBeaconRemovals:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = LogCategory_BeaconManager();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v12 = "[SPBeaconManagerSimpleBeaconUpdateInterface receivedSimpleBeaconRemovals:]";
    _os_log_impl(&dword_2643D0000, v5, OS_LOG_TYPE_DEFAULT, "SPBeaconManagerSimpleBeaconUpdateInterface: SPI: %{public}s", buf, 0xCu);
  }

  v6 = [(SPBeaconManagerSimpleBeaconUpdateInterface *)self serialQueue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __75__SPBeaconManagerSimpleBeaconUpdateInterface_receivedSimpleBeaconRemovals___block_invoke;
  v9[3] = &unk_279B58C78;
  v9[4] = self;
  v10 = v4;
  v7 = v4;
  dispatch_async(v6, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_processRemovals:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SPBeaconManagerSimpleBeaconUpdateInterface *)self serialQueue];
  dispatch_assert_queue_V2(v5);

  if ([v4 count])
  {
    v24 = self;
    v6 = self->_simpleBeacons;
    v26 = [MEMORY[0x277CBEBF8] mutableCopy];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v25 = v4;
    obj = v4;
    v7 = [obj countByEnumeratingWithState:&v29 objects:v37 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v30;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v30 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v29 + 1) + 8 * i);
          v28[0] = MEMORY[0x277D85DD0];
          v28[1] = 3221225472;
          v28[2] = __63__SPBeaconManagerSimpleBeaconUpdateInterface__processRemovals___block_invoke;
          v28[3] = &unk_279B58DD0;
          v28[4] = v11;
          v12 = [(NSArray *)v6 indexOfObjectPassingTest:v28, v24];
          if (v12 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v13 = LogCategory_BeaconManager();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v34 = v11;
              _os_log_impl(&dword_2643D0000, v13, OS_LOG_TYPE_DEFAULT, "SimpleBeaconUpdate receivedSimpleBeaconRemovals. Change: none, index: none, id: %@.", buf, 0xCu);
            }
          }

          else
          {
            v14 = v12;
            v15 = objc_alloc(MEMORY[0x277CCABE8]);
            v16 = [(NSArray *)v6 objectAtIndexedSubscript:v14];
            v17 = [v15 initWithObject:v16 type:1 index:v14];
            [v26 addObject:v17];

            v13 = LogCategory_BeaconManager();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134218242;
              v34 = v14;
              v35 = 2112;
              v36 = v11;
              _os_log_impl(&dword_2643D0000, v13, OS_LOG_TYPE_DEFAULT, "SimpleBeaconUpdate receivedSimpleBeaconRemovals. Change: remove, index: %lu, id: %@.", buf, 0x16u);
            }
          }
        }

        v8 = [obj countByEnumeratingWithState:&v29 objects:v37 count:16];
      }

      while (v8);
    }

    v18 = [objc_alloc(MEMORY[0x277CCABF0]) initWithChanges:v26];
    v19 = [(NSArray *)v6 arrayByApplyingDifference:v18];
    simpleBeacons = v24->_simpleBeacons;
    v24->_simpleBeacons = v19;

    v21 = [(SPBeaconManagerSimpleBeaconUpdateInterface *)v24 collectionDifferenceBlock];

    if (v21)
    {
      v22 = [(SPBeaconManagerSimpleBeaconUpdateInterface *)v24 collectionDifferenceBlock];
      (v22)[2](v22, v18, 0);
    }

    v4 = v25;
  }

  v23 = *MEMORY[0x277D85DE8];
}

uint64_t __63__SPBeaconManagerSimpleBeaconUpdateInterface__processRemovals___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 identifier];
  v7 = [v6 isEqual:*(a1 + 32)];

  *a4 = v7;
  return v7;
}

- (void)removeObservers
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = LogCategory_BeaconManager();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v9 = "[SPBeaconManagerSimpleBeaconUpdateInterface removeObservers]";
    _os_log_impl(&dword_2643D0000, v3, OS_LOG_TYPE_DEFAULT, "SPBeaconManagerSimpleBeaconUpdateInterface: SPI: %{public}s", buf, 0xCu);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__SPBeaconManagerSimpleBeaconUpdateInterface_removeObservers__block_invoke;
  block[3] = &unk_279B58AE8;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
  v4 = objc_autoreleasePoolPush();
  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 removeObserver:self name:SPSimpleBeaconUpdateInterfaceReconnect object:0];

  objc_autoreleasePoolPop(v4);
  v6 = *MEMORY[0x277D85DE8];
}

void __61__SPBeaconManagerSimpleBeaconUpdateInterface_removeObservers__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, *(a1 + 32), @"SPSimpleBeaconUpdateInterfaceReconnectNotification", 0);

  objc_autoreleasePoolPop(v2);
}

- (void)handleReconnection
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = LogCategory_BeaconManager();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v8 = "[SPBeaconManagerSimpleBeaconUpdateInterface handleReconnection]";
    _os_log_impl(&dword_2643D0000, v3, OS_LOG_TYPE_DEFAULT, "SPBeaconManagerSimpleBeaconUpdateInterface: SPI: %{public}s", buf, 0xCu);
  }

  [(SPBeaconManagerSimpleBeaconUpdateInterface *)self removeObservers];
  v4 = [(SPBeaconManagerSimpleBeaconUpdateInterface *)self serialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__SPBeaconManagerSimpleBeaconUpdateInterface_handleReconnection__block_invoke;
  block[3] = &unk_279B58AE8;
  block[4] = self;
  dispatch_async(v4, block);

  v5 = *MEMORY[0x277D85DE8];
}

void __64__SPBeaconManagerSimpleBeaconUpdateInterface_handleReconnection__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v3 = [v2 copy];

  [*(a1 + 32) setReconnectionUpdate:1];
  [*(a1 + 32) startUpdatingSimpleBeaconsWithContext:v3 completion:&__block_literal_global_193];
}

void __64__SPBeaconManagerSimpleBeaconUpdateInterface_handleReconnection__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = LogCategory_BeaconManager();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __64__SPBeaconManagerSimpleBeaconUpdateInterface_handleReconnection__block_invoke_2_cold_1(v3, v4);
  }
}

void __64__SPBeaconManagerSimpleBeaconUpdateInterface_handleReconnection__block_invoke_2_cold_1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 localizedDescription];
  v5 = 138412290;
  v6 = v3;
  _os_log_error_impl(&dword_2643D0000, a2, OS_LOG_TYPE_ERROR, "Failed reconnecting to daemon after retry: %@.", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

@end