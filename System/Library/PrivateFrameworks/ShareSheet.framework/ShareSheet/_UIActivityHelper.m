@interface _UIActivityHelper
+ (id)activityTypeForBundleIdentifier:(id)a3;
+ (id)builtinActivityClasses;
+ (id)transportImageForBundleIdentifier:(id)a3;
- (_UIActivityHelper)initWithDelegate:(id)a3 sessionID:(id)a4 fetchShortcutsBlock:(id)a5;
- (_UIActivityHelperDelegate)delegate;
- (id)_activitiesByApplyingBeforeTypePinningToActivities:(id)a3 activitiesToBeforeTypePin:(id)a4;
- (id)_activitiesByApplyingDefaultOrdering:(id)a3;
- (id)_activitiesByApplyingFavoriteOrderingToActivities:(id)a3 favoriteActivityTypes:(id)a4;
- (id)_activitiesByDuetOrderingActivities:(id)a3;
- (id)_activitiesByTypeOrderingActivities:(id)a3 activityTypeOrdering:(id)a4;
- (id)_defaultOrderingDescriptorForActivity:(id)a3;
- (id)_defaultSortItemForBuiltinActivity:(id)a3;
- (id)_defaultSortOrderForApplicationDefinedActivity:(id)a3;
- (id)_defaultSortOrderForBuiltInElevatedActivity:(id)a3;
- (id)_defaultSortOrderForExtensionBasedActivity:(id)a3;
- (id)_defaultSortOrderForOpenInAppActivity:(id)a3;
- (id)_defaultSortOrderForOtherActivity:(id)a3;
- (id)_defaultSortOrderForShortcutActivity:(id)a3;
- (id)activitiesByOrderingActivities:(id)a3 applyDefaultOrdering:(BOOL)a4 applyBeforeTypePinning:(BOOL)a5 activityTypeOrdering:(id)a6 bypassDuet:(BOOL)a7;
- (id)orderedAvailableActivitiesForMatchingContext:(id)a3;
- (id)reportExtensionsCacheResult;
- (void)_enumerateAvailableActivitiesForMatchingContext:(id)a3 intoMatchingResults:(id)a4 matchingResultsUpdateBlock:(id)a5 enumerateActivityBlock:(id)a6;
- (void)preheatAvailableActivitiesForMatchingContext:(id)a3;
- (void)primeWithDiscoveryContext:(id)a3;
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

- (_UIActivityHelper)initWithDelegate:(id)a3 sessionID:(id)a4 fetchShortcutsBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v18.receiver = self;
  v18.super_class = _UIActivityHelper;
  v11 = [(_UIActivityHelper *)&v18 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_delegate, v8);
    objc_storeStrong(&v12->_sessionID, a4);
    v13 = _UIActivityGetBuiltinActivities();
    cachedBuiltinActivities = v12->_cachedBuiltinActivities;
    v12->_cachedBuiltinActivities = v13;

    v15 = MEMORY[0x18CFF58E0](v10);
    fetchShortcutsBlock = v12->_fetchShortcutsBlock;
    v12->_fetchShortcutsBlock = v15;
  }

  return v12;
}

+ (id)activityTypeForBundleIdentifier:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (activityTypeForBundleIdentifier__onceToken == -1)
  {
    if (v3)
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

+ (id)transportImageForBundleIdentifier:(id)a3
{
  v3 = a3;
  if (transportImageForBundleIdentifier__onceToken != -1)
  {
    +[_UIActivityHelper transportImageForBundleIdentifier:];
  }

  v4 = [transportImageForBundleIdentifier__transportImagesForIdentifiers objectForKeyedSubscript:v3];
  if ([(__CFString *)v3 hasPrefix:@"com.apple.InCallService"])
  {

    v3 = @"com.apple.facetime";
  }

  if (!v4)
  {
    v5 = MEMORY[0x1E69DCAB8];
    v6 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v6 scale];
    v4 = [v5 _applicationIconImageForBundleIdentifier:v3 format:5 scale:?];
  }

  return v4;
}

