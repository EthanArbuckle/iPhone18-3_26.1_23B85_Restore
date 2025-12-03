@interface WFAirportViewController
- (BOOL)_isChinaDevice;
- (BOOL)_refreshATJShownStateIfChanged;
- (BOOL)_shouldContinueUpdateNetworkList;
- (BOOL)showDiagnosticsCell;
- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path;
- (NSString)powerOffLocationWarning;
- (NSString)userAutoJoinDisabledWarning;
- (WFAirportViewController)init;
- (WFAirportViewControllerDelegate)listDelegate;
- (WFNetworkListRecord)joiningHotspot;
- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section;
- (id)_askToJoinFooterString;
- (id)_askToJoinFooterStringForMode:(int64_t)mode;
- (id)_askToJoinStateStringForATJMode:(int64_t)mode;
- (id)_currentNetworkCell;
- (id)_currentNetworkCellIndexPath;
- (id)_defaultSectionsForEditing;
- (id)_defaultSectionsForPowerState:(BOOL)state;
- (id)_getAutoHotspotOptionText:(int64_t)text;
- (id)_indexPathForNetworkName:(id)name;
- (id)_nameOfSection:(unint64_t)section;
- (id)_passcodePromptForViewingKnownNetworksIsChinaDevice:(BOOL)device;
- (id)_sectionNameAtIndex:(unint64_t)index;
- (id)_sortedProfilesFromSet:(id)set;
- (id)_tableCellForNetwork:(id)network tableView:(id)view indexPath:(id)path;
- (id)_touchIDPromptForKnownNetworksIsChinaDevice:(BOOL)device;
- (id)headerIdentifierForSectionType:(unint64_t)type;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForFooterInSection:(int64_t)section;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (id)titleForHeaderInSection:(int64_t)section;
- (int64_t)_askToJoinMode;
- (int64_t)_askToJoinModeFromString:(id)string;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (unint64_t)_sectionTypeAtSection:(int64_t)section;
- (unint64_t)powerState;
- (void)_adjustNavigationItemsForEditingMode;
- (void)_currentNetworkCellIndexPath;
- (void)_dumpSections;
- (void)_enableWAPISwitchChanged:(id)changed;
- (void)_loadEditButton;
- (void)_powerSwitchChanged:(id)changed;
- (void)_processPendingCurrentNetworkUpdate;
- (void)_promptAuthToViewKnownNetworkList;
- (void)_promptToJoinAdhoc:(id)adhoc;
- (void)_pushAskToJoinModeSelectionViewController;
- (void)_pushAutoInstantHotspotOptionSelectionViewController;
- (void)_reloadCurrentNetworkCell;
- (void)_reloadPowerSection;
- (void)_reloadSectionForHotspotChange;
- (void)_removeScreenProtector;
- (void)_submitDeletion;
- (void)_transitionToKnownNetworksList;
- (void)_transitionToScanList;
- (void)_updateAskToJoinMode:(int64_t)mode;
- (void)_updateCellsWithNewData:(id)data oldData:(id)oldData inSection:(unint64_t)section insertSection:(BOOL)insertSection datasourceSection:(unint64_t)datasourceSection;
- (void)_updateKnownNetworksDoneButtonForEditability;
- (void)_updateNetworkRestrictionHeader;
- (void)cancelEditing;
- (void)editKnownNetworks;
- (void)finishEditing;
- (void)knownNetworksDidBecomeActive;
- (void)knownNetworksWillEnterForeground;
- (void)knownNetworksWillResignActive;
- (void)loadView;
- (void)managedAppleIDStateChange:(BOOL)change;
- (void)powerModificationStateDidChange:(BOOL)change;
- (void)powerStateDidChange:(BOOL)change;
- (void)powerStateDidChangeToggle:(unint64_t)toggle;
- (void)promptConfirmAlert;
- (void)refresh;
- (void)refreshKnownNetworksUpdateTableView:(BOOL)view;
- (void)reloadCellsForNetworkNames:(id)names;
- (void)scrollToAirportCell:(unint64_t)cell;
- (void)setAskToJoinMode:(int64_t)mode;
- (void)setAutoInstantHotspotJoinOption:(int64_t)option;
- (void)setCurrentNetwork:(id)network;
- (void)setCurrentNetwork:(id)network previousNetwork:(id)previousNetwork reason:(unint64_t)reason;
- (void)setCurrentNetworkScaledRSSI:(float)i;
- (void)setCurrentNetworkState:(int64_t)state;
- (void)setCurrentNetworkSubtitle:(id)subtitle;
- (void)setDeviceCapability:(int64_t)capability;
- (void)setNetworks:(id)networks;
- (void)setUserAutoJoinEnabled:(BOOL)enabled;
- (void)tableView:(id)view accessoryButtonTappedForRowWithIndexPath:(id)path;
- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)updateAutoInstantHotspotSetting:(int64_t)setting;
- (void)updateViewsForNetworks:(id)networks;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)willMoveToParentViewController:(id)controller;
@end

@implementation WFAirportViewController

- (WFAirportViewController)init
{
  if (WFShouldUseInsetTableView())
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  v14.receiver = self;
  v14.super_class = WFAirportViewController;
  v4 = [(WFAirportViewController *)&v14 initWithStyle:v3];
  if (v4 && (v5 = dispatch_queue_create(0, 0), internalQueue = v4->_internalQueue, v4->_internalQueue = v5, internalQueue, v4->_internalQueue))
  {
    orderedSet = [MEMORY[0x277CBEB70] orderedSet];
    sections = v4->_sections;
    v4->_sections = orderedSet;

    v4->_showOtherNetwork = 1;
    v4->_userAutoJoinEnabled = 1;
    v4->_currentNetworkScaledRSSI = 1.0;
    v4->_askToJoinShown = [(WFAirportViewController *)v4 _askToJoinShouldBeVisible];
    listDelegate = [(WFAirportViewController *)v4 listDelegate];
    v4->_disablePowerModification = [listDelegate networkListViewControllerPowerModificationDisabled:v4];

    listDelegate2 = [(WFAirportViewController *)v4 listDelegate];
    v4->_isManagedAppleID = [listDelegate2 networkListViewControllerIsManagedAppleID:v4];

    v4->_isInEditingMode = 0;
    v4->_tableViewIsUpdating = 0;
    v4->_networkResultsChangedWhileUIUpdates = 0;
    v11 = +[WFNetworkRowConfig settingsNetworkRowConfig];
    currentNetworkRowConfig = v4->_currentNetworkRowConfig;
    v4->_currentNetworkRowConfig = v11;

    v4->_isUsingSwiftList = 0;
    v4->_isAuthenticating = 0;
    v4->_usePlacardCell = _os_feature_enabled_impl();
  }

  else
  {

    return 0;
  }

  return v4;
}

- (void)loadView
{
  v33.receiver = self;
  v33.super_class = WFAirportViewController;
  [(WFInsetTableViewController *)&v33 loadView];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [MEMORY[0x277D757B0] nibWithNibName:@"WFNetworkListCell" bundle:v3];
  tableView = [(WFAirportViewController *)self tableView];
  [tableView registerNib:v4 forCellReuseIdentifier:@"WFNetworkCell"];

  v6 = [MEMORY[0x277D757B0] nibWithNibName:@"WFHotspotCell" bundle:v3];
  tableView2 = [(WFAirportViewController *)self tableView];
  [tableView2 registerNib:v6 forCellReuseIdentifier:@"WFHotspotCell"];

  tableView3 = [(WFAirportViewController *)self tableView];
  [tableView3 registerClass:objc_opt_class() forCellReuseIdentifier:@"WFWiFiPlacardCell"];

  tableView4 = [(WFAirportViewController *)self tableView];
  [tableView4 registerClass:objc_opt_class() forCellReuseIdentifier:@"WFOtherNetworkCell"];

  tableView5 = [(WFAirportViewController *)self tableView];
  [tableView5 registerClass:objc_opt_class() forCellReuseIdentifier:@"WFPowerCell"];

  tableView6 = [(WFAirportViewController *)self tableView];
  [tableView6 registerClass:objc_opt_class() forCellReuseIdentifier:@"WFUnconfiguredNetworkCell"];

  tableView7 = [(WFAirportViewController *)self tableView];
  [tableView7 registerClass:objc_opt_class() forCellReuseIdentifier:@"WFDiagnosticsCell"];

  tableView8 = [(WFAirportViewController *)self tableView];
  [tableView8 registerClass:objc_opt_class() forCellReuseIdentifier:@"kWFNetworkDataUsageCellIdentifier"];

  tableView9 = [(WFAirportViewController *)self tableView];
  [tableView9 registerClass:objc_opt_class() forCellReuseIdentifier:@"kWFNetworkWAPICellIdentifier"];

  tableView10 = [(WFAirportViewController *)self tableView];
  [tableView10 registerClass:objc_opt_class() forCellReuseIdentifier:@"WFNetworkKnownNetworksCellIdentifier"];

  tableView11 = [(WFAirportViewController *)self tableView];
  [tableView11 registerClass:objc_opt_class() forCellReuseIdentifier:@"kWFNetworkEditableNetworksListCellIdentifier"];

  tableView12 = [(WFAirportViewController *)self tableView];
  [tableView12 registerClass:objc_opt_class() forCellReuseIdentifier:@"kWFNetworkProfileNetworksListCellIdentifier"];

  tableView13 = [(WFAirportViewController *)self tableView];
  [tableView13 registerClass:objc_opt_class() forCellReuseIdentifier:@"kWFNetworkAlternativeCellIdentifier"];

  tableView14 = [(WFAirportViewController *)self tableView];
  [tableView14 registerClass:objc_opt_class() forHeaderFooterViewReuseIdentifier:@"kWFTableKnownHeaderIdentifier"];

  tableView15 = [(WFAirportViewController *)self tableView];
  [tableView15 registerClass:objc_opt_class() forHeaderFooterViewReuseIdentifier:@"kWFTableInfraHeaderIdentifier"];

  tableView16 = [(WFAirportViewController *)self tableView];
  [tableView16 registerClass:objc_opt_class() forHeaderFooterViewReuseIdentifier:@"kWFTablePopularHeaderIdentifier"];

  tableView17 = [(WFAirportViewController *)self tableView];
  [tableView17 registerClass:objc_opt_class() forHeaderFooterViewReuseIdentifier:@"kWFTableAdhocHeaderIdentifier"];

  tableView18 = [(WFAirportViewController *)self tableView];
  [tableView18 registerClass:objc_opt_class() forHeaderFooterViewReuseIdentifier:@"kWFTableEditableHeaderIdentifier"];

  tableView19 = [(WFAirportViewController *)self tableView];
  [tableView19 registerClass:objc_opt_class() forHeaderFooterViewReuseIdentifier:@"kWFTableManagedHeaderIdentifier"];

  tableView20 = [(WFAirportViewController *)self tableView];
  [tableView20 registerClass:objc_opt_class() forHeaderFooterViewReuseIdentifier:@"kWFTableUnconfiguredHeaderIdentifier"];

  v26 = *MEMORY[0x277D76F30];
  tableView21 = [(WFAirportViewController *)self tableView];
  [tableView21 setRowHeight:v26];

  tableView22 = [(WFAirportViewController *)self tableView];
  [tableView22 setEstimatedRowHeight:v26];

  tableView23 = [(WFAirportViewController *)self tableView];
  [tableView23 setEstimatedSectionFooterHeight:0.0];

  tableView24 = [(WFAirportViewController *)self tableView];
  [tableView24 setEstimatedSectionHeaderHeight:44.0];

  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__WFAirportViewController_loadView__block_invoke;
  block[3] = &unk_279EC5538;
  block[4] = self;
  dispatch_sync(internalQueue, block);
}

void __35__WFAirportViewController_loadView__block_invoke(uint64_t a1)
{
  v9 = [*(a1 + 32) listDelegate];
  [*(a1 + 32) setShowDiagnostics:{objc_msgSend(v9, "airportSettingsViewControllerShouldShowDiagnosticsMode:", *(a1 + 32))}];
  [*(a1 + 32) setShowKnownNetworks:{objc_msgSend(v9, "airportSettingsViewControllerShouldShowKnownNetworks:", *(a1 + 32))}];
  [*(a1 + 32) setShowNANUI:{objc_msgSend(v9, "airportSettingsViewControllerShouldShowNANUI:", *(a1 + 32))}];
  v2 = [*(a1 + 32) _defaultSectionsForPowerState:{objc_msgSend(*(a1 + 32), "powered")}];
  [*(a1 + 32) setSections:v2];

  if ([*(a1 + 32) showKnownNetworks])
  {
    v3 = [*(a1 + 32) sections];
    v4 = [v3 mutableCopy];

    [v4 addObject:&unk_288322420];
    [*(a1 + 32) setSections:v4];
  }

  v5 = [*(a1 + 32) listDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [*(a1 + 32) listDelegate];
    *(*(a1 + 32) + 1096) = [v7 networkListViewControllerOverrideDeviceCapability:*(a1 + 32)];
  }

  else
  {
    *(*(a1 + 32) + 1096) = WFCurrentDeviceCapability();
  }

  [*(a1 + 32) _loadEditButton];
  v8 = [*(a1 + 32) tableView];
  [v8 reloadData];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = WFAirportViewController;
  [(WFAirportViewController *)&v3 viewDidLoad];
  [(WFAirportViewController *)self _updateNetworkRestrictionHeader];
}

- (void)willMoveToParentViewController:(id)controller
{
  v9.receiver = self;
  v9.super_class = WFAirportViewController;
  [(WFAirportViewController *)&v9 willMoveToParentViewController:?];
  if (!controller)
  {
    parentViewController = [(WFAirportViewController *)self parentViewController];
    navigationItem = [parentViewController navigationItem];
    [navigationItem setTitleView:0];

    navigationItem2 = [(WFAirportViewController *)self navigationItem];
    [navigationItem2 setTitleView:0];

    navigationItem3 = [(WFAirportViewController *)self navigationItem];
    [navigationItem3 setBackButtonTitle:0];
  }
}

- (void)setDeviceCapability:(int64_t)capability
{
  v11 = *MEMORY[0x277D85DE8];
  self->_deviceCapability = capability;
  v4 = WFLogForCategory(0);
  v5 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v4)
  {
    v6 = v4;
    if (os_log_type_enabled(v6, v5))
    {
      v7 = WFStringFromDeviceCapability(capability);
      v9 = 138412290;
      v10 = v7;
      _os_log_impl(&dword_273FB9000, v6, v5, "Device Capability: %@", &v9, 0xCu);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)showDiagnosticsCell
{
  if ([(WFAirportViewController *)self showDiagnostics])
  {
    return 1;
  }

  return [(WFAirportViewController *)self showNANUI];
}

- (void)setCurrentNetworkState:(int64_t)state
{
  v23 = *MEMORY[0x277D85DE8];
  if ([(WFAirportViewController *)self isInEditingMode])
  {
    joiningHotspot = WFLogForCategory(0);
    v6 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && joiningHotspot && os_log_type_enabled(joiningHotspot, v6))
    {
      *buf = 0;
      _os_log_impl(&dword_273FB9000, joiningHotspot, v6, "Not setting current network state for current network in edit mode", buf, 2u);
    }

LABEL_21:

    goto LABEL_22;
  }

  if (self->_currentNetworkState != state)
  {
    self->_currentNetworkState = state;
    listDelegate = [(WFAirportViewController *)self listDelegate];
    v8 = [listDelegate airportSettingsViewControllerCurrentNetworkConnectionIsProblematic:self];

    currentNetworkRowConfig = [(WFAirportViewController *)self currentNetworkRowConfig];
    [currentNetworkRowConfig setConnectionState:state];

    currentNetworkRowConfig2 = [(WFAirportViewController *)self currentNetworkRowConfig];
    [currentNetworkRowConfig2 setProblematicConnection:v8];

    joiningHotspot = [(WFAirportViewController *)self joiningHotspot];
    if (joiningHotspot)
    {
      v11 = WFLogForCategory(0);
      v12 = OSLogForWFLogLevel(3uLL);
      if (WFCurrentLogLevel() >= 3 && v11 && os_log_type_enabled(v11, v12))
      {
        *buf = 136315394;
        v20 = "[WFAirportViewController setCurrentNetworkState:]";
        v21 = 2112;
        v22 = joiningHotspot;
        _os_log_impl(&dword_273FB9000, v11, v12, "%s: joining hotspot %@", buf, 0x16u);
      }

      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __50__WFAirportViewController_setCurrentNetworkState___block_invoke;
      block[3] = &unk_279EC5538;
      block[4] = self;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }

    _currentNetworkCell = [(WFAirportViewController *)self _currentNetworkCell];
    v14 = _currentNetworkCell;
    if (_currentNetworkCell)
    {
      [_currentNetworkCell setConnectionError:v8];
      [v14 setState:self->_currentNetworkState];
    }

    else
    {
      v15 = WFLogForCategory(0);
      v16 = OSLogForWFLogLevel(3uLL);
      if (WFCurrentLogLevel() >= 3 && v15 && os_log_type_enabled(v15, v16))
      {
        *buf = 136315138;
        v20 = "[WFAirportViewController setCurrentNetworkState:]";
        _os_log_impl(&dword_273FB9000, v15, v16, "%s: nil currentNetwork cell", buf, 0xCu);
      }
    }

    goto LABEL_21;
  }

LABEL_22:
  v17 = *MEMORY[0x277D85DE8];
}

- (void)setCurrentNetworkScaledRSSI:(float)i
{
  v18 = *MEMORY[0x277D85DE8];
  if ([(WFAirportViewController *)self isInEditingMode])
  {
    v5 = WFLogForCategory(0);
    v6 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v5 && os_log_type_enabled(v5, v6))
    {
      LOWORD(v16) = 0;
      _os_log_impl(&dword_273FB9000, v5, v6, "Not setting RSSI for current network in edit mode", &v16, 2u);
    }

LABEL_16:

    goto LABEL_17;
  }

  if (self->_currentNetworkScaledRSSI != i)
  {
    self->_currentNetworkScaledRSSI = i;
    listDelegate = [(WFAirportViewController *)self listDelegate];
    v8 = [listDelegate airportSettingsViewControllerCurrentNetworkConnectionIsProblematic:self];

    v9 = WFSignalBarsFromScaledRSSI(self->_currentNetworkScaledRSSI);
    currentNetworkRowConfig = [(WFAirportViewController *)self currentNetworkRowConfig];
    [currentNetworkRowConfig setSignalBars:v9];

    currentNetworkRowConfig2 = [(WFAirportViewController *)self currentNetworkRowConfig];
    [currentNetworkRowConfig2 setProblematicConnection:v8];

    _currentNetworkCell = [(WFAirportViewController *)self _currentNetworkCell];
    v5 = _currentNetworkCell;
    if (_currentNetworkCell)
    {
      if (v8)
      {
        [_currentNetworkCell setConnectionError:1];
      }

      else
      {
        [_currentNetworkCell setConnectionError:0];
        [v5 setBars:WFSignalBarsFromScaledRSSI(self->_currentNetworkScaledRSSI)];
      }
    }

    else
    {
      v13 = WFLogForCategory(0);
      v14 = OSLogForWFLogLevel(3uLL);
      if (WFCurrentLogLevel() >= 3 && v13 && os_log_type_enabled(v13, v14))
      {
        v16 = 136315138;
        v17 = "[WFAirportViewController setCurrentNetworkScaledRSSI:]";
        _os_log_impl(&dword_273FB9000, v13, v14, "%s: nil currentNetwork cell", &v16, 0xCu);
      }
    }

    goto LABEL_16;
  }

LABEL_17:
  v15 = *MEMORY[0x277D85DE8];
}

- (void)setCurrentNetwork:(id)network
{
  networkCopy = network;
  if ([(WFAirportViewController *)self isInEditingMode])
  {
    v5 = WFLogForCategory(0);
    v6 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v5 && os_log_type_enabled(v5, v6))
    {
      *v7 = 0;
      _os_log_impl(&dword_273FB9000, v5, v6, "Not updating current network in edit mode", v7, 2u);
    }
  }

  else
  {
    [(WFAirportViewController *)self setCurrentNetwork:networkCopy previousNetwork:0 reason:0];
  }
}

- (void)setCurrentNetwork:(id)network previousNetwork:(id)previousNetwork reason:(unint64_t)reason
{
  networkCopy = network;
  previousNetworkCopy = previousNetwork;
  internalQueue = self->_internalQueue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __68__WFAirportViewController_setCurrentNetwork_previousNetwork_reason___block_invoke;
  v13[3] = &unk_279EC5560;
  v13[4] = self;
  v14 = networkCopy;
  v15 = previousNetworkCopy;
  reasonCopy = reason;
  v11 = previousNetworkCopy;
  v12 = networkCopy;
  dispatch_sync(internalQueue, v13);
}

void __68__WFAirportViewController_setCurrentNetwork_previousNetwork_reason___block_invoke(uint64_t a1)
{
  *&v227[11] = *MEMORY[0x277D85DE8];
  v4 = [*(a1 + 32) joiningHotspot];
  if (v4)
  {
    [*(a1 + 32) setJoiningHotspot:0];
    v5 = WFLogForCategory(0);
    v1 = OSLogForWFLogLevel(3uLL);
    if (WFCurrentLogLevel() >= 3 && v5)
    {
      v2 = v5;
      if (os_log_type_enabled(v2, v1))
      {
        *buf = 136315394;
        v222 = "[WFAirportViewController setCurrentNetwork:previousNetwork:reason:]_block_invoke";
        v223 = 2112;
        *v224 = v4;
        _os_log_impl(&dword_273FB9000, v2, v1, "%s: joining hotspot %@, clearing and resetting state", buf, 0x16u);
      }
    }

    [*(a1 + 32) _reloadSectionForHotspotChange];
  }

  v6 = [*(a1 + 32) currentNetwork];
  if (v6 && *(a1 + 40))
  {
    v1 = [*(a1 + 32) currentNetwork];
    if ([v1 isEqual:*(a1 + 40)])
    {
      v2 = [*(a1 + 32) currentNetwork];
      v7 = [v2 canBeDisplayedAsCurrent];
      if (v7 == [*(a1 + 40) canBeDisplayedAsCurrent])
      {

        goto LABEL_47;
      }

      v8 = 1;
      v9 = 1;
    }

    else
    {
      v8 = 0;
      v9 = 1;
    }
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  v10 = [*(a1 + 32) currentNetwork];
  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = *(a1 + 40) == 0;
  }

  if (v8)
  {

    if ((v9 & 1) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_23;
  }

  if (v9)
  {
LABEL_23:

    if (!v11)
    {
      goto LABEL_24;
    }

LABEL_47:
    v15 = WFLogForCategory(0);
    v38 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v15)
    {
      v15 = v15;
      if (os_log_type_enabled(v15, v38))
      {
        v39 = [*(a1 + 32) currentNetwork];
        v40 = [*(a1 + 32) currentNetwork];
        v41 = [v40 hash];
        *buf = 136315650;
        v222 = "[WFAirportViewController setCurrentNetwork:previousNetwork:reason:]_block_invoke";
        v223 = 2112;
        *v224 = v39;
        *&v224[8] = 2048;
        v225 = v41;
        _os_log_impl(&dword_273FB9000, v15, v38, "%s: no change to current network (%@ - %lu)", buf, 0x20u);
      }
    }

    goto LABEL_52;
  }

LABEL_20:

  if (v11)
  {
    goto LABEL_47;
  }

LABEL_24:
  v12 = [*(a1 + 32) _refreshATJShownStateIfChanged];
  v13 = [*(a1 + 32) powered];
  v14 = *(a1 + 32);
  if (*(v14 + 1058) == 1)
  {
    v15 = WFLogForCategory(0);
    v16 = OSLogForWFLogLevel(1uLL);
    if (!WFCurrentLogLevel() || !v15 || !os_log_type_enabled(v15, v16))
    {
      goto LABEL_52;
    }

    *buf = 0;
    v17 = "Trying to set current network in editing mode, discard operation.";
    v18 = v15;
    v19 = v16;
    v20 = 2;
LABEL_39:
    _os_log_impl(&dword_273FB9000, v18, v19, v17, buf, v20);
LABEL_52:

    goto LABEL_53;
  }

  v21 = v13;
  v22 = *(v14 + 1056);
  v15 = WFLogForCategory(0);
  if (v22 == 1)
  {
    v23 = OSLogForWFLogLevel(3uLL);
    if (WFCurrentLogLevel() >= 3 && v15)
    {
      v24 = v15;
      if (os_log_type_enabled(v24, v23))
      {
        v25 = *(a1 + 40);
        v26 = [*(a1 + 32) currentNetwork];
        *buf = 138412546;
        v222 = v25;
        v223 = 2112;
        *v224 = v26;
        _os_log_impl(&dword_273FB9000, v24, v23, "table view update in progress, pending network update to '%@' current network='%@'", buf, 0x16u);
      }
    }

    v27 = [[WFPendingNetworkUpdate alloc] initWithNetwork:*(a1 + 40)];
    v28 = *(a1 + 32);
    v29 = *(v28 + 1216);
    *(v28 + 1216) = v27;

    v15 = WFLogForCategory(0);
    v30 = OSLogForWFLogLevel(1uLL);
    if (!WFCurrentLogLevel() || !v15 || !os_log_type_enabled(v15, v30))
    {
      goto LABEL_52;
    }

    v31 = *(*(a1 + 32) + 1216);
    *buf = 136315394;
    v222 = "[WFAirportViewController setCurrentNetwork:previousNetwork:reason:]_block_invoke";
    v223 = 2112;
    *v224 = v31;
    v17 = "%s: pending network update initialized %@";
    v18 = v15;
    v19 = v30;
    v20 = 22;
    goto LABEL_39;
  }

  v32 = OSLogForWFLogLevel(1uLL);
  v216 = v21;
  if (WFCurrentLogLevel() && v15)
  {
    v33 = v15;
    if (os_log_type_enabled(v33, v32))
    {
      v215 = v12;
      v34 = [*(a1 + 48) ssid];
      v35 = [*(a1 + 40) ssid];
      v36 = *(a1 + 56);
      if (v36)
      {
        if (v36 == 1)
        {
          v37 = @"user initiated";
        }

        else
        {
          v43 = WFLogForCategory(0);
          type = OSLogForWFLogLevel(1uLL);
          if (WFCurrentLogLevel() && v43 && os_log_type_enabled(v43, type))
          {
            *buf = 136315394;
            v222 = "__WFNetworkListNetworkChangeReasonToString";
            v223 = 2048;
            *v224 = v36;
            _os_log_impl(&dword_273FB9000, v43, type, "%s: %lu is invalid WFNetworkListNetworkChangeReason", buf, 0x16u);
          }

          v37 = 0;
          v21 = v216;
        }
      }

      else
      {
        v37 = @"automatic";
      }

      *buf = 136316162;
      v222 = "[WFAirportViewController setCurrentNetwork:previousNetwork:reason:]_block_invoke";
      v223 = 2112;
      *v224 = v34;
      *&v224[8] = 2112;
      v225 = v35;
      v226 = 1024;
      *v227 = v21;
      v227[2] = 2112;
      *&v227[3] = v37;
      _os_log_impl(&dword_273FB9000, v33, v32, "%s: old: %@ new: %@ powered: %d reason: %@", buf, 0x30u);

      v12 = v215;
    }
  }

  v44 = [*(a1 + 32) tableView];
  [v44 beginUpdates];

  v45 = *(a1 + 40);
  if (v45)
  {
    if ([v45 isAdhoc])
    {
      v46 = [*(a1 + 32) adhocNetworks];

      if (!v46)
      {
        __68__WFAirportViewController_setCurrentNetwork_previousNetwork_reason___block_invoke_cold_5();
        goto LABEL_141;
      }

      v47 = [*(a1 + 32) adhocNetworks];
      v48 = &unk_288322438;
    }

    else if ([*(a1 + 40) isUnconfiguredAccessory])
    {
      v50 = [*(a1 + 32) unconfiguredNetworks];

      if (!v50)
      {
        __68__WFAirportViewController_setCurrentNetwork_previousNetwork_reason___block_invoke_cold_4();
        goto LABEL_141;
      }

      v47 = [*(a1 + 32) unconfiguredNetworks];
      v48 = &unk_288322450;
    }

    else if ([*(a1 + 40) isPopular])
    {
      v51 = [*(a1 + 32) popularNetworks];

      if (!v51)
      {
        __68__WFAirportViewController_setCurrentNetwork_previousNetwork_reason___block_invoke_cold_3();
        goto LABEL_141;
      }

      v47 = [*(a1 + 32) popularNetworks];
      v48 = &unk_288322468;
    }

    else
    {
      v52 = [*(a1 + 40) isKnown];
      v53 = *(a1 + 32);
      if (v52)
      {
        v54 = [v53 knownNetworks];

        if (!v54)
        {
          __68__WFAirportViewController_setCurrentNetwork_previousNetwork_reason___block_invoke_cold_2();
          goto LABEL_141;
        }

        v47 = [*(a1 + 32) knownNetworks];
        v48 = &unk_288322480;
      }

      else
      {
        v55 = [v53 infraNetworks];

        if (!v55)
        {
          __68__WFAirportViewController_setCurrentNetwork_previousNetwork_reason___block_invoke_cold_1();
          goto LABEL_141;
        }

        v47 = [*(a1 + 32) infraNetworks];
        v48 = &unk_288322498;
      }
    }

    v56 = v12;
    v57 = [v47 indexOfObject:*(a1 + 40)];

    v58 = [*(a1 + 32) sections];
    v59 = [v58 indexOfObject:v48];

    v15 = WFLogForCategory(0);
    if (v59 == 0x7FFFFFFFFFFFFFFFLL || v57 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v66 = OSLogForWFLogLevel(1uLL);
      if (WFCurrentLogLevel() && v15)
      {
        v67 = v15;
        if (os_log_type_enabled(v67, v66))
        {
          v68 = *(a1 + 40);
          *buf = 136315906;
          v222 = "[WFAirportViewController setCurrentNetwork:previousNetwork:reason:]_block_invoke";
          v223 = 2114;
          *v224 = v68;
          *&v224[8] = 2050;
          v225 = v59;
          v226 = 2050;
          *v227 = v57;
          _os_log_impl(&dword_273FB9000, v67, v66, "%s: can't find new current network in data %{public}@ (%{public}lu,%{public}lu)", buf, 0x2Au);
        }
      }

      [*(a1 + 32) _dumpSections];
    }

    else
    {
      v60 = OSLogForWFLogLevel(3uLL);
      if (WFCurrentLogLevel() >= 3 && v15)
      {
        v61 = v15;
        if (os_log_type_enabled(v61, v60))
        {
          v62 = [*(a1 + 32) _nameOfSection:v59];
          *buf = 136315906;
          v222 = "[WFAirportViewController setCurrentNetwork:previousNetwork:reason:]_block_invoke";
          v223 = 2112;
          *v224 = v62;
          *&v224[8] = 2048;
          v225 = v59;
          v226 = 2048;
          *v227 = v57;
          _os_log_impl(&dword_273FB9000, v61, v60, "%s: removing from section %@ (%lu) at row %lu", buf, 0x2Au);
        }
      }

      v63 = [*(a1 + 32) pendingNetworks];
      v15 = [v63 mutableCopy];

      [v15 removeObject:*(a1 + 40)];
      objc_storeStrong((*(a1 + 32) + 1224), v15);
      if (*(*(a1 + 32) + 1056) == 1)
      {
        v64 = WFLogForCategory(0);
        v65 = OSLogForWFLogLevel(3uLL);
        if (WFCurrentLogLevel() >= 3 && v64 && os_log_type_enabled(v64, v65))
        {
          *buf = 0;
          _os_log_impl(&dword_273FB9000, v64, v65, "table is updating while setting the current network", buf, 2u);
        }

        *(*(a1 + 32) + 1057) = 1;
        goto LABEL_52;
      }

      if ([*(a1 + 40) isAdhoc])
      {
        v69 = WFLogForCategory(0);
        v70 = OSLogForWFLogLevel(3uLL);
        if (WFCurrentLogLevel() >= 3 && v69)
        {
          v71 = v69;
          if (os_log_type_enabled(v71, v70))
          {
            *buf = 136315138;
            v222 = "[WFAirportViewController setCurrentNetwork:previousNetwork:reason:]_block_invoke";
            _os_log_impl(&dword_273FB9000, v71, v70, "%s: removing from adhoc", buf, 0xCu);
          }
        }

        v72 = [*(a1 + 32) adhocNetworks];
        v73 = [v72 mutableCopy];

        v74 = [*(a1 + 32) adhocNetworks];
        v75 = [v74 mutableCopy];

        [v73 removeObject:*(a1 + 40)];
        v76 = *(a1 + 32);
        v77 = [v76 sections];
        v78 = [v77 indexOfObject:&unk_288322438];
        v79 = v76;
        v80 = v73;
        v81 = v75;
        v82 = 4;
      }

      else if ([*(a1 + 40) isUnconfiguredAccessory])
      {
        v83 = WFLogForCategory(0);
        v84 = OSLogForWFLogLevel(3uLL);
        if (WFCurrentLogLevel() >= 3 && v83)
        {
          v85 = v83;
          if (os_log_type_enabled(v85, v84))
          {
            *buf = 136315138;
            v222 = "[WFAirportViewController setCurrentNetwork:previousNetwork:reason:]_block_invoke";
            _os_log_impl(&dword_273FB9000, v85, v84, "%s: removing from accessory", buf, 0xCu);
          }
        }

        v86 = [*(a1 + 32) unconfiguredNetworks];
        v73 = [v86 mutableCopy];

        v87 = [*(a1 + 32) unconfiguredNetworks];
        v75 = [v87 mutableCopy];

        [v73 removeObject:*(a1 + 40)];
        v88 = *(a1 + 32);
        v77 = [v88 sections];
        v78 = [v77 indexOfObject:&unk_288322450];
        v79 = v88;
        v80 = v73;
        v81 = v75;
        v82 = 5;
      }

      else if ([*(a1 + 40) isPopular])
      {
        v89 = WFLogForCategory(0);
        v90 = OSLogForWFLogLevel(3uLL);
        if (WFCurrentLogLevel() >= 3 && v89)
        {
          v91 = v89;
          if (os_log_type_enabled(v91, v90))
          {
            *buf = 136315138;
            v222 = "[WFAirportViewController setCurrentNetwork:previousNetwork:reason:]_block_invoke";
            _os_log_impl(&dword_273FB9000, v91, v90, "%s: removing from popular", buf, 0xCu);
          }
        }

        v92 = [*(a1 + 32) popularNetworks];
        v73 = [v92 mutableCopy];

        v93 = [*(a1 + 32) popularNetworks];
        v75 = [v93 mutableCopy];

        [v73 removeObject:*(a1 + 40)];
        v94 = *(a1 + 32);
        v77 = [v94 sections];
        v78 = [v77 indexOfObject:&unk_288322468];
        v79 = v94;
        v80 = v73;
        v81 = v75;
        v82 = 2;
      }

      else
      {
        v95 = [*(a1 + 40) isKnown];
        v96 = WFLogForCategory(0);
        v97 = OSLogForWFLogLevel(3uLL);
        v99 = WFCurrentLogLevel() > 2 && v96 != 0;
        if (v95)
        {
          if (v99)
          {
            v100 = v96;
            if (os_log_type_enabled(v100, v97))
            {
              *buf = 136315138;
              v222 = "[WFAirportViewController setCurrentNetwork:previousNetwork:reason:]_block_invoke";
              _os_log_impl(&dword_273FB9000, v100, v97, "%s: removing from known", buf, 0xCu);
            }
          }

          v101 = [*(a1 + 32) knownNetworks];
          v73 = [v101 mutableCopy];

          v102 = [*(a1 + 32) knownNetworks];
          v75 = [v102 mutableCopy];

          [v73 removeObject:*(a1 + 40)];
          v103 = *(a1 + 32);
          v77 = [v103 sections];
          v78 = [v77 indexOfObject:&unk_288322480];
          v79 = v103;
          v80 = v73;
          v81 = v75;
          v82 = 1;
        }

        else
        {
          if (v99)
          {
            v104 = v96;
            if (os_log_type_enabled(v104, v97))
            {
              *buf = 136315138;
              v222 = "[WFAirportViewController setCurrentNetwork:previousNetwork:reason:]_block_invoke";
              _os_log_impl(&dword_273FB9000, v104, v97, "%s: removing from infra", buf, 0xCu);
            }
          }

          v105 = [*(a1 + 32) infraNetworks];
          v73 = [v105 mutableCopy];

          v106 = [*(a1 + 32) infraNetworks];
          v75 = [v106 mutableCopy];

          [v73 removeObject:*(a1 + 40)];
          v107 = *(a1 + 32);
          v77 = [v107 sections];
          v78 = [v77 indexOfObject:&unk_288322498];
          v79 = v107;
          v80 = v73;
          v81 = v75;
          v82 = 3;
        }
      }

      [v79 _updateCellsWithNewData:v80 oldData:v81 inSection:v78 insertSection:0 datasourceSection:v82];
    }

    v12 = v56;
  }

  else
  {
    v15 = WFLogForCategory(0);
    v49 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v15 && os_log_type_enabled(v15, v49))
    {
      *buf = 136315138;
      v222 = "[WFAirportViewController setCurrentNetwork:previousNetwork:reason:]_block_invoke";
      _os_log_impl(&dword_273FB9000, v15, v49, "%s: current network is nil", buf, 0xCu);
    }
  }

