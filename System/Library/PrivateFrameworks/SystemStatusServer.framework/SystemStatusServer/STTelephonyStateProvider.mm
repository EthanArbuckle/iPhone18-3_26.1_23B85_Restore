@interface STTelephonyStateProvider
- (BOOL)isCellularRadioCapabilityActive;
- (BOOL)isDualSIMEnabled;
- (BOOL)isInactiveSOSEnabled;
- (BOOL)isRadioModuleDead;
- (BOOL)isSIMPresentForSlot:(int64_t)slot;
- (BOOL)isUsingStewieConnection;
- (BOOL)isUsingStewieConnectionOverInternet;
- (BOOL)isUsingStewieForSOS;
- (BOOL)needsUserIdentificationModule;
- (STTelephonyStateProvider)init;
- (STTelephonySubscriptionContext)_newSubscriptionContext;
- (char)_internalQueue_subscriptionContextForSlot:(char *)slot;
- (char)_subscriptionContextForCTContext:(char *)context;
- (id)carrierBundleInfoForSlot:(int64_t)slot;
- (id)debugDescriptionWithMultilinePrefix:(id)prefix;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)mobileEquipmentInfoForSlot:(int64_t)slot;
- (id)subscriptionInfoForSlot:(int64_t)slot;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (uint64_t)_backgroundQueryQueue_shouldSuppressSOSOnlyWithLimitedServiceForCTContext:(void *)context;
- (uint64_t)_internalQueue_isCellularRadioCapabilityActive;
- (uint64_t)_internalQueue_isUsingStewieForSOS;
- (uint64_t)_internalQueue_needsUserIdentificationModule;
- (uint64_t)_purgeSlot1SubscriptionState;
- (uint64_t)_purgeSlot2SubscriptionState;
- (uint64_t)_serverConnection;
- (uint64_t)_setSuppressesCellIndicators:(uint64_t)result;
- (uint64_t)_subscriptionSlotForContext:(uint64_t)context;
- (void)_cancelFakeCellularRegistrationForContext:(void *)context;
- (void)_cancelFakeRegistrationForContext:(void *)context;
- (void)_cancelFakeServiceAndRegistrationForContext:(uint64_t)context;
- (void)_cancelFakeServiceForContext:(void *)context;
- (void)_handleNetworkReselectionNeeded:(void *)needed forCTContext:;
- (void)_hasCTContextForSlot:(void *)result;
- (void)_internalQueue_notifyObserversOfSubscriptionInfoChangeForSlot:(uint64_t)slot;
- (void)_logSubscriptionEvent:(uint64_t)event;
- (void)_logSubscriptionEvent:(void *)event forCTContext:;
- (void)_logSubscriptionEvent:(void *)event forContext:;
- (void)_queryCallForwardingStateForCTContext:(uint64_t)context;
- (void)_reallySetOperatorName:(void *)name inSubscriptionContext:;
- (void)_serverConnectionDidError:(uint64_t)error;
- (void)_setCallForwardingIndicator:(void *)indicator inSubscriptionContext:;
- (void)_setCellRegistrationStatus:(void *)status inSubscriptionContext:;
- (void)_setOperatorName:(void *)name inSubscriptionContext:;
- (void)_setRegistrationStatus:(void *)status inSubscriptionContext:;
- (void)_setSIMStatus:(void *)status inSubscriptionContext:;
- (void)_stopFakeServiceForContext:(_BYTE *)context;
- (void)_stopFakingServiceAndRegistrationForContext:(_BYTE *)context;
- (void)_updateCallForwardingIndicatorForContext:(void *)context;
- (void)_updateDataConnectedSubscriptionContextForCTContext:(uint64_t)context;
- (void)_updateDataConnectionType;
- (void)_updateDataConnectionTypeForContext:(uint64_t)context;
- (void)_updateDualSIMCapabilitySendingNotification:(uint64_t)notification;
- (void)_updateLastKnownNetworkCountryCodeInContext:(void *)context withCTContext:;
- (void)_updateNetworkCountryCode:(void *)code inContext:(void *)context withCTContext:;
- (void)_updateRegistrationNowInSubscriptionContext:(void *)context;
- (void)_updateState;
- (void)addObserver:(id)observer;
- (void)airplaneModeChanged;
- (void)carrierBundleChange:(id)change;
- (void)cellChanged:(id)changed cell:(id)cell;
- (void)currentDataSimChanged:(id)changed;
- (void)dataStatus:(id)status dataStatusInfo:(id)info;
- (void)dealloc;
- (void)displayStatusChanged:(id)changed status:(id)status;
- (void)dualSimCapabilityDidChange;
- (void)invalidate;
- (void)networkSelected:(id)selected success:(BOOL)success mode:(id)mode;
- (void)operatorBundleChange:(id)change;
- (void)operatorNameChanged:(id)changed name:(id)name;
- (void)rejectCauseCodeChanged:(id)changed causeCode:(id)code;
- (void)removeObserver:(id)observer;
- (void)servingNetworkChanged:(id)changed;
- (void)setCachedRadioModuleDead:(uint64_t)dead;
- (void)setStewieState:(uint64_t)state;
- (void)signalStrengthChanged:(id)changed info:(id)info;
- (void)simStatusDidChange:(id)change status:(id)status;
- (void)stateChanged:(id)changed;
- (void)subscriptionInfoDidChange;
- (void)suppServicesEvent:(id)event event:(int)a4 settingsType:(int)type data:(id)data;
@end

@implementation STTelephonyStateProvider

- (STTelephonyStateProvider)init
{
  v41.receiver = self;
  v41.super_class = STTelephonyStateProvider;
  v2 = [(STTelephonyStateProvider *)&v41 init];
  if (v2)
  {
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observers = v2->_observers;
    v2->_observers = weakObjectsHashTable;

    Serial = BSDispatchQueueCreateSerial();
    internalQueue = v2->_internalQueue;
    v2->_internalQueue = Serial;

    v7 = BSDispatchQueueCreateSerial();
    observerQueue = v2->_observerQueue;
    v2->_observerQueue = v7;

    v9 = BSDispatchQueueCreateSerial();
    backgroundQueryQueue = v2->_backgroundQueryQueue;
    v2->_backgroundQueryQueue = v9;

    v2->_containsCellularRadio = MGGetBoolAnswer();
    v2->_hasCellularTelephony = MGGetBoolAnswer();
    v2->_cachedSuppressesCellDataIndicator = -1;
    v2->_cachedSuppressesCellIndicators = -1;
    v2->_cachedNeedsUserIdentificationModule = -1;
    [(STTelephonyStateProvider *)v2 _purgeSlot1SubscriptionState];
    [(STTelephonyStateProvider *)v2 _purgeSlot2SubscriptionState];
    v11 = [objc_alloc(MEMORY[0x277CC37B0]) initWithQueue:v2->_backgroundQueryQueue];
    coreTelephonyClient = v2->_coreTelephonyClient;
    v2->_coreTelephonyClient = v11;

    [(CoreTelephonyClient *)v2->_coreTelephonyClient setDelegate:v2];
    [(STTelephonyStateProvider *)v2 _serverConnection];
    objc_initWeak(&location, v2);
    v13 = *MEMORY[0x277CC39C0];
    v48[1] = MEMORY[0x277D85DD0];
    v48[2] = 3221225472;
    v48[3] = __69__STTelephonyStateProvider__registerForServerConnectionNotifications__block_invoke;
    v48[4] = &unk_279D351C0;
    objc_copyWeak(&v49, &location);
    _CTServerConnectionRegisterBlockForNotification();
    v14 = *MEMORY[0x277CC3B88];
    v47[1] = MEMORY[0x277D85DD0];
    v47[2] = 3221225472;
    v47[3] = __69__STTelephonyStateProvider__registerForServerConnectionNotifications__block_invoke_3;
    v47[4] = &unk_279D351C0;
    objc_copyWeak(v48, &location);
    _CTServerConnectionRegisterBlockForNotification();
    v15 = *MEMORY[0x277CC3C08];
    v46[1] = MEMORY[0x277D85DD0];
    v46[2] = 3221225472;
    v46[3] = __69__STTelephonyStateProvider__registerForServerConnectionNotifications__block_invoke_5;
    v46[4] = &unk_279D351C0;
    objc_copyWeak(v47, &location);
    _CTServerConnectionRegisterBlockForNotification();
    v16 = *MEMORY[0x277CC3B78];
    v42 = MEMORY[0x277D85DD0];
    v43 = 3221225472;
    v44 = __69__STTelephonyStateProvider__registerForServerConnectionNotifications__block_invoke_7;
    v45 = &unk_279D351C0;
    objc_copyWeak(v46, &location);
    _CTServerConnectionRegisterBlockForNotification();
    objc_destroyWeak(v46);
    objc_destroyWeak(v47);
    objc_destroyWeak(v48);
    objc_destroyWeak(&v49);
    objc_destroyWeak(&location);
    v36 = MEMORY[0x277D85DD0];
    v37 = 3221225472;
    v38 = __32__STTelephonyStateProvider_init__block_invoke;
    v39 = &unk_279D34CA8;
    v17 = v2;
    v40 = v17;
    v18 = BSLogAddStateCaptureBlockWithTitle();
    v19 = [objc_alloc(MEMORY[0x277CEC5D0]) initWithQueue:v2->_backgroundQueryQueue];
    v20 = v17[14];
    v17[14] = v19;

    [v17[14] setDelegate:v17];
    v21 = v2->_backgroundQueryQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __32__STTelephonyStateProvider_init__block_invoke_2;
    block[3] = &unk_279D35098;
    v22 = v17;
    v35 = v22;
    dispatch_async(v21, block);
    v23 = v2->_internalQueue;
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __32__STTelephonyStateProvider_init__block_invoke_3;
    v32[3] = &unk_279D35098;
    v24 = v22;
    v33 = v24;
    dispatch_async(v23, v32);
    v25 = [objc_alloc(MEMORY[0x277CC3768]) initWithDelegate:v24 queue:v2->_observerQueue];
    objc_storeStrong(v24 + 16, v25);
    v26 = v2->_observerQueue;
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __32__STTelephonyStateProvider_init__block_invoke_4;
    v29[3] = &unk_279D34B18;
    v30 = v25;
    v31 = v24;
    v27 = v25;
    dispatch_async(v26, v29);
  }

  return v2;
}

- (void)_updateState
{
  if (self)
  {
    v2 = 0;
    v6 = 0;
    if (*(self + 19) != 1)
    {
LABEL_5:
      [(STTelephonyStateProvider *)self setCachedRadioModuleDead:v2];
      [(STTelephonyStateProvider *)self _updateDualSIMCapabilitySendingNotification:?];
      v4 = *(self + 48);
      v5[0] = MEMORY[0x277D85DD0];
      v5[1] = 3221225472;
      v5[2] = __40__STTelephonyStateProvider__updateState__block_invoke;
      v5[3] = &unk_279D35098;
      v5[4] = self;
      dispatch_async(v4, v5);
      return;
    }

    [(STTelephonyStateProvider *)self _serverConnection];
    IsDead = _CTServerConnectionGetRadioModuleIsDead();
    if (!HIDWORD(IsDead))
    {
      v2 = v6 == 1;
      goto LABEL_5;
    }

    [(STTelephonyStateProvider *)self _serverConnectionDidError:?];
  }
}

void __32__STTelephonyStateProvider_init__block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) start];
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) getState];
  [(STTelephonyStateProvider *)v2 setStewieState:v3];
}

- (void)setStewieState:(uint64_t)state
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (state && *(state + 136) != v4)
  {
    objc_storeStrong((state + 136), a2);
    displayStewieInStatusBar = [v4 displayStewieInStatusBar];
    displayInactiveSOSInStatusBar = [v4 displayInactiveSOSInStatusBar];
    isStewieActiveOverBB = [v4 isStewieActiveOverBB];
    isStewieActiveOverInternet = [v4 isStewieActiveOverInternet];
    v8 = STSystemStatusLogTelephonyState();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [MEMORY[0x277CCABB0] numberWithBool:displayStewieInStatusBar];
      v10 = [MEMORY[0x277CCABB0] numberWithBool:displayInactiveSOSInStatusBar];
      v11 = [MEMORY[0x277CCABB0] numberWithBool:isStewieActiveOverBB];
      v12 = [MEMORY[0x277CCABB0] numberWithBool:isStewieActiveOverInternet];
      *buf = 138544386;
      *&buf[4] = v9;
      *&buf[12] = 2114;
      *&buf[14] = v10;
      *&buf[22] = 2114;
      v26 = v11;
      *v27 = 2114;
      *&v27[2] = v12;
      *&v27[10] = 2114;
      *&v27[12] = v4;
      _os_log_impl(&dword_26C4AD000, v8, OS_LOG_TYPE_DEFAULT, "[STTelephonyStateProvider] Stewie state changed, displayStewieInStatusBar: %{public}@, displayInactiveSOSInStatusBar: %{public}@, usingStewieConnection: %{public}@, usingStewieConnectionOverInternet: %{public}@, %{public}@", buf, 0x34u);
    }

    if (displayStewieInStatusBar)
    {
      [(STTelephonyStateProvider *)state _stopFakingServiceAndRegistrationForContext:?];
      [(STTelephonyStateProvider *)state _stopFakingServiceAndRegistrationForContext:?];
    }

    v13 = *(state + 24);
    v14 = [v13 copy];
    setRepresentation = [v14 setRepresentation];

    v16 = *(state + 40);
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __119__STTelephonyStateProvider__internalQueue_notifyObserversOfStewieStateChangedToUsingStewieForSOS_isInactiveSOSEnabled___block_invoke;
    v26 = &unk_279D35288;
    *v27 = setRepresentation;
    *&v27[8] = state;
    v27[16] = displayStewieInStatusBar;
    v27[17] = displayInactiveSOSInStatusBar;
    v17 = setRepresentation;
    dispatch_async(v16, buf);

    v18 = *(state + 24);
    v19 = [v18 copy];
    setRepresentation2 = [v19 setRepresentation];

    v21 = *(state + 40);
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __175__STTelephonyStateProvider__internalQueue_notifyObserversOfStewieStateChangedToUsingStewieForSOS_isInactiveSOSEnabled_usingStewieConnection_usingStewieConnectionOverInternet___block_invoke;
    v26 = &unk_279D352B0;
    *v27 = setRepresentation2;
    *&v27[8] = state;
    v27[16] = displayStewieInStatusBar;
    v27[17] = displayInactiveSOSInStatusBar;
    v27[18] = isStewieActiveOverBB;
    v27[19] = isStewieActiveOverInternet;
    v22 = setRepresentation2;
    dispatch_async(v21, buf);
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  [(STTelephonyStateProvider *)self invalidate];
  v3.receiver = self;
  v3.super_class = STTelephonyStateProvider;
  [(STTelephonyStateProvider *)&v3 dealloc];
}

- (BOOL)isDualSIMEnabled
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  if (self)
  {
    internalQueue = self->_internalQueue;
  }

  else
  {
    internalQueue = 0;
  }

  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __44__STTelephonyStateProvider_isDualSIMEnabled__block_invoke;
  v5[3] = &unk_279D34CD0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(internalQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __44__STTelephonyStateProvider_isDualSIMEnabled__block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    LOBYTE(v1) = *(v1 + 17);
  }

  *(*(*(result + 40) + 8) + 24) = v1 & 1;
  return result;
}

- (BOOL)isRadioModuleDead
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  if (self)
  {
    internalQueue = self->_internalQueue;
  }

  else
  {
    internalQueue = 0;
  }

  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __45__STTelephonyStateProvider_isRadioModuleDead__block_invoke;
  v5[3] = &unk_279D34CD0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(internalQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __45__STTelephonyStateProvider_isRadioModuleDead__block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    LOBYTE(v1) = *(v1 + 18);
  }

  *(*(*(result + 40) + 8) + 24) = v1 & 1;
  return result;
}