- (void)primeWithDiscoveryContext:(id)a3
{
  v4 = a3;
  v6 = objc_alloc_init(_UIActivityApplicationExtensionDiscovery);
  v5 = [(_UIActivityHelper *)self fetchShortcutsBlock];
  [(_UIActivityApplicationExtensionDiscovery *)v6 setFetchShortcutsBlock:v5];

  [(_UIActivityHelper *)self setApplicationExtensionDiscovery:v6];
  [(_UIActivityHelper *)self setPrimed:1];
  [(_UIActivityApplicationExtensionDiscovery *)v6 primeWithDiscoveryContext:v4];
}

- (id)reportExtensionsCacheResult
{
  v2 = [(_UIActivityHelper *)self applicationExtensionDiscovery];
  v3 = [v2 reportExtensionsCacheResult];

  return v3;
}

- (void)_enumerateAvailableActivitiesForMatchingContext:(id)a3 intoMatchingResults:(id)a4 matchingResultsUpdateBlock:(id)a5 enumerateActivityBlock:(id)a6
{
  v118 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v81 = a6;
  v11 = share_sheet_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [_UIActivityHelper _enumerateAvailableActivitiesForMatchingContext:v9 intoMatchingResults:v11 matchingResultsUpdateBlock:? enumerateActivityBlock:?];
  }

  v12 = [v9 excludedActivityTypes];
  v88 = v10;
  [v10 addExcludedActivityTypes:v12];

  v13 = [v9 activityItemValues];
  v84 = [v9 isContentManaged];
  v83 = [v9 whitelistActionActivitiesOnly];
  v93 = [v9 activityItems];
  v80 = [v9 applicationActivities];
  v85 = [v9 includedActivityTypes];
  v86 = [v9 excludedActivityCategories];
  v79 = v13;
  _UIActivityItemTypesSet(v13);
  v91 = [MEMORY[0x1E695DF70] array];
  v94 = [(_UIActivityHelper *)self cachedBuiltinActivities];
  if ([v9 allowMatchingBuiltInActivities])
  {
    [v91 addObjectsFromArray:v94];
  }

  v102 = 0u;
  v103 = 0u;
  v100 = 0u;
  v101 = 0u;
  v14 = [v9 activityTypesGeneratedByDelegate];
  v15 = [v14 countByEnumeratingWithState:&v100 objects:v117 count:16];
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
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v100 + 1) + 8 * i);
        v20 = [(_UIActivityHelper *)self delegate];
        v21 = [(_UIActivityHelper *)self sessionID];
        v22 = [v20 activityHelper:self matchingWithContext:v9 shouldIncludeSystemActivityType:v19 sessionID:v21];

        if (v22)
        {
          v23 = [(_UIActivityHelper *)self delegate];
          v24 = [(_UIActivityHelper *)self sessionID];
          v25 = [v23 activityHelper:self activitiesForActivityType:v19 matchingContext:v9 sessionID:v24];

          if (v25)
          {
            [v91 addObjectsFromArray:v25];
          }
        }

        else
        {
          v116 = v19;
          v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v116 count:1];
          [v88 addExcludedActivityTypes:v25];
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v100 objects:v117 count:16];
    }

    while (v16);
  }

  v26 = [v9 prematchedExtensionActivities];
  v78 = v26;
  if (v26)
  {
    [v91 addObjectsFromArray:v26];
    v27 = v88;
    v28 = v93;
  }

  else
  {
    v27 = v88;
    v28 = v93;
    if (a5 && [v9 allowMatchingExtensionActivities])
    {
      if ([(_UIActivityHelper *)self primed])
      {
        [(_UIActivityHelper *)self setPrimed:0];
      }

      else
      {
        v71 = objc_alloc_init(_UIActivityApplicationExtensionDiscovery);
        [(_UIActivityHelper *)self setApplicationExtensionDiscovery:v71];

        v72 = [(_UIActivityHelper *)self fetchShortcutsBlock];
        v73 = [(_UIActivityHelper *)self applicationExtensionDiscovery];
        [v73 setFetchShortcutsBlock:v72];
      }

      v74 = [(_UIActivityHelper *)self applicationExtensionDiscovery];
      v99 = 0;
      v75 = [v74 activitiesForMatchingContext:v9 error:&v99];
      v76 = v99;

      if (v75)
      {
        [v91 addObjectsFromArray:v75];
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

  [v91 addObjectsFromArray:v80];
  v82 = v91;
  v29 = [v82 count];
  if (v29)
  {
    v30 = v29 - 1;
    do
    {
      v31 = [v82 objectAtIndexedSubscript:v30];
      v32 = [v31 activityType];
      v33 = [@"com.apple.UIKit.activity.OpenWithApp-com.apple.DocumentsApp" isEqualToString:v32];

      if (v33)
      {
        [v82 removeObjectAtIndex:v30];
      }

      --v30;
    }

    while (v30 != -1);
  }

  v34 = _UIActivityGetOrderedBuiltinActivitiesFromActivities(v82);
  v35 = [(_UIActivityHelper *)self _activitiesByApplyingBeforeTypePinningToActivities:v34 activitiesToBeforeTypePin:v80];

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
        if ([v94 containsObject:v39])
        {
          v40 = [v39 activityType];
          v41 = [v40 isEqualToString:@"com.apple.UIKit.activity.AirDrop"];

          if ((v41 & 1) == 0)
          {
            v42 = [(_UIActivityHelper *)self delegate];
            v43 = [v39 activityType];
            v44 = [(_UIActivityHelper *)self sessionID];
            v45 = [v42 activityHelper:self matchingWithContext:v9 shouldIncludeSystemActivityType:v43 sessionID:v44];

            v37 = v87;
            if ((v45 & 1) == 0)
            {
              v50 = [v39 activityType];
              v114 = v50;
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

        if ([v9 shouldExcludeActivity:v39])
        {
          v46 = [v39 activityType];
          v112 = v46;
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

        if ((v86 & (1 << [objc_opt_class() activityCategory])) != 0)
        {
          v48 = share_sheet_log();
          if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
          {
            [_UIActivityHelper _enumerateAvailableActivitiesForMatchingContext:v110 intoMatchingResults:v39 matchingResultsUpdateBlock:? enumerateActivityBlock:?];
          }

          goto LABEL_42;
        }

        if (v85)
        {
          v49 = [v39 activityType];
          if (([v85 containsObject:v49] & 1) != 0 || v83 && objc_msgSend(objc_opt_class(), "activityCategory") == 1)
          {
          }

          else
          {
            v52 = [v39 activityType];
            v53 = [v52 isEqualToString:@"com.apple.UIKit.activity.Share"];

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

        _setIsContentManagedIfResctrictableActivity(v39, v84);
        v54 = [v39 activityType];
        if ([v54 isEqualToString:@"com.apple.UIKit.activity.CopyToPasteboard"] && objc_msgSend(v28, "count"))
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

        v58 = [v39 activityType];
        v59 = [v58 isEqualToString:@"com.apple.UIKit.activity.SharePlay"];

        if (v59)
        {
          v108 = v39;
          v60 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v108 count:1];
          [v27 addHiddenActivities:v60];

          if ([v9 showSharePlayProminently])
          {
            v48 = share_sheet_log();
            if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
            {
              [_UIActivityHelper _enumerateAvailableActivitiesForMatchingContext:v107 intoMatchingResults:v39 matchingResultsUpdateBlock:? enumerateActivityBlock:?];
            }

            goto LABEL_42;
          }
        }

        v61 = [v39 activityType];
        v62 = [v61 isEqualToString:@"com.apple.InCallService.ShareExtension"];

        if (v62)
        {
          v106 = v39;
          v63 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v106 count:1];
          [v27 addHiddenActivities:v63];

          v48 = share_sheet_log();
          if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
          {
            v64 = [v39 activityType];
            *buf = 138412290;
            v105 = v64;
            _os_log_impl(&dword_18B359000, v48, OS_LOG_TYPE_DEFAULT, "Excluding activityType %@ because it should only ever be shown as a suggestion", buf, 0xCu);
          }

          goto LABEL_42;
        }

        v81[2](v81, v39);
LABEL_43:
        ++v38;
        v28 = v93;
      }

      while (v37 != v38);
      v70 = [obja countByEnumeratingWithState:&v95 objects:v115 count:16];
      v37 = v70;
    }

    while (v70);
  }
}

- (void)preheatAvailableActivitiesForMatchingContext:(id)a3
{
  v5 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v6 = a3;
  v7 = dispatch_queue_create("com.apple.ShareUI.activityPreheating", v5);

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __66___UIActivityHelper_preheatAvailableActivitiesForMatchingContext___block_invoke;
  v9[3] = &unk_1E71FB3C8;
  v10 = v7;
  v8 = v7;
  [(_UIActivityHelper *)self _enumerateAvailableActivitiesForMatchingContext:v6 intoMatchingResults:0 matchingResultsUpdateBlock:0 enumerateActivityBlock:v9];
}

- (id)orderedAvailableActivitiesForMatchingContext:(id)a3
{
  v4 = a3;
  v5 = [v4 activityItemValues];
  v6 = [v4 isContentManaged];
  v7 = [v4 sourceApplicationIdentifier];
  v45 = self;
  v8 = [(_UIActivityHelper *)self cachedBuiltinActivities];
  v9 = [_UIActivityPlaceholderItemProxy unproxiedItemsForItems:v5];
  v10 = [v4 allowMatchingExtensionActivities];
  v11 = share_sheet_log();
  v12 = share_sheet_log();
  v13 = os_signpost_id_make_with_pointer(v12, v4);

  if (v10)
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

  v15 = [[_UIActivityMatchingResults alloc] initWithActivityMatchingContext:v4];
  v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = __66___UIActivityHelper_orderedAvailableActivitiesForMatchingContext___block_invoke_2;
  v46[3] = &unk_1E71FB410;
  v47 = v8;
  v48 = v5;
  v49 = v9;
  v17 = v4;
  v50 = v17;
  v51 = v7;
  v18 = v16;
  v52 = v18;
  v53 = v6;
  v44 = v7;
  v43 = v9;
  v19 = v5;
  v20 = v8;
  [(_UIActivityHelper *)v45 _enumerateAvailableActivitiesForMatchingContext:v17 intoMatchingResults:v15 matchingResultsUpdateBlock:&__block_literal_global_221 enumerateActivityBlock:v46];
  v21 = share_sheet_log();
  v22 = share_sheet_log();
  v23 = os_signpost_id_make_with_pointer(v22, v17);

  v24 = v23 - 1;
  if (v10)
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

  v30 = [v17 externalMatchBuiltinOrderedActivities];
  v31 = v30;
  v32 = MEMORY[0x1E695E0F0];
  if (v30)
  {
    v32 = v30;
  }

  v33 = v32;

  v34 = [v33 arrayByAddingObjectsFromArray:v18];

  v35 = ([v17 excludedActivityCategories] & 2) != 0 || objc_msgSend(v17, "sharingStyle") == 2;
  v36 = [v17 activityTypeOrder];
  v37 = [(_UIActivityHelper *)v45 activitiesByOrderingActivities:v34 applyDefaultOrdering:1 applyBeforeTypePinning:1 activityTypeOrdering:v36 bypassDuet:v35];
  [(_UIActivityMatchingResults *)v15 setOrderedActivities:v37];

  v38 = share_sheet_log();
  v39 = share_sheet_log();
  v40 = os_signpost_id_make_with_pointer(v39, v17);

  if (v10)
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

- (id)activitiesByOrderingActivities:(id)a3 applyDefaultOrdering:(BOOL)a4 applyBeforeTypePinning:(BOOL)a5 activityTypeOrdering:(id)a6 bypassDuet:(BOOL)a7
{
  v9 = a5;
  v10 = a4;
  v29[1] = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a6;
  v14 = v12;
  v15 = v14;
  if (v10)
  {
    v15 = [(_UIActivityHelper *)self _activitiesByApplyingDefaultOrdering:v14];

    if (!v9)
    {
LABEL_3:
      if (!v13)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if (!v9)
  {
    goto LABEL_3;
  }

  v27 = [(_UIActivityHelper *)self _activitiesByApplyingBeforeTypePinningToActivities:v15 activitiesToBeforeTypePin:v15];

  v15 = v27;
  if (v13)
  {
LABEL_4:
    v16 = [(_UIActivityHelper *)self _activitiesByTypeOrderingActivities:v15 activityTypeOrdering:v13];

    v15 = v16;
  }

LABEL_5:
  if (([v13 containsObject:@"com.apple.UIKit.activity.Share"] & 1) == 0)
  {
    v29[0] = @"com.apple.UIKit.activity.Share";
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:1];
    v18 = [(_UIActivityHelper *)self _activitiesByApplyingFavoriteOrderingToActivities:v15 favoriteActivityTypes:v17];

    v15 = v18;
  }

  if (!a7)
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

- (id)_activitiesByApplyingDefaultOrdering:(id)a3
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __58___UIActivityHelper__activitiesByApplyingDefaultOrdering___block_invoke;
  v7[3] = &unk_1E71FB438;
  v7[4] = self;
  v3 = _mapArray(a3, v7);
  v4 = [v3 sortedArrayUsingSelector:sel_compare_];
  v5 = _mapArray(v4, &__block_literal_global_227);

  return v5;
}

- (id)_defaultOrderingDescriptorForActivity:(id)a3
{
  v4 = a3;
  v5 = [v4 _defaultSortGroup];
  v6 = 0;
  if (v5 <= 3)
  {
    switch(v5)
    {
      case 1:
        v7 = [(_UIActivityHelper *)self _defaultSortOrderForBuiltInElevatedActivity:v4];
        break;
      case 2:
        v7 = [(_UIActivityHelper *)self _defaultSortItemForBuiltinActivity:v4];
        break;
      case 3:
        v7 = [(_UIActivityHelper *)self _defaultSortOrderForApplicationDefinedActivity:v4];
        break;
      default:
        goto LABEL_18;
    }
  }

  else if (v5 > 5)
  {
    if (v5 == 6)
    {
      v7 = [(_UIActivityHelper *)self _defaultSortOrderForShortcutActivity:v4];
    }

    else
    {
      if (v5 != 7)
      {
        goto LABEL_18;
      }

      v7 = [(_UIActivityHelper *)self _defaultSortOrderForOtherActivity:v4];
    }
  }

  else
  {
    if (v5 == 4)
    {
      [(_UIActivityHelper *)self _defaultSortOrderForExtensionBasedActivity:v4];
    }

    else
    {
      [(_UIActivityHelper *)self _defaultSortOrderForOpenInAppActivity:v4];
    }
    v7 = ;
  }

  v6 = v7;
LABEL_18:

  return v6;
}

- (id)_defaultSortOrderForBuiltInElevatedActivity:(id)a3
{
  v3 = a3;
  v4 = +[_UIActivityUserDefaults builtinActivityOrder];
  v5 = [v3 activityType];
  v6 = [v4 indexOfObject:v5];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [_UIActivitySortItem sortDescriptorForActivity:v3 withGroup:1 secondarySortValue:&unk_1EFEC9710];
  }

  else
  {
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v6 + 1000];
    v7 = [_UIActivitySortItem sortDescriptorForActivity:v3 withGroup:1 secondarySortValue:v8];
  }

  return v7;
}

- (id)_defaultSortItemForBuiltinActivity:(id)a3
{
  v3 = a3;
  v4 = +[_UIActivityUserDefaults builtinActivityOrder];
  v5 = [v3 activityType];
  v6 = [v4 indexOfObject:v5];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [_UIActivitySortItem sortDescriptorForActivity:v3 withGroup:2 secondarySortValue:&unk_1EFEC9710];
  }

  else
  {
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v6 + 1000];
    v7 = [_UIActivitySortItem sortDescriptorForActivity:v3 withGroup:2 secondarySortValue:v8];
  }

  return v7;
}

- (id)_defaultSortOrderForExtensionBasedActivity:(id)a3
{
  v3 = a3;
  v4 = +[_UIActivityUserDefaults builtinActivityOrder];
  v5 = [v3 activityType];
  v6 = [v4 indexOfObject:v5];

  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v6 + 3000];
    v17 = v3;
    v18 = 2;
LABEL_8:
    v16 = [_UIActivitySortItem sortDescriptorForActivity:v17 withGroup:v18 secondarySortValue:v7];
    goto LABEL_9;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v7 = [v3 activityTitle];
    v17 = v3;
    v18 = 7;
    goto LABEL_8;
  }

  v7 = v3;
  v8 = [v7 installationDate];
  [v8 timeIntervalSinceReferenceDate];
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
  v16 = [_UIActivitySortItem sortDescriptorForActivity:v7 withGroup:4 secondarySortValue:v15];

