@interface SBSHomeScreenService
- (BOOL)addsNewIconsToHomeScreen;
- (BOOL)canSwapApplicationIconsInProminentPositionsWithBundleIdentifier:(id)identifier withApplicationIconsWithWithBundleIdentifier:(id)bundleIdentifier;
- (BOOL)debugContinuityWithBadgeType:(id)type deviceTypeIdentifier:(id)identifier;
- (BOOL)hasConfiguredFilesStackWithURL:(id)l;
- (BOOL)hasWidgetWithBundleIdentifier:(id)identifier;
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
- (id)addHomeScreenApplicationsObserver:(id)observer;
- (id)addHomeScreenIconStyleObserver:(id)observer;
- (id)addHomeScreenLayoutAvailabilityObserver:(id)observer;
- (id)addHomeScreenLayoutObserver:(id)observer;
- (id)addIconBadgeValueObserver:(id)observer;
- (id)addInstalledWebClipsObserver:(id)observer;
- (id)badgeValueForIconWithApplicationBundleIdentifier:(id)identifier;
- (id)configureCategoryMapProviderToUseCategoryMapAtURL:(id)l;
- (id)folderPathToIconWithBundleIdentifier:(id)identifier;
- (id)iconTintColor;
- (id)osMigrationDefaultHomeScreenLayout;
- (id)osMigrationHomeScreenLayout;
- (id)silhouetteLayoutForPageAtIndex:(unint64_t)index;
- (void)addApplicationIconToHomeScreenWithBundleIdentifier:(id)identifier;
- (void)addApplicationIconToHomeScreenWithBundleIdentifier:(id)identifier inPage:(unint64_t)page atPositionDescription:(id)description;
- (void)addDebugIconWithSizeClassDescription:(id)description inPage:(unint64_t)page atPositionDescription:(id)positionDescription;
- (void)addEmptyPage;
- (void)addFileStackWithURL:(id)l;
- (void)addPageOfApplicationIconsWithBundleIdentifier:(id)identifier;
- (void)addSuggestedPageWithPageType:(id)type focusModeIdentifier:(id)identifier;
- (void)addWidgetToTodayViewWithBundleIdentifier:(id)identifier;
- (void)applicationIconInfoChangedForBundleIdentifiers:(id)identifiers;
- (void)badgeValueForIconWithApplicationBundleIdentifier:(id)identifier completionHandler:(id)handler;
- (void)changeDisplayedDateOffsetOverride:(double)override;
- (void)changeDisplayedDateOverride:(id)override;
- (void)changeDisplayedDateWithAutoupdatingSecondsOverride:(id)override;
- (void)clearAllOverflowSlotCounts;
- (void)clearNewlyInstalledAndRecentlyUpdatedAppIndicators;
- (void)clearTodayViewLayout;
- (void)configureDeweyEachAppHasItsOwnCategory;
- (void)configureDeweyOneCategoryWithAllApps;
- (void)configureLibraryWithCategoryLimit:(int64_t)limit;
- (void)dealloc;
- (void)deleteAllWebClips;
- (void)dismissAppLibraryWithCompletion:(id)completion;
- (void)forbidApplicationBundleIdentifierFromLibrary:(id)library withCompletion:(id)completion;
- (void)homeScreenApplicationsDidChange;
- (void)homeScreenIconStyleConfigurationDidChange:(id)change;
- (void)homeScreenLayoutAvailabilityDidChange:(id)change;
- (void)homeScreenLayoutDidChange;
- (void)ignoreAllApps;
- (void)importOSMigrationHomeScreenLayout:(id)layout;
- (void)insertEmptyPageAtIndex:(unint64_t)index;
- (void)installedWebClipsDidChange;
- (void)organizeAllIconsAcrossPagesWithPageCount:(unint64_t)count;
- (void)organizeAllIconsIntoFoldersWithPageCount:(unint64_t)count;
- (void)overrideBadgeValue:(id)value forBundleIdentifier:(id)identifier;
- (void)precacheIconLayersOnFirstPageWithAppearanceDescriptions:(id)descriptions;
- (void)presentAppLibraryAnimated:(BOOL)animated completion:(id)completion;
- (void)presentAppLibraryCategoryPodForCategoryIdentifier:(id)identifier completion:(id)completion;
- (void)randomizeAllIconsAcrossPagesWithPageCount:(unint64_t)count;
- (void)reloadHomeScreenLayout;
- (void)removeAllWidgets;
- (void)removeFileStackWithURL:(id)l;
- (void)removeHomeScreenApplicationsObservationAssertion:(id)assertion;
- (void)removeHomeScreenLayoutAvailabilityObservationAssertion:(id)assertion;
- (void)removeHomeScreenLayoutObservationAssertion:(id)assertion;
- (void)removeIconBadgeValueObservationAssertion:(id)assertion;
- (void)removeIconStyleObservationAssertion:(id)assertion;
- (void)removeInstalledWebClipsObservationAssertion:(id)assertion;
- (void)removeWidgetsFromHomeScreen;
- (void)requestAppLibraryUpdateSuggestionsAndRecentsPodWithReason:(id)reason completionHandler:(id)handler;
- (void)requestAppLibraryUpdateWithReason:(id)reason completionHandler:(id)handler;
- (void)requestSuggestedApplicationWithBundleIdentifier:(id)identifier completion:(id)completion;
- (void)resetCategoriesLayoutWithCompletion:(id)completion;
- (void)resetHomeScreenLayoutWithCompletion:(id)completion;
- (void)resetTodayViewLayout;
- (void)runDownloadingIconTest;
- (void)runFloatingDockStressTestWithCompletion:(id)completion;
- (void)runRemoveAndRestoreIconTest;
- (void)runWidgetDiscoverabilityTest;
- (void)setAddsNewIconsToHomeScreen:(BOOL)screen;
- (void)setHomeScreenIconStyleConfiguration:(id)configuration;
- (void)setHomeScreenIconStyleConfiguration:(id)configuration wallpaperDimmed:(BOOL)dimmed;
- (void)setIconListsHidden:(id)hidden;
- (void)setIconTintColor:(id)color;
- (void)setLargeIconLayoutEnabled:(BOOL)enabled;
- (void)setLargeIconSizeEnabled:(BOOL)enabled;
- (void)setShowsBadgesInAppLibrary:(BOOL)library;
- (void)setShowsHomeScreenSearchAffordance:(BOOL)affordance;
- (void)setupHomeScreenForWidgetScrollPerformanceTest;
- (void)swapApplicationIconsInProminentPositionsWithBundleIdentifier:(id)identifier withApplicationIconsWithWithBundleIdentifier:(id)bundleIdentifier;
- (void)unforbidApplicationBundleIdentifierFromLibrary:(id)library withCompletion:(id)completion;
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
    defaultShellMachName = [MEMORY[0x1E698F498] defaultShellMachName];
    v8 = +[SBSHomeScreenServiceSpecification identifier];
    v9 = [v6 endpointForMachName:defaultShellMachName service:v8 instance:0];

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
  remoteTarget = [(BSServiceConnection *)self->_connection remoteTarget];
  if (!remoteTarget)
  {
    v3 = SBLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [SBSHomeScreenService allHomeScreenApplicationBundleIdentifiers];
    }
  }

  allHomeScreenApplicationBundleIdentifiers = [remoteTarget allHomeScreenApplicationBundleIdentifiers];
  array = [allHomeScreenApplicationBundleIdentifiers array];

  return array;
}

- (NSArray)allHomeScreenApplicationPlaceholderBundleIdentifiers
{
  remoteTarget = [(BSServiceConnection *)self->_connection remoteTarget];
  if (!remoteTarget)
  {
    v3 = SBLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [SBSHomeScreenService allHomeScreenApplicationPlaceholderBundleIdentifiers];
    }
  }

  allHomeScreenApplicationPlaceholderBundleIdentifiers = [remoteTarget allHomeScreenApplicationPlaceholderBundleIdentifiers];
  array = [allHomeScreenApplicationPlaceholderBundleIdentifiers array];

  return array;
}

