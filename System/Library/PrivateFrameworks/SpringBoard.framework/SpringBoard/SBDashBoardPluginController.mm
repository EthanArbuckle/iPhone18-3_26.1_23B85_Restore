@interface SBDashBoardPluginController
- (BOOL)handleEvent:(id)event;
- (BOOL)pluginManager:(id)manager plugin:(id)plugin handleAction:(id)action;
- (NSSet)components;
- (NSString)coverSheetIdentifier;
- (SBDashBoardPluginController)initWithCoverSheetViewController:(id)controller;
- (void)_activate;
- (void)_deactivate;
- (void)_dismissPluginViewController:(id)controller withStyle:(int64_t)style animated:(BOOL)animated completion:(id)completion;
- (void)_presentPluginViewController:(id)controller withStyle:(int64_t)style animated:(BOOL)animated completion:(id)completion;
- (void)_setPluginViewController:(id)controller;
- (void)dealloc;
- (void)pluginManager:(id)manager displayedPluginDidChangeFromPlugin:(id)plugin toPlugin:(id)toPlugin;
- (void)pluginManager:(id)manager displayedPluginDidUpdateAppearance:(id)appearance;
@end

@implementation SBDashBoardPluginController

- (void)_deactivate
{
  [(SBLockScreenPluginManager *)self->_pluginManager setEnabled:0];
  pluginManager = self->_pluginManager;

  [(SBLockScreenPluginManager *)pluginManager setEnabled:0];
}

- (SBDashBoardPluginController)initWithCoverSheetViewController:(id)controller
{
  controllerCopy = controller;
  v11.receiver = self;
  v11.super_class = SBDashBoardPluginController;
  v6 = [(SBDashBoardPluginController *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_coverSheetViewController, controller);
    v8 = objc_alloc_init(SBLockScreenPluginManager);
    pluginManager = v7->_pluginManager;
    v7->_pluginManager = v8;

    [(CSCoverSheetViewController *)v7->_coverSheetViewController registerExternalEventHandler:v7];
  }

  return v7;
}

- (void)dealloc
{
  [(SBDashBoardPluginController *)self _setPluginViewController:0];
  [(SBDashBoardPluginController *)self _deactivate];
  [(CSCoverSheetViewController *)self->_coverSheetViewController unregisterExternalEventHandler:self];
  v3.receiver = self;
  v3.super_class = SBDashBoardPluginController;
  [(SBDashBoardPluginController *)&v3 dealloc];
}

- (void)_activate
{
  [(SBLockScreenPluginManager *)self->_pluginManager setDelegate:self];
  pluginManager = self->_pluginManager;

  [(SBLockScreenPluginManager *)pluginManager setEnabled:1];
}

- (void)_setPluginViewController:(id)controller
{
  controllerCopy = controller;
  pluginViewController = self->_pluginViewController;
  if (pluginViewController != controllerCopy)
  {
    if (pluginViewController || ([(CSCoverSheetViewController *)self->_coverSheetViewController registerExternalAppearanceProvider:self], [(CSCoverSheetViewController *)self->_coverSheetViewController registerExternalBehaviorProvider:self], self->_pluginViewController))
    {
      v7 = SBLogDashBoard();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        [SBDashBoardPluginController _setPluginViewController:controllerCopy];
      }

      v8 = self->_pluginViewController;
      pluginViewControllerPresentationStyle = self->_pluginViewControllerPresentationStyle;
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __56__SBDashBoardPluginController__setPluginViewController___block_invoke;
      v13[3] = &unk_2783A8C18;
      v13[4] = self;
      [(SBDashBoardPluginController *)self _dismissPluginViewController:v8 withStyle:pluginViewControllerPresentationStyle animated:controllerCopy == 0 completion:v13];
    }

    objc_storeStrong(&self->_pluginViewController, controller);
    self->_pluginViewControllerPresentationStyle = [(SBDashBoardPluginViewController *)controllerCopy presentationStyle];
    if (!self->_pluginViewController)
    {
      goto LABEL_11;
    }

    v10 = SBLogDashBoard();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [SBDashBoardPluginController _setPluginViewController:controllerCopy];
    }

    v11 = self->_pluginViewControllerPresentationStyle;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __56__SBDashBoardPluginController__setPluginViewController___block_invoke_3;
    v12[3] = &unk_2783A8C18;
    v12[4] = self;
    [(SBDashBoardPluginController *)self _presentPluginViewController:controllerCopy withStyle:v11 animated:1 completion:v12];
    if (!self->_pluginViewController)
    {
LABEL_11:
      [(CSCoverSheetViewController *)self->_coverSheetViewController unregisterExternalAppearanceProvider:self];
      [(CSCoverSheetViewController *)self->_coverSheetViewController unregisterExternalBehaviorProvider:self];
    }
  }
}