LABEL_9:

  return v16;
}

- (id)_defaultSortOrderForApplicationDefinedActivity:(id)a3
{
  v3 = MEMORY[0x1E696AD98];
  v4 = a3;
  v5 = [v3 numberWithUnsignedInteger:{objc_msgSend(v4, "indexInApplicationDefinedActivities")}];
  v6 = [_UIActivitySortItem sortDescriptorForActivity:v4 withGroup:3 secondarySortValue:v5];

  return v6;
}

- (id)_defaultSortOrderForOpenInAppActivity:(id)a3
{
  v3 = a3;
  if ([v3 _appIsDocumentTypeOwner])
  {
    v4 = 0;
  }

  else
  {
    v4 = 10;
  }

  v5 = [v3 _supportsOpenInPlace];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:v4 | v5 ^ 1u];
  v7 = [v3 activityTitle];
  v8 = [_UIActivitySortItem sortDescriptorForActivity:v3 withGroup:5 secondarySortValue:v6 tertiarySortValue:v7];

  return v8;
}

- (id)_defaultSortOrderForShortcutActivity:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 sortValue];
  }

  else
  {
    v4 = &unk_1EFEC9728;
  }

  v5 = [_UIActivitySortItem sortDescriptorForActivity:v3 withGroup:6 secondarySortValue:v4];

  return v5;
}

