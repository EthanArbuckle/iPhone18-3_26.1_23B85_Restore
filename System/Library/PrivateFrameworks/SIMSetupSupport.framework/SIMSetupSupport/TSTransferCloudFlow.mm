@interface TSTransferCloudFlow
- (TSTransferCloudFlow)initWithProximitySetupState:(unint64_t)a3 proxPlansFiltered:(BOOL)a4;
- (id)_firstViewController;
- (id)firstViewController;
- (id)nextViewControllerFrom:(id)a3;
- (void)_maybePresentFirstViewController:(id)a3 firstViewControllerCallback:(id)a4;
- (void)dealloc;
- (void)firstViewController;
- (void)firstViewController:(id)a3;
- (void)setCancelNavigationBarItems:(id)a3;
- (void)startOverWithFirstViewController:(id)a3;
- (void)userDidTapCancel;
@end

@implementation TSTransferCloudFlow

- (TSTransferCloudFlow)initWithProximitySetupState:(unint64_t)a3 proxPlansFiltered:(BOOL)a4
{
  v13.receiver = self;
  v13.super_class = TSTransferCloudFlow;
  v6 = [(TSSIMSetupFlow *)&v13 init];
  if (v6)
  {
    v7 = objc_alloc_init(TSTransferCloudFlowModel);
    model = v6->_model;
    v6->_model = v7;

    v9 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:v6 action:sel_userDidTapCancel];
    cancelButton = v6->_cancelButton;
    v6->_cancelButton = v9;

    v6->_proximitySetupState = a3;
    v6->_proxPlansFiltered = a4;
    v11 = +[TSUserInPurchaseFlowAssertion sharedInstance];
    [v11 assertUserInPurchaseFlowStartOver:0 caller:v6];
  }

  return v6;
}

- (void)dealloc
{
  v3 = +[TSUserInPurchaseFlowAssertion sharedInstance];
  [v3 deassertUserInPurchaseFlowWithForce:0 caller:self];

  v4.receiver = self;
  v4.super_class = TSTransferCloudFlow;
  [(TSTransferCloudFlow *)&v4 dealloc];
}

- (id)firstViewController
{
  v2 = _TSLogDomain();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    [(TSTransferCloudFlow *)v2 firstViewController];
  }

  return 0;
}

