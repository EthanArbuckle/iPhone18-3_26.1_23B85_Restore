@interface TVRUINetworkObserver
- (BOOL)isBluetoothAvailable;
- (BOOL)isNetworkReachable;
- (TVRUINetworkObserver)init;
- (void)_updateBluetoothAvailability:(BOOL)availability;
- (void)_wifiStateUpdatedWithOldState:(int64_t)state newState:(int64_t)newState;
- (void)dealloc;
- (void)startObserving;
- (void)stopObserving;
@end

@implementation TVRUINetworkObserver

- (TVRUINetworkObserver)init
{
  v10 = *MEMORY[0x277D85DE8];
  v7.receiver = self;
  v7.super_class = TVRUINetworkObserver;
  v2 = [(TVRUINetworkObserver *)&v7 init];
  if (v2)
  {
    v3 = _TVRUINetworkObserverLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v9 = @"com.apple.tvremote.network_observer";
      _os_log_impl(&dword_26CFEB000, v3, OS_LOG_TYPE_DEFAULT, "Setting up %@ background queue", buf, 0xCu);
    }

    v4 = dispatch_queue_create([@"com.apple.tvremote.network_observer" UTF8String], 0);
    queue = v2->_queue;
    v2->_queue = v4;
  }

  return v2;
}

- (void)dealloc
{
  wifiStateMonitor = self->_wifiStateMonitor;
  if (wifiStateMonitor)
  {
    [(WFWiFiStateMonitor *)wifiStateMonitor stopMonitoring];
    v4 = self->_wifiStateMonitor;
    self->_wifiStateMonitor = 0;
  }

  cbController = self->_cbController;
  if (cbController)
  {
    [(CBController *)cbController invalidate];
    v6 = self->_cbController;
    self->_cbController = 0;
  }

  v7.receiver = self;
  v7.super_class = TVRUINetworkObserver;
  [(TVRUINetworkObserver *)&v7 dealloc];
}

- (void)startObserving
{
  objc_initWeak(&location, self);
  queue = [(TVRUINetworkObserver *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__TVRUINetworkObserver_startObserving__block_invoke;
  block[3] = &unk_279D87F18;
  objc_copyWeak(&v15, &location);
  dispatch_async(queue, block);

  cbController = [(TVRUINetworkObserver *)self cbController];

  if (!cbController)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBE010]);
    [(TVRUINetworkObserver *)self setCbController:v5];

    queue2 = [(TVRUINetworkObserver *)self queue];
    cbController2 = [(TVRUINetworkObserver *)self cbController];
    [cbController2 setDispatchQueue:queue2];

    cbController3 = [(TVRUINetworkObserver *)self cbController];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __38__TVRUINetworkObserver_startObserving__block_invoke_2;
    v12[3] = &unk_279D88BB8;
    objc_copyWeak(&v13, &location);
    [cbController3 activateWithCompletion:v12];

    v10 = MEMORY[0x277D85DD0];
    objc_copyWeak(&v11, &location);
    v9 = [(TVRUINetworkObserver *)self cbController:v10];
    [v9 setBluetoothStateChangedHandler:&v10];

    objc_destroyWeak(&v11);
    objc_destroyWeak(&v13);
  }

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __38__TVRUINetworkObserver_startObserving__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = _TVRUINetworkObserverLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26CFEB000, v3, OS_LOG_TYPE_DEFAULT, "Observing Wi-Fi and Bluetooth changes", buf, 2u);
    }

    v4 = [WeakRetained wifiClient];

    if (!v4)
    {
      if (objc_opt_class())
      {
        v5 = objc_alloc_init(MEMORY[0x277D7B958]);
        [WeakRetained setWifiClient:v5];
      }

      else
      {
        v5 = _TVRUINetworkObserverLog();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          __38__TVRUINetworkObserver_startObserving__block_invoke_cold_1(v5);
        }
      }
    }

    v6 = [WeakRetained wifiStateMonitor];

    if (!v6)
    {
      v7 = _TVRUINetworkObserverLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_26CFEB000, v7, OS_LOG_TYPE_DEFAULT, "Monitoring Wi-Fi state", buf, 2u);
      }

      v8 = objc_alloc(MEMORY[0x277D7B970]);
      v9 = [WeakRetained wifiClient];
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __38__TVRUINetworkObserver_startObserving__block_invoke_4;
      v11[3] = &unk_279D88B90;
      objc_copyWeak(&v12, (a1 + 32));
      v10 = [v8 initWithClient:v9 handler:v11];
      [WeakRetained setWifiStateMonitor:v10];

      objc_destroyWeak(&v12);
    }
  }
}

