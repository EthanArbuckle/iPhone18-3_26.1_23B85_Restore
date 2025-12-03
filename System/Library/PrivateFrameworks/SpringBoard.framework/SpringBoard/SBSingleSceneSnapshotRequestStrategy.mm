@interface SBSingleSceneSnapshotRequestStrategy
- (id)snapshotRequestsForSceneHandle:(id)handle settings:(id)settings snapshotRequestContext:(id)context;
@end

@implementation SBSingleSceneSnapshotRequestStrategy

- (id)snapshotRequestsForSceneHandle:(id)handle settings:(id)settings snapshotRequestContext:(id)context
{
  v13[1] = *MEMORY[0x277D85DE8];
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
    [SBSingleSceneSnapshotRequestStrategy snapshotRequestsForSceneHandle:settings:snapshotRequestContext:];
    if (settingsCopy)
    {
      goto LABEL_3;
    }
  }

  [SBSingleSceneSnapshotRequestStrategy snapshotRequestsForSceneHandle:settings:snapshotRequestContext:];
LABEL_3:
  if ([settingsCopy isUISubclass])
  {
    v10 = [[SBSceneSnapshotRequest alloc] initWithSize:0 orientation:0 userInterfaceStyle:0];
    v13[0] = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  }

  else
  {
    v11 = MEMORY[0x277CBEBF8];
  }

  return v11;
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