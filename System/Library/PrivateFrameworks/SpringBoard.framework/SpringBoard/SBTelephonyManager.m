@interface SBTelephonyManager
+ (__CTServerConnection)defaultTelephonyCenter;
+ (id)sharedTelephonyManagerCreatingIfNecessary:(BOOL)a3;
- (BOOL)activeCallExists;
- (BOOL)emergencyCallSupported;
- (BOOL)hasNonCellularNetworkConnection;
- (BOOL)heldCallExists;
- (BOOL)inBargeCall;
- (BOOL)inCall;
- (BOOL)inCallUsingSpeakerOrReceiver;
- (BOOL)incomingCallExists;
- (BOOL)isCellDataSwitchingEnabled;
- (BOOL)isEmergencyCallActive;
- (BOOL)isEndpointOnCurrentDevice;
- (BOOL)isInEmergencyCallbackMode;
- (BOOL)isNetworkRegistrationEnabled;
- (BOOL)isTTYEnabled;
- (BOOL)isUsingSlowDataConnection;
- (BOOL)isUsingVPNConnection;
- (BOOL)multipleCallsExist;
- (BOOL)outgoingCallExists;
- (BOOL)toggleBargeCallState;
- (BOOL)updateLocale;
- (SBTelephonyManager)init;
- (SBTelephonyManager)initWithStateProvider:(id)a3 wifiDomain:(id)a4 bluetoothController:(id)a5;
- (__CTServerConnection)_serverConnection;
- (double)inCallDuration;
- (id)_backgroundQueryQueue;
- (id)_callsForService:(int)a3;
- (id)_phoneApp;
- (id)_primaryCarrierBundleInfo;
- (id)_primaryMobileEquipmentInfo;
- (id)_primarySubscriptionInfo;
- (id)_secondaryCarrierBundleInfo;
- (id)_secondaryCarrierBundleInfoIfEnabled;
- (id)_secondaryMobileEquipmentInfo;
- (id)_secondarySubscriptionInfo;
- (id)_secondarySubscriptionInfoIfEnabled;
- (id)_subscriptionInfoForCall:(id)a3;
- (id)carrierDisabledApplicationIDs;
- (id)displayedCall;
- (int64_t)_anySubscriptionSlotWithSIMPresent;
- (int64_t)_dataConnectedSubscriptionSlot;
- (int64_t)_dataPreferredSubscriptionSlotIfSIMPresent;
- (int64_t)_otherSubscriptionSlot:(int64_t)a3;
- (int64_t)_otherSubscriptionSlotIfSIMPresent:(int64_t)a3;
- (int64_t)_primarySubscriptionSlot;
- (int64_t)_secondarySubscriptionSlot;
- (int64_t)_secondarySubscriptionSlotIfEnabled;
- (int64_t)_subscriptionSlotIfSIMPresent:(int64_t)a3;
- (unint64_t)_callCountForService:(int)a3;
- (unint64_t)callCount;
- (unint64_t)dataConnectionAvailabilityWithCurrentCalls;
- (void)_avSystemControllerDidError:(id)a3;
- (void)_handleTelephonyDaemonRestart;
- (void)_performQueryInBackground:(id)a3 withMainQueueResultHandler:(id)a4;
- (void)_provisioningUpdateWithStatus:(int)a3 slot:(int64_t)a4;
- (void)_queue_noteWirelessModemDynamicStoreChanged;
- (void)_serverConnectionDidError:(id)a3;
- (void)_setCurrentActivationAlertItem:(id)a3;
- (void)_setIsInEmergencyCallbackMode:(unsigned __int8)a3;
- (void)_setIsNetworkTethering:(BOOL)a3 withNumberOfDevices:(int)a4;
- (void)_updateState;
- (void)callEventHandler:(id)a3;
- (void)carrierBundleInfoDidChangeForStateProvider:(id)a3 slot:(int64_t)a4;
- (void)disconnectAllCalls;
- (void)disconnectCallAndActivateHeld;
- (void)disconnectDisplayedCall;
- (void)disconnectIncomingCall;
- (void)dumpBasebandState:(id)a3;
- (void)handleCallControlFailure:(id)a3;
- (void)isUsingVPNConnection;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)preHeatDataLinkForDomains:(id)a3;
- (void)queue_setFastDormancySuspended:(BOOL)a3 withConnection:(__CTServerConnection *)a4;
- (void)setCellDataSwitchingEnabled:(BOOL)a3;
- (void)setFastDormancySuspended:(BOOL)a3;
- (void)setNetworkRegistrationEnabled:(BOOL)a3;
- (void)subscriptionInfoDidChangeForStateProvider:(id)a3 slot:(int64_t)a4;
- (void)swapCalls;
- (void)telephonyAudioChangeHandler;
- (void)updateCalls;
- (void)updateSpringBoard;
@end

@implementation SBTelephonyManager

- (int64_t)_dataConnectedSubscriptionSlot
{
  v3 = [(SBTelephonyManager *)self _subscriptionSlotIfSIMPresent:2];
  v4 = [(SBTelephonyManager *)self telephonyStateProvider];
  v5 = [v4 subscriptionInfoForSlot:v3];

  if ([v5 isProvidingDataConnection])
  {
    v6 = v3;
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (BOOL)isInEmergencyCallbackMode
{
  inEmergencyCallbackMode = self->_inEmergencyCallbackMode;
  if (inEmergencyCallbackMode < 0)
  {
    CTTelephonyCenterGetDefault();
    v4 = _CTServerConnectionGetEmergencyCallBackMode();
    if (HIDWORD(v4))
    {
      [(SBTelephonyManager *)self _serverConnectionDidError:v4];
    }

    else
    {
      [(SBTelephonyManager *)self _setIsInEmergencyCallbackMode:0];
    }

    inEmergencyCallbackMode = self->_inEmergencyCallbackMode;
  }

  return inEmergencyCallbackMode == 1;
}

- (BOOL)inCallUsingSpeakerOrReceiver
{
  if (![(SBTelephonyManager *)self inCall])
  {
    return 0;
  }

  v2 = [MEMORY[0x277D6EDF8] sharedInstance];
  v3 = [v2 routeController];
  v4 = [v3 pickedRoute];

  if ([v4 isReceiver] & 1) != 0 || (objc_msgSend(v4, "isSpeaker"))
  {
    v5 = 1;
  }

  else
  {
    v5 = [v4 isBluetoothLE];
  }

  return v5;
}

- (BOOL)inCall
{
  v3 = [MEMORY[0x277D6EDF8] sharedInstance];
  v4 = [v3 currentCallCount];

  if (!v4)
  {
    return 0;
  }

  if (v4 != 1)
  {
    return 1;
  }

  v5 = [(SBTelephonyManager *)self incomingCall];
  v6 = v5 == 0;

  return v6;
}

- (BOOL)hasNonCellularNetworkConnection
{
  v3 = [(SBTelephonyManager *)self wifiDomain];
  v4 = [v3 data];
  if ([v4 isWifiActive])
  {
    v5 = 1;
  }

  else
  {
    v6 = [(SBTelephonyManager *)self bluetoothController];
    if ([v6 tetheringConnected])
    {
      v5 = 1;
    }

    else
    {
      v5 = [(NWSystemPathMonitor *)self->_systemPathMonitor isEthernetPrimary];
    }
  }

  return v5;
}

- (BOOL)isUsingSlowDataConnection
{
  if ([(SBTelephonyManager *)self hasNonCellularNetworkConnection])
  {
    return 0;
  }

  v4 = [(SBTelephonyManager *)self telephonyStateProvider];
  v5 = [v4 subscriptionInfoForSlot:{-[SBTelephonyManager _dataConnectedSubscriptionSlot](self, "_dataConnectedSubscriptionSlot")}];

  v3 = ([v5 dataConnectionType] - 1) < 3;
  return v3;
}

- (unint64_t)dataConnectionAvailabilityWithCurrentCalls
{
  v23 = *MEMORY[0x277D85DE8];
  if ([(SBTelephonyManager *)self hasNonCellularNetworkConnection])
  {
    return 0;
  }

  v4 = [(SBTelephonyManager *)self _callsForService:1];
  if (![v4 count])
  {
    v3 = 0;
    goto LABEL_28;
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (!v6)
  {
    v3 = 0;
    goto LABEL_27;
  }

  v7 = v6;
  v17 = v4;
  v8 = *v19;
LABEL_6:
  v9 = 0;
  while (1)
  {
    if (*v19 != v8)
    {
      objc_enumerationMutation(v5);
    }

    v10 = *(*(&v18 + 1) + 8 * v9);
    v11 = [v10 provider];
    v12 = [v11 isTelephonyProvider];

    if (!v12)
    {
      goto LABEL_13;
    }

    v13 = [v10 providerContext];
    v14 = [v13 objectForKey:@"kCallSubType"];

    if (v14)
    {
      if (![v14 isEqualToString:@"kCallSubTypeWifi"])
      {
        break;
      }
    }

LABEL_13:
    if (v7 == ++v9)
    {
      v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v7)
      {
        goto LABEL_6;
      }

      v3 = 0;
      goto LABEL_26;
    }
  }

  v15 = [(SBTelephonyManager *)self _subscriptionInfoForCall:v10];

  if (!v15)
  {
    v3 = 0;
    v4 = v17;
    goto LABEL_28;
  }

  if ([v15 isProvidingDataConnection])
  {
    v3 = ([v15 dataConnectionType] - 15) < 0xFFFFFFFFFFFFFFF5;
  }

  else if ([(SBTelephonyManager *)self isCellDataSwitchingEnabled])
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  v5 = v15;
LABEL_26:
  v4 = v17;
LABEL_27:

LABEL_28:
  return v3;
}

- (BOOL)emergencyCallSupported
{
  v2 = self;
  v3 = [(SBTelephonyManager *)self callCount];
  LOBYTE(v2) = [(SBTelephonyManager *)v2 isEmergencyCallActive];
  v4 = MGGetBoolAnswer();
  v5 = (v3 == 0) | v2;
  if (!v4)
  {
    v5 = 0;
  }

  return v5 & 1;
}

- (unint64_t)callCount
{
  v2 = [MEMORY[0x277D6EDF8] sharedInstance];
  v3 = [v2 currentCallCount];

  return v3;
}

- (BOOL)isEmergencyCallActive
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D6EDF8] sharedInstance];
  [v2 currentCalls];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = v11 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v3);
        }

        if ([*(*(&v8 + 1) + 8 * i) isEmergency])
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

