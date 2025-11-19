@interface SBDashBoardCameraOnlyLaunchPolicy
- (id)prewarmingConfigurationForIdentifier:(id)a3 captureApplicationProvider:(id)a4;
- (id)resolveCameraDestinationLaunchOf:(id)a3 fromSource:(id)a4;
@end

@implementation SBDashBoardCameraOnlyLaunchPolicy

- (id)resolveCameraDestinationLaunchOf:(id)a3 fromSource:(id)a4
{
  v4 = a3;
  v5 = [v4 application];
  v6 = [v5 bundleIdentifier];
  v7 = [v6 isEqualToString:@"com.apple.camera"];

  if (v7)
  {
    v8 = SBDashBoardCapturePlacementCameraPage;
    v9 = [[SBDashBoardApplicationHostableEntity alloc] initWithApplicationSceneEntity:v4];
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

- (id)prewarmingConfigurationForIdentifier:(id)a3 captureApplicationProvider:(id)a4
{
  v4 = -[SBDashBoardCameraPrewarmConfiguration initWithPrewarmCameraHardware:prewarmForCaptureLaunch:backgroundLaunchTarget:applicationBundleIdentifier:prewarmingBundleIdentifier:]([SBDashBoardCameraPrewarmConfiguration alloc], "initWithPrewarmCameraHardware:prewarmForCaptureLaunch:backgroundLaunchTarget:applicationBundleIdentifier:prewarmingBundleIdentifier:", 1, 0, [a3 prewarmType] == 0, @"com.apple.camera", @"com.apple.camera");

  return v4;
}

@end