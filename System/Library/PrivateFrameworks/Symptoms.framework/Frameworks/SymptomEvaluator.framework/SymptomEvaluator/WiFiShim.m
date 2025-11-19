@interface WiFiShim
+ (WiFiShim)sharedInstance;
- (BOOL)_shouldRegisterForLQMCallbacks;
- (BOOL)fastLQMUpdates;
- (BOOL)isApplePersonalHotspot;
- (BOOL)isHotspot;
- (WiFiShim)init;
- (id)_associationInfoForNetworkProfile:(id)a3;
- (id)bssid;
- (id)getAWDLPeerList;
- (id)refreshAssociationInfo;
- (id)ssid;
- (void)_changeLQMMonitoring;
- (void)_checkForLQMAsystole;
- (void)_checkForLQMBradycardia;
- (void)_checkForLQMCallbackRegistration;
- (void)_delayedRegisterForLQMCallbacks;
- (void)_handleBSSIDChangedEvent;
- (void)_handleKnownNetworkProfileChangedEventWithInfo:(id)a3;
- (void)_handleLinkChangedEventWithInfo:(id)a3;
- (void)_handleLinkQualityEventWithInfo:(id)a3;
- (void)_handleWiFiEvent:(id)a3;
- (void)_monitorAssociationStatus:(BOOL)a3;
- (void)_processAsystoleDeclaration;
- (void)_registerForCallbacks;
- (void)_registerForLQMCallbacks;
- (void)_resumeLQMCallbackMonitoring;
- (void)_suspendLQMCallbackMonitoring;
- (void)_triggerDisconnectEdge:(id)a3;
- (void)_unregisterFromCallbacks;
- (void)_unregisterFromLQMCallbacks;
- (void)addDelegate:(id)a3;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)removeDelegate:(id)a3;
- (void)setMonitorLQMBradycardia:(BOOL)a3;
@end

@implementation WiFiShim

void __33__WiFiShim__registerForCallbacks__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained queue];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __33__WiFiShim__registerForCallbacks__block_invoke_26;
    v8[3] = &unk_27898A7D0;
    v9 = v5;
    v10 = v3;
    dispatch_async(v6, v8);
  }

  else
  {
    v7 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_ERROR, "WiFiShim: Instance went away, returning", buf, 2u);
    }
  }
}

- (void)_changeLQMMonitoring
{
  if (self->_lqmCallbackLastRegistered != 0.0 && self->_hasAssociation && self->_apIsAwake)
  {
    [(WiFiShim *)self _resumeLQMCallbackMonitoring];
  }

  else
  {
    [(WiFiShim *)self _suspendLQMCallbackMonitoring];
  }
}

- (void)_suspendLQMCallbackMonitoring
{
  if (self->_lqmCallbackTimer && self->_lqmCallbackTimerResumed)
  {
    v3 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEFAULT, "WiFiShim: Suspending LQM monitoring", v4, 2u);
    }

    dispatch_suspend(self->_lqmCallbackTimer);
    self->_lqmCallbackTimerResumed = 0;
  }

  self->_lqmCallbacks = 0;
  self->_lqmCallbackLastTimestamp = 0.0;
}

void __16__WiFiShim_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    if ([WeakRetained monitorLQMBradycardia])
    {
      [v2 _checkForLQMBradycardia];
    }

    [v2 _checkForLQMAsystole];
  }

  else
  {
    v3 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
    {
      *v4 = 0;
      _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_ERROR, "WiFiShim: instance went away", v4, 2u);
    }
  }
}

- (void)_checkForLQMBradycardia
{
  *&v14[5] = *MEMORY[0x277D85DE8];
  if (self->_lqmCallbacks < self->_lqmCallbackThreshold)
  {
    v3 = [MEMORY[0x277CBEAA8] date];
    [v3 timeIntervalSince1970];
    v5 = v4;

    v6 = v5 - self->_lqmBradycardiaLastCalled;
    v7 = netepochsLogHandle;
    if (v6 <= 86400.0)
    {
      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_INFO))
      {
        v13 = 134217984;
        *v14 = v6;
        _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_INFO, "WiFiShim: Wi-Fi LQM bradycardia! No ABC Case since we last called Bradycardia %f seconds ago", &v13, 0xCu);
      }
    }

    else
    {
      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
      {
        lqmCallbacks = self->_lqmCallbacks;
        lqmCallbackThreshold = self->_lqmCallbackThreshold;
        v13 = 67109376;
        v14[0] = lqmCallbacks;
        LOWORD(v14[1]) = 1024;
        *(&v14[1] + 2) = lqmCallbackThreshold;
        _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_ERROR, "WiFiShim: Wi-Fi LQM bradycardia! Callback count is %u, threshold is: %u", &v13, 0xEu);
      }

      internal_symptom_new(405517);
      v10 = self->_lqmCallbacks;
      internal_symptom_set_qualifier();
      v11 = self->_lqmCallbackThreshold;
      internal_symptom_set_qualifier();
      internal_symptom_send();
      self->_lqmBradycardiaLastCalled = v5;
    }
  }

  self->_lqmCallbacks = 0;
  v12 = *MEMORY[0x277D85DE8];
}

- (void)_checkForLQMAsystole
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEAA8] date];
  [v3 timeIntervalSince1970];
  v5 = v4;

  lqmCallbackLastTimestamp = self->_lqmCallbackLastTimestamp;
  if (lqmCallbackLastTimestamp == 0.0 || v5 - lqmCallbackLastTimestamp > 300.0)
  {
    v7 = netepochsLogHandle;
    v8 = os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR);
    if (lqmCallbackLastTimestamp <= 0.0)
    {
      if (v8)
      {
        *v14 = 0;
        v10 = "WiFiShim: Wi-Fi LQM Asystole! There hasn't been an LQM Callback since monitoring started";
        v11 = v7;
        v12 = 2;
        goto LABEL_8;
      }
    }

    else if (v8)
    {
      v9 = v5 - self->_lqmCallbackLastTimestamp;
      *v14 = 134217984;
      *&v14[4] = v9;
      v10 = "WiFiShim: Wi-Fi LQM Asystole! The last LQM Callback was %f seconds ago";
      v11 = v7;
      v12 = 12;
LABEL_8:
      _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_ERROR, v10, v14, v12);
    }

    [(WiFiShim *)self _processAsystoleDeclaration];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (WiFiShim)init
{
  v23.receiver = self;
  v23.super_class = WiFiShim;
  v2 = [(WiFiShim *)&v23 init];
  if (v2)
  {
    v3 = SFGetStandardQueue(5);
    v4 = *(v2 + 10);
    *(v2 + 10) = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v6 = *(v2 + 15);
    *(v2 + 15) = v5;

    v7 = objc_alloc_init(MEMORY[0x277D02B18]);
    v8 = *(v2 + 1);
    *(v2 + 1) = v7;

    *(v2 + 13) = 0;
    *(v2 + 23) = 0;
    objc_initWeak(&location, v2);
    *(v2 + 18) = 5;
    v9 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(v2 + 10));
    v10 = *(v2 + 5);
    *(v2 + 5) = v9;

    v11 = *(v2 + 5);
    v12 = dispatch_time(0, 60000000000);
    dispatch_source_set_timer(v11, v12, 0xDF8475800uLL, 0x5F5E100uLL);
    v13 = *(v2 + 5);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __16__WiFiShim_init__block_invoke;
    handler[3] = &unk_27898C3B0;
    objc_copyWeak(&v21, &location);
    dispatch_source_set_event_handler(v13, handler);
    *(v2 + 20) = 1;
    [*(v2 + 1) setInvalidationHandler:&__block_literal_global_56];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __16__WiFiShim_init__block_invoke_22;
    v18[3] = &unk_27898C3B0;
    objc_copyWeak(&v19, &location);
    [*(v2 + 1) setInterruptionHandler:v18];
    [*(v2 + 1) activate];
    v14 = [*(v2 + 1) currentKnownNetworkProfile];
    *(v2 + 17) = v14 != 0;

    v15 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 0;
      _os_log_impl(&dword_23255B000, v15, OS_LOG_TYPE_DEFAULT, "WiFiShim: Activated the interface", v17, 2u);
    }

    objc_destroyWeak(&v19);
    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __16__WiFiShim_init__block_invoke_21()
{
  v0 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_23255B000, v0, OS_LOG_TYPE_DEFAULT, "WiFiShim: CoreWiFi interface has been invalidated", v1, 2u);
  }
}

