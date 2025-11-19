@interface SBSHomeScreenService
- (BOOL)addsNewIconsToHomeScreen;
- (BOOL)canSwapApplicationIconsInProminentPositionsWithBundleIdentifier:(id)a3 withApplicationIconsWithWithBundleIdentifier:(id)a4;
- (BOOL)debugContinuityWithBadgeType:(id)a3 deviceTypeIdentifier:(id)a4;
- (BOOL)hasConfiguredFilesStackWithURL:(id)a3;
- (BOOL)hasWidgetWithBundleIdentifier:(id)a3;
- (BOOL)isHomeScreenLayoutAvailable;
- (BOOL)isLargeIconLayoutEnabled;
- (BOOL)isLargeIconSizeEnabled;
- (BOOL)showsBadgesInAppLibrary;
- (BOOL)showsHomeScreenSearchAffordance;
- (NSArray)allHomeScreenApplicationBundleIdentifiers;
- (NSArray)allHomeScreenApplicationPlaceholderBundleIdentifiers;
- (NSArray)overflowSlotCounts;
- (NSString)allIconLists;
- (SBSDebugActiveWidgetInfo)debuggingActiveWidgetInfo;
- (SBSHomeScreenIconStyleConfiguration)homeScreenIconStyleConfiguration;
- (SBSHomeScreenService)init;
- (id)addHomeScreenApplicationsObserver:(id)a3;
- (id)addHomeScreenIconStyleObserver:(id)a3;
- (id)addHomeScreenLayoutAvailabilityObserver:(id)a3;
- (id)addHomeScreenLayoutObserver:(id)a3;
- (id)addIconBadgeValueObserver:(id)a3;
- (id)addInstalledWebClipsObserver:(id)a3;
- (id)badgeValueForIconWithApplicationBundleIdentifier:(id)a3;
- (id)configureCategoryMapProviderToUseCategoryMapAtURL:(id)a3;
- (id)folderPathToIconWithBundleIdentifier:(id)a3;
- (id)iconTintColor;
- (id)osMigrationDefaultHomeScreenLayout;
- (id)osMigrationHomeScreenLayout;
- (id)silhouetteLayoutForPageAtIndex:(unint64_t)a3;
- (void)addApplicationIconToHomeScreenWithBundleIdentifier:(id)a3;
- (void)addApplicationIconToHomeScreenWithBundleIdentifier:(id)a3 inPage:(unint64_t)a4 atPositionDescription:(id)a5;
- (void)addDebugIconWithSizeClassDescription:(id)a3 inPage:(unint64_t)a4 atPositionDescription:(id)a5;
- (void)addEmptyPage;
- (void)addFileStackWithURL:(id)a3;
- (void)addPageOfApplicationIconsWithBundleIdentifier:(id)a3;
- (void)addSuggestedPageWithPageType:(id)a3 focusModeIdentifier:(id)a4;
- (void)addWidgetToTodayViewWithBundleIdentifier:(id)a3;
- (void)applicationIconInfoChangedForBundleIdentifiers:(id)a3;
- (void)badgeValueForIconWithApplicationBundleIdentifier:(id)a3 completionHandler:(id)a4;
- (void)changeDisplayedDateOffsetOverride:(double)a3;
- (void)changeDisplayedDateOverride:(id)a3;
- (void)changeDisplayedDateWithAutoupdatingSecondsOverride:(id)a3;
- (void)clearAllOverflowSlotCounts;
- (void)clearNewlyInstalledAndRecentlyUpdatedAppIndicators;
- (void)clearTodayViewLayout;
- (void)configureDeweyEachAppHasItsOwnCategory;
- (void)configureDeweyOneCategoryWithAllApps;
- (void)configureLibraryWithCategoryLimit:(int64_t)a3;
- (void)dealloc;
- (void)deleteAllWebClips;
- (void)dismissAppLibraryWithCompletion:(id)a3;
- (void)forbidApplicationBundleIdentifierFromLibrary:(id)a3 withCompletion:(id)a4;
- (void)homeScreenApplicationsDidChange;
- (void)homeScreenIconStyleConfigurationDidChange:(id)a3;
- (void)homeScreenLayoutAvailabilityDidChange:(id)a3;
- (void)homeScreenLayoutDidChange;
- (void)ignoreAllApps;
- (void)importOSMigrationHomeScreenLayout:(id)a3;
- (void)insertEmptyPageAtIndex:(unint64_t)a3;
- (void)installedWebClipsDidChange;
- (void)organizeAllIconsAcrossPagesWithPageCount:(unint64_t)a3;
- (void)organizeAllIconsIntoFoldersWithPageCount:(unint64_t)a3;
- (void)overrideBadgeValue:(id)a3 forBundleIdentifier:(id)a4;
- (void)precacheIconLayersOnFirstPageWithAppearanceDescriptions:(id)a3;
- (void)presentAppLibraryAnimated:(BOOL)a3 completion:(id)a4;
- (void)presentAppLibraryCategoryPodForCategoryIdentifier:(id)a3 completion:(id)a4;
- (void)randomizeAllIconsAcrossPagesWithPageCount:(unint64_t)a3;
- (void)reloadHomeScreenLayout;
- (void)removeAllWidgets;
- (void)removeFileStackWithURL:(id)a3;
- (void)removeHomeScreenApplicationsObservationAssertion:(id)a3;
- (void)removeHomeScreenLayoutAvailabilityObservationAssertion:(id)a3;
- (void)removeHomeScreenLayoutObservationAssertion:(id)a3;
- (void)removeIconBadgeValueObservationAssertion:(id)a3;
- (void)removeIconStyleObservationAssertion:(id)a3;
- (void)removeInstalledWebClipsObservationAssertion:(id)a3;
- (void)removeWidgetsFromHomeScreen;
- (void)requestAppLibraryUpdateSuggestionsAndRecentsPodWithReason:(id)a3 completionHandler:(id)a4;
- (void)requestAppLibraryUpdateWithReason:(id)a3 completionHandler:(id)a4;
- (void)requestSuggestedApplicationWithBundleIdentifier:(id)a3 completion:(id)a4;
- (void)resetCategoriesLayoutWithCompletion:(id)a3;
- (void)resetHomeScreenLayoutWithCompletion:(id)a3;
- (void)resetTodayViewLayout;
- (void)runDownloadingIconTest;
- (void)runFloatingDockStressTestWithCompletion:(id)a3;
- (void)runRemoveAndRestoreIconTest;
- (void)runWidgetDiscoverabilityTest;
- (void)setAddsNewIconsToHomeScreen:(BOOL)a3;
- (void)setHomeScreenIconStyleConfiguration:(id)a3;
- (void)setHomeScreenIconStyleConfiguration:(id)a3 wallpaperDimmed:(BOOL)a4;
- (void)setIconListsHidden:(id)a3;
- (void)setIconTintColor:(id)a3;
- (void)setLargeIconLayoutEnabled:(BOOL)a3;
- (void)setLargeIconSizeEnabled:(BOOL)a3;
- (void)setShowsBadgesInAppLibrary:(BOOL)a3;
- (void)setShowsHomeScreenSearchAffordance:(BOOL)a3;
- (void)setupHomeScreenForWidgetScrollPerformanceTest;
- (void)swapApplicationIconsInProminentPositionsWithBundleIdentifier:(id)a3 withApplicationIconsWithWithBundleIdentifier:(id)a4;
- (void)unforbidApplicationBundleIdentifierFromLibrary:(id)a3 withCompletion:(id)a4;
@end

@implementation SBSHomeScreenService

- (SBSHomeScreenService)init
{
  v17.receiver = self;
  v17.super_class = SBSHomeScreenService;
  v2 = [(SBSHomeScreenService *)&v17 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    Serial = BSDispatchQueueCreateSerial();
    connectionQueue = v3->_connectionQueue;
    v3->_connectionQueue = Serial;

    v6 = MEMORY[0x1E698F498];
    v7 = [MEMORY[0x1E698F498] defaultShellMachName];
    v8 = +[SBSHomeScreenServiceSpecification identifier];
    v9 = [v6 endpointForMachName:v7 service:v8 instance:0];

    objc_initWeak(&location, v3);
    v10 = [MEMORY[0x1E698F490] connectionWithEndpoint:v9];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __28__SBSHomeScreenService_init__block_invoke;
    v13[3] = &unk_1E735F0A8;
    v11 = v3;
    v14 = v11;
    objc_copyWeak(&v15, &location);
    [v10 configureConnection:v13];
    objc_storeStrong(v11 + 1, v10);
    [v11[1] activate];
    objc_destroyWeak(&v15);

    objc_destroyWeak(&location);
  }

  return v3;
}

