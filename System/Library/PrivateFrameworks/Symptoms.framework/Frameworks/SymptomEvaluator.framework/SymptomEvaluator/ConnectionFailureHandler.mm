@interface ConnectionFailureHandler
+ (id)configureClass:(id)class;
+ (id)sharedInstance;
- (BOOL)noteSymptom:(id)symptom;
- (ConnectionFailureHandler)init;
- (void)completeInitialization;
- (void)handleFailureOrStallSymptom:(id)symptom;
- (void)setUpNumericAccumulator;
@end

@implementation ConnectionFailureHandler

- (ConnectionFailureHandler)init
{
  v14.receiver = self;
  v14.super_class = ConnectionFailureHandler;
  v2 = [(ConnectionFailureHandler *)&v14 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
    privacyProxiesUsed = v2->_privacyProxiesUsed;
    v2->_privacyProxiesUsed = v3;

    v2->_privacyProxyLock._os_unfair_lock_opaque = 0;
    v5 = [objc_alloc(MEMORY[0x277CD91E8]) initWithName:@"privacyProxyStallAccumulator"];
    stallAccumulator = v2->_stallAccumulator;
    v2->_stallAccumulator = v5;

    [(ConnectionFailureHandler *)v2 setUpNumericAccumulator];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __32__ConnectionFailureHandler_init__block_invoke;
    v12[3] = &unk_27898A690;
    v8 = v2;
    v13 = v8;
    v9 = [defaultCenter addObserverForName:@"stateRelay" object:0 queue:0 usingBlock:v12];
    relayReadyObserver = v8->_relayReadyObserver;
    v8->_relayReadyObserver = v9;
  }

  return v2;
}

uint64_t __32__ConnectionFailureHandler_init__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 removeObserver:*(*(a1 + 32) + 8)];

  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  *(v3 + 8) = 0;

  v5 = *(a1 + 32);

  return [v5 completeInitialization];
}

+ (id)configureClass:(id)class
{
  classCopy = class;
  v4 = +[ConnectionFailureHandler sharedInstance];
  [v4 configureInstance:classCopy];

  return v4;
}

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__ConnectionFailureHandler_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_pred_30 != -1)
  {
    dispatch_once(&sharedInstance_pred_30, block);
  }

  v2 = sharedInstance_sharedInstance_30;

  return v2;
}

void __42__ConnectionFailureHandler_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedInstance_sharedInstance_30;
  sharedInstance_sharedInstance_30 = v1;

  v3 = sharedInstance_sharedInstance_30;
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [ConfigurationHandler setConfigurationObject:v3 forName:v5];
}

- (void)setUpNumericAccumulator
{
  stallAccumulator = self->_stallAccumulator;
  v4 = +[PrivacyProxyStateRelay sharedInstance];
  [(NWNumericAccumulator *)stallAccumulator addAccumulation:v4 withName:@"privacyProxyServiceStatus" forKey:@"serviceStatus" stateCallback:&__block_literal_global_31];

  v5 = [NetworkStateRelay getStateRelayFor:5];
  [(NWNumericAccumulator *)self->_stallAccumulator addAccumulation:v5 forKey:@"cellMNC" stateCallback:&__block_literal_global_23];
  [(NWNumericAccumulator *)self->_stallAccumulator addAccumulation:v5 forKey:@"cellMCC" stateCallback:&__block_literal_global_32_0];
}

id __51__ConnectionFailureHandler_setUpNumericAccumulator__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 unsignedIntValue];

  return [PrivacyProxyStateRelay serviceStatusString:v2];
}

id __51__ConnectionFailureHandler_setUpNumericAccumulator__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCACA8];
  v3 = a2;
  v4 = [[v2 alloc] initWithFormat:@"%@", v3];

  return v4;
}

id __51__ConnectionFailureHandler_setUpNumericAccumulator__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCACA8];
  v3 = a2;
  v4 = [[v2 alloc] initWithFormat:@"%@", v3];

  return v4;
}

