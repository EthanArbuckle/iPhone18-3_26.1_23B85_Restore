@interface TSTravelBuddyViewController
- (BOOL)_isPlanRegisteredForIMessage:(id)a3;
- (TSSIMSetupFlowDelegate)delegate;
- (TSTravelBuddyViewController)initWithIccids:(id)a3 homeIccid:(id)a4 voiceIccid:(id)a5 postArrivalInstallation:(BOOL)a6;
- (TSTravelBuddyViewController)initWithPlans:(id)a3 homeIccid:(id)a4;
- (double)_heightAnchorConstant;
- (id)_getDetailsTextWithIccid:(id)a3;
- (id)_getPlanItemsToLimitService:(id)a3;
- (id)_getSubTextForSection:(int64_t)a3;
- (id)_getSubTextToDisplay:(id)a3 carrierName:(id)a4;
- (id)_maybeUpdateHomeIccid:(id)a3 homeIccid:(id)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (void)_continueButtonTapped:(id)a3;
- (void)_dismissViewController;
- (void)_getTraveleSIMStateWithCompletion:(id)a3;
- (void)_isSubscriptionReadyForTravel4FF:(id)a3;
- (void)_laterButtonTapped:(id)a3;
- (void)_refreshTableView;
- (void)_setTravelIccidInfo:(id)a3;
- (void)backToCurrentTopPane;
- (void)prepare:(id)a3;
- (void)subscriptionInfoDidChange;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation TSTravelBuddyViewController

- (TSTravelBuddyViewController)initWithPlans:(id)a3 homeIccid:(id)a4
{
  v5 = a3;
  v45 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = [MEMORY[0x277CF96D8] sharedManager];
  v10 = [v9 planItemsShouldUpdate:0];
  planItems = self->_planItems;
  self->_planItems = v10;

  v12 = objc_alloc(MEMORY[0x277CC37B0]);
  v13 = [v12 initWithQueue:MEMORY[0x277D85CD0]];
  client = self->_client;
  self->_client = v13;

  v15 = [(TSTravelBuddyViewController *)self _maybeUpdateHomeIccid:v7 homeIccid:v8];
  homeIccid = self->_homeIccid;
  self->_homeIccid = v15;

  v17 = 0x27FF49000;
  if ([v7 count] == 1)
  {
    v18 = [v7 objectAtIndexedSubscript:0];
    [v18 targetIccid];
    v20 = v19 = v5;
    self->_isTravelSIMOnPhySlot = [TSUtilities isIccidForPhySlot:v20];

    v5 = v19;
    v21 = [v7 objectAtIndexedSubscript:0];
    v22 = [v21 targetIccid];
    [(TSTravelBuddyViewController *)self _setTravelIccidInfo:v22];

    v23 = [v7 objectAtIndexedSubscript:0];
    self->_isTravelSIMDataOnly = [v23 isDataOnly];

    v17 = 0x27FF49000uLL;
  }

  self->_isHomeSIMOnPhySlot = [TSUtilities isIccidForPhySlot:v8];
  v24 = *(&self->super.super.super.super.super.super.super.isa + *(v17 + 1592));
  v25 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v26 = v25;
  if (v24)
  {
    v27 = @"TRAVEL_PSIM_SETUP_COMPLETE_ABROAD_TITLE";
  }

  else
  {
    v27 = @"TRAVEL_ESIM_SETUP_COMPLETE_ABROAD_TITLE";
  }

  v28 = [v25 localizedStringForKey:v27 value:&stru_28753DF48 table:@"Localizable"];

  v29 = [(TSTravelBuddyViewController *)self _getDetailsTextWithIccid:self->_homeIccid];
  v38.receiver = self;
  v38.super_class = TSTravelBuddyViewController;
  v30 = [(OBTableWelcomeController *)&v38 initWithTitle:v28 detailText:v29 symbolName:@"antenna.radiowaves.left.and.right" adoptTableViewScrollView:1];
  v31 = v30;
  if (v30)
  {
    objc_storeStrong(&v30->_plans, v5);
    if ([v7 count] == 1)
    {
      v32 = [v7 objectAtIndexedSubscript:0];
      if ([v32 activatingState] != 3)
      {
        v31->_postArrivalInstallation = 1;
      }
    }

    v33 = _TSLogDomain();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      v34 = v31->_homeIccid;
      if (v31->_postArrivalInstallation)
      {
        v35 = @"MAYBE";
      }

      else
      {
        v35 = @"NO";
      }

      *buf = 138412802;
      v40 = v34;
      v41 = 2112;
      v42 = v35;
      v43 = 2080;
      v44 = "[TSTravelBuddyViewController initWithPlans:homeIccid:]";
      _os_log_impl(&dword_262AA8000, v33, OS_LOG_TYPE_DEFAULT, "home eSIM iccid (%@) post arrival installation (%@) @%s", buf, 0x20u);
    }
  }

  [(CoreTelephonyClient *)v31->_client setDelegate:v31];

  v36 = *MEMORY[0x277D85DE8];
  return v31;
}

- (TSTravelBuddyViewController)initWithIccids:(id)a3 homeIccid:(id)a4 voiceIccid:(id)a5 postArrivalInstallation:(BOOL)a6
{
  v44 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [MEMORY[0x277CF96D8] sharedManager];
  v14 = [v13 planItemsShouldUpdate:0];
  planItems = self->_planItems;
  self->_planItems = v14;

  v16 = objc_alloc(MEMORY[0x277CC37B0]);
  v17 = [v16 initWithQueue:MEMORY[0x277D85CD0]];
  client = self->_client;
  self->_client = v17;

  self->_isTravelSIMOnPhySlot = [TSUtilities isIccidForPhySlot:v10];
  self->_isHomeSIMOnPhySlot = [TSUtilities isIccidForPhySlot:v11];
  [(TSTravelBuddyViewController *)self _setTravelIccidInfo:v10];
  v34 = v12;
  self->_isTravelSIMDataOnly = [v10 isEqualToString:v12] ^ 1;
  isTravelSIMOnPhySlot = self->_isTravelSIMOnPhySlot;
  v20 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v21 = v20;
  if (isTravelSIMOnPhySlot)
  {
    v22 = @"TRAVEL_PSIM_SETUP_COMPLETE_ABROAD_TITLE";
  }

  else
  {
    v22 = @"TRAVEL_ESIM_SETUP_COMPLETE_ABROAD_TITLE";
  }

  v23 = [v20 localizedStringForKey:v22 value:&stru_28753DF48 table:@"Localizable"];

  v24 = [(TSTravelBuddyViewController *)self _getDetailsTextWithIccid:v11];
  v35.receiver = self;
  v35.super_class = TSTravelBuddyViewController;
  v25 = [(OBTableWelcomeController *)&v35 initWithTitle:v23 detailText:v24 symbolName:@"antenna.radiowaves.left.and.right" adoptTableViewScrollView:1];
  v26 = v25;
  if (v25)
  {
    objc_storeStrong(&v25->_travelIccid, a3);
    objc_storeStrong(&v26->_homeIccid, a4);
    objc_storeStrong(&v26->_voiceIccid, a5);
    v26->_postArrivalInstallation = a6;
    v27 = _TSLogDomain();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      travelIccid = v26->_travelIccid;
      homeIccid = v26->_homeIccid;
      voiceIccid = v26->_voiceIccid;
      *buf = 138413058;
      v37 = travelIccid;
      v38 = 2112;
      v39 = homeIccid;
      v40 = 2112;
      v41 = voiceIccid;
      v42 = 2080;
      v43 = "[TSTravelBuddyViewController initWithIccids:homeIccid:voiceIccid:postArrivalInstallation:]";
      _os_log_impl(&dword_262AA8000, v27, OS_LOG_TYPE_DEFAULT, "travel eSIM iccid (%@) home eSIM iccid (%@) default voice iccid (%@) @%s", buf, 0x2Au);
    }
  }

  [(CoreTelephonyClient *)v26->_client setDelegate:v26];

  v31 = *MEMORY[0x277D85DE8];
  return v26;
}