void __28__SBSHomeScreenService_init__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[SBSHomeScreenServiceSpecification interface];
  [v3 setInterface:v4];

  [v3 setInterfaceTarget:*(a1 + 32)];
  v5 = +[SBSHomeScreenServiceSpecification serviceQuality];
  [v3 setServiceQuality:v5];

  [v3 setTargetQueue:*(*(a1 + 32) + 16)];
  [v3 setActivationHandler:&__block_literal_global_23];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __28__SBSHomeScreenService_init__block_invoke_7;
  v6[3] = &unk_1E735F080;
  objc_copyWeak(&v7, (a1 + 40));
  [v3 setInterruptionHandler:v6];
  [v3 setInvalidationHandler:&__block_literal_global_10];
  objc_destroyWeak(&v7);
}

void __28__SBSHomeScreenService_init__block_invoke_2(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = SBLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = 138543362;
    v5 = v2;
    _os_log_impl(&dword_19169D000, v3, OS_LOG_TYPE_INFO, "SBSHomeScreenService: Connection Activated: %{public}@", &v4, 0xCu);
  }
}

- (NSArray)allHomeScreenApplicationBundleIdentifiers
{
  v2 = [(BSServiceConnection *)self->_connection remoteTarget];
  if (!v2)
  {
    v3 = SBLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [SBSHomeScreenService allHomeScreenApplicationBundleIdentifiers];
    }
  }

  v4 = [v2 allHomeScreenApplicationBundleIdentifiers];
  v5 = [v4 array];

  return v5;
}

- (NSArray)allHomeScreenApplicationPlaceholderBundleIdentifiers
{
  v2 = [(BSServiceConnection *)self->_connection remoteTarget];
  if (!v2)
  {
    v3 = SBLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [SBSHomeScreenService allHomeScreenApplicationPlaceholderBundleIdentifiers];
    }
  }

  v4 = [v2 allHomeScreenApplicationPlaceholderBundleIdentifiers];
  v5 = [v4 array];

  return v5;
}

- (SBSHomeScreenIconStyleConfiguration)homeScreenIconStyleConfiguration
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(SBSHomeScreenService *)self isCachedIconStyleConfigurationValid];
  v4 = [(SBSHomeScreenService *)self cachedIconStyleConfiguration];
  os_unfair_lock_unlock(&self->_lock);
  if (v3)
  {
    v5 = v4;
  }

  else
  {
    v6 = [(BSServiceConnection *)self->_connection remoteTarget];
    v7 = v6;
    if (v6)
    {
      v5 = [v6 homeScreenIconStyleConfiguration];
    }

    else
    {
      v8 = SBLogCommon();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [SBSHomeScreenService homeScreenIconStyleConfiguration];
      }

      v5 = 0;
    }
  }

  return v5;
}

void __28__SBSHomeScreenService_init__block_invoke_7(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = SBLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v9 = 138543362;
    v10 = v3;
    _os_log_impl(&dword_19169D000, v4, OS_LOG_TYPE_INFO, "SBSHomeScreenService: Received interruption for connection: %{public}@", &v9, 0xCu);
  }

  [v3 activate];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    os_unfair_lock_lock(WeakRetained + 6);
    if ([*&v6[8]._os_unfair_lock_opaque count])
    {
      v7 = [v3 remoteTarget];
      [v7 setObservingInstalledWebClips:MEMORY[0x1E695E118]];
    }

    if ([*&v6[18]._os_unfair_lock_opaque count])
    {
      v8 = [v3 remoteTarget];
      [v8 setObservingHomeScreenApplications:MEMORY[0x1E695E118]];
    }

    os_unfair_lock_unlock(v6 + 6);
  }
}

void __28__SBSHomeScreenService_init__block_invoke_8(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = SBLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = 138543362;
    v5 = v2;
    _os_log_impl(&dword_19169D000, v3, OS_LOG_TYPE_INFO, "SBSHomeScreenService: Received invalidation for connection: %{public}@", &v4, 0xCu);
  }
}

- (void)dealloc
{
  [(BSServiceConnection *)self->_connection invalidate];
  v3.receiver = self;
  v3.super_class = SBSHomeScreenService;
  [(SBSHomeScreenService *)&v3 dealloc];
}

- (void)resetHomeScreenLayoutWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(BSServiceConnection *)self->_connection remoteTarget];
  if (v5)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __60__SBSHomeScreenService_resetHomeScreenLayoutWithCompletion___block_invoke;
    v11[3] = &unk_1E735F0F8;
    v6 = &v12;
    v12 = v4;
    [v5 resetHomeScreenLayoutWithCompletion:v11];
LABEL_7:

    goto LABEL_8;
  }

  v7 = SBLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [SBSHomeScreenService resetHomeScreenLayoutWithCompletion:];
  }

  if (v4)
  {
    connectionQueue = self->_connectionQueue;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __60__SBSHomeScreenService_resetHomeScreenLayoutWithCompletion___block_invoke_15;
    v9[3] = &unk_1E735F148;
    v6 = &v10;
    v10 = v4;
    dispatch_async(connectionQueue, v9);
    goto LABEL_7;
  }

LABEL_8:
}

void __60__SBSHomeScreenService_resetHomeScreenLayoutWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = SBLogCommon();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __60__SBSHomeScreenService_resetHomeScreenLayoutWithCompletion___block_invoke_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&dword_19169D000, v5, OS_LOG_TYPE_INFO, "SBSHomeScreenService: home screen layout successfully reset", v7, 2u);
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))(v6, v3 == 0);
  }
}

- (void)resetCategoriesLayoutWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(BSServiceConnection *)self->_connection remoteTarget];
  if (v5)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __60__SBSHomeScreenService_resetCategoriesLayoutWithCompletion___block_invoke;
    v11[3] = &unk_1E735F0F8;
    v6 = &v12;
    v12 = v4;
    [v5 resetCategoriesLayoutWithCompletion:v11];
LABEL_7:

    goto LABEL_8;
  }

  v7 = SBLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [SBSHomeScreenService resetCategoriesLayoutWithCompletion:];
  }

  if (v4)
  {
    connectionQueue = self->_connectionQueue;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __60__SBSHomeScreenService_resetCategoriesLayoutWithCompletion___block_invoke_17;
    v9[3] = &unk_1E735F148;
    v6 = &v10;
    v10 = v4;
    dispatch_async(connectionQueue, v9);
    goto LABEL_7;
  }

LABEL_8:
}

void __60__SBSHomeScreenService_resetCategoriesLayoutWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = SBLogCommon();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __60__SBSHomeScreenService_resetCategoriesLayoutWithCompletion___block_invoke_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&dword_19169D000, v5, OS_LOG_TYPE_INFO, "SBSHomeScreenService: categories successfully reset", v7, 2u);
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))(v6, v3 == 0);
  }
}

- (void)forbidApplicationBundleIdentifierFromLibrary:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(BSServiceConnection *)self->_connection remoteTarget];
  if (v8)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __84__SBSHomeScreenService_forbidApplicationBundleIdentifierFromLibrary_withCompletion___block_invoke;
    v15[3] = &unk_1E735F5A8;
    v9 = &v16;
    v10 = v6;
    v16 = v10;
    v17 = v7;
    [v8 forbidApplicationBundleIdentifierFromLibrary:v10 withCompletion:v15];

LABEL_7:
    goto LABEL_8;
  }

  v11 = SBLogCommon();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    [SBSHomeScreenService forbidApplicationBundleIdentifierFromLibrary:withCompletion:];
  }

  if (v7)
  {
    connectionQueue = self->_connectionQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __84__SBSHomeScreenService_forbidApplicationBundleIdentifierFromLibrary_withCompletion___block_invoke_18;
    block[3] = &unk_1E735F148;
    v9 = &v14;
    v14 = v7;
    dispatch_async(connectionQueue, block);
    goto LABEL_7;
  }

LABEL_8:
}

