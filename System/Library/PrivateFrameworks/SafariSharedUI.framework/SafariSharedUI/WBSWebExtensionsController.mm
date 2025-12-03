@interface WBSWebExtensionsController
+ (double)pendingSiteAccessTimeoutInterval;
+ (id)_commandShortcutConflictsForExtension:(id)extension sortedWebExtensions:(id)extensions;
+ (id)_composedIdentifierForStateOfExtensionWithBundleIdentifier:(id)identifier developerIdentifier:(id)developerIdentifier;
+ (id)_firstConflctForCommand:(id)command inSortedWebExtensions:(id)extensions;
- (BOOL)_extensionShouldBeAutomaticallyEnabled:(id)enabled;
- (BOOL)_extensionShouldBeEnabled:(id)enabled;
- (BOOL)_shouldDisableExtensionIfAdditionalPermissionsAreRequired:(id)required previousExtensionState:(id)state;
- (BOOL)anyWebExtensionContentBlockerEnabled;
- (BOOL)extensionIsEnabled:(id)enabled;
- (BOOL)isTab:(id)tab visibleToExtension:(id)extension;
- (BOOL)isWindow:(id)window visibleToExtension:(id)extension;
- (NSString)profileName;
- (WBSCoreAnalyticsExtensionsStatistics)extensionStatisticsReport;
- (WBSWebExtensionsController)initWithProfileServerID:(id)d userContentController:(id)controller;
- (id)_displayNameForExtension:(id)extension;
- (id)_displayShortNameForExtension:(id)extension;
- (id)_displayVersionForExtension:(id)extension;
- (id)_extensionURLToLoadFromPersistentStateURL:(id)l;
- (id)_filteredOriginsRemovingAllHostsPatterns:(id)patterns containedAllHostsPattern:(BOOL *)pattern;
- (id)_persistentStateURLForExtensionURL:(id)l;
- (id)_updatedExtensionStateForCurrentPermissions:(id)permissions previousExtensionState:(id)state;
- (id)_urlForExtensionSettings;
- (id)_urlForWebKitExtensionsDirectory;
- (id)_versionNumberForExtension:(id)extension;
- (id)canonicalURLForWebExtensionURL:(id)l;
- (id)commandShortcutConflictsForExtension:(id)extension;
- (id)enabledExtensionsWithPrivateBrowsingEnabled:(BOOL)enabled;
- (id)enabledWebExtensionsSortedByDisplayShortName;
- (id)extensionStateKeysToCopy;
- (id)installationDateForExtension:(id)extension;
- (id)lastSeenUniqueIdentiferForWebExtension:(id)extension;
- (id)webExtensionController:(id)controller focusedWindowForExtensionContext:(id)context;
- (id)webExtensionController:(id)controller openWindowsForExtensionContext:(id)context;
- (id)webExtensionForBaseURIHost:(id)host;
- (id)webExtensionForBundleIdentifier:(id)identifier;
- (id)webExtensionForComposedIdentifier:(id)identifier;
- (id)webExtensionForExtension:(id)extension;
- (id)webExtensionForExtensionIdentifier:(id)identifier;
- (id)webExtensionForURL:(id)l;
- (void)_applyManagedExtensionPermissionsForWebExtension:(id)extension;
- (void)_deleteStateForExtensionWithComposedIdentifier:(id)identifier;
- (void)_deleteStorageForExtensionWithComposedIdentifier:(id)identifier;
- (void)_finishedLoadingExtensions;
- (void)_grantRequestedPermissionsIfNecessaryForExtension:(id)extension;
- (void)_loadEnabledExtension:(id)extension;
- (void)_loadPermissionsFromStorageForWebExtension:(id)extension completionHandler:(id)handler;
- (void)_permissionsMayHaveBeenChangedExternallyForExtension:(id)extension previousExtensionState:(id)state;
- (void)_savePermissionsToStorageAndPostDidChangeNotificationSoonForWebExtension:(id)extension permissionsWereUpdatedDueToAnExternalChange:(BOOL)change;
- (void)_savePermissionsToStorageForWebExtension:(id)extension;
- (void)_savePermissionsToStorageIfNecessaryAndPostDidChangeNotificationForWebExtension:(id)extension;
- (void)_unloadPreviouslyEnabledExtension:(id)extension;
- (void)_updateExtensionNewTabPageIfNecessary;
- (void)_updateExtensionStateIfPermissionsIncreased:(id)increased;
- (void)_updateExtensionStateIfThisVersionOfSafariIsNotSupported:(id)supported;
- (void)_updateManagedPrivateBrowsingStateForAllExtensions;
- (void)_updateManagedWebsiteAccessForAllExtensions;
- (void)_webExtensionDataPermissionsWereGranted:(id)granted;
- (void)_webExtensionDataPermissionsWereRevokedOrRemoved:(id)removed;
- (void)_webExtensionEnabledStateInPrivateBrowsingChanged:(id)changed;
- (void)clearPermissionStateUsedToDetermineIfExtensionShouldBeDisabledOnUpgradeForExtension:(id)extension;
- (void)didMoveTab:(id)tab fromIndex:(unint64_t)index toIndex:(unint64_t)toIndex;
- (void)didMoveTab:(id)tab fromWindowWithID:(double)d indexInOldWindow:(unint64_t)window;
- (void)didSelectTab:(id)tab previousTab:(id)previousTab;
- (void)initializeWebKitControllerIfNeededFromSettings:(BOOL)settings;
- (void)loadPermissionsIfNecessaryForExtension:(id)extension;
- (void)loadSuitableDiscoveredExtensions;
- (void)performCommandForKeyCommand:(id)command;
- (void)removeOldExtensionStateForExtension:(id)extension;
- (void)savePermissionStateUsedToDetermineIfExtensionShouldBeDisabledOnUpgradeForWebExtension:(id)extension;
- (void)saveUniqueIdentifierToStorageForWebExtension:(id)extension;
- (void)sendMessage:(id)message toApplicationWithID:(id)d fromExtensionWithIdentifier:(id)identifier completionHandler:(id)handler;
- (void)setExtension:(id)extension isEnabled:(BOOL)enabled dueToUserGesture:(BOOL)gesture skipSavingToStorage:(BOOL)storage;
- (void)webExtensionController:(id)controller connectUsingMessagePort:(id)port forExtensionContext:(id)context completionHandler:(id)handler;
- (void)webExtensionController:(id)controller didUpdateAction:(id)action forExtensionContext:(id)context;
- (void)webExtensionController:(id)controller openNewTabUsingConfiguration:(id)configuration forExtensionContext:(id)context completionHandler:(id)handler;
- (void)webExtensionController:(id)controller promptForPermissionMatchPatterns:(id)patterns inTab:(id)tab forExtensionContext:(id)context completionHandler:(id)handler;
- (void)webExtensionController:(id)controller promptForPermissionToAccessURLs:(id)ls inTab:(id)tab forExtensionContext:(id)context completionHandler:(id)handler;
- (void)webExtensionController:(id)controller sendMessage:(id)message toApplicationWithIdentifier:(id)identifier forExtensionContext:(id)context replyHandler:(id)handler;
@end

@implementation WBSWebExtensionsController

- (void)loadSuitableDiscoveredExtensions
{
  v2.receiver = self;
  v2.super_class = WBSWebExtensionsController;
  [(WBSExtensionsController *)&v2 loadSuitableDiscoveredExtensions];
}

- (id)_urlForExtensionSettings
{
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  profileServerID = [(WBSExtensionsController *)self profileServerID];
  v5 = [WBSWebExtensionUtilities isProfileServerIDForDefaultProfile:profileServerID];
  if (v5 || (-[WBSWebExtensionsController tabGroupManager](self, "tabGroupManager"), (v6 = objc_claimAutoreleasedReturnValue()) == 0) || (-[WBSWebExtensionsController tabGroupManager](self, "tabGroupManager"), v7 = objc_claimAutoreleasedReturnValue(), [v7 profileWithServerID:profileServerID], v8 = objc_claimAutoreleasedReturnValue(), v8, v7, v6, v8))
  {
    settingsFileURL = self->_settingsFileURL;
    if (!settingsFileURL)
    {
      safari_webExtensionsSettingsDirectoryURL = [defaultManager safari_webExtensionsSettingsDirectoryURL];
      if (!v5)
      {
        v11 = [defaultManager safari_profileDirectoryURLWithID:profileServerID createIfNeeded:1];
        v12 = [v11 URLByAppendingPathComponent:@"WebExtensions" isDirectory:1];

        safari_webExtensionsSettingsDirectoryURL = v12;
      }

      if (safari_webExtensionsSettingsDirectoryURL)
      {
        v13 = [defaultManager safari_ensureDirectoryExists:safari_webExtensionsSettingsDirectoryURL];
      }

      v14 = [safari_webExtensionsSettingsDirectoryURL URLByAppendingPathComponent:@"Extensions.plist" isDirectory:0];
      v15 = self->_settingsFileURL;
      self->_settingsFileURL = v14;

      settingsFileURL = self->_settingsFileURL;
    }

    v16 = settingsFileURL;
  }

  else
  {
    v18 = self->_settingsFileURL;
    self->_settingsFileURL = 0;

    v16 = 0;
  }

  return v16;
}

- (void)_finishedLoadingExtensions
{
  if ([(WBSExtensionsController *)self loadEnabledExtensionsWasCalled])
  {
    safari_browserDefaults = [MEMORY[0x1E695E000] safari_browserDefaults];
    if (([safari_browserDefaults BOOLForKey:@"DidGrantSearchProviderAccessToWebNavigationExtensions"] & 1) == 0)
    {
      [safari_browserDefaults setBool:1 forKey:@"DidGrantSearchProviderAccessToWebNavigationExtensions"];
    }

    v4.receiver = self;
    v4.super_class = WBSWebExtensionsController;
    [(WBSExtensionsController *)&v4 _finishedLoadingExtensions];
  }
}

- (WBSWebExtensionsController)initWithProfileServerID:(id)d userContentController:(id)controller
{
  dCopy = d;
  controllerCopy = controller;
  v17.receiver = self;
  v17.super_class = WBSWebExtensionsController;
  v8 = [(WBSExtensionsController *)&v17 initWithProfileServerID:dCopy userContentController:controllerCopy];
  if (v8)
  {
    if ([WBSWebExtensionsController initWithProfileServerID:userContentController:]::once != -1)
    {
      [WBSWebExtensionsController initWithProfileServerID:userContentController:];
    }

    v9 = [[WBSWebExtensionNewTabOverridePreferencesManager alloc] initWithExtensionsController:v8];
    tabOverridePreferencesManager = v8->_tabOverridePreferencesManager;
    v8->_tabOverridePreferencesManager = v9;

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    extensionIdentifierToData = v8->_extensionIdentifierToData;
    v8->_extensionIdentifierToData = dictionary;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v8 selector:sel__webExtensionDataPermissionsWereGranted_ name:@"webExtensionPermissionsWereGranted" object:0];
    [defaultCenter addObserver:v8 selector:sel__webExtensionDataPermissionsWereRevokedOrRemoved_ name:@"webExtensionPermissionsWereRevoked" object:0];
    [defaultCenter addObserver:v8 selector:sel__webExtensionDataPermissionsWereRevokedOrRemoved_ name:@"webExtensionGrantedPermissionsWereRemoved" object:0];
    [defaultCenter addObserver:v8 selector:sel__webExtensionDataPermissionsWereRevokedOrRemoved_ name:@"webExtensionRevokedPermissionsWereRemoved" object:0];
    defaultCenter2 = [MEMORY[0x1E696ABB0] defaultCenter];
    [defaultCenter2 addObserver:v8 selector:sel__webExtensionEnabledStateInPrivateBrowsingChanged_ name:*MEMORY[0x1E69C9708] object:0];
    v15 = v8;
  }

  return v8;
}

