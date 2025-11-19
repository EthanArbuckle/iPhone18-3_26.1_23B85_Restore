@interface SSQRCodeIntroViewController
+ (id)getDetail:(id)a3;
- (SSQRCodeIntroViewController)initWithPlans:(id)a3 withBackButton:(BOOL)a4;
- (TSSIMSetupFlowDelegate)delegate;
- (void)_configureNavigationItem;
- (void)_laterButtonTapped:(id)a3;
- (void)_otherButtonTapped:(id)a3;
- (void)_scanButtonTapped:(id)a3;
- (void)viewDidLoad;
@end

@implementation SSQRCodeIntroViewController

+ (id)getDetail:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB58] set];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v6 = MEMORY[0x277CBEBF8];
  if (isKindOfClass)
  {
    v6 = v3;
  }

  v7 = v6;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v24;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v23 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = v12;
          if ([v13 transferCapability] != 15)
          {
            v14 = [v13 carrierName];
            if ([v14 length])
            {
              [v4 addObject:v14];
            }
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v9);
  }

  if ([v4 count])
  {
    if ([v4 count] == 1)
    {
      v15 = [v4 allObjects];
      v16 = [v15 objectAtIndexedSubscript:0];
    }

    else
    {
      v16 = [TSUtilities FormattedCarrierListFromSet:v4];
    }

    v18 = MEMORY[0x277CCACA8];
    v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v20 = [v19 localizedStringForKey:@"CELLULAR_PLAN_INTRO_QRCODE_%@" value:&stru_28753DF48 table:@"Localizable"];
    v17 = [v18 stringWithFormat:v20, v16];
  }

  else
  {
    v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v17 = [v16 localizedStringForKey:@"CELLULAR_PLAN_INTRO_QRCODE_NO_CARRIER" value:&stru_28753DF48 table:@"Localizable"];
  }

  v21 = *MEMORY[0x277D85DE8];

  return v17;
}

- (SSQRCodeIntroViewController)initWithPlans:(id)a3 withBackButton:(BOOL)a4
{
  v6 = a3;
  v7 = [v6 filteredPlansForQRCodeBucket];
  v8 = [v6 filteredPlansForNonQRCodeBucket];

  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"SET_UP_CELLULAR" value:&stru_28753DF48 table:@"Localizable"];

  v11 = [SSQRCodeIntroViewController getDetail:v7];
  v12 = [v11 mutableCopy];

  if ([v8 count])
  {
    [v12 appendString:@"\n\n"];
    v19 = 0;
    v20 = 0;
    [v8 getCombinedTitleAndDetailsForNonTransferablePlans:&v20 details:&v19];
    v13 = v20;
    v14 = v19;
    [v12 appendString:v14];
  }

  v18.receiver = self;
  v18.super_class = SSQRCodeIntroViewController;
  v15 = [(SSQRCodeIntroViewController *)&v18 initWithTitle:v10 detailText:v12 symbolName:@"antenna.radiowaves.left.and.right"];
  v16 = v15;
  if (v15)
  {
    v15->_withBackButton = a4;
  }

  return v16;
}

- (void)viewDidLoad
{
  v14 = +[SSOBBoldTrayButton boldButton];
  [v14 addTarget:self action:sel__scanButtonTapped_ forControlEvents:64];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"SCAN_QR_CODE" value:&stru_28753DF48 table:@"Localizable"];
  [v14 setTitle:v4 forState:0];

  v5 = [(SSQRCodeIntroViewController *)self buttonTray];
  [v5 addButton:v14];

  v6 = +[TSUtilities inBuddy];
  v7 = [MEMORY[0x277D37650] linkButton];
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = v8;
  if (v6)
  {
    v10 = @"SET_UP_LATER";
  }

  else
  {
    v10 = @"OTHER_OPTIONS";
  }

  if (v6)
  {
    v11 = &selRef__laterButtonTapped_;
  }

  else
  {
    v11 = &selRef__otherButtonTapped_;
  }

  v12 = [v8 localizedStringForKey:v10 value:&stru_28753DF48 table:@"Localizable"];
  [v7 setTitle:v12 forState:0];

  [v7 addTarget:self action:*v11 forControlEvents:64];
  v13 = [(SSQRCodeIntroViewController *)self buttonTray];
  [v13 addButton:v7];
}

- (void)_configureNavigationItem
{
  if (self->_withBackButton)
  {

    [(UIViewController *)self configureNavigationItem];
  }

  else
  {
    v3 = [(SSQRCodeIntroViewController *)self delegate];
    [v3 setCancelNavigationBarItems:self];
  }
}

- (void)_scanButtonTapped:(id)a3
{
  self->_isScanButtonTapped = 1;
  v4 = [(SSQRCodeIntroViewController *)self delegate];
  [v4 viewControllerDidComplete:self];
}

- (void)_laterButtonTapped:(id)a3
{
  v3 = [(SSQRCodeIntroViewController *)self delegate];
  [v3 userDidTapCancel];
}

- (void)_otherButtonTapped:(id)a3
{
  self->_isOtherButtonTapped = 1;
  self->_entryPoint = 1;
  v4 = [(SSQRCodeIntroViewController *)self delegate];
  [v4 restartWith:self];
}

- (TSSIMSetupFlowDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end