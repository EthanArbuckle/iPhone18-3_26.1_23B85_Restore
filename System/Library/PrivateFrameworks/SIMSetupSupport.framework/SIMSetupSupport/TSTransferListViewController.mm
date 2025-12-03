@interface TSTransferListViewController
- (BOOL)_isAnyPlanRequireLocationService;
- (BOOL)_isAnyTransferPlanWithDirectAuth;
- (BOOL)_isCarrierSetupItemSelected:(unint64_t)selected;
- (TSSIMSetupFlowDelegate)delegate;
- (TSTransferListViewController)initWithTransferItems:(id)items confirmCellularPlanTransfer:(BOOL)transfer isActivationPolicyMismatch:(BOOL)mismatch isDualeSIMCapabilityLoss:(BOOL)loss pendingInstallItems:(id)installItems carrierSetupItems:(id)setupItems showOtherOptions:(BOOL)options isStandaloneProximityFlow:(BOOL)self0 allowsMultiSelection:(BOOL)self1;
- (TSTransferListViewController)initWithTransferPlans:(id)plans confirmCellularPlanTransfer:(BOOL)transfer isActivationPolicyMismatch:(BOOL)mismatch isDualeSIMCapabilityLoss:(BOOL)loss pendingInstallItems:(id)items carrierSetupItems:(id)setupItems showOtherOptions:(BOOL)options isStandaloneProximityFlow:(BOOL)self0 allowsMultiSelection:(BOOL)self1;
- (id)_calculatePlanSelection;
- (id)getLocalizedStringIf:(id)if then:(id)then otherwise:(id)otherwise;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForFooterInSection:(int64_t)section;
- (void)_cancelTransferringPlan;
- (void)_continueButtonTapped;
- (void)_dismissSelf;
- (void)_installMultipleSelectedPlans;
- (void)_installSelectedPlans;
- (void)_launchDirectAuthFlow:(id)flow;
- (void)_maybeDisplayPhysicalPlanConversionAlert:(BOOL)alert phoneNumber:(id)number completion:(id)completion;
- (void)_maybeUpdateTableView;
- (void)_otherButtonTapped;
- (void)_startInstallMultiplePlans:(id)plans transferPlans:(id)transferPlans andCarrierSetupItems:(id)items;
- (void)_startPendingInstall:(id)install;
- (void)_startPlanTransfer:(id)transfer withDeviceID:(id)d;
- (void)_transferConsentOnSource;
- (void)_viewWillAppear;
- (void)tableView:(id)view didDeselectRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayFooterView:(id)footerView forSection:(int64_t)section;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation TSTransferListViewController

- (TSTransferListViewController)initWithTransferItems:(id)items confirmCellularPlanTransfer:(BOOL)transfer isActivationPolicyMismatch:(BOOL)mismatch isDualeSIMCapabilityLoss:(BOOL)loss pendingInstallItems:(id)installItems carrierSetupItems:(id)setupItems showOtherOptions:(BOOL)options isStandaloneProximityFlow:(BOOL)self0 allowsMultiSelection:(BOOL)self1
{
  mismatchCopy = mismatch;
  lossCopy = loss;
  transferCopy = transfer;
  v38 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  installItemsCopy = installItems;
  setupItemsCopy = setupItems;
  array = [MEMORY[0x277CBEB18] array];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v17 = itemsCopy;
  v18 = [v17 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v34;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v34 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v33 + 1) + 8 * i);
        v23 = [v22 valueForKey:@"planItem"];

        if (v23)
        {
          v24 = [v22 objectForKeyedSubscript:@"planItem"];
          [array addObject:v24];
        }
      }

      v19 = [v17 countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v19);
  }

  BYTE2(v28) = selection;
  LOWORD(v28) = __PAIR16__(flow, options);
  v25 = [TSTransferListViewController initWithTransferPlans:"initWithTransferPlans:confirmCellularPlanTransfer:isActivationPolicyMismatch:isDualeSIMCapabilityLoss:pendingInstallItems:carrierSetupItems:showOtherOptions:isStandaloneProximityFlow:allowsMultiSelection:" confirmCellularPlanTransfer:array isActivationPolicyMismatch:transferCopy isDualeSIMCapabilityLoss:mismatchCopy pendingInstallItems:lossCopy carrierSetupItems:installItemsCopy showOtherOptions:setupItemsCopy isStandaloneProximityFlow:v28 allowsMultiSelection:?];

  v26 = *MEMORY[0x277D85DE8];
  return v25;
}

- (TSTransferListViewController)initWithTransferPlans:(id)plans confirmCellularPlanTransfer:(BOOL)transfer isActivationPolicyMismatch:(BOOL)mismatch isDualeSIMCapabilityLoss:(BOOL)loss pendingInstallItems:(id)items carrierSetupItems:(id)setupItems showOtherOptions:(BOOL)options isStandaloneProximityFlow:(BOOL)self0 allowsMultiSelection:(BOOL)self1
{
  v69 = *MEMORY[0x277D85DE8];
  plansCopy = plans;
  itemsCopy = items;
  itemsCopy2 = items;
  setupItemsCopy = setupItems;
  v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v20 = [v19 localizedStringForKey:@"SET_UP_CELLULAR" value:&stru_28753DF48 table:@"Localizable"];

  mismatchCopy = mismatch;
  lossCopy = loss;
  transferCopy = transfer;
  setupItemsCopy2 = setupItems;
  if (selection && !+[TSUtilities isPad])
  {
    v21 = itemsCopy2;
    v22 = !+[TSUtilities isGreenTeaCapable];
  }

  else
  {
    v21 = itemsCopy2;
    LOBYTE(v22) = 0;
  }

  self->_allowMultiPlanSelection = v22;
  obj = [plansCopy sortedArrayUsingComparator:&__block_literal_global_8];
  v23 = obj;

  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v24 = v23;
  v25 = [v24 countByEnumeratingWithState:&v64 objects:v68 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v65;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v65 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = *(*(&v64 + 1) + 8 * i);
        if ([v29 isPhysical])
        {
          [v29 isTransferablePlan];
        }

        plan = [v29 plan];
        isDataActive = [plan isDataActive];

        if (!isDataActive)
        {
          self->_allowMultiPlanSelection = 0;
        }
      }

      v26 = [v24 countByEnumeratingWithState:&v64 objects:v68 count:16];
    }

    while (v26);
  }

  v32 = v21;
  if ([v24 count])
  {
    plans = [v21 plans];
    v34 = [plans count];

    if (v34)
    {
      plans2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v36 = [plans2 localizedStringForKey:@"TRANSFER_PLAN_LIST_DETAIL_BOTH" value:&stru_28753DF48 table:@"Localizable"];
      LOBYTE(v37) = 0;
LABEL_26:

      v39 = v20;
      goto LABEL_27;
    }
  }

  v37 = [v24 count];
  v38 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  plans2 = v38;
  if (!v37)
  {
    v36 = [v38 localizedStringForKey:@"TRANSFER_PLAN_LIST_DETAIL_NEW" value:&stru_28753DF48 table:@"Localizable"];
    goto LABEL_26;
  }

  v39 = [v38 localizedStringForKey:@"MULTI_TRANSFER_TITLE" value:&stru_28753DF48 table:@"Localizable"];

  v40 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v36 = [v40 localizedStringForKey:@"TRANSFER_PLAN_LIST_DETAIL_TRANSFER" value:&stru_28753DF48 table:@"Localizable"];

  plans2 = [setupItemsCopy plans];
  if ([plans2 count])
  {
    LOBYTE(v37) = 0;
LABEL_25:
    v20 = v39;
    goto LABEL_26;
  }

  v41 = [v24 count];

  if (v41 == 1)
  {
    plans2 = [v24 objectAtIndexedSubscript:0];
    LOBYTE(v37) = [plans2 isPhysical];
    goto LABEL_25;
  }

  LOBYTE(v37) = 0;
LABEL_27:
  v63.receiver = self;
  v63.super_class = TSTransferListViewController;
  v42 = [(OBTableWelcomeController *)&v63 initWithTitle:v39 detailText:v36 symbolName:@"antenna.radiowaves.left.and.right" adoptTableViewScrollView:1, obj];
  if (v42)
  {
    if (_os_feature_enabled_impl())
    {
      v43 = objc_alloc(MEMORY[0x277CC37B0]);
      v44 = [v43 initWithQueue:MEMORY[0x277D85CD0]];
      ctClient = v42->_ctClient;
      v42->_ctClient = v44;
    }

    v42->_inBuddy = +[TSUtilities inBuddy];
    v46 = objc_opt_new();
    chosenUseIndexPaths = v42->_chosenUseIndexPaths;
    v42->_chosenUseIndexPaths = v46;

    objc_storeStrong(&v42->_transferPlans, obja);
    objc_storeStrong(&v42->_pendingInstallItems, itemsCopy);
    objc_storeStrong(&v42->_carrierSetupItems, setupItemsCopy2);
    v42->_receivedPendingInstallItems = 1;
    v42->_receivedTransferItems = 1;
    v42->_continueButtonTappedOnce = 0;
    v42->_confirmCellularPlanTransfer = transferCopy;
    v42->_isActivationPolicyMismatch = mismatchCopy;
    v42->_isDualeSIMCapabilityLoss = lossCopy;
    v42->_isSinglePhysicalSIMTransfer = v37;
    plans3 = [(CTDisplayPlanList *)v42->_pendingInstallItems plans];
    v49 = [plans3 count];
    plans4 = [(CTDisplayPlanList *)v42->_carrierSetupItems plans];
    v42->_numNonRemotePlanItems = [plans4 count] + v49;

    v42->_installingTransferPlan = 0;
    v42->_isStandaloneProximityFlow = flow;
    v42->_backToSelfOption = 0;
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v42 selector:sel__transferConsentOnSource name:@"transfer.consent.on.source" object:0];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:v42 selector:sel__cancelTransferringPlan name:@"ss.user.canceled" object:0];
  }

  v42->_showOtherOptions = options;

  v53 = *MEMORY[0x277D85DE8];
  return v42;
}

