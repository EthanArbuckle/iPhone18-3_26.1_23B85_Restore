@interface SBDashBoardCameraOnlyLaunchPolicy
- (id)prewarmingConfigurationForIdentifier:(id)identifier captureApplicationProvider:(id)provider;
- (id)resolveCameraDestinationLaunchOf:(id)of fromSource:(id)source;
@end

@implementation SBDashBoardCameraOnlyLaunchPolicy

- (id)resolveCameraDestinationLaunchOf:(id)of fromSource:(id)source
{
  ofCopy = of;
  application = [ofCopy application];
  bundleIdentifier = [application bundleIdentifier];
  v7 = [bundleIdentifier isEqualToString:@"com.apple.camera"];

  if (v7)
  {
    v8 = SBDashBoardCapturePlacementCameraPage;
    v9 = [[SBDashBoardApplicationHostableEntity alloc] initWithApplicationSceneEntity:ofCopy];
    v10 = v9;
    if (v8)
    {
      v11 = v9 == 0;
    }

    else
    {
      v11 = 1;
    }

    if (!v11)
    {
      v12 = [SBDashBoardCaptureLaunchDestination launchDestinationWithPlacement:v8 entity:v9];
      goto LABEL_9;
    }
  }

  else
  {
    v10 = 0;
    v8 = 0;
  }

  v12 = 0;
LABEL_9:

  return v12;
}

- (id)prewarmingConfigurationForIdentifier:(id)identifier captureApplicationProvider:(id)provider
{
  v4 = -[SBDashBoardCameraPrewarmConfiguration initWithPrewarmCameraHardware:prewarmForCaptureLaunch:backgroundLaunchTarget:applicationBundleIdentifier:prewarmingBundleIdentifier:]([SBDashBoardCameraPrewarmConfiguration alloc], "initWithPrewarmCameraHardware:prewarmForCaptureLaunch:backgroundLaunchTarget:applicationBundleIdentifier:prewarmingBundleIdentifier:", 1, 0, [identifier prewarmType] == 0, @"com.apple.camera", @"com.apple.camera");

  return v4;
}

@end