- (BOOL)isUsingStewieForSOS
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  if (self)
  {
    internalQueue = self->_internalQueue;
  }

  else
  {
    internalQueue = 0;
  }

  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __47__STTelephonyStateProvider_isUsingStewieForSOS__block_invoke;
  v5[3] = &unk_279D34CD0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(internalQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __47__STTelephonyStateProvider_isUsingStewieForSOS__block_invoke(uint64_t a1)
{
  result = [(STTelephonyStateProvider *)*(a1 + 32) _internalQueue_isUsingStewieForSOS];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (uint64_t)_internalQueue_isUsingStewieForSOS
{
  if (result)
  {
    v1 = result;
    dispatch_assert_queue_V2(*(result + 32));
    v2 = *(v1 + 136);

    return [v2 displayStewieInStatusBar];
  }

  return result;
}

- (BOOL)isInactiveSOSEnabled
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  if (self)
  {
    internalQueue = self->_internalQueue;
  }

  else
  {
    internalQueue = 0;
  }

  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __48__STTelephonyStateProvider_isInactiveSOSEnabled__block_invoke;
  v5[3] = &unk_279D35178;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(internalQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __48__STTelephonyStateProvider_isInactiveSOSEnabled__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = v2[17];
  }

  v3 = v2;
  *(*(*(a1 + 40) + 8) + 24) = [v3 displayInactiveSOSInStatusBar];
}

- (BOOL)isUsingStewieConnection
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  if (self)
  {
    internalQueue = self->_internalQueue;
  }

  else
  {
    internalQueue = 0;
  }

  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __51__STTelephonyStateProvider_isUsingStewieConnection__block_invoke;
  v5[3] = &unk_279D35178;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(internalQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __51__STTelephonyStateProvider_isUsingStewieConnection__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = v2[17];
  }

  v3 = v2;
  *(*(*(a1 + 40) + 8) + 24) = [v3 isStewieActiveOverBB];
}

- (BOOL)isUsingStewieConnectionOverInternet
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  if (self)
  {
    internalQueue = self->_internalQueue;
  }

  else
  {
    internalQueue = 0;
  }

  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __63__STTelephonyStateProvider_isUsingStewieConnectionOverInternet__block_invoke;
  v5[3] = &unk_279D35178;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(internalQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __63__STTelephonyStateProvider_isUsingStewieConnectionOverInternet__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = v2[17];
  }

  v3 = v2;
  *(*(*(a1 + 40) + 8) + 24) = [v3 isStewieActiveOverInternet];
}

- (BOOL)isCellularRadioCapabilityActive
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  if (self)
  {
    internalQueue = self->_internalQueue;
  }

  else
  {
    internalQueue = 0;
  }

  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __59__STTelephonyStateProvider_isCellularRadioCapabilityActive__block_invoke;
  v5[3] = &unk_279D34CD0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(internalQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __59__STTelephonyStateProvider_isCellularRadioCapabilityActive__block_invoke(uint64_t a1)
{
  result = [(STTelephonyStateProvider *)*(a1 + 32) _internalQueue_isCellularRadioCapabilityActive];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (uint64_t)_internalQueue_isCellularRadioCapabilityActive
{
  v12 = *MEMORY[0x277D85DE8];
  if (result)
  {
    v1 = result;
    if (*(result + 19) == 1)
    {
      v2 = *(result + 96);
      if ((v2 & 0x8000000000000000) == 0)
      {
LABEL_18:
        result = v2 != 1;
        goto LABEL_19;
      }

      if ([(STTelephonyStateProvider *)result _serverConnection])
      {
        v3 = _CTServerConnectionHideDataIndicator();
        if (!HIDWORD(v3))
        {
          v4 = STSystemStatusLogTelephonyState();
          if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
          {
            v5 = STTelephonyCachedBooleanDebugName(1);
            *buf = 138543362;
            v11 = v5;
            _os_log_impl(&dword_26C4AD000, v4, OS_LOG_TYPE_DEFAULT, "STTelephonyStateProvider-isCellularRadioCapabilityActive - queried for suppressesCellIndicators with new state=%{public}@", buf, 0xCu);
          }

          if (*(v1 + 96) == -1)
          {
            *(v1 + 96) = 1;
          }

          else
          {
            [(STTelephonyStateProvider *)v1 _setSuppressesCellIndicators:?];
          }

          goto LABEL_17;
        }

        [(STTelephonyStateProvider *)v1 _serverConnectionDidError:v3];
        *(v1 + 96) = -2;
        v6 = STSystemStatusLogTelephonyState();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v7 = STTelephonyCachedBooleanDebugName(*(v1 + 96));
          *buf = 138543362;
          v11 = v7;
          v8 = "STTelephonyStateProvider-isCellularRadioCapabilityActive - queried for suppressesCellIndicators with new state=%{public}@";
          goto LABEL_15;
        }
      }

      else
      {
        *(v1 + 96) = -2;
        v6 = STSystemStatusLogTelephonyState();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v7 = STTelephonyCachedBooleanDebugName(*(v1 + 96));
          *buf = 138543362;
          v11 = v7;
          v8 = "STTelephonyStateProvider-isCellularRadioCapabilityActive - queried for _suppressesCellIndicators with new state=%{public}@";
LABEL_15:
          _os_log_impl(&dword_26C4AD000, v6, OS_LOG_TYPE_DEFAULT, v8, buf, 0xCu);
        }
      }

LABEL_17:
      v2 = *(v1 + 96);
      goto LABEL_18;
    }

    result = 0;
  }

LABEL_19:
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)needsUserIdentificationModule
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  if (self)
  {
    internalQueue = self->_internalQueue;
  }

  else
  {
    internalQueue = 0;
  }

  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __57__STTelephonyStateProvider_needsUserIdentificationModule__block_invoke;
  v5[3] = &unk_279D34CD0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(internalQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __57__STTelephonyStateProvider_needsUserIdentificationModule__block_invoke(uint64_t a1)
{
  result = [(STTelephonyStateProvider *)*(a1 + 32) _internalQueue_needsUserIdentificationModule];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (uint64_t)_internalQueue_needsUserIdentificationModule
{
  v8 = *MEMORY[0x277D85DE8];
  if (result)
  {
    v1 = result;
    if ((*(result + 104) & 0x8000000000000000) != 0 && [(STTelephonyStateProvider *)result _serverConnection])
    {
      IsUserIdentityModuleRequired = _CTServerConnectionIsUserIdentityModuleRequired();
      if (HIDWORD(IsUserIdentityModuleRequired))
      {
        [(STTelephonyStateProvider *)v1 _serverConnectionDidError:?];
      }

      else
      {
        *(v1 + 104) = 0;
        v4 = STSystemStatusLogTelephonyState();
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          v5 = STTelephonyCachedBooleanDebugName(*(v1 + 104));
          *buf = 138543362;
          v7 = v5;
          _os_log_impl(&dword_26C4AD000, v4, OS_LOG_TYPE_DEFAULT, "STelephonyStateProvider updated _needsUserIdentificationModule to %{public}@", buf, 0xCu);
        }
      }
    }

    result = *(v1 + 104) == 1;
  }

  v2 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  if (self)
  {
    internalQueue = self->_internalQueue;
  }

  else
  {
    internalQueue = 0;
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __40__STTelephonyStateProvider_addObserver___block_invoke;
  v7[3] = &unk_279D34B18;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_async(internalQueue, v7);
}

uint64_t __40__STTelephonyStateProvider_addObserver___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v1 = v1[3];
  }

  return [v1 addObject:*(a1 + 40)];
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  if (self)
  {
    internalQueue = self->_internalQueue;
  }

  else
  {
    internalQueue = 0;
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__STTelephonyStateProvider_removeObserver___block_invoke;
  v7[3] = &unk_279D34B18;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_sync(internalQueue, v7);
}

uint64_t __43__STTelephonyStateProvider_removeObserver___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v1 = v1[3];
  }

  return [v1 removeObject:*(a1 + 40)];
}

- (id)subscriptionInfoForSlot:(int64_t)slot
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__1;
  v11 = __Block_byref_object_dispose__1;
  v12 = 0;
  if (self)
  {
    internalQueue = self->_internalQueue;
  }

  else
  {
    internalQueue = 0;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__STTelephonyStateProvider_subscriptionInfoForSlot___block_invoke;
  block[3] = &unk_279D34CF8;
  block[4] = self;
  block[5] = &v7;
  block[6] = slot;
  dispatch_sync(internalQueue, block);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __52__STTelephonyStateProvider_subscriptionInfoForSlot___block_invoke(uint64_t a1)
{
  v6 = [(STTelephonyStateProvider *)*(a1 + 32) _internalQueue_subscriptionContextForSlot:?];
  v2 = [v6 subscriptionInfo];
  v3 = [v2 copy];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (char)_internalQueue_subscriptionContextForSlot:(char *)slot
{
  if (!slot)
  {
LABEL_7:

    return slot;
  }

  if (a2 == 1)
  {
    v3 = 64;
    goto LABEL_6;
  }

  if (a2 == 2)
  {
    v3 = 72;
LABEL_6:
    slot = *&slot[v3];
    goto LABEL_7;
  }

  slot = 0;

  return slot;
}

- (id)carrierBundleInfoForSlot:(int64_t)slot
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__1;
  v11 = __Block_byref_object_dispose__1;
  v12 = 0;
  if (self)
  {
    internalQueue = self->_internalQueue;
  }

  else
  {
    internalQueue = 0;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__STTelephonyStateProvider_carrierBundleInfoForSlot___block_invoke;
  block[3] = &unk_279D34CF8;
  block[4] = self;
  block[5] = &v7;
  block[6] = slot;
  dispatch_sync(internalQueue, block);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __53__STTelephonyStateProvider_carrierBundleInfoForSlot___block_invoke(uint64_t a1)
{
  v6 = [(STTelephonyStateProvider *)*(a1 + 32) _internalQueue_subscriptionContextForSlot:?];
  v2 = [v6 carrierBundleInfo];
  v3 = [v2 copy];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)mobileEquipmentInfoForSlot:(int64_t)slot
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__1;
  v11 = __Block_byref_object_dispose__1;
  v12 = 0;
  if (self)
  {
    internalQueue = self->_internalQueue;
  }

  else
  {
    internalQueue = 0;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__STTelephonyStateProvider_mobileEquipmentInfoForSlot___block_invoke;
  block[3] = &unk_279D34CF8;
  block[4] = self;
  block[5] = &v7;
  block[6] = slot;
  dispatch_sync(internalQueue, block);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __55__STTelephonyStateProvider_mobileEquipmentInfoForSlot___block_invoke(uint64_t a1)
{
  v6 = [(STTelephonyStateProvider *)*(a1 + 32) _internalQueue_subscriptionContextForSlot:?];
  v2 = [v6 mobileEquipmentInfo];
  v3 = [v2 copy];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (BOOL)isSIMPresentForSlot:(int64_t)slot
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  if (self)
  {
    internalQueue = self->_internalQueue;
  }

  else
  {
    internalQueue = 0;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__STTelephonyStateProvider_isSIMPresentForSlot___block_invoke;
  block[3] = &unk_279D34CF8;
  block[4] = self;
  block[5] = &v7;
  block[6] = slot;
  dispatch_sync(internalQueue, block);
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

void *__48__STTelephonyStateProvider_isSIMPresentForSlot___block_invoke(uint64_t a1)
{
  result = [(STTelephonyStateProvider *)*(a1 + 32) _hasCTContextForSlot:?];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)_hasCTContextForSlot:(void *)result
{
  if (result)
  {
    result = result[10];
    if (result)
    {
      v2[0] = MEMORY[0x277D85DD0];
      v2[1] = 3221225472;
      v2[2] = __STTelephonyArrayContainsCTContextForSlot_block_invoke;
      v2[3] = &__block_descriptor_40_e48_B32__0__CTXPCServiceSubscriptionContext_8Q16_B24l;
      v2[4] = a2;
      return ([result indexOfObjectPassingTest:v2] != 0x7FFFFFFFFFFFFFFFLL);
    }
  }

  return result;
}

- (void)invalidate
{
  if (self)
  {
    internalQueue = self->_internalQueue;
  }

  else
  {
    internalQueue = 0;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__STTelephonyStateProvider_invalidate__block_invoke;
  block[3] = &unk_279D35098;
  block[4] = self;
  dispatch_sync(internalQueue, block);
}

void __38__STTelephonyStateProvider_invalidate__block_invoke(uint64_t a1)
{
  if (*(*(a1 + 32) + 8))
  {
    _CTServerConnectionUnregisterForAllNotifications();
    CFRelease(*(*(a1 + 32) + 8));
    *(*(a1 + 32) + 8) = 0;
  }
}

- (uint64_t)_serverConnection
{
  result = *(self + 8);
  if (!result)
  {
    v3 = *MEMORY[0x277CBECE8];
    v4 = *(self + 48);
    result = _CTServerConnectionCreateOnTargetQueue();
    *(self + 8) = result;
    if (!result)
    {
      v5 = STSystemStatusLogTelephonyState();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *v6 = 0;
        _os_log_error_impl(&dword_26C4AD000, v5, OS_LOG_TYPE_ERROR, "Unable to create CTServerConnection. Telephony state may be incorrect.", v6, 2u);
      }

      return *(self + 8);
    }
  }

  return result;
}

void __69__STTelephonyStateProvider__registerForServerConnectionNotifications__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained[4];
  }

  else
  {
    v2 = 0;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__STTelephonyStateProvider__registerForServerConnectionNotifications__block_invoke_2;
  block[3] = &unk_279D35098;
  v5 = WeakRetained;
  v3 = WeakRetained;
  dispatch_async(v2, block);
}

void __69__STTelephonyStateProvider__registerForServerConnectionNotifications__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    [(STTelephonyStateProvider *)v1 _updateState];
  }
}

void __69__STTelephonyStateProvider__registerForServerConnectionNotifications__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained[4];
  }

  else
  {
    v2 = 0;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__STTelephonyStateProvider__registerForServerConnectionNotifications__block_invoke_4;
  block[3] = &unk_279D35098;
  v5 = WeakRetained;
  v3 = WeakRetained;
  dispatch_async(v2, block);
}

- (void)setCachedRadioModuleDead:(uint64_t)dead
{
  if (dead)
  {
    v2 = a2;
    if (*(dead + 18) != a2)
    {
      v4 = MEMORY[0x277CCACA8];
      v5 = NSStringFromBOOL();
      v6 = [v4 stringWithFormat:@"Setting radio module dead: %@", v5];
      [(STTelephonyStateProvider *)dead _logSubscriptionEvent:v6];

      *(dead + 18) = v2;

      [(STTelephonyStateProvider *)dead _internalQueue_notifyObserversOfSubscriptionInfoChangeForSlot:?];
    }
  }
}

void __69__STTelephonyStateProvider__registerForServerConnectionNotifications__block_invoke_5(uint64_t a1, void *a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = a2;
  if (WeakRetained)
  {
    v5 = WeakRetained[4];
  }

  else
  {
    v5 = 0;
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __69__STTelephonyStateProvider__registerForServerConnectionNotifications__block_invoke_6;
  v8[3] = &unk_279D34B18;
  v9 = WeakRetained;
  v10 = v4;
  v6 = v4;
  v7 = WeakRetained;
  dispatch_async(v5, v8);
}

void __69__STTelephonyStateProvider__registerForServerConnectionNotifications__block_invoke_6(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v1)
  {
    v3 = STSystemStatusLogTelephonyState();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = NSStringFromSelector(sel__hideDataIndicatorChanged_);
      v10 = 138412546;
      v11 = v4;
      v12 = 2114;
      v13 = v2;
      _os_log_impl(&dword_26C4AD000, v3, OS_LOG_TYPE_DEFAULT, "%@ received status info -> %{public}@", &v10, 0x16u);
    }

    if (v2)
    {
      v5 = [v2 objectForKey:*MEMORY[0x277CC3E90]];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = [v5 BOOLValue];
      }

      else
      {
        v6 = -1;
      }

      v8 = [v2 objectForKey:*MEMORY[0x277CC3C40]];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = [v8 BOOLValue];
      }

      else
      {
        v7 = -1;
      }
    }

    else
    {
      v7 = -1;
      v6 = -1;
    }

    if (*(v1 + 88) != v6)
    {
      *(v1 + 88) = v6;
      [(STTelephonyStateProvider *)v1 _updateDataConnectionType];
    }

    [(STTelephonyStateProvider *)v1 _setSuppressesCellIndicators:v7];
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __69__STTelephonyStateProvider__registerForServerConnectionNotifications__block_invoke_7(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained[4];
  }

  else
  {
    v2 = 0;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__STTelephonyStateProvider__registerForServerConnectionNotifications__block_invoke_8;
  block[3] = &unk_279D35098;
  v5 = WeakRetained;
  v3 = WeakRetained;
  dispatch_async(v2, block);
}

void __69__STTelephonyStateProvider__registerForServerConnectionNotifications__block_invoke_8(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    if (*(v1 + 104) != -1)
    {
      *(v1 + 104) = -1;
      v2 = STSystemStatusLogTelephonyState();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        *v3 = 0;
        _os_log_impl(&dword_26C4AD000, v2, OS_LOG_TYPE_DEFAULT, "STTelephonyStateProvider resetting _needsUserIdentificationModule (for postponement change)", v3, 2u);
      }
    }

    [(STTelephonyStateProvider *)v1 _internalQueue_notifyObserversOfSubscriptionInfoChangeForSlot:?];
  }
}

