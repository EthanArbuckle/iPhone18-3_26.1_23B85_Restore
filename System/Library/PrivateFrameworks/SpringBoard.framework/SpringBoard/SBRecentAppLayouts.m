@interface SBRecentAppLayouts
+ (id)allowedHiddenApplicationBundleIdentifiers;
- (BOOL)_ignoresAppHiddenForDisplayItem:(id)a3;
- (BOOL)_isApplicationSupported:(id)a3;
- (BOOL)_isDisplayItemRestrictedOrUnsupported:(id)a3;
- (BOOL)_isExistingSceneIdentifierValidForClaimedMultiwindowSupportInDisplayItem:(id)a3;
- (BOOL)_loadStashedModelAtPath:(id)a3;
- (BOOL)_stashModelToPath:(id)a3;
- (BOOL)_transitionContextRepresentsAmbiguousLaunch:(id)a3 forApplicationSceneEntity:(id)a4;
- (SBRecentAppLayouts)init;
- (SBRecentAppLayouts)initWithUserDefaults:(id)a3 persister:(id)a4 iconRepository:(id)a5 applicationController:(id)a6 placeholderController:(id)a7 sceneManager:(id)a8 layoutAttributesProvider:(id)a9;
- (SBRecentAppLayoutsDelegate)delegate;
- (id)_acquireAllowHiddenAppAssertionForBundleIdentifier:(id)a3 reason:(id)a4;
- (id)_changeDescriptionForFilteringAppLayouts:(id)a3 withDisplayItemTest:(id)a4;
- (id)_changeDescriptionForFilteringRestrictedOrUnsupportedAppsFromAppLayouts:(id)a3;
- (id)_changeDescriptionForFilteringRestrictedUnsupportedAndInvalidAppsFromAppLayouts:(id)a3;
- (id)_displayItemLayoutRolesFromLegacyPrefsForLoadedDisplayItems:(id)a3;
- (id)_legacyAppLayoutForItem:(id)a3 layoutRole:(int64_t)a4;
- (id)_legacyAppLayoutsForDisplayItems:(id)a3 layoutRolesMapping:(id)a4;
- (id)_migrateDisplayItemIfNeeded:(id)a3;
- (id)_ppt_currentModel;
- (id)_ppt_loadStashedModel;
- (id)_recentDisplayItemsFromLegacyPrefs;
- (id)_recentsFromPrefs;
- (id)mostRecentAppLayoutIncludingHiddenAppLayouts:(BOOL)a3 passingTest:(id)a4;
- (id)recentDisplayItemsForBundleIdentifier:(id)a3 includingHiddenAppLayouts:(BOOL)a4;
- (id)recentsForBundleIdentifier:(id)a3 includingHiddenAppLayouts:(BOOL)a4;
- (id)recentsIncludingHiddenAppLayouts:(BOOL)a3;
- (int64_t)_lastInteractionTimeInOrientation:(int64_t)a3;
- (void)_addAllAppsToModel;
- (void)_addAllowHiddenAppAssertionForBundleIdentifier:(id)a3 requestIdentifier:(id)a4;
- (void)_filterRestrictedOrUnsupportedAppsFromRecents;
- (void)_filterRestrictedUnsupportedAndInvalidAppsFromRecents;
- (void)_initializeRecents;
- (void)_ppt_setModel:(id)a3;
- (void)_removeAllowHiddenAppAssertionForBundleIdentifier:(id)a3 requestIdentifier:(id)a4;
- (void)_saveRecents;
- (void)_setRecents:(id)a3 notifyForChangeDescription:(id)a4;
- (void)_setUpStashedModelSettingsOutlets;
- (void)_validateAndUpdateRecents:(id)a3;
- (void)addAppLayout:(id)a3 afterAppLayout:(id)a4;
- (void)addAppLayout:(id)a3 atIndex:(unint64_t)a4;
- (void)dealloc;
- (void)hide:(id)a3;
- (void)remove:(id)a3;
- (void)removeAppLayouts:(id)a3;
- (void)replaceAppLayout:(id)a3 withAppLayout:(id)a4;
@end

@implementation SBRecentAppLayouts

- (SBRecentAppLayoutsDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_saveRecents
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_allRecents;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = [*(*(&v11 + 1) + 8 * i) appLayoutWithItemsPassingTest:{&__block_literal_global_456, v11}];
        if (v10)
        {
          [v3 addObject:v10];
          if (v7)
          {
            v7 = 1;
          }

          else
          {
            v7 = [v10 isHidden] ^ 1;
          }
        }
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  [(SBRecentAppLayoutsPersister *)self->_persister setRecents:v3];
  if ((v7 & 1) == 0)
  {
    [(SBRecentAppLayoutsPersister *)self->_persister syncToDiskSoonIfDirty];
  }
}

BOOL __34__SBRecentAppLayouts__saveRecents__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 type])
  {
    v3 = [v2 type] == 5;
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

- (SBRecentAppLayouts)initWithUserDefaults:(id)a3 persister:(id)a4 iconRepository:(id)a5 applicationController:(id)a6 placeholderController:(id)a7 sceneManager:(id)a8 layoutAttributesProvider:(id)a9
{
  v16 = a3;
  v30 = a4;
  v31 = a5;
  v29 = a6;
  v28 = a7;
  v27 = a8;
  v26 = a9;
  v34.receiver = self;
  v34.super_class = SBRecentAppLayouts;
  v17 = [(SBRecentAppLayouts *)&v34 init];
  if (v17)
  {
    kdebug_trace();
    if (!v16)
    {
      [SBRecentAppLayouts initWithUserDefaults:persister:iconRepository:applicationController:placeholderController:sceneManager:layoutAttributesProvider:];
    }

    objc_storeStrong(&v17->_defaults, a3);
    objc_storeStrong(&v17->_iconRepository, a5);
    objc_storeStrong(&v17->_applicationController, a6);
    objc_storeStrong(&v17->_placeholderController, a7);
    objc_storeStrong(&v17->_sceneManager, a8);
    objc_storeStrong(&v17->_persister, a4);
    objc_storeStrong(&v17->_layoutAttributesProvider, a9);
    [(SBRecentAppLayouts *)v17 _initializeRecents];
    v18 = [MEMORY[0x277CCAB98] defaultCenter];
    [v18 addObserver:v17 selector:sel__iconVisibilityDidChange_ name:*MEMORY[0x277D66590] object:v31];

    v19 = [(SBApplicationController *)v17->_applicationController restrictionController];
    [v19 addObserver:v17];

    v20 = [MEMORY[0x277CCAB98] defaultCenter];
    [v20 addObserver:v17 selector:sel__installedApplicationsDidChange_ name:@"SBInstalledApplicationsDidChangeNotification" object:v17->_applicationController];

    [(SBAppSwitcherDefaults *)v17->_defaults clearLegacyDefaults];
    [(SBRecentAppLayouts *)v17 _setUpStashedModelSettingsOutlets];
    objc_initWeak(&location, v17);
    v21 = MEMORY[0x277D85CD0];
    v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"SpringBoard - SBRecentAppLayouts - %@", v17];
    objc_copyWeak(&v32, &location);
    v23 = BSLogAddStateCaptureBlockWithTitle();
    stateCaptureInvalidatable = v17->_stateCaptureInvalidatable;
    v17->_stateCaptureInvalidatable = v23;

    objc_destroyWeak(&v32);
    objc_destroyWeak(&location);
  }

  return v17;
}

