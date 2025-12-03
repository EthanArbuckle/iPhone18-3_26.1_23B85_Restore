@interface TSCellularPlanActivatingFlow
- (BOOL)_areAllPlansInPostInstallOrTerminalState;
- (BOOL)_areAllPlansInTerminalState;
- (BOOL)_hasAnyDisabledInstallPlan;
- (BOOL)_hasAnyPlanSuccessfullyInstalled;
- (BOOL)_hasAnyPlanSuccessfullyInstalledOrPostInstalled;
- (BOOL)_isAppInBackground;
- (BOOL)_maybeHandleProvisioningError:(id)error items:(id)items;
- (BOOL)_requireSyncUpTransferResultsWithSource;
- (BOOL)_shouldOfferFallbackOptionOnError:(id)error;
- (BOOL)_startedByFollowup;
- (TSBuddyMLViewController)buddyMLViewController;
- (TSCellularPlanActivatingFlow)initWithEnablingPlanIccid:(id)iccid;
- (TSCellularPlanActivatingFlow)initWithSelectedPlans:(id)plans confirmCellularPlanTransfer:(BOOL)transfer isForCrossPlatformTransfer:(BOOL)platformTransfer session:(id)session sourceOsVersion:(id)version;
- (TSCellularPlanActivatingFlow)initWithSkipActivatingPane:(BOOL)pane timerType:(int64_t)type transferBackPlan:(id)plan setupType:(unint64_t)setupType carrierName:(id)name maybeShowConfirmationCodePane:(BOOL)codePane plan:(id)a9 isForCrossPlatformTransfer:(BOOL)self0 session:(id)self1 sourceOsVersion:(id)self2 isLocalConvert:(BOOL)self3;
- (TSTermsAndConditionsViewController)termsAndConditionsViewController;
- (TSTransferOneTimeCodeViewController)oneTimeCodeViewController;
- (UINavigationController)websheetRootViewController;
- (UIViewController)presentedViewController;
- (id)_collectAllPhoneNumbersForDevice:(id)device;
- (id)_dequeueInteractiveUI;
- (id)_findPlanInfoWithPlanID:(id)d;
- (id)_findPlanInfoWithPlanStatus:(unint64_t)status;
- (id)_findPlanInfoWithTargetIccid:(id)iccid;
- (id)_findPlanInfoWithTargetIccidHash:(id)hash;
- (id)_firstViewController;
- (id)carrierErrorCode;
- (id)carrierName;
- (id)firstViewController;
- (id)nextViewControllerFrom:(id)from;
- (id)phoneNumber;
- (id)planError;
- (id)planName;
- (id)targetIccid;
- (id)updatePlanItem;
- (unint64_t)consolidatedActivatingState;
- (void)_cancelTransferringPlan:(id)plan;
- (void)_displayCarrierSetupViewController:(id)controller;
- (void)_displayConfirmationCodeViewController:(id)controller;
- (void)_displayIntermediateViewController:(id)controller;
- (void)_displayTermsAndConditionsViewController:(id)controller mainText:(id)text;
- (void)_displayWebsheetViewController:(id)controller;
- (void)_enqueueInteractiveUI:(id)i;
- (void)_firstViewController;
- (void)_getWebsheetInfo:(id)info completion:(id)completion;
- (void)_handleActivatedItemUpdate:(id)update;
- (void)_handleActivatingExpiry;
- (void)_handleMultiSIMInstallationStatusUpdateEvent:(id)event;
- (void)_handleOtpStatusUpdate:(int64_t)update;
- (void)_handlePostInstallItemUpdate:(id)update;
- (void)_handleProvisioningItemUpdate:(id)update;
- (void)_maybeDeleteTransferBackItem:(id)item;
- (void)_maybeDismissAlert:(id)alert;
- (void)_maybeDisplayInteractiveUI:(id)i;
- (void)_maybeDisplayNextIntermediateViewController;
- (void)_maybeDisplaySourceDeviceConsentAlert:(id)alert;
- (void)_maybeHandleConfirmationCodeError:(id)error;
- (void)_maybeMoveToNextItem;
- (void)_maybePresentFirstViewController:(id)controller;
- (void)_maybeReplyFirstViewControllerCallbackWithViewController:(id)controller;
- (void)_maybeSendTransferResults;
- (void)_maybeSendTransferUICapability:(id)capability;
- (void)_maybeStartTimerForNewlyInstalledPlan:(id)plan newStatus:(unint64_t)status;
- (void)_maybeUpdatePhysicalSIMStatus:(id)status;
- (void)_maybeUpdatePlanNameForTargetIccid:(id)iccid planName:(id)name;
- (void)_maybeUpdatePlanNameWithoutPlanID:(id)d;
- (void)_maybeUpdateUserEnabledPlans:(id)plans;
- (void)_offerFallbackOption;
- (void)_onInstallError:(id)error;
- (void)_redirectToBTFlow;
- (void)_shouldWaitUntilPhoneNumberBeReady:(id)ready completion:(id)completion;
- (void)_startBackgroundTask;
- (void)_stopBackgroundTask;
- (void)_stopTimerWithBackgroundTaskState:(BOOL)state;
- (void)_submitCellularPlanSetupDetails;
- (void)_updateCarrierErrorCode:(id)code withPlanID:(id)d;
- (void)_updateInstallError:(id)error withPlanID:(id)d webUrl:(id)url postData:(id)data;
- (void)_updateInstallError:(id)error withTargetIccidHash:(id)hash;
- (void)_updatePlanStatus:(unint64_t)status forPlanInfo:(id)info;
- (void)_updatePlanStatus:(unint64_t)status withPlanID:(id)d;
- (void)_updatePlanStatus:(unint64_t)status withTargetIccid:(id)iccid;
- (void)_updateTargetIccid:(id)iccid withPlanID:(id)d;
- (void)_updateTargetIccidWithoutPlanID:(id)d;
- (void)dealloc;
- (void)firstViewController:(id)controller;
- (void)handleWaitingOnWifiStatusUpdate:(BOOL)update;
- (void)launchWebsheet:(id)websheet completion:(id)completion;
- (void)navigateToNextPaneFrom:(id)from navigationController:(id)controller;
- (void)planItemsUpdated:(id)updated planListError:(id)error;
- (void)setCancelNavigationBarItems:(id)items;
- (void)setTopViewController:(id)controller;
- (void)simSetupFlowCompleted:(unint64_t)completed;
- (void)startTimer:(int64_t)timer;
- (void)transferEventUpdate:(id)update;
- (void)updateProvisioningError:(id)error targetIccidHash:(id)hash;
- (void)userDidTapCancel;
- (void)viewControllerDidComplete:(id)complete;
@end

@implementation TSCellularPlanActivatingFlow

- (TSCellularPlanActivatingFlow)initWithEnablingPlanIccid:(id)iccid
{
  v40 = *MEMORY[0x277D85DE8];
  iccidCopy = iccid;
  v37.receiver = self;
  v37.super_class = TSCellularPlanActivatingFlow;
  v6 = [(TSSIMSetupFlow *)&v37 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_iccidToEnable, iccid);
    mEMORY[0x277CF96D8] = [MEMORY[0x277CF96D8] sharedManager];
    v9 = [mEMORY[0x277CF96D8] planItemsShouldUpdate:0];

    [(TSCellularPlanActivatingFlow *)v7 planItemsUpdated:v9 planListError:0];
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v10 = v9;
    v11 = [v10 countByEnumeratingWithState:&v33 objects:v39 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v34;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v34 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v33 + 1) + 8 * i);
          iccid = [v15 iccid];
          v17 = [iccid isEqualToString:iccidCopy];

          if (v17)
          {
            v18 = [[SSInstallPlanInformation alloc] initWithItem:v15];
            v38 = v18;
            v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v38 count:1];
            v20 = [v19 mutableCopy];
            installingPlanInfos = v7->_installingPlanInfos;
            v7->_installingPlanInfos = v20;

            goto LABEL_12;
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v33 objects:v39 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:

    v7->_planEnablementState = 1;
    v7->_backgroundTask = *MEMORY[0x277D767B0];
    v22 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:v7 action:sel_userDidTapCancel];
    cancelButton = v7->_cancelButton;
    v7->_cancelButton = v22;

    v7->_skipActivatingPane = 1;
    v7->_planSetupType = 0;
    v24 = [MEMORY[0x277CBEB58] set];
    displayedDeviceIDs = v7->_displayedDeviceIDs;
    v7->_displayedDeviceIDs = v24;

    v26 = objc_alloc(MEMORY[0x277CC37B0]);
    v27 = [v26 initWithQueue:MEMORY[0x277D85CD0]];
    client = v7->_client;
    v7->_client = v27;

    [(CoreTelephonyClient *)v7->_client setDelegate:v7];
    v7->_isForCrossPlatformTransfer = 0;
    v29 = +[TSUserInPurchaseFlowAssertion sharedInstance];
    [v29 assertUserInPurchaseFlowStartOver:0 caller:v7];

    v30 = +[TSCellularPlanManagerCache sharedInstance];
    [v30 setDelegate:v7];
  }

  v31 = *MEMORY[0x277D85DE8];
  return v7;
}

- (TSCellularPlanActivatingFlow)initWithSelectedPlans:(id)plans confirmCellularPlanTransfer:(BOOL)transfer isForCrossPlatformTransfer:(BOOL)platformTransfer session:(id)session sourceOsVersion:(id)version
{
  v72 = *MEMORY[0x277D85DE8];
  plansCopy = plans;
  sessionCopy = session;
  versionCopy = version;
  if ([plansCopy count])
  {
    v15 = objc_alloc(MEMORY[0x277CC37B0]);
    v16 = [v15 initWithQueue:MEMORY[0x277D85CD0]];
    client = self->_client;
    self->_client = v16;

    if ([plansCopy count] == 1)
    {
      transferCopy = transfer;
      v18 = [plansCopy objectAtIndexedSubscript:0];
      [v18 plan];
      v20 = v19 = platformTransfer;
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      v22 = ~isKindOfClass;
      if (isKindOfClass)
      {
        v23 = 7;
      }

      else
      {
        v23 = 1;
      }

      plan = [v18 plan];
      objc_opt_class();
      v25 = objc_opt_isKindOfClass();

      if (v25)
      {
        v26 = 3;
      }

      else
      {
        v26 = v23;
      }

      carrierName = [v18 carrierName];
      LOBYTE(v59) = 0;
      LOBYTE(v58) = v19;
      v28 = [(TSCellularPlanActivatingFlow *)self initWithSkipActivatingPane:1 timerType:v22 & 1 transferBackPlan:0 setupType:v26 carrierName:carrierName maybeShowConfirmationCodePane:1 plan:v18 isForCrossPlatformTransfer:v58 session:sessionCopy sourceOsVersion:versionCopy isLocalConvert:v59];

      if (v28)
      {
        v29 = [MEMORY[0x277CBEB58] set];
        displayedDeviceIDs = v28->_displayedDeviceIDs;
        v28->_displayedDeviceIDs = v29;

        v28->_confirmCellularPlanTransfer = transferCopy;
      }

      self = v28;

      selfCopy2 = self;
    }

    else
    {
      v70.receiver = self;
      v70.super_class = TSCellularPlanActivatingFlow;
      v33 = [(TSSIMSetupFlow *)&v70 init];
      if (v33)
      {
        platformTransferCopy = platformTransfer;
        transferCopy2 = transfer;
        obj = version;
        v62 = versionCopy;
        v63 = sessionCopy;
        v34 = objc_opt_new();
        installingPlanInfos = v33->_installingPlanInfos;
        v33->_installingPlanInfos = v34;

        v68 = 0u;
        v69 = 0u;
        v66 = 0u;
        v67 = 0u;
        v36 = plansCopy;
        v37 = [v36 countByEnumeratingWithState:&v66 objects:v71 count:16];
        if (v37)
        {
          v38 = v37;
          v39 = *v67;
          do
          {
            for (i = 0; i != v38; ++i)
            {
              if (*v67 != v39)
              {
                objc_enumerationMutation(v36);
              }

              v41 = [[SSInstallPlanInformation alloc] initWithPlan:*(*(&v66 + 1) + 8 * i)];
              [(NSMutableArray *)v33->_installingPlanInfos addObject:v41];
            }

            v38 = [v36 countByEnumeratingWithState:&v66 objects:v71 count:16];
          }

          while (v38);
        }

        v33->_backgroundTask = *MEMORY[0x277D767B0];
        v42 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:v33 action:sel_userDidTapCancel];
        cancelButton = v33->_cancelButton;
        v33->_cancelButton = v42;

        v33->_planEnablementState = 0;
        v33->_skipActivatingPane = 1;
        v33->_maybeShowConfirmationCodePane = 1;
        v44 = [MEMORY[0x277CBEB58] set];
        v45 = v33->_displayedDeviceIDs;
        v33->_displayedDeviceIDs = v44;

        v46 = [MEMORY[0x277CBEB58] set];
        cancelledDeviceIDs = v33->_cancelledDeviceIDs;
        v33->_cancelledDeviceIDs = v46;

        v33->_confirmCellularPlanTransfer = transferCopy2;
        v48 = objc_alloc(MEMORY[0x277CC37B0]);
        v49 = MEMORY[0x277D85CD0];
        v50 = [v48 initWithQueue:MEMORY[0x277D85CD0]];
        v51 = v33->_client;
        v33->_client = v50;

        [(CoreTelephonyClient *)v33->_client setDelegate:v33];
        v33->_isForCrossPlatformTransfer = platformTransferCopy;
        v52 = +[TSUserInPurchaseFlowAssertion sharedInstance];
        [v52 assertUserInPurchaseFlowStartOver:0 caller:v33];

        v53 = +[TSCellularPlanManagerCache sharedInstance];
        [v53 setDelegate:v33];

        defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
        [defaultCenter addObserver:v33 selector:sel__onInstallError_ name:@"install.failed" object:0];

        defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
        [defaultCenter2 addObserver:v33 selector:sel__onInstallError_ name:@"transfer.failed" object:0];

        objc_storeStrong(&v33->_sourceOsVersion, obj);
        sessionCopy = v63;
        [(TSCellularPlanActivatingFlow *)v33 _maybeSendTransferUICapability:v63];
        versionCopy = v62;
      }

      self = v33;
      selfCopy2 = self;
    }
  }

  else
  {
    v32 = _TSLogDomain();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      [TSCellularPlanActivatingFlow initWithSelectedPlans:confirmCellularPlanTransfer:isForCrossPlatformTransfer:session:sourceOsVersion:];
    }

    selfCopy2 = 0;
  }

  v56 = *MEMORY[0x277D85DE8];
  return selfCopy2;
}

- (TSCellularPlanActivatingFlow)initWithSkipActivatingPane:(BOOL)pane timerType:(int64_t)type transferBackPlan:(id)plan setupType:(unint64_t)setupType carrierName:(id)name maybeShowConfirmationCodePane:(BOOL)codePane plan:(id)a9 isForCrossPlatformTransfer:(BOOL)self0 session:(id)self1 sourceOsVersion:(id)self2 isLocalConvert:(BOOL)self3
{
  v45[1] = *MEMORY[0x277D85DE8];
  planCopy = plan;
  nameCopy = name;
  v21 = a9;
  sessionCopy = session;
  versionCopy = version;
  v44.receiver = self;
  v44.super_class = TSCellularPlanActivatingFlow;
  v23 = [(TSSIMSetupFlow *)&v44 init];
  v24 = v23;
  if (v23)
  {
    v23->_backgroundTask = *MEMORY[0x277D767B0];
    v25 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:v23 action:sel_userDidTapCancel];
    cancelButton = v24->_cancelButton;
    v24->_cancelButton = v25;

    v24->_planEnablementState = 0;
    v24->_skipActivatingPane = pane;
    objc_storeStrong(&v24->_transferBackOldItem, plan);
    v24->_termsAndConditionsShown = 0;
    v24->_oneTimePasscodePaneShown = 0;
    v24->_maybeShowConfirmationCodePane = codePane;
    v27 = +[TSUserInPurchaseFlowAssertion sharedInstance];
    [v27 assertUserInPurchaseFlowStartOver:0 caller:v24];

    v28 = +[TSCellularPlanManagerCache sharedInstance];
    [v28 setDelegate:v24];

    v29 = objc_alloc(MEMORY[0x277CC37B0]);
    v30 = [v29 initWithQueue:MEMORY[0x277D85CD0]];
    client = v24->_client;
    v24->_client = v30;

    [(CoreTelephonyClient *)v24->_client setDelegate:v24];
    [(TSCellularPlanActivatingFlow *)v24 startTimer:type];
    v24->_planSetupType = setupType;
    v32 = [[SSInstallPlanInformation alloc] initWithPlan:v21];
    v45[0] = v32;
    v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:1];
    v34 = [v33 mutableCopy];
    installingPlanInfos = v24->_installingPlanInfos;
    v24->_installingPlanInfos = v34;

    [(SSInstallPlanInformation *)v32 setInstallationStartTime:CFAbsoluteTimeGetCurrent()];
    v36 = [MEMORY[0x277CBEB58] set];
    displayedDeviceIDs = v24->_displayedDeviceIDs;
    v24->_displayedDeviceIDs = v36;

    [(TSCellularPlanActivatingFlow *)v24 _maybeUpdatePlanNameWithoutPlanID:nameCopy];
    v24->_isForCrossPlatformTransfer = transfer;
    v24->_isLocalConvert = convert;
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v24 selector:sel__onInstallError_ name:@"install.failed" object:0];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:v24 selector:sel__onInstallError_ name:@"transfer.failed" object:0];

    objc_storeStrong(&v24->_sourceOsVersion, version);
    [(TSCellularPlanActivatingFlow *)v24 _maybeSendTransferUICapability:sessionCopy];
  }

  v40 = *MEMORY[0x277D85DE8];
  return v24;
}

- (void)dealloc
{
  [(TSCellularPlanActivatingFlow *)self _stopTimerWithBackgroundTaskState:0];
  v3 = +[TSUserInPurchaseFlowAssertion sharedInstance];
  [v3 deassertUserInPurchaseFlowWithForce:0 caller:self];

  v4 = +[TSCellularPlanManagerCache sharedInstance];
  [v4 resetDelegate:self];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v6.receiver = self;
  v6.super_class = TSCellularPlanActivatingFlow;
  [(TSCellularPlanActivatingFlow *)&v6 dealloc];
}

- (void)startTimer:(int64_t)timer
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = 180.0;
  if (timer)
  {
    if (timer == 2)
    {
      goto LABEL_10;
    }

    if (timer == 1)
    {
      v4 = 120.0;
      v5 = 2;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 1;
  }

  v6 = _TSLogDomain();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v16 = v4;
    v17 = 2080;
    v18 = "[TSCellularPlanActivatingFlow startTimer:]";
    _os_log_impl(&dword_262AA8000, v6, OS_LOG_TYPE_DEFAULT, "start timer: %f @%s", buf, 0x16u);
  }

  self->_timeoutReason = 0;
  [(NSTimer *)self->_activatingTimer invalidate];
  v7 = MEMORY[0x277CBEBB8];
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:{v5, @"timeoutReason"}];
  v14 = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  v10 = [v7 scheduledTimerWithTimeInterval:self target:sel__handleActivatingExpiry selector:v9 userInfo:0 repeats:v4];
  activatingTimer = self->_activatingTimer;
  self->_activatingTimer = v10;

  [(TSCellularPlanActivatingFlow *)self _startBackgroundTask];
LABEL_10:
  v12 = *MEMORY[0x277D85DE8];
}

