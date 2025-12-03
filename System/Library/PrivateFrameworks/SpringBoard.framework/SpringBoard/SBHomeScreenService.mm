@interface SBHomeScreenService
+ (BOOL)isHomeScreenLayoutAvailableForIconController:(id)controller;
- (BOOL)_isLibraryDismissalAllowedWithCompletion:(id)completion;
- (BOOL)_isLibraryPresentationAllowedWithCompletion:(id)completion;
- (BOOL)authenticateIconStyleRequestForAuditToken:(id)token error:(id *)error;
- (BOOL)canSwapApplicationIconsInProminentPositionsWithBundleIdentifier:(id)identifier withApplicationIconsWithWithBundleIdentifier:(id)bundleIdentifier;
- (BOOL)debugContinuityWithBadgeType:(id)type deviceTypeIdentifier:(id)identifier;
- (BOOL)hasConfiguredFilesStackWithURL:(id)l;
- (BOOL)hasWidgetWithBundleIdentifier:(id)identifier;
- (NSNumber)addsNewIconsToHomeScreenValue;
- (NSNumber)homeScreenLayoutAvailability;
- (NSNumber)largeIconLayoutEnabledValue;
- (NSNumber)largeIconSizeEnabledValue;
- (NSNumber)showsBadgesInAppLibraryValue;
- (NSNumber)showsHomeScreenSearchAffordanceValue;
- (NSString)allIconLists;
- (SBHomeScreenService)initWithIconController:(id)controller homeScreenController:(id)screenController;
- (SBSDebugActiveWidgetInfo)debuggingActiveWidgetInfo;
- (SBSHomeScreenIconStyleConfiguration)homeScreenIconStyleConfiguration;
- (SBSHomeScreenServiceArrayOfNumbers)overflowSlotCounts;
- (SBSHomeScreenServiceArrayOfStrings)allHomeScreenApplicationBundleIdentifiers;
- (SBSHomeScreenServiceArrayOfStrings)allHomeScreenApplicationPlaceholderBundleIdentifiers;
- (id)_currentStyleConfiguration;
- (id)_currentStyleConfigurationForConnection:(id)connection;
- (id)_translatedSBSPresentationErrorCompletionForSBHPresentationErrorCompletion:(id)completion;
- (id)badgeValueForIconWithApplicationBundleIdentifier:(id)identifier;
- (id)configureCategoryMapProviderToUseCategoryMapAtURL:(id)l;
- (id)folderPathToIconWithBundleIdentifier:(id)identifier;
- (id)homeScreenDefaults;
- (id)osMigrationDefaultHomeScreenLayout;
- (id)osMigrationHomeScreenLayout;
- (id)silhouetteLayoutForPageAtIndex:(id)index;
- (void)_requestAppLibraryUpdate:(id)update categoryMapProvider:(id)provider reason:(id)reason optionalCompletionHandler:(id)handler;
- (void)addApplicationIconToHomeScreenWithBundleIdentifier:(id)identifier;
- (void)addApplicationIconToHomeScreenWithBundleIdentifier:(id)identifier inPage:(id)page atPositionDescription:(id)description;
- (void)addDebugIconWithSizeClassDescription:(id)description inPage:(id)page atPositionDescription:(id)positionDescription;
- (void)addEmptyPage;
- (void)addFileStackWithURL:(id)l;
- (void)addPageOfApplicationIconsWithBundleIdentifier:(id)identifier;
- (void)addSuggestedPageWithPageType:(id)type focusModeIdentifier:(id)identifier;
- (void)addsNewIconsToHomeScreenValue;
- (void)allHomeScreenApplicationBundleIdentifiers;
- (void)allHomeScreenApplicationPlaceholderBundleIdentifiers;
- (void)allIconLists;
- (void)badgeValueForIconWithApplicationBundleIdentifier:(id)identifier completionHandler:(id)handler;
- (void)beginObservingNotificationsForIconBadgeValue;
- (void)beginObservingNotificationsForIconTintColor;
- (void)changeDisplayedDateOffsetOverride:(id)override;
- (void)changeDisplayedDateOverride:(id)override;
- (void)changeDisplayedDateWithAutoupdatingSecondsOverride:(id)override;
- (void)clearAllOverflowSlotCounts;
- (void)clearNewlyInstalledAndRecentlyUpdatedAppIndicators;
- (void)clearTodayViewLayout;
- (void)configureDeweyEachAppHasItsOwnCategory;
- (void)configureDeweyOneCategoryWithAllApps;
- (void)configureLibraryWithCategoryLimit:(id)limit;
- (void)dealloc;
- (void)debuggingActiveWidgetInfo;
- (void)deleteAllWebClips;
- (void)dismissAppLibraryWithCompletion:(id)completion;
- (void)endObservingNotificationsForIconBadgeValue;
- (void)endObservingNotificationsForIconTintColor;
- (void)forbidApplicationBundleIdentifierFromLibrary:(id)library withCompletion:(id)completion;
- (void)homeScreenIconStyleConfiguration;
- (void)homeScreenLayoutAvailability;
- (void)iconBadgeVisibilityDidChange:(id)change;
- (void)iconModelDidLayout:(id)layout;
- (void)ignoreAllApps;
- (void)importOSMigrationHomeScreenLayout:(id)layout;
- (void)insertEmptyPageAtIndex:(id)index;
- (void)largeIconLayoutEnabledValue;
- (void)largeIconSizeEnabledValue;
- (void)leafIconDataSourceDidChange:(id)change;
- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context;
- (void)noteHomeScreenApplicationsDidChange;
- (void)noteHomeScreenLayoutAvailabilityDidChange;
- (void)noteHomeScreenLayoutDidChange;
- (void)noteInstalledWebClipsDidChange;
- (void)notifyObserversOfIconImageStyleChange;
- (void)organizeAllIconsAcrossPagesWithPageCount:(id)count;
- (void)organizeAllIconsIntoFoldersWithPageCount:(id)count;
- (void)osMigrationDefaultHomeScreenLayout;
- (void)osMigrationHomeScreenLayout;
- (void)overflowSlotCounts;
- (void)overrideBadgeValue:(id)value forBundleIdentifier:(id)identifier;
- (void)parsePositionDescription:(id)description gridPositionHandler:(id)handler indexPositionHandler:(id)positionHandler;
- (void)precacheIconLayersOnFirstPageWithAppearanceDescriptions:(id)descriptions;
- (void)presentAppLibraryAnimated:(id)animated completion:(id)completion;
- (void)presentAppLibraryCategoryPodForCategoryIdentifier:(id)identifier completion:(id)completion;
- (void)processUpdatesToBadgeValueForApplicationBundleIdentifiers:(id)identifiers;
- (void)randomizeAllIconsAcrossPagesWithPageCount:(id)count;
- (void)reloadHomeScreenLayout;
- (void)removeAllWidgets;
- (void)removeFileStackWithURL:(id)l;
- (void)removeWidgetsFromHomeScreen;
- (void)requestAppLibraryUpdate:(id)update reason:(id)reason completion:(id)completion;
- (void)requestSuggestedApplicationWithBundleIdentifier:(id)identifier assertionPort:(id)port completion:(id)completion;
- (void)resetCategoriesLayoutWithCompletion:(id)completion;
- (void)resetHomeScreenLayoutWithCompletion:(id)completion;
- (void)resetTodayViewLayout;
- (void)runDownloadingIconTest;
- (void)runFloatingDockStressTestWithCompletion:(id)completion;
- (void)runRemoveAndRestoreIconTest;
- (void)runWidgetDiscoverabilityTest;
- (void)setAddsNewIconsToHomeScreenValue:(id)value;
- (void)setHomeScreenIconStyleConfiguration:(id)configuration;
- (void)setHomeScreenIconStyleConfiguration:(id)configuration wallpaperDimmed:(id)dimmed;
- (void)setIconListsHidden:(id)hidden;
- (void)setLargeIconLayoutEnabledValue:(id)value;
- (void)setLargeIconSizeEnabledValue:(id)value;
- (void)setObservingHomeScreenApplications:(id)applications;
- (void)setObservingHomeScreenLayout:(id)layout;
- (void)setObservingHomeScreenLayoutAvailability:(id)availability;
- (void)setObservingIconBadgeValue:(id)value;
- (void)setObservingIconTintColor:(id)color;
- (void)setObservingInstalledWebClips:(id)clips;
- (void)setShowsBadgesInAppLibraryValue:(id)value;
- (void)setShowsHomeScreenSearchAffordanceValue:(id)value;
- (void)setupHomeScreenForWidgetScrollPerformanceTest;
- (void)showsBadgesInAppLibraryValue;
- (void)showsHomeScreenSearchAffordanceValue;
- (void)swapApplicationIconsInProminentPositionsWithBundleIdentifier:(id)identifier withApplicationIconsWithWithBundleIdentifier:(id)bundleIdentifier;
- (void)unforbidApplicationBundleIdentifierFromLibrary:(id)library withCompletion:(id)completion;
@end

@implementation SBHomeScreenService

- (SBSHomeScreenServiceArrayOfStrings)allHomeScreenApplicationBundleIdentifiers
{
  BSDispatchQueueAssertMain();
  currentContext = [MEMORY[0x277CF3280] currentContext];
  remoteProcess = [currentContext remoteProcess];
  auditToken = [remoteProcess auditToken];

  homeScreenBundleIdentifiersAuthenticator = [(SBHomeScreenService *)self homeScreenBundleIdentifiersAuthenticator];
  v18 = 0;
  v7 = [homeScreenBundleIdentifiersAuthenticator authenticateAuditToken:auditToken error:&v18];
  v8 = v18;

  if (v7)
  {
    iconController = [(SBHomeScreenService *)self iconController];
    iconModel = [iconController iconModel];
    rootFolder = [iconModel rootFolder];

    v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __64__SBHomeScreenService_allHomeScreenApplicationBundleIdentifiers__block_invoke;
    v16[3] = &unk_2783B3848;
    v13 = v12;
    v17 = v13;
    [rootFolder enumerateAllIconsWithOptions:1 usingBlock:v16];
  }

  else
  {
    rootFolder = SBLogCommon();
    if (os_log_type_enabled(rootFolder, OS_LOG_TYPE_ERROR))
    {
      [(SBHomeScreenService *)v8 allHomeScreenApplicationBundleIdentifiers];
    }

    v13 = 0;
  }

  v14 = [objc_alloc(MEMORY[0x277D66AC8]) initWithArray:v13];

  return v14;
}

- (void)allHomeScreenApplicationBundleIdentifiers
{
  localizedDescription = [self localizedDescription];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_8(&dword_21ED4E000, v2, v3, "%s %{public}@", v4, v5, v6, v7, 2u);
}

- (void)noteHomeScreenApplicationsDidChange
{
  v16 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  homeScreenApplicationsObservingConnections = [(SBHomeScreenService *)self homeScreenApplicationsObservingConnections];
  v4 = [homeScreenApplicationsObservingConnections copy];

  os_unfair_lock_unlock(&self->_lock);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = v4;
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

        remoteTarget = [*(*(&v11 + 1) + 8 * v9) remoteTarget];
        [remoteTarget homeScreenApplicationsDidChange];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (SBSHomeScreenServiceArrayOfStrings)allHomeScreenApplicationPlaceholderBundleIdentifiers
{
  BSDispatchQueueAssertMain();
  currentContext = [MEMORY[0x277CF3280] currentContext];
  remoteProcess = [currentContext remoteProcess];
  auditToken = [remoteProcess auditToken];

  homeScreenBundleIdentifiersAuthenticator = [(SBHomeScreenService *)self homeScreenBundleIdentifiersAuthenticator];
  v18 = 0;
  v7 = [homeScreenBundleIdentifiersAuthenticator authenticateAuditToken:auditToken error:&v18];
  v8 = v18;

  if (v7)
  {
    iconController = [(SBHomeScreenService *)self iconController];
    iconModel = [iconController iconModel];
    rootFolder = [iconModel rootFolder];

    v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __75__SBHomeScreenService_allHomeScreenApplicationPlaceholderBundleIdentifiers__block_invoke;
    v16[3] = &unk_2783B3848;
    v13 = v12;
    v17 = v13;
    [rootFolder enumerateAllIconsWithOptions:1 usingBlock:v16];
  }

  else
  {
    rootFolder = SBLogCommon();
    if (os_log_type_enabled(rootFolder, OS_LOG_TYPE_ERROR))
    {
      [(SBHomeScreenService *)v8 allHomeScreenApplicationPlaceholderBundleIdentifiers];
    }

    v13 = 0;
  }

  v14 = [objc_alloc(MEMORY[0x277D66AC8]) initWithArray:v13];

  return v14;
}

void __75__SBHomeScreenService_allHomeScreenApplicationPlaceholderBundleIdentifiers__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  if ([v5 isApplicationIcon])
  {
    if ([v5 hasApplicationPlaceholder])
    {
      v3 = [v5 applicationBundleID];
      if (v3)
      {
        v4 = v3;
        [*(a1 + 32) addObject:v3];
      }
    }
  }
}

- (void)noteHomeScreenLayoutDidChange
{
  v16 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  layoutObservingConnections = [(SBHomeScreenService *)self layoutObservingConnections];
  v4 = [layoutObservingConnections copy];

  os_unfair_lock_unlock(&self->_lock);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = v4;
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

        remoteTarget = [*(*(&v11 + 1) + 8 * v9) remoteTarget];
        [remoteTarget homeScreenLayoutDidChange];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)beginObservingNotificationsForIconTintColor
{
  iconTintColorObserver = [(SBHomeScreenService *)self iconTintColorObserver];

  if (!iconTintColorObserver)
  {
    objc_initWeak(&location, self);
    homeScreenDefaults = [(SBHomeScreenService *)self homeScreenDefaults];
    v5 = MEMORY[0x277D85CD0];
    v6 = MEMORY[0x277D85CD0];
    v10 = MEMORY[0x277D85DD0];
    v11 = 3221225472;
    v12 = __66__SBHomeScreenService_beginObservingNotificationsForIconTintColor__block_invoke;
    v13 = &unk_2783A8C68;
    objc_copyWeak(&v14, &location);
    v7 = [homeScreenDefaults observeIconTintColorOnQueue:v5 withBlock:&v10];

    [(SBHomeScreenService *)self setIconTintColorObserver:v7, v10, v11, v12, v13];
    homeScreenController = [(SBHomeScreenService *)self homeScreenController];
    iconStyleCoordinator = [homeScreenController iconStyleCoordinator];
    [iconStyleCoordinator addIconStyleObserver:self];

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }
}

- (id)_currentStyleConfiguration
{
  currentContext = [MEMORY[0x277CF3280] currentContext];
  v4 = [(SBHomeScreenService *)self _currentStyleConfigurationForConnection:currentContext];

  return v4;
}

- (void)endObservingNotificationsForIconTintColor
{
  iconTintColorObserver = [(SBHomeScreenService *)self iconTintColorObserver];
  [iconTintColorObserver invalidate];

  [(SBHomeScreenService *)self setIconTintColorObserver:0];
  homeScreenController = [(SBHomeScreenService *)self homeScreenController];
  iconStyleCoordinator = [homeScreenController iconStyleCoordinator];
  [iconStyleCoordinator removeIconStyleObserver:self];
}

- (id)homeScreenDefaults
{
  v2 = +[SBDefaults localDefaults];
  homeScreenDefaults = [v2 homeScreenDefaults];

  return homeScreenDefaults;
}

