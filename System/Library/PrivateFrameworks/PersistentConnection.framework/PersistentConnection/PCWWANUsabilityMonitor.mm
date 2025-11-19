@interface PCWWANUsabilityMonitor
- (BOOL)_isCurrentDataSimContextOnIvarQueue:(id)a3;
- (BOOL)isBadLinkQuality;
- (BOOL)isInterfaceHistoricallyUsable;
- (BOOL)isInterfaceUsable;
- (BOOL)isInternetReachable;
- (BOOL)isLTEWithCDRX;
- (BOOL)isPoorLinkQuality;
- (BOOL)isRadioHot;
- (NSString)linkQualityString;
- (NSString)networkCode;
- (PCInterfaceUsabilityMonitorDelegate)delegate;
- (PCWWANUsabilityMonitor)initWithDelegateQueue:(id)a3;
- (__CFString)wwanInterfaceName;
- (id)_currentDataSimContext;
- (int)currentRAT;
- (int)linkQuality;
- (int64_t)interfaceConstraint;
- (unint64_t)interface5GMode;
- (void)_adjustInterfaceNameForWWANContextID:(int)a3 interfaceName:(id)a4 forContext:(id)a5;
- (void)_callDelegateOnIvarQueueWithBlock:(id)a3;
- (void)_forwardConfigurationOnIvarQueue;
- (void)_processCallStatusChanged:(id)a3;
- (void)_processDataConnectionStatus:(id)a3 forContext:(id)a4;
- (void)_processDataStatus:(id)a3 forContext:(id)a4;
- (void)_setupWWANMonitor;
- (void)connectionStateChanged:(id)a3 connection:(int)a4 dataConnectionStatusInfo:(id)a5;
- (void)currentDataSimChanged:(id)a3;
- (void)dataStatus:(id)a3 dataStatusInfo:(id)a4;
- (void)dealloc;
- (void)interfaceConstraintChanged:(id)a3;
- (void)interfaceLinkQualityChanged:(id)a3 previousLinkQuality:(int)a4;
- (void)interfaceReachabilityChanged:(id)a3;
- (void)networkCode;
- (void)setDelegate:(id)a3;
- (void)setThresholdOffTransitionCount:(unint64_t)a3;
- (void)setTrackUsability:(BOOL)a3;
- (void)setTrackedTimeInterval:(double)a3;
@end

@implementation PCWWANUsabilityMonitor

void *__43__PCWWANUsabilityMonitor_isInterfaceUsable__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 64);
  if (result)
  {
    result = [result isInterfaceUsable];
    *(*(*(a1 + 40) + 8) + 24) = result;
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  return result;
}

