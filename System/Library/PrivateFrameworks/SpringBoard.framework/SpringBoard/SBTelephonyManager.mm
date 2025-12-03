@interface SBTelephonyManager
+ (__CTServerConnection)defaultTelephonyCenter;
+ (id)sharedTelephonyManagerCreatingIfNecessary:(BOOL)necessary;
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
- (SBTelephonyManager)initWithStateProvider:(id)provider wifiDomain:(id)domain bluetoothController:(id)controller;
- (__CTServerConnection)_serverConnection;
- (double)inCallDuration;
- (id)_backgroundQueryQueue;
- (id)_callsForService:(int)service;
- (id)_phoneApp;
- (id)_primaryCarrierBundleInfo;
- (id)_primaryMobileEquipmentInfo;
- (id)_primarySubscriptionInfo;
- (id)_secondaryCarrierBundleInfo;
- (id)_secondaryCarrierBundleInfoIfEnabled;
- (id)_secondaryMobileEquipmentInfo;
- (id)_secondarySubscriptionInfo;
- (id)_secondarySubscriptionInfoIfEnabled;
- (id)_subscriptionInfoForCall:(id)call;
- (id)carrierDisabledApplicationIDs;
- (id)displayedCall;
- (int64_t)_anySubscriptionSlotWithSIMPresent;
- (int64_t)_dataConnectedSubscriptionSlot;
- (int64_t)_dataPreferredSubscriptionSlotIfSIMPresent;
- (int64_t)_otherSubscriptionSlot:(int64_t)slot;
- (int64_t)_otherSubscriptionSlotIfSIMPresent:(int64_t)present;
- (int64_t)_primarySubscriptionSlot;
- (int64_t)_secondarySubscriptionSlot;
- (int64_t)_secondarySubscriptionSlotIfEnabled;
- (int64_t)_subscriptionSlotIfSIMPresent:(int64_t)present;
- (unint64_t)_callCountForService:(int)service;
- (unint64_t)callCount;
- (unint64_t)dataConnectionAvailabilityWithCurrentCalls;
- (void)_avSystemControllerDidError:(id)error;
- (void)_handleTelephonyDaemonRestart;
- (void)_performQueryInBackground:(id)background withMainQueueResultHandler:(id)handler;
- (void)_provisioningUpdateWithStatus:(int)status slot:(int64_t)slot;
- (void)_queue_noteWirelessModemDynamicStoreChanged;
- (void)_serverConnectionDidError:(id)error;
- (void)_setCurrentActivationAlertItem:(id)item;
- (void)_setIsInEmergencyCallbackMode:(unsigned __int8)mode;
- (void)_setIsNetworkTethering:(BOOL)tethering withNumberOfDevices:(int)devices;
- (void)_updateState;
- (void)callEventHandler:(id)handler;
- (void)carrierBundleInfoDidChangeForStateProvider:(id)provider slot:(int64_t)slot;
- (void)disconnectAllCalls;
- (void)disconnectCallAndActivateHeld;
- (void)disconnectDisplayedCall;
- (void)disconnectIncomingCall;
- (void)dumpBasebandState:(id)state;
- (void)handleCallControlFailure:(id)failure;
- (void)isUsingVPNConnection;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)preHeatDataLinkForDomains:(id)domains;
- (void)queue_setFastDormancySuspended:(BOOL)suspended withConnection:(__CTServerConnection *)connection;
- (void)setCellDataSwitchingEnabled:(BOOL)enabled;
- (void)setFastDormancySuspended:(BOOL)suspended;
- (void)setNetworkRegistrationEnabled:(BOOL)enabled;
- (void)subscriptionInfoDidChangeForStateProvider:(id)provider slot:(int64_t)slot;
- (void)swapCalls;
- (void)telephonyAudioChangeHandler;
- (void)updateCalls;
- (void)updateSpringBoard;
@end

@implementation SBTelephonyManager

- (int64_t)_dataConnectedSubscriptionSlot
{
  v3 = [(SBTelephonyManager *)self _subscriptionSlotIfSIMPresent:2];
  telephonyStateProvider = [(SBTelephonyManager *)self telephonyStateProvider];
  v5 = [telephonyStateProvider subscriptionInfoForSlot:v3];

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

  mEMORY[0x277D6EDF8] = [MEMORY[0x277D6EDF8] sharedInstance];
  routeController = [mEMORY[0x277D6EDF8] routeController];
  pickedRoute = [routeController pickedRoute];

  if ([pickedRoute isReceiver] & 1) != 0 || (objc_msgSend(pickedRoute, "isSpeaker"))
  {
    isBluetoothLE = 1;
  }

  else
  {
    isBluetoothLE = [pickedRoute isBluetoothLE];
  }

  return isBluetoothLE;
}

- (BOOL)inCall
{
  mEMORY[0x277D6EDF8] = [MEMORY[0x277D6EDF8] sharedInstance];
  currentCallCount = [mEMORY[0x277D6EDF8] currentCallCount];

  if (!currentCallCount)
  {
    return 0;
  }

  if (currentCallCount != 1)
  {
    return 1;
  }

  incomingCall = [(SBTelephonyManager *)self incomingCall];
  v6 = incomingCall == 0;

  return v6;
}

- (BOOL)hasNonCellularNetworkConnection
{
  wifiDomain = [(SBTelephonyManager *)self wifiDomain];
  data = [wifiDomain data];
  if ([data isWifiActive])
  {
    isEthernetPrimary = 1;
  }

  else
  {
    bluetoothController = [(SBTelephonyManager *)self bluetoothController];
    if ([bluetoothController tetheringConnected])
    {
      isEthernetPrimary = 1;
    }

    else
    {
      isEthernetPrimary = [(NWSystemPathMonitor *)self->_systemPathMonitor isEthernetPrimary];
    }
  }

  return isEthernetPrimary;
}

