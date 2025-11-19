@interface SBLockScreenPlugin
+ (SBLockScreenPlugin)pluginWithName:(id)a3 activationContext:(id)a4;
+ (id)_pluginBundleForPluginWithName:(id)a3;
- (BOOL)handleDashBoardEvent:(id)a3;
- (BOOL)hidesLockScreenComplications;
- (BOOL)isCapabilityRestricted:(unint64_t)a3;
- (BOOL)isElementHidden:(int64_t)a3;
- (BOOL)pluginController:(id)a3 sendAction:(id)a4;
- (BOOL)pluginHandleEvent:(int64_t)a3;
- (CSAppearance)coverSheetAppearance;
- (CSBehavior)coverSheetBehavior;
- (SBLockScreenPlugin)initWithBundle:(id)a3 activationContext:(id)a4;
- (SBLockScreenPluginAction)pluginUnlockAction;
- (SBLockScreenPluginAgent)pluginAgent;
- (SBLockScreenPluginDelegate)delegate;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)overrideForElement:(int64_t)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (void)_updateAppearance:(id)a3;
- (void)activatePluginController:(id)a3;
- (void)addLifecycleObserver:(id)a3;
- (void)deactivatePluginController:(id)a3;
- (void)dealloc;
- (void)enumerateLifecycleObserversUsingBlock:(id)a3;
- (void)pluginController:(id)a3 updateAppearance:(id)a4;
- (void)pluginDidDeactivateWithContext:(id)a3;
- (void)pluginWillActivateWithContext:(id)a3;
- (void)processDidExit:(id)a3;
- (void)removeLifecycleObserver:(id)a3;
@end

@implementation SBLockScreenPlugin

+ (id)_pluginBundleForPluginWithName:(id)a3
{
  v3 = a3;
  v4 = [v3 pathComponents];
  v5 = [v4 count];

  if (v5 == 1)
  {
    v6 = [MEMORY[0x277CF0CB0] mainManager];
    v7 = [v6 pluginBundleForName:v3 type:@"lockbundle"];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (SBLockScreenPlugin)pluginWithName:(id)a3 activationContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [a1 _pluginBundleForPluginWithName:v6];
  if ([v8 loadPlugin])
  {
    v9 = [[a1 alloc] initWithBundle:v8 activationContext:v7];
  }

  else
  {
    v10 = SBLogCommon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [SBLockScreenPlugin pluginWithName:v6 activationContext:v10];
    }

    v9 = 0;
  }

  return v9;
}

- (SBLockScreenPlugin)initWithBundle:(id)a3 activationContext:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(SBLockScreenPlugin *)self init];
  if (v9)
  {
    v10 = v9;
    objc_storeStrong(&v9->_bundle, a3);
    v11 = [v7 name];
    bundleName = v10->_bundleName;
    v10->_bundleName = v11;

    v13 = [v8 process];
    process = v10->_process;
    v10->_process = v13;

    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __55__SBLockScreenPlugin_initWithBundle_activationContext___block_invoke;
    v19[3] = &unk_2783B15F0;
    v15 = v10;
    v20 = v15;
    if ([v7 loadPlugin:v19])
    {
      [(FBProcess *)v10->_process addObserver:v15];
    }

    else
    {
      controller = v15->_controller;
      v15->_controller = 0;

      v17 = SBLogCommon();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [SBLockScreenPlugin initWithBundle:v7 activationContext:v17];
      }

      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

uint64_t __55__SBLockScreenPlugin_initWithBundle_activationContext___block_invoke(uint64_t a1, void *a2)
{
  if ([a2 conformsToProtocol:&unk_2835FD408] & 1) != 0 || (objc_opt_respondsToSelector())
  {
    v4 = [a2 rootViewController];
  }

  else
  {
    if (![a2 conformsToProtocol:&unk_283426F80])
    {
      v11 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:@"Principal class does not conform to expected protocol" userInfo:0];
      objc_exception_throw(v11);
    }

    v4 = objc_alloc_init(a2);
  }

  v5 = *(a1 + 32);
  v6 = *(v5 + 32);
  *(v5 + 32) = v4;

  v7 = [*(*(a1 + 32) + 32) pluginViewController];
  v8 = [v7 view];

  v9 = *(*(a1 + 32) + 32);

  return [v9 setPluginAgent:?];
}

- (void)dealloc
{
  [(FBProcess *)self->_process removeObserver:self];
  [(SBLockScreenPluginController *)self->_controller setPluginAgent:0];
  v3.receiver = self;
  v3.super_class = SBLockScreenPlugin;
  [(SBLockScreenPlugin *)&v3 dealloc];
}

- (BOOL)isElementHidden:(int64_t)a3
{
  v3 = [(SBLockScreenPlugin *)self overrideForElement:a3];
  v4 = [v3 isHidden];

  return v4;
}

