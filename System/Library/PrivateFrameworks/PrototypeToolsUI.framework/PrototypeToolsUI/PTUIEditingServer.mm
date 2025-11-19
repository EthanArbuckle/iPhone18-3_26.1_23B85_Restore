@interface PTUIEditingServer
- (PTUIEditingServer)initWithDataSource:(id)a3 delegate:(id)a4 forRemoteEditing:(BOOL)a5;
- (id)_loadRootSettingsOrProxyForDomainID:(id)a3;
- (id)_recipeIDForRow:(int64_t)a3 inSection:(int64_t)a4;
- (id)_settingsDomainGroupModule:(id)a3;
- (id)_settingsDomainRow:(id)a3;
- (id)_settingsGroupRow:(id)a3;
- (id)_settingsSection;
- (id)_testRecipeSection;
- (id)choiceRow:(id)a3 titleForRow:(int64_t)a4 inSection:(int64_t)a5;
- (id)choiceRow:(id)a3 titleForSection:(int64_t)a4;
- (id)choiceRow:(id)a3 valueForRow:(int64_t)a4 inSection:(int64_t)a5;
- (id)displayNameForDomainID:(id)a3;
- (id)domainGroupNames;
- (id)domainIDForRootSettings:(id)a3;
- (id)domainIDsInGroup:(id)a3;
- (id)groupNameForDomainID:(id)a3;
- (id)rootSettingsForDomainID:(id)a3;
- (id)settingsEditingModule;
- (id)testRecipeIDsForDomainID:(id)a3;
- (id)testRecipeSelectionModule;
- (id)titleForTestRecipeID:(id)a3;
- (int64_t)choiceRow:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (int64_t)numberOfSectionsForChoiceRow:(id)a3;
- (void)_enumerateDomainsWithOneOrMoreTestRecipesUsingBlock:(id)a3;
- (void)proxyDefinitionChanged:(id)a3;
- (void)reloadDomains;
- (void)reloadTestRecipes;
- (void)settings:(id)a3 changedValueForKeyPath:(id)a4;
- (void)settingsDidRestoreDefaults:(id)a3;
@end

@implementation PTUIEditingServer

- (PTUIEditingServer)initWithDataSource:(id)a3 delegate:(id)a4 forRemoteEditing:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v24.receiver = self;
  v24.super_class = PTUIEditingServer;
  v10 = [(PTUIEditingServer *)&v24 init];
  v11 = v10;
  if (v10)
  {
    v10->_forRemoteEditing = a5;
    objc_storeWeak(&v10->_dataSource, v8);
    objc_storeWeak(&v11->_delegate, v9);
    v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
    domainIDsByGroupName = v11->_domainIDsByGroupName;
    v11->_domainIDsByGroupName = v12;

    v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
    rootSettingsByDomainID = v11->_rootSettingsByDomainID;
    v11->_rootSettingsByDomainID = v14;

    v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
    proxyDefinitionsByDomainID = v11->_proxyDefinitionsByDomainID;
    v11->_proxyDefinitionsByDomainID = v16;

    v18 = objc_alloc_init(MEMORY[0x277CBEB38]);
    testRecipeIDsByDomainID = v11->_testRecipeIDsByDomainID;
    v11->_testRecipeIDsByDomainID = v18;

    v20 = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
    moduleControllerByDomainID = v11->_moduleControllerByDomainID;
    v11->_moduleControllerByDomainID = v20;

    v22 = [MEMORY[0x277CCAB98] defaultCenter];
    [v22 addObserver:v11 selector:sel_reloadDomains name:*MEMORY[0x277D432C8] object:0];
    [v22 addObserver:v11 selector:sel_reloadTestRecipes name:*MEMORY[0x277D432D8] object:0];
    [v22 addObserver:v11 selector:sel_proxyDefinitionChanged_ name:*MEMORY[0x277D432D0] object:0];
    [(PTUIEditingServer *)v11 reloadDomains];
    [(PTUIEditingServer *)v11 reloadTestRecipes];
  }

  return v11;
}

- (void)reloadDomains
{
  domainGroupNames = self->_domainGroupNames;
  self->_domainGroupNames = 0;

  [(NSMutableDictionary *)self->_domainIDsByGroupName removeAllObjects];
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v5 = [WeakRetained domainInfoByID];
  domainInfoByID = self->_domainInfoByID;
  self->_domainInfoByID = v5;

  v7 = [MEMORY[0x277CCAB98] defaultCenter];
  [v7 postNotificationName:@"PTUIEditingServerDidReloadDomainsNotification" object:0];
}

