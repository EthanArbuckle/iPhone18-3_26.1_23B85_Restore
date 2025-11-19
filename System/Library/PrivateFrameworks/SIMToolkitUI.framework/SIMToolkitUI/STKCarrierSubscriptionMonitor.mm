@interface STKCarrierSubscriptionMonitor
- (STKCarrierSubscriptionMonitor)init;
- (id)subscriptionContextForSlot:(int64_t)a3;
- (id)subscriptionInfoForSlot:(int64_t)a3;
- (void)carrierBundleChange:(id)a3;
- (void)subscriptionInfoDidChange;
@end

@implementation STKCarrierSubscriptionMonitor

- (STKCarrierSubscriptionMonitor)init
{
  v15.receiver = self;
  v15.super_class = STKCarrierSubscriptionMonitor;
  v2 = [(STKCarrierSubscriptionMonitor *)&v15 init];
  if (v2)
  {
    v3 = BSDispatchQueueCreateWithQualityOfService();
    queue = v2->_queue;
    v2->_queue = v3;

    v5 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:2];
    subscriptionInfo = v2->_subscriptionInfo;
    v2->_subscriptionInfo = v5;

    v7 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:2];
    subscriptionContext = v2->_subscriptionContext;
    v2->_subscriptionContext = v7;

    v9 = [objc_alloc(MEMORY[0x277CC37B0]) initWithQueue:v2->_queue];
    telephonyClient = v2->_telephonyClient;
    v2->_telephonyClient = v9;

    [(CoreTelephonyClient *)v2->_telephonyClient setDelegate:v2];
    v11 = v2->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __37__STKCarrierSubscriptionMonitor_init__block_invoke;
    block[3] = &unk_279B4C428;
    v14 = v2;
    dispatch_sync(v11, block);
  }

  return v2;
}