- (id)_firstViewController
{
  v2 = self;
  v91 = *MEMORY[0x277D85DE8];
  v3 = [(TSTransferCloudFlowModel *)self->_model transferPlans];
  v4 = [v3 filteredPlansForTransferableBucket];

  v69 = [v4 filteredPlansForHiddenInCloudBucket:0];
  v72 = [v4 filteredPlansForHiddenInCloudBucket:1];
  v5 = [(TSTransferCloudFlowModel *)v2->_model transferPlans];
  v6 = [v5 filteredPlansForSoftwareUpdateBucket];

  v7 = [(TSTransferCloudFlowModel *)v2->_model transferPlans];
  v8 = [v7 filteredPlansForQRCodeBucket];

  v9 = [(TSTransferCloudFlowModel *)v2->_model transferPlans];
  v73 = [v9 filteredPlansForNonInstallableBucket];

  v74 = [v4 filteredPlansForVisitStoreBucket];
  v75 = v6;
  v71 = [v6 filteredPlansForVisitStoreBucket];
  v10 = _TSLogDomain();
  v76 = v2;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134219778;
    *v78 = [v4 count];
    *&v78[8] = 2048;
    *&v78[10] = [v74 count];
    v79 = 2048;
    v80 = [v72 count];
    v81 = 2048;
    v82 = [v6 count];
    v83 = 2048;
    v84 = [v71 count];
    v85 = 2048;
    v86 = [v8 count];
    v87 = 2048;
    v88 = [v73 count];
    v89 = 2080;
    v90 = "[TSTransferCloudFlow _firstViewController]";
    _os_log_impl(&dword_262AA8000, v10, OS_LOG_TYPE_DEFAULT, "transferable:%lu (store:%lu, hidden:%lu), software update:%lu (store:%lu), qrcode:%lu, non install:%lu @%s", buf, 0x52u);
  }

  v11 = _TSLogDomain();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [(TSTransferCloudFlowModel *)v2->_model shouldShowCarrierSetupPane];
    *buf = 67109378;
    *v78 = v12;
    *&v78[4] = 2080;
    *&v78[6] = "[TSTransferCloudFlow _firstViewController]";
    _os_log_impl(&dword_262AA8000, v11, OS_LOG_TYPE_DEFAULT, "soda : %{BOOL}d @%s", buf, 0x12u);
  }

  v13 = _TSLogDomain();
  v70 = v8;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [(TSTransferCloudFlowModel *)v2->_model transferItems];
    v15 = [v14 count];
    v16 = [(TSTransferCloudFlowModel *)v2->_model requireStoreVisitItems];
    v17 = [v16 count];
    [(TSTransferCloudFlowModel *)v76->_model transferableHiddenInCloudFlowItems];
    v19 = v18 = v4;
    v20 = [v19 count];
    v21 = [(TSTransferCloudFlowModel *)v76->_model transferIneligibleItems];
    v22 = [v21 count];
    *buf = 134219010;
    *v78 = v15;
    *&v78[8] = 2048;
    *&v78[10] = v17;
    v2 = v76;
    v79 = 2048;
    v80 = v20;
    v81 = 2048;
    v82 = v22;
    v83 = 2080;
    v84 = "[TSTransferCloudFlow _firstViewController]";
    _os_log_impl(&dword_262AA8000, v13, OS_LOG_TYPE_DEFAULT, "transfer plans: %lu, store visit:%lu, hidden: %lu, ineligible: %lu @%s", buf, 0x34u);

    v4 = v18;
    v8 = v70;
  }

  v23 = [v4 count];
  v24 = [(TSTransferCloudFlowModel *)v2->_model carrierSetupItems];
  v25 = [v24 plans];
  v26 = [v25 count];

  if (!+[TSUtilities isPad](TSUtilities, "isPad") || !+[TSUtilities isGreenTeaCapable](TSUtilities, "isGreenTeaCapable") || !+[TSUtilities inBuddy])
  {
    v27 = [(TSTransferCloudFlowModel *)v2->_model transferItems];
    v30 = [(TSTransferCloudFlowModel *)v2->_model crossPlatformTransferItems];
    v31 = [v30 plans];
    v32 = [v31 count];

    if (v32 == 1)
    {
      v33 = _TSLogDomain();
      v29 = v69;
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        *v78 = "[TSTransferCloudFlow _firstViewController]";
        _os_log_impl(&dword_262AA8000, v33, OS_LOG_TYPE_DEFAULT, "Skip showing cross-platform VC. @%s", buf, 0xCu);
      }

      v28 = 0;
LABEL_43:

      v8 = v70;
      goto LABEL_44;
    }

    v34 = v26 + v23;
    v35 = [v8 count];
    if (v34)
    {
      v29 = v69;
      if (v35)
      {
        goto LABEL_19;
      }

      v44 = [v73 count];
      v45 = v44 + [v75 count] + v34;
      v46 = [v74 count];
      if (v45 >= 2)
      {
        if (v46 != v34)
        {
          goto LABEL_19;
        }

        goto LABEL_29;
      }

      if (v46 == 1)
      {
LABEL_29:
        v28 = [[SSVisitStoreViewController alloc] initWithPlans:v74 showOtherOption:0];
        v37 = v76;
        goto LABEL_41;
      }

      if ([v69 count] == 1 && -[NSObject count](v27, "count"))
      {
        v49 = [v27 objectAtIndexedSubscript:0];
        v38 = [v49 objectForKeyedSubscript:@"planItem"];

        v50 = [TSSinglePlanTransferViewController alloc];
        v39 = [v27 objectAtIndexedSubscript:0];
        v51 = [v38 isPhysical];
        v52 = [v38 isTransferIneligiblePlan];
        v37 = v76;
        LOBYTE(v68) = v76->_proxPlansFiltered;
        v28 = [(TSSinglePlanTransferViewController *)v50 initWithTransferPlan:v39 isPhysical:v51 isIneligible:v52 inBuddy:1 confirmCellularPlanTransfer:1 showOtherOptions:1 isShowingFilteredPlans:v68];
        goto LABEL_20;
      }

      if ([v72 count] == 1)
      {
LABEL_19:
        v36 = [TSMultiPlanIntermediateViewController alloc];
        v37 = v76;
        v38 = [(TSTransferCloudFlowModel *)v76->_model transferPlans];
        v39 = [(TSTransferCloudFlowModel *)v76->_model carrierSetupItems];
        v40 = [v39 plans];
        LOWORD(v68) = 0;
        v28 = [(TSMultiPlanIntermediateViewController *)v36 initWithPendingInstallPlans:0 transferPlans:v38 carrierSetupPlans:v40 showQRCodeOption:1 showOtherOptions:0 isShowingFilteredPlans:v76->_proxPlansFiltered isStandaloneProximityFlow:v68 isHiddenPlanSelectable:?];

LABEL_20:
        goto LABEL_41;
      }

      v37 = v76;
      v54 = [(TSTransferCloudFlowModel *)v76->_model carrierSetupItems];
      v55 = [v54 plans];
      v56 = [v55 count];

      if (v56 == 1)
      {
        v57 = [TSBuddyMLViewController alloc];
        v58 = [(TSTransferCloudFlowModel *)v76->_model carrierSetupItems];
        v59 = [v58 plans];
        v60 = [v59 objectAtIndexedSubscript:0];
        v61 = [v60 plan];
        v62 = [(TSTransferCloudFlowModel *)v76->_model websheetUrl];
        [(TSTransferCloudFlowModel *)v76->_model postdata];
        v64 = v63 = v4;
        v28 = [(TSBuddyMLViewController *)v57 initWithCTPlan:v61 websheetURL:v62 postdata:v64];

        v4 = v63;
        v29 = v69;

        [(TSTransferCloudFlow *)v76 _updateSourceProxCardState:0];
        goto LABEL_41;
      }

      goto LABEL_47;
    }

    if (v35)
    {
      v41 = [TSCellularPlanIntroViewController alloc];
      v37 = v76;
      v42 = [(TSTransferCloudFlowModel *)v76->_model needOfferProximityTransferOption];
      v43 = [(TSTransferCloudFlowModel *)v76->_model transferPlans];
      v28 = [(TSCellularPlanIntroViewController *)v41 initWithShowTransferOption:v42 requireDelayBluetoothConnection:0 showQrCodeOption:1 transferIneligiblePlans:v43];
    }

    else if ([v75 count])
    {
      v47 = [TSNoPlanForTransferViewController alloc];
      v37 = v76;
      v48 = [(TSTransferCloudFlowModel *)v76->_model transferPlans];
      v28 = [(TSNoPlanForTransferViewController *)v47 initWithPlans:v48 showOtherOptions:0];
    }

    else
    {
      v53 = +[TSUtilities areAnyPlansOnDevice];
      v37 = v76;
      if (v76->_proximitySetupState == 1)
      {
        v29 = v69;
        if (!v76->_proxPlansFiltered && !v53)
        {
          v28 = [(TSTransferCloudFlow *)v76 _createIntroViewController:0 showQrCodeOption:[(TSTransferCloudFlowModel *)v76->_model needOfferQRCodeOption]];
          goto LABEL_41;
        }

LABEL_47:
        v28 = 0;
LABEL_41:
        [(SSVisitStoreViewController *)v28 setDelegate:v37];
        v33 = _TSLogDomain();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          v65 = objc_opt_class();
          *buf = 138412546;
          *v78 = v65;
          *&v78[8] = 2080;
          *&v78[10] = "[TSTransferCloudFlow _firstViewController]";
          _os_log_impl(&dword_262AA8000, v33, OS_LOG_TYPE_DEFAULT, "first view: %@ @%s", buf, 0x16u);
        }

        goto LABEL_43;
      }

      v28 = 0;
    }

    v29 = v69;
    goto LABEL_41;
  }

  v27 = _TSLogDomain();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *v78 = "[TSTransferCloudFlow _firstViewController]";
    _os_log_impl(&dword_262AA8000, v27, OS_LOG_TYPE_DEFAULT, "Skip for greentea ipad in buddy @%s", buf, 0xCu);
  }

  v28 = 0;
  v29 = v69;
