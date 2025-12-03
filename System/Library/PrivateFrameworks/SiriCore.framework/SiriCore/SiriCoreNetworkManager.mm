@interface SiriCoreNetworkManager
+ (id)connectionTypeForInterfaceName:(id)name isCellular:(BOOL)cellular;
+ (id)sharedInstance;
+ (int64_t)connectionSubTypeForCellularInterface;
+ (int64_t)connectionTypeForInterface:(id)interface;
+ (void)_ifnameTypeForName:(char *)name isWiFi:(BOOL *)fi isCellular:(BOOL *)cellular;
+ (void)acquireDormancySuspendAssertion:(const void *)assertion;
+ (void)getCarrierName:(id *)name signalStrength:(id *)strength subscriptionCount:(id *)count;
+ (void)releaseDormancySuspendAssertion:(void *)assertion;
- (BOOL)_getConnectionSuccessRate:(id)rate hasMetric:(BOOL *)metric;
- (id)_init;
- (id)_wiFiManagerClient;
- (int64_t)_getConnectionTechnologyForCellularInterface;
- (int64_t)_reportCellularHistoricalQuality;
- (int64_t)_reportCellularInstantQuality;
- (int64_t)_reportWiFiHistoricalQuality;
- (int64_t)_reportWiFiInstantQuality;
- (int64_t)anyNetworkQuality;
- (int64_t)cellularNetworkQuality;
- (int64_t)wifiNetworkQuality;
- (void)_dataServiceDescriptorUpdate;
- (void)_dataSubscriptionContextChange:(id)change;
- (void)_getCarrierName:(id *)name;
- (void)_pathUpdated:(id)updated;
- (void)_serviceSubscriptionInfoUpdate;
- (void)_signalStrengthChange:(id)change;
- (void)_signalStrengthUpdate;
- (void)_stopMonitoringNetwork;
- (void)_subscribeToLinkRecommendations:(id)recommendations;
- (void)acquireWiFiAssertion:(int64_t)assertion;
- (void)addObserver:(id)observer;
- (void)carrierBundleChange:(id)change;
- (void)deRegisterWithWirelessCoexManager;
- (void)dealloc;
- (void)getLinkRecommendation:(BOOL)recommendation recommendation:(id)a4;
- (void)getNetworkPerformanceFeed;
- (void)getQualityReport:(id)report;
- (void)getSignalStrength:(id *)strength subscriptionCount:(unint64_t *)count;
- (void)preferredDataSimChanged:(id)changed;
- (void)proximityRecomendationWithCompletion:(id)completion;
- (void)registerWithWirelessCoexManager;
- (void)releaseWiFiAssertion;
- (void)removeObserver:(id)observer;
- (void)resetLinkMetrics;
- (void)signalStrengthChanged:(id)changed info:(id)info;
- (void)simStatusDidChange:(id)change status:(id)status;
- (void)startMonitoringNetworkForHost:(id)host;
- (void)stopMonitoringNetwork;
@end

@implementation SiriCoreNetworkManager

- (BOOL)_getConnectionSuccessRate:(id)rate hasMetric:(BOOL *)metric
{
  if (metric)
  {
    *metric = 0;
  }

  return 1;
}

- (void)signalStrengthChanged:(id)changed info:(id)info
{
  v13 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  infoCopy = info;
  v8 = *MEMORY[0x277CEF0E0];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E0], OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315138;
    v12 = "[SiriCoreNetworkManager signalStrengthChanged:info:]";
    _os_log_impl(&dword_2669D1000, v8, OS_LOG_TYPE_DEFAULT, "%s ", &v11, 0xCu);
  }

  if (changedCopy)
  {
    if (infoCopy)
    {
      os_unfair_lock_lock(&self->_ctLock);
      lastDataSubscriptionSlot = self->_lastDataSubscriptionSlot;
      os_unfair_lock_unlock(&self->_ctLock);
      if ([changedCopy slotID] == lastDataSubscriptionSlot)
      {
        [(SiriCoreNetworkManager *)self _signalStrengthChange:infoCopy];
      }
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)simStatusDidChange:(id)change status:(id)status
{
  v21 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  statusCopy = status;
  v8 = statusCopy;
  if (changeCopy && statusCopy)
  {
    v9 = *MEMORY[0x277CEF0A0];
    if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_DEFAULT))
    {
      v10 = v9;
      v15 = 136315650;
      v16 = "[SiriCoreNetworkManager simStatusDidChange:status:]";
      v17 = 2048;
      slotID = [changeCopy slotID];
      v19 = 2112;
      v20 = v8;
      _os_log_impl(&dword_2669D1000, v10, OS_LOG_TYPE_DEFAULT, "%s SIM Slot %ld - Status: %@", &v15, 0x20u);
    }

    os_unfair_lock_lock(&self->_ctLock);
    if ([changeCopy slotID] == 1)
    {
      v11 = 88;
    }

    else
    {
      if ([changeCopy slotID] != 2)
      {
LABEL_10:
        os_unfair_lock_unlock(&self->_ctLock);
        [(SiriCoreNetworkManager *)self _serviceSubscriptionInfoUpdate];
        [(SiriCoreNetworkManager *)self _dataServiceDescriptorUpdate];
        goto LABEL_11;
      }

      v11 = 96;
    }

    v12 = [v8 copy];
    v13 = *(&self->super.isa + v11);
    *(&self->super.isa + v11) = v12;

    goto LABEL_10;
  }

LABEL_11:

  v14 = *MEMORY[0x277D85DE8];
}

- (void)carrierBundleChange:(id)change
{
  v12 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  v5 = *MEMORY[0x277CEF0A0];
  if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v11 = "[SiriCoreNetworkManager carrierBundleChange:]";
    _os_log_impl(&dword_2669D1000, v5, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  os_unfair_lock_lock(&self->_ctLock);
  lastDataSubscriptionSlot = self->_lastDataSubscriptionSlot;
  os_unfair_lock_unlock(&self->_ctLock);
  if (changeCopy && lastDataSubscriptionSlot)
  {
    if ([changeCopy slotID] == lastDataSubscriptionSlot)
    {
      [(SiriCoreNetworkManager *)self _dataSubscriptionContextChange:changeCopy];
    }
  }

  else
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __46__SiriCoreNetworkManager_carrierBundleChange___block_invoke;
    block[3] = &unk_279BD6518;
    block[4] = self;
    dispatch_async(queue, block);
  }

  [(SiriCoreNetworkManager *)self _dataServiceDescriptorUpdate];

  v8 = *MEMORY[0x277D85DE8];
}

uint64_t __46__SiriCoreNetworkManager_carrierBundleChange___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 64);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __46__SiriCoreNetworkManager_carrierBundleChange___block_invoke_2;
  v4[3] = &unk_279BD6350;
  v4[4] = v1;
  return [v2 getCurrentDataSubscriptionContext:v4];
}

uint64_t __46__SiriCoreNetworkManager_carrierBundleChange___block_invoke_2(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return [*(result + 32) _dataSubscriptionContextChange:a2];
  }

  return result;
}

