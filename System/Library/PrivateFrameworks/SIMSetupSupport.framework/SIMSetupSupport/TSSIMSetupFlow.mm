@interface TSSIMSetupFlow
+ (TSSIMSetupFlow)flowWithOptions:(id)a3;
+ (id)_flowWithOptions:(id)a3;
+ (id)createTSRemotePlanWebsheetContext:(id)a3;
+ (void)needsToRun:(id)a3;
+ (void)needsToRunUsingMessageSession:(id)a3 completion:(id)a4;
+ (void)needsToRunUsingMessageSession:(id)a3 transferablePlanOnSource:(BOOL)a4 completion:(id)a5;
- (BOOL)_needCustomizeBackAction:(id)a3;
- (BOOL)_startOver:(id)a3;
- (BOOL)handleStartOverWithEntryPoint:(id)a3 navigationController:(id)a4 completion:(id)a5;
- (TSSIMSetupDelegate)delegate;
- (TSSIMSetupFlow)init;
- (TSSIMSetupFlow)parentFlow;
- (TSSetupFlowItem)nextViewController;
- (TSSetupFlowItem)topViewController;
- (UINavigationController)navigationController;
- (UIViewController)dismissingViewController;
- (id)firstViewControllerForDisplay;
- (id)rootFlow;
- (id)rootViewController;
- (void)_maybeClearSubFlow;
- (void)_maybeClearSubFlowViewController:(id)a3;
- (void)_maybeSetNavigationController:(id)a3;
- (void)_notifyFlowCompletion:(unint64_t)a3;
- (void)_popAllSIMSetupFlowViewControllers:(id)a3;
- (void)_pushStartOverViewController:(id)a3 from:(id)a4;
- (void)addSubFlowViewController:(id)a3;
- (void)appBackgrounded;
- (void)appForegrounded;
- (void)attemptFailed;
- (void)cancelNextPane;
- (void)firstViewController:(id)a3;
- (void)maybePrepareNextDisplayViewController:(id)a3 completion:(id)a4;
- (void)maybeRegisterDismissHandler:(id)a3;
- (void)navigateToNextPaneFrom:(id)a3 navigationController:(id)a4;
- (void)presentationControllerDidDismiss:(id)a3;
- (void)receivedResponse;
- (void)receivedResponseWithVC:(id)a3;
- (void)restartWith:(id)a3;
- (void)rootFlow;
- (void)rootViewController;
- (void)setTopViewController:(id)a3;
- (void)showFirstViewControllerWithHostController:(id)a3 completion:(id)a4;
- (void)showLoadFailureAlert:(id)a3 error:(id)a4;
- (void)startOverWithFirstViewController:(id)a3;
- (void)userDidTapCancel;
- (void)viewControllerDidComplete:(id)a3;
- (void)waitForResponse:(id)a3;
@end

@implementation TSSIMSetupFlow

- (void)setTopViewController:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 conformsToProtocol:&unk_28758ABD0])
  {
    [v4 setDelegate:self];
  }

  objc_storeWeak(&self->_topViewController, v4);
  WeakRetained = objc_loadWeakRetained(&self->_navigationController);

  if (WeakRetained)
  {
    v6 = 0;
  }

  else
  {
    v6 = v4;
  }

  firstViewControllerInstance = self->_firstViewControllerInstance;
  self->_firstViewControllerInstance = v6;

  v8 = _TSLogDomain();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412802;
    v15 = v4;
    v16 = 2112;
    v17 = self;
    v18 = 2080;
    v19 = "[TSSIMSetupFlow setTopViewController:]";
    _os_log_impl(&dword_262AA8000, v8, OS_LOG_TYPE_DEFAULT, "inject back button action for : %@, handler: %@ @%s", &v14, 0x20u);
  }

  if (_os_feature_enabled_impl())
  {
    v9 = 0;
  }

  else
  {
    v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v9 = [v10 localizedStringForKey:@"BACK" value:&stru_28753DF48 table:@"Localizable"];
  }

  v11 = [objc_alloc(MEMORY[0x277D751E0]) initWithTitle:v9 style:0 target:self action:sel_restartWith_];
  v12 = [v4 navigationItem];
  [v12 setBackBarButtonItem:v11];

  v13 = *MEMORY[0x277D85DE8];
}

- (TSSetupFlowItem)topViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_topViewController);

  return WeakRetained;
}

+ (void)needsToRun:(id)a3
{
  if (a3)
  {
    (*(a3 + 2))(a3, 0);
  }
}

+ (void)needsToRunUsingMessageSession:(id)a3 completion:(id)a4
{
  if (a4)
  {
    (*(a4 + 2))(a4, 0);
  }
}

+ (void)needsToRunUsingMessageSession:(id)a3 transferablePlanOnSource:(BOOL)a4 completion:(id)a5
{
  if (a5)
  {
    (*(a5 + 2))(a5, 0);
  }
}

+ (id)createTSRemotePlanWebsheetContext:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(TSRemotePlanWebsheetContext);
  v5 = [v3 objectForKeyedSubscript:@"CarrierNameKey"];
  [(TSRemotePlanWebsheetContext *)v4 setCarrierName:v5];

  v6 = [v3 objectForKeyedSubscript:@"SubscriptionContextKey"];
  [(TSRemotePlanWebsheetContext *)v4 setSubscriptionContext:v6];

  v7 = [v3 valueForKey:@"FlowTypeKey"];
  -[TSRemotePlanWebsheetContext setFlowType:](v4, "setFlowType:", [v7 intValue]);

  v8 = [v3 objectForKeyedSubscript:@"Iccid"];
  if (v8)
  {
    v9 = [v3 objectForKeyedSubscript:@"Iccid"];
    [(TSRemotePlanWebsheetContext *)v4 setIccid:v9];
  }

  else
  {
    [(TSRemotePlanWebsheetContext *)v4 setIccid:&stru_28753DF48];
  }

  [(TSRemotePlanWebsheetContext *)v4 setUseLiveID:0];
  v10 = [v3 objectForKeyedSubscript:@"WebsheetURLKey"];
  [(TSRemotePlanWebsheetContext *)v4 setUrl:v10];

  v11 = [v3 objectForKeyedSubscript:@"WebsheetPostdataKey"];
  [(TSRemotePlanWebsheetContext *)v4 setPostdata:v11];

  v12 = [v3 valueForKey:@"LiveIdEnabledKey"];
  v13 = v12;
  if (v12)
  {
    -[TSRemotePlanWebsheetContext setUseLiveID:](v4, "setUseLiveID:", [v12 BOOLValue]);
  }

  return v4;
}

+ (TSSIMSetupFlow)flowWithOptions:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (+[TSUtilities hasCellularBaseband])
  {
    v4 = [TSSIMSetupFlow _flowWithOptions:v3];
    if (v4)
    {
      v5 = [v3 valueForKey:@"FlowTypeKey"];
      [v4 setFlowType:{objc_msgSend(v5, "intValue")}];
    }
  }

  else
  {
    v6 = _TSLogDomain();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315138;
      v10 = "+[TSSIMSetupFlow flowWithOptions:]";
      _os_log_impl(&dword_262AA8000, v6, OS_LOG_TYPE_DEFAULT, "no cellular support!!! @%s", &v9, 0xCu);
    }

    v4 = 0;
  }

  v7 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)_flowWithOptions:(id)a3
{
  v151 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _TSLogDomain();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v148 = v4;
    v149 = 2080;
    v150 = "+[TSSIMSetupFlow _flowWithOptions:]";
    _os_log_impl(&dword_262AA8000, v5, OS_LOG_TYPE_DEFAULT, "%@ @%s", buf, 0x16u);
  }

  v6 = [v4 valueForKey:@"FlowTypeKey"];
  v7 = [v6 intValue];

  v8 = 0;
  switch(v7)
  {
    case 1:
      v11 = [v4 valueForKey:@"ConfirmationCodeRequiredKey"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v35 = [v11 BOOLValue];
      }

      else
      {
        v35 = 0;
      }

      v12 = [[TSUserResponseFlow alloc] initWithConfirmationCodeRequired:v35];
      goto LABEL_189;
    case 2:
      v30 = [v4 objectForKeyedSubscript:@"Plan"];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v32 = [TSWebsheetSignupFlow alloc];
        v33 = [v4 objectForKeyedSubscript:@"Plan"];
        v34 = [(TSWebsheetSignupFlow *)v32 initWithPlan:v33];
LABEL_141:
        v8 = v34;

        goto LABEL_191;
      }

      v83 = [v4 objectForKeyedSubscript:@"Iccid"];
      objc_opt_class();
      v84 = objc_opt_isKindOfClass();

      if (v84)
      {
        v85 = [TSWebsheetSignupFlow alloc];
        v33 = [v4 objectForKeyedSubscript:@"Iccid"];
        v34 = [(TSWebsheetSignupFlow *)v85 initWithIccid:v33];
        goto LABEL_141;
      }

      v102 = [v4 valueForKey:@"WebsheetURLKey"];
      objc_opt_class();
      v103 = objc_opt_isKindOfClass();

      if ((v103 & 1) == 0)
      {
LABEL_177:
        v8 = 0;
        goto LABEL_191;
      }

      v104 = [v4 valueForKey:@"RequestTypeKey"];
      v11 = v104;
      if (v104)
      {
        v105 = [v104 unsignedIntegerValue];
      }

      else
      {
        v105 = 0;
      }

      v125 = [v4 valueForKey:@"SkipIntroPaneForWebsheetFlow"];
      v18 = v125;
      if (v125)
      {
        v126 = [v125 BOOLValue];
      }

      else
      {
        v126 = 0;
      }

      v127 = [TSWebsheetSignupFlow alloc];
      v128 = [v4 valueForKey:@"WebsheetURLKey"];
      v129 = [v4 valueForKey:@"WebsheetPostdataKey"];
      v8 = [(TSWebsheetSignupFlow *)v127 initWithRequestType:v105 skipIntroPaneForWebsheetFlow:v126 websheetURL:v128 postdata:v129];

