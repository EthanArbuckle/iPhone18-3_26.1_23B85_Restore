@interface WBSWebExtensionsController
+ (double)pendingSiteAccessTimeoutInterval;
+ (id)_commandShortcutConflictsForExtension:(id)a3 sortedWebExtensions:(id)a4;
+ (id)_composedIdentifierForStateOfExtensionWithBundleIdentifier:(id)a3 developerIdentifier:(id)a4;
+ (id)_firstConflctForCommand:(id)a3 inSortedWebExtensions:(id)a4;
- (BOOL)_extensionShouldBeAutomaticallyEnabled:(id)a3;
- (BOOL)_extensionShouldBeEnabled:(id)a3;
- (BOOL)_shouldDisableExtensionIfAdditionalPermissionsAreRequired:(id)a3 previousExtensionState:(id)a4;
- (BOOL)anyWebExtensionContentBlockerEnabled;
- (BOOL)extensionIsEnabled:(id)a3;
- (BOOL)isTab:(id)a3 visibleToExtension:(id)a4;
- (BOOL)isWindow:(id)a3 visibleToExtension:(id)a4;
- (NSString)profileName;
- (WBSCoreAnalyticsExtensionsStatistics)extensionStatisticsReport;
- (WBSWebExtensionsController)initWithProfileServerID:(id)a3 userContentController:(id)a4;
- (id)_displayNameForExtension:(id)a3;
- (id)_displayShortNameForExtension:(id)a3;
- (id)_displayVersionForExtension:(id)a3;
- (id)_extensionURLToLoadFromPersistentStateURL:(id)a3;
- (id)_filteredOriginsRemovingAllHostsPatterns:(id)a3 containedAllHostsPattern:(BOOL *)a4;
- (id)_persistentStateURLForExtensionURL:(id)a3;
- (id)_updatedExtensionStateForCurrentPermissions:(id)a3 previousExtensionState:(id)a4;
- (id)_urlForExtensionSettings;
- (id)_urlForWebKitExtensionsDirectory;
- (id)_versionNumberForExtension:(id)a3;
- (id)canonicalURLForWebExtensionURL:(id)a3;
- (id)commandShortcutConflictsForExtension:(id)a3;
- (id)enabledExtensionsWithPrivateBrowsingEnabled:(BOOL)a3;
- (id)enabledWebExtensionsSortedByDisplayShortName;
- (id)extensionStateKeysToCopy;
- (id)installationDateForExtension:(id)a3;
- (id)lastSeenUniqueIdentiferForWebExtension:(id)a3;
- (id)webExtensionController:(id)a3 focusedWindowForExtensionContext:(id)a4;
- (id)webExtensionController:(id)a3 openWindowsForExtensionContext:(id)a4;
- (id)webExtensionForBaseURIHost:(id)a3;
- (id)webExtensionForBundleIdentifier:(id)a3;
- (id)webExtensionForComposedIdentifier:(id)a3;
- (id)webExtensionForExtension:(id)a3;
- (id)webExtensionForExtensionIdentifier:(id)a3;
- (id)webExtensionForURL:(id)a3;
- (void)_applyManagedExtensionPermissionsForWebExtension:(id)a3;
- (void)_deleteStateForExtensionWithComposedIdentifier:(id)a3;
- (void)_deleteStorageForExtensionWithComposedIdentifier:(id)a3;
- (void)_finishedLoadingExtensions;
- (void)_grantRequestedPermissionsIfNecessaryForExtension:(id)a3;
- (void)_loadEnabledExtension:(id)a3;
- (void)_loadPermissionsFromStorageForWebExtension:(id)a3 completionHandler:(id)a4;
- (void)_permissionsMayHaveBeenChangedExternallyForExtension:(id)a3 previousExtensionState:(id)a4;
- (void)_savePermissionsToStorageAndPostDidChangeNotificationSoonForWebExtension:(id)a3 permissionsWereUpdatedDueToAnExternalChange:(BOOL)a4;
- (void)_savePermissionsToStorageForWebExtension:(id)a3;
- (void)_savePermissionsToStorageIfNecessaryAndPostDidChangeNotificationForWebExtension:(id)a3;
- (void)_unloadPreviouslyEnabledExtension:(id)a3;
- (void)_updateExtensionNewTabPageIfNecessary;
- (void)_updateExtensionStateIfPermissionsIncreased:(id)a3;
- (void)_updateExtensionStateIfThisVersionOfSafariIsNotSupported:(id)a3;
- (void)_updateManagedPrivateBrowsingStateForAllExtensions;
- (void)_updateManagedWebsiteAccessForAllExtensions;
- (void)_webExtensionDataPermissionsWereGranted:(id)a3;
- (void)_webExtensionDataPermissionsWereRevokedOrRemoved:(id)a3;
- (void)_webExtensionEnabledStateInPrivateBrowsingChanged:(id)a3;
- (void)clearPermissionStateUsedToDetermineIfExtensionShouldBeDisabledOnUpgradeForExtension:(id)a3;
- (void)didMoveTab:(id)a3 fromIndex:(unint64_t)a4 toIndex:(unint64_t)a5;
- (void)didMoveTab:(id)a3 fromWindowWithID:(double)a4 indexInOldWindow:(unint64_t)a5;
- (void)didSelectTab:(id)a3 previousTab:(id)a4;
- (void)initializeWebKitControllerIfNeededFromSettings:(BOOL)a3;
- (void)loadPermissionsIfNecessaryForExtension:(id)a3;
- (void)loadSuitableDiscoveredExtensions;
- (void)performCommandForKeyCommand:(id)a3;
- (void)removeOldExtensionStateForExtension:(id)a3;
- (void)savePermissionStateUsedToDetermineIfExtensionShouldBeDisabledOnUpgradeForWebExtension:(id)a3;
- (void)saveUniqueIdentifierToStorageForWebExtension:(id)a3;
- (void)sendMessage:(id)a3 toApplicationWithID:(id)a4 fromExtensionWithIdentifier:(id)a5 completionHandler:(id)a6;
- (void)setExtension:(id)a3 isEnabled:(BOOL)a4 dueToUserGesture:(BOOL)a5 skipSavingToStorage:(BOOL)a6;
- (void)webExtensionController:(id)a3 connectUsingMessagePort:(id)a4 forExtensionContext:(id)a5 completionHandler:(id)a6;
- (void)webExtensionController:(id)a3 didUpdateAction:(id)a4 forExtensionContext:(id)a5;
- (void)webExtensionController:(id)a3 openNewTabUsingConfiguration:(id)a4 forExtensionContext:(id)a5 completionHandler:(id)a6;
- (void)webExtensionController:(id)a3 promptForPermissionMatchPatterns:(id)a4 inTab:(id)a5 forExtensionContext:(id)a6 completionHandler:(id)a7;
- (void)webExtensionController:(id)a3 promptForPermissionToAccessURLs:(id)a4 inTab:(id)a5 forExtensionContext:(id)a6 completionHandler:(id)a7;
- (void)webExtensionController:(id)a3 sendMessage:(id)a4 toApplicationWithIdentifier:(id)a5 forExtensionContext:(id)a6 replyHandler:(id)a7;
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
  v3 = [MEMORY[0x1E696AC08] defaultManager];
  v4 = [(WBSExtensionsController *)self profileServerID];
  v5 = [WBSWebExtensionUtilities isProfileServerIDForDefaultProfile:v4];
  if (v5 || (-[WBSWebExtensionsController tabGroupManager](self, "tabGroupManager"), (v6 = objc_claimAutoreleasedReturnValue()) == 0) || (-[WBSWebExtensionsController tabGroupManager](self, "tabGroupManager"), v7 = objc_claimAutoreleasedReturnValue(), [v7 profileWithServerID:v4], v8 = objc_claimAutoreleasedReturnValue(), v8, v7, v6, v8))
  {
    settingsFileURL = self->_settingsFileURL;
    if (!settingsFileURL)
    {
      v10 = [v3 safari_webExtensionsSettingsDirectoryURL];
      if (!v5)
      {
        v11 = [v3 safari_profileDirectoryURLWithID:v4 createIfNeeded:1];
        v12 = [v11 URLByAppendingPathComponent:@"WebExtensions" isDirectory:1];

        v10 = v12;
      }

      if (v10)
      {
        v13 = [v3 safari_ensureDirectoryExists:v10];
      }

      v14 = [v10 URLByAppendingPathComponent:@"Extensions.plist" isDirectory:0];
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
    v3 = [MEMORY[0x1E695E000] safari_browserDefaults];
    if (([v3 BOOLForKey:@"DidGrantSearchProviderAccessToWebNavigationExtensions"] & 1) == 0)
    {
      [v3 setBool:1 forKey:@"DidGrantSearchProviderAccessToWebNavigationExtensions"];
    }

    v4.receiver = self;
    v4.super_class = WBSWebExtensionsController;
    [(WBSExtensionsController *)&v4 _finishedLoadingExtensions];
  }
}