- (SBSHomeScreenIconStyleConfiguration)homeScreenIconStyleConfiguration
{
  os_unfair_lock_lock(&self->_lock);
  isCachedIconStyleConfigurationValid = [(SBSHomeScreenService *)self isCachedIconStyleConfigurationValid];
  cachedIconStyleConfiguration = [(SBSHomeScreenService *)self cachedIconStyleConfiguration];
  os_unfair_lock_unlock(&self->_lock);
  if (isCachedIconStyleConfigurationValid)
  {
    homeScreenIconStyleConfiguration = cachedIconStyleConfiguration;
  }

  else
  {
    remoteTarget = [(BSServiceConnection *)self->_connection remoteTarget];
    v7 = remoteTarget;
    if (remoteTarget)
    {
      homeScreenIconStyleConfiguration = [remoteTarget homeScreenIconStyleConfiguration];
    }

    else
    {
      v8 = SBLogCommon();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [SBSHomeScreenService homeScreenIconStyleConfiguration];
      }

      homeScreenIconStyleConfiguration = 0;
    }
  }

  return homeScreenIconStyleConfiguration;
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

- (void)resetHomeScreenLayoutWithCompletion:(id)completion
{
  completionCopy = completion;
  remoteTarget = [(BSServiceConnection *)self->_connection remoteTarget];
  if (remoteTarget)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __60__SBSHomeScreenService_resetHomeScreenLayoutWithCompletion___block_invoke;
    v11[3] = &unk_1E735F0F8;
    v6 = &v12;
    v12 = completionCopy;
    [remoteTarget resetHomeScreenLayoutWithCompletion:v11];
LABEL_7:

    goto LABEL_8;
  }

  v7 = SBLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [SBSHomeScreenService resetHomeScreenLayoutWithCompletion:];
  }

  if (completionCopy)
  {
    connectionQueue = self->_connectionQueue;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __60__SBSHomeScreenService_resetHomeScreenLayoutWithCompletion___block_invoke_15;
    v9[3] = &unk_1E735F148;
    v6 = &v10;
    v10 = completionCopy;
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

- (void)resetCategoriesLayoutWithCompletion:(id)completion
{
  completionCopy = completion;
  remoteTarget = [(BSServiceConnection *)self->_connection remoteTarget];
  if (remoteTarget)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __60__SBSHomeScreenService_resetCategoriesLayoutWithCompletion___block_invoke;
    v11[3] = &unk_1E735F0F8;
    v6 = &v12;
    v12 = completionCopy;
    [remoteTarget resetCategoriesLayoutWithCompletion:v11];
LABEL_7:

    goto LABEL_8;
  }

  v7 = SBLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [SBSHomeScreenService resetCategoriesLayoutWithCompletion:];
  }

  if (completionCopy)
  {
    connectionQueue = self->_connectionQueue;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __60__SBSHomeScreenService_resetCategoriesLayoutWithCompletion___block_invoke_17;
    v9[3] = &unk_1E735F148;
    v6 = &v10;
    v10 = completionCopy;
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

- (void)forbidApplicationBundleIdentifierFromLibrary:(id)library withCompletion:(id)completion
{
  libraryCopy = library;
  completionCopy = completion;
  remoteTarget = [(BSServiceConnection *)self->_connection remoteTarget];
  if (remoteTarget)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __84__SBSHomeScreenService_forbidApplicationBundleIdentifierFromLibrary_withCompletion___block_invoke;
    v15[3] = &unk_1E735F5A8;
    v9 = &v16;
    v10 = libraryCopy;
    v16 = v10;
    v17 = completionCopy;
    [remoteTarget forbidApplicationBundleIdentifierFromLibrary:v10 withCompletion:v15];

LABEL_7:
    goto LABEL_8;
  }

  v11 = SBLogCommon();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    [SBSHomeScreenService forbidApplicationBundleIdentifierFromLibrary:withCompletion:];
  }

  if (completionCopy)
  {
    connectionQueue = self->_connectionQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __84__SBSHomeScreenService_forbidApplicationBundleIdentifierFromLibrary_withCompletion___block_invoke_18;
    block[3] = &unk_1E735F148;
    v9 = &v14;
    v14 = completionCopy;
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

- (void)unforbidApplicationBundleIdentifierFromLibrary:(id)library withCompletion:(id)completion
{
  libraryCopy = library;
  completionCopy = completion;
  remoteTarget = [(BSServiceConnection *)self->_connection remoteTarget];
  if (remoteTarget)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __86__SBSHomeScreenService_unforbidApplicationBundleIdentifierFromLibrary_withCompletion___block_invoke;
    v15[3] = &unk_1E735F5A8;
    v9 = &v16;
    v10 = libraryCopy;
    v16 = v10;
    v17 = completionCopy;
    [remoteTarget unforbidApplicationBundleIdentifierFromLibrary:v10 withCompletion:v15];

LABEL_7:
    goto LABEL_8;
  }

  v11 = SBLogCommon();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    [SBSHomeScreenService unforbidApplicationBundleIdentifierFromLibrary:withCompletion:];
  }

  if (completionCopy)
  {
    connectionQueue = self->_connectionQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __86__SBSHomeScreenService_unforbidApplicationBundleIdentifierFromLibrary_withCompletion___block_invoke_19;
    block[3] = &unk_1E735F148;
    v9 = &v14;
    v14 = completionCopy;
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

- (void)runFloatingDockStressTestWithCompletion:(id)completion
{
  completionCopy = completion;
  remoteTarget = [(BSServiceConnection *)self->_connection remoteTarget];
  if (remoteTarget)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __64__SBSHomeScreenService_runFloatingDockStressTestWithCompletion___block_invoke;
    v11[3] = &unk_1E735F0F8;
    v6 = &v12;
    v12 = completionCopy;
    [remoteTarget runFloatingDockStressTestWithCompletion:v11];
LABEL_7:

    goto LABEL_8;
  }

  v7 = SBLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [SBSHomeScreenService runFloatingDockStressTestWithCompletion:];
  }

  if (completionCopy)
  {
    connectionQueue = self->_connectionQueue;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __64__SBSHomeScreenService_runFloatingDockStressTestWithCompletion___block_invoke_20;
    v9[3] = &unk_1E735F148;
    v6 = &v10;
    v10 = completionCopy;
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

- (void)requestSuggestedApplicationWithBundleIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  v8 = objc_alloc_init(MEMORY[0x1E698E6C0]);
  if ([v8 isUsable])
  {
    v9 = [objc_alloc(MEMORY[0x1E698E6C8]) initFromReceiveRight:v8];
    remoteTarget = [(BSServiceConnection *)self->_connection remoteTarget];
    if (remoteTarget)
    {
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __83__SBSHomeScreenService_requestSuggestedApplicationWithBundleIdentifier_completion___block_invoke_2;
      v18[3] = &unk_1E735FEC0;
      v11 = &v20;
      v20 = completionCopy;
      v19 = v8;
      [remoteTarget requestSuggestedApplicationWithBundleIdentifier:identifierCopy assertionPort:v9 completion:v18];
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
      v17 = completionCopy;
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
    v22 = completionCopy;
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

- (id)folderPathToIconWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  remoteTarget = [(BSServiceConnection *)self->_connection remoteTarget];
  if (!remoteTarget)
  {
    v6 = SBLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SBSHomeScreenService folderPathToIconWithBundleIdentifier:];
    }
  }

  v7 = [remoteTarget folderPathToIconWithBundleIdentifier:identifierCopy];
  array = [v7 array];

  return array;
}

