@interface RTTTelephonyUtilities
+ (BOOL)TTYHardwareEnabledForAnyActiveContext;
+ (BOOL)TTYSoftwareEnabledForAnyActiveContext;
+ (BOOL)hardwareTTYIsSupported;
+ (BOOL)hardwareTTYIsSupportedForContext:(id)a3;
+ (BOOL)isEmergencyRTTSupported;
+ (BOOL)isEmergencyRTTSupportedByCarrierBundle;
+ (BOOL)isEmergencyRTTSupportedForContext:(id)a3;
+ (BOOL)isEmergencyRelayRTTSupported;
+ (BOOL)isOnlyRTTSupported;
+ (BOOL)isOnlyRTTSupportedForContext:(id)a3;
+ (BOOL)isRTTCallHoldSupportedForContext:(id)a3;
+ (BOOL)isRTTSupported;
+ (BOOL)isRTTSupportedByCarrierBundle;
+ (BOOL)isRTTSupportedForContext:(id)a3;
+ (BOOL)isRelayRTTSupported;
+ (BOOL)isTTYSupported;
+ (BOOL)isTTYSupportedForContext:(id)a3;
+ (BOOL)relayIsSupported;
+ (BOOL)relayIsSupportedForContext:(id)a3;
+ (BOOL)shouldUseRTT;
+ (BOOL)shouldUseRTTForContext:(id)a3;
+ (BOOL)softwareTTYIsSupported;
+ (BOOL)softwareTTYIsSupportedForContext:(id)a3;
+ (id)relayPhoneNumber;
+ (id)relayPhoneNumberForContext:(id)a3;
+ (id)sharedCallCenter;
+ (id)sharedUtilityProvider;
+ (int64_t)currentSupportedTextingType;
+ (void)performCallCenterTask:(id)a3;
+ (void)performCallCenterTask:(id)a3 callCenter:(id)a4;
- (BOOL)_contactIsEmergencyServices:(id)a3;
- (BOOL)_relayNumbers:(id)a3 containsNumber:(id)a4;
- (BOOL)answerRTTCallAsMutedForCall:(id)a3;
- (BOOL)contactIsTTYContact:(id)a3;
- (BOOL)contactPathIsMe:(id)a3;
- (BOOL)emergencyRelayRTTIsSupported;
- (BOOL)isRTTCallHoldSupportedForContext:(id)a3;
- (BOOL)isTTYOverIMSSupportedForContext:(id)a3 excludeRelay:(BOOL)a4;
- (BOOL)isTTYSupportedForContext:(id)a3;
- (BOOL)relayRTTIsSupported;
- (BOOL)reloadRelayPhoneNumbers;
- (NSNumber)callCapabilitiesSupportsTelephonyCalls;
- (RTTTelephonyUtilities)init;
- (id)activeContexts;
- (id)contactPathForCall:(id)a3;
- (id)contextForCall:(id)a3;
- (id)getCarrierValueForKey:(id)a3 andContext:(id)a4;
- (id)getCarrierValueForKeyHierarchy:(id)a3 andContext:(id)a4;
- (id)labelFromUUID:(id)a3;
- (id)myPhoneNumber;
- (id)phoneNumberForContext:(id)a3;
- (id)phoneNumberFromUUID:(id)a3;
- (id)relayNumberForContext:(id)a3;
- (id)subscriptionContexts;
- (id)ttyMeContact;
- (unint64_t)currentPreferredTransportMethod;
- (unint64_t)currentPreferredTransportMethodForContext:(id)a3;
- (void)_callDidConnect;
- (void)_processiCloudAccountForRTT;
- (void)_reloadContexts;
- (void)carrierSettingsDidChange;
- (void)dealloc;
- (void)didChangeOutgoingRelayCallerID;
- (void)didChangeRelayCallingAvailability;
- (void)didChangeRelayCallingCapabilities;
- (void)didChangeTelephonyCallingSupport;
- (void)headphoneStateChangedNotification:(id)a3;
- (void)iCloudAccountDidChange:(id)a3;
- (void)iCloudRTTRelayDidChange:(id)a3;
- (void)listenForCloudRelayChanges;
- (void)mediaServerDied;
- (void)purgePhoneNumberInfoCache;
- (void)registerNotifications;
- (void)reloadDefaultVoiceContext;
- (void)resetCloudSupportStore;
- (void)setCallCapabilitiesSupportsTelephonyCalls:(id)a3;
- (void)updateHeadphoneState;
@end

@implementation RTTTelephonyUtilities

+ (id)sharedUtilityProvider
{
  if (sharedUtilityProvider_onceToken != -1)
  {
    +[RTTTelephonyUtilities sharedUtilityProvider];
  }

  v3 = sharedUtilityProvider_UtilityProvider;

  return v3;
}

- (void)updateHeadphoneState
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [(RTTTelephonyUtilities *)self currentPreferredTransportMethod];
  v4 = [MEMORY[0x277D26E58] sharedAVSystemController];
  v5 = [v4 attributeForKey:*MEMORY[0x277D26C08]];
  v6 = [v5 BOOLValue];

  v7 = [v4 attributeForKey:*MEMORY[0x277D26BF8]];
  v8 = [v7 BOOLValue];

  [(RTTTelephonyUtilities *)self setHeadphoneJackSupportsTTY:v6 & v8];
  v9 = AXLogRTT();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v17 = 67109376;
    v18 = v6;
    v19 = 1024;
    v20 = v8 & 1;
    _os_log_impl(&dword_261754000, v9, OS_LOG_TYPE_INFO, "Headphone state changed [%d, %d]", &v17, 0xEu);
  }

  v10 = AXLogRTT();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = [(RTTTelephonyUtilities *)self currentPreferredTransportMethod];
    v17 = 67109376;
    v18 = v3;
    v19 = 1024;
    v20 = v11;
    _os_log_impl(&dword_261754000, v10, OS_LOG_TYPE_INFO, "Current method %d, preferred method %d", &v17, 0xEu);
  }

  if (v3 != [(RTTTelephonyUtilities *)self currentPreferredTransportMethod])
  {
    v12 = AXLogRTT();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = [(RTTTelephonyUtilities *)self currentPreferredTransportMethod];
      v17 = 67109120;
      v18 = v13;
      _os_log_impl(&dword_261754000, v12, OS_LOG_TYPE_INFO, "Preferred TTY method changed to %d", &v17, 8u);
    }

    v14 = AXLogRTT();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      LOWORD(v17) = 0;
      _os_log_impl(&dword_261754000, v14, OS_LOG_TYPE_INFO, "Posting transport changed because headphone state changed", &v17, 2u);
    }

    v15 = [MEMORY[0x277CCAB98] defaultCenter];
    [v15 postNotificationName:@"AXTTYPreferredTransportMethodChangedNotification" object:0];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (unint64_t)currentPreferredTransportMethod
{
  v3 = [(RTTTelephonyUtilities *)self defaultVoiceContext];
  v4 = [(RTTTelephonyUtilities *)self currentPreferredTransportMethodForContext:v3];

  return v4;
}

- (NSNumber)callCapabilitiesSupportsTelephonyCalls
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = self;
  objc_sync_enter(v2);
  callCapabilitiesSupportsTelephonyCalls = v2->_callCapabilitiesSupportsTelephonyCalls;
  if (!callCapabilitiesSupportsTelephonyCalls)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(MEMORY[0x277D6EDE8], "supportsTelephonyCalls")}];
    v5 = v2->_callCapabilitiesSupportsTelephonyCalls;
    v2->_callCapabilitiesSupportsTelephonyCalls = v4;

    v6 = AXLogRTT();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = v2->_callCapabilitiesSupportsTelephonyCalls;
      v11 = 138412290;
      v12 = v7;
      _os_log_impl(&dword_261754000, v6, OS_LOG_TYPE_INFO, "Retrieving new telephony supports calling: %@", &v11, 0xCu);
    }

    callCapabilitiesSupportsTelephonyCalls = v2->_callCapabilitiesSupportsTelephonyCalls;
  }

  v8 = [(NSNumber *)callCapabilitiesSupportsTelephonyCalls copy];
  objc_sync_exit(v2);

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (BOOL)relayRTTIsSupported
{
  v14 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D6EDE8] supportsTelephonyRelayCalling])
  {
    v3 = [MEMORY[0x277D6EDE8] outgoingRelayCallerID];
    v4 = [MEMORY[0x277CCAD80] defaultStore];
    v5 = [v4 dictionaryForKey:@"RTTCloudRelayNumberKey"];

    v6 = AXLogRTT();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v10 = 138478083;
      v11 = v3;
      v12 = 2113;
      v13 = v5;
      _os_log_impl(&dword_261754000, v6, OS_LOG_TYPE_INFO, "Checking %{private}@ in %{private}@", &v10, 0x16u);
    }

    v7 = [(RTTTelephonyUtilities *)self _relayNumbers:v5 containsNumber:v3];
  }

  else
  {
    v3 = AXLogRTT();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&dword_261754000, v3, OS_LOG_TYPE_INFO, "Device doesn't support relay calls", &v10, 2u);
    }

    v7 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

