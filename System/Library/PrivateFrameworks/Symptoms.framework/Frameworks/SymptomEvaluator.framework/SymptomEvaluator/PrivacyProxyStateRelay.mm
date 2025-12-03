@interface PrivacyProxyStateRelay
+ (id)networkStatusString:(unsigned int)string;
+ (id)serviceStatusString:(unsigned int)string;
+ (id)sharedInstance;
+ (id)userTierString:(unsigned int)string;
+ (unsigned)networkStatusFromNSPStatus:(unint64_t)status;
+ (unsigned)serviceStatusFromNSPStatus:(unint64_t)status;
+ (unsigned)userTierFromNSPTier:(unint64_t)tier;
- (NSMutableArray)networks;
- (PrivacyProxyStateRelay)init;
- (SFPrivacyProxyTraffic)traffic;
- (void)dealloc;
- (void)setNetworks:(id)networks;
- (void)setTraffic:(id)traffic;
- (void)updatePrivacyProxyConfiguration;
- (void)updatePrivacyProxyPath;
- (void)updatePrivacyProxyStatus;
@end

@implementation PrivacyProxyStateRelay

+ (id)sharedInstance
{
  v2 = sharedInstance_sharedInstance_23;
  if (!sharedInstance_sharedInstance_23)
  {
    if (sharedInstance_onceToken_0 != -1)
    {
      +[PrivacyProxyStateRelay sharedInstance];
    }

    v2 = sharedInstance_sharedInstance_23;
  }

  return v2;
}

- (NSMutableArray)networks
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__8;
  v9 = __Block_byref_object_dispose__8;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __34__PrivacyProxyStateRelay_networks__block_invoke;
  v4[3] = &unk_27898A848;
  v4[4] = self;
  v4[5] = &v5;
  sf_synchronize(&self->lock, v4);
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

uint64_t __34__PrivacyProxyStateRelay_networks__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 56) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (SFPrivacyProxyTraffic)traffic
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__8;
  v9 = __Block_byref_object_dispose__8;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __33__PrivacyProxyStateRelay_traffic__block_invoke;
  v4[3] = &unk_27898A848;
  v4[4] = self;
  v4[5] = &v5;
  sf_synchronize(&self->lock, v4);
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

uint64_t __33__PrivacyProxyStateRelay_traffic__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 64) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (PrivacyProxyStateRelay)init
{
  v30.receiver = self;
  v30.super_class = PrivacyProxyStateRelay;
  v2 = [(PrivacyProxyStateRelay *)&v30 init];
  v3 = v2;
  if (v2)
  {
    v2->lock._os_unfair_lock_opaque = 0;
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [(PrivacyProxyStateRelay *)v3 setNetworks:v4];

    v5 = objc_alloc_init(SFPrivacyProxyTraffic);
    [(PrivacyProxyStateRelay *)v3 setTraffic:v5];

    v6 = SFGetQueueAttribute(4u);
    v7 = SFGetStandardQueue(3);
    v8 = dispatch_queue_create_with_target_V2("com.apple.symptomsd.privacyProxyStateRelay", v6, v7);
    privacyProxyStateQueue = v3->_privacyProxyStateQueue;
    v3->_privacyProxyStateQueue = v8;

    v10 = v3->_privacyProxyStateQueue;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __30__PrivacyProxyStateRelay_init__block_invoke;
    handler[3] = &unk_27898B048;
    v11 = v3;
    v29 = v11;
    notify_register_dispatch("com.apple.networkserviceproxy.privacy-proxy-configuration-changed", &v3->proxyConfigurationToken, v10, handler);
    v12 = v3->_privacyProxyStateQueue;
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __30__PrivacyProxyStateRelay_init__block_invoke_2;
    v26[3] = &unk_27898B048;
    v13 = v11;
    v27 = v13;
    notify_register_dispatch("com.apple.networkserviceproxy.privacy-proxy-service-status-changed", v11 + 4, v12, v26);
    v14 = v3->_privacyProxyStateQueue;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __30__PrivacyProxyStateRelay_init__block_invoke_3;
    v24[3] = &unk_27898B048;
    v15 = v13;
    v25 = v15;
    notify_register_dispatch("com.apple.networkserviceproxy.privacy-proxy-path-changed", v13 + 5, v14, v24);
    uTF8String = [@"com.apple.networkserviceproxy.privacy-proxy-xpc-listen-ready" UTF8String];
    v17 = v3->_privacyProxyStateQueue;
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __30__PrivacyProxyStateRelay_init__block_invoke_4;
    v22[3] = &unk_27898B048;
    v18 = v15;
    v23 = v18;
    notify_register_dispatch(uTF8String, v15 + 6, v17, v22);
    v19 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v21[0] = 0;
      _os_log_impl(&dword_23255B000, v19, OS_LOG_TYPE_DEBUG, "Fetching initial privacy proxy values", v21, 2u);
    }

    [v18 updatePrivacyProxyConfiguration];
    [v18 updatePrivacyProxyStatus];
    [v18 updatePrivacyProxyPath];
  }

  return v3;
}