- (void)preferredDataSimChanged:(id)changed
{
  v9 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  v5 = *MEMORY[0x277CEF0E0];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E0], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[SiriCoreNetworkManager preferredDataSimChanged:]";
    _os_log_impl(&dword_2669D1000, v5, OS_LOG_TYPE_DEFAULT, "%s ", &v7, 0xCu);
  }

  [(SiriCoreNetworkManager *)self _dataSubscriptionContextChange:changedCopy];
  [(SiriCoreNetworkManager *)self _dataServiceDescriptorUpdate];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_signalStrengthChange:(id)change
{
  v12 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  v5 = *MEMORY[0x277CEF0E0];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E0], OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315138;
    v11 = "[SiriCoreNetworkManager _signalStrengthChange:]";
    _os_log_impl(&dword_2669D1000, v5, OS_LOG_TYPE_DEFAULT, "%s ", &v10, 0xCu);
  }

  os_unfair_lock_lock(&self->_ctLock);
  bars = [changeCopy bars];
  v7 = [bars copy];
  lastSignalStrength = self->_lastSignalStrength;
  self->_lastSignalStrength = v7;

  os_unfair_lock_unlock(&self->_ctLock);
  v9 = *MEMORY[0x277D85DE8];
}

- (void)_signalStrengthUpdate
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF0A0];
  if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v8 = "[SiriCoreNetworkManager _signalStrengthUpdate]";
    _os_log_impl(&dword_2669D1000, v3, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__SiriCoreNetworkManager__signalStrengthUpdate__block_invoke;
  block[3] = &unk_279BD6518;
  block[4] = self;
  dispatch_async(queue, block);
  v5 = *MEMORY[0x277D85DE8];
}

uint64_t __47__SiriCoreNetworkManager__signalStrengthUpdate__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 64);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __47__SiriCoreNetworkManager__signalStrengthUpdate__block_invoke_2;
  v4[3] = &unk_279BD6350;
  v4[4] = v1;
  return [v2 getCurrentDataSubscriptionContext:v4];
}

void __47__SiriCoreNetworkManager__signalStrengthUpdate__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    if (v6)
    {
      v10 = *MEMORY[0x277CEF0A0];
      if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v14 = "[SiriCoreNetworkManager _signalStrengthUpdate]_block_invoke";
        v15 = 2112;
        v16 = v7;
        _os_log_impl(&dword_2669D1000, v10, OS_LOG_TYPE_DEFAULT, "%s Error getting current Data Subscription Context: %@", buf, 0x16u);
      }
    }
  }

  else
  {
    v8 = *(a1 + 32);
    v9 = *(v8 + 64);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __47__SiriCoreNetworkManager__signalStrengthUpdate__block_invoke_3;
    v12[3] = &unk_279BD6328;
    v12[4] = v8;
    [v9 getSignalStrengthInfo:v5 completion:v12];
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __47__SiriCoreNetworkManager__signalStrengthUpdate__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = *MEMORY[0x277CEF0A0];
    if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315394;
      v10 = "[SiriCoreNetworkManager _signalStrengthUpdate]_block_invoke_3";
      v11 = 2112;
      v12 = v6;
      _os_log_impl(&dword_2669D1000, v7, OS_LOG_TYPE_DEFAULT, "%s Error getting Signal Strength: %@", &v9, 0x16u);
    }
  }

  else
  {
    [*(a1 + 32) _signalStrengthChange:v5];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_serviceSubscriptionInfoUpdate
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF0A0];
  if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v8 = "[SiriCoreNetworkManager _serviceSubscriptionInfoUpdate]";
    _os_log_impl(&dword_2669D1000, v3, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__SiriCoreNetworkManager__serviceSubscriptionInfoUpdate__block_invoke;
  block[3] = &unk_279BD6518;
  block[4] = self;
  dispatch_async(queue, block);
  v5 = *MEMORY[0x277D85DE8];
}

uint64_t __56__SiriCoreNetworkManager__serviceSubscriptionInfoUpdate__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 64);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __56__SiriCoreNetworkManager__serviceSubscriptionInfoUpdate__block_invoke_2;
  v4[3] = &unk_279BD6300;
  v4[4] = v1;
  return [v2 getSubscriptionInfo:v4];
}

void __56__SiriCoreNetworkManager__serviceSubscriptionInfoUpdate__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    if (v6)
    {
      v14 = *MEMORY[0x277CEF0A0];
      if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v21 = "[SiriCoreNetworkManager _serviceSubscriptionInfoUpdate]_block_invoke_2";
        v22 = 2112;
        v23 = v7;
        _os_log_impl(&dword_2669D1000, v14, OS_LOG_TYPE_DEFAULT, "%s Error getting Subscription Info: %@", buf, 0x16u);
      }
    }
  }

  else
  {
    v8 = [v5 subscriptions];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v9 = [v8 countByEnumeratingWithState:&v16 objects:v24 count:16];
    if (v9)
    {
      v10 = v9;
      LODWORD(v11) = 0;
      v12 = *v17;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v17 != v12)
          {
            objc_enumerationMutation(v8);
          }

          v11 = v11 + ([*(*(&v16 + 1) + 8 * i) isSimHidden] ^ 1);
        }

        v10 = [v8 countByEnumeratingWithState:&v16 objects:v24 count:16];
      }

      while (v10);
    }

    else
    {
      v11 = 0;
    }

    os_unfair_lock_lock((*(a1 + 32) + 60));
    *(*(a1 + 32) + 120) = v11;
    os_unfair_lock_unlock((*(a1 + 32) + 60));
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_dataServiceDescriptorUpdate
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF0A0];
  if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v8 = "[SiriCoreNetworkManager _dataServiceDescriptorUpdate]";
    _os_log_impl(&dword_2669D1000, v3, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__SiriCoreNetworkManager__dataServiceDescriptorUpdate__block_invoke;
  block[3] = &unk_279BD6518;
  block[4] = self;
  dispatch_async(queue, block);
  v5 = *MEMORY[0x277D85DE8];
}

uint64_t __54__SiriCoreNetworkManager__dataServiceDescriptorUpdate__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 64);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __54__SiriCoreNetworkManager__dataServiceDescriptorUpdate__block_invoke_2;
  v4[3] = &unk_279BD62D8;
  v4[4] = v1;
  return [v2 getCurrentDataServiceDescriptor:v4];
}

