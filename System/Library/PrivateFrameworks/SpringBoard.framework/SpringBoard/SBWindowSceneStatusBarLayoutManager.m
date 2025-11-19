@interface SBWindowSceneStatusBarLayoutManager
- (BOOL)statusBarOrientationShouldFollowWindow:(id)a3;
- (SBWindowSceneStatusBarLayoutManager)initWithWindowScene:(id)a3;
- (UIEdgeInsets)statusBarEdgeInsets;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)orientationWindowForLayoutLayer:(unint64_t)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (unint64_t)topmostActiveLayoutLayer;
- (void)_applyEdgeInsetsToStatusBar;
- (void)_updateStatusBarOrientationForTopMostActiveLayer;
- (void)_updateWindowLevel;
- (void)addActiveLayoutLayer:(unint64_t)a3;
- (void)removeActiveLayoutLayer:(unint64_t)a3;
- (void)removeWindowLevelOverrideReason:(id)a3;
- (void)setOrientationWindow:(id)a3 forStatusBarLayoutLayer:(unint64_t)a4;
- (void)setStatusBarEdgeInsets:(UIEdgeInsets)a3 forLayoutLayer:(unint64_t)a4;
- (void)setWindowLevel:(double)a3 forOverrideReason:(id)a4;
@end

@implementation SBWindowSceneStatusBarLayoutManager

- (unint64_t)topmostActiveLayoutLayer
{
  v2 = [(NSMutableSet *)self->_activeLayoutLayers allObjects];
  v3 = [v2 sortedArrayUsingSelector:sel_compare_];

  v4 = [v3 lastObject];
  v5 = [v4 unsignedIntegerValue];

  return v5;
}

- (void)_updateStatusBarOrientationForTopMostActiveLayer
{
  orientationWindowDictionary = self->_orientationWindowDictionary;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SBWindowSceneStatusBarLayoutManager topmostActiveLayoutLayer](self, "topmostActiveLayoutLayer")}];
  v7 = [(NSMutableDictionary *)orientationWindowDictionary objectForKeyedSubscript:v4];

  if (v7)
  {
    WeakRetained = objc_loadWeakRetained(&self->_windowScene);
    v6 = [WeakRetained statusBarManager];
    [v6 setStatusBarOrientation:{objc_msgSend(v7, "interfaceOrientation")}];
  }
}

- (void)_applyEdgeInsetsToStatusBar
{
  v38 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  v4 = [WeakRetained statusBarManager];

  v5 = [v4 statusBarWindow];
  [v4 statusBarWindowFrame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [(SBWindowSceneStatusBarLayoutManager *)self statusBarEdgeInsets];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = SBLogStatusBarish();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    v40.top = v15;
    v40.left = v17;
    v40.bottom = v19;
    v40.right = v21;
    v31 = NSStringFromUIEdgeInsets(v40);
    v32 = [(SBWindowSceneStatusBarLayoutManager *)self topmostActiveLayoutLayer];
    if (v32 > 2)
    {
      v33 = @"invalid";
    }

    else
    {
      v33 = off_2783C5118[v32];
    }

    v34 = 138412546;
    v35 = v31;
    v36 = 2112;
    v37 = v33;
    _os_log_debug_impl(&dword_21ED4E000, v22, OS_LOG_TYPE_DEBUG, "Updating status bar insets to %@ for active layout layer %@", &v34, 0x16u);
  }

  v23 = v7 + v17;
  v24 = v9 + v15;
  v25 = v11 - (v17 + v21);
  v26 = v13 - (v15 + v19);
  [v5 frame];
  v41.origin.x = v27;
  v41.origin.y = v28;
  v41.size.width = v29;
  v41.size.height = v30;
  v39.origin.x = v23;
  v39.origin.y = v24;
  v39.size.width = v25;
  v39.size.height = v26;
  if (!CGRectEqualToRect(v39, v41))
  {
    [v5 setFrame:{v23, v24, v25, v26}];
  }
}

- (UIEdgeInsets)statusBarEdgeInsets
{
  edgeInsetsDictionary = self->_edgeInsetsDictionary;
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SBWindowSceneStatusBarLayoutManager topmostActiveLayoutLayer](self, "topmostActiveLayoutLayer")}];
  v4 = [(NSMutableDictionary *)edgeInsetsDictionary objectForKey:v3];
  [v4 UIEdgeInsetsValue];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.right = v16;
  result.bottom = v15;
  result.left = v14;
  result.top = v13;
  return result;
}

