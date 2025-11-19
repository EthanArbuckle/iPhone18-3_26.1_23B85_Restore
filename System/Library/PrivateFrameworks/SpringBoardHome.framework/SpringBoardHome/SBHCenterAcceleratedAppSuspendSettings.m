@interface SBHCenterAcceleratedAppSuspendSettings
- (void)setDefaultValues;
@end

@implementation SBHCenterAcceleratedAppSuspendSettings

- (void)setDefaultValues
{
  v5.receiver = self;
  v5.super_class = SBHCenterAcceleratedAppSuspendSettings;
  [(SBHCenterAppSuspendSettings *)&v5 setDefaultValues];
  v3 = [(SBHCenterAppZoomSettings *)self appFadeSettings];
  [v3 setDelay:0.15];

  v4 = [(SBHCenterAppZoomSettings *)self appFadeSettings];
  [v4 setDuration:0.3];
}

@end