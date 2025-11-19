@interface SBSystemShellExtendedDisplayControllerPolicyFactory
- (SBSystemShellExtendedDisplayControllerPolicyFactory)initWithExternalDisplayService:(id)a3 externalDisplayDefaults:(id)a4 appSwitcherDefaults:(id)a5 mousePointerManager:(id)a6 runtimeAvailabilitySettings:(id)a7 sceneManager:(id)a8 windowSceneManager:(id)a9;
- (id)policyForConnectingDisplay:(id)a3;
- (void)transformDisplayConfiguration:(id)a3 forControllersWithBuilder:(id)a4;
@end

@implementation SBSystemShellExtendedDisplayControllerPolicyFactory

- (SBSystemShellExtendedDisplayControllerPolicyFactory)initWithExternalDisplayService:(id)a3 externalDisplayDefaults:(id)a4 appSwitcherDefaults:(id)a5 mousePointerManager:(id)a6 runtimeAvailabilitySettings:(id)a7 sceneManager:(id)a8 windowSceneManager:(id)a9
{
  v16 = a3;
  v17 = a4;
  obj = a5;
  v18 = a5;
  v27 = a6;
  v19 = a6;
  v28 = a7;
  v20 = a7;
  v29 = a8;
  v30 = a8;
  v21 = a9;
  if (v16)
  {
    if (v17)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [SBSystemShellExtendedDisplayControllerPolicyFactory initWithExternalDisplayService:externalDisplayDefaults:appSwitcherDefaults:mousePointerManager:runtimeAvailabilitySettings:sceneManager:windowSceneManager:];
    if (v17)
    {
LABEL_3:
      if (v18)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  [SBSystemShellExtendedDisplayControllerPolicyFactory initWithExternalDisplayService:externalDisplayDefaults:appSwitcherDefaults:mousePointerManager:runtimeAvailabilitySettings:sceneManager:windowSceneManager:];
  if (v18)
  {
LABEL_4:
    if (v19)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  [SBSystemShellExtendedDisplayControllerPolicyFactory initWithExternalDisplayService:externalDisplayDefaults:appSwitcherDefaults:mousePointerManager:runtimeAvailabilitySettings:sceneManager:windowSceneManager:];
  if (v19)
  {
LABEL_5:
    if (v20)
    {
      goto LABEL_6;
    }

LABEL_14:
    [SBSystemShellExtendedDisplayControllerPolicyFactory initWithExternalDisplayService:externalDisplayDefaults:appSwitcherDefaults:mousePointerManager:runtimeAvailabilitySettings:sceneManager:windowSceneManager:];
    if (v21)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_13:
  [SBSystemShellExtendedDisplayControllerPolicyFactory initWithExternalDisplayService:externalDisplayDefaults:appSwitcherDefaults:mousePointerManager:runtimeAvailabilitySettings:sceneManager:windowSceneManager:];
  if (!v20)
  {
    goto LABEL_14;
  }

LABEL_6:
  if (v21)
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
    objc_storeStrong(&v22->_externalDisplayService, a3);
    objc_storeStrong(&v23->_externalDisplayDefaults, a4);
    objc_storeStrong(&v23->_appSwitcherDefaults, obj);
    objc_storeStrong(&v23->_mousePointerManager, v27);
    objc_storeStrong(&v23->_runtimeAvailabilitySettings, v28);
    objc_storeStrong(&v23->_sceneManager, v29);
    objc_storeStrong(&v23->_windowSceneManager, a9);
  }

  return v23;
}

- (id)policyForConnectingDisplay:(id)a3
{
  v3 = [[SBSystemShellExtendedDisplayControllerPolicy alloc] initWithExternalDisplayDefaults:self->_externalDisplayDefaults appSwitcherDefaults:self->_appSwitcherDefaults externalDisplayService:self->_externalDisplayService mousePointerManager:self->_mousePointerManager runtimeAvailabilitySettings:self->_runtimeAvailabilitySettings sceneManager:self->_sceneManager windowSceneManager:self->_windowSceneManager];

  return v3;
}

- (void)transformDisplayConfiguration:(id)a3 forControllersWithBuilder:(id)a4
{
  v4 = a4;
  [v4 setUniqueIdentifier:@"com.apple.springboard.shellui"];
  [v4 setUIKitMainLike];
  [v4 setCloningSupported:0];
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