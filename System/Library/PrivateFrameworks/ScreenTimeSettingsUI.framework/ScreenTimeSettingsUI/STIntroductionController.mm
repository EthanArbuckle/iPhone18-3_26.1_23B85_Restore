@interface STIntroductionController
- (STIntroductionController)initWithDSID:(id)d childAge:(id)age childName:(id)name updateExistingSettings:(BOOL)settings restrictionsDataSource:(id)source;
- (STIntroductionController)initWithNewUserRootViewModelCoordinator:(id)coordinator;
- (id)_viewControllerFollowingViewController:(id)controller;
- (id)initExpressSetupWithDSID:(id)d childAge:(id)age childName:(id)name restrictionsDataSource:(id)source;
- (void)_endIntroductionFlowWithEnablingScreenTime;
- (void)_endIntroductionFlowWithoutEnablingScreenTime;
- (void)_setDefaultIntroductionViewModelForAge:(id)age dsid:(id)dsid;
- (void)_setRestrictionsPresetForAge:(id)age dsid:(id)dsid;
- (void)_setRestrictionsPresetForAge:(id)age storefront:(id)storefront;
- (void)_viewControllerCompleted:(id)completed;
- (void)presentOverViewController:(id)controller;
@end

@implementation STIntroductionController

- (STIntroductionController)initWithDSID:(id)d childAge:(id)age childName:(id)name updateExistingSettings:(BOOL)settings restrictionsDataSource:(id)source
{
  settingsCopy = settings;
  dCopy = d;
  ageCopy = age;
  nameCopy = name;
  v29.receiver = self;
  v29.super_class = STIntroductionController;
  sourceCopy = source;
  v17 = [(STIntroductionController *)&v29 init];
  objc_storeStrong(&v17->_dsid, d);
  objc_storeStrong(&v17->_childAge, age);
  objc_storeStrong(&v17->_childName, name);
  v17->_updateExistingSettings = settingsCopy;
  v17->_isExpressSetup = 0;
  v18 = objc_opt_new();
  introductionModel = v17->_introductionModel;
  v17->_introductionModel = v18;

  v20 = objc_opt_new();
  v21 = !settingsCopy;
  if (v21)
  {
    v26 = [_TtC20ScreenTimeSettingsUI23SettingsPresetViewModel alloc];
    v27 = [(SettingsPresetViewModel *)v26 initWithDsid:dCopy childAge:ageCopy isInitialSetup:v21 restrictionsToPresetMappingViewModel:0 restrictionsDataSource:sourceCopy agePresetsAnalytics:v20, v29.receiver, v29.super_class];

    settingsPresetViewModel = v17->_settingsPresetViewModel;
    v17->_settingsPresetViewModel = v27;
  }

  else
  {
    v22 = [STRestrictionsToPresetMappingViewModel alloc];
    settingsPresetViewModel = [(STRestrictionsToPresetMappingViewModel *)v22 initWithRestrictionsDataSource:sourceCopy, v29.receiver, v29.super_class];
    v24 = [[_TtC20ScreenTimeSettingsUI23SettingsPresetViewModel alloc] initWithDsid:dCopy childAge:ageCopy isInitialSetup:v21 restrictionsToPresetMappingViewModel:settingsPresetViewModel restrictionsDataSource:sourceCopy agePresetsAnalytics:v20];

    v25 = v17->_settingsPresetViewModel;
    v17->_settingsPresetViewModel = v24;
  }

  [(SettingsPresetViewModel *)v17->_settingsPresetViewModel loadWithCompletionHandler:&__block_literal_global_13];
  return v17;
}

- (id)initExpressSetupWithDSID:(id)d childAge:(id)age childName:(id)name restrictionsDataSource:(id)source
{
  ageCopy = age;
  dCopy = d;
  v12 = [(STIntroductionController *)self initWithDSID:dCopy childAge:ageCopy childName:name updateExistingSettings:0 restrictionsDataSource:source];
  v12->_isExpressSetup = 1;
  [(STIntroductionController *)v12 _setDefaultIntroductionViewModelForAge:ageCopy dsid:dCopy];

  return v12;
}