void __16__WiFiShim_init__block_invoke_22(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = netepochsLogHandle;
  if (WeakRetained)
  {
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_DEFAULT, "WiFiShim: XPC connection to wifid interrupted", buf, 2u);
    }

    v3 = [WeakRetained queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __16__WiFiShim_init__block_invoke_23;
    block[3] = &unk_27898A0C8;
    v5 = WeakRetained;
    dispatch_async(v3, block);
  }

  else if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_ERROR, "WiFiShim: instance went away", buf, 2u);
  }
}

uint64_t __16__WiFiShim_init__block_invoke_23(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 8) currentKnownNetworkProfile];

  result = [*(a1 + 32) hasAssociation];
  if ((v2 != 0) != result)
  {
    v4 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = v4;
      v9[0] = 67109376;
      v9[1] = [v5 hasAssociation];
      v10 = 1024;
      v11 = v2 != 0;
      _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEFAULT, "WiFiShim: Wi-Fi association changed (%d->%d)", v9, 0xEu);
    }

    v7 = v2 != 0;
    [*(a1 + 32) setHasAssociation:v7];
    [*(a1 + 32) _monitorAssociationStatus:v7];
    result = [*(a1 + 32) _changeLQMMonitoring];
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)dealloc
{
  [(NSMutableSet *)self->_delegates removeAllObjects];
  delegates = self->_delegates;
  self->_delegates = 0;

  [(CWFInterface *)self->_interface setEventHandler:0];
  [(CWFInterface *)self->_interface setInvalidationHandler:0];
  [(CWFInterface *)self->_interface invalidate];
  interface = self->_interface;
  self->_interface = 0;

  v5.receiver = self;
  v5.super_class = WiFiShim;
  [(WiFiShim *)&v5 dealloc];
}

+ (WiFiShim)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __26__WiFiShim_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_pred_47 != -1)
  {
    dispatch_once(&sharedInstance_pred_47, block);
  }

  v2 = sharedInstance_sharedInstance_49;

  return v2;
}

uint64_t __26__WiFiShim_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedInstance_sharedInstance_49;
  sharedInstance_sharedInstance_49 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

- (void)addDelegate:(id)a3
{
  v5 = a3;
  v4 = self->_delegates;
  objc_sync_enter(v4);
  if (v5)
  {
    [(NSMutableSet *)self->_delegates addObject:v5];
    if (!self->_registeredForCallbacks)
    {
      [(WiFiShim *)self _registerForCallbacks];
    }
  }

  objc_sync_exit(v4);
}

- (void)removeDelegate:(id)a3
{
  v5 = a3;
  v4 = self->_delegates;
  objc_sync_enter(v4);
  if (v5)
  {
    [(NSMutableSet *)self->_delegates removeObject:v5];
  }

  if (![(NSMutableSet *)self->_delegates count]&& self->_registeredForCallbacks)
  {
    [(WiFiShim *)self _unregisterFromCallbacks];
  }

  objc_sync_exit(v4);
}

- (void)_registerForCallbacks
{
  v34 = *MEMORY[0x277D85DE8];
  if (self->_registeredForCallbacks)
  {
    v2 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v3 = "WiFiShim: Already registered for callbacks";
      v4 = v2;
      v5 = OS_LOG_TYPE_DEFAULT;
LABEL_17:
      _os_log_impl(&dword_23255B000, v4, v5, v3, buf, 2u);
    }
  }

  else if (self->_interface)
  {
    objc_initWeak(&location, self);
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __33__WiFiShim__registerForCallbacks__block_invoke;
    v29[3] = &unk_2789900C8;
    objc_copyWeak(&v30, &location);
    [(CWFInterface *)self->_interface setEventHandler:v29];
    interface = self->_interface;
    v28 = 0;
    v8 = [(CWFInterface *)interface startMonitoringEventType:30 error:&v28];
    v9 = v28;
    v10 = netepochsLogHandle;
    if (v8)
    {
      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_DEFAULT, "WiFiShim: Successfully started monitoring for CWFEventTypeKnownNetworkProfileChanged event", buf, 2u);
      }

      v11 = self->_interface;
      v27 = 0;
      v12 = [(CWFInterface *)v11 startMonitoringEventType:3 error:&v27];
      v9 = v27;
      v13 = netepochsLogHandle;
      if (v12)
      {
        if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_DEFAULT, "WiFiShim: Successfully started monitoring for CWFEventTypeBSSIDChanged event", buf, 2u);
        }

        v14 = self->_interface;
        v26 = 0;
        v15 = [(CWFInterface *)v14 startMonitoringEventType:6 error:&v26];
        v9 = v26;
        v16 = netepochsLogHandle;
        if (v15)
        {
          if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_23255B000, v16, OS_LOG_TYPE_DEFAULT, "WiFiShim: Successfully started monitoring for CWFEventTypeLinkChanged event", buf, 2u);
          }

          v17 = [(WiFiShim *)self queue];
          v25[0] = MEMORY[0x277D85DD0];
          v25[1] = 3221225472;
          v25[2] = __33__WiFiShim__registerForCallbacks__block_invoke_28;
          v25[3] = &unk_27898A0C8;
          v25[4] = self;
          dispatch_async(v17, v25);

          v18 = +[SystemSettingsRelay defaultRelay];
          [v18 addObserver:self forKeyPath:@"rnfEnabled" options:5 context:0];
          [v18 addObserver:self forKeyPath:@"noBackhaulEnabled" options:5 context:0];
          v19 = +[IOKitHandler sharedInstance];
          [v19 addObserver:self forKeyPath:@"mostRecentAPWakeMachTime" options:1 context:0];
          [v19 addObserver:self forKeyPath:@"mostRecentAPSleepMachTime" options:1 context:0];
          self->_registeredForCallbacks = 1;
        }

        else
        {
          v18 = netepochsLogHandle;
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            v23 = [v9 debugDescription];
            *buf = 138412290;
            v33 = v23;
            _os_log_impl(&dword_23255B000, v18, OS_LOG_TYPE_ERROR, "WiFiShim: Error start monitoring for CWFEventTypeLinkChanged change: %@", buf, 0xCu);
          }
        }
      }

      else
      {
        v18 = netepochsLogHandle;
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v22 = [v9 debugDescription];
          *buf = 138412290;
          v33 = v22;
          _os_log_impl(&dword_23255B000, v18, OS_LOG_TYPE_ERROR, "WiFiShim: Error start monitoring for CWFEventTypeBSSIDChanged event: %@", buf, 0xCu);
        }
      }
    }

    else
    {
      v18 = netepochsLogHandle;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v21 = [v9 debugDescription];
        *buf = 138412290;
        v33 = v21;
        _os_log_impl(&dword_23255B000, v18, OS_LOG_TYPE_ERROR, "WiFiShim: Error start monitoring for CWFEventTypeKnownNetworkProfileChanged: %@", buf, 0xCu);
      }
    }

    objc_destroyWeak(&v30);
    objc_destroyWeak(&location);
  }

  else
  {
    v20 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v3 = "WiFiShim: Cannot register for callbacks on nil interface instance";
      v4 = v20;
      v5 = OS_LOG_TYPE_ERROR;
      goto LABEL_17;
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

uint64_t __33__WiFiShim__registerForCallbacks__block_invoke_28(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) currentKnownNetworkProfile];
  *(*(a1 + 32) + 17) = v2 != 0;

  v3 = *(a1 + 32);
  v4 = v3[17];

  return [v3 _monitorAssociationStatus:v4];
}

