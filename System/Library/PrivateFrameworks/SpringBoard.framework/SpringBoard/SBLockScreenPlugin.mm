@interface SBLockScreenPlugin
+ (SBLockScreenPlugin)pluginWithName:(id)name activationContext:(id)context;
+ (id)_pluginBundleForPluginWithName:(id)name;
- (BOOL)handleDashBoardEvent:(id)event;
- (BOOL)hidesLockScreenComplications;
- (BOOL)isCapabilityRestricted:(unint64_t)restricted;
- (BOOL)isElementHidden:(int64_t)hidden;
- (BOOL)pluginController:(id)controller sendAction:(id)action;
- (BOOL)pluginHandleEvent:(int64_t)event;
- (CSAppearance)coverSheetAppearance;
- (CSBehavior)coverSheetBehavior;
- (SBLockScreenPlugin)initWithBundle:(id)bundle activationContext:(id)context;
- (SBLockScreenPluginAction)pluginUnlockAction;
- (SBLockScreenPluginAgent)pluginAgent;
- (SBLockScreenPluginDelegate)delegate;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)overrideForElement:(int64_t)element;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (void)_updateAppearance:(id)appearance;
- (void)activatePluginController:(id)controller;
- (void)addLifecycleObserver:(id)observer;
- (void)deactivatePluginController:(id)controller;
- (void)dealloc;
- (void)enumerateLifecycleObserversUsingBlock:(id)block;
- (void)pluginController:(id)controller updateAppearance:(id)appearance;
- (void)pluginDidDeactivateWithContext:(id)context;
- (void)pluginWillActivateWithContext:(id)context;
- (void)processDidExit:(id)exit;
- (void)removeLifecycleObserver:(id)observer;
@end

@implementation SBLockScreenPlugin