void __56__SBDashBoardPluginController__setPluginViewController___block_invoke(uint64_t a1)
{
  v2 = SBLogDashBoard();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __56__SBDashBoardPluginController__setPluginViewController___block_invoke_cold_1(a1, v2);
  }
}

void __56__SBDashBoardPluginController__setPluginViewController___block_invoke_3(uint64_t a1)
{
  v2 = SBLogDashBoard();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __56__SBDashBoardPluginController__setPluginViewController___block_invoke_3_cold_1(a1, v2);
  }
}

- (void)_dismissPluginViewController:(id)controller withStyle:(int64_t)style animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  controllerCopy = controller;
  completionCopy = completion;
  plugin = [(SBDashBoardPluginViewController *)self->_pluginViewController plugin];
  if (style)
  {
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __90__SBDashBoardPluginController__dismissPluginViewController_withStyle_animated_completion___block_invoke;
    v22[3] = &unk_2783B1320;
    v13 = controllerCopy;
    v23 = v13;
    v25 = completionCopy;
    v14 = plugin;
    v24 = v14;
    v15 = MEMORY[0x223D6F7F0](v22);
    v17 = MEMORY[0x277D85DD0];
    v18 = 3221225472;
    v19 = __90__SBDashBoardPluginController__dismissPluginViewController_withStyle_animated_completion___block_invoke_3;
    v20 = &unk_2783BCCC0;
    v21 = v14;
    [v21 enumerateLifecycleObserversUsingBlock:&v17];
    if (style == 1)
    {
      v16 = [(CSCoverSheetViewController *)self->_coverSheetViewController mainPagePresentationViewController:v17];
      [v16 dismissContentViewController:v13 animated:animatedCopy completion:v15];
    }

    else if (style == 2)
    {
      [(CSCoverSheetViewController *)self->_coverSheetViewController _dismissModalViewController:v13 animated:animatedCopy completion:v15, v17, v18, v19, v20];
    }
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }
}

void __90__SBDashBoardPluginController__dismissPluginViewController_withStyle_animated_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setPresenter:0];
  v2 = *(a1 + 48);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 40);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __90__SBDashBoardPluginController__dismissPluginViewController_withStyle_animated_completion___block_invoke_2;
  v4[3] = &unk_2783BCCC0;
  v5 = v3;
  [v5 enumerateLifecycleObserversUsingBlock:v4];
}

- (void)_presentPluginViewController:(id)controller withStyle:(int64_t)style animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  controllerCopy = controller;
  completionCopy = completion;
  plugin = [controllerCopy plugin];
  if (style)
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __90__SBDashBoardPluginController__presentPluginViewController_withStyle_animated_completion___block_invoke;
    v18[3] = &unk_2783A9878;
    v20 = completionCopy;
    v13 = plugin;
    v19 = v13;
    v14 = MEMORY[0x223D6F7F0](v18);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __90__SBDashBoardPluginController__presentPluginViewController_withStyle_animated_completion___block_invoke_3;
    v16[3] = &unk_2783BCCC0;
    v17 = v13;
    [v17 enumerateLifecycleObserversUsingBlock:v16];
    if (style == 1)
    {
      mainPagePresentationViewController = [(CSCoverSheetViewController *)self->_coverSheetViewController mainPagePresentationViewController];
      [mainPagePresentationViewController presentContentViewController:controllerCopy animated:animatedCopy completion:v14];
    }

    else if (style == 2)
    {
      [(CSCoverSheetViewController *)self->_coverSheetViewController _presentModalViewController:controllerCopy animated:animatedCopy completion:v14];
    }
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }
}