id __150__SBRecentAppLayouts_initWithUserDefaults_persister_iconRepository_applicationController_placeholderController_sceneManager_layoutAttributesProvider___block_invoke(uint64_t a1)
{
  v9[2] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = WeakRetained[1];
    if (!v3)
    {
      v3 = @"<nil>";
    }

    v8[0] = @"recents";
    v8[1] = @"recents by bundle IDs";
    v4 = WeakRetained[3];
    if (!v4)
    {
      v4 = @"<nil>";
    }

    v9[0] = v3;
    v9[1] = v4;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];
    v6 = [v5 debugDescription];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (SBRecentAppLayouts)init
{
  v3 = objc_alloc_init(SBDisplayItemLayoutAttributesProvider);
  v4 = +[SBDefaults localDefaults];
  v5 = [v4 appSwitcherDefaults];
  v6 = [SBRecentAppLayoutsPersister alloc];
  if (SBRecentAppLayoutsPersistenceURL___onceToken != -1)
  {
    [SBRecentAppLayouts init];
  }

  v7 = [(SBRecentAppLayoutsPersister *)v6 initWithPersistenceURL:SBRecentAppLayoutsPersistenceURL___persistenceURL layoutAttributesProvider:v3];
  v8 = +[SBIconController sharedIconRepository];
  v9 = +[SBApplicationController sharedInstance];
  v10 = +[SBApplicationPlaceholderController sharedInstance];
  v11 = +[SBSceneManagerCoordinator mainDisplaySceneManager];
  v12 = [(SBRecentAppLayouts *)self initWithUserDefaults:v5 persister:v7 iconRepository:v8 applicationController:v9 placeholderController:v10 sceneManager:v11 layoutAttributesProvider:v3];

  return v12;
}

- (void)dealloc
{
  v3 = [(SBApplicationController *)self->_applicationController restrictionController];
  [v3 removeObserver:self];

  [(BSInvalidatable *)self->_stateCaptureInvalidatable invalidate];
  v4.receiver = self;
  v4.super_class = SBRecentAppLayouts;
  [(SBRecentAppLayouts *)&v4 dealloc];
}

- (void)_initializeRecents
{
  if ([(SBRecentAppLayoutsPersister *)self->_persister initializedNewStoreOnDisk])
  {
    [(SBRecentAppLayouts *)self _recentsFromPrefs];
  }

  else
  {
    [(SBRecentAppLayoutsPersister *)self->_persister recents];
  }
  v3 = ;
  v5 = [v3 mutableCopy];

  [(SBRecentAppLayouts *)self _validateAndUpdateRecents:v5];
  v4 = [(SBRecentAppLayouts *)self _changeDescriptionForFilteringRestrictedOrUnsupportedAppsFromAppLayouts:v5];
  [(SBRecentAppLayouts *)self _setRecents:v5 notifyForChangeDescription:0];
}

- (id)recentsIncludingHiddenAppLayouts:(BOOL)a3
{
  v3 = 16;
  if (a3)
  {
    v3 = 8;
  }

  return *(&self->super.isa + v3);
}

- (id)recentsForBundleIdentifier:(id)a3 includingHiddenAppLayouts:(BOOL)a4
{
  v4 = 32;
  if (a4)
  {
    v4 = 24;
  }

  return [*(&self->super.isa + v4) objectForKey:a3];
}

- (id)recentDisplayItemsForBundleIdentifier:(id)a3 includingHiddenAppLayouts:(BOOL)a4
{
  v4 = 48;
  if (a4)
  {
    v4 = 40;
  }

  return [*(&self->super.isa + v4) objectForKey:a3];
}

- (int64_t)_lastInteractionTimeInOrientation:(int64_t)a3
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v5 = [(SBRecentAppLayouts *)self recentsIncludingHiddenAppLayouts:1];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __56__SBRecentAppLayouts__lastInteractionTimeInOrientation___block_invoke;
  v8[3] = &unk_2783C4EE0;
  v8[5] = &v9;
  v8[6] = a3;
  v8[4] = self;
  [v5 enumerateObjectsUsingBlock:v8];

  v6 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v6;
}

void __56__SBRecentAppLayouts__lastInteractionTimeInOrientation___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__SBRecentAppLayouts__lastInteractionTimeInOrientation___block_invoke_2;
  v7[3] = &unk_2783C4EB8;
  v4 = a1[5];
  v7[4] = a1[4];
  v8 = v3;
  v5 = a1[6];
  v9 = v4;
  v10 = v5;
  v6 = v3;
  [v6 enumerate:v7];
}

void __56__SBRecentAppLayouts__lastInteractionTimeInOrientation___block_invoke_2(void *a1, uint64_t a2, void *a3)
{
  v4 = a1[5];
  v5 = *(a1[4] + 128);
  v6 = a3;
  v10 = [v5 layoutAttributesForDisplayItem:v6 inAppLayout:v4 displayOrdinal:objc_msgSend(v4 orientation:{"preferredDisplayOrdinal"), a1[7]}];

  v7 = [(SBHomeScreenConfigurationServer *)v10 queue];
  v8 = *(a1[6] + 8);
  v9 = *(v8 + 24);
  if (v7 > v9)
  {
    v9 = v7;
  }

  *(v8 + 24) = v9;
}

- (void)_setRecents:(id)a3 notifyForChangeDescription:(id)a4
{
  v20 = a3;
  v18 = a4;
  objc_storeStrong(&self->_allRecents, a3);
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v8 = [MEMORY[0x277CBEB38] dictionary];
  v9 = [MEMORY[0x277CBEB38] dictionary];
  v10 = [MEMORY[0x277CBEB38] dictionary];
  v11 = [MEMORY[0x277CBEB38] dictionary];
  allRecents = self->_allRecents;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __61__SBRecentAppLayouts__setRecents_notifyForChangeDescription___block_invoke;
  v21[3] = &unk_2783C4F08;
  v19 = v7;
  v22 = v19;
  v17 = v10;
  v23 = v17;
  v13 = v11;
  v24 = v13;
  v14 = v8;
  v25 = v14;
  v15 = v9;
  v26 = v15;
  [(NSMutableArray *)allRecents enumerateObjectsUsingBlock:v21];
  objc_storeStrong(&self->_unhiddenRecents, v7);
  objc_storeStrong(&self->_allRecentsForBundleIdentifiers, v8);
  objc_storeStrong(&self->_unhiddenRecentsForBundleIdentifiers, v9);
  objc_storeStrong(&self->_allRecentDisplayItemsForBundleIdentifiers, v10);
  objc_storeStrong(&self->_unhiddenRecentDisplayItemsForBundleIdentifiers, v11);
  [(SBRecentAppLayouts *)self _saveRecents];
  if (v18)
  {
    v16 = [MEMORY[0x277CCAB98] defaultCenter];
    [v16 postNotificationName:@"SBRecentAppLayoutsDidChangeNotification" object:self userInfo:v18];
  }
}

void __61__SBRecentAppLayouts__setRecents_notifyForChangeDescription___block_invoke(id *a1, void *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (([v3 isHidden] & 1) == 0)
  {
    [a1[4] addObject:v3];
  }

  v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = [v3 allItems];
  v5 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v27;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v27 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v26 + 1) + 8 * i);
        v10 = [v9 bundleIdentifier];
        [v4 addObject:v10];
        v11 = [a1[5] objectForKey:v10];
        v12 = [a1[6] objectForKey:v10];
        if (!v11)
        {
          v11 = objc_alloc_init(MEMORY[0x277CBEB40]);
          [a1[5] setObject:v11 forKey:v10];
        }

        [v11 addObject:v9];
        if (([v3 isHidden] & 1) == 0)
        {
          if (!v12)
          {
            v12 = objc_alloc_init(MEMORY[0x277CBEB40]);
            [a1[6] setObject:v12 forKey:v10];
          }

          [v12 addObject:v9];
        }
      }

      v6 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v6);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v13 = v4;
  v14 = [v13 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v23;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v23 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v22 + 1) + 8 * j);
        v19 = [a1[7] objectForKey:v18];
        v20 = [a1[8] objectForKey:v18];
        if (!v19)
        {
          v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
          [a1[7] setObject:v19 forKey:v18];
        }

        [v19 addObject:v3];
        if (([v3 isHidden] & 1) == 0)
        {
          if (!v20)
          {
            v20 = objc_alloc_init(MEMORY[0x277CBEB18]);
            [a1[8] setObject:v20 forKey:v18];
          }

          [v20 addObject:v3];
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v15);
  }
}