- (BOOL)emergencyRelayRTTIsSupported
{
  v14 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D6EDE8] supportsTelephonyRelayCalling])
  {
    v2 = [MEMORY[0x277D6EDE8] outgoingRelayCallerID];
    v3 = [MEMORY[0x277CCAD80] defaultStore];
    v4 = [v3 dictionaryForKey:@"RTTEmergencyCloudRelayNumberKey"];

    v5 = AXLogRTT();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v10 = 138478083;
      v11 = v2;
      v12 = 2113;
      v13 = v4;
      _os_log_impl(&dword_261754000, v5, OS_LOG_TYPE_INFO, "[Emergency Relay] Checking %{private}@ in %{private}@", &v10, 0x16u);
    }

    v6 = [v4 objectForKey:v2];
    v7 = [v6 BOOLValue];
  }

  else
  {
    v2 = AXLogRTT();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&dword_261754000, v2, OS_LOG_TYPE_INFO, "[Emergency Relay] Device doesn't support relay calls", &v10, 2u);
    }

    v7 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

+ (BOOL)softwareTTYIsSupported
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = +[RTTTelephonyUtilities sharedUtilityProvider];
  v4 = [v3 allVoiceContexts];

  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if ([RTTTelephonyUtilities softwareTTYIsSupportedForContext:*(*(&v11 + 1) + 8 * v8)])
        {

          result = 1;
          goto LABEL_11;
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  result = [a1 isRelayRTTSupported];
LABEL_11:
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

+ (BOOL)isRelayRTTSupported
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = +[RTTSettings sharedInstance];
  if ([v2 supportsRelayCalling])
  {
    v3 = +[RTTSettings sharedInstance];
    v4 = [v3 isRelayCallingEnabled];
  }

  else
  {
    v4 = 0;
  }

  v5 = +[RTTSettings sharedInstance];
  v6 = [v5 continuityRTTIsSupported];

  v7 = AXLogRTT();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v10[0] = 67109376;
    v10[1] = v4;
    v11 = 1024;
    v12 = v6;
    _os_log_impl(&dword_261754000, v7, OS_LOG_TYPE_INFO, "Relay supported: TU supports: %d, continuity: %d", v10, 0xEu);
  }

  if (v4)
  {
    result = v6;
  }

  else
  {
    result = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_processiCloudAccountForRTT
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D6EDE8] supportsPrimaryCalling];
  if ([MEMORY[0x277D12B60] currentProcessIsHeard])
  {
    v4 = 1;
  }

  else
  {
    v4 = [MEMORY[0x277D12B60] currentProcessIsPreferences];
  }

  v5 = AXLogRTT();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v22 = 67109376;
    *v23 = v3;
    *&v23[4] = 1024;
    *&v23[6] = v4;
    _os_log_impl(&dword_261754000, v5, OS_LOG_TYPE_INFO, "iCloud changed: pushing changes: primary calling supported: %d for right process: %d", &v22, 0xEu);
  }

  if ((v3 & v4) == 1)
  {
    v6 = [MEMORY[0x277CCAD80] defaultStore];
    v7 = MEMORY[0x277CBEB38];
    v8 = [v6 dictionaryForKey:@"RTTCloudRelayNumberKey"];
    v9 = [v7 dictionaryWithDictionary:v8];

    v10 = MEMORY[0x277CBEB38];
    v11 = [v6 dictionaryForKey:@"RTTEmergencyCloudRelayNumberKey"];
    v12 = [v10 dictionaryWithDictionary:v11];

    v13 = [(RTTTelephonyUtilities *)self defaultVoiceContext];
    v14 = [v13 uuid];
    v15 = [v14 UUIDString];

    v16 = [(RTTTelephonyUtilities *)self phoneNumberFromUUID:v15];
    v17 = AXLogRTT();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v22 = 138412546;
      *v23 = v16;
      *&v23[8] = 2112;
      v24 = v15;
      _os_log_impl(&dword_261754000, v17, OS_LOG_TYPE_INFO, "Phone num: %@ for %@", &v22, 0x16u);
    }

    if ([v16 length])
    {
      v18 = [MEMORY[0x277CCABB0] numberWithBool:{+[RTTTelephonyUtilities isRTTSupportedByCarrierBundle](RTTTelephonyUtilities, "isRTTSupportedByCarrierBundle")}];
      [v9 setObject:v18 forKey:v16];

      v19 = [MEMORY[0x277CCABB0] numberWithBool:{+[RTTTelephonyUtilities isEmergencyRTTSupportedByCarrierBundle](RTTTelephonyUtilities, "isEmergencyRTTSupportedByCarrierBundle")}];
      [v12 setObject:v19 forKey:v16];

      v20 = AXLogRTT();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v22 = 138412546;
        *v23 = v9;
        *&v23[8] = 2112;
        v24 = v12;
        _os_log_impl(&dword_261754000, v20, OS_LOG_TYPE_DEFAULT, "Storing relay phones: %@ for RTT, %@ for Emergency RTT", &v22, 0x16u);
      }

      [v6 setObject:v9 forKey:@"RTTCloudRelayNumberKey"];
      [v6 setObject:v12 forKey:@"RTTEmergencyCloudRelayNumberKey"];
      [v6 synchronize];
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (id)subscriptionContexts
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [(RTTTelephonyUtilities *)self cachedSubscriptionContexts];

  if (v3)
  {
    v4 = [(RTTTelephonyUtilities *)self cachedSubscriptionContexts];
  }

  else
  {
    v5 = [(RTTTelephonyUtilities *)self telephonyClient];
    v14 = 0;
    v6 = [v5 getSubscriptionInfoWithError:&v14];
    v7 = v14;

    if (v7)
    {
      v8 = AXLogRTT();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v16 = v7;
        _os_log_impl(&dword_261754000, v8, OS_LOG_TYPE_INFO, "Error getting subscriptionInfo %@", buf, 0xCu);
      }
    }

    v9 = [v6 subscriptions];
    [(RTTTelephonyUtilities *)self setCachedSubscriptionContexts:v9];

    v10 = AXLogRTT();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = [(RTTTelephonyUtilities *)self cachedSubscriptionContexts];
      *buf = 138412290;
      v16 = v11;
      _os_log_impl(&dword_261754000, v10, OS_LOG_TYPE_INFO, "Caching subscription contexts %@", buf, 0xCu);
    }

    v4 = [(RTTTelephonyUtilities *)self cachedSubscriptionContexts];
  }

  v12 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (BOOL)isRTTSupported
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = +[RTTTelephonyUtilities sharedUtilityProvider];
  v4 = +[RTTTelephonyUtilities sharedUtilityProvider];
  v5 = [v4 defaultVoiceContext];
  v6 = [v3 isRTTSupportedForContext:v5];

  v7 = [a1 isRelayRTTSupported];
  v8 = AXLogRTT();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v11[0] = 67109376;
    v11[1] = v6;
    v12 = 1024;
    v13 = v7;
    _os_log_impl(&dword_261754000, v8, OS_LOG_TYPE_INFO, "isRTTSupported: %d, relay: %d", v11, 0xEu);
  }

  v9 = *MEMORY[0x277D85DE8];
  return (v6 | v7) & 1;
}

+ (BOOL)isTTYSupported
{
  v2 = +[RTTTelephonyUtilities sharedUtilityProvider];
  v3 = +[RTTTelephonyUtilities sharedUtilityProvider];
  v4 = [v3 defaultVoiceContext];
  v5 = [v2 isTTYSupportedForContext:v4];

  return v5;
}

uint64_t __46__RTTTelephonyUtilities_sharedUtilityProvider__block_invoke()
{
  sharedUtilityProvider_UtilityProvider = objc_alloc_init(RTTTelephonyUtilities);

  return MEMORY[0x2821F96F8]();
}

- (RTTTelephonyUtilities)init
{
  v22.receiver = self;
  v22.super_class = RTTTelephonyUtilities;
  v2 = [(RTTTelephonyUtilities *)&v22 init];
  if (v2)
  {
    v3 = dispatch_queue_create("ttyTelephonyQueue", 0);
    [(RTTTelephonyUtilities *)v2 setTelephonyUpdateQueue:v3];
    v4 = [objc_alloc(MEMORY[0x277CC37B0]) initWithQueue:v3];
    [v4 setDelegate:v2];
    [(RTTTelephonyUtilities *)v2 setTelephonyClient:v4];
    v5 = dispatch_queue_create("ttyAccountStoreQueue", 0);
    [(RTTTelephonyUtilities *)v2 setAccountStoreQueue:v5];

    v6 = [objc_alloc(MEMORY[0x277CE6950]) initWithTargetSerialQueue:v3];
    icloudAccountConsolidator = v2->_icloudAccountConsolidator;
    v2->_icloudAccountConsolidator = v6;

    [(AXDispatchTimer *)v2->_icloudAccountConsolidator setAutomaticallyCancelPendingBlockUponSchedulingNewBlock:1];
    v8 = [objc_alloc(MEMORY[0x277CE6950]) initWithTargetSerialQueue:v3];
    icloudRelayConsolidator = v2->_icloudRelayConsolidator;
    v2->_icloudRelayConsolidator = v8;

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __29__RTTTelephonyUtilities_init__block_invoke;
    block[3] = &unk_279AE7738;
    v10 = v2;
    v21 = v10;
    dispatch_async(v3, block);
    v11 = objc_alloc(MEMORY[0x277CBDAB8]);
    v12 = objc_opt_new();
    v13 = [v11 initWithConfiguration:v12];
    [(RTTTelephonyUtilities *)v10 setContactStore:v13];

    v14 = +[RTTSettings sharedInstance];
    [v14 registerUpdateBlock:&__block_literal_global_60 forRetrieveSelector:sel_TTYHardwareEnabled withListener:v10];

    v15 = +[RTTSettings sharedInstance];
    [v15 registerUpdateBlock:&__block_literal_global_60 forRetrieveSelector:sel_TTYSoftwareEnabled withListener:v10];

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v10, transportMethodDidChange, @"AXTTYPreferredTransportMethodChangedNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    [(RTTTelephonyUtilities *)v10 listenForCloudRelayChanges];
    v17 = MEMORY[0x277D6EDE8];
    v18 = dispatch_get_global_queue(21, 0);
    [v17 addDelegate:v10 queue:v18];
  }

  return v2;
}

