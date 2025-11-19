@interface SBHIconAnimationSettings
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation SBHIconAnimationSettings

- (void)setDefaultValues
{
  v3 = [(SBHIconAnimationSettings *)self centralAnimationSettings];
  [v3 setAnimationType:1];

  v4 = [(SBHIconAnimationSettings *)self centralAnimationSettings];
  [v4 setMass:2.0];

  v5 = [(SBHIconAnimationSettings *)self centralAnimationSettings];
  [v5 setStiffness:700.0];

  v6 = [(SBHIconAnimationSettings *)self centralAnimationSettings];
  [v6 setDamping:600.0];

  v7 = [(SBHIconAnimationSettings *)self centralAnimationSettings];
  [v7 setCurve:393216];

  v8 = [(SBHIconAnimationSettings *)self centralAnimationSettings];
  v9 = [v8 controlPoint1Settings];
  [v9 setPointValue:{0.3825, 0.091}];

  v10 = [(SBHIconAnimationSettings *)self centralAnimationSettings];
  v11 = [v10 controlPoint2Settings];
  [v11 setPointValue:{0.98, 0.785}];

  v12 = [(SBHIconAnimationSettings *)self centralAnimationSettings];
  v14 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [v12 setFrameRateRange:1114123 highFrameRateReason:{*&v14.minimum, *&v14.maximum, *&v14.preferred}];
}

+ (id)settingsControllerModule
{
  v9[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69C6638];
  v3 = [MEMORY[0x1E69D3F98] _moduleWithSectionTitle:@"Icon Animation" delay:0 frameRate:1];
  v4 = [v2 submoduleWithModule:v3 childSettingsKeyPath:@"centralAnimationSettings"];

  v5 = MEMORY[0x1E69C6638];
  v9[0] = v4;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  v7 = [v5 moduleWithTitle:0 contents:v6];

  return v7;
}

@end