@interface WFLinkActionProvider
+ (BOOL)approvedForPublicDrawerToDisplayActionIdentifier:(id)a3;
+ (BOOL)shouldAuditAction:(id)a3 forBundleIdentifier:(id)a4;
+ (id)sharedProvider;
+ (id)shortcutsPublicActionIdentifierHashes;
- (BOOL)isDiscontinuedWithAvailability:(id)a3;
- (BOOL)serializedAppIntentDescriptorIsValid:(id)a3;
- (WFLinkActionProvider)initWithMetadataProvider:(id)a3;
- (id)actionMetadataByUpdatingWithEnumAndEntityMetadata:(id)a3 bundleIdentifier:(id)a4;
- (id)appDescriptorForActionRequest:(id)a3 fullyQualifiedIdentifier:(id *)a4 forceLocalActionsOnly:(BOOL)a5;
- (id)availabilityWithAvailabilityAnnotations:(id)a3;
- (id)availableActionIdentifiers;
- (id)createActionsForBundleIdentifier:(id)a3;
- (id)createAllAvailableActions;
- (id)customIntentMigratedActionIdentifierWithLaunchId:(id)a3 className:(id)a4;
- (id)definitionForMissingActionWithSerializedParameters:(id)a3;
- (id)disabledOnPlatformsWithAvailability:(id)a3;
- (id)getAppSettingActionForRequest:(id)a3 fullyQualifiedActionIdentifier:(id)a4 localActionsOnly:(BOOL)a5;
- (id)linkActionWithActionRequest:(id)a3 fullyQualifiedActionIdentifier:(id)a4 forceLocalActionsOnly:(BOOL)a5;
- (id)linkContentItemFilterActionWithActionRequest:(id)a3 fullyQualifiedActionIdentifier:(id)a4 entityMetadata:(id)a5 queryMetadata:(id)a6;
- (id)linkCurrentPlatformName;
- (id)resolvedActionIdentifiersForActionRequests:(id)a3 forceLocalActionsOnly:(BOOL)a4;
- (id)settingUpdaterActionForActionRequest:(id)a3 fullyQualifiedActionIdentifier:(id)a4 localActionsOnly:(BOOL)a5;
- (id)targetedEntityUpdaterActionForRequest:(id)a3 fullyQualifiedActionIdentifier:(id)a4 localActionsOnly:(BOOL)a5;
- (void)createActionsForRequests:(id)a3 allowsActionInDenyList:(BOOL)a4 forceLocalActionsOnly:(BOOL)a5;
- (void)registerAllAvailableTypes;
@end

@implementation WFLinkActionProvider

+ (id)sharedProvider
{
  if (sharedProvider_onceToken != -1)
  {
    dispatch_once(&sharedProvider_onceToken, &__block_literal_global_258);
  }

  v3 = sharedProvider_sharedProvider;

  return v3;
}

- (id)linkCurrentPlatformName
{
  v2 = [MEMORY[0x1E69E0A90] currentDevice];
  v3 = [v2 platform];

  if (v3 <= 2)
  {
    v4 = **(&unk_1E8380678 + v3);
  }

  return v4;
}

void __38__WFLinkActionProvider_sharedProvider__block_invoke()
{
  v0 = [WFLinkActionProvider alloc];
  v3 = [objc_alloc(MEMORY[0x1E69ACF58]) initWithOptions:2];
  v1 = [(WFLinkActionProvider *)v0 initWithMetadataProvider:v3];
  v2 = sharedProvider_sharedProvider;
  sharedProvider_sharedProvider = v1;
}

+ (id)shortcutsPublicActionIdentifierHashes
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__WFLinkActionProvider_Hiding__shortcutsPublicActionIdentifierHashes__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (shortcutsPublicActionIdentifierHashes_onceToken != -1)
  {
    dispatch_once(&shortcutsPublicActionIdentifierHashes_onceToken, block);
  }

  v2 = shortcutsPublicActionIdentifierHashes_shortcutsPublicActionIdentifiers;

  return v2;
}

void __69__WFLinkActionProvider_Hiding__shortcutsPublicActionIdentifierHashes__block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69E0A90] currentDevice];
  v3 = [v2 idiom];

  if (v3 >= 6)
  {
    v5 = getWFAppIntentsLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      v6 = [MEMORY[0x1E69E0A90] currentDevice];
      *buf = 136315394;
      v20 = "+[WFLinkActionProvider(Hiding) shortcutsPublicActionIdentifierHashes]_block_invoke";
      v21 = 2048;
      v22 = [v6 idiom];
      _os_log_impl(&dword_1CA256000, v5, OS_LOG_TYPE_FAULT, "%s Unexpected WFDeviceIdiom %ld", buf, 0x16u);
    }

    v4 = 0;
  }

  else
  {
    v4 = off_1E837C3F0[v3];
  }

  v7 = *(a1 + 32);
  v8 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v9 = [v8 URLForResource:v4 withExtension:@"metadata"];

  v18 = 0;
  v10 = [MEMORY[0x1E696AEC0] stringWithContentsOfURL:v9 encoding:4 error:&v18];
  v11 = v18;
  if (v11)
  {
    v12 = getWFActionsLogObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315394;
      v20 = "+[WFLinkActionProvider(Hiding) shortcutsPublicActionIdentifierHashes]_block_invoke";
      v21 = 2112;
      v22 = v11;
      _os_log_impl(&dword_1CA256000, v12, OS_LOG_TYPE_FAULT, "%s Failed to open file. %@", buf, 0x16u);
    }
  }

  v13 = MEMORY[0x1E695DFD8];
  v14 = [v10 componentsSeparatedByString:@"\n"];
  v15 = [v13 setWithArray:v14];
  v16 = shortcutsPublicActionIdentifierHashes_shortcutsPublicActionIdentifiers;
  shortcutsPublicActionIdentifierHashes_shortcutsPublicActionIdentifiers = v15;

  v17 = *MEMORY[0x1E69E9840];
}

+ (BOOL)shouldAuditAction:(id)a3 forBundleIdentifier:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [objc_alloc(MEMORY[0x1E696E720]) initWithBundleIdentifier:v6];
  if (![v7 isThirdParty])
  {
    if (![v7 isProbablySecondParty])
    {
      v12 = 1;
      goto LABEL_12;
    }

    v8 = getWFAppIntentsLogObject();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_9;
    }

    v15 = 136315650;
    v16 = "+[WFLinkActionProvider(Hiding) shouldAuditAction:forBundleIdentifier:]";
    v17 = 2112;
    v18 = v5;
    v19 = 2112;
    v20 = v6;
    v9 = "%s %@ in %@ is probably second party, allowing.";
    v10 = v8;
    v11 = 32;
    goto LABEL_8;
  }

  if ([v6 hasPrefix:@"com.apple."])
  {
    v8 = getWFAppIntentsLogObject();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
LABEL_9:

      goto LABEL_10;
    }

    v15 = 136315394;
    v16 = "+[WFLinkActionProvider(Hiding) shouldAuditAction:forBundleIdentifier:]";
    v17 = 2112;
    v18 = v5;
    v9 = "%s %@ seems to be third party but uses 'com.apple'.";
    v10 = v8;
    v11 = 22;
LABEL_8:
    _os_log_impl(&dword_1CA256000, v10, OS_LOG_TYPE_DEBUG, v9, &v15, v11);
    goto LABEL_9;
  }

LABEL_10:
  v12 = 0;
LABEL_12:

  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

+ (BOOL)approvedForPublicDrawerToDisplayActionIdentifier:(id)a3
{
  v33[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v32 = @"com.apple.SafariTechnologyPreview";
  v33[0] = *MEMORY[0x1E69E0F10];
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:&v32 count:1];
  v6 = [v4 bundleIdentifier];
  v7 = [v5 objectForKeyedSubscript:v6];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = [v4 bundleIdentifier];
  }

  v10 = v9;

  v11 = [v4 actionIdentifier];
  v12 = [a1 shouldAuditAction:v11 forBundleIdentifier:v10];

  if (v12)
  {
    v13 = [v4 actionIdentifier];
    v14 = WFShortcutsActionIdentifierFromLinkIdentifiers(v10, v13);

    v15 = [v14 dataUsingEncoding:4];
    v16 = [MEMORY[0x1EEE9AC00](v15) bytes];
    CC_MD5(v16, [v15 length], v25);
    v17 = objc_opt_new();
    for (i = 0; i != 16; ++i)
    {
      [v17 appendFormat:@"%02x", v25[i]];
    }

    v19 = +[WFLinkActionProvider shortcutsPublicActionIdentifierHashes];
    v20 = [v19 containsObject:v17];

    v21 = getWFAppIntentsLogObject();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      v22 = @"Unreviewed";
      *buf = 136315650;
      v27 = "+[WFLinkActionProvider(Hiding) approvedForPublicDrawerToDisplayActionIdentifier:]";
      v28 = 2112;
      if (v20)
      {
        v22 = @"Approved";
      }

      v29 = v22;
      v30 = 2112;
      v31 = v17;
      _os_log_impl(&dword_1CA256000, v21, OS_LOG_TYPE_DEBUG, "%s %@: %@", buf, 0x20u);
    }
  }

  else
  {
    LOBYTE(v20) = 1;
  }

  v23 = *MEMORY[0x1E69E9840];
  return v20;
}

