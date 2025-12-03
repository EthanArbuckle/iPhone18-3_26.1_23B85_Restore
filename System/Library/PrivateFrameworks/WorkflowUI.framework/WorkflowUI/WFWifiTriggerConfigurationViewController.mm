@interface WFWifiTriggerConfigurationViewController
- (WFWifiTriggerConfigurationViewController)initWithTrigger:(id)trigger mode:(unint64_t)mode;
- (id)customSections;
- (id)fetchWiFiNetworks;
- (id)infoForSection:(int64_t)section;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (id)tableView:(id)view viewForFooterInSection:(int64_t)section;
- (id)tableViewCellClasses;
- (id)textForSummaryFooterView;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)cell:(id)cell didSelectOptionWithLeftViewSelected:(BOOL)selected rightViewSelected:(BOOL)viewSelected;
- (void)connectionSwitchChanged:(id)changed;
- (void)presentNavControllerWithRootViewController:(id)controller;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)triggerTableViewController:(id)controller didFinishWithAnySelected:(BOOL)selected orSelectedOptions:(id)options;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation WFWifiTriggerConfigurationViewController

- (void)cell:(id)cell didSelectOptionWithLeftViewSelected:(BOOL)selected rightViewSelected:(BOOL)viewSelected
{
  viewSelectedCopy = viewSelected;
  selectedCopy = selected;
  trigger = [(WFTriggerConfigurationViewController *)self trigger];
  [trigger setOnConnect:selectedCopy];

  trigger2 = [(WFTriggerConfigurationViewController *)self trigger];
  [trigger2 setOnDisconnect:viewSelectedCopy];

  [(WFTriggerConfigurationViewController *)self updateNextButtonEnabledState];
  tableView = [(WFTriggerConfigurationViewController *)self tableView];
  [tableView reloadData];
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
    [trigger2 setSelectedNetworks:MEMORY[0x277CBEBF8]];
  }

  else
  {
    [trigger setSelection:1];

    trigger2 = [optionsCopy if_map:&__block_literal_global_5482];
    trigger3 = [(WFTriggerConfigurationViewController *)self trigger];
    [trigger3 setSelectedNetworks:trigger2];
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

  [(WFWifiTriggerConfigurationViewController *)self presentViewController:v6 animated:1 completion:0];
}

- (id)textForSummaryFooterView
{
  trigger = [(WFTriggerConfigurationViewController *)self trigger];
  runAfterConnectionInterruption = [trigger runAfterConnectionInterruption];

  trigger2 = [(WFTriggerConfigurationViewController *)self trigger];
  selection = [trigger2 selection];

  if (!selection)
  {
    currentDevice = [MEMORY[0x277D79F18] currentDevice];
    v16 = [currentDevice hasCapability:*MEMORY[0x277D7A3F8]];

    if (v16)
    {
      if (runAfterConnectionInterruption)
      {
        v17 = @"If you reconnect to any WLAN network within 3 minutes of being disconnected, this automation will run again.";
      }

      else
      {
        v17 = @"If you reconnect to any WLAN network within 3 minutes of being disconnected, this automation will not run again.";
      }
    }

    else if (runAfterConnectionInterruption)
    {
      v17 = @"If you reconnect to any Wi-Fi network within 3 minutes of being disconnected, this automation will run again.";
    }

    else
    {
      v17 = @"If you reconnect to any Wi-Fi network within 3 minutes of being disconnected, this automation will not run again.";
    }

    goto LABEL_27;
  }

  trigger3 = [(WFTriggerConfigurationViewController *)self trigger];
  selectedNetworks = [trigger3 selectedNetworks];
  v9 = [selectedNetworks count];

  if (!v9)
  {
    currentDevice2 = [MEMORY[0x277D79F18] currentDevice];
    v19 = [currentDevice2 hasCapability:*MEMORY[0x277D7A3F8]];

    if (v19)
    {
      if (runAfterConnectionInterruption)
      {
        v17 = @"If you reconnect to a WLAN network within 3 minutes of being disconnected, this automation will run again.";
      }

      else
      {
        v17 = @"If you reconnect to a WLAN network within 3 minutes of being disconnected, this automation will not run again.";
      }
    }

    else if (runAfterConnectionInterruption)
    {
      v17 = @"If you reconnect to a Wi-Fi network within 3 minutes of being disconnected, this automation will run again.";
    }

    else
    {
      v17 = @"If you reconnect to a Wi-Fi network within 3 minutes of being disconnected, this automation will not run again.";
    }

LABEL_27:
    v28 = WFLocalizedString(v17);
    goto LABEL_32;
  }

  trigger4 = [(WFTriggerConfigurationViewController *)self trigger];
  selectedNetworks2 = [trigger4 selectedNetworks];
  v12 = [selectedNetworks2 count];

  if (v12 == 1)
  {
    v13 = MEMORY[0x277CCACA8];
    if (runAfterConnectionInterruption)
    {
      v14 = @"If you reconnect to “%@” within 3 minutes of being disconnected, this automation will run again.";
    }

    else
    {
      v14 = @"If you reconnect to “%@” within 3 minutes of being disconnected, this automation will not run again.";
    }

    v24 = WFLocalizedString(v14);
    trigger5 = [(WFTriggerConfigurationViewController *)self trigger];
    selectedNetworks3 = [trigger5 selectedNetworks];
    firstObject = [selectedNetworks3 firstObject];
    v28 = [v13 localizedStringWithFormat:v24, firstObject];
  }

  else
  {
    currentDevice3 = [MEMORY[0x277D79F18] currentDevice];
    v21 = [currentDevice3 hasCapability:*MEMORY[0x277D7A3F8]];

    v22 = MEMORY[0x277CCACA8];
    if (v21)
    {
      if (runAfterConnectionInterruption)
      {
        v23 = @"If you reconnect to any of %lu WLAN networks within 3 minutes of being disconnected, these automations will run again.";
      }

      else
      {
        v23 = @"If you reconnect to any of %lu WLAN networks within 3 minutes of being disconnected, these automations will not run again.";
      }
    }

    else if (runAfterConnectionInterruption)
    {
      v23 = @"If you reconnect to any of %lu Wi-Fi networks within 3 minutes of being disconnected, these automations will run again.";
    }

    else
    {
      v23 = @"If you reconnect to any of %lu Wi-Fi networks within 3 minutes of being disconnected, these automations will not run again.";
    }

    v24 = WFLocalizedPluralString(v23);
    trigger5 = [(WFTriggerConfigurationViewController *)self trigger];
    selectedNetworks3 = [trigger5 selectedNetworks];
    v28 = [v22 localizedStringWithFormat:v24, objc_msgSend(selectedNetworks3, "count")];
  }

LABEL_32:

  return v28;
}

