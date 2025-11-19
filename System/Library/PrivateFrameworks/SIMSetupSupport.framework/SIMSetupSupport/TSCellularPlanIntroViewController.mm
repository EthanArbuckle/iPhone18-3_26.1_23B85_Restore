@interface TSCellularPlanIntroViewController
+ (id)getDetailsWithTransferOption:(BOOL)a3 showQRCodeOption:(BOOL)a4 showCrossTransferOption:(BOOL)a5 transferIneligiblePlans:(id)a6;
- (BOOL)_isStandaloneQRCodeView;
- (BOOL)_shouldShowTravelEducation;
- (TSCellularPlanIntroViewController)initWithTransferBackPlan:(id)a3;
- (TSSIMSetupFlowDelegate)delegate;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_laterButtonTapped;
- (void)_loadIcons;
- (void)_scanButtonTapped:(id)a3;
- (void)_shouldShowTravelEducation;
- (void)_viewWillAppear;
- (void)prepare:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation TSCellularPlanIntroViewController

+ (id)getDetailsWithTransferOption:(BOOL)a3 showQRCodeOption:(BOOL)a4 showCrossTransferOption:(BOOL)a5 transferIneligiblePlans:(id)a6
{
  v6 = a5;
  v35 = *MEMORY[0x277D85DE8];
  v9 = a6;
  if (!a4)
  {
    v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    if (v6)
    {
      v11 = @"CELLULAR_PLAN_INTRO_DETAIL_CROSS_PLATFORM_NO_QR_CODE";
    }

    else
    {
      v11 = @"CELLULAR_PLAN_INTRO_DETAIL_NO_QR_CODE";
    }

    goto LABEL_11;
  }

  if (a3)
  {
    v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    if (v6)
    {
      v11 = @"CELLULAR_PLAN_INTRO_DETAIL_CROSS_PLATFORM";
    }

    else
    {
      v11 = @"CELLULAR_PLAN_INTRO_DETAIL";
    }

LABEL_11:
    v13 = [v10 localizedStringForKey:v11 value:&stru_28753DF48 table:@"Localizable"];

    goto LABEL_29;
  }

  if (v6)
  {
    v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v13 = [v12 localizedStringForKey:@"CELLULAR_PLAN_INTRO_DETAIL_CROSS_PLATFORM" value:&stru_28753DF48 table:@"Localizable"];
  }

  else
  {
    v12 = [MEMORY[0x277CBEB58] set];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v14 = v9;
    v15 = [v14 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v31;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v31 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v30 + 1) + 8 * i);
          v20 = [v19 carrierName];
          v21 = [v20 length];

          if (v21)
          {
            v22 = [v19 carrierName];
            [v12 addObject:v22];
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v16);
    }

    if ([v12 count])
    {
      if ([v12 count] == 1)
      {
        v23 = [v12 allObjects];
        v24 = [v23 objectAtIndexedSubscript:0];
      }

      else
      {
        v24 = [TSUtilities FormattedCarrierListFromSet:v12];
      }

      v25 = MEMORY[0x277CCACA8];
      v26 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v27 = [v26 localizedStringForKey:@"CELLULAR_PLAN_INTRO_QRCODE_%@" value:&stru_28753DF48 table:@"Localizable"];
      v13 = [v25 stringWithFormat:v27, v24];
    }

    else
    {
      v24 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v13 = [v24 localizedStringForKey:@"CELLULAR_PLAN_INTRO_QRCODE_NO_CARRIER" value:&stru_28753DF48 table:@"Localizable"];
    }
  }

LABEL_29:
  v28 = *MEMORY[0x277D85DE8];

  return v13;
}

