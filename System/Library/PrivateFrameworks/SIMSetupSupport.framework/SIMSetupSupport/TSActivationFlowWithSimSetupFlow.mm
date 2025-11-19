@interface TSActivationFlowWithSimSetupFlow
- (id)_createFirstViewController:(id)a3;
- (id)firstViewController;
- (id)initRequireSetup:(BOOL)a3 transferBackPlan:(id)a4;
- (id)nextViewControllerFrom:(id)a3;
- (void)_filterCarrierSetupItems:(id)a3;
- (void)_maybePresentFirstViewController:(id)a3 firstViewControllerCallback:(id)a4;
- (void)_maybeShowPreinstallConsentOnViewController:(id)a3 planItems:(id)a4;
- (void)_requestCarrierSetupsWithCompletion:(id)a3;
- (void)_requestCrossPlatformTransferPlanListWithCompletion:(id)a3;
- (void)_requestPendingInstallItemsWithCompletion:(id)a3;
- (void)_requestPlansWithCompletion:(id)a3;
- (void)_requestTransferPlanListWithCompletion:(id)a3;
- (void)_sendSIMSetupReadyNotification;
- (void)_userDidTapCancel;
- (void)accountCancelled;
- (void)accountPendingRelease;
- (void)dealloc;
- (void)didPurchasePlanSuccessfullyWithEid:(id)a3 imei:(id)a4 meid:(id)a5 iccid:(id)a6 alternateSDMP:(id)a7 state:(id)a8;
- (void)didTransferPlanSuccessfullyWithEid:(id)a3 imei:(id)a4 meid:(id)a5 iccid:(id)a6 srcIccid:(id)a7 alternateSDMP:(id)a8 state:(id)a9;
- (void)firstViewController;
- (void)firstViewController:(id)a3;
- (void)getWebsheetInfo:(id)a3 completion:(id)a4;
- (void)planItemsUpdated:(id)a3 planListError:(id)a4;
- (void)setCancelNavigationBarItems:(id)a3;
- (void)startOverWithFirstViewController:(id)a3;
- (void)viewControllerDidComplete:(id)a3;
@end

@implementation TSActivationFlowWithSimSetupFlow

- (id)initRequireSetup:(BOOL)a3 transferBackPlan:(id)a4
{
  v7 = a4;
  v25.receiver = self;
  v25.super_class = TSActivationFlowWithSimSetupFlow;
  v8 = [(TSSIMSetupFlow *)&v25 init];
  if (v8)
  {
    v9 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:v8 action:sel__userDidTapCancel];
    cancelButton = v8->_cancelButton;
    v8->_cancelButton = v9;

    v8->_requireSetup = a3;
    v8->_isPreinstallingViewControllerActive = 1;
    v8->_userConsentType = 0;
    v11 = [MEMORY[0x277CBEB18] array];
    transferItems = v8->_transferItems;
    v8->_transferItems = v11;

    v13 = [MEMORY[0x277CBEB18] array];
    transferPlans = v8->_transferPlans;
    v8->_transferPlans = v13;

    v15 = [MEMORY[0x277CBEB18] array];
    transferIneligibleViaCloudItems = v8->_transferIneligibleViaCloudItems;
    v8->_transferIneligibleViaCloudItems = v15;

    v8->_signupConsentResponse = 0;
    objc_storeStrong(&v8->_transferBackPlan, a4);
    v17 = [v7 phoneNumber];
    transferBackPlanPhoneNumber = v8->_transferBackPlanPhoneNumber;
    v8->_transferBackPlanPhoneNumber = v17;

    v19 = objc_alloc(MEMORY[0x277CC37B0]);
    v20 = [v19 initWithQueue:MEMORY[0x277D85CD0]];
    client = v8->_client;
    v8->_client = v20;

    v22 = +[TSUserInPurchaseFlowAssertion sharedInstance];
    [v22 assertUserInPurchaseFlowStartOver:0 caller:v8];

    v23 = +[TSCellularPlanManagerCache sharedInstance];
    [v23 setDelegate:v8];
  }

  return v8;
}

- (void)dealloc
{
  v3 = +[TSUserInPurchaseFlowAssertion sharedInstance];
  [v3 deassertUserInPurchaseFlowWithForce:0 caller:self];

  v4 = +[TSCellularPlanManagerCache sharedInstance];
  [v4 resetDelegate:self];

  v5.receiver = self;
  v5.super_class = TSActivationFlowWithSimSetupFlow;
  [(TSActivationFlowWithSimSetupFlow *)&v5 dealloc];
}

- (id)firstViewController
{
  v2 = _TSLogDomain();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    [(TSActivationFlowWithSimSetupFlow *)v2 firstViewController:v3];
  }

  return 0;
}

- (void)_sendSIMSetupReadyNotification
{
  client = self->_client;
  if (objc_opt_respondsToSelector())
  {
    v4 = self->_client;

    [(CoreTelephonyClient *)v4 performSelector:sel_setUpeSIMLaunched_ withObject:&__block_literal_global_11];
  }
}

void __66__TSActivationFlowWithSimSetupFlow__sendSIMSetupReadyNotification__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = _TSLogDomain();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __66__TSActivationFlowWithSimSetupFlow__sendSIMSetupReadyNotification__block_invoke_cold_1();
    }
  }
}

- (void)firstViewController:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_initWeak(&location, self);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __56__TSActivationFlowWithSimSetupFlow_firstViewController___block_invoke;
    v10[3] = &unk_279B451D0;
    objc_copyWeak(&v12, &location);
    v11 = v4;
    v5 = MEMORY[0x2667315D0](v10);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __56__TSActivationFlowWithSimSetupFlow_firstViewController___block_invoke_2;
    v7[3] = &unk_279B44C58;
    objc_copyWeak(&v9, &location);
    v6 = v5;
    v8 = v6;
    [(TSActivationFlowWithSimSetupFlow *)self _requestPlansWithCompletion:v7];

    objc_destroyWeak(&v9);
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  else
  {
    [(TSActivationFlowWithSimSetupFlow *)self _sendSIMSetupReadyNotification];
  }
}

void __56__TSActivationFlowWithSimSetupFlow_firstViewController___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _sendSIMSetupReadyNotification];

  (*(*(a1 + 32) + 16))();
}

void __56__TSActivationFlowWithSimSetupFlow_firstViewController___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _filterCarrierSetupItems:WeakRetained[16]];
    v4 = +[TSCellularPlanManagerCache sharedInstance];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __56__TSActivationFlowWithSimSetupFlow_firstViewController___block_invoke_40;
    v13[3] = &unk_279B45180;
    objc_copyWeak(&v15, (a1 + 40));
    v14 = *(a1 + 32);
    [v4 planItemsWithCompletion:v13];

    objc_destroyWeak(&v15);
  }

  else
  {
    v5 = _TSLogDomain();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __56__TSActivationFlowWithSimSetupFlow_firstViewController___block_invoke_2_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
    }

    (*(*(a1 + 32) + 16))();
  }
}

void __56__TSActivationFlowWithSimSetupFlow_firstViewController___block_invoke_40(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained _createFirstViewController:v3];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __56__TSActivationFlowWithSimSetupFlow_firstViewController___block_invoke_41;
    v15[3] = &unk_279B44528;
    objc_copyWeak(&v18, (a1 + 40));
    v16 = v3;
    v17 = *(a1 + 32);
    [v5 _maybePresentFirstViewController:v6 firstViewControllerCallback:v15];

    objc_destroyWeak(&v18);
  }

  else
  {
    v7 = _TSLogDomain();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __56__TSActivationFlowWithSimSetupFlow_firstViewController___block_invoke_40_cold_1(v7, v8, v9, v10, v11, v12, v13, v14);
    }

    (*(*(a1 + 32) + 16))();
  }
}

void __56__TSActivationFlowWithSimSetupFlow_firstViewController___block_invoke_41(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _maybeShowPreinstallConsentOnViewController:v4 planItems:*(a1 + 32)];

  (*(*(a1 + 40) + 16))();
}

- (void)_maybePresentFirstViewController:(id)a3 firstViewControllerCallback:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    [(TSSIMSetupFlow *)self setTopViewController:v6];
    objc_initWeak(&location, self);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __97__TSActivationFlowWithSimSetupFlow__maybePresentFirstViewController_firstViewControllerCallback___block_invoke;
    v16[3] = &unk_279B451F8;
    objc_copyWeak(&v19, &location);
    v18 = v7;
    v17 = v6;
    [(TSSIMSetupFlow *)self maybePrepareNextDisplayViewController:v17 completion:v16];

    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }

  else
  {
    v8 = _TSLogDomain();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(TSActivationFlowWithSimSetupFlow *)v8 _maybePresentFirstViewController:v9 firstViewControllerCallback:v10, v11, v12, v13, v14, v15];
    }

    (*(v7 + 2))(v7, 0);
  }
}