LABEL_44:

  v66 = *MEMORY[0x277D85DE8];

  return v28;
}

- (void)firstViewController:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    if ([(TSTransferCloudFlowModel *)self->_model isD2dDone])
    {
      v4[2](v4, 0);
    }

    else if (+[TSUtilities isPad]&& (_os_feature_enabled_impl() & 1) == 0)
    {
      v11 = _TSLogDomain();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v17 = "[TSTransferCloudFlow firstViewController:]";
        _os_log_impl(&dword_262AA8000, v11, OS_LOG_TYPE_DEFAULT, "Skip transfer cloud flow on iPad @%s", buf, 0xCu);
      }

      v4[2](v4, 0);
    }

    else
    {
      v5 = +[TSCellularPlanManagerCache sharedInstance];
      v6 = [v5 planItems];

      if ((_os_feature_enabled_impl() & 1) != 0 || ![v6 count])
      {
        if (_os_feature_enabled_impl())
        {
          objc_initWeak(buf, self);
          model = self->_model;
          v13[0] = MEMORY[0x277D85DD0];
          v13[1] = 3221225472;
          v13[2] = __43__TSTransferCloudFlow_firstViewController___block_invoke;
          v13[3] = &unk_279B44CD0;
          objc_copyWeak(&v15, buf);
          v14 = v4;
          [(TSTransferCloudFlowModel *)model arePlansAvailable:v13];

          objc_destroyWeak(&v15);
          objc_destroyWeak(buf);
        }

        else
        {
          v9 = _TSLogDomain();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            v17 = "[TSTransferCloudFlow firstViewController:]";
            _os_log_impl(&dword_262AA8000, v9, OS_LOG_TYPE_DEFAULT, "SIMSetupSupport/MagnoliaOverCloudInBuddy is disabled @%s", buf, 0xCu);
          }

          v10 = [(TSTransferCloudFlow *)self _firstViewController];
          (v4)[2](v4, v10);
        }
      }

      else
      {
        v7 = _TSLogDomain();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218242;
          v17 = [v6 count];
          v18 = 2080;
          v19 = "[TSTransferCloudFlow firstViewController:]";
          _os_log_impl(&dword_262AA8000, v7, OS_LOG_TYPE_DEFAULT, "Skip transfer cloud flow when user profiles: %zd @%s", buf, 0x16u);
        }

        v4[2](v4, 0);
      }
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __43__TSTransferCloudFlow_firstViewController___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [WeakRetained _firstViewController];

  v3 = objc_loadWeakRetained((a1 + 40));
  [v3 _maybePresentFirstViewController:v4 firstViewControllerCallback:*(a1 + 32)];
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
    v16[2] = __84__TSTransferCloudFlow__maybePresentFirstViewController_firstViewControllerCallback___block_invoke;
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
      [(TSTransferCloudFlow *)v8 _maybePresentFirstViewController:v9 firstViewControllerCallback:v10, v11, v12, v13, v14, v15];
    }

    (*(v7 + 2))(v7, 0);
  }
}

