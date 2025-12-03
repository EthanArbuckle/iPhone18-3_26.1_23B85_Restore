@interface STChildSetupController
+ (BOOL)isCommunicationSafetyAlreadyEnabledForUser:(id)user;
- (STChildSetupController)initWithDSID:(id)d isChildDevice:(BOOL)device childAge:(id)age childName:(id)name updateExistingSettings:(BOOL)settings;
- (id)initExpressSetupOnChildDeviceWithDSID:(id)d childAge:(id)age childName:(id)name completionHandler:(id)handler;
- (id)initExpressSetupWithDSID:(id)d childAge:(id)age childName:(id)name completionHandler:(id)handler;
@end

@implementation STChildSetupController

- (STChildSetupController)initWithDSID:(id)d isChildDevice:(BOOL)device childAge:(id)age childName:(id)name updateExistingSettings:(BOOL)settings
{
  settingsCopy = settings;
  deviceCopy = device;
  v42 = *MEMORY[0x277D85DE8];
  dCopy = d;
  ageCopy = age;
  nameCopy = name;
  v39.receiver = self;
  v39.super_class = STChildSetupController;
  v14 = [(STChildSetupController *)&v39 init];
  if (v14)
  {
    v15 = +[STUILog childSetup];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413314;
      *&buf[4] = dCopy;
      *&buf[12] = 1026;
      *&buf[14] = deviceCopy;
      *&buf[18] = 2112;
      *&buf[20] = ageCopy;
      *&buf[28] = 2112;
      *&buf[30] = nameCopy;
      *&buf[38] = 1026;
      LODWORD(v41) = settingsCopy;
      _os_log_impl(&dword_264BA2000, v15, OS_LOG_TYPE_DEFAULT, "Initializing STChildSetupController with dsid:%@ isChildDevice:%{public}d childAge:%@ childName:%@ updateExistingSettings:%{public}d", buf, 0x2Cu);
    }

    v16 = [[STRootViewModelCoordinator alloc] initWithUserDSID:dCopy deviceIdentifier:0 usageReportType:0 usageContext:0];
    objc_storeStrong(&v14->_coordinator, v16);
    if (nameCopy)
    {
      givenName = nameCopy;
    }

    else
    {
      viewModel = [(STRootViewModelCoordinator *)v16 viewModel];
      v19 = [viewModel me];
      givenName = [v19 givenName];
    }

    v20 = [STIntroductionController alloc];
    coordinator = [(STChildSetupController *)v14 coordinator];
    v22 = [(STIntroductionController *)v20 initWithDSID:dCopy childAge:ageCopy childName:givenName updateExistingSettings:settingsCopy restrictionsDataSource:coordinator];
    introductionController = v14->_introductionController;
    v14->_introductionController = v22;

    [(STIntroductionController *)v14->_introductionController setAllowParentalControls:1];
    [(STIntroductionController *)v14->_introductionController setForceParentalControls:1];
    [(STIntroductionController *)v14->_introductionController setSkipAppLimitsPane:1];
    if (settingsCopy)
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      buf[24] = 1;
      mEMORY[0x277D4B898] = [MEMORY[0x277D4B898] sharedController];
      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v36[2] = __95__STChildSetupController_initWithDSID_isChildDevice_childAge_childName_updateExistingSettings___block_invoke;
      v36[3] = &unk_279B7CFC8;
      v37 = dCopy;
      v38 = buf;
      [mEMORY[0x277D4B898] performBackgroundTaskAndWait:v36];
      [(STIntroductionController *)v14->_introductionController setShowCommunicationSafetyPane:(*(*&buf[8] + 24) & 1) == 0];

      _Block_object_dispose(buf, 8);
    }

    else
    {
      [(STIntroductionController *)v14->_introductionController setShowCommunicationSafetyPane:1];
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    *&buf[24] = __Block_byref_object_copy__1;
    *&buf[32] = __Block_byref_object_dispose__1;
    v25 = v14;
    v41 = v25;
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __95__STChildSetupController_initWithDSID_isChildDevice_childAge_childName_updateExistingSettings___block_invoke_28;
    v31[3] = &unk_279B7D018;
    v34 = deviceCopy;
    v33 = buf;
    v35 = settingsCopy;
    v26 = v16;
    v32 = v26;
    [(STIntroductionController *)v14->_introductionController setCompletionBlock:v31];
    initialViewController = [(STIntroductionController *)v14->_introductionController initialViewController];
    initialViewController = v25->_initialViewController;
    v25->_initialViewController = initialViewController;

    _Block_object_dispose(buf, 8);
  }

  return v14;
}

