@interface TSTravelSimTypeSelectionViewController
- (TSSIMSetupFlowDelegate)delegate;
- (TSTravelSimTypeSelectionViewController)initWithPlans:(id)a3;
- (double)_heightAnchorConstant;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (void)_continueButtonTapped:(id)a3;
- (void)_refreshTableView;
- (void)prepare:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation TSTravelSimTypeSelectionViewController

- (TSTravelSimTypeSelectionViewController)initWithPlans:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"ESIM_TYPE_SELECTION_HEADER" value:&stru_28753DF48 table:@"Localizable"];

  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"ESIM_TYPE_SELECTION_DETAILS" value:&stru_28753DF48 table:@"Localizable"];

  if ([v5 count] == 1)
  {
    v10 = [v5 objectAtIndexedSubscript:0];
    v11 = [v10 targetIccid];
    v12 = [TSUtilities isIccidForPhySlot:v11];

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
    if ([v5 count] == 1)
    {
      v18 = [v5 objectAtIndexedSubscript:0];
      if ([v18 activatingState] != 3)
      {
        v19 = [v18 targetIccid];
        iccid = v17->_iccid;
        v17->_iccid = v19;

        v17->_isSIMOnPhySlot = [TSUtilities isIccidForPhySlot:v17->_iccid];
      }
    }

    objc_storeStrong(&v17->_installPlans, a3);
    v21 = objc_alloc(MEMORY[0x277CC37B0]);
    v22 = [v21 initWithQueue:MEMORY[0x277D85CD0]];
    client = v17->_client;
    v17->_client = v22;
  }

  return v17;
}

- (void)prepare:(id)a3
{
  v4 = a3;
  if (+[TSUtilities isPad]|| [(NSArray *)self->_installPlans count]!= 1)
  {
LABEL_8:
    v4[2](v4, 0);
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
  v12 = v4;
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

  v8 = [(TSTravelSimTypeSelectionViewController *)self buttonTray];
  [v8 addButton:self->_continueButton];

  v9 = [(OBBaseWelcomeController *)self navigationItem];
  [v9 setHidesBackButton:1];

  v10 = objc_alloc(MEMORY[0x277D75B40]);
  v11 = [v10 initWithFrame:2 style:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [(OBTableWelcomeController *)self setTableView:v11];

  v12 = [(OBTableWelcomeController *)self tableView];
  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];

  v13 = [(OBTableWelcomeController *)self tableView];
  [v13 setAllowsMultipleSelection:0];

  v14 = [(OBTableWelcomeController *)self tableView];
  [v14 setScrollEnabled:1];

  v15 = [(OBTableWelcomeController *)self tableView];
  v16 = [MEMORY[0x277D75348] clearColor];
  [v15 setBackgroundColor:v16];

  v17 = [(OBTableWelcomeController *)self tableView];
  [v17 setDataSource:self];

  v18 = [(OBTableWelcomeController *)self tableView];
  [v18 reloadData];

  v19 = [(OBTableWelcomeController *)self tableView];
  v20 = [v19 heightAnchor];
  [(TSTravelSimTypeSelectionViewController *)self _heightAnchorConstant];
  v21 = [v20 constraintEqualToConstant:?];
  tableHeightAnchor = self->_tableHeightAnchor;
  self->_tableHeightAnchor = v21;

  [(NSLayoutConstraint *)self->_tableHeightAnchor setActive:1];
  self->_isShown = 1;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = MEMORY[0x277CCACA8];
  v8 = a3;
  v9 = [v7 stringWithFormat:@"options%ld", objc_msgSend(v6, "section")];
  v10 = [v8 dequeueReusableCellWithIdentifier:v9];

  if (!v10)
  {
    v10 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:3 reuseIdentifier:v9];
  }

  v11 = [v10 contentView];
  [v11 setLayoutMargins:{10.0, 0.0, 0.0, 0.0}];

  [v10 setAccessoryType:1];
  v12 = [v10 textLabel];
  [v12 setLineBreakMode:0];

  v13 = [v10 textLabel];
  [v13 setNumberOfLines:0];

  v14 = [v10 textLabel];
  [v14 setTranslatesAutoresizingMaskIntoConstraints:0];

  v15 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76988]];
  v16 = [v10 textLabel];
  [v16 setFont:v15];

  v17 = [v10 detailTextLabel];
  [v17 setLineBreakMode:0];

  v18 = [v10 detailTextLabel];
  [v18 setNumberOfLines:0];

  v19 = [v10 detailTextLabel];
  [v19 setTranslatesAutoresizingMaskIntoConstraints:0];

  v20 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769D0]];
  v21 = [v10 detailTextLabel];
  [v21 setFont:v20];

  v22 = [v10 layer];
  [v22 setBorderWidth:1.0];

  v23 = [MEMORY[0x277D75348] systemGray6Color];
  v24 = [v23 CGColor];
  v25 = [v10 layer];
  [v25 setBorderColor:v24];

  if ([v6 section])
  {
    if ([v6 section] != 1)
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
  v34 = [v10 textLabel];
  [v34 setText:v27];

  v35 = [v10 detailTextLabel];
  [v35 setText:v33];

  v36 = [MEMORY[0x277D755B8] systemImageNamed:@"circle"];
  v37 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v36];
  v38 = [MEMORY[0x277D75348] systemGrayColor];
  [v37 setTintColor:v38];

  [v10 setAccessoryView:v37];

  return v10;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  [(OBBoldTrayButton *)self->_continueButton setEnabled:1];
  [(SSOBBoldTrayButton *)self->_continueButton setUserInteractionEnabled:1];
  self->_isSelectedAsTravelSIM = [v6 section] != 0;
  [(TSTravelSimTypeSelectionViewController *)self _refreshTableView];
  v5 = [(OBTableWelcomeController *)self tableView];
  [v5 deselectRowAtIndexPath:v6 animated:1];
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  v4 = objc_alloc(MEMORY[0x277D75D18]);
  v5 = [v4 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];

  return v5;
}

