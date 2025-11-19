@interface WFNANDiscoveryResultsTableViewController
- (WFNANDiscoveryResultsTableViewController)initWithContext:(id)a3 forSubscriber:(id)a4;
- (void)_configureDataSource;
- (void)_handleDataSessionsChangedNotification:(id)a3;
- (void)_handleDiscoveryResultsChangedNotification:(id)a3;
- (void)dataSession:(id)a3 confirmedForPeerDataAddress:(id)a4 serviceSpecificInfo:(id)a5;
- (void)dataSession:(id)a3 failedToStartWithError:(int64_t)a4;
- (void)dataSession:(id)a3 terminatedWithReason:(int64_t)a4;
- (void)dataSessionRequestStarted:(id)a3;
- (void)passphraseTextFieldDidChange:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation WFNANDiscoveryResultsTableViewController

- (WFNANDiscoveryResultsTableViewController)initWithContext:(id)a3 forSubscriber:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [MEMORY[0x277D7B980] defaultAppearanceProxy];
  v19.receiver = self;
  v19.super_class = WFNANDiscoveryResultsTableViewController;
  v10 = -[WFNANDiscoveryResultsTableViewController initWithStyle:](&v19, sel_initWithStyle_, [v9 tableViewStyle]);

  if (v10)
  {
    v11 = MEMORY[0x277CBEB70];
    v12 = [(WFNANDiscoveryResultsTableViewController *)v10 _defaultSections];
    v13 = [v11 orderedSetWithArray:v12];
    sections = v10->_sections;
    v10->_sections = v13;

    objc_storeStrong(&v10->_context, a3);
    objc_storeStrong(&v10->_subscriber, a4);
    passphrase = v10->_passphrase;
    v10->_passphrase = &stru_2882E4AD8;

    v16 = [MEMORY[0x277CCAB98] defaultCenter];
    [v16 addObserver:v10 selector:sel__handleDiscoveryResultsChangedNotification_ name:@"WFNANDiscoveryResultsChangedNotification" object:0];

    v17 = [MEMORY[0x277CCAB98] defaultCenter];
    [v17 addObserver:v10 selector:sel__handleDataSessionsChangedNotification_ name:@"WFNANDataSessionsForSubscribeChangedNotification" object:0];

    [(WFInsetTableViewController *)v10 setReloadDataOnUpdateSectionContentInset:0];
  }

  return v10;
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = WFNANDiscoveryResultsTableViewController;
  [(WFNANDiscoveryResultsTableViewController *)&v7 viewDidLoad];
  v3 = MEMORY[0x277CCACA8];
  v4 = [(WiFiAwareSubscriber *)self->_subscriber configuration];
  v5 = [v4 serviceName];
  v6 = [v3 stringWithFormat:@"%@", v5];
  [(WFNANDiscoveryResultsTableViewController *)self setTitle:v6];

  [(WFNANDiscoveryResultsTableViewController *)self _configureDataSource];
}