uint64_t __236__TSTransferListViewController_initWithTransferPlans_confirmCellularPlanTransfer_isActivationPolicyMismatch_isDualeSIMCapabilityLoss_pendingInstallItems_carrierSetupItems_showOtherOptions_isStandaloneProximityFlow_allowsMultiSelection___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 isTransferablePlan];
  v6 = [v4 isTransferablePlan];

  if ((v5 | v6 ^ 1))
  {
    return ((v5 & (v6 ^ 1u)) << 63) >> 63;
  }

  else
  {
    return 1;
  }
}

- (void)viewDidLoad
{
  v33.receiver = self;
  v33.super_class = TSTransferListViewController;
  [(TSOBTableWelcomeController *)&v33 viewDidLoad];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel__updateTrayButtonText_ name:@"esim.install.state.changed" object:0];

  v4 = +[SSOBBoldTrayButton boldButton];
  continueButton = self->_continueButton;
  self->_continueButton = v4;

  [(SSOBBoldTrayButton *)self->_continueButton addTarget:self action:sel__continueButtonTapped forControlEvents:64];
  isSinglePhysicalSIMTransfer = self->_isSinglePhysicalSIMTransfer;
  v7 = self->_continueButton;
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = v8;
  if (isSinglePhysicalSIMTransfer)
  {
    v10 = @"CONVERT_TO_ESIM";
  }

  else
  {
    v10 = @"CONTINUE";
  }

  v11 = [v8 localizedStringForKey:v10 value:&stru_28753DF48 table:@"Localizable"];
  [(SSOBBoldTrayButton *)v7 setTitle:v11 forState:0];

  [(OBBoldTrayButton *)self->_continueButton setEnabled:0];
  buttonTray = [(TSTransferListViewController *)self buttonTray];
  [buttonTray addButton:self->_continueButton];

  v13 = objc_alloc(MEMORY[0x277D75B40]);
  v14 = [v13 initWithFrame:2 style:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [(OBTableWelcomeController *)self setTableView:v14];

  tableView = [(OBTableWelcomeController *)self tableView];
  [tableView setTranslatesAutoresizingMaskIntoConstraints:0];

  tableView2 = [(OBTableWelcomeController *)self tableView];
  [tableView2 setRowHeight:*MEMORY[0x277D76F30]];

  tableView3 = [(OBTableWelcomeController *)self tableView];
  [tableView3 setEstimatedRowHeight:1.0];

  v18 = _os_feature_enabled_impl() && self->_allowMultiPlanSelection && ![(TSTransferListViewController *)self _isAnyTransferPlanWithDirectAuth];
  tableView4 = [(OBTableWelcomeController *)self tableView];
  [tableView4 setAllowsMultipleSelection:v18];

  tableView5 = [(OBTableWelcomeController *)self tableView];
  [tableView5 setScrollEnabled:1];

  tableView6 = [(OBTableWelcomeController *)self tableView];
  [tableView6 setShowsVerticalScrollIndicator:0];

  tableView7 = [(OBTableWelcomeController *)self tableView];
  clearColor = [MEMORY[0x277D75348] clearColor];
  [tableView7 setBackgroundColor:clearColor];

  tableView8 = [(OBTableWelcomeController *)self tableView];
  [tableView8 setDataSource:self];

  tableView9 = [(OBTableWelcomeController *)self tableView];
  [tableView9 setDelegate:self];

  if (!self->_inBuddy && self->_showOtherOptions)
  {
    linkButton = [MEMORY[0x277D37650] linkButton];
    v27 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v28 = [v27 localizedStringForKey:@"OTHER_OPTIONS" value:&stru_28753DF48 table:@"Localizable"];
    [linkButton setTitle:v28 forState:0];

    [linkButton addTarget:self action:sel__otherButtonTapped forControlEvents:64];
    buttonTray2 = [(TSTransferListViewController *)self buttonTray];
    [buttonTray2 addButton:linkButton];
  }

  tableView10 = [(OBTableWelcomeController *)self tableView];
  [tableView10 reloadData];

  if (+[TSUtilities inBuddy])
  {
    WeakRetained = [(TSTransferListViewController *)self navigationController];
    navigationItem = [WeakRetained navigationItem];
    [navigationItem setHidesBackButton:0];

LABEL_17:
    return;
  }

  if ((!+[TSUtilities inBuddy]|| self->_isStandaloneProximityFlow) && ![TSUtilities isBackAllowed:self])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained setCancelNavigationBarItems:self];
    goto LABEL_17;
  }
}

- (void)_viewWillAppear
{
  if (self->_inBuddy)
  {
    [(OBBoldTrayButton *)self->_continueButton setEnabled:self->_continueButtonTappedOnce];
    continueButton = self->_continueButton;
    continueButtonTappedOnce = self->_continueButtonTappedOnce;
LABEL_10:

    [(SSOBBoldTrayButton *)continueButton setUserInteractionEnabled:continueButtonTappedOnce];
    return;
  }

  tableView = [(OBTableWelcomeController *)self tableView];
  indexPathsForSelectedRows = [tableView indexPathsForSelectedRows];
  if ([indexPathsForSelectedRows count])
  {
    customizeSpinner = [(TSTransferListViewController *)self customizeSpinner];

    if (customizeSpinner)
    {
      return;
    }

    [(OBBoldTrayButton *)self->_continueButton setEnabled:1];
    continueButton = self->_continueButton;
    continueButtonTappedOnce = 1;
    goto LABEL_10;
  }
}

- (void)viewDidLayoutSubviews
{
  view = [(TSTransferListViewController *)self view];
  [view layoutIfNeeded];

  v4.receiver = self;
  v4.super_class = TSTransferListViewController;
  [(OBTableWelcomeController *)&v4 viewDidLayoutSubviews];
}

- (id)tableView:(id)view titleForFooterInSection:(int64_t)section
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_new();
  filteredPlansForTransferableBucket = [(NSArray *)self->_transferPlans filteredPlansForTransferableBucket];
  v7 = [filteredPlansForTransferableBucket filteredPlansForHiddenInCloudBucket:1];
  if ([v7 count] && -[UIViewController isCloudFlow](self, "isCloudFlow"))
  {
    v29 = filteredPlansForTransferableBucket;
    v8 = [MEMORY[0x277CBEB58] set];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v28 = v7;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v31;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v31 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v30 + 1) + 8 * i);
          carrierName = [v14 carrierName];
          v16 = [carrierName length];

          if (v16)
          {
            carrierName2 = [v14 carrierName];
            [v8 addObject:carrierName2];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v11);
    }

    v18 = [TSUtilities FormattedCarrierListFromSet:v8];
    v19 = +[TSUtilities inBuddy];
    v20 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v21 = v20;
    if (v19)
    {
      v22 = @"TRANSFER_PLAN_LABELS_SECTION_FOOTER_USE_TRANSFER_FROM_NEARBY_%@_BUDDY";
    }

    else
    {
      v22 = @"TRANSFER_PLAN_LABELS_SECTION_FOOTER_USE_TRANSFER_FROM_NEARBY_%@";
    }

    v23 = [v20 localizedStringForKey:v22 value:&stru_28753DF48 table:@"Localizable"];

    v24 = [MEMORY[0x277CCACA8] stringWithFormat:v23, v18];
    [v5 appendString:v24];

    v7 = v28;
    filteredPlansForTransferableBucket = v29;
  }

  getCombinedFooterForNonTransferablePlans = [(NSArray *)self->_transferPlans getCombinedFooterForNonTransferablePlans];
  if ([getCombinedFooterForNonTransferablePlans length])
  {
    if ([v5 length])
    {
      [v5 appendString:@"\n\n"];
    }

    [v5 appendString:getCombinedFooterForNonTransferablePlans];
  }

  v26 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)tableView:(id)view willDisplayFooterView:(id)footerView forSection:(int64_t)section
{
  textLabel = [footerView textLabel];
  systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
  [textLabel setTextColor:systemGrayColor];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = MEMORY[0x277CCACA8];
  viewCopy = view;
  v9 = [v7 stringWithFormat:@"plan%ld", objc_msgSend(pathCopy, "row")];
  v10 = [viewCopy dequeueReusableCellWithIdentifier:v9];

  if (!v10)
  {
    v10 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:3 reuseIdentifier:v9];
  }

  defaultConfig = [v10 defaultConfig];
  tableView = [(OBTableWelcomeController *)self tableView];
  indexPathsForSelectedRows = [tableView indexPathsForSelectedRows];
  v14 = [indexPathsForSelectedRows containsObject:pathCopy];

  if (v14)
  {
    [v10 setAccessoryType:3];
  }

  if ([(NSMutableArray *)self->_chosenUseIndexPaths containsObject:pathCopy])
  {
    [v10 setAccessoryType:3];
    [v10 setUserInteractionEnabled:0];
  }

  v15 = [pathCopy row];
  plans = [(CTDisplayPlanList *)self->_pendingInstallItems plans];
  v17 = [plans count];

  plans2 = [(CTDisplayPlanList *)self->_pendingInstallItems plans];
  v19 = plans2;
  if (v15 < v17)
  {
    v20 = [plans2 objectAtIndexedSubscript:v15];

    v21 = MEMORY[0x277D755B8];
    imageName = [v20 imageName];
    v23 = [v21 systemImageNamed:imageName];
    [defaultConfig setImage:v23];

    carrierName = [v20 carrierName];

    if (carrierName)
    {
      carrierName2 = [v20 carrierName];
      [defaultConfig setText:carrierName2];
    }

    else
    {
      carrierName2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v45 = [carrierName2 localizedStringForKey:@"NEW_CELLULAR_PLAN_NO_CARRIER_TITLE" value:&stru_28753DF48 table:@"Localizable"];
      [defaultConfig setText:v45];
    }

    v35 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v36 = v35;
    v37 = @"ESIM_AVAILABLE_TO_INSTALL";
    goto LABEL_16;
  }

  v26 = v15 - [plans2 count];

  plans3 = [(CTDisplayPlanList *)self->_carrierSetupItems plans];
  v28 = [plans3 count];

  plans4 = [(CTDisplayPlanList *)self->_carrierSetupItems plans];
  v30 = plans4;
  if (v26 < v28)
  {
    v20 = [plans4 objectAtIndexedSubscript:v26];

    v31 = MEMORY[0x277D755B8];
    imageName2 = [v20 imageName];
    v33 = [v31 systemImageNamed:imageName2];
    [defaultConfig setImage:v33];

    carrierName3 = [v20 carrierName];
    [defaultConfig setText:carrierName3];

    v35 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v36 = v35;
    v37 = @"CELLULAR_PLAN_DETAIL";
LABEL_16:
    v46 = [v35 localizedStringForKey:v37 value:&stru_28753DF48 table:@"Localizable"];
    [defaultConfig setSecondaryText:v46];

    [v10 setContentConfiguration:defaultConfig];
    v47 = v10;
    goto LABEL_49;
  }

  v38 = v26 - [plans4 count];

  v92 = v38;
  v20 = [(NSArray *)self->_transferPlans objectAtIndex:v38];
  phoneNumber = [v20 phoneNumber];
  formattedPhoneNumber = [phoneNumber formattedPhoneNumber];

  v41 = MEMORY[0x277D755B8];
  imageName3 = [v20 imageName];
  v43 = [v41 systemImageNamed:imageName3];
  [defaultConfig setImage:v43];

  v90 = formattedPhoneNumber;
  v91 = v9;
  if ([formattedPhoneNumber length])
  {
    v40FormattedPhoneNumber = [formattedPhoneNumber formattedPhoneNumber];
LABEL_18:
    [defaultConfig setText:v40FormattedPhoneNumber];
    goto LABEL_19;
  }

  v40FormattedPhoneNumber = [v20 carrierName];
  if ([v40FormattedPhoneNumber length])
  {
    goto LABEL_18;
  }

  v84 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v85 = [v84 localizedStringForKey:@"TRANSFER_PLAN_ITEM_TITLE_NO_PHONENUMBER" value:&stru_28753DF48 table:@"Localizable"];
  [defaultConfig setText:v85];