- (STIntroductionController)initWithNewUserRootViewModelCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  viewModel = [coordinatorCopy viewModel];
  v6 = [viewModel me];
  dsid = [v6 dsid];
  givenName = [v6 givenName];
  v9 = [(STIntroductionController *)self initWithDSID:dsid childAge:0 childName:givenName updateExistingSettings:0 restrictionsDataSource:coordinatorCopy];

  v10 = 1;
  v9->_allowParentalControls = 1;
  v9->_forceParentalControls = [viewModel forceParentalControls];
  v9->_askForRecoveryAppleID = [v6 needsRecoveryAppleID];
  if (([v6 isChild] & 1) == 0)
  {
    v10 = [v6 type] == 0;
  }

  v9->_childOrNotSignedIntoiCloud = v10;
  if ([v6 isRemoteUser])
  {
    v9->_showCommunicationSafetyPane = 1;
  }

  return v9;
}

- (void)presentOverViewController:(id)controller
{
  controllerCopy = controller;
  [(STIntroductionController *)self setIsModalPresentation:1];
  v5 = [(STIntroductionController *)self _viewControllerFollowingViewController:0];
  v6 = [objc_alloc(MEMORY[0x277D37660]) initWithRootViewController:v5];
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (!userInterfaceIdiom)
  {
    [v6 setSupportedInterfaceOrientations:2];
  }

  [v6 setModalPresentationStyle:2];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __54__STIntroductionController_presentOverViewController___block_invoke;
  v10[3] = &unk_279B7CAE0;
  v10[4] = self;
  v11 = v6;
  v9 = v6;
  [controllerCopy presentViewController:v9 animated:1 completion:v10];
}