- (SBHomeScreenService)initWithIconController:(id)controller homeScreenController:(id)screenController
{
  controllerCopy = controller;
  screenControllerCopy = screenController;
  v83.receiver = self;
  v83.super_class = SBHomeScreenService;
  v10 = [(SBHomeScreenService *)&v83 init];
  if (v10)
  {
    if (screenControllerCopy)
    {
      if (controllerCopy)
      {
LABEL_4:
        objc_storeStrong(&v10->_homeScreenController, screenController);
        objc_storeStrong(&v10->_iconController, controller);
        v11 = [objc_alloc(MEMORY[0x277D0AAF8]) initWithEntitlement:@"com.apple.springboard.resetHomeScreenLayout"];
        resetHomeScreenLayoutAuthenticator = v10->_resetHomeScreenLayoutAuthenticator;
        v10->_resetHomeScreenLayoutAuthenticator = v11;

        v13 = [objc_alloc(MEMORY[0x277D0AAF8]) initWithEntitlement:@"com.apple.springboard.requestSuggestedApplication"];
        requestSuggestedAppAuthenticator = v10->_requestSuggestedAppAuthenticator;
        v10->_requestSuggestedAppAuthenticator = v13;

        v15 = [objc_alloc(MEMORY[0x277D0AAF8]) initWithEntitlement:@"com.apple.springboard.lookupFolderPathForIcon"];
        iconFolderPathLookupAuthenticator = v10->_iconFolderPathLookupAuthenticator;
        v10->_iconFolderPathLookupAuthenticator = v15;

        v17 = [objc_alloc(MEMORY[0x277D0AAF8]) initWithEntitlement:@"com.apple.springboard.addApplicationIcon"];
        addApplicationIconAuthenticator = v10->_addApplicationIconAuthenticator;
        v10->_addApplicationIconAuthenticator = v17;

        v19 = [objc_alloc(MEMORY[0x277D0AAF8]) initWithEntitlement:@"com.apple.springboard.addWidgetToTodayView"];
        addWidgetToTodayViewAuthenticator = v10->_addWidgetToTodayViewAuthenticator;
        v10->_addWidgetToTodayViewAuthenticator = v19;

        v21 = [objc_alloc(MEMORY[0x277D0AAF8]) initWithEntitlement:@"com.apple.springboard.largeIconLayout"];
        largeIconLayoutAuthenticator = v10->_largeIconLayoutAuthenticator;
        v10->_largeIconLayoutAuthenticator = v21;

        v23 = [objc_alloc(MEMORY[0x277D0AAF8]) initWithEntitlement:@"com.apple.springboard.addsNewIconsToHomeScreen"];
        addsNewIconsToHomeScreenAuthenticator = v10->_addsNewIconsToHomeScreenAuthenticator;
        v10->_addsNewIconsToHomeScreenAuthenticator = v23;

        v25 = [objc_alloc(MEMORY[0x277D0AAF8]) initWithEntitlement:@"com.apple.springboard.showsBadgesInAppLibrary"];
        showsBadgesInAppLibraryAuthenticator = v10->_showsBadgesInAppLibraryAuthenticator;
        v10->_showsBadgesInAppLibraryAuthenticator = v25;

        v27 = [objc_alloc(MEMORY[0x277D0AAF8]) initWithEntitlement:@"com.apple.springboard.showsHomeScreenSearchAffordance"];
        showsHomeScreenSearchAffordanceAuthenticator = v10->_showsHomeScreenSearchAffordanceAuthenticator;
        v10->_showsHomeScreenSearchAffordanceAuthenticator = v27;

        v29 = [objc_alloc(MEMORY[0x277D0AAF8]) initWithEntitlement:@"com.apple.springboard.allHomeScreenApplicationBundleIdentifiers"];
        homeScreenBundleIdentifiersAuthenticator = v10->_homeScreenBundleIdentifiersAuthenticator;
        v10->_homeScreenBundleIdentifiersAuthenticator = v29;

        v31 = [objc_alloc(MEMORY[0x277D0AAF8]) initWithEntitlement:@"com.apple.springboard.overrideDisplayedDate"];
        displayedDateAuthenticator = v10->_displayedDateAuthenticator;
        v10->_displayedDateAuthenticator = v31;

        v33 = [objc_alloc(MEMORY[0x277D0AAF8]) initWithEntitlement:@"com.apple.springboard.configureHomeScreenForTesting"];
        configurationAuthenticator = v10->_configurationAuthenticator;
        v10->_configurationAuthenticator = v33;

        v35 = [objc_alloc(MEMORY[0x277D0AAF8]) initWithEntitlement:@"com.apple.springboard.appLibraryRefresh"];
        appLibraryRequestUpdateAuthenticator = v10->_appLibraryRequestUpdateAuthenticator;
        v10->_appLibraryRequestUpdateAuthenticator = v35;

        v37 = [objc_alloc(MEMORY[0x277D0AAF8]) initWithEntitlement:@"com.apple.springboard.applibrary.openpod"];
        openPodAuthenticator = v10->_openPodAuthenticator;
        v10->_openPodAuthenticator = v37;

        v39 = [objc_alloc(MEMORY[0x277D0AAF8]) initWithEntitlement:@"com.apple.springboard.addDebugIcon"];
        addDebugIconAuthenticator = v10->_addDebugIconAuthenticator;
        v10->_addDebugIconAuthenticator = v39;

        v41 = [objc_alloc(MEMORY[0x277D0AAF8]) initWithEntitlement:@"com.apple.springboard.observeInstalledWebClips"];
        observeInstalledWebClipsAuthenticator = v10->_observeInstalledWebClipsAuthenticator;
        v10->_observeInstalledWebClipsAuthenticator = v41;

        v43 = [objc_alloc(MEMORY[0x277D0AAF8]) initWithEntitlement:@"com.apple.springboard.activeWidgetInfo"];
        activeWidgetInfoAuthenticator = v10->_activeWidgetInfoAuthenticator;
        v10->_activeWidgetInfoAuthenticator = v43;

        v45 = [objc_alloc(MEMORY[0x277D0AAF8]) initWithEntitlement:@"com.apple.springboard.addEmptyPage"];
        addEmptyPageAuthenticator = v10->_addEmptyPageAuthenticator;
        v10->_addEmptyPageAuthenticator = v45;

        v47 = [objc_alloc(MEMORY[0x277D0AAF8]) initWithEntitlement:@"com.apple.springboard.addSuggestedPage"];
        addSuggestedPageAuthenticator = v10->_addSuggestedPageAuthenticator;
        v10->_addSuggestedPageAuthenticator = v47;

        v49 = [objc_alloc(MEMORY[0x277D0AAF8]) initWithEntitlement:@"com.apple.springboard.homeScreenLayoutAvailability"];
        homeScreenLayoutAvailabilityAuthenticator = v10->_homeScreenLayoutAvailabilityAuthenticator;
        v10->_homeScreenLayoutAvailabilityAuthenticator = v49;

        v51 = [objc_alloc(MEMORY[0x277D0AAF8]) initWithEntitlement:@"com.apple.springboard.homeScreenLayout"];
        homeScreenLayoutAuthenticator = v10->_homeScreenLayoutAuthenticator;
        v10->_homeScreenLayoutAuthenticator = v51;

        v53 = [objc_alloc(MEMORY[0x277D0AAF8]) initWithEntitlement:@"com.apple.springboard.iconBadgeValue"];
        iconBadgeValueAuthenticator = v10->_iconBadgeValueAuthenticator;
        v10->_iconBadgeValueAuthenticator = v53;

        v55 = [objc_alloc(MEMORY[0x277D0AAF8]) initWithEntitlement:@"com.apple.springboard.overflowSlotCount"];
        overflowSlotsAuthenticator = v10->_overflowSlotsAuthenticator;
        v10->_overflowSlotsAuthenticator = v55;

        v57 = [objc_alloc(MEMORY[0x277D0AAF8]) initWithEntitlement:@"com.apple.springboard.homeScreenSilhouetteLayout"];
        silhouetteAuthenticator = v10->_silhouetteAuthenticator;
        v10->_silhouetteAuthenticator = v57;

        v59 = [objc_alloc(MEMORY[0x277D0AAF8]) initWithEntitlement:@"com.apple.springboard.iconTintColor"];
        iconTintColorAuthenticator = v10->_iconTintColorAuthenticator;
        v10->_iconTintColorAuthenticator = v59;

        v61 = [objc_alloc(MEMORY[0x277D0AAF8]) initWithEntitlement:@"com.apple.springboard.homeScreenIconStyle"];
        iconStyleAuthenticator = v10->_iconStyleAuthenticator;
        v10->_iconStyleAuthenticator = v61;

        v63 = [objc_alloc(MEMORY[0x277D0AAF8]) initWithEntitlement:@"com.apple.sharesheet.allow-custom-view"];
        shareSheetCustomViewAuthenticator = v10->_shareSheetCustomViewAuthenticator;
        v10->_shareSheetCustomViewAuthenticator = v63;

        v65 = [objc_alloc(MEMORY[0x277D0AAF8]) initWithEntitlement:@"com.apple.springboard.swapIconsInProminentPositions"];
        prominentIconSwapAuthenticator = v10->_prominentIconSwapAuthenticator;
        v10->_prominentIconSwapAuthenticator = v65;

        v67 = [objc_alloc(MEMORY[0x277D0AAF8]) initWithEntitlement:@"com.apple.springboard.osMigrationHomeScreenLayout"];
        osMigrationHomeScreenAuthenticator = v10->_osMigrationHomeScreenAuthenticator;
        v10->_osMigrationHomeScreenAuthenticator = v67;

        v69 = [objc_alloc(MEMORY[0x277D0AAF8]) initWithEntitlement:@"com.apple.springboard.fileStackIconList"];
        fileStackIconListAuthenticator = v10->_fileStackIconListAuthenticator;
        v10->_fileStackIconListAuthenticator = v69;

        v10->_homeScreenLayoutAvailable = [objc_opt_class() isHomeScreenLayoutAvailableForIconController:controllerCopy];
        defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
        v72 = *MEMORY[0x277D666F0];
        iconModel = [controllerCopy iconModel];
        [defaultCenter addObserver:v10 selector:sel_iconModelDidLayout_ name:v72 object:iconModel];

        v74 = objc_alloc_init(MEMORY[0x277CBEB58]);
        activeConnections = v10->_activeConnections;
        v10->_activeConnections = v74;

        v10->_lock._os_unfair_lock_opaque = 0;
        v76 = MEMORY[0x277CF32A0];
        v81[0] = MEMORY[0x277D85DD0];
        v81[1] = 3221225472;
        v81[2] = __67__SBHomeScreenService_initWithIconController_homeScreenController___block_invoke;
        v81[3] = &unk_2783A9A18;
        v77 = v10;
        v82 = v77;
        v78 = [v76 listenerWithConfigurator:v81];
        v79 = v77[41];
        v77[41] = v78;

        [v77[41] activate];
        goto LABEL_5;
      }
    }

    else
    {
      [SBHomeScreenService initWithIconController:a2 homeScreenController:v10];
      if (controllerCopy)
      {
        goto LABEL_4;
      }
    }

    [SBHomeScreenService initWithIconController:a2 homeScreenController:v10];
    goto LABEL_4;
  }

LABEL_5:

  return v10;
}

void __67__SBHomeScreenService_initWithIconController_homeScreenController___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  [v4 setDomain:@"com.apple.frontboard"];
  v3 = [MEMORY[0x277D66AD8] identifier];
  [v4 setService:v3];

  [v4 setDelegate:*(a1 + 32)];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v4 = *MEMORY[0x277D666F0];
  iconModel = [(SBIconController *)self->_iconController iconModel];
  [defaultCenter removeObserver:self name:v4 object:iconModel];

  iconStyleCoordinator = [(SBHomeScreenController *)self->_homeScreenController iconStyleCoordinator];
  [iconStyleCoordinator removeIconStyleObserver:self];

  v7.receiver = self;
  v7.super_class = SBHomeScreenService;
  [(SBHomeScreenService *)&v7 dealloc];
}

- (void)resetHomeScreenLayoutWithCompletion:(id)completion
{
  completionCopy = completion;
  BSDispatchQueueAssertMain();
  currentContext = [MEMORY[0x277CF3280] currentContext];
  remoteProcess = [currentContext remoteProcess];
  auditToken = [remoteProcess auditToken];

  resetHomeScreenLayoutAuthenticator = [(SBHomeScreenService *)self resetHomeScreenLayoutAuthenticator];
  v15 = 0;
  v9 = [resetHomeScreenLayoutAuthenticator authenticateAuditToken:auditToken error:&v15];
  v10 = v15;

  if (v9)
  {
    iconController = [(SBHomeScreenService *)self iconController];
    resetHomeScreenLayout = [iconController resetHomeScreenLayout];

    if ((resetHomeScreenLayout & 1) == 0)
    {
      v13 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SBHomeScreenServiceErrorDomain" code:1 userInfo:0];

      v10 = v13;
    }
  }

  else
  {
    v14 = SBLogCommon();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [SBHomeScreenService resetHomeScreenLayoutWithCompletion:v10];
    }

    if (!v10)
    {
      v10 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D0AA50] code:13 userInfo:0];
    }
  }

  completionCopy[2](completionCopy, v10);
}

- (void)unforbidApplicationBundleIdentifierFromLibrary:(id)library withCompletion:(id)completion
{
  libraryCopy = library;
  completionCopy = completion;
  BSDispatchQueueAssertMain();
  currentContext = [MEMORY[0x277CF3280] currentContext];
  remoteProcess = [currentContext remoteProcess];
  auditToken = [remoteProcess auditToken];

  resetHomeScreenLayoutAuthenticator = [(SBHomeScreenService *)self resetHomeScreenLayoutAuthenticator];
  v18 = 0;
  v12 = [resetHomeScreenLayoutAuthenticator authenticateAuditToken:auditToken error:&v18];
  v13 = v18;

  if (v12)
  {
    iconController = [(SBHomeScreenService *)self iconController];
    v15 = [iconController unforbidApplicationBundleIdentifierFromLibrary:libraryCopy];

    if ((v15 & 1) == 0)
    {
      v16 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SBHomeScreenServiceErrorDomain" code:1 userInfo:0];

      v13 = v16;
    }
  }

  else
  {
    v17 = SBLogCommon();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [SBHomeScreenService unforbidApplicationBundleIdentifierFromLibrary:v13 withCompletion:?];
    }

    if (!v13)
    {
      v13 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D0AA50] code:13 userInfo:0];
    }
  }

  completionCopy[2](completionCopy, v13);
}

- (void)forbidApplicationBundleIdentifierFromLibrary:(id)library withCompletion:(id)completion
{
  libraryCopy = library;
  completionCopy = completion;
  BSDispatchQueueAssertMain();
  currentContext = [MEMORY[0x277CF3280] currentContext];
  remoteProcess = [currentContext remoteProcess];
  auditToken = [remoteProcess auditToken];

  resetHomeScreenLayoutAuthenticator = [(SBHomeScreenService *)self resetHomeScreenLayoutAuthenticator];
  v18 = 0;
  v12 = [resetHomeScreenLayoutAuthenticator authenticateAuditToken:auditToken error:&v18];
  v13 = v18;

  if (v12)
  {
    iconController = [(SBHomeScreenService *)self iconController];
    v15 = [iconController forbidApplicationBundleIdentifierFromLibrary:libraryCopy];

    if ((v15 & 1) == 0)
    {
      v16 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SBHomeScreenServiceErrorDomain" code:1 userInfo:0];

      v13 = v16;
    }
  }

  else
  {
    v17 = SBLogCommon();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [SBHomeScreenService forbidApplicationBundleIdentifierFromLibrary:v13 withCompletion:?];
    }

    if (!v13)
    {
      v13 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D0AA50] code:13 userInfo:0];
    }
  }

  completionCopy[2](completionCopy, v13);
}

- (void)resetCategoriesLayoutWithCompletion:(id)completion
{
  completionCopy = completion;
  BSDispatchQueueAssertMain();
  currentContext = [MEMORY[0x277CF3280] currentContext];
  remoteProcess = [currentContext remoteProcess];
  auditToken = [remoteProcess auditToken];

  resetHomeScreenLayoutAuthenticator = [(SBHomeScreenService *)self resetHomeScreenLayoutAuthenticator];
  v15 = 0;
  v9 = [resetHomeScreenLayoutAuthenticator authenticateAuditToken:auditToken error:&v15];
  v10 = v15;

  if (v9)
  {
    iconController = [(SBHomeScreenService *)self iconController];
    resetCategories = [iconController resetCategories];

    if ((resetCategories & 1) == 0)
    {
      v13 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SBHomeScreenServiceErrorDomain" code:1 userInfo:0];

      v10 = v13;
    }
  }

  else
  {
    v14 = SBLogCommon();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [SBHomeScreenService resetCategoriesLayoutWithCompletion:v10];
    }

    if (!v10)
    {
      v10 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D0AA50] code:13 userInfo:0];
    }
  }

  completionCopy[2](completionCopy, v10);
}

- (void)runFloatingDockStressTestWithCompletion:(id)completion
{
  completionCopy = completion;
  BSDispatchQueueAssertMain();
  currentContext = [MEMORY[0x277CF3280] currentContext];
  remoteProcess = [currentContext remoteProcess];
  auditToken = [remoteProcess auditToken];

  resetHomeScreenLayoutAuthenticator = [(SBHomeScreenService *)self resetHomeScreenLayoutAuthenticator];
  v23 = 0;
  LOBYTE(remoteProcess) = [resetHomeScreenLayoutAuthenticator authenticateAuditToken:auditToken error:&v23];
  v9 = v23;

  if (remoteProcess)
  {
    windowSceneManager = [SBApp windowSceneManager];
    activeDisplayWindowScene = [windowSceneManager activeDisplayWindowScene];
    floatingDockController = [activeDisplayWindowScene floatingDockController];
    viewController = [floatingDockController viewController];
    v14 = objc_opt_class();
    v15 = viewController;
    if (v14)
    {
      if (objc_opt_isKindOfClass())
      {
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = 0;
    }

    v18 = v16;

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      suggestionsModel = [v18 suggestionsModel];
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __63__SBHomeScreenService_runFloatingDockStressTestWithCompletion___block_invoke;
      v21[3] = &unk_2783A9348;
      v22 = completionCopy;
      [suggestionsModel _runStressTestWithCompletion:v21];
    }

    else if (v9)
    {
      (*(completionCopy + 2))(completionCopy, v9);
    }

    else
    {
      v20 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D0AA50] code:13 userInfo:0];
      (*(completionCopy + 2))(completionCopy, v20);
    }

    goto LABEL_18;
  }

  v17 = SBLogCommon();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    [SBHomeScreenService runFloatingDockStressTestWithCompletion:v9];
  }

  if (!v9)
  {
    windowSceneManager = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D0AA50] code:13 userInfo:0];
    (*(completionCopy + 2))(completionCopy, windowSceneManager);
LABEL_18:

    goto LABEL_19;
  }

  (*(completionCopy + 2))(completionCopy, v9);
LABEL_19:
}

uint64_t __63__SBHomeScreenService_runFloatingDockStressTestWithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

- (void)requestSuggestedApplicationWithBundleIdentifier:(id)identifier assertionPort:(id)port completion:(id)completion
{
  identifierCopy = identifier;
  portCopy = port;
  completionCopy = completion;
  BSDispatchQueueAssertMain();
  currentContext = [MEMORY[0x277CF3280] currentContext];
  remoteProcess = [currentContext remoteProcess];
  auditToken = [remoteProcess auditToken];

  requestSuggestedAppAuthenticator = [(SBHomeScreenService *)self requestSuggestedAppAuthenticator];
  v30 = 0;
  LOBYTE(remoteProcess) = [requestSuggestedAppAuthenticator authenticateAuditToken:auditToken error:&v30];
  v15 = v30;

  if (remoteProcess)
  {
    v16 = +[SBApplicationController sharedInstance];
    v17 = [v16 applicationWithBundleIdentifier:identifierCopy];

    windowSceneManager = [SBApp windowSceneManager];
    activeDisplayWindowScene = [windowSceneManager activeDisplayWindowScene];
    floatingDockController = [activeDisplayWindowScene floatingDockController];
    v21 = floatingDockController;
    if (v17 && floatingDockController && ([floatingDockController requestedSuggestedApplication], v22 = objc_claimAutoreleasedReturnValue(), v22, !v22))
    {
      [v21 setRequestedSuggestedApplication:v17];
      v26 = MEMORY[0x277CF0CB8];
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __96__SBHomeScreenService_requestSuggestedApplicationWithBundleIdentifier_assertionPort_completion___block_invoke;
      v27[3] = &unk_2783A92D8;
      v28 = v21;
      v29 = v17;
      [v26 monitorSendRight:portCopy withHandler:v27];

      v24 = v28;
    }

    else
    {
      v23 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SBHomeScreenServiceErrorDomain" code:1 userInfo:0];
      v24 = v15;
      v15 = v23;
    }

    completionCopy[2](completionCopy, v15);
  }

  else
  {
    v25 = SBLogCommon();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [SBHomeScreenService requestSuggestedApplicationWithBundleIdentifier:v15 assertionPort:? completion:?];
    }

    if (!v15)
    {
      v15 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D0AA50] code:13 userInfo:0];
    }

    completionCopy[2](completionCopy, v15);
  }
}

void __96__SBHomeScreenService_requestSuggestedApplicationWithBundleIdentifier_assertionPort_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  BSDispatchMain();
}

void __96__SBHomeScreenService_requestSuggestedApplicationWithBundleIdentifier_assertionPort_completion___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) requestedSuggestedApplication];
  v3 = *(a1 + 40);

  if (v2 == v3)
  {
    v4 = *(a1 + 32);

    [v4 setRequestedSuggestedApplication:0];
  }
}

- (id)folderPathToIconWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  BSDispatchQueueAssertMain();
  currentContext = [MEMORY[0x277CF3280] currentContext];
  remoteProcess = [currentContext remoteProcess];
  auditToken = [remoteProcess auditToken];

  iconFolderPathLookupAuthenticator = [(SBHomeScreenService *)self iconFolderPathLookupAuthenticator];
  v15 = 0;
  v9 = [iconFolderPathLookupAuthenticator authenticateAuditToken:auditToken error:&v15];
  v10 = v15;

  if (v9)
  {
    iconController = [(SBHomeScreenService *)self iconController];
    v12 = [iconController iconPathForIconWithDisplayID:identifierCopy];

    v13 = [objc_alloc(MEMORY[0x277D66AC8]) initWithArray:v12];
  }

  else
  {
    v12 = SBLogCommon();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [SBHomeScreenService folderPathToIconWithBundleIdentifier:v10];
    }

    v13 = 0;
  }

  return v13;
}

- (void)addApplicationIconToHomeScreenWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  BSDispatchQueueAssertMain();
  currentContext = [MEMORY[0x277CF3280] currentContext];
  remoteProcess = [currentContext remoteProcess];
  auditToken = [remoteProcess auditToken];

  addApplicationIconAuthenticator = [(SBHomeScreenService *)self addApplicationIconAuthenticator];
  v25 = 0;
  v9 = [addApplicationIconAuthenticator authenticateAuditToken:auditToken error:&v25];
  v10 = v25;

  if (v9)
  {
    if ([identifierCopy length])
    {
      homeScreenController = [(SBHomeScreenService *)self homeScreenController];
      iconManager = [homeScreenController iconManager];
      iconModel = [iconManager iconModel];

      v14 = [iconModel applicationIconForBundleIdentifier:identifierCopy];
      if (v14)
      {
        v15 = v14;
        rootFolder = [iconModel rootFolder];
        if ([rootFolder isIconInIgnoredList:v15])
        {

LABEL_11:
          [homeScreenController addIconToHomeScreen:v15];

          goto LABEL_12;
        }

        v24 = [iconModel addAdditionalIconMatchingIcon:v15];

        v15 = v24;
        if (v24)
        {
          goto LABEL_11;
        }
      }

LABEL_12:

      goto LABEL_13;
    }

    homeScreenController = SBLogCommon();
    if (os_log_type_enabled(homeScreenController, OS_LOG_TYPE_ERROR))
    {
      [(SBHomeScreenService *)homeScreenController addApplicationIconToHomeScreenWithBundleIdentifier:v17, v18, v19, v20, v21, v22, v23];
    }
  }

  else
  {
    homeScreenController = SBLogCommon();
    if (os_log_type_enabled(homeScreenController, OS_LOG_TYPE_ERROR))
    {
      [SBHomeScreenService addApplicationIconToHomeScreenWithBundleIdentifier:v10];
    }
  }

LABEL_13:
}

- (void)addApplicationIconToHomeScreenWithBundleIdentifier:(id)identifier inPage:(id)page atPositionDescription:(id)description
{
  identifierCopy = identifier;
  pageCopy = page;
  descriptionCopy = description;
  BSDispatchQueueAssertMain();
  currentContext = [MEMORY[0x277CF3280] currentContext];
  remoteProcess = [currentContext remoteProcess];
  auditToken = [remoteProcess auditToken];

  addApplicationIconAuthenticator = [(SBHomeScreenService *)self addApplicationIconAuthenticator];
  v36 = 0;
  v15 = [addApplicationIconAuthenticator authenticateAuditToken:auditToken error:&v36];
  v16 = v36;

  if (v15)
  {
    if ([identifierCopy length])
    {
      homeScreenController = [(SBHomeScreenService *)self homeScreenController];
      iconManager = [homeScreenController iconManager];
      unsignedIntegerValue = [pageCopy unsignedIntegerValue];
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __103__SBHomeScreenService_addApplicationIconToHomeScreenWithBundleIdentifier_inPage_atPositionDescription___block_invoke;
      v32[3] = &unk_2783B37F8;
      v33 = iconManager;
      v34 = identifierCopy;
      v35 = unsignedIntegerValue;
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __103__SBHomeScreenService_addApplicationIconToHomeScreenWithBundleIdentifier_inPage_atPositionDescription___block_invoke_2;
      v28[3] = &unk_2783B3820;
      v29 = v33;
      v30 = v34;
      v31 = unsignedIntegerValue;
      v20 = v33;
      [(SBHomeScreenService *)self parsePositionDescription:descriptionCopy gridPositionHandler:v32 indexPositionHandler:v28];
    }

    else
    {
      homeScreenController = SBLogCommon();
      if (os_log_type_enabled(homeScreenController, OS_LOG_TYPE_ERROR))
      {
        [(SBHomeScreenService *)homeScreenController addApplicationIconToHomeScreenWithBundleIdentifier:v21 inPage:v22 atPositionDescription:v23, v24, v25, v26, v27];
      }
    }
  }

  else
  {
    homeScreenController = SBLogCommon();
    if (os_log_type_enabled(homeScreenController, OS_LOG_TYPE_ERROR))
    {
      [SBHomeScreenService addApplicationIconToHomeScreenWithBundleIdentifier:v16 inPage:? atPositionDescription:?];
    }
  }
}

uint64_t __103__SBHomeScreenService_addApplicationIconToHomeScreenWithBundleIdentifier_inPage_atPositionDescription___block_invoke(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v8 = a1[4];
  v9 = a1[5];
  v10 = a1[6];
  if (a5)
  {
    return [v8 addApplicationIconWithBundleIdentifier:v9 toPage:v10 coordinate:{a2, a3, a4}];
  }

  else
  {
    return [v8 addApplicationIconWithBundleIdentifier:v9 toPage:v10 coordinate:a2 orientation:{a3, a4}];
  }
}

- (void)addPageOfApplicationIconsWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  BSDispatchQueueAssertMain();
  currentContext = [MEMORY[0x277CF3280] currentContext];
  remoteProcess = [currentContext remoteProcess];
  auditToken = [remoteProcess auditToken];

  addApplicationIconAuthenticator = [(SBHomeScreenService *)self addApplicationIconAuthenticator];
  v27 = 0;
  v9 = [addApplicationIconAuthenticator authenticateAuditToken:auditToken error:&v27];
  v10 = v27;

  if (v9)
  {
    if ([identifierCopy length])
    {
      homeScreenController = [(SBHomeScreenService *)self homeScreenController];
      iconManager = [homeScreenController iconManager];
      rootFolder = [iconManager rootFolder];
      addEmptyList = [rootFolder addEmptyList];
      if (addEmptyList)
      {
        v15 = addEmptyList;
        v16 = [rootFolder indexOfList:addEmptyList];
        maxNumberOfIcons = [v15 maxNumberOfIcons];
        if (maxNumberOfIcons)
        {
          v18 = maxNumberOfIcons;
          for (i = 0; i != v18; ++i)
          {
            [iconManager addApplicationIconWithBundleIdentifier:identifierCopy toPage:v16 iconIndex:i];
          }
        }
      }
    }

    else
    {
      homeScreenController = SBLogCommon();
      if (os_log_type_enabled(homeScreenController, OS_LOG_TYPE_ERROR))
      {
        [(SBHomeScreenService *)homeScreenController addPageOfApplicationIconsWithBundleIdentifier:v20, v21, v22, v23, v24, v25, v26];
      }
    }
  }

  else
  {
    homeScreenController = SBLogCommon();
    if (os_log_type_enabled(homeScreenController, OS_LOG_TYPE_ERROR))
    {
      [SBHomeScreenService addPageOfApplicationIconsWithBundleIdentifier:v10];
    }
  }
}

- (NSNumber)largeIconLayoutEnabledValue
{
  BSDispatchQueueAssertMain();
  currentContext = [MEMORY[0x277CF3280] currentContext];
  remoteProcess = [currentContext remoteProcess];
  auditToken = [remoteProcess auditToken];

  largeIconLayoutAuthenticator = [(SBHomeScreenService *)self largeIconLayoutAuthenticator];
  v13 = 0;
  LOBYTE(remoteProcess) = [largeIconLayoutAuthenticator authenticateAuditToken:auditToken error:&v13];
  v7 = v13;

  if (remoteProcess)
  {
    v8 = +[SBDefaults localDefaults];
    homeScreenDefaults = [v8 homeScreenDefaults];
    shouldUseLargeDefaultSizedIcons = [homeScreenDefaults shouldUseLargeDefaultSizedIcons];
  }

  else
  {
    v8 = SBLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(SBHomeScreenService *)v7 largeIconLayoutEnabledValue];
    }

    shouldUseLargeDefaultSizedIcons = 0;
  }

  v11 = [MEMORY[0x277CCABB0] numberWithBool:shouldUseLargeDefaultSizedIcons];

  return v11;
}

- (void)setLargeIconLayoutEnabledValue:(id)value
{
  valueCopy = value;
  BSDispatchQueueAssertMain();
  currentContext = [MEMORY[0x277CF3280] currentContext];
  remoteProcess = [currentContext remoteProcess];
  auditToken = [remoteProcess auditToken];

  largeIconLayoutAuthenticator = [(SBHomeScreenService *)self largeIconLayoutAuthenticator];
  v12 = 0;
  LOBYTE(remoteProcess) = [largeIconLayoutAuthenticator authenticateAuditToken:auditToken error:&v12];
  v9 = v12;

  if (remoteProcess)
  {
    v10 = +[SBDefaults localDefaults];
    homeScreenDefaults = [v10 homeScreenDefaults];
    [homeScreenDefaults setShouldUseLargeDefaultSizedIcons:{objc_msgSend(valueCopy, "BOOLValue")}];
  }

  else
  {
    v10 = SBLogCommon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [SBHomeScreenService setLargeIconLayoutEnabledValue:v9];
    }
  }
}

- (NSNumber)largeIconSizeEnabledValue
{
  BSDispatchQueueAssertMain();
  currentContext = [MEMORY[0x277CF3280] currentContext];
  remoteProcess = [currentContext remoteProcess];
  auditToken = [remoteProcess auditToken];

  largeIconLayoutAuthenticator = [(SBHomeScreenService *)self largeIconLayoutAuthenticator];
  v13 = 0;
  v7 = [largeIconLayoutAuthenticator authenticateAuditToken:auditToken error:&v13];
  v8 = v13;

  if (v7)
  {
    isLargeIconSizeEnabled = [(SBHomeScreenController *)self->_homeScreenController isLargeIconSizeEnabled];
  }

  else
  {
    v10 = SBLogCommon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(SBHomeScreenService *)v8 largeIconSizeEnabledValue];
    }

    isLargeIconSizeEnabled = 0;
  }

  v11 = [MEMORY[0x277CCABB0] numberWithBool:isLargeIconSizeEnabled];

  return v11;
}

- (void)setLargeIconSizeEnabledValue:(id)value
{
  valueCopy = value;
  BSDispatchQueueAssertMain();
  currentContext = [MEMORY[0x277CF3280] currentContext];
  remoteProcess = [currentContext remoteProcess];
  auditToken = [remoteProcess auditToken];

  largeIconLayoutAuthenticator = [(SBHomeScreenService *)self largeIconLayoutAuthenticator];
  v12 = 0;
  v9 = [largeIconLayoutAuthenticator authenticateAuditToken:auditToken error:&v12];
  v10 = v12;

  if (v9)
  {
    -[SBHomeScreenController setLargeIconSizeEnabled:](self->_homeScreenController, "setLargeIconSizeEnabled:", [valueCopy BOOLValue]);
  }

  else
  {
    v11 = SBLogCommon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [SBHomeScreenService setLargeIconSizeEnabledValue:v10];
    }
  }
}

- (NSNumber)addsNewIconsToHomeScreenValue
{
  BSDispatchQueueAssertMain();
  currentContext = [MEMORY[0x277CF3280] currentContext];
  remoteProcess = [currentContext remoteProcess];
  auditToken = [remoteProcess auditToken];

  addsNewIconsToHomeScreenAuthenticator = [(SBHomeScreenService *)self addsNewIconsToHomeScreenAuthenticator];
  v13 = 0;
  v7 = [addsNewIconsToHomeScreenAuthenticator authenticateAuditToken:auditToken error:&v13];
  v8 = v13;

  if (v7)
  {
    iconController = [(SBHomeScreenService *)self iconController];
    shouldAddNewIconsToRootFolder = [iconController shouldAddNewIconsToRootFolder];
  }

  else
  {
    iconController = SBLogCommon();
    if (os_log_type_enabled(iconController, OS_LOG_TYPE_ERROR))
    {
      [(SBHomeScreenService *)v8 addsNewIconsToHomeScreenValue];
    }

    shouldAddNewIconsToRootFolder = 0;
  }

  v11 = [MEMORY[0x277CCABB0] numberWithBool:shouldAddNewIconsToRootFolder];

  return v11;
}

- (void)setAddsNewIconsToHomeScreenValue:(id)value
{
  valueCopy = value;
  BSDispatchQueueAssertMain();
  currentContext = [MEMORY[0x277CF3280] currentContext];
  remoteProcess = [currentContext remoteProcess];
  auditToken = [remoteProcess auditToken];

  addsNewIconsToHomeScreenAuthenticator = [(SBHomeScreenService *)self addsNewIconsToHomeScreenAuthenticator];
  v12 = 0;
  LOBYTE(remoteProcess) = [addsNewIconsToHomeScreenAuthenticator authenticateAuditToken:auditToken error:&v12];
  v9 = v12;

  if (remoteProcess)
  {
    v10 = +[SBDefaults localDefaults];
    homeScreenDefaults = [v10 homeScreenDefaults];
    [homeScreenDefaults setAutomaticallyAddsNewApplications:{objc_msgSend(valueCopy, "BOOLValue")}];
  }

  else
  {
    v10 = SBLogCommon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [SBHomeScreenService setAddsNewIconsToHomeScreenValue:v9];
    }
  }
}

- (void)setIconListsHidden:(id)hidden
{
  v53 = *MEMORY[0x277D85DE8];
  hiddenCopy = hidden;
  BSDispatchQueueAssertMain();
  currentContext = [MEMORY[0x277CF3280] currentContext];
  remoteProcess = [currentContext remoteProcess];
  auditToken = [remoteProcess auditToken];

  addsNewIconsToHomeScreenAuthenticator = [(SBHomeScreenService *)self addsNewIconsToHomeScreenAuthenticator];
  v49 = 0;
  v9 = [addsNewIconsToHomeScreenAuthenticator authenticateAuditToken:auditToken error:&v49];
  v10 = v49;

  if (v9)
  {
    v31 = v10;
    v32 = auditToken;
    iconController = [(SBHomeScreenService *)self iconController];
    iconModel = [iconController iconModel];
    rootFolder = [iconModel rootFolder];
    lists = [rootFolder lists];

    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    obj = lists;
    v15 = [obj countByEnumeratingWithState:&v45 objects:v52 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v46;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v46 != v17)
          {
            objc_enumerationMutation(obj);
          }

          [*(*(&v45 + 1) + 8 * i) setHidden:0];
        }

        v16 = [obj countByEnumeratingWithState:&v45 objects:v52 count:16];
      }

      while (v16);
    }

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v33 = hiddenCopy;
    array = [hiddenCopy array];
    v19 = [array countByEnumeratingWithState:&v41 objects:v51 count:16];
    if (v19)
    {
      v20 = v19;
      v35 = *v42;
      do
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v42 != v35)
          {
            objc_enumerationMutation(array);
          }

          v22 = *(*(&v41 + 1) + 8 * j);
          v37 = 0u;
          v38 = 0u;
          v39 = 0u;
          v40 = 0u;
          v23 = obj;
          v24 = [v23 countByEnumeratingWithState:&v37 objects:v50 count:16];
          if (v24)
          {
            v25 = v24;
            v26 = *v38;
            do
            {
              for (k = 0; k != v25; ++k)
              {
                if (*v38 != v26)
                {
                  objc_enumerationMutation(v23);
                }

                v28 = *(*(&v37 + 1) + 8 * k);
                uniqueIdentifier = [v28 uniqueIdentifier];
                v30 = [uniqueIdentifier isEqualToString:v22];

                if (v30)
                {
                  [v28 setHidden:1];
                }
              }

              v25 = [v23 countByEnumeratingWithState:&v37 objects:v50 count:16];
            }

            while (v25);
          }
        }

        v20 = [array countByEnumeratingWithState:&v41 objects:v51 count:16];
      }

      while (v20);
    }

    auditToken = v32;
    hiddenCopy = v33;
    v10 = v31;
  }

  else
  {
    obj = SBLogCommon();
    if (os_log_type_enabled(obj, OS_LOG_TYPE_ERROR))
    {
      [SBHomeScreenService setIconListsHidden:v10];
    }
  }
}

- (NSNumber)showsBadgesInAppLibraryValue
{
  BSDispatchQueueAssertMain();
  currentContext = [MEMORY[0x277CF3280] currentContext];
  remoteProcess = [currentContext remoteProcess];
  auditToken = [remoteProcess auditToken];

  showsBadgesInAppLibraryAuthenticator = [(SBHomeScreenService *)self showsBadgesInAppLibraryAuthenticator];
  v13 = 0;
  LOBYTE(remoteProcess) = [showsBadgesInAppLibraryAuthenticator authenticateAuditToken:auditToken error:&v13];
  v7 = v13;

  if (remoteProcess)
  {
    v8 = +[SBDefaults localDefaults];
    homeScreenDefaults = [v8 homeScreenDefaults];
    showsBadgesInAppLibrary = [homeScreenDefaults showsBadgesInAppLibrary];
  }

  else
  {
    v8 = SBLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(SBHomeScreenService *)v7 showsBadgesInAppLibraryValue];
    }

    showsBadgesInAppLibrary = 0;
  }

  v11 = [MEMORY[0x277CCABB0] numberWithBool:showsBadgesInAppLibrary];

  return v11;
}

- (void)setShowsBadgesInAppLibraryValue:(id)value
{
  valueCopy = value;
  BSDispatchQueueAssertMain();
  currentContext = [MEMORY[0x277CF3280] currentContext];
  remoteProcess = [currentContext remoteProcess];
  auditToken = [remoteProcess auditToken];

  showsBadgesInAppLibraryAuthenticator = [(SBHomeScreenService *)self showsBadgesInAppLibraryAuthenticator];
  v12 = 0;
  LOBYTE(remoteProcess) = [showsBadgesInAppLibraryAuthenticator authenticateAuditToken:auditToken error:&v12];
  v9 = v12;

  if (remoteProcess)
  {
    v10 = +[SBDefaults localDefaults];
    homeScreenDefaults = [v10 homeScreenDefaults];
    [homeScreenDefaults setShowsBadgesInAppLibrary:{objc_msgSend(valueCopy, "BOOLValue")}];
  }

  else
  {
    v10 = SBLogCommon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [SBHomeScreenService setShowsBadgesInAppLibraryValue:v9];
    }
  }
}

- (NSNumber)showsHomeScreenSearchAffordanceValue
{
  BSDispatchQueueAssertMain();
  currentContext = [MEMORY[0x277CF3280] currentContext];
  remoteProcess = [currentContext remoteProcess];
  auditToken = [remoteProcess auditToken];

  showsHomeScreenSearchAffordanceAuthenticator = [(SBHomeScreenService *)self showsHomeScreenSearchAffordanceAuthenticator];
  v13 = 0;
  LOBYTE(remoteProcess) = [showsHomeScreenSearchAffordanceAuthenticator authenticateAuditToken:auditToken error:&v13];
  v7 = v13;

  if (remoteProcess)
  {
    v8 = +[SBDefaults localDefaults];
    homeScreenDefaults = [v8 homeScreenDefaults];
    showsHomeScreenSearchAffordance = [homeScreenDefaults showsHomeScreenSearchAffordance];
  }

  else
  {
    v8 = SBLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(SBHomeScreenService *)v7 showsHomeScreenSearchAffordanceValue];
    }

    showsHomeScreenSearchAffordance = 0;
  }

  v11 = [MEMORY[0x277CCABB0] numberWithBool:showsHomeScreenSearchAffordance];

  return v11;
}