LABEL_141:
  v108 = *(a1 + 32);
  v109 = *(v108 + 1059);
  v110 = 0x280933000uLL;
  if (!v216)
  {
    if (*(v108 + 1059))
    {
      goto LABEL_229;
    }

    if (*(a1 + 40))
    {
      goto LABEL_229;
    }

    v113 = *(v108 + 1072);
    if (!v113 || ![v113 canBeDisplayedAsCurrent])
    {
      goto LABEL_229;
    }

    v114 = [*(a1 + 32) showDiagnosticsCell];
    v115 = *(a1 + 32);
    if (v114)
    {
      v116 = 2;
    }

    else
    {
      v116 = 1;
    }

    v117 = [*(a1 + 32) rowCountWithPlacardCell:v116];
    v118 = [*(a1 + 32) sections];
    v119 = [v118 indexOfObject:&unk_2883224B0];

    v120 = WFLogForCategory(0);
    v121 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v120)
    {
      v122 = v12;
      v123 = v120;
      if (os_log_type_enabled(v123, v121))
      {
        v124 = [*(a1 + 32) _nameOfSection:v119];
        *buf = 136315906;
        v222 = "[WFAirportViewController setCurrentNetwork:previousNetwork:reason:]_block_invoke";
        v223 = 2112;
        *v224 = v124;
        *&v224[8] = 2048;
        v225 = v119;
        v226 = 2048;
        *v227 = v117;
        _os_log_impl(&dword_273FB9000, v123, v121, "%s: not powered, removing current network cell at section: %@ (%lu) row: %lu", buf, 0x2Au);
      }

      v12 = v122;
      v110 = 0x280933000;
    }

    if (v119 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v208 = [MEMORY[0x277CCAA70] indexPathForRow:v117 inSection:v119];
      v209 = [*(a1 + 32) tableView];
      v210 = [v209 cellForRowAtIndexPath:v208];

      if (v210)
      {
        v211 = [*(a1 + 32) tableView];
        v217 = v208;
        v212 = [MEMORY[0x277CBEA60] arrayWithObjects:&v217 count:1];
        [v211 deleteRowsAtIndexPaths:v212 withRowAnimation:100];
      }

      else
      {
        v211 = WFLogForCategory(0);
        v213 = OSLogForWFLogLevel(1uLL);
        if (WFCurrentLogLevel() && v211 && os_log_type_enabled(v211, v213))
        {
          *buf = 136315138;
          v222 = "[WFAirportViewController setCurrentNetwork:previousNetwork:reason:]_block_invoke";
          _os_log_impl(&dword_273FB9000, v211, v213, "%s: Tried to delete current network row when not it wasn't visible", buf, 0xCu);
        }
      }

      goto LABEL_229;
    }

    v125 = WFLogForCategory(0);
    v126 = OSLogForWFLogLevel(1uLL);
    if (!WFCurrentLogLevel() || !v125 || !os_log_type_enabled(v125, v126))
    {
      goto LABEL_226;
    }

    *buf = 136315138;
    v222 = "[WFAirportViewController setCurrentNetwork:previousNetwork:reason:]_block_invoke";
    v127 = v125;
    v128 = v126;
    goto LABEL_178;
  }

  if (*(v108 + 1059))
  {
    goto LABEL_179;
  }

  v111 = [v108 currentNetwork];
  if (!v111 && ([*(a1 + 40) canBeDisplayedAsCurrent] & 1) != 0)
  {
    goto LABEL_165;
  }

  v112 = [*(a1 + 32) currentNetwork];
  if ([v112 canBeDisplayedAsCurrent])
  {

    goto LABEL_179;
  }

  v15 = [*(a1 + 40) canBeDisplayedAsCurrent];

  if (v15)
  {
LABEL_165:
    v129 = [*(a1 + 32) showDiagnosticsCell];
    v130 = *(a1 + 32);
    if (v129)
    {
      v131 = 2;
    }

    else
    {
      v131 = 1;
    }

    v132 = [*(a1 + 32) rowCountWithPlacardCell:v131];
    v133 = [*(a1 + 32) sections];
    v134 = [v133 indexOfObject:&unk_2883224B0];

    v125 = WFLogForCategory(0);
    v135 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel())
    {
      v136 = v125 == 0;
    }

    else
    {
      v136 = 1;
    }

    v137 = !v136;
    if (v134 != 0x7FFFFFFFFFFFFFFFLL)
    {
      if (v137)
      {
        v140 = v12;
        v141 = v125;
        if (os_log_type_enabled(v141, v135))
        {
          v142 = [*(a1 + 32) _nameOfSection:v134];
          *buf = 136315906;
          v222 = "[WFAirportViewController setCurrentNetwork:previousNetwork:reason:]_block_invoke";
          v223 = 2112;
          *v224 = v142;
          *&v224[8] = 2048;
          v225 = v134;
          v226 = 2048;
          *v227 = v132;
          _os_log_impl(&dword_273FB9000, v141, v135, "%s: inserting into section: %@ (%lu) row: %lu", buf, 0x2Au);
        }

        v12 = v140;
        v110 = 0x280933000;
      }

      v143 = [*(a1 + 32) tableView];
      v144 = [MEMORY[0x277CCAA70] indexPathForRow:v132 inSection:v134];
      v220 = v144;
      v145 = [MEMORY[0x277CBEA60] arrayWithObjects:&v220 count:1];
      [v143 insertRowsAtIndexPaths:v145 withRowAnimation:3];
      goto LABEL_228;
    }

    if (!v137 || !os_log_type_enabled(v125, v135))
    {
      goto LABEL_226;
    }

    *buf = 136315138;
    v222 = "[WFAirportViewController setCurrentNetwork:previousNetwork:reason:]_block_invoke";
    v127 = v125;
    v128 = v135;
LABEL_178:
    _os_log_impl(&dword_273FB9000, v127, v128, "%s: WFAirportSectionPower section not found", buf, 0xCu);
LABEL_226:

    [*(a1 + 32) _dumpSections];
    goto LABEL_229;
  }

LABEL_179:
  v138 = *(a1 + 32);
  if (v138[1059])
  {
    goto LABEL_209;
  }

  v139 = *(a1 + 40);
  if (v139)
  {
    if (([*(a1 + 40) canBeDisplayedAsCurrent] & 1) == 0)
    {
LABEL_192:
      v146 = [*(a1 + 32) currentNetwork];
      v147 = [v146 canBeDisplayedAsCurrent];

      if (v139)
      {
        if (v147)
        {
          goto LABEL_194;
        }
      }

      else
      {

        if (v147)
        {
          goto LABEL_194;
        }
      }
    }

LABEL_209:
    if ((*(*(a1 + 32) + 1059) & 1) != 0 || ![*(a1 + 40) canBeDisplayedAsCurrent])
    {
      goto LABEL_229;
    }

    v164 = [*(a1 + 32) showDiagnosticsCell];
    v165 = *(a1 + 32);
    if (v164)
    {
      v166 = 2;
    }

    else
    {
      v166 = 1;
    }

    v167 = [*(a1 + 32) rowCountWithPlacardCell:v166];
    v168 = [*(a1 + 32) sections];
    v169 = [v168 indexOfObject:&unk_2883224B0];

    v170 = WFLogForCategory(0);
    v171 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v170)
    {
      v172 = v12;
      v173 = v170;
      if (os_log_type_enabled(v173, v171))
      {
        v174 = [*(a1 + 32) _nameOfSection:v169];
        *buf = 136315906;
        v222 = "[WFAirportViewController setCurrentNetwork:previousNetwork:reason:]_block_invoke";
        v223 = 2112;
        *v224 = v174;
        *&v224[8] = 2048;
        v225 = v169;
        v226 = 2048;
        *v227 = v167;
        _os_log_impl(&dword_273FB9000, v173, v171, "%s: reloading at section: %@ (%lu) row: %lu", buf, 0x2Au);
      }

      v12 = v172;
      v110 = 0x280933000uLL;
    }

    if (v169 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v125 = WFLogForCategory(0);
      v159 = OSLogForWFLogLevel(1uLL);
      if (!WFCurrentLogLevel() || !v125)
      {
        goto LABEL_226;
      }

      v160 = v125;
      if (!os_log_type_enabled(v160, v159))
      {
        goto LABEL_225;
      }

      *buf = 136315138;
      v222 = "[WFAirportViewController setCurrentNetwork:previousNetwork:reason:]_block_invoke";
LABEL_224:
      _os_log_impl(&dword_273FB9000, v160, v159, "%s: WFAirportSectionPower section not found", buf, 0xCu);
LABEL_225:

      goto LABEL_226;
    }

    v143 = [*(a1 + 32) tableView];
    v144 = [MEMORY[0x277CCAA70] indexPathForRow:v167 inSection:v169];
    v218 = v144;
    v145 = [MEMORY[0x277CBEA60] arrayWithObjects:&v218 count:1];
    [v143 reloadRowsAtIndexPaths:v145 withRowAnimation:100];
LABEL_228:

    [*(a1 + 32) setUserAutoJoinEnabled:1];
    goto LABEL_229;
  }

  v15 = [v138 currentNetwork];
  if (![v15 canBeDisplayedAsCurrent])
  {
    if (([*(a1 + 40) canBeDisplayedAsCurrent] & 1) == 0)
    {
      goto LABEL_192;
    }

    goto LABEL_209;
  }

LABEL_194:
  v148 = [*(a1 + 32) showDiagnosticsCell];
  v149 = *(a1 + 32);
  if (v148)
  {
    v150 = 2;
  }

  else
  {
    v150 = 1;
  }

  v151 = [*(a1 + 32) rowCountWithPlacardCell:v150];
  v152 = [*(a1 + 32) sections];
  v153 = [v152 indexOfObject:&unk_2883224B0];

  v154 = WFLogForCategory(0);
  v155 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v154)
  {
    v156 = v12;
    v157 = v154;
    if (os_log_type_enabled(v157, v155))
    {
      v158 = [*(a1 + 32) _nameOfSection:v153];
      *buf = 136315906;
      v222 = "[WFAirportViewController setCurrentNetwork:previousNetwork:reason:]_block_invoke";
      v223 = 2112;
      *v224 = v158;
      *&v224[8] = 2048;
      v225 = v153;
      v226 = 2048;
      *v227 = v151;
      _os_log_impl(&dword_273FB9000, v157, v155, "%s: removing from section: %@ (%lu) row: %lu", buf, 0x2Au);
    }

    v12 = v156;
    v110 = 0x280933000;
  }

  if (v153 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v125 = WFLogForCategory(0);
    v159 = OSLogForWFLogLevel(1uLL);
    if (!WFCurrentLogLevel() || !v125)
    {
      goto LABEL_226;
    }

    v160 = v125;
    if (!os_log_type_enabled(v160, v159))
    {
      goto LABEL_225;
    }

    *buf = 136315138;
    v222 = "[WFAirportViewController setCurrentNetwork:previousNetwork:reason:]_block_invoke";
    goto LABEL_224;
  }

  v161 = [*(a1 + 32) tableView];
  v162 = [MEMORY[0x277CCAA70] indexPathForRow:v151 inSection:v153];
  v219 = v162;
  v163 = [MEMORY[0x277CBEA60] arrayWithObjects:&v219 count:1];
  [v161 deleteRowsAtIndexPaths:v163 withRowAnimation:100];

LABEL_229:
  v175 = WFLogForCategory(0);
  v176 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v175)
  {
    v177 = v175;
    if (os_log_type_enabled(v177, v176))
    {
      v178 = [*(a1 + 32) askToJoinShown];
      *buf = 136315650;
      v222 = "[WFAirportViewController setCurrentNetwork:previousNetwork:reason:]_block_invoke";
      v223 = 1024;
      *v224 = v12;
      *&v224[4] = 1024;
      *&v224[6] = v178;
      _os_log_impl(&dword_273FB9000, v177, v176, "%s: atjShownStateDidChange %d askToJoinShown %d", buf, 0x18u);
    }
  }

  v179 = *(a1 + 32);
  if ((v179[1059] & 1) == 0 && ((v12 ^ 1) & 1) == 0)
  {
    v180 = [v179 sections];
    v181 = [v180 mutableCopy];

    if ([*(a1 + 32) askToJoinShown])
    {
      [v181 addObject:&unk_2883224C8];
      [*(a1 + 32) setSections:v181];
      v182 = [v181 indexOfObject:&unk_2883224C8];
      if (v182 == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_261;
      }

      v183 = v182;
      if (v182 >= [*(*(a1 + 32) + 1128) count])
      {
        goto LABEL_261;
      }

      v184 = WFLogForCategory(0);
      v185 = OSLogForWFLogLevel(4uLL);
      if (WFCurrentLogLevel() >= 4 && v184)
      {
        v186 = v184;
        if (os_log_type_enabled(v186, v185))
        {
          *buf = 136315394;
          v222 = "[WFAirportViewController setCurrentNetwork:previousNetwork:reason:]_block_invoke";
          v223 = 2048;
          *v224 = v183;
          _os_log_impl(&dword_273FB9000, v186, v185, "%s: inserting section at %lu", buf, 0x16u);
        }
      }

      v187 = [*(a1 + 32) tableView];
      v188 = [MEMORY[0x277CCAA78] indexSetWithIndex:v183];
      [v187 insertSections:v188 withRowAnimation:3];
    }

    else
    {
      v189 = *(a1 + 32);
      if (v189[1059])
      {
LABEL_261:

        v179 = *(a1 + 32);
        goto LABEL_262;
      }

      v190 = [v189 sections];
      v191 = [v190 indexOfObject:&unk_2883224C8];

      [v181 removeObject:&unk_2883224C8];
      [*(a1 + 32) setSections:v181];
      if (v191 == 0x7FFFFFFFFFFFFFFFLL || ([*(a1 + 32) sections], v192 = objc_claimAutoreleasedReturnValue(), v193 = objc_msgSend(v192, "count"), v192, v191 >= v193))
      {
        v187 = WFLogForCategory(0);
        v197 = OSLogForWFLogLevel(4uLL);
        if (WFCurrentLogLevel() < 4 || !v187)
        {
          goto LABEL_260;
        }

        v188 = v187;
        if (os_log_type_enabled(v188, v197))
        {
          *buf = 0;
          _os_log_impl(&dword_273FB9000, v188, v197, "ATJ seciton is already deleted", buf, 2u);
        }

        v187 = v188;
      }

      else
      {
        v194 = WFLogForCategory(0);
        v195 = OSLogForWFLogLevel(4uLL);
        if (WFCurrentLogLevel() >= 4 && v194)
        {
          v196 = v194;
          if (os_log_type_enabled(v196, v195))
          {
            *buf = 136315394;
            v222 = "[WFAirportViewController setCurrentNetwork:previousNetwork:reason:]_block_invoke";
            v223 = 2048;
            *v224 = v191;
            _os_log_impl(&dword_273FB9000, v196, v195, "%s: removing section at %lu", buf, 0x16u);
          }
        }

        v187 = [*(a1 + 32) tableView];
        v188 = [MEMORY[0x277CCAA78] indexSetWithIndex:v191];
        [v187 deleteSections:v188 withRowAnimation:0];
      }
    }

LABEL_260:
    goto LABEL_261;
  }

LABEL_262:
  objc_storeStrong(&v179[*(v110 + 3432)], *(a1 + 40));
  v198 = WFLogForCategory(0);
  v199 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v198)
  {
    v200 = v198;
    if (os_log_type_enabled(v200, v199))
    {
      v201 = *(a1 + 40);
      v202 = [v201 hash];
      *buf = 136315650;
      v222 = "[WFAirportViewController setCurrentNetwork:previousNetwork:reason:]_block_invoke";
      v223 = 2112;
      *v224 = v201;
      *&v224[8] = 2048;
      v225 = v202;
      _os_log_impl(&dword_273FB9000, v200, v199, "%s: currentNetwork %@ (%lu)", buf, 0x20u);
    }
  }

  v203 = [*(a1 + 32) tableView];
  [v203 endUpdates];

  if (*(a1 + 56) == 1)
  {
    if (*(*(a1 + 32) + 1059))
    {
      v15 = [MEMORY[0x277CCAB98] defaultCenter];
      [v15 postNotificationName:@"networkListScrollToTopNotification" object:0];
    }

    else
    {
      v204 = WFLogForCategory(0);
      v205 = OSLogForWFLogLevel(4uLL);
      if (WFCurrentLogLevel() >= 4 && v204)
      {
        v206 = v204;
        if (os_log_type_enabled(v206, v205))
        {
          *buf = 136315138;
          v222 = "[WFAirportViewController setCurrentNetwork:previousNetwork:reason:]_block_invoke";
          _os_log_impl(&dword_273FB9000, v206, v205, "%s: scrolling to top", buf, 0xCu);
        }
      }

      v15 = [*(a1 + 32) tableView];
      v207 = [MEMORY[0x277CCAA70] indexPathForRow:0 inSection:0];
      [v15 scrollToRowAtIndexPath:v207 atScrollPosition:1 animated:1];
    }

    goto LABEL_52;
  }

LABEL_53:

  v42 = *MEMORY[0x277D85DE8];
}

- (void)setCurrentNetworkSubtitle:(id)subtitle
{
  v22 = *MEMORY[0x277D85DE8];
  subtitleCopy = subtitle;
  if ([(WFAirportViewController *)self isInEditingMode])
  {
    v5 = WFLogForCategory(0);
    v6 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v5 && os_log_type_enabled(v5, v6))
    {
      LOWORD(v20) = 0;
      _os_log_impl(&dword_273FB9000, v5, v6, "Not setting current network subtitle in edit mode", &v20, 2u);
    }

LABEL_26:

    goto LABEL_27;
  }

  currentNetworkSubtitle = self->_currentNetworkSubtitle;
  if (currentNetworkSubtitle != subtitleCopy)
  {
    if (subtitleCopy)
    {
      v8 = [(NSString *)subtitleCopy copy];
      currentNetworkSubtitle = self->_currentNetworkSubtitle;
    }

    else
    {
      v8 = 0;
    }

    self->_currentNetworkSubtitle = v8;

    v9 = WFLogForCategory(0);
    v10 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v9 && os_log_type_enabled(v9, v10))
    {
      v20 = 138412290;
      v21 = subtitleCopy;
      _os_log_impl(&dword_273FB9000, v9, v10, "Setting current network subtitle: %@", &v20, 0xCu);
    }

    currentNetworkRowConfig = [(WFAirportViewController *)self currentNetworkRowConfig];
    [currentNetworkRowConfig setSubtitle:subtitleCopy];

    _currentNetworkCell = [(WFAirportViewController *)self _currentNetworkCell];
    v5 = _currentNetworkCell;
    if (_currentNetworkCell)
    {
      if (self->_currentNetworkSubtitle)
      {
        [_currentNetworkCell setSubtitle:?];
      }

      else
      {
        currentNetwork = [(WFAirportViewController *)self currentNetwork];
        subtitle = [currentNetwork subtitle];
        [v5 setSubtitle:subtitle];
      }

      listDelegate = [(WFAirportViewController *)self listDelegate];
      v18 = [listDelegate airportSettingsViewControllerCurrentNetworkConnectionIsProblematic:self];

      if (v18)
      {
        [v5 setConnectionError:1];
      }

      else
      {
        [v5 setConnectionError:0];
        [v5 setBars:WFSignalBarsFromScaledRSSI(self->_currentNetworkScaledRSSI)];
      }
    }

    else
    {
      v13 = WFLogForCategory(0);
      v14 = OSLogForWFLogLevel(3uLL);
      if (WFCurrentLogLevel() >= 3 && v13 && os_log_type_enabled(v13, v14))
      {
        v20 = 136315138;
        v21 = "[WFAirportViewController setCurrentNetworkSubtitle:]";
        _os_log_impl(&dword_273FB9000, v13, v14, "%s: nil currentNetwork cell", &v20, 0xCu);
      }
    }

    goto LABEL_26;
  }

LABEL_27:

  v19 = *MEMORY[0x277D85DE8];
}

- (BOOL)_refreshATJShownStateIfChanged
{
  listDelegate = [(WFAirportViewController *)self listDelegate];
  v4 = [listDelegate airportSettingsViewControllerAskToJoinMode:self] != -1;
  askToJoinShown = self->_askToJoinShown;
  if (askToJoinShown != v4)
  {
    self->_askToJoinShown = [listDelegate airportSettingsViewControllerAskToJoinMode:self] != -1;
  }

  return askToJoinShown != v4;
}

- (void)setNetworks:(id)networks
{
  networksCopy = networks;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __39__WFAirportViewController_setNetworks___block_invoke;
  v7[3] = &unk_279EC5588;
  v7[4] = self;
  v8 = networksCopy;
  v6 = networksCopy;
  dispatch_sync(internalQueue, v7);
}

