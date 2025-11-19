@interface WFNetworkSettingsViewController
- (BOOL)_isAutoJoinConfigurable;
- (BOOL)_isChinaDevice;
- (BOOL)_isIPv4ConfigAuto;
- (BOOL)_shouldShowIPv6ForConfig:(id)a3;
- (BOOL)_shouldShowRandomConfigSwith;
- (BOOL)_showDemoModeFeatureDisabledAlert;
- (BOOL)_showRecommendationSupportLink;
- (BOOL)tableView:(id)a3 shouldShowMenuForRowAtIndexPath:(id)a4;
- (UISwitch)autoJoinSwitch;
- (UISwitch)autoLoginSwitch;
- (UISwitch)privacyProxyEnabledSwitch;
- (UISwitch)randomMACSwitch;
- (UISwitch)saveDataModeSwitch;
- (UITableViewCell)networkQualityCell;
- (WFHyperlinkFooterView)linkFooterView;
- (WFHyperlinkFooterView)networkQualityFooterView;
- (WFNetworkSettingsViewController)initWithConfig:(id)a3 detailsContext:(id)a4 hardwareMACAddress:(id)a5;
- (WFNetworkSettingsViewController)initWithConfig:(id)a3 detailsContext:(id)a4 hardwareMACAddress:(id)a5 appearanceProxy:(id)a6;
- (WFNetworkSettingsViewControllerDataCoordinator)dataCoordinator;
- (WFNetworkSettingsViewControllerDelegate)delegate;
- (double)tableView:(id)a3 estimatedHeightForFooterInSection:(int64_t)a4;
- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4;
- (id)_WiFiModeFooterView;
- (id)_autoJoinRowsFromContext:(id)a3;
- (id)_detailFooterForMode:(unint64_t)a3;
- (id)_displayStringForDisableMode:(int64_t)a3;
- (id)_lowDataModeFooterView;
- (id)_macAddressToDisplay;
- (id)_outrankedFooterView;
- (id)_passcodePromptForViewingPasswords;
- (id)_portalURL;
- (id)_privacyProxyEnabledFooterView;
- (id)_randomAddressToDisplay;
- (id)_randomMACFooterTextToDisplay;
- (id)_randomMACFooterView;
- (id)_sectionsFromConfig:(id)a3 context:(id)a4;
- (id)_selectedPrivateModeForOption:(unint64_t)a3;
- (id)_stringForSettingsSection:(int64_t)a3;
- (id)_touchIDPromptForViewingPasswords;
- (id)_wifiPasswordContextOptions;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4;
- (int64_t)_disableModeFromKey:(id)a3;
- (int64_t)_sectionTypeAtSection:(int64_t)a3;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (unint64_t)_selectedPrivateModeForString:(id)a3;
- (void)_applicationWillResignActive:(id)a3;
- (void)_autoJoinSwitchChanged:(id)a3;
- (void)_autoLoginSwitchChanged:(id)a3;
- (void)_contentSizeCategoryDidChange:(id)a3;
- (void)_didDismissDetailViewController;
- (void)_didStartPresentingDetailViewController;
- (void)_fillNetworkQualityCell:(id)a3;
- (void)_httpProxyAuthChanged:(id)a3;
- (void)_httpProxyConfigChanged:(int64_t)a3;
- (void)_logSections:(id)a3;
- (void)_networkQualityOpenURL;
- (void)_openNetworkQualityDetails:(id)a3;
- (void)_openRecommendationsLink:(id)a3;
- (void)_presentDetailViewController:(id)a3;
- (void)_presentRenewLeaseAlertWithSourceRect:(CGRect)a3;
- (void)_privacyProxyEnabledSwitchChanged:(id)a3;
- (void)_promptForgetNetwork;
- (void)_promptOverrideWiFiOutrankedDev;
- (void)_pushPrivateModeSelectionViewController;
- (void)_reloadNetworkQuality;
- (void)_runNetworkQuality;
- (void)_saveConfig:(id)a3;
- (void)_saveDataModeSwitchChanged:(id)a3;
- (void)_setupAccessoryHeader;
- (void)_updateManagedNetworkHeader;
- (void)_updatePrivateAddressMode:(unint64_t)a3;
- (void)_updateWiFiEMode:(int64_t)a3;
- (void)contentCachesContext:(id)a3 didUpdateNumOfContentCaches:(int)a4;
- (void)dealloc;
- (void)donePressed;
- (void)refreshConfig:(id)a3;
- (void)scrollToCell:(unint64_t)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 performAction:(SEL)a4 forRowAtIndexPath:(id)a5 withSender:(id)a6;
- (void)viewDidLoad;
@end

@implementation WFNetworkSettingsViewController

- (WFNetworkSettingsViewController)initWithConfig:(id)a3 detailsContext:(id)a4 hardwareMACAddress:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = +[WFAppearanceProxy defaultAppearanceProxy];
  v12 = [(WFNetworkSettingsViewController *)self initWithConfig:v10 detailsContext:v9 hardwareMACAddress:v8 appearanceProxy:v11];

  return v12;
}

- (WFNetworkSettingsViewController)initWithConfig:(id)a3 detailsContext:(id)a4 hardwareMACAddress:(id)a5 appearanceProxy:(id)a6
{
  v40 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  if (v14 && (v35.receiver = self, v35.super_class = WFNetworkSettingsViewController, v15 = -[WFNetworkSettingsViewController initWithStyle:](&v35, sel_initWithStyle_, [v13 tableViewStyle]), self = v15, v10) && v15)
  {
    v16 = [v10 copy];
    config = self->_config;
    self->_config = v16;

    objc_storeStrong(&self->_context, a4);
    objc_storeStrong(&self->_hardwareMACAddress, a5);
    if (objc_opt_respondsToSelector())
    {
      v18 = [v11 privateAddressMode];
    }

    else
    {
      v18 = 0;
    }

    self->_privateAddressMode = v18;
    v19 = [(WFDetailsProviderContext *)self->_context randomMACAddress];
    randomMACAddress = self->_randomMACAddress;
    self->_randomMACAddress = v19;

    self->_randomFeatureEnabled = ([v11 requestedFields] & 0x400) != 0;
    objc_storeStrong(&self->_appearanceProxy, a6);
    self->_isDeviceInDemoMode = 0;
    self->_isRandomMACManageFeatureEnabled = _os_feature_enabled_impl();
    self->_isRotatingTurnedOnForMigratedNetwork = 0;
    if (objc_opt_respondsToSelector())
    {
      v21 = [(WFDetailsProviderContext *)self->_context scrollToCellType];
      self->_scrollToCellType = v21;
      [(WFNetworkSettingsViewController *)self scrollToCell:v21];
    }

    if (objc_opt_respondsToSelector())
    {
      v22 = [(WFNetworkSettingsViewController *)self context];
      v23 = [v22 contentCachesContext];
      [v23 setDelegate:self];
    }

    if (objc_opt_class())
    {
      v24 = [MEMORY[0x277D29510] sharedInstance];
      v34 = 0;
      v25 = [v24 isStoreDemoModeEnabled:&v34];
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
      self->_allowViewPassword = [v11 isCredentialsVisible];
    }

    if (objc_opt_respondsToSelector())
    {
      v30 = [v11 daDevice];
      self->_accessory = v30 != 0;
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
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 addObserver:self selector:sel__contentSizeCategoryDidChange_ name:*MEMORY[0x277D76810] object:0];

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 addObserver:self selector:sel__applicationWillResignActive_ name:*MEMORY[0x277D76768] object:0];

  v5 = [(WFNetworkSettingsViewController *)self backgroundColor];

  if (v5)
  {
    v6 = [(WFNetworkSettingsViewController *)self backgroundColor];
    v7 = [(WFNetworkSettingsViewController *)self tableView];
    [v7 setBackgroundColor:v6];
  }

  v8 = [(WFNetworkSettingsViewController *)self context];
  v9 = [(WFNetworkSettingsViewController *)self _autoJoinRowsFromContext:v8];
  [(WFNetworkSettingsViewController *)self setAutoJoinSectionRows:v9];

  v10 = [(WFNetworkSettingsViewController *)self config];
  v11 = [(WFNetworkSettingsViewController *)self context];
  v12 = [(WFNetworkSettingsViewController *)self _sectionsFromConfig:v10 context:v11];
  [(WFNetworkSettingsViewController *)self setSections:v12];

  v13 = [(WFNetworkSettingsViewController *)self sections];
  [(WFNetworkSettingsViewController *)self _logSections:v13];

  v14 = [WFNetworkSettingsCellFactory alloc];
  v15 = [(WFNetworkSettingsViewController *)self tableView];
  v16 = [(WFNetworkSettingsCellFactory *)v14 initWithTableView:v15];
  [(WFNetworkSettingsViewController *)self setCellFactory:v16];

  v17 = [(WFNetworkSettingsViewController *)self config];
  v18 = [v17 displayFriendlyName];
  [(WFNetworkSettingsViewController *)self setTitle:v18];

  if ([MEMORY[0x277D75418] currentIsIPad])
  {
    v19 = [(WFNetworkSettingsViewController *)self tableView];
    [v19 _setSectionContentInset:{0.0, 20.0, 0.0, 20.0}];
  }

  v20 = *MEMORY[0x277D76F30];
  v21 = [(WFNetworkSettingsViewController *)self tableView];
  [v21 setRowHeight:v20];

  v22 = [(WFNetworkSettingsViewController *)self tableView];
  [v22 setEstimatedRowHeight:v20];

  v23 = [(WFNetworkSettingsViewController *)self tableView];
  [v23 setSectionFooterHeight:v20];

  v24 = [(WFNetworkSettingsViewController *)self tableView];
  [v24 setEstimatedSectionHeaderHeight:0.0];

  v25 = [(WFNetworkSettingsViewController *)self tableView];
  [v25 setEstimatedSectionFooterHeight:v20];

  [(WFNetworkSettingsViewController *)self _updateManagedNetworkHeader];
  if (_os_feature_enabled_impl())
  {
    [(WFNetworkSettingsViewController *)self _setupAccessoryHeader];
  }
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = WFNetworkSettingsViewController;
  [(WFNetworkSettingsViewController *)&v4 dealloc];
}