LABEL_173:
      goto LABEL_190;
    case 3:
      v11 = [v4 valueForKey:@"RequireSetupKey-DEBUG"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v26 = [v11 BOOLValue];
      }

      else
      {
        v26 = 0;
      }

      v18 = [v4 objectForKeyedSubscript:@"TransferBackPlan"];
      v82 = [MEMORY[0x277CBEB68] null];

      if (v18 == v82)
      {

        v18 = 0;
      }

      v21 = [[TSActivationFlowWithSimSetupFlow alloc] initRequireSetup:v26 transferBackPlan:v18];
      goto LABEL_132;
    case 4:
      v11 = [v4 valueForKey:@"RequireSetupKey-DEBUG"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v23 = [v11 BOOLValue] ^ 1;
      }

      else
      {
        v23 = 1;
      }

      v18 = [v4 valueForKey:@"SetupNewIccidKey"];
      v62 = [v4 valueForKey:@"ForceDualSIMSetup"];
      v68 = -[TSSetupAssistantSIMSetupFlow initWithIccid:showAddPlan:forceDualSIMSetup:allowDismiss:]([TSSetupAssistantSIMSetupFlow alloc], "initWithIccid:showAddPlan:forceDualSIMSetup:allowDismiss:", v18, v23, [v62 BOOLValue], 1);
      goto LABEL_171;
    case 5:
      v42 = [v4 objectForKeyedSubscript:@"MessageSessionKey"];
      v43 = [v4 objectForKeyedSubscript:@"HasTransferablePlan"];
      v44 = [v43 BOOLValue];

      v45 = [v4 objectForKeyedSubscript:@"IsStandaloneProximityTransfer"];
      v46 = [v45 BOOLValue];

      v18 = [v4 objectForKeyedSubscript:@"TransferBackPlan"];
      v47 = [MEMORY[0x277CBEB68] null];

      if (v18 == v47)
      {

        v18 = 0;
      }

      v48 = [v4 valueForKey:@"SourceOSVersion"];
      objc_opt_class();
      v139 = v46;
      v137 = v42;
      if (objc_opt_isKindOfClass())
      {
        v49 = [v4 valueForKey:@"SourceOSVersion"];
      }

      else
      {
        v49 = 0;
      }

      v86 = [v4 objectForKeyedSubscript:@"IsPostMigrationFlowKey"];
      if (v86 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v87 = [v86 BOOLValue];
      }

      else
      {
        v87 = 0;
      }

      v88 = [v4 objectForKeyedSubscript:@"IsUsingPreSharedKey"];
      if (v88 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v89 = [v88 BOOLValue];
      }

      else
      {
        v89 = 0;
      }

      LOBYTE(v133) = v89;
      v11 = v137;
      v8 = [[TSTransferFlow alloc] initWithSession:v137 hasTransferablePlan:v44 isStandaloneProximityTransfer:v139 transferBackPlan:v18 sourceOSVersion:v49 isPostMigrationFlow:v87 isUsingPreSharedKey:v133];

      goto LABEL_173;
    case 6:
    case 28:
      v9 = [[TSIdentityShareFlow alloc] initWithOptions:v4];
      goto LABEL_81;
    case 7:
    case 8:
      v13 = [TSRemotePlanSignUpFlow alloc];
      v11 = [a1 createTSRemotePlanWebsheetContext:v4];
      v12 = [(TSRemotePlanSignUpFlow *)v13 initWithRemotePlanWebsheetContext:v11];
      goto LABEL_189;
    case 9:
      v11 = [v4 objectForKeyedSubscript:@"CarrierNameKey"];
      v18 = [v4 objectForKeyedSubscript:@"PhoneNumberKey"];
      v21 = [[TSOnDeviceConversionFlow alloc] initWithPhoneNumber:v18 carrierName:v11];
      goto LABEL_132;
    case 10:
      v11 = [v4 objectForKeyedSubscript:@"ExternalizedContextKey"];
      v18 = [v4 objectForKeyedSubscript:@"PlanDescriptorKey"];
      v36 = [v4 objectForKeyedSubscript:@"LocalConversionOngoing"];
      v37 = [v36 BOOLValue];

      v38 = [v4 objectForKeyedSubscript:@"SecureIntentRequired"];
      v39 = [v38 BOOLValue];

      v40 = [v4 objectForKeyedSubscript:@"DtoEvaluationRequired"];
      v41 = [v40 BOOLValue];

      v21 = [[TSAuthFlow alloc] initWithExternalizedContext:v11 descriptors:v18 isLocalConvertFlow:v37 isSecureIntentRequired:v39 isDtoEvaluationRequired:v41];
      goto LABEL_132;
    case 11:
      v11 = [v4 objectForKeyedSubscript:@"Iccid"];
      v12 = [[TSTransferQRCodeFlow alloc] initWithIccid:v11];
      goto LABEL_189;
    case 12:
      v69 = [v4 valueForKey:@"WaitForServiceKey"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v70 = [v69 BOOLValue];
      }

      else
      {
        v70 = 0;
      }

      v92 = [v4 valueForKey:@"FallbackToActivationCodeKey"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v93 = [v92 BOOLValue];
      }

      else
      {
        v93 = 0;
      }

      v33 = [v4 valueForKey:@"IgnoreTransportKey"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v94 = [v33 BOOLValue];
      }

      else
      {
        v94 = 0;
      }

      v34 = [[TSManagedDeviceInstallFlow alloc] initWith:v70 fallbackToActivationCode:v93 ignoreTransport:v94];
      goto LABEL_141;
    case 13:
      goto LABEL_94;
    case 14:
      v11 = [v4 valueForKey:@"IsSourceKey"];
      if (!v11 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        v73 = _TSLogDomain();
        if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
        {
          +[TSSIMSetupFlow _flowWithOptions:];
        }

        goto LABEL_90;
      }

      if (![v11 BOOLValue])
      {
        v109 = TSCrossPlatformTargetAuthFlow;
        goto LABEL_188;
      }

      v18 = [v4 valueForKey:@"MigrationAuthCode"];
      if (!v18 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {

        v18 = 0;
      }

      v21 = [[TSCrossPlatformSourceAuthFlow alloc] initWithCode:v18];
      goto LABEL_132;
    case 15:
      goto LABEL_191;
    case 16:
      v11 = [v4 objectForKeyedSubscript:@"Plans"];
      v50 = [v4 objectForKeyedSubscript:@"ConfirmCellularPlanTransfer"];
      v51 = [v50 BOOLValue];

      v52 = [v4 objectForKeyedSubscript:@"CrossPlatformTransferKey"];
      v53 = [v52 BOOLValue];

      v54 = [v4 objectForKeyedSubscript:@"MessageSessionKey"];
      objc_opt_class();
      v55 = objc_opt_isKindOfClass();

      if (v55)
      {
        v18 = [v4 objectForKeyedSubscript:@"MessageSessionKey"];
      }

      else
      {
        v18 = 0;
      }

      v90 = [v4 objectForKeyedSubscript:@"SourceOSVersion"];
      objc_opt_class();
      v91 = objc_opt_isKindOfClass();

      if (v91)
      {
        v62 = [v4 objectForKeyedSubscript:@"SourceOSVersion"];
      }

      else
      {
        v62 = 0;
      }

      if (v11)
      {
        v68 = [[TSCellularPlanActivatingFlow alloc] initWithSelectedPlans:v11 confirmCellularPlanTransfer:v51 isForCrossPlatformTransfer:v53 session:v18 sourceOsVersion:v62];
        goto LABEL_171;
      }

      v101 = [v4 objectForKeyedSubscript:@"IccidToEnable"];
      if ([v101 length])
      {
        v8 = [[TSCellularPlanActivatingFlow alloc] initWithEnablingPlanIccid:v101];
      }

      else
      {
        v112 = [v4 objectForKeyedSubscript:@"SkipActivatingPane"];
        v140 = [v112 BOOLValue];

        v113 = [v4 objectForKeyedSubscript:@"DelayStartActivatingTimer"];
        if (v113)
        {
          v114 = [v4 objectForKeyedSubscript:@"DelayStartActivatingTimer"];
          v138 = [v114 intValue];
        }

        else
        {
          v138 = 1;
        }

        v115 = [v4 valueForKey:@"PlanSetupTypeKey"];
        if (v115)
        {
          v116 = [v4 valueForKey:@"PlanSetupTypeKey"];
          v136 = [v116 intValue];
        }

        else
        {
          v136 = 2;
        }

        v117 = [v4 objectForKeyedSubscript:@"TransferBackPlan"];
        v118 = [MEMORY[0x277CBEB68] null];

        if (v117 == v118)
        {

          v117 = 0;
        }

        v119 = [v4 objectForKeyedSubscript:@"CarrierNameKey"];
        v120 = [MEMORY[0x277CBEB68] null];

        if (v119 == v120)
        {

          v119 = 0;
        }

        v121 = [v4 objectForKeyedSubscript:@"MaybeShowConfirmationCodePaneKey"];
        HIDWORD(v135) = [v121 BOOLValue];

        v122 = [v4 objectForKeyedSubscript:@"LocalConversionOngoing"];
        v123 = [v122 BOOLValue];

        v124 = [v4 objectForKeyedSubscript:@"Plan"];
        LOBYTE(v135) = v123;
        LOBYTE(v134) = v53;
        v8 = [[TSCellularPlanActivatingFlow alloc] initWithSkipActivatingPane:v140 timerType:v138 transferBackPlan:v117 setupType:v136 carrierName:v119 maybeShowConfirmationCodePane:HIDWORD(v135) plan:v124 isForCrossPlatformTransfer:v134 session:v18 sourceOsVersion:v62 isLocalConvert:v135];
      }

      goto LABEL_220;
    case 17:
      v11 = [v4 objectForKeyedSubscript:@"HostViewController"];
      v20 = [TSCarrierSignupFlow alloc];
      if (v11)
      {
        v18 = [v4 objectForKeyedSubscript:@"Plan"];
        v21 = [(TSCarrierSignupFlow *)v20 initWithPlan:v18 queriableFirstViewController:1 hostViewController:v11];
      }

      else
      {
        v18 = [v4 valueForKey:@"Plan"];
        v21 = [(TSCarrierSignupFlow *)v20 initWithPlan:v18];
      }

      goto LABEL_132;
    case 18:
      v56 = [v4 objectForKeyedSubscript:@"CarrierNameKey"];
      v11 = v56;
      if (!v56 || ![v56 length])
      {
        v57 = _TSLogDomain();
        if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
        {
          +[TSSIMSetupFlow _flowWithOptions:];
        }
      }

      v18 = [v4 valueForKey:@"RequireSetupKey-DEBUG"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v58 = [v18 BOOLValue];
      }

      else
      {
        v58 = 0;
      }

      v78 = [TSSIMSetupPublicApiInstallFlow alloc];
      v79 = v11;
      v80 = v58;
      v81 = 0;
      goto LABEL_131;
    case 19:
      v16 = [v4 objectForKeyedSubscript:@"CarrierNameKey"];
      v11 = v16;
      if (!v16 || ![v16 length])
      {
        v17 = _TSLogDomain();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          +[TSSIMSetupFlow _flowWithOptions:];
        }
      }

      v18 = [v4 valueForKey:@"RequireSetupKey-DEBUG"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v19 = [v18 BOOLValue];
      }

      else
      {
        v19 = 0;
      }

      v78 = [TSSIMSetupPublicApiInstallFlow alloc];
      v79 = v11;
      v80 = v19;
      v81 = 1;