void __54__SiriCoreNetworkManager__dataServiceDescriptorUpdate__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = *MEMORY[0x277CEF0A0];
    if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136315394;
      v13 = "[SiriCoreNetworkManager _dataServiceDescriptorUpdate]_block_invoke_2";
      v14 = 2112;
      v15 = v6;
      _os_log_impl(&dword_2669D1000, v7, OS_LOG_TYPE_DEFAULT, "%s Error getting current Data Service Descriptor: %@", &v12, 0x16u);
    }
  }

  else
  {
    os_unfair_lock_lock((*(a1 + 32) + 60));
    v8 = [v5 copy];
    v9 = *(a1 + 32);
    v10 = *(v9 + 80);
    *(v9 + 80) = v8;

    os_unfair_lock_unlock((*(a1 + 32) + 60));
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_dataSubscriptionContextChange:(id)change
{
  v12 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  if (changeCopy)
  {
    v5 = *MEMORY[0x277CEF0A0];
    if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v11 = "[SiriCoreNetworkManager _dataSubscriptionContextChange:]";
      _os_log_impl(&dword_2669D1000, v5, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
    }

    queue = self->_queue;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __57__SiriCoreNetworkManager__dataSubscriptionContextChange___block_invoke;
    v8[3] = &unk_279BD6540;
    v8[4] = self;
    v9 = changeCopy;
    dispatch_async(queue, v8);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __57__SiriCoreNetworkManager__dataSubscriptionContextChange___block_invoke(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x277CC3620]) initWithBundleType:1];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(v3 + 64);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __57__SiriCoreNetworkManager__dataSubscriptionContextChange___block_invoke_2;
  v6[3] = &unk_279BD62B0;
  v6[4] = v3;
  v7 = v4;
  [v5 copyCarrierBundleValue:v7 key:@"CarrierName" bundleType:v2 completion:v6];
}

uint64_t __57__SiriCoreNetworkManager__dataSubscriptionContextChange___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  isKindOfClass = a2;
  v6 = isKindOfClass;
  if (!a3)
  {
    v13 = isKindOfClass;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v6 = v13;
    if (isKindOfClass)
    {
      v7 = v13;
      os_unfair_lock_lock((*(a1 + 32) + 60));
      v8 = [v7 copy];
      v9 = *(a1 + 32);
      v10 = *(v9 + 128);
      *(v9 + 128) = v8;

      *(*(a1 + 32) + 72) = [*(a1 + 40) slotID];
      if ([*(a1 + 40) slotID] == 1)
      {
        v11 = 88;
      }

      else
      {
        if ([*(a1 + 40) slotID] != 2)
        {
LABEL_8:
          os_unfair_lock_unlock((*(a1 + 32) + 60));

          v6 = v13;
          goto LABEL_9;
        }

        v11 = 96;
      }

      objc_storeStrong((*(a1 + 32) + v11), *MEMORY[0x277CC3F00]);
      goto LABEL_8;
    }
  }

LABEL_9:

  return MEMORY[0x2821F96F8](isKindOfClass, v6);
}

- (void)resetLinkMetrics
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__SiriCoreNetworkManager_resetLinkMetrics__block_invoke;
  block[3] = &unk_279BD6518;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __42__SiriCoreNetworkManager_resetLinkMetrics__block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if (*(v1 + 136))
  {
    return [*(v1 + 168) resetLinkMetrics];
  }

  return result;
}

- (void)proximityRecomendationWithCompletion:(id)completion
{
  completionCopy = completion;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__SiriCoreNetworkManager_proximityRecomendationWithCompletion___block_invoke;
  block[3] = &unk_279BD6288;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(queue, block);
}

uint64_t __63__SiriCoreNetworkManager_proximityRecomendationWithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, 0);
  }

  return result;
}

- (void)getLinkRecommendation:(BOOL)recommendation recommendation:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __63__SiriCoreNetworkManager_getLinkRecommendation_recommendation___block_invoke;
    block[3] = &unk_279BD6260;
    block[4] = self;
    v10 = v6;
    recommendationCopy = recommendation;
    dispatch_async(queue, block);
  }
}

void __63__SiriCoreNetworkManager_getLinkRecommendation_recommendation___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2[17])
  {
    v3 = *(a1 + 48);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __63__SiriCoreNetworkManager_getLinkRecommendation_recommendation___block_invoke_31;
    v6[3] = &unk_279BD6238;
    v7 = *(a1 + 40);
    [v2 _getLinkRecommendationSafe:v3 recommendation:v6];
  }

  else
  {
    v4 = *MEMORY[0x277CEF0A0];
    if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v9 = "[SiriCoreNetworkManager getLinkRecommendation:recommendation:]_block_invoke";
      _os_log_error_impl(&dword_2669D1000, v4, OS_LOG_TYPE_ERROR, "%s iRAT client not registered", buf, 0xCu);
      v2 = *(a1 + 32);
    }

    [v2 _defaultBTLinkRecommendation];
    [*(a1 + 32) _defaultWiFiLinkRecommendation];
    (*(*(a1 + 40) + 16))();
  }

  v5 = *MEMORY[0x277D85DE8];
}

uint64_t __63__SiriCoreNetworkManager_getLinkRecommendation_recommendation___block_invoke_31(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = *MEMORY[0x277CEF0A0];
  if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315650;
    v10 = "[SiriCoreNetworkManager getLinkRecommendation:recommendation:]_block_invoke";
    v11 = 1024;
    v12 = a2;
    v13 = 1024;
    v14 = a3;
    _os_log_impl(&dword_2669D1000, v6, OS_LOG_TYPE_DEFAULT, "%s %d , %d", &v9, 0x18u);
  }

  result = *(a1 + 32);
  if (result)
  {
    result = (*(result + 16))(result, a2, a3);
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)deRegisterWithWirelessCoexManager
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__SiriCoreNetworkManager_deRegisterWithWirelessCoexManager__block_invoke;
  block[3] = &unk_279BD6518;
  block[4] = self;
  dispatch_async(queue, block);
}

void __59__SiriCoreNetworkManager_deRegisterWithWirelessCoexManager__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 136);
  if (v2)
  {
    [v2 unregisterClient];
    v3 = *(a1 + 32);
    v4 = *(v3 + 136);
    *(v3 + 136) = 0;

    *(*(a1 + 32) + 144) = 0;
  }
}

- (void)registerWithWirelessCoexManager
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__SiriCoreNetworkManager_registerWithWirelessCoexManager__block_invoke;
  block[3] = &unk_279BD6518;
  block[4] = self;
  dispatch_async(queue, block);
}

