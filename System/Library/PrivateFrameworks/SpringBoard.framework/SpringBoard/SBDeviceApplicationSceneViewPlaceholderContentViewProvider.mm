@interface SBDeviceApplicationSceneViewPlaceholderContentViewProvider
- (BOOL)_checkApplicationRestorationState:(id)state useSnapshot:(BOOL *)snapshot;
- (CGSize)_naturalSizeForOrientation:(int64_t)orientation referenceSize:(CGSize)result;
- (SBScenePlaceholderContentViewProviderDelegate)delegate;
- (id)_initWithApplication:(id)application userInterfaceStyleForDisplayConfigurationProvider:(id)provider;
- (id)_loadLiveXIBViewForApplication:(id)application;
- (id)sceneView:(id)view requestsPlaceholderContentViewWithContext:(id)context;
- (int64_t)userInterfaceStyleForDisplayConfiguration:(id)configuration;
- (unint64_t)_contentTypeToSearchFromSceneHandle:(id)handle withContext:(id)context;
- (void)_snapshotsDidChange:(id)change;
- (void)dealloc;
@end

@implementation SBDeviceApplicationSceneViewPlaceholderContentViewProvider

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  objc_storeWeak(&self->_delegate, 0);
  v4.receiver = self;
  v4.super_class = SBDeviceApplicationSceneViewPlaceholderContentViewProvider;
  [(SBDeviceApplicationSceneViewPlaceholderContentViewProvider *)&v4 dealloc];
}

- (id)_initWithApplication:(id)application userInterfaceStyleForDisplayConfigurationProvider:(id)provider
{
  applicationCopy = application;
  providerCopy = provider;
  v12.receiver = self;
  v12.super_class = SBDeviceApplicationSceneViewPlaceholderContentViewProvider;
  v8 = [(SBDeviceApplicationSceneViewPlaceholderContentViewProvider *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_userInterfaceStyleForDisplayConfigurationProvider, provider);
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v9 selector:sel__snapshotsDidChange_ name:@"SBApplicationSnapshotChangedNotification" object:applicationCopy];
  }

  return v9;
}

