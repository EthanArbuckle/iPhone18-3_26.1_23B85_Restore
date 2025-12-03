@interface PSSystemPolicyManager
+ (BOOL)_backgroundAppRefreshSettingsNeededForProxy:(id)proxy;
+ (BOOL)_cellularDataSettingsNeededForBundleID:(id)d;
+ (BOOL)_defaultAppSettingsNeededForBundleID:(id)d;
+ (BOOL)_documentSettingsNeededForBundleID:(id)d;
+ (BOOL)_familyControlsSettingNeededForBundleID:(id)d;
+ (BOOL)_journalingSuggestionsSettingsNeededForBundleID:(id)d;
+ (BOOL)_languageSettingNeededForBundleID:(id)d;
+ (BOOL)_liveActivitiesSettingsNeededForBundleID:(id)d;
+ (BOOL)_notificationSettingsNeededForBundleID:(id)d;
+ (BOOL)_pasteboardSettingsNeededForBundleID:(id)d;
+ (BOOL)_photosSettingsNeededForProxy:(id)proxy;
+ (BOOL)_privacySettingsNeededForProxy:(id)proxy;
+ (BOOL)_shouldIncludeProxy:(id)proxy;
+ (BOOL)_systemSettingsNeededForProxy:(id)proxy;
+ (BOOL)_tapToPaySettingsNeededForBundleID:(id)d;
+ (BOOL)hasAnyAppClip;
+ (BOOL)isInstalledByThirdPartyMarketplace:(id)marketplace;
+ (id)_dataUsageWorkspaceInfo;
+ (id)_thirdPartyApplicationProxies;
+ (id)_thirdPartyApplicationProxyForBundleID:(id)d;
+ (id)specifiersForThirdPartyApps:(id)apps;
+ (id)thirdPartyApplicationForBundleID:(id)d;
+ (id)thirdPartyApplicationsIncludingAppClips:(BOOL)clips;
+ (void)_populateBBSectionIDs;
@end

@implementation PSSystemPolicyManager

+ (id)thirdPartyApplicationsIncludingAppClips:(BOOL)clips
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  _thirdPartyApplicationProxies = [self _thirdPartyApplicationProxies];
  v7 = [_thirdPartyApplicationProxies countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(_thirdPartyApplicationProxies);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        if (!clips)
        {
          appClipMetadata = [*(*(&v15 + 1) + 8 * i) appClipMetadata];

          if (appClipMetadata)
          {
            continue;
          }
        }

        v13 = [[PSThirdPartyApp alloc] initWithApplicationRecord:v11];
        [(PSThirdPartyApp *)v13 load];
        [v5 addObject:v13];
      }

      v8 = [_thirdPartyApplicationProxies countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  return v5;
}

+ (id)thirdPartyApplicationForBundleID:(id)d
{
  v3 = [self _thirdPartyApplicationProxyForBundleID:d];
  v4 = [[PSThirdPartyApp alloc] initWithApplicationRecord:v3];
  [(PSThirdPartyApp *)v4 load];

  return v4;
}

+ (BOOL)hasAnyAppClip
{
  PSGreenTeaAppListLog(@"Reading AppList from LSApplicationRecord", a2, v2, v3, v4, v5, v6, v7, v12);
  v8 = [MEMORY[0x1E69635F8] enumeratorWithOptions:0];
  v9 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_7];
  [v8 setPredicate:v9];

  nextObject = [v8 nextObject];
  LOBYTE(v9) = nextObject != 0;

  return v9;
}

uint64_t __38__PSSystemPolicyManager_hasAnyAppClip__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 appClipMetadata];

  if (v3)
  {
    v4 = [v2 bundleIdentifier];
    v3 = [v4 length] != 0;
  }

  return v3;
}

