@interface SPCBPeripheralManager
+ (id)remoteInterface;
- (SPCBPeripheralManagementXPCProtocol)proxy;
- (SPCBPeripheralManager)init;
- (double)timeIntervalToNextFireDateFromDate:(id)date;
- (id)_enforceRateLimit;
- (id)descriptionForVendorIdentifierList:(id)list;
- (void)enableSystemWakesForUpdate:(BOOL)update completion:(id)completion;
- (void)fetch;
- (void)handleDarwinNotificationNamed:(id)named;
- (void)interruptionHandler:(id)handler;
- (void)invalidationHandler:(id)handler;
- (void)pairingAgent:(id)agent peerDidCompletePairing:(id)pairing;
- (void)pairingAgent:(id)agent peerDidUnpair:(id)unpair;
- (void)startSessionForUserIdentifier:(id)identifier bundleId:(id)id vendorIdentifierList:(id)list completion:(id)completion;
- (void)stopSessionForUserIdentifier:(id)identifier bundleId:(id)id completion:(id)completion;
- (void)successfulConnectionForPeripheral:(id)peripheral leMAC:(id)c ltk:(id)ltk completion:(id)completion;
- (void)timerFiredForActivity:(id)activity;
@end

@implementation SPCBPeripheralManager

- (void)handleDarwinNotificationNamed:(id)named
{
  v9 = *MEMORY[0x277D85DE8];
  namedCopy = named;
  v5 = LogCategory_CBPeripheralManagement();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = namedCopy;
    _os_log_impl(&dword_2643D0000, v5, OS_LOG_TYPE_DEFAULT, "SPCBPeripheralManager: handleDarwinNotificationNamed %{public}@: ", &v7, 0xCu);
  }

  [(SPCBPeripheralManager *)self fetch];
  v6 = *MEMORY[0x277D85DE8];
}

- (SPCBPeripheralManager)init
{
  v38.receiver = self;
  v38.super_class = SPCBPeripheralManager;
  v2 = [(SPCBPeripheralManager *)&v38 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.searchparty.SPCBPeripheralManagement", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("com.apple.searchparty.SPCBPeripheralManagement.callback", v6);
    callbackQueue = v2->_callbackQueue;
    v2->_callbackQueue = v7;

    v9 = [objc_alloc(MEMORY[0x277D07B78]) initWithQueue:v2->_queue];
    queueSynchronizer = v2->_queueSynchronizer;
    v2->_queueSynchronizer = v9;

    v11 = [objc_alloc(MEMORY[0x277D07B88]) initWithFillRate:10.0 capacity:50.0];
    tokenBucket = v2->_tokenBucket;
    v2->_tokenBucket = v11;

    v13 = objc_opt_new();
    pendingPairingIdentifiers = v2->_pendingPairingIdentifiers;
    v2->_pendingPairingIdentifiers = v13;

    v15 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v16 = dispatch_queue_attr_make_with_qos_class(v15, QOS_CLASS_USER_INITIATED, -1);

    v17 = dispatch_queue_create("com.apple.searchparty.SPCBPeerDelegate", v16);
    cbQueue = v2->_cbQueue;
    v2->_cbQueue = v17;

    v19 = v2->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __29__SPCBPeripheralManager_init__block_invoke;
    block[3] = &unk_279B58AE8;
    v20 = v2;
    v37 = v20;
    dispatch_async(v19, block);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __29__SPCBPeripheralManager_init__block_invoke_2;
    aBlock[3] = &unk_279B58C28;
    v21 = v20;
    v35 = v21;
    v22 = _Block_copy(aBlock);
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __29__SPCBPeripheralManager_init__block_invoke_3;
    v32[3] = &unk_279B58C28;
    v23 = v21;
    v33 = v23;
    v24 = _Block_copy(v32);
    v25 = objc_alloc(MEMORY[0x277D07BA0]);
    v26 = +[SPCBPeripheralManager remoteInterface];
    v27 = [v25 initWithMachServiceName:@"com.apple.searchparty.managedperipheral" options:0 remoteObjectInterface:v26 interruptionHandler:v22 invalidationHandler:v24];
    serviceDescription = v23->_serviceDescription;
    v23->_serviceDescription = v27;

    v29 = objc_alloc_init(MEMORY[0x277CBEB38]);
    sessionMetadata = v23->_sessionMetadata;
    v23->_sessionMetadata = v29;
  }

  return v2;
}

