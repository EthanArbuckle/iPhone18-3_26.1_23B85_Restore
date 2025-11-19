@interface TSTravelModeIntroViewController
- (TSSIMSetupFlowDelegate)delegate;
- (TSTravelModeIntroViewController)init;
- (TSTravelModeIntroViewController)initWithOptions:(unint64_t)a3 extractionSource:(id)a4 reduceEducation:(unint64_t)a5 arrivalCountry:(id)a6;
- (id)_getCarrierNameForDefaultDataSub;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (void)_continueButtonTapped;
- (void)_setUpButtons;
- (void)_setUpTableView;
- (void)_skipButtonTapped:(id)a3;
- (void)tableView:(id)a3 willDisplayHeaderView:(id)a4 forSection:(int64_t)a5;
- (void)viewDidLoad;
@end

@implementation TSTravelModeIntroViewController

- (TSTravelModeIntroViewController)init
{
  self->_showBackButton = 1;
  v3 = [(TSTravelModeIntroViewController *)self _getCarrierNameForDefaultDataSub];
  dataSubCarrierName = self->_dataSubCarrierName;
  self->_dataSubCarrierName = v3;

  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"TRAVEL_MODE_PRE_DEPARTURE_TITLE" value:&stru_28753DF48 table:@"Localizable"];
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"TRAVEL_MODE_EDU_FROM_ADD_ESIM_BODY" value:&stru_28753DF48 table:@"Localizable"];
  v14.receiver = self;
  v14.super_class = TSTravelModeIntroViewController;
  v9 = [(OBTableWelcomeController *)&v14 initWithTitle:v6 detailText:v8 symbolName:@"antenna.radiowaves.left.and.right" adoptTableViewScrollView:1];

  if (v9)
  {
    v10 = objc_alloc(MEMORY[0x277CC37B0]);
    v11 = [v10 initWithQueue:MEMORY[0x277D85CD0]];
    client = v9->_client;
    v9->_client = v11;
  }

  return v9;
}

