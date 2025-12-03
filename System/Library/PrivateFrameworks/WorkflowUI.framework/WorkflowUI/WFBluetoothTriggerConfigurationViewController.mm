@interface WFBluetoothTriggerConfigurationViewController
- (WFBluetoothTriggerConfigurationViewController)initWithTrigger:(id)trigger mode:(unint64_t)mode;
- (id)customSections;
- (id)infoForSection:(int64_t)section;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (id)tableViewCellClasses;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)cell:(id)cell didSelectOptionWithLeftViewSelected:(BOOL)selected rightViewSelected:(BOOL)viewSelected;
- (void)finishWithDevices:(id)devices;
- (void)presentNavControllerWithRootViewController:(id)controller;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)triggerTableViewController:(id)controller didFinishWithAnySelected:(BOOL)selected orSelectedOptions:(id)options;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation WFBluetoothTriggerConfigurationViewController

- (void)cell:(id)cell didSelectOptionWithLeftViewSelected:(BOOL)selected rightViewSelected:(BOOL)viewSelected
{
  viewSelectedCopy = viewSelected;
  selectedCopy = selected;
  trigger = [(WFTriggerConfigurationViewController *)self trigger];
  [trigger setOnConnect:selectedCopy];

  trigger2 = [(WFTriggerConfigurationViewController *)self trigger];
  [trigger2 setOnDisconnect:viewSelectedCopy];

  [(WFTriggerConfigurationViewController *)self updateNextButtonEnabledState];
}

- (void)triggerTableViewController:(id)controller didFinishWithAnySelected:(BOOL)selected orSelectedOptions:(id)options
{
  selectedCopy = selected;
  optionsCopy = options;
  controllerCopy = controller;
  trigger = [(WFTriggerConfigurationViewController *)self trigger];
  v10 = trigger;
  if (selectedCopy)
  {
    [trigger setSelection:0];

    trigger2 = [(WFTriggerConfigurationViewController *)self trigger];
    [trigger2 setSelectedDevices:MEMORY[0x277CBEBF8]];
  }

  else
  {
    [trigger setSelection:1];

    trigger2 = [optionsCopy if_map:&__block_literal_global_13371];
    trigger3 = [(WFTriggerConfigurationViewController *)self trigger];
    [trigger3 setSelectedDevices:trigger2];
  }

  [controllerCopy dismissViewControllerAnimated:1 completion:0];
  tableView = [(WFTriggerConfigurationViewController *)self tableView];
  [tableView reloadData];

  [(WFTriggerConfigurationViewController *)self updateNextButtonEnabledState];
}

- (void)presentNavControllerWithRootViewController:(id)controller
{
  v4 = MEMORY[0x277D757A0];
  controllerCopy = controller;
  v6 = [[v4 alloc] initWithRootViewController:controllerCopy];

  [(WFBluetoothTriggerConfigurationViewController *)self presentViewController:v6 animated:1 completion:0];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v27 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  [view deselectRowAtIndexPath:pathCopy animated:1];
  v7 = -[WFBluetoothTriggerConfigurationViewController infoForSection:](self, "infoForSection:", [pathCopy section]);
  v8 = [v7 objectForKeyedSubscript:@"identifier"];
  v9 = [v8 isEqual:@"chooseDevice"];

  if (v9)
  {
    v10 = getWFTriggersLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v24 = "[WFBluetoothTriggerConfigurationViewController tableView:didSelectRowAtIndexPath:]";
      v25 = 2114;
      v26 = v7;
      _os_log_impl(&dword_274719000, v10, OS_LOG_TYPE_DEBUG, "%s didselect section: %{public}@", buf, 0x16u);
    }

    allDevices = [(WFBluetoothTriggerConfigurationViewController *)self allDevices];

    if (allDevices)
    {
      allDevices2 = [(WFBluetoothTriggerConfigurationViewController *)self allDevices];
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __83__WFBluetoothTriggerConfigurationViewController_tableView_didSelectRowAtIndexPath___block_invoke;
      v22[3] = &unk_279EE8028;
      v22[4] = self;
      v13 = [allDevices2 if_map:v22];

      trigger = [(WFTriggerConfigurationViewController *)self trigger];
      v15 = [trigger selection] == 0;

      v16 = [WFTriggerTableViewController alloc];
      v17 = WFLocalizedStringWithKey(@"Any Device (bluetooth trigger)", @"Any Device");
      v18 = WFLocalizedString(@"My Devices");
      v19 = [(WFTriggerTableViewController *)v16 initWithOptions:v13 anySelected:v15 nameOfAnyOption:v17 mainSectionTitle:v18];

      v20 = WFLocalizedString(@"Choose Devices");
      [(WFTriggerTableViewController *)v19 setTitle:v20];

      [(WFTriggerTableViewController *)v19 setDelegate:self];
      [(WFBluetoothTriggerConfigurationViewController *)self presentNavControllerWithRootViewController:v19];
    }

    else
    {
      v13 = getWFTriggersLogObject();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v24 = "[WFBluetoothTriggerConfigurationViewController tableView:didSelectRowAtIndexPath:]";
        _os_log_impl(&dword_274719000, v13, OS_LOG_TYPE_INFO, "%s no bluetooth devices loaded", buf, 0xCu);
      }
    }
  }

  [(WFTriggerConfigurationViewController *)self didSelectRowAtIndexPath:pathCopy withSectionInfo:v7];
  tableView = [(WFTriggerConfigurationViewController *)self tableView];
  [tableView reloadData];
}

