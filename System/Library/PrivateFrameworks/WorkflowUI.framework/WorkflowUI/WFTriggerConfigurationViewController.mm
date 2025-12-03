@interface WFTriggerConfigurationViewController
+ (Class)viewControllerClassForTriggerClass:(Class)class;
- (WFTriggerConfigurationViewController)initWithTrigger:(id)trigger mode:(unint64_t)mode;
- (WFTriggerConfigurationViewControllerDelegate)delegate;
- (id)configureAdditionalCellsIfNeeded:(id)needed indexPath:(id)path sectionInfo:(id)info;
- (id)customSections;
- (id)sections;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (id)tableViewCellClasses;
- (int64_t)numberOfRowsInSectionWithInfo:(id)info;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)cancel;
- (void)didSelectRowAtIndexPath:(id)path withSectionInfo:(id)info;
- (void)dismiss:(id)dismiss;
- (void)finish;
- (void)loadView;
- (void)notifySwitchChanged:(id)changed;
- (void)recurSwitchChanged:(id)changed;
- (void)updateNextButtonEnabledState;
- (void)viewDidLoad;
@end

@implementation WFTriggerConfigurationViewController

- (WFTriggerConfigurationViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  viewCopy = view;
  result = [MEMORY[0x277CBEAD8] raise:@"Subclass must override" format:@"Subclasses must override [WFTriggerConfigurationViewController tableView:numberOfRowsInSection:]"];
  __break(1u);
  return result;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  result = [MEMORY[0x277CBEAD8] raise:@"Subclass must override" format:@"Subclasses must override [WFTriggerConfigurationViewController tableView:cellForRowAtIndexPath:]"];
  __break(1u);
  return result;
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  if (section)
  {
    v4 = 0;
  }

  else
  {
    tableViewHeaderString = [(WFTriggerConfigurationViewController *)self tableViewHeaderString];
    v4 = WFAutomationTableSectionHeaderViewWithTitle(tableViewHeaderString);
  }

  return v4;
}

- (void)finish
{
  trigger = [(WFTriggerConfigurationViewController *)self trigger];
  hasValidConfiguration = [trigger hasValidConfiguration];

  if (hasValidConfiguration)
  {
    delegate = [(WFTriggerConfigurationViewController *)self delegate];
    trigger2 = [(WFTriggerConfigurationViewController *)self trigger];
    [delegate triggerConfigurationViewController:self didFinishWithTrigger:trigger2];
  }
}