- (id)customIntentMigratedActionIdentifierWithLaunchId:(id)a3 className:(id)a4
{
  v41 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v34 = 0;
  v8 = [MEMORY[0x1E6963620] bundleRecordWithBundleIdentifier:v6 allowPlaceholder:0 error:&v34];
  v9 = v34;
  if (v8)
  {
    v10 = v8;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v12 = v10;
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;

    if (isKindOfClass)
    {
      v14 = getWFAppIntentsLogObject();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v36 = "[WFLinkActionProvider customIntentMigratedActionIdentifierWithLaunchId:className:]";
        v37 = 2114;
        v38 = v6;
        _os_log_impl(&dword_1CA256000, v14, OS_LOG_TYPE_DEFAULT, "%s The provided launchId (%{public}@) is an extension, getting its container", buf, 0x16u);
      }

      v15 = [v10 containingBundleRecord];
      if (v15)
      {
        v16 = getWFAppIntentsLogObject();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = [v15 bundleIdentifier];
          *buf = 136315650;
          v36 = "[WFLinkActionProvider customIntentMigratedActionIdentifierWithLaunchId:className:]";
          v37 = 2114;
          v38 = v6;
          v39 = 2114;
          v40 = v17;
          _os_log_impl(&dword_1CA256000, v16, OS_LOG_TYPE_DEFAULT, "%s The container for %{public}@ is %{public}@; Using it", buf, 0x20u);
        }

        v18 = [v10 containingBundleRecord];

        v10 = v18;
      }
    }

    v19 = [v10 bundleIdentifier];
    v20 = getWFAppIntentsLogObject();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v36 = "[WFLinkActionProvider customIntentMigratedActionIdentifierWithLaunchId:className:]";
      v37 = 2114;
      v38 = v19;
      _os_log_impl(&dword_1CA256000, v20, OS_LOG_TYPE_DEFAULT, "%s Getting metadata for app intents from %{public}@)", buf, 0x16u);
    }

    v21 = [(WFLinkActionProvider *)self metadataProvider];
    v22 = [v21 actionsForBundleIdentifier:v19];

    v29 = MEMORY[0x1E69E9820];
    v30 = 3221225472;
    v31 = __83__WFLinkActionProvider_customIntentMigratedActionIdentifierWithLaunchId_className___block_invoke;
    v32 = &unk_1E83802E8;
    v33 = v7;
    v23 = [v22 if_firstObjectPassingTest:&v29];
    v24 = v23;
    if (v23)
    {
      v25 = [v23 identifier];
      v26 = WFShortcutsActionIdentifierFromLinkIdentifiers(v19, v25);
    }

    else
    {
      v26 = 0;
    }
  }

  else
  {
    v10 = getWFAppIntentsLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v36 = "[WFLinkActionProvider customIntentMigratedActionIdentifierWithLaunchId:className:]";
      v37 = 2114;
      v38 = v6;
      v39 = 2114;
      v40 = v9;
      _os_log_impl(&dword_1CA256000, v10, OS_LOG_TYPE_ERROR, "%s Unable to get bundle record for %{public}@: %{public}@", buf, 0x20u);
    }

    v26 = 0;
  }

  v27 = *MEMORY[0x1E69E9840];

  return v26;
}

uint64_t __83__WFLinkActionProvider_customIntentMigratedActionIdentifierWithLaunchId_className___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 customIntentClassName];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (BOOL)isDiscontinuedWithAvailability:(id)a3
{
  v4 = [(WFLinkActionProvider *)self availabilityWithAvailabilityAnnotations:a3];
  v5 = [(WFLinkActionProvider *)self linkCurrentPlatformName];
  v6 = [v4 objectForKeyedSubscript:v5];

  LOBYTE(v5) = v6 == *MEMORY[0x1E69ACB48];
  return v5;
}

- (id)disabledOnPlatformsWithAvailability:(id)a3
{
  v5 = a3;
  v6 = objc_opt_new();
  v7 = [(WFLinkActionProvider *)self availabilityWithAvailabilityAnnotations:v5];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __60__WFLinkActionProvider_disabledOnPlatformsWithAvailability___block_invoke;
  v11[3] = &unk_1E83802C0;
  v8 = v6;
  v13 = self;
  v14 = a2;
  v12 = v8;
  [v7 enumerateKeysAndObjectsUsingBlock:v11];

  v9 = v8;
  return v8;
}

void __60__WFLinkActionProvider_disabledOnPlatformsWithAvailability___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  if (*MEMORY[0x1E69ACB50] == v5)
  {
    if (*MEMORY[0x1E69AC210] == v9)
    {
      [*(a1 + 32) addObject:@"Pad"];
      v7 = *(a1 + 32);
      v8 = @"Phone";
    }

    else if (*MEMORY[0x1E69AC220] == v9)
    {
      v7 = *(a1 + 32);
      v8 = @"Desktop";
    }

    else if (*MEMORY[0x1E69AC248] == v9)
    {
      v7 = *(a1 + 32);
      v8 = @"Watch";
    }

    else
    {
      if (*MEMORY[0x1E69AC230] == v9)
      {
        goto LABEL_13;
      }

      if (*MEMORY[0x1E69AC240] != v9)
      {
        v6 = [MEMORY[0x1E696AAA8] currentHandler];
        [v6 handleFailureInMethod:*(a1 + 48) object:*(a1 + 40) file:@"WFLinkActionProvider.m" lineNumber:1209 description:{@"Unknown OS Execution Platform: %@", v9}];

        goto LABEL_13;
      }

      v7 = *(a1 + 32);
      v8 = @"XR";
    }

    [v7 addObject:v8];
  }

LABEL_13:
}

- (id)availabilityWithAvailabilityAnnotations:(id)a3
{
  v4 = MEMORY[0x1E69ACDD0];
  v5 = a3;
  v6 = [[v4 alloc] initWithAvailabilityAnnotations:v5];

  v7 = [(WFLinkActionProvider *)self linkCurrentPlatformName];
  v8 = [MEMORY[0x1E69E0A90] currentDevice];
  v9 = [v8 systemVersion];
  v10 = [v6 availabilityWithPlatform:v7 platformVersion:v9];

  return v10;
}

- (id)getAppSettingActionForRequest:(id)a3 fullyQualifiedActionIdentifier:(id)a4 localActionsOnly:(BOOL)a5
{
  v81 = *MEMORY[0x1E69E9840];
  v67 = a3;
  v66 = a4;
  v7 = [v66 bundleIdentifier];
  v68 = objc_opt_new();
  v65 = self;
  v8 = [(WFLinkActionProvider *)self metadataProvider];
  v9 = [v8 entitiesForBundleIdentifier:v7];

  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v70 objects:v80 count:16];
  v69 = v10;
  if (v11)
  {
    v12 = v11;
    v13 = *v71;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v71 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v70 + 1) + 8 * i);
        if (WFISEligibleForSettingsUpdaterAction(v15, v7) && [v15 visibleForUse:0])
        {
          v16 = objc_alloc(MEMORY[0x1E69AC860]);
          v17 = [v15 identifier];
          v18 = [v16 initWithActionIdentifier:v17 bundleIdentifier:v7];

          if (+[WFLinkActionProvider approvedForPublicDrawerToDisplayActionIdentifier:](WFLinkActionProvider, "approvedForPublicDrawerToDisplayActionIdentifier:", v18) || ([MEMORY[0x1E695E000] systemShortcutsUserDefaults], v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v19, "BOOLForKey:", @"WFDrawerShowInternalApps"), v19, v20))
          {
            v21 = [v15 identifier];
            [v68 setObject:v15 forKey:v21];
          }

          v10 = v69;
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v70 objects:v80 count:16];
    }

    while (v12);
  }

  if ([v68 count])
  {
    v22 = v66;
    v23 = [v66 actionIdentifier];
    v24 = WFShortcutsActionIdentifierFromLinkIdentifiers(v7, v23);

    if ([v24 length])
    {
      v25 = objc_opt_new();
      v26 = WFLinkActionBundleIdentifierOverrides(v24);
      v27 = MEMORY[0x1E69E0908];
      if (v26 || (v26 = v7) != 0)
      {
        v78 = *v27;
        v79 = v26;
        v62 = v26;
        v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v79 forKeys:&v78 count:1];
        [v25 setObject:v28 forKeyedSubscript:@"LinkActionDisplayedAppDescriptor"];
      }

      else
      {
        v62 = 0;
      }

      v29 = [v10 firstObject];
      v30 = [v29 effectiveBundleIdentifiers];
      v63 = v25;
      v64 = v29;
      if ([v30 count] == 1)
      {
        v31 = [v29 effectiveBundleIdentifiers];
        v32 = [v31 firstObject];
        if ([v32 type] == 2)
        {
          v33 = [v29 effectiveBundleIdentifiers];
          v34 = [v33 firstObject];
          v35 = [v34 bundleIdentifier];
          v36 = [v35 isEqualToString:v7];

          v29 = v64;
        }

        else
        {
          v36 = 0;
        }

        v10 = v69;
      }

      else
      {
        v36 = 0;
      }

      v38 = [v29 effectiveBundleIdentifiers];
      if ([v38 count] == 1)
      {
        v39 = [v29 effectiveBundleIdentifiers];
        v40 = [v39 firstObject];
        if ([v40 type] == 3)
        {
          [v29 effectiveBundleIdentifiers];
          v41 = v61 = v36;
          v42 = [v41 firstObject];
          [v42 bundleIdentifier];
          v44 = v43 = v24;
          v45 = [v44 isEqualToString:v7];

          v24 = v43;
          v22 = v66;

          v36 = v61;
        }

        else
        {
          v45 = 0;
        }

        v10 = v69;
      }

      else
      {
        v45 = 0;
      }

      if (((v36 | v45) & 1) == 0)
      {
        v46 = v24;
        v47 = [(WFLinkActionProvider *)v65 appDescriptorForActionRequest:v67 fullyQualifiedIdentifier:0 forceLocalActionsOnly:0];
        if (v47 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v48 = v47;

          v49 = [v48 serializedRepresentation];
          v50 = *MEMORY[0x1E69E0908];
        }

        else
        {

          v50 = *MEMORY[0x1E69E0908];
          v76 = *MEMORY[0x1E69E0908];
          v77 = v7;
          v49 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v77 forKeys:&v76 count:1];
          v48 = 0;
        }

        v51 = [v49 objectForKeyedSubscript:v50];

        if (v51)
        {
          v74 = @"ActionRequiresAppInstallation";
          v75 = MEMORY[0x1E695E118];
          v52 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v75 forKeys:&v74 count:1];
          v53 = [v49 if_dictionaryByAddingEntriesFromDictionary:v52];

          [v63 setObject:v53 forKeyedSubscript:@"AppDefinition"];
          v49 = v53;
        }

        v24 = v46;
      }

      v54 = [(WFActionProvider *)v65 defaultActionDefinition];
      v55 = [v54 definitionByAddingEntriesInDictionary:v63];

      v56 = objc_opt_class();
      if ([v7 isEqualToString:@"com.apple.AccessibilityUIServer"])
      {
        v56 = objc_opt_class();
      }

      v57 = [v56 alloc];
      v58 = [v67 serializedParameters];
      v37 = [v57 initWithIdentifier:v24 definition:v55 entityByEntityIdentifier:v68 serializedParameters:v58 fullyQualifiedActionIdentifier:v22];
    }

    else
    {
      v37 = 0;
    }
  }

  else
  {
    v37 = 0;
    v22 = v66;
  }

  v59 = *MEMORY[0x1E69E9840];

  return v37;
}

