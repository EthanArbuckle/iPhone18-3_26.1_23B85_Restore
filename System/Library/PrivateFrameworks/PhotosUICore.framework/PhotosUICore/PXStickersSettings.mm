@interface PXStickersSettings
+ (id)settingsControllerModule;
+ (id)sharedInstance;
@end

@implementation PXStickersSettings

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_18412 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_18412, &__block_literal_global_18413);
  }

  v3 = sharedInstance_sharedInstance_18414;

  return v3;
}

void __36__PXStickersSettings_sharedInstance__block_invoke()
{
  v2 = +[PXRootSettings sharedInstance];
  v0 = [v2 stickersSettings];
  v1 = sharedInstance_sharedInstance_18414;
  sharedInstance_sharedInstance_18414 = v0;
}

+ (id)settingsControllerModule
{
  v19[2] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
  v4 = MEMORY[0x1E69C6638];
  v5 = MEMORY[0x1E69C65E8];
  v6 = MEMORY[0x1E69C6658];
  v7 = _ReviewActionHandlerForType(v3, 0);
  v8 = [v6 actionWithHandler:v7];
  v9 = [v5 rowWithTitle:@"Review Sticker Confidence Score" action:v8];
  v19[0] = v9;
  v10 = MEMORY[0x1E69C65E8];
  v11 = MEMORY[0x1E69C6658];
  v12 = _ReviewActionHandlerForType(v3, 1);
  v13 = [v11 actionWithHandler:v12];
  v14 = [v10 rowWithTitle:@"Review Live Sticker Suggestion Score" action:v13];
  v19[1] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
  v16 = [v4 sectionWithRows:v15 title:@"Review"];
  [v2 addObject:v16];

  v17 = [MEMORY[0x1E69C6638] moduleWithTitle:@"Stickers" contents:v2];

  return v17;
}

@end