@interface PCPersistentInterfaceManager
+ (id)sharedInstance;
- (BOOL)_isCellularCall:(__CTCall *)a3;
- (BOOL)_isCurrentDataSimContextLocked:(id)a3;
- (BOOL)_isInternetReachableLocked;
- (BOOL)_isWiFiUsable;
- (BOOL)_wantsWWANInterfaceAssertion;
- (BOOL)_wantsWakeOnWiFiEnabled;
- (BOOL)_wifiIsPoorLinkQuality;
- (BOOL)_wwanIsPoorLinkQuality;
- (BOOL)allowBindingToWWAN;
- (BOOL)areAllNetworkInterfacesDisabled;
- (BOOL)doesWWANInterfaceExist;
- (BOOL)isInCall;
- (BOOL)isInternetReachable;
- (BOOL)isInternetReachableViaWiFi;
- (BOOL)isPowerStateDetectionSupported;
- (BOOL)isWWANBetterThanWiFi;
- (BOOL)isWWANInHomeCountry;
- (BOOL)isWWANInterfaceActivationPermitted;
- (BOOL)isWWANInterfaceInProlongedHighPowerState;
- (BOOL)isWWANInterfaceSuspended;
- (BOOL)isWWANInterfaceUp;
- (BOOL)isWakeOnWiFiSupported;
- (NSString)WWANInterfaceName;
- (NSString)currentLinkQualityString;
- (PCPersistentInterfaceManager)init;
- (void)_adjustWakeOnWiFi;
- (void)_adjustWakeOnWiFiLocked;
- (void)_adjustWiFiAutoAssociation;
- (void)_adjustWiFiAutoAssociationLocked;
- (void)_clearInCallWWANOverrideTimerLocked;
- (void)_createCTConnection;
- (void)_ctConnectionAttempt;
- (void)_inCallWWANOverrideTimerFired;
- (void)_mainThreadCTConnectionAttempt;
- (void)_processCallStatusChanged:(id)a3;
- (void)_processConnectionStatusLocked:(id)a3;
- (void)_processCurrentDataSimChangedLocked:(id)a3;
- (void)_processDataStatusLocked:(id)a3;
- (void)_scheduleCalloutsForSelector:(SEL)a3;
- (void)_updateCTIsWWANInHomeCountry:(BOOL)a3 isWWANInterfaceDataActive:(BOOL)a4;
- (void)_updateWWANInterfaceAssertions;
- (void)_updateWWANInterfaceAssertionsLocked;
- (void)_updateWWANInterfaceUpState;
- (void)_updateWWANInterfaceUpStateLocked;
- (void)addDelegate:(id)a3 queue:(id)a4;
- (void)connectionActivationError:(id)a3 connection:(int)a4 error:(int)a5;
- (void)connectionStateChanged:(id)a3 connection:(int)a4 dataConnectionStatusInfo:(id)a5;
- (void)currentDataSimChanged:(id)a3;
- (void)cutWiFiManagerDeviceAttached:(id)a3;
- (void)dataStatus:(id)a3 dataStatusInfo:(id)a4;
- (void)dealloc;
- (void)enableWakeOnWiFi:(BOOL)a3 forDelegate:(id)a4;
- (void)enableWiFiAutoAssociation:(BOOL)a3 forDelegate:(id)a4;
- (void)interfaceReachabilityChanged:(id)a3;
- (void)removeDelegate:(id)a3;
@end

@implementation PCPersistentInterfaceManager

- (BOOL)isPowerStateDetectionSupported
{
  [(NSRecursiveLock *)self->_lock lock];
  isPowerStateDetectionSupported = self->_isPowerStateDetectionSupported;
  [(NSRecursiveLock *)self->_lock unlock];
  return isPowerStateDetectionSupported;
}

- (BOOL)isWWANInterfaceUp
{
  [(NSRecursiveLock *)self->_lock lock];
  isWWANInterfaceUp = self->_isWWANInterfaceUp;
  [(NSRecursiveLock *)self->_lock unlock];
  return isWWANInterfaceUp;
}

- (BOOL)isInternetReachable
{
  [(NSRecursiveLock *)self->_lock lock];
  v3 = [(PCPersistentInterfaceManager *)self _isInternetReachableLocked];
  [(NSRecursiveLock *)self->_lock unlock];
  return v3;
}

+ (id)sharedInstance
{
  if (sharedInstance_pred != -1)
  {
    +[PCPersistentInterfaceManager sharedInstance];
  }

  v3 = sharedInstance_sharedInstance;

  return v3;
}

- (BOOL)_isInternetReachableLocked
{
  v3 = [PCInterfaceMonitor sharedInstanceForIdentifier:1];
  if ([v3 isInterfaceUsable] && self->_isWWANInterfaceUp)
  {
    v4 = 1;
  }

  else
  {
    v5 = [PCInterfaceMonitor sharedInstanceForIdentifier:0];
    v4 = [v5 isInterfaceUsable];
  }

  return v4;
}

- (BOOL)isInCall
{
  [(NSRecursiveLock *)self->_lock lock];
  isInCall = self->_isInCall;
  [(NSRecursiveLock *)self->_lock unlock];
  return isInCall;
}

- (NSString)currentLinkQualityString
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [PCInterfaceMonitor sharedInstanceForIdentifier:1];
  v4 = [v3 linkQualityString];
  v5 = [PCInterfaceMonitor sharedInstanceForIdentifier:0];
  v6 = [v5 linkQualityString];
  v7 = [v2 stringWithFormat:@"wwan is %@ wifi is %@", v4, v6];;

  return v7;
}

- (BOOL)_wantsWakeOnWiFiEnabled
{
  if (CFSetGetCount(self->_wakeOnWiFiDelegates) < 1)
  {
    return 0;
  }

  v2 = [MEMORY[0x277CFB998] sharedInstance];
  v3 = [v2 isWoWSupported];

  return v3;
}

- (BOOL)doesWWANInterfaceExist
{
  [(NSRecursiveLock *)self->_lock lock];
  v3 = self->_WWANInterfaceName != 0;
  [(NSRecursiveLock *)self->_lock unlock];
  return v3;
}

