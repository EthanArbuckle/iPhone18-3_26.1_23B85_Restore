@interface SHSheetContentDataSource
- (BOOL)containsSectionForIdentifier:(id)a3;
- (SHSheetContentDataSource)initWithState:(id)a3 excludeSectionTypes:(int64_t)a4 topActionsMaximumCount:(unint64_t)a5;
- (id)_createDiffableSnapshotFromCurrentState;
- (id)actionProxyForIdentifier:(id)a3;
- (id)activityForIdentifier:(id)a3;
- (id)createChangeRequestFromCurrentState;
- (id)description;
- (id)identifierForActivity:(id)a3;
- (id)peopleProxyForIdentifier:(id)a3;
- (id)shareProxyForIdentifier:(id)a3;
- (void)logCurrentState;
@end

@implementation SHSheetContentDataSource

- (SHSheetContentDataSource)initWithState:(id)a3 excludeSectionTypes:(int64_t)a4 topActionsMaximumCount:(unint64_t)a5
{
  v9 = a3;
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

    objc_storeStrong(&v10->_state, a3);
    v10->_excludeSectionTypes = a4;
    v10->_topActionsMaximumCount = a5;
    v12 = [(SHSheetContentDataSource *)v10 _createDiffableSnapshotFromCurrentState];
    diffableSnapshot = v10->_diffableSnapshot;
    v10->_diffableSnapshot = v12;

    v14 = [v9 peopleProxies];
    peopleProxies = v10->_peopleProxies;
    v10->_peopleProxies = v14;

    v16 = [v9 shareProxies];
    shareProxies = v10->_shareProxies;
    v10->_shareProxies = v16;

    v18 = [v9 actionProxies];
    actionProxies = v10->_actionProxies;
    v10->_actionProxies = v18;

    v10->_nearbyCountSlotID = [v9 nearbyCountSlotID];
    v20 = [v9 airDropProxy];
    airDropProxy = v10->_airDropProxy;
    v10->_airDropProxy = v20;

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

- (BOOL)containsSectionForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(SHSheetContentDataSource *)self diffableSnapshot];
  v6 = [v5 sectionIdentifiers];
  v7 = [v6 containsObject:v4];

  return v7;
}

- (id)peopleProxyForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(SHSheetContentDataSource *)self state];
  v6 = [v5 peopleProxyByUUID];
  v7 = [v6 objectForKeyedSubscript:v4];

  return v7;
}

- (id)shareProxyForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(SHSheetContentDataSource *)self state];
  v6 = [v5 shareProxyByUUID];
  v7 = [v6 objectForKeyedSubscript:v4];

  return v7;
}

- (id)actionProxyForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(SHSheetContentDataSource *)self state];
  v6 = [v5 actionProxyByUUID];
  v7 = [v6 objectForKeyedSubscript:v4];

  return v7;
}

- (id)activityForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(SHSheetContentDataSource *)self state];
  v6 = [v5 moreActionIdentifier];
  v7 = [v4 isEqual:v6];

  if (v7)
  {
    v8 = [(SHSheetContentDataSource *)self actionUserDefaultsActivity];
  }

  else
  {
    v9 = [(SHSheetContentDataSource *)self state];
    v10 = [v9 activitiesByUUID];
    v8 = [v10 objectForKeyedSubscript:v4];

    if (!v8)
    {
      v11 = [(SHSheetContentDataSource *)self shareProxyForIdentifier:v4];
      v12 = v11;
      if (v11 && [v11 isUserDefaultsActivity])
      {
        v8 = [(SHSheetContentDataSource *)self shareUserDefaultsActivity];
      }

      else
      {
        v8 = 0;
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

      v8 = 0;
    }
  }

  return v8;
}

- (id)identifierForActivity:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy_;
  v17 = __Block_byref_object_dispose_;
  v18 = 0;
  v5 = [(SHSheetContentDataSource *)self state];
  v6 = [v5 activitiesByUUID];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __50__SHSheetContentDataSource_identifierForActivity___block_invoke;
  v10[3] = &unk_1E71F93E0;
  v7 = v4;
  v11 = v7;
  v12 = &v13;
  [v6 enumerateKeysAndObjectsUsingBlock:v10];

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
  v2 = [(SHSheetContentDataSource *)self state];
  v3 = [SHSheetContentDataSourceChangeRequest changeRequestFromState:v2];

  return v3;
}