- (BOOL)debugContinuityWithBadgeType:(id)type deviceTypeIdentifier:(id)identifier
{
  typeCopy = type;
  identifierCopy = identifier;
  remoteTarget = [(BSServiceConnection *)self->_connection remoteTarget];
  if (!remoteTarget)
  {
    v9 = SBLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [SBSHomeScreenService debugContinuityWithBadgeType:deviceTypeIdentifier:];
    }
  }

  v10 = [remoteTarget debugContinuityWithBadgeType:typeCopy deviceTypeIdentifier:identifierCopy];

  return v10;
}

- (void)runDownloadingIconTest
{
  remoteTarget = [(BSServiceConnection *)self->_connection remoteTarget];
  if (!remoteTarget)
  {
    v3 = SBLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [SBSHomeScreenService runDownloadingIconTest];
    }
  }

  [remoteTarget runDownloadingIconTest];
}

- (void)configureDeweyEachAppHasItsOwnCategory
{
  remoteTarget = [(BSServiceConnection *)self->_connection remoteTarget];
  if (!remoteTarget)
  {
    v3 = SBLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [SBSHomeScreenService configureDeweyEachAppHasItsOwnCategory];
    }
  }

  [remoteTarget configureDeweyEachAppHasItsOwnCategory];
}

- (void)configureDeweyOneCategoryWithAllApps
{
  remoteTarget = [(BSServiceConnection *)self->_connection remoteTarget];
  if (!remoteTarget)
  {
    v3 = SBLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [SBSHomeScreenService configureDeweyOneCategoryWithAllApps];
    }
  }

  [remoteTarget configureDeweyOneCategoryWithAllApps];
}

- (void)configureLibraryWithCategoryLimit:(int64_t)limit
{
  remoteTarget = [(BSServiceConnection *)self->_connection remoteTarget];
  if (!remoteTarget)
  {
    v5 = SBLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [SBSHomeScreenService configureLibraryWithCategoryLimit:];
    }
  }

  v6 = [MEMORY[0x1E696AD98] numberWithInteger:limit];
  [remoteTarget configureLibraryWithCategoryLimit:v6];
}

- (id)configureCategoryMapProviderToUseCategoryMapAtURL:(id)l
{
  lCopy = l;
  remoteTarget = [(BSServiceConnection *)self->_connection remoteTarget];
  if (!remoteTarget)
  {
    v6 = SBLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SBSHomeScreenService configureCategoryMapProviderToUseCategoryMapAtURL:];
    }
  }

  v7 = [remoteTarget configureCategoryMapProviderToUseCategoryMapAtURL:lCopy];

  return v7;
}

- (void)runRemoveAndRestoreIconTest
{
  remoteTarget = [(BSServiceConnection *)self->_connection remoteTarget];
  if (!remoteTarget)
  {
    v3 = SBLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [SBSHomeScreenService runRemoveAndRestoreIconTest];
    }
  }

  [remoteTarget runRemoveAndRestoreIconTest];
}

- (void)addApplicationIconToHomeScreenWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  remoteTarget = [(BSServiceConnection *)self->_connection remoteTarget];
  if (!remoteTarget)
  {
    v6 = SBLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SBSHomeScreenService addApplicationIconToHomeScreenWithBundleIdentifier:];
    }
  }

  [remoteTarget addApplicationIconToHomeScreenWithBundleIdentifier:identifierCopy];
}

- (void)addApplicationIconToHomeScreenWithBundleIdentifier:(id)identifier inPage:(unint64_t)page atPositionDescription:(id)description
{
  connection = self->_connection;
  descriptionCopy = description;
  identifierCopy = identifier;
  remoteTarget = [(BSServiceConnection *)connection remoteTarget];
  if (!remoteTarget)
  {
    v11 = SBLogCommon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [SBSHomeScreenService addApplicationIconToHomeScreenWithBundleIdentifier:];
    }
  }

  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:page];
  [remoteTarget addApplicationIconToHomeScreenWithBundleIdentifier:identifierCopy inPage:v12 atPositionDescription:descriptionCopy];
}

- (void)addPageOfApplicationIconsWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  remoteTarget = [(BSServiceConnection *)self->_connection remoteTarget];
  if (!remoteTarget)
  {
    v6 = SBLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SBSHomeScreenService addApplicationIconToHomeScreenWithBundleIdentifier:];
    }
  }

  [remoteTarget addPageOfApplicationIconsWithBundleIdentifier:identifierCopy];
}

- (void)addWidgetToTodayViewWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  remoteTarget = [(BSServiceConnection *)self->_connection remoteTarget];
  if (!remoteTarget)
  {
    v6 = SBLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SBSHomeScreenService addWidgetToTodayViewWithBundleIdentifier:];
    }
  }

  [remoteTarget addWidgetToTodayViewWithBundleIdentifier:identifierCopy];
}

- (BOOL)isLargeIconLayoutEnabled
{
  remoteTarget = [(BSServiceConnection *)self->_connection remoteTarget];
  if (!remoteTarget)
  {
    v3 = SBLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [SBSHomeScreenService isLargeIconLayoutEnabled];
    }
  }

  largeIconLayoutEnabledValue = [remoteTarget largeIconLayoutEnabledValue];
  bOOLValue = [largeIconLayoutEnabledValue BOOLValue];

  return bOOLValue;
}

- (void)setLargeIconLayoutEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  remoteTarget = [(BSServiceConnection *)self->_connection remoteTarget];
  if (!remoteTarget)
  {
    v5 = SBLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [SBSHomeScreenService isLargeIconLayoutEnabled];
    }
  }

  v6 = [MEMORY[0x1E696AD98] numberWithBool:enabledCopy];
  [remoteTarget setLargeIconLayoutEnabledValue:v6];
}

- (BOOL)isLargeIconSizeEnabled
{
  remoteTarget = [(BSServiceConnection *)self->_connection remoteTarget];
  if (!remoteTarget)
  {
    v3 = SBLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [SBSHomeScreenService isLargeIconLayoutEnabled];
    }
  }

  largeIconSizeEnabledValue = [remoteTarget largeIconSizeEnabledValue];
  bOOLValue = [largeIconSizeEnabledValue BOOLValue];

  return bOOLValue;
}

- (void)setLargeIconSizeEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  remoteTarget = [(BSServiceConnection *)self->_connection remoteTarget];
  if (!remoteTarget)
  {
    v5 = SBLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [SBSHomeScreenService isLargeIconLayoutEnabled];
    }
  }

  v6 = [MEMORY[0x1E696AD98] numberWithBool:enabledCopy];
  [remoteTarget setLargeIconSizeEnabledValue:v6];
}

- (BOOL)addsNewIconsToHomeScreen
{
  remoteTarget = [(BSServiceConnection *)self->_connection remoteTarget];
  if (!remoteTarget)
  {
    v3 = SBLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [SBSHomeScreenService addsNewIconsToHomeScreen];
    }
  }

  addsNewIconsToHomeScreenValue = [remoteTarget addsNewIconsToHomeScreenValue];
  bOOLValue = [addsNewIconsToHomeScreenValue BOOLValue];

  return bOOLValue;
}

- (void)setAddsNewIconsToHomeScreen:(BOOL)screen
{
  screenCopy = screen;
  remoteTarget = [(BSServiceConnection *)self->_connection remoteTarget];
  if (!remoteTarget)
  {
    v5 = SBLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [SBSHomeScreenService setAddsNewIconsToHomeScreen:];
    }
  }

  v6 = [MEMORY[0x1E696AD98] numberWithBool:screenCopy];
  [remoteTarget setAddsNewIconsToHomeScreenValue:v6];
}

