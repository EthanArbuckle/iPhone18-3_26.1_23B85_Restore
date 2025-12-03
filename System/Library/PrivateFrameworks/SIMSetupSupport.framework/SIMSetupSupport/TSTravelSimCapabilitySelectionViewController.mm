@interface TSTravelSimCapabilitySelectionViewController
- (TSSIMSetupFlowDelegate)delegate;
- (TSTravelSimCapabilitySelectionViewController)initWithPlans:(id)plans isSelectedAsTravelSIM:(BOOL)m;
- (double)_heightAnchorConstant;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (void)_continueButtonTapped:(id)tapped;
- (void)_refreshTableView;
- (void)prepare:(id)prepare;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation TSTravelSimCapabilitySelectionViewController

- (TSTravelSimCapabilitySelectionViewController)initWithPlans:(id)plans isSelectedAsTravelSIM:(BOOL)m
{
  plansCopy = plans;
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"ESIM_CAPABILITY_VOICE_DATA_HEADER" value:&stru_28753DF48 table:@"Localizable"];

  if ([plansCopy count] == 1)
  {
    v10 = [plansCopy objectAtIndexedSubscript:0];
    targetIccid = [v10 targetIccid];
    v12 = [TSUtilities isIccidForPhySlot:targetIccid];

    if (v12)
    {
      v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v14 = [v13 localizedStringForKey:@"PSIM_CAPABILITY_VOICE_DATA_HEADER" value:&stru_28753DF48 table:@"Localizable"];

      v9 = v14;
    }
  }

  v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v16 = [v15 localizedStringForKey:@"SIM_CAPABILITY_VOICE_DATA_TITLE" value:&stru_28753DF48 table:@"Localizable"];
  v25.receiver = self;
  v25.super_class = TSTravelSimCapabilitySelectionViewController;
  v17 = [(OBTableWelcomeController *)&v25 initWithTitle:v16 detailText:v9 symbolName:@"antenna.radiowaves.left.and.right" adoptTableViewScrollView:1];

  if (v17)
  {
    if ([plansCopy count] == 1)
    {
      v18 = [plansCopy objectAtIndexedSubscript:0];
      if ([v18 activatingState] == 1 || objc_msgSend(v18, "activatingState") == 2)
      {
        targetIccid2 = [v18 targetIccid];
        iccid = v17->_iccid;
        v17->_iccid = targetIccid2;
      }
    }

    objc_storeStrong(&v17->_installPlans, plans);
    v17->_userSelectAsTravelSIM = m;
    v21 = objc_alloc(MEMORY[0x277CC37B0]);
    v22 = [v21 initWithQueue:MEMORY[0x277D85CD0]];
    client = v17->_client;
    v17->_client = v22;
  }

  return v17;
}

- (void)prepare:(id)prepare
{
  v18 = *MEMORY[0x277D85DE8];
  prepareCopy = prepare;
  if (!+[TSUtilities isPad]&& [(NSArray *)self->_installPlans count]== 1 && [(NSString *)self->_iccid length])
  {
    v5 = [(NSArray *)self->_installPlans objectAtIndexedSubscript:0];
    displayPlan = [v5 displayPlan];
    plan = [displayPlan plan];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v9 = _TSLogDomain();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v17 = "[TSTravelSimCapabilitySelectionViewController prepare:]";
        _os_log_impl(&dword_262AA8000, v9, OS_LOG_TYPE_DEFAULT, "Skip for CTRemotePlan @%s", buf, 0xCu);
      }

      prepareCopy[2](prepareCopy, 0);
    }

    else if (self->_userSelectAsTravelSIM)
    {
      prepareCopy[2](prepareCopy, 1);
    }

    else
    {
      objc_initWeak(buf, self);
      client = self->_client;
      iccid = self->_iccid;
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __56__TSTravelSimCapabilitySelectionViewController_prepare___block_invoke;
      v13[3] = &unk_279B44800;
      objc_copyWeak(&v15, buf);
      v14 = prepareCopy;
      [(CoreTelephonyClient *)client getTravelInfoForIccid:iccid completion:v13];

      objc_destroyWeak(&v15);
      objc_destroyWeak(buf);
    }
  }

  else
  {
    prepareCopy[2](prepareCopy, 0);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __56__TSTravelSimCapabilitySelectionViewController_prepare___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (!WeakRetained)
  {
    goto LABEL_6;
  }

  v5 = _TSLogDomain();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = WeakRetained[162];
    v9 = 138412802;
    v10 = v6;
    v11 = 2112;
    v12 = v3;
    v13 = 2080;
    v14 = "[TSTravelSimCapabilitySelectionViewController prepare:]_block_invoke";
    _os_log_impl(&dword_262AA8000, v5, OS_LOG_TYPE_DEFAULT, "CTPlanTravelDetails for %@: %@ @%s", &v9, 0x20u);
  }

  if ([v3 isTraveleSIM])
  {
    [v3 isDataOnly];

    v7 = *(*(a1 + 32) + 16);
  }

  else
  {
LABEL_6:
    v7 = *(*(a1 + 32) + 16);
  }

  v7();

  v8 = *MEMORY[0x277D85DE8];
}

