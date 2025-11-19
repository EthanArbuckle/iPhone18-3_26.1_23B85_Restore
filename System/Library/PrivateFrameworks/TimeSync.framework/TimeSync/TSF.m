@interface TSF
@end

@implementation TSF

void __50___TSF_TSDClockSyncManager_sharedClockSyncManager__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_alloc_init(_TSF_TSDClockSyncManager);
  v2 = _sharedClockSyncManager;
  _sharedClockSyncManager = v1;

  objc_autoreleasePoolPop(v0);
}

void __40___TSF_TSDgPTPManager_sharedgPTPManager__block_invoke()
{
  v0 = dispatch_queue_create("com.apple.TimeSync.TSDgPTPManager.shared", 0);
  v1 = _sharedgPTPManagerQueue;
  _sharedgPTPManagerQueue = v0;

  v2 = +[_TSF_TSDClockManager sharedClockManager];
  [v2 addgPTPServicesWithError:0];
}

void __40___TSF_TSDgPTPManager_sharedgPTPManager__block_invoke_2(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (!_sharedgPTPManager_0)
  {
    v3 = +[_TSF_TSDClockManager sharedClockManager];
    [v3 addgPTPServicesWithError:0];
    v4 = [*(a1 + 32) gPTPManager];
    v5 = _sharedgPTPManager_0;
    _sharedgPTPManager_0 = v4;
  }

  objc_autoreleasePoolPop(v2);
}

void __35___TSF_TSDgPTPManager_systemDomain__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  if (!v2)
  {
    v3 = -[_TSF_TSDKernelClock initWithClockIdentifier:]([_TSF_TSDgPTPClock alloc], "initWithClockIdentifier:", [*(a1 + 32) systemDomainClockIdentifier]);
    v4 = *(a1 + 32);
    v5 = *(v4 + 24);
    *(v4 + 24) = v3;

    v2 = *(*(a1 + 32) + 24);
  }

  v6 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v6, v2);
}

void __37___TSF_TSDgPTPManager_diagnosticInfo__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = objc_autoreleasePoolPush();
  if ([v5 conformsToIOClassName:@"IOTimeSyncDomain"])
  {
    v4 = [_TSF_TSDgPTPClock diagnosticInfoForService:v5];
    if (v4)
    {
      [*(a1 + 32) addObject:v4];
    }
  }

  objc_autoreleasePoolPop(v3);
}

uint64_t __40___TSF_TSDgPTPPort_initWithService_pid___block_invoke()
{
  _sharedNotificationsQueue = dispatch_queue_create("com.apple.TimeSync.TSDgPTPPort.sharedNotificationsQueue", 0);

  return MEMORY[0x2821F96F8]();
}

void __40___TSF_TSDgPTPPort_initWithService_pid___block_invoke_65(uint64_t a1, void *a2, int a3)
{
  v8 = a2;
  v5 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    if (a3 == -536870608)
    {
      if (WeakRetained[32] == 1)
      {
        [WeakRetained updateProperties];
      }
    }

    else if (a3 == -536870896)
    {
      [WeakRetained serviceTerminated];
    }
  }

  objc_autoreleasePoolPop(v5);
}

void __36___TSF_TSDgPTPPort_updateProperties__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if ([*(a1 + 32) portRole] != *(a1 + 48))
  {
    [*(a1 + 32) setPortRole:?];
  }

  if ([*(a1 + 32) clockIdentifier] != *(a1 + 40))
  {
    [*(a1 + 32) setClockIdentifier:?];
  }

  objc_autoreleasePoolPop(v2);
}