void __84__SBSHomeScreenService_forbidApplicationBundleIdentifierFromLibrary_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = SBLogCommon();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __84__SBSHomeScreenService_forbidApplicationBundleIdentifierFromLibrary_withCompletion___block_invoke_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&dword_19169D000, v5, OS_LOG_TYPE_INFO, "SBSHomeScreenService: app bundle identifier '%@' was forbidden", &v8, 0xCu);
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, v3 == 0);
  }
}

- (void)unforbidApplicationBundleIdentifierFromLibrary:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(BSServiceConnection *)self->_connection remoteTarget];
  if (v8)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __86__SBSHomeScreenService_unforbidApplicationBundleIdentifierFromLibrary_withCompletion___block_invoke;
    v15[3] = &unk_1E735F5A8;
    v9 = &v16;
    v10 = v6;
    v16 = v10;
    v17 = v7;
    [v8 unforbidApplicationBundleIdentifierFromLibrary:v10 withCompletion:v15];

LABEL_7:
    goto LABEL_8;
  }

  v11 = SBLogCommon();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    [SBSHomeScreenService unforbidApplicationBundleIdentifierFromLibrary:withCompletion:];
  }

  if (v7)
  {
    connectionQueue = self->_connectionQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __86__SBSHomeScreenService_unforbidApplicationBundleIdentifierFromLibrary_withCompletion___block_invoke_19;
    block[3] = &unk_1E735F148;
    v9 = &v14;
    v14 = v7;
    dispatch_async(connectionQueue, block);
    goto LABEL_7;
  }

LABEL_8:
}

void __86__SBSHomeScreenService_unforbidApplicationBundleIdentifierFromLibrary_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = SBLogCommon();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __86__SBSHomeScreenService_unforbidApplicationBundleIdentifierFromLibrary_withCompletion___block_invoke_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&dword_19169D000, v5, OS_LOG_TYPE_INFO, "SBSHomeScreenService: app bundle identifier '%@' was unforbidden", &v8, 0xCu);
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, v3 == 0);
  }
}

- (void)runFloatingDockStressTestWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(BSServiceConnection *)self->_connection remoteTarget];
  if (v5)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __64__SBSHomeScreenService_runFloatingDockStressTestWithCompletion___block_invoke;
    v11[3] = &unk_1E735F0F8;
    v6 = &v12;
    v12 = v4;
    [v5 runFloatingDockStressTestWithCompletion:v11];
LABEL_7:

    goto LABEL_8;
  }

  v7 = SBLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [SBSHomeScreenService runFloatingDockStressTestWithCompletion:];
  }

  if (v4)
  {
    connectionQueue = self->_connectionQueue;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __64__SBSHomeScreenService_runFloatingDockStressTestWithCompletion___block_invoke_20;
    v9[3] = &unk_1E735F148;
    v6 = &v10;
    v10 = v4;
    dispatch_async(connectionQueue, v9);
    goto LABEL_7;
  }

LABEL_8:
}

void __64__SBSHomeScreenService_runFloatingDockStressTestWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = SBLogCommon();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __64__SBSHomeScreenService_runFloatingDockStressTestWithCompletion___block_invoke_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&dword_19169D000, v5, OS_LOG_TYPE_INFO, "SBSHomeScreenService: successfully ran floating dock suggestions stress test", v7, 2u);
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))(v6, v3);
  }
}

- (void)requestSuggestedApplicationWithBundleIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(MEMORY[0x1E698E6C0]);
  if ([v8 isUsable])
  {
    v9 = [objc_alloc(MEMORY[0x1E698E6C8]) initFromReceiveRight:v8];
    v10 = [(BSServiceConnection *)self->_connection remoteTarget];
    if (v10)
    {
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __83__SBSHomeScreenService_requestSuggestedApplicationWithBundleIdentifier_completion___block_invoke_2;
      v18[3] = &unk_1E735FEC0;
      v11 = &v20;
      v20 = v7;
      v19 = v8;
      [v10 requestSuggestedApplicationWithBundleIdentifier:v6 assertionPort:v9 completion:v18];
    }

    else
    {
      v14 = SBLogCommon();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [SBSHomeScreenService requestSuggestedApplicationWithBundleIdentifier:completion:];
      }

      connectionQueue = self->_connectionQueue;
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __83__SBSHomeScreenService_requestSuggestedApplicationWithBundleIdentifier_completion___block_invoke_27;
      v16[3] = &unk_1E735F148;
      v11 = &v17;
      v17 = v7;
      dispatch_async(connectionQueue, v16);
    }
  }

  else
  {
    v12 = SBLogCommon();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [SBSHomeScreenService requestSuggestedApplicationWithBundleIdentifier:completion:];
    }

    v13 = self->_connectionQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __83__SBSHomeScreenService_requestSuggestedApplicationWithBundleIdentifier_completion___block_invoke;
    block[3] = &unk_1E735F148;
    v22 = v7;
    dispatch_async(v13, block);
    v9 = v22;
  }
}

void __83__SBSHomeScreenService_requestSuggestedApplicationWithBundleIdentifier_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = SBLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __83__SBSHomeScreenService_requestSuggestedApplicationWithBundleIdentifier_completion___block_invoke_2_cold_1();
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v5 = *(a1 + 40);
    v6 = [[SBSAssertion alloc] initWithAssertionName:@"com.apple.springboard.requestSuggestedApplication" reason:@"requestSuggestedApplicationWithBundleIdentifier" receiveRight:*(a1 + 32)];
    (*(v5 + 16))(v5, v6);
  }
}

- (id)folderPathToIconWithBundleIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(BSServiceConnection *)self->_connection remoteTarget];
  if (!v5)
  {
    v6 = SBLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SBSHomeScreenService folderPathToIconWithBundleIdentifier:];
    }
  }

  v7 = [v5 folderPathToIconWithBundleIdentifier:v4];
  v8 = [v7 array];

  return v8;
}

- (BOOL)debugContinuityWithBadgeType:(id)a3 deviceTypeIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(BSServiceConnection *)self->_connection remoteTarget];
  if (!v8)
  {
    v9 = SBLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [SBSHomeScreenService debugContinuityWithBadgeType:deviceTypeIdentifier:];
    }
  }

  v10 = [v8 debugContinuityWithBadgeType:v6 deviceTypeIdentifier:v7];

  return v10;
}

- (void)runDownloadingIconTest
{
  v2 = [(BSServiceConnection *)self->_connection remoteTarget];
  if (!v2)
  {
    v3 = SBLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [SBSHomeScreenService runDownloadingIconTest];
    }
  }

  [v2 runDownloadingIconTest];
}

- (void)configureDeweyEachAppHasItsOwnCategory
{
  v2 = [(BSServiceConnection *)self->_connection remoteTarget];
  if (!v2)
  {
    v3 = SBLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [SBSHomeScreenService configureDeweyEachAppHasItsOwnCategory];
    }
  }

  [v2 configureDeweyEachAppHasItsOwnCategory];
}

- (void)configureDeweyOneCategoryWithAllApps
{
  v2 = [(BSServiceConnection *)self->_connection remoteTarget];
  if (!v2)
  {
    v3 = SBLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [SBSHomeScreenService configureDeweyOneCategoryWithAllApps];
    }
  }

  [v2 configureDeweyOneCategoryWithAllApps];
}

- (void)configureLibraryWithCategoryLimit:(int64_t)a3
{
  v4 = [(BSServiceConnection *)self->_connection remoteTarget];
  if (!v4)
  {
    v5 = SBLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [SBSHomeScreenService configureLibraryWithCategoryLimit:];
    }
  }

  v6 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [v4 configureLibraryWithCategoryLimit:v6];
}

- (id)configureCategoryMapProviderToUseCategoryMapAtURL:(id)a3
{
  v4 = a3;
  v5 = [(BSServiceConnection *)self->_connection remoteTarget];
  if (!v5)
  {
    v6 = SBLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SBSHomeScreenService configureCategoryMapProviderToUseCategoryMapAtURL:];
    }
  }

  v7 = [v5 configureCategoryMapProviderToUseCategoryMapAtURL:v4];

  return v7;
}

- (void)runRemoveAndRestoreIconTest
{
  v2 = [(BSServiceConnection *)self->_connection remoteTarget];
  if (!v2)
  {
    v3 = SBLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [SBSHomeScreenService runRemoveAndRestoreIconTest];
    }
  }

  [v2 runRemoveAndRestoreIconTest];
}

