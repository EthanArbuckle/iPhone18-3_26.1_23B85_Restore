@interface SBWiFiManager
+ (id)sharedInstance;
- (BOOL)_cachedIsAssociated;
- (BOOL)isAssociatedToIOSHotspot;
- (BOOL)isPowered;
- (BOOL)isPrimaryInterface;
- (BOOL)wiFiEnabled;
- (SBWiFiManager)init;
- (__CFRunLoop)wifiRunLoopRef;
- (__WiFiManagerClient)_lock_manager;
- (id)_wifiInterface;
- (id)currentNetworkName;
- (int)signalStrengthBars;
- (int)signalStrengthRSSI;
- (void)_linkDidChange;
- (void)_lock_setWiFiDevice:(__WiFiDeviceClient *)device;
- (void)_lock_spawnManagerCallbackThread;
- (void)_powerStateDidChange;
- (void)_primaryInterfaceChanged:(BOOL)changed;
- (void)_runManagerCallbackThread;
- (void)_updateCurrentNetwork;
- (void)_updateDevicePresence;
- (void)_updateSignalStrength;
- (void)_updateSignalStrengthFromRawRSSI:(int)i andScaledRSSI:(float)sI;
- (void)_updateWiFiDevice;
- (void)_updateWiFiState;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setPowered:(BOOL)powered;
- (void)setWiFiEnabled:(BOOL)enabled;
@end

@implementation SBWiFiManager

- (BOOL)_cachedIsAssociated
{
  [(NSRecursiveLock *)self->_lock lock];
  if (!self->_currentNetworkHasBeenSet)
  {
    self->_currentNetworkHasBeenSet = 1;
    [(SBWiFiManager *)self _updateCurrentNetwork];
  }

  v3 = self->_currentNetwork != 0;
  [(NSRecursiveLock *)self->_lock unlock];
  return v3;
}

+ (id)sharedInstance
{
  if (sharedInstance_pred != -1)
  {
    +[SBWiFiManager sharedInstance];
  }

  v3 = sharedInstance___sharedInstance_2;

  return v3;
}

uint64_t __31__SBWiFiManager_sharedInstance__block_invoke()
{
  kdebug_trace();
  v0 = objc_alloc_init(SBWiFiManager);
  v1 = sharedInstance___sharedInstance_2;
  sharedInstance___sharedInstance_2 = v0;

  return kdebug_trace();
}

- (SBWiFiManager)init
{
  v6.receiver = self;
  v6.super_class = SBWiFiManager;
  v2 = [(SBWiFiManager *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CCAC60]);
    lock = v2->_lock;
    v2->_lock = v3;

    [(NSRecursiveLock *)v2->_lock lock];
    [(SBWiFiManager *)v2 _lock_manager];
    [(NSRecursiveLock *)v2->_lock unlock];
  }

  return v2;
}

- (void)_updateDevicePresence
{
  v3 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__SBWiFiManager__updateDevicePresence__block_invoke;
  block[3] = &unk_2783A8C18;
  block[4] = self;
  dispatch_async(v3, block);
}

void __38__SBWiFiManager__updateDevicePresence__block_invoke(uint64_t a1)
{
  v2 = WiFiManagerClientCreate();
  if (v2)
  {
    v3 = v2;
    v4 = WiFiManagerClientCopyDevices();
    v5 = [v4 count] != 0;
    CFRelease(v3);
  }

  else
  {
    v5 = 0;
  }

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __38__SBWiFiManager__updateDevicePresence__block_invoke_2;
  v6[3] = &unk_2783A9F58;
  v7 = v5;
  v6[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __38__SBWiFiManager__updateDevicePresence__block_invoke_2(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  if (v1 != *(v2 + 48))
  {
    *(v2 + 48) = v1;
    v4 = SBLogStatusBarish();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      if (*(*(a1 + 32) + 48))
      {
        v5 = @"PRESENT";
      }

      else
      {
        v5 = @"NOT PRESENT";
      }

      v7 = 138543362;
      v8 = v5;
      _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "[SBWiFiManager] WiFi device is: %{public}@", &v7, 0xCu);
    }

    v6 = [MEMORY[0x277CCAB98] defaultCenter];
    [v6 postNotificationName:*MEMORY[0x277D67B08] object:0];
  }
}

