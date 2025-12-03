@interface TSMultiPlanIntermediateViewController
- (TSMultiPlanIntermediateViewController)initWithPendingInstallPlans:(id)plans transferPlans:(id)transferPlans carrierSetupPlans:(id)setupPlans showQRCodeOption:(BOOL)option showOtherOptions:(BOOL)options isShowingFilteredPlans:(BOOL)filteredPlans isStandaloneProximityFlow:(BOOL)flow isHiddenPlanSelectable:(BOOL)self0;
- (TSSIMSetupFlowDelegate)delegate;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (void)_otherButtonTapped;
- (void)_prepareCellInformationWithPendingInstallPlans:(id)plans transferPlans:(id)transferPlans carrierSetupPlans:(id)setupPlans isHiddenPlanSelectable:(BOOL)selectable;
- (void)_skipButtonTapped;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation TSMultiPlanIntermediateViewController

- (TSMultiPlanIntermediateViewController)initWithPendingInstallPlans:(id)plans transferPlans:(id)transferPlans carrierSetupPlans:(id)setupPlans showQRCodeOption:(BOOL)option showOtherOptions:(BOOL)options isShowingFilteredPlans:(BOOL)filteredPlans isStandaloneProximityFlow:(BOOL)flow isHiddenPlanSelectable:(BOOL)self0
{
  optionCopy = option;
  plansCopy = plans;
  transferPlansCopy = transferPlans;
  setupPlansCopy = setupPlans;
  filteredPlansForQRCodeBucket = [transferPlansCopy filteredPlansForQRCodeBucket];
  filteredPlansForTransferableBucket = [transferPlansCopy filteredPlansForTransferableBucket];
  v21 = [plansCopy count];
  self->_nonMagnoliaCount = [setupPlansCopy count] + v21;
  if ([filteredPlansForTransferableBucket count] + self->_nonMagnoliaCount)
  {
    v35 = optionCopy && [filteredPlansForQRCodeBucket count] != 0;
    optionsCopy = options;
    if ([plansCopy count] || objc_msgSend(setupPlansCopy, "count"))
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
      v29->_showOtherOptions = optionsCopy;
      v29->_showQrCodeOption = v35;
      v29->_isStandaloneProximityFlow = flow;
      v29->_isShowingFilteredPlans = filteredPlans;
      [(TSMultiPlanIntermediateViewController *)v29 _prepareCellInformationWithPendingInstallPlans:plansCopy transferPlans:transferPlansCopy carrierSetupPlans:setupPlansCopy isHiddenPlanSelectable:selectable];
      selfCopy = self;
    }

    else
    {
      v31 = _TSLogDomain();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        [TSMultiPlanIntermediateViewController initWithPendingInstallPlans:v31 transferPlans:? carrierSetupPlans:? showQRCodeOption:? showOtherOptions:? isShowingFilteredPlans:? isStandaloneProximityFlow:? isHiddenPlanSelectable:?];
      }
    }

    selfCopy2 = self;
  }

  else
  {
    v22 = _TSLogDomain();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [TSMultiPlanIntermediateViewController initWithPendingInstallPlans:v22 transferPlans:? carrierSetupPlans:? showQRCodeOption:? showOtherOptions:? isShowingFilteredPlans:? isStandaloneProximityFlow:? isHiddenPlanSelectable:?];
    }

    selfCopy2 = 0;
  }

  return selfCopy2;
}

