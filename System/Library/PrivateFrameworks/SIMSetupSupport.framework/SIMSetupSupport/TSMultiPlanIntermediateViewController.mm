@interface TSMultiPlanIntermediateViewController
- (TSMultiPlanIntermediateViewController)initWithPendingInstallPlans:(id)a3 transferPlans:(id)a4 carrierSetupPlans:(id)a5 showQRCodeOption:(BOOL)a6 showOtherOptions:(BOOL)a7 isShowingFilteredPlans:(BOOL)a8 isStandaloneProximityFlow:(BOOL)a9 isHiddenPlanSelectable:(BOOL)a10;
- (TSSIMSetupFlowDelegate)delegate;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (void)_otherButtonTapped;
- (void)_prepareCellInformationWithPendingInstallPlans:(id)a3 transferPlans:(id)a4 carrierSetupPlans:(id)a5 isHiddenPlanSelectable:(BOOL)a6;
- (void)_skipButtonTapped;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation TSMultiPlanIntermediateViewController

- (TSMultiPlanIntermediateViewController)initWithPendingInstallPlans:(id)a3 transferPlans:(id)a4 carrierSetupPlans:(id)a5 showQRCodeOption:(BOOL)a6 showOtherOptions:(BOOL)a7 isShowingFilteredPlans:(BOOL)a8 isStandaloneProximityFlow:(BOOL)a9 isHiddenPlanSelectable:(BOOL)a10
{
  v12 = a6;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = [v17 filteredPlansForQRCodeBucket];
  v20 = [v17 filteredPlansForTransferableBucket];
  v21 = [v16 count];
  self->_nonMagnoliaCount = [v18 count] + v21;
  if ([v20 count] + self->_nonMagnoliaCount)
  {
    v35 = v12 && [v19 count] != 0;
    v34 = a7;
    if ([v16 count] || objc_msgSend(v18, "count"))
    {
      v24 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v22 = [v24 localizedStringForKey:@"SET_UP_CELLULAR" value:&stru_28753DF48 table:@"Localizable"];

      v25 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v26 = v25;
      v27 = @"MULTI_ALS_DETAIL";
    }

    else
    {
      v33 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v22 = [v33 localizedStringForKey:@"MULTI_TRANSFER_TITLE" value:&stru_28753DF48 table:@"Localizable"];

      v25 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v26 = v25;
      if (v35)
      {
        v27 = @"MULTI_ESIM_TRANSFER_QR_CODE_DETAIL";
      }

      else
      {
        v27 = @"MULTI_ESIM_TRANSFER_DETAIL";
      }
    }

    v28 = [v25 localizedStringForKey:v27 value:&stru_28753DF48 table:@"Localizable"];

    v36.receiver = self;
    v36.super_class = TSMultiPlanIntermediateViewController;
    v29 = [(OBTableWelcomeController *)&v36 initWithTitle:v22 detailText:v28 symbolName:@"antenna.radiowaves.left.and.right" adoptTableViewScrollView:1];
    self = v29;
    if (v29)
    {
      v29->_showOtherOptions = v34;
      v29->_showQrCodeOption = v35;
      v29->_isStandaloneProximityFlow = a9;
      v29->_isShowingFilteredPlans = a8;
      [(TSMultiPlanIntermediateViewController *)v29 _prepareCellInformationWithPendingInstallPlans:v16 transferPlans:v17 carrierSetupPlans:v18 isHiddenPlanSelectable:a10];
      v30 = self;
    }

    else
    {
      v31 = _TSLogDomain();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        [TSMultiPlanIntermediateViewController initWithPendingInstallPlans:v31 transferPlans:? carrierSetupPlans:? showQRCodeOption:? showOtherOptions:? isShowingFilteredPlans:? isStandaloneProximityFlow:? isHiddenPlanSelectable:?];
      }
    }

    v23 = self;
  }

  else
  {
    v22 = _TSLogDomain();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [TSMultiPlanIntermediateViewController initWithPendingInstallPlans:v22 transferPlans:? carrierSetupPlans:? showQRCodeOption:? showOtherOptions:? isShowingFilteredPlans:? isStandaloneProximityFlow:? isHiddenPlanSelectable:?];
    }

    v23 = 0;
  }

  return v23;
}

