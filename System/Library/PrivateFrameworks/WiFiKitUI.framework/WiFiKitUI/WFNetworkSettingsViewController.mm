@interface WFNetworkSettingsViewController
- (BOOL)_isAutoJoinConfigurable;
- (BOOL)_isChinaDevice;
- (BOOL)_isIPv4ConfigAuto;
- (BOOL)_shouldShowIPv6ForConfig:(id)config;
- (BOOL)_shouldShowRandomConfigSwith;
- (BOOL)_showDemoModeFeatureDisabledAlert;
- (BOOL)_showRecommendationSupportLink;
- (BOOL)tableView:(id)view shouldShowMenuForRowAtIndexPath:(id)path;
- (UISwitch)autoJoinSwitch;
- (UISwitch)autoLoginSwitch;
- (UISwitch)privacyProxyEnabledSwitch;
- (UISwitch)randomMACSwitch;
- (UISwitch)saveDataModeSwitch;
- (UITableViewCell)networkQualityCell;
- (WFHyperlinkFooterView)linkFooterView;
- (WFHyperlinkFooterView)networkQualityFooterView;
- (WFNetworkSettingsViewController)initWithConfig:(id)config detailsContext:(id)context hardwareMACAddress:(id)address;
- (WFNetworkSettingsViewController)initWithConfig:(id)config detailsContext:(id)context hardwareMACAddress:(id)address appearanceProxy:(id)proxy;
- (WFNetworkSettingsViewControllerDataCoordinator)dataCoordinator;
- (WFNetworkSettingsViewControllerDelegate)delegate;
- (double)tableView:(id)view estimatedHeightForFooterInSection:(int64_t)section;
- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section;
- (id)_WiFiModeFooterView;
- (id)_autoJoinRowsFromContext:(id)context;
- (id)_detailFooterForMode:(unint64_t)mode;
- (id)_displayStringForDisableMode:(int64_t)mode;
- (id)_lowDataModeFooterView;
- (id)_macAddressToDisplay;
- (id)_outrankedFooterView;
- (id)_passcodePromptForViewingPasswords;
- (id)_portalURL;
- (id)_privacyProxyEnabledFooterView;
- (id)_randomAddressToDisplay;
- (id)_randomMACFooterTextToDisplay;
- (id)_randomMACFooterView;
- (id)_sectionsFromConfig:(id)config context:(id)context;
- (id)_selectedPrivateModeForOption:(unint64_t)option;
- (id)_stringForSettingsSection:(int64_t)section;
- (id)_touchIDPromptForViewingPasswords;
- (id)_wifiPasswordContextOptions;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (id)tableView:(id)view viewForFooterInSection:(int64_t)section;
- (int64_t)_disableModeFromKey:(id)key;
- (int64_t)_sectionTypeAtSection:(int64_t)section;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (unint64_t)_selectedPrivateModeForString:(id)string;
- (void)_applicationWillResignActive:(id)active;
- (void)_autoJoinSwitchChanged:(id)changed;
- (void)_autoLoginSwitchChanged:(id)changed;
- (void)_contentSizeCategoryDidChange:(id)change;
- (void)_didDismissDetailViewController;
- (void)_didStartPresentingDetailViewController;
- (void)_fillNetworkQualityCell:(id)cell;
- (void)_httpProxyAuthChanged:(id)changed;
- (void)_httpProxyConfigChanged:(int64_t)changed;
- (void)_logSections:(id)sections;
- (void)_networkQualityOpenURL;
- (void)_openNetworkQualityDetails:(id)details;
- (void)_openRecommendationsLink:(id)link;
- (void)_presentDetailViewController:(id)controller;
- (void)_presentRenewLeaseAlertWithSourceRect:(CGRect)rect;
- (void)_privacyProxyEnabledSwitchChanged:(id)changed;
- (void)_promptForgetNetwork;
- (void)_promptOverrideWiFiOutrankedDev;
- (void)_pushPrivateModeSelectionViewController;
- (void)_reloadNetworkQuality;
- (void)_runNetworkQuality;
- (void)_saveConfig:(id)config;
- (void)_saveDataModeSwitchChanged:(id)changed;
- (void)_setupAccessoryHeader;
- (void)_updateManagedNetworkHeader;
- (void)_updatePrivateAddressMode:(unint64_t)mode;
- (void)_updateWiFiEMode:(int64_t)mode;
- (void)contentCachesContext:(id)context didUpdateNumOfContentCaches:(int)caches;
- (void)dealloc;
- (void)donePressed;
- (void)refreshConfig:(id)config;
- (void)scrollToCell:(unint64_t)cell;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view performAction:(SEL)action forRowAtIndexPath:(id)path withSender:(id)sender;
- (void)viewDidLoad;
@end

@implementation WFNetworkSettingsViewController

- (WFNetworkSettingsViewController)initWithConfig:(id)config detailsContext:(id)context hardwareMACAddress:(id)address
{
  addressCopy = address;
  contextCopy = context;
  configCopy = config;
  v11 = +[WFAppearanceProxy defaultAppearanceProxy];
  v12 = [(WFNetworkSettingsViewController *)self initWithConfig:configCopy detailsContext:contextCopy hardwareMACAddress:addressCopy appearanceProxy:v11];

  return v12;
}

- (WFNetworkSettingsViewController)initWithConfig:(id)config detailsContext:(id)context hardwareMACAddress:(id)address appearanceProxy:(id)proxy
{
  v40 = *MEMORY[0x277D85DE8];
  configCopy = config;
  contextCopy = context;
  addressCopy = address;
  proxyCopy = proxy;
  v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  if (v14 && (v35.receiver = self, v35.super_class = WFNetworkSettingsViewController, v15 = -[WFNetworkSettingsViewController initWithStyle:](&v35, sel_initWithStyle_, [proxyCopy tableViewStyle]), self = v15, configCopy) && v15)
  {
    v16 = [configCopy copy];
    config = self->_config;
    self->_config = v16;

    objc_storeStrong(&self->_context, context);
    objc_storeStrong(&self->_hardwareMACAddress, address);
    if (objc_opt_respondsToSelector())
    {
      privateAddressMode = [contextCopy privateAddressMode];
    }

    else
    {
      privateAddressMode = 0;
    }

    self->_privateAddressMode = privateAddressMode;
    randomMACAddress = [(WFDetailsProviderContext *)self->_context randomMACAddress];
    randomMACAddress = self->_randomMACAddress;
    self->_randomMACAddress = randomMACAddress;

    self->_randomFeatureEnabled = ([contextCopy requestedFields] & 0x400) != 0;
    objc_storeStrong(&self->_appearanceProxy, proxy);
    self->_isDeviceInDemoMode = 0;
    self->_isRandomMACManageFeatureEnabled = _os_feature_enabled_impl();
    self->_isRotatingTurnedOnForMigratedNetwork = 0;
    if (objc_opt_respondsToSelector())
    {
      scrollToCellType = [(WFDetailsProviderContext *)self->_context scrollToCellType];
      self->_scrollToCellType = scrollToCellType;
      [(WFNetworkSettingsViewController *)self scrollToCell:scrollToCellType];
    }

    if (objc_opt_respondsToSelector())
    {
      context = [(WFNetworkSettingsViewController *)self context];
      contentCachesContext = [context contentCachesContext];
      [contentCachesContext setDelegate:self];
    }

    if (objc_opt_class())
    {
      mEMORY[0x277D29510] = [MEMORY[0x277D29510] sharedInstance];
      v34 = 0;
      v25 = [mEMORY[0x277D29510] isStoreDemoModeEnabled:&v34];
      v26 = v34;
      self->_isDeviceInDemoMode = v25;

      v27 = WFLogForCategory(0);
      v28 = OSLogForWFLogLevel(4uLL);
      if (WFCurrentLogLevel() >= 4 && v27 && os_log_type_enabled(v27, v28))
      {
        isDeviceInDemoMode = self->_isDeviceInDemoMode;
        *buf = 136315394;
        v37 = "[WFNetworkSettingsViewController initWithConfig:detailsContext:hardwareMACAddress:appearanceProxy:]";
        v38 = 1024;
        v39 = isDeviceInDemoMode;
        _os_log_impl(&dword_273FB9000, v27, v28, "%s INIT : Device in demo mode ? [%hhu]", buf, 0x12u);
      }
    }

    else
    {
      v26 = WFLogForCategory(0);
      v33 = OSLogForWFLogLevel(1uLL);
      if (WFCurrentLogLevel() && v26 && os_log_type_enabled(v26, v33))
      {
        *buf = 136315138;
        v37 = "[WFNetworkSettingsViewController initWithConfig:detailsContext:hardwareMACAddress:appearanceProxy:]";
        _os_log_impl(&dword_273FB9000, v26, v33, "%s: INIT : runtime check failed for MSDKDemoState ", buf, 0xCu);
      }
    }

    if (objc_opt_respondsToSelector())
    {
      self->_allowViewPassword = [contextCopy isCredentialsVisible];
    }

    if (objc_opt_respondsToSelector())
    {
      daDevice = [contextCopy daDevice];
      self->_accessory = daDevice != 0;
    }

    self->_credentailCellTapped = 0;
    self->_detailViewControllerVisible = 0;
  }

  else
  {

    self = 0;
  }

  v31 = *MEMORY[0x277D85DE8];
  return self;
}

- (void)viewDidLoad
{
  v26.receiver = self;
  v26.super_class = WFNetworkSettingsViewController;
  [(WFNetworkSettingsViewController *)&v26 viewDidLoad];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel__contentSizeCategoryDidChange_ name:*MEMORY[0x277D76810] object:0];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel__applicationWillResignActive_ name:*MEMORY[0x277D76768] object:0];

  backgroundColor = [(WFNetworkSettingsViewController *)self backgroundColor];

  if (backgroundColor)
  {
    backgroundColor2 = [(WFNetworkSettingsViewController *)self backgroundColor];
    tableView = [(WFNetworkSettingsViewController *)self tableView];
    [tableView setBackgroundColor:backgroundColor2];
  }

  context = [(WFNetworkSettingsViewController *)self context];
  v9 = [(WFNetworkSettingsViewController *)self _autoJoinRowsFromContext:context];
  [(WFNetworkSettingsViewController *)self setAutoJoinSectionRows:v9];

  config = [(WFNetworkSettingsViewController *)self config];
  context2 = [(WFNetworkSettingsViewController *)self context];
  v12 = [(WFNetworkSettingsViewController *)self _sectionsFromConfig:config context:context2];
  [(WFNetworkSettingsViewController *)self setSections:v12];

  sections = [(WFNetworkSettingsViewController *)self sections];
  [(WFNetworkSettingsViewController *)self _logSections:sections];

  v14 = [WFNetworkSettingsCellFactory alloc];
  tableView2 = [(WFNetworkSettingsViewController *)self tableView];
  v16 = [(WFNetworkSettingsCellFactory *)v14 initWithTableView:tableView2];
  [(WFNetworkSettingsViewController *)self setCellFactory:v16];

  config2 = [(WFNetworkSettingsViewController *)self config];
  displayFriendlyName = [config2 displayFriendlyName];
  [(WFNetworkSettingsViewController *)self setTitle:displayFriendlyName];

  if ([MEMORY[0x277D75418] currentIsIPad])
  {
    tableView3 = [(WFNetworkSettingsViewController *)self tableView];
    [tableView3 _setSectionContentInset:{0.0, 20.0, 0.0, 20.0}];
  }

  v20 = *MEMORY[0x277D76F30];
  tableView4 = [(WFNetworkSettingsViewController *)self tableView];
  [tableView4 setRowHeight:v20];

  tableView5 = [(WFNetworkSettingsViewController *)self tableView];
  [tableView5 setEstimatedRowHeight:v20];

  tableView6 = [(WFNetworkSettingsViewController *)self tableView];
  [tableView6 setSectionFooterHeight:v20];

  tableView7 = [(WFNetworkSettingsViewController *)self tableView];
  [tableView7 setEstimatedSectionHeaderHeight:0.0];

  tableView8 = [(WFNetworkSettingsViewController *)self tableView];
  [tableView8 setEstimatedSectionFooterHeight:v20];

  [(WFNetworkSettingsViewController *)self _updateManagedNetworkHeader];
  if (_os_feature_enabled_impl())
  {
    [(WFNetworkSettingsViewController *)self _setupAccessoryHeader];
  }
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = WFNetworkSettingsViewController;
  [(WFNetworkSettingsViewController *)&v4 dealloc];
}

- (void)refreshConfig:(id)config
{
  v19 = *MEMORY[0x277D85DE8];
  configCopy = config;
  v5 = [(WFNetworkSettingsConfig *)self->_config isEqual:configCopy];
  if (!configCopy || v5)
  {
    tableView = WFLogForCategory(0);
    v16 = OSLogForWFLogLevel(4uLL);
    if (WFCurrentLogLevel() >= 4 && tableView && os_log_type_enabled(tableView, v16))
    {
      v17 = 136315138;
      configCopy2 = "[WFNetworkSettingsViewController refreshConfig:]";
      _os_log_impl(&dword_273FB9000, tableView, v16, "%s- config was unchanged.", &v17, 0xCu);
    }
  }

  else
  {
    v6 = [configCopy copy];
    [(WFNetworkSettingsViewController *)self setConfig:v6];

    config = [(WFNetworkSettingsViewController *)self config];
    context = [(WFNetworkSettingsViewController *)self context];
    v9 = [(WFNetworkSettingsViewController *)self _sectionsFromConfig:config context:context];
    [(WFNetworkSettingsViewController *)self setSections:v9];

    v10 = WFLogForCategory(0);
    v11 = OSLogForWFLogLevel(3uLL);
    if (WFCurrentLogLevel() >= 3 && v10 && os_log_type_enabled(v10, v11))
    {
      config = self->_config;
      v17 = 138412290;
      configCopy2 = config;
      _os_log_impl(&dword_273FB9000, v10, v11, "Refreshed settings config %@", &v17, 0xCu);
    }

    sections = [(WFNetworkSettingsViewController *)self sections];
    [(WFNetworkSettingsViewController *)self _logSections:sections];

    tableView = [(WFNetworkSettingsViewController *)self tableView];
    [tableView reloadData];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (id)_autoJoinRowsFromContext:(id)context
{
  contextCopy = context;
  array = [MEMORY[0x277CBEB18] array];
  config = [(WFNetworkSettingsViewController *)self config];
  autoJoinConfigurable = [config autoJoinConfigurable];

  if (autoJoinConfigurable)
  {
    [array addObject:&unk_2883227C8];
  }

  config2 = [(WFNetworkSettingsViewController *)self config];
  autoLoginConfigurable = [config2 autoLoginConfigurable];

  if (autoLoginConfigurable)
  {
    [array addObject:&unk_2883227E0];
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && ![(WFNetworkSettingsViewController *)self isAccessory])
  {
    username = [contextCopy username];
    v11 = [username length];

    if (v11)
    {
      [array addObject:&unk_2883227F8];
    }
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && ![(WFNetworkSettingsViewController *)self isAccessory])
  {
    password = [contextCopy password];
    v13 = [password length];

    if (v13)
    {
      [array addObject:&unk_288322810];
    }
  }

  return array;
}

- (id)_sectionsFromConfig:(id)config context:(id)context
{
  configCopy = config;
  contextCopy = context;
  array = [MEMORY[0x277CBEB18] array];
  if (![(WFNetworkSettingsViewController *)self isAccessory])
  {
    healthRecommendations = [configCopy healthRecommendations];
    v10 = [healthRecommendations count];

    if (v10)
    {
      [array addObject:&unk_2883227C8];
    }

    _portalURL = [(WFNetworkSettingsViewController *)self _portalURL];

    if (_portalURL)
    {
      [array addObject:&unk_2883227E0];
    }
  }

  if ([configCopy diagnosable])
  {
    [array addObject:&unk_288322828];
  }

  if (([contextCopy requestedFields] & 0x1000) != 0 || (objc_msgSend(contextCopy, "requestedFields") & 0x4000) != 0)
  {
    [array addObject:&unk_288322840];
  }

  if ([configCopy joinable])
  {
    [array addObject:&unk_2883227F8];
  }

  if ([configCopy forgetable])
  {
    [array addObject:&unk_288322858];
  }

  if (![(WFNetworkSettingsViewController *)self isAccessory])
  {
    autoJoinSectionRows = [(WFNetworkSettingsViewController *)self autoJoinSectionRows];
    v13 = [autoJoinSectionRows count];

    if (v13)
    {
      [array addObject:&unk_288322810];
    }

    if ([configCopy saveDataModeConfigurable])
    {
      [array addObject:&unk_288322870];
    }

    if ((objc_opt_respondsToSelector() & 1) != 0 && [contextCopy isWifiModeConfigurable])
    {
      [array addObject:&unk_288322888];
    }

    if (self->_randomFeatureEnabled)
    {
      [array addObject:&unk_2883228A0];
    }

    if ([configCopy privacyProxyTierStatus])
    {
      [array addObject:&unk_2883228B8];
    }

    if ([configCopy networkQualityVisible])
    {
      if (![(WFNetworkSettingsViewController *)self _isChinaDevice])
      {
        [configCopy networkQualityResponsiveness];
        if (v14 != 0.0 || (-[WFNetworkSettingsViewController context](self, "context"), v15 = objc_claimAutoreleasedReturnValue(), v16 = [v15 isCurrent], v15, v16))
        {
          [array addObject:&unk_2883228D0];
        }
      }
    }
  }

  [array addObject:&unk_2883228E8];
  if ([(WFNetworkSettingsViewController *)self _shouldShowIPv6ForConfig:configCopy])
  {
    [array addObject:&unk_288322900];
  }

  [array addObject:&unk_288322918];
  if ([configCopy httpProxyConfigurable])
  {
    [array addObject:&unk_288322930];
  }

  if ([configCopy manageable])
  {
    [array addObject:&unk_288322948];
  }

  if ([configCopy current])
  {
    if (objc_opt_respondsToSelector())
    {
      contentCachesContext = [contextCopy contentCachesContext];
      numOfContentCaches = [contentCachesContext numOfContentCaches];

      if (numOfContentCaches >= 1)
      {
        [array addObject:&unk_288322960];
      }
    }
  }

  return array;
}

- (void)_httpProxyConfigChanged:(int64_t)changed
{
  v61[1] = *MEMORY[0x277D85DE8];
  config = [(WFNetworkSettingsViewController *)self config];
  httpProxyConfig = [config httpProxyConfig];

  if (httpProxyConfig != changed)
  {
    config2 = [(WFNetworkSettingsViewController *)self config];
    httpProxyConfig2 = [config2 httpProxyConfig];

    config3 = [(WFNetworkSettingsViewController *)self config];
    httpProxyAuthenticationRequired = [config3 httpProxyAuthenticationRequired];

    config4 = [(WFNetworkSettingsViewController *)self config];
    [config4 setHttpProxyConfig:changed];

    if (changed != 1 && httpProxyAuthenticationRequired)
    {
      config5 = [(WFNetworkSettingsViewController *)self config];
      [config5 setHttpProxyAuthenticationRequired:0];
    }

    sections = [(WFNetworkSettingsViewController *)self sections];
    v14 = [sections indexOfObject:&unk_288322930];

    if (changed == 2)
    {
      if (httpProxyConfig2 == 1)
      {
        tableView = [(WFNetworkSettingsViewController *)self tableView];
        [tableView beginUpdates];

        tableView2 = [(WFNetworkSettingsViewController *)self tableView];
        v35 = [MEMORY[0x277CCAA70] indexPathForRow:2 inSection:v14];
        v57[0] = v35;
        v36 = [MEMORY[0x277CCAA70] indexPathForRow:3 inSection:v14];
        v57[1] = v36;
        v37 = [MEMORY[0x277CBEA60] arrayWithObjects:v57 count:2];
        [tableView2 deleteRowsAtIndexPaths:v37 withRowAnimation:0];

        if (httpProxyAuthenticationRequired)
        {
          tableView3 = [(WFNetworkSettingsViewController *)self tableView];
          v39 = [MEMORY[0x277CCAA70] indexPathForRow:4 inSection:v14];
          v56[0] = v39;
          v40 = [MEMORY[0x277CCAA70] indexPathForRow:5 inSection:v14];
          v56[1] = v40;
          v41 = [MEMORY[0x277CBEA60] arrayWithObjects:v56 count:2];
          [tableView3 deleteRowsAtIndexPaths:v41 withRowAnimation:0];
        }

        tableView4 = [(WFNetworkSettingsViewController *)self tableView];
        [tableView4 endUpdates];

        tableView5 = [(WFNetworkSettingsViewController *)self tableView];
        v16 = [MEMORY[0x277CCAA70] indexPathForRow:1 inSection:v14];
        v55 = v16;
        v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v55 count:1];
        [tableView5 reloadRowsAtIndexPaths:v17 withRowAnimation:0];
        goto LABEL_21;
      }

      if (httpProxyConfig2)
      {
LABEL_23:
        config6 = [(WFNetworkSettingsViewController *)self config];
        [config6 setHttpProxyConfig:changed];

        tableView6 = [(WFNetworkSettingsViewController *)self tableView];
        v45 = [MEMORY[0x277CCAA78] indexSetWithIndex:v14];
        [tableView6 reloadSections:v45 withRowAnimation:5];

        goto LABEL_24;
      }

      tableView7 = [(WFNetworkSettingsViewController *)self tableView];
      v31 = [MEMORY[0x277CCAA70] indexPathForRow:1 inSection:v14];
      v58 = v31;
      v32 = [MEMORY[0x277CBEA60] arrayWithObjects:&v58 count:1];
      [tableView7 insertRowsAtIndexPaths:v32 withRowAnimation:0];

      tableView5 = [(WFNetworkSettingsViewController *)self tableView];
      v28 = MEMORY[0x277CCAA70];
      v29 = 1;
    }

    else
    {
      if (changed != 1)
      {
        if (!changed)
        {
          if (httpProxyConfig2 == 1)
          {
            v47 = MEMORY[0x277CBEB18];
            v48 = [MEMORY[0x277CCAA70] indexPathForRow:1 inSection:v14];
            v49 = [MEMORY[0x277CCAA70] indexPathForRow:2 inSection:v14];
            v50 = [MEMORY[0x277CCAA70] indexPathForRow:3 inSection:v14];
            v51 = [v47 arrayWithObjects:{v48, v49, v50, 0}];

            if (httpProxyAuthenticationRequired)
            {
              v52 = [MEMORY[0x277CCAA70] indexPathForRow:4 inSection:v14];
              [v51 addObject:v52];

              v53 = [MEMORY[0x277CCAA70] indexPathForRow:5 inSection:v14];
              [v51 addObject:v53];
            }

            tableView8 = [(WFNetworkSettingsViewController *)self tableView];
            [tableView8 deleteRowsAtIndexPaths:v51 withRowAnimation:0];

            goto LABEL_23;
          }

          if (httpProxyConfig2 == 2)
          {
            tableView5 = [(WFNetworkSettingsViewController *)self tableView];
            v16 = [MEMORY[0x277CCAA70] indexPathForRow:1 inSection:v14];
            v61[0] = v16;
            v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v61 count:1];
            [tableView5 deleteRowsAtIndexPaths:v17 withRowAnimation:0];
LABEL_21:

            goto LABEL_22;
          }
        }

        goto LABEL_23;
      }

      tableView9 = [(WFNetworkSettingsViewController *)self tableView];
      [tableView9 beginUpdates];

      if (httpProxyConfig2 == 2)
      {
        tableView10 = [(WFNetworkSettingsViewController *)self tableView];
        v20 = [MEMORY[0x277CCAA70] indexPathForRow:1 inSection:v14];
        v60 = v20;
        v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v60 count:1];
        [tableView10 deleteRowsAtIndexPaths:v21 withRowAnimation:0];
      }

      tableView11 = [(WFNetworkSettingsViewController *)self tableView];
      v23 = [MEMORY[0x277CCAA70] indexPathForRow:1 inSection:v14];
      v59[0] = v23;
      v24 = [MEMORY[0x277CCAA70] indexPathForRow:2 inSection:v14];
      v59[1] = v24;
      v25 = [MEMORY[0x277CCAA70] indexPathForRow:3 inSection:v14];
      v59[2] = v25;
      v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v59 count:3];
      [tableView11 insertRowsAtIndexPaths:v26 withRowAnimation:0];

      tableView12 = [(WFNetworkSettingsViewController *)self tableView];
      [tableView12 endUpdates];

      tableView5 = [(WFNetworkSettingsViewController *)self tableView];
      v28 = MEMORY[0x277CCAA70];
      v29 = 3;
    }

    v16 = [v28 indexPathForRow:v29 inSection:v14];
    [tableView5 scrollToRowAtIndexPath:v16 atScrollPosition:3 animated:1];