- (id)settingUpdaterActionForActionRequest:(id)a3 fullyQualifiedActionIdentifier:(id)a4 localActionsOnly:(BOOL)a5
{
  v82 = a5;
  v108 = *MEMORY[0x1E69E9840];
  v85 = a3;
  v84 = a4;
  v7 = [v84 bundleIdentifier];
  v90 = objc_opt_new();
  v91 = self;
  v8 = [(WFLinkActionProvider *)self metadataProvider];
  v93 = v7;
  v9 = [v8 actionsForBundleIdentifier:v7];

  v102 = 0u;
  v103 = 0u;
  v100 = 0u;
  v101 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v100 objects:v107 count:16];
  v86 = v10;
  if (v11)
  {
    v12 = v11;
    v13 = *v101;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v101 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v100 + 1) + 8 * i);
        v16 = WFUpdatableEntityValueTypeFromEntityUpdaterAction(v15);
        v17 = [v16 identifier];
        if (v17)
        {
          v18 = [(WFLinkActionProvider *)v91 metadataProvider];
          v19 = [v18 entityWithIdentifier:v17 fromBundleIdentifier:v93];

          if (WFISEligibleForSettingsUpdaterAction(v19, v93) && [v15 visibleForUse:0])
          {
            v20 = objc_alloc(MEMORY[0x1E69AC860]);
            v21 = [v15 identifier];
            v22 = [v20 initWithActionIdentifier:v21 bundleIdentifier:v93];

            if (+[WFLinkActionProvider approvedForPublicDrawerToDisplayActionIdentifier:](WFLinkActionProvider, "approvedForPublicDrawerToDisplayActionIdentifier:", v22) || ([MEMORY[0x1E695E000] systemShortcutsUserDefaults], v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend(v23, "BOOLForKey:", @"WFDrawerShowInternalApps"), v23, v24))
            {
              [v90 setObject:v15 forKey:v17];
            }

            v10 = v86;
          }
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v100 objects:v107 count:16];
    }

    while (v12);
  }

  v25 = v90;
  if ([v90 count])
  {
    v89 = objc_opt_new();
    v26 = objc_opt_new();
    v96 = 0u;
    v97 = 0u;
    v98 = 0u;
    v99 = 0u;
    obj = [v90 allKeys];
    v27 = [obj countByEnumeratingWithState:&v96 objects:v106 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v97;
      do
      {
        for (j = 0; j != v28; ++j)
        {
          if (*v97 != v29)
          {
            objc_enumerationMutation(obj);
          }

          v31 = *(*(&v96 + 1) + 8 * j);
          v32 = [(WFLinkActionProvider *)v91 metadataProvider];
          v33 = [v32 entityWithIdentifier:v31 fromBundleIdentifier:v93];

          v34 = [v25 objectForKeyedSubscript:v31];
          [v89 setObject:v33 forKey:v31];
          v35 = [v34 parameters];
          v36 = [v35 if_firstObjectPassingTest:&__block_literal_global_312_76570];

          v25 = v90;
          [v26 setObject:v36 forKey:v31];
        }

        v28 = [obj countByEnumeratingWithState:&v96 objects:v106 count:16];
      }

      while (v28);
    }

    v37 = [v26 allKeys];
    v38 = [v37 sortedArrayUsingSelector:sel_compare_];

    v94[0] = MEMORY[0x1E69E9820];
    v94[1] = 3221225472;
    v94[2] = __109__WFLinkActionProvider_settingUpdaterActionForActionRequest_fullyQualifiedActionIdentifier_localActionsOnly___block_invoke_2;
    v94[3] = &unk_1E8380270;
    v80 = v26;
    v81 = v38;
    v95 = v80;
    v39 = [v38 if_compactMap:v94];
    v40 = [v25 allValues];
    v41 = [v40 firstObject];
    v42 = [v41 actionMetadataWithParameters:v39];

    obja = [(WFLinkActionProvider *)v91 actionMetadataByUpdatingWithEnumAndEntityMetadata:v42 bundleIdentifier:v93];

    v43 = [v84 actionIdentifier];
    v44 = WFShortcutsActionIdentifierFromLinkIdentifiers(v93, v43);

    v83 = objc_opt_class();
    if ([v93 isEqualToString:@"com.apple.AccessibilityUIServer"])
    {
      v83 = objc_opt_class();
    }

    v45 = objc_opt_new();
    v79 = v44;
    v46 = WFLinkActionBundleIdentifierOverrides(v44);
    if (v46 || (v46 = v93) != 0)
    {
      v104 = *MEMORY[0x1E69E0908];
      v105 = v46;
      v78 = v46;
      v47 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v105 forKeys:&v104 count:1];
      [v45 setObject:v47 forKeyedSubscript:@"LinkActionDisplayedAppDescriptor"];
    }

    else
    {
      v78 = 0;
    }

    v48 = [obja effectiveBundleIdentifiers];
    if ([v48 count] == 1)
    {
      v49 = [obja effectiveBundleIdentifiers];
      v50 = [v49 firstObject];
      if ([v50 type] == 2)
      {
        v51 = [obja effectiveBundleIdentifiers];
        v52 = [v51 firstObject];
        v53 = [v52 bundleIdentifier];
        v54 = [v53 isEqualToString:v93];
      }

      else
      {
        v54 = 0;
      }
    }

    else
    {
      v54 = 0;
    }

    v57 = [obja effectiveBundleIdentifiers];
    if ([v57 count] == 1)
    {
      v58 = [obja effectiveBundleIdentifiers];
      v59 = [v58 firstObject];
      if ([v59 type] == 3)
      {
        [obja effectiveBundleIdentifiers];
        v60 = v77 = v54;
        v61 = [v60 firstObject];
        v62 = [v61 bundleIdentifier];
        v63 = [v62 isEqualToString:v93];

        v54 = v77;
      }

      else
      {
        v63 = 0;
      }
    }

    else
    {
      v63 = 0;
    }

    if ((v54 | v63))
    {
      v64 = 0;
      v65 = v85;
    }

    else
    {
      v65 = v85;
      v66 = [(WFLinkActionProvider *)v91 appDescriptorForActionRequest:v85 fullyQualifiedIdentifier:0 forceLocalActionsOnly:v82];
      if (v66)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v67 = v66;
        }

        else
        {
          v67 = 0;
        }
      }

      else
      {
        v67 = 0;
      }

      v64 = v67;
    }

    v68 = [v83 alloc];
    v69 = [objc_alloc(MEMORY[0x1E695DF20]) initWithDictionary:v90];
    v70 = v45;
    v71 = [[WFActionDefinition alloc] initWithDictionary:v45];
    v72 = [(WFActionProvider *)v91 defaultActionDefinition];
    v73 = [(WFActionDefinition *)v71 definitionByMergingWithDefinition:v72];
    v74 = [v65 serializedParameters];
    v56 = v84;
    v92 = [v68 initWithIdentifier:v79 actionMetadata:obja entityMetadataForParameterIdentifier:v89 metadataForParameterIdentifier:v69 definition:v73 serializedParameters:v74 appIntentDescriptor:v64 fullyQualifiedActionIdentifier:v84];

    v25 = v90;
    v55 = v85;

    v10 = v86;
  }

  else
  {
    v92 = 0;
    v56 = v84;
    v55 = v85;
  }

  v75 = *MEMORY[0x1E69E9840];

  return v92;
}

id __109__WFLinkActionProvider_settingUpdaterActionForActionRequest_fullyQualifiedActionIdentifier_localActionsOnly___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 objectForKeyedSubscript:v3];
  v5 = objc_alloc(MEMORY[0x1E69AC680]);
  v6 = [v4 valueType];
  v7 = [v4 isOptional];
  v8 = [v4 title];
  v9 = [v4 parameterDescription];
  v10 = [v4 resolvableInputTypes];
  v11 = [v4 typeSpecificMetadata];
  v12 = [v5 initWithName:v3 valueType:v6 optional:v7 title:v8 description:v9 resolvableInputTypes:v10 typeSpecificMetadata:v11 dynamicOptionsSupport:objc_msgSend(v4 inputConnectionBehavior:{"dynamicOptionsSupport"), objc_msgSend(v4, "inputConnectionBehavior")}];

  return v12;
}

uint64_t __109__WFLinkActionProvider_settingUpdaterActionForActionRequest_fullyQualifiedActionIdentifier_localActionsOnly___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 name];
  v3 = [v2 isEqualToString:@"property"];

  return v3;
}

