@interface PUWelcomeSettings
+ (PUWelcomeSettings)sharedInstance;
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation PUWelcomeSettings

- (void)setDefaultValues
{
  v3.receiver = self;
  v3.super_class = PUWelcomeSettings;
  [(PTSettings *)&v3 setDefaultValues];
  [(PUWelcomeSettings *)self setWhatsNewBehavior:2];
  [(PUWelcomeSettings *)self setCloudPhotoWelcomeBehavior:2];
}

+ (id)settingsControllerModule
{
  v26[2] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69C6638];
  v3 = MEMORY[0x1E69C65F8];
  v4 = NSStringFromSelector(sel_whatsNewBehavior);
  v5 = [v3 rowWithTitle:@"What‘s New" valueKeyPath:v4];
  v6 = [v5 px_possibleValues:&unk_1F2B7D8B0 formatter:&__block_literal_global_13];
  v26[0] = v6;
  v7 = MEMORY[0x1E69C65F8];
  v8 = NSStringFromSelector(sel_cloudPhotoWelcomeBehavior);
  v9 = [v7 rowWithTitle:@"Cloud Photo Welcome" valueKeyPath:v8];
  v10 = [v9 px_possibleValues:&unk_1F2B7D8C8 formatter:&__block_literal_global_32_95091];
  v26[1] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];
  v12 = [v2 sectionWithRows:v11 title:@"App launch prompts"];

  v13 = MEMORY[0x1E69C6638];
  v14 = [MEMORY[0x1E69C65E8] pu_rowWithTitle:@"Reset All Last Shown Info" action:&__block_literal_global_43];
  v25[0] = v14;
  v15 = MEMORY[0x1E69C65E8];
  v16 = [MEMORY[0x1E69C6640] actionWithSettingsKeyPath:0];
  v17 = [v15 rowWithTitle:@"Restore Defaults" action:v16];
  v25[1] = v17;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];
  v19 = [v13 sectionWithRows:v18];

  v20 = MEMORY[0x1E69C6638];
  v24[0] = v12;
  v24[1] = v19;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2];
  v22 = [v20 moduleWithTitle:@"Welcome Settings" contents:v21];

  return v22;
}

uint64_t __45__PUWelcomeSettings_settingsControllerModule__block_invoke_3()
{
  v0 = +[PUWelcomeViewControllersManager defaultManager];
  [v0 resetAllLastPresentationInfos];

  v1 = MEMORY[0x1E69C35A0];

  return [v1 resetLastShownInfo];
}

__CFString *__45__PUWelcomeSettings_settingsControllerModule__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 integerValue];
  v3 = @"Always Show";
  if (v2 == 1)
  {
    v3 = @"Never Show";
  }

  if (v2 == 2)
  {
    return @"Follow System Behavior";
  }

  else
  {
    return v3;
  }
}

__CFString *__45__PUWelcomeSettings_settingsControllerModule__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 integerValue];
  v3 = @"Always Show";
  if (v2 == 1)
  {
    v3 = @"Never Show";
  }

  if (v2 == 2)
  {
    return @"Follow System Behavior";
  }

  else
  {
    return v3;
  }
}

+ (PUWelcomeSettings)sharedInstance
{
  if (sharedInstance_onceToken_95129 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_95129, &__block_literal_global_95130);
  }

  v3 = sharedInstance_sharedInstance_95131;

  return v3;
}

void __35__PUWelcomeSettings_sharedInstance__block_invoke()
{
  v2 = +[PURootSettings sharedInstance];
  v0 = [v2 welcomeSettings];
  v1 = sharedInstance_sharedInstance_95131;
  sharedInstance_sharedInstance_95131 = v0;
}

@end