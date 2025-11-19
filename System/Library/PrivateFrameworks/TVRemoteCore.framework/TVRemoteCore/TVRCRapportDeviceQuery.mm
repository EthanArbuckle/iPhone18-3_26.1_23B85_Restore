@interface TVRCRapportDeviceQuery
- (BOOL)_shouldReportDevice:(id)a3;
- (TVRCRapportDeviceQuery)init;
- (TVRCServiceDeviceQueryDelegate)delegate;
- (void)_deviceFound:(id)a3;
- (void)_deviceLost:(id)a3;
- (void)_disconnectAndRemoveDevice:(id)a3;
- (void)_mdmConfigChanged:(id)a3;
- (void)_removeAllDevices;
- (void)dealloc;
- (void)start;
- (void)stop;
@end

@implementation TVRCRapportDeviceQuery

- (void)dealloc
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = _TVRCRapportQueryLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v8 = "[TVRCRapportDeviceQuery dealloc]";
    v9 = 2112;
    v10 = self;
    _os_log_impl(&dword_26CF7F000, v3, OS_LOG_TYPE_DEFAULT, "%s %@", buf, 0x16u);
  }

  [(RPCompanionLinkClient *)self->_companionLinkClient invalidate];
  companionLinkClient = self->_companionLinkClient;
  self->_companionLinkClient = 0;

  v6.receiver = self;
  v6.super_class = TVRCRapportDeviceQuery;
  [(TVRCRapportDeviceQuery *)&v6 dealloc];
  v5 = *MEMORY[0x277D85DE8];
}

- (TVRCRapportDeviceQuery)init
{
  v22 = *MEMORY[0x277D85DE8];
  v17.receiver = self;
  v17.super_class = TVRCRapportDeviceQuery;
  v2 = [(TVRCRapportDeviceQuery *)&v17 init];
  if (v2)
  {
    v3 = _TVRCRapportQueryLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v19 = "[TVRCRapportDeviceQuery init]";
      v20 = 2112;
      v21 = v2;
      _os_log_impl(&dword_26CF7F000, v3, OS_LOG_TYPE_DEFAULT, "%s %@", buf, 0x16u);
    }

    v4 = objc_alloc_init(_TVRCRapportDeviceManager);
    deviceManager = v2->_deviceManager;
    v2->_deviceManager = v4;

    v6 = objc_alloc_init(_TVRCExpiringStore);
    expiringStore = v2->_expiringStore;
    v2->_expiringStore = v6;

    v8 = objc_alloc_init(MEMORY[0x277D02938]);
    systemMonitor = v2->_systemMonitor;
    v2->_systemMonitor = v8;

    objc_initWeak(buf, v2);
    v10 = v2->_systemMonitor;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __30__TVRCRapportDeviceQuery_init__block_invoke;
    v15[3] = &unk_279D826E8;
    objc_copyWeak(&v16, buf);
    [(CUSystemMonitor *)v10 setScreenStateChangedHandler:v15];
    [(CUSystemMonitor *)v2->_systemMonitor activateWithCompletion:&__block_literal_global_9];
    v11 = dispatch_queue_create("com.apple.TVRemoteCore.deviceQuery", 0);
    deviceQueryQueue = v2->_deviceQueryQueue;
    v2->_deviceQueryQueue = v11;

    objc_destroyWeak(&v16);
    objc_destroyWeak(buf);
  }

  v13 = *MEMORY[0x277D85DE8];
  return v2;
}

void __30__TVRCRapportDeviceQuery_init__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained systemMonitor];
    v4 = [v3 screenState];

    v5 = _TVRCRapportQueryLog();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
