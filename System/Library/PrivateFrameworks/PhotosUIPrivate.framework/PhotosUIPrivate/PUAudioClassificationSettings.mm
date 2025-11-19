@interface PUAudioClassificationSettings
+ (PUAudioClassificationSettings)sharedInstance;
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation PUAudioClassificationSettings

- (void)setDefaultValues
{
  v2.receiver = self;
  v2.super_class = PUAudioClassificationSettings;
  [(PTSettings *)&v2 setDefaultValues];
}

+ (id)settingsControllerModule
{
  v10[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69C6638];
  v3 = [MEMORY[0x1E69C65E8] px_rowWithTitle:@"Browse" protoViewControllerFactoryClassName:@"PXProtoAudioClassificationBrowserViewControllerFactory"];
  v9 = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v9 count:1];
  v5 = [v2 sectionWithRows:v4];
  v10[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  v7 = [v2 moduleWithTitle:@"Audio Classification" contents:v6];

  return v7;
}

+ (PUAudioClassificationSettings)sharedInstance
{
  if (sharedInstance_onceToken_94619 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_94619, &__block_literal_global_94620);
  }

  v3 = sharedInstance_sharedInstance_94621;

  return v3;
}

void __47__PUAudioClassificationSettings_sharedInstance__block_invoke()
{
  v2 = +[PURootSettings sharedInstance];
  v0 = [v2 audioClassificationSettings];
  v1 = sharedInstance_sharedInstance_94621;
  sharedInstance_sharedInstance_94621 = v0;
}

@end