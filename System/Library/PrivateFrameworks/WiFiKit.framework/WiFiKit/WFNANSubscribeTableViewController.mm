@interface WFNANSubscribeTableViewController
- (WFNANSubscribeTableViewController)initWithContext:(id)context;
- (void)_configureDataSource;
- (void)_handleAddSubscriber;
- (void)_handleDiscoveryResultsChangedNotification:(id)notification;
- (void)_handleSubscribersChangedNotification:(id)notification;
- (void)clearInputFields;
- (void)dismissKeyboard;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation WFNANSubscribeTableViewController

- (WFNANSubscribeTableViewController)initWithContext:(id)context
{
  contextCopy = context;
  defaultAppearanceProxy = [MEMORY[0x277D7B980] defaultAppearanceProxy];
  v15.receiver = self;
  v15.super_class = WFNANSubscribeTableViewController;
  v7 = -[WFNANSubscribeTableViewController initWithStyle:](&v15, sel_initWithStyle_, [defaultAppearanceProxy tableViewStyle]);

  if (v7)
  {
    v8 = MEMORY[0x277CBEB70];
    _defaultSections = [(WFNANSubscribeTableViewController *)v7 _defaultSections];
    v10 = [v8 orderedSetWithArray:_defaultSections];
    sections = v7->_sections;
    v7->_sections = v10;

    objc_storeStrong(&v7->_context, context);
    [(WFNANSubscribeTableViewController *)v7 clearInputFields];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v7 selector:sel__handleSubscribersChangedNotification_ name:@"WFNANSubscribersChangedNotification" object:0];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:v7 selector:sel__handleDiscoveryResultsChangedNotification_ name:@"WFNANDiscoveryResultsChangedNotification" object:0];

    [(WFInsetTableViewController *)v7 setReloadDataOnUpdateSectionContentInset:0];
  }

  return v7;
}

- (void)viewDidLoad
{
  v9.receiver = self;
  v9.super_class = WFNANSubscribeTableViewController;
  [(WFNANSubscribeTableViewController *)&v9 viewDidLoad];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"kWFLocNANSubscribe" value:&stru_2882E4AD8 table:@"WiFiKitUILocalizableStrings"];
  [(WFNANSubscribeTableViewController *)self setTitle:v4];

  v5 = MEMORY[0x277D757B0];
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v5 nibWithNibName:@"WFTextFieldCell" bundle:v6];

  tableView = [(WFNANSubscribeTableViewController *)self tableView];
  [tableView registerNib:v7 forCellReuseIdentifier:@"kWFTextFieldCellIdentifier"];

  [(WFNANSubscribeTableViewController *)self _configureDataSource];
}

- (void)dismissKeyboard
{
  view = [(WFNANSubscribeTableViewController *)self view];
  [view endEditing:1];
}

- (void)_configureDataSource
{
  v30[1] = *MEMORY[0x277D85DE8];
  v3 = [WFNANSubscribeTableViewDataSource alloc];
  tableView = [(WFNANSubscribeTableViewController *)self tableView];
  context = [(WFNANSubscribeTableViewController *)self context];
  sections = [(WFNANSubscribeTableViewController *)self sections];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __57__WFNANSubscribeTableViewController__configureDataSource__block_invoke;
  v27[3] = &unk_279EBCCC0;
  v27[4] = self;
  v7 = [(WFNANSubscribeTableViewDataSource *)v3 initWithTableView:tableView context:context sections:sections cellProvider:v27];
  [(WFNANSubscribeTableViewController *)self setDataSource:v7];

  v8 = objc_alloc_init(MEMORY[0x277CFB890]);
  array = [MEMORY[0x277CBEB18] array];
  sections2 = [(WFNANSubscribeTableViewController *)self sections];
  v11 = [sections2 count];

  if (v11)
  {
    v12 = 0;
    do
    {
      sections3 = [(WFNANSubscribeTableViewController *)self sections];
      v14 = [sections3 objectAtIndexedSubscript:v12];
      unsignedIntegerValue = [v14 unsignedIntegerValue];

      v16 = [(WFNANSubscribeTableViewController *)self _identifierForSection:unsignedIntegerValue];
      [array addObject:v16];

      ++v12;
      sections4 = [(WFNANSubscribeTableViewController *)self sections];
      v18 = [sections4 count];
    }

    while (v18 > v12);
  }

  [v8 appendSectionsWithIdentifiers:array];
  v30[0] = @"WFNANSubscribeServiceNameIdentifier";
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:1];
  v20 = [(WFNANSubscribeTableViewController *)self _identifierForSection:0];
  [v8 appendItemsWithIdentifiers:v19 intoSectionWithIdentifier:v20];

  v29 = @"WFNANSubscribeAddIdentifier";
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v29 count:1];
  v22 = [(WFNANSubscribeTableViewController *)self _identifierForSection:0];
  [v8 appendItemsWithIdentifiers:v21 intoSectionWithIdentifier:v22];

  if ([(WFNANTableViewContext *)self->_context getSubscribersCount]<= 0)
  {
    v28 = @"WFNANSubscribeNoSubscribersIdentifier";
    [MEMORY[0x277CBEA60] arrayWithObjects:&v28 count:1];
  }

  else
  {
    [(WFNANTableViewContext *)self->_context getSubscribers];
  }
  v23 = ;
  v24 = [(WFNANSubscribeTableViewController *)self _identifierForSection:1];
  [v8 appendItemsWithIdentifiers:v23 intoSectionWithIdentifier:v24];

  dataSource = [(WFNANSubscribeTableViewController *)self dataSource];
  [dataSource applySnapshot:v8 animatingDifferences:1];

  v26 = *MEMORY[0x277D85DE8];
}