- (void)_adjustWiFiAutoAssociationLocked
{
  v15 = *MEMORY[0x277D85DE8];
  WiFiAutoAssociationDisableTimer = self->_WiFiAutoAssociationDisableTimer;
  if (WiFiAutoAssociationDisableTimer)
  {
    [(PCSimpleTimer *)WiFiAutoAssociationDisableTimer invalidate];
    v4 = self->_WiFiAutoAssociationDisableTimer;
    self->_WiFiAutoAssociationDisableTimer = 0;
  }

  Count = CFSetGetCount(self->_WiFiAutoAssociationDelegates);
  v6 = [MEMORY[0x277CFB998] sharedInstance];
  v7 = [v6 hasWiFiAutoAssociationClientToken:@"PCAutoAssociateToken"];

  if (Count > 0 != v7)
  {
    v8 = +[PCLog interfaceManager];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = "disabling";
      if (Count > 0)
      {
        v9 = "enabling";
      }

      v13 = 136315138;
      v14 = v9;
      _os_log_impl(&dword_25E3EF000, v8, OS_LOG_TYPE_DEFAULT, "Interface manager: %s WiFi association on wake", &v13, 0xCu);
    }

    v10 = [MEMORY[0x277CFB998] sharedInstance];
    v11 = v10;
    if (Count < 1)
    {
      [v10 removeWiFiAutoAssociationClientToken:@"PCAutoAssociateToken"];
    }

    else
    {
      [v10 addWiFiAutoAssociationClientToken:@"PCAutoAssociateToken"];
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_adjustWakeOnWiFiLocked
{
  v15 = *MEMORY[0x277D85DE8];
  wakeOnWiFiDisableTimer = self->_wakeOnWiFiDisableTimer;
  if (wakeOnWiFiDisableTimer)
  {
    [(PCSimpleTimer *)wakeOnWiFiDisableTimer invalidate];
    v4 = self->_wakeOnWiFiDisableTimer;
    self->_wakeOnWiFiDisableTimer = 0;
  }

  v5 = [(PCPersistentInterfaceManager *)self _wantsWakeOnWiFiEnabled];
  v6 = [MEMORY[0x277CFB998] sharedInstance];
  v7 = [v6 hasWoWClient:self];

  if (v5 != v7)
  {
    v8 = +[PCLog interfaceManager];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = "disabling";
      if (v5)
      {
        v9 = "enabling";
      }

      v13 = 136315138;
      v14 = v9;
      _os_log_impl(&dword_25E3EF000, v8, OS_LOG_TYPE_DEFAULT, "Interface manager: %s wake-on-WiFi", &v13, 0xCu);
    }

    v10 = [MEMORY[0x277CFB998] sharedInstance];
    v11 = v10;
    if (v5)
    {
      [v10 addWoWClient:self];
    }

    else
    {
      [v10 removeWoWClient:self];
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (BOOL)isWWANInterfaceInProlongedHighPowerState
{
  [(NSRecursiveLock *)self->_lock lock];
  isWWANInterfaceInProlongedHighPowerState = self->_isWWANInterfaceInProlongedHighPowerState;
  [(NSRecursiveLock *)self->_lock unlock];
  return isWWANInterfaceInProlongedHighPowerState;
}

uint64_t __46__PCPersistentInterfaceManager_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance = objc_alloc_init(PCPersistentInterfaceManager);

  return MEMORY[0x2821F96F8]();
}

- (PCPersistentInterfaceManager)init
{
  v12.receiver = self;
  v12.super_class = PCPersistentInterfaceManager;
  v2 = [(PCPersistentInterfaceManager *)&v12 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CCAC60]);
    lock = v2->_lock;
    v2->_lock = v3;

    [(NSRecursiveLock *)v2->_lock lock];
    v5 = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    delegatesAndQueues = v2->_delegatesAndQueues;
    v2->_delegatesAndQueues = v5;

    v2->_WiFiAutoAssociationDelegates = CFSetCreateMutable(0, 0, 0);
    v2->_wakeOnWiFiDelegates = CFSetCreateMutable(0, 0, 0);
    v2->_ctIsWWANInHomeCountry = 1;
    v2->_isWWANInterfaceActivationPermitted = 0;
    [(PCPersistentInterfaceManager *)v2 _createCTConnection];
    v7 = [PCInterfaceMonitor sharedInstanceForIdentifier:1];
    v8 = MEMORY[0x277D85CD0];
    [v7 addDelegate:v2 queue:MEMORY[0x277D85CD0]];

    v9 = [PCInterfaceMonitor sharedInstanceForIdentifier:0];
    [v9 addDelegate:v2 queue:v8];

    [(PCPersistentInterfaceManager *)v2 _updateWWANInterfaceUpStateLocked];
    v10 = [MEMORY[0x277CFB998] sharedInstance];
    [v10 addDelegate:v2];

    [(NSRecursiveLock *)v2->_lock unlock];
  }

  return v2;
}

- (void)dealloc
{
  v3 = [PCInterfaceMonitor sharedInstanceForIdentifier:1];
  [v3 removeDelegate:self];

  v4 = [PCInterfaceMonitor sharedInstanceForIdentifier:0];
  [v4 removeDelegate:self];

  v5 = [MEMORY[0x277CFB998] sharedInstance];
  [v5 removeDelegate:self];

  WiFiAutoAssociationDelegates = self->_WiFiAutoAssociationDelegates;
  if (WiFiAutoAssociationDelegates)
  {
    CFRelease(WiFiAutoAssociationDelegates);
  }

  wakeOnWiFiDelegates = self->_wakeOnWiFiDelegates;
  if (wakeOnWiFiDelegates)
  {
    CFRelease(wakeOnWiFiDelegates);
  }

  interfaceAssertion = self->_interfaceAssertion;
  if (interfaceAssertion)
  {
    CFRelease(interfaceAssertion);
  }

  ctServerConnection = self->_ctServerConnection;
  if (ctServerConnection)
  {
    CFRelease(ctServerConnection);
  }

  v10.receiver = self;
  v10.super_class = PCPersistentInterfaceManager;
  [(PCPersistentInterfaceManager *)&v10 dealloc];
}

- (void)addDelegate:(id)a3 queue:(id)a4
{
  lock = self->_lock;
  v7 = a4;
  v8 = a3;
  [(NSRecursiveLock *)lock lock];
  v9 = objc_alloc_init(PCDelegateInfo);
  [(PCDelegateInfo *)v9 setQueue:v7];

  [(NSMapTable *)self->_delegatesAndQueues setObject:v9 forKey:v8];
  [(NSRecursiveLock *)self->_lock unlock];
}

- (void)removeDelegate:(id)a3
{
  lock = self->_lock;
  v5 = a3;
  [(NSRecursiveLock *)lock lock];
  [(NSMapTable *)self->_delegatesAndQueues removeObjectForKey:v5];

  v6 = self->_lock;

  [(NSRecursiveLock *)v6 unlock];
}

- (void)_createCTConnection
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"PCPersistentInterfaceManager.m" lineNumber:174 description:@"CTServerConnectionRef already exists"];
}