- (void)_lock_setWiFiDevice:(__WiFiDeviceClient *)device
{
  v15 = *MEMORY[0x277D85DE8];
  if (device)
  {
    device = self->_device;
    if (device)
    {
      if (CFEqual(device, device))
      {
        goto LABEL_12;
      }

      if (self->_device)
      {
        v6 = SBLogStatusBarish();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v7 = self->_device;
          v11 = 138543618;
          v12 = v7;
          v13 = 2114;
          deviceCopy = device;
          _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "[SBWiFiManager] _setWiFiDevice: unexpected device change from '%{public}@' -> '%{public}@'", &v11, 0x16u);
        }

        if (self->_device)
        {
          WiFiDeviceClientRegisterPowerCallback();
          WiFiDeviceClientRegisterExtendedLinkCallback();
          WiFiDeviceClientRegisterLQMCallback();
          CFRelease(self->_device);
          self->_device = 0;
        }
      }
    }

    deviceInterfaceName = self->_deviceInterfaceName;
    if (deviceInterfaceName)
    {
      self->_deviceInterfaceName = 0;
    }

    self->_device = CFRetain(device);
    WiFiDeviceClientRegisterPowerCallback();
    WiFiDeviceClientRegisterExtendedLinkCallback();
    WiFiDeviceClientRegisterLQMCallback();
    v9 = WiFiDeviceClientGetInterfaceName();
    v10 = self->_deviceInterfaceName;
    self->_deviceInterfaceName = v9;

    dispatch_async(MEMORY[0x277D85CD0], &__block_literal_global_32_0);
    [(SBWiFiManager *)self _powerStateDidChange];
    [(SBWiFiManager *)self _linkDidChange];
  }

LABEL_12:
  [(SBWiFiManager *)self _updateDevicePresence];
}

void __37__SBWiFiManager__lock_setWiFiDevice___block_invoke()
{
  v0 = [MEMORY[0x277CCAB98] defaultCenter];
  [v0 postNotificationName:*MEMORY[0x277D67B00] object:0];
}

- (__WiFiManagerClient)_lock_manager
{
  result = self->_manager;
  if (!result)
  {
    if (MobileWiFiContainsRadio())
    {
      result = WiFiManagerClientCreate();
      self->_manager = result;
      if (!result)
      {
        return result;
      }
    }

    else
    {
      result = self->_manager;
      if (!result)
      {
        return result;
      }
    }

    [(SBWiFiManager *)self _lock_spawnManagerCallbackThread];
    WiFiManagerClientScheduleWithRunLoop();
    CFRunLoopWakeUp(self->_callbackRunLoop);
    WiFiManagerClientRegisterServerRestartCallback();
    WiFiManagerClientRegisterDeviceAttachmentCallback();
    [(SBWiFiManager *)self _updateWiFiDevice];
    mEMORY[0x277CD9208] = [MEMORY[0x277CD9208] sharedSystemPathMonitor];
    systemPathMonitor = self->_systemPathMonitor;
    self->_systemPathMonitor = mEMORY[0x277CD9208];

    [(NWSystemPathMonitor *)self->_systemPathMonitor addObserver:self forKeyPath:@"wifiPrimary" options:5 context:&self->_isPrimaryInterface];
    return self->_manager;
  }

  return result;
}

- (void)_lock_spawnManagerCallbackThread
{
  v4 = [objc_alloc(MEMORY[0x277CCACC8]) initWithTarget:self selector:sel__runManagerCallbackThread object:0];
  mainThread = [MEMORY[0x277CCACC8] mainThread];
  [v4 setQualityOfService:{objc_msgSend(mainThread, "qualityOfService")}];

  [v4 start];
  [(SBWiFiManager *)self performSelector:sel_class onThread:v4 withObject:0 waitUntilDone:1];
}