void __97__TSActivationFlowWithSimSetupFlow__maybePresentFirstViewController_firstViewControllerCallback___block_invoke(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    if (v3)
    {
      v6 = _TSLogDomain();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v21 = 138412802;
        v22 = objc_opt_class();
        v23 = 2048;
        v24 = v3;
        v25 = 2080;
        v26 = "[TSActivationFlowWithSimSetupFlow _maybePresentFirstViewController:firstViewControllerCallback:]_block_invoke";
        _os_log_impl(&dword_262AA8000, v6, OS_LOG_TYPE_DEFAULT, "present first view : %@(%p) @%s", &v21, 0x20u);
      }

      (*(*(a1 + 40) + 16))();
    }

    else
    {
      v7 = [WeakRetained nextViewControllerFrom:*(a1 + 32)];
      v8 = _TSLogDomain();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = *(a1 + 32);
        v10 = objc_opt_class();
        v11 = *(a1 + 32);
        v21 = 138413314;
        v22 = v10;
        v23 = 2048;
        v24 = v11;
        v25 = 2112;
        v26 = objc_opt_class();
        v27 = 2048;
        v28 = v7;
        v29 = 2080;
        v30 = "[TSActivationFlowWithSimSetupFlow _maybePresentFirstViewController:firstViewControllerCallback:]_block_invoke";
        _os_log_impl(&dword_262AA8000, v8, OS_LOG_TYPE_DEFAULT, "cur : %@(%p), next: %@(%p) @%s", &v21, 0x34u);
      }

      if (v7)
      {
        [v5 _maybePresentFirstViewController:v7 firstViewControllerCallback:*(a1 + 40)];
      }

      else
      {
        v12 = _TSLogDomain();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          __97__TSActivationFlowWithSimSetupFlow__maybePresentFirstViewController_firstViewControllerCallback___block_invoke_cold_1(v12, v13, v14, v15, v16, v17, v18, v19);
        }

        (*(*(a1 + 40) + 16))();
      }
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (id)nextViewControllerFrom:(id)a3
{
  v137[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([TSUtilities isRegulatoryRestrictionActive:self->_planInstallError])
  {
    self->_isPreinstallingViewControllerActive = 0;
    v5 = [TSSubFlowViewController alloc];
    v136[0] = @"FlowTypeKey";
    v136[1] = @"SkipActivatingPane";
    v137[0] = &unk_287583AA8;
    v137[1] = MEMORY[0x277CBEC38];
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v137 forKeys:v136 count:2];
    v7 = [(TSSIMSetupFlow *)self navigationController];
    v8 = [(TSSubFlowViewController *)v5 initWithOptions:v6 navigationController:v7 delegate:self];

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __59__TSActivationFlowWithSimSetupFlow_nextViewControllerFrom___block_invoke;
    block[3] = &unk_279B44578;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
    goto LABEL_59;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v4;
    v10 = [(NSMutableArray *)self->_transferPlans filteredPlansForQRCodeBucket];
    if (![v9 isTransferListCellTapped])
    {
      if (![v9 isScanButtonTapped])
      {
        if ([v9 isOtherButtonTapped])
        {
          v35 = +[TSUtilities transferOptions];
          if (!+[TSUtilities isPad]|| v35)
          {
            v36 = [[TSCellularPlanIntroViewController alloc] initWithShowTransferOption:v35 requireDelayBluetoothConnection:0 showQrCodeOption:1 transferIneligiblePlans:v10];
          }

          else
          {
            v36 = [[SSCellularPlanScanViewController alloc] initWithBackButton:0];
          }

          v8 = v36;
        }

        else
        {
          v8 = 0;
        }

        goto LABEL_26;
      }

      v132[0] = @"FlowTypeKey";
      v132[1] = @"IsFirstViewKey";
      v133[0] = &unk_287583AC0;
      v133[1] = MEMORY[0x277CBEC28];
      v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v133 forKeys:v132 count:2];
      v11 = [v22 mutableCopy];

      if ([v10 count])
      {
        [v11 setObject:v10 forKeyedSubscript:@"Plans"];
      }

      v23 = [TSSubFlowViewController alloc];
      v24 = [(TSSIMSetupFlow *)self navigationController];
      v8 = [(TSSubFlowViewController *)v23 initWithOptions:v11 navigationController:v24 delegate:self];

LABEL_25:
LABEL_26:

LABEL_58:
      goto LABEL_59;
    }

    v105 = v9;
    v107 = v4;
    v11 = [(NSMutableArray *)self->_transferPlans filteredPlansForTransferableBucket];
    v12 = [v11 filteredPlansForVisitStoreBucket];
    v13 = [v11 filteredPlansForHiddenInCloudBucket:0];
    v103 = [v11 filteredPlansForHiddenInCloudBucket:1];
    v14 = [(CTDisplayPlanList *)self->_pendingInstallPlans plans];
    v15 = [v14 count];
    v104 = v13;
    v16 = [v13 count] + v15;
    v17 = [(CTDisplayPlanList *)self->_carrierSetupItems plans];
    v18 = [v17 count];

    if (v16 + v18)
    {
      v28 = [TSTransferListViewController alloc];
      BYTE2(v102) = !self->_isFlexPolicyOn;
      LOWORD(v102) = 1;
      v8 = [TSTransferListViewController initWithTransferPlans:v28 confirmCellularPlanTransfer:"initWithTransferPlans:confirmCellularPlanTransfer:isActivationPolicyMismatch:isDualeSIMCapabilityLoss:pendingInstallItems:carrierSetupItems:showOtherOptions:isStandaloneProximityFlow:allowsMultiSelection:" isActivationPolicyMismatch:self->_transferPlans isDualeSIMCapabilityLoss:1 pendingInstallItems:self->_isActivationPolicyMismatch carrierSetupItems:self->_isDualeSIMCapabilityLoss showOtherOptions:self->_pendingInstallPlans isStandaloneProximityFlow:self->_carrierSetupItems allowsMultiSelection:v102];
      v4 = v107;
      v19 = v12;
    }

    else
    {
      v19 = v12;
      if (![v12 count])
      {
        v29 = v103;
        v9 = v105;
        if ([v103 count])
        {
          v45 = [TSSubFlowViewController alloc];
          v134[0] = @"FlowTypeKey";
          v46 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:10002];
          v134[1] = @"IsClientKey";
          v135[0] = v46;
          v135[1] = MEMORY[0x277CBEC28];
          v47 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v135 forKeys:v134 count:2];
          v48 = [(TSSIMSetupFlow *)self navigationController];
          v8 = [(TSSubFlowViewController *)v45 initWithOptions:v47 navigationController:v48 delegate:self];
        }

        else
        {
          v52 = _TSLogDomain();
          if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
          {
            [(TSActivationFlowWithSimSetupFlow *)v52 nextViewControllerFrom:v53, v54, v55, v56, v57, v58, v59];
          }

          v8 = 0;
        }

        v4 = v107;
        goto LABEL_24;
      }

      v8 = [[SSVisitStoreViewController alloc] initWithPlans:v12 showOtherOption:1];
      v4 = v107;
    }

    v9 = v105;
    v29 = v103;
LABEL_24:

    goto LABEL_25;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([v4 isOtherButtonTapped])
    {
      v20 = +[TSUtilities transferOptions];
      if (!+[TSUtilities isPad]|| v20)
      {
        v21 = [[TSCellularPlanIntroViewController alloc] initWithShowTransferOption:v20 requireDelayBluetoothConnection:0 showQrCodeOption:1 transferIneligiblePlans:0];
      }

      else
      {
        v21 = [[SSCellularPlanScanViewController alloc] initWithBackButton:0];
      }

      goto LABEL_40;
    }

    v30 = [TSSubFlowViewController alloc];
    v130[0] = @"FlowTypeKey";
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:10002];
    v130[1] = @"IsClientKey";
    v131[0] = v9;
    v131[1] = MEMORY[0x277CBEC28];
    v31 = MEMORY[0x277CBEAC0];
    v32 = v131;
    v33 = v130;
    goto LABEL_28;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v4;
    v25 = [v9 selectedPlan];
    if (![v9 isOtherButtonTapped])
    {
      if (([v9 isSkipButtonTapped] & 1) == 0 && (!v25 || objc_msgSend(v25, "transferCapability") != 8))
      {
        if (![v9 crossPlatformTransferPlanSelected])
        {
          self->_isPreinstallingViewControllerActive = 0;
          if ([v9 showSIMSetup])
          {
            self->_requireSetup = 1;
          }

          v63 = [TSSubFlowViewController alloc];
          v126[0] = @"FlowTypeKey";
          v126[1] = @"SkipActivatingPane";
          v64 = MEMORY[0x277CBEC38];
          v127[0] = &unk_287583AA8;
          v127[1] = MEMORY[0x277CBEC38];
          v126[2] = @"DelayStartActivatingTimer";
          v65 = [v9 installingTransferPlan];
          v66 = &unk_287583AF0;
          if (v65)
          {
            v66 = &unk_287583AD8;
          }

          v127[2] = v66;
          v126[3] = @"TransferBackPlan";
          transferBackPlan = self->_transferBackPlan;
          v108 = transferBackPlan;
          if (!transferBackPlan)
          {
            transferBackPlan = [MEMORY[0x277CBEB68] null];
          }

          v106 = transferBackPlan;
          v127[3] = transferBackPlan;
          v126[4] = @"PlanSetupTypeKey";
          v68 = [v9 installingTransferPlan];
          v69 = &unk_287583B20;
          if (v68)
          {
            v69 = &unk_287583B08;
          }

          v127[4] = v69;
          v126[5] = @"CarrierNameKey";
          v70 = [v9 carrierNameForSelectedItem];
          v71 = v4;
          if (v70)
          {
            [v9 carrierNameForSelectedItem];
          }

          else
          {
            [MEMORY[0x277CBEB68] null];
          }
          v86 = ;
          v127[5] = v86;
          v127[6] = v64;
          v126[6] = @"MaybeShowConfirmationCodePaneKey";
          v126[7] = @"Plan";
          v87 = [v9 selectedPlan];
          v127[7] = v87;
          v88 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v127 forKeys:v126 count:8];
          v89 = [(TSSIMSetupFlow *)self navigationController];
          v8 = [(TSSubFlowViewController *)v63 initWithOptions:v88 navigationController:v89 delegate:self];

          if (!v108)
          {
          }

          v4 = v71;
          goto LABEL_57;
        }

        v39 = _TSLogDomain();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v129 = "[TSActivationFlowWithSimSetupFlow nextViewControllerFrom:]";
          _os_log_impl(&dword_262AA8000, v39, OS_LOG_TYPE_DEFAULT, "Cross platform transfer plan is selected! @%s", buf, 0xCu);
        }
      }

      v8 = 0;
