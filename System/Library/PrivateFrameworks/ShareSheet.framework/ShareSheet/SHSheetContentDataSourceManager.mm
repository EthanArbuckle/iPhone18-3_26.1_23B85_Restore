@interface SHSheetContentDataSourceManager
+ (id)contentCustomViewUniqueIdentifier;
- (SHSheetContentDataSourceManager)initWithApplicationActivityTypes:(id)a3 heroActionActivityTypes:(id)a4;
- (SHSheetContentDataSourceManagerDelegate)delegate;
- (id)_updateCurrentStateWithChangeRequest:(id)a3;
- (void)suggestLessPeopleProxyForIdentifier:(id)a3;
- (void)updateWithChangeRequest:(id)a3;
@end

@implementation SHSheetContentDataSourceManager

+ (id)contentCustomViewUniqueIdentifier
{
  if (contentCustomViewUniqueIdentifier_onceToken != -1)
  {
    +[SHSheetContentDataSourceManager contentCustomViewUniqueIdentifier];
  }

  v3 = contentCustomViewUniqueIdentifier_contentCustomViewUniqueIdentifier;

  return v3;
}

void __68__SHSheetContentDataSourceManager_contentCustomViewUniqueIdentifier__block_invoke()
{
  v0 = [MEMORY[0x1E696AFB0] UUID];
  v1 = contentCustomViewUniqueIdentifier_contentCustomViewUniqueIdentifier;
  contentCustomViewUniqueIdentifier_contentCustomViewUniqueIdentifier = v0;
}

- (SHSheetContentDataSourceManager)initWithApplicationActivityTypes:(id)a3 heroActionActivityTypes:(id)a4
{
  v6 = a3;
  v7 = a4;
  v18.receiver = self;
  v18.super_class = SHSheetContentDataSourceManager;
  v8 = [(SHSheetContentDataSourceManager *)&v18 init];
  if (v8)
  {
    v9 = [v6 copy];
    applicationActivityTypes = v8->_applicationActivityTypes;
    v8->_applicationActivityTypes = v9;

    v11 = [v7 copy];
    heroActionActivityTypes = v8->_heroActionActivityTypes;
    v8->_heroActionActivityTypes = v11;

    v13 = [MEMORY[0x1E695DFA8] set];
    suggestLessIdentifiers = v8->_suggestLessIdentifiers;
    v8->_suggestLessIdentifiers = v13;

    v15 = [MEMORY[0x1E696AFB0] UUID];
    moreActionIdentifier = v8->_moreActionIdentifier;
    v8->_moreActionIdentifier = v15;
  }

  return v8;
}

