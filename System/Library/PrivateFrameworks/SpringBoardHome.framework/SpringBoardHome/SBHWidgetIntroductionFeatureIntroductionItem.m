@interface SBHWidgetIntroductionFeatureIntroductionItem
- (BOOL)deviceTypeSupportModalWidgetIntroduction;
- (BOOL)overrideShouldAddDefaultWidgetsToHomeScreenWhenNeeded;
- (BOOL)shouldSetupFeatureIntroductionAtLocations:(unint64_t)a3;
- (BOOL)widgetDiscoverabilityServerSideEnabled;
- (SBHIconManager)iconManager;
- (SBHWidgetIntroductionFeatureIntroductionItem)init;
- (id)defaultWidgetsIconsRestoringRecordKeyForIcon:(id)a3;
- (id)prewarmModalWidgetIntroductionWithCompletion:(id)a3;
- (void)animateModalWidgetDiscoverabilityIntroductionWhenNeededWithPresentCompletion:(id)a3 dismissCompletion:(id)a4;
- (void)displayFeatureIntroductionAtLocations:(unint64_t)a3 presentCompletion:(id)a4 dismissCompletion:(id)a5;
- (void)immediateDownloadSpringBoardHomeTrialSettingsWhenNeeded;
- (void)prewarmModalWidgetIntroductionViewController;
- (void)resetDefaultWidgetsUndoInfo;
- (void)setupFeatureIntroductionAtLocations:(unint64_t)a3;
@end

@implementation SBHWidgetIntroductionFeatureIntroductionItem

- (SBHWidgetIntroductionFeatureIntroductionItem)init
{
  v6.receiver = self;
  v6.super_class = SBHWidgetIntroductionFeatureIntroductionItem;
  v2 = [(SBHWidgetIntroductionFeatureIntroductionItem *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E69D4030]);
    homeScreenDefaults = v2->_homeScreenDefaults;
    v2->_homeScreenDefaults = v3;
  }

  return v2;
}

- (void)resetDefaultWidgetsUndoInfo
{
  if (!self->_defaultWidgetsIconsRestoringRecordOriginalIndex)
  {
    v3 = [MEMORY[0x1E695DF70] array];
    defaultWidgetsIconsRestoringRecordOriginalIndex = self->_defaultWidgetsIconsRestoringRecordOriginalIndex;
    self->_defaultWidgetsIconsRestoringRecordOriginalIndex = v3;
  }

  v5 = [(SBHWidgetIntroductionFeatureIntroductionItem *)self defaultWidgetsIconsRestoringRecordOriginalIndex];
  [v5 removeAllObjects];

  if (!self->_defaultWidgetsBumpedIconUsageRanking)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    defaultWidgetsBumpedIconUsageRanking = self->_defaultWidgetsBumpedIconUsageRanking;
    self->_defaultWidgetsBumpedIconUsageRanking = v6;
  }

  v8 = [(SBHWidgetIntroductionFeatureIntroductionItem *)self defaultWidgetsBumpedIconUsageRanking];
  [v8 removeAllObjects];

  if (!self->_defaultWidgetsIconsRestoringRecord)
  {
    v9 = [MEMORY[0x1E695DF90] dictionary];
    defaultWidgetsIconsRestoringRecord = self->_defaultWidgetsIconsRestoringRecord;
    self->_defaultWidgetsIconsRestoringRecord = v9;
  }

  v11 = [(SBHWidgetIntroductionFeatureIntroductionItem *)self defaultWidgetsIconsRestoringRecord];
  [v11 removeAllObjects];

  v12 = SBLogWidgetDiscoverabilityMigration();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&dword_1BEB18000, v12, OS_LOG_TYPE_DEFAULT, "Clear onboarding widgets record", v13, 2u);
  }
}