LABEL_22:

    goto LABEL_23;
  }

LABEL_24:
  v46 = *MEMORY[0x277D85DE8];
}

- (void)_httpProxyAuthChanged:(id)changed
{
  v19[2] = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  isOn = [changedCopy isOn];
  config = [(WFNetworkSettingsViewController *)self config];
  [config setHttpProxyAuthenticationRequired:isOn];

  sections = [(WFNetworkSettingsViewController *)self sections];
  v8 = [sections indexOfObject:&unk_288322930];

  isOn2 = [changedCopy isOn];
  tableView = [(WFNetworkSettingsViewController *)self tableView];
  v11 = [MEMORY[0x277CCAA70] indexPathForRow:4 inSection:v8];
  v12 = v11;
  if (isOn2)
  {
    v19[0] = v11;
    v13 = [MEMORY[0x277CCAA70] indexPathForRow:5 inSection:v8];
    v19[1] = v13;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];
    [tableView insertRowsAtIndexPaths:v14 withRowAnimation:0];

    tableView = [(WFNetworkSettingsViewController *)self tableView];
    v12 = [MEMORY[0x277CCAA70] indexPathForRow:5 inSection:v8];
    [tableView scrollToRowAtIndexPath:v12 atScrollPosition:3 animated:1];
  }

  else
  {
    v18[0] = v11;
    v15 = [MEMORY[0x277CCAA70] indexPathForRow:5 inSection:v8];
    v18[1] = v15;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
    [tableView deleteRowsAtIndexPaths:v16 withRowAnimation:0];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_promptForgetNetwork
{
  v47 = *MEMORY[0x277D85DE8];
  if ([(WFNetworkSettingsViewController *)self isAccessory])
  {
    v38 = @"kWFLocSettingForgetDeviceTitle";
  }

  else
  {
    _isChinaDevice = [(WFNetworkSettingsViewController *)self _isChinaDevice];
    v4 = @"kWFLocForgetNetworkTitle";
    if (_isChinaDevice)
    {
      v4 = @"kWFLocForgetNetworkTitleCH";
    }

    v38 = v4;
  }

  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v37 = [v5 localizedStringForKey:v38 value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];

  v6 = MEMORY[0x277CCACA8];
  config = [(WFNetworkSettingsViewController *)self config];
  displayFriendlyName = [config displayFriendlyName];
  v9 = [v6 stringWithFormat:v37, displayFriendlyName];

  if ([(WFNetworkSettingsViewController *)self isAccessory])
  {
    v10 = @"kWFLocForgetDeviceMessage";
  }

  else
  {
    config2 = [(WFNetworkSettingsViewController *)self config];
    cloudSyncable = [config2 cloudSyncable];
    v13 = @"kWFLocForgetNetworkMessage";
    if (cloudSyncable)
    {
      v13 = @"kWFLocForgetNetworkSyncedMessage";
    }

    v10 = v13;

    if ([(WFNetworkSettingsViewController *)self _isChinaDevice])
    {
      v14 = [(__CFString *)v10 stringByAppendingString:@"_CH"];

      v10 = v14;
    }
  }

  v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v16 = [v15 localizedStringForKey:v10 value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];

  if ([(WFNetworkSettingsViewController *)self isAccessory])
  {
    forgetDeviceAlertTitle = [MEMORY[0x277CB8900] forgetDeviceAlertTitle];

    forgetDeviceAlertBody = [MEMORY[0x277CB8900] forgetDeviceAlertBody];

    v19 = WFLogForCategory(0);
    v20 = OSLogForWFLogLevel(3uLL);
    if (WFCurrentLogLevel() >= 3 && v19 && os_log_type_enabled(v19, v20))
    {
      *buf = 138412546;
      v44 = forgetDeviceAlertTitle;
      v45 = 2112;
      v46 = forgetDeviceAlertBody;
      _os_log_impl(&dword_273FB9000, v19, v20, "Replacing alert title with: %@, replacing alert message text with: %@", buf, 0x16u);
    }

    v21 = forgetDeviceAlertTitle;
  }

  else
  {
    forgetDeviceAlertBody = v16;
    v21 = v9;
  }

  v36 = v21;
  v22 = [MEMORY[0x277D75110] alertControllerWithTitle:? message:? preferredStyle:?];
  v23 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v24 = [v23 localizedStringForKey:@"kWFLocForgetNetworkForgetButton" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];

  v25 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v26 = [v25 localizedStringForKey:@"kWFLocForgetNetworkCancelButton" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];

  if ([(WFNetworkSettingsViewController *)self isAccessory])
  {
    forgetDeviceAlertConfirm = [MEMORY[0x277CB8900] forgetDeviceAlertConfirm];

    forgetDeviceAlertCancel = [MEMORY[0x277CB8900] forgetDeviceAlertCancel];

    v29 = WFLogForCategory(0);
    v30 = OSLogForWFLogLevel(3uLL);
    if (WFCurrentLogLevel() >= 3 && v29 && os_log_type_enabled(v29, v30))
    {
      *buf = 138412546;
      v44 = forgetDeviceAlertConfirm;
      v45 = 2112;
      v46 = forgetDeviceAlertCancel;
      _os_log_impl(&dword_273FB9000, v29, v30, "Replacing confirm title with: %@, replacing cancel text with: %@", buf, 0x16u);
    }
  }

  else
  {
    forgetDeviceAlertCancel = v26;
    forgetDeviceAlertConfirm = v24;
  }

  objc_initWeak(buf, self);
  v31 = MEMORY[0x277D750F8];
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __55__WFNetworkSettingsViewController__promptForgetNetwork__block_invoke;
  v41[3] = &unk_279EC5ED0;
  objc_copyWeak(&v42, buf);
  v41[4] = self;
  v32 = [v31 actionWithTitle:forgetDeviceAlertConfirm style:2 handler:v41];
  [v22 addAction:v32];
  [v22 setPreferredAction:v32];
  v33 = MEMORY[0x277D750F8];
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __55__WFNetworkSettingsViewController__promptForgetNetwork__block_invoke_2;
  v39[3] = &unk_279EC5830;
  objc_copyWeak(&v40, buf);
  v34 = [v33 actionWithTitle:forgetDeviceAlertCancel style:1 handler:v39];
  [v22 addAction:v34];

  [(WFNetworkSettingsViewController *)self setAlert:v22];
  [(WFNetworkSettingsViewController *)self presentViewController:v22 animated:1 completion:0];
  objc_destroyWeak(&v40);

  objc_destroyWeak(&v42);
  objc_destroyWeak(buf);

  v35 = *MEMORY[0x277D85DE8];
}

void __55__WFNetworkSettingsViewController__promptForgetNetwork__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained context];

  if (v2)
  {
    v3 = [WeakRetained context];
    [v3 forget];
  }

  else
  {
    v3 = [WeakRetained delegate];
    [v3 networkSettingsViewControllerDidForgetNetwork:*(a1 + 32)];
  }

  [WeakRetained setAlert:0];
}

void __55__WFNetworkSettingsViewController__promptForgetNetwork__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setAlert:0];
}

- (BOOL)_showDemoModeFeatureDisabledAlert
{
  if (!self->_isDemoModeAlertShowing)
  {
    self->_isDemoModeAlertShowing = 1;
    v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v4 = [v3 localizedStringForKey:@"kWFLocRandomMACDeviceInDemoAlertTitle" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];

    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"kWFLocRandomMACDeviceInDemoAlertBody" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];

    v7 = [MEMORY[0x277D75110] alertControllerWithTitle:v4 message:v6 preferredStyle:1];
    objc_initWeak(&location, self);
    v8 = MEMORY[0x277D750F8];
    v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:@"kWFLocRandomMACDeviceInDemoAlertButtonOk" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __68__WFNetworkSettingsViewController__showDemoModeFeatureDisabledAlert__block_invoke;
    v13[3] = &unk_279EC5ED0;
    objc_copyWeak(&v14, &location);
    v13[4] = self;
    v11 = [v8 actionWithTitle:v10 style:0 handler:v13];

    [v7 addAction:v11];
    [v7 setPreferredAction:v11];
    [(WFNetworkSettingsViewController *)self setAlert:v7];
    [(WFNetworkSettingsViewController *)self presentViewController:v7 animated:1 completion:0];

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  return 1;
}

void __68__WFNetworkSettingsViewController__showDemoModeFeatureDisabledAlert__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  *(*(a1 + 32) + 1104) = 0;
  [WeakRetained setAlert:0];
}

void __82__WFNetworkSettingsViewController__promptOverrideWiFiOutrankedForPrivateCellular___block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WFLogForCategory(0);
  v5 = OSLogForWFLogLevel(3uLL);
  v7 = WFCurrentLogLevel() > 2 && v4 != 0;
  if (a2)
  {
    if (v7 && os_log_type_enabled(v4, v5))
    {
      *buf = 0;
      _os_log_impl(&dword_273FB9000, v4, v5, "User accepted celluar outrank prompt", buf, 2u);
    }

    v8 = [WeakRetained context];
    [v8 overrideWiFiOutrank];

    v9 = [WeakRetained config];
    v10 = [WeakRetained context];
    v11 = [WeakRetained _sectionsFromConfig:v9 context:v10];
    [WeakRetained setSections:v11];

    v12 = [WeakRetained sections];
    [WeakRetained _logSections:v12];

    v4 = [WeakRetained tableView];
    [v4 reloadData];
  }

  else if (v7 && os_log_type_enabled(v4, v5))
  {
    *v13 = 0;
    _os_log_impl(&dword_273FB9000, v4, v5, "User declined celluar outrank prompt", v13, 2u);
  }

  [WeakRetained setAlert:0];
}

- (void)_promptOverrideWiFiOutrankedDev
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = WFLogForCategory(0);
  v4 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v3 && os_log_type_enabled(v3, v4))
  {
    v9 = 136315138;
    v10 = "[WFNetworkSettingsViewController _promptOverrideWiFiOutrankedDev]";
    _os_log_impl(&dword_273FB9000, v3, v4, "%s: showing developer outrank prompt", &v9, 0xCu);
  }

  config = [(WFNetworkSettingsViewController *)self config];
  displayFriendlyName = [config displayFriendlyName];
  v7 = [WFDeveloperOutrankAlertController developerOutrankAlertControllerWithNetworkName:displayFriendlyName chinaDevice:[(WFNetworkSettingsViewController *)self _isChinaDevice] completionHandler:&__block_literal_global_5];

  [(WFNetworkSettingsViewController *)self presentViewController:v7 animated:1 completion:0];
  v8 = *MEMORY[0x277D85DE8];
}

void __66__WFNetworkSettingsViewController__promptOverrideWiFiOutrankedDev__block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v5 = [MEMORY[0x277D3FB78] sharedManager];
    v2 = [MEMORY[0x277CBEBC0] URLWithString:@"prefs:root=DEVELOPER_SETTINGS&path=NCO"];
    [v5 processURL:v2 animated:1 fromSearch:0 withCompletion:&__block_literal_global_129];
  }

  else
  {
    v3 = WFLogForCategory(0);
    v4 = OSLogForWFLogLevel(3uLL);
    if (WFCurrentLogLevel() >= 3 && v3 && os_log_type_enabled(v3, v4))
    {
      *buf = 0;
      _os_log_impl(&dword_273FB9000, v3, v4, "User bypassed option to go to developer settings", buf, 2u);
    }
  }
}

void __66__WFNetworkSettingsViewController__promptOverrideWiFiOutrankedDev__block_invoke_2()
{
  v0 = WFLogForCategory(0);
  v1 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v0 && os_log_type_enabled(v0, v1))
  {
    *v2 = 0;
    _os_log_impl(&dword_273FB9000, v0, v1, "User taken to developer settings", v2, 2u);
  }
}