- (void)viewDidLoad
{
  v25.receiver = self;
  v25.super_class = TSMultiPlanIntermediateViewController;
  [(TSOBTableWelcomeController *)&v25 viewDidLoad];
  if (+[TSUtilities inBuddy])
  {
    v3 = [MEMORY[0x277D37650] linkButton];
    laterButton = self->_laterButton;
    self->_laterButton = v3;

    v5 = self->_laterButton;
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"SET_UP_LATER" value:&stru_28753DF48 table:@"Localizable"];
    [(OBLinkTrayButton *)v5 setTitle:v7 forState:0];

    [(OBLinkTrayButton *)self->_laterButton addTarget:self action:sel__skipButtonTapped forControlEvents:64];
    v8 = [(TSMultiPlanIntermediateViewController *)self buttonTray];
    [v8 addButton:self->_laterButton];

    [(OBLinkTrayButton *)self->_laterButton setEnabled:1];
  }

  v9 = objc_alloc(MEMORY[0x277D75B40]);
  v10 = [v9 initWithFrame:2 style:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [(OBTableWelcomeController *)self setTableView:v10];

  v11 = [(OBTableWelcomeController *)self tableView];
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];

  v12 = [(OBTableWelcomeController *)self tableView];
  [v12 setRowHeight:*MEMORY[0x277D76F30]];

  v13 = [(OBTableWelcomeController *)self tableView];
  [v13 setEstimatedRowHeight:1.0];

  v14 = [(OBTableWelcomeController *)self tableView];
  [v14 setAllowsMultipleSelection:0];

  v15 = [(OBTableWelcomeController *)self tableView];
  [v15 setScrollEnabled:1];

  v16 = [(OBTableWelcomeController *)self tableView];
  v17 = [MEMORY[0x277D75348] clearColor];
  [v16 setBackgroundColor:v17];

  v18 = [(OBTableWelcomeController *)self tableView];
  [v18 setDataSource:self];

  v19 = [(OBTableWelcomeController *)self tableView];
  [v19 reloadData];

  if (!+[TSUtilities inBuddy]&& self->_showOtherOptions)
  {
    v20 = [MEMORY[0x277D37650] linkButton];
    [v20 addTarget:self action:sel__otherButtonTapped forControlEvents:64];
    v21 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v22 = [v21 localizedStringForKey:@"OTHER_OPTIONS" value:&stru_28753DF48 table:@"Localizable"];
    [v20 setTitle:v22 forState:0];

    v23 = [(TSMultiPlanIntermediateViewController *)self buttonTray];
    [v23 addButton:v20];
  }

  if (!+[TSUtilities inBuddy])
  {
    v24 = [(TSMultiPlanIntermediateViewController *)self delegate];
    [v24 setCancelNavigationBarItems:self];
    goto LABEL_11;
  }

  if (self->_isStandaloneProximityFlow || self->_isShowingFilteredPlans)
  {
    v24 = [(OBBaseWelcomeController *)self navigationItem];
    [v24 setHidesBackButton:1];
LABEL_11:
  }
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  if (self->_showQrCodeOption)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (void)_prepareCellInformationWithPendingInstallPlans:(id)a3 transferPlans:(id)a4 carrierSetupPlans:(id)a5 isHiddenPlanSelectable:(BOOL)a6
{
  v65 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [v11 filteredPlansForTransferableBucket];
  v14 = [v13 filteredPlansForHiddenInCloudBucket:1];
  if (!a6)
  {
    v15 = [v13 filteredPlansForHiddenInCloudBucket:0];

    v13 = v15;
  }

  v16 = [v13 arrayByAddingObjectsFromArray:v10];

  v17 = [v16 arrayByAddingObjectsFromArray:v12];

  v18 = [v17 carrierNames];
  v55 = v17;
  if (![v17 count] && objc_msgSend(v14, "count"))
  {
    v19 = [v14 carrierNames];

    v18 = v19;
  }

  v56 = v14;
  v54 = v18;
  v20 = [TSUtilities FormattedCarrierListFromSet:v18];
  if ([v20 length])
  {
    v21 = MEMORY[0x277CCACA8];
    v22 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v23 = [v22 localizedStringForKey:@"INTERMEDIATE_TRANSFER_PLAN_ITEM_SUBTITLE_@" value:&stru_28753DF48 table:@"Localizable"];
    v24 = [v21 localizedStringWithFormat:v23, v20];
    installBucketSubtitle = self->_installBucketSubtitle;
    self->_installBucketSubtitle = v24;
  }

  else
  {
    v22 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v26 = [v22 localizedStringForKey:@"INTERMEDIATE_TRANSFER_PLAN_ITEM_SUBTITLE" value:&stru_28753DF48 table:@"Localizable"];
    v23 = self->_installBucketSubtitle;
    self->_installBucketSubtitle = v26;
  }

  v59 = v10;
  v27 = [v10 count];
  v57 = v12;
  if (v27 + [v12 count])
  {
    v28 = @"MULTI_ALS_TEXT";
  }

  else
  {
    v28 = @"TRANSFER_PLAN_ITEM_TITLE_MULTIPLE";
  }

  v29 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v30 = [v29 localizedStringForKey:v28 value:&stru_28753DF48 table:@"Localizable"];
  installBucketTitle = self->_installBucketTitle;
  self->_installBucketTitle = v30;

  v58 = v11;
  v32 = [v11 filteredPlansForQRCodeBucket];
  v33 = [MEMORY[0x277CBEB58] set];
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v34 = v32;
  v35 = [v34 countByEnumeratingWithState:&v60 objects:v64 count:16];
  if (v35)
  {
    v36 = v35;
    v37 = *v61;
    do
    {
      for (i = 0; i != v36; ++i)
      {
        if (*v61 != v37)
        {
          objc_enumerationMutation(v34);
        }

        v39 = *(*(&v60 + 1) + 8 * i);
        v40 = [v39 carrierName];
        v41 = [v40 length];

        if (v41)
        {
          v42 = [v39 carrierName];
          [v33 addObject:v42];
        }
      }

      v36 = [v34 countByEnumeratingWithState:&v60 objects:v64 count:16];
    }

    while (v36);
  }

  v43 = [TSUtilities FormattedCarrierListFromSet:v33];
  v44 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v45 = [v44 localizedStringForKey:@"SCAN_QR_CODE" value:&stru_28753DF48 table:@"Localizable"];
  qrcodeBucketTitle = self->_qrcodeBucketTitle;
  self->_qrcodeBucketTitle = v45;

  if ([v43 length])
  {
    v47 = MEMORY[0x277CCACA8];
    v48 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v49 = [v48 localizedStringForKey:@"SCAN_QR_CODE_SUBTEXT_@" value:&stru_28753DF48 table:@"Localizable"];
    v50 = [v47 localizedStringWithFormat:v49, v43];
    qrcodeBucketSubtitle = self->_qrcodeBucketSubtitle;
    self->_qrcodeBucketSubtitle = v50;
  }

  else
  {
    v48 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v52 = [v48 localizedStringForKey:@"SCAN_QR_CODE_SUBTEXT" value:&stru_28753DF48 table:@"Localizable"];
    v49 = self->_qrcodeBucketSubtitle;
    self->_qrcodeBucketSubtitle = v52;
  }

  v53 = *MEMORY[0x277D85DE8];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = MEMORY[0x277CCACA8];
  v7 = a4;
  v8 = a3;
  v9 = [v6 stringWithFormat:@"options%ld", objc_msgSend(v7, "section")];
  v10 = [v8 dequeueReusableCellWithIdentifier:v9];

  if (!v10)
  {
    v10 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:3 reuseIdentifier:v9];
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

  v18 = [v10 detailTextLabel];
  [v18 setLineBreakMode:0];

  v19 = [v10 detailTextLabel];
  [v19 setNumberOfLines:0];

  v20 = [v10 detailTextLabel];
  [v20 setTranslatesAutoresizingMaskIntoConstraints:0];

  v21 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769D0]];
  v22 = [v10 detailTextLabel];
  [v22 setFont:v21];

  v23 = [v7 section];
  if (!v23)
  {
    v24 = [MEMORY[0x277D755B8] systemImageNamed:@"iphone.and.arrow.forward"];
    v26 = [v10 textLabel];
    [v26 setText:self->_installBucketTitle];
    v27 = &OBJC_IVAR___TSMultiPlanIntermediateViewController__installBucketSubtitle;
    goto LABEL_7;
  }

  if (self->_showQrCodeOption)
  {
    v24 = [MEMORY[0x277D755B8] systemImageNamed:@"qrcode"];
    qrcodeBucketTitle = self->_qrcodeBucketTitle;
    v26 = [v10 textLabel];
    [v26 setText:qrcodeBucketTitle];
    v27 = &OBJC_IVAR___TSMultiPlanIntermediateViewController__qrcodeBucketSubtitle;
LABEL_7:

    v28 = *(&self->super.super.super.super.super.super.super.isa + *v27);
    v29 = [v10 detailTextLabel];
    [v29 setText:v28];

    goto LABEL_9;
  }

  v24 = 0;