- (id)_changeDescriptionForFilteringAppLayouts:(id)a3 withDisplayItemTest:(id)a4
{
  v26[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(MEMORY[0x277CCAB58]);
  v9 = objc_alloc_init(MEMORY[0x277CCAB58]);
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __83__SBRecentAppLayouts__changeDescriptionForFilteringAppLayouts_withDisplayItemTest___block_invoke;
  v19 = &unk_2783C4F58;
  v23 = v6;
  v24 = v7;
  v20 = self;
  v21 = v8;
  v22 = v9;
  v10 = v6;
  v11 = v9;
  v12 = v8;
  v13 = v7;
  [v10 enumerateObjectsUsingBlock:&v16];
  [v10 removeObjectsAtIndexes:{v12, v16, v17, v18, v19, v20}];
  v25[0] = @"SBRecentAppLayoutsDidModifyAtIndexesKey";
  v25[1] = @"SBRecentAppLayoutsDidRemoveAtIndexesKey";
  v26[0] = v11;
  v26[1] = v12;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:2];

  return v14;
}

void __83__SBRecentAppLayouts__changeDescriptionForFilteringAppLayouts_withDisplayItemTest___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __83__SBRecentAppLayouts__changeDescriptionForFilteringAppLayouts_withDisplayItemTest___block_invoke_2;
  v14 = &unk_2783C4F30;
  v16 = *(a1 + 64);
  v6 = v5;
  v15 = v6;
  v7 = [v6 appLayoutWithItemsPassingTest:&v11];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 120));
  if (WeakRetained)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    if ([v7 isEqual:{v6, v11, v12, v13, v14}])
    {
      goto LABEL_8;
    }

    v10 = [WeakRetained recentAppLayouts:*(a1 + 32) willReplaceAppLayout:v6 proposedReplacementAppLayout:v7];

    v7 = v10;
  }

  if (!v7)
  {
    [*(a1 + 40) addIndex:a3];
    goto LABEL_11;
  }

LABEL_8:
  if (([v6 isEqual:{v7, v11, v12, v13, v14}] & 1) == 0)
  {
    [*(a1 + 48) addIndex:{a3 - objc_msgSend(*(a1 + 40), "count")}];
    [*(a1 + 56) replaceObjectAtIndex:a3 withObject:v7];
  }

LABEL_11:
}

- (void)addAppLayout:(id)a3 atIndex:(unint64_t)a4
{
  v49[3] = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (!v6)
  {
    [SBRecentAppLayouts addAppLayout:atIndex:];
  }

  if ([v6 type])
  {
    [SBRecentAppLayouts addAppLayout:atIndex:];
  }

  v7 = self->_allRecents;
  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = __43__SBRecentAppLayouts_addAppLayout_atIndex___block_invoke;
  v47[3] = &unk_2783A8C90;
  v47[4] = self;
  v8 = [v6 appLayoutWithItemsPassingTest:v47];
  if (a4 || (-[NSMutableArray firstObject](v7, "firstObject"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 isEqual:v8], v9, (v10 & 1) == 0))
  {
    if (v8)
    {
      v11 = [(SBRecentAppLayouts *)self delegate];
      v46[0] = MEMORY[0x277D85DD0];
      v46[1] = 3221225472;
      v46[2] = __43__SBRecentAppLayouts_addAppLayout_atIndex___block_invoke_2;
      v46[3] = &unk_2783AEDE0;
      v46[4] = self;
      v46[5] = a2;
      [v8 enumerate:v46];
      v12 = objc_alloc_init(MEMORY[0x277CCAB58]);
      v39 = objc_alloc_init(MEMORY[0x277CCAB58]);
      v37 = objc_alloc_init(MEMORY[0x277CCAB58]);
      v13 = [(NSMutableArray *)v7 mutableCopy];
      v14 = [v13 count];
      if (v14 >= 0x64)
      {
        v15 = v14 - 1;
        do
        {
          v16 = [v13 objectAtIndex:v15];
          [v11 recentAppLayouts:self didRemoveAppLayoutForFallingOffList:v16];
          [v13 removeObjectAtIndex:v15];
          [v12 addIndex:v15];

          --v15;
        }

        while (v15 > 0x62);
      }

      v17 = [v8 allItems];
      v43[0] = MEMORY[0x277D85DD0];
      v43[1] = 3221225472;
      v43[2] = __43__SBRecentAppLayouts_addAppLayout_atIndex___block_invoke_3;
      v43[3] = &unk_2783C4F80;
      v8 = v8;
      v44 = v8;
      v36 = v17;
      v45 = v36;
      v18 = [(SBRecentAppLayouts *)self _changeDescriptionForFilteringAppLayouts:v13 withDisplayItemTest:v43];
      v19 = [v18 objectForKeyedSubscript:@"SBRecentAppLayoutsDidRemoveAtIndexesKey"];
      if (v19)
      {
        [v12 addIndexes:v19];
      }

      else
      {
        [MEMORY[0x277CCAA78] indexSet];
        v20 = v6;
        v22 = v21 = v18;
        [v12 addIndexes:v22];

        v18 = v21;
        v6 = v20;
      }

      v35 = v18;
      v23 = [v18 objectForKeyedSubscript:@"SBRecentAppLayoutsDidModifyAtIndexesKey"];
      v24 = v39;
      if (v23)
      {
        [v39 addIndexes:v23];
      }

      else
      {
        v25 = [MEMORY[0x277CCAA78] indexSet];
        [v39 addIndexes:v25];

        v24 = v39;
      }

      v38 = v7;
      if (v11)
      {
        v26 = objc_alloc(MEMORY[0x277CBEB98]);
        v27 = [v13 objectsAtIndexes:v24];
        v28 = [v26 initWithArray:v27];

        v29 = objc_alloc(MEMORY[0x277CBEB98]);
        v30 = [(NSMutableArray *)v7 objectsAtIndexes:v12];
        v31 = [v29 initWithArray:v30];

        if ([v31 containsObject:v8])
        {
          v41[0] = MEMORY[0x277D85DD0];
          v41[1] = 3221225472;
          v41[2] = __43__SBRecentAppLayouts_addAppLayout_atIndex___block_invoke_4;
          v41[3] = &unk_2783A8CB8;
          v42 = v8;
          v32 = [v31 bs_filter:v41];

          v31 = v32;
        }

        v33 = [v11 recentAppLayouts:self willAddAppLayout:v8 replacingAppLayouts:v28 removingAppLayouts:v31];

        v8 = v33;
        v24 = v39;
      }

      [v13 insertObject:v8 atIndex:a4];
      [v37 addIndex:a4];
      [v24 shiftIndexesStartingAtIndex:a4 by:1];
      v48[0] = @"SBRecentAppLayoutsDidInsertAtIndexesKey";
      v48[1] = @"SBRecentAppLayoutsDidModifyAtIndexesKey";
      v49[0] = v37;
      v49[1] = v24;
      v48[2] = @"SBRecentAppLayoutsDidRemoveAtIndexesKey";
      v49[2] = v12;
      v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:v48 count:3];
      [(SBRecentAppLayouts *)self _setRecents:v13 notifyForChangeDescription:v34];

      if (!a4)
      {
        [v11 recentAppLayouts:self didMoveAppLayoutToFront:v8];
      }

      v7 = v38;
    }
  }
}

void __43__SBRecentAppLayouts_addAppLayout_atIndex___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if ([v4 type] && objc_msgSend(v4, "type") != 5)
  {
    __43__SBRecentAppLayouts_addAppLayout_atIndex___block_invoke_2_cold_1(a1);
  }
}

uint64_t __43__SBRecentAppLayouts_addAppLayout_atIndex___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([*(a1 + 32) environment] == 1 && objc_msgSend(*(a1 + 40), "count") == 1)
  {
    v7 = [*(a1 + 40) containsObject:v5];
    if (([v6 isHidden] & 1) == 0)
    {
      v8 = [*(a1 + 32) environment];
      v7 = (v8 == [v6 environment]) & v7;
    }
  }

  else
  {
    v7 = [*(a1 + 40) containsObject:v5];
  }

  return v7 ^ 1u;
}

- (void)addAppLayout:(id)a3 afterAppLayout:(id)a4
{
  v7 = a3;
  v6 = [(NSMutableArray *)self->_allRecents indexOfObject:a4];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [SBRecentAppLayouts addAppLayout:afterAppLayout:];
  }

  [(SBRecentAppLayouts *)self addAppLayout:v7 atIndex:v6 + 1];
}

