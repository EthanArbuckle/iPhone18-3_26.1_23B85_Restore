@interface SBApplication(DefaultImage)
@end

@implementation SBApplication(DefaultImage)

- (void)_snapshotsWithImageName:()DefaultImage sceneHandle:referenceSize:requireExactSize:launchingScale:contentTypeMask:statusBarStateMask:launchingOrientation:contentOverridesContext:userInterfaceStyle:displayEdgeInfo:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBApplication+DefaultImage.m" lineNumber:176 description:@"Scene ID argument is required for getting a snapshot image."];
}

- (void)_snapshotsWithImageName:()DefaultImage sceneHandle:referenceSize:requireExactSize:launchingScale:contentTypeMask:statusBarStateMask:launchingOrientation:contentOverridesContext:userInterfaceStyle:displayEdgeInfo:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBApplication+DefaultImage.m" lineNumber:177 description:@"exact size match can't be zero"];
}

- (void)_snapshotsWithImageName:()DefaultImage sceneHandle:referenceSize:requireExactSize:launchingScale:contentTypeMask:statusBarStateMask:launchingOrientation:contentOverridesContext:userInterfaceStyle:displayEdgeInfo:.cold.3(void *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = [a1 bundleIdentifier];
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_ERROR, "A snapshot was requested for bundleID: <%{public}@> when the manifest for the app is nil.", v4, 0xCu);
}

@end