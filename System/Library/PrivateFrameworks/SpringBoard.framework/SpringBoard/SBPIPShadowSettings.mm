@interface SBPIPShadowSettings
+ (id)settingsControllerModule;
@end

@implementation SBPIPShadowSettings

+ (id)settingsControllerModule
{
  v12[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D43210];
  v3 = [SBDropShadowSettings moduleWithSectionTitle:@"Body Shadow"];
  v4 = [v2 submoduleWithModule:v3 childSettingsKeyPath:@"bodyShadowSettings"];

  v5 = MEMORY[0x277D43210];
  v6 = [SBDropShadowSettings moduleWithSectionTitle:@"Tab Shadow"];
  v7 = [v5 submoduleWithModule:v6 childSettingsKeyPath:@"tabShadowSettings"];

  v8 = MEMORY[0x277D43210];
  v12[0] = v4;
  v12[1] = v7;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];
  v10 = [v8 moduleWithTitle:@"Drop Shadow" contents:v9];

  return v10;
}

@end