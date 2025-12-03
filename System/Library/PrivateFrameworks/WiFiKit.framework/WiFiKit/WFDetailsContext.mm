@interface WFDetailsContext
- (BOOL)shouldHideCredentials;
- (NSString)description;
- (NSString)portalURL;
- (WFDetailsContext)initWithNetwork:(id)network profile:(id)profile ipMonitor:(id)monitor interface:(id)interface privateMACConfig:(id)config wifiModeConfig:(id)modeConfig;
- (WFDiagnosticsContext)diagnosticsContext;
- (WFNetworkView)provider;
- (unint64_t)networkOrigin;
- (void)cancel;
- (void)cancelNetworkQualityRun;
- (void)dealloc;
- (void)disableRandomMAC;
- (void)enableRandomMAC:(BOOL)c;
- (void)forget;
- (void)join;
- (void)manage;
- (void)openPortalURL;
- (void)openRecommendationLink;
- (void)overrideWiFiOutrank;
- (void)renewLease;
- (void)runNetworkQualityWithCompletionHandler:(id)handler;
- (void)setWiFiOutranked:(BOOL)outranked;
- (void)setWiFiOutrankedDev:(BOOL)dev;
- (void)setWifiMode:(int64_t)mode;
- (void)setWifiModeConfig:(id)config;
- (void)updatePrivateAddressMode:(unint64_t)mode;
@end

@implementation WFDetailsContext

