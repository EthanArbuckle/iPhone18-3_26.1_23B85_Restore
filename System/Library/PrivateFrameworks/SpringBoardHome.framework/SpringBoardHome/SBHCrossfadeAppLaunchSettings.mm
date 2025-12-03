@interface SBHCrossfadeAppLaunchSettings
- (void)setDefaultValues;
@end

@implementation SBHCrossfadeAppLaunchSettings

- (void)setDefaultValues
{
  v25.receiver = self;
  v25.super_class = SBHCrossfadeAppLaunchSettings;
  [(SBHCrossfadeAppTransitionSettings *)&v25 setDefaultValues];
  centralAnimationSettings = [(SBHIconAnimationSettings *)self centralAnimationSettings];
  [centralAnimationSettings setAnimationType:1];

  centralAnimationSettings2 = [(SBHIconAnimationSettings *)self centralAnimationSettings];
  [centralAnimationSettings2 setMass:2.5];

  centralAnimationSettings3 = [(SBHIconAnimationSettings *)self centralAnimationSettings];
  [centralAnimationSettings3 setStiffness:1500.0];

  centralAnimationSettings4 = [(SBHIconAnimationSettings *)self centralAnimationSettings];
  [centralAnimationSettings4 setDamping:500.0];

  centralAnimationSettings5 = [(SBHIconAnimationSettings *)self centralAnimationSettings];
  [centralAnimationSettings5 setCurve:393216];

  centralAnimationSettings6 = [(SBHIconAnimationSettings *)self centralAnimationSettings];
  controlPoint1Settings = [centralAnimationSettings6 controlPoint1Settings];
  [controlPoint1Settings setPointValue:{0.3825, 0.091}];

  centralAnimationSettings7 = [(SBHIconAnimationSettings *)self centralAnimationSettings];
  controlPoint2Settings = [centralAnimationSettings7 controlPoint2Settings];
  [controlPoint2Settings setPointValue:{0.98, 0.785}];

  [(SBHScaleZoomSettings *)self setCrossfadeWithZoom:0];
  crossfadeSettings = [(SBHScaleZoomSettings *)self crossfadeSettings];
  [crossfadeSettings setAnimationType:0];

  crossfadeSettings2 = [(SBHScaleZoomSettings *)self crossfadeSettings];
  [crossfadeSettings2 setDuration:0.125];

  crossfadeSettings3 = [(SBHScaleZoomSettings *)self crossfadeSettings];
  [crossfadeSettings3 setCurve:65537];

  appSnapshotCornerRadiusSettings = [(SBHCrossfadeAppTransitionSettings *)self appSnapshotCornerRadiusSettings];
  [appSnapshotCornerRadiusSettings setAnimationType:0];

  appSnapshotCornerRadiusSettings2 = [(SBHCrossfadeAppTransitionSettings *)self appSnapshotCornerRadiusSettings];
  [appSnapshotCornerRadiusSettings2 setDuration:0.25];

  appSnapshotCornerRadiusSettings3 = [(SBHCrossfadeAppTransitionSettings *)self appSnapshotCornerRadiusSettings];
  [appSnapshotCornerRadiusSettings3 setCurve:196608];

  [(SBHCrossfadeZoomSettings *)self setMorphWithZoom:0];
  morphSettings = [(SBHCrossfadeZoomSettings *)self morphSettings];
  [morphSettings setAnimationType:1];

  morphSettings2 = [(SBHCrossfadeZoomSettings *)self morphSettings];
  [morphSettings2 setMass:2.5];

  morphSettings3 = [(SBHCrossfadeZoomSettings *)self morphSettings];
  [morphSettings3 setStiffness:2000.0];

  morphSettings4 = [(SBHCrossfadeZoomSettings *)self morphSettings];
  [morphSettings4 setDamping:500.0];

  morphSettings5 = [(SBHCrossfadeZoomSettings *)self morphSettings];
  [morphSettings5 setCurve:196608];

  outerFolderFadeSettings = [(SBHScaleZoomSettings *)self outerFolderFadeSettings];
  [outerFolderFadeSettings setDuration:0.4];

  outerFolderFadeSettings2 = [(SBHScaleZoomSettings *)self outerFolderFadeSettings];
  [outerFolderFadeSettings2 setCurve:0];

  [(SBHIconZoomSettings *)self setLabelAlphaWithZoom:0];
}

@end