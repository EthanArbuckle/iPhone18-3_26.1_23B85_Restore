@interface _UIFluidSliderSettings
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation _UIFluidSliderSettings

- (void)setDefaultValues
{
  v7.receiver = self;
  v7.super_class = _UIFluidSliderSettings;
  [(PTSettings *)&v7 setDefaultValues];
  v3 = [(_UIFluidSliderSettings *)self programmaticUpdate];
  [v3 setDampingRatio:0.8];

  v4 = [(_UIFluidSliderSettings *)self programmaticUpdate];
  [v4 setResponse:0.4];

  v5 = [(_UIFluidSliderSettings *)self pressScale];
  [v5 setDampingRatio:0.9];

  v6 = [(_UIFluidSliderSettings *)self pressScale];
  [v6 setResponse:0.8];

  [(_UIFluidSliderSettings *)self setSliderDriftFactor:0.27];
  [(_UIFluidSliderSettings *)self setSliderStepCount:16.0];
  [(_UIFluidSliderSettings *)self setDefaultStretchAmount:50.0];
  [(_UIFluidSliderSettings *)self setSquishFactor:0.92];
  [(_UIFluidSliderSettings *)self setMinSquishPoints:4.0];
}

+ (id)settingsControllerModule
{
  v44[4] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69C6638];
  v18 = MEMORY[0x1E69C6638];
  v39 = [MEMORY[0x1E69C6618] rowWithTitle:@"Drift Coefficient" valueKeyPath:@"sliderDriftFactor"];
  v38 = [v39 between:0.0 and:1.0];
  v37 = [v38 precision:2];
  v43[0] = v37;
  v36 = [MEMORY[0x1E69C6618] rowWithTitle:@"Slider Step Count" valueKeyPath:@"sliderStepCount"];
  v35 = [v36 between:0.0 and:100.0];
  v34 = [v35 precision:0];
  v43[1] = v34;
  v33 = [MEMORY[0x1E69C6618] rowWithTitle:@"Default Stretch Amount" valueKeyPath:@"defaultStretchAmount"];
  v32 = [v33 between:0.0 and:100.0];
  v31 = [v32 precision:2];
  v43[2] = v31;
  v30 = [MEMORY[0x1E69C6618] rowWithTitle:@"Squish Factor" valueKeyPath:@"squishFactor"];
  v29 = [v30 between:0.0 and:1.0];
  v28 = [v29 precision:2];
  v43[3] = v28;
  v27 = [MEMORY[0x1E69C6618] rowWithTitle:@"Min Squish Points" valueKeyPath:@"minSquishPoints"];
  v26 = [v27 between:0.0 and:10.0];
  v25 = [v26 precision:2];
  v43[4] = v25;
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:5];
  v23 = [v2 sectionWithRows:v24 title:@"Common"];
  v44[0] = v23;
  v3 = MEMORY[0x1E69C6638];
  v22 = [MEMORY[0x1E69C6610] rowWithTitle:@"Programmatic Update" childSettingsKeyPath:@"programmaticUpdate"];
  v42[0] = v22;
  v21 = [MEMORY[0x1E69C6610] rowWithTitle:@"Press Scale" childSettingsKeyPath:@"pressScale"];
  v42[1] = v21;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:2];
  v4 = [v3 sectionWithRows:v20 title:@"Animations"];
  v44[1] = v4;
  v5 = MEMORY[0x1E69C6638];
  v6 = [MEMORY[0x1E69C6610] rowWithTitle:@"Elastic Pan" childSettingsKeyPath:@"elasticPanDriverSettings"];
  v41[0] = v6;
  v7 = [MEMORY[0x1E69C6610] rowWithTitle:@"Discrete Buttons" childSettingsKeyPath:@"discreteButtonDriverSettings"];
  v41[1] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:2];
  v9 = [v5 sectionWithRows:v8 title:@"Driver Settings"];
  v44[2] = v9;
  v10 = MEMORY[0x1E69C6638];
  v11 = MEMORY[0x1E69C65E8];
  v12 = [MEMORY[0x1E69C6640] action];
  v13 = [v11 rowWithTitle:@"Restore Defaults" action:v12];
  v40 = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v40 count:1];
  v15 = [v10 sectionWithRows:v14];
  v44[3] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:4];
  v19 = [v18 moduleWithTitle:@"Fluid Slider Interaction" contents:v16];

  return v19;
}

@end