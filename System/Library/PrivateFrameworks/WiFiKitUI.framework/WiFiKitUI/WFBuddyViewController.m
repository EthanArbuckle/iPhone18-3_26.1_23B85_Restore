@interface WFBuddyViewController
- (UISwitch)enableWAPISwitch;
- (WFBuddyViewController)init;
- (WFBuddyViewControllerDelegate)buddyDelegate;
- (WFNetworkListDelegate)listDelegate;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)_cellForNetworkRecord:(id)a3 tableView:(id)a4 indexPath:(id)a5;
- (id)_debugSectionStringFromSections:(id)a3;
- (id)_nameOfSection:(int64_t)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_chooseOtherNetworkTapped:(id)a3;
- (void)_enableWAPISwitchChanged:(id)a3;
- (void)_notifyBuddyWiFiPickerIsVisble:(BOOL)a3;
- (void)_refreshSections;
- (void)_updateCellsWithNewData:(id)a3 oldData:(id)a4 inSection:(int64_t)a5;
- (void)networkListDelegateWillPresentAccessoryViewController:(id)a3;
- (void)powerStateDidChange:(BOOL)a3;
- (void)refresh;
- (void)setCurrentNetwork:(id)a3;
- (void)setCurrentNetworkScaledRSSI:(float)a3;
- (void)setCurrentNetworkState:(int64_t)a3;
- (void)setDeviceCapability:(int64_t)a3;
- (void)setNetworks:(id)a3;
- (void)setShowAdditionalSetupInfo:(BOOL)a3;
- (void)setShowNetworkSettings:(BOOL)a3;
- (void)setSupportsCellularActivation:(BOOL)a3;
- (void)tableView:(id)a3 accessoryButtonTappedForRowWithIndexPath:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayFooterView:(id)a4 forSection:(int64_t)a5;
- (void)viewDidLoad;
@end

@implementation WFBuddyViewController

- (WFBuddyViewController)init
{
  v3 = WFCurrentDeviceCapability();
  self->_deviceCapability = v3;
  IsChinaDevice = WFCapabilityIsChinaDevice(v3);
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = v5;
  if (IsChinaDevice)
  {
    v7 = @"kWFLocBuddyHeaderViewTitleCH";
  }

  else
  {
    v7 = @"kWFLocBuddyHeaderViewTitle";
  }

  v8 = [v5 localizedStringForKey:v7 value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];

  v11.receiver = self;
  v11.super_class = WFBuddyViewController;
  v9 = [(OBTableWelcomeController *)&v11 initWithTitle:v8 detailText:0 icon:0 adoptTableViewScrollView:1];

  return v9;
}

- (void)viewDidLoad
{
  v38[2] = *MEMORY[0x277D85DE8];
  v37.receiver = self;
  v37.super_class = WFBuddyViewController;
  [(OBTableWelcomeController *)&v37 viewDidLoad];
  v3 = [MEMORY[0x277CBEB70] orderedSetWithObjects:{&unk_288322A20, 0}];
  sections = self->_sections;
  self->_sections = v3;

  self->_tableViewIsUpdating = 0;
  self->_networkResultsChangedWhileUIUpdates = 0;
  self->_tableReloadRequestQueued = 0;
  v5 = objc_alloc(MEMORY[0x277D75B40]);
  v6 = [v5 initWithFrame:2 style:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  v7 = MEMORY[0x277D757B0];
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [v7 nibWithNibName:@"WFBuddyNetworkListCell" bundle:v8];

  if (!v9)
  {
    v10 = WFLogForCategory(0);
    v11 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v10 && os_log_type_enabled(v10, v11))
    {
      *buf = 0;
      _os_log_impl(&dword_273FB9000, v10, v11, "Missing WFBuddyNetworkListCell nib!", buf, 2u);
    }
  }

  [v6 registerNib:v9 forCellReuseIdentifier:@"WFBuddyNetworkListCell"];
  [v6 registerClass:objc_opt_class() forCellReuseIdentifier:@"WFBuddyOtherNetworkCell"];
  [v6 registerClass:objc_opt_class() forCellReuseIdentifier:@"WFBuddyWAPICell"];
  [v6 registerClass:objc_opt_class() forCellReuseIdentifier:@"kWFNetworkAlternativeCellIdentifier"];
  v12 = MEMORY[0x277D757B0];
  v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v14 = [v12 nibWithNibName:@"WFAdditionalSetupTableViewCell" bundle:v13];

  if (!v14)
  {
    v15 = WFLogForCategory(0);
    v16 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v15 && os_log_type_enabled(v15, v16))
    {
      *buf = 0;
      _os_log_impl(&dword_273FB9000, v15, v16, "Missing WFAdditionalSetupTableViewCell nib!", buf, 2u);
    }
  }

  [v6 registerNib:v14 forCellReuseIdentifier:@"WFBuddyAdditionalSetupCell"];
  [v6 setDelegate:self];
  [v6 setDataSource:self];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v6 _setDrawsSeparatorAtTopOfSections:1];
  v17 = [(WFBuddyViewController *)self view];
  [v17 addSubview:v6];

  [(OBTableWelcomeController *)self setTableView:v6];
  v18 = [(WFBuddyViewController *)self buttonTray];
  [v18 setHidden:1];

  [(WFBuddyViewController *)self setSupportsCellularActivation:0];
  v19 = [(WFBuddyViewController *)self listDelegate];
  v20 = objc_opt_respondsToSelector();

  if (v20)
  {
    v21 = [(WFBuddyViewController *)self listDelegate];
    [v21 setShouldShowDetailTapOnCurrentNetwork:0];
  }

  v22 = [(WFBuddyViewController *)self listDelegate];
  v23 = objc_opt_respondsToSelector();

  if (v23)
  {
    v24 = [(WFBuddyViewController *)self listDelegate];
    self->_deviceCapability = [v24 networkListViewControllerOverrideDeviceCapability:self];
  }

  v25 = [objc_alloc(MEMORY[0x277D37608]) initWithStateName:@"State 1" transitionDuration:0.01 transitionSpeed:1.0];
  v38[0] = v25;
  v26 = [objc_alloc(MEMORY[0x277D37608]) initWithStateName:@"State 2" transitionDuration:1.0 transitionSpeed:0.5];
  v38[1] = v26;
  v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:2];

  v28 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v29 = [v28 URLForResource:@"WIFI" withExtension:@"ca"];

  v30 = objc_alloc(MEMORY[0x277D37600]);
  v31 = [(WFBuddyViewController *)self headerView];
  v32 = [v31 animationView];
  v33 = [v27 firstObject];
  v34 = [v30 initWithUrlToPackage:v29 animationView:v32 animatedStates:v27 startAtFirstState:v33];
  [(WFBuddyViewController *)self setAnimationController:v34];

  v35 = *MEMORY[0x277D85DE8];
}

