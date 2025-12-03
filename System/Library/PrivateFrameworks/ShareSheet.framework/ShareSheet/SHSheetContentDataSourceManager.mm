@interface SHSheetContentDataSourceManager
+ (id)contentCustomViewUniqueIdentifier;
- (SHSheetContentDataSourceManager)initWithApplicationActivityTypes:(id)types heroActionActivityTypes:(id)activityTypes;
- (SHSheetContentDataSourceManagerDelegate)delegate;
- (id)_updateCurrentStateWithChangeRequest:(id)request;
- (void)suggestLessPeopleProxyForIdentifier:(id)identifier;
- (void)updateWithChangeRequest:(id)request;
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

- (SHSheetContentDataSourceManager)initWithApplicationActivityTypes:(id)types heroActionActivityTypes:(id)activityTypes
{
  typesCopy = types;
  activityTypesCopy = activityTypes;
  v18.receiver = self;
  v18.super_class = SHSheetContentDataSourceManager;
  v8 = [(SHSheetContentDataSourceManager *)&v18 init];
  if (v8)
  {
    v9 = [typesCopy copy];
    applicationActivityTypes = v8->_applicationActivityTypes;
    v8->_applicationActivityTypes = v9;

    v11 = [activityTypesCopy copy];
    heroActionActivityTypes = v8->_heroActionActivityTypes;
    v8->_heroActionActivityTypes = v11;

    v13 = [MEMORY[0x1E695DFA8] set];
    suggestLessIdentifiers = v8->_suggestLessIdentifiers;
    v8->_suggestLessIdentifiers = v13;

    uUID = [MEMORY[0x1E696AFB0] UUID];
    moreActionIdentifier = v8->_moreActionIdentifier;
    v8->_moreActionIdentifier = uUID;
  }

  return v8;
}

- (id)_updateCurrentStateWithChangeRequest:(id)request
{
  v125 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  currentState = [(SHSheetContentDataSourceManager *)self currentState];
  v90 = objc_alloc_init(SHSheetContentDataSourceState);
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  dictionary2 = [MEMORY[0x1E695DF90] dictionary];
  dictionary3 = [MEMORY[0x1E695DF90] dictionary];
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  array3 = [MEMORY[0x1E695DF70] array];
  array4 = [MEMORY[0x1E695DF70] array];
  array5 = [MEMORY[0x1E695DF70] array];
  array6 = [MEMORY[0x1E695DF70] array];
  dictionary4 = [MEMORY[0x1E695DF90] dictionary];
  orderedSet = [MEMORY[0x1E695DFA0] orderedSet];
  array7 = [MEMORY[0x1E695DF70] array];
  array8 = [MEMORY[0x1E695DF70] array];
  array9 = [MEMORY[0x1E695DF70] array];
  excludeSectionTypes = [requestCopy excludeSectionTypes];
  v117 = 0u;
  v118 = 0u;
  v119 = 0u;
  v120 = 0u;
  v82 = requestCopy;
  peopleProxies = [requestCopy peopleProxies];
  v8 = [peopleProxies countByEnumeratingWithState:&v117 objects:v124 count:16];
  selfCopy = self;
  v101 = array2;
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
          objc_enumerationMutation(peopleProxies);
        }

        v12 = *(*(&v117 + 1) + 8 * i);
        if ([v12 isMagicHead])
        {
          [(SHSheetContentDataSourceState *)v90 setAirDropProxy:v12];
        }

        identifier = [v12 identifier];
        suggestLessIdentifiers = [(SHSheetContentDataSourceManager *)self suggestLessIdentifiers];
        v15 = [suggestLessIdentifiers containsObject:identifier];

        if ((v15 & 1) == 0)
        {
          peopleProxyByUUID = [currentState peopleProxyByUUID];
          v17 = [peopleProxyByUUID objectForKeyedSubscript:identifier];

          if ((excludeSectionTypes & 2) != 0 || !v17)
          {
            goto LABEL_18;
          }

          v18 = v10;
          v19 = excludeSectionTypes;
          v20 = peopleProxies;
          v21 = v12;
          v22 = v17;
          v23 = v22;
          if (v21 == v22)
          {

            peopleProxies = v20;
            excludeSectionTypes = v19;
            v10 = v18;
          }

          else
          {
            if (v21)
            {
              objb = [v21 isEqual:v22];

              peopleProxies = v20;
              excludeSectionTypes = v19;
              v10 = v18;
              if (objb)
              {
                goto LABEL_18;
              }
            }

            else
            {

              peopleProxies = v20;
              excludeSectionTypes = v19;
              v10 = v18;
            }

            [array9 addObject:identifier];
          }

LABEL_18:
          [dictionary setObject:v12 forKeyedSubscript:identifier];
          [array addObject:identifier];
        }

        self = selfCopy;
        array2 = v101;
      }

      v9 = [peopleProxies countByEnumeratingWithState:&v117 objects:v124 count:16];
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
      identifier2 = [v28 identifier];
      shareProxyByUUID = [currentState shareProxyByUUID];
      v31 = [shareProxyByUUID objectForKeyedSubscript:identifier2];

      if ((excludeSectionTypes & 4) == 0 && v31)
      {
        v32 = v28;
        v33 = v31;
        v34 = v33;
        if (v32 == v33)
        {

          array2 = v101;
          goto LABEL_35;
        }

        if (!v32)
        {

          array2 = v101;
LABEL_34:
          [array9 addObject:identifier2];
          goto LABEL_35;
        }

        v35 = [v32 isEqual:v33];

        array2 = v101;
        if ((v35 & 1) == 0)
        {
          goto LABEL_34;
        }
      }

