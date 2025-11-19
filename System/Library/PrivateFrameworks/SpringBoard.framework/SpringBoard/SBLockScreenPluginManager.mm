@interface SBLockScreenPluginManager
- (BOOL)_handlePluginDisabled:(id)a3 withContext:(id)a4;
- (BOOL)_loadLockScreenPluginWithContext:(id)a3;
- (BOOL)_sendEventToPlugin:(id)a3;
- (BOOL)disableLockScreenPluginWithContext:(id)a3;
- (BOOL)enableLockScreenPluginWithContext:(id)a3;
- (BOOL)handleEvent:(int64_t)a3;
- (BOOL)pluginController:(id)a3 sendAction:(id)a4;
- (SBLockScreenPluginManager)init;
- (SBLockScreenPluginManagerDelegate)delegate;
- (id)_highestPriorityPluginIgnoringViewDisplay:(BOOL)a3;
- (id)_pluginForPluginController:(id)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)lockScreenActionContext;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (void)_handleUIRelock;
- (void)_refreshLockScreenPlugin;
- (void)_setActivePlugin:(id)a3 displayedPlugin:(id)a4;
- (void)activatePluginController:(id)a3;
- (void)deactivatePluginController:(id)a3;
- (void)dealloc;
- (void)pluginController:(id)a3 updateAppearance:(id)a4;
- (void)setDelegate:(id)a3;
- (void)setEnabled:(BOOL)a3;
- (void)settings:(id)a3 changedValueForKey:(id)a4;
@end

@implementation SBLockScreenPluginManager

- (id)lockScreenActionContext
{
  v3 = +[SBLockScreenActionContextFactory sharedInstance];
  v4 = [(SBLockScreenPluginManager *)self activePlugin];
  v5 = [v3 lockScreenActionContextForPlugin:v4];

  return v5;
}

- (void)_refreshLockScreenPlugin
{
  v4 = [(SBLockScreenPluginManager *)self _highestPriorityPluginIgnoringViewDisplay:1];
  v3 = [(SBLockScreenPluginManager *)self _highestPriorityPluginIgnoringViewDisplay:0];
  [(SBLockScreenPluginManager *)self _setActivePlugin:v4 displayedPlugin:v3];
}

- (SBLockScreenPluginManager)init
{
  v10.receiver = self;
  v10.super_class = SBLockScreenPluginManager;
  v2 = [(SBLockScreenPluginManager *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    plugins = v2->_plugins;
    v2->_plugins = v3;

    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    [v5 addObserver:v2 selector:sel__handleUIRelock name:@"SBLockScreenUIRelockedNotification" object:0];
    v6 = [MEMORY[0x277D02C20] rootSettings];
    v7 = [v6 testPluginSettings];
    testSettings = v2->_testSettings;
    v2->_testSettings = v7;

    [(CSLockScreenTestPluginSettings *)v2->_testSettings addKeyObserver:v2];
  }

  return v2;
}

- (void)dealloc
{
  [(NSMutableDictionary *)self->_plugins enumerateKeysAndObjectsUsingBlock:&__block_literal_global_286];
  [(CSLockScreenTestPluginSettings *)self->_testSettings removeKeyObserver:self];
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = SBLockScreenPluginManager;
  [(SBLockScreenPluginManager *)&v4 dealloc];
}

void __36__SBLockScreenPluginManager_dealloc__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 viewController];
  v3 = [v4 viewIfLoaded];
  [v3 removeFromSuperview];
}

- (void)setDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    v5 = obj;
  }
}

- (void)setEnabled:(BOOL)a3
{
  if (self->_enabled != a3)
  {
    self->_enabled = a3;
    [(SBLockScreenPluginManager *)self _refreshLockScreenPlugin];
  }
}