- (void)setShowNetworkSettings:(BOOL)a3
{
  v14 = *MEMORY[0x277D85DE8];
  if (self->_showNetworkSettings != a3)
  {
    v3 = a3;
    v5 = WFLogForCategory(0);
    v6 = OSLogForWFLogLevel(3uLL);
    if (WFCurrentLogLevel() >= 3 && v5 && os_log_type_enabled(v5, v6))
    {
      v10 = 136315394;
      v11 = "[WFBuddyViewController setShowNetworkSettings:]";
      v12 = 1024;
      v13 = v3;
      _os_log_impl(&dword_273FB9000, v5, v6, "%s: showNetworkSettings %d", &v10, 0x12u);
    }

    self->_showNetworkSettings = v3;
    v7 = WFLogForCategory(0);
    v8 = OSLogForWFLogLevel(3uLL);
    if (WFCurrentLogLevel() >= 3 && v7 && os_log_type_enabled(v7, v8))
    {
      v10 = 136315138;
      v11 = "[WFBuddyViewController setShowNetworkSettings:]";
      _os_log_impl(&dword_273FB9000, v7, v8, "%s: Calling [self refresh]", &v10, 0xCu);
    }

    [(WFBuddyViewController *)self refresh];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)setSupportsCellularActivation:(BOOL)a3
{
  v3 = a3;
  v21 = *MEMORY[0x277D85DE8];
  if (self->_supportsCellularActivation != a3 || !self->_alternateSetupTitle || !self->_alternateSetupFooter)
  {
    v5 = WFLogForCategory(0);
    v6 = OSLogForWFLogLevel(3uLL);
    if (WFCurrentLogLevel() >= 3 && v5 && os_log_type_enabled(v5, v6))
    {
      v17 = 136315394;
      v18 = "[WFBuddyViewController setSupportsCellularActivation:]";
      v19 = 1024;
      v20 = v3;
      _os_log_impl(&dword_273FB9000, v5, v6, "%s: supports %d", &v17, 0x12u);
    }

    self->_supportsCellularActivation = v3;
    IsChinaDevice = WFCapabilityIsChinaDevice([(WFBuddyViewController *)self deviceCapability]);
    supportsCellularActivation = self->_supportsCellularActivation;
    v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v10 = v9;
    v11 = @"kWFLocBuddyUseCellularConnection";
    if (IsChinaDevice)
    {
      v11 = @"kWFLocBuddyUseCellularConnection_CH";
    }

    if (supportsCellularActivation)
    {
      v12 = v11;
    }

    else
    {
      v12 = @"kWFLocBuddyConnectToTunes";
    }

    v13 = [v9 localizedStringForKey:v12 value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];

    [(WFBuddyViewController *)self setAlternateSetupTitle:v13];
    v14 = WFLogForCategory(0);
    v15 = OSLogForWFLogLevel(3uLL);
    if (WFCurrentLogLevel() >= 3 && v14 && os_log_type_enabled(v14, v15))
    {
      v17 = 136315138;
      v18 = "[WFBuddyViewController setSupportsCellularActivation:]";
      _os_log_impl(&dword_273FB9000, v14, v15, "%s: Calling [self refresh]", &v17, 0xCu);
    }

    [(WFBuddyViewController *)self refresh];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)setNetworks:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __37__WFBuddyViewController_setNetworks___block_invoke;
  v6[3] = &unk_279EC5588;
  v7 = v4;
  v8 = self;
  v5 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __37__WFBuddyViewController_setNetworks___block_invoke(uint64_t a1)
{
  v59 = *MEMORY[0x277D85DE8];
  v45 = 0;
  v46 = &v45;
  v47 = 0x3032000000;
  v48 = __Block_byref_object_copy__2;
  v49 = __Block_byref_object_dispose__2;
  v50 = &stru_288308678;
  v2 = *(a1 + 32);
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __37__WFBuddyViewController_setNetworks___block_invoke_71;
  v44[3] = &unk_279EC6270;
  v44[4] = &v45;
  [v2 enumerateObjectsUsingBlock:v44];
  v3 = WFLogForCategory(0);
  v4 = OSLogForWFLogLevel(4uLL);
  if (WFCurrentLogLevel() >= 4 && v3 && os_log_type_enabled(v3, v4))
  {
    v5 = v46[5];
    *buf = 138412290;
    *&buf[4] = v5;
    _os_log_impl(&dword_273FB9000, v3, v4, "networks to be set: %@", buf, 0xCu);
  }

  v6 = [*(a1 + 32) mutableCopy];
  v7 = [*(a1 + 40) currentNetwork];

  if (v7)
  {
    v8 = [*(a1 + 40) currentNetwork];
    [v6 addObject:v8];
  }

  v9 = [v6 adhocNetworks];
  v10 = v9;
  if (v9 && [v9 count])
  {
    [v6 minusSet:v10];
  }

  v11 = [v6 unconfiguredNetworks];
  v12 = v11;
  if (v11 && [v11 count])
  {
    [v6 minusSet:v12];
  }

  v13 = WFScanRecordDefaultSortCompartor();
  v35 = [*(*(a1 + 40) + 1320) copy];
  v14 = WFLogForCategory(0);
  v15 = OSLogForWFLogLevel(4uLL);
  if (WFCurrentLogLevel() >= 4 && v14 && os_log_type_enabled(v14, v15))
  {
    v16 = *(*(a1 + 40) + 1277);
    *buf = 67109120;
    *&buf[4] = v16;
    _os_log_impl(&dword_273FB9000, v14, v15, "TableView is currently updating %d", buf, 8u);
  }

  if (*(*(a1 + 40) + 1277) == 1)
  {
    v17 = [v6 allObjects];
    v18 = [v17 sortedArrayUsingComparator:v13];
    v19 = *(a1 + 40);
    v20 = *(v19 + 1376);
    *(v19 + 1376) = v18;

    *(*(a1 + 40) + 1278) = 1;
  }

  else
  {
    v21 = [v6 allObjects];
    v34 = [v21 sortedArrayUsingComparator:v13];

    v22 = WFLogForCategory(0);
    v23 = OSLogForWFLogLevel(4uLL);
    if (WFCurrentLogLevel() >= 4 && v22)
    {
      v24 = v22;
      if (os_log_type_enabled(v24, v23))
      {
        v25 = [v35 count];
        v26 = [*(*(a1 + 40) + 1320) count];
        *buf = 134218240;
        *&buf[4] = v25;
        *&buf[12] = 2048;
        *&buf[14] = v26;
        _os_log_impl(&dword_273FB9000, v24, v23, "Set Networks from %lu to %lu", buf, 0x16u);
      }
    }

    v27 = [*(a1 + 40) tableView];
    v28 = [v27 _isInAWindow];

    if (v28)
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v56 = __Block_byref_object_copy__2;
      v57 = __Block_byref_object_dispose__2;
      v58 = &stru_288308678;
      v43[0] = MEMORY[0x277D85DD0];
      v43[1] = 3221225472;
      v43[2] = __37__WFBuddyViewController_setNetworks___block_invoke_77;
      v43[3] = &unk_279EC55B0;
      v43[4] = buf;
      [v35 enumerateObjectsUsingBlock:v43];
      v37 = 0;
      v38 = &v37;
      v39 = 0x3032000000;
      v40 = __Block_byref_object_copy__2;
      v41 = __Block_byref_object_dispose__2;
      v42 = &stru_288308678;
      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v36[2] = __37__WFBuddyViewController_setNetworks___block_invoke_2;
      v36[3] = &unk_279EC55B0;
      v36[4] = &v37;
      [v34 enumerateObjectsUsingBlock:v36];
      v29 = WFLogForCategory(0);
      v30 = OSLogForWFLogLevel(4uLL);
      if (WFCurrentLogLevel() >= 4 && v29 && os_log_type_enabled(v29, v30))
      {
        v31 = *(*&buf[8] + 40);
        v32 = v38[5];
        *v51 = 138412546;
        v52 = v31;
        v53 = 2112;
        v54 = v32;
        _os_log_impl(&dword_273FB9000, v29, v30, "Old networks: %@\n New networks: %@", v51, 0x16u);
      }

      [*(a1 + 40) _updateCellsWithNewData:v34 oldData:v35 inSection:0];
      _Block_object_dispose(&v37, 8);

      _Block_object_dispose(buf, 8);
    }
  }

  _Block_object_dispose(&v45, 8);
  v33 = *MEMORY[0x277D85DE8];
}

void __37__WFBuddyViewController_setNetworks___block_invoke_71(uint64_t a1, void *a2)
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

void __37__WFBuddyViewController_setNetworks___block_invoke_77(uint64_t a1, void *a2)
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

void __37__WFBuddyViewController_setNetworks___block_invoke_2(uint64_t a1, void *a2)
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

- (void)_updateCellsWithNewData:(id)a3 oldData:(id)a4 inSection:(int64_t)a5
{
  v90 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v47 = objc_opt_new();
  v43 = objc_opt_new();
  v41 = objc_opt_new();
  v44 = objc_opt_new();
  v48 = [v7 mutableCopy];
  v49 = [v6 mutableCopy];
  if ([v7 count] >= 2 && objc_msgSend(v7, "count", v41, v43) >= 2)
  {
    v8 = 0;
    v9 = 1;
    do
    {
      v10 = [v7 objectAtIndexedSubscript:v9];
      v11 = [v10 ssid];
      v12 = v9 - 1;
      v13 = [v7 objectAtIndexedSubscript:v9 - 1];
      v14 = [v13 ssid];
      v15 = [v11 isEqualToString:v14];

      if (v15)
      {
        [v48 removeObjectAtIndex:v9 - v8++];
      }

      ++v9;
    }

    while ([v7 count] > (v12 + 2));
  }

  if ([v6 count] >= 2 && objc_msgSend(v6, "count") >= 2)
  {
    v16 = 0;
    v17 = 1;
    do
    {
      v18 = [v6 objectAtIndexedSubscript:v17];
      v19 = [v18 ssid];
      v20 = v17 - 1;
      v21 = [v6 objectAtIndexedSubscript:v17 - 1];
      v22 = [v21 ssid];
      v23 = [v19 isEqualToString:v22];

      if (v23)
      {
        [v49 removeObjectAtIndex:v17 - v16++];
      }

      ++v17;
    }

    while ([v6 count] > (v20 + 2));
  }

  v76 = 0;
  v77 = &v76;
  v78 = 0x3032000000;
  v79 = __Block_byref_object_copy__2;
  v80 = __Block_byref_object_dispose__2;
  v81 = &stru_288308678;
  v75[0] = MEMORY[0x277D85DD0];
  v75[1] = 3221225472;
  v75[2] = __67__WFBuddyViewController__updateCellsWithNewData_oldData_inSection___block_invoke;
  v75[3] = &unk_279EC55B0;
  v75[4] = &v76;
  [v48 enumerateObjectsUsingBlock:v75];
  v69 = 0;
  v70 = &v69;
  v71 = 0x3032000000;
  v72 = __Block_byref_object_copy__2;
  v73 = __Block_byref_object_dispose__2;
  v74 = &stru_288308678;
  v68[0] = MEMORY[0x277D85DD0];
  v68[1] = 3221225472;
  v68[2] = __67__WFBuddyViewController__updateCellsWithNewData_oldData_inSection___block_invoke_2;
  v68[3] = &unk_279EC55B0;
  v68[4] = &v69;
  [v49 enumerateObjectsUsingBlock:v68];
  v24 = WFLogForCategory(0);
  v25 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v24 && os_log_type_enabled(v24, v25))
  {
    v26 = v77[5];
    v27 = v70[5];
    *buf = 138412546;
    v83 = v26;
    v84 = 2112;
    v85 = v27;
    _os_log_impl(&dword_273FB9000, v24, v25, "Old filtered networks: %@\n New filtered networks: %@", buf, 0x16u);
  }

  v28 = WFLogForCategory(0);
  v29 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v28)
  {
    v30 = v28;
    if (os_log_type_enabled(v30, v29))
    {
      v31 = [v7 count];
      v32 = [v48 count];
      v33 = [v6 count];
      v34 = [v49 count];
      *buf = 134218752;
      v83 = v31;
      v84 = 2048;
      v85 = v32;
      v86 = 2048;
      v87 = v33;
      v88 = 2048;
      v89 = v34;
      _os_log_impl(&dword_273FB9000, v30, v29, "Old Network count: %lu, old filtered network count: %lu, new network count: %lu, new filtered network count: %lu", buf, 0x2Au);
    }
  }

  v66[0] = MEMORY[0x277D85DD0];
  v66[1] = 3221225472;
  v66[2] = __67__WFBuddyViewController__updateCellsWithNewData_oldData_inSection___block_invoke_82;
  v66[3] = &unk_279EC55D8;
  v35 = v44;
  v67 = v35;
  [v48 enumerateObjectsUsingBlock:v66];
  v61[0] = MEMORY[0x277D85DD0];
  v61[1] = 3221225472;
  v61[2] = __67__WFBuddyViewController__updateCellsWithNewData_oldData_inSection___block_invoke_2_84;
  v61[3] = &unk_279EC5600;
  v36 = v35;
  v62 = v36;
  v65 = a5;
  v37 = v42;
  v63 = v37;
  v38 = v43;
  v64 = v38;
  [v49 enumerateObjectsUsingBlock:v61];
  if ([v36 count])
  {
    v57[0] = MEMORY[0x277D85DD0];
    v57[1] = 3221225472;
    v57[2] = __67__WFBuddyViewController__updateCellsWithNewData_oldData_inSection___block_invoke_86;
    v57[3] = &unk_279EC5628;
    v58 = v36;
    v59 = v47;
    v60 = a5;
    [v58 enumerateKeysAndObjectsUsingBlock:v57];
  }

  if ([v47 count] || objc_msgSend(v38, "count") || objc_msgSend(v37, "count"))
  {
    v39 = [(OBTableWelcomeController *)self tableView];
    v51[0] = MEMORY[0x277D85DD0];
    v51[1] = 3221225472;
    v51[2] = __67__WFBuddyViewController__updateCellsWithNewData_oldData_inSection___block_invoke_88;
    v51[3] = &unk_279EC6298;
    v52 = v38;
    v53 = v37;
    v54 = v47;
    v55 = self;
    v56 = v49;
    v50[0] = MEMORY[0x277D85DD0];
    v50[1] = 3221225472;
    v50[2] = __67__WFBuddyViewController__updateCellsWithNewData_oldData_inSection___block_invoke_89;
    v50[3] = &unk_279EC62C0;
    v50[4] = self;
    [v39 performBatchUpdates:v51 completion:v50];
  }

  _Block_object_dispose(&v69, 8);
  _Block_object_dispose(&v76, 8);

  v40 = *MEMORY[0x277D85DE8];
}

