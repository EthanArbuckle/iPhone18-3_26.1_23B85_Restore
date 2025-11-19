@interface PXMacSyncedAlbumsSettings
+ (PXMacSyncedAlbumsSettings)sharedInstance;
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation PXMacSyncedAlbumsSettings

- (void)setDefaultValues
{
  v3.receiver = self;
  v3.super_class = PXMacSyncedAlbumsSettings;
  [(PTSettings *)&v3 setDefaultValues];
  [(PXMacSyncedAlbumsSettings *)self setSimulationMode:0];
}

+ (id)settingsControllerModule
{
  v12[1] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = MEMORY[0x1E69C6638];
  v4 = MEMORY[0x1E69C65F8];
  v5 = NSStringFromSelector(sel_simulationMode);
  v6 = [v4 rowWithTitle:@"Simulation" valueKeyPath:v5];
  v7 = [v6 possibleValues:&unk_1F1911128 titles:&unk_1F1911140];
  v12[0] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  v9 = [v3 sectionWithRows:v8 title:@"General"];
  [v2 addObject:v9];

  v10 = [MEMORY[0x1E69C6638] moduleWithTitle:@"Mac Synced Albums" contents:v2];

  return v10;
}

+ (PXMacSyncedAlbumsSettings)sharedInstance
{
  if (sharedInstance_onceToken_167103 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_167103, &__block_literal_global_167104);
  }

  v3 = sharedInstance_sharedInstance_167105;

  return v3;
}

void __43__PXMacSyncedAlbumsSettings_sharedInstance__block_invoke()
{
  v2 = +[PXRootSettings sharedInstance];
  v0 = [v2 macSyncedAlbumsSettings];
  v1 = sharedInstance_sharedInstance_167105;
  sharedInstance_sharedInstance_167105 = v0;
}

@end