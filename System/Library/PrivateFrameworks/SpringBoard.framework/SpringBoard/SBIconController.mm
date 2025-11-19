@interface SBIconController
+ (SBHIconRepository)sharedIconRepository;
+ (SBIconController)sharedInstance;
+ (id)sharedInstanceIfExists;
- (APSubjectMonitorSubscription)appProtectionSubjectMonitorSubscription;
- (BOOL)_allowsBadgingForApplicationBundleIdentifier:(id)a3;
- (BOOL)_enableWidgetSuggestionsForIconsInModel:(id)a3 withRootFolder:(id)a4;
- (BOOL)_isWidgetWithContainerBundleIdentifierValid:(id)a3;
- (BOOL)_tryToPrepareNonDynamicDefaultTodayLayout;
- (BOOL)allowsBadgingForIcon:(id)a3;
- (BOOL)canSaveIconState;
- (BOOL)importIconState:(id)a3;
- (BOOL)isEnterpriseMultiUser;
- (BOOL)isHideSupportedForIcon:(id)a3 inLocation:(id)a4;
- (BOOL)isIconVisibleForBundleIdentifier:(id)a3;
- (BOOL)isTodayOverlayPresented;
- (BOOL)isUninstallOrHideSupportedForIcon:(id)a3 inLocation:(id)a4;
- (BOOL)isUninstallSupportedForAnyIcon;
- (BOOL)isUninstallSupportedForIcon:(id)a3;
- (BOOL)resetCategories;
- (BOOL)resetHomeScreenLayout;
- (BOOL)shouldAddNewIconsToRootFolder;
- (SBHIconImageCache)appSwitcherHeaderIconImageCache;
- (SBHIconImageCache)notificationIconImageCache;
- (SBHIconImageCache)tableUIIconImageCache;
- (SBIconController)initWithWindowScene:(id)a3;
- (SBTodayViewController)coverSheetTodayViewController;
- (SBWidgetMetricsServer)widgetMetricsServer;
- (SBWindowScene)windowScene;
- (id)_addStateCaptureHandlerForInterestingAppIconLocations;
- (id)_addStateCaptureHandlerForKeyDisplayIDsWithBadgingEnabled;
- (id)_addStateCaptureHandlerForRestrictions;
- (id)_createWidgetIconWithDataSource:(id)a3 gridSize:(id)a4;
- (id)_createWidgetIconWithDescriptors:(id)a3 gridSize:(id)a4;
- (id)_createWidgetIconWithKind:(id)a3 extensionBundleIdentifier:(id)a4 gridSize:(id)a5;
- (id)_currentFolderController;
- (id)_featureIntroductionItemForWidgetSetupAtLocation:(unint64_t)a3;
- (id)_focusModeFromDoNotDisturbState:(id)a3;
- (id)_mainDisplayHomeScreenController;
- (id)analyticsClient;
- (id)applicationController;
- (id)applicationPlaceholderController;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)displayIDsWithBadgingEnabled;
- (id)externalDisplaySceneManager;
- (id)folderNameForDisplayID:(id)a3;
- (id)iconPathForIconWithDisplayID:(id)a3;
- (id)libraryCategoryMapProvider;
- (id)lockScreenManager;
- (id)mainDisplaySceneManager;
- (id)mainDisplayWindowScene;
- (id)policyAggregator;
- (id)proactiveHomeScreenUsageObserver:(id)a3 intentForWidget:(id)a4 ofIcon:(id)a5;
- (id)proactiveOnboardingDefaultStacks;
- (id)succinctDescription;
- (id)widgetMetricsProvider:(id)a3 listLayoutProviderForScreenType:(unint64_t)a4;
- (unint64_t)_foldersInList:(id)a3;
- (void)_addSmartStackToTodayList:(id)a3 completionHandler:(id)a4;
- (void)_applicationIconDataSourceDidChange:(id)a3;
- (void)_backupRestoringDidChange:(id)a3;
- (void)_bookmarkDidUninstall:(id)a3;
- (void)_iconModel:(id)a3 wantsToRevealAnyApplicationFromIdentifiers:(id)a4;
- (void)_iconModelInstalledAppsDidChange:(id)a3;
- (void)_installedAppsDidChange:(id)a3;
- (void)_mutateIconListsForInstalledAppsDidChangeWithController:(id)a3 added:(id)a4 modified:(id)a5 removed:(id)a6;
- (void)_obtainSmartStackForWidgetDiscoverabilityWithCompletionHandler:(id)a3;
- (void)_prepareDefaultTodayLayoutIfNecessary;
- (void)_registerAnalytics;
- (void)_rootFolderDidChange;
- (void)_setupWidgetIntroductionIfNecessary;
- (void)_tryToPrepareDynamicDefaultTodayLayout;
- (void)_updateDefaultFirstPageWidgetDescriptors:(id)a3 withSizeClass:(id)a4 andGridCellInfoOptions:(unint64_t)a5;
- (void)_updateEnabledBadgesSetWithSections:(id)a3;
- (void)_updateFocusModeManagerWithDoNotDisturbState:(id)a3;
- (void)_updateIconModelStore;
- (void)_updateUninstallingSystemAppsRestricted;
- (void)addIconControllerObserver:(id)a3;
- (void)appProtectionSubjectsChanged:(id)a3 forSubscription:(id)a4;
- (void)applicationRestrictionController:(id)a3 didUpdateVisibleTags:(id)a4 hiddenTags:(id)a5;
- (void)applicationRestrictionControllerDidPostAppVisibilityUpdate:(id)a3;
- (void)applicationRestrictionControllerWillPostAppVisibilityUpdate:(id)a3;
- (void)configureIconManager:(id)a3;
- (void)dealloc;
- (void)deleteAllWebClips;
- (void)didSaveIconState;
- (void)libraryCategoryMapProvider;
- (void)modeConfigurationService:(id)a3 didReceiveAvailableModesUpdate:(id)a4;
- (void)observer:(id)a3 noteServerConnectionStateChanged:(BOOL)a4;
- (void)observer:(id)a3 updateSectionInfo:(id)a4;
- (void)obtainProactiveSecondPageWidgetSuggestion;
- (void)proactiveHomeScreenSuggestionProviderDidUpdatePrediction:(id)a3;
- (void)profileConnectionDidReceiveEffectiveSettingsChangedNotification:(id)a3 userInfo:(id)a4;
- (void)profileConnectionDidReceiveProfileListChangedNotification:(id)a3 userInfo:(id)a4;
- (void)removeIconControllerObserver:(id)a3;
- (void)runWidgetDiscoverabilityTest;
- (void)setModel:(id)a3;
- (void)stateService:(id)a3 didReceiveDoNotDisturbStateUpdate:(id)a4;
- (void)updateRootFolderWithCurrentDoNotDisturbState;
@end

@implementation SBIconController

- (SBHIconImageCache)appSwitcherHeaderIconImageCache
{
  appSwitcherHeaderIconImageCache = self->_appSwitcherHeaderIconImageCache;
  if (!appSwitcherHeaderIconImageCache)
  {
    v4 = +[SBAppSwitcherModel appSwitcherHeaderIconImageDescriptorName];
    if ([v4 isEqualToString:*MEMORY[0x277D1B240]])
    {
      v5 = [(SBIconController *)self tableUIIconImageCache];
      v6 = self->_appSwitcherHeaderIconImageCache;
      self->_appSwitcherHeaderIconImageCache = v5;
    }

    else
    {
      v6 = [MEMORY[0x277D1B1C8] imageDescriptorNamed:v4];
      [v6 size];
      v8 = v7;
      v10 = v9;
      [v6 scale];
      v12 = v11;
      [v6 continuousCornerRadius];
      v14 = [objc_alloc(MEMORY[0x277D661D0]) initWithName:@"appSwitcherHeaderIcon" iconImageInfo:{v8, v10, v12, v13}];
      v15 = self->_appSwitcherHeaderIconImageCache;
      self->_appSwitcherHeaderIconImageCache = v14;
    }

    appSwitcherHeaderIconImageCache = self->_appSwitcherHeaderIconImageCache;
  }

  return appSwitcherHeaderIconImageCache;
}

- (id)displayIDsWithBadgingEnabled
{
  v2 = [(NSMutableSet *)self->_displayIDsWithBadgingEnabled copy];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = [MEMORY[0x277CBEB98] set];
  }

  v5 = v4;

  return v5;
}

