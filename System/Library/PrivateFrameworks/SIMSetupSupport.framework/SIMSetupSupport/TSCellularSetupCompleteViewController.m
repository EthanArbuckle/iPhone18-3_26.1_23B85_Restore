@interface TSCellularSetupCompleteViewController
- (BOOL)_isPlanSelected:(id)a3 selectedItems:(id)a4;
- (TSCellularSetupCompleteViewController)initWithPlanIdentifer:(id)a3;
- (TSCellularSetupCompleteViewController)initWithPlans:(id)a3 selectedItems:(id)a4 skip:(BOOL)a5 isForCrossPlatformTransfer:(BOOL)a6;
- (TSSIMSetupFlowDelegate)delegate;
- (void)_continueButtonTapped;
- (void)viewDidLoad;
@end

@implementation TSCellularSetupCompleteViewController

- (TSCellularSetupCompleteViewController)initWithPlanIdentifer:(id)a3
{
  v4 = MEMORY[0x277CCACA8];
  v5 = MEMORY[0x277CCA8D8];
  v6 = a3;
  v7 = [v5 bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"CROSSPLATFORM_TRANSFER_COMPLETE_ON_SOURCE_NUMBER_CROSSPLATFORM_MODEL_%@" value:&stru_28753DF48 table:@"Localizable"];
  v9 = [v4 stringWithFormat:v8, v6];

  v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"CROSSPLATFORM_TRANSFER_COMPLETE_TITLE_SOURCE" value:&stru_28753DF48 table:@"Localizable"];
  v14.receiver = self;
  v14.super_class = TSCellularSetupCompleteViewController;
  v12 = [(TSCellularSetupCompleteViewController *)&v14 initWithTitle:v11 detailText:v9 symbolName:@"antenna.radiowaves.left.and.right"];

  if (v12)
  {
    v12->_needShow = 1;
  }

  return v12;
}

- (TSCellularSetupCompleteViewController)initWithPlans:(id)a3 selectedItems:(id)a4 skip:(BOOL)a5 isForCrossPlatformTransfer:(BOOL)a6
{
  v6 = a6;
  v76 = a5;
  v9 = a3;
  v77 = a4;
  v10 = [v9 objectAtIndexedSubscript:0];
  v11 = [v10 planItem];
  planItem = self->_planItem;
  self->_planItem = v11;

  v13 = [v9 objectAtIndexedSubscript:0];
  planInfo = self->_planInfo;
  self->_planInfo = v13;

  v15 = [v9 objectAtIndexedSubscript:0];
  v16 = [v15 eSIMTravelState];
  if (v16)
  {
    v17 = [v9 objectAtIndexedSubscript:0];
    v18 = [v17 eSIMTravelState];
    p_isTravelFlow = &self->_isTravelFlow;
    self->_isTravelFlow = [v18 BOOLValue];
  }

  else
  {
    p_isTravelFlow = &self->_isTravelFlow;
    self->_isTravelFlow = 0;
  }

  v20 = [v9 objectAtIndexedSubscript:0];
  self->_isUserInHomeCountry = [v20 isUserInHomeCountry];

  v21 = [v9 objectAtIndexedSubscript:0];
  v22 = [v21 isDisabled];

  v23 = [v9 objectAtIndexedSubscript:0];
  v79 = [v23 planName];

  v24 = [v9 objectAtIndexedSubscript:0];
  v25 = [v24 phoneNumber];
  v78 = [v25 formattedPhoneNumber];

  v26 = self->_planItem;
  if (v26)
  {
    v27 = [(CTCellularPlanItem *)v26 iccid];
    if ([TSUtilities numActivePlansOnDeviceExcept:v27])
    {
      v28 = *p_isTravelFlow;

      if (v28)
      {
        isUserInHomeCountry = self->_isUserInHomeCountry;
        v30 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v31 = v30;
        if (isUserInHomeCountry)
        {
          v32 = [v30 localizedStringForKey:@"TRAVEL_ESIM_SETUP_COMPLETE_TITLE" value:&stru_28753DF48 table:@"Localizable"];

          v33 = MEMORY[0x277CCACA8];
          v34 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v35 = [v34 localizedStringForKey:@"TRAVEL_ESIM_SETUP_COMPLETE_DETAILS_%@" value:&stru_28753DF48 table:@"Localizable"];
          v36 = [v33 stringWithFormat:v35, v79];
          detailText = self->_detailText;
          self->_detailText = v36;
        }

        else
        {
          v32 = [v30 localizedStringForKey:@"TRAVEL_ESIM_SETUP_COMPLETE_ABROAD_TITLE" value:&stru_28753DF48 table:@"Localizable"];

          v34 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v67 = [v34 localizedStringForKey:@"TRAVEL_ESIM_SETUP_COMPLETE_ABROAD_DETAILS" value:&stru_28753DF48 table:@"Localizable"];
          v35 = self->_detailText;
          self->_detailText = v67;
        }

LABEL_34:
        v50 = v77;
        goto LABEL_35;
      }
    }

    else
    {
    }
  }

  v38 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v39 = v38;
  if (v6)
  {
    v40 = @"CROSSPLATFORM_TRANSFER_COMPLETE_TITLE";
  }

  else
  {
    v40 = @"CELLULAR_PLAN_COMPLETE_TITLE";
  }

  v32 = [v38 localizedStringForKey:v40 value:&stru_28753DF48 table:@"Localizable"];

  if (v22)
  {
    v41 = [v9 objectAtIndexedSubscript:0];
    v42 = [v41 displayPlan];
    v43 = [v42 plan];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v45 = MEMORY[0x277CCACA8];
      v34 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v35 = [v34 localizedStringForKey:@"CELLULAR_PLAN_COMPLETE_DETAIL_FOR_DISABLED_ESIM_%@" value:&stru_28753DF48 table:@"Localizable"];
      v46 = v79;
      v47 = [v79 length];
      if (!v47)
      {
        v43 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v46 = [v43 localizedStringForKey:@"CARRIER" value:&stru_28753DF48 table:@"Localizable"];
      }

      v48 = [v45 stringWithFormat:v35, v46];
      v49 = self->_detailText;
      self->_detailText = v48;

      if (!v47)
      {
      }

      goto LABEL_34;
    }
  }

  v50 = v77;
  if (![v77 count] || (objc_msgSend(v9, "objectAtIndexedSubscript:", 0), v51 = objc_claimAutoreleasedReturnValue(), v52 = -[TSCellularSetupCompleteViewController _isPlanSelected:selectedItems:](self, "_isPlanSelected:selectedItems:", v51, v77), v51, v52))
  {
    if (![v78 length] || +[TSUtilities isPad](TSUtilities, "isPad"))
    {
      v53 = MEMORY[0x277CCACA8];
      v54 = MEMORY[0x277CCA8D8];
      v34 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v35 = [v34 localizedStringForKey:@"CELLULAR_PLAN_COMPLETE_DETAIL_%@" value:&stru_28753DF48 table:@"Localizable"];
      v55 = v79;
      v56 = [v79 length];
      if (!v56)
      {
        v54 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v55 = [v54 localizedStringForKey:@"CARRIER" value:&stru_28753DF48 table:@"Localizable"];
      }

      v57 = [v53 stringWithFormat:v35, v55];
      v58 = self->_detailText;
      self->_detailText = v57;

      if (!v56)
      {
      }

      goto LABEL_34;
    }

    v65 = MEMORY[0x277CCACA8];
    v34 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v35 = [v34 localizedStringForKey:@"CELLULAR_PLAN_COMPLETE_DETAIL_PHONENUMBER_%@" value:&stru_28753DF48 table:@"Localizable"];
    v66 = [v65 stringWithFormat:v35, v78];
    v64 = self->_detailText;
    self->_detailText = v66;
    goto LABEL_32;
  }

  v59 = MEMORY[0x277CCACA8];
  v34 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v35 = [v34 localizedStringForKey:@"CELLULAR_PLAN_COMPLETE_DETAIL_FOR_UNSELECTED_ESIM_%@" value:&stru_28753DF48 table:@"Localizable"];
  v60 = v79;
  v61 = [v79 length];
  if (!v61)
  {
    v75 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v60 = [v75 localizedStringForKey:@"CARRIER" value:&stru_28753DF48 table:@"Localizable"];
  }

  v62 = [v59 stringWithFormat:v35, v60];
  v63 = self->_detailText;
  self->_detailText = v62;

  if (!v61)
  {

    v64 = v75;
LABEL_32:
  }