WFSelectableListOption *__83__WFBluetoothTriggerConfigurationViewController_tableView_didSelectRowAtIndexPath___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[WFSelectableListOption alloc] initWithDisplayTitle:v3 value:v3];
  v5 = [*(a1 + 32) trigger];
  v6 = [v5 selectedDevices];
  v7 = [v6 containsObject:v3];

  [(WFSelectableListOption *)v4 setSelected:v7];

  return v4;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  v4 = [(WFBluetoothTriggerConfigurationViewController *)self infoForSection:section];
  v5 = [v4 objectForKeyedSubscript:@"sectionTitle"];

  return v5;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = -[WFBluetoothTriggerConfigurationViewController infoForSection:](self, "infoForSection:", [pathCopy section]);
  v9 = [v8 objectForKeyedSubscript:@"cellIdentifier"];
  v10 = [viewCopy dequeueReusableCellWithIdentifier:v9 forIndexPath:pathCopy];

  [v10 setAccessoryType:0];
  v11 = [v8 objectForKeyedSubscript:@"identifier"];
  v12 = [v11 isEqual:@"triggerDescription"];

  if (v12)
  {
    [v10 setTriggerTypeClass:objc_opt_class()];
    [v10 setSelectionStyle:0];
    goto LABEL_23;
  }

  v13 = [v8 objectForKeyedSubscript:@"identifier"];
  v14 = [v13 isEqual:@"chooseDevice"];

  if (v14)
  {
    v15 = v10;
    v16 = WFLocalizedString(@"Device");
    textLabel = [v15 textLabel];
    [textLabel setText:v16];

    trigger = [(WFTriggerConfigurationViewController *)self trigger];
    selection = [trigger selection];

    if (selection == 1)
    {
      trigger2 = [(WFTriggerConfigurationViewController *)self trigger];
      selectedDevices = [trigger2 selectedDevices];
      v27 = [selectedDevices count];

      if (v27)
      {
        trigger3 = [(WFTriggerConfigurationViewController *)self trigger];
        selectedDevices2 = [trigger3 selectedDevices];
        v30 = [selectedDevices2 count];

        if (v30 == 1)
        {
          trigger4 = [(WFTriggerConfigurationViewController *)self trigger];
          selectedDevices3 = [trigger4 selectedDevices];
          v33 = [selectedDevices3 objectAtIndex:0];
        }

        else
        {
          v42 = MEMORY[0x277CCACA8];
          trigger4 = WFLocalizedString(@"Any of %lu Devices");
          selectedDevices3 = [(WFTriggerConfigurationViewController *)self trigger];
          v32SelectedDevices = [selectedDevices3 selectedDevices];
          v33 = [v42 localizedStringWithFormat:trigger4, objc_msgSend(v32SelectedDevices, "count")];
        }

        goto LABEL_22;
      }

      v20 = @"Choose";
    }

    else
    {
      if (selection)
      {
        v33 = 0;
LABEL_22:
        detailTextLabel = [v15 detailTextLabel];
        [detailTextLabel setText:v33];

        goto LABEL_23;
      }

      v20 = @"Any Device";
    }

    v33 = WFLocalizedString(v20);
    goto LABEL_22;
  }

  v21 = [v8 objectForKeyedSubscript:@"identifier"];
  v22 = [v21 isEqual:@"connectOrDisconnect"];

  if (v22)
  {
    [v10 setSelectionStyle:0];
    v23 = v10;
    v50 = v9;
    if (v23)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v24 = v23;
      }

      else
      {
        v24 = 0;
      }
    }

    else
    {
      v24 = 0;
    }

    v54 = v24;

    trigger5 = [(WFTriggerConfigurationViewController *)self trigger];
    onIcon = [objc_opt_class() onIcon];
    trigger6 = [(WFTriggerConfigurationViewController *)self trigger];
    onLabel = [objc_opt_class() onLabel];
    trigger7 = [(WFTriggerConfigurationViewController *)self trigger];
    onIconTintColor = [objc_opt_class() onIconTintColor];
    trigger8 = [(WFTriggerConfigurationViewController *)self trigger];
    offIcon = [objc_opt_class() offIcon];
    trigger9 = [(WFTriggerConfigurationViewController *)self trigger];
    offLabel = [objc_opt_class() offLabel];
    trigger10 = [(WFTriggerConfigurationViewController *)self trigger];
    offIconTintColor = [objc_opt_class() offIconTintColor];
    [v54 configureWithLeftGlyph:onIcon leftTitle:onLabel leftTintColor:onIconTintColor rightGlyph:offIcon rightTitle:offLabel rightTintColor:offIconTintColor];

    trigger11 = [(WFTriggerConfigurationViewController *)self trigger];
    [v54 setLeftViewSelected:{objc_msgSend(trigger11, "onConnect")}];

    trigger12 = [(WFTriggerConfigurationViewController *)self trigger];
    [v54 setRightViewSelected:{objc_msgSend(trigger12, "onDisconnect")}];

    [v54 setDelegate:self];
    v9 = v50;
  }