- (BOOL)isUninstallSupportedForAnyIcon
{
  if ([(SBIconController *)self allowsUninstall])
  {
    if ([MEMORY[0x277D75128] isRunningInStoreDemoMode])
    {
      v2 = +[SBDefaults externalDefaults];
      v3 = [v2 demoDefaults];
      v4 = [v3 shouldLockIconsInStoreDemoMode];

      v5 = v4 ^ 1;
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

- (SBIconController)initWithWindowScene:(id)a3
{
  v4 = a3;
  v92.receiver = self;
  v92.super_class = SBIconController;
  v5 = [(SBIconController *)&v92 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_windowScene, v4);
    v7 = objc_alloc_init(SBPowerLogMetricsAggregator);
    powerLogAggregator = v6->_powerLogAggregator;
    v6->_powerLogAggregator = v7;

    SerialWithQoS = BSDispatchQueueCreateSerialWithQoS();
    accountStoreQueue = v6->_accountStoreQueue;
    v6->_accountStoreQueue = SerialWithQoS;

    [MEMORY[0x277D660A8] setSignificantTimeChangeNotificationName:@"SBSignificantTimeChangedNotification"];
    v11 = [(SBIconController *)v6 applicationController];
    v12 = [v11 restrictionController];

    [v12 beginPostingChanges];
    v76 = v12;
    [v12 addObserver:v6];
    [(SBIconController *)v6 _updateIconModelStore];
    if ([(SBIconController *)v6 isUpgradeRestore]&& ![(SBIconController *)v6 isEnterpriseMultiUser])
    {
      v15 = [(SBIconController *)v6 proactiveOnboardingDefaultStacks];
      suggestedOnboardingStack = v6->_suggestedOnboardingStack;
      v6->_suggestedOnboardingStack = v15;
    }

    else
    {
      suggestedOnboardingStack = +[SBDefaults localDefaults];
      v14 = [suggestedOnboardingStack homeScreenDefaults];
      [v14 setShouldAddDefaultWidgetsToHomeScreen:0];
    }

    v6->_sendITunesNotification = 1;
    v16 = [SBApp accountStoreController];
    v17 = [MEMORY[0x277CCAB98] defaultCenter];
    [v17 addObserver:v6 selector:sel__installedAppsDidChange_ name:@"SBInstalledApplicationsDidChangeNotification" object:0];
    [v17 addObserver:v6 selector:sel__applicationIconDataSourceDidChange_ name:@"SBApplicationIconDataSourceDidChangeNotification" object:0];
    [v17 addObserver:v6 selector:sel__primaryAppleAccountDidChange_ name:@"SBAccountStoreManagerPrimaryAppleAccountDidChangeNotification" object:v16];
    [v17 addObserver:v6 selector:sel__storeAccountDidChange_ name:*MEMORY[0x277CB8DB8] object:0];
    v18 = +[SBSyncController sharedInstance];
    [v17 addObserver:v6 selector:sel__backupRestoringDidChange_ name:@"SBResetOrRestoreStateDidChangeNotification" object:v18];

    [v17 addObserver:v6 selector:sel__bookmarkDidUninstall_ name:*MEMORY[0x277D66750] object:0];
    v19 = objc_alloc_init(MEMORY[0x277D661E8]);
    iconManager = v6->_iconManager;
    v6->_iconManager = v19;

    [(SBHIconManager *)v6->_iconManager setOwnsIconModel:1];
    [(SBIconController *)v6 configureIconManager:v6->_iconManager];
    v21 = +[SBDefaults localDefaults];
    v22 = [v21 notificationDefaults];
    v23 = [v22 displayIDsWithBadgingEnabled];

    if ([v23 count])
    {
      v24 = [objc_alloc(MEMORY[0x277CBEB58]) initWithArray:v23];
      displayIDsWithBadgingEnabled = v6->_displayIDsWithBadgingEnabled;
      v6->_displayIDsWithBadgingEnabled = v24;
    }

    Serial = BSDispatchQueueCreateSerial();
    v27 = objc_alloc(MEMORY[0x277CF3550]);
    v28 = [v27 initWithQueue:Serial calloutQueue:MEMORY[0x277D85CD0]];
    bbObserver = v6->_bbObserver;
    v6->_bbObserver = v28;

    [(BBObserver *)v6->_bbObserver setDelegate:v6];
    [(BBObserver *)v6->_bbObserver setObserverFeed:512];
    v30 = [MEMORY[0x277D262A0] sharedConnection];
    [v30 registerObserver:v6];
    [(SBIconController *)v6 profileConnectionDidReceiveEffectiveSettingsChangedNotification:v30 userInfo:0];
    [(SBIconController *)v6 _updateUninstallingSystemAppsRestricted];
    v31 = [(SBIconController *)v6 widgetMetricsServer];
    widgetMetricsServer = v6->_widgetMetricsServer;
    v6->_widgetMetricsServer = v31;

    [(SBHIconModel *)v6->_iconModel setPostsDidAddIconNotification:1];
    [(SBIconController *)v6 _registerAnalytics];
    v33 = [SBProactiveHomeScreenUsageObserver alloc];
    v34 = [(SBIconController *)v6 iconManager];
    v35 = [(SBProactiveHomeScreenUsageObserver *)v33 initWithIconManager:v34];
    proactiveUsageObserver = v6->_proactiveUsageObserver;
    v6->_proactiveUsageObserver = v35;

    [(SBProactiveHomeScreenUsageObserver *)v6->_proactiveUsageObserver setDelegate:v6];
    v37 = [SBProactiveHomeScreenSuggestionProvider alloc];
    v38 = [(SBIconController *)v6 iconManager];
    v39 = [(SBProactiveHomeScreenSuggestionProvider *)v37 initWithIconManager:v38];
    proactiveSuggestionProvider = v6->_proactiveSuggestionProvider;
    v6->_proactiveSuggestionProvider = v39;

    [(SBProactiveHomeScreenSuggestionProvider *)v6->_proactiveSuggestionProvider addObserver:v6];
    objc_initWeak(&location, v6);
    v41 = MEMORY[0x277D43280];
    v89[0] = MEMORY[0x277D85DD0];
    v89[1] = 3221225472;
    v89[2] = __40__SBIconController_initWithWindowScene___block_invoke;
    v89[3] = &unk_2783A8C68;
    objc_copyWeak(&v90, &location);
    v42 = [v41 recipeWithTitle:@"Relayout Home Screen" prepareBlock:0 action:v89 cleanupBlock:0];
    relayoutTestRecipe = v6->_relayoutTestRecipe;
    v6->_relayoutTestRecipe = v42;

    [MEMORY[0x277D661A0] registerTestRecipe:v6->_relayoutTestRecipe];
    v44 = [MEMORY[0x277D43280] recipeWithTitle:@"Toggle Search" prepareBlock:0 action:&__block_literal_global_69 cleanupBlock:0];
    toggleSearchTestRecipe = v6->_toggleSearchTestRecipe;
    v6->_toggleSearchTestRecipe = v44;

    [MEMORY[0x277D661A0] registerTestRecipe:v6->_toggleSearchTestRecipe];
    v46 = MEMORY[0x277D43280];
    v87[0] = MEMORY[0x277D85DD0];
    v87[1] = 3221225472;
    v87[2] = __40__SBIconController_initWithWindowScene___block_invoke_3;
    v87[3] = &unk_2783A8C68;
    objc_copyWeak(&v88, &location);
    v47 = [v46 recipeWithTitle:@"Run Downloading Icon Test" action:v87];
    runDownloadingIconTestRecipe = v6->_runDownloadingIconTestRecipe;
    v6->_runDownloadingIconTestRecipe = v47;

    [MEMORY[0x277D661A0] registerTestRecipe:v6->_runDownloadingIconTestRecipe];
    v49 = MEMORY[0x277D43280];
    v85[0] = MEMORY[0x277D85DD0];
    v85[1] = 3221225472;
    v85[2] = __40__SBIconController_initWithWindowScene___block_invoke_4;
    v85[3] = &unk_2783A8C68;
    objc_copyWeak(&v86, &location);
    v50 = [v49 recipeWithTitle:@"Run Remove/Restore Icon Test" action:v85];
    runRemoveAndRestoreIconTestRecipe = v6->_runRemoveAndRestoreIconTestRecipe;
    v6->_runRemoveAndRestoreIconTestRecipe = v50;

    [MEMORY[0x277D661A0] registerTestRecipe:v6->_runRemoveAndRestoreIconTestRecipe];
    v52 = MEMORY[0x277D43280];
    v83[0] = MEMORY[0x277D85DD0];
    v83[1] = 3221225472;
    v83[2] = __40__SBIconController_initWithWindowScene___block_invoke_5;
    v83[3] = &unk_2783A8C68;
    objc_copyWeak(&v84, &location);
    v53 = [v52 recipeWithTitle:@"Organize Icons in Folders" action:v83];
    organizeInFoldersTestRecipe = v6->_organizeInFoldersTestRecipe;
    v6->_organizeInFoldersTestRecipe = v53;

    [MEMORY[0x277D661A0] registerTestRecipe:v6->_organizeInFoldersTestRecipe];
    v55 = MEMORY[0x277D431C8];
    v81[0] = MEMORY[0x277D85DD0];
    v81[1] = 3221225472;
    v81[2] = __40__SBIconController_initWithWindowScene___block_invoke_6;
    v81[3] = &unk_2783A8C68;
    objc_copyWeak(&v82, &location);
    v79[0] = MEMORY[0x277D85DD0];
    v79[1] = 3221225472;
    v79[2] = __40__SBIconController_initWithWindowScene___block_invoke_7;
    v79[3] = &unk_2783A8C68;
    objc_copyWeak(&v80, &location);
    v56 = [v55 recipeWithTitle:@"Shuffle Stack / Toggle Suggestion" prepareBlock:0 increaseAction:v81 decreaseAction:v79 cleanupBlock:0];
    shuffleStackTestRecipe = v6->_shuffleStackTestRecipe;
    v6->_shuffleStackTestRecipe = v56;

    [MEMORY[0x277D661A0] registerTestRecipe:v6->_shuffleStackTestRecipe];
    v58 = MEMORY[0x277D43280];
    v77[0] = MEMORY[0x277D85DD0];
    v77[1] = 3221225472;
    v77[2] = __40__SBIconController_initWithWindowScene___block_invoke_8;
    v77[3] = &unk_2783A8C68;
    objc_copyWeak(&v78, &location);
    v59 = [v58 recipeWithTitle:@"Run Widget Discoverability Test" action:v77];
    runWidgetDiscoverabilityTestRecipe = v6->_runWidgetDiscoverabilityTestRecipe;
    v6->_runWidgetDiscoverabilityTestRecipe = v59;

    [MEMORY[0x277D661A0] registerTestRecipe:v6->_runWidgetDiscoverabilityTestRecipe];
    v61 = [(SBIconController *)v6 _addStateCaptureHandlerForKeyDisplayIDsWithBadgingEnabled];
    stateCaptureHandlerForKeyDisplayIDsWithBadgingEnabled = v6->_stateCaptureHandlerForKeyDisplayIDsWithBadgingEnabled;
    v6->_stateCaptureHandlerForKeyDisplayIDsWithBadgingEnabled = v61;

    v63 = [(SBIconController *)v6 _addStateCaptureHandlerForHomeScreenDefaults];
    stateCaptureHandleForHomeScreenDefaults = v6->_stateCaptureHandleForHomeScreenDefaults;
    v6->_stateCaptureHandleForHomeScreenDefaults = v63;

    v65 = [(SBIconController *)v6 _addStateCaptureHandlerForInterestingAppIconLocations];
    stateCaptureHandleForInterestingAppIconLocations = v6->_stateCaptureHandleForInterestingAppIconLocations;
    v6->_stateCaptureHandleForInterestingAppIconLocations = v65;

    v67 = [(SBIconController *)v6 _addStateCaptureHandlerForRestrictions];
    stateCaptureHandleForRestrictions = v6->_stateCaptureHandleForRestrictions;
    v6->_stateCaptureHandleForRestrictions = v67;

    v69 = [MEMORY[0x277D05AB0] serviceForClientIdentifier:@"com.apple.springboard.SBIconController"];
    dndStateService = v6->_dndStateService;
    v6->_dndStateService = v69;

    [(DNDStateService *)v6->_dndStateService addStateUpdateListener:v6 withCompletionHandler:0];
    [(SBIconController *)v6 updateRootFolderWithCurrentDoNotDisturbState];
    v71 = [MEMORY[0x277D059C8] serviceForClientIdentifier:@"com.apple.springboard.SBIconController"];
    dndModeConfigurationService = v6->_dndModeConfigurationService;
    v6->_dndModeConfigurationService = v71;

    [(DNDModeConfigurationService *)v6->_dndModeConfigurationService addListener:v6 withCompletionHandler:0];
    v73 = [MEMORY[0x277CEBEB8] subjectMonitorRegistry];
    v74 = [v73 addMonitor:v6 subjectMask:1 subscriptionOptions:1];
    objc_storeWeak(&v6->_appProtectionSubjectMonitorSubscription, v74);

    objc_destroyWeak(&v78);
    objc_destroyWeak(&v80);
    objc_destroyWeak(&v82);
    objc_destroyWeak(&v84);
    objc_destroyWeak(&v86);
    objc_destroyWeak(&v88);
    objc_destroyWeak(&v90);
    objc_destroyWeak(&location);
  }

  return v6;
}

void __40__SBIconController_initWithWindowScene___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained iconManager];
  [v1 relayout];
}

void __40__SBIconController_initWithWindowScene___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained iconManager];
  [v1 runDownloadingIconTest];
}

void __40__SBIconController_initWithWindowScene___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained iconManager];
  [v1 runRemoveAndRestoreIconTest];
}

void __40__SBIconController_initWithWindowScene___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained iconManager];
  [v1 organizeAllIconsIntoFoldersWithPageCount:2];
}

void __40__SBIconController_initWithWindowScene___block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained iconManager];
  [v1 shuffleWidgetStackForTestRecipe];
}

void __40__SBIconController_initWithWindowScene___block_invoke_7(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained iconManager];
  [v1 toggleSuggestedWidgetInStackForTestRecipe];
}

void __40__SBIconController_initWithWindowScene___block_invoke_8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained runWidgetDiscoverabilityTest];
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4 = [(SBIconController *)self applicationController];
  v5 = [v4 restrictionController];
  [v5 removeObserver:self];

  v6 = [MEMORY[0x277D262A0] sharedConnection];
  [v6 unregisterObserver:self];

  [(BBObserver *)self->_bbObserver invalidate];
  [(BSInvalidatable *)self->_stateCaptureHandlerForKeyDisplayIDsWithBadgingEnabled invalidate];
  [(BSInvalidatable *)self->_stateCaptureHandleForHomeScreenDefaults invalidate];
  [(BSInvalidatable *)self->_stateCaptureHandleForInterestingAppIconLocations invalidate];
  [(BSInvalidatable *)self->_stateCaptureHandleForRestrictions invalidate];
  WeakRetained = objc_loadWeakRetained(&self->_appProtectionSubjectMonitorSubscription);
  [WeakRetained invalidate];

  v8.receiver = self;
  v8.super_class = SBIconController;
  [(SBIconController *)&v8 dealloc];
}

- (id)analyticsClient
{
  override_analyticsClient = self->_override_analyticsClient;
  if (override_analyticsClient)
  {
    v3 = override_analyticsClient;
  }

  else
  {
    v3 = [MEMORY[0x277D65DD0] sharedInstance];
  }

  return v3;
}

- (id)applicationController
{
  override_applicationController = self->_override_applicationController;
  if (override_applicationController)
  {
    v3 = override_applicationController;
  }

  else
  {
    v3 = +[SBApplicationController sharedInstance];
  }

  return v3;
}

- (id)applicationPlaceholderController
{
  override_applicationPlaceholderController = self->_override_applicationPlaceholderController;
  if (override_applicationPlaceholderController)
  {
    v3 = override_applicationPlaceholderController;
  }

  else
  {
    v3 = +[SBApplicationPlaceholderController sharedInstance];
  }

  return v3;
}

- (id)lockScreenManager
{
  override_lockScreenManager = self->_override_lockScreenManager;
  if (override_lockScreenManager)
  {
    v3 = override_lockScreenManager;
  }

  else
  {
    v3 = +[SBLockScreenManager sharedInstance];
  }

  return v3;
}

- (SBWidgetMetricsServer)widgetMetricsServer
{
  override_widgetMetricsServer = self->_override_widgetMetricsServer;
  if (override_widgetMetricsServer || (override_widgetMetricsServer = self->_widgetMetricsServer) != 0)
  {
    v4 = override_widgetMetricsServer;
  }

  else
  {
    v6 = [(SBIconController *)self iconManager];
    v7 = [v6 widgetMetricsProvider];
    v8 = [(SBIconController *)self lockScreenManager];
    v9 = [v8 lockScreenEnvironment];
    v10 = [v9 widgetMetricsProvider];
    v11 = objc_alloc_init(MEMORY[0x277CEA608]);
    [(SBIconController *)self setAmbientListLayoutProvider:v11];
    v12 = objc_alloc_init(MEMORY[0x277D66340]);
    [v12 setDelegate:self];
    [(SBIconController *)self setAmbientWidgetMetricsProvider:v12];
    v4 = [[SBWidgetMetricsServer alloc] initWithSystemMetricsProvider:v7 lockScreenMetricsProvider:v10 ambientMetricsProvider:v12];
  }

  return v4;
}

- (id)widgetMetricsProvider:(id)a3 listLayoutProviderForScreenType:(unint64_t)a4
{
  v4 = [objc_alloc(MEMORY[0x277CEA608]) initWithScreenType:a4];

  return v4;
}

- (id)mainDisplayWindowScene
{
  v2 = [SBApp windowSceneManager];
  v3 = [v2 embeddedDisplayWindowScene];

  return v3;
}

- (id)mainDisplaySceneManager
{
  v3 = objc_opt_class();
  v4 = [(SBIconController *)self mainDisplayWindowScene];
  v5 = [v4 sceneManager];
  v6 = SBSafeCast(v3, v5);

  return v6;
}

- (id)externalDisplaySceneManager
{
  v3 = objc_opt_class();
  v4 = [(SBIconController *)self mainDisplayWindowScene];
  v5 = [v4 sceneManager];
  v6 = SBSafeCast(v3, v5);

  return v6;
}

- (id)policyAggregator
{
  override_policyAggregator = self->_override_policyAggregator;
  if (override_policyAggregator)
  {
    v3 = override_policyAggregator;
  }

  else
  {
    v5 = [(SBIconController *)self mainDisplaySceneManager];
    v6 = [v5 policyAggregator];
    v7 = v6;
    if (v6)
    {
      v3 = v6;
    }

    else
    {
      v8 = [(SBIconController *)self externalDisplaySceneManager];
      v3 = [v8 policyAggregator];
    }
  }

  return v3;
}

- (id)folderNameForDisplayID:(id)a3
{
  iconModel = self->_iconModel;
  v4 = a3;
  v5 = [(SBHIconModel *)iconModel rootFolder];
  v6 = [v5 indexPathForIconWithIdentifier:v4];

  v7 = [v5 folderContainingIndexPath:v6 relativeIndexPath:0];

  if (v7)
  {
    v8 = [v7 displayName];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)iconPathForIconWithDisplayID:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SBHIconModel *)self->_iconModel rootFolder];
  v6 = [v5 indexPathForIconWithIdentifier:v4];
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v20 = v5;
    [v5 resolvedComponentsForIndexPath:v6];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v8 = v24 = 0u;
    v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v22;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v22 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v21 + 1) + 8 * i);
          v14 = objc_opt_self();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            v16 = [v13 displayName];
            if (!v16)
            {
              goto LABEL_12;
            }

            v17 = v16;
            [v7 addObject:v16];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v10);
    }

LABEL_12:

    v18 = [v7 copy];
    v5 = v20;
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (BOOL)allowsBadgingForIcon:(id)a3
{
  v4 = a3;
  v5 = [v4 overrideBadgeNumberOrString];

  if (v5)
  {
    v6 = 1;
  }

  else
  {
    if ([v4 isApplicationIcon])
    {
      v7 = [v4 applicationBundleID];
    }

    else if ([v4 isBookmarkIcon])
    {
      v8 = [v4 bookmark];
      v7 = [v8 placeholderBundleIdentifier];
    }

    else
    {
      v7 = 0;
    }

    v6 = [(SBIconController *)self _allowsBadgingForApplicationBundleIdentifier:v7];
  }

  return v6;
}

- (BOOL)_allowsBadgingForApplicationBundleIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(SBIconController *)self iconManager];
  v6 = [v5 focusModeManager];
  v7 = [v6 activeFocusMode];
  v8 = [v7 showsOnlyAllowedApplicationBadges];
  v9 = [v7 hidesOnlyDeniedApplicationBadges];
  if (v4)
  {
    v10 = v9;
    v11 = [(SBIconController *)self displayIDsWithBadgingEnabled];
    v12 = [v11 containsObject:v4];
    if (v8)
    {
      v13 = [v7 allowedApplicationBundleIdentifiers];
      LOBYTE(v14) = [v13 containsObject:v4];
    }

    else
    {
      if (!v10)
      {
LABEL_8:

        goto LABEL_9;
      }

      v13 = [v7 deniedApplicationBundleIdentifiers];
      v14 = [v13 containsObject:v4] ^ 1;
    }

    v12 &= v14;

    goto LABEL_8;
  }

  v12 = v8 ^ 1;
