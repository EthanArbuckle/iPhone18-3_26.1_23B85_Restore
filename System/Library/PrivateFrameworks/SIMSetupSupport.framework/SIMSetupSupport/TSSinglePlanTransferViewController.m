@interface TSSinglePlanTransferViewController
+ (id)getTitleAndDetailsForPlanType:(unint64_t)a3 transferCapability:(unint64_t)a4 isShowingFilteredPlans:(BOOL)a5 carrier:(id)a6;
- (TSSIMSetupFlowDelegate)delegate;
- (TSSinglePlanTransferViewController)initWithCrossPlatformTransferPlan:(id)a3;
- (TSSinglePlanTransferViewController)initWithLocalPhysical:(id)a3 carrierName:(id)a4;
- (TSSinglePlanTransferViewController)initWithPendingInstallPlan:(id)a3;
- (TSSinglePlanTransferViewController)initWithTransferPlan:(id)a3 isPhysical:(BOOL)a4 isIneligible:(BOOL)a5 inBuddy:(BOOL)a6 confirmCellularPlanTransfer:(BOOL)a7 showOtherOptions:(BOOL)a8 isStandaloneProximityFlow:(BOOL)a9 transferBackPhoneNumber:(id)a10 isShowingFilteredPlans:(BOOL)a11;
- (double)_heightAnchorConstant;
- (id)getLocalizedStringIf:(id)a3 then:(id)a4 otherwise:(id)a5;
- (id)getRemoteDeviceDisplayName:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (void)_cancelButtonTapped;
- (void)_cancelTransferringPlan;
- (void)_continueButtonTapped;
- (void)_maybeAutoInstallPendingPlan;
- (void)_maybeLaunchURLForCarrierDirectAuth:(id)a3;
- (void)_otherButtonTapped;
- (void)_showAlert:(id)a3;
- (void)_skipButtonTapped;
- (void)_startLocalPlanConversion;
- (void)_startPendingInstall:(id)a3;
- (void)_startPlanTransfer:(id)a3;
- (void)_transferConsentOnSource;
- (void)_userDisagreedTermsAndConditions;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation TSSinglePlanTransferViewController

- (TSSinglePlanTransferViewController)initWithTransferPlan:(id)a3 isPhysical:(BOOL)a4 isIneligible:(BOOL)a5 inBuddy:(BOOL)a6 confirmCellularPlanTransfer:(BOOL)a7 showOtherOptions:(BOOL)a8 isStandaloneProximityFlow:(BOOL)a9 transferBackPhoneNumber:(id)a10 isShowingFilteredPlans:(BOOL)a11
{
  v11 = a5;
  v12 = a4;
  v15 = a3;
  v50 = a10;
  v16 = !v12;
  if (v11)
  {
    v16 = 4;
  }

  self->_planType = v16;
  v17 = [v15 objectForKeyedSubscript:@"planItem"];
  v18 = [v17 plan];
  planItem = self->_planItem;
  self->_planItem = v18;

  v20 = [(CTRemotePlan *)self->_planItem carrierName];
  carrierName = self->_carrierName;
  self->_carrierName = v20;

  v22 = [v15 objectForKeyedSubscript:@"deviceInfo"];
  v23 = [v22 deviceName];
  deviceName = self->_deviceName;
  self->_deviceName = v23;

  v25 = [v15 objectForKeyedSubscript:@"planItem"];
  v26 = [v25 phoneNumber];
  v27 = [v26 formattedPhoneNumber];
  phoneNumber = self->_phoneNumber;
  self->_phoneNumber = v27;

  if (!self->_phoneNumber)
  {
    v29 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v30 = [v29 localizedStringForKey:@"PHONE_NUMBER" value:&stru_28753DF48 table:@"Localizable"];
    v31 = self->_phoneNumber;
    self->_phoneNumber = v30;
  }

  planType = self->_planType;
  v33 = [(CTRemotePlan *)self->_planItem transferAttributes];
  v34 = +[TSSinglePlanTransferViewController getTitleAndDetailsForPlanType:transferCapability:isShowingFilteredPlans:carrier:](TSSinglePlanTransferViewController, "getTitleAndDetailsForPlanType:transferCapability:isShowingFilteredPlans:carrier:", planType, [v33 transferCapability], a11, self->_carrierName);

  v35 = [v34 objectForKeyedSubscript:@"title"];
  v36 = [v34 objectForKeyedSubscript:@"details"];
  v51.receiver = self;
  v51.super_class = TSSinglePlanTransferViewController;
  v37 = [(OBTableWelcomeController *)&v51 initWithTitle:v35 detailText:v36 symbolName:@"antenna.radiowaves.left.and.right" adoptTableViewScrollView:1];
  v38 = v37;
  if (v37)
  {
    objc_storeStrong(&v37->_transferPlan, a3);
    v38->_inBuddy = a6;
    v38->_confirmCellularPlanTransfer = a7;
    v38->_showOtherOptions = a8;
    v38->_isStandaloneProximityFlow = a9;
    v38->_backToSelfOption = 0;
    v39 = [(CTRemotePlan *)v38->_planItem transferAttributes];
    v38->_followDirections = [v39 isSecuredFlow] | a7;

    v38->_speedBumper = v50 == 0;
    objc_storeStrong(&v38->_transferBackPhoneNumber, a10);
    v40 = [MEMORY[0x277CCAB98] defaultCenter];
    [v40 addObserver:v38 selector:sel__transferConsentOnSource name:@"transfer.consent.on.source" object:0];

    v41 = [MEMORY[0x277CCAB98] defaultCenter];
    [v41 addObserver:v38 selector:sel__cancelTransferringPlan name:@"ss.user.canceled" object:0];

    v42 = [MEMORY[0x277CCAB98] defaultCenter];
    [v42 addObserver:v38 selector:sel__userDisagreedTermsAndConditions name:@"user.disagreed.terms.and.conditions" object:0];
  }

  if (_os_feature_enabled_impl())
  {
    v43 = objc_alloc(MEMORY[0x277CC37B0]);
    v44 = [v43 initWithQueue:MEMORY[0x277D85CD0]];
    ctClient = v38->_ctClient;
    v38->_ctClient = v44;
  }

  return v38;
}

