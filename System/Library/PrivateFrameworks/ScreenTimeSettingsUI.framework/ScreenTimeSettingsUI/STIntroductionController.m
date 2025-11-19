@interface STIntroductionController
- (STIntroductionController)initWithDSID:(id)a3 childAge:(id)a4 childName:(id)a5 updateExistingSettings:(BOOL)a6 restrictionsDataSource:(id)a7;
- (STIntroductionController)initWithNewUserRootViewModelCoordinator:(id)a3;
- (id)_viewControllerFollowingViewController:(id)a3;
- (id)initExpressSetupWithDSID:(id)a3 childAge:(id)a4 childName:(id)a5 restrictionsDataSource:(id)a6;
- (void)_endIntroductionFlowWithEnablingScreenTime;
- (void)_endIntroductionFlowWithoutEnablingScreenTime;
- (void)_setDefaultIntroductionViewModelForAge:(id)a3 dsid:(id)a4;
- (void)_setRestrictionsPresetForAge:(id)a3 dsid:(id)a4;
- (void)_setRestrictionsPresetForAge:(id)a3 storefront:(id)a4;
- (void)_viewControllerCompleted:(id)a3;
- (void)presentOverViewController:(id)a3;
@end

@implementation STIntroductionController

- (STIntroductionController)initWithDSID:(id)a3 childAge:(id)a4 childName:(id)a5 updateExistingSettings:(BOOL)a6 restrictionsDataSource:(id)a7
{
  v8 = a6;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v29.receiver = self;
  v29.super_class = STIntroductionController;
  v16 = a7;
  v17 = [(STIntroductionController *)&v29 init];
  objc_storeStrong(&v17->_dsid, a3);
  objc_storeStrong(&v17->_childAge, a4);
  objc_storeStrong(&v17->_childName, a5);
  v17->_updateExistingSettings = v8;
  v17->_isExpressSetup = 0;
  v18 = objc_opt_new();
  introductionModel = v17->_introductionModel;
  v17->_introductionModel = v18;

  v20 = objc_opt_new();
  v21 = !v8;
  if (v21)
  {
    v26 = [_TtC20ScreenTimeSettingsUI23SettingsPresetViewModel alloc];
    v27 = [(SettingsPresetViewModel *)v26 initWithDsid:v13 childAge:v14 isInitialSetup:v21 restrictionsToPresetMappingViewModel:0 restrictionsDataSource:v16 agePresetsAnalytics:v20, v29.receiver, v29.super_class];

    settingsPresetViewModel = v17->_settingsPresetViewModel;
    v17->_settingsPresetViewModel = v27;
  }

  else
  {
    v22 = [STRestrictionsToPresetMappingViewModel alloc];
    settingsPresetViewModel = [(STRestrictionsToPresetMappingViewModel *)v22 initWithRestrictionsDataSource:v16, v29.receiver, v29.super_class];
    v24 = [[_TtC20ScreenTimeSettingsUI23SettingsPresetViewModel alloc] initWithDsid:v13 childAge:v14 isInitialSetup:v21 restrictionsToPresetMappingViewModel:settingsPresetViewModel restrictionsDataSource:v16 agePresetsAnalytics:v20];

    v25 = v17->_settingsPresetViewModel;
    v17->_settingsPresetViewModel = v24;
  }

  [(SettingsPresetViewModel *)v17->_settingsPresetViewModel loadWithCompletionHandler:&__block_literal_global_13];
  return v17;
}

- (id)initExpressSetupWithDSID:(id)a3 childAge:(id)a4 childName:(id)a5 restrictionsDataSource:(id)a6
{
  v10 = a4;
  v11 = a3;
  v12 = [(STIntroductionController *)self initWithDSID:v11 childAge:v10 childName:a5 updateExistingSettings:0 restrictionsDataSource:a6];
  v12->_isExpressSetup = 1;
  [(STIntroductionController *)v12 _setDefaultIntroductionViewModelForAge:v10 dsid:v11];

  return v12;
}

