@interface SBHLibraryWaveOpenSettings
- (void)setDefaultValues;
@end

@implementation SBHLibraryWaveOpenSettings

- (void)setDefaultValues
{
  v19.receiver = self;
  v19.super_class = SBHLibraryWaveOpenSettings;
  [(SBHLibraryWaveZoomSettings *)&v19 setDefaultValues];
  v3 = [(SBHIconAnimationSettings *)self centralAnimationSettings];
  [v3 setMass:1.0];

  v4 = [(SBHIconAnimationSettings *)self centralAnimationSettings];
  [v4 setStiffness:323.401];

  v5 = [(SBHIconAnimationSettings *)self centralAnimationSettings];
  [v5 setDamping:28.78];

  v6 = [(SBHIconAnimationSettings *)self centralAnimationSettings];
  [v6 setInitialVelocity:10.0];

  [(SBHLibraryWaveZoomSettings *)self setUpperPodRelativeCrossfadeDuration:0.1];
  [(SBHLibraryWaveZoomSettings *)self setUpperPodRelativeStackAlphaDuration:0.2];
  [(SBHLibraryWaveZoomSettings *)self setRelativeBackgroundDuration:0.475];
  [(SBHLibraryWaveZoomSettings *)self relativeBackgroundDuration];
  [(SBHLibraryWaveZoomSettings *)self setRelativeSearchDuration:?];
  [(SBHLibraryWaveZoomSettings *)self setPodRelativeFadeDelay:0.0];
  v7 = [(SBHIconAnimationSettings *)self centralAnimationSettings];
  [v7 initialVelocity];
  v9 = v8;
  v10 = [(SBHLibraryWaveZoomSettings *)self podFadeSettings];
  [v10 setInitialVelocity:v9];

  v11 = [(SBHLibraryWaveZoomSettings *)self zEffectControlPoint1Settings];
  [v11 setPointValue:{0.304, 0.523}];

  v12 = [(SBHLibraryWaveZoomSettings *)self zEffectControlPoint2Settings];
  [v12 setPointValue:{0.742, 0.73}];

  v13 = [(SBHLibraryWaveZoomSettings *)self retargetedMassSettings];
  [v13 setLowerBoundFactor:1.25];

  v14 = [(SBHLibraryWaveZoomSettings *)self retargetedMassSettings];
  [v14 setUpperBoundFactor:1.0];

  v15 = [(SBHLibraryWaveZoomSettings *)self retargetedStiffnessSettings];
  [v15 setLowerBoundFactor:0.5];

  v16 = [(SBHLibraryWaveZoomSettings *)self retargetedStiffnessSettings];
  [v16 setUpperBoundFactor:1.0];

  v17 = [(SBHLibraryWaveZoomSettings *)self retargetedInitialVelocitySettings];
  [v17 setLowerBoundFactor:0.25];

  v18 = [(SBHLibraryWaveZoomSettings *)self retargetedInitialVelocitySettings];
  [v18 setUpperBoundFactor:1.0];
}

@end