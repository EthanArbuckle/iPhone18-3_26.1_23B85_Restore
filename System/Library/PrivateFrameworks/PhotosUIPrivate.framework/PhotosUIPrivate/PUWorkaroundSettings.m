@interface PUWorkaroundSettings
+ (PUWorkaroundSettings)sharedInstance;
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation PUWorkaroundSettings

- (void)setDefaultValues
{
  [(PUWorkaroundSettings *)self setAddRemoveVideoLayer:1];
  [(PUWorkaroundSettings *)self setShouldWorkAround54502886:1];
  [(PUWorkaroundSettings *)self setShouldWorkAround124016315:1];

  [(PUWorkaroundSettings *)self setShouldWorkAround124981589:1];
}

+ (id)settingsControllerModule
{
  v22[4] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69C6638];
  v3 = MEMORY[0x1E69C66A8];
  v4 = NSStringFromSelector(sel_addRemoveVideoLayer);
  v5 = [v3 rowWithTitle:@"Remove/add video layer on appearance" valueKeyPath:v4];
  v22[0] = v5;
  v6 = MEMORY[0x1E69C66A8];
  v7 = NSStringFromSelector(sel_shouldWorkAround54502886);
  v8 = [v6 rowWithTitle:@"54502886 (1-up Dismissal to Camera)" valueKeyPath:v7];
  v22[1] = v8;
  v9 = MEMORY[0x1E69C66A8];
  v10 = NSStringFromSelector(sel_shouldWorkAround124016315);
  v11 = [v9 rowWithTitle:@"124016315 (Text Selection Jump)" valueKeyPath:v10];
  v22[2] = v11;
  v12 = MEMORY[0x1E69C66A8];
  v13 = NSStringFromSelector(sel_shouldWorkAround124981589);
  v14 = [v12 rowWithTitle:@"124981589 (VK contents rect)" valueKeyPath:v13];
  v22[3] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:4];
  v16 = [v2 sectionWithRows:v15];

  v17 = MEMORY[0x1E69C6638];
  v21 = v16;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v21 count:1];
  v19 = [v17 moduleWithTitle:@"Workaround" contents:v18];

  return v19;
}

+ (PUWorkaroundSettings)sharedInstance
{
  if (sharedInstance_onceToken_95855 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_95855, &__block_literal_global_95856);
  }

  v3 = sharedInstance_sharedInstance_95857;

  return v3;
}

void __38__PUWorkaroundSettings_sharedInstance__block_invoke()
{
  v2 = +[PURootSettings sharedInstance];
  v0 = [v2 workaroundSettings];
  v1 = sharedInstance_sharedInstance_95857;
  sharedInstance_sharedInstance_95857 = v0;
}

@end