- (void)_updateWindowLevel
{
  defaultWindowLevel = self->_defaultWindowLevel;
  if ([(NSMutableOrderedSet *)self->_windowLevelOverrideReasons count])
  {
    windowLevelOverrideMap = self->_windowLevelOverrideMap;
    v5 = [(NSMutableOrderedSet *)self->_windowLevelOverrideReasons firstObject];
    v6 = [(NSMutableDictionary *)windowLevelOverrideMap objectForKey:v5];
    [v6 floatValue];
    defaultWindowLevel = v7;
  }

  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  v8 = [WeakRetained statusBarManager];
  v9 = [v8 statusBarWindow];
  [v9 setWindowLevel:defaultWindowLevel];
}

- (SBWindowSceneStatusBarLayoutManager)initWithWindowScene:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = SBWindowSceneStatusBarLayoutManager;
  v5 = [(SBWindowSceneStatusBarLayoutManager *)&v19 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_windowScene, v4);
    v6->_defaultWindowLevel = *MEMORY[0x277D772B8] + -1.0;
    v7 = objc_alloc_init(MEMORY[0x277CBEB40]);
    windowLevelOverrideReasons = v6->_windowLevelOverrideReasons;
    v6->_windowLevelOverrideReasons = v7;

    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    windowLevelOverrideMap = v6->_windowLevelOverrideMap;
    v6->_windowLevelOverrideMap = v9;

    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    orientationWindowDictionary = v6->_orientationWindowDictionary;
    v6->_orientationWindowDictionary = v11;

    objc_initWeak(&location, v6);
    v13 = MEMORY[0x277D85CD0];
    objc_copyWeak(&v17, &location);
    v14 = BSLogAddStateCaptureBlockWithTitle();
    stateCaptureAssertion = v6->_stateCaptureAssertion;
    v6->_stateCaptureAssertion = v14;

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  return v6;
}

id __59__SBWindowSceneStatusBarLayoutManager_initWithWindowScene___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained description];

  return v2;
}

- (void)addActiveLayoutLayer:(unint64_t)a3
{
  v5 = [(NSMutableSet *)self->_activeLayoutLayers count];
  activeLayoutLayers = self->_activeLayoutLayers;
  if (!activeLayoutLayers)
  {
    v7 = [objc_alloc(MEMORY[0x277CBEB58]) initWithObjects:{&unk_283372578, 0}];
    v8 = self->_activeLayoutLayers;
    self->_activeLayoutLayers = v7;

    activeLayoutLayers = self->_activeLayoutLayers;
  }

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  [(NSMutableSet *)activeLayoutLayers addObject:v9];

  if ([(NSMutableSet *)self->_activeLayoutLayers count]!= v5)
  {
    [(SBWindowSceneStatusBarLayoutManager *)self _updateStatusBarOrientationForTopMostActiveLayer];
    v10 = SBLogStatusBarish();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [(SBWindowSceneStatusBarLayoutManager *)a3 addActiveLayoutLayer:v10];
    }

    [(SBWindowSceneStatusBarLayoutManager *)self _applyEdgeInsetsToStatusBar];
  }
}

- (void)removeActiveLayoutLayer:(unint64_t)a3
{
  if (!a3)
  {
    [(SBWindowSceneStatusBarLayoutManager *)a2 removeActiveLayoutLayer:?];
  }

  v5 = [(NSMutableSet *)self->_activeLayoutLayers count];
  activeLayoutLayers = self->_activeLayoutLayers;
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  [(NSMutableSet *)activeLayoutLayers removeObject:v7];

  if ([(NSMutableSet *)self->_activeLayoutLayers count]!= v5)
  {
    [(SBWindowSceneStatusBarLayoutManager *)self _updateStatusBarOrientationForTopMostActiveLayer];
    v8 = SBLogStatusBarish();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [(SBWindowSceneStatusBarLayoutManager *)a3 removeActiveLayoutLayer:v8];
    }

    [(SBWindowSceneStatusBarLayoutManager *)self _applyEdgeInsetsToStatusBar];
  }
}