- (TSCellularPlanIntroViewController)initWithTransferBackPlan:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x277CF96D8] sharedManager];
  v7 = [v6 getSupportedFlowTypes];

  if (v7)
  {
    v8 = objc_alloc(MEMORY[0x277CC37B0]);
    v9 = [v8 initWithQueue:MEMORY[0x277D85CD0]];
    client = self->_client;
    self->_client = v9;

    v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v12 = [v11 localizedStringForKey:@"CELLULAR_PLAN_INTRO_DETAIL" value:&stru_28753DF48 table:@"Localizable"];

    v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v14 = [v13 localizedStringForKey:@"SET_UP_ESIM" value:&stru_28753DF48 table:@"Localizable"];
    v20.receiver = self;
    v20.super_class = TSCellularPlanIntroViewController;
    v15 = [(OBTableWelcomeController *)&v20 initWithTitle:v14 detailText:v12 symbolName:@"antenna.radiowaves.left.and.right" adoptTableViewScrollView:1];

    if (v15)
    {
      v15->_showTransferOption = 1;
      v15->_showQRCodeOption = 1;
      if (+[TSUtilities isPad](TSUtilities, "isPad") || +[TSUtilities isGreenTeaCapable])
      {
        v16 = 0;
      }

      else
      {
        v16 = _os_feature_enabled_impl();
      }

      v15->_showCrossTransferOption = v16;
      v15->_showTravelEduOption = 0;
      v15->_requireDelayBluetoothConnection = 0;
      objc_storeStrong(&v15->_transferBackPlan, a3);
      transferIneligiblePlans = v15->_transferIneligiblePlans;
      v15->_transferIneligiblePlans = 0;

      [(TSCellularPlanIntroViewController *)v15 _loadIcons];
    }

    self = v15;

    v17 = self;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (void)viewDidLoad
{
  v37.receiver = self;
  v37.super_class = TSCellularPlanIntroViewController;
  [(TSOBTableWelcomeController *)&v37 viewDidLoad];
  if ([(TSCellularPlanIntroViewController *)self _isStandaloneQRCodeView])
  {
    v3 = +[SSOBBoldTrayButton boldButton];
    scanButton = self->_scanButton;
    self->_scanButton = v3;

    [(SSOBBoldTrayButton *)self->_scanButton addTarget:self action:sel__scanButtonTapped_ forControlEvents:64];
    v5 = self->_scanButton;
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"SCAN_QR_CODE" value:&stru_28753DF48 table:@"Localizable"];
    [(SSOBBoldTrayButton *)v5 setTitle:v7 forState:0];

    v8 = [(TSCellularPlanIntroViewController *)self buttonTray];
    [v8 addButton:self->_scanButton];
  }

  if (+[TSUtilities inBuddy])
  {
    v9 = [MEMORY[0x277D37650] linkButton];
    laterButton = self->_laterButton;
    self->_laterButton = v9;

    v11 = self->_laterButton;
    v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v13 = [v12 localizedStringForKey:@"SET_UP_LATER" value:&stru_28753DF48 table:@"Localizable"];
    [(OBLinkTrayButton *)v11 setTitle:v13 forState:0];

    [(OBLinkTrayButton *)self->_laterButton addTarget:self action:sel__laterButtonTapped forControlEvents:64];
    v14 = [(TSCellularPlanIntroViewController *)self buttonTray];
    [v14 addButton:self->_laterButton];

    [(OBLinkTrayButton *)self->_laterButton setEnabled:1];
    goto LABEL_16;
  }

  v15 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel__laterButtonTapped];
  if (+[TSUtilities isPad])
  {
    v16 = [(OBBaseWelcomeController *)self navigationItem];
    [v16 setRightBarButtonItem:v15];
    goto LABEL_12;
  }

  v17 = [(TSCellularPlanIntroViewController *)self navigationController];
  v18 = [v17 viewControllers];
  if ([v18 count] < 2)
  {
  }

  else
  {
    v19 = [TSUtilities isBackAllowed:self];

    if (v19)
    {
      v16 = [(OBBaseWelcomeController *)self navigationItem];
      [v16 setHidesBackButton:0 animated:0];
      goto LABEL_12;
    }
  }

  v16 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel__laterButtonTapped];
  v20 = [(OBBaseWelcomeController *)self navigationItem];
  [v20 setLeftBarButtonItem:v16];

LABEL_12:
  if (_os_feature_enabled_impl() && !+[TSUtilities isPad])
  {
    v21 = [MEMORY[0x277D37638] accessoryButton];
    v22 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v23 = [v22 localizedStringForKey:@"LEARN_MORE_NO_ELLIPSIS" value:&stru_28753DF48 table:@"Localizable"];
    [v21 setTitle:v23 forState:0];

    [v21 addTarget:self action:sel__learnMoreButtonTapped forControlEvents:64];
    v24 = [(TSCellularPlanIntroViewController *)self headerView];
    [v24 addAccessoryButton:v21];
  }