- (void)_onInstallError:(id)error
{
  v44 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  object = [errorCopy object];
  v6 = _TSLogDomain();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    name = [errorCopy name];
    *buf = 138412802;
    v39 = name;
    v40 = 2112;
    v41 = object;
    v42 = 2080;
    v43 = "[TSCellularPlanActivatingFlow _onInstallError:]";
    _os_log_impl(&dword_262AA8000, v6, OS_LOG_TYPE_DEFAULT, "%@ failed : %@ @%s", buf, 0x20u);
  }

  planError = [(TSCellularPlanActivatingFlow *)self planError];

  if (planError)
  {
    v9 = _TSLogDomain();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v39 = "[TSCellularPlanActivatingFlow _onInstallError:]";
      _os_log_impl(&dword_262AA8000, v9, OS_LOG_TYPE_DEFAULT, "error already set, ignore @%s", buf, 0xCu);
    }

    goto LABEL_32;
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v10 = self->_installingPlanInfos;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (!v11)
  {
    goto LABEL_15;
  }

  v12 = v11;
  v13 = *v33;
  while (2)
  {
    for (i = 0; i != v12; ++i)
    {
      if (*v33 != v13)
      {
        objc_enumerationMutation(v10);
      }

      if (!isTerminalState([*(*(&v32 + 1) + 8 * i) status]))
      {

        navigationController = [(TSSIMSetupFlow *)self navigationController];
        visibleViewController = [navigationController visibleViewController];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          code = [object code];

          if (code != 4097)
          {
            goto LABEL_24;
          }
        }

        else
        {
          navigationController2 = [(TSSIMSetupFlow *)self navigationController];
          visibleViewController2 = [navigationController2 visibleViewController];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {

            goto LABEL_23;
          }

          code2 = [object code];

          if (code2 != 4097)
          {
LABEL_24:
            v30 = 0u;
            v31 = 0u;
            v28 = 0u;
            v29 = 0u;
            v21 = self->_installingPlanInfos;
            v22 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v28 objects:v36 count:16];
            if (v22)
            {
              v23 = v22;
              v24 = *v29;
              do
              {
                for (j = 0; j != v23; ++j)
                {
                  if (*v29 != v24)
                  {
                    objc_enumerationMutation(v21);
                  }

                  v26 = *(*(&v28 + 1) + 8 * j);
                  [v26 setInstallError:{object, v28}];
                  [v26 setStatus:5];
                }

                v23 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v28 objects:v36 count:16];
              }

              while (v23);
            }

            [(TSCellularPlanActivatingFlow *)self _maybeMoveToNextItem];
            goto LABEL_32;
          }
        }

        [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CF9680] code:4097 userInfo:0];
        object = navigationController = object;
LABEL_23:

        goto LABEL_24;
      }
    }

    v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v32 objects:v37 count:16];
    if (v12)
    {
      continue;
    }

    break;
  }

LABEL_15:

LABEL_32:
  v27 = *MEMORY[0x277D85DE8];
}

- (void)_maybeReplyFirstViewControllerCallbackWithViewController:(id)controller
{
  controllerCopy = controller;
  if (self->_firstViewControllerCallback)
  {
    [(TSCellularPlanActivatingFlow *)self setTopViewController:controllerCopy];
    v5 = MEMORY[0x2667315D0](self->_firstViewControllerCallback);
    firstViewControllerCallback = self->_firstViewControllerCallback;
    self->_firstViewControllerCallback = 0;

    (*(v5 + 16))(v5, controllerCopy);
  }

  else
  {
    v5 = _TSLogDomain();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [(TSCellularPlanActivatingFlow *)self _maybeReplyFirstViewControllerCallbackWithViewController:controllerCopy, v5];
    }
  }
}

- (void)_maybePresentFirstViewController:(id)controller
{
  controllerCopy = controller;
  v5 = controllerCopy;
  if (controllerCopy)
  {
    [controllerCopy setDelegate:self];
    objc_initWeak(&location, self);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __65__TSCellularPlanActivatingFlow__maybePresentFirstViewController___block_invoke;
    v7[3] = &unk_279B443B0;
    objc_copyWeak(&v10, &location);
    v8 = v5;
    selfCopy = self;
    [(TSSIMSetupFlow *)self maybePrepareNextDisplayViewController:v8 completion:v7];

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }

  else
  {
    v6 = _TSLogDomain();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [TSCellularPlanActivatingFlow _maybePresentFirstViewController:];
    }

    [(TSCellularPlanActivatingFlow *)self _maybeReplyFirstViewControllerCallbackWithViewController:0];
  }
}

void __65__TSCellularPlanActivatingFlow__maybePresentFirstViewController___block_invoke(uint64_t a1, void *a2)
{
  v34 = *MEMORY[0x277D85DE8];
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
        *buf = 138412802;
        v25 = objc_opt_class();
        v26 = 2048;
        v27 = v3;
        v28 = 2080;
        v29 = "[TSCellularPlanActivatingFlow _maybePresentFirstViewController:]_block_invoke";
        _os_log_impl(&dword_262AA8000, v6, OS_LOG_TYPE_DEFAULT, "present first view : %@(%p) @%s", buf, 0x20u);
      }

      [v5 _maybeReplyFirstViewControllerCallbackWithViewController:v3];
    }

    else if (([WeakRetained _areAllPlansInPostInstallOrTerminalState] & 1) != 0 || (v7 = *(a1 + 32), objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      if (([v5 _areAllPlansInTerminalState] & 1) != 0 || (v8 = *(a1 + 32), objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        v9 = [v5 nextViewControllerFrom:*(a1 + 32)];
        v10 = _TSLogDomain();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v11 = *(a1 + 32);
          v12 = objc_opt_class();
          v13 = *(a1 + 32);
          *buf = 138413314;
          v25 = v12;
          v26 = 2048;
          v27 = v13;
          v28 = 2112;
          v29 = objc_opt_class();
          v30 = 2048;
          v31 = v9;
          v32 = 2080;
          v33 = "[TSCellularPlanActivatingFlow _maybePresentFirstViewController:]_block_invoke";
          _os_log_impl(&dword_262AA8000, v10, OS_LOG_TYPE_DEFAULT, "cur : %@(%p), next: %@(%p) @%s", buf, 0x34u);
        }

        if (v9)
        {
          v14 = *(a1 + 32);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v16 = *(a1 + 40);
            v15 = (a1 + 40);
            v17 = [*(v15 - 1) selectedItems];
            [v16 _maybeUpdateUserEnabledPlans:v17];

            objc_initWeak(buf, *v15);
            v18 = +[TSCellularPlanManagerCache sharedInstance];
            v21[0] = MEMORY[0x277D85DD0];
            v21[1] = 3221225472;
            v21[2] = __65__TSCellularPlanActivatingFlow__maybePresentFirstViewController___block_invoke_53;
            v21[3] = &unk_279B44388;
            objc_copyWeak(&v23, buf);
            v22 = v9;
            [v18 planItemsWithCompletion:v21];

            objc_destroyWeak(&v23);
            objc_destroyWeak(buf);
          }

          else
          {
            [v5 _maybePresentFirstViewController:v9];
          }
        }

        else
        {
          v19 = _TSLogDomain();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            __65__TSCellularPlanActivatingFlow__maybePresentFirstViewController___block_invoke_cold_1();
          }

          [v5 _maybeReplyFirstViewControllerCallbackWithViewController:0];
        }
      }
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __65__TSCellularPlanActivatingFlow__maybePresentFirstViewController___block_invoke_53(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained planItemsUpdated:v3 planListError:0];

  v5 = objc_loadWeakRetained((a1 + 40));
  [v5 _maybePresentFirstViewController:*(a1 + 32)];
}

- (void)_maybeMoveToNextItem
{
  v11 = *MEMORY[0x277D85DE8];
  websheetFlow = [(TSCellularPlanActivatingFlow *)self websheetFlow];

  if (websheetFlow)
  {
    v4 = _TSLogDomain();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v10 = "[TSCellularPlanActivatingFlow _maybeMoveToNextItem]";
      _os_log_impl(&dword_262AA8000, v4, OS_LOG_TYPE_INFO, "[I] websheet in presentation @%s", buf, 0xCu);
    }
  }

  else
  {
    planEnablementState = self->_planEnablementState;
    if (planEnablementState != 1)
    {
      if (planEnablementState)
      {
        if (![(TSCellularPlanActivatingFlow *)self consolidatedActivatingState])
        {
          goto LABEL_5;
        }
      }

      else
      {
        if (![(TSCellularPlanActivatingFlow *)self _areAllPlansInPostInstallOrTerminalState])
        {
          goto LABEL_5;
        }

        self->_planEnablementState = 1;
      }

      objc_initWeak(buf, self);
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __52__TSCellularPlanActivatingFlow__maybeMoveToNextItem__block_invoke;
      v7[3] = &unk_279B443D8;
      objc_copyWeak(&v8, buf);
      v7[4] = self;
      [(TSCellularPlanActivatingFlow *)self _maybeDismissAlert:v7];
      objc_destroyWeak(&v8);
      objc_destroyWeak(buf);
      goto LABEL_5;
    }

    v4 = _TSLogDomain();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v10 = "[TSCellularPlanActivatingFlow _maybeMoveToNextItem]";
      _os_log_impl(&dword_262AA8000, v4, OS_LOG_TYPE_INFO, "[I] enablement in presentation @%s", buf, 0xCu);
    }
  }

LABEL_5:
  v5 = *MEMORY[0x277D85DE8];
}

void __52__TSCellularPlanActivatingFlow__maybeMoveToNextItem__block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __52__TSCellularPlanActivatingFlow__maybeMoveToNextItem__block_invoke_2;
  v2[3] = &unk_279B443D8;
  objc_copyWeak(&v3, (a1 + 40));
  v2[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], v2);
  objc_destroyWeak(&v3);
}

void __52__TSCellularPlanActivatingFlow__maybeMoveToNextItem__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained firstViewControllerCallback];

  v4 = objc_loadWeakRetained((a1 + 40));
  v5 = v4;
  if (!v3)
  {
    v7 = [v4 topViewController];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
LABEL_6:

LABEL_7:
      v31 = objc_loadWeakRetained((a1 + 40));
      v10 = [v31 topViewController];
      [v31 viewControllerDidComplete:v10];

      goto LABEL_8;
    }

    v8 = objc_loadWeakRetained((a1 + 40));
    v9 = [v8 topViewController];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {

      goto LABEL_6;
    }

    v11 = objc_loadWeakRetained((a1 + 40));
    v12 = [v11 topViewController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      goto LABEL_7;
    }

    v14 = objc_loadWeakRetained((a1 + 40));
    v15 = [v14 topViewController];
    objc_opt_class();
    v16 = objc_opt_isKindOfClass();

    if ((v16 & 1) == 0)
    {
      return;
    }

    v17 = objc_loadWeakRetained((a1 + 40));
    v18 = [v17 topViewController];

    v19 = [v18 selectedItems];
    if ([v19 count] == 1)
    {
      v20 = objc_loadWeakRetained((a1 + 40));
      v21 = [v20 installingPlanInfos];
      if ([v21 count] == 1)
      {
        v22 = objc_loadWeakRetained((a1 + 40));
        v32 = [v22 installingPlanInfos];
        v30 = [v32 objectAtIndexedSubscript:0];
        v23 = [v30 targetIccid];
        v24 = [v18 selectedItems];
        v25 = [v24 objectAtIndexedSubscript:0];
        v26 = [v25 iccid];
        if ([v23 isEqualToString:v26])
        {
          v28 = v22;
          v27 = objc_loadWeakRetained((a1 + 40));
          v29 = [v27 consolidatedActivatingState];

          if (v29 == 1)
          {
            v33.receiver = *(a1 + 32);
            v33.super_class = TSCellularPlanActivatingFlow;
            objc_msgSendSuper2(&v33, sel_viewControllerDidComplete_, v18);
          }

          goto LABEL_21;
        }
      }
    }

LABEL_21:
    return;
  }

  v31 = [v4 _firstViewController];

  v6 = objc_loadWeakRetained((a1 + 40));
  [v6 _maybePresentFirstViewController:v31];

LABEL_8:
}

- (id)_firstViewController
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  planEnablementState = self->_planEnablementState;
  if (planEnablementState == 1)
  {
    if (![(NSString *)self->_iccidToEnable length])
    {
      v4 = [[TSTravelSimTypeSelectionViewController alloc] initWithPlans:self->_installingPlanInfos];
      goto LABEL_10;
    }

    if ([(NSMutableArray *)self->_installingPlanInfos count]== 1)
    {
      v5 = [TSEnableTableViewController alloc];
      v6 = [(NSMutableArray *)self->_installingPlanInfos objectAtIndexedSubscript:0];
      v7 = [(TSEnableTableViewController *)v5 initWithEnablingPlanInfo:v6];

      goto LABEL_15;
    }

    v11 = _TSLogDomain();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(TSCellularPlanActivatingFlow *)&self->_installingPlanInfos _firstViewController];
    }
  }

  else
  {
    if (!planEnablementState)
    {
      v4 = [[SSCellularSetupMultiSIMActivatingViewController alloc] initWithPlanInfos:self->_installingPlanInfos];
LABEL_10:
      v7 = v4;
      goto LABEL_15;
    }

    if ([(TSCellularPlanActivatingFlow *)self _areAllPlansInTerminalState])
    {
      v8 = [TSTravelSimCapabilitySelectionViewController alloc];
      installingPlanInfos = self->_installingPlanInfos;
      v10 = [(NSMutableArray *)installingPlanInfos objectAtIndexedSubscript:0];
      v7 = -[TSTravelSimCapabilitySelectionViewController initWithPlans:isSelectedAsTravelSIM:](v8, "initWithPlans:isSelectedAsTravelSIM:", installingPlanInfos, [v10 useGMVNOAsTravelSIM]);

      [(TSCellularPlanActivatingFlow *)self _maybeSendTransferResults];
      goto LABEL_15;
    }
  }

  v7 = 0;
LABEL_15:

  return v7;
}

- (void)_handleActivatingExpiry
{
  v33 = *MEMORY[0x277D85DE8];
  activatingTimer = self->_activatingTimer;
  if (activatingTimer)
  {
    userInfo = [(NSTimer *)activatingTimer userInfo];
    v5 = [userInfo objectForKey:@"timeoutReason"];
    self->_timeoutReason = [v5 integerValue];
  }

  v6 = _TSLogDomain();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    if (self->_timeoutReason == 1)
    {
      v7 = 180;
    }

    else
    {
      v7 = 120;
    }

    *buf = 67109378;
    v30 = v7;
    v31 = 2080;
    v32 = "[TSCellularPlanActivatingFlow _handleActivatingExpiry]";
    _os_log_impl(&dword_262AA8000, v6, OS_LOG_TYPE_DEFAULT, "handle %ds activating timer expired @%s", buf, 0x12u);
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = self->_installingPlanInfos;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v24;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v23 + 1) + 8 * i) maybeUpdateTimeoutStatus];
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v10);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v13 = self->_userEnabledPlanInfos;
  v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v20;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v20 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [*(*(&v19 + 1) + 8 * j) maybeUpdateTimeoutStatus];
      }

      v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v15);
  }

  [(TSCellularPlanActivatingFlow *)self _stopBackgroundTask];
  [(TSCellularPlanActivatingFlow *)self _maybeMoveToNextItem];
  v18 = *MEMORY[0x277D85DE8];
}

- (void)_stopTimerWithBackgroundTaskState:(BOOL)state
{
  v5 = _TSLogDomain();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [TSCellularPlanActivatingFlow _stopTimerWithBackgroundTaskState:v5];
  }

  if (!state)
  {
    [(TSCellularPlanActivatingFlow *)self _stopBackgroundTask];
  }

  [(NSTimer *)self->_activatingTimer invalidate];
  activatingTimer = self->_activatingTimer;
  self->_activatingTimer = 0;
}

- (void)_startBackgroundTask
{
  if (self->_backgroundTask == *MEMORY[0x277D767B0])
  {
    objc_initWeak(&location, self);
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    v4 = MEMORY[0x277D85DD0];
    v5 = 3221225472;
    v6 = __52__TSCellularPlanActivatingFlow__startBackgroundTask__block_invoke;
    v7 = &unk_279B44400;
    objc_copyWeak(&v8, &location);
    self->_backgroundTask = [mEMORY[0x277D75128] beginBackgroundTaskWithExpirationHandler:&v4];

    [(TSSIMSetupFlow *)self setIdleTimerDisabled:1, v4, v5, v6, v7];
    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

void __52__TSCellularPlanActivatingFlow__startBackgroundTask__block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = _TSLogDomain();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[TSCellularPlanActivatingFlow _startBackgroundTask]_block_invoke";
    _os_log_impl(&dword_262AA8000, v2, OS_LOG_TYPE_DEFAULT, "background task expired @%s", &v5, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _stopBackgroundTask];

  v4 = *MEMORY[0x277D85DE8];
}

- (void)_stopBackgroundTask
{
  v3 = *MEMORY[0x277D767B0];
  if (self->_backgroundTask != *MEMORY[0x277D767B0])
  {
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    [mEMORY[0x277D75128] endBackgroundTask:self->_backgroundTask];

    self->_backgroundTask = v3;
  }

  [(TSSIMSetupFlow *)self setIdleTimerDisabled:0];
}

- (void)_maybeDismissAlert:(id)alert
{
  alertCopy = alert;
  navigationController = [(TSSIMSetupFlow *)self navigationController];
  topViewController = [navigationController topViewController];
  presentedViewController = [topViewController presentedViewController];

  if (presentedViewController)
  {
    navigationController2 = [(TSSIMSetupFlow *)self navigationController];
    topViewController2 = [navigationController2 topViewController];
    presentedViewController2 = [topViewController2 presentedViewController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      navigationController3 = [(TSSIMSetupFlow *)self navigationController];
      topViewController3 = [navigationController3 topViewController];
      presentedViewController3 = [topViewController3 presentedViewController];

      viewControllers = [presentedViewController3 viewControllers];
      firstObject = [viewControllers firstObject];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        alertCopy[2]();

        goto LABEL_8;
      }
    }

    navigationController4 = [(TSSIMSetupFlow *)self navigationController];
    topViewController4 = [navigationController4 topViewController];
    presentedViewController4 = [topViewController4 presentedViewController];
    [presentedViewController4 dismissViewControllerAnimated:1 completion:alertCopy];
  }

  else
  {
    alertCopy[2]();
  }

LABEL_8:
}

- (void)_submitCellularPlanSetupDetails
{
  v45 = *MEMORY[0x277D85DE8];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = self->_installingPlanInfos;
  v3 = [(NSMutableArray *)obj countByEnumeratingWithState:&v32 objects:v44 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v33;
    *&v4 = 134218754;
    v30 = v4;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v33 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v32 + 1) + 8 * i);
        [v8 installationEndTime];
        v10 = v9;
        [v8 installationStartTime];
        v12 = v11;
        if ([v8 activatingState] == 3)
        {
          v13 = 3;
        }

        else if ([v8 activatingState] == 1)
        {
          v13 = 1;
        }

        else
        {
          v13 = 2 * ([v8 activatingState] == 2);
        }

        planSetupType = self->_planSetupType;
        if (!planSetupType)
        {
          displayPlan = [v8 displayPlan];
          plan = [displayPlan plan];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            v18 = 7;
          }

          else
          {
            v18 = 1;
          }

          displayPlan2 = [v8 displayPlan];
          plan2 = [displayPlan2 plan];
          objc_opt_class();
          v21 = objc_opt_isKindOfClass();

          if (v21)
          {
            planSetupType = 3;
          }

          else
          {
            planSetupType = v18;
          }
        }

        v22 = v10 - v12;
        v23 = _TSLogDomain();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v30;
          v37 = planSetupType;
          v38 = 2048;
          v39 = v13;
          v40 = 2048;
          v41 = v22;
          v42 = 2080;
          v43 = "[TSCellularPlanActivatingFlow _submitCellularPlanSetupDetails]";
          _os_log_impl(&dword_262AA8000, v23, OS_LOG_TYPE_DEFAULT, "Time to complete activating for plan type %tu with result %tu, duration: %f  @%s", buf, 0x2Au);
        }

        v24 = +[TSCoreTelephonyClientCache sharedInstance];
        v25 = objc_alloc(MEMORY[0x277CC36F8]);
        v26 = +[TSUtilities inBuddy];
        carrierName = [v8 carrierName];
        v28 = [v25 initWithInBuddy:v26 carrierName:carrierName setupType:planSetupType setupResult:v13 duration:v22];
        [v24 submitPlanSetupDetails:v28];
      }

      v5 = [(NSMutableArray *)obj countByEnumeratingWithState:&v32 objects:v44 count:16];
    }

    while (v5);
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (BOOL)_requireSyncUpTransferResultsWithSource
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = _TSLogDomain();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    sourceOsVersion = self->_sourceOsVersion;
    *buf = 138412546;
    v20 = sourceOsVersion;
    v21 = 2080;
    v22 = "[TSCellularPlanActivatingFlow _requireSyncUpTransferResultsWithSource]";
    _os_log_impl(&dword_262AA8000, v3, OS_LOG_TYPE_DEFAULT, "src.ver:%@ @%s", buf, 0x16u);
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_installingPlanInfos;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        displayPlan = [*(*(&v14 + 1) + 8 * i) displayPlan];
        plan = [displayPlan plan];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          LOBYTE(v6) = 1;
          goto LABEL_13;
        }
      }

      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  v12 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)_maybeSendTransferUICapability:(id)capability
{
  v13 = *MEMORY[0x277D85DE8];
  capabilityCopy = capability;
  if (capabilityCopy && [(TSCellularPlanActivatingFlow *)self _requireSyncUpTransferResultsWithSource])
  {
    v5 = [objc_alloc(MEMORY[0x277D02880]) initWithTemplate:capabilityCopy];
    messageSession = self->_messageSession;
    self->_messageSession = v5;

    [(CUMessageSession *)self->_messageSession activate];
    v7 = _TSLogDomain();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412546;
      v10 = &unk_287583E98;
      v11 = 2080;
      v12 = "[TSCellularPlanActivatingFlow _maybeSendTransferUICapability:]";
      _os_log_impl(&dword_262AA8000, v7, OS_LOG_TYPE_DEFAULT, "send transfer ui capability : %@ @%s", &v9, 0x16u);
    }

    [(CUMessageSession *)self->_messageSession sendRequestID:@"TransferUICapability" options:0 request:&unk_287583E98 responseHandler:&__block_literal_global_1];
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __63__TSCellularPlanActivatingFlow__maybeSendTransferUICapability___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a4;
  v5 = _TSLogDomain();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412546;
    v8 = v4;
    v9 = 2080;
    v10 = "[TSCellularPlanActivatingFlow _maybeSendTransferUICapability:]_block_invoke";
    _os_log_impl(&dword_262AA8000, v5, OS_LOG_TYPE_DEFAULT, "source ui capability : %@ @%s", &v7, 0x16u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_maybeSendTransferResults
{
  v26 = *MEMORY[0x277D85DE8];
  if (self->_messageSession)
  {
    v17 = 320;
    v3 = objc_opt_new();
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    selfCopy = self;
    v4 = self->_installingPlanInfos;
    v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v19 objects:v25 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v20;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v20 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v19 + 1) + 8 * i);
          displayPlan = [v9 displayPlan];
          plan = [displayPlan plan];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v9, "status")}];
            identifier = [v9 identifier];
            [v3 setObject:v13 forKeyedSubscript:identifier];
          }
        }

        v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v19 objects:v25 count:16];
      }

      while (v6);
    }

    v23 = @"Results";
    v24 = v3;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    [*(&selfCopy->super.super.isa + v17) sendRequestID:@"TransferResults" options:0 request:v15 responseHandler:&__block_literal_global_85];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (id)_findPlanInfoWithTargetIccid:(id)iccid
{
  iccidCopy = iccid;
  v5 = iccidCopy;
  if (iccidCopy && [iccidCopy length])
  {
    v6 = findPlanInfoWithTargetIccid(self->_installingPlanInfos, v5);
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = findPlanInfoWithTargetIccid(self->_userEnabledPlanInfos, v5);
    }

    v9 = v8;
  }

  else
  {
    v9 = findPlanInfoWithoutTargetIccid(self->_installingPlanInfos);
  }

  return v9;
}