void __43___TSF_TSDgPTPNetworkPort_updateProperties__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if ([*(a1 + 32) remoteClockIdentity] != *(a1 + 56))
  {
    [*(a1 + 32) setRemoteClockIdentity:?];
  }

  if ([*(a1 + 32) remotePortNumber] != *(a1 + 124))
  {
    [*(a1 + 32) setRemotePortNumber:?];
  }

  if (*(a1 + 128) != [*(a1 + 32) remoteIsSameDevice])
  {
    [*(a1 + 32) setRemoteIsSameDevice:?];
  }

  if (*(a1 + 129) != [*(a1 + 32) isASCapable])
  {
    [*(a1 + 32) setAsCapable:?];
  }

  if ([*(a1 + 32) propagationDelay] != *(a1 + 72))
  {
    [*(a1 + 32) setPropagationDelay:?];
  }

  if ([*(a1 + 32) maximumPropagationDelay] != *(a1 + 76))
  {
    [*(a1 + 32) setMaximumPropagationDelay:?];
  }

  if ([*(a1 + 32) minimumPropagationDelay] != *(a1 + 80))
  {
    [*(a1 + 32) setMinimumPropagationDelay:?];
  }

  if ([*(a1 + 32) maximumRawDelay] != *(a1 + 84))
  {
    [*(a1 + 32) setMaximumRawDelay:?];
  }

  if ([*(a1 + 32) minimumRawDelay] != *(a1 + 88))
  {
    [*(a1 + 32) setMinimumRawDelay:?];
  }

  if ([*(a1 + 32) localSyncLogMeanInterval] != *(a1 + 130))
  {
    [*(a1 + 32) setLocalSyncLogMeanInterval:?];
  }

  if ([*(a1 + 32) remoteSyncLogMeanInterval] != *(a1 + 131))
  {
    [*(a1 + 32) setRemoteSyncLogMeanInterval:?];
  }

  if ([*(a1 + 32) localAnnounceLogMeanInterval] != *(a1 + 132))
  {
    [*(a1 + 32) setLocalAnnounceLogMeanInterval:?];
  }

  if ([*(a1 + 32) remoteAnnounceLogMeanInterval] != *(a1 + 133))
  {
    [*(a1 + 32) setRemoteAnnounceLogMeanInterval:?];
  }

  if ([*(a1 + 32) localLinkType] != *(a1 + 134))
  {
    [*(a1 + 32) setLocalLinkType:?];
  }

  if ([*(a1 + 32) remoteLinkType] != *(a1 + 135))
  {
    [*(a1 + 32) setRemoteLinkType:?];
  }

  if ([*(a1 + 32) localTimestampingMode] != *(a1 + 136))
  {
    [*(a1 + 32) setLocalTimestampingMode:?];
  }

  if ([*(a1 + 32) remoteTimestampingMode] != *(a1 + 137))
  {
    [*(a1 + 32) setRemoteTimestampingMode:?];
  }

  if ([*(a1 + 32) localOscillatorType] != *(a1 + 138))
  {
    [*(a1 + 32) setLocalOscillatorType:?];
  }

  if ([*(a1 + 32) remoteOscillatorType] != *(a1 + 139))
  {
    [*(a1 + 32) setRemoteOscillatorType:?];
  }

  if (*(a1 + 140) != [*(a1 + 32) hasLocalFrequencyToleranceLower])
  {
    [*(a1 + 32) setHasLocalFrequencyToleranceLower:?];
  }

  if ([*(a1 + 32) localFrequencyToleranceLower] != *(a1 + 92))
  {
    [*(a1 + 32) setLocalFrequencyToleranceLower:?];
  }

  if (*(a1 + 141) != [*(a1 + 32) hasLocalFrequencyToleranceUpper])
  {
    [*(a1 + 32) setHasLocalFrequencyToleranceUpper:?];
  }

  if ([*(a1 + 32) localFrequencyToleranceUpper] != *(a1 + 96))
  {
    [*(a1 + 32) setLocalFrequencyToleranceUpper:?];
  }

  if (*(a1 + 142) != [*(a1 + 32) hasRemoteFrequencyToleranceLower])
  {
    [*(a1 + 32) setHasRemoteFrequencyToleranceLower:?];
  }

  if ([*(a1 + 32) remoteFrequencyToleranceLower] != *(a1 + 100))
  {
    [*(a1 + 32) setRemoteFrequencyToleranceLower:?];
  }

  if (*(a1 + 143) != [*(a1 + 32) hasRemoteFrequencyToleranceUpper])
  {
    [*(a1 + 32) setHasRemoteFrequencyToleranceUpper:?];
  }

  if ([*(a1 + 32) remoteFrequencyToleranceUpper] != *(a1 + 104))
  {
    [*(a1 + 32) setRemoteFrequencyToleranceUpper:?];
  }

  if (*(a1 + 144) != [*(a1 + 32) hasLocalFrequencyStabilityLower])
  {
    [*(a1 + 32) setHasLocalFrequencyStabilityLower:?];
  }

  if ([*(a1 + 32) localFrequencyStabilityLower] != *(a1 + 108))
  {
    [*(a1 + 32) setLocalFrequencyStabilityLower:?];
  }

  if (*(a1 + 145) != [*(a1 + 32) hasLocalFrequencyStabilityUpper])
  {
    [*(a1 + 32) setHasLocalFrequencyStabilityUpper:?];
  }

  if ([*(a1 + 32) localFrequencyStabilityUpper] != *(a1 + 112))
  {
    [*(a1 + 32) setLocalFrequencyStabilityUpper:?];
  }

  if (*(a1 + 146) != [*(a1 + 32) hasRemoteFrequencyStabilityLower])
  {
    [*(a1 + 32) setHasRemoteFrequencyStabilityLower:?];
  }

  if ([*(a1 + 32) remoteFrequencyStabilityLower] != *(a1 + 116))
  {
    [*(a1 + 32) setRemoteFrequencyStabilityLower:?];
  }

  if (*(a1 + 147) != [*(a1 + 32) hasRemoteFrequencyStabilityUpper])
  {
    [*(a1 + 32) setHasRemoteFrequencyStabilityUpper:?];
  }

  if ([*(a1 + 32) remoteFrequencyStabilityUpper] != *(a1 + 120))
  {
    [*(a1 + 32) setRemoteFrequencyStabilityUpper:?];
  }

  v3 = [*(a1 + 32) sourceAddressString];
  v4 = [v3 isEqualToString:*(a1 + 40)];

  if ((v4 & 1) == 0)
  {
    [*(a1 + 32) setSourceAddressString:*(a1 + 40)];
  }

  v5 = [*(a1 + 32) destinationAddressString];
  v6 = [v5 isEqualToString:*(a1 + 48)];

  if ((v6 & 1) == 0)
  {
    [*(a1 + 32) setDestinationAddressString:*(a1 + 48)];
  }

  if (*(a1 + 148) != [*(a1 + 32) overridenReceiveMatching])
  {
    [*(a1 + 32) setOverridenReceiveMatching:?];
  }

  if ([*(a1 + 32) overridenReceiveClockIdentity] != *(a1 + 64))
  {
    [*(a1 + 32) setOverridenReceiveClockIdentity:?];
  }

  if ([*(a1 + 32) overridenReceivePortNumber] != *(a1 + 126))
  {
    [*(a1 + 32) setOverridenReceivePortNumber:?];
  }

  if (*(a1 + 149) != [*(a1 + 32) enabled])
  {
    [*(a1 + 32) setEnabled:?];
  }

  objc_autoreleasePoolPop(v2);
}

