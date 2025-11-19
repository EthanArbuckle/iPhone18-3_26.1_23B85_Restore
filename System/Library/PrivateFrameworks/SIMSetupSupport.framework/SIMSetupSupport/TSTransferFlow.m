@interface TSTransferFlow
- (TSTransferFlow)init;
- (TSTransferFlow)initWithSession:(id)a3 hasTransferablePlan:(BOOL)a4 isStandaloneProximityTransfer:(BOOL)a5 transferBackPlan:(id)a6 sourceOSVersion:(id)a7 isPostMigrationFlow:(BOOL)a8 isUsingPreSharedKey:(BOOL)a9;
- (id)_createIntroViewControllerWithIneligiblePlans:(id)a3;
- (id)_firstViewController:(id)a3;
- (id)firstViewController;
- (id)nextViewControllerFrom:(id)a3;
- (void)_maybeClearFirstViewControllerCallback;
- (void)_maybePresentFirstViewController:(id)a3 firstViewControllerCallback:(id)a4;
- (void)_saveSimsetupD2dInfo:(id)a3;
- (void)dealloc;
- (void)firstViewController;
- (void)firstViewController:(id)a3;
- (void)setCancelNavigationBarItems:(id)a3;
- (void)startOverWithFirstViewController:(id)a3;
- (void)transferEventUpdate:(id)a3;
- (void)userDidTapCancel;
- (void)viewControllerDidComplete:(id)a3;
@end

@implementation TSTransferFlow

- (TSTransferFlow)init
{
  v10.receiver = self;
  v10.super_class = TSTransferFlow;
  v2 = [(TSSIMSetupFlow *)&v10 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:v2 action:sel_userDidTapCancel];
    cancelButton = v2->_cancelButton;
    v2->_cancelButton = v3;

    v5 = +[TSUserInPurchaseFlowAssertion sharedInstance];
    [v5 assertUserInPurchaseFlowStartOver:0 caller:v2];

    v6 = objc_alloc(MEMORY[0x277CC37B0]);
    v7 = [v6 initWithQueue:MEMORY[0x277D85CD0]];
    ctClient = v2->_ctClient;
    v2->_ctClient = v7;

    [(CoreTelephonyClient *)v2->_ctClient setDelegate:v2];
  }

  return v2;
}

- (TSTransferFlow)initWithSession:(id)a3 hasTransferablePlan:(BOOL)a4 isStandaloneProximityTransfer:(BOOL)a5 transferBackPlan:(id)a6 sourceOSVersion:(id)a7 isPostMigrationFlow:(BOOL)a8 isUsingPreSharedKey:(BOOL)a9
{
  v16 = a3;
  v17 = a6;
  v18 = a7;
  v37.receiver = self;
  v37.super_class = TSTransferFlow;
  v19 = [(TSSIMSetupFlow *)&v37 init];
  if (v19)
  {
    v20 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:v19 action:sel_userDidTapCancel];
    cancelButton = v19->_cancelButton;
    v19->_cancelButton = v20;

    objc_storeStrong(&v19->_session, a3);
    v19->_hasTransferablePlan = a4;
    v19->_isStandaloneProximityTransfer = a5;
    v19->_isAvailableOptionsQueryCompleted = 0;
    v19->_isSourceProxCardVisible = 1;
    objc_storeStrong(&v19->_transferBackPlan, a6);
    objc_storeStrong(&v19->_sourceOSVersion, a7);
    v19->_isPostMigrationFlow = a8;
    v19->_isUsingPreSharedKey = a9;
    v22 = objc_alloc(MEMORY[0x277CC37B0]);
    v23 = [v22 initWithQueue:MEMORY[0x277D85CD0]];
    ctClient = v19->_ctClient;
    v19->_ctClient = v23;

    [(CoreTelephonyClient *)v19->_ctClient setDelegate:v19];
    v25 = [[TSTransferFlowModel alloc] initWithIsStandaloneProximityTransfer:v19->_isStandaloneProximityTransfer transferBackPlan:v19->_transferBackPlan];
    model = v19->_model;
    v19->_model = v25;

    objc_initWeak(&location, v19);
    v27 = v19->_model;
    session = v19->_session;
    hasTransferablePlan = v19->_hasTransferablePlan;
    sourceOSVersion = v19->_sourceOSVersion;
    isPostMigrationFlow = v19->_isPostMigrationFlow;
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __157__TSTransferFlow_initWithSession_hasTransferablePlan_isStandaloneProximityTransfer_transferBackPlan_sourceOSVersion_isPostMigrationFlow_isUsingPreSharedKey___block_invoke;
    v34[3] = &unk_279B44D40;
    objc_copyWeak(&v35, &location);
    [(TSTransferFlowModel *)v27 arePlansAvailable:session transferablePlanOnSource:hasTransferablePlan bootstrapOnly:0 sourceOSVersion:sourceOSVersion isPostMigrationFlow:isPostMigrationFlow isUsingPreSharedKey:a9 completion:v34];
    v32 = +[TSUserInPurchaseFlowAssertion sharedInstance];
    [v32 assertUserInPurchaseFlowStartOver:0 caller:v19];

    objc_destroyWeak(&v35);
    objc_destroyWeak(&location);
  }

  return v19;
}

void __157__TSTransferFlow_initWithSession_hasTransferablePlan_isStandaloneProximityTransfer_transferBackPlan_sourceOSVersion_isPostMigrationFlow_isUsingPreSharedKey___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setIsAvailableOptionsQueryCompleted:1];

  v3 = objc_loadWeakRetained((a1 + 32));
  [v3 _maybeClearFirstViewControllerCallback];
}

- (void)dealloc
{
  v3 = +[TSUserInPurchaseFlowAssertion sharedInstance];
  [v3 deassertUserInPurchaseFlowWithForce:0 caller:self];

  v4.receiver = self;
  v4.super_class = TSTransferFlow;
  [(TSTransferFlow *)&v4 dealloc];
}

