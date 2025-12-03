@interface TSTravelModeIntroViewController
- (TSSIMSetupFlowDelegate)delegate;
- (TSTravelModeIntroViewController)init;
- (TSTravelModeIntroViewController)initWithOptions:(unint64_t)options extractionSource:(id)source reduceEducation:(unint64_t)education arrivalCountry:(id)country;
- (id)_getCarrierNameForDefaultDataSub;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (void)_continueButtonTapped;
- (void)_setUpButtons;
- (void)_setUpTableView;
- (void)_skipButtonTapped:(id)tapped;
- (void)tableView:(id)view willDisplayHeaderView:(id)headerView forSection:(int64_t)section;
- (void)viewDidLoad;
@end

@implementation TSTravelModeIntroViewController

- (TSTravelModeIntroViewController)init
{
  self->_showBackButton = 1;
  _getCarrierNameForDefaultDataSub = [(TSTravelModeIntroViewController *)self _getCarrierNameForDefaultDataSub];
  dataSubCarrierName = self->_dataSubCarrierName;
  self->_dataSubCarrierName = _getCarrierNameForDefaultDataSub;

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

- (TSTravelModeIntroViewController)initWithOptions:(unint64_t)options extractionSource:(id)source reduceEducation:(unint64_t)education arrivalCountry:(id)country
{
  sourceCopy = source;
  countryCopy = country;
  _getCarrierNameForDefaultDataSub = [(TSTravelModeIntroViewController *)self _getCarrierNameForDefaultDataSub];
  dataSubCarrierName = self->_dataSubCarrierName;
  self->_dataSubCarrierName = _getCarrierNameForDefaultDataSub;

  self->_isUserAbroad = options != 0;
  self->_reduceEducation = education != 0;
  *&self->_isSourceThirdParty = [sourceCopy isEqualToString:@"Siri"];
  if (!self->_isUserAbroad)
  {
    if (![sourceCopy length])
    {
      v17 = 0;
      goto LABEL_27;
    }

    v18 = [countryCopy length];
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
        [v21 stringWithFormat:v28, countryCopy, v36];
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
        [v21 stringWithFormat:v28, sourceCopy, countryCopy];
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
      [v25 stringWithFormat:v28, sourceCopy, v36];
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
    v31->_options = options;
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
    navigationItem = [(OBBaseWelcomeController *)self navigationItem];
    [navigationItem setHidesBackButton:1 animated:0];
  }

  [(TSTravelModeIntroViewController *)self _setUpButtons];
  [(TSTravelModeIntroViewController *)self _setUpTableView];
}

- (int64_t)numberOfSectionsInTableView:(id)view
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

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v6 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:3 reuseIdentifier:@"identifier"];
  [v6 setSelectionStyle:0];
  defaultContentConfiguration = [v6 defaultContentConfiguration];
  if ([pathCopy section])
  {
    if ([pathCopy section] != 1)
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
    [defaultContentConfiguration setText:v12];

    v13 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76988]];
    textProperties = [defaultContentConfiguration textProperties];
    [textProperties setFont:v13];

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
      [defaultContentConfiguration setText:v21];
    }

    else
    {
      v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v20 = [v19 localizedStringForKey:@"TRAVEL_MODE_DATA_ROAMING_LABEL" value:&stru_28753DF48 table:@"Localizable"];
      [defaultContentConfiguration setText:v20];
    }

    v22 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76988]];
    textProperties2 = [defaultContentConfiguration textProperties];
    [textProperties2 setFont:v22];

    v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v16 = v15;
    v17 = @"TRAVEL_MODE_DATA_ROAMING_DESCRIPTION";
  }

  v24 = [v15 localizedStringForKey:v17 value:&stru_28753DF48 table:@"Localizable"];
  [defaultContentConfiguration setSecondaryText:v24];

LABEL_14:
  [v6 setContentConfiguration:defaultContentConfiguration];
  contentView = [v6 contentView];
  layer = [contentView layer];
  [layer setCornerRadius:10.0];

  contentView2 = [v6 contentView];
  layer2 = [contentView2 layer];
  [layer2 setMasksToBounds:1];

  return v6;
}