- (void)initializeWebKitControllerIfNeededFromSettings:(BOOL)settings
{
  if (!self->_webKitController)
  {
    defaultConfiguration = [MEMORY[0x1E6985378] defaultConfiguration];
    v5 = objc_alloc(MEMORY[0x1E696AFB0]);
    profileServerID = [(WBSExtensionsController *)self profileServerID];
    v7 = [v5 initWithUUIDString:profileServerID];

    if (v7)
    {
      v8 = [MEMORY[0x1E6985378] configurationWithIdentifier:v7];

      defaultConfiguration = v8;
    }

    if (settings)
    {
      _urlForWebKitExtensionsDirectory = [(WBSWebExtensionsController *)self _urlForWebKitExtensionsDirectory];
      path = [_urlForWebKitExtensionsDirectory path];
      [defaultConfiguration _setStorageDirectoryPath:path];
    }

    else
    {
      _urlForWebKitExtensionsDirectory = [(WBSWebExtensionsController *)self _webViewConfiguration];
      [defaultConfiguration setWebViewConfiguration:_urlForWebKitExtensionsDirectory];
    }

    v11 = [objc_alloc(MEMORY[0x1E6985370]) initWithConfiguration:defaultConfiguration];
    webKitController = self->_webKitController;
    self->_webKitController = v11;

    [(WKWebExtensionController *)self->_webKitController setDelegate:self];
    _extensionDefaults = [objc_opt_class() _extensionDefaults];
    -[WKWebExtensionController _setTestingMode:](self->_webKitController, "_setTestingMode:", [_extensionDefaults BOOLForKey:*MEMORY[0x1E69C91D0]]);
  }
}

+ (id)_composedIdentifierForStateOfExtensionWithBundleIdentifier:(id)identifier developerIdentifier:(id)developerIdentifier
{
  developerIdentifierCopy = @"UNSIGNED";
  if (developerIdentifier)
  {
    developerIdentifierCopy = developerIdentifier;
  }

  developerIdentifierCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ (%@)", identifier, developerIdentifierCopy];

  return developerIdentifierCopy;
}

- (id)extensionStateKeysToCopy
{
  v7[8] = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = WBSWebExtensionsController;
  extensionStateKeysToCopy = [(WBSExtensionsController *)&v6 extensionStateKeysToCopy];
  v7[0] = @"AccessibleOrigins";
  v7[1] = @"GrantedPermissions";
  v7[2] = @"Permissions";
  v7[3] = @"RevokedPermissions";
  v7[4] = @"GrantedPermissionOrigins";
  v7[5] = @"LastSeenVersion";
  v7[6] = @"RequestedOptionalAccessToAllHosts";
  v7[7] = @"RevokedPermissionOrigins";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:8];
  v4 = [extensionStateKeysToCopy setByAddingObjectsFromArray:v3];

  return v4;
}

- (id)_urlForWebKitExtensionsDirectory
{
  v14[3] = *MEMORY[0x1E69E9840];
  profile = [(WBSExtensionsController *)self profile];
  isDefault = [profile isDefault];

  if (isDefault)
  {
    profileServerID = @"Default";
  }

  else
  {
    profileServerID = [(WBSExtensionsController *)self profileServerID];
  }

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  safari_settingsDirectoryURL = [defaultManager safari_settingsDirectoryURL];

  uRLByDeletingLastPathComponent = [safari_settingsDirectoryURL URLByDeletingLastPathComponent];
  v9 = MEMORY[0x1E696AEC0];
  v14[0] = @"WebKit";
  v14[1] = @"WebExtensions";
  v14[2] = profileServerID;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:3];
  v11 = [v9 pathWithComponents:v10];
  v12 = [uRLByDeletingLastPathComponent URLByAppendingPathComponent:v11 isDirectory:1];

  return v12;
}

- (id)_displayNameForExtension:(id)extension
{
  v3 = [(WBSWebExtensionsController *)self webExtensionForExtension:extension];
  displayName = [v3 displayName];

  return displayName;
}

- (id)_displayShortNameForExtension:(id)extension
{
  v3 = [(WBSWebExtensionsController *)self webExtensionForExtension:extension];
  displayShortName = [v3 displayShortName];

  return displayShortName;
}

- (id)_displayVersionForExtension:(id)extension
{
  v3 = [(WBSWebExtensionsController *)self webExtensionForExtension:extension];
  displayVersion = [v3 displayVersion];

  return displayVersion;
}

- (id)_versionNumberForExtension:(id)extension
{
  v3 = [(WBSWebExtensionsController *)self webExtensionForExtension:extension];
  version = [v3 version];

  return version;
}

- (void)_loadEnabledExtension:(id)extension
{
  extensionCopy = extension;
  v5 = [(WBSWebExtensionsController *)self webExtensionForExtension:extensionCopy];
  [(WBSWebExtensionsController *)self _loadPermissionsFromStorageForWebExtension:v5 completionHandler:&__block_literal_global_118_0];
  [v5 load];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52__WBSWebExtensionsController__loadEnabledExtension___block_invoke_2;
  v7[3] = &unk_1E8282EA0;
  v7[4] = self;
  v8 = v5;
  v6 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v7);
}

void __52__WBSWebExtensionsController__loadEnabledExtension___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) composedIdentifier];
  [v1 _postExtensionWasEnabledRemotelyNotificationIfNecessary:?];
}

- (void)_updateExtensionNewTabPageIfNecessary
{
  v2 = +[WBSCloudExtensionStateManager sharedManager];
  [v2 updateNewTabPageFromCloudDeviceState];
}

- (void)_unloadPreviouslyEnabledExtension:(id)extension
{
  v3 = [(WBSWebExtensionsController *)self webExtensionForExtension:extension];
  [v3 unload];
}

- (id)enabledExtensionsWithPrivateBrowsingEnabled:(BOOL)enabled
{
  enabledExtensions = [(WBSExtensionsController *)self enabledExtensions];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __74__WBSWebExtensionsController_enabledExtensionsWithPrivateBrowsingEnabled___block_invoke;
  v8[3] = &unk_1E82893F0;
  v8[4] = self;
  enabledCopy = enabled;
  v6 = [enabledExtensions safari_filterObjectsUsingBlock:v8];

  return v6;
}

BOOL __74__WBSWebExtensionsController_enabledExtensionsWithPrivateBrowsingEnabled___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) webExtensionForExtension:a2];
  v4 = ([v3 allowedInPrivateBrowsing] & 1) != 0 || (*(a1 + 40) & 1) == 0;

  return v4;
}