- (id)tableView:(id)view viewForFooterInSection:(int64_t)section
{
  v5 = [(WFWifiTriggerConfigurationViewController *)self infoForSection:section];
  v6 = [v5 objectForKeyedSubscript:@"identifier"];
  v7 = [v6 isEqual:@"switchCell"];

  if (v7)
  {
    v8 = objc_opt_new();
    [v8 setHorizontalPadding:0.0];
    textForSummaryFooterView = [(WFWifiTriggerConfigurationViewController *)self textForSummaryFooterView];
    [v8 setText:textForSummaryFooterView];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v26 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  [view deselectRowAtIndexPath:pathCopy animated:1];
  v7 = -[WFWifiTriggerConfigurationViewController infoForSection:](self, "infoForSection:", [pathCopy section]);
  v8 = [v7 objectForKeyedSubscript:@"identifier"];
  v9 = [v8 isEqual:@"chooseNetwork"];

  if (v9)
  {
    v10 = getWFTriggersLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v23 = "[WFWifiTriggerConfigurationViewController tableView:didSelectRowAtIndexPath:]";
      v24 = 2114;
      v25 = v7;
      _os_log_impl(&dword_274719000, v10, OS_LOG_TYPE_DEBUG, "%s didselect section: %{public}@", buf, 0x16u);
    }

    allNetworks = [(WFWifiTriggerConfigurationViewController *)self allNetworks];

    if (allNetworks)
    {
      allNetworks2 = [(WFWifiTriggerConfigurationViewController *)self allNetworks];
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __78__WFWifiTriggerConfigurationViewController_tableView_didSelectRowAtIndexPath___block_invoke;
      v21[3] = &unk_279EE8028;
      v21[4] = self;
      v13 = [allNetworks2 if_map:v21];

      trigger = [(WFTriggerConfigurationViewController *)self trigger];
      v15 = [trigger selection] == 0;

      v16 = [WFTriggerTableViewController alloc];
      v17 = WFLocalizedString(@"Any Network");
      v18 = [(WFTriggerTableViewController *)v16 initWithOptions:v13 anySelected:v15 nameOfAnyOption:v17 mainSectionTitle:0];

      v19 = WFLocalizedString(@"Choose Networks");
      [(WFTriggerTableViewController *)v18 setTitle:v19];

      [(WFTriggerTableViewController *)v18 setDelegate:self];
      [(WFWifiTriggerConfigurationViewController *)self presentNavControllerWithRootViewController:v18];
    }

    else
    {
      v13 = getWFTriggersLogObject();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v23 = "[WFWifiTriggerConfigurationViewController tableView:didSelectRowAtIndexPath:]";
        _os_log_impl(&dword_274719000, v13, OS_LOG_TYPE_INFO, "%s no wifi networks loaded", buf, 0xCu);
      }
    }
  }

  [(WFTriggerConfigurationViewController *)self didSelectRowAtIndexPath:pathCopy withSectionInfo:v7];
  tableView = [(WFTriggerConfigurationViewController *)self tableView];
  [tableView reloadData];
}

