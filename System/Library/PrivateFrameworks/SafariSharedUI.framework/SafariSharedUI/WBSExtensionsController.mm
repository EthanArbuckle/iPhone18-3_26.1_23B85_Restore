@interface WBSExtensionsController
+ (BOOL)hasBlockedPromptAppearedForExtensionWithIdentifier:(id)identifier;
+ (double)temporarySiteAccessTimeInterval;
+ (id)_bundleIdentifierFromComposedIdentifier:(id)identifier;
+ (id)_extensionFromComposedIdentifier:(id)identifier;
+ (id)extensionKitQueries;
+ (id)extensionKitQueriesWithExtensionPoint:(id)point platforms:(id)platforms predicate:(id)predicate;
+ (void)removeExtensionBundleIDFromArrayOfBlocklistedExtensions:(id)extensions;
- (BOOL)_extensionShouldBeEnabled:(id)enabled;
- (BOOL)extensionIsEnabled:(id)enabled;
- (BOOL)hasAnyEnabledExtensionsInStorage;
- (BOOL)hasExtensionWithComposedIdentifier:(id)identifier;
- (BOOL)hasShownPerSiteAccessPermissionForExtension:(id)extension;
- (BOOL)validateAndReadResourceWithExtensionURL:(id)l inExtension:(id)extension codeRef:(__SecCode *)ref outResourceData:(id *)data;
- (BOOL)validateAndReadResourceWithExtensionURL:(id)l inExtension:(id)extension outResourceData:(id *)data;
- (BOOL)validateAndReadResourceWithExtensionURL:(id)l outResourceData:(id *)data;
- (NSDictionary)extensionIdentifierToBaseURIMap;
- (NSSet)extensionStateKeysToCopy;
- (WBSExtensionsController)init;
- (WBSExtensionsController)initWithProfileServerID:(id)d userContentController:(id)controller;
- (WBSExtensionsController)initWithProfileServerID:(id)d userContentController:(id)controller forceExtensionLoadingAfterDiscovery:(BOOL)discovery;
- (WBSExtensionsControllerDelegate)delegate;
- (WKWebsiteDataStore)websiteDataStore;
- (id)_developerIdentifierForExtension:(id)extension;
- (id)_extensionStateForExtension:(id)extension;
- (id)_extensionsControllerForDefaultProfile;
- (id)_generateBaseURIForExtension:(id)extension;
- (id)_readExtensionsStateFromStorageFromURL:(id)l;
- (id)_updatedExtensionStateForCurrentPermissions:(id)permissions previousExtensionState:(id)state;
- (id)cloudExtensionStateForStateManager:(id)manager;
- (id)composedIdentifierForExtensionStateForExtension:(id)extension;
- (id)extensionDataForExtension:(id)extension;
- (id)extensionWithBaseURIHost:(id)host;
- (id)extensionWithBundleIdentifier:(id)identifier;
- (id)extensionWithComposedIdentifier:(id)identifier;
- (id)extensionWithUUID:(id)d;
- (id)extensionsDataForExport;
- (id)extensionsWithAdamID:(id)d;
- (id)lastSeenBaseURIForExtension:(id)extension;
- (id)lastSeenBaseURIForExtension:(id)extension updatingWithCurrentBaseURI:(id)i;
- (id)profileServerIDForStateManager:(id)manager;
- (id)readExtensionsStateFromStorage;
- (void)_addExtensionToBaseURIMap:(id)map withResourceURL:(id)l;
- (void)_beginExtensionDiscovery;
- (void)_beginMatchingExtensionsWithAttributesCompletedWithMatchingExtensions:(id)extensions;
- (void)_deleteStateForExtensionWithComposedIdentifier:(id)identifier;
- (void)_deleteStateForRemovedExtensions;
- (void)_deleteStateForRemovedExtensionsAfterDelay:(double)delay;
- (void)_disableAndBlockExtension:(id)extension;
- (void)_endExtensionDiscovery;
- (void)_extensionDiscoveryHasNewResults:(id)results;
- (void)_extensionsWereGloballyDisabled;
- (void)_extensionsWereGloballyEnabled;
- (void)_finishedLoadingExtensions;
- (void)_loadExtensions:(id)extensions skipEqualityCheck:(BOOL)check;
- (void)_managedExtensionStateDidChange;
- (void)_populateAllExtensionsIfNecessaryUsingExtensionsControllerForDefaultProfile;
- (void)_postExtensionWasEnabledRemotelyNotificationIfNecessary:(id)necessary;
- (void)_removeSafariExtensionDataForExtension:(id)extension;
- (void)_resetExtensionsState;
- (void)_setExtensionIdentifierToStateMap:(id)map forExtensionWithComposedIdentifier:(id)identifier completionHandler:(id)handler;
- (void)_setExtensionState:(id)state forExtension:(id)extension completionHandler:(id)handler;
- (void)_updateExtensionStateAfterExtensionWasAddedWithComposedIdentifier:(id)identifier;
- (void)_updateExtensionStateAfterExtensionWasRemovedWithComposedIdentifier:(id)identifier;
- (void)_updateExtensionStateIfPermissionsIncreased:(id)increased;
- (void)_updateExtensionStateWithPrivacyPreservingProfileIdentifierIfNeeded:(id)needed;
- (void)_validateAndLoadExtensionIfNecessary:(id)necessary attemptRetryOnFailure:(BOOL)failure isExtensionNewlyInstalled:(BOOL *)installed;
- (void)addObserver:(id)observer;
- (void)closeLocalExtensionContentInPrivateTabsForExtension:(id)extension;
- (void)copyEnabledExtensionStateFromExtensionsController:(id)controller;
- (void)dealloc;
- (void)didShowPerSiteAccessPermissionForExtension:(id)extension;
- (void)findExtensions;
- (void)loadEnabledExtensions;
- (void)loadSuitableDiscoveredExtensions;
- (void)moveLocalStorageForExtension:(id)extension completionHandler:(id)handler;
- (void)queryControllerDidUpdate:(id)update;
- (void)reloadExtensionStateFromStorage;
- (void)remotelyEnabledExtensionBannerWasShownForComposedIdentifier:(id)identifier;
- (void)removeObserver:(id)observer;
- (void)resetExtensionsStateAndReloadExtensions;
- (void)setExtension:(id)extension isEnabled:(BOOL)enabled dueToUserGesture:(BOOL)gesture skipSavingToStorage:(BOOL)storage;
- (void)setExtensionWithComposedIdentifier:(id)identifier isEnabledInCloud:(BOOL)cloud;
- (void)test_enableExtension:(id)extension withResourceURL:(id)l;
- (void)unloadAndDeleteStateForAllExtensions;
- (void)unloadExtensionIfNecessary:(id)necessary;
- (void)writeExtensionsStateToStorageWithCompletionHandler:(id)handler;
@end

@implementation WBSExtensionsController

- (WBSExtensionsController)init
{
  v23.receiver = self;
  v23.super_class = WBSExtensionsController;
  v2 = [(WBSExtensionsController *)&v23 init];
  if (v2)
  {
    weakObjectsPointerArray = [MEMORY[0x1E696AE08] weakObjectsPointerArray];
    observers = v2->_observers;
    v2->_observers = weakObjectsPointerArray;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__extensionsWereGloballyEnabled name:*MEMORY[0x1E69C92D0] object:0];
    [defaultCenter addObserver:v2 selector:sel__extensionsWereGloballyDisabled name:*MEMORY[0x1E69C92C8] object:0];
    v6 = objc_alloc_init(WBSExtensionsAnalyticsEventCoalescer);
    analyticsEventCoalescer = v2->_analyticsEventCoalescer;
    v2->_analyticsEventCoalescer = v6;

    v8 = [MEMORY[0x1E695DFA8] set];
    enabledExtensions = v2->_enabledExtensions;
    v2->_enabledExtensions = v8;

    array = [MEMORY[0x1E695DF70] array];
    extensions = v2->_extensions;
    v2->_extensions = array;

    [defaultCenter addObserver:v2 selector:sel__managedExtensionStateDidChange name:*MEMORY[0x1E69C8C38] object:0];
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.Safari.WBSExtensionsController.%@.%p._appBundleValidationQueue", objc_opt_class(), v2];
    v13 = dispatch_queue_create([v12 UTF8String], 0);
    appBundleValidationQueue = v2->_appBundleValidationQueue;
    v2->_appBundleValidationQueue = v13;

    v15 = MEMORY[0x1E69C8868];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __31__WBSExtensionsController_init__block_invoke;
    v21[3] = &unk_1E8283DB0;
    v16 = v2;
    v22 = v16;
    v17 = [v15 registeredStateCollectorWithLogLabel:@"Safari Extensions State" payloadProvider:v21];
    diagnosticStateCollector = v16->_diagnosticStateCollector;
    v16->_diagnosticStateCollector = v17;

    v19 = v16;
  }

  return v2;
}

- (WKWebsiteDataStore)websiteDataStore
{
  if (self->_profileServerID)
  {
    v3 = [MEMORY[0x1E69853B8] safari_dataStoreForProfileWithIdentifier:?];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)findExtensions
{
  if ([(WBSExtensionsController *)self extensionsEnabled])
  {
    if ([(WBSExtensionsController *)self _supportsExtensionDiscovery])
    {

      [(WBSExtensionsController *)self _beginExtensionDiscovery];
    }

    else
    {

      [(WBSExtensionsController *)self _populateAllExtensionsIfNecessaryUsingExtensionsControllerForDefaultProfile];
    }
  }
}

- (void)_beginExtensionDiscovery
{
  if (!self->_extensionKitQueryController)
  {
    if ([(WBSExtensionsController *)self _supportsExtensionDiscovery])
    {
      v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.SafariShared.WBSExtensionsController.%@.%p.discoveryQueue", objc_opt_class(), self];
      uTF8String = [v3 UTF8String];
      v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v6 = dispatch_queue_create(uTF8String, v5);
      discoveryNotificationQueue = self->_discoveryNotificationQueue;
      self->_discoveryNotificationQueue = v6;

      dispatch_suspend(self->_discoveryNotificationQueue);
      v8 = objc_alloc(MEMORY[0x1E6966CF8]);
      extensionKitQueries = [objc_opt_class() extensionKitQueries];
      v10 = [v8 initWithQueries:extensionKitQueries];
      extensionKitQueryController = self->_extensionKitQueryController;
      self->_extensionKitQueryController = v10;

      [(_EXQueryController *)self->_extensionKitQueryController setDelegate:self];
      objc_initWeak(&location, self);
      v12 = dispatch_get_global_queue(0, 0);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __51__WBSExtensionsController__beginExtensionDiscovery__block_invoke;
      block[3] = &unk_1E8283DF8;
      objc_copyWeak(&v14, &location);
      dispatch_async(v12, block);

      objc_destroyWeak(&v14);
      objc_destroyWeak(&location);
    }
  }
}

+ (id)extensionKitQueries
{
  v2 = objc_opt_class();
  _extensionPointIdentifier = [objc_opt_class() _extensionPointIdentifier];
  v4 = [v2 extensionKitQueriesWithExtensionPoint:_extensionPointIdentifier platforms:&unk_1F466D010 predicate:0];

  return v4;
}

void __51__WBSExtensionsController__beginExtensionDiscovery__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained[20] resume];
    dispatch_resume(v2[21]);
    WeakRetained = v2;
  }
}

- (void)loadEnabledExtensions
{
  v36 = *MEMORY[0x1E69E9840];
  if ([(WBSExtensionsController *)self extensionsEnabled]&& !self->_loadEnabledExtensionsWasCalled)
  {
    self->_loadEnabledExtensionsWasCalled = 1;
    if (+[WBSWebExtensionUtilities isProfileServerIDForDefaultProfile:](WBSWebExtensionUtilities, "isProfileServerIDForDefaultProfile:", self->_profileServerID) && ([objc_opt_class() _extensionDefaults], v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(objc_opt_class(), "_skipLoadingEnabledExtensionsAtLaunchPreferenceKey"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v3, "BOOLForKey:", v4), v4, v3, v5))
    {
      v6 = WBS_LOG_CHANNEL_PREFIXExtensions();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1C6968000, v6, OS_LOG_TYPE_INFO, "Skipping loading enabled extensions at launch because there aren't any", buf, 2u);
      }
    }

    else
    {
      readExtensionsStateFromStorage = [(WBSExtensionsController *)self readExtensionsStateFromStorage];
      v8 = [readExtensionsStateFromStorage mutableCopy];
      extensionIdentifierToStateMap = self->_extensionIdentifierToStateMap;
      self->_extensionIdentifierToStateMap = v8;

      if (self->_extensionIdentifierToStateMap)
      {
        [(WBSExtensionsController *)self disableUnsignedExtensionsIfNecessary];
        array = [MEMORY[0x1E695DF70] array];
        array2 = [MEMORY[0x1E695DF70] array];
        v30 = 0u;
        v31 = 0u;
        v28 = 0u;
        v29 = 0u;
        v12 = self->_extensionIdentifierToStateMap;
        v13 = [(NSMutableDictionary *)v12 countByEnumeratingWithState:&v28 objects:v35 count:16];
        if (v13)
        {
          v14 = *v29;
          do
          {
            for (i = 0; i != v13; ++i)
            {
              if (*v29 != v14)
              {
                objc_enumerationMutation(v12);
              }

              v16 = *(*(&v28 + 1) + 8 * i);
              v17 = [objc_opt_class() _extensionFromComposedIdentifier:v16];
              if (v17)
              {
                [array2 addObject:v17];
              }

              else
              {
                [array addObject:v16];
              }
            }

            v13 = [(NSMutableDictionary *)v12 countByEnumeratingWithState:&v28 objects:v35 count:16];
          }

          while (v13);
        }

        v26 = 0u;
        v27 = 0u;
        v24 = 0u;
        v25 = 0u;
        v18 = array;
        v19 = [v18 countByEnumeratingWithState:&v24 objects:v34 count:16];
        if (v19)
        {
          v20 = *v25;
          do
          {
            for (j = 0; j != v19; ++j)
            {
              if (*v25 != v20)
              {
                objc_enumerationMutation(v18);
              }

              v22 = *(*(&v24 + 1) + 8 * j);
              v23 = WBS_LOG_CHANNEL_PREFIXExtensions();
              if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
              {
                *buf = 138477827;
                v33 = v22;
                _os_log_impl(&dword_1C6968000, v23, OS_LOG_TYPE_INFO, "Extension with composed identifier %{private}@ was removed", buf, 0xCu);
              }

              [(WBSExtensionsController *)self _updateExtensionStateAfterExtensionWasRemovedWithComposedIdentifier:v22];
            }

            v19 = [v18 countByEnumeratingWithState:&v24 objects:v34 count:16];
          }

          while (v19);
        }

        [(WBSExtensionsController *)self _deleteStateForRemovedExtensionsSoon];
        self->_loadingEnabledExtensionsAtStartup = 1;
        [(WBSExtensionsController *)self _loadExtensions:array2];
        self->_loadingEnabledExtensionsAtStartup = 0;
      }
    }
  }
}