- (void)setIconListsHidden:(id)hidden
{
  connection = self->_connection;
  hiddenCopy = hidden;
  remoteTarget = [(BSServiceConnection *)connection remoteTarget];
  if (!remoteTarget)
  {
    v6 = SBLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SBSHomeScreenService setIconListsHidden:];
    }
  }

  v7 = [[SBSHomeScreenServiceArrayOfStrings alloc] initWithArray:hiddenCopy];

  [remoteTarget setIconListsHidden:v7];
}

- (BOOL)showsBadgesInAppLibrary
{
  remoteTarget = [(BSServiceConnection *)self->_connection remoteTarget];
  if (!remoteTarget)
  {
    v3 = SBLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [SBSHomeScreenService showsBadgesInAppLibrary];
    }
  }

  showsBadgesInAppLibraryValue = [remoteTarget showsBadgesInAppLibraryValue];
  bOOLValue = [showsBadgesInAppLibraryValue BOOLValue];

  return bOOLValue;
}

- (void)setShowsBadgesInAppLibrary:(BOOL)library
{
  libraryCopy = library;
  remoteTarget = [(BSServiceConnection *)self->_connection remoteTarget];
  if (!remoteTarget)
  {
    v5 = SBLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [SBSHomeScreenService showsBadgesInAppLibrary];
    }
  }

  v6 = [MEMORY[0x1E696AD98] numberWithBool:libraryCopy];
  [remoteTarget setShowsBadgesInAppLibraryValue:v6];
}

- (BOOL)showsHomeScreenSearchAffordance
{
  remoteTarget = [(BSServiceConnection *)self->_connection remoteTarget];
  if (!remoteTarget)
  {
    v3 = SBLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [SBSHomeScreenService showsHomeScreenSearchAffordance];
    }
  }

  showsHomeScreenSearchAffordanceValue = [remoteTarget showsHomeScreenSearchAffordanceValue];
  bOOLValue = [showsHomeScreenSearchAffordanceValue BOOLValue];

  return bOOLValue;
}

- (void)setShowsHomeScreenSearchAffordance:(BOOL)affordance
{
  affordanceCopy = affordance;
  remoteTarget = [(BSServiceConnection *)self->_connection remoteTarget];
  if (!remoteTarget)
  {
    v5 = SBLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [SBSHomeScreenService showsHomeScreenSearchAffordance];
    }
  }

  v6 = [MEMORY[0x1E696AD98] numberWithBool:affordanceCopy];
  [remoteTarget setShowsHomeScreenSearchAffordanceValue:v6];
}

- (id)addHomeScreenApplicationsObserver:(id)observer
{
  connection = self->_connection;
  observerCopy = observer;
  remoteTarget = [(BSServiceConnection *)connection remoteTarget];
  if (!remoteTarget)
  {
    v7 = SBLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [SBSHomeScreenService addHomeScreenApplicationsObserver:];
    }
  }

  v8 = [[SBSHomeScreenServiceHomeScreenApplicationsObservationAssertion alloc] initWithObserver:observerCopy service:self];

  os_unfair_lock_lock(&self->_lock);
  homeScreenApplicationsObservers = self->_homeScreenApplicationsObservers;
  if (!homeScreenApplicationsObservers)
  {
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v11 = self->_homeScreenApplicationsObservers;
    self->_homeScreenApplicationsObservers = weakObjectsHashTable;

    homeScreenApplicationsObservers = self->_homeScreenApplicationsObservers;
  }

  [(NSHashTable *)homeScreenApplicationsObservers addObject:v8];
  os_unfair_lock_unlock(&self->_lock);
  [remoteTarget setObservingHomeScreenApplications:MEMORY[0x1E695E118]];

  return v8;
}

- (void)removeHomeScreenApplicationsObservationAssertion:(id)assertion
{
  assertionCopy = assertion;
  os_unfair_lock_lock(&self->_lock);
  [(NSHashTable *)self->_homeScreenApplicationsObservers removeObject:assertionCopy];

  v5 = [(NSHashTable *)self->_installedWebClipObservers count];
  os_unfair_lock_unlock(&self->_lock);
  if (!v5)
  {
    remoteTarget = [(BSServiceConnection *)self->_connection remoteTarget];
    [remoteTarget setObservingHomeScreenApplications:MEMORY[0x1E695E110]];
  }
}

- (void)homeScreenApplicationsDidChange
{
  v20 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  allObjects = [(NSHashTable *)self->_homeScreenApplicationsObservers allObjects];
  os_unfair_lock_unlock(&self->_lock);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = allObjects;
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
        observer = [v9 observer];
        v11 = observer;
        if (observer)
        {
          [observer homeScreenServiceHomeScreenApplicationsDidChange:self];
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
  remoteTarget = [(BSServiceConnection *)self->_connection remoteTarget];
  if (!remoteTarget)
  {
    v3 = SBLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [SBSHomeScreenService allIconLists];
    }
  }

  allIconLists = [remoteTarget allIconLists];

  return allIconLists;
}

- (BOOL)hasWidgetWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  remoteTarget = [(BSServiceConnection *)self->_connection remoteTarget];
  if (!remoteTarget)
  {
    v6 = SBLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SBSHomeScreenService hasWidgetWithBundleIdentifier:];
    }
  }

  v7 = [remoteTarget hasWidgetWithBundleIdentifier:identifierCopy];

  return v7;
}

- (void)requestAppLibraryUpdateWithReason:(id)reason completionHandler:(id)handler
{
  reasonCopy = reason;
  handlerCopy = handler;
  remoteTarget = [(BSServiceConnection *)self->_connection remoteTarget];
  v9 = remoteTarget;
  if (remoteTarget)
  {
    if (handlerCopy)
    {
      [remoteTarget requestAppLibraryUpdate:&unk_1F05B4E68 reason:reasonCopy completion:handlerCopy];
    }

    else
    {
      [remoteTarget refreshAppLibrary:&unk_1F05B4E68 reason:reasonCopy];
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

- (void)requestAppLibraryUpdateSuggestionsAndRecentsPodWithReason:(id)reason completionHandler:(id)handler
{
  reasonCopy = reason;
  handlerCopy = handler;
  remoteTarget = [(BSServiceConnection *)self->_connection remoteTarget];
  v9 = remoteTarget;
  if (remoteTarget)
  {
    if (handlerCopy)
    {
      [remoteTarget requestAppLibraryUpdate:&unk_1F05B4E80 reason:reasonCopy completion:handlerCopy];
    }

    else
    {
      [remoteTarget refreshAppLibrary:&unk_1F05B4E80 reason:reasonCopy];
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

- (void)organizeAllIconsIntoFoldersWithPageCount:(unint64_t)count
{
  remoteTarget = [(BSServiceConnection *)self->_connection remoteTarget];
  if (!remoteTarget)
  {
    v5 = SBLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [SBSHomeScreenService organizeAllIconsIntoFoldersWithPageCount:];
    }
  }

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:count];
  [remoteTarget organizeAllIconsIntoFoldersWithPageCount:v6];
}

- (void)organizeAllIconsAcrossPagesWithPageCount:(unint64_t)count
{
  remoteTarget = [(BSServiceConnection *)self->_connection remoteTarget];
  if (!remoteTarget)
  {
    v5 = SBLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [SBSHomeScreenService organizeAllIconsAcrossPagesWithPageCount:];
    }
  }

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:count];
  [remoteTarget organizeAllIconsAcrossPagesWithPageCount:v6];
}

- (void)randomizeAllIconsAcrossPagesWithPageCount:(unint64_t)count
{
  remoteTarget = [(BSServiceConnection *)self->_connection remoteTarget];
  if (!remoteTarget)
  {
    v5 = SBLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [SBSHomeScreenService randomizeAllIconsAcrossPagesWithPageCount:];
    }
  }

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:count];
  [remoteTarget randomizeAllIconsAcrossPagesWithPageCount:v6];
}

- (void)removeAllWidgets
{
  v1 = NSStringFromSelector(self);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_1(&dword_19169D000, v2, v3, "SBSHomeScreenService: failed %{public}@ request (no target).", v4, v5, v6, v7, v8);
}