- (id)_updateCurrentStateWithChangeRequest:(id)a3
{
  v125 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v104 = [(SHSheetContentDataSourceManager *)self currentState];
  v90 = objc_alloc_init(SHSheetContentDataSourceState);
  v92 = [MEMORY[0x1E695DF90] dictionary];
  v96 = [MEMORY[0x1E695DF90] dictionary];
  v100 = [MEMORY[0x1E695DF90] dictionary];
  v91 = [MEMORY[0x1E695DF70] array];
  v5 = [MEMORY[0x1E695DF70] array];
  v102 = [MEMORY[0x1E695DF70] array];
  v89 = [MEMORY[0x1E695DF70] array];
  v83 = [MEMORY[0x1E695DF70] array];
  v88 = [MEMORY[0x1E695DF70] array];
  v86 = [MEMORY[0x1E695DF90] dictionary];
  v85 = [MEMORY[0x1E695DFA0] orderedSet];
  v84 = [MEMORY[0x1E695DF70] array];
  v81 = [MEMORY[0x1E695DF70] array];
  v94 = [MEMORY[0x1E695DF70] array];
  v6 = [v4 excludeSectionTypes];
  v117 = 0u;
  v118 = 0u;
  v119 = 0u;
  v120 = 0u;
  v82 = v4;
  v7 = [v4 peopleProxies];
  v8 = [v7 countByEnumeratingWithState:&v117 objects:v124 count:16];
  v103 = self;
  v101 = v5;
  if (v8)
  {
    v9 = v8;
    v10 = *v118;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v118 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v117 + 1) + 8 * i);
        if ([v12 isMagicHead])
        {
          [(SHSheetContentDataSourceState *)v90 setAirDropProxy:v12];
        }

        v13 = [v12 identifier];
        v14 = [(SHSheetContentDataSourceManager *)self suggestLessIdentifiers];
        v15 = [v14 containsObject:v13];

        if ((v15 & 1) == 0)
        {
          v16 = [v104 peopleProxyByUUID];
          v17 = [v16 objectForKeyedSubscript:v13];

          if ((v6 & 2) != 0 || !v17)
          {
            goto LABEL_18;
          }

          v18 = v10;
          v19 = v6;
          v20 = v7;
          v21 = v12;
          v22 = v17;
          v23 = v22;
          if (v21 == v22)
          {

            v7 = v20;
            v6 = v19;
            v10 = v18;
          }

          else
          {
            if (v21)
            {
              objb = [v21 isEqual:v22];

              v7 = v20;
              v6 = v19;
              v10 = v18;
              if (objb)
              {
                goto LABEL_18;
              }
            }

            else
            {

              v7 = v20;
              v6 = v19;
              v10 = v18;
            }

            [v94 addObject:v13];
          }

LABEL_18:
          [v92 setObject:v12 forKeyedSubscript:v13];
          [v91 addObject:v13];
        }

        self = v103;
        v5 = v101;
      }

      v9 = [v7 countByEnumeratingWithState:&v117 objects:v124 count:16];
    }

    while (v9);
  }

  v115 = 0u;
  v116 = 0u;
  v113 = 0u;
  v114 = 0u;
  obj = [v82 shareProxies];
  v24 = [obj countByEnumeratingWithState:&v113 objects:v123 count:16];
  if (!v24)
  {
    goto LABEL_37;
  }

  v25 = v24;
  v26 = *v114;
  do
  {
    for (j = 0; j != v25; ++j)
    {
      if (*v114 != v26)
      {
        objc_enumerationMutation(obj);
      }

      v28 = *(*(&v113 + 1) + 8 * j);
      v29 = [v28 identifier];
      v30 = [v104 shareProxyByUUID];
      v31 = [v30 objectForKeyedSubscript:v29];

      if ((v6 & 4) == 0 && v31)
      {
        v32 = v28;
        v33 = v31;
        v34 = v33;
        if (v32 == v33)
        {

          v5 = v101;
          goto LABEL_35;
        }

        if (!v32)
        {

          v5 = v101;
LABEL_34:
          [v94 addObject:v29];
          goto LABEL_35;
        }

        v35 = [v32 isEqual:v33];

        v5 = v101;
        if ((v35 & 1) == 0)
        {
          goto LABEL_34;
        }
      }

LABEL_35:
      [v96 setObject:v28 forKeyedSubscript:v29];
      [v5 addObject:v29];
    }

    v25 = [obj countByEnumeratingWithState:&v113 objects:v123 count:16];
  }

  while (v25);