WFSelectableListOption *__78__WFWifiTriggerConfigurationViewController_tableView_didSelectRowAtIndexPath___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[WFSelectableListOption alloc] initWithDisplayTitle:v3 value:v3];
  v5 = [*(a1 + 32) trigger];
  v6 = [v5 selectedNetworks];
  v7 = [v6 containsObject:v3];

  [(WFSelectableListOption *)v4 setSelected:v7];

  return v4;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  v4 = [(WFWifiTriggerConfigurationViewController *)self infoForSection:section];
  v5 = [v4 objectForKeyedSubscript:@"sectionTitle"];

  return v5;
}

- (void)connectionSwitchChanged:(id)changed
{
  isOn = [changed isOn];
  trigger = [(WFTriggerConfigurationViewController *)self trigger];
  [trigger setRunAfterConnectionInterruption:isOn];

  tableView = [(WFTriggerConfigurationViewController *)self tableView];
  [tableView reloadData];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = -[WFWifiTriggerConfigurationViewController infoForSection:](self, "infoForSection:", [pathCopy section]);
  v9 = [v8 objectForKeyedSubscript:@"cellIdentifier"];
  v10 = [viewCopy dequeueReusableCellWithIdentifier:v9 forIndexPath:pathCopy];

  [v10 setAccessoryType:0];
  v11 = [v8 objectForKeyedSubscript:@"identifier"];
  v12 = [v11 isEqualToString:@"triggerDescription"];

  if (v12)
  {
    [v10 setTriggerTypeClass:objc_opt_class()];
    [v10 setSelectionStyle:0];
    goto LABEL_29;
  }

  v13 = [v8 objectForKeyedSubscript:@"identifier"];
  v14 = [v13 isEqualToString:@"chooseNetwork"];

  if (v14)
  {
    switchControl = v10;
    v16 = WFLocalizedString(@"Network");
    textLabel = [switchControl textLabel];
    [textLabel setText:v16];

    trigger = [(WFTriggerConfigurationViewController *)self trigger];
    selection = [trigger selection];

    if (selection == 1)
    {
      trigger2 = [(WFTriggerConfigurationViewController *)self trigger];
      selectedNetworks = [trigger2 selectedNetworks];
      v34 = [selectedNetworks count];

      if (v34)
      {
        trigger3 = [(WFTriggerConfigurationViewController *)self trigger];
        selectedNetworks2 = [trigger3 selectedNetworks];
        v37 = [selectedNetworks2 count];

        if (v37 == 1)
        {
          trigger4 = [(WFTriggerConfigurationViewController *)self trigger];
          selectedNetworks3 = [trigger4 selectedNetworks];
          v40 = [selectedNetworks3 objectAtIndex:0];
        }

        else
        {
          v49 = MEMORY[0x277CCACA8];
          trigger4 = WFLocalizedString(@"Any of %lu Networks");
          selectedNetworks3 = [(WFTriggerConfigurationViewController *)self trigger];
          v39SelectedNetworks = [selectedNetworks3 selectedNetworks];
          v40 = [v49 localizedStringWithFormat:trigger4, objc_msgSend(v39SelectedNetworks, "count")];
        }

        goto LABEL_27;
      }

      v20 = @"Choose";
    }

    else
    {
      if (selection)
      {
        v40 = 0;
LABEL_27:
        detailTextLabel = [switchControl detailTextLabel];
        [detailTextLabel setText:v40];

LABEL_28:
        goto LABEL_29;
      }

      v20 = @"Any Network";
    }

    v40 = WFLocalizedString(v20);
    goto LABEL_27;
  }

  v21 = [v8 objectForKeyedSubscript:@"identifier"];
  v22 = [v21 isEqualToString:@"connectOrDisconnect"];

  if (v22)
  {
    [v10 setSelectionStyle:0];
    v23 = v10;
    v61 = v9;
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

    v63 = v24;

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
    [v63 configureWithLeftGlyph:onIcon leftTitle:onLabel leftTintColor:onIconTintColor rightGlyph:offIcon rightTitle:offLabel rightTintColor:offIconTintColor];

    trigger11 = [(WFTriggerConfigurationViewController *)self trigger];
    [v63 setLeftViewSelected:{objc_msgSend(trigger11, "onConnect")}];

    trigger12 = [(WFTriggerConfigurationViewController *)self trigger];
    [v63 setRightViewSelected:{objc_msgSend(trigger12, "onDisconnect")}];

    [v63 setSingleSelection:1];
    [v63 setDelegate:self];

    v9 = v61;
    goto LABEL_29;
  }

  v25 = [v8 objectForKeyedSubscript:@"identifier"];
  v26 = [v25 isEqualToString:@"switchCell"];

  if (v26)
  {
    [v10 setSelectionStyle:0];
    v27 = WFLocalizedString(@"Run After Connection Interruption");
    textLabel2 = [v10 textLabel];
    [textLabel2 setText:v27];

    textLabel3 = [v10 textLabel];
    [textLabel3 setNumberOfLines:2];

    v30 = v10;
    if (v30)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v31 = v30;
      }

      else
      {
        v31 = 0;
      }
    }

    else
    {
      v31 = 0;
    }

    v54 = v31;

    switchControl = [v54 switchControl];

    trigger13 = [(WFTriggerConfigurationViewController *)self trigger];
    [switchControl setOn:{objc_msgSend(trigger13, "runAfterConnectionInterruption")}];

    [switchControl addTarget:self action:sel_connectionSwitchChanged_ forControlEvents:4096];
    goto LABEL_28;
  }

