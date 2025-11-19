@interface SBWindowScenePIPManager
- (BOOL)isPointWithinAnyPictureInPictureContent:(CGPoint)a3;
- (NSDictionary)_sourceToEdgeInsets;
- (SBWindowScene)windowScene;
- (SBWindowScenePIPManager)initWithGlobalCoordinator:(id)a3;
- (UIEdgeInsets)_minimumStashedPadding;
- (id)_mutableWindowLevelOverrideAssertionsForContentType:(int)a3 createIfNeeded:;
- (id)_windowLevelOverrideAssertionsForContentType:(int64_t)a3;
- (id)acquireStashAssertionForReason:(int64_t)a3 identifier:(id)a4;
- (id)acquireWindowLevelOverrideAssertionForControllerWithContentType:(int64_t)a3 toWindowLevel:(unint64_t)a4 withReason:(int64_t)a5 identifier:(id)a6;
- (void)_floatingDockHeightWillChange:(id)a3;
- (void)_shelfHeightDidChange:(id)a3;
- (void)_systemApertureInsetsDidChange:(id)a3;
- (void)_updateFloatingDockInsetsWithoutNotifyingControllers;
- (void)_windowManagementStyleDidChange:(id)a3;
- (void)applyPictureInPictureInsets:(UIEdgeInsets)a3 forSource:(int64_t)a4;
- (void)applyStashedPictureInPicturePadding:(UIEdgeInsets)a3 forPIPSource:(int64_t)a4;
- (void)configureInsetsForHomeScreenController:(id)a3;
- (void)setNeedsUpdateZStackParticipantPreferencesWithReason:(id)a3;
- (void)updatePictureInPictureWindowLevels;
- (void)windowSceneDidConnect:(id)a3;
- (void)windowSceneDidDisconnect:(id)a3;
- (void)zStackParticipant:(id)a3 updatePreferences:(id)a4;
@end

@implementation SBWindowScenePIPManager

- (NSDictionary)_sourceToEdgeInsets
{
  v2 = [(NSMutableDictionary *)self->_sourceToEdgeInsets copy];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = MEMORY[0x277CBEC10];
  }

  v5 = v4;

  return v4;
}

- (SBWindowScenePIPManager)initWithGlobalCoordinator:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = SBWindowScenePIPManager;
  v6 = [(SBWindowScenePIPManager *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_globalCoordinator, a3);
    v8 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:2];
    contentTypeToWindowMargins = v7->_contentTypeToWindowMargins;
    v7->_contentTypeToWindowMargins = v8;

    v10 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:11];
    sourceToEdgeInsets = v7->_sourceToEdgeInsets;
    v7->_sourceToEdgeInsets = v10;

    v12 = [MEMORY[0x277CCAB98] defaultCenter];
    [v12 addObserver:v7 selector:sel__shelfHeightDidChange_ name:@"SBSwitcherShelfHeightDidChangeNotification" object:0];
    [v12 addObserver:v7 selector:sel__systemApertureInsetsDidChange_ name:@"SBSystemApertureLayoutDidChangeNotification" object:0];
    if (+[SBFloatingDockController isFloatingDockSupported])
    {
      [v12 addObserver:v7 selector:sel__floatingDockHeightWillChange_ name:@"SBFloatingDockControllerHeightWillChangeNotification" object:0];
    }
  }

  return v7;
}

- (void)windowSceneDidConnect:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);

  if (WeakRetained)
  {
    [SBWindowScenePIPManager windowSceneDidConnect:];
  }

  objc_storeWeak(&self->_windowScene, v4);
  v6 = [_SBPIPEndStashTabSuppressionGestureManager alloc];
  v7 = [v4 systemGestureManager];
  v8 = [(_SBPIPEndStashTabSuppressionGestureManager *)v6 initWithSystemGestureManager:v7];
  endStashTabSuppressionGestureManager = self->_endStashTabSuppressionGestureManager;
  self->_endStashTabSuppressionGestureManager = v8;

  v10 = [MEMORY[0x277CCAB98] defaultCenter];
  v11 = [v4 switcherController];
  [v10 addObserver:self selector:sel__windowManagementStyleDidChange_ name:@"SBSwitcherControllerWindowManagementStyleDidChangeNotification" object:v11];

  globalCoordinator = self->_globalCoordinator;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __49__SBWindowScenePIPManager_windowSceneDidConnect___block_invoke;
  v14[3] = &unk_2783A9020;
  v15 = v4;
  v13 = v4;
  [(SBPIPControllerCoordinator *)globalCoordinator _enumerateControllersByDescendingPriority:v14];
}

