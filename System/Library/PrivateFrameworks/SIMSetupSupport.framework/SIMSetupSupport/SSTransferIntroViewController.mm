@interface SSTransferIntroViewController
+ (id)getDetails:(id)details;
- (SSTransferIntroViewController)initWithItems:(id)items;
- (TSSIMSetupFlowDelegate)delegate;
- (void)_laterButtonTapped:(id)tapped;
- (void)_transferButtonTapped:(id)tapped;
- (void)viewDidLoad;
@end

@implementation SSTransferIntroViewController

+ (id)getDetails:(id)details
{
  v26 = *MEMORY[0x277D85DE8];
  detailsCopy = details;
  v4 = [MEMORY[0x277CBEB58] set];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = detailsCopy;
  v6 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v21 + 1) + 8 * i);
        if ([v10 isTransferablePlan])
        {
          carrierName = [v10 carrierName];
          v12 = [carrierName length];

          if (v12)
          {
            carrierName2 = [v10 carrierName];
            [v4 addObject:carrierName2];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v7);
  }

  v14 = [TSUtilities FormattedCarrierListFromSet:v4];
  if ([v14 length])
  {
    v15 = MEMORY[0x277CCACA8];
    v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v17 = [v16 localizedStringForKey:@"CELLULAR_PLAN_TRANSFER_INTRO_DETAIL_%@" value:&stru_28753DF48 table:@"Localizable"];
    v18 = [v15 stringWithFormat:v17, v14];
  }

  else
  {
    v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v18 = [v16 localizedStringForKey:@"CELLULAR_PLAN_TRANSFER_INTRO_DETAIL" value:&stru_28753DF48 table:@"Localizable"];
  }

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

- (SSTransferIntroViewController)initWithItems:(id)items
{
  v4 = MEMORY[0x277CCA8D8];
  itemsCopy = items;
  v6 = [v4 bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"SET_UP_CELLULAR" value:&stru_28753DF48 table:@"Localizable"];

  v8 = [SSTransferIntroViewController getDetails:itemsCopy];

  v11.receiver = self;
  v11.super_class = SSTransferIntroViewController;
  v9 = [(SSTransferIntroViewController *)&v11 initWithTitle:v7 detailText:v8 symbolName:@"antenna.radiowaves.left.and.right"];

  return v9;
}

- (void)viewDidLoad
{
  v10 = +[SSOBBoldTrayButton boldButton];
  [v10 addTarget:self action:sel__transferButtonTapped_ forControlEvents:64];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"CONTINUE" value:&stru_28753DF48 table:@"Localizable"];
  [v10 setTitle:v4 forState:0];

  buttonTray = [(SSTransferIntroViewController *)self buttonTray];
  [buttonTray addButton:v10];

  if (+[TSUtilities inBuddy])
  {
    linkButton = [MEMORY[0x277D37650] linkButton];
    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"SET_UP_LATER" value:&stru_28753DF48 table:@"Localizable"];
    [linkButton setTitle:v8 forState:0];

    [linkButton addTarget:self action:sel__laterButtonTapped_ forControlEvents:64];
    buttonTray2 = [(SSTransferIntroViewController *)self buttonTray];
    [buttonTray2 addButton:linkButton];
  }
}

- (void)_transferButtonTapped:(id)tapped
{
  self->_isTransferButtonTapped = 1;
  delegate = [(SSTransferIntroViewController *)self delegate];
  [delegate viewControllerDidComplete:self];
}

- (void)_laterButtonTapped:(id)tapped
{
  delegate = [(SSTransferIntroViewController *)self delegate];
  [delegate userDidTapCancel];
}

- (TSSIMSetupFlowDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end