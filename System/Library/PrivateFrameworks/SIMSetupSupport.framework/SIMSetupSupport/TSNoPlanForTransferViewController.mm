@interface TSNoPlanForTransferViewController
+ (id)getTitleAndDetailsForTransferCapability:(unint64_t)a3 carrier:(id)a4 phoneNumber:(id)a5 sourceDeviceName:(id)a6 isTransferNotSupportedFromiPhone:(BOOL)a7 isTransferBackPlan:(BOOL)a8 isVisitStoreRequired:(BOOL)a9;
- (BOOL)_isAnyPlanRequireLocationService;
- (BOOL)_isAnyPlanWithMismatchedActivationPolicy;
- (TSNoPlanForTransferViewController)initWithCarrier:(id)a3 phoneNumber:(id)a4 transferCapability:(unint64_t)a5 showOtherOptions:(BOOL)a6 entryPoint:(unint64_t)a7 sourceDeviceName:(id)a8 isTransferNotSupportedFromiPhone:(BOOL)a9 isTransferBackPlan:(BOOL)a10 isStartOverNeeded:(BOOL)a11;
- (TSNoPlanForTransferViewController)initWithPlans:(id)a3 showOtherOptions:(BOOL)a4 isStartOverNeeded:(BOOL)a5;
- (TSSIMSetupFlowDelegate)delegate;
- (id)initShowNoSIMForCrossPlatformTransfer;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4;
- (void)_cancelButtonTapped;
- (void)_otherButtonTapped;
- (void)_turnOnLocationServicesTapped;
- (void)tableView:(id)a3 willDisplayFooterView:(id)a4 forSection:(int64_t)a5;
- (void)viewDidLoad;
@end

@implementation TSNoPlanForTransferViewController

- (TSNoPlanForTransferViewController)initWithCarrier:(id)a3 phoneNumber:(id)a4 transferCapability:(unint64_t)a5 showOtherOptions:(BOOL)a6 entryPoint:(unint64_t)a7 sourceDeviceName:(id)a8 isTransferNotSupportedFromiPhone:(BOOL)a9 isTransferBackPlan:(BOOL)a10 isStartOverNeeded:(BOOL)a11
{
  LOBYTE(v23) = 0;
  v15 = [TSNoPlanForTransferViewController getTitleAndDetailsForTransferCapability:a5 carrier:a3 phoneNumber:a4 sourceDeviceName:a8 isTransferNotSupportedFromiPhone:a9 isTransferBackPlan:a10 isVisitStoreRequired:v23];
  v16 = [v15 objectForKeyedSubscript:@"title"];
  v17 = [v15 objectForKeyedSubscript:@"details"];
  v18 = [MEMORY[0x277CCAB68] stringWithString:v17];
  v19 = [TSUtilities getStringWithFirstCharacterUppercase:v18];

  v24.receiver = self;
  v24.super_class = TSNoPlanForTransferViewController;
  v20 = [(OBTableWelcomeController *)&v24 initWithTitle:v16 detailText:v19 symbolName:@"antenna.radiowaves.left.and.right" adoptTableViewScrollView:0];
  v21 = v20;
  if (v20)
  {
    [(TSNoPlanForTransferViewController *)v20 setEntryPoint:a7];
    v21->_showOtherOptions = a6;
    v21->_isStartOverNeeded = a11;
    if (a5 == 19)
    {
      v21->_showTurnOnLocationServices = 1;
    }
  }

  return v21;
}

- (id)initShowNoSIMForCrossPlatformTransfer
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"CROSSPLATFORM_TRANSFER_NO_SIM_FOR_TRANSFER" value:&stru_28753DF48 table:@"Localizable"];

  v5 = MEMORY[0x277CCACA8];
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"CROSSPLATFORM_TRANSFER_NO_SIM_FOR_TRANSFER_DETAIL" value:&stru_28753DF48 table:@"Localizable"];
  v8 = [v5 stringWithFormat:v7];

  v12.receiver = self;
  v12.super_class = TSNoPlanForTransferViewController;
  v9 = [(OBTableWelcomeController *)&v12 initWithTitle:v4 detailText:v8 icon:0];
  v10 = v9;
  if (v9)
  {
    v9->_showOtherOptions = 0;
    v9->_showTurnOnLocationServices = 0;
  }

  return v10;
}

