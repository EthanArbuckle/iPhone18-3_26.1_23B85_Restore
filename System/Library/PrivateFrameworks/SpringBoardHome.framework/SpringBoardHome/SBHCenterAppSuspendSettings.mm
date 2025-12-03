@interface SBHCenterAppSuspendSettings
- (void)setDefaultValues;
@end

@implementation SBHCenterAppSuspendSettings

- (void)setDefaultValues
{
  v14.receiver = self;
  v14.super_class = SBHCenterAppSuspendSettings;
  [(SBHCenterAppZoomSettings *)&v14 setDefaultValues];
  [(SBHCenterZoomSettings *)self setCenterRowCoordinate:2.5];
  centralAnimationSettings = [(SBHIconAnimationSettings *)self centralAnimationSettings];
  [centralAnimationSettings setMass:2.0];

  centralAnimationSettings2 = [(SBHIconAnimationSettings *)self centralAnimationSettings];
  [centralAnimationSettings2 setStiffness:600.0];

  centralAnimationSettings3 = [(SBHIconAnimationSettings *)self centralAnimationSettings];
  [centralAnimationSettings3 setDamping:700.0];

  [(SBHCenterZoomSettings *)self setDistanceEffect:1];
  [(SBHCenterZoomSettings *)self setFirstHopIncrement:2.0];
  [(SBHCenterZoomSettings *)self setHopIncrementAcceleration:-1.0];
  [(SBHCenterZoomSettings *)self setDockMass:5.0];
  appZoomSettings = [(SBHCenterAppZoomSettings *)self appZoomSettings];
  [appZoomSettings setAnimationType:1];

  appZoomSettings2 = [(SBHCenterAppZoomSettings *)self appZoomSettings];
  [appZoomSettings2 setMass:20.0];

  appZoomSettings3 = [(SBHCenterAppZoomSettings *)self appZoomSettings];
  [appZoomSettings3 setStiffness:1000.0];

  appZoomSettings4 = [(SBHCenterAppZoomSettings *)self appZoomSettings];
  [appZoomSettings4 setDamping:200.0];

  appZoomSettings5 = [(SBHCenterAppZoomSettings *)self appZoomSettings];
  [appZoomSettings5 setCurve:0x10000];

  appZoomSettings6 = [(SBHCenterAppZoomSettings *)self appZoomSettings];
  [appZoomSettings6 setEpsilon:0.04];

  [(SBHCenterAppZoomSettings *)self setAppHeadStart:0.15];
  appFadeSettings = [(SBHCenterAppZoomSettings *)self appFadeSettings];
  [appFadeSettings setDuration:0.45];

  appFadeSettings2 = [(SBHCenterAppZoomSettings *)self appFadeSettings];
  [appFadeSettings2 setCurve:0x10000];
}

@end