LABEL_131:
      v21 = [(TSSIMSetupPublicApiInstallFlow *)v78 initWithAppName:v79 requireSetup:v80 skipGeneralInstallConsent:v81];
      goto LABEL_132;
    case 20:
      v22 = TSIDSTransferFlow;
      goto LABEL_80;
    case 21:
      v22 = TSRecommendedCarrierAppsFlow;
      goto LABEL_80;
    case 22:
      v27 = [v4 objectForKeyedSubscript:@"IsFirstViewKey"];
      v28 = [v27 BOOLValue];

      v11 = [v4 objectForKeyedSubscript:@"Plans"];
      v29 = [MEMORY[0x277CBEB68] null];

      if (v11 == v29)
      {

        v11 = 0;
      }

      v12 = [[TSQRCodeScanFlow alloc] initWithBackButton:v28 ^ 1u plans:v11];
      goto LABEL_189;
    case 23:
      v59 = [v4 objectForKeyedSubscript:@"TravelOptionsKey"];
      v11 = [v59 mutableCopy];

      v146[0] = @"showRoamingOption";
      v146[1] = @"showLocalPlanOption";
      v146[2] = @"showPurchaseOption";
      v146[3] = @"roamingInfo";
      v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v146 count:4];
      v60 = [v4 objectForKeyedSubscript:@"TravelOptionsKey"];
      v61 = [v60 allKeys];

      v143 = 0u;
      v144 = 0u;
      v141 = 0u;
      v142 = 0u;
      v62 = v61;
      v63 = [v62 countByEnumeratingWithState:&v141 objects:v145 count:16];
      if (v63)
      {
        v64 = v63;
        v65 = *v142;
        do
        {
          for (i = 0; i != v64; ++i)
          {
            if (*v142 != v65)
            {
              objc_enumerationMutation(v62);
            }

            v67 = *(*(&v141 + 1) + 8 * i);
            if (([v18 containsObject:v67]& 1) == 0)
            {
              [v11 removeObjectForKey:v67];
            }
          }

          v64 = [v62 countByEnumeratingWithState:&v141 objects:v145 count:16];
        }

        while (v64);
      }

      v68 = [[TSTravelEducationFlow alloc] initWithOptions:v11];
      goto LABEL_171;
    case 24:
      v24 = [v4 valueForKey:@"IsFromDataTransferSession"];
      v25 = [v24 BOOLValue];

      v11 = [v4 valueForKey:@"IsSourceKey"];
      if (v11)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if ([v11 BOOLValue])
          {
            v12 = [[TSCrossPlatformSourceTransferFlow alloc] init:v25];
          }

          else
          {
            v109 = TSCrossPlatformTargetTransferFlow;
LABEL_188:
            v12 = objc_alloc_init(v109);
          }

          goto LABEL_189;
        }
      }

      v72 = _TSLogDomain();
      if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
      {
        +[TSSIMSetupFlow _flowWithOptions:];
      }

LABEL_90:
      v8 = 0;
      goto LABEL_190;
    case 25:
      v11 = [v4 valueForKey:@"TravelOptionsKey"];
      v12 = [[TSTravelModeFlow alloc] initWithOptions:v11];
      goto LABEL_189;
    case 26:
      if ((_os_feature_enabled_impl() & 1) == 0)
      {
        v95 = _TSLogDomain();
        if (os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v148 = "+[TSSIMSetupFlow _flowWithOptions:]";
          _os_log_impl(&dword_262AA8000, v95, OS_LOG_TYPE_DEFAULT, "BuddyPostMigrationFlow feature disabled @%s", buf, 0xCu);
        }

        goto LABEL_177;
      }

      v22 = TSSourceAutoReconnectTransferFlow;
LABEL_80:
      v9 = objc_alloc_init(v22);
LABEL_81:
      v8 = v9;
      goto LABEL_191;
    case 27:
      if (_os_feature_enabled_impl())
      {
        v14 = [v4 valueForKey:@"ProximitySetupStateKey"];
        v11 = v14;
        if (v14)
        {
          v15 = [v14 unsignedIntegerValue];
        }

        else
        {
          v15 = 0;
        }

        v18 = [v4 objectForKeyedSubscript:@"MessageSessionKey"];
        v62 = [v4 valueForKey:@"HasTransferablePlan"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v106 = [v62 BOOLValue];
        }

        else
        {
          v106 = 0;
        }

        v107 = [v4 valueForKey:@"SourceOSVersion"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v108 = [v4 valueForKey:@"SourceOSVersion"];
        }

        else
        {
          v108 = 0;
        }

        v8 = [[TSPostMigrationFlow alloc] initWithSession:v18 sourceOSVersion:v108 proximitySetupState:v15 transferablePlanOnSource:v106];

        goto LABEL_172;
      }

      v74 = _TSLogDomain();
      if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v148 = "+[TSSIMSetupFlow _flowWithOptions:]";
        _os_log_impl(&dword_262AA8000, v74, OS_LOG_TYPE_DEFAULT, "BuddyPostMigrationFlow feature disabled. Creating TSTransferCloudFlow @%s", buf, 0xCu);
      }

LABEL_94:
      v75 = [v4 valueForKey:@"ProximitySetupStateKey"];
      v11 = v75;
      if (v75)
      {
        v76 = [v75 unsignedIntegerValue];
      }

      else
      {
        v76 = 0;
      }

      v18 = [v4 valueForKey:@"ProxPlansFilteredKey"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v77 = [v18 BOOLValue];
      }

      else
      {
        v77 = 0;
      }

      v21 = [[TSTransferCloudFlow alloc] initWithProximitySetupState:v76 proxPlansFiltered:v77];
      goto LABEL_132;
    case 29:
      if (!_os_feature_enabled_impl())
      {
        goto LABEL_177;
      }

      v11 = [v4 valueForKey:@"IsSourceKey"];
      if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v18 = [v4 objectForKeyedSubscript:@"TSUserInfoRetainReference"];
        v21 = -[TSBootstrapCrossPlatformTransferFlow initWithRetainedObject:isSource:]([TSBootstrapCrossPlatformTransferFlow alloc], "initWithRetainedObject:isSource:", v18, [v11 BOOLValue]);
LABEL_132:
        v8 = v21;
      }

      else
      {
        v18 = _TSLogDomain();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          +[TSSIMSetupFlow _flowWithOptions:];
        }

        v8 = 0;
      }

      goto LABEL_173;
    default:
      if (v7 == 10002)
      {
        v11 = [v4 valueForKey:@"IsClientKey"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v71 = [v11 BOOLValue];
        }

        else
        {
          v71 = 0;
        }

        v96 = _TSLogDomain();
        if (os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
        {
          v97 = "no";
          if (v71)
          {
            v97 = "yes";
          }

          *buf = 136315394;
          v148 = v97;
          v149 = 2080;
          v150 = "+[TSSIMSetupFlow _flowWithOptions:]";
          _os_log_impl(&dword_262AA8000, v96, OS_LOG_TYPE_DEFAULT, "client ? %s @%s", buf, 0x16u);
        }

        if (v71)
        {
          v18 = [v4 objectForKey:@"ResumeTransferProxCardKey"];
          if (v18)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              if ([v18 BOOLValue])
              {
                v62 = [v4 objectForKey:@"SupportsSyncTransferResults"];
                if (v62 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                {
                  v98 = [v62 BOOLValue];
                }

                else
                {
                  v98 = 0;
                }

                v101 = [v4 objectForKey:@"IsPreSharedKeyPresent"];
                if (v101 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                {
                  v130 = [v101 BOOLValue];
                }

                else
                {
                  v130 = 0;
                }

                v131 = [v4 objectForKey:@"kSelectedTransferPlansCount"];
                if (v131 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                {
                  v132 = [v131 intValue];
                }

                else
                {
                  v132 = 0;
                }

                v8 = [[TSProximitySourceTransferFlow alloc] initForResumptionWithSelectedTransferPlans:v132 targetUICapability:v98 isPreSharedKeyPresent:v130];

LABEL_220:
                goto LABEL_172;
              }
            }
          }

          v62 = [v4 objectForKeyedSubscript:@"PeerDeviceKey"];
          v68 = [[TSProximitySourceTransferFlow alloc] initWithPeerDevice:v62];
        }

        else
        {
          v18 = [v4 objectForKeyedSubscript:@"TransferBackPlan"];
          v99 = [MEMORY[0x277CBEB68] null];

          if (v18 == v99)
          {

            v18 = 0;
          }

          v62 = [v4 objectForKeyedSubscript:@"IsPostMigrationFlowKey"];
          if (v62 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v100 = [v62 BOOLValue];
          }

          else
          {
            v100 = 0;
          }

          v68 = [[TSProximityTargetTransferFlow alloc] initWithTransferBackPlan:v18 isPostMigrationFlow:v100];
        }

LABEL_171:
        v8 = v68;
LABEL_172:

        goto LABEL_173;
      }

      if (v7 != 10003)
      {
        goto LABEL_191;
      }

      v10 = objc_alloc(MEMORY[0x277CCA9B8]);
      v11 = [v10 initWithDomain:*MEMORY[0x277CF9680] code:46 userInfo:0];
      v12 = [[TSActivationPolicyMismatchFlow alloc] initWithPlanItemError:v11];
LABEL_189:
      v8 = v12;
LABEL_190:

LABEL_191:
      v110 = *MEMORY[0x277D85DE8];

      return v8;
  }
}