void __29__SPCBPeripheralManager_init__block_invoke(uint64_t a1)
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v3 = *(a1 + 32);

  CFNotificationCenterAddObserver(DarwinNotifyCenter, v3, observerTrampoline, @"SPManagedCBPeripheralChangedNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

- (void)startSessionForUserIdentifier:(id)identifier bundleId:(id)id vendorIdentifierList:(id)list completion:(id)completion
{
  identifierCopy = identifier;
  idCopy = id;
  listCopy = list;
  completionCopy = completion;
  queue = [(SPCBPeripheralManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __96__SPCBPeripheralManager_startSessionForUserIdentifier_bundleId_vendorIdentifierList_completion___block_invoke;
  block[3] = &unk_279B59FA0;
  v22 = listCopy;
  v23 = completionCopy;
  block[4] = self;
  v20 = identifierCopy;
  v21 = idCopy;
  v15 = listCopy;
  v16 = idCopy;
  v17 = identifierCopy;
  v18 = completionCopy;
  dispatch_async(queue, block);
}

void __96__SPCBPeripheralManager_startSessionForUserIdentifier_bundleId_vendorIdentifierList_completion___block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x277D85DE8];
  v2 = _os_feature_enabled_impl();
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = [v3 _enforceRateLimit];
    if (v4)
    {
      v5 = [*(a1 + 32) callbackQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __96__SPCBPeripheralManager_startSessionForUserIdentifier_bundleId_vendorIdentifierList_completion___block_invoke_14;
      block[3] = &unk_279B59398;
      v29 = *(a1 + 64);
      v28 = v4;
      dispatch_async(v5, block);

      v6 = v29;
    }

    else
    {
      v6 = [[SPCBPeripheralManagerSessionKey alloc] initWithUserIdentifier:*(a1 + 40) bundleIdentifier:*(a1 + 48)];
      v8 = LogCategory_CBPeripheralManagement();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [(SPCBPeripheralManagerSessionKey *)v6 userIdentifier];
        v10 = [(SPCBPeripheralManagerSessionKey *)v6 bundleId];
        v11 = [*(a1 + 32) descriptionForVendorIdentifierList:*(a1 + 56)];
        *buf = 141558786;
        v33 = 1752392040;
        v34 = 2112;
        v35 = v9;
        v36 = 2114;
        v37 = v10;
        v38 = 2114;
        v39 = v11;
        _os_log_impl(&dword_2643D0000, v8, OS_LOG_TYPE_DEFAULT, "SPCBPeripheralManager: Created session for <%{mask.hash}@:%{public}@>: %{public}@", buf, 0x2Au);
      }

      v12 = *(a1 + 56);
      v13 = [*(a1 + 32) sessionMetadata];
      [v13 setObject:v12 forKeyedSubscript:v6];

      v14 = [*(a1 + 32) callbackQueue];
      v22 = MEMORY[0x277D85DD0];
      v23 = 3221225472;
      v24 = __96__SPCBPeripheralManager_startSessionForUserIdentifier_bundleId_vendorIdentifierList_completion___block_invoke_16;
      v25 = &unk_279B58EF8;
      v26 = *(a1 + 64);
      dispatch_async(v14, &v22);

      [*(a1 + 32) fetch];
      if (*MEMORY[0x277CBE0D0])
      {
        v15 = objc_alloc(MEMORY[0x277CBDFF8]);
        v16 = [*(a1 + 32) queue];
        v17 = [v15 initWithDelegate:0 queue:v16];
        [*(a1 + 32) setCentralManager:v17];

        v18 = *(a1 + 32);
        v19 = [v18 centralManager];
        v20 = [v19 sharedPairingAgent];
        [v20 setDelegate:v18];
      }
    }
  }

  else
  {
    v7 = [v3 callbackQueue];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __96__SPCBPeripheralManager_startSessionForUserIdentifier_bundleId_vendorIdentifierList_completion___block_invoke_2;
    v30[3] = &unk_279B58EF8;
    v31 = *(a1 + 64);
    dispatch_async(v7, v30);

    v4 = v31;
  }

  v21 = *MEMORY[0x277D85DE8];
}

