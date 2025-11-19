@interface WFPickerViewController
- (UITableView)tableView;
- (WFNetworkListDelegate)listDelegate;
- (WFPickerViewController)init;
- (id)_cellForNetworkRecord:(id)a3 tableView:(id)a4 indexPath:(id)a5;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)didReceiveMemoryWarning;
- (void)loadView;
- (void)refresh;
- (void)setCurrentNetwork:(id)a3;
- (void)setNetworks:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation WFPickerViewController

- (WFPickerViewController)init
{
  v3.receiver = self;
  v3.super_class = WFPickerViewController;
  result = [(WFPickerViewController *)&v3 init];
  result->_showCurrentNetworkTop = 0;
  result->_dismissed = 0;
  return result;
}

- (void)loadView
{
  v29.receiver = self;
  v29.super_class = WFPickerViewController;
  [(WFPickerViewController *)&v29 loadView];
  v3 = objc_alloc(MEMORY[0x277D75B40]);
  v4 = [(WFPickerViewController *)self view];
  [v4 bounds];
  v5 = [v3 initWithFrame:0 style:?];

  [v5 setDelegate:self];
  [v5 setDataSource:self];
  v6 = [(WFPickerViewController *)self view];
  [v6 addSubview:v5];

  v7 = [(WFPickerViewController *)self view];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];

  [(WFPickerViewController *)self setTableView:v5];
  v8 = [(WFPickerViewController *)self tableView];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];

  v9 = [(WFPickerViewController *)self tableView];
  v10 = [v9 leftAnchor];
  v11 = [(WFPickerViewController *)self view];
  v12 = [v11 leftAnchor];
  v13 = [v10 constraintEqualToAnchor:v12];
  [v13 setActive:1];

  v14 = [(WFPickerViewController *)self tableView];
  v15 = [v14 topAnchor];
  v16 = [(WFPickerViewController *)self view];
  v17 = [v16 topAnchor];
  v18 = [v15 constraintEqualToAnchor:v17];
  [v18 setActive:1];

  v19 = [(WFPickerViewController *)self tableView];
  v20 = [v19 rightAnchor];
  v21 = [(WFPickerViewController *)self view];
  v22 = [v21 rightAnchor];
  v23 = [v20 constraintEqualToAnchor:v22];
  [v23 setActive:1];

  v24 = [(WFPickerViewController *)self tableView];
  v25 = [v24 bottomAnchor];
  v26 = [(WFPickerViewController *)self view];
  v27 = [v26 bottomAnchor];
  v28 = [v25 constraintEqualToAnchor:v27];
  [v28 setActive:1];
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = WFPickerViewController;
  [(WFPickerViewController *)&v8 viewDidLoad];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [MEMORY[0x277D757B0] nibWithNibName:@"WFNetworkListCell" bundle:v3];
  v5 = [(WFPickerViewController *)self tableView];
  [v5 registerNib:v4 forCellReuseIdentifier:@"WFNetworkCell"];

  v6 = [MEMORY[0x277D757B0] nibWithNibName:@"WFHotspotCell" bundle:v3];
  v7 = [(WFPickerViewController *)self tableView];
  [v7 registerNib:v6 forCellReuseIdentifier:@"WFHotspotCell"];
}

- (void)didReceiveMemoryWarning
{
  v11 = *MEMORY[0x277D85DE8];
  v6.receiver = self;
  v6.super_class = WFPickerViewController;
  [(WFPickerViewController *)&v6 didReceiveMemoryWarning];
  v3 = WFLogForCategory(3uLL);
  v4 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v3 && os_log_type_enabled(v3, v4))
  {
    *buf = 136315394;
    v8 = "[WFPickerViewController didReceiveMemoryWarning]";
    v9 = 2112;
    v10 = self;
    _os_log_impl(&dword_273FB9000, v3, v4, "%s: %@", buf, 0x16u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)setNetworks:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = WFLogForCategory(3uLL);
  v6 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v5)
  {
    v7 = v5;
    if (os_log_type_enabled(v7, v6))
    {
      v19 = 136315650;
      v20 = "[WFPickerViewController setNetworks:]";
      v21 = 2048;
      v22 = [v4 count];
      v23 = 2112;
      v24 = v4;
      _os_log_impl(&dword_273FB9000, v7, v6, "%s: networks (%lu): %@", &v19, 0x20u);
    }
  }

  if ([(WFPickerViewController *)self dismissed])
  {
    v8 = WFLogForCategory(3uLL);
    v9 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v8 && os_log_type_enabled(v8, v9))
    {
      v19 = 136315138;
      v20 = "[WFPickerViewController setNetworks:]";
      _os_log_impl(&dword_273FB9000, v8, v9, "%s: disregarding call to set networks, this view controller is no longer visible", &v19, 0xCu);
    }
  }

  else
  {
    if (v4)
    {
      v10 = [v4 mutableCopy];
      v11 = [(WFPickerViewController *)self currentNetwork];
      if (v11)
      {
        showCurrentNetworkTop = self->_showCurrentNetworkTop;

        if (!showCurrentNetworkTop)
        {
          v13 = [(WFPickerViewController *)self currentNetwork];
          [(NSArray *)v10 addObject:v13];
        }
      }

      v14 = [(NSArray *)v10 allObjects];
      v15 = WFScanRecordDefaultSortCompartor();
      v16 = [v14 sortedArrayUsingComparator:v15];
      sortedNetworks = self->_sortedNetworks;
      self->_sortedNetworks = v16;
    }

    else
    {
      v10 = self->_sortedNetworks;
      self->_sortedNetworks = 0;
    }

    [(WFPickerViewController *)self refresh];
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)setCurrentNetwork:(id)a3
{
  objc_storeStrong(&self->_currentNetwork, a3);
  v5 = a3;
  [v5 scaledRSSI];
  v7 = v6;

  self->_currentNetworkScaledRSSI = v7;
  self->_currentNetworkState = 0;

  [(WFPickerViewController *)self refresh];
}

