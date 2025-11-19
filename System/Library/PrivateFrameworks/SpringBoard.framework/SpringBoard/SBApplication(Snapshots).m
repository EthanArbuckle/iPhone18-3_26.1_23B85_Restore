@interface SBApplication(Snapshots)
@end

@implementation SBApplication(Snapshots)

- (void)saveSuspendSnapshot:()Snapshots forSceneHandle:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBApplication+Snapshots.m" lineNumber:168 description:{@"Invalid parameter not satisfying: %@", @"sceneSnapshot"}];
}

- (void)createDownscaledVariantForSnapshot:()Snapshots sceneHandle:scaleFactor:didSaveImage:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBApplication+Snapshots.m" lineNumber:237 description:@"Can't create a downscaled variant for already downscaled snapshot."];
}

- (void)_xbactivity_saveSnapshotForSceneHandle:()Snapshots context:completion:.cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = [a2 sceneID];
  v7 = 138543874;
  v8 = a1;
  v9 = 2114;
  v10 = v6;
  v11 = 2114;
  v12 = a2;
  _os_log_error_impl(&dword_21ED4E000, a3, OS_LOG_TYPE_ERROR, "Unable to take scene snapshot due to sceneHandle sceneID: %{public}@: mismatch with snapshotContext sceneID: %{public}@ for snapshotContext: %{public}@", &v7, 0x20u);
}

- (void)_xbactivity_saveSnapshotForSceneHandle:()Snapshots context:completion:.cold.3(void *a1, uint64_t a2, NSObject *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = [a1 bundleIdentifier];
  OUTLINED_FUNCTION_1_1();
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&dword_21ED4E000, a3, OS_LOG_TYPE_ERROR, "[%{public}@] unable to snapshot scene: %@", v6, 0x16u);
}

@end