+ (id)sharedCallCenter
{
  if (sharedCallCenter_onceToken != -1)
  {
    +[RTTTelephonyUtilities sharedCallCenter];
  }

  v3 = sharedCallCenter_CallCenter;

  return v3;
}

uint64_t __41__RTTTelephonyUtilities_sharedCallCenter__block_invoke()
{
  sharedCallCenter_CallCenter = [MEMORY[0x277D6EDF8] sharedInstance];

  return MEMORY[0x2821F96F8]();
}

+ (void)performCallCenterTask:(id)a3
{
  v3 = a3;
  v4 = +[RTTTelephonyUtilities sharedCallCenter];
  [RTTTelephonyUtilities performCallCenterTask:v3 callCenter:v4];
}

+ (void)performCallCenterTask:(id)a3 callCenter:(id)a4
{
  v5 = a3;
  v6 = [a4 queue];
  if (v6 == MEMORY[0x277D85CD0] && [MEMORY[0x277CCACC8] isMainThread])
  {
    v5[2](v5);
  }

  else
  {
    v7 = dispatch_semaphore_create(0);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __58__RTTTelephonyUtilities_performCallCenterTask_callCenter___block_invoke;
    v10[3] = &unk_279AE7970;
    v11 = v7;
    v12 = v5;
    v8 = v7;
    dispatch_async(v6, v10);
    v9 = dispatch_time(0, 2000000000);
    dispatch_semaphore_wait(v8, v9);
  }
}

intptr_t __58__RTTTelephonyUtilities_performCallCenterTask_callCenter___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return dispatch_semaphore_signal(v2);
}

+ (BOOL)TTYHardwareEnabledForAnyActiveContext
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v2 = +[RTTTelephonyUtilities sharedUtilityProvider];
  v3 = [v2 activeContexts];
  v4 = [v3 subscriptions];

  if ([v4 count])
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __62__RTTTelephonyUtilities_TTYHardwareEnabledForAnyActiveContext__block_invoke;
    v11[3] = &unk_279AE7998;
    v11[4] = &v13;
    [v4 enumerateObjectsUsingBlock:v11];
    v5 = *(v14 + 24);
  }

  else
  {
    v6 = AXLogRTT();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_261754000, v6, OS_LOG_TYPE_INFO, "HW No active subscriptions, falling back to default voice context", buf, 2u);
    }

    v7 = +[RTTSettings sharedInstance];
    v8 = +[RTTTelephonyUtilities sharedUtilityProvider];
    v9 = [v8 defaultVoiceContext];
    v5 = [v7 TTYHardwareEnabledForContext:v9];
  }

  _Block_object_dispose(&v13, 8);
  return v5 & 1;
}

void __62__RTTTelephonyUtilities_TTYHardwareEnabledForAnyActiveContext__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = +[RTTSettings sharedInstance];
  v8 = [v6 context];

  LODWORD(v6) = [v7 TTYHardwareEnabledForContext:v8];
  if (v6)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }
}

+ (BOOL)TTYSoftwareEnabledForAnyActiveContext
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v2 = +[RTTTelephonyUtilities sharedUtilityProvider];
  v3 = [v2 activeContexts];
  v4 = [v3 subscriptions];

  if ([v4 count])
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __62__RTTTelephonyUtilities_TTYSoftwareEnabledForAnyActiveContext__block_invoke;
    v11[3] = &unk_279AE7998;
    v11[4] = &v13;
    [v4 enumerateObjectsUsingBlock:v11];
    v5 = *(v14 + 24);
  }

  else
  {
    v6 = AXLogRTT();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_261754000, v6, OS_LOG_TYPE_INFO, "SW No active subscriptions, falling back to default voice context", buf, 2u);
    }

    v7 = +[RTTSettings sharedInstance];
    v8 = +[RTTTelephonyUtilities sharedUtilityProvider];
    v9 = [v8 defaultVoiceContext];
    v5 = [v7 TTYSoftwareEnabledForContext:v9];
  }

  _Block_object_dispose(&v13, 8);
  return v5 & 1;
}

void __62__RTTTelephonyUtilities_TTYSoftwareEnabledForAnyActiveContext__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = +[RTTSettings sharedInstance];
  v8 = [v6 context];

  LODWORD(v6) = [v7 TTYSoftwareEnabledForContext:v8];
  if (v6)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }
}

+ (BOOL)isRTTSupportedByCarrierBundle
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = +[RTTTelephonyUtilities sharedUtilityProvider];
  v3 = +[RTTTelephonyUtilities sharedUtilityProvider];
  v4 = [v3 defaultVoiceContext];
  v5 = [v2 isRTTSupportedForContext:v4 excludeRelay:1];

  v6 = AXLogRTT();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v9[0] = 67109120;
    v9[1] = v5;
    _os_log_impl(&dword_261754000, v6, OS_LOG_TYPE_INFO, "isRTTSupportedByCarrierBundle: %d", v9, 8u);
  }

  v7 = *MEMORY[0x277D85DE8];
  return v5;
}

+ (BOOL)isEmergencyRTTSupported
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = +[RTTTelephonyUtilities sharedUtilityProvider];
  v4 = +[RTTTelephonyUtilities sharedUtilityProvider];
  v5 = [v4 defaultVoiceContext];
  v6 = [v3 isEmergencyRTTSupportedForContext:v5];

  v7 = [a1 isEmergencyRelayRTTSupported];
  v8 = AXLogRTT();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v11[0] = 67109376;
    v11[1] = v6;
    v12 = 1024;
    v13 = v7;
    _os_log_impl(&dword_261754000, v8, OS_LOG_TYPE_INFO, "isEmergencyRTTSupported: %d, relay: %d", v11, 0xEu);
  }

  v9 = *MEMORY[0x277D85DE8];
  return (v6 | v7) & 1;
}

+ (BOOL)isEmergencyRTTSupportedByCarrierBundle
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = +[RTTTelephonyUtilities sharedUtilityProvider];
  v3 = +[RTTTelephonyUtilities sharedUtilityProvider];
  v4 = [v3 defaultVoiceContext];
  v5 = [v2 isEmergencyRTTSupportedForContext:v4 excludeRelay:1];

  v6 = AXLogRTT();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v9[0] = 67109120;
    v9[1] = v5;
    _os_log_impl(&dword_261754000, v6, OS_LOG_TYPE_INFO, "isEmergencyRTTSupportedByCarrierBundle: %d", v9, 8u);
  }

  v7 = *MEMORY[0x277D85DE8];
  return v5;
}

+ (BOOL)isOnlyRTTSupported
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = +[RTTTelephonyUtilities sharedUtilityProvider];
  v3 = [v2 defaultVoiceContext];
  v4 = [RTTTelephonyUtilities isOnlyRTTSupportedForContext:v3];

  v5 = AXLogRTT();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v8[0] = 67109120;
    v8[1] = v4;
    _os_log_impl(&dword_261754000, v5, OS_LOG_TYPE_INFO, "checking only RTT: %d", v8, 8u);
  }

  v6 = *MEMORY[0x277D85DE8];
  return v4;
}

+ (BOOL)shouldUseRTT
{
  v2 = +[RTTTelephonyUtilities sharedUtilityProvider];
  v3 = [v2 defaultVoiceContext];
  v4 = [RTTTelephonyUtilities shouldUseRTTForContext:v3];

  return v4;
}

+ (BOOL)relayIsSupported
{
  v2 = +[RTTSettings sharedInstance];
  if ([v2 TTYSoftwareEnabled])
  {
    v3 = +[RTTTelephonyUtilities relayPhoneNumber];
    v4 = [v3 length] != 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (int64_t)currentSupportedTextingType
{
  v8 = *MEMORY[0x277D85DE8];
  if (+[RTTTelephonyUtilities hardwareTTYIsSupported](RTTTelephonyUtilities, "hardwareTTYIsSupported") || +[RTTTelephonyUtilities softwareTTYIsSupported])
  {
    if (+[RTTTelephonyUtilities isOnlyRTTSupported])
    {
      v2 = 1;
    }

    else if (+[RTTTelephonyUtilities isRTTSupported])
    {
      v2 = 3;
    }

    else if (+[RTTTelephonyUtilities isRelayRTTSupported])
    {
      v2 = 1;
    }

    else
    {
      v2 = 2;
    }
  }

  else
  {
    v2 = 4;
  }

  v3 = AXLogRTT();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v6 = 134217984;
    v7 = v2;
    _os_log_impl(&dword_261754000, v3, OS_LOG_TYPE_INFO, "currentSupportedTextingType: %ld", &v6, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
  return v2;
}

+ (id)relayPhoneNumber
{
  v2 = +[RTTSettings sharedInstance];
  v3 = [v2 preferredRelayNumber];

  return v3;
}

+ (BOOL)hardwareTTYIsSupported
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = +[RTTTelephonyUtilities sharedUtilityProvider];
  v3 = [v2 allVoiceContexts];

  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v3);
        }

        if ([RTTTelephonyUtilities hardwareTTYIsSupportedForContext:*(*(&v9 + 1) + 8 * i)])
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v7 = *MEMORY[0x277D85DE8];
  return v4;
}

