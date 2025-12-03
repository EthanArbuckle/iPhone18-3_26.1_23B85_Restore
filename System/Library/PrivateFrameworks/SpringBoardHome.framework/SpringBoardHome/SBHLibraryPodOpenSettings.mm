@interface SBHLibraryPodOpenSettings
- (void)setDefaultValues;
@end

@implementation SBHLibraryPodOpenSettings

- (void)setDefaultValues
{
  v22.receiver = self;
  v22.super_class = SBHLibraryPodOpenSettings;
  [(SBHLibraryPodZoomSettings *)&v22 setDefaultValues];
  centralAnimationSettings = [(SBHIconAnimationSettings *)self centralAnimationSettings];
  _defaultCentralAnimationSettings = [objc_opt_class() _defaultCentralAnimationSettings];
  [centralAnimationSettings applySettings:_defaultCentralAnimationSettings];

  [(SBHIconZoomSettings *)self setLabelAlphaWithZoom:0];
  [(SBHScaleZoomSettings *)self setCrossfadeWithZoom:0];
  crossfadeSettings = [(SBHScaleZoomSettings *)self crossfadeSettings];
  _defaultCrossfadeSettings = [objc_opt_class() _defaultCrossfadeSettings];
  [crossfadeSettings applySettings:_defaultCrossfadeSettings];

  outerFolderFadeSettings = [(SBHScaleZoomSettings *)self outerFolderFadeSettings];
  [outerFolderFadeSettings setDuration:0.2];

  outerFolderFadeSettings2 = [(SBHScaleZoomSettings *)self outerFolderFadeSettings];
  [outerFolderFadeSettings2 setDelay:0.0];

  outerFolderFadeSettings3 = [(SBHScaleZoomSettings *)self outerFolderFadeSettings];
  [outerFolderFadeSettings3 setCurve:0x10000];

  innerFolderEdgeZoomSettings = [(SBHLibraryPodZoomSettings *)self innerFolderEdgeZoomSettings];
  [innerFolderEdgeZoomSettings setDefaultValues];

  innerFolderEdgeZoomSettings2 = [(SBHLibraryPodZoomSettings *)self innerFolderEdgeZoomSettings];
  _defaultInnerFolderZoomAnimationSettings = [objc_opt_class() _defaultInnerFolderZoomAnimationSettings];
  [innerFolderEdgeZoomSettings2 applySettings:_defaultInnerFolderZoomAnimationSettings];

  innerFolderCenterZoomSettings = [(SBHLibraryPodZoomSettings *)self innerFolderCenterZoomSettings];
  [innerFolderCenterZoomSettings setDefaultValues];

  innerFolderCenterZoomSettings2 = [(SBHLibraryPodZoomSettings *)self innerFolderCenterZoomSettings];
  _defaultInnerFolderZoomAnimationSettings2 = [objc_opt_class() _defaultInnerFolderZoomAnimationSettings];
  [innerFolderCenterZoomSettings2 applySettings:_defaultInnerFolderZoomAnimationSettings2];

  [objc_opt_class() _defaultInnerFolderZoomDelay];
  v17 = v16;
  innerFolderCenterZoomSettings3 = [(SBHLibraryPodZoomSettings *)self innerFolderCenterZoomSettings];
  [innerFolderCenterZoomSettings3 setDelay:v17];

  innerFolderFadeSettings = [(SBHFolderZoomSettings *)self innerFolderFadeSettings];
  [innerFolderFadeSettings setDuration:0.3];

  innerFolderFadeSettings2 = [(SBHFolderZoomSettings *)self innerFolderFadeSettings];
  [innerFolderFadeSettings2 setDelay:0.1];

  innerFolderFadeSettings3 = [(SBHFolderZoomSettings *)self innerFolderFadeSettings];
  [innerFolderFadeSettings3 setCurve:0x10000];
}

@end