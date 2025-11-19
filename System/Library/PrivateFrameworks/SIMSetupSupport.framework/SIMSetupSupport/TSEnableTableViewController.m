@interface TSEnableTableViewController
- (BOOL)_areAllInstallingPlansBeEnabled;
- (TSEnableTableViewController)initWithEnablingPlanInfo:(id)a3;
- (TSEnableTableViewController)initWithInfos:(id)a3;
- (TSSIMSetupFlowDelegate)delegate;
- (id)_titleForItem:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)_doneButtonTapped;
- (void)_getTraveleSIMStateWithCompletion:(id)a3;
- (void)_maybeDismissSelf;
- (void)_prepareForEnablingItem:(id)a3;
- (void)_prepareForInstallingItems:(id)a3;
- (void)_refreshTableView;
- (void)_skipButtonTapped;
- (void)_updateButtonStatus;
- (void)_updateEnablePlanItems;
- (void)prepare:(id)a3;
- (void)scrollViewDidEndDecelerating:(id)a3;
- (void)tableView:(id)a3 didDeselectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation TSEnableTableViewController

- (TSEnableTableViewController)initWithInfos:(id)a3
{
  v5 = a3;
  v6 = +[TSCellularPlanManagerCache sharedInstance];
  v7 = [v6 planItems];

  v8 = [v7 count];
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = v9;
  if (v8 <= 1)
  {
    v11 = @"CELLULAR_PLAN_ENABLE_ONE_PLAN_TITLE";
  }

  else
  {
    v11 = @"CELLULAR_PLAN_ENABLE_MULTI_PLAN_TITLE";
  }

  if (v8 <= 1)
  {
    v12 = @"CELLULAR_PLAN_ENABLE_ONE_PLAN_DETAIL";
  }

  else
  {
    v12 = @"CELLULAR_PLAN_ENABLE_MULTI_PLAN_DETAIL";
  }

  v13 = [v9 localizedStringForKey:v11 value:&stru_28753DF48 table:@"Localizable"];

  v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v15 = [v14 localizedStringForKey:v12 value:&stru_28753DF48 table:@"Localizable"];

  v19.receiver = self;
  v19.super_class = TSEnableTableViewController;
  v16 = [(OBTableWelcomeController *)&v19 initWithTitle:v13 detailText:v15 symbolName:@"antenna.radiowaves.left.and.right" adoptTableViewScrollView:1];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_installInfos, a3);
  }

  return v17;
}