- (void)viewDidLoad
{
  v23.receiver = self;
  v23.super_class = TSTravelSimCapabilitySelectionViewController;
  [(TSOBTableWelcomeController *)&v23 viewDidLoad];
  v3 = +[SSOBBoldTrayButton boldButton];
  continueButton = self->_continueButton;
  self->_continueButton = v3;

  [(SSOBBoldTrayButton *)self->_continueButton addTarget:self action:sel__continueButtonTapped_ forControlEvents:64];
  [(OBBoldTrayButton *)self->_continueButton setEnabled:0];
  v5 = self->_continueButton;
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"CONTINUE" value:&stru_28753DF48 table:@"Localizable"];
  [(SSOBBoldTrayButton *)v5 setTitle:v7 forState:0];

  buttonTray = [(TSTravelSimCapabilitySelectionViewController *)self buttonTray];
  [buttonTray addButton:self->_continueButton];

  navigationItem = [(OBBaseWelcomeController *)self navigationItem];
  [navigationItem setHidesBackButton:1];

  v10 = objc_alloc(MEMORY[0x277D75B40]);
  v11 = [v10 initWithFrame:2 style:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [(OBTableWelcomeController *)self setTableView:v11];

  tableView = [(OBTableWelcomeController *)self tableView];
  [tableView setTranslatesAutoresizingMaskIntoConstraints:0];

  tableView2 = [(OBTableWelcomeController *)self tableView];
  [tableView2 setAllowsMultipleSelection:0];

  tableView3 = [(OBTableWelcomeController *)self tableView];
  [tableView3 setScrollEnabled:1];

  tableView4 = [(OBTableWelcomeController *)self tableView];
  clearColor = [MEMORY[0x277D75348] clearColor];
  [tableView4 setBackgroundColor:clearColor];

  tableView5 = [(OBTableWelcomeController *)self tableView];
  [tableView5 setDataSource:self];

  tableView6 = [(OBTableWelcomeController *)self tableView];
  [tableView6 reloadData];

  tableView7 = [(OBTableWelcomeController *)self tableView];
  heightAnchor = [tableView7 heightAnchor];
  [(TSTravelSimCapabilitySelectionViewController *)self _heightAnchorConstant];
  v21 = [heightAnchor constraintEqualToConstant:?];
  tableHeightAnchor = self->_tableHeightAnchor;
  self->_tableHeightAnchor = v21;

  [(NSLayoutConstraint *)self->_tableHeightAnchor setActive:1];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v6 = MEMORY[0x277CCACA8];
  viewCopy = view;
  v8 = [v6 stringWithFormat:@"options%ld", objc_msgSend(pathCopy, "section")];
  v9 = [viewCopy dequeueReusableCellWithIdentifier:v8];

  if (!v9)
  {
    v9 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:3 reuseIdentifier:v8];
  }

  contentView = [v9 contentView];
  [contentView setLayoutMargins:{10.0, 0.0, 0.0, 0.0}];

  [v9 setAccessoryType:1];
  textLabel = [v9 textLabel];
  [textLabel setLineBreakMode:0];

  textLabel2 = [v9 textLabel];
  [textLabel2 setNumberOfLines:0];

  textLabel3 = [v9 textLabel];
  [textLabel3 setTranslatesAutoresizingMaskIntoConstraints:0];

  v14 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76988]];
  textLabel4 = [v9 textLabel];
  [textLabel4 setFont:v14];

  detailTextLabel = [v9 detailTextLabel];
  [detailTextLabel setLineBreakMode:0];

  detailTextLabel2 = [v9 detailTextLabel];
  [detailTextLabel2 setNumberOfLines:0];

  detailTextLabel3 = [v9 detailTextLabel];
  [detailTextLabel3 setTranslatesAutoresizingMaskIntoConstraints:0];

  v19 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769D0]];
  detailTextLabel4 = [v9 detailTextLabel];
  [detailTextLabel4 setFont:v19];

  layer = [v9 layer];
  [layer setBorderWidth:1.0];

  systemGray6Color = [MEMORY[0x277D75348] systemGray6Color];
  cGColor = [systemGray6Color CGColor];
  layer2 = [v9 layer];
  [layer2 setBorderColor:cGColor];

  if (![pathCopy section])
  {
    v38 = pathCopy;
    v25 = v8;
    v26 = @"SIM_CAPABILITY_DATA_ONLY_TEXT";
    v27 = @"SIM_CAPABILITY_DATA_ONLY_TITLE";
    goto LABEL_7;
  }

  if ([pathCopy section] == 1)
  {
    v38 = pathCopy;
    v25 = v8;
    v26 = @"SIM_CAPABILITY_VOICE_DATA_OPTION_TEXT";
    v27 = @"SIM_CAPABILITY_VOICE_DATA_OPTION_TITLE";
LABEL_7:
    v28 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v29 = [v28 localizedStringForKey:v27 value:&stru_28753DF48 table:@"Localizable"];

    v30 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v31 = [v30 localizedStringForKey:v26 value:&stru_28753DF48 table:@"Localizable"];

    v8 = v25;
    pathCopy = v38;
    goto LABEL_9;
  }

  v31 = 0;
  v29 = 0;
