@interface WFSettingsController
- (WFSettingsController)initWithDetailsContext:(id)a3;
- (WFSettingsController)initWithDetailsContext:(id)a3 appearanceProxy:(id)a4;
- (void)_applySetupAppearances;
- (void)_currentNetworkDidChange:(id)a3;
- (void)_ipStateDidChange:(id)a3;
- (void)_refreshSettingsConfig:(id)a3;
- (void)_startMontoringIPChanges;
- (void)_stopMonitoringIPChanges;
- (void)dealloc;
- (void)networkSettingsViewController:(id)a3 saveConfig:(id)a4 errorHandler:(id)a5;
@end

@implementation WFSettingsController

- (WFSettingsController)initWithDetailsContext:(id)a3
{
  v4 = MEMORY[0x277D7B980];
  v5 = a3;
  v6 = [v4 defaultAppearanceProxy];
  v7 = [(WFSettingsController *)self initWithDetailsContext:v5 appearanceProxy:v6];

  return v7;
}

- (WFSettingsController)initWithDetailsContext:(id)a3 appearanceProxy:(id)a4
{
  v39 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v35.receiver = self;
  v35.super_class = WFSettingsController;
  v9 = [(WFSettingsController *)&v35 init];
  v10 = v9;
  if (!v9)
  {
    goto LABEL_24;
  }

  if (!v7)
  {
    [WFSettingsController initWithDetailsContext:buf appearanceProxy:?];
LABEL_23:

LABEL_24:
    v10 = 0;
    goto LABEL_19;
  }

  objc_storeStrong(&v9->_detailsContext, a3);
  objc_storeStrong(&v10->_appearanceProxy, a4);
  [(WFAppearanceProxy *)v10->_appearanceProxy apply];
  v11 = [(WFDetailsContext *)v10->_detailsContext network];

  if (!v11)
  {
    [WFSettingsController initWithDetailsContext:buf appearanceProxy:?];
    goto LABEL_23;
  }

  v12 = [(WFDetailsContext *)v10->_detailsContext network];
  network = v10->_network;
  v10->_network = v12;

  v14 = WFLogForCategory(0);
  v15 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v14)
  {
    v16 = v14;
    if (os_log_type_enabled(v16, v15))
    {
      v17 = [(WFDetailsContext *)v10->_detailsContext profile];
      *buf = 136315394;
      *&buf[4] = "[WFSettingsController initWithDetailsContext:appearanceProxy:]";
      v37 = 2112;
      v38 = v17;
      _os_log_impl(&dword_273ECD000, v16, v15, "%s: provided profile %@", buf, 0x16u);
    }
  }

  v18 = objc_alloc_init(MEMORY[0x277CCABD8]);
  queue = v10->_queue;
  v10->_queue = v18;

  v20 = v10->_queue;
  if (!v20)
  {
    goto LABEL_24;
  }

  [(NSOperationQueue *)v20 setName:@"WFSettingsController Queue"];
  [(NSOperationQueue *)v10->_queue setMaxConcurrentOperationCount:1];
  [(NSOperationQueue *)v10->_queue setQualityOfService:-1];
  v10->_cloudSyncRunning = WiFiCloudSyncEngineIsRunning() != 0;
  v21 = WFLogForCategory(0);
  v22 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v21 && os_log_type_enabled(v21, v22))
  {
    cloudSyncRunning = v10->_cloudSyncRunning;
    *buf = 136315394;
    *&buf[4] = "[WFSettingsController initWithDetailsContext:appearanceProxy:]";
    v37 = 1024;
    LODWORD(v38) = cloudSyncRunning;
    _os_log_impl(&dword_273ECD000, v21, v22, "%s: cloudSyncRunning %d", buf, 0x12u);
  }

  v24 = [(WFDetailsContext *)v10->_detailsContext ipMonitor];
  ipMonitor = v10->_ipMonitor;
  v10->_ipMonitor = v24;

  if (!v10->_ipMonitor)
  {
    [WFSettingsController initWithDetailsContext:buf appearanceProxy:?];
    goto LABEL_23;
  }

  v10->_currentNetwork = [(WFDetailsContext *)v10->_detailsContext isCurrent];
  v26 = [(WFSettingsController *)v10 _baseConfigForNetwork:v10->_network current:[(WFDetailsContext *)v10->_detailsContext isCurrent]];
  config = v10->_config;
  v10->_config = v26;

  if (!v10->_config)
  {
    goto LABEL_24;
  }

  [(WFSettingsController *)v10 _refreshSettingsConfig:?];
  v28 = [v7 hardwareMACAddress];
  hardwareMACAddress = v10->_hardwareMACAddress;
  v10->_hardwareMACAddress = v28;

  v30 = [objc_alloc(MEMORY[0x277D7B9E8]) initWithConfig:v10->_config detailsContext:v10->_detailsContext hardwareMACAddress:v10->_hardwareMACAddress appearanceProxy:v10->_appearanceProxy];
  settingsViewController = v10->_settingsViewController;
  v10->_settingsViewController = v30;

  [(WFNetworkSettingsViewController *)v10->_settingsViewController setDeviceCapability:WFCurrentDeviceCapability()];
  [(WFNetworkSettingsViewController *)v10->_settingsViewController setDataCoordinator:v10];
  if (!v10->_settingsViewController)
  {
    goto LABEL_24;
  }

  v32 = [MEMORY[0x277CCAB98] defaultCenter];
  [v32 addObserver:v10 selector:sel__currentNetworkDidChange_ name:@"WFInterfaceNetworkChangedNotification" object:0];

  if ([(WFDetailsContext *)v10->_detailsContext isCurrent])
  {
    [(WFSettingsController *)v10 _startMontoringIPChanges];
  }

LABEL_19:

  v33 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:@"WFInterfaceNetworkChangedNotification" object:0];

  [(WFSettingsController *)self _stopMonitoringIPChanges];
  [(NSOperationQueue *)self->_queue cancelAllOperations];
  v4.receiver = self;
  v4.super_class = WFSettingsController;
  [(WFSettingsController *)&v4 dealloc];
}

- (void)_currentNetworkDidChange:(id)a3
{
  v4 = [a3 userInfo];
  v11 = [v4 objectForKeyedSubscript:@"WFInterfaceNetworkKey"];

  v5 = [(WFSettingsController *)self detailsContext];
  v6 = [v5 network];
  v7 = [v6 isEquivalentRecord:v11];

  if (v7 != [(WFSettingsController *)self isCurrentNetwork])
  {
    self->_currentNetwork = v7;
    v8 = [(WFSettingsController *)self network];
    v9 = [(WFSettingsController *)self _baseConfigForNetwork:v8 current:v11 != 0];

    [(WFSettingsController *)self _refreshSettingsConfig:v9];
    monitorIPChanges = self->_monitorIPChanges;
    if (self->_currentNetwork)
    {
      if (!self->_monitorIPChanges)
      {
        [(WFSettingsController *)self _startMontoringIPChanges];
LABEL_7:

        goto LABEL_8;
      }
    }

    else if (!self->_monitorIPChanges)
    {
      goto LABEL_7;
    }

    [(WFSettingsController *)self _stopMonitoringIPChanges];
    goto LABEL_7;
  }

LABEL_8:
}

- (void)_stopMonitoringIPChanges
{
  if (self->_monitorIPChanges)
  {
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    [v3 removeObserver:self name:@"WFIPMonitorStateChangedNotification" object:0];

    self->_monitorIPChanges = 0;
  }
}

- (void)_startMontoringIPChanges
{
  if (!self->_monitorIPChanges)
  {
    self->_monitorIPChanges = 1;
    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    v4 = [(WFSettingsController *)self ipMonitor];
    [v5 addObserver:self selector:sel__ipStateDidChange_ name:@"WFIPMonitorStateChangedNotification" object:v4];
  }
}

