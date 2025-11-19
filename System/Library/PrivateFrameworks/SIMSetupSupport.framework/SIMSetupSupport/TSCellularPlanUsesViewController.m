@interface TSCellularPlanUsesViewController
+ (BOOL)sInPrivateNetworkMode:(id)a3;
+ (id)sGetSelectedPlanItems;
- (TSCellularPlanUsesViewController)initWithType:(unint64_t)a3 withDoneButton:(BOOL)a4;
- (TSSIMSetupFlowDelegate)delegate;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_doneButtonTapped;
- (void)_maybeEnableDoneButton;
- (void)prepare:(id)a3;
- (void)saveDefaultUse:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayFooterView:(id)a4 forSection:(int64_t)a5;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation TSCellularPlanUsesViewController

- (TSCellularPlanUsesViewController)initWithType:(unint64_t)a3 withDoneButton:(BOOL)a4
{
  v4 = a4;
  v7 = +[TSCellularPlanUsesViewController sGetSelectedPlanItems];
  v8 = [TSCellularPlanUsesViewController sInPrivateNetworkMode:v7];
  switch(a3)
  {
    case 2uLL:
      v19 = MEMORY[0x277D755B8];
      v30 = v4;
      v20 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v21 = [v19 imageNamed:@"imessage" inBundle:v20 withConfiguration:0];

      v22 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v23 = [v22 localizedStringForKey:@"CELLULAR_PLAN_IMESSAGE_TITLE" value:&stru_28753DF48 table:@"Localizable"];
      v24 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v25 = [v24 localizedStringForKey:@"CELLULAR_PLAN_IMESSAGE_DETAIL" value:&stru_28753DF48 table:@"Localizable"];
      v31.receiver = self;
      v31.super_class = TSCellularPlanUsesViewController;
      self = [(OBTableWelcomeController *)&v31 initWithTitle:v23 detailText:v25 icon:v21 adoptTableViewScrollView:0];

      v4 = v30;
      v26 = objc_opt_new();
      chosenUseIndexPaths = self->_chosenUseIndexPaths;
      self->_chosenUseIndexPaths = v26;

LABEL_12:
      self->_usesType = a3;
      if (v4)
      {
        v28 = !+[TSUtilities inBuddy];
      }

      else
      {
        v28 = 0;
      }

      self->_hasDoneButton = v28;
      objc_storeStrong(&self->_selectedPlanItems, v7);
      self->_inPrivateNetworkMode = v8;
      goto LABEL_16;
    case 1uLL:
      v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v14 = v13;
      if (v8)
      {
        v15 = [v13 localizedStringForKey:@"CELLULAR_PLAN_DATA_TITLE_PNW" value:&stru_28753DF48 table:@"Localizable"];
        v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v17 = [v16 localizedStringForKey:@"CELLULAR_PLAN_DATA_DETAIL_PNW" value:&stru_28753DF48 table:@"Localizable"];
        v33.receiver = self;
        v33.super_class = TSCellularPlanUsesViewController;
        v18 = [(OBTableWelcomeController *)&v33 initWithTitle:v15 detailText:v17 icon:0 adoptTableViewScrollView:0];
      }

      else
      {
        v15 = [v13 localizedStringForKey:@"CELLULAR_PLAN_DATA_TITLE" value:&stru_28753DF48 table:@"Localizable"];
        v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v17 = [v16 localizedStringForKey:@"CELLULAR_PLAN_DATA_DETAIL" value:&stru_28753DF48 table:@"Localizable"];
        v32.receiver = self;
        v32.super_class = TSCellularPlanUsesViewController;
        v18 = [(OBTableWelcomeController *)&v32 initWithTitle:v15 detailText:v17 icon:0 adoptTableViewScrollView:0];
      }

      self = v18;

      self->_dataSwitchEnabled = 0;
      goto LABEL_12;
    case 0uLL:
      v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v10 = [v9 localizedStringForKey:@"CELLULAR_PLAN_LINE_TITLE" value:&stru_28753DF48 table:@"Localizable"];
      v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v12 = [v11 localizedStringForKey:@"CELLULAR_PLAN_LINE_DETAIL" value:&stru_28753DF48 table:@"Localizable"];
      v34.receiver = self;
      v34.super_class = TSCellularPlanUsesViewController;
      self = [(OBTableWelcomeController *)&v34 initWithTitle:v10 detailText:v12 icon:0 adoptTableViewScrollView:0];

      break;
  }

  if (self)
  {
    goto LABEL_12;
  }

LABEL_16:

  return self;
}