- (void)removeWidgetsFromHomeScreen
{
  remoteTarget = [(BSServiceConnection *)self->_connection remoteTarget];
  if (!remoteTarget)
  {
    v4 = SBLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(SBSHomeScreenService *)a2 removeAllWidgets];
    }
  }

  [remoteTarget removeWidgetsFromHomeScreen];
}

- (void)addFileStackWithURL:(id)l
{
  lCopy = l;
  remoteTarget = [(BSServiceConnection *)self->_connection remoteTarget];
  v7 = remoteTarget;
  if (!remoteTarget)
  {
    v8 = SBLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(SBSHomeScreenService *)a2 removeAllWidgets];
    }

    goto LABEL_8;
  }

  if (!lCopy)
  {
    v8 = SBLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [SBSHomeScreenService addFileStackWithURL:a2];
    }

LABEL_8:

    goto LABEL_9;
  }

  [remoteTarget addFileStackWithURL:lCopy];
LABEL_9:
}

- (void)removeFileStackWithURL:(id)l
{
  lCopy = l;
  remoteTarget = [(BSServiceConnection *)self->_connection remoteTarget];
  v7 = remoteTarget;
  if (!remoteTarget)
  {
    v8 = SBLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(SBSHomeScreenService *)a2 removeAllWidgets];
    }

    goto LABEL_8;
  }

  if (!lCopy)
  {
    v8 = SBLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [SBSHomeScreenService addFileStackWithURL:a2];
    }

LABEL_8:

    goto LABEL_9;
  }

  [remoteTarget removeFileStackWithURL:lCopy];
LABEL_9:
}

- (BOOL)hasConfiguredFilesStackWithURL:(id)l
{
  lCopy = l;
  remoteTarget = [(BSServiceConnection *)self->_connection remoteTarget];
  v7 = remoteTarget;
  if (!remoteTarget)
  {
    v9 = SBLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(SBSHomeScreenService *)a2 removeAllWidgets];
    }

    goto LABEL_8;
  }

  if (!lCopy)
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

  v8 = [remoteTarget hasConfiguredFilesStackWithURL:lCopy];
LABEL_9:

  return v8;
}

- (void)ignoreAllApps
{
  remoteTarget = [(BSServiceConnection *)self->_connection remoteTarget];
  if (!remoteTarget)
  {
    v4 = SBLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(SBSHomeScreenService *)a2 removeAllWidgets];
    }
  }

  [remoteTarget ignoreAllApps];
}

- (void)deleteAllWebClips
{
  remoteTarget = [(BSServiceConnection *)self->_connection remoteTarget];
  if (!remoteTarget)
  {
    v4 = SBLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(SBSHomeScreenService *)a2 removeAllWidgets];
    }
  }

  [remoteTarget deleteAllWebClips];
}

- (void)changeDisplayedDateOverride:(id)override
{
  overrideCopy = override;
  remoteTarget = [(BSServiceConnection *)self->_connection remoteTarget];
  if (!remoteTarget)
  {
    v6 = SBLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SBSHomeScreenService changeDisplayedDateOverride:];
    }
  }

  [remoteTarget changeDisplayedDateOverride:overrideCopy];
}

- (void)changeDisplayedDateOffsetOverride:(double)override
{
  remoteTarget = [(BSServiceConnection *)self->_connection remoteTarget];
  if (!remoteTarget)
  {
    v5 = SBLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [SBSHomeScreenService changeDisplayedDateOffsetOverride:];
    }
  }

  v6 = [MEMORY[0x1E696AD98] numberWithDouble:override];
  [remoteTarget changeDisplayedDateOffsetOverride:v6];
}

- (void)changeDisplayedDateWithAutoupdatingSecondsOverride:(id)override
{
  overrideCopy = override;
  remoteTarget = [(BSServiceConnection *)self->_connection remoteTarget];
  if (!remoteTarget)
  {
    v6 = SBLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SBSHomeScreenService changeDisplayedDateWithAutoupdatingSecondsOverride:];
    }
  }

  [remoteTarget changeDisplayedDateWithAutoupdatingSecondsOverride:overrideCopy];
}

- (void)reloadHomeScreenLayout
{
  remoteTarget = [(BSServiceConnection *)self->_connection remoteTarget];
  if (!remoteTarget)
  {
    v3 = SBLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [SBSHomeScreenService reloadHomeScreenLayout];
    }
  }

  [remoteTarget reloadHomeScreenLayout];
}

- (void)resetTodayViewLayout
{
  remoteTarget = [(BSServiceConnection *)self->_connection remoteTarget];
  if (!remoteTarget)
  {
    v3 = SBLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [SBSHomeScreenService resetTodayViewLayout];
    }
  }

  [remoteTarget resetTodayViewLayout];
}

- (void)clearTodayViewLayout
{
  remoteTarget = [(BSServiceConnection *)self->_connection remoteTarget];
  if (!remoteTarget)
  {
    v3 = SBLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [SBSHomeScreenService clearTodayViewLayout];
    }
  }

  [remoteTarget clearTodayViewLayout];
}

- (void)overrideBadgeValue:(id)value forBundleIdentifier:(id)identifier
{
  valueCopy = value;
  identifierCopy = identifier;
  remoteTarget = [(BSServiceConnection *)self->_connection remoteTarget];
  if (!remoteTarget)
  {
    v9 = SBLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [SBSHomeScreenService overrideBadgeValue:forBundleIdentifier:];
    }
  }

  [remoteTarget overrideBadgeValue:valueCopy forBundleIdentifier:identifierCopy];
}

- (void)clearNewlyInstalledAndRecentlyUpdatedAppIndicators
{
  remoteTarget = [(BSServiceConnection *)self->_connection remoteTarget];
  if (!remoteTarget)
  {
    v3 = SBLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [SBSHomeScreenService clearNewlyInstalledAndRecentlyUpdatedAppIndicators];
    }
  }

  [remoteTarget clearNewlyInstalledAndRecentlyUpdatedAppIndicators];
}

- (void)presentAppLibraryCategoryPodForCategoryIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  remoteTarget = [(BSServiceConnection *)self->_connection remoteTarget];
  if (!remoteTarget)
  {
    v9 = SBLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [SBSHomeScreenService presentAppLibraryCategoryPodForCategoryIdentifier:completion:];
    }
  }

  [remoteTarget presentAppLibraryCategoryPodForCategoryIdentifier:identifierCopy completion:completionCopy];
}

- (void)presentAppLibraryAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  connection = self->_connection;
  completionCopy = completion;
  remoteTarget = [(BSServiceConnection *)connection remoteTarget];
  if (!remoteTarget)
  {
    v8 = SBLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [SBSHomeScreenService presentAppLibraryAnimated:completion:];
    }
  }

  v9 = [MEMORY[0x1E696AD98] numberWithBool:animatedCopy];
  [remoteTarget presentAppLibraryAnimated:v9 completion:completionCopy];
}

- (void)dismissAppLibraryWithCompletion:(id)completion
{
  completionCopy = completion;
  remoteTarget = [(BSServiceConnection *)self->_connection remoteTarget];
  if (!remoteTarget)
  {
    v6 = SBLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SBSHomeScreenService dismissAppLibraryWithCompletion:];
    }
  }

  [remoteTarget dismissAppLibraryWithCompletion:completionCopy];
}

- (void)addDebugIconWithSizeClassDescription:(id)description inPage:(unint64_t)page atPositionDescription:(id)positionDescription
{
  connection = self->_connection;
  positionDescriptionCopy = positionDescription;
  descriptionCopy = description;
  remoteTarget = [(BSServiceConnection *)connection remoteTarget];
  if (!remoteTarget)
  {
    v11 = SBLogCommon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [SBSHomeScreenService addDebugIconWithSizeClassDescription:inPage:atPositionDescription:];
    }
  }

  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:page];
  [remoteTarget addDebugIconWithSizeClassDescription:descriptionCopy inPage:v12 atPositionDescription:positionDescriptionCopy];
}