- (void)_configureDataSource
{
  v38[1] = *MEMORY[0x277D85DE8];
  v3 = [WFNANDiscoveryResultsTableViewDataSource alloc];
  v4 = [(WFNANDiscoveryResultsTableViewController *)self tableView];
  v5 = [(WFNANDiscoveryResultsTableViewController *)self context];
  v6 = [(WFNANDiscoveryResultsTableViewController *)self subscriber];
  v7 = [(WFNANDiscoveryResultsTableViewController *)self sections];
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __64__WFNANDiscoveryResultsTableViewController__configureDataSource__block_invoke;
  v36[3] = &unk_279EBCCC0;
  v36[4] = self;
  v8 = [(WFNANDiscoveryResultsTableViewDataSource *)v3 initWithTableView:v4 context:v5 subscriber:v6 sections:v7 cellProvider:v36];
  [(WFNANDiscoveryResultsTableViewController *)self setDataSource:v8];

  v9 = objc_alloc_init(MEMORY[0x277CFB890]);
  v10 = [MEMORY[0x277CBEB18] array];
  v11 = [(WFNANDiscoveryResultsTableViewController *)self sections];
  v12 = [v11 count];

  if (v12)
  {
    v13 = 0;
    do
    {
      v14 = [(WFNANDiscoveryResultsTableViewController *)self sections];
      v15 = [v14 objectAtIndexedSubscript:v13];
      v16 = [v15 unsignedIntegerValue];

      v17 = [(WFNANDiscoveryResultsTableViewController *)self _identifierForSection:v16];
      [v10 addObject:v17];

      ++v13;
      v18 = [(WFNANDiscoveryResultsTableViewController *)self sections];
      v19 = [v18 count];
    }

    while (v19 > v13);
  }

  [v9 appendSectionsWithIdentifiers:v10];
  context = self->_context;
  v21 = [(WFNANDiscoveryResultsTableViewController *)self subscriber];
  v22 = [(WFNANTableViewContext *)context getDiscoveryResultsCountForSubscriber:v21];

  if (v22 <= 0)
  {
    v38[0] = @"WFNANDiscoveryResultsNoDiscoveryResultsIdentifier";
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:1];
    v25 = [(WFNANDiscoveryResultsTableViewController *)self _identifierForSection:0];
    [v9 appendItemsWithIdentifiers:v24 intoSectionWithIdentifier:v25];
  }

  else
  {
    v23 = self->_context;
    v24 = [(WFNANDiscoveryResultsTableViewController *)self subscriber];
    v25 = [(WFNANTableViewContext *)v23 getDiscoveryResultsForSubscriber:v24];
    v26 = [(WFNANDiscoveryResultsTableViewController *)self _identifierForSection:0];
    [v9 appendItemsWithIdentifiers:v25 intoSectionWithIdentifier:v26];
  }

  v27 = self->_context;
  v28 = [(WFNANDiscoveryResultsTableViewController *)self subscriber];
  v29 = [(WFNANTableViewContext *)v27 getDataSessionsCountForSubscriber:v28];

  if (v29 < 1)
  {
    v37 = @"WFNANDiscoveryResultsNoDataSessionsIdentifier";
    v31 = [MEMORY[0x277CBEA60] arrayWithObjects:&v37 count:1];
    v32 = [(WFNANDiscoveryResultsTableViewController *)self _identifierForSection:1];
    [v9 appendItemsWithIdentifiers:v31 intoSectionWithIdentifier:v32];
  }

  else
  {
    v30 = self->_context;
    v31 = [(WFNANDiscoveryResultsTableViewController *)self subscriber];
    v32 = [(WFNANTableViewContext *)v30 getDataSessionsForSubscriber:v31];
    v33 = [(WFNANDiscoveryResultsTableViewController *)self _identifierForSection:1];
    [v9 appendItemsWithIdentifiers:v32 intoSectionWithIdentifier:v33];
  }

  v34 = [(WFNANDiscoveryResultsTableViewController *)self dataSource];
  [v34 applySnapshot:v9 animatingDifferences:1];

  v35 = *MEMORY[0x277D85DE8];
}

id __64__WFNANDiscoveryResultsTableViewController__configureDataSource__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = a2;
  v9 = [v7 sections];
  v10 = [v9 objectAtIndexedSubscript:{objc_msgSend(v6, "section")}];
  v11 = [v10 unsignedIntegerValue];

  v12 = [v8 dequeueReusableCellWithIdentifier:@"WFNANTableViewTextCellIdentifier"];

  if (!v12)
  {
    v12 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:1 reuseIdentifier:@"WFNANTableViewTextCellIdentifier"];
  }

  [v12 setSelectionStyle:0];
  if (v11 == 1)
  {
    if ([*(*(a1 + 32) + 1056) getDataSessionsCountForSubscriber:*(*(a1 + 32) + 1064)] >= 1)
    {
      v13 = [*(*(a1 + 32) + 1056) getDataSessionAtIndex:objc_msgSend(v6 forSubscriber:{"row"), *(*(a1 + 32) + 1064)}];
      v30 = [v13 discoveryResult];
      v17 = [v30 serviceSpecificInfo];
      v18 = [v17 instanceName];
      v19 = [v18 length];
      if (v19)
      {
        v20 = [v13 discoveryResult];
        v3 = [v20 serviceSpecificInfo];
        [v3 instanceName];
      }

      else
      {
        v20 = [v13 localDataAddress];
        [v20 description];
      }
      v21 = ;
      v28 = [v12 textLabel];
      [v28 setText:v21];

      if (v19)
      {

        v21 = v3;
      }

      v14 = [v13 localDataAddress];
      v15 = [v14 ipv6LinkLocalAddress];
      v16 = stringForIpv6LinkLocalAddress(v15);
      v26 = [v12 detailTextLabel];
      [v26 setText:v16];
      goto LABEL_20;
    }

    v25 = *(a1 + 32);
    v23 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v13 = v23;
    v24 = @"kWFLocNANNoActiveDataSessions";
  }

  else
  {
    if (v11)
    {
      goto LABEL_22;
    }

    if ([*(*(a1 + 32) + 1056) getDiscoveryResultsCountForSubscriber:*(*(a1 + 32) + 1064)])
    {
      v13 = [*(*(a1 + 32) + 1056) getDiscoveryResultAtIndex:objc_msgSend(v6 forSubscriber:{"row"), *(*(a1 + 32) + 1064)}];
      v14 = [v13 serviceSpecificInfo];
      v15 = [v14 instanceName];
      if ([v15 length])
      {
        v16 = [v13 serviceSpecificInfo];
        [v16 instanceName];
      }

      else
      {
        v16 = [v13 publisherAddress];
        [v16 description];
      }
      v26 = ;
      v27 = [v12 textLabel];
      [v27 setText:v26];

LABEL_20:
      goto LABEL_21;
    }

    v22 = *(a1 + 32);
    v23 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v13 = v23;
    v24 = @"kWFLocNANNoDiscoveryResults";
  }

  v14 = [v23 localizedStringForKey:v24 value:&stru_2882E4AD8 table:@"WiFiKitUILocalizableStrings"];
  v15 = [v12 textLabel];
  [v15 setText:v14];