- (void)reloadTestRecipes
{
  [(NSMutableDictionary *)self->_testRecipeIDsByDomainID removeAllObjects];
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v4 = [WeakRetained testRecipeInfoByID];
  testRecipeInfoByID = self->_testRecipeInfoByID;
  self->_testRecipeInfoByID = v4;

  v6 = [MEMORY[0x277CCAB98] defaultCenter];
  [v6 postNotificationName:@"PTUIEditingServerDidReloadTestRecipesNotification" object:0];
}

- (void)proxyDefinitionChanged:(id)a3
{
  v12 = a3;
  v4 = [v12 userInfo];
  v5 = [v4 objectForKey:*MEMORY[0x277D432B8]];

  v6 = [(NSMutableDictionary *)self->_rootSettingsByDomainID objectForKey:v5];
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [(NSMutableDictionary *)self->_proxyDefinitionsByDomainID objectForKeyedSubscript:v5];
      v8 = [v12 userInfo];
      v9 = [v8 objectForKey:*MEMORY[0x277D432E0]];

      if ((BSEqualObjects() & 1) == 0)
      {
        [(NSMutableDictionary *)self->_proxyDefinitionsByDomainID setObject:v9 forKeyedSubscript:v5];
        v10 = [(PTUIEditingServer *)self _loadRootSettingsOrProxyForDomainID:v5];
        [(NSMutableDictionary *)self->_rootSettingsByDomainID setObject:v10 forKeyedSubscript:v5];
        v11 = [MEMORY[0x277CCAB98] defaultCenter];
        [v11 postNotificationName:@"PTUIEditingServerDidReloadDomainsNotification" object:0];
      }
    }
  }
}

- (id)rootSettingsForDomainID:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_rootSettingsByDomainID objectForKey:v4];
  if (!v5)
  {
    v5 = [(PTUIEditingServer *)self _loadRootSettingsOrProxyForDomainID:v4];
    [(NSMutableDictionary *)self->_rootSettingsByDomainID setObject:v5 forKey:v4];
  }

  return v5;
}

- (id)domainIDForRootSettings:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [(NSMutableDictionary *)self->_rootSettingsByDomainID allKeys];
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [(NSMutableDictionary *)self->_rootSettingsByDomainID objectForKeyedSubscript:v10];

        if (v11 == v4)
        {
          v12 = v10;
          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_11:

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)domainGroupNames
{
  domainGroupNames = self->_domainGroupNames;
  if (!domainGroupNames)
  {
    v4 = [MEMORY[0x277CBEB58] set];
    domainInfoByID = self->_domainInfoByID;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __37__PTUIEditingServer_domainGroupNames__block_invoke;
    v11[3] = &unk_279ACA9E0;
    v12 = v4;
    v6 = v4;
    [(NSDictionary *)domainInfoByID enumerateKeysAndObjectsUsingBlock:v11];
    v7 = [v6 allObjects];
    v8 = [v7 sortedArrayUsingSelector:sel_compare_];
    v9 = self->_domainGroupNames;
    self->_domainGroupNames = v8;

    domainGroupNames = self->_domainGroupNames;
  }

  return domainGroupNames;
}

void __37__PTUIEditingServer_domainGroupNames__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = [a3 domainGroupName];
  [v3 addObject:v4];
}

- (id)domainIDsInGroup:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_domainIDsByGroupName objectForKey:v4];
  if (!v5)
  {
    v6 = [MEMORY[0x277CBEB18] array];
    domainInfoByID = self->_domainInfoByID;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __38__PTUIEditingServer_domainIDsInGroup___block_invoke;
    v12[3] = &unk_279ACAA08;
    v8 = v4;
    v13 = v8;
    v14 = v6;
    v9 = v6;
    [(NSDictionary *)domainInfoByID enumerateKeysAndObjectsUsingBlock:v12];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __38__PTUIEditingServer_domainIDsInGroup___block_invoke_2;
    v11[3] = &unk_279ACAA30;
    v11[4] = self;
    v5 = [v9 sortedArrayUsingComparator:v11];
    [(NSMutableDictionary *)self->_domainIDsByGroupName setObject:v5 forKey:v8];
  }

  return v5;
}

void __38__PTUIEditingServer_domainIDsInGroup___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = [a3 domainGroupName];
  v6 = [v5 isEqualToString:*(a1 + 32)];

  if (v6)
  {
    [*(a1 + 40) addObject:v7];
  }
}