- (void)setShowsHomeScreenSearchAffordanceValue:(id)value
{
  valueCopy = value;
  BSDispatchQueueAssertMain();
  currentContext = [MEMORY[0x277CF3280] currentContext];
  remoteProcess = [currentContext remoteProcess];
  auditToken = [remoteProcess auditToken];

  showsHomeScreenSearchAffordanceAuthenticator = [(SBHomeScreenService *)self showsHomeScreenSearchAffordanceAuthenticator];
  v12 = 0;
  LOBYTE(remoteProcess) = [showsHomeScreenSearchAffordanceAuthenticator authenticateAuditToken:auditToken error:&v12];
  v9 = v12;

  if (remoteProcess)
  {
    v10 = +[SBDefaults localDefaults];
    homeScreenDefaults = [v10 homeScreenDefaults];
    [homeScreenDefaults setShowsHomeScreenSearchAffordance:{objc_msgSend(valueCopy, "BOOLValue")}];
  }

  else
  {
    v10 = SBLogCommon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [SBHomeScreenService setShowsHomeScreenSearchAffordanceValue:v9];
    }
  }
}

void __64__SBHomeScreenService_allHomeScreenApplicationBundleIdentifiers__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  if ([v5 isApplicationIcon])
  {
    if ([v5 hasApplication])
    {
      v3 = [v5 applicationBundleID];
      if (v3)
      {
        v4 = v3;
        [*(a1 + 32) addObject:v3];
      }
    }
  }
}

- (void)setObservingHomeScreenApplications:(id)applications
{
  applicationsCopy = applications;
  BSDispatchQueueAssertMain();
  currentContext = [MEMORY[0x277CF3280] currentContext];
  remoteProcess = [currentContext remoteProcess];
  auditToken = [remoteProcess auditToken];

  homeScreenBundleIdentifiersAuthenticator = [(SBHomeScreenService *)self homeScreenBundleIdentifiersAuthenticator];
  v16 = 0;
  v9 = [homeScreenBundleIdentifiersAuthenticator authenticateAuditToken:auditToken error:&v16];
  v10 = v16;

  if (v9)
  {
    os_unfair_lock_lock(&self->_lock);
    bOOLValue = [applicationsCopy BOOLValue];
    homeScreenApplicationsObservingConnections = self->_homeScreenApplicationsObservingConnections;
    if (bOOLValue)
    {
      if (!homeScreenApplicationsObservingConnections)
      {
        v13 = objc_alloc_init(MEMORY[0x277CBEB58]);
        v14 = self->_homeScreenApplicationsObservingConnections;
        self->_homeScreenApplicationsObservingConnections = v13;

        homeScreenApplicationsObservingConnections = self->_homeScreenApplicationsObservingConnections;
      }

      [(NSMutableSet *)homeScreenApplicationsObservingConnections addObject:currentContext];
    }

    else
    {
      [(NSMutableSet *)homeScreenApplicationsObservingConnections removeObject:currentContext];
    }

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v15 = SBLogCommon();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [SBHomeScreenService setObservingHomeScreenApplications:v10];
    }
  }
}

- (NSString)allIconLists
{
  BSDispatchQueueAssertMain();
  currentContext = [MEMORY[0x277CF3280] currentContext];
  remoteProcess = [currentContext remoteProcess];
  auditToken = [remoteProcess auditToken];

  homeScreenBundleIdentifiersAuthenticator = [(SBHomeScreenService *)self homeScreenBundleIdentifiersAuthenticator];
  v15 = 0;
  v7 = [homeScreenBundleIdentifiersAuthenticator authenticateAuditToken:auditToken error:&v15];
  v8 = v15;

  if (v7)
  {
    iconController = [(SBHomeScreenService *)self iconController];
    iconModel = [iconController iconModel];
    rootFolder = [iconModel rootFolder];
    lists = [rootFolder lists];
    v13 = [lists debugDescription];
  }

  else
  {
    iconController = SBLogCommon();
    if (os_log_type_enabled(iconController, OS_LOG_TYPE_ERROR))
    {
      [(SBHomeScreenService *)v8 allIconLists];
    }

    v13 = &stru_283094718;
  }

  return v13;
}

- (BOOL)hasWidgetWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  BSDispatchQueueAssertMain();
  currentContext = [MEMORY[0x277CF3280] currentContext];
  remoteProcess = [currentContext remoteProcess];
  auditToken = [remoteProcess auditToken];

  homeScreenBundleIdentifiersAuthenticator = [(SBHomeScreenService *)self homeScreenBundleIdentifiersAuthenticator];
  v19 = 0;
  v9 = [homeScreenBundleIdentifiersAuthenticator authenticateAuditToken:auditToken error:&v19];
  v10 = v19;

  if (v9)
  {
    iconController = [(SBHomeScreenService *)self iconController];
    iconModel = [iconController iconModel];
    rootFolder = [iconModel rootFolder];

    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __53__SBHomeScreenService_hasWidgetWithBundleIdentifier___block_invoke;
    v17[3] = &unk_2783B3870;
    v18 = identifierCopy;
    v14 = [rootFolder firstIconPassingTest:v17];
    v15 = v14 != 0;
  }

  else
  {
    rootFolder = SBLogCommon();
    if (os_log_type_enabled(rootFolder, OS_LOG_TYPE_ERROR))
    {
      [SBHomeScreenService hasWidgetWithBundleIdentifier:v10];
    }

    v15 = 0;
  }

  return v15;
}

uint64_t __53__SBHomeScreenService_hasWidgetWithBundleIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 isWidgetIcon])
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v4 = [v3 widgets];
    v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v14;
      while (2)
      {
        v8 = 0;
        do
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = [*(*(&v13 + 1) + 8 * v8) extensionBundleIdentifier];
          v10 = [v9 isEqualToString:*(a1 + 32)];

          if (v10)
          {
            v11 = 1;
            goto LABEL_13;
          }

          ++v8;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    v11 = 0;
LABEL_13:
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)debugContinuityWithBadgeType:(id)type deviceTypeIdentifier:(id)identifier
{
  typeCopy = type;
  identifierCopy = identifier;
  BSDispatchQueueAssertMain();
  if (os_variant_has_internal_content())
  {
    currentContext = [MEMORY[0x277CF3280] currentContext];
    remoteProcess = [currentContext remoteProcess];
    auditToken = [remoteProcess auditToken];

    configurationAuthenticator = [(SBHomeScreenService *)self configurationAuthenticator];
    v16 = 0;
    v12 = [configurationAuthenticator authenticateAuditToken:auditToken error:&v16];
    v13 = v16;

    if (v12)
    {
      v14 = [MEMORY[0x277D66378] itemForBadgeTypeString:typeCopy deviceTypeIdentifier:identifierCopy];
      [MEMORY[0x277D663F0] setDebugContinuityItem:v14];
    }

    else
    {
      v14 = SBLogCommon();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [SBHomeScreenService debugContinuityWithBadgeType:v13 deviceTypeIdentifier:?];
      }
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)runDownloadingIconTest
{
  localizedDescription = [self localizedDescription];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_8(&dword_21ED4E000, v2, v3, "%s %{public}@", v4, v5, v6, v7, 2u);
}

- (void)runRemoveAndRestoreIconTest
{
  localizedDescription = [self localizedDescription];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_8(&dword_21ED4E000, v2, v3, "%s %{public}@", v4, v5, v6, v7, 2u);
}

- (void)requestAppLibraryUpdate:(id)update reason:(id)reason completion:(id)completion
{
  v30 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  reasonCopy = reason;
  completionCopy = completion;
  homeScreenController = [(SBHomeScreenService *)self homeScreenController];
  if ([homeScreenController isModalAppLibrarySupported])
  {
    v23 = homeScreenController;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    windowSceneManager = [SBApp windowSceneManager];
    connectedWindowScenes = [windowSceneManager connectedWindowScenes];

    obj = connectedWindowScenes;
    v14 = [connectedWindowScenes countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v26;
      do
      {
        v17 = 0;
        do
        {
          if (*v26 != v16)
          {
            objc_enumerationMutation(obj);
          }

          modalLibraryController = [*(*(&v25 + 1) + 8 * v17) modalLibraryController];
          libraryViewController = [modalLibraryController libraryViewController];
          categoryMapProvider = [libraryViewController categoryMapProvider];
          [(SBHomeScreenService *)self _requestAppLibraryUpdate:updateCopy categoryMapProvider:categoryMapProvider reason:reasonCopy optionalCompletionHandler:completionCopy];

          ++v17;
        }

        while (v15 != v17);
        v15 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v15);
    }

    homeScreenController = v23;
  }

  else
  {
    overlayLibraryViewController = [homeScreenController overlayLibraryViewController];
    categoryMapProvider2 = [overlayLibraryViewController categoryMapProvider];
    [(SBHomeScreenService *)self _requestAppLibraryUpdate:updateCopy categoryMapProvider:categoryMapProvider2 reason:reasonCopy optionalCompletionHandler:completionCopy];
  }
}

- (void)_requestAppLibraryUpdate:(id)update categoryMapProvider:(id)provider reason:(id)reason optionalCompletionHandler:(id)handler
{
  updateCopy = update;
  providerCopy = provider;
  reasonCopy = reason;
  handlerCopy = handler;
  unsignedIntegerValue = [updateCopy unsignedIntegerValue];
  currentContext = [MEMORY[0x277CF3280] currentContext];
  remoteProcess = [currentContext remoteProcess];
  auditToken = [remoteProcess auditToken];

  appLibraryRequestUpdateAuthenticator = [(SBHomeScreenService *)self appLibraryRequestUpdateAuthenticator];
  v32 = 0;
  LOBYTE(remoteProcess) = [appLibraryRequestUpdateAuthenticator authenticateAuditToken:auditToken error:&v32];
  v19 = v32;

  if (remoteProcess)
  {
    v20 = 8;
    if (!unsignedIntegerValue)
    {
      v20 = 14;
    }

    if (unsignedIntegerValue == 1)
    {
      v20 = 10;
    }

    if (handlerCopy)
    {
      v21 = v20 | 0x20;
    }

    else
    {
      v21 = v20;
    }

    if (reasonCopy)
    {
      v22 = reasonCopy;
    }

    else
    {
      v22 = @"(Home Screen Service; no update reason given)";
    }

    v23 = [providerCopy requestLibraryCategoryMapRefreshWithOptions:v21 reason:v22];
    if (handlerCopy)
    {
      from = 0;
      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      mainQueue = [MEMORY[0x277CCABD8] mainQueue];
      v26 = *MEMORY[0x277D665C0];
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __101__SBHomeScreenService__requestAppLibraryUpdate_categoryMapProvider_reason_optionalCompletionHandler___block_invoke;
      v28[3] = &unk_2783B3898;
      objc_copyWeak(&v30, &from);
      v29 = handlerCopy;
      v27 = [defaultCenter addObserverForName:v26 object:v23 queue:mainQueue usingBlock:v28];
      objc_storeWeak(&from, v27);

      objc_destroyWeak(&v30);
      objc_destroyWeak(&from);
    }
  }

  else
  {
    v23 = SBLogCommon();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [SBHomeScreenService _requestAppLibraryUpdate:v19 categoryMapProvider:? reason:? optionalCompletionHandler:?];
    }
  }
}

void __101__SBHomeScreenService__requestAppLibraryUpdate_categoryMapProvider_reason_optionalCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [v3 removeObserver:WeakRetained];

  v5 = [v11 userInfo];
  v6 = [v5 objectForKey:*MEMORY[0x277D665A0]];

  if (v6)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v7 = [v11 userInfo];
    v8 = [v7 objectForKey:*MEMORY[0x277D665A8]];

    v9 = *(a1 + 32);
    v10 = [v8 dictionaryRepresentation];
    (*(v9 + 16))(v9, v10, 0);
  }
}

- (void)configureDeweyEachAppHasItsOwnCategory
{
  localizedDescription = [self localizedDescription];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_8(&dword_21ED4E000, v2, v3, "%s %{public}@", v4, v5, v6, v7, 2u);
}

- (void)configureDeweyOneCategoryWithAllApps
{
  localizedDescription = [self localizedDescription];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_8(&dword_21ED4E000, v2, v3, "%s %{public}@", v4, v5, v6, v7, 2u);
}

- (void)configureLibraryWithCategoryLimit:(id)limit
{
  limitCopy = limit;
  currentContext = [MEMORY[0x277CF3280] currentContext];
  remoteProcess = [currentContext remoteProcess];
  auditToken = [remoteProcess auditToken];

  configurationAuthenticator = [(SBHomeScreenService *)self configurationAuthenticator];
  v12 = 0;
  v9 = [configurationAuthenticator authenticateAuditToken:auditToken error:&v12];
  v10 = v12;

  if (v9)
  {
    homeScreenController = [(SBHomeScreenService *)self homeScreenController];
    -[NSObject _configureLibraryWithCategoryLimit:](homeScreenController, "_configureLibraryWithCategoryLimit:", [limitCopy integerValue]);
  }

  else
  {
    homeScreenController = SBLogCommon();
    if (os_log_type_enabled(homeScreenController, OS_LOG_TYPE_ERROR))
    {
      [SBHomeScreenService configureLibraryWithCategoryLimit:v10];
    }
  }
}

- (id)configureCategoryMapProviderToUseCategoryMapAtURL:(id)l
{
  lCopy = l;
  currentContext = [MEMORY[0x277CF3280] currentContext];
  remoteProcess = [currentContext remoteProcess];
  auditToken = [remoteProcess auditToken];

  configurationAuthenticator = [(SBHomeScreenService *)self configurationAuthenticator];
  v14 = 0;
  v9 = [configurationAuthenticator authenticateAuditToken:auditToken error:&v14];
  v10 = v14;

  if (v9)
  {
    homeScreenController = [(SBHomeScreenService *)self homeScreenController];
    v12 = [homeScreenController _configureCategoryMapProviderToUseCategoryMapAtURL:lCopy];
  }

  else
  {
    homeScreenController = SBLogCommon();
    if (os_log_type_enabled(homeScreenController, OS_LOG_TYPE_ERROR))
    {
      [SBHomeScreenService configureCategoryMapProviderToUseCategoryMapAtURL:v10];
    }

    v12 = 0;
  }

  return v12;
}

- (void)organizeAllIconsIntoFoldersWithPageCount:(id)count
{
  countCopy = count;
  currentContext = [MEMORY[0x277CF3280] currentContext];
  remoteProcess = [currentContext remoteProcess];
  auditToken = [remoteProcess auditToken];

  configurationAuthenticator = [(SBHomeScreenService *)self configurationAuthenticator];
  v13 = 0;
  v9 = [configurationAuthenticator authenticateAuditToken:auditToken error:&v13];
  v10 = v13;

  if (v9)
  {
    iconController = [(SBHomeScreenService *)self iconController];
    iconManager = [iconController iconManager];
    [iconManager organizeAllIconsIntoFoldersWithPageCount:{objc_msgSend(countCopy, "unsignedIntegerValue")}];
  }

  else
  {
    iconController = SBLogCommon();
    if (os_log_type_enabled(iconController, OS_LOG_TYPE_ERROR))
    {
      [SBHomeScreenService organizeAllIconsIntoFoldersWithPageCount:v10];
    }
  }
}

- (void)organizeAllIconsAcrossPagesWithPageCount:(id)count
{
  countCopy = count;
  currentContext = [MEMORY[0x277CF3280] currentContext];
  remoteProcess = [currentContext remoteProcess];
  auditToken = [remoteProcess auditToken];

  configurationAuthenticator = [(SBHomeScreenService *)self configurationAuthenticator];
  v13 = 0;
  v9 = [configurationAuthenticator authenticateAuditToken:auditToken error:&v13];
  v10 = v13;

  if (v9)
  {
    iconController = [(SBHomeScreenService *)self iconController];
    iconManager = [iconController iconManager];
    [iconManager organizeAllIconsAcrossPagesWithPageCount:{objc_msgSend(countCopy, "unsignedIntegerValue")}];
  }

  else
  {
    iconController = SBLogCommon();
    if (os_log_type_enabled(iconController, OS_LOG_TYPE_ERROR))
    {
      [SBHomeScreenService organizeAllIconsAcrossPagesWithPageCount:v10];
    }
  }
}

- (void)randomizeAllIconsAcrossPagesWithPageCount:(id)count
{
  countCopy = count;
  currentContext = [MEMORY[0x277CF3280] currentContext];
  remoteProcess = [currentContext remoteProcess];
  auditToken = [remoteProcess auditToken];

  configurationAuthenticator = [(SBHomeScreenService *)self configurationAuthenticator];
  v13 = 0;
  v9 = [configurationAuthenticator authenticateAuditToken:auditToken error:&v13];
  v10 = v13;

  if (v9)
  {
    iconController = [(SBHomeScreenService *)self iconController];
    iconManager = [iconController iconManager];
    [iconManager randomizeAllIconsAcrossPagesWithPageCount:{objc_msgSend(countCopy, "unsignedIntegerValue")}];
  }

  else
  {
    iconController = SBLogCommon();
    if (os_log_type_enabled(iconController, OS_LOG_TYPE_ERROR))
    {
      [SBHomeScreenService randomizeAllIconsAcrossPagesWithPageCount:v10];
    }
  }
}

- (void)ignoreAllApps
{
  localizedDescription = [self localizedDescription];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_8(&dword_21ED4E000, v2, v3, "%s %{public}@", v4, v5, v6, v7, 2u);
}

- (void)removeAllWidgets
{
  localizedDescription = [self localizedDescription];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_8(&dword_21ED4E000, v2, v3, "%s %{public}@", v4, v5, v6, v7, 2u);
}

- (void)removeWidgetsFromHomeScreen
{
  localizedDescription = [self localizedDescription];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_8(&dword_21ED4E000, v2, v3, "%s %{public}@", v4, v5, v6, v7, 2u);
}

- (void)addFileStackWithURL:(id)l
{
  lCopy = l;
  currentContext = [MEMORY[0x277CF3280] currentContext];
  remoteProcess = [currentContext remoteProcess];
  auditToken = [remoteProcess auditToken];

  fileStackIconListAuthenticator = [(SBHomeScreenService *)self fileStackIconListAuthenticator];
  v13 = 0;
  v9 = [fileStackIconListAuthenticator authenticateAuditToken:auditToken error:&v13];
  v10 = v13;

  if (v9)
  {
    iconController = [(SBHomeScreenService *)self iconController];
    iconManager = [iconController iconManager];
    [iconManager addFileStackWithURL:lCopy];
  }

  else
  {
    iconController = SBLogCommon();
    if (os_log_type_enabled(iconController, OS_LOG_TYPE_ERROR))
    {
      [SBHomeScreenService addFileStackWithURL:v10];
    }
  }
}

- (void)removeFileStackWithURL:(id)l
{
  lCopy = l;
  currentContext = [MEMORY[0x277CF3280] currentContext];
  remoteProcess = [currentContext remoteProcess];
  auditToken = [remoteProcess auditToken];

  fileStackIconListAuthenticator = [(SBHomeScreenService *)self fileStackIconListAuthenticator];
  v13 = 0;
  v9 = [fileStackIconListAuthenticator authenticateAuditToken:auditToken error:&v13];
  v10 = v13;

  if (v9)
  {
    iconController = [(SBHomeScreenService *)self iconController];
    iconManager = [iconController iconManager];
    [iconManager removeFileStackWithURL:lCopy];
  }

  else
  {
    iconController = SBLogCommon();
    if (os_log_type_enabled(iconController, OS_LOG_TYPE_ERROR))
    {
      [SBHomeScreenService removeFileStackWithURL:v10];
    }
  }
}