void __57__SiriCoreNetworkManager_registerWithWirelessCoexManager__block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  if (!*(*(a1 + 32) + 136))
  {
    WRM_iRATInterfaceClass_2574 = getWRM_iRATInterfaceClass_2574();
    if (WRM_iRATInterfaceClass_2574)
    {
      v3 = objc_alloc_init(WRM_iRATInterfaceClass_2574);
      v4 = *(a1 + 32);
      v5 = *(v4 + 136);
      *(v4 + 136) = v3;

      v6 = *MEMORY[0x277CEF0A0];
      if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_INFO))
      {
        v7 = *(*(a1 + 32) + 136);
        v15 = 136315394;
        v16 = "[SiriCoreNetworkManager registerWithWirelessCoexManager]_block_invoke";
        v17 = 2112;
        v18 = v7;
        _os_log_impl(&dword_2669D1000, v6, OS_LOG_TYPE_INFO, "%s %@", &v15, 0x16u);
      }

      [*(*(a1 + 32) + 136) registerClient:22 queue:*(*(a1 + 32) + 8)];
      v8 = -[SiriCoreLinkRecommendationInfo initWithPreferences:wifiPreference:timeTaken:metrics:]([SiriCoreLinkRecommendationInfo alloc], "initWithPreferences:wifiPreference:timeTaken:metrics:", [*(a1 + 32) _defaultBTLinkRecommendation], objc_msgSend(*(a1 + 32), "_defaultWiFiLinkRecommendation"), 0, 0.0);
      v9 = *(a1 + 32);
      v10 = *(v9 + 168);
      *(v9 + 168) = v8;

      v11 = *(a1 + 32);
      v12 = v11[21];
      [v11 _subscribeToLinkRecommendations:v12];
      *(*(a1 + 32) + 152) = 1;
    }

    else
    {
      v13 = *MEMORY[0x277CEF0A0];
      if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_ERROR))
      {
        v15 = 136315138;
        v16 = "[SiriCoreNetworkManager registerWithWirelessCoexManager]_block_invoke";
        _os_log_error_impl(&dword_2669D1000, v13, OS_LOG_TYPE_ERROR, "%s Unable to find iRATInterface class", &v15, 0xCu);
      }
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __68__SiriCoreNetworkManager__getLinkRecommendationSafe_recommendation___block_invoke(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = MEMORY[0x277CEF0A0];
  v5 = *MEMORY[0x277CEF0A0];
  if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v26 = "[SiriCoreNetworkManager _getLinkRecommendationSafe:recommendation:]_block_invoke";
    _os_log_impl(&dword_2669D1000, v5, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  if (*(*(a1 + 32) + 144) == 1)
  {
    v6 = [MEMORY[0x277CCAC38] processInfo];
    [v6 systemUptime];
    *(*(*(a1 + 48) + 8) + 24) = v7 - *(a1 + 80);

    v8 = [v3 count];
    v9 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v26 = "[SiriCoreNetworkManager _getLinkRecommendationSafe:recommendation:]_block_invoke";
      v27 = 1024;
      v28 = v8;
      _os_log_impl(&dword_2669D1000, v9, OS_LOG_TYPE_DEFAULT, "%s count of recommendations is %d", buf, 0x12u);
    }

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v10 = v3;
    v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v21;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v21 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v20 + 1) + 8 * i);
          if ([v15 RecommendationType] == 2)
          {
            v16 = *(*(*(a1 + 56) + 8) + 40);
            v17 = [v15 metrics];
            [v16 setLinkMetrics:v17];
          }

          if ([v15 linkIsRecommended] && objc_msgSend(v15, "linkRecommendationIsValid") && objc_msgSend(v15, "RecommendationType"))
          {
            if ([v15 RecommendationType] == 1)
            {
              *(*(*(a1 + 64) + 8) + 24) = 1;
            }

            if ([v15 RecommendationType] == 2)
            {
              *(*(*(a1 + 72) + 8) + 24) = 1;
            }
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v12);
    }

    *(*(a1 + 32) + 144) = 0;
    v18 = [MEMORY[0x277CEF158] sharedAnalytics];
    [v18 logEventWithType:1012 context:0];

    dispatch_group_leave(*(a1 + 40));
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __68__SiriCoreNetworkManager__getLinkRecommendationSafe_recommendation___block_invoke_28(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  ++*(*(*(a1 + 48) + 8) + 24);
  v2 = *(*(a1 + 48) + 8);
  if (!*(v2 + 24))
  {
    *(v2 + 24) = 1;
  }

  v3 = *(a1 + 32);
  if (*(v3 + 144) == 1 && *(*(*(a1 + 48) + 8) + 24) == *(v3 + 152))
  {
    *(v3 + 144) = 0;
    v4 = *MEMORY[0x277CEF0A0];
    if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_ERROR))
    {
      v9 = 136315138;
      v10 = "[SiriCoreNetworkManager _getLinkRecommendationSafe:recommendation:]_block_invoke";
      _os_log_error_impl(&dword_2669D1000, v4, OS_LOG_TYPE_ERROR, "%s getLinkRecommendation timedout", &v9, 0xCu);
    }

    v5 = [MEMORY[0x277CCAC38] processInfo];
    [v5 systemUptime];
    *(*(*(a1 + 56) + 8) + 24) = v6 - *(a1 + 64);

    v7 = [MEMORY[0x277CEF158] sharedAnalytics];
    [v7 logEventWithType:1013 context:0];

    dispatch_group_leave(*(a1 + 40));
  }

  v8 = *MEMORY[0x277D85DE8];
}

uint64_t __68__SiriCoreNetworkManager__getLinkRecommendationSafe_recommendation___block_invoke_29(uint64_t a1)
{
  [*(*(*(a1 + 48) + 8) + 40) setBTPreference:*(*(*(a1 + 56) + 8) + 24)];
  [*(*(*(a1 + 48) + 8) + 40) setWiFiPreference:*(*(*(a1 + 64) + 8) + 24)];
  [*(*(*(a1 + 48) + 8) + 40) setTimeTaken:*(*(*(a1 + 72) + 8) + 24)];
  if (*(a1 + 80) == 1)
  {
    v2 = [MEMORY[0x277CCAC38] processInfo];
    [v2 systemUptime];
    *(*(a1 + 32) + 160) = v3;
  }

  else
  {
    *(*(a1 + 32) + 160) = 0;
  }

  v4 = *(*(*(a1 + 56) + 8) + 24);
  v5 = *(*(*(a1 + 64) + 8) + 24);
  v6 = *(*(a1 + 40) + 16);

  return v6();
}

- (void)_subscribeToLinkRecommendations:(id)recommendations
{
  recommendationsCopy = recommendations;
  dispatch_assert_queue_V2(self->_queue);
  interface = self->_interface;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__SiriCoreNetworkManager__subscribeToLinkRecommendations___block_invoke;
  v7[3] = &unk_279BD6198;
  v7[4] = self;
  v8 = recommendationsCopy;
  v6 = recommendationsCopy;
  [(WRM_iRATInterface *)interface subscribeStandaloneLinkRecommendation:v7];
}

void __58__SiriCoreNetworkManager__subscribeToLinkRecommendations___block_invoke(uint64_t a1, int a2, int a3, void *a4)
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = *MEMORY[0x277CEF0A0];
  if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315906;
    v14 = "[SiriCoreNetworkManager _subscribeToLinkRecommendations:]_block_invoke";
    v15 = 1024;
    v16 = a2;
    v17 = 1024;
    v18 = a3;
    v19 = 2112;
    v20 = v7;
    _os_log_impl(&dword_2669D1000, v8, OS_LOG_TYPE_DEFAULT, "%s Received an asynchronous recommendation type %d, linkType %d, value %@", &v13, 0x22u);
  }

  dispatch_assert_queue_V2(*(*(a1 + 32) + 8));
  if (a2 == 1)
  {
    if (a3 == 1)
    {
      v9 = 1;
    }

    else
    {
      if (a3)
      {
LABEL_9:
        v10 = [MEMORY[0x277CCAC38] processInfo];
        [v10 systemUptime];
        *(*(a1 + 32) + 160) = v11;

        goto LABEL_10;
      }

      v9 = 0;
    }

    [*(a1 + 40) setWiFiPreference:v9];
    goto LABEL_9;
  }