- (BOOL)isUsingSlowDataConnection
{
  if ([(SBTelephonyManager *)self hasNonCellularNetworkConnection])
  {
    return 0;
  }

  telephonyStateProvider = [(SBTelephonyManager *)self telephonyStateProvider];
  v5 = [telephonyStateProvider subscriptionInfoForSlot:{-[SBTelephonyManager _dataConnectedSubscriptionSlot](self, "_dataConnectedSubscriptionSlot")}];

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
    provider = [v10 provider];
    isTelephonyProvider = [provider isTelephonyProvider];

    if (!isTelephonyProvider)
    {
      goto LABEL_13;
    }

    providerContext = [v10 providerContext];
    v14 = [providerContext objectForKey:@"kCallSubType"];

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
  selfCopy = self;
  callCount = [(SBTelephonyManager *)self callCount];
  LOBYTE(selfCopy) = [(SBTelephonyManager *)selfCopy isEmergencyCallActive];
  v4 = MGGetBoolAnswer();
  v5 = (callCount == 0) | selfCopy;
  if (!v4)
  {
    v5 = 0;
  }

  return v5 & 1;
}

- (unint64_t)callCount
{
  mEMORY[0x277D6EDF8] = [MEMORY[0x277D6EDF8] sharedInstance];
  currentCallCount = [mEMORY[0x277D6EDF8] currentCallCount];

  return currentCallCount;
}

- (BOOL)isEmergencyCallActive
{
  v13 = *MEMORY[0x277D85DE8];
  mEMORY[0x277D6EDF8] = [MEMORY[0x277D6EDF8] sharedInstance];
  [mEMORY[0x277D6EDF8] currentCalls];
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
  incomingCall = [(SBTelephonyManager *)self incomingCall];
  v3 = incomingCall != 0;

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
  outgoingCall = [(SBTelephonyManager *)self outgoingCall];
  v3 = outgoingCall != 0;

  return v3;
}

- (void)updateSpringBoard
{
  v19 = *MEMORY[0x277D85DE8];
  mEMORY[0x277D6EDF8] = [MEMORY[0x277D6EDF8] sharedInstance];
  v3 = [mEMORY[0x277D6EDF8] displayedCallFromCalls:0];

  v4 = +[SBLockScreenManager sharedInstanceIfExists];
  isUILocked = [v4 isUILocked];

  if (isUILocked)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"SBLockScreenTelephoneCallUINeedsUpdateNotification" object:0];
  }

  if (!v3)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = +[SBApplicationController sharedInstance];
    allApplications = [v7 allApplications];

    v9 = [allApplications countByEnumeratingWithState:&v14 objects:v18 count:16];
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
            objc_enumerationMutation(allApplications);
          }

          [*(*(&v14 + 1) + 8 * v12++) setHasDisplayedLaunchAlert:0 forType:1];
        }

        while (v10 != v12);
        v10 = [allApplications countByEnumeratingWithState:&v14 objects:v18 count:16];
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

+ (id)sharedTelephonyManagerCreatingIfNecessary:(BOOL)necessary
{
  v3 = __sharedTelephonyManager;
  if (__sharedTelephonyManager)
  {
    v4 = 1;
  }

  else
  {
    v4 = !necessary;
  }

  if (!v4)
  {
    kdebug_trace();
    systemStatusServer = [SBApp systemStatusServer];
    if (!systemStatusServer)
    {
      +[SBTelephonyManager sharedTelephonyManagerCreatingIfNecessary:];
    }

    v6 = [objc_alloc(MEMORY[0x277D6BBB0]) initWithServerHandle:systemStatusServer];
    telephonyStateProvider = [SBApp telephonyStateProvider];
    if (!telephonyStateProvider)
    {
      +[SBTelephonyManager sharedTelephonyManagerCreatingIfNecessary:];
    }

    v8 = [SBTelephonyManager alloc];
    v9 = +[SBBluetoothController sharedInstance];
    v10 = [(SBTelephonyManager *)v8 initWithStateProvider:telephonyStateProvider wifiDomain:v6 bluetoothController:v9];
    v11 = __sharedTelephonyManager;
    __sharedTelephonyManager = v10;

    kdebug_trace();
    v3 = __sharedTelephonyManager;
  }

  return v3;
}

- (SBTelephonyManager)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"SBTelephonyManager.m" lineNumber:213 description:@"Use initWithStateProvider:wifiDomain:bluetoothController:"];

  return [(SBTelephonyManager *)self initWithStateProvider:0 wifiDomain:0 bluetoothController:0];
}