- (void)_ipStateDidChange:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = WFLogForCategory(0);
  v6 = OSLogForWFLogLevel(4uLL);
  if (WFCurrentLogLevel() >= 4 && v5)
  {
    v7 = v5;
    if (os_log_type_enabled(v7, v6))
    {
      v8 = [v4 userInfo];
      v12 = 136315394;
      v13 = "[WFSettingsController _ipStateDidChange:]";
      v14 = 2112;
      v15 = v8;
      _os_log_impl(&dword_273ECD000, v7, v6, "%s- %@", &v12, 0x16u);
    }
  }

  if ([(WFSettingsController *)self isCurrentNetwork])
  {
    v9 = [(WFSettingsController *)self network];
    v10 = [(WFSettingsController *)self _baseConfigForNetwork:v9 current:[(WFSettingsController *)self isCurrentNetwork]];

    [(WFSettingsController *)self _refreshSettingsConfig:v10];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_refreshSettingsConfig:(id)a3
{
  v4 = a3;
  v5 = [(WFSettingsController *)self detailsContext];
  v6 = [v5 interface];
  v7 = [v6 interfaceName];

  v8 = [WFGetSettingsOperation alloc];
  v9 = [(WFSettingsController *)self network];
  v10 = [v9 ssid];
  v11 = [(WFGetSettingsOperation *)v8 initWithSSID:v10 interfaceName:v7];

  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x3032000000;
  v26[3] = __Block_byref_object_copy__10;
  v26[4] = __Block_byref_object_dispose__10;
  v12 = v11;
  v27 = v12;
  v13 = [v4 copy];
  objc_initWeak(&location, self);
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __47__WFSettingsController__refreshSettingsConfig___block_invoke;
  v19 = &unk_279EBE660;
  v23 = v26;
  objc_copyWeak(&v24, &location);
  v20 = v13;
  v21 = self;
  v14 = v20;
  v22 = v14;
  [(WFGetSettingsOperation *)v12 setCompletionBlock:&v16];
  v15 = [(WFSettingsController *)self queue:v16];
  [v15 addOperation:v12];

  objc_destroyWeak(&v24);
  objc_destroyWeak(&location);

  _Block_object_dispose(v26, 8);
}

void __47__WFSettingsController__refreshSettingsConfig___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__WFSettingsController__refreshSettingsConfig___block_invoke_2;
  block[3] = &unk_279EBE660;
  v9 = *(a1 + 56);
  objc_copyWeak(&v10, (a1 + 64));
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = v2;
  v7 = v3;
  v8 = v4;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v10);
}