- (WBSWebExtensionsController)initWithProfileServerID:(id)a3 userContentController:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17.receiver = self;
  v17.super_class = WBSWebExtensionsController;
  v8 = [(WBSExtensionsController *)&v17 initWithProfileServerID:v6 userContentController:v7];
  if (v8)
  {
    if ([WBSWebExtensionsController initWithProfileServerID:userContentController:]::once != -1)
    {
      [WBSWebExtensionsController initWithProfileServerID:userContentController:];
    }

    v9 = [[WBSWebExtensionNewTabOverridePreferencesManager alloc] initWithExtensionsController:v8];
    tabOverridePreferencesManager = v8->_tabOverridePreferencesManager;
    v8->_tabOverridePreferencesManager = v9;

    v11 = [MEMORY[0x1E695DF90] dictionary];
    extensionIdentifierToData = v8->_extensionIdentifierToData;
    v8->_extensionIdentifierToData = v11;

    v13 = [MEMORY[0x1E696AD88] defaultCenter];
    [v13 addObserver:v8 selector:sel__webExtensionDataPermissionsWereGranted_ name:@"webExtensionPermissionsWereGranted" object:0];
    [v13 addObserver:v8 selector:sel__webExtensionDataPermissionsWereRevokedOrRemoved_ name:@"webExtensionPermissionsWereRevoked" object:0];
    [v13 addObserver:v8 selector:sel__webExtensionDataPermissionsWereRevokedOrRemoved_ name:@"webExtensionGrantedPermissionsWereRemoved" object:0];
    [v13 addObserver:v8 selector:sel__webExtensionDataPermissionsWereRevokedOrRemoved_ name:@"webExtensionRevokedPermissionsWereRemoved" object:0];
    v14 = [MEMORY[0x1E696ABB0] defaultCenter];
    [v14 addObserver:v8 selector:sel__webExtensionEnabledStateInPrivateBrowsingChanged_ name:*MEMORY[0x1E69C9708] object:0];
    v15 = v8;
  }

  return v8;
}

- (void)initializeWebKitControllerIfNeededFromSettings:(BOOL)a3
{
  if (!self->_webKitController)
  {
    v14 = [MEMORY[0x1E6985378] defaultConfiguration];
    v5 = objc_alloc(MEMORY[0x1E696AFB0]);
    v6 = [(WBSExtensionsController *)self profileServerID];
    v7 = [v5 initWithUUIDString:v6];

    if (v7)
    {
      v8 = [MEMORY[0x1E6985378] configurationWithIdentifier:v7];

      v14 = v8;
    }

    if (a3)
    {
      v9 = [(WBSWebExtensionsController *)self _urlForWebKitExtensionsDirectory];
      v10 = [v9 path];
      [v14 _setStorageDirectoryPath:v10];
    }

    else
    {
      v9 = [(WBSWebExtensionsController *)self _webViewConfiguration];
      [v14 setWebViewConfiguration:v9];
    }

    v11 = [objc_alloc(MEMORY[0x1E6985370]) initWithConfiguration:v14];
    webKitController = self->_webKitController;
    self->_webKitController = v11;

    [(WKWebExtensionController *)self->_webKitController setDelegate:self];
    v13 = [objc_opt_class() _extensionDefaults];
    -[WKWebExtensionController _setTestingMode:](self->_webKitController, "_setTestingMode:", [v13 BOOLForKey:*MEMORY[0x1E69C91D0]]);
  }
}

+ (id)_composedIdentifierForStateOfExtensionWithBundleIdentifier:(id)a3 developerIdentifier:(id)a4
{
  v4 = @"UNSIGNED";
  if (a4)
  {
    v4 = a4;
  }

  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ (%@)", a3, v4];

  return v5;
}

- (id)extensionStateKeysToCopy
{
  v7[8] = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = WBSWebExtensionsController;
  v2 = [(WBSExtensionsController *)&v6 extensionStateKeysToCopy];
  v7[0] = @"AccessibleOrigins";
  v7[1] = @"GrantedPermissions";
  v7[2] = @"Permissions";
  v7[3] = @"RevokedPermissions";
  v7[4] = @"GrantedPermissionOrigins";
  v7[5] = @"LastSeenVersion";
  v7[6] = @"RequestedOptionalAccessToAllHosts";
  v7[7] = @"RevokedPermissionOrigins";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:8];
  v4 = [v2 setByAddingObjectsFromArray:v3];

  return v4;
}

- (id)_urlForWebKitExtensionsDirectory
{
  v14[3] = *MEMORY[0x1E69E9840];
  v3 = [(WBSExtensionsController *)self profile];
  v4 = [v3 isDefault];

  if (v4)
  {
    v5 = @"Default";
  }

  else
  {
    v5 = [(WBSExtensionsController *)self profileServerID];
  }

  v6 = [MEMORY[0x1E696AC08] defaultManager];
  v7 = [v6 safari_settingsDirectoryURL];

  v8 = [v7 URLByDeletingLastPathComponent];
  v9 = MEMORY[0x1E696AEC0];
  v14[0] = @"WebKit";
  v14[1] = @"WebExtensions";
  v14[2] = v5;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:3];
  v11 = [v9 pathWithComponents:v10];
  v12 = [v8 URLByAppendingPathComponent:v11 isDirectory:1];

  return v12;
}

- (id)_displayNameForExtension:(id)a3
{
  v3 = [(WBSWebExtensionsController *)self webExtensionForExtension:a3];
  v4 = [v3 displayName];

  return v4;
}

- (id)_displayShortNameForExtension:(id)a3
{
  v3 = [(WBSWebExtensionsController *)self webExtensionForExtension:a3];
  v4 = [v3 displayShortName];

  return v4;
}