- (void)replaceAppLayout:(id)a3 withAppLayout:(id)a4
{
  v18[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    [SBRecentAppLayouts replaceAppLayout:withAppLayout:];
  }

  if ([v7 type])
  {
    [SBRecentAppLayouts replaceAppLayout:withAppLayout:];
  }

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __53__SBRecentAppLayouts_replaceAppLayout_withAppLayout___block_invoke;
  v16[3] = &unk_2783A8C90;
  v16[4] = self;
  v8 = [v7 appLayoutWithItemsPassingTest:v16];
  v9 = self->_allRecents;
  v10 = v9;
  if (v9)
  {
    v11 = [(NSMutableArray *)v9 indexOfObject:v6];
    if (v11 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v12 = v11;
      v13 = [(NSMutableArray *)v10 mutableCopy];
      [v13 replaceObjectAtIndex:v12 withObject:v8];
      v17 = @"SBRecentAppLayoutsDidModifyAtIndexesKey";
      v14 = [MEMORY[0x277CCAA78] indexSetWithIndex:v12];
      v18[0] = v14;
      v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
      [(SBRecentAppLayouts *)self _setRecents:v13 notifyForChangeDescription:v15];
    }
  }
}

- (void)remove:(id)a3
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v4 = MEMORY[0x277CBEA60];
  v5 = a3;
  v6 = [v4 arrayWithObjects:&v7 count:1];

  [(SBRecentAppLayouts *)self removeAppLayouts:v6, v7, v8];
}

- (void)removeAppLayouts:(id)a3
{
  allRecents = self->_allRecents;
  v5 = a3;
  v6 = [(NSMutableArray *)allRecents mutableCopy];
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __39__SBRecentAppLayouts_removeAppLayouts___block_invoke;
  v16[3] = &unk_2783B1D38;
  v8 = v7;
  v17 = v8;
  [v5 enumerateObjectsUsingBlock:v16];

  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __39__SBRecentAppLayouts_removeAppLayouts___block_invoke_2;
  v14 = &unk_2783C4FA8;
  v15 = v8;
  v9 = v8;
  v10 = [(SBRecentAppLayouts *)self _changeDescriptionForFilteringAppLayouts:v6 withDisplayItemTest:&v11];
  [(SBRecentAppLayouts *)self _setRecents:v6 notifyForChangeDescription:v10, v11, v12, v13, v14];
}

void __39__SBRecentAppLayouts_removeAppLayouts___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 allItems];
  [v2 addObjectsFromArray:v3];
}

- (void)hide:(id)a3
{
  v4 = a3;
  v5 = [v4 appLayoutByModifyingHiddenState:1];
  [(SBRecentAppLayouts *)self remove:v4];

  [(SBRecentAppLayouts *)self addToFront:v5];
}

- (id)mostRecentAppLayoutIncludingHiddenAppLayouts:(BOOL)a3 passingTest:(id)a4
{
  v4 = a3;
  v6 = a4;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__149;
  v18 = __Block_byref_object_dispose__149;
  v19 = 0;
  v7 = [(SBRecentAppLayouts *)self recentsIncludingHiddenAppLayouts:v4];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __79__SBRecentAppLayouts_mostRecentAppLayoutIncludingHiddenAppLayouts_passingTest___block_invoke;
  v11[3] = &unk_2783C4FD0;
  v8 = v6;
  v12 = v8;
  v13 = &v14;
  [v7 enumerateObjectsUsingBlock:v11];

  v9 = v15[5];
  _Block_object_dispose(&v14, 8);

  return v9;
}

void __79__SBRecentAppLayouts_mostRecentAppLayoutIncludingHiddenAppLayouts_passingTest___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if ((*(*(a1 + 32) + 16))())
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (id)_legacyAppLayoutForItem:(id)a3 layoutRole:(int64_t)a4
{
  v12[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [SBAppLayout alloc];
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
  v11 = v7;
  v12[0] = v5;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];

  v9 = [(SBAppLayout *)v6 initWithItemsForLayoutRoles:v8 configuration:1 environment:1 preferredDisplayOrdinal:0];

  return v9;
}

- (id)_legacyAppLayoutsForDisplayItems:(id)a3 layoutRolesMapping:(id)a4
{
  v6 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __74__SBRecentAppLayouts__legacyAppLayoutsForDisplayItems_layoutRolesMapping___block_invoke;
  v10[3] = &unk_2783B9DC8;
  v10[4] = self;
  v11 = v6;
  v7 = v6;
  v8 = [a3 bs_map:v10];

  return v8;
}

id __74__SBRecentAppLayouts__legacyAppLayoutsForDisplayItems_layoutRolesMapping___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [v3 objectForKeyedSubscript:v4];
  v6 = [v2 _legacyAppLayoutForItem:v4 layoutRole:{objc_msgSend(v5, "unsignedIntegerValue")}];

  return v6;
}

- (id)_recentsFromPrefs
{
  v3 = [(SBAppSwitcherDefaults *)self->_defaults recentsPlistRepresentation];
  v4 = objc_opt_class();
  v5 = v3;
  if (v4)
  {
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

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __39__SBRecentAppLayouts__recentsFromPrefs__block_invoke;
  v15[3] = &unk_2783B5670;
  v15[4] = self;
  v8 = [v7 bs_map:v15];

  if (!v8 || ([MEMORY[0x277CBEB68] null], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v8, "containsObject:", v9), v9, v10))
  {
    v11 = [(SBRecentAppLayouts *)self _recentDisplayItemsFromLegacyPrefs];
    v12 = [(SBRecentAppLayouts *)self _displayItemLayoutRolesFromLegacyPrefsForLoadedDisplayItems:v11];
    v13 = [(SBRecentAppLayouts *)self _legacyAppLayoutsForDisplayItems:v11 layoutRolesMapping:v12];

    v8 = v13;
  }

  return v8;
}

SBAppLayout *__39__SBRecentAppLayouts__recentsFromPrefs__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[SBAppLayout alloc] initWithPlistRepresentation:v3 layoutAttributesProvider:*(*(a1 + 32) + 128)];

  return v4;
}

- (id)_recentDisplayItemsFromLegacyPrefs
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = [(SBAppSwitcherDefaults *)self->_defaults legacyRecentDisplayItems];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * v8);
        v10 = [[SBDisplayItem alloc] initWithLegacyPlistRepresentation:v9];
        if (v10)
        {
          [v3 addObject:v10];
        }

        else
        {
          v11 = SBLogCommon();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v18 = v9;
            _os_log_error_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_ERROR, "bad app layout found in persistent storage, item=%{public}@", buf, 0xCu);
          }
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v13 objects:v19 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)_displayItemLayoutRolesFromLegacyPrefsForLoadedDisplayItems:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SBAppSwitcherDefaults *)self->_defaults legacyRecentDisplayItemRoles];
  v6 = [v5 bs_map:&__block_literal_global_95_1];

  v7 = [v6 count];
  if (v7 == [v4 count])
  {
    v8 = [objc_alloc(MEMORY[0x277CBEB38]) initWithObjects:v6 forKeys:v4];
  }

  else
  {
    v17 = v6;
    v8 = [MEMORY[0x277CBEB38] dictionary];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v9 = v4;
    v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v19;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v18 + 1) + 8 * i);
          v15 = [MEMORY[0x277CCABB0] numberWithInteger:1];
          [v8 setObject:v15 forKey:v14];
        }

        v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v11);
    }

    v6 = v17;
  }

  return v8;
}

uint64_t __82__SBRecentAppLayouts__displayItemLayoutRolesFromLegacyPrefsForLoadedDisplayItems___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [a2 integerValue];
  v4 = &SBLayoutRolePrimary;
  v5 = &SBLayoutRoleSide;
  if (v3 != 3)
  {
    v5 = &SBLayoutRoleUndefined;
  }

  if (v3 != 2)
  {
    v4 = v5;
  }

  v6 = *v4;

  return [v2 numberWithInteger:v6];
}