- (WFDetailsContext)initWithNetwork:(id)network profile:(id)profile ipMonitor:(id)monitor interface:(id)interface privateMACConfig:(id)config wifiModeConfig:(id)modeConfig
{
  v137 = *MEMORY[0x277D85DE8];
  networkCopy = network;
  profileCopy = profile;
  obj = monitor;
  monitorCopy = monitor;
  interfaceCopy = interface;
  interfaceCopy2 = interface;
  configCopy = config;
  modeConfigCopy = modeConfig;
  v127.receiver = self;
  v127.super_class = WFDetailsContext;
  v17 = [(WFDetailsContext *)&v127 init];

  if (!v17)
  {
    goto LABEL_141;
  }

  if (!networkCopy)
  {
    [WFDetailsContext initWithNetwork:buf profile:? ipMonitor:? interface:? privateMACConfig:? wifiModeConfig:?];
LABEL_139:
    v117 = *buf;
    goto LABEL_140;
  }

  objc_storeStrong(&v17->_network, network);
  v125 = configCopy;
  if (profileCopy)
  {
    objc_storeStrong(&v17->_profile, profile);
    v17->_knownNetwork = 1;
    v19 = interfaceCopy2;
    v18 = monitorCopy;
    if ([profileCopy autoJoinConfigurable])
    {
      v20 = WFLogForCategory(0);
      v21 = OSLogForWFLogLevel(3uLL);
      if (WFCurrentLogLevel() >= 3 && v20)
      {
        v22 = v20;
        if (os_log_type_enabled(v22, v21))
        {
          ssid = [networkCopy ssid];
          *buf = 138412290;
          *&buf[4] = ssid;
          _os_log_impl(&dword_273ECD000, v22, v21, "'%@' is autoJoinConfigurable", buf, 0xCu);
        }
      }

      v17->_requestedFields |= 0x20uLL;
    }

    if ([profileCopy autoLoginConfigurable])
    {
      v24 = WFLogForCategory(0);
      v25 = OSLogForWFLogLevel(3uLL);
      if (WFCurrentLogLevel() >= 3 && v24)
      {
        v26 = v24;
        if (os_log_type_enabled(v26, v25))
        {
          ssid2 = [networkCopy ssid];
          *buf = 138412290;
          *&buf[4] = ssid2;
          _os_log_impl(&dword_273ECD000, v26, v25, "'%@' is autoLoginConfigurable", buf, 0xCu);
        }
      }

      v17->_requestedFields |= 0x40uLL;
    }

    if ([profileCopy saveDataModeConfigurable])
    {
      v28 = WFLogForCategory(0);
      v29 = OSLogForWFLogLevel(3uLL);
      if (WFCurrentLogLevel() >= 3 && v28)
      {
        v30 = v28;
        if (os_log_type_enabled(v30, v29))
        {
          ssid3 = [networkCopy ssid];
          *buf = 138412290;
          *&buf[4] = ssid3;
          _os_log_impl(&dword_273ECD000, v30, v29, "'%@' is saveDataModeConfigurable", buf, 0xCu);
        }
      }

      v17->_requestedFields |= 0x200uLL;
    }

    networkQualityVisible = [profileCopy networkQualityVisible];
    v33 = WFLogForCategory(0);
    v34 = OSLogForWFLogLevel(3uLL);
    v36 = WFCurrentLogLevel() > 2 && v33 != 0;
    if (networkQualityVisible)
    {
      if (v36)
      {
        networkQualityVisible = v33;
        if (os_log_type_enabled(networkQualityVisible, v34))
        {
          ssid4 = [networkCopy ssid];
          *buf = 138412290;
          *&buf[4] = ssid4;
          _os_log_impl(&dword_273ECD000, networkQualityVisible, v34, "NetQuality: '%@' is networkQualityVisible", buf, 0xCu);
        }
      }

      v17->_requestedFields |= 0x800uLL;
    }

    else
    {
      if (v36)
      {
        networkQualityVisible = v33;
        if (os_log_type_enabled(networkQualityVisible, v34))
        {
          ssid5 = [networkCopy ssid];
          *buf = 138412290;
          *&buf[4] = ssid5;
          _os_log_impl(&dword_273ECD000, networkQualityVisible, v34, "NetQuality: %@ is NOT networkQualityVisible", buf, 0xCu);
        }
      }
    }

    configCopy = v125;
    if ([profileCopy forgetable])
    {
      v42 = WFLogForCategory(0);
      networkQualityVisible = OSLogForWFLogLevel(3uLL);
      if (WFCurrentLogLevel() >= 3 && v42)
      {
        v43 = v42;
        if (os_log_type_enabled(v43, networkQualityVisible))
        {
          ssid6 = [networkCopy ssid];
          *buf = 138412290;
          *&buf[4] = ssid6;
          _os_log_impl(&dword_273ECD000, v43, networkQualityVisible, "'%@' is forgettable", buf, 0xCu);

          configCopy = v125;
        }
      }

      v17->_requestedFields |= 0x10uLL;
    }
  }

  else
  {
    v38 = WFLogForCategory(0);
    networkQualityVisible = OSLogForWFLogLevel(3uLL);
    v19 = interfaceCopy2;
    v18 = monitorCopy;
    if (WFCurrentLogLevel() >= 3 && v38)
    {
      v39 = v38;
      if (os_log_type_enabled(v39, networkQualityVisible))
      {
        ssid7 = [networkCopy ssid];
        *buf = 136315394;
        *&buf[4] = "[WFDetailsContext initWithNetwork:profile:ipMonitor:interface:privateMACConfig:wifiModeConfig:]";
        v129 = 2112;
        *v130 = ssid7;
        _os_log_impl(&dword_273ECD000, v39, networkQualityVisible, "%s: not a known network %@, nil profile", buf, 0x16u);

        configCopy = v125;
      }
    }

    v17->_knownNetwork = 0;
  }

  if (_os_feature_enabled_impl())
  {
    if ([profileCopy privateMACAddressModeConfigurationProfileSetting] == 1)
    {
      cInterface = [(WFInterface *)v17->_interface cInterface];
      isDeviceSupervised = [cInterface isDeviceSupervised];
      if ((isDeviceSupervised & 1) != 0 || ([(WFInterface *)v17->_interface cInterface], networkQualityVisible = objc_claimAutoreleasedReturnValue(), [networkQualityVisible isNetworkManagedByMDM:profileCopy]))
      {
        cInterface2 = [(WFInterface *)v17->_interface cInterface];
        isRandomMACAddressEnabled = [cInterface2 privateMACAddressModeForNetworkProfile:profileCopy] != 1;

        if (isDeviceSupervised)
        {
          goto LABEL_67;
        }
      }

      else
      {
        isRandomMACAddressEnabled = 1;
      }

LABEL_67:
      configCopy = v125;
      goto LABEL_68;
    }

    goto LABEL_64;
  }

  if (![networkCopy isPrivateMACDisabledByProfile] || !objc_msgSend(networkCopy, "isSupervised"))
  {
LABEL_64:
    isRandomMACAddressEnabled = 1;
    goto LABEL_68;
  }

  isRandomMACAddressEnabled = [networkCopy isRandomMACAddressEnabled];
LABEL_68:
  v17->_randomMACAddressConfigurable = isRandomMACAddressEnabled;
  isAutoJoinDisabled = [profileCopy isAutoJoinDisabled];
  v17->_autoJoinEnabled = isAutoJoinDisabled ^ 1;
  if (((isAutoJoinDisabled ^ 1) & 1) == 0)
  {
    hasDisabledUntilDate = [profileCopy hasDisabledUntilDate];

    if (hasDisabledUntilDate)
    {
      v51 = WFLogForCategory(0);
      v52 = OSLogForWFLogLevel(3uLL);
      if (WFCurrentLogLevel() >= 3 && v51)
      {
        v53 = v51;
        if (os_log_type_enabled(v53, v52))
        {
          sSID = [profileCopy SSID];
          hasDisabledUntilDate2 = [profileCopy hasDisabledUntilDate];
          *buf = 136315650;
          *&buf[4] = "[WFDetailsContext initWithNetwork:profile:ipMonitor:interface:privateMACConfig:wifiModeConfig:]";
          v129 = 2112;
          *v130 = sSID;
          *&v130[8] = 2112;
          v131 = hasDisabledUntilDate2;
          _os_log_impl(&dword_273ECD000, v53, v52, "%s: %@ autojoin temporarily disabled until %@, overriding UI switch to show enabled", buf, 0x20u);
        }

        configCopy = v125;
      }

      v17->_autoJoinEnabled = 1;
    }
  }

  v17->_autoLoginEnabled = [profileCopy bypassCaptive] ^ 1;
  if ([profileCopy lowDataMode] == 1)
  {
    v56 = 1;
  }

  else if ([profileCopy isPersonalHotspot])
  {
    v56 = [profileCopy lowDataMode] == 0;
  }

  else
  {
    v56 = 0;
  }

  v17->_isInSaveDataMode = v56;
  v17->_isPrivacyProxyEnabled = [profileCopy isPrivacyProxyEnabled];
  if (MEMORY[0x282239978])
  {
    v17->_greenTeaLogger = ct_green_tea_logger_create();
  }

  v57 = WFLogForCategory(0);
  v58 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v57)
  {
    v59 = v57;
    if (os_log_type_enabled(v59, v58))
    {
      hardwareMACAddress = [configCopy hardwareMACAddress];
      *buf = 138412290;
      *&buf[4] = hardwareMACAddress;
      _os_log_impl(&dword_273ECD000, v59, v58, "hardwareMAC is '%@'", buf, 0xCu);
    }
  }

  hardwareMACAddress2 = [configCopy hardwareMACAddress];
  formattedWiFiAddress = [hardwareMACAddress2 formattedWiFiAddress];
  hardwareMACAddress = v17->_hardwareMACAddress;
  v17->_hardwareMACAddress = formattedWiFiAddress;

  if (v17->_greenTeaLogger)
  {
    processInfo = [MEMORY[0x277CCAC38] processInfo];
    processName = [processInfo processName];

    greenTeaLogger = v17->_greenTeaLogger;
    v67 = getCTGreenTeaOsLogHandle();
    v68 = v67;
    if (v67)
    {
      v69 = v67;
      if (os_log_type_enabled(v69, OS_LOG_TYPE_INFO))
      {
        v70 = v17->_hardwareMACAddress;
        *buf = 138413058;
        *&buf[4] = processName;
        v129 = 2080;
        *v130 = "com.apple.wifikit";
        *&v130[8] = 2112;
        v131 = processName;
        *v132 = 2112;
        *&v132[2] = v70;
        _os_log_impl(&dword_273ECD000, v69, OS_LOG_TYPE_INFO, "<%@>[%s][%@]:WLAN hardware MAC address..%@", buf, 0x2Au);
      }
    }
  }

  randomMACAddress = [configCopy randomMACAddress];
  formattedWiFiAddress2 = [randomMACAddress formattedWiFiAddress];
  randomMACAddress = v17->_randomMACAddress;
  v17->_randomMACAddress = formattedWiFiAddress2;

  if (v17->_greenTeaLogger)
  {
    processInfo2 = [MEMORY[0x277CCAC38] processInfo];
    processName2 = [processInfo2 processName];

    v76 = v17->_greenTeaLogger;
    v77 = getCTGreenTeaOsLogHandle();
    v78 = v77;
    if (v77)
    {
      v79 = v77;
      if (os_log_type_enabled(v79, OS_LOG_TYPE_INFO))
      {
        v80 = v17->_randomMACAddress;
        *buf = 138413058;
        *&buf[4] = processName2;
        v129 = 2080;
        *v130 = "com.apple.wifikit";
        *&v130[8] = 2112;
        v131 = processName2;
        *v132 = 2112;
        *&v132[2] = v80;
        _os_log_impl(&dword_273ECD000, v79, OS_LOG_TYPE_INFO, "<%@>[%s][%@]:WLAN random MAC address..%@", buf, 0x2Au);
      }
    }
  }

  v17->_randomMACFeatureEnabled = [configCopy isPrivateAddressSupported];
  v81 = WFLogForCategory(0);
  v82 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v81)
  {
    v83 = v81;
    if (os_log_type_enabled(v83, v82))
    {
      isConnectedWithHardwareAddress = [configCopy isConnectedWithHardwareAddress];
      *buf = 67109120;
      *&buf[4] = isConnectedWithHardwareAddress;
      _os_log_impl(&dword_273ECD000, v83, v82, "Network connected with hardware Address: %d", buf, 8u);
    }
  }

  v17->_connectedWithHardwareAddress = [configCopy isConnectedWithHardwareAddress];
  if (v17->_randomMACFeatureEnabled)
  {
    v17->_requestedFields |= 0x400uLL;
  }

  privateAddressMode = [configCopy privateAddressMode];
  v17->_privateAddressMode = privateAddressMode;
  v17->_randomMACAddressDisabled = privateAddressMode != 2;
  v17->_randomMACSwitchOn = privateAddressMode == 2;
  v86 = WFLogForCategory(0);
  v87 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v86)
  {
    v88 = v86;
    if (os_log_type_enabled(v88, v87))
    {
      ssid8 = [networkCopy ssid];
      autoJoinEnabled = v17->_autoJoinEnabled;
      autoLoginEnabled = v17->_autoLoginEnabled;
      isInSaveDataMode = v17->_isInSaveDataMode;
      isPrivacyProxyEnabled = v17->_isPrivacyProxyEnabled;
      privateAddressMode = v17->_privateAddressMode;
      randomMACAddress2 = [networkCopy randomMACAddress];
      randomMACAddressConfigurable = v17->_randomMACAddressConfigurable;
      *buf = 138414082;
      *&buf[4] = ssid8;
      v129 = 1024;
      *v130 = autoJoinEnabled;
      *&v130[4] = 1024;
      *&v130[6] = autoLoginEnabled;
      LOWORD(v131) = 1024;
      *(&v131 + 2) = isInSaveDataMode;
      v19 = interfaceCopy2;
      v18 = monitorCopy;
      HIWORD(v131) = 1024;
      *v132 = isPrivacyProxyEnabled;
      *&v132[4] = 2048;
      *&v132[6] = privateAddressMode;
      v133 = 2112;
      v134 = randomMACAddress2;
      v135 = 1024;
      v136 = randomMACAddressConfigurable;
      _os_log_impl(&dword_273ECD000, v88, v87, "%@ - autoJoinEnabled=%d autoLoginEnabled=%d isInSaveDataMode=%d isPrivacyProxyEnabled=%d _privateAddressMode=%ld randomMAC='%@' _randomMACAddressConfigurable=%d", buf, 0x3Eu);
    }
  }

  if (!v18)
  {
    [WFDetailsContext initWithNetwork:buf profile:? ipMonitor:? interface:? privateMACConfig:? wifiModeConfig:?];
    v117 = *buf;
    configCopy = v125;
LABEL_140:

LABEL_141:
    v17 = 0;
    v19 = interfaceCopy2;
    v18 = monitorCopy;
    goto LABEL_135;
  }

  objc_storeStrong(&v17->_ipMonitor, obj);
  objc_storeStrong(&v17->_interface, interfaceCopy);
  configCopy = v125;
  if (!v19)
  {
    [WFDetailsContext initWithNetwork:buf profile:? ipMonitor:? interface:? privateMACConfig:? wifiModeConfig:?];
    goto LABEL_139;
  }

  v17->_supportsAirportManagement = 0;
  v17->_wifiModeConfigurable = [modeConfigCopy isWifiModeConfigurable];
  v17->_wifiMode = [modeConfigCopy wifiMode];
  mEMORY[0x277D29518] = [MEMORY[0x277D29518] sharedInstance];
  v17->_demoModeEnabled = [mEMORY[0x277D29518] isStoreDemoModeEnabled:0];

  if (v17->_demoModeEnabled)
  {
    v96 = WFLogForCategory(0);
    v97 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v96)
    {
      v98 = v96;
      if (os_log_type_enabled(v98, v97))
      {
        *buf = 136315138;
        *&buf[4] = "[WFDetailsContext initWithNetwork:profile:ipMonitor:interface:privateMACConfig:wifiModeConfig:]";
        _os_log_impl(&dword_273ECD000, v98, v97, "%s: demo mode enabled", buf, 0xCu);
      }
    }
  }

  credentialsTappedHandler = v17->_credentialsTappedHandler;
  v17->_credentialsTappedHandler = &__block_literal_global_3;

  v100 = [WFPortalContext alloc];
  captiveProfile = [profileCopy captiveProfile];
  scanResult = [networkCopy scanResult];
  venueURLList = [scanResult venueURLList];
  v104 = [(WFPortalContext *)v100 initWithCaptiveProfile:captiveProfile anqpVenueURLs:venueURLList];
  portalContext = v17->_portalContext;
  v17->_portalContext = v104;

  if (objc_opt_class())
  {
    mEMORY[0x277D243A0] = [MEMORY[0x277D243A0] shared];
    enabled = [mEMORY[0x277D243A0] enabled];
  }

  else
  {
    enabled = 0;
  }

  v108 = WFLogForCategory(0);
  v109 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v108)
  {
    v110 = v108;
    if (os_log_type_enabled(v110, v109))
    {
      v111 = "disabled";
      if (enabled)
      {
        v111 = "enabled";
      }

      *buf = 136315394;
      *&buf[4] = "[WFDetailsContext initWithNetwork:profile:ipMonitor:interface:privateMACConfig:wifiModeConfig:]";
      v129 = 2080;
      *v130 = v111;
      _os_log_impl(&dword_273ECD000, v110, v109, "%s: Lockdown mode is %s", buf, 0x16u);
    }
  }

  scanResult2 = [networkCopy scanResult];
  isAllowedInLockdownMode = [scanResult2 isAllowedInLockdownMode];

  v17->_autoJoinConfigurable = enabled && (isAllowedInLockdownMode & 1) == 0;
