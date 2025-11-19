@interface PUSceneSettings
+ (PUSceneSettings)sharedInstance;
+ (id)settingsControllerModule;
@end

@implementation PUSceneSettings

+ (id)settingsControllerModule
{
  v10[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69C6638];
  v3 = [MEMORY[0x1E69C65E8] px_rowWithTitle:@"Scene Inspector" protoViewControllerFactoryClassName:@"PXProtoSceneDebugInspectorViewControllerFactory"];
  v9 = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v9 count:1];
  v5 = [v2 sectionWithRows:v4];
  v10[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  v7 = [v2 moduleWithTitle:@"Scenes" contents:v6];

  return v7;
}

+ (PUSceneSettings)sharedInstance
{
  if (sharedInstance_onceToken_76771 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_76771, &__block_literal_global_76772);
  }

  v3 = sharedInstance_sharedInstance_76773;

  return v3;
}

void __33__PUSceneSettings_sharedInstance__block_invoke()
{
  v2 = +[PURootSettings sharedInstance];
  v0 = [v2 sceneSettings];
  v1 = sharedInstance_sharedInstance_76773;
  sharedInstance_sharedInstance_76773 = v0;
}

@end