- (void)_serverConnectionDidError:(uint64_t)error
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = STSystemStatusLogTelephonyState();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    callStackReturnAddresses = [MEMORY[0x277CCACC8] callStackReturnAddresses];
    *buf = 67109634;
    v10 = a2;
    v11 = 1024;
    v12 = HIDWORD(a2);
    v13 = 2114;
    v14 = callStackReturnAddresses;
    _os_log_error_impl(&dword_26C4AD000, v4, OS_LOG_TYPE_ERROR, "CTServerConnection returned error: (%i, %i). Destroying connection. (Callstack: %{public}@)", buf, 0x18u);
  }

  v5 = *(error + 32);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__STTelephonyStateProvider__serverConnectionDidError___block_invoke;
  block[3] = &unk_279D35098;
  block[4] = error;
  dispatch_async(v5, block);
  v6 = *MEMORY[0x277D85DE8];
}

void __54__STTelephonyStateProvider__serverConnectionDidError___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = v2[15];
    if (v3)
    {
      *v3 = 1;
      v4 = *(a1 + 32);
      if (v4)
      {
        *(v4 + 120) = 0;
        v2 = *(a1 + 32);
      }

      else
      {
        v2 = 0;
      }
    }
  }

  objc_initWeak(&location, v2);
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v5 = dispatch_time(0, 1000000000);
  v6 = *(a1 + 32);
  if (v6)
  {
    v6 = v6[4];
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__STTelephonyStateProvider__serverConnectionDidError___block_invoke_2;
  block[3] = &unk_279D351E8;
  block[4] = &v11;
  v7 = v6;
  objc_copyWeak(&v10, &location);
  dispatch_after(v5, v7, block);

  v8 = *(a1 + 32);
  if (v8)
  {
    *(v8 + 120) = v12 + 3;
  }

  objc_destroyWeak(&v10);
  _Block_object_dispose(&v11, 8);
  objc_destroyWeak(&location);
}

void __54__STTelephonyStateProvider__serverConnectionDidError___block_invoke_2(uint64_t a1)
{
  if ((*(*(*(a1 + 32) + 8) + 24) & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    if (WeakRetained)
    {
      WeakRetained[15] = 0;
      v3 = WeakRetained;
      [STTelephonyStateProvider _updateState];
      WeakRetained = v3;
    }
  }
}

- (void)_setCallForwardingIndicator:(void *)indicator inSubscriptionContext:
{
  indicatorCopy = indicator;
  if (self)
  {
    v11 = indicatorCopy;
    subscriptionInfo = [indicatorCopy subscriptionInfo];
    if ([subscriptionInfo callForwardingIndicator] != a2)
    {
      [subscriptionInfo setCallForwardingIndicator:a2];
      v7 = MEMORY[0x277CCACA8];
      v8 = STTelephonyCallForwardingIndicatorDebugName(a2);
      v9 = [v7 stringWithFormat:@"updated callForwardingIndicator to %@", v8];
      [(STTelephonyStateProvider *)self _logSubscriptionEvent:v9 forContext:v11];

      v10 = [(STTelephonyStateProvider *)self _subscriptionSlotForContext:v11];
      [(STTelephonyStateProvider *)self _internalQueue_notifyObserversOfSubscriptionInfoChangeForSlot:v10];
    }

    indicatorCopy = v11;
  }
}

- (void)_stopFakeServiceForContext:(_BYTE *)context
{
  v3 = a2;
  if (context)
  {
    v5 = v3;
    [STTelephonyStateProvider _cancelFakeServiceForContext:v3];
    cachedCTOperatorName = [v5 cachedCTOperatorName];
    if ([cachedCTOperatorName length])
    {
      [(STTelephonyStateProvider *)context _setOperatorName:cachedCTOperatorName inSubscriptionContext:v5];
    }

    else
    {
      [(STTelephonyStateProvider *)context _reallySetOperatorName:v5 inSubscriptionContext:?];
    }

    v3 = v5;
  }
}

- (void)_setRegistrationStatus:(void *)status inSubscriptionContext:
{
  statusCopy = status;
  subscriptionInfo = [statusCopy subscriptionInfo];
  registrationStatus = [subscriptionInfo registrationStatus];
  if (registrationStatus != a2)
  {
    v7 = registrationStatus;
    [subscriptionInfo setRegistrationStatus:a2];
    if (a2 != 1)
    {
      [statusCopy setPretendingToSearch:0];
    }

    v8 = MEMORY[0x277CCACA8];
    v9 = STTelephonyRegistrationStatusDebugName(v7);
    v10 = STTelephonyRegistrationStatusDebugName(a2);
    v11 = [v8 stringWithFormat:@"registration status changed from %@ to %@", v9, v10];
    [(STTelephonyStateProvider *)self _logSubscriptionEvent:v11 forContext:statusCopy];

    if (a2 == 2)
    {
      [(STTelephonyStateProvider *)self _updateCallForwardingIndicatorForContext:statusCopy];
    }

    else
    {
      [(STTelephonyStateProvider *)self _setCallForwardingIndicator:statusCopy inSubscriptionContext:?];
    }
  }

  [STTelephonyStateProvider _cancelFakeRegistrationForContext:statusCopy];
  v12 = [(STTelephonyStateProvider *)self _subscriptionSlotForContext:statusCopy];
  [(STTelephonyStateProvider *)self _internalQueue_notifyObserversOfSubscriptionInfoChangeForSlot:v12];
}

void __51__STTelephonyStateProvider__airplaneModeDidChange___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isPretendingToSearch])
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [(STTelephonyStateProvider *)WeakRetained _updateRegistrationNowInSubscriptionContext:?];
  }
}

- (void)_updateRegistrationNowInSubscriptionContext:(void *)context
{
  if (context)
  {
    v5 = a2;
    cachedCTRegistrationDisplayStatus = [v5 cachedCTRegistrationDisplayStatus];
    v4 = STTelephonyRegistrationStatusForStatus(cachedCTRegistrationDisplayStatus);
    [(STTelephonyStateProvider *)context _setRegistrationStatus:v4 inSubscriptionContext:v5];

    [v5 setPretendingToSearch:0];
  }
}

- (void)_updateCallForwardingIndicatorForContext:(void *)context
{
  v3 = a2;
  subscriptionInfo = [v3 subscriptionInfo];
  sIMStatus = [subscriptionInfo SIMStatus];
  if ([sIMStatus isEqualToString:*MEMORY[0x277CC3ED8]])
  {
    _internalQueue_needsUserIdentificationModule = [(STTelephonyStateProvider *)context _internalQueue_needsUserIdentificationModule];

    if (_internalQueue_needsUserIdentificationModule)
    {
      contextCopy2 = context;
      v8 = 2;
LABEL_9:
      [(STTelephonyStateProvider *)contextCopy2 _setCallForwardingIndicator:v8 inSubscriptionContext:v3];
      goto LABEL_10;
    }
  }

  else
  {
  }

  if ([subscriptionInfo registrationStatus] != 2 || !objc_msgSend(context, "hasCellularTelephony"))
  {
    contextCopy2 = context;
    v8 = 0;
    goto LABEL_9;
  }

  v9 = context[7];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __69__STTelephonyStateProvider__updateCallForwardingIndicatorForContext___block_invoke;
  v10[3] = &unk_279D35500;
  v10[4] = context;
  v11 = v3;
  [v9 getSubscriptionInfo:v10];

LABEL_10:
}

void __51__STTelephonyStateProvider__airplaneModeDidChange___block_invoke_2(uint64_t a1)
{
  if ([*(a1 + 32) isPretendingToSearch])
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [(STTelephonyStateProvider *)WeakRetained _updateRegistrationNowInSubscriptionContext:?];
  }
}

- (void)_updateDataConnectionTypeForContext:(uint64_t)context
{
  v28 = *MEMORY[0x277D85DE8];
  v24 = a2;
  v3 = *(context + 20);
  isCellularRadioCapability = [(STTelephonyStateProvider *)context _internalQueue_isCellularRadioCapabilityActive];
  v5 = *(context + 88);
  if (v5 < 0)
  {
    [(STTelephonyStateProvider *)context _serverConnection];
    v6 = _CTServerConnectionHideRatIndicator();
    if (HIDWORD(v6))
    {
      [(STTelephonyStateProvider *)context _serverConnectionDidError:v6];
      *(context + 88) = -2;
      v10 = STSystemStatusLogTelephonyState();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = STTelephonyCachedBooleanDebugName(*(context + 88));
        *buf = 138543362;
        v27 = v11;
        _os_log_impl(&dword_26C4AD000, v10, OS_LOG_TYPE_DEFAULT, "STTelephonyStateProvider - queried for _suppressesCellDataIndicator with new state=%{public}@", buf, 0xCu);
      }
    }

    else
    {
      v7 = STSystemStatusLogTelephonyState();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = STTelephonyCachedBooleanDebugName(0);
        *buf = 138543362;
        v27 = v8;
        _os_log_impl(&dword_26C4AD000, v7, OS_LOG_TYPE_DEFAULT, "STTelephonyStateProvider - queried for _suppressesCellDataIndicator with new state=%{public}@", buf, 0xCu);
      }

      v9 = *(context + 88);
      if (v9 == -1)
      {
        *(context + 88) = 0;
      }

      else if (v9)
      {
        *(context + 88) = 0;
        [(STTelephonyStateProvider *)context _updateDataConnectionType];
      }
    }

    v5 = *(context + 88);
  }

  v12 = 0;
  v13 = isCellularRadioCapability ^ 1;
  if ((v3 & 1) == 0)
  {
    v14 = v24;
    if ((v13 & 1) != 0 || v5 == 1)
    {
      goto LABEL_26;
    }

    modemDataConnectionType = [v24 modemDataConnectionType];
    v16 = modemDataConnectionType;
    if ((modemDataConnectionType - 7) <= 3)
    {
      carrierBundleInfo = [v24 carrierBundleInfo];
      lTEConnectionShows4G = [carrierBundleInfo LTEConnectionShows4G];

      if (lTEConnectionShows4G)
      {
        v16 = 6;
      }

      goto LABEL_21;
    }

    if (modemDataConnectionType)
    {
LABEL_21:
      v19 = [v24 isSatelliteSystem] == 0;
      v14 = v24;
      if (v19)
      {
        v12 = v16;
      }

      else
      {
        v12 = 15;
      }

      goto LABEL_26;
    }

    v12 = 0;
  }

  v14 = v24;
LABEL_26:
  if (v5 == 1)
  {
    v20 = 1;
  }

  else
  {
    v20 = v13;
  }

  subscriptionInfo = [v14 subscriptionInfo];
  [subscriptionInfo setBootstrap:v20];
  [subscriptionInfo setDataConnectionType:v12];
  [(STTelephonyStateProvider *)context _logSubscriptionEvent:v25 forContext:?];
  v22 = [(STTelephonyStateProvider *)context _subscriptionSlotForContext:v25];
  [(STTelephonyStateProvider *)context _internalQueue_notifyObserversOfSubscriptionInfoChangeForSlot:v22];

  v23 = *MEMORY[0x277D85DE8];
}

- (void)_updateDualSIMCapabilitySendingNotification:(uint64_t)notification
{
  if (notification)
  {
    v4 = *(notification + 56);
    v5 = *(notification + 48);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __72__STTelephonyStateProvider__updateDualSIMCapabilitySendingNotification___block_invoke;
    block[3] = &unk_279D35440;
    v8 = v4;
    notificationCopy = notification;
    v10 = a2;
    v6 = v4;
    dispatch_async(v5, block);
  }
}

- (STTelephonySubscriptionContext)_newSubscriptionContext
{
  v0 = objc_alloc_init(STTelephonySubscriptionContext);
  v1 = objc_alloc_init(STMutableTelephonySubscriptionInfo);
  [(STTelephonySubscriptionContext *)v0 setSubscriptionInfo:v1];
  v2 = objc_alloc_init(STMutableTelephonyCarrierBundleInfo);
  [(STTelephonySubscriptionContext *)v0 setCarrierBundleInfo:v2];
  v3 = objc_alloc_init(STMutableTelephonyMobileEquipmentInfo);
  [(STTelephonySubscriptionContext *)v0 setMobileEquipmentInfo:v3];

  return v0;
}

- (uint64_t)_purgeSlot1SubscriptionState
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 64);
    if (v2)
    {
      [(STTelephonyStateProvider *)result _cancelFakeServiceAndRegistrationForContext:v2];
    }

    _newSubscriptionContext = [STTelephonyStateProvider _newSubscriptionContext];
    v4 = *(v1 + 64);
    *(v1 + 64) = _newSubscriptionContext;

    return MEMORY[0x2821F96F8]();
  }

  return result;
}

- (uint64_t)_purgeSlot2SubscriptionState
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 72);
    if (v2)
    {
      [(STTelephonyStateProvider *)result _cancelFakeServiceAndRegistrationForContext:v2];
    }

    _newSubscriptionContext = [STTelephonyStateProvider _newSubscriptionContext];
    v4 = *(v1 + 72);
    *(v1 + 72) = _newSubscriptionContext;

    return MEMORY[0x2821F96F8]();
  }

  return result;
}

- (void)_cancelFakeServiceAndRegistrationForContext:(uint64_t)context
{
  if (context)
  {
    v2 = a2;
    [STTelephonyStateProvider _cancelFakeServiceForContext:v2];
    [STTelephonyStateProvider _cancelFakeRegistrationForContext:v2];
    [STTelephonyStateProvider _cancelFakeCellularRegistrationForContext:v2];
  }
}

- (void)_cancelFakeServiceForContext:(void *)context
{
  contextCopy = context;
  fakeServiceCanceled = [contextCopy fakeServiceCanceled];
  if (fakeServiceCanceled)
  {
    *fakeServiceCanceled = 1;
    [contextCopy setFakeServiceCanceled:0];
  }
}

- (void)_cancelFakeRegistrationForContext:(void *)context
{
  contextCopy = context;
  fakeRegistrationCanceled = [contextCopy fakeRegistrationCanceled];
  if (fakeRegistrationCanceled)
  {
    *fakeRegistrationCanceled = 1;
    [contextCopy setFakeRegistrationCanceled:0];
  }
}

- (void)_cancelFakeCellularRegistrationForContext:(void *)context
{
  contextCopy = context;
  fakeCellularRegistrationCanceled = [contextCopy fakeCellularRegistrationCanceled];
  if (fakeCellularRegistrationCanceled)
  {
    *fakeCellularRegistrationCanceled = 1;
    [contextCopy setFakeCellularRegistrationCanceled:0];
  }
}

- (void)_updateLastKnownNetworkCountryCodeInContext:(void *)context withCTContext:
{
  v5 = a2;
  contextCopy = context;
  if (self)
  {
    v7 = STSystemStatusLogTelephonyState();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26C4AD000, v7, OS_LOG_TYPE_DEFAULT, "STTelephonyStateProvider: requesting copyMobileCountryCode", buf, 2u);
    }

    v8 = *(self + 56);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __86__STTelephonyStateProvider__updateLastKnownNetworkCountryCodeInContext_withCTContext___block_invoke;
    v9[3] = &unk_279D35238;
    v9[4] = self;
    v10 = v5;
    v11 = contextCopy;
    [v8 copyMobileCountryCode:v11 completion:v9];
  }
}

void __86__STTelephonyStateProvider__updateLastKnownNetworkCountryCodeInContext_withCTContext___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5 && !v6 && (TUISOCountryCodeForMCC(), (v8 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v9 = v8;
    [(STTelephonyStateProvider *)*(a1 + 32) _updateNetworkCountryCode:v8 inContext:*(a1 + 40) withCTContext:*(a1 + 48)];
  }

  else
  {
    v10 = STSystemStatusLogTelephonyState();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26C4AD000, v10, OS_LOG_TYPE_DEFAULT, "STTelephonyStateProvider: falling back to copyLastKnownMobileCountryCode", buf, 2u);
    }

    v11 = *(a1 + 32);
    if (v11)
    {
      v12 = *(v11 + 56);
    }

    else
    {
      v12 = 0;
    }

    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __86__STTelephonyStateProvider__updateLastKnownNetworkCountryCodeInContext_withCTContext___block_invoke_48;
    v14[3] = &unk_279D35238;
    v14[4] = v11;
    v13 = *(a1 + 48);
    v15 = *(a1 + 40);
    v16 = *(a1 + 48);
    [v12 copyLastKnownMobileCountryCode:v13 completion:v14];
  }
}