void __90__SBDashBoardPluginController__presentPluginViewController_withStyle_animated_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __90__SBDashBoardPluginController__presentPluginViewController_withStyle_animated_completion___block_invoke_2;
  v4[3] = &unk_2783BCCC0;
  v5 = v3;
  [v5 enumerateLifecycleObserversUsingBlock:v4];
}

- (NSString)coverSheetIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (NSSet)components
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  plugin = [(SBDashBoardPluginViewController *)self->_pluginViewController plugin];
  coverSheetAppearance = [plugin coverSheetAppearance];
  v6 = [coverSheetAppearance componentForType:1 property:16];

  if (v6)
  {
    [v3 addObject:v6];
  }

  plugin2 = [(SBDashBoardPluginViewController *)self->_pluginViewController plugin];
  hidesLockScreenComplications = [plugin2 hidesLockScreenComplications];

  if (hidesLockScreenComplications)
  {
    complicationSidebar = [MEMORY[0x277D02BC8] complicationSidebar];
    appearanceIdentifier = [(SBDashBoardPluginController *)self appearanceIdentifier];
    v11 = [complicationSidebar identifier:appearanceIdentifier];
    v12 = [v11 hidden:1];

    complicationContainer = [MEMORY[0x277D02BC8] complicationContainer];
    appearanceIdentifier2 = [(SBDashBoardPluginController *)self appearanceIdentifier];
    v15 = [complicationContainer identifier:appearanceIdentifier2];
    v16 = [v15 hidden:1];

    [v3 addObject:v12];
    [v3 addObject:v16];
  }

  return v3;
}

- (BOOL)handleEvent:(id)event
{
  eventCopy = event;
  type = [eventCopy type];
  isConsumable = 0;
  if (type > 7)
  {
    if (type != 8)
    {
      if (type == 12)
      {
        if (![(SBLockScreenPluginManager *)self->_pluginManager handleEvent:1])
        {
          isConsumable = 0;
          goto LABEL_11;
        }

        goto LABEL_10;
      }

      if (type != 9)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }

LABEL_9:
    [(SBDashBoardPluginController *)self _activate];
    goto LABEL_10;
  }

  if (type == 3)
  {
    goto LABEL_9;
  }

  if (type == 6)
  {
LABEL_8:
    [(SBDashBoardPluginController *)self _deactivate];
LABEL_10:
    isConsumable = [eventCopy isConsumable];
  }

LABEL_11:

  return isConsumable;
}

- (void)pluginManager:(id)manager displayedPluginDidUpdateAppearance:(id)appearance
{
  v18 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  appearanceCopy = appearance;
  p_pluginViewController = &self->_pluginViewController;
  pluginViewController = self->_pluginViewController;
  if (!pluginViewController)
  {
    [(SBDashBoardPluginController *)a2 pluginManager:p_pluginViewController displayedPluginDidUpdateAppearance:buf];
    pluginViewController = *buf;
  }

  plugin = [(SBDashBoardPluginViewController *)pluginViewController plugin];

  if (plugin != appearanceCopy)
  {
    [SBDashBoardPluginController pluginManager:a2 displayedPluginDidUpdateAppearance:self];
  }

  v12 = SBLogDashBoard();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    *&buf[4] = appearanceCopy;
    _os_log_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_INFO, "Active uplugin changed it's appearance style: %@", buf, 0xCu);
  }

  pluginViewControllerPresentationStyle = self->_pluginViewControllerPresentationStyle;
  if (pluginViewControllerPresentationStyle != [(SBDashBoardPluginViewController *)self->_pluginViewController presentationStyle])
  {
    v14 = MEMORY[0x277D75D18];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __80__SBDashBoardPluginController_pluginManager_displayedPluginDidUpdateAppearance___block_invoke;
    v15[3] = &unk_2783A92D8;
    v15[4] = self;
    v16 = appearanceCopy;
    [v14 performWithoutAnimation:v15];
  }
}