- (TSTravelModeIntroViewController)initWithOptions:(unint64_t)a3 extractionSource:(id)a4 reduceEducation:(unint64_t)a5 arrivalCountry:(id)a6
{
  v10 = a4;
  v11 = a6;
  v12 = [(TSTravelModeIntroViewController *)self _getCarrierNameForDefaultDataSub];
  dataSubCarrierName = self->_dataSubCarrierName;
  self->_dataSubCarrierName = v12;

  self->_isUserAbroad = a3 != 0;
  self->_reduceEducation = a5 != 0;
  *&self->_isSourceThirdParty = [v10 isEqualToString:@"Siri"];
  if (!self->_isUserAbroad)
  {
    if (![v10 length])
    {
      v17 = 0;
      goto LABEL_27;
    }

    v18 = [v11 length];
    isSourceThirdParty = self->_isSourceThirdParty;
    reduceEducation = self->_reduceEducation;
    if (v18)
    {
      v21 = MEMORY[0x277CCACA8];
      v22 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v15 = v22;
      if (isSourceThirdParty)
      {
        if (reduceEducation)
        {
          v23 = @"TRAVEL_MODE_REDUCED_EDU_PRE_DEPARTURE_BODY_THIRD_PARTY_%@";
        }

        else
        {
          v23 = @"TRAVEL_MODE_PRE_DEPARTURE_BODY_THIRD_PARTY_%@";
        }

        v28 = [v22 localizedStringForKey:v23 value:&stru_28753DF48 table:@"Localizable"];
        [v21 stringWithFormat:v28, v11, v36];
      }

      else
      {
        if (reduceEducation)
        {
          v24 = @"TRAVEL_MODE_REDUCED_EDU_PRE_DEPARTURE_BODY_%@_%@";
        }

        else
        {
          v24 = @"TRAVEL_MODE_PRE_DEPARTURE_BODY_%@_%@";
        }

        v28 = [v22 localizedStringForKey:v24 value:&stru_28753DF48 table:@"Localizable"];
        [v21 stringWithFormat:v28, v10, v11];
      }
    }

    else
    {
      if (self->_isSourceThirdParty)
      {
        v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v15 = v14;
        if (reduceEducation)
        {
          v16 = @"TRAVEL_MODE_REDUCED_EDU_PRE_DEPARTURE_BODY_THIRD_PARTY";
        }

        else
        {
          v16 = @"TRAVEL_MODE_PRE_DEPARTURE_BODY_THIRD_PARTY";
        }

        goto LABEL_3;
      }

      v25 = MEMORY[0x277CCACA8];
      v26 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v15 = v26;
      if (reduceEducation)
      {
        v27 = @"TRAVEL_MODE_REDUCED_EDU_PRE_DEPARTURE_BODY_%@";
      }

      else
      {
        v27 = @"TRAVEL_MODE_PRE_DEPARTURE_BODY_%@";
      }

      v28 = [v26 localizedStringForKey:v27 value:&stru_28753DF48 table:@"Localizable"];
      [v25 stringWithFormat:v28, v10, v36];
    }
    v17 = ;

    goto LABEL_26;
  }

  v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v15 = v14;
  v16 = @"TRAVEL_MODE_PRE_DEPARTURE_BODY_ABROAD";
LABEL_3:
  v17 = [v14 localizedStringForKey:v16 value:&stru_28753DF48 table:@"Localizable"];
LABEL_26:

LABEL_27:
  v29 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v30 = [v29 localizedStringForKey:@"TRAVEL_MODE_PRE_DEPARTURE_TITLE" value:&stru_28753DF48 table:@"Localizable"];
  v37.receiver = self;
  v37.super_class = TSTravelModeIntroViewController;
  v31 = [(OBTableWelcomeController *)&v37 initWithTitle:v30 detailText:v17 symbolName:@"antenna.radiowaves.left.and.right" adoptTableViewScrollView:1];

  if (v31)
  {
    v31->_options = a3;
    v32 = objc_alloc(MEMORY[0x277CC37B0]);
    v33 = [v32 initWithQueue:MEMORY[0x277D85CD0]];
    client = v31->_client;
    v31->_client = v33;
  }

  return v31;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = TSTravelModeIntroViewController;
  [(TSOBTableWelcomeController *)&v4 viewDidLoad];
  if (!self->_showBackButton)
  {
    v3 = [(OBBaseWelcomeController *)self navigationItem];
    [v3 setHidesBackButton:1 animated:0];
  }

  [(TSTravelModeIntroViewController *)self _setUpButtons];
  [(TSTravelModeIntroViewController *)self _setUpTableView];
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  if (self->_reduceEducation)
  {
    return 0;
  }

  else
  {
    return 2;
  }
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:3 reuseIdentifier:@"identifier"];
  [v6 setSelectionStyle:0];
  v7 = [v6 defaultContentConfiguration];
  if ([v5 section])
  {
    if ([v5 section] != 1)
    {
      goto LABEL_14;
    }

    v8 = +[TSUtilities isGreenTeaCapable];
    v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v10 = v9;
    if (v8)
    {
      v11 = @"TRAVEL_MODE_PURCHASE_PSIM_LABEL";
    }

    else
    {
      v11 = @"TRAVEL_MODE_PURCHASE_ESIM_LABEL";
    }

    v12 = [v9 localizedStringForKey:v11 value:&stru_28753DF48 table:@"Localizable"];
    [v7 setText:v12];

    v13 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76988]];
    v14 = [v7 textProperties];
    [v14 setFont:v13];

    LOBYTE(v13) = +[TSUtilities isGreenTeaCapable];
    v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v16 = v15;
    if (v13)
    {
      v17 = @"TRAVEL_MODE_PURCHASE_PSIM_DESCRIPTION";
    }

    else
    {
      v17 = @"TRAVEL_MODE_PURCHASE_ESIM_DESCRIPTION";
    }
  }

  else
  {
    if ([(NSString *)self->_dataSubCarrierName length])
    {
      v18 = MEMORY[0x277CCACA8];
      v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v20 = [v19 localizedStringForKey:@"TRAVEL_MODE_DATA_ROAMING_LABEL_%@" value:&stru_28753DF48 table:@"Localizable"];
      v21 = [v18 stringWithFormat:v20, self->_dataSubCarrierName];
      [v7 setText:v21];
    }

    else
    {
      v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v20 = [v19 localizedStringForKey:@"TRAVEL_MODE_DATA_ROAMING_LABEL" value:&stru_28753DF48 table:@"Localizable"];
      [v7 setText:v20];
    }

    v22 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76988]];
    v23 = [v7 textProperties];
    [v23 setFont:v22];

    v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v16 = v15;
    v17 = @"TRAVEL_MODE_DATA_ROAMING_DESCRIPTION";
  }

  v24 = [v15 localizedStringForKey:v17 value:&stru_28753DF48 table:@"Localizable"];
  [v7 setSecondaryText:v24];

LABEL_14:
  [v6 setContentConfiguration:v7];
  v25 = [v6 contentView];
  v26 = [v25 layer];
  [v26 setCornerRadius:10.0];

  v27 = [v6 contentView];
  v28 = [v27 layer];
  [v28 setMasksToBounds:1];

  return v6;
}

- (void)tableView:(id)a3 willDisplayHeaderView:(id)a4 forSection:(int64_t)a5
{
  v5 = a4;
  v6 = [v5 textLabel];
  [v6 setText:@"header.textLable"];

  v8 = [v5 textLabel];

  v7 = [MEMORY[0x277D75348] systemGrayColor];
  [v8 setTextColor:v7];
}