LABEL_57:

      goto LABEL_58;
    }

    v26 = +[TSUtilities transferOptions];
    if (!+[TSUtilities isPad]|| v26)
    {
      v27 = -[TSCellularPlanIntroViewController initWithShowTransferOption:requireDelayBluetoothConnection:showQrCodeOption:transferIneligiblePlans:]([TSCellularPlanIntroViewController alloc], "initWithShowTransferOption:requireDelayBluetoothConnection:showQrCodeOption:transferIneligiblePlans:", v26, [v9 requireDelayBluetoothConnection], 1, 0);
    }

    else
    {
      v27 = [[SSCellularPlanScanViewController alloc] initWithBackButton:0];
    }

LABEL_56:
    v8 = v27;
    goto LABEL_57;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v4;
    if ([v9 isOtherButtonTapped])
    {
      v37 = +[TSUtilities transferOptions];
      if (!+[TSUtilities isPad]|| v37)
      {
        v38 = -[TSCellularPlanIntroViewController initWithShowTransferOption:requireDelayBluetoothConnection:showQrCodeOption:transferIneligiblePlans:]([TSCellularPlanIntroViewController alloc], "initWithShowTransferOption:requireDelayBluetoothConnection:showQrCodeOption:transferIneligiblePlans:", v37, [v9 requireDelayBluetoothConnection], 1, 0);
      }

      else
      {
        v38 = [[SSCellularPlanScanViewController alloc] initWithBackButton:0];
      }

      goto LABEL_74;
    }

    if (([v9 isCarrierDirectAuthItemSelected] & 1) == 0)
    {
      if (_os_feature_enabled_impl() && ([v9 selectedPlans], v60 = objc_claimAutoreleasedReturnValue(), v60, v60))
      {
        self->_isPreinstallingViewControllerActive = 0;
        v61 = [TSSubFlowViewController alloc];
        v125[0] = &unk_287583AA8;
        v124[0] = @"FlowTypeKey";
        v124[1] = @"Plans";
        v25 = [v9 selectedPlans];
        v124[2] = @"ConfirmCellularPlanTransfer";
        v125[1] = v25;
        v125[2] = MEMORY[0x277CBEC38];
        v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v125 forKeys:v124 count:3];
        v62 = [(TSSIMSetupFlow *)self navigationController];
        v8 = [(TSSubFlowViewController *)v61 initWithOptions:v34 navigationController:v62 delegate:self];
      }

      else
      {
        if ([v9 isCarrierSetupItemSelected])
        {
          v72 = [TSBuddyMLViewController alloc];
          v73 = [(CTDisplayPlanList *)self->_carrierSetupItems plans];
          v74 = [v73 objectAtIndexedSubscript:0];
          v75 = [v74 plan];
          v8 = [(TSBuddyMLViewController *)v72 initWithCTPlan:v75 inBuddy:0];

          goto LABEL_58;
        }

        self->_isPreinstallingViewControllerActive = 0;
        if ([v9 showSIMSetup])
        {
          self->_requireSetup = 1;
        }

        v80 = [TSSubFlowViewController alloc];
        v122[0] = @"FlowTypeKey";
        v122[1] = @"SkipActivatingPane";
        v81 = MEMORY[0x277CBEC38];
        v123[0] = &unk_287583AA8;
        v123[1] = MEMORY[0x277CBEC38];
        v122[2] = @"DelayStartActivatingTimer";
        v82 = [v9 installingTransferPlan];
        v83 = &unk_287583AF0;
        if (v82)
        {
          v83 = &unk_287583AD8;
        }

        v123[2] = v83;
        v122[3] = @"PlanSetupTypeKey";
        v84 = [v9 installingTransferPlan];
        v85 = &unk_287583B20;
        if (v84)
        {
          v85 = &unk_287583B08;
        }

        v123[3] = v85;
        v122[4] = @"CarrierNameKey";
        v25 = [v9 carrierNameForSelectedItem];
        if (v25)
        {
          [v9 carrierNameForSelectedItem];
        }

        else
        {
          [MEMORY[0x277CBEB68] null];
        }
        v34 = ;
        v122[5] = @"MaybeShowConfirmationCodePaneKey";
        v123[4] = v34;
        v123[5] = v81;
        v62 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v123 forKeys:v122 count:6];
        v95 = [(TSSIMSetupFlow *)self navigationController];
        v8 = [(TSSubFlowViewController *)v80 initWithOptions:v62 navigationController:v95 delegate:self];
      }

      goto LABEL_29;
    }

LABEL_65:
    v8 = 0;
    goto LABEL_58;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v40 = [TSSubFlowViewController alloc];
    v120[0] = @"FlowTypeKey";
    v120[1] = @"SkipActivatingPane";
    v121[0] = &unk_287583AA8;
    v121[1] = MEMORY[0x277CBEC28];
    v41 = MEMORY[0x277CBEAC0];
    v42 = v121;
    v43 = v120;
    v44 = 2;
LABEL_52:
    v9 = [v41 dictionaryWithObjects:v42 forKeys:v43 count:v44];
    v25 = [(TSSIMSetupFlow *)self navigationController];
    v27 = [(TSSubFlowViewController *)v40 initWithOptions:v9 navigationController:v25 delegate:self];
    goto LABEL_56;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v4;
    if ([v9 confirmationCodeRequired])
    {
      v51 = [SSConfirmationCodeViewController alloc];
      v25 = [v9 fauxCardData];
      v27 = [(SSConfirmationCodeViewController *)v51 initWithCardData:v25];
      goto LABEL_56;
    }

    if (self->_confirmationCodeRequired)
    {
      v8 = [[SSConfirmationCodeViewController alloc] initAsMidOperationWithCarrierName:self->_name];
      self->_confirmationCodeRequired = 0;
      goto LABEL_58;
    }

    if ([v9 isEnterManuallyTapped])
    {
      v94 = SSCardManualEntryViewController;
LABEL_120:
      v38 = objc_alloc_init(v94);
      goto LABEL_74;
    }

    if ([v9 transferViaQRCode])
    {
      goto LABEL_65;
    }

    v38 = [[TSCellularPlanUserConsentViewController alloc] initWithName:self->_name consentType:4 requireAdditionalConsent:self->_userConsentType != 0];
    goto LABEL_74;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v4;
    if (![v9 needShowTransferIntroPane])
    {
      if ([v9 isProximityTransferButtonTapped])
      {
        v90 = [TSSubFlowViewController alloc];
        v118[0] = @"FlowTypeKey";
        v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:10002];
        v119[0] = v25;
        v119[1] = MEMORY[0x277CBEC28];
        v118[1] = @"IsClientKey";
        v118[2] = @"TransferBackPlan";
        v91 = self->_transferBackPlan;
        v34 = v91;
        if (!v91)
        {
          v34 = [MEMORY[0x277CBEB68] null];
        }

        v119[2] = v34;
        v92 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v119 forKeys:v118 count:3];
        v93 = [(TSSIMSetupFlow *)self navigationController];
        v8 = [(TSSubFlowViewController *)v90 initWithOptions:v92 navigationController:v93 delegate:self];

        if (v91)
        {
          goto LABEL_57;
        }

        goto LABEL_29;
      }

      if ([v9 isScanButtonTapped])
      {
        v30 = [TSSubFlowViewController alloc];
        v116[0] = @"FlowTypeKey";
        v116[1] = @"IsFirstViewKey";
        v117[0] = &unk_287583AC0;
        v117[1] = MEMORY[0x277CBEC28];
        v31 = MEMORY[0x277CBEAC0];
        v32 = v117;
        v33 = v116;
      }

      else
      {
        if (![v9 isCrossPlatformButtonTapped])
        {
          if (![v9 isTravelEduButtonTapped])
          {
            goto LABEL_65;
          }

          v94 = TSTravelModeIntroViewController;
          goto LABEL_120;
        }

        v30 = [TSSubFlowViewController alloc];
        v114[0] = @"FlowTypeKey";
        v114[1] = @"IsSourceKey";
        v115[0] = &unk_287583B38;
        v115[1] = MEMORY[0x277CBEC28];
        v31 = MEMORY[0x277CBEAC0];
        v32 = v115;
        v33 = v114;
      }

LABEL_28:
      v25 = [v31 dictionaryWithObjects:v32 forKeys:v33 count:2];
      v34 = [(TSSIMSetupFlow *)self navigationController];
      v8 = [(TSSubFlowViewController *)v30 initWithOptions:v25 navigationController:v34 delegate:self];
LABEL_29:

      goto LABEL_57;
    }

    v38 = [[SSTransferIntroViewController alloc] initWithItems:self->_transferIneligibleViaCloudItems];
LABEL_74:
    v8 = v38;
    goto LABEL_58;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([v4 isTransferButtonTapped])
    {
      v76 = [TSSubFlowViewController alloc];
      v112[0] = @"FlowTypeKey";
      v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:10002];
      v113[0] = v9;
      v113[1] = MEMORY[0x277CBEC28];
      v112[1] = @"IsClientKey";
      v112[2] = @"TransferBackPlan";
      v77 = self->_transferBackPlan;
      v25 = v77;
      if (!v77)
      {
        v25 = [MEMORY[0x277CBEB68] null];
      }

      v113[2] = v25;
      v78 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v113 forKeys:v112 count:3];
      v79 = [(TSSIMSetupFlow *)self navigationController];
      v8 = [(TSSubFlowViewController *)v76 initWithOptions:v78 navigationController:v79 delegate:self];

      if (v77)
      {
        goto LABEL_58;
      }

      goto LABEL_57;
    }

    goto LABEL_150;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (self->_confirmationCodeRequired)
    {
      v8 = [[SSConfirmationCodeViewController alloc] initAsMidOperationWithCarrierName:self->_name];
      self->_confirmationCodeRequired = 0;
      goto LABEL_59;
    }

    v96 = [TSCellularPlanUserConsentViewController alloc];
    name = self->_name;
    v98 = self->_userConsentType != 0;
    userConsentType = 4;