- (id)overrideForElement:(int64_t)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [(SBLockScreenPlugin *)self appearance];
  v5 = [v4 elementOverrides];

  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if ([v10 element] == a3)
        {
          v11 = v10;
          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  return v11;
}

- (BOOL)isCapabilityRestricted:(unint64_t)a3
{
  v4 = [(SBLockScreenPlugin *)self appearance];
  LOBYTE(a3) = (a3 & ~[v4 restrictedCapabilities]) == 0;

  return a3;
}

- (CSAppearance)coverSheetAppearance
{
  v75 = *MEMORY[0x277D85DE8];
  if (([(SBLockScreenPluginAppearanceContext *)self->_appearance isHidden]& 1) != 0)
  {
    v3 = 0;
    goto LABEL_41;
  }

  v4 = MEMORY[0x277D02B98];
  v5 = [(SBLockScreenPlugin *)self name];
  v69 = [v4 appearanceWithIdentifier:v5];

  v6 = [MEMORY[0x277CBEB58] set];
  v7 = [(SBLockScreenPlugin *)self appearance];
  v8 = [v7 backgroundStyle];

  if ((v8 - 1) <= 2)
  {
    v9 = qword_2783B1638[v8 - 1];
    v10 = objc_opt_new();
    v11 = [v10 priority:30];
    v12 = [v11 style:v9];
    [v6 addObject:v12];
  }

  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v13 = [(SBLockScreenPluginAppearanceContext *)self->_appearance elementOverrides];
  v14 = [v13 countByEnumeratingWithState:&v70 objects:v74 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v71;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v71 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v70 + 1) + 8 * i);
        v19 = [v18 element];
        if (v19 == 3)
        {
          v20 = [objc_alloc(MEMORY[0x277D65EA8]) initWithString:0 accessoryView:0];
          v21 = [MEMORY[0x277D02BC8] dateView];
          if ([v18 isHidden])
          {
            [v20 setString:&stru_283094718];
            [v21 setView:v20];
          }

          else
          {
            v24 = [v18 text];
            if (v24)
            {
              [v20 setString:v24];
              v25 = v20;
            }

            else
            {
              v25 = 0;
            }

            [v21 setView:v25];
          }

          [v21 setPriority:30];
          [v6 addObject:v21];
LABEL_22:

          goto LABEL_23;
        }

        if (v19 != 2)
        {
          if (v19 != 1)
          {
            continue;
          }

          v20 = [MEMORY[0x277D02BC8] statusBar];
          v21 = [v20 priority:30];
          v22 = [v21 hidden:{objc_msgSend(v18, "isHidden")}];
          [v6 addObject:v22];

          goto LABEL_22;
        }

        v23 = [MEMORY[0x277D02BC8] dateView];
        v20 = [v23 priority:30];

        [v20 setHidden:{objc_msgSend(v18, "isHidden")}];
        [v6 addObject:v20];
LABEL_23:
      }

      v15 = [v13 countByEnumeratingWithState:&v70 objects:v74 count:16];
    }

    while (v15);
  }

  v3 = v69;
  if ([v68[6] presentationStyle] == 1)
  {
    v26 = objc_opt_class();
    v27 = [v68 viewController];
    v28 = [v27 view];
    v29 = SBSafeCast(v26, v28);

    if (v29)
    {
      v30 = [v29 showsDateView];
      v31 = objc_opt_new();
      v32 = v31;
      if (v30)
      {
        v33 = [v31 hidden:0];
        v34 = v33;
        v35 = 1;
      }

      else
      {
        v33 = [v31 hidden:1];
        v34 = v33;
        v35 = 0;
      }

      v36 = [v33 vibrantAndCentered:v35];
      v37 = [v36 priority:30];
      [v6 addObject:v37];
    }

    else
    {
      v32 = [MEMORY[0x277D02BC8] dateView];
      v34 = [v32 hidden:1];
      v36 = [v34 priority:30];
      [v6 addObject:v36];
    }

    v38 = [MEMORY[0x277D02BC8] backgroundContent];
    v39 = [v38 priority:30];
    v40 = [v39 hidden:1];
    [v6 addObject:v40];

    v41 = [MEMORY[0x277D02BC8] pageContent];
    v42 = [v41 priority:30];
    v43 = [v42 hidden:1];
    [v6 addObject:v43];

    v44 = [MEMORY[0x277D02BC8] pageControl];
    v45 = [v44 priority:30];
    v46 = [v45 hidden:1];
    [v6 addObject:v46];

    v47 = [MEMORY[0x277D02BC8] footerCallToActionLabel];
    v48 = [v47 priority:30];
    v49 = [v48 hidden:1];
    [v6 addObject:v49];

    v50 = [MEMORY[0x277D02BC8] footerStatusLabel];
    v51 = [v50 priority:30];
    v52 = [v51 hidden:1];
    [v6 addObject:v52];

    v53 = [MEMORY[0x277D02BC8] proudLock];
    v54 = [v53 priority:30];
    v55 = [v54 hidden:1];
    [v6 addObject:v55];

    v56 = [MEMORY[0x277D02BC8] controlCenterGrabber];
    v57 = [v56 priority:30];
    v58 = [v57 hidden:1];
    [v6 addObject:v58];
  }

  [v69 setComponents:v6];
  v59 = [v68 appearance];
  v60 = [v59 backgroundStyle];
  if ((v60 - 1) >= 2)
  {
    if (v60 != 3)
    {
      v66 = 0;
      goto LABEL_40;
    }

    v65 = objc_alloc(MEMORY[0x277D760A8]);
    v62 = [MEMORY[0x277D75348] blackColor];
    v63 = v65;
    v64 = 2;
  }

  else
  {
    v61 = objc_alloc(MEMORY[0x277D760A8]);
    v62 = [MEMORY[0x277D75348] whiteColor];
    v63 = v61;
    v64 = 1;
  }

  v66 = [v63 initWithStyle:v64 contentColor:v62];