uint64_t __52___TSF_TSDgPTPNetworkPort_getCurrentPortInfo_error___block_invoke(uint64_t a1)
{
  **(a1 + 40) = [*(a1 + 32) portRole];
  *(*(a1 + 40) + 4) = [*(a1 + 32) portType];
  *(*(a1 + 40) + 8) = [*(a1 + 32) localLinkType];
  *(*(a1 + 40) + 9) = [*(a1 + 32) remoteLinkType];
  *(*(a1 + 40) + 10) = [*(a1 + 32) localTimestampingMode];
  *(*(a1 + 40) + 11) = [*(a1 + 32) remoteTimestampingMode];
  *(*(a1 + 40) + 16) = [*(a1 + 32) remoteClockIdentity];
  result = [*(a1 + 32) remotePortNumber];
  *(*(a1 + 40) + 24) = result;
  return result;
}

void __51___TSF_TSDgPTPNetworkPort__handleRefreshConnection__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) didChangeASCapable:*(a1 + 48) forPort:*(a1 + 40)];

  objc_autoreleasePoolPop(v2);
}

void __81___TSF_TSDgPTPNetworkPort__handleNotification_withArg1_arg2_arg3_arg4_arg5_arg6___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) didChangeASCapable:*(a1 + 48) != 0 forPort:*(a1 + 40)];

  objc_autoreleasePoolPop(v2);
}

