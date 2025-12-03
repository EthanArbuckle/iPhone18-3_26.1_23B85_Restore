@interface SBMenuBarDemoMenuProvider
- (BOOL)_shouldMinimizeAfterRestoreForScene:(id)scene;
- (SBMenuBarDemoMenuProviderDelegate)delegate;
- (id)_activeDisplayWindowScene;
- (id)_bundleIdsToMinimizeAfterRestore;
- (id)_demoDisplayItemLayoutAttributesByBundleId;
- (id)_demoLayoutAttributesForDisplayItem:(id)item;
- (id)demoMenuForScene:(id)scene invokingFromSearch:(BOOL)search;
- (int64_t)menuBarDemoMode;
- (void)_performAfterDelay:(double)delay actions:(id)actions;
- (void)_requestNewWindowForBundleIdentifier:(id)identifier;
- (void)_restoreAllDemoState;
- (void)_restoreBundleStateForAppsWithBundleIds:(id)ids;
- (void)_setShouldMinimizeAfterRestore:(BOOL)restore forScene:(id)scene;
- (void)_storeDemoLayoutAttributes:(id)attributes forScene:(id)scene;
- (void)_updateBundleIdToLayoutAttributesDictionary:(id)dictionary;
@end

@implementation SBMenuBarDemoMenuProvider

- (int64_t)menuBarDemoMode
{
  v2 = +[SBDefaults localDefaults];
  demoDefaults = [v2 demoDefaults];
  menuBarDemoMode = [demoDefaults menuBarDemoMode];

  return menuBarDemoMode;
}

- (id)demoMenuForScene:(id)scene invokingFromSearch:(BOOL)search
{
  sceneCopy = scene;
  clientHandle = [sceneCopy clientHandle];
  bundleIdentifier = [clientHandle bundleIdentifier];

  array = [MEMORY[0x277CBEB18] array];
  if (bundleIdentifier)
  {
    menuBarDemoMode = [(SBMenuBarDemoMenuProvider *)self menuBarDemoMode];
    if (search)
    {
      if (menuBarDemoMode != 1)
      {
        goto LABEL_17;
      }
    }

    else if (menuBarDemoMode != 2)
    {
      goto LABEL_17;
    }

    v11 = MEMORY[0x277D750C8];
    v12 = [MEMORY[0x277D755B8] systemImageNamed:@"square.and.arrow.down"];
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __65__SBMenuBarDemoMenuProvider_demoMenuForScene_invokingFromSearch___block_invoke;
    v46[3] = &unk_2783B66D0;
    v46[4] = self;
    v13 = sceneCopy;
    v47 = v13;
    v14 = [v11 actionWithTitle:@"Save This Layout" image:v12 identifier:0 handler:v46];
    [array addObject:v14];

    _demoDisplayItemLayoutAttributesByBundleId = [(SBMenuBarDemoMenuProvider *)self _demoDisplayItemLayoutAttributesByBundleId];
    v16 = [_demoDisplayItemLayoutAttributesByBundleId objectForKeyedSubscript:bundleIdentifier];

    if (v16)
    {
      v17 = MEMORY[0x277D750C8];
      v18 = [MEMORY[0x277D755B8] systemImageNamed:@"trash"];
      v44[0] = MEMORY[0x277D85DD0];
      v44[1] = 3221225472;
      v44[2] = __65__SBMenuBarDemoMenuProvider_demoMenuForScene_invokingFromSearch___block_invoke_2;
      v44[3] = &unk_2783B66D0;
      v44[4] = self;
      v45 = v13;
      v19 = [v17 actionWithTitle:@"Remove This Layout" image:v18 identifier:0 handler:v44];
      [array addObject:v19];
    }

    _bundleIdsToMinimizeAfterRestore = [(SBMenuBarDemoMenuProvider *)self _bundleIdsToMinimizeAfterRestore];
    v21 = [_bundleIdsToMinimizeAfterRestore containsObject:bundleIdentifier];

    v22 = MEMORY[0x277D750C8];
    if (v21)
    {
      v23 = [MEMORY[0x277D755B8] systemImageNamed:@"eye"];
      v42[0] = MEMORY[0x277D85DD0];
      v42[1] = 3221225472;
      v42[2] = __65__SBMenuBarDemoMenuProvider_demoMenuForScene_invokingFromSearch___block_invoke_3;
      v42[3] = &unk_2783B66D0;
      v42[4] = self;
      v24 = &v43;
      v43 = v13;
      v25 = @"Don't Minimize After Restore";
      v26 = v42;
    }

    else
    {
      v23 = [MEMORY[0x277D755B8] systemImageNamed:@"eye.slash"];
      v40[0] = MEMORY[0x277D85DD0];
      v40[1] = 3221225472;
      v40[2] = __65__SBMenuBarDemoMenuProvider_demoMenuForScene_invokingFromSearch___block_invoke_4;
      v40[3] = &unk_2783B66D0;
      v40[4] = self;
      v24 = &v41;
      v41 = v13;
      v25 = @"Minimize After Restore";
      v26 = v40;
    }

    v27 = [v22 actionWithTitle:v25 image:v23 identifier:0 handler:v26];
    [array addObject:v27];

    v28 = MEMORY[0x277D750C8];
    v29 = [MEMORY[0x277D755B8] systemImageNamed:@"rectangle.grid.3x1"];
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __65__SBMenuBarDemoMenuProvider_demoMenuForScene_invokingFromSearch___block_invoke_5;
    v39[3] = &unk_2783B1B68;
    v39[4] = self;
    v30 = [v28 actionWithTitle:@"Restore All Layouts" image:v29 identifier:0 handler:v39];
    [array addObject:v30];

    menuBarDemoMode2 = [(SBMenuBarDemoMenuProvider *)self menuBarDemoMode];
    if (menuBarDemoMode2 == 2)
    {
      v32 = MEMORY[0x277D750C8];
      v33 = [MEMORY[0x277D755B8] systemImageNamed:@"magnifyingglass"];
      v35 = &__block_literal_global_45_1;
    }

    else
    {
      if (menuBarDemoMode2 != 1)
      {
LABEL_16:

        goto LABEL_17;
      }

      v32 = MEMORY[0x277D750C8];
      v33 = [MEMORY[0x277D755B8] systemImageNamed:@"filemenu.and.selection"];
      v34 = @"Always Show Demo Options";
      v35 = &__block_literal_global_305;
    }

    v36 = [v32 actionWithTitle:v34 image:v33 identifier:0 handler:v35];
    [array addObject:v36];

    goto LABEL_16;
  }

LABEL_17:
  v37 = [MEMORY[0x277D75710] menuWithTitle:&stru_283094718 image:0 identifier:0 options:1 children:array];

  return v37;
}

