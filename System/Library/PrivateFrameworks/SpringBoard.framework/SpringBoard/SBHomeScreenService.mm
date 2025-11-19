@interface SBHomeScreenService
+ (BOOL)isHomeScreenLayoutAvailableForIconController:(id)a3;
- (BOOL)_isLibraryDismissalAllowedWithCompletion:(id)a3;
- (BOOL)_isLibraryPresentationAllowedWithCompletion:(id)a3;
- (BOOL)authenticateIconStyleRequestForAuditToken:(id)a3 error:(id *)a4;
- (BOOL)canSwapApplicationIconsInProminentPositionsWithBundleIdentifier:(id)a3 withApplicationIconsWithWithBundleIdentifier:(id)a4;
- (BOOL)debugContinuityWithBadgeType:(id)a3 deviceTypeIdentifier:(id)a4;
- (BOOL)hasConfiguredFilesStackWithURL:(id)a3;
- (BOOL)hasWidgetWithBundleIdentifier:(id)a3;
- (NSNumber)addsNewIconsToHomeScreenValue;
- (NSNumber)homeScreenLayoutAvailability;
- (NSNumber)largeIconLayoutEnabledValue;
- (NSNumber)largeIconSizeEnabledValue;
- (NSNumber)showsBadgesInAppLibraryValue;
- (NSNumber)showsHomeScreenSearchAffordanceValue;
- (NSString)allIconLists;
- (SBHomeScreenService)initWithIconController:(id)a3 homeScreenController:(id)a4;
- (SBSDebugActiveWidgetInfo)debuggingActiveWidgetInfo;
- (SBSHomeScreenIconStyleConfiguration)homeScreenIconStyleConfiguration;
- (SBSHomeScreenServiceArrayOfNumbers)overflowSlotCounts;
- (SBSHomeScreenServiceArrayOfStrings)allHomeScreenApplicationBundleIdentifiers;
- (SBSHomeScreenServiceArrayOfStrings)allHomeScreenApplicationPlaceholderBundleIdentifiers;
- (id)_currentStyleConfiguration;
- (id)_currentStyleConfigurationForConnection:(id)a3;
- (id)_translatedSBSPresentationErrorCompletionForSBHPresentationErrorCompletion:(id)a3;
- (id)badgeValueForIconWithApplicationBundleIdentifier:(id)a3;
- (id)configureCategoryMapProviderToUseCategoryMapAtURL:(id)a3;
- (id)folderPathToIconWithBundleIdentifier:(id)a3;
- (id)homeScreenDefaults;
- (id)osMigrationDefaultHomeScreenLayout;
- (id)osMigrationHomeScreenLayout;
- (id)silhouetteLayoutForPageAtIndex:(id)a3;
- (void)_requestAppLibraryUpdate:(id)a3 categoryMapProvider:(id)a4 reason:(id)a5 optionalCompletionHandler:(id)a6;
- (void)addApplicationIconToHomeScreenWithBundleIdentifier:(id)a3;
- (void)addApplicationIconToHomeScreenWithBundleIdentifier:(id)a3 inPage:(id)a4 atPositionDescription:(id)a5;
- (void)addDebugIconWithSizeClassDescription:(id)a3 inPage:(id)a4 atPositionDescription:(id)a5;
- (void)addEmptyPage;
- (void)addFileStackWithURL:(id)a3;
- (void)addPageOfApplicationIconsWithBundleIdentifier:(id)a3;
- (void)addSuggestedPageWithPageType:(id)a3 focusModeIdentifier:(id)a4;
- (void)addsNewIconsToHomeScreenValue;
- (void)allHomeScreenApplicationBundleIdentifiers;
- (void)allHomeScreenApplicationPlaceholderBundleIdentifiers;
- (void)allIconLists;
- (void)badgeValueForIconWithApplicationBundleIdentifier:(id)a3 completionHandler:(id)a4;
- (void)beginObservingNotificationsForIconBadgeValue;
- (void)beginObservingNotificationsForIconTintColor;
- (void)changeDisplayedDateOffsetOverride:(id)a3;
- (void)changeDisplayedDateOverride:(id)a3;
- (void)changeDisplayedDateWithAutoupdatingSecondsOverride:(id)a3;
- (void)clearAllOverflowSlotCounts;
- (void)clearNewlyInstalledAndRecentlyUpdatedAppIndicators;
- (void)clearTodayViewLayout;
- (void)configureDeweyEachAppHasItsOwnCategory;
- (void)configureDeweyOneCategoryWithAllApps;
- (void)configureLibraryWithCategoryLimit:(id)a3;
- (void)dealloc;
- (void)debuggingActiveWidgetInfo;
- (void)deleteAllWebClips;
- (void)dismissAppLibraryWithCompletion:(id)a3;
- (void)endObservingNotificationsForIconBadgeValue;
- (void)endObservingNotificationsForIconTintColor;
- (void)forbidApplicationBundleIdentifierFromLibrary:(id)a3 withCompletion:(id)a4;
- (void)homeScreenIconStyleConfiguration;
- (void)homeScreenLayoutAvailability;
- (void)iconBadgeVisibilityDidChange:(id)a3;
- (void)iconModelDidLayout:(id)a3;
- (void)ignoreAllApps;
- (void)importOSMigrationHomeScreenLayout:(id)a3;
- (void)insertEmptyPageAtIndex:(id)a3;
- (void)largeIconLayoutEnabledValue;
- (void)largeIconSizeEnabledValue;
- (void)leafIconDataSourceDidChange:(id)a3;
- (void)listener:(id)a3 didReceiveConnection:(id)a4 withContext:(id)a5;
- (void)noteHomeScreenApplicationsDidChange;
- (void)noteHomeScreenLayoutAvailabilityDidChange;
- (void)noteHomeScreenLayoutDidChange;
- (void)noteInstalledWebClipsDidChange;
- (void)notifyObserversOfIconImageStyleChange;
- (void)organizeAllIconsAcrossPagesWithPageCount:(id)a3;
- (void)organizeAllIconsIntoFoldersWithPageCount:(id)a3;
- (void)osMigrationDefaultHomeScreenLayout;
- (void)osMigrationHomeScreenLayout;
- (void)overflowSlotCounts;
- (void)overrideBadgeValue:(id)a3 forBundleIdentifier:(id)a4;
- (void)parsePositionDescription:(id)a3 gridPositionHandler:(id)a4 indexPositionHandler:(id)a5;
- (void)precacheIconLayersOnFirstPageWithAppearanceDescriptions:(id)a3;
- (void)presentAppLibraryAnimated:(id)a3 completion:(id)a4;
- (void)presentAppLibraryCategoryPodForCategoryIdentifier:(id)a3 completion:(id)a4;
- (void)processUpdatesToBadgeValueForApplicationBundleIdentifiers:(id)a3;
- (void)randomizeAllIconsAcrossPagesWithPageCount:(id)a3;
- (void)reloadHomeScreenLayout;
- (void)removeAllWidgets;
- (void)removeFileStackWithURL:(id)a3;
- (void)removeWidgetsFromHomeScreen;
- (void)requestAppLibraryUpdate:(id)a3 reason:(id)a4 completion:(id)a5;
- (void)requestSuggestedApplicationWithBundleIdentifier:(id)a3 assertionPort:(id)a4 completion:(id)a5;
- (void)resetCategoriesLayoutWithCompletion:(id)a3;
- (void)resetHomeScreenLayoutWithCompletion:(id)a3;
- (void)resetTodayViewLayout;
- (void)runDownloadingIconTest;
- (void)runFloatingDockStressTestWithCompletion:(id)a3;
- (void)runRemoveAndRestoreIconTest;
- (void)runWidgetDiscoverabilityTest;
- (void)setAddsNewIconsToHomeScreenValue:(id)a3;
- (void)setHomeScreenIconStyleConfiguration:(id)a3;
- (void)setHomeScreenIconStyleConfiguration:(id)a3 wallpaperDimmed:(id)a4;
- (void)setIconListsHidden:(id)a3;
- (void)setLargeIconLayoutEnabledValue:(id)a3;
- (void)setLargeIconSizeEnabledValue:(id)a3;
- (void)setObservingHomeScreenApplications:(id)a3;
- (void)setObservingHomeScreenLayout:(id)a3;
- (void)setObservingHomeScreenLayoutAvailability:(id)a3;
- (void)setObservingIconBadgeValue:(id)a3;
- (void)setObservingIconTintColor:(id)a3;
- (void)setObservingInstalledWebClips:(id)a3;
- (void)setShowsBadgesInAppLibraryValue:(id)a3;
- (void)setShowsHomeScreenSearchAffordanceValue:(id)a3;
- (void)setupHomeScreenForWidgetScrollPerformanceTest;
- (void)showsBadgesInAppLibraryValue;
- (void)showsHomeScreenSearchAffordanceValue;
- (void)swapApplicationIconsInProminentPositionsWithBundleIdentifier:(id)a3 withApplicationIconsWithWithBundleIdentifier:(id)a4;
- (void)unforbidApplicationBundleIdentifierFromLibrary:(id)a3 withCompletion:(id)a4;
@end

@implementation SBHomeScreenService

