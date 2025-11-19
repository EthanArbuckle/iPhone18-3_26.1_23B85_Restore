@interface WFNetworkListController
- (BOOL)_canPromptForCarPlay;
- (BOOL)_canPromptForInstantHotspot;
- (BOOL)_canStartAssociationToNetwork:(id)a3;
- (BOOL)_canStartAssociationToUserSuppliedNetwork:(id)a3;
- (BOOL)_disablePersonalHotspot;
- (BOOL)_handleAccessoryDetailURL:(id)a3;
- (BOOL)_handleCurrentNetworkDetailsURL:(id)a3;
- (BOOL)_isActiveCarPlaySession;
- (BOOL)_isChannelAllowedForScanPerCurrentLocale:(int64_t)a3;
- (BOOL)_shouldPauseScanning;
- (BOOL)_shouldShowLowDataModeForProfile:(id)a3;
- (BOOL)_supportsWiFiPasswordSharing;
- (BOOL)_useLegacySettingsUI;
- (BOOL)airportSettingsViewControllerCurrentNetworkConnectionIsProblematic:(id)a3;
- (BOOL)airportSettingsViewControllerShouldShowDiagnosticsMode:(id)a3;
- (BOOL)airportSettingsViewControllerShouldShowKnownNetworks:(id)a3;
- (BOOL)airportSettingsViewControllerShouldShowNANUI:(id)a3;
- (BOOL)handleURL:(id)a3;
- (BOOL)isAirPortSettings;
- (BOOL)isAssociating;
- (BOOL)isSetup;
- (BOOL)networkListViewControllerCurrentPowerState:(id)a3;
- (BOOL)networkListViewControllerIsManagedAppleID:(id)a3;
- (BOOL)networkListViewControllerNetworkRestrictionActive:(id)a3;
- (BOOL)networkListViewControllerPowerModificationDisabled:(id)a3;
- (BOOL)networkListViewControllerWAPIEnabled:(id)a3;
- (BOOL)removeKnownNetworks:(id)a3;
- (WFKnownNetworksProvider)knownNetworksManager;
- (WFNetworkListController)init;
- (WFNetworkListController)initWithViewController:(id)a3 viewProvider:(id)a4 client:(id)a5;
- (WFNetworkListController)initWithViewController:(id)a3 viewProvider:(id)a4 client:(id)a5 knownNetworksManager:(id)a6;
- (id)_convertToHexString:(id)a3;
- (id)_hardwareMACAddress;
- (id)_sortedHealthRecommendations;
- (id)_sortedHealthRecommendations:(BOOL)a3;
- (id)airportSettingsViewController:(id)a3 unconfiguredAccessoriesGroupHeaderTitle:(id)a4;
- (id)editableKnownNetworks;
- (id)healthRecommendations:(BOOL)a3;
- (id)keyValueDictionaryForURL:(id)a3;
- (id)managedKnownNetworks;
- (id)networkListViewController:(id)a3 showSettingsForNetwork:(id)a4 context:(int64_t)a5 scrollToCellType:(unint64_t)a6 controller:(id)a7;
- (id)passwordToDisplayForSSID:(id)a3;
- (id)scanManager:(id)a3 filterScanResults:(id)a4;
- (int64_t)_defaultAuthTraits;
- (int64_t)airportSettingsViewControllerAskToJoinMode:(id)a3;
- (int64_t)networkListViewControllerAutoInstantHotspotOption:(id)a3;
- (unint64_t)_getLockdownModeSecurityType:(id)a3;
- (void)_applicationDidBecomeActive:(id)a3;
- (void)_applicationDidEnterBackground:(id)a3;
- (void)_applicationWillEnterForeground:(id)a3;
- (void)_applicationWillResignActive:(id)a3;
- (void)_associateToEnterpriseNetwork:(id)a3 profile:(id)a4;
- (void)_associateToHS20Network:(id)a3;
- (void)_associateToHotspotDevice:(id)a3;
- (void)_associateToNetwork:(id)a3 profile:(id)a4;
- (void)_associateToScanRecord:(id)a3;
- (void)_associateToScanRecord:(id)a3 profile:(id)a4;
- (void)_associateToUnconfiguredAccessory:(id)a3;
- (void)_associateToUserSuppliedNetwork:(id)a3;
- (void)_associateToUserSuppliedNetworkHelper:(id)a3 networks:(id)a4;
- (void)_associationDidFinish:(BOOL)a3 error:(id)a4 network:(id)a5;
- (void)_associationWillStart:(id)a3;
- (void)_cellularOutrankNotification:(id)a3;
- (void)_cleanUpStatesForDismissal;
- (void)_clientRestartedNotification:(id)a3;
- (void)_dismissCredentialsViewControllerWithContext:(id)a3;
- (void)_dismissDetailsViewControllerWithContext:(id)a3;
- (void)_dismissErrorViewControllerWithContext:(id)a3;
- (void)_dismissLockdownModeViewControllerWithContext:(id)a3;
- (void)_dismissOtherNetworkViewControllerWithContext:(id)a3;
- (void)_dismissTrustViewControllerWithContext:(id)a3;
- (void)_dismissViewControllerForContext:(id)a3;
- (void)_dismissVisibleContext;
- (void)_downloadHomeApp;
- (void)_handleAssociationError:(id)a3 network:(id)a4 profile:(id)a5 securityMode:(int64_t)a6 associationContext:(id)a7;
- (void)_handleAssociationResult:(BOOL)a3 error:(id)a4 network:(id)a5 profile:(id)a6 shouldSaveProfile:(BOOL)a7;
- (void)_interfaceDidBecomeAvailable:(id)a3;
- (void)_ipStateDidChange:(id)a3;
- (void)_managedAppleIDStateDidChange:(id)a3;
- (void)_networkDidChangeNotification:(id)a3;
- (void)_networkHealthIssuesDidChange:(id)a3;
- (void)_networkLinkQualityDidChangeNotification:(id)a3;
- (void)_networkRestrictionStateDidChange:(id)a3;
- (void)_openHomeAppForNetwork:(id)a3;
- (void)_openURL:(id)a3;
- (void)_pauseScanning;
- (void)_powerModificationDisableStateDidChange:(id)a3;
- (void)_powerStateChanged;
- (void)_preferredNetworksDidChange:(id)a3;
- (void)_presentContext:(id)a3 contextType:(unint64_t)a4;
- (void)_presentDeveloperOutrankAlertForNetwork:(id)a3;
- (void)_presentHotspotErrorContextWithDevice:(id)a3 hotspotError:(id)a4 failure:(int64_t)a5;
- (void)_promptCredentialsForNetwork:(id)a3 profile:(id)a4;
- (void)_promptCredentialsForNetworkCancelled:(id)a3;
- (void)_promptForSecureWACDevice:(id)a3;
- (void)_promptToDisableCarPlayForNetworkName:(id)a3 handler:(id)a4;
- (void)_promptTrustCertificateForNetwork:(id)a3 certificateChain:(id)a4 profile:(id)a5 autoJoin:(BOOL)a6;
- (void)_refreshKnownHiddenNetworkNamesCache;
- (void)_registerForApplicationNotifications;
- (void)_resumeScanning;
- (void)_runUnconfiguredJoinOperationForNetwork:(id)a3;
- (void)_saveLogsWithComment:(id)a3 diagnosticsViewController:(id)a4;
- (void)_scanNetworkForAssociation:(id)a3 profile:(id)a4;
- (void)_setupGASControllerWithInterface:(id)a3;
- (void)_setupWithInterface:(id)a3;
- (void)_setupWithoutInterface;
- (void)_startHotspotScan;
- (void)_stateMonitorChangedStates:(int64_t)a3 oldState:(int64_t)a4;
- (void)_stopHotspotScan;
- (void)_updateCurrentNetworkIPState:(id)a3;
- (void)_updateHS20NetworksWithProfiles:(id)a3 names:(id)a4;
- (void)_updateHealthSubtitle;
- (void)_updatePowerState;
- (void)_updatePrivacyProxyFeatureEnabled;
- (void)_updateViewControllerConnectedNetwork;
- (void)_updateViewControllerConnectedNetwork:(id)a3;
- (void)_updateViewControllerDisabled;
- (void)_updateViewControllerScanResults;
- (void)_updateViewsForNetworks:(id)a3;
- (void)_wifiPropertyDidChanged:(id)a3;
- (void)airportSettingsViewController:(id)a3 setAskToJoinMode:(int64_t)a4;
- (void)airportSettingsViewControllerDidFinishEditingKnownNetworks:(id)a3;
- (void)airportSettingsViewControllerDidStartEditingKnownNetworks:(id)a3;
- (void)airportSettingsViewControllerDidTapDataUsage:(id)a3;
- (void)dealloc;
- (void)hotspotInterfaceDidUpdateNetworks:(id)a3;
- (void)networkListViewController:(id)a3 didTapRecord:(id)a4;
- (void)networkListViewController:(id)a3 setAutoInstantOption:(int64_t)a4;
- (void)networkListViewController:(id)a3 userDidChangePowerToggle:(unint64_t)a4;
- (void)networkListViewControllerDidAppear:(id)a3;
- (void)networkListViewControllerDidDisappear:(id)a3;
- (void)networkListViewControllerDidFinish:(id)a3;
- (void)networkListViewControllerDidTapOtherNetwork:(id)a3;
- (void)pushDataUsageViewController;
- (void)removeScanCache;
- (void)scanManager:(id)a3 didFindHotspotHelperNetworks:(id)a4;
- (void)scanManager:(id)a3 didFinishScanRequest:(id)a4 results:(id)a5 error:(id)a6 timeElapsed:(double)a7;
- (void)scanManager:(id)a3 stateDidChange:(int64_t)a4;
- (void)scanManager:(id)a3 updatedPartialResults:(id)a4;
- (void)scanManager:(id)a3 willStartScanRequest:(id)a4;
- (void)scanManagerScanningDidFinish:(id)a3 withResults:(id)a4 error:(id)a5;
- (void)scanManagerScanningWillStart:(id)a3;
- (void)setPowerState:(unint64_t)a3;
- (void)startScanning;
- (void)stopScanning;
@end

@implementation WFNetworkListController

- (WFNetworkListController)initWithViewController:(id)a3 viewProvider:(id)a4 client:(id)a5 knownNetworksManager:(id)a6
{
  v10 = a6;
  v11 = [(WFNetworkListController *)self initWithViewController:a3 viewProvider:a4 client:a5];
  v12 = v11;
  if (v11)
  {
    [(WFNetworkListController *)v11 setKnownNetworksManager:v10];
  }

  return v12;
}

- (WFNetworkListController)initWithViewController:(id)a3 viewProvider:(id)a4 client:(id)a5
{
  v50 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v45.receiver = self;
  v45.super_class = WFNetworkListController;
  v12 = [(WFNetworkListController *)&v45 init];
  v13 = v12;
  v14 = 0;
  if (!v9 || !v12)
  {
    contentCachesContext = v12;
    v24 = v11;
    v13 = 0;
    goto LABEL_27;
  }

  v15 = NSProtocolFromString(&cfstr_Wfnetworklisti.isa);
  v16 = [v9 conformsToProtocol:v15];

  if ((v16 & 1) == 0)
  {
    [WFNetworkListController initWithViewController:viewProvider:client:];
    v14 = 0;
    contentCachesContext = v13;
    v24 = v11;
    v13 = 0;
    goto LABEL_27;
  }

  objc_storeStrong(&v13->_viewController, a3);
  [(WFNetworkListing *)v13->_viewController setListDelegate:v13];
  objc_storeStrong(&v13->_viewProvider, a4);
  v13->_shouldShowDetailTapOnCurrentNetwork = 1;
  v13->_isRandomMACManageFeatureEnabled = _os_feature_enabled_impl();
  if (!v13->_viewProvider)
  {
    v17 = NSProtocolFromString(&cfstr_Wfnetworkviewp.isa);
    v18 = [0 conformsToProtocol:v17];

    if ((v18 & 1) == 0)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v20 = off_279EBC2A8;
      if ((isKindOfClass & 1) == 0)
      {
        v20 = off_279EBC2A0;
      }

      v21 = *v20;
      v22 = objc_alloc_init(objc_opt_class());
      viewProvider = v13->_viewProvider;
      v13->_viewProvider = v22;
    }
  }

  if (![(WFNetworkListing *)v13->_viewController deviceCapability])
  {
    [(WFNetworkListing *)v13->_viewController setDeviceCapability:WFCurrentDeviceCapability()];
  }

  v24 = v11;
  if (!v11)
  {
    v24 = objc_alloc_init(WFClient);
  }

  objc_storeStrong(&v13->_wifiClient, v24);
  v25 = objc_alloc_init(WFDiagnosticsManager);
  diagnosticsManager = v13->_diagnosticsManager;
  v13->_diagnosticsManager = v25;

  v27 = [[WFNetworkListRandomMACManager alloc] initWithClient:v13->_wifiClient];
  randomMACManager = v13->_randomMACManager;
  v13->_randomMACManager = v27;

  v14 = [(WFClient *)v13->_wifiClient interface];
  if (v14)
  {
    objc_storeStrong(&v13->_interface, v14);
    [(WFNetworkListController *)v13 _setupWithInterface:v13->_interface];
    [(WFNetworkListController *)v13 _updateViewControllerConnectedNetwork];
  }

  else
  {
    v43 = WFLogForCategory(0);
    v44 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v43 && os_log_type_enabled(v43, v44))
    {
      *buf = 136315138;
      v47 = "[WFNetworkListController initWithViewController:viewProvider:client:]";
      _os_log_impl(&dword_273ECD000, v43, v44, "%s: can't get WFInterface instance", buf, 0xCu);
    }
  }

  if (!v13->_interface)
  {
    [(WFNetworkListController *)v13 _setupWithoutInterface];
  }

  v29 = objc_alloc_init(WFAssociationContextQueue);
  associationContextQueue = v13->_associationContextQueue;
  v13->_associationContextQueue = v29;

  v31 = [MEMORY[0x277CCAB98] defaultCenter];
  [v31 addObserver:v13 selector:sel__interfaceDidBecomeAvailable_ name:@"WFClientInterfaceAvailableNotification" object:0];

  v32 = [MEMORY[0x277CCAB98] defaultCenter];
  [v32 addObserver:v13 selector:sel__clientRestartedNotification_ name:@"WFClientServerRestartedNotification" object:0];

  v33 = [MEMORY[0x277CCAB98] defaultCenter];
  [v33 addObserver:v13 selector:sel__cellularOutrankNotification_ name:@"WFClientCellularOutrankWiFiNotification" object:0];

  if (objc_opt_class())
  {
    v34 = [MEMORY[0x277D243A0] shared];
    v13->_lockdownModeEnabled = [v34 enabled];
  }

  v35 = WFLogForCategory(0);
  v36 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v35 && os_log_type_enabled(v35, v36))
  {
    v37 = "disabled";
    if (v13->_lockdownModeEnabled)
    {
      v37 = "enabled";
    }

    *buf = 136315394;
    v47 = "[WFNetworkListController initWithViewController:viewProvider:client:]";
    v48 = 2080;
    v49 = v37;
    _os_log_impl(&dword_273ECD000, v35, v36, "%s: Lockdown mode is %s", buf, 0x16u);
  }

  if (_os_feature_enabled_impl())
  {
    v38 = objc_alloc_init(WFContentCachesContext);
    contentCachesContext = v13->_contentCachesContext;
    v13->_contentCachesContext = v38;
LABEL_27:
  }

  v40 = v13;

  v41 = *MEMORY[0x277D85DE8];
  return v40;
}

- (WFNetworkListController)init
{
  v2 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"-[WFNetworkListController init] unavailable" userInfo:0];
  objc_exception_throw(v2);
}

- (void)_setupWithInterface:(id)a3
{
  v60 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = WFLogForCategory(0);
  v6 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v5 && os_log_type_enabled(v5, v6))
  {
    *buf = 136315394;
    v57 = "[WFNetworkListController _setupWithInterface:]";
    v58 = 2112;
    v59 = v4;
    _os_log_impl(&dword_273ECD000, v5, v6, "%s: interface %@", buf, 0x16u);
  }

  objc_initWeak(&location, self);
  v7 = [WFWiFiStateMonitor alloc];
  v8 = [(WFNetworkListController *)self wifiClient];
  v50 = MEMORY[0x277D85DD0];
  v51 = 3221225472;
  v52 = __47__WFNetworkListController__setupWithInterface___block_invoke;
  v53 = &unk_279EBD110;
  objc_copyWeak(&v54, &location);
  v9 = [(WFWiFiStateMonitor *)v7 initWithClient:v8 handler:&v50];
  stateMonitor = self->_stateMonitor;
  self->_stateMonitor = v9;

  [(WFWiFiStateMonitor *)self->_stateMonitor setIdentifier:@"com.apple.WiFiSettings", v50, v51, v52, v53];
  v11 = objc_alloc_init(MEMORY[0x277CCABD8]);
  backgroundQueue = self->_backgroundQueue;
  self->_backgroundQueue = v11;

  v13 = self->_backgroundQueue;
  if (v13)
  {
    [(NSOperationQueue *)v13 setQualityOfService:9];
    [(WFNetworkListController *)self _setupGASControllerWithInterface:v4];
    v14 = [WFScanManager alloc];
    v15 = [(WFNetworkListController *)self wifiClient];
    v16 = [WFScanProxy scanProxyWithClient:v15];
    v17 = [(WFScanManager *)v14 initWithScanProxy:v16 delegate:self];
    scanManager = self->_scanManager;
    self->_scanManager = v17;

    if (self->_scanManager)
    {
      v19 = objc_alloc_init(WFHotspotInterface);
      hotspotInterface = self->_hotspotInterface;
      self->_hotspotInterface = v19;

      v21 = self->_hotspotInterface;
      if (v21)
      {
        [(WFHotspotInterface *)v21 setDelegate:self];
        v22 = [[WFHealthManager alloc] initWithInterface:v4];
        healthManager = self->_healthManager;
        self->_healthManager = v22;

        if (self->_healthManager)
        {
          v24 = objc_alloc_init(WFScanMetricsManager);
          scanMetricsManager = self->_scanMetricsManager;
          self->_scanMetricsManager = v24;

          if (self->_scanMetricsManager)
          {
            self->_privacyProxyFeatureTier = 0;
            if ([(WFNetworkListController *)self isAirPortSettings])
            {
              self->_scanForPersonalHotspots = 1;
              [(WFNetworkListController *)self _updatePrivacyProxyFeatureEnabled];
            }

            self->_canScanForPersonalHotspots = 1;
            v26 = [(WFNetworkListController *)self wifiClient];
            -[WFNetworkListing setShowOtherNetwork:](self->_viewController, "setShowOtherNetwork:", [v26 isNetworkRestrictionActive] ^ 1);

            viewProvider = self->_viewProvider;
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              [(WFNetworkListController *)self _registerForApplicationNotifications];
            }

            v28 = [MEMORY[0x277CCAB98] defaultCenter];
            [v28 addObserver:self selector:sel__ipStateDidChange_ name:@"WFIPMonitorStateChangedNotification" object:0];

            v29 = [MEMORY[0x277CCAB98] defaultCenter];
            [v29 addObserver:self selector:sel__powerDidChangeNotification_ name:@"WFClientPowerStateChangedNotification" object:0];

            v30 = [MEMORY[0x277CCAB98] defaultCenter];
            [v30 addObserver:self selector:sel__networkDidChangeNotification_ name:@"WFInterfaceNetworkChangedNotification" object:0];

            v31 = [MEMORY[0x277CCAB98] defaultCenter];
            [v31 addObserver:self selector:sel__networkLinkQualityDidChangeNotification_ name:@"WFInterfaceLinkQualityNotification" object:0];

            v32 = [MEMORY[0x277CCAB98] defaultCenter];
            [v32 addObserver:self selector:sel__networkRestrictionStateDidChange_ name:@"WFClientNetworkRestrictionPolicyDidChangeNotification" object:0];

            v33 = [MEMORY[0x277CCAB98] defaultCenter];
            [v33 addObserver:self selector:sel__networkHealthIssuesDidChange_ name:@"WFHealthManagerHealthIssuesDidChangeNotification" object:self->_healthManager];

            v34 = [MEMORY[0x277CCAB98] defaultCenter];
            [v34 addObserver:self selector:sel__powerModificationDisableStateDidChange_ name:@"WFClientPowerModificationStateChangedNotification" object:0];

            v35 = [MEMORY[0x277CCAB98] defaultCenter];
            [v35 addObserver:self selector:sel__managedAppleIDStateDidChange_ name:@"WFClientManagedAppleIDStateChangedNotification" object:0];

            v36 = [MEMORY[0x277CCAB98] defaultCenter];
            [v36 addObserver:self selector:sel__wifiPropertyDidChanged_ name:@"WFClientUserInterfacePropertyChangedNotification" object:0];

            v37 = [MEMORY[0x277CCAB98] defaultCenter];
            [v37 addObserver:self selector:sel__preferredNetworksDidChange_ name:@"WFClientPreferredNetworksDidChangeNotification" object:0];

            v38 = [MEMORY[0x277CCAB98] defaultCenter];
            [v38 addObserver:self selector:sel__ipStateDidChange_ name:@"WFInterfaceIPAddressChangedNotification" object:0];

            if (![(WFNetworkListController *)self isSetup])
            {
              v39 = WFLogForCategory(0);
              v40 = OSLogForWFLogLevel(4uLL);
              if (WFCurrentLogLevel() >= 4 && v39 && os_log_type_enabled(v39, v40))
              {
                *buf = 0;
                _os_log_impl(&dword_273ECD000, v39, v40, "Enabling auto join", buf, 2u);
              }

              v41 = [(WFNetworkListController *)self wifiClient];
              [v41 setAutoJoinEnabled:1];
            }

            viewController = self->_viewController;
            [(WFNetworkListController *)self setViewControllerSupportsCurrentNetworkSubtitle:objc_opt_respondsToSelector() & 1];
            if (![(WFNetworkListController *)self viewControllerSupportsCurrentNetworkSubtitle])
            {
              v43 = WFLogForCategory(0);
              v44 = OSLogForWFLogLevel(3uLL);
              if (WFCurrentLogLevel() >= 3 && v43 && os_log_type_enabled(v43, v44))
              {
                v45 = self->_viewController;
                *buf = 136315394;
                v57 = "[WFNetworkListController _setupWithInterface:]";
                v58 = 2112;
                v59 = v45;
                _os_log_impl(&dword_273ECD000, v43, v44, "%s: %@ doesn't support currentNetworkSubtitle", buf, 0x16u);
              }
            }

            v46 = [(WFNetworkListController *)self wifiClient];
            v47 = [v46 powered];

            if (self->_powerState == 3)
            {
              [(WFNetworkListController *)self setPowerState:v47];
            }

            else
            {
              self->_powerState = v47;
            }

            v48 = [(WFNetworkListController *)self viewController];
            [v48 deviceCapability];
            [(WFHealthManager *)self->_healthManager setIsChinaDevice:WFCapabilityIsChinaDevice()];

            [(WFNetworkListController *)self _refreshKnownHiddenNetworkNamesCache];
          }
        }
      }
    }
  }

  objc_destroyWeak(&v54);
  objc_destroyWeak(&location);

  v49 = *MEMORY[0x277D85DE8];
}

void __47__WFNetworkListController__setupWithInterface___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _stateMonitorChangedStates:a3 oldState:a2];
}

- (void)_setupWithoutInterface
{
  self->_powerState = 3;
  [(WFNetworkListController *)self setPowerState:3];

  [(WFNetworkListController *)self _updateViewControllerDisabled];
}

- (void)_setupGASControllerWithInterface:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __60__WFNetworkListController__setupGASControllerWithInterface___block_invoke;
  v5[3] = &unk_279EBD138;
  objc_copyWeak(&v6, &location);
  v5[4] = self;
  [v4 asyncHS20Supported:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __60__WFNetworkListController__setupGASControllerWithInterface___block_invoke(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = WFLogForCategory(0);
  v5 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v4 && os_log_type_enabled(v4, v5))
  {
    v15 = 136315394;
    v16 = "[WFNetworkListController _setupGASControllerWithInterface:]_block_invoke";
    v17 = 1024;
    v18 = a2;
    _os_log_impl(&dword_273ECD000, v4, v5, "%s: HS20Supported %d", &v15, 0x12u);
  }

  objc_copyWeak(&v15, (a1 + 40));
  WeakRetained = objc_loadWeakRetained(&v15);
  [WeakRetained setHS20Supported:a2];

  if (a2)
  {
    v7 = [WFGasQueryController alloc];
    v8 = [*(a1 + 32) wifiClient];
    v9 = [v8 cInterface];
    v10 = [(WFGasQueryController *)v7 initWithInterface:v9];
    v11 = *(a1 + 32);
    v12 = *(v11 + 112);
    *(v11 + 112) = v10;

    v13 = objc_loadWeakRetained(&v15);
    [*(*(a1 + 32) + 112) setDelegate:v13];
  }

  objc_destroyWeak(&v15);
  v14 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = WFNetworkListController;
  [(WFNetworkListController *)&v4 dealloc];
}

- (void)_registerForApplicationNotifications
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = WFLogForCategory(0);
  v4 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v3 && os_log_type_enabled(v3, v4))
  {
    v10 = 136315138;
    v11 = "[WFNetworkListController _registerForApplicationNotifications]";
    _os_log_impl(&dword_273ECD000, v3, v4, "%s", &v10, 0xCu);
  }

  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 addObserver:self selector:sel__applicationDidEnterBackground_ name:*MEMORY[0x277D76660] object:0];

  v6 = [MEMORY[0x277CCAB98] defaultCenter];
  [v6 addObserver:self selector:sel__applicationWillResignActive_ name:*MEMORY[0x277D76768] object:0];

  v7 = [MEMORY[0x277CCAB98] defaultCenter];
  [v7 addObserver:self selector:sel__applicationDidBecomeActive_ name:*MEMORY[0x277D76648] object:0];

  v8 = [MEMORY[0x277CCAB98] defaultCenter];
  [v8 addObserver:self selector:sel__applicationWillEnterForeground_ name:*MEMORY[0x277D76758] object:0];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_applicationWillEnterForeground:(id)a3
{
  v4 = WFLogForCategory(0);
  v5 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v4 && os_log_type_enabled(v4, v5))
  {
    *v11 = 0;
    _os_log_impl(&dword_273ECD000, v4, v5, "entered foreground", v11, 2u);
  }

  v6 = [(WFNetworkListController *)self scanMetricsManager];
  [v6 reset];

  v7 = [(WFNetworkListController *)self viewController];
  v8 = NSProtocolFromString(&cfstr_Wfknownnetwork.isa);
  if ([v7 conformsToProtocol:v8])
  {
    v9 = [(WFNetworkListController *)self viewController];
    v10 = objc_opt_respondsToSelector();

    if ((v10 & 1) == 0)
    {
      return;
    }

    v7 = [(WFNetworkListController *)self viewController];
    [v7 knownNetworksWillEnterForeground];
  }

  else
  {
  }
}

- (void)_applicationDidEnterBackground:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = WFLogForCategory(0);
  v6 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v5 && os_log_type_enabled(v5, v6))
  {
    *buf = 0;
    _os_log_impl(&dword_273ECD000, v5, v6, "entered background", buf, 2u);
  }

  v7 = [(WFNetworkListController *)self scanMetricsManager];
  [v7 submit];

  [(WFNetworkListController *)self _cleanUpStatesForDismissal];
  v8 = [(WFNetworkListController *)self hotspotInterface];
  v9 = [v8 isScanning];

  if (v9)
  {
    v10 = WFLogForCategory(0);
    v11 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v10 && os_log_type_enabled(v10, v11))
    {
      *buf = 136315138;
      v19 = "[WFNetworkListController _applicationDidEnterBackground:]";
      _os_log_impl(&dword_273ECD000, v10, v11, "%s: creating bg task to disable hotspot scanning", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    v12 = [MEMORY[0x277D75128] sharedApplication];
    v13 = [v12 beginBackgroundTaskWithExpirationHandler:&__block_literal_global_1];

    v14 = dispatch_get_global_queue(21, 0);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __58__WFNetworkListController__applicationDidEnterBackground___block_invoke_100;
    v16[3] = &unk_279EBD180;
    objc_copyWeak(v17, buf);
    v17[1] = v13;
    dispatch_async(v14, v16);

    objc_destroyWeak(v17);
    objc_destroyWeak(buf);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __58__WFNetworkListController__applicationDidEnterBackground___block_invoke()
{
  v5 = *MEMORY[0x277D85DE8];
  v0 = WFLogForCategory(0);
  v1 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v0 && os_log_type_enabled(v0, v1))
  {
    v3 = 136315138;
    v4 = "[WFNetworkListController _applicationDidEnterBackground:]_block_invoke";
    _os_log_impl(&dword_273ECD000, v0, v1, "%s: failed to stop scanning", &v3, 0xCu);
  }

  v2 = *MEMORY[0x277D85DE8];
}

void __58__WFNetworkListController__applicationDidEnterBackground___block_invoke_100(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _stopHotspotScan];

  v3 = [MEMORY[0x277D75128] sharedApplication];
  [v3 endBackgroundTask:*(a1 + 40)];
}

- (void)_applicationDidBecomeActive:(id)a3
{
  v4 = WFLogForCategory(0);
  v5 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v4 && os_log_type_enabled(v4, v5))
  {
    *v11 = 0;
    _os_log_impl(&dword_273ECD000, v4, v5, "did become active", v11, 2u);
  }

  [(WFNetworkListController *)self _updatePowerState];
  v6 = [(WFNetworkListController *)self wifiClient];
  [v6 reloadConfiguration];

  v7 = [(WFNetworkListController *)self viewController];
  v8 = NSProtocolFromString(&cfstr_Wfknownnetwork.isa);
  if ([v7 conformsToProtocol:v8])
  {
    v9 = [(WFNetworkListController *)self viewController];
    v10 = objc_opt_respondsToSelector();

    if ((v10 & 1) == 0)
    {
      return;
    }

    v7 = [(WFNetworkListController *)self viewController];
    [v7 knownNetworksDidBecomeActive];
  }

  else
  {
  }
}

- (void)_applicationWillResignActive:(id)a3
{
  v4 = WFLogForCategory(0);
  v5 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v4 && os_log_type_enabled(v4, v5))
  {
    *v10 = 0;
    _os_log_impl(&dword_273ECD000, v4, v5, "will resign active", v10, 2u);
  }

  if ([(WFNetworkListController *)self _shouldPauseScanning])
  {
    [(WFNetworkListController *)self _pauseScanning];
  }

  [(WFNetworkListController *)self _stopHotspotScan];
  [(WFNetworkListController *)self removeScanCache];
  v6 = [(WFNetworkListController *)self viewController];
  v7 = NSProtocolFromString(&cfstr_Wfknownnetwork.isa);
  if ([v6 conformsToProtocol:v7])
  {
    v8 = [(WFNetworkListController *)self viewController];
    v9 = objc_opt_respondsToSelector();

    if ((v9 & 1) == 0)
    {
      return;
    }

    v6 = [(WFNetworkListController *)self viewController];
    [v6 knownNetworksWillResignActive];
  }

  else
  {
  }
}

- (void)_cleanUpStatesForDismissal
{
  v25 = *MEMORY[0x277D85DE8];
  if (![(WFNetworkListController *)self isSetup])
  {
    v3 = WFLogForCategory(0);
    v4 = OSLogForWFLogLevel(3uLL);
    if (WFCurrentLogLevel() >= 3 && v3 && os_log_type_enabled(v3, v4))
    {
      v21 = 136315138;
      v22 = "[WFNetworkListController _cleanUpStatesForDismissal]";
      _os_log_impl(&dword_273ECD000, v3, v4, "%s: enabling autojoin", &v21, 0xCu);
    }

    v5 = [(WFNetworkListController *)self wifiClient];
    [v5 setAutoJoinEnabled:1];

    [(WFNetworkListController *)self _dismissVisibleContext];
    v6 = [(WFNetworkListController *)self associationContext];

    if (v6)
    {
      v7 = WFLogForCategory(0);
      v8 = OSLogForWFLogLevel(1uLL);
      if (WFCurrentLogLevel() && v7)
      {
        v9 = v7;
        if (os_log_type_enabled(v9, v8))
        {
          v10 = [(WFNetworkListController *)self associationContext];
          v21 = 136315394;
          v22 = "[WFNetworkListController _cleanUpStatesForDismissal]";
          v23 = 2112;
          v24 = v10;
          _os_log_impl(&dword_273ECD000, v9, v8, "%s: association context %@", &v21, 0x16u);
        }
      }

      v11 = [(WFNetworkListController *)self associationContext];
      v12 = [v11 state];

      if (v12 == 2)
      {
        v13 = WFLogForCategory(0);
        v14 = OSLogForWFLogLevel(1uLL);
        if (WFCurrentLogLevel() && v13)
        {
          v15 = v13;
          if (os_log_type_enabled(v15, v14))
          {
            v16 = [(WFNetworkListController *)self associationContext];
            v17 = [v16 networkName];
            v21 = 136315394;
            v22 = "[WFNetworkListController _cleanUpStatesForDismissal]";
            v23 = 2112;
            v24 = v17;
            _os_log_impl(&dword_273ECD000, v15, v14, "%s: canceling association to %@ waiting on user input due to backgrounding", &v21, 0x16u);
          }
        }

        v18 = [MEMORY[0x277CCA9B8] associationErrorWithReason:15];
        [(WFNetworkListController *)self _associationDidFinish:1 error:v18 network:0];
      }

      v19 = [(WFNetworkListController *)self associationContextQueue];
      [v19 removeAll];

      [(WFNetworkListController *)self setAssociationContext:0];
    }

    [(WFNetworkListController *)self setKnownHiddenNetworkNames:0];
    [(WFNetworkListController *)self setRetainedNetworkListController:0];
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_networkRestrictionStateDidChange:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = [(WFNetworkListController *)self wifiClient];
  v5 = [v4 isNetworkRestrictionActive];

  v6 = WFLogForCategory(0);
  v7 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v6 && os_log_type_enabled(v6, v7))
  {
    v22 = 136315394;
    v23 = "[WFNetworkListController _networkRestrictionStateDidChange:]";
    v24 = 1024;
    v25 = v5;
    _os_log_impl(&dword_273ECD000, v6, v7, "%s: network restriction did change (new state: %d)", &v22, 0x12u);
  }

  v8 = v5 ^ 1u;
  v9 = [(WFNetworkListController *)self viewController];
  [v9 setShowOtherNetwork:v8];

  v10 = [(WFNetworkListController *)self viewController];
  [v10 refresh];

  v11 = [(WFNetworkListController *)self scanManager];
  [v11 pause];

  if (v8)
  {
    v20 = [(WFNetworkListController *)self scanManager];
    [v20 resume];

    [(WFNetworkListController *)self setCanScanForPersonalHotspots:v8];
    [(WFNetworkListController *)self _startHotspotScan];
  }

  else
  {
    v12 = [(WFNetworkListController *)self gasController];
    [v12 removeAllProfiles];

    v13 = [(WFNetworkListController *)self viewController];
    [v13 setNetworks:0];

    v14 = [(WFNetworkListController *)self scanManager];
    [v14 resume];

    v15 = [(WFNetworkListController *)self scanManager];
    v16 = [(WFNetworkListController *)self networks];
    v17 = [(WFNetworkListController *)self scanManager:v15 filterScanResults:v16];
    [(WFNetworkListController *)self setNetworks:v17];

    v18 = [(WFNetworkListController *)self viewController];
    v19 = [(WFNetworkListController *)self networks];
    [v18 setNetworks:v19];

    [(WFNetworkListController *)self setCanScanForPersonalHotspots:v8];
    [(WFNetworkListController *)self _stopHotspotScan];
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)_powerModificationDisableStateDidChange:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = [(WFNetworkListController *)self wifiClient];
  v5 = [v4 isPowerModificationDisabled];

  v6 = WFLogForCategory(0);
  v7 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v6 && os_log_type_enabled(v6, v7))
  {
    v8 = "Enabled";
    if (v5)
    {
      v8 = "Disabled";
    }

    v13 = 136315394;
    v14 = "[WFNetworkListController _powerModificationDisableStateDidChange:]";
    v15 = 2080;
    v16 = v8;
    _os_log_impl(&dword_273ECD000, v6, v7, "%s: Power Modification %s", &v13, 0x16u);
  }

  v9 = [(WFNetworkListController *)self viewController];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = [(WFNetworkListController *)self viewController];
    [v11 powerModificationStateDidChange:v5];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_managedAppleIDStateDidChange:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = [(WFNetworkListController *)self wifiClient];
  v5 = [v4 isManagedAppleID];

  v6 = WFLogForCategory(0);
  v7 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v6 && os_log_type_enabled(v6, v7))
  {
    v8 = "Non-Managed";
    if (v5)
    {
      v8 = "Managed";
    }

    v13 = 136315394;
    v14 = "[WFNetworkListController _managedAppleIDStateDidChange:]";
    v15 = 2080;
    v16 = v8;
    _os_log_impl(&dword_273ECD000, v6, v7, "%s: %s Account", &v13, 0x16u);
  }

  v9 = [(WFNetworkListController *)self viewController];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = [(WFNetworkListController *)self viewController];
    [v11 managedAppleIDStateChange:v5];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)removeScanCache
{
  v3 = WFLogForCategory(0);
  v4 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v3 && os_log_type_enabled(v3, v4))
  {
    *v8 = 0;
    _os_log_impl(&dword_273ECD000, v3, v4, "removing scan cache", v8, 2u);
  }

  [(WFNetworkListController *)self setNetworks:0];
  v5 = [(WFNetworkListController *)self viewController];
  [v5 setNetworks:0];

  v6 = [(WFNetworkListController *)self viewController];
  [v6 refresh];

  v7 = [(WFNetworkListController *)self gasController];
  [v7 removeAllProfiles];

  [(WFNetworkListController *)self setFirstScanFinished:0];
}

- (void)_powerStateChanged
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [(WFNetworkListController *)self wifiClient];
  -[WFNetworkListController setPowerState:](self, "setPowerState:", [v3 powered]);

  v4 = WFLogForCategory(0);
  v5 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v4)
  {
    v6 = v4;
    if (os_log_type_enabled(v6, v5))
    {
      [(WFNetworkListController *)self powerState];
      v7 = WFPowerStateToggleToString();
      v11 = 136315394;
      v12 = "[WFNetworkListController _powerStateChanged]";
      v13 = 2112;
      v14 = v7;
      _os_log_impl(&dword_273ECD000, v6, v5, "%s: power state changed to %@", &v11, 0x16u);
    }
  }

  [(WFNetworkListController *)self setPowerState:[(WFNetworkListController *)self powerState]];
  if ([(WFNetworkListController *)self powerState]== 1)
  {
    [(WFNetworkListController *)self _resumeScanning];
  }

  else
  {
    v8 = [(WFNetworkListController *)self scanManager];
    [v8 stop];

    [(WFNetworkListController *)self _stopHotspotScan];
    [(WFNetworkListController *)self setNetworks:0];
    [(WFNetworkListController *)self setFirstScanFinished:0];
    v9 = [(WFNetworkListController *)self associationContextQueue];
    [v9 removeAll];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_updatePowerState
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = WFLogForCategory(0);
  v4 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v3 && os_log_type_enabled(v3, v4))
  {
    *buf = 136315138;
    v10 = "[WFNetworkListController _updatePowerState]";
    _os_log_impl(&dword_273ECD000, v3, v4, "%s: updating power state", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v5 = [(WFNetworkListController *)self wifiClient];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__WFNetworkListController__updatePowerState__block_invoke;
  v7[3] = &unk_279EBD138;
  objc_copyWeak(&v8, buf);
  v7[4] = self;
  [v5 asyncPowered:v7];

  objc_destroyWeak(&v8);
  objc_destroyWeak(buf);
  v6 = *MEMORY[0x277D85DE8];
}

void __44__WFNetworkListController__updatePowerState__block_invoke(uint64_t a1, unsigned int a2)
{
  v33 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WFLogForCategory(0);
  v6 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v5 && os_log_type_enabled(v5, v6))
  {
    *buf = 136315394;
    v30 = "[WFNetworkListController _updatePowerState]_block_invoke";
    v31 = 1024;
    v32 = a2;
    _os_log_impl(&dword_273ECD000, v5, v6, "%s: powered %d", buf, 0x12u);
  }

  v7 = [WeakRetained interface];
  v8 = v7 == 0;

  if (v8)
  {
    v9 = 3;
  }

  else
  {
    v9 = a2;
  }

  [WeakRetained setPowerState:v9];
  v10 = [WeakRetained interface];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __44__WFNetworkListController__updatePowerState__block_invoke_114;
  v27[3] = &unk_279EBD1C8;
  objc_copyWeak(&v28, (a1 + 40));
  [v10 asyncCurrentNetwork:v27];

  if (a2)
  {
    v11 = [MEMORY[0x277D75128] sharedApplication];
    v12 = [v11 applicationState] == 0;

    if (!v12)
    {
      v13 = WFLogForCategory(0);
      v14 = OSLogForWFLogLevel(3uLL);
      if (WFCurrentLogLevel() < 3 || !v13 || !os_log_type_enabled(v13, v14))
      {
        goto LABEL_21;
      }

      *buf = 0;
      v15 = "WiFi application status is not active";
      goto LABEL_19;
    }

    if ([WeakRetained isAssociating])
    {
      v13 = WFLogForCategory(0);
      v14 = OSLogForWFLogLevel(3uLL);
      if (WFCurrentLogLevel() < 3 || !v13 || !os_log_type_enabled(v13, v14))
      {
        goto LABEL_21;
      }

      *buf = 0;
      v15 = "not resuming scans due to in progress association";
LABEL_19:
      v16 = v13;
      v17 = v14;
      v18 = 2;
LABEL_20:
      _os_log_impl(&dword_273ECD000, v16, v17, v15, buf, v18);
LABEL_21:

      goto LABEL_22;
    }

    v20 = [*(a1 + 32) viewController];
    v21 = objc_opt_respondsToSelector();

    if (v21)
    {
      v22 = [*(a1 + 32) viewController];
      v23 = [v22 networkListVisible];

      if ((v23 & 1) == 0)
      {
        v13 = WFLogForCategory(0);
        v26 = OSLogForWFLogLevel(3uLL);
        if (WFCurrentLogLevel() < 3 || !v13 || !os_log_type_enabled(v13, v26))
        {
          goto LABEL_21;
        }

        *buf = 136315138;
        v30 = "[WFNetworkListController _updatePowerState]_block_invoke";
        v15 = "%s: Skipping scanning for setup until wifi page is visible";
        v16 = v13;
        v17 = v26;
        v18 = 12;
        goto LABEL_20;
      }
    }

    v24 = WFLogForCategory(0);
    v25 = OSLogForWFLogLevel(3uLL);
    if (WFCurrentLogLevel() >= 3 && v24 && os_log_type_enabled(v24, v25))
    {
      *buf = 136315138;
      v30 = "[WFNetworkListController _updatePowerState]_block_invoke";
      _os_log_impl(&dword_273ECD000, v24, v25, "%s: resuming scans due to power state", buf, 0xCu);
    }

    [WeakRetained _resumeScanning];
  }

LABEL_22:
  objc_destroyWeak(&v28);

  v19 = *MEMORY[0x277D85DE8];
}

void __44__WFNetworkListController__updatePowerState__block_invoke_114(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained isHS20Supported];
  if (v3)
  {
    if (v5)
    {
      if ([v3 isHotspot20])
      {
        v6 = [v3 matchingKnownNetworkProfile];

        if (!v6)
        {
          v7 = WFLogForCategory(0);
          v8 = OSLogForWFLogLevel(3uLL);
          if (WFCurrentLogLevel() >= 3 && v7 && os_log_type_enabled(v7, v8))
          {
            v11 = 136315394;
            v12 = "[WFNetworkListController _updatePowerState]_block_invoke";
            v13 = 2112;
            v14 = v3;
            _os_log_impl(&dword_273ECD000, v7, v8, "%s: resolving profile for %@", &v11, 0x16u);
          }

          v9 = [WeakRetained gasController];
          [v9 resolveProfileForNetwork:v3 handler:&__block_literal_global_118 force:1];
        }
      }
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __44__WFNetworkListController__updatePowerState__block_invoke_115(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v6 = WFLogForCategory(5uLL);
  v7 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v6 && os_log_type_enabled(v6, v7))
  {
    v9 = 138412546;
    v10 = v4;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&dword_273ECD000, v6, v7, "resolved profile %@ error %@", &v9, 0x16u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)startScanning
{
  v3 = WFLogForCategory(6uLL);
  v4 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v3 && os_log_type_enabled(v3, v4))
  {
    *v6 = 0;
    _os_log_impl(&dword_273ECD000, v3, v4, "start scanning", v6, 2u);
  }

  [(WFNetworkListController *)self _startHotspotScan];
  v5 = [(WFNetworkListController *)self scanManager];
  [v5 start];
}

- (void)stopScanning
{
  v3 = WFLogForCategory(6uLL);
  v4 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v3 && os_log_type_enabled(v3, v4))
  {
    *v6 = 0;
    _os_log_impl(&dword_273ECD000, v3, v4, "stop scanning", v6, 2u);
  }

  [(WFNetworkListController *)self _stopHotspotScan];
  v5 = [(WFNetworkListController *)self scanManager];
  [v5 stop];
}

- (void)_resumeScanning
{
  v3 = WFLogForCategory(6uLL);
  v4 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v3 && os_log_type_enabled(v3, v4))
  {
    *v6 = 0;
    _os_log_impl(&dword_273ECD000, v3, v4, "resume scans", v6, 2u);
  }

  [(WFNetworkListController *)self _startHotspotScan];
  v5 = [(WFNetworkListController *)self scanManager];
  [v5 resume];
}

- (BOOL)_shouldPauseScanning
{
  v3 = [(WFNetworkListController *)self scanManager];
  if ([v3 state] == 1)
  {
    v4 = 1;
  }

  else
  {
    v5 = [(WFNetworkListController *)self scanManager];
    v4 = [v5 state] == 2;
  }

  return v4;
}

- (void)_pauseScanning
{
  v2 = [(WFNetworkListController *)self scanManager];
  [v2 pause];
}

- (void)_startHotspotScan
{
  v15 = *MEMORY[0x277D85DE8];
  if ([(WFNetworkListController *)self scanForPersonalHotspots]&& [(WFNetworkListController *)self canScanForPersonalHotspots])
  {
    v8 = [(WFNetworkListController *)self hotspotInterface];
    [v8 startBrowsing];
    v3 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v4 = WFLogForCategory(0);
    v5 = OSLogForWFLogLevel(3uLL);
    if (WFCurrentLogLevel() >= 3 && v4)
    {
      v6 = v4;
      if (os_log_type_enabled(v6, v5))
      {
        *buf = 136315650;
        v10 = "[WFNetworkListController _startHotspotScan]";
        v11 = 1024;
        v12 = [(WFNetworkListController *)self scanForPersonalHotspots];
        v13 = 1024;
        v14 = [(WFNetworkListController *)self canScanForPersonalHotspots];
        _os_log_impl(&dword_273ECD000, v6, v5, "%s: hotspot scanning disabled (scan %d, canScan %d)", buf, 0x18u);
      }
    }

    v7 = *MEMORY[0x277D85DE8];
  }
}

- (void)_stopHotspotScan
{
  v2 = [(WFNetworkListController *)self hotspotInterface];
  [v2 stopBrowsing];
}

- (void)_updateViewControllerScanResults
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__WFNetworkListController__updateViewControllerScanResults__block_invoke;
  block[3] = &unk_279EBCFE0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __59__WFNetworkListController__updateViewControllerScanResults__block_invoke(uint64_t a1)
{
  v138 = *MEMORY[0x277D85DE8];
  v1 = [*(a1 + 32) networks];

  if (v1)
  {
    v2 = *(a1 + 32);
    v3 = [v2 scanManager];
    v4 = [*(a1 + 32) networks];
    v5 = [v2 scanManager:v3 filterScanResults:v4];

    v6 = MEMORY[0x277CBEB98];
    v7 = [v5 allObjects];
    v8 = [v6 setWithArray:v7];
    v9 = [v8 allObjects];

    v97 = [MEMORY[0x277CBEB58] setWithArray:v9];
  }

  else
  {
    v97 = [MEMORY[0x277CBEB58] set];
  }

  v10 = [*(a1 + 32) hotspotInterface];
  v98 = [v10 networks];

  if (v98)
  {
    v101 = [v97 mutableCopy];
    v108 = [v101 mutableCopy];
    v109 = [v98 mutableCopy];
    v123 = 0u;
    v124 = 0u;
    v125 = 0u;
    v126 = 0u;
    obj = v98;
    v102 = [obj countByEnumeratingWithState:&v123 objects:v137 count:16];
    if (v102)
    {
      v100 = *v124;
      do
      {
        v11 = 0;
        do
        {
          if (*v124 != v100)
          {
            v12 = v11;
            objc_enumerationMutation(obj);
            v11 = v12;
          }

          v104 = v11;
          v13 = MEMORY[0x277CCAC30];
          v110 = *(*(&v123 + 1) + 8 * v11);
          v14 = [v110 ssid];
          v15 = [v13 predicateWithFormat:@"ssid == %@", v14];
          v105 = [v109 filteredSetUsingPredicate:v15];

          if ([v105 count] >= 2)
          {
            v16 = WFLogForCategory(0);
            v17 = OSLogForWFLogLevel(3uLL);
            if (WFCurrentLogLevel() >= 3 && v16 && os_log_type_enabled(v16, v17))
            {
              *buf = 0;
              _os_log_impl(&dword_273ECD000, v16, v17, "More than one HS of same name nearby!", buf, 2u);
            }

            *buf = 0;
            *&buf[8] = buf;
            *&buf[16] = 0x3032000000;
            v134 = __Block_byref_object_copy_;
            v135 = __Block_byref_object_dispose_;
            v136 = &stru_2882E4AD8;
            v122[0] = MEMORY[0x277D85DD0];
            v122[1] = 3221225472;
            v122[2] = __59__WFNetworkListController__updateViewControllerScanResults__block_invoke_131;
            v122[3] = &unk_279EBD1F0;
            v122[4] = buf;
            [v105 enumerateObjectsUsingBlock:v122];
            v18 = WFLogForCategory(0);
            v19 = OSLogForWFLogLevel(4uLL);
            if (WFCurrentLogLevel() >= 4 && v18 && os_log_type_enabled(v18, v19))
            {
              v20 = *(*&buf[8] + 40);
              *v128 = 138412290;
              v129 = v20;
              _os_log_impl(&dword_273ECD000, v18, v19, "Hotspot networks: %@", v128, 0xCu);
            }

            v120 = 0u;
            v121 = 0u;
            v118 = 0u;
            v119 = 0u;
            v21 = v105;
            v22 = [v21 countByEnumeratingWithState:&v118 objects:v132 count:16];
            if (v22)
            {
              v23 = 0;
              v24 = *v119;
              do
              {
                v25 = 0;
                v26 = -v23;
                v106 = v23 + v22;
                do
                {
                  if (*v119 != v24)
                  {
                    objc_enumerationMutation(v21);
                  }

                  v27 = *(*(&v118 + 1) + 8 * v25);
                  if (v27)
                  {
                    v28 = v26 == v25;
                  }

                  else
                  {
                    v28 = 1;
                  }

                  if (v28)
                  {
                    v29 = WFLogForCategory(0);
                    v30 = OSLogForWFLogLevel(4uLL);
                    if (WFCurrentLogLevel() >= 4 && v29)
                    {
                      v31 = v29;
                      if (os_log_type_enabled(v31, v30))
                      {
                        v32 = [v27 ssid];
                        v33 = [v27 uniqueIdentifier];
                        *v128 = 138412546;
                        v129 = v32;
                        v130 = 2048;
                        v131 = v33;
                        _os_log_impl(&dword_273ECD000, v31, v30, "Shown hotspot: %@, uniqueidentifier: %lu\n", v128, 0x16u);
                      }
                    }
                  }

                  else
                  {
                    [v109 removeObject:*(*(&v118 + 1) + 8 * v25)];
                  }

                  ++v25;
                }

                while (v22 != v25);
                v22 = [v21 countByEnumeratingWithState:&v118 objects:v132 count:16];
                v23 = v106;
              }

              while (v22);
            }

            _Block_object_dispose(buf, 8);
          }

          v34 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", objc_msgSend(v110, "uniqueIdentifier")];
          v35 = [WFNetworkProfile alloc];
          v36 = [*(a1 + 32) interface];
          v37 = [v36 currentNetwork];
          v38 = [v37 matchingKnownNetworkProfile];
          v107 = [(WFNetworkProfile *)v35 initWithCoreWiFiProfile:v38];

          if (v110)
          {
            if (v107)
            {
              v39 = [(WFNetworkProfile *)v107 hotspotDeviceIdentifier];
              v40 = [v39 isEqualToString:v34];

              if (v40)
              {
                v41 = WFLogForCategory(0);
                v42 = OSLogForWFLogLevel(4uLL);
                if (WFCurrentLogLevel() >= 4 && v41 && os_log_type_enabled(v41, v42))
                {
                  *buf = 0;
                  _os_log_impl(&dword_273ECD000, v41, v42, "Removing current connected hotspot from scan results", buf, 2u);
                }

                [v109 removeObject:v110];
              }
            }
          }

          v117 = 0u;
          v115 = 0u;
          v116 = 0u;
          v114 = 0u;
          v43 = v101;
          v44 = [v43 countByEnumeratingWithState:&v114 objects:v127 count:16];
          if (v44)
          {
            v45 = *v115;
            do
            {
              for (i = 0; i != v44; ++i)
              {
                if (*v115 != v45)
                {
                  objc_enumerationMutation(v43);
                }

                v47 = *(*(&v114 + 1) + 8 * i);
                if (v47)
                {
                  v48 = [*(*(&v114 + 1) + 8 * i) ssid];
                  v49 = [v110 ssid];
                  if ([v48 isEqualToString:v49])
                  {
                    v50 = [v47 iOSHotspot];

                    if (v50)
                    {
                      v51 = WFLogForCategory(0);
                      v52 = OSLogForWFLogLevel(4uLL);
                      if (WFCurrentLogLevel() >= 4 && v51)
                      {
                        v53 = v51;
                        if (os_log_type_enabled(v53, v52))
                        {
                          v54 = [v110 ssid];
                          *buf = 138412290;
                          *&buf[4] = v54;
                          _os_log_impl(&dword_273ECD000, v53, v52, "Removing AP record for hotspot ssid: %@", buf, 0xCu);
                        }
                      }

                      [v108 removeObject:v47];
                    }
                  }

                  else
                  {
                  }
                }
              }

              v44 = [v43 countByEnumeratingWithState:&v114 objects:v127 count:16];
            }

            while (v44);
          }

          v11 = v104 + 1;
        }

        while (v104 + 1 != v102);
        v102 = [obj countByEnumeratingWithState:&v123 objects:v137 count:16];
      }

      while (v102);
    }

    v55 = WFLogForCategory(0);
    v56 = OSLogForWFLogLevel(4uLL);
    if (WFCurrentLogLevel() >= 4 && v55)
    {
      v57 = v55;
      if (os_log_type_enabled(v57, v56))
      {
        v58 = [v109 count];
        v59 = [v108 count];
        *buf = 134218240;
        *&buf[4] = v58;
        *&buf[12] = 2048;
        *&buf[14] = v59;
        _os_log_impl(&dword_273ECD000, v57, v56, "Hotspots count: %lu, AP count: %lu", buf, 0x16u);
      }
    }

    v60 = [v108 mutableCopy];
    [v60 unionSet:v109];
  }

  else
  {
    v60 = v97;
  }

  if ([*(a1 + 32) isAssociating])
  {
    v61 = [*(a1 + 32) associationContext];
    v62 = v61 == 0;

    if (!v62)
    {
      v63 = WFLogForCategory(0);
      v64 = OSLogForWFLogLevel(1uLL);
      if (WFCurrentLogLevel() && v63 && os_log_type_enabled(v63, v64))
      {
        *buf = 136315138;
        *&buf[4] = "[WFNetworkListController _updateViewControllerScanResults]_block_invoke";
        _os_log_impl(&dword_273ECD000, v63, v64, "%s: update during association", buf, 0xCu);
      }

      v65 = [*(a1 + 32) associationContext];
      v66 = [v65 network];
      if (v66)
      {
        if ([*(a1 + 32) isAirPortSettings])
        {
          v67 = [*(a1 + 32) associationContext];
          v68 = [v67 network];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            goto LABEL_109;
          }
        }

        else
        {
        }

        v87 = WFLogForCategory(0);
        v88 = OSLogForWFLogLevel(1uLL);
        if (WFCurrentLogLevel() && v87)
        {
          v89 = v87;
          if (os_log_type_enabled(v89, v88))
          {
            v90 = [*(a1 + 32) associationContext];
            v91 = [v90 network];
            *buf = 136315394;
            *&buf[4] = "[WFNetworkListController _updateViewControllerScanResults]_block_invoke";
            *&buf[12] = 2114;
            *&buf[14] = v91;
            _os_log_impl(&dword_273ECD000, v89, v88, "%s: removing associationCtx network %{public}@ from scan results", buf, 0x16u);
          }
        }

        v65 = [*(a1 + 32) associationContext];
        v92 = [v65 network];
        [v60 removeObject:v92];
      }

      goto LABEL_108;
    }
  }

  v70 = [*(a1 + 32) interface];
  v71 = [v70 currentNetwork];

  if (v71)
  {
    v72 = [*(a1 + 32) interface];
    v65 = [v72 currentNetwork];

    if (v65)
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v134 = __Block_byref_object_copy_;
      v135 = __Block_byref_object_dispose_;
      v136 = objc_opt_new();
      v113[0] = MEMORY[0x277D85DD0];
      v113[1] = 3221225472;
      v113[2] = __59__WFNetworkListController__updateViewControllerScanResults__block_invoke_142;
      v113[3] = &unk_279EBD218;
      v113[4] = *(a1 + 32);
      v113[5] = buf;
      [v60 enumerateObjectsUsingBlock:v113];
      if ([*(*&buf[8] + 40) count])
      {
        v73 = WFLogForCategory(0);
        v74 = OSLogForWFLogLevel(3uLL);
        if (WFCurrentLogLevel() >= 3 && v73 && os_log_type_enabled(v73, v74))
        {
          v75 = *(*&buf[8] + 40);
          *v128 = 136315394;
          v129 = "[WFNetworkListController _updateViewControllerScanResults]_block_invoke_2";
          v130 = 2112;
          v131 = v75;
          _os_log_impl(&dword_273ECD000, v73, v74, "%s: networks to remove from scan list='%@'", v128, 0x16u);
        }
      }

      v76 = *(*&buf[8] + 40);
      v111[0] = MEMORY[0x277D85DD0];
      v111[1] = 3221225472;
      v111[2] = __59__WFNetworkListController__updateViewControllerScanResults__block_invoke_144;
      v111[3] = &unk_279EBD240;
      v112 = v60;
      [v76 enumerateObjectsUsingBlock:v111];
      if ([v65 isHotspot20])
      {
        v77 = [v65 matchingKnownNetworkProfile];
        v78 = v77;
        if (v77)
        {
          v79 = [v77 displayedOperatorName];
          v80 = [*(a1 + 32) viewController];
          v81 = [v80 currentNetwork];
          [v81 setHotspot20Name:v79];
        }

        else
        {
          v79 = WFLogForCategory(0);
          v96 = OSLogForWFLogLevel(4uLL);
          if (WFCurrentLogLevel() >= 4 && v79 && os_log_type_enabled(v79, v96))
          {
            *v128 = 136315394;
            v129 = "[WFNetworkListController _updateViewControllerScanResults]_block_invoke_2";
            v130 = 2112;
            v131 = v65;
            _os_log_impl(&dword_273ECD000, v79, v96, "%s: no profile for network='%@'", v128, 0x16u);
          }
        }
      }

      v82 = [*(a1 + 32) viewController];
      v83 = [v82 currentNetwork];
      v84 = [v83 isEqual:v65];

      if ((v84 & 1) == 0)
      {
        v85 = WFLogForCategory(0);
        v86 = OSLogForWFLogLevel(3uLL);
        if (WFCurrentLogLevel() >= 3 && v85 && os_log_type_enabled(v85, v86))
        {
          *v128 = 136315138;
          v129 = "[WFNetworkListController _updateViewControllerScanResults]_block_invoke";
          _os_log_impl(&dword_273ECD000, v85, v86, "%s: view controller current network mismatch, force update", v128, 0xCu);
        }

        [*(a1 + 32) _updateViewControllerConnectedNetwork:v65];
      }

      _Block_object_dispose(buf, 8);
    }

LABEL_108:
  }

LABEL_109:
  v93 = [*(a1 + 32) viewController];
  [v93 setNetworks:v60];

  v94 = [*(a1 + 32) scanMetricsManager];
  [v94 ingestScanResults:v60];

  v95 = *MEMORY[0x277D85DE8];
}

void __59__WFNetworkListController__updateViewControllerScanResults__block_invoke_131(uint64_t a1, void *a2)
{
  v3 = *(*(*(a1 + 32) + 8) + 40);
  v4 = MEMORY[0x277CCACA8];
  v5 = a2;
  v11 = [v5 ssid];
  v6 = [v5 uniqueIdentifier];

  v7 = [v4 stringWithFormat:@"network ssid: %@, uniqueidentifier: %lu\n", v11, v6];
  v8 = [v3 stringByAppendingString:v7];
  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

void __59__WFNetworkListController__updateViewControllerScanResults__block_invoke_142(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [*(a1 + 32) interface];
  v4 = [v3 currentNetwork];
  v5 = [v4 ssid];

  v6 = [v7 ssid];
  LODWORD(v4) = [v6 isEqualToString:v5];

  if (v4)
  {
    [*(*(*(a1 + 40) + 8) + 40) addObject:v7];
  }
}

- (void)scanManagerScanningWillStart:(id)a3
{
  v3 = WFLogForCategory(0);
  v4 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v3 && os_log_type_enabled(v3, v4))
  {
    *v5 = 0;
    _os_log_impl(&dword_273ECD000, v3, v4, "scanning started", v5, 2u);
  }
}

- (void)scanManager:(id)a3 stateDidChange:(int64_t)a4
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __54__WFNetworkListController_scanManager_stateDidChange___block_invoke;
  v4[3] = &unk_279EBCFB8;
  v4[4] = self;
  v4[5] = a4;
  dispatch_async(MEMORY[0x277D85CD0], v4);
}

void __54__WFNetworkListController_scanManager_stateDidChange___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) viewController];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40) == 2;
    v6 = [v4 viewController];
    [v6 setScanning:v5];
  }
}

- (void)scanManager:(id)a3 updatedPartialResults:(id)a4
{
  v44 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v33 = self;
  v6 = [(WFNetworkListController *)self networks];
  v7 = [v6 mutableCopy];

  if (!v7)
  {
    v7 = [MEMORY[0x277CBEB58] set];
  }

  v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v9 = v5;
  v10 = [v9 countByEnumeratingWithState:&v38 objects:v43 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v39;
    v13 = MEMORY[0x277CBEC38];
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v39 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v38 + 1) + 8 * i);
        v16 = [v15 ssid];
        v17 = [v8 objectForKey:v16];

        if (!v17)
        {
          v18 = [v15 ssid];
          [v8 setObject:v13 forKey:v18];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v38 objects:v43 count:16];
    }

    while (v11);
  }

  v32 = v7;
  v19 = [v7 allObjects];
  v20 = [v19 mutableCopy];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v21 = v19;
  v22 = [v21 countByEnumeratingWithState:&v34 objects:v42 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v35;
    do
    {
      for (j = 0; j != v23; ++j)
      {
        if (*v35 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = *(*(&v34 + 1) + 8 * j);
        if (v26)
        {
          v27 = [*(*(&v34 + 1) + 8 * j) ssid];
          v28 = [v8 objectForKey:v27];

          if (v28)
          {
            [v20 removeObject:v26];
          }
        }
      }

      v23 = [v21 countByEnumeratingWithState:&v34 objects:v42 count:16];
    }

    while (v23);
  }

  v29 = [MEMORY[0x277CBEB58] setWithArray:v20];

  v30 = [v9 allObjects];
  [v29 addObjectsFromArray:v30];

  [(WFNetworkListController *)v33 setNetworks:v29];
  [(WFNetworkListController *)v33 _updateViewControllerScanResults];

  v31 = *MEMORY[0x277D85DE8];
}

- (void)scanManagerScanningDidFinish:(id)a3 withResults:(id)a4 error:(id)a5
{
  v7 = a4;
  v8 = a5;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__WFNetworkListController_scanManagerScanningDidFinish_withResults_error___block_invoke;
  block[3] = &unk_279EBD268;
  block[4] = self;
  v12 = v7;
  v13 = v8;
  v9 = v8;
  v10 = v7;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __74__WFNetworkListController_scanManagerScanningDidFinish_withResults_error___block_invoke(id *a1)
{
  v38 = *MEMORY[0x277D85DE8];
  v2 = [a1[4] viewController];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [a1[4] viewController];
    [v4 setScanning:0];
  }

  v5 = a1[5];
  if ([a1[6] code] == 16 || objc_msgSend(a1[6], "code") == 37)
  {
    v6 = WFLogForCategory(0);
    v7 = OSLogForWFLogLevel(3uLL);
    if (WFCurrentLogLevel() >= 3 && v6)
    {
      v8 = v6;
      if (os_log_type_enabled(v8, v7))
      {
        v9 = [a1[6] code];
        v32 = 136315394;
        v33 = "[WFNetworkListController scanManagerScanningDidFinish:withResults:error:]_block_invoke";
        v34 = 2048;
        *v35 = v9;
        _os_log_impl(&dword_273ECD000, v8, v7, "%s: scan error (%ld), not updating UI scan list", &v32, 0x16u);
      }
    }

    v10 = WFLogForCategory(0);
    v11 = OSLogForWFLogLevel(3uLL);
    if (WFCurrentLogLevel() >= 3 && v10)
    {
      v12 = v10;
      if (os_log_type_enabled(v12, v11))
      {
        v13 = [a1[4] networks];
        v32 = 136315394;
        v33 = "[WFNetworkListController scanManagerScanningDidFinish:withResults:error:]_block_invoke";
        v34 = 2112;
        *v35 = v13;
        _os_log_impl(&dword_273ECD000, v12, v11, "%s: current networks %@", &v32, 0x16u);
      }
    }

    v14 = [a1[4] networks];

    v5 = v14;
  }

  [a1[4] setNetworks:v5];
  v15 = [a1[5] hs20Networks];
  if ([a1[4] knownNetworksContainsHS20Networks])
  {
    v16 = 1;
  }

  else
  {
    v17 = [a1[4] wifiClient];
    v16 = [v17 showAllHS20Networks];
  }

  v18 = [a1[4] isHS20Supported];
  if (v15)
  {
    v19 = WFLogForCategory(0);
    v20 = OSLogForWFLogLevel(3uLL);
    if (WFCurrentLogLevel() >= 3 && v19 && os_log_type_enabled(v19, v20))
    {
      v32 = 136315906;
      v33 = "[WFNetworkListController scanManagerScanningDidFinish:withResults:error:]_block_invoke";
      v34 = 1024;
      *v35 = v18;
      *&v35[4] = 1024;
      *&v35[6] = v16;
      v36 = 2112;
      v37 = v15;
      _os_log_impl(&dword_273ECD000, v19, v20, "%s: hs20Supported %d hs20ProfilesInstalled %d hs20 networks found in scan: %@", &v32, 0x22u);
    }
  }

  if (v18 && (([v15 count] != 0) & v16) == 1)
  {
    v21 = [a1[4] gasController];
    [v21 resolveProfilesForNetworks:v15];
  }

  [a1[4] _updateViewControllerScanResults];
  v22 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(a1[5], "count")}];
  [v22 setValue:v23 forKey:@"count"];

  v24 = [MEMORY[0x277CCAB98] defaultCenter];
  [v24 postNotificationName:@"WFNetworkListControllerScanDidFinishNotification" object:a1[4] userInfo:v22];

  if (!a1[6])
  {
    v25 = WFLogForCategory(0);
    v26 = OSLogForWFLogLevel(3uLL);
    if (WFCurrentLogLevel() >= 3 && v25 && os_log_type_enabled(v25, v26))
    {
      LOWORD(v32) = 0;
      _os_log_impl(&dword_273ECD000, v25, v26, "Remove all cache request sent to random manager because of a successful full cycle of scan!", &v32, 2u);
    }

    v27 = [a1[4] randomMACManager];
    v28 = [a1[4] interface];
    v29 = [v28 currentNetwork];
    v30 = [v29 ssid];
    [v27 resetCacheWithCurrentNetworkName:v30];
  }

  v31 = *MEMORY[0x277D85DE8];
}

- (void)scanManager:(id)a3 didFindHotspotHelperNetworks:(id)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = WFLogForCategory(0);
  v7 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v6 && os_log_type_enabled(v6, v7))
  {
    *buf = 136315394;
    v31 = "[WFNetworkListController scanManager:didFindHotspotHelperNetworks:]";
    v32 = 2112;
    v33 = v5;
    _os_log_impl(&dword_273ECD000, v6, v7, "%s: found hotspot helper networks %@", buf, 0x16u);
  }

  if (!v5)
  {
    [WFNetworkListController scanManager:didFindHotspotHelperNetworks:];
LABEL_31:
    v9 = 0;
    goto LABEL_28;
  }

  v8 = [(WFNetworkListController *)self networks];

  if (!v8)
  {
    [WFNetworkListController scanManager:didFindHotspotHelperNetworks:];
    goto LABEL_31;
  }

  v9 = [MEMORY[0x277CBEB58] set];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v24 = v5;
  v10 = v5;
  v11 = [v10 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v26;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v26 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v25 + 1) + 8 * i);
        v16 = [(WFNetworkListController *)self networks];
        v17 = [v15 ssid];
        v18 = [v16 scanRecordWithSSID:v17];

        if (v18)
        {
          [v9 addObject:v18];
        }

        else
        {
          v19 = WFLogForCategory(0);
          v20 = OSLogForWFLogLevel(3uLL);
          if (WFCurrentLogLevel() >= 3 && v19 && os_log_type_enabled(v19, v20))
          {
            *buf = 136315394;
            v31 = "[WFNetworkListController scanManager:didFindHotspotHelperNetworks:]";
            v32 = 2112;
            v33 = v15;
            _os_log_impl(&dword_273ECD000, v19, v20, "%s no matching scan record for helper network %@", buf, 0x16u);
          }
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v12);
  }

  if ([v9 count])
  {
    v21 = WFLogForCategory(0);
    v22 = OSLogForWFLogLevel(3uLL);
    if (WFCurrentLogLevel() >= 3 && v21 && os_log_type_enabled(v21, v22))
    {
      *buf = 136315394;
      v31 = "[WFNetworkListController scanManager:didFindHotspotHelperNetworks:]";
      v32 = 2112;
      v33 = v9;
      _os_log_impl(&dword_273ECD000, v21, v22, "%s: updating views for %@", buf, 0x16u);
    }

    [(WFNetworkListController *)self _updateViewsForNetworks:v9];
  }

  v5 = v24;
LABEL_28:

  v23 = *MEMORY[0x277D85DE8];
}

- (void)scanManager:(id)a3 willStartScanRequest:(id)a4
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a4;
  v5 = WFLogForCategory(6uLL);
  v6 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v5 && os_log_type_enabled(v5, v6))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&dword_273ECD000, v5, v6, "scan request: %@ started", &v8, 0xCu);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)scanManager:(id)a3 didFinishScanRequest:(id)a4 results:(id)a5 error:(id)a6 timeElapsed:(double)a7
{
  v37 = *MEMORY[0x277D85DE8];
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = WFLogForCategory(6uLL);
  v15 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v14)
  {
    v16 = v14;
    if (os_log_type_enabled(v16, v15))
    {
      *buf = 138412802;
      v32 = v11;
      v33 = 2048;
      v34 = [v12 count];
      v35 = 2048;
      v36 = a7;
      _os_log_impl(&dword_273ECD000, v16, v15, "scan request: %@ finished with %lu results in %f sec", buf, 0x20u);
    }
  }

  v17 = [v11 ssid];

  if (v17)
  {
    v18 = 2;
  }

  else
  {
    v18 = [v11 channelListIncludesTwoFour] ^ 1;
  }

  v29 = v18;
  v19 = +[WFMetricsManager sharedManager];
  v20 = [WFScanPerformanceEvent alloc];
  v21 = [(WFNetworkListController *)self firstScanFinished];
  v22 = [v12 count];
  v30 = v12;
  v23 = self;
  if (v13)
  {
    v24 = v13;
    v13 = [v13 code];
  }

  else
  {
    v24 = 0;
  }

  v25 = [v11 lowPriorityScan];
  LOBYTE(v28) = [v11 applyRssiThresholdFilter];
  v26 = [(WFScanPerformanceEvent *)v20 initWithScanReason:v29 timeElasped:a7 firstScan:!v21 results:v22 errorCode:v13 lowPriority:v25 rssiFilter:v28];
  [v19 processEvent:v26];

  [(WFNetworkListController *)v23 setFirstScanFinished:1];
  v27 = *MEMORY[0x277D85DE8];
}

- (BOOL)isAssociating
{
  v3 = [(WFNetworkListController *)self associationContext];
  if (v3)
  {
    v4 = [(WFNetworkListController *)self associationContext];
    if ([v4 state] == 1)
    {
      v5 = 1;
    }

    else
    {
      v6 = [(WFNetworkListController *)self associationContext];
      v5 = [v6 state] == 2;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_associateToScanRecord:(id)a3
{
  v4 = a3;
  if ([(WFNetworkListController *)self _canStartAssociationToNetwork:?])
  {
    [(WFNetworkListController *)self _associateToScanRecord:v4 profile:0];
  }
}

- (void)_associateToScanRecord:(id)a3 profile:(id)a4
{
  v55 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = WFLogForCategory(5uLL);
  v9 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v8)
  {
    v10 = v8;
    if (os_log_type_enabled(v10, v9))
    {
      v11 = [v6 ssid];
      *buf = 138412290;
      v50 = v11;
      _os_log_impl(&dword_273ECD000, v10, v9, "{ASSOC+} association started to %@", buf, 0xCu);
    }
  }

  if ([(WFNetworkListController *)self isAssociating])
  {
    v12 = WFLogForCategory(0);
    v13 = OSLogForWFLogLevel(2uLL);
    if (WFCurrentLogLevel() >= 2 && v12)
    {
      v14 = v12;
      if (os_log_type_enabled(v14, v13))
      {
        v15 = [(WFNetworkListController *)self associationContext];
        v16 = [v15 stateDescription];
        v17 = [(WFNetworkListController *)self associationContext];
        v18 = [v17 networkName];
        *buf = 136315650;
        v50 = "[WFNetworkListController _associateToScanRecord:profile:]";
        v51 = 2112;
        v52 = v16;
        v53 = 2112;
        v54 = v18;
        _os_log_impl(&dword_273ECD000, v14, v13, "%s association state is <%@> with network %@", buf, 0x20u);
      }
    }
  }

  v19 = [(WFNetworkListController *)self _shouldPauseScanning];
  v20 = WFLogForCategory(0);
  v21 = OSLogForWFLogLevel(4uLL);
  if (WFCurrentLogLevel() >= 4 && v20 && os_log_type_enabled(v20, v21))
  {
    *buf = 136315394;
    v50 = "[WFNetworkListController _associateToScanRecord:profile:]";
    v51 = 1024;
    LODWORD(v52) = v19;
    _os_log_impl(&dword_273ECD000, v20, v21, "%s- should pause scanning %d", buf, 0x12u);
  }

  if (v19)
  {
    [(WFNetworkListController *)self _pauseScanning];
  }

  v22 = [(WFNetworkListController *)self viewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  v24 = [(WFNetworkListController *)self viewController];
  v25 = objc_opt_respondsToSelector();

  if (v25)
  {
    v43 = MEMORY[0x277D85DD0];
    v44 = 3221225472;
    v45 = __58__WFNetworkListController__associateToScanRecord_profile___block_invoke;
    v46 = &unk_279EBD290;
    v47 = self;
    v48 = v6;
    dispatch_async(MEMORY[0x277D85CD0], &v43);
  }

  else
  {
    v26 = [(WFNetworkListController *)self viewController];
    [v26 setCurrentNetwork:v6];
  }

  if ([(WFNetworkListController *)self viewControllerSupportsCurrentNetworkSubtitle:v43])
  {
    v27 = [(WFNetworkListController *)self viewController];
    [v27 setCurrentNetworkSubtitle:0];
  }

  v28 = [(WFNetworkListController *)self viewController];
  v29 = objc_opt_respondsToSelector();

  [v6 scaledRSSI];
  v31 = v30;
  if (v29)
  {
    v32 = WFSignalBarsFromScaledRSSI();
    v33 = [(WFNetworkListController *)self viewController];
    [v33 setCurrentNetworkSignalBars:v32];
  }

  else
  {
    v33 = [(WFNetworkListController *)self viewController];
    LODWORD(v34) = v31;
    [v33 setCurrentNetworkScaledRSSI:v34];
  }

  v35 = [(WFNetworkListController *)self viewController];
  [v35 setCurrentNetworkState:1];

LABEL_32:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v36 = v6;
    v37 = [(WFNetworkListController *)self viewController];
    v38 = [v37 currentNetworkState];

    if (v38 == 1)
    {
      v39 = WFLogForCategory(0);
      v40 = OSLogForWFLogLevel(3uLL);
      if (WFCurrentLogLevel() >= 3 && v39 && os_log_type_enabled(v39, v40))
      {
        *buf = 0;
        _os_log_impl(&dword_273ECD000, v39, v40, "Joining a hotspot while another association is in progress", buf, 2u);
      }
    }

    [(WFNetworkListController *)self _associateToHotspotDevice:v36];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_44;
    }

    v41 = v6;
    if ([v41 isUnconfiguredAccessory])
    {
      [(WFNetworkListController *)self _associateToUnconfiguredAccessory:v41];
    }

    else if ([v41 isHotspot20] && -[WFNetworkListController isHS20Supported](self, "isHS20Supported"))
    {
      [(WFNetworkListController *)self _associateToHS20Network:v41];
    }

    else if ([v41 isEnterprise])
    {
      [(WFNetworkListController *)self _associateToEnterpriseNetwork:v41 profile:v7];
    }

    else
    {
      [(WFNetworkListController *)self _associateToNetwork:v41 profile:v7];
    }
  }

LABEL_44:
  v42 = *MEMORY[0x277D85DE8];
}

void __58__WFNetworkListController__associateToScanRecord_profile___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) viewController];
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) interface];
  v4 = [v3 currentNetwork];
  [v5 setCurrentNetwork:v2 previousNetwork:v4 reason:1];
}

- (BOOL)_isChannelAllowedForScanPerCurrentLocale:(int64_t)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [(WFNetworkListController *)self interface];
  v5 = [v4 deviceScanChannelsPerCurLocale];

  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        if ([*(*(&v13 + 1) + 8 * i) channel] == a3)
        {
          v10 = 1;
          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)_associateToHotspotDevice:(id)a3
{
  v4 = a3;
  [(WFNetworkListController *)self _associationWillStart:v4];
  v5 = dispatch_get_global_queue(21, 0);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__WFNetworkListController__associateToHotspotDevice___block_invoke;
  v7[3] = &unk_279EBD290;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __53__WFNetworkListController__associateToHotspotDevice___block_invoke(uint64_t a1)
{
  v187 = *MEMORY[0x277D85DE8];
  v139 = [MEMORY[0x277CBEAA8] date];
  v2 = WFLogForCategory(0);
  v3 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v2 && os_log_type_enabled(v2, v3))
  {
    *buf = 136315394;
    *&buf[4] = "[WFNetworkListController _associateToHotspotDevice:]_block_invoke";
    *&buf[12] = 2112;
    *&buf[14] = v139;
    _os_log_impl(&dword_273ECD000, v2, v3, "%s: TIME: start %@", buf, 0x16u);
  }

  v4 = +[WFMetricsManager sharedManager];
  v5 = [WFInstantHotspotJoinEvent joinEventWithType:0 latency:0 channel:0 error:0.0];
  [v4 processEvent:v5];

  v6 = 0;
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v184 = __Block_byref_object_copy_;
  v185 = __Block_byref_object_dispose_;
  v186 = 0;
  while (1)
  {
    v7 = WFLogForCategory(0);
    v8 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v7 && os_log_type_enabled(v7, v8))
    {
      *v179 = 136315138;
      v180 = "[WFNetworkListController _associateToHotspotDevice:]_block_invoke";
      _os_log_impl(&dword_273ECD000, v7, v8, "%s: TIME: enabling remote hotspot", v179, 0xCu);
    }

    v9 = [*(a1 + 32) hotspotInterface];
    v10 = *(a1 + 40);
    v11 = *&buf[8];
    obj = 0;
    v12 = [v9 enableHotspot:v10 error:&obj];
    objc_storeStrong((v11 + 40), obj);

    if (!*(*&buf[8] + 40))
    {
      v174 = 0u;
      v175 = 0u;
      v172 = 0u;
      v173 = 0u;
      v21 = [*(a1 + 32) interface];
      v22 = [v21 deviceScanChannels];

      v23 = [v22 countByEnumeratingWithState:&v172 objects:v178 count:16];
      if (v23)
      {
        v24 = *v173;
        while (2)
        {
          for (i = 0; i != v23; ++i)
          {
            if (*v173 != v24)
            {
              objc_enumerationMutation(v22);
            }

            v26 = *(*(&v172 + 1) + 8 * i);
            v27 = [v26 channel];
            v28 = [v12 channel];
            LODWORD(v27) = v27 == [v28 integerValue];

            if (v27)
            {
              v138 = v26;
              goto LABEL_40;
            }
          }

          v23 = [v22 countByEnumeratingWithState:&v172 objects:v178 count:16];
          if (v23)
          {
            continue;
          }

          break;
        }
      }

      v138 = 0;
LABEL_40:

      v37 = +[WFMetricsManager sharedManager];
      v38 = [MEMORY[0x277CBEAA8] date];
      [v38 timeIntervalSinceDate:v139];
      v40 = v39;
      if (v138)
      {
        v41 = [v138 channel];
      }

      else
      {
        v41 = 0;
      }

      v42 = [WFInstantHotspotJoinEvent joinEventWithType:1 latency:v41 channel:0 error:v40];
      [v37 processEvent:v42];

      v136 = [MEMORY[0x277CBEAA8] date];
      if (v138)
      {
        v177 = v138;
        v131 = [MEMORY[0x277CBEA60] arrayWithObjects:&v177 count:1];
      }

      else
      {
        v43 = [*(a1 + 32) interface];
        v131 = [v43 deviceScanChannels];
      }

      v44 = [v12 name];
      v137 = [WFScanRequest scanRequestForSSID:v44 channels:v131];

      if (!v137)
      {
        v104 = WFLogForCategory(0);
        v105 = OSLogForWFLogLevel(1uLL);
        if (WFCurrentLogLevel() && v104 && os_log_type_enabled(v104, v105))
        {
          *v179 = 136315138;
          v180 = "[WFNetworkListController _associateToHotspotDevice:]_block_invoke";
          _os_log_impl(&dword_273ECD000, v104, v105, "%s: error creating scan request", v179, 0xCu);
        }

        [*(a1 + 32) _presentHotspotErrorContextWithDevice:*(a1 + 40) hotspotError:0 failure:4];
        v106 = [*(a1 + 32) wifiClient];
        [v106 setAutoJoinEnabled:1];

        v107 = +[WFMetricsManager sharedManager];
        v108 = [MEMORY[0x277CBEAA8] date];
        [v108 timeIntervalSinceDate:v136];
        v110 = v109;
        if (v138)
        {
          v111 = [v138 channel];
        }

        else
        {
          v111 = 0;
        }

        v120 = [WFInstantHotspotJoinEvent joinEventWithType:2 latency:v111 channel:10001 error:v110];
        [v107 processEvent:v120];

        v132 = WFLogForCategory(0);
        v121 = OSLogForWFLogLevel(1uLL);
        v135 = 0;
        if (!WFCurrentLogLevel() || !v132)
        {
          goto LABEL_143;
        }

        v122 = v132;
        if (os_log_type_enabled(v122, v121))
        {
          v123 = [MEMORY[0x277CBEAA8] date];
          *v179 = 136315394;
          v180 = "[WFNetworkListController _associateToHotspotDevice:]_block_invoke";
          v181 = 2112;
          v182 = v123;
          _os_log_impl(&dword_273ECD000, v122, v121, "%s: TIME: end %@", v179, 0x16u);
        }

        v135 = 0;
        v132 = v122;
LABEL_142:

LABEL_143:
        v35 = v131;
        goto LABEL_144;
      }

      [v137 setDwellTime:110];
      v132 = [v131 mutableCopy];
      if (v138 && v132 && [v138 channel] >= 0x24)
      {
        if ([v138 channel] != 149 && objc_msgSend(*(a1 + 32), "_isChannelAllowedForScanPerCurrentLocale:", 149))
        {
          v45 = -[WFScanChannel initWithChannel:flags:]([WFScanChannel alloc], "initWithChannel:flags:", 149, [v138 flags]);
          [v132 addObject:v45];
        }

        if ([v138 channel] != 44 && objc_msgSend(*(a1 + 32), "_isChannelAllowedForScanPerCurrentLocale:", 44))
        {
          v46 = -[WFScanChannel initWithChannel:flags:]([WFScanChannel alloc], "initWithChannel:flags:", 44, [v138 flags]);
          [v132 addObject:v46];
        }
      }

      v47 = [v12 name];
      v48 = [v132 copy];
      v128 = [WFScanRequest scanRequestForSSID:v47 channels:v48];

      if (v128)
      {
        [v128 setDwellTime:110];
        v134 = dispatch_semaphore_create(0);
        v135 = 0;
        v166 = 0;
        v167 = &v166;
        v168 = 0x3032000000;
        v169 = __Block_byref_object_copy_;
        v170 = __Block_byref_object_dispose_;
        v171 = 0;
        do
        {
          v49 = WFLogForCategory(0);
          v50 = OSLogForWFLogLevel(1uLL);
          if (WFCurrentLogLevel() && v49 && os_log_type_enabled(v49, v50))
          {
            *v179 = 136315138;
            v180 = "[WFNetworkListController _associateToHotspotDevice:]_block_invoke";
            _os_log_impl(&dword_273ECD000, v49, v50, "%s: TIME: scanning for remote hotspot", v179, 0xCu);
          }

          v162 = 0;
          v163 = &v162;
          v164 = 0x2020000000;
          v165 = 0;
          v51 = *(*&buf[8] + 40);
          *(*&buf[8] + 40) = 0;

          v52 = [*(a1 + 32) interface];
          v154[0] = MEMORY[0x277D85DD0];
          v154[1] = 3221225472;
          v154[2] = __53__WFNetworkListController__associateToHotspotDevice___block_invoke_167;
          v154[3] = &unk_279EBD2B8;
          v158 = buf;
          v53 = v12;
          v155 = v53;
          v159 = &v166;
          v160 = &v162;
          v54 = v139;
          v156 = v54;
          v161 = 0x403E000000000000;
          v55 = v134;
          v157 = v55;
          [v52 asyncScanRequest:v137 reply:v154];

          dispatch_semaphore_wait(v55, 0xFFFFFFFFFFFFFFFFLL);
          v56 = WFLogForCategory(0);
          v57 = OSLogForWFLogLevel(1uLL);
          if (WFCurrentLogLevel() && v56 && os_log_type_enabled(v56, v57))
          {
            v58 = v167[5];
            *v179 = 136315394;
            v180 = "[WFNetworkListController _associateToHotspotDevice:]_block_invoke_2";
            v181 = 2112;
            v182 = v58;
            _os_log_impl(&dword_273ECD000, v56, v57, "%s: TIME: directed scan for instant hotspot found %@", v179, 0x16u);
          }

          if (*(v163 + 24) == 1)
          {
            v59 = WFLogForCategory(0);
            v60 = OSLogForWFLogLevel(1uLL);
            v61 = 1;
            if (WFCurrentLogLevel() && v59 && os_log_type_enabled(v59, v60))
            {
              *v179 = 136315138;
              v180 = "[WFNetworkListController _associateToHotspotDevice:]_block_invoke";
              _os_log_impl(&dword_273ECD000, v59, v60, "%s: retrying scan ", v179, 0xCu);
            }
          }

          else if (*(*&buf[8] + 40) || !v167[5])
          {
            v62 = WFLogForCategory(0);
            v63 = OSLogForWFLogLevel(1uLL);
            if (WFCurrentLogLevel() && v62 && os_log_type_enabled(v62, v63))
            {
              v64 = *(*&buf[8] + 40);
              *v179 = 136315394;
              v180 = "[WFNetworkListController _associateToHotspotDevice:]_block_invoke";
              v181 = 2112;
              v182 = v64;
              _os_log_impl(&dword_273ECD000, v62, v63, "%s: error on directed scan for hotspot %@", v179, 0x16u);
            }

            [*(a1 + 32) _presentHotspotErrorContextWithDevice:*(a1 + 40) hotspotError:0 failure:4];
            v65 = [*(a1 + 32) wifiClient];
            [v65 setAutoJoinEnabled:1];

            v66 = +[WFMetricsManager sharedManager];
            v67 = [MEMORY[0x277CBEAA8] date];
            [v67 timeIntervalSinceDate:v136];
            v69 = v68;
            if (v138)
            {
              v70 = [v138 channel];
            }

            else
            {
              v70 = 0;
            }

            v77 = *(*&buf[8] + 40);
            if (v77)
            {
              v78 = [v77 code];
            }

            else
            {
              v78 = 4;
            }

            v79 = [WFInstantHotspotJoinEvent joinEventWithType:2 latency:v70 channel:v78 error:v69];
            [v66 processEvent:v79];

            v59 = WFLogForCategory(0);
            v80 = OSLogForWFLogLevel(1uLL);
            v61 = 0;
            if (WFCurrentLogLevel() && v59)
            {
              v59 = v59;
              if (os_log_type_enabled(v59, v80))
              {
                v81 = [MEMORY[0x277CBEAA8] date];
                *v179 = 136315394;
                v180 = "[WFNetworkListController _associateToHotspotDevice:]_block_invoke";
                v181 = 2112;
                v182 = v81;
                _os_log_impl(&dword_273ECD000, v59, v80, "%s: TIME: end %@", v179, 0x16u);
              }

              v61 = 0;
            }
          }

          else
          {
            v71 = +[WFMetricsManager sharedManager];
            v72 = [MEMORY[0x277CBEAA8] date];
            [v72 timeIntervalSinceDate:v136];
            v74 = v73;
            v75 = [v167[5] channel];
            if (v75)
            {
              v129 = [v167[5] channel];
              v76 = [v129 unsignedIntegerValue];
            }

            else
            {
              v76 = 0;
            }

            v82 = [WFInstantHotspotJoinEvent joinEventWithType:2 latency:v76 channel:0 error:v74];
            [v71 processEvent:v82];

            if (v75)
            {
            }

            v130 = [MEMORY[0x277CBEAA8] date];

            v83 = [v167[5] matchingKnownNetworkProfile];

            if (v83 && (v84 = [WFNetworkProfile alloc], [v167[5] matchingKnownNetworkProfile], v85 = objc_claimAutoreleasedReturnValue(), v133 = -[WFNetworkProfile initWithCoreWiFiProfile:](v84, "initWithCoreWiFiProfile:", v85), v85, v133))
            {
              v86 = [(WFNetworkProfile *)v133 mutableCopy];
            }

            else
            {
              v86 = [WFMutableNetworkProfile mutableProfileForNetwork:v167[5]];
              v133 = 0;
            }

            v87 = [v53 password];
            [v86 setPassword:v87];

            [v86 setInstantHotspotJoin:1];
            v88 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", objc_msgSend(*(a1 + 40), "uniqueIdentifier")];
            [v86 setHotspotDeviceIdentifier:v88];

            v89 = WFLogForCategory(0);
            v90 = OSLogForWFLogLevel(4uLL);
            if (WFCurrentLogLevel() >= 4 && v89)
            {
              v91 = v89;
              if (os_log_type_enabled(v91, v90))
              {
                v92 = [v86 ssid];
                v93 = [v86 hotspotDeviceIdentifier];
                *v179 = 138412546;
                v180 = v92;
                v181 = 2112;
                v182 = v93;
                _os_log_impl(&dword_273ECD000, v91, v90, "Saving device identifier for hotspot: %@, deviceID: %@", v179, 0x16u);
              }
            }

            objc_initWeak(&location, *(a1 + 32));
            v149 = 0;
            v150 = &v149;
            v151 = 0x2020000000;
            v152 = 0;
            v94 = WFLogForCategory(0);
            v95 = OSLogForWFLogLevel(3uLL);
            if (WFCurrentLogLevel() >= 3 && v94 && os_log_type_enabled(v94, v95))
            {
              *v179 = 0;
              _os_log_impl(&dword_273ECD000, v94, v95, "Hotspot has been enabled and directed scan has been completed. Associate to hotspot.", v179, 2u);
            }

            v96 = [*(a1 + 32) interface];
            v97 = v167[5];
            v140[0] = MEMORY[0x277D85DD0];
            v140[1] = 3221225472;
            v140[2] = __53__WFNetworkListController__associateToHotspotDevice___block_invoke_172;
            v140[3] = &unk_279EBD2E0;
            objc_copyWeak(v148, &location);
            v146 = &v149;
            v141 = v54;
            v148[1] = 0x403E000000000000;
            v142 = *(a1 + 40);
            v135 = v130;
            v143 = v135;
            v147 = &v166;
            v98 = v55;
            v144 = v98;
            v59 = v86;
            v145 = v59;
            [v96 asyncAssociateToNetwork:v97 profile:v59 reply:v140];

            dispatch_semaphore_wait(v98, 0xFFFFFFFFFFFFFFFFLL);
            v61 = *(v150 + 24);
            if ((v61 & 1) == 0)
            {
              v99 = WFLogForCategory(0);
              v100 = OSLogForWFLogLevel(1uLL);
              if (WFCurrentLogLevel() && v99)
              {
                v101 = v99;
                if (os_log_type_enabled(v101, v100))
                {
                  v102 = [MEMORY[0x277CBEAA8] date];
                  *v179 = 136315394;
                  v180 = "[WFNetworkListController _associateToHotspotDevice:]_block_invoke";
                  v181 = 2112;
                  v182 = v102;
                  _os_log_impl(&dword_273ECD000, v101, v100, "%s: TIME: end %@", v179, 0x16u);
                }
              }
            }

            objc_destroyWeak(v148);
            _Block_object_dispose(&v149, 8);
            objc_destroyWeak(&location);
          }

          _Block_object_dispose(&v162, 8);
        }

        while ((v61 & 1) != 0);
        _Block_object_dispose(&v166, 8);
        v103 = v171;
      }

      else
      {
        v112 = WFLogForCategory(0);
        v113 = OSLogForWFLogLevel(1uLL);
        if (WFCurrentLogLevel() && v112 && os_log_type_enabled(v112, v113))
        {
          *v179 = 136315138;
          v180 = "[WFNetworkListController _associateToHotspotDevice:]_block_invoke";
          _os_log_impl(&dword_273ECD000, v112, v113, "%s: error creating scan request for retry", v179, 0xCu);
        }

        [*(a1 + 32) _presentHotspotErrorContextWithDevice:*(a1 + 40) hotspotError:0 failure:4];
        v114 = [*(a1 + 32) wifiClient];
        [v114 setAutoJoinEnabled:1];

        v115 = +[WFMetricsManager sharedManager];
        v116 = [MEMORY[0x277CBEAA8] date];
        [v116 timeIntervalSinceDate:v136];
        v118 = v117;
        if (v138)
        {
          v119 = [v138 channel];
        }

        else
        {
          v119 = 0;
        }

        v124 = [WFInstantHotspotJoinEvent joinEventWithType:2 latency:v119 channel:10001 error:v118];
        [v115 processEvent:v124];

        v55 = WFLogForCategory(0);
        v125 = OSLogForWFLogLevel(1uLL);
        v135 = 0;
        if (!WFCurrentLogLevel() || !v55)
        {
          goto LABEL_141;
        }

        v103 = v55;
        if (os_log_type_enabled(v103, v125))
        {
          v126 = [MEMORY[0x277CBEAA8] date];
          *v179 = 136315394;
          v180 = "[WFNetworkListController _associateToHotspotDevice:]_block_invoke";
          v181 = 2112;
          v182 = v126;
          _os_log_impl(&dword_273ECD000, v103, v125, "%s: TIME: end %@", v179, 0x16u);
        }

        v135 = 0;
        v55 = v103;
      }

LABEL_141:
      v122 = v128;
      goto LABEL_142;
    }

    v13 = WFLogForCategory(0);
    v14 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v13 && os_log_type_enabled(v13, v14))
    {
      v15 = *(*&buf[8] + 40);
      *v179 = 136315394;
      v180 = "[WFNetworkListController _associateToHotspotDevice:]_block_invoke";
      v181 = 2112;
      v182 = v15;
      _os_log_impl(&dword_273ECD000, v13, v14, "%s: error enabling hotspot: %@", v179, 0x16u);
    }

    if ([*(*&buf[8] + 40) code] == -71146)
    {
      break;
    }

    v16 = [*(a1 + 32) _shouldRetryRemoteHotspotEnableAfterError:{objc_msgSend(*(*&buf[8] + 40), "code")}];
    if (v6 < 2)
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    if (v17 != 1 || ([MEMORY[0x277CBEAA8] date], v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v18, "timeIntervalSinceDate:", v139), v20 = v19 < 30.0, v18, !v20))
    {
      [*(a1 + 32) _presentHotspotErrorContextWithDevice:*(a1 + 40) hotspotError:*(*&buf[8] + 40) failure:5];
      goto LABEL_33;
    }

    ++v6;
  }

  [*(a1 + 32) _presentHotspotErrorContextWithDevice:*(a1 + 40) hotspotError:*(*&buf[8] + 40) failure:19];
LABEL_33:
  v29 = [*(a1 + 32) wifiClient];
  [v29 setAutoJoinEnabled:1];

  v30 = +[WFMetricsManager sharedManager];
  v31 = [MEMORY[0x277CBEAA8] date];
  [v31 timeIntervalSinceDate:v139];
  v33 = +[WFInstantHotspotJoinEvent joinEventWithType:latency:channel:error:](WFInstantHotspotJoinEvent, "joinEventWithType:latency:channel:error:", 1, 0, [*(*&buf[8] + 40) code], v32);
  [v30 processEvent:v33];

  v138 = WFLogForCategory(0);
  v34 = OSLogForWFLogLevel(1uLL);
  v135 = 0;
  if (!WFCurrentLogLevel() || !v138)
  {
    v136 = 0;
    goto LABEL_145;
  }

  v35 = v138;
  if (os_log_type_enabled(v35, v34))
  {
    v36 = [MEMORY[0x277CBEAA8] date];
    *v179 = 136315394;
    v180 = "[WFNetworkListController _associateToHotspotDevice:]_block_invoke";
    v181 = 2112;
    v182 = v36;
    _os_log_impl(&dword_273ECD000, v35, v34, "%s: TIME: end %@", v179, 0x16u);
  }

  v135 = 0;
  v136 = 0;
  v138 = v35;
LABEL_144:

LABEL_145:
  _Block_object_dispose(buf, 8);

  v127 = *MEMORY[0x277D85DE8];
}

void __53__WFNetworkListController__associateToHotspotDevice___block_invoke_167(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = *(*(a1 + 56) + 8);
    v8 = v5;
    v9 = *(v7 + 40);
    *(v7 + 40) = v8;
  }

  else
  {
    v10 = MEMORY[0x277CCAC30];
    v11 = [*(a1 + 32) name];
    v9 = [v10 predicateWithFormat:@"ssid == %@", v11];

    v12 = [v6 filteredSetUsingPredicate:v9];
    v13 = [v12 anyObject];
    v14 = *(*(a1 + 64) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;
  }

  if (!*(*(*(a1 + 64) + 8) + 40))
  {
    v16 = [MEMORY[0x277CBEAA8] date];
    [v16 timeIntervalSinceDate:*(a1 + 40)];
    *(*(*(a1 + 72) + 8) + 24) = v17 < *(a1 + 80);
  }

  if (*(*(*(a1 + 72) + 8) + 24) == 1)
  {
    v18 = WFLogForCategory(0);
    v19 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v18 && os_log_type_enabled(v18, v19))
    {
      *buf = 136315138;
      v26 = "[WFNetworkListController _associateToHotspotDevice:]_block_invoke";
      _os_log_impl(&dword_273ECD000, v18, v19, "%s: scan failed, dispatch retry in 1 second", buf, 0xCu);
    }

    v20 = dispatch_time(0, 1000000000);
    v21 = dispatch_get_global_queue(21, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __53__WFNetworkListController__associateToHotspotDevice___block_invoke_168;
    block[3] = &unk_279EBCFE0;
    v24 = *(a1 + 48);
    dispatch_after(v20, v21, block);
  }

  else
  {
    dispatch_semaphore_signal(*(a1 + 48));
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __53__WFNetworkListController__associateToHotspotDevice___block_invoke_172(uint64_t a1, char a2, void *a3)
{
  v51 = *MEMORY[0x277D85DE8];
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 88));
  v8 = WeakRetained;
  if (a2)
  {
    *(*(*(a1 + 72) + 8) + 24) = 0;
    if ([WeakRetained viewControllerSupportsCurrentNetworkSubtitle])
    {
      v9 = [v8 viewController];
      [v9 setCurrentNetworkSubtitle:0];
    }

    [v8 _handleAssociationResult:1 error:0 network:*(*(*(a1 + 80) + 8) + 40) profile:*(a1 + 64) shouldSaveProfile:0];
    v10 = +[WFMetricsManager sharedManager];
    v11 = [MEMORY[0x277CBEAA8] date];
    [v11 timeIntervalSinceDate:*(a1 + 48)];
    v13 = v12;
    v14 = [*(*(*(a1 + 80) + 8) + 40) channel];
    if (v14)
    {
      v3 = [*(*(*(a1 + 80) + 8) + 40) channel];
      v15 = [v3 unsignedIntegerValue];
    }

    else
    {
      v15 = 0;
    }

    v31 = [WFInstantHotspotJoinEvent joinEventWithType:3 latency:v15 channel:0 error:v13];
    [v10 processEvent:v31];

    if (v14)
    {
    }

    v32 = +[WFMetricsManager sharedManager];
    v33 = [MEMORY[0x277CBEAA8] date];
    [v33 timeIntervalSinceDate:*(a1 + 32)];
    v35 = v34;
    v36 = [*(*(*(a1 + 80) + 8) + 40) channel];
    if (v36)
    {
      v3 = [*(*(*(a1 + 80) + 8) + 40) channel];
      v37 = [v3 unsignedIntegerValue];
    }

    else
    {
      v37 = 0;
    }

    v38 = [WFInstantHotspotJoinEvent joinEventWithType:4 latency:v37 channel:0 error:v35];
    [v32 processEvent:v38];

    if (v36)
    {
    }

    v39 = WFLogForCategory(0);
    v40 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v39)
    {
      v41 = v39;
      if (os_log_type_enabled(v41, v40))
      {
        v42 = [*(*(*(a1 + 80) + 8) + 40) ssid];
        *buf = 136315394;
        v48 = "[WFNetworkListController _associateToHotspotDevice:]_block_invoke_2";
        v49 = 2112;
        v50 = v42;
        _os_log_impl(&dword_273ECD000, v41, v40, "%s: TIME: associated to hotspot %@ sucessfully", buf, 0x16u);
      }
    }

    dispatch_semaphore_signal(*(a1 + 56));
  }

  else
  {
    v16 = [MEMORY[0x277CBEAA8] date];
    [v16 timeIntervalSinceDate:*(a1 + 32)];
    *(*(*(a1 + 72) + 8) + 24) = v17 < *(a1 + 96);
    v18 = *(*(*(a1 + 72) + 8) + 24);
    v19 = WFLogForCategory(0);
    v20 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel())
    {
      v21 = v19 == 0;
    }

    else
    {
      v21 = 1;
    }

    v22 = !v21;
    if (v18)
    {
      if (v22 && os_log_type_enabled(v19, v20))
      {
        *buf = 136315138;
        v48 = "[WFNetworkListController _associateToHotspotDevice:]_block_invoke";
        _os_log_impl(&dword_273ECD000, v19, v20, "%s: association failed, dispatch retry in 1 second", buf, 0xCu);
      }

      v23 = dispatch_time(0, 1000000000);
      v24 = dispatch_get_global_queue(21, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __53__WFNetworkListController__associateToHotspotDevice___block_invoke_173;
      block[3] = &unk_279EBCFE0;
      v46 = *(a1 + 56);
      dispatch_after(v23, v24, block);

      v25 = v46;
    }

    else
    {
      if (v22 && os_log_type_enabled(v19, v20))
      {
        *buf = 136315394;
        v48 = "[WFNetworkListController _associateToHotspotDevice:]_block_invoke";
        v49 = 2112;
        v50 = v6;
        _os_log_impl(&dword_273ECD000, v19, v20, "%s: error on associating to hotspot %@", buf, 0x16u);
      }

      [v8 _presentHotspotErrorContextWithDevice:*(a1 + 40) hotspotError:0 failure:13];
      v25 = +[WFMetricsManager sharedManager];
      v26 = [MEMORY[0x277CBEAA8] date];
      [v26 timeIntervalSinceDate:*(a1 + 48)];
      v28 = v27;
      v29 = [*(*(*(a1 + 80) + 8) + 40) channel];
      if (v29)
      {
        a1 = [*(*(*(a1 + 80) + 8) + 40) channel];
        v30 = [a1 unsignedIntegerValue];
      }

      else
      {
        v30 = 0;
      }

      v43 = +[WFInstantHotspotJoinEvent joinEventWithType:latency:channel:error:](WFInstantHotspotJoinEvent, "joinEventWithType:latency:channel:error:", 3, v30, [v6 code], v28);
      [v25 processEvent:v43];

      if (v29)
      {
      }
    }
  }

  v44 = *MEMORY[0x277D85DE8];
}

- (void)_associateToNetwork:(id)a3 profile:(id)a4
{
  v86 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  [(WFNetworkListController *)self _associationWillStart:v6];
  v74 = v7;
  v8 = [v7 mutableCopy];
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v10 = [v6 matchingKnownNetworkProfile];

    if (!v10 || (v11 = [WFNetworkProfile alloc], [v6 matchingKnownNetworkProfile], v12 = objc_claimAutoreleasedReturnValue(), v13 = -[WFNetworkProfile initWithCoreWiFiProfile:](v11, "initWithCoreWiFiProfile:", v12), v9 = -[WFNetworkProfile mutableCopy](v13, "mutableCopy"), v13, v12, !v9))
    {
      v14 = [[WFNetworkProfile alloc] initWithNetwork:v6];
      v9 = [(WFNetworkProfile *)v14 mutableCopy];
    }
  }

  v15 = [v6 ssid];
  v16 = [(WFNetworkListController *)self randomMACManager];
  v17 = [v16 isSSIDinCache:v15];

  if (v17)
  {
    v18 = [(WFNetworkListController *)self randomMACManager];
    v19 = [v18 shouldEnableRandomMACForSSID:v15];

    [v9 setRandomMACAddressEnabled:v19];
    v20 = [(WFNetworkListController *)self randomMACManager];
    v21 = [v20 cachedRandomMACForSSID:v15];

    [v9 setRandomMACAddress:v21];
    v22 = WFLogForCategory(8uLL);
    v23 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v22 && os_log_type_enabled(v22, v23))
    {
      *buf = 138412802;
      v81 = v21;
      v82 = 2112;
      v83 = v15;
      v84 = 1024;
      LODWORD(v85) = v19;
      _os_log_impl(&dword_273ECD000, v22, v23, "using cached address='%@' for association to '%@' (private address enabled=%d)", buf, 0x1Cu);
    }
  }

  v24 = [v9 password];
  v25 = v24 == 0;

  if (v25)
  {
    v26 = [(WFNetworkListController *)self scanManager];
    v27 = [v26 hotspotHelperForScanRecord:v6];

    if (v27)
    {
      v28 = WFLogForCategory(0);
      v29 = OSLogForWFLogLevel(3uLL);
      if (WFCurrentLogLevel() >= 3 && v28)
      {
        v30 = v28;
        if (os_log_type_enabled(v30, v29))
        {
          v31 = [v27 ssid];
          v32 = [v27 bundleIdentifier];
          *buf = 138412546;
          v81 = v31;
          v82 = 2112;
          v83 = v32;
          _os_log_impl(&dword_273ECD000, v30, v29, "Found matching hotspot plugin network ssid: %@ (bundleIdentifier %@), using supplied password", buf, 0x16u);
        }
      }

      v33 = [v27 password];
      [v9 setPassword:v33];

      [v9 setUserProvidedPassword:1];
      v34 = [v27 bundleIdentifier];
      [v9 setOriginatorBundleIdentifier:v34];
    }
  }

  if ([v9 shouldBeRemovedIfApplicationIsNoLongerInstalled])
  {
    v35 = WFLogForCategory(0);
    v36 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v35)
    {
      v37 = v35;
      if (os_log_type_enabled(v37, v36))
      {
        v38 = [v9 originatorBundleIdentifier];
        *buf = 136315650;
        v81 = "[WFNetworkListController _associateToNetwork:profile:]";
        v82 = 2112;
        v83 = v9;
        v84 = 2114;
        v85 = v38;
        _os_log_impl(&dword_273ECD000, v37, v36, "%s: removing application based network (%@) as it's host application (%{public}@) not installed", buf, 0x20u);
      }
    }

    v39 = [v6 matchingKnownNetworkProfile];

    if (v39)
    {
      v40 = [(WFNetworkListController *)self wifiClient];
      v41 = [v40 cInterface];
      v42 = [v6 matchingKnownNetworkProfile];
      v79 = 0;
      v43 = [v41 removeKnownNetworkProfile:v42 reason:2 error:&v79];
      v44 = v79;

      if (v43)
      {
LABEL_40:

        v51 = [[WFNetworkProfile alloc] initWithNetwork:v6];
        v52 = [(WFNetworkProfile *)v51 mutableCopy];

        v9 = v52;
        goto LABEL_41;
      }

      v45 = WFLogForCategory(0);
      v46 = OSLogForWFLogLevel(1uLL);
      if (WFCurrentLogLevel() && v45)
      {
        v47 = v45;
        if (os_log_type_enabled(v47, v46))
        {
          v48 = [v6 ssid];
          *buf = 138412546;
          v81 = v48;
          v82 = 2112;
          v83 = v44;
          _os_log_impl(&dword_273ECD000, v47, v46, "Failed to remove '%@' error='%@'", buf, 0x16u);
        }
      }
    }

    else
    {
      v44 = WFLogForCategory(0);
      v49 = OSLogForWFLogLevel(1uLL);
      if (!WFCurrentLogLevel() || !v44)
      {
        goto LABEL_40;
      }

      v45 = v44;
      if (os_log_type_enabled(v45, v49))
      {
        v50 = [v6 ssid];
        *buf = 138412290;
        v81 = v50;
        _os_log_impl(&dword_273ECD000, v45, v49, "no matching known network profile for '%@'", buf, 0xCu);
      }

      v44 = v45;
    }

    goto LABEL_40;
  }

LABEL_41:
  if ([v6 securityMode] == 128 && (objc_msgSend(v9, "password"), v53 = objc_claimAutoreleasedReturnValue(), v54 = v53 == 0, v53, v54))
  {
    v73 = [(WFNetworkListController *)self associationContext];
    [v73 setState:2];

    [(WFNetworkListController *)self _promptCredentialsForNetwork:v6 profile:v9];
  }

  else
  {
    v55 = [(WFNetworkListController *)self otherNetworkVC];

    if (v55)
    {
      v56 = WFLogForCategory(0);
      v57 = OSLogForWFLogLevel(3uLL);
      if (WFCurrentLogLevel() >= 3 && v56)
      {
        v58 = v56;
        if (os_log_type_enabled(v58, v57))
        {
          v59 = [(WFNetworkListController *)self otherNetworkVC];
          *buf = 138412290;
          v81 = v59;
          _os_log_impl(&dword_273ECD000, v58, v57, "other network vc is visible %@", buf, 0xCu);
        }
      }

      v60 = [(WFNetworkListController *)self otherNetworkVC];
      v61 = objc_opt_respondsToSelector();

      if (v61)
      {
        v62 = [(WFNetworkListController *)self otherNetworkVC];
        [v62 setJoining:1];
      }
    }

    if ((_os_feature_enabled_impl() & 1) == 0)
    {
      v63 = [(WFNetworkListController *)self otherNetworkVC];
      v64 = objc_opt_respondsToSelector();

      if (v64)
      {
        v65 = MEMORY[0x277CCACA8];
        v66 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v67 = [v66 localizedStringForKey:@"kWFLocOtherNetworkJoiningPromptFormat" value:&stru_2882E4AD8 table:@"WiFiKitLocalizableStrings"];
        v68 = [v6 ssid];
        v69 = [v65 stringWithFormat:v67, v68];
        v70 = [(WFNetworkListController *)self otherNetworkVC];
        [v70 setActivityString:v69];
      }
    }

    objc_initWeak(buf, self);
    v71 = [(WFNetworkListController *)self interface];
    v75[0] = MEMORY[0x277D85DD0];
    v75[1] = 3221225472;
    v75[2] = __55__WFNetworkListController__associateToNetwork_profile___block_invoke;
    v75[3] = &unk_279EBD308;
    objc_copyWeak(&v78, buf);
    v76 = v6;
    v77 = v9;
    [v71 asyncAssociateToNetwork:v76 profile:v77 reply:v75];

    objc_destroyWeak(&v78);
    objc_destroyWeak(buf);
  }

  v72 = *MEMORY[0x277D85DE8];
}

void __55__WFNetworkListController__associateToNetwork_profile___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _handleAssociationResult:a2 error:v5 network:*(a1 + 32) profile:*(a1 + 40) shouldSaveProfile:0];
}

- (void)_associateToEnterpriseNetwork:(id)a3 profile:(id)a4
{
  v47 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  [(WFNetworkListController *)self _associationWillStart:v6];
  v8 = [v7 mutableCopy];
  if (v8)
  {
LABEL_10:
    v13 = v8;
    goto LABEL_11;
  }

  v9 = [v6 matchingKnownNetworkProfile];

  if (!v9 || (v10 = [WFNetworkProfile alloc], [v6 matchingKnownNetworkProfile], v11 = objc_claimAutoreleasedReturnValue(), v12 = -[WFNetworkProfile initWithCoreWiFiProfile:](v10, "initWithCoreWiFiProfile:", v11), v13 = -[WFNetworkProfile mutableCopy](v12, "mutableCopy"), v12, v11, !v13))
  {
    v14 = WFLogForCategory(5uLL);
    v15 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v14)
    {
      v16 = v14;
      if (os_log_type_enabled(v16, v15))
      {
        v17 = [v6 ssid];
        *buf = 138412290;
        v42 = v17;
        _os_log_impl(&dword_273ECD000, v16, v15, "no existing profile for %@", buf, 0xCu);
      }
    }

    v8 = [WFMutableNetworkProfile mutableProfileForNetwork:v6];
    goto LABEL_10;
  }

LABEL_11:
  if ([v13 securityMode] == 1075)
  {
    v18 = WFLogForCategory(5uLL);
    v19 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v18)
    {
      v20 = v18;
      if (os_log_type_enabled(v20, v19))
      {
        v21 = [v6 ssid];
        v22 = [v6 securityMode];
        *buf = 138543618;
        v42 = v21;
        v43 = 2048;
        v44 = v22;
        _os_log_impl(&dword_273ECD000, v20, v19, "%{public}@ security is any-encrpytion, proceeding with scanned network's security %ld", buf, 0x16u);
      }
    }

    [v13 setSecurityMode:{objc_msgSend(v6, "securityMode")}];
  }

  v23 = [v13 canAttemptJoin];
  v24 = WFLogForCategory(5uLL);
  v25 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel())
  {
    v26 = v24 == 0;
  }

  else
  {
    v26 = 1;
  }

  v27 = !v26;
  if (v23)
  {
    if (v27)
    {
      v28 = v24;
      if (os_log_type_enabled(v28, v25))
      {
        v29 = [v6 ssid];
        *buf = 138412546;
        v42 = v29;
        v43 = 2112;
        v44 = v13;
        _os_log_impl(&dword_273ECD000, v28, v25, "proceeding with join for %@ (profile: %@)", buf, 0x16u);
      }
    }

    v30 = WFLogForCategory(5uLL);
    v31 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v30 && os_log_type_enabled(v30, v31))
    {
      *buf = 136315650;
      v42 = "[WFNetworkListController _associateToEnterpriseNetwork:profile:]";
      v43 = 2112;
      v44 = v6;
      v45 = 2112;
      v46 = v7;
      _os_log_impl(&dword_273ECD000, v30, v31, "%s: Invoking asyncAssociateToNetwork with network %@ profile %@", buf, 0x20u);
    }

    objc_initWeak(buf, self);
    v32 = [(WFNetworkListController *)self interface];
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __65__WFNetworkListController__associateToEnterpriseNetwork_profile___block_invoke;
    v37[3] = &unk_279EBD308;
    objc_copyWeak(&v40, buf);
    v38 = v6;
    v39 = v13;
    [v32 asyncAssociateToNetwork:v38 profile:v39 reply:v37];

    objc_destroyWeak(&v40);
    objc_destroyWeak(buf);
  }

  else
  {
    if (v27)
    {
      v33 = v24;
      if (os_log_type_enabled(v33, v25))
      {
        v34 = [v6 ssid];
        *buf = 138412290;
        v42 = v34;
        _os_log_impl(&dword_273ECD000, v33, v25, "user credentials prompt required for %@", buf, 0xCu);
      }
    }

    v35 = [(WFNetworkListController *)self associationContext];
    [v35 setState:2];

    [(WFNetworkListController *)self _promptCredentialsForNetwork:v6 profile:v13];
  }

  v36 = *MEMORY[0x277D85DE8];
}

void __65__WFNetworkListController__associateToEnterpriseNetwork_profile___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _handleAssociationResult:a2 error:v5 network:*(a1 + 32) profile:*(a1 + 40) shouldSaveProfile:0];
}

- (void)_associateToHS20Network:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = WFLogForCategory(5uLL);
  v6 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v5 && os_log_type_enabled(v5, v6))
  {
    *buf = 138412290;
    v24 = v4;
    _os_log_impl(&dword_273ECD000, v5, v6, "associating to HS20 network %@", buf, 0xCu);
  }

  v7 = [v4 matchingKnownNetworkProfile];

  if (v7)
  {
    v8 = WFLogForCategory(5uLL);
    v9 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v8)
    {
      v10 = v8;
      if (os_log_type_enabled(v10, v9))
      {
        v11 = [v4 matchingKnownNetworkProfile];
        *buf = 138412290;
        v24 = v11;
        _os_log_impl(&dword_273ECD000, v10, v9, "using matchingKnownNetworkProfile %@", buf, 0xCu);
      }
    }

    v12 = [WFNetworkProfile alloc];
    v13 = [v4 matchingKnownNetworkProfile];
    v14 = [(WFNetworkProfile *)v12 initWithCoreWiFiProfile:v13];
  }

  else
  {
    v13 = [(WFNetworkListController *)self gasController];
    v14 = [v13 profileForNetwork:v4];
  }

  v15 = v14;

  if (v15)
  {
    v16 = WFLogForCategory(5uLL);
    v17 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v16 && os_log_type_enabled(v16, v17))
    {
      *buf = 138412290;
      v24 = v15;
      _os_log_impl(&dword_273ECD000, v16, v17, "using cached profile %@", buf, 0xCu);
    }

    [(WFNetworkListController *)self _associateToEnterpriseNetwork:v4 profile:v15];
  }

  else
  {
    objc_initWeak(buf, self);
    v18 = [(WFNetworkListController *)self gasController];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __51__WFNetworkListController__associateToHS20Network___block_invoke;
    v20[3] = &unk_279EBD330;
    objc_copyWeak(&v22, buf);
    v21 = v4;
    [v18 resolveProfileForNetwork:v21 handler:v20 force:0];

    objc_destroyWeak(&v22);
    objc_destroyWeak(buf);
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __51__WFNetworkListController__associateToHS20Network___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = WFLogForCategory(5uLL);
  v8 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v7 && os_log_type_enabled(v7, v8))
  {
    v11 = 138412546;
    v12 = v5;
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&dword_273ECD000, v7, v8, "resolved profile %@ error %@", &v11, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _associateToEnterpriseNetwork:*(a1 + 32) profile:v5];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_associateToUnconfiguredAccessory:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = WFLogForCategory(5uLL);
  v6 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v5 && os_log_type_enabled(v5, v6))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&dword_273ECD000, v5, v6, "associating to unconfigured accessory %@", &v8, 0xCu);
  }

  if ([v4 unconfiguredAccessoryType] == 4)
  {
    [(WFNetworkListController *)self _promptForSecureWACDevice:v4];
  }

  else
  {
    [(WFNetworkListController *)self _runUnconfiguredJoinOperationForNetwork:v4];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_promptForSecureWACDevice:(id)a3
{
  v39 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = WFLogForCategory(0);
  v6 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v5 && os_log_type_enabled(v5, v6))
  {
    *buf = 136315394;
    v36 = "[WFNetworkListController _promptForSecureWACDevice:]";
    v37 = 2112;
    v38 = v4;
    _os_log_impl(&dword_273ECD000, v5, v6, "%s: network %@", buf, 0x16u);
  }

  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v29 = [v7 localizedStringForKey:@"kWFLocSecureWACPromptTitle" value:&stru_2882E4AD8 table:@"WiFiKitLocalizableStrings"];

  v8 = MEMORY[0x277CCACA8];
  v9 = [v4 unconfiguredDeviceName];
  v28 = [v8 stringWithFormat:v29, v9];

  v10 = [(WFNetworkListController *)self viewController];
  [v10 deviceCapability];
  IsChinaDevice = WFCapabilityIsChinaDevice();

  v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v13 = v12;
  if (IsChinaDevice)
  {
    v14 = @"kWFLocSecureWACPromptMessage_CH";
  }

  else
  {
    v14 = @"kWFLocSecureWACPromptMessage";
  }

  v27 = [v12 localizedStringForKey:v14 value:&stru_2882E4AD8 table:@"WiFiKitLocalizableStrings"];

  objc_initWeak(buf, self);
  v15 = [MEMORY[0x277D75110] alertControllerWithTitle:v28 message:v27 preferredStyle:1];
  v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  if (IsChinaDevice)
  {
    [v16 localizedStringForKey:@"kWFLocSecureWACPromptButtonAdd_CH" value:&stru_2882E4AD8 table:@"WiFiKitLocalizableStrings"];
  }

  else
  {
    [v16 localizedStringForKey:@"kWFLocSecureWACPromptButtonAdd" value:&stru_2882E4AD8 table:@"WiFiKitLocalizableStrings"];
  }
  v17 = ;

  v18 = MEMORY[0x277D750F8];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __53__WFNetworkListController__promptForSecureWACDevice___block_invoke;
  v32[3] = &unk_279EBD358;
  objc_copyWeak(&v34, buf);
  v19 = v4;
  v33 = v19;
  v20 = [v18 actionWithTitle:v17 style:0 handler:v32];
  [v15 addAction:v20];
  [v15 setPreferredAction:v20];
  v21 = MEMORY[0x277D750F8];
  v22 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v23 = [v22 localizedStringForKey:@"kWFLocHomeAppRequiredButtonCancel" value:&stru_2882E4AD8 table:@"WiFiKitLocalizableStrings"];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __53__WFNetworkListController__promptForSecureWACDevice___block_invoke_2;
  v30[3] = &unk_279EBD380;
  objc_copyWeak(&v31, buf);
  v24 = [v21 actionWithTitle:v23 style:1 handler:v30];

  [v15 addAction:v24];
  v25 = [(WFNetworkListController *)self viewController];
  [v25 presentViewController:v15 animated:1 completion:0];

  objc_destroyWeak(&v31);
  objc_destroyWeak(&v34);

  objc_destroyWeak(buf);
  v26 = *MEMORY[0x277D85DE8];
}

void __53__WFNetworkListController__promptForSecureWACDevice___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _openHomeAppForNetwork:*(a1 + 32)];
}

void __53__WFNetworkListController__promptForSecureWACDevice___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateViewControllerConnectedNetwork];
}

- (void)_downloadHomeApp
{
  v2 = WFLogForCategory(0);
  v3 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v2 && os_log_type_enabled(v2, v3))
  {
    *v4 = 0;
    _os_log_impl(&dword_273ECD000, v2, v3, "Starting Home download", v4, 2u);
  }
}

- (void)_runUnconfiguredJoinOperationForNetwork:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MEMORY[0x277CBEB38];
  v6 = [v4 attributes];
  v7 = [v5 dictionaryWithObjectsAndKeys:{v6, *MEMORY[0x277CEA3B8], 0}];

  if ([v4 isUnconfiguredAccessorySTAOnly])
  {
    v8 = [MEMORY[0x277CBEB18] array];
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v9 = [(WFNetworkListController *)self networks];
    v10 = [v9 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v10)
    {
      v11 = *v27;
      do
      {
        v12 = 0;
        do
        {
          if (*v27 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = [*(*(&v26 + 1) + 8 * v12) attributes];
          [v8 addObject:v13];

          ++v12;
        }

        while (v10 != v12);
        v10 = [v9 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v10);
    }

    [v7 setObject:v8 forKey:*MEMORY[0x277CEA3B0]];
  }

  [(WFNetworkListController *)self _associationWillStart:v4];
  v14 = [WFUnconfiguredJoinOperation alloc];
  v15 = [(WFNetworkListController *)self viewController];
  v16 = [(WFUnconfiguredJoinOperation *)v14 initWithParameters:v7 rootViewController:v15];

  objc_initWeak(&location, v16);
  objc_initWeak(&from, self);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __67__WFNetworkListController__runUnconfiguredJoinOperationForNetwork___block_invoke;
  v20[3] = &unk_279EBD3A8;
  objc_copyWeak(&v22, &location);
  objc_copyWeak(&v23, &from);
  v17 = v4;
  v21 = v17;
  [(WFUnconfiguredJoinOperation *)v16 setCompletionBlock:v20];
  v18 = [MEMORY[0x277CCABD8] mainQueue];
  [v18 addOperation:v16];

  objc_destroyWeak(&v23);
  objc_destroyWeak(&v22);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);

  v19 = *MEMORY[0x277D85DE8];
}

void __67__WFNetworkListController__runUnconfiguredJoinOperationForNetwork___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained error];

  if (v3)
  {
    v4 = WFLogForCategory(0);
    v5 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v4)
    {
      v6 = v4;
      if (os_log_type_enabled(v6, v5))
      {
        v7 = [WeakRetained error];
        v12 = 138412290;
        v13 = v7;
        _os_log_impl(&dword_273ECD000, v6, v5, "Error joining unconfigured network %@", &v12, 0xCu);
      }
    }
  }

  v8 = objc_loadWeakRetained((a1 + 48));
  v9 = [WeakRetained error];
  v10 = [WeakRetained error];
  [v8 _associationDidFinish:v9 == 0 error:v10 network:*(a1 + 32)];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_openHomeAppForNetwork:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = WFLogForCategory(0);
  v6 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v5)
  {
    v7 = v5;
    if (os_log_type_enabled(v7, v6))
    {
      v8 = [v4 unconfiguredDeviceID];
      *v17 = 136315650;
      *&v17[4] = "[WFNetworkListController _openHomeAppForNetwork:]";
      v18 = 2112;
      v19 = v4;
      v20 = 2112;
      v21 = v8;
      _os_log_impl(&dword_273ECD000, v7, v6, "%s: network %@ (id: %{Public}@)", v17, 0x20u);
    }
  }

  if (!v4)
  {
    [WFNetworkListController _openHomeAppForNetwork:v17];
LABEL_16:
    v13 = *v17;
    goto LABEL_13;
  }

  v9 = [v4 unconfiguredDeviceID];

  if (!v9)
  {
    [WFNetworkListController _openHomeAppForNetwork:v17];
    goto LABEL_16;
  }

  v10 = [MEMORY[0x277CBEBC0] URLWithString:@"com.apple.Home://reprovisionDevice/"];
  v11 = [v4 unconfiguredDeviceID];
  v12 = [(WFNetworkListController *)self _convertToHexString:v11];
  v13 = [v10 URLByAppendingPathComponent:v12];

  v14 = WFLogForCategory(0);
  v15 = OSLogForWFLogLevel(4uLL);
  if (WFCurrentLogLevel() >= 4 && v14 && os_log_type_enabled(v14, v15))
  {
    *v17 = 136315394;
    *&v17[4] = "[WFNetworkListController _openHomeAppForNetwork:]";
    v18 = 2112;
    v19 = v13;
    _os_log_impl(&dword_273ECD000, v14, v15, "%s: launchURL %@", v17, 0x16u);
  }

  [(WFNetworkListController *)self _openURL:v13];
LABEL_13:

  v16 = *MEMORY[0x277D85DE8];
}

- (id)_convertToHexString:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [v3 length];
  if (v5 >= 1)
  {
    v6 = v5;
    for (i = 0; i < v6; i += 2)
    {
      v8 = [v3 substringWithRange:{i, 2}];
      [v4 addObject:v8];
    }
  }

  v9 = [v4 componentsJoinedByString:@":"];
  v10 = [v9 uppercaseString];

  return v10;
}

- (void)_openURL:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CC1F00]);
  [v4 setSensitive:1];
  v5 = [MEMORY[0x277CC1E80] defaultWorkspace];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __36__WFNetworkListController__openURL___block_invoke;
  v7[3] = &unk_279EBD3D0;
  v8 = v3;
  v6 = v3;
  [v5 openURL:v6 configuration:v4 completionHandler:v7];
}

void __36__WFNetworkListController__openURL___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v4 = WFLogForCategory(0);
    v5 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v4 && os_log_type_enabled(v4, v5))
    {
      v6 = *(a1 + 32);
      v8 = 136315394;
      v9 = "[WFNetworkListController _openURL:]_block_invoke";
      v10 = 2112;
      v11 = v6;
      _os_log_impl(&dword_273ECD000, v4, v5, "%s: failed to launch URL %@", &v8, 0x16u);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_associateToUserSuppliedNetwork:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = WFLogForCategory(0);
  v6 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v5)
  {
    v7 = v5;
    if (os_log_type_enabled(v7, v6))
    {
      v8 = [v4 ssid];
      *buf = 136315394;
      v20 = "[WFNetworkListController _associateToUserSuppliedNetwork:]";
      v21 = 2112;
      v22 = v8;
      _os_log_impl(&dword_273ECD000, v7, v6, "%s: joining other network %@", buf, 0x16u);
    }
  }

  objc_initWeak(buf, self);
  v9 = [v4 ssid];
  v10 = [(WFNetworkListController *)self interface];
  v11 = [v10 deviceScanChannels];
  v12 = [WFScanRequest scanRequestForSSID:v9 channels:v11];

  v13 = [(WFNetworkListController *)self interface];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __59__WFNetworkListController__associateToUserSuppliedNetwork___block_invoke;
  v16[3] = &unk_279EBD420;
  v16[4] = self;
  objc_copyWeak(&v18, buf);
  v14 = v4;
  v17 = v14;
  [v13 asyncScanRequest:v12 reply:v16];

  objc_destroyWeak(&v18);
  objc_destroyWeak(buf);

  v15 = *MEMORY[0x277D85DE8];
}

void __59__WFNetworkListController__associateToUserSuppliedNetwork___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v6 anyObject];
  v8 = v7;
  if (*(*(a1 + 32) + 17) == 1 && ([v7 scanResult], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "isAllowedInLockdownMode"), v9, (v10 & 1) == 0))
  {
    v12 = WFLogForCategory(0);
    v13 = OSLogForWFLogLevel(3uLL);
    if (WFCurrentLogLevel() >= 3 && v12 && os_log_type_enabled(v12, v13))
    {
      *buf = 0;
      _os_log_impl(&dword_273ECD000, v12, v13, "In Lockdown Mode, prompting user", buf, 2u);
    }

    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __59__WFNetworkListController__associateToUserSuppliedNetwork___block_invoke_221;
    aBlock[3] = &unk_279EBD3F8;
    objc_copyWeak(&v25, (a1 + 48));
    v23 = *(a1 + 40);
    v24 = v6;
    v14 = _Block_copy(aBlock);
    if ([*(a1 + 40) security])
    {
      if ([*(a1 + 40) security] == 1)
      {
        v15 = 2;
      }

      else if ([*(a1 + 40) security] == 4)
      {
        v15 = 1;
      }

      else
      {
        v15 = 7;
      }
    }

    else
    {
      v15 = 0;
    }

    v16 = MEMORY[0x277D7B9D8];
    v17 = [*(a1 + 40) ssid];
    v18 = [v16 lockdownModeAlertControllerWithNetworkName:v17 securityType:v15 completionHandler:v14];

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __59__WFNetworkListController__associateToUserSuppliedNetwork___block_invoke_223;
    block[3] = &unk_279EBD290;
    block[4] = *(a1 + 32);
    v21 = v18;
    v19 = v18;
    dispatch_async(MEMORY[0x277D85CD0], block);

    objc_destroyWeak(&v25);
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [WeakRetained _associateToUserSuppliedNetworkHelper:*(a1 + 40) networks:v6];
  }
}

void __59__WFNetworkListController__associateToUserSuppliedNetwork___block_invoke_221(uint64_t a1, int a2)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [WeakRetained _associateToUserSuppliedNetworkHelper:*(a1 + 32) networks:*(a1 + 40)];
  }

  else
  {
    v3 = WFLogForCategory(0);
    v4 = OSLogForWFLogLevel(3uLL);
    if (WFCurrentLogLevel() >= 3 && v3 && os_log_type_enabled(v3, v4))
    {
      *buf = 0;
      _os_log_impl(&dword_273ECD000, v3, v4, "User declined joining non-secure network in Lockdown Mode- canceling association", buf, 2u);
    }

    [MEMORY[0x277CCA9B8] associationErrorWithReason:6];
  }
}

void __59__WFNetworkListController__associateToUserSuppliedNetwork___block_invoke_223(uint64_t a1)
{
  v2 = [*(a1 + 32) otherNetworkVC];

  if (v2)
  {
    v3 = [*(a1 + 32) otherNetworkVC];
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v3 presentViewController:*(a1 + 40) animated:1 completion:0];
}

- (void)_associateToUserSuppliedNetworkHelper:(id)a3 networks:(id)a4
{
  v40 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_initWeak(&location, self);
  v9 = WFLogForCategory(0);
  v10 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v9 && os_log_type_enabled(v9, v10))
  {
    *buf = 136315394;
    v37 = "[WFNetworkListController _associateToUserSuppliedNetworkHelper:networks:]";
    v38 = 2112;
    v39 = v7;
    _os_log_impl(&dword_273ECD000, v9, v10, "%s: scan results %@", buf, 0x16u);
  }

  v11 = [v7 count];
  if (v11 != 1)
  {
    v12 = 0;
LABEL_14:
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __74__WFNetworkListController__associateToUserSuppliedNetworkHelper_networks___block_invoke_2;
    block[3] = &unk_279EBD470;
    v30 = 0;
    v31 = v11 == 1;
    block[4] = self;
    block[5] = self;
    v12 = v12;
    v28 = v12;
    v29 = v6;
    dispatch_async(MEMORY[0x277D85CD0], block);

    goto LABEL_20;
  }

  v12 = [v7 anyObject];
  v13 = WFLogForCategory(0);
  v14 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v13 && os_log_type_enabled(v13, v14))
  {
    *buf = 136315394;
    v37 = "[WFNetworkListController _associateToUserSuppliedNetworkHelper:networks:]";
    v38 = 2112;
    v39 = v12;
    _os_log_impl(&dword_273ECD000, v13, v14, "%s: found network %@", buf, 0x16u);
  }

  if (![v12 isNetworkSecurityModeMatch:{objc_msgSend(v6, "security")}])
  {
    goto LABEL_14;
  }

  self->_associatingToOtherNetwork = 1;
  v15 = [v7 anyObject];
  v16 = [v15 matchingKnownNetworkProfile];

  if (v16)
  {
    v17 = [WFNetworkProfile alloc];
    v18 = [v15 matchingKnownNetworkProfile];
    v19 = [(WFNetworkProfile *)v17 initWithCoreWiFiProfile:v18];
    v20 = [(WFNetworkProfile *)v19 mutableCopy];
  }

  else
  {
    v20 = [WFMutableNetworkProfile mutableProfileForNetwork:v15];
  }

  [v20 setUserProvidedPassword:1];
  [v20 setHidden:1];
  if ([v15 isEnterprise])
  {
    v21 = [v6 username];
    [v20 setUsername:v21];

    v22 = [v6 password];
    [v20 setPassword:v22];

    [v20 setTLSIdentity:{objc_msgSend(v6, "TLSIdentity")}];
  }

  else
  {
    v23 = [v6 password];
    [v20 setPassword:v23];
  }

  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __74__WFNetworkListController__associateToUserSuppliedNetworkHelper_networks___block_invoke;
  v32[3] = &unk_279EBD268;
  v32[4] = self;
  v33 = v15;
  v34 = v20;
  v24 = v20;
  v25 = v15;
  dispatch_async(MEMORY[0x277D85CD0], v32);

LABEL_20:
  objc_destroyWeak(&location);

  v26 = *MEMORY[0x277D85DE8];
}

void __74__WFNetworkListController__associateToUserSuppliedNetworkHelper_networks___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) associationContext];
  if (v2)
  {
    v3 = v2;
    v4 = [*(a1 + 32) associationContext];
    v5 = [v4 networkName];
    v6 = [*(a1 + 40) ssid];
    v7 = [v5 isEqualToString:v6];

    if ((v7 & 1) == 0)
    {
      v8 = *(a1 + 40);
      v9 = [*(a1 + 32) associationContext];
      [v9 setNetwork:v8];
    }
  }

  [*(a1 + 32) _associateToScanRecord:*(a1 + 40) profile:*(a1 + 48)];
  v10 = [*(a1 + 32) associationContext];
  [v10 setOriginator:1];
}

void __74__WFNetworkListController__associateToUserSuppliedNetworkHelper_networks___block_invoke_2(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = WFLogForCategory(0);
  v3 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v2 && os_log_type_enabled(v2, v3))
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 65);
    *buf = 136315650;
    v24 = "[WFNetworkListController _associateToUserSuppliedNetworkHelper:networks:]_block_invoke_2";
    v25 = 1024;
    *v26 = v4;
    *&v26[4] = 1024;
    *&v26[6] = v5;
    _os_log_impl(&dword_273ECD000, v2, v3, "%s: other network not found (foundNetwork=%d mismatchedSecurity=%d)", buf, 0x18u);
  }

  if (*(a1 + 65))
  {
    v6 = 17;
  }

  else
  {
    v6 = 16;
  }

  v7 = [MEMORY[0x277CCA9B8] associationErrorWithReason:v6];
  v8 = WFLogForCategory(0);
  v9 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v8)
  {
    v10 = v8;
    if (os_log_type_enabled(v10, v9))
    {
      v11 = [*(a1 + 32) credentialsContext];
      *buf = 136315650;
      v24 = "[WFNetworkListController _associateToUserSuppliedNetworkHelper:networks:]_block_invoke";
      v25 = 2112;
      *v26 = v7;
      *&v26[8] = 2112;
      v27 = v11;
      _os_log_impl(&dword_273ECD000, v10, v9, "%s: providing error %@ back to the credentials context %@", buf, 0x20u);
    }
  }

  v12 = [*(a1 + 40) credentialsContext];
  [v12 finishWithError:v7 forNetwork:*(a1 + 48) profile:0];

  v13 = [[WFErrorContext alloc] initWithAssociationError:v7 network:*(a1 + 56) diagnosticsResult:0];
  objc_initWeak(buf, *(a1 + 40));
  objc_initWeak(&location, v13);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __74__WFNetworkListController__associateToUserSuppliedNetworkHelper_networks___block_invoke_226;
  v19[3] = &unk_279EBD448;
  objc_copyWeak(&v20, buf);
  objc_copyWeak(&v21, &location);
  [(WFErrorContext *)v13 setCompletionHandler:v19];
  [*(a1 + 40) _presentContext:v13 contextType:0];
  v14 = +[WFMetricsManager sharedManager];
  v15 = [*(a1 + 56) security];
  v16 = [v7 code];
  v17 = [WFUserJoinEvent joinEventWithType:1 security:v15 error:v16 didRun:0 didPass:0 failedTests:MEMORY[0x277CBEBF8]];
  [v14 processEvent:v17];

  objc_destroyWeak(&v21);
  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
  objc_destroyWeak(buf);

  v18 = *MEMORY[0x277D85DE8];
}

void __74__WFNetworkListController__associateToUserSuppliedNetworkHelper_networks___block_invoke_226(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _dismissErrorViewControllerWithContext:v2];
}

- (void)_handleAssociationResult:(BOOL)a3 error:(id)a4 network:(id)a5 profile:(id)a6 shouldSaveProfile:(BOOL)a7
{
  v86 = *MEMORY[0x277D85DE8];
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if ([v11 code] != 11 || (-[WFNetworkListController associationContext](self, "associationContext"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "secondaryScanCompleted"), v14, (v15 & 1) != 0))
  {
    v16 = [(WFNetworkListController *)self credentialsContext];

    if (!v16)
    {
      goto LABEL_26;
    }

    v17 = [(WFNetworkListController *)self credentialsContext];
    v18 = [v17 network];
    v19 = [v18 isEqual:v12];

    if (v19)
    {
      v20 = WFLogForCategory(5uLL);
      v21 = OSLogForWFLogLevel(1uLL);
      if (WFCurrentLogLevel() && v20)
      {
        v22 = v20;
        if (os_log_type_enabled(v22, v21))
        {
          v23 = [(WFNetworkListController *)self credentialsContext];
          [(WFNetworkListController *)self associationContext];
          v24 = v78 = v13;
          v25 = [v24 networkName];
          *buf = 138412546;
          v83 = v23;
          v84 = 2112;
          v85 = v25;
          _os_log_impl(&dword_273ECD000, v22, v21, "credentials context (%@) in progress for %@, reusing for association", buf, 0x16u);

          v13 = v78;
        }
      }

      v26 = [(WFNetworkListController *)self credentialsContext];
      [v26 finishWithError:v11 forNetwork:v12 profile:v13];
    }

    else
    {
      v34 = [(WFNetworkListController *)self credentialsContext];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
LABEL_26:
        if (v11)
        {
          v46 = [v11 code];
        }

        else
        {
          v46 = 0;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v47 = 8;
          if (!a3)
          {
            goto LABEL_31;
          }
        }

        else
        {
          v47 = [v12 securityMode];
          if (!a3)
          {
LABEL_31:
            v48 = WFLogForCategory(5uLL);
            v49 = OSLogForWFLogLevel(1uLL);
            if (WFCurrentLogLevel() && v48)
            {
              v50 = v48;
              if (os_log_type_enabled(v50, v49))
              {
                v51 = [(WFNetworkListController *)self associationContext];
                [v51 networkName];
                v52 = v80 = v13;
                v53 = [(WFNetworkListController *)self associationContext];
                *buf = 138412546;
                v83 = v52;
                v84 = 2112;
                v85 = v53;
                _os_log_impl(&dword_273ECD000, v50, v49, "association failed for %@ (context: %@)", buf, 0x16u);

                v13 = v80;
              }
            }

            v54 = [(WFNetworkListController *)self associationContext];
            [(WFNetworkListController *)self _handleAssociationError:v11 network:v12 profile:v13 securityMode:v47 associationContext:v54];

            goto LABEL_59;
          }
        }

        v55 = [(WFNetworkListController *)self associationContext];
        v56 = [v55 originator];

        if (v56 == 2)
        {
          v57 = +[WFMetricsManager sharedManager];
          v63 = MEMORY[0x277CBEBF8];
          v64 = 2;
        }

        else
        {
          if (v56 != 1)
          {
            if (v56)
            {
              goto LABEL_46;
            }

            v57 = +[WFMetricsManager sharedManager];
            v58 = [(WFNetworkListController *)self associationContext];
            v59 = [v58 sectionCounts];
            [(WFNetworkListController *)self associationContext];
            v60 = v81 = v13;
            v61 = [v60 sectionNameJoined];
            v62 = [WFUserJoinEvent joinEventWithSecurity:v47 error:v46 sectionCounts:v59 sectionName:v61 didRun:0 didPass:0 failedTests:MEMORY[0x277CBEBF8]];
            [v57 processEvent:v62];

            v13 = v81;
LABEL_45:

LABEL_46:
            v65 = WFLogForCategory(5uLL);
            v66 = OSLogForWFLogLevel(1uLL);
            if (WFCurrentLogLevel() && v65)
            {
              v67 = v65;
              if (os_log_type_enabled(v67, v66))
              {
                v68 = [(WFNetworkListController *)self associationContext];
                v69 = [v68 networkName];
                v70 = [(WFNetworkListController *)self associationContext];
                *buf = 138412546;
                v83 = v69;
                v84 = 2112;
                v85 = v70;
                _os_log_impl(&dword_273ECD000, v67, v66, "association completed for %@ (context: %@)", buf, 0x16u);
              }
            }

            if (self->_associatingToOtherNetwork)
            {
              v71 = WFLogForCategory(5uLL);
              v72 = OSLogForWFLogLevel(1uLL);
              if (WFCurrentLogLevel() && v71)
              {
                v73 = v71;
                if (os_log_type_enabled(v73, v72))
                {
                  v74 = [(WFNetworkListController *)self credentialsContext];
                  *buf = 138412290;
                  v83 = v74;
                  _os_log_impl(&dword_273ECD000, v73, v72, "association originated from WFAssociationOriginatorOther, dismissing credentials context %@", buf, 0xCu);
                }
              }

              v75 = [(WFNetworkListController *)self credentialsContext];
              [(WFNetworkListController *)self _dismissOtherNetworkViewControllerWithContext:v75];
            }

            [(WFNetworkListController *)self _associationDidFinish:1 error:0 network:v12];
            goto LABEL_59;
          }

          v57 = +[WFMetricsManager sharedManager];
          v63 = MEMORY[0x277CBEBF8];
          v64 = 1;
        }

        v58 = [WFUserJoinEvent joinEventWithType:v64 security:v47 error:v46 didRun:0 didPass:0 failedTests:v63];
        [v57 processEvent:v58];
        goto LABEL_45;
      }

      v36 = v13;
      v26 = [(WFNetworkListController *)self credentialsContext];
      v37 = [v26 userSuppliedNetwork];
      v38 = [v37 ssid];
      v39 = [v12 ssid];
      v40 = [v38 isEqual:v39];

      if (v40)
      {
        v41 = WFLogForCategory(5uLL);
        v42 = OSLogForWFLogLevel(1uLL);
        v13 = v36;
        if (WFCurrentLogLevel() && v41)
        {
          v43 = v41;
          if (os_log_type_enabled(v43, v42))
          {
            v77 = [(WFNetworkListController *)self credentialsContext];
            v79 = [(WFNetworkListController *)self associationContext];
            [v79 networkName];
            *buf = 138412546;
            v83 = v77;
            v85 = v84 = 2112;
            v44 = v85;
            _os_log_impl(&dword_273ECD000, v43, v42, "credentials context (%@) in progress for other network %@, reusing for association", buf, 0x16u);

            v13 = v36;
          }
        }

        v45 = [(WFNetworkListController *)self credentialsContext];
        [v45 finishWithError:v11 forNetwork:v12 profile:v13];
      }

      else
      {
        v13 = v36;
      }
    }

    goto LABEL_26;
  }

  v27 = WFLogForCategory(5uLL);
  v28 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v27)
  {
    v29 = v27;
    if (os_log_type_enabled(v29, v28))
    {
      v30 = [(WFNetworkListController *)self associationContext];
      v31 = [v30 networkName];
      [(WFNetworkListController *)self credentialsContext];
      v33 = v32 = v13;
      *buf = 138412546;
      v83 = v31;
      v84 = 2112;
      v85 = v33;
      _os_log_impl(&dword_273ECD000, v29, v28, "%@ requires a scan before associating, preempting credentialsContext(%@) completion until scan is complete.", buf, 0x16u);

      v13 = v32;
    }
  }

  [(WFNetworkListController *)self _scanNetworkForAssociation:v12 profile:v13];
LABEL_59:

  v76 = *MEMORY[0x277D85DE8];
}

- (void)_handleAssociationError:(id)a3 network:(id)a4 profile:(id)a5 securityMode:(int64_t)a6 associationContext:(id)a7
{
  v126 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v103 = a5;
  v13 = a7;
  if (v11)
  {
    v14 = [v11 code];
  }

  else
  {
    v14 = 0;
  }

  v102 = WFAssociationErrorCodeToString([v11 code]);
  v15 = WFLogForCategory(5uLL);
  v16 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v15 && os_log_type_enabled(v15, v16))
  {
    *buf = 138413058;
    *v121 = v12;
    *&v121[8] = 2112;
    *&v121[10] = v103;
    v122 = 2112;
    v123 = v11;
    v124 = 2112;
    v125 = v102;
    _os_log_impl(&dword_273ECD000, v15, v16, "handling association failure for %@ (profile: %@) error: %@ (%@)", buf, 0x2Au);
  }

  v17 = [v11 code];
  if (v17 <= 6)
  {
    if (v17 < 2)
    {
      v18 = [(WFNetworkListController *)self associationContext];
      [v18 setState:2];

      if ([v11 code] == 1)
      {
        v19 = [[WFErrorContext alloc] initWithAssociationError:v11 network:v12 diagnosticsResult:0];
        objc_initWeak(buf, self);
        objc_initWeak(&location, v19);
        v112[0] = MEMORY[0x277D85DD0];
        v112[1] = 3221225472;
        v112[2] = __99__WFNetworkListController__handleAssociationError_network_profile_securityMode_associationContext___block_invoke;
        v112[3] = &unk_279EBD498;
        v113 = v12;
        v114 = v103;
        v115 = v11;
        v116 = v102;
        objc_copyWeak(&v117, buf);
        objc_copyWeak(&v118, &location);
        [(WFErrorContext *)v19 setCompletionHandler:v112];
        [(WFNetworkListController *)self _presentContext:v19 contextType:0];
        objc_destroyWeak(&v118);
        objc_destroyWeak(&v117);

        objc_destroyWeak(&location);
        objc_destroyWeak(buf);
      }

      else
      {
        [(WFNetworkListController *)self _promptCredentialsForNetwork:v12 profile:v103];
      }

      v44 = [(WFNetworkListController *)self associationContext];
      v45 = [v44 originator];

      switch(v45)
      {
        case 2:
          v56 = +[WFMetricsManager sharedManager];
          v57 = [WFUserJoinEvent joinEventWithType:2 security:a6 error:v14 didRun:0 didPass:0 failedTests:MEMORY[0x277CBEBF8]];
          [v56 processEvent:v57];

          break;
        case 1:
          v54 = +[WFMetricsManager sharedManager];
          v55 = [WFUserJoinEvent joinEventWithType:1 security:a6 error:v14 didRun:0 didPass:0 failedTests:MEMORY[0x277CBEBF8]];
          [v54 processEvent:v55];

          break;
        case 0:
          v46 = +[WFMetricsManager sharedManager];
          v47 = [v13 sectionCounts];
          v48 = [v13 sectionNameJoined];
          v49 = [WFUserJoinEvent joinEventWithSecurity:a6 error:v14 sectionCounts:v47 sectionName:v48 didRun:0 didPass:0 failedTests:MEMORY[0x277CBEBF8]];
          [v46 processEvent:v49];

          break;
      }

      goto LABEL_79;
    }

    if (v17 == 6)
    {
      v26 = WFLogForCategory(5uLL);
      v27 = OSLogForWFLogLevel(1uLL);
      if (WFCurrentLogLevel() && v26)
      {
        v28 = v26;
        if (os_log_type_enabled(v28, v27))
        {
          v29 = [v12 ssid];
          *buf = 138412290;
          *v121 = v29;
          _os_log_impl(&dword_273ECD000, v28, v27, "User cancelled association to %@", buf, 0xCu);
        }
      }

      v30 = [MEMORY[0x277CCA9B8] associationErrorWithReason:6];
      [(WFNetworkListController *)self _associationDidFinish:0 error:v30 network:0];

      v31 = [(WFNetworkListController *)self associationContext];
      v32 = [v31 originator];

      switch(v32)
      {
        case 2:
          v83 = +[WFMetricsManager sharedManager];
          v84 = [WFUserJoinEvent joinEventWithType:2 security:a6 error:v14 didRun:0 didPass:0 failedTests:MEMORY[0x277CBEBF8]];
          [v83 processEvent:v84];

          break;
        case 1:
          v81 = +[WFMetricsManager sharedManager];
          v82 = [WFUserJoinEvent joinEventWithType:1 security:a6 error:v14 didRun:0 didPass:0 failedTests:MEMORY[0x277CBEBF8]];
          [v81 processEvent:v82];

          break;
        case 0:
          v33 = +[WFMetricsManager sharedManager];
          v34 = [v13 sectionCounts];
          v35 = [v13 sectionNameJoined];
          v36 = [WFUserJoinEvent joinEventWithSecurity:a6 error:v14 sectionCounts:v34 sectionName:v35 didRun:0 didPass:0 failedTests:MEMORY[0x277CBEBF8]];
          [v33 processEvent:v36];

          break;
      }

      goto LABEL_79;
    }

    goto LABEL_59;
  }

  if (v17 != 7)
  {
    if (v17 != 11)
    {
LABEL_59:
      v62 = [(WFNetworkListController *)self associationContext];
      [v62 setState:2];

      v63 = WFLogForCategory(5uLL);
      v64 = OSLogForWFLogLevel(1uLL);
      if (WFCurrentLogLevel() && v63)
      {
        v65 = v63;
        if (os_log_type_enabled(v65, v64))
        {
          v66 = [v11 code];
          v67 = [v12 ssid];
          *buf = 67109378;
          *v121 = v66;
          *&v121[4] = 2112;
          *&v121[6] = v67;
          _os_log_impl(&dword_273ECD000, v65, v64, "unhandled errorCode (%d) while associating to %@", buf, 0x12u);
        }
      }

      objc_initWeak(&location, self);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 || [v12 iOSHotspot])
      {
        v68 = +[WFMetricsManager sharedManager];
        v69 = [v13 sectionCounts];
        v70 = [v13 sectionNameJoined];
        v71 = [WFUserJoinEvent joinEventWithSecurity:a6 error:v14 sectionCounts:v69 sectionName:v70 didRun:0 didPass:0 failedTests:MEMORY[0x277CBEBF8]];
        [v68 processEvent:v71];

        v72 = WFLogForCategory(0);
        v73 = OSLogForWFLogLevel(3uLL);
        if (WFCurrentLogLevel() >= 3 && v72)
        {
          v74 = v72;
          if (os_log_type_enabled(v74, v73))
          {
            v75 = [v12 ssid];
            *buf = 138412290;
            *v121 = v75;
            _os_log_impl(&dword_273ECD000, v74, v73, "Skip running velocity test as joining a personal hotspot network: %@", buf, 0xCu);
          }
        }

        v76 = [[WFErrorContext alloc] initWithAssociationError:v11 network:v12 diagnosticsResult:0];
        objc_initWeak(buf, v76);
        v109[0] = MEMORY[0x277D85DD0];
        v109[1] = 3221225472;
        v109[2] = __99__WFNetworkListController__handleAssociationError_network_profile_securityMode_associationContext___block_invoke_229;
        v109[3] = &unk_279EBD4C0;
        v109[4] = self;
        objc_copyWeak(&v111, buf);
        v110 = v11;
        [(WFErrorContext *)v76 setCompletionHandler:v109];
        [(WFNetworkListController *)self _presentContext:v76 contextType:0];

        objc_destroyWeak(&v111);
        objc_destroyWeak(buf);
      }

      else
      {
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 3221225472;
        aBlock[2] = __99__WFNetworkListController__handleAssociationError_network_profile_securityMode_associationContext___block_invoke_2_230;
        aBlock[3] = &unk_279EBD4E8;
        aBlock[4] = self;
        v108[1] = a6;
        v108[2] = v14;
        v105 = v13;
        v106 = v11;
        v77 = v12;
        v107 = v77;
        objc_copyWeak(v108, &location);
        v78 = _Block_copy(aBlock);
        if ([v77 supportsJoinFailureDiagnostics])
        {
          v79 = [(WFNetworkListController *)self diagnosticsManager];
          v80 = [v77 ssid];
          [v79 runJoinFailureDiagnosticsFor:v80 withUpdate:&__block_literal_global_236 result:v78];
        }

        else
        {
          v79 = [v77 ssid];
          (*(v78 + 2))(v78, 0, 0, v79);
        }

        objc_destroyWeak(v108);
      }

      objc_destroyWeak(&location);
      goto LABEL_79;
    }

    v20 = [(WFNetworkListController *)self associationContext];
    v21 = [v20 originator];

    if (v21 == 2)
    {
      v22 = +[WFMetricsManager sharedManager];
      v23 = [WFUserJoinEvent joinEventWithType:2 security:a6 error:v14 didRun:0 didPass:0 failedTests:MEMORY[0x277CBEBF8]];
      [v22 processEvent:v23];
    }

    else if (v21 == 1)
    {
      v22 = +[WFMetricsManager sharedManager];
      v23 = [WFUserJoinEvent joinEventWithType:1 security:a6 error:v14 didRun:0 didPass:0 failedTests:MEMORY[0x277CBEBF8]];
      [v22 processEvent:v23];
    }

    else
    {
      if (v21)
      {
        goto LABEL_53;
      }

      v22 = +[WFMetricsManager sharedManager];
      v23 = [v13 sectionCounts];
      v24 = [v13 sectionNameJoined];
      v25 = [WFUserJoinEvent joinEventWithSecurity:a6 error:v14 sectionCounts:v23 sectionName:v24 didRun:0 didPass:0 failedTests:MEMORY[0x277CBEBF8]];
      [v22 processEvent:v25];
    }

LABEL_53:
    v58 = WFLogForCategory(5uLL);
    v59 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v58)
    {
      v60 = v58;
      if (os_log_type_enabled(v60, v59))
      {
        v61 = [v12 ssid];
        *buf = 138412290;
        *v121 = v61;
        _os_log_impl(&dword_273ECD000, v60, v59, "Scan required to continue association to %@", buf, 0xCu);
      }
    }

    goto LABEL_59;
  }

  v37 = WFLogForCategory(5uLL);
  v38 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v37)
  {
    v39 = v37;
    if (os_log_type_enabled(v39, v38))
    {
      v40 = [v12 ssid];
      *buf = 138412290;
      *v121 = v40;
      _os_log_impl(&dword_273ECD000, v39, v38, "User input required for %@", buf, 0xCu);
    }
  }

  v41 = [(WFNetworkListController *)self associationContext];
  [v41 setState:2];

  if ([v12 isEnterprise])
  {
    v42 = [v11 userInfo];
    v43 = [v42 objectForKey:@"kWFAssociationCertificateChainKey"];

    if (v43)
    {
      [(WFNetworkListController *)self _promptTrustCertificateForNetwork:v12 certificateChain:v43 profile:v103 autoJoin:0];
LABEL_36:

      goto LABEL_79;
    }

    v86 = [v11 userInfo];
    v87 = [v86 objectForKey:@"kWFAssociationUsernameRequiredKey"];
    if (v87)
    {
    }

    else
    {
      v88 = [v11 userInfo];
      v89 = [v88 objectForKey:@"kWFAssociationPasswordRequiredKey"];
      v90 = v89 == 0;

      if (v90)
      {
        goto LABEL_84;
      }
    }

    [(WFNetworkListController *)self _promptCredentialsForNetwork:v12 profile:v103];
LABEL_84:
    v91 = [(WFNetworkListController *)self associationContext];
    v92 = [v91 originator];

    switch(v92)
    {
      case 2:
        v99 = +[WFMetricsManager sharedManager];
        v100 = [WFUserJoinEvent joinEventWithType:2 security:a6 error:v14 didRun:0 didPass:0 failedTests:MEMORY[0x277CBEBF8]];
        [v99 processEvent:v100];

        break;
      case 1:
        v97 = +[WFMetricsManager sharedManager];
        v98 = [WFUserJoinEvent joinEventWithType:1 security:a6 error:v14 didRun:0 didPass:0 failedTests:MEMORY[0x277CBEBF8]];
        [v97 processEvent:v98];

        break;
      case 0:
        v93 = +[WFMetricsManager sharedManager];
        v94 = [v13 sectionCounts];
        v95 = [v13 sectionNameJoined];
        v96 = [WFUserJoinEvent joinEventWithSecurity:a6 error:v14 sectionCounts:v94 sectionName:v95 didRun:0 didPass:0 failedTests:MEMORY[0x277CBEBF8]];
        [v93 processEvent:v96];

        break;
    }

    goto LABEL_36;
  }

  v50 = WFLogForCategory(5uLL);
  v51 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v50)
  {
    v52 = v50;
    if (os_log_type_enabled(v52, v51))
    {
      v53 = [v12 ssid];
      *buf = 138412290;
      *v121 = v53;
      _os_log_impl(&dword_273ECD000, v52, v51, "Recieved WFAssociationTrustRequiredErr for non-enterprise network %@", buf, 0xCu);
    }
  }

LABEL_79:
  v85 = *MEMORY[0x277D85DE8];
}

void __99__WFNetworkListController__handleAssociationError_network_profile_securityMode_associationContext___block_invoke(id *a1)
{
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __99__WFNetworkListController__handleAssociationError_network_profile_securityMode_associationContext___block_invoke_2;
  v8[3] = &unk_279EBD498;
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[7];
  *&v6 = v4;
  *(&v6 + 1) = v5;
  *&v7 = v2;
  *(&v7 + 1) = v3;
  v9 = v7;
  v10 = v6;
  objc_copyWeak(&v11, a1 + 8);
  objc_copyWeak(&v12, a1 + 9);
  dispatch_async(MEMORY[0x277D85CD0], v8);
  objc_destroyWeak(&v12);
  objc_destroyWeak(&v11);
}

void __99__WFNetworkListController__handleAssociationError_network_profile_securityMode_associationContext___block_invoke_2(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = WFLogForCategory(5uLL);
  v3 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v2 && os_log_type_enabled(v2, v3))
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    v7 = *(a1 + 56);
    v12 = 138413058;
    v13 = v4;
    v14 = 2112;
    v15 = v5;
    v16 = 2112;
    v17 = v6;
    v18 = 2112;
    v19 = v7;
    _os_log_impl(&dword_273ECD000, v2, v3, "Dismissing error alert and prompting credentials for %@ (profile: %@) error: %@ (%@)", &v12, 0x2Au);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v9 = objc_loadWeakRetained((a1 + 72));
  [WeakRetained _dismissErrorViewControllerWithContext:v9];

  v10 = objc_loadWeakRetained((a1 + 64));
  [v10 _promptCredentialsForNetwork:*(a1 + 32) profile:*(a1 + 40)];

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t __99__WFNetworkListController__handleAssociationError_network_profile_securityMode_associationContext___block_invoke_229(uint64_t a1)
{
  v2 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [v2 _dismissErrorViewControllerWithContext:WeakRetained];

  v4 = *(a1 + 32);
  v5 = *(a1 + 40);

  return [v4 _associationDidFinish:0 error:v5 network:0];
}

void __99__WFNetworkListController__handleAssociationError_network_profile_securityMode_associationContext___block_invoke_2_230(uint64_t a1, void *a2, void *a3, void *a4)
{
  v37 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v28 = a4;
  if (v7)
  {
    v9 = WFLogForCategory(0);
    v10 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v9 && os_log_type_enabled(v9, v10))
    {
      *buf = 138412546;
      v34 = v28;
      v35 = 2112;
      v36 = v7;
      _os_log_impl(&dword_273ECD000, v9, v10, "Diagnostics Error for ssid: %@ received: %@", buf, 0x16u);
    }
  }

  if (v8)
  {
    v11 = [v8 didPassTest];
    v12 = [v8 failedTests];
  }

  else
  {
    v13 = WFLogForCategory(0);
    v14 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v13 && os_log_type_enabled(v13, v14))
    {
      *buf = 0;
      _os_log_impl(&dword_273ECD000, v13, v14, "Empty diagnostics result returned", buf, 2u);
    }

    v11 = 0;
    v12 = MEMORY[0x277CBEBF8];
  }

  v15 = WFLogForCategory(0);
  v16 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v15 && os_log_type_enabled(v15, v16))
  {
    *buf = 138412546;
    v34 = v28;
    v35 = 2112;
    v36 = v8;
    _os_log_impl(&dword_273ECD000, v15, v16, "Diagnostics result for ssid: %@ received: %@", buf, 0x16u);
  }

  v17 = [*(a1 + 32) associationContext];
  v18 = [v17 originator];

  switch(v18)
  {
    case 2:
      v19 = +[WFMetricsManager sharedManager];
      v22 = [WFUserJoinEvent joinEventWithType:2 security:*(a1 + 72) error:*(a1 + 80) didRun:1 didPass:v11 failedTests:v12];
      [v19 processEvent:v22];
      goto LABEL_24;
    case 1:
      v19 = +[WFMetricsManager sharedManager];
      v22 = [WFUserJoinEvent joinEventWithType:1 security:*(a1 + 72) error:*(a1 + 80) didRun:1 didPass:v11 failedTests:v12];
      [v19 processEvent:v22];
      goto LABEL_24;
    case 0:
      v19 = +[WFMetricsManager sharedManager];
      v21 = *(a1 + 72);
      v20 = *(a1 + 80);
      v22 = [*(a1 + 40) sectionCounts];
      v23 = [*(a1 + 40) sectionNameJoined];
      v24 = [WFUserJoinEvent joinEventWithSecurity:v21 error:v20 sectionCounts:v22 sectionName:v23 didRun:0 didPass:0 failedTests:MEMORY[0x277CBEBF8]];
      [v19 processEvent:v24];

LABEL_24:
      break;
  }

  v25 = [[WFErrorContext alloc] initWithAssociationError:*(a1 + 48) network:*(a1 + 56) diagnosticsResult:v8];
  objc_initWeak(buf, v25);
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __99__WFNetworkListController__handleAssociationError_network_profile_securityMode_associationContext___block_invoke_231;
  v29[3] = &unk_279EBD3A8;
  objc_copyWeak(&v31, (a1 + 64));
  objc_copyWeak(&v32, buf);
  v30 = *(a1 + 48);
  [(WFErrorContext *)v25 setCompletionHandler:v29];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  [WeakRetained _presentContext:v25 contextType:0];

  objc_destroyWeak(&v32);
  objc_destroyWeak(&v31);
  objc_destroyWeak(buf);

  v27 = *MEMORY[0x277D85DE8];
}

void __99__WFNetworkListController__handleAssociationError_network_profile_securityMode_associationContext___block_invoke_231(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _dismissErrorViewControllerWithContext:v3];

  v4 = objc_loadWeakRetained((a1 + 40));
  [v4 _associationDidFinish:0 error:*(a1 + 32) network:0];
}

void __99__WFNetworkListController__handleAssociationError_network_profile_securityMode_associationContext___block_invoke_2_233(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = WFLogForCategory(0);
  v4 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v3 && os_log_type_enabled(v3, v4))
  {
    v6 = 138412290;
    v7 = v2;
    _os_log_impl(&dword_273ECD000, v3, v4, "Diagnostics event received: %@", &v6, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (BOOL)_supportsWiFiPasswordSharing
{
  viewController = self->_viewController;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  v4 = self->_viewController;

  return [(WFNetworkListing *)v4 supportsWiFiPasswordSharing];
}

- (void)_promptCredentialsForNetwork:(id)a3 profile:(id)a4
{
  v61 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(WFNetworkListController *)self credentialsContext];

  if (v8)
  {
    v9 = WFLogForCategory(0);
    v10 = OSLogForWFLogLevel(3uLL);
    if (WFCurrentLogLevel() >= 3 && v9)
    {
      v9 = v9;
      if (os_log_type_enabled(&v9->super, v10))
      {
        v11 = [(WFNetworkListController *)self credentialsContext];
        *buf = 136315394;
        v56 = "[WFNetworkListController _promptCredentialsForNetwork:profile:]";
        v57 = 2112;
        v58 = v11;
        _os_log_impl(&dword_273ECD000, &v9->super, v10, "%s: reusing existing credentials context (%@)", buf, 0x16u);
      }
    }
  }

  else if ([(WFCredentialsContext *)v6 securityMode]== 128)
  {
    v12 = [WFWAPICertificatePromptOperation alloc];
    v13 = [(WFNetworkListController *)self viewController];
    v9 = [(WFWAPICertificatePromptOperation *)v12 initWithRootViewController:v13 network:v6];

    v14 = WFLogForCategory(0);
    v15 = OSLogForWFLogLevel(3uLL);
    if (WFCurrentLogLevel() >= 3 && v14 && os_log_type_enabled(v14, v15))
    {
      *buf = 136315650;
      v56 = "[WFNetworkListController _promptCredentialsForNetwork:profile:]";
      v57 = 2112;
      v58 = v6;
      v59 = 2112;
      v60 = v7;
      _os_log_impl(&dword_273ECD000, v14, v15, "%s: prompting WAPI cert for %@ (profile %@)", buf, 0x20u);
    }

    objc_initWeak(buf, v9);
    objc_initWeak(&location, self);
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __64__WFNetworkListController__promptCredentialsForNetwork_profile___block_invoke;
    v49[3] = &unk_279EBD530;
    objc_copyWeak(&v52, buf);
    objc_copyWeak(&v53, &location);
    v50 = v7;
    v51 = v6;
    [(WFNetworkProfile *)v9 setCompletionBlock:v49];
    v16 = [MEMORY[0x277CCABD8] mainQueue];
    [v16 addOperation:v9];

    objc_destroyWeak(&v53);
    objc_destroyWeak(&v52);
    objc_destroyWeak(&location);
    objc_destroyWeak(buf);
  }

  else
  {
    v17 = v7;
    v9 = v17;
    if (!v17)
    {
      v18 = [(WFCredentialsContext *)v6 matchingKnownNetworkProfile];

      if (!v18 || (v19 = [WFNetworkProfile alloc], [(WFCredentialsContext *)v6 matchingKnownNetworkProfile], v20 = objc_claimAutoreleasedReturnValue(), v21 = [(WFNetworkProfile *)v19 initWithCoreWiFiProfile:v20], v9 = [(WFNetworkProfile *)v21 mutableCopy], v21, v20, !v9))
      {
        v9 = [[WFNetworkProfile alloc] initWithNetwork:v6];
        v22 = WFLogForCategory(0);
        v23 = OSLogForWFLogLevel(1uLL);
        if (WFCurrentLogLevel() && v22 && os_log_type_enabled(v22, v23))
        {
          *buf = 136315394;
          v56 = "[WFNetworkListController _promptCredentialsForNetwork:profile:]";
          v57 = 2112;
          v58 = v6;
          _os_log_impl(&dword_273ECD000, v22, v23, "%s: no existing profile for network %@", buf, 0x16u);
        }
      }
    }

    v24 = [[WFCredentialsContext alloc] initWithNetwork:v6 profile:v9 authTraits:[(WFNetworkListController *)self _defaultAuthTraits]];
    if ([(WFNetworkListController *)self _supportsWiFiPasswordSharing])
    {
      if ([MEMORY[0x277D54CB0] passwordSharingAvailability])
      {
        v25 = 0;
      }

      else
      {
        v25 = [(WFCredentialsContext *)v6 securityMode]== 4 || [(WFCredentialsContext *)v6 securityMode]== 8 || [(WFCredentialsContext *)v6 securityMode]== 512 || [(WFCredentialsContext *)v6 securityMode]== 520;
      }

      [(WFCredentialsContext *)v24 setPasswordSharingSupported:v25];
    }

    v26 = WFLogForCategory(0);
    v27 = OSLogForWFLogLevel(3uLL);
    if (WFCurrentLogLevel() >= 3 && v26 && os_log_type_enabled(v26, v27))
    {
      *buf = 136315650;
      v56 = "[WFNetworkListController _promptCredentialsForNetwork:profile:]";
      v57 = 2112;
      v58 = v6;
      v59 = 2112;
      v60 = v17;
      _os_log_impl(&dword_273ECD000, v26, v27, "%s: prompting for password (network %@ profile %@)", buf, 0x20u);
    }

    v28 = [(WFNetworkListController *)self viewProvider];
    v29 = objc_opt_respondsToSelector();

    v30 = [(WFNetworkListController *)self viewProvider];
    v31 = [v30 credentialsViewControllerWithContext:v24];

    if (v31)
    {
      [(WFCredentialsContext *)v24 setProvider:v31];
      if (v29)
      {
        v32 = WFLogForCategory(0);
        v33 = OSLogForWFLogLevel(3uLL);
        if (WFCurrentLogLevel() >= 3 && v32 && os_log_type_enabled(v32, v33))
        {
          *buf = 138412546;
          v56 = v31;
          v57 = 2112;
          v58 = v24;
          _os_log_impl(&dword_273ECD000, v32, v33, "viewProvider will handle presentation of %@ (context %@)", buf, 0x16u);
        }

        v34 = [(WFNetworkListController *)self viewProvider];
        [v34 presentNetworkViewController:v31 forContext:v24];
      }

      else
      {
        v34 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v31];
        [v34 setModalPresentationStyle:2];
        if ([(WFNetworkListController *)self associatingToOtherNetwork])
        {
          [(WFNetworkListController *)self otherNetworkVC];
        }

        else
        {
          [(WFNetworkListController *)self viewController];
        }
        v37 = ;
        [v37 presentViewController:v34 animated:1 completion:0];
      }

      [(WFNetworkListController *)self setCredentialsContext:v24];
      [(WFNetworkListController *)self setVisibleContext:v24];
      objc_initWeak(buf, self);
      objc_initWeak(&location, v24);
      objc_initWeak(&from, v9);
      v45[0] = MEMORY[0x277D85DD0];
      v45[1] = 3221225472;
      v45[2] = __64__WFNetworkListController__promptCredentialsForNetwork_profile___block_invoke_247;
      v45[3] = &unk_279EBD448;
      objc_copyWeak(&v46, buf);
      objc_copyWeak(&v47, &location);
      [(WFCredentialsContext *)v24 setCancellationHandler:v45];
      v39[0] = MEMORY[0x277D85DD0];
      v39[1] = 3221225472;
      v39[2] = __64__WFNetworkListController__promptCredentialsForNetwork_profile___block_invoke_2;
      v39[3] = &unk_279EBD558;
      objc_copyWeak(&v42, buf);
      objc_copyWeak(&v43, &from);
      v40 = v9;
      objc_copyWeak(&v44, &location);
      v41 = v6;
      [(WFCredentialsContext *)v24 setCompletionHandler:v39];

      objc_destroyWeak(&v44);
      objc_destroyWeak(&v43);
      objc_destroyWeak(&v42);
      objc_destroyWeak(&v47);
      objc_destroyWeak(&v46);
      objc_destroyWeak(&from);
      objc_destroyWeak(&location);
      objc_destroyWeak(buf);
    }

    else
    {
      v35 = WFLogForCategory(0);
      v36 = OSLogForWFLogLevel(3uLL);
      if (WFCurrentLogLevel() >= 3 && v35 && os_log_type_enabled(v35, v36))
      {
        *buf = 0;
        _os_log_impl(&dword_273ECD000, v35, v36, "credentialsViewController is nil -- cancelling credentials prompt", buf, 2u);
      }

      [(WFNetworkListController *)self _promptCredentialsForNetworkCancelled:v24];
    }
  }

  v38 = *MEMORY[0x277D85DE8];
}

void __64__WFNetworkListController__promptCredentialsForNetwork_profile___block_invoke(id *a1)
{
  v31 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = objc_loadWeakRetained(a1 + 7);
  if ([WeakRetained userCancelled])
  {
    v4 = WFLogForCategory(0);
    v5 = OSLogForWFLogLevel(3uLL);
    if (WFCurrentLogLevel() >= 3 && v4 && os_log_type_enabled(v4, v5))
    {
      *buf = 136315138;
      v28 = "[WFNetworkListController _promptCredentialsForNetwork:profile:]_block_invoke";
      _os_log_impl(&dword_273ECD000, v4, v5, "%s: User cancelled association", buf, 0xCu);
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __64__WFNetworkListController__promptCredentialsForNetwork_profile___block_invoke_240;
    block[3] = &unk_279EBCFE0;
    block[4] = v3;
    dispatch_async(MEMORY[0x277D85CD0], block);
    goto LABEL_21;
  }

  v6 = [a1[4] mutableCopy];
  if (!v6)
  {
    v7 = [a1[5] matchingKnownNetworkProfile];

    if (v7)
    {
      v8 = [WFNetworkProfile alloc];
      v9 = [a1[5] matchingKnownNetworkProfile];
      v10 = [(WFNetworkProfile *)v8 initWithCoreWiFiProfile:v9];
      v11 = [(WFNetworkProfile *)v10 mutableCopy];

      if (v11)
      {
        goto LABEL_12;
      }
    }

    v6 = [WFMutableNetworkProfile mutableProfileForNetwork:a1[5]];
  }

  v11 = v6;
LABEL_12:
  v12 = [WeakRetained WAPIRootCertificate];
  v13 = [WeakRetained WAPIIdentityPEMBlob];
  v14 = WFWAPICertificateBlobString(v12, v13);
  [v11 setPassword:v14];

  [v11 setUserProvidedPassword:1];
  v15 = [v11 password];

  if (v15)
  {
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __64__WFNetworkListController__promptCredentialsForNetwork_profile___block_invoke_241;
    v23[3] = &unk_279EBD268;
    v23[4] = v3;
    v24 = a1[5];
    v25 = v11;
    dispatch_async(MEMORY[0x277D85CD0], v23);
  }

  else
  {
    v16 = WFLogForCategory(0);
    v17 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v16)
    {
      v18 = v16;
      if (os_log_type_enabled(v18, v17))
      {
        v19 = [WeakRetained WAPIRootCertificate];
        v20 = [WeakRetained WAPIIdentityPEMBlob];
        *buf = 138412546;
        v28 = v19;
        v29 = 2112;
        v30 = v20;
        _os_log_impl(&dword_273ECD000, v18, v17, "Unable to create WAPI password from Root: %@ IdentityBlob: %@", buf, 0x16u);
      }
    }

    v21 = [MEMORY[0x277CCA9B8] associationErrorWithReason:9];
    [v3 _associationDidFinish:0 error:v21 network:0];
  }

LABEL_21:
  v22 = *MEMORY[0x277D85DE8];
}

void __64__WFNetworkListController__promptCredentialsForNetwork_profile___block_invoke_240(uint64_t a1)
{
  [*(a1 + 32) setOtherNetworkVC:0];
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCA9B8] associationErrorWithReason:6];
  [v2 _associationDidFinish:0 error:v3 network:0];
}

void __64__WFNetworkListController__promptCredentialsForNetwork_profile___block_invoke_247(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _promptCredentialsForNetworkCancelled:v2];
}

void __64__WFNetworkListController__promptCredentialsForNetwork_profile___block_invoke_2(uint64_t a1, void *a2, int a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v7 = WFLogForCategory(0);
  v8 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v7 && os_log_type_enabled(v7, v8))
  {
    v22 = 136315650;
    v23 = "[WFNetworkListController _promptCredentialsForNetwork:profile:]_block_invoke_2";
    v24 = 2112;
    v25 = v5;
    v26 = 1024;
    v27 = a3;
    _os_log_impl(&dword_273ECD000, v7, v8, "%s: credentials prompt complete, provider %@, shouldDismiss %d", &v22, 0x1Cu);
  }

  v9 = objc_loadWeakRetained((a1 + 56));
  v10 = [v9 mutableCopy];

  v11 = [*(a1 + 32) password];
  [v10 setPreviousPassword:v11];

  [v10 setTLSIdentity:{objc_msgSend(v5, "TLSIdentity")}];
  v12 = [v5 username];
  [v10 setUsername:v12];

  v13 = [v5 password];
  [v10 setPassword:v13];

  [v10 setUserProvidedPassword:1];
  v14 = objc_loadWeakRetained((a1 + 64));
  v15 = [v14 passwordReceivedFromPasswordSharing];

  if (v15)
  {
    v16 = WFLogForCategory(0);
    v17 = OSLogForWFLogLevel(3uLL);
    if (WFCurrentLogLevel() >= 3 && v16)
    {
      v18 = v16;
      if (os_log_type_enabled(v18, v17))
      {
        v19 = [v10 ssid];
        v22 = 136315394;
        v23 = "[WFNetworkListController _promptCredentialsForNetwork:profile:]_block_invoke";
        v24 = 2112;
        v25 = v19;
        _os_log_impl(&dword_273ECD000, v18, v17, "%s: password for '%@' received from password sharing", &v22, 0x16u);
      }
    }

    [v10 setAddedFromWiFiPasswordSharing:1];
  }

  [WeakRetained _associateToScanRecord:*(a1 + 40) profile:v10];
  if (a3)
  {
    v20 = objc_loadWeakRetained((a1 + 64));
    [WeakRetained _dismissCredentialsViewControllerWithContext:v20];
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)_promptCredentialsForNetworkCancelled:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = WFLogForCategory(0);
  v6 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v5 && os_log_type_enabled(v5, v6))
  {
    v9 = 136315138;
    v10 = "[WFNetworkListController _promptCredentialsForNetworkCancelled:]";
    _os_log_impl(&dword_273ECD000, v5, v6, "%s: user cancelled credentials prompt", &v9, 0xCu);
  }

  v7 = [MEMORY[0x277CCA9B8] associationErrorWithReason:6];
  [(WFNetworkListController *)self _associationDidFinish:0 error:v7 network:0];

  [(WFNetworkListController *)self _dismissCredentialsViewControllerWithContext:v4];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_promptTrustCertificateForNetwork:(id)a3 certificateChain:(id)a4 profile:(id)a5 autoJoin:(BOOL)a6
{
  v6 = a6;
  v50 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [(WFNetworkListController *)self credentialsContext];
  if (v13)
  {
    v14 = [(WFNetworkListController *)self associatingToOtherNetwork];

    if (!v14)
    {
      v15 = WFLogForCategory(0);
      v16 = OSLogForWFLogLevel(3uLL);
      if (WFCurrentLogLevel() >= 3 && v15 && os_log_type_enabled(v15, v16))
      {
        *buf = 136315138;
        v45 = "[WFNetworkListController _promptTrustCertificateForNetwork:certificateChain:profile:autoJoin:]";
        _os_log_impl(&dword_273ECD000, v15, v16, "%s: dismissing credentials view controller", buf, 0xCu);
      }

      v17 = [(WFNetworkListController *)self credentialsContext];
      [(WFNetworkListController *)self _dismissCredentialsViewControllerWithContext:v17];
    }
  }

  v18 = WFLogForCategory(5uLL);
  v19 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v18)
  {
    v20 = v18;
    if (os_log_type_enabled(v20, v19))
    {
      v21 = [(WFNetworkListController *)self associationContext];
      *buf = 138413058;
      v45 = v10;
      v46 = 1024;
      *v47 = v6;
      *&v47[4] = 2112;
      *&v47[6] = v12;
      v48 = 2112;
      v49 = v21;
      _os_log_impl(&dword_273ECD000, v20, v19, "prompting trust cert for %@ autojoin=%d (profile %@) - associationCtx: %@", buf, 0x26u);
    }
  }

  v22 = [[WFCertificateContext alloc] initWithNetwork:v10 profile:v12 certificateChain:v11];
  v23 = [(WFNetworkListController *)self viewProvider];
  v24 = [v23 certificateViewControllerWithContext:v22];

  [(WFCertificateContext *)v22 setProvider:v24];
  v25 = [(WFNetworkListController *)self viewProvider];
  v26 = objc_opt_respondsToSelector();

  if (v26)
  {
    v27 = WFLogForCategory(0);
    v28 = OSLogForWFLogLevel(3uLL);
    if (WFCurrentLogLevel() >= 3 && v27 && os_log_type_enabled(v27, v28))
    {
      *buf = 138412546;
      v45 = v24;
      v46 = 2112;
      *v47 = v22;
      _os_log_impl(&dword_273ECD000, v27, v28, "viewProvider will handle presentation of %@ (context %@)", buf, 0x16u);
    }

    v29 = [(WFNetworkListController *)self viewProvider];
    [v29 presentNetworkViewController:v24 forContext:v22];
  }

  else
  {
    v30 = [MEMORY[0x277D75418] currentDevice];
    v31 = [v30 userInterfaceIdiom];

    if ((v31 & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      [v24 setModalPresentationStyle:2];
    }

    if ([(WFNetworkListController *)self associatingToOtherNetwork])
    {
      [(WFNetworkListController *)self otherNetworkVC];
    }

    else
    {
      [(WFNetworkListController *)self viewController];
    }
    v29 = ;
    [v29 presentViewController:v24 animated:1 completion:0];
  }

  [(WFNetworkListController *)self setCertificateContext:v22];
  [(WFNetworkListController *)self setVisibleContext:v22];
  objc_initWeak(buf, self);
  objc_initWeak(&location, v12);
  objc_initWeak(&from, v22);
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __95__WFNetworkListController__promptTrustCertificateForNetwork_certificateChain_profile_autoJoin___block_invoke;
  v35[3] = &unk_279EBD580;
  objc_copyWeak(&v38, &location);
  v41 = v6;
  objc_copyWeak(&v39, buf);
  v32 = v11;
  v36 = v32;
  v33 = v10;
  v37 = v33;
  objc_copyWeak(&v40, &from);
  [(WFCertificateContext *)v22 setCompletionHandler:v35];
  objc_destroyWeak(&v40);

  objc_destroyWeak(&v39);
  objc_destroyWeak(&v38);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
  objc_destroyWeak(buf);

  v34 = *MEMORY[0x277D85DE8];
}

void __95__WFNetworkListController__promptTrustCertificateForNetwork_certificateChain_profile_autoJoin___block_invoke(uint64_t a1, int a2)
{
  v26 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if (a2)
    {
      if (*(a1 + 72) == 1)
      {
        v5 = objc_loadWeakRetained((a1 + 56));
        v6 = [v5 wifiClient];
        [v6 dispatchCertificateTrustAction:0 profile:WeakRetained];
      }

      v7 = [WeakRetained mutableCopy];
      [v7 setCertificateChain:*(a1 + 32)];
      v8 = WFLogForCategory(5uLL);
      v9 = OSLogForWFLogLevel(1uLL);
      if (WFCurrentLogLevel() && v8)
      {
        v10 = v8;
        if (os_log_type_enabled(v10, v9))
        {
          v11 = [v7 ssid];
          v24 = 138412290;
          v25 = v11;
          _os_log_impl(&dword_273ECD000, v10, v9, "user accepted trust prompt for %@", &v24, 0xCu);
        }
      }

      v12 = objc_loadWeakRetained((a1 + 56));
      [v12 _associateToEnterpriseNetwork:*(a1 + 40) profile:v7];
    }

    else
    {
      v13 = WFLogForCategory(5uLL);
      v14 = OSLogForWFLogLevel(1uLL);
      if (WFCurrentLogLevel() && v13)
      {
        v15 = v13;
        if (os_log_type_enabled(v15, v14))
        {
          v16 = [WeakRetained ssid];
          v24 = 138412290;
          v25 = v16;
          _os_log_impl(&dword_273ECD000, v15, v14, "user did not accept trust prompt for %@", &v24, 0xCu);
        }
      }

      if (*(a1 + 72) == 1)
      {
        v17 = objc_loadWeakRetained((a1 + 56));
        v18 = [v17 wifiClient];
        [v18 dispatchCertificateTrustAction:1 profile:WeakRetained];
      }

      v19 = objc_loadWeakRetained((a1 + 56));
      v20 = [MEMORY[0x277CCA9B8] associationErrorWithReason:6];
      [v19 _associationDidFinish:0 error:v20 network:0];

      v7 = objc_loadWeakRetained((a1 + 56));
      v12 = [v7 interface];
      [v12 disassociateFromCurrentNetwork];
    }

    v21 = objc_loadWeakRetained((a1 + 56));
    v22 = objc_loadWeakRetained((a1 + 64));
    [v21 _dismissTrustViewControllerWithContext:v22];
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (unint64_t)_getLockdownModeSecurityType:(id)a3
{
  v3 = a3;
  v4 = [v3 scanResult];
  if ([v4 isOpen])
  {

LABEL_4:
    v7 = 0;
    goto LABEL_5;
  }

  v5 = [v3 scanResult];
  v6 = [v5 isOWE];

  if (v6)
  {
    goto LABEL_4;
  }

  v9 = [v3 scanResult];
  v10 = [v9 isWEP];

  if (v10)
  {
    v7 = 2;
  }

  else
  {
    v11 = [v3 scanResult];
    v12 = [v11 isWAPI];

    if (v12)
    {
      v7 = 3;
    }

    else
    {
      v13 = [v3 scanResult];
      v14 = [v13 hasTKIPCipher];

      if (v14)
      {
        v7 = 4;
      }

      else
      {
        v15 = [v3 scanResult];
        v16 = [v15 isPasspoint];

        if (v16)
        {
          v7 = 5;
        }

        else
        {
          v17 = [v3 scanResult];
          v18 = [v17 matchingKnownNetworkProfile];
          v19 = [v18 isCaptive];

          if (v19)
          {
            v7 = 6;
          }

          else
          {
            v7 = 7;
          }
        }
      }
    }
  }

LABEL_5:

  return v7;
}

- (BOOL)_canStartAssociationToNetwork:(id)a3
{
  v91 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(WFNetworkListController *)self _canPromptForInstantHotspot])
  {
    v5 = [(WFNetworkListController *)self interface];
    v6 = [v5 ipMonitor];
    v7 = [v6 personalHotspotHasClients];

    if (v7)
    {
      v8 = WFLogForCategory(0);
      v9 = OSLogForWFLogLevel(3uLL);
      if (WFCurrentLogLevel() >= 3 && v8)
      {
        v10 = v8;
        if (os_log_type_enabled(v10, v9))
        {
          v11 = [(WFNetworkListController *)self viewController];
          *buf = 138412290;
          v86 = v11;
          _os_log_impl(&dword_273ECD000, v10, v9, "Personal Hotspot has clients, %@ requires user to be prompted before associating", buf, 0xCu);
        }
      }

      objc_initWeak(buf, self);
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __57__WFNetworkListController__canStartAssociationToNetwork___block_invoke;
      aBlock[3] = &unk_279EBD138;
      objc_copyWeak(&v84, buf);
      v12 = v4;
      v83 = v12;
      v13 = _Block_copy(aBlock);
      v14 = MEMORY[0x277D7B9C8];
      v15 = [v12 ssid];
      v16 = [v14 hotspotAlertControllerWithNetworkName:v15 completionHandler:v13];

      v17 = [(WFNetworkListController *)self viewController];
      [v17 presentViewController:v16 animated:1 completion:0];

      objc_destroyWeak(&v84);
      objc_destroyWeak(buf);
      goto LABEL_41;
    }
  }

  if ([(WFNetworkListController *)self _canPromptForCarPlay])
  {
    if ([(WFNetworkListController *)self _isActiveCarPlaySession])
    {
      v18 = [(WFNetworkListController *)self interface];
      v19 = [v18 currentNetwork];
      v20 = [v19 isEqual:v4];

      if ((v20 & 1) == 0)
      {
        v25 = WFLogForCategory(0);
        v26 = OSLogForWFLogLevel(3uLL);
        if (WFCurrentLogLevel() >= 3 && v25 && os_log_type_enabled(v25, v26))
        {
          *buf = 0;
          _os_log_impl(&dword_273ECD000, v25, v26, "In active CarPlay session, prompting user", buf, 2u);
        }

        objc_initWeak(buf, self);
        v79[0] = MEMORY[0x277D85DD0];
        v79[1] = 3221225472;
        v79[2] = __57__WFNetworkListController__canStartAssociationToNetwork___block_invoke_251;
        v79[3] = &unk_279EBD138;
        objc_copyWeak(&v81, buf);
        v27 = v4;
        v80 = v27;
        v28 = _Block_copy(v79);
        v29 = [v27 ssid];
        [(WFNetworkListController *)self _promptToDisableCarPlayForNetworkName:v29 handler:v28];

        objc_destroyWeak(&v81);
        objc_destroyWeak(buf);
        goto LABEL_41;
      }
    }
  }

  if (self->_lockdownModeEnabled)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v21 = [v4 scanResult];
      v22 = [v21 isAllowedInLockdownMode];

      if ((v22 & 1) == 0)
      {
        v45 = WFLogForCategory(0);
        v46 = OSLogForWFLogLevel(3uLL);
        if (WFCurrentLogLevel() >= 3 && v45 && os_log_type_enabled(v45, v46))
        {
          *buf = 0;
          _os_log_impl(&dword_273ECD000, v45, v46, "In Lockdown Mode, prompting user", buf, 2u);
        }

        objc_initWeak(buf, self);
        v76[0] = MEMORY[0x277D85DD0];
        v76[1] = 3221225472;
        v76[2] = __57__WFNetworkListController__canStartAssociationToNetwork___block_invoke_252;
        v76[3] = &unk_279EBD138;
        objc_copyWeak(&v78, buf);
        v47 = v4;
        v77 = v47;
        v48 = _Block_copy(v76);
        v49 = [v47 scanResult];
        if ([v49 isOpen])
        {
        }

        else
        {
          v50 = [v47 scanResult];
          v51 = [v50 isOWE];

          if ((v51 & 1) == 0)
          {
            v59 = [v47 scanResult];
            v60 = [v59 isWEP];

            if (v60)
            {
              v52 = 2;
            }

            else
            {
              v61 = [v47 scanResult];
              v62 = [v61 isWAPI];

              if (v62)
              {
                v52 = 3;
              }

              else
              {
                v63 = [v47 scanResult];
                v64 = [v63 hasTKIPCipher];

                if (v64)
                {
                  v52 = 4;
                }

                else
                {
                  v65 = [v47 scanResult];
                  v66 = [v65 isPasspoint];

                  if (v66)
                  {
                    v52 = 5;
                  }

                  else
                  {
                    v67 = [v47 scanResult];
                    v68 = [v67 matchingKnownNetworkProfile];
                    v69 = [v68 isCaptive];

                    if (v69)
                    {
                      v52 = 6;
                    }

                    else
                    {
                      v52 = 7;
                    }
                  }
                }
              }
            }

            goto LABEL_40;
          }
        }

        v52 = 0;
LABEL_40:
        v53 = MEMORY[0x277D7B9D8];
        v54 = [v47 ssid];
        v55 = [v53 lockdownModeAlertControllerWithNetworkName:v54 securityType:v52 completionHandler:v48];

        v56 = [(WFNetworkListController *)self viewController];
        [v56 presentViewController:v55 animated:1 completion:0];

        objc_destroyWeak(&v78);
        objc_destroyWeak(buf);
LABEL_41:
        v44 = 0;
        goto LABEL_42;
      }
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v23 = [v4 matchingKnownNetworkProfile];
    if (v23)
    {
      v24 = [v4 matchingKnownNetworkProfile];
      if (([v24 supportedSecurityTypes] & 0x40) != 0)
      {
        v30 = [v4 securityMode];

        if (v30 == 520)
        {
          v31 = WFLogForCategory(5uLL);
          v32 = OSLogForWFLogLevel(1uLL);
          if (WFCurrentLogLevel() && v31)
          {
            v33 = v31;
            if (os_log_type_enabled(v33, v32))
            {
              v34 = WFStringFromWFSecurityModeExt(512);
              v35 = WFStringFromWFSecurityModeExt([v4 securityMode]);
              *buf = 138412802;
              v86 = v4;
              v87 = 2112;
              v88 = v34;
              v89 = 2112;
              v90 = v35;
              _os_log_impl(&dword_273ECD000, v33, v32, "mismatched security for %@ (expected='%@', actual='%@')", buf, 0x20u);
            }
          }

          objc_initWeak(buf, self);
          v70 = MEMORY[0x277D85DD0];
          v71 = 3221225472;
          v72 = __57__WFNetworkListController__canStartAssociationToNetwork___block_invoke_253;
          v73 = &unk_279EBD138;
          objc_copyWeak(&v75, buf);
          v36 = v4;
          v74 = v36;
          v37 = _Block_copy(&v70);
          v38 = WFWiFiLocalizedStringFromSecurityMode(512);
          v39 = WFWiFiLocalizedStringFromSecurityMode([v36 securityMode]);
          v40 = MEMORY[0x277D7BA00];
          v41 = [v36 ssid];
          v42 = [v40 securityMismatchAlertControllerWithNetworkName:v41 previousSecurity:v38 newSecurity:v39 completionHandler:v37];

          v43 = [(WFNetworkListController *)self viewController];
          [v43 presentViewController:v42 animated:1 completion:0];

          objc_destroyWeak(&v75);
          objc_destroyWeak(buf);
          goto LABEL_41;
        }
      }

      else
      {
      }
    }
  }

  v44 = 1;
LABEL_42:

  v57 = *MEMORY[0x277D85DE8];
  return v44;
}

void __57__WFNetworkListController__canStartAssociationToNetwork___block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (!a2)
  {
    v6 = WFLogForCategory(0);
    v7 = OSLogForWFLogLevel(3uLL);
    if (WFCurrentLogLevel() < 3 || !v6 || !os_log_type_enabled(v6, v7))
    {
      goto LABEL_13;
    }

    v10 = 0;
    v8 = "User declined to stop personal hotspot- canceling association";
    v9 = &v10;
    goto LABEL_12;
  }

  if (![WeakRetained _disablePersonalHotspot])
  {
    v6 = WFLogForCategory(0);
    LOBYTE(v7) = OSLogForWFLogLevel(1uLL);
    if (!WFCurrentLogLevel() || !v6 || !os_log_type_enabled(v6, v7))
    {
      goto LABEL_13;
    }

    *buf = 0;
    v8 = "Failed to disable personal hotspot- canceling association";
    v9 = buf;
LABEL_12:
    _os_log_impl(&dword_273ECD000, v6, v7, v8, v9, 2u);
LABEL_13:

    goto LABEL_14;
  }

  [v5 _associateToScanRecord:*(a1 + 32) profile:0];
LABEL_14:
}

void __57__WFNetworkListController__canStartAssociationToNetwork___block_invoke_251(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WFLogForCategory(0);
  v6 = OSLogForWFLogLevel(3uLL);
  v8 = WFCurrentLogLevel() > 2 && v5 != 0;
  if (a2)
  {
    if (v8 && os_log_type_enabled(v5, v6))
    {
      *buf = 0;
      _os_log_impl(&dword_273ECD000, v5, v6, "Disssociating from current CarPlay network", buf, 2u);
    }

    v9 = [WeakRetained interface];
    [v9 disassociateFromCurrentNetwork];

    [WeakRetained _associateToScanRecord:*(a1 + 32) profile:0];
  }

  else
  {
    if (v8 && os_log_type_enabled(v5, v6))
    {
      *v10 = 0;
      _os_log_impl(&dword_273ECD000, v5, v6, "User declined to stop CarPlay session- canceling association", v10, 2u);
    }
  }
}

void __57__WFNetworkListController__canStartAssociationToNetwork___block_invoke_252(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (a2)
  {
    v6 = [WeakRetained interface];
    [v6 disassociateFromCurrentNetwork];

    [v5 _associateToScanRecord:*(a1 + 32) profile:0];
  }

  else
  {
    v7 = WFLogForCategory(0);
    v8 = OSLogForWFLogLevel(3uLL);
    if (WFCurrentLogLevel() >= 3 && v7 && os_log_type_enabled(v7, v8))
    {
      *v9 = 0;
      _os_log_impl(&dword_273ECD000, v7, v8, "User declined joining non-secure network in Lockdown Mode- canceling association", v9, 2u);
    }
  }
}

void __57__WFNetworkListController__canStartAssociationToNetwork___block_invoke_253(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WFLogForCategory(5uLL);
  v6 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel())
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = !v7;
  if (a2)
  {
    if (v8 && os_log_type_enabled(v5, v6))
    {
      *buf = 0;
      _os_log_impl(&dword_273ECD000, v5, v6, "user accepted confirmation", buf, 2u);
    }

    [WeakRetained _associateToScanRecord:*(a1 + 32) profile:0];
  }

  else
  {
    if (v8 && os_log_type_enabled(v5, v6))
    {
      *v9 = 0;
      _os_log_impl(&dword_273ECD000, v5, v6, "user cancelled confirmation", v9, 2u);
    }
  }
}

- (BOOL)_canStartAssociationToUserSuppliedNetwork:(id)a3
{
  v40 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(WFNetworkListController *)self _canPromptForInstantHotspot])
  {
    v5 = [(WFNetworkListController *)self interface];
    v6 = [v5 ipMonitor];
    v7 = [v6 personalHotspotHasClients];

    if (v7)
    {
      v8 = WFLogForCategory(0);
      v9 = OSLogForWFLogLevel(3uLL);
      if (WFCurrentLogLevel() >= 3 && v8)
      {
        v10 = v8;
        if (os_log_type_enabled(v10, v9))
        {
          v11 = [(WFNetworkListController *)self viewController];
          *buf = 138412290;
          v39 = v11;
          _os_log_impl(&dword_273ECD000, v10, v9, "Personal Hotspot has clients, %@ requires user to be prompted before associating", buf, 0xCu);
        }
      }

      objc_initWeak(buf, self);
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __69__WFNetworkListController__canStartAssociationToUserSuppliedNetwork___block_invoke;
      aBlock[3] = &unk_279EBD138;
      objc_copyWeak(&v37, buf);
      v12 = v4;
      v36 = v12;
      v13 = _Block_copy(aBlock);
      v14 = MEMORY[0x277D7B9C8];
      v15 = [v12 ssid];
      v16 = [v14 hotspotAlertControllerWithNetworkName:v15 completionHandler:v13];

      v17 = [(WFNetworkListController *)self otherNetworkVC];
      [v17 presentViewController:v16 animated:1 completion:0];

      objc_destroyWeak(&v37);
      objc_destroyWeak(buf);
LABEL_18:
      v21 = 0;
      goto LABEL_19;
    }
  }

  if ([(WFNetworkListController *)self _canPromptForCarPlay])
  {
    if ([(WFNetworkListController *)self _isActiveCarPlaySession])
    {
      v18 = [(WFNetworkListController *)self interface];
      v19 = [v18 currentNetwork];
      v20 = [v19 isEqual:v4];

      if ((v20 & 1) == 0)
      {
        v22 = WFLogForCategory(0);
        v23 = OSLogForWFLogLevel(3uLL);
        if (WFCurrentLogLevel() >= 3 && v22 && os_log_type_enabled(v22, v23))
        {
          *buf = 0;
          _os_log_impl(&dword_273ECD000, v22, v23, "In active CarPlay session, prompting user", buf, 2u);
        }

        objc_initWeak(buf, self);
        v29 = MEMORY[0x277D85DD0];
        v30 = 3221225472;
        v31 = __69__WFNetworkListController__canStartAssociationToUserSuppliedNetwork___block_invoke_255;
        v32 = &unk_279EBD138;
        objc_copyWeak(&v34, buf);
        v24 = v4;
        v33 = v24;
        v25 = _Block_copy(&v29);
        v26 = [v24 ssid];
        [(WFNetworkListController *)self _promptToDisableCarPlayForNetworkName:v26 handler:v25];

        objc_destroyWeak(&v34);
        objc_destroyWeak(buf);
        goto LABEL_18;
      }
    }
  }

  v21 = 1;
LABEL_19:

  v27 = *MEMORY[0x277D85DE8];
  return v21;
}

void __69__WFNetworkListController__canStartAssociationToUserSuppliedNetwork___block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (!a2)
  {
    v6 = WFLogForCategory(0);
    v7 = OSLogForWFLogLevel(3uLL);
    if (WFCurrentLogLevel() < 3 || !v6 || !os_log_type_enabled(v6, v7))
    {
      goto LABEL_13;
    }

    v10 = 0;
    v8 = "User declined to stop personal hotspot- canceling association";
    v9 = &v10;
    goto LABEL_12;
  }

  if (![WeakRetained _disablePersonalHotspot])
  {
    v6 = WFLogForCategory(0);
    LOBYTE(v7) = OSLogForWFLogLevel(1uLL);
    if (!WFCurrentLogLevel() || !v6 || !os_log_type_enabled(v6, v7))
    {
      goto LABEL_13;
    }

    *buf = 0;
    v8 = "Failed to disable personal hotspot- canceling association";
    v9 = buf;
LABEL_12:
    _os_log_impl(&dword_273ECD000, v6, v7, v8, v9, 2u);
LABEL_13:

    goto LABEL_14;
  }

  [v5 _associateToUserSuppliedNetwork:*(a1 + 32)];
LABEL_14:
}

void __69__WFNetworkListController__canStartAssociationToUserSuppliedNetwork___block_invoke_255(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WFLogForCategory(0);
  v6 = OSLogForWFLogLevel(3uLL);
  v8 = WFCurrentLogLevel() > 2 && v5 != 0;
  if (a2)
  {
    if (v8 && os_log_type_enabled(v5, v6))
    {
      *buf = 0;
      _os_log_impl(&dword_273ECD000, v5, v6, "Disssociating from current CarPlay network", buf, 2u);
    }

    v9 = [WeakRetained interface];
    [v9 disassociateFromCurrentNetwork];

    [WeakRetained _associateToUserSuppliedNetwork:*(a1 + 32)];
  }

  else
  {
    if (v8 && os_log_type_enabled(v5, v6))
    {
      *v10 = 0;
      _os_log_impl(&dword_273ECD000, v5, v6, "User declined to stop CarPlay session- canceling association", v10, 2u);
    }
  }
}

- (void)_associationWillStart:(id)a3
{
  v60 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = WFLogForCategory(5uLL);
  v6 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v5 && os_log_type_enabled(v5, v6))
  {
    *buf = 138412290;
    v55 = v4;
    _os_log_impl(&dword_273ECD000, v5, v6, "association will start for %@", buf, 0xCu);
  }

  v7 = [(WFNetworkListController *)self associationContext];
  if (v7 && (v8 = v7, -[WFNetworkListController associationContext](self, "associationContext"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 state], v9, v8, v10 == 2))
  {
    v11 = WFLogForCategory(0);
    v12 = OSLogForWFLogLevel(2uLL);
    if (WFCurrentLogLevel() >= 2 && v11)
    {
      v13 = v11;
      if (os_log_type_enabled(v13, v12))
      {
        v14 = [(WFNetworkListController *)self associationContext];
        v15 = [v14 stateDescription];
        v16 = [(WFNetworkListController *)self associationContext];
        v17 = [v16 networkName];
        *buf = 136315650;
        v55 = "[WFNetworkListController _associationWillStart:]";
        v56 = 2112;
        v57 = v15;
        v58 = 2112;
        v59 = v17;
        _os_log_impl(&dword_273ECD000, v13, v12, "%s association already in progress current state is <%@> with network %@", buf, 0x20u);
      }
    }

    v18 = [(WFNetworkListController *)self associationContext];
    [v18 setState:1];
  }

  else
  {
    if (v4)
    {
      v52 = @"network";
      v53 = v4;
      v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v53 forKeys:&v52 count:1];
    }

    else
    {
      v19 = 0;
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __49__WFNetworkListController__associationWillStart___block_invoke;
    block[3] = &unk_279EBD290;
    block[4] = self;
    v49 = v19;
    v51 = v49;
    dispatch_async(MEMORY[0x277D85CD0], block);
    v20 = [[WFAssociationContext alloc] initWithNetwork:v4];
    [(WFAssociationContext *)v20 setState:1];
    v21 = [(WFNetworkListController *)self scanMetricsManager];
    v22 = [v21 sectionNameForRecord:v4];
    [(WFAssociationContext *)v20 setSectionNameJoined:v22];

    v23 = [(WFNetworkListController *)self scanMetricsManager];
    v24 = [v23 sectionCounts];
    [(WFAssociationContext *)v20 setSectionCounts:v24];

    v25 = [(WFNetworkListController *)self associationContextQueue];
    [v25 push:v20];

    v26 = [(WFNetworkListController *)self associationContextQueue];
    v27 = [v26 peek];

    v28 = [v27 network];
    v29 = [v28 isEqual:v4];

    if (v29)
    {
      v30 = v27;
    }

    else
    {
      do
      {
        v31 = WFLogForCategory(0);
        v32 = OSLogForWFLogLevel(1uLL);
        if (WFCurrentLogLevel() && v31)
        {
          v33 = v31;
          if (os_log_type_enabled(v33, v32))
          {
            v34 = [v4 ssid];
            *buf = 138412546;
            v55 = v34;
            v56 = 2112;
            v57 = v27;
            _os_log_impl(&dword_273ECD000, v33, v32, "top association context in queue doesn't match current association attempt network: %@, skipping context: %@", buf, 0x16u);
          }
        }

        v35 = [(WFNetworkListController *)self associationContextQueue];
        v36 = [v35 pop];

        v37 = [(WFNetworkListController *)self associationContextQueue];
        v30 = [v37 peek];

        v38 = [v30 network];
        v39 = [v38 isEqual:v4];

        v27 = v30;
      }

      while (!v39);
    }

    v40 = [(WFNetworkListController *)self associationContextQueue];
    v41 = [v40 peek];
    [(WFNetworkListController *)self setAssociationContext:v41];

    [(WFNetworkListController *)self _pauseScanning];
    v42 = [(WFNetworkListController *)self wifiClient];
    [v42 setAutoJoinEnabled:0];

    v43 = WFLogForCategory(5uLL);
    v44 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v43)
    {
      v45 = v43;
      if (os_log_type_enabled(v45, v44))
      {
        v46 = [(WFNetworkListController *)self associationContext];
        v47 = [v4 ssid];
        *buf = 138412546;
        v55 = v46;
        v56 = 2112;
        v57 = v47;
        _os_log_impl(&dword_273ECD000, v45, v44, "association context: %@ for %@", buf, 0x16u);
      }
    }

    v18 = v49;
  }

  v48 = *MEMORY[0x277D85DE8];
}

void __49__WFNetworkListController__associationWillStart___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"WFNetworkListControllerAssociationDidStartNotification" object:*(a1 + 32) userInfo:*(a1 + 40)];
}

- (void)_associationDidFinish:(BOOL)a3 error:(id)a4 network:(id)a5
{
  v8 = a4;
  v9 = a5;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __63__WFNetworkListController__associationDidFinish_error_network___block_invoke;
  v12[3] = &unk_279EBD5A8;
  v15 = a3;
  v12[4] = self;
  v13 = v8;
  v14 = v9;
  v10 = v9;
  v11 = v8;
  dispatch_async(MEMORY[0x277D85CD0], v12);
}

void __63__WFNetworkListController__associationDidFinish_error_network___block_invoke(uint64_t a1)
{
  v72 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) associationContext];
  v3 = [v2 networkName];

  v4 = WFLogForCategory(5uLL);
  v5 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v4 && os_log_type_enabled(v4, v5))
  {
    v6 = *(a1 + 56);
    *buf = 138412546;
    v69 = v3;
    v70 = 1024;
    LODWORD(v71) = v6;
    _os_log_impl(&dword_273ECD000, v4, v5, "{ASSOC-} association finished for %@ - success %d", buf, 0x12u);
  }

  if (*(a1 + 40))
  {
    v7 = WFLogForCategory(5uLL);
    v8 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v7)
    {
      v9 = v7;
      if (os_log_type_enabled(v9, v8))
      {
        v10 = WFAssociationErrorCodeToString([*(a1 + 40) code]);
        v11 = *(a1 + 40);
        *buf = 138412546;
        v69 = v10;
        v70 = 2112;
        v71 = v11;
        _os_log_impl(&dword_273ECD000, v9, v8, "association failure: <%@> (error %@)", buf, 0x16u);
      }
    }
  }

  v12 = [*(a1 + 32) credentialsContext];

  if (v12)
  {
    v13 = WFLogForCategory(5uLL);
    v14 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v13 && os_log_type_enabled(v13, v14))
    {
      *buf = 138412290;
      v69 = v3;
      _os_log_impl(&dword_273ECD000, v13, v14, "dismissing credentials view controller for %@", buf, 0xCu);
    }

    v15 = *(a1 + 32);
    v16 = [v15 credentialsContext];
    [v15 _dismissCredentialsViewControllerWithContext:v16];
  }

  if ([*(a1 + 32) isAssociating])
  {
    v17 = [*(a1 + 32) associationContextQueue];
    v18 = [v17 pop];

    v19 = [*(a1 + 32) associationContextQueue];
    v20 = [v19 peek];
    [*(a1 + 32) setAssociationContext:v20];

    if ((*(a1 + 56) & 1) == 0)
    {
      v21 = WFLogForCategory(0);
      v22 = OSLogForWFLogLevel(3uLL);
      if (WFCurrentLogLevel() >= 3 && v21 && os_log_type_enabled(v21, v22))
      {
        *buf = 138412290;
        v69 = v3;
        _os_log_impl(&dword_273ECD000, v21, v22, "failed to associate to '%@', forcing current network update", buf, 0xCu);
      }

      v23 = [*(a1 + 32) interface];
      [v23 asyncCurrentNetwork:0];
    }

    v24 = *(a1 + 40);
    v25 = v24;
    if ((*(a1 + 56) & 1) == 0 && !v24)
    {
      v25 = [MEMORY[0x277CCA9B8] associationErrorWithReason:12];
    }

    if (v25)
    {
      v66 = @"error";
      v67 = v25;
      v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v67 forKeys:&v66 count:1];
    }

    else
    {
      v34 = [*(a1 + 32) interface];
      v35 = [v34 currentNetwork];

      if (v35)
      {
        v36 = [*(a1 + 32) interface];
        v37 = [v36 currentNetwork];
        v38 = [v37 copy];

        v64 = @"network";
        v65 = v38;
        v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v65 forKeys:&v64 count:1];
        v39 = WFLogForCategory(5uLL);
        v40 = OSLogForWFLogLevel(4uLL);
        if (WFCurrentLogLevel() >= 4 && v39)
        {
          v41 = v39;
          if (os_log_type_enabled(v41, v40))
          {
            v42 = [*(a1 + 32) interface];
            v43 = [v42 currentNetwork];
            *buf = 138412290;
            v69 = v43;
            _os_log_impl(&dword_273ECD000, v41, v40, "notifying with network from WFInterface %@", buf, 0xCu);
          }
        }
      }

      else
      {
        v56 = *(a1 + 48);
        if (!v56)
        {
          v59 = WFLogForCategory(5uLL);
          v60 = OSLogForWFLogLevel(1uLL);
          if (WFCurrentLogLevel() && v59 && os_log_type_enabled(v59, v60))
          {
            *buf = 0;
            _os_log_impl(&dword_273ECD000, v59, v60, "network to notify for WFNetworkListControllerAssociationNetworkKey is nil", buf, 2u);
          }

          v26 = 0;
          goto LABEL_51;
        }

        v62 = @"network";
        v63 = v56;
        v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v63 forKeys:&v62 count:1];
        v38 = WFLogForCategory(5uLL);
        v57 = OSLogForWFLogLevel(4uLL);
        if (WFCurrentLogLevel() >= 4 && v38 && os_log_type_enabled(v38, v57))
        {
          v58 = *(a1 + 48);
          *buf = 138412290;
          v69 = v58;
          _os_log_impl(&dword_273ECD000, v38, v57, "notifying with network from WFNetworkListController %@", buf, 0xCu);
        }
      }
    }

LABEL_51:
    v44 = [MEMORY[0x277CCAB98] defaultCenter];
    [v44 postNotificationName:@"WFNetworkListControllerAssociationDidFinishNotification" object:*(a1 + 32) userInfo:v26];

    if ([*(a1 + 32) associatingToOtherNetwork])
    {
      v45 = WFLogForCategory(5uLL);
      v46 = OSLogForWFLogLevel(1uLL);
      if (WFCurrentLogLevel() && v45)
      {
        v47 = v45;
        if (os_log_type_enabled(v47, v46))
        {
          v48 = [*(a1 + 32) otherNetworkVC];
          *buf = 138412290;
          v69 = v48;
          _os_log_impl(&dword_273ECD000, v47, v46, "association originated from otherNetworkVC: %@", buf, 0xCu);
        }
      }
    }

    [*(a1 + 32) setAssociatingToOtherNetwork:0];
    [*(a1 + 32) _updateViewControllerConnectedNetwork];
    if (*(a1 + 56) == 1 && [*(a1 + 32) isAirPortSettings] && (objc_msgSend(*(a1 + 48), "iOSHotspot") & 1) == 0)
    {
      v49 = WFLogForCategory(0);
      v50 = OSLogForWFLogLevel(3uLL);
      if (WFCurrentLogLevel() >= 3 && v49 && os_log_type_enabled(v49, v50))
      {
        *buf = 67109120;
        LODWORD(v69) = 5;
        _os_log_impl(&dword_273ECD000, v49, v50, "Scheduling a no internet test after successful association after %d seconds.", buf, 8u);
      }

      v51 = [*(a1 + 32) healthManager];
      [v51 runNoInternetDiagnosticsAfter:5];
    }

    [*(a1 + 32) _resumeScanning];
    if ([*(a1 + 48) iOSHotspot])
    {
      v52 = [*(a1 + 32) wifiClient];
      v53 = [v52 interface];
      [v53 asyncCurrentNetwork:0];
    }

    v54 = dispatch_get_global_queue(21, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __63__WFNetworkListController__associationDidFinish_error_network___block_invoke_258;
    block[3] = &unk_279EBCFE0;
    block[4] = *(a1 + 32);
    dispatch_async(v54, block);

LABEL_69:
    goto LABEL_70;
  }

  v27 = WFLogForCategory(5uLL);
  v28 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v27)
  {
    v29 = v27;
    if (os_log_type_enabled(v29, v28))
    {
      v30 = [*(a1 + 32) associationContext];
      v31 = [v30 stateDescription];
      *buf = 138412290;
      v69 = v31;
      _os_log_impl(&dword_273ECD000, v29, v28, "no association in progress, current state: <%@>", buf, 0xCu);
    }
  }

  [*(a1 + 32) _updateViewControllerConnectedNetwork];
  if (*(a1 + 56) == 1 && [*(a1 + 32) isAirPortSettings] && (objc_msgSend(*(a1 + 48), "iOSHotspot") & 1) == 0)
  {
    v32 = WFLogForCategory(0);
    v33 = OSLogForWFLogLevel(3uLL);
    if (WFCurrentLogLevel() >= 3 && v32 && os_log_type_enabled(v32, v33))
    {
      *buf = 67109120;
      LODWORD(v69) = 3;
      _os_log_impl(&dword_273ECD000, v32, v33, "Scheduling a no internet test after successful association after %d seconds.", buf, 8u);
    }

    v25 = [*(a1 + 32) healthManager];
    [v25 runNoInternetDiagnosticsAfter:3];
    goto LABEL_69;
  }

LABEL_70:

  v55 = *MEMORY[0x277D85DE8];
}

void __63__WFNetworkListController__associationDidFinish_error_network___block_invoke_258(uint64_t a1)
{
  v1 = [*(a1 + 32) wifiClient];
  [v1 setAutoJoinEnabled:1];
}

- (void)_presentHotspotErrorContextWithDevice:(id)a3 hotspotError:(id)a4 failure:(int64_t)a5
{
  v26[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v9)
  {
    v25 = *MEMORY[0x277CCA7E8];
    v26[0] = v9;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:&v25 count:1];
  }

  else
  {
    v11 = 0;
  }

  v12 = [MEMORY[0x277CCA9B8] associationErrorWithReason:a5 userInfo:v11];
  v13 = [[WFErrorContext alloc] initWithAssociationError:v12 network:v8 diagnosticsResult:0];
  objc_initWeak(&location, self);
  objc_initWeak(&from, v13);
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __86__WFNetworkListController__presentHotspotErrorContextWithDevice_hotspotError_failure___block_invoke;
  v19 = &unk_279EBD3A8;
  objc_copyWeak(&v21, &location);
  objc_copyWeak(&v22, &from);
  v14 = v12;
  v20 = v14;
  [(WFErrorContext *)v13 setCompletionHandler:&v16];
  [(WFNetworkListController *)self _presentContext:v13 contextType:0, v16, v17, v18, v19];

  objc_destroyWeak(&v22);
  objc_destroyWeak(&v21);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);

  v15 = *MEMORY[0x277D85DE8];
}

void __86__WFNetworkListController__presentHotspotErrorContextWithDevice_hotspotError_failure___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _dismissErrorViewControllerWithContext:v3];

  v4 = objc_loadWeakRetained((a1 + 40));
  [v4 _associationDidFinish:0 error:*(a1 + 32) network:0];
}

- (void)_presentContext:(id)a3 contextType:(unint64_t)a4
{
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__WFNetworkListController__presentContext_contextType___block_invoke;
  block[3] = &unk_279EBD5D0;
  v9 = v6;
  v10 = a4;
  block[4] = self;
  v7 = v6;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __55__WFNetworkListController__presentContext_contextType___block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) viewProvider];
  v3 = objc_opt_respondsToSelector();

  v4 = *(a1 + 48);
  if (v4 == 1)
  {
    v5 = *(a1 + 40);
    v14 = WFLogForCategory(0);
    v15 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v14 && os_log_type_enabled(v14, v15))
    {
      v34 = 136315394;
      v35 = "[WFNetworkListController _presentContext:contextType:]_block_invoke";
      v36 = 2112;
      v37 = v5;
      _os_log_impl(&dword_273ECD000, v14, v15, "%s: presenting lockdown mode context %@", &v34, 0x16u);
    }

    v16 = [*(a1 + 32) viewProvider];
    v17 = objc_opt_respondsToSelector();

    if (v17)
    {
      v18 = [*(a1 + 32) viewProvider];
      v19 = [v18 networkLockdownModeViewControllerWithContext:v5];
      [*(a1 + 32) setContextVC:v19];
    }
  }

  else
  {
    if (v4)
    {
      goto LABEL_20;
    }

    v5 = *(a1 + 40);
    v6 = WFLogForCategory(0);
    v7 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v6 && os_log_type_enabled(v6, v7))
    {
      v34 = 136315394;
      v35 = "[WFNetworkListController _presentContext:contextType:]_block_invoke";
      v36 = 2112;
      v37 = v5;
      _os_log_impl(&dword_273ECD000, v6, v7, "%s: presenting error context %@", &v34, 0x16u);
    }

    v8 = [*(a1 + 32) viewProvider];
    v9 = [v8 networkErrorViewControllerWithContext:v5];
    [*(a1 + 32) setContextVC:v9];

    v10 = [*(a1 + 32) contextVC];

    if (!v10)
    {
      v11 = WFLogForCategory(0);
      v12 = OSLogForWFLogLevel(3uLL);
      if (WFCurrentLogLevel() >= 3 && v11)
      {
        v11 = v11;
        if (os_log_type_enabled(v11, v12))
        {
          v13 = [*(a1 + 32) viewProvider];
          v34 = 136315650;
          v35 = "[WFNetworkListController _presentContext:contextType:]_block_invoke";
          v36 = 2112;
          v37 = v13;
          v38 = 2112;
          v39 = v5;
          _os_log_impl(&dword_273ECD000, v11, v12, "%s: provider (%@) did not return view for error %@", &v34, 0x20u);
        }
      }

      goto LABEL_35;
    }
  }

  v20 = [*(a1 + 32) contextVC];
  [v5 setProvider:v20];

  [*(a1 + 32) setVisibleContext:v5];
LABEL_20:
  if ((v3 & 1) == 0)
  {
    v27 = [*(a1 + 32) otherNetworkVC];
    if (v27 && (v28 = *(*(a1 + 32) + 10), v27, v28 == 1))
    {
      v29 = [*(a1 + 32) otherNetworkVC];
    }

    else
    {
      v30 = [*(a1 + 32) credentialsContext];

      v31 = *(a1 + 32);
      if (v30)
      {
        v32 = [v31 credentialsContext];
        v5 = [v32 provider];

LABEL_34:
        v11 = [*(a1 + 32) contextVC];
        [v5 presentViewController:v11 animated:1 completion:0];
        goto LABEL_35;
      }

      v29 = [v31 viewController];
    }

    v5 = v29;
    goto LABEL_34;
  }

  v21 = WFLogForCategory(0);
  v22 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v21)
  {
    v23 = v21;
    if (os_log_type_enabled(v23, v22))
    {
      v24 = [*(a1 + 32) contextVC];
      v25 = [*(a1 + 32) visibleContext];
      v34 = 138412546;
      v35 = v24;
      v36 = 2112;
      v37 = v25;
      _os_log_impl(&dword_273ECD000, v23, v22, "viewProvider will handle presentation of %@ (context %@)", &v34, 0x16u);
    }
  }

  v5 = [*(a1 + 32) viewProvider];
  v11 = [*(a1 + 32) contextVC];
  v26 = [*(a1 + 32) visibleContext];
  [v5 presentNetworkViewController:v11 forContext:v26];

LABEL_35:
  v33 = *MEMORY[0x277D85DE8];
}

- (void)_scanNetworkForAssociation:(id)a3 profile:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = WFLogForCategory(5uLL);
  v9 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v8 && os_log_type_enabled(v8, v9))
  {
    *buf = 138412546;
    v26 = v6;
    v27 = 2112;
    v28 = v7;
    _os_log_impl(&dword_273ECD000, v8, v9, "scanning to associate for network='%@' profile='%@'", buf, 0x16u);
  }

  v10 = [v6 ssid];
  v11 = [(WFNetworkListController *)self interface];
  v12 = [v11 deviceScanChannels];
  v13 = [WFScanRequest scanRequestForSSID:v10 channels:v12];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = 8;
    if (v13)
    {
LABEL_7:
      objc_initWeak(buf, self);
      v15 = [(WFNetworkListController *)self interface];
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __62__WFNetworkListController__scanNetworkForAssociation_profile___block_invoke;
      v21[3] = &unk_279EBD5F8;
      objc_copyWeak(&v24, buf);
      v22 = v6;
      v23 = v7;
      [v15 asyncScanRequest:v13 reply:v21];

      objc_destroyWeak(&v24);
      objc_destroyWeak(buf);
      goto LABEL_14;
    }
  }

  else
  {
    v14 = [v6 securityMode];
    if (v13)
    {
      goto LABEL_7;
    }
  }

  v16 = WFLogForCategory(5uLL);
  v17 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v16 && os_log_type_enabled(v16, v17))
  {
    *buf = 138412290;
    v26 = v6;
    _os_log_impl(&dword_273ECD000, v16, v17, "failed to create scan request for network='%@'", buf, 0xCu);
  }

  v18 = [MEMORY[0x277CCA9B8] associationErrorWithReason:12];
  v19 = [(WFNetworkListController *)self associationContext];
  [(WFNetworkListController *)self _handleAssociationError:v18 network:v6 profile:v7 securityMode:v14 associationContext:v19];

LABEL_14:
  v20 = *MEMORY[0x277D85DE8];
}

void __62__WFNetworkListController__scanNetworkForAssociation_profile___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = WFLogForCategory(5uLL);
  v9 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v8 && os_log_type_enabled(v8, v9))
  {
    v10 = *(a1 + 32);
    *buf = 138412546;
    v20 = v10;
    v21 = 2112;
    v22 = v6;
    _os_log_impl(&dword_273ECD000, v8, v9, "scan completed for network='%@' results='%@'", buf, 0x16u);
  }

  v11 = [WeakRetained associationContext];
  [v11 setSecondaryScanCompleted:1];

  if (!v5 && v6 && [v6 count])
  {
    v12 = v17;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __62__WFNetworkListController__scanNetworkForAssociation_profile___block_invoke_2;
    v17[3] = &unk_279EBD268;
    v13 = v6;
  }

  else
  {
    v14 = WFLogForCategory(5uLL);
    v15 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v14 && os_log_type_enabled(v14, v15))
    {
      *buf = 138412546;
      v20 = v5;
      v21 = 2112;
      v22 = v6;
      _os_log_impl(&dword_273ECD000, v14, v15, "scan error='%@' results='%@'", buf, 0x16u);
    }

    v12 = v18;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __62__WFNetworkListController__scanNetworkForAssociation_profile___block_invoke_261;
    v18[3] = &unk_279EBD268;
    v13 = *(a1 + 32);
  }

  v12[4] = v13;
  v12[5] = WeakRetained;
  v12[6] = *(a1 + 40);
  dispatch_async(MEMORY[0x277D85CD0], v12);

  v16 = *MEMORY[0x277D85DE8];
}

void __62__WFNetworkListController__scanNetworkForAssociation_profile___block_invoke_261(uint64_t a1)
{
  v2 = *(a1 + 32);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = 8;
  }

  else
  {
    v3 = [*(a1 + 32) securityMode];
  }

  v4 = *(a1 + 40);
  v8 = [MEMORY[0x277CCA9B8] associationErrorWithReason:12];
  v5 = *(a1 + 48);
  v6 = *(a1 + 32);
  v7 = [*(a1 + 40) associationContext];
  [v4 _handleAssociationError:v8 network:v6 profile:v5 securityMode:v3 associationContext:v7];
}

void __62__WFNetworkListController__scanNetworkForAssociation_profile___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) anyObject];
  [*(a1 + 40) _associateToScanRecord:v2 profile:*(a1 + 48)];
}

- (void)_updateViewControllerConnectedNetwork
{
  v4 = [(WFNetworkListController *)self interface];
  v3 = [v4 currentNetwork];
  [(WFNetworkListController *)self _updateViewControllerConnectedNetwork:v3];
}

- (void)_updateViewControllerConnectedNetwork:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __65__WFNetworkListController__updateViewControllerConnectedNetwork___block_invoke;
  v6[3] = &unk_279EBD290;
  v7 = v4;
  v8 = self;
  v5 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __65__WFNetworkListController__updateViewControllerConnectedNetwork___block_invoke(uint64_t a1)
{
  v42 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = WFLogForCategory(0);
  v4 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v3)
  {
    v5 = v3;
    if (os_log_type_enabled(v5, v4))
    {
      if (v2)
      {
        v31 = [v2 ssid];
      }

      else
      {
        v31 = @"nil";
      }

      v30 = [v2 hash];
      v6 = [*(a1 + 40) viewController];
      v7 = [v6 currentNetwork];
      if (v7)
      {
        v29 = [*(a1 + 40) viewController];
        v28 = [v29 currentNetwork];
        v8 = [v28 ssid];
      }

      else
      {
        v8 = @"nil";
      }

      v9 = [*(a1 + 40) viewController];
      v10 = [v9 currentNetwork];
      *buf = 136316162;
      v33 = "[WFNetworkListController _updateViewControllerConnectedNetwork:]_block_invoke";
      v34 = 2112;
      v35 = v31;
      v36 = 2048;
      v37 = v30;
      v38 = 2112;
      v39 = v8;
      v40 = 2048;
      v41 = [v10 hash];
      _os_log_impl(&dword_273ECD000, v5, v4, "%s: current network is %@ (%lu), view controller current network: %@ (%lu)", buf, 0x34u);

      if (v7)
      {
      }

      if (v2)
      {
      }
    }
  }

  v11 = [*(a1 + 40) viewController];
  [v11 setCurrentNetwork:v2];

  v12 = WFLogForCategory(0);
  v13 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v12)
  {
    v14 = v12;
    if (os_log_type_enabled(v14, v13))
    {
      v15 = [*(a1 + 40) viewController];
      v16 = [v15 currentNetwork];
      *buf = 136315394;
      v33 = "[WFNetworkListController _updateViewControllerConnectedNetwork:]_block_invoke";
      v34 = 2112;
      v35 = v16;
      _os_log_impl(&dword_273ECD000, v14, v13, "%s: view controller current network updated to %@", buf, 0x16u);
    }
  }

  v17 = [*(a1 + 40) viewController];
  v18 = objc_opt_respondsToSelector();

  v19 = [*(a1 + 40) latestLinkQuality];
  v20 = v19;
  if (v18)
  {
    if (v19)
    {
      v18 = [*(a1 + 40) latestLinkQuality];
      [v18 scaledRssi];
    }

    else
    {
      [v2 scaledRSSI];
    }

    v23 = WFSignalBarsFromScaledRSSI();
    v24 = [*(a1 + 40) viewController];
    [v24 setCurrentNetworkSignalBars:v23];

    if (!v20)
    {
      goto LABEL_31;
    }

LABEL_30:

    goto LABEL_31;
  }

  if (v19)
  {
    v18 = [*(a1 + 40) latestLinkQuality];
    [v18 scaledRssi];
  }

  else
  {
    [v2 scaledRSSI];
  }

  v22 = v21;
  v25 = [*(a1 + 40) viewController];
  LODWORD(v26) = v22;
  [v25 setCurrentNetworkScaledRSSI:v26];

  if (v20)
  {
    goto LABEL_30;
  }

LABEL_31:

  [*(a1 + 40) _updateCurrentNetworkIPState:v2];
  [*(a1 + 40) _updateViewControllerScanResults];
  [*(a1 + 40) _updateHealthSubtitle];

  v27 = *MEMORY[0x277D85DE8];
}

- (void)_ipStateDidChange:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [(WFNetworkListController *)self interface];
  v7 = [v6 currentNetwork];

  v8 = WFLogForCategory(0);
  v9 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v8)
  {
    v3 = v8;
    if (os_log_type_enabled(v3, v9))
    {
      v10 = [v5 userInfo];
      v11 = [(WFNetworkListController *)self associationContext];
      *buf = 136315906;
      v21 = "[WFNetworkListController _ipStateDidChange:]";
      v22 = 2112;
      v23 = v10;
      v24 = 2112;
      v25 = v11;
      v26 = 2112;
      v27 = v7;
      _os_log_impl(&dword_273ECD000, v3, v9, "%s: userInfo %@ - self.associationContext %@ - self.interface.currentNetwork %@", buf, 0x2Au);
    }
  }

  v12 = [(WFNetworkListController *)self associationContext];
  if (v12)
  {
    v9 = [(WFNetworkListController *)self associationContext];
    v3 = [v9 network];
    if ([v3 isEqual:v7])
    {

      goto LABEL_17;
    }
  }

  v13 = [(WFNetworkListController *)self associationContext];
  v14 = [v13 network];
  if (v14)
  {
    v15 = 1;
  }

  else
  {
    v15 = v7 == 0;
  }

  v16 = !v15;

  if (!v12)
  {
    if (!v16)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if (v16)
  {
LABEL_17:
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __45__WFNetworkListController__ipStateDidChange___block_invoke;
    v18[3] = &unk_279EBD290;
    v18[4] = self;
    v19 = v7;
    dispatch_async(MEMORY[0x277D85CD0], v18);
  }

LABEL_18:

  v17 = *MEMORY[0x277D85DE8];
}

void __45__WFNetworkListController__ipStateDidChange___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) _updateCurrentNetworkIPState:*(a1 + 40)];
  v11 = [*(a1 + 32) interface];
  if ([v11 hasValidIPAddress])
  {
    v2 = [*(a1 + 32) interface];
    v3 = [v2 hasPrimaryIPConfiguration];

    if (v3)
    {
      v4 = WFLogForCategory(0);
      v5 = OSLogForWFLogLevel(3uLL);
      if (WFCurrentLogLevel() >= 3 && v4)
      {
        v6 = v4;
        if (os_log_type_enabled(v6, v5))
        {
          v7 = [*(a1 + 40) ssid];
          *buf = 138412290;
          v13 = v7;
          _os_log_impl(&dword_273ECD000, v6, v5, "current network='%@' kicking off internet test upon receiving valid IP configuration", buf, 0xCu);
        }
      }

      v8 = [*(a1 + 32) healthManager];
      [v8 runNoInternetDiagnosticsAfter:5];
    }

    v9 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v10 = *MEMORY[0x277D85DE8];
  }
}

- (void)_updateCurrentNetworkIPState:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(WFNetworkListController *)self isAssociating])
  {
    v5 = WFLogForCategory(0);
    v6 = OSLogForWFLogLevel(3uLL);
    if (WFCurrentLogLevel() >= 3 && v5)
    {
      v5 = v5;
      if (os_log_type_enabled(v5, v6))
      {
        v7 = [(WFNetworkListController *)self associationContext];
        v8 = [v7 stateDescription];
        v9 = [(WFNetworkListController *)self associationContext];
        v10 = [v9 networkName];
        *buf = 136315650;
        v17 = "[WFNetworkListController _updateCurrentNetworkIPState:]";
        v18 = 2112;
        v19 = v8;
        v20 = 2112;
        v21 = v10;
        _os_log_impl(&dword_273ECD000, v5, v6, "%s IP state change while association state is <%@> with network %@", buf, 0x20u);
      }
    }
  }

  else
  {
    v11 = dispatch_get_global_queue(21, 0);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __56__WFNetworkListController__updateCurrentNetworkIPState___block_invoke;
    v13[3] = &unk_279EBD290;
    v14 = v4;
    v15 = self;
    dispatch_async(v11, v13);

    v5 = v14;
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __56__WFNetworkListController__updateCurrentNetworkIPState___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = [*(a1 + 40) interface];
    v3 = [v2 hasValidIPAddress];

    v4 = [*(a1 + 40) wifiClient];
    v5 = [v4 isCellularOutrankingWiFi];

    v6 = WFLogForCategory(0);
    v7 = OSLogForWFLogLevel(3uLL);
    if (WFCurrentLogLevel() >= 3 && v6)
    {
      v8 = v6;
      if (os_log_type_enabled(v8, v7))
      {
        v9 = [*(a1 + 32) ssid];
        *buf = 138412802;
        v15 = v9;
        v16 = 1024;
        v17 = v3;
        v18 = 1024;
        v19 = v5;
        _os_log_impl(&dword_273ECD000, v8, v7, "current network='%@' hasValidIP=%d wifiOutranked=%d", buf, 0x18u);
      }
    }

    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __56__WFNetworkListController__updateCurrentNetworkIPState___block_invoke_265;
    v11[3] = &unk_279EBD620;
    v12 = v5;
    v11[4] = *(a1 + 40);
    v13 = v3;
    dispatch_async(MEMORY[0x277D85CD0], v11);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __56__WFNetworkListController__updateCurrentNetworkIPState___block_invoke_265(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v1 = 0;
  }

  else if (*(a1 + 41))
  {
    v1 = 2;
  }

  else
  {
    v1 = 1;
  }

  v2 = [*(a1 + 32) viewController];
  [v2 setCurrentNetworkState:v1];
}

- (BOOL)_canPromptForInstantHotspot
{
  v3 = [(WFNetworkListController *)self viewController];
  if (objc_opt_respondsToSelector())
  {
    v4 = [(WFNetworkListController *)self viewController];
    v5 = [v4 shouldPromptWhenPersonalHotspotIsEnabled];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_disablePersonalHotspot
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = WFLogForCategory(0);
  v4 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v3 && os_log_type_enabled(v3, v4))
  {
    *buf = 136315138;
    *&buf[4] = "[WFNetworkListController _disablePersonalHotspot]";
    _os_log_impl(&dword_273ECD000, v3, v4, "%s: disabling personal hotspot", buf, 0xCu);
  }

  *buf = 0;
  v5 = _MISAttach(buf);
  if (v5)
  {
    v6 = v5;
    v7 = WFLogForCategory(0);
    v8 = OSLogForWFLogLevel(1uLL);
    v9 = 0;
    if (WFCurrentLogLevel() && v7)
    {
      if (os_log_type_enabled(v7, v8))
      {
        v17 = 67109120;
        v18 = v6;
        v10 = "Error: Unable to attach to MobileInternetSharing (err=%d)";
LABEL_20:
        _os_log_impl(&dword_273ECD000, v7, v8, v10, &v17, 8u);
        goto LABEL_21;
      }

      goto LABEL_21;
    }
  }

  else
  {
    v11 = _MISSetGlobalServiceState(*buf, 1022);
    if (v11)
    {
      v12 = v11;
      v7 = WFLogForCategory(0);
      v8 = OSLogForWFLogLevel(1uLL);
      v9 = 0;
      if (WFCurrentLogLevel() && v7)
      {
        if (os_log_type_enabled(v7, v8))
        {
          v17 = 67109120;
          v18 = v12;
          v10 = "Error: Failed to turn off Personal Hotspot (err=%d)";
          goto LABEL_20;
        }

LABEL_21:
        v9 = 0;
      }
    }

    else
    {
      v13 = _MISSetGlobalServiceState(*buf, 1023);
      if (!v13)
      {
        _MISDetach(*buf);
        v7 = [(WFNetworkListController *)self wifiClient];
        [v7 setMISState:0];
        v9 = 1;
        goto LABEL_22;
      }

      v14 = v13;
      v7 = WFLogForCategory(0);
      v8 = OSLogForWFLogLevel(1uLL);
      v9 = 0;
      if (WFCurrentLogLevel() && v7)
      {
        if (os_log_type_enabled(v7, v8))
        {
          v17 = 67109120;
          v18 = v14;
          v10 = "Error: Failed to re-enable Personal Hotspot (err=%d)";
          goto LABEL_20;
        }

        goto LABEL_21;
      }
    }
  }

LABEL_22:

  v15 = *MEMORY[0x277D85DE8];
  return v9;
}

- (BOOL)_canPromptForCarPlay
{
  v3 = [(WFNetworkListController *)self viewController];
  if (objc_opt_respondsToSelector())
  {
    v4 = [(WFNetworkListController *)self viewController];
    v5 = [v4 shouldPromptWhenCarPlaySessionIsActive];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_promptToDisableCarPlayForNetworkName:(id)a3 handler:(id)a4
{
  v16 = a3;
  v6 = a4;
  v7 = [WFNetworkProfile alloc];
  v8 = [(WFNetworkListController *)self interface];
  v9 = [v8 currentNetwork];
  v10 = [v9 matchingKnownNetworkProfile];
  v11 = [(WFNetworkProfile *)v7 initWithCoreWiFiProfile:v10];

  if (v11)
  {
    v12 = [(WFNetworkProfile *)v11 carPlayUUID];

    if (v12)
    {
      v13 = [(WFNetworkProfile *)v11 carPlayUUID];
      v12 = WFGetCarNameFromCarPlayNetworkUUID(v13);
    }
  }

  else
  {
    v12 = 0;
  }

  v14 = [MEMORY[0x277D7B990] carPlayAlertControllerWithNetworkName:v16 carName:v12 completionHandler:v6];
  v15 = [(WFNetworkListController *)self viewController];
  [v15 presentViewController:v14 animated:1 completion:0];
}

- (BOOL)_isActiveCarPlaySession
{
  v2 = [(WFNetworkListController *)self interface];
  v3 = [v2 currentNetwork];
  v4 = [v3 isCarPlay];

  if (!v4)
  {
    return 0;
  }

  v5 = MEMORY[0x277CE64E8];

  return [v5 isCarPlaySessionActive];
}

- (void)_networkHealthIssuesDidChange:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(WFNetworkListController *)self isAssociating])
  {
    objc_initWeak(&location, self);
    v5 = WFLogForCategory(0);
    v6 = OSLogForWFLogLevel(3uLL);
    if (WFCurrentLogLevel() >= 3 && v5)
    {
      v7 = v5;
      if (os_log_type_enabled(v7, v6))
      {
        v8 = [(WFNetworkListController *)self associationContext];
        v9 = [(WFNetworkListController *)self associationContext];
        v10 = [v9 networkName];
        *buf = 136315650;
        v18 = "[WFNetworkListController _networkHealthIssuesDidChange:]";
        v19 = 2112;
        v20 = v8;
        v21 = 2112;
        v22 = v10;
        _os_log_impl(&dword_273ECD000, v7, v6, "%s health issues changed while association state is in progress <%@> with network %@", buf, 0x20u);
      }
    }

    v11 = dispatch_time(0, 500000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __57__WFNetworkListController__networkHealthIssuesDidChange___block_invoke;
    block[3] = &unk_279EBCDE8;
    objc_copyWeak(&v15, &location);
    v14 = v4;
    dispatch_after(v11, MEMORY[0x277D85CD0], block);

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  else
  {
    [(WFNetworkListController *)self _updateHealthSubtitle];
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __57__WFNetworkListController__networkHealthIssuesDidChange___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _networkHealthIssuesDidChange:*(a1 + 32)];
}

- (id)_sortedHealthRecommendations:(BOOL)a3
{
  v3 = [(WFNetworkListController *)self healthRecommendations:1];
  v4 = [v3 allObjects];
  v5 = [MEMORY[0x277D7B9C0] healthIssueSortComparator];
  v6 = [v4 sortedArrayUsingComparator:v5];

  return v6;
}

- (id)_sortedHealthRecommendations
{
  v2 = [(WFNetworkListController *)self healthRecommendations];
  v3 = [v2 allObjects];
  v4 = [MEMORY[0x277D7B9C0] healthIssueSortComparator];
  v5 = [v3 sortedArrayUsingComparator:v4];

  return v5;
}

- (BOOL)_shouldShowLowDataModeForProfile:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(WFNetworkListController *)self wifiClient];
  v6 = [v5 isCellularOutrankingWiFi];

  if (v4 && (v6 & 1) == 0 && ([v4 lowDataMode] == 1 || objc_msgSend(v4, "isPersonalHotspot") && !objc_msgSend(v4, "lowDataMode")))
  {
    v7 = WFLogForCategory(0);
    v8 = OSLogForWFLogLevel(4uLL);
    v9 = 1;
    if (WFCurrentLogLevel() >= 4 && v7)
    {
      v7 = v7;
      if (os_log_type_enabled(v7, v8))
      {
        v10 = [v4 networkName];
        v15 = 136315394;
        v16 = "[WFNetworkListController _shouldShowLowDataModeForProfile:]";
        v17 = 2112;
        v18 = v10;
        _os_log_impl(&dword_273ECD000, v7, v8, "%s: Showing low data mode for: %@", &v15, 0x16u);

        v9 = 1;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v7 = WFLogForCategory(0);
    v11 = OSLogForWFLogLevel(4uLL);
    v9 = 0;
    if (WFCurrentLogLevel() >= 4 && v7)
    {
      v7 = v7;
      if (os_log_type_enabled(v7, v11))
      {
        v12 = [v4 networkName];
        v15 = 136315394;
        v16 = "[WFNetworkListController _shouldShowLowDataModeForProfile:]";
        v17 = 2112;
        v18 = v12;
        _os_log_impl(&dword_273ECD000, v7, v11, "%s: Not showing low data mode for: %@", &v15, 0x16u);
      }

      v9 = 0;
LABEL_15:
    }
  }

  v13 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)_updateHealthSubtitle
{
  v52 = *MEMORY[0x277D85DE8];
  v3 = [(WFNetworkListController *)self healthRecommendations];
  v4 = MEMORY[0x277D7B9C0];
  v5 = [v3 allObjects];
  v6 = [v4 highestPriorityIssueFromIssues:v5];

  if (v6)
  {
    v7 = [v6 issueTitle];
  }

  else
  {
    v7 = 0;
  }

  if ([(WFNetworkListController *)self viewControllerSupportsCurrentNetworkSubtitle])
  {
    v8 = [(WFNetworkListController *)self interface];
    v9 = [v8 currentNetwork];

    v10 = [(WFNetworkListController *)self interface];
    v11 = [v10 currentKnownNetworkProfile];

    if ([(WFNetworkListController *)self _shouldShowLowDataModeForProfile:v11])
    {
      v12 = v11;
      if (v7)
      {
        v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v14 = [v13 localizedStringForKey:@"kWFLocSaveDataModeSubtitle" value:&stru_2882E4AD8 table:@"WiFiKitLocalizableStrings"];
        v15 = [v7 stringByAppendingFormat:@" — %@", v14];

        v7 = v15;
      }

      else
      {
        v16 = MEMORY[0x277CCACA8];
        v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v14 = [v13 localizedStringForKey:@"kWFLocSaveDataModeSubtitle" value:&stru_2882E4AD8 table:@"WiFiKitLocalizableStrings"];
        v7 = [v16 stringWithString:v14];
      }

      v11 = v12;
    }

    v17 = WFLogForCategory(0);
    v18 = OSLogForWFLogLevel(3uLL);
    if (WFCurrentLogLevel() >= 3 && v17)
    {
      v19 = v3;
      v20 = v11;
      v21 = v17;
      if (os_log_type_enabled(v21, v18))
      {
        [(WFNetworkListController *)self viewController];
        v22 = v47 = v9;
        v23 = [v22 currentNetwork];
        *buf = 138412546;
        v49 = v7;
        v50 = 2112;
        v51 = objc_opt_class();
        v46 = v51;
        _os_log_impl(&dword_273ECD000, v21, v18, "subtitle: %@, currentNetwork class: %@", buf, 0x16u);

        v9 = v47;
      }

      v11 = v20;
      v3 = v19;
    }

    if (!v7)
    {
      goto LABEL_22;
    }

    v24 = [(WFNetworkListController *)self viewController];
    v25 = [v24 currentNetwork];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v27 = [(WFNetworkListController *)self viewController];
      v28 = [v27 currentNetworkSubtitle];
      v29 = [v28 isEqualToString:v7];

      if (v29)
      {
        v30 = WFLogForCategory(0);
        v31 = OSLogForWFLogLevel(3uLL);
        if (WFCurrentLogLevel() >= 3 && v30 && os_log_type_enabled(v30, v31))
        {
          *buf = 0;
          _os_log_impl(&dword_273ECD000, v30, v31, "subtitle is equal to current one, not updating ", buf, 2u);
        }

        goto LABEL_28;
      }

      v40 = [(WFNetworkListController *)self viewController];
      [v40 setCurrentNetworkSubtitle:v7];

      if ([(WFNetworkListController *)self isAirPortSettings])
      {
        if (v6)
        {
          v41 = [MEMORY[0x277CBEB98] setWithObjects:{v6, 0}];
        }

        else
        {
          v41 = 0;
        }

        v42 = +[WFMetricsManager sharedManager];
        v43 = [v9 ssid];
        v44 = +[WFHealthUIEvent subtitleEventWithIssues:ssid:securityType:](WFHealthUIEvent, "subtitleEventWithIssues:ssid:securityType:", v41, v43, [v9 securityMode]);
        [v42 processEvent:v44];
      }

      v30 = WFLogForCategory(0);
      v45 = OSLogForWFLogLevel(3uLL);
      if (WFCurrentLogLevel() < 3 || !v30)
      {
        goto LABEL_28;
      }

      v30 = v30;
      if (!os_log_type_enabled(v30, v45))
      {
        goto LABEL_27;
      }

      v34 = [v9 ssid];
      *buf = 138412546;
      v49 = v34;
      v50 = 2112;
      v51 = v7;
      v35 = "Setting health subtitle for %@ to %@";
      v36 = v30;
      v37 = v45;
      v38 = 22;
    }

    else
    {
LABEL_22:
      v32 = [(WFNetworkListController *)self viewController];
      [v32 setCurrentNetworkSubtitle:0];

      v30 = WFLogForCategory(0);
      v33 = OSLogForWFLogLevel(3uLL);
      if (WFCurrentLogLevel() < 3 || !v30)
      {
        goto LABEL_28;
      }

      v30 = v30;
      if (!os_log_type_enabled(v30, v33))
      {
LABEL_27:

LABEL_28:
        goto LABEL_29;
      }

      v34 = [v9 ssid];
      *buf = 138412290;
      v49 = v34;
      v35 = "Clearing health subtitle for %@";
      v36 = v30;
      v37 = v33;
      v38 = 12;
    }

    _os_log_impl(&dword_273ECD000, v36, v37, v35, buf, v38);

    goto LABEL_27;
  }

LABEL_29:

  v39 = *MEMORY[0x277D85DE8];
}

- (void)networkListViewController:(id)a3 didTapRecord:(id)a4
{
  v58 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    if (self->_shouldShowDetailTapOnCurrentNetwork)
    {
      goto LABEL_8;
    }

    v8 = [(WFNetworkListController *)self associationContext];
    v9 = [v8 networkName];
    v10 = [v7 ssid];
    v11 = [v9 isEqualToString:v10];

    if (!v11)
    {
LABEL_8:
      v18 = [(WFNetworkListController *)self interface];
      v19 = [v18 currentNetwork];
      v20 = [v7 isEqual:v19];

      if (v20)
      {
        v21 = [(WFNetworkListController *)self interface];
        v22 = [v21 currentNetwork];
        v23 = [v22 carPlayType];

        if (v23 == 1)
        {
          v24 = WFLogForCategory(0);
          v25 = OSLogForWFLogLevel(3uLL);
          if (WFCurrentLogLevel() >= 3 && v24)
          {
            v26 = v24;
            if (os_log_type_enabled(v26, v25))
            {
              v27 = [(WFNetworkListController *)self interface];
              v28 = [v27 currentNetwork];
              v52 = 136315394;
              v53 = "[WFNetworkListController networkListViewController:didTapRecord:]";
              v54 = 2112;
              v55 = v28;
              _os_log_impl(&dword_273ECD000, v26, v25, "%s: tapped on carplay only network %@", &v52, 0x16u);
            }
          }
        }

        else
        {
          v31 = [(WFNetworkListController *)self wifiClient];
          v32 = [v31 isCellularOutrankingWiFi];

          if (v32)
          {
            v33 = [(WFNetworkListController *)self wifiClient];
            v34 = [v33 cellularOutrankState];

            v35 = WFLogForCategory(0);
            v36 = OSLogForWFLogLevel(3uLL);
            if (WFCurrentLogLevel() >= 3 && v35)
            {
              v37 = v35;
              if (os_log_type_enabled(v37, v36))
              {
                v38 = [(WFNetworkListController *)self interface];
                v39 = [v38 currentNetwork];
                v52 = 136315650;
                v53 = "[WFNetworkListController networkListViewController:didTapRecord:]";
                v54 = 2112;
                v55 = v39;
                v56 = 2048;
                v57 = v34;
                _os_log_impl(&dword_273ECD000, v37, v36, "%s: tapped on current network when cellular is outranking wifi %@ - state: %lu", &v52, 0x20u);
              }
            }

            if (v34 == 4)
            {
              v40 = WFLogForCategory(0);
              v41 = OSLogForWFLogLevel(3uLL);
              if (WFCurrentLogLevel() >= 3 && v40)
              {
                v42 = v40;
                if (os_log_type_enabled(v42, v41))
                {
                  v43 = [(WFNetworkListController *)self interface];
                  v44 = [v43 currentNetwork];
                  v52 = 136315394;
                  v53 = "[WFNetworkListController networkListViewController:didTapRecord:]";
                  v54 = 2112;
                  v55 = v44;
                  _os_log_impl(&dword_273ECD000, v42, v41, "%s: tapped on current network when developer is outranking wifi %@", &v52, 0x16u);
                }
              }

              v12 = [(WFNetworkListController *)self interface];
              v45 = [v12 currentNetwork];
              [(WFNetworkListController *)self _presentDeveloperOutrankAlertForNetwork:v45];
            }

            else
            {
              v12 = [(WFNetworkListController *)self interface];
              v51 = [v12 currentNetwork];
              [(WFNetworkListController *)self _presentCellularOutrankAlertForNetwork:v51 privateCellular:v34 == 5];
            }

            goto LABEL_22;
          }

          if ([(WFNetworkListController *)self shouldShowDetailTapOnCurrentNetwork])
          {
            v46 = WFLogForCategory(0);
            v47 = OSLogForWFLogLevel(3uLL);
            if (WFCurrentLogLevel() >= 3 && v46)
            {
              v48 = v46;
              if (os_log_type_enabled(v48, v47))
              {
                v49 = [(WFNetworkListController *)self interface];
                v50 = [v49 currentNetwork];
                v52 = 136315394;
                v53 = "[WFNetworkListController networkListViewController:didTapRecord:]";
                v54 = 2112;
                v55 = v50;
                _os_log_impl(&dword_273ECD000, v48, v47, "%s: showing settings for current network: %@", &v52, 0x16u);
              }
            }

            v12 = [(WFNetworkListController *)self viewController];
            [(WFNetworkListController *)self networkListViewController:v12 showSettingsForNetwork:v7 context:1];
            goto LABEL_22;
          }
        }
      }

      [(WFNetworkListController *)self _associateToScanRecord:v7];
      v12 = [(WFNetworkListController *)self associationContext];
      [v12 setOriginator:0];
      goto LABEL_22;
    }

    v12 = WFLogForCategory(0);
    v13 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v12 && os_log_type_enabled(v12, v13))
    {
      LOWORD(v52) = 0;
      v14 = "Refuse repeat association request when tapping to show detail is not supported.";
      v15 = v12;
      v16 = v13;
      v17 = 2;
LABEL_21:
      _os_log_impl(&dword_273ECD000, v15, v16, v14, &v52, v17);
    }
  }

  else
  {
    v12 = WFLogForCategory(0);
    v29 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v12 && os_log_type_enabled(v12, v29))
    {
      v52 = 136315138;
      v53 = "[WFNetworkListController networkListViewController:didTapRecord:]";
      v14 = "%s- called with nil list record";
      v15 = v12;
      v16 = v29;
      v17 = 12;
      goto LABEL_21;
    }
  }

LABEL_22:

  v30 = *MEMORY[0x277D85DE8];
}

- (void)networkListViewControllerDidTapOtherNetwork:(id)a3
{
  v47 = *MEMORY[0x277D85DE8];
  v29 = a3;
  [(WFNetworkListController *)self isAssociating];
  v4 = WFLogForCategory(0);
  v5 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v4 && os_log_type_enabled(v4, v5))
  {
    *buf = 0;
    _os_log_impl(&dword_273ECD000, v4, v5, "User tapped join other network", buf, 2u);
  }

  [(WFNetworkListController *)self _pauseScanning];
  v6 = [(WFNetworkListController *)self viewProvider];
  v7 = objc_opt_respondsToSelector();

  v8 = objc_alloc_init(MEMORY[0x277CCAD78]);
  v9 = [v8 UUIDString];

  v10 = [(WFNetworkListController *)self wifiClient];
  v11 = [v10 hardwareMACAddress];

  v12 = [[WFOtherNetworkContext alloc] initWithType:0 authTraits:[(WFNetworkListController *)self _defaultAuthTraits] supportRandomAddress:1 useRandomAddress:1 randomMACAddress:0 hardwareMACAddress:v11];
  if (v7)
  {
    v13 = [(WFNetworkListController *)self viewProvider];
    v14 = [v13 otherNetworkViewControllerWithContext:v12];
  }

  else
  {
    v15 = objc_alloc(MEMORY[0x277D7B9F0]);
    v16 = WFCurrentDeviceCapability();
    v17 = [MEMORY[0x277D7B980] defaultAppearanceProxy];
    v14 = [v15 initWithOtherNetworkProviderContext:v12 deviceCapability:v16 appearanceProxy:v17];

    [v14 setDelegate:v12];
  }

  if (v14)
  {
    [(WFCredentialsContext *)v12 setProvider:v14];
    [(WFNetworkListController *)self setCredentialsContext:v12];
    [(WFNetworkListController *)self setVisibleContext:v12];
    objc_initWeak(&location, self);
    objc_initWeak(&from, v12);
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __71__WFNetworkListController_networkListViewControllerDidTapOtherNetwork___block_invoke;
    v36[3] = &unk_279EBD648;
    objc_copyWeak(&v37, &location);
    objc_copyWeak(&v38, &from);
    [(WFOtherNetworkContext *)v12 setPrivateAddressModeChangeHandler:v36];
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __71__WFNetworkListController_networkListViewControllerDidTapOtherNetwork___block_invoke_302;
    v33[3] = &unk_279EBD448;
    objc_copyWeak(&v34, &location);
    objc_copyWeak(&v35, &from);
    [(WFCredentialsContext *)v12 setCancellationHandler:v33];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __71__WFNetworkListController_networkListViewControllerDidTapOtherNetwork___block_invoke_303;
    v30[3] = &unk_279EBD670;
    objc_copyWeak(&v31, &location);
    objc_copyWeak(&v32, &from);
    [(WFCredentialsContext *)v12 setCompletionHandler:v30];
    [(WFNetworkListController *)self setOtherNetworkVC:v14];
    v18 = [(WFNetworkListController *)self viewProvider];
    v19 = objc_opt_respondsToSelector();

    if (v19)
    {
      v20 = WFLogForCategory(0);
      v21 = OSLogForWFLogLevel(3uLL);
      if (WFCurrentLogLevel() >= 3 && v20 && os_log_type_enabled(v20, v21))
      {
        *buf = 138412546;
        v42 = v14;
        v43 = 2112;
        v44 = v12;
        _os_log_impl(&dword_273ECD000, v20, v21, "viewProvider will handle presentation of %@ (context %@)", buf, 0x16u);
      }

      v22 = [(WFNetworkListController *)self viewProvider];
      [v22 presentNetworkViewController:v14 forContext:v12];
    }

    else
    {
      v22 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v14];
      [v22 setModalPresentationStyle:2];
      v27 = [(WFNetworkListController *)self viewController];
      [v27 presentViewController:v22 animated:1 completion:0];
    }

    objc_destroyWeak(&v32);
    objc_destroyWeak(&v31);
    objc_destroyWeak(&v35);
    objc_destroyWeak(&v34);
    objc_destroyWeak(&v38);
    objc_destroyWeak(&v37);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }

  else
  {
    v23 = WFLogForCategory(0);
    v24 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v23)
    {
      v25 = v23;
      if (os_log_type_enabled(v25, v24))
      {
        v26 = [(WFNetworkListController *)self viewProvider];
        *buf = 136315650;
        v42 = "[WFNetworkListController networkListViewControllerDidTapOtherNetwork:]";
        v43 = 2112;
        v44 = v26;
        v45 = 1024;
        v46 = v7 & 1;
        _os_log_impl(&dword_273ECD000, v25, v24, "%s: otherNetworkVc is nil, view provider %@ (supportsOtherVc %d)", buf, 0x1Cu);
      }
    }
  }

  v28 = *MEMORY[0x277D85DE8];
}

void __71__WFNetworkListController_networkListViewControllerDidTapOtherNetwork___block_invoke(uint64_t a1, uint64_t a2)
{
  objc_copyWeak(&to, (a1 + 32));
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained network];
  v6 = objc_loadWeakRetained((a1 + 40));
  v7 = v6;
  if (v5)
  {
    v8 = [v6 network];
    [v8 ssid];
  }

  else
  {
    v8 = [v6 provider];
    [v8 SSID];
  }
  v9 = ;

  if (a2 == 1)
  {
    v10 = 0;
  }

  else
  {
    v11 = WFLogForCategory(0);
    v12 = OSLogForWFLogLevel(3uLL);
    if (WFCurrentLogLevel() >= 3 && v11 && os_log_type_enabled(v11, v12))
    {
      *v17 = 0;
      _os_log_impl(&dword_273ECD000, v11, v12, "Generating new private mac when join with random address mode", v17, 2u);
    }

    v13 = objc_loadWeakRetained(&to);
    v14 = [v13 wifiClient];
    v10 = [v14 newRandomMACAddressForSSID:v9];
  }

  v15 = objc_loadWeakRetained(&to);
  v16 = [v15 wifiClient];
  [v16 setRandomAddressModeForNetwork:v9 mode:a2 randomMAC:v10];

  objc_destroyWeak(&to);
}

void __71__WFNetworkListController_networkListViewControllerDidTapOtherNetwork___block_invoke_302(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = WFLogForCategory(0);
  v3 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v2 && os_log_type_enabled(v2, v3))
  {
    v9 = 136315138;
    v10 = "[WFNetworkListController networkListViewControllerDidTapOtherNetwork:]_block_invoke";
    _os_log_impl(&dword_273ECD000, v2, v3, "%s: user cancelled credentials prompt", &v9, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [MEMORY[0x277CCA9B8] associationErrorWithReason:6];
  [WeakRetained _associationDidFinish:0 error:v5 network:0];

  v6 = objc_loadWeakRetained((a1 + 32));
  v7 = objc_loadWeakRetained((a1 + 40));
  [v6 _dismissOtherNetworkViewControllerWithContext:v7];

  v8 = *MEMORY[0x277D85DE8];
}

void __71__WFNetworkListController_networkListViewControllerDidTapOtherNetwork___block_invoke_303(uint64_t a1, void *a2, int a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WFLogForCategory(0);
  v8 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v7 && os_log_type_enabled(v7, v8))
  {
    v12 = 136315650;
    v13 = "[WFNetworkListController networkListViewControllerDidTapOtherNetwork:]_block_invoke";
    v14 = 2112;
    v15 = v5;
    v16 = 1024;
    v17 = a3;
    _os_log_impl(&dword_273ECD000, v7, v8, "%s: credentials prompt complete, provider %@, shouldDismiss %d", &v12, 0x1Cu);
  }

  v9 = objc_loadWeakRetained((a1 + 40));
  v10 = [v9 userSuppliedNetwork];

  if ([WeakRetained _canStartAssociationToUserSuppliedNetwork:v10])
  {
    [WeakRetained _associateToUserSuppliedNetwork:v10];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)networkListViewController:(id)a3 userDidChangePowerToggle:(unint64_t)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = WFLogForCategory(0);
  v8 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v7)
  {
    v9 = v7;
    if (os_log_type_enabled(v9, v8))
    {
      v10 = WFPowerStateToggleToString();
      *buf = 136315394;
      v16 = "[WFNetworkListController networkListViewController:userDidChangePowerToggle:]";
      v17 = 2112;
      v18 = v10;
      _os_log_impl(&dword_273ECD000, v9, v8, "%s: User requested power state change to %@", buf, 0x16u);
    }
  }

  [(WFNetworkListController *)self setPowerState:2];
  [(WFNetworkListController *)self setPowerState:[(WFNetworkListController *)self powerState]];
  objc_initWeak(buf, self);
  v11 = [(WFNetworkListController *)self wifiClient];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __78__WFNetworkListController_networkListViewController_userDidChangePowerToggle___block_invoke;
  v13[3] = &unk_279EBD698;
  objc_copyWeak(&v14, buf);
  [v11 setPoweredToggle:a4 == 1 handler:v13];

  objc_destroyWeak(&v14);
  objc_destroyWeak(buf);

  v12 = *MEMORY[0x277D85DE8];
}

void __78__WFNetworkListController_networkListViewController_userDidChangePowerToggle___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _powerStateChanged];
}

- (void)setPowerState:(unint64_t)a3
{
  v25 = *MEMORY[0x277D85DE8];
  if (self->_powerState != a3)
  {
    v5 = WFLogForCategory(0);
    v6 = OSLogForWFLogLevel(3uLL);
    if (WFCurrentLogLevel() >= 3 && v5)
    {
      v7 = v5;
      if (os_log_type_enabled(v7, v6))
      {
        powerState = self->_powerState;
        v9 = WFPowerStateToggleToString();
        v10 = WFPowerStateToggleToString();
        v19 = 136315650;
        v20 = "[WFNetworkListController setPowerState:]";
        v21 = 2112;
        v22 = v9;
        v23 = 2112;
        v24 = v10;
        _os_log_impl(&dword_273ECD000, v7, v6, "%s: power state changed from %@ to %@", &v19, 0x20u);
      }
    }

    self->_powerState = a3;
    v11 = [(WFNetworkListController *)self viewController];
    v12 = objc_opt_respondsToSelector();

    v13 = [(WFNetworkListController *)self viewController];
    v14 = v13;
    if (v12)
    {
      [v13 powerStateDidChangeToggle:self->_powerState];
    }

    else
    {
      v15 = objc_opt_respondsToSelector();

      if (v15)
      {
        v14 = [(WFNetworkListController *)self viewController];
        [v14 powerStateDidChange:self->_powerState == 1];
      }

      else
      {
        v14 = WFLogForCategory(0);
        v16 = OSLogForWFLogLevel(1uLL);
        if (WFCurrentLogLevel() && v14)
        {
          v14 = v14;
          if (os_log_type_enabled(v14, v16))
          {
            v17 = [(WFNetworkListController *)self viewController];
            v19 = 136315394;
            v20 = "[WFNetworkListController setPowerState:]";
            v21 = 2112;
            v22 = v17;
            _os_log_impl(&dword_273ECD000, v14, v16, "%s: viewController (%@) doesn't respond to power state change methods", &v19, 0x16u);
          }
        }
      }
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (BOOL)networkListViewControllerCurrentPowerState:(id)a3
{
  v3 = [(WFNetworkListController *)self wifiClient];
  v4 = [v3 powered];

  return v4;
}

- (void)networkListViewControllerDidAppear:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = WFLogForCategory(0);
  v5 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v4)
  {
    v6 = v4;
    if (os_log_type_enabled(v6, v5))
    {
      v7 = [(WFNetworkListController *)self interface];
      v8 = [v7 currentNetwork];
      v20 = 138412546;
      v21 = v8;
      v22 = 1024;
      v23 = [(WFNetworkListController *)self isAssociating];
      _os_log_impl(&dword_273ECD000, v6, v5, "Network list view controller did appear, current network='%@', isAssociating=%d", &v20, 0x12u);
    }
  }

  [(WFNetworkListController *)self _refreshKnownHiddenNetworkNamesCache];
  [(WFNetworkListController *)self _updatePowerState];
  v9 = [(WFNetworkListController *)self interface];
  v10 = [v9 currentNetwork];
  if (!v10)
  {

    goto LABEL_15;
  }

  v11 = v10;
  v12 = [(WFNetworkListController *)self isAssociating];

  if (v12)
  {
LABEL_15:
    [(WFNetworkListController *)self _updateViewControllerScanResults];
    goto LABEL_16;
  }

  [(WFNetworkListController *)self _updateViewControllerConnectedNetwork];
  if ([(WFNetworkListController *)self isAirPortSettings])
  {
    v13 = WFLogForCategory(0);
    v14 = OSLogForWFLogLevel(3uLL);
    if (WFCurrentLogLevel() >= 3 && v13 && os_log_type_enabled(v13, v14))
    {
      v20 = 67109120;
      LODWORD(v21) = 5;
      _os_log_impl(&dword_273ECD000, v13, v14, "Initial no Internet test will start after %d seconds for wifi list appearance.", &v20, 8u);
    }

    v15 = [(WFNetworkListController *)self healthManager];
    [v15 runNoInternetDiagnosticsAfter:5];
  }

LABEL_16:
  v16 = +[WFMetricsManager sharedManager];
  v17 = [WFUserEvent eventWithType:0];
  [v16 processEvent:v17];

  v18 = [(WFNetworkListController *)self wifiClient];
  LODWORD(v17) = [v18 isNetworkRestrictionActive];

  [(WFNetworkListController *)self setCanScanForPersonalHotspots:v17 ^ 1];
  v19 = *MEMORY[0x277D85DE8];
}

- (void)networkListViewControllerDidDisappear:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = WFLogForCategory(0);
  v5 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v4)
  {
    v6 = v4;
    if (os_log_type_enabled(v6, v5))
    {
      v7 = [(WFNetworkListController *)self isAssociating];
      v8 = @"NO";
      if (v7)
      {
        v8 = @"YES";
      }

      v16 = 138412290;
      v17 = v8;
      _os_log_impl(&dword_273ECD000, v6, v5, "Network list view controller did disappear - associating %@", &v16, 0xCu);
    }
  }

  [(WFNetworkListController *)self _pauseScanning];
  [(WFNetworkListController *)self _stopHotspotScan];
  v9 = [(WFNetworkListController *)self viewController];
  v10 = [v9 navigationController];
  v11 = [v10 viewControllers];
  if ([v11 count] == 1)
  {

LABEL_11:
    v14 = [(WFNetworkListController *)self scanMetricsManager];
    [v14 submit];

    goto LABEL_12;
  }

  v12 = [(WFNetworkListController *)self viewController];
  v13 = [v12 navigationController];

  if (!v13)
  {
    goto LABEL_11;
  }

LABEL_12:
  v15 = *MEMORY[0x277D85DE8];
}

- (void)networkListViewControllerDidFinish:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = WFLogForCategory(0);
  v6 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v5)
  {
    v7 = v5;
    if (os_log_type_enabled(v7, v6))
    {
      v8 = [(WFNetworkListController *)self isAssociating];
      v9 = @"NO";
      v12 = "[WFNetworkListController networkListViewControllerDidFinish:]";
      v11 = 136315650;
      v13 = 2112;
      v14 = v4;
      if (v8)
      {
        v9 = @"YES";
      }

      v15 = 2112;
      v16 = v9;
      _os_log_impl(&dword_273ECD000, v7, v6, "%s: %@ - associating %@", &v11, 0x20u);
    }
  }

  [(WFNetworkListController *)self _cleanUpStatesForDismissal];
  v10 = *MEMORY[0x277D85DE8];
}

- (id)networkListViewController:(id)a3 showSettingsForNetwork:(id)a4 context:(int64_t)a5 scrollToCellType:(unint64_t)a6 controller:(id)a7
{
  v252 = *MEMORY[0x277D85DE8];
  v198 = a3;
  v11 = a4;
  v201 = a7;
  objc_opt_class();
  v204 = v11;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v191 = a6;
      v206 = self;
      v15 = [(WFNetworkListController *)self interface];
      v16 = [v15 currentNetwork];
      v17 = [v16 isEqual:v204];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v203 = v204;
        v199 = [[WFNetworkScanRecord alloc] initWithCoreWiFiProfile:v203];
        v18 = [(WFNetworkListController *)v206 knownNetworksManager];
        v19 = [(WFNetworkScanRecord *)v199 ssid];
        v20 = [v18 privateAddressConfigForNetworkName:v19];

        [(WFNetworkScanRecord *)v199 populatePrivateAddressConfig:v20];
        v21 = [(WFNetworkListController *)v206 interface];
        v22 = [v21 currentNetwork];
        v23 = [v22 isEquivalentRecord:v199];

        if (v201)
        {
          [(WFNetworkScanRecord *)v199 setMatchingKnownNetworkProfile:v203];

          goto LABEL_43;
        }

        if (v23)
        {
          goto LABEL_43;
        }
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v37 = WFLogForCategory(0);
          v38 = OSLogForWFLogLevel(1uLL);
          if (WFCurrentLogLevel() && v37)
          {
            v39 = v37;
            if (os_log_type_enabled(v39, v38))
            {
              *buf = 136315394;
              *v248 = "[WFNetworkListController networkListViewController:showSettingsForNetwork:context:scrollToCellType:controller:]";
              *&v248[8] = 2112;
              *&v248[10] = 0;
              _os_log_impl(&dword_273ECD000, v39, v38, "%s: unknown class type for network='%@'", buf, 0x16u);
            }
          }

          v199 = 0;
          if ((v17 & 1) == 0)
          {
            v42 = 0;
            goto LABEL_47;
          }

          v203 = 0;
          goto LABEL_43;
        }

        v199 = v204;
        v24 = [(WFNetworkListController *)v206 gasController];
        [v24 resolveProfileForNetwork:v199 handler:&__block_literal_global_323 force:1];

        v25 = [(WFNetworkListController *)v206 wifiClient];
        v26 = v25;
        if (v17)
        {
          v27 = [v25 interface];
          v28 = [v27 associatedOnIRInterface];

          if (v28)
          {
            v29 = WFLogForCategory(0);
            v30 = OSLogForWFLogLevel(3uLL);
            if (WFCurrentLogLevel() >= 3 && v29)
            {
              v31 = v29;
              if (os_log_type_enabled(v31, v30))
              {
                v32 = [(WFNetworkScanRecord *)v199 title];
                *buf = 136315394;
                *v248 = "[WFNetworkListController networkListViewController:showSettingsForNetwork:context:scrollToCellType:controller:]";
                *&v248[8] = 2112;
                *&v248[10] = v32;
                _os_log_impl(&dword_273ECD000, v31, v30, "%s: Getting current network's(%@) profile from ir interface", buf, 0x16u);
              }
            }

            v33 = [(WFNetworkListController *)v206 wifiClient];
            v34 = [v33 interface];
            v35 = [v34 irInterface];
            v36 = [(WFNetworkScanRecord *)v199 scanResult];
            v203 = [v35 knownNetworkProfileMatchingScanResult:v36];
          }

          else
          {
            v43 = [(WFNetworkListController *)v206 wifiClient];
            v44 = [v43 cInterface];
            v45 = [v44 currentScanResult];
            v203 = [v45 matchingKnownNetworkProfile];
          }

          if (v203)
          {
            goto LABEL_43;
          }
        }

        else
        {
          v40 = [v25 cInterface];
          v41 = [(WFNetworkScanRecord *)v199 scanResult];
          v203 = [v40 knownNetworkProfileMatchingScanResult:v41];

          if (v203)
          {
            v42 = 0;
            goto LABEL_45;
          }
        }

        v46 = WFLogForCategory(0);
        v47 = OSLogForWFLogLevel(3uLL);
        if (WFCurrentLogLevel() >= 3 && v46)
        {
          v48 = v46;
          if (os_log_type_enabled(v48, v47))
          {
            *buf = 0;
            _os_log_impl(&dword_273ECD000, v48, v47, "cwProfile not found in known networks list", buf, 2u);
          }
        }

        v203 = [(WFNetworkScanRecord *)v199 matchingKnownNetworkProfile];
        if (v17)
        {
LABEL_43:
          v49 = [(WFNetworkListController *)v206 interface];
          v50 = [v49 currentNetwork];
          v42 = [v50 carPlayType] != 1;

          goto LABEL_44;
        }
      }

      v42 = 0;
LABEL_44:
      if (v203)
      {
LABEL_45:
        v192 = [[WFNetworkProfile alloc] initWithCoreWiFiProfile:v203];
        v197 = [(WFNetworkListController *)v206 _hardwareMACAddress];
        v51 = 0;
        if (v42)
        {
LABEL_46:
          v52 = [(WFNetworkListController *)v206 interface];
          v53 = [v52 currentNetwork];

          v196 = 1;
          v54 = v53;
          goto LABEL_54;
        }

LABEL_53:
        v54 = v199;
        v196 = 0;
        v199 = v54;
LABEL_54:
        v205 = v54;
        v58 = [(WFNetworkScanRecord *)v54 matchingKnownNetworkProfile];
        v59 = [v58 NANServiceID];

        if (_os_feature_enabled_impl())
        {
          v60 = [(WFNetworkScanRecord *)v205 matchingKnownNetworkProfile];
          if (v60)
          {
            v61 = [(WFNetworkScanRecord *)v205 matchingKnownNetworkProfile];
            v62 = v61;
          }

          else
          {
            v61 = [(WFNetworkScanRecord *)v205 scanResult];
            v62 = [v61 networkProfile];
          }

          v101 = [(WFNetworkListController *)v206 wifiClient];
          v102 = [v101 cInterface];
          v103 = [v102 privateMACAddressModeForNetworkProfile:v62];

          v104 = [(WFNetworkListController *)v206 wifiClient];
          v105 = [v104 cInterface];
          v195 = [v105 privateMACAddressForNetworkProfile:v62];

          if ((v103 - 1) >= 3)
          {
            v103 = 0;
          }

          goto LABEL_104;
        }

        v63 = [(WFNetworkScanRecord *)v205 isRandomMACAddressEnabled];
        v64 = WFLogForCategory(8uLL);
        v65 = OSLogForWFLogLevel(1uLL);
        if (WFCurrentLogLevel() && v64)
        {
          v66 = v64;
          if (os_log_type_enabled(v66, v65))
          {
            v67 = [(WFNetworkScanRecord *)v205 ssid];
            *buf = 67109378;
            *v248 = v63;
            *&v248[4] = 2112;
            *&v248[6] = v67;
            _os_log_impl(&dword_273ECD000, v66, v65, "private address value=%d for '%@'", buf, 0x12u);
          }
        }

        v68 = [(WFNetworkListController *)v206 randomMACManager];
        v69 = [v204 ssid];
        v70 = [v68 isSSIDinCache:v69];

        if (v70)
        {
          v71 = [(WFNetworkListController *)v206 randomMACManager];
          v72 = [v204 ssid];
          v73 = [v71 shouldEnableRandomMACForSSID:v72];

          v74 = WFLogForCategory(8uLL);
          v75 = OSLogForWFLogLevel(1uLL);
          if (WFCurrentLogLevel() && v74)
          {
            v76 = v74;
            if (os_log_type_enabled(v76, v75))
            {
              v77 = [(WFNetworkScanRecord *)v205 ssid];
              *buf = 67109634;
              *v248 = v73;
              *&v248[4] = 1024;
              *&v248[6] = v63;
              *&v248[10] = 2112;
              *&v248[12] = v77;
              _os_log_impl(&dword_273ECD000, v76, v75, "overriding private address from scan cache (was=%d) value=%d for '%@'", buf, 0x18u);
            }
          }
        }

        else
        {
          v73 = v63;
        }

        if (v196)
        {
          v78 = [(WFNetworkListController *)v206 interface];
          v79 = [v78 currentNetwork];
          v80 = [v79 isRandomMACAddressEnabled];

          v81 = WFLogForCategory(8uLL);
          v82 = OSLogForWFLogLevel(1uLL);
          if (WFCurrentLogLevel() && v81)
          {
            v83 = v81;
            if (os_log_type_enabled(v83, v82))
            {
              v84 = [(WFNetworkScanRecord *)v205 ssid];
              *buf = 67109634;
              *v248 = v80;
              *&v248[4] = 1024;
              *&v248[6] = v73;
              *&v248[10] = 2112;
              *&v248[12] = v84;
              _os_log_impl(&dword_273ECD000, v83, v82, "overriding private address for current network (was=%d) value=%d for '%@'", buf, 0x18u);
            }
          }
        }

        v85 = [(WFNetworkScanRecord *)v205 randomMACAddress];
        v86 = [v197 isEqualToString:v85];

        if (![(WFNetworkScanRecord *)v205 isSupervised])
        {
          v87 = [(WFNetworkScanRecord *)v205 randomMACAddress];
          if (v87)
          {
            v88 = [(WFNetworkScanRecord *)v205 randomMACAddress];
            v89 = [v197 isEqualToString:v88];

            if ((v89 & (v59 == 0)) != 0)
            {
              goto LABEL_80;
            }
          }

          else
          {

            if (!v59)
            {
LABEL_80:
              v90 = WFLogForCategory(8uLL);
              v91 = OSLogForWFLogLevel(1uLL);
              if (WFCurrentLogLevel() && v90)
              {
                v92 = v90;
                if (os_log_type_enabled(v92, v91))
                {
                  v93 = [(WFNetworkScanRecord *)v205 ssid];
                  v94 = [(WFNetworkScanRecord *)v205 randomMACAddress];
                  *buf = 138412802;
                  *v248 = v93;
                  *&v248[8] = 2112;
                  *&v248[10] = v94;
                  *&v248[18] = 1024;
                  *v249 = v86;
                  _os_log_impl(&dword_273ECD000, v92, v91, "generating private address for '%@' (currentAddress=%@, usingHWAddress=%d)", buf, 0x1Cu);
                }
              }

              v95 = [(WFNetworkListController *)v206 randomMACManager];
              v96 = [v95 newScanRecordWithRandomMACFromScanRecord:v205];

              if (v206->_isRandomMACManageFeatureEnabled)
              {
                goto LABEL_101;
              }

              v97 = [(WFNetworkListController *)v206 wifiClient];
              v98 = [(WFNetworkScanRecord *)v96 ssid];
              v99 = [(WFNetworkScanRecord *)v96 isRandomMACAddressEnabled];
              v100 = [(WFNetworkScanRecord *)v96 randomMACAddress];
              [v97 setEnableRandomMACForNetwork:v98 enable:v99 randomMAC:v100];

              goto LABEL_98;
            }
          }
        }

        v97 = WFLogForCategory(8uLL);
        v106 = OSLogForWFLogLevel(1uLL);
        if (!WFCurrentLogLevel() || !v97)
        {
          v96 = v205;
          goto LABEL_100;
        }

        v98 = v97;
        if (os_log_type_enabled(v98, v106))
        {
          v107 = [(WFNetworkScanRecord *)v205 isSupervised];
          v108 = [(WFNetworkScanRecord *)v205 randomMACAddress];
          *buf = 136316162;
          *v248 = "[WFNetworkListController networkListViewController:showSettingsForNetwork:context:scrollToCellType:controller:]";
          *&v248[8] = 1024;
          *&v248[10] = v59 == 0;
          *&v248[14] = 1024;
          *&v248[16] = v107;
          *v249 = 2112;
          *&v249[2] = v108;
          v250 = 2112;
          v251 = v197;
          _os_log_impl(&dword_273ECD000, v98, v106, "%s: privateAddressSupported: %d, networkissupervised: %d, network random address from scan: %@, hardwareMac: %@", buf, 0x2Cu);
        }

        v97 = v98;
        v96 = v205;
LABEL_98:

LABEL_100:
LABEL_101:
        v195 = [(WFNetworkScanRecord *)v96 randomMACAddress];
        v103 = [(WFNetworkScanRecord *)v199 privateAddressMode];
        if (!v103)
        {
          v103 = [(WFNetworkScanRecord *)v96 privateAddressMode];
        }

        v205 = v96;
LABEL_104:
        v194 = -[WFDetailContextPrivateAddressConfig initWithRandomMACAddress:hardwareMACAddress:privateAddressMode:connectedWithHardwareAddress:privateAddressSupported:]([WFDetailContextPrivateAddressConfig alloc], "initWithRandomMACAddress:hardwareMACAddress:privateAddressMode:connectedWithHardwareAddress:privateAddressSupported:", v195, v197, v103, [v197 isEqualToString:v195], v59 == 0);
        v109 = [(WFNetworkListController *)v206 interface];
        v110 = [v109 cInterface];
        v111 = [v110 deviceSupports6E];

        if (v51)
        {
          v112 = 0;
        }

        else
        {
          v112 = [v203 wifiModeConfigurable] & v111;
        }

        v193 = -[WFDetailContextWiFiModeConfig initWithConfigurable:wifiMode:]([WFDetailContextWiFiModeConfig alloc], "initWithConfigurable:wifiMode:", v112, [v203 disable6EMode]);
        v113 = [WFDetailsContext alloc];
        v114 = [(WFNetworkListController *)v206 interface];
        v115 = [v114 ipMonitor];
        v116 = [(WFNetworkListController *)v206 interface];
        v117 = [(WFDetailsContext *)v113 initWithNetwork:v205 profile:v203 ipMonitor:v115 interface:v116 privateMACConfig:v194 wifiModeConfig:v193];

        [(WFDetailsContext *)v117 setEntryContext:a5];
        [(WFDetailsContext *)v117 setJoinable:a5 != 2];
        v118 = [(WFNetworkListController *)v206 wifiClient];
        -[WFDetailsContext setDiagnosable:](v117, "setDiagnosable:", [v118 isDiagnosticsEnabled]);

        if (v196)
        {
          if (v201)
          {
            [(WFNetworkListController *)v206 _sortedHealthRecommendations:1];
          }

          else
          {
            [(WFNetworkListController *)v206 _sortedHealthRecommendations];
          }
          v119 = ;
          v120 = [v119 displayableHealthRecommendations];
          [(WFDetailsContext *)v117 setRecommendations:v120];

          v121 = +[WFMetricsManager sharedManager];
          v122 = [(WFNetworkListController *)v206 healthRecommendations];
          v123 = [(WFNetworkScanRecord *)v205 ssid];
          v124 = [WFHealthUIEvent detailEventWithIssues:v122 ssid:v123 securityType:[(WFNetworkScanRecord *)v205 securityMode]];
          [v121 processEvent:v124];

          if (objc_opt_respondsToSelector())
          {
            v125 = [(WFNetworkListController *)v206 contentCachesContext];
            [(WFDetailsContext *)v117 setContentCachesContext:v125];
          }
        }

        v126 = [MEMORY[0x277D7B9F8] privateAddressDisabledBySystemIssue];
        v127 = [v126 issueRecommendation];
        [(WFDetailsContext *)v117 setStaticPrivateMACFooterText:v127];

        [(WFDetailsContext *)v117 setCurrent:v196];
        v202 = [v203 accessoryIdentifier];
        if (_os_feature_enabled_impl())
        {
          v128 = [(WFNetworkListController *)v206 isAirPortSettings];
          if (v202 && v128)
          {
            v130 = WFLogForCategory(0);
            v131 = OSLogForWFLogLevel(3uLL);
            if (WFCurrentLogLevel() >= 3 && v130)
            {
              v132 = v130;
              if (os_log_type_enabled(v132, v131))
              {
                *buf = 136315394;
                *v248 = "[WFNetworkListController networkListViewController:showSettingsForNetwork:context:scrollToCellType:controller:]";
                *&v248[8] = 2114;
                *&v248[10] = v202;
                _os_log_impl(&dword_273ECD000, v132, v131, "%s: looking up device for accessory identifier = '%{public}@'", buf, 0x16u);
              }
            }

            v190 = objc_alloc_init(MEMORY[0x277D04780]);
            v133 = [MEMORY[0x277D04780] getDevicesWithFlags:8 session:v190 error:0];
            v134 = WFLogForCategory(0);
            v135 = OSLogForWFLogLevel(4uLL);
            if (WFCurrentLogLevel() >= 4 && v134)
            {
              v136 = v134;
              if (os_log_type_enabled(v136, v135))
              {
                *buf = 136315394;
                *v248 = "[WFNetworkListController networkListViewController:showSettingsForNetwork:context:scrollToCellType:controller:]";
                *&v248[8] = 2112;
                *&v248[10] = v133;
                _os_log_impl(&dword_273ECD000, v136, v135, "%s: devices found = '%@'", buf, 0x16u);
              }
            }

            v244 = 0u;
            v245 = 0u;
            v242 = 0u;
            v243 = 0u;
            v137 = v133;
            v138 = [v137 countByEnumeratingWithState:&v242 objects:v246 count:16];
            if (v138)
            {
              v139 = *v243;
              while (2)
              {
                for (i = 0; i != v138; ++i)
                {
                  if (*v243 != v139)
                  {
                    objc_enumerationMutation(v137);
                  }

                  v141 = *(*(&v242 + 1) + 8 * i);
                  v142 = WFLogForCategory(0);
                  v143 = OSLogForWFLogLevel(4uLL);
                  if (WFCurrentLogLevel() >= 4 && v142)
                  {
                    v144 = v142;
                    if (os_log_type_enabled(v144, v143))
                    {
                      v145 = [v141 SSID];
                      *buf = 136315650;
                      *v248 = "[WFNetworkListController networkListViewController:showSettingsForNetwork:context:scrollToCellType:controller:]";
                      *&v248[8] = 2112;
                      *&v248[10] = v141;
                      *&v248[18] = 2112;
                      *v249 = v145;
                      _os_log_impl(&dword_273ECD000, v144, v143, "%s: device='%@' SSID='%@'", buf, 0x20u);
                    }
                  }

                  v146 = [v141 identifier];
                  v147 = [v146 isEqualToString:v202];

                  if (v147)
                  {
                    v148 = WFLogForCategory(0);
                    v149 = OSLogForWFLogLevel(4uLL);
                    if (WFCurrentLogLevel() >= 4 && v148)
                    {
                      v150 = v148;
                      if (os_log_type_enabled(v150, v149))
                      {
                        *buf = 136315394;
                        *v248 = "[WFNetworkListController networkListViewController:showSettingsForNetwork:context:scrollToCellType:controller:]";
                        *&v248[8] = 2112;
                        *&v248[10] = v141;
                        _os_log_impl(&dword_273ECD000, v150, v149, "%s: device found = '%@', setting device to detail context", buf, 0x16u);
                      }
                    }

                    if (objc_opt_respondsToSelector())
                    {
                      [(WFDetailsContext *)v117 setDaDevice:v141];
                    }

                    goto LABEL_149;
                  }
                }

                v138 = [v137 countByEnumeratingWithState:&v242 objects:v246 count:16];
                if (v138)
                {
                  continue;
                }

                break;
              }
            }

LABEL_149:
          }
        }

        v151 = [(WFNetworkListController *)v206 viewController];
        objc_opt_class();
        [(WFDetailsContext *)v117 setSupportsAirportManagement:(objc_opt_isKindOfClass() & 1) == 0];

        [(WFDetailsContext *)v117 setPrivacyProxyTierStatus:[(WFNetworkListController *)v206 privacyProxyFeatureTier]];
        v152 = [(WFNetworkListController *)v206 wifiClient];
        v153 = [v152 cellularOutrankState] != 0;
        v154 = [(WFNetworkListController *)v206 wifiClient];
        -[WFDetailsContext setWiFiOutranked:privateCellular:](v117, "setWiFiOutranked:privateCellular:", v153, [v154 cellularOutrankState] == 5);

        v155 = [(WFNetworkListController *)v206 wifiClient];
        -[WFDetailsContext setWiFiOutrankedDev:](v117, "setWiFiOutrankedDev:", [v155 cellularOutrankState] == 4);

        [(WFDetailsContext *)v117 setCredentialsVisible:a5 == 2];
        if ([(WFDetailsContext *)v117 shouldHideCredentials])
        {
          v156 = WFLogForCategory(0);
          v157 = OSLogForWFLogLevel(1uLL);
          if (!WFCurrentLogLevel() || !v156)
          {
LABEL_158:

            [(WFDetailsContext *)v117 setScrollToCellType:v191];
            v161 = WFLogForCategory(0);
            v162 = OSLogForWFLogLevel(3uLL);
            if (WFCurrentLogLevel() >= 3 && v161)
            {
              v163 = v161;
              if (os_log_type_enabled(v163, v162))
              {
                v164 = [(WFDetailsContext *)v117 network];
                v165 = [v164 signalBars];
                *buf = 136315650;
                *v248 = "[WFNetworkListController networkListViewController:showSettingsForNetwork:context:scrollToCellType:controller:]";
                *&v248[8] = 2112;
                *&v248[10] = v117;
                *&v248[18] = 2048;
                *v249 = v165;
                _os_log_impl(&dword_273ECD000, v163, v162, "%s: details context='%@' signalBars=%lu", buf, 0x20u);
              }
            }

            v166 = [(WFNetworkListController *)v206 viewProvider];
            v167 = [v166 networkDetailsViewControllerWithContext:v117];

            v168 = [(WFNetworkListController *)v206 viewProvider];
            v169 = objc_opt_respondsToSelector();

            if (v169)
            {
              v170 = WFLogForCategory(0);
              v171 = OSLogForWFLogLevel(3uLL);
              if (WFCurrentLogLevel() >= 3 && v170)
              {
                v172 = v170;
                if (os_log_type_enabled(v172, v171))
                {
                  *buf = 138412546;
                  *v248 = v167;
                  *&v248[8] = 2112;
                  *&v248[10] = v117;
                  _os_log_impl(&dword_273ECD000, v172, v171, "viewProvider will handle presentation of %@ (context %@)", buf, 0x16u);
                }
              }

              v173 = [(WFNetworkListController *)v206 viewProvider];
              [v173 presentNetworkViewController:v167 forContext:v117];
            }

            else
            {
              v174 = [(WFNetworkListController *)v206 viewController];
              v175 = [v174 navigationController];
              v176 = v175 == 0;

              if (v176)
              {
LABEL_173:
                [(WFDetailsContext *)v117 setProvider:v167];
                v177 = +[WFMetricsManager sharedManager];
                v178 = [WFUserEvent eventWithType:3 state:v196];
                [v177 processEvent:v178];

                objc_initWeak(buf, v117);
                if (v201)
                {
                  [(WFNetworkListController *)v206 setRetainedNetworkListController:?];
                }

                v179 = [(WFNetworkListController *)v206 retainedNetworkListController];
                if (v179)
                {
                  v180 = [(WFNetworkListController *)v206 retainedNetworkListController];
                  objc_initWeak(&location, v180);
                }

                else
                {
                  objc_initWeak(&location, v206);
                }

                v237[0] = MEMORY[0x277D85DD0];
                v237[1] = 3221225472;
                v237[2] = __112__WFNetworkListController_networkListViewController_showSettingsForNetwork_context_scrollToCellType_controller___block_invoke_335;
                v237[3] = &unk_279EBD6E8;
                objc_copyWeak(&v239, &location);
                objc_copyWeak(v240, buf);
                v181 = v203;
                v238 = v181;
                v240[1] = a5;
                [(WFDetailsContext *)v117 setActionHandler:v237];
                v233[0] = MEMORY[0x277D85DD0];
                v233[1] = 3221225472;
                v233[2] = __112__WFNetworkListController_networkListViewController_showSettingsForNetwork_context_scrollToCellType_controller___block_invoke_388;
                v233[3] = &unk_279EBD710;
                objc_copyWeak(&v235, buf);
                objc_copyWeak(&v236, &location);
                v12 = v199;
                v234 = v12;
                [(WFDetailsContext *)v117 setPrivateMACHandler:v233];
                v229[0] = MEMORY[0x277D85DD0];
                v229[1] = 3221225472;
                v229[2] = __112__WFNetworkListController_networkListViewController_showSettingsForNetwork_context_scrollToCellType_controller___block_invoke_389;
                v229[3] = &unk_279EBD738;
                objc_copyWeak(&v231, buf);
                v182 = v181;
                v230 = v182;
                objc_copyWeak(&v232, &location);
                [(WFDetailsContext *)v117 setAutoJoinHandler:v229];
                v225[0] = MEMORY[0x277D85DD0];
                v225[1] = 3221225472;
                v225[2] = __112__WFNetworkListController_networkListViewController_showSettingsForNetwork_context_scrollToCellType_controller___block_invoke_390;
                v225[3] = &unk_279EBD738;
                objc_copyWeak(&v227, buf);
                v183 = v182;
                v226 = v183;
                objc_copyWeak(&v228, &location);
                [(WFDetailsContext *)v117 setAutoLoginHandler:v225];
                v221[0] = MEMORY[0x277D85DD0];
                v221[1] = 3221225472;
                v221[2] = __112__WFNetworkListController_networkListViewController_showSettingsForNetwork_context_scrollToCellType_controller___block_invoke_391;
                v221[3] = &unk_279EBD738;
                objc_copyWeak(&v223, buf);
                v184 = v183;
                v222 = v184;
                objc_copyWeak(&v224, &location);
                [(WFDetailsContext *)v117 setLowDataModeHandler:v221];
                v217[0] = MEMORY[0x277D85DD0];
                v217[1] = 3221225472;
                v217[2] = __112__WFNetworkListController_networkListViewController_showSettingsForNetwork_context_scrollToCellType_controller___block_invoke_392;
                v217[3] = &unk_279EBD738;
                objc_copyWeak(&v219, buf);
                v185 = v184;
                v218 = v185;
                objc_copyWeak(&v220, &location);
                [(WFDetailsContext *)v117 setPrivacyProxyHandler:v217];
                v213[0] = MEMORY[0x277D85DD0];
                v213[1] = 3221225472;
                v213[2] = __112__WFNetworkListController_networkListViewController_showSettingsForNetwork_context_scrollToCellType_controller___block_invoke_396;
                v213[3] = &unk_279EBD788;
                objc_copyWeak(&v215, buf);
                v186 = v185;
                v214 = v186;
                objc_copyWeak(&v216, &location);
                [(WFDetailsContext *)v117 setNetworkQualityHandler:v213];
                objc_initWeak(&from, v117);
                v207[0] = MEMORY[0x277D85DD0];
                v207[1] = 3221225472;
                v207[2] = __112__WFNetworkListController_networkListViewController_showSettingsForNetwork_context_scrollToCellType_controller___block_invoke_398;
                v207[3] = &unk_279EBD7B0;
                v187 = v186;
                v208 = v187;
                objc_copyWeak(&v210, &from);
                objc_copyWeak(&v211, &location);
                v209 = v204;
                [(WFDetailsContext *)v117 setWiFiModeChangedHandler:v207];
                [(WFNetworkListController *)v206 setDetailsContext:v117];
                [(WFNetworkListController *)v206 setVisibleContext:v117];
                v14 = v167;

                objc_destroyWeak(&v211);
                objc_destroyWeak(&v210);

                objc_destroyWeak(&from);
                objc_destroyWeak(&v216);

                objc_destroyWeak(&v215);
                objc_destroyWeak(&v220);

                objc_destroyWeak(&v219);
                objc_destroyWeak(&v224);

                objc_destroyWeak(&v223);
                objc_destroyWeak(&v228);

                objc_destroyWeak(&v227);
                objc_destroyWeak(&v232);

                objc_destroyWeak(&v231);
                objc_destroyWeak(&v236);
                objc_destroyWeak(&v235);

                objc_destroyWeak(v240);
                objc_destroyWeak(&v239);
                objc_destroyWeak(&location);
                objc_destroyWeak(buf);

                goto LABEL_179;
              }

              v173 = [(WFNetworkListController *)v206 viewController];
              [v173 wf_pushViewController:v167 animated:1];
            }

            goto LABEL_173;
          }

          v158 = v156;
          if (os_log_type_enabled(v158, v157))
          {
            v159 = [(WFNetworkScanRecord *)v205 ssid];
            *buf = 136315394;
            *v248 = "[WFNetworkListController networkListViewController:showSettingsForNetwork:context:scrollToCellType:controller:]";
            *&v248[8] = 2112;
            *&v248[10] = v159;
            _os_log_impl(&dword_273ECD000, v158, v157, "%s: Not setting credentials for network: %@ to keep it hidden", buf, 0x16u);
          }

          v156 = v158;
        }

        else
        {
          v160 = [(WFNetworkProfile *)v192 username];
          [(WFDetailsContext *)v117 setUsername:v160];

          v156 = [(WFNetworkScanRecord *)v205 ssid];
          v158 = [(WFNetworkListController *)v206 passwordToDisplayForSSID:v156];
          [(WFDetailsContext *)v117 setPassword:v158];
        }

        goto LABEL_158;
      }

LABEL_47:
      v55 = WFLogForCategory(0);
      v56 = OSLogForWFLogLevel(3uLL);
      if (WFCurrentLogLevel() >= 3 && v55)
      {
        v57 = v55;
        if (os_log_type_enabled(v57, v56))
        {
          *buf = 136315394;
          *v248 = "[WFNetworkListController networkListViewController:showSettingsForNetwork:context:scrollToCellType:controller:]";
          *&v248[8] = 2112;
          *&v248[10] = v199;
          _os_log_impl(&dword_273ECD000, v57, v56, "%s: nil CWFProfile for '%@', network is not a known network", buf, 0x16u);
        }
      }

      v197 = [(WFNetworkListController *)v206 _hardwareMACAddress];
      v192 = 0;
      v203 = 0;
      v51 = 1;
      if (v42)
      {
        goto LABEL_46;
      }

      goto LABEL_53;
    }
  }

  v12 = WFLogForCategory(0);
  v13 = OSLogForWFLogLevel(3uLL);
  v14 = 0;
  if (WFCurrentLogLevel() >= 3 && v12)
  {
    if (os_log_type_enabled(v12, v13))
    {
      *buf = 136315394;
      *v248 = "[WFNetworkListController networkListViewController:showSettingsForNetwork:context:scrollToCellType:controller:]";
      *&v248[8] = 2112;
      *&v248[10] = v204;
      _os_log_impl(&dword_273ECD000, v12, v13, "%s: not showing settings for in progress hotspot join %@", buf, 0x16u);
    }

    v14 = 0;
  }

LABEL_179:

  v188 = *MEMORY[0x277D85DE8];

  return v14;
}

void __112__WFNetworkListController_networkListViewController_showSettingsForNetwork_context_scrollToCellType_controller___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v6 = WFLogForCategory(5uLL);
  v7 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v6 && os_log_type_enabled(v6, v7))
  {
    v9 = 138412546;
    v10 = v4;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&dword_273ECD000, v6, v7, "resolved profile %@ error %@", &v9, 0x16u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __112__WFNetworkListController_networkListViewController_showSettingsForNetwork_context_scrollToCellType_controller___block_invoke_335(uint64_t a1, uint64_t a2)
{
  v124 = *MEMORY[0x277D85DE8];
  objc_copyWeak(&to, (a1 + 40));
  v4 = WFLogForCategory(0);
  v5 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v4 && os_log_type_enabled(v4, v5))
  {
    *buf = 136315394;
    v121 = "[WFNetworkListController networkListViewController:showSettingsForNetwork:context:scrollToCellType:controller:]_block_invoke";
    v122 = 2048;
    v123 = a2;
    _os_log_impl(&dword_273ECD000, v4, v5, "%s: performing details action=%lu", buf, 0x16u);
  }

  if (a2 <= 2)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        WeakRetained = objc_loadWeakRetained((a1 + 48));
        v11 = [WeakRetained network];

        v42 = WFLogForCategory(0);
        v43 = OSLogForWFLogLevel(3uLL);
        if (WFCurrentLogLevel() >= 3 && v42 && os_log_type_enabled(v42, v43))
        {
          *buf = 138412290;
          v121 = v11;
          _os_log_impl(&dword_273ECD000, v42, v43, "Launching AirPort Utility for network %@", buf, 0xCu);
        }

        if (v11)
        {
          v44 = +[WFMetricsManager sharedManager];
          v45 = [WFUserEvent eventWithType:5];
          [v44 processEvent:v45];

          v46 = MEMORY[0x277CEA3A8];
          v47 = [v11 ssid];
          v48 = [v11 bssid];
          v49 = objc_loadWeakRetained(&to);
          v50 = [v49 viewController];
          [v46 launchAUForNetwork:v47 withMacAddress:v48 getAUFromAppStore:1 viewController:v50];
        }

        v51 = objc_loadWeakRetained(&to);
        v52 = objc_loadWeakRetained((a1 + 48));
        [v51 _dismissDetailsViewControllerWithContext:v52];

        goto LABEL_85;
      }

      if (a2 != 2)
      {
        goto LABEL_86;
      }

      v12 = objc_loadWeakRetained(&to);
      v13 = objc_loadWeakRetained((a1 + 48));
      [v12 _dismissDetailsViewControllerWithContext:v13];

      v14 = objc_loadWeakRetained((a1 + 48));
      v11 = [v14 network];

      v15 = objc_loadWeakRetained(&to);
      [v15 _associateToScanRecord:v11];

      v16 = objc_loadWeakRetained(&to);
      v17 = [v16 associationContext];
      [v17 setOriginator:2];

      goto LABEL_85;
    }

    v22 = +[WFMetricsManager sharedManager];
    v23 = [WFUserEvent eventWithType:4];
    [v22 processEvent:v23];

    v24 = objc_loadWeakRetained(&to);
    v25 = objc_loadWeakRetained((a1 + 48));
    [v24 _dismissDetailsViewControllerWithContext:v25];

    v26 = objc_loadWeakRetained((a1 + 48));
    v27 = [v26 network];

    v28 = objc_loadWeakRetained(&to);
    v29 = [v28 interface];
    v30 = [v29 currentNetwork];
    v31 = [v27 isEqual:v30];

    if (v31)
    {
      v114 = 1;
LABEL_51:
      v84 = [v27 carPlayType];
      v85 = v84 == 2;
      if (v84 != 2 && ((v114 ^ 1) & 1) == 0)
      {
        v86 = objc_loadWeakRetained(&to);
        v87 = [v86 interface];
        v88 = [v87 currentNetwork];
        v85 = [v88 carPlayType] == 2;
      }

      v89 = objc_loadWeakRetained(&to);
      v90 = [v89 networks];
      v91 = [v90 mutableCopy];

      [v91 removeObject:v27];
      [v27 setKnown:0];
      v92 = objc_loadWeakRetained(&to);
      [v92 setNetworks:v91];

      v93 = dispatch_get_global_queue(21, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __112__WFNetworkListController_networkListViewController_showSettingsForNetwork_context_scrollToCellType_controller___block_invoke_337;
      block[3] = &unk_279EBD6C0;
      objc_copyWeak(&v118, &to);
      v116 = *(a1 + 32);
      v11 = v27;
      v117 = v11;
      dispatch_async(v93, block);

      if (v114)
      {
        if (v85)
        {
          v94 = WFLogForCategory(0);
          v95 = OSLogForWFLogLevel(3uLL);
          if (WFCurrentLogLevel() >= 3 && v94 && os_log_type_enabled(v94, v95))
          {
            *buf = 0;
            _os_log_impl(&dword_273ECD000, v94, v95, "Network is CarPlayUserConfigured- not disassociating, changing current network type == CarPlayOnly", buf, 2u);
          }

          v96 = objc_loadWeakRetained(&to);
          v97 = [v96 interface];
          [v97 disassociateFromCarPlayUserConfiguredNetwork];
        }

        else
        {
          v96 = objc_loadWeakRetained(&to);
          v97 = [v96 interface];
          [v97 disassociateFromCurrentNetwork];
        }
      }

      else
      {
        if (!v11)
        {
          goto LABEL_69;
        }

        v98 = WFLogForCategory(0);
        v99 = OSLogForWFLogLevel(3uLL);
        if (WFCurrentLogLevel() >= 3 && v98 && os_log_type_enabled(v98, v99))
        {
          *buf = 136315394;
          v121 = "[WFNetworkListController networkListViewController:showSettingsForNetwork:context:scrollToCellType:controller:]_block_invoke";
          v122 = 2112;
          v123 = v11;
          _os_log_impl(&dword_273ECD000, v98, v99, "%s: updating view for %@", buf, 0x16u);
        }

        [v11 setHotspot20Name:0];
        [v11 setHotspotPluginLabel:0];
        v96 = objc_loadWeakRetained(&to);
        v97 = [MEMORY[0x277CBEB98] setWithObject:v11];
        [v96 _updateViewsForNetworks:v97];
      }

LABEL_69:
      v100 = objc_loadWeakRetained(&to);
      if ([v100 isHS20Supported])
      {
        v101 = [v11 isHotspot20];

        if (!v101)
        {
          goto LABEL_77;
        }

        v102 = WFLogForCategory(0);
        v103 = OSLogForWFLogLevel(3uLL);
        if (WFCurrentLogLevel() >= 3 && v102 && os_log_type_enabled(v102, v103))
        {
          *buf = 136315138;
          v121 = "[WFNetworkListController networkListViewController:showSettingsForNetwork:context:scrollToCellType:controller:]_block_invoke";
          _os_log_impl(&dword_273ECD000, v102, v103, "%s: network is hotspot 20", buf, 0xCu);
        }

        v100 = objc_loadWeakRetained(&to);
        v104 = [v100 gasController];
        [v104 removeProfileForNetwork:v11];
      }

LABEL_77:
      if (*(a1 + 56) == 2)
      {
        v105 = objc_loadWeakRetained(&to);
        v106 = [v105 viewController];
        v107 = [v106 conformsToProtocol:&unk_288336D30];

        if (v107)
        {
          v108 = WFLogForCategory(0);
          v109 = OSLogForWFLogLevel(3uLL);
          if (WFCurrentLogLevel() >= 3 && v108 && os_log_type_enabled(v108, v109))
          {
            *buf = 136315138;
            v121 = "[WFNetworkListController networkListViewController:showSettingsForNetwork:context:scrollToCellType:controller:]_block_invoke";
            _os_log_impl(&dword_273ECD000, v108, v109, "%s: refreshing view controller after forget network", buf, 0xCu);
          }

          v110 = objc_loadWeakRetained(&to);
          v111 = [v110 viewController];

          [v111 refreshKnownNetworksUpdateTableView:1];
        }
      }

      objc_destroyWeak(&v118);
      goto LABEL_85;
    }

    v53 = [v27 ssid];
    v54 = objc_loadWeakRetained(&to);
    v55 = [v54 interface];
    v56 = [v55 currentNetwork];
    v57 = [v56 ssid];
    v114 = [v53 isEqualToString:v57];
    if (v114)
    {
      v58 = objc_loadWeakRetained(&to);
      v59 = [v58 interface];
      v60 = [v59 currentNetwork];
      v113 = [v27 isNetworkSecurityModeMatch:{objc_msgSend(v60, "securityModeExt")}];

      if (!v113)
      {
        v114 = 0;
        goto LABEL_51;
      }

      v53 = WFLogForCategory(0);
      v61 = OSLogForWFLogLevel(3uLL);
      if (WFCurrentLogLevel() < 3 || !v53)
      {
        goto LABEL_49;
      }

      v54 = v53;
      if (os_log_type_enabled(v54, v61))
      {
        v62 = objc_loadWeakRetained(&to);
        v63 = [v62 interface];
        v64 = [v63 currentNetwork];
        *buf = 138412546;
        v121 = v64;
        v122 = 2112;
        v123 = v27;
        _os_log_impl(&dword_273ECD000, v54, v61, "current network %@ isNotEqual to network to be forgotten %@, but ssid + security type match", buf, 0x16u);
      }

      v53 = v54;
    }

    else
    {
    }

LABEL_49:
    goto LABEL_51;
  }

  if (a2 > 4)
  {
    if (a2 != 5)
    {
      if (a2 == 6)
      {
        v18 = objc_loadWeakRetained((a1 + 48));
        v19 = [v18 portalContext];
        v11 = [v19 fullPortalURLString];

        if (v11)
        {
          v20 = [MEMORY[0x277D75128] sharedApplication];
          v21 = [MEMORY[0x277CBEBC0] URLWithString:v11];
          [v20 openURL:v21 options:MEMORY[0x277CBEC10] completionHandler:0];
        }

        goto LABEL_85;
      }

      goto LABEL_86;
    }

    v39 = objc_loadWeakRetained((a1 + 48));
    v11 = [v39 network];

    v40 = objc_loadWeakRetained(&to);
    [v40 _associateToScanRecord:v11];

LABEL_85:
    goto LABEL_86;
  }

  if (a2 != 3)
  {
    v6 = objc_loadWeakRetained((a1 + 48));
    v7 = [v6 recommendations];
    if (v7)
    {
      v8 = MEMORY[0x277CBEB98];
      v9 = objc_loadWeakRetained((a1 + 48));
      v10 = [v9 recommendations];
      v11 = [v8 setWithArray:v10];
    }

    else
    {
      v11 = 0;
    }

    v65 = objc_loadWeakRetained((a1 + 48));
    v66 = [v65 network];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v68 = objc_loadWeakRetained((a1 + 48));
      v69 = [v68 network];
      v70 = [v69 securityMode];
    }

    else
    {
      v70 = 0;
    }

    v71 = +[WFMetricsManager sharedManager];
    v72 = objc_loadWeakRetained((a1 + 48));
    v73 = [v72 network];
    v74 = [v73 ssid];
    v75 = [WFHealthUIEvent tapLinkEventWithIssues:v11 ssid:v74 securityType:v70];
    [v71 processEvent:v75];

    v76 = MEMORY[0x277CCA8D8];
    v77 = objc_loadWeakRetained(&to);
    v78 = [v76 bundleForClass:objc_opt_class()];
    v79 = [v78 localizedStringForKey:@"kWFLocSettingsRecommendationLinkURL" value:&stru_2882E4AD8 table:@"WiFiKitLocalizableStrings"];

    if (v79)
    {
      v80 = [MEMORY[0x277D75128] sharedApplication];
      v81 = [MEMORY[0x277CBEBC0] URLWithString:v79];
      [v80 openURL:v81 options:MEMORY[0x277CBEC10] completionHandler:0];
    }

    v82 = objc_loadWeakRetained(&to);
    v83 = objc_loadWeakRetained((a1 + 48));
    [v82 _dismissDetailsViewControllerWithContext:v83];

    goto LABEL_85;
  }

  v32 = +[WFMetricsManager sharedManager];
  v33 = [WFUserEvent eventWithType:6];
  [v32 processEvent:v33];

  v34 = objc_loadWeakRetained(&to);
  v35 = [v34 interface];
  v36 = [v35 ipMonitor];
  v37 = [v36 renewLease];

  if ((v37 & 1) == 0)
  {
    v11 = WFLogForCategory(0);
    v38 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v11 && os_log_type_enabled(v11, v38))
    {
      *buf = 0;
      _os_log_impl(&dword_273ECD000, v11, v38, "Renew lease failed", buf, 2u);
    }

    goto LABEL_85;
  }

LABEL_86:
  objc_destroyWeak(&to);
  v112 = *MEMORY[0x277D85DE8];
}

void __112__WFNetworkListController_networkListViewController_showSettingsForNetwork_context_scrollToCellType_controller___block_invoke_337(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained wifiClient];
  v4 = [v3 cInterface];
  v5 = *(a1 + 32);
  v19 = 0;
  v6 = [v4 removeKnownNetworkProfile:v5 reason:2 error:&v19];
  v7 = v19;

  v8 = WFLogForCategory(0);
  v9 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel())
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = !v10;
  if (v6)
  {
    if (v11 && os_log_type_enabled(v8, v9))
    {
      v12 = *(a1 + 40);
      *buf = 138412290;
      v21 = v12;
      v13 = "Removed network='%@'";
      v14 = v8;
      v15 = v9;
      v16 = 12;
LABEL_14:
      _os_log_impl(&dword_273ECD000, v14, v15, v13, buf, v16);
    }
  }

  else if (v11 && os_log_type_enabled(v8, v9))
  {
    v17 = *(a1 + 40);
    *buf = 138412546;
    v21 = v17;
    v22 = 2112;
    v23 = v7;
    v13 = "Failed to remove network='%@' error='%@'";
    v14 = v8;
    v15 = v9;
    v16 = 22;
    goto LABEL_14;
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __112__WFNetworkListController_networkListViewController_showSettingsForNetwork_context_scrollToCellType_controller___block_invoke_388(id *a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained(a1 + 5);
  v5 = [WeakRetained privateAddressMode];

  if (v5 != a2)
  {
    objc_copyWeak(&to, a1 + 6);
    if (_os_feature_enabled_impl())
    {
      if ((a2 - 1) >= 3)
      {
        v6 = 0;
      }

      else
      {
        v6 = a2;
      }

      v7 = objc_loadWeakRetained(a1 + 5);
      v8 = [v7 profile];

      v9 = objc_loadWeakRetained(a1 + 5);
      v10 = [v9 network];
      v11 = [v10 scanResult];

      v12 = objc_loadWeakRetained(&to);
      v13 = [v12 wifiClient];
      v14 = [v13 cInterface];
      v15 = v8;
      if (!v8)
      {
        v15 = [v11 networkProfile];
      }

      [v14 setPrivateMACAddressMode:v6 networkProfile:v15 error:0];
      if (!v8)
      {
      }
    }

    else
    {
      v16 = objc_loadWeakRetained(a1 + 5);
      v8 = [v16 network];

      v17 = [v8 randomMACAddress];
      if (v17)
      {
        v40 = [v8 randomMACAddress];
      }

      else
      {
        v18 = objc_loadWeakRetained(a1 + 5);
        v19 = [v18 profile];
        v40 = [v19 randomMACAddress];
      }

      if (v5 == 1)
      {
        v20 = WFLogForCategory(0);
        v21 = OSLogForWFLogLevel(3uLL);
        if (WFCurrentLogLevel() >= 3 && v20 && os_log_type_enabled(v20, v21))
        {
          *buf = 0;
          _os_log_impl(&dword_273ECD000, v20, v21, "Generating new private mac when switched out of off mode", buf, 2u);
        }

        v22 = objc_loadWeakRetained(&to);
        v23 = [v22 wifiClient];
        v24 = [v8 ssid];
        v25 = [v23 newRandomMACAddressForSSID:v24];

        v40 = v25;
      }

      v26 = objc_loadWeakRetained(&to);
      v27 = [v26 wifiClient];
      v28 = [v8 ssid];
      [v27 setRandomAddressModeForNetwork:v28 mode:a2 randomMAC:v40];

      v29 = objc_loadWeakRetained(a1 + 5);
      if ([v29 isCurrent])
      {
      }

      else
      {
        v30 = objc_loadWeakRetained(&to);
        v31 = [v30 interface];
        v32 = [v31 currentNetwork];
        v33 = [v32 ssid];
        v34 = [a1[4] ssid];
        v35 = [v33 isEqualToString:v34];

        if (!v35)
        {
          v11 = v40;
          goto LABEL_12;
        }
      }

      v11 = v40;
      if (a2 == 3 && v5 == 2 || a2 == 2 && v5 == 3)
      {
        v12 = WFLogForCategory(0);
        v36 = OSLogForWFLogLevel(3uLL);
        if (WFCurrentLogLevel() >= 3 && v12 && os_log_type_enabled(v12, v36))
        {
          *v42 = 0;
          _os_log_impl(&dword_273ECD000, v12, v36, "Do not disassociate for current network when transit between static and rotating", v42, 2u);
        }
      }

      else
      {
        v37 = WFLogForCategory(0);
        v38 = OSLogForWFLogLevel(3uLL);
        if (WFCurrentLogLevel() >= 3 && v37 && os_log_type_enabled(v37, v38))
        {
          *v41 = 0;
          _os_log_impl(&dword_273ECD000, v37, v38, "Disassociate for current network when private addres mode changes", v41, 2u);
        }

        v12 = objc_loadWeakRetained(&to);
        v39 = [v12 interface];
        [v39 disassociateFromCurrentNetworkWithReason:33];

        v11 = v40;
      }
    }

LABEL_12:
    objc_destroyWeak(&to);
  }
}

void __112__WFNetworkListController_networkListViewController_showSettingsForNetwork_context_scrollToCellType_controller___block_invoke_389(id *a1, int a2)
{
  v27 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(a1 + 5);
  v5 = [WeakRetained network];

  v6 = a1[4];
  v7 = v6;
  if (v6)
  {
    [v6 setAutoJoinDisabled:a2 ^ 1u];
    v8 = objc_loadWeakRetained(a1 + 6);
    v9 = [v8 wifiClient];
    v10 = [v9 cInterface];
    v22 = 0;
    v11 = [v10 updateKnownNetworkProfile:v7 properties:0 error:&v22];
    v12 = v22;

    v13 = WFLogForCategory(0);
    if (v11)
    {
      v14 = OSLogForWFLogLevel(3uLL);
      if (WFCurrentLogLevel() < 3 || !v13)
      {
        goto LABEL_16;
      }

      v15 = v13;
      if (os_log_type_enabled(v15, v14))
      {
        v16 = [v5 ssid];
        *buf = 138412546;
        v24 = v16;
        v25 = 1024;
        LODWORD(v26) = a2;
        _os_log_impl(&dword_273ECD000, v15, v14, "Auto join changed for '%@' set to '%d'", buf, 0x12u);
      }
    }

    else
    {
      v18 = OSLogForWFLogLevel(1uLL);
      if (!WFCurrentLogLevel() || !v13)
      {
        goto LABEL_16;
      }

      v19 = v13;
      if (os_log_type_enabled(v19, v18))
      {
        v20 = [v5 ssid];
        *buf = 138412546;
        v24 = v20;
        v25 = 2112;
        v26 = v12;
        _os_log_impl(&dword_273ECD000, v19, v18, "failed saving auto join state for '%@' error='%@'", buf, 0x16u);
      }
    }

LABEL_16:
    goto LABEL_17;
  }

  v12 = WFLogForCategory(0);
  v17 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v12 && os_log_type_enabled(v12, v17))
  {
    *buf = 136315394;
    v24 = "[WFNetworkListController networkListViewController:showSettingsForNetwork:context:scrollToCellType:controller:]_block_invoke";
    v25 = 2112;
    v26 = v5;
    _os_log_impl(&dword_273ECD000, v12, v17, "%s: nil CWFNetworkProfile for network '%@'", buf, 0x16u);
  }

LABEL_17:

  v21 = *MEMORY[0x277D85DE8];
}

void __112__WFNetworkListController_networkListViewController_showSettingsForNetwork_context_scrollToCellType_controller___block_invoke_390(id *a1, int a2)
{
  v30[1] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(a1 + 5);
  v5 = [WeakRetained network];

  v6 = a1[4];
  if (v6)
  {
    if (a2)
    {
      v7 = MEMORY[0x277CBEC28];
    }

    else
    {
      v7 = MEMORY[0x277CBEC38];
    }

    v29 = *MEMORY[0x277D29780];
    v30[0] = v7;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:&v29 count:1];
    [v6 setCaptiveProfile:v8];
    v9 = objc_loadWeakRetained(a1 + 6);
    v10 = [v9 wifiClient];
    v11 = [v10 cInterface];
    v26 = 0;
    v12 = [v11 updateKnownNetworkProfile:v6 properties:0 error:&v26];
    v13 = v26;

    v14 = WFLogForCategory(0);
    if (v12)
    {
      v15 = OSLogForWFLogLevel(3uLL);
      if (WFCurrentLogLevel() < 3 || !v14)
      {
        goto LABEL_20;
      }

      v16 = v14;
      if (!os_log_type_enabled(v16, v15))
      {
LABEL_19:

LABEL_20:
        goto LABEL_21;
      }

      v17 = [v5 ssid];
      *buf = 67109378;
      *v28 = a2;
      *&v28[4] = 2112;
      *&v28[6] = v17;
      v18 = "Set auto login='%d' for '%@'";
      v19 = v16;
      v20 = v15;
      v21 = 18;
    }

    else
    {
      v23 = OSLogForWFLogLevel(1uLL);
      if (!WFCurrentLogLevel() || !v14)
      {
        goto LABEL_20;
      }

      v24 = v14;
      if (!os_log_type_enabled(v24, v23))
      {
        goto LABEL_19;
      }

      v17 = [v5 ssid];
      *buf = 67109634;
      *v28 = a2;
      *&v28[4] = 2112;
      *&v28[6] = v17;
      *&v28[14] = 2112;
      *&v28[16] = v13;
      v18 = "failed setting auto login='%d' for '%@' error='%@'";
      v19 = v24;
      v20 = v23;
      v21 = 28;
    }

    _os_log_impl(&dword_273ECD000, v19, v20, v18, buf, v21);

    goto LABEL_19;
  }

  v8 = WFLogForCategory(0);
  v22 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v8 && os_log_type_enabled(v8, v22))
  {
    *buf = 136315394;
    *v28 = "[WFNetworkListController networkListViewController:showSettingsForNetwork:context:scrollToCellType:controller:]_block_invoke";
    *&v28[8] = 2112;
    *&v28[10] = v5;
    _os_log_impl(&dword_273ECD000, v8, v22, "%s: nil CWFNetworkProfile for network '%@'", buf, 0x16u);
  }

LABEL_21:

  v25 = *MEMORY[0x277D85DE8];
}

void __112__WFNetworkListController_networkListViewController_showSettingsForNetwork_context_scrollToCellType_controller___block_invoke_391(id *a1, int a2)
{
  v28 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(a1 + 5);
  v5 = [WeakRetained network];

  v6 = a1[4];
  v7 = v6;
  if (v6)
  {
    if (a2)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }

    [v6 setLowDataMode:v8];
    v9 = objc_loadWeakRetained(a1 + 6);
    v10 = [v9 wifiClient];
    v11 = [v10 cInterface];
    v23 = 0;
    v12 = [v11 updateKnownNetworkProfile:v7 properties:0 error:&v23];
    v13 = v23;

    v14 = WFLogForCategory(0);
    if (v12)
    {
      v15 = OSLogForWFLogLevel(3uLL);
      if (WFCurrentLogLevel() < 3 || !v14)
      {
        goto LABEL_19;
      }

      v16 = v14;
      if (os_log_type_enabled(v16, v15))
      {
        v17 = [v5 ssid];
        *buf = 138412546;
        v25 = v17;
        v26 = 1024;
        LODWORD(v27) = a2;
        _os_log_impl(&dword_273ECD000, v16, v15, "Low data mode changed for '%@' set to '%d'", buf, 0x12u);
      }
    }

    else
    {
      v19 = OSLogForWFLogLevel(1uLL);
      if (!WFCurrentLogLevel() || !v14)
      {
        goto LABEL_19;
      }

      v20 = v14;
      if (os_log_type_enabled(v20, v19))
      {
        v21 = [v5 ssid];
        *buf = 138412546;
        v25 = v21;
        v26 = 2112;
        v27 = v13;
        _os_log_impl(&dword_273ECD000, v20, v19, "failed saving low data mode state for '%@' error='%@'", buf, 0x16u);
      }
    }

LABEL_19:
    goto LABEL_20;
  }

  v13 = WFLogForCategory(0);
  v18 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v13 && os_log_type_enabled(v13, v18))
  {
    *buf = 136315394;
    v25 = "[WFNetworkListController networkListViewController:showSettingsForNetwork:context:scrollToCellType:controller:]_block_invoke";
    v26 = 2112;
    v27 = v5;
    _os_log_impl(&dword_273ECD000, v13, v18, "%s: nil CWFNetworkProfile for network '%@'", buf, 0x16u);
  }

LABEL_20:

  v22 = *MEMORY[0x277D85DE8];
}

void __112__WFNetworkListController_networkListViewController_showSettingsForNetwork_context_scrollToCellType_controller___block_invoke_392(id *a1, uint64_t a2)
{
  v30 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(a1 + 5);
  v5 = [WeakRetained network];

  v6 = WFLogForCategory(0);
  v7 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v6 && os_log_type_enabled(v6, v7))
  {
    *buf = 67109120;
    *v29 = a2;
    _os_log_impl(&dword_273ECD000, v6, v7, "Setting privacy proxy %d", buf, 8u);
  }

  v8 = a1[4];
  v9 = v8;
  if (v8)
  {
    [v8 setPrivacyProxyEnabled:a2];
    v10 = objc_loadWeakRetained(a1 + 6);
    v11 = [v10 wifiClient];
    v12 = [v11 cInterface];
    v27 = 0;
    v13 = [v12 updateKnownNetworkProfile:v9 properties:0 error:&v27];
    v14 = v27;

    v15 = WFLogForCategory(0);
    if (v13)
    {
      v16 = OSLogForWFLogLevel(3uLL);
      if (WFCurrentLogLevel() >= 3 && v15)
      {
        v17 = v15;
        if (os_log_type_enabled(v17, v16))
        {
          v18 = [v5 ssid];
          *buf = 138412546;
          *v29 = v18;
          *&v29[8] = 1024;
          *&v29[10] = a2;
          _os_log_impl(&dword_273ECD000, v17, v16, "Privacy proxy changed for '%@' set to '%d'", buf, 0x12u);
        }
      }
    }

    else
    {
      v20 = OSLogForWFLogLevel(1uLL);
      if (WFCurrentLogLevel() && v15 && os_log_type_enabled(v15, v20))
      {
        *buf = 67240706;
        *v29 = a2;
        *&v29[4] = 2112;
        *&v29[6] = v5;
        *&v29[14] = 2112;
        *&v29[16] = v14;
        _os_log_impl(&dword_273ECD000, v15, v20, "Failed to set privacy proxy to=%{public}d for network='%@' error='%@'", buf, 0x1Cu);
      }
    }
  }

  else
  {
    v14 = WFLogForCategory(0);
    v19 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v14 && os_log_type_enabled(v14, v19))
    {
      *buf = 136315394;
      *v29 = "[WFNetworkListController networkListViewController:showSettingsForNetwork:context:scrollToCellType:controller:]_block_invoke";
      *&v29[8] = 2112;
      *&v29[10] = v5;
      _os_log_impl(&dword_273ECD000, v14, v19, "%s: nil CWFNetworkProfile for network '%@'", buf, 0x16u);
    }
  }

  v21 = MEMORY[0x277D2CA68];
  v22 = [v5 ssid];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __112__WFNetworkListController_networkListViewController_showSettingsForNetwork_context_scrollToCellType_controller___block_invoke_394;
  v25[3] = &unk_279EBD760;
  v26 = v5;
  v23 = v5;
  [v21 reportWiFiNetworkStatus:a2 networkName:v22 queue:MEMORY[0x277D85CD0] completionHandler:v25];

  v24 = *MEMORY[0x277D85DE8];
}

void __112__WFNetworkListController_networkListViewController_showSettingsForNetwork_context_scrollToCellType_controller___block_invoke_394(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = WFLogForCategory(0);
  v5 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v4)
  {
    v6 = v4;
    if (os_log_type_enabled(v6, v5))
    {
      v7 = [*(a1 + 32) ssid];
      v9 = 136315650;
      v10 = "[WFNetworkListController networkListViewController:showSettingsForNetwork:context:scrollToCellType:controller:]_block_invoke";
      v11 = 2112;
      v12 = v7;
      v13 = 2112;
      v14 = v3;
      _os_log_impl(&dword_273ECD000, v6, v5, "%s: reporting privacy proxy status for '%@' - error %@", &v9, 0x20u);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __112__WFNetworkListController_networkListViewController_showSettingsForNetwork_context_scrollToCellType_controller___block_invoke_396(id *a1, void *a2, double a3)
{
  v35[2] = *MEMORY[0x277D85DE8];
  v5 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 5);
  v7 = [WeakRetained network];

  v8 = a1[4];
  if (v8)
  {
    v9 = *MEMORY[0x277D29868];
    v34[0] = *MEMORY[0x277D29860];
    v34[1] = v9;
    v35[0] = v5;
    v10 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
    v35[1] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:2];

    v12 = objc_loadWeakRetained(a1 + 6);
    v13 = [v12 wifiClient];
    v14 = [v13 cInterface];
    v29 = 0;
    v15 = [v14 updateKnownNetworkProfile:v8 OSSpecificAttributes:v11 error:&v29];
    v16 = v29;

    v17 = WFLogForCategory(0);
    if (v15)
    {
      v18 = OSLogForWFLogLevel(3uLL);
      if (WFCurrentLogLevel() < 3 || !v17)
      {
        goto LABEL_17;
      }

      v19 = v17;
      if (!os_log_type_enabled(v19, v18))
      {
LABEL_16:

LABEL_17:
        goto LABEL_18;
      }

      v20 = [v7 ssid];
      *buf = 138412290;
      v31 = v20;
      v21 = "Set network responsiveness for '%@'";
      v22 = v19;
      v23 = v18;
      v24 = 12;
    }

    else
    {
      v26 = OSLogForWFLogLevel(1uLL);
      if (!WFCurrentLogLevel() || !v17)
      {
        goto LABEL_17;
      }

      v27 = v17;
      if (!os_log_type_enabled(v27, v26))
      {
        goto LABEL_16;
      }

      v20 = [v7 ssid];
      *buf = 138412546;
      v31 = v20;
      v32 = 2112;
      v33 = v16;
      v21 = "failed setting network responsiveness for '%@' error='%@'";
      v22 = v27;
      v23 = v26;
      v24 = 22;
    }

    _os_log_impl(&dword_273ECD000, v22, v23, v21, buf, v24);

    goto LABEL_16;
  }

  v11 = WFLogForCategory(0);
  v25 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v11 && os_log_type_enabled(v11, v25))
  {
    *buf = 136315394;
    v31 = "[WFNetworkListController networkListViewController:showSettingsForNetwork:context:scrollToCellType:controller:]_block_invoke";
    v32 = 2112;
    v33 = v7;
    _os_log_impl(&dword_273ECD000, v11, v25, "%s: nil CWFNetworkProfile for network '%@'", buf, 0x16u);
  }

LABEL_18:

  v28 = *MEMORY[0x277D85DE8];
}

void __112__WFNetworkListController_networkListViewController_showSettingsForNetwork_context_scrollToCellType_controller___block_invoke_398(id *a1, void *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a1[4];
  if (!v4)
  {
    v5 = WFLogForCategory(0);
    v6 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v5)
    {
      v7 = v5;
      if (os_log_type_enabled(v7, v6))
      {
        WeakRetained = objc_loadWeakRetained(a1 + 6);
        v9 = [WeakRetained network];
        v10 = [v9 ssid];
        *buf = 138412290;
        v26 = v10;
        _os_log_impl(&dword_273ECD000, v7, v6, "Trying to set wifi mode for empty profile for network: %@", buf, 0xCu);
      }
    }
  }

  [v4 setDisable6EMode:a2];
  v11 = objc_loadWeakRetained(a1 + 7);
  v12 = [v11 wifiClient];
  v13 = [v12 cInterface];
  v14 = [MEMORY[0x277CBEB98] setWithObject:&unk_288304888];
  v24 = 0;
  v15 = [v13 updateKnownNetworkProfile:v4 properties:v14 error:&v24];
  v16 = v24;

  v17 = WFLogForCategory(0);
  if (v15)
  {
    v18 = OSLogForWFLogLevel(3uLL);
    if (WFCurrentLogLevel() >= 3 && v17)
    {
      v19 = v17;
      if (os_log_type_enabled(v19, v18))
      {
        v20 = [a1[5] ssid];
        *buf = 138412546;
        v26 = v20;
        v27 = 2048;
        v28 = a2;
        _os_log_impl(&dword_273ECD000, v19, v18, "disable 6e mode changed for '%@' set to '%ld'", buf, 0x16u);
      }
    }
  }

  else
  {
    v21 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v17 && os_log_type_enabled(v17, v21))
    {
      v22 = a1[5];
      *buf = 134218498;
      v26 = a2;
      v27 = 2112;
      v28 = v22;
      v29 = 2112;
      v30 = v16;
      _os_log_impl(&dword_273ECD000, v17, v21, "Failed to set disable 6e mode to=%ld for network='%@' error='%@'", buf, 0x20u);
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (BOOL)networkListViewControllerWAPIEnabled:(id)a3
{
  v3 = [(WFNetworkListController *)self wifiClient];
  v4 = [v3 isWAPIEnabled];

  return v4;
}

- (BOOL)networkListViewControllerNetworkRestrictionActive:(id)a3
{
  v3 = [(WFNetworkListController *)self wifiClient];
  v4 = [v3 isNetworkRestrictionActive];

  return v4;
}

- (BOOL)networkListViewControllerPowerModificationDisabled:(id)a3
{
  v3 = [(WFNetworkListController *)self wifiClient];
  v4 = [v3 isPowerModificationDisabled];

  return v4;
}

- (int64_t)networkListViewControllerAutoInstantHotspotOption:(id)a3
{
  v3 = [(WFNetworkListController *)self wifiClient];
  v4 = [v3 autoInstantHotspotJoinOption];

  return v4;
}

- (void)networkListViewController:(id)a3 setAutoInstantOption:(int64_t)a4
{
  v5 = [(WFNetworkListController *)self wifiClient];
  [v5 setAutoInstantHotspotJoinOption:a4];
}

- (BOOL)networkListViewControllerIsManagedAppleID:(id)a3
{
  v3 = [(WFNetworkListController *)self wifiClient];
  v4 = [v3 isManagedAppleID];

  return v4;
}

- (int64_t)airportSettingsViewControllerAskToJoinMode:(id)a3
{
  v4 = [(WFNetworkListController *)self wifiClient];
  v5 = [v4 isNetworkRestrictionActive];

  if (v5)
  {
    return -1;
  }

  v7 = [(WFNetworkListController *)self wifiClient];
  v8 = [v7 askToJoinMode];

  return v8;
}

- (void)airportSettingsViewController:(id)a3 setAskToJoinMode:(int64_t)a4
{
  v6 = +[WFMetricsManager sharedManager];
  v7 = [WFUserEvent eventWithType:2 stateEnum:a4];
  [v6 processEvent:v7];

  v8 = [(WFNetworkListController *)self wifiClient];
  [v8 setAskToJoinMode:a4];
}

- (BOOL)airportSettingsViewControllerShouldShowDiagnosticsMode:(id)a3
{
  v3 = [(WFNetworkListController *)self wifiClient];
  v4 = [v3 isDiagnosticsModeEnabled];

  return v4;
}

- (BOOL)airportSettingsViewControllerShouldShowNANUI:(id)a3
{
  v3 = [(WFNetworkListController *)self wifiClient];
  if ([v3 isNANUIEnabled])
  {
    v4 = MGGetBoolAnswer();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)airportSettingsViewControllerShouldShowKnownNetworks:(id)a3
{
  v3 = [(WFNetworkListController *)self wifiClient];
  v4 = [v3 isKnownNetworkUIEnabled];

  return v4;
}

void __88__WFNetworkListController_airportSettingsViewControllerDidTapDiagnosticsMode_showNANUI___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _saveLogsWithComment:v3 diagnosticsViewController:v4];
}

- (BOOL)airportSettingsViewControllerCurrentNetworkConnectionIsProblematic:(id)a3
{
  v4 = [(WFNetworkListController *)self healthRecommendations];
  v5 = [MEMORY[0x277D7B9C0] issueWithType:1];
  if ([v4 containsObject:v5])
  {
    v6 = 0;
  }

  else
  {
    v7 = [(WFNetworkListController *)self healthRecommendations];
    v8 = [MEMORY[0x277D7B9C0] issueWithType:0x8000];
    v9 = [v7 containsObject:v8];

    v6 = v9 ^ 1;
  }

  v10 = [(WFNetworkListController *)self interface];
  v11 = [v10 currentNetwork];
  LOBYTE(v12) = 0;
  if (v11 && (v6 & 1) == 0)
  {
    v13 = [(WFNetworkListController *)self interface];
    v14 = [v13 currentNetwork];
    if ([v14 supportsWiFiHealth])
    {
      v15 = [(WFNetworkListController *)self wifiClient];
      v12 = [v15 isWiFiHealthUIDisabled] ^ 1;
    }

    else
    {
      LOBYTE(v12) = 0;
    }
  }

  return v12;
}

- (void)airportSettingsViewControllerDidTapDataUsage:(id)a3
{
  v4 = WFLogForCategory(0);
  v5 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v4 && os_log_type_enabled(v4, v5))
  {
    *v6 = 0;
    _os_log_impl(&dword_273ECD000, v4, v5, "User tapped data usage cell", v6, 2u);
  }

  [(WFNetworkListController *)self pushDataUsageViewController];
}

- (id)editableKnownNetworks
{
  v2 = [(WFNetworkListController *)self knownNetworksManager];
  v3 = [v2 allEditableNetworkProfiles];

  return v3;
}

- (id)managedKnownNetworks
{
  v2 = [(WFNetworkListController *)self knownNetworksManager];
  v3 = [v2 allNonEditableNetworkProfiles];

  return v3;
}

- (BOOL)removeKnownNetworks:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v26;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v26 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v25 + 1) + 8 * v8) ssid];
        v10 = [(WFNetworkListController *)self interface];
        v11 = [v10 currentNetwork];
        v12 = [v11 ssid];
        v13 = [v9 isEqualToString:v12];

        if (v13)
        {
          v14 = 1;
          goto LABEL_11;
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_11:

  v15 = [(WFNetworkListController *)self knownNetworksManager];
  v16 = [v15 removeNetworks:v4];

  v17 = +[WFMetricsManager sharedManager];
  v18 = +[WFUserEvent eventWithType:stateEnum:](WFUserEvent, "eventWithType:stateEnum:", 11, [v4 count]);
  [v17 processEvent:v18];

  if (v14)
  {
    v19 = [(WFNetworkListController *)self interface];
    [v19 disassociateFromCurrentNetwork];

    v20 = WFLogForCategory(0);
    v21 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v20 && os_log_type_enabled(v20, v21))
    {
      *v24 = 0;
      _os_log_impl(&dword_273ECD000, v20, v21, "Disconnect from current network because user deleted it from known networks list", v24, 2u);
    }
  }

  v22 = *MEMORY[0x277D85DE8];
  return v16;
}

- (id)passwordToDisplayForSSID:(id)a3
{
  v4 = a3;
  v5 = [WFKnownNetworksManager alloc];
  v6 = [(WFNetworkListController *)self wifiClient];
  v7 = [v6 cInterface];
  v8 = [(WFKnownNetworksManager *)v5 initWithInterface:v7];

  v9 = [(WFKnownNetworksManager *)v8 passwordForNetworksWithSSID:v4];

  return v9;
}

- (void)airportSettingsViewControllerDidStartEditingKnownNetworks:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = WFLogForCategory(0);
  v6 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v5 && os_log_type_enabled(v5, v6))
  {
    v10 = 136315394;
    v11 = "[WFNetworkListController airportSettingsViewControllerDidStartEditingKnownNetworks:]";
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&dword_273ECD000, v5, v6, "%s airportVC='%@'", &v10, 0x16u);
  }

  [(WFNetworkListController *)self _pauseScanning];
  v7 = +[WFMetricsManager sharedManager];
  v8 = [WFUserEvent eventWithType:10];
  [v7 processEvent:v8];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)airportSettingsViewControllerDidFinishEditingKnownNetworks:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = WFLogForCategory(0);
  v6 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v5 && os_log_type_enabled(v5, v6))
  {
    v15 = 136315394;
    v16 = "[WFNetworkListController airportSettingsViewControllerDidFinishEditingKnownNetworks:]";
    v17 = 2112;
    v18 = v4;
    _os_log_impl(&dword_273ECD000, v5, v6, "%s airportVC='%@'", &v15, 0x16u);
  }

  v7 = [(WFNetworkListController *)self interface];
  v8 = [v7 currentNetwork];

  v9 = [(WFNetworkListController *)self viewController];
  v10 = [v9 currentNetwork];
  v11 = [v10 isEqual:v8];

  if ((v11 & 1) == 0)
  {
    v12 = WFLogForCategory(0);
    v13 = OSLogForWFLogLevel(3uLL);
    if (WFCurrentLogLevel() >= 3 && v12 && os_log_type_enabled(v12, v13))
    {
      v15 = 136315138;
      v16 = "[WFNetworkListController airportSettingsViewControllerDidFinishEditingKnownNetworks:]";
      _os_log_impl(&dword_273ECD000, v12, v13, "%s: refresh current network cell when exiting edit PNL", &v15, 0xCu);
    }

    [(WFNetworkListController *)self _updateViewControllerConnectedNetwork:v8];
  }

  [(WFNetworkListController *)self _resumeScanning];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)pushDataUsageViewController
{
  v5 = objc_alloc_init(MEMORY[0x277D4D8B8]);
  v3 = [v5 specifier];
  [v3 setProperty:@"com.apple.wifi" forKey:*MEMORY[0x277D3FFB8]];

  v4 = [(WFNetworkListController *)self viewController];
  [v4 wf_pushViewController:v5 animated:1];
}

- (void)_saveLogsWithComment:(id)a3 diagnosticsViewController:(id)a4
{
  v6 = a3;
  v7 = a4;
  [v7 setSaving:1];
  v8 = [[WFSaveLogsOperation alloc] initWithComments:v6];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __74__WFNetworkListController__saveLogsWithComment_diagnosticsViewController___block_invoke;
  v23[3] = &unk_279EBCFE0;
  v9 = v7;
  v24 = v9;
  [(WFSaveLogsOperation *)v8 setCompletionBlock:v23];
  objc_initWeak(&location, v8);
  objc_initWeak(&from, self);
  v10 = MEMORY[0x277CCA8C8];
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __74__WFNetworkListController__saveLogsWithComment_diagnosticsViewController___block_invoke_3;
  v17 = &unk_279EBD828;
  objc_copyWeak(&v19, &location);
  v18 = self;
  objc_copyWeak(&v20, &from);
  v11 = [v10 blockOperationWithBlock:&v14];
  [v11 addDependency:{v8, v14, v15, v16, v17, v18}];
  v12 = [MEMORY[0x277CCABD8] mainQueue];
  [v12 addOperation:v11];

  v13 = [(WFNetworkListController *)self backgroundQueue];
  [v13 addOperation:v8];

  objc_destroyWeak(&v20);
  objc_destroyWeak(&v19);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

void __74__WFNetworkListController__saveLogsWithComment_diagnosticsViewController___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__WFNetworkListController__saveLogsWithComment_diagnosticsViewController___block_invoke_2;
  block[3] = &unk_279EBCFE0;
  v2 = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __74__WFNetworkListController__saveLogsWithComment_diagnosticsViewController___block_invoke_3(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 5);
  v3 = [WeakRetained error];
  v27 = v3 == 0;

  v4 = [a1[4] viewController];
  [v4 deviceCapability];
  IsChinaDevice = WFCapabilityIsChinaDevice();

  v6 = MEMORY[0x277D75110];
  v7 = a1[4];
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = v8;
  if (v3)
  {
    v10 = [v8 localizedStringForKey:@"kWFLocDiagnosticsAlertFailureTitle" value:&stru_2882E4AD8 table:@"WiFiKitLocalizableStrings"];
    v11 = a1[4];
    v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v13 = v12;
    v14 = @"kWFLocDiagnosticsAlertFailureMessage";
    v15 = @"kWFLocDiagnosticsAlertFailureMessage_CH";
  }

  else
  {
    v10 = [v8 localizedStringForKey:@"kWFLocDiagnosticsAlertSuccessTitle" value:&stru_2882E4AD8 table:@"WiFiKitLocalizableStrings"];
    v16 = a1[4];
    v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v13 = v12;
    v14 = @"kWFLocDiagnosticsAlertSuccessMessage";
    v15 = @"kWFLocDiagnosticsAlertSuccessMessage_CH";
  }

  if (IsChinaDevice)
  {
    v17 = v15;
  }

  else
  {
    v17 = v14;
  }

  v18 = [v12 localizedStringForKey:v17 value:&stru_2882E4AD8 table:@"WiFiKitLocalizableStrings"];
  v19 = [v6 alertControllerWithTitle:v10 message:v18 preferredStyle:1];

  v20 = MEMORY[0x277D750F8];
  v21 = a1[4];
  v22 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v23 = [v22 localizedStringForKey:@"kWFLocDiagnosticsAlertOkTitle" value:&stru_2882E4AD8 table:@"WiFiKitLocalizableStrings"];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __74__WFNetworkListController__saveLogsWithComment_diagnosticsViewController___block_invoke_4;
  v28[3] = &unk_279EBD800;
  objc_copyWeak(&v29, a1 + 6);
  v30 = v27;
  v24 = [v20 actionWithTitle:v23 style:0 handler:v28];

  [v19 addAction:v24];
  [v19 setPreferredAction:v24];
  v25 = objc_loadWeakRetained(a1 + 6);
  v26 = [v25 viewController];
  [v26 presentViewController:v19 animated:1 completion:0];

  objc_destroyWeak(&v29);
}

void __74__WFNetworkListController__saveLogsWithComment_diagnosticsViewController___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (*(a1 + 40) == 1)
  {
    v8 = WeakRetained;
    v3 = [WeakRetained viewController];
    v4 = [v3 navigationController];
    v5 = [v4 visibleViewController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    WeakRetained = v8;
    if (isKindOfClass)
    {
      v7 = [v8 viewController];
      [v7 wf_popViewControllerAnimated:1];

      WeakRetained = v8;
    }
  }
}

- (void)_networkDidChangeNotification:(id)a3
{
  v45 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKey:@"WFInterfaceNetworkKey"];

  v7 = [v4 userInfo];
  v8 = [v7 objectForKey:@"WFInterfacePreviousNetworkKey"];

  v9 = [v4 userInfo];

  v10 = [v9 objectForKey:@"WFInterfaceNetworkChangeReason"];
  v11 = [v10 unsignedIntegerValue];

  v12 = WFLogForCategory(0);
  v13 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v12 && os_log_type_enabled(v12, v13))
  {
    v39 = 136315906;
    *v40 = "[WFNetworkListController _networkDidChangeNotification:]";
    *&v40[8] = 2048;
    *&v40[10] = v11;
    v41 = 2112;
    v42 = v6;
    v43 = 2112;
    v44 = v8;
    _os_log_impl(&dword_273ECD000, v12, v13, "%s: reason %lu network %@ previous %@", &v39, 0x2Au);
  }

  if (v11 == 1)
  {
    v14 = WFLogForCategory(0);
    v15 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v14 && os_log_type_enabled(v14, v15))
    {
      v39 = 136315138;
      *v40 = "[WFNetworkListController _networkDidChangeNotification:]";
      _os_log_impl(&dword_273ECD000, v14, v15, "%s: network changed due to captive network detection", &v39, 0xCu);
    }
  }

  v16 = [(WFNetworkListController *)self detailsContext];

  if (v16)
  {
    v17 = [(WFNetworkListController *)self detailsContext];
    v18 = [v17 network];
    v19 = [v18 isEquivalentRecord:v6];

    v20 = [(WFNetworkListController *)self detailsContext];
    [v20 setCurrent:v19];

    v21 = WFLogForCategory(0);
    v22 = OSLogForWFLogLevel(3uLL);
    if (WFCurrentLogLevel() >= 3 && v21 && os_log_type_enabled(v21, v22))
    {
      v39 = 67109120;
      *v40 = v19;
      _os_log_impl(&dword_273ECD000, v21, v22, "updating details context currentNetwork %d", &v39, 8u);
    }

    if (v19)
    {
      v23 = [(WFNetworkListController *)self _sortedHealthRecommendations];
    }

    else
    {
      v23 = 0;
    }

    v24 = [(WFNetworkListController *)self detailsContext];
    [v24 setRecommendations:v23];

    if (v19)
    {
    }
  }

  v25 = WFLogForCategory(0);
  v26 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v25 && os_log_type_enabled(v25, v26))
  {
    v39 = 138412290;
    *v40 = v6;
    _os_log_impl(&dword_273ECD000, v25, v26, "network changed: %@", &v39, 0xCu);
  }

  v27 = WFLogForCategory(0);
  v28 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v27)
  {
    v29 = v27;
    if (os_log_type_enabled(v29, v28))
    {
      v30 = [(WFNetworkListController *)self isAssociating];
      v31 = [(WFNetworkListController *)self associationContext];
      v32 = [v31 network];
      v39 = 67109378;
      *v40 = v30;
      *&v40[4] = 2112;
      *&v40[6] = v32;
      _os_log_impl(&dword_273ECD000, v29, v28, "isAssociating: %d associating network %@", &v39, 0x12u);
    }
  }

  if ([(WFNetworkListController *)self isAssociating])
  {
    v33 = WFLogForCategory(0);
    v34 = OSLogForWFLogLevel(2uLL);
    if (WFCurrentLogLevel() >= 2 && v33 && os_log_type_enabled(v33, v34))
    {
      LOWORD(v39) = 0;
      _os_log_impl(&dword_273ECD000, v33, v34, "networkChanged callback during association with nil network", &v39, 2u);
    }

LABEL_44:

    goto LABEL_45;
  }

  [(WFNetworkListController *)self _updateViewControllerConnectedNetwork:v6];
  if ([(WFNetworkListController *)self isHS20Supported])
  {
    if (v6)
    {
      if ([v6 isHotspot20])
      {
        v35 = [v6 matchingKnownNetworkProfile];

        if (!v35)
        {
          v36 = WFLogForCategory(0);
          v37 = OSLogForWFLogLevel(3uLL);
          if (WFCurrentLogLevel() >= 3 && v36 && os_log_type_enabled(v36, v37))
          {
            v39 = 136315138;
            *v40 = "[WFNetworkListController _networkDidChangeNotification:]";
            _os_log_impl(&dword_273ECD000, v36, v37, "%s: new network is HS20, resolving profile", &v39, 0xCu);
          }

          v33 = [(WFNetworkListController *)self gasController];
          [v33 resolveProfileForNetwork:v6 handler:&__block_literal_global_457 force:1];
          goto LABEL_44;
        }
      }
    }
  }

LABEL_45:

  v38 = *MEMORY[0x277D85DE8];
}

void __57__WFNetworkListController__networkDidChangeNotification___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v6 = WFLogForCategory(5uLL);
  v7 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v6 && os_log_type_enabled(v6, v7))
  {
    v9 = 138412546;
    v10 = v4;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&dword_273ECD000, v6, v7, "resolved profile %@ error %@", &v9, 0x16u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_networkLinkQualityDidChangeNotification:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = [a3 userInfo];
  v5 = [v4 objectForKey:@"WFInterfaceLinkQualityKey"];

  if (v5)
  {
    [(WFNetworkListController *)self setLatestLinkQuality:v5];
    v6 = [(WFNetworkListController *)self viewController];
    v7 = [v6 currentNetwork];

    if (v7)
    {
      v8 = WFLogForCategory(0);
      v9 = OSLogForWFLogLevel(3uLL);
      if (WFCurrentLogLevel() >= 3 && v8)
      {
        v10 = v8;
        if (os_log_type_enabled(v10, v9))
        {
          [v5 scaledRssi];
          v12 = v11;
          [v5 scaledRssi];
          v26 = 136315650;
          v27 = "[WFNetworkListController _networkLinkQualityDidChangeNotification:]";
          v28 = 2048;
          v29 = v12;
          v30 = 2048;
          v31 = WFSignalBarsFromScaledRSSI();
          _os_log_impl(&dword_273ECD000, v10, v9, "%s: linkQuality.scaledRssi %f bars %ld", &v26, 0x20u);
        }
      }

      v13 = [(WFNetworkListController *)self viewController];
      v14 = objc_opt_respondsToSelector();

      if (v14)
      {
        [v5 scaledRssi];
        v15 = WFSignalBarsFromScaledRSSI();
        v16 = [(WFNetworkListController *)self viewController];
        [v16 setCurrentNetworkSignalBars:v15];
      }

      else
      {
        if (os_signpost_enabled(MEMORY[0x277D86220]))
        {
          LOWORD(v26) = 0;
          _os_signpost_emit_with_name_impl(&dword_273ECD000, MEMORY[0x277D86220], OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "set currentNetworkScaledRSSI", &unk_273F79F46, &v26, 2u);
        }

        [v5 scaledRssi];
        v18 = v17;
        v19 = [(WFNetworkListController *)self viewController];
        LODWORD(v20) = v18;
        [v19 setCurrentNetworkScaledRSSI:v20];

        if (os_signpost_enabled(MEMORY[0x277D86220]))
        {
          LOWORD(v26) = 0;
          _os_signpost_emit_with_name_impl(&dword_273ECD000, MEMORY[0x277D86220], OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "set currentNetworkScaledRSSI", &unk_273F79F46, &v26, 2u);
        }
      }
    }

    v21 = [(WFNetworkListController *)self viewController];
    if ([v21 currentNetworkState] == 1)
    {
      v22 = [(WFNetworkListController *)self interface];
      v23 = [v22 ipv4SelfAssigned];

      if (v23)
      {
LABEL_18:

        goto LABEL_19;
      }

      v21 = [(WFNetworkListController *)self interface];
      v24 = [v21 currentNetwork];
      [(WFNetworkListController *)self _updateCurrentNetworkIPState:v24];
    }

    goto LABEL_18;
  }

LABEL_19:

  v25 = *MEMORY[0x277D85DE8];
}

- (void)_interfaceDidBecomeAvailable:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = [(WFNetworkListController *)self wifiClient];
  v5 = [v4 interface];

  if (v5)
  {
    v6 = [(WFNetworkListController *)self interface];

    if (!v6)
    {
      [(WFNetworkListController *)self _setupWithInterface:v5];
    }

    [(WFNetworkListController *)self setInterface:v5];
    [(WFNetworkListController *)self _updateViewControllerDisabled];
    [(WFNetworkListController *)self _updatePowerState];
    if (![(WFNetworkListController *)self isSetup])
    {
      goto LABEL_7;
    }

    v7 = [(WFNetworkListController *)self viewController];
    v8 = objc_opt_respondsToSelector();

    if ((v8 & 1) == 0)
    {
      goto LABEL_7;
    }

    v9 = [(WFNetworkListController *)self viewController];
    v10 = [v9 networkListVisible];

    if ((v10 & 1) == 0)
    {
      v12 = WFLogForCategory(0);
      v13 = OSLogForWFLogLevel(3uLL);
      if (WFCurrentLogLevel() >= 3 && v12 && os_log_type_enabled(v12, v13))
      {
        v14 = 136315138;
        v15 = "[WFNetworkListController _interfaceDidBecomeAvailable:]";
        _os_log_impl(&dword_273ECD000, v12, v13, "%s: Skipping scanning for setup until wifi page is visible", &v14, 0xCu);
      }
    }

    else
    {
LABEL_7:
      [(WFNetworkListController *)self startScanning];
    }
  }

  else
  {
    [WFNetworkListController _interfaceDidBecomeAvailable:];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_clientRestartedNotification:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = WFLogForCategory(0);
  v5 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v4)
  {
    v6 = v4;
    if (os_log_type_enabled(v6, v5))
    {
      v8 = 136315394;
      v9 = "[WFNetworkListController _clientRestartedNotification:]";
      v10 = 2048;
      v11 = [(WFNetworkListController *)self powerState];
      _os_log_impl(&dword_273ECD000, v6, v5, "%s: power state %lu", &v8, 0x16u);
    }
  }

  [(WFNetworkListController *)self _updatePowerState];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)_wifiPropertyDidChanged:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v27 = a3;
  obj = [v27 userInfo];
  v4 = [obj countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v29;
    *&v5 = 134217984;
    v25 = v5;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v29 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v28 + 1) + 8 * i);
        if ([v9 isEqualToString:{@"kWFClientUserInterfacePropertyATJKey", v25}])
        {
          v10 = [v27 userInfo];
          v11 = [v10 objectForKey:@"kWFClientUserInterfacePropertyATJKey"];

          v12 = [v11 integerValue];
          v13 = [(WFNetworkListController *)self viewController];
          v14 = objc_opt_respondsToSelector();

          if (v14)
          {
            v15 = WFLogForCategory(0);
            v16 = OSLogForWFLogLevel(3uLL);
            if (WFCurrentLogLevel() >= 3 && v15 && os_log_type_enabled(v15, v16))
            {
              *buf = v25;
              v33 = v12;
              _os_log_impl(&dword_273ECD000, v15, v16, "setting ask to join mode to %ld", buf, 0xCu);
            }

            v17 = [(WFNetworkListController *)self viewController];
            [v17 setAskToJoinMode:v12];
LABEL_20:
          }
        }

        else
        {
          if (![v9 isEqualToString:@"kWFClientUserInterfacePropertyHotspotAJKey"])
          {
            continue;
          }

          v18 = [v27 userInfo];
          v11 = [v18 objectForKey:@"kWFClientUserInterfacePropertyHotspotAJKey"];

          v19 = [v11 integerValue];
          v20 = [(WFNetworkListController *)self viewController];
          v21 = objc_opt_respondsToSelector();

          if (v21)
          {
            v22 = WFLogForCategory(0);
            v23 = OSLogForWFLogLevel(3uLL);
            if (WFCurrentLogLevel() >= 3 && v22 && os_log_type_enabled(v22, v23))
            {
              *buf = v25;
              v33 = v19;
              _os_log_impl(&dword_273ECD000, v22, v23, "setting auto hotspot join option to %ld", buf, 0xCu);
            }

            v17 = [(WFNetworkListController *)self viewController];
            [v17 setAutoInstantHotspotJoinOption:v19];
            goto LABEL_20;
          }
        }
      }

      v6 = [obj countByEnumeratingWithState:&v28 objects:v34 count:16];
    }

    while (v6);
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)_preferredNetworksDidChange:(id)a3
{
  v40 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKey:*MEMORY[0x277D02AA0]];

  v7 = [v4 userInfo];

  v8 = [v7 objectForKey:*MEMORY[0x277D02A98]];
  v9 = [v8 integerValue];

  if ([(WFNetworkListController *)self viewControllerSupportsCurrentNetworkSubtitle])
  {
    v10 = [(WFNetworkListController *)self interface];
    v11 = [v10 currentNetwork];

    if (v11)
    {
      if ([(WFNetworkListController *)self isAssociating]|| (v9 - 3) < 0xFFFFFFFFFFFFFFFELL)
      {
        v14 = WFLogForCategory(0);
        v21 = OSLogForWFLogLevel(1uLL);
        if (WFCurrentLogLevel() && v14 && os_log_type_enabled(v14, v21))
        {
          v34 = 136315138;
          v35 = "[WFNetworkListController _preferredNetworksDidChange:]";
          _os_log_impl(&dword_273ECD000, v14, v21, "%s: preferred network change, do not update health subtitle while associating", &v34, 0xCu);
        }
      }

      else
      {
        v12 = [(WFNetworkListController *)self interface];
        v13 = [v12 currentNetwork];
        v14 = [v13 ssid];

        v15 = [v6 networkName];
        v16 = [v15 isEqualToString:v14];

        v17 = WFLogForCategory(0);
        v18 = OSLogForWFLogLevel(3uLL);
        v20 = WFCurrentLogLevel() > 2 && v17 != 0;
        if (v16)
        {
          if (v20 && os_log_type_enabled(v17, v18))
          {
            v34 = 136315138;
            v35 = "[WFNetworkListController _preferredNetworksDidChange:]";
            _os_log_impl(&dword_273ECD000, v17, v18, "%s: preferred network modified, updating health subtitle", &v34, 0xCu);
          }

          [(WFNetworkListController *)self _updateHealthSubtitle];
        }

        else
        {
          if (v20 && os_log_type_enabled(v17, v18))
          {
            v34 = 136315138;
            v35 = "[WFNetworkListController _preferredNetworksDidChange:]";
            _os_log_impl(&dword_273ECD000, v17, v18, "%s: preferred network modified, will not update health subtitle ", &v34, 0xCu);
          }
        }
      }
    }
  }

  v22 = [v6 accessoryIdentifier];

  if (v22)
  {
    v23 = v9 == 2;
  }

  else
  {
    v23 = 0;
  }

  if (v23)
  {
    v24 = [(WFNetworkListController *)self networks];
    v25 = [v6 networkName];
    v26 = [v24 scanRecordWithSSID:v25];

    v27 = WFLogForCategory(0);
    v28 = OSLogForWFLogLevel(3uLL);
    v30 = WFCurrentLogLevel() > 2 && v27 != 0;
    if (v26)
    {
      if (v30)
      {
        v31 = v27;
        if (os_log_type_enabled(v31, v28))
        {
          v32 = [v6 displayFriendlyName];
          v34 = 136315650;
          v35 = "[WFNetworkListController _preferredNetworksDidChange:]";
          v36 = 2112;
          v37 = v32;
          v38 = 2112;
          v39 = v6;
          _os_log_impl(&dword_273ECD000, v31, v28, "%s found matching scan result, displayName='%@' profile='%@'", &v34, 0x20u);
        }
      }

      [v26 setMatchingKnownNetworkProfile:v6];
      v27 = [MEMORY[0x277CBEB98] setWithObject:v26];
      [(WFNetworkListController *)self _updateViewsForNetworks:v27];
    }

    else if (v30 && os_log_type_enabled(v27, v28))
    {
      v34 = 136315394;
      v35 = "[WFNetworkListController _preferredNetworksDidChange:]";
      v36 = 2112;
      v37 = v6;
      _os_log_impl(&dword_273ECD000, v27, v28, "%s updated network was an accessory but was not found in the scan results profile='%@'", &v34, 0x16u);
    }
  }

  v33 = *MEMORY[0x277D85DE8];
}

- (void)hotspotInterfaceDidUpdateNetworks:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  if ([(WFNetworkListController *)self scanForPersonalHotspots]&& [(WFNetworkListController *)self canScanForPersonalHotspots])
  {
    v4 = *MEMORY[0x277D85DE8];

    [(WFNetworkListController *)self _updateViewControllerScanResults];
  }

  else
  {
    v5 = WFLogForCategory(0);
    v6 = OSLogForWFLogLevel(3uLL);
    if (WFCurrentLogLevel() >= 3 && v5)
    {
      v7 = v5;
      if (os_log_type_enabled(v7, v6))
      {
        v9 = 136315650;
        v10 = "[WFNetworkListController hotspotInterfaceDidUpdateNetworks:]";
        v11 = 1024;
        v12 = [(WFNetworkListController *)self scanForPersonalHotspots];
        v13 = 1024;
        v14 = [(WFNetworkListController *)self canScanForPersonalHotspots];
        _os_log_impl(&dword_273ECD000, v7, v6, "%s: hotspot scanning disabled (scan %d, canScan %d)", &v9, 0x18u);
      }
    }

    [(WFNetworkListController *)self _stopHotspotScan];
    v8 = *MEMORY[0x277D85DE8];
  }
}

- (BOOL)isAirPortSettings
{
  v2 = [(WFNetworkListController *)self viewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)isSetup
{
  v2 = [(WFNetworkListController *)self viewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)_useLegacySettingsUI
{
  keyExistsAndHasValidFormat = 0;
  if (CFPreferencesGetAppBooleanValue(@"WiFiDisableNewSettingsUI", @"com.apple.settings.airport", &keyExistsAndHasValidFormat))
  {
    v2 = 1;
  }

  else
  {
    v2 = keyExistsAndHasValidFormat == 0;
  }

  return !v2;
}

- (void)_updateViewControllerDisabled
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [(WFNetworkListController *)self viewController];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(WFNetworkListController *)self interface];

    v6 = WFLogForCategory(0);
    v7 = OSLogForWFLogLevel(3uLL);
    if (WFCurrentLogLevel() >= 3 && v6)
    {
      v8 = v6;
      if (os_log_type_enabled(v8, v7))
      {
        v9 = [(WFNetworkListController *)self viewController];
        v15 = 136315650;
        v16 = "[WFNetworkListController _updateViewControllerDisabled]";
        v17 = 2112;
        v18 = v9;
        v19 = 1024;
        v20 = v5 == 0;
        _os_log_impl(&dword_273ECD000, v8, v7, "%s: setting view controller %@ disabled %d", &v15, 0x1Cu);
      }
    }

    v10 = v5 == 0;

    v11 = [(WFNetworkListController *)self viewController];
    [v11 setDisabled:v10];
  }

  else
  {
    v11 = WFLogForCategory(0);
    v12 = OSLogForWFLogLevel(3uLL);
    if (WFCurrentLogLevel() >= 3 && v11)
    {
      v11 = v11;
      if (os_log_type_enabled(v11, v12))
      {
        v13 = [(WFNetworkListController *)self viewController];
        v15 = 136315394;
        v16 = "[WFNetworkListController _updateViewControllerDisabled]";
        v17 = 2112;
        v18 = v13;
        _os_log_impl(&dword_273ECD000, v11, v12, "%s: view controller %@ doesn't support disabled state", &v15, 0x16u);
      }
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_updateHS20NetworksWithProfiles:(id)a3 names:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __65__WFNetworkListController__updateHS20NetworksWithProfiles_names___block_invoke;
  v16 = &unk_279EBD878;
  v17 = self;
  v8 = v6;
  v18 = v8;
  [v7 enumerateObjectsUsingBlock:&v13];
  v9 = [(WFNetworkListController *)self viewController:v13];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = [(WFNetworkListController *)self viewController];
    v12 = [MEMORY[0x277CBEB98] setWithArray:v7];
    [v11 reloadCellsForNetworkNames:v12];
  }
}

void __65__WFNetworkListController__updateHS20NetworksWithProfiles_names___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [*(a1 + 32) networks];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __65__WFNetworkListController__updateHS20NetworksWithProfiles_names___block_invoke_2;
  v8[3] = &unk_279EBD850;
  v9 = v5;
  v10 = *(a1 + 40);
  v11 = a3;
  v7 = v5;
  [v6 enumerateObjectsUsingBlock:v8];
}

void __65__WFNetworkListController__updateHS20NetworksWithProfiles_names___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 ssid];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  if (v4)
  {
    v5 = [*(a1 + 40) objectAtIndex:*(a1 + 48)];
    v6 = [v5 HS20Badge];
    [v7 setHotspot20Name:v6];
  }
}

- (void)_stateMonitorChangedStates:(int64_t)a3 oldState:(int64_t)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v7 = WFLogForCategory(0);
  v8 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v7)
  {
    v9 = v7;
    if (os_log_type_enabled(v9, v8))
    {
      v10 = WFWiFiStateMonitorStringForState(a4);
      v11 = WFWiFiStateMonitorStringForState(a3);
      v21 = 136315650;
      v22 = "[WFNetworkListController _stateMonitorChangedStates:oldState:]";
      v23 = 2112;
      v24 = v10;
      v25 = 2112;
      v26 = v11;
      _os_log_impl(&dword_273ECD000, v9, v8, "%s: %@ to %@", &v21, 0x20u);
    }
  }

  v12 = [(WFNetworkListController *)self viewController];
  v13 = objc_opt_respondsToSelector();

  if (v13)
  {
    v14 = [(WFNetworkListController *)self interface];
    v15 = [v14 currentNetwork];
    if ([v15 carPlayType] == 1)
    {

      v16 = 1;
    }

    else
    {
      v17 = [(WFNetworkListController *)self wifiClient];
      v18 = [v17 isCellularOutrankingWiFi];

      if (a3 == 2)
      {
        v16 = v18;
      }

      else
      {
        v16 = 1;
      }
    }

    v19 = [(WFNetworkListController *)self viewController];
    [v19 setUserAutoJoinEnabled:v16];
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_dismissCredentialsViewControllerWithContext:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = WFLogForCategory(0);
  v6 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v5)
  {
    v7 = v5;
    if (os_log_type_enabled(v7, v6))
    {
      v8 = [v4 provider];
      v10 = 138412290;
      v11 = v8;
      _os_log_impl(&dword_273ECD000, v7, v6, "Dismissing credentials view controller %@", &v10, 0xCu);
    }
  }

  [(WFNetworkListController *)self _dismissViewControllerForContext:v4];
  [(WFNetworkListController *)self setCredentialsContext:0];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_dismissTrustViewControllerWithContext:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = WFLogForCategory(0);
  v6 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v5 && os_log_type_enabled(v5, v6))
  {
    v10 = 138412290;
    v11 = v4;
    _os_log_impl(&dword_273ECD000, v5, v6, "Dismissing trust view controller %@", &v10, 0xCu);
  }

  v7 = WFLogForCategory(0);
  v8 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v7 && os_log_type_enabled(v7, v8))
  {
    v10 = 136315650;
    v11 = "[WFNetworkListController _dismissTrustViewControllerWithContext:]";
    v12 = 2112;
    v13 = v4;
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&dword_273ECD000, v7, v8, "%s: presentingVc %@ credentialsVc %@", &v10, 0x20u);
  }

  [(WFNetworkListController *)self _dismissViewControllerForContext:v4];
  [(WFNetworkListController *)self setCertificateContext:0];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_dismissDetailsViewControllerWithContext:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = WFLogForCategory(0);
  v6 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v5)
  {
    v7 = v5;
    if (os_log_type_enabled(v7, v6))
    {
      v8 = [v4 provider];
      v10 = 138412290;
      v11 = v8;
      _os_log_impl(&dword_273ECD000, v7, v6, "Dismissing details view controller %@", &v10, 0xCu);
    }
  }

  [(WFNetworkListController *)self _dismissViewControllerForContext:v4];
  [(WFNetworkListController *)self setDetailsContext:0];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_dismissErrorViewControllerWithContext:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = WFLogForCategory(0);
  v6 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v5)
  {
    v7 = v5;
    if (os_log_type_enabled(v7, v6))
    {
      v8 = [v4 provider];
      v10 = 138412290;
      v11 = v8;
      _os_log_impl(&dword_273ECD000, v7, v6, "Dismissing error view controller %@", &v10, 0xCu);
    }
  }

  [(WFNetworkListController *)self _dismissViewControllerForContext:v4];
  v9 = *MEMORY[0x277D85DE8];
}

- (void)_dismissLockdownModeViewControllerWithContext:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = WFLogForCategory(0);
  v6 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v5)
  {
    v7 = v5;
    if (os_log_type_enabled(v7, v6))
    {
      v8 = [v4 provider];
      v10 = 138412290;
      v11 = v8;
      _os_log_impl(&dword_273ECD000, v7, v6, "Dismissing lockdown mode view controller %@", &v10, 0xCu);
    }
  }

  [(WFNetworkListController *)self _dismissViewControllerForContext:v4];
  v9 = *MEMORY[0x277D85DE8];
}

- (void)_dismissOtherNetworkViewControllerWithContext:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = WFLogForCategory(0);
  v6 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v5)
  {
    v7 = v5;
    if (os_log_type_enabled(v7, v6))
    {
      v8 = [v4 provider];
      v10 = 138412290;
      v11 = v8;
      _os_log_impl(&dword_273ECD000, v7, v6, "Dismissing other network view controller %@", &v10, 0xCu);
    }
  }

  [(WFNetworkListController *)self _dismissViewControllerForContext:v4];
  [(WFNetworkListController *)self _resumeScanning];
  [(WFNetworkListController *)self setCredentialsContext:0];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_dismissViewControllerForContext:(id)a3
{
  v48 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(WFNetworkListController *)self viewProvider];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = WFLogForCategory(0);
    v8 = OSLogForWFLogLevel(3uLL);
    if (WFCurrentLogLevel() >= 3 && v7)
    {
      v9 = v7;
      if (os_log_type_enabled(v9, v8))
      {
        v10 = [(WFNetworkListController *)self viewProvider];
        v44 = 136315394;
        v45 = "[WFNetworkListController _dismissViewControllerForContext:]";
        v46 = 2112;
        v47 = v10;
        _os_log_impl(&dword_273ECD000, v9, v8, "%s: provider (%@) handling dismissal", &v44, 0x16u);
      }
    }

    v11 = [(WFNetworkListController *)self viewProvider];
    v12 = [v4 provider];
    [v11 dismissNetworkViewController:v12 forContext:v4];
  }

  else
  {
    if (![v4 needsDismissal])
    {
      goto LABEL_36;
    }

    v13 = [v4 provider];
    v14 = objc_opt_respondsToSelector();

    if ((v14 & 1) != 0 && ([v4 provider], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "wantsModalPresentation"), v15, v16))
    {
      v17 = [v4 provider];
      v18 = objc_opt_respondsToSelector();

      v19 = WFLogForCategory(0);
      v20 = OSLogForWFLogLevel(3uLL);
      v22 = WFCurrentLogLevel() > 2 && v19 != 0;
      if (v18)
      {
        if (v22)
        {
          v23 = v19;
          if (os_log_type_enabled(v23, v20))
          {
            v24 = [v4 provider];
            v44 = 138412290;
            v45 = v24;
            _os_log_impl(&dword_273ECD000, v23, v20, "dismissing provider: %@", &v44, 0xCu);
          }
        }

        v25 = [v4 provider];
      }

      else
      {
        if (v22)
        {
          v32 = v19;
          if (os_log_type_enabled(v32, v20))
          {
            v33 = [(WFNetworkListController *)self viewController];
            v44 = 138412290;
            v45 = v33;
            _os_log_impl(&dword_273ECD000, v32, v20, "dismissing view controller: %@", &v44, 0xCu);
          }
        }

        v25 = [(WFNetworkListController *)self viewController];
      }

      v11 = v25;
      [v25 dismissViewControllerAnimated:1 completion:0];
    }

    else
    {
      v26 = WFLogForCategory(0);
      v27 = OSLogForWFLogLevel(3uLL);
      if (WFCurrentLogLevel() >= 3 && v26)
      {
        v28 = v26;
        if (os_log_type_enabled(v28, v27))
        {
          v29 = [v4 provider];
          v30 = [(WFNetworkListController *)self viewController];
          v31 = [v30 navigationController];
          v44 = 138412546;
          v45 = v29;
          v46 = 2112;
          v47 = v31;
          _os_log_impl(&dword_273ECD000, v28, v27, "dismissing non-modal: %@ (navigationController: %@)", &v44, 0x16u);
        }
      }

      v11 = [(WFNetworkListController *)self viewController];
      [v11 wf_popViewControllerAnimated:1];
    }
  }

LABEL_36:
  v34 = [(WFNetworkListController *)self viewProvider];
  v35 = objc_opt_respondsToSelector();

  if (v35)
  {
    v36 = [(WFNetworkListController *)self viewProvider];
    v37 = [v4 provider];
    [v36 didDismissNetworkViewController:v37 forContext:v4];
  }

  [(WFNetworkListController *)self setVisibleContext:0];
  v38 = [(WFNetworkListController *)self detailsContext];

  if (v38)
  {
    v39 = WFLogForCategory(0);
    v40 = OSLogForWFLogLevel(3uLL);
    if (WFCurrentLogLevel() >= 3 && v39)
    {
      v41 = v39;
      if (os_log_type_enabled(v41, v40))
      {
        v42 = [(WFNetworkListController *)self detailsContext];
        v44 = 138412290;
        v45 = v42;
        _os_log_impl(&dword_273ECD000, v41, v40, "clearing detailsContext='%@'", &v44, 0xCu);
      }
    }

    [(WFNetworkListController *)self setDetailsContext:0];
  }

  v43 = *MEMORY[0x277D85DE8];
}

- (void)_dismissVisibleContext
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = [(WFNetworkListController *)self visibleContext];

  if (v3)
  {
    v4 = WFLogForCategory(0);
    v5 = OSLogForWFLogLevel(3uLL);
    if (WFCurrentLogLevel() >= 3 && v4)
    {
      v6 = v4;
      if (os_log_type_enabled(v6, v5))
      {
        v7 = [(WFNetworkListController *)self visibleContext];
        v10 = 136315394;
        v11 = "[WFNetworkListController _dismissVisibleContext]";
        v12 = 2112;
        v13 = v7;
        _os_log_impl(&dword_273ECD000, v6, v5, "%s: dismissing context %@", &v10, 0x16u);
      }
    }

    v8 = [(WFNetworkListController *)self visibleContext];
    [(WFNetworkListController *)self _dismissViewControllerForContext:v8];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (BOOL)handleURL:(id)a3
{
  v93 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = WFLogForCategory(0);
  v6 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v5 && os_log_type_enabled(v5, v6))
  {
    *buf = 136315394;
    v88 = "[WFNetworkListController handleURL:]";
    v89 = 2112;
    *v90 = v4;
    _os_log_impl(&dword_273ECD000, v5, v6, "%s: handling URL %@", buf, 0x16u);
  }

  v7 = [MEMORY[0x277CCACE0] componentsWithURL:v4 resolvingAgainstBaseURL:0];
  v8 = v7;
  if (!v7)
  {
    [WFNetworkListController handleURL:];
    v77 = 0;
    v78 = 0;
    v15 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v10 = 0;
LABEL_91:
    v22 = 0;
    v23 = 0;
    v79 = 0;
    goto LABEL_92;
  }

  v9 = [v7 path];
  v10 = v9;
  if (!v9)
  {
    [WFNetworkListController handleURL:];
    v77 = 0;
    v78 = 0;
    v15 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    goto LABEL_91;
  }

  if ([(WFNetworkScanRecord *)v9 hasPrefix:@"/"])
  {
    v11 = [(WFNetworkScanRecord *)v10 substringFromIndex:1];

    v10 = v11;
  }

  v12 = [(WFNetworkScanRecord *)v10 stringByRemovingPercentEncoding];

  v13 = [v12 componentsSeparatedByString:@"#"];
  v14 = [v13 firstObject];
  if ([v13 count] < 2)
  {
    v15 = 0;
  }

  else
  {
    v15 = [v13 lastObject];
  }

  v16 = WFLogForCategory(0);
  v17 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v16 && os_log_type_enabled(v16, v17))
  {
    *buf = 136315906;
    v88 = "[WFNetworkListController handleURL:]";
    v89 = 2112;
    *v90 = v12;
    *&v90[8] = 2112;
    *&v90[10] = v14;
    v91 = 2112;
    v92 = v15;
    _os_log_impl(&dword_273ECD000, v16, v17, "%s: path=%@, firstPathComponent=%@, offset=%@", buf, 0x2Au);
  }

  v78 = v14;
  v79 = v12;
  v77 = v13;
  if (![v14 isEqualToString:@"NetworkDetails"] || !v15)
  {
    v76 = v15;
    if ([v12 isEqualToString:@"NetworkDetails"])
    {
      v18 = [(WFNetworkListController *)self _handleCurrentNetworkDetailsURL:0];
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v10 = 0;
      v22 = 0;
      v23 = 0;
LABEL_21:
      v15 = v76;
      goto LABEL_55;
    }

    if ([v12 isEqualToString:@"WiFiPower"])
    {
      v24 = [(WFNetworkListController *)self viewController];
      v25 = objc_opt_respondsToSelector();

      if (v25)
      {
        v26 = [(WFNetworkListController *)self viewController];
        [v26 scrollToAirportCell:1];
      }
    }

    if ([v12 isEqualToString:@"AskToJoin"])
    {
      v27 = [(WFNetworkListController *)self viewController];
      v28 = objc_opt_respondsToSelector();

      if (v28)
      {
        v29 = [(WFNetworkListController *)self viewController];
        [v29 scrollToAirportCell:2];
      }
    }

    if ([v12 isEqualToString:@"AutoJoinHotspot"])
    {
      v30 = [(WFNetworkListController *)self viewController];
      v31 = objc_opt_respondsToSelector();

      if (v31)
      {
        v32 = [(WFNetworkListController *)self viewController];
        [v32 scrollToAirportCell:3];
      }
    }

    if (([v12 isEqualToString:@"Credentials"] & 1) != 0 || objc_msgSend(v12, "isEqualToString:", @"TrustEnterprise"))
    {
      v85 = 0;
      v10 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:@"/var/mobile/Library/Caches/com.apple.wifi/LastEnterpriseNetwork.plist" options:0 error:&v85];
      v20 = v85;
      if (v10)
      {
        v71 = v10;
        v22 = [MEMORY[0x277CCAC58] propertyListWithData:v10 options:0 format:0 error:0];
        v19 = WiFiNetworkCreate();
        if (!v19)
        {
          [WFNetworkListController handleURL:];
          v21 = 0;
          v10 = 0;
          v18 = 0;
          v23 = v71;
          goto LABEL_55;
        }

        v10 = [[WFNetworkScanRecord alloc] initWithNetworkRef:v19];
        v33 = [[WFNetworkProfile alloc] initWithNetworkRef:v19];
        v21 = v33;
        v74 = v8;
        cf = v19;
        if (v10)
        {
          if (v33)
          {
            v72 = v4;
            v34 = [(WFNetworkListController *)self networks];
            v19 = [v34 mutableCopy];

            if (!v19)
            {
              v19 = [MEMORY[0x277CBEB58] set];
            }

            [v19 addObject:v10];
            [(WFNetworkListController *)self setNetworks:v19];
            [(WFNetworkListController *)self _updateViewControllerScanResults];
            v35 = [(WFNetworkListController *)self viewController];
            v36 = objc_opt_respondsToSelector();

            v37 = [(WFNetworkListController *)self viewController];
            v38 = v37;
            if (v36)
            {
              [v37 setCurrentNetwork:v10 previousNetwork:0 reason:0];
            }

            else
            {
              [v37 setCurrentNetwork:v10];
            }

            if ([v79 isEqualToString:@"Credentials"])
            {
              v39 = [(WFNetworkListController *)self credentialsContext];

              if (v39)
              {
                v40 = [(WFNetworkListController *)self credentialsContext];
                [v40 cancel];
              }

              [(WFNetworkListController *)self _associationWillStart:v10];
              v41 = [(WFNetworkListController *)self associationContext];
              [v41 setState:2];

              [(WFNetworkListController *)self _promptCredentialsForNetwork:v10 profile:v21];
            }

            else if ([v79 isEqualToString:@"TrustEnterprise"])
            {
              v42 = [(WFNetworkProfile *)v21 certificateChain];

              if (!v42)
              {
                v46 = WFLogForCategory(0);
                v69 = OSLogForWFLogLevel(1uLL);
                v18 = 0;
                if (WFCurrentLogLevel() && v46)
                {
                  if (os_log_type_enabled(v46, v69))
                  {
                    *buf = 136315394;
                    v88 = "[WFNetworkListController handleURL:]";
                    v89 = 2112;
                    *v90 = v21;
                    _os_log_impl(&dword_273ECD000, v46, v69, "%s: certificate chain is nil for profile %@", buf, 0x16u);
                  }

                  v18 = 0;
                }

                v4 = v72;
                goto LABEL_54;
              }

              [(WFNetworkListController *)self _associationWillStart:v10];
              v43 = [(WFNetworkListController *)self associationContext];
              [v43 setState:2];

              v44 = [(WFNetworkProfile *)v21 certificateChain];
              [(WFNetworkListController *)self _promptTrustCertificateForNetwork:v10 certificateChain:v44 profile:v21 autoJoin:1];
            }

            v45 = WFScanRecordDeleteEnterprisePath();
            v84 = v20;
            v46 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:@"/var/mobile/Library/Caches/com.apple.wifi/LastEnterpriseNetwork.plist" options:0 error:&v84];
            v47 = v84;

            v48 = WFLogForCategory(0);
            v49 = OSLogForWFLogLevel(3uLL);
            v4 = v72;
            if (WFCurrentLogLevel() >= 3 && v48 && os_log_type_enabled(v48, v49))
            {
              *buf = 136315650;
              v88 = "[WFNetworkListController handleURL:]";
              v89 = 1024;
              *v90 = v45;
              *&v90[4] = 2112;
              *&v90[6] = v46;
              _os_log_impl(&dword_273ECD000, v48, v49, "%s: LastEnterpriseNetwork deletion successful: %d data: %@", buf, 0x1Cu);
            }

            v18 = 1;
            v20 = v47;
LABEL_54:
            v8 = v74;

            CFRelease(cf);
            v15 = v76;
            v23 = v71;
            goto LABEL_55;
          }

          v46 = WFLogForCategory(0);
          v68 = OSLogForWFLogLevel(1uLL);
          v18 = 0;
          v19 = 0;
          if (!WFCurrentLogLevel() || !v46)
          {
            v21 = 0;
            goto LABEL_54;
          }

          if (os_log_type_enabled(v46, v68))
          {
            *buf = 136315394;
            v88 = "[WFNetworkListController handleURL:]";
            v89 = 2112;
            *v90 = cf;
            _os_log_impl(&dword_273ECD000, v46, v68, "%s: unable to create network profile for enterprise networkRef %@", buf, 0x16u);
          }

          v19 = 0;
          v21 = 0;
        }

        else
        {
          v46 = WFLogForCategory(0);
          v67 = OSLogForWFLogLevel(1uLL);
          v18 = 0;
          v19 = 0;
          if (!WFCurrentLogLevel() || !v46)
          {
            goto LABEL_54;
          }

          if (os_log_type_enabled(v46, v67))
          {
            *buf = 136315394;
            v88 = "[WFNetworkListController handleURL:]";
            v89 = 2112;
            *v90 = cf;
            _os_log_impl(&dword_273ECD000, v46, v67, "%s: unable to create scan record for enterprise networkRef %@", buf, 0x16u);
          }

          v19 = 0;
        }

        v18 = 0;
        goto LABEL_54;
      }

      [WFNetworkListController handleURL:];
      v19 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
LABEL_92:
      v18 = 0;
      goto LABEL_55;
    }

    if (![v14 isEqualToString:@"AccessoryDetails"])
    {
      if ([v12 isEqualToString:@"proxycredentials"])
      {
        v19 = 0;
        v20 = 0;
        v21 = 0;
        v10 = 0;
        v22 = 0;
        v23 = 0;
        v18 = 1;
        goto LABEL_55;
      }

      v61 = WFLogForCategory(0);
      v62 = OSLogForWFLogLevel(1uLL);
      if (WFCurrentLogLevel() && v61 && os_log_type_enabled(v61, v62))
      {
        *buf = 136315394;
        v88 = "[WFNetworkListController handleURL:]";
        v89 = 2112;
        *v90 = v12;
        _os_log_impl(&dword_273ECD000, v61, v62, "%s: unknown path param %@", buf, 0x16u);
      }

      v19 = 0;
      v20 = 0;
      v21 = 0;
      v10 = 0;
      v22 = 0;
      v23 = 0;
      v18 = 0;
      goto LABEL_21;
    }

    if (v15 && [v15 length])
    {
      v52 = v15;
    }

    else
    {
      v73 = v4;
      v75 = v8;
      v82 = 0u;
      v83 = 0u;
      v80 = 0u;
      v81 = 0u;
      v53 = [v8 queryItems];
      v54 = [v53 countByEnumeratingWithState:&v80 objects:v86 count:16];
      if (!v54)
      {
LABEL_70:

        v52 = 0;
        v4 = v73;
        v8 = v75;
        goto LABEL_83;
      }

      v55 = v54;
      v56 = *v81;
LABEL_64:
      v57 = 0;
      while (1)
      {
        if (*v81 != v56)
        {
          objc_enumerationMutation(v53);
        }

        v58 = *(*(&v80 + 1) + 8 * v57);
        v59 = [v58 name];
        v60 = [v59 isEqualToString:@"identifier"];

        if (v60)
        {
          break;
        }

        if (v55 == ++v57)
        {
          v55 = [v53 countByEnumeratingWithState:&v80 objects:v86 count:16];
          if (v55)
          {
            goto LABEL_64;
          }

          goto LABEL_70;
        }
      }

      v52 = [v58 value];

      v4 = v73;
      v8 = v75;
      if (!v52)
      {
        goto LABEL_83;
      }
    }

    if ([v52 length])
    {
      v63 = WFLogForCategory(0);
      v64 = OSLogForWFLogLevel(3uLL);
      if (WFCurrentLogLevel() >= 3 && v63 && os_log_type_enabled(v63, v64))
      {
        *buf = 138412290;
        v88 = v52;
        _os_log_impl(&dword_273ECD000, v63, v64, "Trying to open Detail settings for accessory: %@", buf, 0xCu);
      }

      [(WFNetworkListController *)self _handleAccessoryDetailURL:v52];
LABEL_88:

      v19 = 0;
      v20 = 0;
      v21 = 0;
      v10 = 0;
      v22 = 0;
      v23 = 0;
      v18 = 1;
      goto LABEL_21;
    }

LABEL_83:
    v65 = WFLogForCategory(0);
    v66 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v65 && os_log_type_enabled(v65, v66))
    {
      *buf = 0;
      _os_log_impl(&dword_273ECD000, v65, v66, "AccessoryDetails URL missing accessory identifier", buf, 2u);
    }

    goto LABEL_88;
  }

  v18 = [(WFNetworkListController *)self _handleCurrentNetworkDetailsURL:v15];
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v10 = 0;
  v22 = 0;
  v23 = 0;
LABEL_55:

  v50 = *MEMORY[0x277D85DE8];
  return v18;
}

- (BOOL)_handleAccessoryDetailURL:(id)a3
{
  v49 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (_os_feature_enabled_impl())
  {
    v5 = [(WFNetworkListController *)self knownNetworksManager];
    v6 = [v5 allEditableNetworkProfiles];
    v7 = [(WFNetworkListController *)self knownNetworksManager];
    v8 = [v7 allNonEditableNetworkProfiles];
    v9 = [v6 setByAddingObjectsFromSet:v8];
    v10 = [v9 allObjects];

    v11 = WFLogForCategory(0);
    v12 = OSLogForWFLogLevel(4uLL);
    if (WFCurrentLogLevel() >= 4 && v11)
    {
      v13 = v11;
      if (os_log_type_enabled(v13, v12))
      {
        *buf = 134217984;
        v43 = [v10 count];
        _os_log_impl(&dword_273ECD000, v13, v12, "All profile count: %lu", buf, 0xCu);
      }
    }

    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v14 = v10;
    v15 = [v14 countByEnumeratingWithState:&v38 objects:v48 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v39;
LABEL_9:
      v18 = 0;
      while (1)
      {
        if (*v39 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v38 + 1) + 8 * v18);
        v20 = [v19 accessoryIdentifier];
        v21 = [v20 isEqualToString:v4];

        if (v21)
        {
          break;
        }

        if (v16 == ++v18)
        {
          v16 = [v14 countByEnumeratingWithState:&v38 objects:v48 count:16];
          if (v16)
          {
            goto LABEL_9;
          }

          goto LABEL_15;
        }
      }

      v24 = WFLogForCategory(0);
      v25 = OSLogForWFLogLevel(3uLL);
      if (WFCurrentLogLevel() >= 3 && v24)
      {
        v26 = v24;
        if (os_log_type_enabled(v26, v25))
        {
          v27 = [v19 networkName];
          *buf = 138412546;
          v43 = v4;
          v44 = 2112;
          v45 = v27;
          _os_log_impl(&dword_273ECD000, v26, v25, "Found matching accessory network profile for %@, network name: %@", buf, 0x16u);
        }
      }

      v28 = v19;
      if (v28)
      {
        v29 = WFLogForCategory(0);
        v30 = OSLogForWFLogLevel(1uLL);
        if (WFCurrentLogLevel() && v29)
        {
          v31 = v29;
          if (os_log_type_enabled(v31, v30))
          {
            v32 = [v28 networkName];
            *buf = 136315650;
            v43 = "[WFNetworkListController _handleAccessoryDetailURL:]";
            v44 = 2112;
            v45 = v32;
            v46 = 2112;
            v47 = v4;
            _os_log_impl(&dword_273ECD000, v31, v30, "%s: successfully opened network detail for %@:  id:%@", buf, 0x20u);
          }
        }

        v33 = [(WFNetworkListController *)self viewController];
        [(WFNetworkListController *)self networkListViewController:v33 showSettingsForNetwork:v28];
        v23 = 1;
        goto LABEL_38;
      }
    }

    else
    {
LABEL_15:
    }

    v28 = WFLogForCategory(0);
    v34 = OSLogForWFLogLevel(1uLL);
    v23 = 0;
    if (WFCurrentLogLevel() && v28)
    {
      v33 = v28;
      if (os_log_type_enabled(v33, v34))
      {
        v35 = [v14 count];
        *buf = 136315650;
        v43 = "[WFNetworkListController _handleAccessoryDetailURL:]";
        v44 = 2112;
        v45 = v4;
        v46 = 2048;
        v47 = v35;
        _os_log_impl(&dword_273ECD000, v33, v34, "%s: Not found matching profile for %@ in all known %lu profiles, unable to show detail page", buf, 0x20u);
      }

      v23 = 0;
      v28 = v33;
LABEL_38:
    }
  }

  else
  {
    v14 = WFLogForCategory(0);
    v22 = OSLogForWFLogLevel(3uLL);
    v23 = 0;
    if (WFCurrentLogLevel() >= 3 && v14)
    {
      if (os_log_type_enabled(v14, v22))
      {
        *buf = 0;
        _os_log_impl(&dword_273ECD000, v14, v22, "failed to open accessoryView url: DeviceAccess FF in AccessorySetupKit is not enabled", buf, 2u);
      }

      v23 = 0;
    }
  }

  v36 = *MEMORY[0x277D85DE8];
  return v23;
}

- (BOOL)_handleCurrentNetworkDetailsURL:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 isEqualToString:@"AutoJoin"])
  {
    v5 = 4;
  }

  else if ([v4 isEqualToString:@"LowDataMode"])
  {
    v5 = 5;
  }

  else if ([v4 isEqualToString:@"PrivateWiFiAddress"])
  {
    v5 = 6;
  }

  else if ([v4 isEqualToString:@"LimitIPAddress"])
  {
    v5 = 7;
  }

  else
  {
    v5 = 0;
  }

  v6 = [(WFNetworkListController *)self interface];
  v7 = [v6 currentNetwork];

  if (v7)
  {
    v8 = [(WFNetworkListController *)self viewController];
    v9 = [(WFNetworkListController *)self interface];
    v10 = [v9 currentNetwork];
    [(WFNetworkListController *)self networkListViewController:v8 showSettingsForNetwork:v10 context:0 scrollToCellType:v5];

    v11 = WFLogForCategory(0);
    v12 = OSLogForWFLogLevel(3uLL);
    if (WFCurrentLogLevel() >= 3 && v11)
    {
      v11 = v11;
      if (os_log_type_enabled(v11, v12))
      {
        v13 = [(WFNetworkListController *)self interface];
        v14 = [v13 currentNetwork];
        *v17 = 136315394;
        *&v17[4] = "[WFNetworkListController _handleCurrentNetworkDetailsURL:]";
        v18 = 2112;
        v19 = v14;
        _os_log_impl(&dword_273ECD000, v11, v12, "%s: handling URL for current network (%@) details", v17, 0x16u);
      }
    }
  }

  else
  {
    [WFNetworkListController _handleCurrentNetworkDetailsURL:v17];
    v11 = *v17;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v7 != 0;
}

- (id)keyValueDictionaryForURL:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB38] dictionary];
  v5 = [v3 resourceSpecifier];
  v6 = [v5 componentsSeparatedByString:@"&"];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v18 + 1) + 8 * i) componentsSeparatedByString:{@"=", v18}];
        if ([v12 count] == 2)
        {
          v13 = [v12 objectAtIndex:1];
          v14 = [v13 stringByRemovingPercentEncoding];

          v15 = [v12 objectAtIndex:0];
          [v4 setObject:v14 forKey:v15];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  v16 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)_hardwareMACAddress
{
  v2 = [(WFNetworkListController *)self wifiClient];
  v3 = [v2 hardwareMACAddress];

  return v3;
}

- (void)_cellularOutrankNotification:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = WFLogForCategory(0);
  v6 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v5 && os_log_type_enabled(v5, v6))
  {
    v10 = 136315394;
    v11 = "[WFNetworkListController _cellularOutrankNotification:]";
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&dword_273ECD000, v5, v6, "%s: received cellular outrank notification %@", &v10, 0x16u);
  }

  [(WFNetworkListController *)self _updateHealthSubtitle];
  v7 = [(WFNetworkListController *)self interface];
  v8 = [v7 currentNetwork];
  [(WFNetworkListController *)self _updateCurrentNetworkIPState:v8];

  v9 = *MEMORY[0x277D85DE8];
}

void __82__WFNetworkListController__presentCellularOutrankAlertForNetwork_privateCellular___block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WFLogForCategory(0);
  v6 = OSLogForWFLogLevel(3uLL);
  v8 = WFCurrentLogLevel() > 2 && v5 != 0;
  if (a2)
  {
    if (v8 && os_log_type_enabled(v5, v6))
    {
      *buf = 0;
      _os_log_impl(&dword_273ECD000, v5, v6, "User accepted cellular outrank prompt", buf, 2u);
    }

    [WeakRetained _associateToScanRecord:*(a1 + 32)];
  }

  else
  {
    if (v8 && os_log_type_enabled(v5, v6))
    {
      *v9 = 0;
      _os_log_impl(&dword_273ECD000, v5, v6, "User declined cellular outrank prompt", v9, 2u);
    }
  }
}

- (void)_presentDeveloperOutrankAlertForNetwork:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = WFLogForCategory(0);
  v6 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v5 && os_log_type_enabled(v5, v6))
  {
    v13 = 136315138;
    v14 = "[WFNetworkListController _presentDeveloperOutrankAlertForNetwork:]";
    _os_log_impl(&dword_273ECD000, v5, v6, "%s: showing developer outrank prompt", &v13, 0xCu);
  }

  v7 = MEMORY[0x277D7B9A8];
  v8 = [v4 ssid];

  v9 = [(WFNetworkListController *)self viewController];
  [v9 deviceCapability];
  v10 = [v7 developerOutrankAlertControllerWithNetworkName:v8 chinaDevice:WFCapabilityIsChinaDevice() completionHandler:&__block_literal_global_544];

  v11 = [(WFNetworkListController *)self viewController];
  [v11 presentViewController:v10 animated:1 completion:0];

  v12 = *MEMORY[0x277D85DE8];
}

void __67__WFNetworkListController__presentDeveloperOutrankAlertForNetwork___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v5 = [MEMORY[0x277D3FB78] sharedManager];
    v2 = [MEMORY[0x277CBEBC0] URLWithString:@"prefs:root=DEVELOPER_SETTINGS&path=NCO"];
    [v5 processURL:v2 animated:1 fromSearch:0 withCompletion:&__block_literal_global_550];
  }

  else
  {
    v3 = WFLogForCategory(0);
    v4 = OSLogForWFLogLevel(3uLL);
    if (WFCurrentLogLevel() >= 3 && v3 && os_log_type_enabled(v3, v4))
    {
      *buf = 0;
      _os_log_impl(&dword_273ECD000, v3, v4, "User bypassed option to go to developer settings", buf, 2u);
    }
  }
}

void __67__WFNetworkListController__presentDeveloperOutrankAlertForNetwork___block_invoke_2()
{
  v0 = WFLogForCategory(0);
  v1 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v0 && os_log_type_enabled(v0, v1))
  {
    *v2 = 0;
    _os_log_impl(&dword_273ECD000, v0, v1, "User taken to developer settings", v2, 2u);
  }
}

- (int64_t)_defaultAuthTraits
{
  v3 = [(WFNetworkListController *)self wifiClient];
  v4 = [v3 isWPA3PersonalEnabled];

  if (v4)
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  v6 = [(WFNetworkListController *)self wifiClient];
  v7 = [v6 isWPA3EnterpriseEnabled];

  if (v7)
  {
    v5 |= 4uLL;
  }

  v8 = [(WFNetworkListController *)self wifiClient];
  v9 = [v8 isMfpCapable];

  if (v9)
  {
    v10 = v5 | 8;
  }

  else
  {
    v10 = v5;
  }

  if (WFHasWAPICapability())
  {
    v11 = [(WFNetworkListController *)self wifiClient];
    v12 = [v11 isWAPIEnabled];

    return v10 | v12 & 1;
  }

  return v10;
}

- (void)_updatePrivacyProxyFeatureEnabled
{
  v3 = dispatch_get_global_queue(21, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__WFNetworkListController__updatePrivacyProxyFeatureEnabled__block_invoke;
  block[3] = &unk_279EBCFE0;
  block[4] = self;
  dispatch_async(v3, block);
}

void __60__WFNetworkListController__updatePrivacyProxyFeatureEnabled__block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v2 = dispatch_semaphore_create(0);
  v3 = MEMORY[0x277D2CA68];
  v4 = dispatch_get_global_queue(33, 0);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __60__WFNetworkListController__updatePrivacyProxyFeatureEnabled__block_invoke_2;
  v18[3] = &unk_279EBD8C0;
  v20 = &v21;
  v5 = v2;
  v19 = v5;
  [v3 getStatus:v4 completionHandler:v18];

  v6 = dispatch_time(0, 15000000000);
  dispatch_semaphore_wait(v5, v6);
  if (*(v22 + 6))
  {
    v7 = MEMORY[0x277D2CA68];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __60__WFNetworkListController__updatePrivacyProxyFeatureEnabled__block_invoke_2_553;
    v14[3] = &unk_279EBD8E8;
    v16 = &v21;
    v8 = v5;
    v15 = v8;
    [v7 getUserTier:v4 completionHandler:v14];

    v9 = dispatch_time(0, 15000000000);
    dispatch_semaphore_wait(v8, v9);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __60__WFNetworkListController__updatePrivacyProxyFeatureEnabled__block_invoke_555;
    block[3] = &unk_279EBD910;
    block[4] = *(a1 + 32);
    block[5] = &v21;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else
  {
    v10 = WFLogForCategory(0);
    v11 = OSLogForWFLogLevel(3uLL);
    if (WFCurrentLogLevel() >= 3 && v10 && os_log_type_enabled(v10, v11))
    {
      *buf = 136315138;
      v26 = "[WFNetworkListController _updatePrivacyProxyFeatureEnabled]_block_invoke";
      _os_log_impl(&dword_273ECD000, v10, v11, "%s: privacy proxy feature is disabled", buf, 0xCu);
    }

    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __60__WFNetworkListController__updatePrivacyProxyFeatureEnabled__block_invoke_552;
    v17[3] = &unk_279EBCFE0;
    v17[4] = *(a1 + 32);
    dispatch_async(MEMORY[0x277D85CD0], v17);
  }

  _Block_object_dispose(&v21, 8);
  v12 = *MEMORY[0x277D85DE8];
}

void __60__WFNetworkListController__updatePrivacyProxyFeatureEnabled__block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = WFLogForCategory(0);
  v7 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v6 && os_log_type_enabled(v6, v7))
  {
    v9 = 136315650;
    v10 = "[WFNetworkListController _updatePrivacyProxyFeatureEnabled]_block_invoke_2";
    v11 = 1024;
    v12 = a2;
    v13 = 2112;
    v14 = v5;
    _os_log_impl(&dword_273ECD000, v6, v7, "%s: privacy proxy status=%d (error=%@)", &v9, 0x1Cu);
  }

  *(*(*(a1 + 40) + 8) + 24) = a2;
  dispatch_semaphore_signal(*(a1 + 32));

  v8 = *MEMORY[0x277D85DE8];
}

void __60__WFNetworkListController__updatePrivacyProxyFeatureEnabled__block_invoke_2_553(uint64_t a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (a2 == 1)
  {
    v6 = 1;
    goto LABEL_5;
  }

  if (a2 == 2)
  {
    v6 = 2;
LABEL_5:
    *(*(*(a1 + 40) + 8) + 24) = v6;
  }

  v7 = WFLogForCategory(0);
  v8 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v7 && os_log_type_enabled(v7, v8))
  {
    v10 = 136315650;
    v11 = "[WFNetworkListController _updatePrivacyProxyFeatureEnabled]_block_invoke_2";
    v12 = 2048;
    v13 = a2;
    v14 = 2112;
    v15 = v5;
    _os_log_impl(&dword_273ECD000, v7, v8, "%s: privacy proxy user tier=%ld (error=%@)", &v10, 0x20u);
  }

  dispatch_semaphore_signal(*(a1 + 32));
  v9 = *MEMORY[0x277D85DE8];
}

- (void)_refreshKnownHiddenNetworkNamesCache
{
  v3 = dispatch_get_global_queue(21, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__WFNetworkListController__refreshKnownHiddenNetworkNamesCache__block_invoke;
  block[3] = &unk_279EBCFE0;
  block[4] = self;
  dispatch_async(v3, block);
}

void __63__WFNetworkListController__refreshKnownHiddenNetworkNamesCache__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB18] array];
  v3 = [*(a1 + 32) wifiClient];
  v4 = [v3 cInterface];
  v5 = [MEMORY[0x277CBEB98] setWithObjects:{&unk_2883048A0, &unk_288304900, &unk_2883048B8, &unk_288304918, &unk_288304930, 0}];
  v6 = [v4 knownNetworkProfilesWithProperties:v5];

  v7 = WFLogForCategory(0);
  v8 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v7 && os_log_type_enabled(v7, v8))
  {
    *buf = 0;
    _os_log_impl(&dword_273ECD000, v7, v8, "refreshing known hidden network name cache", buf, 2u);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__WFNetworkListController__refreshKnownHiddenNetworkNamesCache__block_invoke_562;
  block[3] = &unk_279EBD268;
  v9 = *(a1 + 32);
  v13 = v6;
  v14 = v9;
  v15 = v2;
  v10 = v2;
  v11 = v6;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __63__WFNetworkListController__refreshKnownHiddenNetworkNamesCache__block_invoke_562(uint64_t a1)
{
  v36 = *MEMORY[0x277D85DE8];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = 0;
    v7 = *v28;
    *&v4 = 136315394;
    v26 = v4;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v28 != v7)
        {
          objc_enumerationMutation(v2);
        }

        v9 = *(*(&v27 + 1) + 8 * i);
        if ([v9 hiddenState] == 1)
        {
          v10 = [v9 networkName];
          if (v10)
          {
            v11 = v10;
            v12 = [*(a1 + 40) _canScanForHiddenNetwork:v9];

            if (v12)
            {
              v13 = WFLogForCategory(0);
              v14 = OSLogForWFLogLevel(4uLL);
              if (WFCurrentLogLevel() >= 4 && v13 && os_log_type_enabled(v13, v14))
              {
                *buf = v26;
                v32 = "[WFNetworkListController _refreshKnownHiddenNetworkNamesCache]_block_invoke";
                v33 = 2112;
                v34 = v9;
                _os_log_impl(&dword_273ECD000, v13, v14, "%s: hidden network profile='%@'", buf, 0x16u);
              }

              v15 = *(a1 + 48);
              v16 = [v9 networkName];
              [v15 addObject:v16];
            }
          }
        }

        if ([v9 isPasspoint])
        {
          v17 = WFLogForCategory(0);
          v18 = OSLogForWFLogLevel(4uLL);
          if (WFCurrentLogLevel() >= 4 && v17 && os_log_type_enabled(v17, v18))
          {
            *buf = v26;
            v32 = "[WFNetworkListController _refreshKnownHiddenNetworkNamesCache]_block_invoke";
            v33 = 2112;
            v34 = v9;
            _os_log_impl(&dword_273ECD000, v17, v18, "%s: passpoint network profile='%@'", buf, 0x16u);
          }

          v6 = 1;
        }
      }

      v5 = [v2 countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v19 = WFLogForCategory(0);
  v20 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v19 && os_log_type_enabled(v19, v20))
  {
    v21 = *(a1 + 48);
    *buf = 138412546;
    v32 = v21;
    v33 = 1024;
    LODWORD(v34) = v6 & 1;
    _os_log_impl(&dword_273ECD000, v19, v20, "hidden known network names='%@' HS20NetworksFound='%d'", buf, 0x12u);
  }

  v22 = [MEMORY[0x277CBEB98] setWithArray:*(a1 + 48)];
  v23 = *(a1 + 40);
  v24 = *(v23 + 240);
  *(v23 + 240) = v22;

  *(*(a1 + 40) + 16) = v6 & 1;
  v25 = *MEMORY[0x277D85DE8];
}

- (WFKnownNetworksProvider)knownNetworksManager
{
  knownNetworksManager = self->_knownNetworksManager;
  if (!knownNetworksManager)
  {
    v4 = [WFKnownNetworksManager alloc];
    v5 = [(WFNetworkListController *)self wifiClient];
    v6 = [v5 cInterface];
    v7 = [(WFKnownNetworksManager *)v4 initWithInterface:v6];
    v8 = self->_knownNetworksManager;
    self->_knownNetworksManager = v7;

    knownNetworksManager = self->_knownNetworksManager;
  }

  return knownNetworksManager;
}

- (id)scanManager:(id)a3 filterScanResults:(id)a4
{
  v45 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v32 = self;
  v6 = [(WFNetworkListController *)self wifiClient];
  v7 = [v6 isNetworkRestrictionActive];

  if (v7)
  {
    v31 = [v5 mutableCopy];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v29 = v5;
    obj = v5;
    v8 = [obj countByEnumeratingWithState:&v34 objects:v44 count:16];
    if (v8)
    {
      v9 = v8;
      v33 = *v35;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v35 != v33)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v34 + 1) + 8 * i);
          v12 = [v11 matchingKnownNetworkProfile];
          if (!v12)
          {
            goto LABEL_9;
          }

          v13 = v12;
          v14 = [(WFNetworkListController *)v32 wifiClient];
          v15 = [v14 whitelistingUUID];
          v16 = [v11 matchingKnownNetworkProfile];
          v17 = [v16 OSSpecificAttributes];
          v18 = [v17 objectForKeyedSubscript:@"PolicyUUID"];
          v19 = [v15 isEqualToString:v18];

          if ((v19 & 1) == 0)
          {
LABEL_9:
            v20 = WFLogForCategory(0);
            v21 = OSLogForWFLogLevel(4uLL);
            if (WFCurrentLogLevel() >= 4 && v20)
            {
              v22 = v20;
              if (os_log_type_enabled(v22, v21))
              {
                v23 = [(WFNetworkListController *)v32 wifiClient];
                v24 = [v23 whitelistingUUID];
                *buf = 136315650;
                v39 = "[WFNetworkListController scanManager:filterScanResults:]";
                v40 = 2112;
                v41 = v11;
                v42 = 2112;
                v43 = v24;
                _os_log_impl(&dword_273ECD000, v22, v21, "%s: disregarding network='%@' no matching policyUUID (%@)", buf, 0x20u);
              }
            }

            [v31 removeObject:v11];
          }
        }

        v9 = [obj countByEnumeratingWithState:&v34 objects:v44 count:16];
      }

      while (v9);
    }

    v25 = v31;
    v26 = v25;
    v5 = v29;
  }

  else
  {
    v25 = 0;
    v26 = v5;
  }

  v27 = *MEMORY[0x277D85DE8];

  return v26;
}

- (id)healthRecommendations:(BOOL)a3
{
  v3 = a3;
  v122 = *MEMORY[0x277D85DE8];
  v5 = [(WFNetworkListController *)self interface];
  v6 = [v5 currentNetwork];

  if (-[WFNetworkListController isHS20Supported](self, "isHS20Supported") && [v6 isHotspot20])
  {
    v7 = [v6 matchingKnownNetworkProfile];

    if (!v7)
    {
      v14 = [(WFNetworkListController *)self gasController];
      v15 = [v14 profileForNetwork:v6];
      goto LABEL_12;
    }

    v8 = WFLogForCategory(0);
    v9 = OSLogForWFLogLevel(3uLL);
    if (WFCurrentLogLevel() >= 3 && v8)
    {
      v10 = v8;
      if (os_log_type_enabled(v10, v9))
      {
        v11 = [v6 matchingKnownNetworkProfile];
        v118 = 136315394;
        v119 = "[WFNetworkListController healthRecommendations:]";
        v120 = 2112;
        v121 = v11;
        _os_log_impl(&dword_273ECD000, v10, v9, "%s: using matchingKnownNetworkProfile %@", &v118, 0x16u);
      }
    }

LABEL_11:
    v13 = [WFNetworkProfile alloc];
    v14 = [v6 matchingKnownNetworkProfile];
    v15 = [(WFNetworkProfile *)v13 initWithCoreWiFiProfile:v14];
LABEL_12:
    v16 = v15;

    goto LABEL_19;
  }

  v12 = [v6 matchingKnownNetworkProfile];

  if (v12)
  {
    goto LABEL_11;
  }

  v17 = WFLogForCategory(0);
  v18 = OSLogForWFLogLevel(4uLL);
  if (WFCurrentLogLevel() >= 4 && v17)
  {
    v19 = v17;
    if (os_log_type_enabled(v19, v18))
    {
      v118 = 138412290;
      v119 = v6;
      _os_log_impl(&dword_273ECD000, v19, v18, "Network='%@' is not a known network", &v118, 0xCu);
    }
  }

  v16 = 0;
LABEL_19:
  v20 = [v6 supportsWiFiHealth];
  v21 = [(WFNetworkListController *)self viewController];
  if (objc_opt_respondsToSelector())
  {
    v22 = [(WFNetworkListController *)self viewController];
    v23 = [v22 supportsHealthRecommendations];
  }

  else
  {
    v23 = 0;
  }

  if (((v3 | v23) & v20 & 1) == 0)
  {
    v27 = 0;
    v28 = 0;
    goto LABEL_114;
  }

  v24 = [(WFNetworkListController *)self wifiClient];
  v25 = [v24 isWiFiHealthUIDisabled];

  if (!v25)
  {
    v26 = [(WFNetworkListController *)self healthManager];
    v27 = [v26 currentNetworkIssues];

    v28 = [MEMORY[0x277CBEB58] set];
    if ([v27 count])
    {
      v29 = [v27 allObjects];
      [OUTLINED_FUNCTION_2_1() addObjectsFromArray:?];
    }

    v30 = [(WFNetworkListController *)self healthRecommendationOverrides];

    v31 = 0x277D7B000;
    if (!v30)
    {
      goto LABEL_83;
    }

    v32 = [(WFNetworkListController *)self healthRecommendationOverrides];
    v33 = [v32 hiddenNetwork];

    v34 = [(WFNetworkListController *)self healthRecommendationOverrides];
    v35 = [v34 securityOverride];

    if (v35 == 1)
    {
      v36 = MEMORY[0x277D7B9C0];
      v37 = v33 == 0;
      v38 = 8;
      v39 = 64;
    }

    else
    {
      v40 = [(WFNetworkListController *)self healthRecommendationOverrides];
      v41 = [v40 securityOverride];

      if (v41 == 2)
      {
        v36 = MEMORY[0x277D7B9C0];
        v37 = v33 == 0;
        v38 = 2;
        v39 = 256;
      }

      else
      {
        v42 = [(WFNetworkListController *)self healthRecommendationOverrides];
        v43 = [v42 securityOverride];

        if (v43 != 3)
        {
          goto LABEL_49;
        }

        v36 = MEMORY[0x277D7B9C0];
        v37 = v33 == 0;
        v38 = 4;
        v39 = 128;
      }
    }

    if (v37)
    {
      v44 = v38;
    }

    else
    {
      v44 = v39;
    }

    v42 = [v36 issueWithType:v44];

    [v42 setOverrideIssue:1];
    if (v42)
    {
      [MEMORY[0x277D7B9C0] issueWithType:8];
      objc_claimAutoreleasedReturnValue();
      v45 = [OUTLINED_FUNCTION_0_3() containsObject:?];

      if (v45)
      {
        [MEMORY[0x277D7B9C0] issueWithType:8];
        objc_claimAutoreleasedReturnValue();
        [OUTLINED_FUNCTION_0_3() removeObject:?];
      }

      [MEMORY[0x277D7B9C0] issueWithType:2];
      objc_claimAutoreleasedReturnValue();
      v46 = [OUTLINED_FUNCTION_0_3() containsObject:?];

      if (v46)
      {
        [MEMORY[0x277D7B9C0] issueWithType:2];
        objc_claimAutoreleasedReturnValue();
        [OUTLINED_FUNCTION_0_3() removeObject:?];
      }

      [MEMORY[0x277D7B9C0] issueWithType:4];
      objc_claimAutoreleasedReturnValue();
      v47 = [OUTLINED_FUNCTION_0_3() containsObject:?];

      if (v47)
      {
        [MEMORY[0x277D7B9C0] issueWithType:4];
        objc_claimAutoreleasedReturnValue();
        [OUTLINED_FUNCTION_0_3() removeObject:?];
      }

      [MEMORY[0x277D7B9C0] issueWithType:64];
      objc_claimAutoreleasedReturnValue();
      v48 = [OUTLINED_FUNCTION_0_3() containsObject:?];

      if (v48)
      {
        [MEMORY[0x277D7B9C0] issueWithType:64];
        objc_claimAutoreleasedReturnValue();
        [OUTLINED_FUNCTION_0_3() removeObject:?];
      }

      [MEMORY[0x277D7B9C0] issueWithType:256];
      objc_claimAutoreleasedReturnValue();
      v49 = [OUTLINED_FUNCTION_0_3() containsObject:?];

      if (v49)
      {
        [MEMORY[0x277D7B9C0] issueWithType:256];
        objc_claimAutoreleasedReturnValue();
        [OUTLINED_FUNCTION_0_3() removeObject:?];
      }

      [MEMORY[0x277D7B9C0] issueWithType:128];
      objc_claimAutoreleasedReturnValue();
      v50 = [OUTLINED_FUNCTION_0_3() containsObject:?];

      if (v50)
      {
        [MEMORY[0x277D7B9C0] issueWithType:128];
        objc_claimAutoreleasedReturnValue();
        [OUTLINED_FUNCTION_0_3() removeObject:?];
      }

      goto LABEL_51;
    }

LABEL_49:
    if (!v33)
    {
      goto LABEL_52;
    }

    v51 = [MEMORY[0x277D7B9C0] issueWithType:0x4000];
    OUTLINED_FUNCTION_7_0(v51, v52);
LABEL_51:
    [OUTLINED_FUNCTION_2_1() addObject:?];

LABEL_52:
    v53 = [(WFNetworkListController *)self healthRecommendationOverrides];
    v54 = [v53 noInternetConnection];

    if (v54)
    {
      v55 = [MEMORY[0x277D7B9C0] issueWithType:1];
      OUTLINED_FUNCTION_7_0(v55, v56);
      [OUTLINED_FUNCTION_2_1() addObject:?];
    }

    v57 = [(WFNetworkListController *)self healthRecommendationOverrides];
    v58 = [v57 legacyPHY];

    if (v58)
    {
      v59 = [MEMORY[0x277D7B9C0] issueWithType:16];
      OUTLINED_FUNCTION_7_0(v59, v60);
      [OUTLINED_FUNCTION_2_1() addObject:?];
    }

    v61 = [(WFNetworkListController *)self healthRecommendationOverrides];
    v62 = [v61 commonSSID];

    if (v62)
    {
      v63 = [MEMORY[0x277D7B9C0] issueWithType:32];
      OUTLINED_FUNCTION_7_0(v63, v64);
      [OUTLINED_FUNCTION_2_1() addObject:?];
    }

    v65 = [(WFNetworkListController *)self healthRecommendationOverrides];
    v66 = [v65 carrierNetwork];

    if (v66)
    {
      v67 = [MEMORY[0x277D7B9F8] carrierNetworkIssue];
      OUTLINED_FUNCTION_7_0(v67, v68);
      [OUTLINED_FUNCTION_2_1() addObject:?];
    }

    v69 = [(WFNetworkListController *)self healthRecommendationOverrides];
    v70 = [v69 dnsFiltered];

    if (v70)
    {
      v71 = [MEMORY[0x277D7B9F8] dnsFilteredNetworkIssue];
      OUTLINED_FUNCTION_7_0(v71, v72);
      [OUTLINED_FUNCTION_2_1() addObject:?];
    }

    v73 = [(WFNetworkListController *)self healthRecommendationOverrides];
    v74 = [v73 poorCoverageOverride];

    if (v74)
    {
      v75 = [MEMORY[0x277D7B9C0] issueWithType:0x100000];
      OUTLINED_FUNCTION_7_0(v75, v76);
      [OUTLINED_FUNCTION_2_1() addObject:?];
    }

    v77 = [(WFNetworkListController *)self healthRecommendationOverrides];
    v78 = [v77 privateAddressOverride];

    v31 = 0x277D7B000uLL;
    if (v78)
    {
      v79 = [(WFNetworkListController *)self healthRecommendationOverrides];
      v80 = [v79 privateAddressOverride];

      if (v80 == 1)
      {
        v81 = [MEMORY[0x277D7B9F8] privateAddressDisabledBySystemIssue];
      }

      else
      {
        v79 = [(WFNetworkListController *)self healthRecommendationOverrides];
        v83 = [v79 privateAddressOverride];

        if (v83 == 2)
        {
          v81 = [MEMORY[0x277D7B9F8] privateAddressDisabledByCarrierIssueWithCarrierName:@"Carrier"];
        }

        else
        {
          v79 = [(WFNetworkListController *)self healthRecommendationOverrides];
          v84 = [v79 privateAddressOverride];

          if (v84 != 3)
          {
            goto LABEL_72;
          }

          v81 = [MEMORY[0x277D7B9F8] privateAddressDisabledByProfileIssueWithOrganizationName:@"Organization" profileName:@"ProfileName" profileUUID:@"UUID"];
        }
      }

      OUTLINED_FUNCTION_7_0(v81, v82);
      [OUTLINED_FUNCTION_2_1() addObject:?];
    }

LABEL_72:
    v85 = [(WFNetworkListController *)self healthRecommendationOverrides];
    v86 = [v85 cellularOutrankStateOverride];

    if (v86)
    {
      v87 = [(WFNetworkListController *)self healthRecommendationOverrides];
      v88 = [v87 cellularOutrankStateOverride];

      if (v88 == 1)
      {
        v89 = [MEMORY[0x277D7B9A0] cellularOutrankDownload];
LABEL_82:
        OUTLINED_FUNCTION_7_0(v89, v90);
        [OUTLINED_FUNCTION_2_1() addObject:?];

        goto LABEL_83;
      }

      v87 = [(WFNetworkListController *)self healthRecommendationOverrides];
      v91 = [v87 cellularOutrankStateOverride];

      if (v91 == 3)
      {
        v89 = [MEMORY[0x277D7B9A0] cellularOutrankPerformance];
        goto LABEL_82;
      }

      v87 = [(WFNetworkListController *)self healthRecommendationOverrides];
      v92 = [v87 cellularOutrankStateOverride];

      if (v92 == 2)
      {
        v89 = [MEMORY[0x277D7B9A0] cellularOutrankSecurity];
        goto LABEL_82;
      }

      v87 = [(WFNetworkListController *)self healthRecommendationOverrides];
      v93 = [v87 cellularOutrankStateOverride];

      if (v93 == 8)
      {
        v89 = [MEMORY[0x277D7B9A0] cellularOutrankPrivateNetwork];
        goto LABEL_82;
      }
    }

LABEL_83:
    if ([v16 canExposeIMSI])
    {
      v94 = [MEMORY[0x277D7B9F8] carrierNetworkIssue];
      [OUTLINED_FUNCTION_2_1() addObject:?];
    }

    if ([v16 isDNSHeuristicsFiltered])
    {
      v95 = [MEMORY[0x277D7B9F8] dnsFilteredNetworkIssue];
      [OUTLINED_FUNCTION_2_1() addObject:?];
    }

    v96 = [v6 privateAddressConfig];
    v97 = [v96 disabledReason];

    if (v97)
    {
      v98 = WFLogForCategory(0);
      v99 = OSLogForWFLogLevel(4uLL);
      if (WFCurrentLogLevel() >= 4 && v98)
      {
        v100 = v98;
        if (os_log_type_enabled(v100, v99))
        {
          [v6 privateAddressConfig];
          v102 = v101 = v31;
          v118 = 136315394;
          v119 = "[WFNetworkListController healthRecommendations:]";
          v120 = 2112;
          v121 = v102;
          _os_log_impl(&dword_273ECD000, v100, v99, "%s: network.privateAddressConfig %@", &v118, 0x16u);

          v31 = v101;
        }
      }

      if (v16)
      {
        v103 = [v16 originatorName];
      }

      else
      {
        v103 = 0;
      }

      v104 = [v6 privateAddressConfig];
      v105 = [v104 disabledReason];

      switch(v105)
      {
        case 1:
          [MEMORY[0x277D7B9F8] privateAddressDisabledByUserIssue];
          objc_claimAutoreleasedReturnValue();
          goto LABEL_104;
        case 2:
          [MEMORY[0x277D7B9F8] privateAddressDisabledBySystemIssue];
          objc_claimAutoreleasedReturnValue();
          goto LABEL_104;
        case 3:
          [MEMORY[0x277D7B9F8] privateAddressDisabledByCarrierIssueWithCarrierName:0];
          objc_claimAutoreleasedReturnValue();
          goto LABEL_104;
        case 4:
          if (v103)
          {
            v106 = v103;
          }

          else
          {
            v106 = 0;
          }

          [MEMORY[0x277D7B9F8] privateAddressDisabledByProfileIssueWithOrganizationName:v106 profileName:0 profileUUID:0];
          objc_claimAutoreleasedReturnValue();
LABEL_104:
          [OUTLINED_FUNCTION_0_3() addObject:?];

          break;
        default:
          break;
      }
    }

    v107 = [(WFNetworkListController *)self wifiClient];
    v108 = [v107 isCellularOutrankingWiFi];

    if (v108)
    {
      v109 = [(WFNetworkListController *)self wifiClient];
      v110 = [v109 cellularOutrankState];

      switch(v110)
      {
        case 1:
          v111 = [*(v31 + 2464) cellularOutrankSecurity];
          goto LABEL_112;
        case 2:
          v111 = [*(v31 + 2464) cellularOutrankPerformance];
          goto LABEL_112;
        case 3:
        case 4:
          v111 = [*(v31 + 2464) cellularOutrankDownload];
          goto LABEL_112;
        case 5:
          v111 = [*(v31 + 2464) cellularOutrankPrivateNetwork];
LABEL_112:
          v112 = v111;
          [v28 addObject:v111];
          goto LABEL_113;
        default:
          goto LABEL_114;
      }
    }

    goto LABEL_114;
  }

  v112 = WFLogForCategory(0);
  v117 = OSLogForWFLogLevel(3uLL);
  v27 = 0;
  if (WFCurrentLogLevel() >= 3 && v112)
  {
    if (os_log_type_enabled(v112, v117))
    {
      v118 = 136315138;
      v119 = "[WFNetworkListController healthRecommendations:]";
      _os_log_impl(&dword_273ECD000, v112, v117, "%s: health ui is disabled", &v118, 0xCu);
    }

    v27 = 0;
    v28 = 0;
  }

  else
  {
    v28 = 0;
  }

LABEL_113:

LABEL_114:
  if ([v28 count])
  {
    v113 = v28;
  }

  else
  {
    v113 = 0;
  }

  v114 = v113;

  v115 = *MEMORY[0x277D85DE8];
  return v113;
}

- (id)airportSettingsViewController:(id)a3 unconfiguredAccessoriesGroupHeaderTitle:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (v6)
  {
    v20 = v5;
    v7 = objc_alloc_init(MEMORY[0x277CCA940]);
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v22;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v22 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v21 + 1) + 8 * i);
          if ([v13 isUnconfiguredAccessory])
          {
            v14 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v13, "unconfiguredAccessoryType")}];
            [v7 addObject:v14];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v10);
    }

    if ([v7 count])
    {
      if (![v7 countForObject:&unk_2883048A0] || objc_msgSend(v7, "countForObject:", &unk_2883048B8) || objc_msgSend(v7, "countForObject:", &unk_2883048D0) || objc_msgSend(v7, "countForObject:", &unk_2883048E8))
      {
        v5 = v20;
        if ([v7 countForObject:&unk_2883048A0] && objc_msgSend(v7, "countForObject:", &unk_2883048B8) && !objc_msgSend(v7, "countForObject:", &unk_2883048D0) && !objc_msgSend(v7, "countForObject:", &unk_2883048E8))
        {
          v15 = @"kWFUnconfiguredAirportAndAirPlaySectionTitle";
        }

        else if ([v7 countForObject:&unk_2883048A0] || !objc_msgSend(v7, "countForObject:", &unk_2883048B8) || objc_msgSend(v7, "countForObject:", &unk_2883048D0) || objc_msgSend(v7, "countForObject:", &unk_2883048E8))
        {
          v15 = @"kWFUnconfiguredDevicesSectionTitle";
        }

        else
        {
          v15 = @"kWFUnconfiguredAirPlaySectionTitle";
        }
      }

      else
      {
        v15 = @"kWFUnconfiguredAirportSectionTitle";
        v5 = v20;
      }

      v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v17 = [v16 localizedStringForKey:v15 value:&stru_2882E4AD8 table:@"WiFiKitLocalizableStrings"];
    }

    else
    {
      v17 = 0;
      v5 = v20;
    }
  }

  else
  {
    v7 = 0;
    v17 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (void)_updateViewsForNetworks:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4)
  {
    v7 = WFLogForCategory(0);
    OSLogForWFLogLevel(3uLL);
    if (WFCurrentLogLevel() >= 3 && v7 && OUTLINED_FUNCTION_4())
    {
      OUTLINED_FUNCTION_4_1(&dword_273ECD000, v9, v10, "%s: nil networks", v11, v12, v13, v14, 2u);
    }

    goto LABEL_4;
  }

  v5 = [(WFNetworkListController *)self viewController];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(WFNetworkListController *)self viewController];
    [v7 updateViewsForNetworks:v4];
LABEL_4:
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithViewController:viewProvider:client:.cold.1()
{
  WFLogForCategory(0);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_8_0();
  if (WFCurrentLogLevel() && v0 && OUTLINED_FUNCTION_9())
  {
    OUTLINED_FUNCTION_6_0();
    _os_log_impl(v1, v2, v3, v4, v5, 2u);
  }
}

- (void)scanManager:didFindHotspotHelperNetworks:.cold.1()
{
  v0 = *MEMORY[0x277D85DE8];
  v1 = OUTLINED_FUNCTION_5_0();
  v2 = WFLogForCategory(v1);
  OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v2 && OUTLINED_FUNCTION_9())
  {
    OUTLINED_FUNCTION_6_0();
    _os_log_impl(v3, v4, v5, v6, v7, 0xCu);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)scanManager:didFindHotspotHelperNetworks:.cold.2()
{
  v0 = *MEMORY[0x277D85DE8];
  v1 = OUTLINED_FUNCTION_5_0();
  v2 = WFLogForCategory(v1);
  OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v2 && OUTLINED_FUNCTION_9())
  {
    OUTLINED_FUNCTION_6_0();
    _os_log_impl(v3, v4, v5, v6, v7, 0xCu);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_openHomeAppForNetwork:(uint64_t *)a1 .cold.1(uint64_t *a1)
{
  v2 = *MEMORY[0x277D85DE8];
  v3 = OUTLINED_FUNCTION_5_0();
  v4 = WFLogForCategory(v3);
  OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v4 && OUTLINED_FUNCTION_4())
  {
    OUTLINED_FUNCTION_4_1(&dword_273ECD000, v5, v6, "%s: nil network unconfiguredDeviceID", v7, v8, v9, v10, 2u);
  }

  *a1 = v4;
  v11 = *MEMORY[0x277D85DE8];
}

- (void)_openHomeAppForNetwork:(uint64_t *)a1 .cold.2(uint64_t *a1)
{
  v2 = *MEMORY[0x277D85DE8];
  v3 = OUTLINED_FUNCTION_5_0();
  v4 = WFLogForCategory(v3);
  OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v4 && OUTLINED_FUNCTION_4())
  {
    OUTLINED_FUNCTION_4_1(&dword_273ECD000, v5, v6, "%s: nil network", v7, v8, v9, v10, 2u);
  }

  *a1 = v4;
  v11 = *MEMORY[0x277D85DE8];
}

- (void)_interfaceDidBecomeAvailable:.cold.1()
{
  v1 = *MEMORY[0x277D85DE8];
  v2 = OUTLINED_FUNCTION_5_0();
  WFLogForCategory(v2);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_8_0();
  if (WFCurrentLogLevel() && v0 && OUTLINED_FUNCTION_9())
  {
    OUTLINED_FUNCTION_6_0();
    _os_log_impl(v3, v4, v5, v6, v7, 0xCu);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)handleURL:.cold.1()
{
  v1 = *MEMORY[0x277D85DE8];
  v2 = OUTLINED_FUNCTION_5_0();
  WFLogForCategory(v2);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_8_0();
  if (WFCurrentLogLevel() && v0 && OUTLINED_FUNCTION_10())
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1(&dword_273ECD000, v3, v4, "%s: unable to create WiFiNetworkRef from scan dictionary: %@", v5, v6, v7, v8, 2u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)handleURL:.cold.2()
{
  v1 = *MEMORY[0x277D85DE8];
  v2 = OUTLINED_FUNCTION_5_0();
  WFLogForCategory(v2);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_8_0();
  if (WFCurrentLogLevel() && v0 && OUTLINED_FUNCTION_10())
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1(&dword_273ECD000, v3, v4, "%s: Unable to serialize LastEnterpriseNetwork.plist (error %@)", v5, v6, v7, v8, 2u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)handleURL:.cold.3()
{
  v1 = *MEMORY[0x277D85DE8];
  v2 = OUTLINED_FUNCTION_5_0();
  WFLogForCategory(v2);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_8_0();
  if (WFCurrentLogLevel() && v0 && OUTLINED_FUNCTION_10())
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1(&dword_273ECD000, v3, v4, "%s: missing path param (url %@)", v5, v6, v7, v8, 2u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)handleURL:.cold.4()
{
  v1 = *MEMORY[0x277D85DE8];
  v2 = OUTLINED_FUNCTION_5_0();
  WFLogForCategory(v2);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_8_0();
  if (WFCurrentLogLevel() && v0 && OUTLINED_FUNCTION_10())
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1(&dword_273ECD000, v3, v4, "%s: missing path items (url %@)", v5, v6, v7, v8, 2u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_handleCurrentNetworkDetailsURL:(uint64_t *)a1 .cold.1(uint64_t *a1)
{
  v2 = *MEMORY[0x277D85DE8];
  v3 = OUTLINED_FUNCTION_5_0();
  v4 = WFLogForCategory(v3);
  OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v4 && OUTLINED_FUNCTION_4())
  {
    OUTLINED_FUNCTION_4_1(&dword_273ECD000, v5, v6, "%s: current network is nil", v7, v8, v9, v10, 2u);
  }

  *a1 = v4;
  v11 = *MEMORY[0x277D85DE8];
}

@end