LABEL_134:
    v21 = [(TSCellularPlanUserConsentViewController *)v96 initWithName:name consentType:userConsentType requireAdditionalConsent:v98];
LABEL_40:
    v8 = v21;
    goto LABEL_59;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [v4 confirmationCode];
    v38 = [[TSCellularPlanUserConsentViewController alloc] initWithConfirmationCode:self->_name consentType:4 requireAdditionalConsent:self->_userConsentType != 0 confirmationCode:v9 acceptButtonTapped:0];
    goto LABEL_74;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([v4 consentType] != 4 || (self->_userConsentType & 0xFFFFFFFFFFFFFFFELL) != 2)
    {
      v40 = [TSSubFlowViewController alloc];
      v110[0] = @"FlowTypeKey";
      v110[1] = @"SkipActivatingPane";
      v111[0] = &unk_287583AA8;
      v111[1] = MEMORY[0x277CBEC38];
      v110[2] = @"PlanSetupTypeKey";
      v111[2] = &unk_287583B50;
      v41 = MEMORY[0x277CBEAC0];
      v42 = v111;
      v43 = v110;
      v44 = 3;
      goto LABEL_52;
    }

    v96 = [TSCellularPlanUserConsentViewController alloc];
    name = self->_name;
    userConsentType = self->_userConsentType;
    v98 = 0;
    goto LABEL_134;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_150:
    v8 = 0;
    goto LABEL_59;
  }

  v100 = v4;
  if (([v100 subFlowType] == 16 || objc_msgSend(v100, "subFlowType") == 22) && objc_msgSend(v100, "isOfferFallbackFlow"))
  {
    [v100 setIsOfferFallbackFlow:0];
    v101 = 0;
    if (_os_feature_enabled_impl())
    {
      v101 = +[TSUtilities isPad]^ 1;
    }

    v8 = [[TSCellularPlanIntroViewController alloc] initWithShowTransferOption:v101 requireDelayBluetoothConnection:0 showQrCodeOption:1 transferIneligiblePlans:0];
  }

  else
  {
    v8 = 0;
  }

LABEL_59:
  v49 = *MEMORY[0x277D85DE8];

  return v8;
}

void __59__TSActivationFlowWithSimSetupFlow_nextViewControllerFrom___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"transfer.failed" object:*(*(a1 + 32) + 104)];
}

- (void)viewControllerDidComplete:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_6;
  }

  v5 = v4;
  if ([v5 subFlowType] != 2 || (objc_msgSend(v5, "navigationController"), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "viewControllers"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "indexOfObject:", v5), v7, v6, !v8))
  {

LABEL_6:
    v14.receiver = self;
    v14.super_class = TSActivationFlowWithSimSetupFlow;
    [(TSSIMSetupFlow *)&v14 viewControllerDidComplete:v4];
    goto LABEL_7;
  }

  v9 = [v5 navigationController];
  v10 = [v9 viewControllers];
  v11 = [v10 objectAtIndex:v8 - 1];

  v12 = [v5 navigationController];
  v13 = [v12 popToViewController:v11 animated:1];

  v15.receiver = self;
  v15.super_class = TSActivationFlowWithSimSetupFlow;
  [(TSSIMSetupFlow *)&v15 viewControllerDidComplete:v11];

LABEL_7:
}

- (void)setCancelNavigationBarItems:(id)a3
{
  v4 = a3;
  v5 = +[TSUtilities isPad];
  v6 = [v4 navigationItem];
  v7 = v6;
  cancelButton = self->_cancelButton;
  if (v5)
  {
    [v6 setRightBarButtonItem:cancelButton];
  }

  else
  {
    [v6 setLeftBarButtonItem:cancelButton];
  }

  v9 = [v4 navigationItem];

  [v9 setHidesBackButton:1 animated:0];
}

- (void)planItemsUpdated:(id)a3 planListError:(id)a4
{
  v59 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (self->_planInstallError)
  {
    v9 = _TSLogDomain();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [TSActivationFlowWithSimSetupFlow planItemsUpdated:? planListError:?];
    }

    goto LABEL_4;
  }

  if (v7)
  {
    v11 = _TSLogDomain();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [TSActivationFlowWithSimSetupFlow planItemsUpdated:planListError:];
    }

    v12 = [v8 domain];
    if ([v12 isEqualToString:*MEMORY[0x277CF9680]])
    {
      v13 = [v8 code];

      if (v13 == 19)
      {
        self->_confirmationCodeRequired = 1;
        goto LABEL_5;
      }
    }

    else
    {
    }

    objc_storeStrong(&self->_planInstallError, a4);
    if (![TSUtilities isRegulatoryRestrictionActive:v8])
    {
      v9 = [TSUtilities getErrorTitleDetail:v8 forCarrier:self->_name];
      v33 = MEMORY[0x277D75110];
      v34 = [v9 objectForKeyedSubscript:@"ErrorHeader"];
      v35 = [v9 objectForKeyedSubscript:@"ErrorDetail"];
      v36 = [v33 alertControllerWithTitle:v34 message:v35 preferredStyle:1];

      v37 = MEMORY[0x277D750F8];
      v38 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v39 = [v38 localizedStringForKey:@"ERROR_OK" value:&stru_28753DF48 table:@"Localizable"];
      v53[0] = MEMORY[0x277D85DD0];
      v53[1] = 3221225472;
      v53[2] = __67__TSActivationFlowWithSimSetupFlow_planItemsUpdated_planListError___block_invoke;
      v53[3] = &unk_279B44B38;
      v53[4] = self;
      v40 = [v37 actionWithTitle:v39 style:1 handler:v53];
      [v36 addAction:v40];

      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __67__TSActivationFlowWithSimSetupFlow_planItemsUpdated_planListError___block_invoke_2;
      block[3] = &unk_279B44490;
      block[4] = self;
      v52 = v36;
      v41 = v36;
      dispatch_async(MEMORY[0x277D85CD0], block);

      goto LABEL_4;
    }

LABEL_41:
    v9 = [(TSSIMSetupFlow *)self topViewController];
    [(TSActivationFlowWithSimSetupFlow *)self viewControllerDidComplete:v9];
LABEL_4:

    goto LABEL_5;
  }

  if (v6)
  {
    if (self->_isPreinstallingViewControllerActive)
    {
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v14 = [v6 countByEnumeratingWithState:&v47 objects:v58 count:16];
      if (v14)
      {
        v15 = v14;
        v45 = 208;
        v46 = 0;
        v16 = 0;
        v17 = 0;
        v18 = *v48;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v48 != v18)
            {
              objc_enumerationMutation(v6);
            }

            v20 = *(*(&v47 + 1) + 8 * i);
            if ([v20 isInstalling])
            {
              v21 = [v20 plan];
              v22 = [v21 status];

              if (v22 != 6)
              {
                v23 = [v20 carrierName];
                v24 = [v23 copy];
                name = self->_name;
                self->_name = v24;

                v26 = [v20 iccid];
                v17 = [v26 length] != 0;

                v27 = _TSLogDomain();
                if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
                {
                  v28 = self->_name;
                  *buf = 138412546;
                  v55 = v28;
                  v56 = 2080;
                  v57 = "[TSActivationFlowWithSimSetupFlow planItemsUpdated:planListError:]";
                  _os_log_impl(&dword_262AA8000, v27, OS_LOG_TYPE_DEFAULT, "installing [%@] @%s", buf, 0x16u);
                }
              }
            }

            if (([v20 isSelected] & 1) != 0 || objc_msgSend(v20, "isInstalling"))
            {
              ++v16;
            }
          }

          v15 = [v6 countByEnumeratingWithState:&v47 objects:v58 count:16];
        }

        while (v15);
        if (v16 >= 2)
        {
          self->_requireSetup = 1;
        }

        v8 = v46;
        if (v17)
        {
          v29 = +[TSCellularPlanManagerCache sharedInstance];
          v30 = [v29 calculateInstallConsentTextTypeFor:v6];

          if (v30 > 2)
          {
            if ((v30 - 3) >= 3)
            {
              goto LABEL_48;
            }
          }

          else if (v30)
          {
            if (v30 == 1)
            {
              v31 = _TSLogDomain();
              if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315138;
                v55 = "[TSActivationFlowWithSimSetupFlow planItemsUpdated:planListError:]";
                _os_log_impl(&dword_262AA8000, v31, OS_LOG_TYPE_DEFAULT, "disable not allowed @%s", buf, 0xCu);
              }

              v32 = 3;
              goto LABEL_47;
            }

            if (v30 == 2)
            {
              v31 = _TSLogDomain();
              if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315138;
                v55 = "[TSActivationFlowWithSimSetupFlow planItemsUpdated:planListError:]";
                _os_log_impl(&dword_262AA8000, v31, OS_LOG_TYPE_DEFAULT, "delete not allowed @%s", buf, 0xCu);
              }

              v32 = 2;
LABEL_47:

              self->_userConsentType = v32;
            }

LABEL_48:
            if (*(&self->super.super.isa + v45) != 1)
            {
              goto LABEL_5;
            }

            *(&self->super.super.isa + v45) = 0;
            v42 = [(TSSIMSetupFlow *)self topViewController];
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();

            if ((isKindOfClass & 1) == 0)
            {
              goto LABEL_41;
            }

            v44 = _TSLogDomain();
            if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315138;
              v55 = "[TSActivationFlowWithSimSetupFlow planItemsUpdated:planListError:]";
              _os_log_impl(&dword_262AA8000, v44, OS_LOG_TYPE_DEFAULT, "Ignore installing event for BuddyML @%s", buf, 0xCu);
            }

            goto LABEL_5;
          }

          v31 = _TSLogDomain();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            v55 = "[TSActivationFlowWithSimSetupFlow planItemsUpdated:planListError:]";
            _os_log_impl(&dword_262AA8000, v31, OS_LOG_TYPE_DEFAULT, "Invalid consent @%s", buf, 0xCu);
          }

          v32 = 0;
          goto LABEL_47;
        }
      }
    }
  }