void __51__PCPersistentInterfaceManager__createCTConnection__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = objc_autoreleasePoolPush();
  v7 = [*(a1 + 32) object];
  v8 = [a2 copy];
  v9 = [a3 copy];
  if (v7)
  {
    v10 = *(a1 + 40);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __51__PCPersistentInterfaceManager__createCTConnection__block_invoke_2;
    block[3] = &unk_279A19CF8;
    v12 = v8;
    v13 = v7;
    v14 = v9;
    dispatch_async(v10, block);
  }

  objc_autoreleasePoolPop(v6);
}

uint64_t __51__PCPersistentInterfaceManager__createCTConnection__block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) isEqualToString:*MEMORY[0x277CC37E8]];
  if (result)
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);

    return [v3 _processCallStatusChanged:v4];
  }

  return result;
}

uint64_t __51__PCPersistentInterfaceManager__createCTConnection__block_invoke_3(uint64_t a1)
{
  [*(*(a1 + 32) + 8) lock];
  [*(a1 + 32) _processCurrentDataSimChangedLocked:*(a1 + 40)];
  v2 = *(*(a1 + 32) + 8);

  return [v2 unlock];
}

uint64_t __51__PCPersistentInterfaceManager__createCTConnection__block_invoke_4(uint64_t a1)
{
  [*(*(a1 + 32) + 8) lock];
  [*(a1 + 32) _processConnectionStatusLocked:*(a1 + 40)];
  v2 = *(*(a1 + 32) + 8);

  return [v2 unlock];
}

uint64_t __51__PCPersistentInterfaceManager__createCTConnection__block_invoke_27(uint64_t a1)
{
  [*(*(a1 + 32) + 8) lock];
  [*(a1 + 32) _processDataStatusLocked:*(a1 + 40)];
  v2 = *(*(a1 + 32) + 8);

  return [v2 unlock];
}

- (void)_mainThreadCTConnectionAttempt
{
  v3 = objc_alloc(MEMORY[0x277CBEA60]);
  v4 = [v3 initWithObjects:{*MEMORY[0x277CBE738], 0}];
  [(PCPersistentInterfaceManager *)self performSelector:sel__ctConnectionAttempt withObject:0 afterDelay:v4 inModes:10.0];
}

- (void)_ctConnectionAttempt
{
  v3 = objc_autoreleasePoolPush();
  [(NSRecursiveLock *)self->_lock lock];
  v4 = [MEMORY[0x277CBEB88] mainRunLoop];
  [v4 cancelPerformSelector:sel__mainThreadCTConnectionAttempt target:self argument:0];

  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel__ctConnectionAttempt object:0];
  v5 = [MEMORY[0x277CBEB88] mainRunLoop];
  [v5 cancelPerformSelector:sel__ctConnectionAttempt target:self argument:0];

  interfaceAssertion = self->_interfaceAssertion;
  if (interfaceAssertion)
  {
    CFRelease(interfaceAssertion);
    self->_interfaceAssertion = 0;
  }

  ctClient = self->_ctClient;
  self->_ctClient = 0;

  currentDataSimContext = self->_currentDataSimContext;
  self->_currentDataSimContext = 0;

  [(PCPersistentInterfaceManager *)self _createCTConnection];
  [(PCPersistentInterfaceManager *)self _updateWWANInterfaceAssertionsLocked];
  [(NSRecursiveLock *)self->_lock unlock];

  objc_autoreleasePoolPop(v3);
}

- (void)interfaceReachabilityChanged:(id)a3
{
  [(PCPersistentInterfaceManager *)self _updateWWANInterfaceUpState];
  [(NSRecursiveLock *)self->_lock lock];
  [(PCPersistentInterfaceManager *)self _scheduleCalloutsForSelector:sel_interfaceManagerInternetReachabilityChanged_];
  lock = self->_lock;

  [(NSRecursiveLock *)lock unlock];
}

- (void)currentDataSimChanged:(id)a3
{
  lock = self->_lock;
  v5 = a3;
  [(NSRecursiveLock *)lock lock];
  [(PCPersistentInterfaceManager *)self _processCurrentDataSimChangedLocked:v5];

  v6 = self->_lock;

  [(NSRecursiveLock *)v6 unlock];
}

- (void)connectionStateChanged:(id)a3 connection:(int)a4 dataConnectionStatusInfo:(id)a5
{
  v8 = a5;
  if (!a4)
  {
    v11 = v8;
    lock = self->_lock;
    v10 = a3;
    [(NSRecursiveLock *)lock lock];
    LODWORD(lock) = [(PCPersistentInterfaceManager *)self _isCurrentDataSimContextLocked:v10];

    if (lock)
    {
      [(PCPersistentInterfaceManager *)self _processConnectionStatusLocked:v11];
    }

    [(NSRecursiveLock *)self->_lock unlock];
    v8 = v11;
  }
}

