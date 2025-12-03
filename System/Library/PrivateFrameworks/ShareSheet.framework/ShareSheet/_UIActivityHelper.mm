@interface _UIActivityHelper
+ (id)activityTypeForBundleIdentifier:(id)identifier;
+ (id)builtinActivityClasses;
+ (id)transportImageForBundleIdentifier:(id)identifier;
- (_UIActivityHelper)initWithDelegate:(id)delegate sessionID:(id)d fetchShortcutsBlock:(id)block;
- (_UIActivityHelperDelegate)delegate;
- (id)_activitiesByApplyingBeforeTypePinningToActivities:(id)activities activitiesToBeforeTypePin:(id)pin;
- (id)_activitiesByApplyingDefaultOrdering:(id)ordering;
- (id)_activitiesByApplyingFavoriteOrderingToActivities:(id)activities favoriteActivityTypes:(id)types;
- (id)_activitiesByDuetOrderingActivities:(id)activities;
- (id)_activitiesByTypeOrderingActivities:(id)activities activityTypeOrdering:(id)ordering;
- (id)_defaultOrderingDescriptorForActivity:(id)activity;
- (id)_defaultSortItemForBuiltinActivity:(id)activity;
- (id)_defaultSortOrderForApplicationDefinedActivity:(id)activity;
- (id)_defaultSortOrderForBuiltInElevatedActivity:(id)activity;
- (id)_defaultSortOrderForExtensionBasedActivity:(id)activity;
- (id)_defaultSortOrderForOpenInAppActivity:(id)activity;
- (id)_defaultSortOrderForOtherActivity:(id)activity;
- (id)_defaultSortOrderForShortcutActivity:(id)activity;
- (id)activitiesByOrderingActivities:(id)activities applyDefaultOrdering:(BOOL)ordering applyBeforeTypePinning:(BOOL)pinning activityTypeOrdering:(id)typeOrdering bypassDuet:(BOOL)duet;
- (id)orderedAvailableActivitiesForMatchingContext:(id)context;
- (id)reportExtensionsCacheResult;
- (void)_enumerateAvailableActivitiesForMatchingContext:(id)context intoMatchingResults:(id)results matchingResultsUpdateBlock:(id)block enumerateActivityBlock:(id)activityBlock;
- (void)preheatAvailableActivitiesForMatchingContext:(id)context;
- (void)primeWithDiscoveryContext:(id)context;
@end

@implementation _UIActivityHelper

- (_UIActivityHelperDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

+ (id)builtinActivityClasses
{
  v4[13] = *MEMORY[0x1E69E9840];
  v4[0] = objc_opt_class();
  v4[1] = objc_opt_class();
  v4[2] = objc_opt_class();
  v4[3] = objc_opt_class();
  v4[4] = objc_opt_class();
  v4[5] = objc_opt_class();
  v4[6] = objc_opt_class();
  v4[7] = objc_opt_class();
  v4[8] = objc_opt_class();
  v4[9] = objc_opt_class();
  v4[10] = objc_opt_class();
  v4[11] = objc_opt_class();
  v4[12] = objc_opt_class();
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:13];

  return v2;
}

- (_UIActivityHelper)initWithDelegate:(id)delegate sessionID:(id)d fetchShortcutsBlock:(id)block
{
  delegateCopy = delegate;
  dCopy = d;
  blockCopy = block;
  v18.receiver = self;
  v18.super_class = _UIActivityHelper;
  v11 = [(_UIActivityHelper *)&v18 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_delegate, delegateCopy);
    objc_storeStrong(&v12->_sessionID, d);
    v13 = _UIActivityGetBuiltinActivities();
    cachedBuiltinActivities = v12->_cachedBuiltinActivities;
    v12->_cachedBuiltinActivities = v13;

    v15 = MEMORY[0x18CFF58E0](blockCopy);
    fetchShortcutsBlock = v12->_fetchShortcutsBlock;
    v12->_fetchShortcutsBlock = v15;
  }

  return v12;
}

+ (id)activityTypeForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = identifierCopy;
  if (activityTypeForBundleIdentifier__onceToken == -1)
  {
    if (identifierCopy)
    {
LABEL_3:
      v5 = [activityTypeForBundleIdentifier__activityTypesForIdentifiers objectForKeyedSubscript:v4];
      goto LABEL_6;
    }
  }

  else
  {
    +[_UIActivityHelper activityTypeForBundleIdentifier:];
    if (v4)
    {
      goto LABEL_3;
    }
  }

  v5 = 0;
LABEL_6:

  return v5;
}

+ (id)transportImageForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (transportImageForBundleIdentifier__onceToken != -1)
  {
    +[_UIActivityHelper transportImageForBundleIdentifier:];
  }

  v4 = [transportImageForBundleIdentifier__transportImagesForIdentifiers objectForKeyedSubscript:identifierCopy];
  if ([(__CFString *)identifierCopy hasPrefix:@"com.apple.InCallService"])
  {

    identifierCopy = @"com.apple.facetime";
  }

  if (!v4)
  {
    v5 = MEMORY[0x1E69DCAB8];
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen scale];
    v4 = [v5 _applicationIconImageForBundleIdentifier:identifierCopy format:5 scale:?];
  }

  return v4;
}

- (void)primeWithDiscoveryContext:(id)context
{
  contextCopy = context;
  v6 = objc_alloc_init(_UIActivityApplicationExtensionDiscovery);
  fetchShortcutsBlock = [(_UIActivityHelper *)self fetchShortcutsBlock];
  [(_UIActivityApplicationExtensionDiscovery *)v6 setFetchShortcutsBlock:fetchShortcutsBlock];

  [(_UIActivityHelper *)self setApplicationExtensionDiscovery:v6];
  [(_UIActivityHelper *)self setPrimed:1];
  [(_UIActivityApplicationExtensionDiscovery *)v6 primeWithDiscoveryContext:contextCopy];
}