void __95__STChildSetupController_initWithDSID_isChildDevice_childAge_childName_updateExistingSettings___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v7 = 0;
  v4 = [MEMORY[0x277D4B988] fetchUserWithDSID:v3 inContext:a2 error:&v7];
  v5 = v7;
  if (v4)
  {
    *(*(*(a1 + 40) + 8) + 24) = [STChildSetupController isCommunicationSafetyAlreadyEnabledForUser:v4];
  }

  else
  {
    v6 = +[STUILog childSetup];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      __95__STChildSetupController_initWithDSID_isChildDevice_childAge_childName_updateExistingSettings___block_invoke_cold_1(v5, v6);
    }
  }
}

void __95__STChildSetupController_initWithDSID_isChildDevice_childAge_childName_updateExistingSettings___block_invoke_28(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if ((a2 & 1) == 0)
  {
    v10 = *(*(*(a1 + 40) + 8) + 40);
    if (*(a1 + 48))
    {
      v8 = [v10 completionHandlerWithIntroductionModel];
      if (v8)
      {
        v11 = +[STUILog childSetup];
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_264BA2000, v11, OS_LOG_TYPE_DEFAULT, "Calling STChildSetupController completion handler with introduction model. Screen Time was not enabled on child's device.", buf, 2u);
        }

        v8[2](v8, 0, 0);
      }
    }

    else
    {
      v8 = [v10 completionHandler];
      if (v8)
      {
        v23 = +[STUILog childSetup];
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_264BA2000, v23, OS_LOG_TYPE_DEFAULT, "Calling STChildSetupController completion handler. Screen Time was not enabled for remote child from parent's device.", buf, 2u);
        }

        (v8[2])(v8, 0);
      }
    }

    goto LABEL_21;
  }

  if (*(a1 + 49) == 1)
  {
    v7 = +[STUILog childSetup];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_264BA2000, v7, OS_LOG_TYPE_DEFAULT, "Updating existing settings for remote child from parent's device.", buf, 2u);
    }

    v8 = [*(*(*(a1 + 40) + 8) + 40) coordinator];
    v9 = [*(*(*(a1 + 40) + 8) + 40) completionHandler];
    [v8 applyIntroductionViewModel:v6 withCompletionHandler:v9];

LABEL_21:
    v24 = *(*(a1 + 40) + 8);
    v12 = *(v24 + 40);
    *(v24 + 40) = 0;
    goto LABEL_22;
  }

  if (*(a1 + 48))
  {
    v12 = [*(*(*(a1 + 40) + 8) + 40) completionHandlerWithIntroductionModel];
    if (v12)
    {
      v30 = objc_alloc(MEMORY[0x277D4B9E0]);
      v13 = [v6 appAndWebsiteActivityEnabled];
      v32 = [v6 bedtime];
      v29 = [v32 simpleSchedule];
      v14 = [v29 startTime];
      v28 = [v6 bedtime];
      v27 = [v28 simpleSchedule];
      v15 = [v27 endTime];
      v16 = [v6 restrictions];
      v17 = [v6 parentalControlsPasscode];
      v18 = [v6 communicationSafetyEnabled];
      v19 = [v6 screenDistanceEnabled];
      v31 = [v30 initWithAppAndWebsiteActivityEnabled:v13 downtimeStartTime:v14 downtimeEndTime:v15 restrictions:v16 passcode:v17 communicationSafetyEnabled:v18 eyeReliefEnabled:v19 imageGenerationRestriction:{objc_msgSend(v6, "imageGenerationRestriction")}];

      v20 = +[STUILog childSetup];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_264BA2000, v20, OS_LOG_TYPE_DEFAULT, "Calling STChildSetupController completion handler with introduction model. Screen Time will be enabled on child's device.", buf, 2u);
      }

      (v12)[2](v12, 1, v31);
    }

    v21 = *(*(a1 + 40) + 8);
    v22 = *(v21 + 40);
    *(v21 + 40) = 0;
  }

  else
  {
    v25 = *(a1 + 32);
    v26 = [v5 parentalControlsPasscode];
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __95__STChildSetupController_initWithDSID_isChildDevice_childAge_childName_updateExistingSettings___block_invoke_29;
    v33[3] = &unk_279B7CFF0;
    v35 = *(a1 + 40);
    v34 = v6;
    [v25 enableManagementWithPIN:v26 recoveryAltDSID:0 completionHandler:v33];

    v12 = v34;
  }

LABEL_22:
}

void __95__STChildSetupController_initWithDSID_isChildDevice_childAge_childName_updateExistingSettings___block_invoke_29(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(*(*(a1 + 40) + 8) + 40) completionHandler];
  v5 = +[STUILog childSetup];
  v6 = v5;
  if (v3)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __95__STChildSetupController_initWithDSID_isChildDevice_childAge_childName_updateExistingSettings___block_invoke_29_cold_1(v3, v6);
    }

    if (v4)
    {
      (v4)[2](v4, v3);
    }
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_264BA2000, v6, OS_LOG_TYPE_DEFAULT, "Screen Time was successfully enabled for remote child from parent's device. Will save values for model.", v10, 2u);
    }

    v7 = [*(*(*(a1 + 40) + 8) + 40) coordinator];
    [v7 applyIntroductionViewModel:*(a1 + 32) withCompletionHandler:v4];

    v8 = *(*(a1 + 40) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = 0;
  }
}