LABEL_135:
  v114 = v17;

  v115 = *MEMORY[0x277D85DE8];
  return v114;
}

void __96__WFDetailsContext_initWithNetwork_profile_ipMonitor_interface_privateMACConfig_wifiModeConfig___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2 == 1)
  {
    v2 = 12;
  }

  else
  {
    if (a2 != 2)
    {
      return;
    }

    v2 = 13;
  }

  v4 = +[WFMetricsManager sharedManager];
  v3 = [WFUserEvent eventWithType:v2];
  [v4 processEvent:v3];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  if (MEMORY[0x282239980])
  {
    greenTeaLogger = self->_greenTeaLogger;
    ct_green_tea_logger_destroy();
  }

  self->_greenTeaLogger = 0;
  v5.receiver = self;
  v5.super_class = WFDetailsContext;
  [(WFDetailsContext *)&v5 dealloc];
}

- (void)setWifiMode:(int64_t)mode
{
  wiFiModeChangedHandler = [(WFDetailsContext *)self WiFiModeChangedHandler];

  if (wiFiModeChangedHandler)
  {
    wiFiModeChangedHandler2 = [(WFDetailsContext *)self WiFiModeChangedHandler];
    wiFiModeChangedHandler2[2](wiFiModeChangedHandler2, mode);
  }

  self->_wifiMode = mode;
}