LABEL_35:
      [dictionary2 setObject:v28 forKeyedSubscript:identifier2];
      [array2 addObject:identifier2];
    }

    v25 = [obj countByEnumeratingWithState:&v113 objects:v123 count:16];
  }

  while (v25);
LABEL_37:

  dictionary5 = [MEMORY[0x1E695DF90] dictionary];
  v109 = 0u;
  v110 = 0u;
  v111 = 0u;
  v112 = 0u;
  v36 = v82;
  actionProxies = [v82 actionProxies];
  v37 = dictionary3;
  v38 = array3;
  obja = [actionProxies countByEnumeratingWithState:&v109 objects:v122 count:16];
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
        objc_enumerationMutation(actionProxies);
      }

      v40 = *(*(&v109 + 1) + 8 * v39);
      identifier3 = [v40 identifier];
      actionProxyByUUID = [currentState actionProxyByUUID];
      v43 = [actionProxyByUUID objectForKeyedSubscript:identifier3];

      if ((excludeSectionTypes & 8) == 0 && v43)
      {
        v44 = v40;
        v45 = v43;
        v46 = v45;
        if (v44 == v45)
        {

          v37 = dictionary3;
          v38 = array3;
        }

        else
        {
          if (v44)
          {
            v47 = [v44 isEqual:v45];

            v37 = dictionary3;
            v38 = array3;
            if (v47)
            {
              goto LABEL_51;
            }
          }

          else
          {

            v37 = dictionary3;
            v38 = array3;
          }

          [array9 addObject:identifier3];
        }
      }