LABEL_9:

  return v12;
}

- (BOOL)isUninstallSupportedForIcon:(id)a3
{
  v4 = a3;
  if (-[SBIconController isUninstallSupportedForAnyIcon](self, "isUninstallSupportedForAnyIcon") && [v4 isUninstallSupported])
  {
    if ([v4 isApplicationIcon])
    {
      v5 = [v4 application];
      if ([v5 isSystemApplication] && -[SBIconController isUninstallingSystemAppsRestricted](self, "isUninstallingSystemAppsRestricted"))
      {
        v6 = 0;
      }

      else if (v5)
      {
        v8 = [v5 info];
        v9 = [v8 uninstallCapability];

        if (v9)
        {
          v6 = -1;
        }

        else
        {
          v6 = 0;
        }
      }

      else
      {
        v6 = 1;
      }
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

- (BOOL)isHideSupportedForIcon:(id)a3 inLocation:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(SBIconController *)self isAppLibrarySupported]&& (SBIconLocationGroupContainsLocation() & 1) == 0)
  {
    if ([v6 isApplicationIcon] & 1) != 0 || (objc_msgSend(v6, "isFolderIcon"))
    {
      v8 = 1;
    }

    else
    {
      v10 = [(SBIconController *)self iconManager];
      v8 = [v10 canAddIconToIgnoredList:v6];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)isUninstallOrHideSupportedForIcon:(id)a3 inLocation:(id)a4
{
  v6 = a3;
  v7 = [(SBIconController *)self isHideSupportedForIcon:v6 inLocation:a4]|| [(SBIconController *)self isUninstallSupportedForIcon:v6];

  return v7;
}

- (BOOL)isEnterpriseMultiUser
{
  v2 = [SBApp userSessionController];
  v3 = [v2 isMultiUserSupported];

  return v3;
}

- (BOOL)resetHomeScreenLayout
{
  v20 = *MEMORY[0x277D85DE8];
  [MEMORY[0x277D66228] clearCachesForReason:@"Reset home screen layout"];
  [(SBHLibraryCategoryMapProvider *)self->_categoryMapProvider resetForbiddenApplicationIdentifiers];
  [(SBHLibraryCategoryMapProvider *)self->_categoryMapProvider overrideCategoryMapForTesting:0];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [(NSHashTable *)self->_iconControllerObservers allObjects];
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    do
    {
      v7 = 0;
      do
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v15 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 iconControllerDidResetHomeScreenLayout];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  [(SBIconController *)self setUserIconStateFileStatus:1];
  v9 = [(SBIconController *)self iconManager];
  v10 = [v9 resetIconLayoutWithOptions:1];
  [(SBIconController *)self updateRootFolderWithCurrentDoNotDisturbState];
  v11 = [(SBIconController *)self rootFolder];
  v12 = [v11 todayList];
  [(SBIconController *)self _addSmartStackToTodayList:v12 completionHandler:0];

  if ([(SBIconController *)self isUpgradeRestore]&& ![(SBIconController *)self isEnterpriseMultiUser])
  {
    [v9 addDefaultWidgetsToHomeScreen];
  }

  [v9 removeWidgetDiscoverabilityContainerViewsAndPopoverWhenNeeded:1];
  v13 = [(SBHLibraryCategoryMapProvider *)self->_categoryMapProvider requestLibraryCategoryMapRefreshWithOptions:7 reason:@"SBIconController requested reset home screen layout."];

  return v10;
}

- (BOOL)resetCategories
{
  [MEMORY[0x277D66228] clearCachesForReason:@"Reset categories"];
  [(SBHLibraryCategoryMapProvider *)self->_categoryMapProvider overrideCategoryMapForTesting:0];
  v3 = [(SBHLibraryCategoryMapProvider *)self->_categoryMapProvider requestLibraryCategoryMapRefreshWithOptions:7 reason:@"SBIconController requested reset category."];
  return 1;
}

- (SBHIconImageCache)tableUIIconImageCache
{
  tableUIIconImageCache = self->_tableUIIconImageCache;
  if (!tableUIIconImageCache)
  {
    v4 = [MEMORY[0x277D1B1C8] imageDescriptorNamed:*MEMORY[0x277D1B240]];
    [v4 size];
    v6 = v5;
    v8 = v7;
    [v4 scale];
    v10 = v9;
    [v4 continuousCornerRadius];
    v12 = [objc_alloc(MEMORY[0x277D661D0]) initWithName:@"tableUIIcon" iconImageInfo:{v6, v8, v10, v11}];
    v13 = self->_tableUIIconImageCache;
    self->_tableUIIconImageCache = v12;

    tableUIIconImageCache = self->_tableUIIconImageCache;
  }

  return tableUIIconImageCache;
}

- (SBHIconImageCache)notificationIconImageCache
{
  notificationIconImageCache = self->_notificationIconImageCache;
  if (!notificationIconImageCache)
  {
    v4 = [MEMORY[0x277D1B1C8] imageDescriptorNamed:*MEMORY[0x277D1B230]];
    [v4 size];
    v6 = v5;
    v8 = v7;
    [v4 scale];
    v10 = v9;
    [v4 continuousCornerRadius];
    v12 = [objc_alloc(MEMORY[0x277D661D0]) initWithName:@"notificationIcon" iconImageInfo:{v6, v8, v10, v11}];
    v13 = self->_notificationIconImageCache;
    self->_notificationIconImageCache = v12;

    notificationIconImageCache = self->_notificationIconImageCache;
  }

  return notificationIconImageCache;
}

- (void)_bookmarkDidUninstall:(id)a3
{
  [SBApp noteInstalledWebClipsDidChange];
  v3 = [MEMORY[0x277CEB358] sharedInstance];
  [v3 notifyBookmarksDidChange];
}

- (BOOL)shouldAddNewIconsToRootFolder
{
  v2 = +[SBDefaults localDefaults];
  v3 = [v2 homeScreenDefaults];

  v4 = [v3 automaticallyAddsNewApplications];
  if (([v3 automaticallyAddsNewApplicationsExists] & 1) == 0)
  {
    v4 &= [v3 pagesHaveEverBeenHidden] ^ 1;
  }

  return v4;
}

- (void)deleteAllWebClips
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [(SBIconController *)self iconManager];
  v3 = [v2 iconModel];
  v4 = [v3 leafIcons];
  v5 = [v4 bs_filter:&__block_literal_global_204];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [v2 uninstallIcon:*(*(&v11 + 1) + 8 * v10++) animate:{0, v11}];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)runWidgetDiscoverabilityTest
{
  v3 = [(SBIconController *)self iconManager];
  [v3 removeWidgetIconsFromHomeScreen];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __48__SBIconController_runWidgetDiscoverabilityTest__block_invoke;
  v4[3] = &unk_2783A9398;
  v4[4] = self;
  [(SBIconController *)self _obtainSmartStackForWidgetDiscoverabilityWithCompletionHandler:v4];
}

void __48__SBIconController_runWidgetDiscoverabilityTest__block_invoke(uint64_t a1, int a2)
{
  v13 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v2 = [*(*(a1 + 32) + 144) allObjects];
    v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v9;
      do
      {
        v6 = 0;
        do
        {
          if (*v9 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v7 = *(*(&v8 + 1) + 8 * v6);
          if (objc_opt_respondsToSelector())
          {
            [v7 addSmartStacksForWidgetDiscoverabilityAndPrepareWidgetIntroduction];
          }

          ++v6;
        }

        while (v4 != v6);
        v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v4);
    }
  }
}

- (BOOL)importIconState:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  self->_sendITunesNotification = 0;
  v4 = [(SBIconModel *)self->_iconModel importState:a3];
  if (v4)
  {
    v5 = [(SBIconController *)self iconManager];
    [v5 relayout];

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = [(NSHashTable *)self->_iconControllerObservers allObjects];
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        v10 = 0;
        do
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v13 + 1) + 8 * v10);
          if (objc_opt_respondsToSelector())
          {
            [v11 iconModelDidImportIconState:self->_iconModel];
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }
  }

  self->_sendITunesNotification = 1;
  return v4;
}

- (BOOL)isIconVisibleForBundleIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(SBIconController *)self iconModel];
  v6 = [v5 applicationIconForBundleIdentifier:v4];

  LOBYTE(v4) = [v5 isIconVisible:v6];
  return v4;
}

+ (SBHIconRepository)sharedIconRepository
{
  if (sharedIconRepository_onceToken != -1)
  {
    +[SBIconController sharedIconRepository];
  }

  v3 = sharedIconRepository_sharedIconRepository;

  return v3;
}

void __40__SBIconController_sharedIconRepository__block_invoke()
{
  v0 = [SBIconRepository alloc];
  v1 = +[SBIconRepositoryInfoProvider sharedInstance];
  v2 = [(SBHIconRepository *)v0 initWithApplicationInfoProvider:v1];
  v3 = sharedIconRepository_sharedIconRepository;
  sharedIconRepository_sharedIconRepository = v2;

  v4 = sharedIconRepository_sharedIconRepository;
  v5 = [MEMORY[0x277CBEB98] setWithObject:@"com.apple.webapp"];
  [v4 setHiddenTagsThatAffectBookmarkIcons:v5];
}

- (void)configureIconManager:(id)a3
{
  v3 = a3;
  if (objc_opt_respondsToSelector())
  {
    [v3 setLimitsWidgetStackPageControlFlashesToSession:1];
  }
}

- (id)proactiveOnboardingDefaultStacks
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CEB450] sharedInstance];
  v3 = MEMORY[0x277CBEA60];
  v4 = [v2 fetchWidgetDiscoverabilityStacks];
  v5 = [v3 arrayWithArray:v4];

  v6 = SBLogWidgetDiscoverability();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "Synchronously fetched proactive onboarding stack %@", &v8, 0xCu);
  }

  return v5;
}

- (void)_updateUninstallingSystemAppsRestricted
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__SBIconController__updateUninstallingSystemAppsRestricted__block_invoke;
  block[3] = &unk_2783A8C18;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __59__SBIconController__updateUninstallingSystemAppsRestricted__block_invoke(uint64_t a1)
{
  v2 = [SBApp accountStoreController];
  v3 = [v2 primaryAppleAccount];
  v4 = [v3 aa_isManagedAppleID];
  v5 = [*(a1 + 32) accountStoreQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __59__SBIconController__updateUninstallingSystemAppsRestricted__block_invoke_2;
  v6[3] = &unk_2783A9F58;
  v7 = v4;
  v6[4] = *(a1 + 32);
  dispatch_async(v5, v6);
}

void __59__SBIconController__updateUninstallingSystemAppsRestricted__block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x277CB8F48] ams_sharedAccountStore];
  v3 = [v2 ams_activeiTunesAccount];
  v4 = [v3 aa_isManagedAppleID];
  v5 = *(a1 + 40);
  v6 = SBLogCommon();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    __59__SBIconController__updateUninstallingSystemAppsRestricted__block_invoke_2_cold_1((a1 + 40), v4, v6);
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__SBIconController__updateUninstallingSystemAppsRestricted__block_invoke_220;
  v7[3] = &unk_2783AC2B8;
  v8 = (v5 | v4) & 1;
  v7[4] = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v7);
}

uint64_t __59__SBIconController__updateUninstallingSystemAppsRestricted__block_invoke_220(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  result = [*(a1 + 32) isUninstallingSystemAppsRestricted];
  if (v2 != result)
  {
    v4 = SBLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 40);
      v6 = *(a1 + 41);
      v7 = *(a1 + 42);
      v8[0] = 67109632;
      v8[1] = v5;
      v9 = 1024;
      v10 = v6;
      v11 = 1024;
      v12 = v7;
      _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "Changing restriction for uninstalling system apps to %i (Apple account restricted: %i, iTunes Store account restricted: %i)", v8, 0x14u);
    }

    return [*(a1 + 32) setUninstallingSystemAppsRestricted:*(a1 + 40)];
  }

  return result;
}

- (void)_registerAnalytics
{
  objc_initWeak(&location, self);
  v3 = [(SBIconController *)self analyticsClient];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __38__SBIconController__registerAnalytics__block_invoke;
  v9[3] = &unk_2783AFF50;
  objc_copyWeak(&v10, &location);
  [v3 registerForQueryName:0 handler:v9];

  v4 = [(SBIconController *)self analyticsClient];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__SBIconController__registerAnalytics__block_invoke_2;
  v7[3] = &unk_2783AFF50;
  objc_copyWeak(&v8, &location);
  [v4 registerForQueryName:2 handler:v7];

  v5 = [(SBIconController *)self analyticsClient];
  [v5 registerForQueryName:3 handler:&__block_literal_global_226];

  v6 = [(SBIconController *)self analyticsClient];
  [v6 registerForQueryName:1 handler:&__block_literal_global_228];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

id __38__SBIconController__registerAnalytics__block_invoke(uint64_t a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__24;
  v9 = __Block_byref_object_dispose__24;
  v10 = 0;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __38__SBIconController__registerAnalytics__block_invoke_221;
  v3[3] = &unk_2783AFF28;
  objc_copyWeak(&v4, (a1 + 32));
  v3[4] = &v5;
  dispatch_sync(MEMORY[0x277D85CD0], v3);
  v1 = v6[5];
  objc_destroyWeak(&v4);
  _Block_object_dispose(&v5, 8);

  return v1;
}

void __38__SBIconController__registerAnalytics__block_invoke_221(uint64_t a1)
{
  v17[4] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained rootFolder];
    v5 = v4;
    if (v4)
    {
      v6 = [v4 dock];
      v16[0] = *MEMORY[0x277D674F0];
      v7 = MEMORY[0x277CCABB0];
      v8 = [v5 folderIcons];
      v9 = [v7 numberWithUnsignedInteger:{objc_msgSend(v8, "count")}];
      v17[0] = v9;
      v16[1] = *MEMORY[0x277D67500];
      v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v5, "listCount")}];
      v17[1] = v10;
      v16[2] = *MEMORY[0x277D674F8];
      v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v6, "numberOfIcons")}];
      v17[2] = v11;
      v16[3] = *MEMORY[0x277D674E8];
      v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v3, "_foldersInList:", v6)}];
      v17[3] = v12;
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:4];
      v14 = *(*(a1 + 32) + 8);
      v15 = *(v14 + 40);
      *(v14 + 40) = v13;
    }
  }
}

id __38__SBIconController__registerAnalytics__block_invoke_2(uint64_t a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__24;
  v9 = __Block_byref_object_dispose__24;
  v10 = 0;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __38__SBIconController__registerAnalytics__block_invoke_3;
  v3[3] = &unk_2783AFF28;
  objc_copyWeak(&v4, (a1 + 32));
  v3[4] = &v5;
  dispatch_sync(MEMORY[0x277D85CD0], v3);
  v1 = v6[5];
  objc_destroyWeak(&v4);
  _Block_object_dispose(&v5, 8);

  return v1;
}