- (SBSHomeScreenServiceArrayOfStrings)allHomeScreenApplicationBundleIdentifiers
{
  BSDispatchQueueAssertMain();
  v3 = [MEMORY[0x277CF3280] currentContext];
  v4 = [v3 remoteProcess];
  v5 = [v4 auditToken];

  v6 = [(SBHomeScreenService *)self homeScreenBundleIdentifiersAuthenticator];
  v18 = 0;
  v7 = [v6 authenticateAuditToken:v5 error:&v18];
  v8 = v18;

  if (v7)
  {
    v9 = [(SBHomeScreenService *)self iconController];
    v10 = [v9 iconModel];
    v11 = [v10 rootFolder];

    v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __64__SBHomeScreenService_allHomeScreenApplicationBundleIdentifiers__block_invoke;
    v16[3] = &unk_2783B3848;
    v13 = v12;
    v17 = v13;
    [v11 enumerateAllIconsWithOptions:1 usingBlock:v16];
  }

  else
  {
    v11 = SBLogCommon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
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
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_8(&dword_21ED4E000, v2, v3, "%s %{public}@", v4, v5, v6, v7, 2u);
}

- (void)noteHomeScreenApplicationsDidChange
{
  v16 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  v3 = [(SBHomeScreenService *)self homeScreenApplicationsObservingConnections];
  v4 = [v3 copy];

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

        v10 = [*(*(&v11 + 1) + 8 * v9) remoteTarget];
        [v10 homeScreenApplicationsDidChange];

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
  v3 = [MEMORY[0x277CF3280] currentContext];
  v4 = [v3 remoteProcess];
  v5 = [v4 auditToken];

  v6 = [(SBHomeScreenService *)self homeScreenBundleIdentifiersAuthenticator];
  v18 = 0;
  v7 = [v6 authenticateAuditToken:v5 error:&v18];
  v8 = v18;

  if (v7)
  {
    v9 = [(SBHomeScreenService *)self iconController];
    v10 = [v9 iconModel];
    v11 = [v10 rootFolder];

    v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __75__SBHomeScreenService_allHomeScreenApplicationPlaceholderBundleIdentifiers__block_invoke;
    v16[3] = &unk_2783B3848;
    v13 = v12;
    v17 = v13;
    [v11 enumerateAllIconsWithOptions:1 usingBlock:v16];
  }

  else
  {
    v11 = SBLogCommon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
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
  v3 = [(SBHomeScreenService *)self layoutObservingConnections];
  v4 = [v3 copy];

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

        v10 = [*(*(&v11 + 1) + 8 * v9) remoteTarget];
        [v10 homeScreenLayoutDidChange];

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
  v3 = [(SBHomeScreenService *)self iconTintColorObserver];

  if (!v3)
  {
    objc_initWeak(&location, self);
    v4 = [(SBHomeScreenService *)self homeScreenDefaults];
    v5 = MEMORY[0x277D85CD0];
    v6 = MEMORY[0x277D85CD0];
    v10 = MEMORY[0x277D85DD0];
    v11 = 3221225472;
    v12 = __66__SBHomeScreenService_beginObservingNotificationsForIconTintColor__block_invoke;
    v13 = &unk_2783A8C68;
    objc_copyWeak(&v14, &location);
    v7 = [v4 observeIconTintColorOnQueue:v5 withBlock:&v10];

    [(SBHomeScreenService *)self setIconTintColorObserver:v7, v10, v11, v12, v13];
    v8 = [(SBHomeScreenService *)self homeScreenController];
    v9 = [v8 iconStyleCoordinator];
    [v9 addIconStyleObserver:self];

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }
}

- (id)_currentStyleConfiguration
{
  v3 = [MEMORY[0x277CF3280] currentContext];
  v4 = [(SBHomeScreenService *)self _currentStyleConfigurationForConnection:v3];

  return v4;
}

- (void)endObservingNotificationsForIconTintColor
{
  v3 = [(SBHomeScreenService *)self iconTintColorObserver];
  [v3 invalidate];

  [(SBHomeScreenService *)self setIconTintColorObserver:0];
  v5 = [(SBHomeScreenService *)self homeScreenController];
  v4 = [v5 iconStyleCoordinator];
  [v4 removeIconStyleObserver:self];
}

- (id)homeScreenDefaults
{
  v2 = +[SBDefaults localDefaults];
  v3 = [v2 homeScreenDefaults];

  return v3;
}

- (SBHomeScreenService)initWithIconController:(id)a3 homeScreenController:(id)a4
{
  v8 = a3;
  v9 = a4;
  v83.receiver = self;
  v83.super_class = SBHomeScreenService;
  v10 = [(SBHomeScreenService *)&v83 init];
  if (v10)
  {
    if (v9)
    {
      if (v8)
      {
LABEL_4:
        objc_storeStrong(&v10->_homeScreenController, a4);
        objc_storeStrong(&v10->_iconController, a3);
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

        v10->_homeScreenLayoutAvailable = [objc_opt_class() isHomeScreenLayoutAvailableForIconController:v8];
        v71 = [MEMORY[0x277CCAB98] defaultCenter];
        v72 = *MEMORY[0x277D666F0];
        v73 = [v8 iconModel];
        [v71 addObserver:v10 selector:sel_iconModelDidLayout_ name:v72 object:v73];

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
      if (v8)
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
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  v4 = *MEMORY[0x277D666F0];
  v5 = [(SBIconController *)self->_iconController iconModel];
  [v3 removeObserver:self name:v4 object:v5];

  v6 = [(SBHomeScreenController *)self->_homeScreenController iconStyleCoordinator];
  [v6 removeIconStyleObserver:self];

  v7.receiver = self;
  v7.super_class = SBHomeScreenService;
  [(SBHomeScreenService *)&v7 dealloc];
}

- (void)resetHomeScreenLayoutWithCompletion:(id)a3
{
  v4 = a3;
  BSDispatchQueueAssertMain();
  v5 = [MEMORY[0x277CF3280] currentContext];
  v6 = [v5 remoteProcess];
  v7 = [v6 auditToken];

  v8 = [(SBHomeScreenService *)self resetHomeScreenLayoutAuthenticator];
  v15 = 0;
  v9 = [v8 authenticateAuditToken:v7 error:&v15];
  v10 = v15;

  if (v9)
  {
    v11 = [(SBHomeScreenService *)self iconController];
    v12 = [v11 resetHomeScreenLayout];

    if ((v12 & 1) == 0)
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

  v4[2](v4, v10);
}

- (void)unforbidApplicationBundleIdentifierFromLibrary:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  BSDispatchQueueAssertMain();
  v8 = [MEMORY[0x277CF3280] currentContext];
  v9 = [v8 remoteProcess];
  v10 = [v9 auditToken];

  v11 = [(SBHomeScreenService *)self resetHomeScreenLayoutAuthenticator];
  v18 = 0;
  v12 = [v11 authenticateAuditToken:v10 error:&v18];
  v13 = v18;

  if (v12)
  {
    v14 = [(SBHomeScreenService *)self iconController];
    v15 = [v14 unforbidApplicationBundleIdentifierFromLibrary:v6];

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

  v7[2](v7, v13);
}

- (void)forbidApplicationBundleIdentifierFromLibrary:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  BSDispatchQueueAssertMain();
  v8 = [MEMORY[0x277CF3280] currentContext];
  v9 = [v8 remoteProcess];
  v10 = [v9 auditToken];

  v11 = [(SBHomeScreenService *)self resetHomeScreenLayoutAuthenticator];
  v18 = 0;
  v12 = [v11 authenticateAuditToken:v10 error:&v18];
  v13 = v18;

  if (v12)
  {
    v14 = [(SBHomeScreenService *)self iconController];
    v15 = [v14 forbidApplicationBundleIdentifierFromLibrary:v6];

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

  v7[2](v7, v13);
}

- (void)resetCategoriesLayoutWithCompletion:(id)a3
{
  v4 = a3;
  BSDispatchQueueAssertMain();
  v5 = [MEMORY[0x277CF3280] currentContext];
  v6 = [v5 remoteProcess];
  v7 = [v6 auditToken];

  v8 = [(SBHomeScreenService *)self resetHomeScreenLayoutAuthenticator];
  v15 = 0;
  v9 = [v8 authenticateAuditToken:v7 error:&v15];
  v10 = v15;

  if (v9)
  {
    v11 = [(SBHomeScreenService *)self iconController];
    v12 = [v11 resetCategories];

    if ((v12 & 1) == 0)
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

  v4[2](v4, v10);
}

- (void)runFloatingDockStressTestWithCompletion:(id)a3
{
  v4 = a3;
  BSDispatchQueueAssertMain();
  v5 = [MEMORY[0x277CF3280] currentContext];
  v6 = [v5 remoteProcess];
  v7 = [v6 auditToken];

  v8 = [(SBHomeScreenService *)self resetHomeScreenLayoutAuthenticator];
  v23 = 0;
  LOBYTE(v6) = [v8 authenticateAuditToken:v7 error:&v23];
  v9 = v23;

  if (v6)
  {
    v10 = [SBApp windowSceneManager];
    v11 = [v10 activeDisplayWindowScene];
    v12 = [v11 floatingDockController];
    v13 = [v12 viewController];
    v14 = objc_opt_class();
    v15 = v13;
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
      v19 = [v18 suggestionsModel];
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __63__SBHomeScreenService_runFloatingDockStressTestWithCompletion___block_invoke;
      v21[3] = &unk_2783A9348;
      v22 = v4;
      [v19 _runStressTestWithCompletion:v21];
    }

    else if (v9)
    {
      (*(v4 + 2))(v4, v9);
    }

    else
    {
      v20 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D0AA50] code:13 userInfo:0];
      (*(v4 + 2))(v4, v20);
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
    v10 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D0AA50] code:13 userInfo:0];
    (*(v4 + 2))(v4, v10);
LABEL_18:

    goto LABEL_19;
  }

  (*(v4 + 2))(v4, v9);
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

- (void)requestSuggestedApplicationWithBundleIdentifier:(id)a3 assertionPort:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  BSDispatchQueueAssertMain();
  v11 = [MEMORY[0x277CF3280] currentContext];
  v12 = [v11 remoteProcess];
  v13 = [v12 auditToken];

  v14 = [(SBHomeScreenService *)self requestSuggestedAppAuthenticator];
  v30 = 0;
  LOBYTE(v12) = [v14 authenticateAuditToken:v13 error:&v30];
  v15 = v30;

  if (v12)
  {
    v16 = +[SBApplicationController sharedInstance];
    v17 = [v16 applicationWithBundleIdentifier:v8];

    v18 = [SBApp windowSceneManager];
    v19 = [v18 activeDisplayWindowScene];
    v20 = [v19 floatingDockController];
    v21 = v20;
    if (v17 && v20 && ([v20 requestedSuggestedApplication], v22 = objc_claimAutoreleasedReturnValue(), v22, !v22))
    {
      [v21 setRequestedSuggestedApplication:v17];
      v26 = MEMORY[0x277CF0CB8];
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __96__SBHomeScreenService_requestSuggestedApplicationWithBundleIdentifier_assertionPort_completion___block_invoke;
      v27[3] = &unk_2783A92D8;
      v28 = v21;
      v29 = v17;
      [v26 monitorSendRight:v9 withHandler:v27];

      v24 = v28;
    }

    else
    {
      v23 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SBHomeScreenServiceErrorDomain" code:1 userInfo:0];
      v24 = v15;
      v15 = v23;
    }

    v10[2](v10, v15);
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

    v10[2](v10, v15);
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

- (id)folderPathToIconWithBundleIdentifier:(id)a3
{
  v4 = a3;
  BSDispatchQueueAssertMain();
  v5 = [MEMORY[0x277CF3280] currentContext];
  v6 = [v5 remoteProcess];
  v7 = [v6 auditToken];

  v8 = [(SBHomeScreenService *)self iconFolderPathLookupAuthenticator];
  v15 = 0;
  v9 = [v8 authenticateAuditToken:v7 error:&v15];
  v10 = v15;

  if (v9)
  {
    v11 = [(SBHomeScreenService *)self iconController];
    v12 = [v11 iconPathForIconWithDisplayID:v4];

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

- (void)addApplicationIconToHomeScreenWithBundleIdentifier:(id)a3
{
  v4 = a3;
  BSDispatchQueueAssertMain();
  v5 = [MEMORY[0x277CF3280] currentContext];
  v6 = [v5 remoteProcess];
  v7 = [v6 auditToken];

  v8 = [(SBHomeScreenService *)self addApplicationIconAuthenticator];
  v25 = 0;
  v9 = [v8 authenticateAuditToken:v7 error:&v25];
  v10 = v25;

  if (v9)
  {
    if ([v4 length])
    {
      v11 = [(SBHomeScreenService *)self homeScreenController];
      v12 = [v11 iconManager];
      v13 = [v12 iconModel];

      v14 = [v13 applicationIconForBundleIdentifier:v4];
      if (v14)
      {
        v15 = v14;
        v16 = [v13 rootFolder];
        if ([v16 isIconInIgnoredList:v15])
        {

LABEL_11:
          [v11 addIconToHomeScreen:v15];

          goto LABEL_12;
        }

        v24 = [v13 addAdditionalIconMatchingIcon:v15];

        v15 = v24;
        if (v24)
        {
          goto LABEL_11;
        }
      }

LABEL_12:

      goto LABEL_13;
    }

    v11 = SBLogCommon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(SBHomeScreenService *)v11 addApplicationIconToHomeScreenWithBundleIdentifier:v17, v18, v19, v20, v21, v22, v23];
    }
  }

  else
  {
    v11 = SBLogCommon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [SBHomeScreenService addApplicationIconToHomeScreenWithBundleIdentifier:v10];
    }
  }

LABEL_13:
}

- (void)addApplicationIconToHomeScreenWithBundleIdentifier:(id)a3 inPage:(id)a4 atPositionDescription:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  BSDispatchQueueAssertMain();
  v11 = [MEMORY[0x277CF3280] currentContext];
  v12 = [v11 remoteProcess];
  v13 = [v12 auditToken];

  v14 = [(SBHomeScreenService *)self addApplicationIconAuthenticator];
  v36 = 0;
  v15 = [v14 authenticateAuditToken:v13 error:&v36];
  v16 = v36;

  if (v15)
  {
    if ([v8 length])
    {
      v17 = [(SBHomeScreenService *)self homeScreenController];
      v18 = [v17 iconManager];
      v19 = [v9 unsignedIntegerValue];
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __103__SBHomeScreenService_addApplicationIconToHomeScreenWithBundleIdentifier_inPage_atPositionDescription___block_invoke;
      v32[3] = &unk_2783B37F8;
      v33 = v18;
      v34 = v8;
      v35 = v19;
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __103__SBHomeScreenService_addApplicationIconToHomeScreenWithBundleIdentifier_inPage_atPositionDescription___block_invoke_2;
      v28[3] = &unk_2783B3820;
      v29 = v33;
      v30 = v34;
      v31 = v19;
      v20 = v33;
      [(SBHomeScreenService *)self parsePositionDescription:v10 gridPositionHandler:v32 indexPositionHandler:v28];
    }

    else
    {
      v17 = SBLogCommon();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [(SBHomeScreenService *)v17 addApplicationIconToHomeScreenWithBundleIdentifier:v21 inPage:v22 atPositionDescription:v23, v24, v25, v26, v27];
      }
    }
  }

  else
  {
    v17 = SBLogCommon();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
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

- (void)addPageOfApplicationIconsWithBundleIdentifier:(id)a3
{
  v4 = a3;
  BSDispatchQueueAssertMain();
  v5 = [MEMORY[0x277CF3280] currentContext];
  v6 = [v5 remoteProcess];
  v7 = [v6 auditToken];

  v8 = [(SBHomeScreenService *)self addApplicationIconAuthenticator];
  v27 = 0;
  v9 = [v8 authenticateAuditToken:v7 error:&v27];
  v10 = v27;

  if (v9)
  {
    if ([v4 length])
    {
      v11 = [(SBHomeScreenService *)self homeScreenController];
      v12 = [v11 iconManager];
      v13 = [v12 rootFolder];
      v14 = [v13 addEmptyList];
      if (v14)
      {
        v15 = v14;
        v16 = [v13 indexOfList:v14];
        v17 = [v15 maxNumberOfIcons];
        if (v17)
        {
          v18 = v17;
          for (i = 0; i != v18; ++i)
          {
            [v12 addApplicationIconWithBundleIdentifier:v4 toPage:v16 iconIndex:i];
          }
        }
      }
    }

    else
    {
      v11 = SBLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [(SBHomeScreenService *)v11 addPageOfApplicationIconsWithBundleIdentifier:v20, v21, v22, v23, v24, v25, v26];
      }
    }
  }

  else
  {
    v11 = SBLogCommon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [SBHomeScreenService addPageOfApplicationIconsWithBundleIdentifier:v10];
    }
  }
}

- (NSNumber)largeIconLayoutEnabledValue
{
  BSDispatchQueueAssertMain();
  v3 = [MEMORY[0x277CF3280] currentContext];
  v4 = [v3 remoteProcess];
  v5 = [v4 auditToken];

  v6 = [(SBHomeScreenService *)self largeIconLayoutAuthenticator];
  v13 = 0;
  LOBYTE(v4) = [v6 authenticateAuditToken:v5 error:&v13];
  v7 = v13;

  if (v4)
  {
    v8 = +[SBDefaults localDefaults];
    v9 = [v8 homeScreenDefaults];
    v10 = [v9 shouldUseLargeDefaultSizedIcons];
  }

  else
  {
    v8 = SBLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(SBHomeScreenService *)v7 largeIconLayoutEnabledValue];
    }

    v10 = 0;
  }

  v11 = [MEMORY[0x277CCABB0] numberWithBool:v10];

  return v11;
}