- (void)_updateNetworkCountryCode:(void *)code inContext:(void *)context withCTContext:
{
  v7 = a2;
  codeCopy = code;
  contextCopy = context;
  v10 = contextCopy;
  if (self)
  {
    v11 = *(self + 32);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __78__STTelephonyStateProvider__updateNetworkCountryCode_inContext_withCTContext___block_invoke;
    v12[3] = &unk_279D35260;
    v12[4] = self;
    v13 = contextCopy;
    v14 = codeCopy;
    v15 = v7;
    dispatch_async(v11, v12);
  }
}

void __86__STTelephonyStateProvider__updateLastKnownNetworkCountryCodeInContext_withCTContext___block_invoke_48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 && !a3)
  {
    v4 = TUISOCountryCodeForMCC();
    [(STTelephonyStateProvider *)*(a1 + 32) _updateNetworkCountryCode:v4 inContext:*(a1 + 40) withCTContext:*(a1 + 48)];
  }
}

void __78__STTelephonyStateProvider__updateNetworkCountryCode_inContext_withCTContext___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [(STTelephonyStateProvider *)*(a1 + 32) _subscriptionContextForCTContext:?];
  v3 = *(a1 + 48);

  if (v2 == v3)
  {
    v4 = [*(a1 + 48) subscriptionInfo];
    [v4 setLastKnownNetworkCountryCode:*(a1 + 56)];

    v5 = STSystemStatusLogTelephonyState();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 56);
      v8 = 138543362;
      v9 = v6;
      _os_log_impl(&dword_26C4AD000, v5, OS_LOG_TYPE_DEFAULT, "STTelephonyStateProvider: got last known network country code: %{public}@", &v8, 0xCu);
    }

    -[STTelephonyStateProvider _internalQueue_notifyObserversOfSubscriptionInfoChangeForSlot:](*(a1 + 32), [*(a1 + 40) slotID]);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (char)_subscriptionContextForCTContext:(char *)context
{
  v3 = a2;
  v4 = v3;
  if (context)
  {
    slotID = [v3 slotID];
    if (slotID == 1)
    {
      v6 = 64;
      goto LABEL_6;
    }

    if (slotID == 2)
    {
      v6 = 72;
LABEL_6:
      context = *&context[v6];
      goto LABEL_8;
    }

    context = 0;
  }

LABEL_8:

  return context;
}

- (void)_internalQueue_notifyObserversOfSubscriptionInfoChangeForSlot:(uint64_t)slot
{
  if (slot)
  {
    v4 = *(slot + 24);
    v5 = [v4 copy];
    setRepresentation = [v5 setRepresentation];

    v7 = *(slot + 40);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __90__STTelephonyStateProvider__internalQueue_notifyObserversOfSubscriptionInfoChangeForSlot___block_invoke;
    block[3] = &unk_279D34D48;
    v10 = setRepresentation;
    slotCopy = slot;
    v12 = a2;
    v8 = setRepresentation;
    dispatch_async(v7, block);
  }
}

- (void)_logSubscriptionEvent:(uint64_t)event
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (event)
  {
    v4 = STSystemStatusLogTelephonyState();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138543618;
      v7 = v3;
      v8 = 2114;
      eventCopy = event;
      _os_log_impl(&dword_26C4AD000, v4, OS_LOG_TYPE_DEFAULT, "[STTelephonyStateProvider]: %{public}@ -- manager: %{public}@", &v6, 0x16u);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)_updateDataConnectionType
{
  [(STTelephonyStateProvider *)self _updateDataConnectionTypeForContext:?];
  v2 = *(self + 72);

  [(STTelephonyStateProvider *)self _updateDataConnectionTypeForContext:v2];
}

- (uint64_t)_setSuppressesCellIndicators:(uint64_t)result
{
  if (*(result + 96) != a2)
  {
    v3 = result;
    *(result + 96) = a2;
    [(STTelephonyStateProvider *)result _internalQueue_notifyObserversOfSubscriptionInfoChangeForSlot:?];

    return [(STTelephonyStateProvider *)v3 _updateDataConnectionType];
  }

  return result;
}

void __90__STTelephonyStateProvider__internalQueue_notifyObserversOfSubscriptionInfoChangeForSlot___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 subscriptionInfoDidChangeForStateProvider:*(a1 + 40) slot:{*(a1 + 48), v9}];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __91__STTelephonyStateProvider__internalQueue_notifyObserversOfCarrierBundleInfoChangeForSlot___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 carrierBundleInfoDidChangeForStateProvider:*(a1 + 40) slot:{*(a1 + 48), v9}];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __119__STTelephonyStateProvider__internalQueue_notifyObserversOfStewieStateChangedToUsingStewieForSOS_isInactiveSOSEnabled___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 stewieStateDidChangeForStateProvider:*(a1 + 40) usingStewieForSOS:*(a1 + 48) isInactiveSOSEnabled:{*(a1 + 49), v9}];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __175__STTelephonyStateProvider__internalQueue_notifyObserversOfStewieStateChangedToUsingStewieForSOS_isInactiveSOSEnabled_usingStewieConnection_usingStewieConnectionOverInternet___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 stewieStateDidChangeForStateProvider:*(a1 + 40) usingStewieForSOS:*(a1 + 48) isInactiveSOSEnabled:*(a1 + 49) usingStewieConnection:*(a1 + 50) usingStewieConnectionOverInternet:{*(a1 + 51), v9}];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_logSubscriptionEvent:(void *)event forCTContext:
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (self)
  {
    slotID = [event slotID];
    v7 = @"Unknown Slot";
    if (slotID == 2)
    {
      v7 = @"Slot 2";
    }

    if (slotID == 1)
    {
      v7 = @"Slot 1";
    }

    v8 = v7;
    v9 = STSystemStatusLogTelephonyState();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138543874;
      v12 = v8;
      v13 = 2114;
      v14 = v5;
      v15 = 2114;
      selfCopy = self;
      _os_log_impl(&dword_26C4AD000, v9, OS_LOG_TYPE_DEFAULT, "[STTelephonyStateProvider %{public}@]: %{public}@ -- manager: %{public}@", &v11, 0x20u);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_logSubscriptionEvent:(void *)event forContext:
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [(STTelephonyStateProvider *)self _subscriptionSlotForContext:event];
  v7 = @"Unknown Slot";
  if (v6 == 2)
  {
    v7 = @"Slot 2";
  }

  if (v6 == 1)
  {
    v7 = @"Slot 1";
  }

  v8 = v7;
  v9 = STSystemStatusLogTelephonyState();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138543874;
    v12 = v8;
    v13 = 2114;
    v14 = v5;
    v15 = 2114;
    selfCopy = self;
    _os_log_impl(&dword_26C4AD000, v9, OS_LOG_TYPE_DEFAULT, "[STTelephonyStateProvider %{public}@]: %{public}@ -- manager: %{public}@", &v11, 0x20u);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (uint64_t)_subscriptionSlotForContext:(uint64_t)context
{
  v3 = a2;
  if (context)
  {
    if (*(context + 64) == v3)
    {
      context = 1;
    }

    else
    {
      context = 2 * (*(context + 72) == v3);
    }
  }

  return context;
}

- (void)subscriptionInfoDidChange
{
  if (self)
  {
    internalQueue = self->_internalQueue;
  }

  else
  {
    internalQueue = 0;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__STTelephonyStateProvider_subscriptionInfoDidChange__block_invoke;
  block[3] = &unk_279D35098;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

uint64_t __53__STTelephonyStateProvider_subscriptionInfoDidChange__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = *(v1 + 56);
  }

  else
  {
    v2 = 0;
  }

  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __53__STTelephonyStateProvider_subscriptionInfoDidChange__block_invoke_2;
  v4[3] = &unk_279D35328;
  v4[4] = v1;
  return [v2 getSubscriptionInfo:v4];
}

void __53__STTelephonyStateProvider_subscriptionInfoDidChange__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  if (a3)
  {
    if (v6)
    {
      v7 = v6[4];
    }

    else
    {
      v7 = 0;
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __53__STTelephonyStateProvider_subscriptionInfoDidChange__block_invoke_2_76;
    block[3] = &unk_279D35098;
    block[4] = v6;
    dispatch_async(v7, block);
  }

  else
  {
    if (v6)
    {
      v6 = v6[7];
    }

    v8 = v6;
    v9 = [v8 getCurrentDataSubscriptionContextSync:0];

    v10 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    v11 = [v5 subscriptions];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __53__STTelephonyStateProvider_subscriptionInfoDidChange__block_invoke_3;
    v22[3] = &unk_279D352D8;
    v22[4] = *(a1 + 32);
    v12 = v10;
    v23 = v12;
    [v11 enumerateObjectsUsingBlock:v22];

    v13 = *(a1 + 32);
    if (v13)
    {
      v14 = *(v13 + 32);
    }

    else
    {
      v14 = 0;
    }

    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __53__STTelephonyStateProvider_subscriptionInfoDidChange__block_invoke_4;
    v18[3] = &unk_279D35260;
    v18[4] = v13;
    v19 = v5;
    v20 = v12;
    v21 = v9;
    v15 = v9;
    v16 = v12;
    dispatch_async(v14, v18);
  }
}

void __53__STTelephonyStateProvider_subscriptionInfoDidChange__block_invoke_3(uint64_t a1, void *a2)
{
  v35 = a2;
  if ([v35 slotID])
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = v35;
      v5 = [STTelephonyStateProvider _newSubscriptionContext];
      v6 = [(STTelephonySubscriptionContext *)v5 subscriptionInfo];
      v7 = v4;
      v8 = *(v3 + 56);
      v38 = 0;
      v9 = v8;
      v10 = [v9 getSIMStatus:v7 error:&v38];
      v11 = v38;

      if (v11)
      {
        v12 = *(v3 + 32);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __72__STTelephonyStateProvider__backgroundQueryQueue_SIMStatusForCTContext___block_invoke;
        block[3] = &unk_279D34B18;
        block[4] = v3;
        v37 = v7;
        dispatch_async(v12, block);

        v13 = 0;
      }

      else
      {
        v13 = v10;
      }

      [v6 setSIMStatus:v13];
      v14 = v7;
      v15 = objc_alloc_init(STMutableTelephonyMobileEquipmentInfo);
      v16 = *(v3 + 56);
      block[0] = 0;
      v17 = v16;
      v18 = [v17 getMobileEquipmentInfoFor:v14 error:block];

      v19 = block[0];
      if (!v19)
      {
        v20 = [v18 MEID];
        [(STMutableTelephonyMobileEquipmentInfo *)v15 setMEID:v20];

        v21 = [v18 IMEI];
        [(STMutableTelephonyMobileEquipmentInfo *)v15 setIMEI:v21];

        v22 = [v18 ICCID];
        [(STMutableTelephonyMobileEquipmentInfo *)v15 setICCID:v22];

        v23 = [v18 CSN];
        [(STMutableTelephonyMobileEquipmentInfo *)v15 setCSN:v23];

        v24 = [v18 baseId];
        [(STMutableTelephonyMobileEquipmentInfo *)v15 setBootstrapICCID:v24];
      }

      [(STTelephonySubscriptionContext *)v5 setMobileEquipmentInfo:v15];
      v25 = [(STTelephonySubscriptionContext *)v5 carrierBundleInfo];
      [v25 setSuppressSOSOnlyWithLimitedService:{-[STTelephonyStateProvider _backgroundQueryQueue_shouldSuppressSOSOnlyWithLimitedServiceForCTContext:](*(v3 + 56), v14)}];

      v26 = *(v3 + 56);
      block[0] = 0;
      v27 = v26;
      v28 = [v27 getShortLabel:v14 error:block];
      v29 = block[0];

      v30 = 0;
      if (!v29)
      {
        v30 = v28;
      }

      [v6 setShortSIMLabel:v30];
      v31 = [v14 userDataPreferred];
      [v6 setPreferredForDataConnections:{objc_msgSend(v31, "BOOLValue")}];

      v32 = [v14 uuid];
      v33 = [v32 UUIDString];
      [v6 setIdentifier:v33];

      v34 = [v14 isSimHidden];
      [v6 setHiddenSIM:v34];
    }

    else
    {
      v5 = 0;
    }

    [*(a1 + 40) setObject:v5 forKey:v35];
  }
}

void __53__STTelephonyStateProvider_subscriptionInfoDidChange__block_invoke_4(uint64_t a1)
{
  v65 = *MEMORY[0x277D85DE8];
  [(STTelephonyStateProvider *)*(a1 + 32) _logSubscriptionEvent:?];
  v2 = [*(a1 + 40) subscriptionsInUse];
  v48 = [v2 mutableCopy];

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v3 = *(a1 + 48);
  v4 = [v3 countByEnumeratingWithState:&v54 objects:v59 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v55;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v55 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v54 + 1) + 8 * i);
        v9 = [v8 slotID];
        if (v48)
        {
          *&buf = MEMORY[0x277D85DD0];
          *(&buf + 1) = 3221225472;
          v61 = __STTelephonyArrayContainsCTContextForSlot_block_invoke;
          v62 = &__block_descriptor_40_e48_B32__0__CTXPCServiceSubscriptionContext_8Q16_B24l;
          v63 = v9;
          if ([v48 indexOfObjectPassingTest:&buf] != 0x7FFFFFFFFFFFFFFFLL)
          {
            continue;
          }
        }

        v10 = [v8 labelID];

        if (v10)
        {
          [v48 addObject:v8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v54 objects:v59 count:16];
    }

    while (v5);
  }

  v11 = [(STTelephonyStateProvider *)*(a1 + 32) _hasCTContextForSlot:?];
  v12 = [(STTelephonyStateProvider *)*(a1 + 32) _hasCTContextForSlot:?];
  v13 = *(a1 + 32);
  v15 = [v48 copy];
  if (v13)
  {
    objc_setProperty_nonatomic_copy(v13, v14, v15, 80);
  }

  v16 = [(STTelephonyStateProvider *)*(a1 + 32) _hasCTContextForSlot:?];
  v17 = [(STTelephonyStateProvider *)*(a1 + 32) _hasCTContextForSlot:?];
  v18 = *(a1 + 32);
  if (!v11 || (v16 & 1) != 0)
  {
    if (v18)
    {
      v19 = *(v18 + 64);
    }

    else
    {
      v19 = 0;
    }

    [(STTelephonyStateProvider *)v18 _cancelFakeServiceAndRegistrationForContext:v19];
  }

  else
  {
    [(STTelephonyStateProvider *)v18 _purgeSlot1SubscriptionState];
  }

  v20 = *(a1 + 32);
  if (v17 & 1 | ((v12 & 1) == 0))
  {
    if (v20)
    {
      v21 = *(v20 + 72);
    }

    else
    {
      v21 = 0;
    }

    [(STTelephonyStateProvider *)v20 _cancelFakeServiceAndRegistrationForContext:v21];
  }

  else
  {
    [(STTelephonyStateProvider *)v20 _purgeSlot2SubscriptionState];
  }

  v22 = STSystemStatusLogTelephonyState();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v48;
    _os_log_impl(&dword_26C4AD000, v22, OS_LOG_TYPE_DEFAULT, "STTelephonyStateProvider: cached new SIM subscriptions: %{public}@", &buf, 0xCu);
  }

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  obj = *(a1 + 48);
  v23 = [obj countByEnumeratingWithState:&v50 objects:v58 count:16];
  if (v23)
  {
    v24 = v23;
    v47 = *v51;
    do
    {
      v25 = 0;
      do
      {
        if (*v51 != v47)
        {
          objc_enumerationMutation(obj);
        }

        v26 = *(*(&v50 + 1) + 8 * v25);
        v27 = [*(a1 + 48) objectForKey:v26];
        v28 = [(STTelephonyStateProvider *)*(a1 + 32) _subscriptionContextForCTContext:v26];
        v29 = v28;
        v30 = *(a1 + 32);
        if (v30)
        {
          v31 = v28;
          v32 = v27;
          v33 = [v32 mobileEquipmentInfo];
          [v31 setMobileEquipmentInfo:v33];

          v34 = [v32 carrierBundleInfo];
          [v31 setCarrierBundleInfo:v34];

          v35 = [v32 subscriptionInfo];

          v36 = [v35 SIMStatus];
          [(STTelephonyStateProvider *)v30 _setSIMStatus:v36 inSubscriptionContext:v31];

          v37 = [v31 subscriptionInfo];

          v38 = [v35 shortSIMLabel];
          [v37 setShortSIMLabel:v38];

          [v37 setPreferredForDataConnections:{objc_msgSend(v35, "isPreferredForDataConnections")}];
          v39 = [v35 identifier];
          [v37 setIdentifier:v39];

          [v37 setHiddenSIM:{objc_msgSend(v35, "isHiddenSIM")}];
          v40 = *(a1 + 32);
          v41 = v26;
          if (v40)
          {
            v42 = *(v40 + 56);
            *&buf = MEMORY[0x277D85DD0];
            *(&buf + 1) = 3221225472;
            v61 = __65__STTelephonyStateProvider__queryRegistrationStatusForCTContext___block_invoke;
            v62 = &unk_279D35418;
            v63 = v40;
            v64 = v41;
            [v42 copyRegistrationDisplayStatus:v64 completion:&buf];
          }
        }

        else
        {
          v43 = v26;
        }

        ++v25;
      }

      while (v24 != v25);
      v44 = [obj countByEnumeratingWithState:&v50 objects:v58 count:16];
      v24 = v44;
    }

    while (v44);
  }

  [(STTelephonyStateProvider *)*(a1 + 32) _updateDataConnectedSubscriptionContextForCTContext:?];
  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = __53__STTelephonyStateProvider_subscriptionInfoDidChange__block_invoke_72;
  v49[3] = &unk_279D35300;
  v49[4] = *(a1 + 32);
  [v48 enumerateObjectsUsingBlock:v49];
  [(STTelephonyStateProvider *)*(a1 + 32) _logSubscriptionEvent:?];

  v45 = *MEMORY[0x277D85DE8];
}