uint64_t __30__PrivacyProxyStateRelay_init__block_invoke_4(uint64_t a1)
{
  v2 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_INFO, "NSP ready, updating privacy proxy values", v4, 2u);
  }

  [*(a1 + 32) updatePrivacyProxyConfiguration];
  [*(a1 + 32) updatePrivacyProxyStatus];
  return [*(a1 + 32) updatePrivacyProxyPath];
}

- (void)dealloc
{
  privacyProxyStateQueue = self->_privacyProxyStateQueue;
  self->_privacyProxyStateQueue = 0;

  v4.receiver = self;
  v4.super_class = PrivacyProxyStateRelay;
  [(PrivacyProxyStateRelay *)&v4 dealloc];
}

- (void)setNetworks:(id)networks
{
  networksCopy = networks;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __38__PrivacyProxyStateRelay_setNetworks___block_invoke;
  v6[3] = &unk_27898A7D0;
  v6[4] = self;
  v7 = networksCopy;
  v5 = networksCopy;
  sf_synchronize(&self->lock, v6);
}

- (void)setTraffic:(id)traffic
{
  trafficCopy = traffic;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __37__PrivacyProxyStateRelay_setTraffic___block_invoke;
  v6[3] = &unk_27898A7D0;
  v6[4] = self;
  v7 = trafficCopy;
  v5 = trafficCopy;
  sf_synchronize(&self->lock, v6);
}

- (void)updatePrivacyProxyConfiguration
{
  v3 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEBUG, "Updating privacy proxy configuration", buf, 2u);
  }

  privacyProxyStateQueue = self->_privacyProxyStateQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __57__PrivacyProxyStateRelay_updatePrivacyProxyConfiguration__block_invoke;
  v9[3] = &unk_27898D068;
  v9[4] = self;
  [MEMORY[0x277D2CA68] getStatus:privacyProxyStateQueue completionHandler:v9];
  v5 = self->_privacyProxyStateQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __57__PrivacyProxyStateRelay_updatePrivacyProxyConfiguration__block_invoke_104;
  v8[3] = &unk_27898D470;
  v8[4] = self;
  [MEMORY[0x277D2CA68] getUserTier:v5 completionHandler:v8];
  v6 = self->_privacyProxyStateQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__PrivacyProxyStateRelay_updatePrivacyProxyConfiguration__block_invoke_106;
  v7[3] = &unk_27898D470;
  v7[4] = self;
  [MEMORY[0x277D2CA68] getTrafficState:v6 completionandler:v7];
}

