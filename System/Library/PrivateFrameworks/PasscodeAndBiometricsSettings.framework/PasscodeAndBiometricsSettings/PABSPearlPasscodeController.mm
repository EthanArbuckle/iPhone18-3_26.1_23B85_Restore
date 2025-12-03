@interface PABSPearlPasscodeController
- (BOOL)faceIDEnrollmentCoordinatorShouldPresentInModalSheet:(id)sheet;
- (BOOL)hasMatchingBiometricTemplate;
- (BOOL)hasReachedMaximumBiometricEnrollmentCount;
- (BOOL)isEnrolled;
- (BOOL)isEnrollmentAvailable;
- (BOOL)isPeriocularEnabled;
- (LAContext)authContext;
- (PABSPearlPasscodeController)init;
- (id)addGlassesSpecifier;
- (id)biometricLogo;
- (id)biometricTableViewHeader;
- (id)enrollPeriocularAlternateAppearanceSpecifier;
- (id)faceIDSpecifiers;
- (id)faceIDSpecifiersWithPeriocular;
- (id)getResetFaceIDGroupSpecifiers;
- (id)isPeriocularFaceIDMatchEnabled:(id)enabled;
- (id)numberOfAppsUsingPearlDescription:(id)description;
- (id)passcodeController;
- (id)resetFaceIDSpecifier;
- (id)setupAlternateAppearanceSpecifier;
- (id)setupFaceIDSpecifier;
- (id)specifiers;
- (id)unlockWithFaceMaskSpecifier;
- (unint64_t)currentPeriocularEnrollmentState;
- (unint64_t)numberOfAppsUsingPearl;
- (void)backgrounded:(id)backgrounded;
- (void)cancelModalFlow;
- (void)dealloc;
- (void)deleteAllIdentities;
- (void)deleteFaceIDIdentitiesCheckWithSpecifier:(id)specifier;
- (void)enroll:(id)enroll;
- (void)enrollGlassesForExistingAppearance:(id)appearance;
- (void)enrollPeriocularForExistingAppearance:(id)appearance;
- (void)event:(int64_t)event params:(id)params reply:(id)reply;
- (void)faceIDEnrollmentCoordinator:(id)coordinator finishedEnrollmentWithError:(id)error;
- (void)faceIDEnrollmentCoordinatorWillDismiss:(id)dismiss;
- (void)handleDTOStatusChanged;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)passcodeViewController:(id)controller didFinishWithPasscodeCreation:(id)creation;
- (void)pearlLearnMoreTapped:(id)tapped;
- (void)popPearlEnrollmentController;
- (void)presentAlertForAlternateAppearanceIfNecessary:(id)necessary;
- (void)presentAlertForDeletingPearlIdentities;
- (void)presentSecondAlertForDeletingMatchedBiometricTemplate;
- (void)proceedToEnrollGlassesForExistingAppearance:(id)appearance;
- (void)proceedToEnrollPeriocularForExistingAppearance:(id)appearance;
- (void)proceedToEnrollWithSpecifier:(id)specifier;
- (void)proceedWithChecksToDeleteFaceIDWithSpecifier:(id)specifier;
- (void)pushPasscodePane;
- (void)refetchBiometricTemplateWithSpecifier:(id)specifier action:(id)action;
- (void)reloadFaceIDResetGroup;
- (void)setBiometricUnlockEnabled:(id)enabled specifier:(id)specifier;
- (void)setPeriocularFaceIDMatchEnabled:(id)enabled specifier:(id)specifier;
- (void)updateResetFaceIDButtonSpecifierEnablementStatus:(id)status;
- (void)updateResetFaceIDGroupFooter:(id)footer;
- (void)validateBiometricTemplateUUIDAndEnroll:(id)enroll;
- (void)validateBiometricTemplateUUIDWithSpecifier:(id)specifier action:(id)action;
@end

@implementation PABSPearlPasscodeController

- (PABSPearlPasscodeController)init
{
  v8.receiver = self;
  v8.super_class = PABSPearlPasscodeController;
  v2 = [(PABSBiometricController *)&v8 init];
  if (v2)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel_reloadSpecifiers name:@"PABSBiometricsDidUpdate" object:0];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:v2 selector:sel_backgrounded_ name:*MEMORY[0x277D76660] object:0];

    v5 = objc_opt_new();
    dtoController = v2->_dtoController;
    v2->_dtoController = v5;
  }

  return v2;
}

- (void)dealloc
{
  if ([(PABSBiometricController *)self isObservingBiometricTemplateFetchingStatus])
  {
    [(PABSPearlPasscodeController *)self removeObserver:self forKeyPath:@"currentBiometricTemplateFetchStatus"];
  }

  [(LAContext *)self->_authContext invalidate];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:@"PABSBiometricsDidUpdate" object:0];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 removeObserver:self name:*MEMORY[0x277D76660] object:0];

  v5.receiver = self;
  v5.super_class = PABSPearlPasscodeController;
  [(PABSPasscodeLockController *)&v5 dealloc];
}

- (void)backgrounded:(id)backgrounded
{
  backgroundedCopy = backgrounded;
  [(PABSBiometricController *)self cancelModalFlowWithCompletion:0];
  [(PABSPearlPasscodeController *)self popPearlEnrollmentController];
  presenter = [(PABSPearlPasscodeController *)self presenter];
  splashController = [presenter splashController];

  if (splashController)
  {
    objc_initWeak(&location, self);
    presenter2 = [(PABSPearlPasscodeController *)self presenter];
    splashController2 = [presenter2 splashController];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __44__PABSPearlPasscodeController_backgrounded___block_invoke;
    v9[3] = &unk_279A031D0;
    objc_copyWeak(&v10, &location);
    [splashController2 dismissViewControllerAnimated:0 completion:v9];

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

void __44__PABSPearlPasscodeController_backgrounded___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setPresenter:0];
}

- (void)popPearlEnrollmentController
{
  faceIDEnrollmentCoordinator = [(PABSPearlPasscodeController *)self faceIDEnrollmentCoordinator];
  presentedViewController = [faceIDEnrollmentCoordinator presentedViewController];
  [presentedViewController dismissViewControllerAnimated:1 completion:0];

  [(PABSPearlPasscodeController *)self setFaceIDEnrollmentCoordinator:0];
}

- (void)validateBiometricTemplateUUIDWithSpecifier:(id)specifier action:(id)action
{
  v16 = *MEMORY[0x277D85DE8];
  specifierCopy = specifier;
  actionCopy = action;
  v8 = PABSLogForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 134217984;
    currentBiometricTemplateFetchStatus = [(PABSBiometricController *)self currentBiometricTemplateFetchStatus];
    _os_log_impl(&dword_25E0E9000, v8, OS_LOG_TYPE_DEFAULT, "Current biometric template fetch status: %ld", &v14, 0xCu);
  }

  currentBiometricTemplateFetchStatus2 = [(PABSBiometricController *)self currentBiometricTemplateFetchStatus];
  if (currentBiometricTemplateFetchStatus2 <= 1)
  {
    if (!currentBiometricTemplateFetchStatus2)
    {
LABEL_17:
      v12 = PABSLogForCategory(0);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v14) = 0;
        _os_log_impl(&dword_25E0E9000, v12, OS_LOG_TYPE_DEFAULT, "Refetching biometric templates", &v14, 2u);
      }

      [(PABSPearlPasscodeController *)self refetchBiometricTemplateWithSpecifier:specifierCopy action:actionCopy];
      goto LABEL_20;
    }

    if (currentBiometricTemplateFetchStatus2 == 1)
    {
      v10 = PABSLogForCategory(0);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v14) = 0;
        _os_log_impl(&dword_25E0E9000, v10, OS_LOG_TYPE_DEFAULT, "Still in process of fetching biometric templates, wait for it to finish", &v14, 2u);
      }

      [(PSListController *)self configureSpin:1 ofCellForSpecifier:specifierCopy setEnabled:0];
      if (![(PABSBiometricController *)self isObservingBiometricTemplateFetchingStatus])
      {
        [(PABSPearlPasscodeController *)self addObserver:self forKeyPath:@"currentBiometricTemplateFetchStatus" options:1 context:@"BiometricTemplateFetchingState"];
        [(PABSBiometricController *)self setIsObservingBiometricTemplateFetchingStatus:1];
      }
    }
  }

  else
  {
    if (currentBiometricTemplateFetchStatus2 != 2 && currentBiometricTemplateFetchStatus2 != 4)
    {
      if (currentBiometricTemplateFetchStatus2 != 3)
      {
        goto LABEL_20;
      }

      goto LABEL_17;
    }

    v11 = PABSLogForCategory(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&dword_25E0E9000, v11, OS_LOG_TYPE_DEFAULT, "Finished fetching biometric templates, check to see if need to present alert for alternate appearance", &v14, 2u);
    }

    actionCopy[2](actionCopy);
  }

LABEL_20:

  v13 = *MEMORY[0x277D85DE8];
}

- (void)validateBiometricTemplateUUIDAndEnroll:(id)enroll
{
  enrollCopy = enroll;
  v5 = PABSLogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_25E0E9000, v5, OS_LOG_TYPE_DEFAULT, "Face ID: User pressed Set Up an Alternate Appearance", buf, 2u);
  }

  objc_initWeak(buf, self);
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __70__PABSPearlPasscodeController_validateBiometricTemplateUUIDAndEnroll___block_invoke;
  v11 = &unk_279A030A8;
  objc_copyWeak(&v13, buf);
  v6 = enrollCopy;
  v12 = v6;
  v7 = _Block_copy(&v8);
  [(PABSPearlPasscodeController *)self validateBiometricTemplateUUIDWithSpecifier:v6 action:v7, v8, v9, v10, v11];

  objc_destroyWeak(&v13);
  objc_destroyWeak(buf);
}

void __70__PABSPearlPasscodeController_validateBiometricTemplateUUIDAndEnroll___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained presentAlertForAlternateAppearanceIfNecessary:*(a1 + 32)];
}