- (void)_unregisterFromCallbacks
{
  if (!self->_registeredForCallbacks)
  {
    v7 = netepochsLogHandle;
    if (!os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 0;
    v8 = "WiFiShim: Already unregistered from callbacks";
    v9 = v7;
    v10 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_8;
  }

  interface = self->_interface;
  if (interface)
  {
    [(CWFInterface *)interface stopMonitoringAllEvents];
    v4 = +[SystemSettingsRelay defaultRelay];
    [v4 removeObserver:self forKeyPath:@"rnfEnabled"];
    [v4 removeObserver:self forKeyPath:@"noBackhaulEnabled"];
    v5 = +[IOKitHandler sharedInstance];
    [v5 removeObserver:self forKeyPath:@"mostRecentAPWakeMachTime"];
    [v5 removeObserver:self forKeyPath:@"mostRecentAPSleepMachTime"];
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __36__WiFiShim__unregisterFromCallbacks__block_invoke;
    block[3] = &unk_27898A0C8;
    block[4] = self;
    dispatch_async(queue, block);
    self->_registeredForCallbacks = 0;

    return;
  }

  v11 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    v8 = "WiFiShim: interface is nil, unable to stop monitoring for events";
    v9 = v11;
    v10 = OS_LOG_TYPE_ERROR;
LABEL_8:
    _os_log_impl(&dword_23255B000, v9, v10, v8, buf, 2u);
  }
}

- (id)ssid
{
  v3 = [(CWFInterface *)self->_interface networkName];
  if (v3)
  {
    v4 = self;
    objc_sync_enter(v4);
    [(WiFiShim *)v4 setLastSsid:v3];
    objc_sync_exit(v4);
  }

  return v3;
}

- (id)bssid
{
  v3 = [(CWFInterface *)self->_interface BSSID];
  if (v3)
  {
    v4 = self;
    objc_sync_enter(v4);
    [(WiFiShim *)v4 setLastBssid:v3];
    objc_sync_exit(v4);
  }

  return v3;
}

- (BOOL)isHotspot
{
  v2 = [(CWFInterface *)self->_interface currentKnownNetworkProfile];
  v3 = [v2 isHotspot];

  return v3;
}

- (BOOL)isApplePersonalHotspot
{
  v2 = [(CWFInterface *)self->_interface currentKnownNetworkProfile];
  v3 = [v2 isPersonalHotspot];

  return v3;
}

- (id)refreshAssociationInfo
{
  v3 = [(CWFInterface *)self->_interface currentKnownNetworkProfile];
  v4 = [(WiFiShim *)self _associationInfoForNetworkProfile:v3];

  return v4;
}

- (BOOL)fastLQMUpdates
{
  v2 = [(CWFInterface *)self->_interface linkQualityMetricConfiguration];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 objectForKeyedSubscript:@"LQM_UPDATE_INTERVAL"];
    v5 = [v4 unsignedIntValue] == 1000;
  }

  else
  {
    v6 = netepochsLogHandle;
    v5 = 0;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEFAULT, "WiFiShim: got nil config dictionary, returning NO", v8, 2u);
      v5 = 0;
    }
  }

  return v5;
}

- (id)getAWDLPeerList
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = [(CWFInterface *)self->_interface AWDLPeerDatabase];
  v4 = [v3 bytes];

  if (v4)
  {
    v22 = objc_alloc_init(MEMORY[0x277CBEB18]);
    if (*(v4 + 4))
    {
      for (i = 0; i < *(v4 + 4); ++i)
      {
        memcpy(__dst, (v4 + 8 + 2064 * i), sizeof(__dst));
        v6 = [MEMORY[0x277CBEA90] dataWithBytes:&__dst[8] length:6];
        v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:__dst];
        if (LOBYTE(__dst[351]))
        {
          v9 = 0;
          v10 = &__dst[351] + 1;
          do
          {
            v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v10];
            [v7 addObject:v11];

            ++v9;
            v10 += 64;
          }

          while (v9 < LOBYTE(__dst[351]));
        }

        v23[0] = @"STATION_RSSI";
        v12 = [MEMORY[0x277CCABB0] numberWithInt:__dst[23]];
        v24[0] = v12;
        v23[1] = @"STATION_MAC";
        v13 = v6;
        if (!v6)
        {
          v2 = [MEMORY[0x277CBEB68] null];
          v13 = v2;
        }

        v24[1] = v13;
        v23[2] = @"STATION_HOSTNAME";
        v14 = v8;
        if (!v8)
        {
          v20 = [MEMORY[0x277CBEB68] null];
          v14 = v20;
        }

        v24[2] = v14;
        v23[3] = @"STATION_AWDL_SERVICES";
        v15 = v7;
        if (!v7)
        {
          v21 = [MEMORY[0x277CBEB68] null];
          v15 = v21;
        }

        v24[3] = v15;
        v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:4];
        if (v7)
        {
          if (v8)
          {
            goto LABEL_15;
          }
        }

        else
        {

          if (v8)
          {
LABEL_15:
            if (!v6)
            {
              goto LABEL_20;
            }

            goto LABEL_16;
          }
        }

        if (!v6)
        {
LABEL_20:
        }

LABEL_16:

        [v22 addObject:v16];
      }
    }
  }

  else
  {
    v17 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__dst[0]) = 0;
      _os_log_impl(&dword_23255B000, v17, OS_LOG_TYPE_DEFAULT, "WiFiShim: No AWDL Peer database", __dst, 2u);
    }

    v22 = MEMORY[0x277CBEBF8];
  }

  v18 = *MEMORY[0x277D85DE8];

  return v22;
}

- (id)_associationInfoForNetworkProfile:(id)a3
{
  v23[7] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = [(CWFInterface *)self->_interface currentScanResult];
    if ([v4 isWEP] & 1) != 0 || (objc_msgSend(v4, "isWPA") & 1) != 0 || (objc_msgSend(v4, "isWPA2") & 1) != 0 || (objc_msgSend(v4, "isWPA3"))
    {
      v6 = 1;
      if (v5)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v6 = [v4 isEAP];
      if (v5)
      {
LABEL_7:
        v7 = [v5 accessNetworkType] == 2 || objc_msgSend(v5, "accessNetworkType") == 3;
        goto LABEL_15;
      }
    }

    v7 = 0;
LABEL_15:
    v20 = v5;
    v22[0] = @"ssid";
    v10 = [v4 networkName];
    v11 = v10;
    if (!v10)
    {
      v11 = [MEMORY[0x277CBEB68] null];
    }

    v23[0] = v11;
    v22[1] = @"isSecured";
    v12 = [MEMORY[0x277CCABB0] numberWithBool:v6];
    v23[1] = v12;
    v22[2] = @"isPublicHotspot";
    v13 = [MEMORY[0x277CCABB0] numberWithBool:v7];
    v23[2] = v13;
    v22[3] = @"isProfileBased";
    v14 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v4, "addReason") == 9}];
    v23[3] = v14;
    v22[4] = @"isCarrierBundle";
    v15 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v4, "addReason") == 10}];
    v23[4] = v15;
    v22[5] = @"isHotspot20";
    v16 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v4, "isPasspoint")}];
    v23[5] = v16;
    v22[6] = @"isManuallyJoined";
    v17 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v4, "wasMoreRecentlyJoinedByUser")}];
    v23[6] = v17;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:7];

    if (!v10)
    {
    }

    goto LABEL_20;
  }

  v8 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEFAULT, "WiFiShim: got nil network profile, returning nil", buf, 2u);
  }

  v9 = 0;
LABEL_20:

  v18 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)_monitorAssociationStatus:(BOOL)a3
{
  hasAssociationDebounceTimer = self->_hasAssociationDebounceTimer;
  if (a3)
  {
    if (hasAssociationDebounceTimer)
    {
      dispatch_source_cancel(hasAssociationDebounceTimer);
      v5 = self->_hasAssociationDebounceTimer;
      self->_hasAssociationDebounceTimer = 0;

      v6 = netepochsLogHandle;
      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEFAULT, "WiFiShim: Debounce timer cancelled", buf, 2u);
      }

      if (self->_debounceTimerFired)
      {
        self->_debounceTimerFired = 0;
        v7 = netepochsLogHandle;
        if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEFAULT, "WiFiShim: Device got associated after debounce timer fired, inform NDF of association", buf, 2u);
        }

        v8 = +[NDFCoreShim sharedInstance];
        [v8 noteWiFiIsDisassociated:0];
      }

      return;
    }

    v12 = netepochsLogHandle;
    if (!os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_INFO))
    {
      return;
    }

    *buf = 0;
    v10 = "WiFiShim: Device is associated, debounce timer is nil, nothing to do";
    v11 = v12;