- (BOOL)incomingCallExists
{
  v2 = [(SBTelephonyManager *)self incomingCall];
  v3 = v2 != 0;

  return v3;
}

- (id)_backgroundQueryQueue
{
  if (_backgroundQueryQueue_onceToken != -1)
  {
    [SBTelephonyManager _backgroundQueryQueue];
  }

  v3 = _backgroundQueryQueue___queryQueue;

  return v3;
}

- (BOOL)outgoingCallExists
{
  v2 = [(SBTelephonyManager *)self outgoingCall];
  v3 = v2 != 0;

  return v3;
}

- (void)updateSpringBoard
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D6EDF8] sharedInstance];
  v3 = [v2 displayedCallFromCalls:0];

  v4 = +[SBLockScreenManager sharedInstanceIfExists];
  v5 = [v4 isUILocked];

  if (v5)
  {
    v6 = [MEMORY[0x277CCAB98] defaultCenter];
    [v6 postNotificationName:@"SBLockScreenTelephoneCallUINeedsUpdateNotification" object:0];
  }

  if (!v3)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = +[SBApplicationController sharedInstance];
    v8 = [v7 allApplications];

    v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
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

          [*(*(&v14 + 1) + 8 * v12++) setHasDisplayedLaunchAlert:0 forType:1];
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v10);
    }
  }

  v13 = +[SBIdleTimerGlobalCoordinator sharedInstance];
  [v13 resetIdleTimerForReason:@"TelephonyManager:UpdateSB"];
}

+ (__CTServerConnection)defaultTelephonyCenter
{
  CFRunLoopGetMain();
  CTTelephonyCenterSetDefaultRunloop();

  return CTTelephonyCenterGetDefault();
}

+ (id)sharedTelephonyManagerCreatingIfNecessary:(BOOL)a3
{
  v3 = __sharedTelephonyManager;
  if (__sharedTelephonyManager)
  {
    v4 = 1;
  }

  else
  {
    v4 = !a3;
  }

  if (!v4)
  {
    kdebug_trace();
    v5 = [SBApp systemStatusServer];
    if (!v5)
    {
      +[SBTelephonyManager sharedTelephonyManagerCreatingIfNecessary:];
    }

    v6 = [objc_alloc(MEMORY[0x277D6BBB0]) initWithServerHandle:v5];
    v7 = [SBApp telephonyStateProvider];
    if (!v7)
    {
      +[SBTelephonyManager sharedTelephonyManagerCreatingIfNecessary:];
    }

    v8 = [SBTelephonyManager alloc];
    v9 = +[SBBluetoothController sharedInstance];
    v10 = [(SBTelephonyManager *)v8 initWithStateProvider:v7 wifiDomain:v6 bluetoothController:v9];
    v11 = __sharedTelephonyManager;
    __sharedTelephonyManager = v10;

    kdebug_trace();
    v3 = __sharedTelephonyManager;
  }

  return v3;
}

- (SBTelephonyManager)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"SBTelephonyManager.m" lineNumber:213 description:@"Use initWithStateProvider:wifiDomain:bluetoothController:"];

  return [(SBTelephonyManager *)self initWithStateProvider:0 wifiDomain:0 bluetoothController:0];
}

- (SBTelephonyManager)initWithStateProvider:(id)a3 wifiDomain:(id)a4 bluetoothController:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v50.receiver = self;
  v50.super_class = SBTelephonyManager;
  v12 = [(SBTelephonyManager *)&v50 init];
  v13 = __sharedTelephonyManager;
  __sharedTelephonyManager = v12;

  if (v12)
  {
    objc_storeStrong(&v12->_telephonyStateProvider, a3);
    objc_storeStrong(&v12->_wifiDomain, a4);
    objc_storeStrong(&v12->_bluetoothController, a5);
    v12->_containsCellularRadio = MGGetBoolAnswer();
    v12->_hasCellularTelephony = MGGetBoolAnswer();
    v12->_hasCellularData = MGGetBoolAnswer();
    v12->_inEmergencyCallbackMode = -1;
    +[SBTelephonyManager defaultTelephonyCenter];
    v14 = [MEMORY[0x277CCAB98] defaultCenter];
    if (v12->_containsCellularRadio)
    {
      CTTelephonyCenterAddObserver();
      CTTelephonyCenterAddObserver();
      CTTelephonyCenterAddObserver();
    }

    if (v12->_hasCellularTelephony)
    {
      CTTelephonyCenterAddObserver();
    }

    [v14 addObserver:v12 selector:sel_callEventHandler_ name:*MEMORY[0x277D6EFF0] object:0];
    [v14 addObserver:v12 selector:sel_callEventHandler_ name:*MEMORY[0x277D6EFE0] object:0];
    [v14 addObserver:v12 selector:sel_handleCallControlFailure_ name:*MEMORY[0x277D6F008] object:0];
    [v14 addObserver:v12 selector:sel_updateSpringBoard name:*MEMORY[0x277D6F0B0] object:0];
    [v14 addObserver:v12 selector:sel_telephonyAudioChangeHandler name:*MEMORY[0x277D6EF60] object:0];
    v15 = objc_alloc(MEMORY[0x277CC37B0]);
    v16 = [(SBTelephonyManager *)v12 _backgroundQueryQueue];
    v17 = [v15 initWithQueue:v16];
    coreTelephonyClient = v12->_coreTelephonyClient;
    v12->_coreTelephonyClient = v17;

    if (MGGetBoolAnswer())
    {
      CTTelephonyCenterAddObserver();
      CTTelephonyCenterAddObserver();
    }

    CTTelephonyCenterAddObserver();
    v19 = dispatch_get_global_queue(-2, 0);
    dispatch_async(v19, &__block_literal_global_18);

    v20 = [getRTTSettingsClass() sharedInstance];
    [v20 registerUpdateBlock:&__block_literal_global_92 forRetrieveSelector:sel_TTYSoftwareEnabled withListener:v12];
    [v20 registerUpdateBlock:&__block_literal_global_92 forRetrieveSelector:sel_TTYHardwareEnabled withListener:v12];
    v21 = +[SBLockdownManager sharedInstance];
    v22 = [v21 brickedDevice];

    if ((v22 & 1) == 0)
    {
      [(SBTelephonyManager *)v12 setNetworkRegistrationEnabled:1];
    }

    [(STTelephonyStateProvider *)v12->_telephonyStateProvider addObserver:v12];
    [(SBTelephonyManager *)v12 _updateState];
    v23 = [MEMORY[0x277CCAB98] defaultCenter];
    objc_initWeak(&location, v23);

    objc_initWeak(&from, v12);
    v42 = 0;
    v43 = &v42;
    v44 = 0x3032000000;
    v45 = __Block_byref_object_copy__5;
    v46 = __Block_byref_object_dispose__5;
    v47 = 0;
    v24 = [MEMORY[0x277CCABD8] mainQueue];
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __75__SBTelephonyManager_initWithStateProvider_wifiDomain_bluetoothController___block_invoke_99;
    v39[3] = &unk_2783ABBE8;
    objc_copyWeak(&v40, &from);
    objc_copyWeak(&v41, &location);
    v39[4] = &v42;
    v25 = [v14 addObserverForName:@"SBBootCompleteNotification" object:0 queue:v24 usingBlock:v39];
    v26 = v43[5];
    v43[5] = v25;

    Serial = BSDispatchQueueCreateSerial();
    wirelessModemDynamicStoreQueue = v12->_wirelessModemDynamicStoreQueue;
    v12->_wirelessModemDynamicStoreQueue = Serial;

    v29 = v12->_wirelessModemDynamicStoreQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __75__SBTelephonyManager_initWithStateProvider_wifiDomain_bluetoothController___block_invoke_2_104;
    block[3] = &unk_2783A8C18;
    v30 = v12;
    v38 = v30;
    dispatch_async(v29, block);
    v31 = +[SBDefaults externalDefaults];
    v32 = [v31 globalDefaults];
    [v32 removeFormattedPhoneNumberFromGlobalPreferences];

    v33 = [MEMORY[0x277CD9208] sharedSystemPathMonitor];
    v34 = v30[12];
    v30[12] = v33;

    [v30[12] addObserver:v30 forKeyPath:@"vpnActive" options:5 context:0];
    _Block_object_dispose(&v42, 8);

    objc_destroyWeak(&v41);
    objc_destroyWeak(&v40);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }

  v35 = [MEMORY[0x277D6EDF8] sharedInstance];

  return v12;
}

