@interface SBDashBoardExtensionWhileLockedCapturePolicy
+ (id)new;
+ (id)policyWithAuthenticationStatusProvider:(id)provider;
+ (id)policyWithAuthenticationStatusProvider:(id)provider captureApplicationMonitor:(id)monitor;
- (SBDashBoardExtensionWhileLockedCapturePolicy)init;
- (SBDashBoardExtensionWhileLockedCapturePolicy)initWithAuthenticationStatusProvider:(id)provider captureApplicationMonitor:(id)monitor;
- (id)prewarmingConfigurationForIdentifier:(id)identifier captureApplicationProvider:(id)provider;
- (id)resolveCameraDestinationLaunchOf:(id)of fromSource:(id)source;
- (void)_notePolicyMayHaveChanged;
@end

@implementation SBDashBoardExtensionWhileLockedCapturePolicy

+ (id)new
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_launchDestinationWithPlacement_entity_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"SBDashBoardExtensionWhileLockedCapturePolicy.m" lineNumber:40 description:{@"%s is unavailable; use %@ instead", "+[SBDashBoardExtensionWhileLockedCapturePolicy new]", v5}];

  return 0;
}

- (SBDashBoardExtensionWhileLockedCapturePolicy)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithPlacement_entity_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"SBDashBoardExtensionWhileLockedCapturePolicy.m" lineNumber:44 description:{@"%s is unavailable; use %@ instead", "-[SBDashBoardExtensionWhileLockedCapturePolicy init]", v5}];

  return 0;
}

+ (id)policyWithAuthenticationStatusProvider:(id)provider
{
  v4 = MEMORY[0x277D243D0];
  providerCopy = provider;
  sharedInstance = [v4 sharedInstance];
  v7 = [self policyWithAuthenticationStatusProvider:providerCopy captureApplicationMonitor:sharedInstance];

  return v7;
}

+ (id)policyWithAuthenticationStatusProvider:(id)provider captureApplicationMonitor:(id)monitor
{
  monitorCopy = monitor;
  providerCopy = provider;
  v8 = [[self alloc] initWithAuthenticationStatusProvider:providerCopy captureApplicationMonitor:monitorCopy];

  return v8;
}

- (SBDashBoardExtensionWhileLockedCapturePolicy)initWithAuthenticationStatusProvider:(id)provider captureApplicationMonitor:(id)monitor
{
  providerCopy = provider;
  monitorCopy = monitor;
  v15.receiver = self;
  v15.super_class = SBDashBoardExtensionWhileLockedCapturePolicy;
  v9 = [(SBDashBoardExtensionWhileLockedCapturePolicy *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_authenticationStatusProvider, provider);
    objc_storeStrong(&v10->_applicationMonitor, monitor);
    [(LCSCaptureApplicationMonitor *)v10->_applicationMonitor addObserver:v10];
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observers = v10->_observers;
    v10->_observers = weakObjectsHashTable;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v10 selector:sel__authenticationStateDidChange_ name:*MEMORY[0x277D66078] object:0];
  }

  return v10;
}

- (id)resolveCameraDestinationLaunchOf:(id)of fromSource:(id)source
{
  ofCopy = of;
  sourceCopy = source;
  application = [ofCopy application];
  bundleIdentifier = [application bundleIdentifier];

  knownCameraCaptureApplicationsByBundleIdentifier = [(LCSCaptureApplicationMonitor *)self->_applicationMonitor knownCameraCaptureApplicationsByBundleIdentifier];
  isAuthenticatedCached = [(SBFAuthenticationStatusProvider *)self->_authenticationStatusProvider isAuthenticatedCached];
  if ([bundleIdentifier isEqualToString:@"com.apple.camera"])
  {
    v12 = &SBDashBoardCapturePlacementCameraPage;
  }

  else if ([sourceCopy isEqualToString:SBDashBoardCaptureLaunchSourceCaptureButton])
  {
    v12 = &SBDashBoardCapturePlacementCameraOverlay;
    if (isAuthenticatedCached)
    {
      v12 = &SBDashBoardCapturePlacementCaptureButtonCameraPage;
    }
  }

  else
  {
    if (isAuthenticatedCached)
    {
      v13 = 0;
      goto LABEL_17;
    }

    v12 = &SBDashBoardCapturePlacementSecureApp;
  }

  v13 = *v12;
  if (v13)
  {
    v14 = [knownCameraCaptureApplicationsByBundleIdentifier objectForKeyedSubscript:bundleIdentifier];
    if (v14)
    {
      v15 = v14;
      v16 = (isAuthenticatedCached & 1) != 0 ? [[SBDashBoardApplicationHostableEntity alloc] initWithApplicationSceneEntity:ofCopy]: [[SBDashBoardSecureCaptureExtensionHostableEntity alloc] initWithCaptureApplication:v14 launchType:0];
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

- (id)prewarmingConfigurationForIdentifier:(id)identifier captureApplicationProvider:(id)provider
{
  providerCopy = provider;
  identifierCopy = identifier;
  prewarmType = [identifierCopy prewarmType];
  applicationBundleIdentifier = [identifierCopy applicationBundleIdentifier];

  LODWORD(identifierCopy) = [(SBFAuthenticationStatusProvider *)self->_authenticationStatusProvider isAuthenticatedCached];
  v10 = [providerCopy captureApplicationForBundleIdentifier:applicationBundleIdentifier];

  if (identifierCopy)
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

  v15 = [[SBDashBoardCameraPrewarmConfiguration alloc] initWithPrewarmCameraHardware:1 prewarmForCaptureLaunch:1 backgroundLaunchTarget:v12 applicationBundleIdentifier:applicationBundleIdentifier prewarmingBundleIdentifier:bundleIdentifier];

  return v15;
}

- (void)_notePolicyMayHaveChanged
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  allObjects = [(NSHashTable *)self->_observers allObjects];
  v4 = [allObjects countByEnumeratingWithState:&v8 objects:v12 count:16];
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
          objc_enumerationMutation(allObjects);
        }

        [*(*(&v8 + 1) + 8 * v7++) captureLaunchPolicyDidUpdatePolicy:self];
      }

      while (v5 != v7);
      v5 = [allObjects countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

@end