- (void)_runManagerCallbackThread
{
  v3 = objc_autoreleasePoolPush();
  currentThread = [MEMORY[0x277CCACC8] currentThread];
  [currentThread setName:@"SBWiFiManager callback thread"];

  Current = CFRunLoopGetCurrent();
  self->_callbackRunLoop = CFRetain(Current);
  port = [MEMORY[0x277CBEB00] port];
  currentRunLoop = [MEMORY[0x277CBEB88] currentRunLoop];
  [port scheduleInRunLoop:currentRunLoop forMode:*MEMORY[0x277CBE738]];

  objc_autoreleasePoolPop(v3);
  currentRunLoop2 = [MEMORY[0x277CBEB88] currentRunLoop];
  [currentRunLoop2 run];
}

- (void)_updateWiFiState
{
  [(NSRecursiveLock *)self->_lock lock];
  [(SBWiFiManager *)self _updateCurrentNetwork];
  if (self->_poweredHasBeenSet)
  {
    [(SBWiFiManager *)self _updateSignalStrength];
  }

  lock = self->_lock;

  [(NSRecursiveLock *)lock unlock];
}

- (void)_powerStateDidChange
{
  v9 = *MEMORY[0x277D85DE8];
  [(NSRecursiveLock *)self->_lock lock];
  powered = self->_powered;
  if (self->_device)
  {
    v4 = WiFiDeviceClientGetPower() != 0;
  }

  else
  {
    v4 = 0;
  }

  self->_powered = v4;
  self->_poweredHasBeenSet = 1;
  [(SBWiFiManager *)self _updateWiFiState];
  [(NSRecursiveLock *)self->_lock unlock];
  v5 = SBLogStatusBarish();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109376;
    v6[1] = powered;
    v7 = 1024;
    v8 = v4;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "[SBWiFiManager] _powerStateDidChange from %d to %d", v6, 0xEu);
  }

  [(SBWiFiManager *)self _updateDevicePresence];
  dispatch_async(MEMORY[0x277D85CD0], &__block_literal_global_48);
}

void __37__SBWiFiManager__powerStateDidChange__block_invoke()
{
  v0 = [MEMORY[0x277CCAB98] defaultCenter];
  [v0 postNotificationName:*MEMORY[0x277D67B10] object:0];
}

- (void)_linkDidChange
{
  v3 = SBLogStatusBarish();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "[SBWiFiManager] _linkDidChange", v5, 2u);
  }

  v4 = MEMORY[0x277D85CD0];
  dispatch_async(MEMORY[0x277D85CD0], &__block_literal_global_50_0);
  [(SBWiFiManager *)self _updateWiFiState];
  dispatch_async(v4, &__block_literal_global_52);
}

void __31__SBWiFiManager__linkDidChange__block_invoke()
{
  v0 = [MEMORY[0x277CCAB98] defaultCenter];
  [v0 postNotificationName:@"SBWifiManagerLinkWillChangeNotification" object:0];
}

void __31__SBWiFiManager__linkDidChange__block_invoke_2()
{
  v0 = [MEMORY[0x277CCAB98] defaultCenter];
  [v0 postNotificationName:@"SBWifiManagerLinkDidChangeNotification" object:0];
}

- (void)_updateCurrentNetwork
{
  v41 = *MEMORY[0x277D85DE8];
  [(NSRecursiveLock *)self->_lock lock];
  [(SBWiFiManager *)self _lock_manager];
  if (!self->_device)
  {
    v9 = SBLogStatusBarish();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "[SBWiFiManager] _updateCurrentNetwork: no _device to query current network - assuming nil", buf, 2u);
    }

    goto LABEL_12;
  }

  v3 = WiFiDeviceClientCopyCurrentNetwork();
  v4 = SBLogStatusBarish();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v36 = v3;
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "[SBWiFiManager] _updateCurrentNetwork: WiFiDeviceClientCopyCurrentNetwork: %{public}@", buf, 0xCu);
  }

  if (!v3)
  {
LABEL_12:
    p_currentNetwork = &self->_currentNetwork;
    currentNetwork = self->_currentNetwork;
    if (!currentNetwork)
    {
      goto LABEL_42;
    }

    v3 = 0;
    v8 = 1;
    goto LABEL_14;
  }

  p_currentNetwork = &self->_currentNetwork;
  v5 = self->_currentNetwork;
  if (!v5)
  {
    goto LABEL_20;
  }

  if (CFEqual(v3, v5))
  {
LABEL_41:
    CFRelease(v3);
    goto LABEL_42;
  }

  currentNetwork = *p_currentNetwork;
  if (!*p_currentNetwork)
  {
LABEL_20:
    previousNetwork = self->_previousNetwork;
    if (previousNetwork)
    {
      CFRelease(previousNetwork);
      self->_previousNetwork = 0;
    }

    goto LABEL_22;
  }

  v8 = 0;