LABEL_5:

  v10 = *MEMORY[0x277D85DE8];
}

void __67__TSActivationFlowWithSimSetupFlow_planItemsUpdated_planListError___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) topViewController];
  [v2 presentViewController:*(a1 + 40) animated:1 completion:0];
}

- (void)didPurchasePlanSuccessfullyWithEid:(id)a3 imei:(id)a4 meid:(id)a5 iccid:(id)a6 alternateSDMP:(id)a7 state:(id)a8
{
  v11 = a3;
  v12 = a6;
  v13 = a7;
  v14 = a8;
  if (v11)
  {
    v15 = +[TSCellularPlanManagerCache sharedInstance];
    [v15 didPurchasePlanForEid:v11 iccid:v12 smdpURL:v13 state:v14];
  }

  else
  {
    v15 = _TSLogDomain();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [(TSActivationFlowWithSimSetupFlow *)v15 didPurchasePlanSuccessfullyWithEid:v16 imei:v17 meid:v18 iccid:v19 alternateSDMP:v20 state:v21, v22];
    }
  }
}

- (void)didTransferPlanSuccessfullyWithEid:(id)a3 imei:(id)a4 meid:(id)a5 iccid:(id)a6 srcIccid:(id)a7 alternateSDMP:(id)a8 state:(id)a9
{
  v13 = a9;
  v14 = a8;
  v15 = a7;
  v16 = a6;
  v17 = a3;
  v18 = +[TSCellularPlanManagerCache sharedInstance];
  [v18 didTransferPlanForEid:v17 iccid:v16 srcIccid:v15 smdpURL:v14 state:v13];
}

- (void)accountCancelled
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_262AA8000, a1, a3, "[E]Not implemented @%s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)accountPendingRelease
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_262AA8000, a1, a3, "[E]Not implemented @%s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (id)_createFirstViewController:(id)a3
{
  v84 = *MEMORY[0x277D85DE8];
  v4 = [(NSMutableArray *)self->_transferPlans filteredPlansForTransferableBucket];
  v53 = [v4 filteredPlansForHiddenInCloudBucket:0];
  v57 = [v4 filteredPlansForHiddenInCloudBucket:1];
  v5 = [(NSMutableArray *)self->_transferPlans filteredPlansForSoftwareUpdateBucket];
  v60 = [(NSMutableArray *)self->_transferPlans filteredPlansForQRCodeBucket];
  v58 = [(NSMutableArray *)self->_transferPlans filteredPlansForNonInstallableBucket];
  v55 = [v4 filteredPlansForVisitStoreBucket];
  v59 = v5;
  v54 = [v5 filteredPlansForVisitStoreBucket];
  v6 = _TSLogDomain();
  v56 = v4;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134219778;
    v69 = [v4 count];
    v70 = 2048;
    v71 = [v55 count];
    v72 = 2048;
    v73 = [v57 count];
    v74 = 2048;
    v75 = [v5 count];
    v76 = 2048;
    v77 = [v54 count];
    v78 = 2048;
    v79 = [v60 count];
    v80 = 2048;
    v81 = [v58 count];
    v82 = 2080;
    v83 = "[TSActivationFlowWithSimSetupFlow _createFirstViewController:]";
    _os_log_impl(&dword_262AA8000, v6, OS_LOG_TYPE_DEFAULT, "transferable:%lu (store:%lu, hidden:%lu), software update:%lu (store:%lu), qrcode:%lu, non install:%lu @%s", buf, 0x52u);
  }

  v7 = [v4 count];
  v8 = [(CTDisplayPlanList *)self->_pendingInstallPlans plans];
  v9 = [v8 count];
  v10 = [(CTDisplayPlanList *)self->_carrierSetupItems plans];
  v11 = [v10 count];

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v12 = self->_transferPlans;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v61 objects:v67 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v62;
    while (2)
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v62 != v15)
        {
          objc_enumerationMutation(v12);
        }

        if ([*(*(&v61 + 1) + 8 * i) transferCapability] == 20)
        {
          v17 = 1;
          goto LABEL_13;
        }
      }

      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v61 objects:v67 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }
  }

  v17 = 0;
LABEL_13:

  v18 = +[TSUtilities transferOptions];
  if (v17)
  {
    v19 = objc_alloc_init(SSeSIMCountRestrictionWarningViewController);
    goto LABEL_22;
  }

  if (self->_transferBackPlan)
  {
    if ([(NSMutableArray *)self->_transferItems count]== 1)
    {
      v20 = [(NSMutableArray *)self->_transferItems objectAtIndexedSubscript:0];
      v21 = [v20 objectForKeyedSubscript:@"planItem"];

      v22 = [TSSinglePlanTransferViewController alloc];
      v23 = [(NSMutableArray *)self->_transferItems objectAtIndexedSubscript:0];
      LOBYTE(v52) = 0;
      LOBYTE(v51) = 0;
      v24 = -[TSSinglePlanTransferViewController initWithTransferPlan:isPhysical:isIneligible:inBuddy:confirmCellularPlanTransfer:showOtherOptions:isStandaloneProximityFlow:transferBackPhoneNumber:isShowingFilteredPlans:](v22, "initWithTransferPlan:isPhysical:isIneligible:inBuddy:confirmCellularPlanTransfer:showOtherOptions:isStandaloneProximityFlow:transferBackPhoneNumber:isShowingFilteredPlans:", v23, [v21 isPhysical], objc_msgSend(v21, "isTransferIneligiblePlan"), 0, 1, 1, v51, self->_transferBackPlanPhoneNumber, v52);

LABEL_23:
      v31 = v56;
      v26 = v53;
      goto LABEL_24;
    }

    v19 = [[TSCellularPlanIntroViewController alloc] initWithTransferBackPlan:self->_transferBackPlan];
LABEL_22:
    v24 = v19;
    goto LABEL_23;
  }

  v25 = v9 + v7 + v11;
  if (!v25)
  {
    v34 = v18;
    v35 = [(CTDisplayPlanList *)self->_crossPlatformTransferItems plans];
    v36 = [v35 count];

    v26 = v53;
    if (v36 == 1)
    {
      v37 = [TSSinglePlanTransferViewController alloc];
      v28 = [(CTDisplayPlanList *)self->_crossPlatformTransferItems plans];
      v38 = [v28 objectAtIndexedSubscript:0];
      v39 = [(TSSinglePlanTransferViewController *)v37 initWithCrossPlatformTransferPlan:v38];
LABEL_40:
      v24 = v39;

      goto LABEL_41;
    }

    if ([v60 count])
    {
      v65[0] = @"FlowTypeKey";
      v65[1] = @"IsFirstViewKey";
      v66[0] = &unk_287583AC0;
      v66[1] = MEMORY[0x277CBEC38];
      v65[2] = @"Plans";
      v66[2] = self->_transferPlans;
      v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v66 forKeys:v65 count:3];
      v28 = [v42 mutableCopy];

      v24 = [[TSSubFlowViewController alloc] initWithOptions:v28 navigationController:0 delegate:self];
      goto LABEL_41;
    }

    if ([v5 count])
    {
      v41 = [[TSNoPlanForTransferViewController alloc] initWithPlans:self->_transferPlans showOtherOptions:1];
    }

    else if (v34 | !+[TSUtilities isPad])
    {
      v41 = [[TSCellularPlanIntroViewController alloc] initWithShowTransferOption:v34 requireDelayBluetoothConnection:0 showQrCodeOption:1 transferIneligiblePlans:0];
    }

    else
    {
      v41 = [[SSCellularPlanScanViewController alloc] initWithBackButton:0];
    }

LABEL_50:
    v24 = v41;
    goto LABEL_42;
  }

  v26 = v53;
  if (![v60 count])
  {
    v40 = [v58 count] + v25;
    if ((v40 + [v5 count]) >= 2)
    {
      if ([v55 count] != v25)
      {
        goto LABEL_20;
      }

      goto LABEL_31;
    }

    v43 = [(CTDisplayPlanList *)self->_pendingInstallPlans plans];
    v44 = [v43 count];

    if (v44 == 1)
    {
      v45 = [TSSinglePlanTransferViewController alloc];
      v28 = [(CTDisplayPlanList *)self->_pendingInstallPlans plans];
      v38 = [v28 objectAtIndexedSubscript:0];
      v39 = [(TSSinglePlanTransferViewController *)v45 initWithPendingInstallPlan:v38];
      goto LABEL_40;
    }

    if ([v53 count] == 1)
    {
      v46 = [(NSMutableArray *)self->_transferItems objectAtIndexedSubscript:0];
      v28 = [v46 objectForKeyedSubscript:@"planItem"];

      v47 = [TSSinglePlanTransferViewController alloc];
      v38 = [(NSMutableArray *)self->_transferItems objectAtIndexedSubscript:0];
      LOBYTE(v51) = 0;
      v39 = -[TSSinglePlanTransferViewController initWithTransferPlan:isPhysical:isIneligible:inBuddy:confirmCellularPlanTransfer:showOtherOptions:isShowingFilteredPlans:](v47, "initWithTransferPlan:isPhysical:isIneligible:inBuddy:confirmCellularPlanTransfer:showOtherOptions:isShowingFilteredPlans:", v38, [v28 isPhysical], objc_msgSend(v28, "isTransferIneligiblePlan"), 0, 1, 1, v51);
      goto LABEL_40;
    }

    if ([v55 count] == 1)
    {
LABEL_31:
      v41 = [[SSVisitStoreViewController alloc] initWithPlans:v55 showOtherOption:1];
      goto LABEL_50;
    }

    if ([v57 count] == 1)
    {
      goto LABEL_20;
    }

    v48 = [(CTDisplayPlanList *)self->_carrierSetupItems plans];
    v49 = [v48 count];

    if (v49 != 1)
    {
      v24 = 0;
      goto LABEL_42;
    }

    v50 = [TSTransferListViewController alloc];
    BYTE2(v51) = !self->_isFlexPolicyOn;
    LOWORD(v51) = 1;
    v41 = [TSTransferListViewController initWithTransferPlans:v50 confirmCellularPlanTransfer:"initWithTransferPlans:confirmCellularPlanTransfer:isActivationPolicyMismatch:isDualeSIMCapabilityLoss:pendingInstallItems:carrierSetupItems:showOtherOptions:isStandaloneProximityFlow:allowsMultiSelection:" isActivationPolicyMismatch:self->_transferPlans isDualeSIMCapabilityLoss:1 pendingInstallItems:self->_isActivationPolicyMismatch carrierSetupItems:self->_isDualeSIMCapabilityLoss showOtherOptions:self->_pendingInstallPlans isStandaloneProximityFlow:self->_carrierSetupItems allowsMultiSelection:v51];
    goto LABEL_50;
  }