- (void)connectionActivationError:(id)a3 connection:(int)a4 error:(int)a5
{
  v19 = *MEMORY[0x277D85DE8];
  v8 = a3;
  [(NSRecursiveLock *)self->_lock lock];
  if (!a4 && [(PCPersistentInterfaceManager *)self _isCurrentDataSimContextLocked:v8])
  {
    v9 = [(CoreTelephonyClient *)self->_ctClient getDataStatus:v8 error:0];
    v10 = [v9 cellularDataPossible];

    v11 = +[PCLog interfaceManager];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 67109120;
      LODWORD(v16) = a5;
      _os_log_impl(&dword_25E3EF000, v11, OS_LOG_TYPE_DEFAULT, "Interface manager: received connectionActivationError %u", &v15, 8u);
    }

    v12 = +[PCLog interfaceManager];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = @"NO";
      if (v10)
      {
        v13 = @"YES";
      }

      v15 = 138543618;
      v16 = self;
      v17 = 2114;
      v18 = v13;
      _os_log_impl(&dword_25E3EF000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: Interface manager: setting _isWWANInterfaceActivationPermitted to %{public}@ due to kCTRegistrationCellularDataPlanActivateFailedNotification", &v15, 0x16u);
    }

    self->_isWWANInterfaceActivationPermitted = v10;
    [(PCPersistentInterfaceManager *)self _updateWWANInterfaceAssertionsLocked];
  }

  [(NSRecursiveLock *)self->_lock unlock];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)dataStatus:(id)a3 dataStatusInfo:(id)a4
{
  v8 = a4;
  lock = self->_lock;
  v7 = a3;
  [(NSRecursiveLock *)lock lock];
  LODWORD(lock) = [(PCPersistentInterfaceManager *)self _isCurrentDataSimContextLocked:v7];

  if (lock)
  {
    [(PCPersistentInterfaceManager *)self _processDataStatusLocked:v8];
  }

  [(NSRecursiveLock *)self->_lock unlock];
}