- (void)prepare:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (_os_feature_enabled_impl())
  {
    if (self->_postArrivalInstallation || ![(NSString *)self->_travelIccid length])
    {
      objc_initWeak(buf, self);
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __39__TSTravelBuddyViewController_prepare___block_invoke;
      v7[3] = &unk_279B44CD0;
      objc_copyWeak(&v9, buf);
      v8 = v4;
      [(TSTravelBuddyViewController *)self _getTraveleSIMStateWithCompletion:v7];

      objc_destroyWeak(&v9);
      objc_destroyWeak(buf);
    }

    else
    {
      v5 = _TSLogDomain();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v11 = "[TSTravelBuddyViewController prepare:]";
        _os_log_impl(&dword_262AA8000, v5, OS_LOG_TYPE_DEFAULT, "Showing travel buddy pane from post arrival notification @%s", buf, 0xCu);
      }

      (*(v4 + 2))(v4, 1);
    }
  }

  else
  {
    (*(v4 + 2))(v4, 0);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __39__TSTravelBuddyViewController_prepare___block_invoke(uint64_t a1, char a2)
{
  v11 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (!WeakRetained)
  {
LABEL_8:
    (*(*(a1 + 32) + 16))();
    goto LABEL_9;
  }

  if ((a2 & 1) == 0)
  {
    v5 = _TSLogDomain();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v10 = "[TSTravelBuddyViewController prepare:]_block_invoke";
      _os_log_impl(&dword_262AA8000, v5, OS_LOG_TYPE_DEFAULT, "Skip showing travel buddy pane @%s", buf, 0xCu);
    }

    goto LABEL_8;
  }

  if (*(a1 + 32))
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __39__TSTravelBuddyViewController_prepare___block_invoke_48;
    block[3] = &unk_279B44938;
    v8 = *(a1 + 32);
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

LABEL_9:

  v6 = *MEMORY[0x277D85DE8];
}

