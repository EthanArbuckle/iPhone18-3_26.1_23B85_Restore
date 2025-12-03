@interface PXWorkaroundSettings
+ (id)settingsControllerModule;
+ (id)sharedInstance;
- (void)setDefaultValues;
@end

@implementation PXWorkaroundSettings

- (void)setDefaultValues
{
  v5.receiver = self;
  v5.super_class = PXWorkaroundSettings;
  [(PTSettings *)&v5 setDefaultValues];
  if (PXIsOLEDDevice_onceToken != -1)
  {
    dispatch_once(&PXIsOLEDDevice_onceToken, &__block_literal_global_23095);
  }

  if (PXIsOLEDDevice_isOLEDDevice)
  {
    v3 = 0;
  }

  else
  {
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    v3 = [currentDevice userInterfaceIdiom] == 0;
  }

  [(PXWorkaroundSettings *)self setShouldWorkAround53118165:v3];
  [(PXWorkaroundSettings *)self setShouldWorkAround92398340:1];
  [(PXWorkaroundSettings *)self setShouldWorkAround102440195:1];
  [(PXWorkaroundSettings *)self setShouldWorkAround104295292:1];
  [(PXWorkaroundSettings *)self setShouldWorkAround128269285:1];
  [(PXWorkaroundSettings *)self setShouldWorkAround133571598:1];
  [(PXWorkaroundSettings *)self setWorkAround128798032:1];
  [(PXWorkaroundSettings *)self setShouldWorkAround148760530:MEMORY[0x1A590D320]([(PXWorkaroundSettings *)self setShouldWorkAround139627593:1])];
  [(PXWorkaroundSettings *)self setShouldWorkAround152038050:1];
  [(PXWorkaroundSettings *)self setWorkAround156719235Value:2.0];
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_67523 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_67523, &__block_literal_global_67524);
  }

  v3 = sharedInstance_sharedInstance_67525;

  return v3;
}

void __38__PXWorkaroundSettings_sharedInstance__block_invoke()
{
  v2 = +[PXRootSettings sharedInstance];
  v0 = [v2 workaroundSettings];
  v1 = sharedInstance_sharedInstance_67525;
  sharedInstance_sharedInstance_67525 = v0;
}

+ (id)settingsControllerModule
{
  v48[2] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69C6638];
  v3 = MEMORY[0x1E69C66A8];
  v46 = NSStringFromSelector(sel_shouldWorkAround53118165);
  v45 = [v3 rowWithTitle:@"53118165" valueKeyPath:v46];
  v47[0] = v45;
  v4 = MEMORY[0x1E69C66A8];
  v44 = NSStringFromSelector(sel_shouldWorkAround92398340);
  v43 = [v4 rowWithTitle:@"92398340" valueKeyPath:v44];
  v47[1] = v43;
  v5 = MEMORY[0x1E69C66A8];
  v42 = NSStringFromSelector(sel_shouldWorkAround102440195);
  v41 = [v5 rowWithTitle:@"102440195" valueKeyPath:v42];
  v47[2] = v41;
  v6 = MEMORY[0x1E69C66A8];
  v40 = NSStringFromSelector(sel_shouldWorkAround104295292);
  v39 = [v6 rowWithTitle:@"104295292" valueKeyPath:v40];
  v47[3] = v39;
  v7 = MEMORY[0x1E69C66A8];
  v38 = NSStringFromSelector(sel_shouldWorkAround128269285);
  v37 = [v7 rowWithTitle:@"128269285 (status bar & safe area inset)" valueKeyPath:v38];
  v47[4] = v37;
  v8 = MEMORY[0x1E69C66A8];
  v36 = NSStringFromSelector(sel_shouldWorkAround133571598);
  v35 = [v8 rowWithTitle:@"133571598 @Observable property twice" valueKeyPath:v36];
  v47[5] = v35;
  v9 = MEMORY[0x1E69C65F8];
  v34 = NSStringFromSelector(sel_workAround128798032);
  v33 = [v9 rowWithTitle:@"128798032 (story timeline view top inset)" valueKeyPath:v34];
  v10 = &unk_1F1910438;
  v32 = [v33 px_possibleValues:&unk_1F1910438 formatter:&__block_literal_global_163965];
  v47[6] = v32;
  v11 = MEMORY[0x1E69C66A8];
  v31 = NSStringFromSelector(sel_shouldWorkAround139627593);
  v30 = [v11 rowWithTitle:@"139627593" valueKeyPath:v31];
  v47[7] = v30;
  v12 = MEMORY[0x1E69C66A8];
  v29 = NSStringFromSelector(sel_shouldWorkAround148760530);
  v28 = [v12 rowWithTitle:@"148760530" valueKeyPath:v29];
  v47[8] = v28;
  v13 = MEMORY[0x1E69C66A8];
  v27 = NSStringFromSelector(sel_shouldWorkAround152038050);
  v14 = [v13 rowWithTitle:@"152038050 (global header position)" valueKeyPath:v27];
  v47[9] = v14;
  v15 = MEMORY[0x1E69C66A0];
  v16 = NSStringFromSelector(sel_workAround156719235Value);
  v17 = [v15 rowWithTitle:@"156719235 (locked header padding)" valueKeyPath:v16];
  v18 = [v17 minValue:0.0 maxValue:20.0];
  v19 = [v18 px_increment:1.0];
  v47[10] = v19;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:11];
  v21 = v2;
  v22 = [v2 sectionWithRows:v20];
  v48[0] = v22;
  px_restoreDefaultsSection = [MEMORY[0x1E69C6638] px_restoreDefaultsSection];
  v48[1] = px_restoreDefaultsSection;
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:2];
  v25 = [v21 moduleWithTitle:@"Workarounds" contents:v24];

  return v25;
}

__CFString *__52__PXWorkaroundSettings_UI__settingsControllerModule__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 integerValue];
  if (v2 > 2)
  {
    return @"??";
  }

  else
  {
    return off_1E77347F0[v2];
  }
}

@end