- (void)loadSuitableDiscoveredExtensions
{
  if ([(WBSExtensionsController *)self extensionsEnabled]&& !self->_loadingDiscoveredExtensions)
  {
    self->_loadingDiscoveredExtensions = 1;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __59__WBSExtensionsController_loadSuitableDiscoveredExtensions__block_invoke;
    aBlock[3] = &unk_1E8282FD8;
    aBlock[4] = self;
    v3 = _Block_copy(aBlock);
    v4 = v3;
    if (self->_extensionIdentifierToStateMap)
    {
      (*(v3 + 2))(v3);
    }

    else
    {
      _urlForExtensionSettings = [(WBSExtensionsController *)self _urlForExtensionSettings];
      v6 = dispatch_get_global_queue(25, 0);
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __59__WBSExtensionsController_loadSuitableDiscoveredExtensions__block_invoke_2;
      v8[3] = &unk_1E8283450;
      v8[4] = self;
      v9 = _urlForExtensionSettings;
      v10 = v4;
      v7 = _urlForExtensionSettings;
      dispatch_async(v6, v8);
    }
  }
}

void __59__WBSExtensionsController_loadSuitableDiscoveredExtensions__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) _readExtensionsStateFromStorageFromURL:*(a1 + 40)];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__WBSExtensionsController_loadSuitableDiscoveredExtensions__block_invoke_3;
  block[3] = &unk_1E8283450;
  block[4] = *(a1 + 32);
  v5 = v2;
  v6 = *(a1 + 48);
  v3 = v2;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __59__WBSExtensionsController_loadSuitableDiscoveredExtensions__block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 40) mutableCopy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 24);
  *(v3 + 24) = v2;

  v5 = *(*(a1 + 48) + 16);

  return v5();
}

void __59__WBSExtensionsController_loadSuitableDiscoveredExtensions__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) _loadExtensions:*(*(a1 + 32) + 72)];
  v2 = [*(*(a1 + 32) + 128) copy];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = v2;
  v4 = [v3 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v4)
  {
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v7 + 1) + 8 * v6++) extensionsControllerExtensionListDidChange:{*(a1 + 32), v7}];
      }

      while (v4 != v6);
      v4 = [v3 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }

  [*(a1 + 32) _notifyObserversContentBlockerListDidChange];
  *(*(a1 + 32) + 136) = 0;
}

- (void)_finishedLoadingExtensions
{
  v14 = *MEMORY[0x1E69E9840];
  if ([WBSWebExtensionUtilities isProfileServerIDForDefaultProfile:self->_profileServerID])
  {
    _extensionDefaults = [objc_opt_class() _extensionDefaults];
    _skipLoadingEnabledExtensionsAtLaunchPreferenceKey = [objc_opt_class() _skipLoadingEnabledExtensionsAtLaunchPreferenceKey];
    v5 = [_extensionDefaults objectForKey:_skipLoadingEnabledExtensionsAtLaunchPreferenceKey];

    if (!v5)
    {
      v6 = WBS_LOG_CHANNEL_PREFIXExtensions();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        hasAnyEnabledExtensionsInStorage = [(WBSExtensionsController *)self hasAnyEnabledExtensionsInStorage];
        v8 = @"YES";
        if (hasAnyEnabledExtensionsInStorage)
        {
          v8 = @"NO";
        }

        v12 = 138412290;
        v13 = v8;
        _os_log_impl(&dword_1C6968000, v6, OS_LOG_TYPE_INFO, "Setting SkipLoadingEnabledExtensionsAtLaunch key to %@", &v12, 0xCu);
      }

      _extensionDefaults2 = [objc_opt_class() _extensionDefaults];
      hasAnyEnabledExtensionsInStorage2 = [(WBSExtensionsController *)self hasAnyEnabledExtensionsInStorage];
      _skipLoadingEnabledExtensionsAtLaunchPreferenceKey2 = [objc_opt_class() _skipLoadingEnabledExtensionsAtLaunchPreferenceKey];
      [_extensionDefaults2 setBool:!hasAnyEnabledExtensionsInStorage2 forKey:_skipLoadingEnabledExtensionsAtLaunchPreferenceKey2];
    }
  }
}

id __31__WBSExtensionsController_init__block_invoke(uint64_t a1)
{
  v11[3] = *MEMORY[0x1E69E9840];
  v1 = (a1 + 32);
  v2 = [*(*(a1 + 32) + 56) safari_arrayByMappingObjectsUsingBlock:&__block_literal_global_8];
  v3 = [*v1 profile];
  v4 = [v3 identifier];

  if (!v4)
  {
    v5 = WBS_LOG_CHANNEL_PREFIXExtensions();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __31__WBSExtensionsController_init__block_invoke_cold_1();
    }

    v4 = @"Unknown";
  }

  v6 = *MEMORY[0x1E69C9290];
  v10[0] = *MEMORY[0x1E69C9298];
  v10[1] = v6;
  v7 = MEMORY[0x1E695E0F0];
  if (v2)
  {
    v7 = v2;
  }

  v11[0] = v4;
  v11[1] = v7;
  v10[2] = *MEMORY[0x1E69C92A0];
  v11[2] = @"Extensions";
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:3];

  return v8;
}

id __31__WBSExtensionsController_init__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 identifier];

  return v2;
}

- (WBSExtensionsController)initWithProfileServerID:(id)d userContentController:(id)controller forceExtensionLoadingAfterDiscovery:(BOOL)discovery
{
  v6 = [(WBSExtensionsController *)self initWithProfileServerID:d userContentController:controller];
  v7 = v6;
  if (v6)
  {
    v6->_forceExtensionLoadingAfterDiscovery = discovery;
    v8 = v6;
  }

  return v7;
}

- (WBSExtensionsController)initWithProfileServerID:(id)d userContentController:(id)controller
{
  dCopy = d;
  controllerCopy = controller;
  v8 = [(WBSExtensionsController *)self init];
  if (v8)
  {
    v9 = [dCopy copy];
    profileServerID = v8->_profileServerID;
    v8->_profileServerID = v9;

    objc_storeStrong(&v8->_userContentController, controller);
    v11 = v8;
  }

  return v8;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = WBSExtensionsController;
  [(WBSExtensionsController *)&v4 dealloc];
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  [(NSPointerArray *)self->_observers addPointer:?];
  [(NSPointerArray *)self->_observers compact];
  if ([(NSPointerArray *)self->_observers count]== 1)
  {
    [(WBSExtensionsController *)self _beginExtensionDiscovery];
  }

  if (self->_extensions)
  {
    [observerCopy extensionsControllerExtensionListDidChange:self];
  }
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  [(NSPointerArray *)self->_observers compact];
  allObjects = [(NSPointerArray *)self->_observers allObjects];
  v5 = [allObjects indexOfObject:observerCopy];

  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(NSPointerArray *)self->_observers removePointerAtIndex:v5];
  }

  [(NSPointerArray *)self->_observers compact];
  if (![(NSPointerArray *)self->_observers count]&& [(WBSExtensionsController *)self _supportsExtensionDiscovery])
  {
    [(WBSExtensionsController *)self _endExtensionDiscovery];
  }
}

- (id)_extensionsControllerForDefaultProfile
{
  allProfileExtensionsControllers = [(WBSExtensionsController *)self allProfileExtensionsControllers];
  v3 = [allProfileExtensionsControllers safari_firstObjectPassingTest:&__block_literal_global_36];

  return v3;
}

BOOL __65__WBSExtensionsController__extensionsControllerForDefaultProfile__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 profileServerID];
  v3 = [WBSWebExtensionUtilities isProfileServerIDForDefaultProfile:v2];

  return v3;
}

- (void)_populateAllExtensionsIfNecessaryUsingExtensionsControllerForDefaultProfile
{
  objc_initWeak(&location, self);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __102__WBSExtensionsController__populateAllExtensionsIfNecessaryUsingExtensionsControllerForDefaultProfile__block_invoke;
  v2[3] = &unk_1E8283DF8;
  objc_copyWeak(&v3, &location);
  dispatch_async(MEMORY[0x1E69E96A0], v2);
  objc_destroyWeak(&v3);
  objc_destroyWeak(&location);
}

void __102__WBSExtensionsController__populateAllExtensionsIfNecessaryUsingExtensionsControllerForDefaultProfile__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && (WeakRetained[187] & 1) == 0)
  {
    v4 = WeakRetained;
    v2 = [WeakRetained _extensionsControllerForDefaultProfile];
    if ([v2 hasPopulatedAllExtensionsFromExtensionDiscoveryAtLeastOnce])
    {
      v3 = [v2 allDiscoveredExtensions];
      [v4 _beginMatchingExtensionsWithAttributesCompletedWithMatchingExtensions:v3];
    }

    WeakRetained = v4;
  }
}

- (void)queryControllerDidUpdate:(id)update
{
  updateCopy = update;
  discoveryNotificationQueue = self->_discoveryNotificationQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52__WBSExtensionsController_queryControllerDidUpdate___block_invoke;
  v7[3] = &unk_1E8282EA0;
  v8 = updateCopy;
  selfCopy = self;
  v6 = updateCopy;
  dispatch_async(discoveryNotificationQueue, v7);
}

void __52__WBSExtensionsController_queryControllerDidUpdate___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) extensionIdentities];
  v3 = [v2 safari_mapObjectsUsingBlock:&__block_literal_global_44];

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __52__WBSExtensionsController_queryControllerDidUpdate___block_invoke_3;
  v5[3] = &unk_1E8282EA0;
  v5[4] = *(a1 + 40);
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);
}

id __52__WBSExtensionsController_queryControllerDidUpdate___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = [MEMORY[0x1E696ABD0] extensionWithIdentity:a2 error:0];

  return v2;
}

- (void)_extensionDiscoveryHasNewResults:(id)results
{
  v17 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  v5 = WBS_LOG_CHANNEL_PREFIXExtensions();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v16 = resultsCopy;
    _os_log_impl(&dword_1C6968000, v5, OS_LOG_TYPE_INFO, "Discovered these extensions: %@", buf, 0xCu);
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  allProfileExtensionsControllers = [(WBSExtensionsController *)self allProfileExtensionsControllers];
  v7 = [allProfileExtensionsControllers countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v7)
  {
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(allProfileExtensionsControllers);
        }

        [*(*(&v10 + 1) + 8 * v9++) _beginMatchingExtensionsWithAttributesCompletedWithMatchingExtensions:resultsCopy];
      }

      while (v7 != v9);
      v7 = [allProfileExtensionsControllers countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  [objc_opt_class() _didDiscoverExtensions:{objc_msgSend(resultsCopy, "count") != 0}];
}

- (void)_beginMatchingExtensionsWithAttributesCompletedWithMatchingExtensions:(id)extensions
{
  extensionsCopy = extensions;
  self->_hasDiscoveredExtensions = 1;
  allObjects = [(NSMutableSet *)self->_unpackedExtensions allObjects];
  v5 = allObjects;
  if (allObjects)
  {
    v6 = allObjects;
  }

  else
  {
    v6 = MEMORY[0x1E695E0F0];
  }

  v7 = [extensionsCopy arrayByAddingObjectsFromArray:v6];
  allDiscoveredExtensions = self->_allDiscoveredExtensions;
  self->_allDiscoveredExtensions = v7;

  self->_hasPopulatedAllExtensionsFromExtensionDiscoveryAtLeastOnce = 1;
  if (self->_loadEnabledExtensionsWasCalled || self->_forceExtensionLoadingAfterDiscovery)
  {
    [(WBSExtensionsController *)self loadSuitableDiscoveredExtensions];
  }
}

- (void)_endExtensionDiscovery
{
  extensionKitQueryController = self->_extensionKitQueryController;
  if (extensionKitQueryController)
  {
    [(_EXQueryController *)extensionKitQueryController suspend];
    v4 = self->_extensionKitQueryController;
    self->_extensionKitQueryController = 0;
  }
}