+ (BOOL)isEmergencyRelayRTTSupported
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = +[RTTSettings sharedInstance];
  if ([v2 supportsRelayCalling])
  {
    v3 = +[RTTSettings sharedInstance];
    v4 = [v3 isRelayCallingEnabled];
  }

  else
  {
    v4 = 0;
  }

  v5 = +[RTTSettings sharedInstance];
  v6 = [v5 continuityEmergencyRTTIsSupported];

  v7 = AXLogRTT();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v10[0] = 67109376;
    v10[1] = v4;
    v11 = 1024;
    v12 = v6;
    _os_log_impl(&dword_261754000, v7, OS_LOG_TYPE_INFO, "Emergency relay supported: TU supports: %d, continuity: %d", v10, 0xEu);
  }

  if (v4)
  {
    result = v6;
  }

  else
  {
    result = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

+ (BOOL)isTTYSupportedForContext:(id)a3
{
  v3 = a3;
  v4 = +[RTTTelephonyUtilities sharedUtilityProvider];
  v5 = [v4 isTTYSupportedForContext:v3];

  return v5;
}

+ (BOOL)isRTTSupportedForContext:(id)a3
{
  v3 = a3;
  v4 = +[RTTTelephonyUtilities sharedUtilityProvider];
  v5 = [v4 isRTTSupportedForContext:v3];

  return v5;
}

+ (BOOL)isEmergencyRTTSupportedForContext:(id)a3
{
  v3 = a3;
  v4 = +[RTTTelephonyUtilities sharedUtilityProvider];
  v5 = [v4 isEmergencyRTTSupportedForContext:v3];

  return v5;
}

+ (BOOL)isOnlyRTTSupportedForContext:(id)a3
{
  v3 = a3;
  v4 = ![RTTTelephonyUtilities isTTYSupportedForContext:v3]&& [RTTTelephonyUtilities isRTTSupportedForContext:v3];

  return v4;
}

+ (BOOL)hardwareTTYIsSupportedForContext:(id)a3
{
  v3 = a3;
  v4 = objc_autoreleasePoolPush();
  if ([RTTTelephonyUtilities isTTYSupportedForContext:v3])
  {
    v5 = [MEMORY[0x277D6EDE8] supportsPrimaryCalling];
  }

  else
  {
    v5 = 0;
  }

  objc_autoreleasePoolPop(v4);

  return v5;
}

+ (BOOL)softwareTTYIsSupportedForContext:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_autoreleasePoolPush();
  if ([MEMORY[0x277D12B60] isInternalInstall] && (+[RTTSettings sharedInstance](RTTSettings, "sharedInstance"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "internalOverrideTTYAvailability"), v5, (v6 & 1) != 0))
  {
    v7 = 1;
  }

  else
  {
    v19 = v4;
    v8 = [RTTTelephonyUtilities isTTYSupportedForContext:v3];
    v9 = [MEMORY[0x277D6EDE8] supportsPrimaryCalling];
    v10 = [MEMORY[0x277D6EDE8] isThumperCallingEnabled];
    v11 = [MEMORY[0x277D6EDE8] isDirectTelephonyCallingCurrentlyAvailable];
    v12 = [MEMORY[0x277D6EDE8] isRelayCallingEnabled];
    v13 = [RTTTelephonyUtilities isRTTSupportedForContext:v3];
    v14 = +[RTTTelephonyUtilities isRelayRTTSupported];
    v15 = AXLogRTT();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = [MEMORY[0x277D6EDE8] thumperCallingCapabilityInfo];
      *buf = 67110912;
      v21 = v8;
      v22 = 1024;
      v23 = v9;
      v24 = 1024;
      v25 = v10;
      v26 = 1024;
      v27 = v11;
      v28 = 1024;
      v29 = v12;
      v30 = 1024;
      v31 = v14;
      v32 = 1024;
      v33 = v13;
      v34 = 1024;
      v35 = [v16 provisioningStatus];
      _os_log_impl(&dword_261754000, v15, OS_LOG_TYPE_INFO, "SW TTY enabled=%d, Primary calling: %d, Thumper: %d, Direct: %d, Relay: %d, RTTRelay: %d, RTT supported %d, Thumper provisioning: %d", buf, 0x32u);
    }

    v7 = v8 & v9 | v14 | (v9 | v10 | v11 | v12) & v13;
    v4 = v19;
  }

  objc_autoreleasePoolPop(v4);

  v17 = *MEMORY[0x277D85DE8];
  return v7 & 1;
}

+ (BOOL)shouldUseRTTForContext:(id)a3
{
  if (![RTTTelephonyUtilities isRTTSupportedForContext:a3])
  {
    return 0;
  }

  v3 = +[RTTTelephonyUtilities sharedUtilityProvider];
  v4 = [v3 currentPreferredTransportMethod] == 2;

  return v4;
}

+ (BOOL)relayIsSupportedForContext:(id)a3
{
  v3 = [RTTTelephonyUtilities relayPhoneNumberForContext:a3];
  v4 = [v3 length] != 0;

  return v4;
}

+ (id)relayPhoneNumberForContext:(id)a3
{
  v3 = a3;
  v4 = +[RTTTelephonyUtilities sharedUtilityProvider];
  v5 = [v4 relayNumberForContext:v3];

  return v5;
}

+ (BOOL)isRTTCallHoldSupportedForContext:(id)a3
{
  v3 = a3;
  v4 = +[RTTTelephonyUtilities sharedUtilityProvider];
  v5 = [v4 isRTTCallHoldSupportedForContext:v3];

  return v5;
}

uint64_t __29__RTTTelephonyUtilities_init__block_invoke(uint64_t a1)
{
  [*(a1 + 32) registerNotifications];
  [*(a1 + 32) reloadDefaultVoiceContext];
  [*(a1 + 32) didChangeRelayCallingAvailability];
  v2 = *(a1 + 32);

  return [v2 updateHeadphoneState];
}

void __29__RTTTelephonyUtilities_init__block_invoke_2()
{
  v0 = [MEMORY[0x277CCAB98] defaultCenter];
  [v0 postNotificationName:@"AXTTYPreferredTransportMethodChangedNotification" object:0];
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  v5.receiver = self;
  v5.super_class = RTTTelephonyUtilities;
  [(RTTTelephonyUtilities *)&v5 dealloc];
}

- (void)didChangeTelephonyCallingSupport
{
  [(RTTTelephonyUtilities *)self setCallCapabilitiesSupportsTelephonyCalls:0];
  v2 = AXLogRTT();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_261754000, v2, OS_LOG_TYPE_INFO, "Reseting telephony calling support", v3, 2u);
  }
}

- (void)headphoneStateChangedNotification:(id)a3
{
  v4 = dispatch_time(0, 500000000);
  v5 = [(RTTTelephonyUtilities *)self telephonyUpdateQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__RTTTelephonyUtilities_headphoneStateChangedNotification___block_invoke;
  block[3] = &unk_279AE7738;
  block[4] = self;
  dispatch_after(v4, v5, block);
}

- (void)registerNotifications
{
  v16[3] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D26E58] sharedAVSystemController];
  v4 = MEMORY[0x277D26C10];
  v5 = MEMORY[0x277D26B10];
  v6 = *MEMORY[0x277D26B10];
  v16[0] = *MEMORY[0x277D26C10];
  v16[1] = v6;
  v7 = MEMORY[0x277D26D40];
  v16[2] = *MEMORY[0x277D26D40];
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:3];
  [v3 setAttribute:v8 forKey:*MEMORY[0x277D26DD0] error:0];

  v9 = [MEMORY[0x277CCAB98] defaultCenter];
  [v9 addObserver:self selector:sel_headphoneStateChangedNotification_ name:*v4 object:0];

  v10 = [MEMORY[0x277CCAB98] defaultCenter];
  [v10 addObserver:self selector:sel_headphoneStateChangedNotification_ name:*v5 object:0];

  v11 = [MEMORY[0x277CCAB98] defaultCenter];
  v12 = *v7;
  v13 = [MEMORY[0x277D26E58] sharedAVSystemController];
  [v11 addObserver:self selector:sel_mediaServerDied name:v12 object:v13];

  v14 = [MEMORY[0x277CCAB98] defaultCenter];
  [v14 addObserver:self selector:sel__callDidConnect name:*MEMORY[0x277D6EFD8] object:0];

  v15 = *MEMORY[0x277D85DE8];
}