void __75__SBTelephonyManager_initWithStateProvider_wifiDomain_bluetoothController___block_invoke_2()
{
  v0 = [MEMORY[0x277CCAB98] defaultCenter];
  [v0 postNotificationName:@"SBTTYChangedNotification" object:0 userInfo:0];
}

void __75__SBTelephonyManager_initWithStateProvider_wifiDomain_bluetoothController___block_invoke_99(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained updateCalls];

  v3 = objc_loadWeakRetained((a1 + 48));
  [v3 removeObserver:*(*(*(a1 + 32) + 8) + 40)];
}

void __75__SBTelephonyManager_initWithStateProvider_wifiDomain_bluetoothController___block_invoke_2_104(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  if (_NETRBClientCreate())
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    *cStr = 0u;
    v10 = 0u;
    if (_NETRBClientGetDynamicStoreKey())
    {
      *(*(a1 + 32) + 40) = CFStringCreateWithCString(*MEMORY[0x277CBECE8], cStr, 0x8000100u);
      if (*(*(a1 + 32) + 40))
      {
LABEL_13:
        _NETRBClientDestroy();
        goto LABEL_14;
      }

      v2 = SBLogCommon();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
      {
        *v7 = 0;
        v3 = "_NETRBClientGetDynamicStoreKey failed to convert to CFStringRef";
LABEL_11:
        _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_INFO, v3, v7, 2u);
      }
    }

    else
    {
      v2 = SBLogCommon();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
      {
        *v7 = 0;
        v3 = "_NETRBClientGetDynamicStoreKey failed";
        goto LABEL_11;
      }
    }

    goto LABEL_13;
  }

  v4 = SBLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *cStr = 0;
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_INFO, "_NETRBClientCreate failed", cStr, 2u);
  }

LABEL_14:
  if (*(*(a1 + 32) + 40))
  {
    *(*(a1 + 32) + 32) = SCDynamicStoreCreate(*MEMORY[0x277CBECE8], @"com.apple.springboard", _WirelessModemDynamicStoreCallBack, 0);
    v5 = *(a1 + 32);
    v6 = *(v5 + 32);
    v8 = *(v5 + 40);
    SCDynamicStoreSetNotificationKeys(v6, [MEMORY[0x277CBEA60] arrayWithObjects:&v8 count:1], 0);
    SCDynamicStoreSetDispatchQueue(*(*(a1 + 32) + 32), *(*(a1 + 32) + 24));
    [*(a1 + 32) _queue_noteWirelessModemDynamicStoreChanged];
  }
}

void __43__SBTelephonyManager__backgroundQueryQueue__block_invoke()
{
  Serial = BSDispatchQueueCreateSerial();
  v1 = _backgroundQueryQueue___queryQueue;
  _backgroundQueryQueue___queryQueue = Serial;
}

- (void)_performQueryInBackground:(id)a3 withMainQueueResultHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __75__SBTelephonyManager__performQueryInBackground_withMainQueueResultHandler___block_invoke;
  v14[3] = &unk_2783A8C18;
  v14[4] = self;
  if (_performQueryInBackground_withMainQueueResultHandler__onceToken != -1)
  {
    dispatch_once(&_performQueryInBackground_withMainQueueResultHandler__onceToken, v14);
  }

  v8 = [(SBTelephonyManager *)self _backgroundQueryQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __75__SBTelephonyManager__performQueryInBackground_withMainQueueResultHandler___block_invoke_2;
  block[3] = &unk_2783AAE68;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __75__SBTelephonyManager__performQueryInBackground_withMainQueueResultHandler___block_invoke(uint64_t a1)
{
  _performQueryInBackground_withMainQueueResultHandler____queryServerConnection = _CTServerConnectionCreateWithIdentifier();
  v2 = [*(a1 + 32) _backgroundQueryQueue];
  _CTServerConnectionSetTargetQueue();
}

void __75__SBTelephonyManager__performQueryInBackground_withMainQueueResultHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))(v2, _performQueryInBackground_withMainQueueResultHandler____queryServerConnection);
  }

  if (*(a1 + 40))
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __75__SBTelephonyManager__performQueryInBackground_withMainQueueResultHandler___block_invoke_3;
    block[3] = &unk_2783A9348;
    v4 = *(a1 + 40);
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

- (__CTServerConnection)_serverConnection
{
  result = self->_serverConnection;
  if (!result)
  {
    result = _CTServerConnectionCreateWithIdentifier();
    self->_serverConnection = result;
    if (!result)
    {
      v4 = SBLogCommon();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        [(SBTelephonyManager *)v4 _serverConnection];
      }

      return self->_serverConnection;
    }
  }

  return result;
}

- (void)_avSystemControllerDidError:(id)a3
{
  v3 = a3;
  v4 = SBLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [SBTelephonyManager _avSystemControllerDidError:];
  }
}

- (void)_serverConnectionDidError:(id)a3
{
  v4 = SBLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [SBTelephonyManager _serverConnectionDidError:];
  }

  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel__handleTelephonyDaemonRestart object:0];
  v5 = [MEMORY[0x277CBEA60] arrayWithObject:*MEMORY[0x277CBE738]];
  [(SBTelephonyManager *)self performSelector:sel__handleTelephonyDaemonRestart withObject:0 afterDelay:v5 inModes:1.0];
}

- (void)_handleTelephonyDaemonRestart
{
  v19 = *MEMORY[0x277D85DE8];
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel__handleTelephonyDaemonRestart object:0];
  serverConnection = self->_serverConnection;
  if (serverConnection)
  {
    CFRelease(serverConnection);
    self->_serverConnection = 0;
  }

  [(SBTelephonyManager *)self _serverConnection];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __51__SBTelephonyManager__handleTelephonyDaemonRestart__block_invoke;
  v17[3] = &unk_2783ABC10;
  v17[4] = self;
  [(SBTelephonyManager *)self _performQueryInBackground:v17 withMainQueueResultHandler:0];
  [(SBTelephonyManager *)self handleCallControlFailure:0];
  [(SBTelephonyManager *)self _updateState];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [SBApp windowSceneManager];
  v5 = [v4 connectedWindowScenes];

  v6 = [v5 countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v13 + 1) + 8 * v9) iconController];
        v11 = [v10 iconManager];
        [v11 setIdleModeText:0];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v13 objects:v18 count:16];
    }

    while (v7);
  }

  v12 = [MEMORY[0x277CCAB98] defaultCenter];
  [v12 postNotificationName:*MEMORY[0x277D67AB8] object:0];
}

void *__51__SBTelephonyManager__handleTelephonyDaemonRestart__block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result[11])
  {
    [result queue_setFastDormancySuspended:0 withConnection:a2];
    v5 = *(a1 + 32);

    return [v5 queue_setFastDormancySuspended:1 withConnection:a2];
  }

  return result;
}

