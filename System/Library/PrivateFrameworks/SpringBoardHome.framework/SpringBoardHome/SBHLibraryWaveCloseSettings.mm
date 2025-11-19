@interface SBHLibraryWaveCloseSettings
- (void)setDefaultValues;
@end

@implementation SBHLibraryWaveCloseSettings

- (void)setDefaultValues
{
  v20.receiver = self;
  v20.super_class = SBHLibraryWaveCloseSettings;
  [(SBHLibraryWaveZoomSettings *)&v20 setDefaultValues];
  v3 = [(SBHIconAnimationSettings *)self centralAnimationSettings];
  [v3 setMass:1.0];

  v4 = [(SBHIconAnimationSettings *)self centralAnimationSettings];
  [v4 setStiffness:298.54219];

  v5 = [(SBHIconAnimationSettings *)self centralAnimationSettings];
  [v5 setDamping:29.7188];

  v6 = [(SBHIconAnimationSettings *)self centralAnimationSettings];
  [v6 setInitialVelocity:8.0];

  [(SBHLibraryWaveZoomSettings *)self setUpperPodRelativeCrossfadeDuration:0.9];
  [(SBHLibraryWaveZoomSettings *)self setUpperPodRelativeStackAlphaDuration:0.49];
  [(SBHLibraryWaveZoomSettings *)self setRelativeBackgroundDuration:0.655];
  [(SBHLibraryWaveZoomSettings *)self relativeBackgroundDuration];
  [(SBHLibraryWaveZoomSettings *)self setRelativeSearchDuration:v7 * 0.5];
  [(SBHLibraryWaveZoomSettings *)self setPodRelativeFadeDelay:0.1];
  v8 = [(SBHIconAnimationSettings *)self centralAnimationSettings];
  [v8 initialVelocity];
  v10 = v9;
  v11 = [(SBHLibraryWaveZoomSettings *)self podFadeSettings];
  [v11 setInitialVelocity:v10];

  v12 = [(SBHLibraryWaveZoomSettings *)self zEffectControlPoint1Settings];
  [v12 setPointValue:{0.42, 0.352}];

  v13 = [(SBHLibraryWaveZoomSettings *)self zEffectControlPoint2Settings];
  [v13 setPointValue:{0.76, 0.542}];

  v14 = [(SBHLibraryWaveZoomSettings *)self retargetedMassSettings];
  [v14 setLowerBoundFactor:0.925];

  v15 = [(SBHLibraryWaveZoomSettings *)self retargetedMassSettings];
  [v15 setUpperBoundFactor:0.25];

  v16 = [(SBHLibraryWaveZoomSettings *)self retargetedStiffnessSettings];
  [v16 setLowerBoundFactor:0.75];

  v17 = [(SBHLibraryWaveZoomSettings *)self retargetedStiffnessSettings];
  [v17 setUpperBoundFactor:2.5];

  v18 = [(SBHLibraryWaveZoomSettings *)self retargetedInitialVelocitySettings];
  [v18 setLowerBoundFactor:0.25];

  v19 = [(SBHLibraryWaveZoomSettings *)self retargetedInitialVelocitySettings];
  [v19 setUpperBoundFactor:1.0];
}

@end