- (BOOL)_isIPv4ConfigAuto
{
  config = [(WFNetworkSettingsViewController *)self config];
  if ([config ipv4Config])
  {
    config2 = [(WFNetworkSettingsViewController *)self config];
    v5 = [config2 ipv4Config] == 1;
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  sections = [(WFNetworkSettingsViewController *)self sections];
  v4 = [sections count];

  return v4;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v5 = 1;
  switch([(WFNetworkSettingsViewController *)self _sectionTypeAtSection:section])
  {
    case 0:
      config = [(WFNetworkSettingsViewController *)self config];
      healthRecommendations = [config healthRecommendations];
      v5 = [healthRecommendations count];

      goto LABEL_9;
    case 1:
      return 2;
    case 2:
    case 4:
    case 6:
    case 8:
    case 10:
    case 12:
    case 14:
    case 16:
    case 17:
    case 18:
      return 1;
    case 3:
      config = [(WFNetworkSettingsViewController *)self autoJoinSectionRows];
      v5 = [config count];
LABEL_9:

      return v5;
    case 5:
      config2 = [(WFNetworkSettingsViewController *)self config];
      current = [config2 current];

      config3 = [(WFNetworkSettingsViewController *)self config];
      ipv4Config = [config3 ipv4Config];
      if (current)
      {
        if (ipv4Config)
        {
LABEL_6:

          return 4;
        }

        config4 = [(WFNetworkSettingsViewController *)self config];
        dhcpClientID = [config4 dhcpClientID];
        if (!dhcpClientID)
        {

          goto LABEL_6;
        }

        v23 = dhcpClientID;
        config5 = [(WFNetworkSettingsViewController *)self config];
        dhcpClientID2 = [config5 dhcpClientID];
        v26 = [dhcpClientID2 length];

        if (v26)
        {
          return 5;
        }

        else
        {
          return 4;
        }
      }

      else
      {
        if (ipv4Config == 2)
        {
          v5 = 4;
        }

        else
        {
          v5 = 1;
        }
      }

      return v5;
    case 7:
      config6 = [(WFNetworkSettingsViewController *)self config];
      v14 = [(WFNetworkSettingsViewController *)self _shouldShowIPv6ForConfig:config6];

      if (v14)
      {
        return 2;
      }

      else
      {
        return 0;
      }

    case 9:
      return v5;
    case 11:
      config7 = [(WFNetworkSettingsViewController *)self config];
      LODWORD(v5) = [config7 saveDataModeConfigurable];

      return v5;
    case 13:
      config8 = [(WFNetworkSettingsViewController *)self config];
      if ([config8 networkQualityVisible] && !-[WFNetworkSettingsViewController _isChinaDevice](self, "_isChinaDevice"))
      {
        config9 = [(WFNetworkSettingsViewController *)self config];
        [config9 networkQualityResponsiveness];
        if (v20 == 0.0)
        {
          context = [(WFNetworkSettingsViewController *)self context];
          isCurrent = [context isCurrent];

          if ((isCurrent & 1) == 0)
          {
            goto LABEL_17;
          }
        }

        else
        {
        }

        return 1;
      }

LABEL_17:
      v17 = WFLogForCategory(0);
      v18 = OSLogForWFLogLevel(1uLL);
      if (WFCurrentLogLevel() && v17 && os_log_type_enabled(v17, v18))
      {
        *v29 = 0;
        _os_log_impl(&dword_273FB9000, v17, v18, "NetQuality: WFNetworkSettingsNetworkQuality set but it shouldn't", v29, 2u);
      }

      return 0;
    case 15:
      if (!self->_randomFeatureEnabled)
      {
        return 0;
      }

      return 2;
    default:
      return 0;
  }
}

- (void)_reloadNetworkQuality
{
  sections = [(WFNetworkSettingsViewController *)self sections];
  v4 = [sections indexOfObject:&unk_2883228D0];

  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    tableView = [(WFNetworkSettingsViewController *)self tableView];
    v5 = [MEMORY[0x277CCAA78] indexSetWithIndex:v4];
    [tableView reloadSections:v5 withRowAnimation:5];
  }
}

- (void)_runNetworkQuality
{
  v23 = *MEMORY[0x277D85DE8];
  config = [(WFNetworkSettingsViewController *)self config];
  if ([config current])
  {
    networkQualitySpinning = [(WFNetworkSettingsViewController *)self networkQualitySpinning];

    if (!networkQualitySpinning)
    {
      v4 = WFLogForCategory(0);
      v5 = OSLogForWFLogLevel(3uLL);
      if (WFCurrentLogLevel() >= 3 && v4 && os_log_type_enabled(v4, v5))
      {
        *buf = 136315138;
        v22 = "[WFNetworkSettingsViewController _runNetworkQuality]";
        _os_log_impl(&dword_273FB9000, v4, v5, "NetQuality: %s: User scheduled a run", buf, 0xCu);
      }

      v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v7 = [v6 localizedStringForKey:@"kWFLocSettingNetworkQualityAlertTitle" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];

      v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v9 = [v8 localizedStringForKey:@"kWFLocSettingNetworkQualityAlertText" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];

      v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v11 = [v10 localizedStringForKey:@"kWFLocSettingNetworkQualityAlertContinue" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];

      v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v13 = [v12 localizedStringForKey:@"kWFLocSettingNetworkQualityAlertCancel" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];

      v14 = [MEMORY[0x277D75110] alertControllerWithTitle:v7 message:v9 preferredStyle:1];
      v15 = [MEMORY[0x277D750F8] actionWithTitle:v13 style:1 handler:&__block_literal_global_144];
      [v14 addAction:v15];
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __53__WFNetworkSettingsViewController__runNetworkQuality__block_invoke_145;
      v20[3] = &unk_279EC5A38;
      v20[4] = self;
      v16 = [MEMORY[0x277D750F8] actionWithTitle:v11 style:0 handler:v20];
      [v14 addAction:v16];
      [v14 setPreferredAction:v16];
      [v14 setPreferredAction:v16];
      [(WFNetworkSettingsViewController *)self presentViewController:v14 animated:1 completion:0];
    }

    v17 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v18 = *MEMORY[0x277D85DE8];
  }
}

void __53__WFNetworkSettingsViewController__runNetworkQuality__block_invoke()
{
  v5 = *MEMORY[0x277D85DE8];
  v0 = WFLogForCategory(0);
  v1 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v0 && os_log_type_enabled(v0, v1))
  {
    v3 = 136315138;
    v4 = "[WFNetworkSettingsViewController _runNetworkQuality]_block_invoke";
    _os_log_impl(&dword_273FB9000, v0, v1, "NetQuality: %s: User canceled test-run", &v3, 0xCu);
  }

  v2 = *MEMORY[0x277D85DE8];
}

void __53__WFNetworkSettingsViewController__runNetworkQuality__block_invoke_145(uint64_t a1)
{
  [*(a1 + 32) setNetworkQualitySpinning:1];
  [*(a1 + 32) _reloadNetworkQuality];
  v2 = [*(a1 + 32) context];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __53__WFNetworkSettingsViewController__runNetworkQuality__block_invoke_2;
  v3[3] = &unk_279EC5A10;
  v3[4] = *(a1 + 32);
  [v2 runNetworkQualityWithCompletionHandler:v3];
}

void __53__WFNetworkSettingsViewController__runNetworkQuality__block_invoke_2(uint64_t a1, int a2, void *a3, double a4)
{
  v4 = a2;
  if (a2)
  {
    v7 = *(a1 + 32);
    v8 = a3;
    v9 = [v7 config];
    [v9 setNetworkQualityResponsiveness:a4];

    v10 = [*(a1 + 32) config];
    [v10 setNetworkQualityDate:v8];
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __53__WFNetworkSettingsViewController__runNetworkQuality__block_invoke_3;
  v11[3] = &unk_279EC59E8;
  v12 = v4;
  v11[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], v11);
}

uint64_t __53__WFNetworkSettingsViewController__runNetworkQuality__block_invoke_3(uint64_t a1)
{
  if ((*(a1 + 40) & 1) == 0 && [*(a1 + 32) networkQualitySpinning])
  {
    v2 = *(a1 + 32);
    v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v4 = [v3 localizedStringForKey:@"kWFLocSettingNetworkQualityFailureTitle" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];

    v5 = *(a1 + 32);
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"kWFLocSettingNetworkQualityFailureText" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];

    v8 = *(a1 + 32);
    v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:@"kWFLocSettingNetworkQualityFailureOK" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];

    v11 = [MEMORY[0x277D75110] alertControllerWithTitle:v4 message:v7 preferredStyle:1];
    v12 = [MEMORY[0x277D750F8] actionWithTitle:v10 style:0 handler:0];
    [v11 addAction:v12];
    [v11 setPreferredAction:v12];
    [*(a1 + 32) presentViewController:v11 animated:1 completion:0];
  }

  [*(a1 + 32) setNetworkQualitySpinning:0];
  v13 = *(a1 + 32);

  return [v13 _reloadNetworkQuality];
}