- (void)setWifiModeConfig:(id)config
{
  configCopy = config;
  self->_wifiModeConfigurable = [configCopy isWifiModeConfigurable];
  wifiMode = [configCopy wifiMode];

  self->_wifiMode = wifiMode;
}

- (void)setWiFiOutranked:(BOOL)outranked
{
  self->_WiFiOutranked = outranked;
  v3 = 4096;
  if (!outranked)
  {
    v3 = 0;
  }

  self->_requestedFields = self->_requestedFields & 0xFFFFFFFFFFFFEFFFLL | v3;
}

- (void)setWiFiOutrankedDev:(BOOL)dev
{
  v15 = *MEMORY[0x277D85DE8];
  self->_WiFiOutrankedDev = dev;
  v4 = 0x2000;
  if (!dev)
  {
    v4 = 0;
  }

  self->_requestedFields = self->_requestedFields & 0xFFFFFFFFFFFFDFFFLL | v4;
  v5 = WFLogForCategory(0);
  v6 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v5)
  {
    v7 = v5;
    if (os_log_type_enabled(v7, v6))
    {
      network = [(WFDetailsContext *)self network];
      ssid = [network ssid];
      v11 = 134218242;
      v12 = 0x2000;
      v13 = 2112;
      v14 = ssid;
      _os_log_impl(&dword_273ECD000, v7, v6, "setting WiFiOutrankedDev=%ld for %@", &v11, 0x16u);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)runNetworkQualityWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x2020000000;
  v16[3] = 0;
  v5 = objc_alloc_init(MEMORY[0x277D2C9A0]);
  ipMonitor = [(WFDetailsContext *)self ipMonitor];
  interfaceName = [ipMonitor interfaceName];
  [v5 setNetworkInterfaceName:interfaceName];

  v8 = objc_alloc(MEMORY[0x277D2C990]);
  v9 = objc_alloc_init(MEMORY[0x277D2C9A0]);
  v10 = [v8 initWithConfiguration:v9];
  [(WFDetailsContext *)self setNetworkQualityAssessment:v10];

  networkQualityAssessment = [(WFDetailsContext *)self networkQualityAssessment];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __59__WFDetailsContext_runNetworkQualityWithCompletionHandler___block_invoke;
  v13[3] = &unk_279EBDC68;
  v15 = v16;
  v13[4] = self;
  v12 = handlerCopy;
  v14 = v12;
  [networkQualityAssessment runWithCompletionHandler:v13];

  _Block_object_dispose(v16, 8);
}