- (BOOL)isInterfaceUsable
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarQueue = self->_ivarQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __43__PCWWANUsabilityMonitor_isInterfaceUsable__block_invoke;
  v5[3] = &unk_279A1A068;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(ivarQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (NSString)linkQualityString
{
  v2 = [(PCWWANUsabilityMonitor *)self linkQuality];

  return [PCInterfaceUsabilityMonitor stringForLinkQuality:v2];
}

- (int)linkQuality
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarQueue = self->_ivarQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __37__PCWWANUsabilityMonitor_linkQuality__block_invoke;
  v5[3] = &unk_279A1A068;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(ivarQueue, v5);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __37__PCWWANUsabilityMonitor_linkQuality__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 64);
  if (v2)
  {
    result = [v2 linkQuality];
  }

  else
  {
    result = 4294967294;
  }

  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (int64_t)interfaceConstraint
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarQueue = self->_ivarQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __45__PCWWANUsabilityMonitor_interfaceConstraint__block_invoke;
  v5[3] = &unk_279A1A068;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(ivarQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

void *__45__PCWWANUsabilityMonitor_interfaceConstraint__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 64);
  if (result)
  {
    result = [result interfaceConstraint];
  }

  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (int)currentRAT
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarQueue = self->_ivarQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __36__PCWWANUsabilityMonitor_currentRAT__block_invoke;
  v5[3] = &unk_279A1A180;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(ivarQueue, v5);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)isLTEWithCDRX
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarQueue = self->_ivarQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __39__PCWWANUsabilityMonitor_isLTEWithCDRX__block_invoke;
  v5[3] = &unk_279A1A068;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(ivarQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __39__PCWWANUsabilityMonitor_isLTEWithCDRX__block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0;
  v2 = *(*(a1 + 32) + 88);
  _CTServerConnectionGetCDRXWithLTEState();
  if (!*MEMORY[0x277CC3A68])
  {
    v8 = +[PCLog usabilityMonitor];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      *buf = 138412290;
      v17 = v9;
      _os_log_impl(&dword_25E3EF000, v8, OS_LOG_TYPE_DEFAULT, "%@ isLTEWithCDRX? On", buf, 0xCu);
    }

LABEL_12:
    *(*(*(a1 + 40) + 8) + 24) = 1;
    goto LABEL_17;
  }

  if (v15 != *MEMORY[0x277CC3A70])
  {
    v3 = *MEMORY[0x277CC3A60];
    v4 = +[PCLog usabilityMonitor];
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
    if (v3)
    {
      if (v5)
      {
        v6 = *(a1 + 32);
        *buf = 138412290;
        v17 = v6;
        v7 = "%@ isLTEWithCDRX? Got invalid value from CT";
LABEL_15:
        _os_log_impl(&dword_25E3EF000, v4, OS_LOG_TYPE_DEFAULT, v7, buf, 0xCu);
      }
    }

    else if (v5)
    {
      v12 = *(a1 + 32);
      *buf = 138412290;
      v17 = v12;
      v7 = "%@ isLTEWithCDRX? Off";
      goto LABEL_15;
    }

    goto LABEL_17;
  }

  v14 = 0;
  notify_get_state(*(*(a1 + 32) + 80), &v14);
  v10 = +[PCLog usabilityMonitor];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 32);
    *buf = 138412546;
    v17 = v11;
    v18 = 2048;
    v19 = v14;
    _os_log_impl(&dword_25E3EF000, v10, OS_LOG_TYPE_DEFAULT, "%@ isLTEWithCDRX? Unknown  --  powerlog value %llu", buf, 0x16u);
  }

  if (v14)
  {
    goto LABEL_12;
  }

LABEL_17:
  v13 = *MEMORY[0x277D85DE8];
}

- (BOOL)isBadLinkQuality
{
  v2 = [(PCWWANUsabilityMonitor *)self linkQuality];

  return [PCInterfaceUsabilityMonitor isBadLinkQuality:v2];
}

- (PCWWANUsabilityMonitor)initWithDelegateQueue:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = PCWWANUsabilityMonitor;
  v6 = [(PCWWANUsabilityMonitor *)&v12 init];
  if (v6)
  {
    v7 = dispatch_queue_create("PCWWANUsabilityMonitor-ivarqueue", 0);
    ivarQueue = v6->_ivarQueue;
    v6->_ivarQueue = v7;

    v9 = dispatch_queue_create("PCWWANUsabilityMonitor-monitordelegatequeue", 0);
    monitorDelegateQueue = v6->_monitorDelegateQueue;
    v6->_monitorDelegateQueue = v9;

    objc_storeStrong(&v6->_delegateQueue, a3);
    v6->_currentRAT = -1;
    notify_register_dispatch("com.apple.powerlog.BasebandHasCDRXCapability", &v6->_powerlogCDRXToken, MEMORY[0x277D85CD0], &__block_literal_global_6);
    [(PCWWANUsabilityMonitor *)v6 _setupWWANMonitor];
  }

  return v6;
}

