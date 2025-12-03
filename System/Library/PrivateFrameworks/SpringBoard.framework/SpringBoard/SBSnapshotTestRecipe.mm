@interface SBSnapshotTestRecipe
- (void)_sendRequestWithType:(unint64_t)type;
@end

@implementation SBSnapshotTestRecipe

- (void)_sendRequestWithType:(unint64_t)type
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = +[SBMainSwitcherControllerCoordinator _shim_activeSwitcherController];
  layoutStatePrimaryElement = [v4 layoutStatePrimaryElement];
  workspaceEntity = [layoutStatePrimaryElement workspaceEntity];
  applicationSceneEntity = [workspaceEntity applicationSceneEntity];
  sceneHandle = [applicationSceneEntity sceneHandle];

  sceneIfExists = [sceneHandle sceneIfExists];
  v10 = sceneIfExists;
  if (sceneIfExists)
  {
    settings = [sceneIfExists settings];
    v12 = MEMORY[0x277D0ADE0];
    identifier = [v10 identifier];
    settings2 = [v10 settings];
    v15 = [v12 contextWithSceneID:identifier settings:settings2];

    [v15 setName:@"SBSnapshotTestRecipe"];
    displayConfiguration = [settings displayConfiguration];
    [displayConfiguration pointScale];
    [v15 setScale:?];

    [settings bounds];
    [v15 setFrame:?];
    v17 = SBLogCommon();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = @"invalidate";
      if (type == 1)
      {
        v18 = @"perform";
      }

      v20 = 138412546;
      v21 = v15;
      v22 = 2112;
      v23 = v18;
      _os_log_impl(&dword_21ED4E000, v17, OS_LOG_TYPE_DEFAULT, "[SBSnapshotTestRecipe] Sending %@ request with %@", &v20, 0x16u);
    }

    if (type == 2)
    {
      application = [sceneHandle application];
      [application deleteSnapshotForContext:v15];
    }

    else
    {
      if (type != 1)
      {
LABEL_13:

        goto LABEL_14;
      }

      application = [sceneHandle application];
      [application saveSnapshotForSceneHandle:sceneHandle context:v15 completion:0];
    }

    goto LABEL_13;
  }

  settings = SBLogCommon();
  if (os_log_type_enabled(settings, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v20) = 0;
    _os_log_impl(&dword_21ED4E000, settings, OS_LOG_TYPE_DEFAULT, "[SBSnapshotTestRecipe] No active app main scene. Ignoring.", &v20, 2u);
  }

LABEL_14:
}

@end