- (void)addApplicationIconToHomeScreenWithBundleIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(BSServiceConnection *)self->_connection remoteTarget];
  if (!v5)
  {
    v6 = SBLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SBSHomeScreenService addApplicationIconToHomeScreenWithBundleIdentifier:];
    }
  }

  [v5 addApplicationIconToHomeScreenWithBundleIdentifier:v4];
}

- (void)addApplicationIconToHomeScreenWithBundleIdentifier:(id)a3 inPage:(unint64_t)a4 atPositionDescription:(id)a5
{
  connection = self->_connection;
  v8 = a5;
  v9 = a3;
  v10 = [(BSServiceConnection *)connection remoteTarget];
  if (!v10)
  {
    v11 = SBLogCommon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [SBSHomeScreenService addApplicationIconToHomeScreenWithBundleIdentifier:];
    }
  }

  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
  [v10 addApplicationIconToHomeScreenWithBundleIdentifier:v9 inPage:v12 atPositionDescription:v8];
}

- (void)addPageOfApplicationIconsWithBundleIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(BSServiceConnection *)self->_connection remoteTarget];
  if (!v5)
  {
    v6 = SBLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SBSHomeScreenService addApplicationIconToHomeScreenWithBundleIdentifier:];
    }
  }

  [v5 addPageOfApplicationIconsWithBundleIdentifier:v4];
}

- (void)addWidgetToTodayViewWithBundleIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(BSServiceConnection *)self->_connection remoteTarget];
  if (!v5)
  {
    v6 = SBLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SBSHomeScreenService addWidgetToTodayViewWithBundleIdentifier:];
    }
  }

  [v5 addWidgetToTodayViewWithBundleIdentifier:v4];
}

- (BOOL)isLargeIconLayoutEnabled
{
  v2 = [(BSServiceConnection *)self->_connection remoteTarget];
  if (!v2)
  {
    v3 = SBLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [SBSHomeScreenService isLargeIconLayoutEnabled];
    }
  }

  v4 = [v2 largeIconLayoutEnabledValue];
  v5 = [v4 BOOLValue];

  return v5;
}

- (void)setLargeIconLayoutEnabled:(BOOL)a3
{
  v3 = a3;
  v4 = [(BSServiceConnection *)self->_connection remoteTarget];
  if (!v4)
  {
    v5 = SBLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [SBSHomeScreenService isLargeIconLayoutEnabled];
    }
  }

  v6 = [MEMORY[0x1E696AD98] numberWithBool:v3];
  [v4 setLargeIconLayoutEnabledValue:v6];
}

- (BOOL)isLargeIconSizeEnabled
{
  v2 = [(BSServiceConnection *)self->_connection remoteTarget];
  if (!v2)
  {
    v3 = SBLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [SBSHomeScreenService isLargeIconLayoutEnabled];
    }
  }

  v4 = [v2 largeIconSizeEnabledValue];
  v5 = [v4 BOOLValue];

  return v5;
}

- (void)setLargeIconSizeEnabled:(BOOL)a3
{
  v3 = a3;
  v4 = [(BSServiceConnection *)self->_connection remoteTarget];
  if (!v4)
  {
    v5 = SBLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [SBSHomeScreenService isLargeIconLayoutEnabled];
    }
  }

  v6 = [MEMORY[0x1E696AD98] numberWithBool:v3];
  [v4 setLargeIconSizeEnabledValue:v6];
}

- (BOOL)addsNewIconsToHomeScreen
{
  v2 = [(BSServiceConnection *)self->_connection remoteTarget];
  if (!v2)
  {
    v3 = SBLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [SBSHomeScreenService addsNewIconsToHomeScreen];
    }
  }

  v4 = [v2 addsNewIconsToHomeScreenValue];
  v5 = [v4 BOOLValue];

  return v5;
}

- (void)setAddsNewIconsToHomeScreen:(BOOL)a3
{
  v3 = a3;
  v4 = [(BSServiceConnection *)self->_connection remoteTarget];
  if (!v4)
  {
    v5 = SBLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [SBSHomeScreenService setAddsNewIconsToHomeScreen:];
    }
  }

  v6 = [MEMORY[0x1E696AD98] numberWithBool:v3];
  [v4 setAddsNewIconsToHomeScreenValue:v6];
}

- (void)setIconListsHidden:(id)a3
{
  connection = self->_connection;
  v4 = a3;
  v5 = [(BSServiceConnection *)connection remoteTarget];
  if (!v5)
  {
    v6 = SBLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SBSHomeScreenService setIconListsHidden:];
    }
  }

  v7 = [[SBSHomeScreenServiceArrayOfStrings alloc] initWithArray:v4];

  [v5 setIconListsHidden:v7];
}

- (BOOL)showsBadgesInAppLibrary
{
  v2 = [(BSServiceConnection *)self->_connection remoteTarget];
  if (!v2)
  {
    v3 = SBLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [SBSHomeScreenService showsBadgesInAppLibrary];
    }
  }

  v4 = [v2 showsBadgesInAppLibraryValue];
  v5 = [v4 BOOLValue];

  return v5;
}

- (void)setShowsBadgesInAppLibrary:(BOOL)a3
{
  v3 = a3;
  v4 = [(BSServiceConnection *)self->_connection remoteTarget];
  if (!v4)
  {
    v5 = SBLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [SBSHomeScreenService showsBadgesInAppLibrary];
    }
  }

  v6 = [MEMORY[0x1E696AD98] numberWithBool:v3];
  [v4 setShowsBadgesInAppLibraryValue:v6];
}

- (BOOL)showsHomeScreenSearchAffordance
{
  v2 = [(BSServiceConnection *)self->_connection remoteTarget];
  if (!v2)
  {
    v3 = SBLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [SBSHomeScreenService showsHomeScreenSearchAffordance];
    }
  }

  v4 = [v2 showsHomeScreenSearchAffordanceValue];
  v5 = [v4 BOOLValue];

  return v5;
}

- (void)setShowsHomeScreenSearchAffordance:(BOOL)a3
{
  v3 = a3;
  v4 = [(BSServiceConnection *)self->_connection remoteTarget];
  if (!v4)
  {
    v5 = SBLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [SBSHomeScreenService showsHomeScreenSearchAffordance];
    }
  }

  v6 = [MEMORY[0x1E696AD98] numberWithBool:v3];
  [v4 setShowsHomeScreenSearchAffordanceValue:v6];
}

- (id)addHomeScreenApplicationsObserver:(id)a3
{
  connection = self->_connection;
  v5 = a3;
  v6 = [(BSServiceConnection *)connection remoteTarget];
  if (!v6)
  {
    v7 = SBLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [SBSHomeScreenService addHomeScreenApplicationsObserver:];
    }
  }

  v8 = [[SBSHomeScreenServiceHomeScreenApplicationsObservationAssertion alloc] initWithObserver:v5 service:self];

  os_unfair_lock_lock(&self->_lock);
  homeScreenApplicationsObservers = self->_homeScreenApplicationsObservers;
  if (!homeScreenApplicationsObservers)
  {
    v10 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v11 = self->_homeScreenApplicationsObservers;
    self->_homeScreenApplicationsObservers = v10;

    homeScreenApplicationsObservers = self->_homeScreenApplicationsObservers;
  }

  [(NSHashTable *)homeScreenApplicationsObservers addObject:v8];
  os_unfair_lock_unlock(&self->_lock);
  [v6 setObservingHomeScreenApplications:MEMORY[0x1E695E118]];

  return v8;
}

- (void)removeHomeScreenApplicationsObservationAssertion:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(NSHashTable *)self->_homeScreenApplicationsObservers removeObject:v4];

  v5 = [(NSHashTable *)self->_installedWebClipObservers count];
  os_unfair_lock_unlock(&self->_lock);
  if (!v5)
  {
    v6 = [(BSServiceConnection *)self->_connection remoteTarget];
    [v6 setObservingHomeScreenApplications:MEMORY[0x1E695E110]];
  }
}