- (BOOL)extensionIsEnabled:(id)enabled
{
  enabledCopy = enabled;
  v5 = [(WBSWebExtensionsController *)self webExtensionForExtension:enabledCopy];
  canLoad = [v5 canLoad];

  if (canLoad)
  {
    v9.receiver = self;
    v9.super_class = WBSWebExtensionsController;
    v7 = [(WBSExtensionsController *)&v9 extensionIsEnabled:enabledCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setExtension:(id)extension isEnabled:(BOOL)enabled dueToUserGesture:(BOOL)gesture skipSavingToStorage:(BOOL)storage
{
  storageCopy = storage;
  gestureCopy = gesture;
  enabledCopy = enabled;
  extensionCopy = extension;
  if (enabledCopy)
  {
    v11 = [(WBSWebExtensionsController *)self webExtensionForExtension:extensionCopy];
    if (([v11 canLoad] & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v11 = 0;
    [(WBSWebExtensionsController *)self clearPermissionStateUsedToDetermineIfExtensionShouldBeDisabledOnUpgradeForExtension:extensionCopy];
  }

  v12.receiver = self;
  v12.super_class = WBSWebExtensionsController;
  [(WBSExtensionsController *)&v12 setExtension:extensionCopy isEnabled:enabledCopy dueToUserGesture:gestureCopy skipSavingToStorage:storageCopy];
LABEL_6:
}

- (void)removeOldExtensionStateForExtension:(id)extension
{
  v19[5] = *MEMORY[0x1E69E9840];
  extensionCopy = extension;
  v5 = [(WBSExtensionsController *)self _extensionStateForExtension:extensionCopy];
  v6 = [v5 mutableCopy];

  if ([v6 count])
  {
    v19[0] = @"LastSeenBaseURI";
    v19[1] = @"LastSeenVersion";
    v19[2] = @"BackgroundPageListeners";
    v19[3] = @"BackgroundPageListenersVersion";
    v19[4] = @"DeclarativeNetRequestRulesetState";
    [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:5];
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v7 = v15 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    v9 = v7;
    if (v8)
    {
      v10 = *v15;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [v6 objectForKeyedSubscript:{*(*(&v14 + 1) + 8 * i), v14}];
          v13 = v12 == 0;

          if (!v13)
          {

            [v6 removeObjectsForKeys:v7];
            v9 = [(WBSExtensionsController *)self composedIdentifierForExtensionStateForExtension:extensionCopy];
            [(WBSExtensionsController *)self _setExtensionIdentifierToStateMap:v6 forExtensionWithComposedIdentifier:v9];
            goto LABEL_12;
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }

      v9 = v7;
    }

LABEL_12:
  }
}

- (BOOL)_extensionShouldBeEnabled:(id)enabled
{
  enabledCopy = enabled;
  v5 = [(WBSWebExtensionsController *)self webExtensionForExtension:enabledCopy];
  canLoad = [v5 canLoad];

  if (canLoad)
  {
    v9.receiver = self;
    v9.super_class = WBSWebExtensionsController;
    v7 = [(WBSExtensionsController *)&v9 _extensionShouldBeEnabled:enabledCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)_extensionShouldBeAutomaticallyEnabled:(id)enabled
{
  v24 = *MEMORY[0x1E69E9840];
  enabledCopy = enabled;
  v5 = [(WBSExtensionsController *)self composedIdentifierForExtensionStateForExtension:enabledCopy];
  v6 = +[WBSCloudExtensionStateManager sharedManager];
  profileServerID = [(WBSExtensionsController *)self profileServerID];
  v8 = [v6 isExtensionEnabledInCloudWithComposedIdentifier:v5 forProfileServerID:profileServerID];

  if (![enabledCopy safari_isUnpackedExtension])
  {
    if (v8)
    {
      goto LABEL_7;
    }

LABEL_11:
    v16 = 0;
    goto LABEL_12;
  }

  profile = [(WBSExtensionsController *)self profile];
  isDefault = [profile isDefault];

  if (((isDefault | v8) & 1) == 0)
  {
    goto LABEL_11;
  }

  if (!v8)
  {
    v11 = WBS_LOG_CHANNEL_PREFIXCloudExtensions();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 141558275;
      v21 = 1752392040;
      v22 = 2117;
      v23 = v5;
      v12 = "Automatically enabling unpacked extension %{sensitive, mask.hash}@";
LABEL_9:
      _os_log_impl(&dword_1C6968000, v11, OS_LOG_TYPE_INFO, v12, buf, 0x16u);
      goto LABEL_10;
    }

    goto LABEL_10;
  }

LABEL_7:
  v11 = WBS_LOG_CHANNEL_PREFIXCloudExtensions();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 141558275;
    v21 = 1752392040;
    v22 = 2117;
    v23 = v5;
    v12 = "Automatically enabling extension %{sensitive, mask.hash}@ on download since it's on in the cloud";
    goto LABEL_9;
  }

LABEL_10:
  v13 = *MEMORY[0x1E69C95F0];
  v19[0] = MEMORY[0x1E695E118];
  v14 = [MEMORY[0x1E695DF00] now];
  v18[2] = *MEMORY[0x1E69C95E8];
  v19[1] = v14;
  v19[2] = MEMORY[0x1E695E110];
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:3];

  [(WBSExtensionsController *)self _setExtensionIdentifierToStateMap:v15 forExtensionWithComposedIdentifier:v5];
  v16 = 1;
LABEL_12:

  return v16;
}

- (id)_updatedExtensionStateForCurrentPermissions:(id)permissions previousExtensionState:(id)state
{
  stateCopy = state;
  v7 = [(WBSWebExtensionsController *)self webExtensionForExtension:permissions];
  [v7 setRequestedOptionalAccessToAllHosts:{objc_msgSend(stateCopy, "safari_BOOLForKey:", @"RequestedOptionalAccessToAllHosts"}];
  v8 = [v7 extensionStateWithPreviousState:stateCopy];

  return v8;
}

- (void)_updateExtensionStateIfThisVersionOfSafariIsNotSupported:(id)supported
{
  supportedCopy = supported;
  v4 = [(WBSExtensionsController *)self composedIdentifierForExtensionStateForExtension:?];
  v5 = [(NSMutableDictionary *)self->super._extensionIdentifierToStateMap objectForKeyedSubscript:v4];
  v6 = [v5 mutableCopy];

  if ([v6 safari_BOOLForKey:*MEMORY[0x1E69C95F0]])
  {
    v7 = [(WBSWebExtensionsController *)self webExtensionForExtension:supportedCopy];
    extensionSupportsCurrentSafariVersion = [v7 extensionSupportsCurrentSafariVersion];
    if (extensionSupportsCurrentSafariVersion <= 6 && (((1 << extensionSupportsCurrentSafariVersion) & 0x62) != 0 || ((1 << extensionSupportsCurrentSafariVersion) & 0x14) != 0 || extensionSupportsCurrentSafariVersion == 3))
    {
      v9 = MEMORY[0x1E696AEC0];
      v10 = _WBSLocalizedString();
      v11 = [(WBSWebExtensionsController *)self _displayNameForExtension:supportedCopy];
      v12 = [v9 stringWithFormat:v10, v11];
    }

    else
    {
      if (!extensionSupportsCurrentSafariVersion)
      {
        goto LABEL_10;
      }

      v12 = 0;
    }

    [(WBSExtensionsController *)self setExtension:supportedCopy isEnabled:0];
    sf_uniqueIdentifier = [supportedCopy sf_uniqueIdentifier];
    uUIDString = [sf_uniqueIdentifier UUIDString];
    [(WBSWebExtensionsController *)self _showPromptForExtensionDisabledBecauseItDoesNotSupportThisVersionOfSafariWithMessage:v12 extensionIdentifier:uUIDString];

LABEL_10:
  }
}

- (id)webExtensionForExtension:(id)extension
{
  v3 = [(WBSExtensionsController *)self extensionDataForExtension:extension];

  return v3;
}

- (id)webExtensionForExtensionIdentifier:(id)identifier
{
  v4 = [(WBSExtensionsController *)self extensionWithUUID:identifier];
  v5 = [(WBSWebExtensionsController *)self webExtensionForExtension:v4];

  return v5;
}

- (id)webExtensionForComposedIdentifier:(id)identifier
{
  v4 = [(WBSExtensionsController *)self extensionWithComposedIdentifier:identifier];
  v5 = [(WBSWebExtensionsController *)self webExtensionForExtension:v4];

  return v5;
}

- (id)webExtensionForBundleIdentifier:(id)identifier
{
  v4 = [(WBSExtensionsController *)self extensionWithBundleIdentifier:identifier];
  v5 = [(WBSWebExtensionsController *)self webExtensionForExtension:v4];

  return v5;
}

- (id)webExtensionForBaseURIHost:(id)host
{
  hostCopy = host;
  v5 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:hostCopy];
  if (v5)
  {
    v6 = [(NSMutableDictionary *)self->super._baseURIHostToExtensionIdentifier objectForKeyedSubscript:v5];
    v7 = [(WBSWebExtensionsController *)self webExtensionForExtensionIdentifier:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)webExtensionForURL:(id)l
{
  v4 = [(WBSWebExtensionsController *)self canonicalURLForWebExtensionURL:l];
  v5 = v4;
  if (v4)
  {
    host = [v4 host];
    v7 = [(WBSWebExtensionsController *)self webExtensionForBaseURIHost:host];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)canonicalURLForWebExtensionURL:(id)l
{
  lCopy = l;
  if ([lCopy safari_isSafariWebExtensionURL])
  {
    host = [lCopy host];
    v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:host];

    if (v6)
    {
      v7 = [(WBSWebExtensionsController *)self webExtensionForBaseURIHost:host];
      if (v7)
      {
        v8 = lCopy;
      }

      else
      {
        v8 = 0;
      }

      v9 = v8;
    }

    else
    {
      v9 = [(WBSWebExtensionsController *)self _extensionURLToLoadFromPersistentStateURL:lCopy];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)installationDateForExtension:(id)extension
{
  v3 = [(WBSExtensionsController *)self _extensionStateForExtension:extension];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 objectForKeyedSubscript:*MEMORY[0x1E69C9280]];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)sendMessage:(id)message toApplicationWithID:(id)d fromExtensionWithIdentifier:(id)identifier completionHandler:(id)handler
{
  v62 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  identifierCopy = identifier;
  handlerCopy = handler;
  v11 = [(WBSWebExtensionsController *)self webExtensionForExtensionIdentifier:identifierCopy];
  v12 = v11;
  if (v11)
  {
    composedIdentifier = [v11 composedIdentifier];
    {
      dictionary = [WBSWebExtensionsController sendMessage:toApplicationWithID:fromExtensionWithIdentifier:completionHandler:]::nativeMessagingActiveContextTracker;
    }

    else
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      [WBSWebExtensionsController sendMessage:toApplicationWithID:fromExtensionWithIdentifier:completionHandler:]::nativeMessagingActiveContextTracker = dictionary;
    }

    array = [dictionary objectForKeyedSubscript:composedIdentifier];
    if (array)
    {
      v15 = [MEMORY[0x1E695DF00] now];
      v53[0] = MEMORY[0x1E69E9820];
      v53[1] = 3221225472;
      v53[2] = __108__WBSWebExtensionsController_sendMessage_toApplicationWithID_fromExtensionWithIdentifier_completionHandler___block_invoke;
      v53[3] = &unk_1E8289418;
      v54 = v15;
      v16 = v15;
      [array safari_removeObjectsPassingTest:v53];
    }

    else
    {
      array = [MEMORY[0x1E695DF70] array];
      [-[WBSWebExtensionsController sendMessage:toApplicationWithID:fromExtensionWithIdentifier:completionHandler:]::nativeMessagingActiveContextTracker setObject:? forKeyedSubscript:?];
    }

    if ([array count] < 0x97)
    {
      v19 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:5.0];
      [array addObject:v19];

      extension = [v12 extension];
      if (!self->_nativeRequestIdentifiersToCompletionHandlers)
      {
        dictionary2 = [MEMORY[0x1E695DF90] dictionary];
        nativeRequestIdentifiersToCompletionHandlers = self->_nativeRequestIdentifiersToCompletionHandlers;
        self->_nativeRequestIdentifiersToCompletionHandlers = dictionary2;
      }

      nativeRequestExtensions = self->_nativeRequestExtensions;
      if (!nativeRequestExtensions)
      {
        v23 = [MEMORY[0x1E695DFA8] set];
        v24 = self->_nativeRequestExtensions;
        self->_nativeRequestExtensions = v23;

        nativeRequestExtensions = self->_nativeRequestExtensions;
      }

      [(NSMutableSet *)nativeRequestExtensions addObject:extension];
      objc_initWeak(buf, self);
      objc_initWeak(&location, extension);
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __108__WBSWebExtensionsController_sendMessage_toApplicationWithID_fromExtensionWithIdentifier_completionHandler___block_invoke_142;
      aBlock[3] = &unk_1E8289440;
      objc_copyWeak(&v50, buf);
      objc_copyWeak(&v51, &location);
      v25 = _Block_copy(aBlock);
      v47[0] = MEMORY[0x1E69E9820];
      v47[1] = 3221225472;
      v47[2] = __108__WBSWebExtensionsController_sendMessage_toApplicationWithID_fromExtensionWithIdentifier_completionHandler___block_invoke_2;
      v47[3] = &unk_1E8289468;
      v26 = v25;
      v48 = v26;
      [extension setRequestCancellationBlock:v47];
      v44[0] = MEMORY[0x1E69E9820];
      v44[1] = 3221225472;
      v44[2] = __108__WBSWebExtensionsController_sendMessage_toApplicationWithID_fromExtensionWithIdentifier_completionHandler___block_invoke_4;
      v44[3] = &unk_1E8289490;
      v27 = v26;
      v45 = v27;
      objc_copyWeak(&v46, &location);
      [extension setRequestInterruptionBlock:v44];
      v42[0] = MEMORY[0x1E69E9820];
      v42[1] = 3221225472;
      v42[2] = __108__WBSWebExtensionsController_sendMessage_toApplicationWithID_fromExtensionWithIdentifier_completionHandler___block_invoke_6;
      v42[3] = &unk_1E82894B8;
      v28 = v27;
      v43 = v28;
      [extension setRequestCompletionBlock:v42];
      v29 = objc_alloc_init(MEMORY[0x1E696ABE0]);
      privacyPreservingProfileIdentifier = [v12 privacyPreservingProfileIdentifier];
      v31 = privacyPreservingProfileIdentifier;
      if (privacyPreservingProfileIdentifier)
      {
        v58[0] = @"message";
        v58[1] = @"profile";
        v59[0] = messageCopy;
        v59[1] = privacyPreservingProfileIdentifier;
        [MEMORY[0x1E695DF20] dictionaryWithObjects:v59 forKeys:v58 count:2];
      }

      else
      {
        v56 = @"message";
        v57 = messageCopy;
        [MEMORY[0x1E695DF20] dictionaryWithObjects:&v57 forKeys:&v56 count:1];
      }
      v32 = ;
      [v29 setUserInfo:v32];

      v55 = v29;
      v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v55 count:1];
      v37[0] = MEMORY[0x1E69E9820];
      v37[1] = 3221225472;
      v37[2] = __108__WBSWebExtensionsController_sendMessage_toApplicationWithID_fromExtensionWithIdentifier_completionHandler___block_invoke_8;
      v37[3] = &unk_1E8289508;
      objc_copyWeak(&v40, buf);
      objc_copyWeak(&v41, &location);
      v38 = handlerCopy;
      v34 = v28;
      v39 = v34;
      [extension beginExtensionRequestWithInputItems:v33 completion:v37];

      objc_destroyWeak(&v41);
      objc_destroyWeak(&v40);

      objc_destroyWeak(&v46);
      objc_destroyWeak(&v51);
      objc_destroyWeak(&v50);
      objc_destroyWeak(&location);
      objc_destroyWeak(buf);
    }

    else
    {
      v17 = WBS_LOG_CHANNEL_PREFIXWebExtensions();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 138477827;
        v61 = composedIdentifier;
        _os_log_impl(&dword_1C6968000, v17, OS_LOG_TYPE_INFO, "Dropping native message from %{private}@ due to too many active native messages", buf, 0xCu);
      }

      extension = [MEMORY[0x1E696ABC0] errorWithDomain:@"SFErrorDomain" code:3 userInfo:0];
      (*(handlerCopy + 2))(handlerCopy, 0, extension);
    }
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0, 0);
  }
}

void __108__WBSWebExtensionsController_sendMessage_toApplicationWithID_fromExtensionWithIdentifier_completionHandler___block_invoke_142(uint64_t a1, void *a2, void *a3, void *a4)
{
  v12 = a2;
  v7 = a3;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v10 = objc_loadWeakRetained((a1 + 40));
    if (v10)
    {
      [WeakRetained[31] removeObject:v10];
      v11 = [WeakRetained[30] objectForKeyedSubscript:v12];
      if (v11)
      {
        [WeakRetained[30] setObject:0 forKeyedSubscript:v12];
        (v11)[2](v11, v7, v8);
      }
    }
  }
}

void __108__WBSWebExtensionsController_sendMessage_toApplicationWithID_fromExtensionWithIdentifier_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __108__WBSWebExtensionsController_sendMessage_toApplicationWithID_fromExtensionWithIdentifier_completionHandler___block_invoke_3;
  block[3] = &unk_1E8283708;
  v7 = *(a1 + 32);
  v12 = v6;
  v13 = v7;
  v11 = v5;
  v8 = v6;
  v9 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __108__WBSWebExtensionsController_sendMessage_toApplicationWithID_fromExtensionWithIdentifier_completionHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __108__WBSWebExtensionsController_sendMessage_toApplicationWithID_fromExtensionWithIdentifier_completionHandler___block_invoke_5;
  v10 = &unk_1E82837D0;
  v12 = *(a1 + 32);
  v4 = v3;
  v11 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], &v7);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained cancelExtensionRequestWithIdentifier:{v4, v7, v8, v9, v10}];
  }
}