- (void)completeInitialization
{
  v3 = +[NetworkAnalyticsEngine getNetworkExtensionStateRelay];
  if (v3)
  {
    [(NWNumericAccumulator *)self->_stallAccumulator addAccumulation:v3 forKey:@"vpnConnected" stateCallback:&__block_literal_global_38_0];
    [(NWNumericAccumulator *)self->_stallAccumulator addAccumulation:v3 forKey:@"contentFilterConnected" stateCallback:&__block_literal_global_43];
    [(NWNumericAccumulator *)self->_stallAccumulator addAccumulation:v3 forKey:@"dnsProxyConnected" stateCallback:&__block_literal_global_48];
  }

  else
  {
    v4 = otherLogHandle;
    if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
    {
      *v5 = 0;
      _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_ERROR, "ConnectionFailureHandler: NEStateRelay not initialized, accumulators not set for NE sessions.", v5, 2u);
    }
  }
}

id __50__ConnectionFailureHandler_completeInitialization__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCACA8];
  v3 = a2;
  v4 = [[v2 alloc] initWithFormat:@"%@", v3];

  return v4;
}

id __50__ConnectionFailureHandler_completeInitialization__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCACA8];
  v3 = a2;
  v4 = [[v2 alloc] initWithFormat:@"%@", v3];

  return v4;
}

id __50__ConnectionFailureHandler_completeInitialization__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCACA8];
  v3 = a2;
  v4 = [[v2 alloc] initWithFormat:@"%@", v3];

  return v4;
}

- (void)handleFailureOrStallSymptom:(id)symptom
{
  v13 = *MEMORY[0x277D85DE8];
  symptomCopy = symptom;
  v5 = otherLogHandle;
  if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v12 = symptomCopy;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEBUG, "ConnectionFailureHandler: EventDescription: %@", buf, 0xCu);
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __56__ConnectionFailureHandler_handleFailureOrStallSymptom___block_invoke;
  v9[3] = &unk_27898BE68;
  v9[4] = self;
  v6 = symptomCopy;
  v10 = v6;
  if ((libnetcoreSymptomTrampoline(v6, 0, 0, 1, MEMORY[0x277D85CD0], v9) & 1) == 0)
  {
    v7 = otherLogHandle;
    if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEBUG, "ConnectionFailureHandler: Libnetcore trampoline failed.", buf, 2u);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __56__ConnectionFailureHandler_handleFailureOrStallSymptom___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, int a12, void *a13)
{
  v14 = a13;
  v15 = +[SystemSettingsRelay defaultRelay];
  v16 = [v15 packetFilterState];

  if (v16 && [v16 length])
  {
    [*(*(a1 + 32) + 16) updateState:v16 forName:@"kextsInstalled"];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __56__ConnectionFailureHandler_handleFailureOrStallSymptom___block_invoke_53;
    v20[3] = &unk_27898E4B0;
    v17 = *(a1 + 40);
    v24 = a12;
    v25 = a11;
    v18 = *(a1 + 32);
    v21 = v17;
    v22 = v18;
    v23 = v14;
    dispatch_async(MEMORY[0x277D85CD0], v20);
  }

  else
  {
    v19 = otherLogHandle;
    if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v19, OS_LOG_TYPE_DEFAULT, "ConnectionFailureHandler: Invalid Packet Filter state found. Not posting a metric.", buf, 2u);
    }
  }
}

