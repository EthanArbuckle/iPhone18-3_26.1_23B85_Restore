@interface SHSheetContentDataSource
- (BOOL)containsSectionForIdentifier:(id)identifier;
- (SHSheetContentDataSource)initWithState:(id)state excludeSectionTypes:(int64_t)types topActionsMaximumCount:(unint64_t)count;
- (id)_createDiffableSnapshotFromCurrentState;
- (id)actionProxyForIdentifier:(id)identifier;
- (id)activityForIdentifier:(id)identifier;
- (id)createChangeRequestFromCurrentState;
- (id)description;
- (id)identifierForActivity:(id)activity;
- (id)peopleProxyForIdentifier:(id)identifier;
- (id)shareProxyForIdentifier:(id)identifier;
- (void)logCurrentState;
@end

@implementation SHSheetContentDataSource

- (SHSheetContentDataSource)initWithState:(id)state excludeSectionTypes:(int64_t)types topActionsMaximumCount:(unint64_t)count
{
  stateCopy = state;
  v27.receiver = self;
  v27.super_class = SHSheetContentDataSource;
  v10 = [(SHSheetContentDataSource *)&v27 init];
  if (v10)
  {
    v11 = share_sheet_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [SHSheetContentDataSource initWithState:excludeSectionTypes:topActionsMaximumCount:];
    }

    objc_storeStrong(&v10->_state, state);
    v10->_excludeSectionTypes = types;
    v10->_topActionsMaximumCount = count;
    _createDiffableSnapshotFromCurrentState = [(SHSheetContentDataSource *)v10 _createDiffableSnapshotFromCurrentState];
    diffableSnapshot = v10->_diffableSnapshot;
    v10->_diffableSnapshot = _createDiffableSnapshotFromCurrentState;

    peopleProxies = [stateCopy peopleProxies];
    peopleProxies = v10->_peopleProxies;
    v10->_peopleProxies = peopleProxies;

    shareProxies = [stateCopy shareProxies];
    shareProxies = v10->_shareProxies;
    v10->_shareProxies = shareProxies;

    actionProxies = [stateCopy actionProxies];
    actionProxies = v10->_actionProxies;
    v10->_actionProxies = actionProxies;

    v10->_nearbyCountSlotID = [stateCopy nearbyCountSlotID];
    airDropProxy = [stateCopy airDropProxy];
    airDropProxy = v10->_airDropProxy;
    v10->_airDropProxy = airDropProxy;

    v22 = [[_UIUserDefaultsActivity alloc] initWithUserDefaults:0 activityCategory:1];
    shareUserDefaultsActivity = v10->_shareUserDefaultsActivity;
    v10->_shareUserDefaultsActivity = v22;

    v24 = [[_UIUserDefaultsActivity alloc] initWithUserDefaults:0 activityCategory:0];
    actionUserDefaultsActivity = v10->_actionUserDefaultsActivity;
    v10->_actionUserDefaultsActivity = v24;
  }

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SHSheetContentDataSource;
  v4 = [(SHSheetContentDataSource *)&v8 description];
  v5 = SHSheetContentSectionTypeDescription([(SHSheetContentDataSource *)self excludeSectionTypes]);
  v6 = [v3 stringWithFormat:@"<%@ excludeSectionTypes:%@>", v4, v5];

  return v6;
}

- (BOOL)containsSectionForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  diffableSnapshot = [(SHSheetContentDataSource *)self diffableSnapshot];
  sectionIdentifiers = [diffableSnapshot sectionIdentifiers];
  v7 = [sectionIdentifiers containsObject:identifierCopy];

  return v7;
}

- (id)peopleProxyForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  state = [(SHSheetContentDataSource *)self state];
  peopleProxyByUUID = [state peopleProxyByUUID];
  v7 = [peopleProxyByUUID objectForKeyedSubscript:identifierCopy];

  return v7;
}

- (id)shareProxyForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  state = [(SHSheetContentDataSource *)self state];
  shareProxyByUUID = [state shareProxyByUUID];
  v7 = [shareProxyByUUID objectForKeyedSubscript:identifierCopy];

  return v7;
}

- (id)actionProxyForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  state = [(SHSheetContentDataSource *)self state];
  actionProxyByUUID = [state actionProxyByUUID];
  v7 = [actionProxyByUUID objectForKeyedSubscript:identifierCopy];

  return v7;
}