- (void)windowSceneDidDisconnect:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);

  if (WeakRetained != v4)
  {
    [SBWindowScenePIPManager windowSceneDidDisconnect:];
  }

  objc_storeWeak(&self->_windowScene, 0);
  endStashTabSuppressionGestureManager = self->_endStashTabSuppressionGestureManager;
  self->_endStashTabSuppressionGestureManager = 0;

  globalCoordinator = self->_globalCoordinator;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __52__SBWindowScenePIPManager_windowSceneDidDisconnect___block_invoke;
  v9[3] = &unk_2783A9020;
  v10 = v4;
  v8 = v4;
  [(SBPIPControllerCoordinator *)globalCoordinator _enumerateControllersByDescendingPriority:v9];
}

- (void)applyPictureInPictureInsets:(UIEdgeInsets)a3 forSource:(int64_t)a4
{
  v14 = a3;
  v6 = [MEMORY[0x277CCAE60] valueWithBytes:&v14 objCType:"{UIEdgeInsets=dddd}"];
  sourceToEdgeInsets = self->_sourceToEdgeInsets;
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
  [(NSMutableDictionary *)sourceToEdgeInsets setObject:v6 forKeyedSubscript:v8];

  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  v10 = WeakRetained;
  if (a4 != 5)
  {
    globalCoordinator = self->_globalCoordinator;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __65__SBWindowScenePIPManager_applyPictureInPictureInsets_forSource___block_invoke;
    v12[3] = &unk_2783A9020;
    v13 = WeakRetained;
    [(SBPIPControllerCoordinator *)globalCoordinator _enumerateControllersByDescendingPriority:v12];
  }
}

- (void)configureInsetsForHomeScreenController:(id)a3
{
  v7 = a3;
  if (!+[SBFloatingDockController isFloatingDockSupported])
  {
    v4 = [v7 _rootFolderController];
    [v4 dockHeight];
    v6 = v5;

    [(SBWindowScenePIPManager *)self applyPictureInPictureInsets:1 forSource:0.0, 0.0, v6, 0.0];
  }
}

- (void)_updateFloatingDockInsetsWithoutNotifyingControllers
{
  v3 = [(SBWindowScenePIPManager *)self windowScene];
  if ([v3 isMainDisplayWindowScene])
  {
    v4 = [v3 floatingDockController];
    v5 = [v4 isFloatingDockPresented];
    v6 = 0;
    if (v5)
    {
      [v4 floatingDockHeight];
    }

    v8[0] = 0;
    v8[1] = 0;
    v8[2] = v6;
    v8[3] = 0;
    v7 = [MEMORY[0x277CCAE60] valueWithBytes:v8 objCType:"{UIEdgeInsets=dddd}"];
    [(NSMutableDictionary *)self->_sourceToEdgeInsets setObject:v7 forKeyedSubscript:&unk_28336F920];
  }
}

- (void)_floatingDockHeightWillChange:(id)a3
{
  v11 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  v5 = [WeakRetained floatingDockController];

  v6 = [v11 object];

  if (v6 == v5)
  {
    v7 = [v11 userInfo];
    v8 = [v7 objectForKey:@"SBFloatingDockControllerHeight"];
    [v8 doubleValue];
    v10 = v9;

    [(SBWindowScenePIPManager *)self applyPictureInPictureInsets:7 forSource:0.0, 0.0, v10, 0.0];
  }
}