- (void)viewDidLoad
{
  v34[1] = *MEMORY[0x277D85DE8];
  v33.receiver = self;
  v33.super_class = TSCellularPlanUsesViewController;
  [(TSOBTableWelcomeController *)&v33 viewDidLoad];
  hasDoneButton = self->_hasDoneButton;
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = v4;
  if (hasDoneButton)
  {
    v6 = @"DONE";
  }

  else
  {
    v6 = @"CONTINUE";
  }

  v7 = [v4 localizedStringForKey:v6 value:&stru_28753DF48 table:@"Localizable"];

  v8 = +[SSOBBoldTrayButton boldButton];
  doneButton = self->_doneButton;
  self->_doneButton = v8;

  [(SSOBBoldTrayButton *)self->_doneButton addTarget:self action:sel__doneButtonTapped forControlEvents:64];
  [(SSOBBoldTrayButton *)self->_doneButton setTitle:v7 forState:0];
  v10 = [(TSCellularPlanUsesViewController *)self buttonTray];
  [v10 addButton:self->_doneButton];

  if (!self->_inPrivateNetworkMode)
  {
    v11 = objc_alloc(MEMORY[0x277D75B40]);
    v12 = [v11 initWithFrame:2 style:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    [(OBTableWelcomeController *)self setTableView:v12];

    v13 = [(OBTableWelcomeController *)self tableView];
    [v13 setTranslatesAutoresizingMaskIntoConstraints:0];

    v14 = [(OBTableWelcomeController *)self tableView];
    [v14 setRowHeight:*MEMORY[0x277D76F30]];

    v15 = [(OBTableWelcomeController *)self tableView];
    v16 = [MEMORY[0x277D75348] clearColor];
    [v15 setBackgroundColor:v16];

    v17 = [(OBTableWelcomeController *)self tableView];
    [v17 setDataSource:self];

    v18 = [(OBTableWelcomeController *)self tableView];
    [v18 setDelegate:self];

    v19 = [(OBTableWelcomeController *)self tableView];
    [v19 setScrollEnabled:0];
  }

  v20 = self->_usesType == 2;
  v21 = [(OBTableWelcomeController *)self tableView];
  [v21 setAllowsMultipleSelection:v20];

  v22 = [(OBTableWelcomeController *)self tableView];
  [v22 reloadData];

  v23 = [(OBTableWelcomeController *)self tableView];

  if (v23)
  {
    v24 = [(OBTableWelcomeController *)self tableView];
    v25 = [v24 heightAnchor];
    v26 = [(OBTableWelcomeController *)self tableView];
    [v26 contentSize];
    v28 = [v25 constraintEqualToConstant:v27];
    heightConstraint = self->_heightConstraint;
    self->_heightConstraint = v28;

    v30 = MEMORY[0x277CCAAD0];
    v34[0] = self->_heightConstraint;
    v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:1];
    [v30 activateConstraints:v31];
  }

  v32 = *MEMORY[0x277D85DE8];
}

- (void)viewDidLayoutSubviews
{
  v3 = [(TSCellularPlanUsesViewController *)self view];
  [v3 layoutIfNeeded];

  v12.receiver = self;
  v12.super_class = TSCellularPlanUsesViewController;
  [(TSCellularPlanUsesViewController *)&v12 updateViewConstraints];
  if (self->_heightConstraint)
  {
    v4 = [(OBTableWelcomeController *)self tableView];
    [v4 contentSize];
    v6 = v5;

    v7 = [(OBTableWelcomeController *)self tableView];
    [v7 frame];
    v9 = v8;

    if (v6 >= v9)
    {
      v10 = v6;
    }

    else
    {
      v10 = v9;
    }

    [(NSLayoutConstraint *)self->_heightConstraint setConstant:v10];
  }

  v11.receiver = self;
  v11.super_class = TSCellularPlanUsesViewController;
  [(OBTableWelcomeController *)&v11 viewDidLayoutSubviews];
}