- (id)_findPlanInfoWithTargetIccidHash:(id)hash
{
  hashCopy = hash;
  v5 = hashCopy;
  if (hashCopy && [hashCopy length])
  {
    v6 = findPlanInfoWithTargetIccidHash(self->_installingPlanInfos, v5);
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = findPlanInfoWithTargetIccidHash(self->_userEnabledPlanInfos, v5);
    }

    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_findPlanInfoWithPlanID:(id)d
{
  dCopy = d;
  v5 = dCopy;
  if (dCopy && [dCopy length] && !self->_isLocalConvert)
  {
    v8 = findPlanInfoWithPlanID(self->_installingPlanInfos, v5);
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = findPlanInfoWithPlanID(self->_userEnabledPlanInfos, v5);
    }

    v6 = v10;
  }

  else
  {
    v6 = [(NSMutableArray *)self->_installingPlanInfos objectAtIndexedSubscript:0];
  }

  return v6;
}

- (id)_findPlanInfoWithPlanStatus:(unint64_t)status
{
  v5 = findPlanInfoWithPlanStatus(self->_installingPlanInfos, status);
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = findPlanInfoWithPlanStatus(self->_userEnabledPlanInfos, status);
  }

  v8 = v7;

  return v8;
}

- (void)_maybeStartTimerForNewlyInstalledPlan:(id)plan newStatus:(unint64_t)status
{
  v21 = *MEMORY[0x277D85DE8];
  planCopy = plan;
  if (planCopy)
  {
    if (isTerminalState(status))
    {
      [planCopy installationEndTime];
      if (v7 <= 0.0)
      {
        [planCopy setInstallationEndTime:CFAbsoluteTimeGetCurrent()];
      }
    }

    else if (status <= 0xD && ((1 << status) & 0x2286) != 0)
    {
      [planCopy installationStartTime];
      if (v8 <= 0.0)
      {
        [planCopy setInstallationStartTime:CFAbsoluteTimeGetCurrent()];
      }

      displayPlan = [planCopy displayPlan];
      plan = [displayPlan plan];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v12 = status != 1;
        objc_initWeak(&location, self);
        if (self->_isForCrossPlatformTransfer)
        {
          v13 = _TSLogDomain();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            v20 = "[TSCellularPlanActivatingFlow _maybeStartTimerForNewlyInstalledPlan:newStatus:]";
            _os_log_impl(&dword_262AA8000, v13, OS_LOG_TYPE_DEFAULT, "cross platform transfer case, dont show Source Device Consent Alert @%s", buf, 0xCu);
          }
        }

        else
        {
          v15[0] = MEMORY[0x277D85DD0];
          v15[1] = 3221225472;
          v15[2] = __80__TSCellularPlanActivatingFlow__maybeStartTimerForNewlyInstalledPlan_newStatus___block_invoke;
          v15[3] = &unk_279B443D8;
          objc_copyWeak(&v17, &location);
          v16 = planCopy;
          [(TSCellularPlanActivatingFlow *)self _maybeDismissAlert:v15];

          objc_destroyWeak(&v17);
        }

        objc_destroyWeak(&location);
      }

      else
      {
        v12 = 1;
      }

      [(TSCellularPlanActivatingFlow *)self startTimer:v12];
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __80__TSCellularPlanActivatingFlow__maybeStartTimerForNewlyInstalledPlan_newStatus___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [*(a1 + 32) displayPlan];
  v3 = [v2 plan];
  [WeakRetained _maybeDisplaySourceDeviceConsentAlert:v3];
}

- (void)_maybeDisplaySourceDeviceConsentAlert:(id)alert
{
  v57 = *MEMORY[0x277D85DE8];
  alertCopy = alert;
  if (![(NSMutableArray *)self->_installingPlanInfos count])
  {
    goto LABEL_12;
  }

  deviceID = [alertCopy deviceID];
  if (deviceID)
  {
    v6 = deviceID;
    deviceID2 = [alertCopy deviceID];
    isVinylCapable = [deviceID2 isVinylCapable];

    if (isVinylCapable)
    {
      displayedDeviceIDs = self->_displayedDeviceIDs;
      deviceID3 = [alertCopy deviceID];
      LODWORD(displayedDeviceIDs) = [(NSMutableSet *)displayedDeviceIDs containsObject:deviceID3];

      if (displayedDeviceIDs)
      {
        cancelledDeviceIDs = self->_cancelledDeviceIDs;
        deviceID4 = [alertCopy deviceID];
        LODWORD(cancelledDeviceIDs) = [(NSMutableSet *)cancelledDeviceIDs containsObject:deviceID4];

        if (cancelledDeviceIDs)
        {
          v13 = _TSLogDomain();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            v56 = "[TSCellularPlanActivatingFlow _maybeDisplaySourceDeviceConsentAlert:]";
            _os_log_impl(&dword_262AA8000, v13, OS_LOG_TYPE_DEFAULT, "Device is already cancelled transfer @%s", buf, 0xCu);
          }

          [(TSCellularPlanActivatingFlow *)self _cancelTransferringPlan:alertCopy];
        }

        goto LABEL_12;
      }

      v16 = self->_displayedDeviceIDs;
      deviceID5 = [alertCopy deviceID];
      [(NSMutableSet *)v16 addObject:deviceID5];

      v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v19 = [v18 localizedStringForKey:@"TRANSFER_TARGET_TITLE" value:&stru_28753DF48 table:@"Localizable"];

      deviceID6 = [alertCopy deviceID];
      modelName = [deviceID6 modelName];
      v22 = [modelName length];

      if (v22)
      {
        v23 = MEMORY[0x277CCACA8];
        v24 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v25 = [v24 localizedStringForKey:@"TRANSFER_TARGET_TITLE_%@" value:&stru_28753DF48 table:@"Localizable"];
        deviceID7 = [alertCopy deviceID];
        modelName2 = [deviceID7 modelName];
        v28 = [v23 stringWithFormat:v25, modelName2];

        v19 = v28;
      }

      deviceID8 = [alertCopy deviceID];
      v30 = [(TSCellularPlanActivatingFlow *)self _collectAllPhoneNumbersForDevice:deviceID8];

      LODWORD(deviceID8) = self->_confirmCellularPlanTransfer;
      v31 = +[TSUtilities isPad];
      if (deviceID8 == 1)
      {
        if (v31)
        {
          v32 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v33 = v32;
          v34 = @"TRANSFER_REQUEST_CONFIRMATION_CLOUD";
LABEL_20:
          v35 = [v32 localizedStringForKey:v34 value:&stru_28753DF48 table:@"Localizable"];
LABEL_24:

          v39 = [TSUtilities appendLeftToRightMark:v35];

          v40 = [MEMORY[0x277D75110] alertControllerWithTitle:v19 message:v39 preferredStyle:1];
          confirmCellularPlanTransfer = self->_confirmCellularPlanTransfer;
          v42 = MEMORY[0x277D750F8];
          v43 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v44 = v43;
          if (confirmCellularPlanTransfer)
          {
            v45 = [v43 localizedStringForKey:@"CANCEL" value:&stru_28753DF48 table:@"Localizable"];
            v53[0] = MEMORY[0x277D85DD0];
            v53[1] = 3221225472;
            v53[2] = __70__TSCellularPlanActivatingFlow__maybeDisplaySourceDeviceConsentAlert___block_invoke;
            v53[3] = &unk_279B44448;
            v53[4] = self;
            v54 = alertCopy;
            v46 = [v42 actionWithTitle:v45 style:1 handler:v53];
            [v40 addAction:v46];
          }

          else
          {
            v47 = [v43 localizedStringForKey:@"OK" value:&stru_28753DF48 table:@"Localizable"];
            v48 = [v42 actionWithTitle:v47 style:0 handler:&__block_literal_global_122];
            [v40 addAction:v48];
          }

          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __70__TSCellularPlanActivatingFlow__maybeDisplaySourceDeviceConsentAlert___block_invoke_3;
          block[3] = &unk_279B44490;
          block[4] = self;
          v52 = v40;
          v49 = v40;
          dispatch_async(MEMORY[0x277D85CD0], block);

          goto LABEL_12;
        }

        v36 = MEMORY[0x277CCACA8];
        v33 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v37 = [v33 localizedStringForKey:@"TRANSFER_REQUEST_CONFIRMATION_CLOUD_%@_%@" value:&stru_28753DF48 table:@"Localizable"];
        [v36 stringWithFormat:v37, v30, v30];
      }

      else
      {
        if (v31)
        {
          v32 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v33 = v32;
          v34 = @"TRANSFER_REQUEST_CONFIRMATION";
          goto LABEL_20;
        }

        v38 = MEMORY[0x277CCACA8];
        v33 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v37 = [v33 localizedStringForKey:@"TRANSFER_REQUEST_CONFIRMATION_%@" value:&stru_28753DF48 table:@"Localizable"];
        [v38 stringWithFormat:v37, v30, v50];
      }
      v35 = ;

      goto LABEL_24;
    }
  }

  v14 = _TSLogDomain();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v56 = "[TSCellularPlanActivatingFlow _maybeDisplaySourceDeviceConsentAlert:]";
    _os_log_impl(&dword_262AA8000, v14, OS_LOG_TYPE_DEFAULT, "Not showing confirmation alert for non vinyl source device @%s", buf, 0xCu);
  }

LABEL_12:
  v15 = *MEMORY[0x277D85DE8];
}

void __70__TSCellularPlanActivatingFlow__maybeDisplaySourceDeviceConsentAlert___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) navigationController];
  [v2 presentViewController:*(a1 + 40) animated:1 completion:0];
}

- (void)_cancelTransferringPlan:(id)plan
{
  v16 = *MEMORY[0x277D85DE8];
  planCopy = plan;
  v5 = _TSLogDomain();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    deviceID = [planCopy deviceID];
    v12 = 138412546;
    v13 = deviceID;
    v14 = 2080;
    v15 = "[TSCellularPlanActivatingFlow _cancelTransferringPlan:]";
    _os_log_impl(&dword_262AA8000, v5, OS_LOG_TYPE_DEFAULT, "Cancel transfer plan(s) on device id: %@ @%s", &v12, 0x16u);
  }

  cancelledDeviceIDs = self->_cancelledDeviceIDs;
  deviceID2 = [planCopy deviceID];
  [(NSMutableSet *)cancelledDeviceIDs addObject:deviceID2];

  v9 = +[TSCoreTelephonyClientCache sharedInstance];
  deviceID3 = [planCopy deviceID];
  [v9 cancelTransferPlan:planCopy fromDevice:deviceID3 completionHandler:&__block_literal_global_125];

  v11 = *MEMORY[0x277D85DE8];
}

void __56__TSCellularPlanActivatingFlow__cancelTransferringPlan___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = _TSLogDomain();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __56__TSCellularPlanActivatingFlow__cancelTransferringPlan___block_invoke_cold_1();
    }
  }
}

- (UINavigationController)websheetRootViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_websheetRootViewController);

  return WeakRetained;
}

- (TSTermsAndConditionsViewController)termsAndConditionsViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_termsAndConditionsViewController);

  return WeakRetained;
}

- (TSTransferOneTimeCodeViewController)oneTimeCodeViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_oneTimeCodeViewController);

  return WeakRetained;
}

- (TSBuddyMLViewController)buddyMLViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_buddyMLViewController);

  return WeakRetained;
}

- (UIViewController)presentedViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentedViewController);

  return WeakRetained;
}

- (id)firstViewController
{
  v2 = _TSLogDomain();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    [TSCellularPlanActivatingFlow(Override) firstViewController];
  }

  return 0;
}

- (void)firstViewController:(id)controller
{
  v16 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  if (controllerCopy)
  {
    v5 = _os_feature_enabled_impl();
    v6 = _TSLogDomain();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      if (v7)
      {
        v14 = 136315138;
        v15 = "[TSCellularPlanActivatingFlow(Override) firstViewController:]";
        _os_log_impl(&dword_262AA8000, v6, OS_LOG_TYPE_DEFAULT, "cache firstViewController callback @%s", &v14, 0xCu);
      }

      v8 = MEMORY[0x2667315D0](controllerCopy);
      firstViewControllerCallback = self->_firstViewControllerCallback;
      self->_firstViewControllerCallback = v8;

      _firstViewController = [(TSCellularPlanActivatingFlow *)self _firstViewController];
      [(TSCellularPlanActivatingFlow *)self _maybePresentFirstViewController:_firstViewController];

      v11 = +[TSCellularPlanManagerCache sharedInstance];
      planItems = [v11 planItems];
      [(TSCellularPlanActivatingFlow *)self planItemsUpdated:planItems planListError:0];
    }

    else
    {
      if (v7)
      {
        v14 = 136315138;
        v15 = "[TSCellularPlanActivatingFlow(Override) firstViewController:]";
        _os_log_impl(&dword_262AA8000, v6, OS_LOG_TYPE_DEFAULT, "SIMSetupSupport/ProvisioningCompletion is disabled @%s", &v14, 0xCu);
      }

      controllerCopy[2](controllerCopy, 0);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (id)nextViewControllerFrom:(id)from
{
  v38[1] = *MEMORY[0x277D85DE8];
  fromCopy = from;
  if ([fromCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = [[TSCellularSetupActivatingViewController alloc] initWithPlans:self->_installingPlanInfos skip:self->_skipActivatingPane];
LABEL_8:
    v13 = v5;
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [TSTravelSimTypeSelectionViewController alloc];
    installingPlanInfos = self->_installingPlanInfos;
LABEL_5:
    v5 = [(TSTravelSimTypeSelectionViewController *)v6 initWithPlans:installingPlanInfos];
    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = fromCopy;
    isSelectedAsTravelSIM = [v8 isSelectedAsTravelSIM];
    v10 = [(NSMutableArray *)self->_installingPlanInfos objectAtIndexedSubscript:0];
    [v10 setUseGMVNOAsTravelSIM:isSelectedAsTravelSIM];

    isShown = [v8 isShown];
    v12 = [(NSMutableArray *)self->_installingPlanInfos objectAtIndexedSubscript:0];
    [v12 setIsSIMTypeSelectionShown:isShown];

    v5 = [[TSEnableTableViewController alloc] initWithInfos:self->_installingPlanInfos];
    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = fromCopy;
    self->_planEnablementState = 2;
    selectedItems = [v18 selectedItems];
    selectedItems = self->_selectedItems;
    self->_selectedItems = selectedItems;

    v21 = ([v18 needShow] & 1) == 0 && -[NSString length](self->_iccidToEnable, "length") == 0;
    v13 = [[SSCellularSetupMultiSIMConnectingViewController alloc] initWithPlanInfos:self->_installingPlanInfos userEnablePlans:self->_userEnabledPlanInfos skip:v21];
    goto LABEL_23;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(TSCellularPlanActivatingFlow *)self _stopTimerWithBackgroundTaskState:1];
    v22 = [TSTravelSimCapabilitySelectionViewController alloc];
    v23 = self->_installingPlanInfos;
    v24 = [(NSMutableArray *)v23 objectAtIndexedSubscript:0];
    v13 = -[TSTravelSimCapabilitySelectionViewController initWithPlans:isSelectedAsTravelSIM:](v22, "initWithPlans:isSelectedAsTravelSIM:", v23, [v24 useGMVNOAsTravelSIM]);

    v25 = [(NSMutableArray *)self->_installingPlanInfos objectAtIndexedSubscript:0];
    LODWORD(v24) = [v25 isSIMTypeSelectionShown];

    if (v24)
    {
      v26 = MEMORY[0x277CCABB0];
      v27 = [(NSMutableArray *)self->_installingPlanInfos objectAtIndexedSubscript:0];
      v28 = [v26 numberWithBool:{objc_msgSend(v27, "useGMVNOAsTravelSIM")}];
      v29 = [(NSMutableArray *)self->_installingPlanInfos objectAtIndexedSubscript:0];
      [v29 setESIMTravelState:v28];
    }

    [(TSCellularPlanActivatingFlow *)self _maybeSendTransferResults];
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [[TSTravelBuddyViewController alloc] initWithPlans:self->_installingPlanInfos homeIccid:self->_defaultVoiceIccid];
    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    travelOnlySelected = [fromCopy travelOnlySelected];
    v31 = [(NSMutableArray *)self->_installingPlanInfos objectAtIndexedSubscript:0];
    [v31 setUseTravelOnly:travelOnlySelected];

    v6 = [TSLowDataModeConfigViewController alloc];
    installingPlanInfos = self->_installingPlanInfos;
    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (([fromCopy isShown] & 1) == 0)
    {
      v33 = +[TSCellularPlanManagerCache sharedInstance];
      [v33 resetDelegate:self];

      v5 = [[SSMultiSIMResultViewController alloc] initWithPlanInfos:self->_installingPlanInfos];
      goto LABEL_8;
    }

    v13 = 0;
LABEL_9:
    if (v13)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isForCrossPlatformTransfer = self->_isForCrossPlatformTransfer;
    v6 = [TSMidOperationFailureViewController alloc];
    installingPlanInfos = self->_installingPlanInfos;
    if (isForCrossPlatformTransfer)
    {
      v5 = [(TSTravelSimTypeSelectionViewController *)v6 initWithPlans:installingPlanInfos isCrossPlatformTransfer:1];
      goto LABEL_8;
    }

    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    planError = [(TSCellularPlanActivatingFlow *)self planError];

    if (!planError)
    {
      v5 = [[TSCellularSetupTimeoutFailureViewController alloc] initWithTimeoutReason:self->_timeoutReason isEmbeddedInResultView:0 plans:self->_installingPlanInfos];
      goto LABEL_8;
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [[TSCellularSetupCompleteViewController alloc] initWithPlans:self->_installingPlanInfos selectedItems:self->_selectedItems skip:[(NSString *)self->_iccidToEnable length]!= 0 isForCrossPlatformTransfer:self->_isForCrossPlatformTransfer];
      goto LABEL_8;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [(TSCellularPlanActivatingFlow *)self _hasAnyPlanSuccessfullyInstalled])
    {
      v35 = [TSSubFlowViewController alloc];
      v37 = @"FlowTypeKey";
      v38[0] = &unk_287583808;
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:&v37 count:1];
      navigationController = [(TSSIMSetupFlow *)self navigationController];
      v13 = [(TSSubFlowViewController *)v35 initWithOptions:v18 navigationController:navigationController delegate:self];

LABEL_23:
      goto LABEL_9;
    }
  }

LABEL_10:
  [(TSCellularPlanActivatingFlow *)self _stopTimerWithBackgroundTaskState:0];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  client = self->_client;
  self->_client = 0;

  [(TSCellularPlanActivatingFlow *)self _stopBackgroundTask];
  v13 = 0;
LABEL_11:

  v16 = *MEMORY[0x277D85DE8];

  return v13;
}

- (void)setTopViewController:(id)controller
{
  controllerCopy = controller;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    [(TSCellularPlanActivatingFlow *)self _submitCellularPlanSetupDetails];
  }

  v5.receiver = self;
  v5.super_class = TSCellularPlanActivatingFlow;
  [(TSSIMSetupFlow *)&v5 setTopViewController:controllerCopy];
}

