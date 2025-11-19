@interface WFTriggerConfigurationViewController
+ (Class)viewControllerClassForTriggerClass:(Class)a3;
- (WFTriggerConfigurationViewController)initWithTrigger:(id)a3 mode:(unint64_t)a4;
- (WFTriggerConfigurationViewControllerDelegate)delegate;
- (id)configureAdditionalCellsIfNeeded:(id)a3 indexPath:(id)a4 sectionInfo:(id)a5;
- (id)customSections;
- (id)sections;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (id)tableViewCellClasses;
- (int64_t)numberOfRowsInSectionWithInfo:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)cancel;
- (void)didSelectRowAtIndexPath:(id)a3 withSectionInfo:(id)a4;
- (void)dismiss:(id)a3;
- (void)finish;
- (void)loadView;
- (void)notifySwitchChanged:(id)a3;
- (void)recurSwitchChanged:(id)a3;
- (void)updateNextButtonEnabledState;
- (void)viewDidLoad;
@end

@implementation WFTriggerConfigurationViewController

- (WFTriggerConfigurationViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = a3;
  result = [MEMORY[0x277CBEAD8] raise:@"Subclass must override" format:@"Subclasses must override [WFTriggerConfigurationViewController tableView:numberOfRowsInSection:]"];
  __break(1u);
  return result;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v5 = a3;
  v6 = a4;
  result = [MEMORY[0x277CBEAD8] raise:@"Subclass must override" format:@"Subclasses must override [WFTriggerConfigurationViewController tableView:cellForRowAtIndexPath:]"];
  __break(1u);
  return result;
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  if (a4)
  {
    v4 = 0;
  }

  else
  {
    v5 = [(WFTriggerConfigurationViewController *)self tableViewHeaderString];
    v4 = WFAutomationTableSectionHeaderViewWithTitle(v5);
  }

  return v4;
}

- (void)finish
{
  v3 = [(WFTriggerConfigurationViewController *)self trigger];
  v4 = [v3 hasValidConfiguration];

  if (v4)
  {
    v6 = [(WFTriggerConfigurationViewController *)self delegate];
    v5 = [(WFTriggerConfigurationViewController *)self trigger];
    [v6 triggerConfigurationViewController:self didFinishWithTrigger:v5];
  }
}

- (void)cancel
{
  v4 = [(WFTriggerConfigurationViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if ((v5 & 1) == 0)
  {
    v8 = [MEMORY[0x277CCA890] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"WFTriggerConfigurationViewController.m" lineNumber:228 description:@"Tried to cancel WFTriggerConfigurationViewController but missing delegate with cancel implementation"];
  }

  v6 = [(WFTriggerConfigurationViewController *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v9 = [(WFTriggerConfigurationViewController *)self delegate];
    [v9 triggerConfigurationViewControllerDidCancel:self];
  }
}

- (void)recurSwitchChanged:(id)a3
{
  v4 = [a3 isOn];

  [(WFTriggerConfigurationViewController *)self setShouldRecur:v4];
}

- (void)notifySwitchChanged:(id)a3
{
  v4 = [a3 isOn];

  [(WFTriggerConfigurationViewController *)self setShouldNotify:v4];
}

- (id)customSections
{
  result = [MEMORY[0x277CBEAD8] raise:@"Subclass must override" format:@"Subclasses must override custom sections"];
  __break(1u);
  return result;
}

- (id)tableViewCellClasses
{
  result = [MEMORY[0x277CBEAD8] raise:@"Subclass must override" format:@"Subclasses must override tableViewCellClasses"];
  __break(1u);
  return result;
}

- (id)sections
{
  v30[2] = *MEMORY[0x277D85DE8];
  v3 = [(WFTriggerConfigurationViewController *)self customSections];
  v4 = [v3 mutableCopy];

  v5 = [(WFTriggerConfigurationViewController *)self trigger];
  v6 = [objc_opt_class() isAllowedToRunAutomatically];

  if (v6)
  {
    v7 = objc_alloc(MEMORY[0x277CBEB18]);
    v8 = WFLocalizedString(@"Run After Confirmation");
    v30[0] = v8;
    v9 = WFLocalizedString(@"Run Immediately");
    v30[1] = v9;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:2];
    v11 = [v7 initWithArray:v10];

    if ([(WFTriggerConfigurationViewController *)self runImmediately])
    {
      v12 = [(WFTriggerConfigurationViewController *)self trigger];
      v13 = [objc_opt_class() requiresNotification];

      if ((v13 & 1) == 0)
      {
        v14 = WFLocalizedString(@"Notify When Run");
        [v11 addObject:v14];
      }
    }

    v29[0] = @"runImmediately";
    v28[0] = @"identifier";
    v28[1] = @"cellIdentifier";
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    v28[2] = @"items";
    v29[1] = v16;
    v29[2] = v11;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:3];
    [v4 addObject:v17];

    if (_os_feature_enabled_impl())
    {
      v27[0] = @"runRepeatedly";
      v26[0] = @"identifier";
      v26[1] = @"cellIdentifier";
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      v27[1] = v19;
      v26[2] = @"items";
      v20 = WFLocalizedString(@"Run Just Once");
      v25[0] = v20;
      v21 = WFLocalizedString(@"Run Every Time");
      v25[1] = v21;
      v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];
      v27[2] = v22;
      v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:3];
      [v4 addObject:v23];
    }
  }

  return v4;
}

