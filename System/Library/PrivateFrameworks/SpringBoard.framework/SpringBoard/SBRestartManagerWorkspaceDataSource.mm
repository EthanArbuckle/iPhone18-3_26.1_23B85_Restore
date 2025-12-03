@interface SBRestartManagerWorkspaceDataSource
- (BOOL)isUILocked;
- (id)activePrimaryApplicationBundleID;
- (void)terminateAllApplicationsForReason:(int64_t)reason description:(id)description completion:(id)completion;
@end

@implementation SBRestartManagerWorkspaceDataSource

- (void)terminateAllApplicationsForReason:(int64_t)reason description:(id)description completion:(id)completion
{
  descriptionCopy = description;
  completionCopy = completion;
  if (!completionCopy)
  {
    [SBRestartManagerWorkspaceDataSource terminateAllApplicationsForReason:a2 description:self completion:?];
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __96__SBRestartManagerWorkspaceDataSource_terminateAllApplicationsForReason_description_completion___block_invoke;
  v12[3] = &unk_2783A9C70;
  v13 = completionCopy;
  v11 = completionCopy;
  SBWorkspaceTerminateAllApps(reason, 0, descriptionCopy, v12);
}

- (id)activePrimaryApplicationBundleID
{
  v2 = +[SBMainSwitcherControllerCoordinator _shim_activeSwitcherController];
  layoutStatePrimaryElement = [v2 layoutStatePrimaryElement];
  workspaceEntity = [layoutStatePrimaryElement workspaceEntity];
  applicationSceneEntity = [workspaceEntity applicationSceneEntity];
  sceneHandle = [applicationSceneEntity sceneHandle];
  application = [sceneHandle application];
  bundleIdentifier = [application bundleIdentifier];

  return bundleIdentifier;
}

- (BOOL)isUILocked
{
  v2 = +[SBLockScreenManager sharedInstanceIfExists];
  isUILocked = [v2 isUILocked];

  return isUILocked;
}

- (void)terminateAllApplicationsForReason:(uint64_t)a1 description:(uint64_t)a2 completion:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBRestartManagerWorkspaceDataSource.m" lineNumber:20 description:{@"Invalid parameter not satisfying: %@", @"block"}];
}

@end