- (id)_displayVersionForExtension:(id)a3
{
  v3 = [(WBSWebExtensionsController *)self webExtensionForExtension:a3];
  v4 = [v3 displayVersion];

  return v4;
}

- (id)_versionNumberForExtension:(id)a3
{
  v3 = [(WBSWebExtensionsController *)self webExtensionForExtension:a3];
  v4 = [v3 version];

  return v4;
}

- (void)_loadEnabledExtension:(id)a3
{
  v4 = a3;
  v5 = [(WBSWebExtensionsController *)self webExtensionForExtension:v4];
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

- (void)_unloadPreviouslyEnabledExtension:(id)a3
{
  v3 = [(WBSWebExtensionsController *)self webExtensionForExtension:a3];
  [v3 unload];
}

- (id)enabledExtensionsWithPrivateBrowsingEnabled:(BOOL)a3
{
  v5 = [(WBSExtensionsController *)self enabledExtensions];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __74__WBSWebExtensionsController_enabledExtensionsWithPrivateBrowsingEnabled___block_invoke;
  v8[3] = &unk_1E82893F0;
  v8[4] = self;
  v9 = a3;
  v6 = [v5 safari_filterObjectsUsingBlock:v8];

  return v6;
}

BOOL __74__WBSWebExtensionsController_enabledExtensionsWithPrivateBrowsingEnabled___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) webExtensionForExtension:a2];
  v4 = ([v3 allowedInPrivateBrowsing] & 1) != 0 || (*(a1 + 40) & 1) == 0;

  return v4;
}

