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
  v3 = [(SBHIconAnimationSettings *)self centralAnimationSettings];
  [v3 setMass:2.0];

  v4 = [(SBHIconAnimationSettings *)self centralAnimationSettings];
  [v4 setStiffness:600.0];

  v5 = [(SBHIconAnimationSettings *)self centralAnimationSettings];
  [v5 setDamping:700.0];

  [(SBHCenterZoomSettings *)self setDistanceEffect:1];
  [(SBHCenterZoomSettings *)self setFirstHopIncrement:2.0];
  [(SBHCenterZoomSettings *)self setHopIncrementAcceleration:-1.0];
  [(SBHCenterZoomSettings *)self setDockMass:5.0];
  v6 = [(SBHCenterAppZoomSettings *)self appZoomSettings];
  [v6 setAnimationType:1];

  v7 = [(SBHCenterAppZoomSettings *)self appZoomSettings];
  [v7 setMass:20.0];

  v8 = [(SBHCenterAppZoomSettings *)self appZoomSettings];
  [v8 setStiffness:1000.0];

  v9 = [(SBHCenterAppZoomSettings *)self appZoomSettings];
  [v9 setDamping:200.0];

  v10 = [(SBHCenterAppZoomSettings *)self appZoomSettings];
  [v10 setCurve:0x10000];

  v11 = [(SBHCenterAppZoomSettings *)self appZoomSettings];
  [v11 setEpsilon:0.04];

  [(SBHCenterAppZoomSettings *)self setAppHeadStart:0.15];
  v12 = [(SBHCenterAppZoomSettings *)self appFadeSettings];
  [v12 setDuration:0.45];

  v13 = [(SBHCenterAppZoomSettings *)self appFadeSettings];
  [v13 setCurve:0x10000];
}

@end