- (id)firstViewController
{
  v3 = _TSLogDomain();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    [(TSTransferFlow *)v3 firstViewController];
  }

  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v4 = [(TSTransferFlow *)self _firstViewController:self->_model];

  return v4;
}

- (id)_firstViewController:(id)a3
{
  v146 = *MEMORY[0x277D85DE8];
  v119 = a3;
  v4 = [(TSTransferFlowModel *)self->_model transferPlans];
  v118 = [v4 filteredPlansForTransferableBucket];

  v5 = [(TSTransferFlowModel *)self->_model transferPlans];
  v117 = [v5 filteredPlansForSoftwareUpdateBucket];

  v6 = [(TSTransferFlowModel *)self->_model transferPlans];
  v116 = [v6 filteredPlansForQRCodeBucket];

  v7 = [(TSTransferFlowModel *)self->_model transferPlans];
  v114 = [v7 filteredPlansForNonInstallableBucket];

  v115 = [v118 filteredPlansForVisitStoreBucket];
  v113 = [v117 filteredPlansForVisitStoreBucket];
  v8 = _TSLogDomain();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134219522;
    *v136 = [v118 count];
    *&v136[8] = 2048;
    *v137 = [v115 count];
    *&v137[8] = 2048;
    *&v137[10] = [v117 count];
    v138 = 2048;
    v139 = [v113 count];
    v140 = 2048;
    v141 = [v116 count];
    v142 = 2048;
    v143 = [v114 count];
    v144 = 2080;
    v145 = "[TSTransferFlow _firstViewController:]";
    _os_log_impl(&dword_262AA8000, v8, OS_LOG_TYPE_DEFAULT, "transferable:%lu (store:%lu), software update:%lu (store:%lu), qrcode:%lu, non install:%lu @%s", buf, 0x48u);
  }

  v9 = _TSLogDomain();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v119 pendingInstallItems];
    v11 = [v10 plans];
    v12 = [v11 count];
    v13 = [v119 shouldShowCarrierSetupPane];
    *buf = 134218498;
    *v136 = v12;
    *&v136[8] = 1024;
    *v137 = v13;
    *&v137[4] = 2080;
    *&v137[6] = "[TSTransferFlow _firstViewController:]";
    _os_log_impl(&dword_262AA8000, v9, OS_LOG_TYPE_DEFAULT, "als:%lu, soda:%{BOOL}d @%s", buf, 0x1Cu);
  }

  v14 = _TSLogDomain();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [(TSTransferFlowModel *)self->_model transferItems];
    v16 = [v15 count];
    v17 = [(TSTransferFlowModel *)self->_model requireStoreVisitItems];
    v18 = [v17 count];
    v19 = [(TSTransferFlowModel *)self->_model transferIneligibleItems];
    v20 = [v19 count];
    *buf = 134218754;
    *v136 = v16;
    *&v136[8] = 2048;
    *v137 = v18;
    *&v137[8] = 2048;
    *&v137[10] = v20;
    v138 = 2080;
    v139 = "[TSTransferFlow _firstViewController:]";
    _os_log_impl(&dword_262AA8000, v14, OS_LOG_TYPE_DEFAULT, "transfer plans: %lu, store visit:%lu, ineligible: %lu @%s", buf, 0x2Au);
  }

  if (+[TSUtilities isPad](TSUtilities, "isPad") && +[TSUtilities isGreenTeaCapable](TSUtilities, "isGreenTeaCapable") && +[TSUtilities inBuddy])
  {
    v21 = _TSLogDomain();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *v136 = "[TSTransferFlow _firstViewController:]";
      _os_log_impl(&dword_262AA8000, v21, OS_LOG_TYPE_DEFAULT, "Skip for greentea ipad in buddy @%s", buf, 0xCu);
    }

    v22 = 0;
    goto LABEL_23;
  }

  v23 = [v119 transferItems];
  transferItems = self->_transferItems;
  self->_transferItems = v23;

  if ([v119 shouldShowTransferredPane])
  {
    v25 = [TSTransferredViewController alloc];
    v26 = [(NSArray *)self->_transferItems objectAtIndex:0];
    v22 = [(TSTransferredViewController *)v25 initWithTransferredPlan:v26];

    [(SSVisitStoreViewController *)v22 setDelegate:self];
    [(TSSIMSetupFlow *)self setTopViewController:v22];
    goto LABEL_23;
  }

  v27 = [v119 pendingInstallItems];
  pendingInstallItems = self->_pendingInstallItems;
  self->_pendingInstallItems = v27;

  self->_isActivationPolicyMismatch = [v119 isActivationPolicyMismatch];
  self->_isDualeSIMCapablityLoss = [v119 isDualeSIMCapablityLoss];
  v29 = [v118 count];
  v30 = [(CTDisplayPlanList *)self->_pendingInstallItems plans];
  v31 = [v30 count];
  v32 = [v119 carrierSetupItems];
  v33 = [v32 plans];
  v34 = [v33 count];

  v35 = v31 + v29 + v34;
  if (!v35)
  {
    if (self->_isStandaloneProximityTransfer || ![v116 count])
    {
      if ([v117 count] || self->_isStandaloneProximityTransfer)
      {
        v48 = [TSNoPlanForTransferViewController alloc];
        v49 = [(TSTransferFlowModel *)self->_model transferPlans];
        v22 = [(TSNoPlanForTransferViewController *)v48 initWithPlans:v49 showOtherOptions:0 isStartOverNeeded:self->_isStandaloneProximityTransfer];

        goto LABEL_18;
      }

      v85 = +[TSUtilities isWifiAvailable];
      v86 = +[TSCellularPlanManagerCache sharedInstance];
      v87 = [v86 planItems];
      v88 = [v87 count];

      v89 = +[TSCoreTelephonyClientCache sharedInstance];
      v90 = [v89 usingBootstrapDataService];

      v91 = _TSLogDomain();
      if (os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109890;
        *v136 = v85;
        *&v136[4] = 1024;
        *&v136[6] = v88 != 0;
        *v137 = 1024;
        *&v137[2] = v90;
        *&v137[6] = 2080;
        *&v137[8] = "[TSTransferFlow _firstViewController:]";
        _os_log_impl(&dword_262AA8000, v91, OS_LOG_TYPE_DEFAULT, "isWiFi:%d, hasPlans:%d, usingBootstrap:%d @%s", buf, 0x1Eu);
      }

      if (v85 || v88 != 0 || ((v90 ^ 1) & 1) != 0)
      {
        goto LABEL_19;
      }

      v47 = [(TSTransferFlow *)self _createIntroViewControllerWithIneligiblePlans:0];
    }

    else
    {
      v47 = [(TSTransferFlow *)self _createIntroViewControllerWithIneligiblePlans:v116];
    }

    v22 = v47;
    if (v47)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  if ([v116 count])
  {
    v36 = [TSMultiPlanIntermediateViewController alloc];
    v37 = [v119 pendingInstallItems];
    v38 = [v37 plans];
    v39 = [v119 transferPlans];
    v40 = [v119 carrierSetupItems];
    v41 = [v40 plans];
    BYTE1(v110) = 1;
    LOBYTE(v110) = self->_isStandaloneProximityTransfer;
    v22 = [(TSMultiPlanIntermediateViewController *)v36 initWithPendingInstallPlans:v38 transferPlans:v39 carrierSetupPlans:v41 showQRCodeOption:self->_isPostMigrationFlow | (v110 == 0) showOtherOptions:0 isShowingFilteredPlans:0 isStandaloneProximityFlow:v110 isHiddenPlanSelectable:?];

    goto LABEL_18;
  }

  v50 = [MEMORY[0x277CBEB18] array];
  v51 = [MEMORY[0x277CBEB18] array];
  if (![v118 count])
  {
    v52 = [(CTDisplayPlanList *)self->_pendingInstallItems plans];
    if (![v52 count] && !objc_msgSend(v119, "shouldShowCarrierSetupPane"))
    {
LABEL_51:

      goto LABEL_52;
    }

    v53 = +[TSUtilities inBuddy];

    if (v53)
    {
      v129 = 0u;
      v130 = 0u;
      v127 = 0u;
      v128 = 0u;
      v54 = [(CTDisplayPlanList *)self->_pendingInstallItems plans];
      v55 = [v54 countByEnumeratingWithState:&v127 objects:v134 count:16];
      if (v55)
      {
        v56 = *v128;
        do
        {
          for (i = 0; i != v55; ++i)
          {
            if (*v128 != v56)
            {
              objc_enumerationMutation(v54);
            }

            v58 = *(*(&v127 + 1) + 8 * i);
            [v50 addObject:v58];
            v59 = [v58 plan];
            [v51 addObject:v59];
          }

          v55 = [v54 countByEnumeratingWithState:&v127 objects:v134 count:16];
        }

        while (v55);
      }

      v125 = 0u;
      v126 = 0u;
      v123 = 0u;
      v124 = 0u;
      v60 = [v119 carrierSetupItems];
      v52 = [v60 plans];

      v61 = [v52 countByEnumeratingWithState:&v123 objects:v133 count:16];
      if (v61)
      {
        v62 = *v124;
        do
        {
          for (j = 0; j != v61; ++j)
          {
            if (*v124 != v62)
            {
              objc_enumerationMutation(v52);
            }

            v64 = *(*(&v123 + 1) + 8 * j);
            [v50 addObject:v64];
            v65 = [v64 plan];
            [v51 addObject:v65];
          }

          v61 = [v52 countByEnumeratingWithState:&v123 objects:v133 count:16];
        }

        while (v61);
      }

      goto LABEL_51;
    }
  }

LABEL_52:
  if (+[TSUtilities isPad](TSUtilities, "isPad") || !+[TSUtilities inBuddy](TSUtilities, "inBuddy") || [v51 count] < 2)
  {
    v71 = [v114 count];
    if ((v71 + v35 + [v117 count]) < 2)
    {
      v72 = [v119 pendingInstallItems];
      v73 = [v72 plans];
      v74 = [v73 count] == 1;

      if (v74)
      {
        v75 = [TSSinglePlanTransferViewController alloc];
        v76 = [v119 pendingInstallItems];
        v77 = [v76 plans];
        v78 = [v77 objectAtIndexedSubscript:0];
        v22 = [(TSSinglePlanTransferViewController *)v75 initWithPendingInstallPlan:v78];

        goto LABEL_66;
      }

      if ([v115 count] != 1)
      {
        if ([v118 count] == 1)
        {
          v92 = [(NSArray *)self->_transferItems objectAtIndexedSubscript:0];
          v93 = [v92 objectForKeyedSubscript:@"planItem"];

          v112 = [TSSinglePlanTransferViewController alloc];
          v94 = [(NSArray *)self->_transferItems objectAtIndexedSubscript:0];
          v95 = [v93 isPhysical];
          v96 = [v93 isTransferIneligiblePlan];
          v97 = +[TSUtilities inBuddy];
          isStandaloneProximityTransfer = self->_isStandaloneProximityTransfer;
          v99 = [self->_transferBackPlan phoneNumber];
          LOBYTE(v111) = 0;
          LOBYTE(v110) = isStandaloneProximityTransfer;
          v22 = [(TSSinglePlanTransferViewController *)v112 initWithTransferPlan:v94 isPhysical:v95 isIneligible:v96 inBuddy:v97 confirmCellularPlanTransfer:0 showOtherOptions:0 isStandaloneProximityFlow:v110 transferBackPhoneNumber:v99 isShowingFilteredPlans:v111];
        }

        else
        {
          v100 = [v119 carrierSetupItems];
          v101 = [v100 plans];
          v102 = [v101 count] == 1;

          if (v102)
          {
            v103 = [TSBuddyMLViewController alloc];
            v104 = [v119 carrierSetupItems];
            v105 = [v104 plans];
            v106 = [v105 objectAtIndexedSubscript:0];
            v107 = [v106 plan];
            v108 = [v119 websheetUrl];
            v109 = [v119 postdata];
            v22 = [(TSBuddyMLViewController *)v103 initWithCTPlan:v107 websheetURL:v108 postdata:v109];

            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = __39__TSTransferFlow__firstViewController___block_invoke_218;
            block[3] = &unk_279B44578;
            block[4] = self;
            dispatch_async(MEMORY[0x277D85CD0], block);
          }

          else
          {
            v22 = 0;
          }
        }

        goto LABEL_66;
      }
    }

    else if ([v115 count] != v35)
    {
      v79 = [TSMultiPlanIntermediateViewController alloc];
      v80 = [v119 pendingInstallItems];
      v81 = [v80 plans];
      v82 = [v119 transferPlans];
      v83 = [v119 carrierSetupItems];
      v84 = [v83 plans];
      BYTE1(v110) = 1;
      LOBYTE(v110) = self->_isStandaloneProximityTransfer;
      v22 = [(TSMultiPlanIntermediateViewController *)v79 initWithPendingInstallPlans:v81 transferPlans:v82 carrierSetupPlans:v84 showQRCodeOption:self->_isPostMigrationFlow | (v110 == 0) showOtherOptions:0 isShowingFilteredPlans:0 isStandaloneProximityFlow:v110 isHiddenPlanSelectable:?];

      goto LABEL_66;
    }

    v22 = [[SSVisitStoreViewController alloc] initWithPlans:v115 showOtherOption:0];
    goto LABEL_66;
  }

  v66 = [TSSubFlowViewController alloc];
  v131[0] = @"FlowTypeKey";
  v131[1] = @"Plans";
  v132[0] = &unk_287583BB0;
  v132[1] = v50;
  v131[2] = @"ConfirmCellularPlanTransfer";
  v132[2] = MEMORY[0x277CBEC28];
  v67 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v132 forKeys:v131 count:3];
  v68 = [(TSSIMSetupFlow *)self navigationController];
  v22 = [(TSSubFlowViewController *)v66 initWithOptions:v67 navigationController:v68 delegate:self];

  objc_initWeak(buf, self);
  ctClient = self->_ctClient;
  v70 = [objc_alloc(MEMORY[0x277CC36F0]) initWithPlans:v51];
  v121[0] = MEMORY[0x277D85DD0];
  v121[1] = 3221225472;
  v121[2] = __39__TSTransferFlow__firstViewController___block_invoke;
  v121[3] = &unk_279B44828;
  objc_copyWeak(&v122, buf);
  [(CoreTelephonyClient *)ctClient installMultiplePlans:v70 completionHandler:v121];

  objc_destroyWeak(&v122);
  objc_destroyWeak(buf);