- (void)setStatusBarEdgeInsets:(UIEdgeInsets)a3 forLayoutLayer:(unint64_t)a4
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  edgeInsetsDictionary = self->_edgeInsetsDictionary;
  if (!edgeInsetsDictionary)
  {
    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v12 = self->_edgeInsetsDictionary;
    self->_edgeInsetsDictionary = v11;

    edgeInsetsDictionary = self->_edgeInsetsDictionary;
  }

  v13 = [MEMORY[0x277CCAE60] valueWithUIEdgeInsets:{top, left, bottom, right}];
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
  [(NSMutableDictionary *)edgeInsetsDictionary setObject:v13 forKey:v14];

  [(SBWindowSceneStatusBarLayoutManager *)self _applyEdgeInsetsToStatusBar];
}

- (void)setWindowLevel:(double)a3 forOverrideReason:(id)a4
{
  v7 = a4;
  v10 = v7;
  if (!v7)
  {
    [SBWindowSceneStatusBarLayoutManager setWindowLevel:a2 forOverrideReason:self];
    v7 = 0;
  }

  [(NSMutableOrderedSet *)self->_windowLevelOverrideReasons addObject:v7];
  windowLevelOverrideMap = self->_windowLevelOverrideMap;
  v9 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  [(NSMutableDictionary *)windowLevelOverrideMap setObject:v9 forKey:v10];

  [(SBWindowSceneStatusBarLayoutManager *)self _updateWindowLevel];
}

- (void)removeWindowLevelOverrideReason:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (!v5)
  {
    [(SBWindowSceneStatusBarLayoutManager *)a2 removeWindowLevelOverrideReason:?];
    v5 = 0;
  }

  [(NSMutableOrderedSet *)self->_windowLevelOverrideReasons removeObject:v5];
  [(NSMutableDictionary *)self->_windowLevelOverrideMap removeObjectForKey:v6];
  [(SBWindowSceneStatusBarLayoutManager *)self _updateWindowLevel];
}

- (void)setOrientationWindow:(id)a3 forStatusBarLayoutLayer:(unint64_t)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = SBLogStatusBarish();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    if (a4 > 2)
    {
      v8 = @"invalid";
    }

    else
    {
      v8 = off_2783C5118[a4];
    }

    v11 = 138412546;
    v12 = v6;
    v13 = 2112;
    v14 = v8;
    _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_INFO, "Updating window for status bar orientation updates to %@ for layer %@.", &v11, 0x16u);
  }

  if (v6)
  {
    orientationWindowDictionary = self->_orientationWindowDictionary;
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
    [(NSMutableDictionary *)orientationWindowDictionary setObject:v6 forKey:v10];
  }
}

- (BOOL)statusBarOrientationShouldFollowWindow:(id)a3
{
  orientationWindowDictionary = self->_orientationWindowDictionary;
  v5 = MEMORY[0x277CCABB0];
  v6 = a3;
  v7 = [v5 numberWithUnsignedInteger:{-[SBWindowSceneStatusBarLayoutManager topmostActiveLayoutLayer](self, "topmostActiveLayoutLayer")}];
  v8 = [(NSMutableDictionary *)orientationWindowDictionary objectForKey:v7];

  return v8 == v6;
}

- (id)orientationWindowForLayoutLayer:(unint64_t)a3
{
  orientationWindowDictionary = self->_orientationWindowDictionary;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v5 = [(NSMutableDictionary *)orientationWindowDictionary objectForKey:v4];

  return v5;
}

- (id)succinctDescription
{
  v2 = [(SBWindowSceneStatusBarLayoutManager *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __65__SBWindowSceneStatusBarLayoutManager_succinctDescriptionBuilder__block_invoke;
  v8[3] = &unk_2783A92D8;
  v4 = v3;
  v9 = v4;
  v10 = self;
  v5 = [v4 modifyProem:v8];
  v6 = v4;

  return v4;
}

id __65__SBWindowSceneStatusBarLayoutManager_succinctDescriptionBuilder__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) topmostActiveLayoutLayer];
  if (v3 > 2)
  {
    v4 = @"invalid";
  }

  else
  {
    v4 = off_2783C5118[v3];
  }

  v5 = [v2 appendObject:v4 withName:@"topmostActiveLayoutLayer"];
  return [*(a1 + 32) appendFloat:@"defaultWindowLevel" withName:*(*(a1 + 40) + 48)];
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBWindowSceneStatusBarLayoutManager *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = MEMORY[0x277CF0C00];
  v5 = a3;
  v6 = [v4 builderWithObject:self];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __77__SBWindowSceneStatusBarLayoutManager_descriptionBuilderWithMultilinePrefix___block_invoke;
  v10[3] = &unk_2783A92D8;
  v7 = v6;
  v11 = v7;
  v12 = self;
  [v7 appendBodySectionWithName:0 multilinePrefix:v5 block:v10];

  v8 = v7;
  return v7;
}