- (void)_viewControllerCompleted:(id)completed
{
  completedCopy = completed;
  if ([(STIntroductionController *)self isExpressSetup]|| ([(STIntroductionController *)self _viewControllerFollowingViewController:completedCopy], (v4 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    if ([(STIntroductionController *)self isModalPresentation])
    {
      navigationController = [completedCopy navigationController];
      [navigationController dismissViewControllerAnimated:1 completion:0];
    }

    completionBlock = [(STIntroductionController *)self completionBlock];

    if (completionBlock)
    {
      completionBlock2 = [(STIntroductionController *)self completionBlock];
      introductionModel = [(STIntroductionController *)self introductionModel];
      (completionBlock2)[2](completionBlock2, 1, introductionModel);
    }

    [(STIntroductionController *)self setNavigationController:0];
  }

  else
  {
    v5 = v4;
    navigationController2 = [completedCopy navigationController];
    [navigationController2 pushViewController:v5 animated:1];
  }
}

- (void)_endIntroductionFlowWithoutEnablingScreenTime
{
  if ([(STIntroductionController *)self isModalPresentation])
  {
    navigationController = [(STIntroductionController *)self navigationController];
    [navigationController dismissViewControllerAnimated:1 completion:0];
  }

  completionBlock = [(STIntroductionController *)self completionBlock];

  if (completionBlock)
  {
    completionBlock2 = [(STIntroductionController *)self completionBlock];
    completionBlock2[2](completionBlock2, 0, 0);
  }

  [(STIntroductionController *)self setNavigationController:0];
}

- (void)_endIntroductionFlowWithEnablingScreenTime
{
  completionBlock = [(STIntroductionController *)self completionBlock];

  if (completionBlock)
  {
    completionBlock2 = [(STIntroductionController *)self completionBlock];
    introductionModel = [(STIntroductionController *)self introductionModel];
    (completionBlock2)[2](completionBlock2, 1, introductionModel);
  }

  [(STIntroductionController *)self setNavigationController:0];
}

- (id)_viewControllerFollowingViewController:(id)controller
{
  controllerCopy = controller;
  v39 = 0;
  v40 = &v39;
  v41 = 0x3042000000;
  v42 = __Block_byref_object_copy__2;
  v43 = __Block_byref_object_dispose__2;
  v44 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __67__STIntroductionController__viewControllerFollowingViewController___block_invoke;
  aBlock[3] = &unk_279B7D968;
  aBlock[4] = self;
  aBlock[5] = &v39;
  v5 = _Block_copy(aBlock);
  if (!controllerCopy)
  {
    if ([(STIntroductionController *)self isExpressSetup])
    {
      introductionModel = [(STIntroductionController *)self introductionModel];
      childName = [(STIntroductionController *)self childName];
      v8 = [_TtC20ScreenTimeSettingsUI36STIntroductionViewControllersFactory makeIntroductionPasscodeViewControllerWithIntroductionModel:introductionModel childName:childName askForRecoveryForAppleID:0 altDSID:0 isChildOrNotSignedIntoiCloud:[(STIntroductionController *)self isChildOrNotSignedIntoiCloud] continueHandler:v5];

      goto LABEL_30;
    }

    if (![(STIntroductionController *)self updateExistingSettings])
    {
      v37[0] = MEMORY[0x277D85DD0];
      v37[1] = 3221225472;
      v37[2] = __67__STIntroductionController__viewControllerFollowingViewController___block_invoke_2;
      v37[3] = &unk_279B7C998;
      v37[4] = self;
      introductionModel3 = _Block_copy(v37);
      childName2 = [(STIntroductionController *)self childName];
      v8 = [_TtC20ScreenTimeSettingsUI36STIntroductionViewControllersFactory makeIntroductionWelcomeViewControllerWithChildName:childName2 forceParentalControls:[(STIntroductionController *)self forceParentalControls] continueHandler:v5 endHandler:introductionModel3];
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  if (![_TtC20ScreenTimeSettingsUI36STIntroductionViewControllersFactory isOfTypeWelcomeViewController:controllerCopy])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      introductionModel2 = [(STIntroductionController *)self introductionModel];
      deviceForChild = [introductionModel2 deviceForChild];

      if (deviceForChild)
      {
        goto LABEL_12;
      }

LABEL_28:
      v8 = 0;
      goto LABEL_29;
    }

    if ([_TtC20ScreenTimeSettingsUI36STIntroductionViewControllersFactory isOfTypePresetsViewController:controllerCopy])
    {
      if ([(STIntroductionController *)self showCommunicationSafetyPane])
      {
        introductionModel3 = [(STIntroductionController *)self introductionModel];
        childName3 = [(STIntroductionController *)self childName];
        v16 = [_TtC20ScreenTimeSettingsUI36STIntroductionViewControllersFactory makeIntroductionCommunicationSafetyViewControllerWithIntroductionModel:introductionModel3 childName:childName3 continueHandler:v5];
LABEL_37:
        v8 = v16;
        goto LABEL_38;
      }

      if ([(STIntroductionController *)self updateExistingSettings])
      {
        goto LABEL_28;
      }
    }

    else
    {
      if ([_TtC20ScreenTimeSettingsUI36STIntroductionViewControllersFactory isOfTypeCommunicationSafetyViewController:controllerCopy])
      {
        objc_initWeak(&location, self);
        v30 = MEMORY[0x277D85DD0];
        v31 = 3221225472;
        v32 = __67__STIntroductionController__viewControllerFollowingViewController___block_invoke_3;
        v33 = &unk_279B7D990;
        objc_copyWeak(&v35, &location);
        v34 = v5;
        v19 = _Block_copy(&v30);
        v20 = [STEyeReliefIntroHowItWorksViewController alloc];
        v21 = [(STIntroductionController *)self introductionModel:v30];
        v8 = [(STEyeReliefIntroHowItWorksViewController *)v20 initWithIntroductionModel:v21 completionHandler:v19];

        objc_destroyWeak(&v35);
        objc_destroyWeak(&location);
        goto LABEL_29;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (![_TtC20ScreenTimeSettingsUI36STIntroductionViewControllersFactory isOfTypeAppAndWebsiteActivityViewController:controllerCopy])
        {
          if ([_TtC20ScreenTimeSettingsUI36STIntroductionViewControllersFactory isOfTypeDowntimeViewController:controllerCopy])
          {
            if (![(STIntroductionController *)self skipAppLimitsPane])
            {
              v29 = [STIntroAppLimitsViewController alloc];
              introductionModel3 = [(STIntroductionController *)self introductionModel];
              v18 = [(STIntroAppLimitsViewController *)v29 initWithIntroductionModel:introductionModel3 continueHandler:v5];
              goto LABEL_21;
            }
          }

          else
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_28;
            }
          }

          introductionModel3 = [(STIntroductionController *)self introductionModel];
          childName2 = [(STIntroductionController *)self childName];
          askForRecoveryAppleID = [(STIntroductionController *)self askForRecoveryAppleID];
          altDSID = [(STIntroductionController *)self altDSID];
          v14 = [_TtC20ScreenTimeSettingsUI36STIntroductionViewControllersFactory makeIntroductionPasscodeViewControllerWithIntroductionModel:introductionModel3 childName:childName2 askForRecoveryForAppleID:askForRecoveryAppleID altDSID:altDSID isChildOrNotSignedIntoiCloud:[(STIntroductionController *)self isChildOrNotSignedIntoiCloud] continueHandler:v5];
          goto LABEL_13;
        }

        introductionModel4 = [(STIntroductionController *)self introductionModel];
        appAndWebsiteActivityEnabled = [introductionModel4 appAndWebsiteActivityEnabled];
        bOOLValue = [appAndWebsiteActivityEnabled BOOLValue];

        if (bOOLValue)
        {
          introductionModel3 = [(STIntroductionController *)self introductionModel];
          v18 = [_TtC20ScreenTimeSettingsUI36STIntroductionViewControllersFactory makeIntroductionDowntimeViewControllerWithIntroductionModel:introductionModel3 continueHandler:v5];
          goto LABEL_21;
        }

        introductionModel3 = [(STIntroductionController *)self introductionModel];
        childName3 = [(STIntroductionController *)self childName];
        askForRecoveryAppleID2 = [(STIntroductionController *)self askForRecoveryAppleID];
        altDSID2 = [(STIntroductionController *)self altDSID];
        v8 = [_TtC20ScreenTimeSettingsUI36STIntroductionViewControllersFactory makeIntroductionPasscodeViewControllerWithIntroductionModel:introductionModel3 childName:childName3 askForRecoveryForAppleID:askForRecoveryAppleID2 altDSID:altDSID2 isChildOrNotSignedIntoiCloud:[(STIntroductionController *)self isChildOrNotSignedIntoiCloud] continueHandler:v5];

LABEL_38:
        goto LABEL_19;
      }

      if ([(STIntroductionController *)self updateExistingSettings])
      {
        goto LABEL_28;
      }
    }

    introductionModel3 = [(STIntroductionController *)self introductionModel];
    childName3 = [(STIntroductionController *)self childName];
    v16 = [_TtC20ScreenTimeSettingsUI36STIntroductionViewControllersFactory makeIntroductionAppAndWebsiteActivityViewControllerWithIntroductionModel:introductionModel3 childName:childName3 continueHandler:v5];
    goto LABEL_37;
  }

  if (![(STIntroductionController *)self allowParentalControls])
  {
    goto LABEL_28;
  }

  if (![(STIntroductionController *)self forceParentalControls])
  {
    v17 = [STIntroIdentityViewController alloc];
    introductionModel3 = [(STIntroductionController *)self introductionModel];
    v18 = [(STIntroIdentityViewController *)v17 initWithIntroductionModel:introductionModel3 continueHandler:v5];
LABEL_21:
    v8 = v18;
    goto LABEL_19;
  }

LABEL_12:
  introductionModel3 = [(STIntroductionController *)self introductionModel];
  childName2 = [(STIntroductionController *)self settingsPresetViewModel];
  altDSID = [(STIntroductionController *)self childName];
  v14 = [_TtC20ScreenTimeSettingsUI36STIntroductionViewControllersFactory makeIntroPresetsViewControllerWithIntroductionModel:introductionModel3 settingsPresetViewModel:childName2 name:altDSID updateExistingSettings:[(STIntroductionController *)self updateExistingSettings] continueHandler:v5];
LABEL_13:
  v8 = v14;

LABEL_18:
LABEL_19:

LABEL_29:
  objc_storeWeak(v40 + 5, v8);
LABEL_30:

  _Block_object_dispose(&v39, 8);
  objc_destroyWeak(&v44);

  return v8;
}

