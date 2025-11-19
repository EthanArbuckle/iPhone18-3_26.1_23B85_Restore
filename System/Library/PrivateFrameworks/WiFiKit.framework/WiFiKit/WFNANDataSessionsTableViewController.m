@interface WFNANDataSessionsTableViewController
- (WFNANDataSessionsTableViewController)initWithContext:(id)a3 forPublisher:(id)a4;
- (void)_configureDataSource;
- (void)_handleDataSessionsChangedNotification:(id)a3;
- (void)viewDidLoad;
@end

@implementation WFNANDataSessionsTableViewController

- (WFNANDataSessionsTableViewController)initWithContext:(id)a3 forPublisher:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [MEMORY[0x277D7B980] defaultAppearanceProxy];
  v17.receiver = self;
  v17.super_class = WFNANDataSessionsTableViewController;
  v10 = -[WFNANDataSessionsTableViewController initWithStyle:](&v17, sel_initWithStyle_, [v9 tableViewStyle]);

  if (v10)
  {
    v11 = MEMORY[0x277CBEB70];
    v12 = [(WFNANDataSessionsTableViewController *)v10 _defaultSections];
    v13 = [v11 orderedSetWithArray:v12];
    sections = v10->_sections;
    v10->_sections = v13;

    objc_storeStrong(&v10->_context, a3);
    objc_storeStrong(&v10->_publisher, a4);
    v15 = [MEMORY[0x277CCAB98] defaultCenter];
    [v15 addObserver:v10 selector:sel__handleDataSessionsChangedNotification_ name:@"WFNANDataSessionsForPublishChangedNotification" object:0];

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
  v4 = [(WiFiAwarePublisher *)self->_publisher configuration];
  v5 = [v4 serviceName];
  v6 = [(WiFiAwarePublisher *)self->_publisher configuration];
  v7 = [v6 serviceSpecificInfo];
  v8 = [v7 instanceName];
  v9 = [v3 stringWithFormat:@"%@ [%@]", v5, v8];
  [(WFNANDataSessionsTableViewController *)self setTitle:v9];

  [(WFNANDataSessionsTableViewController *)self _configureDataSource];
}

- (void)_configureDataSource
{
  v30[1] = *MEMORY[0x277D85DE8];
  v3 = [WFNANDataSessionsTableViewDataSource alloc];
  v4 = [(WFNANDataSessionsTableViewController *)self tableView];
  v5 = [(WFNANDataSessionsTableViewController *)self context];
  v6 = [(WFNANDataSessionsTableViewController *)self publisher];
  v7 = [(WFNANDataSessionsTableViewController *)self sections];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __60__WFNANDataSessionsTableViewController__configureDataSource__block_invoke;
  v29[3] = &unk_279EBCCC0;
  v29[4] = self;
  v8 = [(WFNANDataSessionsTableViewDataSource *)v3 initWithTableView:v4 context:v5 publisher:v6 sections:v7 cellProvider:v29];
  [(WFNANDataSessionsTableViewController *)self setDataSource:v8];

  v9 = objc_alloc_init(MEMORY[0x277CFB890]);
  v10 = [MEMORY[0x277CBEB18] array];
  v11 = [(WFNANDataSessionsTableViewController *)self sections];
  v12 = [v11 count];

  if (v12)
  {
    v13 = 0;
    do
    {
      v14 = [(WFNANDataSessionsTableViewController *)self sections];
      v15 = [v14 objectAtIndexedSubscript:v13];
      v16 = [v15 unsignedIntegerValue];

      v17 = [(WFNANDataSessionsTableViewController *)self _identifierForSection:v16];
      [v10 addObject:v17];

      ++v13;
      v18 = [(WFNANDataSessionsTableViewController *)self sections];
      v19 = [v18 count];
    }

    while (v19 > v13);
  }

  [v9 appendSectionsWithIdentifiers:v10];
  context = self->_context;
  v21 = [(WFNANDataSessionsTableViewController *)self publisher];
  v22 = [(WFNANTableViewContext *)context getDataSessionsCountForPublisher:v21];

  if (v22)
  {
    v23 = self->_context;
    v24 = [(WFNANDataSessionsTableViewController *)self publisher];
    v25 = [(WFNANTableViewContext *)v23 getDataSessionsForPublisher:v24];
    v26 = [(WFNANDataSessionsTableViewController *)self _identifierForSection:0];
    [v9 appendItemsWithIdentifiers:v25 intoSectionWithIdentifier:v26];
  }

  else
  {
    v30[0] = @"WFNANDataSessionsNoActiveSessionsIdentifier";
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:1];
    v25 = [(WFNANDataSessionsTableViewController *)self _identifierForSection:0];
    [v9 appendItemsWithIdentifiers:v24 intoSectionWithIdentifier:v25];
  }

  v27 = [(WFNANDataSessionsTableViewController *)self dataSource];
  [v27 applySnapshot:v9 animatingDifferences:1];

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

- (void)_handleDataSessionsChangedNotification:(id)a3
{
  v26[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(WFNANDataSessionsTableViewController *)self dataSource];
  v6 = [v5 snapshot];

  v7 = [v4 userInfo];
  v8 = [v7 objectForKeyedSubscript:@"WFNANTableViewContextChangedPublisherKey"];

  v9 = [v4 userInfo];
  v10 = [v9 objectForKeyedSubscript:@"WFNANTableViewContextChangedDataSessionKey"];

  v11 = [v4 userInfo];

  v12 = [v11 objectForKeyedSubscript:@"WFNANTableViewContextChangedOperationTypeKey"];

  v13 = [(WFNANDataSessionsTableViewController *)self publisher];
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

        if ([(WFNANTableViewContext *)self->_context getDataSessionsCountForPublisher:self->_publisher])
        {
LABEL_15:
          v21 = [(WFNANDataSessionsTableViewController *)self dataSource];
          [v21 applySnapshot:v6 animatingDifferences:1];

          goto LABEL_16;
        }

        v23 = @"WFNANDataSessionsNoActiveSessionsIdentifier";
        v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v23 count:1];
        v20 = [(WFNANDataSessionsTableViewController *)self _identifierForSection:0];
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
        v17 = [(WFNANDataSessionsTableViewController *)self _identifierForSection:0];
        [v6 appendItemsWithIdentifiers:v16 intoSectionWithIdentifier:v17];

        if ([(WFNANTableViewContext *)self->_context getDataSessionsCountForPublisher:self->_publisher]!= 1)
        {
          goto LABEL_15;
        }

        v25 = @"WFNANDataSessionsNoActiveSessionsIdentifier";
        v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v25 count:1];
        [v6 deleteItemsWithIdentifiers:v18];
      }

      goto LABEL_15;
    }
  }

LABEL_16:

  v22 = *MEMORY[0x277D85DE8];
}

@end