- (double)inCallDuration
{
  v2 = [MEMORY[0x277D6EDF8] sharedInstance];
  v3 = [v2 displayedCallFromCalls:0];

  v4 = -1.0;
  if (v3 && [v3 status] != 3)
  {
    [v3 callDuration];
    v4 = v5;
  }

  return v4;
}

- (id)_phoneApp
{
  v2 = +[SBApplicationController sharedInstance];
  v3 = [v2 mobilePhone];

  return v3;
}

- (void)queue_setFastDormancySuspended:(BOOL)a3 withConnection:(__CTServerConnection *)a4
{
  p_queue_fastDormancySuspendAssertion = &self->_queue_fastDormancySuspendAssertion;
  queue_fastDormancySuspendAssertion = self->_queue_fastDormancySuspendAssertion;
  if (a3)
  {
    if (a4)
    {
      if (!queue_fastDormancySuspendAssertion)
      {
        v6 = _CTServerConnectionDormancySuspendAssertionCreate();
        v7 = HIDWORD(v6);
        if (HIDWORD(v6))
        {
          v8 = v6;
          v9 = SBLogCommon();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            [(SBTelephonyManager *)v8 queue_setFastDormancySuspended:v7 withConnection:v9];
          }
        }
      }
    }
  }

  else if (queue_fastDormancySuspendAssertion)
  {
    CFRelease(queue_fastDormancySuspendAssertion);
    *p_queue_fastDormancySuspendAssertion = 0;
  }
}

- (void)setFastDormancySuspended:(BOOL)a3
{
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBTelephonyManager setFastDormancySuspended:];
  }

  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __47__SBTelephonyManager_setFastDormancySuspended___block_invoke;
  v5[3] = &unk_2783ABC38;
  v5[4] = self;
  v6 = a3;
  [(SBTelephonyManager *)self _performQueryInBackground:v5 withMainQueueResultHandler:0];
}

- (void)updateCalls
{
  v26 = *MEMORY[0x277D85DE8];
  [(SBTelephonyManager *)self setIncomingCall:0];
  [(SBTelephonyManager *)self setActiveCall:0];
  [(SBTelephonyManager *)self setHeldCall:0];
  [(SBTelephonyManager *)self setOutgoingCall:0];
  v3 = 0x277D6E000uLL;
  v4 = [MEMORY[0x277D6EDF8] sharedInstance];
  v5 = [v4 currentCallCount];

  if (v5)
  {
    v6 = [MEMORY[0x277D6EDF8] sharedInstance];
    v7 = [v6 currentCalls];

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = 0;
      v12 = *v22;
      v13 = *MEMORY[0x277D6EFF0];
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v22 != v12)
          {
            objc_enumerationMutation(v8);
          }

          v15 = *(*(&v21 + 1) + 8 * i);
          v16 = [v15 status];
          if (v16 > 2)
          {
            if (v16 == 3)
            {
              [(SBTelephonyManager *)self setOutgoingCall:v15];
            }

            else if (v16 == 4)
            {
              v18 = [MEMORY[0x277CCAB88] notificationWithName:v13 object:v15];
              [(SBTelephonyManager *)self callEventHandler:v18];

              v11 = 1;
            }
          }

          else if (v16 == 1)
          {
            v19 = [(SBTelephonyManager *)self activeCall];

            if (!v19)
            {
              [(SBTelephonyManager *)self setActiveCall:v15];
            }
          }

          else if (v16 == 2)
          {
            v17 = [(SBTelephonyManager *)self heldCall];

            if (!v17)
            {
              [(SBTelephonyManager *)self setHeldCall:v15];
            }
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v10);

      v3 = 0x277D6E000;
      if (v11)
      {
        goto LABEL_24;
      }
    }

    else
    {
    }

    sInTelephonyCall = 1;
    SBUpdateCallState();
LABEL_24:
  }

  v20 = [*(v3 + 3576) sharedInstance];
  __LastUpdatedCallCount = [v20 currentCallCount];

  [(SBTelephonyManager *)self updateSpringBoard];
}

- (void)_updateState
{
  v3 = [(SBTelephonyManager *)self telephonyStateProvider];
  v11 = [v3 subscriptionInfoForSlot:1];

  v4 = [(SBTelephonyManager *)self telephonyStateProvider];
  v5 = [v4 subscriptionInfoForSlot:2];

  v6 = [v11 lastKnownNetworkCountryCode];
  [(SBTelephonyManager *)self setCachedSlot1CountryCode:v6];

  v7 = [v11 SIMStatus];
  [(SBTelephonyManager *)self setCachedSlot1SIMStatus:v7];

  v8 = [v5 lastKnownNetworkCountryCode];
  [(SBTelephonyManager *)self setCachedSlot2CountryCode:v8];

  v9 = [v5 SIMStatus];
  [(SBTelephonyManager *)self setCachedSlot2SIMStatus:v9];

  [(SBTelephonyManager *)self updateLocale];
  [(SBTelephonyManager *)self _updateNetworkLocale];
  v10 = [MEMORY[0x277CCAB98] defaultCenter];
  [v10 postNotificationName:@"SBTTYChangedNotification" object:0 userInfo:0];
}

- (BOOL)updateLocale
{
  if (self->_hasCellularData)
  {
    *buf = 0;
    v7 = buf;
    v8 = 0x2020000000;
    v9 = 0;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __34__SBTelephonyManager_updateLocale__block_invoke;
    v5[3] = &unk_2783ABC60;
    v5[4] = buf;
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __34__SBTelephonyManager_updateLocale__block_invoke_3;
    v4[3] = &unk_2783A8CE0;
    v4[4] = self;
    v4[5] = buf;
    _updateLocale(self, v5, &__block_literal_global_144, v4);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v2 = SBLogStatusBarish();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_DEFAULT, "[SBTelephonyManager] updateLocale: clearing country code info for non-cellular device", buf, 2u);
    }

    CPPhoneNumberSetActiveCountryCode();
    CPPhoneNumberSetHomeCountryCode();
    CPPhoneNumberSetNetworkCountryCode();
  }

  return 0;
}

void __34__SBTelephonyManager_updateLocale__block_invoke_3(uint64_t a1)
{
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    active = CPPhoneNumberCopyActiveCountryCodeNoDefault();

    if (active)
    {
      v3 = SBLogStatusBarish();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        *v6 = 0;
        _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "[SBTelephonyManager] updateLocale: clearing active country code for eSIM with none/many country codes", v6, 2u);
      }

      CPPhoneNumberSetActiveCountryCode();
    }
  }

  v4 = [*(a1 + 32) _primaryCarrierBundleInfo];
  v5 = [v4 homeCountryCode];

  if (!v5)
  {
    v5 = CPPhoneNumberCopyActiveCountryCode();
  }

  CPPhoneNumberSetHomeCountryCode();
}

uint64_t __42__SBTelephonyManager__updateNetworkLocale__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = SBLogStatusBarish();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    v6 = a2;
    _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "[SBTelephonyManager] _updateNetworkLocale: got updated country code: %{public}@", &v5, 0xCu);
  }

  return CPPhoneNumberSetNetworkCountryCode();
}

- (void)handleCallControlFailure:(id)a3
{
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBTelephonyManager handleCallControlFailure:];
  }

  [(SBTelephonyManager *)self updateCalls];
  v4 = [(SBTelephonyManager *)self activeCall];
  if (v4)
  {
    sInTelephonyCall = 1;
    SBUpdateCallState();
  }

  else
  {
    v5 = [(SBTelephonyManager *)self outgoingCall];
    sInTelephonyCall = v5 != 0;
    SBUpdateCallState();
  }

  v6 = [MEMORY[0x277CCAB98] defaultCenter];
  [v6 postNotificationName:@"SBCallCountChangedNotification" object:0 userInfo:0];
}