- (void)backToCurrentTopPane
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = _TSLogDomain();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[TSTravelBuddyViewController backToCurrentTopPane]";
    _os_log_impl(&dword_262AA8000, v3, OS_LOG_TYPE_DEFAULT, "Resetting didUserClickContinue @%s", &v6, 0xCu);
  }

  v4 = [(CoreTelephonyClient *)self->_client delegate];

  if (!v4)
  {
    [(CoreTelephonyClient *)self->_client setDelegate:self];
  }

  self->_backFromNextPane = 1;
  self->_didUserClickContinue = 0;
  [(OBBoldTrayButton *)self->_continueButton setEnabled:1];
  [(OBLinkTrayButton *)self->_laterButton setEnabled:1];
  [(OBWelcomeController *)self _hideButtonTraySpinner];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)viewDidLoad
{
  v29.receiver = self;
  v29.super_class = TSTravelBuddyViewController;
  [(TSOBTableWelcomeController *)&v29 viewDidLoad];
  v3 = +[SSOBBoldTrayButton boldButton];
  continueButton = self->_continueButton;
  self->_continueButton = v3;

  [(SSOBBoldTrayButton *)self->_continueButton addTarget:self action:sel__continueButtonTapped_ forControlEvents:64];
  [(OBBoldTrayButton *)self->_continueButton setEnabled:0];
  v5 = self->_continueButton;
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"CONTINUE" value:&stru_28753DF48 table:@"Localizable"];
  [(SSOBBoldTrayButton *)v5 setTitle:v7 forState:0];

  v8 = [(TSTravelBuddyViewController *)self buttonTray];
  [v8 addButton:self->_continueButton];

  if (!self->_postArrivalInstallation)
  {
    v9 = [MEMORY[0x277D37650] linkButton];
    laterButton = self->_laterButton;
    self->_laterButton = v9;

    v11 = self->_laterButton;
    v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v13 = [v12 localizedStringForKey:@"NOT_NOW" value:&stru_28753DF48 table:@"Localizable"];
    [(OBLinkTrayButton *)v11 setTitle:v13 forState:0];

    [(OBLinkTrayButton *)self->_laterButton addTarget:self action:sel__laterButtonTapped_ forControlEvents:64];
    v14 = [(TSTravelBuddyViewController *)self buttonTray];
    [v14 addButton:self->_laterButton];
  }

  v15 = [(OBBaseWelcomeController *)self navigationItem];
  [v15 setHidesBackButton:0];

  v16 = objc_alloc(MEMORY[0x277D75B40]);
  v17 = [v16 initWithFrame:2 style:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [(OBTableWelcomeController *)self setTableView:v17];

  v18 = [(OBTableWelcomeController *)self tableView];
  [v18 setTranslatesAutoresizingMaskIntoConstraints:0];

  v19 = [(OBTableWelcomeController *)self tableView];
  [v19 setAllowsMultipleSelection:0];

  v20 = [(OBTableWelcomeController *)self tableView];
  [v20 setScrollEnabled:1];

  v21 = [(OBTableWelcomeController *)self tableView];
  v22 = [MEMORY[0x277D75348] clearColor];
  [v21 setBackgroundColor:v22];

  v23 = [(OBTableWelcomeController *)self tableView];
  [v23 setDataSource:self];

  v24 = [(OBTableWelcomeController *)self tableView];
  [v24 reloadData];

  v25 = [(OBTableWelcomeController *)self tableView];
  v26 = [v25 heightAnchor];
  [(TSTravelBuddyViewController *)self _heightAnchorConstant];
  v27 = [v26 constraintEqualToConstant:?];
  tableHeightAnchor = self->_tableHeightAnchor;
  self->_tableHeightAnchor = v27;

  [(NSLayoutConstraint *)self->_tableHeightAnchor setActive:1];
  self->_isShown = 1;
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  if (self->_isTravelSIMDataOnly)
  {
    return 2;
  }

  else
  {
    return 3;
  }
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

  [v10 setSelectionStyle:0];
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

  if ([v6 section] == 2)
  {
    v22 = [MEMORY[0x277D751C0] listCellConfiguration];
    v23 = [MEMORY[0x277D75348] whiteColor];
    [v22 setBackgroundColor:v23];

    [v22 setBackgroundColorTransformer:&__block_literal_global_5];
    [v10 setBackgroundConfiguration:v22];
  }

  else
  {
    v24 = [v10 layer];
    [v24 setBorderWidth:1.0];

    v22 = [MEMORY[0x277D75348] systemGray6Color];
    v25 = [v22 CGColor];
    v26 = [v10 layer];
    [v26 setBorderColor:v25];
  }

  if (![v6 section])
  {
    isTravelSIMOnPhySlot = self->_isTravelSIMOnPhySlot;
    v30 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v31 = v30;
    if (isTravelSIMOnPhySlot)
    {
      v34 = @"TRAVEL_BUDDY_TRAVEL_PSIM_ONLY_TITLE";
    }

    else
    {
      v34 = @"TRAVEL_BUDDY_TRAVEL_ESIM_ONLY_TITLE";
    }

LABEL_18:
    v36 = [v30 localizedStringForKey:v34 value:&stru_28753DF48 table:@"Localizable"];

    v37 = -[TSTravelBuddyViewController _getSubTextForSection:](self, "_getSubTextForSection:", [v6 section]);
    goto LABEL_23;
  }

  v27 = [v6 section];
  v28 = self->_isTravelSIMOnPhySlot;
  if (v27 == 1)
  {
    isHomeSIMOnPhySlot = self->_isHomeSIMOnPhySlot;
    v30 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v31 = v30;
    v32 = @"TRAVEL_BUDDY_TRAVEL_PSIM_AND_HOME_ESIM_TITLE";
    if (isHomeSIMOnPhySlot)
    {
      v32 = @"TRAVEL_BUDDY_TRAVEL_PSIM_AND_HOME_PSIM_TITLE";
    }

    v33 = @"TRAVEL_BUDDY_TRAVEL_ESIM_AND_HOME_PSIM_TITLE";
    if (!isHomeSIMOnPhySlot)
    {
      v33 = @"TRAVEL_BUDDY_TRAVEL_ESIM_AND_HOME_ESIM_TITLE";
    }

    if (v28)
    {
      v34 = v32;
    }

    else
    {
      v34 = v33;
    }

    goto LABEL_18;
  }

  v38 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v39 = v38;
  if (v28)
  {
    v40 = @"TRAVEL_BUDDY_TRAVEL_PSIM_FOOTER";
  }

  else
  {
    v40 = @"TRAVEL_BUDDY_TRAVEL_ESIM_FOOTER";
  }

  v37 = [v38 localizedStringForKey:v40 value:&stru_28753DF48 table:@"Localizable"];

  v36 = 0;
LABEL_23:
  v41 = [v10 textLabel];
  [v41 setText:v36];

  v42 = [v10 detailTextLabel];
  [v42 setText:v37];

  if ([v6 section] != 2)
  {
    v43 = [MEMORY[0x277D755B8] systemImageNamed:@"circle"];
    v44 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v43];
    v45 = [MEMORY[0x277D75348] systemGrayColor];
    [v44 setTintColor:v45];

    [v10 setAccessoryView:v44];
  }

  return v10;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = a4;
  if ([v5 section] == 2)
  {
    self->_isSubTextSelected = 1;
    goto LABEL_10;
  }

  if ([v5 section])
  {
    self->_travelOnlySelected = 0;
    self->_isSubTextSelected = 0;
    v6 = _TSLogDomain();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 136315138;
      *&v9[4] = "[TSTravelBuddyViewController tableView:didSelectRowAtIndexPath:]";
      v7 = "User chose to keep travel & home SIMs. @%s";
LABEL_8:
      _os_log_impl(&dword_262AA8000, v6, OS_LOG_TYPE_DEFAULT, v7, v9, 0xCu);
    }
  }

  else
  {
    self->_travelOnlySelected = 1;
    self->_isSubTextSelected = 0;
    v6 = _TSLogDomain();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 136315138;
      *&v9[4] = "[TSTravelBuddyViewController tableView:didSelectRowAtIndexPath:]";
      v7 = "User chose to keep travel SIM only. @%s";
      goto LABEL_8;
    }
  }

LABEL_10:
  if (!self->_isSubTextSelected)
  {
    [(OBBoldTrayButton *)self->_continueButton setEnabled:1];
    [(SSOBBoldTrayButton *)self->_continueButton setUserInteractionEnabled:1];
  }

  [(TSTravelBuddyViewController *)self _refreshTableView];

  v8 = *MEMORY[0x277D85DE8];
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  v4 = objc_alloc(MEMORY[0x277D75D18]);
  v5 = [v4 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];

  return v5;
}