- (id)activityForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  state = [(SHSheetContentDataSource *)self state];
  moreActionIdentifier = [state moreActionIdentifier];
  v7 = [identifierCopy isEqual:moreActionIdentifier];

  if (v7)
  {
    actionUserDefaultsActivity = [(SHSheetContentDataSource *)self actionUserDefaultsActivity];
  }

  else
  {
    state2 = [(SHSheetContentDataSource *)self state];
    activitiesByUUID = [state2 activitiesByUUID];
    actionUserDefaultsActivity = [activitiesByUUID objectForKeyedSubscript:identifierCopy];

    if (!actionUserDefaultsActivity)
    {
      v11 = [(SHSheetContentDataSource *)self shareProxyForIdentifier:identifierCopy];
      v12 = v11;
      if (v11 && [v11 isUserDefaultsActivity])
      {
        actionUserDefaultsActivity = [(SHSheetContentDataSource *)self shareUserDefaultsActivity];
      }

      else
      {
        actionUserDefaultsActivity = 0;
      }
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v13 = share_sheet_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        [SHSheetContentDataSource activityForIdentifier:];
      }

      actionUserDefaultsActivity = 0;
    }
  }

  return actionUserDefaultsActivity;
}

- (id)identifierForActivity:(id)activity
{
  activityCopy = activity;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy_;
  v17 = __Block_byref_object_dispose_;
  v18 = 0;
  state = [(SHSheetContentDataSource *)self state];
  activitiesByUUID = [state activitiesByUUID];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __50__SHSheetContentDataSource_identifierForActivity___block_invoke;
  v10[3] = &unk_1E71F93E0;
  v7 = activityCopy;
  v11 = v7;
  v12 = &v13;
  [activitiesByUUID enumerateKeysAndObjectsUsingBlock:v10];

  v8 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v8;
}

void __50__SHSheetContentDataSource_identifierForActivity___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v12 = a2;
  v8 = *(a1 + 32);
  v9 = a3;
  v10 = [v8 activityType];
  v11 = [v9 activityType];

  LODWORD(v9) = [v10 isEqual:v11];
  if (v9)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (id)createChangeRequestFromCurrentState
{
  state = [(SHSheetContentDataSource *)self state];
  v3 = [SHSheetContentDataSourceChangeRequest changeRequestFromState:state];

  return v3;
}