- (void)_shelfHeightDidChange:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKey:@"SBSwitcherShelfHeight"];
  [v5 floatValue];
  v7 = v6;

  [(SBWindowScenePIPManager *)self applyPictureInPictureInsets:9 forSource:0.0, 0.0, v7, 0.0];
}

- (void)_systemApertureInsetsDidChange:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKey:@"SBSystemApertureEdgeInsets"];
  [v5 UIEdgeInsetsValue];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  [(SBWindowScenePIPManager *)self applyPictureInPictureInsets:10 forSource:v7, v9, v11, v13];
}

- (BOOL)isPointWithinAnyPictureInPictureContent:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  globalCoordinator = self->_globalCoordinator;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __67__SBWindowScenePIPManager_isPointWithinAnyPictureInPictureContent___block_invoke;
  v10[3] = &unk_2783A9048;
  v13 = x;
  v14 = y;
  v8 = WeakRetained;
  v11 = v8;
  v12 = &v15;
  [(SBPIPControllerCoordinator *)globalCoordinator _enumerateControllersByDescendingPriority:v10];
  LOBYTE(globalCoordinator) = *(v16 + 24);

  _Block_object_dispose(&v15, 8);
  return globalCoordinator;
}

uint64_t __67__SBWindowScenePIPManager_isPointWithinAnyPictureInPictureContent___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  result = [a2 _isPointInsidePictureInPictureContent:*(a1 + 32) onWindowScene:{*(a1 + 48), *(a1 + 56)}];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

- (id)acquireStashAssertionForReason:(int64_t)a3 identifier:(id)a4
{
  v6 = a4;
  objc_initWeak(&location, self);
  v7 = objc_alloc(MEMORY[0x277CF0CE8]);
  v8 = SBStringForPIPBehaviorOverrideReason(a3);
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __69__SBWindowScenePIPManager_acquireStashAssertionForReason_identifier___block_invoke;
  v25[3] = &unk_2783A9070;
  objc_copyWeak(&v26, &location);
  v9 = [v7 initWithIdentifier:v6 forReason:v8 invalidationBlock:v25];

  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  v11 = [[SBPIPCompoundAssertion alloc] initWithIdentifier:v6 reason:a3];
  globalCoordinator = self->_globalCoordinator;
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __69__SBWindowScenePIPManager_acquireStashAssertionForReason_identifier___block_invoke_2;
  v22 = &unk_2783A9098;
  v13 = v11;
  v23 = v13;
  v14 = WeakRetained;
  v24 = v14;
  [(SBPIPControllerCoordinator *)globalCoordinator _enumerateControllersByDescendingPriority:&v19];
  stashAssertionsToCompoundAssertionMap = self->_stashAssertionsToCompoundAssertionMap;
  if (!stashAssertionsToCompoundAssertionMap)
  {
    v16 = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    v17 = self->_stashAssertionsToCompoundAssertionMap;
    self->_stashAssertionsToCompoundAssertionMap = v16;

    stashAssertionsToCompoundAssertionMap = self->_stashAssertionsToCompoundAssertionMap;
  }

  [(NSMapTable *)stashAssertionsToCompoundAssertionMap setObject:v13 forKey:v9, v19, v20, v21, v22];

  objc_destroyWeak(&v26);
  objc_destroyWeak(&location);

  return v9;
}

void __69__SBWindowScenePIPManager_acquireStashAssertionForReason_identifier___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained[5] objectForKey:v6];
    [v5 invalidate];
    [v4[5] removeObjectForKey:v6];
  }
}

- (void)applyStashedPictureInPicturePadding:(UIEdgeInsets)a3 forPIPSource:(int64_t)a4
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  if (!self->_contentTypeToStashedPadding)
  {
    v10 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:2];
    contentTypeToStashedPadding = self->_contentTypeToStashedPadding;
    self->_contentTypeToStashedPadding = v10;
  }

  *v20 = top;
  *&v20[1] = left;
  *&v20[2] = bottom;
  *&v20[3] = right;
  v12 = [MEMORY[0x277CCAE60] valueWithBytes:v20 objCType:"{UIEdgeInsets=dddd}"];
  v13 = self->_contentTypeToStashedPadding;
  v14 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
  [(NSMutableDictionary *)v13 setObject:v12 forKeyedSubscript:v14];

  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  globalCoordinator = self->_globalCoordinator;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __76__SBWindowScenePIPManager_applyStashedPictureInPicturePadding_forPIPSource___block_invoke;
  v18[3] = &unk_2783A9020;
  v19 = WeakRetained;
  v17 = WeakRetained;
  [(SBPIPControllerCoordinator *)globalCoordinator _enumerateControllersByDescendingPriority:v18];
}