LABEL_14:
  v10 = self->_previousNetwork;
  if (v10)
  {
    CFRelease(v10);
    currentNetwork = *p_currentNetwork;
  }

  self->_currentNetwork = 0;
  self->_previousNetwork = currentNetwork;
  v11 = SBLogStatusBarish();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEFAULT, "[SBWiFiManager] _updateCurrentNetwork: setting _previousNetwork = _currentNetwork, _currentNetwork = nil", buf, 2u);
  }

  if (v8)
  {
    v12 = 1;
    goto LABEL_36;
  }

LABEL_22:
  SSID = CFRetain(v3);
  self->_currentNetwork = SSID;
  if (self->_isPrimaryInterface)
  {
    if (!self->_isPrimaryInterfaceChanging)
    {
      if ([(SBWiFiManager *)self isPrimaryInterface])
      {
        v15 = SBLogStatusBarish();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_21ED4E000, v15, OS_LOG_TYPE_DEFAULT, "[SBWiFiManager] _primaryInterfaceUpdateTimeout: all is good but need to fire a notification that primary may have changed", buf, 2u);
        }

        dispatch_async(MEMORY[0x277D85CD0], &__block_literal_global_55_0);
        primaryInterfaceUpdateTimeoutSource = self->_primaryInterfaceUpdateTimeoutSource;
        if (primaryInterfaceUpdateTimeoutSource)
        {
          dispatch_source_cancel(primaryInterfaceUpdateTimeoutSource);
          v17 = self->_primaryInterfaceUpdateTimeoutSource;
          self->_primaryInterfaceUpdateTimeoutSource = 0;
        }
      }

      else if (!self->_primaryInterfaceUpdateTimeoutSource)
      {
        v18 = SBLogStatusBarish();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_21ED4E000, v18, OS_LOG_TYPE_DEFAULT, "[SBWiFiManager] _primaryInterfaceUpdateTimeout: wifi is primary but the current network is not - scheduling a timer", buf, 2u);
        }

        v19 = dispatch_get_global_queue(0, 0);
        v20 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v19);
        v21 = self->_primaryInterfaceUpdateTimeoutSource;
        self->_primaryInterfaceUpdateTimeoutSource = v20;

        v22 = self->_primaryInterfaceUpdateTimeoutSource;
        handler[0] = MEMORY[0x277D85DD0];
        handler[1] = 3221225472;
        handler[2] = __38__SBWiFiManager__updateCurrentNetwork__block_invoke;
        handler[3] = &unk_2783A8C18;
        handler[4] = self;
        dispatch_source_set_event_handler(v22, handler);
        v23 = self->_primaryInterfaceUpdateTimeoutSource;
        v24 = dispatch_time(0, 5000000000);
        dispatch_source_set_timer(v23, v24, 0xFFFFFFFFFFFFFFFFLL, 0x5F5E100uLL);
        dispatch_resume(self->_primaryInterfaceUpdateTimeoutSource);
      }
    }

    v12 = 0;
LABEL_36:
    SSID = *p_currentNetwork;
    if (!*p_currentNetwork)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

  v12 = 0;
  if (SSID)
  {
LABEL_37:
    SSID = WiFiNetworkGetSSID();
  }

LABEL_38:
  v25 = SSID;
  v26 = SBLogStatusBarish();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v36 = v25;
    _os_log_impl(&dword_21ED4E000, v26, OS_LOG_TYPE_DEFAULT, "[SBWiFiManager] _updateCurrentNetwork: network change -> '%{public}@'", buf, 0xCu);
  }

  if ((v12 & 1) == 0)
  {
    goto LABEL_41;
  }

