@interface SBHWidgetIntroductionFeatureIntroductionItem
- (BOOL)deviceTypeSupportModalWidgetIntroduction;
- (BOOL)overrideShouldAddDefaultWidgetsToHomeScreenWhenNeeded;
- (BOOL)shouldSetupFeatureIntroductionAtLocations:(unint64_t)locations;
- (BOOL)widgetDiscoverabilityServerSideEnabled;
- (SBHIconManager)iconManager;
- (SBHWidgetIntroductionFeatureIntroductionItem)init;
- (id)defaultWidgetsIconsRestoringRecordKeyForIcon:(id)icon;
- (id)prewarmModalWidgetIntroductionWithCompletion:(id)completion;
- (void)animateModalWidgetDiscoverabilityIntroductionWhenNeededWithPresentCompletion:(id)completion dismissCompletion:(id)dismissCompletion;
- (void)displayFeatureIntroductionAtLocations:(unint64_t)locations presentCompletion:(id)completion dismissCompletion:(id)dismissCompletion;
- (void)immediateDownloadSpringBoardHomeTrialSettingsWhenNeeded;
- (void)prewarmModalWidgetIntroductionViewController;
- (void)resetDefaultWidgetsUndoInfo;
- (void)setupFeatureIntroductionAtLocations:(unint64_t)locations;
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
    array = [MEMORY[0x1E695DF70] array];
    defaultWidgetsIconsRestoringRecordOriginalIndex = self->_defaultWidgetsIconsRestoringRecordOriginalIndex;
    self->_defaultWidgetsIconsRestoringRecordOriginalIndex = array;
  }

  defaultWidgetsIconsRestoringRecordOriginalIndex = [(SBHWidgetIntroductionFeatureIntroductionItem *)self defaultWidgetsIconsRestoringRecordOriginalIndex];
  [defaultWidgetsIconsRestoringRecordOriginalIndex removeAllObjects];

  if (!self->_defaultWidgetsBumpedIconUsageRanking)
  {
    array2 = [MEMORY[0x1E695DF70] array];
    defaultWidgetsBumpedIconUsageRanking = self->_defaultWidgetsBumpedIconUsageRanking;
    self->_defaultWidgetsBumpedIconUsageRanking = array2;
  }

  defaultWidgetsBumpedIconUsageRanking = [(SBHWidgetIntroductionFeatureIntroductionItem *)self defaultWidgetsBumpedIconUsageRanking];
  [defaultWidgetsBumpedIconUsageRanking removeAllObjects];

  if (!self->_defaultWidgetsIconsRestoringRecord)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    defaultWidgetsIconsRestoringRecord = self->_defaultWidgetsIconsRestoringRecord;
    self->_defaultWidgetsIconsRestoringRecord = dictionary;
  }

  defaultWidgetsIconsRestoringRecord = [(SBHWidgetIntroductionFeatureIntroductionItem *)self defaultWidgetsIconsRestoringRecord];
  [defaultWidgetsIconsRestoringRecord removeAllObjects];

  v12 = SBLogWidgetDiscoverabilityMigration();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&dword_1BEB18000, v12, OS_LOG_TYPE_DEFAULT, "Clear onboarding widgets record", v13, 2u);
  }
}

- (id)defaultWidgetsIconsRestoringRecordKeyForIcon:(id)icon
{
  iconCopy = icon;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__22;
  v18 = __Block_byref_object_dispose__22;
  v19 = 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    defaultWidgetsIconsRestoringRecord = [(SBHWidgetIntroductionFeatureIntroductionItem *)self defaultWidgetsIconsRestoringRecord];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __93__SBHWidgetIntroductionFeatureIntroductionItem_defaultWidgetsIconsRestoringRecordKeyForIcon___block_invoke;
    v11[3] = &unk_1E808FBD8;
    v12 = iconCopy;
    v13 = &v14;
    [defaultWidgetsIconsRestoringRecord enumerateKeysAndObjectsUsingBlock:v11];

    v6 = v12;
  }

  else
  {
    v7 = v15;
    v8 = iconCopy;
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
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  v4 = (userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) != 1 && SBHScreenTypeForCurrentDevice() != 0;
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
  trialClientManager = [(SBHWidgetIntroductionFeatureIntroductionItem *)self trialClientManager];

  if (trialClientManager)
  {
    trialClientManager2 = [(SBHWidgetIntroductionFeatureIntroductionItem *)self trialClientManager];
    widgetDiscoverabilityGoSwitchEnabled = [trialClientManager2 widgetDiscoverabilityGoSwitchEnabled];
  }

  else
  {
    widgetDiscoverabilityGoSwitchEnabled = 0;
  }

  v6 = SBLogWidgetDiscoverabilityMigration();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134217984;
    v9 = widgetDiscoverabilityGoSwitchEnabled;
    _os_log_impl(&dword_1BEB18000, v6, OS_LOG_TYPE_DEFAULT, "Onboarding server side enabled = %ld", &v8, 0xCu);
  }

  return widgetDiscoverabilityGoSwitchEnabled;
}

- (id)prewarmModalWidgetIntroductionWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = SBLogWidgetDiscoverabilityMigration();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v16 = 0;
    _os_log_impl(&dword_1BEB18000, v5, OS_LOG_TYPE_DEFAULT, "Prewarm modal widget discoverability introduction vc", v16, 2u);
  }

  modalIntroductionViewController = [(SBHWidgetIntroductionFeatureIntroductionItem *)self modalIntroductionViewController];

  if (!modalIntroductionViewController)
  {
    v7 = objc_alloc_init(SBModalWidgetIntroductionViewController);
    [(SBHWidgetIntroductionFeatureIntroductionItem *)self setModalIntroductionViewController:v7];

    modalIntroductionViewController2 = [(SBHWidgetIntroductionFeatureIntroductionItem *)self modalIntroductionViewController];
    [modalIntroductionViewController2 setModalPresentationStyle:5];
  }

  modalIntroductionViewController3 = [(SBHWidgetIntroductionFeatureIntroductionItem *)self modalIntroductionViewController];
  [modalIntroductionViewController3 appendDismissCompletion:completionCopy];

  iconManager = [(SBHWidgetIntroductionFeatureIntroductionItem *)self iconManager];
  captureHomeScreenOnboardingSnapshot = [iconManager captureHomeScreenOnboardingSnapshot];
  [iconManager prepareModalWidgetIntroductionWidgetViewSnapshots];
  modalIntroductionViewController4 = [(SBHWidgetIntroductionFeatureIntroductionItem *)self modalIntroductionViewController];
  [modalIntroductionViewController4 setHomeScreenPreview:captureHomeScreenOnboardingSnapshot];

  modalIntroductionViewController = self->_modalIntroductionViewController;
  v14 = modalIntroductionViewController;

  return modalIntroductionViewController;
}

- (void)animateModalWidgetDiscoverabilityIntroductionWhenNeededWithPresentCompletion:(id)completion dismissCompletion:(id)dismissCompletion
{
  completionCopy = completion;
  dismissCompletionCopy = dismissCompletion;
  iconManager = [(SBHWidgetIntroductionFeatureIntroductionItem *)self iconManager];
  if ([(SBHWidgetIntroductionFeatureIntroductionItem *)self deviceTypeSupportModalWidgetIntroduction]&& ([(SBHWidgetIntroductionFeatureIntroductionItem *)self modalIntroductionViewController], v9 = objc_claimAutoreleasedReturnValue(), v9, v9))
  {
    if (dismissCompletionCopy)
    {
      modalIntroductionViewController = [(SBHWidgetIntroductionFeatureIntroductionItem *)self modalIntroductionViewController];
      [modalIntroductionViewController appendDismissCompletion:dismissCompletionCopy];
    }

    v11 = SBLogWidgetDiscoverabilityMigration();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BEB18000, v11, OS_LOG_TYPE_DEFAULT, "Present modal widget discoverabilit introduction", buf, 2u);
    }

    rootViewController = [iconManager rootViewController];
    modalIntroductionViewController2 = [(SBHWidgetIntroductionFeatureIntroductionItem *)self modalIntroductionViewController];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __143__SBHWidgetIntroductionFeatureIntroductionItem_animateModalWidgetDiscoverabilityIntroductionWhenNeededWithPresentCompletion_dismissCompletion___block_invoke;
    v14[3] = &unk_1E8088D68;
    v14[4] = self;
    v15 = completionCopy;
    [rootViewController presentViewController:modalIntroductionViewController2 animated:0 completion:v14];
  }

  else
  {
    [(SBHWidgetIntroductionFeatureIntroductionItem *)self setModalIntroductionViewController:0];
    [iconManager invalidateOnboardingWidgetPreviewViewControllers];
    [iconManager enableUserInteractionForWidgetDiscoverability];
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
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    return 0;
  }

  homeScreenDefaults = [(SBHWidgetIntroductionFeatureIntroductionItem *)self homeScreenDefaults];
  enableModalWidgetDiscoverabilityForTesting = [homeScreenDefaults enableModalWidgetDiscoverabilityForTesting];

  return enableModalWidgetDiscoverabilityForTesting;
}