+ (id)_thirdPartyApplicationProxies
{
  v48 = *MEMORY[0x1E69E9840];
  v2 = objc_opt_new();
  PSGreenTeaAppListLog(@"Reading AppList from LSEnumerator", v3, v4, v5, v6, v7, v8, v9, v33);
  v10 = [MEMORY[0x1E69635F8] enumeratorWithOptions:128];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v11 = [v10 countByEnumeratingWithState:&v41 objects:v47 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v42;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v42 != v13)
        {
          objc_enumerationMutation(v10);
        }

        compatibilityObject = [*(*(&v41 + 1) + 8 * i) compatibilityObject];
        [v2 addObject:compatibilityObject];
      }

      v12 = [v10 countByEnumeratingWithState:&v41 objects:v47 count:16];
    }

    while (v12);
  }

  v16 = [MEMORY[0x1E69635F8] enumeratorWithOptions:64];
  [v16 setFilter:&__block_literal_global_10];
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v17 = v16;
  v18 = [v17 countByEnumeratingWithState:&v37 objects:v46 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v38;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v38 != v20)
        {
          objc_enumerationMutation(v17);
        }

        compatibilityObject2 = [*(*(&v37 + 1) + 8 * j) compatibilityObject];
        [v2 addObject:compatibilityObject2];
      }

      v19 = [v17 countByEnumeratingWithState:&v37 objects:v46 count:16];
    }

    while (v19);
  }

  array = [MEMORY[0x1E695DF70] array];
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v25 = [standardUserDefaults BOOLForKey:@"kInternalPreferencesLoadsAllSettingsBundles"];

  +[PSSystemPolicyManager _populateBBSectionIDs];
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v26 = v2;
  v27 = [v26 countByEnumeratingWithState:&v33 objects:v45 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v34;
    do
    {
      for (k = 0; k != v28; ++k)
      {
        if (*v34 != v29)
        {
          objc_enumerationMutation(v26);
        }

        v31 = *(*(&v33 + 1) + 8 * k);
        if (v25 && ([*(*(&v33 + 1) + 8 * k) hasSettingsBundle] & 1) != 0 || (objc_msgSend(v31, "isManagedAppDistributor", v33) & 1) != 0 || +[PSSystemPolicyManager isInstalledByThirdPartyMarketplace:](PSSystemPolicyManager, "isInstalledByThirdPartyMarketplace:", v31) || +[PSSystemPolicyManager _shouldIncludeProxy:](PSSystemPolicyManager, "_shouldIncludeProxy:", v31))
        {
          [array addObject:v31];
        }
      }

      v28 = [v26 countByEnumeratingWithState:&v33 objects:v45 count:16];
    }

    while (v28);
  }

  return array;
}