- (void)_fillNetworkQualityCell:(id)cell
{
  cellCopy = cell;
  if ([(WFNetworkSettingsViewController *)self networkQualitySpinning])
  {
    v25 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
    [cellCopy setAccessoryView:v25];

    [v25 startAnimating];
  }

  else
  {
    config = [(WFNetworkSettingsViewController *)self config];
    [config networkQualityResponsiveness];
    v7 = v6;

    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v9 = v8;
    if (v7 == 0.0)
    {
      v25 = [v8 localizedStringForKey:@"kWFLocSettingNetworkQualityNoData" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
      v10 = v9;
    }

    else
    {
      v10 = [v8 localizedStringForKey:@"kWFLocSettingNetworkQualityRPM" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];

      v11 = MEMORY[0x277D2C9B8];
      config2 = [(WFNetworkSettingsViewController *)self config];
      [config2 networkQualityResponsiveness];
      v14 = [v11 ratingForResponsivenessScore:v13];

      if (v14 > 2)
      {
        v17 = 0;
      }

      else
      {
        v15 = off_279EC6000[v14];
        v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v17 = [v16 localizedStringForKey:v15 value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
      }

      v18 = MEMORY[0x277CCACA8];
      config3 = [(WFNetworkSettingsViewController *)self config];
      [config3 networkQualityResponsiveness];
      v25 = [v18 stringWithFormat:@"%@ (%u %@)", v17, v20, v10];
    }

    v21 = [MEMORY[0x277D75220] buttonWithType:1];
    [v21 setTitle:v25 forState:0];
    [cellCopy setAccessoryView:v21];
    textLabel = [cellCopy textLabel];

    font = [textLabel font];
    titleLabel = [v21 titleLabel];
    [titleLabel setFont:font];

    [v21 sizeToFit];
    [v21 addTarget:self action:sel__runNetworkQuality forControlEvents:64];
  }
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v171 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  v6 = [pathCopy row];
  switch(-[WFNetworkSettingsViewController _sectionTypeAtSection:](self, "_sectionTypeAtSection:", [pathCopy section]))
  {
    case 0:
      cellFactory = [(WFNetworkSettingsViewController *)self cellFactory];
      v8 = [cellFactory recommendationCellAtIndexPath:pathCopy];

      config = [(WFNetworkSettingsViewController *)self config];
      healthRecommendations = [config healthRecommendations];
      descriptionLabel4 = [healthRecommendations objectAtIndex:{objc_msgSend(pathCopy, "row")}];

      issueTitle = [descriptionLabel4 issueTitle];
      titleLabel = [v8 titleLabel];
      [titleLabel setText:issueTitle];

      titleLabel2 = [v8 titleLabel];
      defaultTextColor = [MEMORY[0x277D75348] defaultTextColor];
      [titleLabel2 setTextColor:defaultTextColor];

      issueDetailText = [descriptionLabel4 issueDetailText];
      descriptionLabel = [v8 descriptionLabel];
      [descriptionLabel setText:issueDetailText];

      descriptionLabel2 = [v8 descriptionLabel];
      altTextColor = [MEMORY[0x277D75348] altTextColor];
      [descriptionLabel2 setTextColor:altTextColor];
      goto LABEL_122;
    case 1:
      if (v6 == 1)
      {
        cellFactory2 = [(WFNetworkSettingsViewController *)self cellFactory];
        v8 = [cellFactory2 forgetCellAtIndexPath:pathCopy accessory:{-[WFNetworkSettingsViewController isAccessory](self, "isAccessory")}];

        descriptionLabel4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        descriptionLabel2 = [descriptionLabel4 localizedStringForKey:@"kWFLocSettingNetworkPortalButtonTitle" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
        textLabel = [v8 textLabel];
        goto LABEL_121;
      }

      if (v6)
      {
        goto LABEL_58;
      }

      cellFactory3 = [(WFNetworkSettingsViewController *)self cellFactory];
      v8 = [cellFactory3 recommendationCellAtIndexPath:pathCopy];

      v58 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v59 = [v58 localizedStringForKey:@"kWFLocSettingNetworkPortalTitle" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
      titleLabel3 = [v8 titleLabel];
      [titleLabel3 setText:v59];

      titleLabel4 = [v8 titleLabel];
      defaultTextColor2 = [MEMORY[0x277D75348] defaultTextColor];
      [titleLabel4 setTextColor:defaultTextColor2];

      v63 = MEMORY[0x277CCACA8];
      v64 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v65 = [v64 localizedStringForKey:@"kWFLocSettingNetworkPortalDescriptionFormat" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
      _portalURL = [(WFNetworkSettingsViewController *)self _portalURL];
      v67 = [v63 stringWithFormat:v65, _portalURL];
      descriptionLabel3 = [v8 descriptionLabel];
      [descriptionLabel3 setText:v67];

      descriptionLabel4 = [v8 descriptionLabel];
      descriptionLabel2 = [MEMORY[0x277D75348] altTextColor];
      [descriptionLabel4 setTextColor:descriptionLabel2];
      goto LABEL_123;
    case 2:
      descriptionLabel4 = [(WFNetworkSettingsViewController *)self cellFactory];
      v20 = [descriptionLabel4 joinCellAtIndexPath:pathCopy];
      goto LABEL_56;
    case 3:
      autoJoinSectionRows = [(WFNetworkSettingsViewController *)self autoJoinSectionRows];
      v48 = [autoJoinSectionRows objectAtIndex:{objc_msgSend(pathCopy, "row")}];
      integerValue = [v48 integerValue];

      v8 = 0;
      if (integerValue <= 1)
      {
        if (integerValue)
        {
          if (integerValue != 1)
          {
            goto LABEL_125;
          }

          cellFactory4 = [(WFNetworkSettingsViewController *)self cellFactory];
          v8 = [cellFactory4 autoLoginCellAtIndexPath:pathCopy];

          autoLoginSwitch = [(WFNetworkSettingsViewController *)self autoLoginSwitch];
          [v8 setAccessoryView:autoLoginSwitch];

          descriptionLabel4 = [(WFNetworkSettingsViewController *)self config];
          autoLoginEnabled = [descriptionLabel4 autoLoginEnabled];
          autoLoginSwitch2 = [(WFNetworkSettingsViewController *)self autoLoginSwitch];
LABEL_9:
          v34 = autoLoginSwitch2;
          [autoLoginSwitch2 setOn:autoLoginEnabled];
LABEL_10:
        }

        else
        {
          cellFactory5 = [(WFNetworkSettingsViewController *)self cellFactory];
          v8 = [cellFactory5 autoJoinCellAtIndexPath:pathCopy];

          autoJoinSwitch = [(WFNetworkSettingsViewController *)self autoJoinSwitch];
          [v8 setAccessoryView:autoJoinSwitch];

          if ([(WFNetworkSettingsViewController *)self _isAutoJoinConfigurable])
          {
            config2 = [(WFNetworkSettingsViewController *)self config];
            autoJoinEnabled = [config2 autoJoinEnabled];
            autoJoinSwitch2 = [(WFNetworkSettingsViewController *)self autoJoinSwitch];
            [autoJoinSwitch2 setOn:autoJoinEnabled];

            autoJoinSwitch3 = [(WFNetworkSettingsViewController *)self autoJoinSwitch];
            descriptionLabel4 = autoJoinSwitch3;
            v113 = 1;
          }

          else
          {
            autoJoinSwitch4 = [(WFNetworkSettingsViewController *)self autoJoinSwitch];
            [autoJoinSwitch4 setOn:0];

            autoJoinSwitch3 = [(WFNetworkSettingsViewController *)self autoJoinSwitch];
            descriptionLabel4 = autoJoinSwitch3;
            v113 = 0;
          }

          [autoJoinSwitch3 setEnabled:v113];
        }

        goto LABEL_124;
      }

      if (integerValue == 2)
      {
        context = [(WFNetworkSettingsViewController *)self context];
        v115 = objc_opt_respondsToSelector();

        if (v115)
        {
          context2 = [(WFNetworkSettingsViewController *)self context];
          descriptionLabel4 = [context2 username];
        }

        else
        {
          descriptionLabel4 = 0;
        }

        descriptionLabel2 = [(WFNetworkSettingsViewController *)self cellFactory];
        if ([(WFNetworkSettingsViewController *)self allowViewPassword])
        {
          v135 = [(WFNetworkSettingsViewController *)self credentailCellTapped]^ 1;
        }

        else
        {
          v135 = 1;
        }

        v136 = descriptionLabel2;
        v137 = pathCopy;
        v138 = descriptionLabel4;
        v139 = 0;
      }

      else
      {
        if (integerValue != 3)
        {
          goto LABEL_125;
        }

        context3 = [(WFNetworkSettingsViewController *)self context];
        v91 = objc_opt_respondsToSelector();

        if (v91)
        {
          context4 = [(WFNetworkSettingsViewController *)self context];
          descriptionLabel4 = [context4 password];
        }

        else
        {
          descriptionLabel4 = 0;
        }

        descriptionLabel2 = [(WFNetworkSettingsViewController *)self cellFactory];
        if ([(WFNetworkSettingsViewController *)self allowViewPassword])
        {
          v135 = [(WFNetworkSettingsViewController *)self credentailCellTapped]^ 1;
        }

        else
        {
          v135 = 1;
        }

        v136 = descriptionLabel2;
        v137 = pathCopy;
        v138 = descriptionLabel4;
        v139 = 1;
      }

      v8 = [v136 credentialsViewerCellAtIndexPath:v137 credentails:v138 hideCredentials:v135 isPassword:v139];
      goto LABEL_123;
    case 4:
      descriptionLabel4 = [(WFNetworkSettingsViewController *)self cellFactory];
      v20 = [descriptionLabel4 forgetCellAtIndexPath:pathCopy accessory:{-[WFNetworkSettingsViewController isAccessory](self, "isAccessory")}];
      goto LABEL_56;
    case 5:
      v8 = 0;
      if (v6 > 1)
      {
        switch(v6)
        {
          case 2:
            cellFactory6 = [(WFNetworkSettingsViewController *)self cellFactory];
            v8 = [cellFactory6 ipv4SubnetMaskCellAtIndexPath:pathCopy];

            _isIPv4ConfigAuto = [(WFNetworkSettingsViewController *)self _isIPv4ConfigAuto];
            config3 = [(WFNetworkSettingsViewController *)self config];
            descriptionLabel4 = config3;
            if (_isIPv4ConfigAuto)
            {
              [config3 ipv4SubnetMask];
            }

            else
            {
              [config3 ipv4SubnetMaskManual];
            }

            break;
          case 3:
            cellFactory7 = [(WFNetworkSettingsViewController *)self cellFactory];
            v8 = [cellFactory7 ipv4RouterCellAtIndexPath:pathCopy];

            _isIPv4ConfigAuto2 = [(WFNetworkSettingsViewController *)self _isIPv4ConfigAuto];
            config4 = [(WFNetworkSettingsViewController *)self config];
            descriptionLabel4 = config4;
            if (_isIPv4ConfigAuto2)
            {
              [config4 ipv4RouterAddress];
            }

            else
            {
              [config4 ipv4RouterAddressManual];
            }

            break;
          case 4:
            cellFactory8 = [(WFNetworkSettingsViewController *)self cellFactory];
            v8 = [cellFactory8 dhcpClientIDCellAtIndexPath:pathCopy];

            descriptionLabel4 = [(WFNetworkSettingsViewController *)self config];
            dhcpClientID = [descriptionLabel4 dhcpClientID];
LABEL_120:
            descriptionLabel2 = dhcpClientID;
            textLabel = [v8 detailTextLabel];
LABEL_121:
            altTextColor = textLabel;
            [textLabel setText:descriptionLabel2];
LABEL_122:

LABEL_123:
LABEL_124:

            goto LABEL_125;
          default:
            goto LABEL_125;
        }

        dhcpClientID = LABEL_86:;
        goto LABEL_120;
      }

      if (v6)
      {
        if (v6 != 1)
        {
          goto LABEL_125;
        }

        cellFactory9 = [(WFNetworkSettingsViewController *)self cellFactory];
        v8 = [cellFactory9 ipv4AddressCellAtIndexPath:pathCopy];

        _isIPv4ConfigAuto3 = [(WFNetworkSettingsViewController *)self _isIPv4ConfigAuto];
        config5 = [(WFNetworkSettingsViewController *)self config];
        descriptionLabel4 = config5;
        if (_isIPv4ConfigAuto3)
        {
          [config5 ipv4Address];
        }

        else
        {
          [config5 ipv4AddressManual];
        }

        goto LABEL_86;
      }

      cellFactory10 = [(WFNetworkSettingsViewController *)self cellFactory];
      v8 = [cellFactory10 ipv4AddressConfigCellAtIndexPath:pathCopy];

      config6 = [(WFNetworkSettingsViewController *)self config];
      ipv4Config = [config6 ipv4Config];

      if (ipv4Config)
      {
        config7 = [(WFNetworkSettingsViewController *)self config];
        ipv4Config2 = [config7 ipv4Config];

        if (ipv4Config2 == 2)
        {
          v128 = @"kWFLocSettingsIPV4ConfigureManual";
        }

        else
        {
          config8 = [(WFNetworkSettingsViewController *)self config];
          ipv4Config3 = [config8 ipv4Config];

          if (ipv4Config3 != 1)
          {
LABEL_125:
            altTextColor2 = [MEMORY[0x277D75348] altTextColor];
            detailTextLabel = [v8 detailTextLabel];
            [detailTextLabel setTextColor:altTextColor2];

            goto LABEL_126;
          }

          v128 = @"kWFLocSettingsIPV4ConfigureBootP";
        }
      }

      else
      {
        v128 = @"kWFLocSettingsIPV4ConfigureAutomatic";
      }

      context7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v163 = [context7 localizedStringForKey:v128 value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
      detailTextLabel2 = [v8 detailTextLabel];
      [detailTextLabel2 setText:v163];

LABEL_135:
      goto LABEL_125;
    case 6:
      descriptionLabel4 = [(WFNetworkSettingsViewController *)self cellFactory];
      v20 = [descriptionLabel4 renewLeaseCellAtIndexPath:pathCopy];
      goto LABEL_56;
    case 7:
      if (v6 == 1)
      {
        cellFactory11 = [(WFNetworkSettingsViewController *)self cellFactory];
        v8 = [cellFactory11 ipv6RouterCellAtIndexPath:pathCopy];

        descriptionLabel4 = [(WFNetworkSettingsViewController *)self config];
        dhcpClientID = [descriptionLabel4 ipv6RouterAddress];
        goto LABEL_120;
      }

      if (v6)
      {
LABEL_58:
        v8 = 0;
      }

      else
      {
        cellFactory12 = [(WFNetworkSettingsViewController *)self cellFactory];
        v8 = [cellFactory12 ipv6AddressCellAtIndexPath:pathCopy];

        config9 = [(WFNetworkSettingsViewController *)self config];
        ipv6Addresses = [config9 ipv6Addresses];
        v55 = [ipv6Addresses count];

        if (!v55)
        {
          goto LABEL_125;
        }

        [v8 setAccessoryType:0];
        if (v55 == 1)
        {
          descriptionLabel4 = [(WFNetworkSettingsViewController *)self config];
          descriptionLabel2 = [descriptionLabel4 ipv6Addresses];
          altTextColor = [descriptionLabel2 firstObject];
          detailTextLabel3 = [v8 detailTextLabel];
          [detailTextLabel3 setText:altTextColor];

          goto LABEL_122;
        }

        v131 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v132 = [v131 localizedStringForKey:@"kWFLocSettingsAddressesTitle" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];

        v132 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu %@", v55, v132];
        detailTextLabel4 = [v8 detailTextLabel];
        [detailTextLabel4 setText:v132];

        [v8 setAccessoryType:1];
        [v8 setSelectionStyle:1];
      }

      goto LABEL_125;
    case 8:
      if (v6)
      {
        goto LABEL_58;
      }

      cellFactory13 = [(WFNetworkSettingsViewController *)self cellFactory];
      v8 = [cellFactory13 dnsConfigureCellAtIndexPath:pathCopy];

      descriptionLabel4 = [(WFNetworkSettingsViewController *)self config];
      dnsConfig = [descriptionLabel4 dnsConfig];
      v98 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v34 = v98;
      if (dnsConfig)
      {
        v99 = @"kWFLocSettingsDNSConfigureManual";
      }

      else
      {
        v99 = @"kWFLocSettingsDNSConfigureAutomatic";
      }

      v100 = [v98 localizedStringForKey:v99 value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
      detailTextLabel5 = [v8 detailTextLabel];
      [detailTextLabel5 setText:v100];

      goto LABEL_10;
    case 9:
      if (v6)
      {
        goto LABEL_58;
      }

      cellFactory14 = [(WFNetworkSettingsViewController *)self cellFactory];
      v8 = [cellFactory14 httpProxyConfigCellAtIndexPath:pathCopy];

      config10 = [(WFNetworkSettingsViewController *)self config];
      httpProxyConfig = [config10 httpProxyConfig];

      if (httpProxyConfig)
      {
        config11 = [(WFNetworkSettingsViewController *)self config];
        httpProxyConfig2 = [config11 httpProxyConfig];

        if (httpProxyConfig2 == 2)
        {
          v40 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          descriptionLabel4 = v40;
          v41 = @"kWFLocSettingsProxyConfigAutomaticTitle";
        }

        else
        {
          config12 = [(WFNetworkSettingsViewController *)self config];
          httpProxyConfig3 = [config12 httpProxyConfig];

          if (httpProxyConfig3 != 1)
          {
            goto LABEL_125;
          }

          v40 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          descriptionLabel4 = v40;
          v41 = @"kWFLocSettingsProxyConfigManualTitle";
        }
      }

      else
      {
        v40 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        descriptionLabel4 = v40;
        v41 = @"kWFLocSettingsProxyConfigOffTitle";
      }

      dhcpClientID = [v40 localizedStringForKey:v41 value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
      goto LABEL_120;
    case 10:
      descriptionLabel4 = [(WFNetworkSettingsViewController *)self cellFactory];
      v20 = [descriptionLabel4 manageCellAtIndexPath:pathCopy];
      goto LABEL_56;
    case 11:
      config13 = [(WFNetworkSettingsViewController *)self config];
      saveDataModeConfigurable = [config13 saveDataModeConfigurable];

      if (!saveDataModeConfigurable)
      {
        goto LABEL_58;
      }

      cellFactory15 = [(WFNetworkSettingsViewController *)self cellFactory];
      v8 = [cellFactory15 saveDataModeCellAtIndexPath:pathCopy];

      saveDataModeSwitch = [(WFNetworkSettingsViewController *)self saveDataModeSwitch];
      [v8 setAccessoryView:saveDataModeSwitch];

      descriptionLabel4 = [(WFNetworkSettingsViewController *)self config];
      autoLoginEnabled = [descriptionLabel4 isInSaveDataMode];
      autoLoginSwitch2 = [(WFNetworkSettingsViewController *)self saveDataModeSwitch];
      goto LABEL_9;
    case 12:
      cellFactory16 = [(WFNetworkSettingsViewController *)self cellFactory];
      v8 = [cellFactory16 privacyProxyEnabledCellAtIndexPath:pathCopy];

      privacyProxyEnabledSwitch = [(WFNetworkSettingsViewController *)self privacyProxyEnabledSwitch];
      [v8 setAccessoryView:privacyProxyEnabledSwitch];

      descriptionLabel4 = [(WFNetworkSettingsViewController *)self config];
      autoLoginEnabled = [descriptionLabel4 privacyProxyEnabled];
      autoLoginSwitch2 = [(WFNetworkSettingsViewController *)self privacyProxyEnabledSwitch];
      goto LABEL_9;
    case 13:
      config14 = [(WFNetworkSettingsViewController *)self config];
      if (![config14 networkQualityVisible] || -[WFNetworkSettingsViewController _isChinaDevice](self, "_isChinaDevice"))
      {

        goto LABEL_47;
      }

      config15 = [(WFNetworkSettingsViewController *)self config];
      [config15 networkQualityResponsiveness];
      if (v106 == 0.0)
      {
        context5 = [(WFNetworkSettingsViewController *)self context];
        isCurrent = [context5 isCurrent];

        if (!isCurrent)
        {
LABEL_47:
          v81 = WFLogForCategory(0);
          v82 = OSLogForWFLogLevel(1uLL);
          if (WFCurrentLogLevel() && v81 && os_log_type_enabled(v81, v82))
          {
            *buf = 0;
            _os_log_impl(&dword_273FB9000, v81, v82, "NetQuality: WFNetworkSettingsNetworkQuality set but it shouldn't", buf, 2u);
          }

          v8 = 0;
          goto LABEL_126;
        }
      }

      else
      {
      }

      cellFactory17 = [(WFNetworkSettingsViewController *)self cellFactory];
      v8 = [cellFactory17 networkQualityCellAtIndexPath:pathCopy];

      v144 = WFLogForCategory(0);
      v145 = OSLogForWFLogLevel(3uLL);
      if (WFCurrentLogLevel() >= 3 && v144)
      {
        v146 = v144;
        if (os_log_type_enabled(v146, v145))
        {
          config16 = [(WFNetworkSettingsViewController *)self config];
          [config16 networkQualityResponsiveness];
          v149 = v148;
          networkQualitySpinning = [(WFNetworkSettingsViewController *)self networkQualitySpinning];
          v151 = "NO";
          v166 = "[WFNetworkSettingsViewController tableView:cellForRowAtIndexPath:]";
          *buf = 136315650;
          if (networkQualitySpinning)
          {
            v151 = "YES";
          }

          v167 = 2048;
          v168 = v149;
          v169 = 2080;
          v170 = v151;
          _os_log_impl(&dword_273FB9000, v146, v145, "NetQuality: %s: Responsiveness is %.1f, execution running? %s", buf, 0x20u);
        }
      }

      [(WFNetworkSettingsViewController *)self _fillNetworkQualityCell:v8];
LABEL_126:
      appearanceProxy = [(WFNetworkSettingsViewController *)self appearanceProxy];
      cellTextLabelFont = [appearanceProxy cellTextLabelFont];

      if (cellTextLabelFont)
      {
        appearanceProxy2 = [(WFNetworkSettingsViewController *)self appearanceProxy];
        cellTextLabelFont2 = [appearanceProxy2 cellTextLabelFont];
        textLabel2 = [v8 textLabel];
        [textLabel2 setFont:cellTextLabelFont2];
      }

      v159 = *MEMORY[0x277D85DE8];

      return v8;
    case 14:
      v8 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:1 reuseIdentifier:0];
      v21 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v22 = [v21 localizedStringForKey:@"kWFLocSettingsDiagnosticsTitle" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
      textLabel3 = [v8 textLabel];
      [textLabel3 setText:v22];

      defaultButtonColor = [MEMORY[0x277D75348] defaultButtonColor];
      detailTextLabel6 = [v8 detailTextLabel];
      [detailTextLabel6 setTextColor:defaultButtonColor];

      [v8 setAccessoryType:1];
      [v8 setSelectionStyle:1];
      goto LABEL_125;
    case 15:
      _macAddressToDisplay = [(WFNetworkSettingsViewController *)self _macAddressToDisplay];

      if (!_macAddressToDisplay)
      {
        v43 = WFLogForCategory(0);
        v44 = OSLogForWFLogLevel(2uLL);
        if (WFCurrentLogLevel() >= 2 && v43 && os_log_type_enabled(v43, v44))
        {
          *buf = 136315138;
          v166 = "[WFNetworkSettingsViewController tableView:cellForRowAtIndexPath:]";
          _os_log_impl(&dword_273FB9000, v43, v44, "%s - MAC address to display is empty", buf, 0xCu);
        }
      }

      cellFactory18 = [(WFNetworkSettingsViewController *)self cellFactory];
      v8 = [cellFactory18 randomMACCellAtIndexPath:pathCopy chinaDevice:{-[WFNetworkSettingsViewController _isChinaDevice](self, "_isChinaDevice")}];

      if ([pathCopy row] == 1)
      {
        _macAddressToDisplay2 = [(WFNetworkSettingsViewController *)self _macAddressToDisplay];
      }

      else
      {
        if ([pathCopy row])
        {
          goto LABEL_125;
        }

        _macAddressToDisplay2 = [(WFNetworkSettingsViewController *)self _selectedPrivateModeForOption:self->_privateAddressMode];
      }

      descriptionLabel4 = _macAddressToDisplay2;
      descriptionLabel2 = [v8 detailTextLabel];
      [descriptionLabel2 setText:descriptionLabel4];
      goto LABEL_123;
    case 16:
      descriptionLabel4 = [(WFNetworkSettingsViewController *)self cellFactory];
      v20 = [descriptionLabel4 outrankedCellAtIndexPath:pathCopy chinaDevice:{-[WFNetworkSettingsViewController _isChinaDevice](self, "_isChinaDevice")}];
LABEL_56:
      v8 = v20;
      goto LABEL_124;
    case 17:
      cellFactory19 = [(WFNetworkSettingsViewController *)self cellFactory];
      v8 = [cellFactory19 wifiModeCellAtIndexPath:pathCopy];

      descriptionLabel4 = [v8 contentConfiguration];
      _isChinaDevice = [(WFNetworkSettingsViewController *)self _isChinaDevice];
      v71 = @"kWFLocSettingsWiFiModeTitle";
      if (_isChinaDevice)
      {
        v71 = @"kWFLocSettingsWiFiModeTitle_CH";
      }

      v72 = MEMORY[0x277CCA8D8];
      v73 = v71;
      v74 = [v72 bundleForClass:objc_opt_class()];
      v75 = [v74 localizedStringForKey:v73 value:&stru_288308678 table:@"WiFiKitUILocalizableStrings-WIFI_6E"];

      [descriptionLabel4 setText:v75];
      context6 = [(WFNetworkSettingsViewController *)self context];
      v77 = -[WFNetworkSettingsViewController _displayStringForDisableMode:](self, "_displayStringForDisableMode:", [context6 wifiMode]);
      [descriptionLabel4 setSecondaryText:v77];

      [v8 setContentConfiguration:descriptionLabel4];
      [v8 setAccessoryType:1];
      goto LABEL_124;
    case 18:
      if (v6)
      {
        goto LABEL_58;
      }

      cellFactory20 = [(WFNetworkSettingsViewController *)self cellFactory];
      v8 = [cellFactory20 contentCachesCellAtIndexPath:pathCopy];

      v84 = MEMORY[0x277CCABB0];
      context7 = [(WFNetworkSettingsViewController *)self context];
      contentCachesContext = [context7 contentCachesContext];
      v87 = [v84 numberWithInt:{objc_msgSend(contentCachesContext, "numOfContentCaches")}];
      stringValue = [v87 stringValue];
      detailTextLabel7 = [v8 detailTextLabel];
      [detailTextLabel7 setText:stringValue];

      goto LABEL_135;
    default:
      goto LABEL_58;
  }
}

- (int64_t)_sectionTypeAtSection:(int64_t)section
{
  sections = [(WFNetworkSettingsViewController *)self sections];
  v5 = [sections objectAtIndex:section];
  integerValue = [v5 integerValue];

  return integerValue;
}

- (void)_saveConfig:(id)config
{
  v15 = *MEMORY[0x277D85DE8];
  configCopy = config;
  config = [(WFNetworkSettingsViewController *)self config];
  v6 = [config changesBetweenConfig:configCopy];

  v7 = WFLogForCategory(0);
  v8 = OSLogForWFLogLevel(4uLL);
  if (WFCurrentLogLevel() >= 4 && v7 && os_log_type_enabled(v7, v8))
  {
    v13 = 138412290;
    v14 = configCopy;
    _os_log_impl(&dword_273FB9000, v7, v8, "save handler new config %@", &v13, 0xCu);
  }

  v9 = WFLogForCategory(0);
  v10 = OSLogForWFLogLevel(4uLL);
  if (WFCurrentLogLevel() >= 4 && v9 && os_log_type_enabled(v9, v10))
  {
    v13 = 138412290;
    v14 = v6;
    _os_log_impl(&dword_273FB9000, v9, v10, "changes: %@", &v13, 0xCu);
  }

  dataCoordinator = [(WFNetworkSettingsViewController *)self dataCoordinator];
  [dataCoordinator networkSettingsViewController:self saveConfig:configCopy errorHandler:&__block_literal_global_237];

  v12 = *MEMORY[0x277D85DE8];
}

void __47__WFNetworkSettingsViewController__saveConfig___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = WFLogForCategory(0);
  v4 = OSLogForWFLogLevel(2uLL);
  if (WFCurrentLogLevel() >= 2 && v3)
  {
    v5 = v3;
    if (os_log_type_enabled(v5, v4))
    {
      v6 = [v2 code];
      v7 = [v2 userInfo];
      v9 = 134218242;
      v10 = v6;
      v11 = 2112;
      v12 = v7;
      _os_log_impl(&dword_273FB9000, v5, v4, "Failed to save settings config (errCode %lu) - userInfo %@", &v9, 0x16u);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)_shouldShowIPv6ForConfig:(id)config
{
  configCopy = config;
  ipv6Addresses = [configCopy ipv6Addresses];
  if ([ipv6Addresses count])
  {
    current = [configCopy current];
  }

  else
  {
    ipv6RouterAddress = [configCopy ipv6RouterAddress];
    if (ipv6RouterAddress)
    {
      current = [configCopy current];
    }

    else
    {
      current = 0;
    }
  }

  return current;
}

- (BOOL)tableView:(id)view shouldShowMenuForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v6 = -[WFNetworkSettingsViewController _sectionTypeAtSection:](self, "_sectionTypeAtSection:", [pathCopy section]);
  v7 = v6 == 15 || v6 == 5;
  v8 = v7 && [pathCopy row];

  return v8;
}

- (void)tableView:(id)view performAction:(SEL)action forRowAtIndexPath:(id)path withSender:(id)sender
{
  viewCopy = view;
  pathCopy = path;
  v10 = -[WFNetworkSettingsViewController _sectionTypeAtSection:](self, "_sectionTypeAtSection:", [pathCopy section]);
  if (sel_copy_ == action)
  {
    v11 = v10;
    v12 = [viewCopy cellForRowAtIndexPath:pathCopy];
    v13 = v12;
    if (v11 == 3)
    {
      autoJoinSectionRows = [(WFNetworkSettingsViewController *)self autoJoinSectionRows];
      v15 = [autoJoinSectionRows objectAtIndex:{objc_msgSend(pathCopy, "row")}];
      integerValue = [v15 integerValue];

      if ((integerValue & 0xFFFFFFFFFFFFFFFELL) == 2)
      {
        contentConfiguration = [v13 contentConfiguration];
        secondaryText = [contentConfiguration secondaryText];
        if (![secondaryText length])
        {
LABEL_9:

          goto LABEL_10;
        }

        generalPasteboard = [MEMORY[0x277D75810] generalPasteboard];
        text2 = generalPasteboard;
        v21 = secondaryText;
LABEL_8:
        [generalPasteboard setString:v21];

        goto LABEL_9;
      }
    }

    else
    {
      detailTextLabel = [v12 detailTextLabel];
      text = [detailTextLabel text];
      v24 = [text length];

      if (v24)
      {
        contentConfiguration = [MEMORY[0x277D75810] generalPasteboard];
        secondaryText = [v13 detailTextLabel];
        text2 = [secondaryText text];
        generalPasteboard = contentConfiguration;
        v21 = text2;
        goto LABEL_8;
      }
    }

LABEL_10:
  }
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v126 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  pathCopy = path;
  v7 = -[WFNetworkSettingsViewController _sectionTypeAtSection:](self, "_sectionTypeAtSection:", [pathCopy section]);
  delegate = [(WFNetworkSettingsViewController *)self delegate];
  v8 = WFLogForCategory(0);
  v9 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v8)
  {
    v10 = v8;
    if (os_log_type_enabled(v10, v9))
    {
      v11 = [pathCopy row];
      section = [pathCopy section];
      v13 = [(WFNetworkSettingsViewController *)self _stringForSettingsSection:v7];
      *buf = 134218498;
      v121 = v11;
      v122 = 2048;
      v123 = section;
      v124 = 2112;
      v125 = v13;
      _os_log_impl(&dword_273FB9000, v10, v9, "User did select network settings row=%ld in section=%ld (%@)", buf, 0x20u);
    }
  }

  switch(v7)
  {
    case 1:
      if ([pathCopy row] == 1)
      {
        context = [(WFNetworkSettingsViewController *)self context];
        v15 = objc_opt_respondsToSelector();

        if (v15)
        {
          context2 = [(WFNetworkSettingsViewController *)self context];
          [context2 openPortalURL];
        }
      }

      break;
    case 2:
      context3 = [(WFNetworkSettingsViewController *)self context];

      if (context3)
      {
        context4 = [(WFNetworkSettingsViewController *)self context];
        [context4 join];
      }

      else
      {
        context4 = [(WFNetworkSettingsViewController *)self delegate];
        [context4 networkSettingsViewControllerDidJoinNetwork:self];
      }

      break;
    case 3:
      autoJoinSectionRows = [(WFNetworkSettingsViewController *)self autoJoinSectionRows];
      v41 = [autoJoinSectionRows objectAtIndex:{objc_msgSend(pathCopy, "row")}];
      integerValue = [v41 integerValue];

      if ((integerValue & 0xFFFFFFFFFFFFFFFELL) == 2)
      {
        self->_credentailCellTapped = 1;
        tableView = [(WFNetworkSettingsViewController *)self tableView];
        [tableView reloadData];

        context5 = [(WFNetworkSettingsViewController *)self context];
        if (context5)
        {
          context6 = [(WFNetworkSettingsViewController *)self context];
          v46 = objc_opt_respondsToSelector();

          if (v46)
          {
            context7 = [(WFNetworkSettingsViewController *)self context];
            credentialsTappedHandler = [context7 credentialsTappedHandler];

            if (credentialsTappedHandler)
            {
              v49 = integerValue == 3;
              context8 = [(WFNetworkSettingsViewController *)self context];
              credentialsTappedHandler2 = [context8 credentialsTappedHandler];
              v52 = credentialsTappedHandler2;
              if (v49)
              {
                v53 = 2;
              }

              else
              {
                v53 = 1;
              }

              (*(credentialsTappedHandler2 + 16))(credentialsTappedHandler2, v53);
            }
          }
        }

        if (self->_allowViewPassword)
        {
          v54 = WFLogForCategory(0);
          v55 = OSLogForWFLogLevel(4uLL);
          if (WFCurrentLogLevel() >= 4 && v54 && os_log_type_enabled(v54, v55))
          {
            *buf = 0;
            _os_log_impl(&dword_273FB9000, v54, v55, "Already allow viewing password. Show copy menu.", buf, 2u);
          }

          v56 = [viewCopy cellForRowAtIndexPath:pathCopy];
          if (([v56 canBecomeFirstResponder] & 1) == 0)
          {
            v57 = WFLogForCategory(0);
            v58 = OSLogForWFLogLevel(1uLL);
            if (WFCurrentLogLevel() && v57 && os_log_type_enabled(v57, v58))
            {
              *buf = 0;
              _os_log_impl(&dword_273FB9000, v57, v58, "Unable to present context menu as the credentail cell cannot become first responder!", buf, 2u);
            }
          }

          [v56 becomeFirstResponder];
          mEMORY[0x277D75718] = [MEMORY[0x277D75718] sharedMenuController];
          [mEMORY[0x277D75718] update];
          mEMORY[0x277D75718]2 = [MEMORY[0x277D75718] sharedMenuController];
          [v56 bounds];
          [mEMORY[0x277D75718]2 showMenuFromView:v56 rect:?];
        }

        else
        {
          v99 = objc_alloc_init(MEMORY[0x277CD4798]);
          selfCopy = self;
          _wifiPasswordContextOptions = [(WFNetworkSettingsViewController *)selfCopy _wifiPasswordContextOptions];
          v117[0] = MEMORY[0x277D85DD0];
          v117[1] = 3221225472;
          v117[2] = __69__WFNetworkSettingsViewController_tableView_didSelectRowAtIndexPath___block_invoke;
          v117[3] = &unk_279EC5F68;
          v117[4] = selfCopy;
          v118 = viewCopy;
          v119 = pathCopy;
          [v99 evaluatePolicy:2 options:_wifiPasswordContextOptions reply:v117];
        }
      }

      break;
    case 4:
      [(WFNetworkSettingsViewController *)self _promptForgetNetwork];
      break;
    case 5:
      if ([pathCopy row])
      {
        if ([pathCopy row] == 6)
        {
          config = [(WFNetworkSettingsViewController *)self config];
          v79 = [config ipv4Config] == 0;

          if (v79)
          {
            goto LABEL_51;
          }
        }
      }

      else
      {
        v95 = [WFIPConfigViewController alloc];
        config2 = [(WFNetworkSettingsViewController *)self config];
        appearanceProxy = [(WFNetworkSettingsViewController *)self appearanceProxy];
        v98 = [(WFIPConfigViewController *)v95 initWithConfig:config2 ipType:0 appearanceProxy:appearanceProxy];

        objc_initWeak(buf, self);
        v113[0] = MEMORY[0x277D85DD0];
        v113[1] = 3221225472;
        v113[2] = __69__WFNetworkSettingsViewController_tableView_didSelectRowAtIndexPath___block_invoke_2_252;
        v113[3] = &unk_279EC5FB8;
        objc_copyWeak(&v114, buf);
        [(WFIPConfigViewController *)v98 setSaveHandler:v113];
        [(WFNetworkSettingsViewController *)self _presentDetailViewController:v98];
        objc_destroyWeak(&v114);
        objc_destroyWeak(buf);
      }

      break;
    case 6:
LABEL_51:
      view = [(WFNetworkSettingsViewController *)self view];
      [viewCopy rectForRowAtIndexPath:pathCopy];
      [view convertRect:viewCopy fromView:?];
      v82 = v81;
      v84 = v83;
      v86 = v85;
      v88 = v87;

      [(WFNetworkSettingsViewController *)self _presentRenewLeaseAlertWithSourceRect:v82, v84, v86, v88];
      break;
    case 7:
      if (![pathCopy row])
      {
        config3 = [(WFNetworkSettingsViewController *)self config];
        ipv6Addresses = [config3 ipv6Addresses];
        v65 = [ipv6Addresses count] == 0;

        if (!v65)
        {
          v66 = [WFIPViewController alloc];
          config4 = [(WFNetworkSettingsViewController *)self config];
          ipv6Addresses2 = [config4 ipv6Addresses];
          appearanceProxy2 = [(WFNetworkSettingsViewController *)self appearanceProxy];
          v70 = [(WFIPViewController *)v66 initWithAddresses:ipv6Addresses2 prefixLengths:0 appearanceProxy:appearanceProxy2];

          [(WFNetworkSettingsViewController *)self _presentDetailViewController:v70];
        }
      }

      break;
    case 8:
      v71 = [WFDNSConfigViewController alloc];
      config5 = [(WFNetworkSettingsViewController *)self config];
      appearanceProxy3 = [(WFNetworkSettingsViewController *)self appearanceProxy];
      v74 = [(WFDNSConfigViewController *)v71 initWithConfig:config5 appearanceProxy:appearanceProxy3];

      objc_initWeak(buf, self);
      v115[0] = MEMORY[0x277D85DD0];
      v115[1] = 3221225472;
      v115[2] = __69__WFNetworkSettingsViewController_tableView_didSelectRowAtIndexPath___block_invoke_249;
      v115[3] = &unk_279EC5F90;
      objc_copyWeak(&v116, buf);
      [(WFDNSConfigViewController *)v74 setSaveHandler:v115];
      [(WFNetworkSettingsViewController *)self _presentDetailViewController:v74];
      objc_destroyWeak(&v116);
      objc_destroyWeak(buf);

      break;
    case 9:
      v91 = [WFProxyConfigViewController alloc];
      config6 = [(WFNetworkSettingsViewController *)self config];
      appearanceProxy4 = [(WFNetworkSettingsViewController *)self appearanceProxy];
      v94 = [(WFProxyConfigViewController *)v91 initWithConfig:config6 appearanceProxy:appearanceProxy4];

      objc_initWeak(buf, self);
      v111[0] = MEMORY[0x277D85DD0];
      v111[1] = 3221225472;
      v111[2] = __69__WFNetworkSettingsViewController_tableView_didSelectRowAtIndexPath___block_invoke_3;
      v111[3] = &unk_279EC5FB8;
      objc_copyWeak(&v112, buf);
      [(WFProxyConfigViewController *)v94 setSaveHandler:v111];
      [(WFNetworkSettingsViewController *)self _presentDetailViewController:v94];
      objc_destroyWeak(&v112);
      objc_destroyWeak(buf);

      break;
    case 10:
      context9 = [(WFNetworkSettingsViewController *)self context];

      if (context9)
      {
        context10 = [(WFNetworkSettingsViewController *)self context];
        [context10 manage];
      }

      else
      {
        [delegate networkSettingsViewControllerDidManageNetwork:self];
      }

      break;
    case 14:
      context11 = [(WFNetworkSettingsViewController *)self context];
      diagnosticsContext = [context11 diagnosticsContext];

      v33 = [WFDiagnosticsTableViewController alloc];
      context12 = [(WFNetworkSettingsViewController *)self context];
      appearanceProxy5 = [(WFNetworkSettingsViewController *)self appearanceProxy];
      v36 = [(WFDiagnosticsTableViewController *)v33 initWithDiagnosticsContext:diagnosticsContext detailsProviderContext:context12 appearanceProxy:appearanceProxy5];

      [(WFNetworkSettingsViewController *)self _presentDetailViewController:v36];
      break;
    case 15:
      if (![pathCopy row])
      {
        if ([(WFDetailsProviderContext *)self->_context isRandomMACAddressConfigurable])
        {
          [(WFNetworkSettingsViewController *)self _pushPrivateModeSelectionViewController];
        }

        else
        {
          v102 = WFLogForCategory(0);
          v103 = OSLogForWFLogLevel(1uLL);
          if (WFCurrentLogLevel() && v102)
          {
            v104 = v102;
            if (os_log_type_enabled(v104, v103))
            {
              ssid = [(WFNetworkSettingsConfig *)self->_config ssid];
              *buf = 138412290;
              v121 = ssid;
              _os_log_impl(&dword_273FB9000, v104, v103, "Private Address mode for %@ is not configurable!", buf, 0xCu);
            }
          }
        }
      }

      break;
    case 16:
      context13 = [(WFNetworkSettingsViewController *)self context];
      v38 = ([context13 requestedFields] & 0x2000) == 0;

      if (v38)
      {
        context14 = [(WFNetworkSettingsViewController *)self context];
        -[WFNetworkSettingsViewController _promptOverrideWiFiOutrankedForPrivateCellular:](self, "_promptOverrideWiFiOutrankedForPrivateCellular:", ([context14 requestedFields] >> 14) & 1);
      }

      else
      {
        [(WFNetworkSettingsViewController *)self _promptOverrideWiFiOutrankedDev];
      }

      break;
    case 17:
      v17 = MEMORY[0x277CBEA60];
      v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v19 = [v18 localizedStringForKey:@"kWFLocSettingsWiFiModeAuto" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
      v20 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v21 = [v20 localizedStringForKey:@"kWFLocSettingsWiFiModeOff" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
      v22 = [v17 arrayWithObjects:{v19, v21, 0}];

      v23 = [[WFValueListViewController alloc] initWithTitles:v22 switchTitle:0];
      _isChinaDevice = [(WFNetworkSettingsViewController *)self _isChinaDevice];
      v25 = @"kWFLocSettingsWiFiModeTitle";
      if (_isChinaDevice)
      {
        v25 = @"kWFLocSettingsWiFiModeTitle_CH";
      }

      v26 = v25;
      v27 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v28 = [v27 localizedStringForKey:v26 value:&stru_288308678 table:@"WiFiKitUILocalizableStrings-WIFI_6E"];
      navigationItem = [(WFValueListViewController *)v23 navigationItem];
      [navigationItem setTitle:v28];

      v30 = [(WFNetworkSettingsViewController *)self _displayStringForDisableMode:[(WFDetailsProviderContext *)self->_context wifiMode]];
      [(WFValueListViewController *)v23 setSelectedTitle:v30];

      objc_initWeak(buf, self);
      v109[0] = MEMORY[0x277D85DD0];
      v109[1] = 3221225472;
      v109[2] = __69__WFNetworkSettingsViewController_tableView_didSelectRowAtIndexPath___block_invoke_4;
      v109[3] = &unk_279EC5D20;
      objc_copyWeak(&v110, buf);
      v109[4] = self;
      [(WFValueListViewController *)v23 setCompletionHandler:v109];
      [(UIViewController *)self wf_pushViewController:v23 animated:1];
      [(WFNetworkSettingsViewController *)self _didStartPresentingDetailViewController];
      objc_destroyWeak(&v110);
      objc_destroyWeak(buf);

      break;
    case 18:
      context15 = [(WFNetworkSettingsViewController *)self context];
      contentCachesContext = [context15 contentCachesContext];
      cacheLocatorSettingsInstance = [contentCachesContext cacheLocatorSettingsInstance];
      [(WFNetworkSettingsViewController *)self _presentDetailViewController:cacheLocatorSettingsInstance];

      break;
    default:
      break;
  }

  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];

  v106 = *MEMORY[0x277D85DE8];
}

void __69__WFNetworkSettingsViewController_tableView_didSelectRowAtIndexPath___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __69__WFNetworkSettingsViewController_tableView_didSelectRowAtIndexPath___block_invoke_2;
  v8[3] = &unk_279EC5F40;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v9 = v4;
  v10 = v5;
  v11 = v6;
  v12 = *(a1 + 48);
  v7 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v8);
}

void __69__WFNetworkSettingsViewController_tableView_didSelectRowAtIndexPath___block_invoke_2(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = WFLogForCategory(0);
    v3 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v2 && os_log_type_enabled(v2, v3))
    {
      v4 = *(a1 + 32);
      v16 = 138412290;
      v17 = v4;
      _os_log_impl(&dword_273FB9000, v2, v3, "Authentication Error: %@", &v16, 0xCu);
    }

    v5 = *(a1 + 32);
  }

  else
  {
    v5 = 0;
  }

  v6 = [v5 code];
  if (v6 == -5)
  {
    v7 = WFLogForCategory(0);
    v8 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v7 && os_log_type_enabled(v7, v8))
    {
      LOWORD(v16) = 0;
      _os_log_impl(&dword_273FB9000, v7, v8, "User turned off passcode", &v16, 2u);
    }
  }

  if (v5)
  {
    v9 = v6 == -5;
  }

  else
  {
    v9 = 1;
  }

  v10 = v9;
  [*(a1 + 40) setAllowViewPassword:v10];
  v11 = [*(a1 + 40) tableView];
  [v11 reloadData];

  if ([*(a1 + 40) allowViewPassword])
  {
    v12 = [*(a1 + 48) cellForRowAtIndexPath:*(a1 + 56)];
    [v12 becomeFirstResponder];
    v13 = [MEMORY[0x277D75718] sharedMenuController];
    [v13 update];
    v14 = [MEMORY[0x277D75718] sharedMenuController];
    [v12 bounds];
    [v14 showMenuFromView:v12 rect:?];
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __69__WFNetworkSettingsViewController_tableView_didSelectRowAtIndexPath___block_invoke_249(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v19 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = [WeakRetained config];
  v10 = [v9 copy];

  v11 = [v10 dnsConfig];
  v12 = v11 != a2;
  if (v11 != a2)
  {
    [v10 setDnsConfig:a2];
  }

  v13 = [WeakRetained config];
  v14 = [v13 dnsServerAddresses];
  v15 = [v14 isEqualToArray:v19];

  if ((v15 & 1) == 0)
  {
    [v10 setDnsServerAddresses:v19];
    v12 = 1;
  }

  v16 = [WeakRetained config];
  v17 = [v16 dnsSearchDomains];
  v18 = [v17 isEqualToArray:v7];

  if ((v18 & 1) == 0)
  {
    [v10 setDnsSearchDomains:v7];
    goto LABEL_9;
  }

  if (v12)
  {
LABEL_9:
    [WeakRetained _saveConfig:v10];
  }

  [WeakRetained _didDismissDetailViewController];
}

void __69__WFNetworkSettingsViewController_tableView_didSelectRowAtIndexPath___block_invoke_2_252(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _saveConfig:v3];

  [WeakRetained _didDismissDetailViewController];
}

void __69__WFNetworkSettingsViewController_tableView_didSelectRowAtIndexPath___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _saveConfig:v3];

  [WeakRetained _didDismissDetailViewController];
}

void __69__WFNetworkSettingsViewController_tableView_didSelectRowAtIndexPath___block_invoke_4(uint64_t a1, void *a2)
{
  v12 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = *(a1 + 32);
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"kWFLocSettingsWiFiModeAuto" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
  if ([v12 isEqualToString:v6])
  {
    v7 = [*(*(a1 + 32) + 1256) wifiMode];

    if (v7 > 1)
    {
LABEL_7:
      [WeakRetained _updateWiFiEMode:{objc_msgSend(*(a1 + 32), "_disableModeFromKey:", v12)}];
      goto LABEL_9;
    }
  }

  else
  {
  }

  v8 = *(a1 + 32);
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"kWFLocSettingsWiFiModeOff" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
  if ([v12 isEqualToString:v10])
  {
    v11 = [*(*(a1 + 32) + 1256) wifiMode];

    if (v11 >= 2)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

LABEL_9:
  [WeakRetained _didDismissDetailViewController];
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  v4 = [(WFNetworkSettingsViewController *)self _sectionTypeAtSection:section];
  v5 = 0;
  if (v4 <= 7)
  {
    if (v4 == 5)
    {
      v6 = @"kWFLocSettingsIPSectionTitle";
    }

    else
    {
      if (v4 != 7)
      {
        goto LABEL_13;
      }

      v6 = @"kWFLocSettingsIPV6SectionTitle";
    }
  }

  else
  {
    switch(v4)
    {
      case 8:
        v6 = @"kWFLocSettingsDNSSectionTitle";
        break;
      case 9:
        v6 = @"kWFLocSettingsProxySectionTitle";
        break;
      case 18:
        v6 = @"kWFLocSettingsContentCachesSectionTitle";
        break;
      default:
        goto LABEL_13;
    }
  }

  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v7 localizedStringForKey:v6 value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];

LABEL_13:

  return v5;
}

- (id)tableView:(id)view viewForFooterInSection:(int64_t)section
{
  v5 = [(WFNetworkSettingsViewController *)self _sectionTypeAtSection:section];
  v6 = 0;
  if (v5 > 12)
  {
    if (v5 > 15)
    {
      if (v5 == 16)
      {
        _outrankedFooterView = [(WFNetworkSettingsViewController *)self _outrankedFooterView];
      }

      else
      {
        if (v5 != 17)
        {
          goto LABEL_25;
        }

        _outrankedFooterView = [(WFNetworkSettingsViewController *)self _WiFiModeFooterView];
      }
    }

    else
    {
      if (v5 == 13)
      {
        networkQualityFooterView = [(WFNetworkSettingsViewController *)self networkQualityFooterView];
        goto LABEL_20;
      }

      if (v5 != 15)
      {
        goto LABEL_25;
      }

      _outrankedFooterView = [(WFNetworkSettingsViewController *)self _randomMACFooterView];
    }

LABEL_23:
    v6 = _outrankedFooterView;
    textLabel = [v6 textLabel];
    [textLabel setNumberOfLines:0];

    textLabel2 = [v6 textLabel];

    [textLabel2 sizeToFit];
    goto LABEL_24;
  }

  if (v5 > 10)
  {
    if (v5 == 11)
    {
      [(WFNetworkSettingsViewController *)self _lowDataModeFooterView];
    }

    else
    {
      [(WFNetworkSettingsViewController *)self _privacyProxyEnabledFooterView];
    }
    _outrankedFooterView = ;
    goto LABEL_23;
  }

  if (!v5)
  {
    if (![(WFNetworkSettingsViewController *)self _showRecommendationSupportLink])
    {
      goto LABEL_28;
    }

    networkQualityFooterView = [(WFNetworkSettingsViewController *)self linkFooterView];
LABEL_20:
    v6 = networkQualityFooterView;
    goto LABEL_25;
  }

  if (v5 != 6)
  {
    goto LABEL_25;
  }

  config = [(WFNetworkSettingsViewController *)self config];
  dhcpLeaseExpirationDate = [config dhcpLeaseExpirationDate];

  if (dhcpLeaseExpirationDate)
  {
    v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    textLabel2 = [v9 localizedStringForKey:@"kWFLocSettingsDHCPLeaseExpiresTitle" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];

    config2 = [(WFNetworkSettingsViewController *)self config];
    dhcpLeaseExpirationDate2 = [config2 dhcpLeaseExpirationDate];
    v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v14 = [v13 localizedStringForKey:@"kWFLocSettingsDHCPLeaseExpiresDateFormat" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
    v15 = [dhcpLeaseExpirationDate2 stringFromDHCPLeaseExpirationDateWithFormatString:v14];

    v16 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{15.0, 0.0, 0.0, 0.0}];
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: %@", textLabel2, v15];
    [v16 setText:v17];

    v18 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76968] compatibleWithTraitCollection:0];
    [v16 setFont:v18];

    altTextColor = [MEMORY[0x277D75348] altTextColor];
    [v16 setTextColor:altTextColor];

    [v16 sizeToFit];
    v20 = objc_alloc(MEMORY[0x277D75D18]);
    v6 = [v20 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    [v6 addSubview:v16];

LABEL_24:
    goto LABEL_25;
  }

LABEL_28:
  v6 = 0;
LABEL_25:

  return v6;
}

- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section
{
  result = *MEMORY[0x277D76F30];
  if (!section)
  {
    return 18.0;
  }

  return result;
}

- (double)tableView:(id)view estimatedHeightForFooterInSection:(int64_t)section
{
  v34[2] = *MEMORY[0x277D85DE8];
  v5 = [(WFNetworkSettingsViewController *)self _sectionTypeAtSection:section];
  v6 = 0.0;
  if (v5 <= 12)
  {
    switch(v5)
    {
      case 0:
        v33[0] = *MEMORY[0x277D740C0];
        systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
        v34[0] = systemBlueColor;
        v33[1] = *MEMORY[0x277D740A8];
        v9 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76968]];
        v34[1] = v9;
        v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:2];

        recommendationLinkAttributedString = [(WFNetworkSettingsViewController *)self recommendationLinkAttributedString];
        string = [recommendationLinkAttributedString string];
        [string sizeWithAttributes:v10];
        v14 = v13;

        [@"A" sizeWithAttributes:v10];
        v6 = ceil(v14 + v15 * 2.0);

        goto LABEL_23;
      case 11:
        _lowDataModeFooterView = [(WFNetworkSettingsViewController *)self _lowDataModeFooterView];
        break;
      case 12:
        _lowDataModeFooterView = [(WFNetworkSettingsViewController *)self _privacyProxyEnabledFooterView];
        break;
      default:
        goto LABEL_23;
    }