- (void)setLargeIconLayoutEnabledValue:(id)a3
{
  v4 = a3;
  BSDispatchQueueAssertMain();
  v5 = [MEMORY[0x277CF3280] currentContext];
  v6 = [v5 remoteProcess];
  v7 = [v6 auditToken];

  v8 = [(SBHomeScreenService *)self largeIconLayoutAuthenticator];
  v12 = 0;
  LOBYTE(v6) = [v8 authenticateAuditToken:v7 error:&v12];
  v9 = v12;

  if (v6)
  {
    v10 = +[SBDefaults localDefaults];
    v11 = [v10 homeScreenDefaults];
    [v11 setShouldUseLargeDefaultSizedIcons:{objc_msgSend(v4, "BOOLValue")}];
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
  v3 = [MEMORY[0x277CF3280] currentContext];
  v4 = [v3 remoteProcess];
  v5 = [v4 auditToken];

  v6 = [(SBHomeScreenService *)self largeIconLayoutAuthenticator];
  v13 = 0;
  v7 = [v6 authenticateAuditToken:v5 error:&v13];
  v8 = v13;

  if (v7)
  {
    v9 = [(SBHomeScreenController *)self->_homeScreenController isLargeIconSizeEnabled];
  }

  else
  {
    v10 = SBLogCommon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(SBHomeScreenService *)v8 largeIconSizeEnabledValue];
    }

    v9 = 0;
  }

  v11 = [MEMORY[0x277CCABB0] numberWithBool:v9];

  return v11;
}

- (void)setLargeIconSizeEnabledValue:(id)a3
{
  v4 = a3;
  BSDispatchQueueAssertMain();
  v5 = [MEMORY[0x277CF3280] currentContext];
  v6 = [v5 remoteProcess];
  v7 = [v6 auditToken];

  v8 = [(SBHomeScreenService *)self largeIconLayoutAuthenticator];
  v12 = 0;
  v9 = [v8 authenticateAuditToken:v7 error:&v12];
  v10 = v12;

  if (v9)
  {
    -[SBHomeScreenController setLargeIconSizeEnabled:](self->_homeScreenController, "setLargeIconSizeEnabled:", [v4 BOOLValue]);
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
  v3 = [MEMORY[0x277CF3280] currentContext];
  v4 = [v3 remoteProcess];
  v5 = [v4 auditToken];

  v6 = [(SBHomeScreenService *)self addsNewIconsToHomeScreenAuthenticator];
  v13 = 0;
  v7 = [v6 authenticateAuditToken:v5 error:&v13];
  v8 = v13;

  if (v7)
  {
    v9 = [(SBHomeScreenService *)self iconController];
    v10 = [v9 shouldAddNewIconsToRootFolder];
  }

  else
  {
    v9 = SBLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(SBHomeScreenService *)v8 addsNewIconsToHomeScreenValue];
    }

    v10 = 0;
  }

  v11 = [MEMORY[0x277CCABB0] numberWithBool:v10];

  return v11;
}

- (void)setAddsNewIconsToHomeScreenValue:(id)a3
{
  v4 = a3;
  BSDispatchQueueAssertMain();
  v5 = [MEMORY[0x277CF3280] currentContext];
  v6 = [v5 remoteProcess];
  v7 = [v6 auditToken];

  v8 = [(SBHomeScreenService *)self addsNewIconsToHomeScreenAuthenticator];
  v12 = 0;
  LOBYTE(v6) = [v8 authenticateAuditToken:v7 error:&v12];
  v9 = v12;

  if (v6)
  {
    v10 = +[SBDefaults localDefaults];
    v11 = [v10 homeScreenDefaults];
    [v11 setAutomaticallyAddsNewApplications:{objc_msgSend(v4, "BOOLValue")}];
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

- (void)setIconListsHidden:(id)a3
{
  v53 = *MEMORY[0x277D85DE8];
  v4 = a3;
  BSDispatchQueueAssertMain();
  v5 = [MEMORY[0x277CF3280] currentContext];
  v6 = [v5 remoteProcess];
  v7 = [v6 auditToken];

  v8 = [(SBHomeScreenService *)self addsNewIconsToHomeScreenAuthenticator];
  v49 = 0;
  v9 = [v8 authenticateAuditToken:v7 error:&v49];
  v10 = v49;

  if (v9)
  {
    v31 = v10;
    v32 = v7;
    v11 = [(SBHomeScreenService *)self iconController];
    v12 = [v11 iconModel];
    v13 = [v12 rootFolder];
    v14 = [v13 lists];

    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    obj = v14;
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
    v33 = v4;
    v34 = [v4 array];
    v19 = [v34 countByEnumeratingWithState:&v41 objects:v51 count:16];
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
            objc_enumerationMutation(v34);
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
                v29 = [v28 uniqueIdentifier];
                v30 = [v29 isEqualToString:v22];

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

        v20 = [v34 countByEnumeratingWithState:&v41 objects:v51 count:16];
      }

      while (v20);
    }

    v7 = v32;
    v4 = v33;
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
  v3 = [MEMORY[0x277CF3280] currentContext];
  v4 = [v3 remoteProcess];
  v5 = [v4 auditToken];

  v6 = [(SBHomeScreenService *)self showsBadgesInAppLibraryAuthenticator];
  v13 = 0;
  LOBYTE(v4) = [v6 authenticateAuditToken:v5 error:&v13];
  v7 = v13;

  if (v4)
  {
    v8 = +[SBDefaults localDefaults];
    v9 = [v8 homeScreenDefaults];
    v10 = [v9 showsBadgesInAppLibrary];
  }

  else
  {
    v8 = SBLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(SBHomeScreenService *)v7 showsBadgesInAppLibraryValue];
    }

    v10 = 0;
  }

  v11 = [MEMORY[0x277CCABB0] numberWithBool:v10];

  return v11;
}

- (void)setShowsBadgesInAppLibraryValue:(id)a3
{
  v4 = a3;
  BSDispatchQueueAssertMain();
  v5 = [MEMORY[0x277CF3280] currentContext];
  v6 = [v5 remoteProcess];
  v7 = [v6 auditToken];

  v8 = [(SBHomeScreenService *)self showsBadgesInAppLibraryAuthenticator];
  v12 = 0;
  LOBYTE(v6) = [v8 authenticateAuditToken:v7 error:&v12];
  v9 = v12;

  if (v6)
  {
    v10 = +[SBDefaults localDefaults];
    v11 = [v10 homeScreenDefaults];
    [v11 setShowsBadgesInAppLibrary:{objc_msgSend(v4, "BOOLValue")}];
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
  v3 = [MEMORY[0x277CF3280] currentContext];
  v4 = [v3 remoteProcess];
  v5 = [v4 auditToken];

  v6 = [(SBHomeScreenService *)self showsHomeScreenSearchAffordanceAuthenticator];
  v13 = 0;
  LOBYTE(v4) = [v6 authenticateAuditToken:v5 error:&v13];
  v7 = v13;

  if (v4)
  {
    v8 = +[SBDefaults localDefaults];
    v9 = [v8 homeScreenDefaults];
    v10 = [v9 showsHomeScreenSearchAffordance];
  }

  else
  {
    v8 = SBLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(SBHomeScreenService *)v7 showsHomeScreenSearchAffordanceValue];
    }

    v10 = 0;
  }

  v11 = [MEMORY[0x277CCABB0] numberWithBool:v10];

  return v11;
}