LABEL_10:

  v12 = *MEMORY[0x277D85DE8];
}

- (void)acquireWiFiAssertion:(int64_t)assertion
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __47__SiriCoreNetworkManager_acquireWiFiAssertion___block_invoke;
  v4[3] = &unk_279BD6170;
  v4[4] = self;
  v4[5] = assertion;
  dispatch_async(queue, v4);
}

void __47__SiriCoreNetworkManager_acquireWiFiAssertion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _wiFiManagerClient];
  [v2 acquireWiFiAssertion:*(a1 + 40)];
}

- (void)releaseWiFiAssertion
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__SiriCoreNetworkManager_releaseWiFiAssertion__block_invoke;
  block[3] = &unk_279BD6518;
  block[4] = self;
  dispatch_async(queue, block);
}

void __43__SiriCoreNetworkManager_forceFastDormancy__block_invoke()
{
  v6 = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CEF0A0];
  if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[SiriCoreNetworkManager forceFastDormancy]_block_invoke";
    _os_log_impl(&dword_2669D1000, v0, OS_LOG_TYPE_DEFAULT, "%s Forcing fast dormancy", &v4, 0xCu);
  }

  v1 = dispatch_get_global_queue(21, 0);
  v2 = _CTServerConnectionCreateOnTargetQueue();

  if (v2)
  {
    _CTServerForceFastDormancy();
    CFRelease(v2);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (int64_t)_getConnectionTechnologyForCellularInterface
{
  v19 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_ctLock);
  v3 = [(CTServiceDescriptor *)self->_dataServiceDescriptor copy];
  os_unfair_lock_unlock(&self->_ctLock);
  v4 = MEMORY[0x277CEF0A0];
  if (v3)
  {
    coreTelephonyClient = self->_coreTelephonyClient;
    v14 = 0;
    v6 = [(CoreTelephonyClient *)coreTelephonyClient getCurrentRat:v3 error:&v14];
    v7 = v14;
    if (v7)
    {
      v8 = *v4;
      if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v16 = "[SiriCoreNetworkManager _getConnectionTechnologyForCellularInterface]";
        v17 = 2112;
        v18 = v7;
        _os_log_impl(&dword_2669D1000, v8, OS_LOG_TYPE_DEFAULT, "%s Error getting current Radio Access Technology: %@", buf, 0x16u);
      }
    }
  }

  else
  {
    v6 = 0;
  }

  if (([(__CFString *)v6 isEqualToString:*MEMORY[0x277CC35C8]]& 1) != 0)
  {
    v9 = 2004;
  }

  else if (([(__CFString *)v6 isEqualToString:*MEMORY[0x277CC35C0]]& 1) != 0)
  {
    v9 = 2005;
  }

  else if (([(__CFString *)v6 isEqualToString:*MEMORY[0x277CC35F8]]& 1) != 0)
  {
    v9 = 2006;
  }

  else if (([(__CFString *)v6 isEqualToString:*MEMORY[0x277CC35D0]]& 1) != 0)
  {
    v9 = 2007;
  }

  else if (([(__CFString *)v6 isEqualToString:*MEMORY[0x277CC35D8]]& 1) != 0)
  {
    v9 = 2008;
  }

  else if (([(__CFString *)v6 isEqualToString:*MEMORY[0x277CC35A0]]& 1) != 0)
  {
    v9 = 2002;
  }

  else if (([(__CFString *)v6 isEqualToString:*MEMORY[0x277CC35A8]]& 1) != 0)
  {
    v9 = 2009;
  }

  else if (([(__CFString *)v6 isEqualToString:*MEMORY[0x277CC35B0]]& 1) != 0)
  {
    v9 = 2010;
  }

  else if (([(__CFString *)v6 isEqualToString:*MEMORY[0x277CC35B8]]& 1) != 0)
  {
    v9 = 2011;
  }

  else if (([(__CFString *)v6 isEqualToString:*MEMORY[0x277CC3600]]& 1) != 0)
  {
    v9 = 2012;
  }

  else if (([(__CFString *)v6 isEqualToString:*MEMORY[0x277CC35E0]]& 1) != 0)
  {
    v9 = 2003;
  }

  else if (([(__CFString *)v6 isEqualToString:*MEMORY[0x277CC35F0]]& 1) != 0)
  {
    v9 = 2013;
  }

  else if ([(__CFString *)v6 isEqualToString:*MEMORY[0x277CC35E8]])
  {
    v9 = 2014;
  }

  else
  {
    v9 = 2000;
  }

  v10 = *v4;
  if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
  {
    v11 = @"WWAN";
    if (v6)
    {
      v11 = v6;
    }

    *buf = 136315394;
    v16 = "[SiriCoreNetworkManager _getConnectionTechnologyForCellularInterface]";
    v17 = 2112;
    v18 = v11;
    _os_log_impl(&dword_2669D1000, v10, OS_LOG_TYPE_DEFAULT, "%s Current Radio Access Technology: %@", buf, 0x16u);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)_getCarrierName:(id *)name
{
  os_unfair_lock_lock(&self->_ctLock);
  lastDataSubscriptionSlot = self->_lastDataSubscriptionSlot;
  if (lastDataSubscriptionSlot == 1)
  {
    if ([(NSString *)self->_subscriptionSlotOneStatus isEqualToString:*MEMORY[0x277CC3F00]])
    {
LABEL_6:
      v8 = [(NSString *)self->_carrierName copy];
      goto LABEL_8;
    }

    lastDataSubscriptionSlot = self->_lastDataSubscriptionSlot;
  }

  if (lastDataSubscriptionSlot == 2 && [(NSString *)self->_subscriptionSlotTwoStatus isEqualToString:*MEMORY[0x277CC3F00]])
  {
    goto LABEL_6;
  }

  v8 = 0;
LABEL_8:
  os_unfair_lock_unlock(&self->_ctLock);
  v6 = v8;
  if (name)
  {
    v7 = v8;
    v6 = v8;
    *name = v8;
  }
}

- (void)getSignalStrength:(id *)strength subscriptionCount:(unint64_t *)count
{
  os_unfair_lock_lock(&self->_ctLock);
  v10 = [(NSNumber *)self->_lastSignalStrength copy];
  subscriptionCount = self->_subscriptionCount;
  os_unfair_lock_unlock(&self->_ctLock);
  if (count)
  {
    *count = subscriptionCount;
  }

  v8 = v10;
  if (strength)
  {
    v9 = v10;
    v8 = v10;
    *strength = v10;
  }
}