void __65__SBMenuBarDemoMenuProvider_demoMenuForScene_invokingFromSearch___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = [v2 menuBarDemoMenuProvider:*(a1 + 32) displayItemLayoutAttributesForScene:*(a1 + 40)];

  [*(a1 + 32) _storeDemoLayoutAttributes:v3 forScene:*(a1 + 40)];
}

void __65__SBMenuBarDemoMenuProvider_demoMenuForScene_invokingFromSearch___block_invoke_6()
{
  v1 = +[SBDefaults localDefaults];
  v0 = [v1 demoDefaults];
  [v0 setMenuBarDemoMode:2];
}

void __65__SBMenuBarDemoMenuProvider_demoMenuForScene_invokingFromSearch___block_invoke_7()
{
  v1 = +[SBDefaults localDefaults];
  v0 = [v1 demoDefaults];
  [v0 setMenuBarDemoMode:1];
}

- (void)_storeDemoLayoutAttributes:(id)attributes forScene:(id)scene
{
  attributesCopy = attributes;
  sceneCopy = scene;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __65__SBMenuBarDemoMenuProvider__storeDemoLayoutAttributes_forScene___block_invoke;
  v10[3] = &unk_2783BE7F0;
  v11 = sceneCopy;
  v12 = attributesCopy;
  v8 = attributesCopy;
  v9 = sceneCopy;
  [(SBMenuBarDemoMenuProvider *)self _updateBundleIdToLayoutAttributesDictionary:v10];
}

void __65__SBMenuBarDemoMenuProvider__storeDemoLayoutAttributes_forScene___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = a2;
  v6 = [v3 clientHandle];
  v5 = [v6 bundleIdentifier];
  [v4 setObject:v2 forKeyedSubscript:v5];
}