- (int64_t)numberOfRowsInSectionWithInfo:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"identifier"];
  v5 = [v4 isEqualToString:@"runImmediately"];

  if (v5 || ([v3 objectForKeyedSubscript:@"identifier"], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "isEqualToString:", @"runRepeatedly"), v8, v9) && _os_feature_enabled_impl())
  {
    v6 = [v3 objectForKeyedSubscript:@"items"];
    if (v6)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = v6;
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }

    v11 = v7;

    v10 = [v11 count];
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

- (void)didSelectRowAtIndexPath:(id)a3 withSectionInfo:(id)a4
{
  v16 = a3;
  v6 = a4;
  v7 = [v6 objectForKeyedSubscript:@"identifier"];
  v8 = [v7 isEqualToString:@"runImmediately"];

  if (v8)
  {
    if ([v16 row])
    {
      v9 = self;
      v10 = 1;
    }

    else
    {
      v9 = self;
      v10 = 0;
    }

    [(WFTriggerConfigurationViewController *)v9 setRunImmediately:v10];
LABEL_10:
    v15 = [(WFTriggerConfigurationViewController *)self tableView];
    [v15 reloadData];

    goto LABEL_11;
  }

  v11 = [v6 objectForKeyedSubscript:@"identifier"];
  v12 = [v11 isEqualToString:@"runRepeatedly"];

  if (v12 && _os_feature_enabled_impl())
  {
    if ([v16 row])
    {
      v13 = self;
      v14 = 1;
    }

    else
    {
      v13 = self;
      v14 = 0;
    }

    [(WFTriggerConfigurationViewController *)v13 setShouldRecur:v14];
    goto LABEL_10;
  }

LABEL_11:
}

- (id)configureAdditionalCellsIfNeeded:(id)a3 indexPath:(id)a4 sectionInfo:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v9)
  {
    v34 = [MEMORY[0x277CCA890] currentHandler];
    [v34 handleFailureInMethod:a2 object:self file:@"WFTriggerConfigurationViewController.m" lineNumber:103 description:@"No cell provided for configuing run immediately"];
  }

  v12 = [v11 objectForKeyedSubscript:@"identifier"];
  v13 = [v12 isEqualToString:@"runImmediately"];

  if (!v13)
  {
    v17 = [v11 objectForKeyedSubscript:@"identifier"];
    v18 = [v17 isEqualToString:@"runRepeatedly"];

    if (!v18 || !_os_feature_enabled_impl())
    {
      goto LABEL_22;
    }

    v19 = [v11 objectForKeyedSubscript:@"items"];
    v20 = [v19 objectAtIndexedSubscript:{objc_msgSend(v10, "row")}];
    v21 = [v9 textLabel];
    [v21 setText:v20];

    [v9 setAccessoryType:0];
    if (([v10 row] || -[WFTriggerConfigurationViewController shouldRecur](self, "shouldRecur")) && (objc_msgSend(v10, "row") != 1 || !-[WFTriggerConfigurationViewController shouldRecur](self, "shouldRecur")))
    {
      goto LABEL_22;
    }

    goto LABEL_8;
  }

  v14 = [v11 objectForKeyedSubscript:@"items"];
  v15 = [v14 objectAtIndexedSubscript:{objc_msgSend(v10, "row")}];
  v16 = [v9 textLabel];
  [v16 setText:v15];

  [v9 setAccessoryType:0];
  if (![v10 row] && !-[WFTriggerConfigurationViewController runImmediately](self, "runImmediately") || objc_msgSend(v10, "row") == 1 && -[WFTriggerConfigurationViewController runImmediately](self, "runImmediately"))
  {
LABEL_8:
    [v9 setAccessoryType:3];
    goto LABEL_22;
  }

  if ([v10 row] == 2 && -[WFTriggerConfigurationViewController runImmediately](self, "runImmediately"))
  {
    v22 = [(WFTriggerConfigurationViewController *)self tableView];
    v23 = objc_opt_class();
    v24 = NSStringFromClass(v23);
    v25 = [v22 dequeueReusableCellWithIdentifier:v24 forIndexPath:v10];

    [v25 setSelectionStyle:0];
    v26 = [v11 objectForKeyedSubscript:@"items"];
    v27 = [v26 objectAtIndexedSubscript:{objc_msgSend(v10, "row")}];
    v28 = [v25 textLabel];
    [v28 setText:v27];

    v29 = v25;
    if (v29)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v30 = v29;
      }

      else
      {
        v30 = 0;
      }
    }

    else
    {
      v30 = 0;
    }

    v32 = v30;

    v33 = [v32 switchControl];

    [v33 setOn:{-[WFTriggerConfigurationViewController shouldNotify](self, "shouldNotify")}];
    [v33 addTarget:self action:sel_notifySwitchChanged_ forControlEvents:4096];

    goto LABEL_23;
  }