void __96__SPCBPeripheralManager_startSessionForUserIdentifier_bundleId_vendorIdentifierList_completion___block_invoke_2(uint64_t a1)
{
  v2 = LogCategory_CBPeripheralManagement();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __96__SPCBPeripheralManager_startSessionForUserIdentifier_bundleId_vendorIdentifierList_completion___block_invoke_2_cold_1();
  }

  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.spowner.SPCBPeripheralErrorDomain" code:1 userInfo:0];
  (*(v3 + 16))(v3, v4);
}

- (void)stopSessionForUserIdentifier:(id)identifier bundleId:(id)id completion:(id)completion
{
  identifierCopy = identifier;
  idCopy = id;
  completionCopy = completion;
  queue = [(SPCBPeripheralManager *)self queue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __74__SPCBPeripheralManager_stopSessionForUserIdentifier_bundleId_completion___block_invoke;
  v15[3] = &unk_279B59FC8;
  v15[4] = self;
  v16 = identifierCopy;
  v17 = idCopy;
  v18 = completionCopy;
  v12 = idCopy;
  v13 = identifierCopy;
  v14 = completionCopy;
  dispatch_async(queue, v15);
}

void __74__SPCBPeripheralManager_stopSessionForUserIdentifier_bundleId_completion___block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x277D85DE8];
  v2 = _os_feature_enabled_impl();
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = [v3 _enforceRateLimit];
    if (v4)
    {
      v5 = [*(a1 + 32) callbackQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __74__SPCBPeripheralManager_stopSessionForUserIdentifier_bundleId_completion___block_invoke_18;
      block[3] = &unk_279B59398;
      v24 = *(a1 + 56);
      v23 = v4;
      dispatch_async(v5, block);

      v6 = v24;
    }

    else
    {
      v6 = [[SPCBPeripheralManagerSessionKey alloc] initWithUserIdentifier:*(a1 + 40) bundleIdentifier:*(a1 + 48)];
      v8 = LogCategory_CBPeripheralManagement();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [(SPCBPeripheralManagerSessionKey *)v6 userIdentifier];
        v10 = [(SPCBPeripheralManagerSessionKey *)v6 bundleId];
        *buf = 141558530;
        v28 = 1752392040;
        v29 = 2112;
        v30 = v9;
        v31 = 2114;
        v32 = v10;
        _os_log_impl(&dword_2643D0000, v8, OS_LOG_TYPE_DEFAULT, "SPCBPeripheralManager: Deleted session for <%{mask.hash}@:%{public}@>", buf, 0x20u);
      }

      v11 = [*(a1 + 32) sessionMetadata];
      [v11 setObject:0 forKeyedSubscript:v6];

      v12 = [*(a1 + 32) sessionMetadata];
      v13 = [v12 count];

      v14 = *(a1 + 32);
      if (v13)
      {
        [v14 fetch];
      }

      else
      {
        v15 = [v14 peripheralsUpdatedCallback];

        if (v15)
        {
          v16 = [*(a1 + 32) callbackQueue];
          v21[0] = MEMORY[0x277D85DD0];
          v21[1] = 3221225472;
          v21[2] = __74__SPCBPeripheralManager_stopSessionForUserIdentifier_bundleId_completion___block_invoke_19;
          v21[3] = &unk_279B58AE8;
          v21[4] = *(a1 + 32);
          dispatch_async(v16, v21);
        }

        else
        {
          v16 = LogCategory_CBPeripheralManagement();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            __74__SPCBPeripheralManager_stopSessionForUserIdentifier_bundleId_completion___block_invoke_cold_1();
          }
        }
      }

      v17 = [*(a1 + 32) callbackQueue];
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __74__SPCBPeripheralManager_stopSessionForUserIdentifier_bundleId_completion___block_invoke_20;
      v19[3] = &unk_279B58EF8;
      v20 = *(a1 + 56);
      dispatch_async(v17, v19);
    }
  }

  else
  {
    v7 = [v3 callbackQueue];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __74__SPCBPeripheralManager_stopSessionForUserIdentifier_bundleId_completion___block_invoke_2;
    v25[3] = &unk_279B58EF8;
    v26 = *(a1 + 56);
    dispatch_async(v7, v25);

    v4 = v26;
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __74__SPCBPeripheralManager_stopSessionForUserIdentifier_bundleId_completion___block_invoke_2(uint64_t a1)
{
  v2 = LogCategory_CBPeripheralManagement();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __96__SPCBPeripheralManager_startSessionForUserIdentifier_bundleId_vendorIdentifierList_completion___block_invoke_2_cold_1();
  }

  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.spowner.SPCBPeripheralErrorDomain" code:1 userInfo:0];
  (*(v3 + 16))(v3, v4);
}