void __47__WFSettingsController__refreshSettingsConfig___block_invoke_2(uint64_t a1)
{
  v193 = *MEMORY[0x277D85DE8];
  v2 = a1 + 56;
  v177 = [*(*(*(a1 + 56) + 8) + 40) settings];
  v3 = *(*v2 + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;

  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v178 = [WeakRetained ipMonitor];
  v5 = [WeakRetained isCurrentNetwork];
  v6 = [v177 ipv4Settings];
  v175 = v6;
  v7 = v6 != 0;
  if (v6)
  {
    v8 = [v6 method];
  }

  else
  {
    v8 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = 3;
  }

  else
  {
    v9 = v8;
  }

  if (((v8 == 0x7FFFFFFFFFFFFFFFLL) & v5) == 1)
  {
    v9 = [v178 ipv4ConfigMethod];
  }

  v173 = v7;
  if (v9 <= 3)
  {
    if (v9 != 1 && v9 != 3)
    {
      goto LABEL_94;
    }

    goto LABEL_15;
  }

  if (v9 == 4)
  {
    [*(a1 + 32) setIpv4Config:2];
    v49 = WFLogForCategory(0);
    v50 = OSLogForWFLogLevel(4uLL);
    if (WFCurrentLogLevel() >= 4 && v49)
    {
      v51 = v49;
      if (os_log_type_enabled(v51, v50))
      {
        *buf = 0;
        _os_log_impl(&dword_273ECD000, v51, v50, "IPv4 config is manual", buf, 2u);
      }
    }

    if (v175)
    {
      v52 = [v175 addresses];

      if (v52)
      {
        v53 = [v175 addresses];
        v18 = [v53 firstObject];
      }

      else
      {
        v18 = 0;
      }

      v56 = [v175 subnetMasks];

      if (v56)
      {
        v57 = [v175 subnetMasks];
        v33 = [v57 firstObject];
      }

      else
      {
        v33 = 0;
      }

      v58 = [v175 router];
    }

    else
    {
      if (!v5)
      {
        v33 = 0;
        v26 = 0;
        v18 = 0;
        goto LABEL_85;
      }

      v54 = [v178 ipv4Addresses];

      if (v54)
      {
        v55 = [v178 ipv4Addresses];
        v18 = [v55 firstObject];
      }

      else
      {
        v18 = 0;
      }

      v59 = [v178 ipv4SubnetMasks];

      if (v59)
      {
        v60 = [v178 ipv4SubnetMasks];
        v33 = [v60 firstObject];
      }

      else
      {
        v33 = 0;
      }

      v58 = [v178 ipv4Router];
    }

    v26 = v58;
LABEL_85:
    v61 = WFLogForCategory(0);
    v62 = OSLogForWFLogLevel(4uLL);
    if (WFCurrentLogLevel() >= 4 && v61)
    {
      v63 = v61;
      if (os_log_type_enabled(v63, v62))
      {
        v64 = @"Setup:";
        *buf = 138413058;
        if (v175)
        {
          v64 = @"Custom:";
        }

        v188 = v64;
        v189 = 2112;
        v190 = v18;
        v191 = 2112;
        *v192 = v26;
        *&v192[8] = 2112;
        *&v192[10] = v33;
        _os_log_impl(&dword_273ECD000, v63, v62, "IPv4 (%@) Manual address %@, router %@, subnet mask: %@", buf, 0x2Au);
      }
    }

    [*(a1 + 32) setIpv4AddressManual:v18];
    [*(a1 + 32) setIpv4RouterAddressManual:v26];
    [*(a1 + 32) setIpv4SubnetMaskManual:v33];
    goto LABEL_93;
  }

  if (v9 != 5)
  {
    goto LABEL_94;
  }

LABEL_15:
  [*(a1 + 32) setIpv4Config:v9 == 5];
  if (v9 == 5 || ![WeakRetained isCurrentNetwork])
  {
    v13 = WFLogForCategory(0);
    v14 = OSLogForWFLogLevel(4uLL);
    if (WFCurrentLogLevel() >= 4 && v13)
    {
      v15 = v13;
      if (os_log_type_enabled(v15, v14))
      {
        *buf = 0;
        _os_log_impl(&dword_273ECD000, v15, v14, "IPv4 config is BootP", buf, 2u);
      }
    }
  }

  else
  {
    v10 = WFLogForCategory(0);
    v11 = OSLogForWFLogLevel(4uLL);
    if (WFCurrentLogLevel() >= 4 && v10)
    {
      v12 = v10;
      if (os_log_type_enabled(v12, v11))
      {
        *buf = 0;
        _os_log_impl(&dword_273ECD000, v12, v11, "IPv4 config is automatic/DHCP", buf, 2u);
      }
    }

    [*(a1 + 32) setCanRenewLease:1];
  }

  if (v5)
  {
    v16 = [*(a1 + 40) detailsContext];
    v17 = [v16 interface];
    v18 = [v17 IPv4Addresses];

    if (v18)
    {
      v19 = [v18 firstObject];
      [*(a1 + 32) setIpv4Address:v19];

      v20 = WFLogForCategory(0);
      v21 = OSLogForWFLogLevel(4uLL);
      if (WFCurrentLogLevel() >= 4 && v20)
      {
        v22 = v20;
        if (os_log_type_enabled(v22, v21))
        {
          v23 = [*(a1 + 32) ipv4Address];
          *buf = 138412290;
          v188 = v23;
          _os_log_impl(&dword_273ECD000, v22, v21, "IPv4 Address %@", buf, 0xCu);
        }
      }
    }

    v24 = [*(a1 + 40) detailsContext];
    v25 = [v24 interface];
    v26 = [v25 IPv4RouterAddress];

    if (v26)
    {
      [*(a1 + 32) setIpv4RouterAddress:v26];
      v27 = WFLogForCategory(0);
      v28 = OSLogForWFLogLevel(4uLL);
      if (WFCurrentLogLevel() >= 4 && v27)
      {
        v29 = v27;
        if (os_log_type_enabled(v29, v28))
        {
          v30 = [*(a1 + 32) ipv4RouterAddress];
          *buf = 138412290;
          v188 = v30;
          _os_log_impl(&dword_273ECD000, v29, v28, "IPv4 Router %@", buf, 0xCu);
        }
      }
    }

    v31 = [*(a1 + 40) detailsContext];
    v32 = [v31 interface];
    v33 = [v32 IPv4SubnetMasks];

    if (v33)
    {
      v34 = [v33 firstObject];
      [*(a1 + 32) setIpv4SubnetMask:v34];

      v35 = WFLogForCategory(0);
      v36 = OSLogForWFLogLevel(4uLL);
      if (WFCurrentLogLevel() >= 4 && v35)
      {
        v37 = v35;
        if (os_log_type_enabled(v37, v36))
        {
          v38 = [*(a1 + 32) ipv4SubnetMask];
          *buf = 138412290;
          v188 = v38;
          _os_log_impl(&dword_273ECD000, v37, v36, "IPv4 Subnet Mask %@", buf, 0xCu);
        }
      }
    }

    v39 = v9 == 5;
    v40 = [v178 ipv4DHCPClientID];
    if (!v40)
    {
      v39 = 1;
    }

    if (!v39)
    {
      v41 = [v178 ipv4DHCPClientID];
      [*(a1 + 32) setDhcpClientID:v41];

      v42 = WFLogForCategory(0);
      v43 = OSLogForWFLogLevel(4uLL);
      if (WFCurrentLogLevel() >= 4 && v42)
      {
        v44 = v42;
        if (os_log_type_enabled(v44, v43))
        {
          v45 = [*(a1 + 32) dhcpClientID];
          *buf = 138412290;
          v188 = v45;
          _os_log_impl(&dword_273ECD000, v44, v43, "IPv4 DHCP Client ID %@", buf, 0xCu);
        }
      }
    }

    v46 = [*(a1 + 40) network];
    v47 = [v46 carPlayType] == 2;

    if (v47)
    {
      v48 = [v178 DHCPLeaseExpirationDate];
      [*(a1 + 32) setDhcpLeaseExpirationDate:v48];
    }

LABEL_93:
  }

LABEL_94:
  v65 = [v177 ipv6Settings];
  v174 = v65;
  if (v65)
  {
    v66 = [v65 method];
  }

  else
  {
    v66 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (v66 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v67 = v5;
  }

  else
  {
    v67 = 0;
  }

  if (v67 == 1)
  {
    v66 = [v178 ipv6ConfigMethod];
  }

  else if (!v5)
  {
    goto LABEL_155;
  }

  if (!v66)
  {
    goto LABEL_155;
  }

  v68 = +[WFMetricsManager sharedManager];
  v69 = [WFUserEvent eventWithType:9];
  [v68 processEvent:v69];

  switch(v66)
  {
    case 3:
      [*(a1 + 32) setIpv6Config:1];
      v77 = WFLogForCategory(0);
      v78 = OSLogForWFLogLevel(4uLL);
      if (WFCurrentLogLevel() >= 4 && v77)
      {
        v79 = v77;
        if (os_log_type_enabled(v79, v78))
        {
          *buf = 0;
          _os_log_impl(&dword_273ECD000, v79, v78, "IPv6 config is manual", buf, 2u);
        }
      }

      if (!v174)
      {
        goto LABEL_136;
      }

      v80 = [v174 addresses];

      if (v80)
      {
        v81 = [v174 addresses];
        v82 = [v81 firstObject];
        [*(a1 + 32) setIpv6AddressManual:v82];
      }

      v83 = [v174 router];

      if (v83)
      {
        v84 = [v174 router];
        [*(a1 + 32) setIpv6RouterAddressManual:v84];
      }

      v85 = [v174 prefixLengths];

      if (!v85)
      {
        goto LABEL_136;
      }

      v70 = [v174 prefixLengths];
      v72 = [v70 firstObject];
      [*(a1 + 32) setIpv6PrefixLengthManual:v72];
      goto LABEL_134;
    case 2:
      [*(a1 + 32) setIpv6Config:2];
      v70 = WFLogForCategory(0);
      v71 = OSLogForWFLogLevel(4uLL);
      if (WFCurrentLogLevel() < 4 || !v70)
      {
        goto LABEL_135;
      }

      v72 = v70;
      if (!os_log_type_enabled(v72, v71))
      {
        goto LABEL_133;
      }

      *buf = 0;
      v73 = "IPv6 config is link local";
      break;
    case 1:
      [*(a1 + 32) setIpv6Config:0];
      v70 = WFLogForCategory(0);
      v71 = OSLogForWFLogLevel(4uLL);
      if (WFCurrentLogLevel() < 4 || !v70)
      {
        goto LABEL_135;
      }

      v72 = v70;
      if (!os_log_type_enabled(v72, v71))
      {
        goto LABEL_133;
      }

      *buf = 0;
      v73 = "IPv6 config is automatic";
      break;
    default:
      v70 = WFLogForCategory(0);
      v86 = OSLogForWFLogLevel(1uLL);
      if (!WFCurrentLogLevel() || !v70)
      {
        goto LABEL_135;
      }

      v72 = v70;
      if (!os_log_type_enabled(v72, v86))
      {
        goto LABEL_133;
      }

      v87 = [v178 ipv6ConfigMethod];
      *buf = 134349056;
      v188 = v87;
      v73 = "Unknown IPv6 configuration method %{public}lu";
      v74 = v72;
      v75 = v86;
      v76 = 12;
      goto LABEL_132;
  }

  v74 = v72;
  v75 = v71;
  v76 = 2;
LABEL_132:
  _os_log_impl(&dword_273ECD000, v74, v75, v73, buf, v76);
LABEL_133:
  v70 = v72;
LABEL_134:

LABEL_135:
LABEL_136:
  v88 = [v178 ipv6Addresses];
  if (v88)
  {
  }

  else
  {
    v89 = [v178 ipv6Router];
    v90 = v89 == 0;

    if (v90)
    {
      goto LABEL_155;
    }
  }

  v91 = [v178 ipv6Addresses];
  [*(a1 + 32) setIpv6Addresses:v91];

  v92 = [v178 ipv6PrefixLengths];
  [*(a1 + 32) setIpv6PrefixLengths:v92];

  v93 = [v178 ipv6Router];
  [*(a1 + 32) setIpv6RouterAddress:v93];

  v94 = WFLogForCategory(0);
  v95 = OSLogForWFLogLevel(4uLL);
  if (WFCurrentLogLevel() >= 4 && v94)
  {
    v96 = v94;
    if (os_log_type_enabled(v96, v95))
    {
      v97 = [*(a1 + 32) ipv6Addresses];
      *buf = 138412290;
      v188 = v97;
      _os_log_impl(&dword_273ECD000, v96, v95, "IPv6 addresses %@", buf, 0xCu);
    }
  }

  v98 = WFLogForCategory(0);
  v99 = OSLogForWFLogLevel(4uLL);
  if (WFCurrentLogLevel() >= 4 && v98)
  {
    v100 = v98;
    if (os_log_type_enabled(v100, v99))
    {
      v101 = [*(a1 + 32) ipv6PrefixLengths];
      *buf = 138412290;
      v188 = v101;
      _os_log_impl(&dword_273ECD000, v100, v99, "IPv6 prefix lengths %@", buf, 0xCu);
    }
  }

  v102 = WFLogForCategory(0);
  v103 = OSLogForWFLogLevel(4uLL);
  if (WFCurrentLogLevel() >= 4 && v102)
  {
    v104 = v102;
    if (os_log_type_enabled(v104, v103))
    {
      v105 = [*(a1 + 32) ipv6RouterAddress];
      *buf = 138412290;
      v188 = v105;
      _os_log_impl(&dword_273ECD000, v104, v103, "IPv6 router address %@", buf, 0xCu);
    }
  }

LABEL_155:
  v106 = [v177 dnsSettings];
  v107 = v106;
  if (v106)
  {
    v108 = [v106 searchDomains];

    if (v108)
    {
      v172 = [v107 searchDomains];
    }

    else
    {
      v172 = 0;
    }

    v117 = [v107 serverAddresses];

    if (v117)
    {
      v171 = [v107 serverAddresses];
    }

    else
    {
      v171 = 0;
    }

    v109 = 1;
    v173 = 1;
    goto LABEL_182;
  }

  if (!v5)
  {
    v109 = 0;
    v171 = 0;
    v172 = 0;
    goto LABEL_182;
  }

  LODWORD(v109) = [v178 isUsingCustomDNSSettings];
  v110 = [v178 dnsSearchDomains];
  v111 = [v178 dnsDomainName];
  v112 = v111;
  if (v110)
  {
    v113 = v110;

    v114 = WFLogForCategory(0);
    v115 = OSLogForWFLogLevel(4uLL);
    if (WFCurrentLogLevel() < 4 || !v114)
    {
      goto LABEL_177;
    }

    v114 = v114;
    if (!os_log_type_enabled(v114, v115))
    {
LABEL_176:

LABEL_177:
      goto LABEL_178;
    }

    *buf = 138412290;
    v188 = v113;
    v116 = "Using dnsSearchDomains (%@) for dns info";
LABEL_175:
    _os_log_impl(&dword_273ECD000, v114, v115, v116, buf, 0xCu);
    goto LABEL_176;
  }

  if (v111)
  {
    v186 = v111;
    v113 = [MEMORY[0x277CBEA60] arrayWithObjects:&v186 count:1];
    v114 = WFLogForCategory(0);
    v115 = OSLogForWFLogLevel(4uLL);
    if (WFCurrentLogLevel() < 4 || !v114)
    {
      goto LABEL_177;
    }

    v114 = v114;
    if (!os_log_type_enabled(v114, v115))
    {
      goto LABEL_176;
    }

    *buf = 138412290;
    v188 = v112;
    v116 = "Using dnsDomainName (%@) for dns info";
    goto LABEL_175;
  }

LABEL_178:
  v118 = [v178 dnsServerAddresses];

  if (v118)
  {
    v171 = [v178 dnsServerAddresses];
  }

  else
  {
    v171 = 0;
  }

  v172 = 0;
  v109 = v109;
LABEL_182:
  v119 = WFLogForCategory(0);
  v120 = OSLogForWFLogLevel(4uLL);
  if (WFCurrentLogLevel() >= 4 && v119)
  {
    v121 = v119;
    if (os_log_type_enabled(v121, v120))
    {
      v122 = [*(a1 + 32) dnsConfig];
      v123 = @"Manual";
      if (!v122)
      {
        v123 = @"Automatic";
      }

      *buf = 138412290;
      v188 = v123;
      _os_log_impl(&dword_273ECD000, v121, v120, "DNS config is %@", buf, 0xCu);
    }
  }

  [*(a1 + 32) setDnsConfig:v109];
  v124 = WFLogForCategory(0);
  v125 = OSLogForWFLogLevel(4uLL);
  if (WFCurrentLogLevel() >= 4 && v124)
  {
    v126 = v124;
    if (os_log_type_enabled(v126, v125))
    {
      v127 = [*(a1 + 32) dnsSearchDomains];
      *buf = 138412290;
      v188 = v127;
      _os_log_impl(&dword_273ECD000, v126, v125, "DNS search domains %@", buf, 0xCu);
    }
  }

  [*(a1 + 32) setDnsSearchDomains:v172];
  v128 = WFLogForCategory(0);
  v129 = OSLogForWFLogLevel(4uLL);
  if (WFCurrentLogLevel() >= 4 && v128)
  {
    v130 = v128;
    if (os_log_type_enabled(v130, v129))
    {
      v131 = [*(a1 + 32) dnsServerAddresses];
      *buf = 138412290;
      v188 = v131;
      _os_log_impl(&dword_273ECD000, v130, v129, "DNS server addresses %@", buf, 0xCu);
    }
  }

  [*(a1 + 32) setDnsServerAddresses:v171];
  v132 = [v177 proxySettings];
  v133 = v132;
  if (!v132)
  {
    if (!v5 || ![v178 isUsingCustomProxySetting])
    {
      goto LABEL_215;
    }

    v169 = [v178 httpProxyAutoConfigured];
    if (v169)
    {
      v170 = [v178 httpProxyAutoConfigURL];
      v140 = WFLogForCategory(0);
      v141 = OSLogForWFLogLevel(4uLL);
      if (WFCurrentLogLevel() >= 4 && v140)
      {
        v140 = v140;
        if (os_log_type_enabled(v140, v141))
        {
          *buf = 0;
          v134 = 2;
          _os_log_impl(&dword_273ECD000, v140, v141, "Using automatic HTTP proxy settings", buf, 2u);
        }

        else
        {
          v134 = 2;
        }

LABEL_234:

        goto LABEL_235;
      }

      v134 = 2;
    }

    else
    {
      v140 = WFLogForCategory(0);
      v151 = OSLogForWFLogLevel(4uLL);
      v170 = 0;
      if (WFCurrentLogLevel() >= 4 && v140)
      {
        v140 = v140;
        if (os_log_type_enabled(v140, v151))
        {
          *buf = 0;
          _os_log_impl(&dword_273ECD000, v140, v151, "Using manual HTTP proxy settings", buf, 2u);
        }

        v170 = 0;
        v134 = 1;
        goto LABEL_234;
      }

      v134 = 1;
    }

LABEL_235:

    v152 = [v178 httpProxyServer];

    if (v152)
    {
      v135 = [v178 httpProxyServer];
    }

    else
    {
      v135 = 0;
    }

    v153 = [v178 httpProxyPort];
    v154 = v153 == 0;

    if (v154)
    {
      v155 = [v178 httpProxyPort];
      v136 = [v155 stringValue];
    }

    else
    {
      v136 = 0;
    }

    if ([v178 httpProxyIsAuthenticated])
    {
      v137 = [v178 httpProxyIsAuthenticated];
    }

    else
    {
      v137 = 0;
    }

    v138 = [v178 httpProxyUsername];

    if (v138)
    {
      v138 = [v178 httpProxyUsername];
    }

    v156 = WFLogForCategory(0);
    type = OSLogForWFLogLevel(4uLL);
    if (WFCurrentLogLevel() >= 4 && v156)
    {
      v157 = v156;
      if (os_log_type_enabled(v157, type))
      {
        v158 = [*(a1 + 32) httpProxyAuthenticationRequired];
        *buf = 138413058;
        v188 = v135;
        v189 = 2112;
        v190 = v136;
        v191 = 1024;
        *v192 = v158;
        *&v192[4] = 2112;
        *&v192[6] = v138;
        _os_log_impl(&dword_273ECD000, v157, type, "HTTP proxy server %@ port %@ authenticated %d username %@", buf, 0x26u);
      }
    }

    if ((v137 & (v169 ^ 1)) == 1)
    {
      v159 = WFLogForCategory(0);
      v160 = OSLogForWFLogLevel(4uLL);
      if (WFCurrentLogLevel() >= 4 && v159)
      {
        v161 = v159;
        if (os_log_type_enabled(v161, v160))
        {
          *buf = 0;
          _os_log_impl(&dword_273ECD000, v161, v160, "Fetching HTTP proxy password from keychain", buf, 2u);
        }
      }

      v162 = [WFProxyKeychainOperation getPasswordOperationForHost:v135 port:v136 username:v138];
      if (v162)
      {
        objc_initWeak(buf, v162);
        v179[0] = MEMORY[0x277D85DD0];
        v179[1] = 3221225472;
        v179[2] = __47__WFSettingsController__refreshSettingsConfig___block_invoke_31;
        v179[3] = &unk_279EBE638;
        objc_copyWeak(&v184, buf);
        objc_copyWeak(&v185, (a1 + 64));
        v180 = *(a1 + 48);
        v181 = v135;
        v182 = v136;
        v183 = v138;
        [v162 setCompletionBlock:v179];
        v163 = objc_loadWeakRetained((a1 + 64));
        v164 = [v163 queue];
        [v164 addOperation:v162];

        objc_destroyWeak(&v185);
        objc_destroyWeak(&v184);
        objc_destroyWeak(buf);
      }

      else
      {
        v165 = WFLogForCategory(0);
        v166 = OSLogForWFLogLevel(1uLL);
        if (WFCurrentLogLevel() && v165)
        {
          v167 = v165;
          if (os_log_type_enabled(v167, v166))
          {
            *buf = 138412802;
            v188 = v135;
            v189 = 2112;
            v190 = v136;
            v191 = 2112;
            *v192 = v138;
            _os_log_impl(&dword_273ECD000, v167, v166, "Failed to create WFProxyKeychainOperation for host: %@ port: %@ username: %@", buf, 0x20u);
          }
        }
      }

      v139 = 0;
      v134 = 1;
      v137 = 1;
    }

    else
    {
      v139 = 0;
    }

LABEL_205:
    [*(a1 + 32) setHttpProxyConfig:v134];
    [*(a1 + 32) setHttpProxyServerAddress:v135];
    [*(a1 + 32) setHttpProxyServerPort:v136];
    [*(a1 + 32) setHttpProxyAuthenticationRequired:v137];
    [*(a1 + 32) setHttpProxyUsername:v138];
    [*(a1 + 32) setHttpProxyPassword:v139];
    [*(a1 + 32) setHttpProxyConfigPAC:v170];
    if (!v173)
    {
      goto LABEL_223;
    }

    goto LABEL_216;
  }

  if ([v132 customProxy])
  {
    if ([v133 isAutomatic])
    {
      v134 = 2;
    }

    else
    {
      v134 = 1;
    }

    v135 = [v133 server];
    v136 = [v133 port];
    v137 = [v133 authenticated];
    v138 = [v133 username];
    v139 = [v133 password];
    v170 = [v133 autoConfigureURL];
    v173 = 1;
    goto LABEL_205;
  }

  LOBYTE(v173) = 1;
LABEL_215:
  [*(a1 + 32) setHttpProxyConfig:0];
  [*(a1 + 32) setHttpProxyServerAddress:0];
  [*(a1 + 32) setHttpProxyServerPort:0];
  [*(a1 + 32) setHttpProxyAuthenticationRequired:0];
  [*(a1 + 32) setHttpProxyUsername:0];
  [*(a1 + 32) setHttpProxyPassword:0];
  [*(a1 + 32) setHttpProxyConfigPAC:0];
  v139 = 0;
  v170 = 0;
  v138 = 0;
  v136 = 0;
  v135 = 0;
  if ((v173 & 1) == 0)
  {
    goto LABEL_223;
  }

LABEL_216:
  if ([*(a1 + 40) cloudSyncRunning])
  {
    v142 = WFLogForCategory(0);
    v143 = OSLogForWFLogLevel(3uLL);
    if (WFCurrentLogLevel() >= 3 && v142)
    {
      v144 = v142;
      if (os_log_type_enabled(v144, v143))
      {
        *buf = 136315138;
        v188 = "[WFSettingsController _refreshSettingsConfig:]_block_invoke";
        _os_log_impl(&dword_273ECD000, v144, v143, "%s: network has custom settings and is not cloud syncable", buf, 0xCu);
      }
    }

    v145 = [WeakRetained config];
    [v145 setCloudSyncable:0];
  }

LABEL_223:
  v146 = *(a1 + 32);
  v147 = [WeakRetained config];
  LOBYTE(v146) = [v146 isEqual:v147];

  if ((v146 & 1) == 0)
  {
    [WeakRetained setConfig:*(a1 + 32)];
    v148 = [WeakRetained settingsViewController];
    [v148 refreshConfig:*(a1 + 32)];

    v149 = [MEMORY[0x277CCAB98] defaultCenter];
    [v149 postNotificationName:@"WFSettingsControllerDidRefreshConfigNotificationName" object:*(a1 + 40)];
  }

  v150 = *MEMORY[0x277D85DE8];
}

void __47__WFSettingsController__refreshSettingsConfig___block_invoke_31(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = [WeakRetained error];
  if (v3)
  {

LABEL_3:
    v4 = objc_loadWeakRetained((a1 + 64));
    v5 = [v4 error];

    if (v5)
    {
      v6 = WFLogForCategory(0);
      v7 = OSLogForWFLogLevel(1uLL);
      if (WFCurrentLogLevel() && v6)
      {
        v8 = v6;
        if (os_log_type_enabled(v8, v7))
        {
          v9 = objc_loadWeakRetained((a1 + 64));
          v10 = [v9 error];
          *buf = 138543362;
          v26 = v10;
          _os_log_impl(&dword_273ECD000, v8, v7, "WFProxyKeychainOperation errro %{public}@", buf, 0xCu);
        }
      }
    }

    v11 = WFLogForCategory(0);
    v12 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v11 && os_log_type_enabled(v11, v12))
    {
      v13 = *(a1 + 40);
      v14 = *(a1 + 48);
      v15 = *(a1 + 56);
      *buf = 138412802;
      v26 = v13;
      v27 = 2112;
      v28 = v14;
      v29 = 2112;
      v30 = v15;
      _os_log_impl(&dword_273ECD000, v11, v12, "Failed to get password for host: %@ port: %@ username: %@", buf, 0x20u);
    }

    goto LABEL_21;
  }

  v16 = objc_loadWeakRetained((a1 + 64));
  v17 = [v16 password];

  if (!v17)
  {
    goto LABEL_3;
  }

  v18 = WFLogForCategory(0);
  v19 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v18 && os_log_type_enabled(v18, v19))
  {
    *buf = 0;
    _os_log_impl(&dword_273ECD000, v18, v19, "Successfully fetched HTTP proxy password from keychain, updating config", buf, 2u);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__WFSettingsController__refreshSettingsConfig___block_invoke_32;
  block[3] = &unk_279EBD3A8;
  objc_copyWeak(&v23, (a1 + 72));
  objc_copyWeak(&v24, (a1 + 64));
  v22 = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v24);
  objc_destroyWeak(&v23);
LABEL_21:
  v20 = *MEMORY[0x277D85DE8];
}