+ (id)extensionKitQueriesWithExtensionPoint:(id)point platforms:(id)platforms predicate:(id)predicate
{
  v23 = *MEMORY[0x1E69E9840];
  pointCopy = point;
  platformsCopy = platforms;
  predicateCopy = predicate;
  array = [MEMORY[0x1E695DF70] array];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = platformsCopy;
  v12 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v12)
  {
    v13 = *v19;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = *(*(&v18 + 1) + 8 * i);
        v16 = [objc_alloc(MEMORY[0x1E6966CE0]) initWithExtensionPointIdentifier:pointCopy predicate:predicateCopy];
        [v16 setPlatform:{objc_msgSend(v15, "intValue")}];
        [v16 setExcludeLockedApps:1];
        [array addObject:v16];
      }

      v12 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v12);
  }

  return array;
}

- (id)extensionDataForExtension:(id)extension
{
  v17 = *MEMORY[0x1E69E9840];
  extensionCopy = extension;
  objc_opt_class();
  objc_opt_isKindOfClass();
  if (!extensionCopy)
  {
    v10 = 0;
    goto LABEL_14;
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_extensionUniqueIdentifierToExtensionDataMap)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    extensionUniqueIdentifierToExtensionDataMap = selfCopy->_extensionUniqueIdentifierToExtensionDataMap;
    selfCopy->_extensionUniqueIdentifierToExtensionDataMap = dictionary;
  }

  objc_sync_exit(selfCopy);

  sf_uniqueIdentifier = [extensionCopy sf_uniqueIdentifier];
  if (!sf_uniqueIdentifier)
  {
    goto LABEL_12;
  }

  v9 = selfCopy;
  objc_sync_enter(v9);
  v10 = [(NSMutableDictionary *)selfCopy->_extensionUniqueIdentifierToExtensionDataMap objectForKeyedSubscript:sf_uniqueIdentifier];
  objc_sync_exit(v9);

  if (!v10)
  {
    v10 = [objc_alloc(objc_msgSend(objc_opt_class() "_extensionDataClass"))];
    if (v10)
    {
      v11 = v9;
      objc_sync_enter(v11);
      [(NSMutableDictionary *)selfCopy->_extensionUniqueIdentifierToExtensionDataMap setObject:v10 forKeyedSubscript:sf_uniqueIdentifier];
      objc_sync_exit(v11);

      goto LABEL_13;
    }

    v12 = WBS_LOG_CHANNEL_PREFIXExtensions();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      identifier = [extensionCopy identifier];
      v15 = 138412290;
      v16 = identifier;
      _os_log_impl(&dword_1C6968000, v12, OS_LOG_TYPE_INFO, "Extension with identifier %@ failed to initialize", &v15, 0xCu);
    }

    [(WBSExtensionsController *)v9 _disableAndBlockExtension:extensionCopy];
LABEL_12:
    v10 = 0;
  }

LABEL_13:

LABEL_14:

  return v10;
}

- (id)composedIdentifierForExtensionStateForExtension:(id)extension
{
  extensionCopy = extension;
  v5 = objc_opt_class();
  identifier = [extensionCopy identifier];
  v7 = [(WBSExtensionsController *)self _developerIdentifierForExtension:extensionCopy];
  v8 = [v5 _composedIdentifierForStateOfExtensionWithBundleIdentifier:identifier developerIdentifier:v7];

  return v8;
}

- (id)lastSeenBaseURIForExtension:(id)extension
{
  v3 = [(WBSExtensionsController *)self _extensionStateForExtension:extension];
  v4 = v3;
  if (v3)
  {
    v5 = MEMORY[0x1E695DFF8];
    v6 = [v3 objectForKeyedSubscript:@"LastSeenBaseURI"];
    v7 = [v5 URLWithString:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)lastSeenBaseURIForExtension:(id)extension updatingWithCurrentBaseURI:(id)i
{
  extensionCopy = extension;
  iCopy = i;
  v8 = [(WBSExtensionsController *)self _extensionStateForExtension:extensionCopy];
  dictionary = [v8 mutableCopy];

  if (!dictionary)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
  }

  v10 = MEMORY[0x1E695DFF8];
  v11 = [dictionary objectForKeyedSubscript:@"LastSeenBaseURI"];
  v12 = [v10 URLWithString:v11];

  absoluteString = [iCopy absoluteString];
  [dictionary setObject:absoluteString forKeyedSubscript:@"LastSeenBaseURI"];

  v14 = [(WBSExtensionsController *)self composedIdentifierForExtensionStateForExtension:extensionCopy];
  [(WBSExtensionsController *)self _setExtensionIdentifierToStateMap:dictionary forExtensionWithComposedIdentifier:v14];

  return v12;
}

- (void)moveLocalStorageForExtension:(id)extension completionHandler:(id)handler
{
  extensionCopy = extension;
  handlerCopy = handler;
  v7 = [(WBSExtensionsController *)self extensionDataForExtension:extensionCopy];
  safariExtensionBaseURI = [v7 safariExtensionBaseURI];
  v9 = [(WBSExtensionsController *)self lastSeenBaseURIForExtension:extensionCopy updatingWithCurrentBaseURI:safariExtensionBaseURI];
  v10 = v9;
  if (v9 && ([v9 host], v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(safariExtensionBaseURI, "host"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v11, "isEqualToString:", v12), v12, v11, !v13))
  {
    {
      [WBSExtensionsController moveLocalStorageForExtension:completionHandler:]::dataTypes = [MEMORY[0x1E695DFD8] setWithObjects:{*MEMORY[0x1E6985448], *MEMORY[0x1E6985450], 0}];
    }

    websiteDataStore = [(WBSExtensionsController *)self websiteDataStore];
    [websiteDataStore _renameOrigin:v10 to:safariExtensionBaseURI forDataOfTypes:-[WBSExtensionsController moveLocalStorageForExtension:completionHandler:]::dataTypes completionHandler:handlerCopy];
  }

  else
  {
    handlerCopy[2](handlerCopy);
  }
}

- (void)_loadExtensions:(id)extensions skipEqualityCheck:(BOOL)check
{
  v80 = *MEMORY[0x1E69E9840];
  extensionsCopy = extensions;
  if (extensionsCopy && (!WBSIsEqual() || check))
  {
    v6 = WBS_LOG_CHANNEL_PREFIXExtensions();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      *buf = 138412547;
      v77 = v8;
      v78 = 2113;
      v79 = extensionsCopy;
      _os_log_impl(&dword_1C6968000, v6, OS_LOG_TYPE_INFO, "Loading extensions in class %@: %{private}@ ", buf, 0x16u);
    }

    if (!self->_extensionIdentifierToStateMap)
    {
      readExtensionsStateFromStorage = [(WBSExtensionsController *)self readExtensionsStateFromStorage];
      v10 = [readExtensionsStateFromStorage mutableCopy];
      extensionIdentifierToStateMap = self->_extensionIdentifierToStateMap;
      self->_extensionIdentifierToStateMap = v10;
    }

    v12 = [(NSMutableSet *)self->_replacedExtensions mutableCopy];
    blockedExtensions = self->_blockedExtensions;
    self->_blockedExtensions = v12;

    v53 = [MEMORY[0x1E695DFA8] set];
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v14 = self->_extensions;
    v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v68 objects:v75 count:16];
    if (v15)
    {
      v16 = *v69;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v69 != v16)
          {
            objc_enumerationMutation(v14);
          }

          v18 = *(*(&v68 + 1) + 8 * i);
          if (([extensionsCopy containsObject:v18] & 1) == 0)
          {
            v19 = WBS_LOG_CHANNEL_PREFIXExtensions();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
            {
              identifier = [v18 identifier];
              *buf = 138412290;
              v77 = identifier;
              _os_log_impl(&dword_1C6968000, v19, OS_LOG_TYPE_INFO, "Extension with identifier %@ was removed", buf, 0xCu);
            }

            [(WBSExtensionsController *)self unloadExtensionIfNecessary:v18];
            v21 = [(WBSExtensionsController *)self composedIdentifierForExtensionStateForExtension:v18];
            [(WBSExtensionsController *)self _updateExtensionStateAfterExtensionWasRemovedWithComposedIdentifier:v21];

            [(WBSExtensionsController *)self _removeSafariExtensionDataForExtension:v18];
            [v53 addObject:v18];
          }
        }

        v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v68 objects:v75 count:16];
      }

      while (v15);
    }

    v51 = [MEMORY[0x1E695DFA8] set];
    array = [MEMORY[0x1E695DF70] array];
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v22 = extensionsCopy;
    v23 = [v22 countByEnumeratingWithState:&v64 objects:v74 count:16];
    if (v23)
    {
      v25 = *v65;
      *&v24 = 138412290;
      v50 = v24;
      do
      {
        for (j = 0; j != v23; ++j)
        {
          if (*v65 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = *(*(&v64 + 1) + 8 * j);
          if (([(NSMutableArray *)self->_extensions containsObject:v27, v50]& 1) == 0)
          {
            [v51 addObject:v27];
          }

          v28 = WBS_LOG_CHANNEL_PREFIXExtensions();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
          {
            identifier2 = [v27 identifier];
            *buf = v50;
            v77 = identifier2;
            _os_log_impl(&dword_1C6968000, v28, OS_LOG_TYPE_INFO, "Extension with identifier %@ was added", buf, 0xCu);
          }

          buf[0] = 0;
          [(WBSExtensionsController *)self _validateAndLoadExtensionIfNecessary:v27 attemptRetryOnFailure:1 isExtensionNewlyInstalled:buf];
          if (buf[0] == 1)
          {
            [array addObject:v27];
          }
        }

        v23 = [v22 countByEnumeratingWithState:&v64 objects:v74 count:16];
      }

      while (v23);
    }

    v63[0] = MEMORY[0x1E69E9820];
    v63[1] = 3221225472;
    v63[2] = __61__WBSExtensionsController__loadExtensions_skipEqualityCheck___block_invoke;
    v63[3] = &unk_1E8283E40;
    v63[4] = self;
    v30 = [v22 safari_filterObjectsUsingBlock:v63];
    v31 = [v30 mutableCopy];
    extensions = self->_extensions;
    self->_extensions = v31;

    if (!self->_allDiscoveredExtensions)
    {
      self->_hasDiscoveredExtensions = 1;
      v33 = [(NSMutableArray *)self->_extensions copy];
      allDiscoveredExtensions = self->_allDiscoveredExtensions;
      self->_allDiscoveredExtensions = v33;
    }

    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v35 = v51;
    v36 = [v35 countByEnumeratingWithState:&v59 objects:v73 count:16];
    if (v36)
    {
      v37 = *v60;
      v38 = *MEMORY[0x1E69C92B8];
      do
      {
        for (k = 0; k != v36; ++k)
        {
          if (*v60 != v37)
          {
            objc_enumerationMutation(v35);
          }

          v40 = *(*(&v59 + 1) + 8 * k);
          if (([(NSMutableSet *)self->_blockedExtensions containsObject:v40]& 1) == 0)
          {
            v41 = [(WBSExtensionsController *)self composedIdentifierForExtensionStateForExtension:v40];
            [(WBSExtensionsController *)self _updateExtensionStateAfterExtensionWasAddedWithComposedIdentifier:v41];

            defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
            [defaultCenter postNotificationName:v38 object:v40];
          }
        }

        v36 = [v35 countByEnumeratingWithState:&v59 objects:v73 count:16];
      }

      while (v36);
    }

    if ([v35 count])
    {
      [(WBSExtensionsController *)self _updateExtensionNewTabPageIfNecessary];
    }

    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v43 = v53;
    v44 = [v43 countByEnumeratingWithState:&v55 objects:v72 count:16];
    if (v44)
    {
      v45 = *v56;
      v46 = *MEMORY[0x1E69C92C0];
      do
      {
        for (m = 0; m != v44; ++m)
        {
          if (*v56 != v45)
          {
            objc_enumerationMutation(v43);
          }

          v48 = *(*(&v55 + 1) + 8 * m);
          defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
          [defaultCenter2 postNotificationName:v46 object:v48];
        }

        v44 = [v43 countByEnumeratingWithState:&v55 objects:v72 count:16];
      }

      while (v44);
    }

    [(WBSExtensionsController *)self _showNewExtensionBannerIfNecessaryForExtensions:array];
    [(WBSExtensionsController *)self _finishedLoadingExtensions];
  }

  else
  {
    [(WBSExtensionsController *)self _finishedLoadingExtensions];
  }
}