void __39__WFAirportViewController_setNetworks___block_invoke(uint64_t a1)
{
  v253 = *MEMORY[0x277D85DE8];
  if (([*(a1 + 32) powered] & 1) == 0)
  {
    v2 = WFLogForCategory(0);
    v3 = OSLogForWFLogLevel(2uLL);
    if (WFCurrentLogLevel() < 2 || !v2 || !os_log_type_enabled(v2, v3))
    {
      goto LABEL_228;
    }

    *buf = 0;
    v4 = "Tried to set networks while powered off...";
LABEL_11:
    _os_log_impl(&dword_273FB9000, v2, v3, v4, buf, 2u);
LABEL_228:

    v221 = *MEMORY[0x277D85DE8];
    return;
  }

  if ([*(a1 + 32) isInEditingMode])
  {
    v2 = WFLogForCategory(0);
    v3 = OSLogForWFLogLevel(1uLL);
    if (!WFCurrentLogLevel() || !v2 || !os_log_type_enabled(v2, v3))
    {
      goto LABEL_228;
    }

    *buf = 0;
    v4 = "In Editing mode, not updating table";
    goto LABEL_11;
  }

  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    v2 = *(a1 + 40);
    v5 = [v2 copy];
    [*(a1 + 32) setAllNetworks:v5];

    v6 = WFLogForCategory(0);
    v7 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v6)
    {
      v8 = v6;
      if (os_log_type_enabled(v8, v7))
      {
        v9 = [*(a1 + 32) currentNetwork];
        *buf = 136315394;
        v248 = "[WFAirportViewController setNetworks:]_block_invoke";
        v249 = 2112;
        v250 = v9;
        _os_log_impl(&dword_273FB9000, v8, v7, "%s: current network: %@", buf, 0x16u);
      }
    }

    v10 = [*(a1 + 32) currentNetwork];
    if (v10)
    {
      v11 = v10;
      v12 = [*(a1 + 32) currentNetwork];
      v13 = [v12 canBeDisplayedAsCurrent];

      if ((v13 & 1) == 0)
      {
        v14 = [MEMORY[0x277CBEB58] setWithSet:v2];
        v15 = [*(a1 + 32) currentNetwork];
        [v14 addObject:v15];

        v2 = v14;
      }
    }

    objc_storeStrong((*(a1 + 32) + 1224), v2);
    v16 = [v2 knownNetworks];
    if ([v16 count])
    {
      v17 = WFLogForCategory(0);
      v18 = OSLogForWFLogLevel(4uLL);
      if (WFCurrentLogLevel() >= 4 && v17)
      {
        v19 = v17;
        if (os_log_type_enabled(v19, v18))
        {
          v20 = [v16 count];
          *buf = 136315394;
          v248 = "[WFAirportViewController setNetworks:]_block_invoke";
          v249 = 2048;
          v250 = v20;
          _os_log_impl(&dword_273FB9000, v19, v18, "%s: known network count: %lu", buf, 0x16u);
        }
      }

      v21 = [v16 allObjects];
      v22 = WFScanRecordAlphaSortCompartor();
      v23 = [v21 sortedArrayUsingComparator:v22];

      if (([v23 isEqualToArray:*(*(a1 + 32) + 1168)] & 1) == 0)
      {
        v39 = *(a1 + 32);
        if (*(v39 + 1056) == 1)
        {
          objc_storeStrong((v39 + 1224), v2);
          *(*(a1 + 32) + 1057) = 1;
        }

        else
        {
          v40 = WFLogForCategory(0);
          v41 = OSLogForWFLogLevel(3uLL);
          if (WFCurrentLogLevel() >= 3 && v40 && os_log_type_enabled(v40, v41))
          {
            *buf = 136315394;
            v248 = "[WFAirportViewController setNetworks:]_block_invoke";
            v249 = 2112;
            v250 = v16;
            _os_log_impl(&dword_273FB9000, v40, v41, "%s: known networks %@", buf, 0x16u);
          }

          v42 = [*(a1 + 32) sections];
          v43 = [v42 containsObject:&unk_288322480];

          if ((v43 & 1) == 0)
          {
            v234 = v16;
            v44 = [*(a1 + 32) sections];
            v45 = [v44 mutableCopy];

            v46 = [v45 indexOfObject:&unk_2883224B0];
            if (v46 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v47 = 0;
            }

            else
            {
              v47 = v46 + 1;
            }

            [v45 insertObject:&unk_288322480 atIndex:v47];
            [*(a1 + 32) setSections:v45];
            v48 = WFLogForCategory(0);
            v49 = OSLogForWFLogLevel(3uLL);
            if (WFCurrentLogLevel() >= 3 && v48)
            {
              *type = v23;
              v50 = v48;
              if (os_log_type_enabled(v50, v49))
              {
                v51 = [*(a1 + 32) _nameOfSection:1];
                *buf = 136315650;
                v248 = "[WFAirportViewController setNetworks:]_block_invoke";
                v249 = 2112;
                v250 = v51;
                v251 = 2048;
                v252 = v47;
                _os_log_impl(&dword_273FB9000, v50, v49, "%s: inserting section %@ (at index %lu)", buf, 0x20u);
              }

              v23 = *type;
            }

            v16 = v234;
          }

          v52 = [*(*(a1 + 32) + 1168) copy];
          v53 = *(a1 + 32);
          v54 = [v53 sections];
          [v53 _updateCellsWithNewData:v23 oldData:v52 inSection:objc_msgSend(v54 insertSection:"indexOfObject:" datasourceSection:{&unk_288322480), v43 ^ 1u, 1}];
        }

        goto LABEL_227;
      }

      v24 = WFLogForCategory(0);
      v25 = OSLogForWFLogLevel(4uLL);
      if (WFCurrentLogLevel() >= 4 && v24)
      {
        v26 = v24;
        if (os_log_type_enabled(v26, v25))
        {
          v27 = [*(*(a1 + 32) + 1168) count];
          *buf = 136315394;
          v248 = "[WFAirportViewController setNetworks:]_block_invoke";
          v249 = 2048;
          v250 = v27;
          _os_log_impl(&dword_273FB9000, v26, v25, "%s: no change to known (count: %lu)", buf, 0x16u);
        }
      }
    }

    else
    {
      v31 = *(a1 + 32);
      v32 = *(v31 + 1168);
      if (!v32)
      {
        goto LABEL_69;
      }

      *(v31 + 1168) = 0;

      v33 = [*(a1 + 32) sections];
      v23 = [v33 mutableCopy];

      v34 = [v23 indexOfObject:&unk_288322480];
      if (v34 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v35 = WFLogForCategory(0);
        v36 = OSLogForWFLogLevel(3uLL);
        if (WFCurrentLogLevel() >= 3 && v35)
        {
          v37 = v35;
          if (os_log_type_enabled(v37, v36))
          {
            v38 = [*(a1 + 32) _nameOfSection:1];
            *buf = 136315394;
            v248 = "[WFAirportViewController setNetworks:]_block_invoke";
            v249 = 2112;
            v250 = v38;
            _os_log_impl(&dword_273FB9000, v37, v36, "%s: %@ section does not exist in sections", buf, 0x16u);
          }
        }

        [*(a1 + 32) _dumpSections];
      }

      else
      {
        v55 = v34;
        [v23 removeObject:&unk_288322480];
        [*(a1 + 32) setSections:v23];
        v56 = [*(a1 + 32) tableView];
        v57 = [MEMORY[0x277CCAA78] indexSetWithIndex:v55];
        [v56 deleteSections:v57 withRowAnimation:0];

        v58 = WFLogForCategory(0);
        v59 = OSLogForWFLogLevel(3uLL);
        if (WFCurrentLogLevel() >= 3 && v58)
        {
          v60 = v58;
          if (os_log_type_enabled(v60, v59))
          {
            v61 = [*(a1 + 32) _nameOfSection:1];
            *buf = 136315650;
            v248 = "[WFAirportViewController setNetworks:]_block_invoke";
            v249 = 2112;
            v250 = v61;
            v251 = 2048;
            v252 = v55;
            _os_log_impl(&dword_273FB9000, v60, v59, "%s: removing section %@ (index %lu)", buf, 0x20u);
          }
        }
      }
    }

LABEL_69:
    v23 = [v2 popularNetworks];
    if ([v23 count])
    {
      v62 = WFLogForCategory(0);
      v63 = OSLogForWFLogLevel(4uLL);
      if (WFCurrentLogLevel() >= 4 && v62)
      {
        v64 = v62;
        if (os_log_type_enabled(v64, v63))
        {
          v65 = [v23 count];
          *buf = 136315394;
          v248 = "[WFAirportViewController setNetworks:]_block_invoke";
          v249 = 2048;
          v250 = v65;
          _os_log_impl(&dword_273FB9000, v64, v63, "%s: popular network count: %lu", buf, 0x16u);
        }
      }

      v66 = [v23 allObjects];
      v67 = WFScanRecordAlphaSortCompartor();
      v68 = [v66 sortedArrayUsingComparator:v67];

      v69 = v68;
      if (([v68 isEqualToArray:*(*(a1 + 32) + 1160)] & 1) == 0)
      {
        v82 = *(a1 + 32);
        if (*(v82 + 1056) == 1)
        {
          objc_storeStrong((v82 + 1224), v2);
          *(*(a1 + 32) + 1057) = 1;
        }

        else
        {
          v83 = WFLogForCategory(0);
          v84 = OSLogForWFLogLevel(3uLL);
          if (WFCurrentLogLevel() >= 3 && v83 && os_log_type_enabled(v83, v84))
          {
            *buf = 136315394;
            v248 = "[WFAirportViewController setNetworks:]_block_invoke";
            v249 = 2112;
            v250 = v23;
            _os_log_impl(&dword_273FB9000, v83, v84, "%s: popular networks %@", buf, 0x16u);
          }

          v85 = [*(a1 + 32) sections];
          v86 = [v85 containsObject:&unk_288322468];

          if ((v86 & 1) == 0)
          {
            v235 = v16;
            v87 = [*(a1 + 32) sections];
            v88 = [v87 mutableCopy];

            v89 = [v88 indexOfObject:&unk_288322480];
            if (v89 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v90 = [v88 indexOfObject:&unk_288322498];
            }

            else
            {
              v90 = v89 + 1;
            }

            [v88 insertObject:&unk_288322468 atIndex:v90];
            [*(a1 + 32) setSections:v88];
            v207 = WFLogForCategory(0);
            v208 = OSLogForWFLogLevel(3uLL);
            if (WFCurrentLogLevel() >= 3 && v207)
            {
              v209 = v207;
              v210 = v208;
              v211 = v209;
              typed = v210;
              if (os_log_type_enabled(v209, v210))
              {
                v233 = [*(a1 + 32) _nameOfSection:2];
                *buf = 136315650;
                v248 = "[WFAirportViewController setNetworks:]_block_invoke";
                v249 = 2112;
                v250 = v233;
                v251 = 1024;
                LODWORD(v252) = v90;
                _os_log_impl(&dword_273FB9000, v211, typed, "%s: inserting section %@ (at index %d)", buf, 0x1Cu);
              }
            }

            v16 = v235;
          }

          v212 = [*(*(a1 + 32) + 1160) copy];
          v213 = *(a1 + 32);
          v214 = [v213 sections];
          [v213 _updateCellsWithNewData:v69 oldData:v212 inSection:objc_msgSend(v214 insertSection:"indexOfObject:" datasourceSection:{&unk_288322468), v86 ^ 1u, 2}];
        }

        goto LABEL_226;
      }

      v70 = WFLogForCategory(0);
      v71 = OSLogForWFLogLevel(4uLL);
      if (WFCurrentLogLevel() >= 4 && v70)
      {
        v72 = v70;
        if (os_log_type_enabled(v72, v71))
        {
          v73 = [*(*(a1 + 32) + 1160) count];
          *buf = 136315394;
          v248 = "[WFAirportViewController setNetworks:]_block_invoke";
          v249 = 2048;
          v250 = v73;
          _os_log_impl(&dword_273FB9000, v72, v71, "%s: no change to popular (count: %lu)", buf, 0x16u);
        }
      }
    }

    else
    {
      v74 = *(a1 + 32);
      v75 = *(v74 + 1160);
      if (!v75)
      {
        goto LABEL_106;
      }

      *(v74 + 1160) = 0;

      v76 = [*(a1 + 32) sections];
      v69 = [v76 mutableCopy];

      v77 = [v69 indexOfObject:&unk_288322468];
      if (v77 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v78 = WFLogForCategory(0);
        v79 = OSLogForWFLogLevel(3uLL);
        if (WFCurrentLogLevel() >= 3 && v78)
        {
          v80 = v78;
          if (os_log_type_enabled(v80, v79))
          {
            v81 = [*(a1 + 32) _nameOfSection:2];
            *buf = 136315394;
            v248 = "[WFAirportViewController setNetworks:]_block_invoke";
            v249 = 2112;
            v250 = v81;
            _os_log_impl(&dword_273FB9000, v80, v79, "%s: %@ section does not exist in sections", buf, 0x16u);
          }
        }

        [*(a1 + 32) _dumpSections];
      }

      else
      {
        v91 = v77;
        [v69 removeObject:&unk_288322468];
        [*(a1 + 32) setSections:v69];
        v92 = [*(a1 + 32) tableView];
        v93 = [MEMORY[0x277CCAA78] indexSetWithIndex:v91];
        [v92 deleteSections:v93 withRowAnimation:0];

        v94 = WFLogForCategory(0);
        v95 = OSLogForWFLogLevel(3uLL);
        if (WFCurrentLogLevel() >= 3 && v94)
        {
          v96 = v94;
          if (os_log_type_enabled(v96, v95))
          {
            [*(a1 + 32) _nameOfSection:2];
            v98 = v97 = v16;
            *buf = 136315650;
            v248 = "[WFAirportViewController setNetworks:]_block_invoke";
            v249 = 2112;
            v250 = v98;
            v251 = 1024;
            LODWORD(v252) = v91;
            _os_log_impl(&dword_273FB9000, v96, v95, "%s: removing section %@ (index %d)", buf, 0x1Cu);

            v16 = v97;
          }
        }
      }
    }

LABEL_106:
    v69 = [v2 infrastructureNetworks];
    v99 = [*(a1 + 32) sections];
    v100 = [v99 indexOfObject:&unk_288322498];

    if ([v69 count])
    {
      v101 = WFLogForCategory(0);
      v102 = OSLogForWFLogLevel(4uLL);
      if (WFCurrentLogLevel() >= 4 && v101)
      {
        v103 = v101;
        if (os_log_type_enabled(v103, v102))
        {
          v104 = [v69 count];
          *buf = 136315394;
          v248 = "[WFAirportViewController setNetworks:]_block_invoke";
          v249 = 2048;
          v250 = v104;
          _os_log_impl(&dword_273FB9000, v103, v102, "%s: infraNetworks network count: %lu", buf, 0x16u);
        }
      }

      v105 = [v69 allObjects];
      v106 = WFScanRecordAlphaSortCompartor();
      v107 = [v105 sortedArrayUsingComparator:v106];

      if (([v107 isEqualToArray:*(*(a1 + 32) + 1152)] & 1) == 0)
      {
        v144 = *(a1 + 32);
        if (*(v144 + 1056) == 1)
        {
          objc_storeStrong((v144 + 1224), v2);
          *(*(a1 + 32) + 1057) = 1;
        }

        else
        {
          v156 = [*(v144 + 1152) copy];
          [*(a1 + 32) _updateCellsWithNewData:v107 oldData:v156 inSection:v100 insertSection:0 datasourceSection:3];
        }

        goto LABEL_225;
      }

      v108 = WFLogForCategory(0);
      v109 = OSLogForWFLogLevel(3uLL);
      if (WFCurrentLogLevel() >= 3 && v108 && os_log_type_enabled(v108, v109))
      {
        *buf = 0;
        _os_log_impl(&dword_273FB9000, v108, v109, "No change to infra section", buf, 2u);
      }
    }

    else
    {
      if (!*(*(a1 + 32) + 1152))
      {
LABEL_131:
        v130 = *(a1 + 32);
        if (*(v130 + 1048) == 1)
        {
          v131 = [*(v130 + 1152) count];
          if (v100 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v132 = [MEMORY[0x277CCAA70] indexPathForRow:v131 inSection:v100];
            v133 = [*(a1 + 32) tableView];
            v246 = v132;
            v134 = [MEMORY[0x277CBEA60] arrayWithObjects:&v246 count:1];
            [v133 reloadRowsAtIndexPaths:v134 withRowAnimation:5];
          }
        }

        v107 = [v2 adhocNetworks];
        if ([v107 count])
        {
          v135 = WFLogForCategory(0);
          v136 = OSLogForWFLogLevel(4uLL);
          if (WFCurrentLogLevel() >= 4 && v135)
          {
            v137 = v135;
            if (os_log_type_enabled(v137, v136))
            {
              v138 = [v107 count];
              *buf = 136315394;
              v248 = "[WFAirportViewController setNetworks:]_block_invoke";
              v249 = 2048;
              v250 = v138;
              _os_log_impl(&dword_273FB9000, v137, v136, "%s: adhoc network count: %lu", buf, 0x16u);
            }
          }

          v139 = [v107 allObjects];
          v140 = WFScanRecordAlphaSortCompartor();
          v141 = [v139 sortedArrayUsingComparator:v140];

          if (([v141 isEqualToArray:*(*(a1 + 32) + 1176)] & 1) == 0)
          {
            v155 = *(a1 + 32);
            if (*(v155 + 1056) == 1)
            {
              objc_storeStrong((v155 + 1224), v2);
              *(*(a1 + 32) + 1057) = 1;
            }

            else
            {
              v237 = v16;
              v157 = [*(v155 + 1176) copy];
              v158 = [*(a1 + 32) sections];
              v159 = [v158 containsObject:&unk_288322438];

              if ((v159 & 1) == 0)
              {
                v229 = v69;
                *typea = v23;
                v160 = [*(a1 + 32) sections];
                v161 = [v160 mutableCopy];

                v162 = [v161 indexOfObject:&unk_288322498];
                v163 = v162;
                [v161 insertObject:&unk_288322438 atIndex:v162 + 1];
                [*(a1 + 32) setSections:v161];
                v164 = WFLogForCategory(0);
                v165 = OSLogForWFLogLevel(3uLL);
                if (WFCurrentLogLevel() >= 3 && v164)
                {
                  log = v164;
                  if (os_log_type_enabled(log, v165))
                  {
                    v166 = [*(a1 + 32) _nameOfSection:4];
                    v167 = v163;
                    v168 = v166;
                    *buf = 136315650;
                    v248 = "[WFAirportViewController setNetworks:]_block_invoke";
                    v249 = 2112;
                    v250 = v166;
                    v251 = 1024;
                    LODWORD(v252) = v167 + 1;
                    _os_log_impl(&dword_273FB9000, log, v165, "%s: inserting section %@ (at index %d)", buf, 0x1Cu);
                  }
                }

                v23 = *typea;
                v69 = v229;
              }

              v169 = [*(a1 + 32) sections];
              v170 = [v169 indexOfObject:&unk_288322438];

              [*(a1 + 32) _updateCellsWithNewData:v141 oldData:v157 inSection:v170 insertSection:v159 ^ 1u datasourceSection:4];
              v16 = v237;
            }

            goto LABEL_224;
          }

          v142 = WFLogForCategory(0);
          v143 = OSLogForWFLogLevel(4uLL);
          if (WFCurrentLogLevel() >= 4 && v142 && os_log_type_enabled(v142, v143))
          {
            *buf = 0;
            _os_log_impl(&dword_273FB9000, v142, v143, "No change to adhoc section", buf, 2u);
          }
        }

        else
        {
          v145 = *(a1 + 32);
          v146 = *(v145 + 1176);
          if (!v146)
          {
            goto LABEL_174;
          }

          v147 = v16;
          *(v145 + 1176) = 0;

          v148 = [*(a1 + 32) sections];
          v141 = [v148 mutableCopy];

          v149 = [v141 indexOfObject:&unk_288322438];
          if (v149 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v150 = WFLogForCategory(0);
            v151 = OSLogForWFLogLevel(3uLL);
            if (WFCurrentLogLevel() >= 3 && v150)
            {
              v152 = v150;
              if (os_log_type_enabled(v152, v151))
              {
                [*(a1 + 32) _nameOfSection:4];
                v228 = v69;
                v154 = v153 = v23;
                *buf = 136315394;
                v248 = "[WFAirportViewController setNetworks:]_block_invoke";
                v249 = 2112;
                v250 = v154;
                _os_log_impl(&dword_273FB9000, v152, v151, "%s: %@ section does not exist in sections", buf, 0x16u);

                v23 = v153;
                v69 = v228;
              }
            }

            [*(a1 + 32) _dumpSections];
            v16 = v147;
          }

          else
          {
            v171 = v149;
            v230 = v69;
            v172 = v23;
            [v141 removeObject:&unk_288322438];
            [*(a1 + 32) setSections:v141];
            v173 = [*(a1 + 32) tableView];
            v174 = [MEMORY[0x277CCAA78] indexSetWithIndex:v171];
            [v173 deleteSections:v174 withRowAnimation:0];

            v175 = WFLogForCategory(0);
            v176 = OSLogForWFLogLevel(3uLL);
            if (WFCurrentLogLevel() >= 3 && v175)
            {
              v177 = v175;
              if (os_log_type_enabled(v177, v176))
              {
                v238 = [*(a1 + 32) _nameOfSection:4];
                *buf = 136315650;
                v248 = "[WFAirportViewController setNetworks:]_block_invoke";
                v249 = 2112;
                v250 = v238;
                v251 = 1024;
                LODWORD(v252) = v171;
                _os_log_impl(&dword_273FB9000, v177, v176, "%s: removing section %@ (index %d)", buf, 0x1Cu);
              }
            }

            v16 = v147;
            v23 = v172;
            v69 = v230;
          }
        }

LABEL_174:
        v141 = [v2 unconfiguredNetworks];
        if ([v141 count])
        {
          v178 = v16;
          v179 = WFLogForCategory(0);
          v180 = OSLogForWFLogLevel(4uLL);
          if (WFCurrentLogLevel() >= 4 && v179)
          {
            v181 = v179;
            if (os_log_type_enabled(v181, v180))
            {
              v182 = [v141 count];
              *buf = 136315394;
              v248 = "[WFAirportViewController setNetworks:]_block_invoke";
              v249 = 2048;
              v250 = v182;
              _os_log_impl(&dword_273FB9000, v181, v180, "%s: unconfigured network count: %lu", buf, 0x16u);
            }
          }

          v183 = [v141 allObjects];
          v184 = WFScanRecordAlphaSortCompartor();
          v185 = [v183 sortedArrayUsingComparator:v184];

          if (([v185 isEqualToArray:*(*(a1 + 32) + 1184)] & 1) == 0)
          {
            v196 = *(a1 + 32);
            if (*(v196 + 1056) == 1)
            {
              objc_storeStrong((v196 + 1224), v2);
              *(*(a1 + 32) + 1057) = 1;
            }

            else
            {
              v239 = [*(v196 + 1184) copy];
              v197 = [*(a1 + 32) sections];
              v198 = [v197 containsObject:&unk_288322450];

              loga = v198;
              if ((v198 & 1) == 0)
              {
                v232 = v69;
                *typec = v23;
                v199 = [*(a1 + 32) sections];
                v200 = [v199 mutableCopy];

                v201 = [v200 indexOfObject:&unk_288322438];
                if (v201 == 0x7FFFFFFFFFFFFFFFLL)
                {
                  v201 = [v200 indexOfObject:&unk_288322498];
                }

                [v200 insertObject:&unk_288322450 atIndex:v201 + 1];
                [*(a1 + 32) setSections:v200];
                v202 = WFLogForCategory(0);
                v203 = OSLogForWFLogLevel(3uLL);
                if (WFCurrentLogLevel() >= 3 && v202)
                {
                  v223 = v202;
                  v204 = v202;
                  if (os_log_type_enabled(v204, v203))
                  {
                    v222 = [*(a1 + 32) _nameOfSection:5];
                    *buf = 136315650;
                    v248 = "[WFAirportViewController setNetworks:]_block_invoke";
                    v249 = 2112;
                    v250 = v222;
                    v251 = 1024;
                    LODWORD(v252) = v201;
                    _os_log_impl(&dword_273FB9000, v204, v203, "%s: inserting section %@ (at index %d)", buf, 0x1Cu);
                  }

                  v202 = v223;
                }

                v23 = *typec;
                v69 = v232;
              }

              v205 = [*(a1 + 32) sections];
              v206 = [v205 indexOfObject:&unk_288322450];

              [*(a1 + 32) _updateCellsWithNewData:v185 oldData:v239 inSection:v206 insertSection:loga ^ 1u datasourceSection:5];
            }

            v16 = v178;
            goto LABEL_224;
          }

          v186 = WFLogForCategory(0);
          v187 = OSLogForWFLogLevel(4uLL);
          if (WFCurrentLogLevel() >= 4 && v186 && os_log_type_enabled(v186, v187))
          {
            *buf = 0;
            _os_log_impl(&dword_273FB9000, v186, v187, "No change to unconfigured section", buf, 2u);
          }
        }

        else
        {
          v188 = *(a1 + 32);
          v189 = *(v188 + 1184);
          if (!v189)
          {
LABEL_223:
            [*(a1 + 32) _processPendingCurrentNetworkUpdate];
LABEL_224:

LABEL_225:
LABEL_226:

LABEL_227:
            goto LABEL_228;
          }

          v231 = v69;
          *typeb = v23;
          v178 = v16;
          *(v188 + 1184) = 0;

          v190 = [*(a1 + 32) sections];
          v185 = [v190 mutableCopy];

          v191 = [v185 indexOfObject:&unk_288322450];
          if (v191 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v192 = WFLogForCategory(0);
            v193 = OSLogForWFLogLevel(3uLL);
            if (WFCurrentLogLevel() >= 3 && v192)
            {
              v194 = v192;
              if (os_log_type_enabled(v194, v193))
              {
                v195 = [*(a1 + 32) _nameOfSection:5];
                *buf = 136315394;
                v248 = "[WFAirportViewController setNetworks:]_block_invoke";
                v249 = 2112;
                v250 = v195;
                _os_log_impl(&dword_273FB9000, v194, v193, "%s: %@ section does not exist in sections", buf, 0x16u);
              }
            }

            [*(a1 + 32) _dumpSections];
          }

          else
          {
            v215 = v191;
            [v185 removeObject:&unk_288322450];
            [*(a1 + 32) setSections:v185];
            v216 = [*(a1 + 32) tableView];
            v217 = [MEMORY[0x277CCAA78] indexSetWithIndex:v215];
            [v216 deleteSections:v217 withRowAnimation:0];

            v218 = WFLogForCategory(0);
            v219 = OSLogForWFLogLevel(3uLL);
            if (WFCurrentLogLevel() >= 3 && v218)
            {
              v220 = v218;
              if (os_log_type_enabled(v220, v219))
              {
                v240 = [*(a1 + 32) _nameOfSection:5];
                *buf = 136315650;
                v248 = "[WFAirportViewController setNetworks:]_block_invoke";
                v249 = 2112;
                v250 = v240;
                v251 = 1024;
                LODWORD(v252) = v215;
                _os_log_impl(&dword_273FB9000, v220, v219, "%s: removing section %@ (index %d)", buf, 0x1Cu);
              }
            }
          }

          v23 = *typeb;
          v69 = v231;
        }

        v16 = v178;
        goto LABEL_223;
      }

      v236 = v16;
      v107 = [MEMORY[0x277CBEB18] array];
      for (i = 0; i < [*(*(a1 + 32) + 1152) count]; ++i)
      {
        v111 = [MEMORY[0x277CCAA70] indexPathForRow:i inSection:v100];
        [v107 addObject:v111];
      }

      v112 = *(a1 + 32);
      if ((v112[1048] & 1) == 0)
      {
        v113 = [v112 tableView];
        v226 = [v113 numberOfRowsInSection:v100];
        v114 = [v107 count];
        v115 = v107;
        v116 = v2;
        v117 = v69;
        v118 = v23;
        v119 = v114;

        v120 = v226 <= v119;
        v23 = v118;
        v69 = v117;
        v2 = v116;
        v107 = v115;
        if (!v120)
        {
          v121 = [MEMORY[0x277CCAA70] indexPathForRow:i inSection:v100];
          [v115 addObject:v121];
        }
      }

      v122 = WFLogForCategory(0);
      v123 = OSLogForWFLogLevel(4uLL);
      if (WFCurrentLogLevel() >= 4 && v122)
      {
        v124 = v122;
        if (os_log_type_enabled(v124, v123))
        {
          [*(a1 + 32) _nameOfSection:3];
          v227 = v69;
          v126 = v125 = v23;
          v127 = [v107 count];
          *buf = 138412546;
          v248 = v126;
          v249 = 2048;
          v250 = v127;
          _os_log_impl(&dword_273FB9000, v124, v123, "Section %@- Deleting %lu rows", buf, 0x16u);

          v23 = v125;
          v69 = v227;
        }
      }

      v128 = *(a1 + 32);
      v129 = *(v128 + 1152);
      *(v128 + 1152) = 0;

      v108 = [*(a1 + 32) tableView];
      [v108 deleteRowsAtIndexPaths:v107 withRowAnimation:0];
      v16 = v236;
    }

    goto LABEL_131;
  }

  v28 = *(a1 + 32);
  v29 = *(a1 + 40);
  v30 = *MEMORY[0x277D85DE8];

  [v28 performSelectorOnMainThread:sel_setNetworks_ withObject:v29 waitUntilDone:0];
}