LABEL_42:
  self->_currentNetworkHasBeenSet = 1;
  v27 = SBLogStatusBarish();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    v28 = self->_currentNetwork;
    v29 = self->_previousNetwork;
    isPrimaryInterface = self->_isPrimaryInterface;
    *buf = 138543874;
    v36 = v28;
    v37 = 2114;
    v38 = v29;
    v39 = 1026;
    v40 = isPrimaryInterface;
    _os_log_impl(&dword_21ED4E000, v27, OS_LOG_TYPE_DEFAULT, "[SBWiFiManager] _updateCurrentNetwork: current network has been set... _currentNetwork: %{public}@, _previousNetwork: %{public}@, _isPrimaryInterface: %{public}d", buf, 0x1Cu);
  }

  if (self->_currentNetwork)
  {
    v31 = WiFiNetworkIsApplePersonalHotspot() != 0;
  }

  else
  {
    v31 = 0;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__SBWiFiManager__updateCurrentNetwork__block_invoke_56;
  block[3] = &unk_2783A9F58;
  block[4] = self;
  v33 = v31;
  dispatch_async(MEMORY[0x277D85CD0], block);
  [(NSRecursiveLock *)self->_lock unlock];
}

uint64_t __38__SBWiFiManager__updateCurrentNetwork__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 8) lock];
  v2 = *(a1 + 32);
  if (v2[121] == 1 && ([v2 isPrimaryInterface] & 1) == 0)
  {
    v3 = SBLogStatusBarish();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "[SBWiFiManager] _primaryInterfaceUpdateTimeout: didn't receive a systemPathMonitor update - assuming the new network is primary", v5, 2u);
    }

    [*(a1 + 32) _primaryInterfaceChanged:*(*(a1 + 32) + 121)];
  }

  return [*(*(a1 + 32) + 8) unlock];
}

void __38__SBWiFiManager__updateCurrentNetwork__block_invoke_53()
{
  v0 = [MEMORY[0x277CCAB98] defaultCenter];
  [v0 postNotificationName:@"SBWifiManagerPrimaryInterfaceMayHaveChangedNotification" object:0];
}

void __38__SBWiFiManager__updateCurrentNetwork__block_invoke_56(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 73);
  v4 = *(a1 + 40);
  *(v2 + 74) = 1;
  *(*(a1 + 32) + 73) = *(a1 + 40);
  if (v3 != v4)
  {
    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    [v5 postNotificationName:@"SBWifiManagerLinkHotSpotnessDidChangeNotification" object:0];
  }
}

- (BOOL)isAssociatedToIOSHotspot
{
  if (!self->_currentNetworkIsIOSHotspotHasBeenSet)
  {
    self->_currentNetworkIsIOSHotspotHasBeenSet = 1;
    v3 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __41__SBWiFiManager_isAssociatedToIOSHotspot__block_invoke;
    block[3] = &unk_2783A8C18;
    block[4] = self;
    dispatch_async(v3, block);
  }

  return self->_currentNetworkIsIOSHotspot;
}

- (id)currentNetworkName
{
  [(NSRecursiveLock *)self->_lock lock];
  if (self->_currentNetwork)
  {
    v3 = [WiFiNetworkGetSSID() copy];
  }

  else
  {
    v3 = 0;
  }

  [(NSRecursiveLock *)self->_lock unlock];

  return v3;
}

- (BOOL)isPowered
{
  [(NSRecursiveLock *)self->_lock lock];
  if (!self->_poweredHasBeenSet)
  {
    [(SBWiFiManager *)self _linkDidChange];
    self->_poweredHasBeenSet = 1;
  }

  powered = self->_powered;
  [(NSRecursiveLock *)self->_lock unlock];
  return powered;
}

- (void)setPowered:(BOOL)powered
{
  [(NSRecursiveLock *)self->_lock lock];
  if (!self->_poweredHasBeenSet)
  {
    [(SBWiFiManager *)self _linkDidChange];
    self->_poweredHasBeenSet = 1;
  }

  if ([(SBWiFiManager *)self _lock_manager])
  {
    WiFiManagerClientSetPower();
  }

  lock = self->_lock;

  [(NSRecursiveLock *)lock unlock];
}

