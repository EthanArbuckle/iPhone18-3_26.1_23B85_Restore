@interface _UIScreenEdgePanRecognizerCornerSettings
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation _UIScreenEdgePanRecognizerCornerSettings

- (void)setDefaultValues
{
  v3.receiver = self;
  v3.super_class = _UIScreenEdgePanRecognizerCornerSettings;
  [(PTSettings *)&v3 setDefaultValues];
  [(_UIScreenEdgePanRecognizerCornerSettings *)self setCornerSize:50.0];
  [(_UIScreenEdgePanRecognizerCornerSettings *)self setCornerAngleWindow:1.30899694];
}

+ (id)settingsControllerModule
{
  v19[2] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69C6618] rowWithTitle:@"Corner Size" valueKeyPath:@"cornerSize"];
  v3 = [v2 precision:0];
  v19[0] = v3;
  v4 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Angle Window" valueKeyPath:@"cornerAngleWindowDegreees"];
  v5 = [v4 minValue:0.0 maxValue:90.0];
  v19[1] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];

  v7 = [MEMORY[0x1E69C6638] sectionWithRows:v6];
  v8 = MEMORY[0x1E69C65E8];
  v9 = [MEMORY[0x1E69C6640] actionWithSettingsKeyPath:0];
  v10 = [v8 rowWithTitle:@"Restore Defaults" action:v9];
  v18 = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:1];

  v12 = [MEMORY[0x1E69C6638] sectionWithRows:v11];
  v13 = MEMORY[0x1E69C6638];
  v17[0] = v7;
  v17[1] = v12;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
  v15 = [v13 moduleWithTitle:@"Corner Swipe" contents:v14];

  return v15;
}

@end