- (SBTelephonyManager)initWithStateProvider:(id)provider wifiDomain:(id)domain bluetoothController:(id)controller
{
  providerCopy = provider;
  domainCopy = domain;
  controllerCopy = controller;
  v50.receiver = self;
  v50.super_class = SBTelephonyManager;
  v12 = [(SBTelephonyManager *)&v50 init];
  v13 = __sharedTelephonyManager;
  __sharedTelephonyManager = v12;

  if (v12)
  {
    objc_storeStrong(&v12->_telephonyStateProvider, provider);
    objc_storeStrong(&v12->_wifiDomain, domain);
    objc_storeStrong(&v12->_bluetoothController, controller);
    v12->_containsCellularRadio = MGGetBoolAnswer();
    v12->_hasCellularTelephony = MGGetBoolAnswer();
    v12->_hasCellularData = MGGetBoolAnswer();
    v12->_inEmergencyCallbackMode = -1;
    +[SBTelephonyManager defaultTelephonyCenter];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
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

    [defaultCenter addObserver:v12 selector:sel_callEventHandler_ name:*MEMORY[0x277D6EFF0] object:0];
    [defaultCenter addObserver:v12 selector:sel_callEventHandler_ name:*MEMORY[0x277D6EFE0] object:0];
    [defaultCenter addObserver:v12 selector:sel_handleCallControlFailure_ name:*MEMORY[0x277D6F008] object:0];
    [defaultCenter addObserver:v12 selector:sel_updateSpringBoard name:*MEMORY[0x277D6F0B0] object:0];
    [defaultCenter addObserver:v12 selector:sel_telephonyAudioChangeHandler name:*MEMORY[0x277D6EF60] object:0];
    v15 = objc_alloc(MEMORY[0x277CC37B0]);
    _backgroundQueryQueue = [(SBTelephonyManager *)v12 _backgroundQueryQueue];
    v17 = [v15 initWithQueue:_backgroundQueryQueue];
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

    sharedInstance = [getRTTSettingsClass() sharedInstance];
    [sharedInstance registerUpdateBlock:&__block_literal_global_92 forRetrieveSelector:sel_TTYSoftwareEnabled withListener:v12];
    [sharedInstance registerUpdateBlock:&__block_literal_global_92 forRetrieveSelector:sel_TTYHardwareEnabled withListener:v12];
    v21 = +[SBLockdownManager sharedInstance];
    brickedDevice = [v21 brickedDevice];

    if ((brickedDevice & 1) == 0)
    {
      [(SBTelephonyManager *)v12 setNetworkRegistrationEnabled:1];
    }

    [(STTelephonyStateProvider *)v12->_telephonyStateProvider addObserver:v12];
    [(SBTelephonyManager *)v12 _updateState];
    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    objc_initWeak(&location, defaultCenter2);

    objc_initWeak(&from, v12);
    v42 = 0;
    v43 = &v42;
    v44 = 0x3032000000;
    v45 = __Block_byref_object_copy__5;
    v46 = __Block_byref_object_dispose__5;
    v47 = 0;
    mainQueue = [MEMORY[0x277CCABD8] mainQueue];
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __75__SBTelephonyManager_initWithStateProvider_wifiDomain_bluetoothController___block_invoke_99;
    v39[3] = &unk_2783ABBE8;
    objc_copyWeak(&v40, &from);
    objc_copyWeak(&v41, &location);
    v39[4] = &v42;
    v25 = [defaultCenter addObserverForName:@"SBBootCompleteNotification" object:0 queue:mainQueue usingBlock:v39];
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
    globalDefaults = [v31 globalDefaults];
    [globalDefaults removeFormattedPhoneNumberFromGlobalPreferences];

    mEMORY[0x277CD9208] = [MEMORY[0x277CD9208] sharedSystemPathMonitor];
    v34 = v30[12];
    v30[12] = mEMORY[0x277CD9208];

    [v30[12] addObserver:v30 forKeyPath:@"vpnActive" options:5 context:0];
    _Block_object_dispose(&v42, 8);

    objc_destroyWeak(&v41);
    objc_destroyWeak(&v40);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }

  mEMORY[0x277D6EDF8] = [MEMORY[0x277D6EDF8] sharedInstance];

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

- (void)_performQueryInBackground:(id)background withMainQueueResultHandler:(id)handler
{
  backgroundCopy = background;
  handlerCopy = handler;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __75__SBTelephonyManager__performQueryInBackground_withMainQueueResultHandler___block_invoke;
  v14[3] = &unk_2783A8C18;
  v14[4] = self;
  if (_performQueryInBackground_withMainQueueResultHandler__onceToken != -1)
  {
    dispatch_once(&_performQueryInBackground_withMainQueueResultHandler__onceToken, v14);
  }

  _backgroundQueryQueue = [(SBTelephonyManager *)self _backgroundQueryQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __75__SBTelephonyManager__performQueryInBackground_withMainQueueResultHandler___block_invoke_2;
  block[3] = &unk_2783AAE68;
  v12 = backgroundCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = backgroundCopy;
  dispatch_async(_backgroundQueryQueue, block);
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

- (void)_avSystemControllerDidError:(id)error
{
  errorCopy = error;
  v4 = SBLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [SBTelephonyManager _avSystemControllerDidError:];
  }
}

- (void)_serverConnectionDidError:(id)error
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
  windowSceneManager = [SBApp windowSceneManager];
  connectedWindowScenes = [windowSceneManager connectedWindowScenes];

  v6 = [connectedWindowScenes countByEnumeratingWithState:&v13 objects:v18 count:16];
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
          objc_enumerationMutation(connectedWindowScenes);
        }

        iconController = [*(*(&v13 + 1) + 8 * v9) iconController];
        iconManager = [iconController iconManager];
        [iconManager setIdleModeText:0];

        ++v9;
      }

      while (v7 != v9);
      v7 = [connectedWindowScenes countByEnumeratingWithState:&v13 objects:v18 count:16];
    }

    while (v7);
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:*MEMORY[0x277D67AB8] object:0];
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
  mEMORY[0x277D6EDF8] = [MEMORY[0x277D6EDF8] sharedInstance];
  v3 = [mEMORY[0x277D6EDF8] displayedCallFromCalls:0];

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
  mobilePhone = [v2 mobilePhone];

  return mobilePhone;
}