void __48__PCWWANUsabilityMonitor_initWithDelegateQueue___block_invoke(int a1, int token)
{
  v7 = *MEMORY[0x277D85DE8];
  state64 = 0;
  notify_get_state(token, &state64);
  v2 = +[PCLog usabilityMonitor];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v6 = state64;
    _os_log_impl(&dword_25E3EF000, v2, OS_LOG_TYPE_DEFAULT, "kPCWWANPowerlogCDRXNotification - state = %llu", buf, 0xCu);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  notify_cancel(self->_powerlogCDRXToken);
  [(PCInterfaceUsabilityMonitor *)self->_interfaceMonitor setDelegate:0];
  interfaceMonitor = self->_interfaceMonitor;
  self->_interfaceMonitor = 0;

  if (self->_ctServerConnection)
  {
    v4 = *MEMORY[0x277CC37E8];
    _CTServerConnectionUnregisterForNotification();
    CFRelease(self->_ctServerConnection);
    self->_ctServerConnection = 0;
  }

  v5.receiver = self;
  v5.super_class = PCWWANUsabilityMonitor;
  [(PCWWANUsabilityMonitor *)&v5 dealloc];
}

- (void)_setupWWANMonitor
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_1(&dword_25E3EF000, v0, v1, "Unable to setup WWAN monitor. {connectionStatusError: %@; dataStatusError: %@}.");
  v2 = *MEMORY[0x277D85DE8];
}

uint64_t __43__PCWWANUsabilityMonitor__setupWWANMonitor__block_invoke(uint64_t a1)
{
  v2 = [[PCInterfaceUsabilityMonitor alloc] initWithInterfaceIdentifier:1 delegateQueue:*(*(a1 + 32) + 24)];
  v3 = *(a1 + 32);
  v4 = *(v3 + 64);
  *(v3 + 64) = v2;

  [*(*(a1 + 32) + 64) setDelegate:?];
  v5 = *(a1 + 32);

  return [v5 _forwardConfigurationOnIvarQueue];
}

- (void)_adjustInterfaceNameForWWANContextID:(int)a3 interfaceName:(id)a4 forContext:(id)a5
{
  v8 = a4;
  v9 = a5;
  ivarQueue = self->_ivarQueue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __88__PCWWANUsabilityMonitor__adjustInterfaceNameForWWANContextID_interfaceName_forContext___block_invoke;
  v13[3] = &unk_279A1A238;
  v13[4] = self;
  v14 = v9;
  v16 = a3;
  v15 = v8;
  v11 = v8;
  v12 = v9;
  dispatch_async(ivarQueue, v13);
}

void __88__PCWWANUsabilityMonitor__adjustInterfaceNameForWWANContextID_interfaceName_forContext___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) _isCurrentDataSimContextOnIvarQueue:*(a1 + 40)])
  {
    v2 = objc_autoreleasePoolPush();
    v3 = *(a1 + 56);
    v4 = *(a1 + 32);
    if (v3 != *(v4 + 104))
    {
      *(v4 + 104) = v3;
      [*(*(a1 + 32) + 64) setDelegate:0];
      v5 = *(a1 + 32);
      v6 = *(v5 + 64);
      *(v5 + 64) = 0;

      v7 = +[PCLog usabilityMonitor];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(a1 + 32);
        v9 = *(a1 + 56);
        v10 = *(a1 + 48);
        v15 = 138543874;
        v16 = v8;
        v17 = 2048;
        v18 = v9;
        v19 = 2114;
        v20 = v10;
        _os_log_impl(&dword_25E3EF000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ _adjustInterfaceNameForWWANContextID contextID %ld  interfaceName %{public}@", &v15, 0x20u);
      }

      if (*(*(a1 + 32) + 104) != -1)
      {
        v11 = [[PCInterfaceUsabilityMonitor alloc] initWithInterfaceIdentifier:1 delegateQueue:*(*(a1 + 32) + 24)];
        v12 = *(a1 + 32);
        v13 = *(v12 + 64);
        *(v12 + 64) = v11;

        [*(*(a1 + 32) + 64) setDelegate:?];
        [*(a1 + 32) _forwardConfigurationOnIvarQueue];
      }
    }

    objc_autoreleasePoolPop(v2);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (BOOL)_isCurrentDataSimContextOnIvarQueue:(id)a3
{
  result = 0;
  if (a3)
  {
    currentDataSimContext = self->_currentDataSimContext;
    if (currentDataSimContext)
    {
      v6 = a3;
      v7 = [(CTXPCServiceSubscriptionContext *)currentDataSimContext slotID];
      v8 = [v6 slotID];

      return v7 == v8;
    }
  }

  return result;
}

- (void)_processDataConnectionStatus:(id)a3 forContext:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = [v12 pdp];
  if (v7)
  {
    v8 = [v12 pdp];
    v9 = [v8 intValue];
  }

  else
  {
    v9 = -1;
  }

  if (v9 < 0)
  {
    v10 = 0xFFFFFFFFLL;
  }

  else
  {
    v10 = v9;
  }

  v11 = [v12 interfaceName];
  [(PCWWANUsabilityMonitor *)self _adjustInterfaceNameForWWANContextID:v10 interfaceName:v11 forContext:v6];
}

