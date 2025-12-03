@interface SBSystemShellExtendedDisplayControllerPolicyFactory
- (SBSystemShellExtendedDisplayControllerPolicyFactory)initWithExternalDisplayService:(id)service externalDisplayDefaults:(id)defaults appSwitcherDefaults:(id)switcherDefaults mousePointerManager:(id)manager runtimeAvailabilitySettings:(id)settings sceneManager:(id)sceneManager windowSceneManager:(id)windowSceneManager;
- (id)policyForConnectingDisplay:(id)display;
- (void)transformDisplayConfiguration:(id)configuration forControllersWithBuilder:(id)builder;
@end

@implementation SBSystemShellExtendedDisplayControllerPolicyFactory

- (SBSystemShellExtendedDisplayControllerPolicyFactory)initWithExternalDisplayService:(id)service externalDisplayDefaults:(id)defaults appSwitcherDefaults:(id)switcherDefaults mousePointerManager:(id)manager runtimeAvailabilitySettings:(id)settings sceneManager:(id)sceneManager windowSceneManager:(id)windowSceneManager
{
  serviceCopy = service;
  defaultsCopy = defaults;
  obj = switcherDefaults;
  switcherDefaultsCopy = switcherDefaults;
  managerCopy = manager;
  managerCopy2 = manager;
  settingsCopy = settings;
  settingsCopy2 = settings;
  sceneManagerCopy = sceneManager;
  sceneManagerCopy2 = sceneManager;
  windowSceneManagerCopy = windowSceneManager;
  if (serviceCopy)
  {
    if (defaultsCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [SBSystemShellExtendedDisplayControllerPolicyFactory initWithExternalDisplayService:externalDisplayDefaults:appSwitcherDefaults:mousePointerManager:runtimeAvailabilitySettings:sceneManager:windowSceneManager:];
    if (defaultsCopy)
    {
LABEL_3:
      if (switcherDefaultsCopy)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  [SBSystemShellExtendedDisplayControllerPolicyFactory initWithExternalDisplayService:externalDisplayDefaults:appSwitcherDefaults:mousePointerManager:runtimeAvailabilitySettings:sceneManager:windowSceneManager:];
  if (switcherDefaultsCopy)
  {
LABEL_4:
    if (managerCopy2)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  [SBSystemShellExtendedDisplayControllerPolicyFactory initWithExternalDisplayService:externalDisplayDefaults:appSwitcherDefaults:mousePointerManager:runtimeAvailabilitySettings:sceneManager:windowSceneManager:];
  if (managerCopy2)
  {
LABEL_5:
    if (settingsCopy2)
    {
      goto LABEL_6;
    }

LABEL_14:
    [SBSystemShellExtendedDisplayControllerPolicyFactory initWithExternalDisplayService:externalDisplayDefaults:appSwitcherDefaults:mousePointerManager:runtimeAvailabilitySettings:sceneManager:windowSceneManager:];
    if (windowSceneManagerCopy)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_13:
  [SBSystemShellExtendedDisplayControllerPolicyFactory initWithExternalDisplayService:externalDisplayDefaults:appSwitcherDefaults:mousePointerManager:runtimeAvailabilitySettings:sceneManager:windowSceneManager:];
  if (!settingsCopy2)
  {
    goto LABEL_14;
  }

LABEL_6:
  if (windowSceneManagerCopy)
  {
    goto LABEL_7;
  }

LABEL_15:
  [SBSystemShellExtendedDisplayControllerPolicyFactory initWithExternalDisplayService:externalDisplayDefaults:appSwitcherDefaults:mousePointerManager:runtimeAvailabilitySettings:sceneManager:windowSceneManager:];
LABEL_7:
  v31.receiver = self;
  v31.super_class = SBSystemShellExtendedDisplayControllerPolicyFactory;
  v22 = [(SBSystemShellExtendedDisplayControllerPolicyFactory *)&v31 init];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(&v22->_externalDisplayService, service);
    objc_storeStrong(&v23->_externalDisplayDefaults, defaults);
    objc_storeStrong(&v23->_appSwitcherDefaults, obj);
    objc_storeStrong(&v23->_mousePointerManager, managerCopy);
    objc_storeStrong(&v23->_runtimeAvailabilitySettings, settingsCopy);
    objc_storeStrong(&v23->_sceneManager, sceneManagerCopy);
    objc_storeStrong(&v23->_windowSceneManager, windowSceneManager);
  }

  return v23;
}

- (id)policyForConnectingDisplay:(id)display
{
  v3 = [[SBSystemShellExtendedDisplayControllerPolicy alloc] initWithExternalDisplayDefaults:self->_externalDisplayDefaults appSwitcherDefaults:self->_appSwitcherDefaults externalDisplayService:self->_externalDisplayService mousePointerManager:self->_mousePointerManager runtimeAvailabilitySettings:self->_runtimeAvailabilitySettings sceneManager:self->_sceneManager windowSceneManager:self->_windowSceneManager];

  return v3;
}

- (void)transformDisplayConfiguration:(id)configuration forControllersWithBuilder:(id)builder
{
  builderCopy = builder;
  [builderCopy setUniqueIdentifier:@"com.apple.springboard.shellui"];
  [builderCopy setUIKitMainLike];
  [builderCopy setCloningSupported:0];
}

- (void)initWithExternalDisplayService:externalDisplayDefaults:appSwitcherDefaults:mousePointerManager:runtimeAvailabilitySettings:sceneManager:windowSceneManager:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"externalDisplayService" object:? file:? lineNumber:? description:?];
}

- (void)initWithExternalDisplayService:externalDisplayDefaults:appSwitcherDefaults:mousePointerManager:runtimeAvailabilitySettings:sceneManager:windowSceneManager:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"externalDisplayDefaults" object:? file:? lineNumber:? description:?];
}

- (void)initWithExternalDisplayService:externalDisplayDefaults:appSwitcherDefaults:mousePointerManager:runtimeAvailabilitySettings:sceneManager:windowSceneManager:.cold.3()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"appSwitcherDefaults" object:? file:? lineNumber:? description:?];
}

- (void)initWithExternalDisplayService:externalDisplayDefaults:appSwitcherDefaults:mousePointerManager:runtimeAvailabilitySettings:sceneManager:windowSceneManager:.cold.4()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"mousePointerManager" object:? file:? lineNumber:? description:?];
}

- (void)initWithExternalDisplayService:externalDisplayDefaults:appSwitcherDefaults:mousePointerManager:runtimeAvailabilitySettings:sceneManager:windowSceneManager:.cold.5()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"runtimeAvailabilitySettings" object:? file:? lineNumber:? description:?];
}

- (void)initWithExternalDisplayService:externalDisplayDefaults:appSwitcherDefaults:mousePointerManager:runtimeAvailabilitySettings:sceneManager:windowSceneManager:.cold.6()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"windowSceneManager" object:? file:? lineNumber:? description:?];
}

@end