- (void)_snapshotsDidChange:(id)change
{
  BSDispatchQueueAssertMain();
  v4 = _snapshotsDidChange__i;
  if (!_snapshotsDidChange__i)
  {
    delegate = [(SBDeviceApplicationSceneViewPlaceholderContentViewProvider *)self delegate];
    [delegate placeholderContentViewProviderContentDidUpdate:self];

    v6 = dispatch_time(0, 1000000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __82__SBDeviceApplicationSceneViewPlaceholderContentViewProvider__snapshotsDidChange___block_invoke;
    block[3] = &unk_2783A8C18;
    block[4] = self;
    dispatch_after(v6, MEMORY[0x277D85CD0], block);
    v4 = _snapshotsDidChange__i;
  }

  _snapshotsDidChange__i = v4 + 1;
}

uint64_t __82__SBDeviceApplicationSceneViewPlaceholderContentViewProvider__snapshotsDidChange___block_invoke(uint64_t result)
{
  v1 = _snapshotsDidChange__i;
  _snapshotsDidChange__i = 0;
  if (v1 >= 2)
  {
    return [*(result + 32) _snapshotsDidChange:0];
  }

  return result;
}

- (id)sceneView:(id)view requestsPlaceholderContentViewWithContext:(id)context
{
  viewCopy = view;
  contextCopy = context;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [SBDeviceApplicationSceneViewPlaceholderContentViewProvider sceneView:a2 requestsPlaceholderContentViewWithContext:self];
  }

  v9 = objc_opt_class();
  v67 = SBSafeCast(v9, contextCopy);
  sceneHandle = [viewCopy sceneHandle];
  displayIdentity = [sceneHandle displayIdentity];
  currentConfiguration = [displayIdentity currentConfiguration];
  [viewCopy referenceSize];
  v13 = v12;
  v15 = v14;
  orientation = [viewCopy orientation];
  application = [sceneHandle application];
  userInterfaceStyleForDisplayConfigurationProvider = self->_userInterfaceStyleForDisplayConfigurationProvider;
  if (!userInterfaceStyleForDisplayConfigurationProvider)
  {
    userInterfaceStyleForDisplayConfigurationProvider = self;
  }

  v63 = userInterfaceStyleForDisplayConfigurationProvider;
  v66 = currentConfiguration;
  v19 = [v63 userInterfaceStyleForDisplayConfiguration:currentConfiguration];
  _windowScene = [sceneHandle _windowScene];
  switcherController = [_windowScene switcherController];

  v62 = switcherController;
  windowManagementContext = [switcherController windowManagementContext];
  if ([windowManagementContext isChamoisOrFlexibleWindowing])
  {
    isClassic = [application isClassic];
  }

  else
  {
    isClassic = 0;
  }

  if (![sceneHandle _mainSceneSupportsInterfaceOrientation:orientation] || (v23 = orientation) == 0)
  {
    v23 = [sceneHandle activationInterfaceOrientationForOrientation:orientation];
  }

  if (v23 <= 1)
  {
    v24 = 1;
  }

  else
  {
    v24 = v23;
  }

  if ([application isClassic])
  {
    [application defaultLaunchingSizeForDisplayConfiguration:v66];
    v13 = v25;
    v15 = v26;
  }

  if (![v67 prefersLiveXIB] || !objc_msgSend(application, "isSystemApplication") || (-[SBDeviceApplicationSceneViewPlaceholderContentViewProvider _loadLiveXIBViewForApplication:](self, "_loadLiveXIBViewForApplication:", application), (v27 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v28 = v19;
    sceneHandle2 = [viewCopy sceneHandle];
    v30 = contextCopy;
    v31 = sceneHandle2;
    selfCopy = self;
    v61 = v30;
    v32 = [(SBDeviceApplicationSceneViewPlaceholderContentViewProvider *)self _contentTypeToSearchFromSceneHandle:sceneHandle2 withContext:?];

    requestedLaunchIdentifier = [v67 requestedLaunchIdentifier];
    if (!requestedLaunchIdentifier)
    {
      requestedLaunchIdentifier = (((v32 << 63) >> 63) & @"SBSuspendSnapshot");
    }

    v34 = [sceneHandle displayEdgeInfoForLayoutEnvironment:{objc_msgSend(v67, "layoutEnvironment")}];
    [v66 pointScale];
    v60 = v34;
    v58 = v28;
    v35 = v24;
    v36 = [application bestSnapshotWithImageName:requestedLaunchIdentifier sceneHandle:sceneHandle variantID:0 scale:1 referenceSize:v32 requireExactSize:-1 contentTypeMask:v24 statusBarStateMask:v67 launchingOrientation:v58 contentOverridesContext:v34 userInterfaceStyle:? displayEdgeInfo:?];
    interfaceOrientation = [v36 interfaceOrientation];
    v38 = MEMORY[0x277CBF3A0];
    if (isClassic)
    {
      [viewCopy bounds];
      v40 = v39;
      v42 = v41;
      v43 = selfCopy;
      if ((orientation - 3) < 2 != (interfaceOrientation - 3) < 2)
      {
        BSSizeSwap();
        v40 = v44;
        v42 = v45;
      }

      if (v36)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v40 = *(MEMORY[0x277CBF3A0] + 16);
      v42 = *(MEMORY[0x277CBF3A0] + 24);
      v43 = selfCopy;
      if (v36)
      {
LABEL_25:
        v46 = *v38;
        v47 = v38[1];
        statusBarDescriptor = [viewCopy statusBarDescriptor];
        v49 = -[SBDeviceApplicationSceneViewPlaceholderContentViewProvider _contentViewFromSceneHandle:displayConfiguration:orientation:snapshot:size:statusBarDescriptor:hasOrientationMismatchForClassicApp:customContainerBounds:](v43, "_contentViewFromSceneHandle:displayConfiguration:orientation:snapshot:size:statusBarDescriptor:hasOrientationMismatchForClassicApp:customContainerBounds:", sceneHandle, v66, v35, v36, statusBarDescriptor, [v67 hasOrientationMismatchForClassicApp], v13, v15, v46, v47, v40, v42);

        [viewCopy referenceSize];
        [(SBDeviceApplicationSceneViewPlaceholderContentViewProvider *)v43 _naturalSizeForOrientation:orientation referenceSize:?];
        BSRectWithSize();
        v27 = [(BSUIOrientationTransformWrapperView *)[_SBDeviceApplicationSceneViewPlaceholderContentView alloc] initWithFrame:v50, v51, v52, v53];
        [(BSUIOrientationTransformWrapperView *)v27 addContentView:v49];
        [(BSUIOrientationTransformWrapperView *)v27 setContainerOrientation:orientation];
        if (isClassic)
        {
          [(BSUIOrientationTransformWrapperView *)v27 setContentOrientation:interfaceOrientation];
        }

        [(_SBDeviceApplicationSceneViewPlaceholderContentView *)v27 setClipsToBounds:1];
        statusBarSettings = [v36 statusBarSettings];
        style = [statusBarSettings style];

        if (style == -1)
        {
          info = [application info];
          style = [info defaultStatusBarStyle];
        }

        [(_SBDeviceApplicationSceneViewPlaceholderContentView *)v27 setStatusBarStyle:style];

        goto LABEL_32;
      }
    }

    v27 = 0;
LABEL_32:

    contextCopy = v61;
  }

  return v27;
}

- (BOOL)_checkApplicationRestorationState:(id)state useSnapshot:(BOOL *)snapshot
{
  stateCopy = state;
  bundleIdentifier = [stateCopy bundleIdentifier];
  info = [stateCopy info];

  restorationArchiveContainerURL = [info restorationArchiveContainerURL];
  path = [restorationArchiveContainerURL path];
  v9 = _checkApplicationRestorationState();

  return v9;
}

- (int64_t)userInterfaceStyleForDisplayConfiguration:(id)configuration
{
  v3 = SBApp;
  identity = [configuration identity];
  v5 = [v3 userInterfaceStyleProviderForDisplay:identity];
  currentStyle = [v5 currentStyle];

  return currentStyle;
}

- (CGSize)_naturalSizeForOrientation:(int64_t)orientation referenceSize:(CGSize)result
{
  if ((orientation - 1) >= 2)
  {
    height = result.height;
  }

  else
  {
    height = result.width;
  }

  if ((orientation - 1) >= 2)
  {
    result.height = result.width;
  }

  v5 = height;
  result.width = v5;
  return result;
}

- (id)_loadLiveXIBViewForApplication:(id)application
{
  applicationCopy = application;
  if (([applicationCopy isSystemApplication] & 1) == 0)
  {
    [(SBDeviceApplicationSceneViewPlaceholderContentViewProvider *)a2 _loadLiveXIBViewForApplication:?];
  }

  info = [applicationCopy info];
  launchInterfaceFileName = [info launchInterfaceFileName];

  v8 = MEMORY[0x277CCA8D8];
  info2 = [applicationCopy info];

  bundleURL = [info2 bundleURL];
  path = [bundleURL path];
  v12 = [v8 bundleWithPath:path];

  v13 = [MEMORY[0x277D757B0] nibWithNibName:launchInterfaceFileName bundle:v12];
  v14 = [v13 instantiateWithOwner:0 options:0];
  firstObject = [v14 firstObject];
  objc_opt_class();
  v16 = 0;
  if (objc_opt_isKindOfClass())
  {
    v16 = firstObject;
  }

  return v16;
}

- (unint64_t)_contentTypeToSearchFromSceneHandle:(id)handle withContext:(id)context
{
  handleCopy = handle;
  contextCopy = context;
  v8 = objc_opt_class();
  v9 = SBSafeCast(v8, contextCopy);
  canShowUserContent = [contextCopy canShowUserContent];

  if (!canShowUserContent)
  {
    goto LABEL_6;
  }

  _windowScene = [handleCopy _windowScene];
  authenticationStatusProvider = [_windowScene authenticationStatusProvider];
  isAuthenticated = [authenticationStatusProvider isAuthenticated];

  if (!isAuthenticated)
  {
    goto LABEL_6;
  }

  preferredContentType = [v9 preferredContentType];
  if (!preferredContentType)
  {
    application = [handleCopy application];
    processState = [application processState];
    isRunning = [processState isRunning];

    if (isRunning)
    {
LABEL_9:
      v15 = -1;
LABEL_16:

      goto LABEL_7;
    }

    [handleCopy hasMainSceneBeenForegroundAtLeastOnce];
    v22 = 0;
    if ([(SBDeviceApplicationSceneViewPlaceholderContentViewProvider *)self _checkApplicationRestorationState:application useSnapshot:&v22])
    {
      if (v22)
      {
        goto LABEL_9;
      }
    }

    else if (_os_feature_enabled_impl())
    {
      info = [application info];
      supportsMultiwindow = [info supportsMultiwindow];

      if (supportsMultiwindow)
      {
        goto LABEL_9;
      }
    }

    v15 = 6;
    goto LABEL_16;
  }

  if (preferredContentType != 1)
  {
LABEL_6:
    v15 = 6;
    goto LABEL_7;
  }

  v15 = -1;
LABEL_7:

  return v15;
}

- (SBScenePlaceholderContentViewProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)sceneView:(uint64_t)a1 requestsPlaceholderContentViewWithContext:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBDeviceApplicationSceneViewPlaceholderContentViewProvider.m" lineNumber:100 description:@"Unsupported scene view provided to SBDeviceApplicationSceneViewPlaceholderContentViewProvider."];
}

- (void)_loadLiveXIBViewForApplication:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBDeviceApplicationSceneViewPlaceholderContentViewProvider.m" lineNumber:232 description:@"Cannot load a live XIB view for non-system applications."];
}

@end