- (void)_updateCellsWithNewData:(id)data oldData:(id)oldData inSection:(unint64_t)section insertSection:(BOOL)insertSection datasourceSection:(unint64_t)datasourceSection
{
  insertSectionCopy = insertSection;
  v101 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  oldDataCopy = oldData;
  if (insertSectionCopy)
  {
    v11 = WFLogForCategory(0);
    v12 = OSLogForWFLogLevel(4uLL);
    if (WFCurrentLogLevel() >= 4 && v11)
    {
      v13 = v11;
      if (os_log_type_enabled(v13, v12))
      {
        v14 = [(WFAirportViewController *)self _sectionNameAtIndex:section];
        *buf = 136315650;
        *&buf[4] = "[WFAirportViewController _updateCellsWithNewData:oldData:inSection:insertSection:datasourceSection:]";
        *&buf[12] = 2112;
        *&buf[14] = v14;
        *&buf[22] = 2048;
        sectionCopy = section;
        _os_log_impl(&dword_273FB9000, v13, v12, "%s: inserting section %@ at index %lu", buf, 0x20u);
      }
    }

    tableView = [(WFAirportViewController *)self tableView];
    v16 = [MEMORY[0x277CCAA78] indexSetWithIndex:section];
    [tableView insertSections:v16 withRowAnimation:0];
  }

  v58 = [oldDataCopy mutableCopy];
  obj = [dataCopy mutableCopy];
  if ([oldDataCopy count] >= 2 && objc_msgSend(oldDataCopy, "count") >= 2)
  {
    v17 = 0;
    v18 = 1;
    do
    {
      v19 = [oldDataCopy objectAtIndexedSubscript:v18];
      ssid = [v19 ssid];
      v21 = v18 - 1;
      v22 = [oldDataCopy objectAtIndexedSubscript:v18 - 1];
      ssid2 = [v22 ssid];
      v24 = [ssid isEqualToString:ssid2];

      if (v24)
      {
        [v58 removeObjectAtIndex:v18 - v17++];
      }

      ++v18;
    }

    while ([oldDataCopy count] > (v21 + 2));
  }

  if ([dataCopy count] >= 2 && objc_msgSend(dataCopy, "count") >= 2)
  {
    v25 = 0;
    v26 = 1;
    do
    {
      v27 = [dataCopy objectAtIndexedSubscript:v26];
      ssid3 = [v27 ssid];
      v29 = v26 - 1;
      v30 = [dataCopy objectAtIndexedSubscript:v26 - 1];
      ssid4 = [v30 ssid];
      v32 = [ssid3 isEqualToString:ssid4];

      if (v32)
      {
        [obj removeObjectAtIndex:v26 - v25++];
      }

      ++v26;
    }

    while ([dataCopy count] > (v29 + 2));
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  sectionCopy = __Block_byref_object_copy__0;
  v99 = __Block_byref_object_dispose__0;
  v100 = &stru_288308678;
  v88[0] = MEMORY[0x277D85DD0];
  v88[1] = 3221225472;
  v88[2] = __101__WFAirportViewController__updateCellsWithNewData_oldData_inSection_insertSection_datasourceSection___block_invoke;
  v88[3] = &unk_279EC55B0;
  v88[4] = buf;
  [v58 enumerateObjectsUsingBlock:v88];
  v82 = 0;
  v83 = &v82;
  v84 = 0x3032000000;
  v85 = __Block_byref_object_copy__0;
  v86 = __Block_byref_object_dispose__0;
  v87 = &stru_288308678;
  v81[0] = MEMORY[0x277D85DD0];
  v81[1] = 3221225472;
  v81[2] = __101__WFAirportViewController__updateCellsWithNewData_oldData_inSection_insertSection_datasourceSection___block_invoke_2;
  v81[3] = &unk_279EC55B0;
  v81[4] = &v82;
  [obj enumerateObjectsUsingBlock:v81];
  v33 = WFLogForCategory(0);
  v34 = OSLogForWFLogLevel(4uLL);
  if (WFCurrentLogLevel() >= 4 && v33 && os_log_type_enabled(v33, v34))
  {
    v35 = *(*&buf[8] + 40);
    v36 = v83[5];
    *v89 = 138412546;
    v90 = v35;
    v91 = 2112;
    v92 = v36;
    _os_log_impl(&dword_273FB9000, v33, v34, "Old filtered networks: %@\n New filtered networks: %@", v89, 0x16u);
  }

  v37 = WFLogForCategory(0);
  v38 = OSLogForWFLogLevel(4uLL);
  if (WFCurrentLogLevel() >= 4 && v37)
  {
    v39 = v37;
    if (os_log_type_enabled(v39, v38))
    {
      v40 = [oldDataCopy count];
      v41 = [v58 count];
      v42 = [dataCopy count];
      v43 = [obj count];
      *v89 = 134218752;
      v90 = v40;
      v91 = 2048;
      v92 = v41;
      v93 = 2048;
      v94 = v42;
      v95 = 2048;
      v96 = v43;
      _os_log_impl(&dword_273FB9000, v39, v38, "Old Network count: %lu, old filtered network count: %lu, new network count: %lu, new filtered network count: %lu", v89, 0x2Au);
    }
  }

  v44 = objc_opt_new();
  v45 = objc_opt_new();
  v46 = objc_opt_new();
  v47 = objc_opt_new();
  v79[0] = MEMORY[0x277D85DD0];
  v79[1] = 3221225472;
  v79[2] = __101__WFAirportViewController__updateCellsWithNewData_oldData_inSection_insertSection_datasourceSection___block_invoke_128;
  v79[3] = &unk_279EC55D8;
  v48 = v47;
  v80 = v48;
  [v58 enumerateObjectsUsingBlock:v79];
  v74[0] = MEMORY[0x277D85DD0];
  v74[1] = 3221225472;
  v74[2] = __101__WFAirportViewController__updateCellsWithNewData_oldData_inSection_insertSection_datasourceSection___block_invoke_2_133;
  v74[3] = &unk_279EC5600;
  v49 = v48;
  v75 = v49;
  sectionCopy2 = section;
  v50 = v46;
  v76 = v50;
  v51 = v45;
  v77 = v51;
  [obj enumerateObjectsUsingBlock:v74];
  if ([v49 count])
  {
    v70[0] = MEMORY[0x277D85DD0];
    v70[1] = 3221225472;
    v70[2] = __101__WFAirportViewController__updateCellsWithNewData_oldData_inSection_insertSection_datasourceSection___block_invoke_3;
    v70[3] = &unk_279EC5628;
    v71 = v49;
    v72 = v44;
    sectionCopy3 = section;
    [v71 enumerateKeysAndObjectsUsingBlock:v70];
  }

  if ([v44 count] || objc_msgSend(v51, "count") || objc_msgSend(v50, "count"))
  {
    tableView2 = [(WFAirportViewController *)self tableView];
    v61[0] = MEMORY[0x277D85DD0];
    v61[1] = 3221225472;
    v61[2] = __101__WFAirportViewController__updateCellsWithNewData_oldData_inSection_insertSection_datasourceSection___block_invoke_4;
    v61[3] = &unk_279EC5650;
    v61[4] = self;
    v68 = v55;
    v62 = v51;
    v63 = v50;
    v64 = v44;
    v65 = obj;
    sectionCopy4 = section;
    v66 = oldDataCopy;
    v67 = dataCopy;
    v60[0] = MEMORY[0x277D85DD0];
    v60[1] = 3221225472;
    v60[2] = __101__WFAirportViewController__updateCellsWithNewData_oldData_inSection_insertSection_datasourceSection___block_invoke_138;
    v60[3] = &unk_279EC5678;
    v60[4] = self;
    v60[5] = v55;
    [tableView2 performBatchUpdates:v61 completion:v60];
  }

  else if (v55 <= 2)
  {
    if (v55 == 1)
    {
      objc_storeStrong(&self->_knownNetworks, obj);
    }

    else if (v55 == 2)
    {
      objc_storeStrong(&self->_popularNetworks, obj);
    }
  }

  else
  {
    switch(v55)
    {
      case 5:
        objc_storeStrong(&self->_unconfiguredNetworks, obj);
        break;
      case 4:
        objc_storeStrong(&self->_adhocNetworks, obj);
        break;
      case 3:
        objc_storeStrong(&self->_infraNetworks, obj);
        break;
    }
  }

  _Block_object_dispose(&v82, 8);
  _Block_object_dispose(buf, 8);

  v53 = *MEMORY[0x277D85DE8];
}

void __101__WFAirportViewController__updateCellsWithNewData_oldData_inSection_insertSection_datasourceSection___block_invoke(uint64_t a1, void *a2)
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

void __101__WFAirportViewController__updateCellsWithNewData_oldData_inSection_insertSection_datasourceSection___block_invoke_2(uint64_t a1, void *a2)
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

void __101__WFAirportViewController__updateCellsWithNewData_oldData_inSection_insertSection_datasourceSection___block_invoke_128(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", objc_msgSend(a2, "uniqueIdentifier")];
  v5 = *(a1 + 32);
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  [v5 setValue:v6 forKey:v7];
}

void __101__WFAirportViewController__updateCellsWithNewData_oldData_inSection_insertSection_datasourceSection___block_invoke_2_133(uint64_t a1, void *a2, uint64_t a3)
{
  v18[2] = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", objc_msgSend(a2, "uniqueIdentifier")];
  v6 = [*(a1 + 32) objectForKeyedSubscript:v5];

  if (v6)
  {
    v7 = [*(a1 + 32) objectForKeyedSubscript:v5];
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
    v9 = [v7 isEqual:v8];

    if ((v9 & 1) == 0)
    {
      v10 = [*(a1 + 32) objectForKeyedSubscript:v5];
      v11 = [MEMORY[0x277CCAA70] indexPathForRow:objc_msgSend(v10 inSection:{"integerValue"), *(a1 + 56)}];
      v12 = [MEMORY[0x277CCAA70] indexPathForRow:a3 inSection:*(a1 + 56)];
      v13 = *(a1 + 40);
      v18[0] = v11;
      v18[1] = v12;
      v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
      [v13 addObject:v14];
    }

    [*(a1 + 32) removeObjectForKey:v5];
  }

  else
  {
    v15 = *(a1 + 48);
    v16 = [MEMORY[0x277CCAA70] indexPathForRow:a3 inSection:*(a1 + 56)];
    [v15 addObject:v16];
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __101__WFAirportViewController__updateCellsWithNewData_oldData_inSection_insertSection_datasourceSection___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v5 = [*(a1 + 32) objectForKeyedSubscript:a2];
  v3 = *(a1 + 40);
  v4 = [MEMORY[0x277CCAA70] indexPathForRow:objc_msgSend(v5 inSection:{"integerValue"), *(a1 + 48)}];
  [v3 addObject:v4];
}

void __101__WFAirportViewController__updateCellsWithNewData_oldData_inSection_insertSection_datasourceSection___block_invoke_4(uint64_t a1)
{
  v99 = *MEMORY[0x277D85DE8];
  v2 = WFLogForCategory(0);
  v3 = OSLogForWFLogLevel(4uLL);
  if (WFCurrentLogLevel() >= 4 && v2)
  {
    v4 = v2;
    if (os_log_type_enabled(v4, v3))
    {
      v5 = [*(a1 + 32) _nameOfSection:*(a1 + 88)];
      v6 = *(a1 + 88);
      v7 = [*(a1 + 40) count];
      v8 = [*(a1 + 48) count];
      v9 = [*(a1 + 56) count];
      *buf = 136316418;
      *&buf[4] = "[WFAirportViewController _updateCellsWithNewData:oldData:inSection:insertSection:datasourceSection:]_block_invoke_4";
      *&buf[12] = 2112;
      *&buf[14] = v5;
      *&buf[22] = 2048;
      v95 = v6;
      *v96 = 2048;
      *&v96[2] = v7;
      *&v96[10] = 2048;
      *&v96[12] = v8;
      v97 = 2048;
      v98 = v9;
      _os_log_impl(&dword_273FB9000, v4, v3, "%s: tableView updating started for section %@ (%lu) - insert %lu move %lu delete %lu", buf, 0x3Eu);
    }
  }

  *(*(a1 + 32) + 1056) = 1;
  v10 = *(a1 + 88);
  if (v10 > 2)
  {
    if (v10 == 3)
    {
      objc_storeStrong((*(a1 + 32) + 1152), *(a1 + 64));
      v14 = [*(a1 + 32) chooseNetworkHeader];
      v15 = [v14 title];
      v16 = [*(*(a1 + 32) + 1240) isEqualToString:v15];
      if ((v16 & 1) == 0)
      {
        v23 = [v15 copy];
        v24 = *(a1 + 32);
        v25 = *(v24 + 1240);
        *(v24 + 1240) = v23;

        v26 = [*(a1 + 32) tableView];
        v27 = [MEMORY[0x277CCAA78] indexSetWithIndex:*(a1 + 96)];
        [v26 _reloadSectionHeaderFooters:v27 withRowAnimation:100];
      }

      goto LABEL_23;
    }

    if (v10 != 4)
    {
      if (v10 == 5)
      {
        objc_storeStrong((*(a1 + 32) + 1184), *(a1 + 64));
        v11 = *(a1 + 32);
        v12 = [v11 tableView];
        v13 = [*(a1 + 32) sections];
        v14 = [v11 tableView:v12 viewForHeaderInSection:{objc_msgSend(v13, "indexOfObject:", &unk_288322450)}];

        v15 = [v14 title];
        v16 = [*(*(a1 + 32) + 1248) isEqualToString:v15];
        if ((v16 & 1) == 0)
        {
          v17 = [v15 copy];
          v18 = *(a1 + 32);
          v19 = *(v18 + 1248);
          *(v18 + 1248) = v17;
        }

LABEL_23:

        v29 = v16 ^ 1;
        goto LABEL_24;
      }

      goto LABEL_52;
    }

    v20 = *(a1 + 64);
    v21 = *(a1 + 32);
    v22 = 1176;
LABEL_20:
    v28 = v20;
    v29 = 0;
    v14 = *(v21 + v22);
    *(v21 + v22) = v28;
    goto LABEL_24;
  }

  if (v10 == 1)
  {
    objc_storeStrong((*(a1 + 32) + 1168), *(a1 + 64));
    v30 = *(a1 + 32);
    v31 = [v30 tableView];
    v32 = [*(a1 + 32) sections];
    v14 = [v30 tableView:v31 viewForHeaderInSection:{objc_msgSend(v32, "indexOfObject:", &unk_288322480)}];

    v15 = [v14 title];
    v16 = [*(*(a1 + 32) + 1232) isEqualToString:v15];
    if ((v16 & 1) == 0)
    {
      v33 = [v15 copy];
      v34 = *(a1 + 32);
      v35 = *(v34 + 1232);
      *(v34 + 1232) = v33;
    }

    goto LABEL_23;
  }

  if (v10 == 2)
  {
    v20 = *(a1 + 64);
    v21 = *(a1 + 32);
    v22 = 1160;
    goto LABEL_20;
  }

LABEL_52:
  v14 = WFLogForCategory(0);
  v73 = OSLogForWFLogLevel(1uLL);
  v29 = 0;
  if (WFCurrentLogLevel() && v14)
  {
    if (os_log_type_enabled(v14, v73))
    {
      *buf = 136315138;
      *&buf[4] = "[WFAirportViewController _updateCellsWithNewData:oldData:inSection:insertSection:datasourceSection:]_block_invoke";
      _os_log_impl(&dword_273FB9000, v14, v73, "%s: unexpected section update", buf, 0xCu);
    }

    v29 = 0;
  }

LABEL_24:

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v95 = __Block_byref_object_copy__0;
  *v96 = __Block_byref_object_dispose__0;
  *&v96[8] = &stru_288308678;
  v36 = *(a1 + 72);
  v85[0] = MEMORY[0x277D85DD0];
  v85[1] = 3221225472;
  v85[2] = __101__WFAirportViewController__updateCellsWithNewData_oldData_inSection_insertSection_datasourceSection___block_invoke_136;
  v85[3] = &unk_279EC55B0;
  v85[4] = buf;
  [v36 enumerateObjectsUsingBlock:v85];
  v79 = 0;
  v80 = &v79;
  v81 = 0x3032000000;
  v82 = __Block_byref_object_copy__0;
  v83 = __Block_byref_object_dispose__0;
  v84 = &stru_288308678;
  v37 = *(a1 + 80);
  v78[0] = MEMORY[0x277D85DD0];
  v78[1] = 3221225472;
  v78[2] = __101__WFAirportViewController__updateCellsWithNewData_oldData_inSection_insertSection_datasourceSection___block_invoke_2_137;
  v78[3] = &unk_279EC55B0;
  v78[4] = &v79;
  [v37 enumerateObjectsUsingBlock:v78];
  v38 = WFLogForCategory(0);
  v39 = OSLogForWFLogLevel(4uLL);
  if (WFCurrentLogLevel() >= 4 && v38 && os_log_type_enabled(v38, v39))
  {
    v40 = *(*&buf[8] + 40);
    v41 = v80[5];
    *v87 = 138412546;
    v88 = v40;
    v89 = 2112;
    v90 = v41;
    _os_log_impl(&dword_273FB9000, v38, v39, "Old networks: %@\n New networks: %@", v87, 0x16u);
  }

  v42 = [*(a1 + 32) tableView];
  [v42 deleteRowsAtIndexPaths:*(a1 + 56) withRowAnimation:0];

  v43 = [*(a1 + 32) tableView];
  [v43 insertRowsAtIndexPaths:*(a1 + 40) withRowAnimation:0];

  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v44 = *(a1 + 48);
  v45 = [v44 countByEnumeratingWithState:&v74 objects:v93 count:16];
  if (v45)
  {
    v46 = *v75;
    do
    {
      for (i = 0; i != v45; ++i)
      {
        if (*v75 != v46)
        {
          objc_enumerationMutation(v44);
        }

        v48 = *(*(&v74 + 1) + 8 * i);
        v49 = [v48 objectAtIndexedSubscript:{0, v74}];
        v50 = [v48 objectAtIndexedSubscript:1];
        v51 = [*(a1 + 32) tableView];
        [v51 moveRowAtIndexPath:v49 toIndexPath:v50];
      }

      v45 = [v44 countByEnumeratingWithState:&v74 objects:v93 count:16];
    }

    while (v45);
  }

  v52 = *(a1 + 32);
  if ((v52[1048] & 1) == 0)
  {
    v53 = *(a1 + 96);
    v54 = [v52 sections];
    if (v53 == [v54 indexOfObject:&unk_288322498])
    {
      v55 = [*(a1 + 32) tableView];
      v56 = [v55 numberOfRowsInSection:*(a1 + 96)];
      LODWORD(v56) = v56 > [*(*(a1 + 32) + 1152) count];

      if (!v56)
      {
        goto LABEL_44;
      }

      v57 = [*(a1 + 32) tableView];
      v58 = [v57 numberOfRowsInSection:*(a1 + 96)];

      v59 = WFLogForCategory(0);
      v60 = OSLogForWFLogLevel(3uLL);
      v61 = v58 - 1;
      if (WFCurrentLogLevel() >= 3 && v59 && os_log_type_enabled(v59, v60))
      {
        v62 = *(a1 + 96);
        *v87 = 136315650;
        v88 = "[WFAirportViewController _updateCellsWithNewData:oldData:inSection:insertSection:datasourceSection:]_block_invoke";
        v89 = 2048;
        v90 = v61;
        v91 = 2048;
        v92 = v62;
        _os_log_impl(&dword_273FB9000, v59, v60, "%s: deleting other network row at row: %lu section: %lu", v87, 0x20u);
      }

      v54 = [*(a1 + 32) tableView];
      v63 = [MEMORY[0x277CCAA70] indexPathForRow:v61 inSection:*(a1 + 96)];
      v86 = v63;
      v64 = [MEMORY[0x277CBEA60] arrayWithObjects:&v86 count:1];
      [v54 deleteRowsAtIndexPaths:v64 withRowAnimation:0];
    }
  }

LABEL_44:
  if (v29)
  {
    v65 = WFLogForCategory(0);
    v66 = OSLogForWFLogLevel(4uLL);
    if (WFCurrentLogLevel() >= 4 && v65)
    {
      v67 = v65;
      if (os_log_type_enabled(v67, v66))
      {
        v68 = [*(a1 + 32) _sectionNameAtIndex:*(a1 + 96)];
        v69 = *(a1 + 96);
        *v87 = 136315650;
        v88 = "[WFAirportViewController _updateCellsWithNewData:oldData:inSection:insertSection:datasourceSection:]_block_invoke";
        v89 = 2112;
        v90 = v68;
        v91 = 2048;
        v92 = v69;
        _os_log_impl(&dword_273FB9000, v67, v66, "%s: reloading header at section %@ (%lu)", v87, 0x20u);
      }
    }

    v70 = [*(a1 + 32) tableView];
    v71 = [MEMORY[0x277CCAA78] indexSetWithIndex:*(a1 + 96)];
    [v70 _reloadSectionHeaderFooters:v71 withRowAnimation:100];
  }

  _Block_object_dispose(&v79, 8);

  _Block_object_dispose(buf, 8);
  v72 = *MEMORY[0x277D85DE8];
}

void __101__WFAirportViewController__updateCellsWithNewData_oldData_inSection_insertSection_datasourceSection___block_invoke_136(uint64_t a1, void *a2)
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

void __101__WFAirportViewController__updateCellsWithNewData_oldData_inSection_insertSection_datasourceSection___block_invoke_2_137(uint64_t a1, void *a2)
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

void __101__WFAirportViewController__updateCellsWithNewData_oldData_inSection_insertSection_datasourceSection___block_invoke_138(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = WFLogForCategory(0);
  v3 = OSLogForWFLogLevel(4uLL);
  if (WFCurrentLogLevel() >= 4 && v2)
  {
    v4 = v2;
    if (os_log_type_enabled(v4, v3))
    {
      v5 = [*(a1 + 32) _nameOfSection:*(a1 + 40)];
      v6 = *(a1 + 40);
      *buf = 136315650;
      v22 = "[WFAirportViewController _updateCellsWithNewData:oldData:inSection:insertSection:datasourceSection:]_block_invoke";
      v23 = 2112;
      v24 = v5;
      v25 = 2048;
      v26 = v6;
      _os_log_impl(&dword_273FB9000, v4, v3, "%s: tableView updating finished for section %@ (%lu)", buf, 0x20u);
    }
  }

  *(*(a1 + 32) + 1056) = 0;
  v7 = [*(a1 + 32) _shouldContinueUpdateNetworkList];
  v8 = *(a1 + 32);
  if (v7)
  {
    v9 = [v8[153] copy];
    v10 = objc_opt_new();
    v11 = *(a1 + 32);
    v12 = *(v11 + 1224);
    *(v11 + 1224) = v10;

    *(*(a1 + 32) + 1057) = 0;
    v13 = WFLogForCategory(0);
    v14 = OSLogForWFLogLevel(4uLL);
    if (WFCurrentLogLevel() >= 4 && v13)
    {
      v15 = v13;
      if (os_log_type_enabled(v15, v14))
      {
        v16 = [v9 count];
        *buf = 134217984;
        v22 = v16;
        _os_log_impl(&dword_273FB9000, v15, v14, "continuing with pending network update (count %lu)", buf, 0xCu);
      }
    }

    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __101__WFAirportViewController__updateCellsWithNewData_oldData_inSection_insertSection_datasourceSection___block_invoke_140;
    v19[3] = &unk_279EC5588;
    v19[4] = *(a1 + 32);
    v20 = v9;
    v17 = v9;
    dispatch_async(MEMORY[0x277D85CD0], v19);
  }

  else
  {
    [v8 _processPendingCurrentNetworkUpdate];
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (BOOL)_shouldContinueUpdateNetworkList
{
  sections = [(WFAirportViewController *)self sections];
  v4 = [sections containsObject:&unk_288322480];
  v5 = v4 ^ ([(NSArray *)self->_knownNetworks count]!= 0);

  sections2 = [(WFAirportViewController *)self sections];
  v7 = [sections2 containsObject:&unk_288322468];
  v8 = [(NSArray *)self->_popularNetworks count];

  sections3 = [(WFAirportViewController *)self sections];
  v10 = [sections3 containsObject:&unk_288322498];
  v11 = [(NSArray *)self->_infraNetworks count]!= 0;

  sections4 = [(WFAirportViewController *)self sections];
  v13 = [sections4 containsObject:&unk_288322438];
  v14 = [(NSArray *)self->_unconfiguredNetworks count]!= 0;

  v15 = 1;
  if ((v5 & 1) == 0 && ((v7 ^ (v8 != 0)) & 1) == 0 && ((v10 ^ v11) & 1) == 0 && ((v13 ^ v14) & 1) == 0)
  {
    return self->_networkResultsChangedWhileUIUpdates;
  }

  return v15;
}

- (void)refresh
{
  if (![(WFAirportViewController *)self isInEditingMode])
  {
    internalQueue = self->_internalQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __34__WFAirportViewController_refresh__block_invoke;
    block[3] = &unk_279EC5538;
    block[4] = self;
    dispatch_sync(internalQueue, block);
  }
}

void __34__WFAirportViewController_refresh__block_invoke(uint64_t a1)
{
  v14 = [*(a1 + 32) listDelegate];
  [*(a1 + 32) setShowDiagnostics:{objc_msgSend(v14, "airportSettingsViewControllerShouldShowDiagnosticsMode:", *(a1 + 32))}];
  [*(a1 + 32) setShowNANUI:{objc_msgSend(v14, "airportSettingsViewControllerShouldShowNANUI:", *(a1 + 32))}];
  [*(a1 + 32) setShowKnownNetworks:{objc_msgSend(v14, "airportSettingsViewControllerShouldShowKnownNetworks:", *(a1 + 32))}];
  if (([*(a1 + 32) isInEditingMode] & 1) == 0)
  {
    if ([*(a1 + 32) showKnownNetworks])
    {
      v2 = [*(a1 + 32) sections];
      v3 = [v2 containsObject:&unk_288322420];

      if ((v3 & 1) == 0)
      {
        v8 = [*(a1 + 32) sections];
        v7 = [v8 mutableCopy];

        [v7 addObject:&unk_288322420];
        goto LABEL_8;
      }
    }
  }

  if (([*(a1 + 32) showKnownNetworks] & 1) == 0)
  {
    v4 = [*(a1 + 32) sections];
    v5 = [v4 containsObject:&unk_288322420];

    if (v5)
    {
      v6 = [*(a1 + 32) sections];
      v7 = [v6 mutableCopy];

      [v7 removeObject:&unk_288322450];
LABEL_8:
      [*(a1 + 32) setSections:v7];
    }
  }

  if ([*(a1 + 32) _refreshATJShownStateIfChanged])
  {
    v9 = [*(a1 + 32) sections];
    v10 = [v9 mutableCopy];

    if ([*(a1 + 32) askToJoinShown])
    {
      [v10 addObject:&unk_2883224C8];
    }

    else
    {
      [v10 removeObject:&unk_2883224C8];
    }

    [*(a1 + 32) setSections:v10];
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && (([v14 networkListViewControllerNetworkRestrictionActive:*(a1 + 32)] & 1) != 0 || objc_msgSend(v14, "networkListViewControllerIsManagedAppleID:", *(a1 + 32))))
  {
    v11 = [*(a1 + 32) sections];
    v12 = [v11 mutableCopy];

    [v12 removeObject:&unk_2883224E0];
    [*(a1 + 32) setSections:v12];
  }

  [*(a1 + 32) performSelectorOnMainThread:sel__updateNetworkRestrictionHeader withObject:0 waitUntilDone:1];
  v13 = [*(a1 + 32) tableView];
  [v13 reloadData];
}

- (void)powerStateDidChange:(BOOL)change
{
  v5 = [(WFAirportViewController *)self _defaultSectionsForPowerState:?];
  [(WFAirportViewController *)self setSections:v5];

  if (!change)
  {
    infraNetworks = self->_infraNetworks;
    self->_infraNetworks = 0;

    adhocNetworks = self->_adhocNetworks;
    self->_adhocNetworks = 0;

    unconfiguredNetworks = self->_unconfiguredNetworks;
    self->_unconfiguredNetworks = 0;

    popularNetworks = self->_popularNetworks;
    self->_popularNetworks = 0;

    knownNetworks = self->_knownNetworks;
    self->_knownNetworks = 0;

    currentNetwork = self->_currentNetwork;
    self->_currentNetwork = 0;

    self->_currentNetworkState = 0;
    currentNetworkSubtitle = self->_currentNetworkSubtitle;
    self->_currentNetworkSubtitle = 0;
  }

  [(WFAirportViewController *)self refresh];
}

- (void)powerStateDidChangeToggle:(unint64_t)toggle
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = [(WFAirportViewController *)self _defaultSectionsForPowerState:toggle == 1];
  [(WFAirportViewController *)self setSections:v5];

  v6 = WFLogForCategory(0);
  v7 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v6)
  {
    v8 = v6;
    if (os_log_type_enabled(v8, v7))
    {
      v9 = WFPowerStateToggleToString(toggle);
      v22 = 136315394;
      v23 = "[WFAirportViewController powerStateDidChangeToggle:]";
      v24 = 2112;
      v25 = v9;
      _os_log_impl(&dword_273FB9000, v8, v7, "%s: power state is now %@", &v22, 0x16u);
    }
  }

  if ((toggle & 0xFFFFFFFFFFFFFFFDLL) == 0)
  {
    infraNetworks = self->_infraNetworks;
    self->_infraNetworks = 0;

    adhocNetworks = self->_adhocNetworks;
    self->_adhocNetworks = 0;

    unconfiguredNetworks = self->_unconfiguredNetworks;
    self->_unconfiguredNetworks = 0;

    popularNetworks = self->_popularNetworks;
    self->_popularNetworks = 0;

    knownNetworks = self->_knownNetworks;
    self->_knownNetworks = 0;

    currentNetwork = self->_currentNetwork;
    self->_currentNetwork = 0;

    self->_currentNetworkState = 0;
    currentNetworkSubtitle = self->_currentNetworkSubtitle;
    self->_currentNetworkSubtitle = 0;

    pendingNetworks = self->_pendingNetworks;
    self->_pendingNetworks = 0;

    pendingCurrentNetworkUpdate = self->_pendingCurrentNetworkUpdate;
    self->_pendingCurrentNetworkUpdate = 0;

    v19 = +[WFNetworkRowConfig settingsNetworkRowConfig];
    currentNetworkRowConfig = self->_currentNetworkRowConfig;
    self->_currentNetworkRowConfig = v19;

    [(WFNetworkRowConfig *)self->_currentNetworkRowConfig setSubtitle:0];
  }

  [(WFAirportViewController *)self refresh];
  v21 = *MEMORY[0x277D85DE8];
}

- (unint64_t)powerState
{
  listDelegate = [(WFAirportViewController *)self listDelegate];
  v4 = [listDelegate networkListViewControllerCurrentPowerStateToggle:self];

  return v4;
}

- (void)powerModificationStateDidChange:(BOOL)change
{
  v9 = *MEMORY[0x277D85DE8];
  if (self->_disablePowerModification == change)
  {
    v3 = WFLogForCategory(0);
    v4 = OSLogForWFLogLevel(3uLL);
    if (WFCurrentLogLevel() >= 3 && v3 && os_log_type_enabled(v3, v4))
    {
      v7 = 136315138;
      v8 = "[WFAirportViewController powerModificationStateDidChange:]";
      _os_log_impl(&dword_273FB9000, v3, v4, "%s: No change", &v7, 0xCu);
    }

    v5 = *MEMORY[0x277D85DE8];
  }

  else
  {
    self->_disablePowerModification = change;
    v6 = *MEMORY[0x277D85DE8];

    [(WFAirportViewController *)self _reloadPowerSection];
  }
}

- (void)managedAppleIDStateChange:(BOOL)change
{
  v9 = *MEMORY[0x277D85DE8];
  if (self->_isManagedAppleID == change)
  {
    v3 = WFLogForCategory(0);
    v4 = OSLogForWFLogLevel(3uLL);
    if (WFCurrentLogLevel() >= 3 && v3 && os_log_type_enabled(v3, v4))
    {
      v7 = 136315138;
      v8 = "[WFAirportViewController managedAppleIDStateChange:]";
      _os_log_impl(&dword_273FB9000, v3, v4, "%s: No change", &v7, 0xCu);
    }

    v5 = *MEMORY[0x277D85DE8];
  }

  else
  {
    self->_isManagedAppleID = change;
    v6 = *MEMORY[0x277D85DE8];

    [(WFAirportViewController *)self refresh];
  }
}

- (void)reloadCellsForNetworkNames:(id)names
{
  v4 = MEMORY[0x277CBEB58];
  namesCopy = names;
  v6 = objc_alloc_init(v4);
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __54__WFAirportViewController_reloadCellsForNetworkNames___block_invoke;
  v13 = &unk_279EC56A0;
  selfCopy = self;
  v15 = v6;
  v7 = v6;
  [namesCopy enumerateObjectsUsingBlock:&v10];

  v8 = [(WFAirportViewController *)self tableView:v10];
  allObjects = [v7 allObjects];
  [v8 reloadRowsAtIndexPaths:allObjects withRowAnimation:5];
}

void __54__WFAirportViewController_reloadCellsForNetworkNames___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) _indexPathForNetworkName:v3];
  if (v4)
  {
    [*(a1 + 40) addObject:v4];
  }

  else
  {
    v5 = WFLogForCategory(0);
    v6 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v5 && os_log_type_enabled(v5, v6))
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&dword_273FB9000, v5, v6, "Cannot find indexpath for network: %@", &v8, 0xCu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)scrollToAirportCell:(unint64_t)cell
{
  if (cell - 1 <= 2)
  {
    v5 = qword_279EC5870[cell - 1];
    v6 = MEMORY[0x277CCAA70];
    sections = [(WFAirportViewController *)self sections];
    v9 = [v6 indexPathForRow:0 inSection:{objc_msgSend(sections, "indexOfObject:", v5)}];

    tableView = [(WFAirportViewController *)self tableView];
    [tableView scrollToRowAtIndexPath:v9 atScrollPosition:1 animated:1];
  }
}

