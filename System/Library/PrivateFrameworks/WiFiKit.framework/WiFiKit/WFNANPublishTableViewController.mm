@interface WFNANPublishTableViewController
- (WFNANPublishTableViewController)initWithContext:(id)context;
- (id)createTextFieldCellWithTableView:(id)view indexPath:(id)path text:(id)text placeholder:(id)placeholder keyboardType:(int64_t)type textChangedHandler:(id)handler;
- (id)serviceSpecificInfoFromString;
- (void)_configureDataSource;
- (void)_handleAddPublisher;
- (void)_handleDataSessionsChangedNotification:(id)notification;
- (void)_handlePublishersChangedNotification:(id)notification;
- (void)clearInputFields;
- (void)dismissKeyboard;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation WFNANPublishTableViewController

- (WFNANPublishTableViewController)initWithContext:(id)context
{
  contextCopy = context;
  defaultAppearanceProxy = [MEMORY[0x277D7B980] defaultAppearanceProxy];
  v19.receiver = self;
  v19.super_class = WFNANPublishTableViewController;
  v7 = -[WFNANPublishTableViewController initWithStyle:](&v19, sel_initWithStyle_, [defaultAppearanceProxy tableViewStyle]);

  if (v7)
  {
    v8 = MEMORY[0x277CBEB70];
    _defaultSections = [(WFNANPublishTableViewController *)v7 _defaultSections];
    v10 = [v8 orderedSetWithArray:_defaultSections];
    sections = v7->_sections;
    v7->_sections = v10;

    objc_storeStrong(&v7->_context, context);
    v12 = [WFNetworkSettingsCellFactory alloc];
    tableView = [(WFNANPublishTableViewController *)v7 tableView];
    v14 = [(WFNetworkSettingsCellFactory *)v12 initWithTableView:tableView];
    cellFactory = v7->_cellFactory;
    v7->_cellFactory = v14;

    [(WFNANPublishTableViewController *)v7 clearInputFields];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v7 selector:sel__handlePublishersChangedNotification_ name:@"WFNANPublishersChangedNotification" object:0];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:v7 selector:sel__handleDataSessionsChangedNotification_ name:@"WFNANDataSessionsForPublishChangedNotification" object:0];

    [(WFInsetTableViewController *)v7 setReloadDataOnUpdateSectionContentInset:0];
  }

  return v7;
}

- (void)viewDidLoad
{
  v9.receiver = self;
  v9.super_class = WFNANPublishTableViewController;
  [(WFNANPublishTableViewController *)&v9 viewDidLoad];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"kWFLocNANPublish" value:&stru_2882E4AD8 table:@"WiFiKitUILocalizableStrings"];
  [(WFNANPublishTableViewController *)self setTitle:v4];

  v5 = MEMORY[0x277D757B0];
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v5 nibWithNibName:@"WFTextFieldCell" bundle:v6];

  tableView = [(WFNANPublishTableViewController *)self tableView];
  [tableView registerNib:v7 forCellReuseIdentifier:@"kWFTextFieldCellIdentifier"];

  [(WFNANPublishTableViewController *)self _configureDataSource];
}

- (void)dismissKeyboard
{
  view = [(WFNANPublishTableViewController *)self view];
  [view endEditing:1];
}

- (id)createTextFieldCellWithTableView:(id)view indexPath:(id)path text:(id)text placeholder:(id)placeholder keyboardType:(int64_t)type textChangedHandler:(id)handler
{
  handlerCopy = handler;
  placeholderCopy = placeholder;
  textCopy = text;
  v16 = [view dequeueReusableCellWithIdentifier:@"kWFTextFieldCellIdentifier" forIndexPath:path];
  [v16 setHideLabel:1];
  [v16 setEditable:1];
  textField = [v16 textField];
  [textField setText:textCopy];

  textField2 = [v16 textField];
  [textField2 setPlaceholder:placeholderCopy];

  textField3 = [v16 textField];
  [textField3 setKeyboardType:type];

  [v16 setTextChangeHandler:handlerCopy];

  return v16;
}