- (void)_validateAndUpdateRecents:(id)a3
{
  v47 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v43[0] = 0;
  v43[1] = v43;
  v43[2] = 0x3032000000;
  v43[3] = __Block_byref_object_copy__149;
  v43[4] = __Block_byref_object_dispose__149;
  v44 = [MEMORY[0x277CBEB58] set];
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy__149;
  v41 = __Block_byref_object_dispose__149;
  v42 = 0;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__149;
  v35 = __Block_byref_object_dispose__149;
  v36 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__149;
  v29 = __Block_byref_object_dispose__149;
  v30 = 0;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __48__SBRecentAppLayouts__validateAndUpdateRecents___block_invoke;
  v24[3] = &unk_2783C5040;
  v24[4] = self;
  v24[5] = v43;
  v24[6] = &v37;
  v24[7] = &v31;
  v24[8] = &v25;
  v14 = [v4 indexesOfObjectsPassingTest:v24];
  if ([v38[5] count])
  {
    [v4 replaceObjectsAtIndexes:v38[5] withObjects:v32[5]];
  }

  if ([v14 count])
  {
    [v4 removeObjectsAtIndexes:v14];
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = v26[5];
  v5 = [obj countByEnumeratingWithState:&v20 objects:v46 count:16];
  if (v5)
  {
    v6 = *v21;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v21 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v20 + 1) + 8 * i);
        v9 = [v4 indexOfObject:v8];
        if (v9 != 0x7FFFFFFFFFFFFFFFLL)
        {
          [v4 removeObject:v8];
          v18 = 0u;
          v19 = 0u;
          v16 = 0u;
          v17 = 0u;
          v10 = [v26[5] objectForKey:v8];
          v11 = [v10 countByEnumeratingWithState:&v16 objects:v45 count:16];
          if (v11)
          {
            v12 = *v17;
            do
            {
              for (j = 0; j != v11; ++j)
              {
                if (*v17 != v12)
                {
                  objc_enumerationMutation(v10);
                }

                [v4 insertObject:*(*(&v16 + 1) + 8 * j) atIndex:v9++];
              }

              v11 = [v10 countByEnumeratingWithState:&v16 objects:v45 count:16];
            }

            while (v11);
          }
        }
      }

      v5 = [obj countByEnumeratingWithState:&v20 objects:v46 count:16];
    }

    while (v5);
  }

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v31, 8);

  _Block_object_dispose(&v37, 8);
  _Block_object_dispose(v43, 8);
}

uint64_t __48__SBRecentAppLayouts__validateAndUpdateRecents___block_invoke(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v51 = 0;
  v52 = &v51;
  v53 = 0x2020000000;
  v54 = 0;
  v47 = 0;
  v48 = &v47;
  v49 = 0x2020000000;
  v50 = 0;
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = __Block_byref_object_copy__149;
  v45 = __Block_byref_object_dispose__149;
  v46 = [MEMORY[0x277CBEB38] dictionary];
  v6 = [v5 itemForLayoutRole:2];
  if (v6)
  {
    v7 = [v5 itemForLayoutRole:1];

    if (!v7)
    {
      *(v52 + 24) = 1;
    }
  }

  v8 = [v5 allItems];
  if ([v8 count] == 1)
  {
    v9 = [v5 configuration];

    v10 = v52;
    if (v9 != 1)
    {
      *(v52 + 24) = 1;
    }
  }

  else
  {

    v10 = v52;
  }

  if (v10[3])
  {
    v11 = 1;
  }

  else
  {
    v31 = MEMORY[0x277D85DD0];
    v32 = 3221225472;
    v33 = __48__SBRecentAppLayouts__validateAndUpdateRecents___block_invoke_2;
    v34 = &unk_2783C5018;
    v35 = a1[4];
    v37 = &v51;
    v12 = v5;
    v13 = a1[5];
    v36 = v12;
    v38 = v13;
    v39 = &v47;
    v40 = &v41;
    [v12 enumerate:&v31];
    v14 = v12;
    v15 = v14;
    if (*(v48 + 24) == 1)
    {
      v16 = [SBAppLayout alloc];
      v17 = [(SBAppLayout *)v16 initWithItemsForLayoutRoles:v42[5] configuration:[(SBAppLayout *)v15 configuration:v31] environment:[(SBAppLayout *)v15 environment] preferredDisplayOrdinal:[(SBAppLayout *)v15 preferredDisplayOrdinal]];

      v18 = *(*(a1[6] + 8) + 40);
      if (v18)
      {
        [v18 addIndex:a3];
        [*(*(a1[7] + 8) + 40) addObject:v17];
      }

      else
      {
        v19 = [MEMORY[0x277CCAB58] indexSetWithIndex:a3];
        v20 = *(a1[6] + 8);
        v21 = *(v20 + 40);
        *(v20 + 40) = v19;

        v22 = [MEMORY[0x277CBEB18] arrayWithObject:v17];
        v23 = *(a1[7] + 8);
        v24 = *(v23 + 40);
        *(v23 + 40) = v22;
      }
    }

    else
    {
      v17 = v14;
    }

    if ((v52[3] & 1) == 0 && (SBFIsChamoisWindowingUIAvailable() & 1) == 0 && (SBFIsFlexibleWindowingUIAvailable() & 1) == 0)
    {
      v25 = -[SBAppLayout appLayoutsBySplittingMedusaIncompatibleItemsWithApplicationController:multitaskingSupported:](v17, "appLayoutsBySplittingMedusaIncompatibleItemsWithApplicationController:multitaskingSupported:", *(a1[4] + 80), [*(a1[4] + 64) medusaMultitaskingEnabled]);
      if (v25)
      {
        v26 = *(*(a1[8] + 8) + 40);
        if (!v26)
        {
          v27 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
          v28 = *(a1[8] + 8);
          v29 = *(v28 + 40);
          *(v28 + 40) = v27;

          v26 = *(*(a1[8] + 8) + 40);
        }

        [v26 setObject:v25 forKey:{v17, v31, v32, v33, v34, v35}];
      }
    }

    v11 = *(v52 + 24);
  }

  _Block_object_dispose(&v41, 8);

  _Block_object_dispose(&v47, 8);
  _Block_object_dispose(&v51, 8);

  return v11 & 1;
}

void __48__SBRecentAppLayouts__validateAndUpdateRecents___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v7 = a3;
  v8 = [v7 bundleIdentifier];
  v9 = [*(*(a1 + 32) + 80) applicationWithBundleIdentifier:v8];
  if (!v9)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    *a4 = 1;
    v10 = SBLogCommon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __48__SBRecentAppLayouts__validateAndUpdateRecents___block_invoke_2_cold_1();
    }
  }

  v11 = [v9 info];
  v12 = [v11 isSignatureVersionSupported];

  if ((v12 & 1) == 0)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    *a4 = 1;
    v13 = SBLogCommon();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __48__SBRecentAppLayouts__validateAndUpdateRecents___block_invoke_2_cold_2();
    }
  }

  v14 = *(a1 + 48);
  if ((*(*(v14 + 8) + 24) & 1) == 0)
  {
    IsValid = SBLayoutRoleIsValid(a2);
    v14 = *(a1 + 48);
    if (!IsValid || a2 == 3)
    {
      *(*(v14 + 8) + 24) = 1;
      v16 = SBLogCommon();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        __48__SBRecentAppLayouts__validateAndUpdateRecents___block_invoke_2_cold_3();
      }

      *a4 = 1;
      v14 = *(a1 + 48);
    }
  }

  if ((*(*(v14 + 8) + 24) & 1) == 0)
  {
    v17 = v9;
    if (__sb__runningInSpringBoard())
    {
      if (SBFEffectiveDeviceClass() != 2)
      {
LABEL_18:
        v18 = [v17 bundleIdentifier];
        v19 = [v18 isEqualToString:@"com.apple.webapp"];
LABEL_21:
        v22 = v19;

        if ((v22 & 1) == 0)
        {
          if ([*(*(*(a1 + 56) + 8) + 40) containsObject:v8])
          {
            *(*(*(a1 + 48) + 8) + 24) = 1;
            *a4 = 1;
            v23 = SBLogCommon();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              __48__SBRecentAppLayouts__validateAndUpdateRecents___block_invoke_2_cold_4();
            }
          }

          else
          {
            [*(*(*(a1 + 56) + 8) + 40) addObject:v8];
          }
        }

        v24 = [*(a1 + 32) _isExistingSceneIdentifierValidForClaimedMultiwindowSupportInDisplayItem:v7];
        v14 = *(a1 + 48);
        if ((v24 & 1) == 0)
        {
          *(*(v14 + 8) + 24) = 1;
          *a4 = 1;
          v25 = SBLogCommon();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            __48__SBRecentAppLayouts__validateAndUpdateRecents___block_invoke_2_cold_5();
          }

          v14 = *(a1 + 48);
        }

        goto LABEL_31;
      }
    }

    else
    {
      v20 = [MEMORY[0x277D75418] currentDevice];
      v21 = [v20 userInterfaceIdiom];

      if (v21 != 1)
      {
        goto LABEL_18;
      }
    }

    v18 = [v17 info];
    v19 = [v18 supportsMultiwindow];
    goto LABEL_21;
  }