- (UIEdgeInsets)_minimumStashedPadding
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277D768C8];
  v3 = *(MEMORY[0x277D768C8] + 8);
  v6 = *(MEMORY[0x277D768C8] + 16);
  v5 = *(MEMORY[0x277D768C8] + 24);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = self->_contentTypeToStashedPadding;
  v8 = [(NSMutableDictionary *)v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v22;
    do
    {
      v11 = 0;
      do
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [(NSMutableDictionary *)self->_contentTypeToStashedPadding objectForKeyedSubscript:*(*(&v21 + 1) + 8 * v11), v21];
        [v12 UIEdgeInsetsValue];

        UIEdgeInsetsMax();
        v4 = v13;
        v3 = v14;
        v6 = v15;
        v5 = v16;
        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSMutableDictionary *)v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v9);
  }

  v17 = v4;
  v18 = v3;
  v19 = v6;
  v20 = v5;
  result.right = v20;
  result.bottom = v19;
  result.left = v18;
  result.top = v17;
  return result;
}

- (id)acquireWindowLevelOverrideAssertionForControllerWithContentType:(int64_t)a3 toWindowLevel:(unint64_t)a4 withReason:(int64_t)a5 identifier:(id)a6
{
  v23 = *MEMORY[0x277D85DE8];
  v10 = a6;
  if (!a5)
  {
    [SBWindowScenePIPManager acquireWindowLevelOverrideAssertionForControllerWithContentType:toWindowLevel:withReason:identifier:];
  }

  objc_initWeak(&location, self);
  v11 = [SBPIPWindowLevelOverrideAssertion alloc];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __127__SBWindowScenePIPManager_acquireWindowLevelOverrideAssertionForControllerWithContentType_toWindowLevel_withReason_identifier___block_invoke;
  v18[3] = &unk_2783A90C0;
  objc_copyWeak(v19, &location);
  v19[1] = a3;
  v12 = [(SBPIPWindowLevelOverrideAssertion *)v11 initWithWindowLevel:a4 reason:a5 identifier:v10 invalidationBlock:v18];
  if (v12)
  {
    v13 = SBLogPIP();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v22 = v12;
      _os_log_impl(&dword_21ED4E000, v13, OS_LOG_TYPE_DEFAULT, "[Assertions] Window level assertion was acquired: %{public}@", buf, 0xCu);
    }

    v14 = [(SBWindowScenePIPManager *)self _mutableWindowLevelOverrideAssertionsForContentType:a3 createIfNeeded:1];
    [v14 addObject:v12];

    v15 = [(SBPIPControllerCoordinator *)self->_globalCoordinator controllerForType:a3];
    WeakRetained = objc_loadWeakRetained(&self->_windowScene);
    [v15 updatePictureInPictureWindowLevelForWindowScene:WeakRetained];
  }

  objc_destroyWeak(v19);
  objc_destroyWeak(&location);

  return v12;
}

void __127__SBWindowScenePIPManager_acquireWindowLevelOverrideAssertionForControllerWithContentType_toWindowLevel_withReason_identifier___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [(SBWindowScenePIPManager *)WeakRetained _mutableWindowLevelOverrideAssertionsForContentType:0 createIfNeeded:?];
    [v6 removeObject:v3];

    v7 = SBLogPIP();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138543362;
      v11 = v3;
      _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "[Assertions] Window level assertion was invalidated: %{public}@", &v10, 0xCu);
    }

    v8 = [v5[8] controllerForType:*(a1 + 40)];
    v9 = objc_loadWeakRetained(v5 + 9);
    [v8 updatePictureInPictureWindowLevelForWindowScene:v9];
  }
}

