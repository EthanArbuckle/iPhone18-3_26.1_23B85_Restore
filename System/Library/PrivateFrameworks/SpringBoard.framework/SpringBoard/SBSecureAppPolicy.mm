@interface SBSecureAppPolicy
+ (BOOL)shouldAlwaysShowSecureSceneForApp:(id)app;
@end

@implementation SBSecureAppPolicy

+ (BOOL)shouldAlwaysShowSecureSceneForApp:(id)app
{
  v3 = shouldAlwaysShowSecureSceneForApp__onceToken;
  appCopy = app;
  if (v3 != -1)
  {
    +[SBSecureAppPolicy shouldAlwaysShowSecureSceneForApp:];
  }

  v5 = shouldAlwaysShowSecureSceneForApp__bundleIDsOfAppsToShowSecureScene;
  bundleIdentifier = [appCopy bundleIdentifier];

  v7 = [v5 containsObject:bundleIdentifier];
  return v7;
}

void __55__SBSecureAppPolicy_shouldAlwaysShowSecureSceneForApp___block_invoke()
{
  v4[9] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v4[0] = @"com.apple.Maps";
  v4[1] = @"com.apple.purplebuddy";
  v4[2] = @"com.apple.VirtualDisplayTest";
  v4[3] = @"com.apple.mobilenotes";
  v4[4] = @"com.apple.VoiceMemos";
  v4[5] = @"com.apple.TVRemoteUIService";
  v4[6] = @"com.apple.ContinuityCaptureShieldUI";
  v4[7] = @"com.apple.ContinuitySingShieldUI";
  v4[8] = @"com.apple.Translate";
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:9];
  v2 = [v0 setWithArray:v1];
  v3 = shouldAlwaysShowSecureSceneForApp__bundleIDsOfAppsToShowSecureScene;
  shouldAlwaysShowSecureSceneForApp__bundleIDsOfAppsToShowSecureScene = v2;
}

@end