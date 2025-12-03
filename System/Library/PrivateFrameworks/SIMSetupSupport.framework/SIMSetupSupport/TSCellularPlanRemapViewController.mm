@interface TSCellularPlanRemapViewController
- (TSCellularPlanRemapViewController)initWithBackButton:(BOOL)button continueButton:(BOOL)continueButton danglingPlanItem:(id)item;
- (TSSIMSetupFlowDelegate)delegate;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForFooterInSection:(int64_t)section;
- (void)_doneButtonTapped;
- (void)prepare:(id)prepare;
- (void)remapDanglingItem:(id)item;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayFooterView:(id)footerView forSection:(int64_t)section;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation TSCellularPlanRemapViewController

- (TSCellularPlanRemapViewController)initWithBackButton:(BOOL)button continueButton:(BOOL)continueButton danglingPlanItem:(id)item
{
  itemCopy = item;
  phoneNumber = [itemCopy phoneNumber];
  v9 = [phoneNumber length];

  v10 = MEMORY[0x277CCACA8];
  v11 = 0x277CCA000uLL;
  v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v13 = v12;
  if (v9)
  {
    v14 = [v12 localizedStringForKey:@"CELLULAR_PLAN_CONTACT_DETAIL_WITH_NUMBER_%@_%@" value:&stru_28753DF48 table:@"Localizable"];
    userLabel = [itemCopy userLabel];
    label = [userLabel label];
    phoneNumber2 = [itemCopy phoneNumber];
    formattedPhoneNumber = [phoneNumber2 formattedPhoneNumber];
    v19 = [v10 stringWithFormat:v14, label, formattedPhoneNumber];

    v11 = 0x277CCA000;
  }

  else
  {
    v14 = [v12 localizedStringForKey:@"CELLULAR_PLAN_CONTACT_DETAIL_%@" value:&stru_28753DF48 table:@"Localizable"];
    userLabel = [itemCopy userLabel];
    label = [userLabel label];
    v19 = [v10 stringWithFormat:v14, label];
  }

  v20 = [*(v11 + 2264) bundleForClass:objc_opt_class()];
  v21 = [v20 localizedStringForKey:@"CELLULAR_PLAN_CONTACT_TITLE" value:&stru_28753DF48 table:@"Localizable"];
  v26.receiver = self;
  v26.super_class = TSCellularPlanRemapViewController;
  v22 = [(OBTableWelcomeController *)&v26 initWithTitle:v21 detailText:v19 icon:0];

  if (v22)
  {
    v22->_hasBackButton = button;
    v22->_hasContinueButton = continueButton;
    objc_storeStrong(&v22->_danglingPlanItem, item);
  }

  return v22;
}