uint64_t __40___TSF_TSDgPTPNetworkPort_logNotifyTest__block_invoke(uint64_t a1)
{
  result = os_parse_boot_arg_int();
  *(*(a1 + 32) + 33) = 0;
  return result;
}

void __52___TSF_TSDgPTPNetworkPort_diagnosticInfoForService___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = objc_autoreleasePoolPush();
  if (([v5 conformsToIOClassName:@"IOEthernetInterface"] & 1) != 0 || objc_msgSend(v5, "conformsToIOClassName:", @"IOTimeSyncInterfaceAdapter"))
  {
    v4 = [v5 iodPropertyForKey:@"BSD Name"];
    [*(a1 + 32) setObject:v4 forKeyedSubscript:@"BSD Name"];
  }

  objc_autoreleasePoolPop(v3);
}

void __41___TSF_TSDgPTPFDPtPPort_updateProperties__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if ([*(a1 + 32) localPDelayLogMeanInterval] != *(a1 + 48))
  {
    [*(a1 + 32) setLocalPDelayLogMeanInterval:?];
  }

  if ([*(a1 + 32) remotePDelayLogMeanInterval] != *(a1 + 49))
  {
    [*(a1 + 32) setRemotePDelayLogMeanInterval:?];
  }

  if (*(a1 + 50) != [*(a1 + 32) multipleRemotes])
  {
    [*(a1 + 32) setMultipleRemotes:?];
  }

  if (*(a1 + 51) != [*(a1 + 32) measuringPDelay])
  {
    [*(a1 + 32) setMeasuringPDelay:?];
  }

  [*(a1 + 32) setStatistics:*(a1 + 40)];

  objc_autoreleasePoolPop(v2);
}

void __41___TSF_TSDgPTPFDEtEPort_updateProperties__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) setStatistics:*(a1 + 40)];

  objc_autoreleasePoolPop(v2);
}

uint64_t __33___TSF_TSDIOKServiceMatcher_init__block_invoke()
{
  v0 = dispatch_queue_create("com.apple.TimeSync.TSIOKServiceMatcherClassNotifier.sharedNotificationsQueue", 0);
  v1 = _sharedTSDIOKServiceMatcherNotificationsQueue;
  _sharedTSDIOKServiceMatcherNotificationsQueue = v0;

  v2 = objc_alloc(MEMORY[0x277D1AE18]);
  _sharedTSDIOKServiceMatcherNotificationsPort = [v2 initOnDispatchQueue:_sharedTSDIOKServiceMatcherNotificationsQueue];

  return MEMORY[0x2821F96F8]();
}

void __70___TSF_TSDIOKServiceMatcher_startNotificationsWithMatchingDictionary___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = [v8 nextObject];
    if (v5)
    {
      v6 = v5;
      do
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [WeakRetained handleServiceMatched:v6];
        }

        v7 = [v8 nextObject];

        v6 = v7;
      }

      while (v7);
    }
  }

  objc_autoreleasePoolPop(v3);
}