- (void)planItemsUpdated:(id)updated planListError:(id)error
{
  v49 = *MEMORY[0x277D85DE8];
  updatedCopy = updated;
  errorCopy = error;
  domain = [errorCopy domain];
  if ([domain isEqualToString:*MEMORY[0x277CF9680]])
  {
    code = [errorCopy code];

    if (code == 19)
    {
      [(TSCellularPlanActivatingFlow *)self _maybeHandleConfirmationCodeError:updatedCopy];
      goto LABEL_35;
    }
  }

  else
  {
  }

  if (!-[TSCellularPlanActivatingFlow _maybeHandleProvisioningError:items:](self, "_maybeHandleProvisioningError:items:", errorCopy, updatedCopy) && [updatedCopy count])
  {
    if ((_os_feature_enabled_impl() & 1) != 0 || [(TSCellularPlanActivatingFlow *)self consolidatedActivatingState]!= 1)
    {
      v37 = errorCopy;
      v38 = updatedCopy;
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v11 = updatedCopy;
      v12 = [v11 countByEnumeratingWithState:&v40 objects:v48 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v41;
        v15 = 0x27FF49000uLL;
        v16 = 0x27FF49000uLL;
        selfCopy = self;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v41 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v18 = *(*(&v40 + 1) + 8 * i);
            if ([v18 isDefaultVoice])
            {
              iccid = [v18 iccid];
              v20 = *(v15 + 1196);
              v21 = *(&self->super.super.isa + v20);
              *(&self->super.super.isa + v20) = iccid;
            }

            if ([v18 type])
            {
              if ([v18 isInstalling])
              {
                [(TSCellularPlanActivatingFlow *)self _handleProvisioningItemUpdate:v18];
              }

              else
              {
                v23 = *(&self->super.super.isa + *(v16 + 1120));
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  targetIccid = [(TSCellularPlanActivatingFlow *)self targetIccid];
                  [v18 iccid];
                  v25 = v13;
                  v26 = v14;
                  v27 = v11;
                  v28 = v15;
                  v30 = v29 = v16;
                  v31 = [targetIccid isEqualToString:v30];

                  v16 = v29;
                  v15 = v28;
                  v11 = v27;
                  v14 = v26;
                  v13 = v25;
                  self = selfCopy;

                  if (v31)
                  {
                    [(TSCellularPlanActivatingFlow *)selfCopy _maybeDeleteTransferBackItem:v11];
                  }
                }

                plan = [v18 plan];
                status = [plan status];

                if (status == 14)
                {
                  [(TSCellularPlanActivatingFlow *)self _handlePostInstallItemUpdate:v18];
                }

                else
                {
                  plan2 = [v18 plan];
                  status2 = [plan2 status];

                  if (!status2)
                  {
                    [(TSCellularPlanActivatingFlow *)self _handleActivatedItemUpdate:v18];
                  }
                }
              }
            }

            else
            {
              v22 = _TSLogDomain();
              if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                v45 = v18;
                v46 = 2080;
                v47 = "[TSCellularPlanActivatingFlow(TSCellularPlanManagerCacheDelegate) planItemsUpdated:planListError:]";
                _os_log_impl(&dword_262AA8000, v22, OS_LOG_TYPE_DEFAULT, "ignore physical SIM : %@ @%s", buf, 0x16u);
              }

              [(TSCellularPlanActivatingFlow *)self _maybeUpdatePhysicalSIMStatus:v18];
            }
          }

          v13 = [v11 countByEnumeratingWithState:&v40 objects:v48 count:16];
        }

        while (v13);
      }

      errorCopy = v37;
      updatedCopy = v38;
    }

    else
    {
      v10 = _TSLogDomain();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v45 = "[TSCellularPlanActivatingFlow(TSCellularPlanManagerCacheDelegate) planItemsUpdated:planListError:]";
        _os_log_impl(&dword_262AA8000, v10, OS_LOG_TYPE_DEFAULT, "Already activated - early return @%s", buf, 0xCu);
      }
    }
  }

LABEL_35:

  v36 = *MEMORY[0x277D85DE8];
}

- (void)_maybeHandleConfirmationCodeError:(id)error
{
  v23 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  errorCopy = error;
  v5 = [errorCopy countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v5)
  {
    v6 = *v17;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(errorCopy);
        }

        v8 = *(*(&v16 + 1) + 8 * i);
        if ([v8 isInstalling])
        {
          v5 = v8;
          carrierName = [v5 carrierName];
          [(TSCellularPlanActivatingFlow *)self _maybeUpdatePlanNameWithoutPlanID:carrierName];

          goto LABEL_11;
        }
      }

      v5 = [errorCopy countByEnumeratingWithState:&v16 objects:v22 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  iccid = [v5 iccid];
  v11 = [(TSCellularPlanActivatingFlow *)self _findPlanInfoWithTargetIccid:iccid];

  if (!v11)
  {
    v13 = _TSLogDomain();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [TSCellularPlanActivatingFlow(TSCellularPlanManagerCacheDelegate) _maybeHandleConfirmationCodeError:v5];
    }

    goto LABEL_17;
  }

  confirmationCodeViewController = [v11 confirmationCodeViewController];

  if (confirmationCodeViewController)
  {
    v13 = _TSLogDomain();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v21 = "[TSCellularPlanActivatingFlow(TSCellularPlanManagerCacheDelegate) _maybeHandleConfirmationCodeError:]";
      _os_log_impl(&dword_262AA8000, v13, OS_LOG_TYPE_DEFAULT, "confirmation code is already handled @%s", buf, 0xCu);
    }

LABEL_17:

    goto LABEL_18;
  }

  if (self->_maybeShowConfirmationCodePane)
  {
    confirmationCodeViewController2 = [v11 confirmationCodeViewController];

    if (!confirmationCodeViewController2)
    {
      [(TSCellularPlanActivatingFlow *)self _displayConfirmationCodeViewController:v11];
    }
  }

LABEL_18:

  v14 = *MEMORY[0x277D85DE8];
}

- (BOOL)_maybeHandleProvisioningError:(id)error items:(id)items
{
  v37 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  itemsCopy = items;
  v8 = [itemsCopy countByEnumeratingWithState:&v24 objects:v36 count:16];
  if (v8)
  {
    v9 = *v25;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(itemsCopy);
        }

        v11 = *(*(&v24 + 1) + 8 * i);
        if ([v11 isInstalling])
        {
          v8 = v11;
          carrierName = [v8 carrierName];
          [(TSCellularPlanActivatingFlow *)self _maybeUpdatePlanNameWithoutPlanID:carrierName];

          goto LABEL_11;
        }
      }

      v8 = [itemsCopy countByEnumeratingWithState:&v24 objects:v36 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  if (errorCopy)
  {
    iccid = [v8 iccid];
    v14 = [(TSCellularPlanActivatingFlow *)self _findPlanInfoWithTargetIccid:iccid];

    if ([(NSMutableArray *)self->_installingPlanInfos count]== 1)
    {
      installError = [v14 installError];

      if (installError)
      {
        v16 = _TSLogDomain();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          installError2 = [v14 installError];
          identifier = [v14 identifier];
          *buf = 138413058;
          v29 = installError2;
          v30 = 2112;
          v31 = errorCopy;
          v32 = 2112;
          v33 = identifier;
          v34 = 2080;
          v35 = "[TSCellularPlanActivatingFlow(TSCellularPlanManagerCacheDelegate) _maybeHandleProvisioningError:items:]";
          _os_log_impl(&dword_262AA8000, v16, OS_LOG_TYPE_DEFAULT, "received error already : %@, new error: %@ for %@ @%s", buf, 0x2Au);
        }

        goto LABEL_25;
      }
    }

    domain = [errorCopy domain];
    if ([domain isEqualToString:*MEMORY[0x277CF9680]])
    {
      code = [errorCopy code];

      if (code == 47)
      {
LABEL_25:

        goto LABEL_26;
      }
    }

    else
    {
    }

    if ([(NSMutableArray *)self->_installingPlanInfos count]== 1)
    {
      [v14 setInstallError:errorCopy];
      v21 = _TSLogDomain();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [TSCellularPlanActivatingFlow(TSCellularPlanManagerCacheDelegate) _maybeHandleProvisioningError:v14 items:?];
      }

      [v14 setStatus:5];
      [(TSCellularPlanActivatingFlow *)self _maybeMoveToNextItem];
    }

    goto LABEL_25;
  }

LABEL_26:

  v22 = *MEMORY[0x277D85DE8];
  return errorCopy != 0;
}

- (void)_handleProvisioningItemUpdate:(id)update
{
  v28 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  iccid = [updateCopy iccid];
  if ([iccid length])
  {
    v6 = [(NSMutableArray *)self->_installingPlanInfos count];

    if (v6 > 1)
    {
      goto LABEL_5;
    }

    iccid = [updateCopy iccid];
    [(TSCellularPlanActivatingFlow *)self _updateTargetIccidWithoutPlanID:iccid];
  }

LABEL_5:
  iccid2 = [updateCopy iccid];
  v8 = [(TSCellularPlanActivatingFlow *)self _findPlanInfoWithTargetIccid:iccid2];

  if (v8)
  {
    [v8 setPlanItem:updateCopy];
  }

  v9 = _TSLogDomain();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    iccid3 = [updateCopy iccid];
    phoneNumber = [updateCopy phoneNumber];
    planName = [(TSCellularPlanActivatingFlow *)self planName];
    *buf = 138413058;
    v21 = iccid3;
    v22 = 2112;
    v23 = phoneNumber;
    v24 = 2112;
    v25 = planName;
    v26 = 2080;
    v27 = "[TSCellularPlanActivatingFlow(TSCellularPlanManagerCacheDelegate) _handleProvisioningItemUpdate:]";
    _os_log_impl(&dword_262AA8000, v9, OS_LOG_TYPE_DEFAULT, "installing -> plan iccid:%@, phone number:%@, carrier name:%@ @%s", buf, 0x2Au);
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  identifier = [v8 identifier];
  if (identifier)
  {
    [v8 identifier];
  }

  else
  {
    [MEMORY[0x277CBEB68] null];
  }
  v15 = ;
  v19[1] = v15;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:2];
  [defaultCenter postNotificationName:@"esim.install.state.changed" object:0 userInfo:v16];

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_handlePostInstallItemUpdate:(id)update
{
  v18[2] = *MEMORY[0x277D85DE8];
  updateCopy = update;
  iccid = [updateCopy iccid];
  [(TSCellularPlanActivatingFlow *)self _updatePlanStatus:13 withTargetIccid:iccid];

  targetIccid = [(TSCellularPlanActivatingFlow *)self targetIccid];

  if (targetIccid)
  {
    iccid2 = [updateCopy iccid];
    v8 = [(TSCellularPlanActivatingFlow *)self _findPlanInfoWithTargetIccid:iccid2];

    [v8 setPlanItem:updateCopy];
    targetIccid2 = [(TSCellularPlanActivatingFlow *)self targetIccid];
    iccid3 = [updateCopy iccid];
    v11 = [targetIccid2 isEqualToString:iccid3];

    if (v11)
    {
      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      v18[0] = @"PostInstall";
      v17[0] = @"InstallStateKey";
      v17[1] = @"PlanId";
      identifier = [v8 identifier];
      if (identifier)
      {
        [v8 identifier];
      }

      else
      {
        [MEMORY[0x277CBEB68] null];
      }
      v14 = ;
      v18[1] = v14;
      v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];
      [defaultCenter postNotificationName:@"esim.install.state.changed" object:0 userInfo:v15];
    }
  }

  else
  {
    v8 = _TSLogDomain();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [TSCellularPlanActivatingFlow(TSCellularPlanManagerCacheDelegate) _handlePostInstallItemUpdate:v8];
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_handleActivatedItemUpdate:(id)update
{
  v45 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  iccid = [updateCopy iccid];
  v6 = [(TSCellularPlanActivatingFlow *)self _findPlanInfoWithTargetIccid:iccid];

  if (v6)
  {
    [v6 setPlanItem:updateCopy];
    if ((!-[NSMutableArray containsObject:](self->_userEnabledPlanInfos, "containsObject:", v6) || [updateCopy isSelected]) && !objc_msgSend(v6, "activatingState"))
    {
      phoneNumber = [updateCopy phoneNumber];
      if ([phoneNumber length])
      {
        phoneNumber2 = [updateCopy phoneNumber];
        phoneNumber3 = [v6 phoneNumber];
        v10 = [phoneNumber2 isEqualToString:phoneNumber3];

        if ((v10 & 1) == 0)
        {
          phoneNumber4 = [updateCopy phoneNumber];
          [v6 setPhoneNumber:phoneNumber4];

          v12 = _TSLogDomain();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            phoneNumber5 = [updateCopy phoneNumber];
            iccid2 = [updateCopy iccid];
            *buf = 138412802;
            v40 = phoneNumber5;
            v41 = 2112;
            v42 = iccid2;
            v43 = 2080;
            v44 = "[TSCellularPlanActivatingFlow(TSCellularPlanManagerCacheDelegate) _handleActivatedItemUpdate:]";
            _os_log_impl(&dword_262AA8000, v12, OS_LOG_TYPE_DEFAULT, "set phone number %@ for plan: %@ @%s", buf, 0x20u);
          }
        }
      }

      else
      {
      }

      iccid3 = [updateCopy iccid];
      carrierName = [updateCopy carrierName];
      [(TSCellularPlanActivatingFlow *)self _maybeUpdatePlanNameForTargetIccid:iccid3 planName:carrierName];

      if ([updateCopy isSelected])
      {
        [v6 setIsDisabled:0];
        iccid4 = [updateCopy iccid];
        [(TSCellularPlanActivatingFlow *)self _updatePlanStatus:14 withTargetIccid:iccid4];

        phoneNumber6 = [v6 phoneNumber];

        if (!phoneNumber6)
        {
          waitForPhoneNumber = [v6 waitForPhoneNumber];

          if (waitForPhoneNumber)
          {
            waitForPhoneNumber2 = [v6 waitForPhoneNumber];
            bOOLValue = [waitForPhoneNumber2 BOOLValue];

            if (bOOLValue)
            {
              [(TSCellularPlanActivatingFlow *)self _maybeMoveToNextItem];
            }
          }

          else
          {
            v32 = +[TSCellularPlanManagerCache sharedInstance];
            v33 = [v32 getSubscriptionContextUUIDforPlan:updateCopy];

            if (v33)
            {
              objc_initWeak(buf, self);
              v35[0] = MEMORY[0x277D85DD0];
              v35[1] = 3221225472;
              v35[2] = __95__TSCellularPlanActivatingFlow_TSCellularPlanManagerCacheDelegate___handleActivatedItemUpdate___block_invoke;
              v35[3] = &unk_279B444B8;
              objc_copyWeak(&v38, buf);
              v36 = updateCopy;
              v37 = v6;
              [(TSCellularPlanActivatingFlow *)self _shouldWaitUntilPhoneNumberBeReady:v33 completion:v35];

              objc_destroyWeak(&v38);
              objc_destroyWeak(buf);
            }

            else
            {
              v34 = _TSLogDomain();
              if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315138;
                v40 = "[TSCellularPlanActivatingFlow(TSCellularPlanManagerCacheDelegate) _handleActivatedItemUpdate:]";
                _os_log_impl(&dword_262AA8000, v34, OS_LOG_TYPE_DEFAULT, "Subscription context UUID is not ready @%s", buf, 0xCu);
              }
            }
          }
        }
      }

      else if (self->_transferBackOldItem)
      {
        mEMORY[0x277CF96D8] = [MEMORY[0x277CF96D8] sharedManager];
        v26 = [mEMORY[0x277CF96D8] didSelectPlanItem:updateCopy isEnable:1];

        v27 = _TSLogDomain();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          iccid5 = [updateCopy iccid];
          *buf = 138412802;
          v40 = iccid5;
          v41 = 2112;
          v42 = v26;
          v43 = 2080;
          v44 = "[TSCellularPlanActivatingFlow(TSCellularPlanManagerCacheDelegate) _handleActivatedItemUpdate:]";
          _os_log_impl(&dword_262AA8000, v27, OS_LOG_TYPE_DEFAULT, "transfer back, enable the item %@. error:%@ @%s", buf, 0x20u);
        }
      }

      else
      {
        v29 = _TSLogDomain();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          iccid6 = [updateCopy iccid];
          *buf = 138412546;
          v40 = iccid6;
          v41 = 2080;
          v42 = "[TSCellularPlanActivatingFlow(TSCellularPlanManagerCacheDelegate) _handleActivatedItemUpdate:]";
          _os_log_impl(&dword_262AA8000, v29, OS_LOG_TYPE_DEFAULT, "SIM %@ is not enabled - plan status to not enabled @%s", buf, 0x16u);
        }

        [v6 setIsDisabled:1];
        iccid7 = [updateCopy iccid];
        [(TSCellularPlanActivatingFlow *)self _updatePlanStatus:14 withTargetIccid:iccid7];
      }
    }
  }

  else
  {
    v15 = _TSLogDomain();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      iccid8 = [updateCopy iccid];
      *buf = 138412546;
      v40 = iccid8;
      v41 = 2080;
      v42 = "[TSCellularPlanActivatingFlow(TSCellularPlanManagerCacheDelegate) _handleActivatedItemUpdate:]";
      _os_log_impl(&dword_262AA8000, v15, OS_LOG_TYPE_INFO, "[I] active plan is not the provisioning plan. ignore:%@ @%s", buf, 0x16u);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __95__TSCellularPlanActivatingFlow_TSCellularPlanManagerCacheDelegate___handleActivatedItemUpdate___block_invoke(id *a1, uint64_t a2)
{
  *&v15[13] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v5 = _TSLogDomain();
  v6 = v5;
  if (!WeakRetained)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __95__TSCellularPlanActivatingFlow_TSCellularPlanManagerCacheDelegate___handleActivatedItemUpdate___block_invoke_cold_1();
    }

    goto LABEL_10;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [a1[4] iccid];
    v12 = 138412802;
    v13 = v7;
    v14 = 1024;
    *v15 = a2;
    v15[2] = 2080;
    *&v15[3] = "[TSCellularPlanActivatingFlow(TSCellularPlanManagerCacheDelegate) _handleActivatedItemUpdate:]_block_invoke";
    _os_log_impl(&dword_262AA8000, v6, OS_LOG_TYPE_DEFAULT, "%@ Wait until phone number to be ready: %{BOOL}d @%s", &v12, 0x1Cu);
  }

  v8 = [MEMORY[0x277CCABB0] numberWithBool:a2];
  [a1[5] setWaitForPhoneNumber:v8];

  if ((a2 & 1) == 0)
  {
    v9 = _TSLogDomain();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [a1[4] iccid];
      v12 = 138412546;
      v13 = v10;
      v14 = 2080;
      *v15 = "[TSCellularPlanActivatingFlow(TSCellularPlanManagerCacheDelegate) _handleActivatedItemUpdate:]_block_invoke";
      _os_log_impl(&dword_262AA8000, v9, OS_LOG_TYPE_DEFAULT, "Skip waiting for phone number to be ready for iccid %@ @%s", &v12, 0x16u);
    }

    [a1[5] setPhoneNumber:&stru_28753DF48];
    v6 = [a1[4] iccid];
    [WeakRetained _updatePlanStatus:14 withTargetIccid:v6];