- (void)_processDataStatus:(id)a3 forContext:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 indicator] < 6;
  v9 = [v7 radioTechnology];
  v10 = [v7 dataBearerSoMask];

  ivarQueue = self->_ivarQueue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __56__PCWWANUsabilityMonitor__processDataStatus_forContext___block_invoke;
  v13[3] = &unk_279A1A260;
  v13[4] = self;
  v14 = v6;
  v17 = v8;
  v15 = v9;
  v16 = v10;
  v12 = v6;
  dispatch_async(ivarQueue, v13);
}

uint64_t __56__PCWWANUsabilityMonitor__processDataStatus_forContext___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _isCurrentDataSimContextOnIvarQueue:*(a1 + 40)];
  if (result)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 56);
    if (*(v3 + 41) != v4)
    {
      *(v3 + 41) = v4;
      v5 = *(a1 + 32);
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __56__PCWWANUsabilityMonitor__processDataStatus_forContext___block_invoke_2;
      v8[3] = &unk_279A1A0E0;
      v8[4] = v5;
      result = [v5 _callDelegateOnIvarQueueWithBlock:v8];
      v3 = *(a1 + 32);
    }

    v6 = *(a1 + 48);
    if (*(v3 + 72) != v6)
    {
      *(v3 + 72) = v6;
      v3 = *(a1 + 32);
    }

    v7 = *(a1 + 52);
    if (*(v3 + 76) != v7)
    {
      *(v3 + 76) = v7;
    }
  }

  return result;
}

void __56__PCWWANUsabilityMonitor__processDataStatus_forContext___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 interfaceRadioHotnessChanged:*(a1 + 32)];
  }
}

- (void)connectionStateChanged:(id)a3 connection:(int)a4 dataConnectionStatusInfo:(id)a5
{
  v14 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = +[PCLog usabilityMonitor];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = v8;
    _os_log_impl(&dword_25E3EF000, v10, OS_LOG_TYPE_DEFAULT, "connectionStateChanged - %@", &v12, 0xCu);
  }

  if (!a4)
  {
    [(PCWWANUsabilityMonitor *)self _processDataConnectionStatus:v9 forContext:v8];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)dataStatus:(id)a3 dataStatusInfo:(id)a4
{
  v12 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = +[PCLog usabilityMonitor];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v6;
    _os_log_impl(&dword_25E3EF000, v8, OS_LOG_TYPE_DEFAULT, "dataStatus changed - %@", &v10, 0xCu);
  }

  [(PCWWANUsabilityMonitor *)self _processDataStatus:v7 forContext:v6];
  v9 = *MEMORY[0x277D85DE8];
}

