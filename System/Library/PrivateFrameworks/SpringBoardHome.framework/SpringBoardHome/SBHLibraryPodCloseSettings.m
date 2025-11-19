@interface SBHLibraryPodCloseSettings
- (void)setDefaultValues;
@end

@implementation SBHLibraryPodCloseSettings

- (void)setDefaultValues
{
  v24.receiver = self;
  v24.super_class = SBHLibraryPodCloseSettings;
  [(SBHLibraryPodZoomSettings *)&v24 setDefaultValues];
  v3 = [(SBHIconAnimationSettings *)self centralAnimationSettings];
  v4 = [objc_opt_class() _defaultCentralAnimationSettings];
  [v3 applySettings:v4];

  [objc_opt_class() _defaultInnerFolderZoomDelay];
  v6 = v5 * 0.5;
  v7 = [(SBHIconAnimationSettings *)self centralAnimationSettings];
  [v7 setDelay:v6];

  [(SBHIconZoomSettings *)self setLabelAlphaWithZoom:0];
  [(SBHScaleZoomSettings *)self setCrossfadeWithZoom:0];
  v8 = [(SBHScaleZoomSettings *)self crossfadeSettings];
  v9 = [objc_opt_class() _defaultCrossfadeSettings];
  [v8 applySettings:v9];

  v10 = [(SBHScaleZoomSettings *)self outerFolderFadeSettings];
  [v10 setDuration:0.2];

  v11 = [(SBHScaleZoomSettings *)self outerFolderFadeSettings];
  [v11 setDelay:0.1];

  v12 = [(SBHScaleZoomSettings *)self outerFolderFadeSettings];
  [v12 setCurve:0x10000];

  v13 = [(SBHLibraryPodZoomSettings *)self innerFolderEdgeZoomSettings];
  [v13 setDefaultValues];

  v14 = [(SBHLibraryPodZoomSettings *)self innerFolderEdgeZoomSettings];
  v15 = [objc_opt_class() _defaultInnerFolderZoomAnimationSettings];
  [v14 applySettings:v15];

  [objc_opt_class() _defaultInnerFolderZoomDelay];
  v17 = v16;
  v18 = [(SBHLibraryPodZoomSettings *)self innerFolderEdgeZoomSettings];
  [v18 setDelay:v17];

  v19 = [(SBHLibraryPodZoomSettings *)self innerFolderCenterZoomSettings];
  [v19 setDefaultValues];

  v20 = [(SBHLibraryPodZoomSettings *)self innerFolderCenterZoomSettings];
  v21 = [objc_opt_class() _defaultInnerFolderZoomAnimationSettings];
  [v20 applySettings:v21];

  v22 = [(SBHFolderZoomSettings *)self innerFolderFadeSettings];
  [v22 setDuration:0.2];

  v23 = [(SBHFolderZoomSettings *)self innerFolderFadeSettings];
  [v23 setCurve:0x20000];
}

@end