- (BOOL)wiFiEnabled
{
  [(NSRecursiveLock *)self->_lock lock];
  if ([(SBWiFiManager *)self _lock_manager])
  {
    v3 = WiFiManagerClientCopyProperty();
    bOOLValue = [v3 BOOLValue];
    if (v3)
    {
      CFRelease(v3);
    }
  }

  else
  {
    bOOLValue = 0;
  }

  [(NSRecursiveLock *)self->_lock unlock];
  return bOOLValue;
}

- (void)setWiFiEnabled:(BOOL)enabled
{
  [(NSRecursiveLock *)self->_lock lock];
  if ([(SBWiFiManager *)self _lock_manager])
  {
    WiFiManagerClientSetProperty();
  }

  lock = self->_lock;

  [(NSRecursiveLock *)lock unlock];
}

- (int)signalStrengthBars
{
  if (!self->_mainThread_signalStrengthHasBeenSet)
  {
    v3 = dispatch_get_global_queue(-2, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __35__SBWiFiManager_signalStrengthBars__block_invoke;
    block[3] = &unk_2783A8C18;
    block[4] = self;
    dispatch_async(v3, block);
  }

  return self->_mainThread_signalStrengthBars;
}

- (int)signalStrengthRSSI
{
  if (!self->_mainThread_signalStrengthHasBeenSet)
  {
    v3 = dispatch_get_global_queue(-2, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __35__SBWiFiManager_signalStrengthRSSI__block_invoke;
    block[3] = &unk_2783A8C18;
    block[4] = self;
    dispatch_async(v3, block);
  }

  return self->_mainThread_signalStrengthRSSI;
}

- (void)_updateSignalStrengthFromRawRSSI:(int)i andScaledRSSI:(float)sI
{
  [(NSRecursiveLock *)self->_lock lock];
  if ([(SBWiFiManager *)self _cachedIsAssociated])
  {
    v7 = fminf(fmaxf(ceilf(sI * 3.0), 1.0), 3.0);
  }

  else
  {
    i = 0;
    v7 = 0;
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __64__SBWiFiManager__updateSignalStrengthFromRawRSSI_andScaledRSSI___block_invoke;
  v8[3] = &unk_2783A8BC8;
  v8[4] = self;
  v9 = v7;
  iCopy = i;
  dispatch_async(MEMORY[0x277D85CD0], v8);
  [(NSRecursiveLock *)self->_lock unlock];
}

void __64__SBWiFiManager__updateSignalStrengthFromRawRSSI_andScaledRSSI___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (*(v2 + 80) == v3)
  {
    v4 = *(v2 + 88) ^ 1;
  }

  else
  {
    v4 = 1;
  }

  v5 = 1;
  if (*(v2 + 84) == *(a1 + 44))
  {
    v5 = *(v2 + 88) ^ 1;
  }

  *(v2 + 80) = v3;
  *(*(a1 + 32) + 84) = *(a1 + 44);
  *(*(a1 + 32) + 88) = 1;
  if (v4)
  {
    v6 = SBLogStatusBarish();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 40);
      *buf = 67240192;
      v19 = v7;
      _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "[SBWiFiManager] signal strength bars changed to %{public}d", buf, 8u);
    }

    v16 = @"SBWifiSignalStrengthChangedKey";
    v8 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 40)];
    v17 = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v17 forKeys:&v16 count:1];

    v10 = [MEMORY[0x277CCAB98] defaultCenter];
    [v10 postNotificationName:@"SBWifiSignalStrengthChangedNotification" object:0 userInfo:v9];
  }

  if (v5)
  {
    v11 = [MEMORY[0x277CCABB0] numberWithInt:{*(a1 + 44), @"SBWifiManagerRSSIChangedKey"}];
    v15 = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v15 forKeys:&v14 count:1];

    v13 = [MEMORY[0x277CCAB98] defaultCenter];
    [v13 postNotificationName:@"SBWifiManagerRSSIChangedNotification" object:0 userInfo:v12];
  }
}

