@interface SBLiveTranscriptionUISceneController
+ (id)_setupInfo;
@end

@implementation SBLiveTranscriptionUISceneController

+ (id)_setupInfo
{
  v7[6] = *MEMORY[0x277D85DE8];
  v6[0] = @"class";
  v7[0] = objc_opt_class();
  v6[1] = @"enabled";
  v2 = [MEMORY[0x277CCABB0] numberWithBool:_os_feature_enabled_impl()];
  v7[1] = v2;
  v7[2] = @"com.apple.livetranscriptionui";
  v6[2] = @"jobLabel";
  v6[3] = @"traitsRole";
  v7[3] = @"SBTraitsParticipantRoleLiveTranscriptionUI";
  v7[4] = @"com.apple.SpringBoard.SceneWorkspace.LiveTranscriptionUI";
  v6[4] = @"workspaceID";
  v6[5] = @"hostLevel";
  v3 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D76EB0] + 5.0 + -0.1];
  v7[5] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:6];

  return v4;
}

@end