LABEL_40:
  [v69 setLegibilitySettings:v66];

LABEL_41:

  return v3;
}

- (CSBehavior)coverSheetBehavior
{
  v3 = [MEMORY[0x277D02BB0] behavior];
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v4 = [(SBLockScreenPluginAppearanceContext *)self->_appearance restrictedCapabilities];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v13 = __40__SBLockScreenPlugin_coverSheetBehavior__block_invoke;
  v14 = &unk_2783B1618;
  v15 = &v16;
  v5 = v12;
  if (v4)
  {
    v6 = 0;
    v20 = 0;
    v7 = vcnt_s8(v4);
    v7.i16[0] = vaddlv_u8(v7);
    v8 = v7.i32[0];
    do
    {
      if (((1 << v6) & *&v4) != 0)
      {
        v13(v5);
        if (v20)
        {
          break;
        }

        --v8;
      }

      if (v6 > 0x3E)
      {
        break;
      }

      ++v6;
    }

    while (v8 > 0);
  }

  [v3 setRestrictedCapabilities:v17[3]];
  v9 = [(SBLockScreenPluginAppearanceContext *)self->_appearance notificationBehavior];
  if (v9 >= 3)
  {
    v10 = 0;
  }

  else
  {
    v10 = qword_21F8A64D8[v9];
  }

  [v3 setNotificationBehavior:v10];
  [v3 setIdleTimerDuration:0];
  [v3 setIdleTimerMode:1];
  [v3 setIdleWarnMode:1];
  _Block_object_dispose(&v16, 8);

  return v3;
}

void *__40__SBLockScreenPlugin_coverSheetBehavior__block_invoke(void *result, uint64_t a2)
{
  if (a2 <= 31)
  {
    if (a2 > 7)
    {
      if (a2 == 8)
      {
        result += 4;
        v2 = 56;
      }

      else
      {
        if (a2 != 16)
        {
          return result;
        }

        result += 4;
        v2 = 2048;
      }
    }

    else if (a2 == 2)
    {
      result += 4;
      v2 = 2;
    }

    else
    {
      if (a2 != 4)
      {
        return result;
      }

      result += 4;
      v2 = 4;
    }
  }

  else if (a2 <= 127)
  {
    if (a2 == 32)
    {
      v3 = result[4];
      result += 4;
      *(*(v3 + 8) + 24) |= 8uLL;
      v2 = 16;
    }

    else
    {
      if (a2 != 64)
      {
        return result;
      }

      result += 4;
      v2 = 512;
    }
  }

  else
  {
    switch(a2)
    {
      case 128:
        result += 4;
        v2 = 64;
        break;
      case 256:
        result += 4;
        v2 = 128;
        break;
      case 512:
        result += 4;
        v2 = 0x4000;
        break;
      default:
        return result;
    }
  }

  *(*(*result + 8) + 24) |= v2;
  return result;
}