void __108__WBSWebExtensionsController_sendMessage_toApplicationWithID_fromExtensionWithIdentifier_completionHandler___block_invoke_5(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = [MEMORY[0x1E696ABC0] errorWithDomain:@"SFErrorDomain" code:3 userInfo:0];
  (*(v1 + 16))(v1, v2, 0);
}

void __108__WBSWebExtensionsController_sendMessage_toApplicationWithID_fromExtensionWithIdentifier_completionHandler___block_invoke_6(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __108__WBSWebExtensionsController_sendMessage_toApplicationWithID_fromExtensionWithIdentifier_completionHandler___block_invoke_7;
  block[3] = &unk_1E8283708;
  v7 = *(a1 + 32);
  v12 = v6;
  v13 = v7;
  v11 = v5;
  v8 = v6;
  v9 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __108__WBSWebExtensionsController_sendMessage_toApplicationWithID_fromExtensionWithIdentifier_completionHandler___block_invoke_7(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 48);
  v5 = [*(a1 + 40) firstObject];
  v3 = [v5 userInfo];
  v4 = [v3 objectForKeyedSubscript:@"message"];
  (*(v2 + 16))(v2, v1, v4, 0);
}

void __108__WBSWebExtensionsController_sendMessage_toApplicationWithID_fromExtensionWithIdentifier_completionHandler___block_invoke_8(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __108__WBSWebExtensionsController_sendMessage_toApplicationWithID_fromExtensionWithIdentifier_completionHandler___block_invoke_9;
  v10[3] = &unk_1E82894E0;
  objc_copyWeak(&v15, a1 + 6);
  objc_copyWeak(&v16, a1 + 7);
  v11 = v5;
  v7 = a1[4];
  v12 = v6;
  v13 = v7;
  v14 = a1[5];
  v8 = v6;
  v9 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v10);

  objc_destroyWeak(&v16);
  objc_destroyWeak(&v15);
}

void __108__WBSWebExtensionsController_sendMessage_toApplicationWithID_fromExtensionWithIdentifier_completionHandler___block_invoke_9(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v3 = objc_loadWeakRetained((a1 + 72));
    if (v3)
    {
      v4 = *(a1 + 48);
      if (*(a1 + 32))
      {
        v5 = _Block_copy(v4);
        [v6[30] setObject:v5 forKeyedSubscript:*(a1 + 32)];

        if (*(a1 + 40))
        {
          (*(*(a1 + 56) + 16))();
          [v3 cancelExtensionRequestWithIdentifier:*(a1 + 32)];
        }
      }

      else
      {
        v4[2](v4, 0, *(a1 + 40));
      }
    }

    WeakRetained = v6;
  }
}

- (id)lastSeenUniqueIdentiferForWebExtension:(id)extension
{
  extension = [extension extension];
  v5 = [(WBSExtensionsController *)self _extensionStateForExtension:extension];
  v6 = [v5 safari_stringForKey:@"LastSeenUniqueIdentifier"];

  return v6;
}

- (void)saveUniqueIdentifierToStorageForWebExtension:(id)extension
{
  extensionCopy = extension;
  extension = [extensionCopy extension];
  v5 = [(WBSExtensionsController *)self _extensionStateForExtension:extension];
  v6 = [v5 mutableCopy];

  if (v6)
  {
    v7 = [v6 safari_stringForKey:@"LastSeenUniqueIdentifier"];
    extension2 = [extensionCopy extension];
    sf_uniqueIdentifier = [extension2 sf_uniqueIdentifier];
    uUIDString = [sf_uniqueIdentifier UUIDString];
    v11 = [v7 isEqual:uUIDString];

    if ((v11 & 1) == 0)
    {
      extension3 = [extensionCopy extension];
      sf_uniqueIdentifier2 = [extension3 sf_uniqueIdentifier];
      uUIDString2 = [sf_uniqueIdentifier2 UUIDString];
      [v6 setObject:uUIDString2 forKeyedSubscript:@"LastSeenUniqueIdentifier"];

      extension4 = [extensionCopy extension];
      [(WBSExtensionsController *)self _setExtensionState:v6 forExtension:extension4];
    }
  }
}

- (void)savePermissionStateUsedToDetermineIfExtensionShouldBeDisabledOnUpgradeForWebExtension:(id)extension
{
  extensionCopy = extension;
  extension = [extensionCopy extension];
  v5 = [(WBSExtensionsController *)self _extensionStateForExtension:extension];
  v6 = [v5 mutableCopy];

  if (v6)
  {
    v7 = *MEMORY[0x1E69C95F8];
    v8 = [v6 safari_BOOLForKey:*MEMORY[0x1E69C95F8]];
    hasAbilityToInjectContentIntoWebpages = [extensionCopy hasAbilityToInjectContentIntoWebpages];
    v10 = MEMORY[0x1E69C9630];
    if (v8 != hasAbilityToInjectContentIntoWebpages || (v11 = [v6 safari_BOOLForKey:*MEMORY[0x1E69C9630]], v11 != objc_msgSend(extensionCopy, "hasDeclarativeNetRequestHostAccessPermission")))
    {
      v12 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(extensionCopy, "hasAbilityToInjectContentIntoWebpages")}];
      [v6 setObject:v12 forKeyedSubscript:v7];

      v13 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(extensionCopy, "hasDeclarativeNetRequestHostAccessPermission")}];
      [v6 setObject:v13 forKeyedSubscript:*v10];

      extension2 = [extensionCopy extension];
      [(WBSExtensionsController *)self _setExtensionState:v6 forExtension:extension2];
    }
  }
}

- (void)clearPermissionStateUsedToDetermineIfExtensionShouldBeDisabledOnUpgradeForExtension:(id)extension
{
  extensionCopy = extension;
  v4 = [(WBSExtensionsController *)self _extensionStateForExtension:?];
  v5 = [v4 mutableCopy];

  if (v5)
  {
    [v5 removeObjectForKey:*MEMORY[0x1E69C95F8]];
    [v5 removeObjectForKey:*MEMORY[0x1E69C9630]];
    [(WBSExtensionsController *)self _setExtensionState:v5 forExtension:extensionCopy];
  }
}

- (void)_deleteStateForExtensionWithComposedIdentifier:(id)identifier
{
  identifierCopy = identifier;
  [(WBSWebExtensionsController *)self _deleteStorageForExtensionWithComposedIdentifier:?];
  [(WBSWebExtensionsController *)self _clearNewTabPreferenceIfNecessaryForRemovedExtensionWithComposedIdentifier:identifierCopy];
}

- (void)_deleteStorageForExtensionWithComposedIdentifier:(id)identifier
{
  v17 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v6 = [standardUserDefaults BOOLForKey:*MEMORY[0x1E69C91E0]];

  if ((v6 & 1) == 0)
  {
    v7 = WBS_LOG_CHANNEL_PREFIXWebExtensions();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138477827;
      v16 = identifierCopy;
      _os_log_impl(&dword_1C6968000, v7, OS_LOG_TYPE_INFO, "Deleting storage for removed extension with composed identifier %{private}@", buf, 0xCu);
    }

    _urlForWebKitExtensionsDirectory = [(WBSWebExtensionsController *)self _urlForWebKitExtensionsDirectory];
    v9 = [_urlForWebKitExtensionsDirectory URLByAppendingPathComponent:identifierCopy isDirectory:1];
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v14 = 0;
    [defaultManager removeItemAtURL:v9 error:&v14];
    v11 = v14;

    if (v11)
    {
      v12 = WBS_LOG_CHANNEL_PREFIXWebExtensions();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        safari_privacyPreservingDescription = [v11 safari_privacyPreservingDescription];
        [(WBSWebExtensionsController *)identifierCopy _deleteStorageForExtensionWithComposedIdentifier:safari_privacyPreservingDescription, buf, v12];
      }
    }
  }
}

- (void)_updateExtensionStateIfPermissionsIncreased:(id)increased
{
  increasedCopy = increased;
  v5 = [(WBSWebExtensionsController *)self webExtensionForExtension:increasedCopy];
  [(WBSWebExtensionsController *)self loadPermissionsIfNecessaryForExtension:v5];
  v6.receiver = self;
  v6.super_class = WBSWebExtensionsController;
  [(WBSExtensionsController *)&v6 _updateExtensionStateIfPermissionsIncreased:increasedCopy];
}

