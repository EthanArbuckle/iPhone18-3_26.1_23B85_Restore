@interface _UIActivityIndicatorSettings
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation _UIActivityIndicatorSettings

- (void)setDefaultValues
{
  v3.receiver = self;
  v3.super_class = _UIActivityIndicatorSettings;
  [(PTSettings *)&v3 setDefaultValues];
  [(_UIActivityIndicatorSettings *)self setFullLoopDuration:0.8];
  [(_UIActivityIndicatorSettings *)self setCustomColor:0];
  [(_UIActivityIndicatorSettings *)self setRedValue:60.0];
  [(_UIActivityIndicatorSettings *)self setGreenValue:60.0];
  [(_UIActivityIndicatorSettings *)self setBlueValue:67.0];
  [(_UIActivityIndicatorSettings *)self setAlphaValue:0.6];
}

+ (id)settingsControllerModule
{
  v36[3] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69C6638];
  v21 = MEMORY[0x1E69C6638];
  v32 = [MEMORY[0x1E69C6618] rowWithTitle:@"Duration" valueKeyPath:@"fullLoopDuration"];
  v31 = [v32 between:0.0 and:5.0];
  v30 = [v31 precision:1];
  v35 = v30;
  v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v35 count:1];
  v28 = [v2 sectionWithRows:v29 title:@"Animation"];
  v36[0] = v28;
  v3 = MEMORY[0x1E69C6638];
  v27 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Use Custom Color" valueKeyPath:@"customColor"];
  v34[0] = v27;
  v26 = [MEMORY[0x1E69C6618] rowWithTitle:@"Red" valueKeyPath:@"redValue"];
  v25 = [v26 between:0.0 and:255.0];
  v24 = [v25 precision:0];
  v34[1] = v24;
  v23 = [MEMORY[0x1E69C6618] rowWithTitle:@"Green" valueKeyPath:@"greenValue"];
  v20 = [v23 between:0.0 and:255.0];
  v19 = [v20 precision:0];
  v34[2] = v19;
  v18 = [MEMORY[0x1E69C6618] rowWithTitle:@"Blue" valueKeyPath:@"blueValue"];
  v17 = [v18 between:0.0 and:255.0];
  v4 = [v17 precision:0];
  v34[3] = v4;
  v5 = [MEMORY[0x1E69C6618] rowWithTitle:@"Alpha" valueKeyPath:@"alphaValue"];
  v6 = [v5 between:0.0 and:1.0];
  v34[4] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:5];
  v8 = [v3 sectionWithRows:v7 title:@"Color"];
  v36[1] = v8;
  v9 = MEMORY[0x1E69C6638];
  v10 = MEMORY[0x1E69C65E8];
  v11 = [MEMORY[0x1E69C6640] actionWithSettingsKeyPath:0];
  v12 = [v10 rowWithTitle:@"Restore Defaults" action:v11];
  v33 = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v33 count:1];
  v14 = [v9 sectionWithRows:v13];
  v36[2] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:3];
  v22 = [v21 moduleWithTitle:0 contents:v15];

  return v22;
}

@end