- (void)subscriptionInfoDidChange
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = _TSLogDomain();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v32 = "[TSTravelBuddyViewController subscriptionInfoDidChange]";
    _os_log_impl(&dword_262AA8000, v3, OS_LOG_TYPE_DEFAULT, "subscriptionInfoDidChange @%s", buf, 0xCu);
  }

  if (self->_didUserClickContinue)
  {
    v4 = [MEMORY[0x277CF96D8] sharedManager];
    v5 = [v4 planItemsShouldUpdate:0];
    planItems = self->_planItems;
    self->_planItems = v5;

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v7 = self->_planItems;
    v8 = 0;
    v9 = [(NSArray *)v7 countByEnumeratingWithState:&v27 objects:v35 count:16];
    if (v9)
    {
      v11 = *v28;
      *&v10 = 138412546;
      v23 = v10;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v28 != v11)
          {
            objc_enumerationMutation(v7);
          }

          v13 = *(*(&v27 + 1) + 8 * i);
          if ([v13 isSelected])
          {
            v14 = [v13 iccid];
            v15 = [v14 isEqualToString:self->_travelIccid];

            if (v15)
            {
              v16 = _TSLogDomain();
              if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
              {
                *buf = v23;
                v32 = v13;
                v33 = 2080;
                v34 = "[TSTravelBuddyViewController subscriptionInfoDidChange]";
                _os_log_impl(&dword_262AA8000, v16, OS_LOG_TYPE_DEFAULT, "Set plan item to (%@) @%s", buf, 0x16u);
              }

              v17 = v13;
              v8 = v17;
            }
          }
        }

        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v27 objects:v35 count:16];
      }

      while (v9);
    }

    v18 = +[TSCellularPlanManagerCache sharedInstance];
    v19 = [v18 getSubscriptionContextUUIDforPlan:v8];

    if (v19)
    {
      objc_initWeak(buf, self);
      v20 = +[TSCoreTelephonyClientCache sharedInstance];
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __56__TSTravelBuddyViewController_subscriptionInfoDidChange__block_invoke;
      v24[3] = &unk_279B44D18;
      objc_copyWeak(&v26, buf);
      v25 = v19;
      [v20 getSubscriptionInfo:v24];

      objc_destroyWeak(&v26);
      objc_destroyWeak(buf);
    }

    else
    {
      v21 = _TSLogDomain();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v32 = "[TSTravelBuddyViewController subscriptionInfoDidChange]";
        _os_log_impl(&dword_262AA8000, v21, OS_LOG_TYPE_DEFAULT, "Subscription context UUID is not ready, continue waiting... @%s", buf, 0xCu);
      }
    }
  }

  else
  {
    v8 = _TSLogDomain();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v32 = "[TSTravelBuddyViewController subscriptionInfoDidChange]";
      _os_log_impl(&dword_262AA8000, v8, OS_LOG_TYPE_DEFAULT, "Wait until user makes a decision @%s", buf, 0xCu);
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __56__TSTravelBuddyViewController_subscriptionInfoDidChange__block_invoke(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v5 = [v3 subscriptions];
    v6 = [v5 countByEnumeratingWithState:&v23 objects:v31 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v24;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v24 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v23 + 1) + 8 * i) uuid];
          v11 = [v10 UUIDString];
          v12 = [v11 isEqualToString:*(a1 + 32)];

          if (v12)
          {
            v13 = _TSLogDomain();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
            {
              v14 = WeakRetained[166];
              *buf = 138412546;
              v28 = v14;
              v29 = 2080;
              v30 = "[TSTravelBuddyViewController subscriptionInfoDidChange]_block_invoke";
              _os_log_impl(&dword_262AA8000, v13, OS_LOG_TYPE_DEFAULT, "Found subscription context for (%@) @%s", buf, 0x16u);
            }

            [WeakRetained _dismissViewController];
            goto LABEL_16;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v23 objects:v31 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }
  }

  else
  {
    v5 = _TSLogDomain();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __56__TSTravelBuddyViewController_subscriptionInfoDidChange__block_invoke_cold_1(v5, v15, v16, v17, v18, v19, v20, v21);
    }
  }

LABEL_16:

  v22 = *MEMORY[0x277D85DE8];
}

- (void)_dismissViewController
{
  [(CoreTelephonyClient *)self->_client setDelegate:0];
  v3 = [(TSTravelBuddyViewController *)self delegate];
  [v3 viewControllerDidComplete:self];
}

- (double)_heightAnchorConstant
{
  v2 = [(TSTravelBuddyViewController *)self view];
  [v2 bounds];
  v4 = v3 * 0.2;

  return v4;
}

- (void)_refreshTableView
{
  v3 = [(OBTableWelcomeController *)self tableView];
  v4 = [v3 numberOfSections];

  if (v4)
  {
    v5 = 0;
    v6 = 0x277CCA000uLL;
    while (1)
    {
      v23 = [*(v6 + 2672) indexPathForRow:0 inSection:v5];
      v7 = [(OBTableWelcomeController *)self tableView];
      v8 = [v7 cellForRowAtIndexPath:v23];

      if ([v23 section] == 2)
      {
        break;
      }

      if (!self->_isSubTextSelected)
      {
        v9 = [(OBTableWelcomeController *)self tableView];
        v10 = [v9 indexPathsForSelectedRows];
        v11 = [v10 containsObject:v23];

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

        v6 = 0x277CCA000;
      }

      ++v5;
      v21 = [(OBTableWelcomeController *)self tableView];
      v22 = [v21 numberOfSections];

      if (v5 >= v22)
      {
        return;
      }
    }
  }
}

- (void)_continueButtonTapped:(id)a3
{
  v53 = *MEMORY[0x277D85DE8];
  v34 = a3;
  self->_didUserClickContinue = 1;
  v36 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [(NSString *)self->_travelIccid isEqualToString:self->_voiceIccid];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = self->_planItems;
  v4 = [(NSArray *)obj countByEnumeratingWithState:&v44 objects:v52 count:16];
  if (v4)
  {
    v39 = 0;
    v40 = 0;
    v38 = 0;
    v5 = *v45;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v45 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v44 + 1) + 8 * i);
        v8 = [v7 iccid];
        v9 = [v8 isEqualToString:self->_voiceIccid];

        if (v9)
        {
          v10 = v7;

          v38 = v10;
        }

        v11 = [v7 iccid];
        v12 = [v11 isEqualToString:self->_travelIccid];

        if (v12)
        {
          v13 = v7;

          v40 = v13;
        }

        v14 = [v7 iccid];
        v15 = [v14 isEqualToString:self->_homeIccid];

        if (v15)
        {
          v16 = v7;

          v39 = v16;
        }

        if ([v7 isSelected])
        {
          [v36 addObject:v7];
        }
      }

      v4 = [(NSArray *)obj countByEnumeratingWithState:&v44 objects:v52 count:16];
    }

    while (v4);
  }

  else
  {
    v39 = 0;
    v40 = 0;
    v38 = 0;
  }

  v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [v17 addObject:v40];
  if (!self->_travelOnlySelected && v39)
  {
    [v17 addObject:v39];
  }

  if ([v17 count])
  {
    [(OBWelcomeController *)self _showButtonTraySpinnerWithBusyText:@" "];
    v18 = _TSLogDomain();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v49 = v17;
      v50 = 2080;
      v51 = "[TSTravelBuddyViewController _continueButtonTapped:]";
      _os_log_impl(&dword_262AA8000, v18, OS_LOG_TYPE_DEFAULT, "selectedItems %@ @%s", buf, 0x16u);
    }

    v19 = [MEMORY[0x277CF96D8] sharedManager];
    v20 = [v19 didEnablePlanItemsForTravel:v17];

    if (v20)
    {
      v21 = _TSLogDomain();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [(TSTravelBuddyViewController *)v17 _continueButtonTapped:v20, v21];
      }
    }

    v22 = +[TSCellularPlanManagerCache sharedInstance];
    [v22 selectPlanForVoice:v38];
    [v22 selectPlanForData:v40];
    if (self->_backFromNextPane && self->_prevTravelOnlySelection == self->_travelOnlySelected)
    {
      v23 = _TSLogDomain();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v49 = "[TSTravelBuddyViewController _continueButtonTapped:]";
        _os_log_impl(&dword_262AA8000, v23, OS_LOG_TYPE_DEFAULT, "Same selection after tapping back from low data mode pane. @%s", buf, 0xCu);
      }

      v24 = [(TSTravelBuddyViewController *)self delegate];
      [v24 viewControllerDidComplete:self];
    }

    else
    {
      if (self->_isTravelSIMOnPhySlot)
      {
        objc_initWeak(buf, self);
        v42[0] = MEMORY[0x277D85DD0];
        v42[1] = 3221225472;
        v42[2] = __53__TSTravelBuddyViewController__continueButtonTapped___block_invoke;
        v42[3] = &unk_279B44D40;
        objc_copyWeak(&v43, buf);
        [(TSTravelBuddyViewController *)self _isSubscriptionReadyForTravel4FF:v42];
        objc_destroyWeak(&v43);
        objc_destroyWeak(buf);
      }

      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __53__TSTravelBuddyViewController__continueButtonTapped___block_invoke_116;
      block[3] = &unk_279B44578;
      block[4] = self;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }
  }

  else
  {
    v25 = _TSLogDomain();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [(TSTravelBuddyViewController *)v25 _continueButtonTapped:v26, v27, v28, v29, v30, v31, v32];
    }

    v20 = [(TSTravelBuddyViewController *)self delegate];
    [v20 viewControllerDidComplete:self];
  }

  v33 = *MEMORY[0x277D85DE8];
}