- (TSNoPlanForTransferViewController)initWithPlans:(id)a3 showOtherOptions:(BOOL)a4 isStartOverNeeded:(BOOL)a5
{
  v7 = [a3 sortedArrayUsingComparator:&__block_literal_global_23];
  if ([v7 count] == 1)
  {
    v8 = [v7 objectAtIndexedSubscript:0];
    v9 = [v8 transferCapabilityForMessage];
    v10 = [v8 carrierName];
    v11 = [v8 phoneNumber];
    v12 = [v8 deviceName];
    LOBYTE(v30) = [v8 requireVisitStoreOnce];
    v13 = [TSNoPlanForTransferViewController getTitleAndDetailsForTransferCapability:v9 carrier:v10 phoneNumber:v11 sourceDeviceName:v12 isTransferNotSupportedFromiPhone:0 isTransferBackPlan:0 isVisitStoreRequired:v30];

    v14 = [v13 objectForKeyedSubscript:@"title"];
    v15 = [v13 objectForKeyedSubscript:@"details"];
    v16 = [MEMORY[0x277CCAB68] stringWithString:v15];
    v17 = [TSUtilities getStringWithFirstCharacterUppercase:v16];
  }

  else
  {
    v33 = 0;
    v34 = 0;
    [v7 getCombinedTitleAndDetailsForNonTransferablePlans:&v34 details:&v33];
    v14 = v34;
    v17 = v33;
  }

  if (![v14 length])
  {
    v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v19 = [v18 localizedStringForKey:@"MULTISIM_INELIGIBLE_TRANSFER_PLANS_TITLE" value:&stru_28753DF48 table:@"Localizable"];

    v14 = v19;
  }

  if (![v17 length])
  {
    v20 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v21 = [v20 localizedStringForKey:@"YOUR_CARRIER" value:&stru_28753DF48 table:@"Localizable"];

    v22 = MEMORY[0x277CCACA8];
    v23 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v24 = [v23 localizedStringForKey:@"TRANSFER_UNSUPPORTED_PLAN_DETAIL_%@" value:&stru_28753DF48 table:@"Localizable"];
    v25 = [v22 stringWithFormat:v24, v21];
    v26 = [v25 mutableCopy];

    v17 = v26;
  }

  v32.receiver = self;
  v32.super_class = TSNoPlanForTransferViewController;
  v27 = [(OBTableWelcomeController *)&v32 initWithTitle:v14 detailText:v17 symbolName:@"antenna.radiowaves.left.and.right" adoptTableViewScrollView:0];
  v28 = v27;
  if (v27)
  {
    objc_storeStrong(&v27->_plans, v7);
    v28->_entryPoint = 1;
    v28->_showOtherOptions = a4;
    v28->_showTurnOnLocationServices = [(TSNoPlanForTransferViewController *)v28 _isAnyPlanRequireLocationService];
    v28->_isStartOverNeeded = a5;
  }

  return v28;
}