- (BOOL)_isCurrentDataSimContextLocked:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && self->_currentDataSimContext)
  {
    v6 = [v4 slotID];
    v7 = v6 == [(CTXPCServiceSubscriptionContext *)self->_currentDataSimContext slotID];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_processCurrentDataSimChangedLocked:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = +[PCLog interfaceManager];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    currentDataSimContext = self->_currentDataSimContext;
    v10 = 138412546;
    v11 = currentDataSimContext;
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&dword_25E3EF000, v5, OS_LOG_TYPE_DEFAULT, "Interface manager: updating currentDataSimContext. {old: %@; new: %@}", &v10, 0x16u);
  }

  v7 = [v4 copy];
  v8 = self->_currentDataSimContext;
  self->_currentDataSimContext = v7;

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_processConnectionStatusLocked:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 state];
  v6 = [v4 suspended];
  v7 = [v4 interfaceName];

  if (![(NSString *)self->_WWANInterfaceName isEqualToString:v7])
  {
    v8 = [v7 copy];
    WWANInterfaceName = self->_WWANInterfaceName;
    self->_WWANInterfaceName = v8;

    v10 = +[PCLog interfaceManager];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = self->_WWANInterfaceName;
      v17 = 138412290;
      v18 = v11;
      _os_log_impl(&dword_25E3EF000, v10, OS_LOG_TYPE_DEFAULT, "Interface manager: wwan interface name changed to %@", &v17, 0xCu);
    }
  }

  if (self->_isWWANInterfaceDataActive != (v5 == 2))
  {
    [(PCPersistentInterfaceManager *)self _updateCTIsWWANInHomeCountry:self->_ctIsWWANInHomeCountry isWWANInterfaceDataActive:v5 == 2];
    v12 = +[PCLog interfaceManager];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      if (self->_isWWANInterfaceDataActive)
      {
        v13 = "true";
      }

      else
      {
        v13 = "false";
      }

      v17 = 136315138;
      v18 = v13;
      _os_log_impl(&dword_25E3EF000, v12, OS_LOG_TYPE_DEFAULT, "Interface manager: PDP context _isWWANInterfaceDataActive status changed to %s", &v17, 0xCu);
    }
  }

  if (self->_isWWANInterfaceSuspended != v6)
  {
    self->_isWWANInterfaceSuspended = v6;
    v14 = +[PCLog interfaceManager];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      if (self->_isWWANInterfaceSuspended)
      {
        v15 = "true";
      }

      else
      {
        v15 = "false";
      }

      v17 = 136315138;
      v18 = v15;
      _os_log_impl(&dword_25E3EF000, v14, OS_LOG_TYPE_DEFAULT, "Interface manager: PDP context _isWWANInterfaceSuspended status changed to  %s", &v17, 0xCu);
    }
  }

  [(PCPersistentInterfaceManager *)self _updateWWANInterfaceUpStateLocked];

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_processDataStatusLocked:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 indicator];
  v6 = v5 < 6;
  v7 = [v4 indicator] != 0;
  v8 = [v4 cellularDataPossible];
  v9 = [v4 inHomeCountry];
  if (self->_isWWANInterfaceInProlongedHighPowerState != v6)
  {
    self->_isWWANInterfaceInProlongedHighPowerState = v6;
    if (v5 <= 5)
    {
      self->_isPowerStateDetectionSupported = 1;
    }

    v10 = +[PCLog interfaceManager];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      if (self->_isWWANInterfaceInProlongedHighPowerState)
      {
        v11 = "active";
      }

      else
      {
        v11 = "inactive";
      }

      v23 = 136315394;
      v24 = v11;
      v25 = 1024;
      v26 = [v4 indicator];
      _os_log_impl(&dword_25E3EF000, v10, OS_LOG_TYPE_DEFAULT, "Interface manager: WWAN radio power level notification; high power state changed to %s with data indicator %d", &v23, 0x12u);
    }

    [(PCPersistentInterfaceManager *)self _scheduleCalloutsForSelector:sel_interfaceManagerWWANInterfaceChangedPowerState_];
  }

  if (self->_ctIsWWANInHomeCountry != v9)
  {
    v12 = +[PCLog interfaceManager];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = "false";
      if (v9)
      {
        v13 = "true";
      }

      v23 = 136315138;
      v24 = v13;
      _os_log_impl(&dword_25E3EF000, v12, OS_LOG_TYPE_DEFAULT, "Interface manager: PDP context _ctIsWWANInHomeCountry status changed to %s", &v23, 0xCu);
    }

    [(PCPersistentInterfaceManager *)self _updateCTIsWWANInHomeCountry:v9 isWWANInterfaceDataActive:self->_isWWANInterfaceDataActive];
  }

  if (self->_hasWWANStatusIndicator != v7)
  {
    self->_hasWWANStatusIndicator = v7;
    v14 = +[PCLog interfaceManager];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [v4 indicator];
      v23 = 67109120;
      LODWORD(v24) = v15;
      _os_log_impl(&dword_25E3EF000, v14, OS_LOG_TYPE_DEFAULT, "Interface manager: PDP context WWANStatusIndicator changed to %u.", &v23, 8u);
    }
  }

  if (self->_isWWANInterfaceActivationPermitted != v8)
  {
    self->_isWWANInterfaceActivationPermitted = v8;
    v16 = +[PCLog interfaceManager];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      if (self->_isWWANInterfaceActivationPermitted)
      {
        v17 = @"YES";
      }

      else
      {
        v17 = @"NO";
      }

      v23 = 138543362;
      v24 = v17;
      _os_log_impl(&dword_25E3EF000, v16, OS_LOG_TYPE_DEFAULT, "Interface manager: PDP context _isWWANInterfaceActivationPermitted to %{public}@ (isWWANInterfaceDataAttached).", &v23, 0xCu);
    }
  }

  [(PCPersistentInterfaceManager *)self _updateWWANInterfaceUpStateLocked];
  if (!self->_isWWANInterfaceDataActive)
  {
    if (v8)
    {
      if (self->_hasWWANStatusIndicator)
      {
        if ([(PCPersistentInterfaceManager *)self _wantsWWANInterfaceAssertion])
        {
          Current = CFAbsoluteTimeGetCurrent();
          lastActivationTime = self->_lastActivationTime;
          if (lastActivationTime > Current || lastActivationTime + 900.0 < Current)
          {
            v20 = +[PCLog interfaceManager];
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(v23) = 0;
              _os_log_impl(&dword_25E3EF000, v20, OS_LOG_TYPE_DEFAULT, "Interface manager: data attached but not active; activating context", &v23, 2u);
            }

            v21 = [(CoreTelephonyClient *)self->_ctClient setPacketContextActiveByServiceType:self->_currentDataSimContext connectionType:0 active:1];
            self->_lastActivationTime = Current;
          }
        }
      }
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (BOOL)_isCellularCall:(__CTCall *)a3
{
  if (!a3)
  {
    return 0;
  }

  v3 = CTCallGetCallSubType();
  return CFEqual(v3, *MEMORY[0x277CC37F0]) != 0;
}

- (void)_processCallStatusChanged:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
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

  v8 = v7 & -[PCPersistentInterfaceManager _isCellularCall:](self, "_isCellularCall:", [v4 objectForKey:*MEMORY[0x277CC37C8]]);
  [(NSRecursiveLock *)self->_lock lock];
  if (self->_isInCall != v8)
  {
    self->_isInCall = v8;
    v9 = +[PCLog interfaceManager];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      if (self->_isInCall)
      {
        v10 = "in";
      }

      else
      {
        v10 = "not in";
      }

      v20 = 136315138;
      v21 = v10;
      _os_log_impl(&dword_25E3EF000, v9, OS_LOG_TYPE_DEFAULT, "Interface manager: call status is %s call", &v20, 0xCu);
    }

    inCallWWANOverrideTimer = self->_inCallWWANOverrideTimer;
    [(PCPersistentInterfaceManager *)self _clearInCallWWANOverrideTimerLocked];
    if (self->_isInCall)
    {
      v12 = [MEMORY[0x277CBEBB8] timerWithTimeInterval:self target:sel__inCallWWANOverrideTimerFired selector:0 userInfo:0 repeats:15.0];
      v13 = self->_inCallWWANOverrideTimer;
      self->_inCallWWANOverrideTimer = v12;

      v14 = +[PCLog interfaceManager];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = self->_inCallWWANOverrideTimer;
        v20 = 138543874;
        v21 = self;
        v22 = 2048;
        v23 = 0x402E000000000000;
        v24 = 2114;
        v25 = v15;
        _os_log_impl(&dword_25E3EF000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@: Interface manager: overriding WWAN interface while on call for %f seconds: %{public}@", &v20, 0x20u);
      }

      v16 = [MEMORY[0x277CBEB88] mainRunLoop];
      [v16 addTimer:self->_inCallWWANOverrideTimer forMode:*MEMORY[0x277CBE738]];

      Main = CFRunLoopGetMain();
      CFRunLoopWakeUp(Main);
      v18 = 1;
    }

    else
    {
      v18 = 0;
    }

    if (v18 != (inCallWWANOverrideTimer != 0))
    {
      [(PCPersistentInterfaceManager *)self _updateWWANInterfaceUpStateLocked];
    }

    [(PCPersistentInterfaceManager *)self _updateWWANInterfaceAssertionsLocked];
  }

  [(NSRecursiveLock *)self->_lock unlock];

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_inCallWWANOverrideTimerFired
{
  [(NSRecursiveLock *)self->_lock lock];
  [(PCPersistentInterfaceManager *)self _clearInCallWWANOverrideTimerLocked];
  [(PCPersistentInterfaceManager *)self _updateWWANInterfaceUpStateLocked];
  lock = self->_lock;

  [(NSRecursiveLock *)lock unlock];
}