- (TSSIMSetupFlow)init
{
  v17 = *MEMORY[0x277D85DE8];
  v12.receiver = self;
  v12.super_class = TSSIMSetupFlow;
  v2 = [(TSSIMSetupFlow *)&v12 init];
  v3 = v2;
  if (v2)
  {
    v2->_isFlowFinished = 0;
    v4 = _TSLogDomain();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [MEMORY[0x277D75780] _useCustomBackButtonAction];
      *buf = 67109378;
      v14 = v5;
      v15 = 2080;
      v16 = "[TSSIMSetupFlow init]";
      _os_log_impl(&dword_262AA8000, v4, OS_LOG_TYPE_DEFAULT, "use custom button action : %d @%s", buf, 0x12u);
    }

    [MEMORY[0x277D75780] _setUseCustomBackButtonAction:1];
    v6 = objc_opt_new();
    backOptions = v3->_backOptions;
    v3->_backOptions = v6;

    v8 = [MEMORY[0x277CCAB98] defaultCenter];
    [v8 addObserver:v3 selector:sel_appForegrounded name:*MEMORY[0x277D76758] object:0];

    v9 = [MEMORY[0x277CCAB98] defaultCenter];
    [v9 addObserver:v3 selector:sel_appBackgrounded name:*MEMORY[0x277D76660] object:0];
  }

  v10 = *MEMORY[0x277D85DE8];
  return v3;
}

- (void)firstViewController:(id)a3
{
  if (a3)
  {
    (*(a3 + 2))(a3, 0);
  }
}

- (void)showFirstViewControllerWithHostController:(id)a3 completion:(id)a4
{
  if (a4)
  {
    (*(a4 + 2))(a4, 0);
  }
}

- (id)firstViewControllerForDisplay
{
  p_isa = &self->super.isa;
  v18 = *MEMORY[0x277D85DE8];
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_topViewController);

    if (WeakRetained)
    {
      v4 = objc_loadWeakRetained(p_isa + 2);
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v6 = objc_loadWeakRetained(p_isa + 2);
        v7 = [v6 subFlow];
        p_isa = [v7 firstViewControllerForDisplay];
      }

      else
      {
        v8 = _TSLogDomain();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = objc_loadWeakRetained(p_isa + 2);
          v12 = 138412802;
          v13 = v9;
          v14 = 2112;
          v15 = p_isa;
          v16 = 2080;
          v17 = "[TSSIMSetupFlow firstViewControllerForDisplay]";
          _os_log_impl(&dword_262AA8000, v8, OS_LOG_TYPE_DEFAULT, "root view controller %@ for flow %@ @%s", &v12, 0x20u);
        }

        p_isa = objc_loadWeakRetained(p_isa + 2);
      }
    }

    else
    {
      p_isa = 0;
    }
  }

  v10 = *MEMORY[0x277D85DE8];

  return p_isa;
}

- (void)_maybeSetNavigationController:(id)a3
{
  v8 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_navigationController);

  if (v8)
  {
    if (!WeakRetained)
    {
      v5 = self;
      if (v5)
      {
        v6 = v5;
        do
        {
          [v6 setNavigationController:v8];
          v7 = [v6 parentFlow];

          v6 = v7;
        }

        while (v7);
      }
    }
  }

  MEMORY[0x2821F96F8]();
}

- (id)rootViewController
{
  v23 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_navigationController);

  if (!WeakRetained)
  {
    v4 = [(TSSIMSetupFlow *)self firstViewControllerForDisplay];
    v5 = _TSLogDomain();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412802;
      v18 = v4;
      v19 = 2112;
      v20 = self;
      v21 = 2080;
      v22 = "[TSSIMSetupFlow rootViewController]";
      _os_log_impl(&dword_262AA8000, v5, OS_LOG_TYPE_DEFAULT, "first view controller %@ for root flow %@ @%s", &v17, 0x20u);
    }

    v6 = [v4 navigationController];

    if (!v6)
    {
      goto LABEL_16;
    }

    v7 = [v4 flow];
    v8 = [v4 navigationController];
    [v7 _maybeSetNavigationController:v8];
  }

  v9 = objc_loadWeakRetained(&self->_navigationController);
  v10 = [v9 viewControllers];

  if ([v10 count])
  {
    v11 = 0;
    while (1)
    {
      v4 = [v10 objectAtIndex:v11];
      v12 = [v4 flow];
      if (v12)
      {
        if (objc_opt_respondsToSelector())
        {
          v13 = [v12 rootFlow];

          if (v13 == self)
          {
            break;
          }
        }
      }

      if (++v11 >= [v10 count])
      {
        goto LABEL_12;
      }
    }

    v16 = _TSLogDomain();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412802;
      v18 = v4;
      v19 = 2112;
      v20 = self;
      v21 = 2080;
      v22 = "[TSSIMSetupFlow rootViewController]";
      _os_log_impl(&dword_262AA8000, v16, OS_LOG_TYPE_DEFAULT, "root view controller %@ for flow %@ @%s", &v17, 0x20u);
    }
  }

  else
  {
LABEL_12:
    v12 = _TSLogDomain();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(TSSIMSetupFlow *)self rootViewController];
    }

    v4 = 0;
  }

LABEL_16:
  v14 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)presentationControllerDidDismiss:(id)a3
{
  v8 = *MEMORY[0x277D85DE8];
  if (!self->_isFlowFinished)
  {
    v4 = _TSLogDomain();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315138;
      v7 = "[TSSIMSetupFlow presentationControllerDidDismiss:]";
      _os_log_impl(&dword_262AA8000, v4, OS_LOG_TYPE_DEFAULT, "user swipe down to dismiss flow. quit @%s", &v6, 0xCu);
    }

    [(TSSIMSetupFlow *)self userDidTapCancel];
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)restartWith:(id)a3
{
  v40 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _TSLogDomain();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [TSSIMSetupFlow restartWith:];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v4;
    v7 = _TSLogDomain();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [(TSSIMSetupFlow *)v6 restartWith:v7];
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_navigationController);

  if (!WeakRetained)
  {
    v9 = [(TSSIMSetupFlow *)self firstViewControllerForDisplay];
    v10 = [v9 navigationController];
    [(TSSIMSetupFlow *)self _maybeSetNavigationController:v10];
  }

  v11 = objc_loadWeakRetained(&self->_navigationController);
  v12 = [v11 topViewController];

  v13 = objc_loadWeakRetained(&self->_navigationController);
  v14 = [v13 viewControllers];
  v15 = [v14 count];

  if (v15 < 2)
  {
    v20 = 0;
  }

  else
  {
    v16 = objc_loadWeakRetained(&self->_navigationController);
    v17 = [v16 viewControllers];
    v18 = objc_loadWeakRetained(&self->_navigationController);
    v19 = [v18 viewControllers];
    v20 = [v17 objectAtIndex:{objc_msgSend(v19, "count") - 2}];
  }

  v21 = [(TSSIMSetupFlow *)self rootViewController];

  if (v12 != v21 || !v20)
  {
    if ([(TSSIMSetupFlow *)self _needCustomizeBackAction:v12])
    {
      subFlowViewControllers = self->_subFlowViewControllers;
      self->_subFlowViewControllers = 0;
      v26 = subFlowViewControllers;

      [(TSSIMSetupFlow *)self _startOver:v12];
      goto LABEL_30;
    }

    v27 = _TSLogDomain();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v34 = 138412802;
      v35 = v12;
      v36 = 2112;
      v37 = v20;
      v38 = 2080;
      v39 = "[TSSIMSetupFlow restartWith:]";
      _os_log_impl(&dword_262AA8000, v27, OS_LOG_TYPE_DEFAULT, "normal back from : %@ -> %@ @%s", &v34, 0x20u);
    }

    if (!v20)
    {
      [(TSSIMSetupFlow *)self _notifyFlowCompletion:1];
      goto LABEL_30;
    }

    v28 = objc_loadWeakRetained(&self->_navigationController);
    v29 = [v28 popToViewController:v20 animated:1];

    if ([v20 conformsToProtocol:&unk_28758ABD0])
    {
      v30 = objc_storeWeak(&self->_topViewController, v20);
      v31 = objc_opt_respondsToSelector();

      if ((v31 & 1) == 0)
      {
LABEL_29:
        [(TSSIMSetupFlow *)self _maybeClearSubFlowViewController:v12];
        goto LABEL_30;
      }

      v32 = objc_loadWeakRetained(&self->_topViewController);
      [v32 backToCurrentTopPane];
    }

    else
    {
      v32 = _TSLogDomain();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        [TSSIMSetupFlow restartWith:];
      }
    }

    goto LABEL_29;
  }

  v22 = _TSLogDomain();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v34 = 138412802;
    v35 = v12;
    v36 = 2112;
    v37 = v20;
    v38 = 2080;
    v39 = "[TSSIMSetupFlow restartWith:]";
    _os_log_impl(&dword_262AA8000, v22, OS_LOG_TYPE_DEFAULT, "normal back from : %@ -> %@ @%s", &v34, 0x20u);
  }

  v23 = objc_loadWeakRetained(&self->_navigationController);
  v24 = [v23 popToViewController:v20 animated:1];

LABEL_30:
  v33 = *MEMORY[0x277D85DE8];
}

- (BOOL)_needCustomizeBackAction:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!self)
  {
    v5 = _TSLogDomain();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v13 = 136315138;
      *v14 = "[TSSIMSetupFlow _needCustomizeBackAction:]";
      v7 = "[I] self is nil @%s";
      v8 = v5;
      v9 = OS_LOG_TYPE_INFO;
      v10 = 12;
LABEL_13:
      _os_log_impl(&dword_262AA8000, v8, v9, v7, &v13, v10);
    }

LABEL_14:
    LOBYTE(v6) = 0;
    goto LABEL_15;
  }

  if (self->_isFlowFinished)
  {
    v5 = _TSLogDomain();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 136315138;
      *v14 = "[TSSIMSetupFlow _needCustomizeBackAction:]";
      _os_log_impl(&dword_262AA8000, v5, OS_LOG_TYPE_DEFAULT, "back tapped after flow end. @%s", &v13, 0xCu);
    }

    LOBYTE(v6) = 1;
    goto LABEL_15;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v5 = _TSLogDomain();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412546;
      *v14 = v4;
      *&v14[8] = 2080;
      *&v14[10] = "[TSSIMSetupFlow _needCustomizeBackAction:]";
      v7 = "%@ doesnot require customized back @%s";
      v8 = v5;
      v9 = OS_LOG_TYPE_DEFAULT;
      v10 = 22;
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  v6 = [v4 isStartOverRequiredOnBackButtonTapped];
  v5 = _TSLogDomain();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 67109378;
    *v14 = v6;
    *&v14[4] = 2080;
    *&v14[6] = "[TSSIMSetupFlow _needCustomizeBackAction:]";
    _os_log_impl(&dword_262AA8000, v5, OS_LOG_TYPE_DEFAULT, "is start over required : %d @%s", &v13, 0x12u);
  }