- (BOOL)enableLockScreenPluginWithContext:(id)a3
{
  v4 = a3;
  v5 = [(SBLockScreenPluginManager *)self _loadLockScreenPluginWithContext:v4];
  if (v5)
  {
    plugins = self->_plugins;
    v7 = [v4 name];
    v8 = [(NSMutableDictionary *)plugins objectForKey:v7];

    v9 = [v4 auxiliaryAnimation];
    [v8 setAuxiliaryActivationAnimationBlock:v9];

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained pluginManager:self didLoadPlugin:v8];

    [(SBLockScreenPluginManager *)self _refreshLockScreenPlugin];
  }

  return v5;
}

- (BOOL)disableLockScreenPluginWithContext:(id)a3
{
  v4 = a3;
  v5 = [v4 name];
  if (v5)
  {
    v6 = [(NSMutableDictionary *)self->_plugins objectForKey:v5];
    v7 = [(SBLockScreenPluginManager *)self _handlePluginDisabled:v6 withContext:v4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)handleEvent:(int64_t)a3
{
  if ([(SBLockScreenPluginManager *)self isEnabled])
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __41__SBLockScreenPluginManager_handleEvent___block_invoke;
    v7[3] = &__block_descriptor_40_e28_B16__0__SBLockScreenPlugin_8l;
    v7[4] = a3;
    return [(SBLockScreenPluginManager *)self _sendEventToPlugin:v7];
  }

  else
  {
    v6 = SBLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(SBLockScreenPluginManager *)a3 handleEvent:v6];
    }

    return 0;
  }
}

- (BOOL)_sendEventToPlugin:(id)a3
{
  v4 = a3;
  if ((v4[2])(v4, self->_activePlugin))
  {
    v5 = 1;
  }

  else if (self->_activePlugin == self->_displayedPlugin)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4[2](v4);
  }

  return v5;
}

- (void)_handleUIRelock
{
  if ([(SBLockScreenPluginManager *)self isEnabled])
  {

    [(SBLockScreenPluginManager *)self handleEvent:2];
  }
}

