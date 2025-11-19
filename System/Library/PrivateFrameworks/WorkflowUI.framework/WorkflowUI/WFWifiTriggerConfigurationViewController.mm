@interface WFWifiTriggerConfigurationViewController
- (WFWifiTriggerConfigurationViewController)initWithTrigger:(id)a3 mode:(unint64_t)a4;
- (id)customSections;
- (id)fetchWiFiNetworks;
- (id)infoForSection:(int64_t)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4;
- (id)tableViewCellClasses;
- (id)textForSummaryFooterView;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)cell:(id)a3 didSelectOptionWithLeftViewSelected:(BOOL)a4 rightViewSelected:(BOOL)a5;
- (void)connectionSwitchChanged:(id)a3;
- (void)presentNavControllerWithRootViewController:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)triggerTableViewController:(id)a3 didFinishWithAnySelected:(BOOL)a4 orSelectedOptions:(id)a5;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation WFWifiTriggerConfigurationViewController

- (void)cell:(id)a3 didSelectOptionWithLeftViewSelected:(BOOL)a4 rightViewSelected:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v8 = [(WFTriggerConfigurationViewController *)self trigger];
  [v8 setOnConnect:v6];

  v9 = [(WFTriggerConfigurationViewController *)self trigger];
  [v9 setOnDisconnect:v5];

  [(WFTriggerConfigurationViewController *)self updateNextButtonEnabledState];
  v10 = [(WFTriggerConfigurationViewController *)self tableView];
  [v10 reloadData];
}

- (void)triggerTableViewController:(id)a3 didFinishWithAnySelected:(BOOL)a4 orSelectedOptions:(id)a5
{
  v5 = a4;
  v14 = a5;
  v8 = a3;
  v9 = [(WFTriggerConfigurationViewController *)self trigger];
  v10 = v9;
  if (v5)
  {
    [v9 setSelection:0];

    v11 = [(WFTriggerConfigurationViewController *)self trigger];
    [v11 setSelectedNetworks:MEMORY[0x277CBEBF8]];
  }

  else
  {
    [v9 setSelection:1];

    v11 = [v14 if_map:&__block_literal_global_5482];
    v12 = [(WFTriggerConfigurationViewController *)self trigger];
    [v12 setSelectedNetworks:v11];
  }

  [v8 dismissViewControllerAnimated:1 completion:0];
  v13 = [(WFTriggerConfigurationViewController *)self tableView];
  [v13 reloadData];

  [(WFTriggerConfigurationViewController *)self updateNextButtonEnabledState];
}

- (void)presentNavControllerWithRootViewController:(id)a3
{
  v4 = MEMORY[0x277D757A0];
  v5 = a3;
  v6 = [[v4 alloc] initWithRootViewController:v5];

  [(WFWifiTriggerConfigurationViewController *)self presentViewController:v6 animated:1 completion:0];
}