- (void)setShowsHomeScreenSearchAffordanceValue:(id)a3
{
  v4 = a3;
  BSDispatchQueueAssertMain();
  v5 = [MEMORY[0x277CF3280] currentContext];
  v6 = [v5 remoteProcess];
  v7 = [v6 auditToken];

  v8 = [(SBHomeScreenService *)self showsHomeScreenSearchAffordanceAuthenticator];
  v12 = 0;
  LOBYTE(v6) = [v8 authenticateAuditToken:v7 error:&v12];
  v9 = v12;

  if (v6)
  {
    v10 = +[SBDefaults localDefaults];
    v11 = [v10 homeScreenDefaults];
    [v11 setShowsHomeScreenSearchAffordance:{objc_msgSend(v4, "BOOLValue")}];
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

- (void)setObservingHomeScreenApplications:(id)a3
{
  v4 = a3;
  BSDispatchQueueAssertMain();
  v5 = [MEMORY[0x277CF3280] currentContext];
  v6 = [v5 remoteProcess];
  v7 = [v6 auditToken];

  v8 = [(SBHomeScreenService *)self homeScreenBundleIdentifiersAuthenticator];
  v16 = 0;
  v9 = [v8 authenticateAuditToken:v7 error:&v16];
  v10 = v16;

  if (v9)
  {
    os_unfair_lock_lock(&self->_lock);
    v11 = [v4 BOOLValue];
    homeScreenApplicationsObservingConnections = self->_homeScreenApplicationsObservingConnections;
    if (v11)
    {
      if (!homeScreenApplicationsObservingConnections)
      {
        v13 = objc_alloc_init(MEMORY[0x277CBEB58]);
        v14 = self->_homeScreenApplicationsObservingConnections;
        self->_homeScreenApplicationsObservingConnections = v13;

        homeScreenApplicationsObservingConnections = self->_homeScreenApplicationsObservingConnections;
      }

      [(NSMutableSet *)homeScreenApplicationsObservingConnections addObject:v5];
    }

    else
    {
      [(NSMutableSet *)homeScreenApplicationsObservingConnections removeObject:v5];
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
  v3 = [MEMORY[0x277CF3280] currentContext];
  v4 = [v3 remoteProcess];
  v5 = [v4 auditToken];

  v6 = [(SBHomeScreenService *)self homeScreenBundleIdentifiersAuthenticator];
  v15 = 0;
  v7 = [v6 authenticateAuditToken:v5 error:&v15];
  v8 = v15;

  if (v7)
  {
    v9 = [(SBHomeScreenService *)self iconController];
    v10 = [v9 iconModel];
    v11 = [v10 rootFolder];
    v12 = [v11 lists];
    v13 = [v12 debugDescription];
  }

  else
  {
    v9 = SBLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(SBHomeScreenService *)v8 allIconLists];
    }

    v13 = &stru_283094718;
  }

  return v13;
}

- (BOOL)hasWidgetWithBundleIdentifier:(id)a3
{
  v4 = a3;
  BSDispatchQueueAssertMain();
  v5 = [MEMORY[0x277CF3280] currentContext];
  v6 = [v5 remoteProcess];
  v7 = [v6 auditToken];

  v8 = [(SBHomeScreenService *)self homeScreenBundleIdentifiersAuthenticator];
  v19 = 0;
  v9 = [v8 authenticateAuditToken:v7 error:&v19];
  v10 = v19;

  if (v9)
  {
    v11 = [(SBHomeScreenService *)self iconController];
    v12 = [v11 iconModel];
    v13 = [v12 rootFolder];

    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __53__SBHomeScreenService_hasWidgetWithBundleIdentifier___block_invoke;
    v17[3] = &unk_2783B3870;
    v18 = v4;
    v14 = [v13 firstIconPassingTest:v17];
    v15 = v14 != 0;
  }

  else
  {
    v13 = SBLogCommon();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
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

- (BOOL)debugContinuityWithBadgeType:(id)a3 deviceTypeIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  BSDispatchQueueAssertMain();
  if (os_variant_has_internal_content())
  {
    v8 = [MEMORY[0x277CF3280] currentContext];
    v9 = [v8 remoteProcess];
    v10 = [v9 auditToken];

    v11 = [(SBHomeScreenService *)self configurationAuthenticator];
    v16 = 0;
    v12 = [v11 authenticateAuditToken:v10 error:&v16];
    v13 = v16;

    if (v12)
    {
      v14 = [MEMORY[0x277D66378] itemForBadgeTypeString:v6 deviceTypeIdentifier:v7];
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
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_8(&dword_21ED4E000, v2, v3, "%s %{public}@", v4, v5, v6, v7, 2u);
}

- (void)runRemoveAndRestoreIconTest
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_8(&dword_21ED4E000, v2, v3, "%s %{public}@", v4, v5, v6, v7, 2u);
}

- (void)requestAppLibraryUpdate:(id)a3 reason:(id)a4 completion:(id)a5
{
  v30 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(SBHomeScreenService *)self homeScreenController];
  if ([v11 isModalAppLibrarySupported])
  {
    v23 = v11;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v12 = [SBApp windowSceneManager];
    v13 = [v12 connectedWindowScenes];

    obj = v13;
    v14 = [v13 countByEnumeratingWithState:&v25 objects:v29 count:16];
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

          v18 = [*(*(&v25 + 1) + 8 * v17) modalLibraryController];
          v19 = [v18 libraryViewController];
          v20 = [v19 categoryMapProvider];
          [(SBHomeScreenService *)self _requestAppLibraryUpdate:v8 categoryMapProvider:v20 reason:v9 optionalCompletionHandler:v10];

          ++v17;
        }

        while (v15 != v17);
        v15 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v15);
    }

    v11 = v23;
  }

  else
  {
    v21 = [v11 overlayLibraryViewController];
    v22 = [v21 categoryMapProvider];
    [(SBHomeScreenService *)self _requestAppLibraryUpdate:v8 categoryMapProvider:v22 reason:v9 optionalCompletionHandler:v10];
  }
}

- (void)_requestAppLibraryUpdate:(id)a3 categoryMapProvider:(id)a4 reason:(id)a5 optionalCompletionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [v10 unsignedIntegerValue];
  v15 = [MEMORY[0x277CF3280] currentContext];
  v16 = [v15 remoteProcess];
  v17 = [v16 auditToken];

  v18 = [(SBHomeScreenService *)self appLibraryRequestUpdateAuthenticator];
  v32 = 0;
  LOBYTE(v16) = [v18 authenticateAuditToken:v17 error:&v32];
  v19 = v32;

  if (v16)
  {
    v20 = 8;
    if (!v14)
    {
      v20 = 14;
    }

    if (v14 == 1)
    {
      v20 = 10;
    }

    if (v13)
    {
      v21 = v20 | 0x20;
    }

    else
    {
      v21 = v20;
    }

    if (v12)
    {
      v22 = v12;
    }

    else
    {
      v22 = @"(Home Screen Service; no update reason given)";
    }

    v23 = [v11 requestLibraryCategoryMapRefreshWithOptions:v21 reason:v22];
    if (v13)
    {
      from = 0;
      v24 = [MEMORY[0x277CCAB98] defaultCenter];
      v25 = [MEMORY[0x277CCABD8] mainQueue];
      v26 = *MEMORY[0x277D665C0];
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __101__SBHomeScreenService__requestAppLibraryUpdate_categoryMapProvider_reason_optionalCompletionHandler___block_invoke;
      v28[3] = &unk_2783B3898;
      objc_copyWeak(&v30, &from);
      v29 = v13;
      v27 = [v24 addObserverForName:v26 object:v23 queue:v25 usingBlock:v28];
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
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_8(&dword_21ED4E000, v2, v3, "%s %{public}@", v4, v5, v6, v7, 2u);
}

- (void)configureDeweyOneCategoryWithAllApps
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_8(&dword_21ED4E000, v2, v3, "%s %{public}@", v4, v5, v6, v7, 2u);
}

- (void)configureLibraryWithCategoryLimit:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CF3280] currentContext];
  v6 = [v5 remoteProcess];
  v7 = [v6 auditToken];

  v8 = [(SBHomeScreenService *)self configurationAuthenticator];
  v12 = 0;
  v9 = [v8 authenticateAuditToken:v7 error:&v12];
  v10 = v12;

  if (v9)
  {
    v11 = [(SBHomeScreenService *)self homeScreenController];
    -[NSObject _configureLibraryWithCategoryLimit:](v11, "_configureLibraryWithCategoryLimit:", [v4 integerValue]);
  }

  else
  {
    v11 = SBLogCommon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [SBHomeScreenService configureLibraryWithCategoryLimit:v10];
    }
  }
}

- (id)configureCategoryMapProviderToUseCategoryMapAtURL:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CF3280] currentContext];
  v6 = [v5 remoteProcess];
  v7 = [v6 auditToken];

  v8 = [(SBHomeScreenService *)self configurationAuthenticator];
  v14 = 0;
  v9 = [v8 authenticateAuditToken:v7 error:&v14];
  v10 = v14;

  if (v9)
  {
    v11 = [(SBHomeScreenService *)self homeScreenController];
    v12 = [v11 _configureCategoryMapProviderToUseCategoryMapAtURL:v4];
  }

  else
  {
    v11 = SBLogCommon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [SBHomeScreenService configureCategoryMapProviderToUseCategoryMapAtURL:v10];
    }

    v12 = 0;
  }

  return v12;
}

- (void)organizeAllIconsIntoFoldersWithPageCount:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CF3280] currentContext];
  v6 = [v5 remoteProcess];
  v7 = [v6 auditToken];

  v8 = [(SBHomeScreenService *)self configurationAuthenticator];
  v13 = 0;
  v9 = [v8 authenticateAuditToken:v7 error:&v13];
  v10 = v13;

  if (v9)
  {
    v11 = [(SBHomeScreenService *)self iconController];
    v12 = [v11 iconManager];
    [v12 organizeAllIconsIntoFoldersWithPageCount:{objc_msgSend(v4, "unsignedIntegerValue")}];
  }

  else
  {
    v11 = SBLogCommon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [SBHomeScreenService organizeAllIconsIntoFoldersWithPageCount:v10];
    }
  }
}

- (void)organizeAllIconsAcrossPagesWithPageCount:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CF3280] currentContext];
  v6 = [v5 remoteProcess];
  v7 = [v6 auditToken];

  v8 = [(SBHomeScreenService *)self configurationAuthenticator];
  v13 = 0;
  v9 = [v8 authenticateAuditToken:v7 error:&v13];
  v10 = v13;

  if (v9)
  {
    v11 = [(SBHomeScreenService *)self iconController];
    v12 = [v11 iconManager];
    [v12 organizeAllIconsAcrossPagesWithPageCount:{objc_msgSend(v4, "unsignedIntegerValue")}];
  }

  else
  {
    v11 = SBLogCommon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [SBHomeScreenService organizeAllIconsAcrossPagesWithPageCount:v10];
    }
  }
}

- (void)randomizeAllIconsAcrossPagesWithPageCount:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CF3280] currentContext];
  v6 = [v5 remoteProcess];
  v7 = [v6 auditToken];

  v8 = [(SBHomeScreenService *)self configurationAuthenticator];
  v13 = 0;
  v9 = [v8 authenticateAuditToken:v7 error:&v13];
  v10 = v13;

  if (v9)
  {
    v11 = [(SBHomeScreenService *)self iconController];
    v12 = [v11 iconManager];
    [v12 randomizeAllIconsAcrossPagesWithPageCount:{objc_msgSend(v4, "unsignedIntegerValue")}];
  }

  else
  {
    v11 = SBLogCommon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [SBHomeScreenService randomizeAllIconsAcrossPagesWithPageCount:v10];
    }
  }
}

- (void)ignoreAllApps
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_8(&dword_21ED4E000, v2, v3, "%s %{public}@", v4, v5, v6, v7, 2u);
}

- (void)removeAllWidgets
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_8(&dword_21ED4E000, v2, v3, "%s %{public}@", v4, v5, v6, v7, 2u);
}

- (void)removeWidgetsFromHomeScreen
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_8(&dword_21ED4E000, v2, v3, "%s %{public}@", v4, v5, v6, v7, 2u);
}

- (void)addFileStackWithURL:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CF3280] currentContext];
  v6 = [v5 remoteProcess];
  v7 = [v6 auditToken];

  v8 = [(SBHomeScreenService *)self fileStackIconListAuthenticator];
  v13 = 0;
  v9 = [v8 authenticateAuditToken:v7 error:&v13];
  v10 = v13;

  if (v9)
  {
    v11 = [(SBHomeScreenService *)self iconController];
    v12 = [v11 iconManager];
    [v12 addFileStackWithURL:v4];
  }

  else
  {
    v11 = SBLogCommon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [SBHomeScreenService addFileStackWithURL:v10];
    }
  }
}

