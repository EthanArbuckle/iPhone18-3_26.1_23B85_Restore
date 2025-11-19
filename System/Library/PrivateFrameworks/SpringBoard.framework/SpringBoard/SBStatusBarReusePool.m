@interface SBStatusBarReusePool
- (SBStatusBarReusePool)initWithWindowScene:(id)a3;
- (SBWindowScene)windowScene;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)getReusableStatusBarWithReason:(id)a3;
- (id)getReusableStatusBarWithReason:(id)a3 withFrame:(CGRect)a4;
- (id)succinctDescription;
- (unint64_t)_statusBarInstanceLimit;
- (void)_resetStatusBar:(id)a3 clearOverrides:(BOOL)a4;
- (void)enumerateStatusBars:(id)a3;
- (void)recycleStatusBar:(id)a3;
@end

@implementation SBStatusBarReusePool

- (SBWindowScene)windowScene
{
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);

  return WeakRetained;
}

- (unint64_t)_statusBarInstanceLimit
{
  if (!_os_feature_enabled_impl())
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  v4 = [WeakRetained screen];
  v5 = [v4 displayConfiguration];
  if ([v5 isExternal])
  {
    v6 = 3;
  }

  else
  {
    v6 = 15;
  }

  return v6;
}

- (SBStatusBarReusePool)initWithWindowScene:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = SBStatusBarReusePool;
  v5 = [(SBStatusBarReusePool *)&v13 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277CCAA50]) initWithOptions:5 capacity:1];
    statusBars = v5->_statusBars;
    v5->_statusBars = v6;

    v8 = [[SBStatusBarReusePoolWindow alloc] initWithWindowScene:v4];
    recycledStatusBarsContainerWindow = v5->_recycledStatusBarsContainerWindow;
    v5->_recycledStatusBarsContainerWindow = &v8->super;

    [(UIWindow *)v5->_recycledStatusBarsContainerWindow setHidden:1];
    v10 = [MEMORY[0x277CBEB18] array];
    recycledStatusBars = v5->_recycledStatusBars;
    v5->_recycledStatusBars = v10;

    objc_storeWeak(&v5->_windowScene, v4);
  }

  return v5;
}

- (id)getReusableStatusBarWithReason:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  v6 = [WeakRetained statusBarManager];
  [v6 statusBarFrame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = [(SBStatusBarReusePool *)self getReusableStatusBarWithReason:v4 withFrame:v8, v10, v12, v14];

  return v15;
}

- (id)getReusableStatusBarWithReason:(id)a3 withFrame:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v27 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = [(NSMutableArray *)self->_recycledStatusBars _sb_dequeue];
  v11 = SBLogStatusBarish();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    if (v10)
    {
      v19 = @"cached";
    }

    else
    {
      v19 = @"uncached";
    }

    v20 = [(NSMutableArray *)self->_recycledStatusBars count];
    v21 = 138412802;
    v22 = v19;
    v23 = 2048;
    v24 = v20;
    v25 = 2112;
    v26 = v9;
    _os_log_debug_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEBUG, "SBStatusBarReusePool vending %@ Status Bar (cache size %lu) for reason: %@", &v21, 0x20u);
  }

  if (v10)
  {
    v12 = objc_getAssociatedObject(v10, "SBStatusBarContainerKey");
    [v10 setFrame:{x, y, width, height}];
  }

  else
  {
    SBStatusBarIsSpeakeasy();
    v10 = [objc_alloc(objc_opt_class()) initWithFrame:{x, y, width, height}];
    v13 = [v10 statusBar];
    WeakRetained = objc_loadWeakRetained(&self->_windowScene);
    v15 = [WeakRetained screen];
    [v13 setTargetScreen:v15];

    [(SBStatusBarReusePool *)self _resetStatusBar:v10 clearOverrides:0];
    v12 = objc_alloc_init(SBStatusBarContainer);
    [(SBStatusBarContainer *)v12 setStatusBar:v10];
    [(SBStatusBarContainer *)v12 setReusePool:self];
    [(NSHashTable *)self->_statusBars addObject:v12];
    objc_setAssociatedObject(v10, "SBStatusBarContainerKey", v12, 0x301);
    v16 = [(SBStatusBarReusePool *)self newStatusBarConfigurationHandler];

    if (v16)
    {
      v17 = [(SBStatusBarReusePool *)self newStatusBarConfigurationHandler];
      (v17)[2](v17, v10);
    }
  }

  [(SBStatusBarContainer *)v12 setReason:v9];

  return v10;
}