- (id)defaultWidgetsIconsRestoringRecordKeyForIcon:(id)a3
{
  v4 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__22;
  v18 = __Block_byref_object_dispose__22;
  v19 = 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(SBHWidgetIntroductionFeatureIntroductionItem *)self defaultWidgetsIconsRestoringRecord];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __93__SBHWidgetIntroductionFeatureIntroductionItem_defaultWidgetsIconsRestoringRecordKeyForIcon___block_invoke;
    v11[3] = &unk_1E808FBD8;
    v12 = v4;
    v13 = &v14;
    [v5 enumerateKeysAndObjectsUsingBlock:v11];

    v6 = v12;
  }

  else
  {
    v7 = v15;
    v8 = v4;
    v6 = v7[5];
    v7[5] = v8;
  }

  v9 = v15[5];
  _Block_object_dispose(&v14, 8);

  return v9;
}

void __93__SBHWidgetIntroductionFeatureIntroductionItem_defaultWidgetsIconsRestoringRecordKeyForIcon___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v10 = a2;
  v7 = [v10 uniqueIdentifier];
  v8 = [*(a1 + 32) uniqueIdentifier];
  v9 = [v7 isEqual:v8];

  if (v9)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (BOOL)deviceTypeSupportModalWidgetIntroduction
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69DC938] currentDevice];
  v3 = [v2 userInterfaceIdiom];

  v4 = (v3 & 0xFFFFFFFFFFFFFFFBLL) != 1 && SBHScreenTypeForCurrentDevice() != 0;
  v5 = SBLogWidgetDiscoverabilityMigration();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134217984;
    v8 = v4;
    _os_log_impl(&dword_1BEB18000, v5, OS_LOG_TYPE_DEFAULT, "Device type support onboarding = %ld", &v7, 0xCu);
  }

  return v4;
}

- (void)immediateDownloadSpringBoardHomeTrialSettingsWhenNeeded
{
  if ([(SBHWidgetIntroductionFeatureIntroductionItem *)self deviceTypeSupportModalWidgetIntroduction])
  {
    trialClientManager = self->_trialClientManager;
    if (!trialClientManager)
    {
      v4 = objc_alloc_init(SBHTrialClientManager);
      v5 = self->_trialClientManager;
      self->_trialClientManager = v4;

      trialClientManager = self->_trialClientManager;
    }

    [(SBHTrialClientManager *)trialClientManager immediatelyFetchSpringBoardHomeNamespace];
  }
}

- (BOOL)widgetDiscoverabilityServerSideEnabled
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = [(SBHWidgetIntroductionFeatureIntroductionItem *)self trialClientManager];

  if (v3)
  {
    v4 = [(SBHWidgetIntroductionFeatureIntroductionItem *)self trialClientManager];
    v5 = [v4 widgetDiscoverabilityGoSwitchEnabled];
  }

  else
  {
    v5 = 0;
  }

  v6 = SBLogWidgetDiscoverabilityMigration();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134217984;
    v9 = v5;
    _os_log_impl(&dword_1BEB18000, v6, OS_LOG_TYPE_DEFAULT, "Onboarding server side enabled = %ld", &v8, 0xCu);
  }

  return v5;
}

- (id)prewarmModalWidgetIntroductionWithCompletion:(id)a3
{
  v4 = a3;
  v5 = SBLogWidgetDiscoverabilityMigration();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v16 = 0;
    _os_log_impl(&dword_1BEB18000, v5, OS_LOG_TYPE_DEFAULT, "Prewarm modal widget discoverability introduction vc", v16, 2u);
  }

  v6 = [(SBHWidgetIntroductionFeatureIntroductionItem *)self modalIntroductionViewController];

  if (!v6)
  {
    v7 = objc_alloc_init(SBModalWidgetIntroductionViewController);
    [(SBHWidgetIntroductionFeatureIntroductionItem *)self setModalIntroductionViewController:v7];

    v8 = [(SBHWidgetIntroductionFeatureIntroductionItem *)self modalIntroductionViewController];
    [v8 setModalPresentationStyle:5];
  }

  v9 = [(SBHWidgetIntroductionFeatureIntroductionItem *)self modalIntroductionViewController];
  [v9 appendDismissCompletion:v4];

  v10 = [(SBHWidgetIntroductionFeatureIntroductionItem *)self iconManager];
  v11 = [v10 captureHomeScreenOnboardingSnapshot];
  [v10 prepareModalWidgetIntroductionWidgetViewSnapshots];
  v12 = [(SBHWidgetIntroductionFeatureIntroductionItem *)self modalIntroductionViewController];
  [v12 setHomeScreenPreview:v11];

  modalIntroductionViewController = self->_modalIntroductionViewController;
  v14 = modalIntroductionViewController;

  return modalIntroductionViewController;
}