void __67__WFBuddyViewController__updateCellsWithNewData_oldData_inSection___block_invoke(uint64_t a1, void *a2)
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

void __67__WFBuddyViewController__updateCellsWithNewData_oldData_inSection___block_invoke_2(uint64_t a1, void *a2)
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

void __67__WFBuddyViewController__updateCellsWithNewData_oldData_inSection___block_invoke_82(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = [a2 ssid];
  v5 = *(a1 + 32);
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  [v5 setValue:v6 forKey:v7];
}

void __67__WFBuddyViewController__updateCellsWithNewData_oldData_inSection___block_invoke_2_84(uint64_t a1, void *a2, uint64_t a3)
{
  v25[2] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [v5 ssid];
  v7 = [*(a1 + 32) objectForKeyedSubscript:v6];

  if (v7)
  {
    v8 = [*(a1 + 32) objectForKeyedSubscript:v6];
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
    v10 = [v8 isEqual:v9];

    if ((v10 & 1) == 0)
    {
      v11 = [*(a1 + 32) objectForKeyedSubscript:v6];
      v12 = [MEMORY[0x277CCAA70] indexPathForRow:objc_msgSend(v11 inSection:{"integerValue"), *(a1 + 56)}];
      v13 = [MEMORY[0x277CCAA70] indexPathForRow:a3 inSection:*(a1 + 56)];
      v14 = *(a1 + 40);
      v25[0] = v12;
      v25[1] = v13;
      v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];
      [v14 addObject:v15];
    }

    [*(a1 + 32) removeObjectForKey:v6];
  }

  else
  {
    v16 = WFLogForCategory(0);
    v17 = OSLogForWFLogLevel(3uLL);
    if (WFCurrentLogLevel() >= 3 && v16 && os_log_type_enabled(v16, v17))
    {
      v21 = 138412546;
      v22 = v5;
      v23 = 2048;
      v24 = a3;
      _os_log_impl(&dword_273FB9000, v16, v17, "inserting %@ at indexpath:%lu, ", &v21, 0x16u);
    }

    v18 = *(a1 + 48);
    v19 = [MEMORY[0x277CCAA70] indexPathForRow:a3 inSection:*(a1 + 56)];
    [v18 addObject:v19];
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __67__WFBuddyViewController__updateCellsWithNewData_oldData_inSection___block_invoke_86(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) objectForKeyedSubscript:v3];
  v5 = WFLogForCategory(0);
  v6 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v5)
  {
    v7 = v5;
    if (os_log_type_enabled(v7, v6))
    {
      v11 = 138412546;
      v12 = v3;
      v13 = 2048;
      v14 = [v4 longValue];
      _os_log_impl(&dword_273FB9000, v7, v6, "deleting %@ at indexpath:%lu", &v11, 0x16u);
    }
  }

  v8 = *(a1 + 40);
  v9 = [MEMORY[0x277CCAA70] indexPathForRow:objc_msgSend(v4 inSection:{"integerValue"), *(a1 + 48)}];
  [v8 addObject:v9];

  v10 = *MEMORY[0x277D85DE8];
}