LABEL_19:
  v48 = [(NSArray *)self->_transferPlans objectAtIndex:v92];
  deviceName = [v48 deviceName];

  label = [v20 label];
  transferCapability = [v20 transferCapability];
  v51 = transferCapability;
  v52 = 0x277CCA000uLL;
  if (transferCapability > 0x14)
  {
    goto LABEL_30;
  }

  if (((1 << transferCapability) & 0x1FFF17) == 0)
  {
    v62 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    [v62 localizedStringForKey:@"TRANSFER_PLAN_ITEM_DETAIL_ALREADY_TRANSFERRED" value:&stru_28753DF48 table:@"Localizable"];
    v64 = v63 = deviceName;
    [defaultConfig setSecondaryText:v64];

    deviceName = v63;
    [v10 setAccessoryType:3];
    grayColor = [MEMORY[0x277D75348] grayColor];
    [v10 setTintColor:grayColor];

    [v10 setSelectionStyle:0];
    [v10 setUserInteractionEnabled:0];
    goto LABEL_30;
  }

  if ([deviceName length] && objc_msgSend(label, "length"))
  {
    v88 = MEMORY[0x277CCACA8];
    v53 = deviceName;
    v54 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v55 = [v54 localizedStringForKey:@"TRANSFER_PLAN_ITEM_DETAIL_WITH_LABEL_%@_%@" value:&stru_28753DF48 table:@"Localizable"];
    v56 = [v88 stringWithFormat:v55, label, v53];
    [defaultConfig setSecondaryText:v56];

    v52 = 0x277CCA000;
    deviceName = v53;
    goto LABEL_30;
  }

  if ([deviceName length])
  {
    v57 = MEMORY[0x277CCACA8];
    v58 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    [v58 localizedStringForKey:@"TRANSFER_PLAN_ITEM_DETAIL_%@" value:&stru_28753DF48 table:@"Localizable"];
    v60 = v59 = deviceName;
    v61 = [v57 stringWithFormat:v60, v59];
    [defaultConfig setSecondaryText:v61];

    deviceName = v59;
LABEL_29:

    v52 = 0x277CCA000uLL;
    goto LABEL_30;
  }

  if ([label length])
  {
    v66 = MEMORY[0x277CCACA8];
    v58 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    [v58 localizedStringForKey:@"TRANSFER_PLAN_ITEM_DETAIL_WITH_LABEL_NO_DEVICE_NAME_%@" value:&stru_28753DF48 table:@"Localizable"];
    v67 = v89 = deviceName;
    v68 = [v66 stringWithFormat:v67, label];
    [defaultConfig setSecondaryText:v68];

    deviceName = v89;
    goto LABEL_29;
  }

  v86 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v87 = [v86 localizedStringForKey:@"TRANSFER_PLAN_ITEM_DETAIL_NO_DEVICE_NAME" value:&stru_28753DF48 table:@"Localizable"];
  [defaultConfig setSecondaryText:v87];

  v52 = 0x277CCA000uLL;
LABEL_30:
  if (+[TSUtilities isPad])
  {
    carrierName4 = [v20 carrierName];
    [defaultConfig setText:carrierName4];

    [defaultConfig setSecondaryText:0];
    if ([deviceName length])
    {
      v70 = *(v52 + 3240);
      v71 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      [v71 localizedStringForKey:@"USED_ON_%@" value:&stru_28753DF48 table:@"Localizable"];
      v73 = v72 = deviceName;
      v74 = [v70 stringWithFormat:v73, v72];
      [defaultConfig setSecondaryText:v74];

      deviceName = v72;
    }
  }

  if (([v20 isTransferIneligiblePlan] & 1) != 0 || v51 == 8 && self->_inBuddy)
  {
    [v10 setUserInteractionEnabled:0];
    if ([v20 isRegulatoryRestrictedPlan])
    {
      isRegulatoryRestrictedForCurrentLocationPlan = [v20 isRegulatoryRestrictedForCurrentLocationPlan];
      v76 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      if (isRegulatoryRestrictedForCurrentLocationPlan)
      {
        v77 = @"TRANSFER_PLAN_ITEM_DETAIL_REGULATORY_RESTRICTED_FOR_CURRENT_LOCATION";
      }

      else
      {
        v77 = @"TRANSFER_PLAN_ITEM_DETAIL_REGULATORY_RESTRICTED";
      }
    }

    else
    {
      transferCapability2 = [v20 transferCapability];
      v76 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      if (transferCapability2 == 10)
      {
        v77 = @"TRANSFER_PLAN_ITEM_DETAIL_UNAVAILABLE";
      }

      else
      {
        v77 = @"TRANSFER_PLAN_ITEM_DETAIL_NOT_SUPPORTED";
      }
    }

    v79 = [v76 localizedStringForKey:v77 value:&stru_28753DF48 table:@"Localizable"];
    [defaultConfig setSecondaryText:v79];

    [v10 setUserInteractionEnabled:0];
  }

  if (-[UIViewController isCloudFlow](self, "isCloudFlow") && [v20 isTransferablePlan] && objc_msgSend(v20, "isPlanHiddenRequiredForCloudFlow"))
  {
    v80 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v81 = [v80 localizedStringForKey:@"TRANSFER_PLAN_ITEM_DETAIL_UNAVAILABLE" value:&stru_28753DF48 table:@"Localizable"];
    [defaultConfig setSecondaryText:v81];

    [v10 setUserInteractionEnabled:0];
  }

  [v10 setContentConfiguration:defaultConfig];
  v82 = v10;

  v9 = v91;
LABEL_49:

  return v10;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  continueButton = self->_continueButton;
  pathCopy = path;
  viewCopy = view;
  [(OBBoldTrayButton *)continueButton setEnabled:1];
  [(SSOBBoldTrayButton *)self->_continueButton setUserInteractionEnabled:1];
  v9 = [viewCopy cellForRowAtIndexPath:pathCopy];

  [v9 setAccessoryType:3];
}

- (void)tableView:(id)view didDeselectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  indexPathsForSelectedRows = [viewCopy indexPathsForSelectedRows];
  v8 = [indexPathsForSelectedRows count];

  if (!v8)
  {
    [(OBBoldTrayButton *)self->_continueButton setEnabled:0];
    [(SSOBBoldTrayButton *)self->_continueButton setUserInteractionEnabled:0];
  }

  v9 = [viewCopy cellForRowAtIndexPath:pathCopy];
  [v9 setAccessoryType:0];
}

- (void)_otherButtonTapped
{
  filteredPlansForTransferableBucket = [(NSArray *)self->_transferPlans filteredPlansForTransferableBucket];
  v15 = +[TSCoreTelephonyClientCache sharedInstance];
  v14 = objc_alloc(MEMORY[0x277CC3720]);
  v13 = +[TSUtilities inBuddy];
  v12 = [filteredPlansForTransferableBucket count];
  plans = [(CTDisplayPlanList *)self->_pendingInstallItems plans];
  v4 = [plans count];
  v5 = [TSUtilities odaPlans:self->_transferPlans];
  v6 = [TSUtilities transferablePlanCarriers:filteredPlansForTransferableBucket];
  plans2 = [(CTDisplayPlanList *)self->_pendingInstallItems plans];
  v8 = [TSUtilities alsPlanCarriers:plans2];
  v9 = [TSUtilities odaPlanCarriers:self->_transferPlans];
  v10 = [v14 initWithInBuddy:v13 transferablePlans:v12 selectedTransferablePlans:0 alsPlans:v4 selectedAlsPlans:0 odaPlans:v5 transferPlanCarriers:v6 selectedTransferPlanCarriers:&stru_28753DF48 alsPlanCarriers:v8 selectedAlsPlanCarriers:&stru_28753DF48 odaPlanCarriers:v9 selectedOdaPlanCarriers:&stru_28753DF48 sourceDevicesCount:+[TSUtilities sourceDevicesCount:](TSUtilities selectedSourceDevicesCount:{"sourceDevicesCount:", self->_transferPlans), 0}];
  [v15 submitSimSetupUsage:v10];

  self->_isOtherButtonTapped = 1;
  delegate = [(TSTransferListViewController *)self delegate];
  [delegate viewControllerDidComplete:self];
}