- (id)reportExtensionsCacheResult
{
  applicationExtensionDiscovery = [(_UIActivityHelper *)self applicationExtensionDiscovery];
  reportExtensionsCacheResult = [applicationExtensionDiscovery reportExtensionsCacheResult];

  return reportExtensionsCacheResult;
}

- (void)_enumerateAvailableActivitiesForMatchingContext:(id)context intoMatchingResults:(id)results matchingResultsUpdateBlock:(id)block enumerateActivityBlock:(id)activityBlock
{
  v118 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  resultsCopy = results;
  activityBlockCopy = activityBlock;
  v11 = share_sheet_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [_UIActivityHelper _enumerateAvailableActivitiesForMatchingContext:contextCopy intoMatchingResults:v11 matchingResultsUpdateBlock:? enumerateActivityBlock:?];
  }

  excludedActivityTypes = [contextCopy excludedActivityTypes];
  v88 = resultsCopy;
  [resultsCopy addExcludedActivityTypes:excludedActivityTypes];

  activityItemValues = [contextCopy activityItemValues];
  isContentManaged = [contextCopy isContentManaged];
  whitelistActionActivitiesOnly = [contextCopy whitelistActionActivitiesOnly];
  activityItems = [contextCopy activityItems];
  applicationActivities = [contextCopy applicationActivities];
  includedActivityTypes = [contextCopy includedActivityTypes];
  excludedActivityCategories = [contextCopy excludedActivityCategories];
  v79 = activityItemValues;
  _UIActivityItemTypesSet(activityItemValues);
  array = [MEMORY[0x1E695DF70] array];
  cachedBuiltinActivities = [(_UIActivityHelper *)self cachedBuiltinActivities];
  if ([contextCopy allowMatchingBuiltInActivities])
  {
    [array addObjectsFromArray:cachedBuiltinActivities];
  }

  v102 = 0u;
  v103 = 0u;
  v100 = 0u;
  v101 = 0u;
  activityTypesGeneratedByDelegate = [contextCopy activityTypesGeneratedByDelegate];
  v15 = [activityTypesGeneratedByDelegate countByEnumeratingWithState:&v100 objects:v117 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v101;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v101 != v17)
        {
          objc_enumerationMutation(activityTypesGeneratedByDelegate);
        }

        v19 = *(*(&v100 + 1) + 8 * i);
        delegate = [(_UIActivityHelper *)self delegate];
        sessionID = [(_UIActivityHelper *)self sessionID];
        v22 = [delegate activityHelper:self matchingWithContext:contextCopy shouldIncludeSystemActivityType:v19 sessionID:sessionID];

        if (v22)
        {
          delegate2 = [(_UIActivityHelper *)self delegate];
          sessionID2 = [(_UIActivityHelper *)self sessionID];
          v25 = [delegate2 activityHelper:self activitiesForActivityType:v19 matchingContext:contextCopy sessionID:sessionID2];

          if (v25)
          {
            [array addObjectsFromArray:v25];
          }
        }

        else
        {
          v116 = v19;
          v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v116 count:1];
          [v88 addExcludedActivityTypes:v25];
        }
      }

      v16 = [activityTypesGeneratedByDelegate countByEnumeratingWithState:&v100 objects:v117 count:16];
    }

    while (v16);
  }

  prematchedExtensionActivities = [contextCopy prematchedExtensionActivities];
  v78 = prematchedExtensionActivities;
  if (prematchedExtensionActivities)
  {
    [array addObjectsFromArray:prematchedExtensionActivities];
    v27 = v88;
    v28 = activityItems;
  }

  else
  {
    v27 = v88;
    v28 = activityItems;
    if (block && [contextCopy allowMatchingExtensionActivities])
    {
      if ([(_UIActivityHelper *)self primed])
      {
        [(_UIActivityHelper *)self setPrimed:0];
      }

      else
      {
        v71 = objc_alloc_init(_UIActivityApplicationExtensionDiscovery);
        [(_UIActivityHelper *)self setApplicationExtensionDiscovery:v71];

        fetchShortcutsBlock = [(_UIActivityHelper *)self fetchShortcutsBlock];
        applicationExtensionDiscovery = [(_UIActivityHelper *)self applicationExtensionDiscovery];
        [applicationExtensionDiscovery setFetchShortcutsBlock:fetchShortcutsBlock];
      }

      applicationExtensionDiscovery2 = [(_UIActivityHelper *)self applicationExtensionDiscovery];
      v99 = 0;
      v75 = [applicationExtensionDiscovery2 activitiesForMatchingContext:contextCopy error:&v99];
      v76 = v99;

      if (v75)
      {
        [array addObjectsFromArray:v75];
      }

      else
      {
        v77 = share_sheet_log();
        if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
        {
          [_UIActivityHelper _enumerateAvailableActivitiesForMatchingContext:v76 intoMatchingResults:v77 matchingResultsUpdateBlock:? enumerateActivityBlock:?];
        }
      }
    }
  }

  [array addObjectsFromArray:applicationActivities];
  v82 = array;
  v29 = [v82 count];
  if (v29)
  {
    v30 = v29 - 1;
    do
    {
      v31 = [v82 objectAtIndexedSubscript:v30];
      activityType = [v31 activityType];
      v33 = [@"com.apple.UIKit.activity.OpenWithApp-com.apple.DocumentsApp" isEqualToString:activityType];

      if (v33)
      {
        [v82 removeObjectAtIndex:v30];
      }

      --v30;
    }

    while (v30 != -1);
  }

  v34 = _UIActivityGetOrderedBuiltinActivitiesFromActivities(v82);
  v35 = [(_UIActivityHelper *)self _activitiesByApplyingBeforeTypePinningToActivities:v34 activitiesToBeforeTypePin:applicationActivities];

  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  obja = v35;
  v36 = [obja countByEnumeratingWithState:&v95 objects:v115 count:16];
  if (v36)
  {
    v37 = v36;
    v92 = *v96;
    do
    {
      v38 = 0;
      v87 = v37;
      do
      {
        if (*v96 != v92)
        {
          objc_enumerationMutation(obja);
        }

        v39 = *(*(&v95 + 1) + 8 * v38);
        if ([cachedBuiltinActivities containsObject:v39])
        {
          activityType2 = [v39 activityType];
          v41 = [activityType2 isEqualToString:@"com.apple.UIKit.activity.AirDrop"];

          if ((v41 & 1) == 0)
          {
            delegate3 = [(_UIActivityHelper *)self delegate];
            activityType3 = [v39 activityType];
            sessionID3 = [(_UIActivityHelper *)self sessionID];
            v45 = [delegate3 activityHelper:self matchingWithContext:contextCopy shouldIncludeSystemActivityType:activityType3 sessionID:sessionID3];

            v37 = v87;
            if ((v45 & 1) == 0)
            {
              activityType4 = [v39 activityType];
              v114 = activityType4;
              v51 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v114 count:1];
              [v27 addExcludedActivityTypes:v51];

              v48 = share_sheet_log();
              if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
              {
                [_UIActivityHelper _enumerateAvailableActivitiesForMatchingContext:v113 intoMatchingResults:v39 matchingResultsUpdateBlock:? enumerateActivityBlock:?];
              }

              goto LABEL_42;
            }
          }
        }

        if ([contextCopy shouldExcludeActivity:v39])
        {
          activityType5 = [v39 activityType];
          v112 = activityType5;
          v47 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v112 count:1];
          [v27 addExcludedActivityTypes:v47];

          v48 = share_sheet_log();
          if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
          {
            [_UIActivityHelper _enumerateAvailableActivitiesForMatchingContext:v111 intoMatchingResults:v39 matchingResultsUpdateBlock:? enumerateActivityBlock:?];
          }

LABEL_42:

          goto LABEL_43;
        }

        if ((excludedActivityCategories & (1 << [objc_opt_class() activityCategory])) != 0)
        {
          v48 = share_sheet_log();
          if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
          {
            [_UIActivityHelper _enumerateAvailableActivitiesForMatchingContext:v110 intoMatchingResults:v39 matchingResultsUpdateBlock:? enumerateActivityBlock:?];
          }

          goto LABEL_42;
        }

        if (includedActivityTypes)
        {
          activityType6 = [v39 activityType];
          if (([includedActivityTypes containsObject:activityType6] & 1) != 0 || whitelistActionActivitiesOnly && objc_msgSend(objc_opt_class(), "activityCategory") == 1)
          {
          }

          else
          {
            activityType7 = [v39 activityType];
            v53 = [activityType7 isEqualToString:@"com.apple.UIKit.activity.Share"];

            if ((v53 & 1) == 0)
            {
              v69 = share_sheet_log();
              if (os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG))
              {
                [_UIActivityHelper _enumerateAvailableActivitiesForMatchingContext:v109 intoMatchingResults:v39 matchingResultsUpdateBlock:? enumerateActivityBlock:?];
              }

              goto LABEL_66;
            }
          }
        }

        _setIsContentManagedIfResctrictableActivity(v39, isContentManaged);
        activityType8 = [v39 activityType];
        if ([activityType8 isEqualToString:@"com.apple.UIKit.activity.CopyToPasteboard"] && objc_msgSend(v28, "count"))
        {
          v55 = [v28 objectAtIndex:0];
          v56 = objc_opt_class();
          v57 = NSStringFromClass(v56);
          if ([v57 isEqualToString:@"GKAchievement"])
          {

LABEL_66:
            v37 = v87;
            goto LABEL_43;
          }

          v65 = [v28 objectAtIndex:0];
          v66 = objc_opt_class();
          v67 = NSStringFromClass(v66);
          v68 = [v67 isEqualToString:@"GKScore"];

          v27 = v88;
          v37 = v87;
          if (v68)
          {
            goto LABEL_43;
          }
        }

        else
        {

          v37 = v87;
        }

        activityType9 = [v39 activityType];
        v59 = [activityType9 isEqualToString:@"com.apple.UIKit.activity.SharePlay"];

        if (v59)
        {
          v108 = v39;
          v60 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v108 count:1];
          [v27 addHiddenActivities:v60];

          if ([contextCopy showSharePlayProminently])
          {
            v48 = share_sheet_log();
            if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
            {
              [_UIActivityHelper _enumerateAvailableActivitiesForMatchingContext:v107 intoMatchingResults:v39 matchingResultsUpdateBlock:? enumerateActivityBlock:?];
            }

            goto LABEL_42;
          }
        }

        activityType10 = [v39 activityType];
        v62 = [activityType10 isEqualToString:@"com.apple.InCallService.ShareExtension"];

        if (v62)
        {
          v106 = v39;
          v63 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v106 count:1];
          [v27 addHiddenActivities:v63];

          v48 = share_sheet_log();
          if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
          {
            activityType11 = [v39 activityType];
            *buf = 138412290;
            v105 = activityType11;
            _os_log_impl(&dword_18B359000, v48, OS_LOG_TYPE_DEFAULT, "Excluding activityType %@ because it should only ever be shown as a suggestion", buf, 0xCu);
          }

          goto LABEL_42;
        }

        activityBlockCopy[2](activityBlockCopy, v39);