LABEL_16:

      goto LABEL_17;
    }

    if (v4 <= 19)
    {
      if (!v4)
      {
        v6 = @"Unknown";
        goto LABEL_15;
      }

      if (v4 == 10)
      {
        v6 = @"Off";
        goto LABEL_15;
      }
    }

    else
    {
      switch(v4)
      {
        case 20:
          v6 = @"InactiveOn";
          goto LABEL_15;
        case 30:
          v6 = @"ActiveDimmed";
          goto LABEL_15;
        case 40:
          v6 = @"ActiveOn";
LABEL_15:
          v8 = 138543362;
          v9 = v6;
          _os_log_impl(&dword_26CF7F000, v5, OS_LOG_TYPE_DEFAULT, "CUScreenState: %{public}@", &v8, 0xCu);
          goto LABEL_16;
      }
    }

    v6 = @"?";
    goto LABEL_15;
  }

LABEL_17:

  v7 = *MEMORY[0x277D85DE8];
}

void __30__TVRCRapportDeviceQuery_init__block_invoke_60()
{
  v0 = _TVRCRapportQueryLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_26CF7F000, v0, OS_LOG_TYPE_DEFAULT, "Screen state monitor activated", v1, 2u);
  }
}

- (void)start
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = _TVRCRapportQueryLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v23 = "[TVRCRapportDeviceQuery start]";
    _os_log_impl(&dword_26CF7F000, v3, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v4 = objc_alloc_init(MEMORY[0x277D44160]);
  companionLinkClient = self->_companionLinkClient;
  self->_companionLinkClient = v4;

  v6 = 0x4000000000404;
  if (+[TVRCFeatures isAWDLEnabled])
  {
    v7 = _TVRCRapportQueryLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26CF7F000, v7, OS_LOG_TYPE_DEFAULT, "AWDL is enabled", buf, 2u);
    }

    v6 = 0x4000000000406;
  }

  [(RPCompanionLinkClient *)self->_companionLinkClient setControlFlags:v6];
  [(RPCompanionLinkClient *)self->_companionLinkClient setDispatchQueue:self->_deviceQueryQueue];
  [(RPCompanionLinkClient *)self->_companionLinkClient setFlags:1];
  [(RPCompanionLinkClient *)self->_companionLinkClient setRssiThreshold:-75];
  [(RPCompanionLinkClient *)self->_companionLinkClient tvrc_setAllowedTVs];
  objc_initWeak(buf, self);
  v8 = self->_companionLinkClient;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __31__TVRCRapportDeviceQuery_start__block_invoke;
  v20[3] = &unk_279D82FF8;
  objc_copyWeak(&v21, buf);
  [(RPCompanionLinkClient *)v8 setDeviceFoundHandler:v20];
  v9 = self->_companionLinkClient;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __31__TVRCRapportDeviceQuery_start__block_invoke_66;
  v18[3] = &unk_279D83048;
  objc_copyWeak(&v19, buf);
  v18[4] = self;
  [(RPCompanionLinkClient *)v9 setDeviceLostHandler:v18];
  v10 = self->_companionLinkClient;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __31__TVRCRapportDeviceQuery_start__block_invoke_69;
  v16[3] = &unk_279D83070;
  objc_copyWeak(&v17, buf);
  [(RPCompanionLinkClient *)v10 setDeviceChangedHandler:v16];
  v11 = self->_companionLinkClient;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __31__TVRCRapportDeviceQuery_start__block_invoke_2;
  v14[3] = &unk_279D826E8;
  objc_copyWeak(&v15, buf);
  [(RPCompanionLinkClient *)v11 setInvalidationHandler:v14];
  [(RPCompanionLinkClient *)self->_companionLinkClient setInterruptionHandler:&__block_literal_global_76];
  [(RPCompanionLinkClient *)self->_companionLinkClient activateWithCompletion:&__block_literal_global_80];
  v12 = [MEMORY[0x277CCAB98] defaultCenter];
  [v12 addObserver:self selector:sel__mdmConfigChanged_ name:@"TVRXManagedConfigManagerTVRemoteAllowedTVAdded" object:0];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&v17);
  objc_destroyWeak(&v19);
  objc_destroyWeak(&v21);
  objc_destroyWeak(buf);
  v13 = *MEMORY[0x277D85DE8];
}