LABEL_29:
  v52 = [(WFTriggerConfigurationViewController *)self configureAdditionalCellsIfNeeded:v10 indexPath:pathCopy sectionInfo:v8];

  return v52;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v5 = [(WFWifiTriggerConfigurationViewController *)self infoForSection:section];
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

- (id)fetchWiFiNetworks
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB40]);
  v3 = WiFiManagerClientCreate();
  if (v3)
  {
    v4 = v3;
    v5 = WiFiManagerClientCopyNetworks();
    v6 = 0;
    if (!v5)
    {
      goto LABEL_4;
    }

LABEL_3:
    for (i = [v5 count]; v6 < i; i = 0)
    {
      [v5 objectAtIndex:v6];
      v8 = WiFiNetworkGetSSID();
      [v2 addObject:v8];

      ++v6;
      if (v5)
      {
        goto LABEL_3;
      }

LABEL_4:
      ;
    }

    CFRelease(v4);
  }

  array = [v2 array];
  v10 = [array sortedArrayUsingSelector:sel_localizedStandardCompare_];

  return v10;
}

- (void)viewWillAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = WFWifiTriggerConfigurationViewController;
  [(WFWifiTriggerConfigurationViewController *)&v6 viewWillAppear:appear];
  fetchWiFiNetworks = [(WFWifiTriggerConfigurationViewController *)self fetchWiFiNetworks];
  [(WFWifiTriggerConfigurationViewController *)self setAllNetworks:fetchWiFiNetworks];

  tableView = [(WFTriggerConfigurationViewController *)self tableView];
  [tableView reloadData];
}

- (id)customSections
{
  v29[3] = *MEMORY[0x277D85DE8];
  trigger = [(WFTriggerConfigurationViewController *)self trigger];
  onConnect = [trigger onConnect];

  if (onConnect)
  {
    v27[0] = @"identifier";
    v27[1] = @"cellIdentifier";
    v28[0] = @"chooseNetwork";
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v28[1] = v5;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:2];
    v29[0] = v6;
    v25[1] = @"cellIdentifier";
    v26[0] = @"connectOrDisconnect";
    v25[0] = @"identifier";
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v26[1] = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:2];
    v29[1] = v9;
    v23[1] = @"cellIdentifier";
    v24[0] = @"switchCell";
    v23[0] = @"identifier";
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v24[1] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:2];
    v29[2] = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:3];
  }

  else
  {
    v20[0] = @"identifier";
    v20[1] = @"cellIdentifier";
    v21[0] = @"chooseNetwork";
    v14 = objc_opt_class();
    v5 = NSStringFromClass(v14);
    v21[1] = v5;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];
    v22[0] = v6;
    v18 = @"cellIdentifier";
    v19[0] = @"connectOrDisconnect";
    v17 = @"identifier";
    v15 = objc_opt_class();
    v8 = NSStringFromClass(v15);
    v19[1] = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v17 count:2];
    v22[1] = v9;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:{2, v17, v18, v19[0]}];
  }

  return v13;
}

- (id)tableViewCellClasses
{
  v6[4] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v6[0] = objc_opt_class();
  v6[1] = objc_opt_class();
  v6[2] = objc_opt_class();
  v6[3] = objc_opt_class();
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:4];
  v4 = [v2 setWithArray:v3];

  return v4;
}

- (WFWifiTriggerConfigurationViewController)initWithTrigger:(id)trigger mode:(unint64_t)mode
{
  triggerCopy = trigger;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFWifiTriggerConfigurationViewController.m" lineNumber:47 description:{@"Invalid parameter not satisfying: %@", @"[trigger isKindOfClass:[WFWifiTrigger class]]"}];
  }

  v13.receiver = self;
  v13.super_class = WFWifiTriggerConfigurationViewController;
  v8 = [(WFTriggerConfigurationViewController *)&v13 initWithTrigger:triggerCopy mode:mode];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  return v9;
}

@end