- (TSEnableTableViewController)initWithEnablingPlanInfo:(id)a3
{
  v74[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"CELLULAR_PLAN_ENABLEMENT_SELECTION_FOR_TURN_ON_A_SIM_TITLE" value:&stru_28753DF48 table:@"Localizable"];

  v7 = [v4 planItem];
  v8 = [v7 phoneNumber];
  v9 = [v8 formattedPhoneNumber];
  v10 = [v9 length];

  if (v10)
  {
    v11 = MEMORY[0x277CCACA8];
    v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v13 = [v12 localizedStringForKey:@"CELLULAR_PLAN_ENABLEMENT_SELECTION_FOR_TURN_ON_A_SIM_DETAIL_WITH_PHONE_NUMBER_%@" value:&stru_28753DF48 table:@"Localizable"];
    v14 = [v4 planItem];
    [v14 phoneNumber];
    v15 = self;
    v17 = v16 = v4;
    v18 = [v17 formattedPhoneNumber];
    v19 = [v11 stringWithFormat:v13, v18];

    v4 = v16;
    self = v15;

    v20 = MEMORY[0x277CCACA8];
    v21 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v22 = [v21 localizedStringForKey:@"CELLULAR_PLAN_ENABLEMENT_TURN_OFF_%@" value:&stru_28753DF48 table:@"Localizable"];
    v23 = [v4 planItem];
    v24 = [v23 phoneNumber];
LABEL_5:
    v37 = v24;
    v38 = [v24 formattedPhoneNumber];
LABEL_6:
    v39 = v38;
    v40 = [v20 stringWithFormat:v22, v38];
    secondaryButtonDetail = self->_secondaryButtonDetail;
    self->_secondaryButtonDetail = v40;

    goto LABEL_7;
  }

  v25 = [v4 planItem];
  v26 = [v25 cachedPhoneNumber];
  v27 = [v26 formattedPhoneNumber];
  v28 = [v27 length];

  if (v28)
  {
    v29 = MEMORY[0x277CCACA8];
    v30 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v31 = [v30 localizedStringForKey:@"CELLULAR_PLAN_ENABLEMENT_SELECTION_FOR_TURN_ON_A_SIM_DETAIL_WITH_PHONE_NUMBER_%@" value:&stru_28753DF48 table:@"Localizable"];
    v32 = [v4 planItem];
    [v32 cachedPhoneNumber];
    v33 = self;
    v35 = v34 = v4;
    v36 = [v35 formattedPhoneNumber];
    v19 = [v29 stringWithFormat:v31, v36];

    v4 = v34;
    self = v33;

    v20 = MEMORY[0x277CCACA8];
    v21 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v22 = [v21 localizedStringForKey:@"CELLULAR_PLAN_ENABLEMENT_TURN_OFF_%@" value:&stru_28753DF48 table:@"Localizable"];
    v23 = [v4 planItem];
    v24 = [v23 cachedPhoneNumber];
    goto LABEL_5;
  }

  v49 = [v4 planItem];
  v50 = [v49 userLabel];
  v51 = [v50 label];
  v52 = [v51 length];

  if (v52)
  {
    v53 = MEMORY[0x277CCACA8];
    v54 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v55 = [v54 localizedStringForKey:@"CELLULAR_PLAN_ENABLEMENT_SELECTION_FOR_TURN_ON_A_SIM_DETAIL_%@" value:&stru_28753DF48 table:@"Localizable"];
    v56 = [v4 planItem];
    [v56 userLabel];
    v57 = self;
    v59 = v58 = v4;
    v60 = [v59 label];
    v19 = [v53 stringWithFormat:v55, v60];

    v4 = v58;
    self = v57;

    v20 = MEMORY[0x277CCACA8];
LABEL_14:
    v21 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v22 = [v21 localizedStringForKey:@"CELLULAR_PLAN_ENABLEMENT_TURN_OFF_%@" value:&stru_28753DF48 table:@"Localizable"];
    v23 = [v4 planItem];
    v37 = [v23 userLabel];
    v38 = [v37 label];
    goto LABEL_6;
  }

  v61 = [v4 planItem];
  v62 = [v61 carrierName];
  v63 = [v62 length];

  if (v63)
  {
    v64 = MEMORY[0x277CCACA8];
    v65 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v66 = [v65 localizedStringForKey:@"CELLULAR_PLAN_ENABLEMENT_SELECTION_FOR_TURN_ON_A_SIM_DETAIL_%@" value:&stru_28753DF48 table:@"Localizable"];
    v67 = [v4 planItem];
    [v67 carrierName];
    v68 = self;
    v70 = v69 = v4;
    v19 = [v64 stringWithFormat:v66, v70];

    v4 = v69;
    self = v68;

    v20 = MEMORY[0x277CCACA8];
    goto LABEL_14;
  }

  v71 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v19 = [v71 localizedStringForKey:@"CELLULAR_PLAN_ENABLEMENT_SELECTION_FOR_TURN_ON_A_SIM_DETAIL" value:&stru_28753DF48 table:@"Localizable"];

  v21 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v72 = [v21 localizedStringForKey:@"CELLULAR_PLAN_ENABLEMENT_SELECTION_NO_CHANGE" value:&stru_28753DF48 table:@"Localizable"];
  v22 = self->_secondaryButtonDetail;
  self->_secondaryButtonDetail = v72;
LABEL_7:

  v73.receiver = self;
  v73.super_class = TSEnableTableViewController;
  v42 = [(OBTableWelcomeController *)&v73 initWithTitle:v6 detailText:v19 symbolName:@"antenna.radiowaves.left.and.right" adoptTableViewScrollView:1];
  if (v42)
  {
    v74[0] = v4;
    v43 = [MEMORY[0x277CBEA60] arrayWithObjects:v74 count:1];
    installInfos = v42->_installInfos;
    v42->_installInfos = v43;

    v45 = [v4 targetIccid];
    enablingIccid = v42->_enablingIccid;
    v42->_enablingIccid = v45;
  }

  v47 = *MEMORY[0x277D85DE8];
  return v42;
}