LABEL_31:
  if ((*(*(v14 + 8) + 24) & 1) == 0)
  {
    v26 = [*(a1 + 32) _migrateDisplayItemIfNeeded:v7];
    if (v26)
    {
      *(*(*(a1 + 64) + 8) + 24) = 1;
      v27 = *(*(*(a1 + 72) + 8) + 40);
      v28 = [MEMORY[0x277CCABB0] numberWithInteger:a2];
      v29 = v27;
      v30 = v26;
    }

    else
    {
      v31 = *(*(*(a1 + 72) + 8) + 40);
      v28 = [MEMORY[0x277CCABB0] numberWithInteger:a2];
      v29 = v31;
      v30 = v7;
    }

    [v29 setObject:v30 forKey:v28];
  }
}

- (BOOL)_isExistingSceneIdentifierValidForClaimedMultiwindowSupportInDisplayItem:(id)a3
{
  applicationController = self->_applicationController;
  v4 = a3;
  v5 = [v4 bundleIdentifier];
  v6 = [(SBApplicationController *)applicationController applicationWithBundleIdentifier:v5];

  v7 = [v4 uniqueIdentifier];

  if (v7 && (v8 = [v7 length], v8 >= objc_msgSend(@"default", "length")))
  {
    v10 = [v6 info];
    v11 = [v10 supportsMultiwindow];

    v9 = v11 ^ [v7 hasSuffix:@"default"];
  }

  else
  {
    LOBYTE(v9) = 1;
  }

  return v9;
}

- (void)_setUpStashedModelSettingsOutlets
{
  v3 = +[SBAppSwitcherDomain rootSettings];
  v4 = [v3 clearModelOutlet];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __55__SBRecentAppLayouts__setUpStashedModelSettingsOutlets__block_invoke;
  v18[3] = &unk_2783A8C18;
  v18[4] = self;
  v5 = [v4 addAction:v18];

  v6 = [v3 stashModelOutlet];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __55__SBRecentAppLayouts__setUpStashedModelSettingsOutlets__block_invoke_2;
  v17[3] = &unk_2783A8C18;
  v17[4] = self;
  v7 = [v6 addAction:v17];

  v8 = [v3 loadModelOutlet];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __55__SBRecentAppLayouts__setUpStashedModelSettingsOutlets__block_invoke_3;
  v16[3] = &unk_2783A8C18;
  v16[4] = self;
  v9 = [v8 addAction:v16];

  v10 = [v3 addAppsToModelOutlet];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __55__SBRecentAppLayouts__setUpStashedModelSettingsOutlets__block_invoke_4;
  v15[3] = &unk_2783A8C18;
  v15[4] = self;
  v11 = [v10 addAction:v15];

  v12 = [v3 addPPTAppsToModelOutlet];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __55__SBRecentAppLayouts__setUpStashedModelSettingsOutlets__block_invoke_5;
  v14[3] = &unk_2783A8C18;
  v14[4] = self;
  v13 = [v12 addAction:v14];
}

void __55__SBRecentAppLayouts__setUpStashedModelSettingsOutlets__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = SBStashedModelPath();
  [v1 _stashModelToPath:v2];
}

void __55__SBRecentAppLayouts__setUpStashedModelSettingsOutlets__block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = SBStashedModelPath();
  [v1 _loadStashedModelAtPath:v2];
}

- (BOOL)_stashModelToPath:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = self->_allRecents;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __40__SBRecentAppLayouts__stashModelToPath___block_invoke;
  v15[3] = &unk_2783AE218;
  v15[4] = self;
  v6 = [(NSMutableArray *)v5 bs_map:v15];
  v7 = [MEMORY[0x277CCAC58] dataWithPropertyList:v6 format:100 options:0 error:0];
  v14 = 0;
  v8 = [v7 writeToFile:v4 options:1 error:&v14];
  v9 = v14;
  if ((v8 & 1) == 0)
  {
    v10 = SBLogCommon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v12 = [v7 length];
      v13 = [v9 localizedDescription];
      *buf = 134218498;
      v17 = v12;
      v18 = 2112;
      v19 = v4;
      v20 = 2112;
      v21 = v13;
      _os_log_error_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_ERROR, "Error writing data (len=%lu) to %@: %@", buf, 0x20u);
    }
  }

  return v8;
}

id __40__SBRecentAppLayouts__stashModelToPath___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 128);
  v3 = a2;
  v4 = [v2 layoutAttributesMapForAppLayout:v3 displayOrdinal:0 orientation:0];
  v5 = [v3 plistRepresentationWithLayoutAttributesMap:v4];

  return v5;
}

- (BOOL)_loadStashedModelAtPath:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:a3];
  if (v4)
  {
    v5 = [MEMORY[0x277CCAC58] propertyListWithData:v4 options:0 format:0 error:0];
    v6 = v5;
    if (v5 && (v29[0] = MEMORY[0x277D85DD0], v29[1] = 3221225472, v29[2] = __46__SBRecentAppLayouts__loadStashedModelAtPath___block_invoke, v29[3] = &unk_2783BD920, v29[4] = self, [v5 bs_map:v29], (v7 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v8 = v7;
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v9 = [(NSMutableArray *)self->_allRecents copy];
      v10 = [v9 countByEnumeratingWithState:&v25 objects:v31 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v26;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v26 != v12)
            {
              objc_enumerationMutation(v9);
            }

            [(SBRecentAppLayouts *)self remove:*(*(&v25 + 1) + 8 * i)];
          }

          v11 = [v9 countByEnumeratingWithState:&v25 objects:v31 count:16];
        }

        while (v11);
      }

      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v14 = [v8 reverseObjectEnumerator];
      v15 = [v14 countByEnumeratingWithState:&v21 objects:v30 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v22;
        do
        {
          for (j = 0; j != v16; ++j)
          {
            if (*v22 != v17)
            {
              objc_enumerationMutation(v14);
            }

            [(SBRecentAppLayouts *)self addToFront:*(*(&v21 + 1) + 8 * j)];
          }

          v16 = [v14 countByEnumeratingWithState:&v21 objects:v30 count:16];
        }

        while (v16);
      }

      v19 = 1;
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

SBAppLayout *__46__SBRecentAppLayouts__loadStashedModelAtPath___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[SBAppLayout alloc] initWithPlistRepresentation:v3 layoutAttributesProvider:*(*(a1 + 32) + 128)];

  return v4;
}

- (void)_addAllAppsToModel
{
  v21 = *MEMORY[0x277D85DE8];
  +[SBApplicationController sharedInstance];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v12 = v17 = 0u;
  obj = [v12 allBundleIdentifiers];
  v3 = [obj countByEnumeratingWithState:&v14 objects:v20 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v15;
    do
    {
      v6 = 0;
      do
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = [SBDisplayItem displayItemWithType:0 bundleIdentifier:*(*(&v14 + 1) + 8 * v6) uniqueIdentifier:0];
        v8 = [SBAppLayout alloc];
        v9 = [MEMORY[0x277CCABB0] numberWithInteger:1];
        v18 = v9;
        v19 = v7;
        v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
        v11 = [(SBAppLayout *)v8 initWithItemsForLayoutRoles:v10 configuration:1 environment:1 preferredDisplayOrdinal:0];

        [(SBRecentAppLayouts *)self addToFront:v11];
        ++v6;
      }

      while (v4 != v6);
      v4 = [obj countByEnumeratingWithState:&v14 objects:v20 count:16];
    }

    while (v4);
  }
}

