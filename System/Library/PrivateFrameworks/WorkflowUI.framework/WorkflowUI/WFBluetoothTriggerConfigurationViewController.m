@interface WFBluetoothTriggerConfigurationViewController
- (WFBluetoothTriggerConfigurationViewController)initWithTrigger:(id)a3 mode:(unint64_t)a4;
- (id)customSections;
- (id)infoForSection:(int64_t)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (id)tableViewCellClasses;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)cell:(id)a3 didSelectOptionWithLeftViewSelected:(BOOL)a4 rightViewSelected:(BOOL)a5;
- (void)finishWithDevices:(id)a3;
- (void)presentNavControllerWithRootViewController:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)triggerTableViewController:(id)a3 didFinishWithAnySelected:(BOOL)a4 orSelectedOptions:(id)a5;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation WFBluetoothTriggerConfigurationViewController

- (void)cell:(id)a3 didSelectOptionWithLeftViewSelected:(BOOL)a4 rightViewSelected:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v8 = [(WFTriggerConfigurationViewController *)self trigger];
  [v8 setOnConnect:v6];

  v9 = [(WFTriggerConfigurationViewController *)self trigger];
  [v9 setOnDisconnect:v5];

  [(WFTriggerConfigurationViewController *)self updateNextButtonEnabledState];
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
    [v11 setSelectedDevices:MEMORY[0x277CBEBF8]];
  }

  else
  {
    [v9 setSelection:1];

    v11 = [v14 if_map:&__block_literal_global_13371];
    v12 = [(WFTriggerConfigurationViewController *)self trigger];
    [v12 setSelectedDevices:v11];
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

  [(WFBluetoothTriggerConfigurationViewController *)self presentViewController:v6 animated:1 completion:0];
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a4;
  [a3 deselectRowAtIndexPath:v6 animated:1];
  v7 = -[WFBluetoothTriggerConfigurationViewController infoForSection:](self, "infoForSection:", [v6 section]);
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

    v11 = [(WFBluetoothTriggerConfigurationViewController *)self allDevices];

    if (v11)
    {
      v12 = [(WFBluetoothTriggerConfigurationViewController *)self allDevices];
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __83__WFBluetoothTriggerConfigurationViewController_tableView_didSelectRowAtIndexPath___block_invoke;
      v22[3] = &unk_279EE8028;
      v22[4] = self;
      v13 = [v12 if_map:v22];

      v14 = [(WFTriggerConfigurationViewController *)self trigger];
      v15 = [v14 selection] == 0;

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

  [(WFTriggerConfigurationViewController *)self didSelectRowAtIndexPath:v6 withSectionInfo:v7];
  v21 = [(WFTriggerConfigurationViewController *)self tableView];
  [v21 reloadData];
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

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v4 = [(WFBluetoothTriggerConfigurationViewController *)self infoForSection:a4];
  v5 = [v4 objectForKeyedSubscript:@"sectionTitle"];

  return v5;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = -[WFBluetoothTriggerConfigurationViewController infoForSection:](self, "infoForSection:", [v6 section]);
  v9 = [v8 objectForKeyedSubscript:@"cellIdentifier"];
  v10 = [v7 dequeueReusableCellWithIdentifier:v9 forIndexPath:v6];

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
    v17 = [v15 textLabel];
    [v17 setText:v16];

    v18 = [(WFTriggerConfigurationViewController *)self trigger];
    v19 = [v18 selection];

    if (v19 == 1)
    {
      v25 = [(WFTriggerConfigurationViewController *)self trigger];
      v26 = [v25 selectedDevices];
      v27 = [v26 count];

      if (v27)
      {
        v28 = [(WFTriggerConfigurationViewController *)self trigger];
        v29 = [v28 selectedDevices];
        v30 = [v29 count];

        if (v30 == 1)
        {
          v31 = [(WFTriggerConfigurationViewController *)self trigger];
          v32 = [v31 selectedDevices];
          v33 = [v32 objectAtIndex:0];
        }

        else
        {
          v42 = MEMORY[0x277CCACA8];
          v31 = WFLocalizedString(@"Any of %lu Devices");
          v32 = [(WFTriggerConfigurationViewController *)self trigger];
          v43 = [v32 selectedDevices];
          v33 = [v42 localizedStringWithFormat:v31, objc_msgSend(v43, "count")];
        }

        goto LABEL_22;
      }

      v20 = @"Choose";
    }

    else
    {
      if (v19)
      {
        v33 = 0;
LABEL_22:
        v44 = [v15 detailTextLabel];
        [v44 setText:v33];

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

    v52 = [(WFTriggerConfigurationViewController *)self trigger];
    v53 = [objc_opt_class() onIcon];
    v51 = [(WFTriggerConfigurationViewController *)self trigger];
    v34 = [objc_opt_class() onLabel];
    v49 = [(WFTriggerConfigurationViewController *)self trigger];
    v35 = [objc_opt_class() onIconTintColor];
    v48 = [(WFTriggerConfigurationViewController *)self trigger];
    v36 = [objc_opt_class() offIcon];
    v47 = [(WFTriggerConfigurationViewController *)self trigger];
    v37 = [objc_opt_class() offLabel];
    v38 = [(WFTriggerConfigurationViewController *)self trigger];
    v39 = [objc_opt_class() offIconTintColor];
    [v54 configureWithLeftGlyph:v53 leftTitle:v34 leftTintColor:v35 rightGlyph:v36 rightTitle:v37 rightTintColor:v39];

    v40 = [(WFTriggerConfigurationViewController *)self trigger];
    [v54 setLeftViewSelected:{objc_msgSend(v40, "onConnect")}];

    v41 = [(WFTriggerConfigurationViewController *)self trigger];
    [v54 setRightViewSelected:{objc_msgSend(v41, "onDisconnect")}];

    [v54 setDelegate:self];
    v9 = v50;
  }

LABEL_23:
  v45 = [(WFTriggerConfigurationViewController *)self configureAdditionalCellsIfNeeded:v10 indexPath:v6 sectionInfo:v8];

  return v45;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v5 = [(WFBluetoothTriggerConfigurationViewController *)self infoForSection:a4];
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

- (void)viewWillAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = WFBluetoothTriggerConfigurationViewController;
  [(WFBluetoothTriggerConfigurationViewController *)&v5 viewWillAppear:a3];
  v4 = [(WFTriggerConfigurationViewController *)self tableView];
  [v4 reloadData];
}

- (void)finishWithDevices:(id)a3
{
  v4 = [a3 array];
  [(WFBluetoothTriggerConfigurationViewController *)self setAllDevices:v4];
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

- (WFBluetoothTriggerConfigurationViewController)initWithTrigger:(id)a3 mode:(unint64_t)a4
{
  v7 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v13 = [MEMORY[0x277CCA890] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"WFBluetoothTriggerConfigurationViewController.m" lineNumber:39 description:{@"Invalid parameter not satisfying: %@", @"[trigger isKindOfClass:[WFBluetoothTrigger class]]"}];
  }

  v16.receiver = self;
  v16.super_class = WFBluetoothTriggerConfigurationViewController;
  v8 = [(WFTriggerConfigurationViewController *)&v16 initWithTrigger:v7 mode:a4];
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