- (BOOL)extensionIsEnabled:(id)a3
{
  v4 = a3;
  v5 = [(WBSWebExtensionsController *)self webExtensionForExtension:v4];
  v6 = [v5 canLoad];

  if (v6)
  {
    v9.receiver = self;
    v9.super_class = WBSWebExtensionsController;
    v7 = [(WBSExtensionsController *)&v9 extensionIsEnabled:v4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setExtension:(id)a3 isEnabled:(BOOL)a4 dueToUserGesture:(BOOL)a5 skipSavingToStorage:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v8 = a4;
  v10 = a3;
  if (v8)
  {
    v11 = [(WBSWebExtensionsController *)self webExtensionForExtension:v10];
    if (([v11 canLoad] & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v11 = 0;
    [(WBSWebExtensionsController *)self clearPermissionStateUsedToDetermineIfExtensionShouldBeDisabledOnUpgradeForExtension:v10];
  }

  v12.receiver = self;
  v12.super_class = WBSWebExtensionsController;
  [(WBSExtensionsController *)&v12 setExtension:v10 isEnabled:v8 dueToUserGesture:v7 skipSavingToStorage:v6];
LABEL_6:
}

- (void)removeOldExtensionStateForExtension:(id)a3
{
  v19[5] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(WBSExtensionsController *)self _extensionStateForExtension:v4];
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
            v9 = [(WBSExtensionsController *)self composedIdentifierForExtensionStateForExtension:v4];
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

- (BOOL)_extensionShouldBeEnabled:(id)a3
{
  v4 = a3;
  v5 = [(WBSWebExtensionsController *)self webExtensionForExtension:v4];
  v6 = [v5 canLoad];

  if (v6)
  {
    v9.receiver = self;
    v9.super_class = WBSWebExtensionsController;
    v7 = [(WBSExtensionsController *)&v9 _extensionShouldBeEnabled:v4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)_extensionShouldBeAutomaticallyEnabled:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(WBSExtensionsController *)self composedIdentifierForExtensionStateForExtension:v4];
  v6 = +[WBSCloudExtensionStateManager sharedManager];
  v7 = [(WBSExtensionsController *)self profileServerID];
  v8 = [v6 isExtensionEnabledInCloudWithComposedIdentifier:v5 forProfileServerID:v7];

  if (![v4 safari_isUnpackedExtension])
  {
    if (v8)
    {
      goto LABEL_7;
    }

LABEL_11:
    v16 = 0;
    goto LABEL_12;
  }

  v9 = [(WBSExtensionsController *)self profile];
  v10 = [v9 isDefault];

  if (((v10 | v8) & 1) == 0)
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

- (id)_updatedExtensionStateForCurrentPermissions:(id)a3 previousExtensionState:(id)a4
{
  v6 = a4;
  v7 = [(WBSWebExtensionsController *)self webExtensionForExtension:a3];
  [v7 setRequestedOptionalAccessToAllHosts:{objc_msgSend(v6, "safari_BOOLForKey:", @"RequestedOptionalAccessToAllHosts"}];
  v8 = [v7 extensionStateWithPreviousState:v6];

  return v8;
}

- (void)_updateExtensionStateIfThisVersionOfSafariIsNotSupported:(id)a3
{
  v15 = a3;
  v4 = [(WBSExtensionsController *)self composedIdentifierForExtensionStateForExtension:?];
  v5 = [(NSMutableDictionary *)self->super._extensionIdentifierToStateMap objectForKeyedSubscript:v4];
  v6 = [v5 mutableCopy];

  if ([v6 safari_BOOLForKey:*MEMORY[0x1E69C95F0]])
  {
    v7 = [(WBSWebExtensionsController *)self webExtensionForExtension:v15];
    v8 = [v7 extensionSupportsCurrentSafariVersion];
    if (v8 <= 6 && (((1 << v8) & 0x62) != 0 || ((1 << v8) & 0x14) != 0 || v8 == 3))
    {
      v9 = MEMORY[0x1E696AEC0];
      v10 = _WBSLocalizedString();
      v11 = [(WBSWebExtensionsController *)self _displayNameForExtension:v15];
      v12 = [v9 stringWithFormat:v10, v11];
    }

    else
    {
      if (!v8)
      {
        goto LABEL_10;
      }

      v12 = 0;
    }

    [(WBSExtensionsController *)self setExtension:v15 isEnabled:0];
    v13 = [v15 sf_uniqueIdentifier];
    v14 = [v13 UUIDString];
    [(WBSWebExtensionsController *)self _showPromptForExtensionDisabledBecauseItDoesNotSupportThisVersionOfSafariWithMessage:v12 extensionIdentifier:v14];

LABEL_10:
  }
}

- (id)webExtensionForExtension:(id)a3
{
  v3 = [(WBSExtensionsController *)self extensionDataForExtension:a3];

  return v3;
}

- (id)webExtensionForExtensionIdentifier:(id)a3
{
  v4 = [(WBSExtensionsController *)self extensionWithUUID:a3];
  v5 = [(WBSWebExtensionsController *)self webExtensionForExtension:v4];

  return v5;
}

- (id)webExtensionForComposedIdentifier:(id)a3
{
  v4 = [(WBSExtensionsController *)self extensionWithComposedIdentifier:a3];
  v5 = [(WBSWebExtensionsController *)self webExtensionForExtension:v4];

  return v5;
}

- (id)webExtensionForBundleIdentifier:(id)a3
{
  v4 = [(WBSExtensionsController *)self extensionWithBundleIdentifier:a3];
  v5 = [(WBSWebExtensionsController *)self webExtensionForExtension:v4];

  return v5;
}

- (id)webExtensionForBaseURIHost:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v4];
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

- (id)webExtensionForURL:(id)a3
{
  v4 = [(WBSWebExtensionsController *)self canonicalURLForWebExtensionURL:a3];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 host];
    v7 = [(WBSWebExtensionsController *)self webExtensionForBaseURIHost:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)canonicalURLForWebExtensionURL:(id)a3
{
  v4 = a3;
  if ([v4 safari_isSafariWebExtensionURL])
  {
    v5 = [v4 host];
    v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v5];

    if (v6)
    {
      v7 = [(WBSWebExtensionsController *)self webExtensionForBaseURIHost:v5];
      if (v7)
      {
        v8 = v4;
      }

      else
      {
        v8 = 0;
      }

      v9 = v8;
    }

    else
    {
      v9 = [(WBSWebExtensionsController *)self _extensionURLToLoadFromPersistentStateURL:v4];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)installationDateForExtension:(id)a3
{
  v3 = [(WBSExtensionsController *)self _extensionStateForExtension:a3];
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

- (void)sendMessage:(id)a3 toApplicationWithID:(id)a4 fromExtensionWithIdentifier:(id)a5 completionHandler:(id)a6
{
  v62 = *MEMORY[0x1E69E9840];
  v36 = a3;
  v9 = a5;
  v10 = a6;
  v11 = [(WBSWebExtensionsController *)self webExtensionForExtensionIdentifier:v9];
  v12 = v11;
  if (v11)
  {
    v35 = [v11 composedIdentifier];
    {
      v13 = [WBSWebExtensionsController sendMessage:toApplicationWithID:fromExtensionWithIdentifier:completionHandler:]::nativeMessagingActiveContextTracker;
    }

    else
    {
      v13 = [MEMORY[0x1E695DF90] dictionary];
      [WBSWebExtensionsController sendMessage:toApplicationWithID:fromExtensionWithIdentifier:completionHandler:]::nativeMessagingActiveContextTracker = v13;
    }

    v14 = [v13 objectForKeyedSubscript:v35];
    if (v14)
    {
      v15 = [MEMORY[0x1E695DF00] now];
      v53[0] = MEMORY[0x1E69E9820];
      v53[1] = 3221225472;
      v53[2] = __108__WBSWebExtensionsController_sendMessage_toApplicationWithID_fromExtensionWithIdentifier_completionHandler___block_invoke;
      v53[3] = &unk_1E8289418;
      v54 = v15;
      v16 = v15;
      [v14 safari_removeObjectsPassingTest:v53];
    }

    else
    {
      v14 = [MEMORY[0x1E695DF70] array];
      [-[WBSWebExtensionsController sendMessage:toApplicationWithID:fromExtensionWithIdentifier:completionHandler:]::nativeMessagingActiveContextTracker setObject:? forKeyedSubscript:?];
    }

    if ([v14 count] < 0x97)
    {
      v19 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:5.0];
      [v14 addObject:v19];

      v18 = [v12 extension];
      if (!self->_nativeRequestIdentifiersToCompletionHandlers)
      {
        v20 = [MEMORY[0x1E695DF90] dictionary];
        nativeRequestIdentifiersToCompletionHandlers = self->_nativeRequestIdentifiersToCompletionHandlers;
        self->_nativeRequestIdentifiersToCompletionHandlers = v20;
      }

      nativeRequestExtensions = self->_nativeRequestExtensions;
      if (!nativeRequestExtensions)
      {
        v23 = [MEMORY[0x1E695DFA8] set];
        v24 = self->_nativeRequestExtensions;
        self->_nativeRequestExtensions = v23;

        nativeRequestExtensions = self->_nativeRequestExtensions;
      }

      [(NSMutableSet *)nativeRequestExtensions addObject:v18];
      objc_initWeak(buf, self);
      objc_initWeak(&location, v18);
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
      [v18 setRequestCancellationBlock:v47];
      v44[0] = MEMORY[0x1E69E9820];
      v44[1] = 3221225472;
      v44[2] = __108__WBSWebExtensionsController_sendMessage_toApplicationWithID_fromExtensionWithIdentifier_completionHandler___block_invoke_4;
      v44[3] = &unk_1E8289490;
      v27 = v26;
      v45 = v27;
      objc_copyWeak(&v46, &location);
      [v18 setRequestInterruptionBlock:v44];
      v42[0] = MEMORY[0x1E69E9820];
      v42[1] = 3221225472;
      v42[2] = __108__WBSWebExtensionsController_sendMessage_toApplicationWithID_fromExtensionWithIdentifier_completionHandler___block_invoke_6;
      v42[3] = &unk_1E82894B8;
      v28 = v27;
      v43 = v28;
      [v18 setRequestCompletionBlock:v42];
      v29 = objc_alloc_init(MEMORY[0x1E696ABE0]);
      v30 = [v12 privacyPreservingProfileIdentifier];
      v31 = v30;
      if (v30)
      {
        v58[0] = @"message";
        v58[1] = @"profile";
        v59[0] = v36;
        v59[1] = v30;
        [MEMORY[0x1E695DF20] dictionaryWithObjects:v59 forKeys:v58 count:2];
      }

      else
      {
        v56 = @"message";
        v57 = v36;
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
      v38 = v10;
      v34 = v28;
      v39 = v34;
      [v18 beginExtensionRequestWithInputItems:v33 completion:v37];

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
        v61 = v35;
        _os_log_impl(&dword_1C6968000, v17, OS_LOG_TYPE_INFO, "Dropping native message from %{private}@ due to too many active native messages", buf, 0xCu);
      }

      v18 = [MEMORY[0x1E696ABC0] errorWithDomain:@"SFErrorDomain" code:3 userInfo:0];
      (*(v10 + 2))(v10, 0, v18);
    }
  }

  else
  {
    (*(v10 + 2))(v10, 0, 0);
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

- (id)lastSeenUniqueIdentiferForWebExtension:(id)a3
{
  v4 = [a3 extension];
  v5 = [(WBSExtensionsController *)self _extensionStateForExtension:v4];
  v6 = [v5 safari_stringForKey:@"LastSeenUniqueIdentifier"];

  return v6;
}

- (void)saveUniqueIdentifierToStorageForWebExtension:(id)a3
{
  v16 = a3;
  v4 = [v16 extension];
  v5 = [(WBSExtensionsController *)self _extensionStateForExtension:v4];
  v6 = [v5 mutableCopy];

  if (v6)
  {
    v7 = [v6 safari_stringForKey:@"LastSeenUniqueIdentifier"];
    v8 = [v16 extension];
    v9 = [v8 sf_uniqueIdentifier];
    v10 = [v9 UUIDString];
    v11 = [v7 isEqual:v10];

    if ((v11 & 1) == 0)
    {
      v12 = [v16 extension];
      v13 = [v12 sf_uniqueIdentifier];
      v14 = [v13 UUIDString];
      [v6 setObject:v14 forKeyedSubscript:@"LastSeenUniqueIdentifier"];

      v15 = [v16 extension];
      [(WBSExtensionsController *)self _setExtensionState:v6 forExtension:v15];
    }
  }
}

- (void)savePermissionStateUsedToDetermineIfExtensionShouldBeDisabledOnUpgradeForWebExtension:(id)a3
{
  v15 = a3;
  v4 = [v15 extension];
  v5 = [(WBSExtensionsController *)self _extensionStateForExtension:v4];
  v6 = [v5 mutableCopy];

  if (v6)
  {
    v7 = *MEMORY[0x1E69C95F8];
    v8 = [v6 safari_BOOLForKey:*MEMORY[0x1E69C95F8]];
    v9 = [v15 hasAbilityToInjectContentIntoWebpages];
    v10 = MEMORY[0x1E69C9630];
    if (v8 != v9 || (v11 = [v6 safari_BOOLForKey:*MEMORY[0x1E69C9630]], v11 != objc_msgSend(v15, "hasDeclarativeNetRequestHostAccessPermission")))
    {
      v12 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v15, "hasAbilityToInjectContentIntoWebpages")}];
      [v6 setObject:v12 forKeyedSubscript:v7];

      v13 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v15, "hasDeclarativeNetRequestHostAccessPermission")}];
      [v6 setObject:v13 forKeyedSubscript:*v10];

      v14 = [v15 extension];
      [(WBSExtensionsController *)self _setExtensionState:v6 forExtension:v14];
    }
  }
}

- (void)clearPermissionStateUsedToDetermineIfExtensionShouldBeDisabledOnUpgradeForExtension:(id)a3
{
  v6 = a3;
  v4 = [(WBSExtensionsController *)self _extensionStateForExtension:?];
  v5 = [v4 mutableCopy];

  if (v5)
  {
    [v5 removeObjectForKey:*MEMORY[0x1E69C95F8]];
    [v5 removeObjectForKey:*MEMORY[0x1E69C9630]];
    [(WBSExtensionsController *)self _setExtensionState:v5 forExtension:v6];
  }
}

- (void)_deleteStateForExtensionWithComposedIdentifier:(id)a3
{
  v4 = a3;
  [(WBSWebExtensionsController *)self _deleteStorageForExtensionWithComposedIdentifier:?];
  [(WBSWebExtensionsController *)self _clearNewTabPreferenceIfNecessaryForRemovedExtensionWithComposedIdentifier:v4];
}

- (void)_deleteStorageForExtensionWithComposedIdentifier:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695E000] standardUserDefaults];
  v6 = [v5 BOOLForKey:*MEMORY[0x1E69C91E0]];

  if ((v6 & 1) == 0)
  {
    v7 = WBS_LOG_CHANNEL_PREFIXWebExtensions();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138477827;
      v16 = v4;
      _os_log_impl(&dword_1C6968000, v7, OS_LOG_TYPE_INFO, "Deleting storage for removed extension with composed identifier %{private}@", buf, 0xCu);
    }

    v8 = [(WBSWebExtensionsController *)self _urlForWebKitExtensionsDirectory];
    v9 = [v8 URLByAppendingPathComponent:v4 isDirectory:1];
    v10 = [MEMORY[0x1E696AC08] defaultManager];
    v14 = 0;
    [v10 removeItemAtURL:v9 error:&v14];
    v11 = v14;

    if (v11)
    {
      v12 = WBS_LOG_CHANNEL_PREFIXWebExtensions();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = [v11 safari_privacyPreservingDescription];
        [(WBSWebExtensionsController *)v4 _deleteStorageForExtensionWithComposedIdentifier:v13, buf, v12];
      }
    }
  }
}

