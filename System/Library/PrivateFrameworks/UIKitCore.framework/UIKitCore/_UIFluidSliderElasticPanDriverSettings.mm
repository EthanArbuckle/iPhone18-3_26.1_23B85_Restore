@interface _UIFluidSliderElasticPanDriverSettings
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation _UIFluidSliderElasticPanDriverSettings

- (void)setDefaultValues
{
  v5.receiver = self;
  v5.super_class = _UIFluidSliderElasticPanDriverSettings;
  [(_UIFluidSliderDriverSettings *)&v5 setDefaultValues];
  update = [(_UIFluidSliderDriverSettings *)self update];
  [update setDampingRatio:1.0];

  update2 = [(_UIFluidSliderDriverSettings *)self update];
  [update2 setResponse:0.4];

  [(_UIFluidSliderElasticPanDriverSettings *)self setProjectionThreshold:10.0];
}

+ (id)settingsControllerModule
{
  v22[3] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69C6638];
  v19.receiver = self;
  v19.super_class = &OBJC_METACLASS____UIFluidSliderElasticPanDriverSettings;
  v18 = objc_msgSendSuper2(&v19, sel_settingsControllerModule);
  v22[0] = v18;
  v3 = MEMORY[0x1E69C6638];
  v17 = [MEMORY[0x1E69C6618] rowWithTitle:@"Projection Deceleration Threshold (in pts)" valueKeyPath:@"projectionThreshold"];
  v4 = [v17 between:0.0 and:10.0];
  v5 = [v4 precision:2];
  v21 = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v21 count:1];
  v7 = [v3 sectionWithRows:v6 title:@"Behaviors"];
  v22[1] = v7;
  v8 = MEMORY[0x1E69C6638];
  v9 = MEMORY[0x1E69C65E8];
  action = [MEMORY[0x1E69C6640] action];
  v11 = [v9 rowWithTitle:@"Restore Defaults" action:action];
  v20 = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v20 count:1];
  v13 = [v8 sectionWithRows:v12];
  v22[2] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:3];
  v15 = [v2 moduleWithTitle:@"Elastic Pan" contents:v14];

  return v15;
}

@end