- (id)initExpressSetupWithDSID:(id)d childAge:(id)age childName:(id)name completionHandler:(id)handler
{
  v40 = *MEMORY[0x277D85DE8];
  dCopy = d;
  ageCopy = age;
  nameCopy = name;
  handlerCopy = handler;
  v14 = [(STChildSetupController *)self initWithDSID:dCopy updateExistingSettings:0 childAge:ageCopy childName:nameCopy];
  v15 = +[STUILog childSetup];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v35 = dCopy;
    v36 = 2112;
    v37 = ageCopy;
    v38 = 2112;
    v39 = nameCopy;
    _os_log_impl(&dword_264BA2000, v15, OS_LOG_TYPE_DEFAULT, "Initializing [STChildSetupController initExpressSetupWithDSID:] with dsid:%@ childAge:%@ childName:%@", buf, 0x20u);
  }

  v16 = [[STIntroductionController alloc] initExpressSetupWithDSID:dCopy childAge:ageCopy childName:nameCopy restrictionsDataSource:v14->_coordinator];
  introductionController = v14->_introductionController;
  v14->_introductionController = v16;

  v26 = MEMORY[0x277D85DD0];
  v27 = 3221225472;
  v28 = __88__STChildSetupController_initExpressSetupWithDSID_childAge_childName_completionHandler___block_invoke;
  v29 = &unk_279B7D040;
  v30 = dCopy;
  v31 = ageCopy;
  v32 = nameCopy;
  v33 = handlerCopy;
  v18 = v14->_introductionController;
  v19 = nameCopy;
  v20 = ageCopy;
  v21 = dCopy;
  v22 = handlerCopy;
  [(STIntroductionController *)v18 setCompletionBlock:&v26];
  v23 = [(STIntroductionController *)v14->_introductionController initialViewController:v26];
  initialViewController = v14->_initialViewController;
  v14->_initialViewController = v23;

  return v14;
}

void __88__STChildSetupController_initExpressSetupWithDSID_childAge_childName_completionHandler___block_invoke(void *a1, char a2, void *a3)
{
  v51 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (a2)
  {
    v6 = objc_opt_new();
    v7 = a1[4];
    v44 = 0;
    v8 = [v6 enableRemoteManagementForDSID:v7 error:&v44];
    v9 = v44;
    v10 = +[STUILog childSetup];
    v11 = v10;
    if (v8)
    {
      v43 = v6;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v12 = a1[4];
        v13 = a1[5];
        v14 = a1[6];
        *buf = 138412802;
        v46 = v12;
        v47 = 2112;
        v48 = v13;
        v49 = 2112;
        v50 = v14;
        _os_log_impl(&dword_264BA2000, v11, OS_LOG_TYPE_DEFAULT, "Applying introduction settings to user with dsid:%@ childAge:%@ childName:%@", buf, 0x20u);
      }

      v39 = objc_alloc(MEMORY[0x277D4B9E0]);
      v37 = [v5 appAndWebsiteActivityEnabled];
      v42 = [v5 bedtime];
      v41 = [v42 simpleSchedule];
      v15 = [v41 startTime];
      v40 = [v5 bedtime];
      v38 = [v40 simpleSchedule];
      v16 = [v38 endTime];
      v17 = [v5 restrictions];
      v18 = [v5 parentalControlsPasscode];
      v19 = [v5 communicationSafetyEnabled];
      v20 = [v5 screenDistanceEnabled];
      v21 = [v39 initWithAppAndWebsiteActivityEnabled:v37 downtimeStartTime:v15 downtimeEndTime:v16 restrictions:v17 passcode:v18 communicationSafetyEnabled:v19 eyeReliefEnabled:v20 imageGenerationRestriction:{objc_msgSend(v5, "imageGenerationRestriction")}];

      v6 = v43;
      [v43 applyIntroductionModel:v21 forDSID:a1[4] completionHandler:a1[7]];
    }

    else
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        __88__STChildSetupController_initExpressSetupWithDSID_childAge_childName_completionHandler___block_invoke_cold_1(v11, v30, v31, v32, v33, v34, v35, v36);
      }

      (*(a1[7] + 16))();
    }
  }

  else
  {
    v9 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D4BBD8] code:7 userInfo:0];
    v22 = +[STUILog childSetup];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      __88__STChildSetupController_initExpressSetupWithDSID_childAge_childName_completionHandler___block_invoke_cold_1(v22, v23, v24, v25, v26, v27, v28, v29);
    }

    (*(a1[7] + 16))();
  }
}