LABEL_21:

LABEL_22:

  return v12;
}

- (void)_handleDiscoveryResultsChangedNotification:(id)a3
{
  v26[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(WFNANDiscoveryResultsTableViewController *)self dataSource];
  v6 = [v5 snapshot];

  v7 = [v4 userInfo];
  v8 = [v7 objectForKeyedSubscript:@"WFNANTableViewContextChangedSubscriberKey"];

  v9 = [v4 userInfo];
  v10 = [v9 objectForKeyedSubscript:@"WFNANTableViewContextChangedDiscoveryResultKey"];

  v11 = [v4 userInfo];

  v12 = [v11 objectForKeyedSubscript:@"WFNANTableViewContextChangedOperationTypeKey"];

  v13 = [(WFNANDiscoveryResultsTableViewController *)self subscriber];
  if (v8 != v13 || v12 == 0)
  {
  }

  else
  {

    if (v10)
    {
      v15 = [v12 unsignedIntegerValue];
      if (v15 == 1)
      {
        v24 = v10;
        v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v24 count:1];
        [v6 deleteItemsWithIdentifiers:v19];

        if ([(WFNANTableViewContext *)self->_context getDiscoveryResultsCountForSubscriber:v8])
        {
LABEL_15:
          v21 = [(WFNANDiscoveryResultsTableViewController *)self dataSource];
          [v21 applySnapshot:v6 animatingDifferences:1];

          goto LABEL_16;
        }

        v23 = @"WFNANDiscoveryResultsNoDiscoveryResultsIdentifier";
        v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v23 count:1];
        v20 = [(WFNANDiscoveryResultsTableViewController *)self _identifierForSection:0];
        [v6 appendItemsWithIdentifiers:v18 intoSectionWithIdentifier:v20];
      }

      else
      {
        if (v15)
        {
          goto LABEL_15;
        }

        v26[0] = v10;
        v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:1];
        v17 = [(WFNANDiscoveryResultsTableViewController *)self _identifierForSection:0];
        [v6 appendItemsWithIdentifiers:v16 intoSectionWithIdentifier:v17];

        if ([(WFNANTableViewContext *)self->_context getDiscoveryResultsCountForSubscriber:v8]!= 1)
        {
          goto LABEL_15;
        }

        v25 = @"WFNANDiscoveryResultsNoDiscoveryResultsIdentifier";
        v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v25 count:1];
        [v6 deleteItemsWithIdentifiers:v18];
      }

      goto LABEL_15;
    }
  }

LABEL_16:

  v22 = *MEMORY[0x277D85DE8];
}