uint64_t __86__TSNoPlanForTransferViewController_initWithPlans_showOtherOptions_isStartOverNeeded___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  if ([v4 isRegulatoryRestrictedPlan])
  {
    v6 = 0;
  }

  else
  {
    v6 = [v4 isNotEligibleActivationPolicyMismatchPlan] ^ 1;
  }

  if ([v5 isRegulatoryRestrictedPlan])
  {
    v7 = 1;
  }

  else
  {
    v7 = [v5 isNotEligibleActivationPolicyMismatchPlan];
  }

  if ((v6 | v7))
  {
    v8 = ((v6 & v7) << 63) >> 63;
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

+ (id)getTitleAndDetailsForTransferCapability:(unint64_t)a3 carrier:(id)a4 phoneNumber:(id)a5 sourceDeviceName:(id)a6 isTransferNotSupportedFromiPhone:(BOOL)a7 isTransferBackPlan:(BOOL)a8 isVisitStoreRequired:(BOOL)a9
{
  v9 = a8;
  v10 = a7;
  v79[2] = *MEMORY[0x277D85DE8];
  v14 = a4;
  v15 = a5;
  v75 = a6;
  if (!v14 || ![v14 length])
  {
    v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v17 = [v16 localizedStringForKey:@"YOUR_CARRIER" value:&stru_28753DF48 table:@"Localizable"];

    v14 = v17;
  }

  v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v19 = v18;
  if (a3 == 11001)
  {
    v20 = [v18 localizedStringForKey:@"VISIT_STORE_TITLE" value:&stru_28753DF48 table:@"Localizable"];

    v21 = MEMORY[0x277CCACA8];
    v22 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v23 = [v22 localizedStringForKey:@"VISIT_STORE_FOR_WARNING_DETAIL_%@" value:&stru_28753DF48 table:@"Localizable"];
    v24 = [v21 stringWithFormat:v23, v14];

    v78[0] = @"title";
    v78[1] = @"details";
    v79[0] = v20;
    v79[1] = v24;
    v25 = MEMORY[0x277CBEAC0];
    v26 = v79;
    v27 = v78;
  }

  else
  {
    v20 = [v18 localizedStringForKey:@"CONTACT_CARRIER_TO_SETUP_ESIM" value:&stru_28753DF48 table:@"Localizable"];

    switch(a3)
    {
      case 0uLL:
      case 1uLL:
      case 2uLL:
      case 3uLL:
      case 4uLL:
      case 5uLL:
      case 6uLL:
      case 7uLL:
      case 8uLL:
      case 0xBuLL:
      case 0xDuLL:
        v28 = _TSLogDomain();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          [TSNoPlanForTransferViewController getTitleAndDetailsForTransferCapability:a3 carrier:v28 phoneNumber:? sourceDeviceName:? isTransferNotSupportedFromiPhone:? isTransferBackPlan:? isVisitStoreRequired:?];
        }

        if (v9)
        {
          v29 = +[TSUtilities isPad];
          if (v15 && !v29 && [v15 length])
          {
            v30 = MEMORY[0x277CCACA8];
            v31 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
            v32 = [v31 localizedStringForKey:@"TRANSFER_BACK_PLAN_NOT_FOUND_DETAIL_%@%@" value:&stru_28753DF48 table:@"Localizable"];
            v33 = [v15 formattedPhoneNumber];
            v24 = [v30 stringWithFormat:v32, v33, v14];

            goto LABEL_18;
          }

          v34 = MEMORY[0x277CCACA8];
          v35 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v31 = v35;
          v36 = @"TRANSFER_BACK_PLAN_NOT_FOUND_DETAIL_%@";
        }

        else
        {
          v34 = MEMORY[0x277CCACA8];
          v35 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v31 = v35;
          v36 = @"TRANSFER_UNSUPPORTED_PLAN_DETAIL_%@";
        }

        goto LABEL_17;
      case 9uLL:
        v34 = MEMORY[0x277CCACA8];
        v35 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v31 = v35;
        v36 = @"SINGLE_INELIGIBLE_ESIM_TRANSFER_CAPABILITY_INELIGIBLE_DETAIL_%@";
LABEL_17:
        v32 = [v35 localizedStringForKey:v36 value:&stru_28753DF48 table:@"Localizable"];
        v24 = [v34 stringWithFormat:v32, v14];
LABEL_18:

        break;
      case 0xAuLL:
        v37 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v38 = [v37 localizedStringForKey:@"TRANSFER_INELIGIBLE_FOR_NOW_PLAN" value:&stru_28753DF48 table:@"Localizable"];

        v39 = MEMORY[0x277CCACA8];
        v40 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v41 = v40;
        v42 = @"TRANSFER_INELIGIBLE_FOR_NOW_PLAN_DETAIL_%@";
        goto LABEL_20;
      case 0xCuLL:
        v48 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v38 = [v48 localizedStringForKey:@"TRANSFER_INELIGIBLE_PLAN" value:&stru_28753DF48 table:@"Localizable"];

        v49 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v50 = v49;
        v51 = @"SINGLE_INELIGIBLE_ESIM_TRANSFER_CAPABILITY_INELIGIBLE_DETAIL_ACTIVATION_POLICY_MISMATCH_CARRIER_UNLOCK";
        goto LABEL_30;
      case 0xEuLL:
        v55 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v38 = [v55 localizedStringForKey:@"TRANSFER_UPDATE_REQUIRED_TITLE" value:&stru_28753DF48 table:@"Localizable"];

        v49 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v50 = v49;
        v51 = @"TRANSFER_TARGET_UPDATE_REQUIRED_DETAIL";
        goto LABEL_30;
      case 0xFuLL:
        v44 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v45 = [v44 localizedStringForKey:@"TRANSFER_UPDATE_REQUIRED_TITLE" value:&stru_28753DF48 table:@"Localizable"];

        if (v75 && [v75 length])
        {
          v73 = MEMORY[0x277CCACA8];
          v46 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v47 = [v46 localizedStringForKey:@"TRANSFER_SOURCE_UPDATE_REQUIRED_DETAIL_%@" value:&stru_28753DF48 table:@"Localizable"];
          v24 = [v73 stringWithFormat:v47, v75];
        }

        else
        {
          v57 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v58 = v57;
          v59 = @"TRANSFER_SOURCE_UPDATE_REQUIRED_DETAIL";
LABEL_42:
          v24 = [v57 localizedStringForKey:v59 value:&stru_28753DF48 table:@"Localizable"];
        }

        v20 = v45;
        break;
      case 0x10uLL:
        v60 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v38 = [v60 localizedStringForKey:@"UNABLE_TO_TRANSFER" value:&stru_28753DF48 table:@"Localizable"];

        if (+[TSUtilities isPhone](TSUtilities, "isPhone") && ([v15 formattedPhoneNumber], v61 = objc_claimAutoreleasedReturnValue(), v62 = objc_msgSend(v61, "length"), v61, v62))
        {
          v74 = MEMORY[0x277CCACA8];
          v63 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          [v63 localizedStringForKey:@"SINGLE_INELIGIBLE_ESIM_TRANSFER_CAPABILITY_MISSING_CERTIFICATE_%@" value:&stru_28753DF48 table:@"Localizable"];
          v64 = v20 = v38;
          v65 = [v15 formattedPhoneNumber];
          v24 = [v74 stringWithFormat:v64, v65];
        }

        else
        {
          if (+[TSUtilities isPad](TSUtilities, "isPad") && [v14 length])
          {
            v39 = MEMORY[0x277CCACA8];
            v40 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
            v41 = v40;
            v42 = @"SINGLE_INELIGIBLE_ESIM_TRANSFER_CAPABILITY_MISSING_CERTIFICATE_%@";
LABEL_20:
            v43 = [v40 localizedStringForKey:v42 value:&stru_28753DF48 table:@"Localizable"];
            v24 = [v39 stringWithFormat:v43, v14];
          }

          else
          {
            v49 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
            v50 = v49;
            v51 = @"SINGLE_INELIGIBLE_ESIM_TRANSFER_CAPABILITY_MISSING_CERTIFICATE";
LABEL_30:
            v24 = [v49 localizedStringForKey:v51 value:&stru_28753DF48 table:@"Localizable"];
          }

          v20 = v38;
        }

        break;
      case 0x11uLL:
        v52 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v38 = [v52 localizedStringForKey:@"UNABLE_TO_TRANSFER" value:&stru_28753DF48 table:@"Localizable"];

        v49 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v50 = v49;
        v51 = @"SINGLE_INELIGIBLE_ESIM_TRANSFER_CAPABILITY_REGULATORY_RESTRICTED";
        goto LABEL_30;
      case 0x12uLL:
        v54 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v38 = [v54 localizedStringForKey:@"UNABLE_TO_TRANSFER" value:&stru_28753DF48 table:@"Localizable"];

        v49 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v50 = v49;
        v51 = @"SINGLE_INELIGIBLE_ESIM_TRANSFER_CAPABILITY_UNREGULATORY_RESTRICTED";
        goto LABEL_30;
      case 0x13uLL:
        v56 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v45 = [v56 localizedStringForKey:@"TURN_ON_LOCATION_SERVICE" value:&stru_28753DF48 table:@"Localizable"];

        LODWORD(v56) = +[TSUtilities inBuddy];
        v57 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v58 = v57;
        if (v56)
        {
          v59 = @"SINGLE_INELIGIBLE_ESIM_TRANSFER_CAPABILITY_UNKNOWN_LOCATION_BUDDY";
        }

        else
        {
          v59 = @"SINGLE_INELIGIBLE_ESIM_TRANSFER_CAPABILITY_UNKNOWN_LOCATION";
        }

        goto LABEL_42;
      case 0x14uLL:
        v53 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v38 = [v53 localizedStringForKey:@"ESIM_COUNT_RESTRICTION_WARNING_TITLE" value:&stru_28753DF48 table:@"Localizable"];

        v49 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v50 = v49;
        v51 = @"ESIM_COUNT_RESTRICTION_WARNING_DETAIL";
        goto LABEL_30;
      default:
        v24 = 0;
        break;
    }

    if (v10 && +[TSUtilities isPad])
    {
      v66 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v67 = [v66 localizedStringForKey:@"TRANSFER_FROM_IPHONE_NOT_SUPPORTED" value:&stru_28753DF48 table:@"Localizable"];

      v68 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v69 = [v68 localizedStringForKey:@"PRX_TRANSFER_DETAIL" value:&stru_28753DF48 table:@"Localizable"];

      v20 = v67;
      v24 = v69;
    }

    v76[0] = @"title";
    v76[1] = @"details";
    v77[0] = v20;
    v77[1] = v24;
    v25 = MEMORY[0x277CBEAC0];
    v26 = v77;
    v27 = v76;
  }

  v70 = [v25 dictionaryWithObjects:v26 forKeys:v27 count:2];

  v71 = *MEMORY[0x277D85DE8];

  return v70;
}

