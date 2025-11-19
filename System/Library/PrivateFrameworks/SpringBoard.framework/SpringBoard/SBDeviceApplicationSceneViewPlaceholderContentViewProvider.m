@interface SBDeviceApplicationSceneViewPlaceholderContentViewProvider
- (BOOL)_checkApplicationRestorationState:(id)a3 useSnapshot:(BOOL *)a4;
- (CGSize)_naturalSizeForOrientation:(int64_t)a3 referenceSize:(CGSize)result;
- (SBScenePlaceholderContentViewProviderDelegate)delegate;
- (id)_initWithApplication:(id)a3 userInterfaceStyleForDisplayConfigurationProvider:(id)a4;
- (id)_loadLiveXIBViewForApplication:(id)a3;
- (id)sceneView:(id)a3 requestsPlaceholderContentViewWithContext:(id)a4;
- (int64_t)userInterfaceStyleForDisplayConfiguration:(id)a3;
- (unint64_t)_contentTypeToSearchFromSceneHandle:(id)a3 withContext:(id)a4;
- (void)_snapshotsDidChange:(id)a3;
- (void)dealloc;
@end

@implementation SBDeviceApplicationSceneViewPlaceholderContentViewProvider

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  objc_storeWeak(&self->_delegate, 0);
  v4.receiver = self;
  v4.super_class = SBDeviceApplicationSceneViewPlaceholderContentViewProvider;
  [(SBDeviceApplicationSceneViewPlaceholderContentViewProvider *)&v4 dealloc];
}

- (id)_initWithApplication:(id)a3 userInterfaceStyleForDisplayConfigurationProvider:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = SBDeviceApplicationSceneViewPlaceholderContentViewProvider;
  v8 = [(SBDeviceApplicationSceneViewPlaceholderContentViewProvider *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_userInterfaceStyleForDisplayConfigurationProvider, a4);
    v10 = [MEMORY[0x277CCAB98] defaultCenter];
    [v10 addObserver:v9 selector:sel__snapshotsDidChange_ name:@"SBApplicationSnapshotChangedNotification" object:v6];
  }

  return v9;
}