- (void)updatePictureInPictureWindowLevels
{
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  globalCoordinator = self->_globalCoordinator;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __61__SBWindowScenePIPManager_updatePictureInPictureWindowLevels__block_invoke;
  v6[3] = &unk_2783A9020;
  v7 = WeakRetained;
  v5 = WeakRetained;
  [(SBPIPControllerCoordinator *)globalCoordinator _enumerateControllersByDescendingPriority:v6];
}

- (void)setNeedsUpdateZStackParticipantPreferencesWithReason:(id)a3
{
  [(SBFZStackParticipant *)self->_zStackParticipant setNeedsUpdatePreferencesWithReason:a3];
  if (!self->_zStackParticipant)
  {
    v4 = [(SBWindowScenePIPManager *)self windowScene];
    v7 = [v4 zStackResolver];

    v5 = [v7 acquireParticipantWithIdentifier:16 delegate:self];
    zStackParticipant = self->_zStackParticipant;
    self->_zStackParticipant = v5;
  }
}

- (void)zStackParticipant:(id)a3 updatePreferences:(id)a4
{
  v5 = a4;
  v6 = [(SBWindowScenePIPManager *)self windowScene];
  globalCoordinator = self->_globalCoordinator;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __63__SBWindowScenePIPManager_zStackParticipant_updatePreferences___block_invoke;
  v10[3] = &unk_2783A90E8;
  v11 = v5;
  v12 = v6;
  v8 = v6;
  v9 = v5;
  [(SBPIPControllerCoordinator *)globalCoordinator _enumerateControllersByDescendingPriority:v10];
}

- (void)_windowManagementStyleDidChange:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  v5 = [WeakRetained switcherController];
  v6 = [v5 windowManagementContext];
  v7 = [v6 isChamoisOrFlexibleWindowing];

  globalCoordinator = self->_globalCoordinator;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __59__SBWindowScenePIPManager__windowManagementStyleDidChange___block_invoke;
  v9[3] = &unk_2783A9110;
  v10 = v7;
  v9[4] = self;
  [(SBPIPControllerCoordinator *)globalCoordinator _enumerateControllersByDescendingPriority:v9];
}

void __59__SBWindowScenePIPManager__windowManagementStyleDidChange___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 32);
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((v3 + 72));
  [v4 setEnhancedWindowingModeEnabled:v2 windowScene:WeakRetained];
}

- (SBWindowScene)windowScene
{
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);

  return WeakRetained;
}

- (id)_mutableWindowLevelOverrideAssertionsForContentType:(int)a3 createIfNeeded:
{
  if (a1)
  {
    OUTLINED_FUNCTION_1_2();
    v7 = *(v6 + 24);
    if (!v7 && a3)
    {
      v8 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:2];
      v9 = *(v4 + 24);
      *(v4 + 24) = v8;

      v7 = *(v4 + 24);
    }

    v10 = [MEMORY[0x277CCABB0] numberWithInteger:v3];
    v11 = [v7 objectForKeyedSubscript:v10];

    if (!v11 && a3)
    {
      v11 = [MEMORY[0x277CBEB18] arrayWithCapacity:1];
      v12 = *(v4 + 24);
      v13 = [MEMORY[0x277CCABB0] numberWithInteger:v3];
      [v12 setObject:v11 forKeyedSubscript:v13];
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)_windowLevelOverrideAssertionsForContentType:(int64_t)a3
{
  v3 = [(SBWindowScenePIPManager *)self _mutableWindowLevelOverrideAssertionsForContentType:a3 createIfNeeded:0];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  v6 = v5;

  return v5;
}

- (void)windowSceneDidConnect:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)windowSceneDidDisconnect:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)acquireWindowLevelOverrideAssertionForControllerWithContentType:toWindowLevel:withReason:identifier:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"reason" object:? file:? lineNumber:? description:?];
}

@end