- (void)mediaServerDied
{
  v3 = AXLogRTT();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_261754000, v3, OS_LOG_TYPE_INFO, "Media server died.", v5, 2u);
  }

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 removeObserver:self];

  [(RTTTelephonyUtilities *)self performSelector:sel_registerNotifications withObject:0 afterDelay:2.0];
  [(RTTTelephonyUtilities *)self headphoneStateChangedNotification:0];
}

- (void)setCallCapabilitiesSupportsTelephonyCalls:(id)a3
{
  v7 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [v7 copy];
  callCapabilitiesSupportsTelephonyCalls = v4->_callCapabilitiesSupportsTelephonyCalls;
  v4->_callCapabilitiesSupportsTelephonyCalls = v5;

  objc_sync_exit(v4);
}

- (unint64_t)currentPreferredTransportMethodForContext:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (![MEMORY[0x277D12B60] deviceIsPhone])
  {
    goto LABEL_8;
  }

  v5 = [(RTTTelephonyUtilities *)self callCapabilitiesSupportsTelephonyCalls];
  if (![v5 BOOLValue])
  {
    goto LABEL_7;
  }

  v6 = +[RTTSettings sharedInstance];
  if (([v6 TTYHardwareEnabledForContext:v4] & 1) == 0)
  {

LABEL_7:
    goto LABEL_8;
  }

  v7 = [(RTTTelephonyUtilities *)self headphoneJackSupportsTTY];

  if (v7)
  {
    v8 = 1;
    goto LABEL_10;
  }

LABEL_8:
  v9 = +[RTTSettings sharedInstance];
  v10 = [v9 TTYSoftwareEnabledForContext:v4];

  if (!v10)
  {
    v14 = AXLogRTT();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v17 = 138412290;
      *v18 = v4;
      _os_log_impl(&dword_261754000, v14, OS_LOG_TYPE_INFO, "No TTY transport method support, so not migrating or priming server: %@", &v17, 0xCu);
    }

    v8 = 0;
    goto LABEL_17;
  }

  v8 = 2;
LABEL_10:
  v11 = +[RTTSettings sharedInstance];
  v12 = [v11 shouldMigrateSettings];

  v13 = AXLogRTT();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v17 = 67109634;
    *v18 = v8;
    *&v18[4] = 1024;
    *&v18[6] = v12;
    v19 = 2112;
    v20 = v4;
    _os_log_impl(&dword_261754000, v13, OS_LOG_TYPE_INFO, "Current preferred transport is : %d - %d = %@", &v17, 0x18u);
  }

  if (v12)
  {
    v14 = +[RTTServer sharedInstance];
    [v14 primeRTTServer];
LABEL_17:
  }

  v15 = *MEMORY[0x277D85DE8];
  return v8;
}

- (BOOL)contactIsTTYContact:(id)a3
{
  v4 = a3;
  if ([(RTTTelephonyUtilities *)self _contactIsEmergencyServices:v4])
  {
    v5 = 0;
  }

  else if ([(RTTTelephonyUtilities *)self currentPreferredTransportMethod])
  {
    v5 = 1;
  }

  else
  {
    v6 = +[RTTServer sharedInstance];
    v5 = [v6 contactIsTTYContact:v4];
  }

  return v5;
}

- (BOOL)_contactIsEmergencyServices:(id)a3
{
  v28[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] array];
  v6 = *MEMORY[0x277CBD098];
  v28[0] = *MEMORY[0x277CBD098];
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:1];
  v8 = [v4 areKeysAvailable:v7];

  if (v8)
  {
    v9 = [v4 phoneNumbers];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __53__RTTTelephonyUtilities__contactIsEmergencyServices___block_invoke;
    v24[3] = &unk_279AE79C0;
    v10 = &v25;
    v25 = v5;
    [v9 enumerateObjectsUsingBlock:v24];
  }

  else
  {
    v9 = [(RTTTelephonyUtilities *)self contactStore];
    v11 = MEMORY[0x277CBDA58];
    v12 = [v4 identifier];
    v27 = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v27 count:1];
    v14 = [v11 predicateForContactsWithIdentifiers:v13];
    v26 = v6;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v26 count:1];
    v16 = [v9 unifiedContactsMatchingPredicate:v14 keysToFetch:v15 error:0];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __53__RTTTelephonyUtilities__contactIsEmergencyServices___block_invoke_2;
    v22[3] = &unk_279AE79E8;
    v10 = &v23;
    v23 = v5;
    [v16 enumerateObjectsUsingBlock:v22];
  }

  if ([v5 count] == 1)
  {
    v17 = +[RTTServer sharedInstance];
    v18 = [v5 firstObject];
    v19 = [v17 isEmergencyNumber:v18];
  }

  else
  {
    v19 = 0;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

void __53__RTTTelephonyUtilities__contactIsEmergencyServices___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = [a2 value];
  v3 = [v4 stringValue];
  [v2 addObject:v3];
}

void __53__RTTTelephonyUtilities__contactIsEmergencyServices___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 phoneNumbers];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __53__RTTTelephonyUtilities__contactIsEmergencyServices___block_invoke_3;
  v4[3] = &unk_279AE79C0;
  v5 = *(a1 + 32);
  [v3 enumerateObjectsUsingBlock:v4];
}

void __53__RTTTelephonyUtilities__contactIsEmergencyServices___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = [a2 value];
  v3 = [v4 stringValue];
  [v2 addObject:v3];
}

- (id)myPhoneNumber
{
  v3 = [(RTTTelephonyUtilities *)self defaultVoiceContext];
  v4 = [(RTTTelephonyUtilities *)self phoneNumberForContext:v3];

  return v4;
}

- (id)phoneNumberForContext:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    phoneNumberInfoCache = self->_phoneNumberInfoCache;
    if (!phoneNumberInfoCache)
    {
      v6 = objc_opt_new();
      v7 = self->_phoneNumberInfoCache;
      self->_phoneNumberInfoCache = v6;

      phoneNumberInfoCache = self->_phoneNumberInfoCache;
    }

    v8 = [v4 uuid];
    v9 = [(NSMutableDictionary *)phoneNumberInfoCache objectForKey:v8];

    if (v9)
    {
      v10 = self->_phoneNumberInfoCache;
      v11 = [v4 uuid];
      v12 = [(NSMutableDictionary *)v10 objectForKey:v11];
    }

    else
    {
      v17 = [(RTTTelephonyUtilities *)self telephonyClient];
      v24 = 0;
      v12 = [v17 getPhoneNumber:v4 error:&v24];
      v16 = v24;

      v18 = AXLogRTT();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v26 = v12;
        v27 = 2112;
        v28 = v4;
        _os_log_impl(&dword_261754000, v18, OS_LOG_TYPE_INFO, "Retrieved phone number %@ from context %@ for caching", buf, 0x16u);
      }

      if (v16)
      {
        goto LABEL_15;
      }
    }

    if ([v12 isPresent])
    {
      v13 = [v12 number];
      v14 = self->_phoneNumberInfoCache;
      v15 = [v4 uuid];
      [(NSMutableDictionary *)v14 setObject:v12 forKey:v15];
      v16 = 0;
LABEL_18:

      goto LABEL_19;
    }

    v16 = 0;
LABEL_15:
    v19 = self->_phoneNumberInfoCache;
    v20 = objc_opt_new();
    v21 = [v4 uuid];
    [(NSMutableDictionary *)v19 setObject:v20 forKey:v21];

    v15 = AXLogRTT();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v26 = v4;
      v27 = 2112;
      v28 = v16;
      _os_log_impl(&dword_261754000, v15, OS_LOG_TYPE_INFO, "Cached blank phone number for context %@. Error? %@", buf, 0x16u);
    }

    v13 = 0;
    goto LABEL_18;
  }

  v16 = AXLogRTT();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    [RTTTelephonyUtilities phoneNumberForContext:v16];
  }

  v13 = 0;
LABEL_19:

  v22 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)ttyMeContact
{
  v12[3] = *MEMORY[0x277D85DE8];
  if (_AXSInUnitTestMode())
  {
    if (ttyMeContact_onceToken != -1)
    {
      [RTTTelephonyUtilities ttyMeContact];
    }

    v2 = ttyMeContact_unitTestMe;
  }

  else
  {
    v3 = [MEMORY[0x277CBDA78] descriptorForRequiredKeysForStyle:0];
    v4 = *MEMORY[0x277CBCFC0];
    v12[0] = v3;
    v12[1] = v4;
    v12[2] = *MEMORY[0x277CBD098];
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:3];

    v6 = +[RTTTelephonyUtilities sharedUtilityProvider];
    v7 = [v6 contactStore];
    v11 = 0;
    v8 = [v7 _ios_meContactWithKeysToFetch:v5 error:&v11];

    v2 = v8;
  }

  v9 = *MEMORY[0x277D85DE8];

  return v2;
}

uint64_t __37__RTTTelephonyUtilities_ttyMeContact__block_invoke()
{
  ttyMeContact_unitTestMe = objc_alloc_init(MEMORY[0x277CBDA58]);

  return MEMORY[0x2821F96F8]();
}