LABEL_18:
    networkQualityFooterView = _lowDataModeFooterView;
    [_lowDataModeFooterView frame];
    if (v17 == 0.0)
    {
      textLabel = [networkQualityFooterView textLabel];
      attributedText = [textLabel attributedText];
      v20 = [attributedText attributesAtIndex:0 effectiveRange:0];

      textLabel2 = [networkQualityFooterView textLabel];
      text = [textLabel2 text];
      [text sizeWithAttributes:0];
      v23 = v27;

      goto LABEL_20;
    }

    goto LABEL_21;
  }

  if (v5 > 15)
  {
    if (v5 == 16)
    {
      _lowDataModeFooterView = [(WFNetworkSettingsViewController *)self _outrankedFooterView];
    }

    else
    {
      if (v5 != 17)
      {
        goto LABEL_23;
      }

      _lowDataModeFooterView = [(WFNetworkSettingsViewController *)self _WiFiModeFooterView];
    }

    goto LABEL_18;
  }

  if (v5 == 13)
  {
    networkQualityFooterView = [(WFNetworkSettingsViewController *)self networkQualityFooterView];
    [networkQualityFooterView frame];
    if (v17 == 0.0)
    {
      v31[0] = *MEMORY[0x277D740C0];
      systemBlueColor2 = [MEMORY[0x277D75348] systemBlueColor];
      v32[0] = systemBlueColor2;
      v31[1] = *MEMORY[0x277D740A8];
      v19 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76968]];
      v32[1] = v19;
      v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:2];

      textLabel2 = [networkQualityFooterView text];
      [textLabel2 sizeWithAttributes:v20];
      v23 = v22;
