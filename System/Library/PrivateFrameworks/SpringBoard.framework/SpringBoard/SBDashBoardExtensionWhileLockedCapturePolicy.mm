@interface SBDashBoardExtensionWhileLockedCapturePolicy
+ (id)new;
+ (id)policyWithAuthenticationStatusProvider:(id)a3;
+ (id)policyWithAuthenticationStatusProvider:(id)a3 captureApplicationMonitor:(id)a4;
- (SBDashBoardExtensionWhileLockedCapturePolicy)init;
- (SBDashBoardExtensionWhileLockedCapturePolicy)initWithAuthenticationStatusProvider:(id)a3 captureApplicationMonitor:(id)a4;
- (id)prewarmingConfigurationForIdentifier:(id)a3 captureApplicationProvider:(id)a4;
- (id)resolveCameraDestinationLaunchOf:(id)a3 fromSource:(id)a4;
- (void)_notePolicyMayHaveChanged;
@end

@implementation SBDashBoardExtensionWhileLockedCapturePolicy

+ (id)new
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_launchDestinationWithPlacement_entity_);
  [v4 handleFailureInMethod:a2 object:a1 file:@"SBDashBoardExtensionWhileLockedCapturePolicy.m" lineNumber:40 description:{@"%s is unavailable; use %@ instead", "+[SBDashBoardExtensionWhileLockedCapturePolicy new]", v5}];

  return 0;
}

- (SBDashBoardExtensionWhileLockedCapturePolicy)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithPlacement_entity_);
  [v4 handleFailureInMethod:a2 object:self file:@"SBDashBoardExtensionWhileLockedCapturePolicy.m" lineNumber:44 description:{@"%s is unavailable; use %@ instead", "-[SBDashBoardExtensionWhileLockedCapturePolicy init]", v5}];

  return 0;
}

+ (id)policyWithAuthenticationStatusProvider:(id)a3
{
  v4 = MEMORY[0x277D243D0];
  v5 = a3;
  v6 = [v4 sharedInstance];
  v7 = [a1 policyWithAuthenticationStatusProvider:v5 captureApplicationMonitor:v6];

  return v7;
}

+ (id)policyWithAuthenticationStatusProvider:(id)a3 captureApplicationMonitor:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithAuthenticationStatusProvider:v7 captureApplicationMonitor:v6];

  return v8;
}

- (SBDashBoardExtensionWhileLockedCapturePolicy)initWithAuthenticationStatusProvider:(id)a3 captureApplicationMonitor:(id)a4
{
  v7 = a3;
  v8 = a4;
  v15.receiver = self;
  v15.super_class = SBDashBoardExtensionWhileLockedCapturePolicy;
  v9 = [(SBDashBoardExtensionWhileLockedCapturePolicy *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_authenticationStatusProvider, a3);
    objc_storeStrong(&v10->_applicationMonitor, a4);
    [(LCSCaptureApplicationMonitor *)v10->_applicationMonitor addObserver:v10];
    v11 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observers = v10->_observers;
    v10->_observers = v11;

    v13 = [MEMORY[0x277CCAB98] defaultCenter];
    [v13 addObserver:v10 selector:sel__authenticationStateDidChange_ name:*MEMORY[0x277D66078] object:0];
  }

  return v10;
}

- (id)resolveCameraDestinationLaunchOf:(id)a3 fromSource:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 application];
  v9 = [v8 bundleIdentifier];

  v10 = [(LCSCaptureApplicationMonitor *)self->_applicationMonitor knownCameraCaptureApplicationsByBundleIdentifier];
  v11 = [(SBFAuthenticationStatusProvider *)self->_authenticationStatusProvider isAuthenticatedCached];
  if ([v9 isEqualToString:@"com.apple.camera"])
  {
    v12 = &SBDashBoardCapturePlacementCameraPage;
  }

  else if ([v7 isEqualToString:SBDashBoardCaptureLaunchSourceCaptureButton])
  {
    v12 = &SBDashBoardCapturePlacementCameraOverlay;
    if (v11)
    {
      v12 = &SBDashBoardCapturePlacementCaptureButtonCameraPage;
    }
  }

  else
  {
    if (v11)
    {
      v13 = 0;
      goto LABEL_17;
    }

    v12 = &SBDashBoardCapturePlacementSecureApp;
  }

  v13 = *v12;
  if (v13)
  {
    v14 = [v10 objectForKeyedSubscript:v9];
    if (v14)
    {
      v15 = v14;
      v16 = (v11 & 1) != 0 ? [[SBDashBoardApplicationHostableEntity alloc] initWithApplicationSceneEntity:v6]: [[SBDashBoardSecureCaptureExtensionHostableEntity alloc] initWithCaptureApplication:v14 launchType:0];
      v17 = v16;

      if (v17)
      {
        v18 = [SBDashBoardCaptureLaunchDestination launchDestinationWithPlacement:v13 entity:v17];

        goto LABEL_18;
      }
    }
  }

LABEL_17:
  v18 = 0;
LABEL_18:

  return v18;
}

- (id)prewarmingConfigurationForIdentifier:(id)a3 captureApplicationProvider:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 prewarmType];
  v9 = [v7 applicationBundleIdentifier];

  LODWORD(v7) = [(SBFAuthenticationStatusProvider *)self->_authenticationStatusProvider isAuthenticatedCached];
  v10 = [v6 captureApplicationForBundleIdentifier:v9];

  if (v7)
  {
    v11 = v9;
    v12 = 1;
  }

  else
  {
    v13 = [v10 extension];
    v11 = [v13 bundleIdentifier];

    v12 = 2;
  }

  if (v8 == 2)
  {
    v12 = 0;
  }

  else if (v8 == 1)
  {
    v14 = v9;

    v12 = 0;
    v11 = v14;
  }

  v15 = [[SBDashBoardCameraPrewarmConfiguration alloc] initWithPrewarmCameraHardware:1 prewarmForCaptureLaunch:1 backgroundLaunchTarget:v12 applicationBundleIdentifier:v9 prewarmingBundleIdentifier:v11];

  return v15;
}

- (void)_notePolicyMayHaveChanged
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [(NSHashTable *)self->_observers allObjects];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7++) captureLaunchPolicyDidUpdatePolicy:self];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

@end