void __59__WFDetailsContext_runNetworkQualityWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [v5 downlinkResponsiveness];
  v8 = [v7 value];

  if (v8)
  {
    v9 = [v5 downlinkResponsiveness];
    v10 = [v9 value];
    *(*(*(a1 + 48) + 8) + 24) = [v10 unsignedLongValue];

    v11 = WFLogForCategory(0);
    v12 = OSLogForWFLogLevel(3uLL);
    if (WFCurrentLogLevel() >= 3 && v11 && os_log_type_enabled(v11, v12))
    {
      v13 = *(*(*(a1 + 48) + 8) + 24);
      v20 = 136315394;
      v21 = "[WFDetailsContext runNetworkQualityWithCompletionHandler:]_block_invoke";
      v22 = 2048;
      v23 = v13;
      _os_log_impl(&dword_273ECD000, v11, v12, "NetQuality: %s: Got responsiveness %lu", &v20, 0x16u);
    }
  }

  v14 = WFLogForCategory(0);
  v15 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v14 && os_log_type_enabled(v14, v15))
  {
    v20 = 136315394;
    v21 = "[WFDetailsContext runNetworkQualityWithCompletionHandler:]_block_invoke";
    v22 = 2112;
    v23 = v6;
    _os_log_impl(&dword_273ECD000, v14, v15, "NetQuality: %s: Completed! Error: %@", &v20, 0x16u);
  }

  if (v6)
  {
    v16 = 0;
  }

  else
  {
    v16 = [MEMORY[0x277CBEAA8] now];
    v17 = [*(a1 + 32) networkQualityHandler];

    if (v17)
    {
      v18 = [*(a1 + 32) networkQualityHandler];
      (v18)[2](v18, v16, *(*(*(a1 + 48) + 8) + 24));
    }
  }

  [*(a1 + 32) setNetworkQualityAssessment:0];
  (*(*(a1 + 40) + 16))(*(*(*(a1 + 48) + 8) + 24));

  v19 = *MEMORY[0x277D85DE8];
}