LABEL_20:

      [@"A" sizeWithAttributes:v20];
      v6 = ceil(v23 + v28 * 2.0);

LABEL_22:
      goto LABEL_23;
    }

LABEL_21:
    v6 = v17;
    goto LABEL_22;
  }

  if (v5 == 15)
  {
    _lowDataModeFooterView = [(WFNetworkSettingsViewController *)self _randomMACFooterView];
    goto LABEL_18;
  }

LABEL_23:
  v29 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)_autoJoinSwitchChanged:(id)changed
{
  changedCopy = changed;
  isOn = [changedCopy isOn];
  config = [(WFNetworkSettingsViewController *)self config];
  [config setAutoJoinEnabled:isOn];

  isOn2 = [changedCopy isOn];

  [(WFNetworkSettingsViewController *)self _saveAutoJoinEnabledChanged:isOn2];
}

- (void)_autoLoginSwitchChanged:(id)changed
{
  changedCopy = changed;
  isOn = [changedCopy isOn];
  config = [(WFNetworkSettingsViewController *)self config];
  [config setAutoLoginEnabled:isOn];

  isOn2 = [changedCopy isOn];

  [(WFNetworkSettingsViewController *)self _saveAutoLoginEnabledChanged:isOn2];
}

- (void)_saveDataModeSwitchChanged:(id)changed
{
  changedCopy = changed;
  isOn = [changedCopy isOn];
  config = [(WFNetworkSettingsViewController *)self config];
  [config setIsInSaveDataMode:isOn];

  isOn2 = [changedCopy isOn];

  [(WFNetworkSettingsViewController *)self _saveSaveDataModeChanged:isOn2];
}

- (void)_privacyProxyEnabledSwitchChanged:(id)changed
{
  changedCopy = changed;
  isOn = [changedCopy isOn];
  config = [(WFNetworkSettingsViewController *)self config];
  [config setPrivacyProxyEnabled:isOn];

  isOn2 = [changedCopy isOn];

  [(WFNetworkSettingsViewController *)self _privacyProxyEnabledChanged:isOn2];
}

- (void)_updateWiFiEMode:(int64_t)mode
{
  context = [(WFNetworkSettingsViewController *)self context];
  [context setWifiMode:mode];

  tableView = [(WFNetworkSettingsViewController *)self tableView];
  [tableView reloadData];
}