LABEL_14:
    _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_INFO, v10, buf, 2u);
    return;
  }

  v9 = netepochsLogHandle;
  if (hasAssociationDebounceTimer)
  {
    if (!os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_INFO))
    {
      return;
    }

    *buf = 0;
    v10 = "WiFiShim: Device is disassociated, debounce timer is already running, nothing to do";
    v11 = v9;
    goto LABEL_14;
  }

  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEFAULT, "WiFiShim: Device is disassociated, create debounce timer", buf, 2u);
  }

  v13 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, self->_queue);
  v14 = self->_hasAssociationDebounceTimer;
  self->_hasAssociationDebounceTimer = v13;

  v15 = dispatch_time(0, 60000000000);
  dispatch_source_set_timer(self->_hasAssociationDebounceTimer, v15, 0xFFFFFFFFFFFFFFFFLL, 0);
  v16 = self->_hasAssociationDebounceTimer;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __38__WiFiShim__monitorAssociationStatus___block_invoke;
  handler[3] = &unk_27898A0C8;
  handler[4] = self;
  dispatch_source_set_event_handler(v16, handler);
  dispatch_resume(self->_hasAssociationDebounceTimer);
}

void __38__WiFiShim__monitorAssociationStatus___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  *(*(a1 + 32) + 24) = 1;
  default_evaluator = nw_path_create_default_evaluator();
  v3 = nw_path_evaluator_copy_path();
  status = nw_path_get_status(v3);
  if (default_evaluator && v3 && (v5 = status) != nw_path_status_invalid && (status | 2) == 3)
  {
    v6 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v7 = "satisfiable";
      if (v5 == nw_path_status_satisfied)
      {
        v7 = "satisfied";
      }

      v16 = 136315138;
      v17 = v7;
      _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEFAULT, "WiFiShim: Debounce timer fired, but we have a %s path: don't forward disassociation to NDF", &v16, 0xCu);
    }

    v8 = MEMORY[0x238388120](v3, 3);
    v9 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v10 = "not wired";
      if (v8)
      {
        v10 = "wired";
      }

      v16 = 136315138;
      v17 = v10;
      _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEFAULT, "WiFiShim: Satisfied path is %s", &v16, 0xCu);
    }

    dispatch_source_cancel(*(*(a1 + 32) + 112));
    v11 = *(a1 + 32);
    v12 = *(v11 + 112);
    *(v11 + 112) = 0;

    *(*(a1 + 32) + 24) = 0;
  }

  else
  {
    v13 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v16) = 0;
      _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_DEFAULT, "WiFiShim: Debounce timer fired, inform NDF of disassociation", &v16, 2u);
    }

    v14 = +[NDFCoreShim sharedInstance];
    [v14 noteWiFiIsDisassociated:1];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)setMonitorLQMBradycardia:(BOOL)a3
{
  v5 = [(WiFiShim *)self queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __37__WiFiShim_setMonitorLQMBradycardia___block_invoke;
  v6[3] = &unk_27898A3A0;
  v6[4] = self;
  v7 = a3;
  dispatch_async(v5, v6);
}

void __37__WiFiShim_setMonitorLQMBradycardia___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v2[16] != v3)
  {
    if (*(a1 + 40))
    {
      [v2 _changeLQMMonitoring];
      LOBYTE(v3) = *(a1 + 40);
      v2 = *(a1 + 32);
    }

    v2[16] = v3;
    v4 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      if (*(*(a1 + 32) + 16))
      {
        v5 = "Enable";
      }

      else
      {
        v5 = "Disable";
      }

      v7 = 136315138;
      v8 = v5;
      _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEFAULT, "WiFiShim: %s LQM Bradycardia monitoring", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_checkForLQMCallbackRegistration
{
  if (self->_interface)
  {
    v3 = [(WiFiShim *)self _shouldRegisterForLQMCallbacks];
    lqmCallbackLastRegistered = self->_lqmCallbackLastRegistered;
    if (v3)
    {
      if (lqmCallbackLastRegistered == 0.0)
      {
        v5 = netepochsLogHandle;
        if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEFAULT, "WiFiShim: Registering for LQM callbacks", buf, 2u);
        }

        [(WiFiShim *)self _registerForLQMCallbacks];
      }
    }

    else if (lqmCallbackLastRegistered != 0.0)
    {
      v7 = netepochsLogHandle;
      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 0;
        _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEFAULT, "WiFiShim: Unregistering from LQM callbacks", v9, 2u);
      }

      [(WiFiShim *)self _unregisterFromLQMCallbacks];
    }
  }

  else
  {
    v6 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_ERROR, "WiFiShim: nil CWFInterface instance, cannot toggle LQM callback registration", v8, 2u);
    }
  }
}

- (BOOL)_shouldRegisterForLQMCallbacks
{
  v2 = +[SystemSettingsRelay defaultRelay];
  v3 = [v2 rnfEnabled];
  v4 = v3 | [v2 noBackhaulEnabled];

  return v4 & 1;
}

- (void)_processAsystoleDeclaration
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    lqmCallbackLastRegistered = self->_lqmCallbackLastRegistered;
    *buf = 134217984;
    v31 = lqmCallbackLastRegistered;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEFAULT, "WiFiShim: LQM Callback was last registered at %f", buf, 0xCu);
  }

  v5 = +[SystemSettingsRelay defaultRelay];
  if ([v5 autoBugCaptureEnabled])
  {
    v6 = +[SystemProperties sharedInstance];
    v7 = [v6 internalBuild];

    if (v7)
    {
      v8 = [MEMORY[0x277CBEAA8] date];
      [v8 timeIntervalSince1970];
      v10 = v9;

      v11 = v10 - self->_lqmAsystoleLastCalled;
      if (v11 <= 86400.0)
      {
        v23 = netepochsLogHandle;
        if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_INFO))
        {
          *buf = 134217984;
          v31 = v11;
          _os_log_impl(&dword_23255B000, v23, OS_LOG_TYPE_INFO, "WiFiShim: Wi-Fi LQM Asystole! No ABC Case since we last called Asystole %f seconds ago", buf, 0xCu);
        }
      }

      else
      {
        v12 = objc_alloc_init(MEMORY[0x277D6AFC8]);
        v13 = v12;
        if (v12)
        {
          v14 = [v12 signatureWithDomain:*MEMORY[0x277D6B020] type:*MEMORY[0x277D6B220] subType:@"Wi-Fi LQM Asystole" subtypeContext:0 detectedProcess:@"symptomsd" triggerThresholdValues:0];
          v28[0] = MEMORY[0x277D85DD0];
          v28[1] = 3221225472;
          v28[2] = __39__WiFiShim__processAsystoleDeclaration__block_invoke;
          v28[3] = &unk_2789900F0;
          v28[4] = self;
          *&v28[5] = v10;
          [v13 snapshotWithSignature:v14 duration:0 events:0 payload:0 actions:v28 reply:0.0];
        }
      }
    }
  }

  else
  {
  }

  v15 = self->_delegates;
  objc_sync_enter(v15);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v16 = self->_delegates;
  v17 = [(NSMutableSet *)v16 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v17)
  {
    v18 = *v25;
    do
    {
      v19 = 0;
      do
      {
        if (*v25 != v18)
        {
          objc_enumerationMutation(v16);
        }

        v20 = *(*(&v24 + 1) + 8 * v19);
        if (objc_opt_respondsToSelector())
        {
          [v20 wifiShim_LQMAsystoleDetected:{self->_lqmCallbackLastTimestamp, v24}];
        }

        ++v19;
      }

      while (v17 != v19);
      v17 = [(NSMutableSet *)v16 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v17);
  }

  objc_sync_exit(v15);
  v21 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v21, OS_LOG_TYPE_DEFAULT, "WiFiShim: Toggling LQM Callback Registration", buf, 2u);
  }

  [(WiFiShim *)self _unregisterFromLQMCallbacks];
  [(WiFiShim *)self _registerForLQMCallbacks];
  v22 = *MEMORY[0x277D85DE8];
}