- (void)removeFileStackWithURL:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CF3280] currentContext];
  v6 = [v5 remoteProcess];
  v7 = [v6 auditToken];

  v8 = [(SBHomeScreenService *)self fileStackIconListAuthenticator];
  v13 = 0;
  v9 = [v8 authenticateAuditToken:v7 error:&v13];
  v10 = v13;

  if (v9)
  {
    v11 = [(SBHomeScreenService *)self iconController];
    v12 = [v11 iconManager];
    [v12 removeFileStackWithURL:v4];
  }

  else
  {
    v11 = SBLogCommon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [SBHomeScreenService removeFileStackWithURL:v10];
    }
  }
}

- (BOOL)hasConfiguredFilesStackWithURL:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CF3280] currentContext];
  v6 = [v5 remoteProcess];
  v7 = [v6 auditToken];

  v8 = [(SBHomeScreenService *)self fileStackIconListAuthenticator];
  v15 = 0;
  v9 = [v8 authenticateAuditToken:v7 error:&v15];
  v10 = v15;

  if (v9)
  {
    v11 = [(SBHomeScreenService *)self iconController];
    v12 = [v11 iconManager];

    v13 = [v12 hasConfiguredFilesStackWithURL:v4];
  }

  else
  {
    v12 = SBLogCommon();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [SBHomeScreenService hasConfiguredFilesStackWithURL:v10];
    }

    v13 = 0;
  }

  return v13;
}

- (void)deleteAllWebClips
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_8(&dword_21ED4E000, v2, v3, "%s %{public}@", v4, v5, v6, v7, 2u);
}

- (void)changeDisplayedDateOverride:(id)a3
{
  v4 = a3;
  BSDispatchQueueAssertMain();
  v5 = [MEMORY[0x277CF3280] currentContext];
  v6 = [v5 remoteProcess];
  v7 = [v6 auditToken];

  v8 = [(SBHomeScreenService *)self displayedDateAuthenticator];
  v11 = 0;
  LOBYTE(v6) = [v8 authenticateAuditToken:v7 error:&v11];
  v9 = v11;

  if (v6)
  {
    v10 = [MEMORY[0x277D65E40] sharedInstance];
    [v10 setOverrideDate:v4];
  }

  else
  {
    v10 = SBLogCommon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [SBHomeScreenService changeDisplayedDateOverride:v9];
    }
  }
}

- (void)changeDisplayedDateOffsetOverride:(id)a3
{
  v4 = a3;
  BSDispatchQueueAssertMain();
  v5 = [MEMORY[0x277CF3280] currentContext];
  v6 = [v5 remoteProcess];
  v7 = [v6 auditToken];

  v8 = [(SBHomeScreenService *)self displayedDateAuthenticator];
  v11 = 0;
  LOBYTE(v6) = [v8 authenticateAuditToken:v7 error:&v11];
  v9 = v11;

  if (v6)
  {
    v10 = [MEMORY[0x277D65E40] sharedInstance];
    [v4 doubleValue];
    [v10 setOverrideDateOffset:?];
  }

  else
  {
    v10 = SBLogCommon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [SBHomeScreenService changeDisplayedDateOffsetOverride:v9];
    }
  }
}

- (void)changeDisplayedDateWithAutoupdatingSecondsOverride:(id)a3
{
  v4 = a3;
  BSDispatchQueueAssertMain();
  v5 = [MEMORY[0x277CF3280] currentContext];
  v6 = [v5 remoteProcess];
  v7 = [v6 auditToken];

  v8 = [(SBHomeScreenService *)self displayedDateAuthenticator];
  v11 = 0;
  LOBYTE(v6) = [v8 authenticateAuditToken:v7 error:&v11];
  v9 = v11;

  if (v6)
  {
    v10 = [MEMORY[0x277D65E40] sharedInstance];
    [v10 setOverrideDateWithAutoupdatingSeconds:v4];
  }

  else
  {
    v10 = SBLogCommon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [SBHomeScreenService changeDisplayedDateWithAutoupdatingSecondsOverride:v9];
    }
  }
}

- (void)reloadHomeScreenLayout
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_8(&dword_21ED4E000, v2, v3, "%s %{public}@", v4, v5, v6, v7, 2u);
}

- (void)resetTodayViewLayout
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_8(&dword_21ED4E000, v2, v3, "%s %{public}@", v4, v5, v6, v7, 2u);
}

- (void)clearTodayViewLayout
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_8(&dword_21ED4E000, v2, v3, "%s %{public}@", v4, v5, v6, v7, 2u);
}

- (void)overrideBadgeValue:(id)a3 forBundleIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  BSDispatchQueueAssertMain();
  v8 = [MEMORY[0x277CF3280] currentContext];
  v9 = [v8 remoteProcess];
  v10 = [v9 auditToken];

  v11 = [(SBHomeScreenService *)self configurationAuthenticator];
  v22 = 0;
  v12 = [v11 authenticateAuditToken:v10 error:&v22];
  v13 = v22;

  if (v12)
  {
    v14 = v6;
    if ([v14 integerValue] >= 1)
    {
      v15 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v14, "integerValue")}];

      v14 = v15;
    }

    v16 = [(SBHomeScreenService *)self iconController];
    v17 = [v16 iconManager];
    v18 = [v17 iconModel];

    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __62__SBHomeScreenService_overrideBadgeValue_forBundleIdentifier___block_invoke;
    v20[3] = &unk_2783B38C0;
    v21 = v14;
    v19 = v14;
    [v18 enumerateApplicationIconsForBundleIdentifier:v7 usingBlock:v20];
  }

  else
  {
    v18 = SBLogCommon();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [SBHomeScreenService overrideBadgeValue:v13 forBundleIdentifier:?];
    }
  }
}

- (void)clearNewlyInstalledAndRecentlyUpdatedAppIndicators
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_8(&dword_21ED4E000, v2, v3, "%s %{public}@", v4, v5, v6, v7, 2u);
}

- (void)presentAppLibraryCategoryPodForCategoryIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  BSDispatchQueueAssertMain();
  v8 = [MEMORY[0x277CF3280] currentContext];
  v9 = [v8 remoteProcess];
  v10 = [v9 auditToken];

  v11 = [(SBHomeScreenService *)self openPodAuthenticator];
  v21 = 0;
  v12 = [v11 authenticateAuditToken:v10 error:&v21];
  v13 = v21;

  if (v12)
  {
    v14 = [(SBHomeScreenService *)self _translatedSBSPresentationErrorCompletionForSBHPresentationErrorCompletion:v7];
    if ([(SBHomeScreenService *)self _isLibraryPresentationAllowedWithCompletion:v14])
    {
      v15 = [(SBHomeScreenService *)self homeScreenController];
      if ([v15 isModalAppLibrarySupported])
      {
        v16 = [SBApp windowSceneManager];
        v17 = [v16 activeDisplayWindowScene];
        v18 = [v17 modalLibraryController];
        [v18 presentLibraryCategoryPodForCategoryIdentifier:v6 animated:1 completion:v14];
      }

      else
      {
        [v15 presentLibraryCategoryPodFromOverlayControllerForCategoryIdentifier:v6 animated:1 completion:v14];
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
      v7[2](v7, v13);
    }

    else
    {
      v20 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D0AA50] code:13 userInfo:0];
      v7[2](v7, v20);
    }
  }
}

- (BOOL)_isLibraryPresentationAllowedWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(SBHomeScreenService *)self homeScreenController];
  if ([v5 isAppLibraryAllowed])
  {
    v6 = +[SBLockScreenManager sharedInstance];
    v7 = [v6 isUILocked];

    if (v7)
    {
      if (v4)
      {
        goto LABEL_6;
      }

LABEL_13:
      v9 = 0;
      goto LABEL_14;
    }

    v8 = [SBApp windowSceneManager];
    v10 = [v8 activeDisplayWindowScene];
    v11 = [v10 layoutStateProvider];
    v12 = [v11 layoutState];
    if ([v12 unlockedEnvironmentMode] == 1)
    {

      v9 = 1;
      goto LABEL_7;
    }

    v13 = [v5 isModalAppLibrarySupported];

    if (v13)
    {
      v9 = 1;
      goto LABEL_14;
    }

    if (!v4)
    {
      goto LABEL_13;
    }
  }

  else if (!v4)
  {
    goto LABEL_13;
  }

LABEL_6:
  v8 = SBHLibraryPresentationErrorForCode();
  v4[2](v4, v8);
  v9 = 0;
LABEL_7:

LABEL_14:
  return v9;
}

- (void)presentAppLibraryAnimated:(id)a3 completion:(id)a4
{
  v6 = a4;
  BSDispatchQueueAssertMain();
  v7 = [MEMORY[0x277CF3280] currentContext];
  v8 = [v7 remoteProcess];
  v9 = [v8 auditToken];

  v10 = [(SBHomeScreenService *)self configurationAuthenticator];
  v20 = 0;
  v11 = [v10 authenticateAuditToken:v9 error:&v20];
  v12 = v20;

  if (v11)
  {
    v13 = [(SBHomeScreenService *)self _translatedSBSPresentationErrorCompletionForSBHPresentationErrorCompletion:v6];
    if ([(SBHomeScreenService *)self _isLibraryPresentationAllowedWithCompletion:v13])
    {
      v14 = [(SBHomeScreenService *)self homeScreenController];
      if ([v14 isModalAppLibrarySupported])
      {
        v15 = [SBApp windowSceneManager];
        v16 = [v15 activeDisplayWindowScene];
        v17 = [v16 modalLibraryController];
        [v17 presentLibraryAnimated:a3 != 0 completion:0];
      }

      else
      {
        [v14 presentLibraryFromOverlayControllerAnimated:a3 != 0 completion:0];
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
      v6[2](v6, v12);
    }

    else
    {
      v19 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D0AA50] code:13 userInfo:0];
      v6[2](v6, v19);
    }
  }
}

- (void)dismissAppLibraryWithCompletion:(id)a3
{
  v4 = a3;
  BSDispatchQueueAssertMain();
  v5 = [MEMORY[0x277CF3280] currentContext];
  v6 = [v5 remoteProcess];
  v7 = [v6 auditToken];

  v8 = [(SBHomeScreenService *)self openPodAuthenticator];
  v18 = 0;
  v9 = [v8 authenticateAuditToken:v7 error:&v18];
  v10 = v18;

  if (v9)
  {
    v11 = [(SBHomeScreenService *)self _translatedSBSPresentationErrorCompletionForSBHPresentationErrorCompletion:v4];
    if ([(SBHomeScreenService *)self _isLibraryDismissalAllowedWithCompletion:v11])
    {
      v12 = [(SBHomeScreenService *)self homeScreenController];
      if ([v12 isModalAppLibrarySupported])
      {
        v13 = [SBApp windowSceneManager];
        v14 = [v13 activeDisplayWindowScene];
        v15 = [v14 modalLibraryController];
        [v15 dismissLibraryAnimated:1 completion:0];
      }

      else
      {
        [v12 dismissLibraryAnimated:1 completion:0];
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
      v4[2](v4, v10);
    }

    else
    {
      v17 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D0AA50] code:13 userInfo:0];
      v4[2](v4, v17);
    }
  }
}

