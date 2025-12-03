@interface SBDashBoardExtensionAlwaysExcludingCameraCapturePolicy
- (SBDashBoardExtensionAlwaysExcludingCameraCapturePolicy)init;
- (SBDashBoardExtensionAlwaysExcludingCameraCapturePolicy)initWithCaptureApplicationMonitor:(id)monitor;
- (id)prewarmingConfigurationForIdentifier:(id)identifier captureApplicationProvider:(id)provider;
- (id)resolveCameraDestinationLaunchOf:(id)of fromSource:(id)source;
@end

@implementation SBDashBoardExtensionAlwaysExcludingCameraCapturePolicy

- (SBDashBoardExtensionAlwaysExcludingCameraCapturePolicy)initWithCaptureApplicationMonitor:(id)monitor
{
  monitorCopy = monitor;
  v11.receiver = self;
  v11.super_class = SBDashBoardExtensionAlwaysExcludingCameraCapturePolicy;
  v6 = [(SBDashBoardExtensionAlwaysExcludingCameraCapturePolicy *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_applicationMonitor, monitor);
    [(LCSCaptureApplicationMonitor *)v7->_applicationMonitor addObserver:v7];
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observers = v7->_observers;
    v7->_observers = weakObjectsHashTable;
  }

  return v7;
}

- (SBDashBoardExtensionAlwaysExcludingCameraCapturePolicy)init
{
  v3 = objc_alloc_init(MEMORY[0x277D243D0]);
  v4 = [(SBDashBoardExtensionAlwaysExcludingCameraCapturePolicy *)self initWithCaptureApplicationMonitor:v3];

  return v4;
}

- (id)resolveCameraDestinationLaunchOf:(id)of fromSource:(id)source
{
  ofCopy = of;
  sourceCopy = source;
  application = [ofCopy application];
  bundleIdentifier = [application bundleIdentifier];

  knownCameraCaptureApplicationsByBundleIdentifier = [(LCSCaptureApplicationMonitor *)self->_applicationMonitor knownCameraCaptureApplicationsByBundleIdentifier];
  v11 = [bundleIdentifier isEqualToString:@"com.apple.camera"];
  v12 = &SBDashBoardCapturePlacementCameraPage;
  if (!v11)
  {
    v12 = &SBDashBoardCapturePlacementCameraOverlay;
  }

  v13 = *v12;
  v14 = [sourceCopy isEqualToString:SBDashBoardCaptureLaunchSourceCaptureButton];

  if (v14)
  {
    v15 = SBDashBoardCapturePlacementCaptureButtonCameraPage;

    v13 = v15;
  }

  v16 = [knownCameraCaptureApplicationsByBundleIdentifier objectForKeyedSubscript:bundleIdentifier];
  if (v16)
  {
    if (v11)
    {
      v17 = [[SBDashBoardApplicationHostableEntity alloc] initWithApplicationSceneEntity:ofCopy];
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

- (id)prewarmingConfigurationForIdentifier:(id)identifier captureApplicationProvider:(id)provider
{
  providerCopy = provider;
  identifierCopy = identifier;
  prewarmType = [identifierCopy prewarmType];
  applicationBundleIdentifier = [identifierCopy applicationBundleIdentifier];

  v9 = [applicationBundleIdentifier isEqualToString:@"com.apple.camera"];
  v10 = [providerCopy captureApplicationForBundleIdentifier:applicationBundleIdentifier];

  if (v9)
  {
    bundleIdentifier = applicationBundleIdentifier;
    v12 = 1;
  }

  else
  {
    extension = [v10 extension];
    bundleIdentifier = [extension bundleIdentifier];

    v12 = 2;
  }

  if (prewarmType == 2)
  {
    v12 = 0;
  }

  else if (prewarmType == 1)
  {
    v14 = applicationBundleIdentifier;

    v12 = 0;
    bundleIdentifier = v14;
  }

  v15 = [[SBDashBoardCameraPrewarmConfiguration alloc] initWithPrewarmCameraHardware:1 prewarmForCaptureLaunch:v9 ^ 1u backgroundLaunchTarget:v12 applicationBundleIdentifier:applicationBundleIdentifier prewarmingBundleIdentifier:bundleIdentifier];

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