id __57__WFNANSubscribeTableViewController__configureDataSource__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [*(a1 + 32) sections];
  v11 = [v10 objectAtIndexedSubscript:{objc_msgSend(v8, "section")}];
  v12 = [v11 unsignedIntegerValue];

  if (v12 == 1)
  {
    v13 = [v7 dequeueReusableCellWithIdentifier:@"WFNANTableViewTextCellIdentifier"];
    if (!v13)
    {
      v13 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:1 reuseIdentifier:@"WFNANTableViewTextCellIdentifier"];
    }

    if ([*(*(a1 + 32) + 1056) getSubscribersCount])
    {
      v14 = [*(*(a1 + 32) + 1056) getSubscriberAtIndex:{objc_msgSend(v8, "row")}];
      v18 = [v14 configuration];
      v19 = [v18 serviceName];
      v20 = [v13 textLabel];
      [v20 setText:v19];

      v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld results", objc_msgSend(*(*(a1 + 32) + 1056), "getDiscoveryResultsCountForSubscriber:", v14)];
      v22 = [v13 detailTextLabel];
      [v22 setText:v21];

      [v13 setAccessoryType:1];
      [v13 setSelectionStyle:1];
LABEL_13:

      goto LABEL_16;
    }

    v29 = *(a1 + 32);
    v30 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v31 = [v30 localizedStringForKey:@"kWFLocNANNoSubscribers" value:&stru_2882E4AD8 table:@"WiFiKitUILocalizableStrings"];
    v32 = [v13 textLabel];
    [v32 setText:v31];

    [v13 setSelectionStyle:0];
  }

  else
  {
    if (v12)
    {
      goto LABEL_8;
    }

    if ([v8 row])
    {
      if ([v8 row] == 1)
      {
        v13 = [v7 dequeueReusableCellWithIdentifier:@"WFNANTableViewTextCellIdentifier"];
        if (!v13)
        {
          v13 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:1 reuseIdentifier:@"WFNANTableViewTextCellIdentifier"];
        }

        [v13 setSelectionStyle:0];
        v14 = [MEMORY[0x277D75220] buttonWithType:1];
        [v14 setTitle:@"Add" forState:0];
        v15 = [v13 textLabel];
        v16 = [v15 font];
        v17 = [v14 titleLabel];
        [v17 setFont:v16];

        [v14 sizeToFit];
        [v14 addTarget:*(a1 + 32) action:sel__handleAddSubscriber forControlEvents:64];
        [v13 setAccessoryView:v14];
        goto LABEL_13;
      }

LABEL_8:
      v13 = 0;
      goto LABEL_16;
    }

    v13 = [v7 dequeueReusableCellWithIdentifier:@"kWFTextFieldCellIdentifier" forIndexPath:v8];
    [v13 setHideLabel:1];
    [v13 setEditable:1];
    v23 = *(*(a1 + 32) + 1072);
    v24 = [v13 textField];
    [v24 setText:v23];

    v25 = *(a1 + 32);
    v26 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v27 = [v26 localizedStringForKey:@"kWFLocNANServiceName" value:&stru_2882E4AD8 table:@"WiFiKitUILocalizableStrings"];
    v28 = [v13 textField];
    [v28 setPlaceholder:v27];

    objc_initWeak(&location, *(a1 + 32));
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __57__WFNANSubscribeTableViewController__configureDataSource__block_invoke_2;
    v34[3] = &unk_279EBDD58;
    objc_copyWeak(&v35, &location);
    [v13 setTextChangeHandler:v34];
    objc_destroyWeak(&v35);
    objc_destroyWeak(&location);
  }

LABEL_16:

  return v13;
}

void __57__WFNANSubscribeTableViewController__configureDataSource__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setServiceName:v3];
}