- (id)_indexPathForNetworkName:(id)name
{
  nameCopy = name;
  currentNetwork = [(WFAirportViewController *)self currentNetwork];
  ssid = [currentNetwork ssid];
  v7 = [ssid isEqualToString:nameCopy];

  if (v7)
  {
    sections = [(WFAirportViewController *)self sections];
    v9 = [sections indexOfObject:&unk_2883224B0];

    v10 = [MEMORY[0x277CCAA70] indexPathForRow:1 inSection:v9];
  }

  else
  {
    v35 = 0;
    v36 = &v35;
    v37 = 0x2020000000;
    v38 = 0x7FFFFFFFFFFFFFFFLL;
    knownNetworks = [(WFAirportViewController *)self knownNetworks];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __52__WFAirportViewController__indexPathForNetworkName___block_invoke;
    v32[3] = &unk_279EC56C8;
    v12 = nameCopy;
    v33 = v12;
    v34 = &v35;
    [knownNetworks enumerateObjectsUsingBlock:v32];

    if (v36[3] == 0x7FFFFFFFFFFFFFFFLL)
    {
      popularNetworks = [(WFAirportViewController *)self popularNetworks];
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __52__WFAirportViewController__indexPathForNetworkName___block_invoke_2;
      v29[3] = &unk_279EC56C8;
      v14 = v12;
      v30 = v14;
      v31 = &v35;
      [popularNetworks enumerateObjectsUsingBlock:v29];

      if (v36[3] == 0x7FFFFFFFFFFFFFFFLL)
      {
        infraNetworks = [(WFAirportViewController *)self infraNetworks];
        v23 = MEMORY[0x277D85DD0];
        v24 = 3221225472;
        v25 = __52__WFAirportViewController__indexPathForNetworkName___block_invoke_3;
        v26 = &unk_279EC56C8;
        v27 = v14;
        v28 = &v35;
        [infraNetworks enumerateObjectsUsingBlock:&v23];

        if (v36[3] == 0x7FFFFFFFFFFFFFFFLL)
        {
          v10 = 0;
        }

        else
        {
          v20 = [(WFAirportViewController *)self sections:v23];
          v21 = [v20 indexOfObject:&unk_288322498];

          v10 = [MEMORY[0x277CCAA70] indexPathForRow:v36[3] inSection:v21];
        }
      }

      else
      {
        sections2 = [(WFAirportViewController *)self sections];
        v19 = [sections2 indexOfObject:&unk_288322468];

        v10 = [MEMORY[0x277CCAA70] indexPathForRow:v36[3] inSection:v19];
      }
    }

    else
    {
      sections3 = [(WFAirportViewController *)self sections];
      v17 = [sections3 indexOfObject:&unk_288322480];

      v10 = [MEMORY[0x277CCAA70] indexPathForRow:v36[3] inSection:v17];
    }

    _Block_object_dispose(&v35, 8);
  }

  return v10;
}

void __52__WFAirportViewController__indexPathForNetworkName___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 ssid];
  v6 = [v5 isEqualToString:*(a1 + 32)];

  if (v6)
  {
    *(*(*(a1 + 40) + 8) + 24) = a3;
  }
}

void __52__WFAirportViewController__indexPathForNetworkName___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 ssid];
  v6 = [v5 isEqualToString:*(a1 + 32)];

  if (v6)
  {
    *(*(*(a1 + 40) + 8) + 24) = a3;
  }
}

void __52__WFAirportViewController__indexPathForNetworkName___block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 ssid];
  v6 = [v5 isEqualToString:*(a1 + 32)];

  if (v6)
  {
    *(*(*(a1 + 40) + 8) + 24) = a3;
  }
}

- (void)updateViewsForNetworks:(id)networks
{
  v18 = *MEMORY[0x277D85DE8];
  networksCopy = networks;
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    v5 = WFLogForCategory(0);
    v6 = OSLogForWFLogLevel(3uLL);
    if (WFCurrentLogLevel() >= 3 && v5 && os_log_type_enabled(v5, v6))
    {
      *buf = 136315394;
      v15 = "[WFAirportViewController updateViewsForNetworks:]";
      v16 = 2112;
      v17 = networksCopy;
      _os_log_impl(&dword_273FB9000, v5, v6, "%s: updating views for %@", buf, 0x16u);
    }

    if (networksCopy)
    {
      internalQueue = self->_internalQueue;
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __50__WFAirportViewController_updateViewsForNetworks___block_invoke;
      v11[3] = &unk_279EC5588;
      v12 = networksCopy;
      selfCopy = self;
      dispatch_sync(internalQueue, v11);
    }

    else
    {
      v8 = WFLogForCategory(0);
      v9 = OSLogForWFLogLevel(3uLL);
      if (WFCurrentLogLevel() >= 3 && v8 && os_log_type_enabled(v8, v9))
      {
        *buf = 136315138;
        v15 = "[WFAirportViewController updateViewsForNetworks:]";
        _os_log_impl(&dword_273FB9000, v8, v9, "%s: nil networks", buf, 0xCu);
      }
    }
  }

  else
  {
    [(WFAirportViewController *)self performSelectorOnMainThread:sel_updateViewsForNetworks_ withObject:networksCopy waitUntilDone:0];
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __50__WFAirportViewController_updateViewsForNetworks___block_invoke(uint64_t a1)
{
  v96 = *MEMORY[0x277D85DE8];
  v70 = [MEMORY[0x277CBEB18] array];
  v2 = [*(a1 + 32) infrastructureNetworks];
  v3 = [*(a1 + 40) sections];
  v4 = [v3 indexOfObject:&unk_288322498];

  v5 = [*(a1 + 40) infraNetworks];
  v71 = a1;
  v69 = v2;
  if (v5 && (v6 = v5, v7 = [v2 count], v6, v7))
  {
    if (v4 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = WFLogForCategory(0);
      v9 = OSLogForWFLogLevel(3uLL);
      if (WFCurrentLogLevel() >= 3 && v8 && os_log_type_enabled(v8, v9))
      {
        *buf = 136315138;
        v86 = "[WFAirportViewController updateViewsForNetworks:]_block_invoke";
        _os_log_impl(&dword_273FB9000, v8, v9, "%s: infra section is not found", buf, 0xCu);
      }

      [*(a1 + 40) _dumpSections];
    }

    else
    {
      v12 = [*(a1 + 40) infraNetworks];
      v13 = [v12 mutableCopy];

      v83 = 0u;
      v84 = 0u;
      v81 = 0u;
      v82 = 0u;
      v14 = v2;
      v15 = [v14 countByEnumeratingWithState:&v81 objects:v95 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v82;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v82 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = *(*(&v81 + 1) + 8 * i);
            v20 = [*(a1 + 40) infraNetworks];
            v21 = [v20 indexOfObject:v19];

            if (v21 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v22 = WFLogForCategory(0);
              v23 = OSLogForWFLogLevel(3uLL);
              if (WFCurrentLogLevel() >= 3 && v22 && os_log_type_enabled(v22, v23))
              {
                *buf = 136315394;
                v86 = "[WFAirportViewController updateViewsForNetworks:]_block_invoke";
                v87 = 2112;
                v88 = v19;
                _os_log_impl(&dword_273FB9000, v22, v23, "%s: unknown row for record %@", buf, 0x16u);
              }
            }

            else
            {
              v24 = [MEMORY[0x277CCAA70] indexPathForRow:v21 inSection:v4];
              [v70 addObject:v24];

              [v13 replaceObjectAtIndex:v21 withObject:v19];
            }

            a1 = v71;
          }

          v16 = [v14 countByEnumeratingWithState:&v81 objects:v95 count:16];
        }

        while (v16);
      }

      [*(a1 + 40) setInfraNetworks:v13];
    }
  }

  else
  {
    v10 = WFLogForCategory(0);
    v11 = OSLogForWFLogLevel(3uLL);
    if (WFCurrentLogLevel() >= 3 && v10 && os_log_type_enabled(v10, v11))
    {
      *buf = 136315138;
      v86 = "[WFAirportViewController updateViewsForNetworks:]_block_invoke";
      _os_log_impl(&dword_273FB9000, v10, v11, "%s: no infra networks", buf, 0xCu);
    }
  }

  v25 = [*(a1 + 32) knownNetworks];
  v26 = [*(a1 + 40) sections];
  v27 = [v26 indexOfObject:&unk_288322480];

  v28 = [*(a1 + 40) knownNetworks];
  v67 = v25;
  if (v28 && (v29 = v28, v30 = [v25 count], v29, v30))
  {
    if (v27 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v31 = WFLogForCategory(0);
      v32 = OSLogForWFLogLevel(3uLL);
      if (WFCurrentLogLevel() >= 3 && v31 && os_log_type_enabled(v31, v32))
      {
        *buf = 136315138;
        v86 = "[WFAirportViewController updateViewsForNetworks:]_block_invoke";
        _os_log_impl(&dword_273FB9000, v31, v32, "%s: known section is not found", buf, 0xCu);
      }

      [*(a1 + 40) _dumpSections];
    }

    else
    {
      v35 = [*(a1 + 40) knownNetworks];
      v36 = [v35 mutableCopy];

      v79 = 0u;
      v80 = 0u;
      v77 = 0u;
      v78 = 0u;
      v37 = v25;
      v38 = [v37 countByEnumeratingWithState:&v77 objects:v94 count:16];
      if (v38)
      {
        v39 = v38;
        v40 = *v78;
        do
        {
          for (j = 0; j != v39; ++j)
          {
            if (*v78 != v40)
            {
              objc_enumerationMutation(v37);
            }

            v42 = *(*(&v77 + 1) + 8 * j);
            v43 = [*(v71 + 40) knownNetworks];
            v44 = [v43 indexOfObject:v42];

            if (v44 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v45 = WFLogForCategory(0);
              v46 = OSLogForWFLogLevel(3uLL);
              if (WFCurrentLogLevel() >= 3 && v45 && os_log_type_enabled(v45, v46))
              {
                *buf = 136315394;
                v86 = "[WFAirportViewController updateViewsForNetworks:]_block_invoke";
                v87 = 2112;
                v88 = v42;
                _os_log_impl(&dword_273FB9000, v45, v46, "%s: unknown row for record %@", buf, 0x16u);
              }
            }

            else
            {
              v47 = [MEMORY[0x277CCAA70] indexPathForRow:v44 inSection:v27];
              [v70 addObject:v47];

              [v36 replaceObjectAtIndex:v44 withObject:v42];
            }
          }

          v39 = [v37 countByEnumeratingWithState:&v77 objects:v94 count:16];
        }

        while (v39);
      }

      a1 = v71;
      [*(v71 + 40) setKnownNetworks:v36];
    }
  }

  else
  {
    v33 = WFLogForCategory(0);
    v34 = OSLogForWFLogLevel(3uLL);
    if (WFCurrentLogLevel() >= 3 && v33 && os_log_type_enabled(v33, v34))
    {
      *buf = 136315138;
      v86 = "[WFAirportViewController updateViewsForNetworks:]_block_invoke";
      _os_log_impl(&dword_273FB9000, v33, v34, "%s: no knownNetworks networks", buf, 0xCu);
    }
  }

  if ([v70 count])
  {
    v48 = WFLogForCategory(0);
    v49 = OSLogForWFLogLevel(3uLL);
    if (WFCurrentLogLevel() >= 3 && v48 && os_log_type_enabled(v48, v49))
    {
      *buf = 136315394;
      v86 = "[WFAirportViewController updateViewsForNetworks:]_block_invoke";
      v87 = 2112;
      v88 = v70;
      _os_log_impl(&dword_273FB9000, v48, v49, "%s: updating paths='%@'", buf, 0x16u);
    }

    v50 = [*(a1 + 40) tableView];
    [v50 reloadRowsAtIndexPaths:v70 withRowAnimation:5];
  }

  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  obj = *(a1 + 32);
  v51 = [obj countByEnumeratingWithState:&v73 objects:v93 count:16];
  if (v51)
  {
    v52 = v51;
    v53 = *v74;
    do
    {
      for (k = 0; k != v52; ++k)
      {
        if (*v74 != v53)
        {
          objc_enumerationMutation(obj);
        }

        v55 = *(*(&v73 + 1) + 8 * k);
        v56 = [*(a1 + 40) currentNetwork];
        if ([v55 isEqual:v56])
        {
          v57 = [*(*(a1 + 40) + 1072) title];
          v58 = [v55 title];
          v59 = [v57 isEqualToString:v58];

          if ((v59 & 1) == 0)
          {
            v60 = WFLogForCategory(0);
            v61 = OSLogForWFLogLevel(3uLL);
            if (WFCurrentLogLevel() >= 3 && v60)
            {
              v62 = v60;
              if (os_log_type_enabled(v62, v61))
              {
                v63 = [*(*(a1 + 40) + 1072) title];
                v64 = [v55 title];
                *buf = 136315906;
                v86 = "[WFAirportViewController updateViewsForNetworks:]_block_invoke";
                v87 = 2112;
                v88 = v63;
                v89 = 2112;
                v90 = v64;
                v91 = 2112;
                v92 = v55;
                _os_log_impl(&dword_273FB9000, v62, v61, "%s: updating current network view (title='%@' -> '%@' with ='%@'", buf, 0x2Au);

                a1 = v71;
              }
            }

            objc_storeStrong((*(a1 + 40) + 1072), v55);
            v65 = [*(a1 + 40) currentNetworkRowConfig];
            [v65 setNetwork:v55];

            [*(a1 + 40) _reloadCurrentNetworkCell];
          }
        }

        else
        {
        }
      }

      v52 = [obj countByEnumeratingWithState:&v73 objects:v93 count:16];
    }

    while (v52);
  }

  v66 = *MEMORY[0x277D85DE8];
}