- (void)_updateExtensionStateIfPermissionsIncreased:(id)a3
{
  v4 = a3;
  v5 = [(WBSWebExtensionsController *)self webExtensionForExtension:v4];
  [(WBSWebExtensionsController *)self loadPermissionsIfNecessaryForExtension:v5];
  v6.receiver = self;
  v6.super_class = WBSWebExtensionsController;
  [(WBSExtensionsController *)&v6 _updateExtensionStateIfPermissionsIncreased:v4];
}

- (BOOL)_shouldDisableExtensionIfAdditionalPermissionsAreRequired:(id)a3 previousExtensionState:(id)a4
{
  v6 = a4;
  v7 = [(WBSWebExtensionsController *)self webExtensionForExtension:a3];
  v8 = [v7 currentPermissionOrigins];
  v9 = [v8 count];

  if (v9)
  {
    v10 = [v6 safari_numberForKey:*MEMORY[0x1E69C95F8]];
    v11 = v10;
    if (v10)
    {
      if ([v10 BOOLValue])
      {
        goto LABEL_10;
      }

      v12 = [v7 hasAbilityToInjectContentIntoWebpages];
    }

    else
    {
      v13 = [v6 safari_numberForKey:*MEMORY[0x1E69C9630]];
      v11 = v13;
      if (!v13 || ([v13 BOOLValue] & 1) != 0)
      {
        goto LABEL_10;
      }

      v12 = [v7 hasDeclarativeNetRequestHostAccessPermission];
    }

    if (v12)
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

- (void)webExtensionController:(id)a3 didUpdateAction:(id)a4 forExtensionContext:(id)a5
{
  v11 = a4;
  v6 = [WBSWebExtensionData webExtensionForWebKitExtensionContext:a5];
  v7 = [v11 associatedTab];
  v8 = v7;
  if (v6)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    v10 = [v6 toolbarItem];
    [v10 webKitExtensionAction:v11 didChangeForTab:v8];
  }
}

- (id)webExtensionController:(id)a3 openWindowsForExtensionContext:(id)a4
{
  v5 = [WBSWebExtensionData webExtensionForWebKitExtensionContext:a4];
  v6 = [(WBSWebExtensionsController *)self _allWindowsForWebExtension:v5];

  return v6;
}

- (id)webExtensionController:(id)a3 focusedWindowForExtensionContext:(id)a4
{
  v5 = [WBSWebExtensionData webExtensionForWebKitExtensionContext:a4];
  if (v5)
  {
    v6 = [(WBSWebExtensionsController *)self lastFocusedWindow];
    v7 = [(WBSWebExtensionsController *)self isWindow:v6 visibleToExtension:v5];
    if (v7)
    {
      v8 = v6;
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
      v9 = v6;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)webExtensionController:(id)a3 openNewTabUsingConfiguration:(id)a4 forExtensionContext:(id)a5 completionHandler:(id)a6
{
  v8 = a4;
  v9 = a6;
  v10 = [v8 window];
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v8, "index")}];
  v12 = [v8 url];
  v13 = [v8 shouldBeActive];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __120__WBSWebExtensionsController_webExtensionController_openNewTabUsingConfiguration_forExtensionContext_completionHandler___block_invoke;
  v16[3] = &unk_1E8289530;
  v14 = v9;
  v19 = v14;
  v15 = v8;
  v17 = v15;
  v18 = self;
  [(WBSWebExtensionsController *)self _createNewTabInWindow:v10 tabIndex:v11 url:v12 makeActive:v13 completionHandler:v16];
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

- (void)webExtensionController:(id)a3 sendMessage:(id)a4 toApplicationWithIdentifier:(id)a5 forExtensionContext:(id)a6 replyHandler:(id)a7
{
  v16 = a4;
  v11 = a5;
  v12 = a7;
  v13 = [WBSWebExtensionData webExtensionForWebKitExtensionContext:a6];
  v14 = v13;
  if (v13)
  {
    v15 = [v13 identifier];
    [(WBSWebExtensionsController *)self sendMessage:v16 toApplicationWithID:v11 fromExtensionWithIdentifier:v15 completionHandler:v12];
  }

  else
  {
    v15 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:3586 userInfo:0];
    v12[2](v12, 0, v15);
  }
}