void __74__SPCBPeripheralManager_stopSessionForUserIdentifier_bundleId_completion___block_invoke_19(uint64_t a1)
{
  v1 = [*(a1 + 32) peripheralsUpdatedCallback];
  v1[2](v1, MEMORY[0x277CBEBF8]);
}

- (void)enableSystemWakesForUpdate:(BOOL)update completion:(id)completion
{
  completionCopy = completion;
  queue = [(SPCBPeripheralManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__SPCBPeripheralManager_enableSystemWakesForUpdate_completion___block_invoke;
  block[3] = &unk_279B59FF0;
  updateCopy = update;
  block[4] = self;
  v10 = completionCopy;
  v8 = completionCopy;
  dispatch_async(queue, block);
}

void __63__SPCBPeripheralManager_enableSystemWakesForUpdate_completion___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = LogCategory_CBPeripheralManagement();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 48);
    *buf = 67109120;
    v9 = v3;
    _os_log_impl(&dword_2643D0000, v2, OS_LOG_TYPE_DEFAULT, "SPCBPeripheralManager: enableSystemWakesForUpdate: %d", buf, 8u);
  }

  [*(a1 + 32) setEnableSystemWakes:*(a1 + 48)];
  v4 = [*(a1 + 32) callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__SPCBPeripheralManager_enableSystemWakesForUpdate_completion___block_invoke_21;
  block[3] = &unk_279B58EF8;
  v7 = *(a1 + 40);
  dispatch_async(v4, block);

  v5 = *MEMORY[0x277D85DE8];
}

- (void)successfulConnectionForPeripheral:(id)peripheral leMAC:(id)c ltk:(id)ltk completion:(id)completion
{
  peripheralCopy = peripheral;
  cCopy = c;
  ltkCopy = ltk;
  completionCopy = completion;
  queue = [(SPCBPeripheralManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __80__SPCBPeripheralManager_successfulConnectionForPeripheral_leMAC_ltk_completion___block_invoke;
  block[3] = &unk_279B59FA0;
  v22 = cCopy;
  v23 = completionCopy;
  block[4] = self;
  v20 = peripheralCopy;
  v21 = ltkCopy;
  v15 = cCopy;
  v16 = ltkCopy;
  v17 = peripheralCopy;
  v18 = completionCopy;
  dispatch_async(queue, block);
}

void __80__SPCBPeripheralManager_successfulConnectionForPeripheral_leMAC_ltk_completion___block_invoke(uint64_t a1)
{
  v2 = LogCategory_CBPeripheralManagement();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2643D0000, v2, OS_LOG_TYPE_DEFAULT, "SPCBPeripheralManager: successfulConnectionForPeripheral:leMAC:ltk:", buf, 2u);
  }

  v3 = _os_feature_enabled_impl();
  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = [v4 _enforceRateLimit];
    if (v5)
    {
      v6 = [*(a1 + 32) callbackQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __80__SPCBPeripheralManager_successfulConnectionForPeripheral_leMAC_ltk_completion___block_invoke_23;
      block[3] = &unk_279B59398;
      v22 = *(a1 + 64);
      v5 = v5;
      v21 = v5;
      dispatch_async(v6, block);

      v7 = v22;
    }

    else
    {
      v9 = [*(a1 + 40) ltkIndexMap];
      v10 = [v9 objectForKeyedSubscript:*(a1 + 48)];
      v11 = [v10 unsignedLongLongValue];

      v12 = [*(a1 + 32) proxy];
      v13 = [*(a1 + 40) userIdentifier];
      v14 = [*(a1 + 40) beaconIdentifier];
      v15 = [*(a1 + 40) primaryIndex];
      v17 = *(a1 + 48);
      v16 = *(a1 + 56);
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __80__SPCBPeripheralManager_successfulConnectionForPeripheral_leMAC_ltk_completion___block_invoke_2;
      v18[3] = &unk_279B5A018;
      v18[4] = *(a1 + 32);
      v19 = *(a1 + 64);
      [v12 successfulConnectionForUserIdentifier:v13 beaconIdentifier:v14 primaryIndex:v15 leMAC:v16 ltkIndex:v11 ltk:v17 completion:v18];

      v7 = v19;
    }
  }

  else
  {
    v8 = [v4 callbackQueue];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __80__SPCBPeripheralManager_successfulConnectionForPeripheral_leMAC_ltk_completion___block_invoke_22;
    v23[3] = &unk_279B58EF8;
    v24 = *(a1 + 64);
    dispatch_async(v8, v23);

    v5 = v24;
  }
}