- (void)_clearInCallWWANOverrideTimerLocked
{
  v11 = *MEMORY[0x277D85DE8];
  if (self->_inCallWWANOverrideTimer)
  {
    v3 = +[PCLog interfaceManager];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      inCallWWANOverrideTimer = self->_inCallWWANOverrideTimer;
      v7 = 138543618;
      v8 = self;
      v9 = 2114;
      v10 = inCallWWANOverrideTimer;
      _os_log_impl(&dword_25E3EF000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: Interface manager: Clearing _inCallWWANOverrideTimer: %{public}@", &v7, 0x16u);
    }

    [(NSTimer *)self->_inCallWWANOverrideTimer invalidate];
    v5 = self->_inCallWWANOverrideTimer;
    self->_inCallWWANOverrideTimer = 0;
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_updateWWANInterfaceUpStateLocked
{
  v22 = *MEMORY[0x277D85DE8];
  isWWANInterfaceUp = self->_isWWANInterfaceUp;
  if (self->_inCallWWANOverrideTimer && self->_isInCall)
  {
    v4 = [(PCPersistentInterfaceManager *)self _nonCellularMonitor];
    v5 = [v4 isInterfaceUsable];
  }

  else
  {
    v5 = 0;
  }

  if (self->_isWWANInterfaceDataActive)
  {
    v6 = self->_hasWWANStatusIndicator & (v5 ^ 1);
  }

  else
  {
    v6 = 0;
  }

  self->_isWWANInterfaceUp = v6 & 1;
  v7 = +[PCLog interfaceManager];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    if (isWWANInterfaceUp)
    {
      v8 = @"YES";
    }

    else
    {
      v8 = @"NO";
    }

    if (self->_isWWANInterfaceUp)
    {
      v9 = @"YES";
    }

    else
    {
      v9 = @"NO";
    }

    *v15 = 138544386;
    if ([(PCPersistentInterfaceManager *)self _wantsWWANInterfaceAssertion])
    {
      v10 = @"YES";
    }

    else
    {
      v10 = @"NO";
    }

    *&v15[4] = self;
    if (v5)
    {
      v11 = @"YES";
    }

    else
    {
      v11 = @"NO";
    }

    *&v15[12] = 2114;
    *&v15[14] = v8;
    v16 = 2114;
    v17 = v9;
    v18 = 2114;
    v19 = v10;
    v20 = 2114;
    v21 = v11;
    _os_log_impl(&dword_25E3EF000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ _updateWWANInterfaceUpState wasUp %{public}@ isUp %{public}@ wantsInterfaceAssertion %{public}@ avoidWWANOnCall %{public}@", v15, 0x34u);
  }

  if (isWWANInterfaceUp != self->_isWWANInterfaceUp)
  {
    if (-[PCPersistentInterfaceManager _wantsWWANInterfaceAssertion](self, "_wantsWWANInterfaceAssertion") || !self->_hasWWANStatusIndicator && isWWANInterfaceUp && (+[PCInterfaceMonitor sharedInstanceForIdentifier:](PCInterfaceMonitor, "sharedInstanceForIdentifier:", 0), v13 = objc_claimAutoreleasedReturnValue(), v14 = [v13 isInternetReachable], v13, v14))
    {
      [(PCPersistentInterfaceManager *)self _scheduleCalloutsForSelector:sel_interfaceManagerWWANInterfaceStatusChanged_, *v15];
    }

    [(PCPersistentInterfaceManager *)self _scheduleCalloutsForSelector:sel_interfaceManagerInternetReachabilityChanged_, *v15];
  }

  [(PCPersistentInterfaceManager *)self _updateWWANInterfaceAssertionsLocked];
  v12 = *MEMORY[0x277D85DE8];
}

- (void)_updateWWANInterfaceUpState
{
  [(NSRecursiveLock *)self->_lock lock];
  [(PCPersistentInterfaceManager *)self _updateWWANInterfaceUpStateLocked];
  lock = self->_lock;

  [(NSRecursiveLock *)lock unlock];
}

- (void)_updateCTIsWWANInHomeCountry:(BOOL)a3 isWWANInterfaceDataActive:(BOOL)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v7 = [(PCPersistentInterfaceManager *)self _isWWANInHomeCountryLocked];
  self->_ctIsWWANInHomeCountry = a3;
  self->_isWWANInterfaceDataActive = a4;
  v8 = [(PCPersistentInterfaceManager *)self _isWWANInHomeCountryLocked];
  if (v7 != v8)
  {
    v9 = v8;
    v10 = +[PCLog interfaceManager];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = "false";
      if (v9)
      {
        v11 = "true";
      }

      v13 = 136315138;
      v14 = v11;
      _os_log_impl(&dword_25E3EF000, v10, OS_LOG_TYPE_DEFAULT, "Interface manager: isWWANInHomeCountry status changed to %s", &v13, 0xCu);
    }

    [(PCPersistentInterfaceManager *)self _scheduleCalloutsForSelector:sel_interfaceManagerInHomeCountryStatusChanged_];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (BOOL)_wwanIsPoorLinkQuality
{
  v2 = [PCInterfaceMonitor sharedInstanceForIdentifier:1];
  v3 = [v2 isPoorLinkQuality];

  return v3;
}

- (BOOL)_wifiIsPoorLinkQuality
{
  v2 = [PCInterfaceMonitor sharedInstanceForIdentifier:0];
  v3 = [v2 isPoorLinkQuality];

  return v3;
}

- (void)_scheduleCalloutsForSelector:(SEL)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = self->_delegatesAndQueues;
  v6 = [(NSMapTable *)v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        v11 = [(NSMapTable *)self->_delegatesAndQueues objectForKey:v10];
        v12 = [v11 queue];

        if (v12)
        {
          v13 = [v11 queue];
          v15[0] = MEMORY[0x277D85DD0];
          v15[1] = 3221225472;
          v15[2] = __61__PCPersistentInterfaceManager__scheduleCalloutsForSelector___block_invoke;
          v15[3] = &unk_279A19D70;
          v15[4] = self;
          v15[5] = v10;
          v16 = v11;
          v17 = a3;
          dispatch_async(v13, v15);
        }
      }

      v7 = [(NSMapTable *)v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __61__PCPersistentInterfaceManager__scheduleCalloutsForSelector___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 8) lock];
  v2 = [*(*(a1 + 32) + 16) objectForKey:*(a1 + 40)];
  v6 = [v2 queue];

  v3 = [*(a1 + 48) queue];

  [*(*(a1 + 32) + 8) unlock];
  if (v3 == v6)
  {
    v4 = *(a1 + 40);
    v5 = *(a1 + 56);
    if (objc_opt_respondsToSelector())
    {
      [*(a1 + 40) performSelector:*(a1 + 56) withObject:*(a1 + 32)];
    }
  }
}