- (void)_configureDataSource
{
  v51[1] = *MEMORY[0x277D85DE8];
  v3 = [WFNANPublishTableViewDataSource alloc];
  tableView = [(WFNANPublishTableViewController *)self tableView];
  context = [(WFNANPublishTableViewController *)self context];
  sections = [(WFNANPublishTableViewController *)self sections];
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __55__WFNANPublishTableViewController__configureDataSource__block_invoke;
  v41[3] = &unk_279EBCCC0;
  v41[4] = self;
  v7 = [(WFNANPublishTableViewDataSource *)v3 initWithTableView:tableView context:context sections:sections cellProvider:v41];
  [(WFNANPublishTableViewController *)self setDataSource:v7];

  v8 = objc_alloc_init(MEMORY[0x277CFB890]);
  array = [MEMORY[0x277CBEB18] array];
  sections2 = [(WFNANPublishTableViewController *)self sections];
  v11 = [sections2 count];

  if (v11)
  {
    v12 = 0;
    do
    {
      sections3 = [(WFNANPublishTableViewController *)self sections];
      v14 = [sections3 objectAtIndexedSubscript:v12];
      unsignedIntegerValue = [v14 unsignedIntegerValue];

      v16 = [(WFNANPublishTableViewController *)self _identifierForSection:unsignedIntegerValue];
      [array addObject:v16];

      ++v12;
      sections4 = [(WFNANPublishTableViewController *)self sections];
      v18 = [sections4 count];
    }

    while (v18 > v12);
  }

  [v8 appendSectionsWithIdentifiers:array];
  v51[0] = @"WFNANPublishServiceNameIdentifier";
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v51 count:1];
  v20 = [(WFNANPublishTableViewController *)self _identifierForSection:0];
  [v8 appendItemsWithIdentifiers:v19 intoSectionWithIdentifier:v20];

  v50 = @"WFNANPublishServiceTypeIdentifier";
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v50 count:1];
  v22 = [(WFNANPublishTableViewController *)self _identifierForSection:0];
  [v8 appendItemsWithIdentifiers:v21 intoSectionWithIdentifier:v22];

  v49 = @"WFNANPublishInstanceNameIdentifier";
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v49 count:1];
  v24 = [(WFNANPublishTableViewController *)self _identifierForSection:0];
  [v8 appendItemsWithIdentifiers:v23 intoSectionWithIdentifier:v24];

  v48 = @"WFNANPublishServiceSpecificInfoIdentifier";
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:&v48 count:1];
  v26 = [(WFNANPublishTableViewController *)self _identifierForSection:0];
  [v8 appendItemsWithIdentifiers:v25 intoSectionWithIdentifier:v26];

  v47 = @"WFNANPublishServiceSpecificInfoTypeIdentifier";
  v27 = [MEMORY[0x277CBEA60] arrayWithObjects:&v47 count:1];
  v28 = [(WFNANPublishTableViewController *)self _identifierForSection:0];
  [v8 appendItemsWithIdentifiers:v27 intoSectionWithIdentifier:v28];

  v46 = @"WFNANPublishPortNumberIdentifier";
  v29 = [MEMORY[0x277CBEA60] arrayWithObjects:&v46 count:1];
  v30 = [(WFNANPublishTableViewController *)self _identifierForSection:0];
  [v8 appendItemsWithIdentifiers:v29 intoSectionWithIdentifier:v30];

  v45 = @"WFNANPublishProtocolTypeIdentifier";
  v31 = [MEMORY[0x277CBEA60] arrayWithObjects:&v45 count:1];
  v32 = [(WFNANPublishTableViewController *)self _identifierForSection:0];
  [v8 appendItemsWithIdentifiers:v31 intoSectionWithIdentifier:v32];

  v44 = @"WFNANPublishPassphraseIdentifier";
  v33 = [MEMORY[0x277CBEA60] arrayWithObjects:&v44 count:1];
  v34 = [(WFNANPublishTableViewController *)self _identifierForSection:0];
  [v8 appendItemsWithIdentifiers:v33 intoSectionWithIdentifier:v34];

  v43 = @"WFNANPublishAddIdentifier";
  v35 = [MEMORY[0x277CBEA60] arrayWithObjects:&v43 count:1];
  v36 = [(WFNANPublishTableViewController *)self _identifierForSection:0];
  [v8 appendItemsWithIdentifiers:v35 intoSectionWithIdentifier:v36];

  if ([(WFNANTableViewContext *)self->_context getPublishersCount]<= 0)
  {
    v42 = @"WFNANPublishNoPublishersIdentifier";
    [MEMORY[0x277CBEA60] arrayWithObjects:&v42 count:1];
  }

  else
  {
    [(WFNANTableViewContext *)self->_context getPublishers];
  }
  v37 = ;
  v38 = [(WFNANPublishTableViewController *)self _identifierForSection:1];
  [v8 appendItemsWithIdentifiers:v37 intoSectionWithIdentifier:v38];

  dataSource = [(WFNANPublishTableViewController *)self dataSource];
  [dataSource applySnapshot:v8 animatingDifferences:1];

  v40 = *MEMORY[0x277D85DE8];
}