void __38__TVRUINetworkObserver_startObserving__block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _wifiStateUpdatedWithOldState:a2 newState:a3];
}

void __38__TVRUINetworkObserver_startObserving__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _TVRUINetworkObserverLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_26CFEB000, v4, OS_LOG_TYPE_DEFAULT, "Monitoring Bluetooth state", v6, 2u);
  }

  if (v3)
  {
    v5 = _TVRUINetworkObserverLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __38__TVRUINetworkObserver_startObserving__block_invoke_2_cold_1(v3, v5);
    }
  }

  else
  {
    v5 = objc_loadWeakRetained((a1 + 32));
    [v5 _updateBluetoothAvailability:[v5 isBluetoothAvailable]];
  }
}

void __38__TVRUINetworkObserver_startObserving__block_invoke_9(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained cbController];
    v4 = [v3 bluetoothState];

    v5 = _TVRUINetworkObserverLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 134217984;
      v7 = v4;
      _os_log_impl(&dword_26CFEB000, v5, OS_LOG_TYPE_DEFAULT, "Bluetooth state = %ld", &v6, 0xCu);
    }

    if (v4 != 1)
    {
      [v2 _updateBluetoothAvailability:{objc_msgSend(v2, "isBluetoothAvailable")}];
    }
  }
}

- (void)stopObserving
{
  queue = [(TVRUINetworkObserver *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__TVRUINetworkObserver_stopObserving__block_invoke;
  block[3] = &unk_279D87C20;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __37__TVRUINetworkObserver_stopObserving__block_invoke(uint64_t a1)
{
  v2 = _TVRUINetworkObserverLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_26CFEB000, v2, OS_LOG_TYPE_DEFAULT, "Stop observing Wi-Fi and Bluetooth changes", v6, 2u);
  }

  v3 = [*(a1 + 32) wifiStateMonitor];
  [v3 stopMonitoring];

  [*(a1 + 32) setWifiStateMonitor:0];
  v4 = [*(a1 + 32) cbController];
  [v4 invalidate];

  return [*(a1 + 32) setCbController:0];
}

- (BOOL)isNetworkReachable
{
  v12 = *MEMORY[0x277D85DE8];
  wifiStateMonitor = [(TVRUINetworkObserver *)self wifiStateMonitor];

  if (wifiStateMonitor)
  {
    state = [(WFWiFiStateMonitor *)self->_wifiStateMonitor state];
    LODWORD(wifiStateMonitor) = state == 4;
    v5 = _TVRUINetworkObserverLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = @"not associated";
      if (state == 4)
      {
        v6 = @"associated";
      }

      v10 = 138412290;
      v11 = v6;
      _os_log_impl(&dword_26CFEB000, v5, OS_LOG_TYPE_DEFAULT, "Wi-Fi is %@", &v10, 0xCu);
    }
  }

  if (+[TVRUIFeatures isAWDLEnabled])
  {
    LODWORD(wifiStateMonitor) = wifiStateMonitor | [(TVRUINetworkObserver *)self isBluetoothAvailable];
  }

  v7 = _TVRUINetworkObserverLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"unreachable";
    if (wifiStateMonitor)
    {
      v8 = @"reachable";
    }

    v10 = 138412290;
    v11 = v8;
    _os_log_impl(&dword_26CFEB000, v7, OS_LOG_TYPE_DEFAULT, "Network is %@", &v10, 0xCu);
  }

  return wifiStateMonitor;
}