- (TSSinglePlanTransferViewController)initWithPendingInstallPlan:(id)a3
{
  v5 = a3;
  self->_planType = 2;
  v6 = [v5 carrierName];
  carrierName = self->_carrierName;
  self->_carrierName = v6;

  phoneNumber = self->_phoneNumber;
  self->_phoneNumber = 0;

  self->_showOtherOptions = 1;
  if (!self->_phoneNumber)
  {
    v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:@"PHONE_NUMBER" value:&stru_28753DF48 table:@"Localizable"];
    v11 = self->_phoneNumber;
    self->_phoneNumber = v10;
  }

  v12 = +[TSUtilities inBuddy];
  v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v14 = v13;
  if (v12)
  {
    v15 = [v13 localizedStringForKey:@"SETTING_UP_CELLULAR" value:&stru_28753DF48 table:@"Localizable"];

    v16 = [v5 carrierName];
    if ([v16 length])
    {
      v17 = MEMORY[0x277CCACA8];
      v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v19 = v18;
      v20 = @"SINGLE_ALS_INBUDDY_DETAIL_%@";
LABEL_8:
      v21 = [v18 localizedStringForKey:v20 value:&stru_28753DF48 table:@"Localizable"];
      v22 = [v5 carrierName];
      v23 = [v17 stringWithFormat:v21, v22];

      goto LABEL_12;
    }

    v24 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v19 = v24;
    v25 = @"SINGLE_ALS_INBUDDY_DETAIL_NO_CARRIER";
  }

  else
  {
    v15 = [v13 localizedStringForKey:@"SET_UP_ESIM" value:&stru_28753DF48 table:@"Localizable"];

    v16 = [v5 carrierName];
    if ([v16 length])
    {
      v17 = MEMORY[0x277CCACA8];
      v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v19 = v18;
      v20 = @"SINGLE_ALS_DETAIL_%@";
      goto LABEL_8;
    }

    v24 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v19 = v24;
    v25 = @"SINGLE_ALS_DETAIL_NO_CARRIER";
  }

  v23 = [v24 localizedStringForKey:v25 value:&stru_28753DF48 table:@"Localizable"];
LABEL_12:

  v32.receiver = self;
  v32.super_class = TSSinglePlanTransferViewController;
  v26 = [(OBTableWelcomeController *)&v32 initWithTitle:v15 detailText:v23 symbolName:@"antenna.radiowaves.left.and.right"];
  v27 = v26;
  if (v26)
  {
    objc_storeStrong(&v26->_pendingInstallPlan, a3);
    v27->_backToSelfOption = 0;
  }

  if (_os_feature_enabled_impl())
  {
    v28 = objc_alloc(MEMORY[0x277CC37B0]);
    v29 = [v28 initWithQueue:MEMORY[0x277D85CD0]];
    ctClient = v27->_ctClient;
    v27->_ctClient = v29;
  }

  return v27;
}

- (TSSinglePlanTransferViewController)initWithCrossPlatformTransferPlan:(id)a3
{
  v5 = a3;
  self->_planType = 5;
  v6 = [v5 carrierName];
  carrierName = self->_carrierName;
  self->_carrierName = v6;

  v8 = [(CTRemotePlan *)self->_planItem phoneNumber];
  v9 = [TSUtilities formattedPhoneNumber:v8 withCountryCode:0];
  phoneNumber = self->_phoneNumber;
  self->_phoneNumber = v9;

  if (!self->_phoneNumber)
  {
    v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v12 = [v11 localizedStringForKey:@"PHONE_NUMBER" value:&stru_28753DF48 table:@"Localizable"];
    v13 = self->_phoneNumber;
    self->_phoneNumber = v12;
  }

  self->_showOtherOptions = 1;
  v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v15 = [v14 localizedStringForKey:@"SINGLE_ESIM_TRANSFER_TITLE" value:&stru_28753DF48 table:@"Localizable"];

  v16 = +[TSUtilities isPad];
  v17 = MEMORY[0x277CCACA8];
  v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v19 = v18;
  if (v16)
  {
    v20 = [v18 localizedStringForKey:@"SINGLE_ESIM_CROSSPLATFORM_TRANSFER_DETAIL_NO_NUMBER_%@" value:&stru_28753DF48 table:@"Localizable"];
    v21 = [v5 carrierName];
    v22 = [v17 stringWithFormat:v20, v21];
  }

  else
  {
    v20 = [v18 localizedStringForKey:@"SINGLE_ESIM_CROSSPLATFORM_TRANSFER_DETAIL_%@_%@" value:&stru_28753DF48 table:@"Localizable"];
    v21 = [v5 phoneNumber];
    v23 = [v21 formattedPhoneNumber];
    v24 = [v5 carrierName];
    v22 = [v17 stringWithFormat:v20, v23, v24];
  }

  v31.receiver = self;
  v31.super_class = TSSinglePlanTransferViewController;
  v25 = [(OBTableWelcomeController *)&v31 initWithTitle:v15 detailText:v22 symbolName:@"antenna.radiowaves.left.and.right"];
  v26 = v25;
  if (v25)
  {
    objc_storeStrong(&v25->_crossPlatformTransferPlan, a3);
  }

  if (_os_feature_enabled_impl())
  {
    v27 = objc_alloc(MEMORY[0x277CC37B0]);
    v28 = [v27 initWithQueue:MEMORY[0x277D85CD0]];
    ctClient = v26->_ctClient;
    v26->_ctClient = v28;
  }

  return v26;
}

- (TSSinglePlanTransferViewController)initWithLocalPhysical:(id)a3 carrierName:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"CONVERT_TO_ESIM" value:&stru_28753DF48 table:@"Localizable"];

  v10 = MEMORY[0x277CCACA8];
  v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v12 = [v11 localizedStringForKey:@"ON_DEVICE_PHYSICAL_TRANSFER_DETAIL_%@_%@" value:&stru_28753DF48 table:@"Localizable"];
  v13 = [v10 stringWithFormat:v12, v7, v6];

  v28.receiver = self;
  v28.super_class = TSSinglePlanTransferViewController;
  v14 = [(OBTableWelcomeController *)&v28 initWithTitle:v9 detailText:&stru_28753DF48 symbolName:@"antenna.radiowaves.left.and.right"];
  v15 = v14;
  if (v14)
  {
    v14->_planType = 3;
    objc_storeStrong(&v14->_carrierName, a4);
    v16 = [v6 formattedPhoneNumber];
    phoneNumber = v15->_phoneNumber;
    v15->_phoneNumber = v16;

    if (!v15->_phoneNumber)
    {
      v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v19 = [v18 localizedStringForKey:@"PHONE_NUMBER" value:&stru_28753DF48 table:@"Localizable"];
      v20 = v15->_phoneNumber;
      v15->_phoneNumber = v19;
    }

    v21 = [(TSSinglePlanTransferViewController *)v15 headerView];
    [v21 addDetailLabel:v13 withPhoneNumber:v15->_phoneNumber];

    v15->_followDirections = 0;
    v15->_speedBumper = 1;
    v15->_backToSelfOption = 0;
    if (_os_feature_enabled_impl())
    {
      v22 = objc_alloc(MEMORY[0x277CC37B0]);
      v23 = [v22 initWithQueue:MEMORY[0x277D85CD0]];
      ctClient = v15->_ctClient;
      v15->_ctClient = v23;
    }

    v25 = v15;
  }

  else
  {
    v26 = _TSLogDomain();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      [TSSinglePlanTransferViewController initWithLocalPhysical:carrierName:];
    }
  }

  return v15;
}

