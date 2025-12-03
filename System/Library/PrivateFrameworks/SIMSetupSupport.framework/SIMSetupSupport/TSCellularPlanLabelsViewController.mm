@interface TSCellularPlanLabelsViewController
- (TSCellularPlanLabelsViewController)initWithAllowDismiss:(BOOL)dismiss;
- (TSCellularPlanLabelsViewController)initWithIccid:(id)iccid forceDualSIMSetup:(BOOL)setup allowDismiss:(BOOL)dismiss;
- (TSSIMSetupFlowDelegate)delegate;
- (double)tableView:(id)view heightForFooterInSection:(int64_t)section;
- (id)getPendingLabelAtIndex:(int64_t)index;
- (id)getPlanItemByIndex:(int64_t)index;
- (id)getPredefinedUserLabels;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForFooterInSection:(int64_t)section;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (void)_cancelButtonTapped;
- (void)_doneButtonTapped;
- (void)prepare:(id)prepare;
- (void)prepareLabels:(id)labels;
- (void)savePlanLabels:(id)labels;
- (void)setPendingLabel:(id)label forPlanItem:(id)item;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayFooterView:(id)footerView forSection:(int64_t)section;
- (void)tableView:(id)view willDisplayHeaderView:(id)headerView forSection:(int64_t)section;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation TSCellularPlanLabelsViewController

- (TSCellularPlanLabelsViewController)initWithAllowDismiss:(BOOL)dismiss
{
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"CELLULAR_PLAN_LABELS_TITLE" value:&stru_28753DF48 table:@"Localizable"];
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"CELLULAR_PLAN_LABELS_DETAIL" value:&stru_28753DF48 table:@"Localizable"];
  v14.receiver = self;
  v14.super_class = TSCellularPlanLabelsViewController;
  v9 = [(OBTableWelcomeController *)&v14 initWithTitle:v6 detailText:v8 symbolName:0 adoptTableViewScrollView:1];

  if (v9)
  {
    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    sortedPlanItemsWithPendingLabels = v9->_sortedPlanItemsWithPendingLabels;
    v9->_sortedPlanItemsWithPendingLabels = v10;

    iccid = v9->_iccid;
    v9->_iccid = 0;

    v9->_forceDualSIMSetup = 0;
    v9->_allowDismiss = dismiss;
    v9->_showDupLabelsFooter = 0;
  }

  return v9;
}

- (TSCellularPlanLabelsViewController)initWithIccid:(id)iccid forceDualSIMSetup:(BOOL)setup allowDismiss:(BOOL)dismiss
{
  iccidCopy = iccid;
  v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"CELLULAR_PLAN_LABELS_TITLE" value:&stru_28753DF48 table:@"Localizable"];
  v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v13 = [v12 localizedStringForKey:@"CELLULAR_PLAN_LABELS_DETAIL" value:&stru_28753DF48 table:@"Localizable"];
  v18.receiver = self;
  v18.super_class = TSCellularPlanLabelsViewController;
  v14 = [(OBTableWelcomeController *)&v18 initWithTitle:v11 detailText:v13 symbolName:0 adoptTableViewScrollView:1];

  if (v14)
  {
    v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
    sortedPlanItemsWithPendingLabels = v14->_sortedPlanItemsWithPendingLabels;
    v14->_sortedPlanItemsWithPendingLabels = v15;

    objc_storeStrong(&v14->_iccid, iccid);
    v14->_forceDualSIMSetup = setup;
    v14->_allowDismiss = dismiss;
    v14->_showDupLabelsFooter = 0;
  }

  return v14;
}