- (id)addInstalledWebClipsObserver:(id)observer
{
  connection = self->_connection;
  observerCopy = observer;
  remoteTarget = [(BSServiceConnection *)connection remoteTarget];
  if (!remoteTarget)
  {
    v7 = SBLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [SBSHomeScreenService addInstalledWebClipsObserver:];
    }
  }

  v8 = [[SBSHomeScreenServiceInstalledWebClipsObservationAssertion alloc] initWithObserver:observerCopy service:self];

  os_unfair_lock_lock(&self->_lock);
  installedWebClipObservers = self->_installedWebClipObservers;
  if (!installedWebClipObservers)
  {
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v11 = self->_installedWebClipObservers;
    self->_installedWebClipObservers = weakObjectsHashTable;

    installedWebClipObservers = self->_installedWebClipObservers;
  }

  [(NSHashTable *)installedWebClipObservers addObject:v8];
  os_unfair_lock_unlock(&self->_lock);
  [remoteTarget setObservingInstalledWebClips:MEMORY[0x1E695E118]];

  return v8;
}

- (void)removeInstalledWebClipsObservationAssertion:(id)assertion
{
  assertionCopy = assertion;
  os_unfair_lock_lock(&self->_lock);
  [(NSHashTable *)self->_installedWebClipObservers removeObject:assertionCopy];

  v5 = [(NSHashTable *)self->_installedWebClipObservers count];
  os_unfair_lock_unlock(&self->_lock);
  if (!v5)
  {
    remoteTarget = [(BSServiceConnection *)self->_connection remoteTarget];
    [remoteTarget setObservingInstalledWebClips:MEMORY[0x1E695E110]];
  }
}

- (SBSDebugActiveWidgetInfo)debuggingActiveWidgetInfo
{
  remoteTarget = [(BSServiceConnection *)self->_connection remoteTarget];
  if (!remoteTarget)
  {
    v3 = SBLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [SBSHomeScreenService debuggingActiveWidgetInfo];
    }
  }

  debuggingActiveWidgetInfo = [remoteTarget debuggingActiveWidgetInfo];

  return debuggingActiveWidgetInfo;
}

- (void)insertEmptyPageAtIndex:(unint64_t)index
{
  remoteTarget = [(BSServiceConnection *)self->_connection remoteTarget];
  if (!remoteTarget)
  {
    v5 = SBLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [SBSHomeScreenService insertEmptyPageAtIndex:];
    }
  }

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:index];
  [remoteTarget insertEmptyPageAtIndex:v6];
}

- (void)addEmptyPage
{
  remoteTarget = [(BSServiceConnection *)self->_connection remoteTarget];
  if (!remoteTarget)
  {
    v3 = SBLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [SBSHomeScreenService addEmptyPage];
    }
  }

  [remoteTarget addEmptyPage];
}

- (void)addSuggestedPageWithPageType:(id)type focusModeIdentifier:(id)identifier
{
  typeCopy = type;
  identifierCopy = identifier;
  remoteTarget = [(BSServiceConnection *)self->_connection remoteTarget];
  if (!remoteTarget)
  {
    v9 = SBLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [SBSHomeScreenService addSuggestedPageWithPageType:focusModeIdentifier:];
    }
  }

  [remoteTarget addSuggestedPageWithPageType:typeCopy focusModeIdentifier:identifierCopy];
}

- (BOOL)isHomeScreenLayoutAvailable
{
  os_unfair_lock_lock(&self->_lock);
  isCachedHomeScreenLayoutAvailableValid = [(SBSHomeScreenService *)self isCachedHomeScreenLayoutAvailableValid];
  isCachedHomeScreenLayoutAvailable = [(SBSHomeScreenService *)self isCachedHomeScreenLayoutAvailable];
  os_unfair_lock_unlock(&self->_lock);
  if (!isCachedHomeScreenLayoutAvailableValid)
  {
    remoteTarget = [(BSServiceConnection *)self->_connection remoteTarget];
    if (!remoteTarget)
    {
      v6 = SBLogCommon();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [SBSHomeScreenService isHomeScreenLayoutAvailable];
      }
    }

    homeScreenLayoutAvailability = [remoteTarget homeScreenLayoutAvailability];
    isCachedHomeScreenLayoutAvailable = [homeScreenLayoutAvailability BOOLValue];
  }

  return isCachedHomeScreenLayoutAvailable;
}

- (id)addHomeScreenLayoutAvailabilityObserver:(id)observer
{
  connection = self->_connection;
  observerCopy = observer;
  remoteTarget = [(BSServiceConnection *)connection remoteTarget];
  if (!remoteTarget)
  {
    v7 = SBLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [SBSHomeScreenService addHomeScreenLayoutAvailabilityObserver:];
    }
  }

  v8 = [[SBSHomeScreenServiceHomeScreenLayoutAvailabilityObservationAssertion alloc] initWithObserver:observerCopy service:self];

  os_unfair_lock_lock(&self->_lock);
  homeScreenLayoutAvailableObservers = self->_homeScreenLayoutAvailableObservers;
  if (!homeScreenLayoutAvailableObservers)
  {
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v11 = self->_homeScreenLayoutAvailableObservers;
    self->_homeScreenLayoutAvailableObservers = weakObjectsHashTable;

    homeScreenLayoutAvailableObservers = self->_homeScreenLayoutAvailableObservers;
  }

  [(NSHashTable *)homeScreenLayoutAvailableObservers addObject:v8];
  os_unfair_lock_unlock(&self->_lock);
  [remoteTarget setObservingHomeScreenLayoutAvailability:MEMORY[0x1E695E118]];

  return v8;
}

- (void)removeHomeScreenLayoutAvailabilityObservationAssertion:(id)assertion
{
  assertionCopy = assertion;
  os_unfair_lock_lock(&self->_lock);
  [(NSHashTable *)self->_homeScreenLayoutAvailableObservers removeObject:assertionCopy];

  v5 = [(NSHashTable *)self->_homeScreenLayoutAvailableObservers count];
  os_unfair_lock_unlock(&self->_lock);
  if (!v5)
  {
    remoteTarget = [(BSServiceConnection *)self->_connection remoteTarget];
    [remoteTarget setObservingHomeScreenLayoutAvailability:MEMORY[0x1E695E110]];
  }
}

- (id)addHomeScreenLayoutObserver:(id)observer
{
  connection = self->_connection;
  observerCopy = observer;
  remoteTarget = [(BSServiceConnection *)connection remoteTarget];
  if (!remoteTarget)
  {
    v7 = SBLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [SBSHomeScreenService addHomeScreenLayoutObserver:];
    }
  }

  v8 = [[SBSHomeScreenServiceHomeScreenLayoutObservationAssertion alloc] initWithObserver:observerCopy service:self];

  os_unfair_lock_lock(&self->_lock);
  homeScreenLayoutObservers = self->_homeScreenLayoutObservers;
  if (!homeScreenLayoutObservers)
  {
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v11 = self->_homeScreenLayoutObservers;
    self->_homeScreenLayoutObservers = weakObjectsHashTable;

    homeScreenLayoutObservers = self->_homeScreenLayoutObservers;
  }

  [(NSHashTable *)homeScreenLayoutObservers addObject:v8];
  os_unfair_lock_unlock(&self->_lock);
  [remoteTarget setObservingHomeScreenLayout:MEMORY[0x1E695E118]];

  return v8;
}