- (void)_updateDataConnectedSubscriptionContextForCTContext:(uint64_t)context
{
  v3 = a2;
  if (context)
  {
    v17 = v3;
    if (v3)
    {
      slotID = [v3 slotID];
      if (slotID)
      {
        v5 = slotID;
        if ([(STTelephonyStateProvider *)context _hasCTContextForSlot:slotID])
        {
          if (v5 == 2)
          {
            v14 = *(context + 64);
            v15 = *(context + 72);
            subscriptionInfo5 = v14;
            subscriptionInfo = [subscriptionInfo5 subscriptionInfo];
            [subscriptionInfo setProvidingDataConnection:0];

            subscriptionInfo2 = [v15 subscriptionInfo];

            v11 = subscriptionInfo2;
            v12 = 1;
            goto LABEL_14;
          }

          if (v5 == 1)
          {
            v6 = *(context + 64);
            v7 = *(context + 72);
            subscriptionInfo5 = v6;
            subscriptionInfo3 = [subscriptionInfo5 subscriptionInfo];
            [subscriptionInfo3 setProvidingDataConnection:1];

            subscriptionInfo2 = [v7 subscriptionInfo];

            v11 = subscriptionInfo2;
            v12 = 0;
LABEL_14:
            [v11 setProvidingDataConnection:v12];

            goto LABEL_9;
          }
        }
      }
    }

    subscriptionInfo4 = [*(context + 64) subscriptionInfo];
    [subscriptionInfo4 setProvidingDataConnection:0];

    subscriptionInfo5 = [*(context + 72) subscriptionInfo];
    [subscriptionInfo5 setProvidingDataConnection:0];
LABEL_9:

    [(STTelephonyStateProvider *)context _internalQueue_notifyObserversOfSubscriptionInfoChangeForSlot:?];
    v3 = v17;
  }
}

void __53__STTelephonyStateProvider_subscriptionInfoDidChange__block_invoke_72(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v18 = [(STTelephonyStateProvider *)v3 _subscriptionContextForCTContext:v4];
  v5 = [v18 subscriptionInfo];
  v6 = [v4 label];
  [v5 setSIMLabel:v6];

  v7 = *(a1 + 32);
  v8 = v4;
  v9 = v8;
  if (v7)
  {
    v10 = *(v7 + 56);
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __64__STTelephonyStateProvider__querySubscriptionStateForCTContext___block_invoke;
    v29[3] = &unk_279D35350;
    v29[4] = v7;
    v11 = v8;
    v30 = v11;
    v12 = v10;
    [v12 getSignalStrengthInfo:v11 completion:v29];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __64__STTelephonyStateProvider__querySubscriptionStateForCTContext___block_invoke_2;
    v27[3] = &unk_279D35378;
    v27[4] = v7;
    v13 = v11;
    v28 = v13;
    [v12 copyOperatorName:v13 completion:v27];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __64__STTelephonyStateProvider__querySubscriptionStateForCTContext___block_invoke_3;
    v25[3] = &unk_279D353A0;
    v25[4] = v7;
    v14 = v13;
    v26 = v14;
    [v12 getDataStatus:v14 completion:v25];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __64__STTelephonyStateProvider__querySubscriptionStateForCTContext___block_invoke_4;
    v23[3] = &unk_279D353C8;
    v23[4] = v7;
    v15 = v14;
    v24 = v15;
    [v12 isNetworkReselectionNeeded:v15 completion:v23];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __64__STTelephonyStateProvider__querySubscriptionStateForCTContext___block_invoke_5;
    v21[3] = &unk_279D353F0;
    v21[4] = v7;
    v16 = v15;
    v22 = v16;
    [v12 copyRejectCauseCode:v16 completion:v21];
    [(STTelephonyStateProvider *)v7 _queryCallForwardingStateForCTContext:v16];
    v17 = *(v7 + 48);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __64__STTelephonyStateProvider__querySubscriptionStateForCTContext___block_invoke_6;
    block[3] = &unk_279D34B18;
    block[4] = v7;
    v20 = v16;
    dispatch_async(v17, block);
  }
}

- (uint64_t)_backgroundQueryQueue_shouldSuppressSOSOnlyWithLimitedServiceForCTContext:(void *)context
{
  contextCopy = context;
  v4 = MEMORY[0x277CC3620];
  v5 = a2;
  v6 = [[v4 alloc] initWithBundleType:6];
  v10 = 0;
  v7 = [contextCopy copyCarrierBundleValueWithDefault:v5 key:@"SuppressSOSOnlyWithLimitedService" bundleType:v6 error:&v10];

  if (v10 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    bOOLValue = 0;
  }

  else
  {
    bOOLValue = [v7 BOOLValue];
  }

  return bOOLValue;
}

- (void)_setSIMStatus:(void *)status inSubscriptionContext:
{
  v11 = a2;
  if (self)
  {
    statusCopy = status;
    subscriptionInfo = [statusCopy subscriptionInfo];
    sIMStatus = [subscriptionInfo SIMStatus];
    if ([sIMStatus isEqualToString:v11])
    {
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"SIM status not changing (%@) - firing notification anyway", sIMStatus];
      [(STTelephonyStateProvider *)self _logSubscriptionEvent:v8 forContext:statusCopy];
    }

    else
    {
      [subscriptionInfo setSIMStatus:v11];
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"SIM status changed from %@ to %@", sIMStatus, v11];
      [(STTelephonyStateProvider *)self _logSubscriptionEvent:v9 forContext:statusCopy];

      [(STTelephonyStateProvider *)self _updateCallForwardingIndicatorForContext:statusCopy];
    }

    v10 = [(STTelephonyStateProvider *)self _subscriptionSlotForContext:statusCopy];

    [(STTelephonyStateProvider *)self _internalQueue_notifyObserversOfSubscriptionInfoChangeForSlot:v10];
  }
}

uint64_t __64__STTelephonyStateProvider__querySubscriptionStateForCTContext___block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return [*(result + 32) signalStrengthChanged:*(result + 40) info:a2];
  }

  return result;
}

uint64_t __64__STTelephonyStateProvider__querySubscriptionStateForCTContext___block_invoke_2(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return [*(result + 32) operatorNameChanged:*(result + 40) name:a2];
  }

  return result;
}

uint64_t __64__STTelephonyStateProvider__querySubscriptionStateForCTContext___block_invoke_3(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return [*(result + 32) dataStatus:*(result + 40) dataStatusInfo:a2];
  }

  return result;
}

void __64__STTelephonyStateProvider__querySubscriptionStateForCTContext___block_invoke_4(uint64_t a1, char a2, uint64_t a3)
{
  if (!a3)
  {
    [(STTelephonyStateProvider *)*(a1 + 32) _handleNetworkReselectionNeeded:a2 forCTContext:*(a1 + 40)];
  }
}

- (void)_handleNetworkReselectionNeeded:(void *)needed forCTContext:
{
  neededCopy = needed;
  v6 = neededCopy;
  if (self)
  {
    v7 = *(self + 32);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __73__STTelephonyStateProvider__handleNetworkReselectionNeeded_forCTContext___block_invoke;
    block[3] = &unk_279D35440;
    block[4] = self;
    v9 = neededCopy;
    v10 = a2;
    dispatch_async(v7, block);
  }
}

uint64_t __64__STTelephonyStateProvider__querySubscriptionStateForCTContext___block_invoke_5(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return [*(result + 32) rejectCauseCodeChanged:*(result + 40) causeCode:a2];
  }

  return result;
}

- (void)_queryCallForwardingStateForCTContext:(uint64_t)context
{
  v3 = a2;
  v4 = v3;
  if (context)
  {
    v5 = *(context + 56);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __66__STTelephonyStateProvider__queryCallForwardingStateForCTContext___block_invoke;
    v6[3] = &unk_279D353C8;
    v6[4] = context;
    v7 = v3;
    [v5 isUnconditionalCallForwardingActive:v7 completion:v6];
  }
}

uint64_t __65__STTelephonyStateProvider__queryRegistrationStatusForCTContext___block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return [*(result + 32) displayStatusChanged:*(result + 40) status:a2];
  }

  return result;
}

void __66__STTelephonyStateProvider__queryCallForwardingStateForCTContext___block_invoke(uint64_t a1, char a2, uint64_t a3)
{
  if (!a3)
  {
    v11 = v3;
    v12 = v4;
    v6 = *(a1 + 32);
    if (v6)
    {
      v7 = *(v6 + 32);
    }

    else
    {
      v7 = 0;
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __66__STTelephonyStateProvider__queryCallForwardingStateForCTContext___block_invoke_2;
    block[3] = &unk_279D35440;
    block[4] = v6;
    v9 = *(a1 + 40);
    v10 = a2;
    dispatch_async(v7, block);
  }
}

void __66__STTelephonyStateProvider__queryCallForwardingStateForCTContext___block_invoke_2(uint64_t a1)
{
  v2 = [(STTelephonyStateProvider *)*(a1 + 32) _subscriptionContextForCTContext:?];
  v6 = v2;
  if (v2)
  {
    if (*(a1 + 48))
    {
      v3 = 1;
    }

    else
    {
      v3 = 2;
    }

    [(STTelephonyStateProvider *)*(a1 + 32) _setCallForwardingIndicator:v3 inSubscriptionContext:v2];
  }

  else
  {
    v4 = *(a1 + 32);
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s -- did not have matching context", "-[STTelephonyStateProvider _queryCallForwardingStateForCTContext:]_block_invoke_2"];
    [(STTelephonyStateProvider *)v4 _logSubscriptionEvent:v5 forCTContext:*(a1 + 40)];
  }
}

- (void)dualSimCapabilityDidChange
{
  if (self)
  {
    internalQueue = self->_internalQueue;
  }

  else
  {
    internalQueue = 0;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__STTelephonyStateProvider_dualSimCapabilityDidChange__block_invoke;
  block[3] = &unk_279D35098;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

void __72__STTelephonyStateProvider__updateDualSIMCapabilitySendingNotification___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v12 = 0;
  v3 = [v2 getDualSimCapability:&v12];
  v4 = v12;
  v5 = *(a1 + 40);
  if (v5)
  {
    v6 = *(v5 + 32);
  }

  else
  {
    v6 = 0;
  }

  if (v4)
  {
    v7 = 0;
  }

  else
  {
    v7 = v3 == 2;
  }

  v8 = v7;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__STTelephonyStateProvider__updateDualSIMCapabilitySendingNotification___block_invoke_2;
  block[3] = &unk_279D35468;
  block[4] = v5;
  v10 = v8;
  v11 = *(a1 + 48);
  dispatch_async(v6, block);
}

void __72__STTelephonyStateProvider__updateDualSIMCapabilitySendingNotification___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = MEMORY[0x277CCACA8];
  v4 = *(a1 + 40);
  v5 = NSStringFromBOOL();
  v6 = [v3 stringWithFormat:@"Setting dual SIM enabled: %@", v5];
  [(STTelephonyStateProvider *)v2 _logSubscriptionEvent:v6];

  v7 = *(a1 + 32);
  if (v7)
  {
    *(v7 + 17) = *(a1 + 40);
  }

  if (*(a1 + 41) == 1)
  {
    v8 = *(a1 + 32);

    [(STTelephonyStateProvider *)v8 _internalQueue_notifyObserversOfSubscriptionInfoChangeForSlot:?];
  }
}

- (void)signalStrengthChanged:(id)changed info:(id)info
{
  changedCopy = changed;
  infoCopy = info;
  if (self)
  {
    internalQueue = self->_internalQueue;
  }

  else
  {
    internalQueue = 0;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__STTelephonyStateProvider_signalStrengthChanged_info___block_invoke;
  block[3] = &unk_279D34E60;
  block[4] = self;
  v12 = changedCopy;
  v13 = infoCopy;
  v9 = infoCopy;
  v10 = changedCopy;
  dispatch_async(internalQueue, block);
}

void __55__STTelephonyStateProvider_signalStrengthChanged_info___block_invoke(uint64_t a1)
{
  v2 = [(STTelephonyStateProvider *)*(a1 + 32) _subscriptionContextForCTContext:?];
  v3 = *(a1 + 32);
  v15 = v2;
  if (v2)
  {
    [(STTelephonyStateProvider *)v3 _updateLastKnownNetworkCountryCodeInContext:v2 withCTContext:*(a1 + 40)];
    v4 = [*(a1 + 48) displayBars];
    v5 = [v4 unsignedIntegerValue];

    v6 = [*(a1 + 48) maxDisplayBars];
    v7 = [v6 unsignedIntegerValue];

    v8 = *(a1 + 32);
    v9 = v15;
    v10 = v9;
    if (v8)
    {
      v11 = [v9 subscriptionInfo];
      v12 = [v11 signalStrengthBars];
      if (v12 != v5 || [v11 maxSignalStrengthBars] != v7)
      {
        [v11 setSignalStrengthBars:v5];
        [v11 setMaxSignalStrengthBars:v7];
        v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"updated signal strength from %lu to %lu", v12, v5];
        [(STTelephonyStateProvider *)v8 _logSubscriptionEvent:v13 forContext:v10];

        v14 = [(STTelephonyStateProvider *)v8 _subscriptionSlotForContext:v10];
        [(STTelephonyStateProvider *)v8 _internalQueue_notifyObserversOfSubscriptionInfoChangeForSlot:v14];
      }
    }
  }

  else
  {
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s -- did not have matching context", "-[STTelephonyStateProvider signalStrengthChanged:info:]_block_invoke"];
    [(STTelephonyStateProvider *)v3 _logSubscriptionEvent:v10 forCTContext:*(a1 + 40)];
  }
}

- (void)operatorNameChanged:(id)changed name:(id)name
{
  changedCopy = changed;
  nameCopy = name;
  if (self)
  {
    internalQueue = self->_internalQueue;
  }

  else
  {
    internalQueue = 0;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__STTelephonyStateProvider_operatorNameChanged_name___block_invoke;
  block[3] = &unk_279D34E60;
  block[4] = self;
  v12 = changedCopy;
  v13 = nameCopy;
  v9 = nameCopy;
  v10 = changedCopy;
  dispatch_async(internalQueue, block);
}

void __53__STTelephonyStateProvider_operatorNameChanged_name___block_invoke(uint64_t a1)
{
  v2 = [(STTelephonyStateProvider *)*(a1 + 32) _subscriptionContextForCTContext:?];
  v3 = *(a1 + 32);
  v6 = v2;
  if (v2)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"got new operator name: %@", *(a1 + 48)];
    [(STTelephonyStateProvider *)v3 _logSubscriptionEvent:v4 forCTContext:*(a1 + 40)];

    [v6 setCachedCTOperatorName:*(a1 + 48)];
    [(STTelephonyStateProvider *)*(a1 + 32) _setOperatorName:v6 inSubscriptionContext:?];
  }

  else
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s -- did not have matching context", "-[STTelephonyStateProvider operatorNameChanged:name:]_block_invoke"];
    [(STTelephonyStateProvider *)v3 _logSubscriptionEvent:v5 forCTContext:*(a1 + 40)];
  }
}