LABEL_10:
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_shouldWaitUntilPhoneNumberBeReady:(id)ready completion:(id)completion
{
  readyCopy = ready;
  completionCopy = completion;
  objc_initWeak(&location, self);
  v8 = +[TSCoreTelephonyClientCache sharedInstance];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __114__TSCellularPlanActivatingFlow_TSCellularPlanManagerCacheDelegate___shouldWaitUntilPhoneNumberBeReady_completion___block_invoke;
  v11[3] = &unk_279B444E0;
  objc_copyWeak(&v14, &location);
  v9 = completionCopy;
  v13 = v9;
  v10 = readyCopy;
  v12 = v10;
  [v8 getSubscriptionInfo:v11];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __114__TSCellularPlanActivatingFlow_TSCellularPlanManagerCacheDelegate___shouldWaitUntilPhoneNumberBeReady_completion___block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v18 = v3;
    v5 = [v3 subscriptions];
    v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v20;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v20 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v19 + 1) + 8 * i);
          v11 = [v10 uuid];
          v12 = [v11 UUIDString];
          v13 = [v12 isEqualToString:*(a1 + 32)];

          if (v13)
          {
            v14 = [objc_alloc(MEMORY[0x277CC3620]) initWithBundleType:1];
            v15 = [WeakRetained[14] copyCarrierBundleValue:v10 keyHierarchy:&unk_287583EC0 bundleType:v14 error:0];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v15 BOOLValue];
            }

            (*(*(a1 + 40) + 16))();

            goto LABEL_17;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_17:

    v3 = v18;
  }

  else
  {
    v16 = _TSLogDomain();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      __114__TSCellularPlanActivatingFlow_TSCellularPlanManagerCacheDelegate___shouldWaitUntilPhoneNumberBeReady_completion___block_invoke_cold_1();
    }

    (*(*(a1 + 40) + 16))();
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_maybeDeleteTransferBackItem:(id)item
{
  v29 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = [itemCopy countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v21;
    *&v6 = 138412546;
    v19 = v6;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(itemCopy);
        }

        v10 = *(*(&v20 + 1) + 8 * i);
        if ([v10 transferredStatus])
        {
          if (([v10 isInstalling] & 1) == 0)
          {
            plan = [v10 plan];
            status = [plan status];

            if (!status)
            {
              iccid = [self->_transferBackOldItem iccid];
              iccid2 = [v10 iccid];
              v15 = [iccid isEqualToPhoneNumber:iccid2];

              if (v15)
              {
                v16 = _TSLogDomain();
                if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = v19;
                  v25 = v10;
                  v26 = 2080;
                  v27 = "[TSCellularPlanActivatingFlow(TSCellularPlanManagerCacheDelegate) _maybeDeleteTransferBackItem:]";
                  _os_log_impl(&dword_262AA8000, v16, OS_LOG_TYPE_DEFAULT, "remove transfer back item : %@ @%s", buf, 0x16u);
                }

                mEMORY[0x277CF96D8] = [MEMORY[0x277CF96D8] sharedManager];
                [mEMORY[0x277CF96D8] didDeletePlanItem:v10 completion:&__block_literal_global_408];
              }
            }
          }
        }
      }

      v7 = [itemCopy countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v7);
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __97__TSCellularPlanActivatingFlow_TSCellularPlanManagerCacheDelegate___maybeDeleteTransferBackItem___block_invoke(uint64_t a1, int a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _TSLogDomain();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109634;
    v7[1] = a2;
    v8 = 2112;
    v9 = v4;
    v10 = 2080;
    v11 = "[TSCellularPlanActivatingFlow(TSCellularPlanManagerCacheDelegate) _maybeDeleteTransferBackItem:]_block_invoke";
    _os_log_impl(&dword_262AA8000, v5, OS_LOG_TYPE_DEFAULT, "remote item : %d, error : %@ @%s", v7, 0x1Cu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)launchWebsheet:(id)websheet completion:(id)completion
{
  v37 = *MEMORY[0x277D85DE8];
  websheetCopy = websheet;
  completionCopy = completion;
  v8 = _TSLogDomain();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v32 = websheetCopy;
    v33 = 2080;
    v34 = "[TSCellularPlanActivatingFlow(CoreTelephonyClientCellularPlanManagementDelegate) launchWebsheet:completion:]";
    _os_log_impl(&dword_262AA8000, v8, OS_LOG_TYPE_DEFAULT, "handle CoreTelephonyClient launchwebsheet request:%@ @%s", buf, 0x16u);
  }

  v9 = _TSLogDomain();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    infoDictionary = [mainBundle infoDictionary];
    v12 = [infoDictionary objectForKey:*MEMORY[0x277CBED50]];
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    applicationState = [mEMORY[0x277D75128] applicationState];
    *buf = 138412802;
    v32 = v12;
    v33 = 2048;
    v34 = applicationState;
    v35 = 2080;
    v36 = "[TSCellularPlanActivatingFlow(CoreTelephonyClientCellularPlanManagementDelegate) launchWebsheet:completion:]";
    _os_log_impl(&dword_262AA8000, v9, OS_LOG_TYPE_DEFAULT, "App name is %@ status is %ld @%s", buf, 0x20u);
  }

  if ([(TSCellularPlanActivatingFlow *)self _startedByFollowup])
  {
    if (+[TSUtilities isDeviceLocked])
    {
      v15 = _TSLogDomain();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v32 = "[TSCellularPlanActivatingFlow(CoreTelephonyClientCellularPlanManagementDelegate) launchWebsheet:completion:]";
        _os_log_impl(&dword_262AA8000, v15, OS_LOG_TYPE_DEFAULT, "screen is locked, skip in-line launch websheet @%s", buf, 0xCu);
      }

LABEL_9:

      completionCopy[2](completionCopy, 0);
      goto LABEL_22;
    }
  }

  else if ([(TSCellularPlanActivatingFlow *)self _isAppInBackground])
  {
    v15 = _TSLogDomain();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v32 = "[TSCellularPlanActivatingFlow(CoreTelephonyClientCellularPlanManagementDelegate) launchWebsheet:completion:]";
      _os_log_impl(&dword_262AA8000, v15, OS_LOG_TYPE_DEFAULT, "app is not in forground. skip in-line launch websheet @%s", buf, 0xCu);
    }

    goto LABEL_9;
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel__onESIMInstallFromWebSheetFlowStart name:@"transfer.websheet.install.started" object:0];

  if (_os_feature_enabled_impl())
  {
    [(TSCellularPlanActivatingFlow *)self _displayWebsheetViewController:websheetCopy];
    completionCopy[2](completionCopy, 1);
  }

  else
  {
    v17 = [websheetCopy mutableCopy];
    [v17 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"SkipIntroPaneForWebsheetFlow"];
    v18 = [v17 copy];
    websheetOptions = self->_websheetOptions;
    self->_websheetOptions = v18;

    navigationController = [(TSSIMSetupFlow *)self navigationController];
    v21 = navigationController == 0;

    if (v21)
    {
      v26 = _TSLogDomain();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        [TSCellularPlanActivatingFlow(CoreTelephonyClientCellularPlanManagementDelegate) launchWebsheet:completion:];
      }

      completionCopy[2](completionCopy, 0);
    }

    else
    {
      objc_initWeak(buf, self);
      websheetOptions = [(TSCellularPlanActivatingFlow *)self websheetOptions];
      v23 = [TSSIMSetupFlow flowWithOptions:websheetOptions];
      websheetFlow = self->_websheetFlow;
      self->_websheetFlow = v23;

      [(TSSIMSetupFlow *)self->_websheetFlow setParentFlow:self];
      [(TSSIMSetupFlow *)self->_websheetFlow setDelegate:self];
      v25 = self->_websheetFlow;
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __109__TSCellularPlanActivatingFlow_CoreTelephonyClientCellularPlanManagementDelegate__launchWebsheet_completion___block_invoke;
      v28[3] = &unk_279B44528;
      objc_copyWeak(&v30, buf);
      v28[4] = self;
      v29 = completionCopy;
      [(TSSIMSetupFlow *)v25 firstViewController:v28];

      objc_destroyWeak(&v30);
      objc_destroyWeak(buf);
    }
  }

LABEL_22:

  v27 = *MEMORY[0x277D85DE8];
}

void __109__TSCellularPlanActivatingFlow_CoreTelephonyClientCellularPlanManagementDelegate__launchWebsheet_completion___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [WeakRetained setWebsheetRootViewController:v7];
  }

  else
  {
    WeakRetained = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v7];
    [WeakRetained setModalPresentationStyle:2];
    v4 = objc_loadWeakRetained((a1 + 48));
    [v4 setWebsheetRootViewController:WeakRetained];
  }

  v5 = objc_loadWeakRetained((a1 + 48));
  v6 = [v5 websheetRootViewController];
  [v5 _maybeDisplayInteractiveUI:v6];

  [*(a1 + 32) _stopTimerWithBackgroundTaskState:0];
  (*(*(a1 + 40) + 16))();
}

- (void)transferEventUpdate:(id)update
{
  v47 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  v5 = _TSLogDomain();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v40 = updateCopy;
    v41 = 2080;
    v42 = "[TSCellularPlanActivatingFlow(CoreTelephonyClientCellularPlanManagementDelegate) transferEventUpdate:]";
    _os_log_impl(&dword_262AA8000, v5, OS_LOG_TYPE_DEFAULT, "transfer event : %@ @%s", buf, 0x16u);
  }

  v6 = [updateCopy objectForKey:@"PlanInstallStatus"];
  if (!_os_feature_enabled_impl() || !v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v7 = [updateCopy objectForKey:@"WaitingOnWifiStatus"];
    if (v7)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        -[TSCellularPlanActivatingFlow handleWaitingOnWifiStatusUpdate:](self, "handleWaitingOnWifiStatusUpdate:", [v7 BOOLValue]);
      }
    }

    v8 = [updateCopy objectForKey:@"TransferState"];
    if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      integerValue = [v8 integerValue];
      if (integerValue == 3)
      {
        v10 = _TSLogDomain();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v40 = "[TSCellularPlanActivatingFlow(CoreTelephonyClientCellularPlanManagementDelegate) transferEventUpdate:]";
          _os_log_impl(&dword_262AA8000, v10, OS_LOG_TYPE_DEFAULT, "transfer state launch websheet @%s", buf, 0xCu);
        }

        v11 = [updateCopy objectForKey:@"PlanId"];
        v12 = [updateCopy objectForKey:@"WebsheetInfoKey"];
        if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v38 = [v12 objectForKey:@"WebsheetURLKey"];
          v13 = [v12 objectForKey:@"WebsheetPostdataKey"];
        }

        else
        {
          v13 = 0;
          v38 = 0;
        }

        v26 = [updateCopy objectForKey:@"TransferErrorCode"];
        if (v26)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v37 = v11;
            v27 = [MEMORY[0x277CF96C8] errorForCode:{objc_msgSend(v26, "intValue")}];
            v28 = _TSLogDomain();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138413058;
              v40 = v27;
              v41 = 2112;
              v42 = v38;
              v43 = 2112;
              v44 = v13;
              v45 = 2080;
              v46 = "[TSCellularPlanActivatingFlow(CoreTelephonyClientCellularPlanManagementDelegate) transferEventUpdate:]";
              _os_log_impl(&dword_262AA8000, v28, OS_LOG_TYPE_DEFAULT, "transfer abort, require to launch websheet : %@, websheetUrl: %@, postdata: %@ @%s", buf, 0x2Au);
            }

            v11 = v37;
            [(TSCellularPlanActivatingFlow *)self _updateInstallError:v27 withPlanID:v37 webUrl:v38 postData:v13];
          }
        }

        goto LABEL_74;
      }
    }

    else
    {
      integerValue = 0;
    }

    v14 = _TSLogDomain();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      v40 = integerValue;
      v41 = 2080;
      v42 = "[TSCellularPlanActivatingFlow(CoreTelephonyClientCellularPlanManagementDelegate) transferEventUpdate:]";
      _os_log_impl(&dword_262AA8000, v14, OS_LOG_TYPE_DEFAULT, "transfer state : %ld @%s", buf, 0x16u);
    }

    if (integerValue > 5)
    {
      if (integerValue == 6)
      {
        WeakRetained = objc_loadWeakRetained(&self->_oneTimeCodeViewController);

        if (!WeakRetained)
        {
          v11 = [updateCopy objectForKey:@"Iccid"];
          v15 = [updateCopy objectForKey:@"CarrierNameKey"];
          v31 = [updateCopy objectForKey:@"PhoneNumberKey"];
          v32 = [updateCopy objectForKey:@"UsePinKey"];
          bOOLValue = [v32 BOOLValue];

          [(TSCellularPlanActivatingFlow *)self _displayOneTimeCodeViewController:v11 phoneNumber:v31 carrierName:v15 usePin:bOOLValue];
          goto LABEL_60;
        }

        v25 = _TSLogDomain();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v40 = "[TSCellularPlanActivatingFlow(CoreTelephonyClientCellularPlanManagementDelegate) transferEventUpdate:]";
          _os_log_impl(&dword_262AA8000, v25, OS_LOG_TYPE_DEFAULT, "OneTimeViewController active. Updating OTP state. @%s", buf, 0xCu);
        }

        selfCopy2 = self;
        v18 = 0;
      }

      else
      {
        if (integerValue != 7)
        {
LABEL_31:
          if ((integerValue - 1) <= 1)
          {
            [(TSCellularPlanActivatingFlow *)self startTimer:1];
            defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
            [defaultCenter postNotificationName:@"transfer.consent.on.source" object:0 userInfo:0];

LABEL_37:
            v11 = 0;
LABEL_74:

            goto LABEL_75;
          }

          v11 = 0;
LABEL_67:
          if ([v11 code] == 45 || objc_msgSend(v11, "code") == 72)
          {
            if (self->_termsAndConditionsShown || self->_oneTimePasscodePaneShown)
            {
              v35 = _TSLogDomain();
              if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315138;
                v40 = "[TSCellularPlanActivatingFlow(CoreTelephonyClientCellularPlanManagementDelegate) transferEventUpdate:]";
                _os_log_impl(&dword_262AA8000, v35, OS_LOG_TYPE_DEFAULT, "cancel event already handled @%s", buf, 0xCu);
              }
            }

            else if ([(NSMutableArray *)self->_installingPlanInfos count]== 1)
            {
              [(TSCellularPlanActivatingFlow *)self userDidTapCancel];
            }
          }

          goto LABEL_74;
        }

        v16 = [updateCopy objectForKey:@"OtpStateKey"];
        intValue = [v16 intValue];

        if (intValue < 3)
        {
          v18 = intValue + 1;
        }

        else
        {
          v18 = 0;
        }

        selfCopy2 = self;
      }

      [(TSCellularPlanActivatingFlow *)selfCopy2 _handleOtpStatusUpdate:v18];
LABEL_75:

      goto LABEL_76;
    }

    if (integerValue != 4)
    {
      if (integerValue == 5)
      {
        v11 = [updateCopy objectForKey:@"Iccid"];
        v15 = [updateCopy objectForKey:@"TCMainTextKey"];
        [(TSCellularPlanActivatingFlow *)self _displayTermsAndConditionsViewController:v11 mainText:v15];
LABEL_60:

        goto LABEL_74;
      }

      goto LABEL_31;
    }

    v15 = [updateCopy objectForKey:@"PlanId"];
    planError = [(TSCellularPlanActivatingFlow *)self planError];

    if (planError)
    {
      v22 = _TSLogDomain();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        planError2 = [(TSCellularPlanActivatingFlow *)self planError];
        *buf = 138412546;
        v40 = planError2;
        v41 = 2080;
        v42 = "[TSCellularPlanActivatingFlow(CoreTelephonyClientCellularPlanManagementDelegate) transferEventUpdate:]";
        _os_log_impl(&dword_262AA8000, v22, OS_LOG_TYPE_DEFAULT, "Already received transfer error: [%@]. Ignoring this event @%s", buf, 0x16u);
      }

      goto LABEL_37;
    }

    v29 = [updateCopy objectForKey:@"TransferErrorCode"];
    if (v29 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v11 = [MEMORY[0x277CF96C8] errorForCode:{objc_msgSend(v29, "intValue")}];
      v30 = _TSLogDomain();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v40 = v11;
        v41 = 2080;
        v42 = "[TSCellularPlanActivatingFlow(CoreTelephonyClientCellularPlanManagementDelegate) transferEventUpdate:]";
        _os_log_impl(&dword_262AA8000, v30, OS_LOG_TYPE_DEFAULT, "Received transfer error: %@ @%s", buf, 0x16u);
      }

      if ([v11 code] == 57)
      {
        goto LABEL_58;
      }

      [(TSCellularPlanActivatingFlow *)self _updateInstallError:v11 withPlanID:v15 webUrl:0 postData:0];
      if ([(TSCellularPlanActivatingFlow *)self _shouldOfferFallbackOptionOnError:v11])
      {
        [(TSCellularPlanActivatingFlow *)self _offerFallbackOption];
LABEL_58:

        goto LABEL_60;
      }
    }

    else
    {
      v11 = 0;
    }

    v34 = [updateCopy objectForKey:@"CarrierErrorCode"];
    if (v34)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if ([v34 length])
        {
          [(TSCellularPlanActivatingFlow *)self _updateCarrierErrorCode:v34 withPlanID:v15];
        }
      }
    }

    [(TSCellularPlanActivatingFlow *)self _updatePlanStatus:5 withPlanID:v15];

    goto LABEL_67;
  }

  [(TSCellularPlanActivatingFlow *)self _handleMultiSIMInstallationStatusUpdateEvent:v6];
LABEL_76:

  v36 = *MEMORY[0x277D85DE8];
}

- (void)updateProvisioningError:(id)error targetIccidHash:(id)hash
{
  v18 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  hashCopy = hash;
  domain = [errorCopy domain];
  if ([domain isEqualToString:*MEMORY[0x277CF9680]])
  {
    code = [errorCopy code];

    if (code == 19)
    {
      goto LABEL_8;
    }
  }

  else
  {
  }

  v10 = _TSLogDomain();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412802;
    v13 = errorCopy;
    v14 = 2112;
    v15 = hashCopy;
    v16 = 2080;
    v17 = "[TSCellularPlanActivatingFlow(CoreTelephonyClientCellularPlanManagementDelegate) updateProvisioningError:targetIccidHash:]";
    _os_log_impl(&dword_262AA8000, v10, OS_LOG_TYPE_DEFAULT, "recv provisioning error : %@ for target iccid hash : %@ @%s", &v12, 0x20u);
  }

  [(TSCellularPlanActivatingFlow *)self _updateInstallError:errorCopy withTargetIccidHash:hashCopy];
LABEL_8:

  v11 = *MEMORY[0x277D85DE8];
}

- (void)handleWaitingOnWifiStatusUpdate:(BOOL)update
{
  updateCopy = update;
  v12 = *MEMORY[0x277D85DE8];
  v5 = _TSLogDomain();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (updateCopy)
  {
    if (v6)
    {
      *buf = 136315138;
      v11 = "[TSCellularPlanActivatingFlow(CoreTelephonyClientCellularPlanManagementDelegate) handleWaitingOnWifiStatusUpdate:]";
      _os_log_impl(&dword_262AA8000, v5, OS_LOG_TYPE_DEFAULT, "pausing transfer timer for wi-fi selection @%s", buf, 0xCu);
    }

    [(TSCellularPlanActivatingFlow *)self _stopTimerWithBackgroundTaskState:1];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __115__TSCellularPlanActivatingFlow_CoreTelephonyClientCellularPlanManagementDelegate__handleWaitingOnWifiStatusUpdate___block_invoke;
    v9[3] = &unk_279B44578;
    v9[4] = self;
    v7 = v9;
  }

  else
  {
    if (v6)
    {
      *buf = 136315138;
      v11 = "[TSCellularPlanActivatingFlow(CoreTelephonyClientCellularPlanManagementDelegate) handleWaitingOnWifiStatusUpdate:]";
      _os_log_impl(&dword_262AA8000, v5, OS_LOG_TYPE_DEFAULT, "resuming transfer timer for wi-fi selection @%s", buf, 0xCu);
    }

    [(TSCellularPlanActivatingFlow *)self startTimer:0];
    v7 = &__block_literal_global_500;
  }

  [(TSCellularPlanActivatingFlow *)self _maybeDismissAlert:v7];
  v8 = *MEMORY[0x277D85DE8];
}