- (id)_createDiffableSnapshotFromCurrentState
{
  v123[1] = *MEMORY[0x1E69E9840];
  v3 = [(SHSheetContentDataSource *)self state];
  v4 = [v3 peopleIdentifiers];

  v5 = [(SHSheetContentDataSource *)self state];
  v6 = [v5 shareIdentifiers];

  v7 = [(SHSheetContentDataSource *)self state];
  v8 = [v7 heroActionIdentifiers];

  v9 = [(SHSheetContentDataSource *)self state];
  v10 = [v9 informationalActionIdentifiers];

  v11 = [(SHSheetContentDataSource *)self state];
  v12 = [v11 favoriteActionIdentifiers];

  v13 = [(SHSheetContentDataSource *)self state];
  v14 = [v13 systemActionIdentifiers];

  v15 = [(SHSheetContentDataSource *)self state];
  v101 = [v15 extensionActionIdentifiers];

  v16 = [(SHSheetContentDataSource *)self state];
  v102 = [v16 customActionIdentifiersByCustomSectionIdentifier];

  v17 = [(SHSheetContentDataSource *)self state];
  v98 = [v17 customSectionIdentifiers];

  v18 = [(SHSheetContentDataSource *)self state];
  v97 = [v18 actionProxies];

  v19 = [(SHSheetContentDataSource *)self excludeSectionTypes];
  v20 = objc_alloc_init(MEMORY[0x1E69955A0]);
  v99 = v4;
  if ((v19 & 1) == 0)
  {
    v123[0] = @"SHSheetContentCustomViewSectionIdentifier";
    v21 = v12;
    v22 = v8;
    v23 = v14;
    v24 = v6;
    v25 = v19;
    v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v123 count:1];
    [v20 appendSectionsWithIdentifiers:v26];

    v27 = +[SHSheetContentDataSourceManager contentCustomViewUniqueIdentifier];
    v122 = v27;
    [MEMORY[0x1E695DEC8] arrayWithObjects:&v122 count:1];
    v29 = v28 = v10;
    [v20 appendItemsWithIdentifiers:v29 intoSectionWithIdentifier:@"SHSheetContentCustomViewSectionIdentifier"];

    v10 = v28;
    v19 = v25;
    v6 = v24;
    v14 = v23;
    v8 = v22;
    v12 = v21;

    v4 = v99;
  }

  if ((v19 & 2) == 0 && [v4 count])
  {
    v121 = @"SHSheetContentPeopleSectionIdentifier";
    v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v121 count:1];
    [v20 appendSectionsWithIdentifiers:v30];

    v31 = [(SHSheetContentDataSource *)self state];
    [v31 peopleIdentifiers];
    v32 = v12;
    v33 = v8;
    v34 = v14;
    v35 = v6;
    v36 = v19;
    v38 = v37 = v10;
    [v20 appendItemsWithIdentifiers:v38 intoSectionWithIdentifier:@"SHSheetContentPeopleSectionIdentifier"];

    v10 = v37;
    v19 = v36;
    v6 = v35;
    v14 = v34;
    v8 = v33;
    v12 = v32;

    v4 = v99;
  }

  if ((v19 & 4) == 0 && [v6 count])
  {
    v120 = @"SHSheetContentAppsSectionIdentifier";
    v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v120 count:1];
    [v20 appendSectionsWithIdentifiers:v39];

    v4 = v99;
    [v20 appendItemsWithIdentifiers:v6 intoSectionWithIdentifier:@"SHSheetContentAppsSectionIdentifier"];
  }

  v100 = v14;
  if ((v19 & 0x20) == 0)
  {
    v90 = v6;
    v40 = [MEMORY[0x1E695DF70] array];
    [v40 addObjectsFromArray:v8];
    [v40 addObjectsFromArray:v10];
    [v40 addObjectsFromArray:v12];
    [v40 addObjectsFromArray:v14];
    [v40 addObjectsFromArray:v101];
    v41 = [(SHSheetContentDataSource *)self topActionsMaximumCount];
    if (v41 <= [v40 count])
    {
      v42 = [(SHSheetContentDataSource *)self topActionsMaximumCount];
    }

    else
    {
      v42 = [v40 count];
    }

    v43 = v42;
    v44 = [v40 count];
    v88 = v19;
    v46 = (v19 & 8) == 0 || v43 >= v44;
    v47 = [(SHSheetContentDataSource *)self topActionsMaximumCount];
    if (v40)
    {
      [v40 subarrayWithRange:{0, v43 - (v43 >= v47 && !v46)}];
    }

    else
    {
      [MEMORY[0x1E695DEC8] array];
    }
    v48 = ;
    if (!v46)
    {
      v49 = [(SHSheetContentDataSource *)self state];
      v50 = [v49 moreActionIdentifier];
      [v48 arrayByAddingObject:v50];
      v52 = v51 = v10;

      v48 = v52;
      v10 = v51;
    }

    v94 = v10;
    v119 = @"SHSheetContentTopActionsSectionIdentifier";
    v53 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v119 count:1];
    [v20 appendSectionsWithIdentifiers:v53];

    [v20 appendItemsWithIdentifiers:v48 intoSectionWithIdentifier:@"SHSheetContentTopActionsSectionIdentifier"];
    v54 = [v8 mutableCopy];
    v55 = [v10 mutableCopy];
    v56 = [v12 mutableCopy];
    v57 = v8;
    v58 = [v14 mutableCopy];
    v59 = [v101 mutableCopy];
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

    v12 = v95;
    v100 = v92;
    v101 = v60;
    v10 = v86;
    v8 = v87;
    v19 = v88;
    v6 = v90;
    v4 = v99;
  }

  if ((v19 & 8) == 0 && [v97 count])
  {
    if ((v19 & 0x10) == 0 && [v8 count])
    {
      v118 = @"SHSheetContentHeroActionsSectionIdentifier";
      v61 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v118 count:1];
      [v20 appendSectionsWithIdentifiers:v61];

      [v20 appendItemsWithIdentifiers:v8 intoSectionWithIdentifier:@"SHSheetContentHeroActionsSectionIdentifier"];
    }

    v89 = v8;
    v93 = v12;
    v96 = v10;
    if ([v10 count])
    {
      v91 = v6;
      v109 = 0u;
      v110 = 0u;
      v107 = 0u;
      v108 = 0u;
      v62 = v10;
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
            v68 = [v67 UUIDString];
            v69 = [@"SHSheetContentInformationalActionsSectionIdentifier_" stringByAppendingString:v68];

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

      v4 = v99;
      v8 = v89;
      v6 = v91;
      v12 = v93;
      v10 = v96;
    }

    if ([v12 count])
    {
      v114 = @"SHSheetContentFavoriteActionsSectionIdentifier";
      v72 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v114 count:1];
      [v20 appendSectionsWithIdentifiers:v72];

      [v20 appendItemsWithIdentifiers:v12 intoSectionWithIdentifier:@"SHSheetContentFavoriteActionsSectionIdentifier"];
    }

    if ([v98 count])
    {
      v73 = v4;
      v74 = [v98 array];
      [v20 appendSectionsWithIdentifiers:v74];

      v105 = 0u;
      v106 = 0u;
      v103 = 0u;
      v104 = 0u;
      v75 = v98;
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
            v81 = [v102 objectForKeyedSubscript:v80];
            [v20 appendItemsWithIdentifiers:v81 intoSectionWithIdentifier:v80];
          }

          v77 = [v75 countByEnumeratingWithState:&v103 objects:v113 count:16];
        }

        while (v77);
      }

      v4 = v73;
      v8 = v89;
      v12 = v93;
      v10 = v96;
    }

    if ([v100 count])
    {
      v112 = @"SHSheetContentSystemActionsSectionIdentifier";
      v82 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v112 count:1];
      [v20 appendSectionsWithIdentifiers:v82];

      [v20 appendItemsWithIdentifiers:v100 intoSectionWithIdentifier:@"SHSheetContentSystemActionsSectionIdentifier"];
    }

    if ([v101 count])
    {
      v111 = @"SHSheetContentExtensionActionsSectionIdentifier";
      v83 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v111 count:1];
      [v20 appendSectionsWithIdentifiers:v83];

      [v20 appendItemsWithIdentifiers:v101 intoSectionWithIdentifier:@"SHSheetContentExtensionActionsSectionIdentifier"];
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
  v2 = [(SHSheetContentDataSource *)self state];
  [v2 logDiagnosticProperties];
}

@end