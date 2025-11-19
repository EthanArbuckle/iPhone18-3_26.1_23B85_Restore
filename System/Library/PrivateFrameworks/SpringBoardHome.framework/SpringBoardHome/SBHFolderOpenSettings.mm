@interface SBHFolderOpenSettings
- (void)setDefaultValues;
@end

@implementation SBHFolderOpenSettings

- (void)setDefaultValues
{
  v17.receiver = self;
  v17.super_class = SBHFolderOpenSettings;
  [(SBHFolderZoomSettings *)&v17 setDefaultValues];
  v3 = [(PTSettings *)[SBHCrossfadeAppLaunchSettings alloc] initWithDefaultValues];
  v4 = [(SBHIconAnimationSettings *)self centralAnimationSettings];
  v5 = [(SBHIconAnimationSettings *)v3 centralAnimationSettings];
  [v4 applySettings:v5];

  v6 = [(SBHIconAnimationSettings *)self centralAnimationSettings];
  [v6 setMass:1.0];

  v7 = [(SBHIconAnimationSettings *)self centralAnimationSettings];
  [v7 setStiffness:341.51];

  v8 = [(SBHIconAnimationSettings *)self centralAnimationSettings];
  [v8 setDamping:36.96];

  v9 = [(SBHIconAnimationSettings *)self centralAnimationSettings];
  [v9 setCurve:196608];

  [(SBHIconZoomSettings *)self setLabelAlphaWithZoom:[(SBHIconZoomSettings *)v3 labelAlphaWithZoom]];
  [(SBHScaleZoomSettings *)self setCrossfadeWithZoom:0];
  v10 = [(SBHScaleZoomSettings *)self crossfadeSettings];
  v11 = [(SBHScaleZoomSettings *)v3 crossfadeSettings];
  [v10 applySettings:v11];

  v12 = [(SBHScaleZoomSettings *)self outerFolderFadeSettings];
  [v12 setDuration:0.4];

  v13 = [(SBHScaleZoomSettings *)self outerFolderFadeSettings];
  [v13 setCurve:0x10000];

  v14 = [(SBHFolderZoomSettings *)self innerFolderFadeSettings];
  [v14 setDuration:0.3];

  v15 = [(SBHFolderZoomSettings *)self innerFolderFadeSettings];
  [v15 setDelay:0.1];

  v16 = [(SBHFolderZoomSettings *)self innerFolderFadeSettings];
  [v16 setCurve:0x10000];
}

@end