void __38__SBIconController__registerAnalytics__block_invoke_3(uint64_t a1)
{
  v14[2] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained rootFolder];
    v5 = v4;
    if (v4)
    {
      v6 = [v4 visibleListCount];
      v7 = [v5 hiddenListCount];
      v13[0] = *MEMORY[0x277D67558];
      v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v6];
      v14[0] = v8;
      v13[1] = *MEMORY[0x277D67550];
      v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v7];
      v14[1] = v9;
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];
      v11 = *(*(a1 + 32) + 8);
      v12 = *(v11 + 40);
      *(v11 + 40) = v10;
    }
  }
}

id __38__SBIconController__registerAnalytics__block_invoke_4()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3032000000;
  v6 = __Block_byref_object_copy__24;
  v7 = __Block_byref_object_dispose__24;
  v8 = 0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__SBIconController__registerAnalytics__block_invoke_5;
  block[3] = &unk_2783A9718;
  block[4] = &v3;
  dispatch_sync(MEMORY[0x277D85CD0], block);
  v0 = v4[5];
  _Block_object_dispose(&v3, 8);

  return v0;
}

void __38__SBIconController__registerAnalytics__block_invoke_5(uint64_t a1)
{
  v21[4] = *MEMORY[0x277D85DE8];
  v2 = +[SBDefaults localDefaults];
  v3 = [v2 homeScreenDefaults];

  v4 = +[SBDefaults localDefaults];
  v5 = [v4 floatingDockDefaults];

  v6 = [v3 automaticallyAddsNewApplications];
  v7 = MEMORY[0x277D66648];
  if (v6)
  {
    v7 = MEMORY[0x277D666D0];
  }

  v8 = *v7;
  v9 = [v3 automaticallyAddsNewApplicationsExists];
  v10 = [v3 pagesHaveEverBeenHidden];
  v11 = [v5 appLibraryEnabled];
  v20[0] = *MEMORY[0x277D67508];
  v12 = [MEMORY[0x277CCABB0] numberWithBool:v10];
  v13 = *MEMORY[0x277D675F8];
  v21[0] = v12;
  v21[1] = v8;
  v14 = *MEMORY[0x277D675F0];
  v20[1] = v13;
  v20[2] = v14;
  v15 = [MEMORY[0x277CCABB0] numberWithBool:v9];
  v21[2] = v15;
  v20[3] = *MEMORY[0x277D67560];
  v16 = [MEMORY[0x277CCABB0] numberWithBool:v11 ^ 1u];
  v21[3] = v16;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:4];
  v18 = *(*(a1 + 32) + 8);
  v19 = *(v18 + 40);
  *(v18 + 40) = v17;
}

id __38__SBIconController__registerAnalytics__block_invoke_6()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3032000000;
  v6 = __Block_byref_object_copy__24;
  v7 = __Block_byref_object_dispose__24;
  v8 = 0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__SBIconController__registerAnalytics__block_invoke_7;
  block[3] = &unk_2783A9718;
  block[4] = &v3;
  dispatch_sync(MEMORY[0x277D85CD0], block);
  v0 = v4[5];
  _Block_object_dispose(&v3, 8);

  return v0;
}

void __38__SBIconController__registerAnalytics__block_invoke_7(uint64_t a1)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v2 = +[SBDefaults localDefaults];
  v3 = [v2 floatingDockDefaults];

  v4 = [v3 recentsEnabled];
  v9 = *MEMORY[0x277D674C0];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:v4];
  v10[0] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

- (unint64_t)_foldersInList:(id)a3
{
  v3 = a3;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __35__SBIconController__foldersInList___block_invoke;
  v6[3] = &unk_2783AFF98;
  v6[4] = &v7;
  [v3 enumerateFolderIconsUsingBlock:v6];
  v4 = v8[3];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)_installedAppsDidChange:(id)a3
{
  v4 = a3;
  v14 = [v4 object];
  v5 = [v4 userInfo];
  v6 = [v5 objectForKey:@"SBInstalledApplicationsAddedBundleIDs"];

  v7 = [v4 userInfo];
  v8 = [v7 objectForKey:@"SBInstalledApplicationsRemovedBundleIDs"];

  v9 = [v4 userInfo];
  v10 = [v9 objectForKey:@"SBInstalledApplicationsReplacedBundleIDs"];

  v11 = [v4 userInfo];

  v12 = [v11 objectForKey:@"SBInstalledApplicationsUpdatedBundleIDs"];

  if ([v6 count] || objc_msgSend(v8, "count") || objc_msgSend(v10, "count") || objc_msgSend(v12, "count"))
  {
    [(SBIconController *)self _mutateIconListsForInstalledAppsDidChangeWithController:v14 added:v6 modified:v10 removed:v8];
    v13 = [(SBIconController *)self iconModel];
    [(SBIconController *)self _iconModelInstalledAppsDidChange:v13];
  }
}

- (void)_mutateIconListsForInstalledAppsDidChangeWithController:(id)a3 added:(id)a4 modified:(id)a5 removed:(id)a6
{
  v42 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (![(SBIconController *)self _ignoreMutatingIconListsOnApplicationInstall])
  {
    v14 = [MEMORY[0x277CBEB58] set];
    [v14 unionSet:v11];
    [v14 unionSet:v12];
    v15 = objc_alloc_init(MEMORY[0x277CBEB58]);
    if ([v14 count] || objc_msgSend(v13, "count"))
    {
      v30 = v13;
      v31 = v12;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v29 = v14;
      v16 = v14;
      v17 = [v16 countByEnumeratingWithState:&v36 objects:v41 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v37;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v37 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v21 = *(*(&v36 + 1) + 8 * i);
            v22 = [v10 applicationWithBundleIdentifier:v21];
            if ([v11 containsObject:v21])
            {
              [v15 addObject:v22];
              [v22 setRestoringIcon:1];
            }
          }

          v18 = [v16 countByEnumeratingWithState:&v36 objects:v41 count:16];
        }

        while (v18);
      }

      v13 = v30;
      v12 = v31;
      v14 = v29;
    }

    v23 = [(SBIconController *)self iconModel];
    [(SBIconController *)self _iconModel:v23 wantsToRevealAnyApplicationFromIdentifiers:v14];
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v24 = v15;
    v25 = [v24 countByEnumeratingWithState:&v32 objects:v40 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v33;
      do
      {
        for (j = 0; j != v26; ++j)
        {
          if (*v33 != v27)
          {
            objc_enumerationMutation(v24);
          }

          [*(*(&v32 + 1) + 8 * j) setRestoringIcon:0];
        }

        v26 = [v24 countByEnumeratingWithState:&v32 objects:v40 count:16];
      }

      while (v26);
    }
  }
}

- (void)_iconModelInstalledAppsDidChange:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(NSHashTable *)self->_iconControllerObservers allObjects];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 iconModelInstalledAppsDidChange:v4];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)_iconModel:(id)a3 wantsToRevealAnyApplicationFromIdentifiers:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [(NSHashTable *)self->_iconControllerObservers allObjects];
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      v12 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v15 + 1) + 8 * v12);
        if (objc_opt_respondsToSelector())
        {
          v14 = [v7 copy];
          [v13 iconModel:v6 wantsToRevealAnyApplicationFromIdentifiers:v14];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }
}

- (void)_backupRestoringDidChange:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = [(SBIconController *)self iconModel];
  v5 = +[SBSyncController sharedInstance];
  v6 = [v5 isRestoring];

  [v4 setRestoring:v6];
  if ((v6 & 1) == 0)
  {
    v7 = [(SBIconController *)self iconManager];
    [v7 checkForInvalidWidgets];

    v8 = [(SBIconController *)self iconManager];
    [v8 checkForInvalidCustomElements];
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v9 = [(NSHashTable *)self->_iconControllerObservers allObjects];
  v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    do
    {
      v13 = 0;
      do
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v15 + 1) + 8 * v13);
        if (objc_opt_respondsToSelector())
        {
          [v14 iconModel:v4 backupRestoringStatusDidChange:v6];
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
  }
}

- (void)_updateIconModelStore
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D262A0] sharedConnection];
  v4 = [v3 restrictionEnforcedHomeScreenLayout];

  if (!v4 || (v5 = [[SBIconProfileModelMemoryStore alloc] initWithITunesRepresentation:v4]) == 0)
  {
    if (self->_visibleTags)
    {
      goto LABEL_32;
    }

    v7 = SBLogIconController();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v21) = 0;
      _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "No visible tag information available when creating icon model for first time", &v21, 2u);
    }

    v5 = objc_alloc_init(MEMORY[0x277D663E8]);
    if (!v5)
    {
LABEL_32:
      if (!self->_isAppAllowlistActiveAndTransient)
      {
        goto LABEL_8;
      }

      v6 = SBLogIconController();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v21) = 0;
        _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "Using read-only variant of default icon model store because app allowlist is being treated as transient", &v21, 2u);
      }

      v5 = objc_alloc_init(SBReadOnlyDefaultIconModelStore);
      if (!v5)
      {
LABEL_8:
        v5 = +[SBDefaultIconModelStore sharedInstance];
      }
    }
  }

  v8 = v5;
  v9 = [(SBIconController *)self iconModel];
  v10 = [(SBHIconModel *)v9 store];

  v11 = SBLogWidgetDiscoverability();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [(SBHIconModel *)v9 store];
    v21 = 138412546;
    v22 = v12;
    v23 = 2112;
    v24 = v8;
    _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEFAULT, "iconModelStore(%@), store(%@)", &v21, 0x16u);
  }

  if (v10 != v8)
  {
    [(SBIconController *)self setHasRestrictedEnforcedLayout:v4 != 0];
    v13 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v15 = [(SBReadOnlyDefaultIconModelStore *)v8 currentIconStateURL];
      if ([v15 checkResourceIsReachableAndReturnError:0])
      {
        v16 = 2;
      }

      else
      {
        v16 = 1;
      }
    }

    else
    {
      v16 = 0;
    }

    [(SBIconController *)self setUserIconStateFileStatus:v16];
    v17 = SBLogWidgetDiscoverability();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [(SBIconController *)self userIconStateFileStatus];
      v21 = 67109120;
      LODWORD(v22) = v18;
      _os_log_impl(&dword_21ED4E000, v17, OS_LOG_TYPE_DEFAULT, "Icon state = %d", &v21, 8u);
    }

    if (v9)
    {
      [(SBHIconModel *)v9 setStore:v8];
      if (v4)
      {
LABEL_25:
        v19 = +[SBDefaultIconModelStore sharedInstance];
LABEL_28:
        [(SBHIconModel *)v9 setTodayListsStore:v19];

        goto LABEL_29;
      }
    }

    else
    {
      v20 = [objc_opt_class() sharedIconRepository];
      v9 = [(SBHIconModel *)[SBIconModel alloc] initWithStore:v8 iconRepository:v20];
      [(SBHIconModel *)v9 setPostsDidAddIconNotification:0];
      [(SBIconController *)self setModel:v9];

      if (v4)
      {
        goto LABEL_25;
      }
    }

    v19 = 0;
    goto LABEL_28;
  }

LABEL_29:
}

- (void)setModel:(id)a3
{
  v27[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  p_iconModel = &self->_iconModel;
  if (self->_iconModel != v5)
  {
    v7 = [(SBIconController *)self iconManager];
    v8 = [MEMORY[0x277CCAB98] defaultCenter];
    v9 = *MEMORY[0x277D666F0];
    [v8 removeObserver:self name:*MEMORY[0x277D666F0] object:self->_iconModel];
    categoryMapProvider = self->_categoryMapProvider;
    self->_categoryMapProvider = 0;

    v11 = SBLogIcon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [SBIconController setModel:];
    }

    objc_storeStrong(&self->_iconModel, a3);
    iconModel = self->_iconModel;
    v13 = +[SBSyncController sharedInstance];
    -[SBHIconModel setRestoring:](iconModel, "setRestoring:", [v13 isRestoring]);

    if (*&self->_visibleTags != 0)
    {
      [SBHIconModel setVisibilityOfIconsWithVisibleTags:"setVisibilityOfIconsWithVisibleTags:hiddenTags:" hiddenTags:?];
    }

    [v7 setIconModel:v5];
    [v8 addObserver:self selector:sel__iconModelDidLayout_ name:v9 object:self->_iconModel];
    v14 = [(SBHIconModel *)self->_iconModel rootFolder];

    if (v14)
    {
      [(SBIconController *)self _rootFolderDidChange];
    }

    v15 = [[SBIconVisibilityService alloc] initWithIconModel:self->_iconModel];
    iconVisibilityService = self->_iconVisibilityService;
    self->_iconVisibilityService = v15;

    [v8 postNotificationName:SBIconControllerIconModelDidChangeNotification object:self];
    if ([(SBHIconModel *)self->_iconModel hasDesiredIconState])
    {
      v17 = [(SBHIconModel *)*p_iconModel missingDesiredIconIdentifiers];
      v26 = *MEMORY[0x277D67548];
      v18 = [v17 allObjects];
      v27[0] = v18;
      v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:&v26 count:1];
      v20 = MEMORY[0x277D65DD0];
      v21 = v19;
      v22 = [v20 sharedInstance];
      [v22 emitEvent:35 withPayload:v21];
    }

    analyticsEventsController = self->_analyticsEventsController;
    if (analyticsEventsController)
    {
      [(SBAnalyticsEventsControllerForIconController *)analyticsEventsController updateIconModel:v5];
    }

    else
    {
      v24 = [[SBAnalyticsEventsControllerForIconController alloc] initWithIconModel:v5];
      v25 = self->_analyticsEventsController;
      self->_analyticsEventsController = v24;
    }
  }
}

- (void)_addSmartStackToTodayList:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [MEMORY[0x277D65ED8] sharedInstance];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __64__SBIconController__addSmartStackToTodayList_completionHandler___block_invoke;
  v11[3] = &unk_2783B0010;
  v9 = v7;
  v13 = v9;
  objc_copyWeak(&v14, &location);
  v10 = v6;
  v12 = v10;
  [v8 performAfterFirstUnlockSinceBootUsingBlock:v11];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __64__SBIconController__addSmartStackToTodayList_completionHandler___block_invoke(id *a1)
{
  v2 = [MEMORY[0x277CEB450] sharedInstance];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __64__SBIconController__addSmartStackToTodayList_completionHandler___block_invoke_2;
  v3[3] = &unk_2783AFFE8;
  v5 = a1[5];
  objc_copyWeak(&v6, a1 + 6);
  v4 = a1[4];
  [v2 fetchSmartStackOfVariant:1 completionHandler:v3];

  objc_destroyWeak(&v6);
}