- (id)targetedEntityUpdaterActionForRequest:(id)a3 fullyQualifiedActionIdentifier:(id)a4 localActionsOnly:(BOOL)a5
{
  v5 = a5;
  v130 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = [v9 bundleIdentifier];
  v11 = [v8 actionIdentifier];
  v12 = [v11 componentsSeparatedByString:@"-"];
  v13 = [v12 mutableCopy];

  v14 = [v13 lastObject];
  LODWORD(v12) = [v14 isEqualToString:@"UpdatableEntity"];

  v95 = v10;
  if (!v12)
  {
    v68 = 0;
    goto LABEL_55;
  }

  [v13 removeLastObject];
  v15 = [v13 componentsJoinedByString:@"-"];
  v16 = [v15 componentsSeparatedByString:@"."];
  v17 = [v16 lastObject];

  v18 = [(WFLinkActionProvider *)self metadataProvider];
  v19 = [v18 entityWithIdentifier:v17 fromBundleIdentifier:v10];

  v94 = v19;
  if (v19)
  {
    v86 = v5;
    v96 = v17;
    v88 = v13;
    v89 = v8;
    v93 = v9;
    v104 = objc_opt_new();
    v91 = self;
    v20 = [(WFLinkActionProvider *)self metadataProvider];
    v21 = [v20 actionsForBundleIdentifier:v10];

    v123 = 0u;
    v124 = 0u;
    v121 = 0u;
    v122 = 0u;
    obj = v21;
    v22 = [obj countByEnumeratingWithState:&v121 objects:v129 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v122;
      v25 = *MEMORY[0x1E69AC438];
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v122 != v24)
          {
            objc_enumerationMutation(obj);
          }

          v27 = *(*(&v121 + 1) + 8 * i);
          v28 = [v27 systemProtocolMetadata];
          v29 = [v28 objectForKeyedSubscript:v25];

          if (v29)
          {
            v30 = v29;
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();
            if (isKindOfClass)
            {
              v32 = v30;
            }

            else
            {
              v32 = 0;
            }

            v33 = v32;

            if (isKindOfClass)
            {
              v34 = [v30 entityIdentifier];
              v35 = [v34 isEqualToString:v96];

              if (v35)
              {
                v36 = [v30 entityProperty];
                [v104 setObject:v27 forKey:v36];
              }
            }
          }
        }

        v23 = [obj countByEnumeratingWithState:&v121 objects:v129 count:16];
      }

      while (v23);
    }

    v107 = objc_opt_new();
    v37 = objc_opt_new();
    v117 = 0u;
    v118 = 0u;
    v119 = 0u;
    v120 = 0u;
    v97 = [v94 properties];
    v102 = [v97 countByEnumeratingWithState:&v117 objects:v128 count:16];
    if (v102)
    {
      v100 = *v118;
      do
      {
        for (j = 0; j != v102; ++j)
        {
          if (*v118 != v100)
          {
            objc_enumerationMutation(v97);
          }

          v39 = *(*(&v117 + 1) + 8 * j);
          v40 = [v39 identifier];
          v41 = [v104 objectForKeyedSubscript:v40];

          if (v41)
          {
            v105 = j;
            v115 = 0u;
            v116 = 0u;
            v113 = 0u;
            v114 = 0u;
            v108 = v41;
            v42 = [v41 parameters];
            v43 = [v42 countByEnumeratingWithState:&v113 objects:v127 count:16];
            if (v43)
            {
              v44 = v43;
              v45 = *v114;
              do
              {
                for (k = 0; k != v44; ++k)
                {
                  if (*v114 != v45)
                  {
                    objc_enumerationMutation(v42);
                  }

                  v47 = *(*(&v113 + 1) + 8 * k);
                  v48 = [v47 name];
                  v49 = +[_TtC11WorkflowKit22WFEntityUpdatingAction entityParameterName];
                  v50 = [v48 isEqualToString:v49];

                  if (v50)
                  {
                    [v47 name];
                  }

                  else
                  {
                    v51 = [v39 identifier];
                    [v107 setObject:v108 forKey:v51];

                    [v39 identifier];
                  }
                  v52 = ;
                  [v37 setObject:v47 forKey:v52];
                }

                v44 = [v42 countByEnumeratingWithState:&v113 objects:v127 count:16];
              }

              while (v44);
            }

            j = v105;
            v41 = v108;
          }
        }

        v102 = [v97 countByEnumeratingWithState:&v117 objects:v128 count:16];
      }

      while (v102);
    }

    v53 = [v37 allKeys];
    v54 = [v53 sortedArrayUsingSelector:sel_compare_];

    v110[0] = MEMORY[0x1E69E9820];
    v110[1] = 3221225472;
    v110[2] = __110__WFLinkActionProvider_targetedEntityUpdaterActionForRequest_fullyQualifiedActionIdentifier_localActionsOnly___block_invoke;
    v110[3] = &unk_1E8380240;
    v103 = v37;
    v111 = v103;
    v112 = v94;
    v55 = [v54 if_compactMap:v110];
    v56 = [v107 allValues];
    v57 = [v56 firstObject];
    v101 = v55;
    v58 = [v57 actionMetadataWithParameters:v55];

    v59 = [(WFLinkActionProvider *)v91 actionMetadataByUpdatingWithEnumAndEntityMetadata:v58 bundleIdentifier:v95];

    v60 = WFUpdatableEntityValueTypeFromEntityUpdaterAction(v59);
    v61 = [v59 wf_actionMetadataWithOutputType:v60];

    v62 = [v93 actionIdentifier];
    v63 = WFShortcutsActionIdentifierFromLinkIdentifiers(v95, v62);

    v64 = objc_opt_new();
    v84 = v63;
    v65 = WFLinkActionBundleIdentifierOverrides(v63);
    v106 = v54;
    v98 = v60;
    if (v65)
    {
      v8 = v89;
      v66 = v96;
      v67 = v86;
    }

    else
    {
      v65 = [v61 attributionBundleIdentifier];
      v8 = v89;
      v67 = v86;
      if (!v65)
      {
        v85 = 0;
        v66 = v96;
        goto LABEL_44;
      }

      v66 = v96;
    }

    v125 = *MEMORY[0x1E69E0908];
    v126 = v65;
    v85 = v65;
    v69 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v126 forKeys:&v125 count:1];
    [v64 setObject:v69 forKeyedSubscript:@"LinkActionDisplayedAppDescriptor"];

LABEL_44:
    v70 = [v61 systemProtocolMetadata];
    v71 = [v70 objectForKeyedSubscript:*MEMORY[0x1E69AC508]];

    v109 = v61;
    if (v71)
    {
      v72 = 0;
      v73 = v91;
    }

    else
    {
      v73 = v91;
      v74 = [(WFLinkActionProvider *)v91 appDescriptorForActionRequest:v8 fullyQualifiedIdentifier:0 forceLocalActionsOnly:v67];
      if (v74)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v75 = v74;
        }

        else
        {
          v75 = 0;
        }
      }

      else
      {
        v75 = 0;
      }

      v72 = v75;
    }

    v76 = [_TtC11WorkflowKit29WFTargetedEntityUpdaterAction alloc];
    v92 = [(WFLinkActionProvider *)v73 metadataProvider];
    v87 = [v92 entityWithIdentifier:v66 fromBundleIdentifier:v95];
    v77 = [objc_alloc(MEMORY[0x1E695DF20]) initWithDictionary:v107];
    v90 = v64;
    v78 = [[WFActionDefinition alloc] initWithDictionary:v64];
    v79 = [(WFActionProvider *)v73 defaultActionDefinition];
    v80 = [(WFActionDefinition *)v78 definitionByMergingWithDefinition:v79];
    v81 = [v8 serializedParameters];
    v9 = v93;
    v68 = [(WFTargetedEntityUpdaterAction *)v76 initWithIdentifier:v84 actionMetadata:v109 entityMetadata:v87 metadataForParameterIdentifier:v77 definition:v80 serializedParameters:v81 appIntentDescriptor:v72 fullyQualifiedActionIdentifier:v93];

    v17 = v96;
    v13 = v88;
    goto LABEL_54;
  }

  v68 = 0;
LABEL_54:

LABEL_55:
  v82 = *MEMORY[0x1E69E9840];

  return v68;
}

id __110__WFLinkActionProvider_targetedEntityUpdaterActionForRequest_fullyQualifiedActionIdentifier_localActionsOnly___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) objectForKeyedSubscript:v3];
  v5 = [v4 dynamicOptionsSupport];
  v6 = +[_TtC11WorkflowKit22WFEntityUpdatingAction entityParameterName];
  if ([v3 isEqualToString:v6])
  {
    v7 = [*(a1 + 40) systemProtocolMetadata];
    v8 = [v7 objectForKeyedSubscript:*MEMORY[0x1E69AC2D8]];

    if (v8)
    {
      v5 = 0;
    }
  }

  else
  {
  }

  v9 = objc_alloc(MEMORY[0x1E69AC680]);
  v10 = [v4 valueType];
  v11 = [v4 isOptional];
  v12 = [v4 title];
  v13 = [v4 parameterDescription];
  v14 = [v4 resolvableInputTypes];
  v15 = [v4 typeSpecificMetadata];
  v16 = [v9 initWithName:v3 valueType:v10 optional:v11 title:v12 description:v13 resolvableInputTypes:v14 typeSpecificMetadata:v15 dynamicOptionsSupport:v5 inputConnectionBehavior:objc_msgSend(v4 capabilities:{"inputConnectionBehavior"), objc_msgSend(v4, "capabilities")}];

  return v16;
}