void __84__TSTransferCloudFlow__maybePresentFirstViewController_firstViewControllerCallback___block_invoke(uint64_t a1, void *a2)
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
        v26 = "[TSTransferCloudFlow _maybePresentFirstViewController:firstViewControllerCallback:]_block_invoke";
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
        v30 = "[TSTransferCloudFlow _maybePresentFirstViewController:firstViewControllerCallback:]_block_invoke";
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
          __84__TSTransferCloudFlow__maybePresentFirstViewController_firstViewControllerCallback___block_invoke_cold_1(v12, v13, v14, v15, v16, v17, v18, v19);
        }

        (*(*(a1 + 40) + 16))();
      }
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)startOverWithFirstViewController:(id)a3
{
  v4 = a3;
  v5 = [(TSSIMSetupFlow *)self navigationController];
  v6 = [v5 topViewController];
  v7 = [(TSSIMSetupFlow *)self navigationController];
  v8 = [(TSSIMSetupFlow *)self handleStartOverWithEntryPoint:v6 navigationController:v7 completion:v4];

  if (!v8)
  {
    v9 = +[TSCellularPlanManagerCache sharedInstance];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __56__TSTransferCloudFlow_startOverWithFirstViewController___block_invoke;
    v10[3] = &unk_279B45668;
    v10[4] = self;
    v11 = v4;
    [v9 hasInstallingPlanOrUserPlan:v10];
  }
}

