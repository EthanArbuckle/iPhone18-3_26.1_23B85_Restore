@interface SBHFolderOpenSettings
- (void)setDefaultValues;
@end

@implementation SBHFolderOpenSettings

- (void)setDefaultValues
{
  v17.receiver = self;
  v17.super_class = SBHFolderOpenSettings;
  [(SBHFolderZoomSettings *)&v17 setDefaultValues];
  initWithDefaultValues = [(PTSettings *)[SBHCrossfadeAppLaunchSettings alloc] initWithDefaultValues];
  centralAnimationSettings = [(SBHIconAnimationSettings *)self centralAnimationSettings];
  centralAnimationSettings2 = [(SBHIconAnimationSettings *)initWithDefaultValues centralAnimationSettings];
  [centralAnimationSettings applySettings:centralAnimationSettings2];

  centralAnimationSettings3 = [(SBHIconAnimationSettings *)self centralAnimationSettings];
  [centralAnimationSettings3 setMass:1.0];

  centralAnimationSettings4 = [(SBHIconAnimationSettings *)self centralAnimationSettings];
  [centralAnimationSettings4 setStiffness:341.51];

  centralAnimationSettings5 = [(SBHIconAnimationSettings *)self centralAnimationSettings];
  [centralAnimationSettings5 setDamping:36.96];

  centralAnimationSettings6 = [(SBHIconAnimationSettings *)self centralAnimationSettings];
  [centralAnimationSettings6 setCurve:196608];

  [(SBHIconZoomSettings *)self setLabelAlphaWithZoom:[(SBHIconZoomSettings *)initWithDefaultValues labelAlphaWithZoom]];
  [(SBHScaleZoomSettings *)self setCrossfadeWithZoom:0];
  crossfadeSettings = [(SBHScaleZoomSettings *)self crossfadeSettings];
  crossfadeSettings2 = [(SBHScaleZoomSettings *)initWithDefaultValues crossfadeSettings];
  [crossfadeSettings applySettings:crossfadeSettings2];

  outerFolderFadeSettings = [(SBHScaleZoomSettings *)self outerFolderFadeSettings];
  [outerFolderFadeSettings setDuration:0.4];

  outerFolderFadeSettings2 = [(SBHScaleZoomSettings *)self outerFolderFadeSettings];
  [outerFolderFadeSettings2 setCurve:0x10000];

  innerFolderFadeSettings = [(SBHFolderZoomSettings *)self innerFolderFadeSettings];
  [innerFolderFadeSettings setDuration:0.3];

  innerFolderFadeSettings2 = [(SBHFolderZoomSettings *)self innerFolderFadeSettings];
  [innerFolderFadeSettings2 setDelay:0.1];

  innerFolderFadeSettings3 = [(SBHFolderZoomSettings *)self innerFolderFadeSettings];
  [innerFolderFadeSettings3 setCurve:0x10000];
}

@end