void __57__PrivacyProxyStateRelay_updatePrivacyProxyConfiguration__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    v6 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
    {
      v13 = 138412290;
      v14 = v5;
      v7 = "Get status returned error: %@";
      v8 = v6;
      v9 = OS_LOG_TYPE_ERROR;
      v10 = 12;
LABEL_6:
      _os_log_impl(&dword_23255B000, v8, v9, v7, &v13, v10);
    }
  }

  else
  {
    [*(a1 + 32) setEnabled:a2];
    v11 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_INFO))
    {
      v13 = 67109120;
      LODWORD(v14) = a2;
      v7 = "Privacy proxy enabled: %{BOOL}d";
      v8 = v11;
      v9 = OS_LOG_TYPE_INFO;
      v10 = 8;
      goto LABEL_6;
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __57__PrivacyProxyStateRelay_updatePrivacyProxyConfiguration__block_invoke_104(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    v6 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
    {
      v12 = 138412290;
      v13 = v5;
      _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_ERROR, "Get user tier returned error: %@", &v12, 0xCu);
    }
  }

  else
  {
    [*(a1 + 32) setUserTier:{+[PrivacyProxyStateRelay userTierFromNSPTier:](PrivacyProxyStateRelay, "userTierFromNSPTier:", a2)}];
    v7 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 32);
      v9 = v7;
      v10 = +[PrivacyProxyStateRelay userTierString:](PrivacyProxyStateRelay, "userTierString:", [v8 userTier]);
      v12 = 138412290;
      v13 = v10;
      _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_INFO, "Privacy proxy user tier: %@", &v12, 0xCu);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __57__PrivacyProxyStateRelay_updatePrivacyProxyConfiguration__block_invoke_106(uint64_t a1, unint64_t a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    v6 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412290;
      v11 = v5;
      _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_ERROR, "Get traffic state returned error: %@", &v10, 0xCu);
    }
  }

  else
  {
    v7 = objc_alloc_init(SFPrivacyProxyTraffic);
    [(SFPrivacyProxyTraffic *)v7 setSafariUnencrypted:a2 & 1];
    [(SFPrivacyProxyTraffic *)v7 setSafariDNS:(a2 >> 1) & 1];
    [(SFPrivacyProxyTraffic *)v7 setSafariTrackers:(a2 >> 2) & 1];
    [(SFPrivacyProxyTraffic *)v7 setSafariAll:(a2 >> 3) & 1];
    [(SFPrivacyProxyTraffic *)v7 setSafariHTTP:(a2 >> 4) & 1];
    [(SFPrivacyProxyTraffic *)v7 setMailTrackers:(a2 >> 5) & 1];
    [(SFPrivacyProxyTraffic *)v7 setAnyUnencrypted:(a2 >> 6) & 1];
    [(SFPrivacyProxyTraffic *)v7 setAnyDNS:(a2 >> 7) & 1];
    [(SFPrivacyProxyTraffic *)v7 setAnyKnownTrackers:(a2 >> 8) & 1];
    [(SFPrivacyProxyTraffic *)v7 setAnyAppTrackers:(a2 >> 9) & 1];
    [(SFPrivacyProxyTraffic *)v7 setNewsURLResolution:(a2 >> 10) & 1];
    [*(a1 + 32) setTraffic:v7];
    v8 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_INFO))
    {
      v10 = 138412290;
      v11 = v7;
      _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_INFO, "Privacy proxy traffic: %@", &v10, 0xCu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)updatePrivacyProxyStatus
{
  v3 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEBUG, "Updating privacy proxy status", buf, 2u);
  }

  privacyProxyStateQueue = self->_privacyProxyStateQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __50__PrivacyProxyStateRelay_updatePrivacyProxyStatus__block_invoke;
  v5[3] = &unk_27898D498;
  v5[4] = self;
  [MEMORY[0x277D2CA68] getServiceStatus:privacyProxyStateQueue completionHandler:v5];
}

void __50__PrivacyProxyStateRelay_updatePrivacyProxyStatus__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v34 = v6;
      v8 = "Get service status returned error: %@";
      v9 = v7;
      v10 = OS_LOG_TYPE_ERROR;
      v11 = 12;