LABEL_15:

  v11 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)_startOver:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(TSSIMSetupFlow *)self waitForResponse:v4];
  v5 = [(TSSIMSetupFlow *)self parentFlow];

  if (v5)
  {
    v6 = [(TSSIMSetupFlow *)self parentFlow];
    v7 = [v6 _startOver:v4];
  }

  else
  {
    objc_initWeak(&location, self);
    v8 = _TSLogDomain();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v16 = self;
      v17 = 2112;
      v18 = v4;
      v19 = 2080;
      v20 = "[TSSIMSetupFlow _startOver:]";
      _os_log_impl(&dword_262AA8000, v8, OS_LOG_TYPE_DEFAULT, "check start over vc for root flow : %@, vc : %@ @%s", buf, 0x20u);
    }

    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __29__TSSIMSetupFlow__startOver___block_invoke;
    v11[3] = &unk_279B44250;
    v11[4] = self;
    objc_copyWeak(&v13, &location);
    v12 = v4;
    dispatch_async(MEMORY[0x277D85CD0], v11);

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
    v7 = 1;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v7;
}

void __29__TSSIMSetupFlow__startOver___block_invoke(id *a1)
{
  v2 = a1[4];
  if (v2)
  {
    WeakRetained = objc_loadWeakRetained(a1 + 6);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __29__TSSIMSetupFlow__startOver___block_invoke_2;
    v6[3] = &unk_279B443B0;
    objc_copyWeak(&v9, a1 + 6);
    v4 = a1[5];
    v5 = a1[4];
    v7 = v4;
    v8 = v5;
    [WeakRetained startOverWithFirstViewController:v6];

    objc_destroyWeak(&v9);
  }
}

void __29__TSSIMSetupFlow__startOver___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __29__TSSIMSetupFlow__startOver___block_invoke_3;
  v5[3] = &unk_279B44A70;
  objc_copyWeak(&v9, (a1 + 48));
  v6 = *(a1 + 32);
  v7 = v3;
  v8 = *(a1 + 40);
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v5);

  objc_destroyWeak(&v9);
}

void __29__TSSIMSetupFlow__startOver___block_invoke_3(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained receivedResponseWithVC:*(a1 + 32)];

  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = v3;
    v5 = *(a1 + 40);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = *(a1 + 40);
      v7 = [v6 subFlow];
      v8 = [v7 firstViewControllerForDisplay];

      if (!v8)
      {
        v18 = _TSLogDomain();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          __29__TSSIMSetupFlow__startOver___block_invoke_3_cold_1();
        }

        v16 = objc_loadWeakRetained((a1 + 56));
        [v16 _popAllSIMSetupFlowViewControllers:*(a1 + 32)];
        goto LABEL_12;
      }

      v9 = objc_loadWeakRetained((a1 + 56));
      v10 = [v6 subFlow];
      [v10 setParentFlow:v9];

      v11 = objc_loadWeakRetained((a1 + 56));
      [v11 addSubFlowViewController:v6];

      v6 = v8;
    }

    else
    {
      v6 = v4;
    }

    v14 = objc_loadWeakRetained((a1 + 56));
    [v14 _pushStartOverViewController:v6 from:*(a1 + 32)];

    v15 = _TSLogDomain();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 136315138;
      v20 = "[TSSIMSetupFlow _startOver:]_block_invoke";
      _os_log_impl(&dword_262AA8000, v15, OS_LOG_TYPE_DEFAULT, "assert in purchase with startOver @%s", &v19, 0xCu);
    }

    v16 = +[TSUserInPurchaseFlowAssertion sharedInstance];
    [v16 assertUserInPurchaseFlowStartOver:1 caller:*(a1 + 48)];
LABEL_12:

    goto LABEL_13;
  }

  v12 = _TSLogDomain();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = objc_loadWeakRetained((a1 + 56));
    v19 = 138412546;
    v20 = v13;
    v21 = 2080;
    v22 = "[TSSIMSetupFlow _startOver:]_block_invoke_3";
    _os_log_impl(&dword_262AA8000, v12, OS_LOG_TYPE_DEFAULT, "cannot start over, pop all views for flow : %@ @%s", &v19, 0x16u);
  }

  v6 = objc_loadWeakRetained((a1 + 56));
  [v6 _popAllSIMSetupFlowViewControllers:*(a1 + 32)];
LABEL_13:

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_popAllSIMSetupFlowViewControllers:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(TSSIMSetupFlow *)self rootViewController];
  if (v5)
  {
    WeakRetained = objc_loadWeakRetained(&self->_navigationController);
    v7 = [WeakRetained viewControllers];
    v8 = [v7 indexOfObject:v5];

    if (v8 != 0x7FFFFFFFFFFFFFFFLL && v8)
    {
      v13 = objc_loadWeakRetained(&self->_navigationController);
      v14 = [v13 viewControllers];
      v15 = [v14 objectAtIndex:v8 - 1];

      v16 = _TSLogDomain();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v20 = 138412802;
        v21 = v4;
        v22 = 2112;
        v23 = v15;
        v24 = 2080;
        v25 = "[TSSIMSetupFlow _popAllSIMSetupFlowViewControllers:]";
        _os_log_impl(&dword_262AA8000, v16, OS_LOG_TYPE_DEFAULT, "pop all. from %@ to %@ @%s", &v20, 0x20u);
      }

      v17 = objc_loadWeakRetained(&self->_navigationController);
      v18 = [v17 popToViewController:v15 animated:1];
    }

    else
    {
      v9 = _TSLogDomain();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v20 = 136315138;
        v21 = "[TSSIMSetupFlow _popAllSIMSetupFlowViewControllers:]";
        _os_log_impl(&dword_262AA8000, v9, OS_LOG_TYPE_DEFAULT, "no previous view controller, cancel SS flow @%s", &v20, 0xCu);
      }

      [(TSSIMSetupFlow *)self userDidTapCancel];
    }
  }

  else
  {
    v10 = _TSLogDomain();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [TSSIMSetupFlow _popAllSIMSetupFlowViewControllers:];
    }

    v11 = objc_loadWeakRetained(&self->_navigationController);
    v12 = [v11 popViewControllerAnimated:1];
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_pushStartOverViewController:(id)a3 from:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = _TSLogDomain();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v24 = 138412802;
    v25 = v7;
    v26 = 2112;
    v27 = v6;
    v28 = 2080;
    v29 = "[TSSIMSetupFlow _pushStartOverViewController:from:]";
    _os_log_impl(&dword_262AA8000, v8, OS_LOG_TYPE_DEFAULT, "start over - back from %@ to %@ @%s", &v24, 0x20u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_navigationController);
  v10 = [WeakRetained viewControllers];
  v11 = [v10 mutableCopy];

  v12 = [(TSSIMSetupFlow *)self rootViewController];
  if (v12)
  {
    v13 = [v11 indexOfObject:v12];
    if (v13 != 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_9;
    }

    v14 = _TSLogDomain();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      [TSSIMSetupFlow _pushStartOverViewController:v14 from:?];
    }
  }

  v13 = 0;
LABEL_9:
  v15 = _TSLogDomain();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v24 = 138412546;
    v25 = v11;
    v26 = 2080;
    v27 = "[TSSIMSetupFlow _pushStartOverViewController:from:]";
    _os_log_impl(&dword_262AA8000, v15, OS_LOG_TYPE_DEFAULT, "before shrink. view controllers : %@ @%s", &v24, 0x16u);
  }

  [v11 insertObject:v6 atIndex:v13];
  v16 = _TSLogDomain();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v24 = 138412546;
    v25 = v11;
    v26 = 2080;
    v27 = "[TSSIMSetupFlow _pushStartOverViewController:from:]";
    _os_log_impl(&dword_262AA8000, v16, OS_LOG_TYPE_DEFAULT, "after insert: vcs:%@ @%s", &v24, 0x16u);
  }

  v17 = objc_loadWeakRetained(&self->_navigationController);
  [v17 setViewControllers:v11 animated:0];

  v18 = objc_loadWeakRetained(&self->_navigationController);
  v19 = [v18 popToViewController:v6 animated:1];

  v20 = _TSLogDomain();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = objc_loadWeakRetained(&self->_navigationController);
    v22 = [v21 viewControllers];
    v24 = 138412546;
    v25 = v22;
    v26 = 2080;
    v27 = "[TSSIMSetupFlow _pushStartOverViewController:from:]";
    _os_log_impl(&dword_262AA8000, v20, OS_LOG_TYPE_DEFAULT, "after pop to new root. view controllers : %@ @%s", &v24, 0x16u);
  }

  [(TSSIMSetupFlow *)self setIsFlowFinished:0];
  v23 = *MEMORY[0x277D85DE8];
}

- (void)startOverWithFirstViewController:(id)a3
{
  v4 = a3;
  v5 = _TSLogDomain();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [(TSSIMSetupFlow *)self startOverWithFirstViewController:v5];
  }

  v4[2](v4, 0);
}

- (BOOL)handleStartOverWithEntryPoint:(id)a3 navigationController:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v10 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v11 = 1;
    if ([v8 entryPoint] == 1)
    {
      v12 = [[TSCellularPlanIntroViewController alloc] initWithShowTransferOption:1 requireDelayBluetoothConnection:0 showQrCodeOption:1 transferIneligiblePlans:0];
      [(TSSIMSetupFlow *)self setTopViewController:v12];
      v10[2](v10, v12);
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)navigateToNextPaneFrom:(id)a3 navigationController:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7 || (v8 = objc_loadWeakRetained(&self->_navigationController), v8, v8))
  {
    WeakRetained = objc_loadWeakRetained(&self->_navigationController);

    if (WeakRetained)
    {
      if (v7)
      {
LABEL_5:
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __62__TSSIMSetupFlow_navigateToNextPaneFrom_navigationController___block_invoke;
        block[3] = &unk_279B44688;
        v14 = v6;
        v15 = self;
        v16 = v7;
        v10 = v7;
        dispatch_async(MEMORY[0x277D85CD0], block);

        goto LABEL_6;
      }
    }

    else
    {
      [(TSSIMSetupFlow *)self _maybeSetNavigationController:v7];
      firstViewControllerInstance = self->_firstViewControllerInstance;
      self->_firstViewControllerInstance = 0;

      if (v7)
      {
        goto LABEL_5;
      }
    }

    v7 = objc_loadWeakRetained(&self->_navigationController);
    goto LABEL_5;
  }

  v12 = _TSLogDomain();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    [TSSIMSetupFlow navigateToNextPaneFrom:v12 navigationController:?];
  }

  [(TSSIMSetupFlow *)self _notifyFlowCompletion:3];
LABEL_6:
}