LABEL_43:
        ++v38;
        v28 = activityItems;
      }

      while (v37 != v38);
      v70 = [obja countByEnumeratingWithState:&v95 objects:v115 count:16];
      v37 = v70;
    }

    while (v70);
  }
}

- (void)preheatAvailableActivitiesForMatchingContext:(id)context
{
  v5 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  contextCopy = context;
  v7 = dispatch_queue_create("com.apple.ShareUI.activityPreheating", v5);

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __66___UIActivityHelper_preheatAvailableActivitiesForMatchingContext___block_invoke;
  v9[3] = &unk_1E71FB3C8;
  v10 = v7;
  v8 = v7;
  [(_UIActivityHelper *)self _enumerateAvailableActivitiesForMatchingContext:contextCopy intoMatchingResults:0 matchingResultsUpdateBlock:0 enumerateActivityBlock:v9];
}

- (id)orderedAvailableActivitiesForMatchingContext:(id)context
{
  contextCopy = context;
  activityItemValues = [contextCopy activityItemValues];
  isContentManaged = [contextCopy isContentManaged];
  sourceApplicationIdentifier = [contextCopy sourceApplicationIdentifier];
  selfCopy = self;
  cachedBuiltinActivities = [(_UIActivityHelper *)self cachedBuiltinActivities];
  v9 = [_UIActivityPlaceholderItemProxy unproxiedItemsForItems:activityItemValues];
  allowMatchingExtensionActivities = [contextCopy allowMatchingExtensionActivities];
  v11 = share_sheet_log();
  v12 = share_sheet_log();
  v13 = os_signpost_id_make_with_pointer(v12, contextCopy);

  if (allowMatchingExtensionActivities)
  {
    if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
    {
      *buf = 0;
      v14 = "AvailableActivitiesIncludingExtensions";
LABEL_8:
      _os_signpost_emit_with_name_impl(&dword_18B359000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v13, v14, &unk_18B437ED2, buf, 2u);
    }
  }

  else if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 0;
    v14 = "AvailableActivitiesExcludingExtensions";
    goto LABEL_8;
  }

  v15 = [[_UIActivityMatchingResults alloc] initWithActivityMatchingContext:contextCopy];
  v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = __66___UIActivityHelper_orderedAvailableActivitiesForMatchingContext___block_invoke_2;
  v46[3] = &unk_1E71FB410;
  v47 = cachedBuiltinActivities;
  v48 = activityItemValues;
  v49 = v9;
  v17 = contextCopy;
  v50 = v17;
  v51 = sourceApplicationIdentifier;
  v18 = v16;
  v52 = v18;
  v53 = isContentManaged;
  v44 = sourceApplicationIdentifier;
  v43 = v9;
  v19 = activityItemValues;
  v20 = cachedBuiltinActivities;
  [(_UIActivityHelper *)selfCopy _enumerateAvailableActivitiesForMatchingContext:v17 intoMatchingResults:v15 matchingResultsUpdateBlock:&__block_literal_global_221 enumerateActivityBlock:v46];
  v21 = share_sheet_log();
  v22 = share_sheet_log();
  v23 = os_signpost_id_make_with_pointer(v22, v17);

  v24 = v23 - 1;
  if (allowMatchingExtensionActivities)
  {
    if (v24 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_18B359000, v21, OS_SIGNPOST_INTERVAL_END, v23, "AvailableActivitiesIncludingExtensions", &unk_18B437ED2, buf, 2u);
    }

    v25 = share_sheet_log();
    v26 = share_sheet_log();
    v27 = os_signpost_id_make_with_pointer(v26, v17);

    if (v27 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v25))
    {
      *buf = 0;
      v28 = "SortAvailableActivitiesIncludingExtensions";
LABEL_22:
      _os_signpost_emit_with_name_impl(&dword_18B359000, v25, OS_SIGNPOST_INTERVAL_BEGIN, v27, v28, &unk_18B437ED2, buf, 2u);
    }
  }

  else
  {
    if (v24 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_18B359000, v21, OS_SIGNPOST_INTERVAL_END, v23, "AvailableActivitiesExcludingExtensions", &unk_18B437ED2, buf, 2u);
    }

    v25 = share_sheet_log();
    v29 = share_sheet_log();
    v27 = os_signpost_id_make_with_pointer(v29, v17);

    if (v27 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v25))
    {
      *buf = 0;
      v28 = "SortAvailableActivitiesExcludingExtensions";
      goto LABEL_22;
    }
  }

  externalMatchBuiltinOrderedActivities = [v17 externalMatchBuiltinOrderedActivities];
  v31 = externalMatchBuiltinOrderedActivities;
  v32 = MEMORY[0x1E695E0F0];
  if (externalMatchBuiltinOrderedActivities)
  {
    v32 = externalMatchBuiltinOrderedActivities;
  }

  v33 = v32;

  v34 = [v33 arrayByAddingObjectsFromArray:v18];

  v35 = ([v17 excludedActivityCategories] & 2) != 0 || objc_msgSend(v17, "sharingStyle") == 2;
  activityTypeOrder = [v17 activityTypeOrder];
  v37 = [(_UIActivityHelper *)selfCopy activitiesByOrderingActivities:v34 applyDefaultOrdering:1 applyBeforeTypePinning:1 activityTypeOrdering:activityTypeOrder bypassDuet:v35];
  [(_UIActivityMatchingResults *)v15 setOrderedActivities:v37];

  v38 = share_sheet_log();
  v39 = share_sheet_log();
  v40 = os_signpost_id_make_with_pointer(v39, v17);

  if (allowMatchingExtensionActivities)
  {
    if (v40 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v38))
    {
      *buf = 0;
      v41 = "SortAvailableActivitiesIncludingExtensions";
LABEL_35:
      _os_signpost_emit_with_name_impl(&dword_18B359000, v38, OS_SIGNPOST_INTERVAL_END, v40, v41, &unk_18B437ED2, buf, 2u);
    }
  }

  else if (v40 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v38))
  {
    *buf = 0;
    v41 = "SortAvailableActivitiesExcludingExtensions";
    goto LABEL_35;
  }

  return v15;
}