LABEL_22:
  v29 = v9;
LABEL_23:

  return v29;
}

- (void)dismiss:(id)a3
{
  v4 = [(WFTriggerConfigurationViewController *)self navigationController];
  v3 = [v4 popViewControllerAnimated:1];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = WFTriggerConfigurationViewController;
  [(WFTriggerConfigurationViewController *)&v3 viewDidLoad];
  [(WFTriggerConfigurationViewController *)self updateNextButtonEnabledState];
}

- (void)updateNextButtonEnabledState
{
  v3 = [(WFTriggerConfigurationViewController *)self trigger];
  v4 = [v3 hasValidConfiguration];

  v5 = [(WFTriggerConfigurationViewController *)self navigationItem];
  v6 = [v5 rightBarButtonItem];
  [v6 setEnabled:v4];

  if ([(WFTriggerConfigurationViewController *)self mode])
  {
    v7 = [(WFTriggerConfigurationViewController *)self navigationItem];
    [v7 setHidesBackButton:v4 ^ 1];
  }
}

- (void)loadView
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D75B40]);
  v4 = [v3 initWithFrame:2 style:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  v5 = [MEMORY[0x277D75348] systemGroupedBackgroundColor];
  [(UITableView *)v4 setBackgroundColor:v5];

  [(UITableView *)v4 setDataSource:self];
  [(UITableView *)v4 setDelegate:self];
  [(UITableView *)v4 setRowHeight:*MEMORY[0x277D76F30]];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = [(WFTriggerConfigurationViewController *)self tableViewCellClasses];
  v24[0] = objc_opt_class();
  v24[1] = objc_opt_class();
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
  v8 = [v6 setByAddingObjectsFromArray:v7];

  v9 = [v8 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        v14 = NSStringFromClass(v13);
        [(UITableView *)v4 registerClass:v13 forCellReuseIdentifier:v14];
      }

      v10 = [v8 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v10);
  }

  v15 = objc_opt_class();
  v16 = objc_opt_class();
  v17 = NSStringFromClass(v16);
  [(UITableView *)v4 registerClass:v15 forHeaderFooterViewReuseIdentifier:v17];

  tableView = self->_tableView;
  self->_tableView = v4;
  v19 = v4;

  [(WFTriggerConfigurationViewController *)self setView:v19];
}

- (WFTriggerConfigurationViewController)initWithTrigger:(id)a3 mode:(unint64_t)a4
{
  v7 = a3;
  v20.receiver = self;
  v20.super_class = WFTriggerConfigurationViewController;
  v8 = [(WFTriggerConfigurationViewController *)&v20 initWithNibName:0 bundle:0];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_trigger, a3);
    v9->_mode = a4;
    if (a4)
    {
      v10 = objc_opt_class();
      v11 = [MEMORY[0x277D7A048] defaultContext];
      v12 = [v10 localizedDisplayNameWithContext:v11];
      [(WFTriggerConfigurationViewController *)v9 setTitle:v12];

      v13 = @"Done";
    }

    else
    {
      v13 = @"Next";
    }

    v14 = objc_alloc(MEMORY[0x277D751E0]);
    v15 = WFLocalizedString(v13);
    v16 = [v14 initWithTitle:v15 style:2 target:v9 action:sel_finish];
    v17 = [(WFTriggerConfigurationViewController *)v9 navigationItem];
    [v17 setRightBarButtonItem:v16];

    [(WFTriggerConfigurationViewController *)v9 updateNextButtonEnabledState];
    v18 = v9;
  }

  return v9;
}

+ (Class)viewControllerClassForTriggerClass:(Class)a3
{
  v3 = a3;
  if (([(objc_class *)a3 isSubclassOfClass:objc_opt_class()]& 1) != 0)
  {
    goto LABEL_4;
  }

  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a2 object:a1 file:@"WFTriggerConfigurationViewController.m" lineNumber:241 description:{@"Invalid parameter not satisfying: %@", @"[triggerClass isSubclassOfClass:[WFTrigger class]]"}];
  while (1)
  {

LABEL_4:
    if (v3 == objc_opt_class())
    {
      v10 = 0;
      goto LABEL_10;
    }

    v7 = NSStringFromClass(v3);
    v6 = [v7 stringByAppendingString:@"ConfigurationViewController"];

    v8 = NSClassFromString(v6);
    if (v8)
    {
      v9 = v8;
      if ([(objc_class *)v8 isSubclassOfClass:a1])
      {
        break;
      }
    }

    v3 = [(objc_class *)v3 superclass];
  }

  v10 = v9;

LABEL_10:

  return v10;
}

@end