void __67__WFBuddyViewController__updateCellsWithNewData_oldData_inSection___block_invoke_88(id *a1)
{
  v33 = *MEMORY[0x277D85DE8];
  v2 = WFLogForCategory(0);
  v3 = OSLogForWFLogLevel(4uLL);
  if (WFCurrentLogLevel() >= 4 && v2)
  {
    v4 = v2;
    if (os_log_type_enabled(v4, v3))
    {
      v5 = [a1[4] count];
      v6 = [a1[5] count];
      v7 = [a1[6] count];
      *buf = 136315906;
      v26 = "[WFBuddyViewController _updateCellsWithNewData:oldData:inSection:]_block_invoke";
      v27 = 2048;
      v28 = v5;
      v29 = 2048;
      v30 = v6;
      v31 = 2048;
      v32 = v7;
      _os_log_impl(&dword_273FB9000, v4, v3, "%s: tableView updating started - insert %lu move %lu delete %lu", buf, 0x2Au);
    }
  }

  *(a1[7] + 1277) = 1;
  v8 = [a1[7] tableView];
  [v8 deleteRowsAtIndexPaths:a1[6] withRowAnimation:0];

  v9 = [a1[7] tableView];
  [v9 insertRowsAtIndexPaths:a1[4] withRowAnimation:0];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = a1[5];
  v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v21;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v20 + 1) + 8 * i);
        v16 = [v15 objectAtIndexedSubscript:{0, v20}];
        v17 = [v15 objectAtIndexedSubscript:1];
        v18 = [a1[7] tableView];
        [v18 moveRowAtIndexPath:v16 toIndexPath:v17];
      }

      v12 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v12);
  }

  objc_storeStrong(a1[7] + 165, a1[8]);
  v19 = *MEMORY[0x277D85DE8];
}

