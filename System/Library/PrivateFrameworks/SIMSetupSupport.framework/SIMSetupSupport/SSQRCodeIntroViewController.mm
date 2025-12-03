@interface SSQRCodeIntroViewController
+ (id)getDetail:(id)detail;
- (SSQRCodeIntroViewController)initWithPlans:(id)plans withBackButton:(BOOL)button;
- (TSSIMSetupFlowDelegate)delegate;
- (void)_configureNavigationItem;
- (void)_laterButtonTapped:(id)tapped;
- (void)_otherButtonTapped:(id)tapped;
- (void)_scanButtonTapped:(id)tapped;
- (void)viewDidLoad;
@end

@implementation SSQRCodeIntroViewController

+ (id)getDetail:(id)detail
{
  v28 = *MEMORY[0x277D85DE8];
  detailCopy = detail;
  v4 = [MEMORY[0x277CBEB58] set];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v6 = MEMORY[0x277CBEBF8];
  if (isKindOfClass)
  {
    v6 = detailCopy;
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
            carrierName = [v13 carrierName];
            if ([carrierName length])
            {
              [v4 addObject:carrierName];
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
      allObjects = [v4 allObjects];
      v16 = [allObjects objectAtIndexedSubscript:0];
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

- (SSQRCodeIntroViewController)initWithPlans:(id)plans withBackButton:(BOOL)button
{
  plansCopy = plans;
  filteredPlansForQRCodeBucket = [plansCopy filteredPlansForQRCodeBucket];
  filteredPlansForNonQRCodeBucket = [plansCopy filteredPlansForNonQRCodeBucket];

  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"SET_UP_CELLULAR" value:&stru_28753DF48 table:@"Localizable"];

  v11 = [SSQRCodeIntroViewController getDetail:filteredPlansForQRCodeBucket];
  v12 = [v11 mutableCopy];

  if ([filteredPlansForNonQRCodeBucket count])
  {
    [v12 appendString:@"\n\n"];
    v19 = 0;
    v20 = 0;
    [filteredPlansForNonQRCodeBucket getCombinedTitleAndDetailsForNonTransferablePlans:&v20 details:&v19];
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
    v15->_withBackButton = button;
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

  buttonTray = [(SSQRCodeIntroViewController *)self buttonTray];
  [buttonTray addButton:v14];

  v6 = +[TSUtilities inBuddy];
  linkButton = [MEMORY[0x277D37650] linkButton];
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
  [linkButton setTitle:v12 forState:0];

  [linkButton addTarget:self action:*v11 forControlEvents:64];
  buttonTray2 = [(SSQRCodeIntroViewController *)self buttonTray];
  [buttonTray2 addButton:linkButton];
}

- (void)_configureNavigationItem
{
  if (self->_withBackButton)
  {

    [(UIViewController *)self configureNavigationItem];
  }

  else
  {
    delegate = [(SSQRCodeIntroViewController *)self delegate];
    [delegate setCancelNavigationBarItems:self];
  }
}

- (void)_scanButtonTapped:(id)tapped
{
  self->_isScanButtonTapped = 1;
  delegate = [(SSQRCodeIntroViewController *)self delegate];
  [delegate viewControllerDidComplete:self];
}

- (void)_laterButtonTapped:(id)tapped
{
  delegate = [(SSQRCodeIntroViewController *)self delegate];
  [delegate userDidTapCancel];
}

- (void)_otherButtonTapped:(id)tapped
{
  self->_isOtherButtonTapped = 1;
  self->_entryPoint = 1;
  delegate = [(SSQRCodeIntroViewController *)self delegate];
  [delegate restartWith:self];
}

- (TSSIMSetupFlowDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end