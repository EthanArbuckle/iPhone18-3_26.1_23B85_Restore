@interface WFNANDiscoveryResultsTableViewController
- (WFNANDiscoveryResultsTableViewController)initWithContext:(id)context forSubscriber:(id)subscriber;
- (void)_configureDataSource;
- (void)_handleDataSessionsChangedNotification:(id)notification;
- (void)_handleDiscoveryResultsChangedNotification:(id)notification;
- (void)dataSession:(id)session confirmedForPeerDataAddress:(id)address serviceSpecificInfo:(id)info;
- (void)dataSession:(id)session failedToStartWithError:(int64_t)error;
- (void)dataSession:(id)session terminatedWithReason:(int64_t)reason;
- (void)dataSessionRequestStarted:(id)started;
- (void)passphraseTextFieldDidChange:(id)change;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation WFNANDiscoveryResultsTableViewController

- (WFNANDiscoveryResultsTableViewController)initWithContext:(id)context forSubscriber:(id)subscriber
{
  contextCopy = context;
  subscriberCopy = subscriber;
  v9 = +[WFAppearanceProxy defaultAppearanceProxy];
  v19.receiver = self;
  v19.super_class = WFNANDiscoveryResultsTableViewController;
  v10 = -[WFNANDiscoveryResultsTableViewController initWithStyle:](&v19, sel_initWithStyle_, [v9 tableViewStyle]);

  if (v10)
  {
    v11 = MEMORY[0x277CBEB70];
    _defaultSections = [(WFNANDiscoveryResultsTableViewController *)v10 _defaultSections];
    v13 = [v11 orderedSetWithArray:_defaultSections];
    sections = v10->_sections;
    v10->_sections = v13;

    objc_storeStrong(&v10->_context, context);
    objc_storeStrong(&v10->_subscriber, subscriber);
    passphrase = v10->_passphrase;
    v10->_passphrase = &stru_288308678;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v10 selector:sel__handleDiscoveryResultsChangedNotification_ name:@"WFNANDiscoveryResultsChangedNotification" object:0];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:v10 selector:sel__handleDataSessionsChangedNotification_ name:@"WFNANDataSessionsForSubscribeChangedNotification" object:0];

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
  configuration = [(WiFiAwareSubscriber *)self->_subscriber configuration];
  serviceName = [configuration serviceName];
  v6 = [v3 stringWithFormat:@"%@", serviceName];
  [(WFNANDiscoveryResultsTableViewController *)self setTitle:v6];

  [(WFNANDiscoveryResultsTableViewController *)self _configureDataSource];
}