- (void)viewDidLoad
{
  v25.receiver = self;
  v25.super_class = TSMultiPlanIntermediateViewController;
  [(TSOBTableWelcomeController *)&v25 viewDidLoad];
  if (+[TSUtilities inBuddy])
  {
    linkButton = [MEMORY[0x277D37650] linkButton];
    laterButton = self->_laterButton;
    self->_laterButton = linkButton;

    v5 = self->_laterButton;
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"SET_UP_LATER" value:&stru_28753DF48 table:@"Localizable"];
    [(OBLinkTrayButton *)v5 setTitle:v7 forState:0];

    [(OBLinkTrayButton *)self->_laterButton addTarget:self action:sel__skipButtonTapped forControlEvents:64];
    buttonTray = [(TSMultiPlanIntermediateViewController *)self buttonTray];
    [buttonTray addButton:self->_laterButton];

    [(OBLinkTrayButton *)self->_laterButton setEnabled:1];
  }

  v9 = objc_alloc(MEMORY[0x277D75B40]);
  v10 = [v9 initWithFrame:2 style:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [(OBTableWelcomeController *)self setTableView:v10];

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
  clearColor = [MEMORY[0x277D75348] clearColor];
  [tableView6 setBackgroundColor:clearColor];

  tableView7 = [(OBTableWelcomeController *)self tableView];
  [tableView7 setDataSource:self];

  tableView8 = [(OBTableWelcomeController *)self tableView];
  [tableView8 reloadData];

  if (!+[TSUtilities inBuddy]&& self->_showOtherOptions)
  {
    linkButton2 = [MEMORY[0x277D37650] linkButton];
    [linkButton2 addTarget:self action:sel__otherButtonTapped forControlEvents:64];
    v21 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v22 = [v21 localizedStringForKey:@"OTHER_OPTIONS" value:&stru_28753DF48 table:@"Localizable"];
    [linkButton2 setTitle:v22 forState:0];

    buttonTray2 = [(TSMultiPlanIntermediateViewController *)self buttonTray];
    [buttonTray2 addButton:linkButton2];
  }

  if (!+[TSUtilities inBuddy])
  {
    delegate = [(TSMultiPlanIntermediateViewController *)self delegate];
    [delegate setCancelNavigationBarItems:self];
    goto LABEL_11;
  }

  if (self->_isStandaloneProximityFlow || self->_isShowingFilteredPlans)
  {
    delegate = [(OBBaseWelcomeController *)self navigationItem];
    [delegate setHidesBackButton:1];
LABEL_11:
  }
}

- (int64_t)numberOfSectionsInTableView:(id)view
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