- (BOOL)_isLibraryDismissalAllowedWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(SBHomeScreenService *)self homeScreenController];
  v6 = [SBApp windowSceneManager];
  v7 = [v6 activeDisplayWindowScene];

  if (([v5 isAppLibraryAllowed] & 1) == 0)
  {
    if (!v4)
    {
      goto LABEL_16;
    }

    goto LABEL_11;
  }

  if ([v5 isModalAppLibrarySupported])
  {
    v8 = [v7 modalLibraryController];
    v9 = [v8 isPresentingLibrary];
  }

  else
  {
    v8 = [v5 iconManager];
    v9 = [v8 isMainDisplayLibraryViewVisible];
  }

  v10 = v9;

  if ((v10 & 1) == 0)
  {
    if (!v4)
    {
      goto LABEL_16;
    }

    goto LABEL_11;
  }

  v11 = [v7 layoutStateProvider];
  v12 = [v11 layoutState];
  if ([v12 unlockedEnvironmentMode] != 1)
  {
    v14 = [v5 isModalAppLibrarySupported];

    if (v14)
    {
      v13 = 1;
      goto LABEL_17;
    }

    if (!v4)
    {
LABEL_16:
      v13 = 0;
      goto LABEL_17;
    }

LABEL_11:
    v11 = SBHLibraryPresentationErrorForCode();
    v4[2](v4, v11);
    v13 = 0;
    goto LABEL_12;
  }

  v13 = 1;
LABEL_12:

LABEL_17:
  return v13;
}

- (id)_translatedSBSPresentationErrorCompletionForSBHPresentationErrorCompletion:(id)a3
{
  v3 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __98__SBHomeScreenService__translatedSBSPresentationErrorCompletionForSBHPresentationErrorCompletion___block_invoke;
  v8[3] = &unk_2783A9FC8;
  v9 = v3;
  v4 = v3;
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

- (void)addDebugIconWithSizeClassDescription:(id)a3 inPage:(id)a4 atPositionDescription:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  BSDispatchQueueAssertMain();
  v11 = [MEMORY[0x277CF3280] currentContext];
  v12 = [v11 remoteProcess];
  v13 = [v12 auditToken];

  v14 = [(SBHomeScreenService *)self addDebugIconAuthenticator];
  v30 = 0;
  v15 = [v14 authenticateAuditToken:v13 error:&v30];
  v16 = v30;

  if (v15)
  {
    v17 = [(SBHomeScreenService *)self iconController];
    v18 = [v17 iconManager];

    v19 = SBHIconGridSizeClassForString();
    v20 = [v9 unsignedIntegerValue];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __89__SBHomeScreenService_addDebugIconWithSizeClassDescription_inPage_atPositionDescription___block_invoke;
    v26[3] = &unk_2783B37F8;
    v27 = v18;
    v28 = v19;
    v29 = v20;
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __89__SBHomeScreenService_addDebugIconWithSizeClassDescription_inPage_atPositionDescription___block_invoke_2;
    v22[3] = &unk_2783B3820;
    v23 = v27;
    v24 = v19;
    v25 = v20;
    v21 = v27;
    [(SBHomeScreenService *)self parsePositionDescription:v10 gridPositionHandler:v26 indexPositionHandler:v22];
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

- (void)parsePositionDescription:(id)a3 gridPositionHandler:(id)a4 indexPositionHandler:(id)a5
{
  v20 = a3;
  v7 = a4;
  v8 = a5;
  v9 = [v20 rangeOfString:{@", "}];
  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8[2](v8, [v20 integerValue]);
  }

  else
  {
    v11 = v9;
    v12 = v10;
    v13 = [v20 substringToIndex:v9];
    v14 = [v13 integerValue];

    v15 = [v20 substringFromIndex:v11 + v12];
    v16 = [v15 integerValue];

    if ([v20 hasSuffix:@"P"])
    {
      v17 = 0;
      v18 = 1;
    }

    else
    {
      v19 = [v20 hasSuffix:@"L"];
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

    v7[2](v7, v14, v16, v18, v17);
  }
}

- (void)setObservingInstalledWebClips:(id)a3
{
  v4 = a3;
  BSDispatchQueueAssertMain();
  v5 = [MEMORY[0x277CF3280] currentContext];
  v6 = [v5 remoteProcess];
  v7 = [v6 auditToken];

  v8 = [(SBHomeScreenService *)self observeInstalledWebClipsAuthenticator];
  v16 = 0;
  v9 = [v8 authenticateAuditToken:v7 error:&v16];
  v10 = v16;

  if (v9)
  {
    os_unfair_lock_lock(&self->_lock);
    v11 = [v4 BOOLValue];
    webClipObservingConnections = self->_webClipObservingConnections;
    if (v11)
    {
      if (!webClipObservingConnections)
      {
        v13 = objc_alloc_init(MEMORY[0x277CBEB58]);
        v14 = self->_webClipObservingConnections;
        self->_webClipObservingConnections = v13;

        webClipObservingConnections = self->_webClipObservingConnections;
      }

      [(NSMutableSet *)webClipObservingConnections addObject:v5];
    }

    else
    {
      [(NSMutableSet *)webClipObservingConnections removeObject:v5];
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
  v3 = [(SBHomeScreenService *)self webClipObservingConnections];
  v4 = [v3 copy];

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

        v10 = [*(*(&v11 + 1) + 8 * v9) remoteTarget];
        [v10 installedWebClipsDidChange];

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
  v3 = [MEMORY[0x277CF3280] currentContext];
  v4 = [v3 remoteProcess];
  v5 = [v4 auditToken];

  v6 = [(SBHomeScreenService *)self activeWidgetInfoAuthenticator];
  v13 = 0;
  v7 = [v6 authenticateAuditToken:v5 error:&v13];
  v8 = v13;

  if (v7)
  {
    v9 = [(SBHomeScreenService *)self iconController];
    v10 = [v9 iconManager];

    v11 = [v10 debuggingActiveWidgetInfo];
  }

  else
  {
    v10 = SBLogCommon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(SBHomeScreenService *)v8 debuggingActiveWidgetInfo];
    }

    v11 = 0;
  }

  return v11;
}

- (void)insertEmptyPageAtIndex:(id)a3
{
  v4 = a3;
  BSDispatchQueueAssertMain();
  v5 = [MEMORY[0x277CF3280] currentContext];
  v6 = [v5 remoteProcess];
  v7 = [v6 auditToken];

  v8 = [(SBHomeScreenService *)self addEmptyPageAuthenticator];
  v16 = 0;
  v9 = [v8 authenticateAuditToken:v7 error:&v16];
  v10 = v16;

  if (v9)
  {
    v11 = [(SBHomeScreenService *)self iconController];
    v12 = [v11 iconManager];

    v13 = [v12 rootFolder];
    v14 = [v4 unsignedIntegerValue];
    if (v14 <= [v13 listCount])
    {
      v15 = [v13 insertEmptyListAtIndex:v14];
    }
  }

  else
  {
    v12 = SBLogCommon();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [SBHomeScreenService insertEmptyPageAtIndex:v10];
    }
  }
}

- (void)addEmptyPage
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_8(&dword_21ED4E000, v2, v3, "%s %{public}@", v4, v5, v6, v7, 2u);
}

- (void)addSuggestedPageWithPageType:(id)a3 focusModeIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  BSDispatchQueueAssertMain();
  v8 = [MEMORY[0x277CF3280] currentContext];
  v9 = [v8 remoteProcess];
  v10 = [v9 auditToken];

  v11 = [(SBHomeScreenService *)self addSuggestedPageAuthenticator];
  v17 = 0;
  v12 = [v11 authenticateAuditToken:v10 error:&v17];
  v13 = v17;

  if (v12)
  {
    v14 = [(SBHomeScreenService *)self iconController];
    v15 = [v14 iconManager];

    v16 = [v15 proactivePageSuggestionsManager];
    [v16 _addSuggestedPageWithPageType:v6 focusModeIdentifier:v7];
  }

  else
  {
    v15 = SBLogCommon();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [SBHomeScreenService addSuggestedPageWithPageType:v13 focusModeIdentifier:?];
    }
  }
}

- (void)setObservingHomeScreenLayoutAvailability:(id)a3
{
  v4 = a3;
  BSDispatchQueueAssertMain();
  v5 = [MEMORY[0x277CF3280] currentContext];
  v6 = [v5 remoteProcess];
  v7 = [v6 auditToken];

  v8 = [(SBHomeScreenService *)self homeScreenLayoutAvailabilityAuthenticator];
  v18 = 0;
  v9 = [v8 authenticateAuditToken:v7 error:&v18];
  v10 = v18;

  if ((v9 & 1) == 0)
  {
    v15 = SBLogCommon();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [SBHomeScreenService setObservingHomeScreenLayoutAvailability:v10];
    }

    goto LABEL_12;
  }

  os_unfair_lock_lock(&self->_lock);
  v11 = [v4 BOOLValue];
  layoutAvailabilityObservingConnections = self->_layoutAvailabilityObservingConnections;
  if (v11)
  {
    if (!layoutAvailabilityObservingConnections)
    {
      v13 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v14 = self->_layoutAvailabilityObservingConnections;
      self->_layoutAvailabilityObservingConnections = v13;

      layoutAvailabilityObservingConnections = self->_layoutAvailabilityObservingConnections;
    }

    [(NSMutableSet *)layoutAvailabilityObservingConnections addObject:v5];
  }

  else
  {
    [(NSMutableSet *)layoutAvailabilityObservingConnections removeObject:v5];
  }

  os_unfair_lock_unlock(&self->_lock);
  if ([v4 BOOLValue])
  {
    v16 = [(SBHomeScreenService *)self homeScreenLayoutAvailability];
    v17 = [v16 BOOLValue];

    if (v17)
    {
      v15 = [v5 remoteTarget];
      [v15 homeScreenLayoutAvailabilityDidChange:MEMORY[0x277CBEC38]];
LABEL_12:
    }
  }
}