- (id)_demoLayoutAttributesForDisplayItem:(id)item
{
  itemCopy = item;
  _demoDisplayItemLayoutAttributesByBundleId = [(SBMenuBarDemoMenuProvider *)self _demoDisplayItemLayoutAttributesByBundleId];
  bundleIdentifier = [itemCopy bundleIdentifier];

  v7 = [_demoDisplayItemLayoutAttributesByBundleId objectForKeyedSubscript:bundleIdentifier];

  return v7;
}

- (BOOL)_shouldMinimizeAfterRestoreForScene:(id)scene
{
  clientHandle = [scene clientHandle];
  bundleIdentifier = [clientHandle bundleIdentifier];

  if (bundleIdentifier)
  {
    _bundleIdsToMinimizeAfterRestore = [(SBMenuBarDemoMenuProvider *)self _bundleIdsToMinimizeAfterRestore];
    v7 = [_bundleIdsToMinimizeAfterRestore containsObject:bundleIdentifier];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_setShouldMinimizeAfterRestore:(BOOL)restore forScene:(id)scene
{
  restoreCopy = restore;
  clientHandle = [scene clientHandle];
  bundleIdentifier = [clientHandle bundleIdentifier];

  if (bundleIdentifier)
  {
    _bundleIdsToMinimizeAfterRestore = [(SBMenuBarDemoMenuProvider *)self _bundleIdsToMinimizeAfterRestore];
    v8 = [_bundleIdsToMinimizeAfterRestore mutableCopy];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = [MEMORY[0x277CBEB58] set];
    }

    v11 = v10;

    if (restoreCopy)
    {
      [v11 addObject:bundleIdentifier];
    }

    else
    {
      [v11 removeObject:bundleIdentifier];
    }

    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    allObjects = [v11 allObjects];
    [standardUserDefaults setObject:allObjects forKey:@"SBBundleIdsToMinimizeAfterRestoringDemoLayoutAttributes"];
  }
}

- (id)_bundleIdsToMinimizeAfterRestore
{
  v2 = MEMORY[0x277CBEB98];
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v4 = [standardUserDefaults objectForKey:@"SBBundleIdsToMinimizeAfterRestoringDemoLayoutAttributes"];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = MEMORY[0x277CBEBF8];
  }

  v7 = [v2 setWithArray:v6];

  return v7;
}

- (id)_demoDisplayItemLayoutAttributesByBundleId
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  _layoutAttributesForDisplayItemWithBundleIdsKey = [(SBMenuBarDemoMenuProvider *)self _layoutAttributesForDisplayItemWithBundleIdsKey];
  v5 = [standardUserDefaults objectForKey:_layoutAttributesForDisplayItemWithBundleIdsKey];
  v6 = [v5 mutableCopy];
  v7 = v6;
  if (v6)
  {
    dictionary = v6;
  }

  else
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
  }

  v9 = dictionary;

  v10 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v9, "count")}];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __71__SBMenuBarDemoMenuProvider__demoDisplayItemLayoutAttributesByBundleId__block_invoke;
  v13[3] = &unk_2783BE818;
  v11 = v10;
  v14 = v11;
  [v9 enumerateKeysAndObjectsUsingBlock:v13];

  return v11;
}

void __71__SBMenuBarDemoMenuProvider__demoDisplayItemLayoutAttributesByBundleId__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = [[SBPBDisplayItemLayoutAttributes alloc] initWithData:v5];

  if (v6)
  {
    v7 = *(a1 + 32);
    v8 = [SBDisplayItemLayoutAttributes layoutAttributesWithProtobufRepresentation:v6];
    [v7 setObject:v8 forKey:v9];
  }
}

- (void)_updateBundleIdToLayoutAttributesDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  _demoDisplayItemLayoutAttributesByBundleId = [(SBMenuBarDemoMenuProvider *)self _demoDisplayItemLayoutAttributesByBundleId];
  dictionaryCopy[2](dictionaryCopy, _demoDisplayItemLayoutAttributesByBundleId);

  v6 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(_demoDisplayItemLayoutAttributesByBundleId, "count")}];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __73__SBMenuBarDemoMenuProvider__updateBundleIdToLayoutAttributesDictionary___block_invoke;
  v10[3] = &unk_2783BE840;
  v11 = v6;
  v7 = v6;
  [_demoDisplayItemLayoutAttributesByBundleId enumerateKeysAndObjectsUsingBlock:v10];
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  _layoutAttributesForDisplayItemWithBundleIdsKey = [(SBMenuBarDemoMenuProvider *)self _layoutAttributesForDisplayItemWithBundleIdsKey];
  [standardUserDefaults setObject:v7 forKey:_layoutAttributesForDisplayItemWithBundleIdsKey];
}

