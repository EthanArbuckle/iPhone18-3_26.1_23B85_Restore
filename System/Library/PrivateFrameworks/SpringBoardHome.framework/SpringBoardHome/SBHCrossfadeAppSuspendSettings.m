@interface SBHCrossfadeAppSuspendSettings
- (void)setDefaultValues;
@end

@implementation SBHCrossfadeAppSuspendSettings

- (void)setDefaultValues
{
  v38.receiver = self;
  v38.super_class = SBHCrossfadeAppSuspendSettings;
  [(SBHCrossfadeAppTransitionSettings *)&v38 setDefaultValues];
  v3 = [(SBHIconAnimationSettings *)self centralAnimationSettings];
  [v3 setAnimationType:1];

  v4 = [(SBHIconAnimationSettings *)self centralAnimationSettings];
  [v4 setMass:2.5];

  v5 = [(SBHIconAnimationSettings *)self centralAnimationSettings];
  [v5 setStiffness:2000.0];

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
  [v12 setAnimationType:1];

  v13 = [(SBHScaleZoomSettings *)self crossfadeSettings];
  [v13 setMass:2.5];

  v14 = [(SBHScaleZoomSettings *)self crossfadeSettings];
  [v14 setStiffness:2000.0];

  v15 = [(SBHScaleZoomSettings *)self crossfadeSettings];
  [v15 setDamping:500.0];

  v16 = [(SBHScaleZoomSettings *)self crossfadeSettings];
  [v16 setCurve:393216];

  v17 = [(SBHScaleZoomSettings *)self crossfadeSettings];
  v18 = [v17 controlPoint1Settings];
  [v18 setPointValue:{0.3825, 0.091}];

  v19 = [(SBHScaleZoomSettings *)self crossfadeSettings];
  v20 = [v19 controlPoint2Settings];
  [v20 setPointValue:{0.98, 0.785}];

  v21 = [(SBHCrossfadeAppTransitionSettings *)self appSnapshotCornerRadiusSettings];
  [v21 setAnimationType:0];

  v22 = [(SBHCrossfadeAppTransitionSettings *)self appSnapshotCornerRadiusSettings];
  [v22 setDuration:0.25];

  v23 = [(SBHCrossfadeAppTransitionSettings *)self appSnapshotCornerRadiusSettings];
  [v23 setCurve:196608];

  [(SBHCrossfadeZoomSettings *)self setMorphWithZoom:0];
  v24 = [(SBHCrossfadeZoomSettings *)self morphSettings];
  [v24 setAnimationType:1];

  v25 = [(SBHCrossfadeZoomSettings *)self morphSettings];
  [v25 setMass:2.5];

  v26 = [(SBHCrossfadeZoomSettings *)self morphSettings];
  [v26 setStiffness:1500.0];

  v27 = [(SBHCrossfadeZoomSettings *)self morphSettings];
  [v27 setDamping:500.0];

  v28 = [(SBHCrossfadeZoomSettings *)self morphSettings];
  [v28 setCurve:393216];

  v29 = [(SBHCrossfadeZoomSettings *)self morphSettings];
  v30 = [v29 controlPoint1Settings];
  [v30 setPointValue:{0.3825, 0.091}];

  v31 = [(SBHCrossfadeZoomSettings *)self morphSettings];
  v32 = [v31 controlPoint2Settings];
  [v32 setPointValue:{0.98, 0.785}];

  v33 = [(SBHScaleZoomSettings *)self outerFolderFadeSettings];
  [v33 setDuration:0.3];

  v34 = [(SBHScaleZoomSettings *)self outerFolderFadeSettings];
  [v34 setDelay:0.1];

  v35 = [(SBHScaleZoomSettings *)self outerFolderFadeSettings];
  [v35 setCurve:0x10000];

  v36 = [(SBHScaleZoomSettings *)self iconGridFadeSettings];
  v37 = [(SBHIconAnimationSettings *)self centralAnimationSettings];
  [v36 applySettings:v37];

  [(SBHIconZoomSettings *)self setLabelAlphaWithZoom:0];
}

@end