- (void)callEventHandler:(id)a3
{
  v39 = a3;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBTelephonyManager callEventHandler:];
  }

  v4 = [v39 object];
  v5 = [v4 status];
  v6 = [MEMORY[0x277D6EDF8] sharedInstance];
  v7 = [v6 currentCallCount];

  v8 = [(SBTelephonyManager *)self incomingCall];

  if (v8)
  {
    v8 = [(SBTelephonyManager *)self incomingCall];
    v9 = [(SBTelephonyManager *)self incomingCall];
    v10 = [v9 status];

    if (v10 != 4)
    {
      [(SBTelephonyManager *)self setIncomingCall:0];
    }
  }

  v11 = 0;
  if (v5 <= 2)
  {
    if (v5 == 1)
    {
      [(SBTelephonyManager *)self setActiveCall:v4];
      v11 = 0;
      v38 = 1;
      v18 = 1;
      goto LABEL_32;
    }

    v12 = 0;
    v13 = 0;
    if (v5 == 2)
    {
      [(SBTelephonyManager *)self setHeldCall:v4];
      v11 = 0;
      v12 = 0;
      v13 = 0;
    }
  }

  else
  {
    if (v5 == 6)
    {
      if (v8 || v7)
      {
        v11 = 0;
        v12 = 1;
        v13 = 0;
        if (v7 > 1 || !v8)
        {
          goto LABEL_26;
        }

        if ([v4 isEqual:v8])
        {
          v11 = 0;
          v13 = 0;
          v12 = 1;
          goto LABEL_26;
        }
      }

      v11 = 0;
      v12 = 1;
      v13 = 1;
      goto LABEL_26;
    }

    if (v5 != 4)
    {
      v12 = 0;
      v13 = 0;
      if (v5 != 3)
      {
        goto LABEL_26;
      }

      v14 = [(SBTelephonyManager *)self outgoingCall];

      if (v14)
      {
        v15 = [(SBTelephonyManager *)self outgoingCall];
        v16 = [v15 isEqual:v4];

        if (v16)
        {
          goto LABEL_54;
        }

        [(SBTelephonyManager *)self setOutgoingCall:0];
      }

      [(SBTelephonyManager *)self setOutgoingCall:v4];
      v11 = 1;
    }

    v13 = 0;
    v12 = v11;
    v11 = v7 == 1 && v5 == 3;
  }

LABEL_26:
  HIDWORD(v38) = v13;
  v18 = v12;
  v19 = [(SBTelephonyManager *)self activeCall];
  if (v19)
  {
    v20 = v19;
    v21 = [(SBTelephonyManager *)self activeCall];
    v22 = [v21 isEqual:v4];

    if (v22)
    {
      v23 = [MEMORY[0x277D6EDF8] sharedInstance];
      v24 = [v23 callWithStatus:1];
      [(SBTelephonyManager *)self setActiveCall:v24];
    }
  }

  LODWORD(v38) = 0;
  if (v5 != 2)
  {
LABEL_32:
    v25 = [(SBTelephonyManager *)self heldCall];
    if (v25)
    {
      v26 = v25;
      v27 = [(SBTelephonyManager *)self heldCall];
      v28 = [v27 isEqual:v4];

      if (v28)
      {
        v29 = [MEMORY[0x277D6EDF8] sharedInstance];
        v30 = [v29 callWithStatus:2];
        [(SBTelephonyManager *)self setHeldCall:v30];
      }
    }

    if (v5 == 3)
    {
      goto LABEL_39;
    }
  }

  v31 = [(SBTelephonyManager *)self outgoingCall];
  if (v31)
  {
    v32 = v31;
    v33 = [(SBTelephonyManager *)self outgoingCall];
    v34 = [v33 isEqual:v4];

    if (v34)
    {
      [(SBTelephonyManager *)self setOutgoingCall:0];
    }
  }

LABEL_39:
  if (v8 && [v4 isEqual:v8])
  {
    if (v5 != 4)
    {
      v35 = v38;
      if (v7 != 1)
      {
        v35 = 0;
      }

      v11 |= v35;
    }
  }

  else if (v5 == 4)
  {
    [(SBTelephonyManager *)self setIncomingCall:v4];
    v36 = [MEMORY[0x277CCAB98] defaultCenter];
    [v36 postNotificationName:*MEMORY[0x277D67A70] object:v4];
  }

  if ((HIDWORD(v38) | v11))
  {
    sInTelephonyCall = v11 & 1;
    SBUpdateCallState();
  }

  if (__LastUpdatedCallCount != v7)
  {
    v37 = [MEMORY[0x277CCAB98] defaultCenter];
    [v37 postNotificationName:@"SBCallCountChangedNotification" object:0 userInfo:0];
  }

  if (v18)
  {
    [(SBTelephonyManager *)self updateSpringBoard];
  }

  __LastUpdatedCallCount = v7;
LABEL_54:
}

- (void)telephonyAudioChangeHandler
{
  if ([(SBTelephonyManager *)self inCall])
  {
    v2 = +[SBIdleTimerGlobalCoordinator sharedInstance];
    [v2 resetIdleTimerForReason:@"TelephonyManager:AudioChange"];
  }
}

- (id)displayedCall
{
  v3 = [(SBTelephonyManager *)self incomingCall];
  if (!v3)
  {
    v3 = [(SBTelephonyManager *)self outgoingCall];
    if (!v3)
    {
      v3 = [(SBTelephonyManager *)self activeCall];
    }
  }

  return v3;
}

- (BOOL)activeCallExists
{
  v2 = [(SBTelephonyManager *)self activeCall];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)heldCallExists
{
  v2 = [(SBTelephonyManager *)self heldCall];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)multipleCallsExist
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D6EDF8] sharedInstance];
  v3 = [v2 currentCallCount];

  if (v3 < 2)
  {
    LOBYTE(v7) = 0;
  }

  else
  {
    v4 = [MEMORY[0x277D6EDF8] sharedInstance];
    v5 = [v4 currentCalls];

    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v7)
    {
      v8 = *v12;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(v6);
          }

          if (![*(*(&v11 + 1) + 8 * i) isConferenced])
          {
            LOBYTE(v7) = 1;
            goto LABEL_13;
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  return v7;
}

- (BOOL)isCellDataSwitchingEnabled
{
  v2 = [(SBTelephonyManager *)self coreTelephonyClient];
  v3 = [v2 getSupportDynamicDataSimSwitchOnBBCallSync:0];

  return v3;
}

- (void)setCellDataSwitchingEnabled:(BOOL)a3
{
  v3 = a3;
  v5 = [(SBTelephonyManager *)self coreTelephonyClient];
  v4 = [v5 setSupportDynamicDataSimSwitchOnBBCall:v3];
}

- (id)_subscriptionInfoForCall:(id)a3
{
  v4 = [a3 localSenderIdentity];
  v5 = [v4 UUID];
  v6 = [v5 UUIDString];

  v7 = [(SBTelephonyManager *)self telephonyStateProvider];
  if ([v7 isSIMPresentForSlot:1])
  {
    v8 = [v7 subscriptionInfoForSlot:1];
    v9 = [v8 identifier];
    v10 = [v9 isEqualToString:v6];

    if (v10)
    {
      goto LABEL_8;
    }
  }

  if ([v7 isSIMPresentForSlot:2])
  {
    v8 = [v7 subscriptionInfoForSlot:2];
    v11 = [v8 identifier];
    v12 = [v11 isEqualToString:v6];

    if (v12)
    {
      goto LABEL_8;
    }
  }

  v8 = 0;
LABEL_8:

  return v8;
}

- (id)_callsForService:(int)a3
{
  v4 = [MEMORY[0x277D6EDF8] sharedInstance];
  v5 = [v4 currentCalls];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __39__SBTelephonyManager__callsForService___block_invoke;
  v12[3] = &__block_descriptor_36_e23_B32__0__TUCall_8Q16_B24l;
  v13 = a3;
  v6 = [v5 indexesOfObjectsPassingTest:v12];
  v7 = [v5 objectsAtIndexes:v6];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEA60]);
  }

  v10 = v9;

  return v10;
}

- (unint64_t)_callCountForService:(int)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277D6EDF8] sharedInstance];
  v5 = [v4 currentCalls];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v5);
        }

        if ([*(*(&v12 + 1) + 8 * i) service] == a3)
        {
          ++v8;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)inBargeCall
{
  v2 = [MEMORY[0x277D6EDF8] sharedInstance];
  v3 = [v2 bargeCalls];
  v4 = [v3 count] != 0;

  return v4;
}

