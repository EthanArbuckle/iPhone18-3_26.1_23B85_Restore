@interface SBDashBoardExtensionAlwaysExcludingCameraCapturePolicy
- (SBDashBoardExtensionAlwaysExcludingCameraCapturePolicy)init;
- (SBDashBoardExtensionAlwaysExcludingCameraCapturePolicy)initWithCaptureApplicationMonitor:(id)a3;
- (id)prewarmingConfigurationForIdentifier:(id)a3 captureApplicationProvider:(id)a4;
- (id)resolveCameraDestinationLaunchOf:(id)a3 fromSource:(id)a4;
@end

@implementation SBDashBoardExtensionAlwaysExcludingCameraCapturePolicy

- (SBDashBoardExtensionAlwaysExcludingCameraCapturePolicy)initWithCaptureApplicationMonitor:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = SBDashBoardExtensionAlwaysExcludingCameraCapturePolicy;
  v6 = [(SBDashBoardExtensionAlwaysExcludingCameraCapturePolicy *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_applicationMonitor, a3);
    [(LCSCaptureApplicationMonitor *)v7->_applicationMonitor addObserver:v7];
    v8 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observers = v7->_observers;
    v7->_observers = v8;
  }

  return v7;
}

- (SBDashBoardExtensionAlwaysExcludingCameraCapturePolicy)init
{
  v3 = objc_alloc_init(MEMORY[0x277D243D0]);
  v4 = [(SBDashBoardExtensionAlwaysExcludingCameraCapturePolicy *)self initWithCaptureApplicationMonitor:v3];

  return v4;
}

- (id)resolveCameraDestinationLaunchOf:(id)a3 fromSource:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 application];
  v9 = [v8 bundleIdentifier];

  v10 = [(LCSCaptureApplicationMonitor *)self->_applicationMonitor knownCameraCaptureApplicationsByBundleIdentifier];
  v11 = [v9 isEqualToString:@"com.apple.camera"];
  v12 = &SBDashBoardCapturePlacementCameraPage;
  if (!v11)
  {
    v12 = &SBDashBoardCapturePlacementCameraOverlay;
  }

  v13 = *v12;
  v14 = [v7 isEqualToString:SBDashBoardCaptureLaunchSourceCaptureButton];

  if (v14)
  {
    v15 = SBDashBoardCapturePlacementCaptureButtonCameraPage;

    v13 = v15;
  }

  v16 = [v10 objectForKeyedSubscript:v9];
  if (v16)
  {
    if (v11)
    {
      v17 = [[SBDashBoardApplicationHostableEntity alloc] initWithApplicationSceneEntity:v6];
    }

    else
    {
      v17 = [[SBDashBoardSecureCaptureExtensionHostableEntity alloc] initWithCaptureApplication:v16 launchType:0];
    }

    v18 = v17;
    if (v13)
    {
      v19 = v17 == 0;
    }

    else
    {
      v19 = 1;
    }

    if (!v19)
    {
      v20 = [SBDashBoardCaptureLaunchDestination launchDestinationWithPlacement:v13 entity:v17];
      goto LABEL_16;
    }
  }

  else
  {
    v18 = 0;
  }

  v20 = 0;
LABEL_16:

  return v20;
}

- (id)prewarmingConfigurationForIdentifier:(id)a3 captureApplicationProvider:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v6 prewarmType];
  v8 = [v6 applicationBundleIdentifier];

  v9 = [v8 isEqualToString:@"com.apple.camera"];
  v10 = [v5 captureApplicationForBundleIdentifier:v8];

  if (v9)
  {
    v11 = v8;
    v12 = 1;
  }

  else
  {
    v13 = [v10 extension];
    v11 = [v13 bundleIdentifier];

    v12 = 2;
  }

  if (v7 == 2)
  {
    v12 = 0;
  }

  else if (v7 == 1)
  {
    v14 = v8;

    v12 = 0;
    v11 = v14;
  }

  v15 = [[SBDashBoardCameraPrewarmConfiguration alloc] initWithPrewarmCameraHardware:1 prewarmForCaptureLaunch:v9 ^ 1u backgroundLaunchTarget:v12 applicationBundleIdentifier:v8 prewarmingBundleIdentifier:v11];

  return v15;
}

void __112__SBDashBoardExtensionAlwaysExcludingCameraCapturePolicy_captureApplicationProvider_didUpdateKnownApplications___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v2 = [*(*(a1 + 32) + 16) allObjects];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) captureLaunchPolicyDidUpdatePolicy:*(a1 + 32)];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

@end