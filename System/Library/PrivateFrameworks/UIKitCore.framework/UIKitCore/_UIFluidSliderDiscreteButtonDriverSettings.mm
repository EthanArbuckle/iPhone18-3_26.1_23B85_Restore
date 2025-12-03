@interface _UIFluidSliderDiscreteButtonDriverSettings
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation _UIFluidSliderDiscreteButtonDriverSettings

- (void)setDefaultValues
{
  v7.receiver = self;
  v7.super_class = _UIFluidSliderDiscreteButtonDriverSettings;
  [(_UIFluidSliderDriverSettings *)&v7 setDefaultValues];
  [(_UIFluidSliderDiscreteButtonDriverSettings *)self setRepeatDelay:0.333];
  [(_UIFluidSliderDiscreteButtonDriverSettings *)self setRepeatCadence:0.0416666667];
  [(_UIFluidSliderDiscreteButtonDriverSettings *)self setMinimumPressDuration:0.25];
  [(_UIFluidSliderDiscreteButtonDriverSettings *)self setVerticalVolumeDownScale:0.92];
  [(_UIFluidSliderDiscreteButtonDriverSettings *)self setVerticalVolumeUpScale:1.06];
  [(_UIFluidSliderDiscreteButtonDriverSettings *)self setHorizontalVolumeDownScale:0.96];
  [(_UIFluidSliderDiscreteButtonDriverSettings *)self setHorizontalVolumeUpScale:1.03];
  update = [(_UIFluidSliderDriverSettings *)self update];
  [update setDampingRatio:1.0];

  update2 = [(_UIFluidSliderDriverSettings *)self update];
  [update2 setResponse:0.3];

  settle = [(_UIFluidSliderDiscreteButtonDriverSettings *)self settle];
  [settle setDampingRatio:1.0];

  settle2 = [(_UIFluidSliderDiscreteButtonDriverSettings *)self settle];
  [settle2 setResponse:0.6];
}

+ (id)settingsControllerModule
{
  v45[4] = *MEMORY[0x1E69E9840];
  v30 = MEMORY[0x1E69C6638];
  v41.receiver = self;
  v41.super_class = &OBJC_METACLASS____UIFluidSliderDiscreteButtonDriverSettings;
  v40 = objc_msgSendSuper2(&v41, sel_settingsControllerModule);
  v45[0] = v40;
  v2 = MEMORY[0x1E69C6638];
  v39 = [MEMORY[0x1E69C6610] rowWithTitle:@"Settle" childSettingsKeyPath:@"settle"];
  v44 = v39;
  v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v44 count:1];
  v37 = [v2 sectionWithRows:v38 title:@"Unique Animations"];
  v45[1] = v37;
  v3 = MEMORY[0x1E69C6638];
  v36 = [MEMORY[0x1E69C6618] rowWithTitle:@"Auto-repeat Delay" valueKeyPath:@"repeatDelay"];
  v35 = [v36 between:0.0 and:1.0];
  v34 = [v35 precision:2];
  v43[0] = v34;
  v33 = [MEMORY[0x1E69C6618] rowWithTitle:@"Auto-repeat Cadence" valueKeyPath:@"repeatCadence"];
  v32 = [v33 between:0.0 and:1.0];
  v29 = [v32 precision:2];
  v43[1] = v29;
  v28 = [MEMORY[0x1E69C6618] rowWithTitle:@"Minimum Press Duration" valueKeyPath:@"minimumPressDuration"];
  v27 = [v28 between:0.0 and:1.0];
  v26 = [v27 precision:2];
  v43[2] = v26;
  v25 = [MEMORY[0x1E69C6618] rowWithTitle:@"Volume Down Scale (Vertical)" valueKeyPath:@"verticalVolumeDownScale"];
  v24 = [v25 between:0.0 and:2.0];
  v23 = [v24 precision:2];
  v43[3] = v23;
  v22 = [MEMORY[0x1E69C6618] rowWithTitle:@"Volume Up Scale (Vertical)" valueKeyPath:@"verticalVolumeUpScale"];
  v21 = [v22 between:0.0 and:2.0];
  v20 = [v21 precision:2];
  v43[4] = v20;
  v19 = [MEMORY[0x1E69C6618] rowWithTitle:@"Volume Down Scale (Horizontal)" valueKeyPath:@"horizontalVolumeDownScale"];
  v18 = [v19 between:0.0 and:2.0];
  v17 = [v18 precision:2];
  v43[5] = v17;
  v4 = [MEMORY[0x1E69C6618] rowWithTitle:@"Volume Up Scale (Horizontal)" valueKeyPath:@"horizontalVolumeUpScale"];
  v5 = [v4 between:0.0 and:2.0];
  v6 = [v5 precision:2];
  v43[6] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:7];
  v8 = [v3 sectionWithRows:v7 title:@"Behaviors"];
  v45[2] = v8;
  v9 = MEMORY[0x1E69C6638];
  v10 = MEMORY[0x1E69C65E8];
  action = [MEMORY[0x1E69C6640] action];
  v12 = [v10 rowWithTitle:@"Restore Defaults" action:action];
  v42 = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v42 count:1];
  v14 = [v9 sectionWithRows:v13];
  v45[3] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:4];
  v31 = [v30 moduleWithTitle:@"Volume Buttons" contents:v15];

  return v31;
}

@end