- (id)linkContentItemFilterActionWithActionRequest:(id)a3 fullyQualifiedActionIdentifier:(id)a4 entityMetadata:(id)a5 queryMetadata:(id)a6
{
  v102 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v89 = v11;
  v14 = [v11 bundleIdentifier];
  if (v12)
  {
    v88 = v13;
    v15 = [v11 actionIdentifier];
    v16 = WFShortcutsActionIdentifierForClassOverrideSearch(v14, v15);

    v17 = [WFLinkAction classForLinkActionWithIdentifier:v16 metadata:0];
    if (!v17)
    {
      v17 = objc_opt_class();
    }

    v80 = v17;
    v18 = [v12 effectiveBundleIdentifiers];
    v85 = v16;
    v86 = v14;
    if ([v18 count] == 1)
    {
      v19 = [v12 effectiveBundleIdentifiers];
      v20 = [v19 firstObject];
      if ([v20 type] == 2)
      {
        v21 = [v12 effectiveBundleIdentifiers];
        v22 = [v21 firstObject];
        [v22 bundleIdentifier];
        v24 = v23 = self;
        v25 = [v24 isEqualToString:v86];

        self = v23;
        v14 = v86;
      }

      else
      {
        v25 = 0;
      }
    }

    else
    {
      v25 = 0;
    }

    v29 = [v12 effectiveBundleIdentifiers];
    v81 = self;
    if ([v29 count] == 1)
    {
      v30 = [v12 effectiveBundleIdentifiers];
      v31 = [v30 firstObject];
      if ([v31 type] == 3)
      {
        v32 = [v12 effectiveBundleIdentifiers];
        v33 = [v32 firstObject];
        [v33 bundleIdentifier];
        v34 = v25;
        v36 = v35 = v10;
        v37 = [v36 isEqualToString:v14];

        v10 = v35;
        v25 = v34;

        self = v81;
      }

      else
      {
        v37 = 0;
      }
    }

    else
    {
      v37 = 0;
    }

    v38 = v25 | v37;
    if (v38)
    {
      v82 = 0;
    }

    else
    {
      v39 = [(WFLinkActionProvider *)self appDescriptorForActionRequest:v10 fullyQualifiedIdentifier:0 forceLocalActionsOnly:0];
      if (v39)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v40 = v39;
        }

        else
        {
          v40 = 0;
        }
      }

      else
      {
        v40 = 0;
      }

      v82 = v40;
    }

    v87 = v10;
    v41 = objc_opt_new();
    v42 = [v12 requiredCapabilities];

    if (v42)
    {
      v43 = [v12 requiredCapabilities];
      v44 = WFResourceDefinitionsForRequiredCapabilities(v43);
      [v41 setObject:v44 forKeyedSubscript:@"RequiredResources"];
    }

    v96[0] = @"DisabledOnPlatforms";
    v45 = [v12 availabilityAnnotations];
    v46 = [(WFLinkActionProvider *)self disabledOnPlatformsWithAvailability:v45];
    v97[0] = v46;
    v96[1] = @"Discontinued";
    v47 = MEMORY[0x1E696AD98];
    v48 = [v12 availabilityAnnotations];
    v49 = self;
    v50 = v48;
    v51 = [v47 numberWithBool:{-[WFLinkActionProvider isDiscontinuedWithAvailability:](v49, "isDiscontinuedWithAvailability:", v48)}];
    v97[1] = v51;
    v52 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v97 forKeys:v96 count:2];
    [v41 addEntriesFromDictionary:v52];

    v53 = [v12 attributionBundleIdentifier];
    v54 = v53;
    if (v53)
    {
      v94 = *MEMORY[0x1E69E0908];
      v95 = v53;
      v55 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v95 forKeys:&v94 count:1];
      [v41 setObject:v55 forKeyedSubscript:@"LinkActionDisplayedAppDescriptor"];
    }

    v84 = v54;
    v56 = [v12 shortcutsActionMetadata];
    v83 = v56;
    if (v56)
    {
      v57 = [v56 dictionaryRepresentation];
      [v41 addEntriesFromDictionary:v57];
      v58 = v82;
    }

    else
    {
      v58 = v82;
      if (v38)
      {
        goto LABEL_34;
      }

      if (v82)
      {
        v57 = [v82 serializedRepresentation];
        v73 = *MEMORY[0x1E69E0908];
      }

      else
      {
        v73 = *MEMORY[0x1E69E0908];
        v92 = *MEMORY[0x1E69E0908];
        v93 = v86;
        v57 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v93 forKeys:&v92 count:1];
      }

      v77 = [v57 objectForKeyedSubscript:v73];

      if (v77)
      {
        v90 = @"ActionRequiresAppInstallation";
        v91 = MEMORY[0x1E695E118];
        v78 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v91 forKeys:&v90 count:1];
        v79 = [v57 if_dictionaryByAddingEntriesFromDictionary:v78];

        [v41 setObject:v79 forKeyedSubscript:@"AppDefinition"];
        v57 = v79;
      }
    }

LABEL_34:
    v59 = [v12 attributionBundleIdentifier];
    v60 = [v12 shortcutsActionMetadata];

    if (v60)
    {
      v61 = [v12 shortcutsActionMetadata];
      v62 = [v61 attributionBundleIdentifierWithDefaultValue:v59];

      v59 = v62;
    }

    v63 = [v89 bundleIdentifier];
    v64 = [v12 wf_contentItemClassWithQueryMetadata:v88 appBundleIdentifier:v63 displayedAppBundleIdentifier:v59];

    v65 = NSStringFromClass(v64);
    [v41 setObject:v65 forKeyedSubscript:@"WFContentItemClass"];

    v66 = [v89 bundleIdentifier];
    v67 = [v89 actionIdentifier];
    v68 = WFShortcutsActionIdentifierFromLinkIdentifiers(v66, v67);

    if ([v68 length])
    {
      v69 = [(WFActionProvider *)v81 defaultActionDefinition];
      v70 = [v69 definitionByAddingEntriesInDictionary:v41];

      v71 = [v80 alloc];
      v72 = [v87 serializedParameters];
      v28 = [v71 initWithIdentifier:v68 queryMetadata:v88 entityMetadata:v12 definition:v70 serializedParameters:v72 appIntentDescriptor:v58 fullyQualifiedActionIdentifier:v89];
    }

    else
    {
      v70 = getWFAppIntentsLogObject();
      if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
      {
        v74 = [v89 actionIdentifier];
        *buf = 136315394;
        v99 = "[WFLinkActionProvider linkContentItemFilterActionWithActionRequest:fullyQualifiedActionIdentifier:entityMetadata:queryMetadata:]";
        v100 = 2112;
        v101 = v74;
        _os_log_impl(&dword_1CA256000, v70, OS_LOG_TYPE_DEFAULT, "%s Couldn't create a filter action from Link ID %@", buf, 0x16u);
      }

      v28 = 0;
    }

    v26 = v85;

    v10 = v87;
    v13 = v88;
    v14 = v86;
    goto LABEL_45;
  }

  v26 = getWFGeneralLogObject();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    v27 = [v11 actionIdentifier];
    *buf = 136315394;
    v99 = "[WFLinkActionProvider linkContentItemFilterActionWithActionRequest:fullyQualifiedActionIdentifier:entityMetadata:queryMetadata:]";
    v100 = 2112;
    v101 = v27;
    _os_log_impl(&dword_1CA256000, v26, OS_LOG_TYPE_ERROR, "%s Could not find entity metadata for query: %@", buf, 0x16u);
  }

  v28 = 0;
LABEL_45:

  v75 = *MEMORY[0x1E69E9840];

  return v28;
}

- (id)linkActionWithActionRequest:(id)a3 fullyQualifiedActionIdentifier:(id)a4 forceLocalActionsOnly:(BOOL)a5
{
  v5 = a5;
  v93[2] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = [v9 bundleIdentifier];
  v11 = [(WFLinkActionProvider *)self metadataProvider];
  v85 = v9;
  v12 = [v9 actionIdentifier];
  v13 = [v11 actionWithIdentifier:v12 fromBundleIdentifier:v10];

  v14 = [(WFLinkActionProvider *)self actionMetadataByUpdatingWithEnumAndEntityMetadata:v13 bundleIdentifier:v10];

  if (!v14)
  {
    v22 = 0;
    goto LABEL_47;
  }

  v15 = [v14 effectiveBundleIdentifiers];
  v83 = self;
  v84 = v10;
  v81 = v5;
  if ([v15 count] == 1)
  {
    v16 = [v14 effectiveBundleIdentifiers];
    v17 = [v16 firstObject];
    if ([v17 type] == 2)
    {
      v18 = [v14 effectiveBundleIdentifiers];
      v19 = [v18 firstObject];
      v20 = [v19 bundleIdentifier];
      v21 = [v20 isEqualToString:v84];

      self = v83;
    }

    else
    {
      v21 = 0;
    }

    v10 = v84;
  }

  else
  {
    v21 = 0;
  }

  v23 = [v14 effectiveBundleIdentifiers];
  if ([v23 count] == 1)
  {
    v24 = [v14 effectiveBundleIdentifiers];
    v25 = [v24 firstObject];
    if ([v25 type] == 3)
    {
      v26 = [v14 effectiveBundleIdentifiers];
      v27 = [v26 firstObject];
      v28 = [v27 bundleIdentifier];
      v29 = [v28 isEqualToString:v84];

      self = v83;
    }

    else
    {
      v29 = 0;
    }

    v10 = v84;
  }

  else
  {
    v29 = 0;
  }

  v30 = v21 | v29;
  if ((v21 | v29))
  {
    v31 = 0;
  }

  else
  {
    v32 = [(WFLinkActionProvider *)self appDescriptorForActionRequest:v8 fullyQualifiedIdentifier:0 forceLocalActionsOnly:v81];
    if (v32)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v33 = v32;
      }

      else
      {
        v33 = 0;
      }
    }

    else
    {
      v33 = 0;
    }

    v31 = v33;
  }

  v34 = [v85 actionIdentifier];
  v35 = WFShortcutsActionIdentifierForClassOverrideSearch(v10, v34);

  v36 = [WFLinkAction classForLinkActionWithIdentifier:v35 metadata:v14];
  if (!v36)
  {
    v36 = objc_opt_class();
  }

  v79 = v36;
  v37 = objc_opt_new();
  v38 = [v14 requiredCapabilities];

  if (v38)
  {
    v39 = [v14 requiredCapabilities];
    v40 = WFResourceDefinitionsForRequiredCapabilities(v39);
    [v37 setObject:v40 forKeyedSubscript:@"RequiredResources"];
  }

  v41 = [v85 actionIdentifier];
  v42 = WFShortcutsActionIdentifierFromLinkIdentifiers(v10, v41);

  v82 = v42;
  if (v42)
  {
    v75 = v30;
    v77 = v8;
    v78 = v31;
    v43 = [v14 deprecationMetadata];
    v44 = [v43 replacedByIntentIdentifier];

    v80 = v44;
    if (v44)
    {
      v45 = [(WFLinkActionProvider *)self metadataProvider];
      v46 = [v45 actionWithIdentifier:v44 fromBundleIdentifier:v10];
      v47 = [v46 title];

      [v37 setObject:v47 forKeyedSubscript:@"DiscontinuedReplacementTitle"];
      self = v83;
    }

    v92[0] = @"DisabledOnPlatforms";
    v48 = [v14 availabilityAnnotations];
    v49 = [(WFLinkActionProvider *)self disabledOnPlatformsWithAvailability:v48];
    v92[1] = @"Discontinued";
    v93[0] = v49;
    v50 = MEMORY[0x1E696AD98];
    v51 = [v14 deprecationMetadata];
    if (v51)
    {
      v52 = 1;
    }

    else
    {
      v8 = [v14 availabilityAnnotations];
      v52 = [(WFLinkActionProvider *)self isDiscontinuedWithAvailability:?];
    }

    v54 = [v50 numberWithInt:v52];
    v93[1] = v54;
    v55 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v93 forKeys:v92 count:2];
    [v37 addEntriesFromDictionary:v55];

    if (!v51)
    {
    }

    v56 = [v14 systemProtocols];
    v57 = [MEMORY[0x1E69ACA50] audioRecordingProtocol];
    v58 = [v56 containsObject:v57];

    if (v58)
    {
      [v37 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"MightStartAudioRecording"];
    }

    v53 = v82;
    v59 = WFLinkActionBundleIdentifierOverrides(v82);
    if (v59)
    {
      v60 = v59;
      v61 = v83;
    }

    else
    {
      v60 = [v14 attributionBundleIdentifier];
      v61 = v83;
      if (!v60)
      {
        goto LABEL_42;
      }
    }

    v90 = *MEMORY[0x1E69E0908];
    v91 = v60;
    v62 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v91 forKeys:&v90 count:1];
    [v37 setObject:v62 forKeyedSubscript:@"LinkActionDisplayedAppDescriptor"];