+ (id)sGetSelectedPlanItems
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = +[TSCellularPlanManagerCache sharedInstance];
  v3 = [v2 planItems];

  v4 = [MEMORY[0x277CBEB18] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        if ([v10 isSelected])
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v11 = [v4 sortedArrayUsingSelector:sel_compare_];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (BOOL)sInPrivateNetworkMode:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v3);
        }

        if ([TSCellularPlanUsesViewController sInPrivateNetworkModeForItem:*(*(&v9 + 1) + 8 * i), v9])
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v7 = *MEMORY[0x277D85DE8];
  return v4;
}

- (void)prepare:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v10 = _TSLogDomain();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(TSCellularPlanUsesViewController *)self prepare:v10];
    }

    goto LABEL_13;
  }

  if ([(NSArray *)self->_selectedPlanItems count]== 2)
  {
    v5 = objc_alloc(MEMORY[0x277CBEA60]);
    v6 = [(NSArray *)self->_selectedPlanItems objectAtIndex:0];
    v7 = [v6 userLabel];
    v8 = [(NSArray *)self->_selectedPlanItems objectAtIndex:1];
    v9 = [v8 userLabel];
    v10 = [v5 initWithObjects:{v7, v9, 0}];

    v11 = +[TSCellularPlanManagerCache sharedInstance];
    v12 = [v11 getShortLabelsForLabels:v10];
    planItemBadges = self->_planItemBadges;
    self->_planItemBadges = v12;

    if (self->_usesType == 1)
    {
      v4[2](v4, 1);
    }

    else
    {
      objc_initWeak(&location, self);
      v15 = +[TSCoreTelephonyClientCache sharedInstance];
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __44__TSCellularPlanUsesViewController_prepare___block_invoke;
      v16[3] = &unk_279B44750;
      objc_copyWeak(&v18, &location);
      v17 = v4;
      [v15 getSubscriptionInfo:v16];

      objc_destroyWeak(&v18);
      objc_destroyWeak(&location);
    }

LABEL_13:

    goto LABEL_14;
  }

  if ([(NSArray *)self->_selectedPlanItems count]>= 3)
  {
    v14 = _TSLogDomain();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [(TSCellularPlanUsesViewController *)&self->_selectedPlanItems prepare:v14];
    }
  }

  v4[2](v4, 0);
LABEL_14:
}