- (BOOL)shouldSetupFeatureIntroductionAtLocations:(unint64_t)locations
{
  v17 = *MEMORY[0x1E69E9840];
  if ((locations & 2) == 0)
  {
    return 0;
  }

  homeScreenDefaults = [(SBHWidgetIntroductionFeatureIntroductionItem *)self homeScreenDefaults];
  shouldAddDefaultWidgetsToHomeScreen = [homeScreenDefaults shouldAddDefaultWidgetsToHomeScreen];

  overrideShouldAddDefaultWidgetsToHomeScreenWhenNeeded = [(SBHWidgetIntroductionFeatureIntroductionItem *)self overrideShouldAddDefaultWidgetsToHomeScreenWhenNeeded];
  widgetDiscoverabilityIsRunning = [(SBHWidgetIntroductionFeatureIntroductionItem *)self widgetDiscoverabilityIsRunning];
  if (shouldAddDefaultWidgetsToHomeScreen)
  {
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) != 1 && !overrideShouldAddDefaultWidgetsToHomeScreenWhenNeeded)
    {
LABEL_4:
      v10 = SBLogWidgetDiscoverabilityMigration();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v12[0] = 67109632;
        v12[1] = shouldAddDefaultWidgetsToHomeScreen;
        v13 = 1024;
        v14 = 0;
        v15 = 1024;
        v16 = widgetDiscoverabilityIsRunning;
        _os_log_impl(&dword_1BEB18000, v10, OS_LOG_TYPE_DEFAULT, "Should setup feature introduction userDefault = %d, testingOverride = %d, isRunning = %d.", v12, 0x14u);
      }

      return 0;
    }
  }

  else if (!overrideShouldAddDefaultWidgetsToHomeScreenWhenNeeded)
  {
    goto LABEL_4;
  }

  return !widgetDiscoverabilityIsRunning;
}

- (void)setupFeatureIntroductionAtLocations:(unint64_t)locations
{
  [(SBHWidgetIntroductionFeatureIntroductionItem *)self setWidgetDiscoverabilityIsRunning:1];
  iconManager = [(SBHWidgetIntroductionFeatureIntroductionItem *)self iconManager];
  if ([iconManager addDefaultWidgetsToHomeScreen])
  {
    [iconManager scrollToDefaultWidgets];
    [(SBHWidgetIntroductionFeatureIntroductionItem *)self setShouldDisplayWidgetIntroduction:1];
  }

  else
  {
    [(SBHWidgetIntroductionFeatureIntroductionItem *)self setWidgetDiscoverabilityIsRunning:0];
    [(SBHWidgetIntroductionFeatureIntroductionItem *)self setShouldDisplayWidgetIntroduction:0];
    homeScreenDefaults = [(SBHWidgetIntroductionFeatureIntroductionItem *)self homeScreenDefaults];
    [homeScreenDefaults setShouldAddDefaultWidgetsToHomeScreen:0];
  }
}

- (void)displayFeatureIntroductionAtLocations:(unint64_t)locations presentCompletion:(id)completion dismissCompletion:(id)dismissCompletion
{
  locationsCopy = locations;
  completionCopy = completion;
  dismissCompletionCopy = dismissCompletion;
  if ((locationsCopy & 0xC) != 0)
  {
    iconManager = [(SBHWidgetIntroductionFeatureIntroductionItem *)self iconManager];
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      [iconManager displayPronouncedContainerViewVisibility:-[SBHWidgetIntroductionFeatureIntroductionItem forceShowWidgetIntroduction](self isVertical:{"forceShowWidgetIntroduction"), -[SBHWidgetIntroductionFeatureIntroductionItem isVerticalWidgetIntroduction](self, "isVerticalWidgetIntroduction")}];
      [iconManager enableUserInteractionForWidgetDiscoverability];
      if (completionCopy)
      {
        completionCopy[2](completionCopy);
      }

      if (dismissCompletionCopy)
      {
        dismissCompletionCopy[2](dismissCompletionCopy);
      }
    }

    else
    {
      [(SBHWidgetIntroductionFeatureIntroductionItem *)self prewarmModalWidgetIntroductionViewController];
      [(SBHWidgetIntroductionFeatureIntroductionItem *)self animateModalWidgetDiscoverabilityIntroductionWhenNeededWithPresentCompletion:completionCopy dismissCompletion:dismissCompletionCopy];
      homeScreenDefaults = [(SBHWidgetIntroductionFeatureIntroductionItem *)self homeScreenDefaults];
      [homeScreenDefaults setShouldAddDefaultWidgetsToHomeScreen:0];
    }
  }
}

- (SBHIconManager)iconManager
{
  WeakRetained = objc_loadWeakRetained(&self->_iconManager);

  return WeakRetained;
}

@end