- (void)refetchBiometricTemplateWithSpecifier:(id)specifier action:(id)action
{
  specifierCopy = specifier;
  actionCopy = action;
  [(PSListController *)self configureSpin:1 ofCellForSpecifier:specifierCopy setEnabled:0];
  objc_initWeak(&location, self);
  v8 = PABSLogForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25E0E9000, v8, OS_LOG_TYPE_DEFAULT, "Start refetching biometric templates", buf, 2u);
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __76__PABSPearlPasscodeController_refetchBiometricTemplateWithSpecifier_action___block_invoke;
  v11[3] = &unk_279A031F8;
  objc_copyWeak(&v14, &location);
  v9 = specifierCopy;
  v12 = v9;
  v10 = actionCopy;
  v13 = v10;
  [(PABSBiometricController *)self fetchBiometricTemplateUUIDsWithCompletion:v11];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __76__PABSPearlPasscodeController_refetchBiometricTemplateWithSpecifier_action___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));

  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained((a1 + 48));
    v4 = [v3 currentBiometricTemplateFetchStatus];
    v5 = PABSLogForCategory(0);
    v6 = v5;
    if (v4 == 3)
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        __76__PABSPearlPasscodeController_refetchBiometricTemplateWithSpecifier_action___block_invoke_cold_1();
      }

      [v3 refetchBiometricTemplateWithSpecifier:*(a1 + 32) action:*(a1 + 40)];
    }

    else
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *v7 = 0;
        _os_log_impl(&dword_25E0E9000, v6, OS_LOG_TYPE_DEFAULT, "Configure alert for alternate appearance", v7, 2u);
      }

      [v3 configureSpin:0 ofCellForSpecifier:*(a1 + 32) setEnabled:1];
      (*(*(a1 + 40) + 16))();
    }
  }
}

- (BOOL)hasMatchingBiometricTemplate
{
  v40 = *MEMORY[0x277D85DE8];
  v2 = PABSLogForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25E0E9000, v2, OS_LOG_TYPE_DEFAULT, "Checking biometric identify for matched biometric template", buf, 2u);
  }

  v3 = +[PABSBiometrics sharedInstance];
  v4 = [v3 identitiesForIdentityType:2];

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v4;
  v5 = [obj countByEnumeratingWithState:&v30 objects:v39 count:16];
  if (v5)
  {
    v7 = v5;
    v23 = 0;
    v24 = *v31;
    *&v6 = 138412546;
    v21 = v6;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v31 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v30 + 1) + 8 * i);
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        storedBiometricTemplates = [(PABSBiometricController *)self storedBiometricTemplates];
        v11 = [storedBiometricTemplates countByEnumeratingWithState:&v26 objects:v38 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v27;
          while (2)
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v27 != v13)
              {
                objc_enumerationMutation(storedBiometricTemplates);
              }

              v15 = *(*(&v26 + 1) + 8 * j);
              uuid = [v9 uuid];
              v17 = [v15 isEqual:uuid];

              if (v17)
              {
                v18 = PABSLogForCategory(0);
                if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = v21;
                  v35 = v9;
                  v36 = 2112;
                  v37 = v15;
                  _os_log_impl(&dword_25E0E9000, v18, OS_LOG_TYPE_DEFAULT, "Found matching BKIdentity: %@ matches UUID:%@ in stored biometric templates", buf, 0x16u);
                }

                v23 = 1;
                goto LABEL_20;
              }
            }

            v12 = [storedBiometricTemplates countByEnumeratingWithState:&v26 objects:v38 count:16];
            if (v12)
            {
              continue;
            }

            break;
          }
        }

LABEL_20:
      }

      v7 = [obj countByEnumeratingWithState:&v30 objects:v39 count:16];
    }

    while (v7);
  }

  else
  {
    v23 = 0;
  }

  v19 = *MEMORY[0x277D85DE8];
  return v23 & 1;
}

- (void)presentAlertForAlternateAppearanceIfNecessary:(id)necessary
{
  necessaryCopy = necessary;
  storedBiometricTemplates = [(PABSBiometricController *)self storedBiometricTemplates];
  if (![storedBiometricTemplates count])
  {

    goto LABEL_8;
  }

  currentBiometricTemplateFetchStatus = [(PABSBiometricController *)self currentBiometricTemplateFetchStatus];

  if (currentBiometricTemplateFetchStatus == 4)
  {
LABEL_8:
    v8 = PABSLogForCategory(0);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
LABEL_11:

      [(PABSPearlPasscodeController *)self enroll:necessaryCopy];
      goto LABEL_12;
    }

    *buf = 0;
    v17 = "No stored biometric templates, start enrolling process";
LABEL_10:
    _os_log_impl(&dword_25E0E9000, v8, OS_LOG_TYPE_DEFAULT, v17, buf, 2u);
    goto LABEL_11;
  }

  hasMatchingBiometricTemplate = [(PABSPearlPasscodeController *)self hasMatchingBiometricTemplate];
  v8 = PABSLogForCategory(0);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (!hasMatchingBiometricTemplate)
  {
    if (!v9)
    {
      goto LABEL_11;
    }

    *buf = 0;
    v17 = "Did not found matching biometric template for enrolled faceID, proceed to enroll alternate appearance";
    goto LABEL_10;
  }

  if (v9)
  {
    *buf = 0;
    _os_log_impl(&dword_25E0E9000, v8, OS_LOG_TYPE_DEFAULT, "Found matching biometric template for enrolled faceID, presenting alert", buf, 2u);
  }

  v10 = MEMORY[0x277D75110];
  v11 = PABS_LocalizedStringForPasscodeLock(@"PEAL_ALTERNATE_FACE_ALERT_TITLE");
  v12 = PABS_LocalizedStringForPasscodeLock(@"PEAL_ALTERNATE_FACE_ALERT_MESSAGE");
  v13 = [v10 alertControllerWithTitle:v11 message:v12 preferredStyle:1];

  v14 = MEMORY[0x277D750F8];
  v15 = PABS_LocalizedStringForPasscodeLock(@"OK");
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __77__PABSPearlPasscodeController_presentAlertForAlternateAppearanceIfNecessary___block_invoke;
  v21 = &unk_279A03220;
  selfCopy = self;
  v23 = necessaryCopy;
  v16 = [v14 actionWithTitle:v15 style:0 handler:&v18];
  [v13 addAction:{v16, v18, v19, v20, v21, selfCopy}];

  [(PABSPearlPasscodeController *)self presentViewController:v13 animated:1 completion:0];
LABEL_12:
}

- (void)handleDTOStatusChanged
{
  v7.receiver = self;
  v7.super_class = PABSPearlPasscodeController;
  [(PABSPasscodeLockController *)&v7 handleDTOStatusChanged];
  v3 = PABSLogForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_25E0E9000, v3, OS_LOG_TYPE_DEFAULT, "Pearl Controller: DTOStatusChanged", buf, 2u);
  }

  objc_initWeak(buf, self);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__PABSPearlPasscodeController_handleDTOStatusChanged__block_invoke;
  block[3] = &unk_279A031D0;
  objc_copyWeak(&v5, buf);
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(&v5);
  objc_destroyWeak(buf);
}

void __53__PABSPearlPasscodeController_handleDTOStatusChanged__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained reloadFaceIDResetGroup];
  }

  else
  {
    v3 = PABSLogForCategory(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __53__PABSPearlPasscodeController_handleDTOStatusChanged__block_invoke_cold_1();
    }
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  v25 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  if (context == @"BiometricTemplateFetchingState")
  {
    v11 = PABSLogForCategory(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      currentBiometricTemplateFetchStatus = [(PABSBiometricController *)self currentBiometricTemplateFetchStatus];
      _os_log_impl(&dword_25E0E9000, v11, OS_LOG_TYPE_DEFAULT, "In KVO, current biometric template fetch status: %ld", buf, 0xCu);
    }

    if ([(PABSBiometricController *)self currentBiometricTemplateFetchStatus]== 2)
    {
      v12 = [(PABSPearlPasscodeController *)self specifierForID:@"UPDATE_APPEARANCE"];
      v13 = v12;
      v14 = MEMORY[0x277D40148];
      if (v12)
      {
        v15 = [v12 propertyForKey:*MEMORY[0x277D40148]];
        if (([v15 cellEnabled] & 1) == 0)
        {
          v16 = PABSLogForCategory(0);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_25E0E9000, v16, OS_LOG_TYPE_DEFAULT, "In KVO, continue validating biometric template for updating appearance", buf, 2u);
          }

          [(PSListController *)self configureSpin:0 ofCellForSpecifier:v13 setEnabled:1];
          [(PABSPearlPasscodeController *)self validateBiometricTemplateUUIDAndEnroll:v13];
        }
      }

      v17 = [(PABSPearlPasscodeController *)self specifierForID:@"PEARL_REMOVE_FACE"];
      v18 = v17;
      if (v17)
      {
        v19 = [v17 propertyForKey:*v14];
        if (([v19 cellEnabled] & 1) == 0)
        {
          v20 = PABSLogForCategory(0);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_25E0E9000, v20, OS_LOG_TYPE_DEFAULT, "In KVO, continue validating biometric template for resetting faceID", buf, 2u);
          }

          [(PSListController *)self configureSpin:0 ofCellForSpecifier:v18 setEnabled:1];
          [(PABSPearlPasscodeController *)self deleteFaceIDIdentitiesCheckWithSpecifier:v18];
        }
      }

      [(PABSPearlPasscodeController *)self removeObserver:self forKeyPath:pathCopy];
      [(PABSBiometricController *)self setIsObservingBiometricTemplateFetchingStatus:0];
    }

    else if ([(PABSBiometricController *)self currentBiometricTemplateFetchStatus]== 3)
    {
      [(PABSBiometricController *)self fetchBiometricTemplateUUIDsWithCompletion:0];
    }
  }

  else
  {
    v22.receiver = self;
    v22.super_class = PABSPearlPasscodeController;
    [(PABSPearlPasscodeController *)&v22 observeValueForKeyPath:pathCopy ofObject:object change:change context:context];
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)enroll:(id)enroll
{
  enrollCopy = enroll;
  v5 = PABSLogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_25E0E9000, v5, OS_LOG_TYPE_DEFAULT, "Face ID: User pressed Set up Face ID/an Alternate Appearance", buf, 2u);
  }

  faceIDEnrollmentCoordinator = [(PABSPearlPasscodeController *)self faceIDEnrollmentCoordinator];

  if (faceIDEnrollmentCoordinator)
  {
    v7 = PABSLogForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_25E0E9000, v7, OS_LOG_TYPE_DEFAULT, "Face ID: Not enrolling as we have a faceIDEnrollmentCoordinator", buf, 2u);
    }
  }

  else
  {
    dtoController = [(PABSPearlPasscodeController *)self dtoController];
    isRatchetEnabled = [dtoController isRatchetEnabled];

    if (isRatchetEnabled)
    {
      objc_initWeak(buf, self);
      dtoController2 = [(PABSPearlPasscodeController *)self dtoController];
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __38__PABSPearlPasscodeController_enroll___block_invoke;
      v11[3] = &unk_279A03248;
      objc_copyWeak(&v13, buf);
      v12 = enrollCopy;
      [dtoController2 gateWithRatchetForOperation:1 forPresentingVC:self completion:v11];

      objc_destroyWeak(&v13);
      objc_destroyWeak(buf);
    }

    else
    {
      [(PABSPearlPasscodeController *)self proceedToEnrollWithSpecifier:enrollCopy];
    }
  }
}