- (BOOL)isWWANBetterThanWiFi
{
  [(NSRecursiveLock *)self->_lock lock];
  if (self->_isWWANInterfaceUp)
  {
    LOBYTE(v3) = 1;
    v4 = [PCInterfaceMonitor sharedInstanceForIdentifier:1];
    if (([v4 isInterfaceHistoricallyUsable] & 1) == 0)
    {
      v5 = [PCInterfaceMonitor sharedInstanceForIdentifier:0];
      v3 = [v5 isInterfaceUsable] ^ 1;
    }
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  [(NSRecursiveLock *)self->_lock unlock];
  return v3;
}

- (NSString)WWANInterfaceName
{
  [(NSRecursiveLock *)self->_lock lock];
  v3 = self->_WWANInterfaceName;
  [(NSRecursiveLock *)self->_lock unlock];

  return v3;
}

- (BOOL)isWWANInterfaceSuspended
{
  [(NSRecursiveLock *)self->_lock lock];
  isWWANInterfaceSuspended = self->_isWWANInterfaceSuspended;
  [(NSRecursiveLock *)self->_lock unlock];
  return isWWANInterfaceSuspended;
}

- (BOOL)isWWANInterfaceActivationPermitted
{
  [(NSRecursiveLock *)self->_lock lock];
  isWWANInterfaceActivationPermitted = self->_isWWANInterfaceActivationPermitted;
  [(NSRecursiveLock *)self->_lock unlock];
  return isWWANInterfaceActivationPermitted;
}

- (BOOL)isWWANInHomeCountry
{
  [(NSRecursiveLock *)self->_lock lock];
  v3 = [(PCPersistentInterfaceManager *)self _isWWANInHomeCountryLocked];
  [(NSRecursiveLock *)self->_lock unlock];
  return v3;
}

- (BOOL)isInternetReachableViaWiFi
{
  [(NSRecursiveLock *)self->_lock lock];
  v3 = [PCInterfaceMonitor sharedInstanceForIdentifier:0];
  v4 = [v3 isInternetReachable];

  [(NSRecursiveLock *)self->_lock unlock];
  return v4;
}

- (BOOL)_isWiFiUsable
{
  [(NSRecursiveLock *)self->_lock lock];
  v3 = [PCInterfaceMonitor sharedInstanceForIdentifier:0];
  v4 = [v3 isInterfaceUsable];

  [(NSRecursiveLock *)self->_lock unlock];
  return v4;
}

- (BOOL)isWakeOnWiFiSupported
{
  v2 = [MEMORY[0x277CFB998] sharedInstance];
  v3 = [v2 isWoWSupported];

  return v3;
}

- (BOOL)areAllNetworkInterfacesDisabled
{
  [(NSRecursiveLock *)self->_lock lock];
  if ([(PCPersistentInterfaceManager *)self _isInternetReachableLocked])
  {
    goto LABEL_2;
  }

  v4 = SCPreferencesCreateWithAuthorization(0, @"com.apple.persistentconnection", @"com.apple.radios.plist", 0);
  if (v4)
  {
    v5 = v4;
    v6 = SCPreferencesGetValue(v4, @"AirplaneMode") == *MEMORY[0x277CBED28];
    CFRelease(v5);
  }

  else
  {
    v6 = 0;
  }

  v7 = [MEMORY[0x277CFB998] sharedInstance];
  v8 = [v7 isWiFiEnabled];

  if (!v6 && self->_WWANInterfaceName && self->_isWWANInterfaceActivationPermitted)
  {
LABEL_2:
    v3 = 0;
  }

  else
  {
    v3 = v8 ^ 1;
  }

  [(NSRecursiveLock *)self->_lock unlock];
  return v3;
}

- (void)cutWiFiManagerDeviceAttached:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = +[PCLog interfaceManager];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = v4;
    _os_log_impl(&dword_25E3EF000, v5, OS_LOG_TYPE_DEFAULT, "cutWiFiManagerDeviceAttached called: %{public}@", &v7, 0xCu);
  }

  [(PCPersistentInterfaceManager *)self _adjustWakeOnWiFi];
  v6 = *MEMORY[0x277D85DE8];
}

- (BOOL)_wantsWWANInterfaceAssertion
{
  if (self->_isWWANInterfaceActivationPermitted)
  {
    if (self->_isInCall)
    {
      v2 = [PCInterfaceMonitor sharedInstanceForIdentifier:0];
      v3 = [v2 isInterfaceUsable] ^ 1;
    }

    else
    {
      LOBYTE(v3) = 1;
    }
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

- (void)_updateWWANInterfaceAssertions
{
  [(NSRecursiveLock *)self->_lock lock];
  [(PCPersistentInterfaceManager *)self _updateWWANInterfaceAssertionsLocked];
  lock = self->_lock;

  [(NSRecursiveLock *)lock unlock];
}

- (void)_updateWWANInterfaceAssertionsLocked
{
  v3 = [(PCPersistentInterfaceManager *)self _wantsWWANInterfaceAssertion];
  interfaceAssertion = self->_interfaceAssertion;
  if (v3)
  {
    if (!interfaceAssertion && self->_ctClient)
    {
      v5 = +[PCLog interfaceManager];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&dword_25E3EF000, v5, OS_LOG_TYPE_DEFAULT, "Interface manager: asserting packet context active", buf, 2u);
      }

      v6 = [(CoreTelephonyClient *)self->_ctClient setPacketContextActiveByServiceType:self->_currentDataSimContext connectionType:0 active:1];
      objc_initWeak(buf, self);
      ctClient = self->_ctClient;
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __68__PCPersistentInterfaceManager__updateWWANInterfaceAssertionsLocked__block_invoke;
      v9[3] = &unk_279A19D98;
      objc_copyWeak(&v10, buf);
      self->_interfaceAssertion = [(CoreTelephonyClient *)ctClient createAssertionForConnectionType:0 allocator:0 error:0 onReAssertError:v9];
      objc_destroyWeak(&v10);
      objc_destroyWeak(buf);
    }
  }

  else if (interfaceAssertion)
  {
    v8 = +[PCLog interfaceManager];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_25E3EF000, v8, OS_LOG_TYPE_DEFAULT, "Interface manager: clearing packet context assertion", buf, 2u);
    }

    CFRelease(self->_interfaceAssertion);
    self->_interfaceAssertion = 0;
  }
}