+ (id)_pluginBundleForPluginWithName:(id)name
{
  nameCopy = name;
  pathComponents = [nameCopy pathComponents];
  v5 = [pathComponents count];

  if (v5 == 1)
  {
    mainManager = [MEMORY[0x277CF0CB0] mainManager];
    v7 = [mainManager pluginBundleForName:nameCopy type:@"lockbundle"];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (SBLockScreenPlugin)pluginWithName:(id)name activationContext:(id)context
{
  nameCopy = name;
  contextCopy = context;
  v8 = [self _pluginBundleForPluginWithName:nameCopy];
  if ([v8 loadPlugin])
  {
    v9 = [[self alloc] initWithBundle:v8 activationContext:contextCopy];
  }

  else
  {
    v10 = SBLogCommon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [SBLockScreenPlugin pluginWithName:nameCopy activationContext:v10];
    }

    v9 = 0;
  }

  return v9;
}

- (SBLockScreenPlugin)initWithBundle:(id)bundle activationContext:(id)context
{
  bundleCopy = bundle;
  contextCopy = context;
  v9 = [(SBLockScreenPlugin *)self init];
  if (v9)
  {
    v10 = v9;
    objc_storeStrong(&v9->_bundle, bundle);
    name = [bundleCopy name];
    bundleName = v10->_bundleName;
    v10->_bundleName = name;

    process = [contextCopy process];
    process = v10->_process;
    v10->_process = process;

    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __55__SBLockScreenPlugin_initWithBundle_activationContext___block_invoke;
    v19[3] = &unk_2783B15F0;
    v15 = v10;
    v20 = v15;
    if ([bundleCopy loadPlugin:v19])
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
        [SBLockScreenPlugin initWithBundle:bundleCopy activationContext:v17];
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

- (BOOL)isElementHidden:(int64_t)hidden
{
  v3 = [(SBLockScreenPlugin *)self overrideForElement:hidden];
  isHidden = [v3 isHidden];

  return isHidden;
}

- (id)overrideForElement:(int64_t)element
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  appearance = [(SBLockScreenPlugin *)self appearance];
  elementOverrides = [appearance elementOverrides];

  v6 = [elementOverrides countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(elementOverrides);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if ([v10 element] == element)
        {
          v11 = v10;
          goto LABEL_11;
        }
      }

      v7 = [elementOverrides countByEnumeratingWithState:&v13 objects:v17 count:16];
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

- (BOOL)isCapabilityRestricted:(unint64_t)restricted
{
  appearance = [(SBLockScreenPlugin *)self appearance];
  LOBYTE(restricted) = (restricted & ~[appearance restrictedCapabilities]) == 0;

  return restricted;
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
  name = [(SBLockScreenPlugin *)self name];
  v69 = [v4 appearanceWithIdentifier:name];

  v6 = [MEMORY[0x277CBEB58] set];
  appearance = [(SBLockScreenPlugin *)self appearance];
  backgroundStyle = [appearance backgroundStyle];

  if ((backgroundStyle - 1) <= 2)
  {
    v9 = qword_2783B1638[backgroundStyle - 1];
    v10 = objc_opt_new();
    v11 = [v10 priority:30];
    v12 = [v11 style:v9];
    [v6 addObject:v12];
  }

  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  elementOverrides = [(SBLockScreenPluginAppearanceContext *)self->_appearance elementOverrides];
  v14 = [elementOverrides countByEnumeratingWithState:&v70 objects:v74 count:16];
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
          objc_enumerationMutation(elementOverrides);
        }

        v18 = *(*(&v70 + 1) + 8 * i);
        element = [v18 element];
        if (element == 3)
        {
          statusBar = [objc_alloc(MEMORY[0x277D65EA8]) initWithString:0 accessoryView:0];
          dateView = [MEMORY[0x277D02BC8] dateView];
          if ([v18 isHidden])
          {
            [statusBar setString:&stru_283094718];
            [dateView setView:statusBar];
          }

          else
          {
            text = [v18 text];
            if (text)
            {
              [statusBar setString:text];
              v25 = statusBar;
            }

            else
            {
              v25 = 0;
            }

            [dateView setView:v25];
          }

          [dateView setPriority:30];
          [v6 addObject:dateView];
LABEL_22:

          goto LABEL_23;
        }

        if (element != 2)
        {
          if (element != 1)
          {
            continue;
          }

          statusBar = [MEMORY[0x277D02BC8] statusBar];
          dateView = [statusBar priority:30];
          v22 = [dateView hidden:{objc_msgSend(v18, "isHidden")}];
          [v6 addObject:v22];

          goto LABEL_22;
        }

        dateView2 = [MEMORY[0x277D02BC8] dateView];
        statusBar = [dateView2 priority:30];

        [statusBar setHidden:{objc_msgSend(v18, "isHidden")}];
        [v6 addObject:statusBar];
LABEL_23:
      }

      v15 = [elementOverrides countByEnumeratingWithState:&v70 objects:v74 count:16];
    }

    while (v15);
  }

  v3 = v69;
  if ([v68[6] presentationStyle] == 1)
  {
    v26 = objc_opt_class();
    viewController = [v68 viewController];
    view = [viewController view];
    v29 = SBSafeCast(v26, view);

    if (v29)
    {
      showsDateView = [v29 showsDateView];
      v31 = objc_opt_new();
      dateView3 = v31;
      if (showsDateView)
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
      dateView3 = [MEMORY[0x277D02BC8] dateView];
      v34 = [dateView3 hidden:1];
      v36 = [v34 priority:30];
      [v6 addObject:v36];
    }

    backgroundContent = [MEMORY[0x277D02BC8] backgroundContent];
    v39 = [backgroundContent priority:30];
    v40 = [v39 hidden:1];
    [v6 addObject:v40];

    pageContent = [MEMORY[0x277D02BC8] pageContent];
    v42 = [pageContent priority:30];
    v43 = [v42 hidden:1];
    [v6 addObject:v43];

    pageControl = [MEMORY[0x277D02BC8] pageControl];
    v45 = [pageControl priority:30];
    v46 = [v45 hidden:1];
    [v6 addObject:v46];

    footerCallToActionLabel = [MEMORY[0x277D02BC8] footerCallToActionLabel];
    v48 = [footerCallToActionLabel priority:30];
    v49 = [v48 hidden:1];
    [v6 addObject:v49];

    footerStatusLabel = [MEMORY[0x277D02BC8] footerStatusLabel];
    v51 = [footerStatusLabel priority:30];
    v52 = [v51 hidden:1];
    [v6 addObject:v52];

    proudLock = [MEMORY[0x277D02BC8] proudLock];
    v54 = [proudLock priority:30];
    v55 = [v54 hidden:1];
    [v6 addObject:v55];

    controlCenterGrabber = [MEMORY[0x277D02BC8] controlCenterGrabber];
    v57 = [controlCenterGrabber priority:30];
    v58 = [v57 hidden:1];
    [v6 addObject:v58];
  }

  [v69 setComponents:v6];
  appearance2 = [v68 appearance];
  backgroundStyle2 = [appearance2 backgroundStyle];
  if ((backgroundStyle2 - 1) >= 2)
  {
    if (backgroundStyle2 != 3)
    {
      v66 = 0;
      goto LABEL_40;
    }

    v65 = objc_alloc(MEMORY[0x277D760A8]);
    blackColor = [MEMORY[0x277D75348] blackColor];
    v63 = v65;
    v64 = 2;
  }

  else
  {
    v61 = objc_alloc(MEMORY[0x277D760A8]);
    blackColor = [MEMORY[0x277D75348] whiteColor];
    v63 = v61;
    v64 = 1;
  }

  v66 = [v63 initWithStyle:v64 contentColor:blackColor];