uint64_t __38__PTUIEditingServer_domainIDsInGroup___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(*(a1 + 32) + 24);
  v6 = a3;
  v7 = [v5 objectForKeyedSubscript:a2];
  v8 = [*(*(a1 + 32) + 24) objectForKeyedSubscript:v6];

  v9 = [v7 domainName];
  v10 = [v8 domainName];
  v11 = [v9 compare:v10];

  return v11;
}

- (id)displayNameForDomainID:(id)a3
{
  v3 = [(NSDictionary *)self->_domainInfoByID objectForKeyedSubscript:a3];
  v4 = [v3 domainName];

  return v4;
}

- (id)groupNameForDomainID:(id)a3
{
  v3 = [(NSDictionary *)self->_domainInfoByID objectForKeyedSubscript:a3];
  v4 = [v3 domainGroupName];

  return v4;
}

- (id)testRecipeIDsForDomainID:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_testRecipeIDsByDomainID objectForKey:v4];
  if (!v5)
  {
    v6 = [MEMORY[0x277CBEB18] array];
    testRecipeInfoByID = self->_testRecipeInfoByID;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __46__PTUIEditingServer_testRecipeIDsForDomainID___block_invoke;
    v12[3] = &unk_279ACAA58;
    v8 = v4;
    v13 = v8;
    v14 = v6;
    v9 = v6;
    [(NSDictionary *)testRecipeInfoByID enumerateKeysAndObjectsUsingBlock:v12];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __46__PTUIEditingServer_testRecipeIDsForDomainID___block_invoke_2;
    v11[3] = &unk_279ACAA30;
    v11[4] = self;
    v5 = [v9 sortedArrayUsingComparator:v11];
    [(NSMutableDictionary *)self->_testRecipeIDsByDomainID setObject:v5 forKey:v8];
  }

  return v5;
}

void __46__PTUIEditingServer_testRecipeIDsForDomainID___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = [a3 domainIdentifier];
  v6 = [v5 isEqualToString:*(a1 + 32)];

  if (v6)
  {
    [*(a1 + 40) addObject:v7];
  }
}

uint64_t __46__PTUIEditingServer_testRecipeIDsForDomainID___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(*(a1 + 32) + 32);
  v6 = a3;
  v7 = [v5 objectForKeyedSubscript:a2];
  v8 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:v6];

  v9 = [v7 title];
  v10 = [v8 title];
  v11 = [v9 compare:v10];

  return v11;
}

- (id)titleForTestRecipeID:(id)a3
{
  v3 = [(NSDictionary *)self->_testRecipeInfoByID objectForKeyedSubscript:a3];
  v4 = [v3 title];

  return v4;
}

- (id)testRecipeSelectionModule
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = [(PTUIEditingServer *)self _testRecipeSection];
  v3 = MEMORY[0x277D43218];
  v8[0] = v2;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  v5 = [v3 moduleWithTitle:0 contents:v4];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)settingsEditingModule
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = [(PTUIEditingServer *)self _settingsSection];
  v3 = MEMORY[0x277D43218];
  v8[0] = v2;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  v5 = [v3 moduleWithTitle:0 contents:v4];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)settings:(id)a3 changedValueForKeyPath:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(PTUIEditingServer *)self domainIDForRootSettings:v10];
  if (v7)
  {
    v8 = [v10 _archiveValueForKeyPath:v6];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained applyArchiveValue:v8 forRootSettingsKeyPath:v6 domainID:v7];
  }
}

- (void)settingsDidRestoreDefaults:(id)a3
{
  v4 = [(PTUIEditingServer *)self domainIDForRootSettings:a3];
  if (v4)
  {
    v6 = v4;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained restoreDefaultValuesForDomainID:v6];

    v4 = v6;
  }
}