void __67__WFBuddyViewController__updateCellsWithNewData_oldData_inSection___block_invoke_89(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = WFLogForCategory(0);
  v3 = OSLogForWFLogLevel(4uLL);
  if (WFCurrentLogLevel() >= 4 && v2 && os_log_type_enabled(v2, v3))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[WFBuddyViewController _updateCellsWithNewData:oldData:inSection:]_block_invoke";
    _os_log_impl(&dword_273FB9000, v2, v3, "%s: tableView updating finished", &buf, 0xCu);
  }

  *(*(a1 + 32) + 1277) = 0;
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    v4 = [*(a1 + 32) tableView];
    [v4 invalidateIntrinsicContentSize];

    v5 = [*(a1 + 32) tableView];
    [v5 updateConstraintsIfNeeded];

    v6 = [*(a1 + 32) tableView];
    [v6 layoutIfNeeded];
  }

  v7 = *(a1 + 32);
  if (*(v7 + 1278) == 1)
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v23 = 0x3032000000;
    v24 = __Block_byref_object_copy__2;
    v25 = __Block_byref_object_dispose__2;
    v8 = MEMORY[0x277CBEB98];
    v9 = [*(v7 + 1376) copy];
    v26 = [v8 setWithArray:v9];

    v10 = *(a1 + 32);
    v11 = *(v10 + 1376);
    *(v10 + 1376) = MEMORY[0x277CBEBF8];

    *(*(a1 + 32) + 1278) = 0;
    v12 = WFLogForCategory(0);
    v13 = OSLogForWFLogLevel(4uLL);
    if (WFCurrentLogLevel() >= 4 && v12)
    {
      v14 = v12;
      if (os_log_type_enabled(v14, v13))
      {
        v15 = [*(*(&buf + 1) + 40) count];
        *v18 = 136315394;
        v19 = "[WFBuddyViewController _updateCellsWithNewData:oldData:inSection:]_block_invoke";
        v20 = 2048;
        v21 = v15;
        _os_log_impl(&dword_273FB9000, v14, v13, "%s: continuing with pending network update (count %lu)", v18, 0x16u);
      }
    }

    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __67__WFBuddyViewController__updateCellsWithNewData_oldData_inSection___block_invoke_92;
    v17[3] = &unk_279EC5790;
    v17[4] = *(a1 + 32);
    v17[5] = &buf;
    dispatch_async(MEMORY[0x277D85CD0], v17);
    _Block_object_dispose(&buf, 8);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)setCurrentNetworkScaledRSSI:(float)a3
{
  v23 = *MEMORY[0x277D85DE8];
  self->_currentNetworkScaledRSSI = a3;
  v4 = [(WFBuddyViewController *)self sortedNetworks];
  v5 = [v4 count];

  if (v5)
  {
    v6 = 0;
    while (1)
    {
      v7 = [(WFBuddyViewController *)self sortedNetworks];
      v8 = [v7 objectAtIndexedSubscript:v6];

      v9 = [v8 ssid];
      v10 = [(WFNetworkListRecord *)self->_currentNetwork ssid];
      v11 = [v9 isEqualToString:v10];

      if (v11)
      {
        break;
      }

      if (v5 == ++v6)
      {
        LODWORD(v6) = 0;
        break;
      }
    }

    v5 = v6;
  }

  v12 = [(WFBuddyViewController *)self sections];
  v13 = [v12 indexOfObject:&unk_288322A20];

  v14 = [MEMORY[0x277CCAA70] indexPathForRow:v5 inSection:v13];
  if (v14)
  {
    v15 = WFLogForCategory(0);
    v16 = OSLogForWFLogLevel(4uLL);
    if (WFCurrentLogLevel() >= 4 && v15 && os_log_type_enabled(v15, v16))
    {
      *buf = 136315138;
      v22 = "[WFBuddyViewController setCurrentNetworkScaledRSSI:]";
      _os_log_impl(&dword_273FB9000, v15, v16, "%s: reloading current network index path", buf, 0xCu);
    }

    v17 = [(OBTableWelcomeController *)self tableView];
    v20 = v14;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v20 count:1];
    [v17 reloadRowsAtIndexPaths:v18 withRowAnimation:5];
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)setCurrentNetwork:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a3;
  objc_storeStrong(&self->_currentNetwork, a3);
  [v5 scaledRSSI];
  self->_currentNetworkScaledRSSI = v6;
  self->_currentNetworkState = 0;
  v7 = WFLogForCategory(0);
  v8 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v7 && os_log_type_enabled(v7, v8))
  {
    v10 = 136315138;
    v11 = "[WFBuddyViewController setCurrentNetwork:]";
    _os_log_impl(&dword_273FB9000, v7, v8, "%s: Calling [self refresh]", &v10, 0xCu);
  }

  [(WFBuddyViewController *)self refresh];
  v9 = *MEMORY[0x277D85DE8];
}

- (void)setCurrentNetworkState:(int64_t)a3
{
  v9 = *MEMORY[0x277D85DE8];
  self->_currentNetworkState = a3;
  v4 = WFLogForCategory(0);
  v5 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v4 && os_log_type_enabled(v4, v5))
  {
    v7 = 136315138;
    v8 = "[WFBuddyViewController setCurrentNetworkState:]";
    _os_log_impl(&dword_273FB9000, v4, v5, "%s: Calling [self refresh]", &v7, 0xCu);
  }

  [(WFBuddyViewController *)self refresh];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)setDeviceCapability:(int64_t)a3
{
  if (self->_deviceCapability != a3)
  {
    self->_deviceCapability = a3;
    [(WFBuddyViewController *)self _refreshSections];
    alternateSetupTitle = self->_alternateSetupTitle;
    self->_alternateSetupTitle = 0;

    alternateSetupFooter = self->_alternateSetupFooter;
    self->_alternateSetupFooter = 0;

    supportsCellularActivation = self->_supportsCellularActivation;

    [(WFBuddyViewController *)self setSupportsCellularActivation:supportsCellularActivation];
  }
}

- (void)setShowAdditionalSetupInfo:(BOOL)a3
{
  v12 = *MEMORY[0x277D85DE8];
  if (self->_showAdditionalSetupInfo != a3)
  {
    v3 = a3;
    v5 = WFLogForCategory(0);
    v6 = OSLogForWFLogLevel(3uLL);
    if (WFCurrentLogLevel() >= 3 && v5 && os_log_type_enabled(v5, v6))
    {
      v8 = 136315394;
      v9 = "[WFBuddyViewController setShowAdditionalSetupInfo:]";
      v10 = 1024;
      v11 = v3;
      _os_log_impl(&dword_273FB9000, v5, v6, "%s: showAdditionalSetupInfo %d", &v8, 0x12u);
    }

    self->_showAdditionalSetupInfo = v3;
    [(WFBuddyViewController *)self _refreshSections];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)refresh
{
  v20 = *MEMORY[0x277D85DE8];
  if (os_signpost_enabled(MEMORY[0x277D86220]))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_273FB9000, MEMORY[0x277D86220], OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "buddy refresh tableView", "", buf, 2u);
  }

  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [(WFBuddyViewController *)self performSelectorOnMainThread:sel_refresh withObject:0 waitUntilDone:0];
    goto LABEL_19;
  }

  v3 = WFLogForCategory(0);
  v4 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v3 && os_log_type_enabled(v3, v4))
  {
    tableViewIsUpdating = self->_tableViewIsUpdating;
    tableReloadRequestQueued = self->_tableReloadRequestQueued;
    *buf = 136315650;
    v15 = "[WFBuddyViewController refresh]";
    v16 = 1024;
    v17 = tableViewIsUpdating;
    v18 = 1024;
    v19 = tableReloadRequestQueued;
    _os_log_impl(&dword_273FB9000, v3, v4, "%s: _tableViewIsUpdating: %d _tableReloadRequestQueued: %d", buf, 0x18u);
  }

  if (self->_tableViewIsUpdating)
  {
    if (self->_tableReloadRequestQueued)
    {
      goto LABEL_19;
    }

    v7 = WFLogForCategory(0);
    v8 = OSLogForWFLogLevel(3uLL);
    if (WFCurrentLogLevel() >= 3 && v7 && os_log_type_enabled(v7, v8))
    {
      *buf = 136315138;
      v15 = "[WFBuddyViewController refresh]";
      _os_log_impl(&dword_273FB9000, v7, v8, "%s: Queueing a table reload request.", buf, 0xCu);
    }

    self->_tableReloadRequestQueued = 1;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __32__WFBuddyViewController_refresh__block_invoke;
    block[3] = &unk_279EC5538;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else
  {
    v9 = [(OBTableWelcomeController *)self tableView];
    [v9 reloadData];

    v10 = [(OBTableWelcomeController *)self tableView];
    [v10 setNeedsLayout];

    v11 = [(OBTableWelcomeController *)self tableView];
    [v11 layoutIfNeeded];
  }

  if (os_signpost_enabled(MEMORY[0x277D86220]))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_273FB9000, MEMORY[0x277D86220], OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "buddy refresh tableView", "", buf, 2u);
  }