void __62__TSSIMSetupFlow_navigateToNextPaneFrom_navigationController___block_invoke(uint64_t a1)
{
  v47 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v2 = (a1 + 32);
  v4 = [*(a1 + 40) dismissingViewController];

  if (v3 == v4)
  {
    v5 = _TSLogDomain();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __62__TSSIMSetupFlow_navigateToNextPaneFrom_navigationController___block_invoke_cold_1(v2);
    }
  }

  else
  {
    [*(a1 + 40) setDismissingViewController:*(a1 + 32)];
    v5 = [*(a1 + 40) nextViewControllerFrom:*(a1 + 32)];
    [*(a1 + 40) setNextViewController:v5];
    v6 = _TSLogDomain();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v8 = objc_opt_class();
      v9 = v8;
      v10 = objc_opt_class();
      v11 = *(a1 + 40);
      v12 = v10;
      v13 = objc_opt_class();
      v14 = *(a1 + 40);
      *buf = 138413570;
      v36 = v8;
      v37 = 2112;
      v38 = v10;
      v39 = 2048;
      v40 = v5;
      v41 = 2112;
      v42 = v13;
      v43 = 2048;
      v44 = v14;
      v45 = 2080;
      v46 = "[TSSIMSetupFlow navigateToNextPaneFrom:navigationController:]_block_invoke";
      _os_log_impl(&dword_262AA8000, v6, OS_LOG_TYPE_DEFAULT, "current view: %@ next view: %@<%p>, flow: %@<%p> @%s", buf, 0x3Eu);
    }

    if (v5)
    {
      if ([v5 conformsToProtocol:&unk_28758ABD0])
      {
        [v5 setDelegate:*(a1 + 40)];
      }

      if (objc_opt_respondsToSelector())
      {
        v15 = [*(a1 + 48) topViewController];
        [*(a1 + 40) waitForResponse:v15];
        v16 = (objc_opt_respondsToSelector() & 1) != 0 && [v15 performSelector:sel_userInteractionEnabled] != 0;
        v24 = [v15 view];
        [v24 setUserInteractionEnabled:v16];

        objc_initWeak(buf, *(a1 + 40));
        v29[0] = MEMORY[0x277D85DD0];
        v29[1] = 3221225472;
        v29[2] = __62__TSSIMSetupFlow_navigateToNextPaneFrom_navigationController___block_invoke_181;
        v29[3] = &unk_279B44AC0;
        objc_copyWeak(&v34, buf);
        v5 = v5;
        v30 = v5;
        v25 = v15;
        v26 = *(a1 + 40);
        v31 = v25;
        v32 = v26;
        v33 = *(a1 + 48);
        [v5 prepare:v29];

        objc_destroyWeak(&v34);
        objc_destroyWeak(buf);
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [*(a1 + 40) setTopViewController:v5];
          [*(a1 + 40) setDismissingViewController:0];
          [*(a1 + 40) setNextViewController:0];
        }

        else if (([*(a1 + 40) isMemberOfClass:objc_opt_class()] & 1) == 0)
        {
          [*(a1 + 48) pushViewController:v5 animated:1];
          v17 = _TSLogDomain();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            v18 = objc_opt_class();
            v19 = [*(a1 + 40) topViewController];
            v20 = objc_opt_class();
            v21 = [*(a1 + 40) topViewController];
            *buf = 138413314;
            v36 = v18;
            v37 = 2048;
            v38 = v5;
            v39 = 2112;
            v40 = v20;
            v41 = 2048;
            v42 = v21;
            v43 = 2080;
            v44 = "[TSSIMSetupFlow navigateToNextPaneFrom:navigationController:]_block_invoke";
            _os_log_impl(&dword_262AA8000, v17, OS_LOG_TYPE_DEFAULT, "push %@(%p) onto %@(%p) @%s", buf, 0x34u);
          }

          v23 = *(a1 + 40);
          v22 = (a1 + 40);
          [v23 setTopViewController:v5];
          v28[0] = MEMORY[0x277D85DD0];
          v28[1] = 3221225472;
          v28[2] = __62__TSSIMSetupFlow_navigateToNextPaneFrom_navigationController___block_invoke_184;
          v28[3] = &unk_279B44578;
          v28[4] = *v22;
          dispatch_async(MEMORY[0x277D85CD0], v28);
          [*v22 setNextViewController:0];
        }
      }
    }

    else
    {
      [*(a1 + 40) _notifyFlowCompletion:2];
    }
  }

  v27 = *MEMORY[0x277D85DE8];
}

void __62__TSSIMSetupFlow_navigateToNextPaneFrom_navigationController___block_invoke_181(uint64_t a1, char a2)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__TSSIMSetupFlow_navigateToNextPaneFrom_navigationController___block_invoke_2;
  block[3] = &unk_279B44A98;
  objc_copyWeak(&v12, (a1 + 64));
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v13 = a2;
  v8 = *(a1 + 48);
  v6 = *(&v8 + 1);
  *&v7 = v4;
  *(&v7 + 1) = v5;
  v10 = v7;
  v11 = v8;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v12);
}

void __62__TSSIMSetupFlow_navigateToNextPaneFrom_navigationController___block_invoke_2(uint64_t a1)
{
  v51 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = [WeakRetained nextViewController];
  v4 = *(a1 + 32);

  if (v3 != v4)
  {
    v5 = _TSLogDomain();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_loadWeakRetained((a1 + 64));
      v7 = [v6 nextViewController];
      v8 = objc_opt_class();
      v9 = objc_loadWeakRetained((a1 + 64));
      v10 = [v9 nextViewController];
      v11 = *(a1 + 32);
      v12 = objc_opt_class();
      v13 = *(a1 + 32);
      *buf = 138413314;
      v42 = v8;
      v43 = 2048;
      v44 = v10;
      v45 = 2112;
      v46 = v12;
      v47 = 2048;
      v48 = v13;
      v49 = 2080;
      v50 = "[TSSIMSetupFlow navigateToNextPaneFrom:navigationController:]_block_invoke_2";
      _os_log_impl(&dword_262AA8000, v5, OS_LOG_TYPE_DEFAULT, "next vc mismatch. expect:%@(%p), real:%@(%p) @%s", buf, 0x34u);
    }

    goto LABEL_5;
  }

  v15 = objc_loadWeakRetained((a1 + 64));
  [v15 receivedResponseWithVC:*(a1 + 40)];

  v16 = [*(a1 + 40) view];
  [v16 setUserInteractionEnabled:1];

  if (*(a1 + 72) == 1)
  {
    if ([*(a1 + 48) isMemberOfClass:objc_opt_class()])
    {
LABEL_5:
      v14 = *MEMORY[0x277D85DE8];
      return;
    }

    v17 = *(a1 + 32);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = *(a1 + 32);
      v19 = objc_loadWeakRetained((a1 + 64));
      [v19 addSubFlowViewController:v18];

      v20 = [v18 subFlow];
      v21 = [v20 firstViewControllerForDisplay];

      if (v21)
      {
        [*(a1 + 56) pushViewController:v21 animated:1];
        v22 = _TSLogDomain();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v23 = objc_opt_class();
          v24 = objc_loadWeakRetained((a1 + 64));
          v25 = [v24 topViewController];
          v26 = objc_opt_class();
          v27 = objc_loadWeakRetained((a1 + 64));
          v28 = [v27 topViewController];
          *buf = 138413314;
          v42 = v23;
          v43 = 2048;
          v44 = v21;
          v45 = 2112;
          v46 = v26;
          v47 = 2048;
          v48 = v28;
          v49 = 2080;
          v50 = "[TSSIMSetupFlow navigateToNextPaneFrom:navigationController:]_block_invoke";
          _os_log_impl(&dword_262AA8000, v22, OS_LOG_TYPE_DEFAULT, "push %@(%p) onto %@(%p) @%s", buf, 0x34u);
        }
      }

      else
      {
        v22 = _TSLogDomain();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218242;
          v42 = [v18 subFlowType];
          v43 = 2080;
          v44 = "[TSSIMSetupFlow navigateToNextPaneFrom:navigationController:]_block_invoke";
          _os_log_impl(&dword_262AA8000, v22, OS_LOG_TYPE_DEFAULT, "sub flow doesnot follow 1st VC paradigm : %lu @%s", buf, 0x16u);
        }
      }
    }

    else
    {
      [*(a1 + 56) pushViewController:*(a1 + 32) animated:1];
      v18 = _TSLogDomain();
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
LABEL_20:

        v36 = *(a1 + 32);
        v37 = objc_loadWeakRetained((a1 + 64));
        [v37 setTopViewController:v36];

        v38 = objc_loadWeakRetained((a1 + 64));
        [v38 setDismissingViewController:0];

        v39 = objc_loadWeakRetained((a1 + 64));
        [v39 setNextViewController:0];

        goto LABEL_5;
      }

      v30 = *(a1 + 32);
      v31 = objc_opt_class();
      v32 = *(a1 + 32);
      v21 = objc_loadWeakRetained((a1 + 64));
      v22 = [v21 topViewController];
      v33 = objc_opt_class();
      v34 = objc_loadWeakRetained((a1 + 64));
      v35 = [v34 topViewController];
      *buf = 138413314;
      v42 = v31;
      v43 = 2048;
      v44 = v32;
      v45 = 2112;
      v46 = v33;
      v47 = 2048;
      v48 = v35;
      v49 = 2080;
      v50 = "[TSSIMSetupFlow navigateToNextPaneFrom:navigationController:]_block_invoke";
      _os_log_impl(&dword_262AA8000, v18, OS_LOG_TYPE_DEFAULT, "push %@(%p) onto %@(%p) @%s", buf, 0x34u);
    }

    goto LABEL_20;
  }

  v40 = objc_loadWeakRetained((a1 + 64));
  [v40 navigateToNextPaneFrom:*(a1 + 32) navigationController:*(a1 + 56)];
  v29 = *MEMORY[0x277D85DE8];
}

- (void)addSubFlowViewController:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_initWeak(&location, self);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __43__TSSIMSetupFlow_addSubFlowViewController___block_invoke;
    block[3] = &unk_279B443D8;
    objc_copyWeak(&v7, &location);
    v6 = v4;
    dispatch_async(MEMORY[0x277D85CD0], block);

    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }
}

void __43__TSSIMSetupFlow_addSubFlowViewController___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained subFlowViewControllers];

  if (!v3)
  {
    v4 = objc_opt_new();
    v5 = objc_loadWeakRetained((a1 + 40));
    [v5 setSubFlowViewControllers:v4];
  }

  v7 = objc_loadWeakRetained((a1 + 40));
  v6 = [v7 subFlowViewControllers];
  [v6 addObject:*(a1 + 32)];
}