void __38__PABSPearlPasscodeController_enroll___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2 == 2)
  {
    v2 = PABSLogForCategory(0);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __38__PABSPearlPasscodeController_enroll___block_invoke_cold_1();
    }
  }

  else
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __38__PABSPearlPasscodeController_enroll___block_invoke_111;
    v4[3] = &unk_279A030A8;
    objc_copyWeak(&v6, (a1 + 40));
    v5 = *(a1 + 32);
    dispatch_async(MEMORY[0x277D85CD0], v4);

    objc_destroyWeak(&v6);
  }
}

void __38__PABSPearlPasscodeController_enroll___block_invoke_111(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = PABSLogForCategory(0);
  v4 = v3;
  if (WeakRetained)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_25E0E9000, v4, OS_LOG_TYPE_DEFAULT, "Face ID: Starting enrollment", v5, 2u);
    }

    [WeakRetained proceedToEnrollWithSpecifier:*(a1 + 32)];
  }

  else
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __38__PABSPearlPasscodeController_enroll___block_invoke_111_cold_1();
    }
  }
}

- (void)proceedToEnrollWithSpecifier:(id)specifier
{
  v44 = *MEMORY[0x277D85DE8];
  specifierCopy = specifier;
  v5 = PABSLogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [specifierCopy identifier];
    *buf = 138412290;
    v41 = identifier;
    _os_log_impl(&dword_25E0E9000, v5, OS_LOG_TYPE_DEFAULT, "%@: Starting enrollment", buf, 0xCu);
  }

  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  v8 = [mEMORY[0x277D262A0] effectiveBoolValueForSetting:*MEMORY[0x277D25DB8]];

  if (v8 == 2)
  {
    v9 = PABSLogForCategory(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      identifier2 = [specifierCopy identifier];
      *buf = 138412290;
      v41 = identifier2;
      _os_log_impl(&dword_25E0E9000, v9, OS_LOG_TYPE_DEFAULT, "%@: Camera restricted alert shown", buf, 0xCu);
    }

    v11 = MEMORY[0x277D75110];
    v12 = PABS_LocalizedStringForPasscodeLock(@"PEARL_CAMERA_RESTRICTED_ALERT_TITLE");
    v13 = PABS_LocalizedStringForPasscodeLock(@"PEARL_CAMERA_RESTRICTED_ALERT_MESSAGE");
    v14 = [v11 alertControllerWithTitle:v12 message:v13 preferredStyle:1];

    v15 = MEMORY[0x277D750F8];
    v16 = PABS_LocalizedStringForPasscodeLock(@"OK");
    v17 = [v15 actionWithTitle:v16 style:0 handler:0];
    [v14 addAction:v17];

    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __60__PABSPearlPasscodeController_proceedToEnrollWithSpecifier___block_invoke;
    v38[3] = &unk_279A03008;
    v39 = specifierCopy;
    [(PABSPearlPasscodeController *)self presentViewController:v14 animated:1 completion:v38];
    v18 = v39;
  }

  else
  {
    if (_os_feature_enabled_impl())
    {
      v19 = +[PABSBiometrics sharedInstance];
      isPeriocularEnrollmentSupported = [v19 isPeriocularEnrollmentSupported];

      v21 = isPeriocularEnrollmentSupported & 1;
    }

    else
    {
      v21 = 0;
    }

    v22 = PABSLogForCategory(0);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      identifier3 = [specifierCopy identifier];
      *buf = 138412546;
      v41 = identifier3;
      v42 = 2048;
      v43 = v21;
      _os_log_impl(&dword_25E0E9000, v22, OS_LOG_TYPE_DEFAULT, "%@: Starting enrollment: Config set to %lu", buf, 0x16u);
    }

    v24 = [[PABSFaceIDEnrollmentCoordinator alloc] initWithPresentingViewController:self configuration:v21];
    [(PABSPearlPasscodeController *)self setFaceIDEnrollmentCoordinator:v24];

    faceIDEnrollmentCoordinator = [(PABSPearlPasscodeController *)self faceIDEnrollmentCoordinator];
    [faceIDEnrollmentCoordinator setDelegate:self];

    v14 = [(PABSPearlPasscodeController *)self cachedCellForSpecifier:specifierCopy];
    v18 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
    [v14 setAccessoryView:v18];
    [v14 setNeedsDisplay];
    [v18 startAnimating];
    specifier = [(PABSPearlPasscodeController *)self specifier];

    if (!specifier)
    {
      v27 = PABSLogForCategory(0);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        [PABSPearlPasscodeController proceedToEnrollWithSpecifier:];
      }
    }

    specifier2 = [(PABSPearlPasscodeController *)self specifier];
    v29 = *MEMORY[0x277D40100];
    v30 = [specifier2 objectForKeyedSubscript:*MEMORY[0x277D40100]];

    if (!v30)
    {
      v31 = PABSLogForCategory(0);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        [PABSPearlPasscodeController proceedToEnrollWithSpecifier:];
      }
    }

    v32 = PABSLogForCategory(0);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      identifier4 = [specifierCopy identifier];
      *buf = 138412290;
      v41 = identifier4;
      _os_log_impl(&dword_25E0E9000, v32, OS_LOG_TYPE_DEFAULT, "%@: Showing spinner, proceeding to startWithPasscode", buf, 0xCu);
    }

    faceIDEnrollmentCoordinator2 = [(PABSPearlPasscodeController *)self faceIDEnrollmentCoordinator];
    specifier3 = [(PABSPearlPasscodeController *)self specifier];
    v36 = [specifier3 objectForKeyedSubscript:v29];
    [faceIDEnrollmentCoordinator2 startWithPasscode:v36];
  }

  v37 = *MEMORY[0x277D85DE8];
}

void __60__PABSPearlPasscodeController_proceedToEnrollWithSpecifier___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = PABSLogForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) identifier];
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_25E0E9000, v2, OS_LOG_TYPE_DEFAULT, "%@: Camera restricted alert done", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (BOOL)isEnrolled
{
  v2 = +[PABSBiometrics sharedInstance];
  v3 = [v2 identitiesForIdentityType:2];
  v4 = [v3 count] != 0;

  return v4;
}

- (BOOL)hasReachedMaximumBiometricEnrollmentCount
{
  v2 = +[PABSBiometrics sharedInstance];
  v3 = [v2 maximumIdentityCountForIdentityType:2];

  v4 = +[PABSBiometrics sharedInstance];
  v5 = [v4 identitiesForIdentityType:2];
  v6 = [v5 count];

  return v6 >= v3;
}

- (void)setPeriocularFaceIDMatchEnabled:(id)enabled specifier:(id)specifier
{
  v25 = *MEMORY[0x277D85DE8];
  enabledCopy = enabled;
  specifierCopy = specifier;
  v8 = [(PABSPearlPasscodeController *)self isPeriocularFaceIDMatchEnabled:specifierCopy];
  v9 = PABSLogForCategory(0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [specifierCopy identifier];
    v19 = 138412802;
    v20 = identifier;
    v21 = 2112;
    v22 = enabledCopy;
    v23 = 2112;
    v24 = v8;
    _os_log_impl(&dword_25E0E9000, v9, OS_LOG_TYPE_DEFAULT, "%@: Set: %@ , current is %@", &v19, 0x20u);
  }

  bOOLValue = [enabledCopy BOOLValue];
  if (bOOLValue != [v8 BOOLValue])
  {
    bOOLValue2 = [enabledCopy BOOLValue];
    v13 = +[PABSBiometrics sharedInstance];
    v14 = [v13 identitiesForIdentityType:2];

    if (bOOLValue2)
    {
      if (![v14 na_any:&__block_literal_global])
      {
        [(PABSPearlPasscodeController *)self enrollPeriocularForExistingAppearance:specifierCopy];
        goto LABEL_15;
      }

      [(PABSPearlPasscodeController *)self configurePeriocularEnabled:1];
      v15 = PABSLogForCategory(0);
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_13;
      }

      LOWORD(v19) = 0;
      v16 = "Configured Periocular: enablePeriocular: - Reloading Pane -";
    }

    else
    {
      [(PABSPearlPasscodeController *)self configurePeriocularEnabled:0];
      v15 = PABSLogForCategory(0);
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
LABEL_13:

        [(PABSPearlPasscodeController *)self reloadSpecifiers];
        goto LABEL_15;
      }

      LOWORD(v19) = 0;
      v16 = "Configured Periocular: - Reloading Pane -";
    }

    _os_log_impl(&dword_25E0E9000, v15, OS_LOG_TYPE_DEFAULT, v16, &v19, 2u);
    goto LABEL_13;
  }

  v14 = PABSLogForCategory(0);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    identifier2 = [specifierCopy identifier];
    v19 = 138412290;
    v20 = identifier2;
    _os_log_impl(&dword_25E0E9000, v14, OS_LOG_TYPE_DEFAULT, "%@: Set: ignoring", &v19, 0xCu);
  }

LABEL_15:

  v18 = *MEMORY[0x277D85DE8];
}

- (id)isPeriocularFaceIDMatchEnabled:(id)enabled
{
  v3 = MEMORY[0x277CCABB0];
  isPeriocularEnabled = [(PABSPearlPasscodeController *)self isPeriocularEnabled];

  return [v3 numberWithBool:isPeriocularEnabled];
}