- (void)_validateAndLoadExtensionIfNecessary:(id)necessary attemptRetryOnFailure:(BOOL)failure isExtensionNewlyInstalled:(BOOL *)installed
{
  failureCopy = failure;
  v35 = *MEMORY[0x1E69E9840];
  necessaryCopy = necessary;
  if (([(NSMutableSet *)self->_enabledExtensions containsObject:necessaryCopy]& 1) == 0)
  {
    v9 = WBS_LOG_CHANNEL_PREFIXExtensions();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      identifier = [necessaryCopy identifier];
      *buf = 138477827;
      v34 = identifier;
      _os_log_impl(&dword_1C6968000, v9, OS_LOG_TYPE_INFO, "Loading extension with identifier: %{private}@", buf, 0xCu);
    }

    v11 = [(WBSExtensionsController *)self extensionDataForExtension:necessaryCopy];
    if (v11)
    {
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __112__WBSExtensionsController__validateAndLoadExtensionIfNecessary_attemptRetryOnFailure_isExtensionNewlyInstalled___block_invoke;
      aBlock[3] = &unk_1E8283E68;
      aBlock[4] = self;
      v12 = necessaryCopy;
      v31 = v12;
      v32 = failureCopy;
      v13 = _Block_copy(aBlock);
      v14 = v13[2](v13, v12);
      if (v14)
      {
        v29 = [(WBSExtensionsController *)self _developerIdentifierForExtension:v12 untrustedCodeSigningDictionary:0];
        [(WBSExtensionsController *)self _replaceExtensionsObsoletedByExtension:v12 developerIdentifier:?];
        v15 = [(WBSExtensionsController *)self _extensionStateForExtension:v12];
        v16 = v15 == 0;

        if (v16)
        {
          v17 = WBS_LOG_CHANNEL_PREFIXExtensions();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            identifier2 = [v12 identifier];
            *buf = 138412290;
            v34 = identifier2;
            _os_log_impl(&dword_1C6968000, v17, OS_LOG_TYPE_INFO, "Extension with identifier %@ was installed", buf, 0xCu);
          }

          if (installed)
          {
            *installed = 1;
          }
        }

        if (self->_loadEnabledExtensionsWasCalled)
        {
          [(WBSExtensionsController *)self _updateExtensionStateIfThisVersionOfSafariIsNotSupported:v12];
          [(WBSExtensionsController *)self _updateExtensionStateIfPermissionsIncreased:v12];
          [(WBSExtensionsController *)self _updateExtensionStateWithPrivacyPreservingProfileIdentifierIfNeeded:v12];
          if ([(WBSExtensionsController *)self _extensionShouldBeEnabled:v12])
          {
            [(NSMutableSet *)self->_enabledExtensions addObject:v12];
            [(WBSExtensionsController *)self _grantRequestedPermissionsIfNecessaryForExtension:v11];
            _extensionBundle = [v12 _extensionBundle];
            resourceURL = [_extensionBundle resourceURL];
            absoluteURL = [resourceURL absoluteURL];

            v21 = v11;
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();
            if (isKindOfClass)
            {
              v23 = v21;
            }

            else
            {
              v23 = 0;
            }

            v27 = v23;

            if (isKindOfClass)
            {
              resourcesDirectoryURL = [v21 resourcesDirectoryURL];

              absoluteURL = resourcesDirectoryURL;
            }

            [(WBSExtensionsController *)self _addExtensionToBaseURIMap:v12 withResourceURL:absoluteURL];
            [(WBSExtensionsController *)self _loadEnabledExtension:v12];
            [(WBSExtensionsController *)self _updateExtensionsCrashReporterMessage];
            [(WBSExtensionsController *)self _connectToExtensionForValidation:v12 untrustedCodeSigningDictionary:v14 attemptRetryOnFailure:failureCopy];
            if (installed)
            {
              *installed = 0;
            }
          }
        }
      }
    }

    else
    {
      v25 = WBS_LOG_CHANNEL_PREFIXExtensions();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        identifier3 = [necessaryCopy identifier];
        *buf = 138412290;
        v34 = identifier3;
        _os_log_impl(&dword_1C6968000, v25, OS_LOG_TYPE_INFO, "Failed to load data for extension with identifier %@", buf, 0xCu);
      }

      [(WBSExtensionsController *)self _disableAndBlockExtension:necessaryCopy];
    }
  }
}

id __112__WBSExtensionsController__validateAndLoadExtensionIfNecessary_attemptRetryOnFailure_isExtensionNewlyInstalled___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _extensionsControllerForDefaultProfile];
  v3 = [v2 _computeCodeSigningDictionaryOnDiskForExtension:*(a1 + 40) attemptRetryOnFailure:*(a1 + 48)];

  if (v3)
  {
    v4 = [*(a1 + 32) _developerIdentifierForExtension:*(a1 + 40) untrustedCodeSigningDictionary:v3];
    if ([*(a1 + 32) _isExtensionBlockedByBlocklist:*(a1 + 40) developerIdentifier:v4])
    {
      v5 = v3;
      v3 = 0;
    }

    else
    {
      v6 = [*(a1 + 32) _extensionsControllerForDefaultProfile];
      [v6 _validateContainingAppOfExtensionIfNecessary:*(a1 + 40) attemptRetryOnFailure:*(a1 + 48)];

      v5 = 0;
    }
  }

  return v3;
}

- (BOOL)_extensionShouldBeEnabled:(id)enabled
{
  v23 = *MEMORY[0x1E69E9840];
  enabledCopy = enabled;
  if (!self->_extensionIdentifierToStateMap)
  {
    readExtensionsStateFromStorage = [(WBSExtensionsController *)self readExtensionsStateFromStorage];
    v6 = [readExtensionsStateFromStorage mutableCopy];
    extensionIdentifierToStateMap = self->_extensionIdentifierToStateMap;
    self->_extensionIdentifierToStateMap = v6;
  }

  v8 = [(WBSExtensionsController *)self _extensionStateForExtension:enabledCopy];
  v9 = *MEMORY[0x1E69C95F0];
  v10 = [v8 objectForKeyedSubscript:*MEMORY[0x1E69C95F0]];

  if (v10)
  {
    v11 = [v8 safari_BOOLForKey:v9];
  }

  else
  {
    v11 = [(WBSExtensionsController *)self _extensionShouldBeAutomaticallyEnabled:enabledCopy];
  }

  v12 = v11;
  v13 = [(WBSExtensionsController *)self composedIdentifierForExtensionStateForExtension:enabledCopy];
  mEMORY[0x1E69C88C8] = [MEMORY[0x1E69C88C8] sharedController];
  v15 = [mEMORY[0x1E69C88C8] managedExtensionStateForComposedIdentifier:v13];

  v16 = (v15 != 1) | v12;
  if (!((v15 != 1) | v12 & 1))
  {
    v19 = WBS_LOG_CHANNEL_PREFIXManagedExtensions();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v21 = 138477827;
      v22 = v13;
      _os_log_impl(&dword_1C6968000, v19, OS_LOG_TYPE_INFO, "Enabling extension %{private}@ due to managed extension configuration", &v21, 0xCu);
    }

    v18 = [v8 mutableCopy];
    [v18 setObject:MEMORY[0x1E695E118] forKeyedSubscript:v9];
    [v18 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E69C9638]];
    [(WBSExtensionsController *)self _setExtensionState:v18 forExtension:enabledCopy];
    goto LABEL_14;
  }

  if (((v15 == 2) & v12) == 1)
  {
    v17 = WBS_LOG_CHANNEL_PREFIXManagedExtensions();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v21 = 138477827;
      v22 = v13;
      _os_log_impl(&dword_1C6968000, v17, OS_LOG_TYPE_INFO, "Disabling extension %{private}@ due to managed extension configuration", &v21, 0xCu);
    }

    v18 = [v8 mutableCopy];
    [v18 setObject:MEMORY[0x1E695E110] forKeyedSubscript:v9];
    [(WBSExtensionsController *)self _setExtensionState:v18 forExtension:enabledCopy];
LABEL_14:

    v12 = v16 ^ 1;
  }

  return v12 & 1;
}

- (id)_extensionStateForExtension:(id)extension
{
  v4 = [(WBSExtensionsController *)self composedIdentifierForExtensionStateForExtension:extension];
  v5 = [(NSMutableDictionary *)self->_extensionIdentifierToStateMap safari_dictionaryForKey:v4];

  return v5;
}

- (void)writeExtensionsStateToStorageWithCompletionHandler:(id)handler
{
  v25 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v5 = WBS_LOG_CHANNEL_PREFIXExtensions();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1C6968000, v5, OS_LOG_TYPE_INFO, "writeExtensionsStateToStorageWithCompletionHandler:", buf, 2u);
  }

  _urlForExtensionSettings = [(WBSExtensionsController *)self _urlForExtensionSettings];
  if (_urlForExtensionSettings)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __78__WBSExtensionsController_writeExtensionsStateToStorageWithCompletionHandler___block_invoke;
    aBlock[3] = &unk_1E8283E90;
    aBlock[4] = self;
    v23 = handlerCopy;
    v7 = _Block_copy(aBlock);
    v8 = [objc_alloc(MEMORY[0x1E696ABF8]) initWithFilePresenter:0];
    v21 = 0;
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __78__WBSExtensionsController_writeExtensionsStateToStorageWithCompletionHandler___block_invoke_62;
    v19 = &unk_1E8283EB8;
    v9 = v7;
    v20 = v9;
    [v8 coordinateWritingItemAtURL:_urlForExtensionSettings options:8 error:&v21 byAccessor:&v16];
    v10 = v21;
    if (v10)
    {
      v11 = WBS_LOG_CHANNEL_PREFIXExtensions();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [v10 safari_privacyPreservingDescription];
        objc_claimAutoreleasedReturnValue();
        [WBSExtensionsController writeExtensionsStateToStorageWithCompletionHandler:];
      }
    }

    if ([WBSWebExtensionUtilities isProfileServerIDForDefaultProfile:self->_profileServerID, v16, v17, v18, v19])
    {
      _extensionDefaults = [objc_opt_class() _extensionDefaults];
      hasAnyEnabledExtensionsInStorage = [(WBSExtensionsController *)self hasAnyEnabledExtensionsInStorage];
      _skipLoadingEnabledExtensionsAtLaunchPreferenceKey = [objc_opt_class() _skipLoadingEnabledExtensionsAtLaunchPreferenceKey];
      [_extensionDefaults setBool:!hasAnyEnabledExtensionsInStorage forKey:_skipLoadingEnabledExtensionsAtLaunchPreferenceKey];
    }
  }

  else
  {
    v15 = WBS_LOG_CHANNEL_PREFIXExtensions();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [WBSExtensionsController writeExtensionsStateToStorageWithCompletionHandler:];
    }
  }
}

void __78__WBSExtensionsController_writeExtensionsStateToStorageWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v9[4] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  v9[0] = 0;
  v5 = [v4 writeToURL:v3 error:v9];
  v6 = v9[0];
  if ((v5 & 1) == 0)
  {
    v7 = WBS_LOG_CHANNEL_PREFIXExtensions();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [v6 safari_privacyPreservingDescription];
      objc_claimAutoreleasedReturnValue();
      __78__WBSExtensionsController_writeExtensionsStateToStorageWithCompletionHandler___block_invoke_cold_1();
    }
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    (*(v8 + 16))();
  }
}

- (void)reloadExtensionStateFromStorage
{
  readExtensionsStateFromStorage = [(WBSExtensionsController *)self readExtensionsStateFromStorage];
  v3 = [readExtensionsStateFromStorage mutableCopy];
  extensionIdentifierToStateMap = self->_extensionIdentifierToStateMap;
  self->_extensionIdentifierToStateMap = v3;
}

- (id)readExtensionsStateFromStorage
{
  _urlForExtensionSettings = [(WBSExtensionsController *)self _urlForExtensionSettings];
  v4 = [(WBSExtensionsController *)self _readExtensionsStateFromStorageFromURL:_urlForExtensionSettings];

  return v4;
}

- (id)_readExtensionsStateFromStorageFromURL:(id)l
{
  v22 = *MEMORY[0x1E69E9840];
  lCopy = l;
  if (lCopy)
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x3032000000;
    v19 = __Block_byref_object_copy__1;
    v20 = __Block_byref_object_dispose__1;
    v21 = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __66__WBSExtensionsController__readExtensionsStateFromStorageFromURL___block_invoke;
    aBlock[3] = &unk_1E8283EE0;
    aBlock[4] = &v16;
    v4 = _Block_copy(aBlock);
    v5 = [objc_alloc(MEMORY[0x1E696ABF8]) initWithFilePresenter:0];
    v14 = 0;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __66__WBSExtensionsController__readExtensionsStateFromStorageFromURL___block_invoke_2;
    v12[3] = &unk_1E8283EB8;
    v6 = v4;
    v13 = v6;
    [v5 coordinateReadingItemAtURL:lCopy options:1 error:&v14 byAccessor:v12];
    v7 = v14;
    if (v7)
    {
      v8 = WBS_LOG_CHANNEL_PREFIXExtensions();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [v7 safari_privacyPreservingDescription];
        objc_claimAutoreleasedReturnValue();
        [WBSExtensionsController _readExtensionsStateFromStorageFromURL:];
      }

      dictionary = MEMORY[0x1E695E0F8];
    }

    else
    {
      dictionary = v17[5];
    }

    _Block_object_dispose(&v16, 8);
  }

  else
  {
    v10 = WBS_LOG_CHANNEL_PREFIXExtensions();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [WBSExtensionsController writeExtensionsStateToStorageWithCompletionHandler:];
    }

    dictionary = [MEMORY[0x1E695DF20] dictionary];
  }

  return dictionary;
}

void __66__WBSExtensionsController__readExtensionsStateFromStorageFromURL___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfURL:?];
  v4 = v3;
  if (!v3)
  {
    v4 = [MEMORY[0x1E695DF20] dictionary];
  }

  objc_storeStrong((*(*(a1 + 32) + 8) + 40), v4);
  if (!v3)
  {
  }
}