- (void)removeHomeScreenLayoutObservationAssertion:(id)assertion
{
  assertionCopy = assertion;
  os_unfair_lock_lock(&self->_lock);
  [(NSHashTable *)self->_homeScreenLayoutObservers removeObject:assertionCopy];

  v5 = [(NSHashTable *)self->_homeScreenLayoutObservers count];
  os_unfair_lock_unlock(&self->_lock);
  if (!v5)
  {
    remoteTarget = [(BSServiceConnection *)self->_connection remoteTarget];
    [remoteTarget setObservingHomeScreenLayout:MEMORY[0x1E695E110]];
  }
}

- (id)iconTintColor
{
  homeScreenIconStyleConfiguration = [(SBSHomeScreenService *)self homeScreenIconStyleConfiguration];
  v3 = homeScreenIconStyleConfiguration;
  if (homeScreenIconStyleConfiguration && [homeScreenIconStyleConfiguration updatedConfigurationType] == 2)
  {
    tintColor = [v3 tintColor];
  }

  else
  {
    tintColor = 0;
  }

  return tintColor;
}

- (void)setIconTintColor:(id)color
{
  colorCopy = color;
  homeScreenIconStyleConfiguration = [(SBSHomeScreenService *)self homeScreenIconStyleConfiguration];
  v5 = -[SBSHomeScreenIconStyleConfiguration initWithConfigurationType:variant:tintColor:]([SBSHomeScreenIconStyleConfiguration alloc], "initWithConfigurationType:variant:tintColor:", 2, [homeScreenIconStyleConfiguration variant], colorCopy);

  [(SBSHomeScreenService *)self setHomeScreenIconStyleConfiguration:v5];
}

- (void)setHomeScreenIconStyleConfiguration:(id)configuration
{
  configurationCopy = configuration;
  remoteTarget = [(BSServiceConnection *)self->_connection remoteTarget];
  v6 = remoteTarget;
  if (remoteTarget)
  {
    [remoteTarget setHomeScreenIconStyleConfiguration:configurationCopy];
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

- (void)setHomeScreenIconStyleConfiguration:(id)configuration wallpaperDimmed:(BOOL)dimmed
{
  dimmedCopy = dimmed;
  configurationCopy = configuration;
  remoteTarget = [(BSServiceConnection *)self->_connection remoteTarget];
  if (remoteTarget)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:dimmedCopy];
    [remoteTarget setHomeScreenIconStyleConfiguration:configurationCopy wallpaperDimmed:v8];
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

- (id)addHomeScreenIconStyleObserver:(id)observer
{
  observerCopy = observer;
  remoteTarget = [(BSServiceConnection *)self->_connection remoteTarget];
  if (!remoteTarget)
  {
    v6 = SBLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SBSHomeScreenService addHomeScreenIconStyleObserver:];
    }
  }

  v7 = [[SBSHomeScreenServiceIconStyleObservationAssertion alloc] initWithObserver:observerCopy service:self];
  os_unfair_lock_lock(&self->_lock);
  iconStyleObservers = self->_iconStyleObservers;
  if (!iconStyleObservers)
  {
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v10 = self->_iconStyleObservers;
    self->_iconStyleObservers = weakObjectsHashTable;

    iconStyleObservers = self->_iconStyleObservers;
  }

  [(NSHashTable *)iconStyleObservers addObject:v7];
  isCachedIconStyleConfigurationValid = [(SBSHomeScreenService *)self isCachedIconStyleConfigurationValid];
  cachedIconStyleConfiguration = [(SBSHomeScreenService *)self cachedIconStyleConfiguration];
  os_unfair_lock_unlock(&self->_lock);
  [remoteTarget setObservingIconTintColor:MEMORY[0x1E695E118]];
  if (isCachedIconStyleConfigurationValid)
  {
    [observerCopy homeScreenService:self homeScreenIconStyleConfigurationDidChange:cachedIconStyleConfiguration];
  }

  return v7;
}

- (void)removeIconStyleObservationAssertion:(id)assertion
{
  assertionCopy = assertion;
  os_unfair_lock_lock(&self->_lock);
  [(NSHashTable *)self->_iconStyleObservers removeObject:assertionCopy];

  if ([(NSHashTable *)self->_iconStyleObservers count])
  {

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    [(SBSHomeScreenService *)self setCachedIconStyleConfigurationValid:0];
    os_unfair_lock_unlock(&self->_lock);
    remoteTarget = [(BSServiceConnection *)self->_connection remoteTarget];
    [remoteTarget setObservingIconTintColor:MEMORY[0x1E695E110]];
  }
}

- (id)silhouetteLayoutForPageAtIndex:(unint64_t)index
{
  remoteTarget = [(BSServiceConnection *)self->_connection remoteTarget];
  if (remoteTarget)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:index];
    v6 = [remoteTarget silhouetteLayoutForPageAtIndex:v5];
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

- (id)addIconBadgeValueObserver:(id)observer
{
  connection = self->_connection;
  observerCopy = observer;
  remoteTarget = [(BSServiceConnection *)connection remoteTarget];
  if (!remoteTarget)
  {
    v7 = SBLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [SBSHomeScreenService addIconBadgeValueObserver:];
    }
  }

  v8 = [[SBSHomeScreenServiceIconBadgeValueObservationAssertion alloc] initWithObserver:observerCopy service:self];

  os_unfair_lock_lock(&self->_lock);
  iconBadgeValueObservers = self->_iconBadgeValueObservers;
  if (!iconBadgeValueObservers)
  {
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v11 = self->_iconBadgeValueObservers;
    self->_iconBadgeValueObservers = weakObjectsHashTable;

    iconBadgeValueObservers = self->_iconBadgeValueObservers;
  }

  [(NSHashTable *)iconBadgeValueObservers addObject:v8];
  os_unfair_lock_unlock(&self->_lock);
  [remoteTarget setObservingIconBadgeValue:MEMORY[0x1E695E118]];

  return v8;
}

- (void)removeIconBadgeValueObservationAssertion:(id)assertion
{
  assertionCopy = assertion;
  os_unfair_lock_lock(&self->_lock);
  [(NSHashTable *)self->_iconBadgeValueObservers removeObject:assertionCopy];

  v5 = [(NSHashTable *)self->_iconBadgeValueObservers count];
  os_unfair_lock_unlock(&self->_lock);
  if (!v5)
  {
    remoteTarget = [(BSServiceConnection *)self->_connection remoteTarget];
    [remoteTarget setObservingIconBadgeValue:MEMORY[0x1E695E110]];
  }
}

- (id)badgeValueForIconWithApplicationBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  remoteTarget = [(BSServiceConnection *)self->_connection remoteTarget];
  v6 = remoteTarget;
  if (remoteTarget)
  {
    v7 = [remoteTarget badgeValueForIconWithApplicationBundleIdentifier:identifierCopy];
    numberOrString = [v7 numberOrString];
  }

  else
  {
    v9 = SBLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [SBSHomeScreenService badgeValueForIconWithApplicationBundleIdentifier:];
    }

    numberOrString = 0;
  }

  return numberOrString;
}

- (void)badgeValueForIconWithApplicationBundleIdentifier:(id)identifier completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  remoteTarget = [(BSServiceConnection *)self->_connection remoteTarget];
  if (remoteTarget)
  {
    goto LABEL_2;
  }

  v9 = SBLogCommon();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [SBSHomeScreenService badgeValueForIconWithApplicationBundleIdentifier:];
  }

  if (!handlerCopy)
  {
LABEL_2:
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __91__SBSHomeScreenService_badgeValueForIconWithApplicationBundleIdentifier_completionHandler___block_invoke;
    v10[3] = &unk_1E735FEE8;
    v11 = handlerCopy;
    [remoteTarget badgeValueForIconWithApplicationBundleIdentifier:identifierCopy completionHandler:v10];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
  }
}

void __91__SBSHomeScreenService_badgeValueForIconWithApplicationBundleIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 numberOrString];
  (*(*(a1 + 32) + 16))();
}