- (void)viewDidLoad
{
  v31.receiver = self;
  v31.super_class = TSEnableTableViewController;
  [(TSOBTableWelcomeController *)&v31 viewDidLoad];
  v3 = [(OBBaseWelcomeController *)self navigationItem];
  [v3 setHidesBackButton:1 animated:0];

  v4 = +[SSOBBoldTrayButton boldButton];
  continueButton = self->_continueButton;
  self->_continueButton = v4;

  [(SSOBBoldTrayButton *)self->_continueButton addTarget:self action:sel__doneButtonTapped forControlEvents:64];
  v6 = self->_continueButton;
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"CONTINUE" value:&stru_28753DF48 table:@"Localizable"];
  [(SSOBBoldTrayButton *)v6 setTitle:v8 forState:0];

  v9 = [(TSEnableTableViewController *)self buttonTray];
  [v9 addButton:self->_continueButton];

  if (![(NSString *)self->_enablingIccid length])
  {
    v10 = +[TSUtilities inBuddy];
    v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v12 = v11;
    if (v10)
    {
      v13 = @"SET_UP_LATER_IN_SETTINGS";
    }

    else
    {
      v13 = @"NOT_NOW";
    }

    v14 = [v11 localizedStringForKey:v13 value:&stru_28753DF48 table:@"Localizable"];
    secondaryButtonDetail = self->_secondaryButtonDetail;
    self->_secondaryButtonDetail = v14;
  }

  v16 = +[SSOBLinkTrayButton linkButton];
  skipButton = self->_skipButton;
  self->_skipButton = v16;

  [(SSOBLinkTrayButton *)self->_skipButton setTitle:self->_secondaryButtonDetail forState:0];
  [(SSOBLinkTrayButton *)self->_skipButton addTarget:self action:sel__skipButtonTapped forControlEvents:64];
  v18 = [(TSEnableTableViewController *)self buttonTray];
  [v18 addButton:self->_skipButton];

  v19 = objc_alloc(MEMORY[0x277D75B40]);
  v20 = [v19 initWithFrame:2 style:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [(OBTableWelcomeController *)self setTableView:v20];

  v21 = [(OBTableWelcomeController *)self tableView];
  [v21 setTranslatesAutoresizingMaskIntoConstraints:0];

  v22 = [(OBTableWelcomeController *)self tableView];
  [v22 setRowHeight:*MEMORY[0x277D76F30]];

  v23 = [(OBTableWelcomeController *)self tableView];
  v24 = [MEMORY[0x277D75348] clearColor];
  [v23 setBackgroundColor:v24];

  v25 = [(OBTableWelcomeController *)self tableView];
  [v25 setEstimatedRowHeight:1.0];

  if (![(NSString *)self->_enablingIccid length])
  {
    v26 = [(OBTableWelcomeController *)self tableView];
    [v26 setAllowsMultipleSelection:1];
  }

  v27 = [(OBTableWelcomeController *)self tableView];
  [v27 setDataSource:self];

  v28 = [(OBTableWelcomeController *)self tableView];
  [v28 setDelegate:self];

  v29 = [(OBTableWelcomeController *)self tableView];
  [v29 setScrollEnabled:1];

  v30 = [(OBTableWelcomeController *)self tableView];
  [v30 reloadData];
}

- (void)viewDidLayoutSubviews
{
  v3 = [(TSEnableTableViewController *)self view];
  [v3 layoutIfNeeded];

  v4.receiver = self;
  v4.super_class = TSEnableTableViewController;
  [(OBTableWelcomeController *)&v4 viewDidLayoutSubviews];
}

- (void)prepare:(id)a3
{
  v4 = a3;
  if (+[TSUtilities isPad])
  {
    v4[2](v4, 0);
  }

  else if ([(NSString *)self->_enablingIccid length])
  {
    [(TSEnableTableViewController *)self _prepareForEnablingItem:v4];
  }

  else
  {
    [(TSEnableTableViewController *)self _prepareForInstallingItems:v4];
  }
}