- (void)homeScreenApplicationsDidChange
{
  v20 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSHashTable *)self->_homeScreenApplicationsObservers allObjects];
  os_unfair_lock_unlock(&self->_lock);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = [v9 observer];
        v11 = v10;
        if (v10)
        {
          [v10 homeScreenServiceHomeScreenApplicationsDidChange:self];
        }

        else
        {
          v12 = SBLogCommon();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            [(SBSHomeScreenService *)&v13 homeScreenApplicationsDidChange];
          }

          [(SBSHomeScreenService *)self removeHomeScreenApplicationsObservationAssertion:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }
}

- (NSString)allIconLists
{
  v2 = [(BSServiceConnection *)self->_connection remoteTarget];
  if (!v2)
  {
    v3 = SBLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [SBSHomeScreenService allIconLists];
    }
  }

  v4 = [v2 allIconLists];

  return v4;
}

- (BOOL)hasWidgetWithBundleIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(BSServiceConnection *)self->_connection remoteTarget];
  if (!v5)
  {
    v6 = SBLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SBSHomeScreenService hasWidgetWithBundleIdentifier:];
    }
  }

  v7 = [v5 hasWidgetWithBundleIdentifier:v4];

  return v7;
}

- (void)requestAppLibraryUpdateWithReason:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(BSServiceConnection *)self->_connection remoteTarget];
  v9 = v8;
  if (v8)
  {
    if (v7)
    {
      [v8 requestAppLibraryUpdate:&unk_1F05B4E68 reason:v6 completion:v7];
    }

    else
    {
      [v8 refreshAppLibrary:&unk_1F05B4E68 reason:v6];
    }
  }

  else
  {
    v10 = SBLogCommon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [SBSHomeScreenService requestAppLibraryUpdateWithReason:completionHandler:];
    }
  }
}

- (void)requestAppLibraryUpdateSuggestionsAndRecentsPodWithReason:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(BSServiceConnection *)self->_connection remoteTarget];
  v9 = v8;
  if (v8)
  {
    if (v7)
    {
      [v8 requestAppLibraryUpdate:&unk_1F05B4E80 reason:v6 completion:v7];
    }

    else
    {
      [v8 refreshAppLibrary:&unk_1F05B4E80 reason:v6];
    }
  }

  else
  {
    v10 = SBLogCommon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [SBSHomeScreenService requestAppLibraryUpdateSuggestionsAndRecentsPodWithReason:completionHandler:];
    }
  }
}

- (void)organizeAllIconsIntoFoldersWithPageCount:(unint64_t)a3
{
  v4 = [(BSServiceConnection *)self->_connection remoteTarget];
  if (!v4)
  {
    v5 = SBLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [SBSHomeScreenService organizeAllIconsIntoFoldersWithPageCount:];
    }
  }

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [v4 organizeAllIconsIntoFoldersWithPageCount:v6];
}

- (void)organizeAllIconsAcrossPagesWithPageCount:(unint64_t)a3
{
  v4 = [(BSServiceConnection *)self->_connection remoteTarget];
  if (!v4)
  {
    v5 = SBLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [SBSHomeScreenService organizeAllIconsAcrossPagesWithPageCount:];
    }
  }

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [v4 organizeAllIconsAcrossPagesWithPageCount:v6];
}

- (void)randomizeAllIconsAcrossPagesWithPageCount:(unint64_t)a3
{
  v4 = [(BSServiceConnection *)self->_connection remoteTarget];
  if (!v4)
  {
    v5 = SBLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [SBSHomeScreenService randomizeAllIconsAcrossPagesWithPageCount:];
    }
  }

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [v4 randomizeAllIconsAcrossPagesWithPageCount:v6];
}

- (void)removeAllWidgets
{
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_1(&dword_19169D000, v2, v3, "SBSHomeScreenService: failed %{public}@ request (no target).", v4, v5, v6, v7, v8);
}

- (void)removeWidgetsFromHomeScreen
{
  v3 = [(BSServiceConnection *)self->_connection remoteTarget];
  if (!v3)
  {
    v4 = SBLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(SBSHomeScreenService *)a2 removeAllWidgets];
    }
  }

  [v3 removeWidgetsFromHomeScreen];
}

- (void)addFileStackWithURL:(id)a3
{
  v5 = a3;
  v6 = [(BSServiceConnection *)self->_connection remoteTarget];
  v7 = v6;
  if (!v6)
  {
    v8 = SBLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(SBSHomeScreenService *)a2 removeAllWidgets];
    }

    goto LABEL_8;
  }

  if (!v5)
  {
    v8 = SBLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [SBSHomeScreenService addFileStackWithURL:a2];
    }

LABEL_8:

    goto LABEL_9;
  }

  [v6 addFileStackWithURL:v5];
LABEL_9:
}

- (void)removeFileStackWithURL:(id)a3
{
  v5 = a3;
  v6 = [(BSServiceConnection *)self->_connection remoteTarget];
  v7 = v6;
  if (!v6)
  {
    v8 = SBLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(SBSHomeScreenService *)a2 removeAllWidgets];
    }

    goto LABEL_8;
  }

  if (!v5)
  {
    v8 = SBLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [SBSHomeScreenService addFileStackWithURL:a2];
    }

LABEL_8:

    goto LABEL_9;
  }

  [v6 removeFileStackWithURL:v5];
LABEL_9:
}

- (BOOL)hasConfiguredFilesStackWithURL:(id)a3
{
  v5 = a3;
  v6 = [(BSServiceConnection *)self->_connection remoteTarget];
  v7 = v6;
  if (!v6)
  {
    v9 = SBLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(SBSHomeScreenService *)a2 removeAllWidgets];
    }

    goto LABEL_8;
  }

  if (!v5)
  {
    v9 = SBLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [SBSHomeScreenService addFileStackWithURL:a2];
    }

LABEL_8:

    v8 = 0;
    goto LABEL_9;
  }

  v8 = [v6 hasConfiguredFilesStackWithURL:v5];
LABEL_9:

  return v8;
}

- (void)ignoreAllApps
{
  v3 = [(BSServiceConnection *)self->_connection remoteTarget];
  if (!v3)
  {
    v4 = SBLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(SBSHomeScreenService *)a2 removeAllWidgets];
    }
  }

  [v3 ignoreAllApps];
}

- (void)deleteAllWebClips
{
  v3 = [(BSServiceConnection *)self->_connection remoteTarget];
  if (!v3)
  {
    v4 = SBLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(SBSHomeScreenService *)a2 removeAllWidgets];
    }
  }

  [v3 deleteAllWebClips];
}

- (void)changeDisplayedDateOverride:(id)a3
{
  v4 = a3;
  v5 = [(BSServiceConnection *)self->_connection remoteTarget];
  if (!v5)
  {
    v6 = SBLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SBSHomeScreenService changeDisplayedDateOverride:];
    }
  }

  [v5 changeDisplayedDateOverride:v4];
}

- (void)changeDisplayedDateOffsetOverride:(double)a3
{
  v4 = [(BSServiceConnection *)self->_connection remoteTarget];
  if (!v4)
  {
    v5 = SBLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [SBSHomeScreenService changeDisplayedDateOffsetOverride:];
    }
  }

  v6 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [v4 changeDisplayedDateOffsetOverride:v6];
}

- (void)changeDisplayedDateWithAutoupdatingSecondsOverride:(id)a3
{
  v4 = a3;
  v5 = [(BSServiceConnection *)self->_connection remoteTarget];
  if (!v5)
  {
    v6 = SBLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SBSHomeScreenService changeDisplayedDateWithAutoupdatingSecondsOverride:];
    }
  }

  [v5 changeDisplayedDateWithAutoupdatingSecondsOverride:v4];
}

- (void)reloadHomeScreenLayout
{
  v2 = [(BSServiceConnection *)self->_connection remoteTarget];
  if (!v2)
  {
    v3 = SBLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [SBSHomeScreenService reloadHomeScreenLayout];
    }
  }

  [v2 reloadHomeScreenLayout];
}

- (void)resetTodayViewLayout
{
  v2 = [(BSServiceConnection *)self->_connection remoteTarget];
  if (!v2)
  {
    v3 = SBLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [SBSHomeScreenService resetTodayViewLayout];
    }
  }

  [v2 resetTodayViewLayout];
}

- (void)clearTodayViewLayout
{
  v2 = [(BSServiceConnection *)self->_connection remoteTarget];
  if (!v2)
  {
    v3 = SBLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [SBSHomeScreenService clearTodayViewLayout];
    }
  }

  [v2 clearTodayViewLayout];
}