- (BOOL)contactPathIsMe:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CCAB50] decimalDigitCharacterSet];
  [v5 invert];
  v6 = [v4 componentsSeparatedByCharactersInSet:v5];
  v7 = [v6 componentsJoinedByString:&stru_2873FC590];

  v8 = AXLogRTT();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    *&buf[4] = v4;
    *&buf[12] = 2112;
    *&buf[14] = v7;
    _os_log_impl(&dword_261754000, v8, OS_LOG_TYPE_INFO, "Is contact path %@ (%@) me?", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v20 = 0;
  v9 = [(RTTTelephonyUtilities *)self subscriptionContexts];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __41__RTTTelephonyUtilities_contactPathIsMe___block_invoke;
  v15[3] = &unk_279AE7A10;
  v15[4] = self;
  v10 = v5;
  v16 = v10;
  v11 = v4;
  v17 = v11;
  v18 = buf;
  [v9 enumerateObjectsUsingBlock:v15];

  v12 = *(*&buf[8] + 24);
  _Block_object_dispose(buf, 8);

  v13 = *MEMORY[0x277D85DE8];
  return v12 & 1;
}

void __41__RTTTelephonyUtilities_contactPathIsMe___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = [*(a1 + 32) phoneNumberForContext:v6];
  v8 = [v7 componentsSeparatedByCharactersInSet:*(a1 + 40)];
  v9 = [v8 componentsJoinedByString:&stru_2873FC590];

  v10 = AXLogRTT();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v13 = 138412546;
    v14 = v6;
    v15 = 2112;
    v16 = v9;
    _os_log_impl(&dword_261754000, v10, OS_LOG_TYPE_INFO, "Finding own contact path from context %@ with phone number %@", &v13, 0x16u);
  }

  if ([v7 isEqualToString:*(a1 + 48)])
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
    *a4 = 1;
    v11 = AXLogRTT();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&dword_261754000, v11, OS_LOG_TYPE_INFO, "Yes it's my phone number!", &v13, 2u);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (id)contactPathForCall:(id)a3
{
  v4 = [a3 dialRequestForRedial];
  v5 = [v4 localSenderIdentityUUID];
  v6 = [v5 UUIDString];
  v7 = [(RTTTelephonyUtilities *)self phoneNumberFromUUID:v6];

  v8 = [MEMORY[0x277D12B60] deviceIsPad];
  if (![v7 length] || (_AXSInUnitTestMode() != 0) | v8 & 1)
  {
    v9 = ttyLocString(@"TTYPersonMe");

    v7 = v9;
  }

  return v7;
}

- (id)phoneNumberFromUUID:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__0;
  v17 = __Block_byref_object_dispose__0;
  v18 = 0;
  v5 = [(RTTTelephonyUtilities *)self subscriptionContexts];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __45__RTTTelephonyUtilities_phoneNumberFromUUID___block_invoke;
  v9[3] = &unk_279AE7A38;
  v6 = v4;
  v11 = self;
  v12 = &v13;
  v10 = v6;
  [v5 enumerateObjectsUsingBlock:v9];

  v7 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v7;
}

void __45__RTTTelephonyUtilities_phoneNumberFromUUID___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v12 = a2;
  v6 = [v12 uuid];
  v7 = [v6 UUIDString];
  v8 = [v7 isEqualToString:*(a1 + 32)];

  if (v8)
  {
    v9 = [*(a1 + 40) phoneNumberForContext:v12];
    v10 = *(*(a1 + 48) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    *a4 = 1;
  }
}

- (id)labelFromUUID:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__0;
  v17 = __Block_byref_object_dispose__0;
  v18 = 0;
  v5 = [(RTTTelephonyUtilities *)self subscriptionContexts];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __39__RTTTelephonyUtilities_labelFromUUID___block_invoke;
  v9[3] = &unk_279AE7A38;
  v6 = v4;
  v11 = self;
  v12 = &v13;
  v10 = v6;
  [v5 enumerateObjectsUsingBlock:v9];

  v7 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v7;
}

void __39__RTTTelephonyUtilities_labelFromUUID___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v19 = a2;
  v6 = [v19 uuid];
  v7 = [v6 UUIDString];
  v8 = [v7 isEqualToString:*(a1 + 32)];

  if (v8)
  {
    v9 = [*(a1 + 40) telephonyClient];
    v10 = [v9 getSimLabel:v19 error:0];
    v11 = [v10 text];
    v12 = *(*(a1 + 48) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;

    if (![*(*(*(a1 + 48) + 8) + 40) length])
    {
      v14 = [*(a1 + 40) phoneNumberForContext:v19];
    }

    if (![*(*(*(a1 + 48) + 8) + 40) length])
    {
      v15 = [v19 uuid];
      v16 = [v15 UUIDString];
      v17 = *(*(a1 + 48) + 8);
      v18 = *(v17 + 40);
      *(v17 + 40) = v16;
    }

    *a4 = 1;
  }
}

- (BOOL)answerRTTCallAsMutedForCall:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = +[RTTSettings sharedInstance];
  v5 = [v4 TTYSoftwareEnabled];

  v6 = [v3 isEmergency];
  v7 = [v3 supportsTTYWithVoice];

  v8 = +[RTTSettings sharedInstance];
  v9 = [v8 answerRTTCallsAsMuted];

  v10 = AXLogRTT();
  v11 = v6 ^ 1;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v14[0] = 67109888;
    v14[1] = v9;
    v15 = 1024;
    v16 = v11;
    v17 = 1024;
    v18 = v7;
    v19 = 1024;
    v20 = v5;
    _os_log_impl(&dword_261754000, v10, OS_LOG_TYPE_INFO, "Mute call on answer? Preference: %d Not emergency: %d Supports RTT: %d RTT Enabled: %d", v14, 0x1Au);
  }

  v12 = *MEMORY[0x277D85DE8];
  return (v9 | ~v5) & v11 & v7 & 1;
}

- (void)purgePhoneNumberInfoCache
{
  v3 = AXLogRTT();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_261754000, v3, OS_LOG_TYPE_INFO, "Purging phone number info cache", v4, 2u);
  }

  [(NSMutableDictionary *)self->_phoneNumberInfoCache removeAllObjects];
}

- (void)_callDidConnect
{
  v3 = AXLogRTT();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_261754000, v3, OS_LOG_TYPE_INFO, "Call connected, reloading context and relay phone numbers to make sure we're up to date", v4, 2u);
  }

  [(RTTTelephonyUtilities *)self _reloadContexts];
}

- (void)_reloadContexts
{
  [(RTTTelephonyUtilities *)self reloadDefaultVoiceContext];
  [(RTTTelephonyUtilities *)self reloadRelayPhoneNumbers];
  [(RTTTelephonyUtilities *)self purgePhoneNumberInfoCache];
  [(RTTTelephonyUtilities *)self setCachedSubscriptionContexts:0];

  [(RTTTelephonyUtilities *)self setCachedActiveContexts:0];
}

- (void)carrierSettingsDidChange
{
  v3 = AXLogRTT();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_261754000, v3, OS_LOG_TYPE_INFO, "Carrier settings did change, reloading context and relay phone numbers", v4, 2u);
  }

  [(RTTTelephonyUtilities *)self _reloadContexts];
}

- (id)activeContexts
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [(RTTTelephonyUtilities *)self cachedActiveContexts];

  if (v3)
  {
    v4 = [(RTTTelephonyUtilities *)self cachedActiveContexts];
  }

  else
  {
    v5 = [(RTTTelephonyUtilities *)self telephonyClient];
    v13 = 0;
    v6 = [v5 getActiveContexts:&v13];
    v7 = v13;

    if (v7)
    {
      v8 = AXLogRTT();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v15 = v7;
        _os_log_impl(&dword_261754000, v8, OS_LOG_TYPE_INFO, "Error getting contexts %@", buf, 0xCu);
      }
    }

    [(RTTTelephonyUtilities *)self setCachedActiveContexts:v6];
    v9 = AXLogRTT();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = [(RTTTelephonyUtilities *)self cachedActiveContexts];
      *buf = 138412290;
      v15 = v10;
      _os_log_impl(&dword_261754000, v9, OS_LOG_TYPE_INFO, "Caching active contexts %@", buf, 0xCu);
    }

    v4 = [(RTTTelephonyUtilities *)self cachedActiveContexts];
  }

  v11 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)contextForCall:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(RTTTelephonyUtilities *)self subscriptionContexts];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __40__RTTTelephonyUtilities_contextForCall___block_invoke;
  v12[3] = &unk_279AE7A60;
  v6 = v4;
  v13 = v6;
  v7 = [v5 indexOfObjectPassingTest:v12];

  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = AXLogRTT();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v15 = v6;
      _os_log_impl(&dword_261754000, v8, OS_LOG_TYPE_INFO, "No context found for call %@", buf, 0xCu);
    }

    v9 = 0;
  }

  else
  {
    v8 = [(RTTTelephonyUtilities *)self subscriptionContexts];
    v9 = [v8 objectAtIndex:v7];
  }

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

uint64_t __40__RTTTelephonyUtilities_contextForCall___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 uuid];
  v4 = [*(a1 + 32) localSenderIdentityUUID];
  v5 = [v3 isEqual:v4];

  return v5;
}

- (BOOL)reloadRelayPhoneNumbers
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  if ([MEMORY[0x277D12B60] currentProcessIsHeard])
  {
    v3 = AXLogRTT();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_261754000, v3, OS_LOG_TYPE_INFO, "Updating relay number with carrier bundle", buf, 2u);
    }

    v4 = [(RTTTelephonyUtilities *)self activeContexts];
    v5 = [v4 subscriptions];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __48__RTTTelephonyUtilities_reloadRelayPhoneNumbers__block_invoke;
    v8[3] = &unk_279AE7A88;
    v8[4] = self;
    v8[5] = &v10;
    [v5 enumerateObjectsUsingBlock:v8];
  }

  v6 = *(v11 + 24);
  _Block_object_dispose(&v10, 8);
  return v6;
}