LABEL_16:
  if (![(TSCellularPlanIntroViewController *)self _isStandaloneQRCodeView])
  {
    v25 = objc_alloc(MEMORY[0x277D75B40]);
    v26 = [v25 initWithFrame:2 style:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    [(OBTableWelcomeController *)self setTableView:v26];

    v27 = [(OBTableWelcomeController *)self tableView];
    [v27 setTranslatesAutoresizingMaskIntoConstraints:0];

    v28 = [(OBTableWelcomeController *)self tableView];
    [v28 setDirectionalLayoutMargins:{1.0, 1.0, 1.0, 1.0}];

    v29 = [(OBTableWelcomeController *)self tableView];
    v30 = [MEMORY[0x277D75348] clearColor];
    [v29 setBackgroundColor:v30];

    v31 = [(OBTableWelcomeController *)self tableView];
    [v31 setDataSource:self];

    v32 = [(OBTableWelcomeController *)self tableView];
    [v32 setDelegate:self];

    v33 = [(OBTableWelcomeController *)self tableView];
    [v33 setScrollEnabled:1];

    v34 = [(OBTableWelcomeController *)self tableView];
    [v34 setAllowsMultipleSelection:0];

    v35 = [(OBTableWelcomeController *)self tableView];
    [v35 reloadData];

    v36 = [(OBTableWelcomeController *)self tableView];
    [v36 layoutIfNeeded];
  }
}