void __31__TVRCRapportDeviceQuery_start__block_invoke(uint64_t a1, void *a2)
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = _TVRCRapportQueryLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __31__TVRCRapportDeviceQuery_start__block_invoke_cold_1(v3, v5);
    }

    if ([WeakRetained _shouldReportDevice:v3])
    {
      v6 = _TVRCRapportQueryLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218242;
        v26 = v3;
        v27 = 2114;
        v28 = v3;
        _os_log_impl(&dword_26CF7F000, v6, OS_LOG_TYPE_DEFAULT, "Device should be added, device<%p> %{public}@", buf, 0x16u);
      }

      v7 = [v3 statusFlags];
      v8 = [v3 statusFlags];
      v9 = [v3 statusFlags];
      v10 = _TVRCRapportQueryLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = [v3 name];
        v12 = [v3 effectiveIdentifier];
        *buf = 138544386;
        v26 = v11;
        v27 = 2114;
        v28 = v12;
        v29 = 1024;
        v30 = (v7 >> 1) & 1;
        v31 = 1024;
        v32 = (v8 >> 9) & 1;
        v33 = 1024;
        v34 = (v9 >> 2) & 1;
        _os_log_impl(&dword_26CF7F000, v10, OS_LOG_TYPE_DEFAULT, "Device details name:%{public}@, id:%{public}@, ble:%{BOOL}d, wifip2p:%{BOOL}d, wifi:%{BOOL}d ", buf, 0x28u);
      }

      v13 = [WeakRetained deviceManager];
      v14 = [v13 _identifierForDevice:v3];

      if ([WeakRetained[2] containsIdentifier:v14])
      {
        v15 = _TVRCRapportQueryLog();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v26 = v3;
          _os_log_impl(&dword_26CF7F000, v15, OS_LOG_TYPE_DEFAULT, "Device expired, but was found again, device=%@", buf, 0xCu);
        }

        [WeakRetained[2] removeIdentifier:v14];
        v16 = [WeakRetained deviceManager];
        v17 = [v16 deviceImplForLinkDevice:v3];

        v18 = [v17 deviceWrapper];

        if (v18)
        {
          v22[0] = MEMORY[0x277D85DD0];
          v22[1] = 3221225472;
          v22[2] = __31__TVRCRapportDeviceQuery_start__block_invoke_64;
          v22[3] = &unk_279D82648;
          v23 = v17;
          v24 = v3;
          v19 = v17;
          dispatch_async(MEMORY[0x277D85CD0], v22);

LABEL_18:
          goto LABEL_19;
        }

        v20 = _TVRCRapportQueryLog();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          __31__TVRCRapportDeviceQuery_start__block_invoke_cold_2(v20);
        }
      }

      [WeakRetained _deviceFound:v3];
      goto LABEL_18;
    }
  }

LABEL_19:

  v21 = *MEMORY[0x277D85DE8];
}

void __31__TVRCRapportDeviceQuery_start__block_invoke_64(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) deviceWrapper];
  v3 = [v2 device];
  v4 = *(a1 + 40);

  if (v3 != v4)
  {
    v5 = [*(a1 + 32) deviceWrapper];
    [v5 updateWithDevice:*(a1 + 40)];
  }

  v6 = _TVRCRapportQueryLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [*(a1 + 32) deviceWrapper];
    v10 = 138412290;
    v11 = v7;
    _os_log_impl(&dword_26CF7F000, v6, OS_LOG_TYPE_DEFAULT, "Reconnecting: %@", &v10, 0xCu);
  }

  v8 = [*(a1 + 32) deviceWrapper];
  [v8 reconnect];

  v9 = *MEMORY[0x277D85DE8];
}