- (id)textForSummaryFooterView
{
  v3 = [(WFTriggerConfigurationViewController *)self trigger];
  v4 = [v3 runAfterConnectionInterruption];

  v5 = [(WFTriggerConfigurationViewController *)self trigger];
  v6 = [v5 selection];

  if (!v6)
  {
    v15 = [MEMORY[0x277D79F18] currentDevice];
    v16 = [v15 hasCapability:*MEMORY[0x277D7A3F8]];

    if (v16)
    {
      if (v4)
      {
        v17 = @"If you reconnect to any WLAN network within 3 minutes of being disconnected, this automation will run again.";
      }

      else
      {
        v17 = @"If you reconnect to any WLAN network within 3 minutes of being disconnected, this automation will not run again.";
      }
    }

    else if (v4)
    {
      v17 = @"If you reconnect to any Wi-Fi network within 3 minutes of being disconnected, this automation will run again.";
    }

    else
    {
      v17 = @"If you reconnect to any Wi-Fi network within 3 minutes of being disconnected, this automation will not run again.";
    }

    goto LABEL_27;
  }

  v7 = [(WFTriggerConfigurationViewController *)self trigger];
  v8 = [v7 selectedNetworks];
  v9 = [v8 count];

  if (!v9)
  {
    v18 = [MEMORY[0x277D79F18] currentDevice];
    v19 = [v18 hasCapability:*MEMORY[0x277D7A3F8]];

    if (v19)
    {
      if (v4)
      {
        v17 = @"If you reconnect to a WLAN network within 3 minutes of being disconnected, this automation will run again.";
      }

      else
      {
        v17 = @"If you reconnect to a WLAN network within 3 minutes of being disconnected, this automation will not run again.";
      }
    }

    else if (v4)
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

  v10 = [(WFTriggerConfigurationViewController *)self trigger];
  v11 = [v10 selectedNetworks];
  v12 = [v11 count];

  if (v12 == 1)
  {
    v13 = MEMORY[0x277CCACA8];
    if (v4)
    {
      v14 = @"If you reconnect to “%@” within 3 minutes of being disconnected, this automation will run again.";
    }

    else
    {
      v14 = @"If you reconnect to “%@” within 3 minutes of being disconnected, this automation will not run again.";
    }

    v24 = WFLocalizedString(v14);
    v25 = [(WFTriggerConfigurationViewController *)self trigger];
    v26 = [v25 selectedNetworks];
    v27 = [v26 firstObject];
    v28 = [v13 localizedStringWithFormat:v24, v27];
  }

  else
  {
    v20 = [MEMORY[0x277D79F18] currentDevice];
    v21 = [v20 hasCapability:*MEMORY[0x277D7A3F8]];

    v22 = MEMORY[0x277CCACA8];
    if (v21)
    {
      if (v4)
      {
        v23 = @"If you reconnect to any of %lu WLAN networks within 3 minutes of being disconnected, these automations will run again.";
      }

      else
      {
        v23 = @"If you reconnect to any of %lu WLAN networks within 3 minutes of being disconnected, these automations will not run again.";
      }
    }

    else if (v4)
    {
      v23 = @"If you reconnect to any of %lu Wi-Fi networks within 3 minutes of being disconnected, these automations will run again.";
    }

    else
    {
      v23 = @"If you reconnect to any of %lu Wi-Fi networks within 3 minutes of being disconnected, these automations will not run again.";
    }

    v24 = WFLocalizedPluralString(v23);
    v25 = [(WFTriggerConfigurationViewController *)self trigger];
    v26 = [v25 selectedNetworks];
    v28 = [v22 localizedStringWithFormat:v24, objc_msgSend(v26, "count")];
  }

LABEL_32:

  return v28;
}

- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4
{
  v5 = [(WFWifiTriggerConfigurationViewController *)self infoForSection:a4];
  v6 = [v5 objectForKeyedSubscript:@"identifier"];
  v7 = [v6 isEqual:@"switchCell"];

  if (v7)
  {
    v8 = objc_opt_new();
    [v8 setHorizontalPadding:0.0];
    v9 = [(WFWifiTriggerConfigurationViewController *)self textForSummaryFooterView];
    [v8 setText:v9];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a4;
  [a3 deselectRowAtIndexPath:v6 animated:1];
  v7 = -[WFWifiTriggerConfigurationViewController infoForSection:](self, "infoForSection:", [v6 section]);
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

    v11 = [(WFWifiTriggerConfigurationViewController *)self allNetworks];

    if (v11)
    {
      v12 = [(WFWifiTriggerConfigurationViewController *)self allNetworks];
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __78__WFWifiTriggerConfigurationViewController_tableView_didSelectRowAtIndexPath___block_invoke;
      v21[3] = &unk_279EE8028;
      v21[4] = self;
      v13 = [v12 if_map:v21];

      v14 = [(WFTriggerConfigurationViewController *)self trigger];
      v15 = [v14 selection] == 0;

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

  [(WFTriggerConfigurationViewController *)self didSelectRowAtIndexPath:v6 withSectionInfo:v7];
  v20 = [(WFTriggerConfigurationViewController *)self tableView];
  [v20 reloadData];
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

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v4 = [(WFWifiTriggerConfigurationViewController *)self infoForSection:a4];
  v5 = [v4 objectForKeyedSubscript:@"sectionTitle"];

  return v5;
}

- (void)connectionSwitchChanged:(id)a3
{
  v4 = [a3 isOn];
  v5 = [(WFTriggerConfigurationViewController *)self trigger];
  [v5 setRunAfterConnectionInterruption:v4];

  v6 = [(WFTriggerConfigurationViewController *)self tableView];
  [v6 reloadData];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = -[WFWifiTriggerConfigurationViewController infoForSection:](self, "infoForSection:", [v6 section]);
  v9 = [v8 objectForKeyedSubscript:@"cellIdentifier"];
  v10 = [v7 dequeueReusableCellWithIdentifier:v9 forIndexPath:v6];

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
    v15 = v10;
    v16 = WFLocalizedString(@"Network");
    v17 = [v15 textLabel];
    [v17 setText:v16];

    v18 = [(WFTriggerConfigurationViewController *)self trigger];
    v19 = [v18 selection];

    if (v19 == 1)
    {
      v32 = [(WFTriggerConfigurationViewController *)self trigger];
      v33 = [v32 selectedNetworks];
      v34 = [v33 count];

      if (v34)
      {
        v35 = [(WFTriggerConfigurationViewController *)self trigger];
        v36 = [v35 selectedNetworks];
        v37 = [v36 count];

        if (v37 == 1)
        {
          v38 = [(WFTriggerConfigurationViewController *)self trigger];
          v39 = [v38 selectedNetworks];
          v40 = [v39 objectAtIndex:0];
        }

        else
        {
          v49 = MEMORY[0x277CCACA8];
          v38 = WFLocalizedString(@"Any of %lu Networks");
          v39 = [(WFTriggerConfigurationViewController *)self trigger];
          v50 = [v39 selectedNetworks];
          v40 = [v49 localizedStringWithFormat:v38, objc_msgSend(v50, "count")];
        }

        goto LABEL_27;
      }

      v20 = @"Choose";
    }

    else
    {
      if (v19)
      {
        v40 = 0;
LABEL_27:
        v51 = [v15 detailTextLabel];
        [v51 setText:v40];

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

    v60 = [(WFTriggerConfigurationViewController *)self trigger];
    v62 = [objc_opt_class() onIcon];
    v59 = [(WFTriggerConfigurationViewController *)self trigger];
    v41 = [objc_opt_class() onLabel];
    v58 = [(WFTriggerConfigurationViewController *)self trigger];
    v42 = [objc_opt_class() onIconTintColor];
    v57 = [(WFTriggerConfigurationViewController *)self trigger];
    v43 = [objc_opt_class() offIcon];
    v56 = [(WFTriggerConfigurationViewController *)self trigger];
    v44 = [objc_opt_class() offLabel];
    v45 = [(WFTriggerConfigurationViewController *)self trigger];
    v46 = [objc_opt_class() offIconTintColor];
    [v63 configureWithLeftGlyph:v62 leftTitle:v41 leftTintColor:v42 rightGlyph:v43 rightTitle:v44 rightTintColor:v46];

    v47 = [(WFTriggerConfigurationViewController *)self trigger];
    [v63 setLeftViewSelected:{objc_msgSend(v47, "onConnect")}];

    v48 = [(WFTriggerConfigurationViewController *)self trigger];
    [v63 setRightViewSelected:{objc_msgSend(v48, "onDisconnect")}];

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
    v28 = [v10 textLabel];
    [v28 setText:v27];

    v29 = [v10 textLabel];
    [v29 setNumberOfLines:2];

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

    v15 = [v54 switchControl];

    v55 = [(WFTriggerConfigurationViewController *)self trigger];
    [v15 setOn:{objc_msgSend(v55, "runAfterConnectionInterruption")}];

    [v15 addTarget:self action:sel_connectionSwitchChanged_ forControlEvents:4096];
    goto LABEL_28;
  }

LABEL_29:
  v52 = [(WFTriggerConfigurationViewController *)self configureAdditionalCellsIfNeeded:v10 indexPath:v6 sectionInfo:v8];

  return v52;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v5 = [(WFWifiTriggerConfigurationViewController *)self infoForSection:a4];
  v6 = [(WFTriggerConfigurationViewController *)self numberOfRowsInSectionWithInfo:v5];

  return v6;
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v3 = [(WFTriggerConfigurationViewController *)self sections];
  v4 = [v3 count];

  return v4;
}

- (id)infoForSection:(int64_t)a3
{
  v4 = [(WFTriggerConfigurationViewController *)self sections];
  v5 = [v4 objectAtIndexedSubscript:a3];

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

  v9 = [v2 array];
  v10 = [v9 sortedArrayUsingSelector:sel_localizedStandardCompare_];

  return v10;
}

- (void)viewWillAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = WFWifiTriggerConfigurationViewController;
  [(WFWifiTriggerConfigurationViewController *)&v6 viewWillAppear:a3];
  v4 = [(WFWifiTriggerConfigurationViewController *)self fetchWiFiNetworks];
  [(WFWifiTriggerConfigurationViewController *)self setAllNetworks:v4];

  v5 = [(WFTriggerConfigurationViewController *)self tableView];
  [v5 reloadData];
}

- (id)customSections
{
  v29[3] = *MEMORY[0x277D85DE8];
  v2 = [(WFTriggerConfigurationViewController *)self trigger];
  v3 = [v2 onConnect];

  if (v3)
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

- (WFWifiTriggerConfigurationViewController)initWithTrigger:(id)a3 mode:(unint64_t)a4
{
  v7 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v12 = [MEMORY[0x277CCA890] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"WFWifiTriggerConfigurationViewController.m" lineNumber:47 description:{@"Invalid parameter not satisfying: %@", @"[trigger isKindOfClass:[WFWifiTrigger class]]"}];
  }

  v13.receiver = self;
  v13.super_class = WFWifiTriggerConfigurationViewController;
  v8 = [(WFTriggerConfigurationViewController *)&v13 initWithTrigger:v7 mode:a4];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  return v9;
}

@end