- (BOOL)isBluetoothAvailable
{
  v11 = *MEMORY[0x277D85DE8];
  cbController = [(TVRUINetworkObserver *)self cbController];

  if (cbController)
  {
    cbController2 = [(TVRUINetworkObserver *)self cbController];
    bluetoothState = [cbController2 bluetoothState];

    v7 = bluetoothState == 5 || bluetoothState == 10;
    v8 = _TVRUINetworkObserverLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10[0] = 67109120;
      v10[1] = v7;
      _os_log_impl(&dword_26CFEB000, v8, OS_LOG_TYPE_DEFAULT, "Bluetooth available = %d", v10, 8u);
    }
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (void)_wifiStateUpdatedWithOldState:(int64_t)state newState:(int64_t)newState
{
  queue = [(TVRUINetworkObserver *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__TVRUINetworkObserver__wifiStateUpdatedWithOldState_newState___block_invoke;
  block[3] = &unk_279D88C08;
  block[5] = newState;
  block[6] = state;
  block[4] = self;
  dispatch_async(queue, block);
}

void __63__TVRUINetworkObserver__wifiStateUpdatedWithOldState_newState___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (*(a1 + 40) != *(a1 + 48))
  {
    v2 = _TVRUINetworkObserverLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = WFWiFiStateMonitorStringForState();
      v4 = WFWiFiStateMonitorStringForState();
      *buf = 138412546;
      v10 = v3;
      v11 = 2112;
      v12 = v4;
      _os_log_impl(&dword_26CFEB000, v2, OS_LOG_TYPE_DEFAULT, "Wi-Fi %@ -> %@", buf, 0x16u);
    }

    v5 = *(a1 + 40) - 2;
    if (v5 > 3)
    {
      v6 = 0;
    }

    else
    {
      v6 = qword_26D0D2748[v5];
    }

    v7 = [*(a1 + 32) wifiStateUpdatedHandler];

    if (v7)
    {
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __63__TVRUINetworkObserver__wifiStateUpdatedWithOldState_newState___block_invoke_23;
      v8[3] = &unk_279D88BE0;
      v8[4] = *(a1 + 32);
      v8[5] = v6;
      dispatch_async(MEMORY[0x277D85CD0], v8);
    }
  }
}

void __63__TVRUINetworkObserver__wifiStateUpdatedWithOldState_newState___block_invoke_23(uint64_t a1)
{
  v2 = [*(a1 + 32) wifiStateUpdatedHandler];
  v2[2](v2, *(a1 + 40));
}

- (void)_updateBluetoothAvailability:(BOOL)availability
{
  availabilityCopy = availability;
  v12 = *MEMORY[0x277D85DE8];
  bluetoothAvailabilityDidUpdate = [(TVRUINetworkObserver *)self bluetoothAvailabilityDidUpdate];

  if (bluetoothAvailabilityDidUpdate)
  {
    v6 = _TVRUINetworkObserverLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = @"unavailable";
      if (availabilityCopy)
      {
        v7 = @"available";
      }

      *buf = 138412290;
      v11 = v7;
      _os_log_impl(&dword_26CFEB000, v6, OS_LOG_TYPE_DEFAULT, "Bluetooth availability changed to %@", buf, 0xCu);
    }

    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __53__TVRUINetworkObserver__updateBluetoothAvailability___block_invoke;
    v8[3] = &unk_279D878A8;
    v8[4] = self;
    v9 = availabilityCopy;
    dispatch_async(MEMORY[0x277D85CD0], v8);
  }
}

void __53__TVRUINetworkObserver__updateBluetoothAvailability___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) bluetoothAvailabilityDidUpdate];
  v2[2](v2, *(a1 + 40));
}

void __38__TVRUINetworkObserver_startObserving__block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_26CFEB000, a2, OS_LOG_TYPE_ERROR, "Failed to activate BLE Controller: %{public}@", &v2, 0xCu);
}

@end