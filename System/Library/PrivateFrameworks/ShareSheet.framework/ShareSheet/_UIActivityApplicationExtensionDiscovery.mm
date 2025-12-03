@interface _UIActivityApplicationExtensionDiscovery
+ (id)extensionMatchingDictionariesForExtensionItems:(id)items;
+ (void)registerContinuousExtensionsDiscoveryOnLaunch;
- (_UIActivityApplicationExtensionDiscovery)init;
- (_UIActivityApplicationExtensionDiscovery)initWithExtensionPointIdentifiers:(id)identifiers;
- (id)_extensionsForMatchingContext:(id)context error:(id *)error;
- (id)activitiesForMatchingContext:(id)context error:(id *)error;
- (id)reportExtensionsCacheResult;
- (void)dealloc;
- (void)primeWithDiscoveryContext:(id)context;
@end

@implementation _UIActivityApplicationExtensionDiscovery

+ (id)extensionMatchingDictionariesForExtensionItems:(id)items
{
  v18 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  array = [MEMORY[0x1E695DF70] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = itemsCopy;
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

        _matchingDictionaryRepresentation = [*(*(&v13 + 1) + 8 * i) _matchingDictionaryRepresentation];
        sh_removingUnsupportedTypes = [_matchingDictionaryRepresentation sh_removingUnsupportedTypes];
        [array addObject:sh_removingUnsupportedTypes];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  return array;
}

- (_UIActivityApplicationExtensionDiscovery)initWithExtensionPointIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v9.receiver = self;
  v9.super_class = _UIActivityApplicationExtensionDiscovery;
  v5 = [(_UIActivityApplicationExtensionDiscovery *)&v9 init];
  if (v5)
  {
    if (identifiersCopy)
    {
      v6 = [MEMORY[0x1E695DFD8] setWithArray:identifiersCopy];
      allObjects = [v6 allObjects];

      identifiersCopy = allObjects;
    }

    [(_UIActivityApplicationExtensionDiscovery *)v5 setExtensionPointIdentifiers:identifiersCopy];
  }

  return v5;
}

- (_UIActivityApplicationExtensionDiscovery)init
{
  v6[3] = *MEMORY[0x1E69E9840];
  v6[0] = *MEMORY[0x1E696A300];
  v6[1] = @"com.apple.services";
  v6[2] = @"com.apple.share-services";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:3];
  v4 = [(_UIActivityApplicationExtensionDiscovery *)self initWithExtensionPointIdentifiers:v3];

  return v4;
}

- (void)dealloc
{
  [(_UIActivityApplicationExtensionDiscovery *)self setExtensionPointIdentifiers:0];
  v3.receiver = self;
  v3.super_class = _UIActivityApplicationExtensionDiscovery;
  [(_UIActivityApplicationExtensionDiscovery *)&v3 dealloc];
}

+ (void)registerContinuousExtensionsDiscoveryOnLaunch
{
  if (_os_feature_enabled_impl())
  {
    mEMORY[0x1E69CDE20] = [MEMORY[0x1E69CDE20] shared];
  }

  else
  {
    v3 = +[_UIActivityApplicationExtensionsCache sharedExtensionsCache];
  }
}

- (void)primeWithDiscoveryContext:(id)context
{
  v4 = MEMORY[0x1E695DF90];
  activityItemValueExtensionMatchingDictionaries = [context activityItemValueExtensionMatchingDictionaries];
  v6 = _UIApplicationExtensionDiscoveryGetAttributesForExtensionMatchingDictionaries(activityItemValueExtensionMatchingDictionaries, 0);
  v9 = [v4 dictionaryWithDictionary:v6];

  extensionPointIdentifiers = [(_UIActivityApplicationExtensionDiscovery *)self extensionPointIdentifiers];
  [v9 setObject:extensionPointIdentifiers forKeyedSubscript:*MEMORY[0x1E696A2F8]];

  if (_os_feature_enabled_impl())
  {
    [MEMORY[0x1E69CDE20] shared];
  }

  else
  {
    +[_UIActivityApplicationExtensionsCache sharedExtensionsCache];
  }
  v8 = ;
  [v8 primeExtensionsResultWithMatchingAttributes:v9];
}

