@interface WFNANTableViewController
- (BOOL)_isNANEnabled;
- (WFNANTableViewController)init;
- (void)_configureDataSource;
- (void)_handlePublishersChangedNotification:(id)a3;
- (void)_handleSubscribersChangedNotification:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation WFNANTableViewController

- (WFNANTableViewController)init
{
  v3 = [MEMORY[0x277D7B980] defaultAppearanceProxy];
  v14.receiver = self;
  v14.super_class = WFNANTableViewController;
  v4 = -[WFNANTableViewController initWithStyle:](&v14, sel_initWithStyle_, [v3 tableViewStyle]);

  if (v4)
  {
    v5 = MEMORY[0x277CBEB70];
    v6 = [(WFNANTableViewController *)v4 _defaultSections];
    v7 = [v5 orderedSetWithArray:v6];
    sections = v4->_sections;
    v4->_sections = v7;

    v9 = objc_alloc_init(WFNANTableViewContext);
    context = v4->_context;
    v4->_context = v9;

    v11 = [MEMORY[0x277CCAB98] defaultCenter];
    [v11 addObserver:v4 selector:sel__handlePublishersChangedNotification_ name:@"WFNANPublishersChangedNotification" object:0];

    v12 = [MEMORY[0x277CCAB98] defaultCenter];
    [v12 addObserver:v4 selector:sel__handleSubscribersChangedNotification_ name:@"WFNANSubscribersChangedNotification" object:0];

    [(WFInsetTableViewController *)v4 setReloadDataOnUpdateSectionContentInset:0];
  }

  return v4;
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = WFNANTableViewController;
  [(WFNANTableViewController *)&v8 viewDidLoad];
  WFCurrentDeviceCapability();
  IsChinaDevice = WFCapabilityIsChinaDevice();
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = v4;
  if (IsChinaDevice)
  {
    v6 = @"kWFLocNAN_CH";
  }

  else
  {
    v6 = @"kWFLocNAN";
  }

  v7 = [v4 localizedStringForKey:v6 value:&stru_2882E4AD8 table:@"WiFiKitUILocalizableStrings"];
  [(WFNANTableViewController *)self setTitle:v7];

  [(WFNANTableViewController *)self _configureDataSource];
}

- (void)_configureDataSource
{
  v29[1] = *MEMORY[0x277D85DE8];
  v3 = [WFNANTableViewDataSource alloc];
  v4 = [(WFNANTableViewController *)self tableView];
  v5 = [(WFNANTableViewController *)self sections];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __48__WFNANTableViewController__configureDataSource__block_invoke;
  v26[3] = &unk_279EBCCC0;
  v26[4] = self;
  v6 = [(WFNANTableViewDataSource *)v3 initWithTableView:v4 sections:v5 cellProvider:v26];
  [(WFNANTableViewController *)self setDataSource:v6];

  v7 = objc_alloc_init(MEMORY[0x277CFB890]);
  v8 = [MEMORY[0x277CBEB18] array];
  v9 = [(WFNANTableViewController *)self sections];
  v10 = [v9 count];

  if (v10)
  {
    v11 = 0;
    do
    {
      v12 = [(WFNANTableViewController *)self sections];
      v13 = [v12 objectAtIndexedSubscript:v11];
      v14 = [v13 unsignedIntegerValue];

      v15 = [(WFNANTableViewController *)self _identifierForSection:v14];
      [v8 addObject:v15];

      ++v11;
      v16 = [(WFNANTableViewController *)self sections];
      v17 = [v16 count];
    }

    while (v17 > v11);
  }

  [v7 appendSectionsWithIdentifiers:v8];
  v29[0] = @"WFNANTableViewControllerNANState";
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:1];
  v19 = [(WFNANTableViewController *)self _identifierForSection:0];
  [v7 appendItemsWithIdentifiers:v18 intoSectionWithIdentifier:v19];

  v28 = @"WFNANTableViewControllerSubscribersCount";
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v28 count:1];
  v21 = [(WFNANTableViewController *)self _identifierForSection:2];
  [v7 appendItemsWithIdentifiers:v20 intoSectionWithIdentifier:v21];

  v27 = @"WFNANTableViewControllerPublishersCount";
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v27 count:1];
  v23 = [(WFNANTableViewController *)self _identifierForSection:1];
  [v7 appendItemsWithIdentifiers:v22 intoSectionWithIdentifier:v23];

  v24 = [(WFNANTableViewController *)self dataSource];
  [v24 applySnapshot:v7 animatingDifferences:1];

  v25 = *MEMORY[0x277D85DE8];
}

