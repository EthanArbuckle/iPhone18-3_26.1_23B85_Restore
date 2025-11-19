@interface SBHInterpolationSettings
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation SBHInterpolationSettings

- (void)setDefaultValues
{
  v3.receiver = self;
  v3.super_class = SBHInterpolationSettings;
  [(PTSettings *)&v3 setDefaultValues];
  [(SBHInterpolationSettings *)self setLowerBoundFactor:1.0];
  [(SBHInterpolationSettings *)self setUpperBoundFactor:1.0];
}

+ (id)settingsControllerModule
{
  v16[2] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69C6638];
  v3 = [MEMORY[0x1E69C6618] rowWithTitle:@"Lower Bound Factor" valueKeyPath:@"lowerBoundFactor"];
  v4 = [v3 between:0.0 and:1000.0];
  v5 = [v4 precision:3];
  v16[0] = v5;
  v6 = [MEMORY[0x1E69C6618] rowWithTitle:@"Upper Bound Factor" valueKeyPath:@"upperBoundFactor"];
  v7 = [v6 between:0.0 and:1000.0];
  v8 = [v7 precision:3];
  v16[1] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
  v10 = [v2 sectionWithRows:v9 title:@"Interpolation Boundary Factors"];

  v11 = MEMORY[0x1E69C6638];
  v15 = v10;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v15 count:1];
  v13 = [v11 moduleWithTitle:0 contents:v12];

  return v13;
}

@end