- (void)animateModalWidgetDiscoverabilityIntroductionWhenNeededWithPresentCompletion:(id)a3 dismissCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SBHWidgetIntroductionFeatureIntroductionItem *)self iconManager];
  if ([(SBHWidgetIntroductionFeatureIntroductionItem *)self deviceTypeSupportModalWidgetIntroduction]&& ([(SBHWidgetIntroductionFeatureIntroductionItem *)self modalIntroductionViewController], v9 = objc_claimAutoreleasedReturnValue(), v9, v9))
  {
    if (v7)
    {
      v10 = [(SBHWidgetIntroductionFeatureIntroductionItem *)self modalIntroductionViewController];
      [v10 appendDismissCompletion:v7];
    }

    v11 = SBLogWidgetDiscoverabilityMigration();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BEB18000, v11, OS_LOG_TYPE_DEFAULT, "Present modal widget discoverabilit introduction", buf, 2u);
    }

    v12 = [v8 rootViewController];
    v13 = [(SBHWidgetIntroductionFeatureIntroductionItem *)self modalIntroductionViewController];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __143__SBHWidgetIntroductionFeatureIntroductionItem_animateModalWidgetDiscoverabilityIntroductionWhenNeededWithPresentCompletion_dismissCompletion___block_invoke;
    v14[3] = &unk_1E8088D68;
    v14[4] = self;
    v15 = v6;
    [v12 presentViewController:v13 animated:0 completion:v14];
  }

  else
  {
    [(SBHWidgetIntroductionFeatureIntroductionItem *)self setModalIntroductionViewController:0];
    [v8 invalidateOnboardingWidgetPreviewViewControllers];
    [v8 enableUserInteractionForWidgetDiscoverability];
  }
}

uint64_t __143__SBHWidgetIntroductionFeatureIntroductionItem_animateModalWidgetDiscoverabilityIntroductionWhenNeededWithPresentCompletion_dismissCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) modalIntroductionViewController];
  [v2 displayPreviewAndButton];

  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

- (void)prewarmModalWidgetIntroductionViewController
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __92__SBHWidgetIntroductionFeatureIntroductionItem_prewarmModalWidgetIntroductionViewController__block_invoke;
  v3[3] = &unk_1E8088C90;
  v3[4] = self;
  v2 = [(SBHWidgetIntroductionFeatureIntroductionItem *)self prewarmModalWidgetIntroductionWithCompletion:v3];
}

void __92__SBHWidgetIntroductionFeatureIntroductionItem_prewarmModalWidgetIntroductionViewController__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) iconManager];
  [v2 displayPronouncedContainerViewVisibility:1 isVertical:0];
  [*(a1 + 32) setModalIntroductionViewController:0];
  [v2 invalidateOnboardingWidgetPreviewViewControllers];
}