LABEL_9:
  v30 = [MEMORY[0x277D75348] systemBlueColor];
  v31 = [v24 imageWithTintColor:v30];

  [v31 size];
  v33 = v32 * 1.5;
  [v31 size];
  v43.height = v34 * 1.5;
  v43.width = v33;
  UIGraphicsBeginImageContextWithOptions(v43, 0, 0.0);
  [v31 size];
  v36 = v35 * 1.5;
  [v31 size];
  [v31 drawInRect:{0.0, 0.0, v36, v37 * 1.5}];
  v38 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  v39 = [v38 imageWithRenderingMode:1];
  v40 = [v10 imageView];
  [v40 setImage:v38];

  return v10;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v8 = a4;
  if ([v8 section])
  {
    if ([v8 section] != 1)
    {
      goto LABEL_6;
    }

    v5 = &OBJC_IVAR___TSMultiPlanIntermediateViewController__isScanButtonTapped;
  }

  else
  {
    v5 = &OBJC_IVAR___TSMultiPlanIntermediateViewController__isTransferListCellTapped;
  }

  *(&self->super.super.super.super.super.super.super.isa + *v5) = 1;
LABEL_6:
  v6 = [(TSMultiPlanIntermediateViewController *)self delegate];
  [v6 viewControllerDidComplete:self];

  v7 = [(OBTableWelcomeController *)self tableView];
  [v7 deselectRowAtIndexPath:v8 animated:1];
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  v4 = objc_alloc(MEMORY[0x277D75D18]);
  v5 = [v4 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];

  return v5;
}