LABEL_66:

LABEL_18:
  if (!v22)
  {
LABEL_19:
    v42 = self->_ctClient;
    self->_ctClient = 0;

    v22 = 0;
  }

LABEL_20:
  [(TSTransferFlow *)self _saveSimsetupD2dInfo:v119];
  v43 = _TSLogDomain();
  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
  {
    v44 = objc_opt_class();
    *buf = 138412546;
    *v136 = v44;
    *&v136[8] = 2080;
    *v137 = "[TSTransferFlow _firstViewController:]";
    _os_log_impl(&dword_262AA8000, v43, OS_LOG_TYPE_DEFAULT, "first view: %@ @%s", buf, 0x16u);
  }

  [(TSSIMSetupFlow *)self setTopViewController:v22];
LABEL_23:

  v45 = *MEMORY[0x277D85DE8];

  return v22;
}

void __39__TSTransferFlow__firstViewController___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (v3 && WeakRetained)
  {
    v6 = _TSLogDomain();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __39__TSTransferFlow__firstViewController___block_invoke_cold_1();
    }

    v7 = [MEMORY[0x277CCAB98] defaultCenter];
    [v7 postNotificationName:@"transfer.failed" object:v3];
  }
}

- (id)_createIntroViewControllerWithIneligiblePlans:(id)a3
{
  v3 = self->_session == 0;
  v4 = a3;
  v5 = [[TSCellularPlanIntroViewController alloc] initWithShowTransferOption:v3 requireDelayBluetoothConnection:0 showQrCodeOption:1 transferIneligiblePlans:v4];

  return v5;
}