- (void)_prepareForEnablingItem:(id)a3
{
  v48 = *MEMORY[0x277D85DE8];
  v31 = a3;
  v4 = [MEMORY[0x277CBEB58] set];
  v5 = [MEMORY[0x277CBEB18] array];
  v6 = [MEMORY[0x277CF96D8] sharedManager];
  v7 = [v6 planItemsShouldUpdate:0];

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v35 objects:v47 count:16];
  if (!v9)
  {
    v11 = 0;
    goto LABEL_18;
  }

  v10 = v9;
  v11 = 0;
  v12 = *v36;
  do
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v36 != v12)
      {
        objc_enumerationMutation(v8);
      }

      v14 = *(*(&v35 + 1) + 8 * i);
      if ([v14 isSelectable] && objc_msgSend(v14, "transferredStatus") != 2 && objc_msgSend(v14, "transferredStatus") != 4)
      {
        if ([v14 isSelected])
        {
          [v4 addObject:v14];
        }

        else if ([(NSString *)self->_enablingIccid length])
        {
          enablingIccid = self->_enablingIccid;
          v16 = [v14 iccid];
          LOBYTE(enablingIccid) = [(NSString *)enablingIccid isEqualToString:v16];

          v11 |= enablingIccid;
          continue;
        }

        [v5 addObject:v14];
      }
    }

    v10 = [v8 countByEnumeratingWithState:&v35 objects:v47 count:16];
  }

  while (v10);
LABEL_18:

  v17 = [v5 copy];
  allPlans = self->_allPlans;
  self->_allPlans = v17;

  v19 = [v4 copy];
  originalEnabledPlans = self->_originalEnabledPlans;
  self->_originalEnabledPlans = v19;

  v21 = +[TSCoreTelephonyClientCache sharedInstance];
  v22 = [v21 deviceSupportsHydra];

  v23 = 1;
  if (v22)
  {
    v23 = 2;
  }

  self->_maxAllowedeSIMCount = v23;
  v24 = _TSLogDomain();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    if (v22)
    {
      v25 = @"YES";
    }

    else
    {
      v25 = @"NO";
    }

    v26 = [v5 count];
    v27 = [v4 count];
    *buf = 138413058;
    v40 = v25;
    v41 = 2048;
    v42 = v26;
    v43 = 2048;
    v44 = v27;
    v45 = 2080;
    v46 = "[TSEnableTableViewController _prepareForEnablingItem:]";
    _os_log_impl(&dword_262AA8000, v24, OS_LOG_TYPE_DEFAULT, "supports hydra: %@, selectable plans: %lu, enabled plans: %lu @%s", buf, 0x2Au);
  }

  if (v31)
  {
    if ([(NSString *)self->_enablingIccid length])
    {
      if ([v4 count] == 2)
      {
        if ((v22 & 1) == 0)
        {
          v28 = _TSLogDomain();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
          {
            [TSEnableTableViewController _prepareForEnablingItem:v28];
          }

          goto LABEL_34;
        }
      }

      else
      {
        v28 = _TSLogDomain();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
        {
          [TSEnableTableViewController _prepareForEnablingItem:v28];
        }

LABEL_34:
      }
    }

    else
    {
      v29 = [v5 count];
      v11 = v29 > [v4 count];
    }

    self->_needShow = v11 & 1;
    objc_initWeak(buf, self);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __55__TSEnableTableViewController__prepareForEnablingItem___block_invoke;
    block[3] = &unk_279B454B8;
    v33 = v31;
    objc_copyWeak(&v34, buf);
    dispatch_async(MEMORY[0x277D85CD0], block);
    objc_destroyWeak(&v34);

    objc_destroyWeak(buf);
  }

  v30 = *MEMORY[0x277D85DE8];
}

void __55__TSEnableTableViewController__prepareForEnablingItem___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  (*(v1 + 16))(v1, [WeakRetained needShow]);
}

- (void)_prepareForInstallingItems:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __58__TSEnableTableViewController__prepareForInstallingItems___block_invoke;
  v6[3] = &unk_279B44EE8;
  v5 = v4;
  v7 = v5;
  objc_copyWeak(&v8, &location);
  [(TSEnableTableViewController *)self _getTraveleSIMStateWithCompletion:v6];
  objc_destroyWeak(&v8);

  objc_destroyWeak(&location);
}

void __58__TSEnableTableViewController__prepareForInstallingItems___block_invoke(uint64_t a1, char a2)
{
  v12 = *MEMORY[0x277D85DE8];
  if ((a2 & 1) != 0 || !_os_feature_enabled_impl())
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v9 = WeakRetained;
    if (WeakRetained)
    {
      v6 = [WeakRetained _areAllInstallingPlansBeEnabled];
      v7 = *(a1 + 32);
      if (v6)
      {
        (*(v7 + 16))(*(a1 + 32), 0);
      }

      else
      {
        [v9 _prepareForEnablingItem:v7];
      }
    }

    else
    {
      (*(*(a1 + 32) + 16))(*(a1 + 32), 0);
    }

    v8 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v3 = _TSLogDomain();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v11 = "[TSEnableTableViewController _prepareForInstallingItems:]_block_invoke";
      _os_log_impl(&dword_262AA8000, v3, OS_LOG_TYPE_DEFAULT, "Skip showing enablement pane for travel eSIM @%s", buf, 0xCu);
    }

    (*(*(a1 + 32) + 16))();
    v4 = *MEMORY[0x277D85DE8];
  }
}

