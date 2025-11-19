@interface SBHLibraryPodOpenSettings
- (void)setDefaultValues;
@end

@implementation SBHLibraryPodOpenSettings

- (void)setDefaultValues
{
  v22.receiver = self;
  v22.super_class = SBHLibraryPodOpenSettings;
  [(SBHLibraryPodZoomSettings *)&v22 setDefaultValues];
  v3 = [(SBHIconAnimationSettings *)self centralAnimationSettings];
  v4 = [objc_opt_class() _defaultCentralAnimationSettings];
  [v3 applySettings:v4];

  [(SBHIconZoomSettings *)self setLabelAlphaWithZoom:0];
  [(SBHScaleZoomSettings *)self setCrossfadeWithZoom:0];
  v5 = [(SBHScaleZoomSettings *)self crossfadeSettings];
  v6 = [objc_opt_class() _defaultCrossfadeSettings];
  [v5 applySettings:v6];

  v7 = [(SBHScaleZoomSettings *)self outerFolderFadeSettings];
  [v7 setDuration:0.2];

  v8 = [(SBHScaleZoomSettings *)self outerFolderFadeSettings];
  [v8 setDelay:0.0];

  v9 = [(SBHScaleZoomSettings *)self outerFolderFadeSettings];
  [v9 setCurve:0x10000];

  v10 = [(SBHLibraryPodZoomSettings *)self innerFolderEdgeZoomSettings];
  [v10 setDefaultValues];

  v11 = [(SBHLibraryPodZoomSettings *)self innerFolderEdgeZoomSettings];
  v12 = [objc_opt_class() _defaultInnerFolderZoomAnimationSettings];
  [v11 applySettings:v12];

  v13 = [(SBHLibraryPodZoomSettings *)self innerFolderCenterZoomSettings];
  [v13 setDefaultValues];

  v14 = [(SBHLibraryPodZoomSettings *)self innerFolderCenterZoomSettings];
  v15 = [objc_opt_class() _defaultInnerFolderZoomAnimationSettings];
  [v14 applySettings:v15];

  [objc_opt_class() _defaultInnerFolderZoomDelay];
  v17 = v16;
  v18 = [(SBHLibraryPodZoomSettings *)self innerFolderCenterZoomSettings];
  [v18 setDelay:v17];

  v19 = [(SBHFolderZoomSettings *)self innerFolderFadeSettings];
  [v19 setDuration:0.3];

  v20 = [(SBHFolderZoomSettings *)self innerFolderFadeSettings];
  [v20 setDelay:0.1];

  v21 = [(SBHFolderZoomSettings *)self innerFolderFadeSettings];
  [v21 setCurve:0x10000];
}

@end