- (id)_defaultSortOrderForOtherActivity:(id)a3
{
  v3 = a3;
  v4 = [v3 activityTitle];
  v5 = [_UIActivitySortItem sortDescriptorForActivity:v3 withGroup:7 secondarySortValue:v4];

  return v5;
}

- (id)_activitiesByApplyingBeforeTypePinningToActivities:(id)a3 activitiesToBeforeTypePin:(id)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [a3 mutableCopy];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = v5;
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
        v12 = [v11 _beforeActivity];
        v13 = v12;
        if (v12)
        {
          v14 = v12;
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

- (id)_activitiesByTypeOrderingActivities:(id)a3 activityTypeOrdering:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if ([v6 count])
  {
    v7 = [v5 mutableCopy];
    v17 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v7, "count")}];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    obj = v6;
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
    v17 = v5;
  }

  return v17;
}

- (id)_activitiesByApplyingFavoriteOrderingToActivities:(id)a3 favoriteActivityTypes:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [a3 mutableCopy];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = [v5 reverseObjectEnumerator];
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

- (id)_activitiesByDuetOrderingActivities:(id)a3
{
  v70 = *MEMORY[0x1E69E9840];
  v43 = a3;
  v4 = [(_UIActivityHelper *)self delegate];
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
    v42 = [v6 defaultConfiguration];
    [v42 setMaximumNumberOfSuggestions:8];
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
    v39 = [[v8 alloc] initWithDaemonUsingConfiguration:v42];
    v10 = [(_UIActivityHelper *)self delegate];
    v11 = [(_UIActivityHelper *)self sessionID];
    v41 = [v10 activityHelper:self predictionContextForSessionID:v11];

    v46 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v43, "count")}];
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v12 = v43;
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
            v17 = [v16 containingAppBundleIdentifier];
            v18 = [v16 activityType];
            v19 = [v46 objectForKeyedSubscript:v17];
            v20 = v19;
            if (v19)
            {
              if (([v19 containsObject:v18] & 1) == 0)
              {
                [v20 addObject:v18];
              }

              if (!v17)
              {
                goto LABEL_19;
              }

LABEL_18:
              [v46 setObject:v20 forKeyedSubscript:v17];
            }

            else
            {
              v20 = [MEMORY[0x1E695DF70] arrayWithObject:v18];
              if (v17)
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
              v27 = [v25 bundleID];
              LODWORD(buf) = 138412290;
              *(&buf + 4) = v27;
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

    v37 = v43;
  }

  else
  {
    v37 = v43;
    v44 = v43;
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