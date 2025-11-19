@interface _UIPointerSBAppIconEffectSettings
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation _UIPointerSBAppIconEffectSettings

- (void)setDefaultValues
{
  v3.receiver = self;
  v3.super_class = _UIPointerSBAppIconEffectSettings;
  [(_UIPointerEffectSettings *)&v3 setDefaultValues];
  [(_UIPointerEffectSettings *)self setScaleUpPoints:9.5];
  [(_UIPointerEffectSettings *)self setOverrideSlipPoints:4.5];
}

+ (id)settingsControllerModule
{
  v40[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69C6638];
  v3 = [MEMORY[0x1E69C6618] rowWithTitle:@"Default Corner Radius" valueKeyPath:@"defaultPointerCornerRadius"];
  v4 = [v3 between:0.0 and:2.0];
  v5 = [v4 precision:1];
  v40[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:1];
  v35 = [v2 sectionWithRows:v6 title:@"Pointer Appearance"];

  v7 = MEMORY[0x1E69C6638];
  v8 = [MEMORY[0x1E69C6618] rowWithTitle:@"Slip Points" valueKeyPath:@"overrideSlipPoints"];
  v9 = [v8 between:0.0 and:100.0];
  v10 = [v9 precision:1];
  v39 = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v39 count:1];
  v34 = [v7 sectionWithRows:v11 title:@"Pointer & Effect Motion"];

  v12 = MEMORY[0x1E69C6638];
  v33 = [MEMORY[0x1E69C6618] rowWithTitle:@"Scale Up Points" valueKeyPath:@"scaleUpPoints"];
  v13 = [v33 between:0.0 and:20.0];
  v14 = [v13 precision:1];
  v38[0] = v14;
  v15 = [MEMORY[0x1E69C6618] rowWithTitle:@"Scale Animation Response" valueKeyPath:@"scaleUpAnimationResponse"];
  v16 = [v15 between:0.0 and:1.0];
  v17 = [v16 precision:2];
  v38[1] = v17;
  v18 = [MEMORY[0x1E69C6618] rowWithTitle:@"Scale Animation Damping Ratio" valueKeyPath:@"scaleUpAnimationDampingRatio"];
  v19 = [v18 between:0.0 and:1.0];
  v20 = [v19 precision:2];
  v38[2] = v20;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:3];
  v22 = [v12 sectionWithRows:v21 title:@"Effect Scale Up Animation"];

  v23 = MEMORY[0x1E69C65E8];
  v24 = [MEMORY[0x1E69C6640] actionWithSettingsKeyPath:0];
  v25 = [v23 rowWithTitle:@"Restore Defaults" action:v24];

  v26 = MEMORY[0x1E69C6638];
  v37 = v25;
  v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v37 count:1];
  v28 = [v26 sectionWithRows:v27];

  v29 = MEMORY[0x1E69C6638];
  v36[0] = v35;
  v36[1] = v34;
  v36[2] = v22;
  v36[3] = v28;
  v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:4];
  v31 = [v29 moduleWithTitle:0 contents:v30];

  return v31;
}

@end