- (void)queue_setFastDormancySuspended:(BOOL)suspended withConnection:(__CTServerConnection *)connection
{
  p_queue_fastDormancySuspendAssertion = &self->_queue_fastDormancySuspendAssertion;
  queue_fastDormancySuspendAssertion = self->_queue_fastDormancySuspendAssertion;
  if (suspended)
  {
    if (connection)
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

- (void)setFastDormancySuspended:(BOOL)suspended
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
  suspendedCopy = suspended;
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
  mEMORY[0x277D6EDF8] = [MEMORY[0x277D6EDF8] sharedInstance];
  currentCallCount = [mEMORY[0x277D6EDF8] currentCallCount];

  if (currentCallCount)
  {
    mEMORY[0x277D6EDF8]2 = [MEMORY[0x277D6EDF8] sharedInstance];
    currentCalls = [mEMORY[0x277D6EDF8]2 currentCalls];

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v8 = currentCalls;
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
          status = [v15 status];
          if (status > 2)
          {
            if (status == 3)
            {
              [(SBTelephonyManager *)self setOutgoingCall:v15];
            }

            else if (status == 4)
            {
              v18 = [MEMORY[0x277CCAB88] notificationWithName:v13 object:v15];
              [(SBTelephonyManager *)self callEventHandler:v18];

              v11 = 1;
            }
          }

          else if (status == 1)
          {
            activeCall = [(SBTelephonyManager *)self activeCall];

            if (!activeCall)
            {
              [(SBTelephonyManager *)self setActiveCall:v15];
            }
          }

          else if (status == 2)
          {
            heldCall = [(SBTelephonyManager *)self heldCall];

            if (!heldCall)
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

  sharedInstance = [*(v3 + 3576) sharedInstance];
  __LastUpdatedCallCount = [sharedInstance currentCallCount];

  [(SBTelephonyManager *)self updateSpringBoard];
}

- (void)_updateState
{
  telephonyStateProvider = [(SBTelephonyManager *)self telephonyStateProvider];
  v11 = [telephonyStateProvider subscriptionInfoForSlot:1];

  telephonyStateProvider2 = [(SBTelephonyManager *)self telephonyStateProvider];
  v5 = [telephonyStateProvider2 subscriptionInfoForSlot:2];

  lastKnownNetworkCountryCode = [v11 lastKnownNetworkCountryCode];
  [(SBTelephonyManager *)self setCachedSlot1CountryCode:lastKnownNetworkCountryCode];

  sIMStatus = [v11 SIMStatus];
  [(SBTelephonyManager *)self setCachedSlot1SIMStatus:sIMStatus];

  lastKnownNetworkCountryCode2 = [v5 lastKnownNetworkCountryCode];
  [(SBTelephonyManager *)self setCachedSlot2CountryCode:lastKnownNetworkCountryCode2];

  sIMStatus2 = [v5 SIMStatus];
  [(SBTelephonyManager *)self setCachedSlot2SIMStatus:sIMStatus2];

  [(SBTelephonyManager *)self updateLocale];
  [(SBTelephonyManager *)self _updateNetworkLocale];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"SBTTYChangedNotification" object:0 userInfo:0];
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

- (void)handleCallControlFailure:(id)failure
{
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBTelephonyManager handleCallControlFailure:];
  }

  [(SBTelephonyManager *)self updateCalls];
  activeCall = [(SBTelephonyManager *)self activeCall];
  if (activeCall)
  {
    sInTelephonyCall = 1;
    SBUpdateCallState();
  }

  else
  {
    outgoingCall = [(SBTelephonyManager *)self outgoingCall];
    sInTelephonyCall = outgoingCall != 0;
    SBUpdateCallState();
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"SBCallCountChangedNotification" object:0 userInfo:0];
}

- (void)callEventHandler:(id)handler
{
  handlerCopy = handler;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBTelephonyManager callEventHandler:];
  }

  object = [handlerCopy object];
  status = [object status];
  mEMORY[0x277D6EDF8] = [MEMORY[0x277D6EDF8] sharedInstance];
  currentCallCount = [mEMORY[0x277D6EDF8] currentCallCount];

  incomingCall = [(SBTelephonyManager *)self incomingCall];

  if (incomingCall)
  {
    incomingCall = [(SBTelephonyManager *)self incomingCall];
    incomingCall2 = [(SBTelephonyManager *)self incomingCall];
    status2 = [incomingCall2 status];

    if (status2 != 4)
    {
      [(SBTelephonyManager *)self setIncomingCall:0];
    }
  }

  v11 = 0;
  if (status <= 2)
  {
    if (status == 1)
    {
      [(SBTelephonyManager *)self setActiveCall:object];
      v11 = 0;
      v38 = 1;
      v18 = 1;
      goto LABEL_32;
    }

    v12 = 0;
    v13 = 0;
    if (status == 2)
    {
      [(SBTelephonyManager *)self setHeldCall:object];
      v11 = 0;
      v12 = 0;
      v13 = 0;
    }
  }

  else
  {
    if (status == 6)
    {
      if (incomingCall || currentCallCount)
      {
        v11 = 0;
        v12 = 1;
        v13 = 0;
        if (currentCallCount > 1 || !incomingCall)
        {
          goto LABEL_26;
        }

        if ([object isEqual:incomingCall])
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

    if (status != 4)
    {
      v12 = 0;
      v13 = 0;
      if (status != 3)
      {
        goto LABEL_26;
      }

      outgoingCall = [(SBTelephonyManager *)self outgoingCall];

      if (outgoingCall)
      {
        outgoingCall2 = [(SBTelephonyManager *)self outgoingCall];
        v16 = [outgoingCall2 isEqual:object];

        if (v16)
        {
          goto LABEL_54;
        }

        [(SBTelephonyManager *)self setOutgoingCall:0];
      }

      [(SBTelephonyManager *)self setOutgoingCall:object];
      v11 = 1;
    }

    v13 = 0;
    v12 = v11;
    v11 = currentCallCount == 1 && status == 3;
  }

LABEL_26:
  HIDWORD(v38) = v13;
  v18 = v12;
  activeCall = [(SBTelephonyManager *)self activeCall];
  if (activeCall)
  {
    v20 = activeCall;
    activeCall2 = [(SBTelephonyManager *)self activeCall];
    v22 = [activeCall2 isEqual:object];

    if (v22)
    {
      mEMORY[0x277D6EDF8]2 = [MEMORY[0x277D6EDF8] sharedInstance];
      v24 = [mEMORY[0x277D6EDF8]2 callWithStatus:1];
      [(SBTelephonyManager *)self setActiveCall:v24];
    }
  }

  LODWORD(v38) = 0;
  if (status != 2)
  {
LABEL_32:
    heldCall = [(SBTelephonyManager *)self heldCall];
    if (heldCall)
    {
      v26 = heldCall;
      heldCall2 = [(SBTelephonyManager *)self heldCall];
      v28 = [heldCall2 isEqual:object];

      if (v28)
      {
        mEMORY[0x277D6EDF8]3 = [MEMORY[0x277D6EDF8] sharedInstance];
        v30 = [mEMORY[0x277D6EDF8]3 callWithStatus:2];
        [(SBTelephonyManager *)self setHeldCall:v30];
      }
    }

    if (status == 3)
    {
      goto LABEL_39;
    }
  }

  outgoingCall3 = [(SBTelephonyManager *)self outgoingCall];
  if (outgoingCall3)
  {
    v32 = outgoingCall3;
    outgoingCall4 = [(SBTelephonyManager *)self outgoingCall];
    v34 = [outgoingCall4 isEqual:object];

    if (v34)
    {
      [(SBTelephonyManager *)self setOutgoingCall:0];
    }
  }

LABEL_39:
  if (incomingCall && [object isEqual:incomingCall])
  {
    if (status != 4)
    {
      v35 = v38;
      if (currentCallCount != 1)
      {
        v35 = 0;
      }

      v11 |= v35;
    }
  }

  else if (status == 4)
  {
    [(SBTelephonyManager *)self setIncomingCall:object];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:*MEMORY[0x277D67A70] object:object];
  }

  if ((HIDWORD(v38) | v11))
  {
    sInTelephonyCall = v11 & 1;
    SBUpdateCallState();
  }

  if (__LastUpdatedCallCount != currentCallCount)
  {
    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 postNotificationName:@"SBCallCountChangedNotification" object:0 userInfo:0];
  }

  if (v18)
  {
    [(SBTelephonyManager *)self updateSpringBoard];
  }

  __LastUpdatedCallCount = currentCallCount;
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
  incomingCall = [(SBTelephonyManager *)self incomingCall];
  if (!incomingCall)
  {
    incomingCall = [(SBTelephonyManager *)self outgoingCall];
    if (!incomingCall)
    {
      incomingCall = [(SBTelephonyManager *)self activeCall];
    }
  }

  return incomingCall;
}