LABEL_4:
      _os_log_impl(&dword_23255B000, v9, v10, v8, buf, v11);
    }
  }

  else
  {
    if (!v5)
    {
      v25 = analyticsLogHandle;
      if (!os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_20;
      }

      *buf = 0;
      v8 = "Service status is nil";
      v9 = v25;
      v10 = OS_LOG_TYPE_DEBUG;
      v11 = 2;
      goto LABEL_4;
    }

    [*(a1 + 32) setServiceStatus:{+[PrivacyProxyStateRelay serviceStatusFromNSPStatus:](PrivacyProxyStateRelay, "serviceStatusFromNSPStatus:", objc_msgSend(v5, "serviceStatus"))}];
    v12 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_INFO))
    {
      v13 = *(a1 + 32);
      v14 = v12;
      v15 = +[PrivacyProxyStateRelay serviceStatusString:](PrivacyProxyStateRelay, "serviceStatusString:", [v13 serviceStatus]);
      *buf = 138412290;
      v34 = v15;
      _os_log_impl(&dword_23255B000, v14, OS_LOG_TYPE_INFO, "Privacy proxy service status: %@", buf, 0xCu);
    }

    v27 = a1;
    v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v17 = [v5 networkStatuses];
    v18 = [v17 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v29;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v29 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v28 + 1) + 8 * i);
          v23 = objc_alloc_init(SFPrivacyProxyNetwork);
          -[SFPrivacyProxyNetwork setType:](v23, "setType:", [v22 networkType]);
          -[SFPrivacyProxyNetwork setStatus:](v23, "setStatus:", +[PrivacyProxyStateRelay networkStatusFromNSPStatus:](PrivacyProxyStateRelay, "networkStatusFromNSPStatus:", [v22 networkStatus]));
          [v16 addObject:v23];
        }

        v19 = [v17 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v19);
    }

    [*(v27 + 32) setNetworks:v16];
    v24 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v34 = v16;
      _os_log_impl(&dword_23255B000, v24, OS_LOG_TYPE_INFO, "Privacy proxy network status: %@", buf, 0xCu);
    }

    v6 = 0;
  }

LABEL_20:

  v26 = *MEMORY[0x277D85DE8];
}

- (void)updatePrivacyProxyPath
{
  v2 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *v3 = 0;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_DEBUG, "Updating privacy proxy path", v3, 2u);
  }
}

+ (unsigned)serviceStatusFromNSPStatus:(unint64_t)status
{
  v9 = *MEMORY[0x277D85DE8];
  if (status >= 8)
  {
    v5 = analyticsLogHandle;
    result = os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR);
    if (result)
    {
      v7 = 134217984;
      statusCopy = status;
      _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_ERROR, "serviceStatusFromNSPStatus - invalid nspStatus: %lu", &v7, 0xCu);
      result = 0;
    }
  }

  else
  {
    result = status + 1;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

+ (id)serviceStatusString:(unsigned int)string
{
  v8 = *MEMORY[0x277D85DE8];
  if (string >= 9)
  {
    v5 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
    {
      v7[0] = 67109120;
      v7[1] = string;
      _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_ERROR, "serviceStatusString - invalid status: %u", v7, 8u);
    }

    result = @"Unknown";
  }

  else
  {
    result = off_27898D4B8[string];
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

+ (unsigned)userTierFromNSPTier:(unint64_t)tier
{
  v9 = *MEMORY[0x277D85DE8];
  if (tier == 1)
  {
    result = 1;
  }

  else if (tier == 2)
  {
    result = 2;
  }

  else
  {
    v5 = analyticsLogHandle;
    result = os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR);
    if (result)
    {
      v7 = 134217984;
      tierCopy = tier;
      _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_ERROR, "userTierFromNSPTier - invalid nspTier: %lu", &v7, 0xCu);
      result = 0;
    }
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

+ (id)userTierString:(unsigned int)string
{
  v8 = *MEMORY[0x277D85DE8];
  if (string >= 3)
  {
    v5 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
    {
      v7[0] = 67109120;
      v7[1] = string;
      _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_ERROR, "userTierString - invalid tier: %u", v7, 8u);
    }

    result = @"Unknown";
  }

  else
  {
    result = off_27898D500[string];
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

+ (unsigned)networkStatusFromNSPStatus:(unint64_t)status
{
  v9 = *MEMORY[0x277D85DE8];
  if (status >= 3)
  {
    v5 = analyticsLogHandle;
    result = os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR);
    if (result)
    {
      v7 = 134217984;
      statusCopy = status;
      _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_ERROR, "networkStatusFromNSPStatus - invalid nspStatus: %lu", &v7, 0xCu);
      result = 0;
    }
  }

  else
  {
    result = status + 1;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

+ (id)networkStatusString:(unsigned int)string
{
  v8 = *MEMORY[0x277D85DE8];
  if (string >= 4)
  {
    v5 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
    {
      v7[0] = 67109120;
      v7[1] = string;
      _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_ERROR, "networkStatusString - invalid status: %u", v7, 8u);
    }

    result = @"Unknown";
  }

  else
  {
    result = off_27898D518[string];
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __40__PrivacyProxyStateRelay_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(PrivacyProxyStateRelay);
  v1 = sharedInstance_sharedInstance_23;
  sharedInstance_sharedInstance_23 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end