void __53__TSTravelBuddyViewController__continueButtonTapped___block_invoke(uint64_t a1, int a2)
{
  v19 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (a2)
    {
      v4 = _TSLogDomain();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = WeakRetained[166];
        v15 = 138412546;
        v16 = v5;
        v17 = 2080;
        v18 = "[TSTravelBuddyViewController _continueButtonTapped:]_block_invoke";
        _os_log_impl(&dword_262AA8000, v4, OS_LOG_TYPE_DEFAULT, "Subscription context for travel 4FF (%@) is ready. @%s", &v15, 0x16u);
      }

      [WeakRetained _dismissViewController];
    }
  }

  else
  {
    v6 = _TSLogDomain();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __53__TSTravelBuddyViewController__continueButtonTapped___block_invoke_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

uint64_t __53__TSTravelBuddyViewController__continueButtonTapped___block_invoke_116(uint64_t a1)
{
  [*(*(a1 + 32) + 1392) setEnabled:0];
  result = [*(*(a1 + 32) + 1400) setEnabled:0];
  *(*(a1 + 32) + 1413) = *(*(a1 + 32) + 1410);
  return result;
}

- (id)_getPlanItemsToLimitService:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (self->_travelOnlySelected)
  {
    v6 = v4;
  }

  else if ([v4 count] == 2)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v9)
    {
      v10 = v9;
      v18 = v7;
      v11 = *v20;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v19 + 1) + 8 * i);
          v14 = [v13 iccid];
          v15 = [v14 isEqualToString:self->_homeIccid];

          if (v15)
          {
            v7 = v18;
            [v18 addObject:v13];
            v6 = v18;
            goto LABEL_16;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }

      v6 = 0;
      v7 = v18;
    }

    else
    {
      v6 = 0;
    }

LABEL_16:
  }

  else
  {
    v6 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)_laterButtonTapped:(id)a3
{
  v3 = [(TSTravelBuddyViewController *)self delegate];
  [v3 userDidTapCancel];
}

- (void)_getTraveleSIMStateWithCompletion:(id)a3
{
  location[3] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(NSArray *)self->_plans count]== 1)
  {
    v5 = [(NSArray *)self->_plans objectAtIndexedSubscript:0];
    objc_initWeak(location, self);
    client = self->_client;
    v7 = [v5 targetIccid];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __65__TSTravelBuddyViewController__getTraveleSIMStateWithCompletion___block_invoke;
    v11[3] = &unk_279B44D68;
    objc_copyWeak(&v14, location);
    v13 = v4;
    v8 = v5;
    v12 = v8;
    [(CoreTelephonyClient *)client getTravelInfoForIccid:v7 completion:v11];

    objc_destroyWeak(&v14);
    objc_destroyWeak(location);
  }

  else
  {
    v9 = _TSLogDomain();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(location[0]) = 136315138;
      *(location + 4) = "[TSTravelBuddyViewController _getTraveleSIMStateWithCompletion:]";
      _os_log_impl(&dword_262AA8000, v9, OS_LOG_TYPE_DEFAULT, "Not a single SIM installation. @%s", location, 0xCu);
    }

    (*(v4 + 2))(v4, 0);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __65__TSTravelBuddyViewController__getTraveleSIMStateWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (!WeakRetained)
  {
    goto LABEL_19;
  }

  v5 = _TSLogDomain();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [*(a1 + 32) targetIccid];
    v22 = 138412802;
    v23 = v6;
    v24 = 2112;
    v25 = v3;
    v26 = 2080;
    v27 = "[TSTravelBuddyViewController _getTraveleSIMStateWithCompletion:]_block_invoke";
    _os_log_impl(&dword_262AA8000, v5, OS_LOG_TYPE_DEFAULT, "CTPlanTravelDetails for %@: %@ @%s", &v22, 0x20u);
  }

  if (([v3 isTraveleSIM] & 1) == 0 || (objc_msgSend(v3, "isUserTraveling") & 1) == 0)
  {
    goto LABEL_19;
  }

  if (![TSUtilities numActivePlansOnDeviceExcept:0])
  {
    v10 = _TSLogDomain();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 136315138;
      v23 = "[TSTravelBuddyViewController _getTraveleSIMStateWithCompletion:]_block_invoke";
      v11 = "Travel eSIM is installed while abroad and it's the only SIM @%s";
LABEL_17:
      _os_log_impl(&dword_262AA8000, v10, OS_LOG_TYPE_DEFAULT, v11, &v22, 0xCu);
    }

LABEL_18:

LABEL_19:
    v17 = *(*(a1 + 40) + 16);
    goto LABEL_20;
  }

  v7 = [v3 isDataOnly];
  if (v7)
  {
    v8 = [v3 isDataOnly];
    v9 = (a1 + 32);
    [*(a1 + 32) setIsDataOnly:{objc_msgSend(v8, "BOOLValue")}];
  }

  else
  {
    v9 = (a1 + 32);
    [*(a1 + 32) setIsDataOnly:0];
  }

  if (![WeakRetained[167] length])
  {
    v10 = _TSLogDomain();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 136315138;
      v23 = "[TSTravelBuddyViewController _getTraveleSIMStateWithCompletion:]_block_invoke";
      v11 = "Default voice iccid is not set. @%s";
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  v12 = [*v9 targetIccid];
  v13 = WeakRetained[166];
  WeakRetained[166] = v12;

  v14 = [*v9 isDataOnly];
  v15 = v14;
  if (v14)
  {
    v16 = WeakRetained[167];
  }

  else
  {
    v16 = [*v9 targetIccid];
  }

  objc_storeStrong(WeakRetained + 168, v16);
  if ((v15 & 1) == 0)
  {
  }

  v19 = _TSLogDomain();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = WeakRetained[166];
    v21 = WeakRetained[168];
    v22 = 138412802;
    v23 = v20;
    v24 = 2112;
    v25 = v21;
    v26 = 2080;
    v27 = "[TSTravelBuddyViewController _getTraveleSIMStateWithCompletion:]_block_invoke";
    _os_log_impl(&dword_262AA8000, v19, OS_LOG_TYPE_DEFAULT, "travelIccid (%@) voiceIccid (%@) @%s", &v22, 0x20u);
  }

  v17 = *(*(a1 + 40) + 16);
LABEL_20:
  v17();

  v18 = *MEMORY[0x277D85DE8];
}

- (BOOL)_isPlanRegisteredForIMessage:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [objc_alloc(MEMORY[0x277D18778]) initWithService:@"com.apple.madrid"];
  v5 = v4;
  if (v4)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v6 = [v4 accounts];
    v7 = [v6 countByEnumeratingWithState:&v24 objects:v32 count:16];
    if (v7)
    {
      v8 = *v25;
      while (2)
      {
        for (i = 0; i != v7; i = (i + 1))
        {
          if (*v25 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = [*(*(&v24 + 1) + 8 * i) matchingSim];
          v11 = [v10 SIMIdentifier];

          if (v11)
          {
            v12 = [v3 userLabel];
            v13 = [v12 labelId];
            v14 = [v11 isEqualToString:v13];

            if (v14)
            {
              v7 = _TSLogDomain();
              if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                v29 = v3;
                v30 = 2080;
                v31 = "[TSTravelBuddyViewController _isPlanRegisteredForIMessage:]";
                _os_log_impl(&dword_262AA8000, v7, OS_LOG_TYPE_DEFAULT, "Cellular plan item %@ is currently registered for iMessage @%s", buf, 0x16u);
              }

              LOBYTE(v7) = 1;
              goto LABEL_18;
            }
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v24 objects:v32 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }
  }

  else
  {
    v6 = _TSLogDomain();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(TSTravelBuddyViewController *)v6 _isPlanRegisteredForIMessage:v15, v16, v17, v18, v19, v20, v21];
    }

    LOBYTE(v7) = 0;
  }

LABEL_18:

  v22 = *MEMORY[0x277D85DE8];
  return v7;
}

- (id)_getDetailsTextWithIccid:(id)a3
{
  v53 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [TSUtilities getCellularPlanItem:self->_planItems withIccid:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 phoneNumber];
    homeIccidPhoneNumber = self->_homeIccidPhoneNumber;
    self->_homeIccidPhoneNumber = v7;

    v9 = [v6 name];
    homeIccidCarrierName = self->_homeIccidCarrierName;
    self->_homeIccidCarrierName = v9;

    v43 = v6;
    objc_storeStrong(&self->_homeIccidPlanItem, v6);
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v11 = self->_planItems;
    v12 = [(NSArray *)v11 countByEnumeratingWithState:&v44 objects:v52 count:16];
    if (!v12)
    {
      goto LABEL_18;
    }

    v13 = v12;
    v14 = *v45;
    while (1)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v45 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v44 + 1) + 8 * i);
        v17 = [v16 iccid];
        v18 = [v17 isEqualToString:v4];

        if ((v18 & 1) == 0)
        {
          v19 = [v16 iccid];
          v20 = [v19 isEqualToString:self->_travelIccid];

          if (v20)
          {
            v21 = _TSLogDomain();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v49 = v16;
              v50 = 2080;
              v51 = "[TSTravelBuddyViewController _getDetailsTextWithIccid:]";
              _os_log_impl(&dword_262AA8000, v21, OS_LOG_TYPE_DEFAULT, "Setting _travelIccidPlanItem (%@) @%s", buf, 0x16u);
            }

            v22 = v16;
            travelIccidPlanItem = self->_travelIccidPlanItem;
            self->_travelIccidPlanItem = v22;
LABEL_12:

            continue;
          }

          if ([v16 isSelected])
          {
            self->_isDualSIMConfig = 1;
            v24 = [v16 phoneNumber];
            secondHomeIccidPhoneNumber = self->_secondHomeIccidPhoneNumber;
            self->_secondHomeIccidPhoneNumber = v24;

            v26 = [v16 name];
            secondHomeIccidCarrierName = self->_secondHomeIccidCarrierName;
            self->_secondHomeIccidCarrierName = v26;

            objc_storeStrong(&self->_secondHomeIccidPlanItem, v16);
            travelIccidPlanItem = _TSLogDomain();
            if (os_log_type_enabled(travelIccidPlanItem, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315138;
              v49 = "[TSTravelBuddyViewController _getDetailsTextWithIccid:]";
              _os_log_impl(&dword_262AA8000, travelIccidPlanItem, OS_LOG_TYPE_DEFAULT, "User is in dual SIM config (non travel SIM) @%s", buf, 0xCu);
            }

            goto LABEL_12;
          }
        }
      }

      v13 = [(NSArray *)v11 countByEnumeratingWithState:&v44 objects:v52 count:16];
      if (!v13)
      {
LABEL_18:

        isTravelSIMOnPhySlot = self->_isTravelSIMOnPhySlot;
        v29 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v30 = v29;
        if (isTravelSIMOnPhySlot)
        {
          v31 = @"TRAVEL_PSIM_SETUP_COMPLETE_ABROAD_DETAILS_NO_INFO";
        }

        else
        {
          v31 = @"TRAVEL_ESIM_SETUP_COMPLETE_ABROAD_DETAILS_NO_INFO";
        }

        v40 = [v29 localizedStringForKey:v31 value:&stru_28753DF48 table:@"Localizable"];
        v6 = v43;
        goto LABEL_25;
      }
    }
  }

  v32 = _TSLogDomain();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
  {
    [(TSTravelBuddyViewController *)v32 _getDetailsTextWithIccid:v33, v34, v35, v36, v37, v38, v39];
  }

  v30 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v40 = [v30 localizedStringForKey:@"TRAVEL_ESIM_SETUP_COMPLETE_ABROAD_DETAILS" value:&stru_28753DF48 table:@"Localizable"];
LABEL_25:

  v41 = *MEMORY[0x277D85DE8];

  return v40;
}