void __64__SBIconController__addSmartStackToTodayList_completionHandler___block_invoke_2(id *a1, void *a2, void *a3)
{
  v45 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5 && [v5 count])
  {
    v31 = v6;
    v32 = v5;
    v7 = [v5 objectAtIndexedSubscript:0];
    v8 = SBLogWidgets();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v44 = v7;
      _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "Found suggested default widget stack: %@", buf, 0xCu);
    }

    v9 = [MEMORY[0x277CBEB18] array];
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v30 = v7;
    v10 = [v7 mediumDefaultStack];
    v11 = [v10 countByEnumeratingWithState:&v38 objects:v42 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v39;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v39 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v38 + 1) + 8 * i);
          v16 = [v15 avocadoDescriptor];
          v17 = [v16 sanitizedDescriptor];

          if (v17)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) != 0 || ([v17 extensionBundleIdentifier], v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "length"), v18, v19))
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 || ([v17 kind], v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v20, "length"), v20, v21))
              {
                [v9 addObject:v17];
                goto LABEL_24;
              }

              v22 = SBLogWidgets();
              if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v44 = v15;
                v23 = v22;
                v24 = "Widget in suggested default widget stack has no kind: %@";
                goto LABEL_22;
              }
            }

            else
            {
              v22 = SBLogWidgets();
              if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v44 = v15;
                v23 = v22;
                v24 = "Widget in suggested default widget stack has no extension bundle identifier: %@";
                goto LABEL_22;
              }
            }
          }

          else
          {
            v22 = SBLogWidgets();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v44 = v15;
              v23 = v22;
              v24 = "Widget in suggested default widget stack has no descriptor: %@";
LABEL_22:
              _os_log_impl(&dword_21ED4E000, v23, OS_LOG_TYPE_DEFAULT, v24, buf, 0xCu);
            }
          }

LABEL_24:
        }

        v12 = [v10 countByEnumeratingWithState:&v38 objects:v42 count:16];
      }

      while (v12);
    }

    if ([v9 count])
    {
      v25 = SBLogWidgets();
      v6 = v31;
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = [v9 count];
        *buf = 134217984;
        v44 = v26;
        _os_log_impl(&dword_21ED4E000, v25, OS_LOG_TYPE_DEFAULT, "Found %lu medium default widget stack descriptors", buf, 0xCu);
      }

      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __64__SBIconController__addSmartStackToTodayList_completionHandler___block_invoke_247;
      block[3] = &unk_2783AFFC0;
      objc_copyWeak(&v37, a1 + 6);
      v34 = v9;
      v35 = a1[4];
      v36 = a1[5];
      dispatch_async(MEMORY[0x277D85CD0], block);

      objc_destroyWeak(&v37);
      v5 = v32;
    }

    else
    {
      v6 = v31;
      v5 = v32;
      if (a1[5])
      {
        v29 = SBLogWidgets();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          __64__SBIconController__addSmartStackToTodayList_completionHandler___block_invoke_2_cold_1();
        }

        (*(a1[5] + 2))();
      }
    }
  }

  else
  {
    v27 = SBLogWidgets();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      __64__SBIconController__addSmartStackToTodayList_completionHandler___block_invoke_2_cold_2(v6);
    }

    v28 = a1[5];
    if (v28)
    {
      v28[2](v28, 0);
    }
  }
}

void __64__SBIconController__addSmartStackToTodayList_completionHandler___block_invoke_247(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = [WeakRetained _createWidgetIconWithDescriptors:*(a1 + 32) gridSize:*MEMORY[0x277D66520]];
  if ([v3 iconDataSourceCount])
  {
    v4 = [*(a1 + 40) insertIcon:v3 atIndex:0];
    v5 = [WeakRetained iconModel];
    [v5 saveIconStateIfNeeded];

    v6 = *(a1 + 48);
    if (v6)
    {
      v7 = *(v6 + 16);
LABEL_8:
      v7();
    }
  }

  else if (*(a1 + 48))
  {
    v8 = SBLogWidgets();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __64__SBIconController__addSmartStackToTodayList_completionHandler___block_invoke_247_cold_1();
    }

    v7 = *(*(a1 + 48) + 16);
    goto LABEL_8;
  }
}

- (void)_obtainSmartStackForWidgetDiscoverabilityWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277D65ED8] sharedInstance];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __83__SBIconController__obtainSmartStackForWidgetDiscoverabilityWithCompletionHandler___block_invoke;
  v7[3] = &unk_2783A98A0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 performAfterFirstUnlockSinceBootUsingBlock:v7];
}

void __83__SBIconController__obtainSmartStackForWidgetDiscoverabilityWithCompletionHandler___block_invoke(uint64_t a1)
{
  v61 = *MEMORY[0x277D85DE8];
  v2 = dispatch_group_create();
  dispatch_group_enter(v2);
  v3 = [*(a1 + 32) suggestedOnboardingStack];
  v4 = [*(a1 + 32) userIconStateFileStatus];
  if (__sb__runningInSpringBoard())
  {
    if (!SBFEffectiveDeviceClass() || SBFEffectiveDeviceClass() == 1)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v6 = [MEMORY[0x277D75418] currentDevice];
    v7 = [v6 userInterfaceIdiom];

    if (!v7)
    {
LABEL_4:
      v5 = MEMORY[0x277D66548];
      goto LABEL_11;
    }
  }

  v8 = [MEMORY[0x277D75418] currentDevice];
  v9 = [v8 userInterfaceIdiom];

  v10 = v4 == 1 && (v9 & 0xFFFFFFFFFFFFFFFBLL) == 1;
  v5 = MEMORY[0x277D66518];
  if (!v10)
  {
    v5 = MEMORY[0x277D66520];
  }

LABEL_11:
  v11 = *v5;
  v12 = SBLogWidgetDiscoverability();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v58) = v11;
    _os_log_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_DEFAULT, "Suggested widgets size class = %d", buf, 8u);
  }

  if (v3 && [v3 count])
  {
    v36 = a1;
    v38 = v2;
    v40 = [MEMORY[0x277CBEB18] array];
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v37 = v3;
    obj = v3;
    v13 = [obj countByEnumeratingWithState:&v53 objects:v60 count:16];
    if (v13)
    {
      v14 = v13;
      v44 = *v54;
      v15 = *MEMORY[0x277D66548];
      v39 = *MEMORY[0x277D66520];
      v42 = *MEMORY[0x277D66548];
      v43 = v11;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v54 != v44)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v53 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v18 = v17;
          }

          else
          {
            v18 = 0;
          }

          v19 = v18;
          if (v19)
          {
            v20 = [MEMORY[0x277CBEB18] array];
            if (v11 == v15 || [v11 isEqualToString:v15])
            {
              v21 = [v19 smallDefaultStack];
            }

            else if (v11 == v39 || [v11 isEqualToString:?])
            {
              v21 = [v19 mediumDefaultStack];
            }

            else
            {
              v21 = [v19 largeDefaultStack];
            }

            v52 = 0u;
            v50 = 0u;
            v51 = 0u;
            v49 = 0u;
            v22 = v21;
            v23 = [v22 countByEnumeratingWithState:&v49 objects:v59 count:16];
            if (v23)
            {
              v24 = v23;
              v25 = *v50;
              do
              {
                for (j = 0; j != v24; ++j)
                {
                  if (*v50 != v25)
                  {
                    objc_enumerationMutation(v22);
                  }

                  v27 = [*(*(&v49 + 1) + 8 * j) avocadoDescriptor];
                  v28 = [v27 sanitizedDescriptor];

                  [v20 addObject:v28];
                }

                v24 = [v22 countByEnumeratingWithState:&v49 objects:v59 count:16];
              }

              while (v24);
            }

            if ([v20 count])
            {
              [v40 addObject:v20];
            }

            v15 = v42;
            v11 = v43;
          }
        }

        v14 = [obj countByEnumeratingWithState:&v53 objects:v60 count:16];
      }

      while (v14);
    }

    v29 = SBLogWidgetDiscoverability();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v58 = v40;
      _os_log_impl(&dword_21ED4E000, v29, OS_LOG_TYPE_DEFAULT, "Smart stack %@", buf, 0xCu);
    }

    a1 = v36;
    v30 = *(v36 + 32);
    v3 = v37;
    v2 = v38;
    if (__sb__runningInSpringBoard())
    {
      [v30 _updateDefaultFirstPageWidgetDescriptors:v40 withSizeClass:v11 andGridCellInfoOptions:2 * (SBFEffectiveDeviceClass() == 2)];
    }

    else
    {
      v31 = [MEMORY[0x277D75418] currentDevice];
      [v30 _updateDefaultFirstPageWidgetDescriptors:v40 withSizeClass:v11 andGridCellInfoOptions:{2 * (objc_msgSend(v31, "userInterfaceIdiom") == 1)}];
    }

    dispatch_group_leave(v38);
  }

  else
  {
    dispatch_group_leave(v2);
  }

  v32 = [MEMORY[0x277D75418] currentDevice];
  v33 = [v32 userInterfaceIdiom];

  if ((v33 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    dispatch_group_enter(v2);
    v34 = objc_alloc_init(MEMORY[0x277CEB478]);
    v35 = [*(a1 + 32) iconManager];
    [v35 setProactiveWidgetSuggesterClient:v34];

    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = __83__SBIconController__obtainSmartStackForWidgetDiscoverabilityWithCompletionHandler___block_invoke_252;
    v47[3] = &unk_2783B0038;
    v47[4] = *(a1 + 32);
    v48 = v2;
    [v34 defaultWidgetSuggestionOfType:1 completionHandler:v47];
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __83__SBIconController__obtainSmartStackForWidgetDiscoverabilityWithCompletionHandler___block_invoke_254;
  block[3] = &unk_2783A9348;
  v46 = *(a1 + 40);
  dispatch_group_notify(v2, MEMORY[0x277D85CD0], block);
}

void __83__SBIconController__obtainSmartStackForWidgetDiscoverabilityWithCompletionHandler___block_invoke_252(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v6 = MEMORY[0x277D85DD0];
    v7 = 3221225472;
    v8 = __83__SBIconController__obtainSmartStackForWidgetDiscoverabilityWithCompletionHandler___block_invoke_2;
    v9 = &unk_2783A92D8;
    v3 = *(a1 + 40);
    v10 = *(a1 + 32);
    v11 = v3;
    BSDispatchMain();
  }

  else
  {
    v4 = SBLogWidgetDiscoverability();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "TV widget was determined not to load", v5, 2u);
    }

    dispatch_group_leave(*(a1 + 40));
  }
}

void __83__SBIconController__obtainSmartStackForWidgetDiscoverabilityWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) obtainProactiveSecondPageWidgetSuggestion];
  v2 = SBLogWidgetDiscoverability();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_DEFAULT, "TV widget was determined to load", v3, 2u);
  }

  dispatch_group_leave(*(a1 + 40));
}

uint64_t __83__SBIconController__obtainSmartStackForWidgetDiscoverabilityWithCompletionHandler___block_invoke_254(uint64_t result)
{
  if (*(result + 32))
  {
    v1 = result;
    v2 = SBLogWidgetDiscoverability();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_DEFAULT, "Finish fetching smart stacks", v3, 2u);
    }

    return (*(*(v1 + 32) + 16))();
  }

  return result;
}

- (void)_updateDefaultFirstPageWidgetDescriptors:(id)a3 withSizeClass:(id)a4 andGridCellInfoOptions:(unint64_t)a5
{
  v23 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [(SBIconController *)self iconManager];
  [v10 setDefaultFirstPageWidgetDescriptors:v8];
  [v10 setDefaultFirstPageWidgetSizeClass:v9];
  v17 = v10;
  [v10 setGridCellInfoOptionsForInsertingDefaultWidgets:a5];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = [(NSHashTable *)self->_iconControllerObservers allObjects];
  v12 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v19;
    do
    {
      v15 = 0;
      do
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v18 + 1) + 8 * v15);
        if (objc_opt_respondsToSelector())
        {
          [v16 updateDefaultFirstPageWidgetDescriptors:v8 withSizeClass:v9 andGridCellInfoOptions:a5];
        }

        ++v15;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v13);
  }
}

- (void)obtainProactiveSecondPageWidgetSuggestion
{
  v10[1] = *MEMORY[0x277D85DE8];
  v2 = [(SBIconController *)self iconManager];
  v3 = [v2 widgetExtensionProvider];
  v4 = [objc_alloc(MEMORY[0x277D66320]) initWithKind:@"com.apple.tv" extensionBundleIdentifier:@"com.apple.tv.TVWidgetExtension"];
  v5 = [v3 sbh_descriptorForWidgetIdentifiable:v4];
  v6 = v5;
  if (v5)
  {
    v9 = v5;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v9 count:1];
    v10[0] = v7;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
    [v2 setDefaultSecondPageWidgetDescriptors:v8];

    [v2 setDefaultSecondPageWidgetSizeClass:*MEMORY[0x277D66510]];
  }
}

- (void)_rootFolderDidChange
{
  v9 = [(SBIconController *)self iconModel];
  v3 = [v9 rootFolder];
  v4 = [SBApp userSessionController];
  v5 = [v4 sessionType];

  v6 = +[SBDefaults localDefaults];
  v7 = [v6 homeScreenDefaults];

  if ([v7 shouldUpgradeEnableWidgetSuggestions])
  {
    v8 = v5 == 2;
  }

  else
  {
    v8 = 1;
  }

  if (!v8 && [(SBIconController *)self _enableWidgetSuggestionsForIconsInModel:v9 withRootFolder:v3])
  {
    [v7 setShouldUpgradeEnableWidgetSuggestions:0];
  }

  [(SBIconController *)self _prepareDefaultTodayLayoutIfNecessary];
  [(SBIconController *)self _setupWidgetIntroductionIfNecessary];
  [(SBIconController *)self updateRootFolderWithCurrentDoNotDisturbState];
  [v3 addFolderObserver:self];
}

- (BOOL)_enableWidgetSuggestionsForIconsInModel:(id)a3 withRootFolder:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __75__SBIconController__enableWidgetSuggestionsForIconsInModel_withRootFolder___block_invoke;
  v11[3] = &unk_2783B0088;
  v11[4] = &v12;
  [v6 enumerateListsWithOptions:1 usingBlock:v11];
  if (*(v13 + 24) == 1)
  {
    v7 = SBLogIconController();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "Enabled Widget Suggestions for at least one widget icon; saving icon state...", buf, 2u);
    }

    [v6 markIconStateDirty];
    v8 = [v5 saveIconStateIfNeeded];
    v9 = SBLogIconController();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v17 = v8;
      _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "Enabled Widget Suggestions for at least one widget icon; icon state saved: %{BOOL}u", buf, 8u);
    }
  }

  else
  {
    v9 = SBLogIconController();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "Did not enable Widget Suggestions for any widget icons", buf, 2u);
    }

    LOBYTE(v8) = 1;
  }

  _Block_object_dispose(&v12, 8);
  return v8;
}