- (void)_setUpButtons
{
  if (+[TSUtilities isWifiAvailable]|| !self->_isUserAbroad)
  {
    v3 = +[SSOBBoldTrayButton boldButton];
    continueButton = self->_continueButton;
    self->_continueButton = v3;

    [(SSOBBoldTrayButton *)self->_continueButton addTarget:self action:sel__continueButtonTapped forControlEvents:64];
    v5 = self->_continueButton;
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"TRAVEL_MODE_ROAMING_ON_WARNING_LEARN_MORE" value:&stru_28753DF48 table:@"Localizable"];
    [(SSOBBoldTrayButton *)v5 setTitle:v7 forState:0];

    [(OBBoldTrayButton *)self->_continueButton setEnabled:1];
    v8 = [(TSTravelModeIntroViewController *)self buttonTray];
    [v8 addButton:self->_continueButton];
  }

  if (!self->_showBackButton)
  {
    v9 = [MEMORY[0x277D37650] linkButton];
    skipButton = self->_skipButton;
    self->_skipButton = v9;

    v11 = self->_skipButton;
    v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v13 = [v12 localizedStringForKey:@"NOT_NOW" value:&stru_28753DF48 table:@"Localizable"];
    [(OBLinkTrayButton *)v11 setTitle:v13 forState:0];

    [(OBLinkTrayButton *)self->_skipButton addTarget:self action:sel__skipButtonTapped_ forControlEvents:64];
    v14 = [(TSTravelModeIntroViewController *)self buttonTray];
    [v14 addButton:self->_skipButton];
  }

  v15 = [(TSTravelModeIntroViewController *)self buttonTray];
  [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
}

- (void)_setUpTableView
{
  v3 = objc_alloc(MEMORY[0x277D75B40]);
  v4 = [v3 initWithFrame:2 style:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [(OBTableWelcomeController *)self setTableView:v4];

  v5 = [(OBTableWelcomeController *)self tableView];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];

  v6 = [(OBTableWelcomeController *)self tableView];
  [v6 setRowHeight:*MEMORY[0x277D76F30]];

  v7 = [(OBTableWelcomeController *)self tableView];
  [v7 setEstimatedRowHeight:1.0];

  v8 = [(OBTableWelcomeController *)self tableView];
  [v8 setAllowsMultipleSelection:0];

  v9 = [(OBTableWelcomeController *)self tableView];
  [v9 setScrollEnabled:1];

  v10 = [(OBTableWelcomeController *)self tableView];
  [v10 setShowsVerticalScrollIndicator:0];

  v11 = [(OBTableWelcomeController *)self tableView];
  v12 = [MEMORY[0x277D75348] clearColor];
  [v11 setBackgroundColor:v12];

  v13 = [(OBTableWelcomeController *)self tableView];
  [v13 setSeparatorStyle:0];

  v14 = [(OBTableWelcomeController *)self tableView];
  [v14 setSectionHeaderHeight:0.0];

  v15 = [(OBTableWelcomeController *)self tableView];
  [v15 setSectionFooterHeight:10.0];

  v16 = [(OBTableWelcomeController *)self tableView];
  [v16 setDataSource:self];

  v17 = [(OBTableWelcomeController *)self tableView];
  [v17 reloadData];
}

- (void)_continueButtonTapped
{
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  v3 = "[TSTravelModeIntroViewController _continueButtonTapped]";
  _os_log_error_impl(&dword_262AA8000, v0, OS_LOG_TYPE_ERROR, "[E]Failed to send travel metric for travel intro [%@] @%s", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)_skipButtonTapped:(id)a3
{
  v4 = objc_opt_new();
  v5 = v4;
  if (self->_isUserAbroad)
  {
    v6 = &TSTravelEventNotificationPostArrivalBuddyRoaming;
  }

  else
  {
    v6 = &TSTravelEventNotificationTravelIntro;
  }

  [v4 setObject:*v6 forKey:@"notificationType"];
  if (self->_reduceEducation)
  {
    v7 = &TSTravelActionTappedNotNowReducedEducation;
  }

  else
  {
    v7 = &TSTravelActionTappedNotNow;
  }

  [v5 setObject:*v7 forKey:@"finalAction"];
  client = self->_client;
  v12 = 0;
  v9 = [(CoreTelephonyClient *)client sendTravelBuddyCAEvent:v5 error:&v12];
  v10 = v12;
  if ((v9 & 1) == 0)
  {
    v11 = _TSLogDomain();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [TSTravelModeIntroViewController _skipButtonTapped:];
    }
  }

  [(UIViewController *)self userDidTapCancel];
}

- (id)_getCarrierNameForDefaultDataSub
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CF96D8] sharedManager];
  v3 = [v2 planItemsShouldUpdate:0];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    v8 = &stru_28753DF48;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if ([v10 isActiveDataPlan])
        {
          v8 = [v10 carrierName];
          goto LABEL_12;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v8 = &stru_28753DF48;
  }

LABEL_12:

  v11 = *MEMORY[0x277D85DE8];

  return v8;
}

- (TSSIMSetupFlowDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_skipButtonTapped:.cold.1()
{
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  v3 = "[TSTravelModeIntroViewController _skipButtonTapped:]";
  _os_log_error_impl(&dword_262AA8000, v0, OS_LOG_TYPE_ERROR, "[E]Failed to send travel metric for travel intro [%@] @%s", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

@end