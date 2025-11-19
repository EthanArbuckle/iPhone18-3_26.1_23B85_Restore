@interface _UIPointerTextBehaviorSettings
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation _UIPointerTextBehaviorSettings

- (void)setDefaultValues
{
  v3.receiver = self;
  v3.super_class = _UIPointerTextBehaviorSettings;
  [(PTSettings *)&v3 setDefaultValues];
  [(_UIPointerTextBehaviorSettings *)self setRegionCaptureMultiplier:3.0];
  [(_UIPointerTextBehaviorSettings *)self setTextLineRegionPadding:10.0];
}

+ (id)settingsControllerModule
{
  v23[2] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69C6638];
  v3 = [MEMORY[0x1E69C6618] rowWithTitle:@"Region Search Multiplier (applied to caret height)" valueKeyPath:@"regionCaptureMultiplier"];
  v4 = [v3 between:1.0 and:10.0];
  v5 = [v4 precision:1];
  v23[0] = v5;
  v6 = [MEMORY[0x1E69C6618] rowWithTitle:@"Region Y Padding" valueKeyPath:@"textLineRegionPadding"];
  v7 = [v6 between:0.0 and:100.0];
  v8 = [v7 precision:1];
  v23[1] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2];
  v10 = [v2 sectionWithRows:v9 title:@"Text Line Regions"];

  v11 = MEMORY[0x1E69C65E8];
  v12 = [MEMORY[0x1E69C6640] actionWithSettingsKeyPath:0];
  v13 = [v11 rowWithTitle:@"Restore Defaults" action:v12];

  v14 = MEMORY[0x1E69C6638];
  v22 = v13;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v22 count:1];
  v16 = [v14 sectionWithRows:v15];

  v17 = MEMORY[0x1E69C6638];
  v21[0] = v10;
  v21[1] = v16;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];
  v19 = [v17 moduleWithTitle:0 contents:v18];

  return v19;
}

@end