- (id)_highestPriorityPluginIgnoringViewDisplay:(BOOL)a3
{
  v23 = *MEMORY[0x277D85DE8];
  if (![(SBLockScreenPluginManager *)self isEnabled])
  {
    v8 = 0;
    goto LABEL_19;
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [(NSMutableDictionary *)self->_plugins allValues];
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (!v6)
  {
    v8 = 0;
    goto LABEL_18;
  }

  v7 = v6;
  v8 = 0;
  v9 = *v19;
  v10 = 0x8000000000000000;
  do
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v19 != v9)
      {
        objc_enumerationMutation(v5);
      }

      v12 = *(*(&v18 + 1) + 8 * i);
      v13 = [v12 pluginPriority];
      if (v13 < v10 || a3)
      {
        if (v13 < v10)
        {
          continue;
        }

LABEL_12:
        v16 = v12;

        v10 = [v16 pluginPriority];
        v8 = v16;
        continue;
      }

      v14 = [v12 appearance];
      v15 = [v14 isHidden];

      if ((v15 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  }

  while (v7);
LABEL_18:

LABEL_19:

  return v8;
}

- (void)_setActivePlugin:(id)a3 displayedPlugin:(id)a4
{
  v14 = a3;
  v7 = a4;
  activePlugin = self->_activePlugin;
  if (activePlugin != v14)
  {
    objc_storeStrong(&self->_activePlugin, a3);
  }

  displayedPlugin = self->_displayedPlugin;
  if (displayedPlugin == v7)
  {
    v10 = 0;
  }

  else
  {
    v10 = displayedPlugin;
    objc_storeStrong(&self->_displayedPlugin, a4);
    v11 = [(SBLockScreenPlugin *)v10 viewController];
    v12 = [v11 viewIfLoaded];

    if (v12)
    {
      [v12 removeFromSuperview];
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (activePlugin != v14)
  {
    [WeakRetained pluginManager:self activePluginDidChange:self->_activePlugin];
  }

  if (displayedPlugin != v7)
  {
    [WeakRetained pluginManager:self displayedPluginDidChangeFromPlugin:v10 toPlugin:self->_displayedPlugin];
  }
}

- (BOOL)_loadLockScreenPluginWithContext:(id)a3
{
  v5 = a3;
  NSClassFromString(&cfstr_Sblockscreenpl_3.isa);
  if (!v5)
  {
    [SBLockScreenPluginManager _loadLockScreenPluginWithContext:a2];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [SBLockScreenPluginManager _loadLockScreenPluginWithContext:a2];
  }

  v6 = [v5 name];
  v7 = [(NSMutableDictionary *)self->_plugins objectForKey:v6];

  if (v7)
  {
    LOBYTE(v8) = 0;
  }

  else
  {
    v9 = [SBLockScreenPlugin pluginWithName:v6 activationContext:v5];
    v8 = v9 != 0;
    if (v9)
    {
      [(NSMutableDictionary *)self->_plugins setObject:v9 forKey:v6];
      [v9 pluginWillActivateWithContext:v5];
      [v9 setPluginAgent:self];
      v10 = [v5 observer];

      if (v10)
      {
        v11 = [v5 observer];
        [v9 addLifecycleObserver:v11];
      }
    }
  }

  return v8;
}

- (BOOL)_handlePluginDisabled:(id)a3 withContext:(id)a4
{
  v7 = a3;
  v8 = a4;
  NSClassFromString(&cfstr_Sblockscreenpl_3.isa);
  if (!v8)
  {
    [SBLockScreenPluginManager _handlePluginDisabled:a2 withContext:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [SBLockScreenPluginManager _handlePluginDisabled:a2 withContext:?];
  }

  if (v7 && (v9 = self->_plugins, [v7 name], v10 = objc_claimAutoreleasedReturnValue(), -[NSMutableDictionary objectForKey:](v9, "objectForKey:", v10), v11 = objc_claimAutoreleasedReturnValue(), v11, v10, v11 == v7))
  {
    plugins = self->_plugins;
    v14 = [v7 name];
    [(NSMutableDictionary *)plugins removeObjectForKey:v14];

    v15 = [v8 auxiliaryAnimation];
    [v7 setAuxiliaryDeactivationAnimationBlock:v15];

    [(SBLockScreenPluginManager *)self _refreshLockScreenPlugin];
    v16 = [MEMORY[0x277CCAB98] defaultCenter];
    [v16 postNotificationName:@"SBLockScreenPluginWasDisabledNotification" object:v7];

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained pluginManager:self willUnloadPlugin:v7];

    [v7 setPluginAgent:0];
    [v7 pluginDidDeactivateWithContext:v8];
    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)settings:(id)a3 changedValueForKey:(id)a4
{
  v5 = [(CSLockScreenTestPluginSettings *)self->_testSettings enablePlugin:a3];
  v6 = [MEMORY[0x277D67958] contextWithName:@"LockScreenTestPlugin"];
  if (v5)
  {
    [(SBLockScreenPluginManager *)self enableLockScreenPluginWithContext:v6];
  }

  else
  {
    [(SBLockScreenPluginManager *)self disableLockScreenPluginWithContext:v6];
  }

  v7 = [(CSLockScreenTestPluginSettings *)self->_testSettings enableLostModePlugin];
  v8 = [MEMORY[0x277D67958] contextWithName:@"FindMyiPhoneLockScreen"];
  if (v7)
  {
    [(SBLockScreenPluginManager *)self enableLockScreenPluginWithContext:v8];
  }

  else
  {
    [(SBLockScreenPluginManager *)self disableLockScreenPluginWithContext:v8];
  }
}

- (id)_pluginForPluginController:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__101;
  v16 = __Block_byref_object_dispose__101;
  v17 = 0;
  plugins = self->_plugins;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __56__SBLockScreenPluginManager__pluginForPluginController___block_invoke;
  v9[3] = &unk_2783BDDF0;
  v6 = v4;
  v10 = v6;
  v11 = &v12;
  [(NSMutableDictionary *)plugins enumerateKeysAndObjectsUsingBlock:v9];
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __56__SBLockScreenPluginManager__pluginForPluginController___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v11 = a2;
  v7 = a3;
  v8 = v7;
  if (*(a1 + 32) == v7 || ([v7 controller], v9 = objc_claimAutoreleasedReturnValue(), v10 = *(a1 + 32), v9, v9 == v10))
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
    *a4 = 1;
  }
}

- (void)activatePluginController:(id)a3
{
  v4 = [(SBLockScreenPluginManager *)self _pluginForPluginController:a3];
  if (v4)
  {
    v5 = v4;
    [(SBLockScreenPluginManager *)self _refreshLockScreenPlugin];
    v4 = v5;
  }
}

- (void)deactivatePluginController:(id)a3
{
  v4 = [(SBLockScreenPluginManager *)self _pluginForPluginController:a3];
  if (v4)
  {
    v5 = MEMORY[0x277D67958];
    v8 = v4;
    v6 = [v4 name];
    v7 = [v5 contextWithName:v6];

    [(SBLockScreenPluginManager *)self _handlePluginDisabled:v8 withContext:v7];
    v4 = v8;
  }
}

- (void)pluginController:(id)a3 updateAppearance:(id)a4
{
  v5 = a3;
  [(SBLockScreenPluginManager *)self _refreshLockScreenPlugin];
  displayedPlugin = self->_displayedPlugin;

  if (displayedPlugin == v5)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained pluginManager:self displayedPluginDidUpdateAppearance:self->_displayedPlugin];
  }
}

