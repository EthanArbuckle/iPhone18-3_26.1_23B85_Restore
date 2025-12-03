@interface TSTransferFlow
- (TSTransferFlow)init;
- (TSTransferFlow)initWithSession:(id)session hasTransferablePlan:(BOOL)plan isStandaloneProximityTransfer:(BOOL)transfer transferBackPlan:(id)backPlan sourceOSVersion:(id)version isPostMigrationFlow:(BOOL)flow isUsingPreSharedKey:(BOOL)key;
- (id)_createIntroViewControllerWithIneligiblePlans:(id)plans;
- (id)_firstViewController:(id)controller;
- (id)firstViewController;
- (id)nextViewControllerFrom:(id)from;
- (void)_maybeClearFirstViewControllerCallback;
- (void)_maybePresentFirstViewController:(id)controller firstViewControllerCallback:(id)callback;
- (void)_saveSimsetupD2dInfo:(id)info;
- (void)dealloc;
- (void)firstViewController;
- (void)firstViewController:(id)controller;
- (void)setCancelNavigationBarItems:(id)items;
- (void)startOverWithFirstViewController:(id)controller;
- (void)transferEventUpdate:(id)update;
- (void)userDidTapCancel;
- (void)viewControllerDidComplete:(id)complete;
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

- (TSTransferFlow)initWithSession:(id)session hasTransferablePlan:(BOOL)plan isStandaloneProximityTransfer:(BOOL)transfer transferBackPlan:(id)backPlan sourceOSVersion:(id)version isPostMigrationFlow:(BOOL)flow isUsingPreSharedKey:(BOOL)key
{
  sessionCopy = session;
  backPlanCopy = backPlan;
  versionCopy = version;
  v37.receiver = self;
  v37.super_class = TSTransferFlow;
  v19 = [(TSSIMSetupFlow *)&v37 init];
  if (v19)
  {
    v20 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:v19 action:sel_userDidTapCancel];
    cancelButton = v19->_cancelButton;
    v19->_cancelButton = v20;

    objc_storeStrong(&v19->_session, session);
    v19->_hasTransferablePlan = plan;
    v19->_isStandaloneProximityTransfer = transfer;
    v19->_isAvailableOptionsQueryCompleted = 0;
    v19->_isSourceProxCardVisible = 1;
    objc_storeStrong(&v19->_transferBackPlan, backPlan);
    objc_storeStrong(&v19->_sourceOSVersion, version);
    v19->_isPostMigrationFlow = flow;
    v19->_isUsingPreSharedKey = key;
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
    [(TSTransferFlowModel *)v27 arePlansAvailable:session transferablePlanOnSource:hasTransferablePlan bootstrapOnly:0 sourceOSVersion:sourceOSVersion isPostMigrationFlow:isPostMigrationFlow isUsingPreSharedKey:key completion:v34];
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

- (id)_firstViewController:(id)controller
{
  v146 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  transferPlans = [(TSTransferFlowModel *)self->_model transferPlans];
  filteredPlansForTransferableBucket = [transferPlans filteredPlansForTransferableBucket];

  transferPlans2 = [(TSTransferFlowModel *)self->_model transferPlans];
  filteredPlansForSoftwareUpdateBucket = [transferPlans2 filteredPlansForSoftwareUpdateBucket];

  transferPlans3 = [(TSTransferFlowModel *)self->_model transferPlans];
  filteredPlansForQRCodeBucket = [transferPlans3 filteredPlansForQRCodeBucket];

  transferPlans4 = [(TSTransferFlowModel *)self->_model transferPlans];
  filteredPlansForNonInstallableBucket = [transferPlans4 filteredPlansForNonInstallableBucket];

  filteredPlansForVisitStoreBucket = [filteredPlansForTransferableBucket filteredPlansForVisitStoreBucket];
  filteredPlansForVisitStoreBucket2 = [filteredPlansForSoftwareUpdateBucket filteredPlansForVisitStoreBucket];
  v8 = _TSLogDomain();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134219522;
    *v136 = [filteredPlansForTransferableBucket count];
    *&v136[8] = 2048;
    *v137 = [filteredPlansForVisitStoreBucket count];
    *&v137[8] = 2048;
    *&v137[10] = [filteredPlansForSoftwareUpdateBucket count];
    v138 = 2048;
    v139 = [filteredPlansForVisitStoreBucket2 count];
    v140 = 2048;
    v141 = [filteredPlansForQRCodeBucket count];
    v142 = 2048;
    v143 = [filteredPlansForNonInstallableBucket count];
    v144 = 2080;
    v145 = "[TSTransferFlow _firstViewController:]";
    _os_log_impl(&dword_262AA8000, v8, OS_LOG_TYPE_DEFAULT, "transferable:%lu (store:%lu), software update:%lu (store:%lu), qrcode:%lu, non install:%lu @%s", buf, 0x48u);
  }

  v9 = _TSLogDomain();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    pendingInstallItems = [controllerCopy pendingInstallItems];
    plans = [pendingInstallItems plans];
    v12 = [plans count];
    shouldShowCarrierSetupPane = [controllerCopy shouldShowCarrierSetupPane];
    *buf = 134218498;
    *v136 = v12;
    *&v136[8] = 1024;
    *v137 = shouldShowCarrierSetupPane;
    *&v137[4] = 2080;
    *&v137[6] = "[TSTransferFlow _firstViewController:]";
    _os_log_impl(&dword_262AA8000, v9, OS_LOG_TYPE_DEFAULT, "als:%lu, soda:%{BOOL}d @%s", buf, 0x1Cu);
  }

  v14 = _TSLogDomain();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    transferItems = [(TSTransferFlowModel *)self->_model transferItems];
    v16 = [transferItems count];
    requireStoreVisitItems = [(TSTransferFlowModel *)self->_model requireStoreVisitItems];
    v18 = [requireStoreVisitItems count];
    transferIneligibleItems = [(TSTransferFlowModel *)self->_model transferIneligibleItems];
    v20 = [transferIneligibleItems count];
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

  transferItems2 = [controllerCopy transferItems];
  transferItems = self->_transferItems;
  self->_transferItems = transferItems2;

  if ([controllerCopy shouldShowTransferredPane])
  {
    v25 = [TSTransferredViewController alloc];
    v26 = [(NSArray *)self->_transferItems objectAtIndex:0];
    v22 = [(TSTransferredViewController *)v25 initWithTransferredPlan:v26];

    [(SSVisitStoreViewController *)v22 setDelegate:self];
    [(TSSIMSetupFlow *)self setTopViewController:v22];
    goto LABEL_23;
  }

  pendingInstallItems2 = [controllerCopy pendingInstallItems];
  pendingInstallItems = self->_pendingInstallItems;
  self->_pendingInstallItems = pendingInstallItems2;

  self->_isActivationPolicyMismatch = [controllerCopy isActivationPolicyMismatch];
  self->_isDualeSIMCapablityLoss = [controllerCopy isDualeSIMCapablityLoss];
  v29 = [filteredPlansForTransferableBucket count];
  plans2 = [(CTDisplayPlanList *)self->_pendingInstallItems plans];
  v31 = [plans2 count];
  carrierSetupItems = [controllerCopy carrierSetupItems];
  plans3 = [carrierSetupItems plans];
  v34 = [plans3 count];

  v35 = v31 + v29 + v34;
  if (!v35)
  {
    if (self->_isStandaloneProximityTransfer || ![filteredPlansForQRCodeBucket count])
    {
      if ([filteredPlansForSoftwareUpdateBucket count] || self->_isStandaloneProximityTransfer)
      {
        v48 = [TSNoPlanForTransferViewController alloc];
        transferPlans5 = [(TSTransferFlowModel *)self->_model transferPlans];
        v22 = [(TSNoPlanForTransferViewController *)v48 initWithPlans:transferPlans5 showOtherOptions:0 isStartOverNeeded:self->_isStandaloneProximityTransfer];

        goto LABEL_18;
      }

      v85 = +[TSUtilities isWifiAvailable];
      v86 = +[TSCellularPlanManagerCache sharedInstance];
      planItems = [v86 planItems];
      v88 = [planItems count];

      v89 = +[TSCoreTelephonyClientCache sharedInstance];
      usingBootstrapDataService = [v89 usingBootstrapDataService];

      v91 = _TSLogDomain();
      if (os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109890;
        *v136 = v85;
        *&v136[4] = 1024;
        *&v136[6] = v88 != 0;
        *v137 = 1024;
        *&v137[2] = usingBootstrapDataService;
        *&v137[6] = 2080;
        *&v137[8] = "[TSTransferFlow _firstViewController:]";
        _os_log_impl(&dword_262AA8000, v91, OS_LOG_TYPE_DEFAULT, "isWiFi:%d, hasPlans:%d, usingBootstrap:%d @%s", buf, 0x1Eu);
      }

      if (v85 || v88 != 0 || ((usingBootstrapDataService ^ 1) & 1) != 0)
      {
        goto LABEL_19;
      }

      v47 = [(TSTransferFlow *)self _createIntroViewControllerWithIneligiblePlans:0];
    }

    else
    {
      v47 = [(TSTransferFlow *)self _createIntroViewControllerWithIneligiblePlans:filteredPlansForQRCodeBucket];
    }

    v22 = v47;
    if (v47)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  if ([filteredPlansForQRCodeBucket count])
  {
    v36 = [TSMultiPlanIntermediateViewController alloc];
    pendingInstallItems3 = [controllerCopy pendingInstallItems];
    plans4 = [pendingInstallItems3 plans];
    transferPlans6 = [controllerCopy transferPlans];
    carrierSetupItems2 = [controllerCopy carrierSetupItems];
    plans5 = [carrierSetupItems2 plans];
    BYTE1(v110) = 1;
    LOBYTE(v110) = self->_isStandaloneProximityTransfer;
    v22 = [(TSMultiPlanIntermediateViewController *)v36 initWithPendingInstallPlans:plans4 transferPlans:transferPlans6 carrierSetupPlans:plans5 showQRCodeOption:self->_isPostMigrationFlow | (v110 == 0) showOtherOptions:0 isShowingFilteredPlans:0 isStandaloneProximityFlow:v110 isHiddenPlanSelectable:?];

    goto LABEL_18;
  }

  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  if (![filteredPlansForTransferableBucket count])
  {
    plans6 = [(CTDisplayPlanList *)self->_pendingInstallItems plans];
    if (![plans6 count] && !objc_msgSend(controllerCopy, "shouldShowCarrierSetupPane"))
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
      plans7 = [(CTDisplayPlanList *)self->_pendingInstallItems plans];
      v55 = [plans7 countByEnumeratingWithState:&v127 objects:v134 count:16];
      if (v55)
      {
        v56 = *v128;
        do
        {
          for (i = 0; i != v55; ++i)
          {
            if (*v128 != v56)
            {
              objc_enumerationMutation(plans7);
            }

            v58 = *(*(&v127 + 1) + 8 * i);
            [array addObject:v58];
            plan = [v58 plan];
            [array2 addObject:plan];
          }

          v55 = [plans7 countByEnumeratingWithState:&v127 objects:v134 count:16];
        }

        while (v55);
      }

      v125 = 0u;
      v126 = 0u;
      v123 = 0u;
      v124 = 0u;
      carrierSetupItems3 = [controllerCopy carrierSetupItems];
      plans6 = [carrierSetupItems3 plans];

      v61 = [plans6 countByEnumeratingWithState:&v123 objects:v133 count:16];
      if (v61)
      {
        v62 = *v124;
        do
        {
          for (j = 0; j != v61; ++j)
          {
            if (*v124 != v62)
            {
              objc_enumerationMutation(plans6);
            }

            v64 = *(*(&v123 + 1) + 8 * j);
            [array addObject:v64];
            plan2 = [v64 plan];
            [array2 addObject:plan2];
          }

          v61 = [plans6 countByEnumeratingWithState:&v123 objects:v133 count:16];
        }

        while (v61);
      }

      goto LABEL_51;
    }
  }

