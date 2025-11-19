@interface _UIFluidSliderDriverSettings
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation _UIFluidSliderDriverSettings

- (void)setDefaultValues
{
  v7.receiver = self;
  v7.super_class = _UIFluidSliderDriverSettings;
  [(PTSettings *)&v7 setDefaultValues];
  v3 = [(_UIFluidSliderDriverSettings *)self update];
  [v3 setDampingRatio:1.0];

  v4 = [(_UIFluidSliderDriverSettings *)self update];
  [v4 setResponse:0.4];

  v5 = [(_UIFluidSliderDriverSettings *)self acceleratedUpdate];
  [v5 setDampingRatio:1.0];

  v6 = [(_UIFluidSliderDriverSettings *)self acceleratedUpdate];
  [v6 setResponse:0.3];
}

+ (id)settingsControllerModule
{
  v11[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69C6638];
  v3 = [MEMORY[0x1E69C6610] rowWithTitle:@"Update" childSettingsKeyPath:@"update"];
  v4 = [MEMORY[0x1E69C6610] rowWithTitle:@"Accelerated Update" childSettingsKeyPath:{@"acceleratedUpdate", v3}];
  v10[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:2];
  v6 = [v2 sectionWithRows:v5 title:@"Animations"];
  v11[0] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  v8 = [v2 moduleWithTitle:&stru_1EFB14550 contents:v7];

  return v8;
}

@end