- (void)firstViewController:(id)a3
{
  v4 = MEMORY[0x2667315D0](a3, a2);
  firstViewControllerCallback = self->_firstViewControllerCallback;
  self->_firstViewControllerCallback = v4;

  if (self->_isAvailableOptionsQueryCompleted)
  {

    [(TSTransferFlow *)self _maybeClearFirstViewControllerCallback];
  }
}

- (void)_maybeClearFirstViewControllerCallback
{
  if (self->_firstViewControllerCallback)
  {
    v3 = [(TSTransferFlow *)self model];
    v4 = [(TSTransferFlow *)self _firstViewController:v3];

    [(TSTransferFlow *)self _maybePresentFirstViewController:v4 firstViewControllerCallback:self->_firstViewControllerCallback];
  }
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
    v16[2] = __79__TSTransferFlow__maybePresentFirstViewController_firstViewControllerCallback___block_invoke;
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
      [(TSTransferFlow *)v8 _maybePresentFirstViewController:v9 firstViewControllerCallback:v10, v11, v12, v13, v14, v15];
    }

    (*(v7 + 2))(v7, 0);
  }
}

void __79__TSTransferFlow__maybePresentFirstViewController_firstViewControllerCallback___block_invoke(uint64_t a1, void *a2)
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
        v26 = "[TSTransferFlow _maybePresentFirstViewController:firstViewControllerCallback:]_block_invoke";
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
        v30 = "[TSTransferFlow _maybePresentFirstViewController:firstViewControllerCallback:]_block_invoke";
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
          __79__TSTransferFlow__maybePresentFirstViewController_firstViewControllerCallback___block_invoke_cold_1(v12, v13, v14, v15, v16, v17, v18, v19);
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
    objc_initWeak(&location, self);
    v9 = +[TSCellularPlanManagerCache sharedInstance];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __51__TSTransferFlow_startOverWithFirstViewController___block_invoke;
    v10[3] = &unk_279B44CD0;
    objc_copyWeak(&v12, &location);
    v11 = v4;
    [v9 hasInstallingPlanOrUserPlan:v10];

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }
}

