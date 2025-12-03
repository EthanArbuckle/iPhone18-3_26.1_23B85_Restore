@interface TSTravelSimTypeSelectionViewController
- (TSSIMSetupFlowDelegate)delegate;
- (TSTravelSimTypeSelectionViewController)initWithPlans:(id)plans;
- (double)_heightAnchorConstant;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (void)_continueButtonTapped:(id)tapped;
- (void)_refreshTableView;
- (void)prepare:(id)prepare;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation TSTravelSimTypeSelectionViewController

- (TSTravelSimTypeSelectionViewController)initWithPlans:(id)plans
{
  plansCopy = plans;
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"ESIM_TYPE_SELECTION_HEADER" value:&stru_28753DF48 table:@"Localizable"];

  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"ESIM_TYPE_SELECTION_DETAILS" value:&stru_28753DF48 table:@"Localizable"];

  if ([plansCopy count] == 1)
  {
    v10 = [plansCopy objectAtIndexedSubscript:0];
    targetIccid = [v10 targetIccid];
    v12 = [TSUtilities isIccidForPhySlot:targetIccid];

    if (v12)
    {
      v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v14 = [v13 localizedStringForKey:@"PSIM_TYPE_SELECTION_HEADER" value:&stru_28753DF48 table:@"Localizable"];

      v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v16 = [v15 localizedStringForKey:@"PSIM_TYPE_SELECTION_DETAILS" value:&stru_28753DF48 table:@"Localizable"];

      v7 = v14;
      v9 = v16;
    }
  }

  v25.receiver = self;
  v25.super_class = TSTravelSimTypeSelectionViewController;
  v17 = [(OBTableWelcomeController *)&v25 initWithTitle:v7 detailText:v9 symbolName:@"antenna.radiowaves.left.and.right" adoptTableViewScrollView:1];
  if (v17)
  {
    if ([plansCopy count] == 1)
    {
      v18 = [plansCopy objectAtIndexedSubscript:0];
      if ([v18 activatingState] != 3)
      {
        targetIccid2 = [v18 targetIccid];
        iccid = v17->_iccid;
        v17->_iccid = targetIccid2;

        v17->_isSIMOnPhySlot = [TSUtilities isIccidForPhySlot:v17->_iccid];
      }
    }

    objc_storeStrong(&v17->_installPlans, plans);
    v21 = objc_alloc(MEMORY[0x277CC37B0]);
    v22 = [v21 initWithQueue:MEMORY[0x277D85CD0]];
    client = v17->_client;
    v17->_client = v22;
  }

  return v17;
}

- (void)prepare:(id)prepare
{
  prepareCopy = prepare;
  if (+[TSUtilities isPad]|| [(NSArray *)self->_installPlans count]!= 1)
  {
LABEL_8:
    prepareCopy[2](prepareCopy, 0);
    goto LABEL_9;
  }

  if (![(NSString *)self->_iccid length])
  {
    v9 = _TSLogDomain();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [TSTravelSimTypeSelectionViewController prepare:v9];
    }

    goto LABEL_8;
  }

  v5 = [(NSArray *)self->_installPlans objectAtIndexedSubscript:0];
  client = self->_client;
  iccid = self->_iccid;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __50__TSTravelSimTypeSelectionViewController_prepare___block_invoke;
  v10[3] = &unk_279B447D8;
  v11 = v5;
  v12 = prepareCopy;
  v8 = v5;
  [(CoreTelephonyClient *)client getTravelInfoForIccid:iccid completion:v10];

LABEL_9:
}

void __50__TSTravelSimTypeSelectionViewController_prepare___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 isGlobalMVNO])
  {
    v4 = _TSLogDomain();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315138;
      v7 = "[TSTravelSimTypeSelectionViewController prepare:]_block_invoke";
      _os_log_impl(&dword_262AA8000, v4, OS_LOG_TYPE_DEFAULT, "Set waitForPhoneNumber to NO @%s", &v6, 0xCu);
    }

    [*(a1 + 32) setWaitForPhoneNumber:MEMORY[0x277CBEC28]];
  }

  [v3 isGlobalMVNO];
  (*(*(a1 + 40) + 16))();

  v5 = *MEMORY[0x277D85DE8];
}