- (id)_calculatePlanSelection
{
  v61 = *MEMORY[0x277D85DE8];
  filteredPlansForTransferableBucket = [(NSArray *)self->_transferPlans filteredPlansForTransferableBucket];
  filteredPlansForTransferableBucket2 = [(NSArray *)self->_transferPlans filteredPlansForTransferableBucket];
  v49 = [filteredPlansForTransferableBucket2 count];

  plans = [(CTDisplayPlanList *)self->_pendingInstallItems plans];
  v47 = [plans count];

  v46 = [TSUtilities odaPlans:self->_transferPlans];
  v44 = [TSUtilities sourceDevicesCount:self->_transferPlans];
  v50 = filteredPlansForTransferableBucket;
  v48 = [TSUtilities transferablePlanCarriers:filteredPlansForTransferableBucket];
  plans2 = [(CTDisplayPlanList *)self->_pendingInstallItems plans];
  v45 = [TSUtilities alsPlanCarriers:plans2];

  v43 = [TSUtilities odaPlanCarriers:self->_transferPlans];
  v51 = [MEMORY[0x277CBEB58] set];
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  tableView = [(OBTableWelcomeController *)self tableView];
  indexPathsForSelectedRows = [tableView indexPathsForSelectedRows];

  v9 = [indexPathsForSelectedRows countByEnumeratingWithState:&v56 objects:v60 count:16];
  if (!v9)
  {
    v55 = 0;
    v12 = &stru_28753DF48;
    v53 = 0;
    v54 = &stru_28753DF48;
    v52 = &stru_28753DF48;
    goto LABEL_19;
  }

  v10 = v9;
  v55 = 0;
  v11 = *v57;
  v12 = &stru_28753DF48;
  v53 = 0;
  v54 = &stru_28753DF48;
  v52 = &stru_28753DF48;
  do
  {
    v13 = 0;
    do
    {
      if (*v57 != v11)
      {
        objc_enumerationMutation(indexPathsForSelectedRows);
      }

      v14 = *(*(&v56 + 1) + 8 * v13);
      [(NSMutableArray *)self->_chosenUseIndexPaths addObject:v14];
      v15 = [v14 row];
      plans3 = [(CTDisplayPlanList *)self->_pendingInstallItems plans];
      v17 = [plans3 count];

      if (v15 < v17)
      {
        ++v55;
        plans4 = [(CTDisplayPlanList *)self->_pendingInstallItems plans];
        v19 = [plans4 objectAtIndexedSubscript:v15];

        carrierName = [v19 carrierName];
        plan = [(__CFString *)v12 stringByAppendingString:carrierName];

        v12 = [plan stringByAppendingString:@"_"];
LABEL_12:

        goto LABEL_13;
      }

      plans5 = [(CTDisplayPlanList *)self->_pendingInstallItems plans];
      v23 = v15 - [plans5 count];

      plans6 = [(CTDisplayPlanList *)self->_carrierSetupItems plans];
      v25 = [plans6 count];

      plans7 = [(CTDisplayPlanList *)self->_carrierSetupItems plans];
      v27 = plans7;
      if (v23 < v25)
      {
        v19 = [plans7 objectAtIndexedSubscript:v23];

        carrierName2 = [v19 carrierName];
        plan = [(__CFString *)v54 stringByAppendingString:carrierName2];

        v54 = [plan stringByAppendingString:@"_"];
        goto LABEL_12;
      }

      v29 = v23 - [plans7 count];

      v19 = [(NSArray *)self->_transferPlans objectAtIndex:v29];
      if ([v19 isTransferablePlan])
      {
        ++v53;
        carrierName3 = [v19 carrierName];
        v31 = [(__CFString *)v52 stringByAppendingString:carrierName3];

        v52 = [v31 stringByAppendingString:@"_"];

        plan = [v19 plan];
        deviceID = [plan deviceID];
        [v51 addObject:deviceID];

        goto LABEL_12;
      }

LABEL_13:

      ++v13;
    }

    while (v10 != v13);
    v33 = [indexPathsForSelectedRows countByEnumeratingWithState:&v56 objects:v60 count:16];
    v10 = v33;
  }

  while (v33);
LABEL_19:

  v34 = [v51 count];
  if ([(__CFString *)v12 length])
  {
    v35 = [(__CFString *)v12 substringToIndex:[(__CFString *)v12 length]- 1];

    v12 = v35;
  }

  v36 = v52;
  v37 = v54;
  if ([(__CFString *)v52 length])
  {
    v38 = [(__CFString *)v52 substringToIndex:[(__CFString *)v52 length]- 1];

    v36 = v38;
  }

  if ([(__CFString *)v54 length])
  {
    v39 = [(__CFString *)v54 substringToIndex:[(__CFString *)v54 length]- 1];

    v37 = v39;
  }

  v40 = [objc_alloc(MEMORY[0x277CC3720]) initWithInBuddy:self->_inBuddy transferablePlans:v49 selectedTransferablePlans:v53 alsPlans:v47 selectedAlsPlans:v55 odaPlans:v46 transferPlanCarriers:v48 selectedTransferPlanCarriers:v36 alsPlanCarriers:v45 selectedAlsPlanCarriers:v12 odaPlanCarriers:v43 selectedOdaPlanCarriers:v37 sourceDevicesCount:v44 selectedSourceDevicesCount:v34];

  v41 = *MEMORY[0x277D85DE8];

  return v40;
}

- (void)_continueButtonTapped
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = _TSLogDomain();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    tableView = [(OBTableWelcomeController *)self tableView];
    indexPathsForSelectedRows = [tableView indexPathsForSelectedRows];
    *buf = 138412546;
    v37 = indexPathsForSelectedRows;
    v38 = 2080;
    v39 = "[TSTransferListViewController _continueButtonTapped]";
    _os_log_impl(&dword_262AA8000, v3, OS_LOG_TYPE_DEFAULT, "selected item row: %@ @%s", buf, 0x16u);
  }

  if (!self->_continueButtonTappedOnce)
  {
    v6 = +[TSCoreTelephonyClientCache sharedInstance];
    _calculatePlanSelection = [(TSTransferListViewController *)self _calculatePlanSelection];
    [v6 submitSimSetupUsage:_calculatePlanSelection];

    self->_continueButtonTappedOnce = 1;
    if (self->_isDualeSIMCapabilityLoss)
    {
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      tableView2 = [(OBTableWelcomeController *)self tableView];
      indexPathsForSelectedRows2 = [tableView2 indexPathsForSelectedRows];

      v10 = [indexPathsForSelectedRows2 countByEnumeratingWithState:&v31 objects:v35 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v32;
        while (2)
        {
          v13 = 0;
          do
          {
            if (*v32 != v12)
            {
              objc_enumerationMutation(indexPathsForSelectedRows2);
            }

            if ([*(*(&v31 + 1) + 8 * v13) row] >= self->_numNonRemotePlanItems)
            {

              v14 = MEMORY[0x277D75110];
              v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
              v16 = [v15 localizedStringForKey:@"DUAL_ESIM_LOSS_TITLE" value:&stru_28753DF48 table:@"Localizable"];
              v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
              v18 = [v17 localizedStringForKey:@"DUAL_ESIM_LOSS_MESSAGE" value:&stru_28753DF48 table:@"Localizable"];
              v19 = [v14 alertControllerWithTitle:v16 message:v18 preferredStyle:1];

              v20 = MEMORY[0x277D750F8];
              v21 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
              v22 = [v21 localizedStringForKey:@"CANCEL" value:&stru_28753DF48 table:@"Localizable"];
              v30[0] = MEMORY[0x277D85DD0];
              v30[1] = 3221225472;
              v30[2] = __53__TSTransferListViewController__continueButtonTapped__block_invoke;
              v30[3] = &unk_279B44B38;
              v30[4] = self;
              v23 = [v20 actionWithTitle:v22 style:1 handler:v30];
              [v19 addAction:v23];

              v24 = MEMORY[0x277D750F8];
              v25 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
              v26 = [v25 localizedStringForKey:@"CONTINUE" value:&stru_28753DF48 table:@"Localizable"];
              v29[0] = MEMORY[0x277D85DD0];
              v29[1] = 3221225472;
              v29[2] = __53__TSTransferListViewController__continueButtonTapped__block_invoke_2;
              v29[3] = &unk_279B44B38;
              v29[4] = self;
              v27 = [v24 actionWithTitle:v26 style:0 handler:v29];
              [v19 addAction:v27];

              [(TSTransferListViewController *)self presentViewController:v19 animated:1 completion:0];
              goto LABEL_18;
            }

            ++v13;
          }

          while (v11 != v13);
          v11 = [indexPathsForSelectedRows2 countByEnumeratingWithState:&v31 objects:v35 count:16];
          if (v11)
          {
            continue;
          }

          break;
        }
      }
    }

    if (_os_feature_enabled_impl())
    {
      [(TSTransferListViewController *)self _installMultipleSelectedPlans];
    }

    else
    {
      [(TSTransferListViewController *)self _installSelectedPlans];
    }
  }

LABEL_18:
  v28 = *MEMORY[0x277D85DE8];
}

void __53__TSTransferListViewController__continueButtonTapped__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) delegate];
  [v1 userDidTapCancel];
}