- (void)enrollGlassesForExistingAppearance:(id)appearance
{
  appearanceCopy = appearance;
  v5 = PABSLogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_25E0E9000, v5, OS_LOG_TYPE_DEFAULT, "Face ID: User pressed Add Glasses", buf, 2u);
  }

  faceIDEnrollmentCoordinator = [(PABSPearlPasscodeController *)self faceIDEnrollmentCoordinator];

  if (faceIDEnrollmentCoordinator)
  {
    v7 = PABSLogForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_25E0E9000, v7, OS_LOG_TYPE_DEFAULT, "Face ID: Not enrolling with Add Glasses as we have a faceIDEnrollmentCoordinator", buf, 2u);
    }
  }

  else
  {
    dtoController = [(PABSPearlPasscodeController *)self dtoController];
    isRatchetEnabled = [dtoController isRatchetEnabled];

    if (isRatchetEnabled)
    {
      objc_initWeak(buf, self);
      dtoController2 = [(PABSPearlPasscodeController *)self dtoController];
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __66__PABSPearlPasscodeController_enrollGlassesForExistingAppearance___block_invoke;
      v11[3] = &unk_279A03248;
      objc_copyWeak(&v13, buf);
      v12 = appearanceCopy;
      [dtoController2 gateWithRatchetForOperation:3 forPresentingVC:self completion:v11];

      objc_destroyWeak(&v13);
      objc_destroyWeak(buf);
    }

    else
    {
      [(PABSPearlPasscodeController *)self proceedToEnrollGlassesForExistingAppearance:appearanceCopy];
    }
  }
}

void __66__PABSPearlPasscodeController_enrollGlassesForExistingAppearance___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2 == 2)
  {
    v2 = PABSLogForCategory(0);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __66__PABSPearlPasscodeController_enrollGlassesForExistingAppearance___block_invoke_cold_1();
    }
  }

  else
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __66__PABSPearlPasscodeController_enrollGlassesForExistingAppearance___block_invoke_125;
    v4[3] = &unk_279A030A8;
    objc_copyWeak(&v6, (a1 + 40));
    v5 = *(a1 + 32);
    dispatch_async(MEMORY[0x277D85CD0], v4);

    objc_destroyWeak(&v6);
  }
}

void __66__PABSPearlPasscodeController_enrollGlassesForExistingAppearance___block_invoke_125(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = PABSLogForCategory(0);
  v4 = v3;
  if (WeakRetained)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_25E0E9000, v4, OS_LOG_TYPE_DEFAULT, "Face ID: Starting enrollment with Add Glasses", v5, 2u);
    }

    [WeakRetained proceedToEnrollGlassesForExistingAppearance:*(a1 + 32)];
  }

  else
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __66__PABSPearlPasscodeController_enrollGlassesForExistingAppearance___block_invoke_125_cold_1();
    }
  }
}

- (void)proceedToEnrollGlassesForExistingAppearance:(id)appearance
{
  v4 = [[PABSFaceIDEnrollmentCoordinator alloc] initWithPresentingViewController:self configuration:3];
  [(PABSPearlPasscodeController *)self setFaceIDEnrollmentCoordinator:v4];

  faceIDEnrollmentCoordinator = [(PABSPearlPasscodeController *)self faceIDEnrollmentCoordinator];
  [faceIDEnrollmentCoordinator setDelegate:self];

  specifier = [(PABSPearlPasscodeController *)self specifier];

  if (!specifier)
  {
    v7 = PABSLogForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [PABSPearlPasscodeController proceedToEnrollGlassesForExistingAppearance:];
    }
  }

  specifier2 = [(PABSPearlPasscodeController *)self specifier];
  v9 = *MEMORY[0x277D40100];
  v10 = [specifier2 objectForKeyedSubscript:*MEMORY[0x277D40100]];

  if (!v10)
  {
    v11 = PABSLogForCategory(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [PABSPearlPasscodeController proceedToEnrollGlassesForExistingAppearance:];
    }
  }

  faceIDEnrollmentCoordinator2 = [(PABSPearlPasscodeController *)self faceIDEnrollmentCoordinator];
  specifier3 = [(PABSPearlPasscodeController *)self specifier];
  v14 = [specifier3 objectForKeyedSubscript:v9];
  [faceIDEnrollmentCoordinator2 startWithPasscode:v14];
}

- (void)enrollPeriocularForExistingAppearance:(id)appearance
{
  appearanceCopy = appearance;
  v5 = PABSLogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_25E0E9000, v5, OS_LOG_TYPE_DEFAULT, "Face ID: User toggled to ON - Face ID with a Mask", buf, 2u);
  }

  faceIDEnrollmentCoordinator = [(PABSPearlPasscodeController *)self faceIDEnrollmentCoordinator];

  if (faceIDEnrollmentCoordinator)
  {
    v7 = PABSLogForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_25E0E9000, v7, OS_LOG_TYPE_DEFAULT, "Face ID: Not enrolling periocular for existing appearance as we have a faceIDEnrollmentCoordinator", buf, 2u);
    }
  }

  else
  {
    dtoController = [(PABSPearlPasscodeController *)self dtoController];
    isRatchetEnabled = [dtoController isRatchetEnabled];

    if (isRatchetEnabled)
    {
      objc_initWeak(buf, self);
      dtoController2 = [(PABSPearlPasscodeController *)self dtoController];
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __69__PABSPearlPasscodeController_enrollPeriocularForExistingAppearance___block_invoke;
      v11[3] = &unk_279A03248;
      objc_copyWeak(&v13, buf);
      v12 = appearanceCopy;
      [dtoController2 gateWithRatchetForOperation:2 forPresentingVC:self completion:v11];

      objc_destroyWeak(&v13);
      objc_destroyWeak(buf);
    }

    else
    {
      [(PABSPearlPasscodeController *)self proceedToEnrollPeriocularForExistingAppearance:appearanceCopy];
    }
  }
}

void __69__PABSPearlPasscodeController_enrollPeriocularForExistingAppearance___block_invoke(uint64_t a1, void *a2)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__PABSPearlPasscodeController_enrollPeriocularForExistingAppearance___block_invoke_2;
  block[3] = &unk_279A03290;
  objc_copyWeak(v6, (a1 + 40));
  v6[1] = a2;
  v5 = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(v6);
}

void __69__PABSPearlPasscodeController_enrollPeriocularForExistingAppearance___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (*(a1 + 48) == 2)
  {
    v3 = PABSLogForCategory(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __69__PABSPearlPasscodeController_enrollPeriocularForExistingAppearance___block_invoke_2_cold_2();
    }

    v4 = *(a1 + 32);
    v5 = WeakRetained;
LABEL_12:
    [v5 toggleToState:0 forIdentifier:v4];
    goto LABEL_13;
  }

  v6 = PABSLogForCategory(0);
  v7 = v6;
  if (!WeakRetained)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __69__PABSPearlPasscodeController_enrollPeriocularForExistingAppearance___block_invoke_2_cold_1();
    }

    v4 = *(a1 + 32);
    v5 = 0;
    goto LABEL_12;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_25E0E9000, v7, OS_LOG_TYPE_DEFAULT, "Face ID: Starting enrollment of periocular for existing appearance", v8, 2u);
  }

  [WeakRetained proceedToEnrollPeriocularForExistingAppearance:*(a1 + 32)];
LABEL_13:
}

- (void)proceedToEnrollPeriocularForExistingAppearance:(id)appearance
{
  v4 = [[PABSFaceIDEnrollmentCoordinator alloc] initWithPresentingViewController:self configuration:2];
  [(PABSPearlPasscodeController *)self setFaceIDEnrollmentCoordinator:v4];

  faceIDEnrollmentCoordinator = [(PABSPearlPasscodeController *)self faceIDEnrollmentCoordinator];
  [faceIDEnrollmentCoordinator setDelegate:self];

  specifier = [(PABSPearlPasscodeController *)self specifier];

  if (!specifier)
  {
    v7 = PABSLogForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [PABSPearlPasscodeController proceedToEnrollPeriocularForExistingAppearance:];
    }
  }

  specifier2 = [(PABSPearlPasscodeController *)self specifier];
  v9 = *MEMORY[0x277D40100];
  v10 = [specifier2 objectForKeyedSubscript:*MEMORY[0x277D40100]];

  if (!v10)
  {
    v11 = PABSLogForCategory(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [PABSPearlPasscodeController proceedToEnrollPeriocularForExistingAppearance:];
    }
  }

  faceIDEnrollmentCoordinator2 = [(PABSPearlPasscodeController *)self faceIDEnrollmentCoordinator];
  specifier3 = [(PABSPearlPasscodeController *)self specifier];
  v14 = [specifier3 objectForKeyedSubscript:v9];
  [faceIDEnrollmentCoordinator2 startWithPasscode:v14];
}

- (unint64_t)currentPeriocularEnrollmentState
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = +[PABSBiometrics sharedInstance];
  v3 = [v2 identitiesForIdentityType:2];

  v4 = +[PABSBiometrics sharedInstance];
  v5 = [v4 maximumIdentityCountForIdentityType:2];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v9 += [*(*(&v15 + 1) + 8 * i) hasPeriocularEnrollment] & 1;
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);

    if (v9 == 1)
    {
      v12 = 1;
    }

    else
    {
      v12 = 2 * (v9 == v5);
    }
  }

  else
  {

    v12 = 2 * (v5 == 0);
  }

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