void __56__ConnectionFailureHandler_handleFailureOrStallSymptom___block_invoke_53(uint64_t a1)
{
  v2 = [*(a1 + 32) eventKey];
  v3 = [SymptomStore keyFromSymptomName:@"SYMPTOM_LIBNETCORE_DNS_STALL"];
  v4 = [v2 isEqualToString:v3];

  if (v4)
  {
    v5 = *(a1 + 56);
    v6 = @"dnsStall";
    v7 = @"dnsStallProxied";
LABEL_11:
    if (v5 == 2)
    {
      v16 = v7;
    }

    else
    {
      v16 = v6;
    }

    v17 = v16;
    v18 = [objc_alloc(MEMORY[0x277CCAB68]) initWithString:v17];
    [v18 appendString:@"_"];
    v19 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 60)];
    v20 = [v19 stringValue];
    [v18 appendString:v20];

    [*(*(a1 + 40) + 16) addCount:&unk_2847EFB30 toAccumulation:v18];
    v21 = *(a1 + 48);
    if (v21)
    {
      v22 = *(a1 + 40);
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __56__ConnectionFailureHandler_handleFailureOrStallSymptom___block_invoke_106;
      v24[3] = &unk_27898A7D0;
      v24[4] = v22;
      v25 = v21;
      sf_synchronize(v22 + 8, v24);
    }

    goto LABEL_17;
  }

  v8 = [SymptomStore keyFromSymptomName:@"SYMPTOM_LIBNETCORE_CONNECTION_SETUP_STALL"];
  v9 = [v2 isEqualToString:v8];

  if (v9)
  {
    v5 = *(a1 + 56);
    v6 = @"setupStall";
    v7 = @"setupStallProxied";
    goto LABEL_11;
  }

  v10 = [SymptomStore keyFromSymptomName:@"SYMPTOM_LIBNETCORE_PROXY_FAILED"];
  v11 = [v2 isEqualToString:v10];

  if (v11)
  {
    v5 = *(a1 + 56);
    v6 = @"proxyFailed";
    v7 = @"proxyFailedProxied";
    goto LABEL_11;
  }

  v12 = [SymptomStore keyFromSymptomName:@"SYMPTOM_LIBNETCORE_HTTP_FAILED"];
  v13 = [v2 isEqualToString:v12];

  if (v13)
  {
    v5 = *(a1 + 56);
    v6 = @"httpFailed";
    v7 = @"httpFailedProxied";
    goto LABEL_11;
  }

  v14 = [SymptomStore keyFromSymptomName:@"SYMPTOM_LIBNETCORE_CONNECTION_FAILED"];
  v15 = [v2 isEqualToString:v14];

  if (v15)
  {
    v5 = *(a1 + 56);
    v6 = @"connectionFailed";
    v7 = @"connectionFailedProxied";
    goto LABEL_11;
  }

  v23 = otherLogHandle;
  if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v23, OS_LOG_TYPE_ERROR, "ConnectionFailureHandler: Received an unsupported symptom type. Not counting the error.", buf, 2u);
  }

LABEL_17:
}

id __57__ConnectionFailureHandler_postConnectionFailureMetrics___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v6 = v5;
  v7 = 0;
  if (v4 && v5)
  {
    v25 = 0;
    v26 = &v25;
    v27 = 0x3032000000;
    v28 = __Block_byref_object_copy__11;
    v29 = __Block_byref_object_dispose__11;
    v30 = 0;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v21 objects:v31 count:16];
    v17 = v6;
    if (v9)
    {
      v10 = *v22;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v22 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v21 + 1) + 8 * i);
          v18[0] = MEMORY[0x277D85DD0];
          v18[1] = 3221225472;
          v18[2] = __57__ConnectionFailureHandler_postConnectionFailureMetrics___block_invoke_117;
          v18[3] = &unk_27898E518;
          v19 = v4;
          v20 = &v25;
          [v12 enumerateKeysAndObjectsUsingBlock:v18];
        }

        v9 = [v8 countByEnumeratingWithState:&v21 objects:v31 count:16];
      }

      while (v9);
    }

    v14 = v26[5];
    if (v14)
    {
      v7 = __57__ConnectionFailureHandler_postConnectionFailureMetrics___block_invoke_2(v13, v14);
    }

    else
    {
      v7 = 0;
    }

    _Block_object_dispose(&v25, 8);

    v6 = v17;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v7;
}

id __57__ConnectionFailureHandler_postConnectionFailureMetrics___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    if ([v2 count] == 1)
    {
      v4 = [v3 allKeys];
      [v4 firstObject];
    }

    else
    {
      v4 = [v3 keysSortedByValueWithOptions:16 usingComparator:&__block_literal_global_116];
      [v4 objectAtIndexedSubscript:0];
    }
    v5 = ;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t __57__ConnectionFailureHandler_postConnectionFailureMetrics___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 unsignedLongLongValue];
  v6 = [v4 unsignedLongLongValue];

  if (v5 > v6)
  {
    return -1;
  }

  else
  {
    return 1;
  }
}