LABEL_42:
    v63 = [v14 shortcutsActionMetadata];
    v76 = v63;
    if (v63)
    {
      v64 = [v63 dictionaryRepresentation];
      [v37 addEntriesFromDictionary:v64];
    }

    else
    {
      if (v75)
      {
        goto LABEL_45;
      }

      if (v78)
      {
        v64 = [v78 serializedRepresentation];
        v71 = *MEMORY[0x1E69E0908];
      }

      else
      {
        v71 = *MEMORY[0x1E69E0908];
        v88 = *MEMORY[0x1E69E0908];
        v89 = v84;
        v64 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v89 forKeys:&v88 count:1];
      }

      v72 = [v64 objectForKeyedSubscript:v71];

      if (v72)
      {
        v86 = @"ActionRequiresAppInstallation";
        v87 = MEMORY[0x1E695E118];
        v73 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v87 forKeys:&v86 count:1];
        v74 = [v64 if_dictionaryByAddingEntriesFromDictionary:v73];

        [v37 setObject:v74 forKeyedSubscript:@"AppDefinition"];
        v64 = v74;
        v61 = v83;
      }
    }

LABEL_45:
    v65 = [(WFActionProvider *)v61 defaultActionDefinition];
    v66 = [v65 definitionByAddingEntriesInDictionary:v37];

    v67 = [v79 alloc];
    v8 = v77;
    v68 = [v77 serializedParameters];
    v22 = [v67 initWithIdentifier:v82 metadata:v14 definition:v66 serializedParameters:v68 appIntentDescriptor:v78 fullyQualifiedActionIdentifier:v85];

    v31 = v78;
    v10 = v84;
    goto LABEL_46;
  }

  v22 = 0;
  v53 = 0;
LABEL_46:

LABEL_47:
  v69 = *MEMORY[0x1E69E9840];

  return v22;
}

- (id)availableActionIdentifiers
{
  v3 = [(WFLinkActionProvider *)self metadataProvider];
  v4 = [v3 enumerations];

  v5 = [(WFLinkActionProvider *)self metadataProvider];
  v6 = [v5 queries];

  v7 = [(WFLinkActionProvider *)self metadataProvider];
  v8 = [v7 actions];

  v9 = [(WFLinkActionProvider *)self metadataProvider];
  v10 = [v9 entities];

  v11 = objc_opt_new();
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __50__WFLinkActionProvider_availableActionIdentifiers__block_invoke;
  v25[3] = &unk_1E83801B8;
  v25[4] = self;
  v26 = v11;
  v12 = v11;
  [v8 enumerateKeysAndObjectsUsingBlock:v25];
  v13 = objc_opt_new();
  v19 = MEMORY[0x1E69E9820];
  v20 = 3221225472;
  v21 = __50__WFLinkActionProvider_availableActionIdentifiers__block_invoke_4;
  v22 = &unk_1E83801B8;
  v23 = self;
  v24 = v13;
  v14 = v13;
  [v10 enumerateKeysAndObjectsUsingBlock:&v19];
  v15 = objc_alloc(MEMORY[0x1E695DFD8]);
  v16 = [v12 arrayByAddingObjectsFromArray:{v14, v19, v20, v21, v22, v23}];
  v17 = [v15 initWithArray:v16];

  return v17;
}

void __50__WFLinkActionProvider_availableActionIdentifiers__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __50__WFLinkActionProvider_availableActionIdentifiers__block_invoke_2;
  v9[3] = &unk_1E8380190;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v10 = v5;
  v11 = v6;
  v12 = v7;
  v8 = v5;
  [a3 enumerateKeysAndObjectsUsingBlock:v9];
}

void __50__WFLinkActionProvider_availableActionIdentifiers__block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __50__WFLinkActionProvider_availableActionIdentifiers__block_invoke_5;
  v9[3] = &unk_1E83801E0;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v10 = v5;
  v11 = v6;
  v12 = v7;
  v8 = v5;
  [a3 enumerateKeysAndObjectsUsingBlock:v9];
}

void __50__WFLinkActionProvider_availableActionIdentifiers__block_invoke_5(void **a1, uint64_t a2, void *a3)
{
  v10 = a3;
  v4 = a1[4];
  v5 = [v10 identifier];
  v6 = WFShortcutsActionIdentifierFromLinkIdentifiers(v4, v5);

  v7 = [a1[5] metadataProvider];
  v8 = [v10 identifier];
  v9 = [v7 defaultQueryForEntityIdentifier:v8 fromBundleIdentifier:a1[4]];

  if ([v6 length] && v9 && WFEntityQueryTypeForQueryMetadata(v9, v10, a1[4]))
  {
    [a1[6] addObject:v6];
  }
}

void __50__WFLinkActionProvider_availableActionIdentifiers__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = a3;
  v7 = [v5 metadataProvider];
  v8 = WFEffectiveActionIdentifiersForActionMetadata(v6, v4, v7);

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __50__WFLinkActionProvider_availableActionIdentifiers__block_invoke_3;
  v9[3] = &unk_1E8380168;
  v10 = *(a1 + 32);
  v11 = *(a1 + 48);
  [v8 enumerateObjectsUsingBlock:v9];
}

void __50__WFLinkActionProvider_availableActionIdentifiers__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = WFShortcutsActionIdentifierFromLinkIdentifiers(*(a1 + 32), a2);
  if ([v3 length])
  {
    [*(a1 + 40) addObject:v3];
  }
}

- (id)createAllAvailableActions
{
  [(WFLinkActionProvider *)self registerAllAvailableTypes];
  v5.receiver = self;
  v5.super_class = WFLinkActionProvider;
  v3 = [(WFActionProvider *)&v5 createAllAvailableActions];

  return v3;
}

- (void)registerAllAvailableTypes
{
  v3 = [(WFLinkActionProvider *)self metadataProvider];
  v4 = [v3 entities];

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __49__WFLinkActionProvider_registerAllAvailableTypes__block_invoke;
  v5[3] = &unk_1E8380140;
  v5[4] = self;
  [v4 enumerateKeysAndObjectsUsingBlock:v5];
}

void __49__WFLinkActionProvider_registerAllAvailableTypes__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__WFLinkActionProvider_registerAllAvailableTypes__block_invoke_2;
  v7[3] = &unk_1E8380118;
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v5;
  [a3 enumerateKeysAndObjectsUsingBlock:v7];
}

void __49__WFLinkActionProvider_registerAllAvailableTypes__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v13 = a3;
  v4 = [v13 attributionBundleIdentifier];
  v5 = [v13 shortcutsActionMetadata];

  if (v5)
  {
    v6 = [v13 shortcutsActionMetadata];
    v7 = [v6 attributionBundleIdentifierWithDefaultValue:v4];

    v4 = v7;
  }

  v8 = [*(a1 + 32) metadataProvider];
  v9 = [v13 identifier];
  v10 = [v8 defaultQueryForEntityIdentifier:v9 fromBundleIdentifier:*(a1 + 40)];
  v11 = [v13 wf_contentItemClassWithQueryMetadata:v10 appBundleIdentifier:*(a1 + 40) displayedAppBundleIdentifier:v4];

  v12 = [MEMORY[0x1E6996D68] sharedRegistry];
  [v12 registerContentItemClass:v11];
}