- (void)cancelNetworkQualityRun
{
  networkQualityAssessment = [(WFDetailsContext *)self networkQualityAssessment];

  if (networkQualityAssessment)
  {
    networkQualityAssessment2 = [(WFDetailsContext *)self networkQualityAssessment];
    [networkQualityAssessment2 cancel];

    [(WFDetailsContext *)self setNetworkQualityAssessment:0];
  }
}

- (void)forget
{
  v3 = WFLogForCategory(0);
  v4 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v3 && os_log_type_enabled(v3, v4))
  {
    *v6 = 0;
    _os_log_impl(&dword_273ECD000, v3, v4, "User tapped forget in network details", v6, 2u);
  }

  actionHandler = [(WFDetailsContext *)self actionHandler];
  actionHandler[2](actionHandler, 0);
}

- (void)openRecommendationLink
{
  v3 = WFLogForCategory(0);
  v4 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v3 && os_log_type_enabled(v3, v4))
  {
    *v6 = 0;
    _os_log_impl(&dword_273ECD000, v3, v4, "User tapped recommendation link in network details", v6, 2u);
  }

  actionHandler = [(WFDetailsContext *)self actionHandler];
  actionHandler[2](actionHandler, 4);
}

- (void)renewLease
{
  v3 = WFLogForCategory(0);
  v4 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v3 && os_log_type_enabled(v3, v4))
  {
    *v6 = 0;
    _os_log_impl(&dword_273ECD000, v3, v4, "User tapped remew lease in network details", v6, 2u);
  }

  actionHandler = [(WFDetailsContext *)self actionHandler];
  actionHandler[2](actionHandler, 3);
}

- (void)join
{
  v3 = WFLogForCategory(0);
  v4 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v3 && os_log_type_enabled(v3, v4))
  {
    *v6 = 0;
    _os_log_impl(&dword_273ECD000, v3, v4, "User tapped join network in details", v6, 2u);
  }

  actionHandler = [(WFDetailsContext *)self actionHandler];
  actionHandler[2](actionHandler, 2);
}

- (void)manage
{
  v3 = WFLogForCategory(0);
  v4 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v3 && os_log_type_enabled(v3, v4))
  {
    *v6 = 0;
    _os_log_impl(&dword_273ECD000, v3, v4, "User tapped manage network in details", v6, 2u);
  }

  actionHandler = [(WFDetailsContext *)self actionHandler];
  actionHandler[2](actionHandler, 1);
}