void __115__TSCellularPlanActivatingFlow_CoreTelephonyClientCellularPlanManagementDelegate__handleWaitingOnWifiStatusUpdate___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"WiFi" value:&stru_28753DF48 table:@"Localizable"];

  if (+[TSUtilities isGreenTeaCapable])
  {
    v5 = *(a1 + 32);
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"WLAN" value:&stru_28753DF48 table:@"Localizable"];

    v4 = v7;
  }

  v8 = MEMORY[0x277CCACA8];
  v9 = *(a1 + 32);
  v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"CONTINUE_WITHOUT_WIFI_ALERT_TITLE_%@" value:&stru_28753DF48 table:@"Localizable"];
  v12 = [v8 stringWithFormat:v11, v4];

  v13 = MEMORY[0x277CCACA8];
  v14 = *(a1 + 32);
  v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v16 = [v15 localizedStringForKey:@"CONTINUE_WITHOUT_WIFI_ALERT_MESSAGE_%@" value:&stru_28753DF48 table:@"Localizable"];
  v17 = [v13 stringWithFormat:v16, v4];

  v18 = MEMORY[0x277CCACA8];
  v19 = *(a1 + 32);
  v20 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v21 = [v20 localizedStringForKey:@"CONTINUE_WITHOUT_WIFI_ALERT_BUTTON_%@" value:&stru_28753DF48 table:@"Localizable"];
  v22 = [v18 stringWithFormat:v21, v4];

  v23 = [MEMORY[0x277D75110] alertControllerWithTitle:v12 message:v17 preferredStyle:1];
  objc_initWeak(&location, *(a1 + 32));
  v24 = MEMORY[0x277D750F8];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __115__TSCellularPlanActivatingFlow_CoreTelephonyClientCellularPlanManagementDelegate__handleWaitingOnWifiStatusUpdate___block_invoke_2;
  v29[3] = &unk_279B44550;
  objc_copyWeak(&v30, &location);
  v25 = [v24 actionWithTitle:v22 style:0 handler:v29];
  [v23 addAction:v25];

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __115__TSCellularPlanActivatingFlow_CoreTelephonyClientCellularPlanManagementDelegate__handleWaitingOnWifiStatusUpdate___block_invoke_4;
  block[3] = &unk_279B44490;
  block[4] = *(a1 + 32);
  v28 = v23;
  v26 = v23;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v30);
  objc_destroyWeak(&location);
}

void __115__TSCellularPlanActivatingFlow_CoreTelephonyClientCellularPlanManagementDelegate__handleWaitingOnWifiStatusUpdate___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained client];
  [v1 continueTransferWithoutWifi:&__block_literal_global_497];
}

void __115__TSCellularPlanActivatingFlow_CoreTelephonyClientCellularPlanManagementDelegate__handleWaitingOnWifiStatusUpdate___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) navigationController];
  [v2 presentViewController:*(a1 + 40) animated:1 completion:0];
}

- (BOOL)_startedByFollowup
{
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  infoDictionary = [mainBundle infoDictionary];
  v4 = [infoDictionary objectForKey:*MEMORY[0x277CBED50]];

  LOBYTE(mainBundle) = [@"SIMSetupUIService" isEqualToString:v4];
  return mainBundle;
}

- (BOOL)_isAppInBackground
{
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  v3 = [mEMORY[0x277D75128] applicationState] != 0;

  return v3;
}

- (BOOL)_shouldOfferFallbackOptionOnError:(id)error
{
  errorCopy = error;
  v5 = -[NSMutableArray count](self->_installingPlanInfos, "count") == 1 && !+[TSUtilities isPad](TSUtilities, "isPad") && [errorCopy code] == 50;

  return v5;
}

- (void)_offerFallbackOption
{
  objc_initWeak(&location, self);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __103__TSCellularPlanActivatingFlow_CoreTelephonyClientCellularPlanManagementDelegate___offerFallbackOption__block_invoke;
  v3[3] = &unk_279B445C0;
  v3[4] = self;
  objc_copyWeak(&v4, &location);
  [(TSCellularPlanActivatingFlow *)self _maybeDismissAlert:v3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __103__TSCellularPlanActivatingFlow_CoreTelephonyClientCellularPlanManagementDelegate___offerFallbackOption__block_invoke(uint64_t a1)
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = (a1 + 32);
  v2 = *(a1 + 32);
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"FALLBACK_TITLE" value:&stru_28753DF48 table:@"Localizable"];

  v6 = *v3;
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"FALLBACK_DETAIL" value:&stru_28753DF48 table:@"Localizable"];

  v9 = [MEMORY[0x277D75110] alertControllerWithTitle:v5 message:v8 preferredStyle:1];
  v10 = MEMORY[0x277D750F8];
  v11 = *v3;
  v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v13 = [v12 localizedStringForKey:@"CANCEL" value:&stru_28753DF48 table:@"Localizable"];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __103__TSCellularPlanActivatingFlow_CoreTelephonyClientCellularPlanManagementDelegate___offerFallbackOption__block_invoke_2;
  v31[3] = &unk_279B44550;
  objc_copyWeak(&v32, (a1 + 40));
  v14 = [v10 actionWithTitle:v13 style:1 handler:v31];
  [v9 addAction:v14];

  v15 = MEMORY[0x277D750F8];
  v16 = *(a1 + 32);
  v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v18 = [v17 localizedStringForKey:@"TRY_AGAIN" value:&stru_28753DF48 table:@"Localizable"];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __103__TSCellularPlanActivatingFlow_CoreTelephonyClientCellularPlanManagementDelegate___offerFallbackOption__block_invoke_3;
  v29[3] = &unk_279B44550;
  objc_copyWeak(&v30, (a1 + 40));
  v19 = [v15 actionWithTitle:v18 style:0 handler:v29];
  [v9 addAction:v19];

  v23 = MEMORY[0x277D85DD0];
  v24 = 3221225472;
  v25 = __103__TSCellularPlanActivatingFlow_CoreTelephonyClientCellularPlanManagementDelegate___offerFallbackOption__block_invoke_4;
  v26 = &unk_279B44490;
  v27 = *(a1 + 32);
  v20 = v9;
  v28 = v20;
  dispatch_async(MEMORY[0x277D85CD0], &v23);
  v21 = _TSLogDomain();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v34 = "[TSCellularPlanActivatingFlow(CoreTelephonyClientCellularPlanManagementDelegate) _offerFallbackOption]_block_invoke";
    _os_log_impl(&dword_262AA8000, v21, OS_LOG_TYPE_DEFAULT, "stop timer when alert for ids error is shown @%s", buf, 0xCu);
  }

  [*(a1 + 32) _stopTimerWithBackgroundTaskState:{0, v23, v24, v25, v26, v27}];
  objc_destroyWeak(&v30);
  objc_destroyWeak(&v32);

  v22 = *MEMORY[0x277D85DE8];
}

void __103__TSCellularPlanActivatingFlow_CoreTelephonyClientCellularPlanManagementDelegate___offerFallbackOption__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained delegate];
  [v1 simSetupFlowCompleted:1];
}

void __103__TSCellularPlanActivatingFlow_CoreTelephonyClientCellularPlanManagementDelegate___offerFallbackOption__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _redirectToBTFlow];
}

void __103__TSCellularPlanActivatingFlow_CoreTelephonyClientCellularPlanManagementDelegate___offerFallbackOption__block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) navigationController];
  [v2 presentViewController:*(a1 + 40) animated:1 completion:0];
}

- (void)_redirectToBTFlow
{
  delegate = [(TSSIMSetupFlow *)self delegate];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    return;
  }

  delegate2 = [(TSSIMSetupFlow *)self delegate];
  [delegate2 setIsOfferFallbackFlow:1];
  firstViewControllerCallback = self->_firstViewControllerCallback;
  if (firstViewControllerCallback)
  {
    firstViewControllerCallback[2](firstViewControllerCallback, 0);
    topViewController2 = self->_firstViewControllerCallback;
    self->_firstViewControllerCallback = 0;
LABEL_7:

    goto LABEL_8;
  }

  topViewController = [(TSSIMSetupFlow *)self topViewController];
  objc_opt_class();
  v8 = objc_opt_isKindOfClass();

  if (v8)
  {
    topViewController2 = [(TSSIMSetupFlow *)self topViewController];
    [(TSCellularPlanActivatingFlow *)self viewControllerDidComplete:topViewController2];
    goto LABEL_7;
  }

LABEL_8:
}

- (void)_handleOtpStatusUpdate:(int64_t)update
{
  v13 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_oneTimeCodeViewController);

  if (WeakRetained)
  {
    if (update != 2)
    {
      if (update == 3)
      {
        v6 = _TSLogDomain();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v11 = 136315138;
          v12 = "[TSCellularPlanActivatingFlow(CoreTelephonyClientCellularPlanManagementDelegate) _handleOtpStatusUpdate:]";
          v7 = "Otp cancelled, reset OTC view controller @%s";
LABEL_13:
          _os_log_impl(&dword_262AA8000, v6, OS_LOG_TYPE_DEFAULT, v7, &v11, 0xCu);
          goto LABEL_14;
        }

        goto LABEL_14;
      }

      [(TSCellularPlanActivatingFlow *)self _stopTimerWithBackgroundTaskState:1];
    }

    v9 = objc_loadWeakRetained(&self->_oneTimeCodeViewController);
    [v9 updateOtpState:update];

    if (update == 2)
    {
      v6 = _TSLogDomain();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 136315138;
        v12 = "[TSCellularPlanActivatingFlow(CoreTelephonyClientCellularPlanManagementDelegate) _handleOtpStatusUpdate:]";
        v7 = "Otp valid, reset OTC view controller @%s";
        goto LABEL_13;
      }

LABEL_14:

      objc_storeWeak(&self->_oneTimeCodeViewController, 0);
    }
  }

  else
  {
    v8 = _TSLogDomain();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315138;
      v12 = "[TSCellularPlanActivatingFlow(CoreTelephonyClientCellularPlanManagementDelegate) _handleOtpStatusUpdate:]";
      _os_log_impl(&dword_262AA8000, v8, OS_LOG_TYPE_DEFAULT, "OneTimeCodeViewController nil @%s", &v11, 0xCu);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_handleMultiSIMInstallationStatusUpdateEvent:(id)event
{
  v24 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  selfCopy = self;
  topViewController = [(TSSIMSetupFlow *)self topViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    [(TSSIMSetupFlow *)selfCopy topViewController];
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = eventCopy;
  v8 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        v13 = [v12 objectForKey:@"PlanId"];
        v14 = [v12 objectForKey:@"PlanStatus"];
        v15 = [v12 objectForKey:@"Iccid"];
        v16 = v15;
        if (v15 && [v15 length])
        {
          [(TSCellularPlanActivatingFlow *)selfCopy _updateTargetIccid:v16 withPlanID:v13];
        }

        if (v14)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            -[TSCellularPlanActivatingFlow _updatePlanStatus:withPlanID:](selfCopy, "_updatePlanStatus:withPlanID:", [v14 unsignedIntegerValue], v13);
          }
        }
      }

      v9 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v9);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)simSetupFlowCompleted:(unint64_t)completed
{
  v14 = *MEMORY[0x277D85DE8];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:@"transfer.websheet.install.started" object:0];

  v6 = _TSLogDomain();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    eSIMInstallFromWebsheetFlowStarted = self->_eSIMInstallFromWebsheetFlowStarted;
    *buf = 67109378;
    v11 = eSIMInstallFromWebsheetFlowStarted;
    v12 = 2080;
    v13 = "[TSCellularPlanActivatingFlow(TSSIMSetupDelegate) simSetupFlowCompleted:]";
    _os_log_impl(&dword_262AA8000, v6, OS_LOG_TYPE_DEFAULT, "simSetupFlowCompleted, has received notification? %d @%s", buf, 0x12u);
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __74__TSCellularPlanActivatingFlow_TSSIMSetupDelegate__simSetupFlowCompleted___block_invoke;
  v9[3] = &unk_279B445E8;
  v9[4] = self;
  v9[5] = completed;
  dispatch_async(MEMORY[0x277D85CD0], v9);
  v8 = *MEMORY[0x277D85DE8];
}

uint64_t __74__TSCellularPlanActivatingFlow_TSSIMSetupDelegate__simSetupFlowCompleted___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = _TSLogDomain();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) websheetFlow];
    v4 = *(a1 + 40);
    *buf = 138412802;
    v10 = v3;
    v11 = 2048;
    v12 = v4;
    v13 = 2080;
    v14 = "[TSCellularPlanActivatingFlow(TSSIMSetupDelegate) simSetupFlowCompleted:]_block_invoke";
    _os_log_impl(&dword_262AA8000, v2, OS_LOG_TYPE_DEFAULT, "websheet flow %@ completed with type:%ld @%s", buf, 0x20u);
  }

  [*(a1 + 32) setWebsheetFlow:0];
  v5 = [*(a1 + 32) websheetRootViewController];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __74__TSCellularPlanActivatingFlow_TSSIMSetupDelegate__simSetupFlowCompleted___block_invoke_544;
  v8[3] = &unk_279B44578;
  v8[4] = *(a1 + 32);
  [v5 dismissViewControllerAnimated:1 completion:v8];

  [*(a1 + 32) setWebsheetRootViewController:0];
  result = [*(a1 + 32) _maybeDisplayNextIntermediateViewController];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void __74__TSCellularPlanActivatingFlow_TSSIMSetupDelegate__simSetupFlowCompleted___block_invoke_544(uint64_t a1)
{
  v2 = [*(a1 + 32) eSIMInstallFromWebsheetFlowStarted];
  v3 = *(a1 + 32);
  if (v2)
  {
    [v3 setESIMInstallFromWebsheetFlowStarted:0];
    [*(a1 + 32) startTimer:1];
    if ([*(a1 + 32) consolidatedActivatingState] == 1)
    {
      v4 = *(a1 + 32);

      [v4 _maybeMoveToNextItem];
    }
  }

  else
  {
    v5 = [v3 firstViewControllerCallback];

    if (v5)
    {
      v6 = [*(a1 + 32) firstViewControllerCallback];
      v6[2](v6, 0);

      v7 = *(a1 + 32);

      [v7 setFirstViewControllerCallback:0];
    }
  }
}

- (void)setCancelNavigationBarItems:(id)items
{
  itemsCopy = items;
  if (+[TSUtilities isPad])
  {
    v4 = +[TSUtilities inBuddy];
    navigationItem = [itemsCopy navigationItem];
    navigationItem3 = navigationItem;
    if (v4)
    {
      [navigationItem setHidesBackButton:1 animated:0];
    }

    else
    {
      [navigationItem setRightBarButtonItem:self->_cancelButton];
    }
  }

  else
  {
    navigationItem2 = [itemsCopy navigationItem];
    [navigationItem2 setHidesBackButton:1 animated:0];

    if (+[TSUtilities inBuddy])
    {
      goto LABEL_8;
    }

    navigationItem3 = [itemsCopy navigationItem];
    [navigationItem3 setLeftBarButtonItem:self->_cancelButton];
  }

LABEL_8:

  MEMORY[0x2821F96F8]();
}

- (void)viewControllerDidComplete:(id)complete
{
  completeCopy = complete;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  objc_opt_class();
  v5 = 1;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v5 = 0;
        }
      }
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    self->_planEnablementState = 2;
    v6 = completeCopy;
    selectedItems = [v6 selectedItems];
    [(TSCellularPlanActivatingFlow *)self _maybeUpdateUserEnabledPlans:selectedItems];

    objc_initWeak(&location, self);
    v8 = +[TSCellularPlanManagerCache sharedInstance];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __82__TSCellularPlanActivatingFlow_TSSIMSetupFlowDelegate__viewControllerDidComplete___block_invoke;
    v20[3] = &unk_279B44610;
    objc_copyWeak(&v21, &location);
    [v8 planItemsWithCompletion:v20];

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);

    goto LABEL_17;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = completeCopy;
    if ([v9 dismissCause] != 4 && objc_msgSend(v9, "dismissCause") != 1)
    {
      goto LABEL_16;
    }

    v10 = [(TSCellularPlanActivatingFlow *)self _findPlanInfoWithPlanStatus:3];
    if (v10)
    {
      v11 = v10;
      displayPlan = [v10 displayPlan];
      plan = [displayPlan plan];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        deviceID = [plan deviceID];
        v15 = deviceID;
        if (plan && deviceID)
        {
          v16 = +[TSCoreTelephonyClientCache sharedInstance];
          [v16 cancelTransferPlan:plan fromDevice:v15 completionHandler:&__block_literal_global_557];

LABEL_16:
          goto LABEL_18;
        }
      }

      else
      {
        v15 = 0;
      }

      v18 = _TSLogDomain();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [TSCellularPlanActivatingFlow(TSSIMSetupFlowDelegate) viewControllerDidComplete:];
      }
    }

    else
    {
      v11 = _TSLogDomain();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [TSCellularPlanActivatingFlow(TSSIMSetupFlowDelegate) viewControllerDidComplete:];
      }
    }

    goto LABEL_28;
  }

LABEL_17:
  if (!v5)
  {
    v19.receiver = self;
    v19.super_class = TSCellularPlanActivatingFlow;
    [(TSSIMSetupFlow *)&v19 viewControllerDidComplete:completeCopy];
    goto LABEL_28;
  }

LABEL_18:
  navigationController = [completeCopy navigationController];
  [navigationController dismissViewControllerAnimated:1 completion:0];

  [(TSCellularPlanActivatingFlow *)self _maybeDisplayNextIntermediateViewController];
LABEL_28:
}

void __82__TSCellularPlanActivatingFlow_TSSIMSetupFlowDelegate__viewControllerDidComplete___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained planItemsUpdated:v3 planListError:0];
}

void __82__TSCellularPlanActivatingFlow_TSSIMSetupFlowDelegate__viewControllerDidComplete___block_invoke_555(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = _TSLogDomain();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __82__TSCellularPlanActivatingFlow_TSSIMSetupFlowDelegate__viewControllerDidComplete___block_invoke_555_cold_1();
    }
  }
}

- (void)navigateToNextPaneFrom:(id)from navigationController:(id)controller
{
  v13 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  controllerCopy = controller;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ![(TSCellularPlanActivatingFlow *)self _areAllPlansInTerminalState])
  {
    v8 = _TSLogDomain();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v12 = "[TSCellularPlanActivatingFlow(TSSIMSetupFlowDelegate) navigateToNextPaneFrom:navigationController:]";
      _os_log_impl(&dword_262AA8000, v8, OS_LOG_TYPE_INFO, "[I] not all plan in terminal state, we should wait here @%s", buf, 0xCu);
    }

    [(TSSIMSetupFlow *)self setDismissingViewController:0];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = TSCellularPlanActivatingFlow;
    [(TSSIMSetupFlow *)&v10 navigateToNextPaneFrom:fromCopy navigationController:controllerCopy];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)userDidTapCancel
{
  WeakRetained = objc_loadWeakRetained(&self->_oneTimeCodeViewController);

  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->_oneTimeCodeViewController);
    [v4 disableButtonsAndHideSpinnerText];
  }

  objc_storeWeak(&self->_termsAndConditionsViewController, 0);
  objc_storeWeak(&self->_oneTimeCodeViewController, 0);
  v5 = objc_loadWeakRetained(&self->_buddyMLViewController);
  if (v5)
  {
    carrierSetupPlan = self->_carrierSetupPlan;

    if (carrierSetupPlan)
    {
      client = self->_client;
      v8 = self->_carrierSetupPlan;
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __72__TSCellularPlanActivatingFlow_TSSIMSetupFlowDelegate__userDidTapCancel__block_invoke;
      v10[3] = &unk_279B44638;
      v10[4] = self;
      [(CoreTelephonyClient *)client cancelPlanInstallation:v8 completion:v10];
    }
  }

  v9.receiver = self;
  v9.super_class = TSCellularPlanActivatingFlow;
  [(TSSIMSetupFlow *)&v9 userDidTapCancel];
}

void __72__TSCellularPlanActivatingFlow_TSSIMSetupFlowDelegate__userDidTapCancel__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = _TSLogDomain();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __72__TSCellularPlanActivatingFlow_TSSIMSetupFlowDelegate__userDidTapCancel__block_invoke_cold_1(a1, v3, v4);
    }
  }
}