id __55__WFNANPublishTableViewController__configureDataSource__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v90 = a2;
  v7 = a3;
  v89 = a4;
  v8 = [*(a1 + 32) sections];
  v9 = [v8 objectAtIndexedSubscript:{objc_msgSend(v7, "section")}];
  v10 = [v9 unsignedIntegerValue];

  objc_initWeak(location, *(a1 + 32));
  if (v10 == 1)
  {
    v12 = [v90 dequeueReusableCellWithIdentifier:@"WFNANTableViewTextCellIdentifier"];
    if (!v12)
    {
      v12 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:1 reuseIdentifier:@"WFNANTableViewTextCellIdentifier"];
    }

    [v12 setSelectionStyle:0];
    if ([*(*(a1 + 32) + 1064) getPublishersCount])
    {
      v88 = a1;
      v31 = [*(*(a1 + 32) + 1064) getPublisherAtIndex:{objc_msgSend(v7, "row")}];
      v32 = MEMORY[0x277CCACA8];
      v33 = [v31 configuration];
      v34 = [v33 serviceName];
      v35 = [v31 configuration];
      v36 = [v35 serviceSpecificInfo];
      v37 = [v36 instanceName];
      v38 = [v32 stringWithFormat:@"%@ [%@]", v34, v37];
      v39 = [v12 textLabel];
      [v39 setText:v38];

      v40 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld sessions", objc_msgSend(*(*(v88 + 32) + 1064), "getDataSessionsCountForPublisher:", v31)];
      v41 = [v12 detailTextLabel];
      [v41 setText:v40];

      [v12 setAccessoryType:1];
      [v12 setSelectionStyle:1];
    }

    else
    {
      v49 = *(a1 + 32);
      v50 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v51 = [v50 localizedStringForKey:@"kWFLocNANNoPublishers" value:&stru_2882E4AD8 table:@"WiFiKitUILocalizableStrings"];
      v52 = [v12 textLabel];
      [v52 setText:v51];
    }
  }

  else
  {
    if (v10)
    {
      v12 = 0;
      goto LABEL_19;
    }

    v11 = v7;
    if (![v7 row])
    {
      v42 = *(a1 + 32);
      v43 = v42[136];
      v44 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v45 = [v44 localizedStringForKey:@"kWFLocNANServiceName" value:&stru_2882E4AD8 table:@"WiFiKitUILocalizableStrings"];
      v46 = v102;
      v102[0] = MEMORY[0x277D85DD0];
      v102[1] = 3221225472;
      v102[2] = __55__WFNANPublishTableViewController__configureDataSource__block_invoke_2;
      v102[3] = &unk_279EBDD58;
      objc_copyWeak(&v103, location);
      v47 = v42;
      v7 = v11;
      v48 = [v47 createTextFieldCellWithTableView:v90 indexPath:v11 text:v43 placeholder:v45 keyboardType:0 textChangedHandler:v102];
LABEL_18:
      v12 = v48;

      objc_destroyWeak(v46 + 4);
      goto LABEL_19;
    }

    if ([v7 row] == 1)
    {
      v12 = [*(*(a1 + 32) + 1072) segmentedCellAtIndexPath:v7];
      v13 = [v12 segmentedControl];
      [v13 removeAllSegments];

      v14 = [v12 segmentedControl];
      v15 = *(a1 + 32);
      v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v17 = [v16 localizedStringForKey:@"kWFLocNANServiceTypeAdaptive" value:&stru_2882E4AD8 table:@"WiFiKitUILocalizableStrings"];
      [v14 insertSegmentWithTitle:v17 atIndex:0 animated:1];

      v18 = [v12 segmentedControl];
      v19 = *(a1 + 32);
      v20 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v21 = [v20 localizedStringForKey:@"kWFLocNANServiceTypeRealtime" value:&stru_2882E4AD8 table:@"WiFiKitUILocalizableStrings"];
      [v18 insertSegmentWithTitle:v21 atIndex:1 animated:1];

      v22 = [v12 segmentedControl];
      v23 = *(a1 + 32);
      v24 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v25 = [v24 localizedStringForKey:@"kWFLocNANServiceTypeLowLatency" value:&stru_2882E4AD8 table:@"WiFiKitUILocalizableStrings"];
      [v22 insertSegmentWithTitle:v25 atIndex:2 animated:1];

      v101[0] = MEMORY[0x277D85DD0];
      v101[1] = 3221225472;
      v101[2] = __55__WFNANPublishTableViewController__configureDataSource__block_invoke_3;
      v101[3] = &unk_279EBDD80;
      v101[4] = *(a1 + 32);
      [v12 setHandler:v101];
      v26 = [v12 segmentedControl];
      [v26 setSelectedSegmentIndex:0];

      v27 = [MEMORY[0x277D75348] systemBackgroundColor];
      v28 = [v12 segmentedControl];
      [v28 setBackgroundColor:v27];

      v29 = [MEMORY[0x277D75348] secondarySystemBackgroundColor];
      v30 = [v12 contentView];
      [v30 setBackgroundColor:v29];
LABEL_6:

      goto LABEL_19;
    }

    if ([v7 row] == 2)
    {
      v53 = *(a1 + 32);
      v54 = v53[138];
      v44 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v45 = [v44 localizedStringForKey:@"kWFLocNANInstanceName" value:&stru_2882E4AD8 table:@"WiFiKitUILocalizableStrings"];
      v46 = v99;
      v99[0] = MEMORY[0x277D85DD0];
      v99[1] = 3221225472;
      v99[2] = __55__WFNANPublishTableViewController__configureDataSource__block_invoke_4;
      v99[3] = &unk_279EBDD58;
      objc_copyWeak(&v100, location);
      v55 = v53;
      v7 = v11;
      v48 = [v55 createTextFieldCellWithTableView:v90 indexPath:v11 text:v54 placeholder:v45 keyboardType:0 textChangedHandler:v99];
      goto LABEL_18;
    }

    if ([v7 row] == 3)
    {
      v56 = *(a1 + 32);
      v57 = v56[139];
      v44 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v45 = [v44 localizedStringForKey:@"kWFLocNANServiceSpecificInfo" value:&stru_2882E4AD8 table:@"WiFiKitUILocalizableStrings"];
      v46 = v97;
      v97[0] = MEMORY[0x277D85DD0];
      v97[1] = 3221225472;
      v97[2] = __55__WFNANPublishTableViewController__configureDataSource__block_invoke_5;
      v97[3] = &unk_279EBDD58;
      objc_copyWeak(&v98, location);
      v58 = v56;
      v7 = v11;
      v48 = [v58 createTextFieldCellWithTableView:v90 indexPath:v11 text:v57 placeholder:v45 keyboardType:0 textChangedHandler:v97];
      goto LABEL_18;
    }

    if ([v7 row] == 4)
    {
      v12 = [*(*(a1 + 32) + 1072) segmentedCellAtIndexPath:v7];
      v60 = [v12 segmentedControl];
      [v60 removeAllSegments];

      v61 = [v12 segmentedControl];
      [v61 insertSegmentWithTitle:@"Hex" atIndex:0 animated:1];

      v62 = [v12 segmentedControl];
      [v62 insertSegmentWithTitle:@"ASCII" atIndex:1 animated:1];

      v96[0] = MEMORY[0x277D85DD0];
      v96[1] = 3221225472;
      v96[2] = __55__WFNANPublishTableViewController__configureDataSource__block_invoke_6;
      v96[3] = &unk_279EBDD80;
      v96[4] = *(a1 + 32);
      [v12 setHandler:v96];
      v63 = [v12 segmentedControl];
      [v63 setSelectedSegmentIndex:0];

      v64 = [MEMORY[0x277D75348] systemBackgroundColor];
      v65 = [v12 segmentedControl];
      [v65 setBackgroundColor:v64];

      v29 = [MEMORY[0x277D75348] secondarySystemBackgroundColor];
      v30 = [v12 contentView];
      [v30 setBackgroundColor:v29];
      goto LABEL_6;
    }

    if ([v7 row] == 5)
    {
      v66 = *(a1 + 32);
      v67 = v66[140];
      v44 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v45 = [v44 localizedStringForKey:@"kWFLocNANPortNumber" value:&stru_2882E4AD8 table:@"WiFiKitUILocalizableStrings"];
      v46 = v94;
      v94[0] = MEMORY[0x277D85DD0];
      v94[1] = 3221225472;
      v94[2] = __55__WFNANPublishTableViewController__configureDataSource__block_invoke_7;
      v94[3] = &unk_279EBDD58;
      objc_copyWeak(&v95, location);
      v68 = v66;
      v7 = v11;
      v48 = [v68 createTextFieldCellWithTableView:v90 indexPath:v11 text:v67 placeholder:v45 keyboardType:4 textChangedHandler:v94];
      goto LABEL_18;
    }

    if ([v7 row] == 6)
    {
      v12 = [*(*(a1 + 32) + 1072) segmentedCellAtIndexPath:v7];
      v69 = [v12 segmentedControl];
      [v69 removeAllSegments];

      v70 = [v12 segmentedControl];
      v71 = *(a1 + 32);
      v72 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v73 = [v72 localizedStringForKey:@"kWFLocNANProtocolTypeTCP" value:&stru_2882E4AD8 table:@"WiFiKitUILocalizableStrings"];
      [v70 insertSegmentWithTitle:v73 atIndex:0 animated:1];

      v74 = [v12 segmentedControl];
      v75 = *(a1 + 32);
      v76 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v77 = [v76 localizedStringForKey:@"kWFLocNANProtocolTypeUDP" value:&stru_2882E4AD8 table:@"WiFiKitUILocalizableStrings"];
      [v74 insertSegmentWithTitle:v77 atIndex:1 animated:1];

      v93[0] = MEMORY[0x277D85DD0];
      v93[1] = 3221225472;
      v93[2] = __55__WFNANPublishTableViewController__configureDataSource__block_invoke_8;
      v93[3] = &unk_279EBDD80;
      v93[4] = *(a1 + 32);
      [v12 setHandler:v93];
      v78 = [v12 segmentedControl];
      [v78 setSelectedSegmentIndex:0];

      v79 = [MEMORY[0x277D75348] systemBackgroundColor];
      v80 = [v12 segmentedControl];
      [v80 setBackgroundColor:v79];

      v29 = [MEMORY[0x277D75348] secondarySystemBackgroundColor];
      v30 = [v12 contentView];
      [v30 setBackgroundColor:v29];
      goto LABEL_6;
    }

    if ([v7 row] == 7)
    {
      v81 = *(a1 + 32);
      v82 = v81[142];
      v44 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v45 = [v44 localizedStringForKey:@"kWFLocNANPassphrase" value:&stru_2882E4AD8 table:@"WiFiKitUILocalizableStrings"];
      v46 = v91;
      v91[0] = MEMORY[0x277D85DD0];
      v91[1] = 3221225472;
      v91[2] = __55__WFNANPublishTableViewController__configureDataSource__block_invoke_9;
      v91[3] = &unk_279EBDD58;
      objc_copyWeak(&v92, location);
      v83 = v81;
      v7 = v11;
      v48 = [v83 createTextFieldCellWithTableView:v90 indexPath:v11 text:v82 placeholder:v45 keyboardType:0 textChangedHandler:v91];
      goto LABEL_18;
    }

    if ([v7 row] == 8)
    {
      v12 = [v90 dequeueReusableCellWithIdentifier:@"WFNANTableViewTextCellIdentifier"];
      if (!v12)
      {
        v12 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:1 reuseIdentifier:@"WFNANTableViewTextCellIdentifier"];
      }

      [v12 setSelectionStyle:0];
      v84 = [MEMORY[0x277D75220] buttonWithType:1];
      [v84 setTitle:@"Add" forState:0];
      v85 = [v12 textLabel];
      v86 = [v85 font];
      v87 = [v84 titleLabel];
      [v87 setFont:v86];

      [v84 sizeToFit];
      [v84 addTarget:*(a1 + 32) action:sel__handleAddPublisher forControlEvents:64];
      [v12 setAccessoryView:v84];
    }

    else
    {
      v12 = 0;
    }
  }

