@interface SSVisitStoreViewController
- (SSVisitStoreViewController)initWithPlans:(id)plans showOtherOption:(BOOL)option;
- (TSSIMSetupFlowDelegate)delegate;
- (void)_continueButtonTapped:(id)tapped;
- (void)_laterButtonTapped:(id)tapped;
- (void)_otherButtonTapped:(id)tapped;
- (void)viewDidLoad;
@end

@implementation SSVisitStoreViewController

- (SSVisitStoreViewController)initWithPlans:(id)plans showOtherOption:(BOOL)option
{
  v32 = *MEMORY[0x277D85DE8];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  plansCopy = plans;
  v7 = [plansCopy countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v28;
    carrierName2 = &stru_28753DF48;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v28 != v9)
        {
          objc_enumerationMutation(plansCopy);
        }

        v12 = *(*(&v27 + 1) + 8 * i);
        carrierName = [v12 carrierName];
        v14 = [carrierName length];

        if (v14)
        {
          carrierName2 = [v12 carrierName];
          carrierName3 = [v12 carrierName];
          carrier = self->_carrier;
          self->_carrier = carrierName3;

          objc_storeStrong(&self->_plan, v12);
          goto LABEL_12;
        }
      }

      v8 = [plansCopy countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    carrierName2 = &stru_28753DF48;
  }

LABEL_12:

  if (![(__CFString *)carrierName2 length])
  {

    carrierName2 = @"Your carrier";
  }

  v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v18 = [v17 localizedStringForKey:@"VISIT_STORE_TITLE" value:&stru_28753DF48 table:@"Localizable"];

  v19 = MEMORY[0x277CCACA8];
  v20 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v21 = [v20 localizedStringForKey:@"VISIT_STORE_FOR_TRANSFER_DETAIL_%@" value:&stru_28753DF48 table:@"Localizable"];
  v22 = [v19 stringWithFormat:v21, carrierName2];

  self->_showOtherOption = option;
  v26.receiver = self;
  v26.super_class = SSVisitStoreViewController;
  v23 = [(SSVisitStoreViewController *)&v26 initWithTitle:v18 detailText:v22 symbolName:@"antenna.radiowaves.left.and.right"];

  v24 = *MEMORY[0x277D85DE8];
  return v23;
}

- (void)viewDidLoad
{
  if (+[TSUtilities inBuddy])
  {
    linkButton = [MEMORY[0x277D37650] linkButton];
    laterButton = self->_laterButton;
    self->_laterButton = linkButton;

    [(OBLinkTrayButton *)self->_laterButton addTarget:self action:sel__laterButtonTapped_ forControlEvents:64];
    v5 = self->_laterButton;
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"SET_UP_LATER" value:&stru_28753DF48 table:@"Localizable"];
    [(OBLinkTrayButton *)v5 setTitle:v7 forState:0];

    buttonTray = [(SSVisitStoreViewController *)self buttonTray];
    [buttonTray addButton:self->_laterButton];
  }

  linkButton2 = [MEMORY[0x277D37650] linkButton];
  continueButton = self->_continueButton;
  self->_continueButton = linkButton2;

  [(OBLinkTrayButton *)self->_continueButton addTarget:self action:sel__continueButtonTapped_ forControlEvents:64];
  v11 = self->_continueButton;
  v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v13 = [v12 localizedStringForKey:@"CONTINUE" value:&stru_28753DF48 table:@"Localizable"];
  [(OBLinkTrayButton *)v11 setTitle:v13 forState:0];

  buttonTray2 = [(SSVisitStoreViewController *)self buttonTray];
  [buttonTray2 addButton:self->_continueButton];

  if (!+[TSUtilities inBuddy]&& self->_showOtherOption)
  {
    linkButton3 = [MEMORY[0x277D37650] linkButton];
    [linkButton3 addTarget:self action:sel__otherButtonTapped_ forControlEvents:64];
    v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v16 = [v15 localizedStringForKey:@"OTHER_OPTIONS" value:&stru_28753DF48 table:@"Localizable"];
    [linkButton3 setTitle:v16 forState:0];

    buttonTray3 = [(SSVisitStoreViewController *)self buttonTray];
    [buttonTray3 addButton:linkButton3];
  }
}

- (void)_continueButtonTapped:(id)tapped
{
  v4 = +[TSCoreTelephonyClientCache sharedInstance];
  [v4 saveStoreVisitStatusForCarrier:self->_carrier visited:1];

  delegate = [(SSVisitStoreViewController *)self delegate];
  [delegate viewControllerDidComplete:self];
}

- (void)_laterButtonTapped:(id)tapped
{
  v4 = +[TSCoreTelephonyClientCache sharedInstance];
  [v4 saveStoreVisitStatusForCarrier:self->_carrier visited:0];

  delegate = [(SSVisitStoreViewController *)self delegate];
  [delegate userDidTapCancel];
}

- (void)_otherButtonTapped:(id)tapped
{
  self->_isOtherButtonTapped = 1;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained viewControllerDidComplete:self];
}

- (TSSIMSetupFlowDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end