- (id)_extensionsForMatchingContext:(id)context error:(id *)error
{
  contextCopy = context;
  activityItemValueExtensionMatchingDictionaries = [contextCopy activityItemValueExtensionMatchingDictionaries];
  v8 = [activityItemValueExtensionMatchingDictionaries count];

  v9 = MEMORY[0x1E695E0F0];
  if (v8)
  {
    errorCopy = error;
    v10 = MEMORY[0x1E695DF90];
    activityItemValueExtensionMatchingDictionaries2 = [contextCopy activityItemValueExtensionMatchingDictionaries];
    v12 = _UIApplicationExtensionDiscoveryGetAttributesForExtensionMatchingDictionaries(activityItemValueExtensionMatchingDictionaries2, [contextCopy shouldMatchOnlyUserElectedExtensions]);
    v13 = [v10 dictionaryWithDictionary:v12];

    extensionPointIdentifiers = [(_UIActivityApplicationExtensionDiscovery *)self extensionPointIdentifiers];
    [v13 setObject:extensionPointIdentifiers forKeyedSubscript:*MEMORY[0x1E696A2F8]];

    if (_os_feature_enabled_impl())
    {
      mEMORY[0x1E69CDE20] = [MEMORY[0x1E69CDE20] shared];
      testingReferenceSnapshot = [contextCopy testingReferenceSnapshot];
      extensions = [mEMORY[0x1E69CDE20] extensionsResultWithMatchingAttributes:v13 testingReferenceSnapshot:testingReferenceSnapshot];

      error = 0;
    }

    else
    {
      v19 = +[_UIActivityApplicationExtensionsCache sharedExtensionsCache];
      mEMORY[0x1E69CDE20] = [v19 extensionsResultWithMatchingAttributes:v13];

      extensions = [mEMORY[0x1E69CDE20] extensions];
      error = [mEMORY[0x1E69CDE20] error];
    }

    v20 = contextCopy;
    if (extensions)
    {
      v21 = extensions;
    }

    else
    {
      v21 = v9;
    }

    v22 = v20;
    v23 = MEMORY[0x1E695DF70];
    v24 = v21;
    v43 = extensions;
    v25 = [v23 arrayWithArray:v24];
    v26 = [v25 valueForKeyPath:@"identifier"];
    sharedConnection = [(objc_class *)getMCProfileConnectionClass_2() sharedConnection];
    if ([sharedConnection isOpenInRestrictionInEffect])
    {
      isContentManaged = [v22 isContentManaged];
      sourceApplicationIdentifier = [v22 sourceApplicationIdentifier];
      v30 = [sharedConnection allowedOpenInAppBundleIDsAfterApplyingFilterToAppBundleIDs:v26 originatingAppBundleID:sourceApplicationIdentifier originatingAccountIsManaged:isContentManaged];

      if (([v22 shouldExcludeiCloudAddToDriveActivity] & 1) == 0)
      {
        v31 = [MEMORY[0x1E695DF70] arrayWithArray:v30];
        [v31 addObject:@"com.apple.DocumentManagerUICore.SaveToFiles"];

        v30 = v31;
      }

      v26 = v30;
    }

    if (v26)
    {
      if ([v22 shouldExcludeiCloudAddToDriveActivity])
      {
        v32 = [MEMORY[0x1E695DF70] arrayWithArray:v26];
        [v32 removeObject:@"com.apple.DocumentManagerUICore.SaveToFiles"];

        v26 = v32;
      }

      if ([v22 shouldExcludeiCloudSharingActivity])
      {
        v33 = [MEMORY[0x1E695DF70] arrayWithArray:v26];
        [v33 removeObject:@"com.apple.UIKit.activity.CloudSharing"];

        v26 = v33;
      }

      v34 = [MEMORY[0x1E695DF70] arrayWithArray:v26];
      [v34 removeObject:@"com.apple.shortcuts.Run-Workflow"];
    }

    else
    {
      v34 = MEMORY[0x1E695E0F0];
    }

    v35 = v34;
    v36 = [v35 indexOfObject:@"com.ios.uikit.TestingHarness.TestingActionExtension"];
    v37 = v35;
    if (v36 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v38 = v36;
      v37 = [MEMORY[0x1E695DF70] arrayWithArray:v35];
      [v37 removeObjectAtIndex:v38];
    }

    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = ___UIApplicationExtensionDiscoveryGetAllowedExtensions_block_invoke;
    v45[3] = &unk_1E71FA8C0;
    v46 = v37;
    v39 = v37;
    v40 = [v24 indexesOfObjectsWithOptions:0 passingTest:v45];

    [v25 removeObjectsAtIndexes:v40];
    v9 = [MEMORY[0x1E695DF70] arrayWithArray:v25];
    [v9 sortUsingComparator:&__block_literal_global_27];

    if (errorCopy)
    {
      v41 = error;
      *errorCopy = error;
    }
  }

  return v9;
}

- (id)activitiesForMatchingContext:(id)context error:(id *)error
{
  contextCopy = context;
  activityItemValueExtensionMatchingDictionaries = [contextCopy activityItemValueExtensionMatchingDictionaries];
  v8 = [activityItemValueExtensionMatchingDictionaries count];

  if (v8)
  {
    v9 = [(_UIActivityApplicationExtensionDiscovery *)self _extensionsForMatchingContext:contextCopy error:error];
    fetchShortcutsBlock = [(_UIActivityApplicationExtensionDiscovery *)self fetchShortcutsBlock];
    if (fetchShortcutsBlock)
    {
      activityItemValueExtensionMatchingDictionaries2 = [contextCopy activityItemValueExtensionMatchingDictionaries];
      sourceApplicationIdentifier = [contextCopy sourceApplicationIdentifier];
      v13 = (fetchShortcutsBlock)[2](fetchShortcutsBlock, activityItemValueExtensionMatchingDictionaries2, sourceApplicationIdentifier);
    }

    else
    {
      v13 = 0;
    }

    v15 = MEMORY[0x1E695DF70];
    v16 = v9;
    v17 = v13;
    v18 = [v15 arrayWithCapacity:{objc_msgSend(v17, "count") + objc_msgSend(v16, "count")}];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = ___UIActivitiesFromApplicationExtensionsAndWorkflows_block_invoke;
    v25[3] = &unk_1E71FA8E8;
    v19 = v18;
    v26 = v19;
    [v16 enumerateObjectsUsingBlock:v25];

    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = ___UIActivitiesFromApplicationExtensionsAndWorkflows_block_invoke_2;
    v23[3] = &unk_1E71FA910;
    v20 = v19;
    v24 = v20;
    [v17 enumerateObjectsUsingBlock:v23];

    v21 = v24;
    v14 = v20;
  }

  else
  {
    v14 = MEMORY[0x1E695E0F0];
  }

  return v14;
}

- (id)reportExtensionsCacheResult
{
  if (_os_feature_enabled_impl())
  {
    [MEMORY[0x1E69CDE20] shared];
  }

  else
  {
    +[_UIActivityApplicationExtensionsCache sharedExtensionsCache];
  }
  v2 = ;
  reportExtensionsCacheResult = [v2 reportExtensionsCacheResult];

  return reportExtensionsCacheResult;
}

@end