- (BOOL)toggleBargeCallState
{
  v2 = [MEMORY[0x277D6EDF8] sharedInstance];
  v3 = [v2 frontmostBargeCall];

  v4 = [MEMORY[0x277D6EDF8] sharedInstance];
  if (v3 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v5 = [v4 handleWiredHeadsetFlashButtonForBargeCalls];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isEndpointOnCurrentDevice
{
  v2 = [MEMORY[0x277D6EDF8] sharedInstance];
  v3 = [v2 anyCallIsEndpointOnCurrentDevice];

  return v3;
}

- (void)disconnectIncomingCall
{
  v4 = [MEMORY[0x277D6EDF8] sharedInstance];
  v3 = [(SBTelephonyManager *)self incomingCall];
  [v4 disconnectCall:v3];
}

- (void)disconnectDisplayedCall
{
  v4 = [MEMORY[0x277D6EDF8] sharedInstance];
  v3 = [(SBTelephonyManager *)self displayedCall];
  [v4 disconnectCall:v3];
}

- (void)swapCalls
{
  v3 = [(SBTelephonyManager *)self heldCall];
  if (v3)
  {
    v4 = v3;
    v5 = [(SBTelephonyManager *)self activeCall];

    if (v5)
    {
      v7 = [MEMORY[0x277D6EDF8] sharedInstance];
      v6 = [(SBTelephonyManager *)self heldCall];
      [v7 unholdCall:v6];
    }
  }
}

- (void)disconnectAllCalls
{
  if ([(SBTelephonyManager *)self inCall])
  {
    v2 = [MEMORY[0x277D6EDF8] sharedInstance];
    [v2 disconnectAllCalls];
  }
}

- (void)disconnectCallAndActivateHeld
{
  v2 = [MEMORY[0x277D6EDF8] sharedInstance];
  [v2 disconnectCurrentCallAndActivateHeld];
}

- (void)dumpBasebandState:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(SBTelephonyManager *)self _serverConnection])
  {
    v5 = SBLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = v4;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Dumping baseband state: %@", &v7, 0xCu);
    }

    v6 = _CTServerConnectionDumpBasebandState();
    if (HIDWORD(v6))
    {
      [(SBTelephonyManager *)self _serverConnectionDidError:v6];
    }
  }
}

- (BOOL)isNetworkRegistrationEnabled
{
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  v3 = NSHomeDirectory();
  v4 = [v3 stringByAppendingPathComponent:@"SBNetworkRegistrationCookie"];
  v5 = [v2 fileExistsAtPath:v4];

  return v5 ^ 1;
}

- (void)setNetworkRegistrationEnabled:(BOOL)a3
{
  if (a3)
  {
    v4 = [MEMORY[0x277CCAA00] defaultManager];
    v5 = NSHomeDirectory();
    v6 = [v5 stringByAppendingPathComponent:@"SBNetworkRegistrationCookie"];
    [v4 removeItemAtPath:v6 error:0];

    if (![(SBTelephonyManager *)self _serverConnection])
    {
      return;
    }

    v7 = _CTServerConnectionEnableRegistration();
  }

  else
  {
    v8 = [MEMORY[0x277CBEA90] data];
    v9 = NSHomeDirectory();
    v10 = [v9 stringByAppendingPathComponent:@"SBNetworkRegistrationCookie"];
    [v8 writeToFile:v10 options:0x10000000 error:0];

    if (![(SBTelephonyManager *)self _serverConnection])
    {
      return;
    }

    v7 = _CTServerConnectionDisableRegistration();
  }

  if (HIDWORD(v7))
  {

    [(SBTelephonyManager *)self _serverConnectionDidError:v7];
  }
}

- (BOOL)isTTYEnabled
{
  v2 = [getRTTSettingsClass() sharedInstance];
  if ([v2 TTYSoftwareEnabled])
  {
    v3 = 1;
  }

  else
  {
    v3 = [v2 TTYHardwareEnabled];
  }

  return v3;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v7 = [a5 objectForKey:{*MEMORY[0x277CCA2F0], a4}];
  v8 = [v7 BOOLValue];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __69__SBTelephonyManager_observeValueForKeyPath_ofObject_change_context___block_invoke;
  v9[3] = &unk_2783A9F58;
  v9[4] = self;
  v10 = v8;
  dispatch_async(MEMORY[0x277D85CD0], v9);
}

void __69__SBTelephonyManager_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) isUsingVPNConnection];
  v3 = *(a1 + 40);
  if (v3 != v2)
  {
    *(*(a1 + 32) + 19) = *(*(a1 + 32) + 19) & 0xFE | v3;
    v4 = SBLogStatusBarish();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      [*(a1 + 32) isUsingVPNConnection];
      v5 = NSStringFromBOOL();
      v7 = 138543362;
      v8 = v5;
      _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "SBTelephonyManager updated usingVPN to %{public}@", &v7, 0xCu);
    }

    v6 = [MEMORY[0x277CCAB98] defaultCenter];
    [v6 postNotificationName:@"SBVPNConnectionChangedNotification" object:0 userInfo:0];
  }
}

- (BOOL)isUsingVPNConnection
{
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBTelephonyManager isUsingVPNConnection];
  }

  return *(self + 19) & 1;
}

- (void)_setCurrentActivationAlertItem:(id)a3
{
  v5 = a3;
  activationAlertItem = self->_activationAlertItem;
  p_activationAlertItem = &self->_activationAlertItem;
  v6 = activationAlertItem;
  v11 = v5;
  if (activationAlertItem != v5)
  {
    if (v6)
    {
      v9 = +[SBAlertItemsController sharedInstance];
      [v9 deactivateAlertItem:*p_activationAlertItem];
    }

    objc_storeStrong(p_activationAlertItem, a3);
    if (*p_activationAlertItem)
    {
      [(SBAlertItem *)*p_activationAlertItem setSuppressForKeynote:1];
      v10 = +[SBAlertItemsController sharedInstance];
      [v10 activateAlertItem:*p_activationAlertItem];
    }
  }
}

- (void)_provisioningUpdateWithStatus:(int)a3 slot:(int64_t)a4
{
  v27 = [(SBTelephonyManager *)self telephonyStateProvider];
  v7 = [v27 subscriptionInfoForSlot:1];
  v8 = [v7 SIMStatus];
  v9 = *MEMORY[0x277CC3F00];
  v10 = [v8 isEqualToString:*MEMORY[0x277CC3F00]];

  v11 = [v27 subscriptionInfoForSlot:2];
  v12 = [v11 SIMStatus];
  v13 = [v12 isEqualToString:v9];

  v14 = MGGetBoolAnswer();
  if (a3 == 2)
  {
    ++self->_numActivationFailures;
    if (self->_hasCellularTelephony)
    {
      v20 = [[SBActivationFailedAlertItem alloc] initWithFailureCount:self->_numActivationFailures slot:a4];
LABEL_13:
      v25 = +[SBSetupManager sharedInstance];
      v26 = [v25 isInSetupMode];

      if (v26)
      {
        [(SBAlertItem *)v20 setPendInSetupIfNotAllowed:0];
      }

      goto LABEL_16;
    }

LABEL_15:
    v20 = 0;
LABEL_16:
    [(SBTelephonyManager *)self _setCurrentActivationAlertItem:v20];
LABEL_17:

    goto LABEL_18;
  }

  if (a3 == 1)
  {
    if (self->_hasCellularTelephony)
    {
      v22 = [SBDismissOnlyAlertItem alloc];
      v23 = [MEMORY[0x277CCA8D8] mainBundle];
      v24 = [v23 localizedStringForKey:@"PHONE_ACTIVATED" value:&stru_283094718 table:@"SpringBoard"];
      v20 = [(SBDismissOnlyAlertItem *)v22 initWithTitle:v24 body:0];

      goto LABEL_13;
    }

    goto LABEL_15;
  }

  if (!a3 && (*(self + 56) & 1) == 0 && ((v14 ^ 1 | v10 | v13) & 1) != 0)
  {
    if (self->_hasCellularTelephony)
    {
      v15 = [SBDismissOnlyAlertItem alloc];
      v16 = [MEMORY[0x277CCA8D8] mainBundle];
      v17 = [v16 localizedStringForKey:@"WAITING_FOR_ACTIVATION_TITLE" value:&stru_283094718 table:@"SpringBoard"];
      v18 = [MEMORY[0x277CCA8D8] mainBundle];
      v19 = [v18 localizedStringForKey:@"WAITING_FOR_ACTIVATION_BODY" value:&stru_283094718 table:@"SpringBoard"];
      v20 = [(SBDismissOnlyAlertItem *)v15 initWithTitle:v17 body:v19];

      v21 = +[SBSetupManager sharedInstance];
      LODWORD(v19) = [v21 isInSetupMode];

      if (v19)
      {
        [(SBAlertItem *)v20 setPendInSetupIfNotAllowed:0];
      }
    }

    else
    {
      v20 = 0;
    }

    [(SBTelephonyManager *)self _setCurrentActivationAlertItem:v20];
    *(self + 56) |= 1u;
    goto LABEL_17;
  }

LABEL_18:
}