- (BOOL)hasConfiguredFilesStackWithURL:(id)l
{
  lCopy = l;
  currentContext = [MEMORY[0x277CF3280] currentContext];
  remoteProcess = [currentContext remoteProcess];
  auditToken = [remoteProcess auditToken];

  fileStackIconListAuthenticator = [(SBHomeScreenService *)self fileStackIconListAuthenticator];
  v15 = 0;
  v9 = [fileStackIconListAuthenticator authenticateAuditToken:auditToken error:&v15];
  v10 = v15;

  if (v9)
  {
    iconController = [(SBHomeScreenService *)self iconController];
    iconManager = [iconController iconManager];

    v13 = [iconManager hasConfiguredFilesStackWithURL:lCopy];
  }

  else
  {
    iconManager = SBLogCommon();
    if (os_log_type_enabled(iconManager, OS_LOG_TYPE_ERROR))
    {
      [SBHomeScreenService hasConfiguredFilesStackWithURL:v10];
    }

    v13 = 0;
  }

  return v13;
}

- (void)deleteAllWebClips
{
  localizedDescription = [self localizedDescription];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_8(&dword_21ED4E000, v2, v3, "%s %{public}@", v4, v5, v6, v7, 2u);
}

- (void)changeDisplayedDateOverride:(id)override
{
  overrideCopy = override;
  BSDispatchQueueAssertMain();
  currentContext = [MEMORY[0x277CF3280] currentContext];
  remoteProcess = [currentContext remoteProcess];
  auditToken = [remoteProcess auditToken];

  displayedDateAuthenticator = [(SBHomeScreenService *)self displayedDateAuthenticator];
  v11 = 0;
  LOBYTE(remoteProcess) = [displayedDateAuthenticator authenticateAuditToken:auditToken error:&v11];
  v9 = v11;

  if (remoteProcess)
  {
    mEMORY[0x277D65E40] = [MEMORY[0x277D65E40] sharedInstance];
    [mEMORY[0x277D65E40] setOverrideDate:overrideCopy];
  }

  else
  {
    mEMORY[0x277D65E40] = SBLogCommon();
    if (os_log_type_enabled(mEMORY[0x277D65E40], OS_LOG_TYPE_ERROR))
    {
      [SBHomeScreenService changeDisplayedDateOverride:v9];
    }
  }
}

- (void)changeDisplayedDateOffsetOverride:(id)override
{
  overrideCopy = override;
  BSDispatchQueueAssertMain();
  currentContext = [MEMORY[0x277CF3280] currentContext];
  remoteProcess = [currentContext remoteProcess];
  auditToken = [remoteProcess auditToken];

  displayedDateAuthenticator = [(SBHomeScreenService *)self displayedDateAuthenticator];
  v11 = 0;
  LOBYTE(remoteProcess) = [displayedDateAuthenticator authenticateAuditToken:auditToken error:&v11];
  v9 = v11;

  if (remoteProcess)
  {
    mEMORY[0x277D65E40] = [MEMORY[0x277D65E40] sharedInstance];
    [overrideCopy doubleValue];
    [mEMORY[0x277D65E40] setOverrideDateOffset:?];
  }

  else
  {
    mEMORY[0x277D65E40] = SBLogCommon();
    if (os_log_type_enabled(mEMORY[0x277D65E40], OS_LOG_TYPE_ERROR))
    {
      [SBHomeScreenService changeDisplayedDateOffsetOverride:v9];
    }
  }
}

- (void)changeDisplayedDateWithAutoupdatingSecondsOverride:(id)override
{
  overrideCopy = override;
  BSDispatchQueueAssertMain();
  currentContext = [MEMORY[0x277CF3280] currentContext];
  remoteProcess = [currentContext remoteProcess];
  auditToken = [remoteProcess auditToken];

  displayedDateAuthenticator = [(SBHomeScreenService *)self displayedDateAuthenticator];
  v11 = 0;
  LOBYTE(remoteProcess) = [displayedDateAuthenticator authenticateAuditToken:auditToken error:&v11];
  v9 = v11;

  if (remoteProcess)
  {
    mEMORY[0x277D65E40] = [MEMORY[0x277D65E40] sharedInstance];
    [mEMORY[0x277D65E40] setOverrideDateWithAutoupdatingSeconds:overrideCopy];
  }

  else
  {
    mEMORY[0x277D65E40] = SBLogCommon();
    if (os_log_type_enabled(mEMORY[0x277D65E40], OS_LOG_TYPE_ERROR))
    {
      [SBHomeScreenService changeDisplayedDateWithAutoupdatingSecondsOverride:v9];
    }
  }
}

- (void)reloadHomeScreenLayout
{
  localizedDescription = [self localizedDescription];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_8(&dword_21ED4E000, v2, v3, "%s %{public}@", v4, v5, v6, v7, 2u);
}

- (void)resetTodayViewLayout
{
  localizedDescription = [self localizedDescription];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_8(&dword_21ED4E000, v2, v3, "%s %{public}@", v4, v5, v6, v7, 2u);
}

- (void)clearTodayViewLayout
{
  localizedDescription = [self localizedDescription];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_8(&dword_21ED4E000, v2, v3, "%s %{public}@", v4, v5, v6, v7, 2u);
}

- (void)overrideBadgeValue:(id)value forBundleIdentifier:(id)identifier
{
  valueCopy = value;
  identifierCopy = identifier;
  BSDispatchQueueAssertMain();
  currentContext = [MEMORY[0x277CF3280] currentContext];
  remoteProcess = [currentContext remoteProcess];
  auditToken = [remoteProcess auditToken];

  configurationAuthenticator = [(SBHomeScreenService *)self configurationAuthenticator];
  v22 = 0;
  v12 = [configurationAuthenticator authenticateAuditToken:auditToken error:&v22];
  v13 = v22;

  if (v12)
  {
    v14 = valueCopy;
    if ([v14 integerValue] >= 1)
    {
      v15 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v14, "integerValue")}];

      v14 = v15;
    }

    iconController = [(SBHomeScreenService *)self iconController];
    iconManager = [iconController iconManager];
    iconModel = [iconManager iconModel];

    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __62__SBHomeScreenService_overrideBadgeValue_forBundleIdentifier___block_invoke;
    v20[3] = &unk_2783B38C0;
    v21 = v14;
    v19 = v14;
    [iconModel enumerateApplicationIconsForBundleIdentifier:identifierCopy usingBlock:v20];
  }

  else
  {
    iconModel = SBLogCommon();
    if (os_log_type_enabled(iconModel, OS_LOG_TYPE_ERROR))
    {
      [SBHomeScreenService overrideBadgeValue:v13 forBundleIdentifier:?];
    }
  }
}

- (void)clearNewlyInstalledAndRecentlyUpdatedAppIndicators
{
  localizedDescription = [self localizedDescription];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_8(&dword_21ED4E000, v2, v3, "%s %{public}@", v4, v5, v6, v7, 2u);
}

- (void)presentAppLibraryCategoryPodForCategoryIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  BSDispatchQueueAssertMain();
  currentContext = [MEMORY[0x277CF3280] currentContext];
  remoteProcess = [currentContext remoteProcess];
  auditToken = [remoteProcess auditToken];

  openPodAuthenticator = [(SBHomeScreenService *)self openPodAuthenticator];
  v21 = 0;
  v12 = [openPodAuthenticator authenticateAuditToken:auditToken error:&v21];
  v13 = v21;

  if (v12)
  {
    v14 = [(SBHomeScreenService *)self _translatedSBSPresentationErrorCompletionForSBHPresentationErrorCompletion:completionCopy];
    if ([(SBHomeScreenService *)self _isLibraryPresentationAllowedWithCompletion:v14])
    {
      homeScreenController = [(SBHomeScreenService *)self homeScreenController];
      if ([homeScreenController isModalAppLibrarySupported])
      {
        windowSceneManager = [SBApp windowSceneManager];
        activeDisplayWindowScene = [windowSceneManager activeDisplayWindowScene];
        modalLibraryController = [activeDisplayWindowScene modalLibraryController];
        [modalLibraryController presentLibraryCategoryPodForCategoryIdentifier:identifierCopy animated:1 completion:v14];
      }

      else
      {
        [homeScreenController presentLibraryCategoryPodFromOverlayControllerForCategoryIdentifier:identifierCopy animated:1 completion:v14];
      }
    }
  }

  else
  {
    v19 = SBLogCommon();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [SBHomeScreenService presentAppLibraryCategoryPodForCategoryIdentifier:v13 completion:?];
    }

    if (v13)
    {
      completionCopy[2](completionCopy, v13);
    }

    else
    {
      v20 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D0AA50] code:13 userInfo:0];
      completionCopy[2](completionCopy, v20);
    }
  }
}

- (BOOL)_isLibraryPresentationAllowedWithCompletion:(id)completion
{
  completionCopy = completion;
  homeScreenController = [(SBHomeScreenService *)self homeScreenController];
  if ([homeScreenController isAppLibraryAllowed])
  {
    v6 = +[SBLockScreenManager sharedInstance];
    isUILocked = [v6 isUILocked];

    if (isUILocked)
    {
      if (completionCopy)
      {
        goto LABEL_6;
      }

LABEL_13:
      v9 = 0;
      goto LABEL_14;
    }

    windowSceneManager = [SBApp windowSceneManager];
    activeDisplayWindowScene = [windowSceneManager activeDisplayWindowScene];
    layoutStateProvider = [activeDisplayWindowScene layoutStateProvider];
    layoutState = [layoutStateProvider layoutState];
    if ([layoutState unlockedEnvironmentMode] == 1)
    {

      v9 = 1;
      goto LABEL_7;
    }

    isModalAppLibrarySupported = [homeScreenController isModalAppLibrarySupported];

    if (isModalAppLibrarySupported)
    {
      v9 = 1;
      goto LABEL_14;
    }

    if (!completionCopy)
    {
      goto LABEL_13;
    }
  }

  else if (!completionCopy)
  {
    goto LABEL_13;
  }

LABEL_6:
  windowSceneManager = SBHLibraryPresentationErrorForCode();
  completionCopy[2](completionCopy, windowSceneManager);
  v9 = 0;
LABEL_7:

LABEL_14:
  return v9;
}

- (void)presentAppLibraryAnimated:(id)animated completion:(id)completion
{
  completionCopy = completion;
  BSDispatchQueueAssertMain();
  currentContext = [MEMORY[0x277CF3280] currentContext];
  remoteProcess = [currentContext remoteProcess];
  auditToken = [remoteProcess auditToken];

  configurationAuthenticator = [(SBHomeScreenService *)self configurationAuthenticator];
  v20 = 0;
  v11 = [configurationAuthenticator authenticateAuditToken:auditToken error:&v20];
  v12 = v20;

  if (v11)
  {
    v13 = [(SBHomeScreenService *)self _translatedSBSPresentationErrorCompletionForSBHPresentationErrorCompletion:completionCopy];
    if ([(SBHomeScreenService *)self _isLibraryPresentationAllowedWithCompletion:v13])
    {
      homeScreenController = [(SBHomeScreenService *)self homeScreenController];
      if ([homeScreenController isModalAppLibrarySupported])
      {
        windowSceneManager = [SBApp windowSceneManager];
        activeDisplayWindowScene = [windowSceneManager activeDisplayWindowScene];
        modalLibraryController = [activeDisplayWindowScene modalLibraryController];
        [modalLibraryController presentLibraryAnimated:animated != 0 completion:0];
      }

      else
      {
        [homeScreenController presentLibraryFromOverlayControllerAnimated:animated != 0 completion:0];
      }
    }
  }

  else
  {
    v18 = SBLogCommon();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [SBHomeScreenService presentAppLibraryAnimated:v12 completion:?];
    }

    if (v12)
    {
      completionCopy[2](completionCopy, v12);
    }

    else
    {
      v19 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D0AA50] code:13 userInfo:0];
      completionCopy[2](completionCopy, v19);
    }
  }
}

- (void)dismissAppLibraryWithCompletion:(id)completion
{
  completionCopy = completion;
  BSDispatchQueueAssertMain();
  currentContext = [MEMORY[0x277CF3280] currentContext];
  remoteProcess = [currentContext remoteProcess];
  auditToken = [remoteProcess auditToken];

  openPodAuthenticator = [(SBHomeScreenService *)self openPodAuthenticator];
  v18 = 0;
  v9 = [openPodAuthenticator authenticateAuditToken:auditToken error:&v18];
  v10 = v18;

  if (v9)
  {
    v11 = [(SBHomeScreenService *)self _translatedSBSPresentationErrorCompletionForSBHPresentationErrorCompletion:completionCopy];
    if ([(SBHomeScreenService *)self _isLibraryDismissalAllowedWithCompletion:v11])
    {
      homeScreenController = [(SBHomeScreenService *)self homeScreenController];
      if ([homeScreenController isModalAppLibrarySupported])
      {
        windowSceneManager = [SBApp windowSceneManager];
        activeDisplayWindowScene = [windowSceneManager activeDisplayWindowScene];
        modalLibraryController = [activeDisplayWindowScene modalLibraryController];
        [modalLibraryController dismissLibraryAnimated:1 completion:0];
      }

      else
      {
        [homeScreenController dismissLibraryAnimated:1 completion:0];
      }
    }
  }

  else
  {
    v16 = SBLogCommon();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [SBHomeScreenService dismissAppLibraryWithCompletion:v10];
    }

    if (v10)
    {
      completionCopy[2](completionCopy, v10);
    }

    else
    {
      v17 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D0AA50] code:13 userInfo:0];
      completionCopy[2](completionCopy, v17);
    }
  }
}

- (BOOL)_isLibraryDismissalAllowedWithCompletion:(id)completion
{
  completionCopy = completion;
  homeScreenController = [(SBHomeScreenService *)self homeScreenController];
  windowSceneManager = [SBApp windowSceneManager];
  activeDisplayWindowScene = [windowSceneManager activeDisplayWindowScene];

  if (([homeScreenController isAppLibraryAllowed] & 1) == 0)
  {
    if (!completionCopy)
    {
      goto LABEL_16;
    }

    goto LABEL_11;
  }

  if ([homeScreenController isModalAppLibrarySupported])
  {
    modalLibraryController = [activeDisplayWindowScene modalLibraryController];
    isPresentingLibrary = [modalLibraryController isPresentingLibrary];
  }

  else
  {
    modalLibraryController = [homeScreenController iconManager];
    isPresentingLibrary = [modalLibraryController isMainDisplayLibraryViewVisible];
  }

  v10 = isPresentingLibrary;

  if ((v10 & 1) == 0)
  {
    if (!completionCopy)
    {
      goto LABEL_16;
    }

    goto LABEL_11;
  }

  layoutStateProvider = [activeDisplayWindowScene layoutStateProvider];
  layoutState = [layoutStateProvider layoutState];
  if ([layoutState unlockedEnvironmentMode] != 1)
  {
    isModalAppLibrarySupported = [homeScreenController isModalAppLibrarySupported];

    if (isModalAppLibrarySupported)
    {
      v13 = 1;
      goto LABEL_17;
    }

    if (!completionCopy)
    {
LABEL_16:
      v13 = 0;
      goto LABEL_17;
    }

LABEL_11:
    layoutStateProvider = SBHLibraryPresentationErrorForCode();
    completionCopy[2](completionCopy, layoutStateProvider);
    v13 = 0;
    goto LABEL_12;
  }

  v13 = 1;
LABEL_12:

LABEL_17:
  return v13;
}

- (id)_translatedSBSPresentationErrorCompletionForSBHPresentationErrorCompletion:(id)completion
{
  completionCopy = completion;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __98__SBHomeScreenService__translatedSBSPresentationErrorCompletionForSBHPresentationErrorCompletion___block_invoke;
  v8[3] = &unk_2783A9FC8;
  v9 = completionCopy;
  v4 = completionCopy;
  v5 = MEMORY[0x223D6F7F0](v8);
  v6 = MEMORY[0x223D6F7F0]();

  return v6;
}

void __98__SBHomeScreenService__translatedSBSPresentationErrorCompletionForSBHPresentationErrorCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 32))
  {
    v11 = v3;
    v4 = [v3 domain];
    v5 = [v4 isEqualToString:*MEMORY[0x277D665C8]];

    if (v5)
    {
      [v11 code];
      v6 = SBSLibraryPodPresentationErrorCodeForErrorCode();
      v7 = NSStringFromSBSLibraryPodPresentationErrorCode();
      v8 = [MEMORY[0x277CBEB38] dictionaryWithObject:v7 forKey:*MEMORY[0x277CCA450]];
      v9 = [v11 userInfo];
      [v8 addEntriesFromDictionary:v9];

      v10 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D66FF0] code:v6 userInfo:v8];
      (*(*(a1 + 32) + 16))();
    }

    else
    {
      (*(*(a1 + 32) + 16))();
    }

    v3 = v11;
  }
}

- (void)addDebugIconWithSizeClassDescription:(id)description inPage:(id)page atPositionDescription:(id)positionDescription
{
  descriptionCopy = description;
  pageCopy = page;
  positionDescriptionCopy = positionDescription;
  BSDispatchQueueAssertMain();
  currentContext = [MEMORY[0x277CF3280] currentContext];
  remoteProcess = [currentContext remoteProcess];
  auditToken = [remoteProcess auditToken];

  addDebugIconAuthenticator = [(SBHomeScreenService *)self addDebugIconAuthenticator];
  v30 = 0;
  v15 = [addDebugIconAuthenticator authenticateAuditToken:auditToken error:&v30];
  v16 = v30;

  if (v15)
  {
    iconController = [(SBHomeScreenService *)self iconController];
    iconManager = [iconController iconManager];

    v19 = SBHIconGridSizeClassForString();
    unsignedIntegerValue = [pageCopy unsignedIntegerValue];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __89__SBHomeScreenService_addDebugIconWithSizeClassDescription_inPage_atPositionDescription___block_invoke;
    v26[3] = &unk_2783B37F8;
    v27 = iconManager;
    v28 = v19;
    v29 = unsignedIntegerValue;
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __89__SBHomeScreenService_addDebugIconWithSizeClassDescription_inPage_atPositionDescription___block_invoke_2;
    v22[3] = &unk_2783B3820;
    v23 = v27;
    v24 = v19;
    v25 = unsignedIntegerValue;
    v21 = v27;
    [(SBHomeScreenService *)self parsePositionDescription:positionDescriptionCopy gridPositionHandler:v26 indexPositionHandler:v22];
  }

  else
  {
    v19 = SBLogCommon();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [SBHomeScreenService addDebugIconWithSizeClassDescription:v16 inPage:? atPositionDescription:?];
    }
  }
}

uint64_t __89__SBHomeScreenService_addDebugIconWithSizeClassDescription_inPage_atPositionDescription___block_invoke(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v8 = a1[4];
  v9 = a1[5];
  v10 = a1[6];
  if (a5)
  {
    return [v8 addDebugIconOfSizeClass:v9 toPage:v10 coordinate:{a2, a3, a4}];
  }

  else
  {
    return [v8 addDebugIconOfSizeClass:v9 toPage:v10 coordinate:a2 orientation:{a3, a4}];
  }
}