- (void)viewDidLoad
{
  v16.receiver = self;
  v16.super_class = TSNoPlanForTransferViewController;
  [(TSOBTableWelcomeController *)&v16 viewDidLoad];
  if (self->_showTurnOnLocationServices && !+[TSUtilities inBuddy])
  {
    v3 = [MEMORY[0x277D37618] boldButton];
    [v3 addTarget:self action:sel__turnOnLocationServicesTapped forControlEvents:64];
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = [v4 localizedStringForKey:@"TURN_ON_LOCATION_SERVICE" value:&stru_28753DF48 table:@"Localizable"];
    [v3 setTitle:v5 forState:0];

    v6 = [(TSNoPlanForTransferViewController *)self buttonTray];
    [v6 addButton:v3];

    [v3 setEnabled:1];
  }

  if (self->_showOtherOptions && !+[TSUtilities inBuddy])
  {
    v7 = [MEMORY[0x277D37650] linkButton];
    [v7 addTarget:self action:sel__otherButtonTapped forControlEvents:64];
    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"OTHER_OPTIONS" value:&stru_28753DF48 table:@"Localizable"];
    [v7 setTitle:v9 forState:0];

    v10 = [(TSNoPlanForTransferViewController *)self buttonTray];
    [v10 addButton:v7];
  }

  if (+[TSUtilities inBuddy])
  {
    v11 = [MEMORY[0x277D37650] linkButton];
    [v11 addTarget:self action:sel__cancelButtonTapped forControlEvents:64];
    v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v13 = [v12 localizedStringForKey:@"CONTINUE" value:&stru_28753DF48 table:@"Localizable"];
    [v11 setTitle:v13 forState:0];

    v14 = [(TSNoPlanForTransferViewController *)self buttonTray];
    [v14 addButton:v11];

    v15 = [(OBBaseWelcomeController *)self navigationItem];
    [v15 setHidesBackButton:0 animated:0];
  }

  else
  {
    v11 = [(TSNoPlanForTransferViewController *)self delegate];
    [v11 setCancelNavigationBarItems:self];
  }
}