void __44__TSCellularPlanUsesViewController_prepare___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v24 = a1;
  v25 = a3;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = [WeakRetained selectedPlanItems];

  v8 = [v7 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v31;
    v26 = 1;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v31 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v30 + 1) + 8 * i);
        v14 = [v5 subscriptions];
        v15 = [TSUtilities findSubscriptionContextForCellularPlanItem:v13 fromSubscriptionContexts:v14];

        if ([v15 isSimDataOnly])
        {
          v26 = 0;
        }

        else
        {
          v16 = v13;

          v10 = v16;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v9);
  }

  else
  {
    v10 = 0;
    v26 = 1;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__TSCellularPlanUsesViewController_prepare___block_invoke_2;
  block[3] = &unk_279B44728;
  v28 = *(v24 + 32);
  v29 = v26 & 1;
  dispatch_async(MEMORY[0x277D85CD0], block);
  if ((v26 & 1) == 0 && v10)
  {
    v17 = objc_loadWeakRetained((v24 + 40));
    v18 = [v17 usesType];

    if (!v18)
    {
      v21 = +[TSCellularPlanManagerCache sharedInstance];
      [v21 selectPlanForVoice:v10];
      goto LABEL_19;
    }

    v19 = objc_loadWeakRetained((v24 + 40));
    v20 = [v19 usesType];

    if (v20 == 2)
    {
      v21 = +[TSCellularPlanManagerCache sharedInstance];
      v34 = v10;
      v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v34 count:1];
      [v21 selectPlansForIMessage:v22];

LABEL_19:
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4
{
  v6 = a3;
  if (self->_usesType == 2)
  {
    v7 = 0;
    goto LABEL_10;
  }

  v7 = [(OBTableWelcomeController *)self tableView];

  if (v7)
  {
    usesType = self->_usesType;
    if (!usesType)
    {
      v9 = @"CELLULAR_PLAN_LINE_SECTION_FOOTER";
      goto LABEL_9;
    }

    v7 = 0;
    if (a4 && usesType == 1)
    {
      v9 = @"CELLULAR_PLAN_DATA_SECTION_FOOTER";
LABEL_9:
      v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v7 = [v10 localizedStringForKey:v9 value:&stru_28753DF48 table:@"Localizable"];
    }
  }

LABEL_10:

  return v7;
}

- (void)tableView:(id)a3 willDisplayFooterView:(id)a4 forSection:(int64_t)a5
{
  v6 = [a4 textLabel];
  v5 = [MEMORY[0x277D75348] systemGrayColor];
  [v6 setTextColor:v5];
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  if (self->_inPrivateNetworkMode)
  {
    return 0;
  }

  if (self->_usesType == 1)
  {
    return 2;
  }

  return 1;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  if (a4)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v5 = a4;
  if ([v5 section])
  {
    v6 = [[TSCellularPlanUsesDataSwitchCell alloc] initWithStyle:0 reuseIdentifier:@"dataswitch"];
    dataSwitchEnabled = self->_dataSwitchEnabled;
    v8 = [(TSCellularPlanUsesDataSwitchCell *)v6 switchControl];
    [v8 setOn:dataSwitchEnabled];

    v9 = [(TSCellularPlanUsesDataSwitchCell *)v6 switchControl];
    [v9 addTarget:self action:sel_dataSwitchChanged_ forControlEvents:4096];
    goto LABEL_19;
  }

  v6 = [[TSCellularPlanUsesTableViewCell alloc] initWithStyle:0 reuseIdentifier:@"uses"];
  [(TSCellularPlanUsesDataSwitchCell *)v6 setSelectionStyle:0];
  v10 = -[NSArray objectAtIndex:](self->_selectedPlanItems, "objectAtIndex:", [v5 row]);
  v9 = [v10 label];

  if (self->_usesType > 1)
  {
    if ([(NSMutableArray *)self->_chosenUseIndexPaths containsObject:v5])
    {
      v13 = 3;
    }

    else
    {
      v13 = 0;
    }

    [(TSCellularPlanUsesDataSwitchCell *)v6 setAccessoryType:v13];
    v14 = -[NSArray objectAtIndex:](self->_selectedPlanItems, "objectAtIndex:", [v5 row]);
    v15 = [v14 phoneNumber];
    v16 = [v15 length];

    v17 = -[NSArray objectAtIndex:](self->_selectedPlanItems, "objectAtIndex:", [v5 row]);
    v12 = v17;
    if (v16)
    {
      v18 = [v17 phoneNumber];
      v19 = [v18 formattedPhoneNumber];
      v20 = -[NSArray objectAtIndex:](self->_planItemBadges, "objectAtIndex:", [v5 row]);
      [(TSCellularPlanUsesDataSwitchCell *)v6 setLabel:v9 description:v19 badge:v20];
    }

    else
    {
      v21 = [v17 carrierName];
      v22 = [v21 length];

      if (v22)
      {
        v23 = MEMORY[0x277CCACA8];
        v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v18 = [v12 localizedStringForKey:@"CELLULAR_PLAN_IMESSAGE_NO_PHONE_NUMBER_%@" value:&stru_28753DF48 table:@"Localizable"];
        v24 = -[NSArray objectAtIndex:](self->_selectedPlanItems, "objectAtIndex:", [v5 row]);
        v25 = [v24 carrierName];
        v26 = [v23 stringWithFormat:v18, v25];
        v27 = -[NSArray objectAtIndex:](self->_planItemBadges, "objectAtIndex:", [v5 row]);
        [(TSCellularPlanUsesDataSwitchCell *)v6 setLabel:v9 description:v26 badge:v27];

        goto LABEL_16;
      }

      v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v18 = [v12 localizedStringForKey:@"CELLULAR_PLAN_IMESSAGE_NO_CARRIER_NAME" value:&stru_28753DF48 table:@"Localizable"];
      v19 = -[NSArray objectAtIndex:](self->_planItemBadges, "objectAtIndex:", [v5 row]);
      [(TSCellularPlanUsesDataSwitchCell *)v6 setLabel:v9 description:v18 badge:v19];
    }

LABEL_16:
    goto LABEL_17;
  }

  if ([(NSIndexPath *)self->_chosenUseIndexPath isEqual:v5])
  {
    v11 = 3;
  }

  else
  {
    v11 = 0;
  }

  [(TSCellularPlanUsesDataSwitchCell *)v6 setAccessoryType:v11];
  v12 = -[NSArray objectAtIndex:](self->_planItemBadges, "objectAtIndex:", [v5 row]);
  [(TSCellularPlanUsesDataSwitchCell *)v6 setLabel:v9 description:0 badge:v12];
LABEL_17:

  v28 = [(TSCellularPlanUsesViewController *)self traitCollection];
  v29 = [v28 userInterfaceStyle];

  if (v29 == 1)
  {
    v30 = [MEMORY[0x277D75348] colorWithWhite:0.95 alpha:1.0];
    [(TSCellularPlanUsesDataSwitchCell *)v6 setBackgroundColor:v30];
  }

LABEL_19:

  return v6;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v10 = a4;
  [(OBBoldTrayButton *)self->_doneButton setEnabled:1];
  usesType = self->_usesType;
  v7 = [(OBTableWelcomeController *)self tableView];
  [v7 reloadData];

  if (usesType > 1)
  {
    v8 = [(NSMutableArray *)self->_chosenUseIndexPaths containsObject:v10];
    chosenUseIndexPaths = self->_chosenUseIndexPaths;
    if (v8)
    {
      [(NSMutableArray *)chosenUseIndexPaths removeObject:v10];
    }

    else
    {
      [(NSMutableArray *)chosenUseIndexPaths addObject:v10];
    }
  }

  else
  {
    objc_storeStrong(&self->_chosenUseIndexPath, a4);
  }
}

- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (self->_usesType == 1 && [v7 section] == 1)
  {
    v9 = 0;
  }

  else
  {
    v9 = v8;
  }

  return v9;
}

- (void)_doneButtonTapped
{
  v3 = [(TSCellularPlanUsesViewController *)self view];
  [v3 setUserInteractionEnabled:0];

  v4 = [(TSCellularPlanUsesViewController *)self buttonTray];
  [v4 showButtonsBusy];

  objc_initWeak(&location, self);
  v5 = dispatch_get_global_queue(2, 0);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __53__TSCellularPlanUsesViewController__doneButtonTapped__block_invoke;
  v6[3] = &unk_279B44400;
  objc_copyWeak(&v7, &location);
  dispatch_async(v5, v6);

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __53__TSCellularPlanUsesViewController__doneButtonTapped__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __53__TSCellularPlanUsesViewController__doneButtonTapped__block_invoke_2;
  v2[3] = &unk_279B44578;
  v2[4] = WeakRetained;
  [WeakRetained saveDefaultUse:v2];
}

void __53__TSCellularPlanUsesViewController__doneButtonTapped__block_invoke_2(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__TSCellularPlanUsesViewController__doneButtonTapped__block_invoke_3;
  block[3] = &unk_279B44578;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __53__TSCellularPlanUsesViewController__doneButtonTapped__block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 viewControllerDidComplete:*(a1 + 32)];
}