- (id)_loadRootSettingsOrProxyForDomainID:(id)a3
{
  v4 = a3;
  v5 = [(NSDictionary *)self->_domainInfoByID objectForKeyedSubscript:v4];
  [v5 loadSettingsClassBundleIfNecessary];
  v6 = [(NSMutableDictionary *)self->_proxyDefinitionsByDomainID objectForKeyedSubscript:v4];
  if (v6)
  {
    v7 = v6;
LABEL_4:
    v9 = [MEMORY[0x277D43228] settingsOrProxyWithDefinition:v7];
LABEL_5:
    v10 = v9;

    goto LABEL_6;
  }

  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v7 = [WeakRetained rootSettingsProxyDefinitionForDomainID:v4];

  [(NSMutableDictionary *)self->_proxyDefinitionsByDomainID setObject:v7 forKeyedSubscript:v4];
  if (v7)
  {
    goto LABEL_4;
  }

  v15 = [v5 settingsClassName];
  v16 = NSClassFromString(v15);

  if (self->_forRemoteEditing || !v16 || ![(objc_class *)v16 isSubclassOfClass:objc_opt_class()])
  {
    v7 = [MEMORY[0x277D43230] definitionForSettingsClass:objc_opt_class()];
    v9 = [MEMORY[0x277D43228] proxyWithDefinition:v7];
    goto LABEL_5;
  }

  v10 = [[v16 alloc] initWithDefaultValues];
LABEL_6:
  v11 = objc_loadWeakRetained(&self->_dataSource);
  v12 = [v11 rootSettingsArchiveForDomainID:v4];

  if (v12)
  {
    [v10 restoreFromArchiveDictionary:v12];
  }

  [v10 addKeyPathObserver:self];
  [v10 _setRestoreDefaultsObserver:self];
  [v10 _setObservationEnabled:1];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __57__PTUIEditingServer__loadRootSettingsOrProxyForDomainID___block_invoke;
  v17[3] = &unk_279ACAA80;
  v17[4] = self;
  v18 = v4;
  v13 = v4;
  _RecursivelyObserveOutletsForSettingsAtKeyPathWithBlock(v10, 0, v17);

  return v10;
}

void __57__PTUIEditingServer__loadRootSettingsOrProxyForDomainID___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((v3 + 16));
  [WeakRetained invokeOutletAtKeyPath:v4 domainID:*(a1 + 40)];
}

- (id)_testRecipeSection
{
  v19[1] = *MEMORY[0x277D85DE8];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __39__PTUIEditingServer__testRecipeSection__block_invoke;
  v18[3] = &unk_279ACAAA8;
  v18[4] = self;
  v3 = MEMORY[0x2666F6670](v18, a2);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __39__PTUIEditingServer__testRecipeSection__block_invoke_2;
  v17[3] = &unk_279ACAAD0;
  v17[4] = self;
  v4 = MEMORY[0x2666F6670](v17);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __39__PTUIEditingServer__testRecipeSection__block_invoke_3;
  v16[3] = &unk_279ACAAF8;
  v16[4] = self;
  v5 = MEMORY[0x2666F6670](v16);
  v6 = [MEMORY[0x277D431B8] rowWithTitle:@"Test Recipe" valueGetter:v3 valueSetter:v4];
  [v6 setDataSource:self];
  v7 = MEMORY[0x277D43218];
  v19[0] = v6;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
  v9 = [v7 sectionWithRows:v8];

  [v9 setFooterTextGetter:v5];
  v10 = [MEMORY[0x277CCAB98] defaultCenter];
  [v10 addObserver:v9 selector:sel_reloadSection name:*MEMORY[0x277D432C0] object:0];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __39__PTUIEditingServer__testRecipeSection__block_invoke_4;
  v14[3] = &unk_279ACAB20;
  v15 = v10;
  v11 = v10;
  [v9 setUnregisterBlock:v14];

  v12 = *MEMORY[0x277D85DE8];

  return v9;
}

__CFString *__39__PTUIEditingServer__testRecipeSection__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v2 = [WeakRetained activeTestRecipeID];

  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = @"__NoTestRecipe__";
  }

  v4 = v3;

  return v3;
}

void __39__PTUIEditingServer__testRecipeSection__block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([v4 isEqualToString:@"__NoTestRecipe__"])
  {

    v4 = 0;
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  [WeakRetained setActiveTestRecipeID:v4];
}