+ (id)_thirdPartyApplicationProxyForBundleID:(id)d
{
  dCopy = d;
  +[PSSystemPolicyManager _populateBBSectionIDs];
  v4 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:dCopy allowPlaceholder:1 error:0];

  if (v4 && +[PSSystemPolicyManager _shouldIncludeProxy:](PSSystemPolicyManager, "_shouldIncludeProxy:", v4) || ([v4 isManagedAppDistributor] & 1) != 0 || +[PSSystemPolicyManager isInstalledByThirdPartyMarketplace:](PSSystemPolicyManager, "isInstalledByThirdPartyMarketplace:", v4))
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (BOOL)isInstalledByThirdPartyMarketplace:(id)marketplace
{
  marketplaceCopy = marketplace;
  iTunesMetadata = [marketplaceCopy iTunesMetadata];
  distributorInfo = [iTunesMetadata distributorInfo];
  distributorID = [distributorInfo distributorID];
  if (distributorID)
  {
    iTunesMetadata2 = [marketplaceCopy iTunesMetadata];
    distributorInfo2 = [iTunesMetadata2 distributorInfo];
    v9 = [distributorInfo2 distributorIsFirstPartyApple] ^ 1;
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9;
}

+ (BOOL)_shouldIncludeProxy:(id)proxy
{
  proxyCopy = proxy;
  compatibilityObject = [proxyCopy compatibilityObject];
  applicationType = [compatibilityObject applicationType];
  if ([applicationType isEqualToString:*MEMORY[0x1E69635B8]])
  {
    v6 = ([proxyCopy hasSettingsBundle] & 1) != 0 || +[PSSystemPolicyManager _systemSettingsNeededForProxy:](PSSystemPolicyManager, "_systemSettingsNeededForProxy:", proxyCopy);
  }

  else
  {
    bundleIdentifier = [proxyCopy bundleIdentifier];
    if ([bundleIdentifier isEqualToString:@"com.apple.PlaygroundsBeta"])
    {
      v6 = ([proxyCopy hasSettingsBundle] & 1) != 0 || +[PSSystemPolicyManager _systemSettingsNeededForProxy:](PSSystemPolicyManager, "_systemSettingsNeededForProxy:", proxyCopy);
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

+ (BOOL)_systemSettingsNeededForProxy:(id)proxy
{
  proxyCopy = proxy;
  if ([PSSystemPolicyManager _privacySettingsNeededForProxy:proxyCopy]|| [PSSystemPolicyManager _photosSettingsNeededForProxy:proxyCopy]|| [PSSystemPolicyManager _backgroundAppRefreshSettingsNeededForProxy:proxyCopy])
  {
    v4 = 1;
  }

  else
  {
    bundleIdentifier = [proxyCopy bundleIdentifier];
    if ([PSSystemPolicyManager _cellularDataSettingsNeededForBundleID:bundleIdentifier])
    {
      v4 = 1;
    }

    else
    {
      bundleIdentifier2 = [proxyCopy bundleIdentifier];
      if ([PSSystemPolicyManager _notificationSettingsNeededForBundleID:bundleIdentifier2])
      {
        v4 = 1;
      }

      else
      {
        bundleIdentifier3 = [proxyCopy bundleIdentifier];
        if ([PSSystemPolicyManager _documentSettingsNeededForBundleID:bundleIdentifier3])
        {
          v4 = 1;
        }

        else
        {
          bundleIdentifier4 = [proxyCopy bundleIdentifier];
          if ([PSSystemPolicyManager _defaultAppSettingsNeededForBundleID:bundleIdentifier4])
          {
            v4 = 1;
          }

          else
          {
            bundleIdentifier5 = [proxyCopy bundleIdentifier];
            if ([PSSystemPolicyManager _languageSettingNeededForBundleID:bundleIdentifier5])
            {
              v4 = 1;
            }

            else
            {
              bundleIdentifier6 = [proxyCopy bundleIdentifier];
              if ([PSSystemPolicyManager _familyControlsSettingNeededForBundleID:bundleIdentifier6])
              {
                v4 = 1;
              }

              else
              {
                bundleIdentifier7 = [proxyCopy bundleIdentifier];
                if ([PSSystemPolicyManager _liveActivitiesSettingsNeededForBundleID:bundleIdentifier7])
                {
                  v4 = 1;
                }

                else
                {
                  bundleIdentifier8 = [proxyCopy bundleIdentifier];
                  if ([PSSystemPolicyManager _tapToPaySettingsNeededForBundleID:?])
                  {
                    v4 = 1;
                  }

                  else
                  {
                    bundleIdentifier9 = [proxyCopy bundleIdentifier];
                    v4 = [PSSystemPolicyManager _pasteboardSettingsNeededForBundleID:bundleIdentifier9];
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return v4;
}

+ (BOOL)_privacySettingsNeededForProxy:(id)proxy
{
  v17 = *MEMORY[0x1E69E9840];
  proxyCopy = proxy;
  Default = CFAllocatorGetDefault();
  v5 = [proxyCopy URL];
  v6 = CFBundleCreate(Default, v5);

  if (v6)
  {
    v7 = TCCAccessCopyInformationForBundle();
    CFRelease(v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = [v7 count];
  if (_os_feature_enabled_impl())
  {
    v9 = PKLogForCategory(2);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      if (v8)
      {
        v10 = @"YES";
      }

      else
      {
        v10 = @"NO";
      }

      bundleIdentifier = [proxyCopy bundleIdentifier];
      v13 = 138412546;
      v14 = v10;
      v15 = 2112;
      v16 = bundleIdentifier;
      _os_log_impl(&dword_18B008000, v9, OS_LOG_TYPE_INFO, "privacy == %@ for '%@'", &v13, 0x16u);
    }
  }

  return v8 != 0;
}

+ (BOOL)_photosSettingsNeededForProxy:(id)proxy
{
  bundleIdentifier = [proxy bundleIdentifier];
  if ([bundleIdentifier length])
  {
    v4 = PSPhotosPolicyBundleIdentifiersWithRecentPickerUsage();
    v5 = [v4 containsObject:bundleIdentifier];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (BOOL)_backgroundAppRefreshSettingsNeededForProxy:(id)proxy
{
  v23 = *MEMORY[0x1E69E9840];
  proxyCopy = proxy;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  uIBackgroundModes = [proxyCopy UIBackgroundModes];
  v5 = [uIBackgroundModes countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(uIBackgroundModes);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        if ([v9 isEqualToString:@"remote-notification"])
        {
          [v9 isEqualToString:@"fetch"];
LABEL_16:
          if (_os_feature_enabled_impl())
          {
            v13 = PKLogForCategory(2);
            if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
            {
              bundleIdentifier = [proxyCopy bundleIdentifier];
              *buf = 138412290;
              v21 = bundleIdentifier;
              _os_log_impl(&dword_18B008000, v13, OS_LOG_TYPE_INFO, "backgroundAppRefresh == YES for '%@'", buf, 0xCu);
            }
          }

          v12 = 1;
          goto LABEL_21;
        }

        v10 = [v9 isEqualToString:@"newsstand-content"];
        if (([v9 isEqualToString:@"fetch"] & 1) != 0 || v10)
        {
          goto LABEL_16;
        }
      }

      v6 = [uIBackgroundModes countByEnumeratingWithState:&v16 objects:v22 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  if (_os_feature_enabled_impl())
  {
    uIBackgroundModes = PKLogForCategory(2);
    if (os_log_type_enabled(uIBackgroundModes, OS_LOG_TYPE_INFO))
    {
      bundleIdentifier2 = [proxyCopy bundleIdentifier];
      *buf = 138412290;
      v21 = bundleIdentifier2;
      _os_log_impl(&dword_18B008000, uIBackgroundModes, OS_LOG_TYPE_INFO, "backgroundAppRefresh == NO for '%@'", buf, 0xCu);
    }

    v12 = 0;
LABEL_21:
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)_dataUsageWorkspaceInfo
{
  v12 = 0;
  v8 = 0;
  v10 = 0u;
  v11 = 0;
  selfCopy = self;
  v2 = _CTServerConnectionCreate();
  if (v2)
  {
    v3 = v2;
    _CTServerConnectionCopyCellularUsageWorkspaceInfo();
    CFRelease(v3);
  }

  v4 = _PSLoggingFacility();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_18B008000, v4, OS_LOG_TYPE_DEFAULT, "Failed to get the data usage workspace information", v7, 2u);
  }

  v5 = v12;

  return v5;
}

+ (BOOL)_cellularDataSettingsNeededForBundleID:(id)d
{
  v21 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (MGGetBoolAnswer())
  {
    if (_cellularDataSettingsNeededForBundleID__onceToken != -1)
    {
      +[PSSystemPolicyManager _cellularDataSettingsNeededForBundleID:];
    }

    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = 0;
    persistentStoreCoordinator = [_cellularDataSettingsNeededForBundleID__workspace persistentStoreCoordinator];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __64__PSSystemPolicyManager__cellularDataSettingsNeededForBundleID___block_invoke_2;
    v10[3] = &unk_1E71DC400;
    v5 = dCopy;
    v11 = v5;
    v12 = &v13;
    [persistentStoreCoordinator performBlockAndWait:v10];

    if (_os_feature_enabled_impl())
    {
      v6 = PKLogForCategory(2);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        if (*(v14 + 24))
        {
          v7 = @"YES";
        }

        else
        {
          v7 = @"NO";
        }

        *buf = 138412546;
        v18 = v7;
        v19 = 2112;
        v20 = v5;
        _os_log_impl(&dword_18B008000, v6, OS_LOG_TYPE_INFO, "cellularData == %@ for '%@'", buf, 0x16u);
      }
    }

    v8 = *(v14 + 24);

    _Block_object_dispose(&v13, 8);
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

void __64__PSSystemPolicyManager__cellularDataSettingsNeededForBundleID___block_invoke()
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__1;
  v15 = __Block_byref_object_dispose__1;
  v16 = 0;
  v0 = +[PSSystemPolicyManager _dataUsageWorkspaceInfo];
  v1 = [v0 objectForKey:*MEMORY[0x1E6965250]];
  v2 = [v0 objectForKey:*MEMORY[0x1E6965258]];
  v3 = v2;
  if (v1)
  {
    v4 = v2 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    v5 = _cellularDataSettingsNeededForBundleID__workspace;
    _cellularDataSettingsNeededForBundleID__workspace = 0;
  }

  else
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x2050000000;
    v6 = getAnalyticsWorkspaceClass_softClass;
    v21 = getAnalyticsWorkspaceClass_softClass;
    if (!getAnalyticsWorkspaceClass_softClass)
    {
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __getAnalyticsWorkspaceClass_block_invoke;
      v17[3] = &unk_1E71DBC78;
      v17[4] = &v18;
      __getAnalyticsWorkspaceClass_block_invoke(v17);
      v6 = v19[3];
    }

    v7 = v6;
    _Block_object_dispose(&v18, 8);
    v8 = [[v6 alloc] initWorkspaceWithName:v1 atPath:v3 useReadOnly:1];
    v9 = _cellularDataSettingsNeededForBundleID__workspace;
    _cellularDataSettingsNeededForBundleID__workspace = v8;

    v5 = [_cellularDataSettingsNeededForBundleID__workspace persistentStoreCoordinator];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __64__PSSystemPolicyManager__cellularDataSettingsNeededForBundleID___block_invoke_39;
    v10[3] = &unk_1E71DBC78;
    v10[4] = &v11;
    [v5 performBlockAndWait:v10];
  }

  objc_storeStrong(&_cellularDataSettingsNeededForBundleID__processAnalytics, v12[5]);
  _Block_object_dispose(&v11, 8);
}

void __64__PSSystemPolicyManager__cellularDataSettingsNeededForBundleID___block_invoke_39(uint64_t a1)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2050000000;
  v2 = getProcessAnalyticsClass_softClass;
  v12 = getProcessAnalyticsClass_softClass;
  if (!getProcessAnalyticsClass_softClass)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __getProcessAnalyticsClass_block_invoke;
    v8[3] = &unk_1E71DBC78;
    v8[4] = &v9;
    __getProcessAnalyticsClass_block_invoke(v8);
    v2 = v10[3];
  }

  v3 = v2;
  _Block_object_dispose(&v9, 8);
  v4 = [v2 alloc];
  v5 = [v4 initWithWorkspace:_cellularDataSettingsNeededForBundleID__workspace withCache:0];
  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void __64__PSSystemPolicyManager__cellularDataSettingsNeededForBundleID___block_invoke_2(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = _cellularDataSettingsNeededForBundleID__processAnalytics;
  v3 = [MEMORY[0x1E696AE18] predicateWithFormat:@"bundleName like %@", *(a1 + 32)];
  v4 = [v2 fetchEntitiesFreeForm:v3 sortDesc:0];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v12 + 1) + 8 * i) bundleName];
        v11 = [v10 isEqualToString:*(a1 + 32)];

        if (v11)
        {
          *(*(*(a1 + 40) + 8) + 24) = 1;
          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

+ (BOOL)_tapToPaySettingsNeededForBundleID:(id)d
{
  dCopy = d;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2050000000;
  v4 = getPRSettingsProviderClass_softClass_0;
  v12 = getPRSettingsProviderClass_softClass_0;
  if (!getPRSettingsProviderClass_softClass_0)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __getPRSettingsProviderClass_block_invoke_0;
    v8[3] = &unk_1E71DBC78;
    v8[4] = &v9;
    __getPRSettingsProviderClass_block_invoke_0(v8);
    v4 = v10[3];
  }

  v5 = v4;
  _Block_object_dispose(&v9, 8);
  v6 = [v4 isProximityReaderSupported:dCopy];

  return v6;
}

+ (BOOL)_pasteboardSettingsNeededForBundleID:(id)d
{
  dCopy = d;
  v4 = *MEMORY[0x1E69D55C0];
  v11 = 0;
  v12 = 0;
  v10 = 0;
  PSGetAuthorizationStatesForService(v4, &v12, &v11, &v10);
  v5 = v12;
  v6 = v11;
  v7 = v10;
  if ([v5 containsObject:dCopy] & 1) != 0 || (objc_msgSend(v6, "containsObject:", dCopy))
  {
    v8 = 1;
  }

  else
  {
    v8 = [v7 containsObject:dCopy];
  }

  return v8;
}

+ (id)specifiersForThirdPartyApps:(id)apps
{
  v33 = *MEMORY[0x1E69E9840];
  appsCopy = apps;
  v18 = objc_opt_new();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = appsCopy;
  v4 = [obj countByEnumeratingWithState:&v22 objects:v32 count:16];
  if (v4)
  {
    v5 = v4;
    v21 = *v23;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v23 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v22 + 1) + 8 * i);
        record = [v7 record];
        v9 = [record URL];
        bundleIdentifier = [record bundleIdentifier];
        v11 = [v9 URLByAppendingPathComponent:@"Settings.bundle"];
        if (v11)
        {
          v12 = [MEMORY[0x1E696AAE8] bundleWithURL:v11];
          localizedName = [v7 localizedName];
          v14 = [PSSpecifier preferenceSpecifierNamed:localizedName target:self set:0 get:0 detail:objc_opt_class() cell:1 edit:0];
          [v14 setProperty:@"Root" forKey:@"File"];
          v15 = [MEMORY[0x1E696AD98] numberWithBool:1];
          [v14 setProperty:v15 forKey:@"useLazyIcons"];

          [v14 setProperty:bundleIdentifier forKey:@"appIDForLazyIcon"];
          [v14 setProperty:v12 forKey:@"AppSettingsBundle"];
          [v14 setProperty:bundleIdentifier forKey:@"AppBundleID"];
          [v14 setProperty:bundleIdentifier forKey:@"id"];
          [v14 setProperty:bundleIdentifier forKey:@"restrictByID"];
          if (!PSIsSpecifierHiddenDueToRestrictions(v14))
          {
            [v18 addObject:v14];
          }
        }

        else
        {
          v12 = _PSLoggingFacility();
          if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_13;
          }

          localizedName = [record localizedName];
          *buf = 136315650;
          v27 = "+[PSSystemPolicyManager specifiersForThirdPartyApps:]";
          v28 = 2112;
          v29 = localizedName;
          v30 = 2112;
          v31 = record;
          _os_log_impl(&dword_18B008000, v12, OS_LOG_TYPE_DEFAULT, "%s - settingsBundleURL is nil for (%@) %@ ", buf, 0x20u);
        }

LABEL_13:
      }

      v5 = [obj countByEnumeratingWithState:&v22 objects:v32 count:16];
    }

    while (v5);
  }

  v16 = [v18 copy];

  return v16;
}

+ (void)_populateBBSectionIDs
{
  obj = self;
  objc_sync_enter(obj);
  v2 = +[PSNotificationSettingsController sharedInstance];
  allSectionInfoIdentifiers = [v2 allSectionInfoIdentifiers];
  v4 = gBBSectionIDs;
  gBBSectionIDs = allSectionInfoIdentifiers;

  objc_sync_exit(obj);
}

+ (BOOL)_journalingSuggestionsSettingsNeededForBundleID:(id)d
{
  v3 = MEMORY[0x1E69635F8];
  dCopy = d;
  v5 = [[v3 alloc] initWithBundleIdentifier:dCopy allowPlaceholder:0 error:0];

  LOBYTE(dCopy) = [v5 supportsJournalingSuggestions];
  return dCopy;
}

+ (BOOL)_liveActivitiesSettingsNeededForBundleID:(id)d
{
  dCopy = d;
  if (_os_feature_enabled_impl())
  {
    v7 = 0;
    v4 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:dCopy allowPlaceholder:0 error:&v7];
    supportsLiveActivities = [v4 supportsLiveActivities];
  }

  else
  {
    supportsLiveActivities = 0;
  }

  return supportsLiveActivities;
}

+ (BOOL)_notificationSettingsNeededForBundleID:(id)d
{
  v14 = *MEMORY[0x1E69E9840];
  dCopy = d;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [gBBSectionIDs containsObject:dCopy];
  objc_sync_exit(selfCopy);

  if (_os_feature_enabled_impl())
  {
    v7 = PKLogForCategory(2);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = @"NO";
      if (v6)
      {
        v8 = @"YES";
      }

      v10 = 138412546;
      v11 = v8;
      v12 = 2112;
      v13 = dCopy;
      _os_log_impl(&dword_18B008000, v7, OS_LOG_TYPE_INFO, "notification == %@ for '%@'", &v10, 0x16u);
    }
  }

  return v6;
}

+ (BOOL)_documentSettingsNeededForBundleID:(id)d
{
  v15 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v4 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:dCopy];
  infoDictionary = [v4 infoDictionary];

  v6 = [infoDictionary objectForKeyedSubscript:@"UISupportsDocumentBrowser"];
  bOOLValue = [v6 BOOLValue];

  if (_os_feature_enabled_impl())
  {
    v8 = PKLogForCategory(2);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = @"NO";
      if (bOOLValue)
      {
        v9 = @"YES";
      }

      v11 = 138412546;
      v12 = v9;
      v13 = 2112;
      v14 = dCopy;
      _os_log_impl(&dword_18B008000, v8, OS_LOG_TYPE_INFO, "document == %@ for '%@'", &v11, 0x16u);
    }
  }

  return bOOLValue;
}

+ (BOOL)_defaultAppSettingsNeededForBundleID:(id)d
{
  v15 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v10 = 0;
  v4 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:dCopy allowPlaceholder:0 error:&v10];
  v5 = v10;
  if ([v4 isEligibleWebBrowser])
  {
    isEligibleMailClient = 1;
  }

  else
  {
    isEligibleMailClient = [v4 isEligibleMailClient];
  }

  if (_os_feature_enabled_impl())
  {
    v7 = PKLogForCategory(2);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = @"NO";
      if (isEligibleMailClient)
      {
        v8 = @"YES";
      }

      *buf = 138412546;
      v12 = v8;
      v13 = 2112;
      v14 = dCopy;
      _os_log_impl(&dword_18B008000, v7, OS_LOG_TYPE_INFO, "defaultApp == %@ for '%@'", buf, 0x16u);
    }
  }

  return isEligibleMailClient;
}

+ (BOOL)_languageSettingNeededForBundleID:(id)d
{
  v23 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v18 = 0;
  v4 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:dCopy allowPlaceholder:0 error:&v18];
  v5 = v18;
  v6 = [v4 URL];
  if (v6)
  {
    v7 = [MEMORY[0x1E696AAE8] bundleWithURL:v6];
    preferredLanguages = [MEMORY[0x1E695DF58] preferredLanguages];
    v9 = [preferredLanguages count];

    if (v9 >= 2)
    {
      _os_feature_enabled_impl();
    }

    else
    {
      v10 = [v7 objectForInfoDictionaryKey:@"UIPrefersShowingLanguageSettings"];
      bOOLValue = [v10 BOOLValue];

      if (_os_feature_enabled_impl() && (bOOLValue & 1) == 0)
      {
        normalizedLocalizations = PKLogForCategory(2);
        if (os_log_type_enabled(normalizedLocalizations, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v20 = dCopy;
          _os_log_impl(&dword_18B008000, normalizedLocalizations, OS_LOG_TYPE_INFO, "language == NO for '%@'", buf, 0xCu);
        }

        v13 = 0;
LABEL_16:

LABEL_17:
        goto LABEL_18;
      }

      if (!bOOLValue)
      {
        v13 = 0;
        goto LABEL_17;
      }
    }

    normalizedLocalizations = [v7 normalizedLocalizations];
    v14 = [normalizedLocalizations count];
    v13 = v14 > 1;
    if (_os_feature_enabled_impl())
    {
      v15 = PKLogForCategory(2);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = @"NO";
        if (v14 > 1)
        {
          v16 = @"YES";
        }

        *buf = 138412546;
        v20 = v16;
        v21 = 2112;
        v22 = dCopy;
        _os_log_impl(&dword_18B008000, v15, OS_LOG_TYPE_INFO, "language == %@ for '%@'", buf, 0x16u);
      }
    }

    goto LABEL_16;
  }

  v13 = 0;
LABEL_18:

  return v13;
}