- (void)viewDidLayoutSubviews
{
  v3 = [(TSCellularPlanIntroViewController *)self view];
  [v3 layoutIfNeeded];

  v5.receiver = self;
  v5.super_class = TSCellularPlanIntroViewController;
  [(TSCellularPlanIntroViewController *)&v5 updateViewConstraints];
  v4.receiver = self;
  v4.super_class = TSCellularPlanIntroViewController;
  [(OBTableWelcomeController *)&v4 viewDidLayoutSubviews];
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v5 = objc_opt_new();
  showOptions = self->_showOptions;
  self->_showOptions = v5;

  if (self->_showTransferOption)
  {
    [(NSMutableArray *)self->_showOptions addObject:@"showTransferOption"];
  }

  if (self->_showQRCodeOption && !self->_transferBackPlan)
  {
    [(NSMutableArray *)self->_showOptions addObject:@"showQRCodeOption"];
  }

  if (self->_showCrossTransferOption)
  {
    [(NSMutableArray *)self->_showOptions addObject:@"showCrossTransferOption"];
  }

  if (self->_showTravelEduOption)
  {
    [(NSMutableArray *)self->_showOptions addObject:@"showTravelEducationOption"];
  }

  v7 = self->_showOptions;

  return [(NSMutableArray *)v7 count];
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
    v10 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:0 reuseIdentifier:v9];
  }

  v11 = [v10 contentView];
  [v11 setLayoutMargins:{10.0, 0.0, 0.0, 0.0}];

  [v10 setAccessoryType:1];
  v12 = [MEMORY[0x277D75348] secondarySystemBackgroundColor];
  [v10 setBackgroundColor:v12];

  v13 = [v10 textLabel];
  [v13 setLineBreakMode:0];

  v14 = [v10 textLabel];
  [v14 setNumberOfLines:0];

  v15 = [v10 textLabel];
  [v15 setTranslatesAutoresizingMaskIntoConstraints:0];

  v16 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76988]];
  v17 = [v10 textLabel];
  [v17 setFont:v16];

  v18 = -[NSMutableArray objectAtIndexedSubscript:](self->_showOptions, "objectAtIndexedSubscript:", [v6 row]);
  LODWORD(v17) = [v18 isEqualToString:@"showTransferOption"];

  v19 = 0;
  if (v17)
  {
    v19 = self->_transferIcon;
    v20 = [v10 textLabel];
    v21 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v22 = [v21 localizedStringForKey:@"TRANSFER_CATEGORY_TITLE" value:&stru_28753DF48 table:@"Localizable"];
    [v20 setText:v22];
  }

  v23 = -[NSMutableArray objectAtIndexedSubscript:](self->_showOptions, "objectAtIndexedSubscript:", [v6 row]);
  v24 = [v23 isEqualToString:@"showQRCodeOption"];

  if (v24)
  {
    v25 = self->_qrIcon;

    v26 = [v10 textLabel];
    v27 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v28 = [v27 localizedStringForKey:@"SCAN_CATEGORY_TITLE" value:&stru_28753DF48 table:@"Localizable"];
    [v26 setText:v28];

    v19 = v25;
  }

  v29 = -[NSMutableArray objectAtIndexedSubscript:](self->_showOptions, "objectAtIndexedSubscript:", [v6 row]);
  v30 = [v29 isEqualToString:@"showCrossTransferOption"];

  if (v30)
  {
    v31 = self->_crossTransferIcon;

    v32 = [v10 textLabel];
    v33 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v34 = [v33 localizedStringForKey:@"TARGET_TRANSFER_FROM_ANDROID_BUTTON" value:&stru_28753DF48 table:@"Localizable"];
    [v32 setText:v34];

    v19 = v31;
  }

  v35 = -[NSMutableArray objectAtIndexedSubscript:](self->_showOptions, "objectAtIndexedSubscript:", [v6 row]);
  v36 = [v35 isEqualToString:@"showTravelEducationOption"];

  if (v36)
  {
    v37 = self->_travelEduIcon;

    v38 = [v10 textLabel];
    v39 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v40 = [v39 localizedStringForKey:@"TRAVEL_EDUCATION_BUTTON" value:&stru_28753DF48 table:@"Localizable"];
    [v38 setText:v40];

    v19 = v37;
  }

  v41 = [MEMORY[0x277D75348] systemBlueColor];
  v42 = [(UIImage *)v19 imageWithTintColor:v41];

  UIGraphicsBeginImageContextWithOptions(*&self->_maxIconWidth, 0, 0.0);
  [v42 size];
  v44 = v43;
  [v42 size];
  [v42 drawInRect:{0.0, 0.0, v44, v45}];
  v46 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  v47 = [v46 imageWithRenderingMode:1];
  v48 = [v10 imageView];
  [v48 setImage:v46];

  return v10;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = -[NSMutableArray objectAtIndexedSubscript:](self->_showOptions, "objectAtIndexedSubscript:", [v5 row]);
  v7 = [v6 isEqualToString:@"showTransferOption"];

  if (v7)
  {
    v8 = &OBJC_IVAR___TSCellularPlanIntroViewController__isProximityTransferButtonTapped;
  }

  else
  {
    v9 = -[NSMutableArray objectAtIndexedSubscript:](self->_showOptions, "objectAtIndexedSubscript:", [v5 row]);
    v10 = [v9 isEqualToString:@"showQRCodeOption"];

    if (v10)
    {
      v8 = &OBJC_IVAR___TSCellularPlanIntroViewController__isScanButtonTapped;
    }

    else
    {
      v11 = -[NSMutableArray objectAtIndexedSubscript:](self->_showOptions, "objectAtIndexedSubscript:", [v5 row]);
      v12 = [v11 isEqualToString:@"showCrossTransferOption"];

      if (v12)
      {
        v8 = &OBJC_IVAR___TSCellularPlanIntroViewController__isCrossPlatformButtonTapped;
      }

      else
      {
        v13 = -[NSMutableArray objectAtIndexedSubscript:](self->_showOptions, "objectAtIndexedSubscript:", [v5 row]);
        v14 = [v13 isEqualToString:@"showTravelEducationOption"];

        if (!v14)
        {
          goto LABEL_10;
        }

        v8 = &OBJC_IVAR___TSCellularPlanIntroViewController__isTravelEduButtonTapped;
      }
    }
  }

  *(&self->super.super.super.super.super.super.super.isa + *v8) = 1;
LABEL_10:
  v15 = [(OBTableWelcomeController *)self tableView];
  [v15 deselectRowAtIndexPath:v5 animated:1];

  if (self->_isCrossPlatformButtonTapped)
  {
    bluetoothChecker = self->_bluetoothChecker;
    if (!bluetoothChecker)
    {
      v17 = objc_alloc_init(BluetoothChecker);
      v18 = self->_bluetoothChecker;
      self->_bluetoothChecker = v17;

      bluetoothChecker = self->_bluetoothChecker;
    }

    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __71__TSCellularPlanIntroViewController_tableView_didSelectRowAtIndexPath___block_invoke;
    v20[3] = &unk_279B44F10;
    v20[4] = self;
    [(BluetoothChecker *)bluetoothChecker isBluetoothOff:v20];
  }

  else
  {
    v19 = [(TSCellularPlanIntroViewController *)self delegate];
    [v19 viewControllerDidComplete:self];
  }
}