- (STIntroductionController)initWithNewUserRootViewModelCoordinator:(id)a3
{
  v4 = a3;
  v5 = [v4 viewModel];
  v6 = [v5 me];
  v7 = [v6 dsid];
  v8 = [v6 givenName];
  v9 = [(STIntroductionController *)self initWithDSID:v7 childAge:0 childName:v8 updateExistingSettings:0 restrictionsDataSource:v4];

  v10 = 1;
  v9->_allowParentalControls = 1;
  v9->_forceParentalControls = [v5 forceParentalControls];
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

- (void)presentOverViewController:(id)a3
{
  v4 = a3;
  [(STIntroductionController *)self setIsModalPresentation:1];
  v5 = [(STIntroductionController *)self _viewControllerFollowingViewController:0];
  v6 = [objc_alloc(MEMORY[0x277D37660]) initWithRootViewController:v5];
  v7 = [MEMORY[0x277D75418] currentDevice];
  v8 = [v7 userInterfaceIdiom];

  if (!v8)
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
  [v4 presentViewController:v9 animated:1 completion:v10];
}

- (void)_viewControllerCompleted:(id)a3
{
  v11 = a3;
  if ([(STIntroductionController *)self isExpressSetup]|| ([(STIntroductionController *)self _viewControllerFollowingViewController:v11], (v4 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    if ([(STIntroductionController *)self isModalPresentation])
    {
      v7 = [v11 navigationController];
      [v7 dismissViewControllerAnimated:1 completion:0];
    }

    v8 = [(STIntroductionController *)self completionBlock];

    if (v8)
    {
      v9 = [(STIntroductionController *)self completionBlock];
      v10 = [(STIntroductionController *)self introductionModel];
      (v9)[2](v9, 1, v10);
    }

    [(STIntroductionController *)self setNavigationController:0];
  }

  else
  {
    v5 = v4;
    v6 = [v11 navigationController];
    [v6 pushViewController:v5 animated:1];
  }
}

- (void)_endIntroductionFlowWithoutEnablingScreenTime
{
  if ([(STIntroductionController *)self isModalPresentation])
  {
    v3 = [(STIntroductionController *)self navigationController];
    [v3 dismissViewControllerAnimated:1 completion:0];
  }

  v4 = [(STIntroductionController *)self completionBlock];

  if (v4)
  {
    v5 = [(STIntroductionController *)self completionBlock];
    v5[2](v5, 0, 0);
  }

  [(STIntroductionController *)self setNavigationController:0];
}

- (void)_endIntroductionFlowWithEnablingScreenTime
{
  v3 = [(STIntroductionController *)self completionBlock];

  if (v3)
  {
    v4 = [(STIntroductionController *)self completionBlock];
    v5 = [(STIntroductionController *)self introductionModel];
    (v4)[2](v4, 1, v5);
  }

  [(STIntroductionController *)self setNavigationController:0];
}

- (id)_viewControllerFollowingViewController:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    if ([(STIntroductionController *)self isExpressSetup])
    {
      v6 = [(STIntroductionController *)self introductionModel];
      v7 = [(STIntroductionController *)self childName];
      v8 = [_TtC20ScreenTimeSettingsUI36STIntroductionViewControllersFactory makeIntroductionPasscodeViewControllerWithIntroductionModel:v6 childName:v7 askForRecoveryForAppleID:0 altDSID:0 isChildOrNotSignedIntoiCloud:[(STIntroductionController *)self isChildOrNotSignedIntoiCloud] continueHandler:v5];

      goto LABEL_30;
    }

    if (![(STIntroductionController *)self updateExistingSettings])
    {
      v37[0] = MEMORY[0x277D85DD0];
      v37[1] = 3221225472;
      v37[2] = __67__STIntroductionController__viewControllerFollowingViewController___block_invoke_2;
      v37[3] = &unk_279B7C998;
      v37[4] = self;
      v11 = _Block_copy(v37);
      v12 = [(STIntroductionController *)self childName];
      v8 = [_TtC20ScreenTimeSettingsUI36STIntroductionViewControllersFactory makeIntroductionWelcomeViewControllerWithChildName:v12 forceParentalControls:[(STIntroductionController *)self forceParentalControls] continueHandler:v5 endHandler:v11];
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  if (![_TtC20ScreenTimeSettingsUI36STIntroductionViewControllersFactory isOfTypeWelcomeViewController:v4])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [(STIntroductionController *)self introductionModel];
      v10 = [v9 deviceForChild];

      if (v10)
      {
        goto LABEL_12;
      }

LABEL_28:
      v8 = 0;
      goto LABEL_29;
    }

    if ([_TtC20ScreenTimeSettingsUI36STIntroductionViewControllersFactory isOfTypePresetsViewController:v4])
    {
      if ([(STIntroductionController *)self showCommunicationSafetyPane])
      {
        v11 = [(STIntroductionController *)self introductionModel];
        v15 = [(STIntroductionController *)self childName];
        v16 = [_TtC20ScreenTimeSettingsUI36STIntroductionViewControllersFactory makeIntroductionCommunicationSafetyViewControllerWithIntroductionModel:v11 childName:v15 continueHandler:v5];
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
      if ([_TtC20ScreenTimeSettingsUI36STIntroductionViewControllersFactory isOfTypeCommunicationSafetyViewController:v4])
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
        if (![_TtC20ScreenTimeSettingsUI36STIntroductionViewControllersFactory isOfTypeAppAndWebsiteActivityViewController:v4])
        {
          if ([_TtC20ScreenTimeSettingsUI36STIntroductionViewControllersFactory isOfTypeDowntimeViewController:v4])
          {
            if (![(STIntroductionController *)self skipAppLimitsPane])
            {
              v29 = [STIntroAppLimitsViewController alloc];
              v11 = [(STIntroductionController *)self introductionModel];
              v18 = [(STIntroAppLimitsViewController *)v29 initWithIntroductionModel:v11 continueHandler:v5];
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

          v11 = [(STIntroductionController *)self introductionModel];
          v12 = [(STIntroductionController *)self childName];
          v26 = [(STIntroductionController *)self askForRecoveryAppleID];
          v13 = [(STIntroductionController *)self altDSID];
          v14 = [_TtC20ScreenTimeSettingsUI36STIntroductionViewControllersFactory makeIntroductionPasscodeViewControllerWithIntroductionModel:v11 childName:v12 askForRecoveryForAppleID:v26 altDSID:v13 isChildOrNotSignedIntoiCloud:[(STIntroductionController *)self isChildOrNotSignedIntoiCloud] continueHandler:v5];
          goto LABEL_13;
        }

        v23 = [(STIntroductionController *)self introductionModel];
        v24 = [v23 appAndWebsiteActivityEnabled];
        v25 = [v24 BOOLValue];

        if (v25)
        {
          v11 = [(STIntroductionController *)self introductionModel];
          v18 = [_TtC20ScreenTimeSettingsUI36STIntroductionViewControllersFactory makeIntroductionDowntimeViewControllerWithIntroductionModel:v11 continueHandler:v5];
          goto LABEL_21;
        }

        v11 = [(STIntroductionController *)self introductionModel];
        v15 = [(STIntroductionController *)self childName];
        v27 = [(STIntroductionController *)self askForRecoveryAppleID];
        v28 = [(STIntroductionController *)self altDSID];
        v8 = [_TtC20ScreenTimeSettingsUI36STIntroductionViewControllersFactory makeIntroductionPasscodeViewControllerWithIntroductionModel:v11 childName:v15 askForRecoveryForAppleID:v27 altDSID:v28 isChildOrNotSignedIntoiCloud:[(STIntroductionController *)self isChildOrNotSignedIntoiCloud] continueHandler:v5];

LABEL_38:
        goto LABEL_19;
      }

      if ([(STIntroductionController *)self updateExistingSettings])
      {
        goto LABEL_28;
      }
    }

    v11 = [(STIntroductionController *)self introductionModel];
    v15 = [(STIntroductionController *)self childName];
    v16 = [_TtC20ScreenTimeSettingsUI36STIntroductionViewControllersFactory makeIntroductionAppAndWebsiteActivityViewControllerWithIntroductionModel:v11 childName:v15 continueHandler:v5];
    goto LABEL_37;
  }

  if (![(STIntroductionController *)self allowParentalControls])
  {
    goto LABEL_28;
  }

  if (![(STIntroductionController *)self forceParentalControls])
  {
    v17 = [STIntroIdentityViewController alloc];
    v11 = [(STIntroductionController *)self introductionModel];
    v18 = [(STIntroIdentityViewController *)v17 initWithIntroductionModel:v11 continueHandler:v5];
LABEL_21:
    v8 = v18;
    goto LABEL_19;
  }

LABEL_12:
  v11 = [(STIntroductionController *)self introductionModel];
  v12 = [(STIntroductionController *)self settingsPresetViewModel];
  v13 = [(STIntroductionController *)self childName];
  v14 = [_TtC20ScreenTimeSettingsUI36STIntroductionViewControllersFactory makeIntroPresetsViewControllerWithIntroductionModel:v11 settingsPresetViewModel:v12 name:v13 updateExistingSettings:[(STIntroductionController *)self updateExistingSettings] continueHandler:v5];
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

- (void)_setDefaultIntroductionViewModelForAge:(id)a3 dsid:(id)a4
{
  v6 = a4;
  v12 = a3;
  v7 = [(STIntroductionController *)self introductionModel];
  [v7 setCommunicationSafetyEnabled:&unk_28769D2B0];

  v8 = [(STIntroductionController *)self introductionModel];
  [v8 setScreenDistanceEnabled:&unk_28769D2B0];

  v9 = [(STIntroductionController *)self introductionModel];
  [v9 setAppAndWebsiteActivityEnabled:&unk_28769D2B0];

  v10 = objc_opt_new();
  v11 = [(STIntroductionController *)self introductionModel];
  [v11 setBedtime:v10];

  [(STIntroductionController *)self _setRestrictionsPresetForAge:v12 dsid:v6];
}

- (void)_setRestrictionsPresetForAge:(id)a3 dsid:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (_os_feature_enabled_impl())
  {
    v8 = objc_opt_new();
    v9 = [objc_alloc(MEMORY[0x277D4BA48]) initWithUnrated:0 userDSID:v7];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __62__STIntroductionController__setRestrictionsPresetForAge_dsid___block_invoke;
    v10[3] = &unk_279B7D9B8;
    v10[4] = self;
    v11 = v6;
    [v8 fetchStorefrontWithOptions:v9 completionHandler:v10];
  }

  else
  {
    [(STIntroductionController *)self _setRestrictionsPresetForAge:v6 storefront:0];
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

- (void)_setRestrictionsPresetForAge:(id)a3 storefront:(id)a4
{
  v6 = a3;
  v7 = a4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __68__STIntroductionController__setRestrictionsPresetForAge_storefront___block_invoke;
  aBlock[3] = &unk_279B7D9E0;
  aBlock[4] = self;
  v8 = _Block_copy(aBlock);
  v9 = objc_opt_new();
  v10 = [v6 intValue];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __68__STIntroductionController__setRestrictionsPresetForAge_storefront___block_invoke_2;
  v16[3] = &unk_279B7DA30;
  v11 = v10;
  v17 = v9;
  v18 = v6;
  v19 = v7;
  v20 = v8;
  v12 = v8;
  v13 = v7;
  v14 = v6;
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