void __70___TSF_TSDIOKServiceMatcher_startNotificationsWithMatchingDictionary___block_invoke_12(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = [v8 nextObject];
    if (v5)
    {
      v6 = v5;
      do
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [WeakRetained handleServiceTerminated:v6];
        }

        v7 = [v8 nextObject];

        v6 = v7;
      }

      while (v7);
    }
  }

  objc_autoreleasePoolPop(v3);
}

void __70___TSF_TSDIOKServiceMatcher_startNotificationsWithMatchingDictionary___block_invoke_14(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(*(a1 + 32) + 8) primeNotification];
  [*(*(a1 + 32) + 16) primeNotification];

  objc_autoreleasePoolPop(v2);
}

void __53___TSF_TSDKextNotifier_notifyWhenServiceIsAvailable___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) getMatchedCount];
  v4 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (v3 < 1)
  {
    if (v4)
    {
      v6 = [*(*(a1 + 32) + 32) UTF8String];
      v12 = 136315394;
      v13 = v6;
      v14 = 1024;
      v15 = v3;
      _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "TSDKextNotifier notifyWhenServiceIsAvailable %s matchedCount %d, saving notification block", &v12, 0x12u);
    }

    v7 = *(a1 + 40);
    v8 = *(*(a1 + 32) + 40);
    v9 = [v7 copy];
    v10 = MEMORY[0x274387E70]();
    [v8 addObject:v10];
  }

  else
  {
    if (v4)
    {
      v5 = [*(*(a1 + 32) + 32) UTF8String];
      v12 = 136315394;
      v13 = v5;
      v14 = 1024;
      v15 = v3;
      _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "TSDKextNotifier notifyWhenServiceIsAvailable %s matchedCount %d, dispatching notification", &v12, 0x12u);
    }

    (*(*(a1 + 40) + 16))();
  }

  objc_autoreleasePoolPop(v2);
  v11 = *MEMORY[0x277D85DE8];
}

void __55___TSF_TSDKextNotifier_notifyWhenServiceIsUnavailable___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) getMatchedCount];
  v4 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v4)
    {
      v5 = [*(*(a1 + 32) + 32) UTF8String];
      v12 = 136315394;
      v13 = v5;
      v14 = 1024;
      v15 = v3;
      _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "TSDKextNotifier notifyWhenServiceIsUnavailable %s matchedCount %d, saving notification block", &v12, 0x12u);
    }

    v6 = *(a1 + 40);
    v7 = *(*(a1 + 32) + 48);
    v8 = [v6 copy];
    v9 = MEMORY[0x274387E70]();
    [v7 addObject:v9];
  }

  else
  {
    if (v4)
    {
      v10 = [*(*(a1 + 32) + 32) UTF8String];
      v12 = 136315394;
      v13 = v10;
      v14 = 1024;
      v15 = 0;
      _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "TSDKextNotifier notifyWhenServiceIsUnavailable %s matchedCount %d, dispatching notification", &v12, 0x12u);
    }

    (*(*(a1 + 40) + 16))();
  }

  objc_autoreleasePoolPop(v2);
  v11 = *MEMORY[0x277D85DE8];
}

void __31___TSF_TSDKextNotifier_dealloc__block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v19;
    do
    {
      v7 = 0;
      do
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(v3);
        }

        (*(*(*(&v18 + 1) + 8 * v7++) + 16))();
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v5);
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = *(a1 + 40);
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        (*(*(*(&v14 + 1) + 8 * v12) + 16))(*(*(&v14 + 1) + 8 * v12));
        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v22 count:16];
    }

    while (v10);
  }

  objc_autoreleasePoolPop(v2);
  v13 = *MEMORY[0x277D85DE8];
}