void __71__TSCellularPlanIntroViewController_tableView_didSelectRowAtIndexPath___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v4 = *(a1 + 32);
    [TSFlowHelper showBluetoothOffAlertForCrossPlatformTransfer:"showBluetoothOffAlertForCrossPlatformTransfer:withCloseHandler:" withCloseHandler:?];
  }

  else
  {
    v3 = [*(a1 + 32) delegate];
    [v3 viewControllerDidComplete:*(a1 + 32)];
  }
}

void __71__TSCellularPlanIntroViewController_tableView_didSelectRowAtIndexPath___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) delegate];
  [v1 userDidTapCancel];
}

- (void)_scanButtonTapped:(id)a3
{
  self->_isScanButtonTapped = 1;
  v4 = [(TSCellularPlanIntroViewController *)self delegate];
  [v4 viewControllerDidComplete:self];
}

- (void)_laterButtonTapped
{
  if (+[TSUtilities inBuddy](TSUtilities, "inBuddy") && (+[TSCoreTelephonyClientCache sharedInstance](TSCoreTelephonyClientCache, "sharedInstance"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 isEmbeddedSIMOnlyConfig], v3, (v4 & 1) != 0) && !+[TSUtilities areAnyPlansOnDevice](TSUtilities, "areAnyPlansOnDevice"))
  {
    v5 = MEMORY[0x277D75110];
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"SKIP_SETUP_TITLE" value:&stru_28753DF48 table:@"Localizable"];
    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"SKIP_SETUP_MESSAGE" value:&stru_28753DF48 table:@"Localizable"];
    v10 = [v5 alertControllerWithTitle:v7 message:v9 preferredStyle:1];

    v11 = MEMORY[0x277D750F8];
    v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v13 = [v12 localizedStringForKey:@"SKIP" value:&stru_28753DF48 table:@"Localizable"];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __55__TSCellularPlanIntroViewController__laterButtonTapped__block_invoke;
    v20[3] = &unk_279B44B38;
    v20[4] = self;
    v14 = [v11 actionWithTitle:v13 style:1 handler:v20];
    [v10 addAction:v14];

    v15 = MEMORY[0x277D750F8];
    v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v17 = [v16 localizedStringForKey:@"CANCEL" value:&stru_28753DF48 table:@"Localizable"];
    v18 = [v15 actionWithTitle:v17 style:0 handler:&__block_literal_global_31];
    [v10 addAction:v18];

    [(TSCellularPlanIntroViewController *)self presentViewController:v10 animated:1 completion:0];
  }

  else
  {
    v19 = [(TSCellularPlanIntroViewController *)self delegate];
    [v19 userDidTapCancel];
  }
}

void __55__TSCellularPlanIntroViewController__laterButtonTapped__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) delegate];
  [v1 userDidTapCancel];
}

- (void)_viewWillAppear
{
  self->_isCrossPlatformButtonTapped = 0;
  self->_isScanButtonTapped = 0;
  self->_isProximityTransferButtonTapped = 0;
  self->_isTravelEduButtonTapped = 0;
  if (+[TSUtilities inBuddy]&& ![TSUtilities isBackAllowed:self])
  {
    v3 = [(OBBaseWelcomeController *)self navigationItem];
    [v3 setHidesBackButton:1 animated:0];
  }
}

- (void)_loadIcons
{
  v25 = [MEMORY[0x277D755D0] configurationWithPointSize:4 weight:2 scale:28.0];
  if (self->_showTransferOption)
  {
    v3 = [MEMORY[0x277D755B8] systemImageNamed:@"iphone.and.arrow.forward" withConfiguration:v25];
    transferIcon = self->_transferIcon;
    self->_transferIcon = v3;
  }

  if (self->_showQRCodeOption && !self->_transferBackPlan)
  {
    v5 = [MEMORY[0x277D755B8] systemImageNamed:@"qrcode" withConfiguration:v25];
    qrIcon = self->_qrIcon;
    self->_qrIcon = v5;
  }

  if (self->_showCrossTransferOption)
  {
    v7 = [MEMORY[0x277D755B8] systemImageNamed:@"smartphone" withConfiguration:v25];
    crossTransferIcon = self->_crossTransferIcon;
    self->_crossTransferIcon = v7;
  }

  if (self->_showTravelEduOption)
  {
    v9 = [MEMORY[0x277D755B8] systemImageNamed:@"airplane" withConfiguration:v25];
    travelEduIcon = self->_travelEduIcon;
    self->_travelEduIcon = v9;
  }

  [(UIImage *)self->_transferIcon size];
  v12 = v11;
  [(UIImage *)self->_qrIcon size];
  v14 = fmax(v12, v13);
  [(UIImage *)self->_crossTransferIcon size];
  v16 = v15;
  [(UIImage *)self->_travelEduIcon size];
  self->_maxIconWidth = fmax(v14, fmax(v16, v17));
  [(UIImage *)self->_transferIcon size];
  v19 = v18;
  [(UIImage *)self->_qrIcon size];
  v21 = fmax(v19, v20);
  [(UIImage *)self->_crossTransferIcon size];
  v23 = v22;
  [(UIImage *)self->_travelEduIcon size];
  self->_maxIconHeight = fmax(v21, fmax(v23, v24));
}

