@interface SBXXSuspendFrontmostApp
@end

@implementation SBXXSuspendFrontmostApp

void ___SBXXSuspendFrontmostApp_block_invoke()
{
  v0 = +[SBMainSwitcherControllerCoordinator _shim_activeSwitcherController];
  v1 = [v0 layoutStatePrimaryElement];
  v2 = [v1 workspaceEntity];
  v3 = [v2 applicationSceneEntity];
  v5 = [v3 sceneHandle];

  v4 = v5;
  if (v5)
  {
    SBWorkspaceSuspendApplicationScene(v5);
    v4 = v5;
  }
}

@end