- (BOOL)isPeriocularEnabled
{
  v2 = +[PABSBiometrics sharedInstance];
  v3 = [v2 deviceForType:2];

  v10 = 0;
  v4 = [v3 protectedConfigurationForUser:getuid() error:&v10];
  v5 = v4;
  if (v4)
  {
    v6 = v10 == 0;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    periocularFaceIDMatchEnabled = [v4 periocularFaceIDMatchEnabled];
    bOOLValue = [periocularFaceIDMatchEnabled BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (unint64_t)numberOfAppsUsingPearl
{
  v2 = *MEMORY[0x277D6C168];
  v3 = TCCAccessCopyInformation();
  v4 = [v3 count];

  return v4;
}

- (id)numberOfAppsUsingPearlDescription:(id)description
{
  numberOfAppsUsingPearl = [(PABSPearlPasscodeController *)self numberOfAppsUsingPearl];
  if (numberOfAppsUsingPearl)
  {
    v4 = numberOfAppsUsingPearl;
    if (numberOfAppsUsingPearl == 2)
    {
      v5 = @"2_APPS";
      goto LABEL_6;
    }

    if (numberOfAppsUsingPearl == 1)
    {
      v5 = @"1_APP";
LABEL_6:
      v6 = PABS_LocalizedStringForPasscodeLock(v5);
      goto LABEL_11;
    }

    v8 = objc_opt_new();
    v9 = MEMORY[0x277CCACA8];
    v10 = PABS_LocalizedStringForPasscodeLock(@"%@_APPS");
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v4];
    v12 = [v8 stringFromNumber:v11];
    v6 = [v9 stringWithFormat:v10, v12];
  }

  else
  {
    v7 = PABSLogForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [PABSPearlPasscodeController numberOfAppsUsingPearlDescription:];
    }

    v6 = &stru_286FD1EF8;
  }

LABEL_11:

  return v6;
}

- (void)pearlLearnMoreTapped:(id)tapped
{
  v4 = [MEMORY[0x277D37678] presenterForPrivacySplashWithIdentifier:@"com.apple.onboarding.faceid"];
  [(PABSPearlPasscodeController *)self setPresenter:v4];

  presenter = [(PABSPearlPasscodeController *)self presenter];
  [presenter setPresentingViewController:self];

  presenter2 = [(PABSPearlPasscodeController *)self presenter];
  [presenter2 present];
}

- (void)setBiometricUnlockEnabled:(id)enabled specifier:(id)specifier
{
  v13[1] = *MEMORY[0x277D85DE8];
  enabledCopy = enabled;
  v11.receiver = self;
  v11.super_class = PABSPearlPasscodeController;
  [(PABSBiometricController *)&v11 setBiometricUnlockEnabled:enabledCopy specifier:specifier];
  if (enabledCopy)
  {
    authContext = [(PABSPearlPasscodeController *)self authContext];
    v12 = &unk_286FD6AE0;
    v13[0] = &unk_286FD6AF8;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    v9 = [authContext evaluatePolicy:1007 options:v8 error:0];
  }

  -[PABSPasscodeLockController updatePhoneAutounlockSection:](self, "updatePhoneAutounlockSection:", [enabledCopy BOOLValue]);

  v10 = *MEMORY[0x277D85DE8];
}

- (LAContext)authContext
{
  authContext = self->_authContext;
  if (!authContext)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2050000000;
    v4 = getLAContextClass_softClass;
    v13 = getLAContextClass_softClass;
    if (!getLAContextClass_softClass)
    {
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __getLAContextClass_block_invoke;
      v9[3] = &unk_279A03148;
      v9[4] = &v10;
      __getLAContextClass_block_invoke(v9);
      v4 = v11[3];
    }

    v5 = v4;
    _Block_object_dispose(&v10, 8);
    v6 = objc_opt_new();
    v7 = self->_authContext;
    self->_authContext = v6;

    [(LAContext *)self->_authContext setUiDelegate:self];
    authContext = self->_authContext;
  }

  return authContext;
}

- (id)biometricLogo
{
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v4 = v3;

  if (v4 >= 3.0)
  {
    goto LABEL_3;
  }

  v5 = MEMORY[0x277D755B8];
  v6 = PABS_BundleForPABSFramework();
  v7 = [v5 imageNamed:@"faceID-header@2x-n84.png" inBundle:v6];
  systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
  v9 = [v7 _flatImageWithColor:systemGrayColor];

  if (!v9)
  {
LABEL_3:
    v10 = MEMORY[0x277D755B8];
    v11 = PABS_BundleForPABSFramework();
    v12 = [v10 imageNamed:@"faceID-header" inBundle:v11];
    systemGrayColor2 = [MEMORY[0x277D75348] systemGrayColor];
    v9 = [v12 _flatImageWithColor:systemGrayColor2];
  }

  return v9;
}

- (id)biometricTableViewHeader
{
  if (PSIsPearlInterlocked())
  {
    biometricTableViewHeader = objc_opt_new();
    view = [(PABSPearlPasscodeController *)self view];
    [view bounds];
    v6 = v5;

    [biometricTableViewHeader heightForWidth:v6];
    [biometricTableViewHeader setFrame:{0.0, 0.0, v6, v7}];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = PABSPearlPasscodeController;
    biometricTableViewHeader = [(PABSBiometricController *)&v9 biometricTableViewHeader];
  }

  return biometricTableViewHeader;
}

- (id)getResetFaceIDGroupSpecifiers
{
  array = [MEMORY[0x277CBEB18] array];
  emptyGroupSpecifier = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
  [(PABSPearlPasscodeController *)self updateResetFaceIDGroupFooter:emptyGroupSpecifier];
  [array addObject:emptyGroupSpecifier];
  resetFaceIDSpecifier = [(PABSPearlPasscodeController *)self resetFaceIDSpecifier];
  [array addObject:resetFaceIDSpecifier];

  v6 = [array copy];

  return v6;
}

- (void)updateResetFaceIDGroupFooter:(id)footer
{
  footerCopy = footer;
  dtoController = [(PABSPearlPasscodeController *)self dtoController];
  isRatchetEnabled = [dtoController isRatchetEnabled];

  if (isRatchetEnabled)
  {
    v6 = PABS_LocalizedStringForPasscodeLock(@"REMOVE_FACEID_GROUP_FOOTER_SDPISON");
    [footerCopy setProperty:v6 forKey:*MEMORY[0x277D3FF88]];
  }

  else
  {
    [footerCopy removePropertyForKey:*MEMORY[0x277D3FF88]];
  }
}

- (id)resetFaceIDSpecifier
{
  v3 = MEMORY[0x277D3FAD8];
  v4 = PABS_LocalizedStringForPasscodeLock(@"RESET_FACE_ID");
  v5 = [v3 preferenceSpecifierNamed:v4 target:self set:0 get:0 detail:0 cell:13 edit:0];

  [v5 setButtonAction:sel_deleteFaceIDIdentitiesCheckWithSpecifier_];
  [v5 setIdentifier:@"PEARL_REMOVE_FACE"];
  [v5 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
  [v5 setProperty:&unk_286FD6B10 forKey:*MEMORY[0x277D3FD78]];
  [(PABSPearlPasscodeController *)self updateResetFaceIDButtonSpecifierEnablementStatus:v5];

  return v5;
}

- (void)updateResetFaceIDButtonSpecifierEnablementStatus:(id)status
{
  v4 = MEMORY[0x277CCABB0];
  statusCopy = status;
  isBiometricEditingAllowed = [(PABSBiometricController *)self isBiometricEditingAllowed];
  if (isBiometricEditingAllowed)
  {
    dtoController = [(PABSPearlPasscodeController *)self dtoController];
    v7 = [dtoController isRatchetEnabled] ^ 1;
  }

  else
  {
    v7 = 0;
  }

  v8 = [v4 numberWithInt:v7];
  [statusCopy setObject:v8 forKeyedSubscript:*MEMORY[0x277D3FF38]];

  if (isBiometricEditingAllowed)
  {
  }
}

- (void)reloadFaceIDResetGroup
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [(PABSPearlPasscodeController *)self specifierForID:@"PEARL_REMOVE_FACE"];
  v4 = [(PABSPearlPasscodeController *)self getGroupSpecifierForSpecifier:v3];
  [(PABSPearlPasscodeController *)self updateResetFaceIDGroupFooter:v4];
  [(PABSPearlPasscodeController *)self updateResetFaceIDButtonSpecifierEnablementStatus:v3];
  v5 = PABSLogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [v3 identifier];
    identifier2 = [v4 identifier];
    v9 = 138412546;
    v10 = identifier;
    v11 = 2112;
    v12 = identifier2;
    _os_log_impl(&dword_25E0E9000, v5, OS_LOG_TYPE_DEFAULT, "%@ %@: - Reloading -", &v9, 0x16u);
  }

  [(PABSPearlPasscodeController *)self reloadSpecifier:v3 animated:1];
  [(PABSPearlPasscodeController *)self reloadSpecifier:v4 animated:1];

  v8 = *MEMORY[0x277D85DE8];
}

- (id)setupFaceIDSpecifier
{
  v3 = MEMORY[0x277D3FAD8];
  v4 = PABS_LocalizedStringForPasscodeLock(@"SET_UP_FACE_ID");
  v5 = [v3 preferenceSpecifierNamed:v4 target:self set:0 get:0 detail:0 cell:13 edit:0];

  [v5 setButtonAction:sel_enroll_];
  [v5 setIdentifier:@"PEARL_ENROLL"];
  v6 = MEMORY[0x277CCABB0];
  if ([(PABSBiometricController *)self isBiometricEditingAllowed])
  {
    v7 = PSIsPearlInterlocked() ^ 1;
  }

  else
  {
    v7 = 0;
  }

  v8 = [v6 numberWithInt:v7];
  [v5 setObject:v8 forKeyedSubscript:*MEMORY[0x277D3FF38]];

  return v5;
}

- (id)setupAlternateAppearanceSpecifier
{
  v3 = MEMORY[0x277D3FAD8];
  v4 = PABS_LocalizedStringForPasscodeLock(@"UPDATE_APPEARANCE");
  v5 = [v3 preferenceSpecifierNamed:v4 target:self set:0 get:0 detail:0 cell:13 edit:0];

  [v5 setButtonAction:sel_validateBiometricTemplateUUIDAndEnroll_];
  [v5 setIdentifier:@"UPDATE_APPEARANCE"];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[PABSPearlPasscodeController isEnrollmentAvailable](self, "isEnrollmentAvailable")}];
  [v5 setObject:v6 forKeyedSubscript:*MEMORY[0x277D3FF38]];

  return v5;
}

- (id)unlockWithFaceMaskSpecifier
{
  v3 = +[PABSBiometrics sharedInstance];
  v4 = [v3 identitiesForIdentityType:2];

  v5 = [v4 na_reduceWithInitialValue:&unk_286FD6AF8 reducer:&__block_literal_global_190];
  v6 = MEMORY[0x277D3FAD8];
  v7 = PABS_LocalizedStringForPasscodeLock(@"UNLOCK_WITH_FACE_MASK");
  v8 = [v6 preferenceSpecifierNamed:v7 target:self set:sel_setPeriocularFaceIDMatchEnabled_specifier_ get:sel_isPeriocularFaceIDMatchEnabled_ detail:0 cell:6 edit:0];

  [v8 setIdentifier:@"UNLOCK_WITH_FACE_MASK"];
  if ([v5 integerValue] && -[PABSPearlPasscodeController isPeriocularEnabled](self, "isPeriocularEnabled"))
  {
    v9 = MEMORY[0x277CCACA8];
    v10 = PABS_LocalizedStringForPasscodeLock(@"GLASSES_COUNT_SECONDARY_LABEL");
    v11 = [v9 localizedStringWithFormat:v10, objc_msgSend(v5, "integerValue")];
    [v8 setObject:v11 forKeyedSubscript:*MEMORY[0x277D40160]];
  }

  else
  {
    [v8 setObject:0 forKeyedSubscript:*MEMORY[0x277D40160]];
  }

  return v8;
}