LABEL_19:
  objc_destroyWeak(location);

  return v12;
}

void __55__WFNANPublishTableViewController__configureDataSource__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setServiceName:v3];
}

void __55__WFNANPublishTableViewController__configureDataSource__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setInstanceName:v3];
}

void __55__WFNANPublishTableViewController__configureDataSource__block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setServiceSpecificInfo:v3];
}

void __55__WFNANPublishTableViewController__configureDataSource__block_invoke_7(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setPortNumber:v3];
}

void __55__WFNANPublishTableViewController__configureDataSource__block_invoke_9(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setPassphrase:v3];
}

- (void)_handlePublishersChangedNotification:(id)notification
{
  v25[1] = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  dataSource = [(WFNANPublishTableViewController *)self dataSource];
  snapshot = [dataSource snapshot];

  userInfo = [notificationCopy userInfo];
  v8 = [userInfo objectForKeyedSubscript:@"WFNANTableViewContextChangedPublisherKey"];

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
      v22 = v8;
      v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v22 count:1];
      [snapshot deleteItemsWithIdentifiers:v17];

      if (![(WFNANTableViewContext *)self->_context getPublishersCount])
      {
        v21 = @"WFNANPublishNoPublishersIdentifier";
        v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v21 count:1];
        v18 = [(WFNANPublishTableViewController *)self _identifierForSection:1];
        [snapshot appendItemsWithIdentifiers:v16 intoSectionWithIdentifier:v18];

