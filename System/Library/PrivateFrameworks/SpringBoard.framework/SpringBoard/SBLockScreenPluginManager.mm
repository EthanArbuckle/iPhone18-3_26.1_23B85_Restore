@interface SBLockScreenPluginManager
- (BOOL)_handlePluginDisabled:(id)disabled withContext:(id)context;
- (BOOL)_loadLockScreenPluginWithContext:(id)context;
- (BOOL)_sendEventToPlugin:(id)plugin;
- (BOOL)disableLockScreenPluginWithContext:(id)context;
- (BOOL)enableLockScreenPluginWithContext:(id)context;
- (BOOL)handleEvent:(int64_t)event;
- (BOOL)pluginController:(id)controller sendAction:(id)action;
- (SBLockScreenPluginManager)init;
- (SBLockScreenPluginManagerDelegate)delegate;
- (id)_highestPriorityPluginIgnoringViewDisplay:(BOOL)display;
- (id)_pluginForPluginController:(id)controller;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)lockScreenActionContext;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (void)_handleUIRelock;
- (void)_refreshLockScreenPlugin;
- (void)_setActivePlugin:(id)plugin displayedPlugin:(id)displayedPlugin;
- (void)activatePluginController:(id)controller;
- (void)deactivatePluginController:(id)controller;
- (void)dealloc;
- (void)pluginController:(id)controller updateAppearance:(id)appearance;
- (void)setDelegate:(id)delegate;
- (void)setEnabled:(BOOL)enabled;
- (void)settings:(id)settings changedValueForKey:(id)key;
@end

@implementation SBLockScreenPluginManager

- (id)lockScreenActionContext
{
  v3 = +[SBLockScreenActionContextFactory sharedInstance];
  activePlugin = [(SBLockScreenPluginManager *)self activePlugin];
  v5 = [v3 lockScreenActionContextForPlugin:activePlugin];

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

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__handleUIRelock name:@"SBLockScreenUIRelockedNotification" object:0];
    rootSettings = [MEMORY[0x277D02C20] rootSettings];
    testPluginSettings = [rootSettings testPluginSettings];
    testSettings = v2->_testSettings;
    v2->_testSettings = testPluginSettings;

    [(CSLockScreenTestPluginSettings *)v2->_testSettings addKeyObserver:v2];
  }

  return v2;
}

- (void)dealloc
{
  [(NSMutableDictionary *)self->_plugins enumerateKeysAndObjectsUsingBlock:&__block_literal_global_286];
  [(CSLockScreenTestPluginSettings *)self->_testSettings removeKeyObserver:self];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

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

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    v5 = obj;
  }
}

- (void)setEnabled:(BOOL)enabled
{
  if (self->_enabled != enabled)
  {
    self->_enabled = enabled;
    [(SBLockScreenPluginManager *)self _refreshLockScreenPlugin];
  }
}

- (BOOL)enableLockScreenPluginWithContext:(id)context
{
  contextCopy = context;
  v5 = [(SBLockScreenPluginManager *)self _loadLockScreenPluginWithContext:contextCopy];
  if (v5)
  {
    plugins = self->_plugins;
    name = [contextCopy name];
    v8 = [(NSMutableDictionary *)plugins objectForKey:name];

    auxiliaryAnimation = [contextCopy auxiliaryAnimation];
    [v8 setAuxiliaryActivationAnimationBlock:auxiliaryAnimation];

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained pluginManager:self didLoadPlugin:v8];

    [(SBLockScreenPluginManager *)self _refreshLockScreenPlugin];
  }

  return v5;
}

- (BOOL)disableLockScreenPluginWithContext:(id)context
{
  contextCopy = context;
  name = [contextCopy name];
  if (name)
  {
    v6 = [(NSMutableDictionary *)self->_plugins objectForKey:name];
    v7 = [(SBLockScreenPluginManager *)self _handlePluginDisabled:v6 withContext:contextCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)handleEvent:(int64_t)event
{
  if ([(SBLockScreenPluginManager *)self isEnabled])
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __41__SBLockScreenPluginManager_handleEvent___block_invoke;
    v7[3] = &__block_descriptor_40_e28_B16__0__SBLockScreenPlugin_8l;
    v7[4] = event;
    return [(SBLockScreenPluginManager *)self _sendEventToPlugin:v7];
  }

  else
  {
    v6 = SBLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(SBLockScreenPluginManager *)event handleEvent:v6];
    }

    return 0;
  }
}