- (void)refresh
{
  v11 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    if ([(WFPickerViewController *)self dismissed])
    {
      v3 = WFLogForCategory(3uLL);
      v4 = OSLogForWFLogLevel(1uLL);
      if (WFCurrentLogLevel() && v3 && os_log_type_enabled(v3, v4))
      {
        *buf = 136315138;
        v10 = "[WFPickerViewController refresh]";
        _os_log_impl(&dword_273FB9000, v3, v4, "%s: disregarding call to refresh, this view controller is no longer visible", buf, 0xCu);
      }

      v5 = *MEMORY[0x277D85DE8];
    }

    else
    {
      v8 = [(WFPickerViewController *)self tableView];
      [v8 reloadData];
      v7 = *MEMORY[0x277D85DE8];
    }
  }

  else
  {
    v6 = *MEMORY[0x277D85DE8];

    [(WFPickerViewController *)self performSelectorOnMainThread:sel_refresh withObject:0 waitUntilDone:0];
  }
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v4 = [(WFPickerViewController *)self listDelegate];
  v5 = [v4 networkListViewControllerCurrentPowerState:self];

  if (!v5)
  {
    return 0;
  }

  v6 = [(WFPickerViewController *)self currentNetwork];
  if (v6)
  {
    showCurrentNetworkTop = self->_showCurrentNetworkTop;
  }

  else
  {
    showCurrentNetworkTop = 0;
  }

  v9 = [(WFPickerViewController *)self sortedNetworks];
  v10 = [v9 count];

  if (v10)
  {
    return showCurrentNetworkTop + 1;
  }

  else
  {
    return showCurrentNetworkTop;
  }
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v6 = a3;
  if (!a4 && ([(WFPickerViewController *)self currentNetwork], (v11 = objc_claimAutoreleasedReturnValue()) != 0) && (showCurrentNetworkTop = self->_showCurrentNetworkTop, v11, showCurrentNetworkTop))
  {
    v10 = 1;
  }

  else
  {
    v7 = [(WFPickerViewController *)self sortedNetworks];
    v8 = [v7 count];

    if (v8)
    {
      v9 = [(WFPickerViewController *)self sortedNetworks];
      v10 = [v9 count];
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(WFPickerViewController *)self sortedNetworks];
  v9 = [v8 objectAtIndex:{objc_msgSend(v6, "row")}];

  v10 = [(WFPickerViewController *)self _cellForNetworkRecord:v9 tableView:v7 indexPath:v6];

  return v10;
}

- (id)_cellForNetworkRecord:(id)a3 tableView:(id)a4 indexPath:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = [v8 title];
  [0 setTitle:v11];

  if ([v8 isInstantHotspot])
  {
    v12 = [v10 dequeueReusableCellWithIdentifier:@"WFHotspotCell" forIndexPath:v9];

    v13 = [v8 title];
    [v12 setTitle:v13];

    v14 = [v12 hotspotDetails];

    if (!v14)
    {
      v15 = objc_alloc_init(WFHotspotDetails);
      v16 = [v8 hotspotBatteryLife];
      [(WFHotspotDetails *)v15 setBatteryLife:v16];

      v17 = [v8 hotspotCellularProtocol];
      [(WFHotspotDetails *)v15 setCellularProtocolString:v17];

      v18 = [v8 hotspotSignalStrength];
      [(WFHotspotDetails *)v15 setSignalStrength:v18];

      [v12 setHotspotDetails:v15];
    }
  }

  else
  {
    v12 = [v10 dequeueReusableCellWithIdentifier:@"WFNetworkCell" forIndexPath:v9];

    v19 = [v8 title];
    [v12 setTitle:v19];

    [v12 setSubtitle:0];
    [v12 setPersonalHotspot:{objc_msgSend(v8, "iOSHotspot")}];
    [v12 setSecure:{objc_msgSend(v8, "isSecure")}];
    [v8 scaledRSSI];
    [v12 setBars:WFSignalBarsFromScaledRSSI(v20)];
    [v12 setLayoutMargins:{0.0, 0.0, 0.0, 60.0}];
  }

  v21 = [(WFPickerViewController *)self currentNetwork];
  v22 = [v8 isEqual:v21];

  if (v22)
  {
    [(WFPickerViewController *)self currentNetworkScaledRSSI];
    [v12 setBars:WFSignalBarsFromScaledRSSI(v23)];
    [v12 setState:self->_currentNetworkState];
  }

  [v12 setAccessoryType:0];

  return v12;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = [(WFPickerViewController *)self listDelegate];
  v8 = [(WFPickerViewController *)self sortedNetworks];
  v9 = [v8 objectAtIndex:{objc_msgSend(v6, "row")}];

  [v7 networkListViewController:self didTapRecord:v9];
  if (self->_showCurrentNetworkTop)
  {
    v10 = [(WFPickerViewController *)self tableView];
    v11 = [MEMORY[0x277CCAA70] indexPathForRow:0 inSection:0];
    [v10 scrollToRowAtIndexPath:v11 atScrollPosition:1 animated:1];
  }

  [v12 deselectRowAtIndexPath:v6 animated:1];
}

- (UITableView)tableView
{
  WeakRetained = objc_loadWeakRetained(&self->_tableView);

  return WeakRetained;
}

- (WFNetworkListDelegate)listDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_listDelegate);

  return WeakRetained;
}

@end