- (void)viewDidLoad
{
  v24.receiver = self;
  v24.super_class = TSCellularPlanLabelsViewController;
  [(TSOBTableWelcomeController *)&v24 viewDidLoad];
  boldButton = [MEMORY[0x277D37618] boldButton];
  doneButton = self->_doneButton;
  self->_doneButton = boldButton;

  [(OBBoldTrayButton *)self->_doneButton addTarget:self action:sel__doneButtonTapped forControlEvents:64];
  v5 = self->_doneButton;
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"CONTINUE" value:&stru_28753DF48 table:@"Localizable"];
  [(OBBoldTrayButton *)v5 setTitle:v7 forState:0];

  buttonTray = [(TSCellularPlanLabelsViewController *)self buttonTray];
  [buttonTray addButton:self->_doneButton];

  v9 = objc_alloc(MEMORY[0x277D75B40]);
  v10 = [v9 initWithFrame:2 style:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [(OBTableWelcomeController *)self setTableView:v10];

  tableView = [(OBTableWelcomeController *)self tableView];
  [tableView setAllowsSelectionDuringEditing:1];

  tableView2 = [(OBTableWelcomeController *)self tableView];
  [tableView2 setTranslatesAutoresizingMaskIntoConstraints:0];

  tableView3 = [(OBTableWelcomeController *)self tableView];
  [tableView3 setRowHeight:*MEMORY[0x277D76F30]];

  tableView4 = [(OBTableWelcomeController *)self tableView];
  [tableView4 setEstimatedRowHeight:0.0];

  tableView5 = [(OBTableWelcomeController *)self tableView];
  clearColor = [MEMORY[0x277D75348] clearColor];
  [tableView5 setBackgroundColor:clearColor];

  tableView6 = [(OBTableWelcomeController *)self tableView];
  [tableView6 setDataSource:self];

  tableView7 = [(OBTableWelcomeController *)self tableView];
  [tableView7 setDelegate:self];

  tableView8 = [(OBTableWelcomeController *)self tableView];
  [tableView8 setScrollEnabled:1];

  tableView9 = [(OBTableWelcomeController *)self tableView];
  [tableView9 reloadData];

  tableView10 = [(OBTableWelcomeController *)self tableView];
  [tableView10 layoutIfNeeded];

  v22 = 0;
  if (self->_allowDismiss)
  {
    v22 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel__cancelButtonTapped];
  }

  navigationItem = [(OBBaseWelcomeController *)self navigationItem];
  [navigationItem setLeftBarButtonItem:v22];
}

- (void)viewDidLayoutSubviews
{
  view = [(TSCellularPlanLabelsViewController *)self view];
  [view layoutIfNeeded];

  v4.receiver = self;
  v4.super_class = TSCellularPlanLabelsViewController;
  [(OBTableWelcomeController *)&v4 viewDidLayoutSubviews];
}

