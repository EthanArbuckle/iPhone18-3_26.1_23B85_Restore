@interface SBCameraButtonPolicyEnforcer
- (void)enforce:(id)a3;
@end

@implementation SBCameraButtonPolicyEnforcer

- (void)enforce:(id)a3
{
  v6 = a3;
  v3 = [v6 advicePolicy];
  v4 = [SBApp cameraHardwareButton];
  if (v3)
  {
    v5 = 0;
  }

  else
  {
    v5 = [v6 suppressCameraButtonDeferringToApplications];
  }

  [v4 setDisableDeferringToApplications:v5];
}

@end