LABEL_37:

  v87 = [MEMORY[0x1E695DF90] dictionary];
  v109 = 0u;
  v110 = 0u;
  v111 = 0u;
  v112 = 0u;
  v36 = v82;
  v93 = [v82 actionProxies];
  v37 = v100;
  v38 = v102;
  obja = [v93 countByEnumeratingWithState:&v109 objects:v122 count:16];
  if (!obja)
  {
    goto LABEL_74;
  }

  v95 = *v110;
  while (2)
  {
    v39 = 0;
    while (2)
    {
      if (*v110 != v95)
      {
        objc_enumerationMutation(v93);
      }

      v40 = *(*(&v109 + 1) + 8 * v39);
      v41 = [v40 identifier];
      v42 = [v104 actionProxyByUUID];
      v43 = [v42 objectForKeyedSubscript:v41];

      if ((v6 & 8) == 0 && v43)
      {
        v44 = v40;
        v45 = v43;
        v46 = v45;
        if (v44 == v45)
        {

          v37 = v100;
          v38 = v102;
        }

        else
        {
          if (v44)
          {
            v47 = [v44 isEqual:v45];

            v37 = v100;
            v38 = v102;
            if (v47)
            {
              goto LABEL_51;
            }
          }

          else
          {

            v37 = v100;
            v38 = v102;
          }

          [v94 addObject:v41];
        }
      }

LABEL_51:
      [v37 setObject:v40 forKeyedSubscript:v41];
      [v38 addObject:v41];
      v48 = [v36 activitiesByUUID];
      v49 = [v48 objectForKeyedSubscript:v41];

      if (v49 && (-[SHSheetContentDataSourceManager heroActionActivityTypes](v103, "heroActionActivityTypes"), v50 = objc_claimAutoreleasedReturnValue(), [v49 activityType], v51 = objc_claimAutoreleasedReturnValue(), v52 = objc_msgSend(v50, "containsObject:", v51), v51, v37 = v100, v50, v52))
      {
        v53 = [v49 activityType];
        [v87 setObject:v41 forKeyedSubscript:v53];
      }

      else if ([v40 isFavorite])
      {
        [v88 addObject:v41];
      }

      else
      {
        v54 = [v49 activitySectionIdentifier];

        if (v54)
        {
          v55 = [v49 activitySectionIdentifier];
          v56 = [(SHSheetContentDataSourceManager *)v103 _uniqueIdentifierForSectionIdentifier:v55];

          v57 = [v86 objectForKeyedSubscript:v56];
          if (!v57)
          {
            v57 = [MEMORY[0x1E695DF70] array];
            [v86 setObject:v57 forKeyedSubscript:v56];
          }

          [v57 addObject:v41];
          [v85 addObject:v56];
        }

        else
        {
          v58 = [v49 _isBuiltinDerived];
          v59 = [v49 _showsInSystemActionGroup];
          if (v49)
          {
            v60 = v59;
            v61 = [(SHSheetContentDataSourceManager *)v103 applicationActivityTypes];
            v62 = [v49 activityType];
            v63 = [v61 containsObject:v62] & (v58 ^ 1) | v60;

            v36 = v82;
          }

          else
          {
            v63 = 0;
          }

          v64 = [v49 _activityFooterText];
          if (v64 || ([v40 activityFooter], (v64 = objc_claimAutoreleasedReturnValue()) != 0))
          {
            v65 = v64;
            [v83 addObject:v41];
          }

          else
          {
            if (v63)
            {
              v66 = v84;
            }

            else
            {
              v66 = v81;
            }

            [v66 addObject:v41];
          }
        }

        v37 = v100;
      }

      v39 = v39 + 1;
      v38 = v102;
      if (obja != v39)
      {
        continue;
      }

      break;
    }

    v67 = [v93 countByEnumeratingWithState:&v109 objects:v122 count:16];
    obja = v67;
    if (v67)
    {
      continue;
    }

    break;
  }

LABEL_74:

  if ([v87 count])
  {
    v107 = 0u;
    v108 = 0u;
    v105 = 0u;
    v106 = 0u;
    v68 = [(SHSheetContentDataSourceManager *)v103 heroActionActivityTypes];
    v69 = [v68 countByEnumeratingWithState:&v105 objects:v121 count:16];
    if (v69)
    {
      v70 = v69;
      v71 = *v106;
      do
      {
        for (k = 0; k != v70; ++k)
        {
          if (*v106 != v71)
          {
            objc_enumerationMutation(v68);
          }

          v73 = [v87 objectForKeyedSubscript:*(*(&v105 + 1) + 8 * k)];
          if (v73)
          {
            [v89 addObject:v73];
          }
        }

        v70 = [v68 countByEnumeratingWithState:&v105 objects:v121 count:16];
      }

      while (v70);
    }

    v36 = v82;
    v37 = v100;
  }

  v74 = [v36 peopleProxies];
  [(SHSheetContentDataSourceState *)v90 setPeopleProxies:v74];

  v75 = [v36 shareProxies];
  [(SHSheetContentDataSourceState *)v90 setShareProxies:v75];

  v76 = [v36 actionProxies];
  [(SHSheetContentDataSourceState *)v90 setActionProxies:v76];

  v77 = [v36 activitiesByUUID];
  [(SHSheetContentDataSourceState *)v90 setActivitiesByUUID:v77];

  -[SHSheetContentDataSourceState setNearbyCountSlotID:](v90, "setNearbyCountSlotID:", [v36 nearbyCountSlotID]);
  [(SHSheetContentDataSourceState *)v90 setPeopleProxyByUUID:v92];
  [(SHSheetContentDataSourceState *)v90 setShareProxyByUUID:v96];
  [(SHSheetContentDataSourceState *)v90 setActionProxyByUUID:v37];
  [(SHSheetContentDataSourceState *)v90 setPeopleIdentifiers:v91];
  [(SHSheetContentDataSourceState *)v90 setShareIdentifiers:v101];
  [(SHSheetContentDataSourceState *)v90 setActionIdentifiers:v102];
  [(SHSheetContentDataSourceState *)v90 setHeroActionIdentifiers:v89];
  [(SHSheetContentDataSourceState *)v90 setInformationalActionIdentifiers:v83];
  [(SHSheetContentDataSourceState *)v90 setFavoriteActionIdentifiers:v88];
  [(SHSheetContentDataSourceState *)v90 setCustomActionIdentifiersByCustomSectionIdentifier:v86];
  [(SHSheetContentDataSourceState *)v90 setCustomSectionIdentifiers:v85];
  [(SHSheetContentDataSourceState *)v90 setSystemActionIdentifiers:v84];
  [(SHSheetContentDataSourceState *)v90 setExtensionActionIdentifiers:v81];
  v78 = [(SHSheetContentDataSourceManager *)v103 moreActionIdentifier];
  [(SHSheetContentDataSourceState *)v90 setMoreActionIdentifier:v78];

  v79 = share_sheet_log();
  if (os_log_type_enabled(v79, OS_LOG_TYPE_DEBUG))
  {
    [(SHSheetContentDataSourceManager *)v103 _updateCurrentStateWithChangeRequest:v90, v79];
  }

  [(SHSheetContentDataSourceManager *)v103 setCurrentState:v90];

  return v94;
}