void __47__WFSettingsController__refreshSettingsConfig___block_invoke_32(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained config];
  v4 = [v3 httpProxyPassword];
  v5 = objc_loadWeakRetained((a1 + 48));
  v6 = [v5 password];
  v7 = [v4 isEqualToString:v6];

  if ((v7 & 1) == 0)
  {
    v8 = objc_loadWeakRetained((a1 + 48));
    v9 = [v8 password];
    v10 = objc_loadWeakRetained((a1 + 40));
    v11 = [v10 config];
    [v11 setHttpProxyPassword:v9];

    v13 = objc_loadWeakRetained((a1 + 40));
    v12 = [v13 settingsViewController];
    [v12 refreshConfig:*(a1 + 32)];
  }
}

- (void)networkSettingsViewController:(id)a3 saveConfig:(id)a4 errorHandler:(id)a5
{
  v181 = *MEMORY[0x277D85DE8];
  v148 = a3;
  v165 = a4;
  v157 = a5;
  val = self;
  v8 = [(WFSettingsController *)self config];
  v149 = [v8 changesBetweenConfig:v165];

  if ([v149 count])
  {
    v158 = [MEMORY[0x277CBEB18] array];
    v171 = 0u;
    v172 = 0u;
    v169 = 0u;
    v170 = 0u;
    obj = v149;
    v163 = [obj countByEnumeratingWithState:&v169 objects:v177 count:16];
    if (v163)
    {
      v166 = 0;
      v161 = *MEMORY[0x277D7BA20];
      v162 = *v170;
      v159 = *MEMORY[0x277D7BA28];
      v156 = *MEMORY[0x277D7BA18];
      v154 = *MEMORY[0x277D7BA30];
      v155 = vdupq_n_s64(2uLL);
      v153 = vdupq_n_s64(5uLL);
LABEL_4:
      v9 = 0;
      while (1)
      {
        if (*v170 != v162)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v169 + 1) + 8 * v9);
        if ([v10 isEqualToString:v161])
        {
          break;
        }

        if ([v10 isEqualToString:v159])
        {
          v11 = [obj objectForKey:v10];
          v21 = WFLogForCategory(0);
          v22 = OSLogForWFLogLevel(4uLL);
          if (WFCurrentLogLevel() >= 4 && v21 && os_log_type_enabled(v21, v22))
          {
            *buf = 138412290;
            *v179 = v11;
            _os_log_impl(&dword_273ECD000, v21, v22, "IPv6 changes: %@", buf, 0xCu);
          }

          if (([v165 validIPv6Configuration] & 1) == 0)
          {
            v23 = WFLogForCategory(0);
            v46 = OSLogForWFLogLevel(3uLL);
            if (WFCurrentLogLevel() >= 3 && v23 && os_log_type_enabled(v23, v46))
            {
              *buf = 138412290;
              *v179 = v11;
              _os_log_impl(&dword_273ECD000, v23, v46, "Disregarding ipv6 edits %@, invalid configuration", buf, 0xCu);
            }

            goto LABEL_165;
          }

          v23 = [v11 objectForKey:@"ipv6Config"];
          if (v23 || (v24 = [0 integerValue], v24 == -1))
          {
            v24 = [v165 ipv6Config];
          }

          switch(v24)
          {
            case 2:
              v59 = +[WFSettingsIPV6 linkLocalConfig];
              [v158 addObject:v59];
              break;
            case 1:
              v59 = [v165 ipv6AddressManual];
              v61 = [v11 objectForKey:@"ipv6AddressManual"];

              if (v61)
              {
                v62 = [v11 objectForKey:@"ipv6AddressManual"];

                v59 = v62;
              }

              v63 = [v165 ipv6PrefixLengthManual];
              v64 = [v11 objectForKey:@"ipv6PrefixLengthManual"];

              if (v64)
              {
                v65 = [v11 objectForKey:@"ipv6PrefixLengthManual"];

                v63 = v65;
              }

              v66 = [v165 ipv6RouterAddressManual];
              v67 = [v11 objectForKey:@"ipv6RouterAddressManual"];

              if (v67)
              {
                v68 = [v11 objectForKey:@"ipv6RouterAddressManual"];

                v66 = v68;
              }

              v69 = [WFSettingsIPV6 alloc];
              if (v59)
              {
                v174 = v59;
                v151 = [MEMORY[0x277CBEA60] arrayWithObjects:&v174 count:1];
                v70 = v151;
                if (v63)
                {
                  goto LABEL_93;
                }

LABEL_147:
                v72 = [(WFSettingsIPV6 *)v69 initWithMethod:3 addresses:v70 prefixLengths:0 router:v66];
                if (v59)
                {
                  goto LABEL_148;
                }
              }

              else
              {
                v70 = 0;
                if (!v63)
                {
                  goto LABEL_147;
                }

LABEL_93:
                v173 = v63;
                v71 = [MEMORY[0x277CBEA60] arrayWithObjects:&v173 count:1];
                v72 = [(WFSettingsIPV6 *)v69 initWithMethod:3 addresses:v70 prefixLengths:v71 router:v66];

                if (v59)
                {
LABEL_148:
                }
              }

              if (v72)
              {
                [v158 addObject:v72];
              }

              else
              {
                v98 = WFLogForCategory(0);
                v99 = OSLogForWFLogLevel(1uLL);
                if (WFCurrentLogLevel() && v98 && os_log_type_enabled(v98, v99))
                {
                  *buf = 138412290;
                  *v179 = v11;
                  _os_log_impl(&dword_273ECD000, v98, v99, "Failed to create WFSettingsIPV6 from ipv6Changes %@", buf, 0xCu);
                }
              }

              break;
            case 0:
              v59 = +[WFSettingsIPV6 automaticConfig];
              [v158 addObject:v59];
              break;
            default:
LABEL_158:
              v100 = [(WFSettingsController *)val config];
              v101 = [v100 ipv6Config];
              v102.i64[0] = v24;
              v102.i64[1] = v101;
              v103 = vdupq_n_s64(1uLL);
              v104 = vdupq_n_s64(2uLL);
              v105 = vcgtq_u64(v104, vaddq_s64(v102, v103));
              v106 = vceqq_s64(v102, v104);
              v107 = vbslq_s8(v105, vdupq_n_s64(3uLL), vbslq_s8(vceqq_s64(v102, v103), vdupq_n_s64(4uLL), vornq_s8(vandq_s8(v106, v153), v106)));
              v108 = v107.i64[1];
              v109 = v107.i64[0];
              if (v107.i64[0] == v107.i64[1])
              {
                v110 = WFLogForCategory(0);
                v111 = OSLogForWFLogLevel(4uLL);
                if (WFCurrentLogLevel() >= 4 && v110 && os_log_type_enabled(v110, v111))
                {
                  *buf = 67109376;
                  *v179 = v109;
                  *&v179[4] = 1024;
                  *&v179[6] = v109;
                  _os_log_impl(&dword_273ECD000, v110, v111, "Dropping IPv6 configure event as the types didn't change %d -> %d", buf, 0xEu);
                }
              }

              else
              {
                v110 = +[WFMetricsManager sharedManager];
                v112 = [WFUserConfigureEvent configureEventWithType:1 new:v109 old:v108];
                [v110 processEvent:v112];
              }

LABEL_165:
              goto LABEL_166;
          }

          goto LABEL_158;
        }

        if ([v10 isEqualToString:v156])
        {
          v11 = [obj objectForKey:v10];
          v25 = WFLogForCategory(0);
          v26 = OSLogForWFLogLevel(4uLL);
          if (WFCurrentLogLevel() >= 4 && v25 && os_log_type_enabled(v25, v26))
          {
            *buf = 138412290;
            *v179 = v11;
            _os_log_impl(&dword_273ECD000, v25, v26, "DNS changes: %@", buf, 0xCu);
          }

          v27 = [v165 dnsConfig];
          v28 = [v11 objectForKey:@"dnsConfig"];

          if (v28)
          {
            v29 = [v11 objectForKey:@"dnsConfig"];
            v27 = [v29 integerValue];
          }

          if (v27)
          {
            v30 = [v11 objectForKey:@"dnsServerAddresses"];
            if (!v30)
            {
              v30 = [v165 dnsServerAddresses];
            }

            v31 = [v11 objectForKey:@"dnsSearchDomains"];
            if (!v31)
            {
              v31 = [v165 dnsSearchDomains];
            }

            v32 = [[WFSettingsDNS alloc] initWithServerAddresses:v30 searchDomains:v31];
            if (v32)
            {
              [v158 addObject:v32];
            }

            else
            {
              v75 = WFLogForCategory(0);
              v76 = OSLogForWFLogLevel(1uLL);
              if (WFCurrentLogLevel() && v75 && os_log_type_enabled(v75, v76))
              {
                *buf = 138412290;
                *v179 = v11;
                _os_log_impl(&dword_273ECD000, v75, v76, "Failed to create WFSettingsDNS from dnsChanges %@", buf, 0xCu);
              }
            }

            v60 = 7;
          }

          else
          {
            v30 = +[WFSettingsDNS automaticConfig];
            [v158 addObject:v30];
            v60 = 6;
          }

          v77 = [(WFSettingsController *)val config];
          if ([v77 dnsConfig])
          {
            v78 = 7;
          }

          else
          {
            v78 = 6;
          }

          if (v60 == v78)
          {
            v79 = WFLogForCategory(0);
            v80 = OSLogForWFLogLevel(4uLL);
            if (WFCurrentLogLevel() >= 4 && v79 && os_log_type_enabled(v79, v80))
            {
              *buf = 67109376;
              *v179 = v60;
              *&v179[4] = 1024;
              *&v179[6] = v60;
              _os_log_impl(&dword_273ECD000, v79, v80, "Dropping DNS configure event as the types didn't change %d -> %d", buf, 0xEu);
            }
          }

          else
          {
            v79 = +[WFMetricsManager sharedManager];
            v81 = [WFUserConfigureEvent configureEventWithType:2 new:v60 old:v78];
            [v79 processEvent:v81];
          }

          goto LABEL_166;
        }

        if ([v10 isEqualToString:v154])
        {
          v11 = [obj objectForKey:v10];
          v36 = [v11 mutableCopy];
          v37 = [v36 allKeys];
          v38 = [v37 containsObject:@"httpProxyPassword"];

          if (v38)
          {
            [v36 setObject:@"<REDACTED>" forKey:@"httpProxyPassword"];
          }

          v39 = WFLogForCategory(0);
          v40 = OSLogForWFLogLevel(4uLL);
          if (WFCurrentLogLevel() >= 4 && v39 && os_log_type_enabled(v39, v40))
          {
            *buf = 138412290;
            *v179 = v36;
            _os_log_impl(&dword_273ECD000, v39, v40, "Proxy changes: %@", buf, 0xCu);
          }

          if (([v165 validProxyConfiguration] & 1) == 0)
          {
            v73 = WFLogForCategory(0);
            v74 = OSLogForWFLogLevel(3uLL);
            if (WFCurrentLogLevel() >= 3 && v73 && os_log_type_enabled(v73, v74))
            {
              *buf = 138412290;
              *v179 = v11;
              _os_log_impl(&dword_273ECD000, v73, v74, "Disregarding proxy edits %@, invalid configuration", buf, 0xCu);
            }

            goto LABEL_210;
          }

          v41 = [v11 objectForKey:@"httpProxyConfig"];

          if (!v41 || ([v11 objectForKey:@"httpProxyConfig"], v42 = objc_claimAutoreleasedReturnValue(), v43 = objc_msgSend(v42, "integerValue"), v42, v43 == -1))
          {
            v43 = [v165 httpProxyConfig];
          }

          switch(v43)
          {
            case 2:
              v44 = [v11 objectForKey:@"httpProxyConfigPAC"];
              if (![v44 length])
              {
                v116 = WFLogForCategory(0);
                v117 = OSLogForWFLogLevel(3uLL);
                if (WFCurrentLogLevel() >= 3 && v116 && os_log_type_enabled(v116, v117))
                {
                  *buf = 0;
                  _os_log_impl(&dword_273ECD000, v116, v117, "No httpProxyConfigPAC supplied, using auto discovery", buf, 2u);
                }
              }

              v118 = [[WFSettingsProxy alloc] initWithAutoConfigureURL:v44];
              [v158 addObject:v118];

              v45 = 9;
              break;
            case 1:
              v44 = [v11 objectForKey:@"httpProxyServerAddress"];
              if (!v44)
              {
                v44 = [v165 httpProxyServerAddress];
              }

              v150 = [v11 objectForKey:@"httpProxyServerPort"];
              if (!v150)
              {
                v150 = [v165 httpProxyServerPort];
              }

              v113 = [v11 objectForKey:@"httpProxyUsername"];
              if (!v113)
              {
                v113 = [v165 httpProxyUsername];
              }

              v114 = [v11 objectForKey:@"httpProxyPassword"];
              if (!v114)
              {
                v114 = [v165 httpProxyPassword];
              }

              if (![v44 length] || !objc_msgSend(v150, "length") || objc_msgSend(v165, "httpProxyAuthenticationRequired") && (!objc_msgSend(v113, "length") || !objc_msgSend(v114, "length")))
              {
                v145 = WFLogForCategory(0);
                v146 = OSLogForWFLogLevel(1uLL);
                if (WFCurrentLogLevel() && v145 && os_log_type_enabled(v145, v146))
                {
                  *buf = 0;
                  _os_log_impl(&dword_273ECD000, v145, v146, "Can't save proxy settings, missing fields", buf, 2u);
                }

                v133 = obj;
                goto LABEL_235;
              }

              v115 = [[WFSettingsProxy alloc] initWithManualServer:v44 port:v150 username:v113 password:v114];
              if (v158)
              {
                [v158 addObject:v115];
              }

              else
              {
                v119 = WFLogForCategory(0);
                v120 = OSLogForWFLogLevel(1uLL);
                if (WFCurrentLogLevel() && v119 && os_log_type_enabled(v119, v120))
                {
                  *buf = 138412290;
                  *v179 = v11;
                  _os_log_impl(&dword_273ECD000, v119, v120, "Failed to create WFSettingsProxy from proxyChanges %@", buf, 0xCu);
                }
              }

              v45 = 10;
              break;
            case 0:
              v44 = +[WFSettingsProxy offConfig];
              [v158 addObject:v44];
              v45 = 8;
              break;
            default:
              v45 = -1;
LABEL_200:
              v73 = [(WFSettingsController *)val config];
              v121 = [v73 httpProxyConfig];
              if (v121 > 2)
              {
                v122 = -1;
              }

              else
              {
                v122 = qword_273F75CC8[v121];
              }

              if (v45 == v122)
              {
                v123 = WFLogForCategory(0);
                v124 = OSLogForWFLogLevel(4uLL);
                if (WFCurrentLogLevel() >= 4 && v123 && os_log_type_enabled(v123, v124))
                {
                  *buf = 67109376;
                  *v179 = v45;
                  *&v179[4] = 1024;
                  *&v179[6] = v45;
                  _os_log_impl(&dword_273ECD000, v123, v124, "Dropping HTTP Proxy configure event as the types didn't change %d -> %d", buf, 0xEu);
                }
              }

              else
              {
                v123 = +[WFMetricsManager sharedManager];
                v125 = [WFUserConfigureEvent configureEventWithType:3 new:v45 old:v122];
                [v123 processEvent:v125];
              }

LABEL_210:
LABEL_166:
              v35 = v166;
LABEL_167:

              v166 = v35;
              goto LABEL_168;
          }

          goto LABEL_200;
        }

LABEL_168:
        if (v163 == ++v9)
        {
          v126 = [obj countByEnumeratingWithState:&v169 objects:v177 count:16];
          v163 = v126;
          if (v126)
          {
            goto LABEL_4;
          }

          goto LABEL_219;
        }
      }

      v11 = [obj objectForKey:v10];
      v12 = WFLogForCategory(0);
      v13 = OSLogForWFLogLevel(4uLL);
      if (WFCurrentLogLevel() >= 4 && v12 && os_log_type_enabled(v12, v13))
      {
        *buf = 138412290;
        *v179 = v11;
        _os_log_impl(&dword_273ECD000, v12, v13, "IPv4 changes: %@", buf, 0xCu);
      }

      if (([v165 validIPv4Configuration] & 1) == 0)
      {
        v33 = WFLogForCategory(0);
        v34 = OSLogForWFLogLevel(3uLL);
        if (WFCurrentLogLevel() >= 3 && v33 && os_log_type_enabled(v33, v34))
        {
          *buf = 138412290;
          *v179 = v11;
          _os_log_impl(&dword_273ECD000, v33, v34, "Disregarding ipv4 edits %@, invalid configuration", buf, 0xCu);
        }

        v35 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.wifikit.error" code:1 userInfo:v11];

        v157[2](v157, v35);
        goto LABEL_167;
      }

      v14 = [v11 objectForKey:@"ipv4Config"];
      v15 = v14;
      if (!v14 || (v16 = [v14 integerValue], v16 == -1))
      {
        v16 = [v165 ipv4Config];
      }

      if (v16 != 2)
      {
        if (v16 == 1)
        {
          v20 = +[WFSettingsIPV4 bootPConfig];
          if (!v20)
          {
            v82 = WFLogForCategory(0);
            v83 = OSLogForWFLogLevel(1uLL);
            if (WFCurrentLogLevel() && v82 && os_log_type_enabled(v82, v83))
            {
              *buf = 138412290;
              *v179 = v11;
              _os_log_impl(&dword_273ECD000, v82, v83, "Failed to create WFSettingsIPV4 from ipv4Changes %@", buf, 0xCu);
            }

            goto LABEL_133;
          }
        }

        else
        {
          if (v16)
          {
LABEL_134:
            v86 = [(WFSettingsController *)val config];
            v87 = [v86 ipv4Config];
            v88.i64[0] = v16;
            v88.i64[1] = v87;
            v89 = vdupq_n_s64(1uLL);
            v90 = vceqq_s64(v88, v89);
            v91 = vbicq_s8(vbslq_s8(vceqq_s64(v88, v155), v155, vornq_s8(vandq_s8(v90, v89), v90)), vcgtq_u64(v155, vaddq_s64(v88, v89)));
            v92 = v91.i64[1];
            v93 = v91.i64[0];
            if (v91.i64[0] == v91.i64[1])
            {
              v94 = WFLogForCategory(0);
              v95 = OSLogForWFLogLevel(4uLL);
              if (WFCurrentLogLevel() >= 4 && v94 && os_log_type_enabled(v94, v95))
              {
                *buf = 67109376;
                *v179 = v93;
                *&v179[4] = 1024;
                *&v179[6] = v93;
                _os_log_impl(&dword_273ECD000, v94, v95, "Dropping IPv4 configure event as the types didn't change %d -> %d", buf, 0xEu);
              }
            }

            else
            {
              v94 = +[WFMetricsManager sharedManager];
              if (v93 == 2)
              {
                v97 = [WFUserConfigureEvent configureEventWithType:2 new:2 old:v92];
                [v94 processEvent:v97];
              }

              else
              {
                if (v93 == 1)
                {
                  [WFUserConfigureEvent configureEventWithType:1 new:1 old:v92];
                }

                else
                {
                  [WFUserConfigureEvent configureEventWithType:0 new:v93 old:v92];
                }
                v96 = ;
                [v94 processEvent:v96];
              }
            }

            goto LABEL_166;
          }

          v17 = [v11 objectForKey:@"dhcpClientID"];

          if (v17)
          {
            v18 = [WFSettingsIPV4 alloc];
            v19 = [v11 objectForKey:@"dhcpClientID"];
            v20 = [(WFSettingsIPV4 *)v18 initWithMethod:1 addresses:0 subnetMasks:0 router:0 dhcpClientID:v19];
          }

          else
          {
            v20 = +[WFSettingsIPV4 automaticConfig];
          }
        }

        [v158 addObject:v20];
LABEL_133:

        goto LABEL_134;
      }

      v20 = [v165 ipv4AddressManual];
      v47 = [v11 objectForKey:@"ipv4AddressManual"];

      if (v47)
      {
        v48 = [v11 objectForKey:@"ipv4AddressManual"];

        v20 = v48;
      }

      v49 = [v165 ipv4SubnetMaskManual];
      v50 = [v11 objectForKey:@"ipv4SubnetMaskManual"];

      if (v50)
      {
        v51 = [v11 objectForKey:@"ipv4SubnetMaskManual"];

        v49 = v51;
      }

      v52 = [v165 ipv4RouterAddressManual];
      v53 = [v11 objectForKey:@"ipv4RouterAddressManual"];

      if (v53)
      {
        v54 = [v11 objectForKey:@"ipv4RouterAddressManual"];

        v52 = v54;
      }

      v55 = [WFSettingsIPV4 alloc];
      if (v20)
      {
        v176 = v20;
        v152 = [MEMORY[0x277CBEA60] arrayWithObjects:&v176 count:1];
        v56 = v152;
        if (v49)
        {
          goto LABEL_77;
        }
      }

      else
      {
        v56 = 0;
        if (v49)
        {
LABEL_77:
          v175 = v49;
          v57 = [MEMORY[0x277CBEA60] arrayWithObjects:&v175 count:1];
          v58 = [(WFSettingsIPV4 *)v55 initWithMethod:4 addresses:v56 subnetMasks:v57 router:v52 dhcpClientID:0];

          if (!v20)
          {
            goto LABEL_125;
          }

          goto LABEL_124;
        }
      }

      v58 = [(WFSettingsIPV4 *)v55 initWithMethod:4 addresses:v56 subnetMasks:0 router:v52 dhcpClientID:0];
      if (!v20)
      {
LABEL_125:
        if (v58)
        {
          [v158 addObject:v58];
        }

        else
        {
          v84 = WFLogForCategory(0);
          v85 = OSLogForWFLogLevel(1uLL);
          if (WFCurrentLogLevel() && v84 && os_log_type_enabled(v84, v85))
          {
            *buf = 138412290;
            *v179 = v11;
            _os_log_impl(&dword_273ECD000, v84, v85, "Failed to create WFSettingsIPV4 from ipv4Changes %@", buf, 0xCu);
          }
        }

        goto LABEL_133;
      }

LABEL_124:

      goto LABEL_125;
    }

    v166 = 0;
