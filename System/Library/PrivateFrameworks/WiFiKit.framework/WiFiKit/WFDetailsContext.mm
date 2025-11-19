@interface WFDetailsContext
- (BOOL)shouldHideCredentials;
- (NSString)description;
- (NSString)portalURL;
- (WFDetailsContext)initWithNetwork:(id)a3 profile:(id)a4 ipMonitor:(id)a5 interface:(id)a6 privateMACConfig:(id)a7 wifiModeConfig:(id)a8;
- (WFDiagnosticsContext)diagnosticsContext;
- (WFNetworkView)provider;
- (unint64_t)networkOrigin;
- (void)cancel;
- (void)cancelNetworkQualityRun;
- (void)dealloc;
- (void)disableRandomMAC;
- (void)enableRandomMAC:(BOOL)a3;
- (void)forget;
- (void)join;
- (void)manage;
- (void)openPortalURL;
- (void)openRecommendationLink;
- (void)overrideWiFiOutrank;
- (void)renewLease;
- (void)runNetworkQualityWithCompletionHandler:(id)a3;
- (void)setWiFiOutranked:(BOOL)a3;
- (void)setWiFiOutrankedDev:(BOOL)a3;
- (void)setWifiMode:(int64_t)a3;
- (void)setWifiModeConfig:(id)a3;
- (void)updatePrivateAddressMode:(unint64_t)a3;
@end

@implementation WFDetailsContext