- (id)planName
{
  if ([(NSMutableArray *)self->_installingPlanInfos count]== 1)
  {
    v3 = [(NSMutableArray *)self->_installingPlanInfos objectAtIndexedSubscript:0];
    planName = [v3 planName];
  }

  else
  {
    planName = 0;
  }

  return planName;
}

- (id)phoneNumber
{
  if ([(NSMutableArray *)self->_installingPlanInfos count]== 1)
  {
    v3 = [(NSMutableArray *)self->_installingPlanInfos objectAtIndexedSubscript:0];
    phoneNumber = [v3 phoneNumber];
  }

  else
  {
    phoneNumber = 0;
  }

  return phoneNumber;
}

- (id)targetIccid
{
  if ([(NSMutableArray *)self->_installingPlanInfos count]== 1)
  {
    v3 = [(NSMutableArray *)self->_installingPlanInfos objectAtIndexedSubscript:0];
    targetIccid = [v3 targetIccid];
  }

  else
  {
    targetIccid = 0;
  }

  return targetIccid;
}

- (id)planError
{
  if ([(NSMutableArray *)self->_installingPlanInfos count]== 1)
  {
    v3 = [(NSMutableArray *)self->_installingPlanInfos objectAtIndexedSubscript:0];
    installError = [v3 installError];
  }

  else
  {
    installError = 0;
  }

  return installError;
}

- (id)updatePlanItem
{
  if ([(NSMutableArray *)self->_installingPlanInfos count]== 1)
  {
    v3 = [(NSMutableArray *)self->_installingPlanInfos objectAtIndexedSubscript:0];
    planItem = [v3 planItem];
  }

  else
  {
    planItem = 0;
  }

  return planItem;
}

- (id)carrierName
{
  if ([(NSMutableArray *)self->_installingPlanInfos count]== 1)
  {
    v3 = [(NSMutableArray *)self->_installingPlanInfos objectAtIndexedSubscript:0];
    displayPlan = [v3 displayPlan];

    carrierName = [displayPlan carrierName];
    v6 = [carrierName length];

    if (v6)
    {
      carrierName2 = [displayPlan carrierName];
    }

    else
    {
      v8 = [(NSMutableArray *)self->_installingPlanInfos objectAtIndexedSubscript:0];
      planItem = [v8 planItem];

      carrierName2 = [planItem carrierName];
    }
  }

  else
  {
    carrierName2 = 0;
  }

  return carrierName2;
}

- (id)carrierErrorCode
{
  if ([(NSMutableArray *)self->_installingPlanInfos count]== 1)
  {
    v3 = [(NSMutableArray *)self->_installingPlanInfos objectAtIndexedSubscript:0];
    carrierErrorCode = [v3 carrierErrorCode];
  }

  else
  {
    carrierErrorCode = 0;
  }

  return carrierErrorCode;
}

- (unint64_t)consolidatedActivatingState
{
  v26 = *MEMORY[0x277D85DE8];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v3 = self->_installingPlanInfos;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v21;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v21 != v6)
      {
        objc_enumerationMutation(v3);
      }

      v8 = *(*(&v20 + 1) + 8 * v7);
      if ([v8 activatingState] != 1)
      {
        break;
      }

      if (v5 == ++v7)
      {
        v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v20 objects:v25 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v3 = self->_userEnabledPlanInfos;
    v9 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v16 objects:v24 count:16];
    if (!v9)
    {
      activatingState = 1;
      goto LABEL_19;
    }

    v10 = v9;
    v11 = *v17;
    activatingState = 1;
LABEL_11:
    v13 = 0;
    while (1)
    {
      if (*v17 != v11)
      {
        objc_enumerationMutation(v3);
      }

      v8 = *(*(&v16 + 1) + 8 * v13);
      if ([v8 activatingState] != 1)
      {
        break;
      }

      if (v10 == ++v13)
      {
        v10 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v16 objects:v24 count:16];
        if (v10)
        {
          goto LABEL_11;
        }

        goto LABEL_19;
      }
    }
  }

  activatingState = [v8 activatingState];
LABEL_19:

  v14 = *MEMORY[0x277D85DE8];
  return activatingState;
}

- (BOOL)_areAllPlansInTerminalState
{
  v40 = *MEMORY[0x277D85DE8];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v3 = self->_installingPlanInfos;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v26 objects:v39 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v27;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v27 != v6)
      {
        objc_enumerationMutation(v3);
      }

      v8 = *(*(&v26 + 1) + 8 * v7);
      if (![v8 activatingState])
      {
        break;
      }

      if (v5 == ++v7)
      {
        v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v26 objects:v39 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v15 = _TSLogDomain();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_23;
    }

    identifier = [v8 identifier];
    v17 = SSPlanTransferStatusAsString([v8 status]);
    phoneNumber = [v8 phoneNumber];
    *buf = 138413058;
    v32 = identifier;
    v33 = 2080;
    v34 = v17;
    v35 = 2112;
    v36 = phoneNumber;
    v37 = 2080;
    v38 = "[TSCellularPlanActivatingFlow(Consolidated) _areAllPlansInTerminalState]";
    v19 = "not all plans with a completed state. %@ state: %s, mdn:%@ @%s";
  }

  else
  {
LABEL_9:

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v3 = self->_userEnabledPlanInfos;
    v9 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v22 objects:v30 count:16];
    if (!v9)
    {
LABEL_17:

      result = 1;
      self->_allPlansActivated = 1;
      goto LABEL_24;
    }

    v10 = v9;
    v11 = *v23;
LABEL_11:
    v12 = 0;
    while (1)
    {
      if (*v23 != v11)
      {
        objc_enumerationMutation(v3);
      }

      v13 = *(*(&v22 + 1) + 8 * v12);
      if (![v13 activatingState])
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (v10)
        {
          goto LABEL_11;
        }

        goto LABEL_17;
      }
    }

    v15 = _TSLogDomain();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_23;
    }

    identifier = [v13 identifier];
    v20 = SSPlanTransferStatusAsString([v13 status]);
    phoneNumber = [v13 phoneNumber];
    *buf = 138413058;
    v32 = identifier;
    v33 = 2080;
    v34 = v20;
    v35 = 2112;
    v36 = phoneNumber;
    v37 = 2080;
    v38 = "[TSCellularPlanActivatingFlow(Consolidated) _areAllPlansInTerminalState]";
    v19 = "mm ongoing after enable the plan. %@ state: %s, mdn:%@ @%s";
  }

  _os_log_impl(&dword_262AA8000, v15, OS_LOG_TYPE_DEFAULT, v19, buf, 0x2Au);

LABEL_23:
  result = 0;
LABEL_24:
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)_areAllPlansInPostInstallOrTerminalState
{
  v25 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = self->_installingPlanInfos;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v14 objects:v24 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v15;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v14 + 1) + 8 * i);
        if ((isPostInstallingOrTerminalState([v7 status]) & 1) == 0)
        {
          v9 = _TSLogDomain();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            identifier = [v7 identifier];
            v11 = SSPlanTransferStatusAsString([v7 status]);
            *buf = 138412802;
            v19 = identifier;
            v20 = 2080;
            v21 = v11;
            v22 = 2080;
            v23 = "[TSCellularPlanActivatingFlow(Consolidated) _areAllPlansInPostInstallOrTerminalState]";
            _os_log_impl(&dword_262AA8000, v9, OS_LOG_TYPE_DEFAULT, "not all plans with post install state. %@ state - %s @%s", buf, 0x20u);
          }

          v8 = 0;
          goto LABEL_13;
        }
      }

      v4 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v14 objects:v24 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v8 = 1;
LABEL_13:

  v12 = *MEMORY[0x277D85DE8];
  return v8;
}

- (BOOL)_hasAnyPlanSuccessfullyInstalled
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = self->_installingPlanInfos;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
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

        if (isSuccessState([*(*(&v8 + 1) + 8 * i) status]))
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
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

- (BOOL)_hasAnyPlanSuccessfullyInstalledOrPostInstalled
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = self->_installingPlanInfos;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        if (isSuccessState([v7 status]) || objc_msgSend(v7, "status") == 13)
        {
          v8 = 1;
          goto LABEL_13;
        }
      }

      v4 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
      v8 = 0;
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v8 = 0;
  }

LABEL_13:

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

- (BOOL)_hasAnyDisabledInstallPlan
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = self->_installingPlanInfos;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
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

        if ([*(*(&v8 + 1) + 8 * i) isDisabled])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
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

- (id)_collectAllPhoneNumbersForDevice:(id)device
{
  v39 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  v32 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v4 = self->_installingPlanInfos;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v35;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v35 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v34 + 1) + 8 * i);
        displayPlan = [v9 displayPlan];
        plan = [displayPlan plan];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          displayPlan2 = [v9 displayPlan];
          plan2 = [displayPlan2 plan];

          deviceID = [plan2 deviceID];
          modelName = [deviceID modelName];
          modelName2 = [deviceCopy modelName];
          v18 = [modelName isEqualToString:modelName2];

          if (v18)
          {
            if (!+[TSUtilities isPad])
            {
              phoneNumber = [plan2 phoneNumber];
              v20 = [phoneNumber length];

              if (v20)
              {
                phoneNumber2 = [plan2 phoneNumber];
                formattedPhoneNumber = [phoneNumber2 formattedPhoneNumber];
                goto LABEL_18;
              }
            }

            carrierName = [plan2 carrierName];
            v24 = [carrierName length];

            if (v24)
            {
              carrierName2 = [plan2 carrierName];
              goto LABEL_13;
            }

            if (+[TSUtilities isPad](TSUtilities, "isPad") || ([plan2 label], v26 = objc_claimAutoreleasedReturnValue(), v27 = objc_msgSend(v26, "length"), v26, !v27))
            {
              phoneNumber2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
              formattedPhoneNumber = [phoneNumber2 localizedStringForKey:@"CELLULAR_PLAN" value:&stru_28753DF48 table:@"Localizable"];
LABEL_18:
              v28 = formattedPhoneNumber;
              [v32 addObject:formattedPhoneNumber];
            }

            else
            {
              carrierName2 = [plan2 label];
LABEL_13:
              phoneNumber2 = carrierName2;
              [v32 addObject:carrierName2];
            }
          }

          continue;
        }
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v6);
  }

  v29 = [TSUtilities formatLocAndConcatenateDescriptors:v32];

  v30 = *MEMORY[0x277D85DE8];

  return v29;
}

- (void)_updateInstallError:(id)error withPlanID:(id)d webUrl:(id)url postData:(id)data
{
  errorCopy = error;
  dCopy = d;
  urlCopy = url;
  dataCopy = data;
  if (errorCopy)
  {
    v14 = [(TSCellularPlanActivatingFlow *)self _findPlanInfoWithPlanID:dCopy];
    v15 = v14;
    if (v14)
    {
      [v14 setInstallError:errorCopy];
      [v15 setWebsheetUrl:urlCopy];
      [v15 setPostdata:dataCopy];
    }

    else
    {
      v16 = _TSLogDomain();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [TSCellularPlanActivatingFlow(UpdatePlanInfo) _updateInstallError:withPlanID:webUrl:postData:];
      }
    }
  }
}

- (void)_updateCarrierErrorCode:(id)code withPlanID:(id)d
{
  codeCopy = code;
  dCopy = d;
  if ([codeCopy length])
  {
    v8 = [(TSCellularPlanActivatingFlow *)self _findPlanInfoWithPlanID:dCopy];
    v9 = v8;
    if (v8)
    {
      [v8 setCarrierErrorCode:codeCopy];
    }

    else
    {
      v10 = _TSLogDomain();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [TSCellularPlanActivatingFlow(UpdatePlanInfo) _updateCarrierErrorCode:withPlanID:];
      }
    }
  }
}

- (void)_updateInstallError:(id)error withTargetIccidHash:(id)hash
{
  errorCopy = error;
  hashCopy = hash;
  if (errorCopy)
  {
    v8 = [(TSCellularPlanActivatingFlow *)self _findPlanInfoWithTargetIccidHash:hashCopy];
    v9 = v8;
    if (v8)
    {
      [v8 setInstallError:errorCopy];
    }

    else
    {
      v10 = _TSLogDomain();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [TSCellularPlanActivatingFlow(UpdatePlanInfo) _updateInstallError:withTargetIccidHash:];
      }
    }
  }
}

- (void)_updateTargetIccid:(id)iccid withPlanID:(id)d
{
  v21 = *MEMORY[0x277D85DE8];
  iccidCopy = iccid;
  dCopy = d;
  if ([iccidCopy length])
  {
    v8 = [(TSCellularPlanActivatingFlow *)self _findPlanInfoWithPlanID:dCopy];
    v9 = v8;
    if (v8)
    {
      targetIccid = [v8 targetIccid];
      v11 = [iccidCopy isEqualToString:targetIccid];

      if ((v11 & 1) == 0)
      {
        v12 = _TSLogDomain();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v15 = 138412802;
          v16 = iccidCopy;
          v17 = 2112;
          v18 = dCopy;
          v19 = 2080;
          v20 = "[TSCellularPlanActivatingFlow(UpdatePlanInfo) _updateTargetIccid:withPlanID:]";
          _os_log_impl(&dword_262AA8000, v12, OS_LOG_TYPE_DEFAULT, "mapping %@ -> %@ @%s", &v15, 0x20u);
        }

        [v9 updateTargetIccidInfo:iccidCopy];
      }
    }

    else
    {
      v13 = _TSLogDomain();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [TSCellularPlanActivatingFlow(UpdatePlanInfo) _updateTargetIccid:withPlanID:];
      }
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_updatePlanStatus:(unint64_t)status withPlanID:(id)d
{
  dCopy = d;
  v7 = [(TSCellularPlanActivatingFlow *)self _findPlanInfoWithPlanID:dCopy];
  if (v7)
  {
    [(TSCellularPlanActivatingFlow *)self _updatePlanStatus:status forPlanInfo:v7];
  }

  else
  {
    v8 = _TSLogDomain();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [TSCellularPlanActivatingFlow(UpdatePlanInfo) _updatePlanStatus:withPlanID:];
    }
  }
}

- (void)_updatePlanStatus:(unint64_t)status withTargetIccid:(id)iccid
{
  v14 = *MEMORY[0x277D85DE8];
  iccidCopy = iccid;
  v7 = [(TSCellularPlanActivatingFlow *)self _findPlanInfoWithTargetIccid:iccidCopy];
  if (v7)
  {
    [(TSCellularPlanActivatingFlow *)self _updatePlanStatus:status forPlanInfo:v7];
  }

  else
  {
    v8 = _TSLogDomain();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412546;
      v11 = iccidCopy;
      v12 = 2080;
      v13 = "[TSCellularPlanActivatingFlow(UpdatePlanInfo) _updatePlanStatus:withTargetIccid:]";
      _os_log_impl(&dword_262AA8000, v8, OS_LOG_TYPE_DEFAULT, "cannot find install plan info for target iccid : %@ @%s", &v10, 0x16u);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_updatePlanStatus:(unint64_t)status forPlanInfo:(id)info
{
  v32 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  if (!infoCopy)
  {
    goto LABEL_33;
  }

  if (!+[TSUtilities isPad])
  {
    phoneNumber = [infoCopy phoneNumber];
    v8 = [phoneNumber length];

    if (!v8 && ([infoCopy isDisabled] & 1) == 0)
    {
      waitForPhoneNumber = [infoCopy waitForPhoneNumber];
      if (waitForPhoneNumber)
      {
        v10 = waitForPhoneNumber;
        waitForPhoneNumber2 = [infoCopy waitForPhoneNumber];
        bOOLValue = [waitForPhoneNumber2 BOOLValue];

        if (status != 14 || (bOOLValue & 1) == 0)
        {
          goto LABEL_13;
        }
      }

      else if (status != 14)
      {
        goto LABEL_13;
      }

      v13 = _TSLogDomain();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v24 = 136315138;
        v25 = "[TSCellularPlanActivatingFlow(UpdatePlanInfo) _updatePlanStatus:forPlanInfo:]";
        _os_log_impl(&dword_262AA8000, v13, OS_LOG_TYPE_DEFAULT, "phone number is not ready. set as CTPlanTransferStatusActivatedNoPhoneNumber @%s", &v24, 0xCu);
      }

      status = 10004;
    }
  }

LABEL_13:
  if ([infoCopy status] == status)
  {
    goto LABEL_33;
  }

  [(TSCellularPlanActivatingFlow *)self _maybeStartTimerForNewlyInstalledPlan:infoCopy newStatus:status];
  if (isPostInstallingOrTerminalState([infoCopy status]) && (isPostInstallingOrTerminalState(status) & 1) == 0)
  {
    v21 = _TSLogDomain();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v24 = 136315138;
      v25 = "[TSCellularPlanActivatingFlow(UpdatePlanInfo) _updatePlanStatus:forPlanInfo:]";
      v22 = "Cannot go back from postInstall to Installing state. @%s";
LABEL_31:
      _os_log_impl(&dword_262AA8000, v21, OS_LOG_TYPE_DEFAULT, v22, &v24, 0xCu);
    }

LABEL_32:

    goto LABEL_33;
  }

  if (isTerminalState([infoCopy status]) && status == 13 && (objc_msgSend(infoCopy, "isDisabled") & 1) == 0)
  {
    v21 = _TSLogDomain();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v24 = 136315138;
      v25 = "[TSCellularPlanActivatingFlow(UpdatePlanInfo) _updatePlanStatus:forPlanInfo:]";
      v22 = "cannot go back from terminal state to PostInstalling @%s";
      goto LABEL_31;
    }

    goto LABEL_32;
  }

  v14 = _TSLogDomain();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [infoCopy identifier];
    v16 = SSPlanTransferStatusAsString(status);
    v24 = 138413058;
    v25 = identifier;
    v26 = 2048;
    statusCopy = status;
    v28 = 2080;
    v29 = v16;
    v30 = 2080;
    v31 = "[TSCellularPlanActivatingFlow(UpdatePlanInfo) _updatePlanStatus:forPlanInfo:]";
    _os_log_impl(&dword_262AA8000, v14, OS_LOG_TYPE_DEFAULT, "receive status update for %@ : %lu(%s) @%s", &v24, 0x2Au);
  }

  [infoCopy setStatus:status];
  topViewController = [(TSSIMSetupFlow *)self topViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    topViewController2 = [(TSSIMSetupFlow *)self topViewController];
    identifier2 = [infoCopy identifier];
    [topViewController2 updateInstallationStatus:status forPlanID:identifier2];
  }

  if (status == 12)
  {
    [(TSCellularPlanActivatingFlow *)self _displayCarrierSetupViewController:infoCopy];
  }

  else if ([(TSCellularPlanActivatingFlow *)self _areAllPlansInPostInstallOrTerminalState])
  {
    [(TSCellularPlanActivatingFlow *)self _maybeMoveToNextItem];
  }

LABEL_33:

  v23 = *MEMORY[0x277D85DE8];
}