- (void)_setOperatorName:(void *)name inSubscriptionContext:
{
  v52[10] = *MEMORY[0x277D85DE8];
  v41 = a2;
  nameCopy = name;
  val = self;
  if (!self)
  {
    goto LABEL_41;
  }

  v40 = nameCopy;
  subscriptionInfo = [nameCopy subscriptionInfo];
  operatorName = [subscriptionInfo operatorName];
  v6 = v41;
  v39 = v40;
  obj = [v39 statusBarImages];
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v7 = 0;
  v8 = [obj countByEnumeratingWithState:&v44 objects:block count:16];
  if (!v8)
  {
    goto LABEL_20;
  }

  v9 = *v45;
  do
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v45 != v9)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v44 + 1) + 8 * i);
      v12 = [v11 objectForKey:@"CarrierName"];
      v13 = [v11 objectForKey:@"AllowPrefixMatching"];
      bOOLValue = [v13 BOOLValue];

      v15 = v6;
      v16 = v12;
      v17 = v16;
      if (v16 == v15)
      {

LABEL_16:
        [v11 objectForKey:@"StatusBarCarrierName"];
        v7 = v15 = v7;
LABEL_17:

        goto LABEL_18;
      }

      if (!v6 || !v16)
      {

        goto LABEL_17;
      }

      v18 = [v15 stringByReplacingOccurrencesOfString:@" " withString:&stru_287CFDAC8];

      v19 = [v17 stringByReplacingOccurrencesOfString:@" " withString:&stru_287CFDAC8];

      if (bOOLValue)
      {
        v20 = [v18 rangeOfString:v19 options:1];
      }

      else
      {
        v20 = [v18 compare:v19 options:1];
      }

      v21 = v20 == 0;

      if (v21)
      {
        goto LABEL_16;
      }

LABEL_18:
    }

    v8 = [obj countByEnumeratingWithState:&v44 objects:block count:16];
  }

  while (v8);
LABEL_20:

  if (v7)
  {
    v22 = v7;
  }

  else
  {
    v22 = v6;
  }

  v23 = v22;

  v24 = operatorName;
  if ([v23 isEqualToString:operatorName])
  {
    [STTelephonyStateProvider _cancelFakeServiceForContext:v39];
  }

  else
  {
    if ([operatorName length])
    {
      v25 = [v23 length] != 0;
    }

    else
    {
      v25 = 1;
    }

    v26 = val[20];
    isUsingStewieFor = [(STTelephonyStateProvider *)val _internalQueue_isUsingStewieForSOS];
    v28 = [v23 length];
    _internalQueue_needsUserIdentificationModule = v28 == 0;
    if (!v28 && (v26 & 1) == 0 && (isUsingStewieFor & 1) == 0)
    {
      sIMStatus = [subscriptionInfo SIMStatus];
      if ([sIMStatus isEqual:*MEMORY[0x277CC3ED8]])
      {
        _internalQueue_needsUserIdentificationModule = [(STTelephonyStateProvider *)val _internalQueue_needsUserIdentificationModule];
      }

      else
      {
        _internalQueue_needsUserIdentificationModule = 0;
      }

      v24 = operatorName;
    }

    if ((v25 | _internalQueue_needsUserIdentificationModule))
    {
      [(STTelephonyStateProvider *)val _reallySetOperatorName:v23 inSubscriptionContext:v39];
    }

    else
    {
      v31 = v39;
      if (![v31 fakeServiceCanceled])
      {
        objc_initWeak(&location, val);
        *&v44 = 0;
        *(&v44 + 1) = &v44;
        *&v45 = 0x2020000000;
        BYTE8(v45) = 0;
        v32 = dispatch_time(0, 10000000000);
        v33 = *(val + 4);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __67__STTelephonyStateProvider__startFakeServiceIfNecessaryForContext___block_invoke;
        block[3] = &unk_279D35490;
        v51 = &v44;
        v34 = v31;
        v50 = v34;
        v35 = v33;
        objc_copyWeak(v52, &location);
        dispatch_after(v32, v35, block);

        [v34 setFakeServiceCanceled:*(&v44 + 1) + 24];
        objc_destroyWeak(v52);

        _Block_object_dispose(&v44, 8);
        objc_destroyWeak(&location);
      }

      v24 = operatorName;
    }
  }

  nameCopy = v40;
LABEL_41:

  v36 = *MEMORY[0x277D85DE8];
}

- (void)_reallySetOperatorName:(void *)name inSubscriptionContext:
{
  v10 = a2;
  nameCopy = name;
  subscriptionInfo = [nameCopy subscriptionInfo];
  operatorName = [subscriptionInfo operatorName];
  if (([v10 isEqualToString:operatorName] & 1) == 0)
  {
    [subscriptionInfo setOperatorName:v10];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"operatorName changed from '%@' to '%@'", operatorName, v10];
    [(STTelephonyStateProvider *)self _logSubscriptionEvent:v8 forContext:nameCopy];
  }

  [STTelephonyStateProvider _cancelFakeServiceForContext:nameCopy];
  v9 = [(STTelephonyStateProvider *)self _subscriptionSlotForContext:nameCopy];
  [(STTelephonyStateProvider *)self _internalQueue_notifyObserversOfSubscriptionInfoChangeForSlot:v9];
}

void __67__STTelephonyStateProvider__startFakeServiceIfNecessaryForContext___block_invoke(uint64_t a1)
{
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    [*(a1 + 32) setFakeServiceCanceled:0];
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [(STTelephonyStateProvider *)WeakRetained _stopFakeServiceForContext:?];
  }
}

- (void)_stopFakingServiceAndRegistrationForContext:(_BYTE *)context
{
  v5 = a2;
  if ([v5 isFakingService])
  {
    [(STTelephonyStateProvider *)context _stopFakeServiceForContext:v5];
  }

  if ([v5 isFakingRegistration])
  {
    [STTelephonyStateProvider _cancelFakeRegistrationForContext:v5];
    [(STTelephonyStateProvider *)context _updateRegistrationNowInSubscriptionContext:v5];
  }

  if ([v5 isFakingCellularRegistration])
  {
    [STTelephonyStateProvider _cancelFakeCellularRegistrationForContext:v5];
    cachedCTRegistrationCellularStatus = [v5 cachedCTRegistrationCellularStatus];
    v4 = STTelephonyRegistrationStatusForStatus(cachedCTRegistrationCellularStatus);
    [(STTelephonyStateProvider *)context _setCellRegistrationStatus:v4 inSubscriptionContext:v5];
  }
}

- (void)_setCellRegistrationStatus:(void *)status inSubscriptionContext:
{
  statusCopy = status;
  if (self)
  {
    subscriptionInfo = [statusCopy subscriptionInfo];
    cellularRegistrationStatus = [subscriptionInfo cellularRegistrationStatus];
    if (cellularRegistrationStatus != a2)
    {
      v7 = cellularRegistrationStatus;
      [subscriptionInfo setCellularRegistrationStatus:a2];
      v8 = MEMORY[0x277CCACA8];
      v9 = STTelephonyRegistrationStatusDebugName(v7);
      v10 = STTelephonyRegistrationStatusDebugName(a2);
      v11 = [v8 stringWithFormat:@"cell status changed from %@ to %@", v9, v10];
      [(STTelephonyStateProvider *)self _logSubscriptionEvent:v11 forContext:statusCopy];

      v12 = [(STTelephonyStateProvider *)self _subscriptionSlotForContext:statusCopy];
      [(STTelephonyStateProvider *)self _internalQueue_notifyObserversOfSubscriptionInfoChangeForSlot:v12];
    }

    [STTelephonyStateProvider _cancelFakeCellularRegistrationForContext:statusCopy];
  }
}

- (void)displayStatusChanged:(id)changed status:(id)status
{
  changedCopy = changed;
  statusCopy = status;
  if (self)
  {
    internalQueue = self->_internalQueue;
  }

  else
  {
    internalQueue = 0;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__STTelephonyStateProvider_displayStatusChanged_status___block_invoke;
  block[3] = &unk_279D34E60;
  block[4] = self;
  v12 = changedCopy;
  v13 = statusCopy;
  v9 = statusCopy;
  v10 = changedCopy;
  dispatch_async(internalQueue, block);
}

void __56__STTelephonyStateProvider_displayStatusChanged_status___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 56);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(a1 + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __56__STTelephonyStateProvider_displayStatusChanged_status___block_invoke_2;
  v5[3] = &unk_279D35238;
  v5[4] = v2;
  v6 = v4;
  v7 = *(a1 + 48);
  [v3 copyRegistrationStatus:v6 completion:v5];
}

void __56__STTelephonyStateProvider_displayStatusChanged_status___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (!a3)
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      v7 = *(v6 + 32);
    }

    else
    {
      v7 = 0;
    }

    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __56__STTelephonyStateProvider_displayStatusChanged_status___block_invoke_3;
    v8[3] = &unk_279D35260;
    v8[4] = v6;
    v9 = *(a1 + 40);
    v10 = v5;
    v11 = *(a1 + 48);
    dispatch_async(v7, v8);
  }
}

void __56__STTelephonyStateProvider_displayStatusChanged_status___block_invoke_3(uint64_t a1)
{
  v2 = [(STTelephonyStateProvider *)*(a1 + 32) _subscriptionContextForCTContext:?];
  v3 = *(a1 + 32);
  v59 = v2;
  if (!v2)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s -- did not have matching context", "-[STTelephonyStateProvider displayStatusChanged:status:]_block_invoke_3"];
    [(STTelephonyStateProvider *)v3 _logSubscriptionEvent:v5 forCTContext:*(a1 + 40)];
    goto LABEL_40;
  }

  v4 = *(a1 + 48);
  v5 = [*(a1 + 56) registrationDisplayStatus];
  v6 = [*(a1 + 56) isRegistrationForcedHome];
  v7 = [*(a1 + 56) changedDueToSimRemoval];
  v56 = [*(a1 + 56) isSatelliteSystem];
  v8 = *(a1 + 40);
  v9 = v59;
  if (v3)
  {
    v55 = v5;
    v10 = v5;
    v11 = v4;
    [(STTelephonyStateProvider *)v3 _updateLastKnownNetworkCountryCodeInContext:v9 withCTContext:v8];
    v54 = STTelephonyRegistrationStatusForStatus(v10);
    v12 = v11;
    v13 = v10;
    v57 = v9;
    v14 = v9;
    v15 = [v14 subscriptionInfo];
    [v14 cachedCTRegistrationCellularStatus];
    v58 = v16 = 0x277CCA000uLL;
    if (!v58 || ([v58 isEqualToString:v12] & 1) == 0)
    {
      v17 = STTelephonyRegistrationStatusForStatus(v12);
      if ((-[STTelephonyStateProvider _internalQueue_isUsingStewieForSOS](v3) & 1) != 0 || v17 == 2 || [v15 cellularRegistrationStatus] != 2)
      {
        [(STTelephonyStateProvider *)v3 _setCellRegistrationStatus:v17 inSubscriptionContext:v14];
      }

      else
      {
        v18 = v14;
        if (![v18 fakeCellularRegistrationCanceled])
        {
          objc_initWeak(location, v3);
          v67 = 0;
          v68 = &v67;
          v69 = 0x2020000000;
          v70 = 0;
          when = dispatch_time(0, 10000000000);
          v19 = v18;
          v20 = v3[4];
          block = MEMORY[0x277D85DD0];
          v61 = 3221225472;
          v62 = __80__STTelephonyStateProvider__startFakeCellularRegistrationIfNecessaryForContext___block_invoke;
          v63 = &unk_279D35490;
          v65 = &v67;
          v51 = v19;
          v21 = v19;
          v64 = v21;
          v22 = v20;
          objc_copyWeak(&v66, location);
          dispatch_after(when, v22, &block);

          [v21 setFakeCellularRegistrationCanceled:v68 + 3];
          objc_destroyWeak(&v66);

          _Block_object_dispose(&v67, 8);
          objc_destroyWeak(location);
          v16 = 0x277CCA000;
          v18 = v51;
        }
      }

      [v14 setCachedCTRegistrationCellularStatus:v12];
      v23 = [*(v16 + 3240) stringWithFormat:@"cached cell status changed from %@ to %@", v58, v12];
      [(STTelephonyStateProvider *)v3 _logSubscriptionEvent:v23 forContext:v14];
    }

    v24 = [v14 cachedCTRegistrationDisplayStatus];
    v25 = v24;
    if (!v24 || ([v24 isEqualToString:v13] & 1) == 0)
    {
      [v14 setCachedCTRegistrationDisplayStatus:v13];
      v26 = [*(v16 + 3240) stringWithFormat:@"cached display status changed from %@ to %@", v25, v13];
      [(STTelephonyStateProvider *)v3 _logSubscriptionEvent:v26 forContext:v14];
    }

    if (v6 != [v15 isRegisteredWithoutCellular])
    {
      [v15 setRegisteredWithoutCellular:v6];
      whena = v12;
      v27 = v13;
      v28 = v15;
      v29 = v7;
      v30 = v16;
      v31 = *(v16 + 3240);
      v32 = NSStringFromBOOL();
      v33 = NSStringFromBOOL();
      v34 = [v31 stringWithFormat:@"forcedHome status changed from %@ to %@", v32, v33];
      [(STTelephonyStateProvider *)v3 _logSubscriptionEvent:v34 forContext:v14];

      v16 = v30;
      v7 = v29;
      v15 = v28;
      v13 = v27;
      v12 = whena;
    }

    if (v54 == 2)
    {
      [(STTelephonyStateProvider *)v3 _setRegistrationStatus:v14 inSubscriptionContext:?];
      v35 = v56;
      v9 = v57;
LABEL_36:
      v47 = v14;
      v48 = [v47 isSatelliteSystem];
      if (v35 != v48)
      {
        v49 = v48;
        [v47 setIsSatelliteSystem:v35];
        [(STTelephonyStateProvider *)v3 _updateDataConnectionTypeForContext:v47];
        v50 = [*(v16 + 3240) stringWithFormat:@"satellite system changed from %b to %b", v49, v35];
        [(STTelephonyStateProvider *)v3 _logSubscriptionEvent:v50 forContext:v47];
      }

      v5 = v55;
      goto LABEL_39;
    }

    v36 = [v14 subscriptionInfo];
    v37 = [v36 registrationStatus];
    if (v37 > 2)
    {
      v35 = v56;
      v9 = v57;
      if ((v37 - 3) >= 2)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v35 = v56;
      v9 = v57;
      if (!v37)
      {
LABEL_33:
        [(STTelephonyStateProvider *)v3 _updateRegistrationNowInSubscriptionContext:v14];
        goto LABEL_35;
      }

      if (v37 != 1)
      {
        if (v37 == 2)
        {
          if (((v7 | [(STTelephonyStateProvider *)v3 _internalQueue_isUsingStewieForSOS]) & 1) == 0)
          {
            if (!-[STTelephonyStateProvider _internalQueue_needsUserIdentificationModule](v3) || ([v36 SIMStatus], v38 = v16, v39 = objc_claimAutoreleasedReturnValue(), v40 = objc_msgSend(v39, "isEqual:", *MEMORY[0x277CC3ED8]), v39, v16 = v38, !v40))
            {
              v41 = v14;
              if (![v41 fakeRegistrationCanceled])
              {
                v42 = v16;
                objc_initWeak(location, v3);
                v67 = 0;
                v68 = &v67;
                v69 = 0x2020000000;
                v70 = 0;
                v43 = dispatch_time(0, 10000000000);
                v44 = v3[4];
                block = MEMORY[0x277D85DD0];
                v61 = 3221225472;
                v62 = __72__STTelephonyStateProvider__startFakeRegistrationIfNecessaryForContext___block_invoke;
                v63 = &unk_279D35490;
                v65 = &v67;
                v45 = v41;
                v64 = v45;
                v46 = v44;
                objc_copyWeak(&v66, location);
                dispatch_after(v43, v46, &block);

                [v45 setFakeRegistrationCanceled:v68 + 3];
                objc_destroyWeak(&v66);

                _Block_object_dispose(&v67, 8);
                objc_destroyWeak(location);
                v9 = v57;
                v16 = v42;
              }

              goto LABEL_35;
            }
          }

          goto LABEL_33;
        }

LABEL_35:

        goto LABEL_36;
      }

      if ([v14 isPretendingToSearch])
      {
        if (v54 != 1)
        {
          goto LABEL_35;
        }

        goto LABEL_33;
      }
    }

    if (v54 != 1)
    {
      [(STTelephonyStateProvider *)v3 _setRegistrationStatus:v54 inSubscriptionContext:v14];
      goto LABEL_35;
    }

    goto LABEL_33;
  }

LABEL_39:

LABEL_40:
}