LABEL_19:
  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __32__WFBuddyViewController_refresh__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) refresh];
  *(*(a1 + 32) + 1279) = 0;
  return result;
}

- (void)_refreshSections
{
  v21 = *MEMORY[0x277D85DE8];
  if (self->_tableViewIsUpdating)
  {
    v3 = WFLogForCategory(0);
    v4 = OSLogForWFLogLevel(3uLL);
    if (WFCurrentLogLevel() >= 3 && v3 && os_log_type_enabled(v3, v4))
    {
      *buf = 136315138;
      v16 = "[WFBuddyViewController _refreshSections]";
      _os_log_impl(&dword_273FB9000, v3, v4, "%s: tried to refresh settings while table update is in progress, deferring until update is finished", buf, 0xCu);
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __41__WFBuddyViewController__refreshSections__block_invoke;
    block[3] = &unk_279EC5538;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else
  {
    v5 = [MEMORY[0x277CBEB40] orderedSetWithObject:&unk_288322A20];
    if (WFCapabilityIsChinaDevice([(WFBuddyViewController *)self deviceCapability]) && [(WFBuddyViewController *)self deviceCapability]!= 4)
    {
      [v5 addObject:&unk_288322A38];
    }

    if ([(WFBuddyViewController *)self showAdditionalSetupInfo])
    {
      [v5 addObject:&unk_288322A50];
    }

    v6 = WFLogForCategory(0);
    v7 = OSLogForWFLogLevel(3uLL);
    if (WFCurrentLogLevel() >= 3 && v6)
    {
      v8 = v6;
      if (os_log_type_enabled(v8, v7))
      {
        v9 = [(WFBuddyViewController *)self sections];
        v10 = [(WFBuddyViewController *)self _debugSectionStringFromSections:v9];
        v11 = [(WFBuddyViewController *)self _debugSectionStringFromSections:v5];
        *buf = 136315650;
        v16 = "[WFBuddyViewController _refreshSections]";
        v17 = 2112;
        v18 = v10;
        v19 = 2112;
        v20 = v11;
        _os_log_impl(&dword_273FB9000, v8, v7, "%s: old sections [%@], new sections [%@]", buf, 0x20u);
      }
    }

    v12 = [MEMORY[0x277CBEB70] orderedSetWithOrderedSet:v5];
    [(WFBuddyViewController *)self setSections:v12];

    [(WFBuddyViewController *)self refresh];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)powerStateDidChange:(BOOL)a3
{
  v3 = a3;
  v12 = *MEMORY[0x277D85DE8];
  v5 = WFLogForCategory(0);
  v6 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v5 && os_log_type_enabled(v5, v6))
  {
    v8 = 136315394;
    v9 = "[WFBuddyViewController powerStateDidChange:]";
    v10 = 1024;
    v11 = v3;
    _os_log_impl(&dword_273FB9000, v5, v6, "%s: state %d", &v8, 0x12u);
  }

  [(WFBuddyViewController *)self refresh];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)networkListDelegateWillPresentAccessoryViewController:(id)a3
{
  v3 = MEMORY[0x277D75348];
  v4 = a3;
  v5 = [v3 defaultBgColor];
  [v4 setBackgroundColor:v5];
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v3 = [(WFBuddyViewController *)self sections];
  v4 = [v3 count];

  return v4;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v6 = [(WFBuddyViewController *)self sections];
  v7 = [v6 objectAtIndexedSubscript:a4];

  v8 = [v7 integerValue];
  if ((v8 - 1) >= 2)
  {
    if (v8)
    {
      v9 = 0;
    }

    else
    {
      v10 = [(WFBuddyViewController *)self sortedNetworks];
      v11 = [v10 count];

      v9 = v11 + [(WFBuddyViewController *)self showOtherNetwork];
    }
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v61 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v7 section];
  v9 = [(WFBuddyViewController *)self sections];
  v10 = [v9 count];

  if (v8 < v10)
  {
    v11 = [(WFBuddyViewController *)self sections];
    v12 = [v11 objectAtIndexedSubscript:{objc_msgSend(v7, "section")}];

    v13 = [v12 integerValue];
    if (v13 == 2)
    {
      v17 = [v6 dequeueReusableCellWithIdentifier:@"WFBuddyAdditionalSetupCell"];
      if (!v17)
      {
        v17 = [[WFAdditionalSetupTableViewCell alloc] initWithStyle:0 reuseIdentifier:@"WFBuddyAdditionalSetupCell"];
      }

      v38 = [(WFBuddyViewController *)self alternateSetupTitle];
      v51 = [(WFAdditionalSetupTableViewCell *)v17 label];
      [v51 setText:v38];
    }

    else
    {
      if (v13 != 1)
      {
        if (v13)
        {
          v17 = 0;
LABEL_28:
          v34 = v17;

          goto LABEL_29;
        }

        v14 = [v7 row];
        v15 = [(WFBuddyViewController *)self sortedNetworks];
        if (v14 == [v15 count])
        {
          v16 = [(WFBuddyViewController *)self showOtherNetwork];

          if (v16)
          {
            v17 = [v6 dequeueReusableCellWithIdentifier:@"WFBuddyOtherNetworkCell"];
            if (!v17)
            {
              v17 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:0 reuseIdentifier:@"WFBuddyOtherNetworkCell"];
            }

            v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
            v19 = [v18 localizedStringForKey:@"kWFLocBuddyFooterViewTitle" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
            v20 = [(WFAdditionalSetupTableViewCell *)v17 textLabel];
            [v20 setText:v19];

            v21 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
            v22 = MEMORY[0x277D74300];
            [v21 pointSize];
            v23 = [v22 boldSystemFontOfSize:?];
            v24 = [(WFAdditionalSetupTableViewCell *)v17 textLabel];
            [v24 setFont:v23];

            v25 = [MEMORY[0x277D75348] defaultButtonColor];
            v26 = [(WFAdditionalSetupTableViewCell *)v17 textLabel];
            [v26 setTextColor:v25];

            v27 = [(WFAdditionalSetupTableViewCell *)v17 textLabel];
            [v27 setNumberOfLines:0];

            goto LABEL_26;
          }
        }

        else
        {
        }

        v52 = [(WFBuddyViewController *)self sortedNetworks];
        v21 = [v52 objectAtIndex:{objc_msgSend(v7, "row")}];

        v17 = [(WFBuddyViewController *)self _cellForNetworkRecord:v21 tableView:v6 indexPath:v7];
LABEL_26:

        [(WFAdditionalSetupTableViewCell *)v17 setSeparatorInset:0.0, 40.0, 0.0, 0.0];
        v38 = [MEMORY[0x277D75348] listPlatterBgColor];
        [(WFAdditionalSetupTableViewCell *)v17 setBackgroundColor:v38];
        goto LABEL_27;
      }

      v17 = [v6 dequeueReusableCellWithIdentifier:@"WFBuddyWAPICell"];
      if (!v17)
      {
        v17 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:0 reuseIdentifier:@"WFBuddyWAPICell"];
      }

      v35 = [(WFAdditionalSetupTableViewCell *)v17 textLabel];
      [v35 setNumberOfLines:0];

      v36 = [(WFBuddyViewController *)self alternateSetupTitle];
      v37 = [(WFAdditionalSetupTableViewCell *)v17 textLabel];
      [v37 setText:v36];

      v38 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
      v39 = MEMORY[0x277D74300];
      [v38 pointSize];
      v40 = [v39 boldSystemFontOfSize:?];
      v41 = [(WFAdditionalSetupTableViewCell *)v17 textLabel];
      [v41 setFont:v40];

      v42 = [MEMORY[0x277D75348] defaultButtonColor];
      v43 = [(WFAdditionalSetupTableViewCell *)v17 textLabel];
      [v43 setTextColor:v42];

      v44 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v45 = [v44 localizedStringForKey:@"kWFLocEnableWAPITitle" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
      v46 = [(WFAdditionalSetupTableViewCell *)v17 textLabel];
      [v46 setText:v45];

      v47 = [(WFBuddyViewController *)self enableWAPISwitch];
      [(WFAdditionalSetupTableViewCell *)v17 setAccessoryView:v47];

      v48 = [(WFBuddyViewController *)self listDelegate];
      v49 = [v48 networkListViewControllerWAPIEnabled:self];
      v50 = [(WFBuddyViewController *)self enableWAPISwitch];
      [v50 setOn:v49];

      v51 = [MEMORY[0x277D75348] listPlatterBgColor];
      [(WFAdditionalSetupTableViewCell *)v17 setBackgroundColor:v51];
    }

LABEL_27:
    goto LABEL_28;
  }

  v28 = WFLogForCategory(0);
  v29 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v28)
  {
    v30 = v28;
    if (os_log_type_enabled(v30, v29))
    {
      v31 = [v7 section];
      v32 = [(WFBuddyViewController *)self sections];
      v33 = [(WFBuddyViewController *)self _debugSectionStringFromSections:v32];
      v55 = 136315650;
      v56 = "[WFBuddyViewController tableView:cellForRowAtIndexPath:]";
      v57 = 2048;
      v58 = v31;
      v59 = 2112;
      v60 = v33;
      _os_log_impl(&dword_273FB9000, v30, v29, "%s: requested section (%lu) is not in expected sections [%@], returning default cell", &v55, 0x20u);
    }
  }

  v34 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:0 reuseIdentifier:0];
LABEL_29:

  v53 = *MEMORY[0x277D85DE8];

  return v34;
}

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  v28[2] = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [(WFBuddyViewController *)self sections];
  v7 = [v6 objectAtIndexedSubscript:{objc_msgSend(v5, "section")}];

  v8 = [v7 integerValue];
  if (v8)
  {
    if (v8 == 2)
    {
      v10 = [(WFBuddyViewController *)self alternateSetupTitle];
    }

    else if (v8 == 1)
    {
      v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v10 = [v9 localizedStringForKey:@"kWFLocEnableWAPITitle" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
    }

    else
    {
      v10 = 0;
    }

LABEL_12:
    v27[0] = *MEMORY[0x277D740C0];
    v19 = [MEMORY[0x277D75348] systemBlueColor];
    v28[0] = v19;
    v27[1] = *MEMORY[0x277D740A8];
    v20 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    v28[1] = v20;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:2];

    [v10 sizeWithAttributes:v21];
    v23 = v22;
    [@"A" sizeWithAttributes:v21];
    v18 = ceil(v23 + v24 * 2.0);

    goto LABEL_13;
  }

  v11 = [v5 row];
  v12 = [(WFBuddyViewController *)self sortedNetworks];
  v13 = [v12 count];

  if (v11 == v13)
  {
    v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v10 = [v14 localizedStringForKey:@"kWFLocBuddyFooterViewTitle" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
  }

  else
  {
    v10 = 0;
  }

  v15 = [v5 row];
  v16 = [(WFBuddyViewController *)self sortedNetworks];
  v17 = [v16 count];

  if (v15 >= v17)
  {
    goto LABEL_12;
  }

  v18 = *MEMORY[0x277D76F30];
LABEL_13:

  v25 = *MEMORY[0x277D85DE8];
  return v18;
}

