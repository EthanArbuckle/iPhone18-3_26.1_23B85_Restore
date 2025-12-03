@interface SBHIconAnimationSettings
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation SBHIconAnimationSettings

- (void)setDefaultValues
{
  centralAnimationSettings = [(SBHIconAnimationSettings *)self centralAnimationSettings];
  [centralAnimationSettings setAnimationType:1];

  centralAnimationSettings2 = [(SBHIconAnimationSettings *)self centralAnimationSettings];
  [centralAnimationSettings2 setMass:2.0];

  centralAnimationSettings3 = [(SBHIconAnimationSettings *)self centralAnimationSettings];
  [centralAnimationSettings3 setStiffness:700.0];

  centralAnimationSettings4 = [(SBHIconAnimationSettings *)self centralAnimationSettings];
  [centralAnimationSettings4 setDamping:600.0];

  centralAnimationSettings5 = [(SBHIconAnimationSettings *)self centralAnimationSettings];
  [centralAnimationSettings5 setCurve:393216];

  centralAnimationSettings6 = [(SBHIconAnimationSettings *)self centralAnimationSettings];
  controlPoint1Settings = [centralAnimationSettings6 controlPoint1Settings];
  [controlPoint1Settings setPointValue:{0.3825, 0.091}];

  centralAnimationSettings7 = [(SBHIconAnimationSettings *)self centralAnimationSettings];
  controlPoint2Settings = [centralAnimationSettings7 controlPoint2Settings];
  [controlPoint2Settings setPointValue:{0.98, 0.785}];

  centralAnimationSettings8 = [(SBHIconAnimationSettings *)self centralAnimationSettings];
  v14 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [centralAnimationSettings8 setFrameRateRange:1114123 highFrameRateReason:{*&v14.minimum, *&v14.maximum, *&v14.preferred}];
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