LABEL_20:
  v27 = [TSMultiPlanIntermediateViewController alloc];
  v28 = [(CTDisplayPlanList *)self->_pendingInstallPlans plans];
  transferPlans = self->_transferPlans;
  v30 = [(CTDisplayPlanList *)self->_carrierSetupItems plans];
  LOWORD(v51) = 0;
  v24 = [(TSMultiPlanIntermediateViewController *)v27 initWithPendingInstallPlans:v28 transferPlans:transferPlans carrierSetupPlans:v30 showQRCodeOption:1 showOtherOptions:1 isShowingFilteredPlans:0 isStandaloneProximityFlow:v51 isHiddenPlanSelectable:?];

LABEL_41:
LABEL_42:
  v31 = v56;
LABEL_24:

  v32 = *MEMORY[0x277D85DE8];

  return v24;
}

- (void)_maybeShowPreinstallConsentOnViewController:(id)a3 planItems:(id)a4
{
  v6 = a3;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __90__TSActivationFlowWithSimSetupFlow__maybeShowPreinstallConsentOnViewController_planItems___block_invoke;
  v13[3] = &unk_279B45220;
  v13[4] = self;
  v7 = v6;
  v14 = v7;
  v8 = [TSUtilities preinstallPPRAlertControllerWithItems:a4 completion:v13];
  if (v8)
  {
    v9 = dispatch_time(0, 250000000);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __90__TSActivationFlowWithSimSetupFlow__maybeShowPreinstallConsentOnViewController_planItems___block_invoke_2;
    v10[3] = &unk_279B44490;
    v11 = v7;
    v12 = v8;
    dispatch_after(v9, MEMORY[0x277D85CD0], v10);
  }
}

uint64_t __90__TSActivationFlowWithSimSetupFlow__maybeShowPreinstallConsentOnViewController_planItems___block_invoke(uint64_t result, uint64_t a2)
{
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      v2 = *(result + 32);
      v3 = 2;
    }

    else
    {
      if (a2 != 3)
      {
        return result;
      }

      v2 = *(result + 32);
      v3 = 1;
    }

    *(v2 + 192) = v3;
    return [*(result + 40) didChangeValueForKey:@"userConsentAllowed"];
  }

  if (!a2)
  {
    *(*(result + 32) + 192) = 0;
    return [*(result + 40) didChangeValueForKey:@"userConsentAllowed"];
  }

  if (a2 == 1)
  {
    return [*(result + 32) userDidTapCancel];
  }

  return result;
}

- (void)_requestPlansWithCompletion:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_initWeak(&location, self);
    v5 = MEMORY[0x2667315D0](v4);
    v6 = dispatch_group_create();
    queryGroup = self->_queryGroup;
    self->_queryGroup = v6;

    dispatch_group_enter(self->_queryGroup);
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __64__TSActivationFlowWithSimSetupFlow__requestPlansWithCompletion___block_invoke;
    v26[3] = &unk_279B44400;
    objc_copyWeak(&v27, &location);
    [(TSActivationFlowWithSimSetupFlow *)self _requestTransferPlanListWithCompletion:v26];
    objc_destroyWeak(&v27);
    if (!self->_transferBackPlan)
    {
      if (!+[TSUtilities isPad])
      {
        dispatch_group_enter(self->_queryGroup);
        v24[0] = MEMORY[0x277D85DD0];
        v24[1] = 3221225472;
        v24[2] = __64__TSActivationFlowWithSimSetupFlow__requestPlansWithCompletion___block_invoke_103;
        v24[3] = &unk_279B44400;
        objc_copyWeak(&v25, &location);
        [(TSActivationFlowWithSimSetupFlow *)self _requestCarrierSetupsWithCompletion:v24];
        objc_destroyWeak(&v25);
      }

      if (!self->_transferBackPlan)
      {
        if ([(TSActivationFlowWithSimSetupFlow *)self _showPendingInstallItems])
        {
          dispatch_group_enter(self->_queryGroup);
          v22[0] = MEMORY[0x277D85DD0];
          v22[1] = 3221225472;
          v22[2] = __64__TSActivationFlowWithSimSetupFlow__requestPlansWithCompletion___block_invoke_104;
          v22[3] = &unk_279B44400;
          objc_copyWeak(&v23, &location);
          [(TSActivationFlowWithSimSetupFlow *)self _requestPendingInstallItemsWithCompletion:v22];
          objc_destroyWeak(&v23);
        }

        if (!self->_transferBackPlan)
        {
          dispatch_group_enter(self->_queryGroup);
          v20[0] = MEMORY[0x277D85DD0];
          v20[1] = 3221225472;
          v20[2] = __64__TSActivationFlowWithSimSetupFlow__requestPlansWithCompletion___block_invoke_105;
          v20[3] = &unk_279B44400;
          objc_copyWeak(&v21, &location);
          [(TSActivationFlowWithSimSetupFlow *)self _requestCrossPlatformTransferPlanListWithCompletion:v20];
          objc_destroyWeak(&v21);
        }
      }
    }

    v8 = self->_queryGroup;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __64__TSActivationFlowWithSimSetupFlow__requestPlansWithCompletion___block_invoke_106;
    v18[3] = &unk_279B44938;
    v19 = v5;
    v9 = v5;
    dispatch_group_notify(v8, MEMORY[0x277D85CD0], v18);

    objc_destroyWeak(&location);
  }

  else
  {
    v10 = _TSLogDomain();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(TSActivationFlowWithSimSetupFlow *)v10 _requestPlansWithCompletion:v11, v12, v13, v14, v15, v16, v17];
    }
  }
}

void __64__TSActivationFlowWithSimSetupFlow__requestPlansWithCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    dispatch_group_leave(WeakRetained[25]);
  }

  else
  {
    v3 = _TSLogDomain();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __64__TSActivationFlowWithSimSetupFlow__requestPlansWithCompletion___block_invoke_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void __64__TSActivationFlowWithSimSetupFlow__requestPlansWithCompletion___block_invoke_103(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    dispatch_group_leave(WeakRetained[25]);
  }

  else
  {
    v3 = _TSLogDomain();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __64__TSActivationFlowWithSimSetupFlow__requestPlansWithCompletion___block_invoke_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void __64__TSActivationFlowWithSimSetupFlow__requestPlansWithCompletion___block_invoke_104(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    dispatch_group_leave(WeakRetained[25]);
  }

  else
  {
    v3 = _TSLogDomain();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __64__TSActivationFlowWithSimSetupFlow__requestPlansWithCompletion___block_invoke_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void __64__TSActivationFlowWithSimSetupFlow__requestPlansWithCompletion___block_invoke_105(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    dispatch_group_leave(WeakRetained[25]);
  }

  else
  {
    v3 = _TSLogDomain();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __64__TSActivationFlowWithSimSetupFlow__requestPlansWithCompletion___block_invoke_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

- (void)_requestTransferPlanListWithCompletion:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_initWeak(&location, self);
    v5 = MEMORY[0x2667315D0](v4);
    v6 = +[TSCoreTelephonyClientCache sharedInstance];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __75__TSActivationFlowWithSimSetupFlow__requestTransferPlanListWithCompletion___block_invoke;
    v16[3] = &unk_279B45270;
    v7 = v5;
    v17 = v7;
    objc_copyWeak(&v18, &location);
    [v6 bootstrapPlanTransferUsingMessageSession:0 flowType:3 completion:v16];

    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }

  else
  {
    v8 = _TSLogDomain();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(TSActivationFlowWithSimSetupFlow *)v8 _requestTransferPlanListWithCompletion:v9, v10, v11, v12, v13, v14, v15];
    }
  }
}

void __75__TSActivationFlowWithSimSetupFlow__requestTransferPlanListWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = _TSLogDomain();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __75__TSActivationFlowWithSimSetupFlow__requestTransferPlanListWithCompletion___block_invoke_cold_1();
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v5 = +[TSCoreTelephonyClientCache sharedInstance];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __75__TSActivationFlowWithSimSetupFlow__requestTransferPlanListWithCompletion___block_invoke_108;
    v6[3] = &unk_279B45248;
    objc_copyWeak(&v8, (a1 + 40));
    v7 = *(a1 + 32);
    [v5 transferPlanListWithCompletion:v6];

    objc_destroyWeak(&v8);
  }
}