void __31__TVRCRapportDeviceQuery_start__block_invoke_66(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained && [WeakRetained _shouldReportDevice:v3])
  {
    v6 = _TVRCRapportQueryLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v25 = v3;
      _os_log_impl(&dword_26CF7F000, v6, OS_LOG_TYPE_DEFAULT, "Device should be removed, device=%{public}@", buf, 0xCu);
    }

    v7 = [v5 deviceManager];
    v8 = [v7 _identifierForDevice:v3];

    v9 = [v5 deviceManager];
    v10 = [v9 deviceImplForLinkDevice:v3];

    v11 = [v10 deviceWrapper];
    v12 = [v11 connected];

    if (v12)
    {
      v13 = dispatch_time(0, 2000000000);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __31__TVRCRapportDeviceQuery_start__block_invoke_67;
      block[3] = &unk_279D83020;
      v14 = v3;
      v15 = *(a1 + 32);
      v19 = v14;
      v20 = v15;
      v21 = v10;
      v22 = v5;
      v23 = v8;
      dispatch_after(v13, MEMORY[0x277D85CD0], block);
    }

    else
    {
      v16 = _TVRCRapportQueryLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_26CF7F000, v16, OS_LOG_TYPE_DEFAULT, "Device wasn't connected so we won't try to reconnect", buf, 2u);
      }

      [v5 _deviceLost:v3];
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __31__TVRCRapportDeviceQuery_start__block_invoke_67(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  if (([*(a1 + 32) statusFlags] & 0x200) != 0 || (objc_msgSend(*(a1 + 32), "statusFlags") & 2) != 0 || (objc_msgSend(*(a1 + 40), "systemMonitor"), v2 = objc_claimAutoreleasedReturnValue(), v3 = objc_msgSend(v2, "screenState"), v2, v3 == 40))
  {
    v4 = _TVRCRapportQueryLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [*(a1 + 48) deviceWrapper];
      v6 = *(a1 + 32);
      *buf = 134218498;
      v16 = 0x401C000000000000;
      v17 = 2114;
      v18 = v5;
      v19 = 2114;
      v20 = v6;
      _os_log_impl(&dword_26CF7F000, v4, OS_LOG_TYPE_DEFAULT, "Device was lost, wait to see if it returns, timeout=%f, deviceWrapper=%{public}@, device=%{public}@", buf, 0x20u);
    }

    objc_initWeak(buf, *(a1 + 56));
    v7 = *(*(a1 + 56) + 16);
    v8 = *(a1 + 64);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __31__TVRCRapportDeviceQuery_start__block_invoke_68;
    v12[3] = &unk_279D82FD0;
    objc_copyWeak(&v14, buf);
    v13 = *(a1 + 32);
    [v7 addIdentifier:v8 withExpiration:v12 completion:7.0];

    objc_destroyWeak(&v14);
    objc_destroyWeak(buf);
  }

  else
  {
    v10 = _TVRCRapportQueryLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      *buf = 138543362;
      v16 = v11;
      _os_log_impl(&dword_26CF7F000, v10, OS_LOG_TYPE_DEFAULT, "Device is not connected over Infra and screen is not active, ignoring the device lost notification - device: %{public}@", buf, 0xCu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __31__TVRCRapportDeviceQuery_start__block_invoke_68(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = _TVRCRapportQueryLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v6 = 138543362;
      v7 = v4;
      _os_log_impl(&dword_26CF7F000, v3, OS_LOG_TYPE_DEFAULT, "Device was not found again, device=%{public}@", &v6, 0xCu);
    }

    [WeakRetained _deviceLost:*(a1 + 32)];
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __31__TVRCRapportDeviceQuery_start__block_invoke_69(uint64_t a1, void *a2, char a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained && [WeakRetained _shouldReportDevice:v5])
  {
    v8 = [v7 deviceManager];
    v9 = [v8 deviceImplForLinkDevice:v5];

    v10 = _TVRCRapportQueryLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      __31__TVRCRapportDeviceQuery_start__block_invoke_69_cold_1(v5, v9, v10);
    }

    v11 = [v9 deviceWrapper];

    if (v11)
    {
      v12 = _TVRCRapportQueryLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = "yes";
        if ((a3 & 2) != 0)
        {
          v14 = "yes";
        }

        else
        {
          v14 = "no";
        }

        *buf = 138543874;
        v23 = v5;
        v25 = v14;
        v24 = 2080;
        if ((a3 & 0x10) == 0)
        {
          v13 = "no";
        }

        v26 = 2080;
        v27 = v13;
        _os_log_impl(&dword_26CF7F000, v12, OS_LOG_TYPE_DEFAULT, "Device changed: %{public}@ attributesChanged :%s nameChanged: %s", buf, 0x20u);
      }

      if ((a3 & 0x12) != 0)
      {
        v15 = [v9 deviceWrapper];
        v16 = [v15 isPaired];

        if ((v16 & 1) == 0)
        {
          v17 = _TVRCRapportQueryLog();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v23 = v5;
            _os_log_impl(&dword_26CF7F000, v17, OS_LOG_TYPE_DEFAULT, "Updating UnAuth rapport device: %{public}@", buf, 0xCu);
          }
        }

        v19[0] = MEMORY[0x277D85DD0];
        v19[1] = 3221225472;
        v19[2] = __31__TVRCRapportDeviceQuery_start__block_invoke_72;
        v19[3] = &unk_279D82648;
        v20 = v9;
        v21 = v5;
        dispatch_async(MEMORY[0x277D85CD0], v19);
      }
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __31__TVRCRapportDeviceQuery_start__block_invoke_72(uint64_t a1)
{
  v2 = [*(a1 + 32) deviceWrapper];
  [v2 updateWithDevice:*(a1 + 40)];
}

void __31__TVRCRapportDeviceQuery_start__block_invoke_2(uint64_t a1)
{
  v2 = _TVRCRapportQueryLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_26CF7F000, v2, OS_LOG_TYPE_DEFAULT, "Rapport discovery companionLinkClient connection invalidated. Removing all devices", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _removeAllDevices];
}