void __51__TSTransferFlow_startOverWithFirstViewController___block_invoke(uint64_t a1, char a2)
{
  if ((a2 & 1) != 0 || (v3 = objc_loadWeakRetained((a1 + 40)), v4 = [v3 isStandaloneProximityTransfer], v3, v4))
  {
    v5 = *(*(a1 + 32) + 16);

    v5();
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v7 = [WeakRetained model];
    [v7 clearCache];

    v18 = objc_loadWeakRetained((a1 + 40));
    v8 = [v18 model];
    v17 = objc_loadWeakRetained((a1 + 40));
    v9 = [v17 session];
    v16 = objc_loadWeakRetained((a1 + 40));
    v19 = [v16 hasTransferablePlan];
    v10 = objc_loadWeakRetained((a1 + 40));
    v11 = [v10 sourceOSVersion];
    v12 = objc_loadWeakRetained((a1 + 40));
    v13 = [v12 isPostMigrationFlow];
    v14 = objc_loadWeakRetained((a1 + 40));
    v15 = [v14 isUsingPreSharedKey];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __51__TSTransferFlow_startOverWithFirstViewController___block_invoke_2;
    v20[3] = &unk_279B44CD0;
    objc_copyWeak(&v22, (a1 + 40));
    v21 = *(a1 + 32);
    [v8 arePlansAvailable:v9 transferablePlanOnSource:v19 bootstrapOnly:0 sourceOSVersion:v11 isPostMigrationFlow:v13 isUsingPreSharedKey:v15 completion:v20];

    objc_destroyWeak(&v22);
  }
}

void __51__TSTransferFlow_startOverWithFirstViewController___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __51__TSTransferFlow_startOverWithFirstViewController___block_invoke_3;
  v3[3] = &unk_279B44C30;
  v4 = *(a1 + 32);
  [WeakRetained firstViewController:v3];
}

- (id)nextViewControllerFrom:(id)a3
{
  v134[10] = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(TSTransferFlowModel *)self->_model transferPlans];
    v6 = [v5 count];

    if (v6 == 1)
    {
      v7 = [(NSArray *)self->_transferItems objectAtIndexedSubscript:0];
      v8 = [v7 objectForKeyedSubscript:@"planItem"];

      v9 = [TSSinglePlanTransferViewController alloc];
      v10 = [(NSArray *)self->_transferItems objectAtIndexedSubscript:0];
      v11 = [v8 isPhysical];
      v12 = [v8 isTransferIneligiblePlan];
      v13 = +[TSUtilities inBuddy];
      isStandaloneProximityTransfer = self->_isStandaloneProximityTransfer;
      v15 = [self->_transferBackPlan phoneNumber];
      LOBYTE(v105) = 0;
      LOBYTE(v104) = isStandaloneProximityTransfer;
      v16 = [(TSSinglePlanTransferViewController *)v9 initWithTransferPlan:v10 isPhysical:v11 isIneligible:v12 inBuddy:v13 confirmCellularPlanTransfer:0 showOtherOptions:0 isStandaloneProximityFlow:v104 transferBackPhoneNumber:v15 isShowingFilteredPlans:v105];

      goto LABEL_32;
    }

    v26 = [TSTransferListViewController alloc];
    v8 = [(TSTransferFlowModel *)self->_model transferPlans];
    isActivationPolicyMismatch = self->_isActivationPolicyMismatch;
    isDualeSIMCapablityLoss = self->_isDualeSIMCapablityLoss;
    v29 = [(TSTransferFlowModel *)self->_model pendingInstallItems];
    v30 = [(TSTransferFlowModel *)self->_model carrierSetupItems];
    v31 = self->_isStandaloneProximityTransfer;
    BYTE2(v104) = ![(TSTransferFlowModel *)self->_model isFlexPolicyOn];
    BYTE1(v104) = v31;
    LOBYTE(v104) = 0;
    v16 = [TSTransferListViewController initWithTransferPlans:v26 confirmCellularPlanTransfer:"initWithTransferPlans:confirmCellularPlanTransfer:isActivationPolicyMismatch:isDualeSIMCapabilityLoss:pendingInstallItems:carrierSetupItems:showOtherOptions:isStandaloneProximityFlow:allowsMultiSelection:" isActivationPolicyMismatch:v8 isDualeSIMCapabilityLoss:0 pendingInstallItems:isActivationPolicyMismatch carrierSetupItems:isDualeSIMCapablityLoss showOtherOptions:v29 isStandaloneProximityFlow:v30 allowsMultiSelection:v104];