- (void)tableView:(id)view willDisplayHeaderView:(id)headerView forSection:(int64_t)section
{
  headerViewCopy = headerView;
  textLabel = [headerViewCopy textLabel];
  [textLabel setText:@"header.textLable"];

  textLabel2 = [headerViewCopy textLabel];

  systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
  [textLabel2 setTextColor:systemGrayColor];
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
    buttonTray = [(TSTravelModeIntroViewController *)self buttonTray];
    [buttonTray addButton:self->_continueButton];
  }

  if (!self->_showBackButton)
  {
    linkButton = [MEMORY[0x277D37650] linkButton];
    skipButton = self->_skipButton;
    self->_skipButton = linkButton;

    v11 = self->_skipButton;
    v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v13 = [v12 localizedStringForKey:@"NOT_NOW" value:&stru_28753DF48 table:@"Localizable"];
    [(OBLinkTrayButton *)v11 setTitle:v13 forState:0];

    [(OBLinkTrayButton *)self->_skipButton addTarget:self action:sel__skipButtonTapped_ forControlEvents:64];
    buttonTray2 = [(TSTravelModeIntroViewController *)self buttonTray];
    [buttonTray2 addButton:self->_skipButton];
  }

  buttonTray3 = [(TSTravelModeIntroViewController *)self buttonTray];
  [buttonTray3 setTranslatesAutoresizingMaskIntoConstraints:0];
}

- (void)_setUpTableView
{
  v3 = objc_alloc(MEMORY[0x277D75B40]);
  v4 = [v3 initWithFrame:2 style:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [(OBTableWelcomeController *)self setTableView:v4];

  tableView = [(OBTableWelcomeController *)self tableView];
  [tableView setTranslatesAutoresizingMaskIntoConstraints:0];

  tableView2 = [(OBTableWelcomeController *)self tableView];
  [tableView2 setRowHeight:*MEMORY[0x277D76F30]];

  tableView3 = [(OBTableWelcomeController *)self tableView];
  [tableView3 setEstimatedRowHeight:1.0];

  tableView4 = [(OBTableWelcomeController *)self tableView];
  [tableView4 setAllowsMultipleSelection:0];

  tableView5 = [(OBTableWelcomeController *)self tableView];
  [tableView5 setScrollEnabled:1];

  tableView6 = [(OBTableWelcomeController *)self tableView];
  [tableView6 setShowsVerticalScrollIndicator:0];

  tableView7 = [(OBTableWelcomeController *)self tableView];
  clearColor = [MEMORY[0x277D75348] clearColor];
  [tableView7 setBackgroundColor:clearColor];

  tableView8 = [(OBTableWelcomeController *)self tableView];
  [tableView8 setSeparatorStyle:0];

  tableView9 = [(OBTableWelcomeController *)self tableView];
  [tableView9 setSectionHeaderHeight:0.0];

  tableView10 = [(OBTableWelcomeController *)self tableView];
  [tableView10 setSectionFooterHeight:10.0];

  tableView11 = [(OBTableWelcomeController *)self tableView];
  [tableView11 setDataSource:self];

  tableView12 = [(OBTableWelcomeController *)self tableView];
  [tableView12 reloadData];
}

- (void)_continueButtonTapped
{
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  v3 = "[TSTravelModeIntroViewController _continueButtonTapped]";
  _os_log_error_impl(&dword_262AA8000, v0, OS_LOG_TYPE_ERROR, "[E]Failed to send travel metric for travel intro [%@] @%s", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)_skipButtonTapped:(id)tapped
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
  mEMORY[0x277CF96D8] = [MEMORY[0x277CF96D8] sharedManager];
  v3 = [mEMORY[0x277CF96D8] planItemsShouldUpdate:0];

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
    carrierName = &stru_28753DF48;
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
          carrierName = [v10 carrierName];
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
    carrierName = &stru_28753DF48;
  }

LABEL_12:

  v11 = *MEMORY[0x277D85DE8];

  return carrierName;
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