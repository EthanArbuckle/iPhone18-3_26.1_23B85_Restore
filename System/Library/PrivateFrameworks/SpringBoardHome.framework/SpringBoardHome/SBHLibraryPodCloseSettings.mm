@interface SBHLibraryPodCloseSettings
- (void)setDefaultValues;
@end

@implementation SBHLibraryPodCloseSettings

- (void)setDefaultValues
{
  v24.receiver = self;
  v24.super_class = SBHLibraryPodCloseSettings;
  [(SBHLibraryPodZoomSettings *)&v24 setDefaultValues];
  centralAnimationSettings = [(SBHIconAnimationSettings *)self centralAnimationSettings];
  _defaultCentralAnimationSettings = [objc_opt_class() _defaultCentralAnimationSettings];
  [centralAnimationSettings applySettings:_defaultCentralAnimationSettings];

  [objc_opt_class() _defaultInnerFolderZoomDelay];
  v6 = v5 * 0.5;
  centralAnimationSettings2 = [(SBHIconAnimationSettings *)self centralAnimationSettings];
  [centralAnimationSettings2 setDelay:v6];

  [(SBHIconZoomSettings *)self setLabelAlphaWithZoom:0];
  [(SBHScaleZoomSettings *)self setCrossfadeWithZoom:0];
  crossfadeSettings = [(SBHScaleZoomSettings *)self crossfadeSettings];
  _defaultCrossfadeSettings = [objc_opt_class() _defaultCrossfadeSettings];
  [crossfadeSettings applySettings:_defaultCrossfadeSettings];

  outerFolderFadeSettings = [(SBHScaleZoomSettings *)self outerFolderFadeSettings];
  [outerFolderFadeSettings setDuration:0.2];

  outerFolderFadeSettings2 = [(SBHScaleZoomSettings *)self outerFolderFadeSettings];
  [outerFolderFadeSettings2 setDelay:0.1];

  outerFolderFadeSettings3 = [(SBHScaleZoomSettings *)self outerFolderFadeSettings];
  [outerFolderFadeSettings3 setCurve:0x10000];

  innerFolderEdgeZoomSettings = [(SBHLibraryPodZoomSettings *)self innerFolderEdgeZoomSettings];
  [innerFolderEdgeZoomSettings setDefaultValues];

  innerFolderEdgeZoomSettings2 = [(SBHLibraryPodZoomSettings *)self innerFolderEdgeZoomSettings];
  _defaultInnerFolderZoomAnimationSettings = [objc_opt_class() _defaultInnerFolderZoomAnimationSettings];
  [innerFolderEdgeZoomSettings2 applySettings:_defaultInnerFolderZoomAnimationSettings];

  [objc_opt_class() _defaultInnerFolderZoomDelay];
  v17 = v16;
  innerFolderEdgeZoomSettings3 = [(SBHLibraryPodZoomSettings *)self innerFolderEdgeZoomSettings];
  [innerFolderEdgeZoomSettings3 setDelay:v17];

  innerFolderCenterZoomSettings = [(SBHLibraryPodZoomSettings *)self innerFolderCenterZoomSettings];
  [innerFolderCenterZoomSettings setDefaultValues];

  innerFolderCenterZoomSettings2 = [(SBHLibraryPodZoomSettings *)self innerFolderCenterZoomSettings];
  _defaultInnerFolderZoomAnimationSettings2 = [objc_opt_class() _defaultInnerFolderZoomAnimationSettings];
  [innerFolderCenterZoomSettings2 applySettings:_defaultInnerFolderZoomAnimationSettings2];

  innerFolderFadeSettings = [(SBHFolderZoomSettings *)self innerFolderFadeSettings];
  [innerFolderFadeSettings setDuration:0.2];

  innerFolderFadeSettings2 = [(SBHFolderZoomSettings *)self innerFolderFadeSettings];
  [innerFolderFadeSettings2 setCurve:0x20000];
}

@end