LABEL_33:
    goto LABEL_34;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v4;
    v10 = [v8 selectedPlan];
    if (![(TSTransferFlowModel *)self->_model shouldShowCarrierSetupPane])
    {
      if (!v10 || [v10 transferCapability] != 8)
      {
        if ([v8 isOtherButtonTapped])
        {
          v16 = [(TSTransferFlow *)self _createIntroViewControllerWithIneligiblePlans:0];
          goto LABEL_32;
        }

        if (([v8 isSkipButtonTapped] & 1) == 0)
        {
          v62 = [TSSubFlowViewController alloc];
          v133[0] = @"FlowTypeKey";
          v133[1] = @"SkipActivatingPane";
          v63 = MEMORY[0x277CBEC38];
          v134[0] = &unk_287583BB0;
          v134[1] = MEMORY[0x277CBEC38];
          v133[2] = @"DelayStartActivatingTimer";
          v64 = [v8 installingTransferPlan];
          v65 = &unk_287583BE0;
          if (v64)
          {
            v65 = &unk_287583BC8;
          }

          v134[2] = v65;
          v133[3] = @"TransferBackPlan";
          transferBackPlan = self->_transferBackPlan;
          v113 = transferBackPlan;
          if (!transferBackPlan)
          {
            transferBackPlan = [MEMORY[0x277CBEB68] null];
          }

          v106 = transferBackPlan;
          v134[3] = transferBackPlan;
          v133[4] = @"PlanSetupTypeKey";
          v67 = [v8 installingTransferPlan];
          v68 = &unk_287583C10;
          if (v67)
          {
            v68 = &unk_287583BF8;
          }

          v134[4] = v68;
          v133[5] = @"CarrierNameKey";
          v111 = [v8 carrierNameForSelectedItem];
          if (v111)
          {
            [v8 carrierNameForSelectedItem];
          }

          else
          {
            [MEMORY[0x277CBEB68] null];
          }

          v110 = v118 = v10;
          v134[5] = v110;
          v134[6] = v63;
          v133[6] = @"MaybeShowConfirmationCodePaneKey";
          v133[7] = @"Plan";
          v109 = [v8 selectedPlan];
          v134[7] = v109;
          v133[8] = @"MessageSessionKey";
          session = self->_session;
          v87 = session;
          if (!session)
          {
            v87 = [MEMORY[0x277CBEB68] null];
          }

          v134[8] = v87;
          v133[9] = @"SourceOSVersion";
          sourceOSVersion = self->_sourceOSVersion;
          v89 = sourceOSVersion;
          if (!sourceOSVersion)
          {
            v89 = [MEMORY[0x277CBEB68] null];
          }

          v134[9] = v89;
          v90 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v134 forKeys:v133 count:10];
          v91 = [(TSSIMSetupFlow *)self navigationController];
          v16 = [(TSSubFlowViewController *)v62 initWithOptions:v90 navigationController:v91 delegate:self];

          if (!sourceOSVersion)
          {
          }

          if (!session)
          {
          }

          v10 = v118;
          if (!v113)
          {
          }

          goto LABEL_32;
        }
      }

      v16 = 0;
      goto LABEL_32;
    }

    v17 = [TSBuddyMLViewController alloc];
    [(TSTransferFlowModel *)self->_model carrierSetupItems];
    v115 = v8;
    v18 = v4;
    v20 = v19 = v10;
    v21 = [v20 plans];
    v22 = [v21 objectAtIndexedSubscript:0];
    v23 = [v22 plan];
    v24 = [(TSTransferFlowModel *)self->_model websheetUrl];
    v25 = [(TSTransferFlowModel *)self->_model postdata];
    v16 = [(TSBuddyMLViewController *)v17 initWithCTPlan:v23 websheetURL:v24 postdata:v25];

    v10 = v19;
    v4 = v18;
    v8 = v115;