- (void)_doneButtonTapped
{
  [(OBWelcomeController *)self _showButtonTraySpinnerWithBusyText:&stru_28753DF48];
  v3 = [(TSEnableTableViewController *)self view];
  [v3 setUserInteractionEnabled:0];

  [(TSEnableTableViewController *)self _updateEnablePlanItems];
}

- (void)_skipButtonTapped
{
  v3 = [(TSEnableTableViewController *)self view];
  [v3 setUserInteractionEnabled:0];

  [(TSEnableTableViewController *)self _maybeDismissSelf];
}

- (void)_updateEnablePlanItems
{
  v33 = *MEMORY[0x277D85DE8];
  if ([(NSString *)self->_enablingIccid length])
  {
    [MEMORY[0x277CBEB58] setWithArray:self->_allPlans];
  }

  else
  {
    [MEMORY[0x277CBEB58] set];
  }
  v3 = ;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v4 = [(OBTableWelcomeController *)self tableView];
  v5 = [v4 indexPathsForSelectedRows];

  v6 = [v5 countByEnumeratingWithState:&v22 objects:v32 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v23;
    *&v7 = 136315650;
    v21 = v7;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = -[NSArray objectAtIndex:](self->_allPlans, "objectAtIndex:", [*(*(&v22 + 1) + 8 * i) row]);
        v12 = _TSLogDomain();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = [(NSString *)self->_enablingIccid length];
          *buf = v21;
          v14 = "un";
          if (!v13)
          {
            v14 = "";
          }

          v27 = v14;
          v28 = 2112;
          v29 = v11;
          v30 = 2080;
          v31 = "[TSEnableTableViewController _updateEnablePlanItems]";
          _os_log_impl(&dword_262AA8000, v12, OS_LOG_TYPE_DEFAULT, "%sselect plan : %@ @%s", buf, 0x20u);
        }

        if ([(NSString *)self->_enablingIccid length])
        {
          [v3 removeObject:v11];
        }

        else
        {
          [v3 addObject:v11];
        }
      }

      v8 = [v5 countByEnumeratingWithState:&v22 objects:v32 count:16];
    }

    while (v8);
  }

  if ([(NSString *)self->_enablingIccid length])
  {
    v15 = [(NSArray *)self->_installInfos objectAtIndexedSubscript:0];
    v16 = [v15 planItem];
    [v3 addObject:v16];
  }

  v17 = [v3 allObjects];
  selectedItems = self->_selectedItems;
  self->_selectedItems = v17;

  if ([v3 isEqualToSet:self->_originalEnabledPlans])
  {
    v19 = _TSLogDomain();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v27 = "[TSEnableTableViewController _updateEnablePlanItems]";
      _os_log_impl(&dword_262AA8000, v19, OS_LOG_TYPE_DEFAULT, "no change @%s", buf, 0xCu);
    }
  }

  else
  {
    v19 = +[TSCellularPlanManagerCache sharedInstance];
    [v19 didEnablePlanItems:self->_selectedItems];
  }

  [(TSEnableTableViewController *)self _maybeDismissSelf];
  v20 = *MEMORY[0x277D85DE8];
}