+ (id)getTitleAndDetailsForPlanType:(unint64_t)a3 transferCapability:(unint64_t)a4 isShowingFilteredPlans:(BOOL)a5 carrier:(id)a6
{
  v6 = a5;
  v44[2] = *MEMORY[0x277D85DE8];
  v9 = a6;
  v10 = v9;
  if (!v9 || ![v9 length])
  {
    v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v12 = [v11 localizedStringForKey:@"YOUR_CARRIER" value:&stru_28753DF48 table:@"Localizable"];

    v10 = v12;
  }

  v13 = 0;
  if (a3 <= 1)
  {
    if (a3)
    {
      v15 = 0;
      if (a3 != 1)
      {
        goto LABEL_24;
      }

      v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v17 = v16;
      if (v6)
      {
        v15 = [v16 localizedStringForKey:@"SINGLE_ESIM_TRANSFER_FILTERED_TITLE" value:&stru_28753DF48 table:@"Localizable"];

        v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v19 = v18;
        v20 = @"SINGLE_ESIM_TRANSFER_FILTERED_DETAIL";
      }

      else
      {
        v15 = [v16 localizedStringForKey:@"PRXCARD_START_TITLE" value:&stru_28753DF48 table:@"Localizable"];

        v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v19 = v18;
        v20 = @"SINGLE_ESIM_TRANSFER_DETAIL";
      }
    }

    else
    {
      v22 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v23 = v22;
      if (v6)
      {
        v24 = @"SINGLE_ESIM_TRANSFER_FILTERED_TITLE";
      }

      else
      {
        v24 = @"PRXCARD_START_TITLE";
      }

      v15 = [v22 localizedStringForKey:v24 value:&stru_28753DF48 table:@"Localizable"];

      v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v19 = v18;
      v20 = @"PHYSICAL_TRANSFER_DETAIL";
    }

LABEL_22:
    v13 = [v18 localizedStringForKey:v20 value:&stru_28753DF48 table:@"Localizable"];
LABEL_23:
  }

  else if (a3 - 2 >= 2)
  {
    v15 = 0;
    if (a3 == 4)
    {
      v21 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v15 = [v21 localizedStringForKey:@"CONTACT_CARRIER_TO_SETUP_ESIM" value:&stru_28753DF48 table:@"Localizable"];

      switch(a4)
      {
        case 0uLL:
        case 2uLL:
        case 3uLL:
        case 4uLL:
        case 5uLL:
        case 6uLL:
        case 7uLL:
        case 8uLL:
        case 0xBuLL:
        case 0x14uLL:
          v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v19 = v18;
          v20 = @"SINGLE_INELIGIBLE_ESIM_TRANSFER_UNKNOWN";
          goto LABEL_22;
        case 1uLL:
        case 0xDuLL:
          v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v19 = v18;
          v20 = @"SINGLE_INELIGIBLE_ESIM_TRANSFER_NOT_SUPPORTED_DETAIL";
          goto LABEL_22;
        case 9uLL:
          v28 = MEMORY[0x277CCACA8];
          v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v29 = [v19 localizedStringForKey:@"SINGLE_INELIGIBLE_ESIM_TRANSFER_CAPABILITY_INELIGIBLE_DETAIL_%@" value:&stru_28753DF48 table:@"Localizable"];
          v13 = [v28 stringWithFormat:v29, v10];

          goto LABEL_23;
        case 0xAuLL:
          v36 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v31 = [v36 localizedStringForKey:@"TRANSFER_INELIGIBLE_FOR_NOW_PLAN" value:&stru_28753DF48 table:@"Localizable"];

          v37 = MEMORY[0x277CCACA8];
          v34 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v38 = [v34 localizedStringForKey:@"TRANSFER_INELIGIBLE_FOR_NOW_PLAN_DETAIL_%@" value:&stru_28753DF48 table:@"Localizable"];
          [v37 stringWithFormat:v38, v10];
          goto LABEL_39;
        case 0xCuLL:
          v39 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v31 = [v39 localizedStringForKey:@"TRANSFER_INELIGIBLE_PLAN" value:&stru_28753DF48 table:@"Localizable"];

          v40 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v13 = [v40 localizedStringForKey:@"SINGLE_INELIGIBLE_ESIM_TRANSFER_CAPABILITY_INELIGIBLE_DETAIL_ACTIVATION_POLICY_MISMATCH_CARRIER_UNLOCK" value:&stru_28753DF48 table:@"Localizable"];

          goto LABEL_40;
        case 0xEuLL:
          v30 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v31 = [v30 localizedStringForKey:@"TRANSFER_UPDATE_REQUIRED_TITLE" value:&stru_28753DF48 table:@"Localizable"];

          v32 = MEMORY[0x277CCACA8];
          v33 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v34 = v33;
          v35 = @"TRANSFER_TARGET_UPDATE_REQUIRED_DETAIL";
          goto LABEL_38;
        case 0xFuLL:
          v41 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v31 = [v41 localizedStringForKey:@"TRANSFER_UPDATE_REQUIRED_TITLE" value:&stru_28753DF48 table:@"Localizable"];

          v32 = MEMORY[0x277CCACA8];
          v33 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v34 = v33;
          v35 = @"TRANSFER_SOURCE_UPDATE_REQUIRED_DETAIL";
LABEL_38:
          v38 = [v33 localizedStringForKey:v35 value:&stru_28753DF48 table:@"Localizable"];
          [v32 stringWithFormat:v38, v42];
          v13 = LABEL_39:;

LABEL_40:
          v15 = v31;
          break;
        case 0x10uLL:
          v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v19 = v18;
          v20 = @"SINGLE_INELIGIBLE_ESIM_TRANSFER_CAPABILITY_MISSING_CERTIFICATE";
          goto LABEL_22;
        case 0x11uLL:
          v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v19 = v18;
          v20 = @"SINGLE_INELIGIBLE_ESIM_TRANSFER_CAPABILITY_REGULATORY_RESTRICTED";
          goto LABEL_22;
        case 0x12uLL:
          v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v19 = v18;
          v20 = @"SINGLE_INELIGIBLE_ESIM_TRANSFER_CAPABILITY_UNREGULATORY_RESTRICTED";
          goto LABEL_22;
        case 0x13uLL:
          v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v19 = v18;
          v20 = @"SINGLE_INELIGIBLE_ESIM_TRANSFER_CAPABILITY_UNKNOWN_LOCATION";
          goto LABEL_22;
        default:
          v13 = 0;
          break;
      }
    }
  }

  else
  {
    v14 = _TSLogDomain();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      +[TSSinglePlanTransferViewController getTitleAndDetailsForPlanType:transferCapability:isShowingFilteredPlans:carrier:];
    }

    v13 = 0;
    v15 = 0;
  }

LABEL_24:
  v43[0] = @"title";
  v43[1] = @"details";
  v44[0] = v15;
  v44[1] = v13;
  v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:v43 count:2];

  v26 = *MEMORY[0x277D85DE8];

  return v25;
}