void __56__TSTransferCloudFlow_startOverWithFirstViewController___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v4 = *(*(a1 + 40) + 16);

    v4();
  }

  else
  {
    v8 = v2;
    v9 = v3;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __56__TSTransferCloudFlow_startOverWithFirstViewController___block_invoke_2;
    v6[3] = &unk_279B44C30;
    v5 = *(a1 + 32);
    v7 = *(a1 + 40);
    [v5 firstViewController:v6];
  }
}

- (id)nextViewControllerFrom:(id)a3
{
  v114[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [TSSubFlowViewController alloc];
    v113[0] = @"FlowTypeKey";
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:10002];
    v113[1] = @"IsClientKey";
    v114[0] = v6;
    v114[1] = MEMORY[0x277CBEC28];
    v7 = MEMORY[0x277CBEAC0];
    v8 = v114;
    v9 = v113;
LABEL_3:
    v10 = [v7 dictionaryWithObjects:v8 forKeys:v9 count:2];
    v11 = [(TSSIMSetupFlow *)self navigationController];
    v12 = [(TSSubFlowViewController *)v5 initWithOptions:v10 navigationController:v11 delegate:self];

    goto LABEL_74;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = v4;
    if ([v13 isOtherButtonTapped])
    {
LABEL_6:
      v12 = -[TSTransferCloudFlow _createIntroViewController:showQrCodeOption:](self, "_createIntroViewController:showQrCodeOption:", [v13 requireDelayBluetoothConnection], 1);
LABEL_73:

      goto LABEL_74;
    }

    if (([v13 isSkipButtonTapped] & 1) == 0)
    {
      v23 = [TSSubFlowViewController alloc];
      v111[0] = @"FlowTypeKey";
      v111[1] = @"SkipActivatingPane";
      v112[0] = &unk_287583C70;
      v112[1] = MEMORY[0x277CBEC38];
      v111[2] = @"DelayStartActivatingTimer";
      v24 = [v13 installingTransferPlan];
      v25 = &unk_287583CA0;
      if (v24)
      {
        v25 = &unk_287583C88;
      }

      v112[2] = v25;
      v111[3] = @"PlanSetupTypeKey";
      v26 = [v13 installingTransferPlan];
      v27 = &unk_287583CD0;
      if (v26)
      {
        v27 = &unk_287583CB8;
      }

      v112[3] = v27;
      v111[4] = @"Plan";
      v28 = [v13 selectedPlan];
      v112[4] = v28;
      v29 = MEMORY[0x277CBEAC0];
      v30 = v112;
      v31 = v111;
      v32 = 5;
      goto LABEL_18;
    }

LABEL_72:
    v12 = 0;
    goto LABEL_73;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = v4;
    if (![v13 isTransferListCellTapped])
    {
      if (![v13 isScanButtonTapped])
      {
        goto LABEL_72;
      }

      v36 = [(TSTransferCloudFlowModel *)self->_model transferIneligibleItems];
      v37 = [v36 filteredPlansForQRCodeBucket];

      v107[0] = @"FlowTypeKey";
      v107[1] = @"IsFirstViewKey";
      v108[0] = &unk_287583CE8;
      v108[1] = MEMORY[0x277CBEC28];
      v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v108 forKeys:v107 count:2];
      v22 = [v38 mutableCopy];

      if ([v37 count])
      {
        [v22 setObject:v37 forKeyedSubscript:@"Plans"];
      }

      v39 = [TSSubFlowViewController alloc];
      v40 = [(TSSIMSetupFlow *)self navigationController];
      v41 = v39;
      v17 = v40;
      v12 = [(TSSubFlowViewController *)v41 initWithOptions:v22 navigationController:v40 delegate:self];
      goto LABEL_34;
    }

    v14 = [(TSTransferCloudFlowModel *)self->_model transferPlans];
    v15 = [v14 filteredPlansForTransferableBucket];

    v16 = [v15 filteredPlansForVisitStoreBucket];
    v17 = [v15 filteredPlansForHiddenInCloudBucket:0];
    v92 = v15;
    v91 = [v15 filteredPlansForHiddenInCloudBucket:1];
    v18 = [v17 count];
    v19 = [(TSTransferCloudFlowModel *)self->_model carrierSetupItems];
    v20 = [v19 plans];
    v21 = [v20 count];

    if (v18 + v21)
    {
      v45 = [TSTransferListViewController alloc];
      v46 = [(TSTransferCloudFlowModel *)self->_model transferPlans];
      v47 = [(TSTransferCloudFlowModel *)self->_model isActivationPolicyMismatch];
      v48 = [(TSTransferCloudFlowModel *)self->_model isDualeSIMCapablityLoss];
      [(TSTransferCloudFlowModel *)self->_model carrierSetupItems];
      v50 = v49 = v17;
      BYTE2(v90) = ![(TSTransferCloudFlowModel *)self->_model isFlexPolicyOn];
      LOWORD(v90) = 0;
      v12 = [TSTransferListViewController initWithTransferPlans:v45 confirmCellularPlanTransfer:"initWithTransferPlans:confirmCellularPlanTransfer:isActivationPolicyMismatch:isDualeSIMCapabilityLoss:pendingInstallItems:carrierSetupItems:showOtherOptions:isStandaloneProximityFlow:allowsMultiSelection:" isActivationPolicyMismatch:v46 isDualeSIMCapabilityLoss:1 pendingInstallItems:v47 carrierSetupItems:v48 showOtherOptions:0 isStandaloneProximityFlow:v50 allowsMultiSelection:v90];

      v17 = v49;
      v22 = v16;
    }

    else
    {
      v22 = v16;
      if (![v16 count])
      {
        v51 = v91;
        if ([v91 count])
        {
          v64 = v17;
          v65 = [TSSubFlowViewController alloc];
          v109[0] = @"FlowTypeKey";
          v66 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:10002];
          v109[1] = @"IsClientKey";
          v110[0] = v66;
          v110[1] = MEMORY[0x277CBEC28];
          v67 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v110 forKeys:v109 count:2];
          v68 = [(TSSIMSetupFlow *)self navigationController];
          v69 = v65;
          v17 = v64;
          v12 = [(TSSubFlowViewController *)v69 initWithOptions:v67 navigationController:v68 delegate:self];

          v22 = v16;
        }

        else
        {
          v74 = _TSLogDomain();
          if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
          {
            [(TSTransferCloudFlow *)v74 nextViewControllerFrom:v75, v76, v77, v78, v79, v80, v81];
          }

          v12 = 0;
        }

        v37 = v92;
        goto LABEL_33;
      }

      v12 = [[SSVisitStoreViewController alloc] initWithPlans:v16 showOtherOption:0];
    }

    v51 = v91;
    v37 = v92;