- (BOOL)_shouldDisableExtensionIfAdditionalPermissionsAreRequired:(id)required previousExtensionState:(id)state
{
  stateCopy = state;
  v7 = [(WBSWebExtensionsController *)self webExtensionForExtension:required];
  currentPermissionOrigins = [v7 currentPermissionOrigins];
  v9 = [currentPermissionOrigins count];

  if (v9)
  {
    v10 = [stateCopy safari_numberForKey:*MEMORY[0x1E69C95F8]];
    v11 = v10;
    if (v10)
    {
      if ([v10 BOOLValue])
      {
        goto LABEL_10;
      }

      hasAbilityToInjectContentIntoWebpages = [v7 hasAbilityToInjectContentIntoWebpages];
    }

    else
    {
      v13 = [stateCopy safari_numberForKey:*MEMORY[0x1E69C9630]];
      v11 = v13;
      if (!v13 || ([v13 BOOLValue] & 1) != 0)
      {
        goto LABEL_10;
      }

      hasAbilityToInjectContentIntoWebpages = [v7 hasDeclarativeNetRequestHostAccessPermission];
    }

    if (hasAbilityToInjectContentIntoWebpages)
    {
      LOBYTE(v9) = 1;
LABEL_11:

      goto LABEL_12;
    }

LABEL_10:
    LOBYTE(v9) = 0;
    goto LABEL_11;
  }

LABEL_12:

  return v9;
}

- (void)webExtensionController:(id)controller didUpdateAction:(id)action forExtensionContext:(id)context
{
  actionCopy = action;
  v6 = [WBSWebExtensionData webExtensionForWebKitExtensionContext:context];
  associatedTab = [actionCopy associatedTab];
  v8 = associatedTab;
  if (v6)
  {
    v9 = associatedTab == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    toolbarItem = [v6 toolbarItem];
    [toolbarItem webKitExtensionAction:actionCopy didChangeForTab:v8];
  }
}

- (id)webExtensionController:(id)controller openWindowsForExtensionContext:(id)context
{
  v5 = [WBSWebExtensionData webExtensionForWebKitExtensionContext:context];
  v6 = [(WBSWebExtensionsController *)self _allWindowsForWebExtension:v5];

  return v6;
}

- (id)webExtensionController:(id)controller focusedWindowForExtensionContext:(id)context
{
  v5 = [WBSWebExtensionData webExtensionForWebKitExtensionContext:context];
  if (v5)
  {
    lastFocusedWindow = [(WBSWebExtensionsController *)self lastFocusedWindow];
    v7 = [(WBSWebExtensionsController *)self isWindow:lastFocusedWindow visibleToExtension:v5];
    if (v7)
    {
      v8 = lastFocusedWindow;
    }

    else
    {
      v8 = 0;
    }

    if (v7)
    {
      v9 = 0;
    }

    else
    {
      v9 = lastFocusedWindow;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)webExtensionController:(id)controller openNewTabUsingConfiguration:(id)configuration forExtensionContext:(id)context completionHandler:(id)handler
{
  configurationCopy = configuration;
  handlerCopy = handler;
  window = [configurationCopy window];
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(configurationCopy, "index")}];
  v12 = [configurationCopy url];
  shouldBeActive = [configurationCopy shouldBeActive];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __120__WBSWebExtensionsController_webExtensionController_openNewTabUsingConfiguration_forExtensionContext_completionHandler___block_invoke;
  v16[3] = &unk_1E8289530;
  v14 = handlerCopy;
  v19 = v14;
  v15 = configurationCopy;
  v17 = v15;
  selfCopy = self;
  [(WBSWebExtensionsController *)self _createNewTabInWindow:window tabIndex:v11 url:v12 makeActive:shouldBeActive completionHandler:v16];
}

void __120__WBSWebExtensionsController_webExtensionController_openNewTabUsingConfiguration_forExtensionContext_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    if ([*(a1 + 32) shouldBePinned])
    {
      [*(a1 + 40) _pinTab:v4];
    }

    if ([*(a1 + 32) shouldBeMuted])
    {
      [v4 mute];
    }

    if ([*(a1 + 32) shouldReaderModeBeActive] && (objc_msgSend(v4, "isInReaderMode") & 1) == 0)
    {
      [v4 toggleReader];
    }

    v3 = [*(a1 + 32) parentTab];
    if (v3)
    {
      [*(a1 + 40) _relateParentTab:v3 toTab:v4];
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

- (void)webExtensionController:(id)controller sendMessage:(id)message toApplicationWithIdentifier:(id)identifier forExtensionContext:(id)context replyHandler:(id)handler
{
  messageCopy = message;
  identifierCopy = identifier;
  handlerCopy = handler;
  v13 = [WBSWebExtensionData webExtensionForWebKitExtensionContext:context];
  v14 = v13;
  if (v13)
  {
    identifier = [v13 identifier];
    [(WBSWebExtensionsController *)self sendMessage:messageCopy toApplicationWithID:identifierCopy fromExtensionWithIdentifier:identifier completionHandler:handlerCopy];
  }

  else
  {
    identifier = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:3586 userInfo:0];
    handlerCopy[2](handlerCopy, 0, identifier);
  }
}

- (void)webExtensionController:(id)controller connectUsingMessagePort:(id)port forExtensionContext:(id)context completionHandler:(id)handler
{
  portCopy = port;
  handlerCopy = handler;
  v9 = [WBSWebExtensionData webExtensionForWebKitExtensionContext:context];
  v10 = v9;
  if (v9)
  {
    [v9 connectUsingMessagePort:portCopy];
    handlerCopy[2](handlerCopy, 0);
  }

  else
  {
    v11 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:3586 userInfo:0];
    (handlerCopy)[2](handlerCopy, v11);
  }
}

- (void)webExtensionController:(id)controller promptForPermissionMatchPatterns:(id)patterns inTab:(id)tab forExtensionContext:(id)context completionHandler:(id)handler
{
  v35 = *MEMORY[0x1E69E9840];
  patternsCopy = patterns;
  contextCopy = context;
  handlerCopy = handler;
  v24 = patternsCopy;
  v25 = contextCopy;
  v13 = [WBSWebExtensionData webExtensionForWebKitExtensionContext:contextCopy];
  if (v13)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __130__WBSWebExtensionsController_webExtensionController_promptForPermissionMatchPatterns_inTab_forExtensionContext_completionHandler___block_invoke;
    aBlock[3] = &unk_1E8289558;
    aBlock[4] = self;
    v33 = handlerCopy;
    v14 = patternsCopy;
    v31 = v14;
    v15 = v13;
    v32 = v15;
    v16 = _Block_copy(aBlock);
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v17 = v14;
    v18 = [v17 countByEnumeratingWithState:&v26 objects:v34 count:16];
    if (v18)
    {
      v19 = 0;
      v20 = *v27;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v27 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v19 |= [*(*(&v26 + 1) + 8 * i) matchesAllHosts];
        }

        v18 = [v17 countByEnumeratingWithState:&v26 objects:v34 count:16];
      }

      while (v18);

      if (v19)
      {
        v16[2](v16, 2);
LABEL_14:

        goto LABEL_15;
      }
    }

    else
    {
    }

    v23 = [v17 safari_mapAndFilterObjectsUsingBlock:&__block_literal_global_159];
    [(WBSWebExtensionsController *)self _showAccessRequestAlertForExtension:v15 domains:v23 callingAPIName:@"permissions.request()" responseBlock:v16];

    goto LABEL_14;
  }

  v22 = [MEMORY[0x1E695DFD8] set];
  (*(handlerCopy + 2))(handlerCopy, v22, 0);

LABEL_15:
}

void __130__WBSWebExtensionsController_webExtensionController_promptForPermissionMatchPatterns_inTab_forExtensionContext_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x1E69E9840];
  if (a2 == 1)
  {
    v4 = MEMORY[0x1E695DF00];
    [objc_opt_class() temporarySiteAccessTimeInterval];
    v3 = [v4 dateWithTimeIntervalSinceNow:?];
    goto LABEL_5;
  }

  if (!a2)
  {
    v3 = [MEMORY[0x1E695DF00] distantFuture];
LABEL_5:
    v5 = v3;
    v6 = [WBSWebExtensionMatchPattern matchPatternsWithWebKitPatterns:*(a1 + 40)];
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = [*(a1 + 32) allProfileExtensionsControllers];
    v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v8)
    {
      v9 = *v18;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v18 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v17 + 1) + 8 * i);
          v12 = [*(a1 + 48) extension];
          v13 = [v11 webExtensionForExtension:v12];

          v14 = [MEMORY[0x1E695DFD8] set];
          [v13 grantPermissions:v14 origins:v6 expirationDate:v5];
        }

        v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v8);
    }

    (*(*(a1 + 56) + 16))();
    return;
  }

  v15 = *(a1 + 56);
  v16 = [MEMORY[0x1E695DFD8] set];
  (*(v15 + 16))(v15);
}

id __130__WBSWebExtensionsController_webExtensionController_promptForPermissionMatchPatterns_inTab_forExtensionContext_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 host];
  v3 = [v2 safari_stringByRemovingWwwAndWildcardDotPrefixes];

  return v3;
}

- (void)webExtensionController:(id)controller promptForPermissionToAccessURLs:(id)ls inTab:(id)tab forExtensionContext:(id)context completionHandler:(id)handler
{
  lsCopy = ls;
  tabCopy = tab;
  handlerCopy = handler;
  v12 = [WBSWebExtensionData webExtensionForWebKitExtensionContext:context];
  v13 = v12;
  if (v12)
  {
    [v12 promptForAccessToURLs:lsCopy inTab:tabCopy completionHandler:handlerCopy];
  }

  else
  {
    v14 = [MEMORY[0x1E695DFD8] set];
    handlerCopy[2](handlerCopy, v14, 0);
  }
}

- (NSString)profileName
{
  profile = [(WBSExtensionsController *)self profile];
  title = [profile title];

  return title;
}

- (id)enabledWebExtensionsSortedByDisplayShortName
{
  v13[1] = *MEMORY[0x1E69E9840];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __74__WBSWebExtensionsController_enabledWebExtensionsSortedByDisplayShortName__block_invoke;
  aBlock[3] = &unk_1E82895A0;
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  if ([(WBSExtensionsController *)self loadEnabledExtensionsWasCalled])
  {
    enabledExtensions = [(WBSExtensionsController *)self enabledExtensions];
  }

  else
  {
    extensions = [(WBSExtensionsController *)self extensions];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __74__WBSWebExtensionsController_enabledWebExtensionsSortedByDisplayShortName__block_invoke_2;
    v11[3] = &unk_1E8283E40;
    v11[4] = self;
    enabledExtensions = [extensions safari_filterObjectsUsingBlock:v11];
  }

  v6 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:@"displayShortName" ascending:1 selector:sel_localizedStandardCompare_];
  v7 = [enabledExtensions safari_mapObjectsUsingBlock:v3];
  v13[0] = v6;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  v9 = [v7 sortedArrayUsingDescriptors:v8];

  return v9;
}

id __74__WBSWebExtensionsController_enabledWebExtensionsSortedByDisplayShortName__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) webExtensionForExtension:a2];

  return v2;
}

