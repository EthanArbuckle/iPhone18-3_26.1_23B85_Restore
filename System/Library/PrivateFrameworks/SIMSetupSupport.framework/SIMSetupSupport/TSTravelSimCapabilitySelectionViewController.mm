@interface TSTravelSimCapabilitySelectionViewController
- (TSSIMSetupFlowDelegate)delegate;
- (TSTravelSimCapabilitySelectionViewController)initWithPlans:(id)a3 isSelectedAsTravelSIM:(BOOL)a4;
- (double)_heightAnchorConstant;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (void)_continueButtonTapped:(id)a3;
- (void)_refreshTableView;
- (void)prepare:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation TSTravelSimCapabilitySelectionViewController

- (TSTravelSimCapabilitySelectionViewController)initWithPlans:(id)a3 isSelectedAsTravelSIM:(BOOL)a4
{
  v7 = a3;
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"ESIM_CAPABILITY_VOICE_DATA_HEADER" value:&stru_28753DF48 table:@"Localizable"];

  if ([v7 count] == 1)
  {
    v10 = [v7 objectAtIndexedSubscript:0];
    v11 = [v10 targetIccid];
    v12 = [TSUtilities isIccidForPhySlot:v11];

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
    if ([v7 count] == 1)
    {
      v18 = [v7 objectAtIndexedSubscript:0];
      if ([v18 activatingState] == 1 || objc_msgSend(v18, "activatingState") == 2)
      {
        v19 = [v18 targetIccid];
        iccid = v17->_iccid;
        v17->_iccid = v19;
      }
    }

    objc_storeStrong(&v17->_installPlans, a3);
    v17->_userSelectAsTravelSIM = a4;
    v21 = objc_alloc(MEMORY[0x277CC37B0]);
    v22 = [v21 initWithQueue:MEMORY[0x277D85CD0]];
    client = v17->_client;
    v17->_client = v22;
  }

  return v17;
}

- (void)prepare:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!+[TSUtilities isPad]&& [(NSArray *)self->_installPlans count]== 1 && [(NSString *)self->_iccid length])
  {
    v5 = [(NSArray *)self->_installPlans objectAtIndexedSubscript:0];
    v6 = [v5 displayPlan];
    v7 = [v6 plan];
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

      v4[2](v4, 0);
    }

    else if (self->_userSelectAsTravelSIM)
    {
      v4[2](v4, 1);
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
      v14 = v4;
      [(CoreTelephonyClient *)client getTravelInfoForIccid:iccid completion:v13];

      objc_destroyWeak(&v15);
      objc_destroyWeak(buf);
    }
  }

  else
  {
    v4[2](v4, 0);
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

  v8 = [(TSTravelSimCapabilitySelectionViewController *)self buttonTray];
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
  [(TSTravelSimCapabilitySelectionViewController *)self _heightAnchorConstant];
  v21 = [v20 constraintEqualToConstant:?];
  tableHeightAnchor = self->_tableHeightAnchor;
  self->_tableHeightAnchor = v21;

  [(NSLayoutConstraint *)self->_tableHeightAnchor setActive:1];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = MEMORY[0x277CCACA8];
  v7 = a3;
  v8 = [v6 stringWithFormat:@"options%ld", objc_msgSend(v5, "section")];
  v9 = [v7 dequeueReusableCellWithIdentifier:v8];

  if (!v9)
  {
    v9 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:3 reuseIdentifier:v8];
  }

  v10 = [v9 contentView];
  [v10 setLayoutMargins:{10.0, 0.0, 0.0, 0.0}];

  [v9 setAccessoryType:1];
  v11 = [v9 textLabel];
  [v11 setLineBreakMode:0];

  v12 = [v9 textLabel];
  [v12 setNumberOfLines:0];

  v13 = [v9 textLabel];
  [v13 setTranslatesAutoresizingMaskIntoConstraints:0];

  v14 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76988]];
  v15 = [v9 textLabel];
  [v15 setFont:v14];

  v16 = [v9 detailTextLabel];
  [v16 setLineBreakMode:0];

  v17 = [v9 detailTextLabel];
  [v17 setNumberOfLines:0];

  v18 = [v9 detailTextLabel];
  [v18 setTranslatesAutoresizingMaskIntoConstraints:0];

  v19 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769D0]];
  v20 = [v9 detailTextLabel];
  [v20 setFont:v19];

  v21 = [v9 layer];
  [v21 setBorderWidth:1.0];

  v22 = [MEMORY[0x277D75348] systemGray6Color];
  v23 = [v22 CGColor];
  v24 = [v9 layer];
  [v24 setBorderColor:v23];

  if (![v5 section])
  {
    v38 = v5;
    v25 = v8;
    v26 = @"SIM_CAPABILITY_DATA_ONLY_TEXT";
    v27 = @"SIM_CAPABILITY_DATA_ONLY_TITLE";
    goto LABEL_7;
  }

  if ([v5 section] == 1)
  {
    v38 = v5;
    v25 = v8;
    v26 = @"SIM_CAPABILITY_VOICE_DATA_OPTION_TEXT";
    v27 = @"SIM_CAPABILITY_VOICE_DATA_OPTION_TITLE";
LABEL_7:
    v28 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v29 = [v28 localizedStringForKey:v27 value:&stru_28753DF48 table:@"Localizable"];

    v30 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v31 = [v30 localizedStringForKey:v26 value:&stru_28753DF48 table:@"Localizable"];

    v8 = v25;
    v5 = v38;
    goto LABEL_9;
  }

  v31 = 0;
  v29 = 0;
LABEL_9:
  v32 = [v9 textLabel];
  [v32 setText:v29];

  v33 = [v9 detailTextLabel];
  [v33 setText:v31];

  v34 = [MEMORY[0x277D755B8] systemImageNamed:@"circle"];
  v35 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v34];
  v36 = [MEMORY[0x277D75348] systemGrayColor];
  [v35 setTintColor:v36];

  [v9 setAccessoryView:v35];

  return v9;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  [(OBBoldTrayButton *)self->_continueButton setEnabled:1];
  [(SSOBBoldTrayButton *)self->_continueButton setUserInteractionEnabled:1];
  self->_isDataOnlySelected = [v6 section] == 0;
  [(TSTravelSimCapabilitySelectionViewController *)self _refreshTableView];
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
  v2 = [(TSTravelSimCapabilitySelectionViewController *)self view];
  [v2 bounds];
  v4 = v3 * 0.2;

  return v4;
}

- (void)_continueButtonTapped:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
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

  v7 = [(TSTravelSimCapabilitySelectionViewController *)self delegate];
  [v7 waitForResponse:self];

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

@end