- (id)actionMetadataByUpdatingWithEnumAndEntityMetadata:(id)a3 bundleIdentifier:(id)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_new();
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v26 = v6;
  obj = [v6 parameters];
  v9 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v29;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v29 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v28 + 1) + 8 * i);
        v14 = [(WFLinkActionProvider *)self metadataProvider];
        v15 = [v13 valueType];
        v16 = _WFTypeSpecificAnnotationsForType(v14, v15, v7);

        if (v16)
        {
          v17 = [v13 typeSpecificMetadata];

          if (v17)
          {
            v18 = [v13 typeSpecificMetadata];
            v19 = [v18 if_dictionaryByAddingEntriesFromDictionary:v16];

            v16 = v19;
          }

          v20 = [v16 copy];
          v21 = [v13 wf_parameterMetadataWithTypeSpecificMetadata:v20];

          [v8 addObject:v21];
        }

        else
        {
          [v8 addObject:v13];
        }
      }

      v10 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v10);
  }

  v22 = [v8 copy];
  v23 = [v26 actionMetadataWithParameters:v22];

  v24 = *MEMORY[0x1E69E9840];

  return v23;
}

- (id)createActionsForBundleIdentifier:(id)a3
{
  v57 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [(WFLinkActionProvider *)self metadataProvider];
  v7 = [v6 entitiesForBundleIdentifier:v4];

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = v7;
  v8 = [obj countByEnumeratingWithState:&v51 objects:v56 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v52;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v52 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v51 + 1) + 8 * i);
        v13 = [(WFLinkActionProvider *)self metadataProvider];
        v14 = [v12 identifier];
        v15 = [v13 defaultQueryForEntityIdentifier:v14 fromBundleIdentifier:v4];

        if (v15 && WFEntityQueryTypeForQueryMetadata(v15, v12, v4))
        {
          v16 = [v12 identifier];
          [v5 addObject:v16];
        }
      }

      v9 = [obj countByEnumeratingWithState:&v51 objects:v56 count:16];
    }

    while (v9);
  }

  v17 = [(WFLinkActionProvider *)self metadataProvider];
  v18 = [v17 actionsForBundleIdentifier:v4];

  v47[0] = MEMORY[0x1E69E9820];
  v47[1] = 3221225472;
  v47[2] = __57__WFLinkActionProvider_createActionsForBundleIdentifier___block_invoke;
  v47[3] = &unk_1E83800D0;
  v19 = v4;
  v48 = v19;
  v49 = self;
  v20 = v5;
  v50 = v20;
  v41 = v18;
  [v18 enumerateObjectsUsingBlock:v47];
  v21 = objc_opt_new();
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v40 = v20;
  v22 = [v20 copy];
  v23 = [v22 countByEnumeratingWithState:&v43 objects:v55 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v44;
    do
    {
      for (j = 0; j != v24; ++j)
      {
        if (*v44 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = WFShortcutsActionIdentifierFromLinkIdentifiers(v19, *(*(&v43 + 1) + 8 * j));
        if (v27)
        {
          v28 = [v21 objectForKeyedSubscript:v27];

          if (!v28)
          {
            v29 = [[WFActionRequest alloc] initWithActionIdentifier:v27 serializedParameters:0];
            v30 = [(WFActionRequest *)v29 actionIdentifier];
            [v21 setObject:v29 forKeyedSubscript:v30];
          }
        }
      }

      v24 = [v22 countByEnumeratingWithState:&v43 objects:v55 count:16];
    }

    while (v24);
  }

  v31 = [v21 allValues];
  [(WFLinkActionProvider *)self createActionsForRequests:v31 forceLocalActionsOnly:0];

  v32 = [v21 allValues];
  v33 = [v32 if_compactMap:&__block_literal_global_295];

  v34 = [MEMORY[0x1E695DFD8] setWithArray:v33];
  v35 = v34;
  if (v34)
  {
    v36 = v34;
  }

  else
  {
    v36 = objc_opt_new();
  }

  v37 = v36;

  v38 = *MEMORY[0x1E69E9840];

  return v37;
}

void __57__WFLinkActionProvider_createActionsForBundleIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  v6 = [v4 metadataProvider];
  v7 = WFEffectiveActionIdentifiersForActionMetadata(v5, v3, v6);

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __57__WFLinkActionProvider_createActionsForBundleIdentifier___block_invoke_2;
  v8[3] = &unk_1E83800A8;
  v9 = *(a1 + 48);
  [v7 enumerateObjectsUsingBlock:v8];
}

- (id)definitionForMissingActionWithSerializedParameters:(id)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = [a3 objectForKey:@"AppIntentDescriptor"];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [WFActionDefinition alloc];
    v9 = @"AppDefinition";
    v10[0] = v3;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    v6 = [(WFActionDefinition *)v4 initWithDictionary:v5];
  }

  else
  {

    v6 = 0;
  }

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (void)createActionsForRequests:(id)a3 allowsActionInDenyList:(BOOL)a4 forceLocalActionsOnly:(BOOL)a5
{
  v87 = *MEMORY[0x1E69E9840];
  v53 = a3;
  v52 = a5;
  v7 = [WFLinkActionProvider resolvedActionIdentifiersForActionRequests:"resolvedActionIdentifiersForActionRequests:forceLocalActionsOnly:" forceLocalActionsOnly:?];
  v8 = MEMORY[0x1E695DFD8];
  v9 = [v7 if_compactMap:&__block_literal_global_267];
  v10 = [v8 setWithArray:v9];

  v61 = self;
  v11 = [(WFLinkActionProvider *)self metadataProvider];
  v51 = v7;
  v50 = [v11 actionsWithFullyQualifiedIdentifiers:v7];

  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  obj = v10;
  v56 = [obj countByEnumeratingWithState:&v74 objects:v86 count:16];
  if (v56)
  {
    v55 = *v75;
    v12 = 0x1E6996000uLL;
    do
    {
      v13 = 0;
      do
      {
        if (*v75 != v55)
        {
          objc_enumerationMutation(obj);
        }

        v58 = v13;
        v14 = *(*(&v74 + 1) + 8 * v13);
        v15 = [(WFLinkActionProvider *)v61 metadataProvider];
        v16 = [v15 enumerationsForBundleIdentifier:v14];

        v72 = 0u;
        v73 = 0u;
        v71 = 0u;
        v70 = 0u;
        v17 = v16;
        v18 = [v17 countByEnumeratingWithState:&v70 objects:v85 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = *v71;
          do
          {
            for (i = 0; i != v19; ++i)
            {
              if (*v71 != v20)
              {
                objc_enumerationMutation(v17);
              }

              v22 = [*(*(&v70 + 1) + 8 * i) wf_contentItemClassWithAppBundleIdentifier:v14];
              v23 = [*(v12 + 3432) sharedRegistry];
              [v23 registerContentItemClass:v22];
            }

            v19 = [v17 countByEnumeratingWithState:&v70 objects:v85 count:16];
          }

          while (v19);
        }

        v57 = v17;

        v24 = [(WFLinkActionProvider *)v61 metadataProvider];
        v25 = [v24 entitiesForBundleIdentifier:v14];

        v68 = 0u;
        v69 = 0u;
        v66 = 0u;
        v67 = 0u;
        v59 = v25;
        v26 = [v59 countByEnumeratingWithState:&v66 objects:v84 count:16];
        if (v26)
        {
          v27 = v26;
          v60 = *v67;
          do
          {
            for (j = 0; j != v27; ++j)
            {
              if (*v67 != v60)
              {
                objc_enumerationMutation(v59);
              }

              v29 = v12;
              v30 = *(*(&v66 + 1) + 8 * j);
              v31 = [v30 attributionBundleIdentifier];
              v32 = [v30 fullyQualifiedTypeName];
              if ([v32 length])
              {
                v33 = [v30 fullyQualifiedTypeName];
                v34 = [&unk_1F4A9A040 objectForKey:v33];

                if (v34)
                {
                  v35 = getWFAppIntentsLogObject();
                  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
                  {
                    v36 = [v30 fullyQualifiedTypeName];
                    v37 = [v30 fullyQualifiedTypeName];
                    v38 = [&unk_1F4A9A040 objectForKey:v37];
                    *buf = 136315650;
                    v79 = "[WFLinkActionProvider createActionsForRequests:allowsActionInDenyList:forceLocalActionsOnly:]";
                    v80 = 2112;
                    v81 = v36;
                    v82 = 2112;
                    v83 = v38;
                    _os_log_impl(&dword_1CA256000, v35, OS_LOG_TYPE_DEBUG, "%s Overriding entity attribution bundle identifier for '%@' with '%@'", buf, 0x20u);
                  }

                  v39 = [v30 fullyQualifiedTypeName];
                  v40 = [&unk_1F4A9A040 objectForKey:v39];
                  goto LABEL_26;
                }
              }

              else
              {
              }

              v41 = [v30 shortcutsActionMetadata];

              if (!v41)
              {
                goto LABEL_27;
              }

              v39 = [v30 shortcutsActionMetadata];
              v40 = [v39 attributionBundleIdentifierWithDefaultValue:v31];
LABEL_26:
              v42 = v40;

              v31 = v42;
LABEL_27:
              v43 = [(WFLinkActionProvider *)v61 metadataProvider];
              v44 = [v30 identifier];
              v45 = [v43 defaultQueryForEntityIdentifier:v44 fromBundleIdentifier:v14];
              v46 = [v30 wf_contentItemClassWithQueryMetadata:v45 appBundleIdentifier:v14 displayedAppBundleIdentifier:v31];

              v12 = v29;
              v47 = [*(v29 + 3432) sharedRegistry];
              [v47 registerContentItemClass:v46];
            }

            v27 = [v59 countByEnumeratingWithState:&v66 objects:v84 count:16];
          }

          while (v27);
        }

        v13 = v58 + 1;
      }

      while (v58 + 1 != v56);
      v56 = [obj countByEnumeratingWithState:&v74 objects:v86 count:16];
    }

    while (v56);
  }

  v62[0] = MEMORY[0x1E69E9820];
  v62[1] = 3221225472;
  v62[2] = __94__WFLinkActionProvider_createActionsForRequests_allowsActionInDenyList_forceLocalActionsOnly___block_invoke_282;
  v62[3] = &unk_1E8380078;
  v63 = v51;
  v64 = v61;
  v65 = v52;
  v48 = v51;
  [v53 enumerateObjectsUsingBlock:v62];

  v49 = *MEMORY[0x1E69E9840];
}