uint64_t __53__TSTransferListViewController__continueButtonTapped__block_invoke_2(uint64_t a1)
{
  v2 = _os_feature_enabled_impl();
  v3 = *(a1 + 32);
  if (v2)
  {

    return [v3 _installMultipleSelectedPlans];
  }

  else
  {

    return [v3 _installSelectedPlans];
  }
}

- (void)_installSelectedPlans
{
  v65 = *MEMORY[0x277D85DE8];
  v44 = objc_opt_new();
  v46 = objc_opt_new();
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  tableView = [(OBTableWelcomeController *)self tableView];
  obj = [tableView indexPathsForSelectedRows];

  v4 = [obj countByEnumeratingWithState:&v57 objects:v64 count:16];
  if (v4)
  {
    v45 = 0;
    v6 = *v58;
    *&v5 = 136315138;
    v43 = v5;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v58 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v57 + 1) + 8 * i);
        [(NSMutableArray *)self->_chosenUseIndexPaths addObject:v8, v43];
        v9 = [v8 row];
        plans = [(CTDisplayPlanList *)self->_pendingInstallItems plans];
        v11 = v9 < [plans count];

        plans2 = [(CTDisplayPlanList *)self->_pendingInstallItems plans];
        v13 = plans2;
        if (v11)
        {
          v14 = [plans2 objectAtIndexedSubscript:v9];

          carrierName = [v14 carrierName];
          carrierNameForSelectedItem = self->_carrierNameForSelectedItem;
          self->_carrierNameForSelectedItem = carrierName;

          plan = [v14 plan];
          [v46 addObject:plan];
        }

        else
        {
          v18 = [plans2 count];

          plans3 = [(CTDisplayPlanList *)self->_carrierSetupItems plans];
          v20 = v9 - v18;
          LODWORD(v18) = v9 - v18 < [plans3 count];

          if (v18)
          {
            v21 = _TSLogDomain();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v43;
              v63 = "[TSTransferListViewController _installSelectedPlans]";
              _os_log_impl(&dword_262AA8000, v21, OS_LOG_TYPE_DEFAULT, "selected carrier setup item @%s", buf, 0xCu);
            }

            self->_isCarrierSetupItemSelected = 1;
          }

          else
          {
            plans4 = [(CTDisplayPlanList *)self->_carrierSetupItems plans];
            v23 = [plans4 count];

            v24 = [(NSArray *)self->_transferPlans objectAtIndex:v20 - v23];
            plan2 = [v24 plan];
            [v44 addObject:plan2];

            phoneNumber = [v24 phoneNumber];

            v45 = phoneNumber;
          }
        }
      }

      v4 = [obj countByEnumeratingWithState:&v57 objects:v64 count:16];
    }

    while (v4);
  }

  else
  {
    v45 = 0;
  }

  if ([v46 count] >= 2)
  {
    v27 = self->_carrierNameForSelectedItem;
    self->_carrierNameForSelectedItem = 0;
  }

  v28 = [v44 count];
  v29 = [v46 count];
  plans5 = [(CTDisplayPlanList *)self->_carrierSetupItems plans];
  v31 = v29 + v28 + [plans5 count] == 0;

  if (!v31)
  {
    tableView2 = [(OBTableWelcomeController *)self tableView];
    [tableView2 setUserInteractionEnabled:0];

    [(OBBoldTrayButton *)self->_continueButton setEnabled:0];
    [(SSOBBoldTrayButton *)self->_continueButton setUserInteractionEnabled:0];
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v33 = v44;
    v34 = [v33 countByEnumeratingWithState:&v53 objects:v61 count:16];
    if (v34)
    {
      v35 = *v54;
      while (2)
      {
        for (j = 0; j != v34; ++j)
        {
          if (*v54 != v35)
          {
            objc_enumerationMutation(v33);
          }

          v37 = *(*(&v53 + 1) + 8 * j);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            transferAttributes = [v37 transferAttributes];
            isSecuredFlow = [transferAttributes isSecuredFlow];
            confirmCellularPlanTransfer = 1;
            if ((isSecuredFlow & 1) == 0)
            {
              confirmCellularPlanTransfer = self->_confirmCellularPlanTransfer;
            }

            self->_followDirections = confirmCellularPlanTransfer;
            self->_speedBumper = 1;

            goto LABEL_32;
          }
        }

        v34 = [v33 countByEnumeratingWithState:&v53 objects:v61 count:16];
        if (v34)
        {
          continue;
        }

        break;
      }
    }

LABEL_32:

    objc_initWeak(buf, self);
    speedBumper = self->_speedBumper;
    v48[0] = MEMORY[0x277D85DD0];
    v48[1] = 3221225472;
    v48[2] = __53__TSTransferListViewController__installSelectedPlans__block_invoke;
    v48[3] = &unk_279B44F58;
    v48[4] = self;
    v49 = v33;
    v50 = v46;
    objc_copyWeak(&v52, buf);
    v51 = 0;
    [(TSTransferListViewController *)self _maybeDisplayPhysicalPlanConversionAlert:speedBumper phoneNumber:v45 completion:v48];

    objc_destroyWeak(&v52);
    objc_destroyWeak(buf);
  }

  v42 = *MEMORY[0x277D85DE8];
}