- (void)setAskToJoinMode:(int64_t)mode
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = WFLogForCategory(0);
  v6 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v5 && os_log_type_enabled(v5, v6))
  {
    v19 = 136315394;
    v20 = "[WFAirportViewController setAskToJoinMode:]";
    v21 = 2048;
    modeCopy = mode;
    _os_log_impl(&dword_273FB9000, v5, v6, "%s: setting atj mode to %ld", &v19, 0x16u);
  }

  sections = [(WFAirportViewController *)self sections];
  v8 = [sections indexOfObject:&unk_2883224C8];

  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = WFLogForCategory(0);
    v10 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v9 && os_log_type_enabled(v9, v10))
    {
      v19 = 136315138;
      v20 = "[WFAirportViewController setAskToJoinMode:]";
      _os_log_impl(&dword_273FB9000, v9, v10, "%s: unable to find WFAirportSectionAskToJoin in sections", &v19, 0xCu);
    }

    [(WFAirportViewController *)self _dumpSections];
  }

  else
  {
    tableView = [(WFAirportViewController *)self tableView];
    v12 = [MEMORY[0x277CCAA70] indexPathForRow:0 inSection:v8];
    v13 = [tableView cellForRowAtIndexPath:v12];

    if (v13)
    {
      v14 = [(WFAirportViewController *)self _askToJoinStateStringForATJMode:mode];
      detailTextLabel = [v13 detailTextLabel];
      [detailTextLabel setText:v14];
    }

    tableView2 = [(WFAirportViewController *)self tableView];
    v17 = [MEMORY[0x277CCAA78] indexSetWithIndex:v8];
    [tableView2 _reloadSectionHeaderFooters:v17 withRowAnimation:5];
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)setAutoInstantHotspotJoinOption:(int64_t)option
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = WFLogForCategory(0);
  v6 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v5 && os_log_type_enabled(v5, v6))
  {
    v21 = 136315394;
    v22 = "[WFAirportViewController setAutoInstantHotspotJoinOption:]";
    v23 = 2048;
    optionCopy = option;
    _os_log_impl(&dword_273FB9000, v5, v6, "%s: setting auto hotspot option to %ld", &v21, 0x16u);
  }

  sections = [(WFAirportViewController *)self sections];
  v8 = [sections indexOfObject:&unk_2883224E0];

  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = WFLogForCategory(0);
    v10 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v9 && os_log_type_enabled(v9, v10))
    {
      v21 = 136315138;
      v22 = "[WFAirportViewController setAutoInstantHotspotJoinOption:]";
      _os_log_impl(&dword_273FB9000, v9, v10, "%s: unable to find WFAirportSectionAutoInstantHotspot in sections", &v21, 0xCu);
    }

    [(WFAirportViewController *)self _dumpSections];
  }

  else
  {
    tableView = [(WFAirportViewController *)self tableView];
    v12 = [MEMORY[0x277CCAA70] indexPathForRow:0 inSection:v8];
    v13 = [tableView cellForRowAtIndexPath:v12];

    if (v13)
    {
      v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v15 = [(WFAirportViewController *)self _getAutoHotspotOptionText:option];
      v16 = [v14 localizedStringForKey:v15 value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
      detailTextLabel = [v13 detailTextLabel];
      [detailTextLabel setText:v16];
    }

    tableView2 = [(WFAirportViewController *)self tableView];
    v19 = [MEMORY[0x277CCAA78] indexSetWithIndex:v8];
    [tableView2 _reloadSectionHeaderFooters:v19 withRowAnimation:5];
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  sections = [(WFAirportViewController *)self sections];
  v4 = [sections count];

  return v4;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v5 = [(WFAirportViewController *)self _sectionTypeAtSection:section];
  showOtherNetwork = 0;
  if (v5 > 5)
  {
    if (v5 <= 9)
    {
      v7 = 1;
      if (v5 != 8)
      {
        v7 = v5 == 9;
      }

      if ((v5 - 6) >= 2)
      {
        return v7;
      }

      else
      {
        return 1;
      }
    }

    switch(v5)
    {
      case 10:
        return 1;
      case 11:
        v9 = 1256;
        goto LABEL_29;
      case 12:
        v9 = 1264;
        goto LABEL_29;
    }

    return showOtherNetwork;
  }

  if (v5 > 2)
  {
    if (v5 == 3)
    {
      showOtherNetwork = self->_showOtherNetwork;
      if ([(NSArray *)self->_infraNetworks count])
      {
        showOtherNetwork += [(NSArray *)self->_infraNetworks count];
      }

      return showOtherNetwork;
    }

    if (v5 == 4)
    {
      v10 = 1176;
    }

    else
    {
      v10 = 1184;
    }

    if ([*(&self->super.super.super.super.super.isa + v10) count])
    {
      v15 = *(&self->super.super.super.super.super.isa + v10);
      goto LABEL_33;
    }

    return 0;
  }

  if (!v5)
  {
    showOtherNetwork = [(WFAirportViewController *)self rowCountWithPlacardCell:1];
    currentNetwork = [(WFAirportViewController *)self currentNetwork];
    if (currentNetwork)
    {
      v12 = currentNetwork;
      currentNetwork2 = [(WFAirportViewController *)self currentNetwork];
      if ([currentNetwork2 canBeDisplayedAsCurrent])
      {
        powered = [(WFAirportViewController *)self powered];

        showOtherNetwork += powered;
      }

      else
      {
      }
    }

    if ([(WFAirportViewController *)self showDiagnosticsCell])
    {
      showOtherNetwork += [(WFAirportViewController *)self powered];
    }

    return showOtherNetwork;
  }

  if (v5 == 1)
  {
    v9 = 1168;
    goto LABEL_29;
  }

  if (v5 != 2)
  {
    return showOtherNetwork;
  }

  v9 = 1160;
LABEL_29:
  v15 = *(&self->super.super.super.super.super.isa + v9);
LABEL_33:

  return [v15 count];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v78 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  pathCopy = path;
  v9 = -[WFAirportViewController _sectionTypeAtSection:](self, "_sectionTypeAtSection:", [pathCopy section]);
  v10 = [pathCopy row];
  listDelegate = [(WFAirportViewController *)self listDelegate];
  switch(v9)
  {
    case 0uLL:
      v12 = 0;
      if ([(WFAirportViewController *)self usePlacardCell]&& !v10)
      {
        v12 = [viewCopy dequeueReusableCellWithIdentifier:@"WFWiFiPlacardCell"];
      }

      if (v10 == [(WFAirportViewController *)self rowCountWithPlacardCell:0])
      {
        v13 = [viewCopy dequeueReusableCellWithIdentifier:@"WFPowerCell"];

        v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        if ([(WFAirportViewController *)self _isChinaDevice])
        {
          v15 = @"kWFLocWiFiPowerTitleCH";
        }

        else
        {
          v15 = @"kWFLocWiFiPowerTitle";
        }

        v16 = [v14 localizedStringForKey:v15 value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
        textLabel = [v13 textLabel];
        [textLabel setText:v16];

        v18 = objc_alloc(MEMORY[0x277D75AE8]);
        defaultContentConfiguration = [v18 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
        [defaultContentConfiguration addTarget:self action:sel__powerSwitchChanged_ forControlEvents:4096];
        powerState = [(WFAirportViewController *)self powerState];
        v21 = WFLogForCategory(0);
        v22 = OSLogForWFLogLevel(3uLL);
        if (WFCurrentLogLevel() >= 3 && v21)
        {
          v23 = v21;
          if (os_log_type_enabled(v23, v22))
          {
            v73 = WFPowerStateToggleToString(powerState);
            *buf = 136315394;
            v75 = "[WFAirportViewController tableView:cellForRowAtIndexPath:]";
            v76 = 2112;
            v77 = v73;
            _os_log_impl(&dword_273FB9000, v23, v22, "%s: set power state UI to %@", buf, 0x16u);
          }
        }

        if (powerState == 3)
        {
          [defaultContentConfiguration setEnabled:0];
          v59 = 0;
          goto LABEL_59;
        }

        if (powerState != 2)
        {
          [defaultContentConfiguration setEnabled:{-[WFAirportViewController disablePowerModification](self, "disablePowerModification") ^ 1}];
          powered = [(WFAirportViewController *)self powered];
          goto LABEL_58;
        }

        v24 = v13;

        goto LABEL_63;
      }

      if (v10 == [(WFAirportViewController *)self rowCountWithPlacardCell:1]&& [(WFAirportViewController *)self showDiagnosticsCell])
      {
        v13 = [viewCopy dequeueReusableCellWithIdentifier:@"WFDiagnosticsCell"];

        v29 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v30 = v29;
        v31 = @"kWFLocWiFiDiagnosticsTitle";
        goto LABEL_38;
      }

      v56 = [(WFAirportViewController *)self rowCountWithPlacardCell:1];
      if (v10 == v56)
      {
        currentNetwork = [(WFAirportViewController *)self currentNetwork];
        if (currentNetwork)
        {
          v72 = currentNetwork;
          currentNetwork2 = [(WFAirportViewController *)self currentNetwork];
          if ([currentNetwork2 canBeDisplayedAsCurrent] && !-[WFAirportViewController showDiagnosticsCell](self, "showDiagnosticsCell"))
          {

            goto LABEL_84;
          }

          v58 = 1;
        }

        else
        {
          v58 = 0;
          v72 = 0;
        }
      }

      else
      {
        v58 = 0;
      }

      if (v10 != [(WFAirportViewController *)self rowCountWithPlacardCell:2])
      {
        showDiagnosticsCell = 0;
        if (!v58)
        {
          goto LABEL_73;
        }

        goto LABEL_72;
      }

      v71 = v58;
      currentNetwork3 = [(WFAirportViewController *)self currentNetwork];
      if (currentNetwork3)
      {
        v63 = currentNetwork3;
        v70 = currentNetwork2;
        currentNetwork4 = [(WFAirportViewController *)self currentNetwork];
        if ([currentNetwork4 canBeDisplayedAsCurrent])
        {
          showDiagnosticsCell = [(WFAirportViewController *)self showDiagnosticsCell];
        }

        else
        {

          showDiagnosticsCell = 0;
        }

        currentNetwork2 = v70;
      }

      else
      {
        showDiagnosticsCell = 0;
      }

      if (v71)
      {
LABEL_72:
      }

LABEL_73:
      if (v10 == v56)
      {

        if (showDiagnosticsCell)
        {
          goto LABEL_84;
        }

LABEL_77:
        v13 = v12;
        goto LABEL_62;
      }

      if (!showDiagnosticsCell)
      {
        goto LABEL_77;
      }

LABEL_84:
      currentNetwork5 = [(WFAirportViewController *)self currentNetwork];
      if (listDelegate)
      {
        v66 = [listDelegate airportSettingsViewControllerCurrentNetworkConnectionIsProblematic:self];
      }

      else
      {
        v66 = 0;
      }

      currentNetworkSubtitle = [(WFAirportViewController *)self currentNetworkSubtitle];

      if (currentNetworkSubtitle)
      {
        [(WFAirportViewController *)self currentNetworkSubtitle];
      }

      else
      {
        [currentNetwork5 subtitle];
      }
      v68 = ;
      v13 = [viewCopy dequeueReusableCellWithIdentifier:@"WFNetworkCell" forIndexPath:pathCopy];
      title = [currentNetwork5 title];
      [v13 setTitle:title];

      [v13 setSubtitle:v68];
      [v13 setSecure:{objc_msgSend(currentNetwork5, "isSecure")}];
      [v13 setConnectionError:v66];
      if ((v66 & 1) == 0)
      {
        [v13 setBars:WFSignalBarsFromScaledRSSI(self->_currentNetworkScaledRSSI)];
      }

      [v13 setState:self->_currentNetworkState];
      [v13 setPersonalHotspot:{objc_msgSend(currentNetwork5, "iOSHotspot")}];
      [v13 setAccessoryType:4];

LABEL_20:
LABEL_62:
      v24 = v13;
LABEL_63:

      v60 = *MEMORY[0x277D85DE8];

      return v24;
    case 1uLL:
      v26 = 1168;
      goto LABEL_31;
    case 2uLL:
      v26 = 1160;
      goto LABEL_31;
    case 3uLL:
      infraNetworks = self->_infraNetworks;
      if (!infraNetworks || v10 == [(NSArray *)infraNetworks count]&& self->_showOtherNetwork)
      {
        v13 = [viewCopy dequeueReusableCellWithIdentifier:@"WFOtherNetworkCell"];
        v33 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v34 = [v33 localizedStringForKey:@"kWFLocOtherNetworkTitle" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
        textLabel2 = [v13 textLabel];
        [textLabel2 setText:v34];

LABEL_35:
      }

      else
      {
        v42 = self->_infraNetworks;
LABEL_32:
        defaultContentConfiguration = [(NSArray *)v42 objectAtIndex:v10];
        v25 = [(WFAirportViewController *)self _tableCellForNetwork:defaultContentConfiguration tableView:viewCopy indexPath:pathCopy];
LABEL_33:
        v13 = v25;
LABEL_61:
      }

      goto LABEL_62;
    case 4uLL:
      v26 = 1176;
LABEL_31:
      v42 = *(&self->super.super.super.super.super.isa + v26);
      goto LABEL_32;
    case 5uLL:
      v33 = [(NSArray *)self->_unconfiguredNetworks objectAtIndex:v10];
      v13 = [viewCopy dequeueReusableCellWithIdentifier:@"WFUnconfiguredNetworkCell" forIndexPath:pathCopy];
      title2 = [v33 title];
      textLabel3 = [v13 textLabel];
      [textLabel3 setText:title2];

      [v13 setAccessoryType:1];
      goto LABEL_35;
    case 6uLL:
      v13 = [viewCopy dequeueReusableCellWithIdentifier:@"kWFNetworkDataUsageCellIdentifier"];
      v29 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v30 = v29;
      v31 = @"kWFLocDataUsageTitle";
      goto LABEL_38;
    case 7uLL:
      v13 = [viewCopy dequeueReusableCellWithIdentifier:@"kWFNetworkWAPICellIdentifier"];
      v36 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v37 = [v36 localizedStringForKey:@"kWFLocEnableWAPITitle" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
      textLabel4 = [v13 textLabel];
      [textLabel4 setText:v37];

      textLabel5 = [v13 textLabel];
      [textLabel5 setNumberOfLines:0];

      v40 = objc_alloc(MEMORY[0x277D75AE8]);
      defaultContentConfiguration = [v40 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
      [defaultContentConfiguration addTarget:self action:sel__enableWAPISwitchChanged_ forControlEvents:4096];
      if (listDelegate && (objc_opt_respondsToSelector() & 1) != 0)
      {
        powered = [listDelegate networkListViewControllerWAPIEnabled:self];
LABEL_58:
        v59 = powered;
LABEL_59:
        [defaultContentConfiguration setOn:v59];
      }

      [v13 setAccessoryView:defaultContentConfiguration];
      [v13 setSelectionStyle:0];
      goto LABEL_61;
    case 8uLL:
      v13 = [viewCopy dequeueReusableCellWithIdentifier:@"WFAskToJoinCell"];
      if (!v13)
      {
        v13 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:1 reuseIdentifier:@"WFAskToJoinCell"];
      }

      defaultContentConfiguration = [v13 defaultContentConfiguration];
      v53 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v54 = [v53 localizedStringForKey:@"kWFLocAskToJoinTitle" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
      [defaultContentConfiguration setText:v54];

      v55 = [(WFAirportViewController *)self _askToJoinStateStringForATJMode:[(WFAirportViewController *)self _askToJoinMode]];
      [defaultContentConfiguration setSecondaryText:v55];

      goto LABEL_45;
    case 9uLL:
      v13 = [viewCopy dequeueReusableCellWithIdentifier:@"WFNetworkKnownNetworksCellIdentifier"];
      v29 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v30 = v29;
      v31 = @"kWFLocKnownNetworksTitle";
LABEL_38:
      v45 = [v29 localizedStringForKey:v31 value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
      textLabel6 = [v13 textLabel];
      [textLabel6 setText:v45];

      [v13 setAccessoryType:1];
      goto LABEL_62;
    case 0xAuLL:
      v13 = [viewCopy dequeueReusableCellWithIdentifier:@"WFAutoInstantHotspotCell"];
      if (!v13)
      {
        v13 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:1 reuseIdentifier:@"WFAutoInstantHotspotCell"];
      }

      defaultContentConfiguration = [v13 defaultContentConfiguration];
      v47 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v48 = [v47 localizedStringForKey:@"kWFLocAutoInstantHotspotTitle" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
      [defaultContentConfiguration setText:v48];

      v49 = [listDelegate networkListViewControllerAutoInstantHotspotOption:self];
      v50 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v51 = [(WFAirportViewController *)self _getAutoHotspotOptionText:v49];
      v52 = [v50 localizedStringForKey:v51 value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
      [defaultContentConfiguration setSecondaryText:v52];

LABEL_45:
      [v13 setContentConfiguration:defaultContentConfiguration];
      [v13 setAccessoryType:1];
      goto LABEL_61;
    case 0xBuLL:
      defaultContentConfiguration = [(NSMutableArray *)self->_editableKnownNetworks objectAtIndex:v10];
      v25 = [(WFAirportViewController *)self _tableCellForKnownNetwork:defaultContentConfiguration tableView:viewCopy indexPath:pathCopy extraLeadingPadding:0];
      goto LABEL_33;
    case 0xCuLL:
      managedKnownNetworks = [(WFAirportViewController *)self managedKnownNetworks];
      currentNetwork5 = [managedKnownNetworks objectAtIndex:v10];

      v13 = [(WFAirportViewController *)self _tableCellForKnownNetwork:currentNetwork5 tableView:viewCopy indexPath:pathCopy extraLeadingPadding:1];
      goto LABEL_20;
    default:
      v13 = 0;
      goto LABEL_62;
  }
}

- (id)_tableCellForNetwork:(id)network tableView:(id)view indexPath:(id)path
{
  v29 = *MEMORY[0x277D85DE8];
  networkCopy = network;
  pathCopy = path;
  viewCopy = view;
  if ([networkCopy isInstantHotspot])
  {
    v10 = [viewCopy dequeueReusableCellWithIdentifier:@"WFHotspotCell" forIndexPath:pathCopy];

    if (v10)
    {
      if (networkCopy)
      {
        title = [networkCopy title];
        [v10 setTitle:title];

        hotspotDetails = [v10 hotspotDetails];

        if (!hotspotDetails)
        {
          v13 = objc_alloc_init(WFHotspotDetails);
          hotspotBatteryLife = [networkCopy hotspotBatteryLife];
          [(WFHotspotDetails *)v13 setBatteryLife:hotspotBatteryLife];

          hotspotCellularProtocol = [networkCopy hotspotCellularProtocol];
          [(WFHotspotDetails *)v13 setCellularProtocolString:hotspotCellularProtocol];

          hotspotSignalStrength = [networkCopy hotspotSignalStrength];
          [(WFHotspotDetails *)v13 setSignalStrength:hotspotSignalStrength];

          [v10 setHotspotDetails:v13];
        }

        v17 = v10;
        v18 = 0;
        goto LABEL_10;
      }

LABEL_22:
      [WFAirportViewController _tableCellForNetwork:pathCopy tableView:v26 indexPath:?];
      v24 = *v26;
      goto LABEL_23;
    }

    v24 = WFLogForCategory(0);
    v25 = OSLogForWFLogLevel(1uLL);
    if (!WFCurrentLogLevel() || !v24 || !os_log_type_enabled(v24, v25))
    {
      goto LABEL_23;
    }
  }

  else
  {
    v10 = [viewCopy dequeueReusableCellWithIdentifier:@"WFNetworkCell" forIndexPath:pathCopy];

    if (v10)
    {
      if (networkCopy)
      {
        title2 = [networkCopy title];
        [v10 setTitle:title2];

        subtitle = [networkCopy subtitle];
        [v10 setSubtitle:subtitle];

        [v10 setSecure:{objc_msgSend(networkCopy, "isSecure")}];
        [networkCopy scaledRSSI];
        [v10 setBars:WFSignalBarsFromScaledRSSI(v21)];
        [v10 setPersonalHotspot:{objc_msgSend(networkCopy, "iOSHotspot")}];
        v17 = v10;
        v18 = 4;
LABEL_10:
        [v17 setAccessoryType:v18];
        [v10 setSeparatorInset:{0.0, 40.0, 0.0, 0.0}];
        goto LABEL_11;
      }

      goto LABEL_22;
    }

    v24 = WFLogForCategory(0);
    v25 = OSLogForWFLogLevel(1uLL);
    if (!WFCurrentLogLevel() || !v24 || !os_log_type_enabled(v24, v25))
    {
      goto LABEL_23;
    }
  }

  *v26 = 138543618;
  *&v26[4] = pathCopy;
  v27 = 2114;
  v28 = networkCopy;
  _os_log_impl(&dword_273FB9000, v24, v25, "Unable to create cell at indexPath %{public}@ for network %{public}@", v26, 0x16u);
LABEL_23:

  v10 = 0;
LABEL_11:

  v22 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)tableView:(id)view titleForFooterInSection:(int64_t)section
{
  v5 = [(WFAirportViewController *)self _sectionTypeAtSection:section];
  if (v5 == 10)
  {
    _isChinaDevice = [(WFAirportViewController *)self _isChinaDevice];
    v10 = @"kWFLocAutoInstantHotspotFooter";
    if (_isChinaDevice)
    {
      v10 = @"kWFLocAutoInstantHotspotFooterCH";
    }

    v11 = MEMORY[0x277CCA8D8];
    v12 = v10;
    v13 = [v11 bundleForClass:objc_opt_class()];
    v6 = [v13 localizedStringForKey:v12 value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
  }

  else
  {
    if (v5 != 8)
    {
      if (v5)
      {
LABEL_6:
        v6 = 0;
        goto LABEL_16;
      }

      if ([(WFAirportViewController *)self powered])
      {
        if ([(WFAirportViewController *)self userAutoJoinEnabled])
        {
          goto LABEL_6;
        }

        userAutoJoinDisabledWarning = [(WFAirportViewController *)self userAutoJoinDisabledWarning];
      }

      else
      {
        userAutoJoinDisabledWarning = [(WFAirportViewController *)self powerOffLocationWarning];
      }

      goto LABEL_15;
    }

    _askToJoinShouldBeVisible = [(WFAirportViewController *)self _askToJoinShouldBeVisible];
    v6 = 0;
    if ([(WFAirportViewController *)self userAutoJoinEnabled]&& _askToJoinShouldBeVisible)
    {
      userAutoJoinDisabledWarning = [(WFAirportViewController *)self _askToJoinFooterString];
LABEL_15:
      v6 = userAutoJoinDisabledWarning;
    }
  }

LABEL_16:

  return v6;
}

- (id)titleForHeaderInSection:(int64_t)section
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = [(WFAirportViewController *)self _sectionTypeAtSection:section];
  v5 = 0;
  if (v4 <= 3)
  {
    if (v4 != 1)
    {
      if (v4 == 2)
      {
        v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v12 = v11;
        v13 = @"kWFLocPublicSectionTitle";
      }

      else
      {
        if (v4 != 3)
        {
          goto LABEL_35;
        }

        sections = [(WFAirportViewController *)self sections];
        v8 = [sections indexOfObject:&unk_288322480];

        sections2 = [(WFAirportViewController *)self sections];
        v10 = [sections2 indexOfObject:&unk_288322468];

        v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v12 = v11;
        if (v8 == 0x7FFFFFFFFFFFFFFFLL && v10 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v13 = @"kWFLocChooseNetworkSectionSingleTitle";
        }

        else
        {
          v13 = @"kWFLocChooseNetworkSectionTitle";
        }
      }

      goto LABEL_34;
    }

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v14 = self->_knownNetworks;
    v15 = [(NSArray *)v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v23;
      v18 = 1;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v23 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v18 &= [*(*(&v22 + 1) + 8 * i) isInstantHotspot];
        }

        v16 = [(NSArray *)v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v16);

      if ((v18 & 1) == 0)
      {
        v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v12 = v11;
        v13 = @"kWFLocMyNetworksSectionTitle";
LABEL_34:
        v5 = [v11 localizedStringForKey:v13 value:&stru_288308678 table:{@"WiFiKitUILocalizableStrings", v22}];

        goto LABEL_35;
      }
    }

    else
    {
    }

    v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v12 = v11;
    v13 = @"kWFLocHotspotsSectionTitle";
    goto LABEL_34;
  }

  if (v4 > 10)
  {
    if (v4 == 11)
    {
      v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v12 = v11;
      v13 = @"kWFLocAllEditableKnownSectionTitle";
    }

    else
    {
      if (v4 != 12)
      {
        goto LABEL_35;
      }

      v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v12 = v11;
      v13 = @"kFWLocAllProfileKnownSectionTitle";
    }

    goto LABEL_34;
  }

  if (v4 == 4)
  {
    v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v12 = v11;
    v13 = @"kWFLocAdhocSectionTitle";
    goto LABEL_34;
  }

  if (v4 == 5)
  {
    listDelegate = [(WFAirportViewController *)self listDelegate];
    if (listDelegate && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v5 = [listDelegate airportSettingsViewController:self unconfiguredAccessoriesGroupHeaderTitle:self->_unconfiguredNetworks];
    }

    else
    {
      v5 = 0;
    }
  }

LABEL_35:
  v20 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)headerIdentifierForSectionType:(unint64_t)type
{
  if (type - 1 > 0xB)
  {
    return 0;
  }

  else
  {
    return off_279EC5888[type - 1];
  }
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  v7 = [(WFAirportViewController *)self _sectionTypeAtSection:section];
  v8 = [(WFAirportViewController *)self headerIdentifierForSectionType:v7];
  if (v8)
  {
    v9 = [viewCopy dequeueReusableHeaderFooterViewWithIdentifier:v8];
  }

  else
  {
    v9 = 0;
  }

  if (v7 == 3)
  {
    [(WFAirportViewController *)self setChooseNetworkHeader:v9];
  }

  v10 = [(WFAirportViewController *)self titleForHeaderInSection:section];
  if (v10)
  {
    [v9 setTitle:v10];
  }

  return v9;
}

- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  if (section || (v7 = 18.0, [(WFAirportViewController *)self isInEditingMode]))
  {
    v7 = *MEMORY[0x277D76F30];
  }

  return v7;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v122 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  pathCopy = path;
  v7 = WFLogForCategory(0);
  v8 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v7 && os_log_type_enabled(v7, v8))
  {
    *buf = 136315394;
    v116 = "[WFAirportViewController tableView:didSelectRowAtIndexPath:]";
    v117 = 2112;
    v118 = pathCopy;
    _os_log_impl(&dword_273FB9000, v7, v8, "%s: indexPath %@", buf, 0x16u);
  }

  v107 = viewCopy;
  v108 = pathCopy;

  v113 = 0u;
  v114 = 0u;
  v111 = 0u;
  v112 = 0u;
  selfCopy4 = self;
  obj = [(WFAirportViewController *)self sections];
  v10 = [obj countByEnumeratingWithState:&v111 objects:v121 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v112;
    v13 = &stru_288308678;
    do
    {
      v14 = 0;
      v15 = v13;
      do
      {
        if (*v112 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v111 + 1) + 8 * v14);
        v17 = MEMORY[0x277CCACA8];
        v18 = -[WFAirportViewController _nameOfSection:](selfCopy4, "_nameOfSection:", [v16 intValue]);
        tableView = [(WFAirportViewController *)selfCopy4 tableView];
        sections = [(WFAirportViewController *)selfCopy4 sections];
        v21 = [v17 stringWithFormat:@"section: %@ has %ld items", v18, objc_msgSend(tableView, "numberOfRowsInSection:", objc_msgSend(sections, "indexOfObject:", v16))];
        v13 = [(__CFString *)v15 stringByAppendingString:v21];

        selfCopy4 = self;
        ++v14;
        v15 = v13;
      }

      while (v11 != v14);
      v11 = [obj countByEnumeratingWithState:&v111 objects:v121 count:16];
    }

    while (v11);
  }

  else
  {
    v13 = &stru_288308678;
  }

  v22 = WFLogForCategory(0);
  v23 = OSLogForWFLogLevel(4uLL);
  if (WFCurrentLogLevel() >= 4 && v22 && os_log_type_enabled(v22, v23))
  {
    *buf = 138412290;
    v116 = v13;
    _os_log_impl(&dword_273FB9000, v22, v23, "%@", buf, 0xCu);
  }

  v24 = v108;
  v25 = [v108 row];
  joiningHotspot = [(WFAirportViewController *)selfCopy4 joiningHotspot];
  listDelegate = [(WFAirportViewController *)selfCopy4 listDelegate];
  if (joiningHotspot)
  {
    v28 = WFLogForCategory(0);
    v29 = OSLogForWFLogLevel(3uLL);
    if (WFCurrentLogLevel() >= 3 && v28 && os_log_type_enabled(v28, v29))
    {
      *buf = 136315394;
      v116 = "[WFAirportViewController tableView:didSelectRowAtIndexPath:]";
      v117 = 2112;
      v118 = joiningHotspot;
      _os_log_impl(&dword_273FB9000, v28, v29, "%s: hotspot joining in progress %@", buf, 0x16u);
    }

    knownNetworks = [(WFAirportViewController *)selfCopy4 knownNetworks];
    v31 = [knownNetworks indexOfObject:joiningHotspot];

    sections2 = [(WFAirportViewController *)selfCopy4 sections];
    v33 = [sections2 indexOfObject:&unk_288322480];

    if (v31 == 0x7FFFFFFFFFFFFFFFLL || v33 == 0x7FFFFFFFFFFFFFFFLL)
    {
      if (v33 != 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_39;
      }

      v35 = WFLogForCategory(0);
      v38 = OSLogForWFLogLevel(1uLL);
      if (WFCurrentLogLevel() && v35)
      {
        v35 = v35;
        if (os_log_type_enabled(v35, v38))
        {
          knownNetworks2 = [(WFAirportViewController *)selfCopy4 knownNetworks];
          *buf = 138543618;
          v116 = joiningHotspot;
          v117 = 2114;
          v118 = knownNetworks2;
          _os_log_impl(&dword_273FB9000, v35, v38, "Joining hotspot %{public}@ can't be found in set %{public}@", buf, 0x16u);
        }
      }
    }

    else
    {
      v34 = [MEMORY[0x277CCAA70] indexPathForRow:v31 inSection:v33];
      v35 = [v107 cellForRowAtIndexPath:v34];

      v36 = WFLogForCategory(0);
      v37 = OSLogForWFLogLevel(3uLL);
      if (WFCurrentLogLevel() >= 3 && v36 && os_log_type_enabled(v36, v37))
      {
        *buf = 136315394;
        v116 = "[WFAirportViewController tableView:didSelectRowAtIndexPath:]";
        v117 = 2112;
        v118 = v35;
        _os_log_impl(&dword_273FB9000, v36, v37, "%s: updating state for cell %@", buf, 0x16u);
      }

      if (v35)
      {
        [v35 setState:0];
      }

      v24 = v108;
    }

LABEL_39:
    [(WFAirportViewController *)selfCopy4 setJoiningHotspot:0];
  }

  v40 = -[WFAirportViewController _sectionTypeAtSection:](selfCopy4, "_sectionTypeAtSection:", [v24 section]);
  if (v40 > 4)
  {
    if (v40 <= 7)
    {
      if (v40 == 5)
      {
        unconfiguredNetworks = [(WFAirportViewController *)selfCopy4 unconfiguredNetworks];
        v42 = [unconfiguredNetworks objectAtIndex:v25];

        v62 = WFLogForCategory(0);
        v63 = OSLogForWFLogLevel(3uLL);
        if (WFCurrentLogLevel() >= 3 && v62 && os_log_type_enabled(v62, v63))
        {
          *buf = 136315394;
          v116 = "[WFAirportViewController tableView:didSelectRowAtIndexPath:]";
          v117 = 2112;
          v118 = v42;
          _os_log_impl(&dword_273FB9000, v62, v63, "%s: tapped on unconfigured record %@", buf, 0x16u);
        }

        v64 = listDelegate;
        v65 = selfCopy4;
        goto LABEL_115;
      }

      if (v40 == 6)
      {
        [listDelegate airportSettingsViewControllerDidTapDataUsage:selfCopy4];
      }
    }

    else
    {
      switch(v40)
      {
        case 8:
          v75 = WFLogForCategory(0);
          v76 = OSLogForWFLogLevel(3uLL);
          if (WFCurrentLogLevel() >= 3 && v75 && os_log_type_enabled(v75, v76))
          {
            *buf = 136315138;
            v116 = "[WFAirportViewController tableView:didSelectRowAtIndexPath:]";
            _os_log_impl(&dword_273FB9000, v75, v76, "%s: tapped on ask to join row", buf, 0xCu);
          }

          [(WFAirportViewController *)selfCopy4 _pushAskToJoinModeSelectionViewController];
          break;
        case 9:
          [listDelegate airportSettingsViewControllerDidTapKnownNetworks:selfCopy4];
          break;
        case 10:
          v45 = WFLogForCategory(0);
          v46 = OSLogForWFLogLevel(3uLL);
          if (WFCurrentLogLevel() >= 3 && v45 && os_log_type_enabled(v45, v46))
          {
            *buf = 136315138;
            v116 = "[WFAirportViewController tableView:didSelectRowAtIndexPath:]";
            _os_log_impl(&dword_273FB9000, v45, v46, "%s: tapped on auto hotspot row", buf, 0xCu);
          }

          [(WFAirportViewController *)selfCopy4 _pushAutoInstantHotspotOptionSelectionViewController];
          break;
      }
    }
  }

  else
  {
    if (v40 > 1)
    {
      if (v40 == 2)
      {
        popularNetworks = [(WFAirportViewController *)selfCopy4 popularNetworks];
        v67 = selfCopy4;
        v68 = [popularNetworks count];

        if (v25 < v68)
        {
          popularNetworks2 = [(WFAirportViewController *)v67 popularNetworks];
          v42 = [popularNetworks2 objectAtIndex:v25];

          v70 = WFLogForCategory(0);
          v71 = OSLogForWFLogLevel(3uLL);
          if (WFCurrentLogLevel() < 3 || !v70 || !os_log_type_enabled(v70, v71))
          {
            goto LABEL_114;
          }

          *buf = 136315394;
          v116 = "[WFAirportViewController tableView:didSelectRowAtIndexPath:]";
          v117 = 2112;
          v118 = v42;
          v72 = "%s: tapped on popular record %@";
          v73 = v70;
          v74 = v71;
          goto LABEL_113;
        }

        v42 = WFLogForCategory(0);
        v84 = OSLogForWFLogLevel(1uLL);
        if (!WFCurrentLogLevel() || !v42)
        {
          goto LABEL_122;
        }

        v85 = v42;
        if (os_log_type_enabled(v85, v84))
        {
          v90 = [v24 row];
          popularNetworks3 = [(WFAirportViewController *)self popularNetworks];
          v91 = [popularNetworks3 count];
          *buf = 136315650;
          v116 = "[WFAirportViewController tableView:didSelectRowAtIndexPath:]";
          v117 = 2050;
          v118 = v90;
          v119 = 2050;
          v120 = v91;
          v89 = "%s: cannot find popular network at index %{public}lu networks %{public}lu";
LABEL_120:
          _os_log_impl(&dword_273FB9000, v85, v84, v89, buf, 0x20u);
        }
      }

      else
      {
        if (v40 != 3)
        {
          adhocNetworks = [(WFAirportViewController *)selfCopy4 adhocNetworks];
          v42 = [adhocNetworks objectAtIndex:v25];

          v43 = WFLogForCategory(0);
          v44 = OSLogForWFLogLevel(3uLL);
          if (WFCurrentLogLevel() >= 3 && v43 && os_log_type_enabled(v43, v44))
          {
            *buf = 136315394;
            v116 = "[WFAirportViewController tableView:didSelectRowAtIndexPath:]";
            v117 = 2112;
            v118 = v42;
            _os_log_impl(&dword_273FB9000, v43, v44, "%s: tapped on adhoc record %@", buf, 0x16u);
          }

          [(WFAirportViewController *)selfCopy4 _promptToJoinAdhoc:v42];
          goto LABEL_122;
        }

        infraNetworks = [(WFAirportViewController *)selfCopy4 infraNetworks];
        v67 = selfCopy4;
        v78 = [infraNetworks count];

        if (v25 == v78)
        {
          v79 = WFLogForCategory(0);
          v80 = OSLogForWFLogLevel(3uLL);
          if (WFCurrentLogLevel() >= 3 && v79 && os_log_type_enabled(v79, v80))
          {
            *buf = 136315394;
            v116 = "[WFAirportViewController tableView:didSelectRowAtIndexPath:]";
            v117 = 2112;
            v118 = v24;
            _os_log_impl(&dword_273FB9000, v79, v80, "%s: tapped other network cell %@", buf, 0x16u);
          }

          [v107 deselectRowAtIndexPath:v24 animated:1];
          [listDelegate networkListViewControllerDidTapOtherNetwork:self];
          goto LABEL_123;
        }

        infraNetworks2 = [(WFAirportViewController *)v67 infraNetworks];
        v93 = [infraNetworks2 count];

        if (v25 < v93)
        {
          infraNetworks3 = [(WFAirportViewController *)v67 infraNetworks];
          v42 = [infraNetworks3 objectAtIndex:v25];

          v70 = WFLogForCategory(0);
          v95 = OSLogForWFLogLevel(3uLL);
          if (WFCurrentLogLevel() < 3 || !v70 || !os_log_type_enabled(v70, v95))
          {
            goto LABEL_114;
          }

          *buf = 136315394;
          v116 = "[WFAirportViewController tableView:didSelectRowAtIndexPath:]";
          v117 = 2112;
          v118 = v42;
          v72 = "%s: tapped on infra record %@";
          v73 = v70;
          v74 = v95;
LABEL_113:
          _os_log_impl(&dword_273FB9000, v73, v74, v72, buf, 0x16u);
LABEL_114:

          v64 = listDelegate;
          v65 = v67;
LABEL_115:
          [v64 networkListViewController:v65 didTapRecord:v42];
LABEL_122:

          goto LABEL_123;
        }

        v42 = WFLogForCategory(0);
        v84 = OSLogForWFLogLevel(1uLL);
        if (!WFCurrentLogLevel() || !v42)
        {
          goto LABEL_122;
        }

        v85 = v42;
        if (os_log_type_enabled(v85, v84))
        {
          v96 = [v24 row];
          popularNetworks3 = [(WFAirportViewController *)self infraNetworks];
          v97 = [popularNetworks3 count];
          *buf = 136315650;
          v116 = "[WFAirportViewController tableView:didSelectRowAtIndexPath:]";
          v117 = 2050;
          v118 = v96;
          v119 = 2050;
          v120 = v97;
          v89 = "%s: cannot find infra network at index %{public}lu networks %{public}lu";
          goto LABEL_120;
        }
      }

LABEL_121:

      goto LABEL_122;
    }

    if (v40)
    {
      if (v40 != 1)
      {
        goto LABEL_123;
      }

      knownNetworks3 = [(WFAirportViewController *)selfCopy4 knownNetworks];
      v48 = selfCopy4;
      v49 = [knownNetworks3 count];

      if (v25 >= v49)
      {
        v42 = WFLogForCategory(0);
        v84 = OSLogForWFLogLevel(1uLL);
        if (!WFCurrentLogLevel() || !v42)
        {
          goto LABEL_122;
        }

        v85 = v42;
        if (!os_log_type_enabled(v85, v84))
        {
          goto LABEL_121;
        }

        v86 = [v24 row];
        popularNetworks3 = [(WFAirportViewController *)self knownNetworks];
        v88 = [popularNetworks3 count];
        *buf = 136315650;
        v116 = "[WFAirportViewController tableView:didSelectRowAtIndexPath:]";
        v117 = 2050;
        v118 = v86;
        v119 = 2050;
        v120 = v88;
        v89 = "%s: cannot find known network at index %{public}lu networks %{public}lu";
        goto LABEL_120;
      }

      knownNetworks4 = [(WFAirportViewController *)v48 knownNetworks];
      v51 = [knownNetworks4 objectAtIndex:v25];

      selfCopy3 = v48;
      if ([v51 isInstantHotspot])
      {
        knownNetworks5 = [(WFAirportViewController *)v48 knownNetworks];
        v54 = [knownNetworks5 objectAtIndex:v25];

        objc_storeWeak(&self->_joiningHotspot, v54);
        v55 = [v107 cellForRowAtIndexPath:v24];
        [v55 setState:1];

        selfCopy3 = self;
      }

      v56 = WFLogForCategory(0);
      v57 = OSLogForWFLogLevel(3uLL);
      if (WFCurrentLogLevel() >= 3 && v56)
      {
        v58 = v56;
        if (os_log_type_enabled(v58, v57))
        {
          isInstantHotspot = [v51 isInstantHotspot];
          *buf = 136315650;
          v116 = "[WFAirportViewController tableView:didSelectRowAtIndexPath:]";
          v117 = 2112;
          v118 = v51;
          v119 = 1024;
          LODWORD(v120) = isInstantHotspot;
          _os_log_impl(&dword_273FB9000, v58, v57, "%s: tapped on known record %@ (hotspot %d)", buf, 0x1Cu);
        }

        v24 = v108;
      }

      [listDelegate networkListViewController:selfCopy3 didTapRecord:v51];
    }

    else if (-[WFAirportViewController showDiagnosticsCell](selfCopy4, "showDiagnosticsCell") && (v60 = [v24 row], v60 == -[WFAirportViewController rowCountWithPlacardCell:](selfCopy4, "rowCountWithPlacardCell:", 1)))
    {
      [listDelegate airportSettingsViewControllerDidTapDiagnosticsMode:selfCopy4 showNANUI:{-[WFAirportViewController showNANUI](selfCopy4, "showNANUI")}];
    }

    else
    {
      currentNetwork = [(WFAirportViewController *)selfCopy4 currentNetwork];
      if (currentNetwork)
      {
        v82 = currentNetwork;
        v83 = [v24 row];
        if (v83 == [(WFAirportViewController *)selfCopy4 rowCountWithPlacardCell:1])
        {
        }

        else
        {
          v99 = [v24 row];
          v100 = [(WFAirportViewController *)selfCopy4 rowCountWithPlacardCell:2];

          v101 = v99 == v100;
          selfCopy4 = self;
          if (!v101)
          {
            goto LABEL_123;
          }
        }

        v102 = WFLogForCategory(0);
        v103 = OSLogForWFLogLevel(3uLL);
        if (WFCurrentLogLevel() >= 3 && v102)
        {
          v104 = v102;
          if (os_log_type_enabled(v104, v103))
          {
            currentNetwork2 = [(WFAirportViewController *)selfCopy4 currentNetwork];
            *buf = 136315394;
            v116 = "[WFAirportViewController tableView:didSelectRowAtIndexPath:]";
            v117 = 2112;
            v118 = currentNetwork2;
            _os_log_impl(&dword_273FB9000, v104, v103, "%s: tapped on current network %@", buf, 0x16u);
          }
        }

        currentNetwork3 = [(WFAirportViewController *)selfCopy4 currentNetwork];
        [listDelegate networkListViewController:selfCopy4 didTapRecord:currentNetwork3];
      }
    }
  }

LABEL_123:
  [v107 deselectRowAtIndexPath:v24 animated:1];

  v98 = *MEMORY[0x277D85DE8];
}

- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path
{
  pathCopy = path;
  sections = [(WFAirportViewController *)self sections];
  v7 = [sections indexOfObject:&unk_2883224F8];

  section = [pathCopy section];
  return section == v7;
}

- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path
{
  v20[1] = *MEMORY[0x277D85DE8];
  pathCopy = path;
  networksToBeDeleted = [(WFAirportViewController *)self networksToBeDeleted];
  v9 = [networksToBeDeleted count];
  v10 = MEMORY[0x277CBEB18];
  if (v9)
  {
    networksToBeDeleted2 = [(WFAirportViewController *)self networksToBeDeleted];
    v12 = [v10 arrayWithArray:networksToBeDeleted2];
  }

  else
  {
    v12 = objc_opt_new();
  }

  if (style == 1)
  {
    section = [pathCopy section];
    sections = [(WFAirportViewController *)self sections];
    v15 = [sections indexOfObject:&unk_2883224F8];

    if (section == v15)
    {
      v16 = -[NSMutableArray objectAtIndex:](self->_editableKnownNetworks, "objectAtIndex:", [pathCopy row]);
      [v12 addObject:v16];

      -[NSMutableArray removeObjectAtIndex:](self->_editableKnownNetworks, "removeObjectAtIndex:", [pathCopy row]);
      tableView = [(WFAirportViewController *)self tableView];
      v20[0] = pathCopy;
      v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
      [tableView deleteRowsAtIndexPaths:v18 withRowAnimation:0];
    }

    [(WFAirportViewController *)self setNetworksToBeDeleted:v12];
    [(WFAirportViewController *)self _updateKnownNetworksDoneButtonForEditability];
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)tableView:(id)view accessoryButtonTappedForRowWithIndexPath:(id)path
{
  v37 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  v6 = -[WFAirportViewController _sectionTypeAtSection:](self, "_sectionTypeAtSection:", [pathCopy section]);
  v7 = [pathCopy row];
  if (v6 <= 2)
  {
    switch(v6)
    {
      case 0:
        currentNetwork = [(WFAirportViewController *)self currentNetwork];
        goto LABEL_24;
      case 1:
        knownNetworks = [(WFAirportViewController *)self knownNetworks];
        v21 = [knownNetworks count];

        if (v7 >= v21)
        {
          goto LABEL_33;
        }

        knownNetworks2 = [(WFAirportViewController *)self knownNetworks];
        break;
      case 2:
        popularNetworks = [(WFAirportViewController *)self popularNetworks];
        v12 = [popularNetworks count];

        if (v7 >= v12)
        {
          goto LABEL_33;
        }

        knownNetworks2 = [(WFAirportViewController *)self popularNetworks];
        break;
      default:
        goto LABEL_33;
    }
  }

  else if (v6 > 10)
  {
    if (v6 == 11)
    {
      editableKnownNetworks = [(WFAirportViewController *)self editableKnownNetworks];
      v19 = [editableKnownNetworks count];

      if (v7 >= v19)
      {
        goto LABEL_33;
      }

      knownNetworks2 = [(WFAirportViewController *)self editableKnownNetworks];
    }

    else
    {
      if (v6 != 12)
      {
        goto LABEL_33;
      }

      managedKnownNetworks = [(WFAirportViewController *)self managedKnownNetworks];
      v14 = [managedKnownNetworks count];

      if (v7 >= v14)
      {
        goto LABEL_33;
      }

      knownNetworks2 = [(WFAirportViewController *)self managedKnownNetworks];
    }
  }

  else if (v6 == 3)
  {
    infraNetworks = [(WFAirportViewController *)self infraNetworks];
    v17 = [infraNetworks count];

    if (v7 >= v17)
    {
      goto LABEL_33;
    }

    knownNetworks2 = [(WFAirportViewController *)self infraNetworks];
  }

  else
  {
    if (v6 != 4)
    {
      goto LABEL_33;
    }

    adhocNetworks = [(WFAirportViewController *)self adhocNetworks];
    v9 = [adhocNetworks count];

    if (v7 >= v9)
    {
      goto LABEL_33;
    }

    knownNetworks2 = [(WFAirportViewController *)self adhocNetworks];
  }

  v22 = knownNetworks2;
  currentNetwork = [knownNetworks2 objectAtIndex:v7];

LABEL_24:
  if ((v6 - 11) >= 2)
  {
    v23 = 1;
  }

  else
  {
    v23 = 2;
  }

  if (currentNetwork)
  {
    v24 = WFLogForCategory(0);
    v25 = OSLogForWFLogLevel(3uLL);
    if (WFCurrentLogLevel() >= 3 && v24 && os_log_type_enabled(v24, v25))
    {
      v29 = 136315906;
      v30 = "[WFAirportViewController tableView:accessoryButtonTappedForRowWithIndexPath:]";
      v31 = 2112;
      v32 = currentNetwork;
      v33 = 2112;
      v34 = pathCopy;
      v35 = 2048;
      v36 = v23;
      _os_log_impl(&dword_273FB9000, v24, v25, "%s: tapped on accessory for record %@ at indexPath %@, context: %ld", &v29, 0x2Au);
    }

    listDelegate = [(WFAirportViewController *)self listDelegate];
    [listDelegate networkListViewController:self showSettingsForNetwork:currentNetwork context:v23];

    goto LABEL_37;
  }

LABEL_33:
  currentNetwork = WFLogForCategory(0);
  v27 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && currentNetwork && os_log_type_enabled(currentNetwork, v27))
  {
    v29 = 138543362;
    v30 = pathCopy;
    _os_log_impl(&dword_273FB9000, currentNetwork, v27, "Accessory button tapped nil record at indexPath %{public}@", &v29, 0xCu);
  }

LABEL_37:

  v28 = *MEMORY[0x277D85DE8];
}

- (void)_promptToJoinAdhoc:(id)adhoc
{
  adhocCopy = adhoc;
  v5 = MEMORY[0x277CCACA8];
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"kWFLocAdhocJoinTitle" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
  title = [adhocCopy title];
  v22 = [v5 stringWithFormat:v7, title];

  v9 = MEMORY[0x277D75110];
  v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"kWFLocAdhocJoinBody" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
  v12 = [v9 alertControllerWithTitle:v22 message:v11 preferredStyle:1];

  v13 = MEMORY[0x277D750F8];
  v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v15 = [v14 localizedStringForKey:@"kWFLocAdhocJoinConfirmButton" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __46__WFAirportViewController__promptToJoinAdhoc___block_invoke;
  v23[3] = &unk_279EC56F0;
  v23[4] = self;
  v24 = adhocCopy;
  v16 = adhocCopy;
  v17 = [v13 actionWithTitle:v15 style:0 handler:v23];

  [v12 addAction:v17];
  v18 = MEMORY[0x277D750F8];
  v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v20 = [v19 localizedStringForKey:@"kWFLocAdhocJoinCancelButton" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
  v21 = [v18 actionWithTitle:v20 style:1 handler:0];

  [v12 addAction:v21];
  [v12 setPreferredAction:v17];
  [(WFAirportViewController *)self presentViewController:v12 animated:1 completion:0];
}

void __46__WFAirportViewController__promptToJoinAdhoc___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) listDelegate];
  [v2 networkListViewController:*(a1 + 32) didTapRecord:*(a1 + 40)];

  v4 = [*(a1 + 32) tableView];
  v3 = [MEMORY[0x277CCAA70] indexPathForRow:0 inSection:0];
  [v4 scrollToRowAtIndexPath:v3 atScrollPosition:1 animated:1];
}

- (id)_defaultSectionsForPowerState:(BOOL)state
{
  stateCopy = state;
  v5 = [MEMORY[0x277CBEB18] arrayWithObjects:{&unk_2883224B0, &unk_288322498, 0}];
  if ([(WFAirportViewController *)self _isChinaDevice])
  {
    if ([(WFAirportViewController *)self deviceCapability]== 3)
    {
      [v5 addObjectsFromArray:&unk_288322AE0];
    }

    if ([(WFAirportViewController *)self deviceCapability]!= 4)
    {
      [v5 addObjectsFromArray:&unk_288322AF8];
    }
  }

  if ([(WFAirportViewController *)self _askToJoinShouldBeVisible])
  {
    [v5 addObject:&unk_2883224C8];
    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  self->_askToJoinShown = v6;
  WeakRetained = objc_loadWeakRetained(&self->_listDelegate);
  v8 = [WeakRetained networkListViewControllerNetworkRestrictionActive:self];

  if ((v8 & 1) == 0)
  {
    [v5 addObject:&unk_2883224E0];
  }

  v9 = [MEMORY[0x277CBEB18] arrayWithObjects:{&unk_2883224B0, 0}];
  if ([(WFAirportViewController *)self _isChinaDevice])
  {
    if ([(WFAirportViewController *)self deviceCapability]== 3)
    {
      [v9 addObjectsFromArray:&unk_288322B10];
    }

    if ([(WFAirportViewController *)self deviceCapability]!= 4)
    {
      [v9 addObjectsFromArray:&unk_288322B28];
    }
  }

  if (stateCopy)
  {
    v10 = v5;
  }

  else
  {
    v10 = v9;
  }

  v11 = [MEMORY[0x277CBEB70] orderedSetWithArray:v10];

  return v11;
}

- (unint64_t)_sectionTypeAtSection:(int64_t)section
{
  sections = [(WFAirportViewController *)self sections];
  v6 = [sections count];

  if (v6 <= section)
  {
    [(WFAirportViewController *)section _sectionTypeAtSection:?];
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    sections2 = [(WFAirportViewController *)self sections];
    v8 = [sections2 objectAtIndex:section];
    integerValue = [v8 integerValue];

    return integerValue;
  }
}

- (void)_powerSwitchChanged:(id)changed
{
  changedCopy = changed;
  v5 = dispatch_time(0, 200000000);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__WFAirportViewController__powerSwitchChanged___block_invoke;
  v7[3] = &unk_279EC5588;
  v8 = changedCopy;
  selfCopy = self;
  v6 = changedCopy;
  dispatch_after(v5, MEMORY[0x277D85CD0], v7);
}

void __47__WFAirportViewController__powerSwitchChanged___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) isOn];
  v3 = WFLogForCategory(0);
  v4 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v3)
  {
    v5 = v3;
    if (os_log_type_enabled(v5, v4))
    {
      v6 = WFPowerStateToggleToString(v2);
      v9 = 136315394;
      v10 = "[WFAirportViewController _powerSwitchChanged:]_block_invoke";
      v11 = 2112;
      v12 = v6;
      _os_log_impl(&dword_273FB9000, v5, v4, "%s: user toggled power to %@", &v9, 0x16u);
    }
  }

  v7 = [*(a1 + 40) listDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v7 networkListViewController:*(a1 + 40) userDidChangePowerToggle:v2];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_updateAskToJoinMode:(int64_t)mode
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = WFLogForCategory(0);
  v6 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v5 && os_log_type_enabled(v5, v6))
  {
    v13 = 136315394;
    v14 = "[WFAirportViewController _updateAskToJoinMode:]";
    v15 = 1024;
    modeCopy = mode;
    _os_log_impl(&dword_273FB9000, v5, v6, "%s: ask to join state changed %d", &v13, 0x12u);
  }

  listDelegate = [(WFAirportViewController *)self listDelegate];
  [listDelegate airportSettingsViewController:self setAskToJoinMode:mode];

  sections = [(WFAirportViewController *)self sections];
  v9 = [sections indexOfObject:&unk_2883224C8];

  if (v9 != 0x7FFFFFFFFFFFFFFFLL)
  {
    tableView = [(WFAirportViewController *)self tableView];
    v11 = [MEMORY[0x277CCAA78] indexSetWithIndex:v9];
    [tableView _reloadSectionHeaderFooters:v11 withRowAnimation:100];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_enableWAPISwitchChanged:(id)changed
{
  v14 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  v5 = WFLogForCategory(0);
  v6 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v5)
  {
    v7 = v5;
    if (os_log_type_enabled(v7, v6))
    {
      v10 = 136315394;
      v11 = "[WFAirportViewController _enableWAPISwitchChanged:]";
      v12 = 1024;
      isOn = [changedCopy isOn];
      _os_log_impl(&dword_273FB9000, v7, v6, "%s: wapi state changed %d", &v10, 0x12u);
    }
  }

  listDelegate = [(WFAirportViewController *)self listDelegate];
  [listDelegate networkListViewController:self setWAPIEnabled:{objc_msgSend(changedCopy, "isOn")}];

  v9 = *MEMORY[0x277D85DE8];
}