void __73__SBMenuBarDemoMenuProvider__updateBundleIdToLayoutAttributesDictionary___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v7 = [(SBDisplayItemLayoutAttributes *)a3 protobufRepresentation];
  v6 = [v7 data];
  [v4 setObject:v6 forKey:v5];
}

- (void)_restoreAllDemoState
{
  _activeDisplayWindowScene = [(SBMenuBarDemoMenuProvider *)self _activeDisplayWindowScene];
  v4 = +[SBWorkspace mainWorkspace];
  _fbsDisplayConfiguration = [_activeDisplayWindowScene _fbsDisplayConfiguration];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __49__SBMenuBarDemoMenuProvider__restoreAllDemoState__block_invoke;
  v6[3] = &unk_2783A98F0;
  v6[4] = self;
  [v4 requestTransitionWithOptions:0 displayConfiguration:_fbsDisplayConfiguration builder:v6];
}

void __49__SBMenuBarDemoMenuProvider__restoreAllDemoState__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setSource:72];
  [v3 modifyApplicationContext:&__block_literal_global_68];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __49__SBMenuBarDemoMenuProvider__restoreAllDemoState__block_invoke_3;
  v5[3] = &unk_2783A9398;
  v5[4] = *(a1 + 32);
  v4 = [v3 addCompletionHandler:v5];
}

void __49__SBMenuBarDemoMenuProvider__restoreAllDemoState__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v2 = +[(SBWorkspaceEntity *)SBHomeScreenEntity];
  [v3 setActivatingEntity:v2];

  [v3 setAnimationDisabled:1];
}

uint64_t __49__SBMenuBarDemoMenuProvider__restoreAllDemoState__block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __49__SBMenuBarDemoMenuProvider__restoreAllDemoState__block_invoke_4;
  v3[3] = &unk_2783A8C18;
  v3[4] = v1;
  return [v1 _performAfterDelay:v3 actions:0.1];
}

void __49__SBMenuBarDemoMenuProvider__restoreAllDemoState__block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) _demoDisplayItemLayoutAttributesByBundleId];
  v3 = [v2 allKeys];
  v4 = [v3 mutableCopy];

  [*(a1 + 32) _restoreBundleStateForAppsWithBundleIds:v4];
}

- (void)_performAfterDelay:(double)delay actions:(id)actions
{
  actionsCopy = actions;
  v6 = dispatch_time(0, (delay * 1000000000.0));
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__SBMenuBarDemoMenuProvider__performAfterDelay_actions___block_invoke;
  block[3] = &unk_2783A9348;
  v9 = actionsCopy;
  v7 = actionsCopy;
  dispatch_after(v6, MEMORY[0x277D85CD0], block);
}

- (void)_restoreBundleStateForAppsWithBundleIds:(id)ids
{
  idsCopy = ids;
  firstObject = [idsCopy firstObject];
  if ([idsCopy count])
  {
    [idsCopy removeObjectAtIndex:0];
  }

  if (firstObject)
  {
    v6 = +[SBApplicationController sharedInstance];
    v7 = [v6 applicationWithBundleIdentifier:firstObject];

    _activeDisplayWindowScene = [(SBMenuBarDemoMenuProvider *)self _activeDisplayWindowScene];
    v9 = [[SBDeviceApplicationSceneEntity alloc] initWithApplicationForMainDisplay:v7];
    delegate = [(SBMenuBarDemoMenuProvider *)self delegate];
    v11 = +[SBWorkspace mainWorkspace];
    _fbsDisplayConfiguration = [_activeDisplayWindowScene _fbsDisplayConfiguration];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __69__SBMenuBarDemoMenuProvider__restoreBundleStateForAppsWithBundleIds___block_invoke;
    v16[3] = &unk_2783BE890;
    v17 = v9;
    selfCopy = self;
    v19 = delegate;
    v20 = _activeDisplayWindowScene;
    v21 = idsCopy;
    v13 = _activeDisplayWindowScene;
    v14 = delegate;
    v15 = v9;
    [v11 requestTransitionWithOptions:0 displayConfiguration:_fbsDisplayConfiguration builder:v16];
  }
}