void __80__SPCBPeripheralManager_successfulConnectionForPeripheral_leMAC_ltk_completion___block_invoke_22(uint64_t a1)
{
  v2 = LogCategory_CBPeripheralManagement();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __96__SPCBPeripheralManager_startSessionForUserIdentifier_bundleId_vendorIdentifierList_completion___block_invoke_2_cold_1();
  }

  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.spowner.SPCBPeripheralErrorDomain" code:1 userInfo:0];
  (*(v3 + 16))(v3, v4);
}

void __80__SPCBPeripheralManager_successfulConnectionForPeripheral_leMAC_ltk_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) callbackQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __80__SPCBPeripheralManager_successfulConnectionForPeripheral_leMAC_ltk_completion___block_invoke_3;
  v7[3] = &unk_279B59398;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

- (void)pairingAgent:(id)agent peerDidCompletePairing:(id)pairing
{
  v14 = *MEMORY[0x277D85DE8];
  pairingCopy = pairing;
  v6 = LogCategory_CBPeripheralManagement();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v13 = pairingCopy;
    _os_log_impl(&dword_2643D0000, v6, OS_LOG_TYPE_DEFAULT, "SPCBPeripheralManager: pairingAgent:peerDidCompletePairing %{public}@", buf, 0xCu);
  }

  cbQueue = [(SPCBPeripheralManager *)self cbQueue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __61__SPCBPeripheralManager_pairingAgent_peerDidCompletePairing___block_invoke;
  v10[3] = &unk_279B58C78;
  v10[4] = self;
  v11 = pairingCopy;
  v8 = pairingCopy;
  dispatch_async(cbQueue, v10);

  v9 = *MEMORY[0x277D85DE8];
}

void __61__SPCBPeripheralManager_pairingAgent_peerDidCompletePairing___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) pendingPairingIdentifiers];
  v3 = [*(a1 + 40) identifier];
  v4 = [v2 containsObject:v3];

  if ((v4 & 1) == 0)
  {
    v5 = [*(a1 + 32) pendingPairingIdentifiers];
    v6 = [*(a1 + 40) identifier];
    [v5 addObject:v6];

    v7 = [*(a1 + 32) proxy];
    v8 = [*(a1 + 40) identifier];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __61__SPCBPeripheralManager_pairingAgent_peerDidCompletePairing___block_invoke_2;
    v10[3] = &unk_279B5A040;
    v9 = *(a1 + 40);
    v10[4] = *(a1 + 32);
    v11 = v9;
    [v7 pairLowEnergyAccessoryWithIdentifier:v8 completion:v10];
  }
}