void __67__STIntroductionController__viewControllerFollowingViewController___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((*(*(a1 + 40) + 8) + 40));
  [v1 _viewControllerCompleted:WeakRetained];
}

uint64_t __67__STIntroductionController__viewControllerFollowingViewController___block_invoke_3(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = a2;
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v5 = [WeakRetained introductionModel];
    [v5 setScreenDistanceEnabled:v3];
  }

  v6 = *(*(a1 + 32) + 16);

  return v6();
}

- (void)_setDefaultIntroductionViewModelForAge:(id)age dsid:(id)dsid
{
  dsidCopy = dsid;
  ageCopy = age;
  introductionModel = [(STIntroductionController *)self introductionModel];
  [introductionModel setCommunicationSafetyEnabled:&unk_28769D2B0];

  introductionModel2 = [(STIntroductionController *)self introductionModel];
  [introductionModel2 setScreenDistanceEnabled:&unk_28769D2B0];

  introductionModel3 = [(STIntroductionController *)self introductionModel];
  [introductionModel3 setAppAndWebsiteActivityEnabled:&unk_28769D2B0];

  v10 = objc_opt_new();
  introductionModel4 = [(STIntroductionController *)self introductionModel];
  [introductionModel4 setBedtime:v10];

  [(STIntroductionController *)self _setRestrictionsPresetForAge:ageCopy dsid:dsidCopy];
}