uint64_t __75__SBIconController__enableWidgetSuggestionsForIconsInModel_withRootFolder___block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __75__SBIconController__enableWidgetSuggestionsForIconsInModel_withRootFolder___block_invoke_2;
  v3[3] = &unk_2783B0060;
  v3[4] = *(a1 + 32);
  return [a2 enumerateIconsWithOptions:1 usingBlock:v3];
}

void __75__SBIconController__enableWidgetSuggestionsForIconsInModel_withRootFolder___block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 isWidgetIcon];
  v4 = v6;
  if (v3)
  {
    v5 = v6;
    if ([v5 allowsSuggestions])
    {
      [v5 setAllowsExternalSuggestions:1];
      *(*(*(a1 + 32) + 8) + 24) = 1;
    }

    v4 = v6;
  }
}

- (void)_setupWidgetIntroductionIfNecessary
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = [SBApp userSessionController];
  v4 = [v3 sessionType];

  v5 = [(SBIconController *)self userIconStateFileStatus];
  v6 = [MEMORY[0x277CBEB18] array];
  v7 = [(SBIconController *)self _featureIntroductionItemForWidgetSetupAtLocation:2];
  [v6 bs_safeAddObject:v7];
  if (v5 == 2 && v4 != 2)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = [(NSHashTable *)self->_iconControllerObservers allObjects];
    v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v18;
      do
      {
        v12 = 0;
        do
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v17 + 1) + 8 * v12);
          if (objc_opt_respondsToSelector())
          {
            v14 = [v13 featureIntroductionItemForWidgetSetupAtLocation:2];
            [v6 bs_safeAddObject:v14];
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v10);
    }

    if ([v6 count])
    {
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __55__SBIconController__setupWidgetIntroductionIfNecessary__block_invoke;
      v15[3] = &unk_2783A9398;
      v16 = v6;
      [(SBIconController *)self _obtainSmartStackForWidgetDiscoverabilityWithCompletionHandler:v15];
    }
  }
}

void __55__SBIconController__setupWidgetIntroductionIfNecessary__block_invoke(uint64_t a1, int a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = SBLogWidgetDiscoverability();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"unsuccessfully";
    if (a2)
    {
      v5 = @"successfully";
    }

    *buf = 138412290;
    v17 = v5;
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "Obtained widget discoverability fetching status %@", buf, 0xCu);
  }

  if (a2)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = *(a1 + 32);
    v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v12;
      do
      {
        v10 = 0;
        do
        {
          if (*v12 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v11 + 1) + 8 * v10++) setupFeatureIntroductionAtLocations:{2, v11}];
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }
  }
}

- (id)_featureIntroductionItemForWidgetSetupAtLocation:(unint64_t)a3
{
  v4 = [(SBIconController *)self iconManager];
  v5 = [v4 featureIntroductionManager];
  v6 = [v5 featureIntroductionItemAtLocation:a3 withIdentifier:@"SBFeatureIntroductionLocationNone"];
  if ([v6 shouldSetupFeatureIntroductionAtLocations:a3])
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  return v7;
}

- (void)_prepareDefaultTodayLayoutIfNecessary
{
  if ([(SBIconController *)self _tryToPrepareNonDynamicDefaultTodayLayout])
  {

    [(SBIconController *)self _tryToPrepareDynamicDefaultTodayLayout];
  }

  else
  {
    v3 = dispatch_time(0, 10000000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __57__SBIconController__prepareDefaultTodayLayoutIfNecessary__block_invoke;
    block[3] = &unk_2783A8C18;
    block[4] = self;
    dispatch_after(v3, MEMORY[0x277D85CD0], block);
  }
}

uint64_t __57__SBIconController__prepareDefaultTodayLayoutIfNecessary__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _tryToPrepareNonDynamicDefaultTodayLayout];
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 _tryToPrepareDynamicDefaultTodayLayout];
  }

  return result;
}

- (BOOL)_tryToPrepareNonDynamicDefaultTodayLayout
{
  v3 = [(SBIconController *)self iconManager];
  v4 = [(SBIconController *)self iconModel];
  v5 = +[SBDefaults localDefaults];
  v6 = [v5 homeScreenDefaults];

  if ([v6 shouldPrepareDefaultTodayList])
  {
    if (![v3 resetTodayLayout] || !objc_msgSend(v4, "saveIconStateIfNeeded"))
    {
      v7 = 0;
      goto LABEL_7;
    }

    [v6 setShouldPrepareDefaultTodayList:0];
  }

  v7 = 1;
LABEL_7:

  return v7;
}

- (void)_tryToPrepareDynamicDefaultTodayLayout
{
  v3 = [(SBIconController *)self iconModel];
  v4 = [v3 rootFolder];
  v5 = +[SBDefaults localDefaults];
  v6 = [v5 homeScreenDefaults];

  if ([v6 shouldPrepareStackForDefaultTodayList])
  {
    v7 = [v4 todayList];
    objc_initWeak(&location, self);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __58__SBIconController__tryToPrepareDynamicDefaultTodayLayout__block_invoke;
    v9[3] = &unk_2783B00D8;
    v10 = v6;
    objc_copyWeak(&v12, &location);
    v8 = v7;
    v11 = v8;
    [(SBIconController *)self _addSmartStackToTodayList:v8 completionHandler:v9];

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }
}

void __58__SBIconController__tryToPrepareDynamicDefaultTodayLayout__block_invoke(id *a1, int a2)
{
  if (a2)
  {
    v3 = a1[4];

    [v3 setShouldPrepareStackForDefaultTodayList:0];
  }

  else
  {
    v4 = dispatch_time(0, 10000000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __58__SBIconController__tryToPrepareDynamicDefaultTodayLayout__block_invoke_2;
    block[3] = &unk_2783B00B0;
    objc_copyWeak(&v8, a1 + 6);
    v6 = a1[5];
    v7 = a1[4];
    dispatch_after(v4, MEMORY[0x277D85CD0], block);

    objc_destroyWeak(&v8);
  }
}

void __58__SBIconController__tryToPrepareDynamicDefaultTodayLayout__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __58__SBIconController__tryToPrepareDynamicDefaultTodayLayout__block_invoke_3;
  v4[3] = &unk_2783A9398;
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  [WeakRetained _addSmartStackToTodayList:v3 completionHandler:v4];
}

uint64_t __58__SBIconController__tryToPrepareDynamicDefaultTodayLayout__block_invoke_3(uint64_t result, int a2)
{
  if (a2)
  {
    return [*(result + 32) setShouldPrepareStackForDefaultTodayList:0];
  }

  return result;
}

- (void)_updateEnabledBadgesSetWithSections:(id)a3
{
  v58 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB58] set];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v47 objects:v57 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v48;
    v37 = 138412290;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v48 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v47 + 1) + 8 * i);
        v12 = [v11 sectionID];
        if (![(SBIconController *)self _badgesAreEnabledForSectionInfo:v11])
        {
          if (![(NSMutableSet *)self->_displayIDsWithBadgingEnabled containsObject:v12])
          {
            goto LABEL_18;
          }

          [(NSMutableSet *)self->_displayIDsWithBadgingEnabled removeObject:v12];
          [v5 addObject:v12];
          v15 = SBLogIcon();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v37;
            v56 = v12;
            v16 = v15;
            v17 = "Removing %@ from list of apps with allowed badges";
LABEL_16:
            _os_log_impl(&dword_21ED4E000, v16, OS_LOG_TYPE_DEFAULT, v17, buf, 0xCu);
          }

LABEL_17:

          goto LABEL_18;
        }

        if (v12 && ([(NSMutableSet *)self->_displayIDsWithBadgingEnabled containsObject:v12]& 1) == 0)
        {
          if (!self->_displayIDsWithBadgingEnabled)
          {
            v13 = objc_alloc_init(MEMORY[0x277CBEB58]);
            displayIDsWithBadgingEnabled = self->_displayIDsWithBadgingEnabled;
            self->_displayIDsWithBadgingEnabled = v13;
          }

          [v5 addObject:v12];
          [(NSMutableSet *)self->_displayIDsWithBadgingEnabled addObject:v12];
          v15 = SBLogIcon();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v37;
            v56 = v12;
            v16 = v15;
            v17 = "Adding %@ to list of apps with allowed badges";
            goto LABEL_16;
          }

          goto LABEL_17;
        }

LABEL_18:
      }

      v8 = [v6 countByEnumeratingWithState:&v47 objects:v57 count:16];
    }

    while (v8);
  }

  v38 = v6;

  if (![(NSMutableSet *)self->_displayIDsWithBadgingEnabled count])
  {
    v18 = self->_displayIDsWithBadgingEnabled;
    self->_displayIDsWithBadgingEnabled = 0;
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v19 = v5;
  v20 = [v19 countByEnumeratingWithState:&v43 objects:v54 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v44;
    do
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v44 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v43 + 1) + 8 * j);
        v39 = 0u;
        v40 = 0u;
        v41 = 0u;
        v42 = 0u;
        v25 = [(SBHIconModel *)self->_iconModel applicationIconsForBundleIdentifier:v24, v38];
        v26 = [v25 countByEnumeratingWithState:&v39 objects:v53 count:16];
        if (v26)
        {
          v27 = v26;
          v28 = *v40;
          do
          {
            for (k = 0; k != v27; ++k)
            {
              if (*v40 != v28)
              {
                objc_enumerationMutation(v25);
              }

              [*(*(&v39 + 1) + 8 * k) noteBadgeDidChange];
            }

            v27 = [v25 countByEnumeratingWithState:&v39 objects:v53 count:16];
          }

          while (v27);
        }

        v30 = [(SBHIconModel *)self->_iconModel bookmarkIconForWebClipPlaceholderBundleIdentifier:v24];
        [v30 noteBadgeDidChange];
      }

      v21 = [v19 countByEnumeratingWithState:&v43 objects:v54 count:16];
    }

    while (v21);
  }

  v31 = [MEMORY[0x277CCAB98] defaultCenter];
  v32 = SBIconControllerIconBadgeVisibilityDidChangeNotification;
  v51 = @"SBApplicationBundleIdentifiers";
  v52 = v19;
  v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v52 forKeys:&v51 count:1];
  [v31 postNotificationName:v32 object:self userInfo:v33];

  if ([v19 count])
  {
    v34 = +[SBDefaults localDefaults];
    v35 = [v34 notificationDefaults];

    v36 = [(NSMutableSet *)self->_displayIDsWithBadgingEnabled allObjects];
    [v35 setDisplayIDsWithBadgingEnabled:v36];
  }
}

- (void)observer:(id)a3 updateSectionInfo:(id)a4
{
  v5 = [MEMORY[0x277CBEA60] arrayWithObject:a4];
  [(SBIconController *)self _updateEnabledBadgesSetWithSections:v5];
}

- (void)observer:(id)a3 noteServerConnectionStateChanged:(BOOL)a4
{
  if (a4)
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __62__SBIconController_observer_noteServerConnectionStateChanged___block_invoke;
    v4[3] = &unk_2783AD2E0;
    v4[4] = self;
    [a3 getSectionInfoWithCompletion:v4];
  }
}

- (void)_applicationIconDataSourceDidChange:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = [a3 object];
  v5 = [v4 info];
  v6 = [v5 isAppClip];

  if (v6)
  {
    v7 = [MEMORY[0x277D75D70] appClips];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __56__SBIconController__applicationIconDataSourceDidChange___block_invoke;
    v27[3] = &unk_2783B0100;
    v28 = v4;
    v8 = [v7 bs_filter:v27];

    v9 = [(SBIconController *)self iconModel];
    if (v9)
    {
      v21 = v8;
      v22 = v4;
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v10 = v8;
      v11 = [v10 countByEnumeratingWithState:&v23 objects:v29 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v24;
        v14 = *MEMORY[0x277D66730];
        do
        {
          v15 = 0;
          do
          {
            if (*v24 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v16 = [*(*(&v23 + 1) + 8 * v15) identifier];
            v17 = [v9 bookmarkIconForWebClipIdentifier:v16];

            if (v17)
            {
              v18 = [MEMORY[0x277CCAB98] sbh_leafIconDataSourceNotificationCenter];
              v19 = [v17 bookmark];
              [v18 postNotificationName:v14 object:v19 userInfo:0];
            }

            ++v15;
          }

          while (v12 != v15);
          v12 = [v10 countByEnumeratingWithState:&v23 objects:v29 count:16];
        }

        while (v12);
      }

      v8 = v21;
      v4 = v22;
    }
  }

  else
  {
    v20 = [MEMORY[0x277CCAB98] sbh_leafIconDataSourceNotificationCenter];
    [v20 postNotificationName:*MEMORY[0x277D66730] object:v4 userInfo:0];
  }
}

uint64_t __56__SBIconController__applicationIconDataSourceDidChange___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 applicationBundleIdentifier];
  v4 = [*(a1 + 32) bundleIdentifier];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

- (void)profileConnectionDidReceiveEffectiveSettingsChangedNotification:(id)a3 userInfo:(id)a4
{
  v8 = *MEMORY[0x277D85DE8];
  self->_allowsUninstall = [a3 effectiveBoolValueForSetting:{*MEMORY[0x277D25D20], a4}] != 2;
  v5 = SBLogIconController();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    allowsUninstall = self->_allowsUninstall;
    v7[0] = 67109120;
    v7[1] = allowsUninstall;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Profile connection settings changed; allowsUninstall: %{BOOL}u", v7, 8u);
  }
}

- (void)profileConnectionDidReceiveProfileListChangedNotification:(id)a3 userInfo:(id)a4
{
  v5 = [MEMORY[0x277D0AB20] sharedInstance];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __87__SBIconController_profileConnectionDidReceiveProfileListChangedNotification_userInfo___block_invoke;
  v7[3] = &unk_2783A8C18;
  v7[4] = self;
  v6 = [MEMORY[0x277D0AB18] eventWithName:@"SBIconController-ProfileListChanged-IconModelSelection" handler:v7];
  [v5 executeOrAppendEvent:v6];
}

- (void)applicationRestrictionControllerWillPostAppVisibilityUpdate:(id)a3
{
  if ([a3 isAllowlistActiveAndTransient] && !self->_isAppAllowlistActiveAndTransient)
  {
    v4 = SBLogIconController();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_INFO, "App visibility updates will be treated as transient. Updating icon model store.", v5, 2u);
    }

    self->_isAppAllowlistActiveAndTransient = 1;
    [(SBIconController *)self _updateIconModelStore];
  }
}

- (void)applicationRestrictionController:(id)a3 didUpdateVisibleTags:(id)a4 hiddenTags:(id)a5
{
  v7 = a5;
  v8 = [a4 copy];
  visibleTags = self->_visibleTags;
  self->_visibleTags = v8;

  v10 = [v7 copy];
  hiddenTags = self->_hiddenTags;
  self->_hiddenTags = v10;

  v12 = [(SBIconController *)self iconModel];
  [v12 setVisibilityOfIconsWithVisibleTags:self->_visibleTags hiddenTags:self->_hiddenTags];
}