- (void)webExtensionController:(id)a3 connectUsingMessagePort:(id)a4 forExtensionContext:(id)a5 completionHandler:(id)a6
{
  v12 = a4;
  v8 = a6;
  v9 = [WBSWebExtensionData webExtensionForWebKitExtensionContext:a5];
  v10 = v9;
  if (v9)
  {
    [v9 connectUsingMessagePort:v12];
    v8[2](v8, 0);
  }

  else
  {
    v11 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:3586 userInfo:0];
    (v8)[2](v8, v11);
  }
}

- (void)webExtensionController:(id)a3 promptForPermissionMatchPatterns:(id)a4 inTab:(id)a5 forExtensionContext:(id)a6 completionHandler:(id)a7
{
  v35 = *MEMORY[0x1E69E9840];
  v10 = a4;
  v11 = a6;
  v12 = a7;
  v24 = v10;
  v25 = v11;
  v13 = [WBSWebExtensionData webExtensionForWebKitExtensionContext:v11];
  if (v13)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __130__WBSWebExtensionsController_webExtensionController_promptForPermissionMatchPatterns_inTab_forExtensionContext_completionHandler___block_invoke;
    aBlock[3] = &unk_1E8289558;
    aBlock[4] = self;
    v33 = v12;
    v14 = v10;
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
  (*(v12 + 2))(v12, v22, 0);

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

- (void)webExtensionController:(id)a3 promptForPermissionToAccessURLs:(id)a4 inTab:(id)a5 forExtensionContext:(id)a6 completionHandler:(id)a7
{
  v15 = a4;
  v10 = a5;
  v11 = a7;
  v12 = [WBSWebExtensionData webExtensionForWebKitExtensionContext:a6];
  v13 = v12;
  if (v12)
  {
    [v12 promptForAccessToURLs:v15 inTab:v10 completionHandler:v11];
  }

  else
  {
    v14 = [MEMORY[0x1E695DFD8] set];
    v11[2](v11, v14, 0);
  }
}

- (NSString)profileName
{
  v2 = [(WBSExtensionsController *)self profile];
  v3 = [v2 title];

  return v3;
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
    v4 = [(WBSExtensionsController *)self enabledExtensions];
  }

  else
  {
    v5 = [(WBSExtensionsController *)self extensions];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __74__WBSWebExtensionsController_enabledWebExtensionsSortedByDisplayShortName__block_invoke_2;
    v11[3] = &unk_1E8283E40;
    v11[4] = self;
    v4 = [v5 safari_filterObjectsUsingBlock:v11];
  }

  v6 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:@"displayShortName" ascending:1 selector:sel_localizedStandardCompare_];
  v7 = [v4 safari_mapObjectsUsingBlock:v3];
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

- (id)commandShortcutConflictsForExtension:(id)a3
{
  v4 = a3;
  if ([v4 hasCommands])
  {
    v5 = [(WBSWebExtensionsController *)self enabledWebExtensionsSortedByDisplayShortName];
    v6 = [v5 mutableCopy];

    if ([v6 containsObject:v4])
    {
      [v6 removeObject:v4];
    }

    v7 = [objc_opt_class() _commandShortcutConflictsForExtension:v4 sortedWebExtensions:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)performCommandForKeyCommand:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(WBSWebExtensionsController *)self webKitController];
  v6 = [v5 extensionContexts];

  v7 = [v6 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v7)
  {
    v8 = *v11;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v11 != v8)
      {
        objc_enumerationMutation(v6);
      }

      if ([*(*(&v10 + 1) + 8 * v9) performCommandForKeyCommand:v4])
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [v6 countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

+ (id)_firstConflctForCommand:(id)a3 inSortedWebExtensions:(id)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v22 = [v5 shortcut];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = v6;
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
        v11 = [v10 commands];
        v23[0] = MEMORY[0x1E69E9820];
        v23[1] = 3221225472;
        v23[2] = __76__WBSWebExtensionsController__firstConflctForCommand_inSortedWebExtensions___block_invoke;
        v23[3] = &unk_1E82895C8;
        v24 = v22;
        v12 = [v11 safari_firstObjectPassingTest:v23];

        v13 = [v12 shortcut];
        v14 = [v13 length] == 0;

        if (!v14)
        {
          v16 = [WBSWebExtensionCommandShortcutConflict alloc];
          v17 = [v12 shortcut];
          v18 = [v10 displayName];
          v19 = [v10 displayShortName];
          v15 = [(WBSWebExtensionCommandShortcutConflict *)v16 initWithShortcut:v17 extensionDisplayName:v18 extensionDisplayShortName:v19];

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

+ (id)_commandShortcutConflictsForExtension:(id)a3 sortedWebExtensions:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E695DF70] array];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = [v6 commands];
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = [a1 _firstConflctForCommand:*(*(&v16 + 1) + 8 * i) inSortedWebExtensions:v7];
        if (v13)
        {
          [v8 addObject:v13];
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  v14 = [v8 copy];

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
          v9 = [v8 webKitContext];
          v10 = [v9 hasContentModificationRules];

          if (v10)
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

- (void)loadPermissionsIfNecessaryForExtension:(id)a3
{
  v4 = a3;
  enabledExtensions = self->super._enabledExtensions;
  v7 = v4;
  v6 = [v4 extension];
  LOBYTE(enabledExtensions) = [(NSMutableSet *)enabledExtensions containsObject:v6];

  if ((enabledExtensions & 1) == 0)
  {
    [(WBSWebExtensionsController *)self _loadPermissionsFromStorageForWebExtension:v7 completionHandler:&__block_literal_global_173];
  }
}

- (void)_applyManagedExtensionPermissionsForWebExtension:(id)a3
{
  v22 = a3;
  v3 = [v22 composedIdentifier];
  v4 = [MEMORY[0x1E69C88C8] sharedController];
  v5 = [v4 allDomainsAreManagedForComposedIdentifier:v3];

  if (v5)
  {
    v6 = [MEMORY[0x1E695DFA8] set];
    v7 = [v22 grantedPermissionOrigins];
    v8 = [v7 allKeys];
    [v6 addObjectsFromArray:v8];

    v9 = [v22 revokedPermissionOrigins];
    v10 = [v9 allKeys];
    [v6 addObjectsFromArray:v10];

    v11 = [MEMORY[0x1E695DFD8] set];
    [v22 removeGrantedAndRevokedPermissions:v11 origins:v6 exactPatternMatchesOnly:1];
  }

  v12 = [MEMORY[0x1E695DFD8] set];
  v13 = [MEMORY[0x1E69C88C8] sharedController];
  v14 = [v13 allowedDomainsForComposedIdentifier:v3];
  v15 = [v14 safari_mapAndFilterObjectsUsingBlock:&__block_literal_global_179];
  v16 = [MEMORY[0x1E695DF00] distantFuture];
  [v22 grantPermissions:v12 origins:v15 expirationDate:v16];

  v17 = [MEMORY[0x1E695DFD8] set];
  v18 = [MEMORY[0x1E69C88C8] sharedController];
  v19 = [v18 deniedDomainsForComposedIdentifier:v3];
  v20 = [v19 safari_mapAndFilterObjectsUsingBlock:&__block_literal_global_179];
  v21 = [MEMORY[0x1E695DF00] distantFuture];
  [v22 revokePermissions:v17 origins:v20 expirationDate:v21];
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
  v3 = [MEMORY[0x1E69C88C8] sharedController];
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
        v9 = [v8 composedIdentifier];
        v10 = [v3 managedExtensionPrivateBrowsingStateForComposedIdentifier:v9];

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

- (void)_loadPermissionsFromStorageForWebExtension:(id)a3 completionHandler:(id)a4
{
  v55[5] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (!self->super._extensionIdentifierToStateMap)
  {
    v8 = [(WBSExtensionsController *)self readExtensionsStateFromStorage];
    v9 = [v8 mutableCopy];
    extensionIdentifierToStateMap = self->super._extensionIdentifierToStateMap;
    self->super._extensionIdentifierToStateMap = v9;
  }

  v11 = [v6 extension];
  v12 = [(WBSExtensionsController *)self _extensionStateForExtension:v11];

  if (v12 && ![v6 hasLoadedPermissionsFromStorage])
  {
    v14 = [MEMORY[0x1E695E000] standardUserDefaults];
    v15 = [v14 BOOLForKey:*MEMORY[0x1E69C91C0]];

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
      v19 = [v6 extension];
      v20 = [(WBSExtensionsController *)self composedIdentifierForExtensionStateForExtension:v19];
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

    v25 = [v6 webKitExtension];
    v26 = [v25 requestedPermissions];
    v44 = [v26 safari_dictionaryByMappingObjectsToValuesUsingBlock:&__block_literal_global_186_0];

    v45 = [v44 safari_dictionaryByMergingWithDictionary:v24];

    [v6 setGrantedPermissions:?];
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

    [v6 setRevokedPermissions:v29];

    v30 = [v6 requestsAccessToAllHosts];
    v31 = [v6 manifestAccessibleOrigins];
    v32 = [v6 manifestOptionalPermissionOrigins];
    v51 = 0;
    v52 = &v51;
    v53 = 0x2020000000;
    v54 = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __91__WBSWebExtensionsController__loadPermissionsFromStorageForWebExtension_completionHandler___block_invoke_2;
    aBlock[3] = &unk_1E8289638;
    v50 = v30;
    v33 = v31;
    v47 = v33;
    v49 = &v51;
    v34 = v32;
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

    [v6 setGrantedPermissionOrigins:v39];

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

    [v6 setRevokedPermissionOrigins:v43];

    [(WBSWebExtensionsController *)self _applyManagedExtensionPermissionsForWebExtension:v6];
    [v6 setHasLoadedPermissionsFromStorage:1];
    if (*(v52 + 24) == 1)
    {
      [(WBSWebExtensionsController *)self _savePermissionsToStorageForWebExtension:v6];
    }

    v7[2](v7);

    _Block_object_dispose(&v51, 8);
  }

  else
  {
    v7[2](v7);
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

- (void)_savePermissionsToStorageForWebExtension:(id)a3
{
  v14 = a3;
  v4 = [v14 extension];
  v5 = [(WBSExtensionsController *)self _extensionStateForExtension:v4];
  v6 = [v5 mutableCopy];

  if (v6)
  {
    v7 = [v14 grantedPermissions];
    [v6 setObject:v7 forKeyedSubscript:@"GrantedPermissions"];

    v8 = [v14 revokedPermissions];
    [v6 setObject:v8 forKeyedSubscript:@"RevokedPermissions"];

    v9 = [v14 grantedPermissionOrigins];
    v10 = [v9 safari_mapAndFilterKeysUsingBlock:&__block_literal_global_193_0];
    [v6 setObject:v10 forKeyedSubscript:@"GrantedPermissionOrigins"];

    v11 = [v14 revokedPermissionOrigins];
    v12 = [v11 safari_mapAndFilterKeysUsingBlock:&__block_literal_global_193_0];
    [v6 setObject:v12 forKeyedSubscript:@"RevokedPermissionOrigins"];

    v13 = [v14 extension];
    [(WBSExtensionsController *)self _setExtensionState:v6 forExtension:v13];
  }
}

id __71__WBSWebExtensionsController__savePermissionsToStorageForWebExtension___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 description];

  return v2;
}

- (void)_savePermissionsToStorageIfNecessaryAndPostDidChangeNotificationForWebExtension:(id)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 webExtension];
  if (([v4 permissionsWereUpdatedDueToAnExternalChange] & 1) == 0)
  {
    [(WBSWebExtensionsController *)self _savePermissionsToStorageForWebExtension:v5];
  }

  v6 = [MEMORY[0x1E696AD88] defaultCenter];
  v7 = [v4 webExtension];
  v10 = @"permissionsWereUpdatedDueToAnExternalChange";
  v8 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v4, "permissionsWereUpdatedDueToAnExternalChange")}];
  v11[0] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  [v6 postNotificationName:@"webExtensionPermissionDidChange" object:v7 userInfo:v9];
}