- (BOOL)overrideShouldAddDefaultWidgetsToHomeScreenWhenNeeded
{
  v3 = [MEMORY[0x1E69DC938] currentDevice];
  v4 = [v3 userInterfaceIdiom];

  if ((v4 & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    return 0;
  }

  v5 = [(SBHWidgetIntroductionFeatureIntroductionItem *)self homeScreenDefaults];
  v6 = [v5 enableModalWidgetDiscoverabilityForTesting];

  return v6;
}

- (BOOL)shouldSetupFeatureIntroductionAtLocations:(unint64_t)a3
{
  v17 = *MEMORY[0x1E69E9840];
  if ((a3 & 2) == 0)
  {
    return 0;
  }

  v4 = [(SBHWidgetIntroductionFeatureIntroductionItem *)self homeScreenDefaults];
  v5 = [v4 shouldAddDefaultWidgetsToHomeScreen];

  v6 = [(SBHWidgetIntroductionFeatureIntroductionItem *)self overrideShouldAddDefaultWidgetsToHomeScreenWhenNeeded];
  v7 = [(SBHWidgetIntroductionFeatureIntroductionItem *)self widgetDiscoverabilityIsRunning];
  if (v5)
  {
    v8 = [MEMORY[0x1E69DC938] currentDevice];
    v9 = [v8 userInterfaceIdiom];

    if ((v9 & 0xFFFFFFFFFFFFFFFBLL) != 1 && !v6)
    {
LABEL_4:
      v10 = SBLogWidgetDiscoverabilityMigration();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v12[0] = 67109632;
        v12[1] = v5;
        v13 = 1024;
        v14 = 0;
        v15 = 1024;
        v16 = v7;
        _os_log_impl(&dword_1BEB18000, v10, OS_LOG_TYPE_DEFAULT, "Should setup feature introduction userDefault = %d, testingOverride = %d, isRunning = %d.", v12, 0x14u);
      }

      return 0;
    }
  }

  else if (!v6)
  {
    goto LABEL_4;
  }

  return !v7;
}

- (void)setupFeatureIntroductionAtLocations:(unint64_t)a3
{
  [(SBHWidgetIntroductionFeatureIntroductionItem *)self setWidgetDiscoverabilityIsRunning:1];
  v5 = [(SBHWidgetIntroductionFeatureIntroductionItem *)self iconManager];
  if ([v5 addDefaultWidgetsToHomeScreen])
  {
    [v5 scrollToDefaultWidgets];
    [(SBHWidgetIntroductionFeatureIntroductionItem *)self setShouldDisplayWidgetIntroduction:1];
  }

  else
  {
    [(SBHWidgetIntroductionFeatureIntroductionItem *)self setWidgetDiscoverabilityIsRunning:0];
    [(SBHWidgetIntroductionFeatureIntroductionItem *)self setShouldDisplayWidgetIntroduction:0];
    v4 = [(SBHWidgetIntroductionFeatureIntroductionItem *)self homeScreenDefaults];
    [v4 setShouldAddDefaultWidgetsToHomeScreen:0];
  }
}

- (void)displayFeatureIntroductionAtLocations:(unint64_t)a3 presentCompletion:(id)a4 dismissCompletion:(id)a5
{
  v6 = a3;
  v13 = a4;
  v8 = a5;
  if ((v6 & 0xC) != 0)
  {
    v9 = [(SBHWidgetIntroductionFeatureIntroductionItem *)self iconManager];
    v10 = [MEMORY[0x1E69DC938] currentDevice];
    v11 = [v10 userInterfaceIdiom];

    if ((v11 & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      [v9 displayPronouncedContainerViewVisibility:-[SBHWidgetIntroductionFeatureIntroductionItem forceShowWidgetIntroduction](self isVertical:{"forceShowWidgetIntroduction"), -[SBHWidgetIntroductionFeatureIntroductionItem isVerticalWidgetIntroduction](self, "isVerticalWidgetIntroduction")}];
      [v9 enableUserInteractionForWidgetDiscoverability];
      if (v13)
      {
        v13[2](v13);
      }

      if (v8)
      {
        v8[2](v8);
      }
    }

    else
    {
      [(SBHWidgetIntroductionFeatureIntroductionItem *)self prewarmModalWidgetIntroductionViewController];
      [(SBHWidgetIntroductionFeatureIntroductionItem *)self animateModalWidgetDiscoverabilityIntroductionWhenNeededWithPresentCompletion:v13 dismissCompletion:v8];
      v12 = [(SBHWidgetIntroductionFeatureIntroductionItem *)self homeScreenDefaults];
      [v12 setShouldAddDefaultWidgetsToHomeScreen:0];
    }
  }
}

- (SBHIconManager)iconManager
{
  WeakRetained = objc_loadWeakRetained(&self->_iconManager);

  return WeakRetained;
}

@end