@interface SBHCrossfadeAppLaunchSettings
- (void)setDefaultValues;
@end

@implementation SBHCrossfadeAppLaunchSettings

- (void)setDefaultValues
{
  v25.receiver = self;
  v25.super_class = SBHCrossfadeAppLaunchSettings;
  [(SBHCrossfadeAppTransitionSettings *)&v25 setDefaultValues];
  v3 = [(SBHIconAnimationSettings *)self centralAnimationSettings];
  [v3 setAnimationType:1];

  v4 = [(SBHIconAnimationSettings *)self centralAnimationSettings];
  [v4 setMass:2.5];

  v5 = [(SBHIconAnimationSettings *)self centralAnimationSettings];
  [v5 setStiffness:1500.0];

  v6 = [(SBHIconAnimationSettings *)self centralAnimationSettings];
  [v6 setDamping:500.0];

  v7 = [(SBHIconAnimationSettings *)self centralAnimationSettings];
  [v7 setCurve:393216];

  v8 = [(SBHIconAnimationSettings *)self centralAnimationSettings];
  v9 = [v8 controlPoint1Settings];
  [v9 setPointValue:{0.3825, 0.091}];

  v10 = [(SBHIconAnimationSettings *)self centralAnimationSettings];
  v11 = [v10 controlPoint2Settings];
  [v11 setPointValue:{0.98, 0.785}];

  [(SBHScaleZoomSettings *)self setCrossfadeWithZoom:0];
  v12 = [(SBHScaleZoomSettings *)self crossfadeSettings];
  [v12 setAnimationType:0];

  v13 = [(SBHScaleZoomSettings *)self crossfadeSettings];
  [v13 setDuration:0.125];

  v14 = [(SBHScaleZoomSettings *)self crossfadeSettings];
  [v14 setCurve:65537];

  v15 = [(SBHCrossfadeAppTransitionSettings *)self appSnapshotCornerRadiusSettings];
  [v15 setAnimationType:0];

  v16 = [(SBHCrossfadeAppTransitionSettings *)self appSnapshotCornerRadiusSettings];
  [v16 setDuration:0.25];

  v17 = [(SBHCrossfadeAppTransitionSettings *)self appSnapshotCornerRadiusSettings];
  [v17 setCurve:196608];

  [(SBHCrossfadeZoomSettings *)self setMorphWithZoom:0];
  v18 = [(SBHCrossfadeZoomSettings *)self morphSettings];
  [v18 setAnimationType:1];

  v19 = [(SBHCrossfadeZoomSettings *)self morphSettings];
  [v19 setMass:2.5];

  v20 = [(SBHCrossfadeZoomSettings *)self morphSettings];
  [v20 setStiffness:2000.0];

  v21 = [(SBHCrossfadeZoomSettings *)self morphSettings];
  [v21 setDamping:500.0];

  v22 = [(SBHCrossfadeZoomSettings *)self morphSettings];
  [v22 setCurve:196608];

  v23 = [(SBHScaleZoomSettings *)self outerFolderFadeSettings];
  [v23 setDuration:0.4];

  v24 = [(SBHScaleZoomSettings *)self outerFolderFadeSettings];
  [v24 setCurve:0];

  [(SBHIconZoomSettings *)self setLabelAlphaWithZoom:0];
}

@end