- (void)_handleDataSessionsChangedNotification:(id)a3
{
  v21[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(WFNANDiscoveryResultsTableViewController *)self dataSource];
  v6 = [v5 snapshot];

  v7 = [v4 userInfo];
  v8 = [v7 objectForKeyedSubscript:@"WFNANTableViewContextChangedSubscriberKey"];

  v9 = [v4 userInfo];
  v10 = [v9 objectForKeyedSubscript:@"WFNANTableViewContextChangedDataSessionKey"];

  v11 = [v4 userInfo];

  v12 = [v11 objectForKeyedSubscript:@"WFNANTableViewContextChangedOperationTypeKey"];

  v13 = [(WFNANDiscoveryResultsTableViewController *)self subscriber];
  if (v8 != v13 || v12 == 0)
  {
  }

  else
  {

    if (v10)
    {
      if ([v12 unsignedIntegerValue] == 1)
      {
        v21[0] = v10;
        v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
        [v6 deleteItemsWithIdentifiers:v15];

        if (![(WFNANTableViewContext *)self->_context getDataSessionsCountForSubscriber:self->_subscriber])
        {
          v20 = @"WFNANDiscoveryResultsNoDataSessionsIdentifier";
          v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v20 count:1];
          v17 = [(WFNANDiscoveryResultsTableViewController *)self _identifierForSection:1];
          [v6 appendItemsWithIdentifiers:v16 intoSectionWithIdentifier:v17];
        }
      }

      v18 = [(WFNANDiscoveryResultsTableViewController *)self dataSource];
      [v18 applySnapshot:v6 animatingDifferences:1];
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)passphraseTextFieldDidChange:(id)a3
{
  v4 = [a3 text];
  passphrase = self->_passphrase;
  self->_passphrase = v4;

  MEMORY[0x2821F96F8]();
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(WFNANDiscoveryResultsTableViewController *)self sections];
  v7 = [v6 objectAtIndexedSubscript:{objc_msgSend(v5, "section")}];
  v8 = [v7 unsignedIntegerValue];

  if (!v8 && [(WFNANTableViewContext *)self->_context getDiscoveryResultsCountForSubscriber:self->_subscriber]>= 1)
  {
    v9 = MEMORY[0x277D75110];
    v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v11 = [v10 localizedStringForKey:@"kWFLocNANPassphrasePopupTitle" value:&stru_2882E4AD8 table:@"WiFiKitUILocalizableStrings"];
    v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v13 = [v12 localizedStringForKey:@"kWFLocNANPassphrasePopupMessage" value:&stru_2882E4AD8 table:@"WiFiKitUILocalizableStrings"];
    v14 = [v9 alertControllerWithTitle:v11 message:v13 preferredStyle:1];

    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __78__WFNANDiscoveryResultsTableViewController_tableView_didSelectRowAtIndexPath___block_invoke;
    v20[3] = &unk_279EBCF20;
    v20[4] = self;
    [v14 addTextFieldWithConfigurationHandler:v20];
    v15 = [MEMORY[0x277D750F8] actionWithTitle:@"Cancel" style:0 handler:&__block_literal_global_0];
    [v14 addAction:v15];
    v16 = MEMORY[0x277D750F8];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __78__WFNANDiscoveryResultsTableViewController_tableView_didSelectRowAtIndexPath___block_invoke_3;
    v18[3] = &unk_279EBCF68;
    v18[4] = self;
    v19 = v5;
    v17 = [v16 actionWithTitle:@"Continue" style:0 handler:v18];
    [v14 addAction:v17];
    [v14 setPreferredAction:v17];
    [(WFNANDiscoveryResultsTableViewController *)self presentViewController:v14 animated:1 completion:0];
  }
}

void __78__WFNANDiscoveryResultsTableViewController_tableView_didSelectRowAtIndexPath___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CCA8D8];
  v4 = *(a1 + 32);
  v7 = a2;
  v5 = [v3 bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"kWFLocNANPassphrase" value:&stru_2882E4AD8 table:@"WiFiKitUILocalizableStrings"];
  [v7 setPlaceholder:v6];

  [v7 addTarget:*(a1 + 32) action:sel_passphraseTextFieldDidChange_ forControlEvents:0x20000];
}