- (void)updateWithChangeRequest:(id)a3
{
  v42 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = share_sheet_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [SHSheetContentDataSourceManager updateWithChangeRequest:];
  }

  v6 = [v4 state];
  v7 = [(SHSheetContentDataSourceManager *)self currentState];
  v8 = [(SHSheetContentDataSourceManager *)self dataSource];
  v36 = v6;
  if (v6 && v6 == v7)
  {
    v37 = 0;
  }

  else
  {
    v37 = [(SHSheetContentDataSourceManager *)self _updateCurrentStateWithChangeRequest:v4];
  }

  v9 = [SHSheetContentDataSource alloc];
  v10 = [(SHSheetContentDataSourceManager *)self currentState];
  v11 = -[SHSheetContentDataSource initWithState:excludeSectionTypes:topActionsMaximumCount:](v9, "initWithState:excludeSectionTypes:topActionsMaximumCount:", v10, [v4 excludeSectionTypes], objc_msgSend(v4, "topActionsMaximumCount"));

  v12 = [(SHSheetContentDataSource *)v11 diffableSnapshot];
  v13 = [v8 diffableSnapshot];
  v33 = [v12 isEqual:v13];

  v14 = [(SHSheetContentDataSourceManager *)self currentState];
  v15 = [v14 nearbyCountSlotID];
  v16 = [v7 nearbyCountSlotID];

  if ([(SHSheetContentDataSource *)v11 containsSectionForIdentifier:@"SHSheetContentPeopleSectionIdentifier"])
  {
    v17 = [v8 containsSectionForIdentifier:@"SHSheetContentPeopleSectionIdentifier"];
  }

  else
  {
    v17 = 0;
  }

  if ([v8 containsSectionForIdentifier:@"SHSheetContentTopActionsSectionIdentifier"])
  {
    v18 = [v8 diffableSnapshot];
    v19 = [v18 itemIdentifiersInSectionWithIdentifier:@"SHSheetContentTopActionsSectionIdentifier"];
  }

  else
  {
    v19 = MEMORY[0x1E695E0F0];
  }

  v35 = v7;
  if ([(SHSheetContentDataSource *)v11 containsSectionForIdentifier:@"SHSheetContentTopActionsSectionIdentifier"])
  {
    v20 = [(SHSheetContentDataSource *)v11 diffableSnapshot];
    v21 = [v20 itemIdentifiersInSectionWithIdentifier:@"SHSheetContentTopActionsSectionIdentifier"];
  }

  else
  {
    v21 = MEMORY[0x1E695E0F0];
  }

  v22 = v15 != v16;
  v34 = v19;
  v23 = [v19 isEqualToArray:v21];
  v24 = objc_alloc_init(SHSheetContentDataSourceChangeDetails);
  [(SHSheetContentDataSourceChangeDetails *)v24 setModifiedIdentifiers:v37];
  [(SHSheetContentDataSourceChangeDetails *)v24 setAirDropBadgeChanged:v22];
  -[SHSheetContentDataSourceChangeDetails setForceReload:](v24, "setForceReload:", [v4 forceReload] & 1 | ((v23 & 1) == 0));
  -[SHSheetContentDataSourceChangeDetails setAnimateDifferences:](v24, "setAnimateDifferences:", [v4 animated]);
  v25 = [(SHSheetContentDataSource *)v11 diffableSnapshot];
  v26 = [v25 numberOfSections];
  v27 = [v8 diffableSnapshot];
  -[SHSheetContentDataSourceChangeDetails setSectionsChanged:](v24, "setSectionsChanged:", v26 != [v27 numberOfSections]);

  if (v17)
  {
    v28 = [(SHSheetContentDataSource *)v11 diffableSnapshot];
    v29 = [v28 numberOfItemsInSection:@"SHSheetContentPeopleSectionIdentifier"];
    v30 = [v8 diffableSnapshot];
    -[SHSheetContentDataSourceChangeDetails setPeopleCountChanged:](v24, "setPeopleCountChanged:", v29 != [v30 numberOfItemsInSection:@"SHSheetContentPeopleSectionIdentifier"]);
  }

  else
  {
    [(SHSheetContentDataSourceChangeDetails *)v24 setPeopleCountChanged:0];
  }

  [(SHSheetContentDataSourceChangeDetails *)v24 setSnapshotChanged:v33 ^ 1u];
  v31 = share_sheet_log();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v39 = v11;
    v40 = 2112;
    v41 = v24;
    _os_log_impl(&dword_18B359000, v31, OS_LOG_TYPE_DEFAULT, "publishing new dataSource:%@ for changeDetail:%@", buf, 0x16u);
  }

  [(SHSheetContentDataSourceManager *)self setDataSource:v11];
  v32 = [(SHSheetContentDataSourceManager *)self delegate];
  [v32 dataSourceManager:self didPublishDataSourceWithChangeDetails:v24];
}