LABEL_33:

LABEL_34:
LABEL_35:

    goto LABEL_73;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = v4;
    if ([v13 isOtherButtonTapped])
    {
      goto LABEL_6;
    }

    if (_os_feature_enabled_impl())
    {
      v35 = [v13 selectedPlans];

      if (v35)
      {
        v23 = [TSSubFlowViewController alloc];
        v106[0] = &unk_287583C70;
        v105[0] = @"FlowTypeKey";
        v105[1] = @"Plans";
        v28 = [v13 selectedPlans];
        v105[2] = @"ConfirmCellularPlanTransfer";
        v106[1] = v28;
        v106[2] = MEMORY[0x277CBEC38];
        v29 = MEMORY[0x277CBEAC0];
        v30 = v106;
        v31 = v105;
        v32 = 3;
LABEL_18:
        v33 = [v29 dictionaryWithObjects:v30 forKeys:v31 count:v32];
        v34 = [(TSSIMSetupFlow *)self navigationController];
        v12 = [(TSSubFlowViewController *)v23 initWithOptions:v33 navigationController:v34 delegate:self];

LABEL_45:
        goto LABEL_73;
      }
    }

    v55 = [TSSubFlowViewController alloc];
    v103[0] = @"FlowTypeKey";
    v103[1] = @"SkipActivatingPane";
    v104[0] = &unk_287583C70;
    v104[1] = MEMORY[0x277CBEC38];
    v103[2] = @"DelayStartActivatingTimer";
    v56 = [v13 installingTransferPlan];
    v57 = &unk_287583CA0;
    if (v56)
    {
      v57 = &unk_287583C88;
    }

    v104[2] = v57;
    v103[3] = @"PlanSetupTypeKey";
    v58 = [v13 installingTransferPlan];
    v59 = &unk_287583CD0;
    if (v58)
    {
      v59 = &unk_287583CB8;
    }

    v104[3] = v59;
    v60 = MEMORY[0x277CBEAC0];
    v61 = v104;
    v62 = v103;
    v63 = 4;