- (void)_savePermissionsToStorageAndPostDidChangeNotificationSoonForWebExtension:(id)a3 permissionsWereUpdatedDueToAnExternalChange:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  if ((_MergedGlobals_0 & 1) == 0)
  {
    [WBSWebExtensionsController _savePermissionsToStorageAndPostDidChangeNotificationSoonForWebExtension:permissionsWereUpdatedDueToAnExternalChange:];
  }

  v6 = [[WBSSavePermissionsToStorageInformation alloc] initWithWebExtension:v7 permissionsWereUpdatedDueToAnExternalChange:v4];
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:qword_1EC1D51B0 object:v6];
  [(WBSWebExtensionsController *)self performSelector:qword_1EC1D51B0 withObject:v6 afterDelay:0.01];
}

- (void)_webExtensionDataPermissionsWereGranted:(id)a3
{
  v10 = a3;
  v4 = [v10 object];
  v5 = [v4 extensionsController];

  if (v5 == self)
  {
    v6 = [v10 userInfo];
    v7 = [v6 objectForKeyedSubscript:@"permissionOrigins"];

    [v4 dispatchPendingWebsiteRequestsMatchingOriginPatterns:v7];
    v8 = [v10 userInfo];
    v9 = [v8 safari_BOOLForKey:@"permissionsWereUpdatedDueToAnExternalChange"];

    [(WBSWebExtensionsController *)self _savePermissionsToStorageAndPostDidChangeNotificationSoonForWebExtension:v4 permissionsWereUpdatedDueToAnExternalChange:v9];
  }
}

- (void)_webExtensionDataPermissionsWereRevokedOrRemoved:(id)a3
{
  v15 = a3;
  v4 = [v15 object];
  v5 = [v4 extensionsController];

  if (v5 == self)
  {
    v6 = [v15 userInfo];
    v7 = [v6 objectForKeyedSubscript:@"permissionOrigins"];

    v8 = [v15 name];
    v9 = [v8 isEqualToString:@"webExtensionGrantedPermissionsWereRemoved"];

    if ((v9 & 1) == 0)
    {
      v10 = [v15 name];
      v11 = [v10 isEqualToString:@"webExtensionPermissionsWereRevoked"];

      if (v11)
      {
        [v4 dispatchPendingWebsiteRequestsMatchingOriginPatterns:v7];
      }

      else
      {
        v12 = [v15 name];
        [v12 isEqualToString:@"webExtensionRevokedPermissionsWereRemoved"];
      }
    }

    v13 = [v15 userInfo];
    v14 = [v13 safari_BOOLForKey:@"permissionsWereUpdatedDueToAnExternalChange"];

    [(WBSWebExtensionsController *)self _savePermissionsToStorageAndPostDidChangeNotificationSoonForWebExtension:v4 permissionsWereUpdatedDueToAnExternalChange:v14];
  }
}