- (id)initExpressSetupOnChildDeviceWithDSID:(id)d childAge:(id)age childName:(id)name completionHandler:(id)handler
{
  v31 = *MEMORY[0x277D85DE8];
  dCopy = d;
  ageCopy = age;
  nameCopy = name;
  handlerCopy = handler;
  v14 = [(STChildSetupController *)self initWithDSID:dCopy updateExistingSettings:0 childAge:ageCopy childName:nameCopy];
  v15 = +[STUILog childSetup];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v26 = dCopy;
    v27 = 2112;
    v28 = ageCopy;
    v29 = 2112;
    v30 = nameCopy;
    _os_log_impl(&dword_264BA2000, v15, OS_LOG_TYPE_DEFAULT, "Initializing [STChildSetupController initExpressSetupOnChildDeviceWithDSID:] with dsid:%@ childAge:%@ childName:%@", buf, 0x20u);
  }

  v16 = [[STIntroductionController alloc] initExpressSetupWithDSID:dCopy childAge:ageCopy childName:nameCopy restrictionsDataSource:v14->_coordinator];
  introductionController = v14->_introductionController;
  v14->_introductionController = v16;

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __101__STChildSetupController_initExpressSetupOnChildDeviceWithDSID_childAge_childName_completionHandler___block_invoke;
  v23[3] = &unk_279B7D068;
  v24 = handlerCopy;
  v18 = v14->_introductionController;
  v19 = handlerCopy;
  [(STIntroductionController *)v18 setCompletionBlock:v23];
  initialViewController = [(STIntroductionController *)v14->_introductionController initialViewController];
  initialViewController = v14->_initialViewController;
  v14->_initialViewController = initialViewController;

  return v14;
}

void __101__STChildSetupController_initExpressSetupOnChildDeviceWithDSID_childAge_childName_completionHandler___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v29 = a1;
    v26 = objc_alloc(MEMORY[0x277D4B9E0]);
    v25 = [v5 appAndWebsiteActivityEnabled];
    v28 = [v5 bedtime];
    v27 = [v28 simpleSchedule];
    v6 = [v27 startTime];
    v7 = [v5 bedtime];
    v8 = [v7 simpleSchedule];
    v9 = [v8 endTime];
    v10 = [v5 restrictions];
    v11 = [v5 parentalControlsPasscode];
    v12 = [v5 communicationSafetyEnabled];
    v13 = [v5 screenDistanceEnabled];
    v14 = [v26 initWithAppAndWebsiteActivityEnabled:v25 downtimeStartTime:v6 downtimeEndTime:v9 restrictions:v10 passcode:v11 communicationSafetyEnabled:v12 eyeReliefEnabled:v13 imageGenerationRestriction:{objc_msgSend(v5, "imageGenerationRestriction")}];

    v15 = +[STUILog childSetup];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_264BA2000, v15, OS_LOG_TYPE_DEFAULT, "Calling STChildSetupController completion handler with introduction model.", buf, 2u);
    }

    v16 = *(*(v29 + 32) + 16);
  }

  else
  {
    v14 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D4BBD8] code:7 userInfo:0];
    v17 = +[STUILog childSetup];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      __88__STChildSetupController_initExpressSetupWithDSID_childAge_childName_completionHandler___block_invoke_cold_1(v17, v18, v19, v20, v21, v22, v23, v24);
    }

    v16 = *(*(a1 + 32) + 16);
  }

  v16();
}

+ (BOOL)isCommunicationSafetyAlreadyEnabledForUser:(id)user
{
  userCopy = user;
  if ([userCopy isCommunicationSafetyReceivingRestricted] & 1) != 0 || (objc_msgSend(userCopy, "isCommunicationSafetySendingRestricted"))
  {
    isCommunicationSafetyNotificationEnabled = 1;
  }

  else
  {
    isCommunicationSafetyNotificationEnabled = [userCopy isCommunicationSafetyNotificationEnabled];
  }

  return isCommunicationSafetyNotificationEnabled;
}

void __95__STChildSetupController_initWithDSID_isChildDevice_childAge_childName_updateExistingSettings___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_fault_impl(&dword_264BA2000, a2, OS_LOG_TYPE_FAULT, "Failed to fetch user to determine whether to show Communication Safety pane: %{public}@", &v2, 0xCu);
}

void __95__STChildSetupController_initWithDSID_isChildDevice_childAge_childName_updateExistingSettings___block_invoke_29_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_264BA2000, a2, OS_LOG_TYPE_ERROR, "Failed to enable management for remote child from parent's device: %{public}@", &v2, 0xCu);
}

@end