- (BOOL)_isStandaloneQRCodeView
{
  v7 = *MEMORY[0x277D85DE8];
  if (!self->_showQRCodeOption || self->_showTransferOption || self->_showCrossTransferOption || self->_showTravelEduOption)
  {
    result = 0;
  }

  else
  {
    v4 = _TSLogDomain();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315138;
      v6 = "[TSCellularPlanIntroViewController _isStandaloneQRCodeView]";
      _os_log_impl(&dword_262AA8000, v4, OS_LOG_TYPE_DEFAULT, "StandaloneQRCodeView: YES @%s", &v5, 0xCu);
    }

    result = 1;
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)_shouldShowTravelEducation
{
  v18 = *MEMORY[0x277D85DE8];
  if (self->_client && (objc_opt_respondsToSelector() & 1) != 0)
  {
    client = self->_client;
    v13 = 0;
    v4 = [(CoreTelephonyClient *)client shouldShowTravelEducation:&v13];
    v5 = v13;
    if (v4)
    {
      if (!+[TSUtilities inBuddy])
      {
        v6 = _TSLogDomain();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v7 = [v4 BOOLValue];
          v8 = @"Not Show";
          if (v7)
          {
            v8 = @"Show";
          }

          *buf = 138412546;
          v15 = v8;
          v16 = 2080;
          v17 = "[TSCellularPlanIntroViewController _shouldShowTravelEducation]";
          _os_log_impl(&dword_262AA8000, v6, OS_LOG_TYPE_DEFAULT, "Show travel education result: %@ @%s", buf, 0x16u);
        }

        v9 = [v4 BOOLValue];
        goto LABEL_15;
      }
    }

    else
    {
      v10 = _TSLogDomain();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [(TSCellularPlanIntroViewController *)v5 _shouldShowTravelEducation];
      }
    }

    v9 = 0;
LABEL_15:

    goto LABEL_16;
  }

  v9 = 0;
LABEL_16:
  v11 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)prepare:(id)a3
{
  v4 = a3;
  v5 = 1;
  if (((self->_showQRCodeOption + self->_showTransferOption + self->_showCrossTransferOption + self->_showTravelEduOption) & 0xFu) <= 1 && (self->_showTransferOption || self->_showQRCodeOption))
  {
    if (self->_showTransferOption)
    {
      v6 = &OBJC_IVAR___TSCellularPlanIntroViewController__needShowTransferIntroPane;
    }

    else
    {
      v6 = &OBJC_IVAR___TSCellularPlanIntroViewController__isScanButtonTapped;
    }

    *(&self->super.super.super.super.super.super.super.isa + *v6) = 1;
    v5 = 0;
  }

  v7 = v4;
  (*(v4 + 2))(v4, v5);
}

- (TSSIMSetupFlowDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithShowTransferOption:(os_log_t)log requireDelayBluetoothConnection:showQrCodeOption:transferIneligiblePlans:.cold.1(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "[TSCellularPlanIntroViewController initWithShowTransferOption:requireDelayBluetoothConnection:showQrCodeOption:transferIneligiblePlans:]";
  _os_log_fault_impl(&dword_262AA8000, log, OS_LOG_TYPE_FAULT, "[F]no option need to show @%s", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)_shouldShowTravelEducation
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = a1;
  v5 = 2080;
  v6 = "[TSCellularPlanIntroViewController _shouldShowTravelEducation]";
  _os_log_error_impl(&dword_262AA8000, a2, OS_LOG_TYPE_ERROR, "[E]Error checking: %@ @%s", &v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

@end