- (id)activitiesByOrderingActivities:(id)activities applyDefaultOrdering:(BOOL)ordering applyBeforeTypePinning:(BOOL)pinning activityTypeOrdering:(id)typeOrdering bypassDuet:(BOOL)duet
{
  pinningCopy = pinning;
  orderingCopy = ordering;
  v29[1] = *MEMORY[0x1E69E9840];
  activitiesCopy = activities;
  typeOrderingCopy = typeOrdering;
  v14 = activitiesCopy;
  v15 = v14;
  if (orderingCopy)
  {
    v15 = [(_UIActivityHelper *)self _activitiesByApplyingDefaultOrdering:v14];

    if (!pinningCopy)
    {
LABEL_3:
      if (!typeOrderingCopy)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if (!pinningCopy)
  {
    goto LABEL_3;
  }

  v27 = [(_UIActivityHelper *)self _activitiesByApplyingBeforeTypePinningToActivities:v15 activitiesToBeforeTypePin:v15];

  v15 = v27;
  if (typeOrderingCopy)
  {
LABEL_4:
    v16 = [(_UIActivityHelper *)self _activitiesByTypeOrderingActivities:v15 activityTypeOrdering:typeOrderingCopy];

    v15 = v16;
  }

LABEL_5:
  if (([typeOrderingCopy containsObject:@"com.apple.UIKit.activity.Share"] & 1) == 0)
  {
    v29[0] = @"com.apple.UIKit.activity.Share";
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:1];
    v18 = [(_UIActivityHelper *)self _activitiesByApplyingFavoriteOrderingToActivities:v15 favoriteActivityTypes:v17];

    v15 = v18;
  }

  if (!duet)
  {
    v19 = share_sheet_log();
    v20 = share_sheet_log();
    v21 = os_signpost_id_make_with_pointer(v20, v15);

    if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
    {
      *v28 = 0;
      _os_signpost_emit_with_name_impl(&dword_18B359000, v19, OS_SIGNPOST_INTERVAL_BEGIN, v21, "SortAvailableActivitiesByDuet", &unk_18B437ED2, v28, 2u);
    }

    v22 = [(_UIActivityHelper *)self _activitiesByDuetOrderingActivities:v15];

    v23 = share_sheet_log();
    v24 = share_sheet_log();
    v25 = os_signpost_id_make_with_pointer(v24, v22);

    if (v25 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
    {
      *v28 = 0;
      _os_signpost_emit_with_name_impl(&dword_18B359000, v23, OS_SIGNPOST_INTERVAL_END, v25, "SortAvailableActivitiesByDuet", &unk_18B437ED2, v28, 2u);
    }

    v15 = v22;
  }

  return v15;
}

- (id)_activitiesByApplyingDefaultOrdering:(id)ordering
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __58___UIActivityHelper__activitiesByApplyingDefaultOrdering___block_invoke;
  v7[3] = &unk_1E71FB438;
  v7[4] = self;
  v3 = _mapArray(ordering, v7);
  v4 = [v3 sortedArrayUsingSelector:sel_compare_];
  v5 = _mapArray(v4, &__block_literal_global_227);

  return v5;
}

- (id)_defaultOrderingDescriptorForActivity:(id)activity
{
  activityCopy = activity;
  _defaultSortGroup = [activityCopy _defaultSortGroup];
  v6 = 0;
  if (_defaultSortGroup <= 3)
  {
    switch(_defaultSortGroup)
    {
      case 1:
        v7 = [(_UIActivityHelper *)self _defaultSortOrderForBuiltInElevatedActivity:activityCopy];
        break;
      case 2:
        v7 = [(_UIActivityHelper *)self _defaultSortItemForBuiltinActivity:activityCopy];
        break;
      case 3:
        v7 = [(_UIActivityHelper *)self _defaultSortOrderForApplicationDefinedActivity:activityCopy];
        break;
      default:
        goto LABEL_18;
    }
  }

  else if (_defaultSortGroup > 5)
  {
    if (_defaultSortGroup == 6)
    {
      v7 = [(_UIActivityHelper *)self _defaultSortOrderForShortcutActivity:activityCopy];
    }

    else
    {
      if (_defaultSortGroup != 7)
      {
        goto LABEL_18;
      }

      v7 = [(_UIActivityHelper *)self _defaultSortOrderForOtherActivity:activityCopy];
    }
  }

  else
  {
    if (_defaultSortGroup == 4)
    {
      [(_UIActivityHelper *)self _defaultSortOrderForExtensionBasedActivity:activityCopy];
    }

    else
    {
      [(_UIActivityHelper *)self _defaultSortOrderForOpenInAppActivity:activityCopy];
    }
    v7 = ;
  }

  v6 = v7;
LABEL_18:

  return v6;
}

- (id)_defaultSortOrderForBuiltInElevatedActivity:(id)activity
{
  activityCopy = activity;
  v4 = +[_UIActivityUserDefaults builtinActivityOrder];
  activityType = [activityCopy activityType];
  v6 = [v4 indexOfObject:activityType];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [_UIActivitySortItem sortDescriptorForActivity:activityCopy withGroup:1 secondarySortValue:&unk_1EFEC9710];
  }

  else
  {
    1000 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v6 + 1000];
    v7 = [_UIActivitySortItem sortDescriptorForActivity:activityCopy withGroup:1 secondarySortValue:1000];
  }

  return v7;
}