void __68__PCPersistentInterfaceManager__updateWWANInterfaceAssertionsLocked__block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained && WeakRetained[7])
  {
    v6 = +[PCLog interfaceManager];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v3;
      _os_log_impl(&dword_25E3EF000, v6, OS_LOG_TYPE_DEFAULT, "Interface manager: reAssert failed, dropping assertion {reAssertError: %@}", &v9, 0xCu);
    }

    [v5[1] lock];
    v7 = v5[7];
    if (v7)
    {
      CFRelease(v7);
      v5[7] = 0;
    }

    [v5[1] unlock];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)enableWiFiAutoAssociation:(BOOL)a3 forDelegate:(id)a4
{
  v4 = a3;
  lock = self->_lock;
  v7 = a4;
  [(NSRecursiveLock *)lock lock];
  WiFiAutoAssociationDelegates = self->_WiFiAutoAssociationDelegates;
  if (v4)
  {
    CFSetAddValue(WiFiAutoAssociationDelegates, v7);
  }

  else
  {
    CFSetRemoveValue(WiFiAutoAssociationDelegates, v7);
  }

  if (CFSetGetCount(self->_WiFiAutoAssociationDelegates) < 1)
  {
    if (!self->_WiFiAutoAssociationDisableTimer)
    {
      v9 = [[PCSimpleTimer alloc] initWithTimeInterval:@"interfacemanager-wifiautoassoc" serviceIdentifier:self target:sel__adjustWiFiAutoAssociation selector:0 userInfo:60.0];
      WiFiAutoAssociationDisableTimer = self->_WiFiAutoAssociationDisableTimer;
      self->_WiFiAutoAssociationDisableTimer = v9;

      [(PCSimpleTimer *)self->_WiFiAutoAssociationDisableTimer setDisableSystemWaking:1];
      v11 = self->_WiFiAutoAssociationDisableTimer;
      v12 = [MEMORY[0x277CBEB88] mainRunLoop];
      [(PCSimpleTimer *)v11 scheduleInRunLoop:v12];

      Main = CFRunLoopGetMain();
      CFRunLoopWakeUp(Main);
    }
  }

  else
  {
    [(PCPersistentInterfaceManager *)self _adjustWiFiAutoAssociationLocked];
  }

  v14 = self->_lock;

  [(NSRecursiveLock *)v14 unlock];
}

- (void)_adjustWiFiAutoAssociation
{
  [(NSRecursiveLock *)self->_lock lock];
  [(PCPersistentInterfaceManager *)self _adjustWiFiAutoAssociationLocked];
  lock = self->_lock;

  [(NSRecursiveLock *)lock unlock];
}

- (void)enableWakeOnWiFi:(BOOL)a3 forDelegate:(id)a4
{
  v4 = a3;
  lock = self->_lock;
  v7 = a4;
  [(NSRecursiveLock *)lock lock];
  wakeOnWiFiDelegates = self->_wakeOnWiFiDelegates;
  if (v4)
  {
    CFSetAddValue(wakeOnWiFiDelegates, v7);
  }

  else
  {
    CFSetRemoveValue(wakeOnWiFiDelegates, v7);
  }

  if ([(PCPersistentInterfaceManager *)self _wantsWakeOnWiFiEnabled])
  {
    [(PCPersistentInterfaceManager *)self _adjustWakeOnWiFiLocked];
  }

  else if (!self->_wakeOnWiFiDisableTimer)
  {
    v9 = [[PCSimpleTimer alloc] initWithTimeInterval:@"interfacemanager-wow" serviceIdentifier:self target:sel__adjustWakeOnWiFi selector:0 userInfo:60.0];
    wakeOnWiFiDisableTimer = self->_wakeOnWiFiDisableTimer;
    self->_wakeOnWiFiDisableTimer = v9;

    [(PCSimpleTimer *)self->_wakeOnWiFiDisableTimer setDisableSystemWaking:1];
    v11 = self->_wakeOnWiFiDisableTimer;
    v12 = [MEMORY[0x277CBEB88] mainRunLoop];
    [(PCSimpleTimer *)v11 scheduleInRunLoop:v12];

    Main = CFRunLoopGetMain();
    CFRunLoopWakeUp(Main);
  }

  v14 = self->_lock;

  [(NSRecursiveLock *)v14 unlock];
}

- (void)_adjustWakeOnWiFi
{
  [(NSRecursiveLock *)self->_lock lock];
  [(PCPersistentInterfaceManager *)self _adjustWakeOnWiFiLocked];
  lock = self->_lock;

  [(NSRecursiveLock *)lock unlock];
}

- (BOOL)allowBindingToWWAN
{
  v3 = [(PCPersistentInterfaceManager *)self doesWWANInterfaceExist];
  if (v3)
  {
    v3 = [(PCPersistentInterfaceManager *)self isWWANInterfaceActivationPermitted];
    if (v3)
    {
      if ([(PCPersistentInterfaceManager *)self isInCall])
      {
        LOBYTE(v3) = ![(PCPersistentInterfaceManager *)self _isWiFiUsable];
      }

      else
      {
        LOBYTE(v3) = 1;
      }
    }
  }

  return v3;
}

@end