LABEL_32:

    goto LABEL_33;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v4;
    if ([v8 isTransferListCellTapped])
    {
      v116 = v8;
      v32 = [(TSTransferFlowModel *)self->_model transferPlans];
      v33 = [v32 filteredPlansForTransferableBucket];

      v34 = [v33 filteredPlansForVisitStoreBucket];
      v35 = [(TSTransferFlowModel *)self->_model transferPlans];
      v36 = [v35 filteredPlansForSoftwareUpdateBucket];

      v112 = v33;
      v37 = [v33 count];
      v38 = [(CTDisplayPlanList *)self->_pendingInstallItems plans];
      v39 = [v38 count] + v37;
      v40 = [(TSTransferFlowModel *)self->_model carrierSetupItems];
      v41 = [v40 plans];
      v42 = [v41 count];

      if (v39 + v42)
      {
        if (![v34 count])
        {
          v108 = [TSTransferListViewController alloc];
          v44 = [(TSTransferFlowModel *)self->_model transferPlans];
          v107 = self->_isActivationPolicyMismatch;
          v77 = self->_isDualeSIMCapablityLoss;
          pendingInstallItems = self->_pendingInstallItems;
          v79 = [(TSTransferFlowModel *)self->_model carrierSetupItems];
          v80 = self->_isStandaloneProximityTransfer;
          BYTE2(v104) = ![(TSTransferFlowModel *)self->_model isFlexPolicyOn];
          BYTE1(v104) = v80;
          LOBYTE(v104) = 0;
          v16 = [TSTransferListViewController initWithTransferPlans:v108 confirmCellularPlanTransfer:"initWithTransferPlans:confirmCellularPlanTransfer:isActivationPolicyMismatch:isDualeSIMCapabilityLoss:pendingInstallItems:carrierSetupItems:showOtherOptions:isStandaloneProximityFlow:allowsMultiSelection:" isActivationPolicyMismatch:v44 isDualeSIMCapabilityLoss:0 pendingInstallItems:v107 carrierSetupItems:v77 showOtherOptions:pendingInstallItems isStandaloneProximityFlow:v79 allowsMultiSelection:v104];

          goto LABEL_69;
        }

        v16 = [[SSVisitStoreViewController alloc] initWithPlans:v34 showOtherOption:0];
      }

      else
      {
        if ([v36 count])
        {
          v43 = [TSNoPlanForTransferViewController alloc];
          v44 = [(TSTransferFlowModel *)self->_model transferPlans];
          v16 = [(TSNoPlanForTransferViewController *)v43 initWithPlans:v44 showOtherOptions:0 isStartOverNeeded:self->_isStandaloneProximityTransfer];
LABEL_69:

          goto LABEL_70;
        }

        v16 = 0;
      }

LABEL_70:
      v8 = v116;

      v81 = v112;
LABEL_71:

      goto LABEL_33;
    }

    if ([v8 isScanButtonTapped])
    {
      v45 = [(TSTransferFlowModel *)self->_model transferIneligibleItems];
      v46 = [v45 filteredPlansForQRCodeBucket];

      v131[0] = @"FlowTypeKey";
      v131[1] = @"IsFirstViewKey";
      v132[0] = &unk_287583C28;
      v132[1] = MEMORY[0x277CBEC28];
      v47 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v132 forKeys:v131 count:2];
      v48 = [v47 mutableCopy];

      if ([v46 count])
      {
        [v48 setObject:v46 forKeyedSubscript:@"Plans"];
      }

      v49 = [TSSubFlowViewController alloc];
      goto LABEL_24;
    }

    goto LABEL_42;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v4;
    if ([v8 isOtherButtonTapped])
    {
      v16 = [(TSTransferFlow *)self _createIntroViewControllerWithIneligiblePlans:0];
      goto LABEL_33;
    }

    if (([v8 isCarrierDirectAuthItemSelected] & 1) == 0)
    {
      if (_os_feature_enabled_impl() && ([v8 selectedPlans], v69 = objc_claimAutoreleasedReturnValue(), v69, v69))
      {
        v70 = [TSSubFlowViewController alloc];
        v130[0] = &unk_287583BB0;
        v129[0] = @"FlowTypeKey";
        v129[1] = @"Plans";
        v117 = [v8 selectedPlans];
        v130[1] = v117;
        v130[2] = MEMORY[0x277CBEC28];
        v129[2] = @"ConfirmCellularPlanTransfer";
        v129[3] = @"MessageSessionKey";
        v71 = self->_session;
        v72 = v71;
        if (!v71)
        {
          v72 = [MEMORY[0x277CBEB68] null];
        }

        v130[3] = v72;
        v129[4] = @"SourceOSVersion";
        v73 = self->_sourceOSVersion;
        v74 = v73;
        if (!v73)
        {
          v74 = [MEMORY[0x277CBEB68] null];
        }

        v130[4] = v74;
        v75 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v130 forKeys:v129 count:5];
        v76 = [(TSSIMSetupFlow *)self navigationController];
        v16 = [(TSSubFlowViewController *)v70 initWithOptions:v75 navigationController:v76 delegate:self];

        if (!v73)
        {
        }

        if (!v71)
        {
        }
      }

      else
      {
        if ([v8 isCarrierSetupItemSelected])
        {
          v82 = [TSBuddyMLViewController alloc];
          v46 = [(TSTransferFlowModel *)self->_model carrierSetupItems];
          v48 = [v46 plans];
          v50 = [v48 objectAtIndexedSubscript:0];
          v83 = [v50 plan];
          v84 = [(TSTransferFlowModel *)self->_model websheetUrl];
          v85 = [(TSTransferFlowModel *)self->_model postdata];
          v16 = [(TSBuddyMLViewController *)v82 initWithCTPlan:v83 websheetURL:v84 postdata:v85];

          goto LABEL_25;
        }

        v92 = [TSSubFlowViewController alloc];
        v127[0] = @"FlowTypeKey";
        v127[1] = @"SkipActivatingPane";
        v93 = MEMORY[0x277CBEC38];
        v128[0] = &unk_287583BB0;
        v128[1] = MEMORY[0x277CBEC38];
        v127[2] = @"DelayStartActivatingTimer";
        v94 = [v8 installingTransferPlan];
        v95 = &unk_287583BE0;
        if (v94)
        {
          v95 = &unk_287583BC8;
        }

        v128[2] = v95;
        v127[3] = @"PlanSetupTypeKey";
        v96 = [v8 installingTransferPlan];
        v97 = &unk_287583C10;
        if (v96)
        {
          v97 = &unk_287583BF8;
        }

        v128[3] = v97;
        v127[4] = @"CarrierNameKey";
        v117 = [v8 carrierNameForSelectedItem];
        if (v117)
        {
          [v8 carrierNameForSelectedItem];
        }

        else
        {
          [MEMORY[0x277CBEB68] null];
        }
        v114 = ;
        v128[4] = v114;
        v128[5] = v93;
        v127[5] = @"MaybeShowConfirmationCodePaneKey";
        v127[6] = @"MessageSessionKey";
        v98 = self->_session;
        v99 = v98;
        if (!v98)
        {
          v99 = [MEMORY[0x277CBEB68] null];
        }

        v128[6] = v99;
        v127[7] = @"SourceOSVersion";
        v100 = self->_sourceOSVersion;
        v101 = v100;
        if (!v100)
        {
          v101 = [MEMORY[0x277CBEB68] null];
        }

        v128[7] = v101;
        v102 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v128 forKeys:v127 count:8];
        v103 = [(TSSIMSetupFlow *)self navigationController];
        v16 = [(TSSubFlowViewController *)v92 initWithOptions:v102 navigationController:v103 delegate:self];

        if (!v100)
        {
        }

        if (!v98)
        {
        }
      }

      v81 = v117;
      goto LABEL_71;
    }

    goto LABEL_42;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v51 = [TSSubFlowViewController alloc];
    v125[0] = @"FlowTypeKey";
    v125[1] = @"SkipActivatingPane";
    v126[0] = &unk_287583BB0;
    v126[1] = MEMORY[0x277CBEC28];
    v125[2] = @"PlanSetupTypeKey";
    v126[2] = &unk_287583C40;
    v52 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v126 forKeys:v125 count:3];
    v53 = [(TSSIMSetupFlow *)self navigationController];
    v16 = [(TSSubFlowViewController *)v51 initWithOptions:v52 navigationController:v53 delegate:self];

    if (!self->_isSourceProxCardVisible)
    {
      [(TSTransferFlow *)self _updateSourceProxCardState:1];
    }

LABEL_34:
    if (v16)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v4;
    if ([v8 isScanButtonTapped])
    {
      v123[0] = @"FlowTypeKey";
      v123[1] = @"IsFirstViewKey";
      v124[0] = &unk_287583C28;
      v124[1] = MEMORY[0x277CBEC28];
      v57 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v124 forKeys:v123 count:2];
      v46 = [v57 mutableCopy];

      v58 = [(TSTransferFlowModel *)self->_model transferPlans];
      v59 = [v58 count];

      if (v59)
      {
        v60 = [(TSTransferFlowModel *)self->_model transferPlans];
        [v46 setObject:v60 forKeyedSubscript:@"Plans"];
      }

      v61 = [TSSubFlowViewController alloc];
    }

    else
    {
      if ([v8 isProximityTransferButtonTapped])
      {
        v49 = [TSSubFlowViewController alloc];
        v121[0] = @"FlowTypeKey";
        v46 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:10002];
        v121[1] = @"IsClientKey";
        v122[0] = v46;
        v122[1] = MEMORY[0x277CBEC28];
        v48 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v122 forKeys:v121 count:2];