LABEL_9:
  textLabel5 = [v9 textLabel];
  [textLabel5 setText:v29];

  detailTextLabel5 = [v9 detailTextLabel];
  [detailTextLabel5 setText:v31];

  v34 = [MEMORY[0x277D755B8] systemImageNamed:@"circle"];
  v35 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v34];
  systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
  [v35 setTintColor:systemGrayColor];

  [v9 setAccessoryView:v35];

  return v9;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  [(OBBoldTrayButton *)self->_continueButton setEnabled:1];
  [(SSOBBoldTrayButton *)self->_continueButton setUserInteractionEnabled:1];
  self->_isDataOnlySelected = [pathCopy section] == 0;
  [(TSTravelSimCapabilitySelectionViewController *)self _refreshTableView];
  tableView = [(OBTableWelcomeController *)self tableView];
  [tableView deselectRowAtIndexPath:pathCopy animated:1];
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  v4 = objc_alloc(MEMORY[0x277D75D18]);
  v5 = [v4 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];

  return v5;
}

- (double)_heightAnchorConstant
{
  view = [(TSTravelSimCapabilitySelectionViewController *)self view];
  [view bounds];
  v4 = v3 * 0.2;

  return v4;
}

- (void)_continueButtonTapped:(id)tapped
{
  v19 = *MEMORY[0x277D85DE8];
  tappedCopy = tapped;
  v5 = _TSLogDomain();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    if (self->_isDataOnlySelected)
    {
      v6 = @"data only";
    }

    else
    {
      v6 = @"voice capable";
    }

    *buf = 138412546;
    v16 = v6;
    v17 = 2080;
    v18 = "[TSTravelSimCapabilitySelectionViewController _continueButtonTapped:]";
    _os_log_impl(&dword_262AA8000, v5, OS_LOG_TYPE_DEFAULT, "User has chosen this SIM to be %@ @%s", buf, 0x16u);
  }

  delegate = [(TSTravelSimCapabilitySelectionViewController *)self delegate];
  [delegate waitForResponse:self];

  isDataOnlySelected = self->_isDataOnlySelected;
  v9 = [(NSArray *)self->_installPlans objectAtIndexedSubscript:0];
  [v9 setIsDataOnly:isDataOnlySelected];

  v10 = objc_alloc_init(MEMORY[0x277CC3638]);
  [v10 setAssociatedIccid:self->_iccid];
  [v10 setSimCapability:!self->_isDataOnlySelected];
  if (self->_userSelectAsTravelSIM)
  {
    [v10 setSupportedRegionCodes:&unk_287583ED8];
  }

  objc_initWeak(buf, self);
  client = self->_client;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __70__TSTravelSimCapabilitySelectionViewController__continueButtonTapped___block_invoke;
  v13[3] = &unk_279B44828;
  objc_copyWeak(&v14, buf);
  [(CoreTelephonyClient *)client updateCellularPlanProperties:v10 appName:@"SimSetup" appType:1 completionHandler:v13];
  objc_destroyWeak(&v14);
  objc_destroyWeak(buf);

  v12 = *MEMORY[0x277D85DE8];
}