- (void)overrideBadgeValue:(id)a3 forBundleIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(BSServiceConnection *)self->_connection remoteTarget];
  if (!v8)
  {
    v9 = SBLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [SBSHomeScreenService overrideBadgeValue:forBundleIdentifier:];
    }
  }

  [v8 overrideBadgeValue:v6 forBundleIdentifier:v7];
}

- (void)clearNewlyInstalledAndRecentlyUpdatedAppIndicators
{
  v2 = [(BSServiceConnection *)self->_connection remoteTarget];
  if (!v2)
  {
    v3 = SBLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [SBSHomeScreenService clearNewlyInstalledAndRecentlyUpdatedAppIndicators];
    }
  }

  [v2 clearNewlyInstalledAndRecentlyUpdatedAppIndicators];
}

- (void)presentAppLibraryCategoryPodForCategoryIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(BSServiceConnection *)self->_connection remoteTarget];
  if (!v8)
  {
    v9 = SBLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [SBSHomeScreenService presentAppLibraryCategoryPodForCategoryIdentifier:completion:];
    }
  }

  [v8 presentAppLibraryCategoryPodForCategoryIdentifier:v6 completion:v7];
}

- (void)presentAppLibraryAnimated:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  connection = self->_connection;
  v6 = a4;
  v7 = [(BSServiceConnection *)connection remoteTarget];
  if (!v7)
  {
    v8 = SBLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [SBSHomeScreenService presentAppLibraryAnimated:completion:];
    }
  }

  v9 = [MEMORY[0x1E696AD98] numberWithBool:v4];
  [v7 presentAppLibraryAnimated:v9 completion:v6];
}

- (void)dismissAppLibraryWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(BSServiceConnection *)self->_connection remoteTarget];
  if (!v5)
  {
    v6 = SBLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SBSHomeScreenService dismissAppLibraryWithCompletion:];
    }
  }

  [v5 dismissAppLibraryWithCompletion:v4];
}

- (void)addDebugIconWithSizeClassDescription:(id)a3 inPage:(unint64_t)a4 atPositionDescription:(id)a5
{
  connection = self->_connection;
  v8 = a5;
  v9 = a3;
  v10 = [(BSServiceConnection *)connection remoteTarget];
  if (!v10)
  {
    v11 = SBLogCommon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [SBSHomeScreenService addDebugIconWithSizeClassDescription:inPage:atPositionDescription:];
    }
  }

  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
  [v10 addDebugIconWithSizeClassDescription:v9 inPage:v12 atPositionDescription:v8];
}

- (id)addInstalledWebClipsObserver:(id)a3
{
  connection = self->_connection;
  v5 = a3;
  v6 = [(BSServiceConnection *)connection remoteTarget];
  if (!v6)
  {
    v7 = SBLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [SBSHomeScreenService addInstalledWebClipsObserver:];
    }
  }

  v8 = [[SBSHomeScreenServiceInstalledWebClipsObservationAssertion alloc] initWithObserver:v5 service:self];

  os_unfair_lock_lock(&self->_lock);
  installedWebClipObservers = self->_installedWebClipObservers;
  if (!installedWebClipObservers)
  {
    v10 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v11 = self->_installedWebClipObservers;
    self->_installedWebClipObservers = v10;

    installedWebClipObservers = self->_installedWebClipObservers;
  }

  [(NSHashTable *)installedWebClipObservers addObject:v8];
  os_unfair_lock_unlock(&self->_lock);
  [v6 setObservingInstalledWebClips:MEMORY[0x1E695E118]];

  return v8;
}

- (void)removeInstalledWebClipsObservationAssertion:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(NSHashTable *)self->_installedWebClipObservers removeObject:v4];

  v5 = [(NSHashTable *)self->_installedWebClipObservers count];
  os_unfair_lock_unlock(&self->_lock);
  if (!v5)
  {
    v6 = [(BSServiceConnection *)self->_connection remoteTarget];
    [v6 setObservingInstalledWebClips:MEMORY[0x1E695E110]];
  }
}

- (SBSDebugActiveWidgetInfo)debuggingActiveWidgetInfo
{
  v2 = [(BSServiceConnection *)self->_connection remoteTarget];
  if (!v2)
  {
    v3 = SBLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [SBSHomeScreenService debuggingActiveWidgetInfo];
    }
  }

  v4 = [v2 debuggingActiveWidgetInfo];

  return v4;
}

- (void)insertEmptyPageAtIndex:(unint64_t)a3
{
  v4 = [(BSServiceConnection *)self->_connection remoteTarget];
  if (!v4)
  {
    v5 = SBLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [SBSHomeScreenService insertEmptyPageAtIndex:];
    }
  }

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [v4 insertEmptyPageAtIndex:v6];
}

- (void)addEmptyPage
{
  v2 = [(BSServiceConnection *)self->_connection remoteTarget];
  if (!v2)
  {
    v3 = SBLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [SBSHomeScreenService addEmptyPage];
    }
  }

  [v2 addEmptyPage];
}

- (void)addSuggestedPageWithPageType:(id)a3 focusModeIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(BSServiceConnection *)self->_connection remoteTarget];
  if (!v8)
  {
    v9 = SBLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [SBSHomeScreenService addSuggestedPageWithPageType:focusModeIdentifier:];
    }
  }

  [v8 addSuggestedPageWithPageType:v6 focusModeIdentifier:v7];
}

- (BOOL)isHomeScreenLayoutAvailable
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(SBSHomeScreenService *)self isCachedHomeScreenLayoutAvailableValid];
  v4 = [(SBSHomeScreenService *)self isCachedHomeScreenLayoutAvailable];
  os_unfair_lock_unlock(&self->_lock);
  if (!v3)
  {
    v5 = [(BSServiceConnection *)self->_connection remoteTarget];
    if (!v5)
    {
      v6 = SBLogCommon();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [SBSHomeScreenService isHomeScreenLayoutAvailable];
      }
    }

    v7 = [v5 homeScreenLayoutAvailability];
    v4 = [v7 BOOLValue];
  }

  return v4;
}

- (id)addHomeScreenLayoutAvailabilityObserver:(id)a3
{
  connection = self->_connection;
  v5 = a3;
  v6 = [(BSServiceConnection *)connection remoteTarget];
  if (!v6)
  {
    v7 = SBLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [SBSHomeScreenService addHomeScreenLayoutAvailabilityObserver:];
    }
  }

  v8 = [[SBSHomeScreenServiceHomeScreenLayoutAvailabilityObservationAssertion alloc] initWithObserver:v5 service:self];

  os_unfair_lock_lock(&self->_lock);
  homeScreenLayoutAvailableObservers = self->_homeScreenLayoutAvailableObservers;
  if (!homeScreenLayoutAvailableObservers)
  {
    v10 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v11 = self->_homeScreenLayoutAvailableObservers;
    self->_homeScreenLayoutAvailableObservers = v10;

    homeScreenLayoutAvailableObservers = self->_homeScreenLayoutAvailableObservers;
  }

  [(NSHashTable *)homeScreenLayoutAvailableObservers addObject:v8];
  os_unfair_lock_unlock(&self->_lock);
  [v6 setObservingHomeScreenLayoutAvailability:MEMORY[0x1E695E118]];

  return v8;
}

- (void)removeHomeScreenLayoutAvailabilityObservationAssertion:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(NSHashTable *)self->_homeScreenLayoutAvailableObservers removeObject:v4];

  v5 = [(NSHashTable *)self->_homeScreenLayoutAvailableObservers count];
  os_unfair_lock_unlock(&self->_lock);
  if (!v5)
  {
    v6 = [(BSServiceConnection *)self->_connection remoteTarget];
    [v6 setObservingHomeScreenLayoutAvailability:MEMORY[0x1E695E110]];
  }
}

- (id)addHomeScreenLayoutObserver:(id)a3
{
  connection = self->_connection;
  v5 = a3;
  v6 = [(BSServiceConnection *)connection remoteTarget];
  if (!v6)
  {
    v7 = SBLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [SBSHomeScreenService addHomeScreenLayoutObserver:];
    }
  }

  v8 = [[SBSHomeScreenServiceHomeScreenLayoutObservationAssertion alloc] initWithObserver:v5 service:self];

  os_unfair_lock_lock(&self->_lock);
  homeScreenLayoutObservers = self->_homeScreenLayoutObservers;
  if (!homeScreenLayoutObservers)
  {
    v10 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v11 = self->_homeScreenLayoutObservers;
    self->_homeScreenLayoutObservers = v10;

    homeScreenLayoutObservers = self->_homeScreenLayoutObservers;
  }

  [(NSHashTable *)homeScreenLayoutObservers addObject:v8];
  os_unfair_lock_unlock(&self->_lock);
  [v6 setObservingHomeScreenLayout:MEMORY[0x1E695E118]];

  return v8;
}