- (void)recycleStatusBar:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = objc_getAssociatedObject(v4, "SBStatusBarContainerKey");
    p_recycledStatusBars = &self->_recycledStatusBars;
    v8 = [(NSMutableArray *)self->_recycledStatusBars count];
    if (v8 >= [(SBStatusBarReusePool *)self _statusBarInstanceLimit])
    {
      objc_setAssociatedObject(v5, "SBStatusBarContainerKey", 0, 0x301);
      [v5 removeFromSuperview];
      v10 = SBLogStatusBarish();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [(SBStatusBarReusePool *)p_recycledStatusBars recycleStatusBar:v6];
      }
    }

    else
    {
      v9 = SBLogStatusBarish();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        [(SBStatusBarReusePool *)&self->_recycledStatusBars recycleStatusBar:v6];
      }

      [v6 setReason:@"RecycledStatusBar"];
      [(SBStatusBarReusePool *)self _resetStatusBar:v5 clearOverrides:1];
      [(UIWindow *)self->_recycledStatusBarsContainerWindow addSubview:v5];
      [(NSMutableArray *)self->_recycledStatusBars _sb_enqueue:v5];
    }
  }
}

- (void)enumerateStatusBars:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(NSHashTable *)self->_statusBars allObjects];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v11 + 1) + 8 * v9) statusBar];
        v4[2](v4, v10);

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)_resetStatusBar:(id)a3 clearOverrides:(BOOL)a4
{
  v6 = a3;
  v7 = MEMORY[0x277D75D18];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __55__SBStatusBarReusePool__resetStatusBar_clearOverrides___block_invoke;
  v9[3] = &unk_2783A97D8;
  v12 = a4;
  v10 = v6;
  v11 = self;
  v8 = v6;
  [v7 _performWithoutRetargetingAnimations:v9];
  [v8 _removeAllAnimations:1];
}

void __55__SBStatusBarReusePool__resetStatusBar_clearOverrides___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setHidden:0];
  [*(a1 + 32) setAlpha:1.0];
  v2 = *(a1 + 32);
  v3 = *(MEMORY[0x277CBF2C0] + 16);
  v8[0] = *MEMORY[0x277CBF2C0];
  v8[1] = v3;
  v8[2] = *(MEMORY[0x277CBF2C0] + 32);
  [v2 setTransform:v8];
  [*(a1 + 32) sb_setEnabledStatusBarPartIdentifiersForStatusBarParts:0xFFFFLL];
  [*(a1 + 32) setStyleDelegate:SBApp];
  [*(a1 + 32) _setDisablesRasterization:1];
  if (*(a1 + 48) == 1)
  {
    [*(a1 + 32) sb_setLocalDataOverrides:0];
    [*(a1 + 32) forceUpdateData:0];
  }

  v4 = [*(a1 + 40) windowScene];
  v5 = [v4 statusBarManager];
  v6 = [v5 assertionManager];
  [*(a1 + 32) setManager:v6];
  v7 = [*(a1 + 32) statusBar];
  [v7 setOverlayData:0];
  [v7 setBackgroundColor:0];
  [*(a1 + 32) setBackgroundColor:0];
}

- (id)succinctDescription
{
  v2 = [(SBStatusBarReusePool *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBStatusBarReusePool *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = a3;
  v5 = [(SBStatusBarReusePool *)self succinctDescriptionBuilder];
  v6 = [(NSHashTable *)self->_statusBars allObjects];
  [v5 appendArraySection:v6 withName:@"Status Bars" multilinePrefix:v4 skipIfEmpty:1];

  return v5;
}

- (void)recycleStatusBar:(id *)a1 .cold.1(id *a1, void *a2)
{
  [*a1 count];
  v3 = [a2 reason];
  OUTLINED_FUNCTION_0_50();
  OUTLINED_FUNCTION_12(&dword_21ED4E000, v4, v5, "SBStatusBarReusePool NOT recycling Status Bar (cache size %lu) for reason: %@", v6, v7, v8, v9, v10);
}

- (void)recycleStatusBar:(id *)a1 .cold.2(id *a1, void *a2)
{
  [*a1 count];
  v3 = [a2 reason];
  OUTLINED_FUNCTION_0_50();
  OUTLINED_FUNCTION_12(&dword_21ED4E000, v4, v5, "SBStatusBarReusePool recycling Status Bar (cache size %lu) for reason: %@", v6, v7, v8, v9, v10);
}

@end