- (void)_configureDataSource
{
  v38[1] = *MEMORY[0x277D85DE8];
  v3 = [WFNANDiscoveryResultsTableViewDataSource alloc];
  tableView = [(WFNANDiscoveryResultsTableViewController *)self tableView];
  context = [(WFNANDiscoveryResultsTableViewController *)self context];
  subscriber = [(WFNANDiscoveryResultsTableViewController *)self subscriber];
  sections = [(WFNANDiscoveryResultsTableViewController *)self sections];
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __64__WFNANDiscoveryResultsTableViewController__configureDataSource__block_invoke;
  v36[3] = &unk_279EC5440;
  v36[4] = self;
  v8 = [(WFNANDiscoveryResultsTableViewDataSource *)v3 initWithTableView:tableView context:context subscriber:subscriber sections:sections cellProvider:v36];
  [(WFNANDiscoveryResultsTableViewController *)self setDataSource:v8];

  v9 = objc_alloc_init(MEMORY[0x277CFB890]);
  array = [MEMORY[0x277CBEB18] array];
  sections2 = [(WFNANDiscoveryResultsTableViewController *)self sections];
  v12 = [sections2 count];

  if (v12)
  {
    v13 = 0;
    do
    {
      sections3 = [(WFNANDiscoveryResultsTableViewController *)self sections];
      v15 = [sections3 objectAtIndexedSubscript:v13];
      unsignedIntegerValue = [v15 unsignedIntegerValue];

      v17 = [(WFNANDiscoveryResultsTableViewController *)self _identifierForSection:unsignedIntegerValue];
      [array addObject:v17];

      ++v13;
      sections4 = [(WFNANDiscoveryResultsTableViewController *)self sections];
      v19 = [sections4 count];
    }

    while (v19 > v13);
  }

  [v9 appendSectionsWithIdentifiers:array];
  context = self->_context;
  subscriber2 = [(WFNANDiscoveryResultsTableViewController *)self subscriber];
  v22 = [(WFNANTableViewContext *)context getDiscoveryResultsCountForSubscriber:subscriber2];

  if (v22 <= 0)
  {
    v38[0] = @"WFNANDiscoveryResultsNoDiscoveryResultsIdentifier";
    subscriber3 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:1];
    v25 = [(WFNANDiscoveryResultsTableViewController *)self _identifierForSection:0];
    [v9 appendItemsWithIdentifiers:subscriber3 intoSectionWithIdentifier:v25];
  }

  else
  {
    v23 = self->_context;
    subscriber3 = [(WFNANDiscoveryResultsTableViewController *)self subscriber];
    v25 = [(WFNANTableViewContext *)v23 getDiscoveryResultsForSubscriber:subscriber3];
    v26 = [(WFNANDiscoveryResultsTableViewController *)self _identifierForSection:0];
    [v9 appendItemsWithIdentifiers:v25 intoSectionWithIdentifier:v26];
  }

  v27 = self->_context;
  subscriber4 = [(WFNANDiscoveryResultsTableViewController *)self subscriber];
  v29 = [(WFNANTableViewContext *)v27 getDataSessionsCountForSubscriber:subscriber4];

  if (v29 < 1)
  {
    v37 = @"WFNANDiscoveryResultsNoDataSessionsIdentifier";
    subscriber5 = [MEMORY[0x277CBEA60] arrayWithObjects:&v37 count:1];
    v32 = [(WFNANDiscoveryResultsTableViewController *)self _identifierForSection:1];
    [v9 appendItemsWithIdentifiers:subscriber5 intoSectionWithIdentifier:v32];
  }

  else
  {
    v30 = self->_context;
    subscriber5 = [(WFNANDiscoveryResultsTableViewController *)self subscriber];
    v32 = [(WFNANTableViewContext *)v30 getDataSessionsForSubscriber:subscriber5];
    v33 = [(WFNANDiscoveryResultsTableViewController *)self _identifierForSection:1];
    [v9 appendItemsWithIdentifiers:v32 intoSectionWithIdentifier:v33];
  }

  dataSource = [(WFNANDiscoveryResultsTableViewController *)self dataSource];
  [dataSource applySnapshot:v9 animatingDifferences:1];

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

  v14 = [v23 localizedStringForKey:v24 value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
  v15 = [v12 textLabel];
  [v15 setText:v14];
LABEL_21:

LABEL_22:

  return v12;
}

- (void)_handleDiscoveryResultsChangedNotification:(id)notification
{
  v26[1] = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  dataSource = [(WFNANDiscoveryResultsTableViewController *)self dataSource];
  snapshot = [dataSource snapshot];

  userInfo = [notificationCopy userInfo];
  v8 = [userInfo objectForKeyedSubscript:@"WFNANTableViewContextChangedSubscriberKey"];

  userInfo2 = [notificationCopy userInfo];
  v10 = [userInfo2 objectForKeyedSubscript:@"WFNANTableViewContextChangedDiscoveryResultKey"];

  userInfo3 = [notificationCopy userInfo];

  v12 = [userInfo3 objectForKeyedSubscript:@"WFNANTableViewContextChangedOperationTypeKey"];

  subscriber = [(WFNANDiscoveryResultsTableViewController *)self subscriber];
  if (v8 != subscriber || v12 == 0)
  {
  }

  else
  {

    if (v10)
    {
      unsignedIntegerValue = [v12 unsignedIntegerValue];
      if (unsignedIntegerValue == 1)
      {
        v24 = v10;
        v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v24 count:1];
        [snapshot deleteItemsWithIdentifiers:v19];

        if ([(WFNANTableViewContext *)self->_context getDiscoveryResultsCountForSubscriber:v8])
        {
LABEL_15:
          dataSource2 = [(WFNANDiscoveryResultsTableViewController *)self dataSource];
          [dataSource2 applySnapshot:snapshot animatingDifferences:1];

          goto LABEL_16;
        }

        v23 = @"WFNANDiscoveryResultsNoDiscoveryResultsIdentifier";
        v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v23 count:1];
        v20 = [(WFNANDiscoveryResultsTableViewController *)self _identifierForSection:0];
        [snapshot appendItemsWithIdentifiers:v18 intoSectionWithIdentifier:v20];
      }

      else
      {
        if (unsignedIntegerValue)
        {
          goto LABEL_15;
        }

        v26[0] = v10;
        v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:1];
        v17 = [(WFNANDiscoveryResultsTableViewController *)self _identifierForSection:0];
        [snapshot appendItemsWithIdentifiers:v16 intoSectionWithIdentifier:v17];

        if ([(WFNANTableViewContext *)self->_context getDiscoveryResultsCountForSubscriber:v8]!= 1)
        {
          goto LABEL_15;
        }

        v25 = @"WFNANDiscoveryResultsNoDiscoveryResultsIdentifier";
        v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v25 count:1];
        [snapshot deleteItemsWithIdentifiers:v18];
      }

      goto LABEL_15;
    }
  }