- (void)_maybeDismissSelf
{
  v14[1] = *MEMORY[0x277D85DE8];
  if ([(NSArray *)self->_installInfos count]== 1 && [(NSArray *)self->_selectedItems count]== 1)
  {
    v3 = [(NSArray *)self->_installInfos objectAtIndexedSubscript:0];
    v4 = [v3 targetIccid];
    v5 = [(NSArray *)self->_selectedItems objectAtIndexedSubscript:0];
    v6 = [v5 iccid];
    if (![v4 isEqualToString:v6])
    {

      goto LABEL_7;
    }

    v7 = [(NSArray *)self->_installInfos objectAtIndexedSubscript:0];
    v8 = [v7 activatingState];

    if (!v8)
    {
      v9 = [MEMORY[0x277CCAB98] defaultCenter];
      [v9 addObserver:self selector:sel__updateTrayButtonText_ name:@"esim.install.state.changed" object:0];

      v3 = [MEMORY[0x277CCAB98] defaultCenter];
      v13 = @"InstallStateKey";
      v14[0] = @"PostInstall";
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
      [v3 postNotificationName:@"esim.install.state.changed" object:0 userInfo:v10];

LABEL_7:
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained viewControllerDidComplete:self];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_refreshTableView
{
  v2 = self;
  v42 = *MEMORY[0x277D85DE8];
  v3 = [(OBTableWelcomeController *)self tableView];
  v4 = [v3 indexPathsForSelectedRows];
  v35 = [v4 count];

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v5 = [(OBTableWelcomeController *)v2 tableView];
  v6 = [v5 indexPathsForSelectedRows];

  v7 = [v6 countByEnumeratingWithState:&v37 objects:v41 count:16];
  v8 = 0x27FF49000uLL;
  if (v7)
  {
    v9 = v7;
    v10 = 0;
    v11 = *v38;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v38 != v11)
        {
          objc_enumerationMutation(v6);
        }

        v13 = -[NSArray objectAtIndex:](v2->_allPlans, "objectAtIndex:", [*(*(&v37 + 1) + 8 * i) row]);
        if ([v13 type])
        {
          ++v10;
        }
      }

      v9 = [v6 countByEnumeratingWithState:&v37 objects:v41 count:16];
    }

    while (v9);
  }

  else
  {
    v10 = 0;
  }

  v14 = [(OBTableWelcomeController *)v2 tableView];
  v15 = [v14 numberOfSections];

  if (v15)
  {
    v16 = 0;
    while (1)
    {
      v17 = [(OBTableWelcomeController *)v2 tableView];
      v18 = [v17 numberOfRowsInSection:v16];

      if (v18)
      {
        break;
      }

LABEL_26:
      ++v16;
      v32 = [(OBTableWelcomeController *)v2 tableView];
      v33 = [v32 numberOfSections];

      if (v16 >= v33)
      {
        goto LABEL_27;
      }
    }

    v19 = 0;
    v36 = v16;
    while (1)
    {
      v20 = [MEMORY[0x277CCAA70] indexPathForRow:v19 inSection:v16];
      v21 = [(OBTableWelcomeController *)v2 tableView];
      v22 = [v21 cellForRowAtIndexPath:v20];

      v23 = v8;
      v24 = [*(&v2->super.super.super.super.super.super.super.isa + *(v8 + 2848)) objectAtIndex:v19];
      v25 = v2;
      v26 = [(OBTableWelcomeController *)v2 tableView];
      v27 = [v26 indexPathsForSelectedRows];
      v28 = [v27 containsObject:v20];

      if (v28)
      {
        [v22 setAccessoryType:3];
      }

      else
      {
        [v22 setAccessoryType:0];
        if ([v24 type])
        {
          v2 = v25;
          v29 = v35 <= 1 && v10 < v25->_maxAllowedeSIMCount;
          v8 = v23;
          [v22 setUserInteractionEnabled:v29];
          v16 = v36;
          goto LABEL_25;
        }

        [v22 setUserInteractionEnabled:v35 < 2];
      }

      v8 = v23;
      v16 = v36;
      v2 = v25;
LABEL_25:

      ++v19;
      v30 = [(OBTableWelcomeController *)v2 tableView];
      v31 = [v30 numberOfRowsInSection:v16];

      if (v19 >= v31)
      {
        goto LABEL_26;
      }
    }
  }

LABEL_27:
  v34 = *MEMORY[0x277D85DE8];
}

- (void)_updateButtonStatus
{
  v3 = [(OBTableWelcomeController *)self tableView];
  v4 = [v3 indexPathsForSelectedRows];
  v5 = [v4 count];

  [(OBBoldTrayButton *)self->_continueButton setEnabled:v5 != 0];
  [(SSOBBoldTrayButton *)self->_continueButton setUserInteractionEnabled:v5 != 0];
  if (![(NSString *)self->_enablingIccid length])
  {
    v6 = v5 == 0;
    [(SSOBLinkTrayButton *)self->_skipButton setEnabled:v6];
    skipButton = self->_skipButton;

    [(SSOBLinkTrayButton *)skipButton setUserInteractionEnabled:v6];
  }
}