void __75__TSActivationFlowWithSimSetupFlow__requestTransferPlanListWithCompletion___block_invoke_108(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v60 = *MEMORY[0x277D85DE8];
  v8 = a2;
  v9 = a5;
  v39 = a1;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v11 = WeakRetained;
  v40 = v9;
  if (!v9)
  {
    if (!v8)
    {
      v12 = _TSLogDomain();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        *v55 = "[TSActivationFlowWithSimSetupFlow _requestTransferPlanListWithCompletion:]_block_invoke";
        _os_log_impl(&dword_262AA8000, v12, OS_LOG_TYPE_DEFAULT, "empty transfer plans @%s", buf, 0xCu);
      }

      goto LABEL_4;
    }

    if (!WeakRetained)
    {
      goto LABEL_5;
    }

    [WeakRetained setIsFlexPolicyOn:a4];
    [v11[29] removeAllObjects];
    v14 = [v11 transferPlans];
    [v14 removeAllObjects];

    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v37 = v8;
    obj = [v8 devices];
    v38 = 1;
    v44 = [obj countByEnumeratingWithState:&v50 objects:v59 count:16];
    if (!v44)
    {
LABEL_38:

      if (!+[TSUtilities isPad]&& (v38 & 1) == 0)
      {
        v33 = +[TSCoreTelephonyClientCache sharedInstance];
        v34 = [v33 deviceSupportsHydra];

        if ((v34 & 1) == 0)
        {
          *(v11 + 99) = 1;
        }
      }

      v12 = _TSLogDomain();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v35 = *(v11 + 98);
        v36 = v11[29];
        *buf = 67109634;
        *v55 = v35;
        *&v55[4] = 2112;
        *&v55[6] = v36;
        *&v55[14] = 2080;
        *&v55[16] = "[TSActivationFlowWithSimSetupFlow _requestTransferPlanListWithCompletion:]_block_invoke";
        _os_log_impl(&dword_262AA8000, v12, OS_LOG_TYPE_DEFAULT, "isActivationPolicyMismatch: %d, transfer plans: %@ @%s", buf, 0x1Cu);
      }

      v8 = v37;
      goto LABEL_4;
    }

    v41 = 0;
    v43 = *v51;
LABEL_10:
    v15 = 0;
    while (1)
    {
      if (*v51 != v43)
      {
        objc_enumerationMutation(obj);
      }

      v45 = v15;
      v16 = *(*(&v50 + 1) + 8 * v15);
      if (objc_opt_respondsToSelector())
      {
        v41 = [v16 performSelector:sel_isMultiESimEnabled] != 0;
        v17 = _TSLogDomain();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v18 = [v16 deviceName];
          *buf = 138412546;
          *v55 = v18;
          *&v55[8] = 2080;
          *&v55[10] = "[TSActivationFlowWithSimSetupFlow _requestTransferPlanListWithCompletion:]_block_invoke";
          _os_log_impl(&dword_262AA8000, v17, OS_LOG_TYPE_DEFAULT, "remote device:%@ use dual eSIM config @%s", buf, 0x16u);
        }
      }

      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v19 = [v16 remoteDisplayPlans];
      v20 = [v19 countByEnumeratingWithState:&v46 objects:v58 count:16];
      if (v20)
      {
        break;
      }

LABEL_35:

      v15 = v45 + 1;
      if (v45 + 1 == v44)
      {
        v44 = [obj countByEnumeratingWithState:&v50 objects:v59 count:16];
        if (!v44)
        {
          v38 = !v41;
          goto LABEL_38;
        }

        goto LABEL_10;
      }
    }

    v21 = v20;
    v22 = *v47;
LABEL_19:
    v23 = 0;
    while (1)
    {
      if (*v47 != v22)
      {
        objc_enumerationMutation(v19);
      }

      v24 = *(*(&v46 + 1) + 8 * v23);
      v25 = [v11 transferBackPlan];

      if (!v25)
      {
        goto LABEL_28;
      }

      if ([v24 isTransferablePlan])
      {
        v26 = [v11 transferBackPlanPhoneNumber];
        v27 = [v24 phoneNumber];
        v28 = [v26 isEqualToPhoneNumber:v27];

        if (v28)
        {
          break;
        }
      }

LABEL_33:
      if (v21 == ++v23)
      {
        v21 = [v19 countByEnumeratingWithState:&v46 objects:v58 count:16];
        if (!v21)
        {
          goto LABEL_35;
        }

        goto LABEL_19;
      }
    }

    v29 = _TSLogDomain();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = [v11 transferBackPlanPhoneNumber];
      *buf = 138412546;
      *v55 = v30;
      *&v55[8] = 2080;
      *&v55[10] = "[TSActivationFlowWithSimSetupFlow _requestTransferPlanListWithCompletion:]_block_invoke";
      _os_log_impl(&dword_262AA8000, v29, OS_LOG_TYPE_DEFAULT, "find plan with same phone number : %@ @%s", buf, 0x16u);
    }

LABEL_28:
    v31 = [v11 transferPlans];
    [v31 addObject:v24];

    if ([v24 isPlanHiddenRequiredForCloudFlow])
    {
      v32 = [v11 transferIneligibleViaCloudItems];
      [v32 addObject:v24];
    }

    else
    {
      v56[0] = @"planItem";
      v56[1] = @"deviceInfo";
      v57[0] = v24;
      v57[1] = v16;
      v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v57 forKeys:v56 count:2];
      [v11[29] addObject:v32];
      if ([v24 isNotEligibleActivationPolicyMismatchPlan])
      {
        *(v11 + 98) = 1;
      }
    }

    goto LABEL_33;
  }

  v12 = _TSLogDomain();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    __75__TSActivationFlowWithSimSetupFlow__requestTransferPlanListWithCompletion___block_invoke_108_cold_1();
  }

LABEL_4:

LABEL_5:
  (*(*(v39 + 32) + 16))();

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_requestCrossPlatformTransferPlanListWithCompletion:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_initWeak(&location, self);
    v5 = MEMORY[0x2667315D0](v4);
    v6 = +[TSCoreTelephonyClientCache sharedInstance];
    v7 = [v6 getCoreTelephonyClient];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __88__TSActivationFlowWithSimSetupFlow__requestCrossPlatformTransferPlanListWithCompletion___block_invoke;
    v17[3] = &unk_279B45298;
    objc_copyWeak(&v19, &location);
    v8 = v5;
    v18 = v8;
    [v7 plansPendingCrossPlatformTransferWithCompletion:v17];

    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }

  else
  {
    v9 = _TSLogDomain();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(TSActivationFlowWithSimSetupFlow *)v9 _requestCrossPlatformTransferPlanListWithCompletion:v10, v11, v12, v13, v14, v15, v16];
    }
  }
}

void __88__TSActivationFlowWithSimSetupFlow__requestCrossPlatformTransferPlanListWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (v6)
    {
      v8 = _TSLogDomain();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        __88__TSActivationFlowWithSimSetupFlow__requestCrossPlatformTransferPlanListWithCompletion___block_invoke_cold_1();
      }
    }

    v9 = _TSLogDomain();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 138412546;
      v21 = v5;
      v22 = 2080;
      v23 = "[TSActivationFlowWithSimSetupFlow _requestCrossPlatformTransferPlanListWithCompletion:]_block_invoke";
      _os_log_impl(&dword_262AA8000, v9, OS_LOG_TYPE_DEFAULT, "Cross platform transfer items %@ @%s", &v20, 0x16u);
    }

    v10 = v5;
    v11 = WeakRetained[17];
    WeakRetained[17] = v10;
  }

  else
  {
    v11 = _TSLogDomain();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __88__TSActivationFlowWithSimSetupFlow__requestCrossPlatformTransferPlanListWithCompletion___block_invoke_cold_2(v11, v12, v13, v14, v15, v16, v17, v18);
    }
  }

  (*(*(a1 + 32) + 16))();
  v19 = *MEMORY[0x277D85DE8];
}

- (void)_requestPendingInstallItemsWithCompletion:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_initWeak(&location, self);
    v5 = MEMORY[0x2667315D0](v4);
    v6 = +[TSCoreTelephonyClientCache sharedInstance];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __78__TSActivationFlowWithSimSetupFlow__requestPendingInstallItemsWithCompletion___block_invoke;
    v16[3] = &unk_279B452C0;
    objc_copyWeak(&v18, &location);
    v7 = v5;
    v17 = v7;
    [v6 pendingInstallItemsWithCompletion:v16];

    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }

  else
  {
    v8 = _TSLogDomain();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(TSActivationFlowWithSimSetupFlow *)v8 _requestPendingInstallItemsWithCompletion:v9, v10, v11, v12, v13, v14, v15];
    }
  }
}

void __78__TSActivationFlowWithSimSetupFlow__requestPendingInstallItemsWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    objc_storeStrong(WeakRetained + 15, a2);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)_requestCarrierSetupsWithCompletion:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_initWeak(&location, self);
    v5 = MEMORY[0x2667315D0](v4);
    v6 = +[TSCoreTelephonyClientCache sharedInstance];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __72__TSActivationFlowWithSimSetupFlow__requestCarrierSetupsWithCompletion___block_invoke;
    v16[3] = &unk_279B452E8;
    objc_copyWeak(&v18, &location);
    v7 = v5;
    v16[4] = self;
    v17 = v7;
    [v6 getCarrierSetupWithCompletion:v16];

    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }

  else
  {
    v8 = _TSLogDomain();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(TSActivationFlowWithSimSetupFlow *)v8 _requestCarrierSetupsWithCompletion:v9, v10, v11, v12, v13, v14, v15];
    }
  }
}