id __48__WFNANTableViewController__configureDataSource__block_invoke(uint64_t a1, void *a2, void *a3)
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

  if (v10 == 2)
  {
    if ([v5 row])
    {
      v20 = [*(*(a1 + 32) + 1056) getSubscriberAtIndex:{objc_msgSend(v5, "row") - 1}];
      v22 = [v20 configuration];
      v23 = [v22 serviceName];
      v29 = [v11 textLabel];
      [v29 setText:v23];

      goto LABEL_15;
    }

    v36 = *(a1 + 32);
    v37 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v38 = [v37 localizedStringForKey:@"kWFLocNANSubscribers" value:&stru_2882E4AD8 table:@"WiFiKitUILocalizableStrings"];
    v39 = [v11 textLabel];
    [v39 setText:v38];

    v34 = MEMORY[0x277CCACA8];
    v35 = [*(*(a1 + 32) + 1056) getSubscribersCount];
LABEL_18:
    v40 = [v34 stringWithFormat:@"%ld", v35];
    v41 = [v11 detailTextLabel];
    [v41 setText:v40];

    [v11 setAccessoryType:1];
    v18 = v11;
    v19 = 1;
LABEL_19:
    [v18 setSelectionStyle:v19];
    goto LABEL_20;
  }

  if (v10 == 1)
  {
    if ([v5 row])
    {
      v20 = [*(*(a1 + 32) + 1056) getPublisherAtIndex:{objc_msgSend(v5, "row") - 1}];
      v21 = MEMORY[0x277CCACA8];
      v22 = [v20 configuration];
      v23 = [v22 serviceName];
      v24 = [v20 configuration];
      v25 = [v24 serviceSpecificInfo];
      v26 = [v25 instanceName];
      v27 = [v21 stringWithFormat:@"%@ [%@]", v23, v26];
      v28 = [v11 textLabel];
      [v28 setText:v27];

LABEL_15:
      goto LABEL_20;
    }

    v30 = *(a1 + 32);
    v31 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v32 = [v31 localizedStringForKey:@"kWFLocNANPublishers" value:&stru_2882E4AD8 table:@"WiFiKitUILocalizableStrings"];
    v33 = [v11 textLabel];
    [v33 setText:v32];

    v34 = MEMORY[0x277CCACA8];
    v35 = [*(*(a1 + 32) + 1056) getPublishersCount];
    goto LABEL_18;
  }

  if (!v10 && ![v5 row])
  {
    v12 = *(a1 + 32);
    v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v14 = [v13 localizedStringForKey:@"kWFLocNANState" value:&stru_2882E4AD8 table:@"WiFiKitUILocalizableStrings"];
    v15 = [v11 textLabel];
    [v15 setText:v14];

    if ([*(a1 + 32) _isNANEnabled])
    {
      v16 = @"Enabled";
    }

    else
    {
      v16 = @"Disabled";
    }

    v17 = [v11 detailTextLabel];
    [v17 setText:v16];

    v18 = v11;
    v19 = 0;
    goto LABEL_19;
  }

LABEL_20:

  return v11;
}

- (void)_handlePublishersChangedNotification:(id)a3
{
  v20[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(WFNANTableViewController *)self dataSource];
  v6 = [v5 snapshot];

  v7 = [v4 userInfo];
  v8 = [v7 objectForKeyedSubscript:@"WFNANTableViewContextChangedPublisherKey"];

  v9 = [v4 userInfo];

  v10 = [v9 objectForKeyedSubscript:@"WFNANTableViewContextChangedOperationTypeKey"];

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
    v12 = [v10 unsignedIntegerValue];
    if (v12 == 1)
    {
      v19 = v8;
      v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v19 count:1];
      [v6 deleteItemsWithIdentifiers:v13];
    }

    else
    {
      if (v12)
      {
LABEL_10:
        v18[0] = @"WFNANTableViewControllerNANState";
        v18[1] = @"WFNANTableViewControllerPublishersCount";
        v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
        [v6 reconfigureItemsWithIdentifiers:v15];

        v16 = [(WFNANTableViewController *)self dataSource];
        [v16 applySnapshot:v6 animatingDifferences:1];

        goto LABEL_11;
      }

      v20[0] = v8;
      v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
      v14 = [(WFNANTableViewController *)self _identifierForSection:1];
      [v6 appendItemsWithIdentifiers:v13 intoSectionWithIdentifier:v14];
    }

    goto LABEL_10;
  }

LABEL_11:

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_handleSubscribersChangedNotification:(id)a3
{
  v20[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(WFNANTableViewController *)self dataSource];
  v6 = [v5 snapshot];

  v7 = [v4 userInfo];
  v8 = [v7 objectForKeyedSubscript:@"WFNANTableViewContextChangedSubscriberKey"];

  v9 = [v4 userInfo];

  v10 = [v9 objectForKeyedSubscript:@"WFNANTableViewContextChangedOperationTypeKey"];

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
    v12 = [v10 unsignedIntegerValue];
    if (v12 == 1)
    {
      v19 = v8;
      v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v19 count:1];
      [v6 deleteItemsWithIdentifiers:v13];
    }

    else
    {
      if (v12)
      {
LABEL_10:
        v18[0] = @"WFNANTableViewControllerNANState";
        v18[1] = @"WFNANTableViewControllerSubscribersCount";
        v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
        [v6 reconfigureItemsWithIdentifiers:v15];

        v16 = [(WFNANTableViewController *)self dataSource];
        [v16 applySnapshot:v6 animatingDifferences:1];

        goto LABEL_11;
      }

      v20[0] = v8;
      v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
      v14 = [(WFNANTableViewController *)self _identifierForSection:2];
      [v6 appendItemsWithIdentifiers:v13 intoSectionWithIdentifier:v14];
    }

    goto LABEL_10;
  }

LABEL_11:

  v17 = *MEMORY[0x277D85DE8];
}

- (BOOL)_isNANEnabled
{
  v3 = [(WFNANTableViewContext *)self->_context getPublishersCount];
  v4 = [(WFNANTableViewContext *)self->_context getSubscribersCount];
  return !((v4 + v3 < 0) ^ __OFADD__(v4, v3) | (v4 + v3 == 0));
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v10 = a4;
  v5 = [(WFNANTableViewController *)self sections];
  v6 = [v5 objectAtIndexedSubscript:{objc_msgSend(v10, "section")}];
  v7 = [v6 unsignedIntegerValue];

  if (v7 == 2)
  {
    if ([v10 row])
    {
      goto LABEL_8;
    }

    v8 = off_279EBC1B0;
    goto LABEL_7;
  }

  if (v7 == 1 && ![v10 row])
  {
    v8 = off_279EBC1A0;
LABEL_7:
    v9 = [objc_alloc(*v8) initWithContext:self->_context];
    [(WFNANTableViewController *)self wf_pushViewController:v9 animated:1];
  }

LABEL_8:
}

@end