- (void)_updateSignalStrength
{
  currentNetwork = self->_currentNetwork;
  v4 = currentNetwork != 0;
  [(NSRecursiveLock *)self->_lock lock];
  if ([(SBWiFiManager *)self _cachedIsAssociated]&& self->_device)
  {
    v6 = WiFiDeviceClientCopyProperty();
    v7 = v6;
    if (v6)
    {
      [v6 floatValue];
      v9 = v8;
    }

    else
    {
      v4 = 0;
      v9 = 0;
    }

    v12 = WiFiDeviceClientCopyProperty();

    if (!v12)
    {
      goto LABEL_8;
    }

    v13 = [v12 objectForKey:@"RSSI_CTL_AGR"];
    intValue = [v13 intValue];

    if (!v4)
    {
      goto LABEL_8;
    }
  }

  else
  {
    if (!currentNetwork)
    {
      goto LABEL_8;
    }

    intValue = 0;
    v9 = 0;
  }

  LODWORD(v5) = v9;
  [(SBWiFiManager *)self _updateSignalStrengthFromRawRSSI:intValue andScaledRSSI:v5];
LABEL_8:
  lock = self->_lock;

  [(NSRecursiveLock *)lock unlock];
}

- (BOOL)isPrimaryInterface
{
  [(NSRecursiveLock *)self->_lock lock];
  if (!self->_primaryInterfaceHasBeenSet)
  {
    systemPathMonitor = self->_systemPathMonitor;
    if (systemPathMonitor)
    {
      self->_primaryInterfaceHasBeenSet = 1;
      [(SBWiFiManager *)self _primaryInterfaceChanged:[(NWSystemPathMonitor *)systemPathMonitor isWiFiPrimary]];
    }
  }

  currentNetwork = self->_currentNetwork;
  v6 = currentNetwork && (primaryInterface = self->_primaryInterface) != 0 && CFEqual(currentNetwork, primaryInterface) != 0;
  [(NSRecursiveLock *)self->_lock unlock];
  return v6;
}

- (__CFRunLoop)wifiRunLoopRef
{
  [(NSRecursiveLock *)self->_lock lock];
  [(SBWiFiManager *)self _lock_manager];
  callbackRunLoop = self->_callbackRunLoop;
  [(NSRecursiveLock *)self->_lock unlock];
  return callbackRunLoop;
}

- (id)_wifiInterface
{
  [(NSRecursiveLock *)self->_lock lock];
  v3 = self->_deviceInterfaceName;
  [(NSRecursiveLock *)self->_lock unlock];

  return v3;
}

- (void)_primaryInterfaceChanged:(BOOL)changed
{
  changedCopy = changed;
  [(NSRecursiveLock *)self->_lock lock];
  self->_isPrimaryInterface = changedCopy;
  self->_isPrimaryInterfaceChanging = 1;
  [(SBWiFiManager *)self _updateCurrentNetwork];
  primaryInterface = self->_primaryInterface;
  if (primaryInterface)
  {
    CFRelease(primaryInterface);
  }

  if (!changedCopy)
  {
    self->_primaryInterface = 0;
    v7 = SBLogStatusBarish();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_10;
    }

    LOWORD(v13) = 0;
    v8 = "[SBWiFiManager] _primaryInterfaceChanged: wifi is no longer primary";
    v9 = &v13;
    goto LABEL_9;
  }

  currentNetwork = self->_currentNetwork;
  if (currentNetwork)
  {
    self->_primaryInterface = CFRetain(currentNetwork);
    v7 = SBLogStatusBarish();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_10;
    }

    v16 = 0;
    v8 = "[SBWiFiManager] _primaryInterfaceChanged: marking current network as primary";
    v9 = &v16;
    goto LABEL_9;
  }

  previousNetwork = self->_previousNetwork;
  if (previousNetwork)
  {
    self->_primaryInterface = CFRetain(previousNetwork);
    v7 = SBLogStatusBarish();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 0;
      v8 = "[SBWiFiManager] _primaryInterfaceChanged: current network is nil, marking previous network as primary";
      v9 = &v15;
LABEL_9:
      _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, v8, v9, 2u);
    }
  }

  else
  {
    self->_primaryInterface = 0;
    v7 = SBLogStatusBarish();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 0;
      v8 = "[SBWiFiManager] _primaryInterfaceChanged: primary is wifi but no networks known - marking as not primary";
      v9 = &v14;
      goto LABEL_9;
    }
  }