LABEL_219:

    if ([v158 count])
    {
      v131 = [(WFSettingsController *)val detailsContext];
      v132 = [v131 interface];
      v133 = [v132 interfaceName];

      v134 = [WFSaveSettingsOperation alloc];
      v135 = [(WFSettingsController *)val network];
      v136 = [v135 ssid];
      v137 = [(WFSaveSettingsOperation *)v134 initWithSSID:v136 interfaceName:v133 settings:v158];

      v138 = WFLogForCategory(0);
      v139 = OSLogForWFLogLevel(4uLL);
      if (WFCurrentLogLevel() >= 4 && v138)
      {
        v140 = v138;
        if (os_log_type_enabled(v140, v139))
        {
          v141 = [(WFSettingsController *)val network];
          v142 = [v141 ssid];
          *buf = 138412546;
          *v179 = v158;
          *&v179[8] = 2112;
          v180 = v142;
          _os_log_impl(&dword_273ECD000, v140, v139, "Saving new network settings %@ for %@", buf, 0x16u);
        }
      }

      [(WFSaveSettingsOperation *)v137 setCurrentNetwork:[(WFSettingsController *)val isCurrentNetwork]];
      objc_initWeak(buf, val);
      v167[0] = MEMORY[0x277D85DD0];
      v167[1] = 3221225472;
      v167[2] = __78__WFSettingsController_networkSettingsViewController_saveConfig_errorHandler___block_invoke;
      v167[3] = &unk_279EBCEA0;
      objc_copyWeak(&v168, buf);
      [(WFSaveSettingsOperation *)v137 setCompletionBlock:v167];
      v143 = [(WFSettingsController *)val queue];
      [v143 addOperation:v137];

      objc_destroyWeak(&v168);
      objc_destroyWeak(buf);
    }

    else
    {
      v133 = WFLogForCategory(0);
      v144 = OSLogForWFLogLevel(4uLL);
      if (WFCurrentLogLevel() >= 4 && v133 && os_log_type_enabled(v133, v144))
      {
        *buf = 0;
        _os_log_impl(&dword_273ECD000, v133, v144, "Bailing of saving, no setting changes to persist", buf, 2u);
      }
    }