- (void)_setExtensionIdentifierToStateMap:(id)map forExtensionWithComposedIdentifier:(id)identifier completionHandler:(id)handler
{
  mapCopy = map;
  identifierCopy = identifier;
  handlerCopy = handler;
  extensionIdentifierToStateMap = self->_extensionIdentifierToStateMap;
  if (!extensionIdentifierToStateMap)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v12 = self->_extensionIdentifierToStateMap;
    self->_extensionIdentifierToStateMap = dictionary;

    extensionIdentifierToStateMap = self->_extensionIdentifierToStateMap;
  }

  v13 = [(NSMutableDictionary *)extensionIdentifierToStateMap safari_dictionaryForKey:identifierCopy];
  v14 = [v13 isEqualToDictionary:mapCopy];

  if ((v14 & 1) == 0)
  {
    [(NSMutableDictionary *)self->_extensionIdentifierToStateMap setObject:mapCopy forKeyedSubscript:identifierCopy];
    [(WBSExtensionsController *)self writeExtensionsStateToStorageWithCompletionHandler:handlerCopy];
  }
}

- (void)_updateExtensionStateAfterExtensionWasAddedWithComposedIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [(NSMutableDictionary *)self->_extensionIdentifierToStateMap safari_dictionaryForKey:?];
  dictionary = [v4 mutableCopy];

  if (!dictionary)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
  }

  v6 = *MEMORY[0x1E69C9288];
  v7 = [dictionary objectForKeyedSubscript:*MEMORY[0x1E69C9288]];
  if (v7)
  {

    v8 = *MEMORY[0x1E69C9280];
  }

  else
  {
    v8 = *MEMORY[0x1E69C9280];
    v11 = [dictionary objectForKeyedSubscript:*MEMORY[0x1E69C9280]];

    if (v11)
    {
      goto LABEL_9;
    }
  }

  v9 = [dictionary objectForKeyedSubscript:v8];

  if (!v9)
  {
    v10 = [MEMORY[0x1E695DF00] now];
    [dictionary setObject:v10 forKeyedSubscript:v8];
  }

  [dictionary setObject:0 forKeyedSubscript:v6];
  [(WBSExtensionsController *)self _setExtensionIdentifierToStateMap:dictionary forExtensionWithComposedIdentifier:identifierCopy];
LABEL_9:
}

- (void)_resetExtensionsState
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [(NSMutableDictionary *)self->_extensionIdentifierToStateMap copy];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  extensionIdentifierToStateMap = self->_extensionIdentifierToStateMap;
  self->_extensionIdentifierToStateMap = dictionary;

  [(WBSExtensionsController *)self _writeExtensionsStateToStorage];
  enabledExtensions = self->_enabledExtensions;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __48__WBSExtensionsController__resetExtensionsState__block_invoke;
  v15[3] = &unk_1E8283F08;
  v15[4] = self;
  [(NSMutableSet *)enabledExtensions enumerateObjectsUsingBlock:v15];
  [(NSMutableSet *)self->_enabledExtensions removeAllObjects];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v7 = v3;
  v8 = [v7 countByEnumeratingWithState:&v11 objects:v16 count:16];
  if (v8)
  {
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v7);
        }

        [(WBSExtensionsController *)self _deleteStorageForExtensionWithComposedIdentifier:*(*(&v11 + 1) + 8 * v10++), v11];
      }

      while (v8 != v10);
      v8 = [v7 countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v8);
  }
}

void __48__WBSExtensionsController__resetExtensionsState__block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = WBS_LOG_CHANNEL_PREFIXExtensions();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [v3 identifier];
    v7 = 138477827;
    v8 = v5;
    _os_log_impl(&dword_1C6968000, v4, OS_LOG_TYPE_INFO, "Unloading extension with identifier %{private}@ because we are resetting extensions state", &v7, 0xCu);
  }

  [*(a1 + 32) unloadExtensionIfNecessary:v3];
  v6 = [MEMORY[0x1E696AD88] defaultCenter];
  [v6 postNotificationName:*MEMORY[0x1E69C9220] object:v3];
}

- (void)resetExtensionsStateAndReloadExtensions
{
  [(WBSExtensionsController *)self _resetExtensionsState];
  v5 = self->_extensions;
  array = [MEMORY[0x1E695DF70] array];
  extensions = self->_extensions;
  self->_extensions = array;

  [(WBSExtensionsController *)self _loadExtensions:v5];
}

- (BOOL)hasAnyEnabledExtensionsInStorage
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = self->_extensionIdentifierToStateMap;
  v4 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = *v13;
    v6 = *MEMORY[0x1E69C95F0];
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [(NSMutableDictionary *)self->_extensionIdentifierToStateMap safari_dictionaryForKey:*(*(&v12 + 1) + 8 * i), v12];
        v9 = [v8 safari_BOOLForKey:v6];

        if (v9)
        {
          v10 = 1;
          goto LABEL_11;
        }
      }

      v4 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (NSDictionary)extensionIdentifierToBaseURIMap
{
  v2 = [(NSMutableDictionary *)self->_extensionIdentifierToBaseURIMap copy];

  return v2;
}

- (BOOL)extensionIsEnabled:(id)enabled
{
  enabledCopy = enabled;
  v5 = ([(NSMutableSet *)self->_enabledExtensions containsObject:enabledCopy]& 1) != 0 || [(WBSExtensionsController *)self _extensionShouldBeEnabled:enabledCopy];

  return v5;
}

- (void)setExtension:(id)extension isEnabled:(BOOL)enabled dueToUserGesture:(BOOL)gesture skipSavingToStorage:(BOOL)storage
{
  enabledCopy = enabled;
  v38 = *MEMORY[0x1E69E9840];
  extensionCopy = extension;
  v11 = [(WBSExtensionsController *)self composedIdentifierForExtensionStateForExtension:extensionCopy];
  v12 = [(NSMutableDictionary *)self->_extensionIdentifierToStateMap objectForKeyedSubscript:v11];
  v13 = [v12 mutableCopy];
  v14 = v13;
  if (v13)
  {
    dictionary = v13;
  }

  else
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
  }

  v16 = dictionary;

  if (storage || [v16 safari_BOOLForKey:*MEMORY[0x1E69C95F0]] != enabledCopy)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __87__WBSExtensionsController_setExtension_isEnabled_dueToUserGesture_skipSavingToStorage___block_invoke;
    aBlock[3] = &unk_1E8283F30;
    v33 = enabledCopy;
    gestureCopy = gesture;
    v30 = v16;
    selfCopy = self;
    v32 = v11;
    storageCopy = storage;
    v17 = _Block_copy(aBlock);
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __87__WBSExtensionsController_setExtension_isEnabled_dueToUserGesture_skipSavingToStorage___block_invoke_2;
    v26[3] = &unk_1E8282EA0;
    v18 = extensionCopy;
    v27 = v18;
    selfCopy2 = self;
    v19 = _Block_copy(v26);
    if (enabledCopy)
    {
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __87__WBSExtensionsController_setExtension_isEnabled_dueToUserGesture_skipSavingToStorage___block_invoke_67;
      v23[3] = &unk_1E8283F58;
      v24 = v17;
      v25 = v19;
      [(WBSExtensionsController *)self _enableExtension:v18 completionHandler:v23];

      defaultCenter = v24;
    }

    else
    {
      v17[2](v17);
      v21 = WBS_LOG_CHANNEL_PREFIXExtensions();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        identifier = [v18 identifier];
        *buf = 138477827;
        v37 = identifier;
        _os_log_impl(&dword_1C6968000, v21, OS_LOG_TYPE_INFO, "Extension with identifier %{private}@ was disabled by the user", buf, 0xCu);
      }

      [(WBSExtensionsController *)self unloadExtensionIfNecessary:v18];
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter postNotificationName:*MEMORY[0x1E69C9220] object:v18];
    }

    [(WBSExtensionsController *)self _notifyObserversContentBlockerListDidChange];
  }
}

void __87__WBSExtensionsController_setExtension_isEnabled_dueToUserGesture_skipSavingToStorage___block_invoke(uint64_t a1)
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 56)];
  [*(a1 + 32) setObject:? forKeyedSubscript:?];

  v5 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 57)];
  [*(a1 + 32) setObject:? forKeyedSubscript:?];

  v6 = [MEMORY[0x1E695DF00] now];
  [*(a1 + 32) setObject:? forKeyedSubscript:?];

  if (*(a1 + 56) == 1 && (*(a1 + 57) & 1) == 0)
  {
    v2 = 1;
    v3 = [MEMORY[0x1E696AD98] numberWithBool:1];
  }

  else
  {
    v2 = 0;
    v3 = 0;
  }

  v7 = v3;
  [*(a1 + 32) setObject:v3 forKeyedSubscript:*MEMORY[0x1E69C9638]];
  if (v2)
  {
  }

  [*(*(a1 + 40) + 24) setObject:*(a1 + 32) forKeyedSubscript:*(a1 + 48)];
  if ((*(a1 + 58) & 1) == 0)
  {
    [*(a1 + 40) writeExtensionsStateToStorageWithCompletionHandler:0];
  }

  v8 = +[WBSCloudExtensionStateManager sharedManager];
  [v8 localExtensionStateDidChange];
}

void __87__WBSExtensionsController_setExtension_isEnabled_dueToUserGesture_skipSavingToStorage___block_invoke_2(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = WBS_LOG_CHANNEL_PREFIXExtensions();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = [*(a1 + 32) identifier];
    v5 = 138477827;
    v6 = v3;
    _os_log_impl(&dword_1C6968000, v2, OS_LOG_TYPE_INFO, "Extension with identifier %{private}@ was enabled by the user", &v5, 0xCu);
  }

  [*(a1 + 40) _validateAndLoadExtensionIfNecessary:*(a1 + 32) attemptRetryOnFailure:1 isExtensionNewlyInstalled:0];
  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 postNotificationName:*MEMORY[0x1E69C9220] object:*(a1 + 32)];
}

uint64_t __87__WBSExtensionsController_setExtension_isEnabled_dueToUserGesture_skipSavingToStorage___block_invoke_67(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (NSSet)extensionStateKeysToCopy
{
  v8[5] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFD8];
  v3 = *MEMORY[0x1E69C9280];
  v8[0] = *MEMORY[0x1E69C95F0];
  v8[1] = v3;
  v4 = *MEMORY[0x1E69C95E8];
  v8[2] = *MEMORY[0x1E69C9288];
  v8[3] = v4;
  v8[4] = *MEMORY[0x1E69C9610];
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:5];
  v6 = [v2 setWithArray:v5];

  return v6;
}

- (void)copyEnabledExtensionStateFromExtensionsController:(id)controller
{
  controllerCopy = controller;
  extensionStateKeysToCopy = [(WBSExtensionsController *)self extensionStateKeysToCopy];
  v6 = controllerCopy[3];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __77__WBSExtensionsController_copyEnabledExtensionStateFromExtensionsController___block_invoke;
  v11[3] = &unk_1E8283FA8;
  v7 = extensionStateKeysToCopy;
  v12 = v7;
  v8 = [v6 safari_mapAndFilterKeysAndObjectsUsingBlock:v11];
  v9 = [v8 mutableCopy];
  extensionIdentifierToStateMap = self->_extensionIdentifierToStateMap;
  self->_extensionIdentifierToStateMap = v9;

  [(WBSExtensionsController *)self _writeExtensionsStateToStorage];
}

id __77__WBSExtensionsController_copyEnabledExtensionStateFromExtensionsController___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __77__WBSExtensionsController_copyEnabledExtensionStateFromExtensionsController___block_invoke_2;
  v6[3] = &unk_1E8283F80;
  v7 = *(a1 + 32);
  v4 = [a3 safari_mapAndFilterKeysUsingBlock:v6];

  return v4;
}

void *__77__WBSExtensionsController_copyEnabledExtensionStateFromExtensionsController___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) containsObject:v3])
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (void)unloadAndDeleteStateForAllExtensions
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_3_1(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_6(&dword_1C6968000, "Unable to delete WebKit profile data for all extensions at %{public}@ with error: %{public}@", v4, v5);
}

- (void)test_enableExtension:(id)extension withResourceURL:(id)l
{
  extensionCopy = extension;
  lCopy = l;
  [(NSMutableSet *)self->_enabledExtensions addObject:extensionCopy];
  [(NSMutableArray *)self->_extensions addObject:extensionCopy];
  allDiscoveredExtensions = self->_allDiscoveredExtensions;
  if (!allDiscoveredExtensions)
  {
    self->_allDiscoveredExtensions = MEMORY[0x1E695E0F0];

    allDiscoveredExtensions = self->_allDiscoveredExtensions;
  }

  v8 = [(NSArray *)allDiscoveredExtensions arrayByAddingObject:extensionCopy];
  v9 = self->_allDiscoveredExtensions;
  self->_allDiscoveredExtensions = v8;

  [(WBSExtensionsController *)self _addExtensionToBaseURIMap:extensionCopy withResourceURL:lCopy];
  [(WBSExtensionsController *)self _loadEnabledExtension:extensionCopy];
  [(WBSExtensionsController *)self _updateExtensionsCrashReporterMessage];
}

- (void)_updateExtensionStateAfterExtensionWasRemovedWithComposedIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [(NSMutableDictionary *)self->_extensionIdentifierToStateMap safari_dictionaryForKey:?];
  v5 = [v4 mutableCopy];

  if (v5)
  {
    v6 = [v5 objectForKeyedSubscript:@"RemovedDate"];

    if (!v6)
    {
      date = [MEMORY[0x1E695DF00] date];
      [v5 setObject:date forKeyedSubscript:@"RemovedDate"];

      [(WBSExtensionsController *)self _setExtensionIdentifierToStateMap:v5 forExtensionWithComposedIdentifier:identifierCopy];
      [(WBSExtensionsController *)self _deleteStateForRemovedExtensionsSoon];
    }
  }
}