- (id)_defaultSortItemForBuiltinActivity:(id)activity
{
  activityCopy = activity;
  v4 = +[_UIActivityUserDefaults builtinActivityOrder];
  activityType = [activityCopy activityType];
  v6 = [v4 indexOfObject:activityType];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [_UIActivitySortItem sortDescriptorForActivity:activityCopy withGroup:2 secondarySortValue:&unk_1EFEC9710];
  }

  else
  {
    1000 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v6 + 1000];
    v7 = [_UIActivitySortItem sortDescriptorForActivity:activityCopy withGroup:2 secondarySortValue:1000];
  }

  return v7;
}

- (id)_defaultSortOrderForExtensionBasedActivity:(id)activity
{
  activityCopy = activity;
  v4 = +[_UIActivityUserDefaults builtinActivityOrder];
  activityType = [activityCopy activityType];
  v6 = [v4 indexOfObject:activityType];

  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    3000 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v6 + 3000];
    v17 = activityCopy;
    v18 = 2;
LABEL_8:
    v16 = [_UIActivitySortItem sortDescriptorForActivity:v17 withGroup:v18 secondarySortValue:3000];
    goto LABEL_9;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    3000 = [activityCopy activityTitle];
    v17 = activityCopy;
    v18 = 7;
    goto LABEL_8;
  }

  3000 = activityCopy;
  installationDate = [3000 installationDate];
  [installationDate timeIntervalSinceReferenceDate];
  v10 = v9;
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v12 = v10 / v11;

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v14 = 2000.0;
  if (isKindOfClass)
  {
    v14 = 1000.0;
  }

  v15 = [MEMORY[0x1E696AD98] numberWithDouble:v12 + v14];
  v16 = [_UIActivitySortItem sortDescriptorForActivity:3000 withGroup:4 secondarySortValue:v15];