- (void)refreshConfig:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(WFNetworkSettingsConfig *)self->_config isEqual:v4];
  if (!v4 || v5)
  {
    v14 = WFLogForCategory(0);
    v16 = OSLogForWFLogLevel(4uLL);
    if (WFCurrentLogLevel() >= 4 && v14 && os_log_type_enabled(v14, v16))
    {
      v17 = 136315138;
      v18 = "[WFNetworkSettingsViewController refreshConfig:]";
      _os_log_impl(&dword_273FB9000, v14, v16, "%s- config was unchanged.", &v17, 0xCu);
    }
  }

  else
  {
    v6 = [v4 copy];
    [(WFNetworkSettingsViewController *)self setConfig:v6];

    v7 = [(WFNetworkSettingsViewController *)self config];
    v8 = [(WFNetworkSettingsViewController *)self context];
    v9 = [(WFNetworkSettingsViewController *)self _sectionsFromConfig:v7 context:v8];
    [(WFNetworkSettingsViewController *)self setSections:v9];

    v10 = WFLogForCategory(0);
    v11 = OSLogForWFLogLevel(3uLL);
    if (WFCurrentLogLevel() >= 3 && v10 && os_log_type_enabled(v10, v11))
    {
      config = self->_config;
      v17 = 138412290;
      v18 = config;
      _os_log_impl(&dword_273FB9000, v10, v11, "Refreshed settings config %@", &v17, 0xCu);
    }

    v13 = [(WFNetworkSettingsViewController *)self sections];
    [(WFNetworkSettingsViewController *)self _logSections:v13];

    v14 = [(WFNetworkSettingsViewController *)self tableView];
    [v14 reloadData];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (id)_autoJoinRowsFromContext:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] array];
  v6 = [(WFNetworkSettingsViewController *)self config];
  v7 = [v6 autoJoinConfigurable];

  if (v7)
  {
    [v5 addObject:&unk_2883227C8];
  }

  v8 = [(WFNetworkSettingsViewController *)self config];
  v9 = [v8 autoLoginConfigurable];

  if (v9)
  {
    [v5 addObject:&unk_2883227E0];
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && ![(WFNetworkSettingsViewController *)self isAccessory])
  {
    v10 = [v4 username];
    v11 = [v10 length];

    if (v11)
    {
      [v5 addObject:&unk_2883227F8];
    }
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && ![(WFNetworkSettingsViewController *)self isAccessory])
  {
    v12 = [v4 password];
    v13 = [v12 length];

    if (v13)
    {
      [v5 addObject:&unk_288322810];
    }
  }

  return v5;
}

- (id)_sectionsFromConfig:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CBEB18] array];
  if (![(WFNetworkSettingsViewController *)self isAccessory])
  {
    v9 = [v6 healthRecommendations];
    v10 = [v9 count];

    if (v10)
    {
      [v8 addObject:&unk_2883227C8];
    }

    v11 = [(WFNetworkSettingsViewController *)self _portalURL];

    if (v11)
    {
      [v8 addObject:&unk_2883227E0];
    }
  }

  if ([v6 diagnosable])
  {
    [v8 addObject:&unk_288322828];
  }

  if (([v7 requestedFields] & 0x1000) != 0 || (objc_msgSend(v7, "requestedFields") & 0x4000) != 0)
  {
    [v8 addObject:&unk_288322840];
  }

  if ([v6 joinable])
  {
    [v8 addObject:&unk_2883227F8];
  }

  if ([v6 forgetable])
  {
    [v8 addObject:&unk_288322858];
  }

  if (![(WFNetworkSettingsViewController *)self isAccessory])
  {
    v12 = [(WFNetworkSettingsViewController *)self autoJoinSectionRows];
    v13 = [v12 count];

    if (v13)
    {
      [v8 addObject:&unk_288322810];
    }

    if ([v6 saveDataModeConfigurable])
    {
      [v8 addObject:&unk_288322870];
    }

    if ((objc_opt_respondsToSelector() & 1) != 0 && [v7 isWifiModeConfigurable])
    {
      [v8 addObject:&unk_288322888];
    }

    if (self->_randomFeatureEnabled)
    {
      [v8 addObject:&unk_2883228A0];
    }

    if ([v6 privacyProxyTierStatus])
    {
      [v8 addObject:&unk_2883228B8];
    }

    if ([v6 networkQualityVisible])
    {
      if (![(WFNetworkSettingsViewController *)self _isChinaDevice])
      {
        [v6 networkQualityResponsiveness];
        if (v14 != 0.0 || (-[WFNetworkSettingsViewController context](self, "context"), v15 = objc_claimAutoreleasedReturnValue(), v16 = [v15 isCurrent], v15, v16))
        {
          [v8 addObject:&unk_2883228D0];
        }
      }
    }
  }

  [v8 addObject:&unk_2883228E8];
  if ([(WFNetworkSettingsViewController *)self _shouldShowIPv6ForConfig:v6])
  {
    [v8 addObject:&unk_288322900];
  }

  [v8 addObject:&unk_288322918];
  if ([v6 httpProxyConfigurable])
  {
    [v8 addObject:&unk_288322930];
  }

  if ([v6 manageable])
  {
    [v8 addObject:&unk_288322948];
  }

  if ([v6 current])
  {
    if (objc_opt_respondsToSelector())
    {
      v17 = [v7 contentCachesContext];
      v18 = [v17 numOfContentCaches];

      if (v18 >= 1)
      {
        [v8 addObject:&unk_288322960];
      }
    }
  }

  return v8;
}

- (void)_httpProxyConfigChanged:(int64_t)a3
{
  v61[1] = *MEMORY[0x277D85DE8];
  v5 = [(WFNetworkSettingsViewController *)self config];
  v6 = [v5 httpProxyConfig];

  if (v6 != a3)
  {
    v7 = [(WFNetworkSettingsViewController *)self config];
    v8 = [v7 httpProxyConfig];

    v9 = [(WFNetworkSettingsViewController *)self config];
    v10 = [v9 httpProxyAuthenticationRequired];

    v11 = [(WFNetworkSettingsViewController *)self config];
    [v11 setHttpProxyConfig:a3];

    if (a3 != 1 && v10)
    {
      v12 = [(WFNetworkSettingsViewController *)self config];
      [v12 setHttpProxyAuthenticationRequired:0];
    }

    v13 = [(WFNetworkSettingsViewController *)self sections];
    v14 = [v13 indexOfObject:&unk_288322930];

    if (a3 == 2)
    {
      if (v8 == 1)
      {
        v33 = [(WFNetworkSettingsViewController *)self tableView];
        [v33 beginUpdates];

        v34 = [(WFNetworkSettingsViewController *)self tableView];
        v35 = [MEMORY[0x277CCAA70] indexPathForRow:2 inSection:v14];
        v57[0] = v35;
        v36 = [MEMORY[0x277CCAA70] indexPathForRow:3 inSection:v14];
        v57[1] = v36;
        v37 = [MEMORY[0x277CBEA60] arrayWithObjects:v57 count:2];
        [v34 deleteRowsAtIndexPaths:v37 withRowAnimation:0];

        if (v10)
        {
          v38 = [(WFNetworkSettingsViewController *)self tableView];
          v39 = [MEMORY[0x277CCAA70] indexPathForRow:4 inSection:v14];
          v56[0] = v39;
          v40 = [MEMORY[0x277CCAA70] indexPathForRow:5 inSection:v14];
          v56[1] = v40;
          v41 = [MEMORY[0x277CBEA60] arrayWithObjects:v56 count:2];
          [v38 deleteRowsAtIndexPaths:v41 withRowAnimation:0];
        }

        v42 = [(WFNetworkSettingsViewController *)self tableView];
        [v42 endUpdates];

        v15 = [(WFNetworkSettingsViewController *)self tableView];
        v16 = [MEMORY[0x277CCAA70] indexPathForRow:1 inSection:v14];
        v55 = v16;
        v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v55 count:1];
        [v15 reloadRowsAtIndexPaths:v17 withRowAnimation:0];
        goto LABEL_21;
      }

      if (v8)
      {
LABEL_23:
        v43 = [(WFNetworkSettingsViewController *)self config];
        [v43 setHttpProxyConfig:a3];

        v44 = [(WFNetworkSettingsViewController *)self tableView];
        v45 = [MEMORY[0x277CCAA78] indexSetWithIndex:v14];
        [v44 reloadSections:v45 withRowAnimation:5];

        goto LABEL_24;
      }

      v30 = [(WFNetworkSettingsViewController *)self tableView];
      v31 = [MEMORY[0x277CCAA70] indexPathForRow:1 inSection:v14];
      v58 = v31;
      v32 = [MEMORY[0x277CBEA60] arrayWithObjects:&v58 count:1];
      [v30 insertRowsAtIndexPaths:v32 withRowAnimation:0];

      v15 = [(WFNetworkSettingsViewController *)self tableView];
      v28 = MEMORY[0x277CCAA70];
      v29 = 1;
    }

    else
    {
      if (a3 != 1)
      {
        if (!a3)
        {
          if (v8 == 1)
          {
            v47 = MEMORY[0x277CBEB18];
            v48 = [MEMORY[0x277CCAA70] indexPathForRow:1 inSection:v14];
            v49 = [MEMORY[0x277CCAA70] indexPathForRow:2 inSection:v14];
            v50 = [MEMORY[0x277CCAA70] indexPathForRow:3 inSection:v14];
            v51 = [v47 arrayWithObjects:{v48, v49, v50, 0}];

            if (v10)
            {
              v52 = [MEMORY[0x277CCAA70] indexPathForRow:4 inSection:v14];
              [v51 addObject:v52];

              v53 = [MEMORY[0x277CCAA70] indexPathForRow:5 inSection:v14];
              [v51 addObject:v53];
            }

            v54 = [(WFNetworkSettingsViewController *)self tableView];
            [v54 deleteRowsAtIndexPaths:v51 withRowAnimation:0];

            goto LABEL_23;
          }

          if (v8 == 2)
          {
            v15 = [(WFNetworkSettingsViewController *)self tableView];
            v16 = [MEMORY[0x277CCAA70] indexPathForRow:1 inSection:v14];
            v61[0] = v16;
            v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v61 count:1];
            [v15 deleteRowsAtIndexPaths:v17 withRowAnimation:0];
LABEL_21:

            goto LABEL_22;
          }
        }

        goto LABEL_23;
      }

      v18 = [(WFNetworkSettingsViewController *)self tableView];
      [v18 beginUpdates];

      if (v8 == 2)
      {
        v19 = [(WFNetworkSettingsViewController *)self tableView];
        v20 = [MEMORY[0x277CCAA70] indexPathForRow:1 inSection:v14];
        v60 = v20;
        v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v60 count:1];
        [v19 deleteRowsAtIndexPaths:v21 withRowAnimation:0];
      }

      v22 = [(WFNetworkSettingsViewController *)self tableView];
      v23 = [MEMORY[0x277CCAA70] indexPathForRow:1 inSection:v14];
      v59[0] = v23;
      v24 = [MEMORY[0x277CCAA70] indexPathForRow:2 inSection:v14];
      v59[1] = v24;
      v25 = [MEMORY[0x277CCAA70] indexPathForRow:3 inSection:v14];
      v59[2] = v25;
      v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v59 count:3];
      [v22 insertRowsAtIndexPaths:v26 withRowAnimation:0];

      v27 = [(WFNetworkSettingsViewController *)self tableView];
      [v27 endUpdates];

      v15 = [(WFNetworkSettingsViewController *)self tableView];
      v28 = MEMORY[0x277CCAA70];
      v29 = 3;
    }

    v16 = [v28 indexPathForRow:v29 inSection:v14];
    [v15 scrollToRowAtIndexPath:v16 atScrollPosition:3 animated:1];
LABEL_22:

    goto LABEL_23;
  }

LABEL_24:
  v46 = *MEMORY[0x277D85DE8];
}