void __46___TSF_IODConnection_initWithService_andType___block_invoke(uint64_t a1)
{
  getpid();
  gClientsLock = 0;
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v3 = gClients;
  gClients = v2;

  v4 = +[TSXDaemonServiceClient sharedDaemonServiceClient];
  v5 = gDaemonServiceClient;
  gDaemonServiceClient = v4;

  v6 = MEMORY[0x277CCACA8];
  v7 = *(a1 + 32);
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v13 = [v6 stringWithFormat:@"com.apple.TimeSync.%@", v9];

  v10 = v13;
  v11 = dispatch_queue_create([v13 UTF8String], 0);
  v12 = _dispatchQueue;
  _dispatchQueue = v11;
}

void __29___TSF_IODConnection_dealloc__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  if (v3 && ([gDaemonServiceClient closeDaemonClient:v3 error:0] & 1) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __29___TSF_IODConnection_dealloc__block_invoke_cold_1();
  }

  objc_autoreleasePoolPop(v2);
}

uint64_t __42___TSF_TSDClockManager_sharedClockManager__block_invoke()
{
  _sharedClockManagerQueue = dispatch_queue_create("com.apple.TimeSync.TSDClockManager.shared", 0);

  return MEMORY[0x2821F96F8]();
}

void __42___TSF_TSDClockManager_sharedClockManager__block_invoke_2(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (!_sharedClockManager)
  {
    v3 = [*(a1 + 32) clockManager];
    v4 = _sharedClockManager;
    _sharedClockManager = v3;
  }

  objc_autoreleasePoolPop(v2);
}

void __54___TSF_TSDKernelClock_availableKernelClockIdentifiers__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = objc_autoreleasePoolPush();
  v4 = [v5 iodPropertyForKey:@"ClockIdentifier"];
  if (v4)
  {
    [*(a1 + 32) addObject:v4];
  }

  objc_autoreleasePoolPop(v3);
}

void __51___TSF_TSDKernelClock_initWithClockIdentifier_pid___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = a2;
  v7 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleInterestNotification:a3 withArgument:a4];

  objc_autoreleasePoolPop(v7);
}

void __59___TSF_TSDKernelClock__refreshLockStateOnNotificationQueue__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 40);
  if (v3 != [*(a1 + 32) lockState])
  {
    [*(a1 + 32) setLockState:*(a1 + 40)];
  }

  objc_autoreleasePoolPop(v2);
}

void __64___TSF_TSDKernelClock__handleInterestNotification_withArgument___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 40);
  if (v3 != [*(a1 + 32) lockState])
  {
    [*(a1 + 32) setLockState:*(a1 + 40)];
  }

  objc_autoreleasePoolPop(v2);
}

void __55___TSF_TSDCallbackRefconMap_sharedTSDCallbackRefconMap__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_alloc_init(_TSF_TSDCallbackRefconMap);
  v2 = _sharedTSDCallbackRefconMap;
  _sharedTSDCallbackRefconMap = v1;

  objc_autoreleasePoolPop(v0);
}

void __50___TSF_TSDgPTPClock_availablegPTPClockIdentifiers__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = objc_autoreleasePoolPush();
  v4 = [v5 iodPropertyForKey:@"ClockIdentifier"];
  if (v4)
  {
    [*(a1 + 32) addObject:v4];
  }

  objc_autoreleasePoolPop(v3);
}

void __62___TSF_TSDgPTPClock__handleInterestNotification_withArgument___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 40);
  if (v3 != [*(a1 + 32) grandmasterIdentity])
  {
    [*(a1 + 32) setGrandmasterIdentity:*(a1 + 40)];
  }

  objc_autoreleasePoolPop(v2);
}

void __62___TSF_TSDgPTPClock__handleInterestNotification_withArgument___block_invoke_2(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) gptpPath];
  LOBYTE(v3) = [v3 isEqual:v4];

  if ((v3 & 1) == 0)
  {
    [*(a1 + 40) setGptpPath:*(a1 + 32)];
  }

  objc_autoreleasePoolPop(v2);
}