- (void)viewDidLoad
{
  v23.receiver = self;
  v23.super_class = TSTravelSimTypeSelectionViewController;
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

  buttonTray = [(TSTravelSimTypeSelectionViewController *)self buttonTray];
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
  [(TSTravelSimTypeSelectionViewController *)self _heightAnchorConstant];
  v21 = [heightAnchor constraintEqualToConstant:?];
  tableHeightAnchor = self->_tableHeightAnchor;
  self->_tableHeightAnchor = v21;

  [(NSLayoutConstraint *)self->_tableHeightAnchor setActive:1];
  self->_isShown = 1;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = MEMORY[0x277CCACA8];
  viewCopy = view;
  v9 = [v7 stringWithFormat:@"options%ld", objc_msgSend(pathCopy, "section")];
  v10 = [viewCopy dequeueReusableCellWithIdentifier:v9];

  if (!v10)
  {
    v10 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:3 reuseIdentifier:v9];
  }

  contentView = [v10 contentView];
  [contentView setLayoutMargins:{10.0, 0.0, 0.0, 0.0}];

  [v10 setAccessoryType:1];
  textLabel = [v10 textLabel];
  [textLabel setLineBreakMode:0];

  textLabel2 = [v10 textLabel];
  [textLabel2 setNumberOfLines:0];

  textLabel3 = [v10 textLabel];
  [textLabel3 setTranslatesAutoresizingMaskIntoConstraints:0];

  v15 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76988]];
  textLabel4 = [v10 textLabel];
  [textLabel4 setFont:v15];

  detailTextLabel = [v10 detailTextLabel];
  [detailTextLabel setLineBreakMode:0];

  detailTextLabel2 = [v10 detailTextLabel];
  [detailTextLabel2 setNumberOfLines:0];

  detailTextLabel3 = [v10 detailTextLabel];
  [detailTextLabel3 setTranslatesAutoresizingMaskIntoConstraints:0];

  v20 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769D0]];
  detailTextLabel4 = [v10 detailTextLabel];
  [detailTextLabel4 setFont:v20];

  layer = [v10 layer];
  [layer setBorderWidth:1.0];

  systemGray6Color = [MEMORY[0x277D75348] systemGray6Color];
  cGColor = [systemGray6Color CGColor];
  layer2 = [v10 layer];
  [layer2 setBorderColor:cGColor];

  if ([pathCopy section])
  {
    if ([pathCopy section] != 1)
    {
      v33 = 0;
      v27 = 0;
      goto LABEL_13;
    }

    v26 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v27 = [v26 localizedStringForKey:@"ESIM_TYPE_TRAVEL_SIM_OPTION_TITLE" value:&stru_28753DF48 table:@"Localizable"];

    isSIMOnPhySlot = self->_isSIMOnPhySlot;
    v29 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    if (isSIMOnPhySlot)
    {
      v30 = @"PSIM_TYPE_TRAVEL_SIM_OPTION_TEXT";
    }

    else
    {
      v30 = @"ESIM_TYPE_TRAVEL_SIM_OPTION_TEXT";
    }
  }

  else
  {
    v31 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v27 = [v31 localizedStringForKey:@"ESIM_TYPE_HOME_SIM_OPTION_TITLE" value:&stru_28753DF48 table:@"Localizable"];

    v32 = self->_isSIMOnPhySlot;
    v29 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    if (v32)
    {
      v30 = @"PSIM_TYPE_HOME_SIM_OPTION_TEXT";
    }

    else
    {
      v30 = @"ESIM_TYPE_HOME_SIM_OPTION_TEXT";
    }
  }

  v33 = [v29 localizedStringForKey:v30 value:&stru_28753DF48 table:@"Localizable"];

LABEL_13:
  textLabel5 = [v10 textLabel];
  [textLabel5 setText:v27];

  detailTextLabel5 = [v10 detailTextLabel];
  [detailTextLabel5 setText:v33];

  v36 = [MEMORY[0x277D755B8] systemImageNamed:@"circle"];
  v37 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v36];
  systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
  [v37 setTintColor:systemGrayColor];

  [v10 setAccessoryView:v37];

  return v10;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  [(OBBoldTrayButton *)self->_continueButton setEnabled:1];
  [(SSOBBoldTrayButton *)self->_continueButton setUserInteractionEnabled:1];
  self->_isSelectedAsTravelSIM = [pathCopy section] != 0;
  [(TSTravelSimTypeSelectionViewController *)self _refreshTableView];
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
  view = [(TSTravelSimTypeSelectionViewController *)self view];
  [view bounds];
  v4 = v3 * 0.2;

  return v4;
}

- (void)_continueButtonTapped:(id)tapped
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = _TSLogDomain();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if (self->_isSelectedAsTravelSIM)
    {
      v5 = @"travel sim";
    }

    else
    {
      v5 = @"home sim";
    }

    *buf = 138412546;
    v18 = v5;
    v19 = 2080;
    v20 = "[TSTravelSimTypeSelectionViewController _continueButtonTapped:]";
    _os_log_impl(&dword_262AA8000, v4, OS_LOG_TYPE_DEFAULT, "User has chosen this SIM to be %@ @%s", buf, 0x16u);
  }

  if (!self->_isSelectedAsTravelSIM)
  {
    v6 = _TSLogDomain();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v18 = "[TSTravelSimTypeSelectionViewController _continueButtonTapped:]";
      _os_log_impl(&dword_262AA8000, v6, OS_LOG_TYPE_DEFAULT, "Reset waitForPhoneNumber @%s", buf, 0xCu);
    }

    v7 = [(NSArray *)self->_installPlans objectAtIndexedSubscript:0];
    [v7 setWaitForPhoneNumber:0];

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:self selector:sel__updateTrayButtonText_ name:@"esim.install.state.changed" object:0];

    if ([(NSArray *)self->_installPlans count]== 1)
    {
      v9 = [(NSArray *)self->_installPlans objectAtIndexedSubscript:0];
      status = [v9 status];

      if (status == 13)
      {
        defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
        v15 = @"InstallStateKey";
        v16 = @"PostInstall";
        v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
        [defaultCenter2 postNotificationName:@"esim.install.state.changed" object:0 userInfo:v12];
      }
    }
  }

  delegate = [(TSTravelSimTypeSelectionViewController *)self delegate];
  [delegate viewControllerDidComplete:self];

  v14 = *MEMORY[0x277D85DE8];
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

- (void)prepare:(os_log_t)log .cold.1(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "[TSTravelSimTypeSelectionViewController prepare:]";
  _os_log_error_impl(&dword_262AA8000, log, OS_LOG_TYPE_ERROR, "[E]ICCID is empty @%s", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end