- (void)_deleteStateForExtensionWithComposedIdentifier:(id)identifier
{
  v13 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v5 = [(NSMutableDictionary *)self->_extensionIdentifierToStateMap safari_dictionaryForKey:identifierCopy];
  v6 = v5;
  if (self->_extensionIdentifierToStateMap)
  {
    v7 = [v5 objectForKeyedSubscript:@"RemovedDate"];

    if (v7)
    {
      v8 = WBS_LOG_CHANNEL_PREFIXExtensions();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v11 = 138477827;
        v12 = identifierCopy;
        _os_log_impl(&dword_1C6968000, v8, OS_LOG_TYPE_INFO, "Deleting state for removed extension with composed identifier %{private}@", &v11, 0xCu);
      }

      [(NSMutableDictionary *)self->_extensionIdentifierToStateMap setObject:0 forKeyedSubscript:identifierCopy];
      v9 = +[WBSCloudExtensionStateManager sharedManager];
      [v9 localExtensionStateDidChange];

      [(WBSExtensionsController *)self _writeExtensionsStateToStorage];
    }

    else
    {
      v10 = WBS_LOG_CHANNEL_PREFIXExtensions();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = 138477827;
        v12 = identifierCopy;
        _os_log_impl(&dword_1C6968000, v10, OS_LOG_TYPE_INFO, "Not deleting state for removed extension with composed identifier %{private}@ since it was installed again", &v11, 0xCu);
      }
    }
  }
}

- (void)_deleteStateForRemovedExtensions
{
  *buf = 134217984;
  *(buf + 4) = a3;
  _os_log_debug_impl(&dword_1C6968000, a2, OS_LOG_TYPE_DEBUG, "Scheduling a timer to delete state for removed extensions in %f seconds", buf, 0xCu);
}

- (void)_deleteStateForRemovedExtensionsAfterDelay:(double)delay
{
  [(NSTimer *)self->_deleteStateForRemovedExtensionsTimer invalidate];
  v5 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:self target:sel__deleteStateForRemovedExtensionsTimerFired_ selector:0 userInfo:0 repeats:delay];
  deleteStateForRemovedExtensionsTimer = self->_deleteStateForRemovedExtensionsTimer;
  self->_deleteStateForRemovedExtensionsTimer = v5;

  v7 = self->_deleteStateForRemovedExtensionsTimer;

  [(NSTimer *)v7 setTolerance:1.0];
}

- (void)_removeSafariExtensionDataForExtension:(id)extension
{
  sf_uniqueIdentifier = [extension sf_uniqueIdentifier];
  if (sf_uniqueIdentifier)
  {
    [(NSMutableDictionary *)self->_extensionUniqueIdentifierToExtensionDataMap setObject:0 forKeyedSubscript:sf_uniqueIdentifier];
  }
}

- (BOOL)validateAndReadResourceWithExtensionURL:(id)l outResourceData:(id *)data
{
  lCopy = l;
  v7 = lCopy;
  if (data)
  {
    *data = 0;
  }

  host = [lCopy host];
  v9 = [(WBSExtensionsController *)self extensionWithBaseURIHost:host];

  if (v9)
  {
    v10 = [(WBSExtensionsController *)self validateAndReadResourceWithExtensionURL:v7 inExtension:v9 outResourceData:data];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)validateAndReadResourceWithExtensionURL:(id)l inExtension:(id)extension outResourceData:(id *)data
{
  lCopy = l;
  extensionCopy = extension;
  if (data)
  {
    *data = 0;
  }

  _extensionsControllerForDefaultProfile = [(WBSExtensionsController *)self _extensionsControllerForDefaultProfile];
  v11 = [_extensionsControllerForDefaultProfile extensionDataForExtension:extensionCopy];
  bundleCodeRef = [v11 bundleCodeRef];

  v13 = [(WBSExtensionsController *)self validateAndReadResourceWithExtensionURL:lCopy inExtension:extensionCopy codeRef:bundleCodeRef outResourceData:data];
  return v13;
}

- (BOOL)validateAndReadResourceWithExtensionURL:(id)l inExtension:(id)extension codeRef:(__SecCode *)ref outResourceData:(id *)data
{
  lCopy = l;
  extensionCopy = extension;
  if ([lCopy isFileURL])
  {
    v10 = lCopy;
  }

  else
  {
    safari_isSafariExtensionURL = [lCopy safari_isSafariExtensionURL];
    if (!safari_isSafariExtensionURL)
    {
      v17 = 0;
      goto LABEL_14;
    }

    SafariShared::ExtensionURLTranslator::shared(safari_isSafariExtensionURL);
    v10 = SafariShared::ExtensionURLTranslator::fileURLForExtensionURL();
  }

  v12 = v10;
  v13 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v10];
  v14 = v13;
  if (data)
  {
    v15 = v13;
    *data = v14;
  }

  if (v14)
  {
    [extensionCopy safari_isUnpackedExtension];
  }

  else
  {
    v16 = WBS_LOG_CHANNEL_PREFIXExtensions();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [lCopy path];
      objc_claimAutoreleasedReturnValue();
      [extensionCopy identifier];
      objc_claimAutoreleasedReturnValue();
      [WBSExtensionsController validateAndReadResourceWithExtensionURL:inExtension:codeRef:outResourceData:];
    }
  }

  v17 = 1;
LABEL_14:

  return v17;
}

- (void)_addExtensionToBaseURIMap:(id)map withResourceURL:(id)l
{
  mapCopy = map;
  lCopy = l;
  v7 = [(WBSExtensionsController *)self _generateBaseURIForExtension:mapCopy];
  v8 = [(WBSExtensionsController *)self extensionDataForExtension:mapCopy];
  SafariShared::ExtensionURLTranslator::shared([v8 setSafariExtensionBaseURI:v7]);
  displayName = [v8 displayName];
  SafariShared::ExtensionURLTranslator::addExtension();

  sf_uniqueIdentifier = [mapCopy sf_uniqueIdentifier];
  extensionIdentifierToBaseURIMap = self->_extensionIdentifierToBaseURIMap;
  if (extensionIdentifierToBaseURIMap)
  {
    dictionary = [(NSMutableDictionary *)extensionIdentifierToBaseURIMap mutableCopy];
  }

  else
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
  }

  v13 = dictionary;
  [dictionary setObject:v7 forKeyedSubscript:sf_uniqueIdentifier];
  v14 = [v13 copy];
  v15 = self->_extensionIdentifierToBaseURIMap;
  self->_extensionIdentifierToBaseURIMap = v14;

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained extensionBaseURIMapChangedForExtensionsController:self];
}

- (id)extensionWithUUID:(id)d
{
  dCopy = d;
  v5 = dCopy;
  if (dCopy)
  {
    allDiscoveredExtensions = self->_allDiscoveredExtensions;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __45__WBSExtensionsController_extensionWithUUID___block_invoke;
    v14[3] = &unk_1E8283FD0;
    v7 = dCopy;
    v15 = v7;
    selfCopy = self;
    v8 = [(NSArray *)allDiscoveredExtensions safari_firstObjectPassingTest:v14];
    if (!v8)
    {
      extensions = self->_extensions;
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __45__WBSExtensionsController_extensionWithUUID___block_invoke_2;
      v11[3] = &unk_1E8283FD0;
      v12 = v7;
      selfCopy2 = self;
      v8 = [(NSMutableArray *)extensions safari_firstObjectPassingTest:v11];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t __45__WBSExtensionsController_extensionWithUUID___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 sf_uniqueIdentifier];
  if ([v4 isEqual:*(a1 + 32)])
  {
    v5 = [*(*(a1 + 40) + 104) containsObject:v3] ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t __45__WBSExtensionsController_extensionWithUUID___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 sf_uniqueIdentifier];
  if ([v4 isEqual:*(a1 + 32)])
  {
    v5 = [*(*(a1 + 40) + 104) containsObject:v3] ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)extensionWithComposedIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy length])
  {
    allDiscoveredExtensions = self->_allDiscoveredExtensions;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __59__WBSExtensionsController_extensionWithComposedIdentifier___block_invoke;
    v8[3] = &unk_1E8283FD0;
    v8[4] = self;
    v9 = identifierCopy;
    v6 = [(NSArray *)allDiscoveredExtensions safari_firstObjectPassingTest:v8];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t __59__WBSExtensionsController_extensionWithComposedIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) composedIdentifierForExtensionStateForExtension:v3];
  if ([v4 isEqualToString:*(a1 + 40)])
  {
    v5 = [*(*(a1 + 32) + 104) containsObject:v3] ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)extensionWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy length])
  {
    allDiscoveredExtensions = self->_allDiscoveredExtensions;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __57__WBSExtensionsController_extensionWithBundleIdentifier___block_invoke;
    v8[3] = &unk_1E8283FD0;
    v9 = identifierCopy;
    selfCopy = self;
    v6 = [(NSArray *)allDiscoveredExtensions safari_firstObjectPassingTest:v8];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t __57__WBSExtensionsController_extensionWithBundleIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 identifier];
  if ([v4 isEqualToString:*(a1 + 32)])
  {
    v5 = [*(*(a1 + 40) + 104) containsObject:v3] ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_extensionsWereGloballyEnabled
{
  [(WBSExtensionsController *)self loadEnabledExtensions];

  [(WBSExtensionsController *)self findExtensions];
}

- (void)_extensionsWereGloballyDisabled
{
  if ([(WBSExtensionsController *)self _supportsExtensionDiscovery])
  {
    [(WBSExtensionsController *)self _endExtensionDiscovery];
  }

  enabledExtensions = self->_enabledExtensions;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __58__WBSExtensionsController__extensionsWereGloballyDisabled__block_invoke;
  v9[3] = &unk_1E8283F08;
  v9[4] = self;
  [(NSMutableSet *)enabledExtensions enumerateObjectsUsingBlock:v9];
  v4 = [MEMORY[0x1E695DFA8] set];
  v5 = self->_enabledExtensions;
  self->_enabledExtensions = v4;

  array = [MEMORY[0x1E695DF70] array];
  extensions = self->_extensions;
  self->_extensions = array;

  extensionUniqueIdentifierToExtensionDataMap = self->_extensionUniqueIdentifierToExtensionDataMap;
  self->_extensionUniqueIdentifierToExtensionDataMap = 0;

  self->_hasPopulatedAllExtensionsFromExtensionDiscoveryAtLeastOnce = 0;
}

void __58__WBSExtensionsController__extensionsWereGloballyDisabled__block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = WBS_LOG_CHANNEL_PREFIXExtensions();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [v3 identifier];
    v6 = 138477827;
    v7 = v5;
    _os_log_impl(&dword_1C6968000, v4, OS_LOG_TYPE_INFO, "Unloading extension with identifier %{private}@ because extensions were globally disabled", &v6, 0xCu);
  }

  [*(a1 + 32) unloadExtensionIfNecessary:v3];
}

- (void)_setExtensionState:(id)state forExtension:(id)extension completionHandler:(id)handler
{
  stateCopy = state;
  handlerCopy = handler;
  v9 = [(WBSExtensionsController *)self composedIdentifierForExtensionStateForExtension:extension];
  [(WBSExtensionsController *)self _setExtensionIdentifierToStateMap:stateCopy forExtensionWithComposedIdentifier:v9 completionHandler:handlerCopy];
}

+ (BOOL)hasBlockedPromptAppearedForExtensionWithIdentifier:(id)identifier
{
  v10[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  safari_browserDefaults = [MEMORY[0x1E695E000] safari_browserDefaults];
  v5 = *MEMORY[0x1E69C9118];
  v6 = [safari_browserDefaults arrayForKey:*MEMORY[0x1E69C9118]];
  v7 = [v6 containsObject:identifierCopy];
  if ((v7 & 1) == 0)
  {
    if (v6)
    {
      v8 = [v6 arrayByAddingObject:identifierCopy];

      v6 = v8;
    }

    else
    {
      v10[0] = identifierCopy;
      v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    }

    [safari_browserDefaults setObject:v6 forKey:v5];
  }

  return v7;
}

+ (void)removeExtensionBundleIDFromArrayOfBlocklistedExtensions:(id)extensions
{
  extensionsCopy = extensions;
  safari_browserDefaults = [MEMORY[0x1E695E000] safari_browserDefaults];
  v4 = *MEMORY[0x1E69C9118];
  v5 = [safari_browserDefaults arrayForKey:*MEMORY[0x1E69C9118]];
  v6 = [v5 mutableCopy];

  if ([v6 containsObject:extensionsCopy])
  {
    [v6 removeObject:extensionsCopy];
    [safari_browserDefaults setObject:v6 forKey:v4];
  }
}

- (void)_disableAndBlockExtension:(id)extension
{
  extensionCopy = extension;
  v5 = WBS_LOG_CHANNEL_PREFIXExtensions();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [extensionCopy identifier];
    objc_claimAutoreleasedReturnValue();
    [WBSExtensionsController _disableAndBlockExtension:];
  }

  [(WBSExtensionsController *)self setExtension:extensionCopy isEnabled:0];
  [(WBSExtensionsController *)self _blockExtension:extensionCopy];
}