- (void)currentDataSimChanged:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = +[PCLog usabilityMonitor];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = v4;
    _os_log_impl(&dword_25E3EF000, v5, OS_LOG_TYPE_DEFAULT, "currentDataSimChanged - %@", buf, 0xCu);
  }

  ivarQueue = self->_ivarQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __48__PCWWANUsabilityMonitor_currentDataSimChanged___block_invoke;
  v9[3] = &unk_279A19D48;
  v9[4] = self;
  v10 = v4;
  v7 = v4;
  dispatch_async(ivarQueue, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_processCallStatusChanged:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKey:*MEMORY[0x277CC37E0]];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 intValue] - 6 < 0xFFFFFFFE;
  }

  else
  {
    v7 = 0;
  }

  [v4 objectForKey:*MEMORY[0x277CC37C8]];
  v8 = CTCallGetCallSubType();
  v9 = CFEqual(v8, *MEMORY[0x277CC37F0]) == 0;
  ivarQueue = self->_ivarQueue;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __52__PCWWANUsabilityMonitor__processCallStatusChanged___block_invoke;
  v12[3] = &unk_279A1A130;
  v11 = !v9 && v7;
  v13 = v11;
  v12[4] = self;
  dispatch_async(ivarQueue, v12);
}

void __52__PCWWANUsabilityMonitor__processCallStatusChanged___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  if (*(a1 + 40) != *(*(a1 + 32) + 40))
  {
    v2 = +[PCLog usabilityMonitor];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 32);
      v4 = @"NO";
      if (*(a1 + 40))
      {
        v4 = @"YES";
      }

      v6 = 138412546;
      v7 = v3;
      v8 = 2112;
      v9 = v4;
      _os_log_impl(&dword_25E3EF000, v2, OS_LOG_TYPE_DEFAULT, "%@ call status changed. isInCall = %@", &v6, 0x16u);
    }

    *(*(a1 + 32) + 40) = *(a1 + 40);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (unint64_t)interface5GMode
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarQueue = self->_ivarQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __41__PCWWANUsabilityMonitor_interface5GMode__block_invoke;
  v5[3] = &unk_279A1A068;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(ivarQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __41__PCWWANUsabilityMonitor_interface5GMode__block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (*(v2 + 72) == 10)
  {
    v3 = *(v2 + 96);
    v23 = 0;
    v4 = [v3 isSmartDataModeSupported:&v23];
    v5 = v23;
    if (v4 && ([MEMORY[0x277CC3718] descriptorWithSubscriptionContext:*(*(a1 + 32) + 120)], v6 = objc_claimAutoreleasedReturnValue(), v7 = *(*(a1 + 32) + 96), v22 = 0, v8 = objc_msgSend(v7, "smartDataMode:error:", v6, &v22), v6, v8))
    {
      v9 = 1;
      *(*(*(a1 + 40) + 8) + 24) = 1;
    }

    else
    {
      v12 = *(*(a1 + 32) + 76);
      if ((v12 & 8) != 0)
      {
        v9 = 0;
        v13 = *(*(a1 + 40) + 8);
        v14 = 2;
      }

      else
      {
        v13 = *(*(a1 + 40) + 8);
        v9 = 0;
        if ((v12 & 4) != 0)
        {
          v14 = 3;
        }

        else
        {
          v14 = 4;
        }
      }

      *(v13 + 24) = v14;
    }

    v15 = +[PCLog usabilityMonitor];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(a1 + 32);
      v17 = *(*(*(a1 + 40) + 8) + 24);
      v18 = @"NO";
      if (v9)
      {
        v19 = @"YES";
      }

      else
      {
        v19 = @"NO";
      }

      if (v4)
      {
        v18 = @"YES";
      }

      v20 = *(v16 + 76);
      *buf = 138413314;
      v25 = v16;
      v26 = 1024;
      v27 = v17;
      v28 = 2112;
      v29 = v19;
      v30 = 2112;
      v31 = v18;
      v32 = 2048;
      v33 = v20;
      _os_log_impl(&dword_25E3EF000, v15, OS_LOG_TYPE_DEFAULT, "%@ interface5GMode? 5G mode is %d {isSmartDataModeEnabled: %@, isSmartDataModeSupported: %@, currentDataBearerSoMask: %llu}", buf, 0x30u);
    }
  }

  else
  {
    v5 = +[PCLog usabilityMonitor];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      v11 = *(v10 + 72);
      *buf = 138412546;
      v25 = v10;
      v26 = 1024;
      v27 = v11;
      _os_log_impl(&dword_25E3EF000, v5, OS_LOG_TYPE_DEFAULT, "%@ interface5GMode? Current RAT is not 5G %d", buf, 0x12u);
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (NSString)networkCode
{
  v3 = [(PCWWANUsabilityMonitor *)self _currentDataSimContext];
  v4 = [v3 copy];

  if (v4)
  {
    ctClient = self->_ctClient;
    v15 = 0;
    v6 = [(CoreTelephonyClient *)ctClient copyMobileCountryCode:v4 error:&v15];
    v7 = v15;
    v8 = self->_ctClient;
    v14 = 0;
    v9 = [(CoreTelephonyClient *)v8 copyMobileNetworkCode:v4 error:&v14];
    v10 = v14;
    if (v7 | v10)
    {
      v11 = +[PCLog usabilityMonitor];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [PCWWANUsabilityMonitor networkCode];
      }

      v12 = 0;
    }

    else
    {
      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", v6, v9];
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)_currentDataSimContext
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__0;
  v10 = __Block_byref_object_dispose__0;
  v11 = 0;
  ivarQueue = self->_ivarQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __48__PCWWANUsabilityMonitor__currentDataSimContext__block_invoke;
  v5[3] = &unk_279A1A180;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(ivarQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (__CFString)wwanInterfaceName
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__0;
  v11 = __Block_byref_object_dispose__0;
  v12 = 0;
  ivarQueue = self->_ivarQueue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __43__PCWWANUsabilityMonitor_wwanInterfaceName__block_invoke;
  v6[3] = &unk_279A1A180;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(ivarQueue, v6);
  v3 = v8[5];
  if (v3)
  {
    v4 = CFAutorelease(v3);
  }

  else
  {
    v4 = 0;
  }

  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __43__PCWWANUsabilityMonitor_wwanInterfaceName__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 64) currentInterfaceName];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (void)_forwardConfigurationOnIvarQueue
{
  [(PCInterfaceUsabilityMonitor *)self->_interfaceMonitor setTrackUsability:self->_trackUsability];
  [(PCInterfaceUsabilityMonitor *)self->_interfaceMonitor setTrackedTimeInterval:self->_trackedTimeInterval];
  interfaceMonitor = self->_interfaceMonitor;
  thresholdOffTransitionCount = self->_thresholdOffTransitionCount;

  [(PCInterfaceUsabilityMonitor *)interfaceMonitor setThresholdOffTransitionCount:thresholdOffTransitionCount];
}

- (void)setTrackUsability:(BOOL)a3
{
  ivarQueue = self->_ivarQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __44__PCWWANUsabilityMonitor_setTrackUsability___block_invoke;
  v4[3] = &unk_279A1A130;
  v4[4] = self;
  v5 = a3;
  dispatch_async(ivarQueue, v4);
}

uint64_t __44__PCWWANUsabilityMonitor_setTrackUsability___block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(result + 40);
  if (*(v1 + 42) != v2)
  {
    *(v1 + 42) = v2;
    v3 = *(result + 32);
    if (*(v3 + 42) == 1)
    {
      if (!*(v3 + 48))
      {
        *(v3 + 48) = 2;
        v3 = *(result + 32);
      }

      if (*(v3 + 56) == 0.0)
      {
        *(v3 + 56) = 0x4082C00000000000;
        v3 = *(result + 32);
      }
    }

    return [v3 _forwardConfigurationOnIvarQueue];
  }

  return result;
}