- (BOOL)activeCallExists
{
  activeCall = [(SBTelephonyManager *)self activeCall];
  v3 = activeCall != 0;

  return v3;
}

- (BOOL)heldCallExists
{
  heldCall = [(SBTelephonyManager *)self heldCall];
  v3 = heldCall != 0;

  return v3;
}

- (BOOL)multipleCallsExist
{
  v16 = *MEMORY[0x277D85DE8];
  mEMORY[0x277D6EDF8] = [MEMORY[0x277D6EDF8] sharedInstance];
  currentCallCount = [mEMORY[0x277D6EDF8] currentCallCount];

  if (currentCallCount < 2)
  {
    LOBYTE(v7) = 0;
  }

  else
  {
    mEMORY[0x277D6EDF8]2 = [MEMORY[0x277D6EDF8] sharedInstance];
    currentCalls = [mEMORY[0x277D6EDF8]2 currentCalls];

    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = currentCalls;
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
  coreTelephonyClient = [(SBTelephonyManager *)self coreTelephonyClient];
  v3 = [coreTelephonyClient getSupportDynamicDataSimSwitchOnBBCallSync:0];

  return v3;
}

- (void)setCellDataSwitchingEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  coreTelephonyClient = [(SBTelephonyManager *)self coreTelephonyClient];
  v4 = [coreTelephonyClient setSupportDynamicDataSimSwitchOnBBCall:enabledCopy];
}

- (id)_subscriptionInfoForCall:(id)call
{
  localSenderIdentity = [call localSenderIdentity];
  uUID = [localSenderIdentity UUID];
  uUIDString = [uUID UUIDString];

  telephonyStateProvider = [(SBTelephonyManager *)self telephonyStateProvider];
  if ([telephonyStateProvider isSIMPresentForSlot:1])
  {
    v8 = [telephonyStateProvider subscriptionInfoForSlot:1];
    identifier = [v8 identifier];
    v10 = [identifier isEqualToString:uUIDString];

    if (v10)
    {
      goto LABEL_8;
    }
  }

  if ([telephonyStateProvider isSIMPresentForSlot:2])
  {
    v8 = [telephonyStateProvider subscriptionInfoForSlot:2];
    identifier2 = [v8 identifier];
    v12 = [identifier2 isEqualToString:uUIDString];

    if (v12)
    {
      goto LABEL_8;
    }
  }

  v8 = 0;
LABEL_8:

  return v8;
}

