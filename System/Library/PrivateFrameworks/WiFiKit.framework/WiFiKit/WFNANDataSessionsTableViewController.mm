@interface WFNANDataSessionsTableViewController
- (WFNANDataSessionsTableViewController)initWithContext:(id)context forPublisher:(id)publisher;
- (void)_configureDataSource;
- (void)_handleDataSessionsChangedNotification:(id)notification;
- (void)viewDidLoad;
@end

@implementation WFNANDataSessionsTableViewController

- (WFNANDataSessionsTableViewController)initWithContext:(id)context forPublisher:(id)publisher
{
  contextCopy = context;
  publisherCopy = publisher;
  defaultAppearanceProxy = [MEMORY[0x277D7B980] defaultAppearanceProxy];
  v17.receiver = self;
  v17.super_class = WFNANDataSessionsTableViewController;
  v10 = -[WFNANDataSessionsTableViewController initWithStyle:](&v17, sel_initWithStyle_, [defaultAppearanceProxy tableViewStyle]);

  if (v10)
  {
    v11 = MEMORY[0x277CBEB70];
    _defaultSections = [(WFNANDataSessionsTableViewController *)v10 _defaultSections];
    v13 = [v11 orderedSetWithArray:_defaultSections];
    sections = v10->_sections;
    v10->_sections = v13;

    objc_storeStrong(&v10->_context, context);
    objc_storeStrong(&v10->_publisher, publisher);
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v10 selector:sel__handleDataSessionsChangedNotification_ name:@"WFNANDataSessionsForPublishChangedNotification" object:0];

    [(WFInsetTableViewController *)v10 setReloadDataOnUpdateSectionContentInset:0];
  }

  return v10;
}

- (void)viewDidLoad
{
  v10.receiver = self;
  v10.super_class = WFNANDataSessionsTableViewController;
  [(WFNANDataSessionsTableViewController *)&v10 viewDidLoad];
  v3 = MEMORY[0x277CCACA8];
  configuration = [(WiFiAwarePublisher *)self->_publisher configuration];
  serviceName = [configuration serviceName];
  configuration2 = [(WiFiAwarePublisher *)self->_publisher configuration];
  serviceSpecificInfo = [configuration2 serviceSpecificInfo];
  instanceName = [serviceSpecificInfo instanceName];
  v9 = [v3 stringWithFormat:@"%@ [%@]", serviceName, instanceName];
  [(WFNANDataSessionsTableViewController *)self setTitle:v9];

  [(WFNANDataSessionsTableViewController *)self _configureDataSource];
}

- (void)_configureDataSource
{
  v30[1] = *MEMORY[0x277D85DE8];
  v3 = [WFNANDataSessionsTableViewDataSource alloc];
  tableView = [(WFNANDataSessionsTableViewController *)self tableView];
  context = [(WFNANDataSessionsTableViewController *)self context];
  publisher = [(WFNANDataSessionsTableViewController *)self publisher];
  sections = [(WFNANDataSessionsTableViewController *)self sections];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __60__WFNANDataSessionsTableViewController__configureDataSource__block_invoke;
  v29[3] = &unk_279EBCCC0;
  v29[4] = self;
  v8 = [(WFNANDataSessionsTableViewDataSource *)v3 initWithTableView:tableView context:context publisher:publisher sections:sections cellProvider:v29];
  [(WFNANDataSessionsTableViewController *)self setDataSource:v8];

  v9 = objc_alloc_init(MEMORY[0x277CFB890]);
  array = [MEMORY[0x277CBEB18] array];
  sections2 = [(WFNANDataSessionsTableViewController *)self sections];
  v12 = [sections2 count];

  if (v12)
  {
    v13 = 0;
    do
    {
      sections3 = [(WFNANDataSessionsTableViewController *)self sections];
      v15 = [sections3 objectAtIndexedSubscript:v13];
      unsignedIntegerValue = [v15 unsignedIntegerValue];

      v17 = [(WFNANDataSessionsTableViewController *)self _identifierForSection:unsignedIntegerValue];
      [array addObject:v17];

      ++v13;
      sections4 = [(WFNANDataSessionsTableViewController *)self sections];
      v19 = [sections4 count];
    }

    while (v19 > v13);
  }

  [v9 appendSectionsWithIdentifiers:array];
  context = self->_context;
  publisher2 = [(WFNANDataSessionsTableViewController *)self publisher];
  v22 = [(WFNANTableViewContext *)context getDataSessionsCountForPublisher:publisher2];

  if (v22)
  {
    v23 = self->_context;
    publisher3 = [(WFNANDataSessionsTableViewController *)self publisher];
    v25 = [(WFNANTableViewContext *)v23 getDataSessionsForPublisher:publisher3];
    v26 = [(WFNANDataSessionsTableViewController *)self _identifierForSection:0];
    [v9 appendItemsWithIdentifiers:v25 intoSectionWithIdentifier:v26];
  }

  else
  {
    v30[0] = @"WFNANDataSessionsNoActiveSessionsIdentifier";
    publisher3 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:1];
    v25 = [(WFNANDataSessionsTableViewController *)self _identifierForSection:0];
    [v9 appendItemsWithIdentifiers:publisher3 intoSectionWithIdentifier:v25];
  }

  dataSource = [(WFNANDataSessionsTableViewController *)self dataSource];
  [dataSource applySnapshot:v9 animatingDifferences:1];

  v28 = *MEMORY[0x277D85DE8];
}