void __57__ConnectionFailureHandler_postConnectionFailureMetrics___block_invoke_117(uint64_t a1, void *a2, void *a3)
{
  v14 = a3;
  v5 = [a2 componentsSeparatedByString:@"_"];
  v6 = v5;
  if (v5 && [v5 count] == 2)
  {
    v7 = [v6 objectAtIndexedSubscript:0];
    if ([v7 isEqualToString:*(a1 + 32)])
    {
      v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v9 = *(*(a1 + 40) + 8);
      v10 = *(v9 + 40);
      *(v9 + 40) = v8;

      v11 = MEMORY[0x277CCABB0];
      v12 = [v6 objectAtIndexedSubscript:1];
      v13 = [v11 numberWithLongLong:{objc_msgSend(v12, "longLongValue")}];

      [*(*(*(a1 + 40) + 8) + 40) setObject:v14 forKeyedSubscript:v13];
    }
  }
}

id __57__ConnectionFailureHandler_postConnectionFailureMetrics___block_invoke_2_120(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v6 = 0;
  if (v4 && v5)
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x2020000000;
    v25 = 0;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v14 = v5;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v18 objects:v26 count:16];
    if (v8)
    {
      v9 = *v19;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v19 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v18 + 1) + 8 * i);
          v15[0] = MEMORY[0x277D85DD0];
          v15[1] = 3221225472;
          v15[2] = __57__ConnectionFailureHandler_postConnectionFailureMetrics___block_invoke_3_123;
          v15[3] = &unk_27898E518;
          v16 = v4;
          v17 = &v22;
          [v11 enumerateKeysAndObjectsUsingBlock:v15];
        }

        v8 = [v7 countByEnumeratingWithState:&v18 objects:v26 count:16];
      }

      while (v8);
    }

    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v23[3]];
    _Block_object_dispose(&v22, 8);
    v5 = v14;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v6;
}

void __57__ConnectionFailureHandler_postConnectionFailureMetrics___block_invoke_3_123(uint64_t a1, void *a2, void *a3)
{
  v8 = a3;
  v5 = [a2 componentsSeparatedByString:@"_"];
  v6 = v5;
  if (v5 && [v5 count] == 2)
  {
    v7 = [v6 objectAtIndexedSubscript:0];
    if ([v7 isEqualToString:*(a1 + 32)])
    {
      *(*(*(a1 + 40) + 8) + 24) += [v8 unsignedLongValue];
    }
  }
}

id __57__ConnectionFailureHandler_postConnectionFailureMetrics___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = [a2 allObjects];
  v3 = [v2 componentsJoinedByString:{@", "}];

  return v3;
}

void __57__ConnectionFailureHandler_postConnectionFailureMetrics___block_invoke_133(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = *(a1 + 48);
  v8 = *(a1 + 32);
  v9 = *(a1 + 56);
  v10 = *(a1 + 40);
  *&v11 = v7;
  *(&v11 + 1) = v9;
  v12 = v11;
  v13 = *(a1 + 64);
  if ((AnalyticsSendEventLazy() & 1) == 0)
  {
    *(*(*(a1 + 72) + 8) + 24) = 0;
    *a4 = 1;
  }
}