void __61__SPCBPeripheralManager_pairingAgent_peerDidCompletePairing___block_invoke_2(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = LogCategory_CBPeripheralManagement();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v8 = 138543362;
      v9 = v3;
      _os_log_impl(&dword_2643D0000, v4, OS_LOG_TYPE_DEFAULT, "SPCBPeripheralManager: pairLowEnergyAccessory did complete with error %{public}@", &v8, 0xCu);
    }
  }

  else
  {
    if (v5)
    {
      LOWORD(v8) = 0;
      _os_log_impl(&dword_2643D0000, v4, OS_LOG_TYPE_DEFAULT, "SPCBPeripheralManager: pairLowEnergyAccessory completed successfully!", &v8, 2u);
    }

    v4 = [*(a1 + 32) pendingPairingIdentifiers];
    v6 = [*(a1 + 40) identifier];
    [v4 removeObject:v6];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)pairingAgent:(id)agent peerDidUnpair:(id)unpair
{
  v14 = *MEMORY[0x277D85DE8];
  unpairCopy = unpair;
  v6 = LogCategory_CBPeripheralManagement();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v13 = unpairCopy;
    _os_log_impl(&dword_2643D0000, v6, OS_LOG_TYPE_DEFAULT, "SPCBPeripheralManager: pairingAgent:peerDidUnpair %{public}@", buf, 0xCu);
  }

  cbQueue = [(SPCBPeripheralManager *)self cbQueue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __52__SPCBPeripheralManager_pairingAgent_peerDidUnpair___block_invoke;
  v10[3] = &unk_279B58C78;
  v10[4] = self;
  v11 = unpairCopy;
  v8 = unpairCopy;
  dispatch_async(cbQueue, v10);

  v9 = *MEMORY[0x277D85DE8];
}

void __52__SPCBPeripheralManager_pairingAgent_peerDidUnpair___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) proxy];
  v2 = [*(a1 + 40) identifier];
  [v3 unpairLowEnergyAccessoryWithIdentifier:v2 completion:&__block_literal_global_16];
}

void __52__SPCBPeripheralManager_pairingAgent_peerDidUnpair___block_invoke_2(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = LogCategory_CBPeripheralManagement();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      v9 = 138543362;
      v10 = v2;
      v5 = "SPCBPeripheralManager: unpairLowEnergyAccessory did complete with error %{public}@";
      v6 = v3;
      v7 = 12;
LABEL_6:
      _os_log_impl(&dword_2643D0000, v6, OS_LOG_TYPE_DEFAULT, v5, &v9, v7);
    }
  }

  else if (v4)
  {
    LOWORD(v9) = 0;
    v5 = "SPCBPeripheralManager: unpairLowEnergyAccessory completed successfully!";
    v6 = v3;
    v7 = 2;
    goto LABEL_6;
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)interruptionHandler:(id)handler
{
  v8 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v4 = LogCategory_CBPeripheralManagement();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = handlerCopy;
    _os_log_impl(&dword_2643D0000, v4, OS_LOG_TYPE_DEFAULT, "SPCBPeripheralManager: interruptionHandler %{public}@", &v6, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)invalidationHandler:(id)handler
{
  v9 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v5 = LogCategory_CBPeripheralManagement();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = handlerCopy;
    _os_log_impl(&dword_2643D0000, v5, OS_LOG_TYPE_DEFAULT, "SPCBPeripheralManager: invalidationHandler %{public}@", &v7, 0xCu);
  }

  [(SPCBPeripheralManager *)self setSession:0];
  v6 = *MEMORY[0x277D85DE8];
}

- (SPCBPeripheralManagementXPCProtocol)proxy
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__5;
  v11 = __Block_byref_object_dispose__5;
  v12 = 0;
  queueSynchronizer = [(SPCBPeripheralManager *)self queueSynchronizer];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __30__SPCBPeripheralManager_proxy__block_invoke;
  v6[3] = &unk_279B594E0;
  v6[4] = self;
  v6[5] = &v7;
  [queueSynchronizer conditionalSync:v6];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __30__SPCBPeripheralManager_proxy__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) session];

  if (!v2)
  {
    v3 = objc_alloc(MEMORY[0x277D07BA8]);
    v4 = [*(a1 + 32) serviceDescription];
    v5 = [v3 initWithServiceDescription:v4];
    [*(a1 + 32) setSession:v5];

    v6 = LogCategory_CBPeripheralManagement();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [*(a1 + 32) serviceDescription];
      v8 = [v7 machService];
      v15 = 138543362;
      v16 = v8;
      _os_log_impl(&dword_2643D0000, v6, OS_LOG_TYPE_DEFAULT, "SPCBPeripheralManager: Establishing XPC connection to %{public}@", &v15, 0xCu);
    }

    v9 = [*(a1 + 32) session];
    [v9 resume];
  }

  v10 = [*(a1 + 32) session];
  v11 = [v10 proxy];
  v12 = *(*(a1 + 40) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;

  v14 = *MEMORY[0x277D85DE8];
}