LABEL_9:

  return v16;
}

- (id)_defaultSortOrderForApplicationDefinedActivity:(id)activity
{
  v3 = MEMORY[0x1E696AD98];
  activityCopy = activity;
  v5 = [v3 numberWithUnsignedInteger:{objc_msgSend(activityCopy, "indexInApplicationDefinedActivities")}];
  v6 = [_UIActivitySortItem sortDescriptorForActivity:activityCopy withGroup:3 secondarySortValue:v5];

  return v6;
}

- (id)_defaultSortOrderForOpenInAppActivity:(id)activity
{
  activityCopy = activity;
  if ([activityCopy _appIsDocumentTypeOwner])
  {
    v4 = 0;
  }

  else
  {
    v4 = 10;
  }

  _supportsOpenInPlace = [activityCopy _supportsOpenInPlace];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:v4 | _supportsOpenInPlace ^ 1u];
  activityTitle = [activityCopy activityTitle];
  v8 = [_UIActivitySortItem sortDescriptorForActivity:activityCopy withGroup:5 secondarySortValue:v6 tertiarySortValue:activityTitle];

  return v8;
}

- (id)_defaultSortOrderForShortcutActivity:(id)activity
{
  activityCopy = activity;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    sortValue = [activityCopy sortValue];
  }

  else
  {
    sortValue = &unk_1EFEC9728;
  }

  v5 = [_UIActivitySortItem sortDescriptorForActivity:activityCopy withGroup:6 secondarySortValue:sortValue];

  return v5;
}

- (id)_defaultSortOrderForOtherActivity:(id)activity
{
  activityCopy = activity;
  activityTitle = [activityCopy activityTitle];
  v5 = [_UIActivitySortItem sortDescriptorForActivity:activityCopy withGroup:7 secondarySortValue:activityTitle];

  return v5;
}

- (id)_activitiesByApplyingBeforeTypePinningToActivities:(id)activities activitiesToBeforeTypePin:(id)pin
{
  v27 = *MEMORY[0x1E69E9840];
  pinCopy = pin;
  v6 = [activities mutableCopy];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = pinCopy;
  v7 = [obj countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        _beforeActivity = [v11 _beforeActivity];
        v13 = _beforeActivity;
        if (_beforeActivity)
        {
          v14 = _beforeActivity;
          v24[0] = MEMORY[0x1E69E9820];
          v24[1] = 3221225472;
          v24[2] = ___UIIndexOfActivityType_block_invoke;
          v24[3] = &unk_1E71FAC90;
          v25 = v14;
          v15 = [v6 indexOfObjectPassingTest:v24];

          if (v15 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v16 = [v6 indexOfObject:v11];
            if (v16 != 0x7FFFFFFFFFFFFFFFLL)
            {
              v17 = v16;
              [v6 removeObject:v11];
              if (v17 > v15)
              {
                ++v15;
              }
            }

            [v6 insertObject:v11 atIndex:v15];
          }
        }
      }

      v8 = [obj countByEnumeratingWithState:&v20 objects:v26 count:16];
    }

    while (v8);
  }

  return v6;
}