- (id)commandShortcutConflictsForExtension:(id)extension
{
  extensionCopy = extension;
  if ([extensionCopy hasCommands])
  {
    enabledWebExtensionsSortedByDisplayShortName = [(WBSWebExtensionsController *)self enabledWebExtensionsSortedByDisplayShortName];
    v6 = [enabledWebExtensionsSortedByDisplayShortName mutableCopy];

    if ([v6 containsObject:extensionCopy])
    {
      [v6 removeObject:extensionCopy];
    }

    v7 = [objc_opt_class() _commandShortcutConflictsForExtension:extensionCopy sortedWebExtensions:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)performCommandForKeyCommand:(id)command
{
  v15 = *MEMORY[0x1E69E9840];
  commandCopy = command;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  webKitController = [(WBSWebExtensionsController *)self webKitController];
  extensionContexts = [webKitController extensionContexts];

  v7 = [extensionContexts countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v7)
  {
    v8 = *v11;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v11 != v8)
      {
        objc_enumerationMutation(extensionContexts);
      }

      if ([*(*(&v10 + 1) + 8 * v9) performCommandForKeyCommand:commandCopy])
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [extensionContexts countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

+ (id)_firstConflctForCommand:(id)command inSortedWebExtensions:(id)extensions
{
  v30 = *MEMORY[0x1E69E9840];
  commandCopy = command;
  extensionsCopy = extensions;
  shortcut = [commandCopy shortcut];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = extensionsCopy;
  v7 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v7)
  {
    v8 = *v26;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v25 + 1) + 8 * i);
        commands = [v10 commands];
        v23[0] = MEMORY[0x1E69E9820];
        v23[1] = 3221225472;
        v23[2] = __76__WBSWebExtensionsController__firstConflctForCommand_inSortedWebExtensions___block_invoke;
        v23[3] = &unk_1E82895C8;
        v24 = shortcut;
        v12 = [commands safari_firstObjectPassingTest:v23];

        shortcut2 = [v12 shortcut];
        v14 = [shortcut2 length] == 0;

        if (!v14)
        {
          v16 = [WBSWebExtensionCommandShortcutConflict alloc];
          shortcut3 = [v12 shortcut];
          displayName = [v10 displayName];
          displayShortName = [v10 displayShortName];
          v15 = [(WBSWebExtensionCommandShortcutConflict *)v16 initWithShortcut:shortcut3 extensionDisplayName:displayName extensionDisplayShortName:displayShortName];

          goto LABEL_11;
        }
      }

      v7 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v15 = 0;
LABEL_11:

  return v15;
}

uint64_t __76__WBSWebExtensionsController__firstConflctForCommand_inSortedWebExtensions___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 shortcut];
  v4 = [v2 safari_isCaseInsensitiveEqualToString:v3];

  return v4;
}

+ (id)_commandShortcutConflictsForExtension:(id)extension sortedWebExtensions:(id)extensions
{
  v21 = *MEMORY[0x1E69E9840];
  extensionCopy = extension;
  extensionsCopy = extensions;
  array = [MEMORY[0x1E695DF70] array];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  commands = [extensionCopy commands];
  v10 = [commands countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(commands);
        }

        v13 = [self _firstConflctForCommand:*(*(&v16 + 1) + 8 * i) inSortedWebExtensions:extensionsCopy];
        if (v13)
        {
          [array addObject:v13];
        }
      }

      v10 = [commands countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  v14 = [array copy];

  return v14;
}

- (BOOL)anyWebExtensionContentBlockerEnabled
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = self->super._extensions;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = *v14;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v13 + 1) + 8 * i);
        if ([(WBSWebExtensionsController *)self extensionIsEnabled:v7, v13])
        {
          v8 = [(WBSWebExtensionsController *)self webExtensionForExtension:v7];
          webKitContext = [v8 webKitContext];
          hasContentModificationRules = [webKitContext hasContentModificationRules];

          if (hasContentModificationRules)
          {
            v11 = 1;
            goto LABEL_12;
          }
        }
      }

      v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_12:

  return v11;
}

- (void)loadPermissionsIfNecessaryForExtension:(id)extension
{
  extensionCopy = extension;
  enabledExtensions = self->super._enabledExtensions;
  v7 = extensionCopy;
  extension = [extensionCopy extension];
  LOBYTE(enabledExtensions) = [(NSMutableSet *)enabledExtensions containsObject:extension];

  if ((enabledExtensions & 1) == 0)
  {
    [(WBSWebExtensionsController *)self _loadPermissionsFromStorageForWebExtension:v7 completionHandler:&__block_literal_global_173];
  }
}

- (void)_applyManagedExtensionPermissionsForWebExtension:(id)extension
{
  extensionCopy = extension;
  composedIdentifier = [extensionCopy composedIdentifier];
  mEMORY[0x1E69C88C8] = [MEMORY[0x1E69C88C8] sharedController];
  v5 = [mEMORY[0x1E69C88C8] allDomainsAreManagedForComposedIdentifier:composedIdentifier];

  if (v5)
  {
    v6 = [MEMORY[0x1E695DFA8] set];
    grantedPermissionOrigins = [extensionCopy grantedPermissionOrigins];
    allKeys = [grantedPermissionOrigins allKeys];
    [v6 addObjectsFromArray:allKeys];

    revokedPermissionOrigins = [extensionCopy revokedPermissionOrigins];
    allKeys2 = [revokedPermissionOrigins allKeys];
    [v6 addObjectsFromArray:allKeys2];

    v11 = [MEMORY[0x1E695DFD8] set];
    [extensionCopy removeGrantedAndRevokedPermissions:v11 origins:v6 exactPatternMatchesOnly:1];
  }

  v12 = [MEMORY[0x1E695DFD8] set];
  mEMORY[0x1E69C88C8]2 = [MEMORY[0x1E69C88C8] sharedController];
  v14 = [mEMORY[0x1E69C88C8]2 allowedDomainsForComposedIdentifier:composedIdentifier];
  v15 = [v14 safari_mapAndFilterObjectsUsingBlock:&__block_literal_global_179];
  distantFuture = [MEMORY[0x1E695DF00] distantFuture];
  [extensionCopy grantPermissions:v12 origins:v15 expirationDate:distantFuture];

  v17 = [MEMORY[0x1E695DFD8] set];
  mEMORY[0x1E69C88C8]3 = [MEMORY[0x1E69C88C8] sharedController];
  v19 = [mEMORY[0x1E69C88C8]3 deniedDomainsForComposedIdentifier:composedIdentifier];
  v20 = [v19 safari_mapAndFilterObjectsUsingBlock:&__block_literal_global_179];
  distantFuture2 = [MEMORY[0x1E695DF00] distantFuture];
  [extensionCopy revokePermissions:v17 origins:v20 expirationDate:distantFuture2];
}

id __79__WBSWebExtensionsController__applyManagedExtensionPermissionsForWebExtension___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isEqualToString:@"*"])
  {
    v3 = +[WBSWebExtensionMatchPattern allHostsAndSchemesMatchPattern];
  }

  else
  {
    if ([v2 hasPrefix:@"*"])
    {
      v4 = [v2 substringFromIndex:1];
      v5 = [WBSWebExtensionMatchPattern matchPatternForDomain:v4];

      goto LABEL_7;
    }

    v3 = [WBSWebExtensionMatchPattern matchPatternForDomainWithoutSubdomains:v2];
  }

  v5 = v3;
LABEL_7:

  return v5;
}

- (void)_updateManagedWebsiteAccessForAllExtensions
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = self->super._extensions;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = [(WBSWebExtensionsController *)self webExtensionForExtension:*(*(&v8 + 1) + 8 * v6), v8];
        if ([v7 hasLoadedPermissionsFromStorage])
        {
          [(WBSWebExtensionsController *)self _applyManagedExtensionPermissionsForWebExtension:v7];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (void)_updateManagedPrivateBrowsingStateForAllExtensions
{
  v16 = *MEMORY[0x1E69E9840];
  mEMORY[0x1E69C88C8] = [MEMORY[0x1E69C88C8] sharedController];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = self->super._extensions;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = [(WBSWebExtensionsController *)self webExtensionForExtension:*(*(&v11 + 1) + 8 * v7), v11];
        composedIdentifier = [v8 composedIdentifier];
        v10 = [mEMORY[0x1E69C88C8] managedExtensionPrivateBrowsingStateForComposedIdentifier:composedIdentifier];

        if (v10)
        {
          [v8 setAllowedInPrivateBrowsing:v10 == 1];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }
}

- (void)_loadPermissionsFromStorageForWebExtension:(id)extension completionHandler:(id)handler
{
  v55[5] = *MEMORY[0x1E69E9840];
  extensionCopy = extension;
  handlerCopy = handler;
  if (!self->super._extensionIdentifierToStateMap)
  {
    readExtensionsStateFromStorage = [(WBSExtensionsController *)self readExtensionsStateFromStorage];
    v9 = [readExtensionsStateFromStorage mutableCopy];
    extensionIdentifierToStateMap = self->super._extensionIdentifierToStateMap;
    self->super._extensionIdentifierToStateMap = v9;
  }

  extension = [extensionCopy extension];
  v12 = [(WBSExtensionsController *)self _extensionStateForExtension:extension];

  if (v12 && ![extensionCopy hasLoadedPermissionsFromStorage])
  {
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    v15 = [standardUserDefaults BOOLForKey:*MEMORY[0x1E69C91C0]];

    if (v15)
    {
      v16 = [v12 mutableCopy];
      v55[0] = @"GrantedPermissions";
      v55[1] = @"GrantedPermissionOrigins";
      v55[2] = @"RevokedPermissions";
      v55[3] = @"RevokedPermissionOrigins";
      v55[4] = *MEMORY[0x1E69C92A8];
      v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:5];
      [v16 removeObjectsForKeys:v17];

      v13 = [v16 copy];
      v18 = self->super._extensionIdentifierToStateMap;
      extension2 = [extensionCopy extension];
      v20 = [(WBSExtensionsController *)self composedIdentifierForExtensionStateForExtension:extension2];
      [(NSMutableDictionary *)v18 setObject:v13 forKeyedSubscript:v20];
    }

    else
    {
      v13 = v12;
    }

    v21 = [v13 safari_dictionaryForKey:@"GrantedPermissions"];
    v22 = v21;
    v23 = MEMORY[0x1E695E0F8];
    if (v21)
    {
      v23 = v21;
    }

    v24 = v23;

    webKitExtension = [extensionCopy webKitExtension];
    requestedPermissions = [webKitExtension requestedPermissions];
    v44 = [requestedPermissions safari_dictionaryByMappingObjectsToValuesUsingBlock:&__block_literal_global_186_0];

    v45 = [v44 safari_dictionaryByMergingWithDictionary:v24];

    [extensionCopy setGrantedPermissions:?];
    v27 = [v13 safari_dictionaryForKey:@"RevokedPermissions"];
    v28 = v27;
    if (v27)
    {
      v29 = v27;
    }

    else
    {
      v29 = MEMORY[0x1E695E0F8];
    }

    [extensionCopy setRevokedPermissions:v29];

    requestsAccessToAllHosts = [extensionCopy requestsAccessToAllHosts];
    manifestAccessibleOrigins = [extensionCopy manifestAccessibleOrigins];
    manifestOptionalPermissionOrigins = [extensionCopy manifestOptionalPermissionOrigins];
    v51 = 0;
    v52 = &v51;
    v53 = 0x2020000000;
    v54 = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __91__WBSWebExtensionsController__loadPermissionsFromStorageForWebExtension_completionHandler___block_invoke_2;
    aBlock[3] = &unk_1E8289638;
    v50 = requestsAccessToAllHosts;
    v33 = manifestAccessibleOrigins;
    v47 = v33;
    v49 = &v51;
    v34 = manifestOptionalPermissionOrigins;
    v48 = v34;
    v35 = _Block_copy(aBlock);
    v36 = [v13 safari_dictionaryForKey:@"GrantedPermissionOrigins"];
    v37 = [v36 safari_mapAndFilterKeysUsingBlock:v35];
    v38 = v37;
    if (v37)
    {
      v39 = v37;
    }

    else
    {
      v39 = MEMORY[0x1E695E0F8];
    }

    [extensionCopy setGrantedPermissionOrigins:v39];

    v40 = [v13 safari_dictionaryForKey:@"RevokedPermissionOrigins"];
    v41 = [v40 safari_mapAndFilterKeysUsingBlock:v35];
    v42 = v41;
    if (v41)
    {
      v43 = v41;
    }

    else
    {
      v43 = MEMORY[0x1E695E0F8];
    }

    [extensionCopy setRevokedPermissionOrigins:v43];

    [(WBSWebExtensionsController *)self _applyManagedExtensionPermissionsForWebExtension:extensionCopy];
    [extensionCopy setHasLoadedPermissionsFromStorage:1];
    if (*(v52 + 24) == 1)
    {
      [(WBSWebExtensionsController *)self _savePermissionsToStorageForWebExtension:extensionCopy];
    }

    handlerCopy[2](handlerCopy);

    _Block_object_dispose(&v51, 8);
  }

  else
  {
    handlerCopy[2](handlerCopy);
    v13 = v12;
  }
}