- (void)removeHomeScreenLayoutObservationAssertion:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(NSHashTable *)self->_homeScreenLayoutObservers removeObject:v4];

  v5 = [(NSHashTable *)self->_homeScreenLayoutObservers count];
  os_unfair_lock_unlock(&self->_lock);
  if (!v5)
  {
    v6 = [(BSServiceConnection *)self->_connection remoteTarget];
    [v6 setObservingHomeScreenLayout:MEMORY[0x1E695E110]];
  }
}

- (id)iconTintColor
{
  v2 = [(SBSHomeScreenService *)self homeScreenIconStyleConfiguration];
  v3 = v2;
  if (v2 && [v2 updatedConfigurationType] == 2)
  {
    v4 = [v3 tintColor];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setIconTintColor:(id)a3
{
  v4 = a3;
  v6 = [(SBSHomeScreenService *)self homeScreenIconStyleConfiguration];
  v5 = -[SBSHomeScreenIconStyleConfiguration initWithConfigurationType:variant:tintColor:]([SBSHomeScreenIconStyleConfiguration alloc], "initWithConfigurationType:variant:tintColor:", 2, [v6 variant], v4);

  [(SBSHomeScreenService *)self setHomeScreenIconStyleConfiguration:v5];
}

- (void)setHomeScreenIconStyleConfiguration:(id)a3
{
  v4 = a3;
  v5 = [(BSServiceConnection *)self->_connection remoteTarget];
  v6 = v5;
  if (v5)
  {
    [v5 setHomeScreenIconStyleConfiguration:v4];
  }

  else
  {
    v7 = SBLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [SBSHomeScreenService setHomeScreenIconStyleConfiguration:];
    }
  }
}

- (void)setHomeScreenIconStyleConfiguration:(id)a3 wallpaperDimmed:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(BSServiceConnection *)self->_connection remoteTarget];
  if (v7)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:v4];
    [v7 setHomeScreenIconStyleConfiguration:v6 wallpaperDimmed:v8];
  }

  else
  {
    v8 = SBLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [SBSHomeScreenService setHomeScreenIconStyleConfiguration:wallpaperDimmed:];
    }
  }
}

- (id)addHomeScreenIconStyleObserver:(id)a3
{
  v4 = a3;
  v5 = [(BSServiceConnection *)self->_connection remoteTarget];
  if (!v5)
  {
    v6 = SBLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SBSHomeScreenService addHomeScreenIconStyleObserver:];
    }
  }

  v7 = [[SBSHomeScreenServiceIconStyleObservationAssertion alloc] initWithObserver:v4 service:self];
  os_unfair_lock_lock(&self->_lock);
  iconStyleObservers = self->_iconStyleObservers;
  if (!iconStyleObservers)
  {
    v9 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v10 = self->_iconStyleObservers;
    self->_iconStyleObservers = v9;

    iconStyleObservers = self->_iconStyleObservers;
  }

  [(NSHashTable *)iconStyleObservers addObject:v7];
  v11 = [(SBSHomeScreenService *)self isCachedIconStyleConfigurationValid];
  v12 = [(SBSHomeScreenService *)self cachedIconStyleConfiguration];
  os_unfair_lock_unlock(&self->_lock);
  [v5 setObservingIconTintColor:MEMORY[0x1E695E118]];
  if (v11)
  {
    [v4 homeScreenService:self homeScreenIconStyleConfigurationDidChange:v12];
  }

  return v7;
}

- (void)removeIconStyleObservationAssertion:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(NSHashTable *)self->_iconStyleObservers removeObject:v4];

  if ([(NSHashTable *)self->_iconStyleObservers count])
  {

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    [(SBSHomeScreenService *)self setCachedIconStyleConfigurationValid:0];
    os_unfair_lock_unlock(&self->_lock);
    v5 = [(BSServiceConnection *)self->_connection remoteTarget];
    [v5 setObservingIconTintColor:MEMORY[0x1E695E110]];
  }
}

- (id)silhouetteLayoutForPageAtIndex:(unint64_t)a3
{
  v4 = [(BSServiceConnection *)self->_connection remoteTarget];
  if (v4)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
    v6 = [v4 silhouetteLayoutForPageAtIndex:v5];
  }

  else
  {
    v7 = SBLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [SBSHomeScreenService silhouetteLayoutForPageAtIndex:];
    }

    v6 = 0;
  }

  return v6;
}

- (id)addIconBadgeValueObserver:(id)a3
{
  connection = self->_connection;
  v5 = a3;
  v6 = [(BSServiceConnection *)connection remoteTarget];
  if (!v6)
  {
    v7 = SBLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [SBSHomeScreenService addIconBadgeValueObserver:];
    }
  }

  v8 = [[SBSHomeScreenServiceIconBadgeValueObservationAssertion alloc] initWithObserver:v5 service:self];

  os_unfair_lock_lock(&self->_lock);
  iconBadgeValueObservers = self->_iconBadgeValueObservers;
  if (!iconBadgeValueObservers)
  {
    v10 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v11 = self->_iconBadgeValueObservers;
    self->_iconBadgeValueObservers = v10;

    iconBadgeValueObservers = self->_iconBadgeValueObservers;
  }

  [(NSHashTable *)iconBadgeValueObservers addObject:v8];
  os_unfair_lock_unlock(&self->_lock);
  [v6 setObservingIconBadgeValue:MEMORY[0x1E695E118]];

  return v8;
}

- (void)removeIconBadgeValueObservationAssertion:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(NSHashTable *)self->_iconBadgeValueObservers removeObject:v4];

  v5 = [(NSHashTable *)self->_iconBadgeValueObservers count];
  os_unfair_lock_unlock(&self->_lock);
  if (!v5)
  {
    v6 = [(BSServiceConnection *)self->_connection remoteTarget];
    [v6 setObservingIconBadgeValue:MEMORY[0x1E695E110]];
  }
}

- (id)badgeValueForIconWithApplicationBundleIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(BSServiceConnection *)self->_connection remoteTarget];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 badgeValueForIconWithApplicationBundleIdentifier:v4];
    v8 = [v7 numberOrString];
  }

  else
  {
    v9 = SBLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [SBSHomeScreenService badgeValueForIconWithApplicationBundleIdentifier:];
    }

    v8 = 0;
  }

  return v8;
}

- (void)badgeValueForIconWithApplicationBundleIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(BSServiceConnection *)self->_connection remoteTarget];
  if (v8)
  {
    goto LABEL_2;
  }

  v9 = SBLogCommon();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [SBSHomeScreenService badgeValueForIconWithApplicationBundleIdentifier:];
  }

  if (!v7)
  {
LABEL_2:
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __91__SBSHomeScreenService_badgeValueForIconWithApplicationBundleIdentifier_completionHandler___block_invoke;
    v10[3] = &unk_1E735FEE8;
    v11 = v7;
    [v8 badgeValueForIconWithApplicationBundleIdentifier:v6 completionHandler:v10];
  }

  else
  {
    (*(v7 + 2))(v7, 0);
  }
}

void __91__SBSHomeScreenService_badgeValueForIconWithApplicationBundleIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 numberOrString];
  (*(*(a1 + 32) + 16))();
}

- (void)clearAllOverflowSlotCounts
{
  v2 = [(BSServiceConnection *)self->_connection remoteTarget];
  if (!v2)
  {
    v3 = SBLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [SBSHomeScreenService clearAllOverflowSlotCounts];
    }
  }

  [v2 clearAllOverflowSlotCounts];
}

- (NSArray)overflowSlotCounts
{
  v2 = [(BSServiceConnection *)self->_connection remoteTarget];
  if (!v2)
  {
    v3 = SBLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [SBSHomeScreenService overflowSlotCounts];
    }
  }

  v4 = [v2 overflowSlotCounts];
  v5 = [v4 array];

  return v5;
}