LABEL_12:
      }
    }

    else if (!unsignedIntegerValue)
    {
      v25[0] = v8;
      v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:1];
      v14 = [(WFNANPublishTableViewController *)self _identifierForSection:1];
      [snapshot appendItemsWithIdentifiers:v13 intoSectionWithIdentifier:v14];

      if ([(WFNANTableViewContext *)self->_context getPublishersCount]== 1)
      {
        v24 = @"WFNANPublishNoPublishersIdentifier";
        v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v24 count:1];
        [snapshot deleteItemsWithIdentifiers:v15];
      }

      [(WFNANPublishTableViewController *)self clearInputFields];
      v23[0] = @"WFNANPublishServiceNameIdentifier";
      v23[1] = @"WFNANPublishServiceTypeIdentifier";
      v23[2] = @"WFNANPublishInstanceNameIdentifier";
      v23[3] = @"WFNANPublishServiceSpecificInfoIdentifier";
      v23[4] = @"WFNANPublishServiceSpecificInfoTypeIdentifier";
      v23[5] = @"WFNANPublishPortNumberIdentifier";
      v23[6] = @"WFNANPublishProtocolTypeIdentifier";
      v23[7] = @"WFNANPublishPassphraseIdentifier";
      v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:8];
      [snapshot reconfigureItemsWithIdentifiers:v16];
      goto LABEL_12;
    }

    dataSource2 = [(WFNANPublishTableViewController *)self dataSource];
    [dataSource2 applySnapshot:snapshot animatingDifferences:1];
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_handleDataSessionsChangedNotification:(id)notification
{
  v12[1] = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  dataSource = [(WFNANPublishTableViewController *)self dataSource];
  snapshot = [dataSource snapshot];

  userInfo = [notificationCopy userInfo];

  v8 = [userInfo objectForKeyedSubscript:@"WFNANTableViewContextChangedPublisherKey"];

  if (v8)
  {
    v12[0] = v8;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
    [snapshot reconfigureItemsWithIdentifiers:v9];

    dataSource2 = [(WFNANPublishTableViewController *)self dataSource];
    [dataSource2 applySnapshot:snapshot animatingDifferences:1];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)clearInputFields
{
  serviceName = self->_serviceName;
  self->_serviceName = &stru_2882E4AD8;

  self->_serviceType = 0;
  instanceName = self->_instanceName;
  self->_instanceName = &stru_2882E4AD8;

  serviceSpecificInfo = self->_serviceSpecificInfo;
  self->_serviceSpecificInfo = &stru_2882E4AD8;

  self->_isServiceSpecificInfoHex = 1;
  self->_portNumber = &stru_2882E4AD8;
  self->_protocolType = 0;
  self->_passphrase = &stru_2882E4AD8;
}

- (id)serviceSpecificInfoFromString
{
  if (self->_isServiceSpecificInfoHex)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB28]);
    serviceSpecificInfo = [(WFNANPublishTableViewController *)self serviceSpecificInfo];
    lowercaseString = [serviceSpecificInfo lowercaseString];
    uTF8String = [lowercaseString UTF8String];

    serviceSpecificInfo2 = [(WFNANPublishTableViewController *)self serviceSpecificInfo];
    v8 = [serviceSpecificInfo2 length];

    if (v8 >= 2)
    {
      v9 = 0;
      v10 = (uTF8String + 1);
      while (1)
      {
        v19 = 0;
        v11 = *(v10 - 1);
        v12 = *v10;
        if ((v11 - 48) <= 9)
        {
          break;
        }

        if ((v11 - 97) <= 5)
        {
          v13 = 16 * v11 - 112;
          goto LABEL_8;
        }

        v13 = 0;
LABEL_10:
        if ((v12 - 48) <= 9)
        {
          v14 = v13 | (v12 - 48);
LABEL_14:
          v19 = v14;
          goto LABEL_15;
        }

        if ((v12 - 97) <= 5)
        {
          v14 = v13 | (v12 - 87);
          goto LABEL_14;
        }

LABEL_15:
        v10 += 2;
        [v3 appendBytes:&v19 length:1];
        ++v9;
        serviceSpecificInfo3 = [(WFNANPublishTableViewController *)self serviceSpecificInfo];
        v16 = [serviceSpecificInfo3 length];

        if (v9 >= v16 >> 1)
        {
          goto LABEL_18;
        }
      }

      v13 = 16 * v11;
LABEL_8:
      v19 = v13;
      goto LABEL_10;
    }
  }

  else
  {
    serviceSpecificInfo4 = [(WFNANPublishTableViewController *)self serviceSpecificInfo];
    v3 = [serviceSpecificInfo4 dataUsingEncoding:4];
  }