- (void)_cancelButtonTapped
{
  v2 = [(TSNoPlanForTransferViewController *)self delegate];
  [v2 userDidTapCancel];
}

- (void)_otherButtonTapped
{
  self->_isStartOverNeeded = 1;
  v3 = [(TSNoPlanForTransferViewController *)self delegate];
  [v3 restartWith:self];
}

- (void)_turnOnLocationServicesTapped
{
  v3 = [MEMORY[0x277CC1E80] defaultWorkspace];
  v4 = [MEMORY[0x277CBEBC0] URLWithString:@"settings-navigation://com.apple.Settings.PrivacyAndSecurity/LOCATION"];
  [v3 openSensitiveURL:v4 withOptions:0];

  v5 = [(TSNoPlanForTransferViewController *)self delegate];
  [v5 attemptFailed];
}

- (TSSIMSetupFlowDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 row];
  if (v8 >= [(NSArray *)self->_plans count])
  {
    v12 = 0;
    goto LABEL_23;
  }

  v9 = -[NSArray objectAtIndexedSubscript:](self->_plans, "objectAtIndexedSubscript:", [v7 row]);
  v10 = v9;
  if (v9)
  {
    v11 = [v9 identifier];
    v12 = [v6 dequeueReusableCellWithIdentifier:v11];

    if (!v12)
    {
      v13 = objc_alloc(MEMORY[0x277D75B48]);
      v14 = [v10 identifier];
      v12 = [v13 initWithStyle:3 reuseIdentifier:v14];
    }

    v15 = [v12 defaultContentConfiguration];
    if (+[TSUtilities isPhone](TSUtilities, "isPhone") && ([v10 phoneNumber], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "length"), v16, v17))
    {
      v18 = [v10 phoneNumber];
      v19 = [v18 formattedPhoneNumber];
    }

    else
    {
      v20 = [v10 carrierName];
      v21 = [v20 length];

      if (v21)
      {
        v18 = [v10 carrierName];
        [v15 setText:v18];
LABEL_14:

        if ([v10 isRegulatoryRestrictedPlan])
        {
          v23 = [v10 isRegulatoryRestrictedForCurrentLocationPlan];
          v24 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          if (v23)
          {
            v25 = @"TRANSFER_PLAN_ITEM_DETAIL_REGULATORY_RESTRICTED_FOR_CURRENT_LOCATION";
          }

          else
          {
            v25 = @"TRANSFER_PLAN_ITEM_DETAIL_REGULATORY_RESTRICTED";
          }
        }

        else
        {
          v26 = [v10 transferCapability];
          v24 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          if (v26 == 10)
          {
            v25 = @"TRANSFER_PLAN_ITEM_DETAIL_UNAVAILABLE";
          }

          else
          {
            v25 = @"TRANSFER_PLAN_ITEM_DETAIL_NOT_SUPPORTED";
          }
        }

        v27 = [v24 localizedStringForKey:v25 value:&stru_28753DF48 table:@"Localizable"];
        [v15 setSecondaryText:v27];

        v28 = [MEMORY[0x277D75348] lightGrayColor];
        v29 = [v15 secondaryTextProperties];
        [v29 setColor:v28];

        v30 = MEMORY[0x277D755B8];
        v31 = [v10 imageName];
        v32 = [v30 systemImageNamed:v31];
        [v15 setImage:v32];

        [v12 setContentConfiguration:v15];
        v33 = [v12 contentView];
        [v33 setLayoutMargins:{10.0, 0.0, 10.0, 0.0}];

        v34 = [MEMORY[0x277D75348] grayColor];
        [v12 setTintColor:v34];

        goto LABEL_22;
      }

      v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v19 = [v18 localizedStringForKey:@"CELLULAR_PLAN" value:&stru_28753DF48 table:@"Localizable"];
    }

    v22 = v19;
    [v15 setText:v19];

    goto LABEL_14;
  }

  v12 = 0;