- (void)noteHomeScreenLayoutAvailabilityDidChange
{
  v18 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  v3 = [(SBHomeScreenService *)self layoutAvailabilityObservingConnections];
  v4 = [v3 copy];

  os_unfair_lock_unlock(&self->_lock);
  v5 = [(SBHomeScreenService *)self isHomeScreenLayoutAvailable];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:v5];
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

        v12 = [*(*(&v13 + 1) + 8 * v11) remoteTarget];
        [v12 homeScreenLayoutAvailabilityDidChange:v6];

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
  v3 = [MEMORY[0x277CF3280] currentContext];
  v4 = [v3 remoteProcess];
  v5 = [v4 auditToken];

  v6 = [(SBHomeScreenService *)self homeScreenLayoutAvailabilityAuthenticator];
  v13 = 0;
  v7 = [v6 authenticateAuditToken:v5 error:&v13];
  v8 = v13;

  if (v7)
  {
    v9 = [(SBHomeScreenService *)self isHomeScreenLayoutAvailable];
    v10 = [MEMORY[0x277CCABB0] numberWithBool:v9];
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

+ (BOOL)isHomeScreenLayoutAvailableForIconController:(id)a3
{
  v3 = [a3 iconModel];
  v4 = [v3 rootFolder];
  if (v4)
  {
    v5 = ([v3 lastLayoutStatus] - 1) < 2;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)iconModelDidLayout:(id)a3
{
  v5 = [(SBHomeScreenService *)self iconController];
  v4 = [objc_opt_class() isHomeScreenLayoutAvailableForIconController:v5];
  if (v4 != [(SBHomeScreenService *)self isHomeScreenLayoutAvailable])
  {
    [(SBHomeScreenService *)self setHomeScreenLayoutAvailable:v4];
    [(SBHomeScreenService *)self noteHomeScreenLayoutAvailabilityDidChange];
  }

  [(SBHomeScreenService *)self noteHomeScreenLayoutDidChange];
}

- (void)setObservingHomeScreenLayout:(id)a3
{
  v4 = a3;
  BSDispatchQueueAssertMain();
  v5 = [MEMORY[0x277CF3280] currentContext];
  v6 = [v5 remoteProcess];
  v7 = [v6 auditToken];

  v8 = [(SBHomeScreenService *)self homeScreenLayoutAuthenticator];
  v16 = 0;
  v9 = [v8 authenticateAuditToken:v7 error:&v16];
  v10 = v16;

  if (v9)
  {
    os_unfair_lock_lock(&self->_lock);
    v11 = [v4 BOOLValue];
    layoutObservingConnections = self->_layoutObservingConnections;
    if (v11)
    {
      if (!layoutObservingConnections)
      {
        v13 = objc_alloc_init(MEMORY[0x277CBEB58]);
        v14 = self->_layoutObservingConnections;
        self->_layoutObservingConnections = v13;

        layoutObservingConnections = self->_layoutObservingConnections;
      }

      [(NSMutableSet *)layoutObservingConnections addObject:v5];
    }

    else
    {
      [(NSMutableSet *)layoutObservingConnections removeObject:v5];
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

- (void)setObservingIconBadgeValue:(id)a3
{
  v4 = a3;
  BSDispatchQueueAssertMain();
  v5 = [MEMORY[0x277CF3280] currentContext];
  v6 = [v5 remoteProcess];
  v7 = [v6 auditToken];

  v8 = [(SBHomeScreenService *)self iconBadgeValueAuthenticator];
  v18 = 0;
  v9 = [v8 authenticateAuditToken:v7 error:&v18];
  v10 = v18;

  if (v9)
  {
    v11 = [v4 BOOLValue];
    os_unfair_lock_lock(&self->_lock);
    v12 = [(NSMutableSet *)self->_iconBadgeValueObservingConnections count];
    iconBadgeValueObservingConnections = self->_iconBadgeValueObservingConnections;
    if (v11)
    {
      if (!iconBadgeValueObservingConnections)
      {
        v14 = objc_alloc_init(MEMORY[0x277CBEB58]);
        v15 = self->_iconBadgeValueObservingConnections;
        self->_iconBadgeValueObservingConnections = v14;

        iconBadgeValueObservingConnections = self->_iconBadgeValueObservingConnections;
      }

      [(NSMutableSet *)iconBadgeValueObservingConnections addObject:v5];
    }

    else
    {
      [(NSMutableSet *)iconBadgeValueObservingConnections removeObject:v5];
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
  v3 = [MEMORY[0x277CCAB98] sbh_leafIconDataSourceNotificationCenter];
  [v3 addObserver:self selector:sel_leafIconDataSourceDidChange_ name:*MEMORY[0x277D66730] object:0];

  v6 = [MEMORY[0x277CCAB98] defaultCenter];
  v4 = SBIconControllerIconBadgeVisibilityDidChangeNotification;
  v5 = [(SBHomeScreenService *)self iconController];
  [v6 addObserver:self selector:sel_iconBadgeVisibilityDidChange_ name:v4 object:v5];
}

- (void)endObservingNotificationsForIconBadgeValue
{
  v3 = [MEMORY[0x277CCAB98] sbh_leafIconDataSourceNotificationCenter];
  [v3 removeObserver:self name:*MEMORY[0x277D66730] object:0];

  v6 = [MEMORY[0x277CCAB98] defaultCenter];
  v4 = SBIconControllerIconBadgeVisibilityDidChangeNotification;
  v5 = [(SBHomeScreenService *)self iconController];
  [v6 removeObserver:self name:v4 object:v5];
}

- (void)leafIconDataSourceDidChange:(id)a3
{
  v9 = [a3 object];
  v4 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  v6 = v9;
  if (isKindOfClass)
  {
    v7 = [v9 bundleIdentifier];
    if (v7)
    {
      v8 = [MEMORY[0x277CBEB98] setWithObject:v7];
      [(SBHomeScreenService *)self processUpdatesToBadgeValueForApplicationBundleIdentifiers:v8];
    }

    v6 = v9;
  }
}

- (void)iconBadgeVisibilityDidChange:(id)a3
{
  v4 = [a3 userInfo];
  v6 = [v4 objectForKey:@"SBApplicationBundleIdentifiers"];

  v5 = v6;
  if (v6)
  {
    [(SBHomeScreenService *)self processUpdatesToBadgeValueForApplicationBundleIdentifiers:v6];
    v5 = v6;
  }
}

- (void)processUpdatesToBadgeValueForApplicationBundleIdentifiers:(id)a3
{
  v4 = a3;
  v5 = [(SBHomeScreenService *)self iconBadgeValueUpdateBatchTimer];

  if (v5)
  {
    v6 = [(SBHomeScreenService *)self iconBadgeValueUpdateBatchBundleIdentifiers];
    [v6 unionSet:v4];
  }

  else
  {
    v7 = [v4 mutableCopy];
    [(SBHomeScreenService *)self setIconBadgeValueUpdateBatchBundleIdentifiers:v7];
    v8 = MEMORY[0x277CBEBB8];
    v11 = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = __81__SBHomeScreenService_processUpdatesToBadgeValueForApplicationBundleIdentifiers___block_invoke;
    v14 = &unk_2783B38E8;
    v15 = self;
    v16 = v7;
    v9 = v7;
    v10 = [v8 scheduledTimerWithTimeInterval:0 repeats:&v11 block:0.1];
    [(SBHomeScreenService *)self setIconBadgeValueUpdateBatchTimer:v10, v11, v12, v13, v14, v15];
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

- (id)badgeValueForIconWithApplicationBundleIdentifier:(id)a3
{
  v4 = a3;
  BSDispatchQueueAssertMain();
  v5 = [MEMORY[0x277CF3280] currentContext];
  v6 = [v5 remoteProcess];
  v7 = [v6 auditToken];

  v8 = [(SBHomeScreenService *)self iconBadgeValueAuthenticator];
  v18 = 0;
  v9 = [v8 authenticateAuditToken:v7 error:&v18];
  v10 = v18;

  if (v9)
  {
    v11 = [(SBHomeScreenService *)self iconController];
    v12 = [v11 iconManager];

    v13 = [v12 iconModel];
    v14 = [v13 leafIconForIdentifier:v4];
    v15 = [v14 badgeNumberOrString];
    v16 = [objc_alloc(MEMORY[0x277D66AD0]) initWithNumberOrString:v15];
  }

  else
  {
    v12 = SBLogCommon();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [SBHomeScreenService badgeValueForIconWithApplicationBundleIdentifier:v10];
    }

    v16 = 0;
  }

  return v16;
}

- (void)badgeValueForIconWithApplicationBundleIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  BSDispatchQueueAssertMain();
  v8 = [MEMORY[0x277CF3280] currentContext];
  v9 = [v8 remoteProcess];
  v10 = [v9 auditToken];

  v11 = [(SBHomeScreenService *)self iconBadgeValueAuthenticator];
  v21 = 0;
  v12 = [v11 authenticateAuditToken:v10 error:&v21];
  v13 = v21;

  if (v12)
  {
    v14 = [(SBHomeScreenService *)self iconController];
    v15 = [v14 iconManager];

    v16 = [v15 iconModel];
    v17 = [v16 applicationIconForBundleIdentifier:v6];
    v18 = [v17 badgeNumberOrString];
    if (([v15 allowsBadgingForIcon:v17] & 1) == 0)
    {

      v18 = 0;
    }

    v19 = [objc_alloc(MEMORY[0x277D66AD0]) initWithNumberOrString:v18];
    v7[2](v7, v19, 0);

    v7 = v15;
  }

  else
  {
    v20 = SBLogCommon();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [SBHomeScreenService badgeValueForIconWithApplicationBundleIdentifier:v13 completionHandler:?];
    }

    v7[2](v7, 0, 0);
  }
}

- (BOOL)authenticateIconStyleRequestForAuditToken:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(SBHomeScreenService *)self iconTintColorAuthenticator];
  v8 = [v7 authenticateAuditToken:v6 error:a4];

  if (v8 & 1) != 0 || (-[SBHomeScreenService iconStyleAuthenticator](self, "iconStyleAuthenticator"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 authenticateAuditToken:v6 error:a4], v9, (v10))
  {
    v11 = 1;
  }

  else
  {
    v12 = [(SBHomeScreenService *)self shareSheetCustomViewAuthenticator];
    v11 = [v12 authenticateAuditToken:v6 error:a4];
  }

  return v11;
}

- (SBSHomeScreenIconStyleConfiguration)homeScreenIconStyleConfiguration
{
  BSDispatchQueueAssertMain();
  v3 = [MEMORY[0x277CF3280] currentContext];
  v4 = [v3 remoteProcess];
  v5 = [v4 auditToken];

  v11 = 0;
  v6 = [(SBHomeScreenService *)self authenticateIconStyleRequestForAuditToken:v5 error:&v11];
  v7 = v11;
  if (v6)
  {
    v8 = [(SBHomeScreenService *)self homeScreenController];
    v9 = [v8 currentHomeScreenIconStyleConfiguration];
  }

  else
  {
    v8 = SBLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(SBHomeScreenService *)v7 homeScreenIconStyleConfiguration];
    }

    v9 = 0;
  }

  return v9;
}

- (void)setHomeScreenIconStyleConfiguration:(id)a3
{
  v4 = a3;
  BSDispatchQueueAssertMain();
  v5 = [MEMORY[0x277CF3280] currentContext];
  v6 = [v5 remoteProcess];
  v7 = [v6 auditToken];

  v11 = 0;
  v8 = [(SBHomeScreenService *)self authenticateIconStyleRequestForAuditToken:v7 error:&v11];
  v9 = v11;
  if (v8)
  {
    v10 = [(SBHomeScreenService *)self homeScreenController];
    [v10 setCurrentHomeScreenIconStyleConfiguration:v4];
  }

  else
  {
    v10 = SBLogCommon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [SBHomeScreenService setHomeScreenIconStyleConfiguration:v9];
    }
  }
}

- (void)setHomeScreenIconStyleConfiguration:(id)a3 wallpaperDimmed:(id)a4
{
  v6 = a3;
  v7 = a4;
  BSDispatchQueueAssertMain();
  v8 = [MEMORY[0x277CF3280] currentContext];
  v9 = [v8 remoteProcess];
  v10 = [v9 auditToken];

  v15 = 0;
  v11 = [(SBHomeScreenService *)self authenticateIconStyleRequestForAuditToken:v10 error:&v15];
  v12 = v15;
  if (v11)
  {
    v13 = [v7 BOOLValue];
    v14 = [(SBHomeScreenService *)self homeScreenController];
    [v14 setCurrentHomeScreenIconStyleConfiguration:v6 wallpaperDimmed:v13];
  }

  else
  {
    v14 = SBLogCommon();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [SBHomeScreenService setHomeScreenIconStyleConfiguration:v12 wallpaperDimmed:?];
    }
  }
}

- (void)setObservingIconTintColor:(id)a3
{
  v4 = a3;
  BSDispatchQueueAssertMain();
  v5 = [MEMORY[0x277CF3280] currentContext];
  v6 = [v5 remoteProcess];
  v7 = [v6 auditToken];

  v18 = 0;
  v8 = [(SBHomeScreenService *)self authenticateIconStyleRequestForAuditToken:v7 error:&v18];
  v9 = v18;
  if (!v8)
  {
    v15 = SBLogCommon();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [SBHomeScreenService setObservingIconTintColor:v9];
    }

    goto LABEL_17;
  }

  v10 = [v4 BOOLValue];
  os_unfair_lock_lock(&self->_lock);
  v11 = [(NSMutableSet *)self->_iconTintColorObservingConnections count];
  iconTintColorObservingConnections = self->_iconTintColorObservingConnections;
  if (v10)
  {
    if (!iconTintColorObservingConnections)
    {
      v13 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v14 = self->_iconTintColorObservingConnections;
      self->_iconTintColorObservingConnections = v13;

      iconTintColorObservingConnections = self->_iconTintColorObservingConnections;
    }

    [(NSMutableSet *)iconTintColorObservingConnections addObject:v5];
  }

  else
  {
    [(NSMutableSet *)iconTintColorObservingConnections removeObject:v5];
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

  if (v10)
  {
    v15 = [v5 remoteTarget];
    v17 = [(SBHomeScreenService *)self _currentStyleConfiguration];
    [v15 homeScreenIconStyleConfigurationDidChange:v17];

LABEL_17:
  }
}