- (WFDetailsContext)initWithNetwork:(id)a3 profile:(id)a4 ipMonitor:(id)a5 interface:(id)a6 privateMACConfig:(id)a7 wifiModeConfig:(id)a8
{
  v137 = *MEMORY[0x277D85DE8];
  v15 = a3;
  v126 = a4;
  obj = a5;
  v123 = a5;
  v121 = a6;
  v122 = a6;
  v16 = a7;
  v124 = a8;
  v127.receiver = self;
  v127.super_class = WFDetailsContext;
  v17 = [(WFDetailsContext *)&v127 init];

  if (!v17)
  {
    goto LABEL_141;
  }

  if (!v15)
  {
    [WFDetailsContext initWithNetwork:buf profile:? ipMonitor:? interface:? privateMACConfig:? wifiModeConfig:?];
LABEL_139:
    v117 = *buf;
    goto LABEL_140;
  }

  objc_storeStrong(&v17->_network, a3);
  v125 = v16;
  if (v126)
  {
    objc_storeStrong(&v17->_profile, a4);
    v17->_knownNetwork = 1;
    v19 = v122;
    v18 = v123;
    if ([v126 autoJoinConfigurable])
    {
      v20 = WFLogForCategory(0);
      v21 = OSLogForWFLogLevel(3uLL);
      if (WFCurrentLogLevel() >= 3 && v20)
      {
        v22 = v20;
        if (os_log_type_enabled(v22, v21))
        {
          v23 = [v15 ssid];
          *buf = 138412290;
          *&buf[4] = v23;
          _os_log_impl(&dword_273ECD000, v22, v21, "'%@' is autoJoinConfigurable", buf, 0xCu);
        }
      }

      v17->_requestedFields |= 0x20uLL;
    }

    if ([v126 autoLoginConfigurable])
    {
      v24 = WFLogForCategory(0);
      v25 = OSLogForWFLogLevel(3uLL);
      if (WFCurrentLogLevel() >= 3 && v24)
      {
        v26 = v24;
        if (os_log_type_enabled(v26, v25))
        {
          v27 = [v15 ssid];
          *buf = 138412290;
          *&buf[4] = v27;
          _os_log_impl(&dword_273ECD000, v26, v25, "'%@' is autoLoginConfigurable", buf, 0xCu);
        }
      }

      v17->_requestedFields |= 0x40uLL;
    }

    if ([v126 saveDataModeConfigurable])
    {
      v28 = WFLogForCategory(0);
      v29 = OSLogForWFLogLevel(3uLL);
      if (WFCurrentLogLevel() >= 3 && v28)
      {
        v30 = v28;
        if (os_log_type_enabled(v30, v29))
        {
          v31 = [v15 ssid];
          *buf = 138412290;
          *&buf[4] = v31;
          _os_log_impl(&dword_273ECD000, v30, v29, "'%@' is saveDataModeConfigurable", buf, 0xCu);
        }
      }

      v17->_requestedFields |= 0x200uLL;
    }

    v32 = [v126 networkQualityVisible];
    v33 = WFLogForCategory(0);
    v34 = OSLogForWFLogLevel(3uLL);
    v36 = WFCurrentLogLevel() > 2 && v33 != 0;
    if (v32)
    {
      if (v36)
      {
        v32 = v33;
        if (os_log_type_enabled(v32, v34))
        {
          v37 = [v15 ssid];
          *buf = 138412290;
          *&buf[4] = v37;
          _os_log_impl(&dword_273ECD000, v32, v34, "NetQuality: '%@' is networkQualityVisible", buf, 0xCu);
        }
      }

      v17->_requestedFields |= 0x800uLL;
    }

    else
    {
      if (v36)
      {
        v32 = v33;
        if (os_log_type_enabled(v32, v34))
        {
          v41 = [v15 ssid];
          *buf = 138412290;
          *&buf[4] = v41;
          _os_log_impl(&dword_273ECD000, v32, v34, "NetQuality: %@ is NOT networkQualityVisible", buf, 0xCu);
        }
      }
    }

    v16 = v125;
    if ([v126 forgetable])
    {
      v42 = WFLogForCategory(0);
      v32 = OSLogForWFLogLevel(3uLL);
      if (WFCurrentLogLevel() >= 3 && v42)
      {
        v43 = v42;
        if (os_log_type_enabled(v43, v32))
        {
          v44 = [v15 ssid];
          *buf = 138412290;
          *&buf[4] = v44;
          _os_log_impl(&dword_273ECD000, v43, v32, "'%@' is forgettable", buf, 0xCu);

          v16 = v125;
        }
      }

      v17->_requestedFields |= 0x10uLL;
    }
  }

  else
  {
    v38 = WFLogForCategory(0);
    v32 = OSLogForWFLogLevel(3uLL);
    v19 = v122;
    v18 = v123;
    if (WFCurrentLogLevel() >= 3 && v38)
    {
      v39 = v38;
      if (os_log_type_enabled(v39, v32))
      {
        v40 = [v15 ssid];
        *buf = 136315394;
        *&buf[4] = "[WFDetailsContext initWithNetwork:profile:ipMonitor:interface:privateMACConfig:wifiModeConfig:]";
        v129 = 2112;
        *v130 = v40;
        _os_log_impl(&dword_273ECD000, v39, v32, "%s: not a known network %@, nil profile", buf, 0x16u);

        v16 = v125;
      }
    }

    v17->_knownNetwork = 0;
  }

  if (_os_feature_enabled_impl())
  {
    if ([v126 privateMACAddressModeConfigurationProfileSetting] == 1)
    {
      v45 = [(WFInterface *)v17->_interface cInterface];
      v46 = [v45 isDeviceSupervised];
      if ((v46 & 1) != 0 || ([(WFInterface *)v17->_interface cInterface], v32 = objc_claimAutoreleasedReturnValue(), [v32 isNetworkManagedByMDM:v126]))
      {
        v47 = [(WFInterface *)v17->_interface cInterface];
        v48 = [v47 privateMACAddressModeForNetworkProfile:v126] != 1;

        if (v46)
        {
          goto LABEL_67;
        }
      }

      else
      {
        v48 = 1;
      }

LABEL_67:
      v16 = v125;
      goto LABEL_68;
    }

    goto LABEL_64;
  }

  if (![v15 isPrivateMACDisabledByProfile] || !objc_msgSend(v15, "isSupervised"))
  {
LABEL_64:
    v48 = 1;
    goto LABEL_68;
  }

  v48 = [v15 isRandomMACAddressEnabled];
LABEL_68:
  v17->_randomMACAddressConfigurable = v48;
  v49 = [v126 isAutoJoinDisabled];
  v17->_autoJoinEnabled = v49 ^ 1;
  if (((v49 ^ 1) & 1) == 0)
  {
    v50 = [v126 hasDisabledUntilDate];

    if (v50)
    {
      v51 = WFLogForCategory(0);
      v52 = OSLogForWFLogLevel(3uLL);
      if (WFCurrentLogLevel() >= 3 && v51)
      {
        v53 = v51;
        if (os_log_type_enabled(v53, v52))
        {
          v54 = [v126 SSID];
          v55 = [v126 hasDisabledUntilDate];
          *buf = 136315650;
          *&buf[4] = "[WFDetailsContext initWithNetwork:profile:ipMonitor:interface:privateMACConfig:wifiModeConfig:]";
          v129 = 2112;
          *v130 = v54;
          *&v130[8] = 2112;
          v131 = v55;
          _os_log_impl(&dword_273ECD000, v53, v52, "%s: %@ autojoin temporarily disabled until %@, overriding UI switch to show enabled", buf, 0x20u);
        }

        v16 = v125;
      }

      v17->_autoJoinEnabled = 1;
    }
  }

  v17->_autoLoginEnabled = [v126 bypassCaptive] ^ 1;
  if ([v126 lowDataMode] == 1)
  {
    v56 = 1;
  }

  else if ([v126 isPersonalHotspot])
  {
    v56 = [v126 lowDataMode] == 0;
  }

  else
  {
    v56 = 0;
  }

  v17->_isInSaveDataMode = v56;
  v17->_isPrivacyProxyEnabled = [v126 isPrivacyProxyEnabled];
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
      v60 = [v16 hardwareMACAddress];
      *buf = 138412290;
      *&buf[4] = v60;
      _os_log_impl(&dword_273ECD000, v59, v58, "hardwareMAC is '%@'", buf, 0xCu);
    }
  }

  v61 = [v16 hardwareMACAddress];
  v62 = [v61 formattedWiFiAddress];
  hardwareMACAddress = v17->_hardwareMACAddress;
  v17->_hardwareMACAddress = v62;

  if (v17->_greenTeaLogger)
  {
    v64 = [MEMORY[0x277CCAC38] processInfo];
    v65 = [v64 processName];

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
        *&buf[4] = v65;
        v129 = 2080;
        *v130 = "com.apple.wifikit";
        *&v130[8] = 2112;
        v131 = v65;
        *v132 = 2112;
        *&v132[2] = v70;
        _os_log_impl(&dword_273ECD000, v69, OS_LOG_TYPE_INFO, "<%@>[%s][%@]:WLAN hardware MAC address..%@", buf, 0x2Au);
      }
    }
  }

  v71 = [v16 randomMACAddress];
  v72 = [v71 formattedWiFiAddress];
  randomMACAddress = v17->_randomMACAddress;
  v17->_randomMACAddress = v72;

  if (v17->_greenTeaLogger)
  {
    v74 = [MEMORY[0x277CCAC38] processInfo];
    v75 = [v74 processName];

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
        *&buf[4] = v75;
        v129 = 2080;
        *v130 = "com.apple.wifikit";
        *&v130[8] = 2112;
        v131 = v75;
        *v132 = 2112;
        *&v132[2] = v80;
        _os_log_impl(&dword_273ECD000, v79, OS_LOG_TYPE_INFO, "<%@>[%s][%@]:WLAN random MAC address..%@", buf, 0x2Au);
      }
    }
  }

  v17->_randomMACFeatureEnabled = [v16 isPrivateAddressSupported];
  v81 = WFLogForCategory(0);
  v82 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v81)
  {
    v83 = v81;
    if (os_log_type_enabled(v83, v82))
    {
      v84 = [v16 isConnectedWithHardwareAddress];
      *buf = 67109120;
      *&buf[4] = v84;
      _os_log_impl(&dword_273ECD000, v83, v82, "Network connected with hardware Address: %d", buf, 8u);
    }
  }

  v17->_connectedWithHardwareAddress = [v16 isConnectedWithHardwareAddress];
  if (v17->_randomMACFeatureEnabled)
  {
    v17->_requestedFields |= 0x400uLL;
  }

  v85 = [v16 privateAddressMode];
  v17->_privateAddressMode = v85;
  v17->_randomMACAddressDisabled = v85 != 2;
  v17->_randomMACSwitchOn = v85 == 2;
  v86 = WFLogForCategory(0);
  v87 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v86)
  {
    v88 = v86;
    if (os_log_type_enabled(v88, v87))
    {
      v89 = [v15 ssid];
      autoJoinEnabled = v17->_autoJoinEnabled;
      autoLoginEnabled = v17->_autoLoginEnabled;
      isInSaveDataMode = v17->_isInSaveDataMode;
      isPrivacyProxyEnabled = v17->_isPrivacyProxyEnabled;
      privateAddressMode = v17->_privateAddressMode;
      v93 = [v15 randomMACAddress];
      randomMACAddressConfigurable = v17->_randomMACAddressConfigurable;
      *buf = 138414082;
      *&buf[4] = v89;
      v129 = 1024;
      *v130 = autoJoinEnabled;
      *&v130[4] = 1024;
      *&v130[6] = autoLoginEnabled;
      LOWORD(v131) = 1024;
      *(&v131 + 2) = isInSaveDataMode;
      v19 = v122;
      v18 = v123;
      HIWORD(v131) = 1024;
      *v132 = isPrivacyProxyEnabled;
      *&v132[4] = 2048;
      *&v132[6] = privateAddressMode;
      v133 = 2112;
      v134 = v93;
      v135 = 1024;
      v136 = randomMACAddressConfigurable;
      _os_log_impl(&dword_273ECD000, v88, v87, "%@ - autoJoinEnabled=%d autoLoginEnabled=%d isInSaveDataMode=%d isPrivacyProxyEnabled=%d _privateAddressMode=%ld randomMAC='%@' _randomMACAddressConfigurable=%d", buf, 0x3Eu);
    }
  }

  if (!v18)
  {
    [WFDetailsContext initWithNetwork:buf profile:? ipMonitor:? interface:? privateMACConfig:? wifiModeConfig:?];
    v117 = *buf;
    v16 = v125;
LABEL_140:

LABEL_141:
    v17 = 0;
    v19 = v122;
    v18 = v123;
    goto LABEL_135;
  }

  objc_storeStrong(&v17->_ipMonitor, obj);
  objc_storeStrong(&v17->_interface, v121);
  v16 = v125;
  if (!v19)
  {
    [WFDetailsContext initWithNetwork:buf profile:? ipMonitor:? interface:? privateMACConfig:? wifiModeConfig:?];
    goto LABEL_139;
  }

  v17->_supportsAirportManagement = 0;
  v17->_wifiModeConfigurable = [v124 isWifiModeConfigurable];
  v17->_wifiMode = [v124 wifiMode];
  v95 = [MEMORY[0x277D29518] sharedInstance];
  v17->_demoModeEnabled = [v95 isStoreDemoModeEnabled:0];

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
  v101 = [v126 captiveProfile];
  v102 = [v15 scanResult];
  v103 = [v102 venueURLList];
  v104 = [(WFPortalContext *)v100 initWithCaptiveProfile:v101 anqpVenueURLs:v103];
  portalContext = v17->_portalContext;
  v17->_portalContext = v104;

  if (objc_opt_class())
  {
    v106 = [MEMORY[0x277D243A0] shared];
    v107 = [v106 enabled];
  }

  else
  {
    v107 = 0;
  }

  v108 = WFLogForCategory(0);
  v109 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v108)
  {
    v110 = v108;
    if (os_log_type_enabled(v110, v109))
    {
      v111 = "disabled";
      if (v107)
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

  v112 = [v15 scanResult];
  v113 = [v112 isAllowedInLockdownMode];

  v17->_autoJoinConfigurable = v107 && (v113 & 1) == 0;
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
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

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

- (void)setWifiMode:(int64_t)a3
{
  v5 = [(WFDetailsContext *)self WiFiModeChangedHandler];

  if (v5)
  {
    v6 = [(WFDetailsContext *)self WiFiModeChangedHandler];
    v6[2](v6, a3);
  }

  self->_wifiMode = a3;
}

- (void)setWifiModeConfig:(id)a3
{
  v4 = a3;
  self->_wifiModeConfigurable = [v4 isWifiModeConfigurable];
  v5 = [v4 wifiMode];

  self->_wifiMode = v5;
}

- (void)setWiFiOutranked:(BOOL)a3
{
  self->_WiFiOutranked = a3;
  v3 = 4096;
  if (!a3)
  {
    v3 = 0;
  }

  self->_requestedFields = self->_requestedFields & 0xFFFFFFFFFFFFEFFFLL | v3;
}

- (void)setWiFiOutrankedDev:(BOOL)a3
{
  v15 = *MEMORY[0x277D85DE8];
  self->_WiFiOutrankedDev = a3;
  v4 = 0x2000;
  if (!a3)
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
      v8 = [(WFDetailsContext *)self network];
      v9 = [v8 ssid];
      v11 = 134218242;
      v12 = 0x2000;
      v13 = 2112;
      v14 = v9;
      _os_log_impl(&dword_273ECD000, v7, v6, "setting WiFiOutrankedDev=%ld for %@", &v11, 0x16u);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)runNetworkQualityWithCompletionHandler:(id)a3
{
  v4 = a3;
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x2020000000;
  v16[3] = 0;
  v5 = objc_alloc_init(MEMORY[0x277D2C9A0]);
  v6 = [(WFDetailsContext *)self ipMonitor];
  v7 = [v6 interfaceName];
  [v5 setNetworkInterfaceName:v7];

  v8 = objc_alloc(MEMORY[0x277D2C990]);
  v9 = objc_alloc_init(MEMORY[0x277D2C9A0]);
  v10 = [v8 initWithConfiguration:v9];
  [(WFDetailsContext *)self setNetworkQualityAssessment:v10];

  v11 = [(WFDetailsContext *)self networkQualityAssessment];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __59__WFDetailsContext_runNetworkQualityWithCompletionHandler___block_invoke;
  v13[3] = &unk_279EBDC68;
  v15 = v16;
  v13[4] = self;
  v12 = v4;
  v14 = v12;
  [v11 runWithCompletionHandler:v13];

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
  v3 = [(WFDetailsContext *)self networkQualityAssessment];

  if (v3)
  {
    v4 = [(WFDetailsContext *)self networkQualityAssessment];
    [v4 cancel];

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

  v5 = [(WFDetailsContext *)self actionHandler];
  v5[2](v5, 0);
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

  v5 = [(WFDetailsContext *)self actionHandler];
  v5[2](v5, 4);
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

  v5 = [(WFDetailsContext *)self actionHandler];
  v5[2](v5, 3);
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

  v5 = [(WFDetailsContext *)self actionHandler];
  v5[2](v5, 2);
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

  v5 = [(WFDetailsContext *)self actionHandler];
  v5[2](v5, 1);
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
      v6 = [(WFDetailsContext *)self network];
      v7 = [v6 ssid];
      v11 = 138412290;
      v12 = v7;
      _os_log_impl(&dword_273ECD000, v5, v4, "user disabled using random mac address for '%@'", &v11, 0xCu);
    }
  }

  v8 = [(WFDetailsContext *)self privateMACHandler];

  if (v8)
  {
    v9 = [(WFDetailsContext *)self privateMACHandler];
    v9[2](v9, 3);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)enableRandomMAC:(BOOL)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = WFLogForCategory(0);
  v5 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v4)
  {
    v6 = v4;
    if (os_log_type_enabled(v6, v5))
    {
      v7 = [(WFDetailsContext *)self network];
      v8 = [v7 ssid];
      v12 = 138412290;
      v13 = v8;
      _os_log_impl(&dword_273ECD000, v6, v5, "user enabled using random mac address for '%@'", &v12, 0xCu);
    }
  }

  v9 = [(WFDetailsContext *)self privateMACHandler];

  if (v9)
  {
    v10 = [(WFDetailsContext *)self privateMACHandler];
    v10[2](v10, 2);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)updatePrivateAddressMode:(unint64_t)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = WFLogForCategory(0);
  v6 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v5 && os_log_type_enabled(v5, v6))
  {
    v10 = 134217984;
    v11 = a3;
    _os_log_impl(&dword_273ECD000, v5, v6, "User tried to set private address mode to : %ld", &v10, 0xCu);
  }

  v7 = [(WFDetailsContext *)self privateMACHandler];

  if (v7)
  {
    v8 = [(WFDetailsContext *)self privateMACHandler];
    v8[2](v8, a3);
  }

  [(WFDetailsContext *)self setPrivateAddressMode:a3];
  v9 = *MEMORY[0x277D85DE8];
}