LABEL_22:

LABEL_23:

  return v12;
}

- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4
{
  if ([(TSNoPlanForTransferViewController *)self _isAnyPlanRequireLocationService:a3])
  {
    v5 = @"TRANSFER_PLAN_LABELS_SECTION_FOOTER_UNKNOWN_LOCATION";
LABEL_5:
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:v5 value:&stru_28753DF48 table:@"Localizable"];

    goto LABEL_7;
  }

  if ([(TSNoPlanForTransferViewController *)self _isAnyPlanWithMismatchedActivationPolicy])
  {
    v5 = @"TRANSFER_PLAN_LABELS_SECTION_FOOTER_CARRIER_UNLOCK";
    goto LABEL_5;
  }

  v7 = 0;
LABEL_7:

  return v7;
}

- (void)tableView:(id)a3 willDisplayFooterView:(id)a4 forSection:(int64_t)a5
{
  v6 = [a4 textLabel];
  v5 = [MEMORY[0x277D75348] systemGrayColor];
  [v6 setTextColor:v5];
}

- (BOOL)_isAnyPlanRequireLocationService
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = self->_plans;
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

- (BOOL)_isAnyPlanWithMismatchedActivationPolicy
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = self->_plans;
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

        if ([*(*(&v8 + 1) + 8 * i) transferCapability] == 12)
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

+ (void)getTitleAndDetailsForTransferCapability:(uint64_t)a1 carrier:(NSObject *)a2 phoneNumber:sourceDeviceName:isTransferNotSupportedFromiPhone:isTransferBackPlan:isVisitStoreRequired:.cold.1(uint64_t a1, NSObject *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = 134218498;
  v5 = a1;
  v6 = 2080;
  v7 = CTPlanTransferCapabilityAsString();
  v8 = 2080;
  v9 = "+[TSNoPlanForTransferViewController getTitleAndDetailsForTransferCapability:carrier:phoneNumber:sourceDeviceName:isTransferNotSupportedFromiPhone:isTransferBackPlan:isVisitStoreRequired:]";
  _os_log_error_impl(&dword_262AA8000, a2, OS_LOG_TYPE_ERROR, "[E]unexpected transfer capability : %lu(%s) @%s", &v4, 0x20u);
  v3 = *MEMORY[0x277D85DE8];
}

@end