LABEL_40:
  [v69 setLegibilitySettings:v66];

LABEL_41:

  return v3;
}

- (CSBehavior)coverSheetBehavior
{
  behavior = [MEMORY[0x277D02BB0] behavior];
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  restrictedCapabilities = [(SBLockScreenPluginAppearanceContext *)self->_appearance restrictedCapabilities];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v13 = __40__SBLockScreenPlugin_coverSheetBehavior__block_invoke;
  v14 = &unk_2783B1618;
  v15 = &v16;
  v5 = v12;
  if (restrictedCapabilities)
  {
    v6 = 0;
    v20 = 0;
    v7 = vcnt_s8(restrictedCapabilities);
    v7.i16[0] = vaddlv_u8(v7);
    v8 = v7.i32[0];
    do
    {
      if (((1 << v6) & *&restrictedCapabilities) != 0)
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

  [behavior setRestrictedCapabilities:v17[3]];
  notificationBehavior = [(SBLockScreenPluginAppearanceContext *)self->_appearance notificationBehavior];
  if (notificationBehavior >= 3)
  {
    v10 = 0;
  }

  else
  {
    v10 = qword_21F8A64D8[notificationBehavior];
  }

  [behavior setNotificationBehavior:v10];
  [behavior setIdleTimerDuration:0];
  [behavior setIdleTimerMode:1];
  [behavior setIdleWarnMode:1];
  _Block_object_dispose(&v16, 8);

  return behavior;
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

- (BOOL)handleDashBoardEvent:(id)event
{
  eventCopy = event;
  v5 = [eventCopy type] - 27;
  if (v5 <= 6 && ((0x7Bu >> v5) & 1) != 0 && [(SBLockScreenPlugin *)self pluginHandleEvent:qword_21F8A64F0[v5]])
  {
    isConsumable = [eventCopy isConsumable];
  }

  else
  {
    isConsumable = 0;
  }

  return isConsumable;
}

- (void)_updateAppearance:(id)appearance
{
  v4 = MEMORY[0x277D67950];
  appearanceCopy = appearance;
  v6 = [[v4 alloc] initWithAppearance:appearanceCopy];

  appearance = self->_appearance;
  self->_appearance = v6;
}

- (void)pluginWillActivateWithContext:(id)context
{
  contextCopy = context;
  if (objc_opt_respondsToSelector())
  {
    v4 = [contextCopy copy];
    [v4 setAuxiliaryAnimation:0];
    [(SBLockScreenPluginController *)self->_controller pluginWillActivateWithContext:v4];
  }

  pluginAppearance = [(SBLockScreenPluginController *)self->_controller pluginAppearance];
  [(SBLockScreenPlugin *)self _updateAppearance:pluginAppearance];
}

- (void)pluginDidDeactivateWithContext:(id)context
{
  contextCopy = context;
  if (objc_opt_respondsToSelector())
  {
    v4 = [contextCopy copy];
    [v4 setAuxiliaryAnimation:0];
    [(SBLockScreenPluginController *)self->_controller pluginDidDeactivateWithContext:v4];
  }
}

- (SBLockScreenPluginAction)pluginUnlockAction
{
  if (objc_opt_respondsToSelector())
  {
    pluginUnlockAction = [(SBLockScreenPluginController *)self->_controller pluginUnlockAction];
  }

  else
  {
    pluginUnlockAction = 0;
  }

  return pluginUnlockAction;
}

- (BOOL)pluginHandleEvent:(int64_t)event
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  controller = self->_controller;

  return [(SBLockScreenPluginController *)controller pluginHandleEvent:event];
}

- (void)addLifecycleObserver:(id)observer
{
  observerCopy = observer;
  lifecycleObservers = self->_lifecycleObservers;
  v8 = observerCopy;
  if (!lifecycleObservers)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_lifecycleObservers;
    self->_lifecycleObservers = v6;

    observerCopy = v8;
    lifecycleObservers = self->_lifecycleObservers;
  }

  [(NSMutableArray *)lifecycleObservers addObject:observerCopy];
}

- (void)removeLifecycleObserver:(id)observer
{
  [(NSMutableArray *)self->_lifecycleObservers removeObject:observer];
  if (![(NSMutableArray *)self->_lifecycleObservers count])
  {
    lifecycleObservers = self->_lifecycleObservers;
    self->_lifecycleObservers = 0;
  }
}

- (void)enumerateLifecycleObserversUsingBlock:(id)block
{
  v16 = *MEMORY[0x277D85DE8];
  blockCopy = block;
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

        blockCopy[2](blockCopy, *(*(&v11 + 1) + 8 * v10++));
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

- (void)activatePluginController:(id)controller
{
  WeakRetained = objc_loadWeakRetained(&self->_agent);
  [WeakRetained activatePluginController:self];
}

- (void)deactivatePluginController:(id)controller
{
  WeakRetained = objc_loadWeakRetained(&self->_agent);
  [WeakRetained deactivatePluginController:self];
}

- (void)pluginController:(id)controller updateAppearance:(id)appearance
{
  [(SBLockScreenPlugin *)self _updateAppearance:appearance];
  WeakRetained = objc_loadWeakRetained(&self->_agent);
  pluginAppearance = [(SBLockScreenPlugin *)self pluginAppearance];
  [WeakRetained pluginController:self updateAppearance:pluginAppearance];

  v7 = objc_loadWeakRetained(&self->_delegate);
  [v7 pluginAppearanceDidChange:self];
}

- (BOOL)pluginController:(id)controller sendAction:(id)action
{
  actionCopy = action;
  WeakRetained = objc_loadWeakRetained(&self->_agent);
  LOBYTE(self) = [WeakRetained pluginController:self sendAction:actionCopy];

  return self;
}

- (void)processDidExit:(id)exit
{
  [exit removeObserver:self];
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
  succinctDescriptionBuilder = [(SBLockScreenPlugin *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendObject:self->_bundleName withName:@"name"];
  identifier = [(BSPluginBundle *)self->_bundle identifier];
  v6 = [v3 appendObject:identifier withName:@"identifier"];

  v7 = [v3 appendClass:-[BSPluginBundle principalClass](self->_bundle withName:{"principalClass"), @"principalClass"}];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBLockScreenPlugin *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  succinctDescriptionBuilder = [(SBLockScreenPlugin *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __60__SBLockScreenPlugin_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_2783A92D8;
  v6 = succinctDescriptionBuilder;
  v10 = v6;
  selfCopy = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v9];

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