- (void)_snapshotsDidChange:(id)a3
{
  BSDispatchQueueAssertMain();
  v4 = _snapshotsDidChange__i;
  if (!_snapshotsDidChange__i)
  {
    v5 = [(SBDeviceApplicationSceneViewPlaceholderContentViewProvider *)self delegate];
    [v5 placeholderContentViewProviderContentDidUpdate:self];

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

- (id)sceneView:(id)a3 requestsPlaceholderContentViewWithContext:(id)a4
{
  v7 = a3;
  v8 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [SBDeviceApplicationSceneViewPlaceholderContentViewProvider sceneView:a2 requestsPlaceholderContentViewWithContext:self];
  }

  v9 = objc_opt_class();
  v67 = SBSafeCast(v9, v8);
  v10 = [v7 sceneHandle];
  v64 = [v10 displayIdentity];
  v11 = [v64 currentConfiguration];
  [v7 referenceSize];
  v13 = v12;
  v15 = v14;
  v16 = [v7 orientation];
  v17 = [v10 application];
  userInterfaceStyleForDisplayConfigurationProvider = self->_userInterfaceStyleForDisplayConfigurationProvider;
  if (!userInterfaceStyleForDisplayConfigurationProvider)
  {
    userInterfaceStyleForDisplayConfigurationProvider = self;
  }

  v63 = userInterfaceStyleForDisplayConfigurationProvider;
  v66 = v11;
  v19 = [v63 userInterfaceStyleForDisplayConfiguration:v11];
  v20 = [v10 _windowScene];
  v21 = [v20 switcherController];

  v62 = v21;
  v22 = [v21 windowManagementContext];
  if ([v22 isChamoisOrFlexibleWindowing])
  {
    v65 = [v17 isClassic];
  }

  else
  {
    v65 = 0;
  }

  if (![v10 _mainSceneSupportsInterfaceOrientation:v16] || (v23 = v16) == 0)
  {
    v23 = [v10 activationInterfaceOrientationForOrientation:v16];
  }

  if (v23 <= 1)
  {
    v24 = 1;
  }

  else
  {
    v24 = v23;
  }

  if ([v17 isClassic])
  {
    [v17 defaultLaunchingSizeForDisplayConfiguration:v66];
    v13 = v25;
    v15 = v26;
  }

  if (![v67 prefersLiveXIB] || !objc_msgSend(v17, "isSystemApplication") || (-[SBDeviceApplicationSceneViewPlaceholderContentViewProvider _loadLiveXIBViewForApplication:](self, "_loadLiveXIBViewForApplication:", v17), (v27 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v28 = v19;
    v29 = [v7 sceneHandle];
    v30 = v8;
    v31 = v29;
    v59 = self;
    v61 = v30;
    v32 = [(SBDeviceApplicationSceneViewPlaceholderContentViewProvider *)self _contentTypeToSearchFromSceneHandle:v29 withContext:?];

    v33 = [v67 requestedLaunchIdentifier];
    if (!v33)
    {
      v33 = (((v32 << 63) >> 63) & @"SBSuspendSnapshot");
    }

    v34 = [v10 displayEdgeInfoForLayoutEnvironment:{objc_msgSend(v67, "layoutEnvironment")}];
    [v66 pointScale];
    v60 = v34;
    v58 = v28;
    v35 = v24;
    v36 = [v17 bestSnapshotWithImageName:v33 sceneHandle:v10 variantID:0 scale:1 referenceSize:v32 requireExactSize:-1 contentTypeMask:v24 statusBarStateMask:v67 launchingOrientation:v58 contentOverridesContext:v34 userInterfaceStyle:? displayEdgeInfo:?];
    v37 = [v36 interfaceOrientation];
    v38 = MEMORY[0x277CBF3A0];
    if (v65)
    {
      [v7 bounds];
      v40 = v39;
      v42 = v41;
      v43 = v59;
      if ((v16 - 3) < 2 != (v37 - 3) < 2)
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
      v43 = v59;
      if (v36)
      {
LABEL_25:
        v46 = *v38;
        v47 = v38[1];
        v48 = [v7 statusBarDescriptor];
        v49 = -[SBDeviceApplicationSceneViewPlaceholderContentViewProvider _contentViewFromSceneHandle:displayConfiguration:orientation:snapshot:size:statusBarDescriptor:hasOrientationMismatchForClassicApp:customContainerBounds:](v43, "_contentViewFromSceneHandle:displayConfiguration:orientation:snapshot:size:statusBarDescriptor:hasOrientationMismatchForClassicApp:customContainerBounds:", v10, v66, v35, v36, v48, [v67 hasOrientationMismatchForClassicApp], v13, v15, v46, v47, v40, v42);

        [v7 referenceSize];
        [(SBDeviceApplicationSceneViewPlaceholderContentViewProvider *)v43 _naturalSizeForOrientation:v16 referenceSize:?];
        BSRectWithSize();
        v27 = [(BSUIOrientationTransformWrapperView *)[_SBDeviceApplicationSceneViewPlaceholderContentView alloc] initWithFrame:v50, v51, v52, v53];
        [(BSUIOrientationTransformWrapperView *)v27 addContentView:v49];
        [(BSUIOrientationTransformWrapperView *)v27 setContainerOrientation:v16];
        if (v65)
        {
          [(BSUIOrientationTransformWrapperView *)v27 setContentOrientation:v37];
        }

        [(_SBDeviceApplicationSceneViewPlaceholderContentView *)v27 setClipsToBounds:1];
        v54 = [v36 statusBarSettings];
        v55 = [v54 style];

        if (v55 == -1)
        {
          v56 = [v17 info];
          v55 = [v56 defaultStatusBarStyle];
        }

        [(_SBDeviceApplicationSceneViewPlaceholderContentView *)v27 setStatusBarStyle:v55];

        goto LABEL_32;
      }
    }

    v27 = 0;
LABEL_32:

    v8 = v61;
  }

  return v27;
}

- (BOOL)_checkApplicationRestorationState:(id)a3 useSnapshot:(BOOL *)a4
{
  v4 = a3;
  v5 = [v4 bundleIdentifier];
  v6 = [v4 info];

  v7 = [v6 restorationArchiveContainerURL];
  v8 = [v7 path];
  v9 = _checkApplicationRestorationState();

  return v9;
}

- (int64_t)userInterfaceStyleForDisplayConfiguration:(id)a3
{
  v3 = SBApp;
  v4 = [a3 identity];
  v5 = [v3 userInterfaceStyleProviderForDisplay:v4];
  v6 = [v5 currentStyle];

  return v6;
}

- (CGSize)_naturalSizeForOrientation:(int64_t)a3 referenceSize:(CGSize)result
{
  if ((a3 - 1) >= 2)
  {
    height = result.height;
  }

  else
  {
    height = result.width;
  }

  if ((a3 - 1) >= 2)
  {
    result.height = result.width;
  }

  v5 = height;
  result.width = v5;
  return result;
}

- (id)_loadLiveXIBViewForApplication:(id)a3
{
  v5 = a3;
  if (([v5 isSystemApplication] & 1) == 0)
  {
    [(SBDeviceApplicationSceneViewPlaceholderContentViewProvider *)a2 _loadLiveXIBViewForApplication:?];
  }

  v6 = [v5 info];
  v7 = [v6 launchInterfaceFileName];

  v8 = MEMORY[0x277CCA8D8];
  v9 = [v5 info];

  v10 = [v9 bundleURL];
  v11 = [v10 path];
  v12 = [v8 bundleWithPath:v11];

  v13 = [MEMORY[0x277D757B0] nibWithNibName:v7 bundle:v12];
  v14 = [v13 instantiateWithOwner:0 options:0];
  v15 = [v14 firstObject];
  objc_opt_class();
  v16 = 0;
  if (objc_opt_isKindOfClass())
  {
    v16 = v15;
  }

  return v16;
}

- (unint64_t)_contentTypeToSearchFromSceneHandle:(id)a3 withContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_class();
  v9 = SBSafeCast(v8, v7);
  v10 = [v7 canShowUserContent];

  if (!v10)
  {
    goto LABEL_6;
  }

  v11 = [v6 _windowScene];
  v12 = [v11 authenticationStatusProvider];
  v13 = [v12 isAuthenticated];

  if (!v13)
  {
    goto LABEL_6;
  }

  v14 = [v9 preferredContentType];
  if (!v14)
  {
    v17 = [v6 application];
    v18 = [v17 processState];
    v19 = [v18 isRunning];

    if (v19)
    {
LABEL_9:
      v15 = -1;
LABEL_16:

      goto LABEL_7;
    }

    [v6 hasMainSceneBeenForegroundAtLeastOnce];
    v22 = 0;
    if ([(SBDeviceApplicationSceneViewPlaceholderContentViewProvider *)self _checkApplicationRestorationState:v17 useSnapshot:&v22])
    {
      if (v22)
      {
        goto LABEL_9;
      }
    }

    else if (_os_feature_enabled_impl())
    {
      v20 = [v17 info];
      v21 = [v20 supportsMultiwindow];

      if (v21)
      {
        goto LABEL_9;
      }
    }

    v15 = 6;
    goto LABEL_16;
  }

  if (v14 != 1)
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