@interface SBOverlayUISceneController
+ (id)_setupInfo;
- (BOOL)_isAllowedToRecreateSceneOnConnectingWindowScene:(id)a3;
- (id)_subterraneanSceneIdentifierForWindowScene:(id)a3;
- (void)windowSceneDidConnect:(id)a3;
@end

@implementation SBOverlayUISceneController

+ (id)_setupInfo
{
  v5[5] = *MEMORY[0x277D85DE8];
  v4[0] = @"class";
  v5[0] = objc_opt_class();
  v5[1] = MEMORY[0x277CBEC38];
  v4[1] = @"enabled";
  v4[2] = @"jobLabel";
  v5[2] = @"com.apple.UIKit.OverlayUI";
  v5[3] = @"SBTraitsParticipantRoleOverlayUI";
  v4[3] = @"traitsRole";
  v4[4] = @"workspaceID";
  v5[4] = @"com.apple.SpringBoard.SceneWorkspace.OverlayUI";
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:5];

  return v2;
}

- (void)windowSceneDidConnect:(id)a3
{
  v10.receiver = self;
  v10.super_class = SBOverlayUISceneController;
  v4 = a3;
  [(SBSystemUISceneController *)&v10 windowSceneDidConnect:v4];
  v5 = objc_alloc_init(MEMORY[0x277D75980]);
  v6 = objc_alloc_init(MEMORY[0x277D75180]);
  [v5 setSpecification:{v6, v10.receiver, v10.super_class}];

  v7 = [(SBOverlayUISceneController *)self _subterraneanSceneIdentifierForWindowScene:v4];
  [v5 setIdentifier:v7];

  v8 = [(SBSystemUISceneController *)self _newSceneControllerForWindowScene:v4 sceneRequestOptions:v5 traitsRole:@"SBTraitsParticipantRoleSubterraneanOverlayUI" level:*MEMORY[0x277D772B0] + -3.0 + -1.0];
  subterraneanSceneController = self->_subterraneanSceneController;
  self->_subterraneanSceneController = v8;
}

- (BOOL)_isAllowedToRecreateSceneOnConnectingWindowScene:(id)a3
{
  v3 = [a3 identifier];
  v4 = [v3 containsString:@"Subterranean"];

  return v4 ^ 1;
}

- (id)_subterraneanSceneIdentifierForWindowScene:(id)a3
{
  v4 = a3;
  v5 = [(SBSystemUISceneController *)self sceneWorkspaceController];
  v6 = [v5 sceneWorkspaceIdentifier];
  v7 = [v6 componentsSeparatedByString:@"."];
  v8 = [v7 lastObject];

  v9 = MEMORY[0x277CCACA8];
  v10 = [v4 _fbsDisplayIdentity];

  v11 = [v10 description];
  v12 = [v9 stringWithFormat:@"SUIS-%@:[%@] - Subterranean", v8, v11];

  return v12;
}

@end