void __72__STTelephonyStateProvider__startFakeRegistrationIfNecessaryForContext___block_invoke(uint64_t a1)
{
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    [*(a1 + 32) setFakeRegistrationCanceled:0];
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [(STTelephonyStateProvider *)WeakRetained _updateRegistrationNowInSubscriptionContext:?];
  }
}

void __80__STTelephonyStateProvider__startFakeCellularRegistrationIfNecessaryForContext___block_invoke(uint64_t a1)
{
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    [*(a1 + 32) setFakeCellularRegistrationCanceled:0];
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v3 = [*(a1 + 32) cachedCTRegistrationCellularStatus];
    v4 = STTelephonyRegistrationStatusForStatus(v3);
    [(STTelephonyStateProvider *)WeakRetained _setCellRegistrationStatus:v4 inSubscriptionContext:*(a1 + 32)];
  }
}

- (void)cellChanged:(id)changed cell:(id)cell
{
  changedCopy = changed;
  if (self)
  {
    internalQueue = self->_internalQueue;
  }

  else
  {
    internalQueue = 0;
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __45__STTelephonyStateProvider_cellChanged_cell___block_invoke;
  v8[3] = &unk_279D34B18;
  v8[4] = self;
  v9 = changedCopy;
  v7 = changedCopy;
  dispatch_async(internalQueue, v8);
}

uint64_t __45__STTelephonyStateProvider_cellChanged_cell___block_invoke(uint64_t a1)
{
  v2 = [(STTelephonyStateProvider *)*(a1 + 32) _subscriptionContextForCTContext:?];
  v3 = *(a1 + 32);
  v7 = v2;
  if (v2)
  {
    v4 = v2;
    if (!v3)
    {
      goto LABEL_6;
    }

    [(STTelephonyStateProvider *)v3 _updateLastKnownNetworkCountryCodeInContext:v2 withCTContext:*(a1 + 40)];
  }

  else
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s -- did not have matching context", "-[STTelephonyStateProvider cellChanged:cell:]_block_invoke"];
    [(STTelephonyStateProvider *)v3 _logSubscriptionEvent:v5 forCTContext:*(a1 + 40)];
  }

  v4 = v7;
LABEL_6:

  return MEMORY[0x2821F96F8](v2, v4);
}

- (void)networkSelected:(id)selected success:(BOOL)success mode:(id)mode
{
  if (success)
  {
    [(STTelephonyStateProvider *)self _handleNetworkReselectionNeeded:selected forCTContext:?];
  }
}

void __73__STTelephonyStateProvider__handleNetworkReselectionNeeded_forCTContext___block_invoke(uint64_t a1)
{
  v2 = [(STTelephonyStateProvider *)*(a1 + 32) _subscriptionContextForCTContext:?];
  v3 = *(a1 + 32);
  v10 = v2;
  if (v2)
  {
    v4 = *(a1 + 48);
    v5 = *(a1 + 40);
    if (v3)
    {
      v6 = [v10 subscriptionInfo];
      if ([v6 isNetworkReselectionNeeded] != v4)
      {
        [v6 setNetworkReselectionNeeded:v4];
        v7 = MEMORY[0x277CCACA8];
        v8 = NSStringFromBOOL();
        v9 = [v7 stringWithFormat:@"Set network reselection needed: %@", v8];
        [(STTelephonyStateProvider *)v3 _logSubscriptionEvent:v9 forCTContext:v5];

        -[STTelephonyStateProvider _internalQueue_notifyObserversOfSubscriptionInfoChangeForSlot:](v3, [v5 slotID]);
      }
    }
  }

  else
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s -- did not have matching context", "-[STTelephonyStateProvider _handleNetworkReselectionNeeded:forCTContext:]_block_invoke"];
    [(STTelephonyStateProvider *)v3 _logSubscriptionEvent:v5 forCTContext:*(a1 + 40)];
  }
}

- (void)rejectCauseCodeChanged:(id)changed causeCode:(id)code
{
  changedCopy = changed;
  codeCopy = code;
  if (self)
  {
    internalQueue = self->_internalQueue;
  }

  else
  {
    internalQueue = 0;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__STTelephonyStateProvider_rejectCauseCodeChanged_causeCode___block_invoke;
  block[3] = &unk_279D34E60;
  block[4] = self;
  v12 = changedCopy;
  v13 = codeCopy;
  v9 = codeCopy;
  v10 = changedCopy;
  dispatch_async(internalQueue, block);
}

void __61__STTelephonyStateProvider_rejectCauseCodeChanged_causeCode___block_invoke(uint64_t a1)
{
  v2 = [(STTelephonyStateProvider *)*(a1 + 32) _subscriptionContextForCTContext:?];
  v3 = *(a1 + 32);
  v11 = v2;
  if (v2)
  {
    v4 = [*(a1 + 48) integerValue];
    v5 = v11;
    v6 = v5;
    if (v3)
    {
      v7 = [v5 subscriptionInfo];
      v8 = [v7 registrationRejectionCauseCode];
      if (v8 != v4)
      {
        v9 = v8;
        [v7 setRegistrationRejectionCauseCode:v4];
        v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Registration rejection cause code changed from %ld to %ld", v9, v4];
        [(STTelephonyStateProvider *)v3 _logSubscriptionEvent:v10 forContext:v6];
      }
    }
  }

  else
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s -- did not have matching context", "-[STTelephonyStateProvider rejectCauseCodeChanged:causeCode:]_block_invoke"];
    [(STTelephonyStateProvider *)v3 _logSubscriptionEvent:v6 forCTContext:*(a1 + 40)];
  }
}

- (void)simStatusDidChange:(id)change status:(id)status
{
  changeCopy = change;
  statusCopy = status;
  if (self)
  {
    internalQueue = self->_internalQueue;
  }

  else
  {
    internalQueue = 0;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__STTelephonyStateProvider_simStatusDidChange_status___block_invoke;
  block[3] = &unk_279D34E60;
  block[4] = self;
  v12 = changeCopy;
  v13 = statusCopy;
  v9 = statusCopy;
  v10 = changeCopy;
  dispatch_async(internalQueue, block);
}

void __54__STTelephonyStateProvider_simStatusDidChange_status___block_invoke(uint64_t a1)
{
  v2 = [(STTelephonyStateProvider *)*(a1 + 32) _subscriptionContextForCTContext:?];
  v3 = *(a1 + 32);
  v5 = v2;
  if (v2)
  {
    [(STTelephonyStateProvider *)v3 _setSIMStatus:v2 inSubscriptionContext:?];
  }

  else
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s -- did not have matching context", "-[STTelephonyStateProvider simStatusDidChange:status:]_block_invoke"];
    [(STTelephonyStateProvider *)v3 _logSubscriptionEvent:v4 forCTContext:*(a1 + 40)];
  }
}

- (void)servingNetworkChanged:(id)changed
{
  changedCopy = changed;
  if (self)
  {
    internalQueue = self->_internalQueue;
  }

  else
  {
    internalQueue = 0;
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__STTelephonyStateProvider_servingNetworkChanged___block_invoke;
  v7[3] = &unk_279D34B18;
  v7[4] = self;
  v8 = changedCopy;
  v6 = changedCopy;
  dispatch_async(internalQueue, v7);
}

uint64_t __50__STTelephonyStateProvider_servingNetworkChanged___block_invoke(uint64_t a1)
{
  v2 = [(STTelephonyStateProvider *)*(a1 + 32) _subscriptionContextForCTContext:?];
  v3 = *(a1 + 32);
  v7 = v2;
  if (v2)
  {
    v4 = v2;
    if (!v3)
    {
      goto LABEL_6;
    }

    [(STTelephonyStateProvider *)v3 _updateLastKnownNetworkCountryCodeInContext:v2 withCTContext:*(a1 + 40)];
  }

  else
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s -- did not have matching context", "-[STTelephonyStateProvider servingNetworkChanged:]_block_invoke"];
    [(STTelephonyStateProvider *)v3 _logSubscriptionEvent:v5 forCTContext:*(a1 + 40)];
  }

  v4 = v7;
LABEL_6:

  return MEMORY[0x2821F96F8](v2, v4);
}

- (void)currentDataSimChanged:(id)changed
{
  changedCopy = changed;
  if (self)
  {
    internalQueue = self->_internalQueue;
  }

  else
  {
    internalQueue = 0;
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__STTelephonyStateProvider_currentDataSimChanged___block_invoke;
  v7[3] = &unk_279D34B18;
  v7[4] = self;
  v8 = changedCopy;
  v6 = changedCopy;
  dispatch_async(internalQueue, v7);
}

void __50__STTelephonyStateProvider_currentDataSimChanged___block_invoke(uint64_t a1)
{
  [(STTelephonyStateProvider *)*(a1 + 32) _logSubscriptionEvent:*(a1 + 40) forCTContext:?];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  [(STTelephonyStateProvider *)v2 _updateDataConnectedSubscriptionContextForCTContext:v3];
}

- (void)dataStatus:(id)status dataStatusInfo:(id)info
{
  statusCopy = status;
  infoCopy = info;
  if (self)
  {
    internalQueue = self->_internalQueue;
  }

  else
  {
    internalQueue = 0;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__STTelephonyStateProvider_dataStatus_dataStatusInfo___block_invoke;
  block[3] = &unk_279D34E60;
  block[4] = self;
  v12 = statusCopy;
  v13 = infoCopy;
  v9 = infoCopy;
  v10 = statusCopy;
  dispatch_async(internalQueue, block);
}

void __54__STTelephonyStateProvider_dataStatus_dataStatusInfo___block_invoke(uint64_t a1)
{
  v2 = [(STTelephonyStateProvider *)*(a1 + 32) _subscriptionContextForCTContext:?];
  v3 = *(a1 + 32);
  v21 = v2;
  if (v2)
  {
    v4 = *(a1 + 48);
    v5 = v2;
    if (v3)
    {
      v6 = v4;
      v7 = [v6 indicator];
      v8 = [v6 indicatorOverride];
      v9 = [v6 radioTechnology];

      v10 = STTelephonyDataConnectionTypeForIndicatorNameAndRadioTechnology(v7, v9);
      v11 = STTelephonyDataConnectionTypeForIndicatorNameAndRadioTechnology(v8, v9);
      v12 = v11;
      v13 = v11 - 11;
      if (v11 - 11) < 6 && ((0x2Fu >> v13))
      {
        v12 = qword_26C4CE0C0[v13];
      }

      else if (v10 != 7 || (v11 - 7) >= 4)
      {
        if (v8 == 7 && (v10 & 0x1E) == 4)
        {
          v12 = 6;
        }

        else
        {
          v12 = v10;
        }
      }

      v15 = [v5 modemDataConnectionType];
      if (v15 != v12)
      {
        v16 = v15;
        [v5 setModemDataConnectionType:v12];
        v17 = MEMORY[0x277CCACA8];
        v18 = STTelephonyDataConnectionTypeDebugName(v16);
        v19 = STTelephonyDataConnectionTypeDebugName(v12);
        v20 = [v17 stringWithFormat:@"_updateModemDataConnectionTypeWithCTInfo: - cellular data connection changed from %@ to %@", v18, v19];
        [(STTelephonyStateProvider *)v3 _logSubscriptionEvent:v20 forContext:v5];
      }

      [(STTelephonyStateProvider *)v3 _updateDataConnectionTypeForContext:v5];
    }
  }

  else
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s -- did not have matching context", "-[STTelephonyStateProvider dataStatus:dataStatusInfo:]_block_invoke"];
    [(STTelephonyStateProvider *)v3 _logSubscriptionEvent:v5 forCTContext:*(a1 + 40)];
  }
}

- (void)carrierBundleChange:(id)change
{
  changeCopy = change;
  v5 = changeCopy;
  if (self)
  {
    v6 = objc_alloc_init(STMutableTelephonyCarrierBundleInfo);
    v7 = self->_coreTelephonyClient;
    v8 = [objc_alloc(MEMORY[0x277CC3620]) initWithBundleType:1];
    v33 = 0;
    v9 = [(CoreTelephonyClient *)v7 copyCarrierBundleValueWithDefault:v5 key:@"DataIndicatorOverrideForLTE" bundleType:v8 error:&v33];
    if (!v33)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = [v9 isEqualToString:@"4G"];
      }

      else
      {
        v10 = 0;
      }

      [(STMutableTelephonyCarrierBundleInfo *)v6 setLTEConnectionShows4G:v10];
    }

    v32 = 0;
    v11 = [(CoreTelephonyClient *)v7 copyCarrierBundleValueWithDefault:v5 key:@"UserCanReinitiateActivation" bundleType:v8 error:&v32];
    v12 = v32;

    if (!v12)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = [v11 BOOLValue] ^ 1;
      }

      else
      {
        v13 = 0;
      }

      [(STMutableTelephonyCarrierBundleInfo *)v6 setReinitiatingActivationDisabled:v13];
    }

    v31 = 0;
    v14 = [(CoreTelephonyClient *)v7 copyCarrierBundleValueWithDefault:v5 key:@"CustomerServicePhoneNumber" bundleType:v8 error:&v31];
    v15 = v31;

    if (!v15)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(STMutableTelephonyCarrierBundleInfo *)v6 setCustomerServicePhoneNumber:v14];
      }
    }

    v30 = 0;
    v16 = [(CoreTelephonyClient *)v7 copyCarrierBundleValueWithDefault:v5 key:@"DisabledApplications" bundleType:v8 error:&v30];
    v17 = v30;

    if (!v17)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(STMutableTelephonyCarrierBundleInfo *)v6 setDisabledApplicationIDs:v16];
      }
    }

    v29 = 0;
    v18 = [(CoreTelephonyClient *)v7 copyCarrierBundleValueWithDefault:v5 key:@"CarrierName" bundleType:v8 error:&v29];
    v19 = v29;

    if (!v19)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(STMutableTelephonyCarrierBundleInfo *)v6 setCarrierName:v18];
      }
    }

    v28 = 0;
    v20 = [(CoreTelephonyClient *)v7 copyCarrierBundleValueWithDefault:v5 key:@"HomeCountryCode" bundleType:v8 error:&v28];
    v21 = v28;

    if (!v21)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(STMutableTelephonyCarrierBundleInfo *)v6 setHomeCountryCode:v20];
      }
    }

    [(STMutableTelephonyCarrierBundleInfo *)v6 setSuppressSOSOnlyWithLimitedService:[(STTelephonyStateProvider *)self->_coreTelephonyClient _backgroundQueryQueue_shouldSuppressSOSOnlyWithLimitedServiceForCTContext:v5]];

    internalQueue = self->_internalQueue;
  }

  else
  {

    v6 = 0;
    internalQueue = 0;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__STTelephonyStateProvider_carrierBundleChange___block_invoke;
  block[3] = &unk_279D34E60;
  block[4] = self;
  v26 = v5;
  v27 = v6;
  v23 = v6;
  v24 = v5;
  dispatch_async(internalQueue, block);
}

void __48__STTelephonyStateProvider_carrierBundleChange___block_invoke(uint64_t a1)
{
  v2 = [(STTelephonyStateProvider *)*(a1 + 32) _subscriptionContextForCTContext:?];
  v3 = *(a1 + 32);
  v15 = v2;
  if (v2)
  {
    v4 = *(a1 + 48);
    v5 = v15;
    if (v3)
    {
      if (*(v3 + 104) != -1)
      {
        *(v3 + 104) = -1;
        v6 = STSystemStatusLogTelephonyState();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_26C4AD000, v6, OS_LOG_TYPE_DEFAULT, "STTelephonyStateProvider resetting _needsUserIdentificationModule (for carrier bundle change)", buf, 2u);
        }
      }

      v7 = [v4 mutableCopy];
      [v5 setCarrierBundleInfo:v7];

      [(STTelephonyStateProvider *)v3 _logSubscriptionEvent:v5 forContext:?];
      v8 = [(STTelephonyStateProvider *)v3 _subscriptionSlotForContext:v5];
      v9 = *(v3 + 24);
      v10 = [v9 copy];
      v11 = [v10 setRepresentation];

      v12 = *(v3 + 40);
      *buf = MEMORY[0x277D85DD0];
      v17 = 3221225472;
      v18 = __91__STTelephonyStateProvider__internalQueue_notifyObserversOfCarrierBundleInfoChangeForSlot___block_invoke;
      v19 = &unk_279D34D48;
      v20 = v11;
      v21 = v3;
      v22 = v8;
      v13 = v11;
      dispatch_async(v12, buf);

      [(STTelephonyStateProvider *)v3 _updateDataConnectionTypeForContext:v5];
    }
  }

  else
  {
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s -- did not have matching context", "-[STTelephonyStateProvider carrierBundleChange:]_block_invoke"];
    [(STTelephonyStateProvider *)v3 _logSubscriptionEvent:v14 forCTContext:*(a1 + 40)];
  }
}