- (void)applicationRestrictionControllerDidPostAppVisibilityUpdate:(id)a3
{
  if (([a3 isAllowlistActiveAndTransient] & 1) == 0 && self->_isAppAllowlistActiveAndTransient)
  {
    v4 = SBLogIconController();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_INFO, "App visibility updates will no longer be treated as transient. Updating icon model store.", v5, 2u);
    }

    self->_isAppAllowlistActiveAndTransient = 0;
    [(SBIconController *)self _updateIconModelStore];
  }
}

- (id)_createWidgetIconWithDataSource:(id)a3 gridSize:(id)a4
{
  v5 = MEMORY[0x277D66450];
  v6 = a4;
  v7 = a3;
  v8 = [[v5 alloc] initWithUniqueLeafIdentifier];
  [v8 addIconDataSource:v7];

  [v8 setGridSizeClass:v6];

  return v8;
}

- (id)_createWidgetIconWithKind:(id)a3 extensionBundleIdentifier:(id)a4 gridSize:(id)a5
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = MEMORY[0x277D66320];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[v7 alloc] initWithKind:v10 extensionBundleIdentifier:v9];

  v12 = SBLogWidgets();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [v11 extensionBundleIdentifier];
    v14 = [v11 uniqueIdentifier];
    v17 = 138543618;
    v18 = v13;
    v19 = 2114;
    v20 = v14;
    _os_log_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_DEFAULT, "Widget %{public}@ %{public}@ created from icon controller.", &v17, 0x16u);
  }

  v15 = [objc_alloc(MEMORY[0x277D66450]) initWithWidget:v11];
  [v15 setGridSizeClass:v8];

  return v15;
}

- (id)_createWidgetIconWithDescriptors:(id)a3 gridSize:(id)a4
{
  v5 = MEMORY[0x277D66450];
  v6 = a4;
  v7 = a3;
  v8 = [[v5 alloc] initWithCHSWidgetDescriptors:v7];

  [v8 setGridSizeClass:v6];

  return v8;
}

- (BOOL)canSaveIconState
{
  v2 = +[SBSyncController sharedInstance];
  v3 = [v2 restoreState];

  if (v3 == 1)
  {
    v4 = SBLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "Icon state save prevented due to in progress restore", v6, 2u);
    }
  }

  return v3 != 1;
}

- (void)didSaveIconState
{
  if (self->_sendITunesNotification)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.springboard.iconStateChanged", 0, 0, 1u);
  }

  proactiveUsageObserver = self->_proactiveUsageObserver;

  [(SBProactiveHomeScreenUsageObserver *)proactiveUsageObserver pushCurrentHomeScreenConfiguration];
}

- (BOOL)_isWidgetWithContainerBundleIdentifierValid:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = SBLogWidgetDiscoverability();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 138412290;
    v24 = v4;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "[ContainerBundleIdentifier debugging] applicationIdentifier = %@", &v23, 0xCu);
  }

  v6 = +[SBSyncController sharedInstance];
  v7 = [v6 isRestoring];

  if ((v7 & 1) == 0)
  {
    v9 = [(SBIconController *)self applicationPlaceholderController];
    v10 = [v9 placeholderForDisplayID:v4];

    if (v10)
    {
      v11 = SBLogWidgetDiscoverability();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v23) = 0;
        _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEFAULT, "[ContainerBundleIdentifier debugging] valid placeholder", &v23, 2u);
      }

      LOBYTE(v8) = 1;
      goto LABEL_29;
    }

    v11 = [(SBIconController *)self applicationController];
    v12 = SBLogWidgetDiscoverability();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v11 allBundleIdentifiers];
      v23 = 138412290;
      v24 = v13;
      _os_log_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_DEFAULT, "[ContainerBundleIdentifier debugging] all application bundle identifiers = %@", &v23, 0xCu);
    }

    v14 = [v11 applicationWithBundleIdentifier:v4];
    v15 = SBLogWidgetDiscoverability();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 138412290;
      v24 = v14;
      _os_log_impl(&dword_21ED4E000, v15, OS_LOG_TYPE_DEFAULT, "[ContainerBundleIdentifier debugging] application = %@", &v23, 0xCu);
    }

    if (!v14)
    {
      v16 = SBLogWidgetDiscoverability();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v23) = 0;
        _os_log_impl(&dword_21ED4E000, v16, OS_LOG_TYPE_DEFAULT, "[ContainerBundleIdentifier debugging] not valid application", &v23, 2u);
      }

      LOBYTE(v8) = 0;
      goto LABEL_28;
    }

    v16 = [v14 info];
    if (![v16 isRestricted])
    {
      LOBYTE(v8) = 1;
LABEL_28:

LABEL_29:
      goto LABEL_30;
    }

    v8 = [v4 isEqualToString:@"com.apple.news"];
    v17 = [MEMORY[0x277D262A0] sharedConnection];
    v18 = [v17 effectiveBoolValueForSetting:*MEMORY[0x277D25FC0]];

    if (v18 != 1)
    {
      v8 = 0;
    }

    v19 = SBLogWidgetDiscoverability();
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
    if (v8 == 1)
    {
      if (v20)
      {
        LOWORD(v23) = 0;
        v21 = "[ContainerBundleIdentifier debugging] News app is restricted, but the widget is valid and not restricted";
LABEL_26:
        _os_log_impl(&dword_21ED4E000, v19, OS_LOG_TYPE_DEFAULT, v21, &v23, 2u);
      }
    }

    else if (v20)
    {
      LOWORD(v23) = 0;
      v21 = "[ContainerBundleIdentifier debugging] not valid restricted";
      goto LABEL_26;
    }

    goto LABEL_28;
  }

  LOBYTE(v8) = 1;
LABEL_30:

  return v8;
}

- (void)appProtectionSubjectsChanged:(id)a3 forSubscription:(id)a4
{
  v6 = a3;
  v7 = a4;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__SBIconController_appProtectionSubjectsChanged_forSubscription___block_invoke;
  block[3] = &unk_2783A8ED8;
  v11 = v7;
  v12 = self;
  v13 = v6;
  v8 = v6;
  v9 = v7;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __65__SBIconController_appProtectionSubjectsChanged_forSubscription___block_invoke(uint64_t a1)
{
  v1 = a1;
  v30 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) appProtectionSubjectMonitorSubscription];
  LODWORD(v2) = [v2 isEqual:v3];

  if (v2)
  {
    [*(v1 + 48) bs_map:&__block_literal_global_294];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    obj = v26 = 0u;
    v4 = [obj countByEnumeratingWithState:&v23 objects:v29 count:16];
    if (v4)
    {
      v6 = v4;
      v7 = *v24;
      *&v5 = 138412290;
      v19 = v5;
      v20 = v1;
      do
      {
        v8 = 0;
        v21 = v6;
        do
        {
          if (*v24 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v23 + 1) + 8 * v8);
          v10 = [v9 bundleIdentifier];
          v11 = [*(v1 + 40) hiddenAppBundleIdentifiers];
          if ([v9 isHidden])
          {
            v12 = [*(v1 + 40) hiddenAppBundleIdentifiers];
            if (!v12)
            {
              v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
            }

            [v12 addObject:v10];
            v13 = [*(v1 + 40) iconManager];
            v14 = [v13 iconModel];
            v15 = [v9 bundleIdentifier];
            v16 = [v14 applicationIconForBundleIdentifier:v15];

            if (v16)
            {
              [v13 addIconToIgnoredList:v16 options:3 completion:0];
            }

            else
            {
              v17 = SBLogAppProtection();
              if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
              {
                v18 = [v9 bundleIdentifier];
                *buf = v19;
                v28 = v18;
                _os_log_impl(&dword_21ED4E000, v17, OS_LOG_TYPE_DEFAULT, "Could not add bundle identifier:%@ to ignored list. app icon is nil", buf, 0xCu);
              }
            }

            v6 = v21;

            v1 = v20;
          }

          else if ([v11 containsObject:v10])
          {
            [v11 removeObject:v10];
          }

          ++v8;
        }

        while (v6 != v8);
        v6 = [obj countByEnumeratingWithState:&v23 objects:v29 count:16];
      }

      while (v6);
    }
  }
}

void *__65__SBIconController_appProtectionSubjectsChanged_forSubscription___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_class();
  v4 = v2;
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v3 = v4;
    }

    else
    {
      v3 = 0;
    }
  }

  v5 = v3;

  return v3;
}

- (void)proactiveHomeScreenSuggestionProviderDidUpdatePrediction:(id)a3
{
  v5 = [a3 currentPrediction];
  v4 = [(SBIconController *)self proactiveUsageObserver];
  [v4 setCurrentPrediction:v5];
}

- (id)proactiveHomeScreenUsageObserver:(id)a3 intentForWidget:(id)a4 ofIcon:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [(SBIconController *)self iconManager];
  v10 = [v9 intentForWidget:v8 ofIcon:v7];

  return v10;
}

- (void)updateRootFolderWithCurrentDoNotDisturbState
{
  v3 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__SBIconController_updateRootFolderWithCurrentDoNotDisturbState__block_invoke;
  block[3] = &unk_2783A8C18;
  block[4] = self;
  dispatch_async(v3, block);
}

void __64__SBIconController_updateRootFolderWithCurrentDoNotDisturbState__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 328) queryCurrentStateWithError:0];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __64__SBIconController_updateRootFolderWithCurrentDoNotDisturbState__block_invoke_2;
  v4[3] = &unk_2783A92D8;
  v4[4] = *(a1 + 32);
  v5 = v2;
  v3 = v2;
  dispatch_async(MEMORY[0x277D85CD0], v4);
}

- (void)_updateFocusModeManagerWithDoNotDisturbState:(id)a3
{
  v4 = a3;
  v9 = [(SBIconController *)self iconManager];
  v5 = [v9 focusModeManager];
  v6 = [(SBIconController *)self _focusModeFromDoNotDisturbState:v4];

  [v5 setActiveFocusMode:v6];
  if ([v6 customizedHomeScreenPagesEnabled])
  {
    v7 = [(SBIconController *)self mainDisplayWindowScene];
    v8 = [v7 floatingDockController];
    [v8 resetRecentsAndSuggestions];
  }
}

- (id)_focusModeFromDoNotDisturbState:(id)a3
{
  v53 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 isActive])
  {
    v5 = [v4 activeModeConfiguration];
    v6 = [v5 mode];
    v7 = [v6 identifier];
    v8 = [v7 UUIDString];

    v9 = [(SBIconController *)self rootFolder];
    v10 = [objc_alloc(MEMORY[0x277D66198]) initWithIdentifier:v8 folder:v9];
    v11 = [v6 name];
    [v10 setName:v11];

    v12 = [v6 symbolImageName];
    [v10 setSymbol:v12];

    if ([v6 semanticType] == 1)
    {
      [v10 setSleepFocus:1];
    }

    v36 = [v6 tintColorName];
    v13 = NSSelectorFromString(v36);
    v42 = v4;
    v38 = v9;
    if (objc_opt_respondsToSelector())
    {
      v14 = [MEMORY[0x277D75348] performSelector:v13];
    }

    else
    {
      v15 = [MEMORY[0x277D05930] defaultTintColorName];
      v16 = NSSelectorFromString(v15);
      if (objc_opt_respondsToSelector())
      {
        v14 = [MEMORY[0x277D75348] performSelector:v16];
      }

      else
      {
        v14 = 0;
      }
    }

    [v10 setColor:v14];
    v17 = [v5 configuration];
    v18 = [v17 hideApplicationBadges];
    if ([v17 applicationConfigurationType])
    {
      if ([v17 applicationConfigurationType] == 1)
      {
        [v10 setHidesOnlyDeniedApplicationBadges:v18 == 2];
      }
    }

    else
    {
      [v10 setShowsOnlyAllowedApplicationBadges:{v18 == 2, v14, v36, v38, v8}];
    }

    v41 = v5;
    v19 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v20 = [v17 allowedApplicationIdentifiers];
    v21 = [v20 allKeys];

    v22 = [v21 countByEnumeratingWithState:&v47 objects:v52 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v48;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v48 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = [*(*(&v47 + 1) + 8 * i) bundleID];
          [v19 addObject:v26];
        }

        v23 = [v21 countByEnumeratingWithState:&v47 objects:v52 count:16];
      }

      while (v23);
    }

    [v10 setAllowedApplicationBundleIdentifiers:v19];
    v27 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v28 = [v17 deniedApplicationIdentifiers];
    v29 = [v28 countByEnumeratingWithState:&v43 objects:v51 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v44;
      do
      {
        for (j = 0; j != v30; ++j)
        {
          if (*v44 != v31)
          {
            objc_enumerationMutation(v28);
          }

          v33 = [*(*(&v43 + 1) + 8 * j) bundleID];
          [v27 addObject:v33];
        }

        v30 = [v28 countByEnumeratingWithState:&v43 objects:v51 count:16];
      }

      while (v30);
    }

    [v10 setDeniedApplicationBundleIdentifiers:v27];
    v4 = v42;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)modeConfigurationService:(id)a3 didReceiveAvailableModesUpdate:(id)a4
{
  v15 = 0;
  v5 = [a3 availableModesReturningError:{&v15, a4}];
  v6 = v15;
  if (v6)
  {
    v7 = SBLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [SBIconController modeConfigurationService:didReceiveAvailableModesUpdate:];
    }
  }

  v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __76__SBIconController_modeConfigurationService_didReceiveAvailableModesUpdate___block_invoke;
  v13[3] = &unk_2783B0148;
  v9 = v8;
  v14 = v9;
  [v5 enumerateObjectsUsingBlock:v13];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __76__SBIconController_modeConfigurationService_didReceiveAvailableModesUpdate___block_invoke_2;
  v11[3] = &unk_2783A92D8;
  v11[4] = self;
  v12 = v9;
  v10 = v9;
  dispatch_async(MEMORY[0x277D85CD0], v11);
}

void __76__SBIconController_modeConfigurationService_didReceiveAvailableModesUpdate___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 UUIDString];

  [*(a1 + 32) addObject:v4];
}

void __76__SBIconController_modeConfigurationService_didReceiveAvailableModesUpdate___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) rootFolder];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __76__SBIconController_modeConfigurationService_didReceiveAvailableModesUpdate___block_invoke_3;
  v4[3] = &unk_2783B0198;
  v5 = *(a1 + 40);
  v6 = v2;
  v3 = v2;
  [v3 enumerateListsUsingBlock:v4];
}

void __76__SBIconController_modeConfigurationService_didReceiveAvailableModesUpdate___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 focusModeIdentifiers];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __76__SBIconController_modeConfigurationService_didReceiveAvailableModesUpdate___block_invoke_4;
  v6[3] = &unk_2783B0170;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = v3;
  v5 = v3;
  [v4 enumerateObjectsUsingBlock:v6];
}