void __53__TSTransferListViewController__installSelectedPlans__block_invoke(uint64_t a1, char a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  if (v4)
  {
    if (a2)
    {
      v5 = [objc_alloc(MEMORY[0x277CC36F0]) initWithPlans:*(a1 + 40)];
      v6 = [objc_alloc(MEMORY[0x277CC36F0]) initWithPlans:*(a1 + 48)];
      if ([*(a1 + 40) count])
      {
        WeakRetained = objc_loadWeakRetained((a1 + 64));
        [WeakRetained _startPlanTransfer:v5 withDeviceID:*(a1 + 56)];
      }

      if ([*(a1 + 48) count])
      {
        [v4 _startPendingInstall:v6];
      }

      v8 = v4[163];
      if (v8)
      {
        v9 = [v8 plans];
        v10 = [v9 count];

        if (v10)
        {
          [v4 _dismissSelf];
        }
      }
    }

    else
    {
      v11 = _TSLogDomain();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 136315138;
        v14 = "[TSTransferListViewController _installSelectedPlans]_block_invoke";
        _os_log_impl(&dword_262AA8000, v11, OS_LOG_TYPE_DEFAULT, "transfer is canceled by user @%s", &v13, 0xCu);
      }

      v5 = [v4 delegate];
      [v5 userDidTapCancel];
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_installMultipleSelectedPlans
{
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  v3 = "[TSTransferListViewController _installMultipleSelectedPlans]";
  _os_log_debug_impl(&dword_262AA8000, v0, OS_LOG_TYPE_DEBUG, "[Db] After sort : %@ @%s", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

uint64_t __61__TSTransferListViewController__installMultipleSelectedPlans__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [v5 section];
  v7 = [v4 section];
  v8 = MEMORY[0x277CCABB0];
  if (v6 == v7)
  {
    v9 = [v5 row];

    v10 = [v8 numberWithInteger:v9];
    v11 = MEMORY[0x277CCABB0];
    v12 = [v4 row];
  }

  else
  {
    v13 = [v5 section];

    v10 = [v8 numberWithInteger:v13];
    v11 = MEMORY[0x277CCABB0];
    v12 = [v4 section];
  }

  v14 = [v11 numberWithInteger:v12];
  v15 = [v10 compare:v14];

  return v15;
}

void __61__TSTransferListViewController__installMultipleSelectedPlans__block_invoke_172(id *a1, char a2)
{
  v12 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  if (WeakRetained)
  {
    if (a2)
    {
      v5 = [a1[4] count];
      v6 = [a1[5] count] + v5;
      if (v6 + [a1[6] count])
      {
        [WeakRetained _startInstallMultiplePlans:a1[4] transferPlans:a1[5] andCarrierSetupItems:a1[6]];
      }
    }

    else
    {
      v7 = _TSLogDomain();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 136315138;
        v11 = "[TSTransferListViewController _installMultipleSelectedPlans]_block_invoke";
        _os_log_impl(&dword_262AA8000, v7, OS_LOG_TYPE_DEFAULT, "transfer is canceled by user @%s", &v10, 0xCu);
      }

      v8 = [WeakRetained delegate];
      [v8 userDidTapCancel];
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (id)getLocalizedStringIf:(id)if then:(id)then otherwise:(id)otherwise
{
  ifCopy = if;
  thenCopy = then;
  otherwiseCopy = otherwise;
  if (ifCopy && [ifCopy length])
  {
    v10 = MEMORY[0x277CCACA8];
    v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v12 = [v11 localizedStringForKey:thenCopy value:&stru_28753DF48 table:@"Localizable"];
    ifCopy = [v10 stringWithFormat:v12, ifCopy];
  }

  else
  {
    v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    ifCopy = [v11 localizedStringForKey:otherwiseCopy value:&stru_28753DF48 table:@"Localizable"];
  }

  return ifCopy;
}

- (void)_maybeDisplayPhysicalPlanConversionAlert:(BOOL)alert phoneNumber:(id)number completion:(id)completion
{
  v98 = *MEMORY[0x277D85DE8];
  numberCopy = number;
  completionCopy = completion;
  v10 = completionCopy;
  if (alert)
  {
    v77 = numberCopy;
    v11 = objc_opt_new();
    selfCopy = self;
    v78 = v10;
    if ([(NSArray *)self->_selectedPlans count]>= 2)
    {
      v89 = 0u;
      v90 = 0u;
      v87 = 0u;
      v88 = 0u;
      v12 = self->_selectedPlans;
      v13 = [(NSArray *)v12 countByEnumeratingWithState:&v87 objects:v97 count:16];
      if (!v13)
      {
        goto LABEL_23;
      }

      v14 = v13;
      v15 = *v88;
      while (1)
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v88 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v87 + 1) + 8 * i);
          plan = [v17 plan];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            if (+[TSUtilities isPad](TSUtilities, "isPad") || ([v17 phoneNumber], v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v20, "length"), v20, !v21))
            {
              carrierName = [v17 carrierName];
              v25 = [carrierName length];

              if (v25)
              {
                carrierName2 = [v17 carrierName];
              }

              else
              {
                if (+[TSUtilities isPad](TSUtilities, "isPad") || ([v17 label], v27 = objc_claimAutoreleasedReturnValue(), v28 = objc_msgSend(v27, "length"), v27, !v28))
                {
                  phoneNumber = _TSLogDomain();
                  if (os_log_type_enabled(phoneNumber, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412546;
                    v94 = v17;
                    v95 = 2080;
                    v96 = "[TSTransferListViewController _maybeDisplayPhysicalPlanConversionAlert:phoneNumber:completion:]";
                    _os_log_error_impl(&dword_262AA8000, phoneNumber, OS_LOG_TYPE_ERROR, "[E]%@ has no mdn, carrier, label @%s", buf, 0x16u);
                  }

                  goto LABEL_20;
                }

                carrierName2 = [v17 label];
              }

              phoneNumber = carrierName2;
              [v11 addObject:carrierName2];
            }

            else
            {
              phoneNumber = [v17 phoneNumber];
              formattedPhoneNumber = [phoneNumber formattedPhoneNumber];
              [v11 addObject:formattedPhoneNumber];
            }

LABEL_20:

            continue;
          }
        }

        v14 = [(NSArray *)v12 countByEnumeratingWithState:&v87 objects:v97 count:16];
        if (!v14)
        {
LABEL_23:

          v29 = [TSUtilities formatLocAndConcatenateDescriptors:v11];
          v10 = v78;
          self = selfCopy;
          goto LABEL_26;
        }
      }
    }

    v29 = 0;
LABEL_26:
    v30 = 0x277CCA000uLL;
    v31 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v32 = [v31 localizedStringForKey:@"TRANSFER_SPEED_BUMP_TITLE" value:&stru_28753DF48 table:@"Localizable"];

    v33 = [v11 count];
    v34 = +[TSUtilities isPad];
    v75 = v29;
    if (v33 < 2)
    {
      v74 = v32;
      if (v34)
      {
        v36 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v72 = [v36 localizedStringForKey:@"TRANSFER_TO_ESIM_DETAIL" value:&stru_28753DF48 table:@"Localizable"];
      }

      else
      {
        formattedPhoneNumber2 = [v77 formattedPhoneNumber];

        v46 = +[TSCoreTelephonyClientCache sharedInstance];
        deviceSupportsHydra = [v46 deviceSupportsHydra];

        if (deviceSupportsHydra)
        {
          v48 = @"TRANSFER_TO_ESIM_DETAIL_%@";
          v49 = @"TRANSFER_TO_ESIM_DETAIL";
        }

        else
        {
          v48 = @"TRANSFER_TO_ESIM_DETAIL_WITH_DSDS_WARNING_%@";
          v49 = @"TRANSFER_TO_ESIM_DETAIL_WITH_DSDS_WARNING";
        }

        v72 = [(TSTransferListViewController *)self getLocalizedStringIf:formattedPhoneNumber2 then:v48 otherwise:v49];
        v77 = formattedPhoneNumber2;
      }
    }

    else if (v34)
    {
      v74 = v32;
      v35 = _TSLogDomain();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        [TSTransferListViewController _maybeDisplayPhysicalPlanConversionAlert:phoneNumber:completion:];
      }

      v72 = 0;
    }

    else
    {
      v37 = MEMORY[0x277CCACA8];
      v38 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v39 = [v38 localizedStringForKey:@"TRANSFER_SPEED_BUMP_TITLE_%lu" value:&stru_28753DF48 table:@"Plurals"];
      v40 = [v37 localizedStringWithFormat:v39, objc_msgSend(v11, "count")];

      v41 = MEMORY[0x277CCACA8];
      v42 = v10;
      v43 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v44 = [v43 localizedStringForKey:@"TRANSFER_ESIMS_DETAIL_%@" value:&stru_28753DF48 table:@"Localizable"];
      v72 = [v41 stringWithFormat:v44, v29];

      v30 = 0x277CCA000;
      v10 = v42;
      v74 = v40;
    }

    v50 = +[TSUtilities isPad];
    v51 = [*(v30 + 2264) bundleForClass:objc_opt_class()];
    v52 = v51;
    if (v50)
    {
      v53 = @"TRANSFER_ACTION";
    }

    else
    {
      v53 = @"TRANSFER";
    }

    v54 = [v51 localizedStringForKey:v53 value:&stru_28753DF48 table:@"Localizable"];

    v55 = MEMORY[0x277D750F8];
    v85[0] = MEMORY[0x277D85DD0];
    v85[1] = 3221225472;
    v85[2] = __96__TSTransferListViewController__maybeDisplayPhysicalPlanConversionAlert_phoneNumber_completion___block_invoke;
    v85[3] = &unk_279B44878;
    v56 = v10;
    v86 = v56;
    v73 = v54;
    v57 = [v55 actionWithTitle:v54 style:0 handler:v85];
    v92[0] = v57;
    v58 = MEMORY[0x277D750F8];
    v59 = [*(v30 + 2264) bundleForClass:objc_opt_class()];
    v60 = [v59 localizedStringForKey:@"CANCEL" value:&stru_28753DF48 table:@"Localizable"];
    v83[0] = MEMORY[0x277D85DD0];
    v83[1] = 3221225472;
    v83[2] = __96__TSTransferListViewController__maybeDisplayPhysicalPlanConversionAlert_phoneNumber_completion___block_invoke_2;
    v83[3] = &unk_279B44878;
    v84 = v56;
    v61 = [v58 actionWithTitle:v60 style:1 handler:v83];
    v92[1] = v61;
    v62 = [MEMORY[0x277CBEA60] arrayWithObjects:v92 count:2];

    v63 = [TSUtilities appendLeftToRightMark:v72];
    v64 = [MEMORY[0x277D75110] alertControllerWithTitle:v74 message:v63 preferredStyle:1];
    v79 = 0u;
    v80 = 0u;
    v81 = 0u;
    v82 = 0u;
    v65 = v62;
    v66 = [v65 countByEnumeratingWithState:&v79 objects:v91 count:16];
    if (v66)
    {
      v67 = v66;
      v68 = *v80;
      do
      {
        for (j = 0; j != v67; ++j)
        {
          if (*v80 != v68)
          {
            objc_enumerationMutation(v65);
          }

          [v64 addAction:*(*(&v79 + 1) + 8 * j)];
        }

        v67 = [v65 countByEnumeratingWithState:&v79 objects:v91 count:16];
      }

      while (v67);
    }

    v70 = [v65 objectAtIndex:0];
    [v64 setPreferredAction:v70];

    [(TSTransferListViewController *)selfCopy presentViewController:v64 animated:1 completion:0];
    numberCopy = v77;
    v10 = v78;
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 1);
  }

  v71 = *MEMORY[0x277D85DE8];
}

- (void)_launchDirectAuthFlow:(id)flow
{
  v22 = *MEMORY[0x277D85DE8];
  flowCopy = flow;
  transferAttributes = [flowCopy transferAttributes];
  if ([transferAttributes transferCapability] == 8)
  {
    transferEndpoint = [transferAttributes transferEndpoint];
    v7 = [transferEndpoint length];

    if (v7)
    {
      transferEndpoint2 = [transferAttributes transferEndpoint];
      v9 = _TSLogDomain();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        iccid = [flowCopy iccid];
        *buf = 138412802;
        v17 = iccid;
        v18 = 2112;
        v19 = transferEndpoint2;
        v20 = 2080;
        v21 = "[TSTransferListViewController _launchDirectAuthFlow:]";
        _os_log_impl(&dword_262AA8000, v9, OS_LOG_TYPE_DEFAULT, "Carrier direct auth flow plan: [%@], url: %@ @%s", buf, 0x20u);
      }

      self->_isCarrierDirectAuthItemSelected = 1;
      objc_initWeak(buf, self);
      mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
      v12 = [MEMORY[0x277CBEBC0] URLWithString:transferEndpoint2];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __54__TSTransferListViewController__launchDirectAuthFlow___block_invoke;
      v14[3] = &unk_279B44D90;
      objc_copyWeak(&v15, buf);
      v14[4] = self;
      [mEMORY[0x277D75128] openURL:v12 options:MEMORY[0x277CBEC10] completionHandler:v14];

      objc_destroyWeak(&v15);
      objc_destroyWeak(buf);
    }

    else
    {
      transferEndpoint2 = _TSLogDomain();
      if (os_log_type_enabled(transferEndpoint2, OS_LOG_TYPE_ERROR))
      {
        [TSTransferListViewController _launchDirectAuthFlow:];
      }
    }
  }

  else
  {
    transferEndpoint2 = _TSLogDomain();
    if (os_log_type_enabled(transferEndpoint2, OS_LOG_TYPE_ERROR))
    {
      [(TSTransferListViewController *)transferAttributes _launchDirectAuthFlow:transferEndpoint2];
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __54__TSTransferListViewController__launchDirectAuthFlow___block_invoke(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if ((a2 & 1) == 0)
  {
    v5 = _TSLogDomain();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __54__TSTransferListViewController__launchDirectAuthFlow___block_invoke_cold_1();
    }
  }

  v6 = [*(a1 + 32) tableView];
  [v6 setUserInteractionEnabled:1];

  [WeakRetained[161] setEnabled:1];
  [WeakRetained[161] setUserInteractionEnabled:1];
  *(WeakRetained + 1277) = 0;
  v7 = [WeakRetained delegate];
  [v7 viewControllerDidComplete:WeakRetained];
}

- (void)_startPlanTransfer:(id)transfer withDeviceID:(id)d
{
  v40 = *MEMORY[0x277D85DE8];
  transferCopy = transfer;
  dCopy = d;
  objc_initWeak(&location, self);
  v24 = objc_opt_new();
  plans = [transferCopy plans];
  LODWORD(d) = [plans count] > 1;

  if (d)
  {
    v7 = _TSLogDomain();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [TSTransferListViewController _startPlanTransfer:withDeviceID:];
    }

    goto LABEL_20;
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  plans2 = [transferCopy plans];
  v9 = [plans2 countByEnumeratingWithState:&v30 objects:v39 count:16];
  if (v9)
  {
    v10 = *v31;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v31 != v10)
        {
          objc_enumerationMutation(plans2);
        }

        v12 = *(*(&v30 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = v12;
          transferAttributes = [v13 transferAttributes];
          if ([transferAttributes transferCapability] == 8)
          {
            [(TSTransferListViewController *)self _launchDirectAuthFlow:v13];
          }

          else
          {
            planID = [v13 planID];
            [v24 addObject:planID];

            objc_storeStrong(&self->_transferPlan, v12);
          }
        }

        else
        {
          v13 = _TSLogDomain();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v36 = v12;
            v37 = 2080;
            v38 = "[TSTransferListViewController _startPlanTransfer:withDeviceID:]";
            _os_log_error_impl(&dword_262AA8000, v13, OS_LOG_TYPE_ERROR, "[E]plan [%@] is not instance of CTRemotePlan @%s", buf, 0x16u);
          }
        }
      }

      v9 = [plans2 countByEnumeratingWithState:&v30 objects:v39 count:16];
    }

    while (v9);
  }

  if ([v24 count])
  {
    v16 = [objc_alloc(MEMORY[0x277CC3708]) initWithPlanIdentifiers:v24];
    v17 = objc_loadWeakRetained(&location);
    [v17 _dismissSelf];

    [(OBWelcomeController *)self _showButtonTraySpinnerWithBusyText:&stru_28753DF48];
    v18 = objc_loadWeakRetained(&location);
    [v18 setInstallingTransferPlan:1];

    v19 = objc_loadWeakRetained(&location);
    [v19 setTransferPlanDeviceID:dCopy];

    v20 = objc_loadWeakRetained(&location);
    [v20 setBackToSelfOption:2];

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __64__TSTransferListViewController__startPlanTransfer_withDeviceID___block_invoke;
    block[3] = &unk_279B44FC8;
    v26 = v16;
    v27 = dCopy;
    v7 = v16;
    objc_copyWeak(&v29, &location);
    v28 = transferCopy;
    dispatch_async(MEMORY[0x277D85CD0], block);

    objc_destroyWeak(&v29);
LABEL_20:
  }

  objc_destroyWeak(&location);
  v21 = *MEMORY[0x277D85DE8];
}

