@interface SBHCenterAppLaunchSettings
- (void)setDefaultValues;
@end

@implementation SBHCenterAppLaunchSettings

- (void)setDefaultValues
{
  v22.receiver = self;
  v22.super_class = SBHCenterAppLaunchSettings;
  [(SBHCenterAppZoomSettings *)&v22 setDefaultValues];
  v3 = [(SBHIconAnimationSettings *)self centralAnimationSettings];
  [v3 setMass:2.1];

  v4 = [(SBHIconAnimationSettings *)self centralAnimationSettings];
  [v4 setStiffness:1100.0];

  v5 = [(SBHIconAnimationSettings *)self centralAnimationSettings];
  [v5 setDamping:500.0];

  v6 = [(SBHIconAnimationSettings *)self centralAnimationSettings];
  [v6 setCurve:393216];

  v7 = [(SBHIconAnimationSettings *)self centralAnimationSettings];
  v8 = [v7 controlPoint1Settings];
  [v8 setPointValue:{0.3825, 0.091}];

  v9 = [(SBHIconAnimationSettings *)self centralAnimationSettings];
  v10 = [v9 controlPoint2Settings];
  [v10 setPointValue:{0.98, 0.785}];

  [(SBHCenterZoomSettings *)self setDockMass:1.0];
  v11 = [(SBHCenterAppZoomSettings *)self appZoomSettings];
  [v11 setAnimationType:1];

  v12 = [(SBHCenterAppZoomSettings *)self appZoomSettings];
  [v12 setMass:2.5];

  v13 = [(SBHCenterAppZoomSettings *)self appZoomSettings];
  [v13 setStiffness:1100.0];

  v14 = [(SBHCenterAppZoomSettings *)self appZoomSettings];
  [v14 setDamping:500.0];

  v15 = [(SBHCenterAppZoomSettings *)self appZoomSettings];
  [v15 setCurve:393216];

  v16 = [(SBHCenterAppZoomSettings *)self appZoomSettings];
  v17 = [v16 controlPoint1Settings];
  [v17 setPointValue:{0.3825, 0.091}];

  v18 = [(SBHCenterAppZoomSettings *)self appZoomSettings];
  v19 = [v18 controlPoint2Settings];
  [v19 setPointValue:{0.98, 0.785}];

  [(SBHCenterAppZoomSettings *)self setAppHeadStart:-0.1];
  v20 = [(SBHCenterAppZoomSettings *)self appFadeSettings];
  [v20 setDuration:0.3];

  v21 = [(SBHCenterAppZoomSettings *)self appFadeSettings];
  [v21 setCurve:0x10000];
}

@end