- (id)_callsForService:(int)service
{
  mEMORY[0x277D6EDF8] = [MEMORY[0x277D6EDF8] sharedInstance];
  currentCalls = [mEMORY[0x277D6EDF8] currentCalls];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __39__SBTelephonyManager__callsForService___block_invoke;
  v12[3] = &__block_descriptor_36_e23_B32__0__TUCall_8Q16_B24l;
  serviceCopy = service;
  v6 = [currentCalls indexesOfObjectsPassingTest:v12];
  v7 = [currentCalls objectsAtIndexes:v6];
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

- (unint64_t)_callCountForService:(int)service
{
  v17 = *MEMORY[0x277D85DE8];
  mEMORY[0x277D6EDF8] = [MEMORY[0x277D6EDF8] sharedInstance];
  currentCalls = [mEMORY[0x277D6EDF8] currentCalls];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [currentCalls countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(currentCalls);
        }

        if ([*(*(&v12 + 1) + 8 * i) service] == service)
        {
          ++v8;
        }
      }

      v7 = [currentCalls countByEnumeratingWithState:&v12 objects:v16 count:16];
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
  mEMORY[0x277D6EDF8] = [MEMORY[0x277D6EDF8] sharedInstance];
  bargeCalls = [mEMORY[0x277D6EDF8] bargeCalls];
  v4 = [bargeCalls count] != 0;

  return v4;
}

- (BOOL)toggleBargeCallState
{
  mEMORY[0x277D6EDF8] = [MEMORY[0x277D6EDF8] sharedInstance];
  frontmostBargeCall = [mEMORY[0x277D6EDF8] frontmostBargeCall];

  mEMORY[0x277D6EDF8]2 = [MEMORY[0x277D6EDF8] sharedInstance];
  if (frontmostBargeCall && (objc_opt_respondsToSelector() & 1) != 0)
  {
    handleWiredHeadsetFlashButtonForBargeCalls = [mEMORY[0x277D6EDF8]2 handleWiredHeadsetFlashButtonForBargeCalls];
  }

  else
  {
    handleWiredHeadsetFlashButtonForBargeCalls = 0;
  }

  return handleWiredHeadsetFlashButtonForBargeCalls;
}

- (BOOL)isEndpointOnCurrentDevice
{
  mEMORY[0x277D6EDF8] = [MEMORY[0x277D6EDF8] sharedInstance];
  anyCallIsEndpointOnCurrentDevice = [mEMORY[0x277D6EDF8] anyCallIsEndpointOnCurrentDevice];

  return anyCallIsEndpointOnCurrentDevice;
}

- (void)disconnectIncomingCall
{
  mEMORY[0x277D6EDF8] = [MEMORY[0x277D6EDF8] sharedInstance];
  incomingCall = [(SBTelephonyManager *)self incomingCall];
  [mEMORY[0x277D6EDF8] disconnectCall:incomingCall];
}

- (void)disconnectDisplayedCall
{
  mEMORY[0x277D6EDF8] = [MEMORY[0x277D6EDF8] sharedInstance];
  displayedCall = [(SBTelephonyManager *)self displayedCall];
  [mEMORY[0x277D6EDF8] disconnectCall:displayedCall];
}

- (void)swapCalls
{
  heldCall = [(SBTelephonyManager *)self heldCall];
  if (heldCall)
  {
    v4 = heldCall;
    activeCall = [(SBTelephonyManager *)self activeCall];

    if (activeCall)
    {
      mEMORY[0x277D6EDF8] = [MEMORY[0x277D6EDF8] sharedInstance];
      heldCall2 = [(SBTelephonyManager *)self heldCall];
      [mEMORY[0x277D6EDF8] unholdCall:heldCall2];
    }
  }
}

- (void)disconnectAllCalls
{
  if ([(SBTelephonyManager *)self inCall])
  {
    mEMORY[0x277D6EDF8] = [MEMORY[0x277D6EDF8] sharedInstance];
    [mEMORY[0x277D6EDF8] disconnectAllCalls];
  }
}

- (void)disconnectCallAndActivateHeld
{
  mEMORY[0x277D6EDF8] = [MEMORY[0x277D6EDF8] sharedInstance];
  [mEMORY[0x277D6EDF8] disconnectCurrentCallAndActivateHeld];
}

