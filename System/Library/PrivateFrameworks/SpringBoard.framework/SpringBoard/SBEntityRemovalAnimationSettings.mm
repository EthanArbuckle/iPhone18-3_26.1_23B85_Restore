@interface SBEntityRemovalAnimationSettings
+ (id)settingsControllerModule;
@end

@implementation SBEntityRemovalAnimationSettings

+ (id)settingsControllerModule
{
  v19[9] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D43210];
  v17 = [MEMORY[0x277D431D8] rowWithTitle:@"Medusa — Delete" childSettingsKeyPath:@"medusaDeleteIntentAnimationSettings"];
  v19[0] = v17;
  v3 = [MEMORY[0x277D431D8] rowWithTitle:@"Medusa — Commit" childSettingsKeyPath:@"medusaCommitIntentAnimationSettings"];
  v19[1] = v3;
  v4 = [MEMORY[0x277D431D8] rowWithTitle:@"Medusa — Decline" childSettingsKeyPath:@"medusaDeclineIntentAnimationSettings"];
  v19[2] = v4;
  v5 = [MEMORY[0x277D431D8] rowWithTitle:@"Floating — Delete" childSettingsKeyPath:@"floatingDeleteIntentAnimationSettings"];
  v19[3] = v5;
  v6 = [MEMORY[0x277D431D8] rowWithTitle:@"Floating — Commit" childSettingsKeyPath:@"floatingCommitIntentAnimationSettings"];
  v19[4] = v6;
  v7 = [MEMORY[0x277D431D8] rowWithTitle:@"Floating — Decline" childSettingsKeyPath:@"floatingDeclineIntentAnimationSettings"];
  v19[5] = v7;
  v8 = [MEMORY[0x277D431D8] rowWithTitle:@"To Home Screen — Delete" childSettingsKeyPath:@"dosidoDeleteIntentAnimationSettings"];
  v19[6] = v8;
  v9 = [MEMORY[0x277D431D8] rowWithTitle:@"To Home Screen — Commit" childSettingsKeyPath:@"dosidoCommitIntentAnimationSettings"];
  v19[7] = v9;
  v10 = [MEMORY[0x277D431D8] rowWithTitle:@"To Home Screen — Decline" childSettingsKeyPath:@"dosidoDeclineIntentAnimationSettings"];
  v19[8] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:9];
  v12 = [v2 sectionWithRows:v11 title:@"App Scene Entity Removal"];

  v13 = MEMORY[0x277D43210];
  v18 = v12;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v18 count:1];
  v15 = [v13 moduleWithTitle:@"App Scene Entity Removal Animations" contents:v14];

  return v15;
}

@end