- (void)_getTraveleSIMStateWithCompletion:(id)a3
{
  v4 = a3;
  if ([(NSArray *)self->_installInfos count]== 1)
  {
    v5 = [(NSArray *)self->_installInfos objectAtIndexedSubscript:0];
    v6 = [v5 eSIMTravelState];

    if (v6)
    {
      v7 = [v5 eSIMTravelState];
      v4[2](v4, [v7 BOOLValue] ^ 1);
    }

    else
    {
      v8 = +[TSCoreTelephonyClientCache sharedInstance];
      v7 = [v8 getCoreTelephonyClient];

      v9 = [v5 targetIccid];
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __65__TSEnableTableViewController__getTraveleSIMStateWithCompletion___block_invoke;
      v10[3] = &unk_279B447D8;
      v11 = v5;
      v12 = v4;
      [v7 getTravelInfoForIccid:v9 completion:v10];
    }
  }

  else
  {
    v4[2](v4, 1);
  }
}

void __65__TSEnableTableViewController__getTraveleSIMStateWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _TSLogDomain();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    v10 = v3;
    v11 = 2080;
    v12 = "[TSEnableTableViewController _getTraveleSIMStateWithCompletion:]_block_invoke";
    _os_log_impl(&dword_262AA8000, v4, OS_LOG_TYPE_DEFAULT, "CTPlanTravelDetails (%@) @%s", &v9, 0x16u);
  }

  v5 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v3, "isTraveleSIM")}];
  [*(a1 + 32) setESIMTravelState:v5];

  [*(a1 + 32) setIsUserInHomeCountry:{objc_msgSend(v3, "isUserTraveling") ^ 1}];
  v6 = [v3 isDataOnly];
  if (v6)
  {
    v7 = [v3 isDataOnly];
    [*(a1 + 32) setIsDataOnly:{objc_msgSend(v7, "BOOLValue")}];
  }

  else
  {
    [*(a1 + 32) setIsDataOnly:0];
  }

  if ([v3 isGlobalMVNO])
  {
    [*(a1 + 32) setWaitForPhoneNumber:MEMORY[0x277CBEC28]];
    [*(a1 + 32) useGMVNOAsTravelSIM];
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    (*(*(a1 + 40) + 16))(*(a1 + 40), [v3 isTraveleSIM] ^ 1);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)_areAllInstallingPlansBeEnabled
{
  v27 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v2 = self->_installInfos;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v19;
    *&v4 = 138412546;
    v17 = v4;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v18 + 1) + 8 * i);
        if (!isFailedState([v8 status]))
        {
          v9 = [v8 planItem];

          if (v9)
          {
            v10 = [v8 planItem];
            v11 = [v10 isSelected];

            if (!v11)
            {
              v14 = 0;
              goto LABEL_16;
            }
          }

          else
          {
            v12 = _TSLogDomain();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
            {
              v13 = [v8 identifier];
              *buf = v17;
              v23 = v13;
              v24 = 2080;
              v25 = "[TSEnableTableViewController _areAllInstallingPlansBeEnabled]";
              _os_log_error_impl(&dword_262AA8000, v12, OS_LOG_TYPE_ERROR, "[E]plan %@ has no item @%s", buf, 0x16u);
            }
          }
        }
      }

      v5 = [(NSArray *)v2 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v5);
  }

  v14 = 1;
LABEL_16:

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

- (TSSIMSetupFlowDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  [(TSEnableTableViewController *)self _refreshTableView:a3];

  [(TSEnableTableViewController *)self _updateButtonStatus];
}

- (void)tableView:(id)a3 didDeselectRowAtIndexPath:(id)a4
{
  [(TSEnableTableViewController *)self _refreshTableView:a3];

  [(TSEnableTableViewController *)self _updateButtonStatus];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"plan%ld", objc_msgSend(v7, "row")];
  v9 = [v6 dequeueReusableCellWithIdentifier:v8];
  if (!v9)
  {
    v9 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:3 reuseIdentifier:v8];
  }

  v10 = [v9 defaultConfig];
  v11 = -[NSArray objectAtIndex:](self->_allPlans, "objectAtIndex:", [v7 row]);
  v12 = MEMORY[0x277D755B8];
  if ([v11 type])
  {
    v13 = @"esim";
  }

  else
  {
    v13 = @"simcard";
  }

  v14 = [v12 systemImageNamed:v13];
  [v10 setImage:v14];

  v15 = [(TSEnableTableViewController *)self _titleForItem:v11];
  [v10 setText:v15];

  v16 = [(NSString *)self->_enablingIccid length];
  v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v18 = v17;
  if (v16)
  {
    v19 = @"ON";
  }

  else
  {
    v19 = @"AVAILABLE";
  }

  v20 = [v17 localizedStringForKey:v19 value:&stru_28753DF48 table:@"Localizable"];
  [v10 setSecondaryText:v20];

  if ([(NSString *)self->_enablingIccid length])
  {
    v21 = v6;
    if (![(NSArray *)self->_allPlans containsObject:v11])
    {
      goto LABEL_16;
    }

    v22 = [v11 iccid];
    v23 = [v22 isEqualToString:self->_enablingIccid];

    if (!v23)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v21 = v6;
    if (![(NSSet *)self->_originalEnabledPlans containsObject:v11])
    {
      goto LABEL_16;
    }
  }

  v24 = [v21 indexPathsForSelectedRows];
  v25 = [v24 containsObject:v7];

  if ((v25 & 1) == 0)
  {
    [(TSEnableTableViewController *)self selectRowAtIndexPath:v7 animated:0 scrollPosition:0];
  }