LABEL_44:
    v28 = [v60 dictionaryWithObjects:v61 forKeys:v62 count:v63];
    v33 = [(TSSIMSetupFlow *)self navigationController];
    v12 = [(TSSubFlowViewController *)v55 initWithOptions:v28 navigationController:v33 delegate:self];
    goto LABEL_45;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v42 = [TSSubFlowViewController alloc];
    v101[0] = @"FlowTypeKey";
    v101[1] = @"SkipActivatingPane";
    v102[0] = &unk_287583C70;
    v102[1] = MEMORY[0x277CBEC28];
    v101[2] = @"PlanSetupTypeKey";
    v102[2] = &unk_287583D00;
    v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v102 forKeys:v101 count:3];
    v44 = [(TSSIMSetupFlow *)self navigationController];
    v12 = [(TSSubFlowViewController *)v42 initWithOptions:v43 navigationController:v44 delegate:self];

    if (!self->_isSourceProxCardVisible)
    {
      [(TSTransferCloudFlow *)self _updateSourceProxCardState:1];
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = v4;
      if ([v13 needShowTransferIntroPane])
      {
        v52 = [SSTransferIntroViewController alloc];
        v53 = [(TSTransferCloudFlowModel *)self->_model transferableHiddenInCloudFlowItems];
        v54 = [(SSTransferIntroViewController *)v52 initWithItems:v53];
      }

      else
      {
        if (![v13 isProximityTransferButtonTapped])
        {
          if ([v13 isScanButtonTapped])
          {
            v97[0] = @"FlowTypeKey";
            v97[1] = @"IsFirstViewKey";
            v98[0] = &unk_287583CE8;
            v98[1] = MEMORY[0x277CBEC28];
            v82 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v98 forKeys:v97 count:2];
            v37 = [v82 mutableCopy];

            v83 = [(TSTransferCloudFlowModel *)self->_model transferPlans];
            v84 = [v83 count];

            if (v84)
            {
              v85 = [(TSTransferCloudFlowModel *)self->_model transferPlans];
              [v37 setObject:v85 forKeyedSubscript:@"Plans"];
            }

            v86 = [TSSubFlowViewController alloc];
            v87 = [(TSSIMSetupFlow *)self navigationController];
            v12 = [(TSSubFlowViewController *)v86 initWithOptions:v37 navigationController:v87 delegate:self];

            goto LABEL_35;
          }

          if (+[TSUtilities inBuddy](TSUtilities, "inBuddy") || ![v13 isCrossPlatformButtonTapped])
          {
            goto LABEL_72;
          }

          v55 = [TSSubFlowViewController alloc];
          v95[0] = @"FlowTypeKey";
          v95[1] = @"IsSourceKey";
          v96[0] = &unk_287583D18;
          v96[1] = MEMORY[0x277CBEC28];
          v60 = MEMORY[0x277CBEAC0];
          v61 = v96;
          v62 = v95;
          v63 = 2;
          goto LABEL_44;
        }

        v70 = [(TSTransferCloudFlowModel *)self->_model requireStoreVisitItems];
        v71 = [v70 count];

        if (!v71)
        {
          v23 = [TSSubFlowViewController alloc];
          v99[0] = @"FlowTypeKey";
          v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:10002];
          v99[1] = @"IsClientKey";
          v100[0] = v28;
          v100[1] = MEMORY[0x277CBEC28];
          v29 = MEMORY[0x277CBEAC0];
          v30 = v100;
          v31 = v99;
          v32 = 2;
          goto LABEL_18;
        }

        v72 = [SSVisitStoreViewController alloc];
        v53 = [(TSTransferCloudFlowModel *)self->_model requireStoreVisitItems];
        v54 = [(SSVisitStoreViewController *)v72 initWithPlans:v53 showOtherOption:0];
      }

      v12 = v54;

      goto LABEL_73;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v4 isTransferButtonTapped])
      {
        v5 = [TSSubFlowViewController alloc];
        v93[0] = @"FlowTypeKey";
        v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:10002];
        v93[1] = @"IsClientKey";
        v94[0] = v6;
        v94[1] = MEMORY[0x277CBEC28];
        v7 = MEMORY[0x277CBEAC0];
        v8 = v94;
        v9 = v93;
        goto LABEL_3;
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v73 = v4;
        if ([v73 isOfferFallbackFlow])
        {
          [v73 setIsOfferFallbackFlow:0];
          v12 = [[TSCellularPlanIntroViewController alloc] initWithShowTransferOption:1 requireDelayBluetoothConnection:0 showQrCodeOption:1 transferIneligiblePlans:0];
        }

        else
        {
          v12 = 0;
        }

        goto LABEL_74;
      }
    }

    v12 = 0;
  }