void __48__RTTTelephonyUtilities_reloadRelayPhoneNumbers__block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 context];
  v6 = [v4 relayNumberForContext:v5];

  if ([v6 length])
  {
    v7 = +[RTTSettings sharedInstance];
    v8 = [v3 context];
    v9 = [v7 preferredRelayNumberForContext:v8];
    v10 = [v9 length];

    if (!v10)
    {
      v11 = AXLogRTT();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = [v3 context];
        v16 = 138412546;
        v17 = v6;
        v18 = 2112;
        v19 = v12;
        _os_log_impl(&dword_261754000, v11, OS_LOG_TYPE_INFO, "setting relay number: %@ for context: %@", &v16, 0x16u);
      }

      v13 = +[RTTSettings sharedInstance];
      v14 = [v3 context];
      [v13 setPreferredRelayNumber:v6 forContext:v14];

      *(*(*(a1 + 40) + 8) + 24) = 1;
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)reloadDefaultVoiceContext
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_261754000, a2, OS_LOG_TYPE_ERROR, "Could not retrieve subscription info: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __50__RTTTelephonyUtilities_reloadDefaultVoiceContext__block_invoke(void *a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  v5 = a1[4];
  if (v5)
  {
    v6 = [v3 uuid];
    v7 = [v5 isEqual:v6];

    if (v7)
    {
      v8 = [v4 context];
      v9 = *(a1[6] + 8);
      v10 = *(v9 + 40);
      *(v9 + 40) = v8;

      v11 = AXLogRTT();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = *(*(a1[6] + 8) + 40);
        v20 = 138412290;
        v21 = v12;
        _os_log_impl(&dword_261754000, v11, OS_LOG_TYPE_INFO, "Checking voice preferred context %@", &v20, 0xCu);
      }
    }
  }

  else if (!*(*(a1[6] + 8) + 40))
  {
    v13 = [v3 context];
    v14 = *(a1[6] + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;
  }

  v16 = [v4 context];

  if (v16)
  {
    v17 = a1[5];
    v18 = [v4 context];
    [v17 addObject:v18];
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (id)getCarrierValueForKey:(id)a3 andContext:(id)a4
{
  v12[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([v6 length])
  {
    v12[0] = v6;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
    v9 = [(RTTTelephonyUtilities *)self getCarrierValueForKeyHierarchy:v8 andContext:v7];
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)getCarrierValueForKeyHierarchy:(id)a3 andContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = [(RTTTelephonyUtilities *)self telephonyClient];
    v14 = 0;
    v9 = [v8 context:v7 getCarrierBundleValue:v6 error:&v14];
    v10 = v14;

    if (!v10)
    {
      goto LABEL_9;
    }

    v11 = AXLogRTT();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(RTTTelephonyUtilities *)v6 getCarrierValueForKeyHierarchy:v10 andContext:v11];
    }
  }

  else
  {
    v10 = AXLogRTT();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *v13 = 0;
      _os_log_impl(&dword_261754000, v10, OS_LOG_TYPE_INFO, "Empty context", v13, 2u);
    }
  }

  v9 = 0;
LABEL_9:

  return v9;
}

- (BOOL)isTTYOverIMSSupportedForContext:(id)a3 excludeRelay:(BOOL)a4
{
  v4 = a4;
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(RTTTelephonyUtilities *)self getCarrierValueForKeyHierarchy:&unk_2873FFEC0 andContext:v6];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v7 BOOLValue];
  }

  else
  {
    v8 = 0;
  }

  v9 = AXLogRTT();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v13 = 138413314;
    v14 = v6;
    v15 = 1024;
    v16 = v8;
    v17 = 2112;
    v18 = v7;
    v19 = 1024;
    v20 = +[RTTTelephonyUtilities isRelayRTTSupported];
    v21 = 1024;
    v22 = v4;
    _os_log_impl(&dword_261754000, v9, OS_LOG_TYPE_INFO, "RTT (ttyIMSSupported) supported %@ - %d = %@ -- %d (%d)", &v13, 0x28u);
  }

  if ((v4 | v8))
  {
    v10 = !v4 | v8;
  }

  else
  {
    v10 = +[RTTTelephonyUtilities isRelayRTTSupported];
  }

  v11 = *MEMORY[0x277D85DE8];
  return v10 & 1;
}

- (BOOL)isTTYSupportedForContext:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(RTTTelephonyUtilities *)self getCarrierValueForKey:@"ShowTTY" andContext:v4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v5 BOOLValue];
  }

  else
  {
    v6 = 0;
  }

  v7 = AXLogRTT();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v10 = 138412546;
    v11 = v4;
    v12 = 1024;
    v13 = v6;
    _os_log_impl(&dword_261754000, v7, OS_LOG_TYPE_INFO, "TTY supported %@ - %d", &v10, 0x12u);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v6;
}

- (id)relayNumberForContext:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(RTTTelephonyUtilities *)self getCarrierValueForKey:@"TTYRelayNumber" andContext:v4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if ([v6 length])
  {
    v7 = v5;
  }

  else
  {
    v7 = [(RTTTelephonyUtilities *)self getCarrierValueForKeyHierarchy:&unk_2873FFED8 andContext:v4];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;

      v6 = v8;
    }

    v9 = AXLogRTT();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v12 = 138412290;
      v13 = v6;
      _os_log_impl(&dword_261754000, v9, OS_LOG_TYPE_INFO, "Checking IMSConfig for relay number %@", &v12, 0xCu);
    }
  }

  v10 = *MEMORY[0x277D85DE8];

  return v6;
}

- (BOOL)isRTTCallHoldSupportedForContext:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(RTTTelephonyUtilities *)self getCarrierValueForKeyHierarchy:&unk_2873FFEF0 andContext:v4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v5 BOOLValue];
  }

  else
  {
    v6 = 0;
  }

  v7 = AXLogRTT();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v10 = 138412546;
    v11 = v5;
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&dword_261754000, v7, OS_LOG_TYPE_INFO, "RTT call hold supported %@ for context %@", &v10, 0x16u);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)listenForCloudRelayChanges
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [(RTTTelephonyUtilities *)self currentProcessHandlesCloudRelay];
  v4 = AXLogRTT();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v15 = v3;
    _os_log_impl(&dword_261754000, v4, OS_LOG_TYPE_INFO, "Listening for cloud relay changes: %d", buf, 8u);
  }

  if (v3)
  {
    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    v6 = *MEMORY[0x277CCA7C0];
    v7 = [MEMORY[0x277CCAD80] defaultStore];
    [v5 addObserver:self selector:sel_iCloudRTTRelayDidChange_ name:v6 object:v7];

    v8 = [MEMORY[0x277CCAD80] defaultStore];
    [v8 synchronize];

    telephonyUpdateQueue = self->_telephonyUpdateQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __51__RTTTelephonyUtilities_listenForCloudRelayChanges__block_invoke;
    block[3] = &unk_279AE7738;
    block[4] = self;
    dispatch_async(telephonyUpdateQueue, block);
    v10 = [(RTTTelephonyUtilities *)self accountStoreQueue];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __51__RTTTelephonyUtilities_listenForCloudRelayChanges__block_invoke_151;
    v12[3] = &unk_279AE7738;
    v12[4] = self;
    dispatch_async(v10, v12);
  }

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t __51__RTTTelephonyUtilities_listenForCloudRelayChanges__block_invoke(uint64_t a1)
{
  v2 = AXLogRTT();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_261754000, v2, OS_LOG_TYPE_INFO, "Processing icloud settings for RTT", v4, 2u);
  }

  [*(a1 + 32) iCloudAccountDidChange:0];
  return [*(a1 + 32) iCloudRTTRelayDidChange:0];
}

void __51__RTTTelephonyUtilities_listenForCloudRelayChanges__block_invoke_151(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = AXLogRTT();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_261754000, v2, OS_LOG_TYPE_INFO, "RTT fetching account store", buf, 2u);
  }

  v3 = objc_alloc_init(MEMORY[0x277CB8F48]);
  v4 = *(a1 + 32);
  v5 = *(v4 + 8);
  *(v4 + 8) = v3;

  v6 = *(*(a1 + 32) + 8);
  v7 = [v6 accountTypeWithAccountTypeIdentifier:*MEMORY[0x277CB8BA0]];
  v8 = [v6 accountsWithAccountType:v7];

  v9 = AXLogRTT();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v13 = v8;
    _os_log_impl(&dword_261754000, v9, OS_LOG_TYPE_INFO, "retrieved accounts: %@", buf, 0xCu);
  }

  v11 = *(a1 + 32);
  AXPerformBlockAsynchronouslyOnMainThread();

  v10 = *MEMORY[0x277D85DE8];
}

void __51__RTTTelephonyUtilities_listenForCloudRelayChanges__block_invoke_153(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 addObserver:*(a1 + 32) selector:sel_iCloudAccountDidChange_ name:*MEMORY[0x277CB8DB8] object:0];
}