void __39__WiFiShim__processAsystoleDeclaration__block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277D6B198]];
  v5 = [v4 BOOLValue];

  if (v5)
  {
    *(*(a1 + 32) + 64) = *(a1 + 40);
  }

  else
  {
    *(*(a1 + 32) + 64) = 0;
    v6 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_INFO))
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_INFO, "WiFiShim: Wi-Fi LQM Asystole ABC case not accepted. response: %@", &v8, 0xCu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_resumeLQMCallbackMonitoring
{
  self->_lqmCallbacks = 0;
  self->_lqmCallbackLastTimestamp = 0.0;
  if (self->_lqmCallbackTimer)
  {
    lqmCallbackTimerResumed = self->_lqmCallbackTimerResumed;
    v4 = netepochsLogHandle;
    v5 = os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT);
    if (lqmCallbackTimerResumed)
    {
      if (v5)
      {
        *buf = 0;
        _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEFAULT, "WiFiShim: Restarting LQM timer", buf, 2u);
      }

      lqmCallbackTimer = self->_lqmCallbackTimer;
      v7 = dispatch_time(0, 60000000000);
      dispatch_source_set_timer(lqmCallbackTimer, v7, 0xDF8475800uLL, 0x5F5E100uLL);
    }

    else
    {
      if (v5)
      {
        *v10 = 0;
        _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEFAULT, "WiFiShim: Resuming LQM monitoring", v10, 2u);
      }

      v8 = self->_lqmCallbackTimer;
      v9 = dispatch_time(0, 60000000000);
      dispatch_source_set_timer(v8, v9, 0xDF8475800uLL, 0x5F5E100uLL);
      dispatch_resume(self->_lqmCallbackTimer);
      self->_lqmCallbackTimerResumed = 1;
    }
  }
}

- (void)_triggerDisconnectEdge:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v17 = [v14 userInfo];
  [v17 keyEnumerator];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  obj = v27 = 0u;
  v18 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v18)
  {
    v16 = *v27;
    do
    {
      v4 = 0;
      do
      {
        if (*v27 != v16)
        {
          v5 = v4;
          objc_enumerationMutation(obj);
          v4 = v5;
        }

        v19 = v4;
        v21 = [v17 objectForKeyedSubscript:*(*(&v26 + 1) + 8 * v4)];
        v6 = *([v21 eventData] + 24);
        v20 = self->_delegates;
        objc_sync_enter(v20);
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v7 = self->_delegates;
        v8 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (v8)
        {
          v9 = *v23;
          do
          {
            v10 = 0;
            do
            {
              if (*v23 != v9)
              {
                objc_enumerationMutation(v7);
              }

              v11 = *(*(&v22 + 1) + 8 * v10);
              if (objc_opt_respondsToSelector())
              {
                v12 = [(CWFInterface *)self->_interface interfaceName];
                [v11 wifiShim_L2TriggerDisconnectEdge:v6 != 0 forInterface:v12];
              }

              ++v10;
            }

            while (v8 != v10);
            v8 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v22 objects:v30 count:16];
          }

          while (v8);
        }

        objc_sync_exit(v20);
        v4 = v19 + 1;
      }

      while (v19 + 1 != v18);
      v18 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v18);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_registerForLQMCallbacks
{
  v26 = *MEMORY[0x277D85DE8];
  interface = self->_interface;
  if (!interface)
  {
    v8 = netepochsLogHandle;
    if (!os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

    *buf = 0;
    v9 = "WiFiShim: Cannot register for LQM callbacks on a nil CWFInterface instance";
    v10 = v8;
    v11 = 2;
LABEL_14:
    _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_ERROR, v9, buf, v11);
    goto LABEL_22;
  }

  self->_lqmCallbackRegistrationAttempts = 0;
  if (self->_lqmCallbackLastRegistered != 0.0)
  {
    v12 = netepochsLogHandle;
    if (!os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

    lqmCallbackLastRegistered = self->_lqmCallbackLastRegistered;
    *buf = 134217984;
    v25 = lqmCallbackLastRegistered;
    v9 = "WiFiShim: Already registered for LQM callbacks at %f";
    v10 = v12;
    v11 = 12;
    goto LABEL_14;
  }

  v23 = 0;
  [(CWFInterface *)interface startMonitoringEventType:7 error:&v23];
  v4 = v23;
  if (v4)
  {
    v5 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v25 = *&v4;
      _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_ERROR, "WiFiShim: Error starting monitoring event CWFEventTypeLinkQuality: %@", buf, 0xCu);
    }

    lqmCallbackRegistrationAttempts = self->_lqmCallbackRegistrationAttempts;
    self->_lqmCallbackRegistrationAttempts = lqmCallbackRegistrationAttempts + 1;
    v7 = netepochsLogHandle;
    if (lqmCallbackRegistrationAttempts > 4)
    {
      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_ERROR, "WiFiShim: Failed to register for Wi-Fi LQM callbacks after 5 attempts", buf, 2u);
      }

      internal_symptom_new(405516);
      internal_symptom_send();
      self->_lqmCallbackRegistrationAttempts = 0;
      [(WiFiShim *)self _processAsystoleDeclaration];
    }

    else
    {
      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEFAULT, "WiFiShim: Will attempt to re-register in 2 seconds", buf, 2u);
      }

      [(WiFiShim *)self _delayedRegisterForLQMCallbacks];
    }
  }

  else
  {
    v14 = [MEMORY[0x277CCAB98] defaultCenter];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __36__WiFiShim__registerForLQMCallbacks__block_invoke;
    v22[3] = &unk_27898A690;
    v22[4] = self;
    v15 = [v14 addObserverForName:@"kNotificationTriggerDisconnectThreshold" object:0 queue:0 usingBlock:v22];
    triggerDisconnectObserver = self->_triggerDisconnectObserver;
    self->_triggerDisconnectObserver = v15;

    v17 = [MEMORY[0x277CBEAA8] date];
    [v17 timeIntervalSince1970];
    self->_lqmCallbackLastRegistered = v18;

    v19 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v20 = self->_lqmCallbackLastRegistered;
      *buf = 134217984;
      v25 = v20;
      _os_log_impl(&dword_23255B000, v19, OS_LOG_TYPE_DEFAULT, "WiFiShim: LQM Callback registered at %f", buf, 0xCu);
    }

    [(WiFiShim *)self _changeLQMMonitoring];
  }

LABEL_22:
  v21 = *MEMORY[0x277D85DE8];
}

- (void)_unregisterFromLQMCallbacks
{
  v15 = *MEMORY[0x277D85DE8];
  interface = self->_interface;
  if (!interface)
  {
    v10 = netepochsLogHandle;
    if (!os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    LOWORD(v13) = 0;
    v11 = "WiFiShim: Cannot stop monitoring LQM callbacks on nil CWFInterface instance";
LABEL_10:
    _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_ERROR, v11, &v13, 2u);
    goto LABEL_11;
  }

  if (self->_lqmCallbackLastRegistered == 0.0)
  {
    v10 = netepochsLogHandle;
    if (!os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    LOWORD(v13) = 0;
    v11 = "WiFiShim: Already unregistered from receiving LQM callbacks";
    goto LABEL_10;
  }

  [(CWFInterface *)interface stopMonitoringEventType:7];
  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 removeObserver:self->_triggerDisconnectObserver];
  self->_lqmCallbackLastRegistered = 0.0;
  v5 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v6 = MEMORY[0x277CBEAA8];
    v7 = v5;
    v8 = [v6 date];
    [v8 timeIntervalSince1970];
    v13 = 134217984;
    v14 = v9;
    _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEFAULT, "WiFiShim: LQM Callback unregistered at %f", &v13, 0xCu);
  }

  [(WiFiShim *)self _changeLQMMonitoring];

