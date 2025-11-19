@interface _UIKBFeedbackGeneratorIntensitySettings
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation _UIKBFeedbackGeneratorIntensitySettings

- (void)setDefaultValues
{
  v3.receiver = self;
  v3.super_class = _UIKBFeedbackGeneratorIntensitySettings;
  [(PTSettings *)&v3 setDefaultValues];
  [(_UIKBFeedbackGeneratorIntensitySettings *)self setMin:0.0];
  [(_UIKBFeedbackGeneratorIntensitySettings *)self setMax:1.0];
  [(_UIKBFeedbackGeneratorIntensitySettings *)self setIntervalWeight:1.0];
  [(_UIKBFeedbackGeneratorIntensitySettings *)self setDecayInterval:0.0];
  [(_UIKBFeedbackGeneratorIntensitySettings *)self setRandomInPercentage:0.0];
}

+ (id)settingsControllerModule
{
  v19[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69C6638];
  v17 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Fast" valueKeyPath:@"min"];
  v16 = [v17 minValue:-1.0 maxValue:1.0];
  v18[0] = v16;
  v15 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Slow" valueKeyPath:@"max"];
  v14 = [v15 minValue:-1.0 maxValue:1.0];
  v18[1] = v14;
  v3 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Weight" valueKeyPath:@"intervalWeight"];
  v4 = [v3 minValue:0.0 maxValue:1.0];
  v18[2] = v4;
  v5 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Decay" valueKeyPath:@"decayInterval"];
  v6 = [v5 minValue:0.0 maxValue:2.0];
  v18[3] = v6;
  v7 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Randomizer(%)" valueKeyPath:@"randomInPercentage"];
  v8 = [v7 minValue:0.0 maxValue:100.0];
  v18[4] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:5];
  v10 = [v2 sectionWithRows:v9];
  v19[0] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
  v12 = [v2 moduleWithTitle:0 contents:v11];

  return v12;
}

@end