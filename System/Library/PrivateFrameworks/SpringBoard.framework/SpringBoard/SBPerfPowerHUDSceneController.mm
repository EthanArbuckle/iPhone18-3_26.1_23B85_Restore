@interface SBPerfPowerHUDSceneController
+ (id)_setupInfo;
@end

@implementation SBPerfPowerHUDSceneController

+ (id)_setupInfo
{
  v6[6] = *MEMORY[0x277D85DE8];
  v5[0] = @"class";
  v6[0] = objc_opt_class();
  v6[1] = MEMORY[0x277CBEC38];
  v5[1] = @"enabled";
  v5[2] = @"jobLabel";
  v6[2] = @"com.apple.PerfPowerHUD";
  v6[3] = @"SBTraitsParticipantRolePerfPowerHUD";
  v5[3] = @"traitsRole";
  v5[4] = @"hostLevel";
  v2 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D772B0] + 5.0 + -1.0];
  v5[5] = @"workspaceID";
  v6[4] = v2;
  v6[5] = @"com.apple.SpringBoard.SceneWorkspace.PerfPowerHUD";
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:6];

  return v3;
}

@end