- (void)setThresholdOffTransitionCount:(unint64_t)a3
{
  ivarQueue = self->_ivarQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __57__PCWWANUsabilityMonitor_setThresholdOffTransitionCount___block_invoke;
  v4[3] = &unk_279A1A158;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(ivarQueue, v4);
}

uint64_t __57__PCWWANUsabilityMonitor_setThresholdOffTransitionCount___block_invoke(uint64_t result)
{
  v2 = *(result + 32);
  v1 = *(result + 40);
  if (v1 != *(v2 + 48))
  {
    *(v2 + 48) = v1;
    return [*(result + 32) _forwardConfigurationOnIvarQueue];
  }

  return result;
}

- (void)setTrackedTimeInterval:(double)a3
{
  ivarQueue = self->_ivarQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __49__PCWWANUsabilityMonitor_setTrackedTimeInterval___block_invoke;
  v4[3] = &unk_279A1A158;
  *&v4[5] = a3;
  v4[4] = self;
  dispatch_async(ivarQueue, v4);
}

uint64_t __49__PCWWANUsabilityMonitor_setTrackedTimeInterval___block_invoke(uint64_t result)
{
  v1 = *(result + 40);
  v2 = *(result + 32);
  if (v1 != *(v2 + 56))
  {
    *(v2 + 56) = v1;
    return [*(result + 32) _forwardConfigurationOnIvarQueue];
  }

  return result;
}