void __64__TSTransferListViewController__startPlanTransfer_withDeviceID___block_invoke(uint64_t a1)
{
  if (_os_feature_enabled_impl())
  {
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    v3 = [WeakRetained ctClient];
    v4 = *(a1 + 48);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __64__TSTransferListViewController__startPlanTransfer_withDeviceID___block_invoke_4;
    v8[3] = &unk_279B44828;
    v5 = &v9;
    objc_copyWeak(&v9, (a1 + 56));
    [v3 installMultiplePlans:v4 completionHandler:v8];
  }

  else
  {
    WeakRetained = +[TSCoreTelephonyClientCache sharedInstance];
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __64__TSTransferListViewController__startPlanTransfer_withDeviceID___block_invoke_2;
    v10[3] = &unk_279B44828;
    v5 = &v11;
    objc_copyWeak(&v11, (a1 + 56));
    [WeakRetained transferPlansWithIdentifier:v6 fromDevice:v7 completionHandler:v10];
  }

  objc_destroyWeak(v5);
}

void __64__TSTransferListViewController__startPlanTransfer_withDeviceID___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = dispatch_time(0, 100000000);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __64__TSTransferListViewController__startPlanTransfer_withDeviceID___block_invoke_3;
  v6[3] = &unk_279B443D8;
  objc_copyWeak(&v8, (a1 + 32));
  v7 = v3;
  v5 = v3;
  dispatch_after(v4, MEMORY[0x277D85CD0], v6);

  objc_destroyWeak(&v8);
}

void __64__TSTransferListViewController__startPlanTransfer_withDeviceID___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setInstallingTransferPlan:0];

  v3 = objc_loadWeakRetained((a1 + 40));
  v4 = [v3 view];
  [v4 setUserInteractionEnabled:1];

  if (*(a1 + 32))
  {
    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    [v5 postNotificationName:@"transfer.failed" object:*(a1 + 32)];
  }
}

void __64__TSTransferListViewController__startPlanTransfer_withDeviceID___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = dispatch_time(0, 100000000);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__TSTransferListViewController__startPlanTransfer_withDeviceID___block_invoke_5;
  v7[3] = &unk_279B44490;
  v7[4] = WeakRetained;
  v8 = v3;
  v6 = v3;
  dispatch_after(v5, MEMORY[0x277D85CD0], v7);
}

void __64__TSTransferListViewController__startPlanTransfer_withDeviceID___block_invoke_5(uint64_t a1)
{
  [*(a1 + 32) setInstallingTransferPlan:0];
  v2 = [*(a1 + 32) view];
  [v2 setUserInteractionEnabled:1];

  if (*(a1 + 40))
  {
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    [v3 postNotificationName:@"transfer.failed" object:*(a1 + 40)];
  }
}

- (void)_startInstallMultiplePlans:(id)plans transferPlans:(id)transferPlans andCarrierSetupItems:(id)items
{
  v39 = *MEMORY[0x277D85DE8];
  plansCopy = plans;
  transferPlansCopy = transferPlans;
  itemsCopy = items;
  v11 = objc_opt_new();
  if ([plansCopy count])
  {
    [v11 addObjectsFromArray:plansCopy];
  }

  if ([transferPlansCopy count])
  {
    [v11 addObjectsFromArray:transferPlansCopy];
  }

  if ([itemsCopy count])
  {
    [v11 addObjectsFromArray:itemsCopy];
  }

  v26 = itemsCopy;
  v27 = transferPlansCopy;
  v12 = [objc_alloc(MEMORY[0x277CC36F0]) initWithPlans:v11];
  planList = self->_planList;
  self->_planList = v12;

  [(OBWelcomeController *)self _showButtonTraySpinnerWithBusyText:&stru_28753DF48];
  [(TSTransferListViewController *)self setBackToSelfOption:2];
  v14 = _TSLogDomain();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [(NSArray *)self->_selectedPlans count];
    *buf = 134218242;
    v36 = v15;
    v37 = 2080;
    v38 = "[TSTransferListViewController _startInstallMultiplePlans:transferPlans:andCarrierSetupItems:]";
    _os_log_impl(&dword_262AA8000, v14, OS_LOG_TYPE_DEFAULT, "user select [%lu] plans @%s", buf, 0x16u);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  selfCopy = self;
  v16 = self->_selectedPlans;
  v17 = [(NSArray *)v16 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v31;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v31 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v30 + 1) + 8 * i);
        v22 = _TSLogDomain();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v36 = v21;
          v37 = 2080;
          v38 = "[TSTransferListViewController _startInstallMultiplePlans:transferPlans:andCarrierSetupItems:]";
          _os_log_impl(&dword_262AA8000, v22, OS_LOG_TYPE_DEFAULT, "\t%@ @%s", buf, 0x16u);
        }
      }

      v18 = [(NSArray *)v16 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v18);
  }

  delegate = [(TSTransferListViewController *)selfCopy delegate];
  [delegate viewControllerDidComplete:selfCopy];

  objc_initWeak(buf, selfCopy);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __94__TSTransferListViewController__startInstallMultiplePlans_transferPlans_andCarrierSetupItems___block_invoke;
  block[3] = &unk_279B44400;
  objc_copyWeak(&v29, buf);
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(&v29);
  objc_destroyWeak(buf);

  v24 = *MEMORY[0x277D85DE8];
}

void __94__TSTransferListViewController__startInstallMultiplePlans_transferPlans_andCarrierSetupItems___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained ctClient];
  v4 = objc_loadWeakRetained((a1 + 32));
  v5 = [v4 planList];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __94__TSTransferListViewController__startInstallMultiplePlans_transferPlans_andCarrierSetupItems___block_invoke_2;
  v6[3] = &unk_279B44828;
  objc_copyWeak(&v7, (a1 + 32));
  [v3 installMultiplePlans:v5 completionHandler:v6];

  objc_destroyWeak(&v7);
}

void __94__TSTransferListViewController__startInstallMultiplePlans_transferPlans_andCarrierSetupItems___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained view];
    [v6 setUserInteractionEnabled:1];

    if (v8)
    {
      objc_storeStrong(v5 + 172, a2);
      v7 = [MEMORY[0x277CCAB98] defaultCenter];
      [v7 postNotificationName:@"transfer.failed" object:v8];
    }
  }
}

- (void)_startPendingInstall:(id)install
{
  v18 = *MEMORY[0x277D85DE8];
  installCopy = install;
  v5 = _TSLogDomain();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v15 = installCopy;
    v16 = 2080;
    v17 = "[TSTransferListViewController _startPendingInstall:]";
    _os_log_impl(&dword_262AA8000, v5, OS_LOG_TYPE_DEFAULT, "plans: %@ @%s", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  v6 = +[TSUtilities getSpinnerBusyText];
  [(OBWelcomeController *)self _showButtonTraySpinnerWithBusyText:v6];

  if (_os_feature_enabled_impl())
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __53__TSTransferListViewController__startPendingInstall___block_invoke_2_219;
    v10[3] = &unk_279B443D8;
    v7 = &v11;
    objc_copyWeak(&v11, buf);
    v10[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], v10);
  }

  else
  {
    v8 = +[TSCoreTelephonyClientCache sharedInstance];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __53__TSTransferListViewController__startPendingInstall___block_invoke;
    v12[3] = &unk_279B44278;
    v7 = &v13;
    objc_copyWeak(&v13, buf);
    v12[4] = self;
    [v8 installPendingPlanList:installCopy completion:v12];
  }

  objc_destroyWeak(v7);
  objc_destroyWeak(buf);

  v9 = *MEMORY[0x277D85DE8];
}

