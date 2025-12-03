@interface SBHCrossfadeAcceleratedAppSuspendSettings
- (void)setDefaultValues;
@end

@implementation SBHCrossfadeAcceleratedAppSuspendSettings

- (void)setDefaultValues
{
  v27.receiver = self;
  v27.super_class = SBHCrossfadeAcceleratedAppSuspendSettings;
  [(SBHCrossfadeAppSuspendSettings *)&v27 setDefaultValues];
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
  [controlPoint1Settings setPointValue:{0.55, 0.091}];

  centralAnimationSettings7 = [(SBHIconAnimationSettings *)self centralAnimationSettings];
  controlPoint2Settings = [centralAnimationSettings7 controlPoint2Settings];
  [controlPoint2Settings setPointValue:{0.98, 0.785}];

  [(SBHScaleZoomSettings *)self setCrossfadeWithZoom:0];
  crossfadeSettings = [(SBHScaleZoomSettings *)self crossfadeSettings];
  [crossfadeSettings setDelay:0.15];

  crossfadeSettings2 = [(SBHScaleZoomSettings *)self crossfadeSettings];
  [crossfadeSettings2 setAnimationType:1];

  crossfadeSettings3 = [(SBHScaleZoomSettings *)self crossfadeSettings];
  [crossfadeSettings3 setMass:2.5];

  crossfadeSettings4 = [(SBHScaleZoomSettings *)self crossfadeSettings];
  [crossfadeSettings4 setStiffness:3410.237];

  crossfadeSettings5 = [(SBHScaleZoomSettings *)self crossfadeSettings];
  [crossfadeSettings5 setDamping:184.668];

  crossfadeSettings6 = [(SBHScaleZoomSettings *)self crossfadeSettings];
  [crossfadeSettings6 setCurve:196608];

  appSnapshotCornerRadiusSettings = [(SBHCrossfadeAppTransitionSettings *)self appSnapshotCornerRadiusSettings];
  crossfadeSettings7 = [(SBHScaleZoomSettings *)self crossfadeSettings];
  [appSnapshotCornerRadiusSettings applySettings:crossfadeSettings7];

  [(SBHCrossfadeZoomSettings *)self setMorphWithZoom:1];
  morphSettings = [(SBHCrossfadeZoomSettings *)self morphSettings];
  centralAnimationSettings8 = [(SBHIconAnimationSettings *)self centralAnimationSettings];
  [morphSettings applySettings:centralAnimationSettings8];

  outerFolderFadeSettings = [(SBHScaleZoomSettings *)self outerFolderFadeSettings];
  [outerFolderFadeSettings setDuration:0.3];

  outerFolderFadeSettings2 = [(SBHScaleZoomSettings *)self outerFolderFadeSettings];
  [outerFolderFadeSettings2 setDelay:0.1];

  outerFolderFadeSettings3 = [(SBHScaleZoomSettings *)self outerFolderFadeSettings];
  [outerFolderFadeSettings3 setCurve:0x10000];

  iconGridFadeSettings = [(SBHScaleZoomSettings *)self iconGridFadeSettings];
  crossfadeSettings8 = [(SBHScaleZoomSettings *)self crossfadeSettings];
  [iconGridFadeSettings applySettings:crossfadeSettings8];

  [(SBHIconZoomSettings *)self setLabelAlphaWithZoom:0];
}

@end