id __91__WBSWebExtensionsController__loadPermissionsFromStorageForWebExtension_completionHandler___block_invoke()
{
  v0 = [MEMORY[0x1E695DF00] distantFuture];

  return v0;
}

id __91__WBSWebExtensionsController__loadPermissionsFromStorageForWebExtension_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [WBSWebExtensionMatchPattern matchPatternWithString:v3];
  v5 = v4;
  if (*(a1 + 56))
  {
    v6 = v4;
  }

  else
  {
    if ([v4 matchesAllHosts])
    {
      v7 = WBS_LOG_CHANNEL_PREFIXWebExtensions();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = *(a1 + 32);
        *buf = 138478083;
        v19 = v5;
        v20 = 2113;
        v21 = v8;
        _os_log_impl(&dword_1C6968000, v7, OS_LOG_TYPE_INFO, "Skipping loading permission: %{private}@ since it doesn't match any manifest accessible patterns (%{private}@)", buf, 0x16u);
      }

      v6 = 0;
      *(*(*(a1 + 48) + 8) + 24) = 1;
    }

    else
    {
      v9 = *(a1 + 32);
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __91__WBSWebExtensionsController__loadPermissionsFromStorageForWebExtension_completionHandler___block_invoke_187;
      v16[3] = &unk_1E8289610;
      v6 = v5;
      v17 = v6;
      if ([v9 safari_containsObjectPassingTest:v16])
      {
        v5 = 0;
      }

      else
      {
        v10 = *(a1 + 40);
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __91__WBSWebExtensionsController__loadPermissionsFromStorageForWebExtension_completionHandler___block_invoke_2_189;
        v14[3] = &unk_1E8289610;
        v6 = v6;
        v15 = v6;
        if ([v10 safari_containsObjectPassingTest:v14])
        {
          v5 = 0;
        }

        else
        {
          v11 = WBS_LOG_CHANNEL_PREFIXWebExtensions();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
          {
            v12 = *(a1 + 32);
            *buf = 138478083;
            v19 = v6;
            v20 = 2113;
            v21 = v12;
            _os_log_impl(&dword_1C6968000, v11, OS_LOG_TYPE_INFO, "Skipping loading permission: %{private}@ since it doesn't match any manifest accessible patterns (%{private}@)", buf, 0x16u);
          }

          *(*(*(a1 + 48) + 8) + 24) = 1;
          v5 = v6;
          v6 = 0;
        }
      }
    }
  }

  return v6;
}

- (void)_savePermissionsToStorageForWebExtension:(id)extension
{
  extensionCopy = extension;
  extension = [extensionCopy extension];
  v5 = [(WBSExtensionsController *)self _extensionStateForExtension:extension];
  v6 = [v5 mutableCopy];

  if (v6)
  {
    grantedPermissions = [extensionCopy grantedPermissions];
    [v6 setObject:grantedPermissions forKeyedSubscript:@"GrantedPermissions"];

    revokedPermissions = [extensionCopy revokedPermissions];
    [v6 setObject:revokedPermissions forKeyedSubscript:@"RevokedPermissions"];

    grantedPermissionOrigins = [extensionCopy grantedPermissionOrigins];
    v10 = [grantedPermissionOrigins safari_mapAndFilterKeysUsingBlock:&__block_literal_global_193_0];
    [v6 setObject:v10 forKeyedSubscript:@"GrantedPermissionOrigins"];

    revokedPermissionOrigins = [extensionCopy revokedPermissionOrigins];
    v12 = [revokedPermissionOrigins safari_mapAndFilterKeysUsingBlock:&__block_literal_global_193_0];
    [v6 setObject:v12 forKeyedSubscript:@"RevokedPermissionOrigins"];

    extension2 = [extensionCopy extension];
    [(WBSExtensionsController *)self _setExtensionState:v6 forExtension:extension2];
  }
}

id __71__WBSWebExtensionsController__savePermissionsToStorageForWebExtension___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 description];

  return v2;
}

- (void)_savePermissionsToStorageIfNecessaryAndPostDidChangeNotificationForWebExtension:(id)extension
{
  v11[1] = *MEMORY[0x1E69E9840];
  extensionCopy = extension;
  webExtension = [extensionCopy webExtension];
  if (([extensionCopy permissionsWereUpdatedDueToAnExternalChange] & 1) == 0)
  {
    [(WBSWebExtensionsController *)self _savePermissionsToStorageForWebExtension:webExtension];
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  webExtension2 = [extensionCopy webExtension];
  v10 = @"permissionsWereUpdatedDueToAnExternalChange";
  v8 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(extensionCopy, "permissionsWereUpdatedDueToAnExternalChange")}];
  v11[0] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  [defaultCenter postNotificationName:@"webExtensionPermissionDidChange" object:webExtension2 userInfo:v9];
}

- (void)_savePermissionsToStorageAndPostDidChangeNotificationSoonForWebExtension:(id)extension permissionsWereUpdatedDueToAnExternalChange:(BOOL)change
{
  changeCopy = change;
  extensionCopy = extension;
  if ((_MergedGlobals_0 & 1) == 0)
  {
    [WBSWebExtensionsController _savePermissionsToStorageAndPostDidChangeNotificationSoonForWebExtension:permissionsWereUpdatedDueToAnExternalChange:];
  }

  v6 = [[WBSSavePermissionsToStorageInformation alloc] initWithWebExtension:extensionCopy permissionsWereUpdatedDueToAnExternalChange:changeCopy];
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:qword_1EC1D51B0 object:v6];
  [(WBSWebExtensionsController *)self performSelector:qword_1EC1D51B0 withObject:v6 afterDelay:0.01];
}

- (void)_webExtensionDataPermissionsWereGranted:(id)granted
{
  grantedCopy = granted;
  object = [grantedCopy object];
  extensionsController = [object extensionsController];

  if (extensionsController == self)
  {
    userInfo = [grantedCopy userInfo];
    v7 = [userInfo objectForKeyedSubscript:@"permissionOrigins"];

    [object dispatchPendingWebsiteRequestsMatchingOriginPatterns:v7];
    userInfo2 = [grantedCopy userInfo];
    v9 = [userInfo2 safari_BOOLForKey:@"permissionsWereUpdatedDueToAnExternalChange"];

    [(WBSWebExtensionsController *)self _savePermissionsToStorageAndPostDidChangeNotificationSoonForWebExtension:object permissionsWereUpdatedDueToAnExternalChange:v9];
  }
}

- (void)_webExtensionDataPermissionsWereRevokedOrRemoved:(id)removed
{
  removedCopy = removed;
  object = [removedCopy object];
  extensionsController = [object extensionsController];

  if (extensionsController == self)
  {
    userInfo = [removedCopy userInfo];
    v7 = [userInfo objectForKeyedSubscript:@"permissionOrigins"];

    name = [removedCopy name];
    v9 = [name isEqualToString:@"webExtensionGrantedPermissionsWereRemoved"];

    if ((v9 & 1) == 0)
    {
      name2 = [removedCopy name];
      v11 = [name2 isEqualToString:@"webExtensionPermissionsWereRevoked"];

      if (v11)
      {
        [object dispatchPendingWebsiteRequestsMatchingOriginPatterns:v7];
      }

      else
      {
        name3 = [removedCopy name];
        [name3 isEqualToString:@"webExtensionRevokedPermissionsWereRemoved"];
      }
    }

    userInfo2 = [removedCopy userInfo];
    v14 = [userInfo2 safari_BOOLForKey:@"permissionsWereUpdatedDueToAnExternalChange"];

    [(WBSWebExtensionsController *)self _savePermissionsToStorageAndPostDidChangeNotificationSoonForWebExtension:object permissionsWereUpdatedDueToAnExternalChange:v14];
  }
}

- (void)_webExtensionEnabledStateInPrivateBrowsingChanged:(id)changed
{
  changedCopy = changed;
  userInfo = [changedCopy userInfo];
  v5 = [userInfo safari_stringForKey:@"WBSWebExtensionComposedIdentifierKey"];

  if ([v5 length])
  {
    v6 = [(WBSWebExtensionsController *)self webExtensionForComposedIdentifier:v5];
    userInfo2 = [changedCopy userInfo];
    [v6 setAllowedInPrivateBrowsing:{objc_msgSend(userInfo2, "safari_BOOLForKey:", *MEMORY[0x1E69C9218])}];
  }
}

+ (double)pendingSiteAccessTimeoutInterval
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults doubleForKey:*MEMORY[0x1E69C91A8]];
  v4 = v3;

  result = 60.0;
  if (v4 != 0.0)
  {
    return v4;
  }

  return result;
}

- (id)_filteredOriginsRemovingAllHostsPatterns:(id)patterns containedAllHostsPattern:(BOOL *)pattern
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __96__WBSWebExtensionsController__filteredOriginsRemovingAllHostsPatterns_containedAllHostsPattern___block_invoke;
  v7[3] = &unk_1E8289680;
  v7[4] = &v8;
  v5 = [patterns safari_mapAndFilterObjectsUsingBlock:v7];
  if (pattern)
  {
    *pattern = *(v9 + 24);
  }

  _Block_object_dispose(&v8, 8);

  return v5;
}

id __96__WBSWebExtensionsController__filteredOriginsRemovingAllHostsPatterns_containedAllHostsPattern___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 matchesAllHosts])
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;

    v3 = 0;
  }

  return v3;
}

- (void)_permissionsMayHaveBeenChangedExternallyForExtension:(id)extension previousExtensionState:(id)state
{
  extensionCopy = extension;
  stateCopy = state;
  v8 = [stateCopy safari_dictionaryForKey:@"GrantedPermissionOrigins"];
  v9 = [v8 safari_mapAndFilterKeysUsingBlock:&__block_literal_global_199];
  v10 = v9;
  v11 = MEMORY[0x1E695E0F8];
  if (v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = MEMORY[0x1E695E0F8];
  }

  v13 = v12;

  v14 = [stateCopy safari_dictionaryForKey:@"RevokedPermissionOrigins"];
  v15 = [v14 safari_mapAndFilterKeysUsingBlock:&__block_literal_global_199];
  v16 = v15;
  if (v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = v11;
  }

  v18 = v17;

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __106__WBSWebExtensionsController__permissionsMayHaveBeenChangedExternallyForExtension_previousExtensionState___block_invoke_2;
  v22[3] = &unk_1E8282EF0;
  v19 = extensionCopy;
  v23 = v19;
  v20 = v13;
  v24 = v20;
  v25 = v18;
  v21 = v18;
  [(WBSWebExtensionsController *)self _loadPermissionsFromStorageForWebExtension:v19 completionHandler:v22];
}