- (void)_maybeClearSubFlowViewController:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 flow];
    if (v6)
    {
      WeakRetained = objc_loadWeakRetained(&self->_navigationController);
      v8 = [WeakRetained viewControllers];

      if (v8)
      {
        v24 = 0u;
        v25 = 0u;
        v22 = 0u;
        v23 = 0u;
        v9 = objc_loadWeakRetained(&self->_navigationController);
        v10 = [v9 viewControllers];

        v11 = [v10 countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v23;
          while (2)
          {
            v14 = 0;
            do
            {
              if (*v23 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v22 + 1) + 8 * v14);
              if (v15 != v5)
              {
                v16 = [v15 flow];

                if (v6 == v16)
                {

                  goto LABEL_17;
                }
              }

              ++v14;
            }

            while (v12 != v14);
            v12 = [v10 countByEnumeratingWithState:&v22 objects:v30 count:16];
            if (v12)
            {
              continue;
            }

            break;
          }
        }

        v17 = _TSLogDomain();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v27 = v6;
          v28 = 2080;
          v29 = "[TSSIMSetupFlow _maybeClearSubFlowViewController:]";
          _os_log_impl(&dword_262AA8000, v17, OS_LOG_TYPE_DEFAULT, "flow is moved out. let's clean it : %@ @%s", buf, 0x16u);
        }

        objc_initWeak(buf, self);
        v19[0] = MEMORY[0x277D85DD0];
        v19[1] = 3221225472;
        v19[2] = __51__TSSIMSetupFlow__maybeClearSubFlowViewController___block_invoke;
        v19[3] = &unk_279B443D8;
        objc_copyWeak(&v21, buf);
        v20 = v6;
        dispatch_async(MEMORY[0x277D85CD0], v19);

        objc_destroyWeak(&v21);
        objc_destroyWeak(buf);
      }
    }

LABEL_17:
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __51__TSSIMSetupFlow__maybeClearSubFlowViewController___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained subFlowViewControllers];

  v4 = [v3 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v17 != v6)
      {
        objc_enumerationMutation(v3);
      }

      v8 = *(*(&v16 + 1) + 8 * v7);
      v9 = *(a1 + 32);
      v10 = [v8 subFlow];

      if (v9 == v10)
      {
        break;
      }

      if (v5 == ++v7)
      {
        v5 = [v3 countByEnumeratingWithState:&v16 objects:v24 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v11 = v8;

    if (!v11)
    {
      goto LABEL_15;
    }

    v12 = _TSLogDomain();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v21 = v11;
      v22 = 2080;
      v23 = "[TSSIMSetupFlow _maybeClearSubFlowViewController:]_block_invoke";
      _os_log_impl(&dword_262AA8000, v12, OS_LOG_TYPE_DEFAULT, "clear subflow vc : %@ @%s", buf, 0x16u);
    }

    v13 = objc_loadWeakRetained((a1 + 40));
    v14 = [v13 subFlowViewControllers];
    [v14 removeObject:v11];
  }

  else
  {
LABEL_9:
    v11 = v3;
  }

LABEL_15:
  v15 = *MEMORY[0x277D85DE8];
}

- (void)maybePrepareNextDisplayViewController:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (objc_opt_respondsToSelector())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v6;
    }

    else
    {
      v8 = 0;
    }

    objc_initWeak(&location, self);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __67__TSSIMSetupFlow_maybePrepareNextDisplayViewController_completion___block_invoke;
    v10[3] = &unk_279B44B10;
    v13 = v7;
    v9 = v8;
    v11 = v9;
    v12 = v6;
    objc_copyWeak(&v14, &location);
    [v12 prepare:v10];
    objc_destroyWeak(&v14);

    objc_destroyWeak(&location);
  }

  else
  {
    (*(v7 + 2))(v7, v6);
  }
}

void __67__TSSIMSetupFlow_maybePrepareNextDisplayViewController_completion___block_invoke(id *a1, char a2)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__TSSIMSetupFlow_maybePrepareNextDisplayViewController_completion___block_invoke_2;
  block[3] = &unk_279B44AE8;
  v8 = a2;
  v6 = a1[6];
  v4 = a1[4];
  v5 = a1[5];
  objc_copyWeak(&v7, a1 + 7);
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(&v7);
}

void __67__TSSIMSetupFlow_maybePrepareNextDisplayViewController_completion___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 64))
  {
    v2 = *(a1 + 32);
    if (v2)
    {
      v3 = [v2 subFlow];
      v8 = [v3 firstViewControllerForDisplay];

      if (v8)
      {
        WeakRetained = objc_loadWeakRetained((a1 + 56));
        [WeakRetained addSubFlowViewController:*(a1 + 32)];
      }

      (*(*(a1 + 48) + 16))();

      return;
    }

    v7 = *(a1 + 40);
    v6 = *(*(a1 + 48) + 16);
  }

  else
  {
    v5 = *(a1 + 48);
    v6 = *(*(a1 + 48) + 16);
  }

  v6();
}

- (void)_maybeClearSubFlow
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [(TSSIMSetupFlow *)self nextViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = _TSLogDomain();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315138;
      v12 = "[TSSIMSetupFlow _maybeClearSubFlow]";
      _os_log_impl(&dword_262AA8000, v5, OS_LOG_TYPE_DEFAULT, "clear nextVC @%s", &v11, 0xCu);
    }

    v6 = [(TSSIMSetupFlow *)self nextViewController];
    [(TSSIMSetupFlow *)self setNextViewController:0];
    v7 = [v6 subFlow];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      v9 = [v6 subFlow];
      [v9 performSelector:sel_cancelFlow];
    }

    [v6 setSubFlow:0];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_notifyFlowCompletion:(unint64_t)a3
{
  self->_isFlowFinished = 1;
  firstViewControllerInstance = self->_firstViewControllerInstance;
  self->_firstViewControllerInstance = 0;

  v6 = _TSLogDomain();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [TSSIMSetupFlow _notifyFlowCompletion:];
  }

  [(TSSIMSetupFlow *)self setDismissingViewController:0];
  [(NSMutableDictionary *)self->_backOptions removeAllObjects];
  v7 = [(TSSIMSetupFlow *)self delegate];

  if (!v7)
  {
    v8 = _TSLogDomain();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [TSSIMSetupFlow _notifyFlowCompletion:];
    }
  }

  v9 = [(TSSIMSetupFlow *)self delegate];
  v10 = objc_opt_respondsToSelector();

  v11 = [(TSSIMSetupFlow *)self delegate];
  v12 = v11;
  if (v10)
  {
    [v11 simSetupFlowCompleted:a3];
  }

  else
  {
    [v11 simSetupFlowCompleted];
  }

  WeakRetained = objc_loadWeakRetained(&self->_parentFlow);
  if (!WeakRetained)
  {
    v14 = +[TSUserInPurchaseFlowAssertion sharedInstance];
    [v14 deassertUserInPurchaseFlowWithForce:1 caller:self];
  }

  [(TSSIMSetupFlow *)self flowCompleted:a3];
}

- (void)viewControllerDidComplete:(id)a3
{
  v4 = a3;
  v5 = [v4 navigationController];
  [(TSSIMSetupFlow *)self navigateToNextPaneFrom:v4 navigationController:v5];
}

- (void)userDidTapCancel
{
  WeakRetained = objc_loadWeakRetained(&self->_topViewController);
  v4 = [WeakRetained presentedViewController];

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->_topViewController);
    v6 = [v5 presentedViewController];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __34__TSSIMSetupFlow_userDidTapCancel__block_invoke;
    v7[3] = &unk_279B44578;
    v7[4] = self;
    [v6 dismissViewControllerAnimated:1 completion:v7];
  }

  else
  {
    [(TSSIMSetupFlow *)self _maybeClearSubFlow];

    [(TSSIMSetupFlow *)self _notifyFlowCompletion:1];
  }
}

- (void)waitForResponse:(id)a3
{
  v15 = a3;
  if ((objc_opt_respondsToSelector() & 1) == 0 || ![v15 performSelector:sel_customizeSpinner])
  {
    v4 = +[TSNavigationBarSpinnerManager sharedManager];
    v5 = [v15 navigationItem];
    [v4 startSpinnerInNavigationItem:v5 withIdentifier:@"waiting"];
  }

  v6 = [v15 view];
  [v6 setUserInteractionEnabled:0];

  v7 = objc_alloc_init(ViewControllerBackOption);
  v8 = [v15 navigationItem];
  v9 = [v8 hidesBackButton];

  if (v9)
  {
    [(ViewControllerBackOption *)v7 setHidesBackButton:1];
    v10 = [v15 navigationItem];
    v11 = [v10 leftBarButtonItems];
    [(ViewControllerBackOption *)v7 setLeftBarButtonItems:v11];

    v12 = [v15 navigationItem];
    [v12 setLeftBarButtonItem:0 animated:0];
  }

  else
  {
    [(ViewControllerBackOption *)v7 setHidesBackButton:0];
    v12 = [v15 navigationItem];
    [v12 setHidesBackButton:1];
  }

  v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%p", v15];
  v14 = [(NSMutableDictionary *)self->_backOptions objectForKeyedSubscript:v13];

  if (!v14)
  {
    [(NSMutableDictionary *)self->_backOptions setObject:v7 forKeyedSubscript:v13];
  }
}

- (void)receivedResponse
{
  v2 = +[TSNavigationBarSpinnerManager sharedManager];
  [v2 stopSpinnerForIdentifier:@"waiting"];
}

- (void)receivedResponseWithVC:(id)a3
{
  v14 = a3;
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%p", v14];
  v5 = [(NSMutableDictionary *)self->_backOptions objectForKeyedSubscript:v4];

  if (v5)
  {
    v6 = [(NSMutableDictionary *)self->_backOptions objectForKeyedSubscript:v4];
    v7 = v6;
    if (v6)
    {
      if (([v6 hidesBackButton] & 1) == 0)
      {
        v9 = [v14 navigationItem];
        [v9 setHidesBackButton:0];
        goto LABEL_7;
      }

      v8 = [v7 leftBarButtonItems];

      if (v8)
      {
        v9 = [v14 navigationItem];
        v10 = [v7 leftBarButtonItems];
        [v9 setLeftBarButtonItems:v10 animated:0];

LABEL_7:
      }
    }

    [(NSMutableDictionary *)self->_backOptions removeObjectForKey:v4];
  }

  v11 = [v14 view];
  [v11 setUserInteractionEnabled:1];

  v12 = +[TSNavigationBarSpinnerManager sharedManager];
  v13 = [v14 navigationItem];
  [v12 stopSpinnerInNavigationItem:v13 withIdentifier:@"waiting"];
}