+ (id)remoteInterface
{
  if (remoteInterface_onceToken_8 != -1)
  {
    +[SPCBPeripheralManager remoteInterface];
  }

  v3 = remoteInterface_interface_7;

  return v3;
}

uint64_t __40__SPCBPeripheralManager_remoteInterface__block_invoke()
{
  remoteInterface_interface_7 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_287606C10];

  return MEMORY[0x2821F96F8]();
}

- (id)descriptionForVendorIdentifierList:(id)list
{
  v3 = [list fm_map:&__block_literal_global_84];
  v4 = MEMORY[0x277CCACA8];
  v5 = [v3 componentsJoinedByString:{@", "}];
  v6 = [v4 stringWithFormat:@"[%@]", v5];

  return v6;
}

- (double)timeIntervalToNextFireDateFromDate:(id)date
{
  dateCopy = date;
  [dateCopy timeIntervalSinceReferenceDate];
  v5 = ceil(v4 / 900.0);
  [dateCopy timeIntervalSinceReferenceDate];
  v7 = v6;

  return -(v7 - v5 * 900.0);
}

- (void)timerFiredForActivity:(id)activity
{
  activityCopy = activity;
  queueSynchronizer = [(SPCBPeripheralManager *)self queueSynchronizer];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__SPCBPeripheralManager_timerFiredForActivity___block_invoke;
  v7[3] = &unk_279B58C78;
  v8 = activityCopy;
  selfCopy = self;
  v6 = activityCopy;
  [queueSynchronizer conditionalSync:v7];
}

uint64_t __47__SPCBPeripheralManager_timerFiredForActivity___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = LogCategory_CBPeripheralManagement();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) name];
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&dword_2643D0000, v2, OS_LOG_TYPE_DEFAULT, "SPCBPeripheralManager: timerFired: %{public}@", &v6, 0xCu);
  }

  [*(a1 + 40) fetch];
  [*(a1 + 40) setForceUpdateCriteria:1];
  result = [*(a1 + 32) updateCriteria];
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)fetch
{
  v12 = *MEMORY[0x277D85DE8];
  date = [MEMORY[0x277CBEAA8] date];
  v4 = LogCategory_CBPeripheralManagement();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v11 = date;
    _os_log_impl(&dword_2643D0000, v4, OS_LOG_TYPE_DEFAULT, "SPCBPeripheralManager: fetch (fetchBase: %@)", buf, 0xCu);
  }

  queueSynchronizer = [(SPCBPeripheralManager *)self queueSynchronizer];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __30__SPCBPeripheralManager_fetch__block_invoke;
  v8[3] = &unk_279B58C78;
  v8[4] = self;
  v9 = date;
  v6 = date;
  [queueSynchronizer conditionalSync:v8];

  v7 = *MEMORY[0x277D85DE8];
}

void __30__SPCBPeripheralManager_fetch__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) sessionMetadata];
  v3 = [v2 allKeys];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __30__SPCBPeripheralManager_fetch__block_invoke_2;
  v11[3] = &unk_279B5A088;
  v11[4] = *(a1 + 32);
  v4 = [v3 fm_map:v11];

  v5 = [[SPCBPeripheralKeyRequest alloc] initWithDate:*(a1 + 40) requestParameters:v4];
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __30__SPCBPeripheralManager_fetch__block_invoke_3;
  v8[3] = &unk_279B5A0D8;
  v8[4] = *(a1 + 32);
  v9 = v5;
  v10 = v6;
  v7 = v5;
  _os_activity_initiate(&dword_2643D0000, "fetch", OS_ACTIVITY_FLAG_DEFAULT, v8);
}

SPCBPeripheralKeyRequestParameters *__30__SPCBPeripheralManager_fetch__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [SPCBPeripheralKeyRequestParameters alloc];
  v5 = [*(a1 + 32) sessionMetadata];
  v6 = [v5 objectForKeyedSubscript:v3];
  v7 = [(SPCBPeripheralKeyRequestParameters *)v4 initWithSessionKey:v3 vendorIdentifierList:v6];

  return v7;
}