- (void)unloadExtensionIfNecessary:(id)necessary
{
  v57 = *MEMORY[0x1E69E9840];
  necessaryCopy = necessary;
  selfCopy = self;
  v4 = WBS_LOG_CHANNEL_PREFIXExtensions();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    identifier = [necessaryCopy identifier];
    *buf = 138477827;
    v56 = identifier;
    _os_log_impl(&dword_1C6968000, v4, OS_LOG_TYPE_INFO, "Unloading extension with identifier: %{private}@", buf, 0xCu);
  }

  v6 = necessaryCopy;
  [necessaryCopy _kill:9];
  if (([(NSMutableSet *)selfCopy->_enabledExtensions containsObject:necessaryCopy]& 1) != 0)
  {
    [(WBSExtensionsController *)selfCopy _unloadPreviouslyEnabledExtension:necessaryCopy];
    v37 = [(WBSExtensionsController *)selfCopy extensionDataForExtension:necessaryCopy];
    userContentController = [(WBSExtensionsController *)selfCopy userContentController];
    safari_userContentController = [MEMORY[0x1E6985350] safari_userContentController];
    v9 = userContentController == safari_userContentController;

    if (v9)
    {
      safari_privateBrowsingUserContentController = [MEMORY[0x1E6985350] safari_privateBrowsingUserContentController];
    }

    else
    {
      safari_privateBrowsingUserContentController = 0;
    }

    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    injectedStyleSheets = [v37 injectedStyleSheets];
    v12 = [injectedStyleSheets countByEnumeratingWithState:&v48 objects:v54 count:16];
    if (v12)
    {
      v13 = *v49;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v49 != v13)
          {
            objc_enumerationMutation(injectedStyleSheets);
          }

          v15 = *(*(&v48 + 1) + 8 * i);
          [userContentController _removeUserStyleSheet:v15];
          [safari_privateBrowsingUserContentController _removeUserStyleSheet:v15];
        }

        v12 = [injectedStyleSheets countByEnumeratingWithState:&v48 objects:v54 count:16];
      }

      while (v12);
    }

    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    injectedScripts = [v37 injectedScripts];
    v17 = [injectedScripts countByEnumeratingWithState:&v44 objects:v53 count:16];
    if (v17)
    {
      v18 = *v45;
      do
      {
        for (j = 0; j != v17; ++j)
        {
          if (*v45 != v18)
          {
            objc_enumerationMutation(injectedScripts);
          }

          v20 = *(*(&v44 + 1) + 8 * j);
          [userContentController _removeUserScript:v20];
          [safari_privateBrowsingUserContentController _removeUserScript:v20];
        }

        v17 = [injectedScripts countByEnumeratingWithState:&v44 objects:v53 count:16];
      }

      while (v17);
    }

    [v37 setInjectedStyleSheets:0];
    [v37 setInjectedScripts:0];
    sf_uniqueIdentifier = [necessaryCopy sf_uniqueIdentifier];
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v22 = selfCopy->_baseURIHostToExtensionIdentifier;
    v23 = [(NSMutableDictionary *)v22 countByEnumeratingWithState:&v40 objects:v52 count:16];
    if (v23)
    {
      v24 = *v41;
      while (2)
      {
        for (k = 0; k != v23; k = k + 1)
        {
          if (*v41 != v24)
          {
            objc_enumerationMutation(v22);
          }

          v26 = *(*(&v40 + 1) + 8 * k);
          v27 = [(NSMutableDictionary *)selfCopy->_baseURIHostToExtensionIdentifier objectForKeyedSubscript:v26];
          v28 = [v27 isEqual:sf_uniqueIdentifier];

          if (v28)
          {
            v23 = v26;
            goto LABEL_31;
          }
        }

        v23 = [(NSMutableDictionary *)v22 countByEnumeratingWithState:&v40 objects:v52 count:16];
        if (v23)
        {
          continue;
        }

        break;
      }
    }

LABEL_31:

    [(NSMutableDictionary *)selfCopy->_baseURIHostToExtensionIdentifier removeObjectForKey:v23];
    v29 = [(NSMutableDictionary *)selfCopy->_extensionIdentifierToBaseURIMap objectForKeyedSubscript:sf_uniqueIdentifier];
    v30 = v29;
    if (v29)
    {
      v31 = SafariShared::ExtensionURLTranslator::shared(v29);
      SafariShared::ExtensionURLTranslator::removeExtension(v31, v30);
      WeakRetained = objc_loadWeakRetained(&selfCopy->_delegate);
      v33 = [(WBSExtensionsController *)selfCopy composedIdentifierForExtensionStateForExtension:necessaryCopy];
      [WeakRetained extensionsController:selfCopy closeOpenExtensionTabsWithBaseURI:v30 composedIdentifier:v33];

      v34 = [(NSMutableDictionary *)selfCopy->_extensionIdentifierToBaseURIMap mutableCopy];
      [v34 removeObjectForKey:sf_uniqueIdentifier];
      v35 = [v34 copy];
      extensionIdentifierToBaseURIMap = selfCopy->_extensionIdentifierToBaseURIMap;
      selfCopy->_extensionIdentifierToBaseURIMap = v35;

      [WeakRetained extensionBaseURIMapChangedForExtensionsController:selfCopy];
    }

    [(NSMutableSet *)selfCopy->_enabledExtensions removeObject:necessaryCopy];
    [(WBSExtensionsController *)selfCopy _updateExtensionsCrashReporterMessage];

    v6 = necessaryCopy;
  }
}

- (void)closeLocalExtensionContentInPrivateTabsForExtension:(id)extension
{
  extensionCopy = extension;
  if (self->_loadEnabledExtensionsWasCalled)
  {
    v10 = extensionCopy;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    extensionIdentifierToBaseURIMap = self->_extensionIdentifierToBaseURIMap;
    sf_uniqueIdentifier = [v10 sf_uniqueIdentifier];
    v8 = [(NSMutableDictionary *)extensionIdentifierToBaseURIMap objectForKeyedSubscript:sf_uniqueIdentifier];

    if (v8)
    {
      v9 = [(WBSExtensionsController *)self composedIdentifierForExtensionStateForExtension:v10];
      [WeakRetained extensionsController:self closeOpenExtensionTabsInPrivateBrowsingWithBaseURI:v8 composedIdentifier:v9];
    }

    extensionCopy = v10;
  }
}

- (void)_postExtensionWasEnabledRemotelyNotificationIfNecessary:(id)necessary
{
  v12[2] = *MEMORY[0x1E69E9840];
  necessaryCopy = necessary;
  v5 = [(NSMutableDictionary *)self->_extensionIdentifierToStateMap objectForKeyedSubscript:necessaryCopy];
  if ([v5 safari_BOOLForKey:*MEMORY[0x1E69C9638]])
  {
    v6 = *MEMORY[0x1E69C9598];
    v12[0] = necessaryCopy;
    v7 = *MEMORY[0x1E69C95A0];
    v11[0] = v6;
    v11[1] = v7;
    profileServerID = [(WBSExtensionsController *)self profileServerID];
    v12[1] = profileServerID;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:*MEMORY[0x1E69C9640] object:0 userInfo:v9];
  }
}

- (void)remotelyEnabledExtensionBannerWasShownForComposedIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [(NSMutableDictionary *)self->_extensionIdentifierToStateMap objectForKeyedSubscript:?];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 mutableCopy];
    [v6 setObject:0 forKeyedSubscript:*MEMORY[0x1E69C9638]];
    v7 = [v6 copy];
    [(NSMutableDictionary *)self->_extensionIdentifierToStateMap setObject:v7 forKeyedSubscript:identifierCopy];

    [(WBSExtensionsController *)self _writeExtensionsStateToStorage];
  }
}

+ (id)_bundleIdentifierFromComposedIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = objc_msgSend(identifierCopy, "rangeOfString:", @" (");
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    v5 = [identifierCopy substringToIndex:v4];
  }

  return v5;
}

+ (id)_extensionFromComposedIdentifier:(id)identifier
{
  v4 = [self _bundleIdentifierFromComposedIdentifier:identifier];
  if (v4)
  {
    v5 = [MEMORY[0x1E696ABD0] extensionWithIdentifier:v4 excludingDisabledExtensions:0 error:0];
    v6 = v5;
    if (v5)
    {
      extensionPointIdentifier = [v5 extensionPointIdentifier];
      _extensionPointIdentifier = [self _extensionPointIdentifier];
      if ([extensionPointIdentifier isEqualToString:_extensionPointIdentifier])
      {
        v9 = v6;
      }

      else
      {
        v9 = 0;
      }

      v10 = v9;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_generateBaseURIForExtension:(id)extension
{
  extensionCopy = extension;
  if (!self->_baseURIHostToExtensionIdentifier)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    baseURIHostToExtensionIdentifier = self->_baseURIHostToExtensionIdentifier;
    self->_baseURIHostToExtensionIdentifier = dictionary;
  }

  v7 = [(WBSExtensionsController *)self extensionDataForExtension:extensionCopy];
  baseURIHost = [v7 baseURIHost];

  sf_uniqueIdentifier = [extensionCopy sf_uniqueIdentifier];
  [(NSMutableDictionary *)self->_baseURIHostToExtensionIdentifier setObject:sf_uniqueIdentifier forKeyedSubscript:baseURIHost];

  v10 = MEMORY[0x1E695DFF8];
  v11 = MEMORY[0x1E696AEC0];
  extensionURLScheme = [objc_opt_class() extensionURLScheme];
  v13 = [v11 stringWithFormat:@"%@://%@/", extensionURLScheme, baseURIHost];
  v14 = [v10 safari_URLWithDataAsString:v13];

  return v14;
}

- (id)extensionWithBaseURIHost:(id)host
{
  hostCopy = host;
  v5 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:hostCopy];
  v6 = [(NSMutableDictionary *)self->_baseURIHostToExtensionIdentifier objectForKeyedSubscript:v5];
  v7 = [(WBSExtensionsController *)self extensionWithUUID:v6];

  return v7;
}

+ (double)temporarySiteAccessTimeInterval
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults doubleForKey:*MEMORY[0x1E69C91B0]];
  v4 = v3;

  result = 86400.0;
  if (v4 < 86400.0 && v4 > 0.0)
  {
    return v4;
  }

  return result;
}

- (void)didShowPerSiteAccessPermissionForExtension:(id)extension
{
  extensionCopy = extension;
  v4 = [(WBSExtensionsController *)self _extensionStateForExtension:?];
  v5 = [v4 mutableCopy];

  v6 = *MEMORY[0x1E69C92A8];
  if (([v5 safari_BOOLForKey:*MEMORY[0x1E69C92A8]] & 1) == 0)
  {
    [v5 setObject:MEMORY[0x1E695E118] forKeyedSubscript:v6];
    [(WBSExtensionsController *)self _setExtensionState:v5 forExtension:extensionCopy];
  }
}

- (BOOL)hasShownPerSiteAccessPermissionForExtension:(id)extension
{
  v3 = [(WBSExtensionsController *)self _extensionStateForExtension:extension];
  v4 = [v3 safari_BOOLForKey:*MEMORY[0x1E69C92A8]];

  return v4;
}

- (id)cloudExtensionStateForStateManager:(id)manager
{
  managerCopy = manager;
  if (!self->_extensionIdentifierToStateMap)
  {
    readExtensionsStateFromStorage = [(WBSExtensionsController *)self readExtensionsStateFromStorage];
    v6 = [readExtensionsStateFromStorage mutableCopy];
    extensionIdentifierToStateMap = self->_extensionIdentifierToStateMap;
    self->_extensionIdentifierToStateMap = v6;
  }

  profileServerID = [(WBSExtensionsController *)self profileServerID];
  v9 = [WBSWebExtensionUtilities isProfileServerIDForDefaultProfile:profileServerID];

  v10 = self->_extensionIdentifierToStateMap;
  if (v9)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __62__WBSExtensionsController_cloudExtensionStateForStateManager___block_invoke;
    v14[3] = &unk_1E8283FA8;
    v14[4] = self;
    v11 = [(NSMutableDictionary *)v10 safari_mapAndFilterKeysAndObjectsUsingBlock:v14];
  }

  else
  {
    v11 = v10;
  }

  v12 = v11;

  return v12;
}

id __62__WBSExtensionsController_cloudExtensionStateForStateManager___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) extensionWithComposedIdentifier:v5];
  if (v7)
  {
    v8 = [v6 mutableCopy];
    v9 = [v7 safari_containingAppAdamID];
    if (v9 || ([v7 safari_containingAppIsTestFlightApp] & 1) != 0)
    {
      v10 = [v7 safari_correspondingMacOSExtensionBundleIdentifier];
      if (v10)
      {
        [v8 setObject:v10 forKeyedSubscript:*MEMORY[0x1E69C9620]];
      }

      v11 = [v7 safari_correspondingMacOSContainingAppBundleIdentifier];
      if (v11)
      {
        [v8 setObject:v11 forKeyedSubscript:*MEMORY[0x1E69C9618]];
      }

      if (v9)
      {
        [v8 setObject:v9 forKeyedSubscript:*MEMORY[0x1E69C95A8]];
      }

      v12 = [*(a1 + 32) extensionDataForExtension:v7];
      v13 = [v12 displayName];
      if (v13)
      {
        [v8 setObject:v13 forKeyedSubscript:*MEMORY[0x1E69C95E0]];
      }
    }

    else
    {
      v15 = WBS_LOG_CHANNEL_PREFIXCloudExtensions();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        __62__WBSExtensionsController_cloudExtensionStateForStateManager___block_invoke_cold_1(v5, v15);
      }

      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)hasExtensionWithComposedIdentifier:(id)identifier
{
  identifierCopy = identifier;
  allDiscoveredExtensions = self->_allDiscoveredExtensions;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __62__WBSExtensionsController_hasExtensionWithComposedIdentifier___block_invoke;
  v8[3] = &unk_1E8283FD0;
  v8[4] = self;
  v9 = identifierCopy;
  v6 = identifierCopy;
  LOBYTE(allDiscoveredExtensions) = [(NSArray *)allDiscoveredExtensions safari_containsObjectPassingTest:v8];

  return allDiscoveredExtensions;
}