- (id)_createDiffableSnapshotFromCurrentState
{
  v123[1] = *MEMORY[0x1E69E9840];
  state = [(SHSheetContentDataSource *)self state];
  peopleIdentifiers = [state peopleIdentifiers];

  state2 = [(SHSheetContentDataSource *)self state];
  shareIdentifiers = [state2 shareIdentifiers];

  state3 = [(SHSheetContentDataSource *)self state];
  heroActionIdentifiers = [state3 heroActionIdentifiers];

  state4 = [(SHSheetContentDataSource *)self state];
  informationalActionIdentifiers = [state4 informationalActionIdentifiers];

  state5 = [(SHSheetContentDataSource *)self state];
  favoriteActionIdentifiers = [state5 favoriteActionIdentifiers];

  state6 = [(SHSheetContentDataSource *)self state];
  systemActionIdentifiers = [state6 systemActionIdentifiers];

  state7 = [(SHSheetContentDataSource *)self state];
  extensionActionIdentifiers = [state7 extensionActionIdentifiers];

  state8 = [(SHSheetContentDataSource *)self state];
  customActionIdentifiersByCustomSectionIdentifier = [state8 customActionIdentifiersByCustomSectionIdentifier];

  state9 = [(SHSheetContentDataSource *)self state];
  customSectionIdentifiers = [state9 customSectionIdentifiers];

  state10 = [(SHSheetContentDataSource *)self state];
  actionProxies = [state10 actionProxies];

  excludeSectionTypes = [(SHSheetContentDataSource *)self excludeSectionTypes];
  v20 = objc_alloc_init(MEMORY[0x1E69955A0]);
  v99 = peopleIdentifiers;
  if ((excludeSectionTypes & 1) == 0)
  {
    v123[0] = @"SHSheetContentCustomViewSectionIdentifier";
    v21 = favoriteActionIdentifiers;
    v22 = heroActionIdentifiers;
    v23 = systemActionIdentifiers;
    v24 = shareIdentifiers;
    v25 = excludeSectionTypes;
    v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v123 count:1];
    [v20 appendSectionsWithIdentifiers:v26];

    v27 = +[SHSheetContentDataSourceManager contentCustomViewUniqueIdentifier];
    v122 = v27;
    [MEMORY[0x1E695DEC8] arrayWithObjects:&v122 count:1];
    v29 = v28 = informationalActionIdentifiers;
    [v20 appendItemsWithIdentifiers:v29 intoSectionWithIdentifier:@"SHSheetContentCustomViewSectionIdentifier"];

    informationalActionIdentifiers = v28;
    excludeSectionTypes = v25;
    shareIdentifiers = v24;
    systemActionIdentifiers = v23;
    heroActionIdentifiers = v22;
    favoriteActionIdentifiers = v21;

    peopleIdentifiers = v99;
  }

  if ((excludeSectionTypes & 2) == 0 && [peopleIdentifiers count])
  {
    v121 = @"SHSheetContentPeopleSectionIdentifier";
    v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v121 count:1];
    [v20 appendSectionsWithIdentifiers:v30];

    state11 = [(SHSheetContentDataSource *)self state];
    [state11 peopleIdentifiers];
    v32 = favoriteActionIdentifiers;
    v33 = heroActionIdentifiers;
    v34 = systemActionIdentifiers;
    v35 = shareIdentifiers;
    v36 = excludeSectionTypes;
    v38 = v37 = informationalActionIdentifiers;
    [v20 appendItemsWithIdentifiers:v38 intoSectionWithIdentifier:@"SHSheetContentPeopleSectionIdentifier"];

    informationalActionIdentifiers = v37;
    excludeSectionTypes = v36;
    shareIdentifiers = v35;
    systemActionIdentifiers = v34;
    heroActionIdentifiers = v33;
    favoriteActionIdentifiers = v32;

    peopleIdentifiers = v99;
  }

  if ((excludeSectionTypes & 4) == 0 && [shareIdentifiers count])
  {
    v120 = @"SHSheetContentAppsSectionIdentifier";
    v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v120 count:1];
    [v20 appendSectionsWithIdentifiers:v39];

    peopleIdentifiers = v99;
    [v20 appendItemsWithIdentifiers:shareIdentifiers intoSectionWithIdentifier:@"SHSheetContentAppsSectionIdentifier"];
  }

  v100 = systemActionIdentifiers;
  if ((excludeSectionTypes & 0x20) == 0)
  {
    v90 = shareIdentifiers;
    array = [MEMORY[0x1E695DF70] array];
    [array addObjectsFromArray:heroActionIdentifiers];
    [array addObjectsFromArray:informationalActionIdentifiers];
    [array addObjectsFromArray:favoriteActionIdentifiers];
    [array addObjectsFromArray:systemActionIdentifiers];
    [array addObjectsFromArray:extensionActionIdentifiers];
    topActionsMaximumCount = [(SHSheetContentDataSource *)self topActionsMaximumCount];
    if (topActionsMaximumCount <= [array count])
    {
      topActionsMaximumCount2 = [(SHSheetContentDataSource *)self topActionsMaximumCount];
    }

    else
    {
      topActionsMaximumCount2 = [array count];
    }

    v43 = topActionsMaximumCount2;
    v44 = [array count];
    v88 = excludeSectionTypes;
    v46 = (excludeSectionTypes & 8) == 0 || v43 >= v44;
    topActionsMaximumCount3 = [(SHSheetContentDataSource *)self topActionsMaximumCount];
    if (array)
    {
      [array subarrayWithRange:{0, v43 - (v43 >= topActionsMaximumCount3 && !v46)}];
    }

    else
    {
      [MEMORY[0x1E695DEC8] array];
    }
    v48 = ;
    if (!v46)
    {
      state12 = [(SHSheetContentDataSource *)self state];
      moreActionIdentifier = [state12 moreActionIdentifier];
      [v48 arrayByAddingObject:moreActionIdentifier];
      v52 = v51 = informationalActionIdentifiers;

      v48 = v52;
      informationalActionIdentifiers = v51;
    }

    v94 = informationalActionIdentifiers;
    v119 = @"SHSheetContentTopActionsSectionIdentifier";
    v53 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v119 count:1];
    [v20 appendSectionsWithIdentifiers:v53];

    [v20 appendItemsWithIdentifiers:v48 intoSectionWithIdentifier:@"SHSheetContentTopActionsSectionIdentifier"];
    v54 = [heroActionIdentifiers mutableCopy];
    v55 = [informationalActionIdentifiers mutableCopy];
    v56 = [favoriteActionIdentifiers mutableCopy];
    v57 = heroActionIdentifiers;
    v58 = [systemActionIdentifiers mutableCopy];
    v59 = [extensionActionIdentifiers mutableCopy];
    [v54 removeObjectsInArray:v48];
    [v55 removeObjectsInArray:v48];
    [v56 removeObjectsInArray:v48];
    [v58 removeObjectsInArray:v48];
    [v59 removeObjectsInArray:v48];
    v87 = [v54 copy];

    v86 = [v55 copy];
    v95 = [v56 copy];

    v92 = [v58 copy];
    v60 = [v59 copy];

    favoriteActionIdentifiers = v95;
    v100 = v92;
    extensionActionIdentifiers = v60;
    informationalActionIdentifiers = v86;
    heroActionIdentifiers = v87;
    excludeSectionTypes = v88;
    shareIdentifiers = v90;
    peopleIdentifiers = v99;
  }

  if ((excludeSectionTypes & 8) == 0 && [actionProxies count])
  {
    if ((excludeSectionTypes & 0x10) == 0 && [heroActionIdentifiers count])
    {
      v118 = @"SHSheetContentHeroActionsSectionIdentifier";
      v61 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v118 count:1];
      [v20 appendSectionsWithIdentifiers:v61];

      [v20 appendItemsWithIdentifiers:heroActionIdentifiers intoSectionWithIdentifier:@"SHSheetContentHeroActionsSectionIdentifier"];
    }

    v89 = heroActionIdentifiers;
    v93 = favoriteActionIdentifiers;
    v96 = informationalActionIdentifiers;
    if ([informationalActionIdentifiers count])
    {
      v91 = shareIdentifiers;
      v109 = 0u;
      v110 = 0u;
      v107 = 0u;
      v108 = 0u;
      v62 = informationalActionIdentifiers;
      v63 = [v62 countByEnumeratingWithState:&v107 objects:v117 count:16];
      if (v63)
      {
        v64 = v63;
        v65 = *v108;
        do
        {
          for (i = 0; i != v64; ++i)
          {
            if (*v108 != v65)
            {
              objc_enumerationMutation(v62);
            }

            v67 = *(*(&v107 + 1) + 8 * i);
            uUIDString = [v67 UUIDString];
            v69 = [@"SHSheetContentInformationalActionsSectionIdentifier_" stringByAppendingString:uUIDString];

            v116 = v69;
            v70 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v116 count:1];
            [v20 appendSectionsWithIdentifiers:v70];

            v115 = v67;
            v71 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v115 count:1];
            [v20 appendItemsWithIdentifiers:v71 intoSectionWithIdentifier:v69];
          }

          v64 = [v62 countByEnumeratingWithState:&v107 objects:v117 count:16];
        }

        while (v64);
      }

      peopleIdentifiers = v99;
      heroActionIdentifiers = v89;
      shareIdentifiers = v91;
      favoriteActionIdentifiers = v93;
      informationalActionIdentifiers = v96;
    }

    if ([favoriteActionIdentifiers count])
    {
      v114 = @"SHSheetContentFavoriteActionsSectionIdentifier";
      v72 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v114 count:1];
      [v20 appendSectionsWithIdentifiers:v72];

      [v20 appendItemsWithIdentifiers:favoriteActionIdentifiers intoSectionWithIdentifier:@"SHSheetContentFavoriteActionsSectionIdentifier"];
    }

    if ([customSectionIdentifiers count])
    {
      v73 = peopleIdentifiers;
      array2 = [customSectionIdentifiers array];
      [v20 appendSectionsWithIdentifiers:array2];

      v105 = 0u;
      v106 = 0u;
      v103 = 0u;
      v104 = 0u;
      v75 = customSectionIdentifiers;
      v76 = [v75 countByEnumeratingWithState:&v103 objects:v113 count:16];
      if (v76)
      {
        v77 = v76;
        v78 = *v104;
        do
        {
          for (j = 0; j != v77; ++j)
          {
            if (*v104 != v78)
            {
              objc_enumerationMutation(v75);
            }

            v80 = *(*(&v103 + 1) + 8 * j);
            v81 = [customActionIdentifiersByCustomSectionIdentifier objectForKeyedSubscript:v80];
            [v20 appendItemsWithIdentifiers:v81 intoSectionWithIdentifier:v80];
          }

          v77 = [v75 countByEnumeratingWithState:&v103 objects:v113 count:16];
        }

        while (v77);
      }

      peopleIdentifiers = v73;
      heroActionIdentifiers = v89;
      favoriteActionIdentifiers = v93;
      informationalActionIdentifiers = v96;
    }

    if ([v100 count])
    {
      v112 = @"SHSheetContentSystemActionsSectionIdentifier";
      v82 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v112 count:1];
      [v20 appendSectionsWithIdentifiers:v82];

      [v20 appendItemsWithIdentifiers:v100 intoSectionWithIdentifier:@"SHSheetContentSystemActionsSectionIdentifier"];
    }

    if ([extensionActionIdentifiers count])
    {
      v111 = @"SHSheetContentExtensionActionsSectionIdentifier";
      v83 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v111 count:1];
      [v20 appendSectionsWithIdentifiers:v83];

      [v20 appendItemsWithIdentifiers:extensionActionIdentifiers intoSectionWithIdentifier:@"SHSheetContentExtensionActionsSectionIdentifier"];
    }
  }

  v84 = share_sheet_log();
  if (os_log_type_enabled(v84, OS_LOG_TYPE_DEBUG))
  {
    [SHSheetContentDataSource _createDiffableSnapshotFromCurrentState];
  }

  return v20;
}

- (void)logCurrentState
{
  state = [(SHSheetContentDataSource *)self state];
  [state logDiagnosticProperties];
}

@end