uint64_t __58__PABSPearlPasscodeController_unlockWithFaceMaskSpecifier__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a3;
  v6 = [a2 secondaryPeriocularEnrollments];
  v7 = [v5 integerValue];

  return [v4 numberWithInteger:v7 + v6];
}

- (id)addGlassesSpecifier
{
  v3 = MEMORY[0x277D3FAD8];
  v4 = PABS_LocalizedStringForPasscodeLock(@"ADD_GLASSES");
  v5 = [v3 preferenceSpecifierNamed:v4 target:self set:0 get:0 detail:0 cell:13 edit:0];

  [v5 setIdentifier:@"ADD_GLASSES"];
  [v5 setButtonAction:sel_enrollGlassesForExistingAppearance_];

  return v5;
}

- (id)enrollPeriocularAlternateAppearanceSpecifier
{
  v3 = MEMORY[0x277D3FAD8];
  v4 = PABS_LocalizedStringForPasscodeLock(@"UNLOCK_WITH_FACE_MASK_ALTERNATE");
  v5 = [v3 preferenceSpecifierNamed:v4 target:self set:0 get:0 detail:0 cell:13 edit:0];

  [v5 setIdentifier:@"UNLOCK_WITH_FACE_MASK_ALTERNATE"];
  [v5 setButtonAction:sel_enrollPeriocularForExistingAppearance_];

  return v5;
}

- (id)faceIDSpecifiersWithPeriocular
{
  array = [MEMORY[0x277CBEB18] array];
  if (![(PABSPearlPasscodeController *)self isEnrolled])
  {
    emptyGroupSpecifier = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
    [array addObject:emptyGroupSpecifier];

    setupFaceIDSpecifier = [(PABSPearlPasscodeController *)self setupFaceIDSpecifier];
    [array addObject:setupFaceIDSpecifier];
    goto LABEL_15;
  }

  v4 = +[PABSBiometrics sharedInstance];
  setupFaceIDSpecifier = [v4 identitiesForIdentityType:2];

  v6 = [setupFaceIDSpecifier na_any:&__block_literal_global_212];
  v7 = [setupFaceIDSpecifier na_all:&__block_literal_global_214];
  if ([(PABSPearlPasscodeController *)self hasReachedMaximumBiometricEnrollmentCount])
  {
    v8 = [setupFaceIDSpecifier na_all:&__block_literal_global_216];
    emptyGroupSpecifier2 = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
    v10 = PABS_LocalizedStringForPasscodeLock(@"UNLOCK_WITH_FACE_MASK_FOOTER");
    v11 = *MEMORY[0x277D3FF88];
    [emptyGroupSpecifier2 setObject:v10 forKeyedSubscript:*MEMORY[0x277D3FF88]];

    [array addObject:emptyGroupSpecifier2];
    unlockWithFaceMaskSpecifier = [(PABSPearlPasscodeController *)self unlockWithFaceMaskSpecifier];
    [array addObject:unlockWithFaceMaskSpecifier];

    if ((v7 & v6) == 1 && [(PABSPearlPasscodeController *)self isPeriocularEnabled])
    {
      addGlassesSpecifier = [(PABSPearlPasscodeController *)self addGlassesSpecifier];
      [array addObject:addGlassesSpecifier];
    }

    if ((v8 & 1) == 0)
    {
      emptyGroupSpecifier3 = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
      v15 = PABS_LocalizedStringForPasscodeLock(@"UNLOCK_WITH_FACE_MASK_ALTERNATE_FOOTER");
      [emptyGroupSpecifier3 setObject:v15 forKeyedSubscript:v11];

      [array addObject:emptyGroupSpecifier3];
      enrollPeriocularAlternateAppearanceSpecifier = [(PABSPearlPasscodeController *)self enrollPeriocularAlternateAppearanceSpecifier];
      [array addObject:enrollPeriocularAlternateAppearanceSpecifier];
    }

    emptyGroupSpecifier4 = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
    addGlassesSpecifier2 = PABS_LocalizedStringForPasscodeLock(@"SECOND_IDENTITY_ENROLLED_FOOTER");
    [emptyGroupSpecifier4 setObject:addGlassesSpecifier2 forKeyedSubscript:v11];
  }

  else
  {
    emptyGroupSpecifier2 = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
    v20 = PABS_LocalizedStringForPasscodeLock(@"NO_SECOND_IDENTITY_ENROLLED_FOOTER");
    v21 = *MEMORY[0x277D3FF88];
    [emptyGroupSpecifier2 setObject:v20 forKeyedSubscript:*MEMORY[0x277D3FF88]];

    [array addObject:emptyGroupSpecifier2];
    setupAlternateAppearanceSpecifier = [(PABSPearlPasscodeController *)self setupAlternateAppearanceSpecifier];
    [array addObject:setupAlternateAppearanceSpecifier];

    emptyGroupSpecifier4 = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
    v23 = PABS_LocalizedStringForPasscodeLock(@"UNLOCK_WITH_FACE_MASK_FOOTER");
    [emptyGroupSpecifier4 setObject:v23 forKeyedSubscript:v21];

    [array addObject:emptyGroupSpecifier4];
    unlockWithFaceMaskSpecifier2 = [(PABSPearlPasscodeController *)self unlockWithFaceMaskSpecifier];
    [array addObject:unlockWithFaceMaskSpecifier2];

    if ((v7 & v6) != 1 || ![(PABSPearlPasscodeController *)self isPeriocularEnabled])
    {
      goto LABEL_14;
    }

    addGlassesSpecifier2 = [(PABSPearlPasscodeController *)self addGlassesSpecifier];
    [array addObject:addGlassesSpecifier2];
  }

LABEL_14:
  getResetFaceIDGroupSpecifiers = [(PABSPearlPasscodeController *)self getResetFaceIDGroupSpecifiers];
  [array addObjectsFromArray:getResetFaceIDGroupSpecifiers];

LABEL_15:
  v26 = [array copy];

  return v26;
}

- (id)faceIDSpecifiers
{
  array = [MEMORY[0x277CBEB18] array];
  if ([(PABSPearlPasscodeController *)self isEnrolled])
  {
    hasReachedMaximumBiometricEnrollmentCount = [(PABSPearlPasscodeController *)self hasReachedMaximumBiometricEnrollmentCount];
    emptyGroupSpecifier = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
    if (hasReachedMaximumBiometricEnrollmentCount)
    {
      setupAlternateAppearanceSpecifier = PABS_LocalizedStringForPasscodeLock(@"SECOND_IDENTITY_ENROLLED_FOOTER");
      [emptyGroupSpecifier setObject:setupAlternateAppearanceSpecifier forKeyedSubscript:*MEMORY[0x277D3FF88]];
    }

    else
    {
      v8 = PABS_LocalizedStringForPasscodeLock(@"NO_SECOND_IDENTITY_ENROLLED_FOOTER");
      [emptyGroupSpecifier setObject:v8 forKeyedSubscript:*MEMORY[0x277D3FF88]];

      [array addObject:emptyGroupSpecifier];
      setupAlternateAppearanceSpecifier = [(PABSPearlPasscodeController *)self setupAlternateAppearanceSpecifier];
      [array addObject:setupAlternateAppearanceSpecifier];
    }

    getResetFaceIDGroupSpecifiers = [(PABSPearlPasscodeController *)self getResetFaceIDGroupSpecifiers];
    [array addObjectsFromArray:getResetFaceIDGroupSpecifiers];
  }

  else
  {
    emptyGroupSpecifier2 = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
    [array addObject:emptyGroupSpecifier2];

    emptyGroupSpecifier = [(PABSPearlPasscodeController *)self setupFaceIDSpecifier];
    [array addObject:emptyGroupSpecifier];
  }

  v10 = [array copy];

  return v10;
}

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.super.super.isa + v3);
  if (!v4)
  {
    array = [MEMORY[0x277CBEB18] array];
    v45.receiver = self;
    v45.super_class = PABSPearlPasscodeController;
    specifiers = [(PABSPasscodeLockController *)&v45 specifiers];
    v6 = PABS_LocalizedStringForPasscodeLock(@"PASSCODE_PLACARD_TITLE_FACE_ID");
    [(PABSPearlPasscodeController *)self setTitle:v6];

    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if (userInterfaceIdiom != 6)
    {
      localizedPlacardTitle = [(PABSPearlPasscodeController *)self localizedPlacardTitle];
      localizedPlacardSubtitle = [(PABSPearlPasscodeController *)self localizedPlacardSubtitle];
      placardGraphicIconTypeIdentifier = [(PABSPearlPasscodeController *)self placardGraphicIconTypeIdentifier];
      v12 = [(PABSBiometricController *)self placardSpecifiersWithTitle:localizedPlacardTitle subtitle:localizedPlacardSubtitle icon:placardGraphicIconTypeIdentifier];
      [array addObjectsFromArray:v12];
    }

    useBiometricForSpecifiers = [(PABSBiometricController *)self useBiometricForSpecifiers];
    firstObject = [useBiometricForSpecifiers firstObject];
    v15 = MEMORY[0x277D37668];
    v16 = [MEMORY[0x277D37630] bundleWithIdentifier:@"com.apple.onboarding.faceid"];
    v17 = [v15 flowWithBundle:v16];

    v43 = v17;
    localizedButtonTitle = [v17 localizedButtonTitle];
    v42 = PABS_LocalizedStringForPasscodeLock(@"PEARL_FOOTER");
    v19 = [MEMORY[0x277CCACA8] stringWithFormat:localizedButtonTitle];
    v20 = objc_opt_class();
    v21 = NSStringFromClass(v20);
    [firstObject setObject:v21 forKeyedSubscript:*MEMORY[0x277D3FF48]];

    [firstObject setObject:v19 forKeyedSubscript:*MEMORY[0x277D3FF88]];
    v47.location = [v19 rangeOfString:localizedButtonTitle];
    v22 = NSStringFromRange(v47);
    [firstObject setObject:v22 forKeyedSubscript:*MEMORY[0x277D3FF58]];

    v23 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:self];
    [firstObject setObject:v23 forKeyedSubscript:*MEMORY[0x277D3FF68]];

    [firstObject setObject:@"pearlLearnMoreTapped:" forKeyedSubscript:*MEMORY[0x277D3FF50]];
    [array addObjectsFromArray:useBiometricForSpecifiers];
    if ([(PABSPearlPasscodeController *)self isEnrolled]&& [(PABSPearlPasscodeController *)self numberOfAppsUsingPearl])
    {
      v24 = MEMORY[0x277D3FAD8];
      v25 = PABS_LocalizedStringForPasscodeLock(@"APPS_USING_PEARL");
      v26 = [v24 preferenceSpecifierNamed:v25 target:self set:0 get:sel_numberOfAppsUsingPearlDescription_ detail:objc_opt_class() cell:2 edit:0];

      [v26 setIdentifier:*MEMORY[0x277D401F0]];
      [array addObject:v26];
    }

    if (_os_feature_enabled_impl() && (+[PABSBiometrics sharedInstance](PABSBiometrics, "sharedInstance"), v27 = objc_claimAutoreleasedReturnValue(), v28 = [v27 isPeriocularEnrollmentSupported], v27, v28))
    {
      faceIDSpecifiersWithPeriocular = [(PABSPearlPasscodeController *)self faceIDSpecifiersWithPeriocular];
    }

    else
    {
      faceIDSpecifiersWithPeriocular = [(PABSPearlPasscodeController *)self faceIDSpecifiers];
    }

    v30 = faceIDSpecifiersWithPeriocular;
    [array addObjectsFromArray:faceIDSpecifiersWithPeriocular];

    attentionGroupController = [(PABSPearlPasscodeController *)self attentionGroupController];

    if (!attentionGroupController)
    {
      v32 = [[PABSPearlAttentionGroupController alloc] initWithListController:self groupSpecifier:0];
      [(PABSPearlPasscodeController *)self setAttentionGroupController:v32];
    }

    specifier = [(PABSPearlPasscodeController *)self specifier];

    if (!specifier)
    {
      v34 = PABSLogForCategory(0);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        [PABSPearlPasscodeController specifiers];
      }
    }

    specifier2 = [(PABSPearlPasscodeController *)self specifier];
    v36 = [specifier2 objectForKeyedSubscript:*MEMORY[0x277D40100]];

    if (!v36)
    {
      v37 = PABSLogForCategory(0);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        [PABSPearlPasscodeController specifiers];
      }
    }

    attentionGroupController2 = [(PABSPearlPasscodeController *)self attentionGroupController];
    specifiers2 = [attentionGroupController2 specifiers];
    [array addObjectsFromArray:specifiers2];

    [array addObjectsFromArray:specifiers];
    v40 = *(&self->super.super.super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.super.super.isa + v3) = array;

    v4 = *(&self->super.super.super.super.super.super.super.isa + v3);
  }

  return v4;
}

