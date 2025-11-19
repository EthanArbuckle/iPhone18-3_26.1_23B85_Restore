@interface SBEyedropperUISceneController
+ (id)_setupInfo;
@end

@implementation SBEyedropperUISceneController

+ (id)_setupInfo
{
  v5[6] = *MEMORY[0x277D85DE8];
  v4[0] = @"class";
  v5[0] = objc_opt_class();
  v5[1] = MEMORY[0x277CBEC38];
  v4[1] = @"enabled";
  v4[2] = @"isDaemon";
  v5[2] = MEMORY[0x277CBEC38];
  v5[3] = @"com.apple.uikit.eyedropperd";
  v4[3] = @"jobLabel";
  v4[4] = @"traitsRole";
  v4[5] = @"workspaceID";
  v5[4] = @"SBTraitsParticipantRoleEyedropperUI";
  v5[5] = @"com.apple.SpringBoard.SceneWorkspace.EyedropperUI";
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:6];

  return v2;
}

@end