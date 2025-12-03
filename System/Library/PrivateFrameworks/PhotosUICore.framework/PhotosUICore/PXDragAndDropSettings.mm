@interface PXDragAndDropSettings
+ (PXDragAndDropSettings)sharedInstance;
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation PXDragAndDropSettings

- (void)setDefaultValues
{
  v3.receiver = self;
  v3.super_class = PXDragAndDropSettings;
  [(PTSettings *)&v3 setDefaultValues];
  [(PXDragAndDropSettings *)self setUseData:0];
  [(PXDragAndDropSettings *)self setUseFileProvider:1];
  [(PXDragAndDropSettings *)self setDragOutEnabled:PFIsCamera() ^ 1];
  [(PXDragAndDropSettings *)self setAlwaysAllowDragsWithinUserAlbums:1];
  [(PXDragAndDropSettings *)self setSpringLoadingEnabled:1];
  [(PXDragAndDropSettings *)self setReorderCadence:2];
  [(PXDragAndDropSettings *)self setDropGestureSpeedLimit:100.0];
}

+ (PXDragAndDropSettings)sharedInstance
{
  if (sharedInstance_onceToken_103233 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_103233, &__block_literal_global_103234);
  }

  v3 = sharedInstance_sharedInstance_103235;

  return v3;
}

void __39__PXDragAndDropSettings_sharedInstance__block_invoke()
{
  v2 = +[PXRootSettings sharedInstance];
  v0 = [v2 dragAndDrop];
  v1 = sharedInstance_sharedInstance_103235;
  sharedInstance_sharedInstance_103235 = v0;
}

+ (id)settingsControllerModule
{
  v21[7] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69C6638];
  v19 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Use NSData for images" valueKeyPath:@"useData"];
  v21[0] = v19;
  v18 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Drag out enabled" valueKeyPath:@"dragOutEnabled"];
  v21[1] = v18;
  v3 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Spring-loading enabled" valueKeyPath:@"springLoadingEnabled"];
  v21[2] = v3;
  v4 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Always allow drags in User Albums" valueKeyPath:@"alwaysAllowDragsWithinUserAlbums"];
  v21[3] = v4;
  v5 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Use File Provider Extension" valueKeyPath:@"useFileProvider"];
  v21[4] = v5;
  v6 = [MEMORY[0x1E69C65F8] rowWithTitle:@"Reorder Cadence" valueKeyPath:@"reorderCadence"];
  v7 = [v6 possibleValues:&unk_1F1911890 titles:&unk_1F19118A8];
  v21[5] = v7;
  v8 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Drop Gesture Speed Limit" valueKeyPath:@"dropGestureSpeedLimit"];
  v9 = [v8 minValue:0.0 maxValue:1000.0];
  v10 = [v9 px_increment:1.0];
  v21[6] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:7];
  v12 = [v2 sectionWithRows:v11 title:@"Settings"];

  px_restoreDefaultsSection = [MEMORY[0x1E69C6638] px_restoreDefaultsSection];
  v14 = MEMORY[0x1E69C6638];
  v20[0] = v12;
  v20[1] = px_restoreDefaultsSection;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2];
  v16 = [v14 moduleWithTitle:@"Drag & Drop" contents:v15];

  return v16;
}

@end