- (id)_ppt_loadStashedModel
{
  v3 = [(SBRecentAppLayouts *)self _ppt_currentModel];
  if (__sb__runningInSpringBoard())
  {
    v4 = SBFEffectiveDeviceClass();
    v5 = @"_internal_iPhonePPTSwitcherModel";
    if (v4 == 2)
    {
      v5 = @"_internal_iPadPPTSwitcherModel";
    }

    v6 = v5;
  }

  else
  {
    v7 = [MEMORY[0x277D75418] currentDevice];
    v8 = [v7 userInterfaceIdiom];
    v9 = @"_internal_iPhonePPTSwitcherModel";
    if (v8 == 1)
    {
      v9 = @"_internal_iPadPPTSwitcherModel";
    }

    v6 = v9;
  }

  v10 = [MEMORY[0x277CCA8D8] mainBundle];
  v11 = [v10 pathForResource:v6 ofType:@"plist"];

  [(SBRecentAppLayouts *)self _loadStashedModelAtPath:v11];

  return v3;
}

- (id)_ppt_currentModel
{
  v2 = [(NSMutableArray *)self->_allRecents copy];

  return v2;
}

- (void)_ppt_setModel:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v5 = [(SBRecentAppLayouts *)self _ppt_currentModel];
    v6 = [v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v20;
      do
      {
        v9 = 0;
        do
        {
          if (*v20 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [(SBRecentAppLayouts *)self remove:*(*(&v19 + 1) + 8 * v9++)];
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v7);
    }

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v10 = [v4 reverseObjectEnumerator];
    v11 = [v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v16;
      do
      {
        v14 = 0;
        do
        {
          if (*v16 != v13)
          {
            objc_enumerationMutation(v10);
          }

          [(SBRecentAppLayouts *)self addToFront:*(*(&v15 + 1) + 8 * v14++)];
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
      }

      while (v12);
    }
  }
}

- (id)_acquireAllowHiddenAppAssertionForBundleIdentifier:(id)a3 reason:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [MEMORY[0x277CCAD78] UUID];
  v9 = [v8 UUIDString];

  v10 = SBLogAppSwitcher();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v24 = v6;
    v25 = 2114;
    v26 = v7;
    v27 = 2114;
    v28 = v9;
    _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, "Acquiring visibility assertion of %{public}@ for %{public}@ identifier %{public}@", buf, 0x20u);
  }

  v11 = objc_alloc(MEMORY[0x277CF0CE8]);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __80__SBRecentAppLayouts__acquireAllowHiddenAppAssertionForBundleIdentifier_reason___block_invoke;
  v17[3] = &unk_2783BA4E0;
  objc_copyWeak(&v21, &location);
  v12 = v6;
  v18 = v12;
  v13 = v9;
  v19 = v13;
  v14 = v7;
  v20 = v14;
  v15 = [v11 initWithIdentifier:v13 forReason:v14 invalidationBlock:v17];
  [(SBRecentAppLayouts *)self _addAllowHiddenAppAssertionForBundleIdentifier:v12 requestIdentifier:v13];

  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);

  return v15;
}

void __80__SBRecentAppLayouts__acquireAllowHiddenAppAssertionForBundleIdentifier_reason___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _removeAllowHiddenAppAssertionForBundleIdentifier:*(a1 + 32) requestIdentifier:*(a1 + 40)];
  v3 = SBLogAppSwitcher();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 40);
    v4 = *(a1 + 48);
    v6 = *(a1 + 32);
    v7 = 138543874;
    v8 = v6;
    v9 = 2114;
    v10 = v4;
    v11 = 2114;
    v12 = v5;
    _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "Invalidated visibility assertion of %{public}@ for %{public}@ identifier %{public}@", &v7, 0x20u);
  }
}

- (void)_addAllowHiddenAppAssertionForBundleIdentifier:(id)a3 requestIdentifier:(id)a4
{
  v11 = a3;
  v6 = a4;
  allowHiddenAppAssertions = self->_allowHiddenAppAssertions;
  if (!allowHiddenAppAssertions)
  {
    v8 = [MEMORY[0x277CBEB38] dictionary];
    v9 = self->_allowHiddenAppAssertions;
    self->_allowHiddenAppAssertions = v8;

    allowHiddenAppAssertions = self->_allowHiddenAppAssertions;
  }

  v10 = [(NSMutableDictionary *)allowHiddenAppAssertions objectForKey:v11];
  if (!v10)
  {
    v10 = [MEMORY[0x277CBEB58] set];
    [(NSMutableDictionary *)self->_allowHiddenAppAssertions setObject:v10 forKey:v11];
  }

  [v10 addObject:v6];
  [(SBRecentAppLayouts *)self _filterRestrictedOrUnsupportedAppsFromRecents];
}

- (void)_removeAllowHiddenAppAssertionForBundleIdentifier:(id)a3 requestIdentifier:(id)a4
{
  allowHiddenAppAssertions = self->_allowHiddenAppAssertions;
  v7 = a4;
  v8 = [(NSMutableDictionary *)allowHiddenAppAssertions objectForKey:a3];
  [v8 removeObject:v7];

  [(SBRecentAppLayouts *)self _filterRestrictedOrUnsupportedAppsFromRecents];
}

- (BOOL)_ignoresAppHiddenForDisplayItem:(id)a3
{
  v4 = a3;
  allowHiddenAppAssertions = self->_allowHiddenAppAssertions;
  v6 = [v4 bundleIdentifier];
  v7 = [(NSMutableDictionary *)allowHiddenAppAssertions objectForKey:v6];
  if ([v7 count])
  {
    v8 = 1;
  }

  else
  {
    v9 = [objc_opt_class() allowedHiddenApplicationBundleIdentifiers];
    v10 = [v4 bundleIdentifier];
    v8 = [v9 containsObject:v10];
  }

  return v8;
}

- (BOOL)_isDisplayItemRestrictedOrUnsupported:(id)a3
{
  v4 = a3;
  if (![v4 type])
  {
    v6 = [v4 bundleIdentifier];
    if (!v6)
    {
      v5 = 0;
LABEL_18:

      goto LABEL_19;
    }

    v7 = [(SBHIconRepository *)self->_iconRepository iconForIdentifier:v6];
    v8 = [(SBRecentAppLayouts *)self _isApplicationSupported:v6];
    if (![(SBHIconRepository *)self->_iconRepository isIconVisible:v7])
    {
      v9 = [v7 application];
      if (v9)
      {
        v10 = v9;
        v11 = [v9 info];
        v12 = [v11 isAppClip];

        if ((v12 & 1) == 0)
        {
LABEL_13:
          v17 = [(SBRecentAppLayouts *)self _ignoresAppHiddenForDisplayItem:v4];
          goto LABEL_14;
        }
      }

      else
      {
        placeholderController = self->_placeholderController;
        v14 = [v4 bundleIdentifier];
        v15 = [(SBApplicationPlaceholderController *)placeholderController placeholderForDisplayID:v14];

        if (!v15)
        {
          goto LABEL_13;
        }

        v16 = [v15 isAppClip];

        if ((v16 & 1) == 0)
        {
          goto LABEL_13;
        }

        v8 = 1;
      }
    }

    v17 = 1;
LABEL_14:
    v18 = [(SBApplicationController *)self->_applicationController restrictionController];
    v19 = [v18 isApplicationIdentifierRestricted:v6];

    if (v17)
    {
      v5 = v19 | !v8;
    }

    else
    {
      v5 = 1;
    }

    goto LABEL_18;
  }

  v5 = 0;
LABEL_19:

  return v5 & 1;
}