- (void)savePlanLabels:(id)labels
{
  v21 = *MEMORY[0x277D85DE8];
  labelsCopy = labels;
  if ([(NSMutableArray *)self->_sortedPlanItemsWithPendingLabels count])
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = self->_sortedPlanItemsWithPendingLabels;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v17;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v16 + 1) + 8 * i);
          v11 = +[TSCellularPlanManagerCache sharedInstance];
          v12 = [v10 objectForKeyedSubscript:@"planItem"];
          v13 = [v10 objectForKeyedSubscript:@"pendingLabel"];
          v14 = [v11 setLabelForPlan:v12 label:v13];
        }

        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v7);
    }

    goto LABEL_11;
  }

  if (labelsCopy)
  {
LABEL_11:
    labelsCopy[2](labelsCopy);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)setPendingLabel:(id)label forPlanItem:(id)item
{
  v16[2] = *MEMORY[0x277D85DE8];
  labelCopy = label;
  itemCopy = item;
  v8 = _TSLogDomain();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [TSCellularPlanLabelsViewController setPendingLabel:labelCopy forPlanItem:itemCopy];
  }

  v15[0] = @"pendingLabel";
  v15[1] = @"planItem";
  v16[0] = labelCopy;
  v16[1] = itemCopy;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];
  if ([(NSMutableArray *)self->_sortedPlanItemsWithPendingLabels count])
  {
    v10 = 0;
    while (1)
    {
      v11 = [(TSCellularPlanLabelsViewController *)self getPlanItemByIndex:v10];
      uuid = [v11 uuid];
      uuid2 = [itemCopy uuid];

      if (uuid == uuid2)
      {
        break;
      }

      if ([(NSMutableArray *)self->_sortedPlanItemsWithPendingLabels count]<= ++v10)
      {
        goto LABEL_7;
      }
    }

    [(NSMutableArray *)self->_sortedPlanItemsWithPendingLabels replaceObjectAtIndex:v10 withObject:v9];
  }

  else
  {
LABEL_7:
    [(NSMutableArray *)self->_sortedPlanItemsWithPendingLabels addObject:v9];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (id)getPlanItemByIndex:(int64_t)index
{
  v3 = [(NSMutableArray *)self->_sortedPlanItemsWithPendingLabels objectAtIndexedSubscript:index];
  v4 = [v3 objectForKeyedSubscript:@"planItem"];

  return v4;
}

- (id)getPendingLabelAtIndex:(int64_t)index
{
  v3 = [(NSMutableArray *)self->_sortedPlanItemsWithPendingLabels objectAtIndexedSubscript:index];
  v4 = [v3 objectForKeyedSubscript:@"pendingLabel"];

  return v4;
}

- (void)prepareLabels:(id)labels
{
  v48 = *MEMORY[0x277D85DE8];
  labelsCopy = labels;
  mEMORY[0x277CF96D8] = [MEMORY[0x277CF96D8] sharedManager];
  v6 = [mEMORY[0x277CF96D8] planItemsShouldUpdate:0];

  array = [MEMORY[0x277CBEB18] array];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v39 objects:v47 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v40;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v40 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v39 + 1) + 8 * i);
        if ([v13 isSelected])
        {
          [array addObject:v13];
        }

        if (!-[NSString length](self->_iccid, "length") && [v13 isInstalling])
        {
          iccid = [v13 iccid];
          iccid = self->_iccid;
          self->_iccid = iccid;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v39 objects:v47 count:16];
    }

    while (v10);
  }

  v16 = [array sortedArrayUsingSelector:sel_compare_];
  if ([v16 count] >= 2)
  {
    v17 = [v16 objectAtIndex:0];
    label = [v17 label];
    v19 = [label length];

    if (v19)
    {
      getPredefinedUserLabels = [v16 objectAtIndex:0];
      [getPredefinedUserLabels userLabel];
    }

    else
    {
      getPredefinedUserLabels = [(TSCellularPlanLabelsViewController *)self getPredefinedUserLabels];
      [getPredefinedUserLabels objectAtIndex:0];
    }
    v21 = ;
    v22 = [v16 objectAtIndex:0];
    [(TSCellularPlanLabelsViewController *)self setPendingLabel:v21 forPlanItem:v22];

    v23 = [v16 objectAtIndex:1];
    label2 = [v23 label];
    v25 = [label2 length];

    if (v25)
    {
      getPredefinedUserLabels2 = [v16 objectAtIndex:1];
      [getPredefinedUserLabels2 userLabel];
    }

    else
    {
      getPredefinedUserLabels2 = [(TSCellularPlanLabelsViewController *)self getPredefinedUserLabels];
      [getPredefinedUserLabels2 objectAtIndex:1];
    }
    v27 = ;
    v28 = [v16 objectAtIndex:1];
    [(TSCellularPlanLabelsViewController *)self setPendingLabel:v27 forPlanItem:v28];

    v29 = _TSLogDomain();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      [TSCellularPlanLabelsViewController prepareLabels:v16];
    }

    v30 = _TSLogDomain();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      [TSCellularPlanLabelsViewController prepareLabels:v16];
    }
  }

  v31 = _TSLogDomain();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    v32 = [v16 count];
    *buf = 134218242;
    v44 = v32;
    v45 = 2080;
    v46 = "[TSCellularPlanLabelsViewController prepareLabels:]";
    _os_log_impl(&dword_262AA8000, v31, OS_LOG_TYPE_DEFAULT, "[sortedSelectedItems count]:%ld @%s", buf, 0x16u);
  }

  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __52__TSCellularPlanLabelsViewController_prepareLabels___block_invoke;
  v36[3] = &unk_279B45058;
  v37 = v16;
  v38 = labelsCopy;
  v33 = v16;
  v34 = labelsCopy;
  dispatch_async(MEMORY[0x277D85CD0], v36);

  v35 = *MEMORY[0x277D85DE8];
}

uint64_t __52__TSCellularPlanLabelsViewController_prepareLabels___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) count] > 1;
  v3 = *(v1 + 16);

  return v3(v1, v2);
}

- (id)getPredefinedUserLabels
{
  mEMORY[0x277CF96D8] = [MEMORY[0x277CF96D8] sharedManager];
  getPredefinedLabels = [mEMORY[0x277CF96D8] getPredefinedLabels];

  return getPredefinedLabels;
}

- (void)prepare:(id)prepare
{
  prepareCopy = prepare;
  if (prepareCopy)
  {
    if (self->_forceDualSIMSetup)
    {
      [(TSCellularPlanLabelsViewController *)self prepareLabels:prepareCopy];
    }

    else
    {
      objc_initWeak(&location, self);
      v5 = +[TSCellularPlanManagerCache sharedInstance];
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = __46__TSCellularPlanLabelsViewController_prepare___block_invoke;
      v6[3] = &unk_279B44CD0;
      objc_copyWeak(&v8, &location);
      v7 = prepareCopy;
      [v5 shouldShowPlanSetupWithCompletion:v6];

      objc_destroyWeak(&v8);
      objc_destroyWeak(&location);
    }
  }
}