- (id)_sectionNameAtIndex:(unint64_t)index
{
  sections = [(WFAirportViewController *)self sections];
  v6 = [sections objectAtIndexedSubscript:index];

  if (v6)
  {
    v7 = -[WFAirportViewController _nameOfSection:](self, "_nameOfSection:", [v6 unsignedIntegerValue]);
  }

  else
  {
    v7 = @"Unknown section";
  }

  return v7;
}

- (id)_nameOfSection:(unint64_t)section
{
  if (section > 0xC)
  {
    return @"<unknown>";
  }

  else
  {
    return off_279EC58E8[section];
  }
}

- (void)_dumpSections
{
  v24 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  sections = [(WFAirportViewController *)self sections];
  v4 = [sections countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v16;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(sections);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = WFLogForCategory(0);
        v11 = OSLogForWFLogLevel(1uLL);
        if (WFCurrentLogLevel() && v10)
        {
          v12 = v10;
          if (os_log_type_enabled(v12, v11))
          {
            v13 = -[WFAirportViewController _nameOfSection:](self, "_nameOfSection:", [v9 integerValue]);
            *buf = 134218242;
            v20 = v6;
            v21 = 2114;
            v22 = v13;
            _os_log_impl(&dword_273FB9000, v12, v11, "%lu- %{public}@", buf, 0x16u);
          }
        }

        ++v6;
      }

      v5 = [sections countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v5);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (BOOL)_isChinaDevice
{
  deviceCapability = [(WFAirportViewController *)self deviceCapability];

  return WFCapabilityIsChinaDevice(deviceCapability);
}

- (void)_pushAutoInstantHotspotOptionSelectionViewController
{
  v3 = MEMORY[0x277CBEA60];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"kWFLocAutoInstantHotspotJoinNeverTitle" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"kWFLocAutoInstantHotspotJoinAskTitle" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"kWFLocAutoInstantHotspotJoinAutoTitle" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
  v10 = [v3 arrayWithObjects:{v5, v7, v9, 0}];

  v11 = [[WFValueListViewController alloc] initWithTitles:v10 switchTitle:0];
  v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v13 = [v12 localizedStringForKey:@"kWFLocAutoInstantHotspotTitle" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
  navigationItem = [(WFValueListViewController *)v11 navigationItem];
  [navigationItem setTitle:v13];

  listDelegate = [(WFAirportViewController *)self listDelegate];
  v16 = -[WFAirportViewController _getAutoHotspotOptionText:](self, "_getAutoHotspotOptionText:", [listDelegate networkListViewControllerAutoInstantHotspotOption:self]);
  [(WFValueListViewController *)v11 setSelectedTitle:v16];

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __79__WFAirportViewController__pushAutoInstantHotspotOptionSelectionViewController__block_invoke;
  v17[3] = &unk_279EC5718;
  v17[4] = self;
  [(WFValueListViewController *)v11 setCompletionHandler:v17];
  [(UIViewController *)self wf_pushViewController:v11 animated:1];
}

void __79__WFAirportViewController__pushAutoInstantHotspotOptionSelectionViewController__block_invoke(uint64_t a1, void *a2)
{
  v16 = a2;
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"kWFLocAutoInstantHotspotJoinAutoTitle" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
  v6 = [v16 isEqualToString:v5];

  if (v6)
  {
    v7 = 2;
  }

  else
  {
    v8 = *(a1 + 32);
    v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:@"kWFLocAutoInstantHotspotJoinAskTitle" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
    v11 = [v16 isEqualToString:v10];

    if (v11)
    {
      v7 = 1;
    }

    else
    {
      v12 = *(a1 + 32);
      v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v14 = [v13 localizedStringForKey:@"kWFLocAutoInstantHotspotJoinNeverTitle" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
      v15 = [v16 isEqualToString:v14];

      if (!v15)
      {
        goto LABEL_8;
      }

      v7 = 0;
    }
  }

  [*(a1 + 32) updateAutoInstantHotspotSetting:v7];
LABEL_8:
}

- (void)_pushAskToJoinModeSelectionViewController
{
  v3 = MEMORY[0x277CBEA60];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"kWFLocAskToJoinDetailOff" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"kWFLocAskToJoinDetailNotify" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"kWFLocAskToJoinDetailAsk" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
  v10 = [v3 arrayWithObjects:{v5, v7, v9, 0}];

  v11 = [[WFValueListViewController alloc] initWithTitles:v10 switchTitle:0];
  v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v13 = [v12 localizedStringForKey:@"kWFLocAskToJoinTitle" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
  navigationItem = [(WFValueListViewController *)v11 navigationItem];
  [navigationItem setTitle:v13];

  v15 = [(WFAirportViewController *)self _askToJoinStateStringForATJMode:[(WFAirportViewController *)self _askToJoinMode]];
  [(WFValueListViewController *)v11 setSelectedTitle:v15];

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __68__WFAirportViewController__pushAskToJoinModeSelectionViewController__block_invoke;
  v17[3] = &unk_279EC5718;
  v17[4] = self;
  [(WFValueListViewController *)v11 setCompletionHandler:v17];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __68__WFAirportViewController__pushAskToJoinModeSelectionViewController__block_invoke_2;
  v16[3] = &unk_279EC5740;
  v16[4] = self;
  [(WFValueListViewController *)v11 setFooterHandler:v16];
  [(UIViewController *)self wf_pushViewController:v11 animated:1];
}

uint64_t __68__WFAirportViewController__pushAskToJoinModeSelectionViewController__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [v2 _askToJoinModeFromString:a2];

  return [v2 _updateAskToJoinMode:v3];
}

uint64_t __68__WFAirportViewController__pushAskToJoinModeSelectionViewController__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [v2 _askToJoinModeFromString:a2];

  return [v2 _askToJoinFooterStringForMode:v3];
}

- (void)_updateNetworkRestrictionHeader
{
  listDelegate = [(WFAirportViewController *)self listDelegate];
  if (([listDelegate networkListViewControllerNetworkRestrictionActive:self] & 1) != 0 || (-[WFAirportViewController tableView](self, "tableView"), v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "tableHeaderView"), v4 = objc_claimAutoreleasedReturnValue(), v4, v3, v4))
  {
    if ([listDelegate networkListViewControllerNetworkRestrictionActive:self] && !-[WFAirportViewController isInEditingMode](self, "isInEditingMode"))
    {
      tableView = [(WFAirportViewController *)self tableView];
      [tableView bounds];
      v8 = v7;

      tableView3 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{0.0, 0.0, v8, 0.0}];
      v9 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{0.0, 0.0, v8, 100.0}];
      v10 = [MEMORY[0x277D75348] colorWithRed:0.427450985 green:0.427450985 blue:0.447058827 alpha:1.0];
      [v9 setTextColor:v10];

      [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
      [v9 setNumberOfLines:0];
      [v9 setTextAlignment:1];
      if ([(WFAirportViewController *)self _isChinaDevice])
      {
        v11 = [@"kWFLocNetworkRestrictionActive" stringByAppendingString:@"_CH"];
      }

      else
      {
        v11 = @"kWFLocNetworkRestrictionActive";
      }

      v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v13 = [v12 localizedStringForKey:v11 value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];

      v14 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76968]];
      [v9 setFont:v14];

      [v9 setText:v13];
      [tableView3 addSubview:v9];
      v15 = MEMORY[0x277CCAAD0];
      v16 = _NSDictionaryOfVariableBindings(&cfstr_Headerlabel.isa, v9, 0);
      v17 = [v15 constraintsWithVisualFormat:@"V:|-20-[headerLabel]-20-|" options:0 metrics:0 views:v16];
      [tableView3 addConstraints:v17];

      v18 = MEMORY[0x277CCAAD0];
      v19 = _NSDictionaryOfVariableBindings(&cfstr_Headerlabel.isa, v9, 0);
      v20 = [v18 constraintsWithVisualFormat:@"|-40-[headerLabel]-40-|" options:0 metrics:0 views:v19];
      [tableView3 addConstraints:v20];

      v21 = [MEMORY[0x277CCAAD0] constraintWithItem:tableView3 attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:v8];
      [tableView3 addConstraint:v21];
      [tableView3 systemLayoutSizeFittingSize:{*MEMORY[0x277D76C78], *(MEMORY[0x277D76C78] + 8)}];
      v23 = v22 + 40.0;
      [tableView3 removeConstraint:v21];
      [tableView3 setFrame:{0.0, 0.0, v8, v23}];
      [tableView3 setTranslatesAutoresizingMaskIntoConstraints:1];
      [v9 setPreferredMaxLayoutWidth:v8];
      tableView2 = [(WFAirportViewController *)self tableView];
      [tableView2 setTableHeaderView:tableView3];
    }

    else
    {
      tableView3 = [(WFAirportViewController *)self tableView];
      [tableView3 setTableHeaderView:0];
    }
  }
}

- (id)_askToJoinStateStringForATJMode:(int64_t)mode
{
  if (mode > 2)
  {
    v5 = 0;
  }

  else
  {
    v3 = off_279EC5950[mode];
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = [v4 localizedStringForKey:v3 value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
  }

  return v5;
}

- (id)_askToJoinFooterString
{
  _askToJoinMode = [(WFAirportViewController *)self _askToJoinMode];

  return [(WFAirportViewController *)self _askToJoinFooterStringForMode:_askToJoinMode];
}

- (id)_askToJoinFooterStringForMode:(int64_t)mode
{
  if (mode > 2)
  {
    v5 = 0;
  }

  else
  {
    v3 = off_279EC5968[mode];
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = [v4 localizedStringForKey:v3 value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
  }

  return v5;
}

- (int64_t)_askToJoinMode
{
  listDelegate = [(WFAirportViewController *)self listDelegate];
  v4 = [listDelegate airportSettingsViewControllerAskToJoinMode:self];

  return v4;
}

- (void)_reloadCurrentNetworkCell
{
  v12 = *MEMORY[0x277D85DE8];
  _currentNetworkCellIndexPath = [(WFAirportViewController *)self _currentNetworkCellIndexPath];
  if (_currentNetworkCellIndexPath)
  {
    v4 = WFLogForCategory(0);
    v5 = OSLogForWFLogLevel(4uLL);
    if (WFCurrentLogLevel() >= 4 && v4 && os_log_type_enabled(v4, v5))
    {
      *buf = 136315138;
      v11 = "[WFAirportViewController _reloadCurrentNetworkCell]";
      _os_log_impl(&dword_273FB9000, v4, v5, "%s: reloading current network index path", buf, 0xCu);
    }

    tableView = [(WFAirportViewController *)self tableView];
    v9 = _currentNetworkCellIndexPath;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v9 count:1];
    [tableView reloadRowsAtIndexPaths:v7 withRowAnimation:5];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (id)_currentNetworkCellIndexPath
{
  if ([(WFAirportViewController *)self showDiagnosticsCell])
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  v4 = [(WFAirportViewController *)self rowCountWithPlacardCell:v3];
  sections = [(WFAirportViewController *)self sections];
  v6 = [sections indexOfObject:&unk_2883224B0];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [(WFAirportViewController *)self _currentNetworkCellIndexPath];
    v7 = 0;
  }

  else
  {
    v7 = [MEMORY[0x277CCAA70] indexPathForRow:v4 inSection:v6];
  }

  return v7;
}

- (void)_reloadSectionForHotspotChange
{
  v16 = *MEMORY[0x277D85DE8];
  tableView = [(WFAirportViewController *)self tableView];
  [tableView beginUpdates];

  sections = [(WFAirportViewController *)self sections];
  v5 = [sections indexOfObject:&unk_288322480];

  tableView2 = WFLogForCategory(0);
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = OSLogForWFLogLevel(3uLL);
    if (WFCurrentLogLevel() >= 3 && tableView2 && os_log_type_enabled(tableView2, v7))
    {
      v12 = 136315138;
      v13 = "[WFAirportViewController _reloadSectionForHotspotChange]";
      _os_log_impl(&dword_273FB9000, tableView2, v7, "%s: hotspot section not found", &v12, 0xCu);
    }
  }

  else
  {
    v8 = OSLogForWFLogLevel(4uLL);
    if (WFCurrentLogLevel() >= 4 && tableView2 && os_log_type_enabled(tableView2, v8))
    {
      v12 = 136315394;
      v13 = "[WFAirportViewController _reloadSectionForHotspotChange]";
      v14 = 1024;
      v15 = v5;
      _os_log_impl(&dword_273FB9000, tableView2, v8, "%s: reloading hotspot in section %d", &v12, 0x12u);
    }

    tableView2 = [(WFAirportViewController *)self tableView];
    v9 = [MEMORY[0x277CCAA78] indexSetWithIndex:v5];
    [tableView2 reloadSections:v9 withRowAnimation:5];
  }

  tableView3 = [(WFAirportViewController *)self tableView];
  [tableView3 endUpdates];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_reloadPowerSection
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__WFAirportViewController__reloadPowerSection__block_invoke;
  block[3] = &unk_279EC5538;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __46__WFAirportViewController__reloadPowerSection__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) sections];
  v3 = [v2 indexOfObject:&unk_2883224B0];

  if (v3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = WFLogForCategory(0);
    v5 = OSLogForWFLogLevel(3uLL);
    if (WFCurrentLogLevel() >= 3 && v4 && os_log_type_enabled(v4, v5))
    {
      *buf = 136315138;
      v11 = "[WFAirportViewController _reloadPowerSection]_block_invoke";
      _os_log_impl(&dword_273FB9000, v4, v5, "%s: power section not found", buf, 0xCu);
    }

    v6 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v9 = [*(a1 + 32) tableView];
    v7 = [MEMORY[0x277CCAA78] indexSetWithIndex:v3];
    [v9 reloadSections:v7 withRowAnimation:5];

    v8 = *MEMORY[0x277D85DE8];
  }
}

- (void)setUserAutoJoinEnabled:(BOOL)enabled
{
  v23 = *MEMORY[0x277D85DE8];
  if (self->_userAutoJoinEnabled != enabled)
  {
    enabledCopy = enabled;
    v5 = WFLogForCategory(0);
    v6 = OSLogForWFLogLevel(3uLL);
    if (WFCurrentLogLevel() >= 3 && v5 && os_log_type_enabled(v5, v6))
    {
      v19 = 136315394;
      v20 = "[WFAirportViewController setUserAutoJoinEnabled:]";
      v21 = 1024;
      v22 = enabledCopy;
      _os_log_impl(&dword_273FB9000, v5, v6, "%s: userAutoJoinEnabled %d", &v19, 0x12u);
    }

    self->_userAutoJoinEnabled = enabledCopy;
    sections = [(WFAirportViewController *)self sections];
    v8 = [sections indexOfObject:&unk_2883224B0];

    if (v8 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = WFLogForCategory(0);
      v10 = OSLogForWFLogLevel(1uLL);
      if (WFCurrentLogLevel() && v9 && os_log_type_enabled(v9, v10))
      {
        v19 = 136315138;
        v20 = "[WFAirportViewController setUserAutoJoinEnabled:]";
        _os_log_impl(&dword_273FB9000, v9, v10, "%s: power section not found", &v19, 0xCu);
      }

      [(WFAirportViewController *)self _dumpSections];
    }

    else
    {
      indexSet = [MEMORY[0x277CCAB58] indexSet];
      [indexSet addIndex:v8];
      sections2 = [(WFAirportViewController *)self sections];
      v13 = [sections2 indexOfObject:&unk_2883224C8];

      if (v13 != 0x7FFFFFFFFFFFFFFFLL)
      {
        tableView = [(WFAirportViewController *)self tableView];
        sections3 = [(WFAirportViewController *)self sections];
        v16 = [tableView numberOfRowsInSection:{objc_msgSend(sections3, "indexOfObject:", &unk_2883224C8)}];

        if (v16)
        {
          [indexSet addIndex:v13];
        }
      }

      tableView2 = [(WFAirportViewController *)self tableView];
      [tableView2 _reloadSectionHeaderFooters:indexSet withRowAnimation:100];
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)updateAutoInstantHotspotSetting:(int64_t)setting
{
  listDelegate = [(WFAirportViewController *)self listDelegate];
  [listDelegate networkListViewController:self setAutoInstantOption:setting];
}

- (id)_getAutoHotspotOptionText:(int64_t)text
{
  if (text > 2)
  {
    v5 = 0;
  }

  else
  {
    v3 = off_279EC5980[text];
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = [v4 localizedStringForKey:v3 value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
  }

  return v5;
}

- (NSString)userAutoJoinDisabledWarning
{
  userAutoJoinDisabledWarning = self->_userAutoJoinDisabledWarning;
  if (!userAutoJoinDisabledWarning)
  {
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    if ([(WFAirportViewController *)self _isChinaDevice])
    {
      v5 = @"kWFLocUserAutoJoinDisabledWarningCH";
    }

    else
    {
      v5 = @"kWFLocUserAutoJoinDisabledWarning";
    }

    v6 = [v4 localizedStringForKey:v5 value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
    v7 = self->_userAutoJoinDisabledWarning;
    self->_userAutoJoinDisabledWarning = v6;

    userAutoJoinDisabledWarning = self->_userAutoJoinDisabledWarning;
  }

  return userAutoJoinDisabledWarning;
}

- (NSString)powerOffLocationWarning
{
  v28 = *MEMORY[0x277D85DE8];
  powerOffLocationWarning = self->_powerOffLocationWarning;
  if (!powerOffLocationWarning)
  {
    _isChinaDevice = [(WFAirportViewController *)self _isChinaDevice];
    v5 = MGGetBoolAnswer();
    listDelegate = [(WFAirportViewController *)self listDelegate];
    v7 = [listDelegate networkListViewControllerIsAutoUnlockEnabled:self];

    v8 = WFLogForCategory(0);
    v9 = OSLogForWFLogLevel(3uLL);
    if (WFCurrentLogLevel() >= 3 && v8 && os_log_type_enabled(v8, v9))
    {
      v20 = 136315906;
      v21 = "[WFAirportViewController powerOffLocationWarning]";
      v22 = 1024;
      v23 = _isChinaDevice;
      v24 = 1024;
      v25 = v5;
      v26 = 1024;
      v27 = v7;
      _os_log_impl(&dword_273FB9000, v8, v9, "%s: chinaDevice: %d, cellularDevice: %d, autoUnlockEnabled: %d", &v20, 0x1Eu);
    }

    v10 = @"kWFLocLocationServicesWarning";
    if (_isChinaDevice)
    {
      v10 = @"kWFLocLocationServicesWarningCH";
    }

    v11 = @"kWFLocLocationServicesCellularWarning";
    if (_isChinaDevice)
    {
      v11 = @"kWFLocLocationServicesCellularWarningCH";
    }

    v12 = @"kWFLocAutoUnlockLocationServicesWarning";
    if (v5)
    {
      v10 = v11;
    }

    v13 = @"kWFLocAutoUnlockLocationServicesCellularWarning";
    if (_isChinaDevice)
    {
      v12 = @"kWFLocAutoUnlockLocationServicesWarningCH";
      v13 = @"kWFLocAutoUnlockLocationServicesCellularWarningCH";
    }

    if (!v5)
    {
      v13 = v12;
    }

    if (v7)
    {
      v10 = v13;
    }

    v14 = v10;
    v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v16 = [v15 localizedStringForKey:v14 value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
    v17 = self->_powerOffLocationWarning;
    self->_powerOffLocationWarning = v16;

    powerOffLocationWarning = self->_powerOffLocationWarning;
  }

  v18 = *MEMORY[0x277D85DE8];

  return powerOffLocationWarning;
}

- (int64_t)_askToJoinModeFromString:(id)string
{
  stringCopy = string;
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"kWFLocAskToJoinDetailOff" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
  v6 = [stringCopy isEqualToString:v5];

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"kWFLocAskToJoinDetailNotify" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
    v10 = [stringCopy isEqualToString:v9];

    if (v10)
    {
      v7 = 1;
    }

    else
    {
      v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v12 = [v11 localizedStringForKey:@"kWFLocAskToJoinDetailAsk" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
      v13 = [stringCopy isEqualToString:v12];

      if (v13)
      {
        v7 = 2;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  return v7;
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v10.receiver = self;
  v10.super_class = WFAirportViewController;
  coordinatorCopy = coordinator;
  [(WFAirportViewController *)&v10 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  v8[4] = self;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __78__WFAirportViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v9[3] = &unk_279EC5768;
  v9[4] = self;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __78__WFAirportViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2;
  v8[3] = &unk_279EC5768;
  [coordinatorCopy animateAlongsideTransition:v9 completion:v8];
}

void __78__WFAirportViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) tableView];
  [v1 reloadData];
}

- (void)_processPendingCurrentNetworkUpdate
{
  v15 = *MEMORY[0x277D85DE8];
  if (self->_pendingCurrentNetworkUpdate)
  {
    v3 = WFLogForCategory(0);
    v4 = OSLogForWFLogLevel(3uLL);
    if (WFCurrentLogLevel() >= 3 && v3 && os_log_type_enabled(v3, v4))
    {
      pendingCurrentNetworkUpdate = self->_pendingCurrentNetworkUpdate;
      *buf = 136315394;
      *&buf[4] = "[WFAirportViewController _processPendingCurrentNetworkUpdate]";
      *&buf[12] = 2112;
      *&buf[14] = pendingCurrentNetworkUpdate;
      _os_log_impl(&dword_273FB9000, v3, v4, "%s: pending update='%@'", buf, 0x16u);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v12 = __Block_byref_object_copy__0;
    v13 = __Block_byref_object_dispose__0;
    network = [(WFPendingNetworkUpdate *)self->_pendingCurrentNetworkUpdate network];
    if (network)
    {
      network2 = [(WFPendingNetworkUpdate *)self->_pendingCurrentNetworkUpdate network];
      v14 = [network2 copyWithZone:0];
    }

    else
    {
      v14 = 0;
    }

    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __62__WFAirportViewController__processPendingCurrentNetworkUpdate__block_invoke;
    v10[3] = &unk_279EC5790;
    v10[4] = self;
    v10[5] = buf;
    dispatch_async(MEMORY[0x277D85CD0], v10);
    v8 = self->_pendingCurrentNetworkUpdate;
    self->_pendingCurrentNetworkUpdate = 0;

    _Block_object_dispose(buf, 8);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)knownNetworksWillResignActive
{
  if ([(WFAirportViewController *)self isInEditingMode])
  {
    if (!self->_screenProtector && ![(WFAirportViewController *)self userTurnedOffPasscode])
    {
      v3 = [WFLockView alloc];
      v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v5 = [v4 localizedStringForKey:@"kWFLocKnownNetworksLockTitle" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
      navigationController = [(WFAirportViewController *)self navigationController];
      topViewController = [navigationController topViewController];
      view = [topViewController view];
      v9 = [(WFLockView *)v3 initWithTitle:v5 viewToCover:view];
      screenProtector = self->_screenProtector;
      self->_screenProtector = v9;

      navigationController2 = [(WFAirportViewController *)self navigationController];
      [(WFLockView *)self->_screenProtector setBelongedNavigationController:navigationController2];
    }

    superview = [(WFLockView *)self->_screenProtector superview];
    view2 = [(WFAirportViewController *)self view];
    if ([superview isEqual:view2])
    {
    }

    else
    {
      userTurnedOffPasscode = [(WFAirportViewController *)self userTurnedOffPasscode];

      if (!userTurnedOffPasscode)
      {
        v14 = WFLogForCategory(0);
        v15 = OSLogForWFLogLevel(3uLL);
        if (WFCurrentLogLevel() >= 3 && v14 && os_log_type_enabled(v14, v15))
        {
          *buf = 0;
          _os_log_impl(&dword_273FB9000, v14, v15, "Showing screen protector when preferences resign active in edit mode.", buf, 2u);
        }

        navigationController3 = [(WFAirportViewController *)self navigationController];
        topViewController2 = [navigationController3 topViewController];
        view3 = [topViewController2 view];
        [view3 addSubview:self->_screenProtector];

        navigationController4 = [(WFAirportViewController *)self navigationController];
        topViewController3 = [navigationController4 topViewController];
        navigationItem = [topViewController3 navigationItem];
        [navigationItem setRightBarButtonItem:0];

        navigationController5 = [(WFAirportViewController *)self navigationController];
        topViewController4 = [navigationController5 topViewController];
        navigationItem2 = [topViewController4 navigationItem];
        [navigationItem2 setLeftBarButtonItem:0];
      }
    }
  }
}

- (void)knownNetworksDidBecomeActive
{
  if ([(WFAirportViewController *)self isInEditingMode])
  {
    v3 = WFLogForCategory(0);
    v4 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v3 && os_log_type_enabled(v3, v4))
    {
      *v5 = 0;
      _os_log_impl(&dword_273FB9000, v3, v4, "Trying to prompt authentication to remove screen protector.", v5, 2u);
    }

    [(WFAirportViewController *)self _promptAuthToViewKnownNetworkList];
  }
}

- (void)knownNetworksWillEnterForeground
{
  if ([(WFAirportViewController *)self isInEditingMode])
  {
    v3 = WFLogForCategory(0);
    v4 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v3 && os_log_type_enabled(v3, v4))
    {
      *v5 = 0;
      _os_log_impl(&dword_273FB9000, v3, v4, "Trying to prompt authentication to remove screen protector.", v5, 2u);
    }

    [(WFAirportViewController *)self _promptAuthToViewKnownNetworkList];
  }
}

- (void)_promptAuthToViewKnownNetworkList
{
  if (self->_isAuthenticating)
  {
    v2 = WFLogForCategory(0);
    v3 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v2 && os_log_type_enabled(v2, v3))
    {
      LOWORD(buf[0]) = 0;
      v4 = "Authentication in progress, do not prompt again.";
LABEL_25:
      _os_log_impl(&dword_273FB9000, v2, v3, v4, buf, 2u);
    }
  }

  else if ([(WFAirportViewController *)self isInEditingMode])
  {
    screenProtector = self->_screenProtector;
    v2 = WFLogForCategory(0);
    if (screenProtector)
    {
      v7 = OSLogForWFLogLevel(3uLL);
      if (WFCurrentLogLevel() >= 3 && v2 && os_log_type_enabled(v2, v7))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&dword_273FB9000, v2, v7, "Start Authentication process for known network list.", buf, 2u);
      }

      self->_isAuthenticating = 1;
      v8 = WFLogForCategory(0);
      v9 = OSLogForWFLogLevel(3uLL);
      if (WFCurrentLogLevel() >= 3 && v8 && os_log_type_enabled(v8, v9))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&dword_273FB9000, v8, v9, "Showing auth to unlock known network list.", buf, 2u);
      }

      v2 = objc_alloc_init(MEMORY[0x277CD4798]);
      objc_initWeak(buf, self);
      v10 = [(WFAirportViewController *)self _wifiKnownNetworkContextOptionsIsChinaDevice:[(WFAirportViewController *)self _isChinaDevice]];
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __60__WFAirportViewController__promptAuthToViewKnownNetworkList__block_invoke;
      v11[3] = &unk_279EC57E0;
      objc_copyWeak(&v12, buf);
      v11[4] = self;
      [v2 evaluatePolicy:2 options:v10 reply:v11];

      objc_destroyWeak(&v12);
      objc_destroyWeak(buf);
    }

    else
    {
      v3 = OSLogForWFLogLevel(1uLL);
      if (WFCurrentLogLevel() && v2 && os_log_type_enabled(v2, v3))
      {
        LOWORD(buf[0]) = 0;
        v4 = "Screen protector is empty, no need to authenticate to remove.";
        goto LABEL_25;
      }
    }
  }

  else
  {
    v2 = WFLogForCategory(0);
    v3 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v2 && os_log_type_enabled(v2, v3))
    {
      LOWORD(buf[0]) = 0;
      v4 = "Not in editing mode, do not prompt authentication.";
      goto LABEL_25;
    }
  }
}

void __60__WFAirportViewController__promptAuthToViewKnownNetworkList__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__WFAirportViewController__promptAuthToViewKnownNetworkList__block_invoke_2;
  block[3] = &unk_279EC57B8;
  objc_copyWeak(&v10, (a1 + 40));
  v5 = *(a1 + 32);
  v8 = v4;
  v9 = v5;
  v6 = v4;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v10);
}