void __30__SPCBPeripheralManager_fetch__block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) proxy];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __30__SPCBPeripheralManager_fetch__block_invoke_4;
  v4[3] = &unk_279B5A0B0;
  v4[5] = *(a1 + 48);
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  [v2 bluetoothConnectionKeysFor:v3 completion:v4];
}

void __30__SPCBPeripheralManager_fetch__block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v37 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v8 = v7;
  v9 = *(a1 + 40);
  v10 = LogCategory_CBPeripheralManagement();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v36 = (v8 - v9) * 1000.0;
    _os_log_impl(&dword_2643D0000, v10, OS_LOG_TYPE_DEFAULT, "SPCBPeripheralManager: fetch duration: %.02f ms", buf, 0xCu);
  }

  if (v6)
  {
    v11 = LogCategory_CBPeripheralManagement();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __30__SPCBPeripheralManager_fetch__block_invoke_4_cold_1(v6, v11);
    }
  }

  else if (v5)
  {
    v13 = [*(a1 + 32) peripheralsUpdatedCallback];

    v14 = LogCategory_CBPeripheralManagement();
    v15 = v14;
    if (v13)
    {
      v26 = a1;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v16 = [v5 peripherals];
        v17 = COERCE_DOUBLE([v16 count]);
        *buf = 134217984;
        v36 = v17;
        _os_log_impl(&dword_2643D0000, v15, OS_LOG_TYPE_DEFAULT, "SPCBPeripheralManager: peripheral count: %lu", buf, 0xCu);
      }

      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v27 = v5;
      v18 = [v5 peripherals];
      v19 = [v18 countByEnumeratingWithState:&v30 objects:v34 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v31;
        do
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v31 != v21)
            {
              objc_enumerationMutation(v18);
            }

            v23 = *(*(&v30 + 1) + 8 * i);
            v24 = LogCategory_CBPeripheralManagement();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v36 = v23;
              _os_log_impl(&dword_2643D0000, v24, OS_LOG_TYPE_DEFAULT, "SPCBPeripheralManager: peripheral: %@", buf, 0xCu);
            }
          }

          v20 = [v18 countByEnumeratingWithState:&v30 objects:v34 count:16];
        }

        while (v20);
      }

      v25 = [*(v26 + 32) callbackQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __30__SPCBPeripheralManager_fetch__block_invoke_99;
      block[3] = &unk_279B58C78;
      block[4] = *(v26 + 32);
      v5 = v27;
      v29 = v27;
      dispatch_async(v25, block);
    }

    else
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        __74__SPCBPeripheralManager_stopSessionForUserIdentifier_bundleId_completion___block_invoke_cold_1();
      }
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __30__SPCBPeripheralManager_fetch__block_invoke_99(uint64_t a1)
{
  v3 = [*(a1 + 32) peripheralsUpdatedCallback];
  v2 = [*(a1 + 40) peripherals];
  v3[2](v3, v2);
}

- (id)_enforceRateLimit
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__5;
  v11 = __Block_byref_object_dispose__5;
  v12 = 0;
  queueSynchronizer = [(SPCBPeripheralManager *)self queueSynchronizer];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __42__SPCBPeripheralManager__enforceRateLimit__block_invoke;
  v6[3] = &unk_279B594E0;
  v6[4] = self;
  v6[5] = &v7;
  [queueSynchronizer conditionalSync:v6];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __42__SPCBPeripheralManager__enforceRateLimit__block_invoke(uint64_t a1)
{
  v15[2] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) tokenBucket];
  v3 = [v2 operationAllowed];

  if ((v3 & 1) == 0)
  {
    v14[0] = @"delay";
    v4 = MEMORY[0x277CCABB0];
    v5 = [*(a1 + 32) tokenBucket];
    [v5 timeIntervalUntilOperationAllowed];
    v6 = [v4 numberWithDouble:?];
    v14[1] = @"stats";
    v15[0] = v6;
    v7 = [*(a1 + 32) tokenBucket];
    v8 = [v7 dumpStatistics];
    v15[1] = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];

    v10 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.spowner.SPCBPeripheralErrorDomain" code:2 userInfo:v9];
    v11 = *(*(a1 + 40) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __30__SPCBPeripheralManager_fetch__block_invoke_4_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_2643D0000, a2, OS_LOG_TYPE_ERROR, "SPCBPeripheralManager: fetch error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end