void __69__SBMenuBarDemoMenuProvider__restoreBundleStateForAppsWithBundleIds___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setSource:72];
  [v3 setEventLabel:@"DemoSetup"];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __69__SBMenuBarDemoMenuProvider__restoreBundleStateForAppsWithBundleIds___block_invoke_2;
  v14[3] = &unk_2783A98C8;
  v15 = *(a1 + 32);
  [v3 modifyApplicationContext:v14];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __69__SBMenuBarDemoMenuProvider__restoreBundleStateForAppsWithBundleIds___block_invoke_3;
  v10[3] = &unk_2783B27C8;
  *&v4 = *(a1 + 32);
  *(&v4 + 1) = *(a1 + 40);
  v9 = v4;
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  *&v7 = v5;
  *(&v7 + 1) = v6;
  v11 = v9;
  v12 = v7;
  v13 = *(a1 + 64);
  v8 = [v3 addCompletionHandler:v10];
}

void __69__SBMenuBarDemoMenuProvider__restoreBundleStateForAppsWithBundleIds___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) sceneHandle];
  v3 = [v2 sceneIfExists];

  if (v3)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __69__SBMenuBarDemoMenuProvider__restoreBundleStateForAppsWithBundleIds___block_invoke_4;
    v7[3] = &unk_2783A8F00;
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v6 = *(a1 + 40);
    v8 = v5;
    v9 = v6;
    v10 = v3;
    v11 = *(a1 + 56);
    v12 = *(a1 + 64);
    [v4 _performAfterDelay:v7 actions:0.1];
  }
}

void __69__SBMenuBarDemoMenuProvider__restoreBundleStateForAppsWithBundleIds___block_invoke_4(id *a1)
{
  v2 = a1 + 5;
  [a1[4] menuBarDemoMenuProvider:a1[5] applyDemoDisplayItemLayoutAttributesToScene:a1[6]];
  v3 = [a1[5] _shouldMinimizeAfterRestoreForScene:a1[6]];
  if (v3)
  {
    v4 = 0.5;
  }

  else
  {
    v4 = 0.0;
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __69__SBMenuBarDemoMenuProvider__restoreBundleStateForAppsWithBundleIds___block_invoke_5;
  v11[3] = &unk_2783BE868;
  v15 = v3;
  v5 = a1[5];
  *&v6 = a1[4];
  *(&v6 + 1) = *v2;
  v10 = v6;
  v7 = a1[6];
  v8 = a1[7];
  *&v9 = v7;
  *(&v9 + 1) = v8;
  v12 = v10;
  v13 = v9;
  v14 = a1[8];
  [v5 _performAfterDelay:v11 actions:v4];
}

void __69__SBMenuBarDemoMenuProvider__restoreBundleStateForAppsWithBundleIds___block_invoke_5(uint64_t a1)
{
  if (*(a1 + 72) == 1)
  {
    [*(a1 + 32) menuBarDemoMenuProvider:*(a1 + 40) minimizeSceneForDemo:*(a1 + 48)];
  }

  v2 = *(a1 + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __69__SBMenuBarDemoMenuProvider__restoreBundleStateForAppsWithBundleIds___block_invoke_6;
  v5[3] = &unk_2783A8ED8;
  v3 = *(a1 + 56);
  v4 = *(a1 + 40);
  v6 = v3;
  v7 = v4;
  v8 = *(a1 + 64);
  [v2 _performAfterDelay:v5 actions:0.5];
}

void __69__SBMenuBarDemoMenuProvider__restoreBundleStateForAppsWithBundleIds___block_invoke_6(uint64_t a1)
{
  v2 = +[SBWorkspace mainWorkspace];
  v3 = [*(a1 + 32) _fbsDisplayConfiguration];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __69__SBMenuBarDemoMenuProvider__restoreBundleStateForAppsWithBundleIds___block_invoke_7;
  v5[3] = &unk_2783AAA48;
  v4 = *(a1 + 48);
  v5[4] = *(a1 + 40);
  v6 = v4;
  [v2 requestTransitionWithOptions:0 displayConfiguration:v3 builder:v5];
}

void __69__SBMenuBarDemoMenuProvider__restoreBundleStateForAppsWithBundleIds___block_invoke_7(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setSource:72];
  [v3 modifyApplicationContext:&__block_literal_global_79_0];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __69__SBMenuBarDemoMenuProvider__restoreBundleStateForAppsWithBundleIds___block_invoke_9;
  v6[3] = &unk_2783A8BF0;
  v4 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v7 = v4;
  v5 = [v3 addCompletionHandler:v6];
}

void __69__SBMenuBarDemoMenuProvider__restoreBundleStateForAppsWithBundleIds___block_invoke_8(uint64_t a1, void *a2)
{
  v3 = a2;
  v2 = +[(SBWorkspaceEntity *)SBHomeScreenEntity];
  [v3 setActivatingEntity:v2];

  [v3 setAnimationDisabled:1];
}

void __69__SBMenuBarDemoMenuProvider__restoreBundleStateForAppsWithBundleIds___block_invoke_9(uint64_t a1)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __69__SBMenuBarDemoMenuProvider__restoreBundleStateForAppsWithBundleIds___block_invoke_10;
  v5[3] = &unk_2783A92D8;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v6 = v3;
  v7 = v4;
  [v2 _performAfterDelay:v5 actions:0.5];
}