id __57__ConnectionFailureHandler_postConnectionFailureMetrics___block_invoke_2_134(uint64_t a1)
{
  v67 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v3 = [*(a1 + 32) objectForKeyedSubscript:@"cellMCC"];
  [v2 setObject:v3 forKeyedSubscript:@"cellMCC"];

  v4 = [*(a1 + 32) objectForKeyedSubscript:@"cellMNC"];
  [v2 setObject:v4 forKeyedSubscript:@"cellMNC"];

  v5 = [*(a1 + 32) objectForKeyedSubscript:@"contentFilterConnected"];
  [v2 setObject:v5 forKeyedSubscript:@"contentFilterConnected"];

  v6 = [*(a1 + 32) objectForKeyedSubscript:@"dnsProxyConnected"];
  [v2 setObject:v6 forKeyedSubscript:@"dnsProxyConnected"];

  v7 = [*(a1 + 32) objectForKeyedSubscript:@"vpnConnected"];
  [v2 setObject:v7 forKeyedSubscript:@"vpnConnected"];

  v8 = [*(a1 + 32) objectForKeyedSubscript:@"kextsInstalled"];
  [v2 setObject:v8 forKeyedSubscript:@"kextsInstalled"];

  v9 = [*(a1 + 32) objectForKeyedSubscript:@"interfaceType"];
  [v2 setObject:v9 forKeyedSubscript:@"interfaceType"];

  v10 = [*(a1 + 32) objectForKeyedSubscript:@"privacyProxyServiceStatus"];
  [v2 setObject:v10 forKeyedSubscript:@"privacyProxyServiceStatus"];

  v11 = *(a1 + 40);
  v12 = (*(*(a1 + 56) + 16))();
  [v2 setObject:v12 forKeyedSubscript:@"dnsStall"];

  v13 = *(a1 + 40);
  v14 = (*(*(a1 + 56) + 16))();
  [v2 setObject:v14 forKeyedSubscript:@"setupStall"];

  v15 = *(a1 + 40);
  v16 = (*(*(a1 + 56) + 16))();
  [v2 setObject:v16 forKeyedSubscript:@"proxyFailed"];

  v17 = *(a1 + 40);
  v18 = (*(*(a1 + 56) + 16))();
  [v2 setObject:v18 forKeyedSubscript:@"httpFailed"];

  v19 = *(a1 + 40);
  v20 = (*(*(a1 + 56) + 16))();
  [v2 setObject:v20 forKeyedSubscript:@"connectionFailed"];

  v21 = *(a1 + 40);
  v22 = (*(*(a1 + 56) + 16))();
  [v2 setObject:v22 forKeyedSubscript:@"dnsStallProxied"];

  v23 = *(a1 + 40);
  v24 = (*(*(a1 + 56) + 16))();
  [v2 setObject:v24 forKeyedSubscript:@"setupStallProxied"];

  v25 = *(a1 + 40);
  v26 = (*(*(a1 + 56) + 16))();
  [v2 setObject:v26 forKeyedSubscript:@"proxyFailedProxied"];

  v27 = *(a1 + 40);
  v28 = (*(*(a1 + 56) + 16))();
  [v2 setObject:v28 forKeyedSubscript:@"httpFailedProxied"];

  v29 = *(a1 + 40);
  v30 = (*(*(a1 + 56) + 16))();
  [v2 setObject:v30 forKeyedSubscript:@"connectionFailedProxied"];

  v31 = *(a1 + 40);
  v32 = (*(*(a1 + 64) + 16))();
  [v2 setObject:v32 forKeyedSubscript:@"dnsStallMostCommonError"];

  v33 = *(a1 + 40);
  v34 = (*(*(a1 + 64) + 16))();
  [v2 setObject:v34 forKeyedSubscript:@"setupStallMostCommonError"];

  v35 = *(a1 + 40);
  v36 = (*(*(a1 + 64) + 16))();
  [v2 setObject:v36 forKeyedSubscript:@"proxyFailedMostCommonError"];

  v37 = *(a1 + 40);
  v38 = (*(*(a1 + 64) + 16))();
  [v2 setObject:v38 forKeyedSubscript:@"httpFailedMostCommonError"];

  v39 = *(a1 + 40);
  v40 = (*(*(a1 + 64) + 16))();
  [v2 setObject:v40 forKeyedSubscript:@"connectionFailedMostCommonError"];

  v41 = *(a1 + 40);
  v42 = (*(*(a1 + 64) + 16))();
  [v2 setObject:v42 forKeyedSubscript:@"dnsStallProxiedMostCommonError"];

  v43 = *(a1 + 40);
  v44 = (*(*(a1 + 64) + 16))();
  [v2 setObject:v44 forKeyedSubscript:@"setupStallProxiedMostCommonError"];

  v45 = *(a1 + 40);
  v46 = (*(*(a1 + 64) + 16))();
  [v2 setObject:v46 forKeyedSubscript:@"proxyFailedProxiedMostCommonError"];

  v47 = *(a1 + 40);
  v48 = (*(*(a1 + 64) + 16))();
  [v2 setObject:v48 forKeyedSubscript:@"httpFailedProxiedMostCommonError"];

  v49 = *(a1 + 40);
  v50 = (*(*(a1 + 64) + 16))();
  [v2 setObject:v50 forKeyedSubscript:@"connectionFailedProxiedMostCommonError"];

  v51 = *(a1 + 48);
  v59[0] = MEMORY[0x277D85DD0];
  v59[1] = 3221225472;
  v59[2] = __57__ConnectionFailureHandler_postConnectionFailureMetrics___block_invoke_3_168;
  v59[3] = &unk_27898DE08;
  v52 = v2;
  v60 = v52;
  v53 = *(a1 + 72);
  v61 = *(a1 + 48);
  v62 = v53;
  sf_synchronize(v51 + 8, v59);
  v54 = otherLogHandle;
  if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v55 = *(*(a1 + 48) + 24);
    *buf = 138412546;
    v64 = v52;
    v65 = 2112;
    v66 = v55;
    _os_log_impl(&dword_23255B000, v54, OS_LOG_TYPE_DEBUG, "ConnectionFailureHandler: EventDict: %@, PrivacyProxiesUsed: %@", buf, 0x16u);
  }

  v56 = v52;

  v57 = *MEMORY[0x277D85DE8];
  return v52;
}