void __46__TSCellularPlanLabelsViewController_prepare___block_invoke(uint64_t a1, char a2)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__TSCellularPlanLabelsViewController_prepare___block_invoke_2;
  block[3] = &unk_279B45418;
  objc_copyWeak(&v6, (a1 + 40));
  v5 = *(a1 + 32);
  v7 = a2;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v6);
}

void __46__TSCellularPlanLabelsViewController_prepare___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (!WeakRetained)
  {
    v4 = _TSLogDomain();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __46__TSCellularPlanLabelsViewController_prepare___block_invoke_2_cold_2(v4);
    }

    goto LABEL_8;
  }

  if ((*(a1 + 48) & 1) == 0)
  {
    v4 = _TSLogDomain();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __46__TSCellularPlanLabelsViewController_prepare___block_invoke_2_cold_1(v4);
    }

LABEL_8:

    (*(*(a1 + 32) + 16))();
    goto LABEL_9;
  }

  WeakRetained[1280] = 1;
  [WeakRetained prepareLabels:*(a1 + 32)];
LABEL_9:
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  if (![(NSMutableArray *)self->_sortedPlanItemsWithPendingLabels count])
  {
    v14 = 0;
    goto LABEL_9;
  }

  v6 = [(TSCellularPlanLabelsViewController *)self getPlanItemByIndex:section];
  phoneNumber = [v6 phoneNumber];
  v8 = [phoneNumber length];

  if (v8)
  {
    v9 = MEMORY[0x277CCACA8];
    v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v11 = [v10 localizedStringForKey:@"LABEL_FOR_PHONE_NUMBER_%@" value:&stru_28753DF48 table:@"Localizable"];
    phoneNumber2 = [v6 phoneNumber];
    formattedPhoneNumber = [phoneNumber2 formattedPhoneNumber];
    v14 = [v9 stringWithFormat:v11, formattedPhoneNumber];
  }

  else
  {
    carrierName = [v6 carrierName];
    v16 = [carrierName length];

    if (!v16)
    {
      v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v14 = [v10 localizedStringForKey:@"LABEL_FOR_YOUR_PLAN" value:&stru_28753DF48 table:@"Localizable"];
      goto LABEL_8;
    }

    v17 = MEMORY[0x277CCACA8];
    v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v11 = [v10 localizedStringForKey:@"LABEL_FOR_YOUR_CARRIER_PLAN_%@" value:&stru_28753DF48 table:@"Localizable"];
    phoneNumber2 = [v6 carrierName];
    v14 = [v17 stringWithFormat:v11, phoneNumber2];
  }

LABEL_8:
LABEL_9:

  return v14;
}

- (void)tableView:(id)view willDisplayHeaderView:(id)headerView forSection:(int64_t)section
{
  textLabel = [headerView textLabel];
  systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
  [textLabel setTextColor:systemGrayColor];
}

- (double)tableView:(id)view heightForFooterInSection:(int64_t)section
{
  result = 0.0;
  if (self->_showDupLabelsFooter)
  {
    numberOfSections = [view numberOfSections];
    result = *MEMORY[0x277D76F30];
    if (numberOfSections - 1 != section)
    {
      return 0.0;
    }
  }

  return result;
}