void __53__TSTransferListViewController__startPendingInstall___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__TSTransferListViewController__startPendingInstall___block_invoke_2;
  block[3] = &unk_279B446B0;
  objc_copyWeak(&v9, (a1 + 40));
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v9);
}

void __53__TSTransferListViewController__startPendingInstall___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = *(a1 + 40);
  if (*(a1 + 32))
  {
    [v3 setShowSIMSetup:0];
    v4 = _TSLogDomain();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __53__TSTransferListViewController__startPendingInstall___block_invoke_2_cold_1((a1 + 32));
    }

    v5 = MEMORY[0x277D75110];
    v6 = *(a1 + 40);
    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"ERROR_GENERIC_TITLE" value:&stru_28753DF48 table:@"Localizable"];
    v9 = *(a1 + 40);
    v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v11 = [v10 localizedStringForKey:@"ERROR_TRY_AGAIN_TITLE" value:&stru_28753DF48 table:@"Localizable"];
    v12 = [v5 alertControllerWithTitle:v8 message:v11 preferredStyle:1];

    v13 = MEMORY[0x277D750F8];
    v14 = *(a1 + 40);
    v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v16 = [v15 localizedStringForKey:@"ERROR_OK" value:&stru_28753DF48 table:@"Localizable"];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __53__TSTransferListViewController__startPendingInstall___block_invoke_218;
    v18[3] = &unk_279B44B38;
    v18[4] = WeakRetained;
    v17 = [v13 actionWithTitle:v16 style:1 handler:v18];
    [v12 addAction:v17];

    [WeakRetained presentViewController:v12 animated:1 completion:0];
  }

  else
  {
    if ((v3[1272] & 1) == 0)
    {
      [v3 setShowSIMSetup:1];
    }

    [WeakRetained _dismissSelf];
  }
}

void __53__TSTransferListViewController__startPendingInstall___block_invoke_218(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((v2[1324] & 1) == 0)
  {
    v3 = [v2 delegate];
    [v3 attemptFailed];
  }
}

void __53__TSTransferListViewController__startPendingInstall___block_invoke_2_219(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained ctClient];
  v4 = objc_loadWeakRetained((a1 + 40));
  v5 = [v4 planList];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __53__TSTransferListViewController__startPendingInstall___block_invoke_3;
  v6[3] = &unk_279B44278;
  objc_copyWeak(&v7, (a1 + 40));
  v6[4] = *(a1 + 32);
  [v3 installMultiplePlans:v5 completionHandler:v6];

  objc_destroyWeak(&v7);
}

void __53__TSTransferListViewController__startPendingInstall___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = *(a1 + 32);
  if (v3)
  {
    [v5 setShowSIMSetup:0];
    v6 = _TSLogDomain();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __53__TSTransferListViewController__startPendingInstall___block_invoke_3_cold_1();
    }

    v7 = MEMORY[0x277D75110];
    v8 = *(a1 + 32);
    v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:@"ERROR_GENERIC_TITLE" value:&stru_28753DF48 table:@"Localizable"];
    v11 = *(a1 + 32);
    v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v13 = [v12 localizedStringForKey:@"ERROR_TRY_AGAIN_TITLE" value:&stru_28753DF48 table:@"Localizable"];
    v14 = [v7 alertControllerWithTitle:v10 message:v13 preferredStyle:1];

    v15 = MEMORY[0x277D750F8];
    v16 = *(a1 + 32);
    v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v18 = [v17 localizedStringForKey:@"ERROR_OK" value:&stru_28753DF48 table:@"Localizable"];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __53__TSTransferListViewController__startPendingInstall___block_invoke_220;
    v20[3] = &unk_279B44B38;
    v20[4] = WeakRetained;
    v19 = [v15 actionWithTitle:v18 style:1 handler:v20];
    [v14 addAction:v19];

    [WeakRetained presentViewController:v14 animated:1 completion:0];
  }

  else
  {
    if ((v5[1272] & 1) == 0)
    {
      [v5 setShowSIMSetup:1];
    }

    [WeakRetained _dismissSelf];
  }
}

void __53__TSTransferListViewController__startPendingInstall___block_invoke_220(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((v2[1324] & 1) == 0)
  {
    v3 = [v2 delegate];
    [v3 attemptFailed];
  }
}

- (void)_maybeUpdateTableView
{
  v17 = *MEMORY[0x277D85DE8];
  if (self->_receivedPendingInstallItems && self->_receivedTransferItems)
  {
    tableView = [(OBTableWelcomeController *)self tableView];
    [tableView reloadData];

    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    tableView2 = [(OBTableWelcomeController *)self tableView];
    visibleCells = [tableView2 visibleCells];

    v6 = [visibleCells countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(visibleCells);
          }

          v10 = *(*(&v12 + 1) + 8 * i);
          if (([v10 isUserInteractionEnabled] & 1) != 0 || objc_msgSend(v10, "accessoryType") != 3)
          {

            goto LABEL_14;
          }
        }

        v7 = [visibleCells countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    [(OBBoldTrayButton *)self->_continueButton setEnabled:1];
    [(SSOBBoldTrayButton *)self->_continueButton setUserInteractionEnabled:1];
  }

LABEL_14:
  v11 = *MEMORY[0x277D85DE8];
}

- (void)_dismissSelf
{
  delegate = [(TSTransferListViewController *)self delegate];
  [delegate viewControllerDidComplete:self];
}

- (BOOL)_isCarrierSetupItemSelected:(unint64_t)selected
{
  plans = [(CTDisplayPlanList *)self->_pendingInstallItems plans];
  v6 = [plans count];

  if (v6 > selected)
  {
    return 0;
  }

  plans2 = [(CTDisplayPlanList *)self->_pendingInstallItems plans];
  v9 = selected - [plans2 count];

  plans3 = [(CTDisplayPlanList *)self->_carrierSetupItems plans];
  v7 = v9 < [plans3 count];

  return v7;
}

- (void)_transferConsentOnSource
{
  v3 = +[TSUtilities getSpinnerBusyText];
  [(OBWelcomeController *)self _showButtonTraySpinnerWithBusyText:v3];

  presentedViewController = [(TSTransferListViewController *)self presentedViewController];

  if (presentedViewController)
  {
    presentedViewController2 = [(TSTransferListViewController *)self presentedViewController];
    [presentedViewController2 dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)_cancelTransferringPlan
{
  v21 = *MEMORY[0x277D85DE8];
  delegate = [(TSTransferListViewController *)self delegate];
  [delegate cancelNextPane];

  self->_requireDelayBluetoothConnection = 1;
  v4 = +[TSCoreTelephonyClientCache sharedInstance];
  [v4 cancelTransferPlan:self->_transferPlan fromDevice:self->_transferPlanDeviceID completionHandler:&__block_literal_global_222];

  [(OBWelcomeController *)self _hideButtonTraySpinner];
  self->_continueButtonTappedOnce = 0;
  tableView = [(OBTableWelcomeController *)self tableView];
  [tableView setUserInteractionEnabled:1];

  [(NSMutableArray *)self->_chosenUseIndexPaths removeAllObjects];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  tableView2 = [(OBTableWelcomeController *)self tableView];
  indexPathsForSelectedRows = [tableView2 indexPathsForSelectedRows];

  v8 = [indexPathsForSelectedRows countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      v11 = 0;
      do
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(indexPathsForSelectedRows);
        }

        v12 = *(*(&v16 + 1) + 8 * v11);
        tableView3 = [(OBTableWelcomeController *)self tableView];
        [tableView3 deselectRowAtIndexPath:v12 animated:1];

        tableView4 = [(OBTableWelcomeController *)self tableView];
        [(TSTransferListViewController *)self tableView:tableView4 didDeselectRowAtIndexPath:v12];

        ++v11;
      }

      while (v9 != v11);
      v9 = [indexPathsForSelectedRows countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __55__TSTransferListViewController__cancelTransferringPlan__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = _TSLogDomain();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __55__TSTransferListViewController__cancelTransferringPlan__block_invoke_cold_1();
    }
  }
}

- (BOOL)_isAnyPlanRequireLocationService
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = self->_transferPlans;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v8 + 1) + 8 * i) transferCapability] == 19)
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [(NSArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v6 = *MEMORY[0x277D85DE8];
  return v3;
}

- (BOOL)_isAnyTransferPlanWithDirectAuth
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = self->_transferPlans;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v8 + 1) + 8 * i) transferCapability] == 8)
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [(NSArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v6 = *MEMORY[0x277D85DE8];
  return v3;
}

- (TSSIMSetupFlowDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_maybeDisplayPhysicalPlanConversionAlert:phoneNumber:completion:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_launchDirectAuthFlow:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  [a1 transferCapability];
  CTPlanTransferCapabilityAsString();
  OUTLINED_FUNCTION_0();
  v5 = "[TSTransferListViewController _launchDirectAuthFlow:]";
  _os_log_error_impl(&dword_262AA8000, a2, OS_LOG_TYPE_ERROR, "[E]not carrier direct item : %s @%s", v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)_launchDirectAuthFlow:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __54__TSTransferListViewController__launchDirectAuthFlow___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_startPlanTransfer:withDeviceID:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __53__TSTransferListViewController__startPendingInstall___block_invoke_2_cold_1(uint64_t *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

void __53__TSTransferListViewController__startPendingInstall___block_invoke_3_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __55__TSTransferListViewController__cancelTransferringPlan__block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

@end