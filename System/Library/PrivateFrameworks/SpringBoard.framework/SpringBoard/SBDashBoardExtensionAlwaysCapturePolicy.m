@interface SBDashBoardExtensionAlwaysCapturePolicy
- (SBDashBoardExtensionAlwaysCapturePolicy)init;
- (SBDashBoardExtensionAlwaysCapturePolicy)initWithCaptureApplicationMonitor:(id)a3;
- (id)prewarmingConfigurationForIdentifier:(id)a3 captureApplicationProvider:(id)a4;
- (id)resolveCameraDestinationLaunchOf:(id)a3 fromSource:(id)a4;
@end

@implementation SBDashBoardExtensionAlwaysCapturePolicy

- (SBDashBoardExtensionAlwaysCapturePolicy)initWithCaptureApplicationMonitor:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = SBDashBoardExtensionAlwaysCapturePolicy;
  v6 = [(SBDashBoardExtensionAlwaysCapturePolicy *)&v11 init];
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

- (SBDashBoardExtensionAlwaysCapturePolicy)init
{
  v3 = [MEMORY[0x277D243D0] sharedInstance];
  v4 = [(SBDashBoardExtensionAlwaysCapturePolicy *)self initWithCaptureApplicationMonitor:v3];

  return v4;
}

- (id)resolveCameraDestinationLaunchOf:(id)a3 fromSource:(id)a4
{
  v6 = a4;
  v7 = [a3 application];
  v8 = [v7 bundleIdentifier];

  v9 = [(LCSCaptureApplicationMonitor *)self->_applicationMonitor knownCameraCaptureApplicationsByBundleIdentifier];
  v10 = [v8 isEqualToString:@"com.apple.camera"];
  v11 = &SBDashBoardCapturePlacementCameraPage;
  if (!v10)
  {
    v11 = &SBDashBoardCapturePlacementCameraOverlay;
  }

  v12 = *v11;
  v13 = [v6 isEqualToString:SBDashBoardCaptureLaunchSourceCaptureButton];

  if (v13)
  {
    v14 = SBDashBoardCapturePlacementCaptureButtonCameraPage;

    v12 = v14;
  }

  v15 = [v9 objectForKeyedSubscript:v8];
  if (v15)
  {
    v16 = [[SBDashBoardSecureCaptureExtensionHostableEntity alloc] initWithCaptureApplication:v15 launchType:0];
    v17 = v16;
    if (v12)
    {
      v18 = v16 == 0;
    }

    else
    {
      v18 = 1;
    }

    if (!v18)
    {
      v19 = [SBDashBoardCaptureLaunchDestination launchDestinationWithPlacement:v12 entity:v16];
      goto LABEL_13;
    }
  }

  else
  {
    v17 = 0;
  }

  v19 = 0;
LABEL_13:

  return v19;
}

- (id)prewarmingConfigurationForIdentifier:(id)a3 captureApplicationProvider:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v6 prewarmType];
  v8 = [v6 applicationBundleIdentifier];

  v9 = [v5 captureApplicationForBundleIdentifier:v8];

  v10 = [v9 extension];
  v11 = [v10 bundleIdentifier];

  if (v7 == 2)
  {
    v13 = 0;
  }

  else if (v7 == 1)
  {
    v12 = v8;

    v13 = 0;
    v11 = v12;
  }

  else
  {
    v13 = 2;
  }

  v14 = [[SBDashBoardCameraPrewarmConfiguration alloc] initWithPrewarmCameraHardware:1 prewarmForCaptureLaunch:1 backgroundLaunchTarget:v13 applicationBundleIdentifier:v8 prewarmingBundleIdentifier:v11];

  return v14;
}

void __97__SBDashBoardExtensionAlwaysCapturePolicy_captureApplicationProvider_didUpdateKnownApplications___block_invoke(uint64_t a1)
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