id __39__PTUIEditingServer__testRecipeSection__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v3 = [WeakRetained activeTestRecipeID];

  if (v3)
  {
    v4 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:v3];
    v5 = [v4 recipeDescription];
    v6 = [v4 events];
    v7 = PTPrototypingEventsDescription();

    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"Active test recipe %@ is consuming %@.", v5, v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_settingsSection
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [(PTUIEditingServer *)self domainGroupNames];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [(PTUIEditingServer *)self _settingsGroupRow:*(*(&v13 + 1) + 8 * i)];
        [v3 addObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v10 = [MEMORY[0x277D43218] sectionWithRows:v3 title:@"Settings"];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)_settingsGroupRow:(id)a3
{
  v4 = a3;
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __39__PTUIEditingServer__settingsGroupRow___block_invoke;
  v15 = &unk_279ACAB48;
  v16 = self;
  v17 = v4;
  v5 = v4;
  v6 = MEMORY[0x2666F6670](&v12);
  v7 = [PTUIPushViewControllerRowAction actionWithViewControllerCreator:v6, v12, v13, v14, v15, v16];
  v8 = [MEMORY[0x277D431E0] row];
  v9 = [v8 staticTitle:v5];
  v10 = [v9 action:v7];

  return v10;
}

id __39__PTUIEditingServer__settingsGroupRow___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = a3;
  v7 = a2;
  v8 = [v4 _settingsDomainGroupModule:v5];
  v9 = objc_opt_class();

  v10 = [[v9 alloc] _initWithModule:v8 presentingRow:v7];

  return v10;
}

- (id)_settingsDomainGroupModule:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = [(PTUIEditingServer *)self domainIDsInGroup:v4, 0];
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(PTUIEditingServer *)self _settingsDomainRow:*(*(&v18 + 1) + 8 * i)];
        [v5 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v8);
  }

  v12 = MEMORY[0x277D43218];
  v13 = [MEMORY[0x277D43218] sectionWithRows:v5];
  v22 = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v22 count:1];
  v15 = [v12 moduleWithTitle:v4 contents:v14];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)_settingsDomainRow:(id)a3
{
  v4 = a3;
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __40__PTUIEditingServer__settingsDomainRow___block_invoke;
  v16 = &unk_279ACAB48;
  v17 = self;
  v18 = v4;
  v5 = v4;
  v6 = MEMORY[0x2666F6670](&v13);
  v7 = [(PTUIEditingServer *)self displayNameForDomainID:v5, v13, v14, v15, v16, v17];
  v8 = [PTUIPushViewControllerRowAction actionWithViewControllerCreator:v6];
  v9 = [MEMORY[0x277D431E0] row];
  v10 = [v9 staticTitle:v7];
  v11 = [v10 action:v8];

  return v11;
}

id __40__PTUIEditingServer__settingsDomainRow___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = a3;
  v8 = a2;
  v9 = [v5 rootSettingsForDomainID:v6];
  v10 = objc_opt_class();

  v11 = [[v10 alloc] initWithSettings:v9 presentingRow:v8];
  [*(*(a1 + 32) + 80) setObject:v11 forKey:*(a1 + 40)];

  return v11;
}