- (void)_maybeEnableDoneButton
{
  usesType = self->_usesType;
  if (usesType == 1)
  {
    if (self->_inPrivateNetworkMode)
    {
      goto LABEL_3;
    }
  }

  else if (usesType == 2)
  {
LABEL_3:
    doneButton = self->_doneButton;
    v5 = 1;
LABEL_10:

    [(OBBoldTrayButton *)doneButton setEnabled:v5];
    return;
  }

  if (!self->_chosenUseIndexPath)
  {
    doneButton = self->_doneButton;
    v5 = 0;
    goto LABEL_10;
  }

  v6 = [(OBTableWelcomeController *)self tableView];
  [(TSCellularPlanUsesViewController *)self tableView:v6 didSelectRowAtIndexPath:self->_chosenUseIndexPath];
}

- (void)saveDefaultUse:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = +[TSCellularPlanManagerCache sharedInstance];
  v6 = +[TSCoreTelephonyClientCache sharedInstance];
  v7 = v6;
  if (self->_usesType == 2)
  {
    v21 = v6;
    v8 = objc_opt_new();
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v9 = self->_chosenUseIndexPaths;
    v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v23;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v23 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = -[NSArray objectAtIndex:](self->_selectedPlanItems, "objectAtIndex:", [*(*(&v22 + 1) + 8 * i) row]);
          [v8 addObject:v14];
        }

        v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v11);
    }

    [v5 selectPlansForIMessage:v8];
    v15 = _TSLogDomain();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      [TSCellularPlanUsesViewController saveDefaultUse:];
    }

    v7 = v21;
  }

  else
  {
    v8 = [(NSArray *)self->_selectedPlanItems objectAtIndex:[(NSIndexPath *)self->_chosenUseIndexPath row]];
    if (self->_usesType)
    {
      if (!self->_inPrivateNetworkMode)
      {
        [v5 selectPlanForData:v8];
      }
    }

    else
    {
      [v5 selectPlanForVoice:v8];
    }

    v15 = _TSLogDomain();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      [TSCellularPlanUsesViewController saveDefaultUse:];
    }
  }

  if (self->_usesType == 1)
  {
    v16 = [(NSArray *)self->_selectedPlanItems objectAtIndex:[(NSIndexPath *)self->_chosenUseIndexPath row]== 0];
    dataSwitchEnabled = self->_dataSwitchEnabled;
    v18 = [v16 iccid];
    [v7 setDataFallbackEnabled:dataSwitchEnabled forIccid:v18];

    v19 = _TSLogDomain();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      [(TSCellularPlanUsesViewController *)&self->_dataSwitchEnabled saveDefaultUse:v16, v19];
    }
  }

  if (v4)
  {
    v4[2](v4);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (TSSIMSetupFlowDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)prepare:(id *)a1 .cold.1(id *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  [*a1 count];
  OUTLINED_FUNCTION_0();
  v5 = "[TSCellularPlanUsesViewController prepare:]";
  _os_log_error_impl(&dword_262AA8000, a2, OS_LOG_TYPE_ERROR, "[E]Too many select items. %lu @%s", v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)prepare:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 1296);
  v4 = 134218242;
  v5 = v2;
  v6 = 2080;
  v7 = "[TSCellularPlanUsesViewController prepare:]";
  _os_log_error_impl(&dword_262AA8000, a2, OS_LOG_TYPE_ERROR, "[E]missing completion for prepare uses view : %lu @%s", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)saveDefaultUse:.cold.1()
{
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  v3 = "[TSCellularPlanUsesViewController saveDefaultUse:]";
  _os_log_debug_impl(&dword_262AA8000, v0, OS_LOG_TYPE_DEBUG, "[Db] %@ @%s", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)saveDefaultUse:(os_log_t)log .cold.3(_BYTE *a1, uint64_t a2, os_log_t log)
{
  v11 = *MEMORY[0x277D85DE8];
  if (*a1)
  {
    v3 = @"Yes";
  }

  else
  {
    v3 = @"No";
  }

  v5 = 138412802;
  v6 = v3;
  v7 = 2112;
  v8 = a2;
  v9 = 2080;
  v10 = "[TSCellularPlanUsesViewController saveDefaultUse:]";
  _os_log_debug_impl(&dword_262AA8000, log, OS_LOG_TYPE_DEBUG, "[Db] data switch set to %@, non data preferred plan: %@ @%s", &v5, 0x20u);
  v4 = *MEMORY[0x277D85DE8];
}

@end