- (int64_t)_reportWiFiHistoricalQuality
{
  if (!self->_hasSymptomsBasedHistoricalWiFiQuality)
  {
    return 0;
  }

  if (self->_symptomsBasedHistoricalWiFiQualityIsGood)
  {
    return 1;
  }

  return 2;
}

- (int64_t)_reportWiFiInstantQuality
{
  if (!self->_hasSymptomsBasedInstantWiFiQuality)
  {
    return 0;
  }

  if (self->_symptomsBasedInstantWiFiQualityIsGood)
  {
    return 1;
  }

  return 2;
}

- (int64_t)_reportCellularHistoricalQuality
{
  if (!self->_hasSymptomsBasedHistoricalCellQuality)
  {
    return 0;
  }

  if (self->_symptomsBasedHistoricalCellQualityIsGood)
  {
    return 1;
  }

  return 2;
}

- (int64_t)_reportCellularInstantQuality
{
  if (!self->_hasSymptomsBasedInstantCellQuality)
  {
    return 0;
  }

  if (self->_symptomsBasedInstantCellQualityIsGood)
  {
    return 1;
  }

  return 2;
}

- (void)getQualityReport:(id)report
{
  reportCopy = report;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__SiriCoreNetworkManager_getQualityReport___block_invoke;
  v7[3] = &unk_279BD6148;
  v7[4] = self;
  v8 = reportCopy;
  v6 = reportCopy;
  dispatch_async(queue, v7);
}

void __43__SiriCoreNetworkManager_getQualityReport___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(SiriCoreNetworkQualityReport);
  -[SiriCoreNetworkQualityReport setCellularInstant:](v2, "setCellularInstant:", [*(a1 + 32) _reportCellularInstantQuality]);
  -[SiriCoreNetworkQualityReport setCellularHistorical:](v2, "setCellularHistorical:", [*(a1 + 32) _reportCellularHistoricalQuality]);
  -[SiriCoreNetworkQualityReport setWifiInstant:](v2, "setWifiInstant:", [*(a1 + 32) _reportWiFiInstantQuality]);
  -[SiriCoreNetworkQualityReport setWifiHistorical:](v2, "setWifiHistorical:", [*(a1 + 32) _reportWiFiHistoricalQuality]);
  (*(*(a1 + 40) + 16))();
}

- (int64_t)anyNetworkQuality
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __43__SiriCoreNetworkManager_anyNetworkQuality__block_invoke;
  v5[3] = &unk_279BD6120;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __43__SiriCoreNetworkManager_anyNetworkQuality__block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if (*(v1 + 50) == 1)
  {
    v2 = *(v1 + 51);
  }

  else
  {
    v2 = 0;
  }

  *(*(*(result + 40) + 8) + 24) = v2;
  v3 = *(*(result + 40) + 8);
  if (!*(v3 + 24))
  {
    v4 = *(result + 32);
    if (*(v4 + 48) == 1)
    {
      v5 = *(v4 + 49);
    }

    else
    {
      v5 = 0;
    }

    *(v3 + 24) = v5;
  }

  return result;
}

- (int64_t)wifiNetworkQuality
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __44__SiriCoreNetworkManager_wifiNetworkQuality__block_invoke;
  v5[3] = &unk_279BD6120;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __44__SiriCoreNetworkManager_wifiNetworkQuality__block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if (*(v1 + 50) == 1)
  {
    v2 = *(v1 + 51);
  }

  else
  {
    v2 = 0;
  }

  *(*(*(result + 40) + 8) + 24) = v2;
  return result;
}

- (int64_t)cellularNetworkQuality
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __48__SiriCoreNetworkManager_cellularNetworkQuality__block_invoke;
  v5[3] = &unk_279BD6120;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __48__SiriCoreNetworkManager_cellularNetworkQuality__block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if (*(v1 + 48) == 1)
  {
    v2 = *(v1 + 49);
  }

  else
  {
    v2 = 0;
  }

  *(*(*(result + 40) + 8) + 24) = v2;
  return result;
}

- (void)getNetworkPerformanceFeed
{
  mEMORY[0x277CEF2F8] = [MEMORY[0x277CEF2F8] sharedObserver];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __51__SiriCoreNetworkManager_getNetworkPerformanceFeed__block_invoke;
  v4[3] = &unk_279BD60F8;
  v4[4] = self;
  [mEMORY[0x277CEF2F8] getCurrentConditionWithCompletion:v4];
}

void __51__SiriCoreNetworkManager_getNetworkPerformanceFeed__block_invoke(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  if (a2 > 1)
  {
    v4 = *MEMORY[0x277CEF0A0];
    if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_DEFAULT))
    {
      v5 = v4;
      v6 = _AFMemoryPressureConditionGetName();
      *buf = 136315394;
      v10 = "[SiriCoreNetworkManager getNetworkPerformanceFeed]_block_invoke";
      v11 = 2112;
      v12 = v6;
      _os_log_impl(&dword_2669D1000, v5, OS_LOG_TYPE_DEFAULT, "%s Memory condition (%@) not suited for Symptoms feedback.", buf, 0x16u);
    }
  }

  else
  {
    v2 = *(a1 + 32);
    v3 = *(v2 + 8);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __51__SiriCoreNetworkManager_getNetworkPerformanceFeed__block_invoke_2;
    block[3] = &unk_279BD6518;
    block[4] = v2;
    dispatch_async(v3, block);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)stopMonitoringNetwork
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__SiriCoreNetworkManager_stopMonitoringNetwork__block_invoke;
  block[3] = &unk_279BD6518;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_stopMonitoringNetwork
{
  if (self->_pathEvaluator)
  {
    nw_path_evaluator_cancel();
    pathEvaluator = self->_pathEvaluator;
    self->_pathEvaluator = 0;
  }
}

- (void)startMonitoringNetworkForHost:(id)host
{
  hostCopy = host;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__SiriCoreNetworkManager_startMonitoringNetworkForHost___block_invoke;
  v7[3] = &unk_279BD6540;
  v7[4] = self;
  v8 = hostCopy;
  v6 = hostCopy;
  dispatch_async(queue, v7);
}