LABEL_51:
      [v37 setObject:v40 forKeyedSubscript:identifier3];
      [v38 addObject:identifier3];
      activitiesByUUID = [v36 activitiesByUUID];
      v49 = [activitiesByUUID objectForKeyedSubscript:identifier3];

      if (v49 && (-[SHSheetContentDataSourceManager heroActionActivityTypes](selfCopy, "heroActionActivityTypes"), v50 = objc_claimAutoreleasedReturnValue(), [v49 activityType], v51 = objc_claimAutoreleasedReturnValue(), v52 = objc_msgSend(v50, "containsObject:", v51), v51, v37 = dictionary3, v50, v52))
      {
        activityType = [v49 activityType];
        [dictionary5 setObject:identifier3 forKeyedSubscript:activityType];
      }

      else if ([v40 isFavorite])
      {
        [array6 addObject:identifier3];
      }

      else
      {
        activitySectionIdentifier = [v49 activitySectionIdentifier];

        if (activitySectionIdentifier)
        {
          activitySectionIdentifier2 = [v49 activitySectionIdentifier];
          v56 = [(SHSheetContentDataSourceManager *)selfCopy _uniqueIdentifierForSectionIdentifier:activitySectionIdentifier2];

          array10 = [dictionary4 objectForKeyedSubscript:v56];
          if (!array10)
          {
            array10 = [MEMORY[0x1E695DF70] array];
            [dictionary4 setObject:array10 forKeyedSubscript:v56];
          }

          [array10 addObject:identifier3];
          [orderedSet addObject:v56];
        }

        else
        {
          _isBuiltinDerived = [v49 _isBuiltinDerived];
          _showsInSystemActionGroup = [v49 _showsInSystemActionGroup];
          if (v49)
          {
            v60 = _showsInSystemActionGroup;
            applicationActivityTypes = [(SHSheetContentDataSourceManager *)selfCopy applicationActivityTypes];
            activityType2 = [v49 activityType];
            v63 = [applicationActivityTypes containsObject:activityType2] & (_isBuiltinDerived ^ 1) | v60;

            v36 = v82;
          }

          else
          {
            v63 = 0;
          }

          _activityFooterText = [v49 _activityFooterText];
          if (_activityFooterText || ([v40 activityFooter], (_activityFooterText = objc_claimAutoreleasedReturnValue()) != 0))
          {
            v65 = _activityFooterText;
            [array5 addObject:identifier3];
          }

          else
          {
            if (v63)
            {
              v66 = array7;
            }

            else
            {
              v66 = array8;
            }

            [v66 addObject:identifier3];
          }
        }

        v37 = dictionary3;
      }

      v39 = v39 + 1;
      v38 = array3;
      if (obja != v39)
      {
        continue;
      }

      break;
    }

    v67 = [actionProxies countByEnumeratingWithState:&v109 objects:v122 count:16];
    obja = v67;
    if (v67)
    {
      continue;
    }

    break;
  }

LABEL_74:

  if ([dictionary5 count])
  {
    v107 = 0u;
    v108 = 0u;
    v105 = 0u;
    v106 = 0u;
    heroActionActivityTypes = [(SHSheetContentDataSourceManager *)selfCopy heroActionActivityTypes];
    v69 = [heroActionActivityTypes countByEnumeratingWithState:&v105 objects:v121 count:16];
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
            objc_enumerationMutation(heroActionActivityTypes);
          }

          v73 = [dictionary5 objectForKeyedSubscript:*(*(&v105 + 1) + 8 * k)];
          if (v73)
          {
            [array4 addObject:v73];
          }
        }

        v70 = [heroActionActivityTypes countByEnumeratingWithState:&v105 objects:v121 count:16];
      }

      while (v70);
    }

    v36 = v82;
    v37 = dictionary3;
  }

  peopleProxies2 = [v36 peopleProxies];
  [(SHSheetContentDataSourceState *)v90 setPeopleProxies:peopleProxies2];

  shareProxies = [v36 shareProxies];
  [(SHSheetContentDataSourceState *)v90 setShareProxies:shareProxies];

  actionProxies2 = [v36 actionProxies];
  [(SHSheetContentDataSourceState *)v90 setActionProxies:actionProxies2];

  activitiesByUUID2 = [v36 activitiesByUUID];
  [(SHSheetContentDataSourceState *)v90 setActivitiesByUUID:activitiesByUUID2];

  -[SHSheetContentDataSourceState setNearbyCountSlotID:](v90, "setNearbyCountSlotID:", [v36 nearbyCountSlotID]);
  [(SHSheetContentDataSourceState *)v90 setPeopleProxyByUUID:dictionary];
  [(SHSheetContentDataSourceState *)v90 setShareProxyByUUID:dictionary2];
  [(SHSheetContentDataSourceState *)v90 setActionProxyByUUID:v37];
  [(SHSheetContentDataSourceState *)v90 setPeopleIdentifiers:array];
  [(SHSheetContentDataSourceState *)v90 setShareIdentifiers:v101];
  [(SHSheetContentDataSourceState *)v90 setActionIdentifiers:array3];
  [(SHSheetContentDataSourceState *)v90 setHeroActionIdentifiers:array4];
  [(SHSheetContentDataSourceState *)v90 setInformationalActionIdentifiers:array5];
  [(SHSheetContentDataSourceState *)v90 setFavoriteActionIdentifiers:array6];
  [(SHSheetContentDataSourceState *)v90 setCustomActionIdentifiersByCustomSectionIdentifier:dictionary4];
  [(SHSheetContentDataSourceState *)v90 setCustomSectionIdentifiers:orderedSet];
  [(SHSheetContentDataSourceState *)v90 setSystemActionIdentifiers:array7];
  [(SHSheetContentDataSourceState *)v90 setExtensionActionIdentifiers:array8];
  moreActionIdentifier = [(SHSheetContentDataSourceManager *)selfCopy moreActionIdentifier];
  [(SHSheetContentDataSourceState *)v90 setMoreActionIdentifier:moreActionIdentifier];

  v79 = share_sheet_log();
  if (os_log_type_enabled(v79, OS_LOG_TYPE_DEBUG))
  {
    [(SHSheetContentDataSourceManager *)selfCopy _updateCurrentStateWithChangeRequest:v90, v79];
  }

  [(SHSheetContentDataSourceManager *)selfCopy setCurrentState:v90];

  return array9;
}