- (void)viewDidLoad
{
  v30.receiver = self;
  v30.super_class = TSCellularPlanRemapViewController;
  [(TSOBTableWelcomeController *)&v30 viewDidLoad];
  hasContinueButton = self->_hasContinueButton;
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = v4;
  if (hasContinueButton)
  {
    v6 = @"CONTINUE";
  }

  else
  {
    v6 = @"DONE";
  }

  v7 = [v4 localizedStringForKey:v6 value:&stru_28753DF48 table:@"Localizable"];

  boldButton = [MEMORY[0x277D37618] boldButton];
  doneButton = self->_doneButton;
  self->_doneButton = boldButton;

  [(OBBoldTrayButton *)self->_doneButton addTarget:self action:sel__doneButtonTapped forControlEvents:64];
  [(OBBoldTrayButton *)self->_doneButton setTitle:v7 forState:0];
  [(OBBoldTrayButton *)self->_doneButton setEnabled:0];
  buttonTray = [(TSCellularPlanRemapViewController *)self buttonTray];
  [buttonTray addButton:self->_doneButton];

  navigationController = [(TSCellularPlanRemapViewController *)self navigationController];
  navigationItem = [navigationController navigationItem];
  [navigationItem setHidesBackButton:!self->_hasBackButton];

  v13 = objc_alloc(MEMORY[0x277D75B40]);
  v14 = [v13 initWithFrame:2 style:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [(OBTableWelcomeController *)self setTableView:v14];

  tableView = [(OBTableWelcomeController *)self tableView];
  clearColor = [MEMORY[0x277D75348] clearColor];
  [tableView setBackgroundColor:clearColor];

  tableView2 = [(OBTableWelcomeController *)self tableView];
  [tableView2 setAllowsSelectionDuringEditing:1];

  tableView3 = [(OBTableWelcomeController *)self tableView];
  [tableView3 setTranslatesAutoresizingMaskIntoConstraints:0];

  tableView4 = [(OBTableWelcomeController *)self tableView];
  [tableView4 setRowHeight:*MEMORY[0x277D76F30]];

  tableView5 = [(OBTableWelcomeController *)self tableView];
  [tableView5 setEstimatedRowHeight:0.0];

  tableView6 = [(OBTableWelcomeController *)self tableView];
  [tableView6 setDataSource:self];

  tableView7 = [(OBTableWelcomeController *)self tableView];
  [tableView7 setDelegate:self];

  tableView8 = [(OBTableWelcomeController *)self tableView];
  [tableView8 reloadData];

  tableView9 = [(OBTableWelcomeController *)self tableView];
  heightAnchor = [tableView9 heightAnchor];
  tableView10 = [(OBTableWelcomeController *)self tableView];
  [tableView10 contentSize];
  v28 = [heightAnchor constraintEqualToConstant:v27];
  [(TSCellularPlanRemapViewController *)self setHeightAnchor:v28];

  heightAnchor2 = [(TSCellularPlanRemapViewController *)self heightAnchor];
  [heightAnchor2 setActive:1];
}

- (void)viewDidLayoutSubviews
{
  view = [(TSCellularPlanRemapViewController *)self view];
  [view layoutIfNeeded];

  tableView = [(OBTableWelcomeController *)self tableView];
  [tableView contentSize];
  v6 = v5;
  heightAnchor = [(TSCellularPlanRemapViewController *)self heightAnchor];
  [heightAnchor setConstant:v6];

  v8.receiver = self;
  v8.super_class = TSCellularPlanRemapViewController;
  [(OBTableWelcomeController *)&v8 viewDidLayoutSubviews];
}

- (void)remapDanglingItem:(id)item
{
  itemCopy = item;
  v5 = _TSLogDomain();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(TSCellularPlanRemapViewController *)self remapDanglingItem:v5];
  }

  v6 = [(NSIndexPath *)self->_chosenTargetCellularPlanItem row];
  if (v6 == [(NSArray *)self->_selectedPlanItems count])
  {
    v7 = _TSLogDomain();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [TSCellularPlanRemapViewController remapDanglingItem:v7];
    }

    if (itemCopy)
    {
      itemCopy[2](itemCopy);
    }
  }

  else
  {
    v8 = +[TSCellularPlanManagerCache sharedInstance];
    danglingPlanItem = self->_danglingPlanItem;
    v10 = [(NSArray *)self->_selectedPlanItems objectAtIndex:[(NSIndexPath *)self->_chosenTargetCellularPlanItem row]];
    v11 = [v8 remapSimLabel:danglingPlanItem to:v10];

    if (itemCopy)
    {
      itemCopy[2](itemCopy);
    }
  }
}

- (void)prepare:(id)prepare
{
  v26 = *MEMORY[0x277D85DE8];
  prepareCopy = prepare;
  v5 = +[TSCellularPlanManagerCache sharedInstance];
  planItems = [v5 planItems];

  array = [MEMORY[0x277CBEB18] array];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = planItems;
  v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v22;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v21 + 1) + 8 * i);
        if ([v13 isSelected])
        {
          [array addObject:v13];
        }

        if ([v13 isDefaultVoice])
        {
          objc_storeStrong(&self->_defaultVoiceItem, v13);
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v10);
  }

  v14 = [array sortedArrayUsingSelector:sel_compare_];
  selectedPlanItems = self->_selectedPlanItems;
  self->_selectedPlanItems = v14;

  if (prepareCopy)
  {
    objc_initWeak(&location, self);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __45__TSCellularPlanRemapViewController_prepare___block_invoke;
    block[3] = &unk_279B454B8;
    v18 = prepareCopy;
    objc_copyWeak(&v19, &location);
    dispatch_async(MEMORY[0x277D85CD0], block);
    objc_destroyWeak(&v19);

    objc_destroyWeak(&location);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __45__TSCellularPlanRemapViewController_prepare___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained selectedPlanItems];
  (*(v1 + 16))(v1, [v2 count] > 1);
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v6 = [[TSCellularPlanRemapTableViewCell alloc] initWithStyle:0 reuseIdentifier:@"use"];
  [(TSCellularPlanRemapTableViewCell *)v6 setSelectionStyle:0];
  v7 = [pathCopy row];
  if (v7 == [(NSArray *)self->_selectedPlanItems count])
  {
    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"CELLULAR_PLAN_CONTACT_ROW_DECIDE_LATER" value:&stru_28753DF48 table:@"Localizable"];
    titleLabel = [(TSCellularPlanRemapTableViewCell *)v6 titleLabel];
    [titleLabel setText:v9];
  }

  else
  {
    v11 = MEMORY[0x277CCACA8];
    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"CELLULAR_PLAN_CONTACT_ROW_TITLE" value:&stru_28753DF48 table:@"Localizable"];
    titleLabel = -[NSArray objectAtIndex:](self->_selectedPlanItems, "objectAtIndex:", [pathCopy row]);
    label = [titleLabel label];
    v13 = [v11 stringWithFormat:v9, label];
    titleLabel2 = [(TSCellularPlanRemapTableViewCell *)v6 titleLabel];
    [titleLabel2 setText:v13];
  }

  if ([(NSIndexPath *)self->_chosenTargetCellularPlanItem isEqual:pathCopy])
  {
    v15 = 3;
  }

  else
  {
    v15 = 0;
  }

  [(TSCellularPlanRemapTableViewCell *)v6 setAccessoryType:v15];

  return v6;
}