- (void)cancel
{
  delegate = [(WFTriggerConfigurationViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if ((v5 & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFTriggerConfigurationViewController.m" lineNumber:228 description:@"Tried to cancel WFTriggerConfigurationViewController but missing delegate with cancel implementation"];
  }

  delegate2 = [(WFTriggerConfigurationViewController *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    delegate3 = [(WFTriggerConfigurationViewController *)self delegate];
    [delegate3 triggerConfigurationViewControllerDidCancel:self];
  }
}

- (void)recurSwitchChanged:(id)changed
{
  isOn = [changed isOn];

  [(WFTriggerConfigurationViewController *)self setShouldRecur:isOn];
}

- (void)notifySwitchChanged:(id)changed
{
  isOn = [changed isOn];

  [(WFTriggerConfigurationViewController *)self setShouldNotify:isOn];
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
  customSections = [(WFTriggerConfigurationViewController *)self customSections];
  v4 = [customSections mutableCopy];

  trigger = [(WFTriggerConfigurationViewController *)self trigger];
  isAllowedToRunAutomatically = [objc_opt_class() isAllowedToRunAutomatically];

  if (isAllowedToRunAutomatically)
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
      trigger2 = [(WFTriggerConfigurationViewController *)self trigger];
      requiresNotification = [objc_opt_class() requiresNotification];

      if ((requiresNotification & 1) == 0)
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

- (int64_t)numberOfRowsInSectionWithInfo:(id)info
{
  infoCopy = info;
  v4 = [infoCopy objectForKeyedSubscript:@"identifier"];
  v5 = [v4 isEqualToString:@"runImmediately"];

  if (v5 || ([infoCopy objectForKeyedSubscript:@"identifier"], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "isEqualToString:", @"runRepeatedly"), v8, v9) && _os_feature_enabled_impl())
  {
    v6 = [infoCopy objectForKeyedSubscript:@"items"];
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

- (void)didSelectRowAtIndexPath:(id)path withSectionInfo:(id)info
{
  pathCopy = path;
  infoCopy = info;
  v7 = [infoCopy objectForKeyedSubscript:@"identifier"];
  v8 = [v7 isEqualToString:@"runImmediately"];

  if (v8)
  {
    if ([pathCopy row])
    {
      selfCopy2 = self;
      v10 = 1;
    }

    else
    {
      selfCopy2 = self;
      v10 = 0;
    }

    [(WFTriggerConfigurationViewController *)selfCopy2 setRunImmediately:v10];
LABEL_10:
    tableView = [(WFTriggerConfigurationViewController *)self tableView];
    [tableView reloadData];

    goto LABEL_11;
  }

  v11 = [infoCopy objectForKeyedSubscript:@"identifier"];
  v12 = [v11 isEqualToString:@"runRepeatedly"];

  if (v12 && _os_feature_enabled_impl())
  {
    if ([pathCopy row])
    {
      selfCopy4 = self;
      v14 = 1;
    }

    else
    {
      selfCopy4 = self;
      v14 = 0;
    }

    [(WFTriggerConfigurationViewController *)selfCopy4 setShouldRecur:v14];
    goto LABEL_10;
  }

LABEL_11:
}

- (id)configureAdditionalCellsIfNeeded:(id)needed indexPath:(id)path sectionInfo:(id)info
{
  neededCopy = needed;
  pathCopy = path;
  infoCopy = info;
  if (!neededCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFTriggerConfigurationViewController.m" lineNumber:103 description:@"No cell provided for configuing run immediately"];
  }

  v12 = [infoCopy objectForKeyedSubscript:@"identifier"];
  v13 = [v12 isEqualToString:@"runImmediately"];

  if (!v13)
  {
    v17 = [infoCopy objectForKeyedSubscript:@"identifier"];
    v18 = [v17 isEqualToString:@"runRepeatedly"];

    if (!v18 || !_os_feature_enabled_impl())
    {
      goto LABEL_22;
    }

    v19 = [infoCopy objectForKeyedSubscript:@"items"];
    v20 = [v19 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];
    textLabel = [neededCopy textLabel];
    [textLabel setText:v20];

    [neededCopy setAccessoryType:0];
    if (([pathCopy row] || -[WFTriggerConfigurationViewController shouldRecur](self, "shouldRecur")) && (objc_msgSend(pathCopy, "row") != 1 || !-[WFTriggerConfigurationViewController shouldRecur](self, "shouldRecur")))
    {
      goto LABEL_22;
    }

    goto LABEL_8;
  }

  v14 = [infoCopy objectForKeyedSubscript:@"items"];
  v15 = [v14 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];
  textLabel2 = [neededCopy textLabel];
  [textLabel2 setText:v15];

  [neededCopy setAccessoryType:0];
  if (![pathCopy row] && !-[WFTriggerConfigurationViewController runImmediately](self, "runImmediately") || objc_msgSend(pathCopy, "row") == 1 && -[WFTriggerConfigurationViewController runImmediately](self, "runImmediately"))
  {
LABEL_8:
    [neededCopy setAccessoryType:3];
    goto LABEL_22;
  }

  if ([pathCopy row] == 2 && -[WFTriggerConfigurationViewController runImmediately](self, "runImmediately"))
  {
    tableView = [(WFTriggerConfigurationViewController *)self tableView];
    v23 = objc_opt_class();
    v24 = NSStringFromClass(v23);
    v25 = [tableView dequeueReusableCellWithIdentifier:v24 forIndexPath:pathCopy];

    [v25 setSelectionStyle:0];
    v26 = [infoCopy objectForKeyedSubscript:@"items"];
    v27 = [v26 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];
    textLabel3 = [v25 textLabel];
    [textLabel3 setText:v27];

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

    switchControl = [v32 switchControl];

    [switchControl setOn:{-[WFTriggerConfigurationViewController shouldNotify](self, "shouldNotify")}];
    [switchControl addTarget:self action:sel_notifySwitchChanged_ forControlEvents:4096];

    goto LABEL_23;
  }

LABEL_22:
  v29 = neededCopy;
LABEL_23:

  return v29;
}

- (void)dismiss:(id)dismiss
{
  navigationController = [(WFTriggerConfigurationViewController *)self navigationController];
  v3 = [navigationController popViewControllerAnimated:1];
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
  trigger = [(WFTriggerConfigurationViewController *)self trigger];
  hasValidConfiguration = [trigger hasValidConfiguration];

  navigationItem = [(WFTriggerConfigurationViewController *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  [rightBarButtonItem setEnabled:hasValidConfiguration];

  if ([(WFTriggerConfigurationViewController *)self mode])
  {
    navigationItem2 = [(WFTriggerConfigurationViewController *)self navigationItem];
    [navigationItem2 setHidesBackButton:hasValidConfiguration ^ 1];
  }
}

- (void)loadView
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D75B40]);
  v4 = [v3 initWithFrame:2 style:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  systemGroupedBackgroundColor = [MEMORY[0x277D75348] systemGroupedBackgroundColor];
  [(UITableView *)v4 setBackgroundColor:systemGroupedBackgroundColor];

  [(UITableView *)v4 setDataSource:self];
  [(UITableView *)v4 setDelegate:self];
  [(UITableView *)v4 setRowHeight:*MEMORY[0x277D76F30]];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  tableViewCellClasses = [(WFTriggerConfigurationViewController *)self tableViewCellClasses];
  v24[0] = objc_opt_class();
  v24[1] = objc_opt_class();
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
  v8 = [tableViewCellClasses setByAddingObjectsFromArray:v7];

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

- (WFTriggerConfigurationViewController)initWithTrigger:(id)trigger mode:(unint64_t)mode
{
  triggerCopy = trigger;
  v20.receiver = self;
  v20.super_class = WFTriggerConfigurationViewController;
  v8 = [(WFTriggerConfigurationViewController *)&v20 initWithNibName:0 bundle:0];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_trigger, trigger);
    v9->_mode = mode;
    if (mode)
    {
      v10 = objc_opt_class();
      defaultContext = [MEMORY[0x277D7A048] defaultContext];
      v12 = [v10 localizedDisplayNameWithContext:defaultContext];
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
    navigationItem = [(WFTriggerConfigurationViewController *)v9 navigationItem];
    [navigationItem setRightBarButtonItem:v16];

    [(WFTriggerConfigurationViewController *)v9 updateNextButtonEnabledState];
    v18 = v9;
  }

  return v9;
}

+ (Class)viewControllerClassForTriggerClass:(Class)class
{
  classCopy = class;
  if (([(objc_class *)class isSubclassOfClass:objc_opt_class()]& 1) != 0)
  {
    goto LABEL_4;
  }

  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"WFTriggerConfigurationViewController.m" lineNumber:241 description:{@"Invalid parameter not satisfying: %@", @"[triggerClass isSubclassOfClass:[WFTrigger class]]"}];
  while (1)
  {

LABEL_4:
    if (classCopy == objc_opt_class())
    {
      v10 = 0;
      goto LABEL_10;
    }

    v7 = NSStringFromClass(classCopy);
    currentHandler = [v7 stringByAppendingString:@"ConfigurationViewController"];

    v8 = NSClassFromString(currentHandler);
    if (v8)
    {
      v9 = v8;
      if ([(objc_class *)v8 isSubclassOfClass:self])
      {
        break;
      }
    }

    classCopy = [(objc_class *)classCopy superclass];
  }

  v10 = v9;

LABEL_10:

  return v10;
}

@end