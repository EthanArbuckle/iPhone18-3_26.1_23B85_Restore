@interface SBExternalDisplaySceneSnapshotRequestStrategy
- (id)snapshotRequestsForSceneHandle:(id)handle settings:(id)settings snapshotRequestContext:(id)context;
@end

@implementation SBExternalDisplaySceneSnapshotRequestStrategy

- (id)snapshotRequestsForSceneHandle:(id)handle settings:(id)settings snapshotRequestContext:(id)context
{
  handleCopy = handle;
  settingsCopy = settings;
  contextCopy = context;
  if (handleCopy)
  {
    if (settingsCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [SBExternalDisplaySceneSnapshotRequestStrategy snapshotRequestsForSceneHandle:settings:snapshotRequestContext:];
    if (settingsCopy)
    {
      goto LABEL_3;
    }
  }

  [SBExternalDisplaySceneSnapshotRequestStrategy snapshotRequestsForSceneHandle:settings:snapshotRequestContext:];
LABEL_3:
  v10 = objc_opt_new();
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __112__SBExternalDisplaySceneSnapshotRequestStrategy_snapshotRequestsForSceneHandle_settings_snapshotRequestContext___block_invoke;
  v16[3] = &unk_2783C1280;
  v11 = v10;
  v17 = v11;
  v12 = MEMORY[0x223D6F7F0](v16);
  v12[2](v12, 0, 0);
  v12[2](v12, 2, 1);
  sceneDisplayWindowManagementContext = [contextCopy sceneDisplayWindowManagementContext];
  if (([sceneDisplayWindowManagementContext isChamoisOrFlexibleWindowing] & 1) == 0)
  {
    v12[2](v12, 3, 0);
  }

  v14 = v11;

  return v11;
}

void __112__SBExternalDisplaySceneSnapshotRequestStrategy_snapshotRequestsForSceneHandle_settings_snapshotRequestContext___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [[SBSceneSnapshotRequest alloc] initWithSize:a2 orientation:a3 userInterfaceStyle:1];
  [*(a1 + 32) addObject:v4];
}

- (void)snapshotRequestsForSceneHandle:settings:snapshotRequestContext:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"sceneHandle" object:? file:? lineNumber:? description:?];
}

- (void)snapshotRequestsForSceneHandle:settings:snapshotRequestContext:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"settings" object:? file:? lineNumber:? description:?];
}

@end