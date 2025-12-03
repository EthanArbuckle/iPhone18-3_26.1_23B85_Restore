@interface WFTriggerTableViewController
- (WFTriggerTableViewController)initWithOptions:(id)options anySelected:(BOOL)selected nameOfAnyOption:(id)option mainSectionTitle:(id)title;
- (WFTriggerTableViewControllerDelegate)delegate;
- (id)infoForSection:(int64_t)section;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)cancel:(id)cancel;
- (void)done:(id)done;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)updateDoneButtonEnabledState;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation WFTriggerTableViewController

- (WFTriggerTableViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)done:(id)done
{
  if ([(WFTriggerTableViewController *)self anyOptionSelected])
  {
    v6 = 0;
  }

  else
  {
    options = [(WFTriggerTableViewController *)self options];
    v6 = [options if_compactMap:&__block_literal_global_7738];
  }

  delegate = [(WFTriggerTableViewController *)self delegate];
  [delegate triggerTableViewController:self didFinishWithAnySelected:-[WFTriggerTableViewController anyOptionSelected](self orSelectedOptions:{"anyOptionSelected"), v6}];
}

void *__37__WFTriggerTableViewController_done___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isSelected])
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (void)cancel:(id)cancel
{
  delegate = [(WFTriggerTableViewController *)self delegate];
  [delegate triggerTableViewControllerDidCancel:self];
}