void __60__WFAirportViewController__promptAuthToViewKnownNetworkList__block_invoke_2(id *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = WFLogForCategory(0);
  v3 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v2 && os_log_type_enabled(v2, v3))
  {
    *buf = 0;
    _os_log_impl(&dword_273FB9000, v2, v3, "Finishing Authentication process for known network list.", buf, 2u);
  }

  WeakRetained = objc_loadWeakRetained(a1 + 6);
  [WeakRetained setIsAuthenticating:0];

  if (!a1[4])
  {
    goto LABEL_14;
  }

  v5 = WFLogForCategory(0);
  v6 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v5 && os_log_type_enabled(v5, v6))
  {
    v7 = a1[4];
    *buf = 138412290;
    v11 = v7;
    _os_log_impl(&dword_273FB9000, v5, v6, "Authentication Error: %@", buf, 0xCu);
  }

  if ([a1[4] code] != -9)
  {
    if ([a1[4] code] == -2 || objc_msgSend(a1[4], "code") == -4)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __60__WFAirportViewController__promptAuthToViewKnownNetworkList__block_invoke_398;
      block[3] = &unk_279EC5538;
      block[4] = a1[5];
      dispatch_async(MEMORY[0x277D85CD0], block);
      goto LABEL_15;
    }

LABEL_14:
    [a1[5] _removeScreenProtector];
  }

LABEL_15:
  v8 = *MEMORY[0x277D85DE8];
}

void __60__WFAirportViewController__promptAuthToViewKnownNetworkList__block_invoke_398(uint64_t a1)
{
  v6 = [*(*(a1 + 32) + 1288) belongedNavigationController];
  v2 = [v6 topViewController];
  v3 = *(a1 + 32);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v5 = [v6 popViewControllerAnimated:0];
  }

  [*(a1 + 32) _transitionToScanList];
  [*(a1 + 32) _removeScreenProtector];
}

- (void)_removeScreenProtector
{
  if (self->_screenProtector)
  {
    [(WFAirportViewController *)self _adjustNavigationItemsForEditingMode];
    v3 = WFLogForCategory(0);
    v4 = OSLogForWFLogLevel(3uLL);
    if (WFCurrentLogLevel() >= 3 && v3 && os_log_type_enabled(v3, v4))
    {
      *v6 = 0;
      _os_log_impl(&dword_273FB9000, v3, v4, "Removing screen protector", v6, 2u);
    }

    [(WFLockView *)self->_screenProtector removeFromSuperview];
    screenProtector = self->_screenProtector;
    self->_screenProtector = 0;
  }
}

- (void)_loadEditButton
{
  if (_os_feature_enabled_impl())
  {
    v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = [v3 localizedStringForKey:@"kWFLocEditListButtonTitle" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];

    v4 = [objc_alloc(MEMORY[0x277D751E0]) initWithTitle:v7 style:0 target:self action:sel_editKnownNetworks];
    parentViewController = [(WFAirportViewController *)self parentViewController];
    navigationItem = [parentViewController navigationItem];
    [navigationItem setRightBarButtonItem:v4];

    [v4 setEnabled:1];
  }
}

- (void)editKnownNetworks
{
  [(WFAirportViewController *)self setNetworksToBeDeleted:0];
  objc_initWeak(&location, self);
  v3 = objc_alloc_init(MEMORY[0x277CD4798]);
  v4 = [(WFAirportViewController *)self _wifiKnownNetworkContextOptionsIsChinaDevice:[(WFAirportViewController *)self _isChinaDevice]];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __44__WFAirportViewController_editKnownNetworks__block_invoke;
  v5[3] = &unk_279EC57E0;
  objc_copyWeak(&v6, &location);
  v5[4] = self;
  [v3 evaluatePolicy:2 options:v4 reply:v5];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __44__WFAirportViewController_editKnownNetworks__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__WFAirportViewController_editKnownNetworks__block_invoke_2;
  block[3] = &unk_279EC5808;
  v7 = v4;
  v5 = v4;
  objc_copyWeak(&v9, (a1 + 40));
  v8 = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(&v9);
}

void __44__WFAirportViewController_editKnownNetworks__block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = WFLogForCategory(0);
    v3 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v2 && os_log_type_enabled(v2, v3))
    {
      v4 = *(a1 + 32);
      v14 = 138412290;
      v15 = v4;
      _os_log_impl(&dword_273FB9000, v2, v3, "Authentication Error: %@", &v14, 0xCu);
    }

    v5 = *(a1 + 32);
  }

  else
  {
    v5 = 0;
  }

  v6 = [v5 code] == -5;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained setUserTurnedOffPasscode:v6];

  v8 = objc_loadWeakRetained((a1 + 48));
  LODWORD(WeakRetained) = [v8 userTurnedOffPasscode];

  if (WeakRetained)
  {
    v9 = WFLogForCategory(0);
    v10 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v9 && os_log_type_enabled(v9, v10))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&dword_273FB9000, v9, v10, "User turned off passcode", &v14, 2u);
    }
  }

  if (!v5 || (v11 = objc_loadWeakRetained((a1 + 48)), v12 = [v11 userTurnedOffPasscode], v11, v12))
  {
    [*(a1 + 40) _transitionToKnownNetworksList];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_transitionToKnownNetworksList
{
  [(WFAirportViewController *)self setIsInEditingMode:1];
  tableView = [(WFAirportViewController *)self tableView];
  [tableView setAllowsSelectionDuringEditing:1];

  [(WFAirportViewController *)self refreshKnownNetworksUpdateTableView:0];
  [(WFAirportViewController *)self _adjustNavigationItemsForEditingMode];
  [(WFAirportViewController *)self _updateNetworkRestrictionHeader];
  listDelegate = [(WFAirportViewController *)self listDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    listDelegate2 = [(WFAirportViewController *)self listDelegate];
    [listDelegate2 airportSettingsViewControllerDidStartEditingKnownNetworks:self];
  }

  tableView2 = [(WFAirportViewController *)self tableView];
  [tableView2 setEditing:1];

  tableView3 = [(WFAirportViewController *)self tableView];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __57__WFAirportViewController__transitionToKnownNetworksList__block_invoke;
  v9[3] = &unk_279EC5538;
  v9[4] = self;
  [tableView3 performBatchUpdates:v9 completion:0];
}

void __57__WFAirportViewController__transitionToKnownNetworksList__block_invoke(uint64_t a1)
{
  v7 = [*(a1 + 32) _defaultSectionsForEditing];
  v2 = [*(a1 + 32) sections];
  [*(a1 + 32) setPreviousSections:v2];
  v3 = [*(a1 + 32) tableView];
  v4 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{0, objc_msgSend(v2, "count")}];
  [v3 deleteSections:v4 withRowAnimation:0];

  [*(a1 + 32) setSections:v7];
  v5 = [*(a1 + 32) tableView];
  v6 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{0, objc_msgSend(v7, "count")}];
  [v5 insertSections:v6 withRowAnimation:4];
}

- (id)_sortedProfilesFromSet:(id)set
{
  allObjects = [set allObjects];
  v4 = WFScanRecordAlphaSortCompartor();
  v5 = [allObjects sortedArrayUsingComparator:v4];

  return v5;
}

- (id)_defaultSectionsForEditing
{
  if ([(NSArray *)self->_managedKnownNetworks count])
  {
    array = [MEMORY[0x277CBEB18] array];
    if ([(NSMutableArray *)self->_editableKnownNetworks count])
    {
      [array addObject:&unk_2883224F8];
    }

    if ([(NSArray *)self->_managedKnownNetworks count])
    {
      [array addObject:&unk_288322540];
    }
  }

  else
  {
    array = [MEMORY[0x277CBEB18] arrayWithObjects:{&unk_2883224F8, 0}];
  }

  v4 = [MEMORY[0x277CBEB70] orderedSetWithArray:array];

  return v4;
}

- (void)_adjustNavigationItemsForEditingMode
{
  if (self->_screenProtector)
  {
    [(WFAirportViewController *)self setOriginalBackButtonItem:0];
  }

  else
  {
    parentViewController = [(WFAirportViewController *)self parentViewController];
    navigationItem = [parentViewController navigationItem];
    leftBarButtonItem = [navigationItem leftBarButtonItem];
    [(WFAirportViewController *)self setOriginalBackButtonItem:leftBarButtonItem];
  }

  parentViewController2 = [(WFAirportViewController *)self parentViewController];
  navigationItem2 = [parentViewController2 navigationItem];
  [navigationItem2 setHidesBackButton:1];

  v8 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel_cancelEditing];
  parentViewController3 = [(WFAirportViewController *)self parentViewController];
  navigationItem3 = [parentViewController3 navigationItem];
  [navigationItem3 setLeftBarButtonItem:v8];

  v11 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:self action:sel_finishEditing];
  parentViewController4 = [(WFAirportViewController *)self parentViewController];
  navigationItem4 = [parentViewController4 navigationItem];
  [navigationItem4 setRightBarButtonItem:v11];

  [(WFAirportViewController *)self _updateKnownNetworksDoneButtonForEditability];
}

- (void)finishEditing
{
  v16 = *MEMORY[0x277D85DE8];
  networksToBeDeleted = [(WFAirportViewController *)self networksToBeDeleted];
  v4 = [networksToBeDeleted count];

  if (v4)
  {
    v5 = WFLogForCategory(0);
    v6 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v5)
    {
      v7 = v5;
      if (os_log_type_enabled(v7, v6))
      {
        networksToBeDeleted2 = [(WFAirportViewController *)self networksToBeDeleted];
        v14 = 134217984;
        v15 = [networksToBeDeleted2 count];
        _os_log_impl(&dword_273FB9000, v7, v6, "Deleting %lu known networks,", &v14, 0xCu);
      }
    }

    [(WFAirportViewController *)self promptConfirmAlert];
  }

  else
  {
    [(WFAirportViewController *)self _transitionToScanList];
    v9 = WFLogForCategory(0);
    v10 = OSLogForWFLogLevel(4uLL);
    if (WFCurrentLogLevel() >= 4 && v9 && os_log_type_enabled(v9, v10))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&dword_273FB9000, v9, v10, "No change to known network lists, bring back network list.", &v14, 2u);
    }
  }

  parentViewController = [(WFAirportViewController *)self parentViewController];
  navigationItem = [parentViewController navigationItem];
  [navigationItem setHidesBackButton:0];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)cancelEditing
{
  v3 = WFLogForCategory(0);
  v4 = OSLogForWFLogLevel(4uLL);
  if (WFCurrentLogLevel() >= 4 && v3 && os_log_type_enabled(v3, v4))
  {
    *v7 = 0;
    _os_log_impl(&dword_273FB9000, v3, v4, "cancel known networks editing", v7, 2u);
  }

  [(WFAirportViewController *)self _transitionToScanList];
  [(WFAirportViewController *)self _updateKnownNetworksDoneButtonForEditability];
  parentViewController = [(WFAirportViewController *)self parentViewController];
  navigationItem = [parentViewController navigationItem];
  [navigationItem setHidesBackButton:0];
}

- (void)promptConfirmAlert
{
  objc_initWeak(&location, self);
  if ([(WFAirportViewController *)self _isChinaDevice])
  {
    v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    [v3 localizedStringForKey:@"kWFLocDeleteConfirmPromptAlertTitle_CH" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
  }

  else
  {
    v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    [v3 localizedStringForKey:@"kWFLocDeleteConfirmPromptAlertTitle" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
  }
  v4 = ;

  if ([(WFAirportViewController *)self _isChinaDevice])
  {
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    [v5 localizedStringForKey:@"kWFLocDeleteConfirmPromptAlertMessage_CH" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
  }

  else
  {
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    [v5 localizedStringForKey:@"kWFLocDeleteConfirmPromptAlertMessage" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
  }
  v6 = ;

  v7 = [MEMORY[0x277D75110] alertControllerWithTitle:v4 message:v6 preferredStyle:1];
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"kWFLocDeleteConfirmPromptRemoveTitle" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];

  v10 = MEMORY[0x277D750F8];
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __45__WFAirportViewController_promptConfirmAlert__block_invoke;
  v18 = &unk_279EC5830;
  objc_copyWeak(&v19, &location);
  v11 = [v10 actionWithTitle:v9 style:0 handler:&v15];
  [v7 addAction:{v11, v15, v16, v17, v18}];
  [v7 setPreferredAction:v11];
  v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v13 = [v12 localizedStringForKey:@"kWFLocDeleteConfirmPromptCancelTitle" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];

  v14 = [MEMORY[0x277D750F8] actionWithTitle:v13 style:1 handler:&__block_literal_global_0];
  [v7 addAction:v14];
  [(WFAirportViewController *)self presentViewController:v7 animated:1 completion:0];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

void __45__WFAirportViewController_promptConfirmAlert__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _submitDeletion];

  v3 = objc_loadWeakRetained((a1 + 32));
  [v3 _transitionToScanList];

  v4 = WFLogForCategory(0);
  v5 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v4 && os_log_type_enabled(v4, v5))
  {
    *v6 = 0;
    _os_log_impl(&dword_273FB9000, v4, v5, "user tapped on confirm in the removal prompt", v6, 2u);
  }
}

void __45__WFAirportViewController_promptConfirmAlert__block_invoke_434()
{
  v0 = WFLogForCategory(0);
  v1 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v0 && os_log_type_enabled(v0, v1))
  {
    *v2 = 0;
    _os_log_impl(&dword_273FB9000, v0, v1, "User tapped cancel in confirmation prompt.", v2, 2u);
  }
}

- (void)_transitionToScanList
{
  originalBackButtonItem = [(WFAirportViewController *)self originalBackButtonItem];
  parentViewController = [(WFAirportViewController *)self parentViewController];
  navigationItem = [parentViewController navigationItem];
  [navigationItem setLeftBarButtonItem:originalBackButtonItem];

  tableView = [(WFAirportViewController *)self tableView];
  [tableView setAllowsSelectionDuringEditing:0];

  [(WFAirportViewController *)self _loadEditButton];
  listDelegate = [(WFAirportViewController *)self listDelegate];
  LOBYTE(parentViewController) = objc_opt_respondsToSelector();

  if (parentViewController)
  {
    listDelegate2 = [(WFAirportViewController *)self listDelegate];
    [listDelegate2 airportSettingsViewControllerDidFinishEditingKnownNetworks:self];
  }

  tableView2 = [(WFAirportViewController *)self tableView];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __48__WFAirportViewController__transitionToScanList__block_invoke;
  v11[3] = &unk_279EC5538;
  v11[4] = self;
  [tableView2 performBatchUpdates:v11 completion:0];

  [(WFAirportViewController *)self setIsInEditingMode:0];
  [(WFAirportViewController *)self _updateNetworkRestrictionHeader];
  tableView3 = [(WFAirportViewController *)self tableView];
  [tableView3 setEditing:0];

  [(WFAirportViewController *)self setNetworksToBeDeleted:0];
}

void __48__WFAirportViewController__transitionToScanList__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) previousSections];
  if (v2)
  {
    [*(a1 + 32) previousSections];
  }

  else
  {
    [*(a1 + 32) _defaultSectionsForPowerState:{objc_msgSend(*(a1 + 32), "powered")}];
  }
  v8 = ;

  v3 = [*(a1 + 32) sections];
  v4 = [*(a1 + 32) tableView];
  v5 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{0, objc_msgSend(v3, "count")}];
  [v4 deleteSections:v5 withRowAnimation:0];

  [*(a1 + 32) setSections:v8];
  v6 = [*(a1 + 32) tableView];
  v7 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{0, objc_msgSend(v8, "count")}];
  [v6 insertSections:v7 withRowAnimation:4];
}

- (void)_submitDeletion
{
  v18 = *MEMORY[0x277D85DE8];
  networksToBeDeleted = [(WFAirportViewController *)self networksToBeDeleted];
  v4 = [networksToBeDeleted count];

  if (v4)
  {
    WeakRetained = objc_loadWeakRetained(&self->_listDelegate);
    networksToBeDeleted2 = [(WFAirportViewController *)self networksToBeDeleted];
    v7 = [WeakRetained removeKnownNetworks:networksToBeDeleted2];

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
    if (v7)
    {
      if (v11)
      {
        v12 = v8;
        if (os_log_type_enabled(v12, v9))
        {
          networksToBeDeleted3 = [(WFAirportViewController *)self networksToBeDeleted];
          v16 = 138412290;
          v17 = networksToBeDeleted3;
          v14 = "Error occurred when trying to delete networks:%@";
LABEL_15:
          _os_log_impl(&dword_273FB9000, v12, v9, v14, &v16, 0xCu);

          goto LABEL_16;
        }

        goto LABEL_16;
      }
    }

    else if (v11)
    {
      v12 = v8;
      if (os_log_type_enabled(v12, v9))
      {
        networksToBeDeleted3 = [(WFAirportViewController *)self networksToBeDeleted];
        v16 = 134217984;
        v17 = [networksToBeDeleted3 count];
        v14 = "User deleted %lu networks successfully";
        goto LABEL_15;
      }

LABEL_16:
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_updateKnownNetworksDoneButtonForEditability
{
  v15 = *MEMORY[0x277D85DE8];
  if ([(WFAirportViewController *)self isInEditingMode])
  {
    networksToBeDeleted = [(WFAirportViewController *)self networksToBeDeleted];
    v4 = [networksToBeDeleted count] != 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = WFLogForCategory(0);
  v6 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v5 && os_log_type_enabled(v5, v6))
  {
    v11 = 136315394;
    v12 = "[WFAirportViewController _updateKnownNetworksDoneButtonForEditability]";
    v13 = 1024;
    v14 = v4;
    _os_log_impl(&dword_273FB9000, v5, v6, "%s: done button enabled=%d", &v11, 0x12u);
  }

  parentViewController = [(WFAirportViewController *)self parentViewController];
  navigationItem = [parentViewController navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  [rightBarButtonItem setEnabled:v4];

  v10 = *MEMORY[0x277D85DE8];
}

- (id)_touchIDPromptForKnownNetworksIsChinaDevice:(BOOL)device
{
  deviceCopy = device;
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = v4;
  if (deviceCopy)
  {
    v6 = @"kWFLocTouchIDConfirmationKnownNetworks_CH";
  }

  else
  {
    v6 = @"kWFLocTouchIDConfirmationKnownNetworks";
  }

  v7 = [v4 localizedStringForKey:v6 value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];

  return v7;
}

- (id)_passcodePromptForViewingKnownNetworksIsChinaDevice:(BOOL)device
{
  if (device)
  {
    v3 = [@"kWFLocPasswordConfirmationKnownNetworks" stringByAppendingString:@"_CH"];
  }

  else
  {
    v3 = @"kWFLocPasswordConfirmationKnownNetworks";
  }

  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:v3 value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];

  return v5;
}

- (void)refreshKnownNetworksUpdateTableView:(BOOL)view
{
  viewCopy = view;
  v25 = *MEMORY[0x277D85DE8];
  listDelegate = [(WFAirportViewController *)self listDelegate];
  managedKnownNetworks = [listDelegate managedKnownNetworks];
  v7 = [(WFAirportViewController *)self _sortedProfilesFromSet:managedKnownNetworks];
  [(WFAirportViewController *)self setManagedKnownNetworks:v7];

  v8 = MEMORY[0x277CBEB18];
  listDelegate2 = [(WFAirportViewController *)self listDelegate];
  editableKnownNetworks = [listDelegate2 editableKnownNetworks];
  v11 = [(WFAirportViewController *)self _sortedProfilesFromSet:editableKnownNetworks];
  v12 = [v8 arrayWithArray:v11];
  [(WFAirportViewController *)self setEditableKnownNetworks:v12];

  v13 = WFLogForCategory(0);
  v14 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v13)
  {
    v15 = v13;
    if (os_log_type_enabled(v15, v14))
    {
      managedKnownNetworks2 = [(WFAirportViewController *)self managedKnownNetworks];
      v17 = [managedKnownNetworks2 count];
      editableKnownNetworks2 = [(WFAirportViewController *)self editableKnownNetworks];
      v21 = 134218240;
      v22 = v17;
      v23 = 2048;
      v24 = [editableKnownNetworks2 count];
      _os_log_impl(&dword_273FB9000, v15, v14, "managed networks=%lu editable networks=%lu", &v21, 0x16u);
    }
  }

  if (viewCopy)
  {
    tableView = [(WFAirportViewController *)self tableView];
    [tableView reloadData];
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (WFAirportViewControllerDelegate)listDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_listDelegate);

  return WeakRetained;
}

- (WFNetworkListRecord)joiningHotspot
{
  WeakRetained = objc_loadWeakRetained(&self->_joiningHotspot);

  return WeakRetained;
}

- (id)_currentNetworkCell
{
  _currentNetworkCellIndexPath = [(WFAirportViewController *)self _currentNetworkCellIndexPath];
  if (_currentNetworkCellIndexPath)
  {
    tableView = [(WFAirportViewController *)self tableView];
    v5 = [tableView cellForRowAtIndexPath:_currentNetworkCellIndexPath];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void __68__WFAirportViewController_setCurrentNetwork_previousNetwork_reason___block_invoke_cold_1()
{
  v1 = *MEMORY[0x277D85DE8];
  v2 = OUTLINED_FUNCTION_1_0();
  WFLogForCategory(v2);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3();
  if (WFCurrentLogLevel() >= 4 && v0 && OUTLINED_FUNCTION_2())
  {
    OUTLINED_FUNCTION_0_0(&dword_273FB9000, v3, v4, "%s: no infrastructure networks", v5, v6, v7, v8, 2u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __68__WFAirportViewController_setCurrentNetwork_previousNetwork_reason___block_invoke_cold_2()
{
  v1 = *MEMORY[0x277D85DE8];
  v2 = OUTLINED_FUNCTION_1_0();
  WFLogForCategory(v2);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3();
  if (WFCurrentLogLevel() >= 4 && v0 && OUTLINED_FUNCTION_2())
  {
    OUTLINED_FUNCTION_0_0(&dword_273FB9000, v3, v4, "%s: no known networks", v5, v6, v7, v8, 2u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __68__WFAirportViewController_setCurrentNetwork_previousNetwork_reason___block_invoke_cold_3()
{
  v1 = *MEMORY[0x277D85DE8];
  v2 = OUTLINED_FUNCTION_1_0();
  WFLogForCategory(v2);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3();
  if (WFCurrentLogLevel() >= 4 && v0 && OUTLINED_FUNCTION_2())
  {
    OUTLINED_FUNCTION_0_0(&dword_273FB9000, v3, v4, "%s: no popular networks", v5, v6, v7, v8, 2u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __68__WFAirportViewController_setCurrentNetwork_previousNetwork_reason___block_invoke_cold_4()
{
  v1 = *MEMORY[0x277D85DE8];
  v2 = OUTLINED_FUNCTION_1_0();
  WFLogForCategory(v2);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3();
  if (WFCurrentLogLevel() >= 4 && v0 && OUTLINED_FUNCTION_2())
  {
    OUTLINED_FUNCTION_0_0(&dword_273FB9000, v3, v4, "%s: no unconfigured networks", v5, v6, v7, v8, 2u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __68__WFAirportViewController_setCurrentNetwork_previousNetwork_reason___block_invoke_cold_5()
{
  v1 = *MEMORY[0x277D85DE8];
  v2 = OUTLINED_FUNCTION_1_0();
  WFLogForCategory(v2);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3();
  if (WFCurrentLogLevel() >= 4 && v0 && OUTLINED_FUNCTION_2())
  {
    OUTLINED_FUNCTION_0_0(&dword_273FB9000, v3, v4, "%s: no adhoc networks", v5, v6, v7, v8, 2u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_tableCellForKnownNetwork:(uint64_t)a1 tableView:indexPath:extraLeadingPadding:.cold.1(uint64_t a1)
{
  v2 = *MEMORY[0x277D85DE8];
  v3 = OUTLINED_FUNCTION_1_0();
  v4 = WFLogForCategory(v3);
  v5 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v4 && os_log_type_enabled(v4, v5))
  {
    v7 = 138543362;
    v8 = a1;
    _os_log_impl(&dword_273FB9000, v4, v5, "nil network for indexPath %{public}@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_tableCellForKnownNetwork:(uint64_t)a1 tableView:(uint64_t)a2 indexPath:extraLeadingPadding:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v5 = OUTLINED_FUNCTION_1_0();
  v6 = WFLogForCategory(v5);
  v7 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v6 && os_log_type_enabled(v6, v7))
  {
    v9 = 138543618;
    v10 = a1;
    v11 = 2114;
    v12 = a2;
    _os_log_impl(&dword_273FB9000, v6, v7, "Unable to create cell at indexPath %{public}@ for network %{public}@", &v9, 0x16u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_tableCellForNetwork:(uint64_t)a1 tableView:(NSObject *)a2 indexPath:.cold.1(uint64_t a1, NSObject **a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v4 = OUTLINED_FUNCTION_1_0();
  v5 = WFLogForCategory(v4);
  v6 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v5 && os_log_type_enabled(v5, v6))
  {
    OUTLINED_FUNCTION_2_0();
    _os_log_impl(v7, v8, v9, v10, v11, 0xCu);
  }

  *a2 = v5;
  v12 = *MEMORY[0x277D85DE8];
}

- (uint64_t)_sectionTypeAtSection:(uint64_t)a1 .cold.1(uint64_t a1, void *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v4 = OUTLINED_FUNCTION_1_0();
  v5 = WFLogForCategory(v4);
  v6 = OSLogForWFLogLevel(4uLL);
  if (WFCurrentLogLevel() >= 4 && v5 && os_log_type_enabled(v5, v6))
  {
    OUTLINED_FUNCTION_2_0();
    _os_log_impl(v7, v8, v9, v10, v11, 0x12u);
  }

  result = [a2 _dumpSections];
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_currentNetworkCellIndexPath
{
  v2 = *MEMORY[0x277D85DE8];
  v3 = OUTLINED_FUNCTION_1_0();
  v4 = WFLogForCategory(v3);
  v5 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v4)
  {
    v6 = v4;
    if (os_log_type_enabled(v6, v5))
    {
      v7 = [self _nameOfSection:0];
      v9 = 136315394;
      v10 = "[WFAirportViewController _currentNetworkCellIndexPath]";
      v11 = 2114;
      v12 = v7;
      _os_log_impl(&dword_273FB9000, v6, v5, "%s: index for %{public}@ not found in sections", &v9, 0x16u);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

@end