- (void)_handleSubscribersChangedNotification:(id)notification
{
  v25[1] = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  dataSource = [(WFNANSubscribeTableViewController *)self dataSource];
  snapshot = [dataSource snapshot];

  userInfo = [notificationCopy userInfo];
  v8 = [userInfo objectForKeyedSubscript:@"WFNANTableViewContextChangedSubscriberKey"];

  userInfo2 = [notificationCopy userInfo];

  v10 = [userInfo2 objectForKeyedSubscript:@"WFNANTableViewContextChangedOperationTypeKey"];

  if (v10)
  {
    v11 = v8 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    unsignedIntegerValue = [v10 unsignedIntegerValue];
    if (unsignedIntegerValue == 1)
    {
      v23 = v8;
      v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v23 count:1];
      [snapshot deleteItemsWithIdentifiers:v16];

      if ([(WFNANTableViewContext *)self->_context getSubscribersCount])
      {
LABEL_12:
        [(WFNANSubscribeTableViewController *)self clearInputFields];
        v21 = @"WFNANSubscribeServiceNameIdentifier";
        v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v21 count:1];
        [snapshot reconfigureItemsWithIdentifiers:v18];

        dataSource2 = [(WFNANSubscribeTableViewController *)self dataSource];
        [dataSource2 applySnapshot:snapshot animatingDifferences:1];

        goto LABEL_13;
      }

      v22 = @"WFNANSubscribeNoSubscribersIdentifier";
      v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v22 count:1];
      v17 = [(WFNANSubscribeTableViewController *)self _identifierForSection:1];
      [snapshot appendItemsWithIdentifiers:v15 intoSectionWithIdentifier:v17];
    }

    else
    {
      if (unsignedIntegerValue)
      {
        goto LABEL_12;
      }

      v25[0] = v8;
      v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:1];
      v14 = [(WFNANSubscribeTableViewController *)self _identifierForSection:1];
      [snapshot appendItemsWithIdentifiers:v13 intoSectionWithIdentifier:v14];

      if ([(WFNANTableViewContext *)self->_context getSubscribersCount]!= 1)
      {
        goto LABEL_12;
      }

      v24 = @"WFNANSubscribeNoSubscribersIdentifier";
      v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v24 count:1];
      [snapshot deleteItemsWithIdentifiers:v15];
    }

    goto LABEL_12;
  }

LABEL_13:

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_handleDiscoveryResultsChangedNotification:(id)notification
{
  v12[1] = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  dataSource = [(WFNANSubscribeTableViewController *)self dataSource];
  snapshot = [dataSource snapshot];

  userInfo = [notificationCopy userInfo];

  v8 = [userInfo objectForKeyedSubscript:@"WFNANTableViewContextChangedSubscriberKey"];

  if (v8)
  {
    v12[0] = v8;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
    [snapshot reconfigureItemsWithIdentifiers:v9];

    dataSource2 = [(WFNANSubscribeTableViewController *)self dataSource];
    [dataSource2 applySnapshot:snapshot animatingDifferences:1];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)clearInputFields
{
  serviceName = self->_serviceName;
  self->_serviceName = &stru_2882E4AD8;
  MEMORY[0x2821F96F8]();
}

- (void)_handleAddSubscriber
{
  v3 = objc_alloc(MEMORY[0x277D7BAF8]);
  serviceName = [(WFNANSubscribeTableViewController *)self serviceName];
  v7 = [v3 initWithServiceName:serviceName];

  [v7 setAuthenticationType:0];
  v5 = [objc_alloc(MEMORY[0x277D7BB00]) initWithConfiguration:v7];
  [v5 setDelegate:self->_context];
  [(WFNANSubscribeTableViewController *)self clearInputFields];
  context = [(WFNANSubscribeTableViewController *)self context];
  [context addSubscriber:v5];

  [(WFNANSubscribeTableViewController *)self dismissKeyboard];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  sections = [(WFNANSubscribeTableViewController *)self sections];
  v6 = [sections objectAtIndexedSubscript:{objc_msgSend(pathCopy, "section")}];
  unsignedIntegerValue = [v6 unsignedIntegerValue];

  if (unsignedIntegerValue == 1 && [(WFNANTableViewContext *)self->_context getSubscribersCount]>= 1)
  {
    v8 = [WFNANDiscoveryResultsTableViewController alloc];
    context = self->_context;
    v10 = -[WFNANTableViewContext getSubscriberAtIndex:](context, "getSubscriberAtIndex:", [pathCopy row]);
    v11 = [(WFNANDiscoveryResultsTableViewController *)v8 initWithContext:context forSubscriber:v10];

    [(WFNANSubscribeTableViewController *)self wf_pushViewController:v11 animated:1];
  }
}

@end