void __31__TVRCRapportDeviceQuery_start__block_invoke_74()
{
  v0 = _TVRCRapportQueryLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_26CF7F000, v0, OS_LOG_TYPE_DEFAULT, "Rapport discovery companionLinkClient connection interrupted", v1, 2u);
  }
}

void __31__TVRCRapportDeviceQuery_start__block_invoke_77(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = _TVRCRapportQueryLog();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __31__TVRCRapportDeviceQuery_start__block_invoke_77_cold_1(v2, v4);
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_26CF7F000, v4, OS_LOG_TYPE_DEFAULT, "Rapport discovery client activated. Searching for Rapport devices.", v5, 2u);
  }
}

- (void)stop
{
  v3 = _TVRCRapportQueryLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_26CF7F000, v3, OS_LOG_TYPE_DEFAULT, "Stopping rapport query", v8, 2u);
  }

  expiringStore = self->_expiringStore;
  self->_expiringStore = 0;

  deviceManager = self->_deviceManager;
  self->_deviceManager = 0;

  [(RPCompanionLinkClient *)self->_companionLinkClient invalidate];
  companionLinkClient = self->_companionLinkClient;
  self->_companionLinkClient = 0;

  v7 = [MEMORY[0x277CCAB98] defaultCenter];
  [v7 removeObserver:self name:@"TVRXManagedConfigManagerTVRemoteAllowedTVAdded" object:0];
}

- (void)_deviceFound:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _TVRCRapportQueryLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v12 = "[TVRCRapportDeviceQuery _deviceFound:]";
    _os_log_impl(&dword_26CF7F000, v5, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = __39__TVRCRapportDeviceQuery__deviceFound___block_invoke;
  activity_block[3] = &unk_279D83098;
  activity_block[4] = self;
  v9 = v4;
  v6 = v4;
  objc_copyWeak(&v10, buf);
  _os_activity_initiate(&dword_26CF7F000, "RPCompanionLinkDevice device discovered", OS_ACTIVITY_FLAG_DETACHED, activity_block);
  objc_destroyWeak(&v10);

  objc_destroyWeak(buf);
  v7 = *MEMORY[0x277D85DE8];
}