- (id)_activitiesByTypeOrderingActivities:(id)activities activityTypeOrdering:(id)ordering
{
  v26 = *MEMORY[0x1E69E9840];
  activitiesCopy = activities;
  orderingCopy = ordering;
  if ([orderingCopy count])
  {
    v7 = [activitiesCopy mutableCopy];
    v17 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v7, "count")}];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    obj = orderingCopy;
    v8 = [obj countByEnumeratingWithState:&v19 objects:v25 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v20;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v20 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v19 + 1) + 8 * i);
          v23[0] = MEMORY[0x1E69E9820];
          v23[1] = 3221225472;
          v23[2] = ___UIIndexOfActivityType_block_invoke;
          v23[3] = &unk_1E71FAC90;
          v24 = v12;
          v13 = v12;
          v14 = [v7 indexOfObjectPassingTest:v23];

          if (v14 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v15 = [v7 objectAtIndexedSubscript:v14];
            [v17 addObject:v15];

            [v7 removeObjectAtIndex:v14];
          }
        }

        v9 = [obj countByEnumeratingWithState:&v19 objects:v25 count:16];
      }

      while (v9);
    }

    [v17 addObjectsFromArray:v7];
  }

  else
  {
    v17 = activitiesCopy;
  }

  return v17;
}

- (id)_activitiesByApplyingFavoriteOrderingToActivities:(id)activities favoriteActivityTypes:(id)types
{
  v24 = *MEMORY[0x1E69E9840];
  typesCopy = types;
  v6 = [activities mutableCopy];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = [typesCopy reverseObjectEnumerator];
  v7 = [obj countByEnumeratingWithState:&v17 objects:v23 count:16];
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
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 3221225472;
        v21[2] = ___UIIndexOfActivityType_block_invoke;
        v21[3] = &unk_1E71FAC90;
        v22 = v11;
        v12 = v11;
        v13 = [v6 indexOfObjectPassingTest:v21];

        if (v13 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v14 = [v6 objectAtIndexedSubscript:v13];
          [v6 removeObjectAtIndex:v13];
          [v6 insertObject:v14 atIndex:0];
        }
      }

      v8 = [obj countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v8);
  }

  return v6;
}

- (id)_activitiesByDuetOrderingActivities:(id)activities
{
  v70 = *MEMORY[0x1E69E9840];
  activitiesCopy = activities;
  delegate = [(_UIActivityHelper *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v59 = 0;
    v60 = &v59;
    v61 = 0x2050000000;
    v6 = get_PSSuggesterConfigurationClass_softClass;
    v62 = get_PSSuggesterConfigurationClass_softClass;
    if (!get_PSSuggesterConfigurationClass_softClass)
    {
      *&buf = MEMORY[0x1E69E9820];
      *(&buf + 1) = 3221225472;
      v67 = __get_PSSuggesterConfigurationClass_block_invoke;
      v68 = &unk_1E71F91F0;
      v69 = &v59;
      __get_PSSuggesterConfigurationClass_block_invoke(&buf);
      v6 = v60[3];
    }

    v7 = v6;
    _Block_object_dispose(&v59, 8);
    defaultConfiguration = [v6 defaultConfiguration];
    [defaultConfiguration setMaximumNumberOfSuggestions:8];
    v59 = 0;
    v60 = &v59;
    v61 = 0x2050000000;
    v8 = get_PSSuggesterClass_softClass;
    v62 = get_PSSuggesterClass_softClass;
    if (!get_PSSuggesterClass_softClass)
    {
      *&buf = MEMORY[0x1E69E9820];
      *(&buf + 1) = 3221225472;
      v67 = __get_PSSuggesterClass_block_invoke;
      v68 = &unk_1E71F91F0;
      v69 = &v59;
      __get_PSSuggesterClass_block_invoke(&buf);
      v8 = v60[3];
    }

    v9 = v8;
    _Block_object_dispose(&v59, 8);
    v39 = [[v8 alloc] initWithDaemonUsingConfiguration:defaultConfiguration];
    delegate2 = [(_UIActivityHelper *)self delegate];
    sessionID = [(_UIActivityHelper *)self sessionID];
    v41 = [delegate2 activityHelper:self predictionContextForSessionID:sessionID];

    v46 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(activitiesCopy, "count")}];
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v12 = activitiesCopy;
    v13 = [v12 countByEnumeratingWithState:&v55 objects:v65 count:16];
    if (v13)
    {
      v14 = *v56;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v56 != v14)
          {
            objc_enumerationMutation(v12);
          }

          v16 = *(*(&v55 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            containingAppBundleIdentifier = [v16 containingAppBundleIdentifier];
            activityType = [v16 activityType];
            v19 = [v46 objectForKeyedSubscript:containingAppBundleIdentifier];
            v20 = v19;
            if (v19)
            {
              if (([v19 containsObject:activityType] & 1) == 0)
              {
                [v20 addObject:activityType];
              }

              if (!containingAppBundleIdentifier)
              {
                goto LABEL_19;
              }

LABEL_18:
              [v46 setObject:v20 forKeyedSubscript:containingAppBundleIdentifier];
            }

            else
            {
              v20 = [MEMORY[0x1E695DF70] arrayWithObject:activityType];
              if (containingAppBundleIdentifier)
              {
                goto LABEL_18;
              }
            }

LABEL_19:

            continue;
          }
        }

        v13 = [v12 countByEnumeratingWithState:&v55 objects:v65 count:16];
      }

      while (v13);
    }

    [v41 setAppBundleIdsToShareExtensionBundleIdsMapping:v46];
    v40 = [v39 shareExtensionSuggestionsFromContext:v41];
    if ([v40 count])
    {
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v21 = v40;
      v22 = [v21 countByEnumeratingWithState:&v51 objects:v64 count:16];
      if (v22)
      {
        v23 = *v52;
        do
        {
          for (j = 0; j != v22; ++j)
          {
            if (*v52 != v23)
            {
              objc_enumerationMutation(v21);
            }

            v25 = *(*(&v51 + 1) + 8 * j);
            v26 = share_sheet_log();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
            {
              bundleID = [v25 bundleID];
              LODWORD(buf) = 138412290;
              *(&buf + 4) = bundleID;
              _os_log_impl(&dword_18B359000, v26, OS_LOG_TYPE_DEFAULT, "duet ordering suggestion for bundle ID: %@", &buf, 0xCu);
            }
          }

          v22 = [v21 countByEnumeratingWithState:&v51 objects:v64 count:16];
        }

        while (v22);
      }

      v28 = [v21 valueForKey:@"bundleID"];
      v29 = [v12 mutableCopy];
      v44 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v29, "count")}];
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      obj = v28;
      v30 = [obj countByEnumeratingWithState:&v47 objects:v63 count:16];
      if (v30)
      {
        v31 = *v48;
        do
        {
          for (k = 0; k != v30; ++k)
          {
            if (*v48 != v31)
            {
              objc_enumerationMutation(obj);
            }

            v33 = *(*(&v47 + 1) + 8 * k);
            *&buf = MEMORY[0x1E69E9820];
            *(&buf + 1) = 3221225472;
            v67 = ___UIIndexOfActivityType_block_invoke;
            v68 = &unk_1E71FAC90;
            v69 = v33;
            v34 = v33;
            v35 = [v29 indexOfObjectPassingTest:&buf];

            if (v35 != 0x7FFFFFFFFFFFFFFFLL)
            {
              v36 = [v29 objectAtIndexedSubscript:v35];
              [v44 addObject:v36];

              [v29 removeObjectAtIndex:v35];
            }
          }

          v30 = [obj countByEnumeratingWithState:&v47 objects:v63 count:16];
        }

        while (v30);
      }

      [v44 addObjectsFromArray:v29];
    }

    else
    {
      v44 = v12;
    }

    v37 = activitiesCopy;
  }

  else
  {
    v37 = activitiesCopy;
    v44 = activitiesCopy;
  }

  return v44;
}