void __72__TSActivationFlowWithSimSetupFlow__requestCarrierSetupsWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v6 = _TSLogDomain();
  v7 = v6;
  if (WeakRetained)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v20 = v4;
      v21 = 2080;
      v22 = "[TSActivationFlowWithSimSetupFlow _requestCarrierSetupsWithCompletion:]_block_invoke";
      _os_log_impl(&dword_262AA8000, v7, OS_LOG_TYPE_DEFAULT, "Carrier setup %@ @%s", buf, 0x16u);
    }

    objc_storeStrong(WeakRetained + 16, a2);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __72__TSActivationFlowWithSimSetupFlow__requestCarrierSetupsWithCompletion___block_invoke_114;
    v17[3] = &unk_279B44938;
    v8 = *(a1 + 32);
    v18 = *(a1 + 40);
    [v8 getWebsheetInfo:v4 completion:v17];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __72__TSActivationFlowWithSimSetupFlow__requestCarrierSetupsWithCompletion___block_invoke_cold_1(v7, v9, v10, v11, v12, v13, v14, v15);
    }

    (*(*(a1 + 40) + 16))();
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)getWebsheetInfo:(id)a3 completion:(id)a4
{
  location[3] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    objc_initWeak(location, self);
    v8 = [(CTDisplayPlanList *)self->_carrierSetupItems plans];
    v9 = [v8 count] > 1;

    if (v9)
    {
      v10 = _TSLogDomain();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [(TSActivationFlowWithSimSetupFlow *)v10 getWebsheetInfo:v11 completion:v12, v13, v14, v15, v16, v17];
      }
    }

    v18 = [(CTDisplayPlanList *)self->_carrierSetupItems plans];
    v19 = [v18 count] == 0;

    if (!v19)
    {
      v20 = +[TSCoreTelephonyClientCache sharedInstance];
      v21 = [(CTDisplayPlanList *)self->_carrierSetupItems plans];
      v22 = [v21 objectAtIndexedSubscript:0];
      v23 = [v22 plan];
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __63__TSActivationFlowWithSimSetupFlow_getWebsheetInfo_completion___block_invoke;
      v26[3] = &unk_279B45310;
      objc_copyWeak(&v28, location);
      v27 = v7;
      [v20 getWebsheetInfoForPlan:v23 inBuddy:0 completion:v26];

      objc_destroyWeak(&v28);
    }

    objc_destroyWeak(location);
  }

  else
  {
    v24 = _TSLogDomain();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(location[0]) = 136315138;
      *(location + 4) = "[TSActivationFlowWithSimSetupFlow getWebsheetInfo:completion:]";
      _os_log_impl(&dword_262AA8000, v24, OS_LOG_TYPE_DEFAULT, "No carrier setup items @%s", location, 0xCu);
    }

    v7[2](v7);
  }

  v25 = *MEMORY[0x277D85DE8];
}

void __63__TSActivationFlowWithSimSetupFlow_getWebsheetInfo_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    objc_storeStrong(WeakRetained + 19, a2);
    objc_storeStrong(v9 + 20, a3);
  }

  else
  {
    v10 = _TSLogDomain();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __63__TSActivationFlowWithSimSetupFlow_getWebsheetInfo_completion___block_invoke_cold_1(v10, v11, v12, v13, v14, v15, v16, v17);
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)_filterCarrierSetupItems:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [v5 plans];
  v7 = [v6 count];

  if (v7)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    transferPlans = self->_transferPlans;
    v10 = [(CTDisplayPlanList *)self->_carrierSetupItems plans];
    [(NSMutableArray *)transferPlans filteredPlansWithoutSODATether:v10];

    if ([TSFlowHelper hasTransferablePlanWithSameCarrierName:v5 transferablePlans:self->_transferItems inBuddy:0 matchingSODACarrierWebsheetTransferPlanIndex:v8])
    {
      carrierSetupItems = self->_carrierSetupItems;
      self->_carrierSetupItems = 0;
    }

    else
    {
      objc_storeStrong(&self->_carrierSetupItems, a3);
      v21 = v8;
      v12 = [TSFlowHelper sortIndexesInDescending:v8];
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v13 = [v12 countByEnumeratingWithState:&v22 objects:v30 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v23;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v23 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = [*(*(&v22 + 1) + 8 * i) unsignedIntegerValue];
            v18 = _TSLogDomain();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              v19 = [(NSMutableArray *)self->_transferItems objectAtIndex:v17];
              *buf = 138412546;
              v27 = v19;
              v28 = 2080;
              v29 = "[TSActivationFlowWithSimSetupFlow _filterCarrierSetupItems:]";
              _os_log_impl(&dword_262AA8000, v18, OS_LOG_TYPE_DEFAULT, "Plan %@ will be removed from transfer list @%s", buf, 0x16u);
            }

            [(NSMutableArray *)self->_transferItems removeObjectAtIndex:v17];
          }

          v14 = [v12 countByEnumeratingWithState:&v22 objects:v30 count:16];
        }

        while (v14);
      }

      v8 = v21;
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_userDidTapCancel
{
  v3 = [(TSSIMSetupFlow *)self topViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_4;
  }

  v4 = [(TSSIMSetupFlow *)self topViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

LABEL_4:
LABEL_5:
    v17 = +[TSCoreTelephonyClientCache sharedInstance];
    v16 = objc_alloc(MEMORY[0x277CC3720]);
    v15 = [TSUtilities transferablePlans:self->_transferItems];
    v5 = [(CTDisplayPlanList *)self->_pendingInstallPlans plans];
    v6 = [v5 count];
    v7 = [TSUtilities odaPlans:self->_transferItems];
    v8 = [TSUtilities transferablePlanCarriers:self->_transferItems];
    v9 = [(CTDisplayPlanList *)self->_pendingInstallPlans plans];
    v10 = [TSUtilities alsPlanCarriers:v9];
    v11 = [TSUtilities odaPlanCarriers:self->_transferItems];
    v12 = [v16 initWithInBuddy:0 transferablePlans:v15 selectedTransferablePlans:0 alsPlans:v6 selectedAlsPlans:0 odaPlans:v7 transferPlanCarriers:v8 selectedTransferPlanCarriers:&stru_28753DF48 alsPlanCarriers:v10 selectedAlsPlanCarriers:&stru_28753DF48 odaPlanCarriers:v11 selectedOdaPlanCarriers:&stru_28753DF48 sourceDevicesCount:+[TSUtilities sourceDevicesCount:](TSUtilities selectedSourceDevicesCount:{"sourceDevicesCount:", self->_transferItems), 0}];
    [v17 submitSimSetupUsage:v12];

    goto LABEL_6;
  }

  v13 = [(TSSIMSetupFlow *)self topViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    goto LABEL_5;
  }

LABEL_6:

  [(TSSIMSetupFlow *)self userDidTapCancel];
}

- (void)startOverWithFirstViewController:(id)a3
{
  v7 = a3;
  v4 = [(TSSIMSetupFlow *)self navigationController];
  v5 = [v4 topViewController];
  v6 = [(TSSIMSetupFlow *)self navigationController];
  LOBYTE(self) = [(TSSIMSetupFlow *)self handleStartOverWithEntryPoint:v5 navigationController:v6 completion:v7];

  if ((self & 1) == 0)
  {
    v7[2](v7, 0);
  }
}

- (void)firstViewController
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_262AA8000, a1, a3, "[E](UIViewController *)firstViewController is deprecated, please use (void)firstViewController:(void (^)(UIViewController *))completion @%s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __66__TSActivationFlowWithSimSetupFlow__sendSIMSetupReadyNotification__block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __56__TSActivationFlowWithSimSetupFlow_firstViewController___block_invoke_2_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_262AA8000, a1, a3, "[E]invalid self @%s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __56__TSActivationFlowWithSimSetupFlow_firstViewController___block_invoke_40_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_262AA8000, a1, a3, "[E]invalid self @%s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_maybePresentFirstViewController:(uint64_t)a3 firstViewControllerCallback:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_262AA8000, a1, a3, "[E]nothing to present @%s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __97__TSActivationFlowWithSimSetupFlow__maybePresentFirstViewController_firstViewControllerCallback___block_invoke_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_262AA8000, a1, a3, "[E]nothing to present!!! @%s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)nextViewControllerFrom:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_262AA8000, a1, a3, "[E]unexpected @%s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)planItemsUpdated:(uint64_t *)a1 planListError:.cold.1(uint64_t *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)planItemsUpdated:planListError:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)didPurchasePlanSuccessfullyWithEid:(uint64_t)a3 imei:(uint64_t)a4 meid:(uint64_t)a5 iccid:(uint64_t)a6 alternateSDMP:(uint64_t)a7 state:(uint64_t)a8 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_262AA8000, a1, a3, "[E]No EID, not implemented @%s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_requestPlansWithCompletion:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_262AA8000, a1, a3, "[E]invalid completion @%s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __64__TSActivationFlowWithSimSetupFlow__requestPlansWithCompletion___block_invoke_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_262AA8000, a1, a3, "[E]invalid self @%s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_requestTransferPlanListWithCompletion:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_262AA8000, a1, a3, "[E]invalid completion @%s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __75__TSActivationFlowWithSimSetupFlow__requestTransferPlanListWithCompletion___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __75__TSActivationFlowWithSimSetupFlow__requestTransferPlanListWithCompletion___block_invoke_108_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_requestCrossPlatformTransferPlanListWithCompletion:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_262AA8000, a1, a3, "[E]Invalid completion @%s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __88__TSActivationFlowWithSimSetupFlow__requestCrossPlatformTransferPlanListWithCompletion___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __88__TSActivationFlowWithSimSetupFlow__requestCrossPlatformTransferPlanListWithCompletion___block_invoke_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_262AA8000, a1, a3, "[E]Self doesnt exist @%s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_requestPendingInstallItemsWithCompletion:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_262AA8000, a1, a3, "[E]invalid completion @%s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_requestCarrierSetupsWithCompletion:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_262AA8000, a1, a3, "[E]Invalid completion @%s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __72__TSActivationFlowWithSimSetupFlow__requestCarrierSetupsWithCompletion___block_invoke_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_262AA8000, a1, a3, "[E]Self doesnt exist @%s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)getWebsheetInfo:(uint64_t)a3 completion:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_262AA8000, a1, a3, "[E]Wrong number of carrier setup items on server @%s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __63__TSActivationFlowWithSimSetupFlow_getWebsheetInfo_completion___block_invoke_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_262AA8000, a1, a3, "[E]Self doesnt exist @%s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

@end