- (BOOL)isInterfaceHistoricallyUsable
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarQueue = self->_ivarQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __55__PCWWANUsabilityMonitor_isInterfaceHistoricallyUsable__block_invoke;
  v5[3] = &unk_279A1A068;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(ivarQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void *__55__PCWWANUsabilityMonitor_isInterfaceHistoricallyUsable__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 64);
  if (result)
  {
    result = [result isInterfaceHistoricallyUsable];
    if (result)
    {
      v3 = *(*(a1 + 32) + 40) ^ 1;
    }

    else
    {
      v3 = 0;
    }

    *(*(*(a1 + 40) + 8) + 24) = v3 & 1;
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  return result;
}

- (BOOL)isInternetReachable
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarQueue = self->_ivarQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __45__PCWWANUsabilityMonitor_isInternetReachable__block_invoke;
  v5[3] = &unk_279A1A068;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(ivarQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void *__45__PCWWANUsabilityMonitor_isInternetReachable__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 64);
  if (result)
  {
    result = [result isInternetReachable];
    *(*(*(a1 + 40) + 8) + 24) = result;
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  return result;
}

- (BOOL)isPoorLinkQuality
{
  v2 = [(PCWWANUsabilityMonitor *)self linkQuality];

  return [PCInterfaceUsabilityMonitor isPoorLinkQuality:v2];
}

- (BOOL)isRadioHot
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarQueue = self->_ivarQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __36__PCWWANUsabilityMonitor_isRadioHot__block_invoke;
  v5[3] = &unk_279A1A180;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(ivarQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (PCInterfaceUsabilityMonitorDelegate)delegate
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__0;
  v10 = __Block_byref_object_dispose__0;
  v11 = 0;
  ivarQueue = self->_ivarQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __34__PCWWANUsabilityMonitor_delegate__block_invoke;
  v5[3] = &unk_279A1A180;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(ivarQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __34__PCWWANUsabilityMonitor_delegate__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) object];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (void)setDelegate:(id)a3
{
  v4 = a3;
  ivarQueue = self->_ivarQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__PCWWANUsabilityMonitor_setDelegate___block_invoke;
  v7[3] = &unk_279A19D48;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(ivarQueue, v7);
}

void __38__PCWWANUsabilityMonitor_setDelegate___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  *(v2 + 32) = 0;

  if (*(a1 + 40))
  {
    v4 = [MEMORY[0x277CFB990] weakRefWithObject:?];
    v5 = *(a1 + 32);
    v6 = *(v5 + 32);
    *(v5 + 32) = v4;

    MEMORY[0x2821F96F8]();
  }
}

- (void)_callDelegateOnIvarQueueWithBlock:(id)a3
{
  v4 = a3;
  delegateReference = self->_delegateReference;
  if (delegateReference && self->_delegateQueue)
  {
    v6 = delegateReference;
    delegateQueue = self->_delegateQueue;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __60__PCWWANUsabilityMonitor__callDelegateOnIvarQueueWithBlock___block_invoke;
    v9[3] = &unk_279A1A090;
    v10 = v6;
    v11 = v4;
    v8 = v6;
    dispatch_async(delegateQueue, v9);
  }
}

