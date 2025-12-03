@interface SBInternalPerfPowerHUDSceneController
+ (id)_setupInfo;
- (FBScene)backlightParticipantScene;
- (id)_newSceneControllerForWindowScene:(id)scene sceneRequestOptions:(id)options traitsRole:(id)role level:(double)level;
- (id)scenesForBacklightSession;
- (void)_configureBacklightEnvironmentSceneProviderIfNecessary;
- (void)windowSceneDidConnect:(id)connect;
- (void)windowSceneDidDisconnect:(id)disconnect;
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
    backlightEnvironmentSessionProvider = [SBApp backlightEnvironmentSessionProvider];
    [backlightEnvironmentSessionProvider registerBacklightEnvironmentSceneProvider:self];

    self->_registeredBacklightSceneProvider = 1;
  }
}

- (void)windowSceneDidConnect:(id)connect
{
  connectCopy = connect;
  WeakRetained = objc_loadWeakRetained(&self->_backlightParticipantScene);

  if (!WeakRetained)
  {
    v5 = [(SBSystemUISceneController *)self _newAppSceneRequestOptionsForWindowScene:connectCopy withBlueprintOptions:0];
  }

  [(SBInternalPerfPowerHUDSceneController *)self _configureBacklightEnvironmentSceneProviderIfNecessary];
}

- (void)windowSceneDidDisconnect:(id)disconnect
{
  v5.receiver = self;
  v5.super_class = SBInternalPerfPowerHUDSceneController;
  [(SBSystemUISceneController *)&v5 windowSceneDidDisconnect:disconnect];
  objc_storeWeak(&self->_backlightParticipantScene, 0);
  backlightEnvironmentSessionProvider = [SBApp backlightEnvironmentSessionProvider];
  [backlightEnvironmentSessionProvider unregisterBacklightEnvironmentSceneProvider:self];

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

- (id)_newSceneControllerForWindowScene:(id)scene sceneRequestOptions:(id)options traitsRole:(id)role level:(double)level
{
  v11.receiver = self;
  v11.super_class = SBInternalPerfPowerHUDSceneController;
  v7 = [(SBSystemUISceneController *)&v11 _newSceneControllerForWindowScene:scene sceneRequestOptions:options traitsRole:role level:level];
  scene = [v7 scene];
  objc_storeWeak(&self->_backlightParticipantScene, scene);

  backlightEnvironmentSessionProvider = [SBApp backlightEnvironmentSessionProvider];
  [backlightEnvironmentSessionProvider invalidateBacklightScenesForProvider:self];

  return v7;
}

- (FBScene)backlightParticipantScene
{
  WeakRetained = objc_loadWeakRetained(&self->_backlightParticipantScene);

  return WeakRetained;
}

@end