- (id)_cellForNetworkRecord:(id)a3 tableView:(id)a4 indexPath:(id)a5
{
  v8 = a3;
  v9 = [a4 dequeueReusableCellWithIdentifier:@"WFBuddyNetworkListCell" forIndexPath:a5];
  v10 = [v8 title];
  [v9 setTitle:v10];

  [v9 setSubtitle:0];
  [v9 setPersonalHotspot:{objc_msgSend(v8, "iOSHotspot")}];
  [v9 setSecure:{objc_msgSend(v8, "isSecure")}];
  [v8 scaledRSSI];
  [v9 setBars:WFSignalBarsFromScaledRSSI(v11)];
  v12 = [v8 ssid];

  v13 = [(WFBuddyViewController *)self currentNetwork];
  v14 = [v13 ssid];
  v15 = [v12 isEqualToString:v14];

  if (v15)
  {
    [(WFBuddyViewController *)self currentNetworkScaledRSSI];
    [v9 setBars:WFSignalBarsFromScaledRSSI(v16)];
    [v9 setState:self->_currentNetworkState];
  }

  if ([(WFBuddyViewController *)self showNetworkSettings])
  {
    v17 = 4;
  }

  else
  {
    v17 = 0;
  }

  [v9 setAccessoryType:v17];
  v18 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  v19 = MEMORY[0x277D74300];
  [v18 pointSize];
  v20 = [v19 boldSystemFontOfSize:?];
  v21 = [v9 nameLabel];
  [v21 setFont:v20];

  v22 = [MEMORY[0x277D75348] defaultTextColor];
  v23 = [v9 textLabel];
  [v23 setTextColor:v22];

  v24 = v9;
  return v9;
}