- (void)didChangeOutgoingRelayCallerID
{
  if ([(RTTTelephonyUtilities *)self currentProcessHandlesCloudRelay])
  {
    v3 = AXLogRTT();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_261754000, v3, OS_LOG_TYPE_INFO, "Did change outgoing relay caller ID", v4, 2u);
    }

    [(RTTTelephonyUtilities *)self iCloudRTTRelayDidChange:0];
  }
}

- (void)didChangeRelayCallingCapabilities
{
  v11 = *MEMORY[0x277D85DE8];
  if ([(RTTTelephonyUtilities *)self currentProcessHandlesCloudRelay])
  {
    v2 = [MEMORY[0x277D6EDE8] supportsRelayCalling];
    v3 = [MEMORY[0x277D6EDE8] isRelayCallingEnabled];
    v4 = +[RTTSettings sharedInstance];
    [v4 setSupportsRelayCalling:v2];

    v5 = +[RTTSettings sharedInstance];
    [v5 setIsRelayCallingEnabled:v3];

    v6 = AXLogRTT();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v8[0] = 67109376;
      v8[1] = v2;
      v9 = 1024;
      v10 = v3;
      _os_log_impl(&dword_261754000, v6, OS_LOG_TYPE_INFO, "Did change relay calling capibilities %d %d", v8, 0xEu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)didChangeRelayCallingAvailability
{
  v11 = *MEMORY[0x277D85DE8];
  if ([(RTTTelephonyUtilities *)self currentProcessHandlesCloudRelay])
  {
    v2 = [MEMORY[0x277D6EDE8] supportsRelayCalling];
    v3 = [MEMORY[0x277D6EDE8] isRelayCallingEnabled];
    v4 = +[RTTSettings sharedInstance];
    [v4 setSupportsRelayCalling:v2];

    v5 = +[RTTSettings sharedInstance];
    [v5 setIsRelayCallingEnabled:v3];

    v6 = AXLogRTT();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v8[0] = 67109376;
      v8[1] = v2;
      v9 = 1024;
      v10 = v3;
      _os_log_impl(&dword_261754000, v6, OS_LOG_TYPE_INFO, "Did change relay calling availability %d %d", v8, 0xEu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)iCloudRTTRelayDidChange:(id)a3
{
  v4 = AXLogRTT();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_261754000, v4, OS_LOG_TYPE_INFO, "Cloud relay updated", buf, 2u);
  }

  icloudRelayConsolidator = self->_icloudRelayConsolidator;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __49__RTTTelephonyUtilities_iCloudRTTRelayDidChange___block_invoke;
  v6[3] = &unk_279AE7738;
  v6[4] = self;
  [(AXDispatchTimer *)icloudRelayConsolidator afterDelay:v6 processBlock:3.0];
}

uint64_t __49__RTTTelephonyUtilities_iCloudRTTRelayDidChange___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAD80] defaultStore];
  [v2 synchronize];

  v3 = [*(a1 + 32) relayRTTIsSupported];
  v4 = [*(a1 + 32) emergencyRelayRTTIsSupported];
  v5 = AXLogRTT();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v11[0] = 67109376;
    v11[1] = v3;
    v12 = 1024;
    v13 = v4;
    _os_log_impl(&dword_261754000, v5, OS_LOG_TYPE_INFO, "Relay supported? %d, Emergency relay supported? %d", v11, 0xEu);
  }

  v6 = +[RTTSettings sharedInstance];
  [v6 setContinuityRTTIsSupported:v3];

  v7 = +[RTTSettings sharedInstance];
  [v7 setContinuityEmergencyRTTIsSupported:v4];

  if (!+[RTTTelephonyUtilities softwareTTYIsSupported])
  {
    v8 = +[RTTSettings sharedInstance];
    [v8 setTTYSoftwareEnabled:0];
  }

  result = [*(a1 + 32) headphoneStateChangedNotification:0];
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)iCloudAccountDidChange:(id)a3
{
  v4 = a3;
  telephonyUpdateQueue = self->_telephonyUpdateQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__RTTTelephonyUtilities_iCloudAccountDidChange___block_invoke;
  v7[3] = &unk_279AE7760;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(telephonyUpdateQueue, v7);
}

uint64_t __48__RTTTelephonyUtilities_iCloudAccountDidChange___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = AXLogRTT();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v10 = v3;
    _os_log_impl(&dword_261754000, v2, OS_LOG_TYPE_INFO, "iCloud Account did change: %@", buf, 0xCu);
  }

  v4 = *(a1 + 40);
  v5 = *(v4 + 24);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __48__RTTTelephonyUtilities_iCloudAccountDidChange___block_invoke_156;
  v8[3] = &unk_279AE7738;
  v8[4] = v4;
  result = [v5 afterDelay:v8 processBlock:3.0];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)_relayNumbers:(id)a3 containsNumber:(id)a4
{
  v46 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [v5 objectForKey:v6];

  if (v7)
  {
    v8 = AXLogRTT();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138477827;
      v42 = v6;
      _os_log_impl(&dword_261754000, v8, OS_LOG_TYPE_INFO, "Found exact match for %{private}@", buf, 0xCu);
    }

    v9 = [v5 objectForKey:v6];
    v10 = [v9 BOOLValue];
    goto LABEL_24;
  }

  v9 = [v5 allKeys];
  v11 = [MEMORY[0x277CBEAF8] currentLocale];
  v12 = [v11 regionCode];

  v13 = [MEMORY[0x277D6EEE8] normalizedPhoneNumberHandleForValue:v6 isoCountryCode:v12];
  v36 = [v13 normalizedValue];

  v14 = [MEMORY[0x277CCA900] decimalDigitCharacterSet];
  v15 = [v14 invertedSet];

  v16 = [v6 componentsSeparatedByCharactersInSet:v15];
  v17 = [v16 componentsJoinedByString:&stru_2873FC590];

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = v5;
  v18 = [obj countByEnumeratingWithState:&v37 objects:v45 count:16];
  if (!v18)
  {
    v10 = 0;
    goto LABEL_23;
  }

  v19 = v18;
  v20 = *v38;
  v33 = v5;
  v34 = v6;
  v32 = v9;
  while (2)
  {
    for (i = 0; i != v19; ++i)
    {
      if (*v38 != v20)
      {
        objc_enumerationMutation(obj);
      }

      v22 = *(*(&v37 + 1) + 8 * i);
      v23 = [MEMORY[0x277D6EEE8] normalizedPhoneNumberHandleForValue:v22 isoCountryCode:{v12, v32}];
      v24 = [v23 normalizedValue];

      if ([v36 isEqualToString:v24])
      {
        v27 = AXLogRTT();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          *buf = 138478083;
          v42 = v34;
          v43 = 2113;
          v44 = v22;
          _os_log_impl(&dword_261754000, v27, OS_LOG_TYPE_INFO, "Matching %{private}@ to %{private}@ with locale normalization", buf, 0x16u);
        }

        v26 = [obj objectForKey:v22];
        v10 = [v26 BOOLValue];
        goto LABEL_22;
      }

      v25 = [v22 componentsSeparatedByCharactersInSet:v15];
      v26 = [v25 componentsJoinedByString:&stru_2873FC590];

      if ([v17 isEqualToString:v26])
      {
        v28 = AXLogRTT();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          *buf = 138478083;
          v42 = v34;
          v43 = 2113;
          v44 = v22;
          _os_log_impl(&dword_261754000, v28, OS_LOG_TYPE_INFO, "Matching %{private}@ to %{private}@ with non-numeric character stripping", buf, 0x16u);
        }

        v29 = [obj objectForKey:v22];
        v10 = [v29 BOOLValue];

LABEL_22:
        v5 = v33;

        v6 = v34;
        v9 = v32;
        goto LABEL_23;
      }
    }

    v19 = [obj countByEnumeratingWithState:&v37 objects:v45 count:16];
    v10 = 0;
    v5 = v33;
    v6 = v34;
    v9 = v32;
    if (v19)
    {
      continue;
    }

    break;
  }

LABEL_23:

LABEL_24:
  v30 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)resetCloudSupportStore
{
  v9[1] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D12B60] isInternalInstall])
  {
    if ([(RTTTelephonyUtilities *)self currentProcessHandlesCloudRelay])
    {
      v3 = AXLogRTT();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        *v7 = 0;
        _os_log_impl(&dword_261754000, v3, OS_LOG_TYPE_INFO, "Resetting cloud storage for device RTT support", v7, 2u);
      }

      v4 = [MEMORY[0x277CCAD80] defaultStore];
      [v4 synchronize];
      [v4 removeObjectForKey:@"RTTCloudRelayNumberKey"];
      [v4 removeObjectForKey:@"RTTEmergencyCloudRelayNumberKey"];
      [v4 synchronize];
      goto LABEL_8;
    }

    if (AXProcessIsAxctl())
    {
      v4 = +[RTTServer sharedInstance];
      v8 = @"axtty_reset_cloud_support_store_action";
      v9[0] = MEMORY[0x277CBEC38];
      v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
      [v4 sendMessageWithPayload:v5 andIdentifier:0x800000000];

LABEL_8:
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)getCarrierValueForKeyHierarchy:(os_log_t)log andContext:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_261754000, log, OS_LOG_TYPE_ERROR, "Error getting carrier key %@ - %@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

@end