- (void)_setTravelIccidInfo:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = self->_planItems;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        v11 = [v10 iccid];
        v12 = [v11 isEqualToString:v4];

        if (v12)
        {
          v13 = _TSLogDomain();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v24 = v4;
            v25 = 2080;
            v26 = "[TSTravelBuddyViewController _setTravelIccidInfo:]";
            _os_log_impl(&dword_262AA8000, v13, OS_LOG_TYPE_DEFAULT, "Setting travel iccid info for %@ @%s", buf, 0x16u);
          }

          v14 = [v10 phoneNumber];
          if ([v14 length])
          {
            [v10 phoneNumber];
          }

          else
          {
            [v10 name];
          }
          v15 = ;
          objc_storeStrong(&self->_travelIccidInfo, v15);

          v16 = [v10 iccid];
          travelIccid = self->_travelIccid;
          self->_travelIccid = v16;

          goto LABEL_16;
        }
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v19 objects:v27 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_16:

  v18 = *MEMORY[0x277D85DE8];
}

- (id)_maybeUpdateHomeIccid:(id)a3 homeIccid:(id)a4
{
  v35 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([v6 count] == 1)
  {
    v8 = [v6 objectAtIndexedSubscript:0];
    v9 = [v8 targetIccid];
    v10 = [v9 isEqualToString:v7];

    if (v10)
    {
      v25 = v7;
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v11 = self->_planItems;
      v12 = [(NSArray *)v11 countByEnumeratingWithState:&v26 objects:v34 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v27;
        while (2)
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v27 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v26 + 1) + 8 * i);
            if ([v16 isSelected])
            {
              v17 = [v16 iccid];
              v18 = [v8 targetIccid];
              v19 = [v17 isEqualToString:v18];

              if ((v19 & 1) == 0)
              {
                v21 = _TSLogDomain();
                if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
                {
                  v22 = [v16 iccid];
                  *buf = 138412546;
                  v31 = v22;
                  v32 = 2080;
                  v33 = "[TSTravelBuddyViewController _maybeUpdateHomeIccid:homeIccid:]";
                  _os_log_impl(&dword_262AA8000, v21, OS_LOG_TYPE_DEFAULT, "Home ICCID needs to be updated to %@ @%s", buf, 0x16u);
                }

                v20 = [v16 iccid];

                goto LABEL_18;
              }
            }
          }

          v13 = [(NSArray *)v11 countByEnumeratingWithState:&v26 objects:v34 count:16];
          if (v13)
          {
            continue;
          }

          break;
        }
      }

      v20 = &stru_28753DF48;
LABEL_18:
      v7 = v25;
    }

    else
    {
      v20 = v7;
    }
  }

  else
  {
    v20 = v7;
  }

  v23 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)_getSubTextToDisplay:(id)a3 carrierName:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v5 && [v5 length])
  {
    v7 = [v5 formattedPhoneNumber];
  }

  else
  {
    v7 = v6;
  }

  v8 = v7;

  return v8;
}

- (id)_getSubTextForSection:(int64_t)a3
{
  v5 = [(TSTravelBuddyViewController *)self _getSubTextToDisplay:self->_homeIccidPhoneNumber carrierName:self->_homeIccidCarrierName];
  v6 = [(TSTravelBuddyViewController *)self _getSubTextToDisplay:self->_secondHomeIccidPhoneNumber carrierName:self->_secondHomeIccidCarrierName];
  if (a3 == 1)
  {
    if (self->_isDualSIMConfig)
    {
      v14 = [(TSTravelBuddyViewController *)self _isPlanRegisteredForIMessage:self->_secondHomeIccidPlanItem];
      isTravelSIMOnPhySlot = self->_isTravelSIMOnPhySlot;
      isTravelSIMDataOnly = self->_isTravelSIMDataOnly;
      v10 = MEMORY[0x277CCACA8];
      v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      if (v14)
      {
        if (isTravelSIMOnPhySlot)
        {
          if (isTravelSIMDataOnly)
          {
            v17 = @"TRAVEL_BUDDY_TRAVEL_AND_HOME_PSIM_DETAILS_DATAONLY_%@_%@_%@";
          }

          else
          {
            v17 = @"TRAVEL_BUDDY_TRAVEL_AND_HOME_PSIM_DETAILS_%@_%@_%@";
          }
        }

        else if (isTravelSIMDataOnly)
        {
          v17 = @"TRAVEL_BUDDY_TRAVEL_AND_HOME_ESIM_DETAILS_DATAONLY_%@_%@_%@";
        }

        else
        {
          v17 = @"TRAVEL_BUDDY_TRAVEL_AND_HOME_ESIM_DETAILS_%@_%@_%@";
        }

        goto LABEL_39;
      }

      if (isTravelSIMOnPhySlot)
      {
        if (isTravelSIMDataOnly)
        {
          v13 = @"TRAVEL_BUDDY_TRAVEL_AND_HOME_PSIM_DETAILS_DATAONLY_%@_%@";
        }

        else
        {
          v13 = @"TRAVEL_BUDDY_TRAVEL_AND_HOME_PSIM_DETAILS_%@_%@";
        }
      }

      else if (isTravelSIMDataOnly)
      {
        v13 = @"TRAVEL_BUDDY_TRAVEL_AND_HOME_ESIM_DETAILS_DATAONLY_%@_%@";
      }

      else
      {
        v13 = @"TRAVEL_BUDDY_TRAVEL_AND_HOME_ESIM_DETAILS_%@_%@";
      }

LABEL_41:
      v11 = v12;
      goto LABEL_42;
    }

    v20 = self->_isTravelSIMOnPhySlot;
    v21 = self->_isTravelSIMDataOnly;
    v10 = MEMORY[0x277CCACA8];
    v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    if (v20)
    {
      if (v21)
      {
        v19 = @"TRAVEL_BUDDY_TRAVEL_AND_HOME_PSIM_DETAILS_DATAONLY_%@";
      }

      else
      {
        v19 = @"TRAVEL_BUDDY_TRAVEL_AND_HOME_PSIM_DETAILS_%@";
      }
    }

    else if (v21)
    {
      v19 = @"TRAVEL_BUDDY_TRAVEL_AND_HOME_ESIM_DETAILS_DATAONLY_%@";
    }

    else
    {
      v19 = @"TRAVEL_BUDDY_TRAVEL_AND_HOME_ESIM_DETAILS_%@";
    }
  }

  else
  {
    if (a3)
    {
      v18 = &stru_28753DF48;
      goto LABEL_45;
    }

    isDualSIMConfig = self->_isDualSIMConfig;
    v8 = [(TSTravelBuddyViewController *)self _isPlanRegisteredForIMessage:self->_homeIccidPlanItem];
    v9 = v8;
    if (isDualSIMConfig)
    {
      if (v8 && [(TSTravelBuddyViewController *)self _isPlanRegisteredForIMessage:self->_secondHomeIccidPlanItem])
      {
        v10 = MEMORY[0x277CCACA8];
        v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v12 = v11;
        v13 = @"TRAVEL_BUDDY_TRAVEL_ESIM_ONLY_DETAILS_DUALSIM_%@_%@";
LABEL_42:
        v22 = [v11 localizedStringForKey:v13 value:&stru_28753DF48 table:@"Localizable"];
        goto LABEL_43;
      }

      if ([(TSTravelBuddyViewController *)self _isPlanRegisteredForIMessage:self->_homeIccidPlanItem])
      {
        v10 = MEMORY[0x277CCACA8];
        v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v22 = [v12 localizedStringForKey:@"TRAVEL_BUDDY_TRAVEL_ESIM_ONLY_DETAILS_DUALSIM_NO_IMSG_ON_ONE_%@_%@_%@" value:&stru_28753DF48 table:@"Localizable"];
        v26 = v5;
LABEL_43:
        v25 = v6;
        goto LABEL_44;
      }

      v23 = [(TSTravelBuddyViewController *)self _isPlanRegisteredForIMessage:self->_secondHomeIccidPlanItem];
      v10 = MEMORY[0x277CCACA8];
      v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      if (v23)
      {
        v17 = @"TRAVEL_BUDDY_TRAVEL_ESIM_ONLY_DETAILS_DUALSIM_NO_IMSG_ON_ONE_%@_%@_%@";
LABEL_39:
        v22 = [v12 localizedStringForKey:v17 value:&stru_28753DF48 table:@"Localizable"];
        v26 = v6;
        goto LABEL_43;
      }

      v13 = @"TRAVEL_BUDDY_TRAVEL_ESIM_ONLY_DETAILS_DUALSIM_NO_IMSG_%@_%@";
      goto LABEL_41;
    }

    v10 = MEMORY[0x277CCACA8];
    v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    if (v9)
    {
      v19 = @"TRAVEL_BUDDY_TRAVEL_ESIM_ONLY_DETAILS_%@";
    }

    else
    {
      v19 = @"TRAVEL_BUDDY_TRAVEL_ESIM_ONLY_NO_IMSG_DETAILS_%@";
    }
  }

  v22 = [v12 localizedStringForKey:v19 value:&stru_28753DF48 table:@"Localizable"];
LABEL_44:
  v18 = [v10 stringWithFormat:v22, v5, v25, v26];

LABEL_45:

  return v18;
}