- (void)viewDidLoad
{
  v33.receiver = self;
  v33.super_class = TSSinglePlanTransferViewController;
  [(TSOBTableWelcomeController *)&v33 viewDidLoad];
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 addObserver:self selector:sel__updateTrayButtonText_ name:@"esim.install.state.changed" object:0];

  self->_inBuddy = +[TSUtilities inBuddy];
  if (+[TSUtilities inBuddy]&& self->_planType == 2 && self->_pendingInstallPlan)
  {
    self->_needAutoInstallPendingPlan = 1;
    [(TSSinglePlanTransferViewController *)self _maybeAutoInstallPendingPlan];
    return;
  }

  if (self->_transferPlan)
  {
    v4 = objc_alloc(MEMORY[0x277D75B40]);
    v5 = [v4 initWithFrame:2 style:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    [(OBTableWelcomeController *)self setTableView:v5];

    v6 = [(OBTableWelcomeController *)self tableView];
    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];

    v7 = [(OBTableWelcomeController *)self tableView];
    [v7 setRowHeight:*MEMORY[0x277D76F30]];

    v8 = [(OBTableWelcomeController *)self tableView];
    [v8 setEstimatedRowHeight:1.0];

    v9 = [(OBTableWelcomeController *)self tableView];
    [v9 setAllowsMultipleSelection:0];

    v10 = [(OBTableWelcomeController *)self tableView];
    [v10 setScrollEnabled:1];

    v11 = [(OBTableWelcomeController *)self tableView];
    v12 = [MEMORY[0x277D75348] clearColor];
    [v11 setBackgroundColor:v12];

    v13 = [(OBTableWelcomeController *)self tableView];
    [v13 setDataSource:self];

    v14 = [(OBTableWelcomeController *)self tableView];
    [v14 reloadData];

    v15 = [(OBTableWelcomeController *)self tableView];
    v16 = [v15 heightAnchor];
    [(TSSinglePlanTransferViewController *)self _heightAnchorConstant];
    v17 = [v16 constraintEqualToConstant:?];
    tableHeightAnchor = self->_tableHeightAnchor;
    self->_tableHeightAnchor = v17;

    [(NSLayoutConstraint *)self->_tableHeightAnchor setActive:1];
  }

  v19 = +[SSOBBoldTrayButton boldButton];
  continueButton = self->_continueButton;
  self->_continueButton = v19;

  [(SSOBBoldTrayButton *)self->_continueButton addTarget:self action:sel__continueButtonTapped forControlEvents:64];
  planType = self->_planType;
  switch(planType)
  {
    case 2uLL:
      v22 = @"SET_UP_ESIM";
      break;
    case 5uLL:
      v22 = @"CONTINUE";
      break;
    case 3uLL:
      v22 = @"PHYSICAL_TRANSFER_CONTINUE";
      break;
    default:
      goto LABEL_14;
  }

  v23 = self->_continueButton;
  v24 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v25 = [v24 localizedStringForKey:v22 value:&stru_28753DF48 table:@"Localizable"];
  [(SSOBBoldTrayButton *)v23 setTitle:v25 forState:0];

  planType = self->_planType;
LABEL_14:
  if (planType > 5 || ((1 << planType) & 0x2C) == 0 || (-[TSSinglePlanTransferViewController buttonTray](self, "buttonTray"), v26 = objc_claimAutoreleasedReturnValue(), [v26 addButton:self->_continueButton], v26, self->_planType != 3))
  {
    if (!self->_transferBackPhoneNumber && !+[TSUtilities inBuddy]&& self->_showOtherOptions)
    {
      v27 = [MEMORY[0x277D37650] linkButton];
      [v27 addTarget:self action:sel__otherButtonTapped forControlEvents:64];
      v28 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v29 = [v28 localizedStringForKey:@"OTHER_OPTIONS" value:&stru_28753DF48 table:@"Localizable"];
      [v27 setTitle:v29 forState:0];

      v30 = [(TSSinglePlanTransferViewController *)self buttonTray];
      [v30 addButton:v27];
    }
  }

  if (+[TSUtilities inBuddy])
  {
    if (self->_isStandaloneProximityFlow)
    {
      v31 = [(OBBaseWelcomeController *)self navigationItem];
      [v31 setHidesBackButton:1];
    }
  }

  else
  {
    v32 = [(TSSinglePlanTransferViewController *)self delegate];
    [v32 setCancelNavigationBarItems:self];
  }
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  if (+[TSUtilities inBuddy])
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (id)getRemoteDeviceDisplayName:(id)a3
{
  v3 = a3;
  v4 = [v3 modelName];
  v5 = v4;
  if (!v4 || ![v4 length])
  {
    v6 = [v3 deviceName];

    v5 = v6;
  }

  return v5;
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
    transferPlan = self->_transferPlan;
    if (transferPlan)
    {
      v30 = [(NSDictionary *)transferPlan objectForKeyedSubscript:@"planItem"];
      v32 = [(NSDictionary *)self->_transferPlan objectForKeyedSubscript:@"deviceInfo"];
      v63 = [(TSSinglePlanTransferViewController *)self getRemoteDeviceDisplayName:v32];

      v33 = [v30 label];
      if (+[TSUtilities isPad])
      {
        v34 = [v30 carrierName];
        if ([v34 length])
        {
          v25 = [v30 carrierName];
        }

        else
        {
          v39 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v25 = [v39 localizedStringForKey:@"CARRIER" value:&stru_28753DF48 table:@"Localizable"];
        }

        v40 = v33;

        v41 = v63;
        if ([v63 length])
        {
          v42 = MEMORY[0x277CCACA8];
          v37 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v43 = [v37 localizedStringForKey:@"USED_ON_%@" value:&stru_28753DF48 table:@"Localizable"];
          v60 = v63;
LABEL_19:
          v44 = v42;
LABEL_27:
          v27 = [v44 stringWithFormat:v43, v60, deviceName];

LABEL_33:
          v28 = [MEMORY[0x277D755B8] systemImageNamed:@"iphone.and.arrow.forward"];
          v46 = [v10 textLabel];
          [v46 setText:v25];

          v47 = [v10 detailTextLabel];
          [v47 setText:v27];

          goto LABEL_34;
        }

        goto LABEL_32;
      }

      if (self->_planType != 4)
      {
        v35 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v25 = [v35 localizedStringForKey:@"TRANSFER_PLAN_ITEM_TITLE" value:&stru_28753DF48 table:@"Localizable"];

        if ([(NSString *)self->_phoneNumber length])
        {
          v36 = MEMORY[0x277CCACA8];
          v37 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v38 = [v37 localizedStringForKey:@"TRANSFER_PLAN_ITEM_SUBTITLE_@" value:&stru_28753DF48 table:@"Localizable"];
          v27 = [v36 stringWithFormat:v38, self->_phoneNumber];
        }

        else
        {
          v37 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v27 = [v37 localizedStringForKey:@"TRANSFER_PLAN_ITEM_SUBTITLE_NO_PHONENUMBER" value:&stru_28753DF48 table:@"Localizable"];
        }

        v40 = v33;
        v41 = v63;
        goto LABEL_33;
      }

      if ([(NSString *)self->_phoneNumber length])
      {
        v25 = self->_phoneNumber;
      }

      else
      {
        v45 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v25 = [v45 localizedStringForKey:@"TRANSFER_PLAN_ITEM_TITLE_NO_PHONENUMBER" value:&stru_28753DF48 table:@"Localizable"];
      }

      v40 = v33;
      v41 = v63;
      if (-[NSString length](self->_deviceName, "length") && [v40 length])
      {
        v62 = MEMORY[0x277CCACA8];
        v37 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v43 = [v37 localizedStringForKey:@"TRANSFER_PLAN_ITEM_DETAIL_WITH_LABEL_%@_%@" value:&stru_28753DF48 table:@"Localizable"];
        v60 = v40;
        deviceName = self->_deviceName;
      }

      else
      {
        if (![(NSString *)self->_deviceName length])
        {
          if ([v40 length])
          {
            v42 = MEMORY[0x277CCACA8];
            v37 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
            v43 = [v37 localizedStringForKey:@"TRANSFER_PLAN_ITEM_DETAIL_WITH_LABEL_NO_DEVICE_NAME_%@" value:&stru_28753DF48 table:@"Localizable"];
            v60 = v40;
            goto LABEL_19;
          }

LABEL_32:
          v37 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v27 = [v37 localizedStringForKey:@"TRANSFER_PLAN_ITEM_DETAIL_NO_DEVICE_NAME" value:&stru_28753DF48 table:@"Localizable"];
          goto LABEL_33;
        }

        v62 = MEMORY[0x277CCACA8];
        v37 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v43 = [v37 localizedStringForKey:@"TRANSFER_PLAN_ITEM_DETAIL_%@" value:&stru_28753DF48 table:@"Localizable"];
        v60 = self->_deviceName;
      }

      v44 = v62;
      goto LABEL_27;
    }
  }

  if (!+[TSUtilities inBuddy])
  {
    v27 = 0;
    v25 = 0;
    v28 = 0;
    goto LABEL_35;
  }

  v24 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v25 = [v24 localizedStringForKey:@"SET_UP_LATER" value:&stru_28753DF48 table:@"Localizable"];

  v26 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v27 = [v26 localizedStringForKey:@"CONTINUE_WITHOUT_CELLULAR" value:&stru_28753DF48 table:@"Localizable"];

  v28 = [MEMORY[0x277D755B8] systemImageNamed:@"gear"];
  v29 = [v10 textLabel];
  [v29 setText:v25];

  v30 = [v10 detailTextLabel];
  [v30 setText:v27];