LABEL_18:

  return v3;
}

- (void)_handleAddPublisher
{
  v21[1] = *MEMORY[0x277D85DE8];
  passphrase = self->_passphrase;
  if (passphrase && [(NSString *)passphrase length])
  {
    v4 = objc_alloc(MEMORY[0x277D7BAD8]);
    v21[0] = self->_passphrase;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
    v6 = [v4 initWithPMKList:MEMORY[0x277CBEBF8] passphraseList:v5];
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_alloc(MEMORY[0x277D7BAD0]) initWithServiceType:-[WFNANPublishTableViewController serviceType](self securityConfiguration:{"serviceType"), v6}];
  v8 = objc_alloc(MEMORY[0x277D7BAE0]);
  protocolType = [(WFNANPublishTableViewController *)self protocolType];
  portNumber = [(WFNANPublishTableViewController *)self portNumber];
  v11 = [v8 initWithProtocolType:protocolType servicePort:{objc_msgSend(portNumber, "integerValue")}];

  [v7 setServiceSpecificInfo:v11];
  v12 = objc_alloc_init(MEMORY[0x277D7BAE8]);
  instanceName = [(WFNANPublishTableViewController *)self instanceName];
  [v12 setInstanceName:instanceName];

  serviceSpecificInfoFromString = [(WFNANPublishTableViewController *)self serviceSpecificInfoFromString];
  [v12 setBlob:serviceSpecificInfoFromString];

  v15 = objc_alloc(MEMORY[0x277D7BAC8]);
  serviceName = [(WFNANPublishTableViewController *)self serviceName];
  v17 = [v15 initWithServiceName:serviceName];

  [v17 setDatapathConfiguration:v7];
  [v17 setServiceSpecificInfo:v12];
  [v17 setAuthenticationType:0];
  v18 = [objc_alloc(MEMORY[0x277D7BAF0]) initWithConfiguration:v17];
  [v18 setDelegate:self->_context];
  [(WFNANPublishTableViewController *)self clearInputFields];
  context = [(WFNANPublishTableViewController *)self context];
  [context addPublisher:v18];

  [(WFNANPublishTableViewController *)self dismissKeyboard];
  v20 = *MEMORY[0x277D85DE8];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  sections = [(WFNANPublishTableViewController *)self sections];
  v6 = [sections objectAtIndexedSubscript:{objc_msgSend(pathCopy, "section")}];
  unsignedIntegerValue = [v6 unsignedIntegerValue];

  if (unsignedIntegerValue == 1 && [(WFNANTableViewContext *)self->_context getPublishersCount]>= 1)
  {
    v8 = [WFNANDataSessionsTableViewController alloc];
    context = self->_context;
    v10 = -[WFNANTableViewContext getPublisherAtIndex:](context, "getPublisherAtIndex:", [pathCopy row]);
    v11 = [(WFNANDataSessionsTableViewController *)v8 initWithContext:context forPublisher:v10];

    [(WFNANPublishTableViewController *)self wf_pushViewController:v11 animated:1];
  }
}

@end