LABEL_35:

  v68 = objc_alloc(MEMORY[0x277CC37B0]);
  v69 = [v68 initWithQueue:MEMORY[0x277D85CD0]];
  client = self->_client;
  self->_client = v69;

  v71 = self->_detailText;
  v80.receiver = self;
  v80.super_class = TSCellularSetupCompleteViewController;
  v72 = [(TSCellularSetupCompleteViewController *)&v80 initWithTitle:v32 detailText:v71 symbolName:@"antenna.radiowaves.left.and.right"];
  if (v72 && [v9 count] == 1)
  {
    if (v76)
    {
      v72->_needShow = 0;
    }

    else
    {
      v73 = [v9 objectAtIndexedSubscript:0];
      v72->_needShow = [v73 activatingState] == 1;
    }
  }

  return v72;
}

- (void)viewDidLoad
{
  v13.receiver = self;
  v13.super_class = TSCellularSetupCompleteViewController;
  [(TSOBWelcomeController *)&v13 viewDidLoad];
  v3 = +[SSOBBoldTrayButton boldButton];
  continueButton = self->_continueButton;
  self->_continueButton = v3;

  [(SSOBBoldTrayButton *)self->_continueButton addTarget:self action:sel__continueButtonTapped forControlEvents:64];
  v5 = +[TSUtilities inBuddy];
  v6 = self->_continueButton;
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = v7;
  if (v5)
  {
    v9 = @"CONTINUE";
  }

  else
  {
    v9 = @"DONE";
  }

  v10 = [v7 localizedStringForKey:v9 value:&stru_28753DF48 table:@"Localizable"];
  [(SSOBBoldTrayButton *)v6 setTitle:v10 forState:0];

  v11 = [(TSCellularSetupCompleteViewController *)self buttonTray];
  [v11 addButton:self->_continueButton];

  [(OBBoldTrayButton *)self->_continueButton setEnabled:1];
  v12 = [(OBBaseWelcomeController *)self navigationItem];
  [v12 setHidesBackButton:1 animated:0];
}

- (void)_continueButtonTapped
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = a1;
  v5 = 2080;
  v6 = "[TSCellularSetupCompleteViewController _continueButtonTapped]";
  _os_log_error_impl(&dword_262AA8000, a2, OS_LOG_TYPE_ERROR, "[E]Failed to send travel metric for predeparture install [%@] @%s", &v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

- (BOOL)_isPlanSelected:(id)a3 selectedItems:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = a4;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = [*(*(&v15 + 1) + 8 * i) iccid];
        v11 = [v5 targetIccid];
        v12 = [v10 isEqualToString:v11];

        if (v12)
        {
          LOBYTE(v7) = 1;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v13 = *MEMORY[0x277D85DE8];
  return v7;
}

- (TSSIMSetupFlowDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end