void __56__SiriCoreNetworkManager_startMonitoringNetworkForHost___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  if (!*(*(a1 + 32) + 24))
  {
    v2 = *(a1 + 40);
    if (v2)
    {
      v3 = *MEMORY[0x277CEF0A0];
      if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v11 = "[SiriCoreNetworkManager startMonitoringNetworkForHost:]_block_invoke";
        _os_log_impl(&dword_2669D1000, v3, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
        v2 = *(a1 + 40);
      }

      v4 = v2;
      host = nw_endpoint_create_host([v2 UTF8String], "443");
      evaluator_for_endpoint = nw_path_create_evaluator_for_endpoint();
      objc_initWeak(buf, *(a1 + 32));
      v7 = *(*(a1 + 32) + 8);
      objc_copyWeak(&v9, buf);
      nw_path_evaluator_set_update_handler();
      objc_storeStrong((*(a1 + 32) + 24), evaluator_for_endpoint);
      [*(a1 + 32) _serviceSubscriptionInfoUpdate];
      [*(a1 + 32) _signalStrengthUpdate];
      objc_destroyWeak(&v9);
      objc_destroyWeak(buf);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __56__SiriCoreNetworkManager_startMonitoringNetworkForHost___block_invoke_8(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _pathUpdated:v3];
}

- (void)_pathUpdated:(id)updated
{
  v37 = *MEMORY[0x277D85DE8];
  updatedCopy = updated;
  v5 = updatedCopy;
  if (updatedCopy)
  {
    status = nw_path_get_status(updatedCopy);
    v7 = MEMORY[0x26D5E5AE0](v5, 2);
  }

  else
  {
    v7 = 0;
    status = nw_path_status_invalid;
  }

  if (status != self->_pathStatus || self->_pathUsesCellular != v7)
  {
    v8 = *MEMORY[0x277CEF0A0];
    if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v32 = "[SiriCoreNetworkManager _pathUpdated:]";
      v33 = 1024;
      v34 = status;
      v35 = 1024;
      v36 = v7;
      _os_log_impl(&dword_2669D1000, v8, OS_LOG_TYPE_DEFAULT, "%s status %d, usesCellular %d", buf, 0x18u);
    }

    pathUsesCellular = self->_pathUsesCellular;
    if (status == nw_path_status_satisfied)
    {
      v10 = v7;
    }

    else
    {
      v10 = 1;
    }

    if (!pathUsesCellular || (v10 & 1) != 0)
    {
      if (pathUsesCellular || ((v7 ^ 1) & 1) != 0)
      {
        goto LABEL_31;
      }

      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v11 = self->_observers;
      v16 = [(NSHashTable *)v11 countByEnumeratingWithState:&v21 objects:v29 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v22;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v22 != v18)
            {
              objc_enumerationMutation(v11);
            }

            [*(*(&v21 + 1) + 8 * i) networkManagerLostNonWWANConnectivity:{self, v21}];
          }

          v17 = [(NSHashTable *)v11 countByEnumeratingWithState:&v21 objects:v29 count:16];
        }

        while (v17);
      }
    }

    else
    {
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v11 = self->_observers;
      v12 = [(NSHashTable *)v11 countByEnumeratingWithState:&v25 objects:v30 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v26;
        do
        {
          for (j = 0; j != v13; ++j)
          {
            if (*v26 != v14)
            {
              objc_enumerationMutation(v11);
            }

            [*(*(&v25 + 1) + 8 * j) networkManagerNonWWANDidBecomeAvailable:self];
          }

          v13 = [(NSHashTable *)v11 countByEnumeratingWithState:&v25 objects:v30 count:16];
        }

        while (v13);
      }
    }

LABEL_31:
    self->_pathStatus = status;
    self->_pathUsesCellular = v7;
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (id)_wiFiManagerClient
{
  wiFiManagerClient = self->_wiFiManagerClient;
  if (!wiFiManagerClient)
  {
    v4 = objc_alloc_init(SiriCoreWiFiManagerClient);
    v5 = self->_wiFiManagerClient;
    self->_wiFiManagerClient = v4;

    wiFiManagerClient = self->_wiFiManagerClient;
  }

  return wiFiManagerClient;
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __41__SiriCoreNetworkManager_removeObserver___block_invoke;
  v7[3] = &unk_279BD6540;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_async(queue, v7);
}

uint64_t __41__SiriCoreNetworkManager_removeObserver___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 16) removeObject:*(a1 + 40)];
  result = [*(*(a1 + 32) + 16) count];
  if (!result)
  {
    v3 = *(a1 + 32);

    return [v3 _stopMonitoringNetwork];
  }

  return result;
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__SiriCoreNetworkManager_addObserver___block_invoke;
  v7[3] = &unk_279BD6540;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_async(queue, v7);
}

- (void)dealloc
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF0A0];
  if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v8 = "[SiriCoreNetworkManager dealloc]";
    _os_log_impl(&dword_2669D1000, v3, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  if (self->_pathEvaluator)
  {
    nw_path_evaluator_cancel();
  }

  coreTelephonyClient = self->_coreTelephonyClient;
  if (coreTelephonyClient)
  {
    [(CoreTelephonyClient *)coreTelephonyClient setDelegate:0];
  }

  v6.receiver = self;
  v6.super_class = SiriCoreNetworkManager;
  [(SiriCoreNetworkManager *)&v6 dealloc];
  v5 = *MEMORY[0x277D85DE8];
}

- (id)_init
{
  v12.receiver = self;
  v12.super_class = SiriCoreNetworkManager;
  v2 = [(SiriCoreNetworkManager *)&v12 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_UNSPECIFIED, 0);

    v5 = dispatch_queue_create("SiriCoreNetworkManager", v4);
    queue = v2->_queue;
    v2->_queue = v5;

    v7 = [objc_alloc(MEMORY[0x277CCAA50]) initWithOptions:5 capacity:1];
    observers = v2->_observers;
    v2->_observers = v7;

    v2->_pathStatus = 0;
    v2->_ctLock._os_unfair_lock_opaque = 0;
    v2->_lastDataSubscriptionSlot = 0;
    v9 = [objc_alloc(MEMORY[0x277CC37B0]) initWithQueue:v2->_queue];
    coreTelephonyClient = v2->_coreTelephonyClient;
    v2->_coreTelephonyClient = v9;

    [(CoreTelephonyClient *)v2->_coreTelephonyClient setDelegate:v2];
    [(SiriCoreNetworkManager *)v2 carrierBundleChange:0];
  }

  return v2;
}

+ (void)releaseDormancySuspendAssertion:(void *)assertion
{
  v8 = *MEMORY[0x277D85DE8];
  if (assertion)
  {
    v4 = *MEMORY[0x277CEF0A0];
    if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315138;
      v7 = "+[SiriCoreNetworkManager releaseDormancySuspendAssertion:]";
      _os_log_impl(&dword_2669D1000, v4, OS_LOG_TYPE_DEFAULT, "%s Released dormancy suspension assertion.", &v6, 0xCu);
    }

    CFRelease(assertion);
  }

  v5 = *MEMORY[0x277D85DE8];
}