id __106__WBSWebExtensionsController__permissionsMayHaveBeenChangedExternallyForExtension_previousExtensionState___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [WBSWebExtensionMatchPattern matchPatternWithString:a2];

  return v2;
}

- (BOOL)isTab:(id)tab visibleToExtension:(id)extension
{
  tabCopy = tab;
  extensionCopy = extension;
  v11 = 1;
  if (tabCopy)
  {
    profile = [tabCopy profile];
    extensionsController = [extensionCopy extensionsController];
    profile2 = [extensionsController profile];
    v10 = [profile isEqual:profile2];

    if (v10 & 1) == 0 || ([extensionCopy allowedInPrivateBrowsing] & 1) == 0 && (objc_msgSend(tabCopy, "isPrivate"))
    {
      v11 = 0;
    }
  }

  return v11;
}

- (void)didMoveTab:(id)tab fromIndex:(unint64_t)index toIndex:(unint64_t)toIndex
{
  tabCopy = tab;
  webKitController = self->_webKitController;
  v10 = tabCopy;
  webExtensionWindow = [tabCopy webExtensionWindow];
  [(WKWebExtensionController *)webKitController didMoveTab:v10 fromIndex:index inWindow:webExtensionWindow];
}

- (void)didMoveTab:(id)tab fromWindowWithID:(double)d indexInOldWindow:(unint64_t)window
{
  tabCopy = tab;
  if (d == -1.0)
  {
    v8 = 0;
  }

  else
  {
    v8 = [(WBSWebExtensionsController *)self _findWindowWithID:d];
  }

  [(WKWebExtensionController *)self->_webKitController didMoveTab:tabCopy fromIndex:window inWindow:v8];
}

- (void)didSelectTab:(id)tab previousTab:(id)previousTab
{
  v18 = *MEMORY[0x1E69E9840];
  tabCopy = tab;
  [(WKWebExtensionController *)self->_webKitController didActivateTab:tabCopy previousActiveTab:previousTab];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = self->super._enabledExtensions;
  v8 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = [(WBSWebExtensionsController *)self webExtensionForExtension:*(*(&v13 + 1) + 8 * v10), v13];
        toolbarItem = [v11 toolbarItem];
        [toolbarItem didSelectTab:tabCopy];

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }
}

- (BOOL)isWindow:(id)window visibleToExtension:(id)extension
{
  windowCopy = window;
  extensionCopy = extension;
  v11 = 1;
  if (windowCopy)
  {
    profile = [windowCopy profile];
    extensionsController = [extensionCopy extensionsController];
    profile2 = [extensionsController profile];
    v10 = [profile isEqual:profile2];

    if (v10 & 1) == 0 || ([extensionCopy allowedInPrivateBrowsing] & 1) == 0 && (objc_msgSend(windowCopy, "isPrivate"))
    {
      v11 = 0;
    }
  }

  return v11;
}

- (id)_persistentStateURLForExtensionURL:(id)l
{
  v4 = [MEMORY[0x1E696AF20] componentsWithURL:l resolvingAgainstBaseURL:0];
  host = [v4 host];
  v6 = [(WBSWebExtensionsController *)self webExtensionForBaseURIHost:host];

  if (v6)
  {
    composedIdentifier = [v6 composedIdentifier];
    uRLHostAllowedCharacterSet = [MEMORY[0x1E696AB08] URLHostAllowedCharacterSet];
    v9 = [composedIdentifier stringByAddingPercentEncodingWithAllowedCharacters:uRLHostAllowedCharacterSet];
    [v4 setEncodedHost:v9];

    v10 = [v4 URL];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_extensionURLToLoadFromPersistentStateURL:(id)l
{
  lCopy = l;
  if (lCopy)
  {
    v5 = [MEMORY[0x1E696AF20] componentsWithURL:lCopy resolvingAgainstBaseURL:0];
    safari_composedIdentifierAndProfileIdentifierInSafariWebExtensionURL = [lCopy safari_composedIdentifierAndProfileIdentifierInSafariWebExtensionURL];
    first = [safari_composedIdentifierAndProfileIdentifierInSafariWebExtensionURL first];
    v8 = [(WBSWebExtensionsController *)self webExtensionForComposedIdentifier:first];
    v9 = v8;
    if (v8)
    {
      baseURIHost = [v8 baseURIHost];
      uUIDString = [baseURIHost UUIDString];
      [v5 setHost:uUIDString];

      v12 = [v5 URL];
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (WBSCoreAnalyticsExtensionsStatistics)extensionStatisticsReport
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __55__WBSWebExtensionsController_extensionStatisticsReport__block_invoke;
  aBlock[3] = &unk_1E82896C8;
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __55__WBSWebExtensionsController_extensionStatisticsReport__block_invoke_2;
  v13[3] = &unk_1E82896C8;
  v13[4] = self;
  v4 = _Block_copy(v13);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __55__WBSWebExtensionsController_extensionStatisticsReport__block_invoke_3;
  v12[3] = &unk_1E82896F0;
  v12[4] = self;
  v5 = _Block_copy(v12);
  v6 = objc_alloc(MEMORY[0x1E69C8848]);
  extensions = self->super._extensions;
  tabOverridePreferencesManager = [(WBSWebExtensionsController *)self tabOverridePreferencesManager];
  safari_browserDefaults = [MEMORY[0x1E695E000] safari_browserDefaults];
  v10 = [v6 initWithExtensionsList:extensions extractDeveloperIdentifier:v3 extractComposedIdentifier:v4 extensionTelemetryDataPredicate:v5 newTabPageIsOverridden:{objc_msgSend(tabOverridePreferencesManager, "isNewTabPageOverriddenByAnEnabledExtensionInUserDefaults:", safari_browserDefaults)}];

  return v10;
}

id __55__WBSWebExtensionsController_extensionStatisticsReport__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) _developerIdentifierForExtension:a2];

  return v2;
}

id __55__WBSWebExtensionsController_extensionStatisticsReport__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) composedIdentifierForExtensionStateForExtension:a2];

  return v2;
}

id __55__WBSWebExtensionsController_extensionStatisticsReport__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(MEMORY[0x1E69C8878]);
  v5 = [*(a1 + 32) webExtensionForExtension:v3];
  [v4 setEnabled:{objc_msgSend(*(*(a1 + 32) + 56), "containsObject:", v3)}];
  v6 = [*(a1 + 32) composedIdentifierForExtensionStateForExtension:v3];
  [v4 setIdentifier:v6];

  [v4 setManifestVersion:{objc_msgSend(v5, "manifestVersion")}];
  [v4 setAllWebsitesPermissionLevel:{objc_msgSend(v5, "hasPermissionToAccessAllHosts")}];
  v7 = [v5 currentPermissionOrigins];
  [v4 setWebsitesGrantedAccessCount:{objc_msgSend(v7, "count")}];

  v8 = [v5 revokedPermissionOrigins];
  [v4 setWebsitesDeniedAccessCount:{objc_msgSend(v8, "count")}];

  v9 = [v5 newTabOverridePageURL];
  [v4 setCanOverrideNewTabPage:v9 != 0];

  return v4;
}

- (void)_grantRequestedPermissionsIfNecessaryForExtension:(id)extension
{
  v42 = *MEMORY[0x1E69E9840];
  extensionCopy = extension;
  safari_browserDefaults = [MEMORY[0x1E695E000] safari_browserDefaults];
  v5 = [safari_browserDefaults BOOLForKey:@"DidGrantSearchProviderAccessToWebNavigationExtensions"];

  if ((v5 & 1) == 0)
  {
    v6 = extensionCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;

    v31 = v8;
    {
      [WBSWebExtensionsController _grantRequestedPermissionsIfNecessaryForExtension:]::searchProviderComposedIdentifiers = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F466D6A0];
    }

    composedIdentifier = [v8 composedIdentifier];
    if ([-[WBSWebExtensionsController _grantRequestedPermissionsIfNecessaryForExtension:]::searchProviderComposedIdentifiers containsObject:?])
    {
      grantedPermissionOrigins = [v8 grantedPermissionOrigins];
      v10 = [grantedPermissionOrigins count];

      if (!v10)
      {
        migratedWebNavigationExtensionIdentifiers = self->_migratedWebNavigationExtensionIdentifiers;
        if (!migratedWebNavigationExtensionIdentifiers)
        {
          v12 = [MEMORY[0x1E695DFA8] set];
          v13 = self->_migratedWebNavigationExtensionIdentifiers;
          self->_migratedWebNavigationExtensionIdentifiers = v12;

          migratedWebNavigationExtensionIdentifiers = self->_migratedWebNavigationExtensionIdentifiers;
        }

        [(NSMutableSet *)migratedWebNavigationExtensionIdentifiers addObject:composedIdentifier];
        v14 = MEMORY[0x1E695DFD8];
        _domainForDefaultSearchProvider = [(WBSWebExtensionsController *)self _domainForDefaultSearchProvider];
        v16 = [WBSWebExtensionMatchPattern matchPatternForDomain:_domainForDefaultSearchProvider];
        v30 = [v14 setWithObject:v16];

        v17 = [MEMORY[0x1E695DFD8] set];
        distantFuture = [MEMORY[0x1E695DF00] distantFuture];
        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        allProfileExtensionsControllers = [(WBSExtensionsController *)self allProfileExtensionsControllers];
        obj = allProfileExtensionsControllers;
        v20 = [allProfileExtensionsControllers countByEnumeratingWithState:&v37 objects:v41 count:16];
        if (v20)
        {
          v21 = *v38;
          do
          {
            for (i = 0; i != v20; ++i)
            {
              if (*v38 != v21)
              {
                objc_enumerationMutation(obj);
              }

              v23 = *(*(&v37 + 1) + 8 * i);
              extension = [v31 extension];
              v25 = [v23 webExtensionForExtension:extension];

              v32[0] = MEMORY[0x1E69E9820];
              v32[1] = 3221225472;
              v32[2] = __80__WBSWebExtensionsController__grantRequestedPermissionsIfNecessaryForExtension___block_invoke;
              v32[3] = &unk_1E8287CB0;
              v26 = v25;
              v33 = v26;
              v34 = v17;
              v35 = v30;
              v36 = distantFuture;
              [v23 _loadPermissionsFromStorageForWebExtension:v26 completionHandler:v32];
            }

            allProfileExtensionsControllers = obj;
            v20 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
          }

          while (v20);
        }
      }
    }
  }
}

- (void)_deleteStorageForExtensionWithComposedIdentifier:(uint8_t *)buf .cold.1(uint64_t a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138478083;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_1C6968000, log, OS_LOG_TYPE_ERROR, "Failed to delete storage for removed extension with composed identifier %{private}@: %{public}@", buf, 0x16u);
}

@end