- (BOOL)_sendEventToPlugin:(id)plugin
{
  pluginCopy = plugin;
  if ((pluginCopy[2])(pluginCopy, self->_activePlugin))
  {
    v5 = 1;
  }

  else if (self->_activePlugin == self->_displayedPlugin)
  {
    v5 = 0;
  }

  else
  {
    v5 = pluginCopy[2](pluginCopy);
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

- (id)_highestPriorityPluginIgnoringViewDisplay:(BOOL)display
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
  allValues = [(NSMutableDictionary *)self->_plugins allValues];
  v6 = [allValues countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (!v6)
  {
    v8 = 0;
    goto LABEL_18;
  }

  v7 = v6;
  v8 = 0;
  v9 = *v19;
  pluginPriority2 = 0x8000000000000000;
  do
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v19 != v9)
      {
        objc_enumerationMutation(allValues);
      }

      v12 = *(*(&v18 + 1) + 8 * i);
      pluginPriority = [v12 pluginPriority];
      if (pluginPriority < pluginPriority2 || display)
      {
        if (pluginPriority < pluginPriority2)
        {
          continue;
        }

LABEL_12:
        v16 = v12;

        pluginPriority2 = [v16 pluginPriority];
        v8 = v16;
        continue;
      }

      appearance = [v12 appearance];
      isHidden = [appearance isHidden];

      if ((isHidden & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    v7 = [allValues countByEnumeratingWithState:&v18 objects:v22 count:16];
  }

  while (v7);
LABEL_18:

LABEL_19:

  return v8;
}

- (void)_setActivePlugin:(id)plugin displayedPlugin:(id)displayedPlugin
{
  pluginCopy = plugin;
  displayedPluginCopy = displayedPlugin;
  activePlugin = self->_activePlugin;
  if (activePlugin != pluginCopy)
  {
    objc_storeStrong(&self->_activePlugin, plugin);
  }

  displayedPlugin = self->_displayedPlugin;
  if (displayedPlugin == displayedPluginCopy)
  {
    displayedPluginCopy2 = 0;
  }

  else
  {
    displayedPluginCopy2 = displayedPlugin;
    objc_storeStrong(&self->_displayedPlugin, displayedPlugin);
    viewController = [(SBLockScreenPlugin *)displayedPluginCopy2 viewController];
    viewIfLoaded = [viewController viewIfLoaded];

    if (viewIfLoaded)
    {
      [viewIfLoaded removeFromSuperview];
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (activePlugin != pluginCopy)
  {
    [WeakRetained pluginManager:self activePluginDidChange:self->_activePlugin];
  }

  if (displayedPlugin != displayedPluginCopy)
  {
    [WeakRetained pluginManager:self displayedPluginDidChangeFromPlugin:displayedPluginCopy2 toPlugin:self->_displayedPlugin];
  }
}

- (BOOL)_loadLockScreenPluginWithContext:(id)context
{
  contextCopy = context;
  NSClassFromString(&cfstr_Sblockscreenpl_3.isa);
  if (!contextCopy)
  {
    [SBLockScreenPluginManager _loadLockScreenPluginWithContext:a2];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [SBLockScreenPluginManager _loadLockScreenPluginWithContext:a2];
  }

  name = [contextCopy name];
  v7 = [(NSMutableDictionary *)self->_plugins objectForKey:name];

  if (v7)
  {
    LOBYTE(v8) = 0;
  }

  else
  {
    v9 = [SBLockScreenPlugin pluginWithName:name activationContext:contextCopy];
    v8 = v9 != 0;
    if (v9)
    {
      [(NSMutableDictionary *)self->_plugins setObject:v9 forKey:name];
      [v9 pluginWillActivateWithContext:contextCopy];
      [v9 setPluginAgent:self];
      observer = [contextCopy observer];

      if (observer)
      {
        observer2 = [contextCopy observer];
        [v9 addLifecycleObserver:observer2];
      }
    }
  }

  return v8;
}

- (BOOL)_handlePluginDisabled:(id)disabled withContext:(id)context
{
  disabledCopy = disabled;
  contextCopy = context;
  NSClassFromString(&cfstr_Sblockscreenpl_3.isa);
  if (!contextCopy)
  {
    [SBLockScreenPluginManager _handlePluginDisabled:a2 withContext:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [SBLockScreenPluginManager _handlePluginDisabled:a2 withContext:?];
  }

  if (disabledCopy && (v9 = self->_plugins, [disabledCopy name], v10 = objc_claimAutoreleasedReturnValue(), -[NSMutableDictionary objectForKey:](v9, "objectForKey:", v10), v11 = objc_claimAutoreleasedReturnValue(), v11, v10, v11 == disabledCopy))
  {
    plugins = self->_plugins;
    name = [disabledCopy name];
    [(NSMutableDictionary *)plugins removeObjectForKey:name];

    auxiliaryAnimation = [contextCopy auxiliaryAnimation];
    [disabledCopy setAuxiliaryDeactivationAnimationBlock:auxiliaryAnimation];

    [(SBLockScreenPluginManager *)self _refreshLockScreenPlugin];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"SBLockScreenPluginWasDisabledNotification" object:disabledCopy];

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained pluginManager:self willUnloadPlugin:disabledCopy];

    [disabledCopy setPluginAgent:0];
    [disabledCopy pluginDidDeactivateWithContext:contextCopy];
    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)settings:(id)settings changedValueForKey:(id)key
{
  v5 = [(CSLockScreenTestPluginSettings *)self->_testSettings enablePlugin:settings];
  v6 = [MEMORY[0x277D67958] contextWithName:@"LockScreenTestPlugin"];
  if (v5)
  {
    [(SBLockScreenPluginManager *)self enableLockScreenPluginWithContext:v6];
  }

  else
  {
    [(SBLockScreenPluginManager *)self disableLockScreenPluginWithContext:v6];
  }

  enableLostModePlugin = [(CSLockScreenTestPluginSettings *)self->_testSettings enableLostModePlugin];
  v8 = [MEMORY[0x277D67958] contextWithName:@"FindMyiPhoneLockScreen"];
  if (enableLostModePlugin)
  {
    [(SBLockScreenPluginManager *)self enableLockScreenPluginWithContext:v8];
  }

  else
  {
    [(SBLockScreenPluginManager *)self disableLockScreenPluginWithContext:v8];
  }
}

- (id)_pluginForPluginController:(id)controller
{
  controllerCopy = controller;
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
  v6 = controllerCopy;
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

- (void)activatePluginController:(id)controller
{
  v4 = [(SBLockScreenPluginManager *)self _pluginForPluginController:controller];
  if (v4)
  {
    v5 = v4;
    [(SBLockScreenPluginManager *)self _refreshLockScreenPlugin];
    v4 = v5;
  }
}

- (void)deactivatePluginController:(id)controller
{
  v4 = [(SBLockScreenPluginManager *)self _pluginForPluginController:controller];
  if (v4)
  {
    v5 = MEMORY[0x277D67958];
    v8 = v4;
    name = [v4 name];
    v7 = [v5 contextWithName:name];

    [(SBLockScreenPluginManager *)self _handlePluginDisabled:v8 withContext:v7];
    v4 = v8;
  }
}

- (void)pluginController:(id)controller updateAppearance:(id)appearance
{
  controllerCopy = controller;
  [(SBLockScreenPluginManager *)self _refreshLockScreenPlugin];
  displayedPlugin = self->_displayedPlugin;

  if (displayedPlugin == controllerCopy)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained pluginManager:self displayedPluginDidUpdateAppearance:self->_displayedPlugin];
  }
}

- (BOOL)pluginController:(id)controller sendAction:(id)action
{
  actionCopy = action;
  v7 = [(SBLockScreenPluginManager *)self _pluginForPluginController:controller];
  v8 = v7;
  v9 = 0;
  if (actionCopy && v7)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v9 = [WeakRetained pluginManager:self plugin:v8 handleAction:actionCopy];
  }

  return v9;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBLockScreenPluginManager *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = [v3 appendClass:objc_opt_class() withName:@"delegateClass"];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBLockScreenPluginManager *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  succinctDescriptionBuilder = [(SBLockScreenPluginManager *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __67__SBLockScreenPluginManager_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_2783A92D8;
  v6 = succinctDescriptionBuilder;
  v10 = v6;
  selfCopy = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v9];

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