+ (void)acquireDormancySuspendAssertion:(const void *)assertion
{
  v23 = *MEMORY[0x277D85DE8];
  if (assertion)
  {
    v3 = *assertion;
    v4 = MEMORY[0x277CEF0A0];
    v5 = *MEMORY[0x277CEF0A0];
    v6 = os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_DEFAULT);
    if (v3)
    {
      if (v6)
      {
        v17 = 136315138;
        v18 = "+[SiriCoreNetworkManager acquireDormancySuspendAssertion:]";
        _os_log_impl(&dword_2669D1000, v5, OS_LOG_TYPE_DEFAULT, "%s Already acquired.", &v17, 0xCu);
      }

      goto LABEL_17;
    }

    if (v6)
    {
      v17 = 136315138;
      v18 = "+[SiriCoreNetworkManager acquireDormancySuspendAssertion:]";
      _os_log_impl(&dword_2669D1000, v5, OS_LOG_TYPE_DEFAULT, "%s Suspend Dormancy", &v17, 0xCu);
    }

    v8 = dispatch_get_global_queue(21, 0);
    v9 = _CTServerConnectionCreateOnTargetQueue();

    if (v9)
    {
      v10 = _CTServerConnectionDormancySuspendAssertionCreateWithExpirationCB();

      v11 = *v4;
      v12 = os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT);
      if (v10)
      {
        if (v12)
        {
          v17 = 136315650;
          v18 = "+[SiriCoreNetworkManager acquireDormancySuspendAssertion:]";
          v19 = 1024;
          v20 = v10;
          v21 = 1024;
          v22 = HIDWORD(v10);
          v13 = "%s Failed to acquire the dormancy suspend assertion (%i, %i)";
          v14 = v11;
          v15 = 24;
LABEL_15:
          _os_log_impl(&dword_2669D1000, v14, OS_LOG_TYPE_DEFAULT, v13, &v17, v15);
        }
      }

      else if (v12)
      {
        v17 = 136315138;
        v18 = "+[SiriCoreNetworkManager acquireDormancySuspendAssertion:]";
        v13 = "%s Acquired dormany suspension assertion.";
        v14 = v11;
        v15 = 12;
        goto LABEL_15;
      }

      CFRelease(v9);
    }
  }

  else
  {
    v7 = *MEMORY[0x277CEF0A0];
    if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_ERROR))
    {
      v17 = 136315138;
      v18 = "+[SiriCoreNetworkManager acquireDormancySuspendAssertion:]";
      _os_log_error_impl(&dword_2669D1000, v7, OS_LOG_TYPE_ERROR, "%s Assertion ref should not be nil", &v17, 0xCu);
    }
  }

LABEL_17:
  v16 = *MEMORY[0x277D85DE8];
}

void __58__SiriCoreNetworkManager_acquireDormancySuspendAssertion___block_invoke()
{
  v4 = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CEF0A0];
  if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_DEFAULT))
  {
    v2 = 136315138;
    v3 = "+[SiriCoreNetworkManager acquireDormancySuspendAssertion:]_block_invoke";
    _os_log_impl(&dword_2669D1000, v0, OS_LOG_TYPE_DEFAULT, "%s Dormancy Suspend Assertion auto expired.", &v2, 0xCu);
  }

  v1 = *MEMORY[0x277D85DE8];
}

+ (int64_t)connectionTypeForInterface:(id)interface
{
  if (!interface)
  {
    return 0;
  }

  v5 = 0;
  result = [interface UTF8String];
  if (result)
  {
    [self _ifnameTypeForName:result isWiFi:&v5 + 1 isCellular:&v5];
    if ((v5 & 0x100) != 0)
    {
      result = 1000;
    }

    else
    {
      result = 0;
    }

    if (v5)
    {
      return [self connectionSubTypeForCellularInterface];
    }
  }

  return result;
}

+ (id)connectionTypeForInterfaceName:(id)name isCellular:(BOOL)cellular
{
  cellularCopy = cellular;
  nameCopy = name;
  v7 = nameCopy;
  if (cellularCopy)
  {
    connectionSubTypeForCellularInterface = [self connectionSubTypeForCellularInterface];
  }

  else if (nameCopy && (v12 = 0, (v9 = [nameCopy UTF8String]) != 0))
  {
    [self _ifnameTypeForName:v9 isWiFi:&v12 isCellular:0];
    if (v12)
    {
      connectionSubTypeForCellularInterface = 1000;
    }

    else
    {
      connectionSubTypeForCellularInterface = 0;
    }
  }

  else
  {
    connectionSubTypeForCellularInterface = 0;
  }

  v10 = [[SiriCoreConnectionType alloc] initWithTechnology:connectionSubTypeForCellularInterface];

  return v10;
}

+ (void)getCarrierName:(id *)name signalStrength:(id *)strength subscriptionCount:(id *)count
{
  v31 = *MEMORY[0x277D85DE8];
  v22 = 0;
  v8 = +[SiriCoreNetworkManager sharedInstance];
  v21 = 0;
  [v8 getSignalStrength:&v21 subscriptionCount:&v22];
  v9 = v21;

  v10 = +[SiriCoreNetworkManager sharedInstance];
  v20 = 0;
  [v10 _getCarrierName:&v20];
  v11 = v20;

  if (name)
  {
    v12 = v11;
    *name = v11;
  }

  if (strength)
  {
    v13 = v9;
    *strength = v9;
  }

  if (count)
  {
    *count = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v22];
  }

  v14 = *MEMORY[0x277CEF0A0];
  if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_DEFAULT))
  {
    v15 = MEMORY[0x277CCABB0];
    v16 = v22;
    v17 = v14;
    v18 = [v15 numberWithUnsignedInteger:v16];
    *buf = 136315906;
    v24 = "+[SiriCoreNetworkManager getCarrierName:signalStrength:subscriptionCount:]";
    v25 = 2112;
    v26 = v11;
    v27 = 2112;
    v28 = v9;
    v29 = 2112;
    v30 = v18;
    _os_log_impl(&dword_2669D1000, v17, OS_LOG_TYPE_DEFAULT, "%s Carrier Name: %@, Signal Strength: %@, Subscription count: %@", buf, 0x2Au);
  }

  v19 = *MEMORY[0x277D85DE8];
}

+ (int64_t)connectionSubTypeForCellularInterface
{
  v2 = +[SiriCoreNetworkManager sharedInstance];
  _getConnectionTechnologyForCellularInterface = [v2 _getConnectionTechnologyForCellularInterface];

  return _getConnectionTechnologyForCellularInterface;
}

+ (void)_ifnameTypeForName:(char *)name isWiFi:(BOOL *)fi isCellular:(BOOL *)cellular
{
  v12 = *MEMORY[0x277D85DE8];
  if (name)
  {
    v7 = socket(2, 2, 0);
    v10 = 0u;
    v11 = 0u;
    __strlcpy_chk();
    if (ioctl(v7, 0xC0206911uLL, &v10) != -1 && cellular && (v11 & 0x10) != 0)
    {
      *cellular = 1;
    }

    memset(v9, 0, 44);
    __strlcpy_chk();
    if (ioctl(v7, 0xC02C6938uLL, v9) != -1 && fi && (v9[1] & 0xE0) == 0x80)
    {
      *fi = 1;
    }

    close(v7);
  }

  v8 = *MEMORY[0x277D85DE8];
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_2670 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_2670, &__block_literal_global_2671);
  }

  v3 = sharedInstance_sSharedInstance_2672;

  return v3;
}

uint64_t __40__SiriCoreNetworkManager_sharedInstance__block_invoke()
{
  v0 = [[SiriCoreNetworkManager alloc] _init];
  v1 = sharedInstance_sSharedInstance_2672;
  sharedInstance_sSharedInstance_2672 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end