- (int64_t)_disableModeFromKey:(id)key
{
  keyCopy = key;
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"kWFLocSettingsWiFiModeAuto" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
  v6 = [keyCopy isEqualToString:v5];

  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"kWFLocSettingsWiFiModeOff" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
    v10 = [keyCopy isEqualToString:v9];

    if (v10)
    {
      v7 = 2;
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (void)_pushPrivateModeSelectionViewController
{
  v20 = [(WFNetworkSettingsViewController *)self _selectedPrivateModeForOption:self->_privateAddressMode];
  v3 = MEMORY[0x277CBEA60];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"kWFLocRandomMACOffOption" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"kWFLocRandomMACStaticOption" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"kWFLocRandomMACRotatingOption" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
  v10 = [v3 arrayWithObjects:{v5, v7, v9, 0}];

  v11 = [WFPrivateAddressModeOptionsViewController alloc];
  isCurrent = [(WFDetailsProviderContext *)self->_context isCurrent];
  ssid = [(WFNetworkSettingsConfig *)self->_config ssid];
  v14 = [(WFPrivateAddressModeOptionsViewController *)v11 initWithTitles:v10 originalSelection:v20 isCurrentNetwork:isCurrent currentNetworkName:ssid isChinaDevice:[(WFNetworkSettingsViewController *)self _isChinaDevice]];

  LODWORD(v11) = [(WFNetworkSettingsViewController *)self _isChinaDevice];
  v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v16 = v15;
  if (v11)
  {
    v17 = @"KWFLocSettingRandomMACSwitchChinaTitle";
  }

  else
  {
    v17 = @"KWFLocSettingRandomMACSwitchTitle";
  }

  v18 = [v15 localizedStringForKey:v17 value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
  navigationItem = [(WFPrivateAddressModeOptionsViewController *)v14 navigationItem];
  [navigationItem setTitle:v18];

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __74__WFNetworkSettingsViewController__pushPrivateModeSelectionViewController__block_invoke;
  v21[3] = &unk_279EC5718;
  v21[4] = self;
  [(WFValueListViewController *)v14 setCompletionHandler:v21];
  [(UIViewController *)self wf_pushViewController:v14 animated:1];
}

uint64_t __74__WFNetworkSettingsViewController__pushPrivateModeSelectionViewController__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _selectedPrivateModeForString:a2];
  v4 = *(a1 + 32);

  return [v4 _updatePrivateAddressMode:v3];
}

- (void)_updatePrivateAddressMode:(unint64_t)mode
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = WFLogForCategory(0);
  v6 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v5)
  {
    v7 = v5;
    if (os_log_type_enabled(v7, v6))
    {
      ssid = [(WFNetworkSettingsConfig *)self->_config ssid];
      v17 = 138412546;
      v18 = ssid;
      v19 = 2048;
      modeCopy = mode;
      _os_log_impl(&dword_273FB9000, v7, v6, "Private address mode for %@ has been updated to %ld", &v17, 0x16u);
    }
  }

  [(WFNetworkSettingsViewController *)self setPrivateAddressMode:mode];
  sections = [(WFNetworkSettingsViewController *)self sections];
  v10 = [sections indexOfObject:&unk_2883228A0];

  if (v10 != 0x7FFFFFFFFFFFFFFFLL)
  {
    tableView = [(WFNetworkSettingsViewController *)self tableView];
    v12 = [MEMORY[0x277CCAA78] indexSetWithIndex:v10];
    [tableView reloadSections:v12 withRowAnimation:5];

    tableView2 = [(WFNetworkSettingsViewController *)self tableView];
    v14 = [MEMORY[0x277CCAA78] indexSetWithIndex:v10];
    [tableView2 _reloadSectionHeaderFooters:v14 withRowAnimation:100];
  }

  context = self->_context;
  if (objc_opt_respondsToSelector())
  {
    [(WFDetailsProviderContext *)self->_context updatePrivateAddressMode:mode];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (id)_selectedPrivateModeForOption:(unint64_t)option
{
  if (option - 1 > 2)
  {
    v5 = 0;
  }

  else
  {
    v3 = off_279EC6018[option - 1];
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = [v4 localizedStringForKey:v3 value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
  }

  return v5;
}

- (unint64_t)_selectedPrivateModeForString:(id)string
{
  stringCopy = string;
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"kWFLocRandomMACOffOption" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
  v6 = [stringCopy isEqualToString:v5];

  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"kWFLocRandomMACStaticOption" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
    v10 = [stringCopy isEqualToString:v9];

    if (v10)
    {
      v7 = 3;
    }

    else
    {
      v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v12 = [v11 localizedStringForKey:@"kWFLocRandomMACRotatingOption" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
      v13 = [stringCopy isEqualToString:v12];

      if (v13)
      {
        v7 = 2;
      }

      else
      {
        v7 = 1;
      }
    }
  }

  return v7;
}

- (BOOL)_shouldShowRandomConfigSwith
{
  context = [(WFNetworkSettingsViewController *)self context];
  isRandomMACFeatureEnabled = [context isRandomMACFeatureEnabled];

  return isRandomMACFeatureEnabled;
}

- (UISwitch)autoJoinSwitch
{
  autoJoinSwitch = self->_autoJoinSwitch;
  if (!autoJoinSwitch)
  {
    v4 = objc_alloc(MEMORY[0x277D75AE8]);
    v5 = [v4 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    v6 = self->_autoJoinSwitch;
    self->_autoJoinSwitch = v5;

    [(UISwitch *)self->_autoJoinSwitch addTarget:self action:sel__autoJoinSwitchChanged_ forControlEvents:4096];
    autoJoinSwitch = self->_autoJoinSwitch;
  }

  return autoJoinSwitch;
}

- (UISwitch)autoLoginSwitch
{
  autoLoginSwitch = self->_autoLoginSwitch;
  if (!autoLoginSwitch)
  {
    v4 = objc_alloc(MEMORY[0x277D75AE8]);
    v5 = [v4 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    v6 = self->_autoLoginSwitch;
    self->_autoLoginSwitch = v5;

    [(UISwitch *)self->_autoLoginSwitch addTarget:self action:sel__autoLoginSwitchChanged_ forControlEvents:4096];
    autoLoginSwitch = self->_autoLoginSwitch;
  }

  return autoLoginSwitch;
}

- (UISwitch)saveDataModeSwitch
{
  saveDataModeSwitch = self->_saveDataModeSwitch;
  if (!saveDataModeSwitch)
  {
    v4 = objc_alloc(MEMORY[0x277D75AE8]);
    v5 = [v4 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    v6 = self->_saveDataModeSwitch;
    self->_saveDataModeSwitch = v5;

    [(UISwitch *)self->_saveDataModeSwitch addTarget:self action:sel__saveDataModeSwitchChanged_ forControlEvents:4096];
    saveDataModeSwitch = self->_saveDataModeSwitch;
  }

  return saveDataModeSwitch;
}

- (UISwitch)privacyProxyEnabledSwitch
{
  privacyProxyEnabledSwitch = self->_privacyProxyEnabledSwitch;
  if (!privacyProxyEnabledSwitch)
  {
    v4 = objc_alloc(MEMORY[0x277D75AE8]);
    v5 = [v4 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    v6 = self->_privacyProxyEnabledSwitch;
    self->_privacyProxyEnabledSwitch = v5;

    [(UISwitch *)self->_privacyProxyEnabledSwitch addTarget:self action:sel__privacyProxyEnabledSwitchChanged_ forControlEvents:4096];
    privacyProxyEnabledSwitch = self->_privacyProxyEnabledSwitch;
  }

  return privacyProxyEnabledSwitch;
}

- (UITableViewCell)networkQualityCell
{
  networkQualityCell = self->_networkQualityCell;
  if (!networkQualityCell)
  {
    v4 = objc_alloc_init(MEMORY[0x277D75B48]);
    v5 = self->_networkQualityCell;
    self->_networkQualityCell = v4;

    networkQualityCell = self->_networkQualityCell;
  }

  return networkQualityCell;
}

- (UISwitch)randomMACSwitch
{
  randomMACSwitch = self->_randomMACSwitch;
  if (!randomMACSwitch)
  {
    v4 = objc_alloc(MEMORY[0x277D75AE8]);
    v5 = [v4 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    v6 = self->_randomMACSwitch;
    self->_randomMACSwitch = v5;

    [(UISwitch *)self->_randomMACSwitch addTarget:self action:sel__usingRandomMACSwitchChanged_ forEvents:4096];
    randomMACSwitch = self->_randomMACSwitch;
  }

  return randomMACSwitch;
}

- (WFHyperlinkFooterView)linkFooterView
{
  linkFooterView = self->_linkFooterView;
  if (!linkFooterView)
  {
    v4 = objc_alloc_init(WFHyperlinkFooterView);
    v5 = self->_linkFooterView;
    self->_linkFooterView = v4;

    _isChinaDevice = [(WFNetworkSettingsViewController *)self _isChinaDevice];
    v7 = @"kWFLocSettingsRecommendationLinkTitle";
    if (_isChinaDevice)
    {
      v7 = @"kWFLocSettingsRecommendationLinkTitleCH";
    }

    v8 = MEMORY[0x277CCA8D8];
    v9 = v7;
    v10 = [v8 bundleForClass:objc_opt_class()];
    v11 = [v10 localizedStringForKey:v9 value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];

    [(WFHyperlinkFooterView *)self->_linkFooterView setText:v11];
    -[WFHyperlinkFooterView setLinkRange:](self->_linkFooterView, "setLinkRange:", 0, [v11 length]);
    [(WFHyperlinkFooterView *)self->_linkFooterView setTarget:self];
    [(WFHyperlinkFooterView *)self->_linkFooterView setAction:sel__openRecommendationsLink_];

    linkFooterView = self->_linkFooterView;
  }

  return linkFooterView;
}

- (void)_openRecommendationsLink:(id)link
{
  context = [(WFNetworkSettingsViewController *)self context];

  if (context)
  {
    context2 = [(WFNetworkSettingsViewController *)self context];
    [context2 openRecommendationLink];
  }

  else
  {
    context2 = [(WFNetworkSettingsViewController *)self delegate];
    [context2 networkSettingsViewControllerDidTapRecommendationLink:self];
  }
}

- (BOOL)_showRecommendationSupportLink
{
  config = [(WFNetworkSettingsViewController *)self config];
  healthRecommendations = [config healthRecommendations];
  if ([healthRecommendations count] == 1)
  {
    config2 = [(WFNetworkSettingsViewController *)self config];
    healthRecommendations2 = [config2 healthRecommendations];
    firstObject = [healthRecommendations2 firstObject];
    v8 = [WFHealthIssue issueWithType:1];
    v9 = [firstObject isEqual:v8] ^ 1;
  }

  else
  {
    LOBYTE(v9) = 1;
  }

  return v9;
}

- (void)_presentDetailViewController:(id)controller
{
  v12 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  v5 = WFLogForCategory(0);
  v6 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v5 && os_log_type_enabled(v5, v6))
  {
    v8 = 136315394;
    v9 = "[WFNetworkSettingsViewController _presentDetailViewController:]";
    v10 = 2112;
    v11 = controllerCopy;
    _os_log_impl(&dword_273FB9000, v5, v6, "%s: pushing view controller='%@'", &v8, 0x16u);
  }

  self->_detailViewControllerVisible = 1;
  [(UIViewController *)self wf_pushViewController:controllerCopy animated:1];

  v7 = *MEMORY[0x277D85DE8];
}

- (BOOL)_isChinaDevice
{
  deviceCapability = [(WFNetworkSettingsViewController *)self deviceCapability];

  return WFCapabilityIsChinaDevice(deviceCapability);
}

- (void)_logSections:(id)sections
{
  v24 = *MEMORY[0x277D85DE8];
  sectionsCopy = sections;
  string = [MEMORY[0x277CCAB68] string];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = sectionsCopy;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v18;
    do
    {
      v11 = 0;
      v12 = v9 + 1;
      do
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v13 = -[WFNetworkSettingsViewController _stringForSettingsSection:](self, "_stringForSettingsSection:", [*(*(&v17 + 1) + 8 * v11) integerValue]);
        [string appendString:v13];

        if (v12 < [v6 count])
        {
          [string appendString:{@", "}];
        }

        ++v11;
        ++v12;
      }

      while (v8 != v11);
      v9 += v8;
      v8 = [v6 countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v8);
  }

  v14 = WFLogForCategory(0);
  v15 = OSLogForWFLogLevel(4uLL);
  if (WFCurrentLogLevel() >= 4 && v14 && os_log_type_enabled(v14, v15))
  {
    *buf = 138412290;
    v22 = string;
    _os_log_impl(&dword_273FB9000, v14, v15, "Settings Sections: %@", buf, 0xCu);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (id)_displayStringForDisableMode:(int64_t)mode
{
  if (mode < 2)
  {
    v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v4 = v3;
    v5 = @"kWFLocSettingsWiFiModeAuto";
LABEL_6:
    v6 = [v3 localizedStringForKey:v5 value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];

    goto LABEL_12;
  }

  if (mode == 2)
  {
    v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v4 = v3;
    v5 = @"kWFLocSettingsWiFiModeOff";
    goto LABEL_6;
  }

  v7 = WFLogForCategory(0);
  v8 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v7 && os_log_type_enabled(v7, v8))
  {
    *v10 = 0;
    _os_log_impl(&dword_273FB9000, v7, v8, "Unexpected disable mode.", v10, 2u);
  }

  v6 = 0;
LABEL_12:

  return v6;
}

- (id)_stringForSettingsSection:(int64_t)section
{
  if (section > 0x12)
  {
    return 0;
  }

  else
  {
    return off_279EC6030[section];
  }
}

- (id)_randomAddressToDisplay
{
  randomMACAddress = self->_randomMACAddress;
  if (randomMACAddress)
  {
    v3 = randomMACAddress;
  }

  else
  {
    v4 = WFLogForCategory(0);
    v5 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v4 && os_log_type_enabled(v4, v5))
    {
      *v7 = 0;
      _os_log_impl(&dword_273FB9000, v4, v5, "Random MAC Address is Empty!", v7, 2u);
    }

    v3 = &stru_288308678;
  }

  return v3;
}

- (id)_macAddressToDisplay
{
  if ([(WFNetworkSettingsViewController *)self privateAddressMode]== 1)
  {
    _randomAddressToDisplay = self->_hardwareMACAddress;
  }

  else
  {
    _randomAddressToDisplay = [(WFNetworkSettingsViewController *)self _randomAddressToDisplay];
  }

  return _randomAddressToDisplay;
}

- (id)_randomMACFooterTextToDisplay
{
  _isChinaDevice = [(WFNetworkSettingsViewController *)self _isChinaDevice];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = v4;
  if (_isChinaDevice)
  {
    v6 = @"kWFLocPrivateAddressFooterMainTitle_CH";
  }

  else
  {
    v6 = @"kWFLocPrivateAddressFooterMainTitle";
  }

  v7 = [v4 localizedStringForKey:v6 value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];

  v8 = MEMORY[0x277CCACA8];
  v9 = [(WFNetworkSettingsViewController *)self _detailFooterForMode:self->_privateAddressMode];
  v10 = [v8 stringWithFormat:@"%@\n%@", v7, v9];

  v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v12 = [v11 localizedStringForKey:@"kWFLocPrivateAddressNotConfigurableDescription" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];

  if (([(WFDetailsProviderContext *)self->_context isRandomMACAddressConfigurable]& 1) == 0)
  {
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", v10, v12];

    v10 = v13;
  }

  return v10;
}

- (id)_detailFooterForMode:(unint64_t)mode
{
  switch(mode)
  {
    case 3uLL:
      _isChinaDevice = [(WFNetworkSettingsViewController *)self _isChinaDevice];
      v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      if (_isChinaDevice)
      {
        v5 = @"kWFLocPrivateAddressFooterStaticDetail_CH";
      }

      else
      {
        v5 = @"kWFLocPrivateAddressFooterStaticDetail";
      }

      break;
    case 2uLL:
      _isChinaDevice2 = [(WFNetworkSettingsViewController *)self _isChinaDevice];
      v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      if (_isChinaDevice2)
      {
        v5 = @"kWFLocPrivateAddressFooterRotatingDetail_CH";
      }

      else
      {
        v5 = @"kWFLocPrivateAddressFooterRotatingDetail";
      }

      break;
    case 1uLL:
      _isChinaDevice3 = [(WFNetworkSettingsViewController *)self _isChinaDevice];
      v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      if (_isChinaDevice3)
      {
        v5 = @"kWFLocPrivateAddressFooterOffDetail_CH";
      }

      else
      {
        v5 = @"kWFLocPrivateAddressFooterOffDetail";
      }

      break;
    default:
      v8 = 0;
      goto LABEL_15;
  }

  v8 = [v4 localizedStringForKey:v5 value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];

LABEL_15:

  return v8;
}

- (void)scrollToCell:(unint64_t)cell
{
  if (cell - 4 <= 3)
  {
    v5 = qword_279EC60C8[cell - 4];
    v6 = MEMORY[0x277CCAA70];
    sections = [(WFNetworkSettingsViewController *)self sections];
    v9 = [v6 indexPathForRow:0 inSection:{objc_msgSend(sections, "indexOfObject:", v5)}];

    tableView = [(WFNetworkSettingsViewController *)self tableView];
    [tableView scrollToRowAtIndexPath:v9 atScrollPosition:1 animated:1];
  }
}

- (void)_presentRenewLeaseAlertWithSourceRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v8 = WFLogForCategory(0);
  v9 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v8 && os_log_type_enabled(v8, v9))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_273FB9000, v8, v9, "User tapped renew lease", buf, 2u);
  }

  objc_initWeak(buf, self);
  v10 = [MEMORY[0x277D75110] alertControllerWithTitle:0 message:0 preferredStyle:0];
  v11 = MEMORY[0x277D750F8];
  v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v13 = [v12 localizedStringForKey:@"kWFLocRenewLeaseActionSheetButton" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __73__WFNetworkSettingsViewController__presentRenewLeaseAlertWithSourceRect___block_invoke;
  v23[3] = &unk_279EC5FE0;
  objc_copyWeak(v24, buf);
  v24[1] = *&x;
  v24[2] = *&y;
  v24[3] = *&width;
  v24[4] = *&height;
  v14 = [v11 actionWithTitle:v13 style:0 handler:v23];

  [v10 addAction:v14];
  [v10 setPreferredAction:v14];
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    popoverPresentationController = [v10 popoverPresentationController];
    view = [(WFNetworkSettingsViewController *)self view];
    [popoverPresentationController setSourceView:view];

    [popoverPresentationController setSourceRect:{x, y, width, height}];
  }

  v19 = MEMORY[0x277D750F8];
  v20 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v21 = [v20 localizedStringForKey:@"kWFLocRenewLeaseActionSheetCancelButton" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
  v22 = [v19 actionWithTitle:v21 style:1 handler:&__block_literal_global_441];
  [v10 addAction:v22];

  [(WFNetworkSettingsViewController *)self presentViewController:v10 animated:1 completion:0];
  objc_destroyWeak(v24);

  objc_destroyWeak(buf);
}

void __73__WFNetworkSettingsViewController__presentRenewLeaseAlertWithSourceRect___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WFLogForCategory(0);
  v4 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v3 && os_log_type_enabled(v3, v4))
  {
    v18 = 136315138;
    v19 = "[WFNetworkSettingsViewController _presentRenewLeaseAlertWithSourceRect:]_block_invoke";
    _os_log_impl(&dword_273FB9000, v3, v4, "%s: user confirmed renew lease", &v18, 0xCu);
  }

  v5 = objc_loadWeakRetained((a1 + 32));
  v6 = [v5 context];

  v7 = objc_loadWeakRetained((a1 + 32));
  v8 = v7;
  if (v6)
  {
    v9 = [v7 context];
    [v9 renewLease];
LABEL_16:

    goto LABEL_17;
  }

  v10 = [v7 delegate];
  v11 = objc_opt_respondsToSelector();

  v8 = objc_loadWeakRetained((a1 + 32));
  v12 = [v8 delegate];
  v9 = v12;
  if (v11)
  {
    [v12 networkSettingsViewControllerDidRenewLease:WeakRetained sourceRect:*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)];
    goto LABEL_16;
  }

  v13 = objc_opt_respondsToSelector();

  if (v13)
  {
    v8 = objc_loadWeakRetained((a1 + 32));
    v9 = [v8 delegate];
    [v9 networkSettingsViewControllerDidRenewLease:WeakRetained];
    goto LABEL_16;
  }

  v8 = WFLogForCategory(0);
  v14 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v8)
  {
    v9 = v8;
    if (os_log_type_enabled(v9, v14))
    {
      v15 = objc_loadWeakRetained((a1 + 32));
      v16 = [v15 delegate];
      v18 = 136315394;
      v19 = "[WFNetworkSettingsViewController _presentRenewLeaseAlertWithSourceRect:]_block_invoke";
      v20 = 2112;
      v21 = v16;
      _os_log_impl(&dword_273FB9000, v9, v14, "%s: delegate %@ doesn't respond to selector for lease renewal", &v18, 0x16u);
    }

    v8 = v9;
    goto LABEL_16;
  }

LABEL_17:

  v17 = *MEMORY[0x277D85DE8];
}

void __73__WFNetworkSettingsViewController__presentRenewLeaseAlertWithSourceRect___block_invoke_439()
{
  v5 = *MEMORY[0x277D85DE8];
  v0 = WFLogForCategory(0);
  v1 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v0 && os_log_type_enabled(v0, v1))
  {
    v3 = 136315138;
    v4 = "[WFNetworkSettingsViewController _presentRenewLeaseAlertWithSourceRect:]_block_invoke";
    _os_log_impl(&dword_273FB9000, v0, v1, "%s: user cancelled renew lease", &v3, 0xCu);
  }

  v2 = *MEMORY[0x277D85DE8];
}

- (id)_lowDataModeFooterView
{
  if (!self->_lowDataModeFooterView)
  {
    v3 = [objc_alloc(MEMORY[0x277D75B70]) initWithReuseIdentifier:@"LowDataMode"];
    lowDataModeFooterView = self->_lowDataModeFooterView;
    self->_lowDataModeFooterView = v3;
  }

  if ([(WFNetworkSettingsViewController *)self _isChinaDevice])
  {
    v5 = [@"kWFLocLowDataModeFooter" stringByAppendingString:@"_CH"];
  }

  else
  {
    v5 = @"kWFLocLowDataModeFooter";
  }

  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:v5 value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];

  textLabel = [(UITableViewHeaderFooterView *)self->_lowDataModeFooterView textLabel];
  text = [textLabel text];
  v10 = [v7 isEqualToString:text];

  if ((v10 & 1) == 0)
  {
    textLabel2 = [(UITableViewHeaderFooterView *)self->_lowDataModeFooterView textLabel];
    [textLabel2 setText:v7];

    textLabel3 = [(UITableViewHeaderFooterView *)self->_lowDataModeFooterView textLabel];
    [textLabel3 setNumberOfLines:0];

    textLabel4 = [(UITableViewHeaderFooterView *)self->_lowDataModeFooterView textLabel];
    [textLabel4 sizeToFit];
  }

  v14 = self->_lowDataModeFooterView;
  v15 = v14;

  return v14;
}

- (id)_WiFiModeFooterView
{
  wifiModeFooterView = self->_wifiModeFooterView;
  if (!wifiModeFooterView)
  {
    v4 = [objc_alloc(MEMORY[0x277D75B70]) initWithReuseIdentifier:@"wifiMode"];
    v5 = self->_wifiModeFooterView;
    self->_wifiModeFooterView = v4;

    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"kWFLocSettingsWiFiModeFooter" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
    textLabel = [(UITableViewHeaderFooterView *)self->_wifiModeFooterView textLabel];
    [textLabel setText:v7];

    textLabel2 = [(UITableViewHeaderFooterView *)self->_wifiModeFooterView textLabel];
    [textLabel2 setNumberOfLines:0];

    textLabel3 = [(UITableViewHeaderFooterView *)self->_wifiModeFooterView textLabel];
    [textLabel3 sizeToFit];

    wifiModeFooterView = self->_wifiModeFooterView;
  }

  return wifiModeFooterView;
}

- (id)_privacyProxyEnabledFooterView
{
  privacyProxyEnabledFooterView = self->_privacyProxyEnabledFooterView;
  if (!privacyProxyEnabledFooterView)
  {
    v4 = [objc_alloc(MEMORY[0x277D75B70]) initWithReuseIdentifier:@"ProxyEnabled"];
    v5 = self->_privacyProxyEnabledFooterView;
    self->_privacyProxyEnabledFooterView = v4;

    config = [(WFNetworkSettingsViewController *)self config];
    privacyProxyTierStatus = [config privacyProxyTierStatus];

    if (privacyProxyTierStatus == 1)
    {
      v8 = @"kWFLocPrivacyProxyNonSubscriberFooter";
    }

    else
    {
      config2 = [(WFNetworkSettingsViewController *)self config];
      privacyProxyTierStatus2 = [config2 privacyProxyTierStatus];

      if (privacyProxyTierStatus2 == 2)
      {
        v8 = @"kWFLocPrivacyProxySubscriberFooter";
      }

      else
      {
        v8 = &stru_288308678;
      }
    }

    v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v12 = [v11 localizedStringForKey:v8 value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];

    textLabel = [(UITableViewHeaderFooterView *)self->_privacyProxyEnabledFooterView textLabel];
    [textLabel setText:v12];

    textLabel2 = [(UITableViewHeaderFooterView *)self->_privacyProxyEnabledFooterView textLabel];
    [textLabel2 setNumberOfLines:0];

    textLabel3 = [(UITableViewHeaderFooterView *)self->_privacyProxyEnabledFooterView textLabel];
    [textLabel3 sizeToFit];

    privacyProxyEnabledFooterView = self->_privacyProxyEnabledFooterView;
  }

  return privacyProxyEnabledFooterView;
}