- (void)attemptFailed
{
  [(TSSIMSetupFlow *)self _maybeClearSubFlow];

  [(TSSIMSetupFlow *)self _notifyFlowCompletion:3];
}

- (void)cancelNextPane
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = _TSLogDomain();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[TSSIMSetupFlow cancelNextPane]";
    _os_log_impl(&dword_262AA8000, v3, OS_LOG_TYPE_DEFAULT, "cancel next pane @%s", &v8, 0xCu);
  }

  [(TSSIMSetupFlow *)self setDismissingViewController:0];
  v4 = [(TSSIMSetupFlow *)self nextViewController];
  [v4 setDelegate:0];

  [(TSSIMSetupFlow *)self _maybeClearSubFlow];
  [(TSSIMSetupFlow *)self setNextViewController:0];
  v5 = [(TSSIMSetupFlow *)self topViewController];
  v6 = [v5 view];
  [v6 setUserInteractionEnabled:1];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)maybeRegisterDismissHandler:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!+[TSUtilities inBuddy])
  {
    WeakRetained = objc_loadWeakRetained(&self->_parentFlow);

    if (!WeakRetained)
    {
      v6 = [v4 navigationController];

      if (!v6)
      {
        v13 = _TSLogDomain();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          [TSSIMSetupFlow maybeRegisterDismissHandler:];
        }

        goto LABEL_14;
      }

      v7 = [v4 navigationController];
      v8 = [v7 presentationController];
      v9 = [v8 delegate];

      if (!v9)
      {
        v17 = _TSLogDomain();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v18 = [v4 navigationController];
          v19 = [v18 presentationController];
          v21 = 138412802;
          v22 = v19;
          v23 = 2112;
          v24 = self;
          v25 = 2080;
          v26 = "[TSSIMSetupFlow maybeRegisterDismissHandler:]";
          _os_log_impl(&dword_262AA8000, v17, OS_LOG_TYPE_DEFAULT, "register UIAdaptivePresentationControllerDelegate for %@. self = %@ @%s", &v21, 0x20u);
        }

        v13 = [v4 navigationController];
        v14 = [v13 presentationController];
        [v14 setDelegate:self];
        goto LABEL_13;
      }

      v10 = [v4 navigationController];
      v11 = [v10 presentationController];
      v12 = [v11 delegate];

      if (v12 != self)
      {
        v13 = _TSLogDomain();
        if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
LABEL_14:

          goto LABEL_15;
        }

        v14 = [v4 navigationController];
        v15 = [v14 presentationController];
        v16 = [v15 delegate];
        v21 = 138412802;
        v22 = v16;
        v23 = 2112;
        v24 = self;
        v25 = 2080;
        v26 = "[TSSIMSetupFlow maybeRegisterDismissHandler:]";
        _os_log_impl(&dword_262AA8000, v13, OS_LOG_TYPE_DEFAULT, "UIAdaptivePresentationControllerDelegate:%@ is not self:%@ @%s", &v21, 0x20u);

LABEL_13:
        goto LABEL_14;
      }
    }
  }

LABEL_15:

  v20 = *MEMORY[0x277D85DE8];
}

- (void)appForegrounded
{
  v8 = *MEMORY[0x277D85DE8];
  if ([(TSSIMSetupFlow *)self isBootstrapAssertionRequired])
  {
    v3 = _TSLogDomain();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v6 = 136315138;
      v7 = "[TSSIMSetupFlow appForegrounded]";
      _os_log_impl(&dword_262AA8000, v3, OS_LOG_TYPE_INFO, "[I] app in foreground, assert bootstrap @%s", &v6, 0xCu);
    }

    v4 = +[TSUserInPurchaseFlowAssertion sharedInstance];
    [v4 assertUserInPurchaseFlowStartOver:0 caller:self];
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)appBackgrounded
{
  v8 = *MEMORY[0x277D85DE8];
  if ([(TSSIMSetupFlow *)self isBootstrapAssertionRequired])
  {
    v3 = _TSLogDomain();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v6 = 136315138;
      v7 = "[TSSIMSetupFlow appBackgrounded]";
      _os_log_impl(&dword_262AA8000, v3, OS_LOG_TYPE_INFO, "[I] app in background, deassert bootstrap @%s", &v6, 0xCu);
    }

    v4 = +[TSUserInPurchaseFlowAssertion sharedInstance];
    [v4 deassertUserInPurchaseFlowWithForce:1 caller:self];
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)showLoadFailureAlert:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__TSSIMSetupFlow_showLoadFailureAlert_error___block_invoke;
  block[3] = &unk_279B44688;
  v11 = v7;
  v12 = self;
  v13 = v6;
  v8 = v6;
  v9 = v7;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __45__TSSIMSetupFlow_showLoadFailureAlert_error___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 && [v2 code] == 68)
  {
    v3 = +[TSUtilities isGreenTeaCapable];
    v4 = *(a1 + 40);
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = v5;
    if (v3)
    {
      v7 = @"NOT_CONNECTED_TO_WLAN";
    }

    else
    {
      v7 = @"NOT_CONNECTED_TO_WIFI";
    }

    v8 = [v5 localizedStringForKey:v7 value:&stru_28753DF48 table:@"Localizable"];

    if (+[TSUtilities isGreenTeaCapable])
    {
      v9 = @"TURN_ON_WLAN_TO_PURCHASE_PLAN";
    }

    else
    {
      v9 = @"TURN_ON_WIFI_TO_PURCHASE_PLAN";
    }
  }

  else
  {
    v10 = *(a1 + 40);
    v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = [v11 localizedStringForKey:@"Connection Failed" value:&stru_28753DF48 table:@"Localizable"];

    v9 = @"The connection to the server was lost.  Please try again later.";
  }

  v12 = *(a1 + 40);
  v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v14 = [v13 localizedStringForKey:v9 value:&stru_28753DF48 table:@"Localizable"];

  v15 = [MEMORY[0x277D75110] alertControllerWithTitle:v8 message:v14 preferredStyle:1];
  v16 = MEMORY[0x277D750F8];
  v17 = *(a1 + 40);
  v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v19 = [v18 localizedStringForKey:@"ERROR_OK" value:&stru_28753DF48 table:@"Localizable"];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __45__TSSIMSetupFlow_showLoadFailureAlert_error___block_invoke_2;
  v21[3] = &unk_279B44B38;
  v21[4] = *(a1 + 40);
  v20 = [v16 actionWithTitle:v19 style:0 handler:v21];
  [v15 addAction:v20];

  [*(a1 + 48) presentViewController:v15 animated:1 completion:0];
}

- (id)rootFlow
{
  v2 = self;
  v3 = [(TSSIMSetupFlow *)v2 parentFlow];

  if (v3)
  {
    do
    {
      v4 = [(TSSIMSetupFlow *)v2 parentFlow];

      v5 = [(TSSIMSetupFlow *)v4 parentFlow];

      v2 = v4;
    }

    while (v5);
  }

  else
  {
    v4 = v2;
  }

  v6 = _TSLogDomain();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [TSSIMSetupFlow rootFlow];
  }

  return v4;
}

void __39__TSSIMSetupFlow_setIdleTimerDisabled___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277D75128] sharedApplication];
  [v2 setIdleTimerDisabled:v1];
}

- (TSSIMSetupDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (TSSIMSetupFlow)parentFlow
{
  WeakRetained = objc_loadWeakRetained(&self->_parentFlow);

  return WeakRetained;
}

- (UINavigationController)navigationController
{
  WeakRetained = objc_loadWeakRetained(&self->_navigationController);

  return WeakRetained;
}

- (UIViewController)dismissingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_dismissingViewController);

  return WeakRetained;
}

- (TSSetupFlowItem)nextViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_nextViewController);

  return WeakRetained;
}

+ (void)_flowWithOptions:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)_flowWithOptions:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)_flowWithOptions:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)rootViewController
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = [a1 rootFlow];
  v6 = 138412802;
  v7 = a1;
  v8 = 2112;
  v9 = v4;
  v10 = 2080;
  v11 = "[TSSIMSetupFlow rootViewController]";
  _os_log_error_impl(&dword_262AA8000, a2, OS_LOG_TYPE_ERROR, "[E]root vc not find. flow - %@, root - %@ @%s", &v6, 0x20u);

  v5 = *MEMORY[0x277D85DE8];
}

- (void)restartWith:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_0(&dword_262AA8000, v0, v1, "[Db] sender = %@ @%s", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)restartWith:(void *)a1 .cold.2(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 target];
  OUTLINED_FUNCTION_0();
  v6 = "[TSSIMSetupFlow restartWith:]";
  _os_log_debug_impl(&dword_262AA8000, a2, OS_LOG_TYPE_DEBUG, "[Db] vc:%@ @%s", v5, 0x16u);

  v4 = *MEMORY[0x277D85DE8];
}

- (void)restartWith:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __29__TSSIMSetupFlow__startOver___block_invoke_3_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_popAllSIMSetupFlowViewControllers:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_pushStartOverViewController:(os_log_t)log from:.cold.1(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "[TSSIMSetupFlow _pushStartOverViewController:from:]";
  _os_log_fault_impl(&dword_262AA8000, log, OS_LOG_TYPE_FAULT, "[F]cannot found old root view controller index @%s", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)startOverWithFirstViewController:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  OUTLINED_FUNCTION_0();
  v5 = "[TSSIMSetupFlow startOverWithFirstViewController:]";
  _os_log_error_impl(&dword_262AA8000, a2, OS_LOG_TYPE_ERROR, "[E]%@ doesnot support start over @%s", v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)navigateToNextPaneFrom:(os_log_t)log navigationController:.cold.1(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "[TSSIMSetupFlow navigateToNextPaneFrom:navigationController:]";
  _os_log_fault_impl(&dword_262AA8000, log, OS_LOG_TYPE_FAULT, "[F]missing navigation controller, UI transition will not work @%s", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void __62__TSSIMSetupFlow_navigateToNextPaneFrom_navigationController___block_invoke_cold_1(uint64_t *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_notifyFlowCompletion:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_0(&dword_262AA8000, v0, v1, "[Db] flow %@ finished @%s", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_notifyFlowCompletion:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)maybeRegisterDismissHandler:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)rootFlow
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_0(&dword_262AA8000, v0, v1, "[Db] Root flow : %@ @%s", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end