id __60__WFNANDataSessionsTableViewController__configureDataSource__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = a2;
  v8 = [v6 sections];
  v9 = [v8 objectAtIndexedSubscript:{objc_msgSend(v5, "section")}];
  v10 = [v9 unsignedIntegerValue];

  v11 = [v7 dequeueReusableCellWithIdentifier:@"WFNANTableViewTextCellIdentifier"];

  if (!v11)
  {
    v11 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:1 reuseIdentifier:@"WFNANTableViewTextCellIdentifier"];
  }

  [v11 setSelectionStyle:0];
  if (!v10)
  {
    if ([*(*(a1 + 32) + 1056) getDataSessionsCountForPublisher:*(*(a1 + 32) + 1064)])
    {
      v12 = [*(*(a1 + 32) + 1056) getDataSessionAtIndex:objc_msgSend(v5 forPublisher:{"row"), *(*(a1 + 32) + 1064)}];
      v13 = [v12 initiatorDataAddress];
      v14 = [v13 ipv6LinkLocalAddress];
      v15 = stringForIpv6LinkLocalAddress(v14);
      v16 = [v11 textLabel];
      [v16 setText:v15];
    }

    else
    {
      v17 = *(a1 + 32);
      v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v13 = [v12 localizedStringForKey:@"kWFLocNANNoActiveDataSessions" value:&stru_2882E4AD8 table:@"WiFiKitUILocalizableStrings"];
      v14 = [v11 textLabel];
      [v14 setText:v13];
    }
  }

  return v11;
}

- (void)_handleDataSessionsChangedNotification:(id)notification
{
  v26[1] = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  dataSource = [(WFNANDataSessionsTableViewController *)self dataSource];
  snapshot = [dataSource snapshot];

  userInfo = [notificationCopy userInfo];
  v8 = [userInfo objectForKeyedSubscript:@"WFNANTableViewContextChangedPublisherKey"];

  userInfo2 = [notificationCopy userInfo];
  v10 = [userInfo2 objectForKeyedSubscript:@"WFNANTableViewContextChangedDataSessionKey"];

  userInfo3 = [notificationCopy userInfo];

  v12 = [userInfo3 objectForKeyedSubscript:@"WFNANTableViewContextChangedOperationTypeKey"];

  publisher = [(WFNANDataSessionsTableViewController *)self publisher];
  if (v8 != publisher || v12 == 0)
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

        if ([(WFNANTableViewContext *)self->_context getDataSessionsCountForPublisher:self->_publisher])
        {
LABEL_15:
          dataSource2 = [(WFNANDataSessionsTableViewController *)self dataSource];
          [dataSource2 applySnapshot:snapshot animatingDifferences:1];

          goto LABEL_16;
        }

        v23 = @"WFNANDataSessionsNoActiveSessionsIdentifier";
        v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v23 count:1];
        v20 = [(WFNANDataSessionsTableViewController *)self _identifierForSection:0];
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
        v17 = [(WFNANDataSessionsTableViewController *)self _identifierForSection:0];
        [snapshot appendItemsWithIdentifiers:v16 intoSectionWithIdentifier:v17];

        if ([(WFNANTableViewContext *)self->_context getDataSessionsCountForPublisher:self->_publisher]!= 1)
        {
          goto LABEL_15;
        }

        v25 = @"WFNANDataSessionsNoActiveSessionsIdentifier";
        v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v25 count:1];
        [snapshot deleteItemsWithIdentifiers:v18];
      }

      goto LABEL_15;
    }
  }

LABEL_16:

  v22 = *MEMORY[0x277D85DE8];
}

@end