void __60__PCWWANUsabilityMonitor__callDelegateOnIvarQueueWithBlock___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) object];
  if (v3)
  {
    (*(*(a1 + 40) + 16))();
  }

  objc_autoreleasePoolPop(v2);
}

- (void)interfaceLinkQualityChanged:(id)a3 previousLinkQuality:(int)a4
{
  v6 = a3;
  ivarQueue = self->_ivarQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__PCWWANUsabilityMonitor_interfaceLinkQualityChanged_previousLinkQuality___block_invoke;
  block[3] = &unk_279A1A288;
  v10 = v6;
  v11 = self;
  v12 = a4;
  v8 = v6;
  dispatch_async(ivarQueue, block);
}

void *__74__PCWWANUsabilityMonitor_interfaceLinkQualityChanged_previousLinkQuality___block_invoke(uint64_t a1)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (v5 == result[8])
  {
    v8 = v1;
    v9 = v2;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __74__PCWWANUsabilityMonitor_interfaceLinkQualityChanged_previousLinkQuality___block_invoke_2;
    v6[3] = &unk_279A1A108;
    v6[4] = result;
    v7 = *(a1 + 48);
    return [result _callDelegateOnIvarQueueWithBlock:v6];
  }

  return result;
}

void __74__PCWWANUsabilityMonitor_interfaceLinkQualityChanged_previousLinkQuality___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 interfaceLinkQualityChanged:*(a1 + 32) previousLinkQuality:*(a1 + 40)];
  }
}

- (void)interfaceReachabilityChanged:(id)a3
{
  v4 = a3;
  ivarQueue = self->_ivarQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__PCWWANUsabilityMonitor_interfaceReachabilityChanged___block_invoke;
  v7[3] = &unk_279A19D48;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(ivarQueue, v7);
}

void *__55__PCWWANUsabilityMonitor_interfaceReachabilityChanged___block_invoke(uint64_t a1)
{
  v4 = *(a1 + 32);
  result = *(a1 + 40);
  if (v4 == result[8])
  {
    v5[5] = v1;
    v5[6] = v2;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __55__PCWWANUsabilityMonitor_interfaceReachabilityChanged___block_invoke_2;
    v5[3] = &unk_279A1A0E0;
    v5[4] = result;
    return [result _callDelegateOnIvarQueueWithBlock:v5];
  }

  return result;
}

void __55__PCWWANUsabilityMonitor_interfaceReachabilityChanged___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 interfaceReachabilityChanged:*(a1 + 32)];
  }
}

- (void)interfaceConstraintChanged:(id)a3
{
  v4 = a3;
  ivarQueue = self->_ivarQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__PCWWANUsabilityMonitor_interfaceConstraintChanged___block_invoke;
  v7[3] = &unk_279A19D48;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(ivarQueue, v7);
}

void *__53__PCWWANUsabilityMonitor_interfaceConstraintChanged___block_invoke(uint64_t a1)
{
  v4 = *(a1 + 32);
  result = *(a1 + 40);
  if (v4 == result[8])
  {
    v5[5] = v1;
    v5[6] = v2;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __53__PCWWANUsabilityMonitor_interfaceConstraintChanged___block_invoke_2;
    v5[3] = &unk_279A1A0E0;
    v5[4] = result;
    return [result _callDelegateOnIvarQueueWithBlock:v5];
  }

  return result;
}

void __53__PCWWANUsabilityMonitor_interfaceConstraintChanged___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 interfaceConstraintChanged:*(a1 + 32)];
  }
}

- (void)networkCode
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_1(&dword_25E3EF000, v0, v1, "Failed to copy mobile network code. {MCC error: %@; MNC error: %@}");
  v2 = *MEMORY[0x277D85DE8];
}

@end