LABEL_16:
  [v9 setContentConfiguration:v10];

  return v9;
}

uint64_t __99__TSEnableTableViewController_UITableViewDataSource__selectRowAtIndexPath_animated_scrollPosition___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _refreshTableView];
  v2 = *(a1 + 32);

  return [v2 _updateButtonStatus];
}

- (id)_titleForItem:(id)a3
{
  v4 = a3;
  installInfos = self->_installInfos;
  v6 = [v4 iccid];
  v7 = findPlanInfoWithTargetIccid(installInfos, v6);

  if (v7)
  {
    [v7 text];
  }

  else
  {
    [TSUtilities planItemText:v4];
  }
  v8 = ;
  if (!+[TSUtilities isPad])
  {
    v9 = [v7 phoneNumber];
    v10 = [v9 length];

    v11 = v7;
    if (v10)
    {
      goto LABEL_6;
    }

    v16 = [v7 displayPlan];
    v17 = [v16 phoneNumber];
    v18 = [v17 length];

    if (v18)
    {
      v13 = [v7 displayPlan];
      v19 = [v13 phoneNumber];
      v15 = [v19 formattedPhoneNumber];

      v8 = v19;
      goto LABEL_11;
    }

    v21 = [v4 phoneNumber];
    v22 = [v21 length];

    v11 = v4;
    if (v22)
    {
LABEL_6:
      v12 = [v11 phoneNumber];
LABEL_7:
      v13 = v12;
      v14 = [v12 formattedPhoneNumber];
LABEL_8:
      v15 = v14;
LABEL_11:

      v8 = v15;
      goto LABEL_12;
    }

    v23 = [v4 cachedPhoneNumber];
    v24 = [v23 length];

    if (v24)
    {
      v12 = [v4 cachedPhoneNumber];
      goto LABEL_7;
    }

    v25 = [v7 displayPlan];
    v26 = [v25 label];
    v27 = [v26 length];

    if (v27)
    {
      v28 = [v7 displayPlan];
LABEL_22:
      v13 = v28;
      v14 = [v28 label];
      goto LABEL_8;
    }

    v29 = [v4 userLabel];
    v30 = [v29 label];
    v31 = [v30 length];

    if (v31)
    {
      v28 = [v4 userLabel];
      goto LABEL_22;
    }
  }

LABEL_12:

  return v8;
}

- (void)scrollViewDidEndDecelerating:(id)a3
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __82__TSEnableTableViewController_UIScrollViewDelegate__scrollViewDidEndDecelerating___block_invoke;
  block[3] = &unk_279B44578;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __82__TSEnableTableViewController_UIScrollViewDelegate__scrollViewDidEndDecelerating___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _refreshTableView];
  v2 = *(a1 + 32);

  return [v2 _updateButtonStatus];
}

- (void)_prepareForEnablingItem:(os_log_t)log .cold.1(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "[TSEnableTableViewController _prepareForEnablingItem:]";
  _os_log_fault_impl(&dword_262AA8000, log, OS_LOG_TYPE_FAULT, "[F]No need to launch enable plan flow when there is only 1 plan enabled @%s", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)_prepareForEnablingItem:(os_log_t)log .cold.2(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "[TSEnableTableViewController _prepareForEnablingItem:]";
  _os_log_fault_impl(&dword_262AA8000, log, OS_LOG_TYPE_FAULT, "[F]No need launch enable plan flow for non-hydra device @%s", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end