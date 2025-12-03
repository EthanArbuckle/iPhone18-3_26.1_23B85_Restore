@interface SBHLibraryWaveOpenSettings
- (void)setDefaultValues;
@end

@implementation SBHLibraryWaveOpenSettings

- (void)setDefaultValues
{
  v19.receiver = self;
  v19.super_class = SBHLibraryWaveOpenSettings;
  [(SBHLibraryWaveZoomSettings *)&v19 setDefaultValues];
  centralAnimationSettings = [(SBHIconAnimationSettings *)self centralAnimationSettings];
  [centralAnimationSettings setMass:1.0];

  centralAnimationSettings2 = [(SBHIconAnimationSettings *)self centralAnimationSettings];
  [centralAnimationSettings2 setStiffness:323.401];

  centralAnimationSettings3 = [(SBHIconAnimationSettings *)self centralAnimationSettings];
  [centralAnimationSettings3 setDamping:28.78];

  centralAnimationSettings4 = [(SBHIconAnimationSettings *)self centralAnimationSettings];
  [centralAnimationSettings4 setInitialVelocity:10.0];

  [(SBHLibraryWaveZoomSettings *)self setUpperPodRelativeCrossfadeDuration:0.1];
  [(SBHLibraryWaveZoomSettings *)self setUpperPodRelativeStackAlphaDuration:0.2];
  [(SBHLibraryWaveZoomSettings *)self setRelativeBackgroundDuration:0.475];
  [(SBHLibraryWaveZoomSettings *)self relativeBackgroundDuration];
  [(SBHLibraryWaveZoomSettings *)self setRelativeSearchDuration:?];
  [(SBHLibraryWaveZoomSettings *)self setPodRelativeFadeDelay:0.0];
  centralAnimationSettings5 = [(SBHIconAnimationSettings *)self centralAnimationSettings];
  [centralAnimationSettings5 initialVelocity];
  v9 = v8;
  podFadeSettings = [(SBHLibraryWaveZoomSettings *)self podFadeSettings];
  [podFadeSettings setInitialVelocity:v9];

  zEffectControlPoint1Settings = [(SBHLibraryWaveZoomSettings *)self zEffectControlPoint1Settings];
  [zEffectControlPoint1Settings setPointValue:{0.304, 0.523}];

  zEffectControlPoint2Settings = [(SBHLibraryWaveZoomSettings *)self zEffectControlPoint2Settings];
  [zEffectControlPoint2Settings setPointValue:{0.742, 0.73}];

  retargetedMassSettings = [(SBHLibraryWaveZoomSettings *)self retargetedMassSettings];
  [retargetedMassSettings setLowerBoundFactor:1.25];

  retargetedMassSettings2 = [(SBHLibraryWaveZoomSettings *)self retargetedMassSettings];
  [retargetedMassSettings2 setUpperBoundFactor:1.0];

  retargetedStiffnessSettings = [(SBHLibraryWaveZoomSettings *)self retargetedStiffnessSettings];
  [retargetedStiffnessSettings setLowerBoundFactor:0.5];

  retargetedStiffnessSettings2 = [(SBHLibraryWaveZoomSettings *)self retargetedStiffnessSettings];
  [retargetedStiffnessSettings2 setUpperBoundFactor:1.0];

  retargetedInitialVelocitySettings = [(SBHLibraryWaveZoomSettings *)self retargetedInitialVelocitySettings];
  [retargetedInitialVelocitySettings setLowerBoundFactor:0.25];

  retargetedInitialVelocitySettings2 = [(SBHLibraryWaveZoomSettings *)self retargetedInitialVelocitySettings];
  [retargetedInitialVelocitySettings2 setUpperBoundFactor:1.0];
}

@end