void __39__TVRCRapportDeviceQuery__deviceFound___block_invoke(id *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(a1[4] + 1);
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [a1[4] deviceManager];
    v5 = [v4 createOrUpdateDeviceImplForLinkDevice:a1[5]];

    if (v5)
    {
      v6 = _TVRCRapportQueryLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = a1[5];
        *buf = 138543362;
        v13 = v7;
        _os_log_impl(&dword_26CF7F000, v6, OS_LOG_TYPE_DEFAULT, "Informing delegate device was added: %{public}@", buf, 0xCu);
      }

      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __39__TVRCRapportDeviceQuery__deviceFound___block_invoke_86;
      v9[3] = &unk_279D82FD0;
      objc_copyWeak(&v11, a1 + 6);
      v10 = a1[5];
      dispatch_async(MEMORY[0x277D85CD0], v9);

      objc_destroyWeak(&v11);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __39__TVRCRapportDeviceQuery__deviceFound___block_invoke_86(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v3 = [WeakRetained delegate];
    v4 = [v6 deviceManager];
    v5 = [v4 deviceImplForLinkDevice:*(a1 + 32)];
    [v3 addedDevice:v5];

    WeakRetained = v6;
  }
}

- (void)_deviceLost:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _TVRCRapportQueryLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v13 = "[TVRCRapportDeviceQuery _deviceLost:]";
    _os_log_impl(&dword_26CF7F000, v5, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = __38__TVRCRapportDeviceQuery__deviceLost___block_invoke;
  activity_block[3] = &unk_279D83098;
  v9 = v4;
  v10 = self;
  v6 = v4;
  objc_copyWeak(&v11, buf);
  _os_activity_initiate(&dword_26CF7F000, "RPCompanionLinkDevice device lost", OS_ACTIVITY_FLAG_DETACHED, activity_block);
  objc_destroyWeak(&v11);

  objc_destroyWeak(buf);
  v7 = *MEMORY[0x277D85DE8];
}

void __38__TVRCRapportDeviceQuery__deviceLost___block_invoke(id *a1)
{
  v37 = *MEMORY[0x277D85DE8];
  v2 = _TVRCRapportQueryLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    *buf = 138543362;
    *v35 = v3;
    _os_log_impl(&dword_26CF7F000, v2, OS_LOG_TYPE_DEFAULT, "Informing delegate device was lost: %{public}@", buf, 0xCu);
  }

  v4 = a1 + 5;
  WeakRetained = objc_loadWeakRetained(a1[5] + 1);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [a1[5] deviceManager];
    v8 = a1 + 4;
    v9 = [v7 deviceImplForLinkDevice:a1[4]];

    v10 = _TVRCRapportQueryLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      *v35 = v9;
      _os_log_impl(&dword_26CF7F000, v10, OS_LOG_TYPE_DEFAULT, "Attempting to remove device impl: %{public}@", buf, 0xCu);
    }

    if (!v9 || ([v9 deviceWrapper], v11 = objc_claimAutoreleasedReturnValue(), v12 = v11 == 0, v11, v12))
    {
      v18 = _TVRCRapportQueryLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        __38__TVRCRapportDeviceQuery__deviceLost___block_invoke_cold_2(v8, v4, v18);
      }
    }

    else
    {
      v13 = [*v8 flags];
      v14 = [v9 isPaired];
      v15 = _TVRCRapportQueryLog();
      v16 = v13 & 1;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109376;
        *v35 = v16;
        *&v35[4] = 1024;
        *&v35[6] = v14;
        _os_log_impl(&dword_26CF7F000, v15, OS_LOG_TYPE_DEFAULT, "isUnAuthDeviceRemoved:%d isCurrentDeviceAuthenticated:%d", buf, 0xEu);
      }

      if ((v16 & v14) == 1)
      {
        v17 = _TVRCRapportQueryLog();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_26CF7F000, v17, OS_LOG_TYPE_DEFAULT, "Ignoring unauth device removal that is lost because we are now using authenticated device", buf, 2u);
        }
      }

      else
      {
        if ([v9 connectionState])
        {
          v19 = _TVRCRapportQueryLog();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            __38__TVRCRapportDeviceQuery__deviceLost___block_invoke_cold_1(v9, v19);
          }

          v20 = [v9 deviceWrapper];
          v21 = TVRCMakeError(103, 0);
          [v20 disconnectWithError:v21];
        }

        v28 = MEMORY[0x277D85DD0];
        v29 = 3221225472;
        v30 = __38__TVRCRapportDeviceQuery__deviceLost___block_invoke_89;
        v31 = &unk_279D82FD0;
        objc_copyWeak(&v33, a1 + 6);
        v32 = v9;
        dispatch_async(MEMORY[0x277D85CD0], &v28);
        v22 = _TVRCRapportQueryLog();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v23 = *v8;
          v24 = [*v4 deviceManager];
          v25 = [v24 deviceImplMap];
          *buf = 138543618;
          *v35 = v23;
          *&v35[8] = 2112;
          v36 = v25;
          _os_log_impl(&dword_26CF7F000, v22, OS_LOG_TYPE_DEFAULT, "Removing %{public}@ from dictionary: %@", buf, 0x16u);
        }

        v26 = [*v4 deviceManager];
        [v26 removeDeviceImplForLinkDevice:*v8];

        objc_destroyWeak(&v33);
      }
    }
  }

  v27 = *MEMORY[0x277D85DE8];
}