- (double)_heightAnchorConstant
{
  v2 = [(TSTravelSimTypeSelectionViewController *)self view];
  [v2 bounds];
  v4 = v3 * 0.2;

  return v4;
}

- (void)_continueButtonTapped:(id)a3
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

    v8 = [MEMORY[0x277CCAB98] defaultCenter];
    [v8 addObserver:self selector:sel__updateTrayButtonText_ name:@"esim.install.state.changed" object:0];

    if ([(NSArray *)self->_installPlans count]== 1)
    {
      v9 = [(NSArray *)self->_installPlans objectAtIndexedSubscript:0];
      v10 = [v9 status];

      if (v10 == 13)
      {
        v11 = [MEMORY[0x277CCAB98] defaultCenter];
        v15 = @"InstallStateKey";
        v16 = @"PostInstall";
        v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
        [v11 postNotificationName:@"esim.install.state.changed" object:0 userInfo:v12];
      }
    }
  }

  v13 = [(TSTravelSimTypeSelectionViewController *)self delegate];
  [v13 viewControllerDidComplete:self];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_refreshTableView
{
  v3 = [(OBTableWelcomeController *)self tableView];
  v4 = [v3 numberOfSections];

  if (v4)
  {
    v5 = 0;
    do
    {
      v6 = [MEMORY[0x277CCAA70] indexPathForRow:0 inSection:v5];
      v7 = [(OBTableWelcomeController *)self tableView];
      v8 = [v7 cellForRowAtIndexPath:v6];

      v9 = [(OBTableWelcomeController *)self tableView];
      v10 = [v9 indexPathsForSelectedRows];
      v11 = [v10 containsObject:v6];

      if (v11)
      {
        v12 = [MEMORY[0x277D755B8] systemImageNamed:@"checkmark.circle.fill"];
        v13 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v12];
        v14 = [MEMORY[0x277D75348] systemBlueColor];
        [v13 setTintColor:v14];

        [v8 setAccessoryView:v13];
        v15 = [MEMORY[0x277D75348] systemBlueColor];
        v16 = [v15 CGColor];
        v17 = [v8 layer];
        [v17 setBorderColor:v16];
      }

      else
      {
        v12 = [MEMORY[0x277D755B8] systemImageNamed:@"circle"];
        v13 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v12];
        v18 = [MEMORY[0x277D75348] systemGrayColor];
        [v13 setTintColor:v18];

        [v8 setAccessoryView:v13];
        v15 = [MEMORY[0x277D75348] systemGray6Color];
        v19 = [v15 CGColor];
        v17 = [v8 layer];
        [v17 setBorderColor:v19];
        v20 = [v8 layer];
        [v20 setBorderColor:v19];
      }

      ++v5;
      v21 = [(OBTableWelcomeController *)self tableView];
      v22 = [v21 numberOfSections];
    }

    while (v5 < v22);
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