- (void)_otherButtonTapped
{
  self->_isOtherButtonTapped = 1;
  v3 = [(TSMultiPlanIntermediateViewController *)self delegate];
  [v3 viewControllerDidComplete:self];
}

- (void)_skipButtonTapped
{
  if (+[TSUtilities inBuddy](TSUtilities, "inBuddy") && (self->_nonMagnoliaCount || (+[TSCoreTelephonyClientCache sharedInstance](TSCoreTelephonyClientCache, "sharedInstance"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 isEmbeddedSIMOnlyConfig], v3, v4)) && !+[TSUtilities areAnyPlansOnDevice](TSUtilities, "areAnyPlansOnDevice"))
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
    v20[2] = __58__TSMultiPlanIntermediateViewController__skipButtonTapped__block_invoke;
    v20[3] = &unk_279B44B38;
    v20[4] = self;
    v14 = [v11 actionWithTitle:v13 style:1 handler:v20];
    [v10 addAction:v14];

    v15 = MEMORY[0x277D750F8];
    v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v17 = [v16 localizedStringForKey:@"CANCEL" value:&stru_28753DF48 table:@"Localizable"];
    v18 = [v15 actionWithTitle:v17 style:0 handler:&__block_literal_global_10];
    [v10 addAction:v18];

    [(TSMultiPlanIntermediateViewController *)self presentViewController:v10 animated:1 completion:0];
  }

  else
  {
    v19 = [(TSMultiPlanIntermediateViewController *)self delegate];
    [v19 viewControllerDidComplete:self];
  }
}

void __58__TSMultiPlanIntermediateViewController__skipButtonTapped__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 viewControllerDidComplete:*(a1 + 32)];
}

- (TSSIMSetupFlowDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithPendingInstallPlans:(os_log_t)log transferPlans:carrierSetupPlans:showQRCodeOption:showOtherOptions:isShowingFilteredPlans:isStandaloneProximityFlow:isHiddenPlanSelectable:.cold.1(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "[TSMultiPlanIntermediateViewController initWithPendingInstallPlans:transferPlans:carrierSetupPlans:showQRCodeOption:showOtherOptions:isShowingFilteredPlans:isStandaloneProximityFlow:isHiddenPlanSelectable:]";
  _os_log_error_impl(&dword_262AA8000, log, OS_LOG_TYPE_ERROR, "[E]Self not initialized @%s", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)initWithPendingInstallPlans:(os_log_t)log transferPlans:carrierSetupPlans:showQRCodeOption:showOtherOptions:isShowingFilteredPlans:isStandaloneProximityFlow:isHiddenPlanSelectable:.cold.2(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "[TSMultiPlanIntermediateViewController initWithPendingInstallPlans:transferPlans:carrierSetupPlans:showQRCodeOption:showOtherOptions:isShowingFilteredPlans:isStandaloneProximityFlow:isHiddenPlanSelectable:]";
  _os_log_error_impl(&dword_262AA8000, log, OS_LOG_TYPE_ERROR, "[E]no installable plans. showing intermediate pane is unexpected @%s", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end