- (void)parsePositionDescription:(id)description gridPositionHandler:(id)handler indexPositionHandler:(id)positionHandler
{
  descriptionCopy = description;
  handlerCopy = handler;
  positionHandlerCopy = positionHandler;
  v9 = [descriptionCopy rangeOfString:{@", "}];
  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    positionHandlerCopy[2](positionHandlerCopy, [descriptionCopy integerValue]);
  }

  else
  {
    v11 = v9;
    v12 = v10;
    v13 = [descriptionCopy substringToIndex:v9];
    integerValue = [v13 integerValue];

    v15 = [descriptionCopy substringFromIndex:v11 + v12];
    integerValue2 = [v15 integerValue];

    if ([descriptionCopy hasSuffix:@"P"])
    {
      v17 = 0;
      v18 = 1;
    }

    else
    {
      v19 = [descriptionCopy hasSuffix:@"L"];
      if (v19)
      {
        v18 = 4;
      }

      else
      {
        v18 = 1;
      }

      v17 = v19 ^ 1u;
    }

    handlerCopy[2](handlerCopy, integerValue, integerValue2, v18, v17);
  }
}

- (void)setObservingInstalledWebClips:(id)clips
{
  clipsCopy = clips;
  BSDispatchQueueAssertMain();
  currentContext = [MEMORY[0x277CF3280] currentContext];
  remoteProcess = [currentContext remoteProcess];
  auditToken = [remoteProcess auditToken];

  observeInstalledWebClipsAuthenticator = [(SBHomeScreenService *)self observeInstalledWebClipsAuthenticator];
  v16 = 0;
  v9 = [observeInstalledWebClipsAuthenticator authenticateAuditToken:auditToken error:&v16];
  v10 = v16;

  if (v9)
  {
    os_unfair_lock_lock(&self->_lock);
    bOOLValue = [clipsCopy BOOLValue];
    webClipObservingConnections = self->_webClipObservingConnections;
    if (bOOLValue)
    {
      if (!webClipObservingConnections)
      {
        v13 = objc_alloc_init(MEMORY[0x277CBEB58]);
        v14 = self->_webClipObservingConnections;
        self->_webClipObservingConnections = v13;

        webClipObservingConnections = self->_webClipObservingConnections;
      }

      [(NSMutableSet *)webClipObservingConnections addObject:currentContext];
    }

    else
    {
      [(NSMutableSet *)webClipObservingConnections removeObject:currentContext];
    }

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v15 = SBLogCommon();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [SBHomeScreenService setObservingInstalledWebClips:v10];
    }
  }
}

- (void)noteInstalledWebClipsDidChange
{
  v16 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  webClipObservingConnections = [(SBHomeScreenService *)self webClipObservingConnections];
  v4 = [webClipObservingConnections copy];

  os_unfair_lock_unlock(&self->_lock);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = v4;
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

        remoteTarget = [*(*(&v11 + 1) + 8 * v9) remoteTarget];
        [remoteTarget installedWebClipsDidChange];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (SBSDebugActiveWidgetInfo)debuggingActiveWidgetInfo
{
  BSDispatchQueueAssertMain();
  currentContext = [MEMORY[0x277CF3280] currentContext];
  remoteProcess = [currentContext remoteProcess];
  auditToken = [remoteProcess auditToken];

  activeWidgetInfoAuthenticator = [(SBHomeScreenService *)self activeWidgetInfoAuthenticator];
  v13 = 0;
  v7 = [activeWidgetInfoAuthenticator authenticateAuditToken:auditToken error:&v13];
  v8 = v13;

  if (v7)
  {
    iconController = [(SBHomeScreenService *)self iconController];
    iconManager = [iconController iconManager];

    debuggingActiveWidgetInfo = [iconManager debuggingActiveWidgetInfo];
  }

  else
  {
    iconManager = SBLogCommon();
    if (os_log_type_enabled(iconManager, OS_LOG_TYPE_ERROR))
    {
      [(SBHomeScreenService *)v8 debuggingActiveWidgetInfo];
    }

    debuggingActiveWidgetInfo = 0;
  }

  return debuggingActiveWidgetInfo;
}

- (void)insertEmptyPageAtIndex:(id)index
{
  indexCopy = index;
  BSDispatchQueueAssertMain();
  currentContext = [MEMORY[0x277CF3280] currentContext];
  remoteProcess = [currentContext remoteProcess];
  auditToken = [remoteProcess auditToken];

  addEmptyPageAuthenticator = [(SBHomeScreenService *)self addEmptyPageAuthenticator];
  v16 = 0;
  v9 = [addEmptyPageAuthenticator authenticateAuditToken:auditToken error:&v16];
  v10 = v16;

  if (v9)
  {
    iconController = [(SBHomeScreenService *)self iconController];
    iconManager = [iconController iconManager];

    rootFolder = [iconManager rootFolder];
    unsignedIntegerValue = [indexCopy unsignedIntegerValue];
    if (unsignedIntegerValue <= [rootFolder listCount])
    {
      v15 = [rootFolder insertEmptyListAtIndex:unsignedIntegerValue];
    }
  }

  else
  {
    iconManager = SBLogCommon();
    if (os_log_type_enabled(iconManager, OS_LOG_TYPE_ERROR))
    {
      [SBHomeScreenService insertEmptyPageAtIndex:v10];
    }
  }
}

- (void)addEmptyPage
{
  localizedDescription = [self localizedDescription];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_8(&dword_21ED4E000, v2, v3, "%s %{public}@", v4, v5, v6, v7, 2u);
}

- (void)addSuggestedPageWithPageType:(id)type focusModeIdentifier:(id)identifier
{
  typeCopy = type;
  identifierCopy = identifier;
  BSDispatchQueueAssertMain();
  currentContext = [MEMORY[0x277CF3280] currentContext];
  remoteProcess = [currentContext remoteProcess];
  auditToken = [remoteProcess auditToken];

  addSuggestedPageAuthenticator = [(SBHomeScreenService *)self addSuggestedPageAuthenticator];
  v17 = 0;
  v12 = [addSuggestedPageAuthenticator authenticateAuditToken:auditToken error:&v17];
  v13 = v17;

  if (v12)
  {
    iconController = [(SBHomeScreenService *)self iconController];
    iconManager = [iconController iconManager];

    proactivePageSuggestionsManager = [iconManager proactivePageSuggestionsManager];
    [proactivePageSuggestionsManager _addSuggestedPageWithPageType:typeCopy focusModeIdentifier:identifierCopy];
  }

  else
  {
    iconManager = SBLogCommon();
    if (os_log_type_enabled(iconManager, OS_LOG_TYPE_ERROR))
    {
      [SBHomeScreenService addSuggestedPageWithPageType:v13 focusModeIdentifier:?];
    }
  }
}

- (void)setObservingHomeScreenLayoutAvailability:(id)availability
{
  availabilityCopy = availability;
  BSDispatchQueueAssertMain();
  currentContext = [MEMORY[0x277CF3280] currentContext];
  remoteProcess = [currentContext remoteProcess];
  auditToken = [remoteProcess auditToken];

  homeScreenLayoutAvailabilityAuthenticator = [(SBHomeScreenService *)self homeScreenLayoutAvailabilityAuthenticator];
  v18 = 0;
  v9 = [homeScreenLayoutAvailabilityAuthenticator authenticateAuditToken:auditToken error:&v18];
  v10 = v18;

  if ((v9 & 1) == 0)
  {
    remoteTarget = SBLogCommon();
    if (os_log_type_enabled(remoteTarget, OS_LOG_TYPE_ERROR))
    {
      [SBHomeScreenService setObservingHomeScreenLayoutAvailability:v10];
    }

    goto LABEL_12;
  }

  os_unfair_lock_lock(&self->_lock);
  bOOLValue = [availabilityCopy BOOLValue];
  layoutAvailabilityObservingConnections = self->_layoutAvailabilityObservingConnections;
  if (bOOLValue)
  {
    if (!layoutAvailabilityObservingConnections)
    {
      v13 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v14 = self->_layoutAvailabilityObservingConnections;
      self->_layoutAvailabilityObservingConnections = v13;

      layoutAvailabilityObservingConnections = self->_layoutAvailabilityObservingConnections;
    }

    [(NSMutableSet *)layoutAvailabilityObservingConnections addObject:currentContext];
  }

  else
  {
    [(NSMutableSet *)layoutAvailabilityObservingConnections removeObject:currentContext];
  }

  os_unfair_lock_unlock(&self->_lock);
  if ([availabilityCopy BOOLValue])
  {
    homeScreenLayoutAvailability = [(SBHomeScreenService *)self homeScreenLayoutAvailability];
    bOOLValue2 = [homeScreenLayoutAvailability BOOLValue];

    if (bOOLValue2)
    {
      remoteTarget = [currentContext remoteTarget];
      [remoteTarget homeScreenLayoutAvailabilityDidChange:MEMORY[0x277CBEC38]];
LABEL_12:
    }
  }
}

- (void)noteHomeScreenLayoutAvailabilityDidChange
{
  v18 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  layoutAvailabilityObservingConnections = [(SBHomeScreenService *)self layoutAvailabilityObservingConnections];
  v4 = [layoutAvailabilityObservingConnections copy];

  os_unfair_lock_unlock(&self->_lock);
  isHomeScreenLayoutAvailable = [(SBHomeScreenService *)self isHomeScreenLayoutAvailable];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:isHomeScreenLayoutAvailable];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        remoteTarget = [*(*(&v13 + 1) + 8 * v11) remoteTarget];
        [remoteTarget homeScreenLayoutAvailabilityDidChange:v6];

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

- (NSNumber)homeScreenLayoutAvailability
{
  BSDispatchQueueAssertMain();
  currentContext = [MEMORY[0x277CF3280] currentContext];
  remoteProcess = [currentContext remoteProcess];
  auditToken = [remoteProcess auditToken];

  homeScreenLayoutAvailabilityAuthenticator = [(SBHomeScreenService *)self homeScreenLayoutAvailabilityAuthenticator];
  v13 = 0;
  v7 = [homeScreenLayoutAvailabilityAuthenticator authenticateAuditToken:auditToken error:&v13];
  v8 = v13;

  if (v7)
  {
    isHomeScreenLayoutAvailable = [(SBHomeScreenService *)self isHomeScreenLayoutAvailable];
    v10 = [MEMORY[0x277CCABB0] numberWithBool:isHomeScreenLayoutAvailable];
  }

  else
  {
    v11 = SBLogCommon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(SBHomeScreenService *)v8 homeScreenLayoutAvailability];
    }

    v10 = MEMORY[0x277CBEC28];
  }

  return v10;
}

+ (BOOL)isHomeScreenLayoutAvailableForIconController:(id)controller
{
  iconModel = [controller iconModel];
  rootFolder = [iconModel rootFolder];
  if (rootFolder)
  {
    v5 = ([iconModel lastLayoutStatus] - 1) < 2;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)iconModelDidLayout:(id)layout
{
  iconController = [(SBHomeScreenService *)self iconController];
  v4 = [objc_opt_class() isHomeScreenLayoutAvailableForIconController:iconController];
  if (v4 != [(SBHomeScreenService *)self isHomeScreenLayoutAvailable])
  {
    [(SBHomeScreenService *)self setHomeScreenLayoutAvailable:v4];
    [(SBHomeScreenService *)self noteHomeScreenLayoutAvailabilityDidChange];
  }

  [(SBHomeScreenService *)self noteHomeScreenLayoutDidChange];
}

- (void)setObservingHomeScreenLayout:(id)layout
{
  layoutCopy = layout;
  BSDispatchQueueAssertMain();
  currentContext = [MEMORY[0x277CF3280] currentContext];
  remoteProcess = [currentContext remoteProcess];
  auditToken = [remoteProcess auditToken];

  homeScreenLayoutAuthenticator = [(SBHomeScreenService *)self homeScreenLayoutAuthenticator];
  v16 = 0;
  v9 = [homeScreenLayoutAuthenticator authenticateAuditToken:auditToken error:&v16];
  v10 = v16;

  if (v9)
  {
    os_unfair_lock_lock(&self->_lock);
    bOOLValue = [layoutCopy BOOLValue];
    layoutObservingConnections = self->_layoutObservingConnections;
    if (bOOLValue)
    {
      if (!layoutObservingConnections)
      {
        v13 = objc_alloc_init(MEMORY[0x277CBEB58]);
        v14 = self->_layoutObservingConnections;
        self->_layoutObservingConnections = v13;

        layoutObservingConnections = self->_layoutObservingConnections;
      }

      [(NSMutableSet *)layoutObservingConnections addObject:currentContext];
    }

    else
    {
      [(NSMutableSet *)layoutObservingConnections removeObject:currentContext];
    }

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v15 = SBLogCommon();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [SBHomeScreenService setObservingHomeScreenLayout:v10];
    }
  }
}

- (void)setObservingIconBadgeValue:(id)value
{
  valueCopy = value;
  BSDispatchQueueAssertMain();
  currentContext = [MEMORY[0x277CF3280] currentContext];
  remoteProcess = [currentContext remoteProcess];
  auditToken = [remoteProcess auditToken];

  iconBadgeValueAuthenticator = [(SBHomeScreenService *)self iconBadgeValueAuthenticator];
  v18 = 0;
  v9 = [iconBadgeValueAuthenticator authenticateAuditToken:auditToken error:&v18];
  v10 = v18;

  if (v9)
  {
    bOOLValue = [valueCopy BOOLValue];
    os_unfair_lock_lock(&self->_lock);
    v12 = [(NSMutableSet *)self->_iconBadgeValueObservingConnections count];
    iconBadgeValueObservingConnections = self->_iconBadgeValueObservingConnections;
    if (bOOLValue)
    {
      if (!iconBadgeValueObservingConnections)
      {
        v14 = objc_alloc_init(MEMORY[0x277CBEB58]);
        v15 = self->_iconBadgeValueObservingConnections;
        self->_iconBadgeValueObservingConnections = v14;

        iconBadgeValueObservingConnections = self->_iconBadgeValueObservingConnections;
      }

      [(NSMutableSet *)iconBadgeValueObservingConnections addObject:currentContext];
    }

    else
    {
      [(NSMutableSet *)iconBadgeValueObservingConnections removeObject:currentContext];
    }

    v17 = [(NSMutableSet *)self->_iconBadgeValueObservingConnections count];
    os_unfair_lock_unlock(&self->_lock);
    if (v12 || !v17)
    {
      if (v12 && !v17)
      {
        [(SBHomeScreenService *)self endObservingNotificationsForIconBadgeValue];
      }
    }

    else
    {
      [(SBHomeScreenService *)self beginObservingNotificationsForIconBadgeValue];
    }
  }

  else
  {
    v16 = SBLogCommon();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [SBHomeScreenService setObservingIconBadgeValue:v10];
    }
  }
}

- (void)beginObservingNotificationsForIconBadgeValue
{
  sbh_leafIconDataSourceNotificationCenter = [MEMORY[0x277CCAB98] sbh_leafIconDataSourceNotificationCenter];
  [sbh_leafIconDataSourceNotificationCenter addObserver:self selector:sel_leafIconDataSourceDidChange_ name:*MEMORY[0x277D66730] object:0];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v4 = SBIconControllerIconBadgeVisibilityDidChangeNotification;
  iconController = [(SBHomeScreenService *)self iconController];
  [defaultCenter addObserver:self selector:sel_iconBadgeVisibilityDidChange_ name:v4 object:iconController];
}

- (void)endObservingNotificationsForIconBadgeValue
{
  sbh_leafIconDataSourceNotificationCenter = [MEMORY[0x277CCAB98] sbh_leafIconDataSourceNotificationCenter];
  [sbh_leafIconDataSourceNotificationCenter removeObserver:self name:*MEMORY[0x277D66730] object:0];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v4 = SBIconControllerIconBadgeVisibilityDidChangeNotification;
  iconController = [(SBHomeScreenService *)self iconController];
  [defaultCenter removeObserver:self name:v4 object:iconController];
}

- (void)leafIconDataSourceDidChange:(id)change
{
  object = [change object];
  v4 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  v6 = object;
  if (isKindOfClass)
  {
    bundleIdentifier = [object bundleIdentifier];
    if (bundleIdentifier)
    {
      v8 = [MEMORY[0x277CBEB98] setWithObject:bundleIdentifier];
      [(SBHomeScreenService *)self processUpdatesToBadgeValueForApplicationBundleIdentifiers:v8];
    }

    v6 = object;
  }
}

- (void)iconBadgeVisibilityDidChange:(id)change
{
  userInfo = [change userInfo];
  v6 = [userInfo objectForKey:@"SBApplicationBundleIdentifiers"];

  v5 = v6;
  if (v6)
  {
    [(SBHomeScreenService *)self processUpdatesToBadgeValueForApplicationBundleIdentifiers:v6];
    v5 = v6;
  }
}

- (void)processUpdatesToBadgeValueForApplicationBundleIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  iconBadgeValueUpdateBatchTimer = [(SBHomeScreenService *)self iconBadgeValueUpdateBatchTimer];

  if (iconBadgeValueUpdateBatchTimer)
  {
    iconBadgeValueUpdateBatchBundleIdentifiers = [(SBHomeScreenService *)self iconBadgeValueUpdateBatchBundleIdentifiers];
    [iconBadgeValueUpdateBatchBundleIdentifiers unionSet:identifiersCopy];
  }

  else
  {
    v7 = [identifiersCopy mutableCopy];
    [(SBHomeScreenService *)self setIconBadgeValueUpdateBatchBundleIdentifiers:v7];
    v8 = MEMORY[0x277CBEBB8];
    v11 = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = __81__SBHomeScreenService_processUpdatesToBadgeValueForApplicationBundleIdentifiers___block_invoke;
    v14 = &unk_2783B38E8;
    selfCopy = self;
    v16 = v7;
    v9 = v7;
    v10 = [v8 scheduledTimerWithTimeInterval:0 repeats:&v11 block:0.1];
    [(SBHomeScreenService *)self setIconBadgeValueUpdateBatchTimer:v10, v11, v12, v13, v14, selfCopy];
  }
}

void __81__SBHomeScreenService_processUpdatesToBadgeValueForApplicationBundleIdentifiers___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) setIconBadgeValueUpdateBatchTimer:0];
  [*(a1 + 32) setIconBadgeValueUpdateBatchBundleIdentifiers:0];
  os_unfair_lock_lock((*(a1 + 32) + 8));
  v2 = [*(a1 + 32) iconBadgeValueObservingConnections];
  v3 = [v2 copy];

  os_unfair_lock_unlock((*(a1 + 32) + 8));
  v4 = objc_alloc(MEMORY[0x277D66AC8]);
  v5 = [*(a1 + 40) allObjects];
  v6 = [v4 initWithArray:v5];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = v3;
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v13 + 1) + 8 * v11) remoteTarget];
        [v12 applicationIconInfoChangedForBundleIdentifiers:v6];

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

- (id)badgeValueForIconWithApplicationBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  BSDispatchQueueAssertMain();
  currentContext = [MEMORY[0x277CF3280] currentContext];
  remoteProcess = [currentContext remoteProcess];
  auditToken = [remoteProcess auditToken];

  iconBadgeValueAuthenticator = [(SBHomeScreenService *)self iconBadgeValueAuthenticator];
  v18 = 0;
  v9 = [iconBadgeValueAuthenticator authenticateAuditToken:auditToken error:&v18];
  v10 = v18;

  if (v9)
  {
    iconController = [(SBHomeScreenService *)self iconController];
    iconManager = [iconController iconManager];

    iconModel = [iconManager iconModel];
    v14 = [iconModel leafIconForIdentifier:identifierCopy];
    badgeNumberOrString = [v14 badgeNumberOrString];
    v16 = [objc_alloc(MEMORY[0x277D66AD0]) initWithNumberOrString:badgeNumberOrString];
  }

  else
  {
    iconManager = SBLogCommon();
    if (os_log_type_enabled(iconManager, OS_LOG_TYPE_ERROR))
    {
      [SBHomeScreenService badgeValueForIconWithApplicationBundleIdentifier:v10];
    }

    v16 = 0;
  }

  return v16;
}

- (void)badgeValueForIconWithApplicationBundleIdentifier:(id)identifier completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  BSDispatchQueueAssertMain();
  currentContext = [MEMORY[0x277CF3280] currentContext];
  remoteProcess = [currentContext remoteProcess];
  auditToken = [remoteProcess auditToken];

  iconBadgeValueAuthenticator = [(SBHomeScreenService *)self iconBadgeValueAuthenticator];
  v21 = 0;
  v12 = [iconBadgeValueAuthenticator authenticateAuditToken:auditToken error:&v21];
  v13 = v21;

  if (v12)
  {
    iconController = [(SBHomeScreenService *)self iconController];
    iconManager = [iconController iconManager];

    iconModel = [iconManager iconModel];
    v17 = [iconModel applicationIconForBundleIdentifier:identifierCopy];
    badgeNumberOrString = [v17 badgeNumberOrString];
    if (([iconManager allowsBadgingForIcon:v17] & 1) == 0)
    {

      badgeNumberOrString = 0;
    }

    v19 = [objc_alloc(MEMORY[0x277D66AD0]) initWithNumberOrString:badgeNumberOrString];
    handlerCopy[2](handlerCopy, v19, 0);

    handlerCopy = iconManager;
  }

  else
  {
    v20 = SBLogCommon();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [SBHomeScreenService badgeValueForIconWithApplicationBundleIdentifier:v13 completionHandler:?];
    }

    handlerCopy[2](handlerCopy, 0, 0);
  }
}

- (BOOL)authenticateIconStyleRequestForAuditToken:(id)token error:(id *)error
{
  tokenCopy = token;
  iconTintColorAuthenticator = [(SBHomeScreenService *)self iconTintColorAuthenticator];
  v8 = [iconTintColorAuthenticator authenticateAuditToken:tokenCopy error:error];

  if (v8 & 1) != 0 || (-[SBHomeScreenService iconStyleAuthenticator](self, "iconStyleAuthenticator"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 authenticateAuditToken:tokenCopy error:error], v9, (v10))
  {
    v11 = 1;
  }

  else
  {
    shareSheetCustomViewAuthenticator = [(SBHomeScreenService *)self shareSheetCustomViewAuthenticator];
    v11 = [shareSheetCustomViewAuthenticator authenticateAuditToken:tokenCopy error:error];
  }

  return v11;
}

- (SBSHomeScreenIconStyleConfiguration)homeScreenIconStyleConfiguration
{
  BSDispatchQueueAssertMain();
  currentContext = [MEMORY[0x277CF3280] currentContext];
  remoteProcess = [currentContext remoteProcess];
  auditToken = [remoteProcess auditToken];

  v11 = 0;
  v6 = [(SBHomeScreenService *)self authenticateIconStyleRequestForAuditToken:auditToken error:&v11];
  v7 = v11;
  if (v6)
  {
    homeScreenController = [(SBHomeScreenService *)self homeScreenController];
    currentHomeScreenIconStyleConfiguration = [homeScreenController currentHomeScreenIconStyleConfiguration];
  }

  else
  {
    homeScreenController = SBLogCommon();
    if (os_log_type_enabled(homeScreenController, OS_LOG_TYPE_ERROR))
    {
      [(SBHomeScreenService *)v7 homeScreenIconStyleConfiguration];
    }

    currentHomeScreenIconStyleConfiguration = 0;
  }

  return currentHomeScreenIconStyleConfiguration;
}

- (void)setHomeScreenIconStyleConfiguration:(id)configuration
{
  configurationCopy = configuration;
  BSDispatchQueueAssertMain();
  currentContext = [MEMORY[0x277CF3280] currentContext];
  remoteProcess = [currentContext remoteProcess];
  auditToken = [remoteProcess auditToken];

  v11 = 0;
  v8 = [(SBHomeScreenService *)self authenticateIconStyleRequestForAuditToken:auditToken error:&v11];
  v9 = v11;
  if (v8)
  {
    homeScreenController = [(SBHomeScreenService *)self homeScreenController];
    [homeScreenController setCurrentHomeScreenIconStyleConfiguration:configurationCopy];
  }

  else
  {
    homeScreenController = SBLogCommon();
    if (os_log_type_enabled(homeScreenController, OS_LOG_TYPE_ERROR))
    {
      [SBHomeScreenService setHomeScreenIconStyleConfiguration:v9];
    }
  }
}

- (void)setHomeScreenIconStyleConfiguration:(id)configuration wallpaperDimmed:(id)dimmed
{
  configurationCopy = configuration;
  dimmedCopy = dimmed;
  BSDispatchQueueAssertMain();
  currentContext = [MEMORY[0x277CF3280] currentContext];
  remoteProcess = [currentContext remoteProcess];
  auditToken = [remoteProcess auditToken];

  v15 = 0;
  v11 = [(SBHomeScreenService *)self authenticateIconStyleRequestForAuditToken:auditToken error:&v15];
  v12 = v15;
  if (v11)
  {
    bOOLValue = [dimmedCopy BOOLValue];
    homeScreenController = [(SBHomeScreenService *)self homeScreenController];
    [homeScreenController setCurrentHomeScreenIconStyleConfiguration:configurationCopy wallpaperDimmed:bOOLValue];
  }

  else
  {
    homeScreenController = SBLogCommon();
    if (os_log_type_enabled(homeScreenController, OS_LOG_TYPE_ERROR))
    {
      [SBHomeScreenService setHomeScreenIconStyleConfiguration:v12 wallpaperDimmed:?];
    }
  }
}

- (void)setObservingIconTintColor:(id)color
{
  colorCopy = color;
  BSDispatchQueueAssertMain();
  currentContext = [MEMORY[0x277CF3280] currentContext];
  remoteProcess = [currentContext remoteProcess];
  auditToken = [remoteProcess auditToken];

  v18 = 0;
  v8 = [(SBHomeScreenService *)self authenticateIconStyleRequestForAuditToken:auditToken error:&v18];
  v9 = v18;
  if (!v8)
  {
    remoteTarget = SBLogCommon();
    if (os_log_type_enabled(remoteTarget, OS_LOG_TYPE_ERROR))
    {
      [SBHomeScreenService setObservingIconTintColor:v9];
    }

    goto LABEL_17;
  }

  bOOLValue = [colorCopy BOOLValue];
  os_unfair_lock_lock(&self->_lock);
  v11 = [(NSMutableSet *)self->_iconTintColorObservingConnections count];
  iconTintColorObservingConnections = self->_iconTintColorObservingConnections;
  if (bOOLValue)
  {
    if (!iconTintColorObservingConnections)
    {
      v13 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v14 = self->_iconTintColorObservingConnections;
      self->_iconTintColorObservingConnections = v13;

      iconTintColorObservingConnections = self->_iconTintColorObservingConnections;
    }

    [(NSMutableSet *)iconTintColorObservingConnections addObject:currentContext];
  }

  else
  {
    [(NSMutableSet *)iconTintColorObservingConnections removeObject:currentContext];
  }

  v16 = [(NSMutableSet *)self->_iconTintColorObservingConnections count];
  os_unfair_lock_unlock(&self->_lock);
  if (v11 || !v16)
  {
    if (v11 && !v16)
    {
      [(SBHomeScreenService *)self endObservingNotificationsForIconTintColor];
    }
  }

  else
  {
    [(SBHomeScreenService *)self beginObservingNotificationsForIconTintColor];
  }

  if (bOOLValue)
  {
    remoteTarget = [currentContext remoteTarget];
    _currentStyleConfiguration = [(SBHomeScreenService *)self _currentStyleConfiguration];
    [remoteTarget homeScreenIconStyleConfigurationDidChange:_currentStyleConfiguration];

LABEL_17:
  }
}

void __66__SBHomeScreenService_beginObservingNotificationsForIconTintColor__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained notifyObserversOfIconImageStyleChange];
}

- (id)_currentStyleConfigurationForConnection:(id)connection
{
  homeScreenController = [(SBHomeScreenService *)self homeScreenController];
  currentIconStyleConfiguration = [homeScreenController currentIconStyleConfiguration];

  return currentIconStyleConfiguration;
}

- (void)notifyObserversOfIconImageStyleChange
{
  v18 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  iconTintColorObservingConnections = [(SBHomeScreenService *)self iconTintColorObservingConnections];
  v4 = [iconTintColorObservingConnections copy];

  os_unfair_lock_unlock(&self->_lock);
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        v11 = [(SBHomeScreenService *)self _currentStyleConfigurationForConnection:v10, v13];
        remoteTarget = [v10 remoteTarget];
        [remoteTarget homeScreenIconStyleConfigurationDidChange:v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }
}

- (void)clearAllOverflowSlotCounts
{
  localizedDescription = [self localizedDescription];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_8(&dword_21ED4E000, v2, v3, "%s %{public}@", v4, v5, v6, v7, 2u);
}

- (SBSHomeScreenServiceArrayOfNumbers)overflowSlotCounts
{
  BSDispatchQueueAssertMain();
  currentContext = [MEMORY[0x277CF3280] currentContext];
  remoteProcess = [currentContext remoteProcess];
  auditToken = [remoteProcess auditToken];

  overflowSlotsAuthenticator = [(SBHomeScreenService *)self overflowSlotsAuthenticator];
  v22 = 0;
  v7 = [overflowSlotsAuthenticator authenticateAuditToken:auditToken error:&v22];
  v8 = v22;

  if (v7)
  {
    iconController = [(SBHomeScreenService *)self iconController];
    iconManager = [iconController iconManager];

    rootFolder = [iconManager rootFolder];
    array = [MEMORY[0x277CBEB18] array];
    v17 = MEMORY[0x277D85DD0];
    v18 = 3221225472;
    v19 = __41__SBHomeScreenService_overflowSlotCounts__block_invoke;
    v20 = &unk_2783B3930;
    v21 = array;
    v13 = array;
    [rootFolder enumerateListsWithOptions:4 usingBlock:&v17];
    v14 = objc_alloc(MEMORY[0x277D66AC0]);
    v15 = [v14 initWithArray:{v13, v17, v18, v19, v20}];
  }

  else
  {
    iconManager = SBLogCommon();
    if (os_log_type_enabled(iconManager, OS_LOG_TYPE_ERROR))
    {
      [(SBHomeScreenService *)v8 overflowSlotCounts];
    }

    v15 = 0;
  }

  return v15;
}

void __41__SBHomeScreenService_overflowSlotCounts__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(a2, "overflowSlotCount")}];
  [v2 addObject:v3];
}

- (void)setupHomeScreenForWidgetScrollPerformanceTest
{
  localizedDescription = [self localizedDescription];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_8(&dword_21ED4E000, v2, v3, "%s %{public}@", v4, v5, v6, v7, 2u);
}

- (void)runWidgetDiscoverabilityTest
{
  localizedDescription = [self localizedDescription];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_8(&dword_21ED4E000, v2, v3, "%s %{public}@", v4, v5, v6, v7, 2u);
}

- (id)silhouetteLayoutForPageAtIndex:(id)index
{
  indexCopy = index;
  BSDispatchQueueAssertMain();
  currentContext = [MEMORY[0x277CF3280] currentContext];
  remoteProcess = [currentContext remoteProcess];
  auditToken = [remoteProcess auditToken];

  silhouetteAuthenticator = [(SBHomeScreenService *)self silhouetteAuthenticator];
  v15 = 0;
  v9 = [silhouetteAuthenticator authenticateAuditToken:auditToken error:&v15];
  v10 = v15;

  if (v9)
  {
    iconController = [(SBHomeScreenService *)self iconController];
    iconManager = [iconController iconManager];

    v13 = -[NSObject silhouetteLayoutForPageAtIndex:](iconManager, "silhouetteLayoutForPageAtIndex:", [indexCopy unsignedIntegerValue]);
  }

  else
  {
    iconManager = SBLogCommon();
    if (os_log_type_enabled(iconManager, OS_LOG_TYPE_ERROR))
    {
      [SBHomeScreenService silhouetteLayoutForPageAtIndex:v10];
    }

    v13 = 0;
  }

  return v13;
}

- (void)swapApplicationIconsInProminentPositionsWithBundleIdentifier:(id)identifier withApplicationIconsWithWithBundleIdentifier:(id)bundleIdentifier
{
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  BSDispatchQueueAssertMain();
  currentContext = [MEMORY[0x277CF3280] currentContext];
  remoteProcess = [currentContext remoteProcess];
  auditToken = [remoteProcess auditToken];

  prominentIconSwapAuthenticator = [(SBHomeScreenService *)self prominentIconSwapAuthenticator];
  v16 = 0;
  v12 = [prominentIconSwapAuthenticator authenticateAuditToken:auditToken error:&v16];
  v13 = v16;

  if (v12)
  {
    iconController = [(SBHomeScreenService *)self iconController];
    iconManager = [iconController iconManager];

    [iconManager swapApplicationIconsInProminentPositionsWithBundleIdentifier:identifierCopy withApplicationIconsWithWithBundleIdentifier:bundleIdentifierCopy];
  }

  else
  {
    iconManager = SBLogCommon();
    if (os_log_type_enabled(iconManager, OS_LOG_TYPE_ERROR))
    {
      [SBHomeScreenService swapApplicationIconsInProminentPositionsWithBundleIdentifier:v13 withApplicationIconsWithWithBundleIdentifier:?];
    }
  }
}

- (BOOL)canSwapApplicationIconsInProminentPositionsWithBundleIdentifier:(id)identifier withApplicationIconsWithWithBundleIdentifier:(id)bundleIdentifier
{
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  BSDispatchQueueAssertMain();
  currentContext = [MEMORY[0x277CF3280] currentContext];
  remoteProcess = [currentContext remoteProcess];
  auditToken = [remoteProcess auditToken];

  prominentIconSwapAuthenticator = [(SBHomeScreenService *)self prominentIconSwapAuthenticator];
  v18 = 0;
  v12 = [prominentIconSwapAuthenticator authenticateAuditToken:auditToken error:&v18];
  v13 = v18;

  if (v12)
  {
    iconController = [(SBHomeScreenService *)self iconController];
    iconManager = [iconController iconManager];

    v16 = [iconManager canSwapApplicationIconsInProminentPositionsWithBundleIdentifier:identifierCopy withApplicationIconsWithWithBundleIdentifier:bundleIdentifierCopy];
  }

  else
  {
    iconManager = SBLogCommon();
    if (os_log_type_enabled(iconManager, OS_LOG_TYPE_ERROR))
    {
      [SBHomeScreenService canSwapApplicationIconsInProminentPositionsWithBundleIdentifier:v13 withApplicationIconsWithWithBundleIdentifier:?];
    }

    v16 = 0;
  }

  return v16;
}

- (id)osMigrationHomeScreenLayout
{
  currentContext = [MEMORY[0x277CF3280] currentContext];
  remoteProcess = [currentContext remoteProcess];
  auditToken = [remoteProcess auditToken];

  osMigrationHomeScreenAuthenticator = [(SBHomeScreenService *)self osMigrationHomeScreenAuthenticator];
  v13 = 0;
  v7 = [osMigrationHomeScreenAuthenticator authenticateAuditToken:auditToken error:&v13];
  v8 = v13;

  if (v7)
  {
    iconController = [(SBHomeScreenService *)self iconController];
    iconModel = [iconController iconModel];

    exportedOSMigrationHomeScreenLayout = [iconModel exportedOSMigrationHomeScreenLayout];
  }

  else
  {
    iconModel = SBLogCommon();
    if (os_log_type_enabled(iconModel, OS_LOG_TYPE_ERROR))
    {
      [(SBHomeScreenService *)v8 osMigrationHomeScreenLayout];
    }

    exportedOSMigrationHomeScreenLayout = 0;
  }

  return exportedOSMigrationHomeScreenLayout;
}

- (id)osMigrationDefaultHomeScreenLayout
{
  currentContext = [MEMORY[0x277CF3280] currentContext];
  remoteProcess = [currentContext remoteProcess];
  auditToken = [remoteProcess auditToken];

  osMigrationHomeScreenAuthenticator = [(SBHomeScreenService *)self osMigrationHomeScreenAuthenticator];
  v13 = 0;
  v7 = [osMigrationHomeScreenAuthenticator authenticateAuditToken:auditToken error:&v13];
  v8 = v13;

  if (v7)
  {
    iconController = [(SBHomeScreenService *)self iconController];
    iconModel = [iconController iconModel];

    exportedOSMigrationDefaultHomeScreenLayout = [iconModel exportedOSMigrationDefaultHomeScreenLayout];
  }

  else
  {
    iconModel = SBLogCommon();
    if (os_log_type_enabled(iconModel, OS_LOG_TYPE_ERROR))
    {
      [(SBHomeScreenService *)v8 osMigrationDefaultHomeScreenLayout];
    }

    exportedOSMigrationDefaultHomeScreenLayout = 0;
  }

  return exportedOSMigrationDefaultHomeScreenLayout;
}

- (void)importOSMigrationHomeScreenLayout:(id)layout
{
  layoutCopy = layout;
  currentContext = [MEMORY[0x277CF3280] currentContext];
  remoteProcess = [currentContext remoteProcess];
  auditToken = [remoteProcess auditToken];

  osMigrationHomeScreenAuthenticator = [(SBHomeScreenService *)self osMigrationHomeScreenAuthenticator];
  v13 = 0;
  v9 = [osMigrationHomeScreenAuthenticator authenticateAuditToken:auditToken error:&v13];
  v10 = v13;

  if (v9)
  {
    iconController = [(SBHomeScreenService *)self iconController];
    iconModel = [iconController iconModel];

    [iconModel importOSMigrationHomeScreenLayout:layoutCopy];
  }

  else
  {
    iconModel = SBLogCommon();
    if (os_log_type_enabled(iconModel, OS_LOG_TYPE_ERROR))
    {
      [SBHomeScreenService importOSMigrationHomeScreenLayout:v10];
    }
  }
}

