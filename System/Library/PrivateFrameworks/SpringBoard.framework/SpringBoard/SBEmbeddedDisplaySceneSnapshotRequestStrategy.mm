@interface SBEmbeddedDisplaySceneSnapshotRequestStrategy
- (id)snapshotRequestsForSceneHandle:(id)a3 settings:(id)a4 snapshotRequestContext:(id)a5;
@end

@implementation SBEmbeddedDisplaySceneSnapshotRequestStrategy

- (id)snapshotRequestsForSceneHandle:(id)a3 settings:(id)a4 snapshotRequestContext:(id)a5
{
  v36[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8)
  {
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_27:
    [SBEmbeddedDisplaySceneSnapshotRequestStrategy snapshotRequestsForSceneHandle:settings:snapshotRequestContext:];
    if (v10)
    {
      goto LABEL_4;
    }

    goto LABEL_28;
  }

  [SBEmbeddedDisplaySceneSnapshotRequestStrategy snapshotRequestsForSceneHandle:settings:snapshotRequestContext:];
  if (!v9)
  {
    goto LABEL_27;
  }

LABEL_3:
  if (v10)
  {
    goto LABEL_4;
  }

LABEL_28:
  [SBEmbeddedDisplaySceneSnapshotRequestStrategy snapshotRequestsForSceneHandle:settings:snapshotRequestContext:];
LABEL_4:
  v11 = [v10 sceneDisplayWindowManagementContext];
  v12 = [v10 sceneDisplayLayoutStateTransitionContext];
  v13 = [v12 fromLayoutState];

  v14 = [v10 sceneDisplayLayoutStateTransitionContext];
  v15 = [v14 toLayoutState];

  if (v13)
  {
    v16 = [v8 application];
    v17 = [v16 isMedusaCapable];

    if ((v17 & 1) == 0)
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
    if ([v11 isChamoisOrFlexibleWindowing])
    {
      v20[2](v20, 0, 0);
      v20[2](v20, 1, 5);
    }

    else
    {
      v33 = v19;
      v23 = [v8 sceneIdentifier];
      v24 = [v13 elementWithIdentifier:v23];
      v25 = [v24 layoutRole];

      if (v25 == 3)
      {
        v20[2](v20, 5, 4);
      }

      else
      {
        if (v25 != 4)
        {
          v31 = [v13 appLayout];
          v26 = [v15 appLayout];
          v27 = MEMORY[0x277CBEB98];
          v28 = [v31 allItems];
          v29 = [v27 setWithArray:v28];
          v32 = v26;
          LOBYTE(v26) = [v26 containsAnyItemFromSet:v29];

          if ((v26 & 1) != 0 || [v31 configuration] == 1)
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
    [SBEmbeddedDisplaySceneSnapshotRequestStrategy snapshotRequestsForSceneHandle:v8 settings:&v21->super snapshotRequestContext:?];
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