- (void)_setIsInEmergencyCallbackMode:(unsigned __int8)a3
{
  v14 = *MEMORY[0x277D85DE8];
  inEmergencyCallbackMode = self->_inEmergencyCallbackMode;
  v4 = a3 != 0;
  self->_inEmergencyCallbackMode = v4;
  if (inEmergencyCallbackMode != v4)
  {
    v6 = SBLogStatusBarish();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = SBTMCachedBooleanDebugName(inEmergencyCallbackMode);
      v8 = SBTMCachedBooleanDebugName(self->_inEmergencyCallbackMode);
      v10 = 138543618;
      v11 = v7;
      v12 = 2114;
      v13 = v8;
      _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "[SBTelephonyManager] _setIsInEmergencyCallbackMode: status changed from %{public}@ to %{public}@", &v10, 0x16u);
    }
  }

  v9 = +[SBAlertItemsController sharedInstance];
  [v9 setForceAlertsToPend:objc_msgSend(__sharedTelephonyManager forReason:{"isInEmergencyCallbackMode"), @"isInEmergencyCallbackMode"}];
}

- (id)_primarySubscriptionInfo
{
  v3 = [(SBTelephonyManager *)self _primarySubscriptionSlot];
  v4 = [(SBTelephonyManager *)self telephonyStateProvider];
  v5 = [v4 subscriptionInfoForSlot:v3];

  return v5;
}

- (id)_primaryCarrierBundleInfo
{
  v3 = [(SBTelephonyManager *)self _primarySubscriptionSlot];
  v4 = [(SBTelephonyManager *)self telephonyStateProvider];
  v5 = [v4 carrierBundleInfoForSlot:v3];

  return v5;
}

- (id)_primaryMobileEquipmentInfo
{
  v3 = [(SBTelephonyManager *)self _primarySubscriptionSlot];
  v4 = [(SBTelephonyManager *)self telephonyStateProvider];
  v5 = [v4 mobileEquipmentInfoForSlot:v3];

  return v5;
}

- (id)_secondarySubscriptionInfo
{
  v3 = [(SBTelephonyManager *)self _secondarySubscriptionSlot];
  v4 = [(SBTelephonyManager *)self telephonyStateProvider];
  v5 = [v4 subscriptionInfoForSlot:v3];

  return v5;
}

- (id)_secondarySubscriptionInfoIfEnabled
{
  v3 = [(SBTelephonyManager *)self _secondarySubscriptionSlotIfEnabled];
  v4 = [(SBTelephonyManager *)self telephonyStateProvider];
  v5 = [v4 subscriptionInfoForSlot:v3];

  return v5;
}

- (id)_secondaryCarrierBundleInfo
{
  v3 = [(SBTelephonyManager *)self _secondarySubscriptionSlot];
  v4 = [(SBTelephonyManager *)self telephonyStateProvider];
  v5 = [v4 carrierBundleInfoForSlot:v3];

  return v5;
}

- (id)_secondaryCarrierBundleInfoIfEnabled
{
  v3 = [(SBTelephonyManager *)self _secondarySubscriptionSlotIfEnabled];
  v4 = [(SBTelephonyManager *)self telephonyStateProvider];
  v5 = [v4 carrierBundleInfoForSlot:v3];

  return v5;
}

- (id)_secondaryMobileEquipmentInfo
{
  v3 = [(SBTelephonyManager *)self _secondarySubscriptionSlot];
  v4 = [(SBTelephonyManager *)self telephonyStateProvider];
  v5 = [v4 mobileEquipmentInfoForSlot:v3];

  return v5;
}

- (int64_t)_primarySubscriptionSlot
{
  if (!self->_containsCellularRadio)
  {
    return 1;
  }

  result = [(SBTelephonyManager *)self _dataPreferredSubscriptionSlotIfSIMPresent];
  if (!result)
  {
    result = [(SBTelephonyManager *)self _anySubscriptionSlotWithSIMPresent];
    if (result <= 1)
    {
      return 1;
    }
  }

  return result;
}

- (int64_t)_secondarySubscriptionSlot
{
  v3 = [(SBTelephonyManager *)self _primarySubscriptionSlot];

  return [(SBTelephonyManager *)self _otherSubscriptionSlot:v3];
}

- (int64_t)_secondarySubscriptionSlotIfEnabled
{
  if (!self->_containsCellularRadio)
  {
    return 0;
  }

  v3 = [(SBTelephonyManager *)self telephonyStateProvider];
  v4 = [v3 isDualSIMEnabled];

  if (!v4)
  {
    return 0;
  }

  v5 = [(SBTelephonyManager *)self _primarySubscriptionSlot];

  return [(SBTelephonyManager *)self _otherSubscriptionSlotIfSIMPresent:v5];
}

- (int64_t)_otherSubscriptionSlot:(int64_t)a3
{
  if (a3 == 1)
  {
    return 2;
  }

  else
  {
    return a3 == 2;
  }
}

- (int64_t)_otherSubscriptionSlotIfSIMPresent:(int64_t)a3
{
  v4 = [(SBTelephonyManager *)self _otherSubscriptionSlot:a3];

  return [(SBTelephonyManager *)self _subscriptionSlotIfSIMPresent:v4];
}

- (int64_t)_dataPreferredSubscriptionSlotIfSIMPresent
{
  v3 = [(SBTelephonyManager *)self _subscriptionSlotIfSIMPresent:2];
  v4 = [(SBTelephonyManager *)self telephonyStateProvider];
  v5 = [v4 subscriptionInfoForSlot:v3];

  if ([v5 isPreferredForDataConnections])
  {
    v6 = v3;
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (int64_t)_anySubscriptionSlotWithSIMPresent
{
  result = [(SBTelephonyManager *)self _subscriptionSlotIfSIMPresent:1];
  if (!result)
  {

    return [(SBTelephonyManager *)self _subscriptionSlotIfSIMPresent:2];
  }

  return result;
}

- (int64_t)_subscriptionSlotIfSIMPresent:(int64_t)a3
{
  v4 = [(SBTelephonyManager *)self telephonyStateProvider];
  v5 = [v4 isSIMPresentForSlot:a3];

  if (v5)
  {
    return a3;
  }

  else
  {
    return 0;
  }
}

- (void)subscriptionInfoDidChangeForStateProvider:(id)a3 slot:(int64_t)a4
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __69__SBTelephonyManager_subscriptionInfoDidChangeForStateProvider_slot___block_invoke;
  v4[3] = &unk_2783A8BC8;
  v4[4] = self;
  v4[5] = a4;
  dispatch_async(MEMORY[0x277D85CD0], v4);
}

void __69__SBTelephonyManager_subscriptionInfoDidChangeForStateProvider_slot___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2 > 1)
  {
    v9 = 0;
    v8 = 0;
  }

  else
  {
    v3 = [*(a1 + 32) telephonyStateProvider];
    v4 = [v3 subscriptionInfoForSlot:1];

    v5 = [v4 SIMStatus];
    v6 = [*(a1 + 32) cachedSlot1SIMStatus];
    v7 = v6;
    if (v6 | v5 && ([v6 isEqualToString:v5] & 1) == 0)
    {
      [*(a1 + 32) setCachedSlot1SIMStatus:v5];
      v8 = [v5 isEqualToString:*MEMORY[0x277CC3F00]];
    }

    else
    {
      v8 = 0;
    }

    v10 = [v4 lastKnownNetworkCountryCode];
    v11 = [*(a1 + 32) cachedSlot1CountryCode];
    v12 = v11;
    if (v11 | v10 && ([v11 isEqualToString:v10] & 1) == 0)
    {
      [*(a1 + 32) setCachedSlot1CountryCode:v10];
      v9 = 1;
    }

    else
    {
      v9 = 0;
    }
  }

  if ((v2 | 2) != 2)
  {
    if (v8)
    {
      goto LABEL_20;
    }

LABEL_23:
    if (!v9)
    {
      return;
    }

    goto LABEL_24;
  }

  v13 = [*(a1 + 32) telephonyStateProvider];
  v14 = [v13 subscriptionInfoForSlot:2];

  v15 = [v14 SIMStatus];
  v16 = [*(a1 + 32) cachedSlot2SIMStatus];
  v17 = v16;
  if (v16 | v15 && ([v16 isEqualToString:v15] & 1) == 0)
  {
    [*(a1 + 32) setCachedSlot2SIMStatus:v15];
    LOBYTE(v8) = [v15 isEqualToString:*MEMORY[0x277CC3F00]] | v8;
  }

  v18 = [v14 lastKnownNetworkCountryCode];
  v19 = [*(a1 + 32) cachedSlot2CountryCode];
  v20 = v19;
  if (v19 | v18 && ([v19 isEqualToString:v18] & 1) == 0)
  {
    [*(a1 + 32) setCachedSlot2CountryCode:v18];
    v9 = 1;
  }

  if ((v8 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_20:
  [*(a1 + 32) updateLocale];
  if ((v9 & 1) == 0)
  {
    return;
  }

LABEL_24:
  v21 = *(a1 + 32);

  [v21 _updateNetworkLocale];
}

- (void)carrierBundleInfoDidChangeForStateProvider:(id)a3 slot:(int64_t)a4
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__SBTelephonyManager_carrierBundleInfoDidChangeForStateProvider_slot___block_invoke;
  block[3] = &unk_2783A8C18;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (id)carrierDisabledApplicationIDs
{
  v3 = [(SBTelephonyManager *)self _primaryCarrierBundleInfo];
  v4 = [v3 disabledApplicationIDs];

  v5 = [MEMORY[0x277CBEB58] set];
  v6 = v5;
  if (v4)
  {
    [v5 addObjectsFromArray:v4];
  }

  v7 = [(SBTelephonyManager *)self _secondaryCarrierBundleInfoIfEnabled];
  v8 = [v7 disabledApplicationIDs];

  if (v8)
  {
    [v6 addObjectsFromArray:v8];
  }

  return v6;
}

- (void)_queue_noteWirelessModemDynamicStoreChanged
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_DEBUG, "Wireless modem data: %@", &v2, 0xCu);
}