LABEL_34:

LABEL_35:
  v48 = [MEMORY[0x277D75348] systemBlueColor];
  v49 = [v28 imageWithTintColor:v48];

  [v49 size];
  v51 = v50 * 1.5;
  [v49 size];
  v65.height = v52 * 1.5;
  v65.width = v51;
  UIGraphicsBeginImageContextWithOptions(v65, 0, 0.0);
  [v49 size];
  v54 = v53 * 1.5;
  [v49 size];
  [v49 drawInRect:{0.0, 0.0, v54, v55 * 1.5}];
  v56 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  v57 = [v56 imageWithRenderingMode:1];
  v58 = [v10 imageView];
  [v58 setImage:v56];

  if (self->_planType == 4)
  {
    [v10 setSelectionStyle:0];
    [v10 setAccessoryType:0];
  }

  return v10;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v5 = a4;
  if (self->_planType != 4)
  {
    v7 = v5;
    if ([v5 section])
    {
      if ([v7 section] == 1)
      {
        [(TSSinglePlanTransferViewController *)self _skipButtonTapped];
      }
    }

    else
    {
      [(TSSinglePlanTransferViewController *)self _continueButtonTapped];
    }

    v6 = [(OBTableWelcomeController *)self tableView];
    [v6 deselectRowAtIndexPath:v7 animated:1];

    v5 = v7;
  }
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  v4 = objc_alloc(MEMORY[0x277D75D18]);
  v5 = [v4 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];

  return v5;
}

- (id)getLocalizedStringIf:(id)a3 then:(id)a4 otherwise:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (v7 && [v7 length])
  {
    v10 = MEMORY[0x277CCACA8];
    v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v12 = [v11 localizedStringForKey:v8 value:&stru_28753DF48 table:@"Localizable"];
    v13 = [v10 stringWithFormat:v12, v7];
  }

  else
  {
    v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v13 = [v11 localizedStringForKey:v9 value:&stru_28753DF48 table:@"Localizable"];
  }

  return v13;
}

- (void)_continueButtonTapped
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

uint64_t __59__TSSinglePlanTransferViewController__continueButtonTapped__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1[159] == 3)
  {
    return [v1 _startLocalPlanConversion];
  }

  else
  {
    return [v1 _startPlanTransfer:v1[160]];
  }
}

- (void)_cancelButtonTapped
{
  if (self->_planType != 4)
  {
    v3 = [(NSDictionary *)self->_transferPlan objectForKey:@"planItem"];
    if (v3)
    {
      v4 = [(NSDictionary *)self->_transferPlan objectForKeyedSubscript:@"planItem"];
      v5 = [v4 isTransferablePlan];
    }

    else
    {
      v5 = 0;
    }

    v6 = [(NSDictionary *)self->_transferPlan objectForKey:@"planItem"];
    if (v6)
    {
      v7 = [(NSDictionary *)self->_transferPlan objectForKeyedSubscript:@"planItem"];
      v8 = [v7 isOnDeviceTransferredPlan];
    }

    else
    {
      v8 = 0;
    }

    v9 = +[TSCoreTelephonyClientCache sharedInstance];
    v10 = objc_alloc(MEMORY[0x277CC3720]);
    v11 = +[TSUtilities inBuddy];
    if (v5)
    {
      carrierName = self->_carrierName;
    }

    else
    {
      carrierName = &stru_28753DF48;
    }

    if (self->_pendingInstallPlan)
    {
      v13 = self->_carrierName;
    }

    else
    {
      v13 = &stru_28753DF48;
    }

    v14 = &stru_28753DF48;
    if (v8)
    {
      v14 = self->_carrierName;
    }

    v15 = [v10 initWithInBuddy:v11 transferablePlans:carrierName selectedTransferablePlans:&stru_28753DF48 alsPlans:v13 selectedAlsPlans:&stru_28753DF48 odaPlans:v14 transferPlanCarriers:&stru_28753DF48 selectedTransferPlanCarriers:v5 alsPlanCarriers:0 selectedAlsPlanCarriers:? odaPlanCarriers:? selectedOdaPlanCarriers:? sourceDevicesCount:? selectedSourceDevicesCount:?];
    [v9 submitSimSetupUsage:v15];
  }

  v16 = [(TSSinglePlanTransferViewController *)self delegate];
  [v16 userDidTapCancel];
}