LABEL_24:
        v50 = [(TSSIMSetupFlow *)self navigationController];
        v16 = [(TSSubFlowViewController *)v49 initWithOptions:v48 navigationController:v50 delegate:self];
LABEL_25:

LABEL_26:
        goto LABEL_33;
      }

      if (+[TSUtilities inBuddy](TSUtilities, "inBuddy") || ![v8 isCrossPlatformButtonTapped])
      {
LABEL_42:
        v16 = 0;
        goto LABEL_33;
      }

      v61 = [TSSubFlowViewController alloc];
      v119[0] = @"FlowTypeKey";
      v119[1] = @"IsSourceKey";
      v120[0] = &unk_287583C58;
      v120[1] = MEMORY[0x277CBEC28];
      v46 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v120 forKeys:v119 count:2];
    }

    v48 = [(TSSIMSetupFlow *)self navigationController];
    v16 = [(TSSubFlowViewController *)v61 initWithOptions:v46 navigationController:v48 delegate:self];
    goto LABEL_26;
  }

LABEL_35:
  ctClient = self->_ctClient;
  self->_ctClient = 0;

  v16 = 0;
LABEL_36:

  v55 = *MEMORY[0x277D85DE8];

  return v16;
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
    v14.super_class = TSTransferFlow;
    [(TSSIMSetupFlow *)&v14 viewControllerDidComplete:v4];
    goto LABEL_7;
  }

  v9 = [v5 navigationController];
  v10 = [v9 viewControllers];
  v11 = [v10 objectAtIndex:v8 - 1];

  v12 = [v5 navigationController];
  v13 = [v12 popToViewController:v11 animated:1];

  v15.receiver = self;
  v15.super_class = TSTransferFlow;
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

- (void)transferEventUpdate:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _TSLogDomain();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = v4;
    v10 = 2080;
    v11 = "[TSTransferFlow transferEventUpdate:]";
    _os_log_impl(&dword_262AA8000, v5, OS_LOG_TYPE_DEFAULT, "transfer event : %@ @%s", &v8, 0x16u);
  }

  v6 = [v4 objectForKey:@"UpdateProxCardVisibility"];
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[TSTransferFlow _updateSourceProxCardState:](self, "_updateSourceProxCardState:", [v6 BOOLValue]);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
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

  v6 = +[TSCoreTelephonyClientCache sharedInstance];
  v19 = objc_alloc(MEMORY[0x277CC3720]);
  v23 = [(TSTransferFlowModel *)self->_model transferItems];
  v17 = [TSUtilities transferablePlans:v23];
  v22 = [(TSTransferFlowModel *)self->_model pendingInstallItems];
  v21 = [v22 plans];
  v16 = [v21 count];
  v20 = [(TSTransferFlowModel *)self->_model transferItems];
  v15 = [TSUtilities odaPlans:v20];
  v18 = [(TSTransferFlowModel *)self->_model transferItems];
  v7 = [TSUtilities transferablePlanCarriers:v18];
  v8 = [(TSTransferFlowModel *)self->_model pendingInstallItems];
  v9 = [v8 plans];
  v10 = [TSUtilities alsPlanCarriers:v9];
  v11 = [(TSTransferFlowModel *)self->_model transferItems];
  v12 = [TSUtilities odaPlanCarriers:v11];
  v13 = [(TSTransferFlowModel *)self->_model transferItems];
  v14 = [v19 initWithInBuddy:0 transferablePlans:v17 selectedTransferablePlans:0 alsPlans:v16 selectedAlsPlans:0 odaPlans:v15 transferPlanCarriers:v7 selectedTransferPlanCarriers:&stru_28753DF48 alsPlanCarriers:v10 selectedAlsPlanCarriers:&stru_28753DF48 odaPlanCarriers:v12 selectedOdaPlanCarriers:&stru_28753DF48 sourceDevicesCount:+[TSUtilities sourceDevicesCount:](TSUtilities selectedSourceDevicesCount:{"sourceDevicesCount:", v13), 0}];
  [v6 submitSimSetupUsage:v14];

LABEL_5:
  if (!self->_isSourceProxCardVisible)
  {
    [(TSTransferFlow *)self _updateSourceProxCardState:1];
  }

  v24.receiver = self;
  v24.super_class = TSTransferFlow;
  [(TSSIMSetupFlow *)&v24 userDidTapCancel];
}

- (void)_saveSimsetupD2dInfo:(id)a3
{
  v7 = a3;
  if ([v7 isProximityFlow] && (objc_msgSend(v7, "isStandaloneProximityTransfer") & 1) == 0)
  {
    v4 = [(TSTransferFlowModel *)self->_model simsetupD2dInfo];
    [v4 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"d2dDone"];
    v5 = +[TSCoreTelephonyClientCache sharedInstance];
    v6 = [(TSTransferFlowModel *)self->_model simsetupD2dInfo];
    [v5 saveSimSetupInfo:@"simsetupD2dInfo" info:v6];
  }
}

- (void)firstViewController
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "[TSTransferFlow firstViewController]";
  _os_log_fault_impl(&dword_262AA8000, log, OS_LOG_TYPE_FAULT, "[F]unimplemented, please use async version @%s", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void __39__TSTransferFlow__firstViewController___block_invoke_cold_1()
{
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  v3 = "[TSTransferFlow _firstViewController:]_block_invoke";
  _os_log_error_impl(&dword_262AA8000, v0, OS_LOG_TYPE_ERROR, "[E]installMultiplePlans failed with error: %@ @%s", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)_maybePresentFirstViewController:(uint64_t)a3 firstViewControllerCallback:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_262AA8000, a1, a3, "[E]nothing to present @%s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __79__TSTransferFlow__maybePresentFirstViewController_firstViewControllerCallback___block_invoke_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_262AA8000, a1, a3, "[E]nothing to present!!! @%s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

@end