void __38__TVRCRapportDeviceQuery__deviceLost___block_invoke_89(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = [WeakRetained delegate];
    [v3 removedDevice:*(a1 + 32)];

    WeakRetained = v4;
  }
}

- (void)_removeAllDevices
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = _TVRCRapportQueryLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v10 = "[TVRCRapportDeviceQuery _removeAllDevices]";
    _os_log_impl(&dword_26CF7F000, v3, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__TVRCRapportDeviceQuery__removeAllDevices__block_invoke;
  block[3] = &unk_279D826E8;
  objc_copyWeak(&v8, buf);
  dispatch_async(MEMORY[0x277D85CD0], block);
  v4 = [(TVRCRapportDeviceQuery *)self deviceManager];
  v5 = [v4 deviceImplMap];
  [v5 removeAllObjects];

  objc_destroyWeak(&v8);
  objc_destroyWeak(buf);
  v6 = *MEMORY[0x277D85DE8];
}

void __43__TVRCRapportDeviceQuery__removeAllDevices__block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v3 = [WeakRetained deviceManager];
    v4 = [v3 deviceImplMap];
    v5 = [v4 allValues];

    v6 = [v5 countByEnumeratingWithState:&v14 objects:v20 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v14 + 1) + 8 * i);
          v11 = _TVRCRapportQueryLog();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v19 = v10;
            _os_log_impl(&dword_26CF7F000, v11, OS_LOG_TYPE_DEFAULT, "Informing delegate to remove device=%{public}@", buf, 0xCu);
          }

          v12 = [v2 delegate];
          [v12 removedDevice:v10];
        }

        v7 = [v5 countByEnumeratingWithState:&v14 objects:v20 count:16];
      }

      while (v7);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (BOOL)_shouldReportDevice:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 model];
  v5 = [v4 containsString:@"AppleTV"];

  v6 = [v3 statusFlags] & 0x800;
  if (!v5 || !v6)
  {
    v11 = _TVRCRapportQueryLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v14 = 67109634;
      *v15 = v5;
      *&v15[4] = 1024;
      *&v15[6] = v6 >> 11;
      v16 = 2112;
      v17 = v3;
      _os_log_debug_impl(&dword_26CF7F000, v11, OS_LOG_TYPE_DEBUG, "Device will not be shown because isAppleTV=%d, supportsRemote=%d for device:%@", &v14, 0x18u);
    }

    goto LABEL_9;
  }

  v7 = +[TVRXManagedConfigManager sharedInstance];
  v8 = [v3 name];
  v9 = [v7 allowedDeviceWithName:v8];

  if ((v9 & 1) == 0)
  {
    v11 = _TVRCRapportQueryLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138543362;
      *v15 = v3;
      _os_log_impl(&dword_26CF7F000, v11, OS_LOG_TYPE_DEFAULT, "Device will not be shown because it's now allowed by MDM! %{public}@", &v14, 0xCu);
    }

LABEL_9:

    v10 = 0;
    goto LABEL_10;
  }

  v10 = 1;