- (BOOL)pluginController:(id)a3 sendAction:(id)a4
{
  v6 = a4;
  v7 = [(SBLockScreenPluginManager *)self _pluginForPluginController:a3];
  v8 = v7;
  v9 = 0;
  if (v6 && v7)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v9 = [WeakRetained pluginManager:self plugin:v8 handleAction:v6];
  }

  return v9;
}

- (id)succinctDescription
{
  v2 = [(SBLockScreenPluginManager *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = [v3 appendClass:objc_opt_class() withName:@"delegateClass"];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBLockScreenPluginManager *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = a3;
  v5 = [(SBLockScreenPluginManager *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __67__SBLockScreenPluginManager_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_2783A92D8;
  v6 = v5;
  v10 = v6;
  v11 = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:v4 block:v9];

  v7 = v6;
  return v6;
}

uint64_t __67__SBLockScreenPluginManager_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277CF0C00];
  v3 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 32));
  v5 = [v2 succinctDescriptionForObject:WeakRetained];
  v6 = [v3 appendObject:v5 withName:@"delegate" skipIfNil:1];

  v7 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 16) withName:@"activePlugin" skipIfNil:1];
  v8 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 24) withName:@"displayedPlugin" skipIfNil:1];
  v9 = *(a1 + 32);
  v10 = *(*(a1 + 40) + 8);

  return [v9 appendDictionarySection:v10 withName:@"plugins" skipIfEmpty:1];
}

- (SBLockScreenPluginManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)handleEvent:(int)a1 .cold.1(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_ERROR, "[SBLockScreenPluginManager] Ignoring event %d because plugins are disabled.", v2, 8u);
}

- (void)_loadLockScreenPluginWithContext:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_5_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_3(&dword_21ED4E000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:SBLockScreenPluginContextClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_loadLockScreenPluginWithContext:(char *)a1 .cold.2(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_5_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_3(&dword_21ED4E000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_handlePluginDisabled:(char *)a1 withContext:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_5_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_3(&dword_21ED4E000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:SBLockScreenPluginContextClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_handlePluginDisabled:(char *)a1 withContext:.cold.2(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_5_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_3(&dword_21ED4E000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end