- (id)subscriptionInfoForSlot:(int64_t)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy_;
  v11 = __Block_byref_object_dispose_;
  v12 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__STKCarrierSubscriptionMonitor_subscriptionInfoForSlot___block_invoke;
  block[3] = &unk_279B4C6C0;
  block[4] = self;
  block[5] = &v7;
  block[6] = a3;
  dispatch_sync(queue, block);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __57__STKCarrierSubscriptionMonitor_subscriptionInfoForSlot___block_invoke(void *a1)
{
  v2 = *(a1[4] + 16);
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:a1[6]];
  v3 = [v2 objectForKeyedSubscript:v6];
  v4 = *(a1[5] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)subscriptionContextForSlot:(int64_t)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy_;
  v11 = __Block_byref_object_dispose_;
  v12 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__STKCarrierSubscriptionMonitor_subscriptionContextForSlot___block_invoke;
  block[3] = &unk_279B4C6C0;
  block[4] = self;
  block[5] = &v7;
  block[6] = a3;
  dispatch_sync(queue, block);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __60__STKCarrierSubscriptionMonitor_subscriptionContextForSlot___block_invoke(void *a1)
{
  v2 = *(a1[4] + 24);
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:a1[6]];
  v3 = [v2 objectForKeyedSubscript:v6];
  v4 = *(a1[5] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (void)subscriptionInfoDidChange
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_262BB4000, v0, v1, "STKAlertSessionManager: subscriptionInfoDidChange: failed to get subscription info [error] %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)carrierBundleChange:(id)a3
{
  v45 = *MEMORY[0x277D85DE8];
  v4 = a3;
  queue = self->_queue;
  BSDispatchQueueAssert();
  v6 = STKCommonLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v44 = v4;
    _os_log_impl(&dword_262BB4000, v6, OS_LOG_TYPE_DEFAULT, "Carrier bundle did change: %@", buf, 0xCu);
  }

  v7 = [objc_alloc(MEMORY[0x277CC3620]) initWithBundleType:1];
  telephonyClient = self->_telephonyClient;
  v42 = 0;
  v9 = [(CoreTelephonyClient *)telephonyClient copyCarrierBundleValueWithDefault:v4 keyHierarchy:&unk_28758C0F8 bundleType:v7 error:&v42];
  v10 = v42;
  if (v10)
  {
    v11 = v10;
    v12 = STKCommonLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [STKCarrierSubscriptionMonitor carrierBundleChange:];
    }
  }

  if (objc_opt_respondsToSelector())
  {
    v13 = [v9 BOOLValue];
  }

  else
  {
    v13 = 0;
  }

  v14 = STKClass0SMSLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v44) = v13;
    _os_log_impl(&dword_262BB4000, v14, OS_LOG_TYPE_DEFAULT, "Carrier bundle value changed: showClass0SMSOverInCallAlerts = %d", buf, 8u);
  }

  v15 = self->_telephonyClient;
  v41 = 0;
  v16 = [(CoreTelephonyClient *)v15 copyCarrierBundleValueWithDefault:v4 key:@"ShowClass0SMSFromField" bundleType:v7 error:&v41];
  v17 = v41;
  if (v17)
  {
    v18 = v17;
    v19 = STKCommonLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [STKCarrierSubscriptionMonitor carrierBundleChange:];
    }
  }

  if (objc_opt_respondsToSelector())
  {
    v20 = [v16 BOOLValue];
  }

  else
  {
    v20 = 0;
  }

  v21 = self->_telephonyClient;
  v40 = 0;
  v22 = [(CoreTelephonyClient *)v21 copyCarrierBundleValueWithDefault:v4 key:@"USSDFilterPatterns" bundleType:v7 error:&v40];
  v23 = v40;
  if (v23)
  {
    v24 = v23;
    v25 = STKCommonLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [STKCarrierSubscriptionMonitor carrierBundleChange:];
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v26 = v22;
    if ([v26 bs_containsObjectPassingTest:&__block_literal_global_2])
    {
      v27 = MEMORY[0x277CBEBF8];
    }

    else
    {
      v27 = v26;
    }
  }

  else
  {
    v27 = MEMORY[0x277CBEBF8];
  }

  v28 = self->_telephonyClient;
  v39 = 0;
  v29 = [(CoreTelephonyClient *)v28 copyCarrierBundleValueWithDefault:v4 key:@"USSDFilterSometimesPatterns" bundleType:v7 error:&v39];
  v30 = v39;
  if (v30)
  {
    v31 = v30;
    v32 = STKCommonLog();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      [STKCarrierSubscriptionMonitor carrierBundleChange:];
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v33 = v29;
    if ([v33 bs_containsObjectPassingTest:&__block_literal_global_25])
    {
      v34 = MEMORY[0x277CBEBF8];
    }

    else
    {
      v34 = v33;
    }
  }

  else
  {
    v34 = MEMORY[0x277CBEBF8];
  }

  v35 = [[STKCarrierSubscriptionInfo alloc] initWithShowClass0SMSFromField:v20 canShowClass0SMSOverInCallAlerts:v13 ussdAlwaysFilteredPatterns:v27 ussdSometimesFilteredPatterns:v34];
  subscriptionInfo = self->_subscriptionInfo;
  v37 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v4, "slotID")}];
  [(NSMutableDictionary *)subscriptionInfo setObject:v35 forKeyedSubscript:v37];

  v38 = *MEMORY[0x277D85DE8];
}

BOOL __53__STKCarrierSubscriptionMonitor_carrierBundleChange___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return (isKindOfClass & 1) == 0;
}

BOOL __53__STKCarrierSubscriptionMonitor_carrierBundleChange___block_invoke_23(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return (isKindOfClass & 1) == 0;
}

- (void)carrierBundleChange:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_262BB4000, v0, v1, "STKAlertSessionManager: carrierBundleChange: failed to get ShowClass0SMSOverInCallAlerts [error] %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)carrierBundleChange:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_262BB4000, v0, v1, "STKAlertSessionManager: carrierBundleChange: failed to get ShowClass0SMSFromField [error] %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)carrierBundleChange:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_262BB4000, v0, v1, "STKAlertSessionManager: carrierBundleChange: failed to get USSDFilterPatterns [error] %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)carrierBundleChange:.cold.4()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_262BB4000, v0, v1, "STKAlertSessionManager: carrierBundleChange: failed to get USSDFilterSometimesPatterns [error] %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end