- (void)setupHomeScreenForWidgetScrollPerformanceTest
{
  v2 = [(BSServiceConnection *)self->_connection remoteTarget];
  if (!v2)
  {
    v3 = SBLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [SBSHomeScreenService setupHomeScreenForWidgetScrollPerformanceTest];
    }
  }

  [v2 setupHomeScreenForWidgetScrollPerformanceTest];
}

- (void)runWidgetDiscoverabilityTest
{
  v2 = [(BSServiceConnection *)self->_connection remoteTarget];
  if (!v2)
  {
    v3 = SBLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [SBSHomeScreenService runWidgetDiscoverabilityTest];
    }
  }

  [v2 runWidgetDiscoverabilityTest];
}

- (void)swapApplicationIconsInProminentPositionsWithBundleIdentifier:(id)a3 withApplicationIconsWithWithBundleIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(BSServiceConnection *)self->_connection remoteTarget];
  if (!v8)
  {
    v9 = SBLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [SBSHomeScreenService swapApplicationIconsInProminentPositionsWithBundleIdentifier:withApplicationIconsWithWithBundleIdentifier:];
    }
  }

  [v8 swapApplicationIconsInProminentPositionsWithBundleIdentifier:v6 withApplicationIconsWithWithBundleIdentifier:v7];
}

- (BOOL)canSwapApplicationIconsInProminentPositionsWithBundleIdentifier:(id)a3 withApplicationIconsWithWithBundleIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(BSServiceConnection *)self->_connection remoteTarget];
  if (!v8)
  {
    v9 = SBLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [SBSHomeScreenService canSwapApplicationIconsInProminentPositionsWithBundleIdentifier:withApplicationIconsWithWithBundleIdentifier:];
    }
  }

  v10 = [v8 canSwapApplicationIconsInProminentPositionsWithBundleIdentifier:v6 withApplicationIconsWithWithBundleIdentifier:v7];

  return v10;
}

- (id)osMigrationHomeScreenLayout
{
  v2 = [(BSServiceConnection *)self->_connection remoteTarget];
  if (!v2)
  {
    v3 = SBLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [SBSHomeScreenService osMigrationHomeScreenLayout];
    }
  }

  v4 = [v2 osMigrationHomeScreenLayout];

  return v4;
}

- (id)osMigrationDefaultHomeScreenLayout
{
  v2 = [(BSServiceConnection *)self->_connection remoteTarget];
  if (!v2)
  {
    v3 = SBLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [SBSHomeScreenService osMigrationDefaultHomeScreenLayout];
    }
  }

  v4 = [v2 osMigrationDefaultHomeScreenLayout];

  return v4;
}

- (void)importOSMigrationHomeScreenLayout:(id)a3
{
  v4 = a3;
  v5 = [(BSServiceConnection *)self->_connection remoteTarget];
  if (!v5)
  {
    v6 = SBLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SBSHomeScreenService importOSMigrationHomeScreenLayout:];
    }
  }

  [v5 importOSMigrationHomeScreenLayout:v4];
}

- (void)precacheIconLayersOnFirstPageWithAppearanceDescriptions:(id)a3
{
  connection = self->_connection;
  v4 = a3;
  v5 = [(BSServiceConnection *)connection remoteTarget];
  if (!v5)
  {
    v6 = SBLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SBSHomeScreenService precacheIconLayersOnFirstPageWithAppearanceDescriptions:];
    }
  }

  v7 = [[SBSHomeScreenServiceArrayOfStrings alloc] initWithArray:v4];

  [v5 precacheIconLayersOnFirstPageWithAppearanceDescriptions:v7];
}

- (void)installedWebClipsDidChange
{
  v20 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSHashTable *)self->_installedWebClipObservers allObjects];
  os_unfair_lock_unlock(&self->_lock);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = [v9 observer];
        v11 = v10;
        if (v10)
        {
          [v10 installedWebClipsDidChange];
        }

        else
        {
          v12 = SBLogCommon();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            [(SBSHomeScreenService *)&v13 installedWebClipsDidChange];
          }

          [(SBSHomeScreenService *)self removeInstalledWebClipsObservationAssertion:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }
}

- (void)homeScreenLayoutAvailabilityDidChange:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSHashTable *)self->_homeScreenLayoutAvailableObservers allObjects];
  -[SBSHomeScreenService setCachedHomeScreenLayoutAvailable:](self, "setCachedHomeScreenLayoutAvailable:", [v4 BOOLValue]);
  [(SBSHomeScreenService *)self setCachedHomeScreenLayoutAvailableValid:1];
  os_unfair_lock_unlock(&self->_lock);
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        v12 = [v11 observer];
        v13 = v12;
        if (v12)
        {
          [v12 homeScreenServiceLayoutAvailabilityDidChange:self];
        }

        else
        {
          v14 = SBLogCommon();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            [(SBSHomeScreenService *)&v15 homeScreenLayoutAvailabilityDidChange:v16];
          }

          [(SBSHomeScreenService *)self removeHomeScreenLayoutAvailabilityObservationAssertion:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }
}

- (void)applicationIconInfoChangedForBundleIdentifiers:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSHashTable *)self->_iconBadgeValueObservers allObjects];
  os_unfair_lock_unlock(&self->_lock);
  v6 = objc_alloc(MEMORY[0x1E695DFD8]);
  v19 = v4;
  v7 = [v4 array];
  v8 = [v6 initWithArray:v7];

  v9 = SBLogCommon();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [SBSHomeScreenService applicationIconInfoChangedForBundleIdentifiers:];
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v10 = v5;
  v11 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v23;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v23 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v22 + 1) + 8 * i);
        v16 = [v15 observer];
        v17 = v16;
        if (v16)
        {
          [v16 homeScreenService:self applicationIconInfoChangedForBundleIdentifiers:v8];
        }

        else
        {
          v18 = SBLogCommon();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            [(SBSHomeScreenService *)&v20 applicationIconInfoChangedForBundleIdentifiers:v21];
          }

          [(SBSHomeScreenService *)self removeIconBadgeValueObservationAssertion:v15];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v12);
  }
}

- (void)homeScreenLayoutDidChange
{
  v20 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSHashTable *)self->_homeScreenLayoutObservers allObjects];
  os_unfair_lock_unlock(&self->_lock);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = [v9 observer];
        v11 = v10;
        if (v10)
        {
          [v10 homeScreenServiceLayoutDidChange:self];
        }

        else
        {
          v12 = SBLogCommon();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            [(SBSHomeScreenService *)&v13 homeScreenLayoutDidChange];
          }

          [(SBSHomeScreenService *)self removeHomeScreenLayoutObservationAssertion:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }
}

- (void)homeScreenIconStyleConfigurationDidChange:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSHashTable *)self->_iconStyleObservers allObjects];
  [(SBSHomeScreenService *)self setCachedIconStyleConfiguration:v4];
  [(SBSHomeScreenService *)self setCachedIconStyleConfigurationValid:1];
  os_unfair_lock_unlock(&self->_lock);
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        v12 = [v11 observer];
        v13 = v12;
        if (v12)
        {
          [v12 homeScreenService:self homeScreenIconStyleConfigurationDidChange:v4];
        }

        else
        {
          v14 = SBLogCommon();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            [(SBSHomeScreenService *)&v15 homeScreenIconStyleConfigurationDidChange:v16];
          }

          [(SBSHomeScreenService *)self removeIconStyleObservationAssertion:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }
}

void __60__SBSHomeScreenService_resetHomeScreenLayoutWithCompletion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __60__SBSHomeScreenService_resetCategoriesLayoutWithCompletion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __84__SBSHomeScreenService_forbidApplicationBundleIdentifierFromLibrary_withCompletion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __86__SBSHomeScreenService_unforbidApplicationBundleIdentifierFromLibrary_withCompletion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __64__SBSHomeScreenService_runFloatingDockStressTestWithCompletion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __83__SBSHomeScreenService_requestSuggestedApplicationWithBundleIdentifier_completion___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)addFileStackWithURL:(const char *)a1 .cold.1(const char *a1)
{
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_1(&dword_19169D000, v2, v3, "SBSHomeScreenService: failed %{public}@ request (no url specified).", v4, v5, v6, v7, v8);
}

- (void)applicationIconInfoChangedForBundleIdentifiers:.cold.1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end