uint64_t __62__WBSExtensionsController_hasExtensionWithComposedIdentifier___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) composedIdentifierForExtensionStateForExtension:a2];
  v4 = [v3 isEqualToString:*(a1 + 40)];

  return v4;
}

- (void)setExtensionWithComposedIdentifier:(id)identifier isEnabledInCloud:(BOOL)cloud
{
  cloudCopy = cloud;
  v24 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  allDiscoveredExtensions = self->_allDiscoveredExtensions;
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __79__WBSExtensionsController_setExtensionWithComposedIdentifier_isEnabledInCloud___block_invoke;
  v17 = &unk_1E8283FD0;
  selfCopy = self;
  v8 = identifierCopy;
  v19 = v8;
  v9 = [(NSArray *)allDiscoveredExtensions safari_firstObjectPassingTest:&v14];
  if ([(WBSExtensionsController *)self extensionIsEnabled:v9, v14, v15, v16, v17, selfCopy]== cloudCopy)
  {
    v13 = WBS_LOG_CHANNEL_PREFIXCloudExtensions();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 138477827;
      v21 = v8;
      _os_log_impl(&dword_1C6968000, v13, OS_LOG_TYPE_INFO, "Skipping changing state of %{private}@ because it is current state", buf, 0xCu);
    }
  }

  else
  {
    v10 = WBS_LOG_CHANNEL_PREFIXCloudExtensions();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = @"OFF";
      if (cloudCopy)
      {
        v11 = @"ON";
      }

      *buf = 138478083;
      v21 = v8;
      v22 = 2113;
      v23 = v11;
      _os_log_impl(&dword_1C6968000, v10, OS_LOG_TYPE_INFO, "Setting extension %{private}@ to %{private}@ from cloud data", buf, 0x16u);
    }

    [(WBSExtensionsController *)self setExtension:v9 isEnabled:cloudCopy dueToUserGesture:0 skipSavingToStorage:0];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"WBSWebExtensionDisplayListNeedsUpdateNotification" object:0];
  }
}

uint64_t __79__WBSExtensionsController_setExtensionWithComposedIdentifier_isEnabledInCloud___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) composedIdentifierForExtensionStateForExtension:a2];
  v4 = [v3 isEqualToString:*(a1 + 40)];

  return v4;
}

- (void)_updateExtensionStateIfPermissionsIncreased:(id)increased
{
  increasedCopy = increased;
  v20 = increasedCopy;
  if (!self->_extensionIdentifierToStateMap)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    extensionIdentifierToStateMap = self->_extensionIdentifierToStateMap;
    self->_extensionIdentifierToStateMap = dictionary;

    increasedCopy = v20;
  }

  v7 = [(WBSExtensionsController *)self composedIdentifierForExtensionStateForExtension:increasedCopy];
  v8 = [(NSMutableDictionary *)self->_extensionIdentifierToStateMap objectForKeyedSubscript:v7];
  v9 = [v8 copy];
  v10 = v9;
  if (v9)
  {
    dictionary2 = v9;
  }

  else
  {
    dictionary2 = [MEMORY[0x1E695DF20] dictionary];
  }

  v12 = dictionary2;

  v13 = [(WBSExtensionsController *)self _updatedExtensionStateForCurrentPermissions:v20 previousExtensionState:v12];
  [(WBSExtensionsController *)self _setExtensionIdentifierToStateMap:v13 forExtensionWithComposedIdentifier:v7];
  if ([v13 safari_BOOLForKey:*MEMORY[0x1E69C95F0]])
  {
    mEMORY[0x1E69C88C8] = [MEMORY[0x1E69C88C8] sharedController];
    v15 = [mEMORY[0x1E69C88C8] managedExtensionStateForComposedIdentifier:v7];

    if (v15 != 1)
    {
      if ([(WBSExtensionsController *)self _shouldDisableExtensionIfAdditionalPermissionsAreRequired:v20 previousExtensionState:v12])
      {
        [(WBSExtensionsController *)self setExtension:v20 isEnabled:0 dueToUserGesture:0 skipSavingToStorage:0];
        defaultCenter = [MEMORY[0x1E696ABB0] defaultCenter];
        [defaultCenter postNotificationName:@"com.apple.mobilesafari.MobileSafariChangedExtensionSettings" object:0];

        v17 = [(WBSExtensionsController *)self _displayNameForExtension:v20];
        sf_uniqueIdentifier = [v20 sf_uniqueIdentifier];
        uUIDString = [sf_uniqueIdentifier UUIDString];
        [(WBSExtensionsController *)self _showPromptForExtensionDisabledBecauseItHasRequestedAdditionalPermissions:v17 extensionIdentifier:uUIDString];
      }
    }
  }
}

- (id)extensionsWithAdamID:(id)d
{
  dCopy = d;
  allDiscoveredExtensions = self->_allDiscoveredExtensions;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __48__WBSExtensionsController_extensionsWithAdamID___block_invoke;
  v9[3] = &unk_1E8283E40;
  v10 = dCopy;
  v6 = dCopy;
  v7 = [(NSArray *)allDiscoveredExtensions safari_filterObjectsUsingBlock:v9];

  return v7;
}

uint64_t __48__WBSExtensionsController_extensionsWithAdamID___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 safari_containingAppAdamID];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (void)_updateExtensionStateWithPrivacyPreservingProfileIdentifierIfNeeded:(id)needed
{
  neededCopy = needed;
  profile = [(WBSExtensionsController *)self profile];
  isDefault = [profile isDefault];

  if ((isDefault & 1) == 0)
  {
    v6 = [(WBSExtensionsController *)self _extensionStateForExtension:neededCopy];
    dictionary = [v6 mutableCopy];

    if (!dictionary)
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
    }

    v8 = [(WBSExtensionsController *)self extensionDataForExtension:neededCopy];
    v9 = *MEMORY[0x1E69C92B0];
    uUID = [dictionary objectForKeyedSubscript:*MEMORY[0x1E69C92B0]];
    if (uUID)
    {
      v11 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:uUID];
      [v8 setPrivacyPreservingProfileIdentifier:v11];
    }

    else
    {
      uUID = [MEMORY[0x1E696AFB0] UUID];
      [v8 setPrivacyPreservingProfileIdentifier:uUID];
      uUIDString = [uUID UUIDString];
      [dictionary setObject:uUIDString forKeyedSubscript:v9];

      v11 = [(WBSExtensionsController *)self composedIdentifierForExtensionStateForExtension:neededCopy];
      [(WBSExtensionsController *)self _setExtensionIdentifierToStateMap:dictionary forExtensionWithComposedIdentifier:v11];
    }
  }
}

- (id)_developerIdentifierForExtension:(id)extension
{
  v3 = [(WBSExtensionsController *)self _developerIdentifierForExtension:extension untrustedCodeSigningDictionary:0];

  return v3;
}

- (id)_updatedExtensionStateForCurrentPermissions:(id)permissions previousExtensionState:(id)state
{
  v4 = [state mutableCopy];

  return v4;
}

- (id)profileServerIDForStateManager:(id)manager
{
  profile = [(WBSExtensionsController *)self profile];
  identifierForExtensions = [profile identifierForExtensions];

  return identifierForExtensions;
}

- (void)_managedExtensionStateDidChange
{
  v21 = *MEMORY[0x1E69E9840];
  enabledExtensions = self->_enabledExtensions;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __58__WBSExtensionsController__managedExtensionStateDidChange__block_invoke;
  v17[3] = &unk_1E8283FF8;
  v17[4] = self;
  [(NSMutableSet *)enabledExtensions safari_mapAndFilterObjectsUsingBlock:v17];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v4 = v14 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v20 count:16];
  if (v5)
  {
    v7 = *v14;
    *&v6 = 138477827;
    v12 = v6;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * v8);
        v10 = WBS_LOG_CHANNEL_PREFIXManagedExtensions();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          v11 = [(WBSExtensionsController *)self composedIdentifierForExtensionStateForExtension:v9];
          *buf = v12;
          v19 = v11;
          _os_log_impl(&dword_1C6968000, v10, OS_LOG_TYPE_INFO, "Unloading extension %{private}@ due to managed extension configuration", buf, 0xCu);
        }

        [(WBSExtensionsController *)self unloadExtensionIfNecessary:v9];
        ++v8;
      }

      while (v5 != v8);
      v5 = [v4 countByEnumeratingWithState:&v13 objects:v20 count:16];
    }

    while (v5);
  }

  if (self->_loadEnabledExtensionsWasCalled || self->_forceExtensionLoadingAfterDiscovery)
  {
    [(WBSExtensionsController *)self _loadExtensions:self->_allDiscoveredExtensions skipEqualityCheck:1, v12, v13];
  }

  [(WBSExtensionsController *)self _updateManagedWebsiteAccessForAllExtensions];
  [(WBSExtensionsController *)self _updateManagedPrivateBrowsingStateForAllExtensions];
}

void *__58__WBSExtensionsController__managedExtensionStateDidChange__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) _extensionShouldBeEnabled:v3])
  {
    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  v5 = v4;

  return v4;
}

- (WBSExtensionsControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)extensionsDataForExport
{
  v38 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  selfCopy = self;
  extensionIdentifierToStateMap = self->_extensionIdentifierToStateMap;
  v27 = v3;
  if (!extensionIdentifierToStateMap)
  {
    readExtensionsStateFromStorage = [(WBSExtensionsController *)self readExtensionsStateFromStorage];
    v6 = [readExtensionsStateFromStorage mutableCopy];
    v7 = selfCopy->_extensionIdentifierToStateMap;
    selfCopy->_extensionIdentifierToStateMap = v6;

    extensionIdentifierToStateMap = selfCopy->_extensionIdentifierToStateMap;
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = extensionIdentifierToStateMap;
  v8 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v8)
  {
    v30 = *v34;
    v29 = *MEMORY[0x1E69C95F0];
    do
    {
      v31 = v8;
      for (i = 0; i != v31; ++i)
      {
        if (*v34 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v33 + 1) + 8 * i);
        v11 = [(NSMutableDictionary *)selfCopy->_extensionIdentifierToStateMap safari_dictionaryForKey:v10, v27];
        v12 = [v11 safari_BOOLForKey:v29];

        if (v12)
        {
          v13 = [objc_opt_class() _extensionFromComposedIdentifier:v10];
          if (v13)
          {
            v14 = [(WBSExtensionsController *)selfCopy extensionDataForExtension:v13];
            v15 = v14;
            if (v14)
            {
              displayName = [v14 displayName];
              v17 = displayName;
              v18 = &stru_1F4646D10;
              if (displayName)
              {
                v18 = displayName;
              }

              v19 = v18;

              safari_correspondingMacOSExtensionBundleIdentifier = [v13 safari_correspondingMacOSExtensionBundleIdentifier];
              safari_correspondingMacOSContainingAppBundleIdentifier = [v13 safari_correspondingMacOSContainingAppBundleIdentifier];
              safari_launchServicesDeveloperName = [v13 safari_launchServicesDeveloperName];
              safari_containingAppAdamID = [v13 safari_containingAppAdamID];
              v24 = [WBSExtensionsExporter extensionDataWithDisplayName:v19 developerName:safari_launchServicesDeveloperName composedIdentifier:v10 adamIdentifier:safari_containingAppAdamID alternatePlatformExtensionBundleIdentifier:safari_correspondingMacOSExtensionBundleIdentifier alternatePlatformAppBundleIdentifier:safari_correspondingMacOSContainingAppBundleIdentifier];

              [v27 addObject:v24];
            }
          }
        }
      }

      v8 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v8);
  }

  v25 = [v27 copy];

  return v25;
}

- (void)writeExtensionsStateToStorageWithCompletionHandler:.cold.1()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_0(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_0_2(&dword_1C6968000, v3, v4, "Failed to coordinate writing extension state %{public}@", v5);
}

void __78__WBSExtensionsController_writeExtensionsStateToStorageWithCompletionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_0(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_0_2(&dword_1C6968000, v3, v4, "Unable to save extension state: %{public}@", v5);
}

- (void)_readExtensionsStateFromStorageFromURL:.cold.1()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_0(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_0_2(&dword_1C6968000, v3, v4, "Failed to coordinate reading extension state %{public}@", v5);
}

- (void)validateAndReadResourceWithExtensionURL:inExtension:codeRef:outResourceData:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  v2 = v1;
  *v3 = 138543619;
  *(v3 + 4) = v1;
  *(v3 + 12) = 2113;
  *(v3 + 14) = v4;
  OUTLINED_FUNCTION_6(&dword_1C6968000, "Couldn't find resource %{public}@ for extension with identifier %{private}@", v5, v6);
}

- (void)_disableAndBlockExtension:.cold.1()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_0(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_0_2(&dword_1C6968000, v3, v4, "Disabling and blocking extension with identifier: %@", v5);
}

- (void)_blockExtension:.cold.1()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_0(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_0_2(&dword_1C6968000, v3, v4, "Blocking extension with identifier: %@", v5);
}

void __62__WBSExtensionsController_cloudExtensionStateForStateManager___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138477827;
  v3 = a1;
  _os_log_error_impl(&dword_1C6968000, a2, OS_LOG_TYPE_ERROR, "Not saving state for extension %{private}@ because we could not compute its containing app's Adam ID and it's not a TestFlight app", &v2, 0xCu);
}

@end