LABEL_235:

    v129 = v158;
    goto LABEL_236;
  }

  v127 = WFLogForCategory(0);
  v128 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v127)
  {
    v129 = v127;
    if (os_log_type_enabled(v129, v128))
    {
      v130 = [(WFSettingsController *)val config];
      *buf = 138412546;
      *v179 = v130;
      *&v179[8] = 2112;
      v180 = v165;
      _os_log_impl(&dword_273ECD000, v129, v128, "No changes between configs (existing %@, new %@), nothing to do.", buf, 0x16u);
    }

    v166 = v129;
LABEL_236:

    v127 = v166;
  }

  v147 = *MEMORY[0x277D85DE8];
}

void __78__WFSettingsController_networkSettingsViewController_saveConfig_errorHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained config];
  [WeakRetained _refreshSettingsConfig:v1];
}

- (void)_applySetupAppearances
{
  v3 = [MEMORY[0x277D75B48] appearance];
  v2 = [MEMORY[0x277D75348] secondarySystemBackgroundColor];
  [v3 setBackgroundColor:v2];
}

- (void)initWithDetailsContext:(NSObject *)a1 appearanceProxy:.cold.1(NSObject **a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = WFLogForCategory(0);
  v3 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v2 && os_log_type_enabled(v2, v3))
  {
    OUTLINED_FUNCTION_4_1(&dword_273ECD000, v4, v5, "%s: ipmonitor is nil", v6, v7, v8, v9, 2u);
  }

  *a1 = v2;
  v10 = *MEMORY[0x277D85DE8];
}

- (void)initWithDetailsContext:(NSObject *)a1 appearanceProxy:.cold.2(NSObject **a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = WFLogForCategory(0);
  v3 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v2 && os_log_type_enabled(v2, v3))
  {
    OUTLINED_FUNCTION_4_1(&dword_273ECD000, v4, v5, "%s: network is nil", v6, v7, v8, v9, 2u);
  }

  *a1 = v2;
  v10 = *MEMORY[0x277D85DE8];
}

- (void)initWithDetailsContext:(NSObject *)a1 appearanceProxy:.cold.3(NSObject **a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = WFLogForCategory(0);
  v3 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v2 && os_log_type_enabled(v2, v3))
  {
    OUTLINED_FUNCTION_4_1(&dword_273ECD000, v4, v5, "%s: details context is nil", v6, v7, v8, v9, 2u);
  }

  *a1 = v2;
  v10 = *MEMORY[0x277D85DE8];
}

@end