LABEL_11:
  v12 = *MEMORY[0x277D85DE8];
}

- (void)_delayedRegisterForLQMCallbacks
{
  v3 = dispatch_time(0, 2000000000);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__WiFiShim__delayedRegisterForLQMCallbacks__block_invoke;
  block[3] = &unk_27898A0C8;
  block[4] = self;
  dispatch_after(v3, queue, block);
}

void __43__WiFiShim__delayedRegisterForLQMCallbacks__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _shouldRegisterForLQMCallbacks];
  v3 = netepochsLogHandle;
  v4 = os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEFAULT, "WiFiShim: Delayed Registering for LQM callbacks", buf, 2u);
    }

    [*(a1 + 32) _registerForLQMCallbacks];
  }

  else if (v4)
  {
    *v5 = 0;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEFAULT, "WiFiShim: _delayedRegisterForLQMCallbacks but later told shouldn't register", v5, 2u);
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v8 = a3;
  v9 = [a5 objectForKey:*MEMORY[0x277CCA2F0]];
  if (([v8 isEqual:@"rnfEnabled"] & 1) != 0 || objc_msgSend(v8, "isEqual:", @"noBackhaulEnabled"))
  {
    v10 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_DEFAULT, "WiFiShim: Register for LQM Callbacks after rnfEnabled or noBackhaulEnabled changed", buf, 2u);
    }

    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __59__WiFiShim_observeValueForKeyPath_ofObject_change_context___block_invoke;
    block[3] = &unk_27898A0C8;
    block[4] = self;
    v12 = block;
    goto LABEL_6;
  }

  if ([v8 isEqual:@"mostRecentAPWakeMachTime"])
  {
    if (v9)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if ([v9 unsignedIntegerValue])
        {
          queue = self->_queue;
          v14[0] = MEMORY[0x277D85DD0];
          v14[1] = 3221225472;
          v14[2] = __59__WiFiShim_observeValueForKeyPath_ofObject_change_context___block_invoke_2;
          v14[3] = &unk_27898A0C8;
          v14[4] = self;
          v12 = v14;
LABEL_6:
          dispatch_async(queue, v12);
        }
      }
    }
  }

  else if ([v8 isEqual:@"mostRecentAPSleepMachTime"])
  {
    if (v9)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if ([v9 unsignedIntegerValue])
        {
          queue = self->_queue;
          v13[0] = MEMORY[0x277D85DD0];
          v13[1] = 3221225472;
          v13[2] = __59__WiFiShim_observeValueForKeyPath_ofObject_change_context___block_invoke_87;
          v13[3] = &unk_27898A0C8;
          v13[4] = self;
          v12 = v13;
          goto LABEL_6;
        }
      }
    }
  }
}

uint64_t __59__WiFiShim_observeValueForKeyPath_ofObject_change_context___block_invoke_2(uint64_t a1)
{
  v2 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_DEFAULT, "WiFiShim: AP is awake. Shall we monitor LQM?", v4, 2u);
  }

  *(*(a1 + 32) + 20) = 1;
  return [*(a1 + 32) _changeLQMMonitoring];
}

uint64_t __59__WiFiShim_observeValueForKeyPath_ofObject_change_context___block_invoke_87(uint64_t a1)
{
  v2 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_DEFAULT, "WiFiShim: AP will sleep. Stop monitoring LQM.", v4, 2u);
  }

  *(*(a1 + 32) + 20) = 0;
  return [*(a1 + 32) _changeLQMMonitoring];
}

- (void)_handleWiFiEvent:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 type];
    if (v6 > 6)
    {
      if (v6 == 7)
      {
        v7 = [v5 info];
        [(WiFiShim *)self _handleLinkQualityEventWithInfo:v7];
        goto LABEL_16;
      }

      if (v6 == 30)
      {
        v7 = [v5 info];
        [(WiFiShim *)self _handleKnownNetworkProfileChangedEventWithInfo:v7];
        goto LABEL_16;
      }
    }

    else
    {
      if (v6 == 3)
      {
        [(WiFiShim *)self _handleBSSIDChangedEvent];
        goto LABEL_17;
      }

      if (v6 == 6)
      {
        v7 = [v5 info];
        [(WiFiShim *)self _handleLinkChangedEventWithInfo:v7];
LABEL_16:

        goto LABEL_17;
      }
    }

    v12 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
    {
      v14 = 138477827;
      v15 = v5;
      v9 = "WiFiShim: Got unregistered event %{private}@";
      v10 = v12;
      v11 = 12;
      goto LABEL_13;
    }
  }

  else
  {
    v8 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v14) = 0;
      v9 = "WiFiShim: Got nil CWFEvent instance";
      v10 = v8;
      v11 = 2;
LABEL_13:
      _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_ERROR, v9, &v14, v11);
    }
  }