- (void)_enumerateAvailableActivitiesForMatchingContext:(uint64_t)a1 intoMatchingResults:(NSObject *)a2 matchingResultsUpdateBlock:enumerateActivityBlock:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_18B359000, a2, OS_LOG_TYPE_DEBUG, "Enumerate available activities for %@", &v2, 0xCu);
}

- (void)_enumerateAvailableActivitiesForMatchingContext:(uint64_t)a1 intoMatchingResults:(NSObject *)a2 matchingResultsUpdateBlock:enumerateActivityBlock:.cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_18B359000, a2, OS_LOG_TYPE_ERROR, "Cannot find application extensions: %{public}@", &v2, 0xCu);
}

- (void)_enumerateAvailableActivitiesForMatchingContext:(uint64_t)a1 intoMatchingResults:(uint64_t)a2 matchingResultsUpdateBlock:enumerateActivityBlock:.cold.3(uint64_t a1, uint64_t a2)
{
  v2 = [OUTLINED_FUNCTION_0_4(a1 a2)];
  OUTLINED_FUNCTION_2_1(v2, 5.7779e-34);
  OUTLINED_FUNCTION_1_4(&dword_18B359000, v3, v4, "Excluding activityType %@ as instructed by _shouldShowSystemActivityType");
}

- (void)_enumerateAvailableActivitiesForMatchingContext:(uint64_t)a1 intoMatchingResults:(uint64_t)a2 matchingResultsUpdateBlock:enumerateActivityBlock:.cold.4(uint64_t a1, uint64_t a2)
{
  v2 = [OUTLINED_FUNCTION_0_4(a1 a2)];
  OUTLINED_FUNCTION_2_1(v2, 5.7779e-34);
  OUTLINED_FUNCTION_1_4(&dword_18B359000, v3, v4, "Excluding activityType %@ because it is in a hidden category");
}

- (void)_enumerateAvailableActivitiesForMatchingContext:(uint64_t)a1 intoMatchingResults:(uint64_t)a2 matchingResultsUpdateBlock:enumerateActivityBlock:.cold.5(uint64_t a1, uint64_t a2)
{
  v2 = [OUTLINED_FUNCTION_0_4(a1 a2)];
  OUTLINED_FUNCTION_2_1(v2, 5.7779e-34);
  OUTLINED_FUNCTION_1_4(&dword_18B359000, v3, v4, "Excluding activityType %@ because client has set includedActivityTypes");
}

- (void)_enumerateAvailableActivitiesForMatchingContext:(uint64_t)a1 intoMatchingResults:(uint64_t)a2 matchingResultsUpdateBlock:enumerateActivityBlock:.cold.6(uint64_t a1, uint64_t a2)
{
  v2 = [OUTLINED_FUNCTION_0_4(a1 a2)];
  OUTLINED_FUNCTION_2_1(v2, 5.7779e-34);
  OUTLINED_FUNCTION_1_4(&dword_18B359000, v3, v4, "Excluding activityType %@ because it should be shown prominently in the header");
}

- (void)_enumerateAvailableActivitiesForMatchingContext:(uint64_t)a1 intoMatchingResults:(uint64_t)a2 matchingResultsUpdateBlock:enumerateActivityBlock:.cold.7(uint64_t a1, uint64_t a2)
{
  v2 = [OUTLINED_FUNCTION_0_4(a1 a2)];
  OUTLINED_FUNCTION_2_1(v2, 5.7779e-34);
  OUTLINED_FUNCTION_1_4(&dword_18B359000, v3, v4, "Excluding activityType %@ as determined by activityMatchingContext");
}

@end