- (id)tableView:(id)view titleForFooterInSection:(int64_t)section
{
  v5 = MEMORY[0x277CCACA8];
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"CELLULAR_PLAN_CONTACT_SECTION_FOOTER" value:&stru_28753DF48 table:@"Localizable"];
  userLabel = [(CTCellularPlanItem *)self->_defaultVoiceItem userLabel];
  label = [userLabel label];
  v10 = [v5 stringWithFormat:v7, label];

  return v10;
}

- (void)tableView:(id)view willDisplayFooterView:(id)footerView forSection:(int64_t)section
{
  textLabel = [footerView textLabel];
  systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
  [textLabel setTextColor:systemGrayColor];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  [(OBBoldTrayButton *)self->_doneButton setEnabled:1];
  tableView = [(OBTableWelcomeController *)self tableView];
  [tableView reloadData];

  objc_storeStrong(&self->_chosenTargetCellularPlanItem, path);
  if ([viewCopy numberOfRowsInSection:{objc_msgSend(pathCopy, "section")}] >= 1)
  {
    v8 = 0;
    do
    {
      if (v8 != [pathCopy row])
      {
        v9 = [MEMORY[0x277CCAA70] indexPathForRow:v8 inSection:{objc_msgSend(pathCopy, "section")}];
        [viewCopy deselectRowAtIndexPath:v9 animated:0];
      }

      ++v8;
    }

    while (v8 < [viewCopy numberOfRowsInSection:{objc_msgSend(pathCopy, "section")}]);
  }
}

- (void)_doneButtonTapped
{
  view = [(TSCellularPlanRemapViewController *)self view];
  [view setUserInteractionEnabled:0];

  objc_initWeak(&location, self);
  v4 = dispatch_get_global_queue(2, 0);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __54__TSCellularPlanRemapViewController__doneButtonTapped__block_invoke;
  v5[3] = &unk_279B44400;
  objc_copyWeak(&v6, &location);
  dispatch_async(v4, v5);

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __54__TSCellularPlanRemapViewController__doneButtonTapped__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __54__TSCellularPlanRemapViewController__doneButtonTapped__block_invoke_2;
  v2[3] = &unk_279B44578;
  v2[4] = WeakRetained;
  [WeakRetained remapDanglingItem:v2];
}

void __54__TSCellularPlanRemapViewController__doneButtonTapped__block_invoke_2(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__TSCellularPlanRemapViewController__doneButtonTapped__block_invoke_3;
  block[3] = &unk_279B44578;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __54__TSCellularPlanRemapViewController__doneButtonTapped__block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 viewControllerDidComplete:*(a1 + 32)];
}

- (TSSIMSetupFlowDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)remapDanglingItem:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = [*(a1 + 1328) row];
  v5 = 134218242;
  v6 = v3;
  v7 = 2080;
  v8 = "[TSCellularPlanRemapViewController remapDanglingItem:]";
  _os_log_debug_impl(&dword_262AA8000, a2, OS_LOG_TYPE_DEBUG, "[Db] remapping dangling item... selected row: %ld @%s", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)remapDanglingItem:(os_log_t)log .cold.2(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "[TSCellularPlanRemapViewController remapDanglingItem:]";
  _os_log_debug_impl(&dword_262AA8000, log, OS_LOG_TYPE_DEBUG, "[Db] update later selected, skipping remap @%s", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end