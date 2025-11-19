@interface SBHCenterZoomSettings
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation SBHCenterZoomSettings

- (void)setDefaultValues
{
  v3.receiver = self;
  v3.super_class = SBHCenterZoomSettings;
  [(SBHIconZoomSettings *)&v3 setDefaultValues];
  [(SBHCenterZoomSettings *)self setDockMass:4.0];
  [(SBHCenterZoomSettings *)self setCenterRowCoordinate:2.5];
}

+ (id)settingsControllerModule
{
  v34[1] = *MEMORY[0x1E69E9840];
  v26 = [MEMORY[0x1E696AE18] predicateWithFormat:@"centralAnimationSettings.animationType == %d", 1];
  v3 = [MEMORY[0x1E69C6618] rowWithTitle:@"Coordinate of center row" valueKeyPath:@"centerRowCoordinate"];
  v4 = [v3 precision:1];
  v5 = [v4 valueValidator:&__block_literal_global_86];
  v34[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:1];

  v29 = [MEMORY[0x1E69C6638] sectionWithRows:v6];
  v30.receiver = a1;
  v7 = MEMORY[0x1E69C6638];
  v30.super_class = &OBJC_METACLASS___SBHCenterZoomSettings;
  v8 = objc_msgSendSuper2(&v30, sel_settingsControllerModule);
  v28 = [v7 submoduleWithModule:v8 childSettingsKeyPath:0];

  v9 = [MEMORY[0x1E69C6618] rowWithTitle:@"Dock mass" valueKeyPath:@"dockMass"];
  v10 = [v9 between:0.0 and:10000.0];
  v33 = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v33 count:1];

  v27 = [MEMORY[0x1E69C6638] sectionWithRows:v11 title:0 condition:v26];
  v12 = [MEMORY[0x1E69C65F8] rowWithTitle:@"Distance effect" valueKeyPath:@"distanceEffect"];
  v13 = [v12 possibleValues:&unk_1F3DB2D80 titles:&unk_1F3DB2D68];
  v32[0] = v13;
  v14 = [MEMORY[0x1E69C6618] rowWithTitle:@"Mass for first hop" valueKeyPath:@"firstHopIncrement"];
  v15 = [v14 between:0.0 and:100.0];
  v16 = [v15 conditionFormat:@"distanceEffect != 0"];
  v32[1] = v16;
  v17 = [MEMORY[0x1E69C6618] rowWithTitle:@"Hop mass acceleration" valueKeyPath:@"hopIncrementAcceleration"];
  v18 = [v17 between:-50.0 and:50.0];
  v19 = [v18 conditionFormat:@"distanceEffect != 0"];
  v32[2] = v19;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:3];

  v21 = [MEMORY[0x1E69C6638] sectionWithRows:v20 title:0 condition:v26];
  v22 = MEMORY[0x1E69C6638];
  v31[0] = v29;
  v31[1] = v28;
  v31[2] = v27;
  v31[3] = v21;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:4];
  v24 = [v22 moduleWithTitle:@"Center Zoom" contents:v23];

  return v24;
}

uint64_t __49__SBHCenterZoomSettings_settingsControllerModule__block_invoke(uint64_t a1, void *a2)
{
  [a2 floatValue];
  v3 = fmax(roundf(v2 + v2) * 0.5, 1.0);
  if (v3 > 5.0)
  {
    v3 = 5.0;
  }

  v4 = MEMORY[0x1E696AD98];

  return [v4 numberWithDouble:v3];
}

@end