uint64_t __80__SBDashBoardPluginController_pluginManager_displayedPluginDidUpdateAppearance___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = SBLogDashBoard();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = *(v3 + 24);
    v5 = [*(v3 + 16) presentationStyle];
    v6 = *(a1 + 40);
    v8[0] = 67109634;
    v8[1] = v4;
    v9 = 1024;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_INFO, "Plugin changed presentation style from %d to %d: %@", v8, 0x18u);
  }

  [*(a1 + 32) _dismissPluginViewController:*(*(a1 + 32) + 16) withStyle:*(*(a1 + 32) + 24) animated:0 completion:0];
  *(*(a1 + 32) + 24) = [*(*(a1 + 32) + 16) presentationStyle];
  return [*(a1 + 32) _presentPluginViewController:*(*(a1 + 32) + 16) withStyle:*(*(a1 + 32) + 24) animated:0 completion:0];
}

- (void)pluginManager:(id)manager displayedPluginDidChangeFromPlugin:(id)plugin toPlugin:(id)toPlugin
{
  toPluginCopy = toPlugin;
  if (toPluginCopy)
  {
    v6 = [[SBDashBoardPluginViewController alloc] initWithLockScreenPlugin:toPluginCopy];
    [(SBDashBoardPluginController *)self _setPluginViewController:v6];
  }

  else
  {
    [(SBDashBoardPluginController *)self _setPluginViewController:0];
  }
}

- (BOOL)pluginManager:(id)manager plugin:(id)plugin handleAction:(id)action
{
  actionCopy = action;
  pluginCopy = plugin;
  v9 = +[SBLockScreenActionContextFactory sharedInstance];
  v10 = [v9 lockScreenActionContextForAction:actionCopy fromPlugin:pluginCopy];

  if (v10 && self->_pluginViewController)
  {
    coverSheetViewController = self->_coverSheetViewController;
    v12 = [MEMORY[0x277D02B80] actionWithContext:v10];
    [(CSCoverSheetViewController *)coverSheetViewController handleAction:v12 fromSender:self->_pluginViewController];

    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  [actionCopy sendResponseWithSuccess:v13];

  return v13;
}

- (void)_setPluginViewController:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 plugin];
  OUTLINED_FUNCTION_0_13(&dword_21ED4E000, v2, v3, "Dismissing plugin view controller for plugin: %@", v4, v5, v6, v7, 2u);
}

- (void)_setPluginViewController:(void *)a1 .cold.2(void *a1)
{
  v1 = [a1 plugin];
  OUTLINED_FUNCTION_0_13(&dword_21ED4E000, v2, v3, "Presenting plugin view controller for plugin: %@", v4, v5, v6, v7, 2u);
}

void __56__SBDashBoardPluginController__setPluginViewController___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 16);
  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_DEBUG, "Dismissed plugin view controller: %@.", &v3, 0xCu);
}

void __56__SBDashBoardPluginController__setPluginViewController___block_invoke_3_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 16);
  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_DEBUG, "Presented plugin view controller: %@.", &v3, 0xCu);
}

- (void)pluginManager:(void *)a3 displayedPluginDidUpdateAppearance:(void *)a4 .cold.1(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = [MEMORY[0x277CCA890] currentHandler];
  [v8 handleFailureInMethod:a1 object:a2 file:@"SBDashBoardPluginController.m" lineNumber:301 description:@"We must have a plugin for the active one to have changed it's appearance."];

  *a4 = *a3;
}

- (void)pluginManager:(uint64_t)a1 displayedPluginDidUpdateAppearance:(uint64_t)a2 .cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBDashBoardPluginController.m" lineNumber:302 description:@"The active plugin that changed wasn't the one we knew about now."];
}

@end