void __70__TSTravelSimCapabilitySelectionViewController__continueButtonTapped___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (v3)
  {
    v5 = _TSLogDomain();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412546;
      v10 = v3;
      v11 = 2080;
      v12 = "[TSTravelSimCapabilitySelectionViewController _continueButtonTapped:]_block_invoke";
      _os_log_impl(&dword_262AA8000, v5, OS_LOG_TYPE_DEFAULT, "Updating SIM property failed with [%@] @%s", &v9, 0x16u);
    }
  }

  v6 = [WeakRetained delegate];
  [v6 receivedResponseWithVC:WeakRetained];

  v7 = [WeakRetained delegate];
  [v7 viewControllerDidComplete:WeakRetained];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_refreshTableView
{
  tableView = [(OBTableWelcomeController *)self tableView];
  numberOfSections = [tableView numberOfSections];

  if (numberOfSections)
  {
    v5 = 0;
    do
    {
      v6 = [MEMORY[0x277CCAA70] indexPathForRow:0 inSection:v5];
      tableView2 = [(OBTableWelcomeController *)self tableView];
      v8 = [tableView2 cellForRowAtIndexPath:v6];

      tableView3 = [(OBTableWelcomeController *)self tableView];
      indexPathsForSelectedRows = [tableView3 indexPathsForSelectedRows];
      v11 = [indexPathsForSelectedRows containsObject:v6];

      if (v11)
      {
        v12 = [MEMORY[0x277D755B8] systemImageNamed:@"checkmark.circle.fill"];
        v13 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v12];
        systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
        [v13 setTintColor:systemBlueColor];

        [v8 setAccessoryView:v13];
        systemBlueColor2 = [MEMORY[0x277D75348] systemBlueColor];
        cGColor = [systemBlueColor2 CGColor];
        layer = [v8 layer];
        [layer setBorderColor:cGColor];
      }

      else
      {
        v12 = [MEMORY[0x277D755B8] systemImageNamed:@"circle"];
        v13 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v12];
        systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
        [v13 setTintColor:systemGrayColor];

        [v8 setAccessoryView:v13];
        systemBlueColor2 = [MEMORY[0x277D75348] systemGray6Color];
        cGColor2 = [systemBlueColor2 CGColor];
        layer = [v8 layer];
        [layer setBorderColor:cGColor2];
        layer2 = [v8 layer];
        [layer2 setBorderColor:cGColor2];
      }

      ++v5;
      tableView4 = [(OBTableWelcomeController *)self tableView];
      numberOfSections2 = [tableView4 numberOfSections];
    }

    while (v5 < numberOfSections2);
  }
}

- (TSSIMSetupFlowDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end