- (int64_t)numberOfSectionsForChoiceRow:(id)a3
{
  v4 = a3;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 1;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__PTUIEditingServer_numberOfSectionsForChoiceRow___block_invoke;
  v7[3] = &unk_279ACAB70;
  v7[4] = &v8;
  [(PTUIEditingServer *)self _enumerateDomainsWithOneOrMoreTestRecipesUsingBlock:v7];
  v5 = v9[3];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (id)choiceRow:(id)a3 titleForSection:(int64_t)a4
{
  v6 = a3;
  if (a4)
  {
    v16[0] = 0;
    v16[1] = v16;
    v16[2] = 0x2020000000;
    v16[3] = 0;
    v10 = 0;
    v11 = &v10;
    v12 = 0x3032000000;
    v13 = __Block_byref_object_copy_;
    v14 = __Block_byref_object_dispose_;
    v15 = 0;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __47__PTUIEditingServer_choiceRow_titleForSection___block_invoke;
    v9[3] = &unk_279ACAB98;
    v9[6] = &v10;
    v9[7] = a4;
    v9[4] = self;
    v9[5] = v16;
    [(PTUIEditingServer *)self _enumerateDomainsWithOneOrMoreTestRecipesUsingBlock:v9];
    v7 = v11[5];
    _Block_object_dispose(&v10, 8);

    _Block_object_dispose(v16, 8);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __47__PTUIEditingServer_choiceRow_titleForSection___block_invoke(void *a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  if (++*(*(a1[5] + 8) + 24) == a1[7])
  {
    v8 = MEMORY[0x277CCACA8];
    v9 = a1[4];
    v10 = a2;
    v11 = [v9 displayNameForDomainID:a3];
    v12 = [v8 stringWithFormat:@"%@ – %@", v10, v11];

    v13 = *(a1[6] + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;

    *a5 = 1;
  }
}

- (int64_t)choiceRow:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v6 = a3;
  if (a4)
  {
    v14[0] = 0;
    v14[1] = v14;
    v14[2] = 0x2020000000;
    v14[3] = 0;
    v10 = 0;
    v11 = &v10;
    v12 = 0x2020000000;
    v13 = 0;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __53__PTUIEditingServer_choiceRow_numberOfRowsInSection___block_invoke;
    v9[3] = &unk_279ACABC0;
    v9[5] = &v10;
    v9[6] = a4;
    v9[4] = v14;
    [(PTUIEditingServer *)self _enumerateDomainsWithOneOrMoreTestRecipesUsingBlock:v9];
    v7 = v11[3];
    _Block_object_dispose(&v10, 8);
    _Block_object_dispose(v14, 8);
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

uint64_t __53__PTUIEditingServer_choiceRow_numberOfRowsInSection___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, void *a4, _BYTE *a5)
{
  if (++*(*(*(result + 32) + 8) + 24) == *(result + 48))
  {
    v6 = result;
    result = [a4 count];
    *(*(*(v6 + 40) + 8) + 24) = result;
    *a5 = 1;
  }

  return result;
}

- (id)choiceRow:(id)a3 valueForRow:(int64_t)a4 inSection:(int64_t)a5
{
  if (a5)
  {
    v6 = [(PTUIEditingServer *)self _recipeIDForRow:a4 inSection:a5];
  }

  else
  {
    v6 = @"__NoTestRecipe__";
  }

  return v6;
}

- (id)choiceRow:(id)a3 titleForRow:(int64_t)a4 inSection:(int64_t)a5
{
  if (a5)
  {
    v6 = [(PTUIEditingServer *)self _recipeIDForRow:a4 inSection:a5];
    v7 = [(PTUIEditingServer *)self titleForTestRecipeID:v6];
  }

  else
  {
    v7 = @"None";
  }

  return v7;
}

- (void)_enumerateDomainsWithOneOrMoreTestRecipesUsingBlock:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v5 = [(PTUIEditingServer *)self domainGroupNames];
  v18 = [v5 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v18)
  {
    v6 = *v27;
    v20 = v5;
    v17 = *v27;
    do
    {
      v7 = 0;
      do
      {
        if (*v27 != v6)
        {
          objc_enumerationMutation(v5);
        }

        v19 = v7;
        v8 = *(*(&v26 + 1) + 8 * v7);
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v9 = [(PTUIEditingServer *)self domainIDsInGroup:v8];
        v10 = [v9 countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v23;
          while (2)
          {
            for (i = 0; i != v11; ++i)
            {
              if (*v23 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v14 = *(*(&v22 + 1) + 8 * i);
              v15 = [(PTUIEditingServer *)self testRecipeIDsForDomainID:v14];
              if ([v15 count])
              {
                v21 = 0;
                v4[2](v4, v8, v14, v15, &v21);
                if (v21)
                {

                  v5 = v20;
                  goto LABEL_19;
                }
              }
            }

            v11 = [v9 countByEnumeratingWithState:&v22 objects:v30 count:16];
            if (v11)
            {
              continue;
            }

            break;
          }
        }

        v7 = v19 + 1;
        v5 = v20;
        v6 = v17;
      }

      while (v19 + 1 != v18);
      v18 = [v20 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v18);
  }

LABEL_19:

  v16 = *MEMORY[0x277D85DE8];
}

- (id)_recipeIDForRow:(int64_t)a3 inSection:(int64_t)a4
{
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x2020000000;
  v13[3] = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy_;
  v11 = __Block_byref_object_dispose_;
  v12 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __47__PTUIEditingServer__recipeIDForRow_inSection___block_invoke;
  v6[3] = &unk_279ACABE8;
  v6[4] = v13;
  v6[5] = &v7;
  v6[6] = a4;
  v6[7] = a3;
  [(PTUIEditingServer *)self _enumerateDomainsWithOneOrMoreTestRecipesUsingBlock:v6];
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  _Block_object_dispose(v13, 8);

  return v4;
}

void __47__PTUIEditingServer__recipeIDForRow_inSection___block_invoke(void *a1, uint64_t a2, uint64_t a3, void *a4, _BYTE *a5)
{
  if (++*(*(a1[4] + 8) + 24) == a1[6])
  {
    v7 = [a4 objectAtIndex:a1[7]];
    v8 = *(a1[5] + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    *a5 = 1;
  }
}

@end