- (void)_maybeUpdatePlanNameWithoutPlanID:(id)d
{
  v15 = *MEMORY[0x277D85DE8];
  dCopy = d;
  if ([dCopy length])
  {
    if ([(NSMutableArray *)self->_installingPlanInfos count]== 1)
    {
      v5 = [(NSMutableArray *)self->_installingPlanInfos objectAtIndexedSubscript:0];
      planName = [v5 planName];
      v7 = [planName length];

      if (!v7)
      {
        v8 = _TSLogDomain();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v11 = 138412546;
          v12 = dCopy;
          v13 = 2080;
          v14 = "[TSCellularPlanActivatingFlow(UpdatePlanInfo) _maybeUpdatePlanNameWithoutPlanID:]";
          _os_log_impl(&dword_262AA8000, v8, OS_LOG_TYPE_DEFAULT, "set plan name - %@ @%s", &v11, 0x16u);
        }

        v9 = [(NSMutableArray *)self->_installingPlanInfos objectAtIndexedSubscript:0];
        [v9 setPlanName:dCopy];
      }
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_updateTargetIccidWithoutPlanID:(id)d
{
  v15 = *MEMORY[0x277D85DE8];
  dCopy = d;
  if ([(NSMutableArray *)self->_installingPlanInfos count]== 1)
  {
    v5 = [(NSMutableArray *)self->_installingPlanInfos objectAtIndexedSubscript:0];
    targetIccid = [v5 targetIccid];
    v7 = [targetIccid length];

    if (!v7)
    {
      v8 = _TSLogDomain();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 138412546;
        v12 = dCopy;
        v13 = 2080;
        v14 = "[TSCellularPlanActivatingFlow(UpdatePlanInfo) _updateTargetIccidWithoutPlanID:]";
        _os_log_impl(&dword_262AA8000, v8, OS_LOG_TYPE_DEFAULT, "update target iccid %@ without plan ID @%s", &v11, 0x16u);
      }

      v9 = [(NSMutableArray *)self->_installingPlanInfos objectAtIndexedSubscript:0];
      [v9 updateTargetIccidInfo:dCopy];
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_maybeUpdatePlanNameForTargetIccid:(id)iccid planName:(id)name
{
  v21 = *MEMORY[0x277D85DE8];
  iccidCopy = iccid;
  nameCopy = name;
  if ([iccidCopy length] && objc_msgSend(nameCopy, "length"))
  {
    v8 = [(TSCellularPlanActivatingFlow *)self _findPlanInfoWithTargetIccid:iccidCopy];
    v9 = v8;
    if (v8)
    {
      planName = [v8 planName];
      v11 = [planName length];

      if (!v11)
      {
        v12 = _TSLogDomain();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v15 = 138412802;
          v16 = nameCopy;
          v17 = 2112;
          v18 = iccidCopy;
          v19 = 2080;
          v20 = "[TSCellularPlanActivatingFlow(UpdatePlanInfo) _maybeUpdatePlanNameForTargetIccid:planName:]";
          _os_log_impl(&dword_262AA8000, v12, OS_LOG_TYPE_DEFAULT, "set plan name %@ for plan %@ @%s", &v15, 0x20u);
        }

        [v9 setPlanName:nameCopy];
      }
    }

    else
    {
      v13 = _TSLogDomain();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 138412546;
        v16 = iccidCopy;
        v17 = 2080;
        v18 = "[TSCellularPlanActivatingFlow(UpdatePlanInfo) _maybeUpdatePlanNameForTargetIccid:planName:]";
        _os_log_impl(&dword_262AA8000, v13, OS_LOG_TYPE_DEFAULT, "cannot find install or user enable plan info for targetIccid : %@ @%s", &v15, 0x16u);
      }
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_maybeUpdatePhysicalSIMStatus:(id)status
{
  v16 = *MEMORY[0x277D85DE8];
  statusCopy = status;
  if (![statusCopy type])
  {
    userEnabledPlanInfos = self->_userEnabledPlanInfos;
    iccid = [statusCopy iccid];
    v7 = findPlanInfoWithTargetIccid(userEnabledPlanInfos, iccid);

    if (v7)
    {
      goto LABEL_3;
    }

    iccidToEnable = self->_iccidToEnable;
    iccid2 = [statusCopy iccid];
    LODWORD(iccidToEnable) = [(NSString *)iccidToEnable isEqualToString:iccid2];

    if (!iccidToEnable)
    {
      goto LABEL_8;
    }

    v10 = _TSLogDomain();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 136315138;
      v15 = "[TSCellularPlanActivatingFlow(UpdatePlanInfo) _maybeUpdatePhysicalSIMStatus:]";
      _os_log_impl(&dword_262AA8000, v10, OS_LOG_TYPE_DEFAULT, "Try finding from installing plans info @%s", &v14, 0xCu);
    }

    installingPlanInfos = self->_installingPlanInfos;
    iccid3 = [statusCopy iccid];
    v7 = findPlanInfoWithTargetIccid(installingPlanInfos, iccid3);

    if (v7)
    {
LABEL_3:
      [(TSCellularPlanActivatingFlow *)self _handleActivatedItemUpdate:statusCopy];
    }

    else
    {
LABEL_8:
      v7 = _TSLogDomain();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [TSCellularPlanActivatingFlow(UpdatePlanInfo) _maybeUpdatePhysicalSIMStatus:];
      }
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_maybeUpdateUserEnabledPlans:(id)plans
{
  v22 = *MEMORY[0x277D85DE8];
  plansCopy = plans;
  v5 = objc_opt_new();
  userEnabledPlanInfos = self->_userEnabledPlanInfos;
  self->_userEnabledPlanInfos = v5;

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = plansCopy;
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        iccid = [v12 iccid];
        v14 = [(TSCellularPlanActivatingFlow *)self _findPlanInfoWithTargetIccid:iccid];

        if (!v14)
        {
          v14 = [[SSInstallPlanInformation alloc] initWithItem:v12];
          [(NSMutableArray *)self->_userEnabledPlanInfos addObject:v14];
          if ([v12 isSelected])
          {
            [(TSCellularPlanActivatingFlow *)self _handleActivatedItemUpdate:v12];
          }

          [(TSCellularPlanActivatingFlow *)self startTimer:1];
        }

        if (([v12 isSelected] & 1) == 0)
        {
          iccid2 = [v12 iccid];
          [(TSCellularPlanActivatingFlow *)self _updatePlanStatus:13 withTargetIccid:iccid2];

          [(SSInstallPlanInformation *)v14 setIsDisabled:0];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_enqueueInteractiveUI:(id)i
{
  iCopy = i;
  if (iCopy)
  {
    pendingInteractiveViewControllers = self->_pendingInteractiveViewControllers;
    v8 = iCopy;
    if (!pendingInteractiveViewControllers)
    {
      v6 = objc_opt_new();
      v7 = self->_pendingInteractiveViewControllers;
      self->_pendingInteractiveViewControllers = v6;

      pendingInteractiveViewControllers = self->_pendingInteractiveViewControllers;
    }

    [(NSMutableArray *)pendingInteractiveViewControllers addObject:v8];
  }

  MEMORY[0x2821F96F8]();
}

- (id)_dequeueInteractiveUI
{
  if ([(NSMutableArray *)self->_pendingInteractiveViewControllers count])
  {
    firstObject = [(NSMutableArray *)self->_pendingInteractiveViewControllers firstObject];
    [(NSMutableArray *)self->_pendingInteractiveViewControllers removeObjectAtIndex:0];
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

- (void)_maybeDisplayInteractiveUI:(id)i
{
  v24 = *MEMORY[0x277D85DE8];
  iCopy = i;
  if (iCopy)
  {
    navigationController = [(TSSIMSetupFlow *)self navigationController];
    if (navigationController && (-[TSSIMSetupFlow navigationController](self, "navigationController"), v6 = objc_claimAutoreleasedReturnValue(), [v6 topViewController], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, navigationController, v7))
    {
      WeakRetained = objc_loadWeakRetained(&self->_presentedViewController);

      if (WeakRetained)
      {
        v9 = _TSLogDomain();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = objc_loadWeakRetained(&self->_presentedViewController);
          *buf = 138412802;
          v19 = v10;
          v20 = 2112;
          v21 = iCopy;
          v22 = 2080;
          v23 = "[TSCellularPlanActivatingFlow(InteractiveUI) _maybeDisplayInteractiveUI:]";
          _os_log_impl(&dword_262AA8000, v9, OS_LOG_TYPE_DEFAULT, "%@ in present. enqueue : %@ @%s", buf, 0x20u);
        }

        [(TSCellularPlanActivatingFlow *)self _enqueueInteractiveUI:iCopy];
      }

      else if ([(NSMutableArray *)self->_pendingInteractiveViewControllers count])
      {
        _dequeueInteractiveUI = [(TSCellularPlanActivatingFlow *)self _dequeueInteractiveUI];
        [(TSCellularPlanActivatingFlow *)self _enqueueInteractiveUI:iCopy];
        v14 = _TSLogDomain();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412802;
          v19 = _dequeueInteractiveUI;
          v20 = 2112;
          v21 = iCopy;
          v22 = 2080;
          v23 = "[TSCellularPlanActivatingFlow(InteractiveUI) _maybeDisplayInteractiveUI:]";
          _os_log_impl(&dword_262AA8000, v14, OS_LOG_TYPE_DEFAULT, "presenting %@, enqueue %@ @%s", buf, 0x20u);
        }

        [(TSCellularPlanActivatingFlow *)self _maybeDisplayInteractiveUI:_dequeueInteractiveUI];
      }

      else
      {
        objc_storeWeak(&self->_presentedViewController, iCopy);
        if (objc_opt_respondsToSelector())
        {
          objc_initWeak(buf, self);
          v15[0] = MEMORY[0x277D85DD0];
          v15[1] = 3221225472;
          v15[2] = __74__TSCellularPlanActivatingFlow_InteractiveUI___maybeDisplayInteractiveUI___block_invoke;
          v15[3] = &unk_279B44660;
          v15[4] = self;
          v16 = iCopy;
          objc_copyWeak(&v17, buf);
          [v16 prepare:v15];
          objc_destroyWeak(&v17);

          objc_destroyWeak(buf);
        }

        else
        {
          [(TSCellularPlanActivatingFlow *)self _displayIntermediateViewController:iCopy];
        }
      }
    }

    else
    {
      v11 = _TSLogDomain();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [TSCellularPlanActivatingFlow(InteractiveUI) _maybeDisplayInteractiveUI:?];
      }

      [(TSCellularPlanActivatingFlow *)self _enqueueInteractiveUI:iCopy];
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __74__TSCellularPlanActivatingFlow_InteractiveUI___maybeDisplayInteractiveUI___block_invoke(uint64_t a1, char a2)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [WeakRetained _displayIntermediateViewController:*(a1 + 40)];
  }

  else
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);

    [v3 viewControllerDidComplete:v4];
  }
}

- (void)_maybeDisplayNextIntermediateViewController
{
  objc_storeWeak(&self->_presentedViewController, 0);
  navigationController = [(TSSIMSetupFlow *)self navigationController];
  if (navigationController)
  {
    v4 = navigationController;
    navigationController2 = [(TSSIMSetupFlow *)self navigationController];
    topViewController = [navigationController2 topViewController];

    if (topViewController)
    {
      if ([(NSMutableArray *)self->_pendingInteractiveViewControllers count])
      {
        _dequeueInteractiveUI = [(TSCellularPlanActivatingFlow *)self _dequeueInteractiveUI];
        [(TSCellularPlanActivatingFlow *)self _maybeDisplayInteractiveUI:_dequeueInteractiveUI];
      }
    }
  }
}

- (void)_displayIntermediateViewController:(id)controller
{
  controllerCopy = controller;
  navigationController = [(TSSIMSetupFlow *)self navigationController];
  topViewController = [navigationController topViewController];

  objc_initWeak(&location, self);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __82__TSCellularPlanActivatingFlow_InteractiveUI___displayIntermediateViewController___block_invoke;
  v9[3] = &unk_279B446B0;
  objc_copyWeak(&v12, &location);
  v7 = controllerCopy;
  v10 = v7;
  v8 = topViewController;
  v11 = v8;
  [(TSCellularPlanActivatingFlow *)self _maybeDismissAlert:v9];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __82__TSCellularPlanActivatingFlow_InteractiveUI___displayIntermediateViewController___block_invoke(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __82__TSCellularPlanActivatingFlow_InteractiveUI___displayIntermediateViewController___block_invoke_606;
    block[3] = &unk_279B44688;
    v5 = a1[4];
    v6 = a1[5];
    v7 = WeakRetained;
    dispatch_async(MEMORY[0x277D85CD0], block);

    v3 = v5;
  }

  else
  {
    v3 = _TSLogDomain();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __82__TSCellularPlanActivatingFlow_InteractiveUI___displayIntermediateViewController___block_invoke_cold_1();
    }
  }
}

void __82__TSCellularPlanActivatingFlow_InteractiveUI___displayIntermediateViewController___block_invoke_606(id *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = _TSLogDomain();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v4 = a1[5];
    v9 = 138412802;
    v10 = v3;
    v11 = 2112;
    v12 = v4;
    v13 = 2080;
    v14 = "[TSCellularPlanActivatingFlow(InteractiveUI) _displayIntermediateViewController:]_block_invoke";
    _os_log_impl(&dword_262AA8000, v2, OS_LOG_TYPE_DEFAULT, "present : %@ on cur : %@ @%s", &v9, 0x20u);
  }

  v5 = a1[4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = a1[4];
  }

  else
  {
    v6 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:a1[4]];
  }

  v7 = v6;
  [v6 setModalPresentationStyle:2];
  [a1[6] _stopTimerWithBackgroundTaskState:1];
  [a1[5] presentViewController:v7 animated:1 completion:0];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_displayConfirmationCodeViewController:(id)controller
{
  controllerCopy = controller;
  planName = [controllerCopy planName];
  displayPlan = [controllerCopy displayPlan];
  carrierName = [displayPlan carrierName];
  v8 = [carrierName length];

  if (v8)
  {
    displayPlan2 = [controllerCopy displayPlan];
    carrierName2 = [displayPlan2 carrierName];

    planName = carrierName2;
  }

  v11 = [[SSConfirmationCodeViewController alloc] initAsMidOperationWithCarrierName:planName];
  [v11 setDelegate:self];
  [controllerCopy setConfirmationCodeViewController:v11];
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __86__TSCellularPlanActivatingFlow_InteractiveUI___displayConfirmationCodeViewController___block_invoke;
  block[3] = &unk_279B443D8;
  objc_copyWeak(&v15, &location);
  v14 = v11;
  v12 = v11;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __86__TSCellularPlanActivatingFlow_InteractiveUI___displayConfirmationCodeViewController___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _maybeDisplayInteractiveUI:*(a1 + 32)];
}

- (void)_displayTermsAndConditionsViewController:(id)controller mainText:(id)text
{
  textCopy = text;
  controllerCopy = controller;
  obj = [[TSTermsAndConditionsViewController alloc] initWithSourceIccid:controllerCopy mainText:textCopy];

  v8 = objc_storeWeak(&self->_termsAndConditionsViewController, obj);
  [(TSTermsAndConditionsViewController *)obj setDelegate:self];

  self->_termsAndConditionsShown = 1;
  [(TSCellularPlanActivatingFlow *)self _maybeDisplayInteractiveUI:obj];
}

- (void)_displayWebsheetViewController:(id)controller
{
  controllerCopy = controller;
  v12 = [controllerCopy objectForKey:@"PlanId"];
  v5 = [(TSCellularPlanActivatingFlow *)self _findPlanInfoWithPlanID:v12];
  [(TSCellularPlanActivatingFlow *)self _updatePlanStatus:3 forPlanInfo:v5];
  v6 = [controllerCopy objectForKeyedSubscript:@"WebsheetURLKey"];
  v7 = [controllerCopy objectForKeyedSubscript:@"WebsheetPostdataKey"];

  v8 = [TSWebsheetViewController alloc];
  displayPlan = [v5 displayPlan];
  carrierName = [displayPlan carrierName];
  v11 = [(TSWebsheetViewController *)v8 initWithURL:v6 postdata:v7 carrierName:carrierName];

  [(TSWebsheetViewController *)v11 setDelegate:self];
  [(TSCellularPlanActivatingFlow *)self _maybeDisplayInteractiveUI:v11];
}

- (void)_displayCarrierSetupViewController:(id)controller
{
  controllerCopy = controller;
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __82__TSCellularPlanActivatingFlow_InteractiveUI___displayCarrierSetupViewController___block_invoke;
  v5[3] = &unk_279B44400;
  objc_copyWeak(&v6, &location);
  [(TSCellularPlanActivatingFlow *)self _getWebsheetInfo:controllerCopy completion:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __82__TSCellularPlanActivatingFlow_InteractiveUI___displayCarrierSetupViewController___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (!WeakRetained)
  {
    v3 = _TSLogDomain();
    if (os_log_type_enabled(&v3->super.super.super.super, OS_LOG_TYPE_ERROR))
    {
      __82__TSCellularPlanActivatingFlow_InteractiveUI___displayCarrierSetupViewController___block_invoke_cold_1();
    }

    goto LABEL_7;
  }

  if (WeakRetained[12] && WeakRetained[13])
  {
    v3 = [[TSBuddyMLViewController alloc] initWithCTPlan:WeakRetained[34] websheetURL:WeakRetained[12] postdata:WeakRetained[13]];
    [v2 setBuddyMLViewController:v3];
    v4 = [v2 buddyMLViewController];
    [v4 setDelegate:v2];

    [v2 _maybeDisplayInteractiveUI:v3];
LABEL_7:
  }
}

- (void)_getWebsheetInfo:(id)info completion:(id)completion
{
  location[3] = *MEMORY[0x277D85DE8];
  infoCopy = info;
  completionCopy = completion;
  displayPlan = [infoCopy displayPlan];
  if (displayPlan)
  {
    objc_initWeak(location, self);
    v9 = +[TSCoreTelephonyClientCache sharedInstance];
    plan = [displayPlan plan];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __75__TSCellularPlanActivatingFlow_InteractiveUI___getWebsheetInfo_completion___block_invoke;
    v13[3] = &unk_279B446D8;
    objc_copyWeak(&v16, location);
    v15 = completionCopy;
    v14 = displayPlan;
    [v9 getWebsheetInfoForPlan:plan inBuddy:0 completion:v13];

    objc_destroyWeak(&v16);
    objc_destroyWeak(location);
  }

  else
  {
    v11 = _TSLogDomain();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(location[0]) = 136315138;
      *(location + 4) = "[TSCellularPlanActivatingFlow(InteractiveUI) _getWebsheetInfo:completion:]";
      _os_log_impl(&dword_262AA8000, v11, OS_LOG_TYPE_DEFAULT, "No matching SODA plan in the plans @%s", location, 0xCu);
    }

    completionCopy[2](completionCopy);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __75__TSCellularPlanActivatingFlow_InteractiveUI___getWebsheetInfo_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v9 = [*(a1 + 32) plan];
    v10 = *(WeakRetained + 34);
    *(WeakRetained + 34) = v9;

    objc_storeStrong(WeakRetained + 12, a2);
    objc_storeStrong(WeakRetained + 13, a3);
  }

  else
  {
    v11 = _TSLogDomain();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __75__TSCellularPlanActivatingFlow_InteractiveUI___getWebsheetInfo_completion___block_invoke_cold_1();
    }
  }

  (*(*(a1 + 40) + 16))();
}

- (void)initWithSelectedPlans:confirmCellularPlanTransfer:isForCrossPlatformTransfer:session:sourceOsVersion:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_maybeReplyFirstViewControllerCallbackWithViewController:(NSObject *)a3 .cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = [a1 topViewController];
  v7 = 138412802;
  v8 = v5;
  v9 = 2112;
  v10 = a2;
  v11 = 2080;
  v12 = "[TSCellularPlanActivatingFlow _maybeReplyFirstViewControllerCallbackWithViewController:]";
  _os_log_fault_impl(&dword_262AA8000, a3, OS_LOG_TYPE_FAULT, "[F]first vc callback is already cleared. topVC:%@, vc:%@ @%s", &v7, 0x20u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_maybePresentFirstViewController:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __65__TSCellularPlanActivatingFlow__maybePresentFirstViewController___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_firstViewController
{
  v7 = *MEMORY[0x277D85DE8];
  [*self count];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_stopTimerWithBackgroundTaskState:(os_log_t)log .cold.1(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "[TSCellularPlanActivatingFlow _stopTimerWithBackgroundTaskState:]";
  _os_log_debug_impl(&dword_262AA8000, log, OS_LOG_TYPE_DEBUG, "[Db] stop timer @%s", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void __56__TSCellularPlanActivatingFlow__cancelTransferringPlan___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __95__TSCellularPlanActivatingFlow_TSCellularPlanManagerCacheDelegate___handleActivatedItemUpdate___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __114__TSCellularPlanActivatingFlow_TSCellularPlanManagerCacheDelegate___shouldWaitUntilPhoneNumberBeReady_completion___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __82__TSCellularPlanActivatingFlow_TSSIMSetupFlowDelegate__viewControllerDidComplete___block_invoke_555_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __72__TSCellularPlanActivatingFlow_TSSIMSetupFlowDelegate__userDidTapCancel__block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = *(*(a1 + 32) + 272);
  v5 = 138412802;
  v6 = v3;
  v7 = 2112;
  v8 = a2;
  v9 = 2080;
  v10 = "[TSCellularPlanActivatingFlow(TSSIMSetupFlowDelegate) userDidTapCancel]_block_invoke";
  _os_log_error_impl(&dword_262AA8000, log, OS_LOG_TYPE_ERROR, "[E]Failed to cancel plan installation for:%@ error:%@ @%s", &v5, 0x20u);
  v4 = *MEMORY[0x277D85DE8];
}

void __82__TSCellularPlanActivatingFlow_InteractiveUI___displayIntermediateViewController___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __82__TSCellularPlanActivatingFlow_InteractiveUI___displayCarrierSetupViewController___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __75__TSCellularPlanActivatingFlow_InteractiveUI___getWebsheetInfo_completion___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end