- (void)suggestLessPeopleProxyForIdentifier:(id)a3
{
  v26 = a3;
  v4 = [(SHSheetContentDataSourceManager *)self suggestLessIdentifiers];
  v5 = [v4 containsObject:v26];

  if ((v5 & 1) == 0)
  {
    v6 = [(SHSheetContentDataSourceManager *)self suggestLessIdentifiers];
    [v6 addObject:v26];

    v7 = [(SHSheetContentDataSourceManager *)self dataSource];
    v25 = [v7 peopleProxyForIdentifier:v26];

    v8 = [(SHSheetContentDataSourceManager *)self dataSource];
    v9 = [v8 peopleProxies];
    v10 = [v9 mutableCopy];

    v11 = v10;
    v24 = v10;
    [v10 removeObject:v25];
    v23 = [(SHSheetContentDataSourceManager *)self dataSource];
    v12 = [v23 shareProxies];
    v13 = [(SHSheetContentDataSourceManager *)self dataSource];
    v14 = [v13 actionProxies];
    v15 = [(SHSheetContentDataSourceManager *)self dataSource];
    v16 = [v15 nearbyCountSlotID];
    v17 = [(SHSheetContentDataSourceManager *)self dataSource];
    v18 = [v17 state];
    v19 = [v18 activitiesByUUID];
    v20 = [SHSheetContentDataSourceChangeRequest changeRequestForPeopleProxies:v11 shareProxies:v12 actionProxies:v14 nearbyCountSlotID:v16 activitiesByUUID:v19];

    v21 = [(SHSheetContentDataSourceManager *)self dataSource];
    [v20 setExcludeSectionTypes:{objc_msgSend(v21, "excludeSectionTypes")}];

    [v20 setAnimated:1];
    v22 = [(SHSheetContentDataSourceManager *)self dataSource];
    [v20 setTopActionsMaximumCount:{objc_msgSend(v22, "topActionsMaximumCount")}];

    [(SHSheetContentDataSourceManager *)self updateWithChangeRequest:v20];
  }
}

- (SHSheetContentDataSourceManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_updateCurrentStateWithChangeRequest:(NSObject *)a3 .cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = [a1 currentState];
  OUTLINED_FUNCTION_1();
  v7 = 2112;
  v8 = a2;
  _os_log_debug_impl(&dword_18B359000, a3, OS_LOG_TYPE_DEBUG, "Update existing state:%@ with state:%@", v6, 0x16u);
}

@end