- (void)disableRandomMAC
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = WFLogForCategory(0);
  v4 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v3)
  {
    v5 = v3;
    if (os_log_type_enabled(v5, v4))
    {
      network = [(WFDetailsContext *)self network];
      ssid = [network ssid];
      v11 = 138412290;
      v12 = ssid;
      _os_log_impl(&dword_273ECD000, v5, v4, "user disabled using random mac address for '%@'", &v11, 0xCu);
    }
  }

  privateMACHandler = [(WFDetailsContext *)self privateMACHandler];

  if (privateMACHandler)
  {
    privateMACHandler2 = [(WFDetailsContext *)self privateMACHandler];
    privateMACHandler2[2](privateMACHandler2, 3);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)enableRandomMAC:(BOOL)c
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = WFLogForCategory(0);
  v5 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v4)
  {
    v6 = v4;
    if (os_log_type_enabled(v6, v5))
    {
      network = [(WFDetailsContext *)self network];
      ssid = [network ssid];
      v12 = 138412290;
      v13 = ssid;
      _os_log_impl(&dword_273ECD000, v6, v5, "user enabled using random mac address for '%@'", &v12, 0xCu);
    }
  }

  privateMACHandler = [(WFDetailsContext *)self privateMACHandler];

  if (privateMACHandler)
  {
    privateMACHandler2 = [(WFDetailsContext *)self privateMACHandler];
    privateMACHandler2[2](privateMACHandler2, 2);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)updatePrivateAddressMode:(unint64_t)mode
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = WFLogForCategory(0);
  v6 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v5 && os_log_type_enabled(v5, v6))
  {
    v10 = 134217984;
    modeCopy = mode;
    _os_log_impl(&dword_273ECD000, v5, v6, "User tried to set private address mode to : %ld", &v10, 0xCu);
  }

  privateMACHandler = [(WFDetailsContext *)self privateMACHandler];

  if (privateMACHandler)
  {
    privateMACHandler2 = [(WFDetailsContext *)self privateMACHandler];
    privateMACHandler2[2](privateMACHandler2, mode);
  }

  [(WFDetailsContext *)self setPrivateAddressMode:mode];
  v9 = *MEMORY[0x277D85DE8];
}

- (BOOL)shouldHideCredentials
{
  v40 = *MEMORY[0x277D85DE8];
  profile = [(WFDetailsContext *)self profile];
  addReason = [profile addReason];

  profile2 = [(WFDetailsContext *)self profile];
  addReason2 = [profile2 addReason];

  v7 = WFLogForCategory(0);
  v8 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v7)
  {
    v9 = v7;
    if (os_log_type_enabled(v9, v8))
    {
      network = [(WFDetailsContext *)self network];
      ssid = [network ssid];
      network2 = [(WFDetailsContext *)self network];
      v20 = [network2 securityMode] == 0;
      network3 = [(WFDetailsContext *)self network];
      isSupervised = [network3 isSupervised];
      profile3 = [(WFDetailsContext *)self profile];
      *buf = 136316930;
      v25 = "[WFDetailsContext shouldHideCredentials]";
      v26 = 2112;
      v27 = ssid;
      v28 = 1024;
      v29 = v20;
      v30 = 1024;
      v31 = isSupervised;
      v32 = 1024;
      isProfileBased = [profile3 isProfileBased];
      v34 = 1024;
      v35 = addReason2 == 11;
      v36 = 1024;
      demoModeEnabled = [(WFDetailsContext *)self demoModeEnabled];
      v38 = 1024;
      v39 = addReason == 10;
      _os_log_impl(&dword_273ECD000, v9, v8, "%s: Network %@ is open:%d supervised:%d profile-based:%d shared:%d demo-mode-enabled:%d carrier-based:%d", buf, 0x3Au);
    }
  }

  network4 = [(WFDetailsContext *)self network];
  if ([network4 securityMode])
  {
    network5 = [(WFDetailsContext *)self network];
    if ([network5 isSupervised])
    {
      v15 = 1;
    }

    else
    {
      profile4 = [(WFDetailsContext *)self profile];
      v15 = 1;
      if (([profile4 isProfileBased] & 1) == 0 && addReason2 != 11)
      {
        demoModeEnabled2 = [(WFDetailsContext *)self demoModeEnabled];
        v15 = addReason == 10 || demoModeEnabled2;
      }
    }
  }

  else
  {
    v15 = 1;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v15;
}

