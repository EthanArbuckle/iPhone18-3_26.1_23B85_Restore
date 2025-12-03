@interface SBEmbeddedDisplaySceneSnapshotRequestStrategy
- (id)snapshotRequestsForSceneHandle:(id)handle settings:(id)settings snapshotRequestContext:(id)context;
@end

@implementation SBEmbeddedDisplaySceneSnapshotRequestStrategy

- (id)snapshotRequestsForSceneHandle:(id)handle settings:(id)settings snapshotRequestContext:(id)context
{
  v36[1] = *MEMORY[0x277D85DE8];
  handleCopy = handle;
  settingsCopy = settings;
  contextCopy = context;
  if (handleCopy)
  {
    if (settingsCopy)
    {
      goto LABEL_3;
    }

LABEL_27:
    [SBEmbeddedDisplaySceneSnapshotRequestStrategy snapshotRequestsForSceneHandle:settings:snapshotRequestContext:];
    if (contextCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_28;
  }

  [SBEmbeddedDisplaySceneSnapshotRequestStrategy snapshotRequestsForSceneHandle:settings:snapshotRequestContext:];
  if (!settingsCopy)
  {
    goto LABEL_27;
  }

LABEL_3:
  if (contextCopy)
  {
    goto LABEL_4;
  }

LABEL_28:
  [SBEmbeddedDisplaySceneSnapshotRequestStrategy snapshotRequestsForSceneHandle:settings:snapshotRequestContext:];
LABEL_4:
  sceneDisplayWindowManagementContext = [contextCopy sceneDisplayWindowManagementContext];
  sceneDisplayLayoutStateTransitionContext = [contextCopy sceneDisplayLayoutStateTransitionContext];
  fromLayoutState = [sceneDisplayLayoutStateTransitionContext fromLayoutState];

  sceneDisplayLayoutStateTransitionContext2 = [contextCopy sceneDisplayLayoutStateTransitionContext];
  toLayoutState = [sceneDisplayLayoutStateTransitionContext2 toLayoutState];

  if (fromLayoutState)
  {
    application = [handleCopy application];
    isMedusaCapable = [application isMedusaCapable];

    if ((isMedusaCapable & 1) == 0)
    {
      v21 = [[SBSceneSnapshotRequest alloc] initWithSize:0 orientation:0 userInterfaceStyle:1];
      v36[0] = v21;
      v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:1];
      goto LABEL_23;
    }

    v18 = objc_opt_new();
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __112__SBEmbeddedDisplaySceneSnapshotRequestStrategy_snapshotRequestsForSceneHandle_settings_snapshotRequestContext___block_invoke;
    v34[3] = &unk_2783C1280;
    v19 = v18;
    v35 = v19;
    v20 = MEMORY[0x223D6F7F0](v34);
    if ([sceneDisplayWindowManagementContext isChamoisOrFlexibleWindowing])
    {
      v20[2](v20, 0, 0);
      v20[2](v20, 1, 5);
    }

    else
    {
      v33 = v19;
      sceneIdentifier = [handleCopy sceneIdentifier];
      v24 = [fromLayoutState elementWithIdentifier:sceneIdentifier];
      layoutRole = [v24 layoutRole];

      if (layoutRole == 3)
      {
        v20[2](v20, 5, 4);
      }

      else
      {
        if (layoutRole != 4)
        {
          appLayout = [fromLayoutState appLayout];
          appLayout2 = [toLayoutState appLayout];
          v27 = MEMORY[0x277CBEB98];
          allItems = [appLayout allItems];
          v29 = [v27 setWithArray:allItems];
          v32 = appLayout2;
          LOBYTE(appLayout2) = [appLayout2 containsAnyItemFromSet:v29];

          if ((appLayout2 & 1) != 0 || [appLayout configuration] == 1)
          {
            v20[2](v20, 3, 4);
            v20[2](v20, 4, 0);
          }

          else
          {
            v20[2](v20, 4, 4);
            v20[2](v20, 3, 4);
          }

          v19 = v33;

          goto LABEL_22;
        }

        v20[2](v20, 6, 4);
      }

      v19 = v33;
    }

LABEL_22:
    v21 = v19;

    v22 = v21;
    goto LABEL_23;
  }

  v21 = SBLogSceneSnapshots();
  if (os_log_type_enabled(&v21->super, OS_LOG_TYPE_ERROR))
  {
    [SBEmbeddedDisplaySceneSnapshotRequestStrategy snapshotRequestsForSceneHandle:handleCopy settings:&v21->super snapshotRequestContext:?];
  }

  v22 = MEMORY[0x277CBEBF8];
LABEL_23:

  return v22;
}

void __112__SBEmbeddedDisplaySceneSnapshotRequestStrategy_snapshotRequestsForSceneHandle_settings_snapshotRequestContext___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
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

- (void)snapshotRequestsForSceneHandle:settings:snapshotRequestContext:.cold.3()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"snapshotRequestContext" object:? file:? lineNumber:? description:?];
}

- (void)snapshotRequestsForSceneHandle:(uint64_t)a1 settings:(void *)a2 snapshotRequestContext:(NSObject *)a3 .cold.4(uint64_t a1, void *a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = [a2 sceneIdentifier];
  v6 = 138543618;
  v7 = a1;
  v8 = 2114;
  v9 = v5;
  _os_log_error_impl(&dword_21ED4E000, a3, OS_LOG_TYPE_ERROR, "%{public}@ [%{public}@] ERROR: Need fromLayoutState", &v6, 0x16u);
}

@end