- (void)clearAllOverflowSlotCounts
{
  remoteTarget = [(BSServiceConnection *)self->_connection remoteTarget];
  if (!remoteTarget)
  {
    v3 = SBLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [SBSHomeScreenService clearAllOverflowSlotCounts];
    }
  }

  [remoteTarget clearAllOverflowSlotCounts];
}

- (NSArray)overflowSlotCounts
{
  remoteTarget = [(BSServiceConnection *)self->_connection remoteTarget];
  if (!remoteTarget)
  {
    v3 = SBLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [SBSHomeScreenService overflowSlotCounts];
    }
  }

  overflowSlotCounts = [remoteTarget overflowSlotCounts];
  array = [overflowSlotCounts array];

  return array;
}

- (void)setupHomeScreenForWidgetScrollPerformanceTest
{
  remoteTarget = [(BSServiceConnection *)self->_connection remoteTarget];
  if (!remoteTarget)
  {
    v3 = SBLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [SBSHomeScreenService setupHomeScreenForWidgetScrollPerformanceTest];
    }
  }

  [remoteTarget setupHomeScreenForWidgetScrollPerformanceTest];
}

- (void)runWidgetDiscoverabilityTest
{
  remoteTarget = [(BSServiceConnection *)self->_connection remoteTarget];
  if (!remoteTarget)
  {
    v3 = SBLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [SBSHomeScreenService runWidgetDiscoverabilityTest];
    }
  }

  [remoteTarget runWidgetDiscoverabilityTest];
}

- (void)swapApplicationIconsInProminentPositionsWithBundleIdentifier:(id)identifier withApplicationIconsWithWithBundleIdentifier:(id)bundleIdentifier
{
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  remoteTarget = [(BSServiceConnection *)self->_connection remoteTarget];
  if (!remoteTarget)
  {
    v9 = SBLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [SBSHomeScreenService swapApplicationIconsInProminentPositionsWithBundleIdentifier:withApplicationIconsWithWithBundleIdentifier:];
    }
  }

  [remoteTarget swapApplicationIconsInProminentPositionsWithBundleIdentifier:identifierCopy withApplicationIconsWithWithBundleIdentifier:bundleIdentifierCopy];
}

- (BOOL)canSwapApplicationIconsInProminentPositionsWithBundleIdentifier:(id)identifier withApplicationIconsWithWithBundleIdentifier:(id)bundleIdentifier
{
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  remoteTarget = [(BSServiceConnection *)self->_connection remoteTarget];
  if (!remoteTarget)
  {
    v9 = SBLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [SBSHomeScreenService canSwapApplicationIconsInProminentPositionsWithBundleIdentifier:withApplicationIconsWithWithBundleIdentifier:];
    }
  }

  v10 = [remoteTarget canSwapApplicationIconsInProminentPositionsWithBundleIdentifier:identifierCopy withApplicationIconsWithWithBundleIdentifier:bundleIdentifierCopy];

  return v10;
}

- (id)osMigrationHomeScreenLayout
{
  remoteTarget = [(BSServiceConnection *)self->_connection remoteTarget];
  if (!remoteTarget)
  {
    v3 = SBLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [SBSHomeScreenService osMigrationHomeScreenLayout];
    }
  }

  osMigrationHomeScreenLayout = [remoteTarget osMigrationHomeScreenLayout];

  return osMigrationHomeScreenLayout;
}

- (id)osMigrationDefaultHomeScreenLayout
{
  remoteTarget = [(BSServiceConnection *)self->_connection remoteTarget];
  if (!remoteTarget)
  {
    v3 = SBLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [SBSHomeScreenService osMigrationDefaultHomeScreenLayout];
    }
  }

  osMigrationDefaultHomeScreenLayout = [remoteTarget osMigrationDefaultHomeScreenLayout];

  return osMigrationDefaultHomeScreenLayout;
}

- (void)importOSMigrationHomeScreenLayout:(id)layout
{
  layoutCopy = layout;
  remoteTarget = [(BSServiceConnection *)self->_connection remoteTarget];
  if (!remoteTarget)
  {
    v6 = SBLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SBSHomeScreenService importOSMigrationHomeScreenLayout:];
    }
  }

  [remoteTarget importOSMigrationHomeScreenLayout:layoutCopy];
}

- (void)precacheIconLayersOnFirstPageWithAppearanceDescriptions:(id)descriptions
{
  connection = self->_connection;
  descriptionsCopy = descriptions;
  remoteTarget = [(BSServiceConnection *)connection remoteTarget];
  if (!remoteTarget)
  {
    v6 = SBLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SBSHomeScreenService precacheIconLayersOnFirstPageWithAppearanceDescriptions:];
    }
  }

  v7 = [[SBSHomeScreenServiceArrayOfStrings alloc] initWithArray:descriptionsCopy];

  [remoteTarget precacheIconLayersOnFirstPageWithAppearanceDescriptions:v7];
}

- (void)installedWebClipsDidChange
{
  v20 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  allObjects = [(NSHashTable *)self->_installedWebClipObservers allObjects];
  os_unfair_lock_unlock(&self->_lock);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = allObjects;
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
        observer = [v9 observer];
        v11 = observer;
        if (observer)
        {
          [observer installedWebClipsDidChange];
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

- (void)homeScreenLayoutAvailabilityDidChange:(id)change
{
  v22 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  os_unfair_lock_lock(&self->_lock);
  allObjects = [(NSHashTable *)self->_homeScreenLayoutAvailableObservers allObjects];
  -[SBSHomeScreenService setCachedHomeScreenLayoutAvailable:](self, "setCachedHomeScreenLayoutAvailable:", [changeCopy BOOLValue]);
  [(SBSHomeScreenService *)self setCachedHomeScreenLayoutAvailableValid:1];
  os_unfair_lock_unlock(&self->_lock);
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = allObjects;
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
        observer = [v11 observer];
        v13 = observer;
        if (observer)
        {
          [observer homeScreenServiceLayoutAvailabilityDidChange:self];
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

- (void)applicationIconInfoChangedForBundleIdentifiers:(id)identifiers
{
  v27 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  os_unfair_lock_lock(&self->_lock);
  allObjects = [(NSHashTable *)self->_iconBadgeValueObservers allObjects];
  os_unfair_lock_unlock(&self->_lock);
  v6 = objc_alloc(MEMORY[0x1E695DFD8]);
  v19 = identifiersCopy;
  array = [identifiersCopy array];
  v8 = [v6 initWithArray:array];

  v9 = SBLogCommon();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [SBSHomeScreenService applicationIconInfoChangedForBundleIdentifiers:];
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v10 = allObjects;
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
        observer = [v15 observer];
        v17 = observer;
        if (observer)
        {
          [observer homeScreenService:self applicationIconInfoChangedForBundleIdentifiers:v8];
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
  allObjects = [(NSHashTable *)self->_homeScreenLayoutObservers allObjects];
  os_unfair_lock_unlock(&self->_lock);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = allObjects;
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
        observer = [v9 observer];
        v11 = observer;
        if (observer)
        {
          [observer homeScreenServiceLayoutDidChange:self];
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

- (void)homeScreenIconStyleConfigurationDidChange:(id)change
{
  v22 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  os_unfair_lock_lock(&self->_lock);
  allObjects = [(NSHashTable *)self->_iconStyleObservers allObjects];
  [(SBSHomeScreenService *)self setCachedIconStyleConfiguration:changeCopy];
  [(SBSHomeScreenService *)self setCachedIconStyleConfigurationValid:1];
  os_unfair_lock_unlock(&self->_lock);
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = allObjects;
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
        observer = [v11 observer];
        v13 = observer;
        if (observer)
        {
          [observer homeScreenService:self homeScreenIconStyleConfigurationDidChange:changeCopy];
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