void __66__SBHomeScreenService_beginObservingNotificationsForIconTintColor__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained notifyObserversOfIconImageStyleChange];
}

- (id)_currentStyleConfigurationForConnection:(id)a3
{
  v3 = [(SBHomeScreenService *)self homeScreenController];
  v4 = [v3 currentIconStyleConfiguration];

  return v4;
}

- (void)notifyObserversOfIconImageStyleChange
{
  v18 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  v3 = [(SBHomeScreenService *)self iconTintColorObservingConnections];
  v4 = [v3 copy];

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
        v12 = [v10 remoteTarget];
        [v12 homeScreenIconStyleConfigurationDidChange:v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }
}

- (void)clearAllOverflowSlotCounts
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_8(&dword_21ED4E000, v2, v3, "%s %{public}@", v4, v5, v6, v7, 2u);
}

- (SBSHomeScreenServiceArrayOfNumbers)overflowSlotCounts
{
  BSDispatchQueueAssertMain();
  v3 = [MEMORY[0x277CF3280] currentContext];
  v4 = [v3 remoteProcess];
  v5 = [v4 auditToken];

  v6 = [(SBHomeScreenService *)self overflowSlotsAuthenticator];
  v22 = 0;
  v7 = [v6 authenticateAuditToken:v5 error:&v22];
  v8 = v22;

  if (v7)
  {
    v9 = [(SBHomeScreenService *)self iconController];
    v10 = [v9 iconManager];

    v11 = [v10 rootFolder];
    v12 = [MEMORY[0x277CBEB18] array];
    v17 = MEMORY[0x277D85DD0];
    v18 = 3221225472;
    v19 = __41__SBHomeScreenService_overflowSlotCounts__block_invoke;
    v20 = &unk_2783B3930;
    v21 = v12;
    v13 = v12;
    [v11 enumerateListsWithOptions:4 usingBlock:&v17];
    v14 = objc_alloc(MEMORY[0x277D66AC0]);
    v15 = [v14 initWithArray:{v13, v17, v18, v19, v20}];
  }

  else
  {
    v10 = SBLogCommon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
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
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_8(&dword_21ED4E000, v2, v3, "%s %{public}@", v4, v5, v6, v7, 2u);
}

- (void)runWidgetDiscoverabilityTest
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_8(&dword_21ED4E000, v2, v3, "%s %{public}@", v4, v5, v6, v7, 2u);
}

- (id)silhouetteLayoutForPageAtIndex:(id)a3
{
  v4 = a3;
  BSDispatchQueueAssertMain();
  v5 = [MEMORY[0x277CF3280] currentContext];
  v6 = [v5 remoteProcess];
  v7 = [v6 auditToken];

  v8 = [(SBHomeScreenService *)self silhouetteAuthenticator];
  v15 = 0;
  v9 = [v8 authenticateAuditToken:v7 error:&v15];
  v10 = v15;

  if (v9)
  {
    v11 = [(SBHomeScreenService *)self iconController];
    v12 = [v11 iconManager];

    v13 = -[NSObject silhouetteLayoutForPageAtIndex:](v12, "silhouetteLayoutForPageAtIndex:", [v4 unsignedIntegerValue]);
  }

  else
  {
    v12 = SBLogCommon();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [SBHomeScreenService silhouetteLayoutForPageAtIndex:v10];
    }

    v13 = 0;
  }

  return v13;
}

- (void)swapApplicationIconsInProminentPositionsWithBundleIdentifier:(id)a3 withApplicationIconsWithWithBundleIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  BSDispatchQueueAssertMain();
  v8 = [MEMORY[0x277CF3280] currentContext];
  v9 = [v8 remoteProcess];
  v10 = [v9 auditToken];

  v11 = [(SBHomeScreenService *)self prominentIconSwapAuthenticator];
  v16 = 0;
  v12 = [v11 authenticateAuditToken:v10 error:&v16];
  v13 = v16;

  if (v12)
  {
    v14 = [(SBHomeScreenService *)self iconController];
    v15 = [v14 iconManager];

    [v15 swapApplicationIconsInProminentPositionsWithBundleIdentifier:v6 withApplicationIconsWithWithBundleIdentifier:v7];
  }

  else
  {
    v15 = SBLogCommon();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [SBHomeScreenService swapApplicationIconsInProminentPositionsWithBundleIdentifier:v13 withApplicationIconsWithWithBundleIdentifier:?];
    }
  }
}

- (BOOL)canSwapApplicationIconsInProminentPositionsWithBundleIdentifier:(id)a3 withApplicationIconsWithWithBundleIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  BSDispatchQueueAssertMain();
  v8 = [MEMORY[0x277CF3280] currentContext];
  v9 = [v8 remoteProcess];
  v10 = [v9 auditToken];

  v11 = [(SBHomeScreenService *)self prominentIconSwapAuthenticator];
  v18 = 0;
  v12 = [v11 authenticateAuditToken:v10 error:&v18];
  v13 = v18;

  if (v12)
  {
    v14 = [(SBHomeScreenService *)self iconController];
    v15 = [v14 iconManager];

    v16 = [v15 canSwapApplicationIconsInProminentPositionsWithBundleIdentifier:v6 withApplicationIconsWithWithBundleIdentifier:v7];
  }

  else
  {
    v15 = SBLogCommon();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [SBHomeScreenService canSwapApplicationIconsInProminentPositionsWithBundleIdentifier:v13 withApplicationIconsWithWithBundleIdentifier:?];
    }

    v16 = 0;
  }

  return v16;
}

- (id)osMigrationHomeScreenLayout
{
  v3 = [MEMORY[0x277CF3280] currentContext];
  v4 = [v3 remoteProcess];
  v5 = [v4 auditToken];

  v6 = [(SBHomeScreenService *)self osMigrationHomeScreenAuthenticator];
  v13 = 0;
  v7 = [v6 authenticateAuditToken:v5 error:&v13];
  v8 = v13;

  if (v7)
  {
    v9 = [(SBHomeScreenService *)self iconController];
    v10 = [v9 iconModel];

    v11 = [v10 exportedOSMigrationHomeScreenLayout];
  }

  else
  {
    v10 = SBLogCommon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(SBHomeScreenService *)v8 osMigrationHomeScreenLayout];
    }

    v11 = 0;
  }

  return v11;
}

- (id)osMigrationDefaultHomeScreenLayout
{
  v3 = [MEMORY[0x277CF3280] currentContext];
  v4 = [v3 remoteProcess];
  v5 = [v4 auditToken];

  v6 = [(SBHomeScreenService *)self osMigrationHomeScreenAuthenticator];
  v13 = 0;
  v7 = [v6 authenticateAuditToken:v5 error:&v13];
  v8 = v13;

  if (v7)
  {
    v9 = [(SBHomeScreenService *)self iconController];
    v10 = [v9 iconModel];

    v11 = [v10 exportedOSMigrationDefaultHomeScreenLayout];
  }

  else
  {
    v10 = SBLogCommon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(SBHomeScreenService *)v8 osMigrationDefaultHomeScreenLayout];
    }

    v11 = 0;
  }

  return v11;
}

- (void)importOSMigrationHomeScreenLayout:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CF3280] currentContext];
  v6 = [v5 remoteProcess];
  v7 = [v6 auditToken];

  v8 = [(SBHomeScreenService *)self osMigrationHomeScreenAuthenticator];
  v13 = 0;
  v9 = [v8 authenticateAuditToken:v7 error:&v13];
  v10 = v13;

  if (v9)
  {
    v11 = [(SBHomeScreenService *)self iconController];
    v12 = [v11 iconModel];

    [v12 importOSMigrationHomeScreenLayout:v4];
  }

  else
  {
    v12 = SBLogCommon();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [SBHomeScreenService importOSMigrationHomeScreenLayout:v10];
    }
  }
}

- (void)precacheIconLayersOnFirstPageWithAppearanceDescriptions:(id)a3
{
  v44 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CF3280] currentContext];
  v6 = [v5 remoteProcess];
  v7 = [v6 auditToken];

  v42 = 0;
  LOBYTE(v6) = [(SBHomeScreenService *)self authenticateIconStyleRequestForAuditToken:v7 error:&v42];
  v8 = v42;
  v9 = v8;
  if (v6)
  {
    v34 = v8;
    v35 = v7;
    v36 = v5;
    v33 = [(SBHomeScreenService *)self iconController];
    v32 = [v33 iconManager];
    v10 = [v32 rootFolder];
    v11 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v12 = [v10 firstList];
    v13 = [v12 icons];
    [v11 addObjectsFromArray:v13];

    v31 = v10;
    v14 = [v10 dock];
    v15 = [v14 icons];
    [v11 addObjectsFromArray:v15];

    v16 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v37 = v4;
    v17 = [v4 array];
    v18 = [v17 countByEnumeratingWithState:&v38 objects:v43 count:16];
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
          objc_enumerationMutation(v17);
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

              v23 = [MEMORY[0x277D661C8] clearDarkAppearance];
            }

            else
            {
              v23 = [MEMORY[0x277D661C8] clearLightAppearance];
            }
          }

          else
          {
            v23 = [MEMORY[0x277D661C8] darkAppearance];
          }
        }

        else
        {
          v23 = [MEMORY[0x277D661C8] lightAppearance];
        }

        v24 = v23;
        [v16 addObject:v23];

LABEL_17:
        ++v21;
      }

      while (v19 != v21);
      v25 = [v17 countByEnumeratingWithState:&v38 objects:v43 count:16];
      v19 = v25;
      if (!v25)
      {
LABEL_21:

        v26 = [v32 precacheLayersForIcons:v11 appearances:v16 reason:@"SBHomeScreenService"];
        v27 = [MEMORY[0x277CCACC8] mainThread];
        v28 = [v27 threadDictionary];

        v29 = [v28 objectForKey:@"precacheIconLayersOnFirstPageWithAppearanceDescriptions"];
        [v29 invalidate];

        [v28 setObject:v26 forKey:@"precacheIconLayersOnFirstPageWithAppearanceDescriptions"];
        v5 = v36;
        v4 = v37;
        v9 = v34;
        v7 = v35;
        v30 = v33;
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

- (void)listener:(id)a3 didReceiveConnection:(id)a4 withContext:(id)a5
{
  v12 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = SBLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v11 = v6;
    _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_INFO, "New client connection: %@", buf, 0xCu);
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __65__SBHomeScreenService_listener_didReceiveConnection_withContext___block_invoke;
  v9[3] = &unk_2783AB730;
  v9[4] = self;
  [v6 configureConnection:v9];
  os_unfair_lock_lock(&self->_lock);
  v8 = [(SBHomeScreenService *)self activeConnections];
  [v8 addObject:v6];

  os_unfair_lock_unlock(&self->_lock);
  [v6 activate];
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
  v1 = [a1 localizedDescription];
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
  v1 = [a1 localizedDescription];
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
  v1 = [a1 localizedDescription];
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
  v1 = [a1 localizedDescription];
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
  v1 = [a1 localizedDescription];
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
  v1 = [a1 localizedDescription];
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
  v1 = [a1 localizedDescription];
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
  v1 = [a1 localizedDescription];
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
  v1 = [a1 localizedDescription];
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
  v1 = [a1 localizedDescription];
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
  v1 = [a1 localizedDescription];
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
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_8(&dword_21ED4E000, v2, v3, "%s %{public}@", v4, v5, v6, v7, 2u);
}

- (void)osMigrationDefaultHomeScreenLayout
{
  v1 = [a1 localizedDescription];
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