BOOL __65__SBTelephonyManager__queue_noteWirelessModemDynamicStoreChanged__block_invoke(uint64_t a1, const __CFString *a2)
{
  v4 = *MEMORY[0x277CBECE8];
  v5 = *MEMORY[0x277CE1648];
  ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 40), 0);
  NetworkInterfaceEntity = SCDynamicStoreKeyCreateNetworkInterfaceEntity(v4, v5, ValueAtIndex, a2);
  if (!NetworkInterfaceEntity)
  {
    return 0;
  }

  v8 = NetworkInterfaceEntity;
  v9 = SCDynamicStoreCopyValue(*(*(a1 + 32) + 32), NetworkInterfaceEntity);
  v10 = v9 != 0;
  if (v9)
  {
    CFRelease(v9);
  }

  CFRelease(v8);
  return v10;
}

uint64_t __65__SBTelephonyManager__queue_noteWirelessModemDynamicStoreChanged__block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = SBLogStatusBarish();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    if (*(a1 + 48))
    {
      v4 = @"ON";
    }

    else
    {
      v4 = @"OFF";
    }

    v8 = 138543618;
    v9 = v4;
    v10 = 1024;
    v11 = v3;
    _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_DEFAULT, "Received notification that wireless modem state changed. Tethering is currently %{public}@ with %d devices connected.", &v8, 0x12u);
  }

  if (*(a1 + 44))
  {
    v5 = SBLogStatusBarish();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 44);
      v8 = 67109120;
      LODWORD(v9) = v6;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "First internal interface doesn't have IPv4 or IPv6 addresses, but client count is %d.", &v8, 8u);
    }
  }

  return [*(a1 + 32) _setIsNetworkTethering:*(a1 + 48) withNumberOfDevices:*(a1 + 40)];
}

- (void)_setIsNetworkTethering:(BOOL)a3 withNumberOfDevices:(int)a4
{
  v5 = a3;
  v20 = *MEMORY[0x277D85DE8];
  if (self->_isNetworkTethering != a3 || self->_numberOfNetworkTetheredDevices != a4)
  {
    v7 = SBLogStatusBarish();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = @"OFF";
      numberOfNetworkTetheredDevices = self->_numberOfNetworkTetheredDevices;
      if (self->_isNetworkTethering)
      {
        v10 = @"ON";
      }

      else
      {
        v10 = @"OFF";
      }

      v12 = 138413058;
      if (v5)
      {
        v8 = @"ON";
      }

      v13 = v10;
      v14 = 1024;
      v15 = numberOfNetworkTetheredDevices;
      v16 = 2114;
      v17 = v8;
      v18 = 1024;
      v19 = a4;
      _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "Previous tethering state was %@ with %d devices connected; new state is %{public}@ with %d devices connected; updating UI.", &v12, 0x22u);
    }

    self->_isNetworkTethering = v5;
    self->_numberOfNetworkTetheredDevices = a4;
    v11 = [MEMORY[0x277CCAB98] defaultCenter];
    [v11 postNotificationName:*MEMORY[0x277D67A90] object:0];
  }
}

- (void)preHeatDataLinkForDomains:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 count])
  {
    v5 = [(SBTelephonyManager *)self telephonyStateProvider];
    v6 = [v5 subscriptionInfoForSlot:{-[SBTelephonyManager _dataConnectedSubscriptionSlot](self, "_dataConnectedSubscriptionSlot")}];

    if (([v6 dataConnectionType] - 2) <= 8)
    {
      v14 = v6;
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v7 = v4;
      v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v17;
        do
        {
          v11 = 0;
          do
          {
            if (*v17 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v16 + 1) + 8 * v11);
            v13 = dispatch_get_global_queue(0, 0);
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = __48__SBTelephonyManager_preHeatDataLinkForDomains___block_invoke;
            block[3] = &unk_2783A8C18;
            block[4] = v12;
            dispatch_async(v13, block);

            ++v11;
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
        }

        while (v9);
      }

      v6 = v14;
    }
  }
}

void __48__SBTelephonyManager_preHeatDataLinkForDomains___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) UTF8String];
  if (v1)
  {
    v2 = 0;
    getaddrinfo(v1, 0, 0, &v2);
    if (v2)
    {
      freeaddrinfo(v2);
    }
  }
}

+ (void)sharedTelephonyManagerCreatingIfNecessary:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v2 = [MEMORY[0x277CCA890] currentHandler];
  [v2 handleFailureInMethod:v1 object:v0 file:@"SBTelephonyManager.m" lineNumber:202 description:@"SBTelephonyManager is being created before the system status server"];
}

+ (void)sharedTelephonyManagerCreatingIfNecessary:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v2 = [MEMORY[0x277CCA890] currentHandler];
  [v2 handleFailureInMethod:v1 object:v0 file:@"SBTelephonyManager.m" lineNumber:205 description:@"SBTelephonyManager is being created before the telephony state provider"];
}

- (void)_avSystemControllerDidError:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v12 = *MEMORY[0x277D85DE8];
  v3 = [v2 domain];
  v4 = [v1 code];
  v5 = [MEMORY[0x277CCACC8] callStackReturnAddresses];
  v6 = 138412802;
  v7 = v3;
  v8 = 2048;
  v9 = v4;
  v10 = 2114;
  v11 = v5;
  _os_log_error_impl(&dword_21ED4E000, v0, OS_LOG_TYPE_ERROR, "AVSystemController returned error: (%@, %li). Destroying connection. (Callstack: %{public}@)", &v6, 0x20u);
}

- (void)_serverConnectionDidError:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v11 = *MEMORY[0x277D85DE8];
  v3 = HIDWORD(v2);
  v4 = [MEMORY[0x277CCACC8] callStackReturnAddresses];
  v5 = 67109634;
  v6 = v1;
  v7 = 1024;
  v8 = v3;
  v9 = 2114;
  v10 = v4;
  _os_log_error_impl(&dword_21ED4E000, v0, OS_LOG_TYPE_ERROR, "CTServerConnection returned error: (%i, %i). Destroying connection. (Callstack: %{public}@)", &v5, 0x18u);
}

- (void)queue_setFastDormancySuspended:(os_log_t)log withConnection:.cold.1(int a1, int a2, os_log_t log)
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 67109376;
  v3[1] = a1;
  v4 = 1024;
  v5 = a2;
  _os_log_error_impl(&dword_21ED4E000, log, OS_LOG_TYPE_ERROR, "CTServerConnection failed to acquire fastDormancySuspend assertion: (%i, %i)", v3, 0xEu);
}

- (void)setFastDormancySuspended:.cold.1()
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBTelephonyManager setFastDormancySuspended:]"];
  [OUTLINED_FUNCTION_2_0(v0 v1];
}

- (void)handleCallControlFailure:.cold.1()
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBTelephonyManager handleCallControlFailure:]"];
  [OUTLINED_FUNCTION_2_0(v0 v1];
}

- (void)callEventHandler:.cold.1()
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBTelephonyManager callEventHandler:]"];
  [OUTLINED_FUNCTION_2_0(v0 v1];
}

- (void)isUsingVPNConnection
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBTelephonyManager isUsingVPNConnection]"];
  [OUTLINED_FUNCTION_2_0(v0 v1];
}

@end