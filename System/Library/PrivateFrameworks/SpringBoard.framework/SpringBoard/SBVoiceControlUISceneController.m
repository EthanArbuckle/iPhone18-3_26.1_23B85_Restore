@interface SBVoiceControlUISceneController
+ (id)_setupInfo;
@end

@implementation SBVoiceControlUISceneController

+ (id)_setupInfo
{
  v6[7] = *MEMORY[0x277D85DE8];
  v5[0] = @"class";
  v6[0] = objc_opt_class();
  v5[1] = @"enabled";
  v2 = [MEMORY[0x277CCABB0] numberWithBool:_os_feature_enabled_impl()];
  v6[1] = v2;
  v6[2] = MEMORY[0x277CBEC38];
  v5[2] = @"isDaemon";
  v5[3] = @"jobLabel";
  v6[3] = @"com.apple.commandandcontrol";
  v6[4] = &unk_28336F1B0;
  v5[4] = @"hostLevel";
  v5[5] = @"traitsRole";
  v5[6] = @"workspaceID";
  v6[5] = @"SBTraitsParticipantRoleAXVoiceControlUI";
  v6[6] = @"com.apple.SpringBoard.SceneWorkspace.VoiceControlUI";
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:7];

  return v3;
}

@end