- (void)_otherButtonTapped
{
  if (self->_planType != 4)
  {
    v3 = [(NSDictionary *)self->_transferPlan objectForKey:@"planItem"];
    if (v3)
    {
      v4 = [(NSDictionary *)self->_transferPlan objectForKeyedSubscript:@"planItem"];
      v5 = [v4 isTransferablePlan];
    }

    else
    {
      v5 = 0;
    }

    v6 = [(NSDictionary *)self->_transferPlan objectForKey:@"planItem"];
    if (v6)
    {
      v7 = [(NSDictionary *)self->_transferPlan objectForKeyedSubscript:@"planItem"];
      v8 = [v7 isOnDeviceTransferredPlan];
    }

    else
    {
      v8 = 0;
    }

    v9 = +[TSCoreTelephonyClientCache sharedInstance];
    v10 = objc_alloc(MEMORY[0x277CC3720]);
    v11 = +[TSUtilities inBuddy];
    if (v5)
    {
      carrierName = self->_carrierName;
    }

    else
    {
      carrierName = &stru_28753DF48;
    }

    if (self->_pendingInstallPlan)
    {
      v13 = self->_carrierName;
    }

    else
    {
      v13 = &stru_28753DF48;
    }

    v14 = &stru_28753DF48;
    if (v8)
    {
      v14 = self->_carrierName;
    }

    v15 = [v10 initWithInBuddy:v11 transferablePlans:carrierName selectedTransferablePlans:&stru_28753DF48 alsPlans:v13 selectedAlsPlans:&stru_28753DF48 odaPlans:v14 transferPlanCarriers:&stru_28753DF48 selectedTransferPlanCarriers:v5 alsPlanCarriers:0 selectedAlsPlanCarriers:? odaPlanCarriers:? selectedOdaPlanCarriers:? sourceDevicesCount:? selectedSourceDevicesCount:?];
    [v9 submitSimSetupUsage:v15];
  }

  self->_isOtherButtonTapped = 1;
  v16 = [(TSSinglePlanTransferViewController *)self delegate];
  [v16 viewControllerDidComplete:self];
}

- (void)_skipButtonTapped
{
  if ((self->_planType == 2 || (+[TSCoreTelephonyClientCache sharedInstance](TSCoreTelephonyClientCache, "sharedInstance"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 isEmbeddedSIMOnlyConfig], v3, v4)) && !+[TSUtilities areAnyPlansOnDevice](TSUtilities, "areAnyPlansOnDevice"))
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
    v20[2] = __55__TSSinglePlanTransferViewController__skipButtonTapped__block_invoke;
    v20[3] = &unk_279B44B38;
    v20[4] = self;
    v14 = [v11 actionWithTitle:v13 style:1 handler:v20];
    [v10 addAction:v14];

    v15 = MEMORY[0x277D750F8];
    v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v17 = [v16 localizedStringForKey:@"CANCEL" value:&stru_28753DF48 table:@"Localizable"];
    v18 = [v15 actionWithTitle:v17 style:0 handler:&__block_literal_global_27];
    [v10 addAction:v18];

    [(TSSinglePlanTransferViewController *)self presentViewController:v10 animated:1 completion:0];
  }

  else
  {
    self->_isSkipButtonTapped = 1;
    v19 = [(TSSinglePlanTransferViewController *)self delegate];
    [v19 viewControllerDidComplete:self];
  }
}

void __55__TSSinglePlanTransferViewController__skipButtonTapped__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setIsSkipButtonTapped:1];
  v2 = [*(a1 + 32) delegate];
  [v2 viewControllerDidComplete:*(a1 + 32)];
}

- (void)_startLocalPlanConversion
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = +[TSUtilities getSpinnerBusyText];
  [(OBWelcomeController *)self _showButtonTraySpinnerWithBusyText:v3];

  v4 = +[TSCoreTelephonyClientCache sharedInstance];
  v5 = [objc_alloc(MEMORY[0x277CC3720]) initWithInBuddy:+[TSUtilities inBuddy](TSUtilities transferablePlans:"inBuddy") selectedTransferablePlans:1 alsPlans:1 selectedAlsPlans:0 odaPlans:0 transferPlanCarriers:0 selectedTransferPlanCarriers:self->_carrierName alsPlanCarriers:self->_carrierName selectedAlsPlanCarriers:&stru_28753DF48 odaPlanCarriers:&stru_28753DF48 selectedOdaPlanCarriers:&stru_28753DF48 sourceDevicesCount:&stru_28753DF48 selectedSourceDevicesCount:{1, 1}];
  [v4 submitSimSetupUsage:v5];

  v6 = _TSLogDomain();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v13 = "[TSSinglePlanTransferViewController _startLocalPlanConversion]";
    _os_log_impl(&dword_262AA8000, v6, OS_LOG_TYPE_DEFAULT, "Start converting local 4FF @%s", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v7 = [(TSSinglePlanTransferViewController *)self delegate];
  [v7 viewControllerDidComplete:self];

  v8 = +[TSCoreTelephonyClientCache sharedInstance];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __63__TSSinglePlanTransferViewController__startLocalPlanConversion__block_invoke;
  v10[3] = &unk_279B44828;
  objc_copyWeak(&v11, buf);
  [v8 convertPhysicalSIMToeSIMWithCompletion:v10];

  objc_destroyWeak(&v11);
  objc_destroyWeak(buf);
  v9 = *MEMORY[0x277D85DE8];
}

void __63__TSSinglePlanTransferViewController__startLocalPlanConversion__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __63__TSSinglePlanTransferViewController__startLocalPlanConversion__block_invoke_2;
  v5[3] = &unk_279B443D8;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v5);

  objc_destroyWeak(&v7);
}