LABEL_74:

  v88 = *MEMORY[0x277D85DE8];

  return v12;
}

- (void)setCancelNavigationBarItems:(id)a3
{
  v8 = a3;
  v4 = [MEMORY[0x277D75418] currentDevice];
  v5 = [v4 userInterfaceIdiom];

  v6 = [v8 navigationItem];
  v7 = v6;
  if ((v5 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    [v6 setRightBarButtonItem:self->_cancelButton];
  }

  else
  {
    [v6 setHidesBackButton:1 animated:0];

    v7 = [v8 navigationItem];
    [v7 setLeftBarButtonItem:self->_cancelButton];
  }
}

- (void)userDidTapCancel
{
  v3 = [(TSSIMSetupFlow *)self topViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
  }

  else
  {
    v4 = [(TSSIMSetupFlow *)self topViewController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  v16 = +[TSCoreTelephonyClientCache sharedInstance];
  v15 = objc_alloc(MEMORY[0x277CC3720]);
  v17 = [(TSTransferCloudFlowModel *)self->_model transferItems];
  v14 = [TSUtilities transferablePlans:v17];
  v6 = [(TSTransferCloudFlowModel *)self->_model transferItems];
  v7 = [TSUtilities odaPlans:v6];
  v8 = [(TSTransferCloudFlowModel *)self->_model transferItems];
  v9 = [TSUtilities transferablePlanCarriers:v8];
  v10 = [(TSTransferCloudFlowModel *)self->_model transferItems];
  v11 = [TSUtilities odaPlanCarriers:v10];
  v12 = [(TSTransferCloudFlowModel *)self->_model transferItems];
  v13 = [v15 initWithInBuddy:0 transferablePlans:v14 selectedTransferablePlans:0 alsPlans:0 selectedAlsPlans:0 odaPlans:v7 transferPlanCarriers:v9 selectedTransferPlanCarriers:&stru_28753DF48 alsPlanCarriers:&stru_28753DF48 selectedAlsPlanCarriers:&stru_28753DF48 odaPlanCarriers:v11 selectedOdaPlanCarriers:&stru_28753DF48 sourceDevicesCount:+[TSUtilities sourceDevicesCount:](TSUtilities selectedSourceDevicesCount:{"sourceDevicesCount:", v12), 0}];
  [v16 submitSimSetupUsage:v13];

LABEL_5:
  if (!self->_isSourceProxCardVisible)
  {
    [(TSTransferCloudFlow *)self _updateSourceProxCardState:1];
  }

  v18.receiver = self;
  v18.super_class = TSTransferCloudFlow;
  [(TSSIMSetupFlow *)&v18 userDidTapCancel];
}

- (void)firstViewController
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "[TSTransferCloudFlow firstViewController]";
  _os_log_fault_impl(&dword_262AA8000, log, OS_LOG_TYPE_FAULT, "[F]unimplemented, please use async version @%s", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)_maybePresentFirstViewController:(uint64_t)a3 firstViewControllerCallback:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_262AA8000, a1, a3, "[E]nothing to present @%s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __84__TSTransferCloudFlow__maybePresentFirstViewController_firstViewControllerCallback___block_invoke_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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

@end