- (void)updateDoneButtonEnabledState
{
  v14 = *MEMORY[0x277D85DE8];
  if ([(WFTriggerTableViewController *)self anyOptionSelected])
  {
    v3 = 1;
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    options = [(WFTriggerTableViewController *)self options];
    v3 = [options countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v3)
    {
      v5 = *v10;
      while (2)
      {
        for (i = 0; i != v3; ++i)
        {
          if (*v10 != v5)
          {
            objc_enumerationMutation(options);
          }

          if ([*(*(&v9 + 1) + 8 * i) isSelected])
          {
            v3 = 1;
            goto LABEL_13;
          }
        }

        v3 = [options countByEnumeratingWithState:&v9 objects:v13 count:16];
        if (v3)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  navigationItem = [(WFTriggerTableViewController *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  [rightBarButtonItem setEnabled:v3];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v32 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  pathCopy = path;
  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
  v8 = [viewCopy cellForRowAtIndexPath:pathCopy];
  v9 = -[WFTriggerTableViewController infoForSection:](self, "infoForSection:", [pathCopy section]);
  v10 = getWFTriggersLogObject();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v29 = "[WFTriggerTableViewController tableView:didSelectRowAtIndexPath:]";
    v30 = 2114;
    v31 = v9;
    _os_log_impl(&dword_274719000, v10, OS_LOG_TYPE_DEBUG, "%s didselect section: %{public}@", buf, 0x16u);
  }

  v11 = [v9 objectForKeyedSubscript:@"identifier"];
  v12 = [v11 isEqual:@"anyOption"];

  if (v12)
  {
    [(WFTriggerTableViewController *)self setAnyOptionSelected:1];
    [v8 setAccessoryType:3];
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    options = [(WFTriggerTableViewController *)self options];
    v14 = [options countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v24;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v24 != v16)
          {
            objc_enumerationMutation(options);
          }

          [*(*(&v23 + 1) + 8 * i) setSelected:0];
        }

        v15 = [options countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v15);
    }

    goto LABEL_17;
  }

  v18 = [v9 objectForKeyedSubscript:@"identifier"];
  v19 = [v18 isEqualToString:@"options"];

  if (v19)
  {
    [(WFTriggerTableViewController *)self setAnyOptionSelected:0];
    options2 = [(WFTriggerTableViewController *)self options];
    options = [options2 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];

    [options setSelected:{objc_msgSend(options, "isSelected") ^ 1}];
    if ([options isSelected])
    {
      v21 = 3;
    }

    else
    {
      v21 = 0;
    }

    [v8 setAccessoryType:v21];
LABEL_17:
  }

  [(WFTriggerTableViewController *)self updateDoneButtonEnabledState];
  tableView = [(WFTriggerTableViewController *)self tableView];
  [tableView reloadData];
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  v5 = [(WFTriggerTableViewController *)self infoForSection:section];
  v6 = [v5 objectForKeyedSubscript:@"identifier"];
  v7 = [v6 isEqualToString:@"options"];

  if (v7)
  {
    mainSectionTitle = [(WFTriggerTableViewController *)self mainSectionTitle];
  }

  else
  {
    mainSectionTitle = 0;
  }

  return mainSectionTitle;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = -[WFTriggerTableViewController infoForSection:](self, "infoForSection:", [pathCopy section]);
  v9 = [v8 objectForKeyedSubscript:@"cellIdentifier"];
  v10 = [viewCopy dequeueReusableCellWithIdentifier:v9 forIndexPath:pathCopy];

  v11 = [v8 objectForKeyedSubscript:@"identifier"];
  v12 = [v11 isEqual:@"anyOption"];

  if (v12)
  {
    nameOfAnyOption = [(WFTriggerTableViewController *)self nameOfAnyOption];
    textLabel = [v10 textLabel];
    [textLabel setText:nameOfAnyOption];

    if ([(WFTriggerTableViewController *)self anyOptionSelected])
    {
      [v10 setAccessoryType:3];
    }
  }

  else
  {
    v15 = [v8 objectForKeyedSubscript:@"identifier"];
    v16 = [v15 isEqual:@"options"];

    if (v16)
    {
      options = [(WFTriggerTableViewController *)self options];
      v18 = [options objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];

      displayTitle = [v18 displayTitle];
      textLabel2 = [v10 textLabel];
      [textLabel2 setText:displayTitle];

      if ([(WFTriggerTableViewController *)self anyOptionSelected])
      {
        v21 = 0;
      }

      else if ([v18 isSelected])
      {
        v21 = 3;
      }

      else
      {
        v21 = 0;
      }

      [v10 setAccessoryType:v21];
    }
  }

  return v10;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v5 = [(WFTriggerTableViewController *)self infoForSection:section];
  v6 = [v5 objectForKeyedSubscript:@"identifier"];
  v7 = [v6 isEqual:@"options"];

  if (v7)
  {
    options = [(WFTriggerTableViewController *)self options];
    v9 = [options count];
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  sections = [(WFTriggerTableViewController *)self sections];
  v4 = [sections count];

  return v4;
}

- (id)infoForSection:(int64_t)section
{
  sections = [(WFTriggerTableViewController *)self sections];
  v5 = [sections objectAtIndexedSubscript:section];

  return v5;
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = WFTriggerTableViewController;
  [(WFTriggerTableViewController *)&v4 viewWillAppear:appear];
  [(WFTriggerTableViewController *)self updateDoneButtonEnabledState];
}

- (void)viewDidLoad
{
  v9.receiver = self;
  v9.super_class = WFTriggerTableViewController;
  [(WFTriggerTableViewController *)&v9 viewDidLoad];
  tableView = [(WFTriggerTableViewController *)self tableView];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [tableView registerClass:v4 forCellReuseIdentifier:v6];

  systemGroupedBackgroundColor = [MEMORY[0x277D75348] systemGroupedBackgroundColor];
  tableView2 = [(WFTriggerTableViewController *)self tableView];
  [tableView2 setBackgroundColor:systemGroupedBackgroundColor];
}

- (WFTriggerTableViewController)initWithOptions:(id)options anySelected:(BOOL)selected nameOfAnyOption:(id)option mainSectionTitle:(id)title
{
  v41[2] = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  optionCopy = option;
  titleCopy = title;
  if (!optionsCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFTriggerTableViewController.m" lineNumber:71 description:{@"Invalid parameter not satisfying: %@", @"options"}];
  }

  v37.receiver = self;
  v37.super_class = WFTriggerTableViewController;
  v14 = [(WFTriggerTableViewController *)&v37 initWithStyle:2];
  if (v14)
  {
    v15 = [optionsCopy copy];
    options = v14->_options;
    v14->_options = v15;

    v14->_anyOptionSelected = selected;
    v17 = [optionCopy copy];
    nameOfAnyOption = v14->_nameOfAnyOption;
    v14->_nameOfAnyOption = v17;

    v19 = [titleCopy copy];
    mainSectionTitle = v14->_mainSectionTitle;
    v14->_mainSectionTitle = v19;

    navigationItem = [(WFTriggerTableViewController *)v14 navigationItem];
    v22 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:v14 action:sel_cancel_];
    [navigationItem setLeftBarButtonItem:v22];

    navigationItem2 = [(WFTriggerTableViewController *)v14 navigationItem];
    v24 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:v14 action:sel_done_];
    [navigationItem2 setRightBarButtonItem:v24];

    v25 = objc_opt_new();
    if (optionCopy)
    {
      v40[1] = @"cellIdentifier";
      v41[0] = @"anyOption";
      v40[0] = @"identifier";
      v26 = objc_opt_class();
      v27 = NSStringFromClass(v26);
      v41[1] = v27;
      v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:v40 count:2];
      [v25 addObject:v28];
    }

    v38[1] = @"cellIdentifier";
    v39[0] = @"options";
    v38[0] = @"identifier";
    v29 = objc_opt_class();
    v30 = NSStringFromClass(v29);
    v39[1] = v30;
    v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:v38 count:2];
    [v25 addObject:v31];

    v32 = [v25 copy];
    sections = v14->_sections;
    v14->_sections = v32;

    v34 = v14;
  }

  return v14;
}

@end