void __67___TSF_TSDgPTPClock__refreshGrandmasterIdentityOnNotificationQueue__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 48);
  if (v3 != [*(a1 + 32) grandmasterIdentity])
  {
    [*(a1 + 32) setGrandmasterIdentity:*(a1 + 48)];
  }

  v4 = *(a1 + 40);
  v5 = [*(a1 + 32) gptpPath];
  LOBYTE(v4) = [v4 isEqual:v5];

  if ((v4 & 1) == 0)
  {
    [*(a1 + 32) setGptpPath:*(a1 + 40)];
  }

  objc_autoreleasePoolPop(v2);
}

void __26___TSF_TSDgPTPClock_ports__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = objc_autoreleasePoolPush();
  if ([v5 conformsToIOClassName:@"IOTimeSyncPort"])
  {
    v4 = [_TSF_TSDgPTPPort gPTPPortWithService:v5];
    if (v4)
    {
      [*(a1 + 32) addObject:v4];
    }
  }

  objc_autoreleasePoolPop(v3);
}

void __40___TSF_TSDgPTPClock_portWithPortNumber___block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = objc_autoreleasePoolPush();
  if ([v9 conformsToIOClassName:@"IOTimeSyncPort"])
  {
    v4 = [v9 iodPropertyForKey:@"PortNumber"];
    v5 = v4;
    if (v4 && [v4 unsignedShortValue] == *(a1 + 40))
    {
      v6 = [_TSF_TSDgPTPPort gPTPPortWithService:v9];
      v7 = *(*(a1 + 32) + 8);
      v8 = *(v7 + 40);
      *(v7 + 40) = v6;
    }
  }

  objc_autoreleasePoolPop(v3);
}

void __46___TSF_TSDgPTPClock_diagnosticInfoForService___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = objc_autoreleasePoolPush();
  if ([v8 conformsToIOClassName:@"IOTimeSyncEthernetPort"])
  {
    v4 = v8;
    v5 = off_279DBD3A0;
  }

  else if ([v8 conformsToIOClassName:@"IOTimeSyncUnicastLinkLayerPtPPort"])
  {
    v4 = v8;
    v5 = off_279DBD3E8;
  }

  else if ([v8 conformsToIOClassName:@"IOTimeSyncUnicastLinkLayerEtEPort"])
  {
    v4 = v8;
    v5 = off_279DBD3E0;
  }

  else if ([v8 conformsToIOClassName:@"IOTimeSyncUnicastUDPv4PtPPort"])
  {
    v4 = v8;
    v5 = off_279DBD3F8;
  }

  else if ([v8 conformsToIOClassName:@"IOTimeSyncUnicastUDPv6PtPPort"])
  {
    v4 = v8;
    v5 = &off_279DBD408;
  }

  else if ([v8 conformsToIOClassName:@"IOTimeSyncUnicastUDPv4EtEPort"])
  {
    v4 = v8;
    v5 = off_279DBD3F0;
  }

  else if ([v8 conformsToIOClassName:@"IOTimeSyncUnicastUDPv6EtEPort"])
  {
    v4 = v8;
    v5 = off_279DBD400;
  }

  else if ([v8 conformsToIOClassName:@"IOTimeSyncLocalClockPort"])
  {
    v4 = v8;
    v5 = off_279DBD3B8;
  }

  else
  {
    if (![v8 conformsToIOClassName:@"IOTimeSyncPort"])
    {
      goto LABEL_20;
    }

    v4 = v8;
    v5 = off_279DBD3D0;
  }

  v6 = *(a1 + 32);
  v7 = [(__objc2_class *)*v5 diagnosticInfoForService:v4];
  [v6 addObject:v7];

LABEL_20:
  objc_autoreleasePoolPop(v3);
}

void __29___TSF_IODConnection_dealloc__block_invoke_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 138412290;
  v2 = 0;
  _os_log_error_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to deallocate IODConnection to daemon client, error: %@", &v1, 0xCu);
  v0 = *MEMORY[0x277D85DE8];
}

@end