- (void)updateWithChangeRequest:(id)request
{
  v42 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  v5 = share_sheet_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [SHSheetContentDataSourceManager updateWithChangeRequest:];
  }

  state = [requestCopy state];
  currentState = [(SHSheetContentDataSourceManager *)self currentState];
  dataSource = [(SHSheetContentDataSourceManager *)self dataSource];
  v36 = state;
  if (state && state == currentState)
  {
    v37 = 0;
  }

  else
  {
    v37 = [(SHSheetContentDataSourceManager *)self _updateCurrentStateWithChangeRequest:requestCopy];
  }

  v9 = [SHSheetContentDataSource alloc];
  currentState2 = [(SHSheetContentDataSourceManager *)self currentState];
  v11 = -[SHSheetContentDataSource initWithState:excludeSectionTypes:topActionsMaximumCount:](v9, "initWithState:excludeSectionTypes:topActionsMaximumCount:", currentState2, [requestCopy excludeSectionTypes], objc_msgSend(requestCopy, "topActionsMaximumCount"));

  diffableSnapshot = [(SHSheetContentDataSource *)v11 diffableSnapshot];
  diffableSnapshot2 = [dataSource diffableSnapshot];
  v33 = [diffableSnapshot isEqual:diffableSnapshot2];

  currentState3 = [(SHSheetContentDataSourceManager *)self currentState];
  nearbyCountSlotID = [currentState3 nearbyCountSlotID];
  nearbyCountSlotID2 = [currentState nearbyCountSlotID];

  if ([(SHSheetContentDataSource *)v11 containsSectionForIdentifier:@"SHSheetContentPeopleSectionIdentifier"])
  {
    v17 = [dataSource containsSectionForIdentifier:@"SHSheetContentPeopleSectionIdentifier"];
  }

  else
  {
    v17 = 0;
  }

  if ([dataSource containsSectionForIdentifier:@"SHSheetContentTopActionsSectionIdentifier"])
  {
    diffableSnapshot3 = [dataSource diffableSnapshot];
    v19 = [diffableSnapshot3 itemIdentifiersInSectionWithIdentifier:@"SHSheetContentTopActionsSectionIdentifier"];
  }

  else
  {
    v19 = MEMORY[0x1E695E0F0];
  }

  v35 = currentState;
  if ([(SHSheetContentDataSource *)v11 containsSectionForIdentifier:@"SHSheetContentTopActionsSectionIdentifier"])
  {
    diffableSnapshot4 = [(SHSheetContentDataSource *)v11 diffableSnapshot];
    v21 = [diffableSnapshot4 itemIdentifiersInSectionWithIdentifier:@"SHSheetContentTopActionsSectionIdentifier"];
  }

  else
  {
    v21 = MEMORY[0x1E695E0F0];
  }

  v22 = nearbyCountSlotID != nearbyCountSlotID2;
  v34 = v19;
  v23 = [v19 isEqualToArray:v21];
  v24 = objc_alloc_init(SHSheetContentDataSourceChangeDetails);
  [(SHSheetContentDataSourceChangeDetails *)v24 setModifiedIdentifiers:v37];
  [(SHSheetContentDataSourceChangeDetails *)v24 setAirDropBadgeChanged:v22];
  -[SHSheetContentDataSourceChangeDetails setForceReload:](v24, "setForceReload:", [requestCopy forceReload] & 1 | ((v23 & 1) == 0));
  -[SHSheetContentDataSourceChangeDetails setAnimateDifferences:](v24, "setAnimateDifferences:", [requestCopy animated]);
  diffableSnapshot5 = [(SHSheetContentDataSource *)v11 diffableSnapshot];
  numberOfSections = [diffableSnapshot5 numberOfSections];
  diffableSnapshot6 = [dataSource diffableSnapshot];
  -[SHSheetContentDataSourceChangeDetails setSectionsChanged:](v24, "setSectionsChanged:", numberOfSections != [diffableSnapshot6 numberOfSections]);

  if (v17)
  {
    diffableSnapshot7 = [(SHSheetContentDataSource *)v11 diffableSnapshot];
    v29 = [diffableSnapshot7 numberOfItemsInSection:@"SHSheetContentPeopleSectionIdentifier"];
    diffableSnapshot8 = [dataSource diffableSnapshot];
    -[SHSheetContentDataSourceChangeDetails setPeopleCountChanged:](v24, "setPeopleCountChanged:", v29 != [diffableSnapshot8 numberOfItemsInSection:@"SHSheetContentPeopleSectionIdentifier"]);
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
  delegate = [(SHSheetContentDataSourceManager *)self delegate];
  [delegate dataSourceManager:self didPublishDataSourceWithChangeDetails:v24];
}

- (void)suggestLessPeopleProxyForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  suggestLessIdentifiers = [(SHSheetContentDataSourceManager *)self suggestLessIdentifiers];
  v5 = [suggestLessIdentifiers containsObject:identifierCopy];

  if ((v5 & 1) == 0)
  {
    suggestLessIdentifiers2 = [(SHSheetContentDataSourceManager *)self suggestLessIdentifiers];
    [suggestLessIdentifiers2 addObject:identifierCopy];

    dataSource = [(SHSheetContentDataSourceManager *)self dataSource];
    v25 = [dataSource peopleProxyForIdentifier:identifierCopy];

    dataSource2 = [(SHSheetContentDataSourceManager *)self dataSource];
    peopleProxies = [dataSource2 peopleProxies];
    v10 = [peopleProxies mutableCopy];

    v11 = v10;
    v24 = v10;
    [v10 removeObject:v25];
    dataSource3 = [(SHSheetContentDataSourceManager *)self dataSource];
    shareProxies = [dataSource3 shareProxies];
    dataSource4 = [(SHSheetContentDataSourceManager *)self dataSource];
    actionProxies = [dataSource4 actionProxies];
    dataSource5 = [(SHSheetContentDataSourceManager *)self dataSource];
    nearbyCountSlotID = [dataSource5 nearbyCountSlotID];
    dataSource6 = [(SHSheetContentDataSourceManager *)self dataSource];
    state = [dataSource6 state];
    activitiesByUUID = [state activitiesByUUID];
    v20 = [SHSheetContentDataSourceChangeRequest changeRequestForPeopleProxies:v11 shareProxies:shareProxies actionProxies:actionProxies nearbyCountSlotID:nearbyCountSlotID activitiesByUUID:activitiesByUUID];

    dataSource7 = [(SHSheetContentDataSourceManager *)self dataSource];
    [v20 setExcludeSectionTypes:{objc_msgSend(dataSource7, "excludeSectionTypes")}];

    [v20 setAnimated:1];
    dataSource8 = [(SHSheetContentDataSourceManager *)self dataSource];
    [v20 setTopActionsMaximumCount:{objc_msgSend(dataSource8, "topActionsMaximumCount")}];

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