- (void)tableView:(id)a3 accessoryButtonTappedForRowWithIndexPath:(id)a4
{
  v8 = a4;
  if (![v8 section])
  {
    v5 = [(WFBuddyViewController *)self sortedNetworks];
    v6 = [v5 objectAtIndex:{objc_msgSend(v8, "row")}];

    v7 = [(WFBuddyViewController *)self listDelegate];
    [v7 networkListViewController:self showSettingsForNetwork:v6 context:1];
  }
}

- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4
{
  if (a4 == 1)
  {
    v6 = [(WFBuddyViewController *)self alternateSetupFooter];
    if (v6)
    {
      v7 = v6;
      v8 = [(WFBuddyViewController *)self showAdditionalSetupInfo];

      if (v8)
      {
        v6 = [(WFBuddyViewController *)self alternateSetupFooter];
      }

      else
      {
        v6 = 0;
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = WFLogForCategory(0);
  v9 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v8 && os_log_type_enabled(v8, v9))
  {
    v21 = 136315394;
    v22 = "[WFBuddyViewController tableView:didSelectRowAtIndexPath:]";
    v23 = 2112;
    v24 = v7;
    _os_log_impl(&dword_273FB9000, v8, v9, "%s: indexPath %@", &v21, 0x16u);
  }

  v10 = [(WFBuddyViewController *)self sections];
  v11 = [v10 objectAtIndexedSubscript:{objc_msgSend(v7, "section")}];

  v12 = [v11 integerValue];
  if (v12 == 2)
  {
    v16 = [(WFBuddyViewController *)self buddyDelegate];
    [v16 buddyViewControllerDidPressAlternateSetupButton:self];
  }

  else if (!v12)
  {
    v13 = [v7 row];
    v14 = [(WFBuddyViewController *)self sortedNetworks];
    v15 = [v14 count];

    if (v13 == v15)
    {
      [(WFBuddyViewController *)self _chooseOtherNetworkTapped:0];
    }

    else
    {
      v17 = [(WFBuddyViewController *)self sortedNetworks];
      v18 = [v17 objectAtIndex:{objc_msgSend(v7, "row")}];

      v19 = [(WFBuddyViewController *)self listDelegate];
      [v19 networkListViewController:self didTapRecord:v18];
    }
  }

  [v6 deselectRowAtIndexPath:v7 animated:1];

  v20 = *MEMORY[0x277D85DE8];
}

- (void)tableView:(id)a3 willDisplayFooterView:(id)a4 forSection:(int64_t)a5
{
  v7 = a4;
  if (a5 == 1)
  {
    v14 = v7;
    v8 = [(WFBuddyViewController *)self alternateSetupFooter];
    v7 = v14;
    if (v8)
    {
      v9 = [(WFBuddyViewController *)self showAdditionalSetupInfo];

      v7 = v14;
      if (v9)
      {
        v10 = MEMORY[0x277D75348];
        v11 = v14;
        v12 = [v10 altTextColor];
        v13 = [v11 textLabel];

        [v13 setTextColor:v12];
        v7 = v14;
      }
    }
  }
}

- (void)_chooseOtherNetworkTapped:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = WFLogForCategory(0);
  v6 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v5 && os_log_type_enabled(v5, v6))
  {
    v9 = 136315394;
    v10 = "[WFBuddyViewController _chooseOtherNetworkTapped:]";
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_273FB9000, v5, v6, "%s: sender %@", &v9, 0x16u);
  }

  v7 = [(WFBuddyViewController *)self listDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v7 networkListViewControllerDidTapOtherNetwork:self];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_enableWAPISwitchChanged:(id)a3
{
  v4 = a3;
  v6 = [(WFBuddyViewController *)self listDelegate];
  v5 = [v4 isOn];

  [v6 networkListViewController:self setWAPIEnabled:v5];
}

- (UISwitch)enableWAPISwitch
{
  enableWAPISwitch = self->_enableWAPISwitch;
  if (!enableWAPISwitch)
  {
    v4 = objc_alloc(MEMORY[0x277D75AE8]);
    v5 = [v4 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    v6 = self->_enableWAPISwitch;
    self->_enableWAPISwitch = v5;
    v7 = v5;

    [(UISwitch *)self->_enableWAPISwitch addTarget:self action:sel__enableWAPISwitchChanged_ forControlEvents:4096];
    enableWAPISwitch = self->_enableWAPISwitch;
  }

  return enableWAPISwitch;
}

- (void)_notifyBuddyWiFiPickerIsVisble:(BOOL)a3
{
  v3 = a3;
  v12 = *MEMORY[0x277D85DE8];
  v4 = WFLogForCategory(0);
  v5 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v4 && os_log_type_enabled(v4, v5))
  {
    v8 = 136315394;
    v9 = "[WFBuddyViewController _notifyBuddyWiFiPickerIsVisble:]";
    v10 = 1024;
    v11 = v3;
    _os_log_impl(&dword_273FB9000, v4, v5, "%s: visible %d", &v8, 0x12u);
  }

  v6 = _notifyBuddyWiFiPickerIsVisble__token;
  if (_notifyBuddyWiFiPickerIsVisble__token != -1 || (notify_register_check("com.apple.airportsettingsvisible", &_notifyBuddyWiFiPickerIsVisble__token), v6 = _notifyBuddyWiFiPickerIsVisble__token, _notifyBuddyWiFiPickerIsVisble__token != -1))
  {
    notify_set_state(v6, v3);
    notify_post("com.apple.airportsettingsvisible");
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (id)_nameOfSection:(int64_t)a3
{
  if (a3 > 2)
  {
    return @"invalid section";
  }

  else
  {
    return off_279EC62E0[a3];
  }
}

- (id)_debugSectionStringFromSections:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CCAB68] string];
  v6 = [v4 count];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = -[WFBuddyViewController _nameOfSection:](self, "_nameOfSection:", [*(*(&v16 + 1) + 8 * i) integerValue]);
        [v5 appendFormat:@"%lu: %@", v10, v13, v16];

        if (v6 - 1 != v10)
        {
          [v5 appendString:{@", "}];
        }

        ++v10;
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v5;
}

- (WFBuddyViewControllerDelegate)buddyDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_buddyDelegate);

  return WeakRetained;
}

- (WFNetworkListDelegate)listDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_listDelegate);

  return WeakRetained;
}

@end