- (void)_webExtensionEnabledStateInPrivateBrowsingChanged:(id)a3
{
  v8 = a3;
  v4 = [v8 userInfo];
  v5 = [v4 safari_stringForKey:@"WBSWebExtensionComposedIdentifierKey"];

  if ([v5 length])
  {
    v6 = [(WBSWebExtensionsController *)self webExtensionForComposedIdentifier:v5];
    v7 = [v8 userInfo];
    [v6 setAllowedInPrivateBrowsing:{objc_msgSend(v7, "safari_BOOLForKey:", *MEMORY[0x1E69C9218])}];
  }
}

+ (double)pendingSiteAccessTimeoutInterval
{
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v2 doubleForKey:*MEMORY[0x1E69C91A8]];
  v4 = v3;

  result = 60.0;
  if (v4 != 0.0)
  {
    return v4;
  }

  return result;
}

- (id)_filteredOriginsRemovingAllHostsPatterns:(id)a3 containedAllHostsPattern:(BOOL *)a4
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
  v5 = [a3 safari_mapAndFilterObjectsUsingBlock:v7];
  if (a4)
  {
    *a4 = *(v9 + 24);
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

- (void)_permissionsMayHaveBeenChangedExternallyForExtension:(id)a3 previousExtensionState:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 safari_dictionaryForKey:@"GrantedPermissionOrigins"];
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

  v14 = [v7 safari_dictionaryForKey:@"RevokedPermissionOrigins"];
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
  v19 = v6;
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

- (BOOL)isTab:(id)a3 visibleToExtension:(id)a4
{
  v5 = a3;
  v6 = a4;
  v11 = 1;
  if (v5)
  {
    v7 = [v5 profile];
    v8 = [v6 extensionsController];
    v9 = [v8 profile];
    v10 = [v7 isEqual:v9];

    if (v10 & 1) == 0 || ([v6 allowedInPrivateBrowsing] & 1) == 0 && (objc_msgSend(v5, "isPrivate"))
    {
      v11 = 0;
    }
  }

  return v11;
}

- (void)didMoveTab:(id)a3 fromIndex:(unint64_t)a4 toIndex:(unint64_t)a5
{
  v7 = a3;
  webKitController = self->_webKitController;
  v10 = v7;
  v9 = [v7 webExtensionWindow];
  [(WKWebExtensionController *)webKitController didMoveTab:v10 fromIndex:a4 inWindow:v9];
}

- (void)didMoveTab:(id)a3 fromWindowWithID:(double)a4 indexInOldWindow:(unint64_t)a5
{
  v9 = a3;
  if (a4 == -1.0)
  {
    v8 = 0;
  }

  else
  {
    v8 = [(WBSWebExtensionsController *)self _findWindowWithID:a4];
  }

  [(WKWebExtensionController *)self->_webKitController didMoveTab:v9 fromIndex:a5 inWindow:v8];
}

- (void)didSelectTab:(id)a3 previousTab:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  [(WKWebExtensionController *)self->_webKitController didActivateTab:v6 previousActiveTab:a4];
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
        v12 = [v11 toolbarItem];
        [v12 didSelectTab:v6];

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }
}

- (BOOL)isWindow:(id)a3 visibleToExtension:(id)a4
{
  v5 = a3;
  v6 = a4;
  v11 = 1;
  if (v5)
  {
    v7 = [v5 profile];
    v8 = [v6 extensionsController];
    v9 = [v8 profile];
    v10 = [v7 isEqual:v9];

    if (v10 & 1) == 0 || ([v6 allowedInPrivateBrowsing] & 1) == 0 && (objc_msgSend(v5, "isPrivate"))
    {
      v11 = 0;
    }
  }

  return v11;
}

- (id)_persistentStateURLForExtensionURL:(id)a3
{
  v4 = [MEMORY[0x1E696AF20] componentsWithURL:a3 resolvingAgainstBaseURL:0];
  v5 = [v4 host];
  v6 = [(WBSWebExtensionsController *)self webExtensionForBaseURIHost:v5];

  if (v6)
  {
    v7 = [v6 composedIdentifier];
    v8 = [MEMORY[0x1E696AB08] URLHostAllowedCharacterSet];
    v9 = [v7 stringByAddingPercentEncodingWithAllowedCharacters:v8];
    [v4 setEncodedHost:v9];

    v10 = [v4 URL];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_extensionURLToLoadFromPersistentStateURL:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [MEMORY[0x1E696AF20] componentsWithURL:v4 resolvingAgainstBaseURL:0];
    v6 = [v4 safari_composedIdentifierAndProfileIdentifierInSafariWebExtensionURL];
    v7 = [v6 first];
    v8 = [(WBSWebExtensionsController *)self webExtensionForComposedIdentifier:v7];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 baseURIHost];
      v11 = [v10 UUIDString];
      [v5 setHost:v11];

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
  v8 = [(WBSWebExtensionsController *)self tabOverridePreferencesManager];
  v9 = [MEMORY[0x1E695E000] safari_browserDefaults];
  v10 = [v6 initWithExtensionsList:extensions extractDeveloperIdentifier:v3 extractComposedIdentifier:v4 extensionTelemetryDataPredicate:v5 newTabPageIsOverridden:{objc_msgSend(v8, "isNewTabPageOverriddenByAnEnabledExtensionInUserDefaults:", v9)}];

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

- (void)_grantRequestedPermissionsIfNecessaryForExtension:(id)a3
{
  v42 = *MEMORY[0x1E69E9840];
  v28 = a3;
  v4 = [MEMORY[0x1E695E000] safari_browserDefaults];
  v5 = [v4 BOOLForKey:@"DidGrantSearchProviderAccessToWebNavigationExtensions"];

  if ((v5 & 1) == 0)
  {
    v6 = v28;
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

    v27 = [v8 composedIdentifier];
    if ([-[WBSWebExtensionsController _grantRequestedPermissionsIfNecessaryForExtension:]::searchProviderComposedIdentifiers containsObject:?])
    {
      v9 = [v8 grantedPermissionOrigins];
      v10 = [v9 count];

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

        [(NSMutableSet *)migratedWebNavigationExtensionIdentifiers addObject:v27];
        v14 = MEMORY[0x1E695DFD8];
        v15 = [(WBSWebExtensionsController *)self _domainForDefaultSearchProvider];
        v16 = [WBSWebExtensionMatchPattern matchPatternForDomain:v15];
        v30 = [v14 setWithObject:v16];

        v17 = [MEMORY[0x1E695DFD8] set];
        v18 = [MEMORY[0x1E695DF00] distantFuture];
        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        v19 = [(WBSExtensionsController *)self allProfileExtensionsControllers];
        obj = v19;
        v20 = [v19 countByEnumeratingWithState:&v37 objects:v41 count:16];
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
              v24 = [v31 extension];
              v25 = [v23 webExtensionForExtension:v24];

              v32[0] = MEMORY[0x1E69E9820];
              v32[1] = 3221225472;
              v32[2] = __80__WBSWebExtensionsController__grantRequestedPermissionsIfNecessaryForExtension___block_invoke;
              v32[3] = &unk_1E8287CB0;
              v26 = v25;
              v33 = v26;
              v34 = v17;
              v35 = v30;
              v36 = v18;
              [v23 _loadPermissionsFromStorageForWebExtension:v26 completionHandler:v32];
            }

            v19 = obj;
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