LABEL_10:

  v12 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)_disconnectAndRemoveDevice:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 deviceWrapper];

  if (v5)
  {
    v6 = [(TVRCRapportDeviceQuery *)self deviceManager];
    v7 = [v4 deviceWrapper];
    v8 = [v7 device];
    [v6 removeDeviceImplForLinkDevice:v8];

    v9 = _TVRCRapportQueryLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v4 deviceWrapper];
      *buf = 138543362;
      v16 = v10;
      _os_log_impl(&dword_26CF7F000, v9, OS_LOG_TYPE_DEFAULT, "Telling device to disconnect, device=%{public}@", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __53__TVRCRapportDeviceQuery__disconnectAndRemoveDevice___block_invoke;
    v12[3] = &unk_279D82FD0;
    objc_copyWeak(&v14, buf);
    v13 = v4;
    dispatch_async(MEMORY[0x277D85CD0], v12);

    objc_destroyWeak(&v14);
    objc_destroyWeak(buf);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __53__TVRCRapportDeviceQuery__disconnectAndRemoveDevice___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = [WeakRetained delegate];
    [v3 removedDevice:*(a1 + 32)];

    WeakRetained = v4;
  }
}

- (void)_mdmConfigChanged:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = _TVRCRapportQueryLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_26CF7F000, v4, OS_LOG_TYPE_DEFAULT, "MDM config changed. Disconnecting non-approved devices.", buf, 2u);
  }

  v5 = +[TVRXManagedConfigManager sharedInstance];
  v6 = [v5 isManagedConfigProfileInstalled];

  if (v6)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v7 = [(TVRCRapportDeviceQuery *)self deviceManager];
    v8 = [v7 deviceImplMap];
    v9 = [v8 allValues];

    v10 = [v9 countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v20;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v20 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v19 + 1) + 8 * i);
          v15 = [v14 deviceWrapper];
          v16 = [v15 device];
          v17 = [(TVRCRapportDeviceQuery *)self _shouldReportDevice:v16];

          if (!v17)
          {
            [(TVRCRapportDeviceQuery *)self _disconnectAndRemoveDevice:v14];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v11);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (TVRCServiceDeviceQueryDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __31__TVRCRapportDeviceQuery_start__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 134218242;
  v4 = a1;
  v5 = 2114;
  v6 = a1;
  _os_log_debug_impl(&dword_26CF7F000, a2, OS_LOG_TYPE_DEBUG, "Device found, device<%p> %{public}@", &v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

void __31__TVRCRapportDeviceQuery_start__block_invoke_69_cold_1(uint64_t a1, void *a2, NSObject *a3)
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = [a2 deviceWrapper];
  OUTLINED_FUNCTION_0_3();
  _os_log_debug_impl(&dword_26CF7F000, a3, OS_LOG_TYPE_DEBUG, "Device changed, device=%{public}@, wrapper=%@", v6, 0x16u);

  v5 = *MEMORY[0x277D85DE8];
}

void __31__TVRCRapportDeviceQuery_start__block_invoke_77_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_26CF7F000, a2, OS_LOG_TYPE_ERROR, "Rapport discovery companionLinkClient failed to activate. Error - %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __38__TVRCRapportDeviceQuery__deviceLost___block_invoke_cold_1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = TVRCDeviceConnectionStateDescription([a1 connectionState]);
  v5 = 138543362;
  v6 = v3;
  _os_log_error_impl(&dword_26CF7F000, a2, OS_LOG_TYPE_ERROR, "Device was %{public}@ while lost, sending TVRCErrorCodeDeviceNotFoundError", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

void __38__TVRCRapportDeviceQuery__deviceLost___block_invoke_cold_2(id *a1, id *a2, NSObject *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = [*a1 identifier];
  v6 = [*a2 deviceManager];
  v7 = [v6 deviceImplMap];
  v9 = 138543618;
  v10 = v5;
  v11 = 2114;
  v12 = v7;
  _os_log_error_impl(&dword_26CF7F000, a3, OS_LOG_TYPE_ERROR, "No deviceWrapper found for device id:%{public}@ in mapping %{public}@", &v9, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

@end