uint64_t __69__SBMenuBarDemoMenuProvider__restoreBundleStateForAppsWithBundleIds___block_invoke_10(uint64_t a1)
{
  result = [*(a1 + 32) count];
  if (result)
  {
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);

    return [v3 _restoreBundleStateForAppsWithBundleIds:v4];
  }

  return result;
}

- (id)_activeDisplayWindowScene
{
  windowSceneManager = [SBApp windowSceneManager];
  activeDisplayWindowScene = [windowSceneManager activeDisplayWindowScene];

  return activeDisplayWindowScene;
}

- (void)_requestNewWindowForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  _activeDisplayWindowScene = [(SBMenuBarDemoMenuProvider *)self _activeDisplayWindowScene];
  _fbsDisplayConfiguration = [_activeDisplayWindowScene _fbsDisplayConfiguration];
  v7 = +[SBApplicationController sharedInstance];
  v8 = [v7 applicationWithBundleIdentifier:identifierCopy];

  sceneManager = [_activeDisplayWindowScene sceneManager];
  _fbsDisplayIdentity = [_activeDisplayWindowScene _fbsDisplayIdentity];
  v11 = [SBDeviceApplicationSceneEntity newEntityWithApplication:v8 sceneHandleProvider:sceneManager displayIdentity:_fbsDisplayIdentity];
  v12 = +[SBWorkspace mainWorkspace];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __66__SBMenuBarDemoMenuProvider__requestNewWindowForBundleIdentifier___block_invoke;
  v14[3] = &unk_2783AAA48;
  v15 = v11;
  selfCopy = self;
  v13 = v11;
  [v12 requestTransitionWithOptions:0 displayConfiguration:_fbsDisplayConfiguration builder:v14];
}

void __66__SBMenuBarDemoMenuProvider__requestNewWindowForBundleIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setSource:35];
  [v3 setEventLabel:@"NewWindowRequest"];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __66__SBMenuBarDemoMenuProvider__requestNewWindowForBundleIdentifier___block_invoke_2;
  v9[3] = &unk_2783A98C8;
  v10 = *(a1 + 32);
  [v3 modifyApplicationContext:v9];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __66__SBMenuBarDemoMenuProvider__requestNewWindowForBundleIdentifier___block_invoke_3;
  v7[3] = &unk_2783A8BF0;
  v6 = *(a1 + 32);
  v4 = v6.i64[0];
  v8 = vextq_s8(v6, v6, 8uLL);
  v5 = [v3 addCompletionHandler:v7];
}

void __66__SBMenuBarDemoMenuProvider__requestNewWindowForBundleIdentifier___block_invoke_3(uint64_t a1)
{
  v2 = dispatch_time(0, 500000000);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __66__SBMenuBarDemoMenuProvider__requestNewWindowForBundleIdentifier___block_invoke_4;
  v4[3] = &unk_2783A92D8;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  dispatch_after(v2, MEMORY[0x277D85CD0], v4);
}

void __66__SBMenuBarDemoMenuProvider__requestNewWindowForBundleIdentifier___block_invoke_4(uint64_t a1)
{
  v5 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) sceneHandle];
  v4 = [v3 scene];
  [v5 menuBarDemoMenuProvider:v2 applyDemoDisplayItemLayoutAttributesToScene:v4];
}

- (SBMenuBarDemoMenuProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end