LABEL_17:

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_handleKnownNetworkProfileChangedEventWithInfo:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_INFO, "WiFiShim: handling event CWFEventTypeKnownNetworkProfileChanged", buf, 2u);
  }

  if (v4)
  {
    v6 = [v4 objectForKeyedSubscript:*MEMORY[0x277D02A98]];
    v7 = [v6 isEqual:&unk_2847EFD88];

    if (v7)
    {
      v8 = [v4 objectForKeyedSubscript:*MEMORY[0x277D02AA0]];
      v9 = netepochsLogHandle;
      if (v8)
      {
        if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          v10 = v9;
          v11 = [v8 networkName];
          *buf = 138477827;
          v27 = v11;
          _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_DEFAULT, "WiFiShim: Removed %{private}@ from known networks list", buf, 0xCu);
        }

        obj = self->_delegates;
        objc_sync_enter(obj);
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v12 = self->_delegates;
        v13 = [(NSMutableSet *)v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v13)
        {
          v14 = *v22;
          do
          {
            for (i = 0; i != v13; ++i)
            {
              if (*v22 != v14)
              {
                objc_enumerationMutation(v12);
              }

              v16 = *(*(&v21 + 1) + 8 * i);
              if (objc_opt_respondsToSelector())
              {
                v17 = [v8 networkName];
                [v16 wifiShim_NetworkForgottenWithSSID:v17];
              }
            }

            v13 = [(NSMutableSet *)v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
          }

          while (v13);
        }

        objc_sync_exit(obj);
      }

      else if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_ERROR, "WiFiShim: Error retrieving knowon network profile of removed network", buf, 2u);
      }
    }
  }

  else
  {
    v18 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v18, OS_LOG_TYPE_ERROR, "WiFiShim: Got nil info dictionary when handling CWFEventTypeKnownNetworkProfileChanged", buf, 2u);
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_handleLinkChangedEventWithInfo:(id)a3
{
  v69 = *MEMORY[0x277D85DE8];
  v44 = a3;
  v3 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_INFO, "WiFiShim: handling event CWFEventTypeLinkChanged", buf, 2u);
  }

  if (v44)
  {
    v4 = [v44 objectForKeyedSubscript:*MEMORY[0x277D02A88]];
    v43 = v4;
    v5 = v4;
    if (!v4)
    {
      v9 = netepochsLogHandle;
      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_ERROR, "WiFiShim: Got nil status dictionary when handling event CWFEventTypeLinkChanged", buf, 2u);
      }

      goto LABEL_63;
    }

    if ([v4 isLinkDown])
    {
      [(WiFiShim *)self _monitorAssociationStatus:0];
      v6 = [v43 reason];
      if ((v6 - 1) > 8)
      {
        v7 = @"Unknown";
      }

      else
      {
        v7 = off_278990110[v6 - 1];
      }

      v25 = [v43 subreason];
      v26 = netepochsLogHandle;
      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        v27 = v26;
        v28 = [v43 isInvoluntaryLinkDown];
        v29 = "voluntary";
        *buf = 67109890;
        v63 = 2112;
        v62 = v6;
        if (v28)
        {
          v29 = "involuntary";
        }

        v64 = v7;
        v65 = 2048;
        v66 = v25;
        v67 = 2080;
        v68 = v29;
        _os_log_impl(&dword_23255B000, v27, OS_LOG_TYPE_DEFAULT, "WiFiShim: Link is down (reason=%d [%@], subreason=%ld, %s)", buf, 0x26u);
      }

      v30 = v6 == 5 || ([v43 isInvoluntaryLinkDown] & 1) == 0;
      obja = self->_delegates;
      objc_sync_enter(obja);
      v55 = 0u;
      v56 = 0u;
      v57 = 0u;
      v58 = 0u;
      v47 = self->_delegates;
      v31 = [(NSMutableSet *)v47 countByEnumeratingWithState:&v55 objects:v60 count:16];
      if (v31)
      {
        v32 = *v56;
        do
        {
          for (i = 0; i != v31; ++i)
          {
            if (*v56 != v32)
            {
              objc_enumerationMutation(v47);
            }

            v34 = *(*(&v55 + 1) + 8 * i);
            if (v30)
            {
              v35 = *(*(&v55 + 1) + 8 * i);
              if (objc_opt_respondsToSelector())
              {
                v36 = self;
                objc_sync_enter(v36);
                v37 = [(WiFiShim *)v36 lastSsid];
                v38 = [(WiFiShim *)v36 lastBssid];
                [v34 wifiShim_InfraAdminDisable:v37 bssid:v38];

                objc_sync_exit(v36);
              }
            }

            if (objc_opt_respondsToSelector())
            {
              v39 = netepochsLogHandle;
              if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_23255B000, v39, OS_LOG_TYPE_DEFAULT, "WiFiShim: Resetting Wi-Fi Assist Override at link down", buf, 2u);
              }

              [v34 wifiShim_HintForFallback:0 reasons:0];
            }

            if (objc_opt_respondsToSelector())
            {
              [v34 wifiShim_CurrentAssociationChanged:0 associationInfo:0];
            }
          }

          v31 = [(NSMutableSet *)v47 countByEnumeratingWithState:&v55 objects:v60 count:16];
        }

        while (v31);
      }

      objc_sync_exit(obja);
      v5 = v43;
      if (![(WiFiShim *)self hasAssociation])
      {
        goto LABEL_63;
      }

      v24 = 0;
    }

    else
    {
      [(WiFiShim *)self _monitorAssociationStatus:1];
      v46 = [(CWFInterface *)self->_interface currentKnownNetworkProfile];
      v45 = [(WiFiShim *)self _associationInfoForNetworkProfile:?];
      v10 = netepochsLogHandle;
      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_DEFAULT, "WiFiShim: Link is up.", buf, 2u);
      }

      obj = self->_delegates;
      objc_sync_enter(obj);
      v51 = 0u;
      v52 = 0u;
      v53 = 0u;
      v54 = 0u;
      v11 = self->_delegates;
      v12 = [(NSMutableSet *)v11 countByEnumeratingWithState:&v51 objects:v59 count:16];
      if (v12)
      {
        v13 = *v52;
        do
        {
          for (j = 0; j != v12; ++j)
          {
            if (*v52 != v13)
            {
              objc_enumerationMutation(v11);
            }

            v15 = *(*(&v51 + 1) + 8 * j);
            if (objc_opt_respondsToSelector())
            {
              v16 = [(CWFInterface *)self->_interface wifiAssistOverrideReasons];
              v17 = v16;
              if (v16 && [v16 count])
              {
                v18 = objc_alloc_init(MEMORY[0x277CBEB58]);
                v19 = netepochsLogHandle;
                if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&dword_23255B000, v19, OS_LOG_TYPE_DEFAULT, "WiFiShim: Received Wi-Fi Assist Override at link up", buf, 2u);
                }

                v49[0] = MEMORY[0x277D85DD0];
                v49[1] = 3221225472;
                v49[2] = __44__WiFiShim__handleLinkChangedEventWithInfo___block_invoke;
                v49[3] = &unk_27898DED0;
                v20 = v18;
                v50 = v20;
                [v17 enumerateObjectsUsingBlock:v49];

                v21 = 1;
              }

              else
              {
                v22 = netepochsLogHandle;
                if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&dword_23255B000, v22, OS_LOG_TYPE_DEFAULT, "WiFiShim: Did not receive Wi-Fi Assist Override at link up", buf, 2u);
                }

                v21 = 0;
                v20 = 0;
              }

              [v15 wifiShim_HintForFallback:v21 reasons:v20];
            }

            if (objc_opt_respondsToSelector())
            {
              [v15 wifiShim_CurrentAssociationChanged:v46 != 0 associationInfo:v45];
            }
          }

          v12 = [(NSMutableSet *)v11 countByEnumeratingWithState:&v51 objects:v59 count:16];
        }

        while (v12);
      }

      objc_sync_exit(obj);
      v23 = [(WiFiShim *)self hasAssociation];
      v5 = v43;
      v24 = v46 != 0;
      if ((v46 != 0) == v23)
      {
        goto LABEL_63;
      }
    }

    [(WiFiShim *)self setHasAssociation:v24];
    [(WiFiShim *)self _changeLQMMonitoring];
    v5 = v43;
LABEL_63:

    goto LABEL_64;
  }

  v8 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_ERROR, "WiFiShim: Got nil info dictionary when handling CWFEventTypeLinkChanged", buf, 2u);
  }

LABEL_64:

  v40 = *MEMORY[0x277D85DE8];
}

void __44__WiFiShim__handleLinkChangedEventWithInfo___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v3;
      _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEFAULT, "WiFiShim: Adding from reasons: %@", &v9, 0xCu);
    }

    [*(a1 + 32) addObject:v3];
  }

  else
  {
    v5 = netepochsLogHandle;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      if (v3)
      {
        v6 = objc_opt_class();
        v7 = NSStringFromClass(v6);
      }

      else
      {
        v7 = @"nil";
      }

      v9 = 138412546;
      v10 = v3;
      v11 = 2112;
      v12 = v7;
      _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_ERROR, "WiFiShim: Invalid reason %@ (%@)", &v9, 0x16u);
      if (v3)
      {
      }
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_handleBSSIDChangedEvent
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_INFO, "WiFiShim: handling event CWFEventTypeBSSIDChanged", buf, 2u);
  }

  v4 = self->_delegates;
  objc_sync_enter(v4);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_delegates;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v6)
  {
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v12 + 1) + 8 * v8);
        if (objc_opt_respondsToSelector())
        {
          v10 = [(CWFInterface *)self->_interface interfaceName];
          [v9 wifiShim_BSSIDChangedForInterface:v10];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v6);
  }

  objc_sync_exit(v4);
  v11 = *MEMORY[0x277D85DE8];
}