void __78__WFNANDiscoveryResultsTableViewController_tableView_didSelectRowAtIndexPath___block_invoke_3(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 1056) getDiscoveryResultAtIndex:objc_msgSend(*(a1 + 40) forSubscriber:{"row"), *(*(a1 + 32) + 1064)}];
  v3 = WFLogForCategory(0);
  v4 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v3)
  {
    v5 = v3;
    if (os_log_type_enabled(v5, v4))
    {
      v6 = [v2 description];
      v12 = 138412290;
      v13 = v6;
      _os_log_impl(&dword_273ECD000, v5, v4, "Establishing a data session with discovery result %@", &v12, 0xCu);
    }
  }

  v7 = [objc_alloc(MEMORY[0x277D7BA78]) initWithDiscoveryResult:v2 serviceType:0 serviceSpecificInfo:0 passphrase:*(*(a1 + 32) + 1072)];
  [v7 setDelegate:*(a1 + 32)];
  [v7 start];
  v8 = *(a1 + 32);
  v9 = v8[132];
  v10 = [v8 subscriber];
  [v9 addDataSession:v7 forSubscriber:v10];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)dataSession:(id)a3 confirmedForPeerDataAddress:(id)a4 serviceSpecificInfo:(id)a5
{
  v32 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = WFLogForCategory(0);
  v12 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v11)
  {
    v13 = v11;
    if (os_log_type_enabled(v13, v12))
    {
      v14 = [v8 description];
      v15 = [v9 description];
      v16 = [v10 description];
      *buf = 138412802;
      v27 = v14;
      v28 = 2112;
      v29 = v15;
      v30 = 2112;
      v31 = v16;
      _os_log_impl(&dword_273ECD000, v13, v12, "NAN data session %@ confirmed for peer (address: %@, serviceSpecificInfo: %@)", buf, 0x20u);
    }
  }

  v17 = [(WFNANDiscoveryResultsTableViewController *)self dataSource];
  v18 = [v17 snapshot];

  v25 = v8;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v25 count:1];
  v20 = [(WFNANDiscoveryResultsTableViewController *)self _identifierForSection:1];
  [v18 appendItemsWithIdentifiers:v19 intoSectionWithIdentifier:v20];

  if ([(WFNANTableViewContext *)self->_context getDataSessionsCountForSubscriber:self->_subscriber]== 1)
  {
    v24 = @"WFNANDiscoveryResultsNoDataSessionsIdentifier";
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v24 count:1];
    [v18 deleteItemsWithIdentifiers:v21];
  }

  v22 = [(WFNANDiscoveryResultsTableViewController *)self dataSource];
  [v22 applySnapshot:v18 animatingDifferences:1];

  v23 = *MEMORY[0x277D85DE8];
}

- (void)dataSession:(id)a3 failedToStartWithError:(int64_t)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = WFLogForCategory(0);
  v8 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v7)
  {
    v9 = v7;
    if (os_log_type_enabled(v9, v8))
    {
      v10 = [v6 description];
      v14 = 138412546;
      v15 = v10;
      v16 = 2048;
      v17 = a4;
      _os_log_impl(&dword_273ECD000, v9, v8, "NAN data session %@ failed to start with error %ld", &v14, 0x16u);
    }
  }

  [v6 stop];
  context = self->_context;
  v12 = [(WFNANDiscoveryResultsTableViewController *)self subscriber];
  [(WFNANTableViewContext *)context removeDataSession:v6 forSubscriber:v12];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)dataSession:(id)a3 terminatedWithReason:(int64_t)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = WFLogForCategory(0);
  v8 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v7)
  {
    v9 = v7;
    if (os_log_type_enabled(v9, v8))
    {
      v10 = [v6 description];
      v14 = 138412546;
      v15 = v10;
      v16 = 2048;
      v17 = a4;
      _os_log_impl(&dword_273ECD000, v9, v8, "NAN data session %@ terminated with reason %ld", &v14, 0x16u);
    }
  }

  [v6 stop];
  context = self->_context;
  v12 = [(WFNANDiscoveryResultsTableViewController *)self subscriber];
  [(WFNANTableViewContext *)context removeDataSession:v6 forSubscriber:v12];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)dataSessionRequestStarted:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = WFLogForCategory(0);
  v5 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v4)
  {
    v6 = v4;
    if (os_log_type_enabled(v6, v5))
    {
      v7 = [v3 description];
      v9 = 138412290;
      v10 = v7;
      _os_log_impl(&dword_273ECD000, v6, v5, "NAN data session %@ started", &v9, 0xCu);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

@end