void __63__TSSinglePlanTransferViewController__startLocalPlanConversion__block_invoke_2(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained && *(a1 + 32))
  {
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    [v3 postNotificationName:@"transfer.failed" object:*(a1 + 32)];

    v4 = _TSLogDomain();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v7 = 138412546;
      v8 = v5;
      v9 = 2080;
      v10 = "[TSSinglePlanTransferViewController _startLocalPlanConversion]_block_invoke_2";
      _os_log_impl(&dword_262AA8000, v4, OS_LOG_TYPE_DEFAULT, "%@ @%s", &v7, 0x16u);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_startPlanTransfer:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _TSLogDomain();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v19 = v4;
    v20 = 2080;
    v21 = "[TSSinglePlanTransferViewController _startPlanTransfer:]";
    _os_log_impl(&dword_262AA8000, v5, OS_LOG_TYPE_DEFAULT, "plan: %@ @%s", buf, 0x16u);
  }

  v6 = +[TSCoreTelephonyClientCache sharedInstance];
  v7 = [objc_alloc(MEMORY[0x277CC3720]) initWithInBuddy:+[TSUtilities inBuddy](TSUtilities transferablePlans:"inBuddy") selectedTransferablePlans:1 alsPlans:1 selectedAlsPlans:0 odaPlans:0 transferPlanCarriers:0 selectedTransferPlanCarriers:self->_carrierName alsPlanCarriers:self->_carrierName selectedAlsPlanCarriers:&stru_28753DF48 odaPlanCarriers:&stru_28753DF48 selectedOdaPlanCarriers:&stru_28753DF48 sourceDevicesCount:&stru_28753DF48 selectedSourceDevicesCount:{1, 1}];
  [v6 submitSimSetupUsage:v7];

  v8 = [v4 objectForKeyedSubscript:@"planItem"];
  objc_storeStrong(&self->_selectedPlan, v8);
  v9 = [v8 plan];
  v10 = [v9 transferAttributes];
  v11 = [v10 transferCapability];

  if (v11 == 8)
  {
    [(TSSinglePlanTransferViewController *)self _maybeLaunchURLForCarrierDirectAuth:v8];
  }

  else
  {
    [(TSSinglePlanTransferViewController *)self setInstallingTransferPlan:1];
    [(OBWelcomeController *)self _showButtonTraySpinnerWithBusyText:&stru_28753DF48];
    v12 = [(TSSinglePlanTransferViewController *)self delegate];
    [v12 viewControllerDidComplete:self];

    [(TSSinglePlanTransferViewController *)self setBackToSelfOption:2];
    objc_initWeak(buf, self);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __57__TSSinglePlanTransferViewController__startPlanTransfer___block_invoke;
    block[3] = &unk_279B44250;
    v15 = v4;
    objc_copyWeak(&v17, buf);
    v16 = v9;
    dispatch_async(MEMORY[0x277D85CD0], block);

    objc_destroyWeak(&v17);
    objc_destroyWeak(buf);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __57__TSSinglePlanTransferViewController__startPlanTransfer___block_invoke(uint64_t a1)
{
  if (_os_feature_enabled_impl())
  {
    v2 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{*(a1 + 40), 0}];
    v3 = [objc_alloc(MEMORY[0x277CC36F0]) initWithPlans:v2];
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v5 = [WeakRetained ctClient];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __57__TSSinglePlanTransferViewController__startPlanTransfer___block_invoke_4;
    v12[3] = &unk_279B44828;
    objc_copyWeak(&v13, (a1 + 48));
    [v5 installMultiplePlans:v3 completionHandler:v12];

    objc_destroyWeak(&v13);
  }

  else
  {
    v6 = +[TSCoreTelephonyClientCache sharedInstance];
    v7 = [*(a1 + 32) objectForKeyedSubscript:@"planItem"];
    v8 = [v7 plan];
    v9 = [v8 planID];
    v10 = [*(a1 + 32) objectForKeyedSubscript:@"deviceInfo"];
    v11 = [v10 deviceID];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __57__TSSinglePlanTransferViewController__startPlanTransfer___block_invoke_2;
    v14[3] = &unk_279B44828;
    objc_copyWeak(&v15, (a1 + 48));
    [v6 transferPlanWithIdentifier:v9 fromDevice:v11 completionHandler:v14];

    objc_destroyWeak(&v15);
  }
}

void __57__TSSinglePlanTransferViewController__startPlanTransfer___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = dispatch_time(0, 100000000);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __57__TSSinglePlanTransferViewController__startPlanTransfer___block_invoke_3;
  v6[3] = &unk_279B445C0;
  v7 = v3;
  v5 = v3;
  objc_copyWeak(&v8, (a1 + 32));
  dispatch_after(v4, MEMORY[0x277D85CD0], v6);
  objc_destroyWeak(&v8);
}

void __57__TSSinglePlanTransferViewController__startPlanTransfer___block_invoke_3(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [MEMORY[0x277CCAB98] defaultCenter];
    [v2 postNotificationName:@"transfer.failed" object:*(a1 + 32)];
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setInstallingTransferPlan:0];
}

void __57__TSSinglePlanTransferViewController__startPlanTransfer___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = dispatch_time(0, 100000000);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __57__TSSinglePlanTransferViewController__startPlanTransfer___block_invoke_5;
  v6[3] = &unk_279B445C0;
  v7 = v3;
  v5 = v3;
  objc_copyWeak(&v8, (a1 + 32));
  dispatch_after(v4, MEMORY[0x277D85CD0], v6);
  objc_destroyWeak(&v8);
}

void __57__TSSinglePlanTransferViewController__startPlanTransfer___block_invoke_5(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [MEMORY[0x277CCAB98] defaultCenter];
    [v2 postNotificationName:@"transfer.failed" object:*(a1 + 32)];
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setInstallingTransferPlan:0];
}

- (void)_cancelTransferringPlan
{
  v3 = [(TSSinglePlanTransferViewController *)self delegate];
  [v3 cancelNextPane];

  self->_requireDelayBluetoothConnection = 1;
  v4 = +[TSCoreTelephonyClientCache sharedInstance];
  planItem = self->_planItem;
  v6 = [(NSDictionary *)self->_transferPlan objectForKeyedSubscript:@"deviceInfo"];
  v7 = [v6 deviceID];
  [v4 cancelTransferPlan:planItem fromDevice:v7 completionHandler:&__block_literal_global_300];

  [(OBWelcomeController *)self _hideButtonTraySpinner];
}

void __61__TSSinglePlanTransferViewController__cancelTransferringPlan__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = _TSLogDomain();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __61__TSSinglePlanTransferViewController__cancelTransferringPlan__block_invoke_cold_1();
    }
  }
}

- (void)_maybeAutoInstallPendingPlan
{
  if (self->_needAutoInstallPendingPlan)
  {
    v3 = [(TSSinglePlanTransferViewController *)self navigationController];

    if (v3)
    {
      self->_needAutoInstallPendingPlan = 0;
      pendingInstallPlan = self->_pendingInstallPlan;

      [(TSSinglePlanTransferViewController *)self _startPendingInstall:pendingInstallPlan];
    }
  }
}

- (void)_startPendingInstall:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [v5 carrierName];
  carrierNameForSelectedItem = self->_carrierNameForSelectedItem;
  self->_carrierNameForSelectedItem = v6;

  objc_storeStrong(&self->_selectedPlan, a3);
  v8 = [v5 plan];
  v9 = +[TSUtilities getSpinnerBusyText];
  [(OBWelcomeController *)self _showButtonTraySpinnerWithBusyText:v9];

  v10 = +[TSCoreTelephonyClientCache sharedInstance];
  v11 = [objc_alloc(MEMORY[0x277CC3720]) initWithInBuddy:+[TSUtilities inBuddy](TSUtilities transferablePlans:"inBuddy") selectedTransferablePlans:0 alsPlans:0 selectedAlsPlans:1 odaPlans:1 transferPlanCarriers:0 selectedTransferPlanCarriers:&stru_28753DF48 alsPlanCarriers:&stru_28753DF48 selectedAlsPlanCarriers:self->_carrierName odaPlanCarriers:self->_carrierName selectedOdaPlanCarriers:&stru_28753DF48 sourceDevicesCount:&stru_28753DF48 selectedSourceDevicesCount:{0, 0}];
  [v10 submitSimSetupUsage:v11];

  v12 = _TSLogDomain();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v23 = v8;
    v24 = 2080;
    v25 = "[TSSinglePlanTransferViewController _startPendingInstall:]";
    _os_log_impl(&dword_262AA8000, v12, OS_LOG_TYPE_DEFAULT, "plan: %@ @%s", buf, 0x16u);
  }

  v13 = [(TSSinglePlanTransferViewController *)self delegate];
  [v13 viewControllerDidComplete:self];

  objc_initWeak(buf, self);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__TSSinglePlanTransferViewController__startPendingInstall___block_invoke;
  block[3] = &unk_279B45AB0;
  v18 = v8;
  v14 = v8;
  objc_copyWeak(&v21, buf);
  v19 = self;
  v20 = v5;
  v15 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v21);
  objc_destroyWeak(buf);
  v16 = *MEMORY[0x277D85DE8];
}

