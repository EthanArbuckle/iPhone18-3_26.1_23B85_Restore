@interface SBInternalPerfPowerHUDSceneController
+ (id)_setupInfo;
- (FBScene)backlightParticipantScene;
- (id)_newSceneControllerForWindowScene:(id)a3 sceneRequestOptions:(id)a4 traitsRole:(id)a5 level:(double)a6;
- (id)scenesForBacklightSession;
- (void)_configureBacklightEnvironmentSceneProviderIfNecessary;
- (void)windowSceneDidConnect:(id)a3;
- (void)windowSceneDidDisconnect:(id)a3;
@end

@implementation SBInternalPerfPowerHUDSceneController

- (id)scenesForBacklightSession
{
  WeakRetained = objc_loadWeakRetained(&self->_backlightParticipantScene);
  if ([WeakRetained isValid])
  {
    [MEMORY[0x277CBEB98] setWithObject:WeakRetained];
  }

  else
  {
    [MEMORY[0x277CBEB98] set];
  }
  v3 = ;

  return v3;
}

- (void)_configureBacklightEnvironmentSceneProviderIfNecessary
{
  if (!self->_registeredBacklightSceneProvider)
  {
    v3 = [SBApp backlightEnvironmentSessionProvider];
    [v3 registerBacklightEnvironmentSceneProvider:self];

    self->_registeredBacklightSceneProvider = 1;
  }
}

- (void)windowSceneDidConnect:(id)a3
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_backlightParticipantScene);

  if (!WeakRetained)
  {
    v5 = [(SBSystemUISceneController *)self _newAppSceneRequestOptionsForWindowScene:v6 withBlueprintOptions:0];
  }

  [(SBInternalPerfPowerHUDSceneController *)self _configureBacklightEnvironmentSceneProviderIfNecessary];
}

- (void)windowSceneDidDisconnect:(id)a3
{
  v5.receiver = self;
  v5.super_class = SBInternalPerfPowerHUDSceneController;
  [(SBSystemUISceneController *)&v5 windowSceneDidDisconnect:a3];
  objc_storeWeak(&self->_backlightParticipantScene, 0);
  v4 = [SBApp backlightEnvironmentSessionProvider];
  [v4 unregisterBacklightEnvironmentSceneProvider:self];

  self->_registeredBacklightSceneProvider = 0;
}

+ (id)_setupInfo
{
  v6[7] = *MEMORY[0x277D85DE8];
  v5[0] = @"class";
  v6[0] = objc_opt_class();
  v6[1] = MEMORY[0x277CBEC38];
  v5[1] = @"enabled";
  v5[2] = @"jobLabel";
  v6[2] = @"com.apple.internal.PerfPowerHUD";
  v6[3] = @"SBTraitsParticipantRoleInternalPerfPowerHUD";
  v5[3] = @"traitsRole";
  v5[4] = @"hostLevel";
  v2 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D76EE8] + 260.0];
  v6[4] = v2;
  v6[5] = &unk_283370970;
  v5[5] = @"vendingStrategy";
  v5[6] = @"workspaceID";
  v6[6] = @"com.apple.SpringBoard.SceneWorkspace.InternalPerfPowerHUD";
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:7];

  return v3;
}

- (id)_newSceneControllerForWindowScene:(id)a3 sceneRequestOptions:(id)a4 traitsRole:(id)a5 level:(double)a6
{
  v11.receiver = self;
  v11.super_class = SBInternalPerfPowerHUDSceneController;
  v7 = [(SBSystemUISceneController *)&v11 _newSceneControllerForWindowScene:a3 sceneRequestOptions:a4 traitsRole:a5 level:a6];
  v8 = [v7 scene];
  objc_storeWeak(&self->_backlightParticipantScene, v8);

  v9 = [SBApp backlightEnvironmentSessionProvider];
  [v9 invalidateBacklightScenesForProvider:self];

  return v7;
}

- (FBScene)backlightParticipantScene
{
  WeakRetained = objc_loadWeakRetained(&self->_backlightParticipantScene);

  return WeakRetained;
}

@end