- (BOOL)shouldHideCredentials
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = [(WFDetailsContext *)self profile];
  v4 = [v3 addReason];

  v5 = [(WFDetailsContext *)self profile];
  v6 = [v5 addReason];

  v7 = WFLogForCategory(0);
  v8 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v7)
  {
    v9 = v7;
    if (os_log_type_enabled(v9, v8))
    {
      v23 = [(WFDetailsContext *)self network];
      v10 = [v23 ssid];
      v22 = [(WFDetailsContext *)self network];
      v20 = [v22 securityMode] == 0;
      v21 = [(WFDetailsContext *)self network];
      v11 = [v21 isSupervised];
      v12 = [(WFDetailsContext *)self profile];
      *buf = 136316930;
      v25 = "[WFDetailsContext shouldHideCredentials]";
      v26 = 2112;
      v27 = v10;
      v28 = 1024;
      v29 = v20;
      v30 = 1024;
      v31 = v11;
      v32 = 1024;
      v33 = [v12 isProfileBased];
      v34 = 1024;
      v35 = v6 == 11;
      v36 = 1024;
      v37 = [(WFDetailsContext *)self demoModeEnabled];
      v38 = 1024;
      v39 = v4 == 10;
      _os_log_impl(&dword_273ECD000, v9, v8, "%s: Network %@ is open:%d supervised:%d profile-based:%d shared:%d demo-mode-enabled:%d carrier-based:%d", buf, 0x3Au);
    }
  }

  v13 = [(WFDetailsContext *)self network];
  if ([v13 securityMode])
  {
    v14 = [(WFDetailsContext *)self network];
    if ([v14 isSupervised])
    {
      v15 = 1;
    }

    else
    {
      v16 = [(WFDetailsContext *)self profile];
      v15 = 1;
      if (([v16 isProfileBased] & 1) == 0 && v6 != 11)
      {
        v17 = [(WFDetailsContext *)self demoModeEnabled];
        v15 = v4 == 10 || v17;
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
  v5 = [(WFDetailsContext *)self profile];
  v6 = [(WFNetworkProfile *)v4 initWithCoreWiFiProfile:v5];

  v7 = [WFDiagnosticsContext alloc];
  v8 = [(WFDetailsContext *)self network];
  v9 = [(WFDiagnosticsContext *)v7 initWithNetwork:v8 profile:v6 detailsContext:self];
  v10 = self->_diagnosticsContext;
  self->_diagnosticsContext = v9;

  v11 = self->_diagnosticsContext;
  v12 = v11;

  return v11;
}

- (void)cancel
{
  v3 = [(WFDetailsContext *)self networkQualityAssessment];

  if (v3)
  {
    v4 = [(WFDetailsContext *)self networkQualityAssessment];
    [v4 cancel];

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
      v6 = [(WFDetailsContext *)self network];
      v7 = [v6 ssid];
      v10 = 138412290;
      v11 = v7;
      _os_log_impl(&dword_273ECD000, v5, v4, "User is overriding WiFi outrank for network='%@'", &v10, 0xCu);
    }
  }

  [(WFDetailsContext *)self setWiFiOutranked:0];
  v8 = [(WFDetailsContext *)self actionHandler];
  v8[2](v8, 5);

  v9 = *MEMORY[0x277D85DE8];
}

- (unint64_t)networkOrigin
{
  v2 = [(WFDetailsContext *)self profile];
  v3 = [v2 addReason];

  if (v3 == 10)
  {
    return 1;
  }

  else
  {
    return 2 * (v3 == 9);
  }
}

- (NSString)portalURL
{
  v2 = [(WFDetailsContext *)self portalContext];
  v3 = [v2 portalHostnameForDisplay];

  return v3;
}

- (void)openPortalURL
{
  v2 = [(WFDetailsContext *)self actionHandler];
  v2[2](v2, 6);
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(WFDetailsContext *)self network];
  v7 = [v6 ssid];
  v8 = [v3 stringWithFormat:@"<%@: %p SSID: %@ Current: %d Known: %d Context: %ld>", v5, self, v7, -[WFDetailsContext isCurrent](self, "isCurrent"), -[WFDetailsContext isKnownNetwork](self, "isKnownNetwork"), -[WFDetailsContext entryContext](self, "entryContext")];

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