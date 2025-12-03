@interface SBCameraButtonPolicyEnforcer
- (void)enforce:(id)enforce;
@end

@implementation SBCameraButtonPolicyEnforcer

- (void)enforce:(id)enforce
{
  enforceCopy = enforce;
  advicePolicy = [enforceCopy advicePolicy];
  cameraHardwareButton = [SBApp cameraHardwareButton];
  if (advicePolicy)
  {
    suppressCameraButtonDeferringToApplications = 0;
  }

  else
  {
    suppressCameraButtonDeferringToApplications = [enforceCopy suppressCameraButtonDeferringToApplications];
  }

  [cameraHardwareButton setDisableDeferringToApplications:suppressCameraButtonDeferringToApplications];
}

@end