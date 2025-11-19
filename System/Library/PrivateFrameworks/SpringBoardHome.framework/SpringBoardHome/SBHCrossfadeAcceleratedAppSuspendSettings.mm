@interface SBHCrossfadeAcceleratedAppSuspendSettings
- (void)setDefaultValues;
@end

@implementation SBHCrossfadeAcceleratedAppSuspendSettings

- (void)setDefaultValues
{
  v27.receiver = self;
  v27.super_class = SBHCrossfadeAcceleratedAppSuspendSettings;
  [(SBHCrossfadeAppSuspendSettings *)&v27 setDefaultValues];
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
  [v9 setPointValue:{0.55, 0.091}];

  v10 = [(SBHIconAnimationSettings *)self centralAnimationSettings];
  v11 = [v10 controlPoint2Settings];
  [v11 setPointValue:{0.98, 0.785}];

  [(SBHScaleZoomSettings *)self setCrossfadeWithZoom:0];
  v12 = [(SBHScaleZoomSettings *)self crossfadeSettings];
  [v12 setDelay:0.15];

  v13 = [(SBHScaleZoomSettings *)self crossfadeSettings];
  [v13 setAnimationType:1];

  v14 = [(SBHScaleZoomSettings *)self crossfadeSettings];
  [v14 setMass:2.5];

  v15 = [(SBHScaleZoomSettings *)self crossfadeSettings];
  [v15 setStiffness:3410.237];

  v16 = [(SBHScaleZoomSettings *)self crossfadeSettings];
  [v16 setDamping:184.668];

  v17 = [(SBHScaleZoomSettings *)self crossfadeSettings];
  [v17 setCurve:196608];

  v18 = [(SBHCrossfadeAppTransitionSettings *)self appSnapshotCornerRadiusSettings];
  v19 = [(SBHScaleZoomSettings *)self crossfadeSettings];
  [v18 applySettings:v19];

  [(SBHCrossfadeZoomSettings *)self setMorphWithZoom:1];
  v20 = [(SBHCrossfadeZoomSettings *)self morphSettings];
  v21 = [(SBHIconAnimationSettings *)self centralAnimationSettings];
  [v20 applySettings:v21];

  v22 = [(SBHScaleZoomSettings *)self outerFolderFadeSettings];
  [v22 setDuration:0.3];

  v23 = [(SBHScaleZoomSettings *)self outerFolderFadeSettings];
  [v23 setDelay:0.1];

  v24 = [(SBHScaleZoomSettings *)self outerFolderFadeSettings];
  [v24 setCurve:0x10000];

  v25 = [(SBHScaleZoomSettings *)self iconGridFadeSettings];
  v26 = [(SBHScaleZoomSettings *)self crossfadeSettings];
  [v25 applySettings:v26];

  [(SBHIconZoomSettings *)self setLabelAlphaWithZoom:0];
}

@end