@interface SBHLibraryWaveCloseSettings
- (void)setDefaultValues;
@end

@implementation SBHLibraryWaveCloseSettings

- (void)setDefaultValues
{
  v20.receiver = self;
  v20.super_class = SBHLibraryWaveCloseSettings;
  [(SBHLibraryWaveZoomSettings *)&v20 setDefaultValues];
  centralAnimationSettings = [(SBHIconAnimationSettings *)self centralAnimationSettings];
  [centralAnimationSettings setMass:1.0];

  centralAnimationSettings2 = [(SBHIconAnimationSettings *)self centralAnimationSettings];
  [centralAnimationSettings2 setStiffness:298.54219];

  centralAnimationSettings3 = [(SBHIconAnimationSettings *)self centralAnimationSettings];
  [centralAnimationSettings3 setDamping:29.7188];

  centralAnimationSettings4 = [(SBHIconAnimationSettings *)self centralAnimationSettings];
  [centralAnimationSettings4 setInitialVelocity:8.0];

  [(SBHLibraryWaveZoomSettings *)self setUpperPodRelativeCrossfadeDuration:0.9];
  [(SBHLibraryWaveZoomSettings *)self setUpperPodRelativeStackAlphaDuration:0.49];
  [(SBHLibraryWaveZoomSettings *)self setRelativeBackgroundDuration:0.655];
  [(SBHLibraryWaveZoomSettings *)self relativeBackgroundDuration];
  [(SBHLibraryWaveZoomSettings *)self setRelativeSearchDuration:v7 * 0.5];
  [(SBHLibraryWaveZoomSettings *)self setPodRelativeFadeDelay:0.1];
  centralAnimationSettings5 = [(SBHIconAnimationSettings *)self centralAnimationSettings];
  [centralAnimationSettings5 initialVelocity];
  v10 = v9;
  podFadeSettings = [(SBHLibraryWaveZoomSettings *)self podFadeSettings];
  [podFadeSettings setInitialVelocity:v10];

  zEffectControlPoint1Settings = [(SBHLibraryWaveZoomSettings *)self zEffectControlPoint1Settings];
  [zEffectControlPoint1Settings setPointValue:{0.42, 0.352}];

  zEffectControlPoint2Settings = [(SBHLibraryWaveZoomSettings *)self zEffectControlPoint2Settings];
  [zEffectControlPoint2Settings setPointValue:{0.76, 0.542}];

  retargetedMassSettings = [(SBHLibraryWaveZoomSettings *)self retargetedMassSettings];
  [retargetedMassSettings setLowerBoundFactor:0.925];

  retargetedMassSettings2 = [(SBHLibraryWaveZoomSettings *)self retargetedMassSettings];
  [retargetedMassSettings2 setUpperBoundFactor:0.25];

  retargetedStiffnessSettings = [(SBHLibraryWaveZoomSettings *)self retargetedStiffnessSettings];
  [retargetedStiffnessSettings setLowerBoundFactor:0.75];

  retargetedStiffnessSettings2 = [(SBHLibraryWaveZoomSettings *)self retargetedStiffnessSettings];
  [retargetedStiffnessSettings2 setUpperBoundFactor:2.5];

  retargetedInitialVelocitySettings = [(SBHLibraryWaveZoomSettings *)self retargetedInitialVelocitySettings];
  [retargetedInitialVelocitySettings setLowerBoundFactor:0.25];

  retargetedInitialVelocitySettings2 = [(SBHLibraryWaveZoomSettings *)self retargetedInitialVelocitySettings];
  [retargetedInitialVelocitySettings2 setUpperBoundFactor:1.0];
}

@end