void __59__TSSinglePlanTransferViewController__startPendingInstall___block_invoke(uint64_t a1)
{
  if (_os_feature_enabled_impl())
  {
    v2 = objc_alloc(MEMORY[0x277CBEA60]);
    v3 = [*(a1 + 48) plan];
    v4 = [v2 initWithObjects:{v3, 0}];

    v5 = [objc_alloc(MEMORY[0x277CC36F0]) initWithPlans:v4];
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    v7 = [WeakRetained ctClient];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __59__TSSinglePlanTransferViewController__startPendingInstall___block_invoke_3;
    v10[3] = &unk_279B44278;
    objc_copyWeak(&v11, (a1 + 56));
    v10[4] = *(a1 + 40);
    [v7 installMultiplePlans:v5 completionHandler:v10];

    objc_destroyWeak(&v11);
  }

  else
  {
    v8 = +[TSCoreTelephonyClientCache sharedInstance];
    v9 = *(a1 + 32);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __59__TSSinglePlanTransferViewController__startPendingInstall___block_invoke_2;
    v12[3] = &unk_279B44278;
    objc_copyWeak(&v13, (a1 + 56));
    v12[4] = *(a1 + 40);
    [v8 installPendingPlan:v9 completion:v12];

    objc_destroyWeak(&v13);
  }
}

void __59__TSSinglePlanTransferViewController__startPendingInstall___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (v4)
    {
      [WeakRetained setShowSIMSetup:0];
      [WeakRetained _showAlert:v4];
    }

    else
    {
      [*(a1 + 32) setShowSIMSetup:(WeakRetained[1328] & 1) == 0];
    }
  }
}

void __59__TSSinglePlanTransferViewController__startPendingInstall___block_invoke_3(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (v4)
    {
      [WeakRetained setShowSIMSetup:0];
      [WeakRetained _showAlert:v4];
    }

    else
    {
      [*(a1 + 32) setShowSIMSetup:(WeakRetained[1328] & 1) == 0];
    }
  }
}

- (void)_showAlert:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_initWeak(&location, self);
    v5 = MEMORY[0x277D75110];
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"ERROR_GENERIC_TITLE" value:&stru_28753DF48 table:@"Localizable"];
    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"ERROR_TRY_AGAIN_TITLE" value:&stru_28753DF48 table:@"Localizable"];
    v10 = [v5 alertControllerWithTitle:v7 message:v9 preferredStyle:1];

    v11 = MEMORY[0x277D750F8];
    v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v13 = [v12 localizedStringForKey:@"ERROR_OK" value:&stru_28753DF48 table:@"Localizable"];
    v17 = MEMORY[0x277D85DD0];
    v18 = 3221225472;
    v19 = __49__TSSinglePlanTransferViewController__showAlert___block_invoke;
    v20 = &unk_279B44550;
    objc_copyWeak(&v21, &location);
    v14 = [v11 actionWithTitle:v13 style:1 handler:&v17];
    [v10 addAction:{v14, v17, v18, v19, v20}];

    v15 = [(TSSinglePlanTransferViewController *)self navigationController];
    v16 = [v15 visibleViewController];
    [v16 presentViewController:v10 animated:1 completion:0];

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }
}

void __49__TSSinglePlanTransferViewController__showAlert___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained delegate];
    [v2 attemptFailed];

    WeakRetained = v3;
  }
}

- (double)_heightAnchorConstant
{
  v2 = [(TSSinglePlanTransferViewController *)self view];
  [v2 bounds];
  v4 = v3 * 0.2;

  return v4;
}

- (void)_transferConsentOnSource
{
  v3 = [(TSSinglePlanTransferViewController *)self presentedViewController];

  if (v3)
  {
    v4 = [(TSSinglePlanTransferViewController *)self presentedViewController];
    [v4 dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)_userDisagreedTermsAndConditions
{
  v7 = *MEMORY[0x277D85DE8];
  if (self->_inBuddy)
  {
    v3 = _TSLogDomain();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315138;
      v6 = "[TSSinglePlanTransferViewController _userDisagreedTermsAndConditions]";
      _os_log_impl(&dword_262AA8000, v3, OS_LOG_TYPE_DEFAULT, "Hide button tray! @%s", &v5, 0xCu);
    }

    [(OBWelcomeController *)self _hideButtonTraySpinner];
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)_maybeLaunchURLForCarrierDirectAuth:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = [a3 plan];
  v5 = [v4 transferAttributes];
  v6 = _TSLogDomain();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v4 iccid];
    v13 = 138412546;
    v14 = v7;
    v15 = 2080;
    v16 = "[TSSinglePlanTransferViewController _maybeLaunchURLForCarrierDirectAuth:]";
    _os_log_impl(&dword_262AA8000, v6, OS_LOG_TYPE_DEFAULT, "Carrier direct auth flow plan: [%@] @%s", &v13, 0x16u);
  }

  v8 = [v5 performSelector:sel_transferEndpoint];
  if (v8)
  {
    v9 = [MEMORY[0x277D75128] sharedApplication];
    v10 = [MEMORY[0x277CBEBC0] URLWithString:v8];
    [v9 openURL:v10 options:MEMORY[0x277CBEC10] completionHandler:&__block_literal_global_316];

    v11 = [(TSSinglePlanTransferViewController *)self delegate];
    [v11 viewControllerDidComplete:self];
  }

  else
  {
    v11 = _TSLogDomain();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [TSSinglePlanTransferViewController _maybeLaunchURLForCarrierDirectAuth:];
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __74__TSSinglePlanTransferViewController__maybeLaunchURLForCarrierDirectAuth___block_invoke(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v2 = _TSLogDomain();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __74__TSSinglePlanTransferViewController__maybeLaunchURLForCarrierDirectAuth___block_invoke_cold_1();
    }
  }
}

- (TSSIMSetupFlowDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithLocalPhysical:carrierName:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)getTitleAndDetailsForPlanType:transferCapability:isShowingFilteredPlans:carrier:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __61__TSSinglePlanTransferViewController__cancelTransferringPlan__block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_maybeLaunchURLForCarrierDirectAuth:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __74__TSSinglePlanTransferViewController__maybeLaunchURLForCarrierDirectAuth___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end