LABEL_23:
  v45 = [(WFTriggerConfigurationViewController *)self configureAdditionalCellsIfNeeded:v10 indexPath:pathCopy sectionInfo:v8];

  return v45;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v5 = [(WFBluetoothTriggerConfigurationViewController *)self infoForSection:section];
  v6 = [(WFTriggerConfigurationViewController *)self numberOfRowsInSectionWithInfo:v5];

  return v6;
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  sections = [(WFTriggerConfigurationViewController *)self sections];
  v4 = [sections count];

  return v4;
}

- (id)infoForSection:(int64_t)section
{
  sections = [(WFTriggerConfigurationViewController *)self sections];
  v5 = [sections objectAtIndexedSubscript:section];

  return v5;
}

- (void)viewWillAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = WFBluetoothTriggerConfigurationViewController;
  [(WFBluetoothTriggerConfigurationViewController *)&v5 viewWillAppear:appear];
  tableView = [(WFTriggerConfigurationViewController *)self tableView];
  [tableView reloadData];
}

- (void)finishWithDevices:(id)devices
{
  array = [devices array];
  [(WFBluetoothTriggerConfigurationViewController *)self setAllDevices:array];
}

- (id)customSections
{
  v14[2] = *MEMORY[0x277D85DE8];
  v12[0] = @"identifier";
  v12[1] = @"cellIdentifier";
  v13[0] = @"chooseDevice";
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v13[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v14[0] = v4;
  v10[1] = @"cellIdentifier";
  v11[0] = @"connectOrDisconnect";
  v10[0] = @"identifier";
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v11[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
  v14[1] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];

  return v8;
}

- (id)tableViewCellClasses
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:&v6 count:3];
  v4 = [v2 setWithArray:{v3, v6, v7}];

  return v4;
}

- (WFBluetoothTriggerConfigurationViewController)initWithTrigger:(id)trigger mode:(unint64_t)mode
{
  triggerCopy = trigger;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFBluetoothTriggerConfigurationViewController.m" lineNumber:39 description:{@"Invalid parameter not satisfying: %@", @"[trigger isKindOfClass:[WFBluetoothTrigger class]]"}];
  }

  v16.receiver = self;
  v16.super_class = WFBluetoothTriggerConfigurationViewController;
  v8 = [(WFTriggerConfigurationViewController *)&v16 initWithTrigger:triggerCopy mode:mode];
  if (v8)
  {
    v9 = dispatch_get_global_queue(25, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __70__WFBluetoothTriggerConfigurationViewController_initWithTrigger_mode___block_invoke;
    block[3] = &unk_279EE8A78;
    v10 = v8;
    v15 = v10;
    dispatch_async(v9, block);

    v11 = v10;
  }

  return v8;
}

@end