- (id)tableView:(id)view titleForFooterInSection:(int64_t)section
{
  if (self->_showDupLabelsFooter && [view numberOfSections] - 1 == section)
  {
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = [v4 localizedStringForKey:@"CELLULAR_PLAN_LABELS_SECTION_FOOTER" value:&stru_28753DF48 table:@"Localizable"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)tableView:(id)view willDisplayFooterView:(id)footerView forSection:(int64_t)section
{
  textLabel = [footerView textLabel];
  systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
  [textLabel setTextColor:systemGrayColor];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v6 = [[TSCellularPlanLabelTableViewCell alloc] initWithStyle:0 reuseIdentifier:@"plan"];
  v7 = -[TSCellularPlanLabelsViewController getPendingLabelAtIndex:](self, "getPendingLabelAtIndex:", [pathCopy section]);
  label = [v7 label];

  [(TSCellularPlanLabelTableViewCell *)v6 setAccessoryType:1];
  planItemBadges = self->_planItemBadges;
  section = [pathCopy section];

  v11 = [(NSArray *)planItemBadges objectAtIndex:section];
  [(TSCellularPlanLabelTableViewCell *)v6 setLabel:label badge:v11];

  traitCollection = [(TSCellularPlanLabelsViewController *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  if (userInterfaceStyle == 1)
  {
    v14 = [MEMORY[0x277D75348] colorWithWhite:0.95 alpha:1.0];
    [(TSCellularPlanLabelTableViewCell *)v6 setBackgroundColor:v14];
  }

  return v6;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  v6 = [SSLabelPickerViewController alloc];
  v7 = -[TSCellularPlanLabelsViewController getPlanItemByIndex:](self, "getPlanItemByIndex:", [pathCopy section]);
  v8 = -[TSCellularPlanLabelsViewController getPendingLabelAtIndex:](self, "getPendingLabelAtIndex:", [pathCopy section]);
  getPredefinedUserLabels = [(TSCellularPlanLabelsViewController *)self getPredefinedUserLabels];
  v10 = [(SSLabelPickerViewController *)v6 initWithAssociatedPlanItem:v7 initialLabel:v8 predefinedUserLabels:getPredefinedUserLabels];
  [(TSCellularPlanLabelsViewController *)self setLabelPickerViewController:v10];

  navigationController = [(TSCellularPlanLabelsViewController *)self navigationController];
  labelPickerViewController = [(TSCellularPlanLabelsViewController *)self labelPickerViewController];
  [navigationController pushViewController:labelPickerViewController animated:1];

  tableView = [(OBTableWelcomeController *)self tableView];
  [tableView deselectRowAtIndexPath:pathCopy animated:1];
}

- (void)_cancelButtonTapped
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained userDidTapCancel];
}

- (void)_doneButtonTapped
{
  view = [(TSCellularPlanLabelsViewController *)self view];
  [view setUserInteractionEnabled:0];

  objc_initWeak(&location, self);
  v4 = dispatch_get_global_queue(2, 0);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __55__TSCellularPlanLabelsViewController__doneButtonTapped__block_invoke;
  v5[3] = &unk_279B44400;
  objc_copyWeak(&v6, &location);
  dispatch_async(v4, v5);

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __55__TSCellularPlanLabelsViewController__doneButtonTapped__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __55__TSCellularPlanLabelsViewController__doneButtonTapped__block_invoke_2;
  v2[3] = &unk_279B44578;
  v2[4] = WeakRetained;
  [WeakRetained savePlanLabels:v2];
}

void __55__TSCellularPlanLabelsViewController__doneButtonTapped__block_invoke_2(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__TSCellularPlanLabelsViewController__doneButtonTapped__block_invoke_3;
  block[3] = &unk_279B44578;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __55__TSCellularPlanLabelsViewController__doneButtonTapped__block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 setUserInteractionEnabled:1];

  v3 = [*(a1 + 32) delegate];
  [v3 viewControllerDidComplete:*(a1 + 32)];
}

- (TSSIMSetupFlowDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)viewWillAppear:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = 138412802;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  v8 = 2080;
  v9 = "[TSCellularPlanLabelsViewController viewWillAppear:]";
  _os_log_debug_impl(&dword_262AA8000, log, OS_LOG_TYPE_DEBUG, "[Db] Chosen labels %@, %@ duplicated, disabling the continue button @%s", &v4, 0x20u);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)setPendingLabel:(uint64_t)a1 forPlanItem:(void *)a2 .cold.1(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = [a2 iccid];
  v10 = [a2 uuid];
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x2Au);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)prepareLabels:(void *)a1 .cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 objectAtIndex:0];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)prepareLabels:(void *)a1 .cold.2(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 objectAtIndex:1];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

void __46__TSCellularPlanLabelsViewController_prepare___block_invoke_2_cold_1(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "[TSCellularPlanLabelsViewController prepare:]_block_invoke";
  _os_log_error_impl(&dword_262AA8000, log, OS_LOG_TYPE_ERROR, "[E]No need setup @%s", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void __46__TSCellularPlanLabelsViewController_prepare___block_invoke_2_cold_2(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "[TSCellularPlanLabelsViewController prepare:]_block_invoke_2";
  _os_log_error_impl(&dword_262AA8000, log, OS_LOG_TYPE_ERROR, "[E]invalid self @%s", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end