LABEL_16:

  v22 = *MEMORY[0x277D85DE8];
}

- (void)_handleDataSessionsChangedNotification:(id)notification
{
  v21[1] = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  dataSource = [(WFNANDiscoveryResultsTableViewController *)self dataSource];
  snapshot = [dataSource snapshot];

  userInfo = [notificationCopy userInfo];
  v8 = [userInfo objectForKeyedSubscript:@"WFNANTableViewContextChangedSubscriberKey"];

  userInfo2 = [notificationCopy userInfo];
  v10 = [userInfo2 objectForKeyedSubscript:@"WFNANTableViewContextChangedDataSessionKey"];

  userInfo3 = [notificationCopy userInfo];

  v12 = [userInfo3 objectForKeyedSubscript:@"WFNANTableViewContextChangedOperationTypeKey"];

  subscriber = [(WFNANDiscoveryResultsTableViewController *)self subscriber];
  if (v8 != subscriber || v12 == 0)
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
        [snapshot deleteItemsWithIdentifiers:v15];

        if (![(WFNANTableViewContext *)self->_context getDataSessionsCountForSubscriber:self->_subscriber])
        {
          v20 = @"WFNANDiscoveryResultsNoDataSessionsIdentifier";
          v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v20 count:1];
          v17 = [(WFNANDiscoveryResultsTableViewController *)self _identifierForSection:1];
          [snapshot appendItemsWithIdentifiers:v16 intoSectionWithIdentifier:v17];
        }
      }

      dataSource2 = [(WFNANDiscoveryResultsTableViewController *)self dataSource];
      [dataSource2 applySnapshot:snapshot animatingDifferences:1];
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)passphraseTextFieldDidChange:(id)change
{
  text = [change text];
  passphrase = self->_passphrase;
  self->_passphrase = text;

  MEMORY[0x2821F96F8](text, passphrase);
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  sections = [(WFNANDiscoveryResultsTableViewController *)self sections];
  v7 = [sections objectAtIndexedSubscript:{objc_msgSend(pathCopy, "section")}];
  unsignedIntegerValue = [v7 unsignedIntegerValue];

  if (!unsignedIntegerValue && [(WFNANTableViewContext *)self->_context getDiscoveryResultsCountForSubscriber:self->_subscriber]>= 1)
  {
    v9 = MEMORY[0x277D75110];
    v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v11 = [v10 localizedStringForKey:@"kWFLocNANPassphrasePopupTitle" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
    v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v13 = [v12 localizedStringForKey:@"kWFLocNANPassphrasePopupMessage" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
    v14 = [v9 alertControllerWithTitle:v11 message:v13 preferredStyle:1];

    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __78__WFNANDiscoveryResultsTableViewController_tableView_didSelectRowAtIndexPath___block_invoke;
    v20[3] = &unk_279EC6160;
    v20[4] = self;
    [v14 addTextFieldWithConfigurationHandler:v20];
    v15 = [MEMORY[0x277D750F8] actionWithTitle:@"Cancel" style:0 handler:&__block_literal_global_6];
    [v14 addAction:v15];
    v16 = MEMORY[0x277D750F8];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __78__WFNANDiscoveryResultsTableViewController_tableView_didSelectRowAtIndexPath___block_invoke_3;
    v18[3] = &unk_279EC56F0;
    v18[4] = self;
    v19 = pathCopy;
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
  v6 = [v5 localizedStringForKey:@"kWFLocNANPassphrase" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
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
      _os_log_impl(&dword_273FB9000, v5, v4, "Establishing a data session with discovery result %@", &v12, 0xCu);
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

- (void)dataSession:(id)session confirmedForPeerDataAddress:(id)address serviceSpecificInfo:(id)info
{
  v32 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  addressCopy = address;
  infoCopy = info;
  v11 = WFLogForCategory(0);
  v12 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v11)
  {
    v13 = v11;
    if (os_log_type_enabled(v13, v12))
    {
      v14 = [sessionCopy description];
      v15 = [addressCopy description];
      v16 = [infoCopy description];
      *buf = 138412802;
      v27 = v14;
      v28 = 2112;
      v29 = v15;
      v30 = 2112;
      v31 = v16;
      _os_log_impl(&dword_273FB9000, v13, v12, "NAN data session %@ confirmed for peer (address: %@, serviceSpecificInfo: %@)", buf, 0x20u);
    }
  }

  dataSource = [(WFNANDiscoveryResultsTableViewController *)self dataSource];
  snapshot = [dataSource snapshot];

  v25 = sessionCopy;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v25 count:1];
  v20 = [(WFNANDiscoveryResultsTableViewController *)self _identifierForSection:1];
  [snapshot appendItemsWithIdentifiers:v19 intoSectionWithIdentifier:v20];

  if ([(WFNANTableViewContext *)self->_context getDataSessionsCountForSubscriber:self->_subscriber]== 1)
  {
    v24 = @"WFNANDiscoveryResultsNoDataSessionsIdentifier";
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v24 count:1];
    [snapshot deleteItemsWithIdentifiers:v21];
  }

  dataSource2 = [(WFNANDiscoveryResultsTableViewController *)self dataSource];
  [dataSource2 applySnapshot:snapshot animatingDifferences:1];

  v23 = *MEMORY[0x277D85DE8];
}

- (void)dataSession:(id)session failedToStartWithError:(int64_t)error
{
  v18 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  v7 = WFLogForCategory(0);
  v8 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v7)
  {
    v9 = v7;
    if (os_log_type_enabled(v9, v8))
    {
      v10 = [sessionCopy description];
      v14 = 138412546;
      v15 = v10;
      v16 = 2048;
      errorCopy = error;
      _os_log_impl(&dword_273FB9000, v9, v8, "NAN data session %@ failed to start with error %ld", &v14, 0x16u);
    }
  }

  [sessionCopy stop];
  context = self->_context;
  subscriber = [(WFNANDiscoveryResultsTableViewController *)self subscriber];
  [(WFNANTableViewContext *)context removeDataSession:sessionCopy forSubscriber:subscriber];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)dataSession:(id)session terminatedWithReason:(int64_t)reason
{
  v18 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  v7 = WFLogForCategory(0);
  v8 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v7)
  {
    v9 = v7;
    if (os_log_type_enabled(v9, v8))
    {
      v10 = [sessionCopy description];
      v14 = 138412546;
      v15 = v10;
      v16 = 2048;
      reasonCopy = reason;
      _os_log_impl(&dword_273FB9000, v9, v8, "NAN data session %@ terminated with reason %ld", &v14, 0x16u);
    }
  }

  [sessionCopy stop];
  context = self->_context;
  subscriber = [(WFNANDiscoveryResultsTableViewController *)self subscriber];
  [(WFNANTableViewContext *)context removeDataSession:sessionCopy forSubscriber:subscriber];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)dataSessionRequestStarted:(id)started
{
  v11 = *MEMORY[0x277D85DE8];
  startedCopy = started;
  v4 = WFLogForCategory(0);
  v5 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v4)
  {
    v6 = v4;
    if (os_log_type_enabled(v6, v5))
    {
      v7 = [startedCopy description];
      v9 = 138412290;
      v10 = v7;
      _os_log_impl(&dword_273FB9000, v6, v5, "NAN data session %@ started", &v9, 0xCu);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

@end