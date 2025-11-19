@interface SBPrototypeToolsSceneController
+ (id)_setupInfo;
- (id)_currentDisplayConfiguration;
- (id)_currentTraitsPipelineManager;
- (void)focusContextDidChange:(id)a3;
@end

@implementation SBPrototypeToolsSceneController

+ (id)_setupInfo
{
  v6[9] = *MEMORY[0x277D85DE8];
  v5[0] = @"class";
  v6[0] = objc_opt_class();
  v6[1] = MEMORY[0x277CBEC38];
  v5[1] = @"enabled";
  v5[2] = @"isDaemon";
  v6[2] = MEMORY[0x277CBEC38];
  v6[3] = @"com.apple.internal.prototyped";
  v5[3] = @"jobLabel";
  v5[4] = @"traitsRole";
  v6[4] = @"SBTraitsParticipantRolePrototypeTools";
  v5[5] = @"hostLevel";
  v2 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D76EE8] + 265.0];
  v6[5] = v2;
  v6[6] = @"com.apple.SpringBoard.SceneWorkspace.PrototypeTools";
  v5[6] = @"workspaceID";
  v5[7] = @"vendingStrategy";
  v5[8] = @"presentationStyle";
  v6[7] = &unk_283371660;
  v6[8] = &unk_283371678;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:9];

  return v3;
}

- (void)focusContextDidChange:(id)a3
{
  v4 = a3;
  v3 = v4;
  BSDispatchMain();
}

void __57__SBPrototypeToolsSceneController_focusContextDidChange___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) defaultPresenter];
  v3 = [v2 targetWindowScene];
  v4 = [v3 _FBSScene];
  v9 = [v4 identityToken];

  v5 = [*(a1 + 40) sceneIdentity];
  if ([v5 isEqual:v9])
  {
    v6 = *(a1 + 40);
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v8 = [*(a1 + 32) _currentTraitsPipelineManager];
  [v8 setKeyboardFocusContext:v7];
}

- (id)_currentTraitsPipelineManager
{
  v3 = [SBApp windowSceneManager];
  v4 = [(SBPrototypeToolsSceneController *)self _currentDisplayConfiguration];
  v5 = [v4 identity];
  v6 = [v3 windowSceneForDisplayIdentity:v5];
  v7 = [v6 traitsPipelineManager];

  return v7;
}

- (id)_currentDisplayConfiguration
{
  v3 = [(SBSystemUISceneController *)self defaultPresenter];
  v4 = [v3 targetWindowScene];

  v5 = [(SBSystemUISceneController *)self defaultPresenter];
  v6 = [v5 targetDisplayConfiguration];

  if (v4)
  {
    v7 = [v4 _sbDisplayConfiguration];
  }

  else
  {
    v7 = v6;
  }

  v8 = v7;

  return v8;
}

@end