- (void)_setRestrictionsPresetForAge:(id)age dsid:(id)dsid
{
  ageCopy = age;
  dsidCopy = dsid;
  if (_os_feature_enabled_impl())
  {
    v8 = objc_opt_new();
    v9 = [objc_alloc(MEMORY[0x277D4BA48]) initWithUnrated:0 userDSID:dsidCopy];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __62__STIntroductionController__setRestrictionsPresetForAge_dsid___block_invoke;
    v10[3] = &unk_279B7D9B8;
    v10[4] = self;
    v11 = ageCopy;
    [v8 fetchStorefrontWithOptions:v9 completionHandler:v10];
  }

  else
  {
    [(STIntroductionController *)self _setRestrictionsPresetForAge:ageCopy storefront:0];
  }
}

void __62__STIntroductionController__setRestrictionsPresetForAge_dsid___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    v7 = +[STUILog childSetup];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __62__STIntroductionController__setRestrictionsPresetForAge_dsid___block_invoke_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  [*(a1 + 32) _setRestrictionsPresetForAge:*(a1 + 40) storefront:v5];
}

- (void)_setRestrictionsPresetForAge:(id)age storefront:(id)storefront
{
  ageCopy = age;
  storefrontCopy = storefront;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __68__STIntroductionController__setRestrictionsPresetForAge_storefront___block_invoke;
  aBlock[3] = &unk_279B7D9E0;
  aBlock[4] = self;
  v8 = _Block_copy(aBlock);
  v9 = objc_opt_new();
  intValue = [ageCopy intValue];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __68__STIntroductionController__setRestrictionsPresetForAge_storefront___block_invoke_2;
  v16[3] = &unk_279B7DA30;
  v11 = intValue;
  v17 = v9;
  v18 = ageCopy;
  v19 = storefrontCopy;
  v20 = v8;
  v12 = v8;
  v13 = storefrontCopy;
  v14 = ageCopy;
  v15 = v9;
  [v15 fetchPresetRestrictionsForAge:v11 storefront:v13 completionHandler:v16];
}

void __68__STIntroductionController__setRestrictionsPresetForAge_storefront___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 restrictions];
  v5 = [*(a1 + 32) introductionModel];
  [v5 setRestrictions:v4];

  v6 = [v3 imageGenerationRestriction];
  v7 = [*(a1 + 32) introductionModel];
  [v7 setImageGenerationRestriction:v6];
}

void __68__STIntroductionController__setRestrictionsPresetForAge_storefront___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = +[STUILog childSetup];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __68__STIntroductionController__setRestrictionsPresetForAge_storefront___block_invoke_2_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }

    v12 = +[STUILog childSetup];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      __68__STIntroductionController__setRestrictionsPresetForAge_storefront___block_invoke_2_cold_2(v12);
    }

    v13 = *(a1 + 32);
    v14 = [*(a1 + 40) intValue];
    v15 = *(a1 + 48);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __68__STIntroductionController__setRestrictionsPresetForAge_storefront___block_invoke_43;
    v16[3] = &unk_279B7DA08;
    v17 = v4;
    v18 = *(a1 + 56);
    [v13 fetchPresetRestrictionsFromCacheForAge:v14 storefront:v15 completionHandler:v16];
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }
}

void __68__STIntroductionController__setRestrictionsPresetForAge_storefront___block_invoke_43(uint64_t a1)
{
  v1 = a1 + 32;
  if (*(a1 + 32))
  {
    v2 = +[STUILog childSetup];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __68__STIntroductionController__setRestrictionsPresetForAge_storefront___block_invoke_43_cold_1(v1, v2, v3, v4, v5, v6, v7, v8);
    }
  }

  else
  {
    v9 = *(*(a1 + 40) + 16);

    v9();
  }
}

@end