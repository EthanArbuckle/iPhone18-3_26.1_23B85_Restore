@interface SBHCenterAppLaunchSettings
- (void)setDefaultValues;
@end

@implementation SBHCenterAppLaunchSettings

- (void)setDefaultValues
{
  v22.receiver = self;
  v22.super_class = SBHCenterAppLaunchSettings;
  [(SBHCenterAppZoomSettings *)&v22 setDefaultValues];
  centralAnimationSettings = [(SBHIconAnimationSettings *)self centralAnimationSettings];
  [centralAnimationSettings setMass:2.1];

  centralAnimationSettings2 = [(SBHIconAnimationSettings *)self centralAnimationSettings];
  [centralAnimationSettings2 setStiffness:1100.0];

  centralAnimationSettings3 = [(SBHIconAnimationSettings *)self centralAnimationSettings];
  [centralAnimationSettings3 setDamping:500.0];

  centralAnimationSettings4 = [(SBHIconAnimationSettings *)self centralAnimationSettings];
  [centralAnimationSettings4 setCurve:393216];

  centralAnimationSettings5 = [(SBHIconAnimationSettings *)self centralAnimationSettings];
  controlPoint1Settings = [centralAnimationSettings5 controlPoint1Settings];
  [controlPoint1Settings setPointValue:{0.3825, 0.091}];

  centralAnimationSettings6 = [(SBHIconAnimationSettings *)self centralAnimationSettings];
  controlPoint2Settings = [centralAnimationSettings6 controlPoint2Settings];
  [controlPoint2Settings setPointValue:{0.98, 0.785}];

  [(SBHCenterZoomSettings *)self setDockMass:1.0];
  appZoomSettings = [(SBHCenterAppZoomSettings *)self appZoomSettings];
  [appZoomSettings setAnimationType:1];

  appZoomSettings2 = [(SBHCenterAppZoomSettings *)self appZoomSettings];
  [appZoomSettings2 setMass:2.5];

  appZoomSettings3 = [(SBHCenterAppZoomSettings *)self appZoomSettings];
  [appZoomSettings3 setStiffness:1100.0];

  appZoomSettings4 = [(SBHCenterAppZoomSettings *)self appZoomSettings];
  [appZoomSettings4 setDamping:500.0];

  appZoomSettings5 = [(SBHCenterAppZoomSettings *)self appZoomSettings];
  [appZoomSettings5 setCurve:393216];

  appZoomSettings6 = [(SBHCenterAppZoomSettings *)self appZoomSettings];
  controlPoint1Settings2 = [appZoomSettings6 controlPoint1Settings];
  [controlPoint1Settings2 setPointValue:{0.3825, 0.091}];

  appZoomSettings7 = [(SBHCenterAppZoomSettings *)self appZoomSettings];
  controlPoint2Settings2 = [appZoomSettings7 controlPoint2Settings];
  [controlPoint2Settings2 setPointValue:{0.98, 0.785}];

  [(SBHCenterAppZoomSettings *)self setAppHeadStart:-0.1];
  appFadeSettings = [(SBHCenterAppZoomSettings *)self appFadeSettings];
  [appFadeSettings setDuration:0.3];

  appFadeSettings2 = [(SBHCenterAppZoomSettings *)self appFadeSettings];
  [appFadeSettings2 setCurve:0x10000];
}

@end