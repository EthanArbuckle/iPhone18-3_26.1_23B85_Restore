@interface SBAudioHUDSceneController
+ (id)_setupInfo;
@end

@implementation SBAudioHUDSceneController

+ (id)_setupInfo
{
  v6[7] = *MEMORY[0x277D85DE8];
  v5[0] = @"class";
  v6[0] = objc_opt_class();
  v6[1] = MEMORY[0x277CBEC38];
  v5[1] = @"enabled";
  v5[2] = @"isDaemon";
  v6[2] = MEMORY[0x277CBEC38];
  v6[3] = @"com.apple.internal.AudioHUD";
  v5[3] = @"jobLabel";
  v5[4] = @"traitsRole";
  v6[4] = @"SBTraitsParticipantRoleAudioHUD";
  v5[5] = @"hostLevel";
  v2 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D76EE8] + 260.0];
  v5[6] = @"workspaceID";
  v6[5] = v2;
  v6[6] = @"com.apple.SpringBoard.SceneWorkspace.AudioHUD";
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:7];

  return v3;
}

@end