- (void)_prepareCellInformationWithPendingInstallPlans:(id)plans transferPlans:(id)transferPlans carrierSetupPlans:(id)setupPlans isHiddenPlanSelectable:(BOOL)selectable
{
  v65 = *MEMORY[0x277D85DE8];
  plansCopy = plans;
  transferPlansCopy = transferPlans;
  setupPlansCopy = setupPlans;
  filteredPlansForTransferableBucket = [transferPlansCopy filteredPlansForTransferableBucket];
  v14 = [filteredPlansForTransferableBucket filteredPlansForHiddenInCloudBucket:1];
  if (!selectable)
  {
    v15 = [filteredPlansForTransferableBucket filteredPlansForHiddenInCloudBucket:0];

    filteredPlansForTransferableBucket = v15;
  }

  v16 = [filteredPlansForTransferableBucket arrayByAddingObjectsFromArray:plansCopy];

  v17 = [v16 arrayByAddingObjectsFromArray:setupPlansCopy];

  carrierNames = [v17 carrierNames];
  v55 = v17;
  if (![v17 count] && objc_msgSend(v14, "count"))
  {
    carrierNames2 = [v14 carrierNames];

    carrierNames = carrierNames2;
  }

  v56 = v14;
  v54 = carrierNames;
  v20 = [TSUtilities FormattedCarrierListFromSet:carrierNames];
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

  v59 = plansCopy;
  v27 = [plansCopy count];
  v57 = setupPlansCopy;
  if (v27 + [setupPlansCopy count])
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

  v58 = transferPlansCopy;
  filteredPlansForQRCodeBucket = [transferPlansCopy filteredPlansForQRCodeBucket];
  v33 = [MEMORY[0x277CBEB58] set];
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v34 = filteredPlansForQRCodeBucket;
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
        carrierName = [v39 carrierName];
        v41 = [carrierName length];

        if (v41)
        {
          carrierName2 = [v39 carrierName];
          [v33 addObject:carrierName2];
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

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v6 = MEMORY[0x277CCACA8];
  pathCopy = path;
  viewCopy = view;
  v9 = [v6 stringWithFormat:@"options%ld", objc_msgSend(pathCopy, "section")];
  v10 = [viewCopy dequeueReusableCellWithIdentifier:v9];

  if (!v10)
  {
    v10 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:3 reuseIdentifier:v9];
  }

  contentView = [v10 contentView];
  [contentView setLayoutMargins:{10.0, 0.0, 0.0, 0.0}];

  [v10 setAccessoryType:1];
  secondarySystemBackgroundColor = [MEMORY[0x277D75348] secondarySystemBackgroundColor];
  [v10 setBackgroundColor:secondarySystemBackgroundColor];

  textLabel = [v10 textLabel];
  [textLabel setLineBreakMode:0];

  textLabel2 = [v10 textLabel];
  [textLabel2 setNumberOfLines:0];

  textLabel3 = [v10 textLabel];
  [textLabel3 setTranslatesAutoresizingMaskIntoConstraints:0];

  v16 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76988]];
  textLabel4 = [v10 textLabel];
  [textLabel4 setFont:v16];

  detailTextLabel = [v10 detailTextLabel];
  [detailTextLabel setLineBreakMode:0];

  detailTextLabel2 = [v10 detailTextLabel];
  [detailTextLabel2 setNumberOfLines:0];

  detailTextLabel3 = [v10 detailTextLabel];
  [detailTextLabel3 setTranslatesAutoresizingMaskIntoConstraints:0];

  v21 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769D0]];
  detailTextLabel4 = [v10 detailTextLabel];
  [detailTextLabel4 setFont:v21];

  section = [pathCopy section];
  if (!section)
  {
    v24 = [MEMORY[0x277D755B8] systemImageNamed:@"iphone.and.arrow.forward"];
    textLabel5 = [v10 textLabel];
    [textLabel5 setText:self->_installBucketTitle];
    v27 = &OBJC_IVAR___TSMultiPlanIntermediateViewController__installBucketSubtitle;
    goto LABEL_7;
  }

  if (self->_showQrCodeOption)
  {
    v24 = [MEMORY[0x277D755B8] systemImageNamed:@"qrcode"];
    qrcodeBucketTitle = self->_qrcodeBucketTitle;
    textLabel5 = [v10 textLabel];
    [textLabel5 setText:qrcodeBucketTitle];
    v27 = &OBJC_IVAR___TSMultiPlanIntermediateViewController__qrcodeBucketSubtitle;
LABEL_7:

    v28 = *(&self->super.super.super.super.super.super.super.isa + *v27);
    detailTextLabel5 = [v10 detailTextLabel];
    [detailTextLabel5 setText:v28];

    goto LABEL_9;
  }

  v24 = 0;
LABEL_9:
  systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
  v31 = [v24 imageWithTintColor:systemBlueColor];

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
  imageView = [v10 imageView];
  [imageView setImage:v38];

  return v10;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  if ([pathCopy section])
  {
    if ([pathCopy section] != 1)
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
  delegate = [(TSMultiPlanIntermediateViewController *)self delegate];
  [delegate viewControllerDidComplete:self];

  tableView = [(OBTableWelcomeController *)self tableView];
  [tableView deselectRowAtIndexPath:pathCopy animated:1];
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  v4 = objc_alloc(MEMORY[0x277D75D18]);
  v5 = [v4 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];

  return v5;
}

- (void)_otherButtonTapped
{
  self->_isOtherButtonTapped = 1;
  delegate = [(TSMultiPlanIntermediateViewController *)self delegate];
  [delegate viewControllerDidComplete:self];
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
    delegate = [(TSMultiPlanIntermediateViewController *)self delegate];
    [delegate viewControllerDidComplete:self];
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