- (void)_isSubscriptionReadyForTravel4FF:(id)a3
{
  location[3] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_travelIccidPlanItem)
  {
    v5 = +[TSCellularPlanManagerCache sharedInstance];
    v6 = [v5 getSubscriptionContextUUIDforPlan:self->_travelIccidPlanItem];

    if (v6)
    {
      objc_initWeak(location, self);
      v7 = +[TSCoreTelephonyClientCache sharedInstance];
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __64__TSTravelBuddyViewController__isSubscriptionReadyForTravel4FF___block_invoke;
      v18[3] = &unk_279B444E0;
      objc_copyWeak(&v21, location);
      v20 = v4;
      v19 = v6;
      [v7 getSubscriptionInfo:v18];

      objc_destroyWeak(&v21);
      objc_destroyWeak(location);
    }

    else
    {
      v16 = _TSLogDomain();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(location[0]) = 136315138;
        *(location + 4) = "[TSTravelBuddyViewController _isSubscriptionReadyForTravel4FF:]";
        _os_log_impl(&dword_262AA8000, v16, OS_LOG_TYPE_DEFAULT, "Subscription context UUID is not ready for travel plan item @%s", location, 0xCu);
      }

      (*(v4 + 2))(v4, 0);
    }
  }

  else
  {
    v8 = _TSLogDomain();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(TSTravelBuddyViewController *)v8 _isSubscriptionReadyForTravel4FF:v9, v10, v11, v12, v13, v14, v15];
    }

    (*(v4 + 2))(v4, 0);
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __64__TSTravelBuddyViewController__isSubscriptionReadyForTravel4FF___block_invoke(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v5 = [v3 subscriptions];
    v6 = [v5 countByEnumeratingWithState:&v23 objects:v31 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v24;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v24 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v23 + 1) + 8 * i) uuid];
          v11 = [v10 UUIDString];
          v12 = [v11 isEqualToString:*(a1 + 32)];

          if (v12)
          {
            (*(*(a1 + 40) + 16))();

            goto LABEL_16;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v23 objects:v31 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v13 = _TSLogDomain();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = WeakRetained[166];
      *buf = 138412546;
      v28 = v14;
      v29 = 2080;
      v30 = "[TSTravelBuddyViewController _isSubscriptionReadyForTravel4FF:]_block_invoke";
      _os_log_impl(&dword_262AA8000, v13, OS_LOG_TYPE_DEFAULT, "Subscription is not ready for travel 4FF (%@) @%s", buf, 0x16u);
    }
  }

  else
  {
    v13 = _TSLogDomain();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __64__TSTravelBuddyViewController__isSubscriptionReadyForTravel4FF___block_invoke_cold_1(v13, v15, v16, v17, v18, v19, v20, v21);
    }
  }

  (*(*(a1 + 40) + 16))();
LABEL_16:

  v22 = *MEMORY[0x277D85DE8];
}

- (TSSIMSetupFlowDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __56__TSTravelBuddyViewController_subscriptionInfoDidChange__block_invoke_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_262AA8000, a1, a3, "[E]Self doesnt exist @%s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_continueButtonTapped:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = 138412802;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  v8 = 2080;
  v9 = "[TSTravelBuddyViewController _continueButtonTapped:]";
  _os_log_error_impl(&dword_262AA8000, log, OS_LOG_TYPE_ERROR, "[E]Enabling plans: %@, error: %@ @%s", &v4, 0x20u);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)_continueButtonTapped:(uint64_t)a3 .cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_262AA8000, a1, a3, "[E]No selected items! @%s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __53__TSTravelBuddyViewController__continueButtonTapped___block_invoke_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_262AA8000, a1, a3, "[E]Self doesnt exist @%s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_isPlanRegisteredForIMessage:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_262AA8000, a1, a3, "[E]Failed to get iMessageService. @%s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_getDetailsTextWithIccid:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_262AA8000, a1, a3, "[E]Failed to find a plan item for home iccid @%s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_isSubscriptionReadyForTravel4FF:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_262AA8000, a1, a3, "[E]Failed to find plan item for travel 4FF @%s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __64__TSTravelBuddyViewController__isSubscriptionReadyForTravel4FF___block_invoke_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_262AA8000, a1, a3, "[E]Self doesnt exist @%s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

@end