LABEL_10:

  self->_isPrimaryInterfaceChanging = 0;
  if (self->_primaryInterfaceHasBeenSet)
  {
    dispatch_async(MEMORY[0x277D85CD0], &__block_literal_global_69);
  }

  primaryInterfaceUpdateTimeoutSource = self->_primaryInterfaceUpdateTimeoutSource;
  if (primaryInterfaceUpdateTimeoutSource)
  {
    dispatch_source_cancel(primaryInterfaceUpdateTimeoutSource);
    v11 = self->_primaryInterfaceUpdateTimeoutSource;
    self->_primaryInterfaceUpdateTimeoutSource = 0;
  }

  [(NSRecursiveLock *)self->_lock unlock];
}

void __42__SBWiFiManager__primaryInterfaceChanged___block_invoke()
{
  v0 = [MEMORY[0x277CCAB98] defaultCenter];
  [v0 postNotificationName:@"SBWifiManagerPrimaryInterfaceMayHaveChangedNotification" object:0];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if (&self->_isPrimaryInterface != context)
  {
    [SBWiFiManager observeValueForKeyPath:a2 ofObject:self change:pathCopy context:?];
  }

  v14 = [changeCopy objectForKey:*MEMORY[0x277CCA2F0]];
  bOOLValue = [v14 BOOLValue];

  callbackRunLoop = self->_callbackRunLoop;
  if (!callbackRunLoop)
  {
    [SBWiFiManager observeValueForKeyPath:a2 ofObject:self change:&self->_callbackRunLoop context:&v20];
    callbackRunLoop = v20;
  }

  v17 = *MEMORY[0x277CBF058];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__SBWiFiManager_observeValueForKeyPath_ofObject_change_context___block_invoke;
  block[3] = &unk_2783A9F58;
  block[4] = self;
  v19 = bOOLValue;
  CFRunLoopPerformBlock(callbackRunLoop, v17, block);
  CFRunLoopWakeUp(self->_callbackRunLoop);
}

uint64_t __64__SBWiFiManager_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 8) lock];
  *(*(a1 + 32) + 120) = 1;
  [*(a1 + 32) _primaryInterfaceChanged:*(a1 + 40)];
  v2 = *(*(a1 + 32) + 8);

  return [v2 unlock];
}

- (void)_updateWiFiDevice
{
  [(NSRecursiveLock *)self->_lock lock];
  [(SBWiFiManager *)self _lock_manager];
  v3 = WiFiManagerClientCopyDevices();
  v4 = v3;
  if (v3 && CFArrayGetCount(v3) >= 1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v4, 0);
    if (ValueAtIndex)
    {
      v6 = ValueAtIndex;
      device = self->_device;
      if (!device || !CFEqual(ValueAtIndex, device))
      {
        [(SBWiFiManager *)self _lock_setWiFiDevice:v6];
      }
    }

LABEL_12:
    CFRelease(v4);
    goto LABEL_13;
  }

  if (!self->_device)
  {
    v8 = SBLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(SBWiFiManager *)v8 _updateWiFiDevice];
    }
  }

  if (v4)
  {
    goto LABEL_12;
  }

LABEL_13:
  [(NSRecursiveLock *)self->_lock unlock];
}

- (void)observeValueForKeyPath:(uint64_t)a3 ofObject:change:context:.cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"SBWiFiManager.m" lineNumber:669 description:{@"SBWiFiManager: got a key/value callback that it doesn't understand -> %@", a3}];
}

- (void)observeValueForKeyPath:(uint64_t)a1 ofObject:(uint64_t)a2 change:(void *)a3 context:(void *)a4 .cold.2(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = [MEMORY[0x277CCA890] currentHandler];
  [v8 handleFailureInMethod:a1 object:a2 file:@"SBWiFiManager.m" lineNumber:672 description:@"SBWiFiManager: shouldn't be possible to get a key/value callback before the runloop has been started"];

  *a4 = *a3;
}

@end