void __77__SBWindowSceneStatusBarLayoutManager_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 56));
  v4 = [WeakRetained _sceneIdentifier];
  v5 = [v2 appendObject:v4 withName:@"windowScene identifier"];

  v6 = *(a1 + 32);
  v7 = [*(a1 + 40) topmostActiveLayoutLayer];
  if (v7 > 2)
  {
    v8 = @"invalid";
  }

  else
  {
    v8 = off_2783C5118[v7];
  }

  v9 = [v6 appendObject:v8 withName:@"topmostActiveLayoutLayer"];
  v10 = [*(a1 + 32) appendFloat:@"defaultWindowLevel" withName:*(*(a1 + 40) + 48)];
  [*(a1 + 32) appendDictionarySection:*(*(a1 + 40) + 16) withName:@"window level overrides" skipIfEmpty:1];
  v11 = [MEMORY[0x277CBEB38] dictionary];
  v12 = *(*(a1 + 40) + 24);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __77__SBWindowSceneStatusBarLayoutManager_descriptionBuilderWithMultilinePrefix___block_invoke_2;
  v22[3] = &unk_2783C50D0;
  v23 = v11;
  v13 = v11;
  [v12 bs_each:v22];
  [*(a1 + 32) appendDictionarySection:v13 withName:@"edge insets (by layer)" skipIfEmpty:1];
  v14 = [MEMORY[0x277CBEB38] dictionary];
  v15 = *(*(a1 + 40) + 40);
  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = __77__SBWindowSceneStatusBarLayoutManager_descriptionBuilderWithMultilinePrefix___block_invoke_3;
  v20 = &unk_2783C50F8;
  v21 = v14;
  v16 = v14;
  [v15 bs_each:&v17];
  [*(a1 + 32) appendDictionarySection:v16 withName:@"orientation windows (by layer)" skipIfEmpty:{1, v17, v18, v19, v20}];
}

void __77__SBWindowSceneStatusBarLayoutManager_descriptionBuilderWithMultilinePrefix___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  [a3 UIEdgeInsetsValue];
  v8 = NSStringFromUIEdgeInsets(v10);
  v6 = [v5 unsignedIntegerValue];

  if (v6 > 2)
  {
    v7 = @"invalid";
  }

  else
  {
    v7 = off_2783C5118[v6];
  }

  [*(a1 + 32) setValue:v8 forKey:v7];
}

void __77__SBWindowSceneStatusBarLayoutManager_descriptionBuilderWithMultilinePrefix___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v7 = a3;
  v5 = [a2 unsignedIntegerValue];
  if (v5 > 2)
  {
    v6 = @"invalid";
  }

  else
  {
    v6 = off_2783C5118[v5];
  }

  [*(a1 + 32) setValue:v7 forKey:v6];
}

- (void)addActiveLayoutLayer:(unint64_t)a1 .cold.1(unint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  if (a1 > 2)
  {
    v2 = @"invalid";
  }

  else
  {
    v2 = off_2783C5118[a1];
  }

  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_DEBUG, "Adding status bar active layout layer %@", &v3, 0xCu);
}

- (void)removeActiveLayoutLayer:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBWindowSceneStatusBarLayoutManager.m" lineNumber:84 description:{@"Invalid parameter not satisfying: %@", @"layoutLayer != SBWindowSceneStatusBarLayoutLayerHomeScreen"}];
}

- (void)removeActiveLayoutLayer:(unint64_t)a1 .cold.2(unint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  if (a1 > 2)
  {
    v2 = @"invalid";
  }

  else
  {
    v2 = off_2783C5118[a1];
  }

  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_DEBUG, "Removing status bar active layout layer %@", &v3, 0xCu);
}

- (void)setWindowLevel:(uint64_t)a1 forOverrideReason:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBWindowSceneStatusBarLayoutManager.m" lineNumber:122 description:@"windowLevelOverrideReason is not valid"];
}

- (void)removeWindowLevelOverrideReason:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBWindowSceneStatusBarLayoutManager.m" lineNumber:131 description:@"windowLevelOverrideReason is not valid"];
}

@end