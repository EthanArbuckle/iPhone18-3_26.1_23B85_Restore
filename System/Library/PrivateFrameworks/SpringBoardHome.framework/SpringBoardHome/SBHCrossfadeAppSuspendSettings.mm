@interface SBHCrossfadeAppSuspendSettings
- (void)setDefaultValues;
@end

@implementation SBHCrossfadeAppSuspendSettings

- (void)setDefaultValues
{
  v38.receiver = self;
  v38.super_class = SBHCrossfadeAppSuspendSettings;
  [(SBHCrossfadeAppTransitionSettings *)&v38 setDefaultValues];
  centralAnimationSettings = [(SBHIconAnimationSettings *)self centralAnimationSettings];
  [centralAnimationSettings setAnimationType:1];

  centralAnimationSettings2 = [(SBHIconAnimationSettings *)self centralAnimationSettings];
  [centralAnimationSettings2 setMass:2.5];

  centralAnimationSettings3 = [(SBHIconAnimationSettings *)self centralAnimationSettings];
  [centralAnimationSettings3 setStiffness:2000.0];

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
  [crossfadeSettings setAnimationType:1];

  crossfadeSettings2 = [(SBHScaleZoomSettings *)self crossfadeSettings];
  [crossfadeSettings2 setMass:2.5];

  crossfadeSettings3 = [(SBHScaleZoomSettings *)self crossfadeSettings];
  [crossfadeSettings3 setStiffness:2000.0];

  crossfadeSettings4 = [(SBHScaleZoomSettings *)self crossfadeSettings];
  [crossfadeSettings4 setDamping:500.0];

  crossfadeSettings5 = [(SBHScaleZoomSettings *)self crossfadeSettings];
  [crossfadeSettings5 setCurve:393216];

  crossfadeSettings6 = [(SBHScaleZoomSettings *)self crossfadeSettings];
  controlPoint1Settings2 = [crossfadeSettings6 controlPoint1Settings];
  [controlPoint1Settings2 setPointValue:{0.3825, 0.091}];

  crossfadeSettings7 = [(SBHScaleZoomSettings *)self crossfadeSettings];
  controlPoint2Settings2 = [crossfadeSettings7 controlPoint2Settings];
  [controlPoint2Settings2 setPointValue:{0.98, 0.785}];

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
  [morphSettings3 setStiffness:1500.0];

  morphSettings4 = [(SBHCrossfadeZoomSettings *)self morphSettings];
  [morphSettings4 setDamping:500.0];

  morphSettings5 = [(SBHCrossfadeZoomSettings *)self morphSettings];
  [morphSettings5 setCurve:393216];

  morphSettings6 = [(SBHCrossfadeZoomSettings *)self morphSettings];
  controlPoint1Settings3 = [morphSettings6 controlPoint1Settings];
  [controlPoint1Settings3 setPointValue:{0.3825, 0.091}];

  morphSettings7 = [(SBHCrossfadeZoomSettings *)self morphSettings];
  controlPoint2Settings3 = [morphSettings7 controlPoint2Settings];
  [controlPoint2Settings3 setPointValue:{0.98, 0.785}];

  outerFolderFadeSettings = [(SBHScaleZoomSettings *)self outerFolderFadeSettings];
  [outerFolderFadeSettings setDuration:0.3];

  outerFolderFadeSettings2 = [(SBHScaleZoomSettings *)self outerFolderFadeSettings];
  [outerFolderFadeSettings2 setDelay:0.1];

  outerFolderFadeSettings3 = [(SBHScaleZoomSettings *)self outerFolderFadeSettings];
  [outerFolderFadeSettings3 setCurve:0x10000];

  iconGridFadeSettings = [(SBHScaleZoomSettings *)self iconGridFadeSettings];
  centralAnimationSettings8 = [(SBHIconAnimationSettings *)self centralAnimationSettings];
  [iconGridFadeSettings applySettings:centralAnimationSettings8];

  [(SBHIconZoomSettings *)self setLabelAlphaWithZoom:0];
}

@end