- (void)_handleLinkQualityEventWithInfo:(id)a3
{
  v91[2] = *MEMORY[0x277D85DE8];
  v50 = a3;
  v4 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_INFO, "WiFiShim: handling event CWFEventTypeLinkQuality", &buf, 2u);
  }

  if (v50)
  {
    v69 = self;
    v56 = [(CWFInterface *)self->_interface interfaceName];
    if ([(WiFiShim *)self monitorLQMBradycardia])
    {
      v5 = netepochsLogHandle;
      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_INFO))
      {
        v6 = v5;
        v7 = ([(WiFiShim *)self lqmCallbacks]+ 1);
        [(WiFiShim *)v69 setLqmCallbacks:v7];
        LODWORD(buf) = 67109120;
        DWORD1(buf) = v7;
        _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_INFO, "LQM callback count is %u\n", &buf, 8u);
      }
    }

    v8 = [MEMORY[0x277CBEAA8] date];
    [v8 timeIntervalSince1970];
    [(WiFiShim *)v69 setLqmCallbackLastTimestamp:?];

    v67 = [v50 objectForKeyedSubscript:*MEMORY[0x277D02A90]];
    if (v67)
    {
      v49 = v69->_delegates;
      objc_sync_enter(v49);
      v74 = 0u;
      v75 = 0u;
      v76 = 0u;
      v77 = 0u;
      obj = v69->_delegates;
      v9 = [(NSMutableSet *)obj countByEnumeratingWithState:&v74 objects:v78 count:16];
      if (v9)
      {
        v66 = *v75;
        do
        {
          v10 = 0;
          v68 = v9;
          do
          {
            if (*v75 != v66)
            {
              objc_enumerationMutation(obj);
            }

            v71 = *(*(&v74 + 1) + 8 * v10);
            if (objc_opt_respondsToSelector())
            {
              v70 = v67;
              v11 = [v70 linkQualityMetricData];
              v12 = v11;
              v13 = [v11 bytes];

              if (v13)
              {
                if (*(v13 + 11))
                {
                  v63 = *(v13 + 12);
                }

                else
                {
                  v63 = 0;
                }

                v18 = *(v13 + 20);
                v17 = *(v13 + 24);
                v19 = *(v13 + 28);
                if (*(v13 + 8))
                {
                  v20 = [MEMORY[0x277CCABB0] numberWithChar:*(v13 + 9)];
                  v91[0] = v20;
                  v21 = [MEMORY[0x277CCABB0] numberWithChar:*(v13 + 10)];
                  v91[1] = v21;
                  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v91 count:2];
                }

                else
                {
                  v22 = &unk_2847EEC58;
                }

                v23 = *(v13 + 312);
                v53 = *(v13 + 314);
                v24 = *(v13 + 324);
                v25 = *(v13 + 325);
                v54 = *(v13 + 326);
                v55 = *(v13 + 313);
                v81[0] = @"RSSI";
                v65 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v70, "RSSI", v49)}];
                *&buf = v65;
                v81[1] = @"SNR";
                v64 = [MEMORY[0x277CCABB0] numberWithShort:v63];
                *(&buf + 1) = v64;
                v81[2] = @"CCA";
                v62 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v70, "CCA")}];
                v83 = v62;
                v81[3] = @"TXRATE";
                v26 = MEMORY[0x277CCABB0];
                [v70 txRate];
                v61 = [v26 numberWithDouble:?];
                v84 = v61;
                v81[4] = @"RXRATE";
                v27 = MEMORY[0x277CCABB0];
                [v70 rxRate];
                v60 = [v27 numberWithDouble:?];
                v85 = v60;
                v81[5] = @"TXFAIL";
                v59 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v18];
                v86 = v59;
                v81[6] = @"TXRETRANS";
                v58 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v17];
                v87 = v58;
                v81[7] = @"TXFRAMES";
                v57 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v19];
                v88 = v57;
                v81[8] = @"PER_CORE_RSSI";
                v28 = v22;
                if (!v22)
                {
                  v28 = [MEMORY[0x277CBEB68] null];
                }

                v51 = v28;
                v89 = v28;
                v81[9] = @"CCA_STATS";
                v79[0] = @"CCA_SELF_WAKE";
                v29 = [MEMORY[0x277CCABB0] numberWithChar:v24];
                v80[0] = v29;
                v79[1] = @"CCA_SELF_TOTAL";
                v30 = [MEMORY[0x277CCABB0] numberWithChar:v23];
                v80[1] = v30;
                v79[2] = @"CCA_OTHER_WAKE";
                v31 = [MEMORY[0x277CCABB0] numberWithChar:v25];
                v80[2] = v31;
                v79[3] = @"CCA_OTHER_TOTAL";
                v32 = [MEMORY[0x277CCABB0] numberWithChar:v55];
                v80[3] = v32;
                v79[4] = @"CCA_INTERFERENCE_WAKE";
                v33 = [MEMORY[0x277CCABB0] numberWithChar:v54];
                v80[4] = v33;
                v79[5] = @"CCA_INTERFERENCE_TOTAL";
                v34 = [MEMORY[0x277CCABB0] numberWithChar:v53];
                v80[5] = v34;
                v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v80 forKeys:v79 count:6];
                v90 = v35;
                v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&buf forKeys:v81 count:10];

                if (!v22)
                {
                }
              }

              else
              {
                v14 = netepochsLogHandle;
                v15 = os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR);
                v16 = MEMORY[0x277CBEC10];
                if (v15)
                {
                  LOWORD(buf) = 0;
                  _os_log_impl(&dword_23255B000, v14, OS_LOG_TYPE_ERROR, "WiFiShim: linkQualityMetricData is NULL", &buf, 2u);
                }
              }

              [v71 wifiShim_L2NewMetrics:v16 forInterface:v56];
            }

            if (objc_opt_respondsToSelector())
            {
              v36 = [(CWFInterface *)v69->_interface wifiAssistOverrideReasons];
              v37 = v36;
              if (v36 && [v36 count])
              {
                v38 = objc_alloc_init(MEMORY[0x277CBEB58]);
                v39 = netepochsLogHandle;
                if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
                {
                  LOWORD(buf) = 0;
                  _os_log_impl(&dword_23255B000, v39, OS_LOG_TYPE_DEFAULT, "WiFiShim: Received Wi-Fi Assist Override upon LQM change", &buf, 2u);
                }

                v72[0] = MEMORY[0x277D85DD0];
                v72[1] = 3221225472;
                v72[2] = __44__WiFiShim__handleLinkQualityEventWithInfo___block_invoke;
                v72[3] = &unk_27898DED0;
                v40 = v38;
                v73 = v40;
                [v37 enumerateObjectsUsingBlock:v72];

                v41 = 1;
              }

              else
              {
                v42 = netepochsLogHandle;
                if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_INFO))
                {
                  LOWORD(buf) = 0;
                  _os_log_impl(&dword_23255B000, v42, OS_LOG_TYPE_INFO, "WiFiShim: Did not receive Wi-Fi Assist Override upon LQM change", &buf, 2u);
                }

                v41 = 0;
                v40 = 0;
              }

              [v71 wifiShim_HintForFallback:v41 reasons:{v40, v49}];
            }

            if (objc_opt_respondsToSelector())
            {
              v43 = [v67 RSSI];
              if (v43 == v69->_lastRSSI)
              {
                v44 = netepochsLogHandle;
                if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_INFO))
                {
                  LODWORD(buf) = 134217984;
                  *(&buf + 4) = v43;
                  _os_log_impl(&dword_23255B000, v44, OS_LOG_TYPE_INFO, "WiFiShim: Skipped informing delegates of RSSI change because lastSeenRSSI == RSSI (%ld)", &buf, 0xCu);
                }
              }

              else
              {
                v45 = [(CWFInterface *)v69->_interface BSSID];
                [v71 wifiShim_RSSIChangedTo:v43 forInterface:v56 bssid:v45];

                v69->_lastRSSI = v43;
              }
            }

            ++v10;
          }

          while (v68 != v10);
          v9 = [(NSMutableSet *)obj countByEnumeratingWithState:&v74 objects:v78 count:16];
        }

        while (v9);
      }

      objc_sync_exit(v49);
    }

    else
    {
      v47 = netepochsLogHandle;
      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_23255B000, v47, OS_LOG_TYPE_ERROR, "WiFiShim: Got nil info dictionary when handling CWFEventTypeLinkQuality", &buf, 2u);
      }
    }
  }

  else
  {
    v46 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_23255B000, v46, OS_LOG_TYPE_ERROR, "WiFiShim: Got nil info dictionary when handling CWFEventTypeLinkQuality", &buf, 2u);
    }
  }

  v48 = *MEMORY[0x277D85DE8];
}

void __44__WiFiShim__handleLinkQualityEventWithInfo___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v3;
      _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEFAULT, "WiFiShim: Adding from reasons: %@", &v9, 0xCu);
    }

    [*(a1 + 32) addObject:v3];
  }

  else
  {
    v5 = netepochsLogHandle;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      if (v3)
      {
        v6 = objc_opt_class();
        v7 = NSStringFromClass(v6);
      }

      else
      {
        v7 = @"nil";
      }

      v9 = 138412546;
      v10 = v3;
      v11 = 2112;
      v12 = v7;
      _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_ERROR, "WiFiShim: Invalid reason %@ (%@)", &v9, 0x16u);
      if (v3)
      {
      }
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

@end