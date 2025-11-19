@interface SBRestartManagerWorkspaceDataSource
- (BOOL)isUILocked;
- (id)activePrimaryApplicationBundleID;
- (void)terminateAllApplicationsForReason:(int64_t)a3 description:(id)a4 completion:(id)a5;
@end

@implementation SBRestartManagerWorkspaceDataSource

- (void)terminateAllApplicationsForReason:(int64_t)a3 description:(id)a4 completion:(id)a5
{
  v9 = a4;
  v10 = a5;
  if (!v10)
  {
    [SBRestartManagerWorkspaceDataSource terminateAllApplicationsForReason:a2 description:self completion:?];
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __96__SBRestartManagerWorkspaceDataSource_terminateAllApplicationsForReason_description_completion___block_invoke;
  v12[3] = &unk_2783A9C70;
  v13 = v10;
  v11 = v10;
  SBWorkspaceTerminateAllApps(a3, 0, v9, v12);
}

- (id)activePrimaryApplicationBundleID
{
  v2 = +[SBMainSwitcherControllerCoordinator _shim_activeSwitcherController];
  v3 = [v2 layoutStatePrimaryElement];
  v4 = [v3 workspaceEntity];
  v5 = [v4 applicationSceneEntity];
  v6 = [v5 sceneHandle];
  v7 = [v6 application];
  v8 = [v7 bundleIdentifier];

  return v8;
}

- (BOOL)isUILocked
{
  v2 = +[SBLockScreenManager sharedInstanceIfExists];
  v3 = [v2 isUILocked];

  return v3;
}

- (void)terminateAllApplicationsForReason:(uint64_t)a1 description:(uint64_t)a2 completion:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBRestartManagerWorkspaceDataSource.m" lineNumber:20 description:{@"Invalid parameter not satisfying: %@", @"block"}];
}

@end