- (id)passcodeController
{
  v2 = objc_alloc_init(PSPearlPINController);

  return v2;
}

- (void)pushPasscodePane
{
  if ([(PABSPasscodeLockController *)self shouldUseLocalAuthenticationBasedPasscodeFlowForChangePasscodeRequests])
  {
    presentedViewController = [(PABSPearlPasscodeController *)self presentedViewController];
    navigationBar = [presentedViewController navigationBar];
    [navigationBar setBarStyle:0];

    navigationBar2 = [presentedViewController navigationBar];
    v6 = objc_opt_new();
    [navigationBar2 setShadowImage:v6];

    navigationBar3 = [presentedViewController navigationBar];
    [navigationBar3 _setHidesShadow:0];

    v8 = PABSLogForCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25E0E9000, v8, OS_LOG_TYPE_DEFAULT, "Dismissing current view to push Passcode Change flow", buf, 2u);
    }

    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __47__PABSPearlPasscodeController_pushPasscodePane__block_invoke;
    v18[3] = &unk_279A03008;
    v18[4] = self;
    [presentedViewController dismissViewControllerAnimated:1 completion:v18];
  }

  else
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    sf_isiPad = [currentDevice sf_isiPad];

    if (sf_isiPad)
    {
      v16 = objc_alloc_init(MEMORY[0x277D4DAA0]);
      [v16 setPasscodeCreationDelegate:self];
      systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
      view = [v16 view];
      [view setBackgroundColor:systemBackgroundColor];

      presentedViewController2 = [(PABSPearlPasscodeController *)self presentedViewController];
      v14 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel_cancelModalFlow];
      navigationItem = [v16 navigationItem];
      [navigationItem setLeftBarButtonItem:v14 animated:0];

      [presentedViewController2 pushViewController:v16 animated:1];
    }

    else
    {
      v17.receiver = self;
      v17.super_class = PABSPearlPasscodeController;
      [(PABSBiometricController *)&v17 pushPasscodePane];
    }
  }
}

void __47__PABSPearlPasscodeController_pushPasscodePane__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = PABS_LocalizedStringForPasscodeLock(@"PMSET");
  v4 = PABS_LocalizedStringForPasscodeLock(@"ENTER_PASSCODE_PROMPT_FACE_ID");
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __47__PABSPearlPasscodeController_pushPasscodePane__block_invoke_2;
  v5[3] = &unk_279A032D8;
  v5[4] = *(a1 + 32);
  [v2 showLocalAuthenticationPasscodeChangeFlowFromPresentingController:v2 title:v3 passcodePrompt:v4 withCompletion:v5];
}

uint64_t __47__PABSPearlPasscodeController_pushPasscodePane__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    return [v2 cancelModalFlowWithCompletion:0];
  }

  else
  {
    return [v2 completeModalFlow];
  }
}

- (void)event:(int64_t)event params:(id)params reply:(id)reply
{
  replyCopy = reply;
  if (event == 2)
  {
    v9 = [params objectForKey:&unk_286FD6B28];
    bOOLValue = [v9 BOOLValue];

    if (bOOLValue)
    {
      specifier = [(PABSPearlPasscodeController *)self specifier];

      if (!specifier)
      {
        v12 = PABSLogForCategory(0);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          [PABSPearlPasscodeController event:params:reply:];
        }
      }

      specifier2 = [(PABSPearlPasscodeController *)self specifier];
      v14 = *MEMORY[0x277D40100];
      v15 = [specifier2 objectForKeyedSubscript:*MEMORY[0x277D40100]];

      if (!v15)
      {
        v16 = PABSLogForCategory(0);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          [PABSPearlPasscodeController event:params:reply:];
        }
      }

      authContext = [(PABSPearlPasscodeController *)self authContext];
      specifier3 = [(PABSPearlPasscodeController *)self specifier];
      v19 = [specifier3 objectForKeyedSubscript:v14];
      v20 = [v19 dataUsingEncoding:4];
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __50__PABSPearlPasscodeController_event_params_reply___block_invoke;
      v21[3] = &unk_279A03300;
      v22 = replyCopy;
      [authContext setCredential:v20 forProcessedEvent:2 credentialType:-1 reply:v21];
    }
  }
}

- (void)passcodeViewController:(id)controller didFinishWithPasscodeCreation:(id)creation
{
  creationCopy = creation;
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  [mEMORY[0x277D262A0] setFingerprintUnlockAllowed:1 passcode:creationCopy completion:0];

  mEMORY[0x277D262A0]2 = [MEMORY[0x277D262A0] sharedConnection];
  [mEMORY[0x277D262A0]2 setValue:&unk_286FD6AF8 forSetting:*MEMORY[0x277D25FE0]];

  [(PABSPasscodeLockController *)self updateGracePeriodSpecifier];
  specifier = [(PABSPearlPasscodeController *)self specifier];

  if (!specifier)
  {
    v9 = PABSLogForCategory(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [PABSPearlPasscodeController passcodeViewController:didFinishWithPasscodeCreation:];
    }
  }

  v10 = PABSLogForCategory(0);
  v11 = v10;
  if (creationCopy)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&dword_25E0E9000, v11, OS_LOG_TYPE_DEFAULT, "passcodeViewController:didFinishWithPasscodeCreation: Saving passcode for specifier", v15, 2u);
    }

    specifier2 = [(PABSPearlPasscodeController *)self specifier];
    [specifier2 setProperty:creationCopy forKey:*MEMORY[0x277D40100]];
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [PABSPearlPasscodeController passcodeViewController:didFinishWithPasscodeCreation:];
    }

    specifier2 = [(PABSPearlPasscodeController *)self specifier];
    [specifier2 removePropertyForKey:*MEMORY[0x277D40100]];
  }

  faceIDEnrollmentCoordinator = [(PABSPearlPasscodeController *)self faceIDEnrollmentCoordinator];

  if (faceIDEnrollmentCoordinator)
  {
    faceIDEnrollmentCoordinator2 = [(PABSPearlPasscodeController *)self faceIDEnrollmentCoordinator];
    [(PABSPearlPasscodeController *)self faceIDEnrollmentCoordinator:faceIDEnrollmentCoordinator2 finishedEnrollmentWithError:0];
  }
}

- (void)cancelModalFlow
{
  v2.receiver = self;
  v2.super_class = PABSPearlPasscodeController;
  [(PABSBiometricController *)&v2 cancelModalFlowWithCompletion:0];
}

- (BOOL)isEnrollmentAvailable
{
  v3 = +[PABSBiometrics sharedInstance];
  v4 = [v3 maximumIdentityCountForIdentityType:2];

  v5 = +[PABSBiometrics sharedInstance];
  v6 = [v5 identitiesForIdentityType:2];
  v7 = [v6 count];

  if (v7 >= v4)
  {
    return 0;
  }

  return [(PABSBiometricController *)self isBiometricEditingAllowed];
}

- (void)deleteFaceIDIdentitiesCheckWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v5 = PABSLogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_25E0E9000, v5, OS_LOG_TYPE_DEFAULT, "Face ID: User pressed Reset", buf, 2u);
  }

  dtoController = [(PABSPearlPasscodeController *)self dtoController];
  isRatchetEnabled = [dtoController isRatchetEnabled];

  if (isRatchetEnabled)
  {
    objc_initWeak(buf, self);
    dtoController2 = [(PABSPearlPasscodeController *)self dtoController];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __72__PABSPearlPasscodeController_deleteFaceIDIdentitiesCheckWithSpecifier___block_invoke;
    v9[3] = &unk_279A03248;
    objc_copyWeak(&v11, buf);
    v10 = specifierCopy;
    [dtoController2 gateWithRatchetForOperation:0 forPresentingVC:self completion:v9];

    objc_destroyWeak(&v11);
    objc_destroyWeak(buf);
  }

  else
  {
    [(PABSPearlPasscodeController *)self proceedWithChecksToDeleteFaceIDWithSpecifier:specifierCopy];
  }
}

void __72__PABSPearlPasscodeController_deleteFaceIDIdentitiesCheckWithSpecifier___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2 == 2)
  {
    v2 = PABSLogForCategory(0);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __72__PABSPearlPasscodeController_deleteFaceIDIdentitiesCheckWithSpecifier___block_invoke_cold_1();
    }
  }

  else
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __72__PABSPearlPasscodeController_deleteFaceIDIdentitiesCheckWithSpecifier___block_invoke_279;
    v4[3] = &unk_279A030A8;
    objc_copyWeak(&v6, (a1 + 40));
    v5 = *(a1 + 32);
    dispatch_async(MEMORY[0x277D85CD0], v4);

    objc_destroyWeak(&v6);
  }
}

void __72__PABSPearlPasscodeController_deleteFaceIDIdentitiesCheckWithSpecifier___block_invoke_279(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = PABSLogForCategory(0);
  v4 = v3;
  if (WeakRetained)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_25E0E9000, v4, OS_LOG_TYPE_DEFAULT, "Face ID: Resetting", v5, 2u);
    }

    [WeakRetained proceedWithChecksToDeleteFaceIDWithSpecifier:*(a1 + 32)];
  }

  else
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __72__PABSPearlPasscodeController_deleteFaceIDIdentitiesCheckWithSpecifier___block_invoke_279_cold_1();
    }
  }
}

- (void)proceedWithChecksToDeleteFaceIDWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  objc_initWeak(&location, self);
  v6 = MEMORY[0x277D85DD0];
  v7 = 3221225472;
  v8 = __76__PABSPearlPasscodeController_proceedWithChecksToDeleteFaceIDWithSpecifier___block_invoke;
  v9 = &unk_279A031D0;
  objc_copyWeak(&v10, &location);
  v5 = _Block_copy(&v6);
  [(PABSPearlPasscodeController *)self validateBiometricTemplateUUIDWithSpecifier:specifierCopy action:v5, v6, v7, v8, v9];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __76__PABSPearlPasscodeController_proceedWithChecksToDeleteFaceIDWithSpecifier___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained presentAlertForDeletingPearlIdentities];
}

- (void)presentAlertForDeletingPearlIdentities
{
  if ([(PABSPearlPasscodeController *)self hasMatchingBiometricTemplate]&& [(PABSBiometricController *)self currentBiometricTemplateFetchStatus]!= 4)
  {
    boundCredentialsCount = [(PABSBiometricController *)self boundCredentialsCount];
    v4 = @"PEARL_RESET_ALERT_SHEET_MESSAGE";
    if (boundCredentialsCount > 1)
    {
      v4 = @"PEARL_RESET_ALERT_SHEET_MESSAGE_PLURAL";
    }

    v5 = MEMORY[0x277D75110];
    v6 = v4;
    v7 = PABS_LocalizedStringForPasscodeLock(@"PEARL_RESET_ALERT_SHEET_TITLE");
    v8 = PABS_LocalizedStringForPasscodeLock(v6);

    v9 = [v5 alertControllerWithTitle:v7 message:v8 preferredStyle:0];

    v10 = MEMORY[0x277D750F8];
    v11 = PABS_LocalizedStringForPasscodeLock(@"RESET_FACE_ID");
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __69__PABSPearlPasscodeController_presentAlertForDeletingPearlIdentities__block_invoke;
    v16[3] = &unk_279A030F8;
    v16[4] = self;
    v12 = [v10 actionWithTitle:v11 style:2 handler:v16];
    [v9 addAction:v12];

    v13 = MEMORY[0x277D750F8];
    v14 = PABS_LocalizedStringForPasscodeLock(@"CANCEL");
    v15 = [v13 actionWithTitle:v14 style:1 handler:0];
    [v9 addAction:v15];

    [(PABSPearlPasscodeController *)self presentViewController:v9 animated:1 completion:0];
  }

  else
  {

    [(PABSPearlPasscodeController *)self deleteAllIdentities];
  }
}

- (void)presentSecondAlertForDeletingMatchedBiometricTemplate
{
  boundCredentialsCount = [(PABSBiometricController *)self boundCredentialsCount];
  v4 = @"PEARL_RESET_SECOND_ALERT_MESSAGE";
  if (boundCredentialsCount > 1)
  {
    v4 = @"PEARL_RESET_SECOND_ALERT_MESSAGE_PLURAL";
  }

  v5 = MEMORY[0x277D75110];
  v6 = v4;
  v7 = PABS_LocalizedStringForPasscodeLock(@"PEARL_RESET_SECOND_ALERT_TITLE");
  v8 = PABS_LocalizedStringForPasscodeLock(v6);

  v9 = [v5 alertControllerWithTitle:v7 message:v8 preferredStyle:1];

  v10 = MEMORY[0x277D750F8];
  v11 = PABS_LocalizedStringForPasscodeLock(@"CONTINUE");
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __84__PABSPearlPasscodeController_presentSecondAlertForDeletingMatchedBiometricTemplate__block_invoke;
  v16[3] = &unk_279A030F8;
  v16[4] = self;
  v12 = [v10 actionWithTitle:v11 style:2 handler:v16];
  [v9 addAction:v12];

  v13 = MEMORY[0x277D750F8];
  v14 = PABS_LocalizedStringForPasscodeLock(@"CANCEL");
  v15 = [v13 actionWithTitle:v14 style:1 handler:0];
  [v9 addAction:v15];

  [(PABSPearlPasscodeController *)self presentViewController:v9 animated:1 completion:0];
}

- (void)deleteAllIdentities
{
  v19 = *MEMORY[0x277D85DE8];
  v17.receiver = self;
  v17.super_class = PABSPearlPasscodeController;
  [(PABSBiometricController *)&v17 deleteGlobalAuthACL];
  v3 = +[PABSBiometrics sharedInstance];
  v4 = [v3 identitiesForIdentityType:2];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        v11 = +[PABSBiometrics sharedInstance];
        [v11 removeIdentity:v10 completion:0];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v13 objects:v18 count:16];
    }

    while (v7);
  }

  if (_os_feature_enabled_impl())
  {
    [(PABSPearlPasscodeController *)self configurePeriocularEnabled:0];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (BOOL)faceIDEnrollmentCoordinatorShouldPresentInModalSheet:(id)sheet
{
  v3 = objc_opt_class();

  return [v3 shouldPresentInModalSheet];
}

- (void)faceIDEnrollmentCoordinator:(id)coordinator finishedEnrollmentWithError:(id)error
{
  coordinatorCopy = coordinator;
  errorCopy = error;
  if (errorCopy)
  {
    v8 = PABSLogForCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [PABSPearlPasscodeController faceIDEnrollmentCoordinator:errorCopy finishedEnrollmentWithError:v8];
    }

    [(PABSBiometricController *)self cancelModalFlowWithCompletion:0];
    presentedViewController = [coordinatorCopy presentedViewController];
    [presentedViewController dismissViewControllerAnimated:1 completion:0];

    [(PABSPearlPasscodeController *)self setFaceIDEnrollmentCoordinator:0];
  }

  else if ([(PABSPearlPasscodeController *)self isEnrolled]&& ![(PABSBiometricController *)self isPasscodeSet])
  {
    [(PABSBiometricController *)self setModalFlowCancelCompletion:&__block_literal_global_307];
    [(PABSPearlPasscodeController *)self pushPasscodePane];
  }

  else
  {
    if ([(PABSPearlPasscodeController *)self isEnrolled])
    {
      [(PABSBiometricController *)self completeModalFlow];
    }

    else
    {
      [(PABSBiometricController *)self cancelModalFlowWithCompletion:0];
    }

    [(PABSPearlPasscodeController *)self dismissViewControllerAnimated:1 completion:0];
  }
}

void __87__PABSPearlPasscodeController_faceIDEnrollmentCoordinator_finishedEnrollmentWithError___block_invoke()
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v0 = +[PABSBiometrics sharedInstance];
  v1 = [v0 identitiesForIdentityType:2];

  v2 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v10;
    do
    {
      v5 = 0;
      do
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v9 + 1) + 8 * v5);
        v7 = +[PABSBiometrics sharedInstance];
        [v7 removeIdentity:v6 completion:&__block_literal_global_309];

        ++v5;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v3);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __87__PABSPearlPasscodeController_faceIDEnrollmentCoordinator_finishedEnrollmentWithError___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v4 = a3;
  if ((a2 & 1) == 0)
  {
    v5 = PABSLogForCategory(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __87__PABSPearlPasscodeController_faceIDEnrollmentCoordinator_finishedEnrollmentWithError___block_invoke_2_cold_1(v4);
    }
  }
}

- (void)faceIDEnrollmentCoordinatorWillDismiss:(id)dismiss
{
  v4 = PABSLogForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_25E0E9000, v4, OS_LOG_TYPE_DEFAULT, "Face ID Coordinator: Dismissed. - Reloading Pane -", v5, 2u);
  }

  [(PABSPearlPasscodeController *)self reloadSpecifiers];
}

- (void)numberOfAppsUsingPearlDescription:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:0];
  OUTLINED_FUNCTION_2(&dword_25E0E9000, v1, v2, "invalid number of apps: %@", v3, v4, v5, v6, 2u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)faceIDEnrollmentCoordinator:(uint64_t)a1 finishedEnrollmentWithError:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_25E0E9000, a2, OS_LOG_TYPE_ERROR, "Enroll failed with error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __87__PABSPearlPasscodeController_faceIDEnrollmentCoordinator_finishedEnrollmentWithError___block_invoke_2_cold_1(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 description];
  OUTLINED_FUNCTION_2(&dword_25E0E9000, v2, v3, "Unable to remove BKIdentity %@.", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

@end