void __76__SBIconController_modeConfigurationService_didReceiveAvailableModesUpdate___block_invoke_4(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (([*(a1 + 32) containsObject:v3] & 1) == 0)
  {
    v4 = SBLogFocusModes();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138543362;
      v7 = v3;
      _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "Removing a focus mode that no longer exists: %{public}@", &v6, 0xCu);
    }

    v5 = [objc_alloc(MEMORY[0x277D66198]) initWithIdentifier:v3 folder:*(a1 + 40)];
    [v5 removeFromList:*(a1 + 48)];
  }
}

- (void)stateService:(id)a3 didReceiveDoNotDisturbStateUpdate:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __67__SBIconController_stateService_didReceiveDoNotDisturbStateUpdate___block_invoke;
  v7[3] = &unk_2783A92D8;
  v8 = v5;
  v9 = self;
  v6 = v5;
  dispatch_async(MEMORY[0x277D85CD0], v7);
}

void __67__SBIconController_stateService_didReceiveDoNotDisturbStateUpdate___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) state];
  [*(a1 + 40) _updateFocusModeManagerWithDoNotDisturbState:v2];
}

- (id)libraryCategoryMapProvider
{
  categoryMapProvider = self->_categoryMapProvider;
  if (!categoryMapProvider)
  {
    v4 = [(SBIconController *)self iconManager];
    v5 = [(SBIconController *)self iconModel];
    v6 = v5;
    if (v4)
    {
      if (v5)
      {
LABEL_4:
        v7 = objc_alloc_init(SBProactiveLibraryCategoryMapProviderSource);
        v8 = [objc_alloc(MEMORY[0x277D66228]) initWithSource:v7];
        v9 = self->_categoryMapProvider;
        self->_categoryMapProvider = v8;

        categoryMapProvider = self->_categoryMapProvider;
        goto LABEL_5;
      }
    }

    else
    {
      [SBIconController libraryCategoryMapProvider];
      if (v6)
      {
        goto LABEL_4;
      }
    }

    [SBIconController libraryCategoryMapProvider];
    goto LABEL_4;
  }

LABEL_5:

  return categoryMapProvider;
}

- (void)addIconControllerObserver:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (!v4)
  {
    [SBIconController addIconControllerObserver:];
    v4 = 0;
  }

  iconControllerObservers = self->_iconControllerObservers;
  if (!iconControllerObservers)
  {
    v6 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    v7 = self->_iconControllerObservers;
    self->_iconControllerObservers = v6;

    v4 = v8;
    iconControllerObservers = self->_iconControllerObservers;
  }

  [(NSHashTable *)iconControllerObservers addObject:v4];
}

- (void)removeIconControllerObserver:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    [SBIconController removeIconControllerObserver:];
    v4 = 0;
  }

  [(NSHashTable *)self->_iconControllerObservers removeObject:v4];
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBIconController *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v5 = [(SBIconController *)self iconModel];
  v6 = [v4 appendObject:v5 withName:@"model"];

  return v4;
}

- (id)succinctDescription
{
  v2 = [(SBIconController *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)_addStateCaptureHandlerForKeyDisplayIDsWithBadgingEnabled
{
  objc_initWeak(&location, self);
  v2 = MEMORY[0x277D85CD0];
  objc_copyWeak(&v5, &location);
  v3 = BSLogAddStateCaptureBlockWithTitle();
  objc_destroyWeak(&v5);

  objc_destroyWeak(&location);

  return v3;
}

id __77__SBIconController__addStateCaptureHandlerForKeyDisplayIDsWithBadgingEnabled__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained[5] description];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_addStateCaptureHandlerForInterestingAppIconLocations
{
  objc_initWeak(&location, self);
  v2 = MEMORY[0x277D85CD0];
  objc_copyWeak(&v5, &location);
  v3 = BSLogAddStateCaptureBlockWithTitle();
  objc_destroyWeak(&v5);

  objc_destroyWeak(&location);

  return v3;
}

id __73__SBIconController__addStateCaptureHandlerForInterestingAppIconLocations__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v3 = [WeakRetained rootFolder];
    v4 = [v3 indexPathForIconWithIdentifier:@"com.apple.AppStore"];
    v5 = v4;
    if (v4)
    {
      v6 = [v4 sb_iconPathDescription];
      [v2 setObject:v6 forKeyedSubscript:@"rdar://67699908"];
    }

    else
    {
      [v2 setObject:@"MISSING" forKeyedSubscript:@"rdar://67699908"];
    }

    v7 = [WeakRetained applicationController];
    v8 = [v7 applicationWithBundleIdentifier:@"com.apple.AppStore"];

    v9 = MEMORY[0x277CCABB0];
    v10 = [WeakRetained applicationController];
    v11 = [v10 restrictionController];
    v12 = [v9 numberWithBool:{objc_msgSend(v11, "isApplicationIdentifierRestricted:", @"com.apple.AppStore"}];
    [v2 setObject:v12 forKeyedSubscript:@"rdar://67699908 - restricted"];

    v13 = MEMORY[0x277CCABB0];
    v14 = [v8 info];
    v15 = [v13 numberWithBool:{objc_msgSend(v14, "isRestricted")}];
    [v2 setObject:v15 forKeyedSubscript:@"rdar://67699908 - info restricted"];

    v16 = MEMORY[0x277CCABB0];
    v17 = [v8 info];
    v18 = [v16 numberWithBool:{objc_msgSend(v17, "isBlocked")}];
    [v2 setObject:v18 forKeyedSubscript:@"rdar://67699908 - info blocked"];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)_addStateCaptureHandlerForRestrictions
{
  objc_initWeak(&location, self);
  v2 = MEMORY[0x277D85CD0];
  objc_copyWeak(&v5, &location);
  v3 = BSLogAddStateCaptureBlockWithTitle();
  objc_destroyWeak(&v5);

  objc_destroyWeak(&location);

  return v3;
}

id __58__SBIconController__addStateCaptureHandlerForRestrictions__block_invoke(uint64_t a1)
{
  v16[5] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained policyAggregator];
    v14 = 0;
    v4 = [v3 allowsCapability:18 explanation:&v14];
    v5 = v14;
    v15[0] = @"hasRestrictedEnforcedLayout";
    v6 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v2, "hasRestrictedEnforcedLayout")}];
    v16[0] = v6;
    v15[1] = @"isUninstallingSystemAppsRestricted";
    v7 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v2, "isUninstallingSystemAppsRestricted")}];
    v16[1] = v7;
    v15[2] = @"allowsUninstall";
    v8 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v2, "allowsUninstall")}];
    v16[2] = v8;
    v15[3] = @"isEditingAllowed";
    v9 = [MEMORY[0x277CCABB0] numberWithBool:v4];
    v10 = v9;
    v15[4] = @"editingAllowedExplanation";
    v11 = @"<none>";
    if (v5)
    {
      v11 = v5;
    }

    v16[3] = v9;
    v16[4] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:5];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

id __64__SBIconController__addStateCaptureHandlerForHomeScreenDefaults__block_invoke()
{
  v0 = objc_opt_new();
  v1 = +[SBDefaults localDefaults];
  v2 = [v1 homeScreenDefaults];

  v3 = [v2 shouldPrepareDefaultTodayList];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:v3];
  [v0 setObject:v4 forKeyedSubscript:@"shouldPrepareDefaultTodayList"];

  v5 = [v2 shouldPrepareStackForDefaultTodayList];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:v5];
  [v0 setObject:v6 forKeyedSubscript:@"shouldPrepareStackForDefaultTodayList"];

  v7 = [v2 overriddenScreenType];
  [v0 bs_setSafeObject:v7 forKey:@"overriddenScreenType"];
  v8 = [v2 automaticallyAddsNewApplications];
  v9 = [MEMORY[0x277CCABB0] numberWithBool:v8];
  [v0 setObject:v9 forKeyedSubscript:@"automaticallyAddsNewApplications"];

  v10 = [v2 automaticallyAddsNewApplicationsExists];
  v11 = [MEMORY[0x277CCABB0] numberWithBool:v10];
  [v0 setObject:v11 forKeyedSubscript:@"automaticallyAddsNewApplicationsExists"];

  v12 = [v2 showsBadgesInAppLibrary];
  v13 = [MEMORY[0x277CCABB0] numberWithBool:v12];
  [v0 setObject:v13 forKeyedSubscript:@"showsBadgesInAppLibrary"];

  v14 = [v2 showsHomeScreenSearchAffordance];
  v15 = [MEMORY[0x277CCABB0] numberWithBool:v14];
  [v0 setObject:v15 forKeyedSubscript:@"showsHomeScreenSearchAffordance"];

  v16 = [v2 pagesHaveEverBeenHidden];
  v17 = [MEMORY[0x277CCABB0] numberWithBool:v16];
  [v0 setObject:v17 forKeyedSubscript:@"pagesHaveEverBeenHidden"];

  v18 = [v2 shouldShowLibraryEducationView];
  v19 = [MEMORY[0x277CCABB0] numberWithBool:v18];
  [v0 setObject:v19 forKeyedSubscript:@"shouldShowLibraryEducationView"];

  v20 = [v2 shouldUseFlatIconsEverywhere];
  v21 = [MEMORY[0x277CCABB0] numberWithBool:v20];
  [v0 setObject:v21 forKeyedSubscript:@"shouldUseFlatIconsEverywhere"];

  v22 = [v2 shouldDisableSpecularEverywhere];
  v23 = [MEMORY[0x277CCABB0] numberWithBool:v22];
  [v0 setObject:v23 forKeyedSubscript:@"shouldDisableSpecularEverywhere"];

  v24 = [v2 shouldDisableWidgetSpecular];
  v25 = [MEMORY[0x277CCABB0] numberWithBool:v24];
  [v0 setObject:v25 forKeyedSubscript:@"shouldDisableWidgetSpecular"];

  v26 = [v2 shouldDisableDockSpecular];
  v27 = [MEMORY[0x277CCABB0] numberWithBool:v26];
  [v0 setObject:v27 forKeyedSubscript:@"shouldDisableDockSpecular"];

  v28 = [v2 shouldDisableFolderSpecular];
  v29 = [MEMORY[0x277CCABB0] numberWithBool:v28];
  [v0 setObject:v29 forKeyedSubscript:@"shouldDisableFolderSpecular"];

  v30 = [v2 shouldDisableGlassDock];
  v31 = [MEMORY[0x277CCABB0] numberWithBool:v30];
  [v0 setObject:v31 forKeyedSubscript:@"shouldDisableGlassDock"];

  v32 = [v2 shouldExcludeDockShadow];
  v33 = [MEMORY[0x277CCABB0] numberWithBool:v32];
  [v0 setObject:v33 forKeyedSubscript:@"shouldExcludeDockShadow"];

  v34 = [v2 shouldExcludeSearchShadow];
  v35 = [MEMORY[0x277CCABB0] numberWithBool:v34];
  [v0 setObject:v35 forKeyedSubscript:@"shouldExcludeSearchShadow"];

  v36 = [v2 shouldExcludeAllClearGlassShadows];
  v37 = [MEMORY[0x277CCABB0] numberWithBool:v36];
  [v0 setObject:v37 forKeyedSubscript:@"shouldExcludeAllClearGlassShadows"];

  v38 = [v2 shouldDisableParallax];
  v39 = [MEMORY[0x277CCABB0] numberWithBool:v38];
  [v0 setObject:v39 forKeyedSubscript:@"shouldDisableParallax"];

  return v0;
}

- (SBWindowScene)windowScene
{
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);

  return WeakRetained;
}

- (APSubjectMonitorSubscription)appProtectionSubjectMonitorSubscription
{
  WeakRetained = objc_loadWeakRetained(&self->_appProtectionSubjectMonitorSubscription);

  return WeakRetained;
}

+ (SBIconController)sharedInstance
{
  v2 = SBLogIconController();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    +[SBIconController(AXStagingHack) sharedInstance];
  }

  v3 = [SBApp windowSceneManager];
  v4 = [v3 embeddedDisplayWindowScene];
  v5 = [v4 iconController];

  return v5;
}

+ (id)sharedInstanceIfExists
{
  v2 = SBLogIconController();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    +[SBIconController(AXStagingHack) sharedInstance];
  }

  v3 = [SBApp windowSceneManager];
  v4 = [v3 embeddedDisplayWindowScene];
  v5 = [v4 iconController];

  return v5;
}

- (BOOL)isTodayOverlayPresented
{
  v3 = SBLogIconController();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    +[SBIconController(AXStagingHack) sharedInstance];
  }

  v4 = [(SBIconController *)self iconManager];
  v5 = [v4 isOverlayTodayViewVisible];

  return v5;
}

- (id)_currentFolderController
{
  v3 = SBLogIconController();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    +[SBIconController(AXStagingHack) sharedInstance];
  }

  v4 = [(SBIconController *)self _mainDisplayHomeScreenController];
  v5 = [v4 _currentFolderController];

  return v5;
}

- (SBTodayViewController)coverSheetTodayViewController
{
  v3 = SBLogIconController();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    +[SBIconController(AXStagingHack) sharedInstance];
  }

  v4 = [(SBIconController *)self _mainDisplayHomeScreenController];
  v5 = [v4 coverSheetTodayViewController];

  return v5;
}

- (id)_mainDisplayHomeScreenController
{
  v2 = [(SBIconController *)self mainDisplayWindowScene];
  v3 = [v2 homeScreenController];

  return v3;
}

void __59__SBIconController__updateUninstallingSystemAppsRestricted__block_invoke_2_cold_1(unsigned __int8 *a1, char a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4[0] = 67109376;
  v4[1] = v3;
  v5 = 1024;
  v6 = a2 & 1;
  _os_log_debug_impl(&dword_21ED4E000, log, OS_LOG_TYPE_DEBUG, "Checking restriction for uninstalling system apps. Apple account restricted: %i, iTunes Store account restricted: %i", v4, 0xEu);
}

- (void)setModel:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_10();
  _os_log_debug_impl(&dword_21ED4E000, v0, OS_LOG_TYPE_DEBUG, "Changing icon model from %@ to %@", v1, 0x16u);
}

void __64__SBIconController__addSmartStackToTodayList_completionHandler___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __64__SBIconController__addSmartStackToTodayList_completionHandler___block_invoke_2_cold_2(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_7(&dword_21ED4E000, v2, v3, "Couldn't fetch default widget stack with error: %@", v4, v5, v6, v7, v8);
}

void __64__SBIconController__addSmartStackToTodayList_completionHandler___block_invoke_247_cold_1()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)modeConfigurationService:didReceiveAvailableModesUpdate:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)libraryCategoryMapProvider
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)addIconControllerObserver:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"observer" object:? file:? lineNumber:? description:?];
}

- (void)removeIconControllerObserver:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"observer" object:? file:? lineNumber:? description:?];
}

@end