+ (BOOL)_familyControlsSettingNeededForBundleID:(id)d
{
  v29 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2050000000;
  v4 = getFOAuthorizationCenterClass_softClass_0;
  v23 = getFOAuthorizationCenterClass_softClass_0;
  if (!getFOAuthorizationCenterClass_softClass_0)
  {
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 3221225472;
    v26 = __getFOAuthorizationCenterClass_block_invoke_0;
    v27 = &unk_1E71DBC78;
    v28 = &v20;
    __getFOAuthorizationCenterClass_block_invoke_0(&buf);
    v4 = v21[3];
  }

  v5 = v4;
  _Block_object_dispose(&v20, 8);
  sharedCenter = [v4 sharedCenter];
  authorizationRecords = [sharedCenter authorizationRecords];

  v8 = [authorizationRecords countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v8)
  {
    v9 = *v17;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(authorizationRecords);
        }

        bundleIdentifier = [*(*(&v16 + 1) + 8 * i) bundleIdentifier];
        v12 = [bundleIdentifier isEqualToString:dCopy];

        if (v12)
        {
          if (_os_feature_enabled_impl())
          {
            v14 = PKLogForCategory(2);
            if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
            {
              LODWORD(buf) = 138412290;
              *(&buf + 4) = dCopy;
              _os_log_impl(&dword_18B008000, v14, OS_LOG_TYPE_INFO, "familyControls == YES for '%@'", &buf, 0xCu);
            }
          }

          v13 = 1;
          goto LABEL_20;
        }
      }

      v8 = [authorizationRecords countByEnumeratingWithState:&v16 objects:v24 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  if (_os_feature_enabled_impl())
  {
    authorizationRecords = PKLogForCategory(2);
    if (os_log_type_enabled(authorizationRecords, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = dCopy;
      _os_log_impl(&dword_18B008000, authorizationRecords, OS_LOG_TYPE_INFO, "familyControls == NO for '%@'", &buf, 0xCu);
    }

    v13 = 0;
LABEL_20:
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end