void __94__WFLinkActionProvider_createActionsForRequests_allowsActionInDenyList_forceLocalActionsOnly___block_invoke_282(uint64_t a1, void *a2, uint64_t a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a2;
  context = objc_autoreleasePoolPush();
  v6 = [*(a1 + 32) objectAtIndex:a3];
  v7 = [v6 bundleIdentifier];
  v8 = [v6 actionIdentifier];
  v9 = [*(a1 + 40) metadataProvider];
  v10 = [v6 actionIdentifier];
  v11 = [v9 actionWithIdentifier:v10 fromBundleIdentifier:v7];

  v12 = *(a1 + 40);
  if (!v11)
  {
    v14 = [v12 metadataProvider];
    v15 = [v14 defaultQueryForEntityIdentifier:v8 fromBundleIdentifier:v7];

    v16 = [*(a1 + 40) metadataProvider];
    v26 = [v16 entityWithIdentifier:v8 fromBundleIdentifier:v7];

    if (v15 && WFEntityQueryTypeForQueryMetadata(v15, v26, v7))
    {
      v17 = [*(a1 + 40) linkContentItemFilterActionWithActionRequest:v5 fullyQualifiedActionIdentifier:v6 entityMetadata:v26 queryMetadata:v15];
      v18 = getWFActionsLogObject();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v29 = "[WFLinkActionProvider createActionsForRequests:allowsActionInDenyList:forceLocalActionsOnly:]_block_invoke";
        v30 = 2112;
        v31 = v17;
        _os_log_impl(&dword_1CA256000, v18, OS_LOG_TYPE_DEFAULT, "%s Created WFLinkContentItemFilterAction: %@", buf, 0x16u);
      }

      if (v17)
      {
        [v5 setResult:v17];
      }
    }

    if ([v8 isEqualToString:@"WFAppSettingEntityUpdaterAction"])
    {
      v19 = [*(a1 + 40) settingUpdaterActionForActionRequest:v5 fullyQualifiedActionIdentifier:v6 localActionsOnly:*(a1 + 48)];
    }

    else if ([v8 isEqualToString:@"WFGetAppSettingAction"])
    {
      v19 = [*(a1 + 40) getAppSettingActionForRequest:v5 fullyQualifiedActionIdentifier:v6 localActionsOnly:*(a1 + 48)];
    }

    else
    {
      v25 = [v5 actionIdentifier];
      v20 = [v25 componentsSeparatedByString:@"-"];
      v21 = [v20 lastObject];
      v22 = [v21 isEqualToString:@"UpdatableEntity"];

      if (!v22)
      {
LABEL_20:

        goto LABEL_21;
      }

      v19 = [*(a1 + 40) targetedEntityUpdaterActionForRequest:v5 fullyQualifiedActionIdentifier:v6 localActionsOnly:*(a1 + 48)];
    }

    v23 = v19;
    if (v19)
    {
      [v5 setResult:v19];
    }

    goto LABEL_20;
  }

  v13 = [v12 linkActionWithActionRequest:v5 fullyQualifiedActionIdentifier:v6 forceLocalActionsOnly:*(a1 + 48)];
  if (v13)
  {
    [v5 setResult:v13];
  }

LABEL_21:

  objc_autoreleasePoolPop(context);
  v24 = *MEMORY[0x1E69E9840];
}

- (id)appDescriptorForActionRequest:(id)a3 fullyQualifiedIdentifier:(id *)a4 forceLocalActionsOnly:(BOOL)a5
{
  if (a5)
  {
    v6 = a3;
    v7 = [v6 actionIdentifier];

    v8 = WFLinkActionIdentifierFromShortcutsActionIdentifier(v7);

    if (a4)
    {
      v9 = v8;
      *a4 = v8;
    }

    v10 = [objc_alloc(MEMORY[0x1E696E740]) initWithFullyQualifiedActionIdentifier:v8];
  }

  else
  {
    v12 = a3;
    os_unfair_lock_lock(&self->_actionRequestsLock);
    v13 = [v12 actionIdentifier];
    v8 = WFLinkActionIdentifierFromShortcutsActionIdentifier(v13);

    v14 = [v12 serializedParameters];

    v15 = [v14 objectForKey:@"AppIntentDescriptor"];

    if (v15 && [(WFLinkActionProvider *)self serializedAppIntentDescriptorIsValid:v15])
    {
      v16 = [objc_alloc(MEMORY[0x1E696E740]) initWithSerializedRepresentation:v15];
    }

    else
    {
      v16 = [objc_alloc(MEMORY[0x1E696E740]) initWithFullyQualifiedActionIdentifier:v8];
    }

    v17 = v16;
    v18 = [MEMORY[0x1E696E748] sharedResolver];
    v19 = [(WFLinkActionProvider *)self metadataProvider];
    v20 = [v19 allActionsIfAvailable];
    v21 = [(WFLinkActionProvider *)self metadataProvider];
    v22 = [v21 allEntitiesIfAvailable];
    v23 = [v18 resolvedAppIntentMatchingDescriptor:v17 availableActions:v20 availableEntities:v22];

    if (v23 && ([v23 intentIdentifier], (v24 = objc_claimAutoreleasedReturnValue()) != 0) && (v25 = v24, objc_msgSend(v23, "bundleIdentifier"), v26 = objc_claimAutoreleasedReturnValue(), v26, v25, v26))
    {
      v27 = objc_alloc(MEMORY[0x1E69AC860]);
      v28 = [v23 intentIdentifier];
      v29 = [v23 bundleIdentifier];
      v30 = [v27 initWithActionIdentifier:v28 bundleIdentifier:v29];
    }

    else
    {
      v30 = v8;
    }

    if (a4)
    {
      v31 = v30;
      *a4 = v30;
    }

    os_unfair_lock_unlock(&self->_actionRequestsLock);
    if (v23)
    {
      v32 = v23;
    }

    else
    {
      v32 = v17;
    }

    v10 = v32;
  }

  return v10;
}

- (id)resolvedActionIdentifiersForActionRequests:(id)a3 forceLocalActionsOnly:(BOOL)a4
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __89__WFLinkActionProvider_resolvedActionIdentifiersForActionRequests_forceLocalActionsOnly___block_invoke;
  v6[3] = &unk_1E8380028;
  v6[4] = self;
  v7 = a4;
  v4 = [a3 if_compactMap:v6];

  return v4;
}

id __89__WFLinkActionProvider_resolvedActionIdentifiersForActionRequests_forceLocalActionsOnly___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v9 = 0;
  v6 = [v5 appDescriptorForActionRequest:v3 fullyQualifiedIdentifier:&v9 forceLocalActionsOnly:*(a1 + 40)];
  v7 = v9;
  objc_autoreleasePoolPop(v4);

  return v7;
}

- (BOOL)serializedAppIntentDescriptorIsValid:(id)a3
{
  v3 = *MEMORY[0x1E69E0908];
  v4 = a3;
  v5 = [v4 objectForKey:v3];
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v8 = [v4 objectForKey:*MEMORY[0x1E69E08F8]];

  if (v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  LOBYTE(v8) = 0;
  if (v7 && v10)
  {
    v11 = [&unk_1F4A9A068 objectForKeyedSubscript:v7];
    LODWORD(v8) = [v11 containsObject:v10] ^ 1;
  }

  return v8;
}

- (WFLinkActionProvider)initWithMetadataProvider:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v26.receiver = self;
  v26.super_class = WFLinkActionProvider;
  v3 = [(WFLinkActionProvider *)&v26 init];
  if (v3)
  {
    v4 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v5 = dispatch_get_global_queue(21, 0);
    v6 = dispatch_queue_create_with_target_V2("com.apple.shortcuts.WFLinkActionProvider", v4, v5);
    queue = v3->_queue;
    v3->_queue = v6;

    v8 = objc_opt_new();
    systemAppMapper = v3->_systemAppMapper;
    v3->_systemAppMapper = v8;

    v3->_actionRequestsLock._os_unfair_lock_opaque = 0;
    v10 = [MEMORY[0x1E69E0970] sharedProvider];
    metadataProvider = v3->_metadataProvider;
    v3->_metadataProvider = v10;

    v12 = NSClassFromString(&cfstr_Wfactionkitsta.isa);
    v13 = MEMORY[0x1E69E0FB0];
    if (v12)
    {
      v14 = [MEMORY[0x1E696AAE8] bundleForClass:v12];
      v15 = *v13;
      v25 = 0;
      [WFLinkMetadataRegistrationHelper registerWithBundle:v14 forBundleIdentifier:v15 error:&v25];
      if (v25)
      {
        v16 = getWFActionsLogObject();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          v28 = "[WFLinkActionProvider initWithMetadataProvider:]";
          _os_log_impl(&dword_1CA256000, v16, OS_LOG_TYPE_ERROR, "%s Failed to register ActionKit metadata for built-in actions", buf, 0xCu);
        }
      }
    }

    v17 = NSClassFromString(&cfstr_Vcvoiceshortcu_10.isa);
    if (v17)
    {
      v18 = [MEMORY[0x1E696AAE8] bundleForClass:v17];
      v19 = *v13;
      v24 = 0;
      [WFLinkMetadataRegistrationHelper registerWithBundle:v18 forBundleIdentifier:v19 error:&v24];
      if (v24)
      {
        v20 = getWFActionsLogObject();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          v28 = "[WFLinkActionProvider initWithMetadataProvider:]";
          _os_log_impl(&dword_1CA256000, v20, OS_LOG_TYPE_ERROR, "%s Failed to register VoiceShortcutClient metadata for built-in actions", buf, 0xCu);
        }
      }
    }

    v21 = v3;
  }

  v22 = *MEMORY[0x1E69E9840];
  return v3;
}

@end