- (void)_httpProxyAuthChanged:(id)a3
{
  v19[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 isOn];
  v6 = [(WFNetworkSettingsViewController *)self config];
  [v6 setHttpProxyAuthenticationRequired:v5];

  v7 = [(WFNetworkSettingsViewController *)self sections];
  v8 = [v7 indexOfObject:&unk_288322930];

  v9 = [v4 isOn];
  v10 = [(WFNetworkSettingsViewController *)self tableView];
  v11 = [MEMORY[0x277CCAA70] indexPathForRow:4 inSection:v8];
  v12 = v11;
  if (v9)
  {
    v19[0] = v11;
    v13 = [MEMORY[0x277CCAA70] indexPathForRow:5 inSection:v8];
    v19[1] = v13;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];
    [v10 insertRowsAtIndexPaths:v14 withRowAnimation:0];

    v10 = [(WFNetworkSettingsViewController *)self tableView];
    v12 = [MEMORY[0x277CCAA70] indexPathForRow:5 inSection:v8];
    [v10 scrollToRowAtIndexPath:v12 atScrollPosition:3 animated:1];
  }

  else
  {
    v18[0] = v11;
    v15 = [MEMORY[0x277CCAA70] indexPathForRow:5 inSection:v8];
    v18[1] = v15;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
    [v10 deleteRowsAtIndexPaths:v16 withRowAnimation:0];
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
    v3 = [(WFNetworkSettingsViewController *)self _isChinaDevice];
    v4 = @"kWFLocForgetNetworkTitle";
    if (v3)
    {
      v4 = @"kWFLocForgetNetworkTitleCH";
    }

    v38 = v4;
  }

  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v37 = [v5 localizedStringForKey:v38 value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];

  v6 = MEMORY[0x277CCACA8];
  v7 = [(WFNetworkSettingsViewController *)self config];
  v8 = [v7 displayFriendlyName];
  v9 = [v6 stringWithFormat:v37, v8];

  if ([(WFNetworkSettingsViewController *)self isAccessory])
  {
    v10 = @"kWFLocForgetDeviceMessage";
  }

  else
  {
    v11 = [(WFNetworkSettingsViewController *)self config];
    v12 = [v11 cloudSyncable];
    v13 = @"kWFLocForgetNetworkMessage";
    if (v12)
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
    v17 = [MEMORY[0x277CB8900] forgetDeviceAlertTitle];

    v18 = [MEMORY[0x277CB8900] forgetDeviceAlertBody];

    v19 = WFLogForCategory(0);
    v20 = OSLogForWFLogLevel(3uLL);
    if (WFCurrentLogLevel() >= 3 && v19 && os_log_type_enabled(v19, v20))
    {
      *buf = 138412546;
      v44 = v17;
      v45 = 2112;
      v46 = v18;
      _os_log_impl(&dword_273FB9000, v19, v20, "Replacing alert title with: %@, replacing alert message text with: %@", buf, 0x16u);
    }

    v21 = v17;
  }

  else
  {
    v18 = v16;
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
    v27 = [MEMORY[0x277CB8900] forgetDeviceAlertConfirm];

    v28 = [MEMORY[0x277CB8900] forgetDeviceAlertCancel];

    v29 = WFLogForCategory(0);
    v30 = OSLogForWFLogLevel(3uLL);
    if (WFCurrentLogLevel() >= 3 && v29 && os_log_type_enabled(v29, v30))
    {
      *buf = 138412546;
      v44 = v27;
      v45 = 2112;
      v46 = v28;
      _os_log_impl(&dword_273FB9000, v29, v30, "Replacing confirm title with: %@, replacing cancel text with: %@", buf, 0x16u);
    }
  }

  else
  {
    v28 = v26;
    v27 = v24;
  }

  objc_initWeak(buf, self);
  v31 = MEMORY[0x277D750F8];
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __55__WFNetworkSettingsViewController__promptForgetNetwork__block_invoke;
  v41[3] = &unk_279EC5ED0;
  objc_copyWeak(&v42, buf);
  v41[4] = self;
  v32 = [v31 actionWithTitle:v27 style:2 handler:v41];
  [v22 addAction:v32];
  [v22 setPreferredAction:v32];
  v33 = MEMORY[0x277D750F8];
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __55__WFNetworkSettingsViewController__promptForgetNetwork__block_invoke_2;
  v39[3] = &unk_279EC5830;
  objc_copyWeak(&v40, buf);
  v34 = [v33 actionWithTitle:v28 style:1 handler:v39];
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

  v5 = [(WFNetworkSettingsViewController *)self config];
  v6 = [v5 displayFriendlyName];
  v7 = [WFDeveloperOutrankAlertController developerOutrankAlertControllerWithNetworkName:v6 chinaDevice:[(WFNetworkSettingsViewController *)self _isChinaDevice] completionHandler:&__block_literal_global_5];

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
  v3 = [(WFNetworkSettingsViewController *)self config];
  if ([v3 ipv4Config])
  {
    v4 = [(WFNetworkSettingsViewController *)self config];
    v5 = [v4 ipv4Config] == 1;
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v3 = [(WFNetworkSettingsViewController *)self sections];
  v4 = [v3 count];

  return v4;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v5 = 1;
  switch([(WFNetworkSettingsViewController *)self _sectionTypeAtSection:a4])
  {
    case 0:
      v11 = [(WFNetworkSettingsViewController *)self config];
      v12 = [v11 healthRecommendations];
      v5 = [v12 count];

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
      v11 = [(WFNetworkSettingsViewController *)self autoJoinSectionRows];
      v5 = [v11 count];
LABEL_9:

      return v5;
    case 5:
      v7 = [(WFNetworkSettingsViewController *)self config];
      v8 = [v7 current];

      v9 = [(WFNetworkSettingsViewController *)self config];
      v10 = [v9 ipv4Config];
      if (v8)
      {
        if (v10)
        {
LABEL_6:

          return 4;
        }

        v21 = [(WFNetworkSettingsViewController *)self config];
        v22 = [v21 dhcpClientID];
        if (!v22)
        {

          goto LABEL_6;
        }

        v23 = v22;
        v24 = [(WFNetworkSettingsViewController *)self config];
        v25 = [v24 dhcpClientID];
        v26 = [v25 length];

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
        if (v10 == 2)
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
      v13 = [(WFNetworkSettingsViewController *)self config];
      v14 = [(WFNetworkSettingsViewController *)self _shouldShowIPv6ForConfig:v13];

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
      v15 = [(WFNetworkSettingsViewController *)self config];
      LODWORD(v5) = [v15 saveDataModeConfigurable];

      return v5;
    case 13:
      v16 = [(WFNetworkSettingsViewController *)self config];
      if ([v16 networkQualityVisible] && !-[WFNetworkSettingsViewController _isChinaDevice](self, "_isChinaDevice"))
      {
        v19 = [(WFNetworkSettingsViewController *)self config];
        [v19 networkQualityResponsiveness];
        if (v20 == 0.0)
        {
          v27 = [(WFNetworkSettingsViewController *)self context];
          v28 = [v27 isCurrent];

          if ((v28 & 1) == 0)
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
  v3 = [(WFNetworkSettingsViewController *)self sections];
  v4 = [v3 indexOfObject:&unk_2883228D0];

  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = [(WFNetworkSettingsViewController *)self tableView];
    v5 = [MEMORY[0x277CCAA78] indexSetWithIndex:v4];
    [v6 reloadSections:v5 withRowAnimation:5];
  }
}

- (void)_runNetworkQuality
{
  v23 = *MEMORY[0x277D85DE8];
  v19 = [(WFNetworkSettingsViewController *)self config];
  if ([v19 current])
  {
    v3 = [(WFNetworkSettingsViewController *)self networkQualitySpinning];

    if (!v3)
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

- (void)_fillNetworkQualityCell:(id)a3
{
  v4 = a3;
  if ([(WFNetworkSettingsViewController *)self networkQualitySpinning])
  {
    v25 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
    [v4 setAccessoryView:v25];

    [v25 startAnimating];
  }

  else
  {
    v5 = [(WFNetworkSettingsViewController *)self config];
    [v5 networkQualityResponsiveness];
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
      v12 = [(WFNetworkSettingsViewController *)self config];
      [v12 networkQualityResponsiveness];
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
      v19 = [(WFNetworkSettingsViewController *)self config];
      [v19 networkQualityResponsiveness];
      v25 = [v18 stringWithFormat:@"%@ (%u %@)", v17, v20, v10];
    }

    v21 = [MEMORY[0x277D75220] buttonWithType:1];
    [v21 setTitle:v25 forState:0];
    [v4 setAccessoryView:v21];
    v22 = [v4 textLabel];

    v23 = [v22 font];
    v24 = [v21 titleLabel];
    [v24 setFont:v23];

    [v21 sizeToFit];
    [v21 addTarget:self action:sel__runNetworkQuality forControlEvents:64];
  }
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v171 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [v5 row];
  switch(-[WFNetworkSettingsViewController _sectionTypeAtSection:](self, "_sectionTypeAtSection:", [v5 section]))
  {
    case 0:
      v7 = [(WFNetworkSettingsViewController *)self cellFactory];
      v8 = [v7 recommendationCellAtIndexPath:v5];

      v9 = [(WFNetworkSettingsViewController *)self config];
      v10 = [v9 healthRecommendations];
      v11 = [v10 objectAtIndex:{objc_msgSend(v5, "row")}];

      v12 = [v11 issueTitle];
      v13 = [v8 titleLabel];
      [v13 setText:v12];

      v14 = [v8 titleLabel];
      v15 = [MEMORY[0x277D75348] defaultTextColor];
      [v14 setTextColor:v15];

      v16 = [v11 issueDetailText];
      v17 = [v8 descriptionLabel];
      [v17 setText:v16];

      v18 = [v8 descriptionLabel];
      v19 = [MEMORY[0x277D75348] altTextColor];
      [v18 setTextColor:v19];
      goto LABEL_122;
    case 1:
      if (v6 == 1)
      {
        v103 = [(WFNetworkSettingsViewController *)self cellFactory];
        v8 = [v103 forgetCellAtIndexPath:v5 accessory:{-[WFNetworkSettingsViewController isAccessory](self, "isAccessory")}];

        v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v18 = [v11 localizedStringForKey:@"kWFLocSettingNetworkPortalButtonTitle" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
        v104 = [v8 textLabel];
        goto LABEL_121;
      }

      if (v6)
      {
        goto LABEL_58;
      }

      v57 = [(WFNetworkSettingsViewController *)self cellFactory];
      v8 = [v57 recommendationCellAtIndexPath:v5];

      v58 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v59 = [v58 localizedStringForKey:@"kWFLocSettingNetworkPortalTitle" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
      v60 = [v8 titleLabel];
      [v60 setText:v59];

      v61 = [v8 titleLabel];
      v62 = [MEMORY[0x277D75348] defaultTextColor];
      [v61 setTextColor:v62];

      v63 = MEMORY[0x277CCACA8];
      v64 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v65 = [v64 localizedStringForKey:@"kWFLocSettingNetworkPortalDescriptionFormat" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
      v66 = [(WFNetworkSettingsViewController *)self _portalURL];
      v67 = [v63 stringWithFormat:v65, v66];
      v68 = [v8 descriptionLabel];
      [v68 setText:v67];

      v11 = [v8 descriptionLabel];
      v18 = [MEMORY[0x277D75348] altTextColor];
      [v11 setTextColor:v18];
      goto LABEL_123;
    case 2:
      v11 = [(WFNetworkSettingsViewController *)self cellFactory];
      v20 = [v11 joinCellAtIndexPath:v5];
      goto LABEL_56;
    case 3:
      v47 = [(WFNetworkSettingsViewController *)self autoJoinSectionRows];
      v48 = [v47 objectAtIndex:{objc_msgSend(v5, "row")}];
      v49 = [v48 integerValue];

      v8 = 0;
      if (v49 <= 1)
      {
        if (v49)
        {
          if (v49 != 1)
          {
            goto LABEL_125;
          }

          v50 = [(WFNetworkSettingsViewController *)self cellFactory];
          v8 = [v50 autoLoginCellAtIndexPath:v5];

          v51 = [(WFNetworkSettingsViewController *)self autoLoginSwitch];
          [v8 setAccessoryView:v51];

          v11 = [(WFNetworkSettingsViewController *)self config];
          v30 = [v11 autoLoginEnabled];
          v31 = [(WFNetworkSettingsViewController *)self autoLoginSwitch];
LABEL_9:
          v34 = v31;
          [v31 setOn:v30];
LABEL_10:
        }

        else
        {
          v107 = [(WFNetworkSettingsViewController *)self cellFactory];
          v8 = [v107 autoJoinCellAtIndexPath:v5];

          v108 = [(WFNetworkSettingsViewController *)self autoJoinSwitch];
          [v8 setAccessoryView:v108];

          if ([(WFNetworkSettingsViewController *)self _isAutoJoinConfigurable])
          {
            v109 = [(WFNetworkSettingsViewController *)self config];
            v110 = [v109 autoJoinEnabled];
            v111 = [(WFNetworkSettingsViewController *)self autoJoinSwitch];
            [v111 setOn:v110];

            v112 = [(WFNetworkSettingsViewController *)self autoJoinSwitch];
            v11 = v112;
            v113 = 1;
          }

          else
          {
            v140 = [(WFNetworkSettingsViewController *)self autoJoinSwitch];
            [v140 setOn:0];

            v112 = [(WFNetworkSettingsViewController *)self autoJoinSwitch];
            v11 = v112;
            v113 = 0;
          }

          [v112 setEnabled:v113];
        }

        goto LABEL_124;
      }

      if (v49 == 2)
      {
        v114 = [(WFNetworkSettingsViewController *)self context];
        v115 = objc_opt_respondsToSelector();

        if (v115)
        {
          v116 = [(WFNetworkSettingsViewController *)self context];
          v11 = [v116 username];
        }

        else
        {
          v11 = 0;
        }

        v18 = [(WFNetworkSettingsViewController *)self cellFactory];
        if ([(WFNetworkSettingsViewController *)self allowViewPassword])
        {
          v135 = [(WFNetworkSettingsViewController *)self credentailCellTapped]^ 1;
        }

        else
        {
          v135 = 1;
        }

        v136 = v18;
        v137 = v5;
        v138 = v11;
        v139 = 0;
      }

      else
      {
        if (v49 != 3)
        {
          goto LABEL_125;
        }

        v90 = [(WFNetworkSettingsViewController *)self context];
        v91 = objc_opt_respondsToSelector();

        if (v91)
        {
          v92 = [(WFNetworkSettingsViewController *)self context];
          v11 = [v92 password];
        }

        else
        {
          v11 = 0;
        }

        v18 = [(WFNetworkSettingsViewController *)self cellFactory];
        if ([(WFNetworkSettingsViewController *)self allowViewPassword])
        {
          v135 = [(WFNetworkSettingsViewController *)self credentailCellTapped]^ 1;
        }

        else
        {
          v135 = 1;
        }

        v136 = v18;
        v137 = v5;
        v138 = v11;
        v139 = 1;
      }

      v8 = [v136 credentialsViewerCellAtIndexPath:v137 credentails:v138 hideCredentials:v135 isPassword:v139];
      goto LABEL_123;
    case 4:
      v11 = [(WFNetworkSettingsViewController *)self cellFactory];
      v20 = [v11 forgetCellAtIndexPath:v5 accessory:{-[WFNetworkSettingsViewController isAccessory](self, "isAccessory")}];
      goto LABEL_56;
    case 5:
      v8 = 0;
      if (v6 > 1)
      {
        switch(v6)
        {
          case 2:
            v117 = [(WFNetworkSettingsViewController *)self cellFactory];
            v8 = [v117 ipv4SubnetMaskCellAtIndexPath:v5];

            v118 = [(WFNetworkSettingsViewController *)self _isIPv4ConfigAuto];
            v119 = [(WFNetworkSettingsViewController *)self config];
            v11 = v119;
            if (v118)
            {
              [v119 ipv4SubnetMask];
            }

            else
            {
              [v119 ipv4SubnetMaskManual];
            }

            break;
          case 3:
            v120 = [(WFNetworkSettingsViewController *)self cellFactory];
            v8 = [v120 ipv4RouterCellAtIndexPath:v5];

            v121 = [(WFNetworkSettingsViewController *)self _isIPv4ConfigAuto];
            v122 = [(WFNetworkSettingsViewController *)self config];
            v11 = v122;
            if (v121)
            {
              [v122 ipv4RouterAddress];
            }

            else
            {
              [v122 ipv4RouterAddressManual];
            }

            break;
          case 4:
            v78 = [(WFNetworkSettingsViewController *)self cellFactory];
            v8 = [v78 dhcpClientIDCellAtIndexPath:v5];

            v11 = [(WFNetworkSettingsViewController *)self config];
            v79 = [v11 dhcpClientID];
LABEL_120:
            v18 = v79;
            v104 = [v8 detailTextLabel];
LABEL_121:
            v19 = v104;
            [v104 setText:v18];
LABEL_122:

LABEL_123:
LABEL_124:

            goto LABEL_125;
          default:
            goto LABEL_125;
        }

        v79 = LABEL_86:;
        goto LABEL_120;
      }

      if (v6)
      {
        if (v6 != 1)
        {
          goto LABEL_125;
        }

        v93 = [(WFNetworkSettingsViewController *)self cellFactory];
        v8 = [v93 ipv4AddressCellAtIndexPath:v5];

        v94 = [(WFNetworkSettingsViewController *)self _isIPv4ConfigAuto];
        v95 = [(WFNetworkSettingsViewController *)self config];
        v11 = v95;
        if (v94)
        {
          [v95 ipv4Address];
        }

        else
        {
          [v95 ipv4AddressManual];
        }

        goto LABEL_86;
      }

      v123 = [(WFNetworkSettingsViewController *)self cellFactory];
      v8 = [v123 ipv4AddressConfigCellAtIndexPath:v5];

      v124 = [(WFNetworkSettingsViewController *)self config];
      v125 = [v124 ipv4Config];

      if (v125)
      {
        v126 = [(WFNetworkSettingsViewController *)self config];
        v127 = [v126 ipv4Config];

        if (v127 == 2)
        {
          v128 = @"kWFLocSettingsIPV4ConfigureManual";
        }

        else
        {
          v161 = [(WFNetworkSettingsViewController *)self config];
          v162 = [v161 ipv4Config];

          if (v162 != 1)
          {
LABEL_125:
            v152 = [MEMORY[0x277D75348] altTextColor];
            v153 = [v8 detailTextLabel];
            [v153 setTextColor:v152];

            goto LABEL_126;
          }

          v128 = @"kWFLocSettingsIPV4ConfigureBootP";
        }
      }

      else
      {
        v128 = @"kWFLocSettingsIPV4ConfigureAutomatic";
      }

      v85 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v163 = [v85 localizedStringForKey:v128 value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
      v164 = [v8 detailTextLabel];
      [v164 setText:v163];

LABEL_135:
      goto LABEL_125;
    case 6:
      v11 = [(WFNetworkSettingsViewController *)self cellFactory];
      v20 = [v11 renewLeaseCellAtIndexPath:v5];
      goto LABEL_56;
    case 7:
      if (v6 == 1)
      {
        v102 = [(WFNetworkSettingsViewController *)self cellFactory];
        v8 = [v102 ipv6RouterCellAtIndexPath:v5];

        v11 = [(WFNetworkSettingsViewController *)self config];
        v79 = [v11 ipv6RouterAddress];
        goto LABEL_120;
      }

      if (v6)
      {
LABEL_58:
        v8 = 0;
      }

      else
      {
        v52 = [(WFNetworkSettingsViewController *)self cellFactory];
        v8 = [v52 ipv6AddressCellAtIndexPath:v5];

        v53 = [(WFNetworkSettingsViewController *)self config];
        v54 = [v53 ipv6Addresses];
        v55 = [v54 count];

        if (!v55)
        {
          goto LABEL_125;
        }

        [v8 setAccessoryType:0];
        if (v55 == 1)
        {
          v11 = [(WFNetworkSettingsViewController *)self config];
          v18 = [v11 ipv6Addresses];
          v19 = [v18 firstObject];
          v56 = [v8 detailTextLabel];
          [v56 setText:v19];

          goto LABEL_122;
        }

        v131 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v132 = [v131 localizedStringForKey:@"kWFLocSettingsAddressesTitle" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];

        v133 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu %@", v55, v132];
        v134 = [v8 detailTextLabel];
        [v134 setText:v133];

        [v8 setAccessoryType:1];
        [v8 setSelectionStyle:1];
      }

      goto LABEL_125;
    case 8:
      if (v6)
      {
        goto LABEL_58;
      }

      v96 = [(WFNetworkSettingsViewController *)self cellFactory];
      v8 = [v96 dnsConfigureCellAtIndexPath:v5];

      v11 = [(WFNetworkSettingsViewController *)self config];
      v97 = [v11 dnsConfig];
      v98 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v34 = v98;
      if (v97)
      {
        v99 = @"kWFLocSettingsDNSConfigureManual";
      }

      else
      {
        v99 = @"kWFLocSettingsDNSConfigureAutomatic";
      }

      v100 = [v98 localizedStringForKey:v99 value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
      v101 = [v8 detailTextLabel];
      [v101 setText:v100];

      goto LABEL_10;
    case 9:
      if (v6)
      {
        goto LABEL_58;
      }

      v35 = [(WFNetworkSettingsViewController *)self cellFactory];
      v8 = [v35 httpProxyConfigCellAtIndexPath:v5];

      v36 = [(WFNetworkSettingsViewController *)self config];
      v37 = [v36 httpProxyConfig];

      if (v37)
      {
        v38 = [(WFNetworkSettingsViewController *)self config];
        v39 = [v38 httpProxyConfig];

        if (v39 == 2)
        {
          v40 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v11 = v40;
          v41 = @"kWFLocSettingsProxyConfigAutomaticTitle";
        }

        else
        {
          v129 = [(WFNetworkSettingsViewController *)self config];
          v130 = [v129 httpProxyConfig];

          if (v130 != 1)
          {
            goto LABEL_125;
          }

          v40 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v11 = v40;
          v41 = @"kWFLocSettingsProxyConfigManualTitle";
        }
      }

      else
      {
        v40 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v11 = v40;
        v41 = @"kWFLocSettingsProxyConfigOffTitle";
      }

      v79 = [v40 localizedStringForKey:v41 value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
      goto LABEL_120;
    case 10:
      v11 = [(WFNetworkSettingsViewController *)self cellFactory];
      v20 = [v11 manageCellAtIndexPath:v5];
      goto LABEL_56;
    case 11:
      v26 = [(WFNetworkSettingsViewController *)self config];
      v27 = [v26 saveDataModeConfigurable];

      if (!v27)
      {
        goto LABEL_58;
      }

      v28 = [(WFNetworkSettingsViewController *)self cellFactory];
      v8 = [v28 saveDataModeCellAtIndexPath:v5];

      v29 = [(WFNetworkSettingsViewController *)self saveDataModeSwitch];
      [v8 setAccessoryView:v29];

      v11 = [(WFNetworkSettingsViewController *)self config];
      v30 = [v11 isInSaveDataMode];
      v31 = [(WFNetworkSettingsViewController *)self saveDataModeSwitch];
      goto LABEL_9;
    case 12:
      v32 = [(WFNetworkSettingsViewController *)self cellFactory];
      v8 = [v32 privacyProxyEnabledCellAtIndexPath:v5];

      v33 = [(WFNetworkSettingsViewController *)self privacyProxyEnabledSwitch];
      [v8 setAccessoryView:v33];

      v11 = [(WFNetworkSettingsViewController *)self config];
      v30 = [v11 privacyProxyEnabled];
      v31 = [(WFNetworkSettingsViewController *)self privacyProxyEnabledSwitch];
      goto LABEL_9;
    case 13:
      v80 = [(WFNetworkSettingsViewController *)self config];
      if (![v80 networkQualityVisible] || -[WFNetworkSettingsViewController _isChinaDevice](self, "_isChinaDevice"))
      {

        goto LABEL_47;
      }

      v105 = [(WFNetworkSettingsViewController *)self config];
      [v105 networkQualityResponsiveness];
      if (v106 == 0.0)
      {
        v141 = [(WFNetworkSettingsViewController *)self context];
        v142 = [v141 isCurrent];

        if (!v142)
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

      v143 = [(WFNetworkSettingsViewController *)self cellFactory];
      v8 = [v143 networkQualityCellAtIndexPath:v5];

      v144 = WFLogForCategory(0);
      v145 = OSLogForWFLogLevel(3uLL);
      if (WFCurrentLogLevel() >= 3 && v144)
      {
        v146 = v144;
        if (os_log_type_enabled(v146, v145))
        {
          v147 = [(WFNetworkSettingsViewController *)self config];
          [v147 networkQualityResponsiveness];
          v149 = v148;
          v150 = [(WFNetworkSettingsViewController *)self networkQualitySpinning];
          v151 = "NO";
          v166 = "[WFNetworkSettingsViewController tableView:cellForRowAtIndexPath:]";
          *buf = 136315650;
          if (v150)
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
      v154 = [(WFNetworkSettingsViewController *)self appearanceProxy];
      v155 = [v154 cellTextLabelFont];

      if (v155)
      {
        v156 = [(WFNetworkSettingsViewController *)self appearanceProxy];
        v157 = [v156 cellTextLabelFont];
        v158 = [v8 textLabel];
        [v158 setFont:v157];
      }

      v159 = *MEMORY[0x277D85DE8];

      return v8;
    case 14:
      v8 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:1 reuseIdentifier:0];
      v21 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v22 = [v21 localizedStringForKey:@"kWFLocSettingsDiagnosticsTitle" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
      v23 = [v8 textLabel];
      [v23 setText:v22];

      v24 = [MEMORY[0x277D75348] defaultButtonColor];
      v25 = [v8 detailTextLabel];
      [v25 setTextColor:v24];

      [v8 setAccessoryType:1];
      [v8 setSelectionStyle:1];
      goto LABEL_125;
    case 15:
      v42 = [(WFNetworkSettingsViewController *)self _macAddressToDisplay];

      if (!v42)
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

      v45 = [(WFNetworkSettingsViewController *)self cellFactory];
      v8 = [v45 randomMACCellAtIndexPath:v5 chinaDevice:{-[WFNetworkSettingsViewController _isChinaDevice](self, "_isChinaDevice")}];

      if ([v5 row] == 1)
      {
        v46 = [(WFNetworkSettingsViewController *)self _macAddressToDisplay];
      }

      else
      {
        if ([v5 row])
        {
          goto LABEL_125;
        }

        v46 = [(WFNetworkSettingsViewController *)self _selectedPrivateModeForOption:self->_privateAddressMode];
      }

      v11 = v46;
      v18 = [v8 detailTextLabel];
      [v18 setText:v11];
      goto LABEL_123;
    case 16:
      v11 = [(WFNetworkSettingsViewController *)self cellFactory];
      v20 = [v11 outrankedCellAtIndexPath:v5 chinaDevice:{-[WFNetworkSettingsViewController _isChinaDevice](self, "_isChinaDevice")}];
LABEL_56:
      v8 = v20;
      goto LABEL_124;
    case 17:
      v69 = [(WFNetworkSettingsViewController *)self cellFactory];
      v8 = [v69 wifiModeCellAtIndexPath:v5];

      v11 = [v8 contentConfiguration];
      v70 = [(WFNetworkSettingsViewController *)self _isChinaDevice];
      v71 = @"kWFLocSettingsWiFiModeTitle";
      if (v70)
      {
        v71 = @"kWFLocSettingsWiFiModeTitle_CH";
      }

      v72 = MEMORY[0x277CCA8D8];
      v73 = v71;
      v74 = [v72 bundleForClass:objc_opt_class()];
      v75 = [v74 localizedStringForKey:v73 value:&stru_288308678 table:@"WiFiKitUILocalizableStrings-WIFI_6E"];

      [v11 setText:v75];
      v76 = [(WFNetworkSettingsViewController *)self context];
      v77 = -[WFNetworkSettingsViewController _displayStringForDisableMode:](self, "_displayStringForDisableMode:", [v76 wifiMode]);
      [v11 setSecondaryText:v77];

      [v8 setContentConfiguration:v11];
      [v8 setAccessoryType:1];
      goto LABEL_124;
    case 18:
      if (v6)
      {
        goto LABEL_58;
      }

      v83 = [(WFNetworkSettingsViewController *)self cellFactory];
      v8 = [v83 contentCachesCellAtIndexPath:v5];

      v84 = MEMORY[0x277CCABB0];
      v85 = [(WFNetworkSettingsViewController *)self context];
      v86 = [v85 contentCachesContext];
      v87 = [v84 numberWithInt:{objc_msgSend(v86, "numOfContentCaches")}];
      v88 = [v87 stringValue];
      v89 = [v8 detailTextLabel];
      [v89 setText:v88];

      goto LABEL_135;
    default:
      goto LABEL_58;
  }
}

- (int64_t)_sectionTypeAtSection:(int64_t)a3
{
  v4 = [(WFNetworkSettingsViewController *)self sections];
  v5 = [v4 objectAtIndex:a3];
  v6 = [v5 integerValue];

  return v6;
}

- (void)_saveConfig:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(WFNetworkSettingsViewController *)self config];
  v6 = [v5 changesBetweenConfig:v4];

  v7 = WFLogForCategory(0);
  v8 = OSLogForWFLogLevel(4uLL);
  if (WFCurrentLogLevel() >= 4 && v7 && os_log_type_enabled(v7, v8))
  {
    v13 = 138412290;
    v14 = v4;
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

  v11 = [(WFNetworkSettingsViewController *)self dataCoordinator];
  [v11 networkSettingsViewController:self saveConfig:v4 errorHandler:&__block_literal_global_237];

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

- (BOOL)_shouldShowIPv6ForConfig:(id)a3
{
  v3 = a3;
  v4 = [v3 ipv6Addresses];
  if ([v4 count])
  {
    v5 = [v3 current];
  }

  else
  {
    v6 = [v3 ipv6RouterAddress];
    if (v6)
    {
      v5 = [v3 current];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)tableView:(id)a3 shouldShowMenuForRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = -[WFNetworkSettingsViewController _sectionTypeAtSection:](self, "_sectionTypeAtSection:", [v5 section]);
  v7 = v6 == 15 || v6 == 5;
  v8 = v7 && [v5 row];

  return v8;
}

- (void)tableView:(id)a3 performAction:(SEL)a4 forRowAtIndexPath:(id)a5 withSender:(id)a6
{
  v25 = a3;
  v9 = a5;
  v10 = -[WFNetworkSettingsViewController _sectionTypeAtSection:](self, "_sectionTypeAtSection:", [v9 section]);
  if (sel_copy_ == a4)
  {
    v11 = v10;
    v12 = [v25 cellForRowAtIndexPath:v9];
    v13 = v12;
    if (v11 == 3)
    {
      v14 = [(WFNetworkSettingsViewController *)self autoJoinSectionRows];
      v15 = [v14 objectAtIndex:{objc_msgSend(v9, "row")}];
      v16 = [v15 integerValue];

      if ((v16 & 0xFFFFFFFFFFFFFFFELL) == 2)
      {
        v17 = [v13 contentConfiguration];
        v18 = [v17 secondaryText];
        if (![v18 length])
        {
LABEL_9:

          goto LABEL_10;
        }

        v19 = [MEMORY[0x277D75810] generalPasteboard];
        v20 = v19;
        v21 = v18;
LABEL_8:
        [v19 setString:v21];

        goto LABEL_9;
      }
    }

    else
    {
      v22 = [v12 detailTextLabel];
      v23 = [v22 text];
      v24 = [v23 length];

      if (v24)
      {
        v17 = [MEMORY[0x277D75810] generalPasteboard];
        v18 = [v13 detailTextLabel];
        v20 = [v18 text];
        v19 = v17;
        v21 = v20;
        goto LABEL_8;
      }
    }

LABEL_10:
  }
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v126 = *MEMORY[0x277D85DE8];
  v108 = a3;
  v6 = a4;
  v7 = -[WFNetworkSettingsViewController _sectionTypeAtSection:](self, "_sectionTypeAtSection:", [v6 section]);
  v107 = [(WFNetworkSettingsViewController *)self delegate];
  v8 = WFLogForCategory(0);
  v9 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v8)
  {
    v10 = v8;
    if (os_log_type_enabled(v10, v9))
    {
      v11 = [v6 row];
      v12 = [v6 section];
      v13 = [(WFNetworkSettingsViewController *)self _stringForSettingsSection:v7];
      *buf = 134218498;
      v121 = v11;
      v122 = 2048;
      v123 = v12;
      v124 = 2112;
      v125 = v13;
      _os_log_impl(&dword_273FB9000, v10, v9, "User did select network settings row=%ld in section=%ld (%@)", buf, 0x20u);
    }
  }

  switch(v7)
  {
    case 1:
      if ([v6 row] == 1)
      {
        v14 = [(WFNetworkSettingsViewController *)self context];
        v15 = objc_opt_respondsToSelector();

        if (v15)
        {
          v16 = [(WFNetworkSettingsViewController *)self context];
          [v16 openPortalURL];
        }
      }

      break;
    case 2:
      v61 = [(WFNetworkSettingsViewController *)self context];

      if (v61)
      {
        v62 = [(WFNetworkSettingsViewController *)self context];
        [v62 join];
      }

      else
      {
        v62 = [(WFNetworkSettingsViewController *)self delegate];
        [v62 networkSettingsViewControllerDidJoinNetwork:self];
      }

      break;
    case 3:
      v40 = [(WFNetworkSettingsViewController *)self autoJoinSectionRows];
      v41 = [v40 objectAtIndex:{objc_msgSend(v6, "row")}];
      v42 = [v41 integerValue];

      if ((v42 & 0xFFFFFFFFFFFFFFFELL) == 2)
      {
        self->_credentailCellTapped = 1;
        v43 = [(WFNetworkSettingsViewController *)self tableView];
        [v43 reloadData];

        v44 = [(WFNetworkSettingsViewController *)self context];
        if (v44)
        {
          v45 = [(WFNetworkSettingsViewController *)self context];
          v46 = objc_opt_respondsToSelector();

          if (v46)
          {
            v47 = [(WFNetworkSettingsViewController *)self context];
            v48 = [v47 credentialsTappedHandler];

            if (v48)
            {
              v49 = v42 == 3;
              v50 = [(WFNetworkSettingsViewController *)self context];
              v51 = [v50 credentialsTappedHandler];
              v52 = v51;
              if (v49)
              {
                v53 = 2;
              }

              else
              {
                v53 = 1;
              }

              (*(v51 + 16))(v51, v53);
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

          v56 = [v108 cellForRowAtIndexPath:v6];
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
          v59 = [MEMORY[0x277D75718] sharedMenuController];
          [v59 update];
          v60 = [MEMORY[0x277D75718] sharedMenuController];
          [v56 bounds];
          [v60 showMenuFromView:v56 rect:?];
        }

        else
        {
          v99 = objc_alloc_init(MEMORY[0x277CD4798]);
          v100 = self;
          v101 = [(WFNetworkSettingsViewController *)v100 _wifiPasswordContextOptions];
          v117[0] = MEMORY[0x277D85DD0];
          v117[1] = 3221225472;
          v117[2] = __69__WFNetworkSettingsViewController_tableView_didSelectRowAtIndexPath___block_invoke;
          v117[3] = &unk_279EC5F68;
          v117[4] = v100;
          v118 = v108;
          v119 = v6;
          [v99 evaluatePolicy:2 options:v101 reply:v117];
        }
      }

      break;
    case 4:
      [(WFNetworkSettingsViewController *)self _promptForgetNetwork];
      break;
    case 5:
      if ([v6 row])
      {
        if ([v6 row] == 6)
        {
          v78 = [(WFNetworkSettingsViewController *)self config];
          v79 = [v78 ipv4Config] == 0;

          if (v79)
          {
            goto LABEL_51;
          }
        }
      }

      else
      {
        v95 = [WFIPConfigViewController alloc];
        v96 = [(WFNetworkSettingsViewController *)self config];
        v97 = [(WFNetworkSettingsViewController *)self appearanceProxy];
        v98 = [(WFIPConfigViewController *)v95 initWithConfig:v96 ipType:0 appearanceProxy:v97];

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
      v80 = [(WFNetworkSettingsViewController *)self view];
      [v108 rectForRowAtIndexPath:v6];
      [v80 convertRect:v108 fromView:?];
      v82 = v81;
      v84 = v83;
      v86 = v85;
      v88 = v87;

      [(WFNetworkSettingsViewController *)self _presentRenewLeaseAlertWithSourceRect:v82, v84, v86, v88];
      break;
    case 7:
      if (![v6 row])
      {
        v63 = [(WFNetworkSettingsViewController *)self config];
        v64 = [v63 ipv6Addresses];
        v65 = [v64 count] == 0;

        if (!v65)
        {
          v66 = [WFIPViewController alloc];
          v67 = [(WFNetworkSettingsViewController *)self config];
          v68 = [v67 ipv6Addresses];
          v69 = [(WFNetworkSettingsViewController *)self appearanceProxy];
          v70 = [(WFIPViewController *)v66 initWithAddresses:v68 prefixLengths:0 appearanceProxy:v69];

          [(WFNetworkSettingsViewController *)self _presentDetailViewController:v70];
        }
      }

      break;
    case 8:
      v71 = [WFDNSConfigViewController alloc];
      v72 = [(WFNetworkSettingsViewController *)self config];
      v73 = [(WFNetworkSettingsViewController *)self appearanceProxy];
      v74 = [(WFDNSConfigViewController *)v71 initWithConfig:v72 appearanceProxy:v73];

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
      v92 = [(WFNetworkSettingsViewController *)self config];
      v93 = [(WFNetworkSettingsViewController *)self appearanceProxy];
      v94 = [(WFProxyConfigViewController *)v91 initWithConfig:v92 appearanceProxy:v93];

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
      v89 = [(WFNetworkSettingsViewController *)self context];

      if (v89)
      {
        v90 = [(WFNetworkSettingsViewController *)self context];
        [v90 manage];
      }

      else
      {
        [v107 networkSettingsViewControllerDidManageNetwork:self];
      }

      break;
    case 14:
      v31 = [(WFNetworkSettingsViewController *)self context];
      v32 = [v31 diagnosticsContext];

      v33 = [WFDiagnosticsTableViewController alloc];
      v34 = [(WFNetworkSettingsViewController *)self context];
      v35 = [(WFNetworkSettingsViewController *)self appearanceProxy];
      v36 = [(WFDiagnosticsTableViewController *)v33 initWithDiagnosticsContext:v32 detailsProviderContext:v34 appearanceProxy:v35];

      [(WFNetworkSettingsViewController *)self _presentDetailViewController:v36];
      break;
    case 15:
      if (![v6 row])
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
              v105 = [(WFNetworkSettingsConfig *)self->_config ssid];
              *buf = 138412290;
              v121 = v105;
              _os_log_impl(&dword_273FB9000, v104, v103, "Private Address mode for %@ is not configurable!", buf, 0xCu);
            }
          }
        }
      }

      break;
    case 16:
      v37 = [(WFNetworkSettingsViewController *)self context];
      v38 = ([v37 requestedFields] & 0x2000) == 0;

      if (v38)
      {
        v39 = [(WFNetworkSettingsViewController *)self context];
        -[WFNetworkSettingsViewController _promptOverrideWiFiOutrankedForPrivateCellular:](self, "_promptOverrideWiFiOutrankedForPrivateCellular:", ([v39 requestedFields] >> 14) & 1);
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
      v24 = [(WFNetworkSettingsViewController *)self _isChinaDevice];
      v25 = @"kWFLocSettingsWiFiModeTitle";
      if (v24)
      {
        v25 = @"kWFLocSettingsWiFiModeTitle_CH";
      }

      v26 = v25;
      v27 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v28 = [v27 localizedStringForKey:v26 value:&stru_288308678 table:@"WiFiKitUILocalizableStrings-WIFI_6E"];
      v29 = [(WFValueListViewController *)v23 navigationItem];
      [v29 setTitle:v28];

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
      v75 = [(WFNetworkSettingsViewController *)self context];
      v76 = [v75 contentCachesContext];
      v77 = [v76 cacheLocatorSettingsInstance];
      [(WFNetworkSettingsViewController *)self _presentDetailViewController:v77];

      break;
    default:
      break;
  }

  [v108 deselectRowAtIndexPath:v6 animated:1];

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

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v4 = [(WFNetworkSettingsViewController *)self _sectionTypeAtSection:a4];
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

- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4
{
  v5 = [(WFNetworkSettingsViewController *)self _sectionTypeAtSection:a4];
  v6 = 0;
  if (v5 > 12)
  {
    if (v5 > 15)
    {
      if (v5 == 16)
      {
        v21 = [(WFNetworkSettingsViewController *)self _outrankedFooterView];
      }

      else
      {
        if (v5 != 17)
        {
          goto LABEL_25;
        }

        v21 = [(WFNetworkSettingsViewController *)self _WiFiModeFooterView];
      }
    }

    else
    {
      if (v5 == 13)
      {
        v22 = [(WFNetworkSettingsViewController *)self networkQualityFooterView];
        goto LABEL_20;
      }

      if (v5 != 15)
      {
        goto LABEL_25;
      }

      v21 = [(WFNetworkSettingsViewController *)self _randomMACFooterView];
    }

LABEL_23:
    v6 = v21;
    v23 = [v6 textLabel];
    [v23 setNumberOfLines:0];

    v10 = [v6 textLabel];

    [v10 sizeToFit];
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
    v21 = ;
    goto LABEL_23;
  }

  if (!v5)
  {
    if (![(WFNetworkSettingsViewController *)self _showRecommendationSupportLink])
    {
      goto LABEL_28;
    }

    v22 = [(WFNetworkSettingsViewController *)self linkFooterView];
LABEL_20:
    v6 = v22;
    goto LABEL_25;
  }

  if (v5 != 6)
  {
    goto LABEL_25;
  }

  v7 = [(WFNetworkSettingsViewController *)self config];
  v8 = [v7 dhcpLeaseExpirationDate];

  if (v8)
  {
    v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:@"kWFLocSettingsDHCPLeaseExpiresTitle" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];

    v11 = [(WFNetworkSettingsViewController *)self config];
    v12 = [v11 dhcpLeaseExpirationDate];
    v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v14 = [v13 localizedStringForKey:@"kWFLocSettingsDHCPLeaseExpiresDateFormat" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
    v15 = [v12 stringFromDHCPLeaseExpirationDateWithFormatString:v14];

    v16 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{15.0, 0.0, 0.0, 0.0}];
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: %@", v10, v15];
    [v16 setText:v17];

    v18 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76968] compatibleWithTraitCollection:0];
    [v16 setFont:v18];

    v19 = [MEMORY[0x277D75348] altTextColor];
    [v16 setTextColor:v19];

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

- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4
{
  result = *MEMORY[0x277D76F30];
  if (!a4)
  {
    return 18.0;
  }

  return result;
}

- (double)tableView:(id)a3 estimatedHeightForFooterInSection:(int64_t)a4
{
  v34[2] = *MEMORY[0x277D85DE8];
  v5 = [(WFNetworkSettingsViewController *)self _sectionTypeAtSection:a4];
  v6 = 0.0;
  if (v5 <= 12)
  {
    switch(v5)
    {
      case 0:
        v33[0] = *MEMORY[0x277D740C0];
        v8 = [MEMORY[0x277D75348] systemBlueColor];
        v34[0] = v8;
        v33[1] = *MEMORY[0x277D740A8];
        v9 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76968]];
        v34[1] = v9;
        v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:2];

        v11 = [(WFNetworkSettingsViewController *)self recommendationLinkAttributedString];
        v12 = [v11 string];
        [v12 sizeWithAttributes:v10];
        v14 = v13;

        [@"A" sizeWithAttributes:v10];
        v6 = ceil(v14 + v15 * 2.0);

        goto LABEL_23;
      case 11:
        v7 = [(WFNetworkSettingsViewController *)self _lowDataModeFooterView];
        break;
      case 12:
        v7 = [(WFNetworkSettingsViewController *)self _privacyProxyEnabledFooterView];
        break;
      default:
        goto LABEL_23;
    }

LABEL_18:
    v16 = v7;
    [v7 frame];
    if (v17 == 0.0)
    {
      v24 = [v16 textLabel];
      v25 = [v24 attributedText];
      v20 = [v25 attributesAtIndex:0 effectiveRange:0];

      v21 = [v16 textLabel];
      v26 = [v21 text];
      [v26 sizeWithAttributes:0];
      v23 = v27;

      goto LABEL_20;
    }

    goto LABEL_21;
  }

  if (v5 > 15)
  {
    if (v5 == 16)
    {
      v7 = [(WFNetworkSettingsViewController *)self _outrankedFooterView];
    }

    else
    {
      if (v5 != 17)
      {
        goto LABEL_23;
      }

      v7 = [(WFNetworkSettingsViewController *)self _WiFiModeFooterView];
    }

    goto LABEL_18;
  }

  if (v5 == 13)
  {
    v16 = [(WFNetworkSettingsViewController *)self networkQualityFooterView];
    [v16 frame];
    if (v17 == 0.0)
    {
      v31[0] = *MEMORY[0x277D740C0];
      v18 = [MEMORY[0x277D75348] systemBlueColor];
      v32[0] = v18;
      v31[1] = *MEMORY[0x277D740A8];
      v19 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76968]];
      v32[1] = v19;
      v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:2];

      v21 = [v16 text];
      [v21 sizeWithAttributes:v20];
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
    v7 = [(WFNetworkSettingsViewController *)self _randomMACFooterView];
    goto LABEL_18;
  }

LABEL_23:
  v29 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)_autoJoinSwitchChanged:(id)a3
{
  v4 = a3;
  v5 = [v4 isOn];
  v6 = [(WFNetworkSettingsViewController *)self config];
  [v6 setAutoJoinEnabled:v5];

  v7 = [v4 isOn];

  [(WFNetworkSettingsViewController *)self _saveAutoJoinEnabledChanged:v7];
}

- (void)_autoLoginSwitchChanged:(id)a3
{
  v4 = a3;
  v5 = [v4 isOn];
  v6 = [(WFNetworkSettingsViewController *)self config];
  [v6 setAutoLoginEnabled:v5];

  v7 = [v4 isOn];

  [(WFNetworkSettingsViewController *)self _saveAutoLoginEnabledChanged:v7];
}

- (void)_saveDataModeSwitchChanged:(id)a3
{
  v4 = a3;
  v5 = [v4 isOn];
  v6 = [(WFNetworkSettingsViewController *)self config];
  [v6 setIsInSaveDataMode:v5];

  v7 = [v4 isOn];

  [(WFNetworkSettingsViewController *)self _saveSaveDataModeChanged:v7];
}

- (void)_privacyProxyEnabledSwitchChanged:(id)a3
{
  v4 = a3;
  v5 = [v4 isOn];
  v6 = [(WFNetworkSettingsViewController *)self config];
  [v6 setPrivacyProxyEnabled:v5];

  v7 = [v4 isOn];

  [(WFNetworkSettingsViewController *)self _privacyProxyEnabledChanged:v7];
}

- (void)_updateWiFiEMode:(int64_t)a3
{
  v5 = [(WFNetworkSettingsViewController *)self context];
  [v5 setWifiMode:a3];

  v6 = [(WFNetworkSettingsViewController *)self tableView];
  [v6 reloadData];
}

- (int64_t)_disableModeFromKey:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"kWFLocSettingsWiFiModeAuto" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
  v6 = [v3 isEqualToString:v5];

  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"kWFLocSettingsWiFiModeOff" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
    v10 = [v3 isEqualToString:v9];

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
  v12 = [(WFDetailsProviderContext *)self->_context isCurrent];
  v13 = [(WFNetworkSettingsConfig *)self->_config ssid];
  v14 = [(WFPrivateAddressModeOptionsViewController *)v11 initWithTitles:v10 originalSelection:v20 isCurrentNetwork:v12 currentNetworkName:v13 isChinaDevice:[(WFNetworkSettingsViewController *)self _isChinaDevice]];

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
  v19 = [(WFPrivateAddressModeOptionsViewController *)v14 navigationItem];
  [v19 setTitle:v18];

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

- (void)_updatePrivateAddressMode:(unint64_t)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = WFLogForCategory(0);
  v6 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v5)
  {
    v7 = v5;
    if (os_log_type_enabled(v7, v6))
    {
      v8 = [(WFNetworkSettingsConfig *)self->_config ssid];
      v17 = 138412546;
      v18 = v8;
      v19 = 2048;
      v20 = a3;
      _os_log_impl(&dword_273FB9000, v7, v6, "Private address mode for %@ has been updated to %ld", &v17, 0x16u);
    }
  }

  [(WFNetworkSettingsViewController *)self setPrivateAddressMode:a3];
  v9 = [(WFNetworkSettingsViewController *)self sections];
  v10 = [v9 indexOfObject:&unk_2883228A0];

  if (v10 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = [(WFNetworkSettingsViewController *)self tableView];
    v12 = [MEMORY[0x277CCAA78] indexSetWithIndex:v10];
    [v11 reloadSections:v12 withRowAnimation:5];

    v13 = [(WFNetworkSettingsViewController *)self tableView];
    v14 = [MEMORY[0x277CCAA78] indexSetWithIndex:v10];
    [v13 _reloadSectionHeaderFooters:v14 withRowAnimation:100];
  }

  context = self->_context;
  if (objc_opt_respondsToSelector())
  {
    [(WFDetailsProviderContext *)self->_context updatePrivateAddressMode:a3];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (id)_selectedPrivateModeForOption:(unint64_t)a3
{
  if (a3 - 1 > 2)
  {
    v5 = 0;
  }

  else
  {
    v3 = off_279EC6018[a3 - 1];
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = [v4 localizedStringForKey:v3 value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
  }

  return v5;
}

- (unint64_t)_selectedPrivateModeForString:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"kWFLocRandomMACOffOption" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
  v6 = [v3 isEqualToString:v5];

  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"kWFLocRandomMACStaticOption" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
    v10 = [v3 isEqualToString:v9];

    if (v10)
    {
      v7 = 3;
    }

    else
    {
      v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v12 = [v11 localizedStringForKey:@"kWFLocRandomMACRotatingOption" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
      v13 = [v3 isEqualToString:v12];

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
  v2 = [(WFNetworkSettingsViewController *)self context];
  v3 = [v2 isRandomMACFeatureEnabled];

  return v3;
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

    v6 = [(WFNetworkSettingsViewController *)self _isChinaDevice];
    v7 = @"kWFLocSettingsRecommendationLinkTitle";
    if (v6)
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

- (void)_openRecommendationsLink:(id)a3
{
  v4 = [(WFNetworkSettingsViewController *)self context];

  if (v4)
  {
    v5 = [(WFNetworkSettingsViewController *)self context];
    [v5 openRecommendationLink];
  }

  else
  {
    v5 = [(WFNetworkSettingsViewController *)self delegate];
    [v5 networkSettingsViewControllerDidTapRecommendationLink:self];
  }
}

- (BOOL)_showRecommendationSupportLink
{
  v3 = [(WFNetworkSettingsViewController *)self config];
  v4 = [v3 healthRecommendations];
  if ([v4 count] == 1)
  {
    v5 = [(WFNetworkSettingsViewController *)self config];
    v6 = [v5 healthRecommendations];
    v7 = [v6 firstObject];
    v8 = [WFHealthIssue issueWithType:1];
    v9 = [v7 isEqual:v8] ^ 1;
  }

  else
  {
    LOBYTE(v9) = 1;
  }

  return v9;
}

- (void)_presentDetailViewController:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = WFLogForCategory(0);
  v6 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v5 && os_log_type_enabled(v5, v6))
  {
    v8 = 136315394;
    v9 = "[WFNetworkSettingsViewController _presentDetailViewController:]";
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&dword_273FB9000, v5, v6, "%s: pushing view controller='%@'", &v8, 0x16u);
  }

  self->_detailViewControllerVisible = 1;
  [(UIViewController *)self wf_pushViewController:v4 animated:1];

  v7 = *MEMORY[0x277D85DE8];
}

- (BOOL)_isChinaDevice
{
  v2 = [(WFNetworkSettingsViewController *)self deviceCapability];

  return WFCapabilityIsChinaDevice(v2);
}

- (void)_logSections:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CCAB68] string];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = v4;
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
        [v5 appendString:v13];

        if (v12 < [v6 count])
        {
          [v5 appendString:{@", "}];
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
    v22 = v5;
    _os_log_impl(&dword_273FB9000, v14, v15, "Settings Sections: %@", buf, 0xCu);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (id)_displayStringForDisableMode:(int64_t)a3
{
  if (a3 < 2)
  {
    v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v4 = v3;
    v5 = @"kWFLocSettingsWiFiModeAuto";
LABEL_6:
    v6 = [v3 localizedStringForKey:v5 value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];

    goto LABEL_12;
  }

  if (a3 == 2)
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

- (id)_stringForSettingsSection:(int64_t)a3
{
  if (a3 > 0x12)
  {
    return 0;
  }

  else
  {
    return off_279EC6030[a3];
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
    v3 = self->_hardwareMACAddress;
  }

  else
  {
    v3 = [(WFNetworkSettingsViewController *)self _randomAddressToDisplay];
  }

  return v3;
}

- (id)_randomMACFooterTextToDisplay
{
  v3 = [(WFNetworkSettingsViewController *)self _isChinaDevice];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = v4;
  if (v3)
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

- (id)_detailFooterForMode:(unint64_t)a3
{
  switch(a3)
  {
    case 3uLL:
      v7 = [(WFNetworkSettingsViewController *)self _isChinaDevice];
      v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      if (v7)
      {
        v5 = @"kWFLocPrivateAddressFooterStaticDetail_CH";
      }

      else
      {
        v5 = @"kWFLocPrivateAddressFooterStaticDetail";
      }

      break;
    case 2uLL:
      v6 = [(WFNetworkSettingsViewController *)self _isChinaDevice];
      v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      if (v6)
      {
        v5 = @"kWFLocPrivateAddressFooterRotatingDetail_CH";
      }

      else
      {
        v5 = @"kWFLocPrivateAddressFooterRotatingDetail";
      }

      break;
    case 1uLL:
      v3 = [(WFNetworkSettingsViewController *)self _isChinaDevice];
      v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      if (v3)
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

- (void)scrollToCell:(unint64_t)a3
{
  if (a3 - 4 <= 3)
  {
    v5 = qword_279EC60C8[a3 - 4];
    v6 = MEMORY[0x277CCAA70];
    v7 = [(WFNetworkSettingsViewController *)self sections];
    v9 = [v6 indexPathForRow:0 inSection:{objc_msgSend(v7, "indexOfObject:", v5)}];

    v8 = [(WFNetworkSettingsViewController *)self tableView];
    [v8 scrollToRowAtIndexPath:v9 atScrollPosition:1 animated:1];
  }
}

- (void)_presentRenewLeaseAlertWithSourceRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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
  v15 = [MEMORY[0x277D75418] currentDevice];
  v16 = [v15 userInterfaceIdiom];

  if ((v16 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v17 = [v10 popoverPresentationController];
    v18 = [(WFNetworkSettingsViewController *)self view];
    [v17 setSourceView:v18];

    [v17 setSourceRect:{x, y, width, height}];
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

  v8 = [(UITableViewHeaderFooterView *)self->_lowDataModeFooterView textLabel];
  v9 = [v8 text];
  v10 = [v7 isEqualToString:v9];

  if ((v10 & 1) == 0)
  {
    v11 = [(UITableViewHeaderFooterView *)self->_lowDataModeFooterView textLabel];
    [v11 setText:v7];

    v12 = [(UITableViewHeaderFooterView *)self->_lowDataModeFooterView textLabel];
    [v12 setNumberOfLines:0];

    v13 = [(UITableViewHeaderFooterView *)self->_lowDataModeFooterView textLabel];
    [v13 sizeToFit];
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
    v8 = [(UITableViewHeaderFooterView *)self->_wifiModeFooterView textLabel];
    [v8 setText:v7];

    v9 = [(UITableViewHeaderFooterView *)self->_wifiModeFooterView textLabel];
    [v9 setNumberOfLines:0];

    v10 = [(UITableViewHeaderFooterView *)self->_wifiModeFooterView textLabel];
    [v10 sizeToFit];

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

    v6 = [(WFNetworkSettingsViewController *)self config];
    v7 = [v6 privacyProxyTierStatus];

    if (v7 == 1)
    {
      v8 = @"kWFLocPrivacyProxyNonSubscriberFooter";
    }

    else
    {
      v9 = [(WFNetworkSettingsViewController *)self config];
      v10 = [v9 privacyProxyTierStatus];

      if (v10 == 2)
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

    v13 = [(UITableViewHeaderFooterView *)self->_privacyProxyEnabledFooterView textLabel];
    [v13 setText:v12];

    v14 = [(UITableViewHeaderFooterView *)self->_privacyProxyEnabledFooterView textLabel];
    [v14 setNumberOfLines:0];

    v15 = [(UITableViewHeaderFooterView *)self->_privacyProxyEnabledFooterView textLabel];
    [v15 sizeToFit];

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

  v5 = [(WFNetworkSettingsViewController *)self context];
  v6 = [v5 requestedFields];

  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [(WFNetworkSettingsViewController *)self _isChinaDevice];
  v9 = @"kWFLocSettingOutrankFooter";
  if (v8)
  {
    v9 = @"kWFLocSettingOutrankFooter_CH";
  }

  v10 = @"kWFLocSettingPrivateOutrankFooter_CH";
  if (!v8)
  {
    v10 = @"kWFLocSettingPrivateOutrankFooter";
  }

  if ((v6 & 0x4000) != 0)
  {
    v11 = v10;
  }

  else
  {
    v11 = v9;
  }

  v12 = [v7 localizedStringForKey:v11 value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];

  v13 = [(UITableViewHeaderFooterView *)self->_outrankedFooterView textLabel];
  v14 = [v13 text];
  v15 = [v14 isEqualToString:v12];

  if ((v15 & 1) == 0)
  {
    v16 = [(UITableViewHeaderFooterView *)self->_outrankedFooterView textLabel];
    [v16 setText:v12];

    v17 = [(UITableViewHeaderFooterView *)self->_outrankedFooterView textLabel];
    [v17 setNumberOfLines:0];

    v18 = [(UITableViewHeaderFooterView *)self->_outrankedFooterView textLabel];
    [v18 sizeToFit];
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
    v3 = [(WFNetworkSettingsViewController *)self config];
    v4 = [v3 networkQualityDate];
    if (!v4)
    {

      goto LABEL_18;
    }

    v5 = v4;
    if (self->_networkQualityFooterDate)
    {
      v6 = [(WFNetworkSettingsViewController *)self config];
      v7 = [v6 networkQualityDate];
      v8 = [v7 isEqual:self->_networkQualityFooterDate];

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
      v12 = [(WFNetworkSettingsViewController *)self config];
      v13 = [v12 networkQualityDate];
      v14 = [(WFNetworkSettingsViewController *)self config];
      [v14 networkQualityResponsiveness];
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

      v46 = v13;
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

  v21 = [(WFNetworkSettingsViewController *)self config];
  v22 = [v21 networkQualityDate];

  if (v22)
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
    v31 = [(WFNetworkSettingsViewController *)self config];
    v32 = [v31 networkQualityDate];
    v33 = [v28 stringFromDate:v32];
    v34 = [v30 stringWithFormat:@"%@\n%@ %@", v29, v27, v33];

    v35 = [(WFNetworkSettingsViewController *)self config];
    v36 = [v35 networkQualityDate];
    v37 = [v36 copy];
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
  v6 = [MEMORY[0x277D75128] sharedApplication];
  v2 = MEMORY[0x277CBEBC0];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"kWFLocNetworkQualityKBURL" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
  v5 = [v2 URLWithString:v4];
  [v6 openURL:v5 options:MEMORY[0x277CBEC10] completionHandler:0];
}

- (void)_openNetworkQualityDetails:(id)a3
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

  v20 = [MEMORY[0x277D37680] accessoryButton];
  v21 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v22 = [v21 localizedStringForKey:@"kWFLocNetworkQualityKBURL" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
  [v20 setTitle:v22 forState:0];

  [v20 addTarget:self action:sel__networkQualityOpenURL forControlEvents:64];
  v23 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v24 = [v23 localizedStringForKey:@"kWFLocNetworkQualityLearnMoreSection4Text" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
  [v28 addSectionWithHeader:0 content:v24 accessoryButton:v20];

  v25 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:self action:sel_donePressed];
  v26 = [v28 navigationItem];
  [v26 setRightBarButtonItem:v25];

  v27 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v28];
  [(WFNetworkSettingsViewController *)self presentViewController:v27 animated:1 completion:0];
}

- (void)donePressed
{
  v2 = [(WFNetworkSettingsViewController *)self presentedViewController];
  [v2 dismissViewControllerAnimated:1 completion:0];
}

- (id)_randomMACFooterView
{
  if (!self->_randomMACFooterView)
  {
    v3 = [objc_alloc(MEMORY[0x277D75B70]) initWithReuseIdentifier:@"RandomMAC"];
    randomMACFooterView = self->_randomMACFooterView;
    self->_randomMACFooterView = v3;

    v5 = [(UITableViewHeaderFooterView *)self->_randomMACFooterView textLabel];
    [v5 setNumberOfLines:0];

    v6 = [(UITableViewHeaderFooterView *)self->_randomMACFooterView textLabel];
    [v6 sizeToFit];
  }

  v7 = [(WFNetworkSettingsViewController *)self _randomMACFooterTextToDisplay];
  v8 = [(UITableViewHeaderFooterView *)self->_randomMACFooterView textLabel];
  [v8 setText:v7];

  v9 = self->_randomMACFooterView;

  return v9;
}

- (void)_contentSizeCategoryDidChange:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = WFLogForCategory(0);
  v6 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v5)
  {
    v7 = v5;
    if (os_log_type_enabled(v7, v6))
    {
      v8 = [v4 userInfo];
      v12 = 136315394;
      v13 = "[WFNetworkSettingsViewController _contentSizeCategoryDidChange:]";
      v14 = 2112;
      v15 = v8;
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
  v3 = [(WFNetworkSettingsViewController *)self context];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(WFNetworkSettingsViewController *)self context];
    v6 = [v5 portalURL];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_wifiPasswordContextOptions
{
  v9[2] = *MEMORY[0x277D85DE8];
  v8[0] = &unk_288322978;
  v3 = [(WFNetworkSettingsViewController *)self _passcodePromptForViewingPasswords];
  v8[1] = &unk_288322990;
  v9[0] = v3;
  v4 = [(WFNetworkSettingsViewController *)self _touchIDPromptForViewingPasswords];
  v9[1] = v4;
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
  v3 = [(WFNetworkSettingsViewController *)self context];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 1;
  }

  v5 = [(WFNetworkSettingsViewController *)self context];
  v6 = [v5 autoJoinConfigurable] == 0;

  return v6;
}

- (void)_setupAccessoryHeader
{
  v3 = [(WFNetworkSettingsViewController *)self context];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = MEMORY[0x277CB8900];
    v6 = [(WFNetworkSettingsViewController *)self context];
    v7 = [v6 daDevice];
    v20 = [v5 infoViewControllerFromDevice:v7];

    if (v20)
    {
      [(WFNetworkSettingsViewController *)self addChildViewController:v20];
      [v20 preferredContentSize];
      v9 = v8;
      v10 = [v20 view];
      [v10 setTranslatesAutoresizingMaskIntoConstraints:1];

      v11 = [v20 view];
      [v11 setAutoresizingMask:2];

      v12 = [(WFNetworkSettingsViewController *)self view];
      [v12 bounds];
      v14 = v13;
      v15 = [v20 view];
      [v15 setFrame:{0.0, 0.0, v14, v9}];

      [(WFNetworkSettingsViewController *)self setAccessoryInfoController:v20];
      v16 = [v20 view];
      v17 = [(WFNetworkSettingsViewController *)self tableView];
      [v17 setTableHeaderView:v16];

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

- (void)_applicationWillResignActive:(id)a3
{
  if (self->_allowViewPassword)
  {
    v4 = [MEMORY[0x277D75718] sharedMenuController];
    [v4 hideMenu];
  }
}

- (void)_updateManagedNetworkHeader
{
  if ([(WFNetworkSettingsViewController *)self showManagedNetworkHeader]&& ([(WFNetworkSettingsViewController *)self context], v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_opt_respondsToSelector(), v3, (v4 & 1) != 0))
  {
    v5 = [(WFNetworkSettingsViewController *)self tableView];
    [v5 bounds];
    v7 = v6;

    v27 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{0.0, 0.0, v7, 0.0}];
    v8 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{0.0, 0.0, v7, 100.0}];
    v9 = [MEMORY[0x277D75348] colorWithRed:0.427450985 green:0.427450985 blue:0.447058827 alpha:1.0];
    [v8 setTextColor:v9];

    [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v8 setNumberOfLines:0];
    [v8 setTextAlignment:0];
    v10 = [(WFNetworkSettingsViewController *)self context];
    v11 = [v10 networkOrigin];

    v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v13 = v12;
    if (v11 == 1)
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
    [v27 addSubview:v8];
    v17 = MEMORY[0x277CCAAD0];
    v18 = _NSDictionaryOfVariableBindings(&cfstr_Headerlabel.isa, v8, 0);
    v19 = [v17 constraintsWithVisualFormat:@"V:|-10-[headerLabel]-10-|" options:0 metrics:0 views:v18];
    [v27 addConstraints:v19];

    v20 = MEMORY[0x277CCAAD0];
    v21 = _NSDictionaryOfVariableBindings(&cfstr_Headerlabel.isa, v8, 0);
    v22 = [v20 constraintsWithVisualFormat:@"|-40-[headerLabel]-40-|" options:0 metrics:0 views:v21];
    [v27 addConstraints:v22];

    v23 = [MEMORY[0x277CCAAD0] constraintWithItem:v27 attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:v7];
    [v27 addConstraint:v23];
    [v27 systemLayoutSizeFittingSize:{*MEMORY[0x277D76C78], *(MEMORY[0x277D76C78] + 8)}];
    v25 = v24 + 40.0;
    [v27 removeConstraint:v23];
    [v27 setFrame:{0.0, 0.0, v7, v25}];
    [v27 setTranslatesAutoresizingMaskIntoConstraints:1];
    [v8 setPreferredMaxLayoutWidth:v7];
    v26 = [(WFNetworkSettingsViewController *)self tableView];
    [v26 setTableHeaderView:v27];
  }

  else
  {
    v27 = [(WFNetworkSettingsViewController *)self tableView];
    [v27 setTableHeaderView:0];
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
    v9 = self;
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
    v9 = self;
    _os_log_impl(&dword_273FB9000, v3, v4, "%s: %@", &v6, 0x16u);
  }

  self->_detailViewControllerVisible = 0;
  v5 = *MEMORY[0x277D85DE8];
}

- (void)contentCachesContext:(id)a3 didUpdateNumOfContentCaches:(int)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = WFLogForCategory(0);
  v7 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v6 && os_log_type_enabled(v6, v7))
  {
    v17 = 136315394;
    v18 = "[WFNetworkSettingsViewController contentCachesContext:didUpdateNumOfContentCaches:]";
    v19 = 1024;
    v20 = a4;
    _os_log_impl(&dword_273FB9000, v6, v7, "%s: numCaches updated to %d", &v17, 0x12u);
  }

  v8 = [(WFNetworkSettingsViewController *)self config];
  v9 = [(WFNetworkSettingsViewController *)self context];
  v10 = [(WFNetworkSettingsViewController *)self _sectionsFromConfig:v8 context:v9];
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

  v14 = [(WFNetworkSettingsViewController *)self sections];
  [(WFNetworkSettingsViewController *)self _logSections:v14];

  v15 = [(WFNetworkSettingsViewController *)self tableView];
  [v15 reloadData];

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