- (void)operatorBundleChange:(id)change
{
  changeCopy = change;
  [(STTelephonyStateProvider *)self carrierBundleChange:changeCopy];
  if (self)
  {
    internalQueue = self->_internalQueue;
  }

  else
  {
    internalQueue = 0;
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__STTelephonyStateProvider_operatorBundleChange___block_invoke;
  v7[3] = &unk_279D34B18;
  v7[4] = self;
  v8 = changeCopy;
  v6 = changeCopy;
  dispatch_async(internalQueue, v7);
}

void __49__STTelephonyStateProvider_operatorBundleChange___block_invoke(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x277CC3620]) initWithBundleType:2];
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *(v3 + 56);
  }

  else
  {
    v4 = 0;
  }

  v5 = *(a1 + 40);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __49__STTelephonyStateProvider_operatorBundleChange___block_invoke_2;
  v6[3] = &unk_279D354B8;
  v6[4] = v3;
  v7 = v5;
  [v4 copyCarrierBundleValueWithDefault:v7 key:@"StatusBarImages" bundleType:v2 completion:v6];
}

void __49__STTelephonyStateProvider_operatorBundleChange___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (!a3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v6 = v5;
      v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v19;
        while (2)
        {
          v10 = 0;
          do
          {
            if (*v19 != v9)
            {
              objc_enumerationMutation(v6);
            }

            v11 = *(*(&v18 + 1) + 8 * v10);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {

              goto LABEL_15;
            }

            ++v10;
          }

          while (v8 != v10);
          v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
          if (v8)
          {
            continue;
          }

          break;
        }
      }

      v12 = *(a1 + 32);
      if (v12)
      {
        v13 = *(v12 + 32);
      }

      else
      {
        v13 = 0;
      }

      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __49__STTelephonyStateProvider_operatorBundleChange___block_invoke_3;
      block[3] = &unk_279D34E60;
      block[4] = v12;
      v16 = *(a1 + 40);
      v17 = v6;
      dispatch_async(v13, block);

LABEL_15:
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __49__STTelephonyStateProvider_operatorBundleChange___block_invoke_3(uint64_t a1)
{
  v6 = [(STTelephonyStateProvider *)*(a1 + 32) _subscriptionContextForCTContext:?];
  if (v6)
  {
    v2 = [*(a1 + 48) copy];
    [v6 setStatusBarImages:v2];

    [(STTelephonyStateProvider *)*(a1 + 32) _logSubscriptionEvent:*(a1 + 40) forCTContext:?];
    v3 = *(a1 + 32);
    v4 = [v6 cachedCTOperatorName];
    [(STTelephonyStateProvider *)v3 _setOperatorName:v4 inSubscriptionContext:v6];
  }

  else
  {
    v5 = *(a1 + 32);
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s -- did not have matching context", "-[STTelephonyStateProvider operatorBundleChange:]_block_invoke_3"];
    [(STTelephonyStateProvider *)v5 _logSubscriptionEvent:v4 forCTContext:*(a1 + 40)];
  }
}

- (void)suppServicesEvent:(id)event event:(int)a4 settingsType:(int)type data:(id)data
{
  eventCopy = event;
  dataCopy = data;
  if (self)
  {
    internalQueue = self->_internalQueue;
  }

  else
  {
    internalQueue = 0;
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __70__STTelephonyStateProvider_suppServicesEvent_event_settingsType_data___block_invoke;
  v15[3] = &unk_279D34D20;
  v18 = a4;
  typeCopy = type;
  v15[4] = self;
  v16 = eventCopy;
  v17 = dataCopy;
  v13 = dataCopy;
  v14 = eventCopy;
  dispatch_async(internalQueue, v15);
}

void __70__STTelephonyStateProvider_suppServicesEvent_event_settingsType_data___block_invoke(uint64_t a1)
{
  if ((*(a1 + 56) | 4) == 5 && *(a1 + 60) == 2)
  {
    v6 = [(STTelephonyStateProvider *)*(a1 + 32) _subscriptionContextForCTContext:?];
    if (v6)
    {
      v2 = [*(a1 + 48) active];
      if ([v2 BOOLValue])
      {
        v3 = 1;
      }

      else
      {
        v3 = 2;
      }

      [(STTelephonyStateProvider *)*(a1 + 32) _setCallForwardingIndicator:v3 inSubscriptionContext:v6];
    }

    else
    {
      v4 = *(a1 + 32);
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s -- did not have matching context", "-[STTelephonyStateProvider suppServicesEvent:event:settingsType:data:]_block_invoke"];
      [(STTelephonyStateProvider *)v4 _logSubscriptionEvent:v5 forCTContext:*(a1 + 40)];
    }
  }
}

void __69__STTelephonyStateProvider__updateCallForwardingIndicatorForContext___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  if (!a3)
  {
    v7 = *(a1 + 32);
    if (v7)
    {
      v8 = *(v7 + 32);
    }

    else
    {
      v8 = 0;
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __69__STTelephonyStateProvider__updateCallForwardingIndicatorForContext___block_invoke_2;
    block[3] = &unk_279D34E60;
    v9 = v5;
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v13 = v9;
    v14 = v10;
    v15 = v11;
    dispatch_async(v8, block);
  }
}

void __69__STTelephonyStateProvider__updateCallForwardingIndicatorForContext___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) subscriptionsInUse];
  v3 = [(STTelephonyStateProvider *)*(a1 + 40) _subscriptionSlotForContext:?];
  if (v3)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __69__STTelephonyStateProvider__updateCallForwardingIndicatorForContext___block_invoke_3;
    v7[3] = &__block_descriptor_40_e48_B32__0__CTXPCServiceSubscriptionContext_8Q16_B24l;
    v7[4] = v3;
    v4 = [v2 indexOfObjectPassingTest:v7];
    if (v4 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v5 = [v2 objectAtIndex:v4];
      if (v5)
      {
        v6 = v5;
        [(STTelephonyStateProvider *)*(a1 + 40) _queryCallForwardingStateForCTContext:v5];
      }
    }
  }
}

- (void)airplaneModeChanged
{
  if (self)
  {
    radiosPreferences = self->_radiosPreferences;
  }

  else
  {
    radiosPreferences = 0;
  }

  v4 = radiosPreferences;
  [(RadiosPreferences *)v4 refresh];
  airplaneMode = [(RadiosPreferences *)v4 airplaneMode];
  if (self)
  {
    internalQueue = self->_internalQueue;
  }

  else
  {
    internalQueue = 0;
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__STTelephonyStateProvider_airplaneModeChanged__block_invoke;
  v7[3] = &unk_279D35528;
  v8 = airplaneMode;
  v7[4] = self;
  dispatch_async(internalQueue, v7);
}

void __47__STTelephonyStateProvider_airplaneModeChanged__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  if (v2)
  {
    if (v1 != *(v2 + 20))
    {
      *(v2 + 20) = v1;
      v3 = *(a1 + 32);
      if (v3)
      {
        v4 = *(a1 + 40);
        v5 = *(v3 + 64);
        v6 = *(v3 + 72);
        if (v4)
        {
          [(STTelephonyStateProvider *)v3 _setCallForwardingIndicator:v5 inSubscriptionContext:?];
          if ([v5 isFakingService])
          {
            [(STTelephonyStateProvider *)v3 _stopFakeServiceForContext:v5];
          }

          [(STTelephonyStateProvider *)v3 _setCallForwardingIndicator:v6 inSubscriptionContext:?];
          if ([v6 isFakingService])
          {
            [(STTelephonyStateProvider *)v3 _stopFakeServiceForContext:v6];
          }
        }

        else
        {
          objc_initWeak(&location, v3);
          v7 = [v5 cachedCTRegistrationDisplayStatus];
          v8 = STTelephonyRegistrationStatusForStatus(v7);

          if (v8 - 3 > 0xFFFFFFFFFFFFFFFDLL)
          {
            v12 = [v5 subscriptionInfo];
            v13 = [v12 registrationStatus];

            [v5 setPretendingToSearch:0];
            [(STTelephonyStateProvider *)v3 _setRegistrationStatus:v8 inSubscriptionContext:v5];
            if (v13 == v8)
            {
              [(STTelephonyStateProvider *)v3 _updateCallForwardingIndicatorForContext:v5];
            }
          }

          else
          {
            [v5 setPretendingToSearch:1];
            [(STTelephonyStateProvider *)v3 _setRegistrationStatus:v5 inSubscriptionContext:?];
            v9 = dispatch_time(0, 15000000000);
            v10 = *(v3 + 32);
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = __51__STTelephonyStateProvider__airplaneModeDidChange___block_invoke;
            block[3] = &unk_279D35210;
            v25 = v5;
            v11 = v10;
            objc_copyWeak(&v26, &location);
            dispatch_after(v9, v11, block);

            objc_destroyWeak(&v26);
          }

          v14 = [v6 cachedCTRegistrationDisplayStatus];
          v15 = STTelephonyRegistrationStatusForStatus(v14);

          if (v15 - 3 > 0xFFFFFFFFFFFFFFFDLL)
          {
            v19 = [v6 subscriptionInfo];
            v20 = [v19 registrationStatus];

            [v6 setPretendingToSearch:0];
            [(STTelephonyStateProvider *)v3 _setRegistrationStatus:v15 inSubscriptionContext:v6];
            if (v20 == v15)
            {
              [(STTelephonyStateProvider *)v3 _updateCallForwardingIndicatorForContext:v6];
            }
          }

          else
          {
            [v6 setPretendingToSearch:1];
            [(STTelephonyStateProvider *)v3 _setRegistrationStatus:v6 inSubscriptionContext:?];
            v16 = dispatch_time(0, 15000000000);
            v17 = *(v3 + 32);
            v21[0] = MEMORY[0x277D85DD0];
            v21[1] = 3221225472;
            v21[2] = __51__STTelephonyStateProvider__airplaneModeDidChange___block_invoke_2;
            v21[3] = &unk_279D35210;
            v22 = v6;
            v18 = v17;
            objc_copyWeak(&v23, &location);
            dispatch_after(v16, v18, v21);

            objc_destroyWeak(&v23);
          }

          objc_destroyWeak(&location);
        }

        [(STTelephonyStateProvider *)v3 _updateDataConnectionTypeForContext:v5];
        [(STTelephonyStateProvider *)v3 _updateDataConnectionTypeForContext:v6];
      }
    }
  }
}

- (void)stateChanged:(id)changed
{
  changedCopy = changed;
  if (self)
  {
    observerQueue = self->_observerQueue;
  }

  else
  {
    observerQueue = 0;
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __41__STTelephonyStateProvider_stateChanged___block_invoke;
  v7[3] = &unk_279D34B18;
  v7[4] = self;
  v8 = changedCopy;
  v6 = changedCopy;
  dispatch_async(observerQueue, v7);
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(STTelephonyStateProvider *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = v3;
  if (self)
  {
    v5 = [v3 appendBool:self->_cachedDualSIMEnabled withName:@"dualSIMEnabled"];
    slot1SubscriptionContext = self->_slot1SubscriptionContext;
  }

  else
  {
    v13 = [v3 appendBool:0 withName:@"dualSIMEnabled"];
    slot1SubscriptionContext = 0;
  }

  subscriptionInfo = [(STTelephonySubscriptionContext *)slot1SubscriptionContext subscriptionInfo];
  succinctDescription = [subscriptionInfo succinctDescription];
  [v4 appendString:succinctDescription withName:@"slot1SubscriptionInfo"];

  if (self)
  {
    slot2SubscriptionContext = self->_slot2SubscriptionContext;
  }

  else
  {
    slot2SubscriptionContext = 0;
  }

  subscriptionInfo2 = [(STTelephonySubscriptionContext *)slot2SubscriptionContext subscriptionInfo];
  succinctDescription2 = [subscriptionInfo2 succinctDescription];
  [v4 appendString:succinctDescription2 withName:@"slot2SubscriptionInfo"];

  return v4;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(STTelephonyStateProvider *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v4 = MEMORY[0x277CF0C00];
  prefixCopy = prefix;
  v6 = [v4 builderWithObject:self];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __66__STTelephonyStateProvider_descriptionBuilderWithMultilinePrefix___block_invoke;
  v10[3] = &unk_279D34B18;
  v7 = v6;
  v11 = v7;
  selfCopy = self;
  [v7 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v10];

  v8 = v7;
  return v7;
}

void __66__STTelephonyStateProvider_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    LOBYTE(v3) = *(v3 + 17);
  }

  v4 = [v2 appendBool:v3 & 1 withName:@"dualSIMEnabled"];
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (v5)
  {
    v5 = v5[8];
  }

  v7 = v5;
  v8 = [v7 subscriptionInfo];
  v9 = [v6 appendObject:v8 withName:@"slot1SubscriptionInfo"];

  v11 = *(a1 + 32);
  v10 = *(a1 + 40);
  if (v10)
  {
    v10 = v10[9];
  }

  v14 = v10;
  v12 = [v14 subscriptionInfo];
  v13 = [v11 appendObject:v12 withName:@"slot2SubscriptionInfo"];
}

- (id)debugDescriptionWithMultilinePrefix:(id)prefix
{
  selfCopy = self;
  if (self)
  {
    v4 = MEMORY[0x277CF0C00];
    prefixCopy = prefix;
    v6 = [v4 builderWithObject:selfCopy];
    [v6 setUseDebugDescription:1];
    v10 = MEMORY[0x277D85DD0];
    v11 = 3221225472;
    v12 = __71__STTelephonyStateProvider_debugDescriptionBuilderWithMultilinePrefix___block_invoke;
    v13 = &unk_279D34B18;
    v7 = v6;
    v14 = v7;
    v15 = selfCopy;
    [v7 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:&v10];

    selfCopy = v7;
  }

  v8 = [(STTelephonyStateProvider *)selfCopy build:prefix];

  return v8;
}

void __71__STTelephonyStateProvider_debugDescriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    LOBYTE(v3) = *(v3 + 19);
  }

  v4 = [v2 appendBool:v3 & 1 withName:@"containsCellularRadio"];
  v5 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:{"hasCellularTelephony"), @"hasCellularTelephony"}];
  v6 = *(a1 + 40);
  if (v6)
  {
    LOBYTE(v6) = *(v6 + 18);
  }

  v7 = [*(a1 + 32) appendBool:v6 & 1 withName:@"radioModuleDead"];
  v8 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:{"isUsingStewieForSOS"), @"usingStewieForSOS"}];
  v9 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:{"isInactiveSOSEnabled"), @"inactiveSOSEnabled"}];
  v11 = *(a1 + 32);
  v10 = *(a1 + 40);
  if (v10)
  {
    v12 = *(v10 + 88);
  }

  else
  {
    v12 = 0;
  }

  v13 = STTelephonyCachedBooleanDebugName(v12);
  [v11 appendString:v13 withName:@"suppressesCellDataIndicator"];

  v15 = *(a1 + 32);
  v14 = *(a1 + 40);
  if (v14)
  {
    v16 = *(v14 + 96);
  }

  else
  {
    v16 = 0;
  }

  v17 = STTelephonyCachedBooleanDebugName(v16);
  [v15 appendString:v17 withName:@"suppressesCellIndicators"];

  v18 = *(a1 + 40);
  if (v18)
  {
    LOBYTE(v18) = *(v18 + 17);
  }

  v19 = [*(a1 + 32) appendBool:v18 & 1 withName:@"dualSIMEnabled"];
  v20 = *(a1 + 40);
  if (v20)
  {
    v21 = *(v20 + 64);
  }

  else
  {
    v21 = 0;
  }

  v22 = [*(a1 + 32) appendObject:v21 withName:@"slot1SubscriptionContext"];
  v23 = *(a1 + 40);
  if (v23)
  {
    v24 = *(v23 + 72);
  }

  else
  {
    v24 = 0;
  }

  v25 = [*(a1 + 32) appendObject:v24 withName:@"slot2SubscriptionContext"];
  v26 = *(a1 + 40);
  if (v26)
  {
    v27 = *(v26 + 80);
  }

  else
  {
    v27 = 0;
  }

  [*(a1 + 32) appendArraySection:v27 withName:@"cachedCTContexts" skipIfEmpty:0];
  v29 = *(a1 + 32);
  v28 = *(a1 + 40);
  if (v28)
  {
    v30 = *(v28 + 104);
  }

  else
  {
    v30 = 0;
  }

  v31 = STTelephonyCachedBooleanDebugName(v30);
  [v29 appendString:v31 withName:@"needsUserIdentificationModule"];
}

@end