- (BOOL)handleDashBoardEvent:(id)a3
{
  v4 = a3;
  v5 = [v4 type] - 27;
  if (v5 <= 6 && ((0x7Bu >> v5) & 1) != 0 && [(SBLockScreenPlugin *)self pluginHandleEvent:qword_21F8A64F0[v5]])
  {
    v6 = [v4 isConsumable];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_updateAppearance:(id)a3
{
  v4 = MEMORY[0x277D67950];
  v5 = a3;
  v6 = [[v4 alloc] initWithAppearance:v5];

  appearance = self->_appearance;
  self->_appearance = v6;
}

- (void)pluginWillActivateWithContext:(id)a3
{
  v6 = a3;
  if (objc_opt_respondsToSelector())
  {
    v4 = [v6 copy];
    [v4 setAuxiliaryAnimation:0];
    [(SBLockScreenPluginController *)self->_controller pluginWillActivateWithContext:v4];
  }

  v5 = [(SBLockScreenPluginController *)self->_controller pluginAppearance];
  [(SBLockScreenPlugin *)self _updateAppearance:v5];
}

- (void)pluginDidDeactivateWithContext:(id)a3
{
  v5 = a3;
  if (objc_opt_respondsToSelector())
  {
    v4 = [v5 copy];
    [v4 setAuxiliaryAnimation:0];
    [(SBLockScreenPluginController *)self->_controller pluginDidDeactivateWithContext:v4];
  }
}

- (SBLockScreenPluginAction)pluginUnlockAction
{
  if (objc_opt_respondsToSelector())
  {
    v3 = [(SBLockScreenPluginController *)self->_controller pluginUnlockAction];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)pluginHandleEvent:(int64_t)a3
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  controller = self->_controller;

  return [(SBLockScreenPluginController *)controller pluginHandleEvent:a3];
}

- (void)addLifecycleObserver:(id)a3
{
  v4 = a3;
  lifecycleObservers = self->_lifecycleObservers;
  v8 = v4;
  if (!lifecycleObservers)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_lifecycleObservers;
    self->_lifecycleObservers = v6;

    v4 = v8;
    lifecycleObservers = self->_lifecycleObservers;
  }

  [(NSMutableArray *)lifecycleObservers addObject:v4];
}

- (void)removeLifecycleObserver:(id)a3
{
  [(NSMutableArray *)self->_lifecycleObservers removeObject:a3];
  if (![(NSMutableArray *)self->_lifecycleObservers count])
  {
    lifecycleObservers = self->_lifecycleObservers;
    self->_lifecycleObservers = 0;
  }
}

- (void)enumerateLifecycleObserversUsingBlock:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(NSMutableArray *)self->_lifecycleObservers copy];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v4[2](v4, *(*(&v11 + 1) + 8 * v10++));
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (BOOL)hidesLockScreenComplications
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  controller = self->_controller;

  return [(SBLockScreenPluginController *)controller hidesLockScreenComplications];
}

- (void)activatePluginController:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_agent);
  [WeakRetained activatePluginController:self];
}

- (void)deactivatePluginController:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_agent);
  [WeakRetained deactivatePluginController:self];
}

- (void)pluginController:(id)a3 updateAppearance:(id)a4
{
  [(SBLockScreenPlugin *)self _updateAppearance:a4];
  WeakRetained = objc_loadWeakRetained(&self->_agent);
  v6 = [(SBLockScreenPlugin *)self pluginAppearance];
  [WeakRetained pluginController:self updateAppearance:v6];

  v7 = objc_loadWeakRetained(&self->_delegate);
  [v7 pluginAppearanceDidChange:self];
}

- (BOOL)pluginController:(id)a3 sendAction:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_agent);
  LOBYTE(self) = [WeakRetained pluginController:self sendAction:v5];

  return self;
}

- (void)processDidExit:(id)a3
{
  [a3 removeObserver:self];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__SBLockScreenPlugin_processDidExit___block_invoke;
  block[3] = &unk_2783A8C18;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __37__SBLockScreenPlugin_processDidExit___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  *(v2 + 24) = 0;

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 40));
  [WeakRetained deactivatePluginController:*(a1 + 32)];
}

- (id)succinctDescription
{
  v2 = [(SBLockScreenPlugin *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendObject:self->_bundleName withName:@"name"];
  v5 = [(BSPluginBundle *)self->_bundle identifier];
  v6 = [v3 appendObject:v5 withName:@"identifier"];

  v7 = [v3 appendClass:-[BSPluginBundle principalClass](self->_bundle withName:{"principalClass"), @"principalClass"}];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBLockScreenPlugin *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = a3;
  v5 = [(SBLockScreenPlugin *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __60__SBLockScreenPlugin_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_2783A92D8;
  v6 = v5;
  v10 = v6;
  v11 = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:v4 block:v9];

  v7 = v6;
  return v6;
}

- (SBLockScreenPluginDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (SBLockScreenPluginAgent)pluginAgent
{
  WeakRetained = objc_loadWeakRetained(&self->_agent);

  return WeakRetained;
}

+ (void)pluginWithName:(uint64_t)a1 activationContext:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_ERROR, "[SBLockScreenPlugin] No plugin bundle found named %@", &v2, 0xCu);
}

- (void)initWithBundle:(uint64_t)a1 activationContext:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_ERROR, "[SBLockScreenPlugin] No root view controller was returned from %@", &v2, 0xCu);
}

@end