void __57__ConnectionFailureHandler_postConnectionFailureMetrics___block_invoke_3_168(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 24);
  v3 = (*(*(a1 + 48) + 16))();
  [*(a1 + 32) setObject:v3 forKeyedSubscript:@"privacyProxiesUsed"];
}

void __57__ConnectionFailureHandler_postConnectionFailureMetrics___block_invoke_174(uint64_t a1)
{
  [*(*(a1 + 32) + 24) removeAllObjects];
  v1 = otherLogHandle;
  if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *v2 = 0;
    _os_log_impl(&dword_23255B000, v1, OS_LOG_TYPE_DEBUG, "ConnectionFailureHandler: Posted CA events successfully.", v2, 2u);
  }
}

- (BOOL)noteSymptom:(id)symptom
{
  symptomCopy = symptom;
  eventKey = [symptomCopy eventKey];
  v6 = [SymptomStore keyFromSymptomName:@"SYMPTOM_LIBNETCORE_DNS_STALL"];
  if (([eventKey isEqualToString:v6] & 1) == 0)
  {
    v7 = [SymptomStore keyFromSymptomName:@"SYMPTOM_LIBNETCORE_CONNECTION_SETUP_STALL"];
    if (([eventKey isEqualToString:v7] & 1) == 0)
    {
      v8 = [SymptomStore keyFromSymptomName:@"SYMPTOM_LIBNETCORE_PROXY_FAILED"];
      if (([eventKey isEqualToString:v8] & 1) == 0)
      {
        v9 = [SymptomStore keyFromSymptomName:@"SYMPTOM_LIBNETCORE_HTTP_FAILED"];
        if (([eventKey isEqualToString:v9] & 1) == 0)
        {
          v11 = [SymptomStore keyFromSymptomName:@"SYMPTOM_LIBNETCORE_CONNECTION_FAILED"];
          v12 = [eventKey isEqualToString:v11];

          if ((v12 & 1) == 0)
          {
            goto LABEL_10;
          }

          goto LABEL_9;
        }
      }
    }
  }

LABEL_9:
  [(ConnectionFailureHandler *)self handleFailureOrStallSymptom:symptomCopy];
LABEL_10:

  return 1;
}

@end