- (void)precacheIconLayersOnFirstPageWithAppearanceDescriptions:(id)descriptions
{
  v44 = *MEMORY[0x277D85DE8];
  descriptionsCopy = descriptions;
  currentContext = [MEMORY[0x277CF3280] currentContext];
  remoteProcess = [currentContext remoteProcess];
  auditToken = [remoteProcess auditToken];

  v42 = 0;
  LOBYTE(remoteProcess) = [(SBHomeScreenService *)self authenticateIconStyleRequestForAuditToken:auditToken error:&v42];
  v8 = v42;
  v9 = v8;
  if (remoteProcess)
  {
    v34 = v8;
    v35 = auditToken;
    v36 = currentContext;
    iconController = [(SBHomeScreenService *)self iconController];
    iconManager = [iconController iconManager];
    rootFolder = [iconManager rootFolder];
    v11 = objc_alloc_init(MEMORY[0x277CBEB58]);
    firstList = [rootFolder firstList];
    icons = [firstList icons];
    [v11 addObjectsFromArray:icons];

    v31 = rootFolder;
    dock = [rootFolder dock];
    icons2 = [dock icons];
    [v11 addObjectsFromArray:icons2];

    v16 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v37 = descriptionsCopy;
    array = [descriptionsCopy array];
    v18 = [array countByEnumeratingWithState:&v38 objects:v43 count:16];
    if (!v18)
    {
      goto LABEL_21;
    }

    v19 = v18;
    v20 = *v39;
    while (1)
    {
      v21 = 0;
      do
      {
        if (*v39 != v20)
        {
          objc_enumerationMutation(array);
        }

        v22 = *(*(&v38 + 1) + 8 * v21);
        if ([v22 caseInsensitiveCompare:@"light"] && objc_msgSend(v22, "caseInsensitiveCompare:", @"colorlight"))
        {
          if ([v22 caseInsensitiveCompare:@"dark"] && objc_msgSend(v22, "caseInsensitiveCompare:", @"colordark"))
          {
            if ([v22 caseInsensitiveCompare:@"clearlight"])
            {
              if ([v22 caseInsensitiveCompare:@"cleardark"])
              {
                goto LABEL_17;
              }

              clearDarkAppearance = [MEMORY[0x277D661C8] clearDarkAppearance];
            }

            else
            {
              clearDarkAppearance = [MEMORY[0x277D661C8] clearLightAppearance];
            }
          }

          else
          {
            clearDarkAppearance = [MEMORY[0x277D661C8] darkAppearance];
          }
        }

        else
        {
          clearDarkAppearance = [MEMORY[0x277D661C8] lightAppearance];
        }

        v24 = clearDarkAppearance;
        [v16 addObject:clearDarkAppearance];

LABEL_17:
        ++v21;
      }

      while (v19 != v21);
      v25 = [array countByEnumeratingWithState:&v38 objects:v43 count:16];
      v19 = v25;
      if (!v25)
      {
LABEL_21:

        v26 = [iconManager precacheLayersForIcons:v11 appearances:v16 reason:@"SBHomeScreenService"];
        mainThread = [MEMORY[0x277CCACC8] mainThread];
        threadDictionary = [mainThread threadDictionary];

        v29 = [threadDictionary objectForKey:@"precacheIconLayersOnFirstPageWithAppearanceDescriptions"];
        [v29 invalidate];

        [threadDictionary setObject:v26 forKey:@"precacheIconLayersOnFirstPageWithAppearanceDescriptions"];
        currentContext = v36;
        descriptionsCopy = v37;
        v9 = v34;
        auditToken = v35;
        v30 = iconController;
        goto LABEL_24;
      }
    }
  }

  v30 = SBLogCommon();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    [SBHomeScreenService precacheIconLayersOnFirstPageWithAppearanceDescriptions:v9];
  }

LABEL_24:
}

- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context
{
  v12 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  v7 = SBLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v11 = connectionCopy;
    _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_INFO, "New client connection: %@", buf, 0xCu);
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __65__SBHomeScreenService_listener_didReceiveConnection_withContext___block_invoke;
  v9[3] = &unk_2783AB730;
  v9[4] = self;
  [connectionCopy configureConnection:v9];
  os_unfair_lock_lock(&self->_lock);
  activeConnections = [(SBHomeScreenService *)self activeConnections];
  [activeConnections addObject:connectionCopy];

  os_unfair_lock_unlock(&self->_lock);
  [connectionCopy activate];
}

void __65__SBHomeScreenService_listener_didReceiveConnection_withContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D66AD8];
  v4 = a2;
  v5 = [v3 interface];
  [v4 setInterface:v5];

  [v4 setInterfaceTarget:*(a1 + 32)];
  v6 = [MEMORY[0x277CF32C8] userInitiated];
  [v4 setServiceQuality:v6];

  [v4 setTargetQueue:MEMORY[0x277D85CD0]];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __65__SBHomeScreenService_listener_didReceiveConnection_withContext___block_invoke_2;
  v7[3] = &unk_2783B3958;
  v7[4] = *(a1 + 32);
  [v4 setInvalidationHandler:v7];
}

void __65__SBHomeScreenService_listener_didReceiveConnection_withContext___block_invoke_2(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = SBLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v11 = 138412290;
    v12 = v3;
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_INFO, "Client disconnection: %@", &v11, 0xCu);
  }

  os_unfair_lock_lock((*(a1 + 32) + 8));
  v5 = [*(a1 + 32) activeConnections];
  [v5 removeObject:v3];

  v6 = [*(a1 + 32) webClipObservingConnections];
  [v6 removeObject:v3];

  v7 = [*(a1 + 32) layoutObservingConnections];
  [v7 removeObject:v3];

  v8 = [*(a1 + 32) layoutAvailabilityObservingConnections];
  [v8 removeObject:v3];

  v9 = [*(a1 + 32) homeScreenApplicationsObservingConnections];
  [v9 removeObject:v3];

  v10 = [*(a1 + 32) iconBadgeValueObservingConnections];
  if ([v10 count])
  {
    [v10 removeObject:v3];
    if (![v10 count])
    {
      [*(a1 + 32) endObservingNotificationsForIconBadgeValue];
    }
  }

  os_unfair_lock_unlock((*(a1 + 32) + 8));
}

- (void)initWithIconController:(uint64_t)a1 homeScreenController:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBHomeScreenService.m" lineNumber:156 description:{@"Invalid parameter not satisfying: %@", @"homeScreenController"}];
}

- (void)initWithIconController:(uint64_t)a1 homeScreenController:(uint64_t)a2 .cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBHomeScreenService.m" lineNumber:157 description:{@"Invalid parameter not satisfying: %@", @"iconController"}];
}

- (void)resetHomeScreenLayoutWithCompletion:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_8(&dword_21ED4E000, v2, v3, "%s %{public}@", v4, v5, v6, v7, 2u);
}

- (void)unforbidApplicationBundleIdentifierFromLibrary:(void *)a1 withCompletion:.cold.1(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_8(&dword_21ED4E000, v2, v3, "%s %{public}@", v4, v5, v6, v7, 2u);
}

- (void)forbidApplicationBundleIdentifierFromLibrary:(void *)a1 withCompletion:.cold.1(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_8(&dword_21ED4E000, v2, v3, "%s %{public}@", v4, v5, v6, v7, 2u);
}

- (void)resetCategoriesLayoutWithCompletion:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_8(&dword_21ED4E000, v2, v3, "%s %{public}@", v4, v5, v6, v7, 2u);
}

- (void)runFloatingDockStressTestWithCompletion:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_8(&dword_21ED4E000, v2, v3, "%s %{public}@", v4, v5, v6, v7, 2u);
}

- (void)requestSuggestedApplicationWithBundleIdentifier:(void *)a1 assertionPort:completion:.cold.1(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_8(&dword_21ED4E000, v2, v3, "%s %{public}@", v4, v5, v6, v7, 2u);
}

- (void)folderPathToIconWithBundleIdentifier:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_8(&dword_21ED4E000, v2, v3, "%s %{public}@", v4, v5, v6, v7, 2u);
}

- (void)addApplicationIconToHomeScreenWithBundleIdentifier:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_8(&dword_21ED4E000, v2, v3, "%s %{public}@", v4, v5, v6, v7, 2u);
}

- (void)addApplicationIconToHomeScreenWithBundleIdentifier:(void *)a1 inPage:atPositionDescription:.cold.1(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_8(&dword_21ED4E000, v2, v3, "%s %{public}@", v4, v5, v6, v7, 2u);
}

- (void)addPageOfApplicationIconsWithBundleIdentifier:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_8(&dword_21ED4E000, v2, v3, "%s %{public}@", v4, v5, v6, v7, 2u);
}

- (void)largeIconLayoutEnabledValue
{
  localizedDescription = [self localizedDescription];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_8(&dword_21ED4E000, v2, v3, "%s %{public}@", v4, v5, v6, v7, 2u);
}

- (void)setLargeIconLayoutEnabledValue:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_8(&dword_21ED4E000, v2, v3, "%s %{public}@", v4, v5, v6, v7, 2u);
}

- (void)largeIconSizeEnabledValue
{
  localizedDescription = [self localizedDescription];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_8(&dword_21ED4E000, v2, v3, "%s %{public}@", v4, v5, v6, v7, 2u);
}

- (void)setLargeIconSizeEnabledValue:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_8(&dword_21ED4E000, v2, v3, "%s %{public}@", v4, v5, v6, v7, 2u);
}

- (void)addsNewIconsToHomeScreenValue
{
  localizedDescription = [self localizedDescription];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_8(&dword_21ED4E000, v2, v3, "%s %{public}@", v4, v5, v6, v7, 2u);
}

- (void)setAddsNewIconsToHomeScreenValue:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_8(&dword_21ED4E000, v2, v3, "%s %{public}@", v4, v5, v6, v7, 2u);
}

- (void)setIconListsHidden:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_8(&dword_21ED4E000, v2, v3, "%s %{public}@", v4, v5, v6, v7, 2u);
}

- (void)showsBadgesInAppLibraryValue
{
  localizedDescription = [self localizedDescription];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_8(&dword_21ED4E000, v2, v3, "%s %{public}@", v4, v5, v6, v7, 2u);
}

- (void)setShowsBadgesInAppLibraryValue:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_8(&dword_21ED4E000, v2, v3, "%s %{public}@", v4, v5, v6, v7, 2u);
}

- (void)showsHomeScreenSearchAffordanceValue
{
  localizedDescription = [self localizedDescription];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_8(&dword_21ED4E000, v2, v3, "%s %{public}@", v4, v5, v6, v7, 2u);
}

- (void)setShowsHomeScreenSearchAffordanceValue:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_8(&dword_21ED4E000, v2, v3, "%s %{public}@", v4, v5, v6, v7, 2u);
}

- (void)allHomeScreenApplicationPlaceholderBundleIdentifiers
{
  localizedDescription = [self localizedDescription];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_8(&dword_21ED4E000, v2, v3, "%s %{public}@", v4, v5, v6, v7, 2u);
}

- (void)setObservingHomeScreenApplications:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_8(&dword_21ED4E000, v2, v3, "%s %{public}@", v4, v5, v6, v7, 2u);
}

- (void)allIconLists
{
  localizedDescription = [self localizedDescription];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_8(&dword_21ED4E000, v2, v3, "%s %{public}@", v4, v5, v6, v7, 2u);
}

- (void)hasWidgetWithBundleIdentifier:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_8(&dword_21ED4E000, v2, v3, "%s %{public}@", v4, v5, v6, v7, 2u);
}

- (void)debugContinuityWithBadgeType:(void *)a1 deviceTypeIdentifier:.cold.1(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_8(&dword_21ED4E000, v2, v3, "%s %{public}@", v4, v5, v6, v7, 2u);
}

- (void)_requestAppLibraryUpdate:(void *)a1 categoryMapProvider:reason:optionalCompletionHandler:.cold.1(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_8(&dword_21ED4E000, v2, v3, "%s %{public}@", v4, v5, v6, v7, 2u);
}

- (void)configureLibraryWithCategoryLimit:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_8(&dword_21ED4E000, v2, v3, "%s %{public}@", v4, v5, v6, v7, 2u);
}

- (void)configureCategoryMapProviderToUseCategoryMapAtURL:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_8(&dword_21ED4E000, v2, v3, "%s %{public}@", v4, v5, v6, v7, 2u);
}

- (void)organizeAllIconsIntoFoldersWithPageCount:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_8(&dword_21ED4E000, v2, v3, "%s %{public}@", v4, v5, v6, v7, 2u);
}

- (void)organizeAllIconsAcrossPagesWithPageCount:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_8(&dword_21ED4E000, v2, v3, "%s %{public}@", v4, v5, v6, v7, 2u);
}

- (void)randomizeAllIconsAcrossPagesWithPageCount:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_8(&dword_21ED4E000, v2, v3, "%s %{public}@", v4, v5, v6, v7, 2u);
}

- (void)addFileStackWithURL:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_8(&dword_21ED4E000, v2, v3, "%s %{public}@", v4, v5, v6, v7, 2u);
}

- (void)removeFileStackWithURL:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_8(&dword_21ED4E000, v2, v3, "%s %{public}@", v4, v5, v6, v7, 2u);
}

- (void)hasConfiguredFilesStackWithURL:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_8(&dword_21ED4E000, v2, v3, "%s %{public}@", v4, v5, v6, v7, 2u);
}

- (void)changeDisplayedDateOverride:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_8(&dword_21ED4E000, v2, v3, "%s %{public}@", v4, v5, v6, v7, 2u);
}

- (void)changeDisplayedDateOffsetOverride:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_8(&dword_21ED4E000, v2, v3, "%s %{public}@", v4, v5, v6, v7, 2u);
}

- (void)changeDisplayedDateWithAutoupdatingSecondsOverride:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_8(&dword_21ED4E000, v2, v3, "%s %{public}@", v4, v5, v6, v7, 2u);
}

- (void)overrideBadgeValue:(void *)a1 forBundleIdentifier:.cold.1(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_8(&dword_21ED4E000, v2, v3, "%s %{public}@", v4, v5, v6, v7, 2u);
}

- (void)presentAppLibraryCategoryPodForCategoryIdentifier:(void *)a1 completion:.cold.1(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_8(&dword_21ED4E000, v2, v3, "%s %{public}@", v4, v5, v6, v7, 2u);
}

- (void)presentAppLibraryAnimated:(void *)a1 completion:.cold.1(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_8(&dword_21ED4E000, v2, v3, "%s %{public}@", v4, v5, v6, v7, 2u);
}

- (void)dismissAppLibraryWithCompletion:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_8(&dword_21ED4E000, v2, v3, "%s %{public}@", v4, v5, v6, v7, 2u);
}

- (void)addDebugIconWithSizeClassDescription:(void *)a1 inPage:atPositionDescription:.cold.1(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_8(&dword_21ED4E000, v2, v3, "%s %{public}@", v4, v5, v6, v7, 2u);
}

- (void)setObservingInstalledWebClips:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_8(&dword_21ED4E000, v2, v3, "%s %{public}@", v4, v5, v6, v7, 2u);
}

- (void)debuggingActiveWidgetInfo
{
  localizedDescription = [self localizedDescription];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_8(&dword_21ED4E000, v2, v3, "%s %{public}@", v4, v5, v6, v7, 2u);
}

- (void)insertEmptyPageAtIndex:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_8(&dword_21ED4E000, v2, v3, "%s %{public}@", v4, v5, v6, v7, 2u);
}

- (void)addSuggestedPageWithPageType:(void *)a1 focusModeIdentifier:.cold.1(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_8(&dword_21ED4E000, v2, v3, "%s %{public}@", v4, v5, v6, v7, 2u);
}

- (void)setObservingHomeScreenLayoutAvailability:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_8(&dword_21ED4E000, v2, v3, "%s %{public}@", v4, v5, v6, v7, 2u);
}

- (void)homeScreenLayoutAvailability
{
  localizedDescription = [self localizedDescription];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_8(&dword_21ED4E000, v2, v3, "%s %{public}@", v4, v5, v6, v7, 2u);
}

- (void)setObservingHomeScreenLayout:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_8(&dword_21ED4E000, v2, v3, "%s %{public}@", v4, v5, v6, v7, 2u);
}

- (void)setObservingIconBadgeValue:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_8(&dword_21ED4E000, v2, v3, "%s %{public}@", v4, v5, v6, v7, 2u);
}

- (void)badgeValueForIconWithApplicationBundleIdentifier:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_8(&dword_21ED4E000, v2, v3, "%s %{public}@", v4, v5, v6, v7, 2u);
}

- (void)badgeValueForIconWithApplicationBundleIdentifier:(void *)a1 completionHandler:.cold.1(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_8(&dword_21ED4E000, v2, v3, "%s %{public}@", v4, v5, v6, v7, 2u);
}

- (void)homeScreenIconStyleConfiguration
{
  localizedDescription = [self localizedDescription];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_8(&dword_21ED4E000, v2, v3, "%s %{public}@", v4, v5, v6, v7, 2u);
}

- (void)setHomeScreenIconStyleConfiguration:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_8(&dword_21ED4E000, v2, v3, "%s %{public}@", v4, v5, v6, v7, 2u);
}

- (void)setHomeScreenIconStyleConfiguration:(void *)a1 wallpaperDimmed:.cold.1(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_8(&dword_21ED4E000, v2, v3, "%s %{public}@", v4, v5, v6, v7, 2u);
}

- (void)setObservingIconTintColor:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_8(&dword_21ED4E000, v2, v3, "%s %{public}@", v4, v5, v6, v7, 2u);
}

- (void)overflowSlotCounts
{
  localizedDescription = [self localizedDescription];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_8(&dword_21ED4E000, v2, v3, "%s %{public}@", v4, v5, v6, v7, 2u);
}

- (void)silhouetteLayoutForPageAtIndex:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_8(&dword_21ED4E000, v2, v3, "%s %{public}@", v4, v5, v6, v7, 2u);
}

- (void)swapApplicationIconsInProminentPositionsWithBundleIdentifier:(void *)a1 withApplicationIconsWithWithBundleIdentifier:.cold.1(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_8(&dword_21ED4E000, v2, v3, "%s %{public}@", v4, v5, v6, v7, 2u);
}

- (void)canSwapApplicationIconsInProminentPositionsWithBundleIdentifier:(void *)a1 withApplicationIconsWithWithBundleIdentifier:.cold.1(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_8(&dword_21ED4E000, v2, v3, "%s %{public}@", v4, v5, v6, v7, 2u);
}

- (void)osMigrationHomeScreenLayout
{
  localizedDescription = [self localizedDescription];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_8(&dword_21ED4E000, v2, v3, "%s %{public}@", v4, v5, v6, v7, 2u);
}

- (void)osMigrationDefaultHomeScreenLayout
{
  localizedDescription = [self localizedDescription];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_8(&dword_21ED4E000, v2, v3, "%s %{public}@", v4, v5, v6, v7, 2u);
}

- (void)importOSMigrationHomeScreenLayout:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_8(&dword_21ED4E000, v2, v3, "%s %{public}@", v4, v5, v6, v7, 2u);
}

- (void)precacheIconLayersOnFirstPageWithAppearanceDescriptions:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_8(&dword_21ED4E000, v2, v3, "%s %{public}@", v4, v5, v6, v7, 2u);
}

@end