- (WFDiagnosticsContext)diagnosticsContext
{
  diagnosticsContext = self->_diagnosticsContext;
  if (diagnosticsContext)
  {
    self->_diagnosticsContext = 0;
  }

  v4 = [WFNetworkProfile alloc];
  profile = [(WFDetailsContext *)self profile];
  v6 = [(WFNetworkProfile *)v4 initWithCoreWiFiProfile:profile];

  v7 = [WFDiagnosticsContext alloc];
  network = [(WFDetailsContext *)self network];
  v9 = [(WFDiagnosticsContext *)v7 initWithNetwork:network profile:v6 detailsContext:self];
  v10 = self->_diagnosticsContext;
  self->_diagnosticsContext = v9;

  v11 = self->_diagnosticsContext;
  v12 = v11;

  return v11;
}

- (void)cancel
{
  networkQualityAssessment = [(WFDetailsContext *)self networkQualityAssessment];

  if (networkQualityAssessment)
  {
    networkQualityAssessment2 = [(WFDetailsContext *)self networkQualityAssessment];
    [networkQualityAssessment2 cancel];

    [(WFDetailsContext *)self setNetworkQualityAssessment:0];
  }

  diagnosticsContext = self->_diagnosticsContext;
  self->_diagnosticsContext = 0;
}

- (void)overrideWiFiOutrank
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = WFLogForCategory(0);
  v4 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v3)
  {
    v5 = v3;
    if (os_log_type_enabled(v5, v4))
    {
      network = [(WFDetailsContext *)self network];
      ssid = [network ssid];
      v10 = 138412290;
      v11 = ssid;
      _os_log_impl(&dword_273ECD000, v5, v4, "User is overriding WiFi outrank for network='%@'", &v10, 0xCu);
    }
  }

  [(WFDetailsContext *)self setWiFiOutranked:0];
  actionHandler = [(WFDetailsContext *)self actionHandler];
  actionHandler[2](actionHandler, 5);

  v9 = *MEMORY[0x277D85DE8];
}

- (unint64_t)networkOrigin
{
  profile = [(WFDetailsContext *)self profile];
  addReason = [profile addReason];

  if (addReason == 10)
  {
    return 1;
  }

  else
  {
    return 2 * (addReason == 9);
  }
}

- (NSString)portalURL
{
  portalContext = [(WFDetailsContext *)self portalContext];
  portalHostnameForDisplay = [portalContext portalHostnameForDisplay];

  return portalHostnameForDisplay;
}

- (void)openPortalURL
{
  actionHandler = [(WFDetailsContext *)self actionHandler];
  actionHandler[2](actionHandler, 6);
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  network = [(WFDetailsContext *)self network];
  ssid = [network ssid];
  v8 = [v3 stringWithFormat:@"<%@: %p SSID: %@ Current: %d Known: %d Context: %ld>", v5, self, ssid, -[WFDetailsContext isCurrent](self, "isCurrent"), -[WFDetailsContext isKnownNetwork](self, "isKnownNetwork"), -[WFDetailsContext entryContext](self, "entryContext")];

  return v8;
}

- (WFNetworkView)provider
{
  WeakRetained = objc_loadWeakRetained(&self->_provider);

  return WeakRetained;
}

- (void)initWithNetwork:(NSObject *)a1 profile:ipMonitor:interface:privateMACConfig:wifiModeConfig:.cold.1(NSObject **a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = WFLogForCategory(0);
  v3 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v2 && os_log_type_enabled(v2, v3))
  {
    OUTLINED_FUNCTION_4_1(&dword_273ECD000, v4, v5, "%s: nil interface", v6, v7, v8, v9, 2u);
  }

  *a1 = v2;
  v10 = *MEMORY[0x277D85DE8];
}

- (void)initWithNetwork:(NSObject *)a1 profile:ipMonitor:interface:privateMACConfig:wifiModeConfig:.cold.2(NSObject **a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = WFLogForCategory(0);
  v3 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v2 && os_log_type_enabled(v2, v3))
  {
    OUTLINED_FUNCTION_4_1(&dword_273ECD000, v4, v5, "%s: nil ipmonitor", v6, v7, v8, v9, 2u);
  }

  *a1 = v2;
  v10 = *MEMORY[0x277D85DE8];
}

- (void)initWithNetwork:(NSObject *)a1 profile:ipMonitor:interface:privateMACConfig:wifiModeConfig:.cold.3(NSObject **a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = WFLogForCategory(0);
  v3 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v2 && os_log_type_enabled(v2, v3))
  {
    OUTLINED_FUNCTION_4_1(&dword_273ECD000, v4, v5, "%s: nil network", v6, v7, v8, v9, 2u);
  }

  *a1 = v2;
  v10 = *MEMORY[0x277D85DE8];
}

@end