- (void)dumpBasebandState:(id)state
{
  v9 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  if ([(SBTelephonyManager *)self _serverConnection])
  {
    v5 = SBLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = stateCopy;
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
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v3 = NSHomeDirectory();
  v4 = [v3 stringByAppendingPathComponent:@"SBNetworkRegistrationCookie"];
  v5 = [defaultManager fileExistsAtPath:v4];

  return v5 ^ 1;
}

- (void)setNetworkRegistrationEnabled:(BOOL)enabled
{
  if (enabled)
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v5 = NSHomeDirectory();
    v6 = [v5 stringByAppendingPathComponent:@"SBNetworkRegistrationCookie"];
    [defaultManager removeItemAtPath:v6 error:0];

    if (![(SBTelephonyManager *)self _serverConnection])
    {
      return;
    }

    v7 = _CTServerConnectionEnableRegistration();
  }

  else
  {
    data = [MEMORY[0x277CBEA90] data];
    v9 = NSHomeDirectory();
    v10 = [v9 stringByAppendingPathComponent:@"SBNetworkRegistrationCookie"];
    [data writeToFile:v10 options:0x10000000 error:0];

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
  sharedInstance = [getRTTSettingsClass() sharedInstance];
  if ([sharedInstance TTYSoftwareEnabled])
  {
    tTYHardwareEnabled = 1;
  }

  else
  {
    tTYHardwareEnabled = [sharedInstance TTYHardwareEnabled];
  }

  return tTYHardwareEnabled;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  v7 = [change objectForKey:{*MEMORY[0x277CCA2F0], object}];
  bOOLValue = [v7 BOOLValue];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __69__SBTelephonyManager_observeValueForKeyPath_ofObject_change_context___block_invoke;
  v9[3] = &unk_2783A9F58;
  v9[4] = self;
  v10 = bOOLValue;
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

- (void)_setCurrentActivationAlertItem:(id)item
{
  itemCopy = item;
  activationAlertItem = self->_activationAlertItem;
  p_activationAlertItem = &self->_activationAlertItem;
  v6 = activationAlertItem;
  v11 = itemCopy;
  if (activationAlertItem != itemCopy)
  {
    if (v6)
    {
      v9 = +[SBAlertItemsController sharedInstance];
      [v9 deactivateAlertItem:*p_activationAlertItem];
    }

    objc_storeStrong(p_activationAlertItem, item);
    if (*p_activationAlertItem)
    {
      [(SBAlertItem *)*p_activationAlertItem setSuppressForKeynote:1];
      v10 = +[SBAlertItemsController sharedInstance];
      [v10 activateAlertItem:*p_activationAlertItem];
    }
  }
}

- (void)_provisioningUpdateWithStatus:(int)status slot:(int64_t)slot
{
  telephonyStateProvider = [(SBTelephonyManager *)self telephonyStateProvider];
  v7 = [telephonyStateProvider subscriptionInfoForSlot:1];
  sIMStatus = [v7 SIMStatus];
  v9 = *MEMORY[0x277CC3F00];
  v10 = [sIMStatus isEqualToString:*MEMORY[0x277CC3F00]];

  v11 = [telephonyStateProvider subscriptionInfoForSlot:2];
  sIMStatus2 = [v11 SIMStatus];
  v13 = [sIMStatus2 isEqualToString:v9];

  v14 = MGGetBoolAnswer();
  if (status == 2)
  {
    ++self->_numActivationFailures;
    if (self->_hasCellularTelephony)
    {
      v20 = [[SBActivationFailedAlertItem alloc] initWithFailureCount:self->_numActivationFailures slot:slot];
LABEL_13:
      v25 = +[SBSetupManager sharedInstance];
      isInSetupMode = [v25 isInSetupMode];

      if (isInSetupMode)
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

  if (status == 1)
  {
    if (self->_hasCellularTelephony)
    {
      v22 = [SBDismissOnlyAlertItem alloc];
      mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
      v24 = [mainBundle localizedStringForKey:@"PHONE_ACTIVATED" value:&stru_283094718 table:@"SpringBoard"];
      v20 = [(SBDismissOnlyAlertItem *)v22 initWithTitle:v24 body:0];

      goto LABEL_13;
    }

    goto LABEL_15;
  }

  if (!status && (*(self + 56) & 1) == 0 && ((v14 ^ 1 | v10 | v13) & 1) != 0)
  {
    if (self->_hasCellularTelephony)
    {
      v15 = [SBDismissOnlyAlertItem alloc];
      mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
      v17 = [mainBundle2 localizedStringForKey:@"WAITING_FOR_ACTIVATION_TITLE" value:&stru_283094718 table:@"SpringBoard"];
      mainBundle3 = [MEMORY[0x277CCA8D8] mainBundle];
      v19 = [mainBundle3 localizedStringForKey:@"WAITING_FOR_ACTIVATION_BODY" value:&stru_283094718 table:@"SpringBoard"];
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

- (void)_setIsInEmergencyCallbackMode:(unsigned __int8)mode
{
  v14 = *MEMORY[0x277D85DE8];
  inEmergencyCallbackMode = self->_inEmergencyCallbackMode;
  v4 = mode != 0;
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
  _primarySubscriptionSlot = [(SBTelephonyManager *)self _primarySubscriptionSlot];
  telephonyStateProvider = [(SBTelephonyManager *)self telephonyStateProvider];
  v5 = [telephonyStateProvider subscriptionInfoForSlot:_primarySubscriptionSlot];

  return v5;
}

- (id)_primaryCarrierBundleInfo
{
  _primarySubscriptionSlot = [(SBTelephonyManager *)self _primarySubscriptionSlot];
  telephonyStateProvider = [(SBTelephonyManager *)self telephonyStateProvider];
  v5 = [telephonyStateProvider carrierBundleInfoForSlot:_primarySubscriptionSlot];

  return v5;
}

- (id)_primaryMobileEquipmentInfo
{
  _primarySubscriptionSlot = [(SBTelephonyManager *)self _primarySubscriptionSlot];
  telephonyStateProvider = [(SBTelephonyManager *)self telephonyStateProvider];
  v5 = [telephonyStateProvider mobileEquipmentInfoForSlot:_primarySubscriptionSlot];

  return v5;
}

- (id)_secondarySubscriptionInfo
{
  _secondarySubscriptionSlot = [(SBTelephonyManager *)self _secondarySubscriptionSlot];
  telephonyStateProvider = [(SBTelephonyManager *)self telephonyStateProvider];
  v5 = [telephonyStateProvider subscriptionInfoForSlot:_secondarySubscriptionSlot];

  return v5;
}

- (id)_secondarySubscriptionInfoIfEnabled
{
  _secondarySubscriptionSlotIfEnabled = [(SBTelephonyManager *)self _secondarySubscriptionSlotIfEnabled];
  telephonyStateProvider = [(SBTelephonyManager *)self telephonyStateProvider];
  v5 = [telephonyStateProvider subscriptionInfoForSlot:_secondarySubscriptionSlotIfEnabled];

  return v5;
}

- (id)_secondaryCarrierBundleInfo
{
  _secondarySubscriptionSlot = [(SBTelephonyManager *)self _secondarySubscriptionSlot];
  telephonyStateProvider = [(SBTelephonyManager *)self telephonyStateProvider];
  v5 = [telephonyStateProvider carrierBundleInfoForSlot:_secondarySubscriptionSlot];

  return v5;
}

- (id)_secondaryCarrierBundleInfoIfEnabled
{
  _secondarySubscriptionSlotIfEnabled = [(SBTelephonyManager *)self _secondarySubscriptionSlotIfEnabled];
  telephonyStateProvider = [(SBTelephonyManager *)self telephonyStateProvider];
  v5 = [telephonyStateProvider carrierBundleInfoForSlot:_secondarySubscriptionSlotIfEnabled];

  return v5;
}

- (id)_secondaryMobileEquipmentInfo
{
  _secondarySubscriptionSlot = [(SBTelephonyManager *)self _secondarySubscriptionSlot];
  telephonyStateProvider = [(SBTelephonyManager *)self telephonyStateProvider];
  v5 = [telephonyStateProvider mobileEquipmentInfoForSlot:_secondarySubscriptionSlot];

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
  _primarySubscriptionSlot = [(SBTelephonyManager *)self _primarySubscriptionSlot];

  return [(SBTelephonyManager *)self _otherSubscriptionSlot:_primarySubscriptionSlot];
}

- (int64_t)_secondarySubscriptionSlotIfEnabled
{
  if (!self->_containsCellularRadio)
  {
    return 0;
  }

  telephonyStateProvider = [(SBTelephonyManager *)self telephonyStateProvider];
  isDualSIMEnabled = [telephonyStateProvider isDualSIMEnabled];

  if (!isDualSIMEnabled)
  {
    return 0;
  }

  _primarySubscriptionSlot = [(SBTelephonyManager *)self _primarySubscriptionSlot];

  return [(SBTelephonyManager *)self _otherSubscriptionSlotIfSIMPresent:_primarySubscriptionSlot];
}

- (int64_t)_otherSubscriptionSlot:(int64_t)slot
{
  if (slot == 1)
  {
    return 2;
  }

  else
  {
    return slot == 2;
  }
}

- (int64_t)_otherSubscriptionSlotIfSIMPresent:(int64_t)present
{
  v4 = [(SBTelephonyManager *)self _otherSubscriptionSlot:present];

  return [(SBTelephonyManager *)self _subscriptionSlotIfSIMPresent:v4];
}

- (int64_t)_dataPreferredSubscriptionSlotIfSIMPresent
{
  v3 = [(SBTelephonyManager *)self _subscriptionSlotIfSIMPresent:2];
  telephonyStateProvider = [(SBTelephonyManager *)self telephonyStateProvider];
  v5 = [telephonyStateProvider subscriptionInfoForSlot:v3];

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

- (int64_t)_subscriptionSlotIfSIMPresent:(int64_t)present
{
  telephonyStateProvider = [(SBTelephonyManager *)self telephonyStateProvider];
  v5 = [telephonyStateProvider isSIMPresentForSlot:present];

  if (v5)
  {
    return present;
  }

  else
  {
    return 0;
  }
}

- (void)subscriptionInfoDidChangeForStateProvider:(id)provider slot:(int64_t)slot
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __69__SBTelephonyManager_subscriptionInfoDidChangeForStateProvider_slot___block_invoke;
  v4[3] = &unk_2783A8BC8;
  v4[4] = self;
  v4[5] = slot;
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

- (void)carrierBundleInfoDidChangeForStateProvider:(id)provider slot:(int64_t)slot
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
  _primaryCarrierBundleInfo = [(SBTelephonyManager *)self _primaryCarrierBundleInfo];
  disabledApplicationIDs = [_primaryCarrierBundleInfo disabledApplicationIDs];

  v5 = [MEMORY[0x277CBEB58] set];
  v6 = v5;
  if (disabledApplicationIDs)
  {
    [v5 addObjectsFromArray:disabledApplicationIDs];
  }

  _secondaryCarrierBundleInfoIfEnabled = [(SBTelephonyManager *)self _secondaryCarrierBundleInfoIfEnabled];
  disabledApplicationIDs2 = [_secondaryCarrierBundleInfoIfEnabled disabledApplicationIDs];

  if (disabledApplicationIDs2)
  {
    [v6 addObjectsFromArray:disabledApplicationIDs2];
  }

  return v6;
}

- (void)_queue_noteWirelessModemDynamicStoreChanged
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  selfCopy = self;
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

- (void)_setIsNetworkTethering:(BOOL)tethering withNumberOfDevices:(int)devices
{
  tetheringCopy = tethering;
  v20 = *MEMORY[0x277D85DE8];
  if (self->_isNetworkTethering != tethering || self->_numberOfNetworkTetheredDevices != devices)
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
      if (tetheringCopy)
      {
        v8 = @"ON";
      }

      v13 = v10;
      v14 = 1024;
      v15 = numberOfNetworkTetheredDevices;
      v16 = 2114;
      v17 = v8;
      v18 = 1024;
      devicesCopy = devices;
      _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "Previous tethering state was %@ with %d devices connected; new state is %{public}@ with %d devices connected; updating UI.", &v12, 0x22u);
    }

    self->_isNetworkTethering = tetheringCopy;
    self->_numberOfNetworkTetheredDevices = devices;
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:*MEMORY[0x277D67A90] object:0];
  }
}

- (void)preHeatDataLinkForDomains:(id)domains
{
  v21 = *MEMORY[0x277D85DE8];
  domainsCopy = domains;
  if ([domainsCopy count])
  {
    telephonyStateProvider = [(SBTelephonyManager *)self telephonyStateProvider];
    v6 = [telephonyStateProvider subscriptionInfoForSlot:{-[SBTelephonyManager _dataConnectedSubscriptionSlot](self, "_dataConnectedSubscriptionSlot")}];

    if (([v6 dataConnectionType] - 2) <= 8)
    {
      v14 = v6;
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v7 = domainsCopy;
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
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBTelephonyManager isUsingVPNConnection]"];
  [OUTLINED_FUNCTION_2_0(v0 v1];
}

@end