- (id)_changeDescriptionForFilteringRestrictedOrUnsupportedAppsFromAppLayouts:(id)a3
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __94__SBRecentAppLayouts__changeDescriptionForFilteringRestrictedOrUnsupportedAppsFromAppLayouts___block_invoke;
  v5[3] = &unk_2783C4FA8;
  v5[4] = self;
  v3 = [(SBRecentAppLayouts *)self _changeDescriptionForFilteringAppLayouts:a3 withDisplayItemTest:v5];

  return v3;
}

- (void)_filterRestrictedOrUnsupportedAppsFromRecents
{
  v4 = [(NSMutableArray *)self->_allRecents mutableCopy];
  v3 = [(SBRecentAppLayouts *)self _changeDescriptionForFilteringRestrictedOrUnsupportedAppsFromAppLayouts:v4];
  [(SBRecentAppLayouts *)self _setRecents:v4 notifyForChangeDescription:v3];
}

- (id)_changeDescriptionForFilteringRestrictedUnsupportedAndInvalidAppsFromAppLayouts:(id)a3
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __102__SBRecentAppLayouts__changeDescriptionForFilteringRestrictedUnsupportedAndInvalidAppsFromAppLayouts___block_invoke;
  v5[3] = &unk_2783C4FA8;
  v5[4] = self;
  v3 = [(SBRecentAppLayouts *)self _changeDescriptionForFilteringAppLayouts:a3 withDisplayItemTest:v5];

  return v3;
}

uint64_t __102__SBRecentAppLayouts__changeDescriptionForFilteringRestrictedUnsupportedAndInvalidAppsFromAppLayouts___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) _isDisplayItemRestrictedOrUnsupported:v3])
  {
    v4 = 0;
  }

  else
  {
    v4 = [*(a1 + 32) _isExistingSceneIdentifierValidForClaimedMultiwindowSupportInDisplayItem:v3];
  }

  return v4;
}

- (void)_filterRestrictedUnsupportedAndInvalidAppsFromRecents
{
  v3 = [(SBRecentAppLayouts *)self recentsIncludingHiddenAppLayouts:1];
  v5 = [v3 mutableCopy];

  v4 = [(SBRecentAppLayouts *)self _changeDescriptionForFilteringRestrictedUnsupportedAndInvalidAppsFromAppLayouts:v5];
  [(SBRecentAppLayouts *)self _setRecents:v5 notifyForChangeDescription:v4];
}

+ (id)allowedHiddenApplicationBundleIdentifiers
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = @"com.apple.BarcodeScanner";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];

  return v2;
}

- (BOOL)_isApplicationSupported:(id)a3
{
  v3 = [(SBApplicationController *)self->_applicationController applicationWithBundleIdentifier:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 info];
    v6 = [v5 supports64Bit];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_migrateDisplayItemIfNeeded:(id)a3
{
  v4 = a3;
  v5 = [v4 uniqueIdentifier];
  if ([v4 type] && objc_msgSend(v4, "type") != 5 || (objc_msgSend(v5, "hasPrefix:", @"sceneID") & 1) != 0)
  {
    v6 = 0;
  }

  else
  {
    applicationController = self->_applicationController;
    v8 = [v4 bundleIdentifier];
    v9 = [(SBApplicationController *)applicationController applicationWithBundleIdentifier:v8];

    v10 = [v9 _dataStore];
    v11 = [(SBSceneManager *)self->_sceneManager newSceneIdentityForApplication:v9];
    v12 = [v11 identifier];

    v13 = [v10 sceneStoreForIdentifier:v12 creatingIfNecessary:1];
    v14 = [v10 sceneStoreForIdentifier:v5 creatingIfNecessary:0];
    v15 = [v14 _data];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __50__SBRecentAppLayouts__migrateDisplayItemIfNeeded___block_invoke;
    v21[3] = &unk_2783AD138;
    v22 = v13;
    v16 = v13;
    [v15 enumerateKeysAndObjectsUsingBlock:v21];

    [v16 setObject:v5 forKey:@"persistenceIdentifier"];
    [v10 removeSceneStoreForIdentifier:v5];
    v17 = [SBDisplayItem alloc];
    v18 = [v4 type];
    v19 = [v4 bundleIdentifier];
    v6 = [(SBDisplayItem *)v17 initWithType:v18 bundleIdentifier:v19 uniqueIdentifier:v12];
  }

  return v6;
}

- (BOOL)_transitionContextRepresentsAmbiguousLaunch:(id)a3 forApplicationSceneEntity:(id)a4
{
  v6 = a4;
  v7 = [a3 request];
  v8 = [v7 source];

  v9 = [v6 actions];
  v10 = [v9 count];

  if (v10)
  {
    v11 = 0;
    goto LABEL_20;
  }

  if ((v8 - 3) >= 0x33)
  {
    v11 = 0;
    if (!v6)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v11 = 0;
    if (!v6 || ((0x5040100000301uLL >> (v8 - 3)) & 1) != 0)
    {
      goto LABEL_20;
    }
  }

  if (v8 != 52)
  {
    v12 = [v6 application];
    if (([v12 isWebApplication] & 1) != 0 || (objc_msgSend(v12, "info"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "supportsMultiwindow"), v13, !v14))
    {
      v11 = 0;
    }

    else
    {
      v15 = [v12 bundleIdentifier];
      v16 = [(SBRecentAppLayouts *)self recentDisplayItemsForBundleIdentifier:v15 includingHiddenAppLayouts:0];
      v17 = [v16 count];

      v18 = [(SBRecentAppLayouts *)self recentsForBundleIdentifier:v15 includingHiddenAppLayouts:0];
      v19 = [v18 count];

      v11 = v17 > 1 && v19 > 1;
    }
  }

LABEL_20:

  return v11;
}

- (void)initWithUserDefaults:persister:iconRepository:applicationController:placeholderController:sceneManager:layoutAttributesProvider:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v1 handleFailureInMethod:@"defaults" object:? file:? lineNumber:? description:?];
}

- (void)addAppLayout:atIndex:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"inAppLayout != nil" object:? file:? lineNumber:? description:?];
}

- (void)addAppLayout:atIndex:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void __43__SBRecentAppLayouts_addAppLayout_atIndex___block_invoke_2_cold_1(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  [v2 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"SBRecentAppLayouts.m" lineNumber:376 description:@"Only Apps may be added to app switcher model"];
}

- (void)addAppLayout:afterAppLayout:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)replaceAppLayout:withAppLayout:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"inNewAppLayout != nil" object:? file:? lineNumber:? description:?];
}

- (void)replaceAppLayout:withAppLayout:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void __48__SBRecentAppLayouts__validateAndUpdateRecents___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_3_34(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_0_5(&dword_21ED4E000, v0, v1, "bad app layout found in persistent storage. one of the referenced apps is not installed. appLayout=%{public}@", v2, v3, v4, v5, v6);
}

void __48__SBRecentAppLayouts__validateAndUpdateRecents___block_invoke_2_cold_2()
{
  OUTLINED_FUNCTION_3_34(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_0_5(&dword_21ED4E000, v0, v1, "application signature version was no longer supported.  appLayout=%{public}@", v2, v3, v4, v5, v6);
}

void __48__SBRecentAppLayouts__validateAndUpdateRecents___block_invoke_2_cold_3()
{
  OUTLINED_FUNCTION_3_34(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_0_5(&dword_21ED4E000, v0, v1, "bad app layout found reading from SBRecentAppLayout's persistent storage. One of the roles is not recognized. appLayout=%{public}@", v2, v3, v4, v5, v6);
}

void __48__SBRecentAppLayouts__validateAndUpdateRecents___block_invoke_2_cold_4()
{
  OUTLINED_FUNCTION_3_34(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_0_5(&dword_21ED4E000, v0, v1, "duplicate app layout for single window app found in persistent storage, appLayout=%{public}@", v2, v3, v4, v5, v6);
}

void __48__SBRecentAppLayouts__validateAndUpdateRecents___block_invoke_2_cold_5()
{
  OUTLINED_FUNCTION_3_34(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_0_5(&dword_21ED4E000, v0, v1, "bad app layout found in persistent storage, appLayout=%{public}@", v2, v3, v4, v5, v6);
}

@end