LABEL_52:
  if (+[TSUtilities isPad](TSUtilities, "isPad") || !+[TSUtilities inBuddy](TSUtilities, "inBuddy") || [array2 count] < 2)
  {
    v71 = [filteredPlansForNonInstallableBucket count];
    if ((v71 + v35 + [filteredPlansForSoftwareUpdateBucket count]) < 2)
    {
      pendingInstallItems4 = [controllerCopy pendingInstallItems];
      plans8 = [pendingInstallItems4 plans];
      v74 = [plans8 count] == 1;

      if (v74)
      {
        v75 = [TSSinglePlanTransferViewController alloc];
        pendingInstallItems5 = [controllerCopy pendingInstallItems];
        plans9 = [pendingInstallItems5 plans];
        v78 = [plans9 objectAtIndexedSubscript:0];
        v22 = [(TSSinglePlanTransferViewController *)v75 initWithPendingInstallPlan:v78];

        goto LABEL_66;
      }

      if ([filteredPlansForVisitStoreBucket count] != 1)
      {
        if ([filteredPlansForTransferableBucket count] == 1)
        {
          v92 = [(NSArray *)self->_transferItems objectAtIndexedSubscript:0];
          v93 = [v92 objectForKeyedSubscript:@"planItem"];

          v112 = [TSSinglePlanTransferViewController alloc];
          v94 = [(NSArray *)self->_transferItems objectAtIndexedSubscript:0];
          isPhysical = [v93 isPhysical];
          isTransferIneligiblePlan = [v93 isTransferIneligiblePlan];
          v97 = +[TSUtilities inBuddy];
          isStandaloneProximityTransfer = self->_isStandaloneProximityTransfer;
          phoneNumber = [self->_transferBackPlan phoneNumber];
          LOBYTE(v111) = 0;
          LOBYTE(v110) = isStandaloneProximityTransfer;
          v22 = [(TSSinglePlanTransferViewController *)v112 initWithTransferPlan:v94 isPhysical:isPhysical isIneligible:isTransferIneligiblePlan inBuddy:v97 confirmCellularPlanTransfer:0 showOtherOptions:0 isStandaloneProximityFlow:v110 transferBackPhoneNumber:phoneNumber isShowingFilteredPlans:v111];
        }

        else
        {
          carrierSetupItems4 = [controllerCopy carrierSetupItems];
          plans10 = [carrierSetupItems4 plans];
          v102 = [plans10 count] == 1;

          if (v102)
          {
            v103 = [TSBuddyMLViewController alloc];
            carrierSetupItems5 = [controllerCopy carrierSetupItems];
            plans11 = [carrierSetupItems5 plans];
            v106 = [plans11 objectAtIndexedSubscript:0];
            plan3 = [v106 plan];
            websheetUrl = [controllerCopy websheetUrl];
            postdata = [controllerCopy postdata];
            v22 = [(TSBuddyMLViewController *)v103 initWithCTPlan:plan3 websheetURL:websheetUrl postdata:postdata];

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

    else if ([filteredPlansForVisitStoreBucket count] != v35)
    {
      v79 = [TSMultiPlanIntermediateViewController alloc];
      pendingInstallItems6 = [controllerCopy pendingInstallItems];
      plans12 = [pendingInstallItems6 plans];
      transferPlans7 = [controllerCopy transferPlans];
      carrierSetupItems6 = [controllerCopy carrierSetupItems];
      plans13 = [carrierSetupItems6 plans];
      BYTE1(v110) = 1;
      LOBYTE(v110) = self->_isStandaloneProximityTransfer;
      v22 = [(TSMultiPlanIntermediateViewController *)v79 initWithPendingInstallPlans:plans12 transferPlans:transferPlans7 carrierSetupPlans:plans13 showQRCodeOption:self->_isPostMigrationFlow | (v110 == 0) showOtherOptions:0 isShowingFilteredPlans:0 isStandaloneProximityFlow:v110 isHiddenPlanSelectable:?];

      goto LABEL_66;
    }

    v22 = [[SSVisitStoreViewController alloc] initWithPlans:filteredPlansForVisitStoreBucket showOtherOption:0];
    goto LABEL_66;
  }

  v66 = [TSSubFlowViewController alloc];
  v131[0] = @"FlowTypeKey";
  v131[1] = @"Plans";
  v132[0] = &unk_287583BB0;
  v132[1] = array;
  v131[2] = @"ConfirmCellularPlanTransfer";
  v132[2] = MEMORY[0x277CBEC28];
  v67 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v132 forKeys:v131 count:3];
  navigationController = [(TSSIMSetupFlow *)self navigationController];
  v22 = [(TSSubFlowViewController *)v66 initWithOptions:v67 navigationController:navigationController delegate:self];

  objc_initWeak(buf, self);
  ctClient = self->_ctClient;
  v70 = [objc_alloc(MEMORY[0x277CC36F0]) initWithPlans:array2];
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
  [(TSTransferFlow *)self _saveSimsetupD2dInfo:controllerCopy];
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

- (id)_createIntroViewControllerWithIneligiblePlans:(id)plans
{
  v3 = self->_session == 0;
  plansCopy = plans;
  v5 = [[TSCellularPlanIntroViewController alloc] initWithShowTransferOption:v3 requireDelayBluetoothConnection:0 showQrCodeOption:1 transferIneligiblePlans:plansCopy];

  return v5;
}

- (void)firstViewController:(id)controller
{
  v4 = MEMORY[0x2667315D0](controller, a2);
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
    model = [(TSTransferFlow *)self model];
    v4 = [(TSTransferFlow *)self _firstViewController:model];

    [(TSTransferFlow *)self _maybePresentFirstViewController:v4 firstViewControllerCallback:self->_firstViewControllerCallback];
  }
}

- (void)_maybePresentFirstViewController:(id)controller firstViewControllerCallback:(id)callback
{
  controllerCopy = controller;
  callbackCopy = callback;
  if (controllerCopy)
  {
    [(TSSIMSetupFlow *)self setTopViewController:controllerCopy];
    objc_initWeak(&location, self);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __79__TSTransferFlow__maybePresentFirstViewController_firstViewControllerCallback___block_invoke;
    v16[3] = &unk_279B451F8;
    objc_copyWeak(&v19, &location);
    v18 = callbackCopy;
    v17 = controllerCopy;
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

    (*(callbackCopy + 2))(callbackCopy, 0);
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

- (void)startOverWithFirstViewController:(id)controller
{
  controllerCopy = controller;
  navigationController = [(TSSIMSetupFlow *)self navigationController];
  topViewController = [navigationController topViewController];
  navigationController2 = [(TSSIMSetupFlow *)self navigationController];
  v8 = [(TSSIMSetupFlow *)self handleStartOverWithEntryPoint:topViewController navigationController:navigationController2 completion:controllerCopy];

  if (!v8)
  {
    objc_initWeak(&location, self);
    v9 = +[TSCellularPlanManagerCache sharedInstance];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __51__TSTransferFlow_startOverWithFirstViewController___block_invoke;
    v10[3] = &unk_279B44CD0;
    objc_copyWeak(&v12, &location);
    v11 = controllerCopy;
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

- (id)nextViewControllerFrom:(id)from
{
  v134[10] = *MEMORY[0x277D85DE8];
  fromCopy = from;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    transferPlans = [(TSTransferFlowModel *)self->_model transferPlans];
    v6 = [transferPlans count];

    if (v6 == 1)
    {
      v7 = [(NSArray *)self->_transferItems objectAtIndexedSubscript:0];
      transferPlans2 = [v7 objectForKeyedSubscript:@"planItem"];

      v9 = [TSSinglePlanTransferViewController alloc];
      selectedPlan = [(NSArray *)self->_transferItems objectAtIndexedSubscript:0];
      isPhysical = [transferPlans2 isPhysical];
      isTransferIneligiblePlan = [transferPlans2 isTransferIneligiblePlan];
      v13 = +[TSUtilities inBuddy];
      isStandaloneProximityTransfer = self->_isStandaloneProximityTransfer;
      phoneNumber = [self->_transferBackPlan phoneNumber];
      LOBYTE(v105) = 0;
      LOBYTE(v104) = isStandaloneProximityTransfer;
      v16 = [(TSSinglePlanTransferViewController *)v9 initWithTransferPlan:selectedPlan isPhysical:isPhysical isIneligible:isTransferIneligiblePlan inBuddy:v13 confirmCellularPlanTransfer:0 showOtherOptions:0 isStandaloneProximityFlow:v104 transferBackPhoneNumber:phoneNumber isShowingFilteredPlans:v105];

      goto LABEL_32;
    }

    v26 = [TSTransferListViewController alloc];
    transferPlans2 = [(TSTransferFlowModel *)self->_model transferPlans];
    isActivationPolicyMismatch = self->_isActivationPolicyMismatch;
    isDualeSIMCapablityLoss = self->_isDualeSIMCapablityLoss;
    pendingInstallItems = [(TSTransferFlowModel *)self->_model pendingInstallItems];
    carrierSetupItems = [(TSTransferFlowModel *)self->_model carrierSetupItems];
    v31 = self->_isStandaloneProximityTransfer;
    BYTE2(v104) = ![(TSTransferFlowModel *)self->_model isFlexPolicyOn];
    BYTE1(v104) = v31;
    LOBYTE(v104) = 0;
    v16 = [TSTransferListViewController initWithTransferPlans:v26 confirmCellularPlanTransfer:"initWithTransferPlans:confirmCellularPlanTransfer:isActivationPolicyMismatch:isDualeSIMCapabilityLoss:pendingInstallItems:carrierSetupItems:showOtherOptions:isStandaloneProximityFlow:allowsMultiSelection:" isActivationPolicyMismatch:transferPlans2 isDualeSIMCapabilityLoss:0 pendingInstallItems:isActivationPolicyMismatch carrierSetupItems:isDualeSIMCapablityLoss showOtherOptions:pendingInstallItems isStandaloneProximityFlow:carrierSetupItems allowsMultiSelection:v104];

LABEL_33:
    goto LABEL_34;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    transferPlans2 = fromCopy;
    selectedPlan = [transferPlans2 selectedPlan];
    if (![(TSTransferFlowModel *)self->_model shouldShowCarrierSetupPane])
    {
      if (!selectedPlan || [selectedPlan transferCapability] != 8)
      {
        if ([transferPlans2 isOtherButtonTapped])
        {
          v16 = [(TSTransferFlow *)self _createIntroViewControllerWithIneligiblePlans:0];
          goto LABEL_32;
        }

        if (([transferPlans2 isSkipButtonTapped] & 1) == 0)
        {
          v62 = [TSSubFlowViewController alloc];
          v133[0] = @"FlowTypeKey";
          v133[1] = @"SkipActivatingPane";
          v63 = MEMORY[0x277CBEC38];
          v134[0] = &unk_287583BB0;
          v134[1] = MEMORY[0x277CBEC38];
          v133[2] = @"DelayStartActivatingTimer";
          installingTransferPlan = [transferPlans2 installingTransferPlan];
          v65 = &unk_287583BE0;
          if (installingTransferPlan)
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
          installingTransferPlan2 = [transferPlans2 installingTransferPlan];
          v68 = &unk_287583C10;
          if (installingTransferPlan2)
          {
            v68 = &unk_287583BF8;
          }

          v134[4] = v68;
          v133[5] = @"CarrierNameKey";
          carrierNameForSelectedItem = [transferPlans2 carrierNameForSelectedItem];
          if (carrierNameForSelectedItem)
          {
            [transferPlans2 carrierNameForSelectedItem];
          }

          else
          {
            [MEMORY[0x277CBEB68] null];
          }

          v110 = v118 = selectedPlan;
          v134[5] = v110;
          v134[6] = v63;
          v133[6] = @"MaybeShowConfirmationCodePaneKey";
          v133[7] = @"Plan";
          selectedPlan2 = [transferPlans2 selectedPlan];
          v134[7] = selectedPlan2;
          v133[8] = @"MessageSessionKey";
          session = self->_session;
          null = session;
          if (!session)
          {
            null = [MEMORY[0x277CBEB68] null];
          }

          v134[8] = null;
          v133[9] = @"SourceOSVersion";
          sourceOSVersion = self->_sourceOSVersion;
          null2 = sourceOSVersion;
          if (!sourceOSVersion)
          {
            null2 = [MEMORY[0x277CBEB68] null];
          }

          v134[9] = null2;
          v90 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v134 forKeys:v133 count:10];
          navigationController = [(TSSIMSetupFlow *)self navigationController];
          v16 = [(TSSubFlowViewController *)v62 initWithOptions:v90 navigationController:navigationController delegate:self];

          if (!sourceOSVersion)
          {
          }

          if (!session)
          {
          }

          selectedPlan = v118;
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
    v115 = transferPlans2;
    v18 = fromCopy;
    v20 = v19 = selectedPlan;
    plans = [v20 plans];
    v22 = [plans objectAtIndexedSubscript:0];
    plan = [v22 plan];
    websheetUrl = [(TSTransferFlowModel *)self->_model websheetUrl];
    postdata = [(TSTransferFlowModel *)self->_model postdata];
    v16 = [(TSBuddyMLViewController *)v17 initWithCTPlan:plan websheetURL:websheetUrl postdata:postdata];

    selectedPlan = v19;
    fromCopy = v18;
    transferPlans2 = v115;
LABEL_32:

    goto LABEL_33;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    transferPlans2 = fromCopy;
    if ([transferPlans2 isTransferListCellTapped])
    {
      v116 = transferPlans2;
      transferPlans3 = [(TSTransferFlowModel *)self->_model transferPlans];
      filteredPlansForTransferableBucket = [transferPlans3 filteredPlansForTransferableBucket];

      filteredPlansForVisitStoreBucket = [filteredPlansForTransferableBucket filteredPlansForVisitStoreBucket];
      transferPlans4 = [(TSTransferFlowModel *)self->_model transferPlans];
      filteredPlansForSoftwareUpdateBucket = [transferPlans4 filteredPlansForSoftwareUpdateBucket];

      v112 = filteredPlansForTransferableBucket;
      v37 = [filteredPlansForTransferableBucket count];
      plans2 = [(CTDisplayPlanList *)self->_pendingInstallItems plans];
      v39 = [plans2 count] + v37;
      carrierSetupItems2 = [(TSTransferFlowModel *)self->_model carrierSetupItems];
      plans3 = [carrierSetupItems2 plans];
      v42 = [plans3 count];

      if (v39 + v42)
      {
        if (![filteredPlansForVisitStoreBucket count])
        {
          v108 = [TSTransferListViewController alloc];
          transferPlans5 = [(TSTransferFlowModel *)self->_model transferPlans];
          v107 = self->_isActivationPolicyMismatch;
          v77 = self->_isDualeSIMCapablityLoss;
          pendingInstallItems = self->_pendingInstallItems;
          carrierSetupItems3 = [(TSTransferFlowModel *)self->_model carrierSetupItems];
          v80 = self->_isStandaloneProximityTransfer;
          BYTE2(v104) = ![(TSTransferFlowModel *)self->_model isFlexPolicyOn];
          BYTE1(v104) = v80;
          LOBYTE(v104) = 0;
          v16 = [TSTransferListViewController initWithTransferPlans:v108 confirmCellularPlanTransfer:"initWithTransferPlans:confirmCellularPlanTransfer:isActivationPolicyMismatch:isDualeSIMCapabilityLoss:pendingInstallItems:carrierSetupItems:showOtherOptions:isStandaloneProximityFlow:allowsMultiSelection:" isActivationPolicyMismatch:transferPlans5 isDualeSIMCapabilityLoss:0 pendingInstallItems:v107 carrierSetupItems:v77 showOtherOptions:pendingInstallItems isStandaloneProximityFlow:carrierSetupItems3 allowsMultiSelection:v104];

          goto LABEL_69;
        }

        v16 = [[SSVisitStoreViewController alloc] initWithPlans:filteredPlansForVisitStoreBucket showOtherOption:0];
      }

      else
      {
        if ([filteredPlansForSoftwareUpdateBucket count])
        {
          v43 = [TSNoPlanForTransferViewController alloc];
          transferPlans5 = [(TSTransferFlowModel *)self->_model transferPlans];
          v16 = [(TSNoPlanForTransferViewController *)v43 initWithPlans:transferPlans5 showOtherOptions:0 isStartOverNeeded:self->_isStandaloneProximityTransfer];
LABEL_69:

          goto LABEL_70;
        }

        v16 = 0;
      }

LABEL_70:
      transferPlans2 = v116;

      v81 = v112;
LABEL_71:

      goto LABEL_33;
    }

    if ([transferPlans2 isScanButtonTapped])
    {
      transferIneligibleItems = [(TSTransferFlowModel *)self->_model transferIneligibleItems];
      filteredPlansForQRCodeBucket = [transferIneligibleItems filteredPlansForQRCodeBucket];

      v131[0] = @"FlowTypeKey";
      v131[1] = @"IsFirstViewKey";
      v132[0] = &unk_287583C28;
      v132[1] = MEMORY[0x277CBEC28];
      v47 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v132 forKeys:v131 count:2];
      plans4 = [v47 mutableCopy];

      if ([filteredPlansForQRCodeBucket count])
      {
        [plans4 setObject:filteredPlansForQRCodeBucket forKeyedSubscript:@"Plans"];
      }

      v49 = [TSSubFlowViewController alloc];
      goto LABEL_24;
    }

    goto LABEL_42;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    transferPlans2 = fromCopy;
    if ([transferPlans2 isOtherButtonTapped])
    {
      v16 = [(TSTransferFlow *)self _createIntroViewControllerWithIneligiblePlans:0];
      goto LABEL_33;
    }

    if (([transferPlans2 isCarrierDirectAuthItemSelected] & 1) == 0)
    {
      if (_os_feature_enabled_impl() && ([transferPlans2 selectedPlans], v69 = objc_claimAutoreleasedReturnValue(), v69, v69))
      {
        v70 = [TSSubFlowViewController alloc];
        v130[0] = &unk_287583BB0;
        v129[0] = @"FlowTypeKey";
        v129[1] = @"Plans";
        selectedPlans = [transferPlans2 selectedPlans];
        v130[1] = selectedPlans;
        v130[2] = MEMORY[0x277CBEC28];
        v129[2] = @"ConfirmCellularPlanTransfer";
        v129[3] = @"MessageSessionKey";
        v71 = self->_session;
        null3 = v71;
        if (!v71)
        {
          null3 = [MEMORY[0x277CBEB68] null];
        }

        v130[3] = null3;
        v129[4] = @"SourceOSVersion";
        v73 = self->_sourceOSVersion;
        null4 = v73;
        if (!v73)
        {
          null4 = [MEMORY[0x277CBEB68] null];
        }

        v130[4] = null4;
        v75 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v130 forKeys:v129 count:5];
        navigationController2 = [(TSSIMSetupFlow *)self navigationController];
        v16 = [(TSSubFlowViewController *)v70 initWithOptions:v75 navigationController:navigationController2 delegate:self];

        if (!v73)
        {
        }

        if (!v71)
        {
        }
      }

      else
      {
        if ([transferPlans2 isCarrierSetupItemSelected])
        {
          v82 = [TSBuddyMLViewController alloc];
          filteredPlansForQRCodeBucket = [(TSTransferFlowModel *)self->_model carrierSetupItems];
          plans4 = [filteredPlansForQRCodeBucket plans];
          navigationController5 = [plans4 objectAtIndexedSubscript:0];
          plan2 = [navigationController5 plan];
          websheetUrl2 = [(TSTransferFlowModel *)self->_model websheetUrl];
          postdata2 = [(TSTransferFlowModel *)self->_model postdata];
          v16 = [(TSBuddyMLViewController *)v82 initWithCTPlan:plan2 websheetURL:websheetUrl2 postdata:postdata2];

          goto LABEL_25;
        }

        v92 = [TSSubFlowViewController alloc];
        v127[0] = @"FlowTypeKey";
        v127[1] = @"SkipActivatingPane";
        v93 = MEMORY[0x277CBEC38];
        v128[0] = &unk_287583BB0;
        v128[1] = MEMORY[0x277CBEC38];
        v127[2] = @"DelayStartActivatingTimer";
        installingTransferPlan3 = [transferPlans2 installingTransferPlan];
        v95 = &unk_287583BE0;
        if (installingTransferPlan3)
        {
          v95 = &unk_287583BC8;
        }

        v128[2] = v95;
        v127[3] = @"PlanSetupTypeKey";
        installingTransferPlan4 = [transferPlans2 installingTransferPlan];
        v97 = &unk_287583C10;
        if (installingTransferPlan4)
        {
          v97 = &unk_287583BF8;
        }

        v128[3] = v97;
        v127[4] = @"CarrierNameKey";
        selectedPlans = [transferPlans2 carrierNameForSelectedItem];
        if (selectedPlans)
        {
          [transferPlans2 carrierNameForSelectedItem];
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
        null5 = v98;
        if (!v98)
        {
          null5 = [MEMORY[0x277CBEB68] null];
        }

        v128[6] = null5;
        v127[7] = @"SourceOSVersion";
        v100 = self->_sourceOSVersion;
        null6 = v100;
        if (!v100)
        {
          null6 = [MEMORY[0x277CBEB68] null];
        }

        v128[7] = null6;
        v102 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v128 forKeys:v127 count:8];
        navigationController3 = [(TSSIMSetupFlow *)self navigationController];
        v16 = [(TSSubFlowViewController *)v92 initWithOptions:v102 navigationController:navigationController3 delegate:self];

        if (!v100)
        {
        }

        if (!v98)
        {
        }
      }

      v81 = selectedPlans;
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
    navigationController4 = [(TSSIMSetupFlow *)self navigationController];
    v16 = [(TSSubFlowViewController *)v51 initWithOptions:v52 navigationController:navigationController4 delegate:self];

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
    transferPlans2 = fromCopy;
    if ([transferPlans2 isScanButtonTapped])
    {
      v123[0] = @"FlowTypeKey";
      v123[1] = @"IsFirstViewKey";
      v124[0] = &unk_287583C28;
      v124[1] = MEMORY[0x277CBEC28];
      v57 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v124 forKeys:v123 count:2];
      filteredPlansForQRCodeBucket = [v57 mutableCopy];

      transferPlans6 = [(TSTransferFlowModel *)self->_model transferPlans];
      v59 = [transferPlans6 count];

      if (v59)
      {
        transferPlans7 = [(TSTransferFlowModel *)self->_model transferPlans];
        [filteredPlansForQRCodeBucket setObject:transferPlans7 forKeyedSubscript:@"Plans"];
      }

      v61 = [TSSubFlowViewController alloc];
    }

    else
    {
      if ([transferPlans2 isProximityTransferButtonTapped])
      {
        v49 = [TSSubFlowViewController alloc];
        v121[0] = @"FlowTypeKey";
        filteredPlansForQRCodeBucket = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:10002];
        v121[1] = @"IsClientKey";
        v122[0] = filteredPlansForQRCodeBucket;
        v122[1] = MEMORY[0x277CBEC28];
        plans4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v122 forKeys:v121 count:2];
LABEL_24:
        navigationController5 = [(TSSIMSetupFlow *)self navigationController];
        v16 = [(TSSubFlowViewController *)v49 initWithOptions:plans4 navigationController:navigationController5 delegate:self];
LABEL_25:

LABEL_26:
        goto LABEL_33;
      }

      if (+[TSUtilities inBuddy](TSUtilities, "inBuddy") || ![transferPlans2 isCrossPlatformButtonTapped])
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
      filteredPlansForQRCodeBucket = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v120 forKeys:v119 count:2];
    }

    plans4 = [(TSSIMSetupFlow *)self navigationController];
    v16 = [(TSSubFlowViewController *)v61 initWithOptions:filteredPlansForQRCodeBucket navigationController:plans4 delegate:self];
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

- (void)viewControllerDidComplete:(id)complete
{
  completeCopy = complete;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_6;
  }

  v5 = completeCopy;
  if ([v5 subFlowType] != 2 || (objc_msgSend(v5, "navigationController"), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "viewControllers"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "indexOfObject:", v5), v7, v6, !v8))
  {

LABEL_6:
    v14.receiver = self;
    v14.super_class = TSTransferFlow;
    [(TSSIMSetupFlow *)&v14 viewControllerDidComplete:completeCopy];
    goto LABEL_7;
  }

  navigationController = [v5 navigationController];
  viewControllers = [navigationController viewControllers];
  v11 = [viewControllers objectAtIndex:v8 - 1];

  navigationController2 = [v5 navigationController];
  v13 = [navigationController2 popToViewController:v11 animated:1];

  v15.receiver = self;
  v15.super_class = TSTransferFlow;
  [(TSSIMSetupFlow *)&v15 viewControllerDidComplete:v11];

LABEL_7:
}

- (void)setCancelNavigationBarItems:(id)items
{
  itemsCopy = items;
  v5 = +[TSUtilities isPad];
  navigationItem = [itemsCopy navigationItem];
  v7 = navigationItem;
  cancelButton = self->_cancelButton;
  if (v5)
  {
    [navigationItem setRightBarButtonItem:cancelButton];
  }

  else
  {
    [navigationItem setLeftBarButtonItem:cancelButton];
  }

  navigationItem2 = [itemsCopy navigationItem];

  [navigationItem2 setHidesBackButton:1 animated:0];
}

- (void)transferEventUpdate:(id)update
{
  v12 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  v5 = _TSLogDomain();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = updateCopy;
    v10 = 2080;
    v11 = "[TSTransferFlow transferEventUpdate:]";
    _os_log_impl(&dword_262AA8000, v5, OS_LOG_TYPE_DEFAULT, "transfer event : %@ @%s", &v8, 0x16u);
  }

  v6 = [updateCopy objectForKey:@"UpdateProxCardVisibility"];
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
  topViewController = [(TSSIMSetupFlow *)self topViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
  }

  else
  {
    topViewController2 = [(TSSIMSetupFlow *)self topViewController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  v6 = +[TSCoreTelephonyClientCache sharedInstance];
  v19 = objc_alloc(MEMORY[0x277CC3720]);
  transferItems = [(TSTransferFlowModel *)self->_model transferItems];
  v17 = [TSUtilities transferablePlans:transferItems];
  pendingInstallItems = [(TSTransferFlowModel *)self->_model pendingInstallItems];
  plans = [pendingInstallItems plans];
  v16 = [plans count];
  transferItems2 = [(TSTransferFlowModel *)self->_model transferItems];
  v15 = [TSUtilities odaPlans:transferItems2];
  transferItems3 = [(TSTransferFlowModel *)self->_model transferItems];
  v7 = [TSUtilities transferablePlanCarriers:transferItems3];
  pendingInstallItems2 = [(TSTransferFlowModel *)self->_model pendingInstallItems];
  plans2 = [pendingInstallItems2 plans];
  v10 = [TSUtilities alsPlanCarriers:plans2];
  transferItems4 = [(TSTransferFlowModel *)self->_model transferItems];
  v12 = [TSUtilities odaPlanCarriers:transferItems4];
  transferItems5 = [(TSTransferFlowModel *)self->_model transferItems];
  v14 = [v19 initWithInBuddy:0 transferablePlans:v17 selectedTransferablePlans:0 alsPlans:v16 selectedAlsPlans:0 odaPlans:v15 transferPlanCarriers:v7 selectedTransferPlanCarriers:&stru_28753DF48 alsPlanCarriers:v10 selectedAlsPlanCarriers:&stru_28753DF48 odaPlanCarriers:v12 selectedOdaPlanCarriers:&stru_28753DF48 sourceDevicesCount:+[TSUtilities sourceDevicesCount:](TSUtilities selectedSourceDevicesCount:{"sourceDevicesCount:", transferItems5), 0}];
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

- (void)_saveSimsetupD2dInfo:(id)info
{
  infoCopy = info;
  if ([infoCopy isProximityFlow] && (objc_msgSend(infoCopy, "isStandaloneProximityTransfer") & 1) == 0)
  {
    simsetupD2dInfo = [(TSTransferFlowModel *)self->_model simsetupD2dInfo];
    [simsetupD2dInfo setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"d2dDone"];
    v5 = +[TSCoreTelephonyClientCache sharedInstance];
    simsetupD2dInfo2 = [(TSTransferFlowModel *)self->_model simsetupD2dInfo];
    [v5 saveSimSetupInfo:@"simsetupD2dInfo" info:simsetupD2dInfo2];
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