- (id)_outrankedFooterView
{
  if (!self->_outrankedFooterView)
  {
    v3 = [objc_alloc(MEMORY[0x277D75B70]) initWithReuseIdentifier:@"OutrankedFooterView"];
    outrankedFooterView = self->_outrankedFooterView;
    self->_outrankedFooterView = v3;
  }

  context = [(WFNetworkSettingsViewController *)self context];
  requestedFields = [context requestedFields];

  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  _isChinaDevice = [(WFNetworkSettingsViewController *)self _isChinaDevice];
  v9 = @"kWFLocSettingOutrankFooter";
  if (_isChinaDevice)
  {
    v9 = @"kWFLocSettingOutrankFooter_CH";
  }

  v10 = @"kWFLocSettingPrivateOutrankFooter_CH";
  if (!_isChinaDevice)
  {
    v10 = @"kWFLocSettingPrivateOutrankFooter";
  }

  if ((requestedFields & 0x4000) != 0)
  {
    v11 = v10;
  }

  else
  {
    v11 = v9;
  }

  v12 = [v7 localizedStringForKey:v11 value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];

  textLabel = [(UITableViewHeaderFooterView *)self->_outrankedFooterView textLabel];
  text = [textLabel text];
  v15 = [text isEqualToString:v12];

  if ((v15 & 1) == 0)
  {
    textLabel2 = [(UITableViewHeaderFooterView *)self->_outrankedFooterView textLabel];
    [textLabel2 setText:v12];

    textLabel3 = [(UITableViewHeaderFooterView *)self->_outrankedFooterView textLabel];
    [textLabel3 setNumberOfLines:0];

    textLabel4 = [(UITableViewHeaderFooterView *)self->_outrankedFooterView textLabel];
    [textLabel4 sizeToFit];
  }

  v19 = self->_outrankedFooterView;
  v20 = v19;

  return v19;
}

- (WFHyperlinkFooterView)networkQualityFooterView
{
  v53 = *MEMORY[0x277D85DE8];
  if (self->_networkQualityFooterView)
  {
    config = [(WFNetworkSettingsViewController *)self config];
    networkQualityDate = [config networkQualityDate];
    if (!networkQualityDate)
    {

      goto LABEL_18;
    }

    v5 = networkQualityDate;
    if (self->_networkQualityFooterDate)
    {
      config2 = [(WFNetworkSettingsViewController *)self config];
      networkQualityDate2 = [config2 networkQualityDate];
      v8 = [networkQualityDate2 isEqual:self->_networkQualityFooterDate];

      if (v8)
      {
        goto LABEL_18;
      }
    }

    else
    {
    }
  }

  v9 = WFLogForCategory(0);
  v10 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v9)
  {
    v11 = v9;
    if (os_log_type_enabled(v11, v10))
    {
      config3 = [(WFNetworkSettingsViewController *)self config];
      networkQualityDate3 = [config3 networkQualityDate];
      config4 = [(WFNetworkSettingsViewController *)self config];
      [config4 networkQualityResponsiveness];
      networkQualityFooterView = self->_networkQualityFooterView;
      v17 = "YES";
      networkQualityFooterDate = self->_networkQualityFooterDate;
      v44 = "[WFNetworkSettingsViewController networkQualityFooterView]";
      *buf = 136316162;
      v45 = 2112;
      if (!networkQualityFooterView)
      {
        v17 = "NO";
      }

      v46 = networkQualityDate3;
      v47 = 2048;
      v48 = v15;
      v49 = 2080;
      v50 = v17;
      v51 = 2112;
      v52 = networkQualityFooterDate;
      _os_log_impl(&dword_273FB9000, v11, v10, "NetQuality: %s: Date is %@, responsiveness %.3f, existing view? %s existing date? %@", buf, 0x34u);
    }
  }

  v19 = objc_alloc_init(WFHyperlinkFooterView);
  v20 = self->_networkQualityFooterView;
  self->_networkQualityFooterView = v19;

  config5 = [(WFNetworkSettingsViewController *)self config];
  networkQualityDate4 = [config5 networkQualityDate];

  if (networkQualityDate4)
  {
    v23 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v42 = [v23 localizedStringForKey:@"kWFLocNetworkQualityFooterKnown" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];

    v24 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v25 = [v24 localizedStringForKey:@"kWFLocNetworkQualityFooterLink" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];

    v26 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v27 = [v26 localizedStringForKey:@"kWFLocNetworkQualityFooterLastChecked" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];

    v28 = objc_opt_new();
    [v28 setDateStyle:1];
    [v28 setTimeStyle:1];
    [v28 setDoesRelativeDateFormatting:1];
    v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", v42, v25];
    v30 = MEMORY[0x277CCACA8];
    config6 = [(WFNetworkSettingsViewController *)self config];
    networkQualityDate5 = [config6 networkQualityDate];
    v33 = [v28 stringFromDate:networkQualityDate5];
    v34 = [v30 stringWithFormat:@"%@\n%@ %@", v29, v27, v33];

    config7 = [(WFNetworkSettingsViewController *)self config];
    networkQualityDate6 = [config7 networkQualityDate];
    v37 = [networkQualityDate6 copy];
    v38 = self->_networkQualityFooterDate;
    self->_networkQualityFooterDate = v37;

    [(WFHyperlinkFooterView *)self->_networkQualityFooterView setText:v34];
    -[WFHyperlinkFooterView setLinkRange:](self->_networkQualityFooterView, "setLinkRange:", [v29 length] - objc_msgSend(v25, "length"), objc_msgSend(v25, "length"));
    [(WFHyperlinkFooterView *)self->_networkQualityFooterView setTarget:self];
    [(WFHyperlinkFooterView *)self->_networkQualityFooterView setAction:sel__openNetworkQualityDetails_];
  }

  else
  {
    [(WFHyperlinkFooterView *)self->_networkQualityFooterView setText:0];
  }

LABEL_18:
  v39 = self->_networkQualityFooterView;
  v40 = *MEMORY[0x277D85DE8];

  return v39;
}

- (void)_networkQualityOpenURL
{
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  v2 = MEMORY[0x277CBEBC0];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"kWFLocNetworkQualityKBURL" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
  v5 = [v2 URLWithString:v4];
  [mEMORY[0x277D75128] openURL:v5 options:MEMORY[0x277CBEC10] completionHandler:0];
}

- (void)_openNetworkQualityDetails:(id)details
{
  v4 = objc_alloc(MEMORY[0x277D37688]);
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"kWFLocNetworkQualityLearnMoreTitle" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
  v28 = [v4 initWithTitle:v6 detailText:0 symbolName:0 contentLayout:2];

  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"kWFLocNetworkQualityLearnMoreSection1Title" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  if ([(WFNetworkSettingsViewController *)self _isChinaDevice])
  {
    v10 = @"kWFLocNetworkQualityLearnMoreSection1TextCH";
  }

  else
  {
    v10 = @"kWFLocNetworkQualityLearnMoreSection1Text";
  }

  v11 = [v9 localizedStringForKey:v10 value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
  [v28 addSectionWithHeader:v8 content:v11];

  v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v13 = [v12 localizedStringForKey:@"kWFLocNetworkQualityLearnMoreSection2Title" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
  v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v15 = [v14 localizedStringForKey:@"kWFLocNetworkQualityLearnMoreSection2Text" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
  [v28 addSectionWithHeader:v13 content:v15];

  v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v17 = [v16 localizedStringForKey:@"kWFLocNetworkQualityLearnMoreSection3Title" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
  v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v19 = [v18 localizedStringForKey:@"kWFLocNetworkQualityLearnMoreSection3Text" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
  [v28 addSectionWithHeader:v17 content:v19];

  accessoryButton = [MEMORY[0x277D37680] accessoryButton];
  v21 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v22 = [v21 localizedStringForKey:@"kWFLocNetworkQualityKBURL" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
  [accessoryButton setTitle:v22 forState:0];

  [accessoryButton addTarget:self action:sel__networkQualityOpenURL forControlEvents:64];
  v23 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v24 = [v23 localizedStringForKey:@"kWFLocNetworkQualityLearnMoreSection4Text" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
  [v28 addSectionWithHeader:0 content:v24 accessoryButton:accessoryButton];

  v25 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:self action:sel_donePressed];
  navigationItem = [v28 navigationItem];
  [navigationItem setRightBarButtonItem:v25];

  v27 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v28];
  [(WFNetworkSettingsViewController *)self presentViewController:v27 animated:1 completion:0];
}

- (void)donePressed
{
  presentedViewController = [(WFNetworkSettingsViewController *)self presentedViewController];
  [presentedViewController dismissViewControllerAnimated:1 completion:0];
}

- (id)_randomMACFooterView
{
  if (!self->_randomMACFooterView)
  {
    v3 = [objc_alloc(MEMORY[0x277D75B70]) initWithReuseIdentifier:@"RandomMAC"];
    randomMACFooterView = self->_randomMACFooterView;
    self->_randomMACFooterView = v3;

    textLabel = [(UITableViewHeaderFooterView *)self->_randomMACFooterView textLabel];
    [textLabel setNumberOfLines:0];

    textLabel2 = [(UITableViewHeaderFooterView *)self->_randomMACFooterView textLabel];
    [textLabel2 sizeToFit];
  }

  _randomMACFooterTextToDisplay = [(WFNetworkSettingsViewController *)self _randomMACFooterTextToDisplay];
  textLabel3 = [(UITableViewHeaderFooterView *)self->_randomMACFooterView textLabel];
  [textLabel3 setText:_randomMACFooterTextToDisplay];

  v9 = self->_randomMACFooterView;

  return v9;
}

- (void)_contentSizeCategoryDidChange:(id)change
{
  v16 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  v5 = WFLogForCategory(0);
  v6 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v5)
  {
    v7 = v5;
    if (os_log_type_enabled(v7, v6))
    {
      userInfo = [changeCopy userInfo];
      v12 = 136315394;
      v13 = "[WFNetworkSettingsViewController _contentSizeCategoryDidChange:]";
      v14 = 2112;
      v15 = userInfo;
      _os_log_impl(&dword_273FB9000, v7, v6, "%s: size changed to %@", &v12, 0x16u);
    }
  }

  lowDataModeFooterView = self->_lowDataModeFooterView;
  self->_lowDataModeFooterView = 0;

  networkQualityFooterView = self->_networkQualityFooterView;
  self->_networkQualityFooterView = 0;

  v11 = *MEMORY[0x277D85DE8];
}

- (id)_portalURL
{
  context = [(WFNetworkSettingsViewController *)self context];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    context2 = [(WFNetworkSettingsViewController *)self context];
    portalURL = [context2 portalURL];
  }

  else
  {
    portalURL = 0;
  }

  return portalURL;
}

- (id)_wifiPasswordContextOptions
{
  v9[2] = *MEMORY[0x277D85DE8];
  v8[0] = &unk_288322978;
  _passcodePromptForViewingPasswords = [(WFNetworkSettingsViewController *)self _passcodePromptForViewingPasswords];
  v8[1] = &unk_288322990;
  v9[0] = _passcodePromptForViewingPasswords;
  _touchIDPromptForViewingPasswords = [(WFNetworkSettingsViewController *)self _touchIDPromptForViewingPasswords];
  v9[1] = _touchIDPromptForViewingPasswords;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)_passcodePromptForViewingPasswords
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"kWFLocPasswordConfirmationViewPassword" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];

  return v3;
}

- (id)_touchIDPromptForViewingPasswords
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"kWFLocTouchIDConfirmationViewPassword" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];

  return v3;
}

- (BOOL)_isAutoJoinConfigurable
{
  context = [(WFNetworkSettingsViewController *)self context];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 1;
  }

  context2 = [(WFNetworkSettingsViewController *)self context];
  v6 = [context2 autoJoinConfigurable] == 0;

  return v6;
}

- (void)_setupAccessoryHeader
{
  context = [(WFNetworkSettingsViewController *)self context];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = MEMORY[0x277CB8900];
    context2 = [(WFNetworkSettingsViewController *)self context];
    daDevice = [context2 daDevice];
    v20 = [v5 infoViewControllerFromDevice:daDevice];

    if (v20)
    {
      [(WFNetworkSettingsViewController *)self addChildViewController:v20];
      [v20 preferredContentSize];
      v9 = v8;
      view = [v20 view];
      [view setTranslatesAutoresizingMaskIntoConstraints:1];

      view2 = [v20 view];
      [view2 setAutoresizingMask:2];

      view3 = [(WFNetworkSettingsViewController *)self view];
      [view3 bounds];
      v14 = v13;
      view4 = [v20 view];
      [view4 setFrame:{0.0, 0.0, v14, v9}];

      [(WFNetworkSettingsViewController *)self setAccessoryInfoController:v20];
      view5 = [v20 view];
      tableView = [(WFNetworkSettingsViewController *)self tableView];
      [tableView setTableHeaderView:view5];

      [v20 didMoveToParentViewController:self];
    }
  }

  else
  {
    v18 = WFLogForCategory(0);
    v19 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v18 && os_log_type_enabled(v18, v19))
    {
      *buf = 0;
      _os_log_impl(&dword_273FB9000, v18, v19, "Not setting up AccessoryHeader because current context hasn't implemented daDevice", buf, 2u);
    }
  }
}

- (void)_applicationWillResignActive:(id)active
{
  if (self->_allowViewPassword)
  {
    mEMORY[0x277D75718] = [MEMORY[0x277D75718] sharedMenuController];
    [mEMORY[0x277D75718] hideMenu];
  }
}

- (void)_updateManagedNetworkHeader
{
  if ([(WFNetworkSettingsViewController *)self showManagedNetworkHeader]&& ([(WFNetworkSettingsViewController *)self context], v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_opt_respondsToSelector(), v3, (v4 & 1) != 0))
  {
    tableView = [(WFNetworkSettingsViewController *)self tableView];
    [tableView bounds];
    v7 = v6;

    tableView3 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{0.0, 0.0, v7, 0.0}];
    v8 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{0.0, 0.0, v7, 100.0}];
    v9 = [MEMORY[0x277D75348] colorWithRed:0.427450985 green:0.427450985 blue:0.447058827 alpha:1.0];
    [v8 setTextColor:v9];

    [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v8 setNumberOfLines:0];
    [v8 setTextAlignment:0];
    context = [(WFNetworkSettingsViewController *)self context];
    networkOrigin = [context networkOrigin];

    v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v13 = v12;
    if (networkOrigin == 1)
    {
      v14 = @"kWFLocManagedCarrierNetworkTitle";
    }

    else
    {
      v14 = @"kWFLocManagedProfileNetworkTitle";
    }

    v15 = [v12 localizedStringForKey:v14 value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];

    v16 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76968]];
    [v8 setFont:v16];

    [v8 setText:v15];
    [tableView3 addSubview:v8];
    v17 = MEMORY[0x277CCAAD0];
    v18 = _NSDictionaryOfVariableBindings(&cfstr_Headerlabel.isa, v8, 0);
    v19 = [v17 constraintsWithVisualFormat:@"V:|-10-[headerLabel]-10-|" options:0 metrics:0 views:v18];
    [tableView3 addConstraints:v19];

    v20 = MEMORY[0x277CCAAD0];
    v21 = _NSDictionaryOfVariableBindings(&cfstr_Headerlabel.isa, v8, 0);
    v22 = [v20 constraintsWithVisualFormat:@"|-40-[headerLabel]-40-|" options:0 metrics:0 views:v21];
    [tableView3 addConstraints:v22];

    v23 = [MEMORY[0x277CCAAD0] constraintWithItem:tableView3 attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:v7];
    [tableView3 addConstraint:v23];
    [tableView3 systemLayoutSizeFittingSize:{*MEMORY[0x277D76C78], *(MEMORY[0x277D76C78] + 8)}];
    v25 = v24 + 40.0;
    [tableView3 removeConstraint:v23];
    [tableView3 setFrame:{0.0, 0.0, v7, v25}];
    [tableView3 setTranslatesAutoresizingMaskIntoConstraints:1];
    [v8 setPreferredMaxLayoutWidth:v7];
    tableView2 = [(WFNetworkSettingsViewController *)self tableView];
    [tableView2 setTableHeaderView:tableView3];
  }

  else
  {
    tableView3 = [(WFNetworkSettingsViewController *)self tableView];
    [tableView3 setTableHeaderView:0];
  }
}

- (void)_didStartPresentingDetailViewController
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = WFLogForCategory(0);
  v4 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v3 && os_log_type_enabled(v3, v4))
  {
    v6 = 136315394;
    v7 = "[WFNetworkSettingsViewController _didStartPresentingDetailViewController]";
    v8 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_273FB9000, v3, v4, "%s: %@", &v6, 0x16u);
  }

  self->_detailViewControllerVisible = 1;
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_didDismissDetailViewController
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = WFLogForCategory(0);
  v4 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v3 && os_log_type_enabled(v3, v4))
  {
    v6 = 136315394;
    v7 = "[WFNetworkSettingsViewController _didDismissDetailViewController]";
    v8 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_273FB9000, v3, v4, "%s: %@", &v6, 0x16u);
  }

  self->_detailViewControllerVisible = 0;
  v5 = *MEMORY[0x277D85DE8];
}

- (void)contentCachesContext:(id)context didUpdateNumOfContentCaches:(int)caches
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = WFLogForCategory(0);
  v7 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v6 && os_log_type_enabled(v6, v7))
  {
    v17 = 136315394;
    v18 = "[WFNetworkSettingsViewController contentCachesContext:didUpdateNumOfContentCaches:]";
    v19 = 1024;
    cachesCopy = caches;
    _os_log_impl(&dword_273FB9000, v6, v7, "%s: numCaches updated to %d", &v17, 0x12u);
  }

  config = [(WFNetworkSettingsViewController *)self config];
  context = [(WFNetworkSettingsViewController *)self context];
  v10 = [(WFNetworkSettingsViewController *)self _sectionsFromConfig:config context:context];
  [(WFNetworkSettingsViewController *)self setSections:v10];

  v11 = WFLogForCategory(0);
  v12 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v11 && os_log_type_enabled(v11, v12))
  {
    config = self->_config;
    v17 = 138412290;
    v18 = config;
    _os_log_impl(&dword_273FB9000, v11, v12, "Refreshed settings config %@", &v17, 0xCu);
  }

  sections = [(WFNetworkSettingsViewController *)self sections];
  [(WFNetworkSettingsViewController *)self _logSections:sections];

  tableView = [(WFNetworkSettingsViewController *)self tableView];
  [tableView reloadData];

  v16 = *MEMORY[0x277D85DE8];
}

- (WFNetworkSettingsViewControllerDataCoordinator)dataCoordinator
{
  WeakRetained = objc_loadWeakRetained(&self->_dataCoordinator);

  return WeakRetained;
}

- (WFNetworkSettingsViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end