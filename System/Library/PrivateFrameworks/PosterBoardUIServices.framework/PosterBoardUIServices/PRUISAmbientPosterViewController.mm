@interface PRUISAmbientPosterViewController
+ (NSArray)suggestedInstanceIdentifiers;
+ (id)defaultSnapshotCacheURLInCurrentContainer:(BOOL)container;
- (BOOL)_shouldSnapshot;
- (FBSDisplayConfiguration)displayConfiguration;
- (PRUISAmbientPosterViewController)initWithBoundingShape:(int64_t)shape;
- (PRUISAmbientPosterViewControllerDelegate)delegate;
- (id)_currentSnapshotDefinition;
- (id)_makeSnapshotRequest;
- (id)_posterProviderForPosterPath:(id)path;
- (id)_snapshotBundle:(id)bundle imageForLayer:(unint64_t)layer;
- (id)cancelTouchesForCurrentEventInHostedContent;
- (id)scene:(id)scene handleActions:(id)actions;
- (int64_t)_currentOrientation;
- (int64_t)_renderingModeForVisibility:(unint64_t)visibility;
- (unint64_t)_effectivePresentationMode;
- (unint64_t)_titleAlignmentForInterfaceOrientation:(int64_t)orientation;
- (unint64_t)updatePosterConfiguration:(id)configuration;
- (void)_backlightLuminanceTraitDidChange:(id)change previousTraitCollection:(id)collection;
- (void)_clearTouchDeliveryPolicies;
- (void)_createCancelTouchesAssertionsForLayers:(id)layers withInitialTouchTimestamp:(double)timestamp server:(id)server;
- (void)_enumerateSceneObserversRespondingToSelector:(SEL)selector usingBlock:(id)block;
- (void)_enumerateSnapshotLayerViews:(id)views;
- (void)_fetchSnapshotsWithRequest:(id)request animated:(BOOL)animated;
- (void)_noteWindowWillRotate:(id)rotate;
- (void)_registerForAmbientPresentationTraitChanges;
- (void)_resetScreenWakeStateForTeardown:(BOOL)teardown;
- (void)_screenDidTurnOn;
- (void)_setClientWantsScreenWakeEvents:(BOOL)events;
- (void)_setupScene;
- (void)_takeNewSnapshots;
- (void)_teardownScene;
- (void)_updateAmbientPresentationSettingsForSceneSettings:(id)settings;
- (void)_updateForCurrentPresentationMode;
- (void)_updateForSnapshotBundle:(id)bundle;
- (void)_updateSceneLayerPresenters;
- (void)_updateSceneSettingsForUpdatedDisplayConfiguration;
- (void)_updateSceneWithCompletion:(id)completion;
- (void)_updateSceneWithCompletion:(id)completion window:(id)window;
- (void)_updateSceneWithCompletion:(id)completion window:(id)window orientation:(int64_t)orientation;
- (void)_updateSeparatedLayerHosting;
- (void)_updateSnapshotLayerVisibility;
- (void)_updateSnapshotOpacities;
- (void)_updateSnapshotsAnimated:(BOOL)animated;
- (void)_updateTouchDeliveryPolicies;
- (void)_windowDidAttachContext:(id)context;
- (void)_windowDidDetachContext:(id)context;
- (void)addSceneObserver:(id)observer;
- (void)dealloc;
- (void)eventOccurred:(id)occurred;
- (void)fetchAppIntentsListenerEndpointWithHandler:(id)handler;
- (void)invalidate;
- (void)removeSceneObserver:(id)observer;
- (void)scene:(id)scene clientDidConnect:(id)connect;
- (void)scene:(id)scene didUpdateClientSettingsWithDiff:(id)diff oldClientSettings:(id)settings transitionContext:(id)context;
- (void)sceneContentStateDidChange:(id)change;
- (void)sceneDidDeactivate:(id)deactivate withError:(id)error;
- (void)setDisplayConfiguration:(id)configuration;
- (void)setExtensionUserInteractionEnabled:(BOOL)enabled;
- (void)setIsIdle:(BOOL)idle;
- (void)setIsPreview:(BOOL)preview;
- (void)setIsShowingIdealizedTime:(BOOL)time;
- (void)setOpacity:(double)opacity forLayers:(unint64_t)layers;
- (void)setPresentationMode:(unint64_t)mode;
- (void)setShouldShareTouchesWithHost:(BOOL)host;
- (void)setSnapshotController:(id)controller;
- (void)setVisibility:(unint64_t)visibility;
- (void)setVisibleSnapshotLayers:(unint64_t)layers;
- (void)userTapEventOccurredWithLocation:(CGPoint)location;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear;
- (void)viewIsAppearing:(BOOL)appearing;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
- (void)viewWillMoveToWindow:(id)window;
@end

@implementation PRUISAmbientPosterViewController

- (BOOL)_shouldSnapshot
{
  snapshotController = self->__snapshotController;
  if (snapshotController)
  {
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    v4 = [standardUserDefaults objectForKey:@"PRUISAmbientEnableSnapshots"];
    v5 = objc_opt_class();
    v6 = v4;
    if (v5)
    {
      if (objc_opt_isKindOfClass())
      {
        v7 = v6;
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;

    bOOLValue = [v8 BOOLValue];
    LOBYTE(snapshotController) = (v8 == 0) | bOOLValue;
  }

  return snapshotController & 1;
}

- (PRUISAmbientPosterViewController)initWithBoundingShape:(int64_t)shape
{
  v23[1] = *MEMORY[0x1E69E9840];
  v5 = PUIPosterBoundingShapeFromInt();
  if ((PUIPosterBoundingShapeIsValid() & 1) == 0)
  {
    [(PRUISAmbientPosterViewController *)a2 initWithBoundingShape:?];
  }

  v22.receiver = self;
  v22.super_class = PRUISAmbientPosterViewController;
  v6 = [(PRUISAmbientPosterViewController *)&v22 initWithNibName:0 bundle:0];
  if (v6)
  {
    v7 = objc_alloc_init(PRUISDefaultSessionReconnectPolicy);
    reconnectPolicy = v6->_reconnectPolicy;
    v6->_reconnectPolicy = v7;

    v6->_visibleSnapshotLayers = -1;
    v6->_boundingShape = v5;
    v9 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    snapshotBackgroundLayerView = v6->_snapshotBackgroundLayerView;
    v6->_snapshotBackgroundLayerView = v9;

    v11 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    snapshotForegroundLayerView = v6->_snapshotForegroundLayerView;
    v6->_snapshotForegroundLayerView = v11;

    v13 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    snapshotFloatingLayerView = v6->_snapshotFloatingLayerView;
    v6->_snapshotFloatingLayerView = v13;

    v6->_backgroundOpacity = 1.0;
    v6->_foregroundOpacity = 1.0;
    v6->_floatingOpacity = 1.0;
    mainConfiguration = [MEMORY[0x1E699F7A8] mainConfiguration];
    displayConfiguration = v6->_displayConfiguration;
    v6->_displayConfiguration = mainConfiguration;

    v17 = objc_opt_self();
    v23[0] = v17;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
    v19 = [(PRUISAmbientPosterViewController *)v6 registerForTraitChanges:v18 withAction:sel__backlightLuminanceTraitDidChange_previousTraitCollection_];

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v6 selector:sel__windowDidAttachContext_ name:*MEMORY[0x1E69DEB08] object:0];
    [defaultCenter addObserver:v6 selector:sel__windowDidDetachContext_ name:*MEMORY[0x1E69DEB10] object:0];
  }

  return v6;
}

- (void)dealloc
{
  if (self->_ambientPresentationTraitChangeRegistration)
  {
    [(PRUISAmbientPosterViewController *)self unregisterForTraitChanges:?];
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69DEB08] object:0];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69DEB10] object:0];
  [(PRUISAmbientPosterViewController *)self invalidate];

  v4.receiver = self;
  v4.super_class = PRUISAmbientPosterViewController;
  [(PRUISAmbientPosterViewController *)&v4 dealloc];
}

- (unint64_t)updatePosterConfiguration:(id)configuration
{
  v33 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  configuration = self->_configuration;
  if (configuration)
  {
    _path = [(PRSPosterConfiguration *)configuration _path];
    _path2 = [configurationCopy _path];
    v24 = _path;
    serverIdentity = [_path serverIdentity];
    serverIdentity2 = [_path2 serverIdentity];
    posterUUID = [serverIdentity posterUUID];
    posterUUID2 = [serverIdentity2 posterUUID];
    v13 = [posterUUID isEqual:posterUUID2];

    if (v13)
    {
      objc_storeStrong(&self->_configuration, configuration);
      version = [serverIdentity2 version];
      version2 = [serverIdentity version];
      v16 = PRUISLogCommon();
      v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
      if (version == version2)
      {
        if (v17)
        {
          pui_shortDescription = [(FBScene *)self->_scene pui_shortDescription];
          *buf = 138543362;
          v28 = pui_shortDescription;
          _os_log_impl(&dword_1CAE63000, v16, OS_LOG_TYPE_DEFAULT, "Refreshing ambient poster %{public}@.", buf, 0xCu);
        }

        v19 = 2;
      }

      else
      {
        if (v17)
        {
          pui_shortDescription2 = [(FBScene *)self->_scene pui_shortDescription];
          *buf = 138543874;
          v28 = pui_shortDescription2;
          v29 = 2048;
          version3 = [serverIdentity version];
          v31 = 2048;
          version4 = [serverIdentity2 version];
          _os_log_impl(&dword_1CAE63000, v16, OS_LOG_TYPE_DEFAULT, "Updating ambient poster %{public}@ from version %llu to %llu.", buf, 0x20u);
        }

        v19 = 1;
      }

      scene = self->_scene;
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __62__PRUISAmbientPosterViewController_updatePosterConfiguration___block_invoke;
      v25[3] = &unk_1E83A7868;
      v25[4] = self;
      v26 = _path2;
      [(FBScene *)scene pruis_updateWithoutActivating:v25];
    }

    else
    {
      v20 = PRUISLogCommon();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1CAE63000, v20, OS_LOG_TYPE_DEFAULT, "Cannot update to proposed poster configuration.", buf, 2u);
      }

      v19 = 3;
    }

    [(PRUISAmbientPosterViewController *)self _registerForAmbientPresentationTraitChanges];
    if (v19 > 2)
    {
      v19 = 3;
      goto LABEL_18;
    }
  }

  else
  {
    objc_storeStrong(&self->_configuration, configuration);
    [(PRUISAmbientPosterViewController *)self _setupScene];
    [(PRUISAmbientPosterViewController *)self _registerForAmbientPresentationTraitChanges];
    v19 = 0;
  }

  [(PRUISAmbientPosterViewController *)self _updateSnapshots];
  [(PRUISAmbientPosterViewController *)self _updateForCurrentPresentationMode];
  [(PRUISAmbientPosterViewController *)self _updateSceneWithCompletion:0];
LABEL_18:

  return v19;
}

- (void)setExtensionUserInteractionEnabled:(BOOL)enabled
{
  if (self->_extensionUserInteractionEnabled != enabled)
  {
    self->_extensionUserInteractionEnabled = enabled;
    [(PRUISAmbientPosterViewController *)self _updateSceneWithCompletion:0];
  }
}

- (void)setIsPreview:(BOOL)preview
{
  if (self->_isPreview != preview)
  {
    self->_isPreview = preview;
    [(PRUISAmbientPosterViewController *)self _updateForCurrentIsSnapshot];
  }
}

- (void)setIsShowingIdealizedTime:(BOOL)time
{
  if (self->_isShowingIdealizedTime != time)
  {
    self->_isShowingIdealizedTime = time;
    [(PRUISAmbientPosterViewController *)self _updateForCurrentIsShowingIdealizedTime];
  }
}

- (void)setIsIdle:(BOOL)idle
{
  if (self->_isIdle != idle)
  {
    self->_isIdle = idle;
    [(PRUISAmbientPosterViewController *)self _updateForCurrentIsIdle];
  }
}

- (void)setVisibility:(unint64_t)visibility
{
  if (self->_visibility != visibility)
  {
    self->_visibility = visibility;
    [(PRUISAmbientPosterViewController *)self _updateForCurrentVisibility];
  }
}

- (void)setPresentationMode:(unint64_t)mode
{
  if (self->_presentationMode != mode)
  {
    self->_presentationMode = mode;
    [(PRUISAmbientPosterViewController *)self _updateForCurrentPresentationMode];
  }
}

- (void)setVisibleSnapshotLayers:(unint64_t)layers
{
  if (self->_visibleSnapshotLayers != layers)
  {
    self->_visibleSnapshotLayers = layers;
    [(PRUISAmbientPosterViewController *)self _updateSnapshotLayerVisibility];
  }
}

+ (id)defaultSnapshotCacheURLInCurrentContainer:(BOOL)container
{
  v10[3] = *MEMORY[0x1E69E9840];
  if (container)
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v4 = [defaultManager URLForDirectory:13 inDomain:1 appropriateForURL:0 create:0 error:0];
  }

  else
  {
    v5 = MEMORY[0x1E695DFF8];
    defaultManager = BSCurrentUserDirectory();
    v10[0] = defaultManager;
    v10[1] = @"Library";
    v10[2] = @"Caches";
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:3];
    v4 = [v5 fileURLWithPathComponents:v6];
  }

  v7 = [v4 URLByAppendingPathComponent:@"Ambient"];
  v8 = [v7 URLByAppendingPathComponent:@"PosterSnapshots"];

  return v8;
}

- (void)setSnapshotController:(id)controller
{
  controllerCopy = controller;
  if (self->__snapshotController != controllerCopy)
  {
    v6 = controllerCopy;
    objc_storeStrong(&self->__snapshotController, controller);
    controllerCopy = v6;
  }
}

- (void)invalidate
{
  [(PRUISAmbientPosterViewController *)self _teardownScene];

  [(PRUISAmbientPosterViewController *)self setSnapshotController:0];
}

- (void)userTapEventOccurredWithLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  clientSettings = [(FBScene *)self->_scene clientSettings];
  if ([clientSettings pui_userTapEventsRequested])
  {

    v7 = *MEMORY[0x1E69C53D0];
LABEL_4:
    v12 = [objc_alloc(MEMORY[0x1E69C5350]) initWithType:v7 location:{x, y}];
    [(PRUISAmbientPosterViewController *)self eventOccurred:v12];

    return;
  }

  clientSettings2 = [(FBScene *)self->_scene clientSettings];
  pr_requestedRenderingEventTypes = [clientSettings2 pr_requestedRenderingEventTypes];
  v7 = *MEMORY[0x1E69C53D0];
  v10 = [pr_requestedRenderingEventTypes containsObject:*MEMORY[0x1E69C53D0]];

  if (v10)
  {
    goto LABEL_4;
  }

  v11 = PRUISLogCommon();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1CAE63000, v11, OS_LOG_TYPE_DEFAULT, "Client has not requested taps", buf, 2u);
  }
}

- (void)eventOccurred:(id)occurred
{
  v13 = *MEMORY[0x1E69E9840];
  occurredCopy = occurred;
  isActive = [(FBScene *)self->_scene isActive];
  newAction = PRUISLogCommon();
  v7 = os_log_type_enabled(newAction, OS_LOG_TYPE_DEFAULT);
  if (isActive)
  {
    if (v7)
    {
      type = [occurredCopy type];
      v11 = 138412290;
      v12 = type;
      _os_log_impl(&dword_1CAE63000, newAction, OS_LOG_TYPE_DEFAULT, "Sending rendering event of type: %@", &v11, 0xCu);
    }

    newAction = [occurredCopy newAction];
    v9 = [MEMORY[0x1E695DFD8] setWithObject:newAction];
    [(FBScene *)self->_scene sendActions:v9];
  }

  else if (v7)
  {
    type2 = [occurredCopy type];
    v11 = 138412290;
    v12 = type2;
    _os_log_impl(&dword_1CAE63000, newAction, OS_LOG_TYPE_DEFAULT, "Trying to send rendering event when the scene is not active. Event type: %@", &v11, 0xCu);
  }
}

- (void)setOpacity:(double)opacity forLayers:(unint64_t)layers
{
  if (layers)
  {
    self->_backgroundOpacity = opacity;
    if ((layers & 2) == 0)
    {
LABEL_3:
      if ((layers & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((layers & 2) == 0)
  {
    goto LABEL_3;
  }

  self->_foregroundOpacity = opacity;
  if ((layers & 4) != 0)
  {
LABEL_4:
    self->_floatingOpacity = opacity;
  }

LABEL_5:
  [(PRUISAmbientPosterViewController *)self _updateSeparatedLayerHosting];

  [(PRUISAmbientPosterViewController *)self _updateSnapshotOpacities];
}

+ (NSArray)suggestedInstanceIdentifiers
{
  if (suggestedInstanceIdentifiers_onceToken != -1)
  {
    +[PRUISAmbientPosterViewController suggestedInstanceIdentifiers];
  }

  v3 = suggestedInstanceIdentifiers_identifiers;

  return v3;
}

void __64__PRUISAmbientPosterViewController_suggestedInstanceIdentifiers__block_invoke()
{
  v10[8] = *MEMORY[0x1E69E9840];
  v0 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"0FCA6C3D-1F82-411A-A9B1-1C06D12DCC42"];
  v10[0] = v0;
  v1 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"5A844F1E-4289-4717-B96D-D6A03A258B53"];
  v10[1] = v1;
  v2 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"DA40E1E8-43D0-4F86-8B7B-72A3CCDED2A6"];
  v10[2] = v2;
  v3 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"AF57A69A-C2B0-4A23-9B45-CDFC4F672571"];
  v10[3] = v3;
  v4 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"0A2C2CA5-4530-4DC9-87FB-327184120271"];
  v10[4] = v4;
  v5 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"534788DA-63B5-4AED-84B2-8752F9B01893"];
  v10[5] = v5;
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"A5E96117-83BF-4B55-BC3A-C39FC602F12C"];
  v10[6] = v6;
  v7 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"271390E6-6D65-4209-9273-B6A920C290A0"];
  v10[7] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:8];
  v9 = suggestedInstanceIdentifiers_identifiers;
  suggestedInstanceIdentifiers_identifiers = v8;
}

- (void)setDisplayConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (([(FBSDisplayConfiguration *)self->_displayConfiguration isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_displayConfiguration, configuration);
    [(PRUISAmbientPosterViewController *)self _updateSceneSettingsForUpdatedDisplayConfiguration];
  }
}

- (FBSDisplayConfiguration)displayConfiguration
{
  displayConfiguration = self->_displayConfiguration;
  if (displayConfiguration)
  {
    _defaultDisplayConfiguration = displayConfiguration;
  }

  else
  {
    _defaultDisplayConfiguration = [(PRUISAmbientPosterViewController *)self _defaultDisplayConfiguration];
  }

  return _defaultDisplayConfiguration;
}

- (void)_updateSceneSettingsForUpdatedDisplayConfiguration
{
  displayConfiguration = [(PRUISAmbientPosterViewController *)self displayConfiguration];
  scene = self->_scene;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __86__PRUISAmbientPosterViewController__updateSceneSettingsForUpdatedDisplayConfiguration__block_invoke;
  v6[3] = &unk_1E83A7260;
  v7 = displayConfiguration;
  v5 = displayConfiguration;
  [(FBScene *)scene pruis_updateWithoutActivating:v6];
}

void __86__PRUISAmbientPosterViewController__updateSceneSettingsForUpdatedDisplayConfiguration__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 bounds];
  [v4 setFrame:?];
  [v4 setDisplayConfiguration:*(a1 + 32)];
}

- (void)fetchAppIntentsListenerEndpointWithHandler:(id)handler
{
  handlerCopy = handler;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __79__PRUISAmbientPosterViewController_fetchAppIntentsListenerEndpointWithHandler___block_invoke;
  v6[3] = &unk_1E83A7890;
  v6[4] = self;
  v7 = handlerCopy;
  v5 = handlerCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __79__PRUISAmbientPosterViewController_fetchAppIntentsListenerEndpointWithHandler___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 1000);
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x1E695DFD8]);
    v9 = [objc_alloc(MEMORY[0x1E69C5278]) initWithHandler:*(a1 + 40)];
    v4 = [v3 initWithObjects:{v9, 0}];
    [v2 sendActions:v4];
  }

  else
  {
    v5 = *(a1 + 40);
    if (v5)
    {
      *&v6 = -1;
      *(&v6 + 1) = -1;
      v10[0] = v6;
      v10[1] = v6;
      v7 = [MEMORY[0x1E698E620] tokenFromAuditToken:v10];
      v8 = [MEMORY[0x1E696ABC0] pr_errorWithCode:9];
      (*(v5 + 16))(v5, 0, v7, v8);
    }
  }
}

- (void)viewDidLoad
{
  v45 = *MEMORY[0x1E69E9840];
  v42.receiver = self;
  v42.super_class = PRUISAmbientPosterViewController;
  [(PRUISAmbientPosterViewController *)&v42 viewDidLoad];
  view = [(PRUISAmbientPosterViewController *)self view];
  v4 = objc_alloc(MEMORY[0x1E69DD250]);
  [view bounds];
  v5 = [v4 initWithFrame:?];
  [v5 setAutoresizingMask:18];
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __47__PRUISAmbientPosterViewController_viewDidLoad__block_invoke;
  v40[3] = &unk_1E83A78B8;
  v6 = v5;
  v41 = v6;
  [(PRUISAmbientPosterViewController *)self _enumerateSnapshotLayerViews:v40];
  [v6 insertSubview:self->_snapshotBackgroundLayerView atIndex:0];
  [v6 insertSubview:self->_snapshotForegroundLayerView atIndex:1];
  [v6 insertSubview:self->_snapshotFloatingLayerView atIndex:2];
  [view insertSubview:v6 atIndex:0];
  objc_storeStrong(&self->_snapshotContainerView, v5);
  v7 = [PRUISAmbientPosterSceneLayerHostView alloc];
  v8 = MEMORY[0x1E696AEC0];
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v11 = [v8 stringWithFormat:@"%@-background", v10];
  v12 = [(PRUISAmbientPosterSceneLayerHostView *)v7 initWithIdentifier:v11];
  backgroundSceneLayerView = self->_backgroundSceneLayerView;
  self->_backgroundSceneLayerView = v12;

  v14 = [PRUISAmbientPosterSceneLayerHostView alloc];
  v15 = MEMORY[0x1E696AEC0];
  v16 = objc_opt_class();
  v17 = NSStringFromClass(v16);
  v18 = [v15 stringWithFormat:@"%@-foreground", v17];
  v19 = [(PRUISAmbientPosterSceneLayerHostView *)v14 initWithIdentifier:v18];
  foregroundSceneLayerView = self->_foregroundSceneLayerView;
  self->_foregroundSceneLayerView = v19;

  v21 = [PRUISAmbientPosterSceneLayerHostView alloc];
  v22 = MEMORY[0x1E696AEC0];
  v23 = objc_opt_class();
  v24 = NSStringFromClass(v23);
  v25 = [v22 stringWithFormat:@"%@-floating", v24];
  v26 = [(PRUISAmbientPosterSceneLayerHostView *)v21 initWithIdentifier:v25];
  floatingSceneLayerView = self->_floatingSceneLayerView;
  self->_floatingSceneLayerView = v26;

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v28 = self->_foregroundSceneLayerView;
  v43[0] = self->_backgroundSceneLayerView;
  v43[1] = v28;
  v43[2] = self->_floatingSceneLayerView;
  v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:3];
  v30 = [v29 countByEnumeratingWithState:&v36 objects:v44 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v37;
    do
    {
      v33 = 0;
      do
      {
        if (*v37 != v32)
        {
          objc_enumerationMutation(v29);
        }

        v34 = *(*(&v36 + 1) + 8 * v33);
        [view bounds];
        [v34 setFrame:?];
        [v34 setAutoresizingMask:18];
        layer = [v34 layer];
        [layer setAllowsGroupOpacity:1];

        [view addSubview:v34];
        ++v33;
      }

      while (v31 != v33);
      v31 = [v29 countByEnumeratingWithState:&v36 objects:v44 count:16];
    }

    while (v31);
  }

  [(PRUISAmbientPosterViewController *)self _updateForCurrentPresentationMode];
}

void __47__PRUISAmbientPosterViewController_viewDidLoad__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v2 bounds];
  [v3 setFrame:?];
  [v3 setAutoresizingMask:18];
  [v3 setContentMode:2];
}

- (void)viewWillAppear:(BOOL)appear
{
  v12.receiver = self;
  v12.super_class = PRUISAmbientPosterViewController;
  [(PRUISAmbientPosterViewController *)&v12 viewWillAppear:appear];
  if (!self->_scene)
  {
    [(PRUISAmbientPosterViewController *)self _setupScene];
  }

  [(PRUISAmbientPosterViewController *)self _updateSceneWithCompletion:0];
  if (!self->_snapshotControllerKeepaliveAssertion)
  {
    snapshotController = [(PRUISAmbientPosterViewController *)self snapshotController];
    v5 = MEMORY[0x1E696AEC0];
    _path = [(PRSPosterConfiguration *)self->_configuration _path];
    serverIdentity = [_path serverIdentity];
    posterUUID = [serverIdentity posterUUID];
    v9 = [v5 stringWithFormat:@"PRUISAmbientPosterViewController %@", posterUUID];
    v10 = [snapshotController acquireKeepActiveAssertionForReason:v9];
    snapshotControllerKeepaliveAssertion = self->_snapshotControllerKeepaliveAssertion;
    self->_snapshotControllerKeepaliveAssertion = v10;
  }
}

- (void)viewIsAppearing:(BOOL)appearing
{
  v4.receiver = self;
  v4.super_class = PRUISAmbientPosterViewController;
  [(PRUISAmbientPosterViewController *)&v4 viewIsAppearing:appearing];
  [(PRUISAmbientPosterViewController *)self _updateSnapshotsAnimated:0];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = PRUISAmbientPosterViewController;
  [(PRUISAmbientPosterViewController *)&v4 viewDidAppear:appear];
  [(PRUISAmbientPosterViewController *)self _updateSceneWithCompletion:0];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = PRUISAmbientPosterViewController;
  [(PRUISAmbientPosterViewController *)&v4 viewWillDisappear:disappear];
  [(PRUISAmbientPosterViewController *)self _updateSceneWithCompletion:0];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = PRUISAmbientPosterViewController;
  [(PRUISAmbientPosterViewController *)&v5 viewDidDisappear:disappear];
  [(PRUISAmbientPosterViewController *)self _updateSceneWithCompletion:0];
  [(PRUISAmbientPosterViewController *)self _takeNewSnapshots];
  [(BSInvalidatable *)self->_snapshotControllerKeepaliveAssertion invalidate];
  snapshotControllerKeepaliveAssertion = self->_snapshotControllerKeepaliveAssertion;
  self->_snapshotControllerKeepaliveAssertion = 0;

  [(PRUISAmbientPosterViewController *)self _teardownScene];
}

- (void)viewWillMoveToWindow:(id)window
{
  v5.receiver = self;
  v5.super_class = PRUISAmbientPosterViewController;
  windowCopy = window;
  [(PRUISAmbientPosterViewController *)&v5 viewWillMoveToWindow:windowCopy];
  [(PRUISAmbientPosterViewController *)self _updateSceneWithCompletion:0 window:windowCopy, v5.receiver, v5.super_class];
}

- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  windowCopy = window;
  v9.receiver = self;
  v9.super_class = PRUISAmbientPosterViewController;
  [(PRUISAmbientPosterViewController *)&v9 viewDidMoveToWindow:windowCopy shouldAppearOrDisappear:disappearCopy];
  [(PRUISAmbientPosterViewController *)self _updateSceneWithCompletion:0 window:windowCopy];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v8 = *MEMORY[0x1E69DE828];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69DE828] object:0];
  if (windowCopy)
  {
    [defaultCenter addObserver:self selector:sel__noteWindowWillRotate_ name:v8 object:windowCopy];
    [(PRUISAmbientPosterViewController *)self _updateTouchDeliveryPolicies];
  }
}

- (void)viewWillLayoutSubviews
{
  v18.receiver = self;
  v18.super_class = PRUISAmbientPosterViewController;
  [(PRUISAmbientPosterViewController *)&v18 viewWillLayoutSubviews];
  if (_os_feature_enabled_impl())
  {
    view = [(PRUISAmbientPosterViewController *)self view];
    [view bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    v19.origin.x = v5;
    v19.origin.y = v7;
    v19.size.width = v9;
    v19.size.height = v11;
    Width = CGRectGetWidth(v19);
    v20.origin.x = v5;
    v20.origin.y = v7;
    v20.size.width = v9;
    v20.size.height = v11;
    Height = CGRectGetHeight(v20);
    scene = self->_scene;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __58__PRUISAmbientPosterViewController_viewWillLayoutSubviews__block_invoke;
    v17[3] = &__block_descriptor_64_e33_v16__0__FBSMutableSceneSettings_8l;
    v17[4] = 0;
    v17[5] = 0;
    *&v17[6] = Width;
    *&v17[7] = Height;
    [(FBScene *)scene updateSettingsWithBlock:v17];
  }

  snapshotContainerView = self->_snapshotContainerView;
  view2 = [(PRUISAmbientPosterViewController *)self view];
  [view2 bounds];
  [(UIView *)snapshotContainerView setFrame:?];
}

- (void)scene:(id)scene clientDidConnect:(id)connect
{
  v18 = *MEMORY[0x1E69E9840];
  sceneCopy = scene;
  processHandle = [connect processHandle];
  v8 = PRUISLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    pui_shortDescription = [sceneCopy pui_shortDescription];
    pf_shortDesc = [processHandle pf_shortDesc];
    *buf = 138543618;
    v15 = pui_shortDescription;
    v16 = 2114;
    v17 = pf_shortDesc;
    _os_log_impl(&dword_1CAE63000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ now connected to %{public}@", buf, 0x16u);
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __59__PRUISAmbientPosterViewController_scene_clientDidConnect___block_invoke;
  v12[3] = &unk_1E83A7900;
  v12[4] = self;
  v13 = sceneCopy;
  v11 = sceneCopy;
  [(PRUISAmbientPosterViewController *)self _enumerateSceneObserversRespondingToSelector:sel_ambientPosterViewController_didConnectToScene_ usingBlock:v12];
}

- (id)scene:(id)scene handleActions:(id)actions
{
  v9 = *MEMORY[0x1E69E9840];
  actionsCopy = actions;
  v5 = PRUISLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = actionsCopy;
    _os_log_impl(&dword_1CAE63000, v5, OS_LOG_TYPE_DEFAULT, "Poster sent actions: %@", &v7, 0xCu);
  }

  return 0;
}

- (void)sceneContentStateDidChange:(id)change
{
  v13 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  v5 = PRUISLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    [changeCopy contentState];
    v6 = NSStringFromFBSceneContentState();
    *buf = 138412290;
    v12 = v6;
    _os_log_impl(&dword_1CAE63000, v5, OS_LOG_TYPE_DEFAULT, "Poster content state did change to %@", buf, 0xCu);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__PRUISAmbientPosterViewController_sceneContentStateDidChange___block_invoke;
  block[3] = &unk_1E83A72F8;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __63__PRUISAmbientPosterViewController_sceneContentStateDidChange___block_invoke_2;
  v8[3] = &unk_1E83A7900;
  v8[4] = self;
  v9 = changeCopy;
  v7 = changeCopy;
  [(PRUISAmbientPosterViewController *)self _enumerateSceneObserversRespondingToSelector:sel_ambientPosterViewController_sceneContentStateDidChange_ usingBlock:v8];
}

- (void)sceneDidDeactivate:(id)deactivate withError:(id)error
{
  v25 = *MEMORY[0x1E69E9840];
  deactivateCopy = deactivate;
  errorCopy = error;
  v8 = PRUISLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    pui_shortDescription = [deactivateCopy pui_shortDescription];
    v10 = [errorCopy descriptionWithMultilinePrefix:0];
    *buf = 138543618;
    v22 = *&pui_shortDescription;
    v23 = 2114;
    v24 = v10;
    _os_log_impl(&dword_1CAE63000, v8, OS_LOG_TYPE_DEFAULT, "Poster %{public}@ deactivated with error: %{public}@", buf, 0x16u);
  }

  [(PRUISSessionReconnectPolicy *)self->_reconnectPolicy sessionDidDisconnect];
  presentationMode = self->_presentationMode;
  if ([(PRUISAmbientPosterViewController *)self _appearState]&& presentationMode == 2)
  {
    [(PRUISSessionReconnectPolicy *)self->_reconnectPolicy sessionReconnectDelay];
    v13 = v12;
    v14 = PRUISLogCommon();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v22 = v13;
      _os_log_impl(&dword_1CAE63000, v14, OS_LOG_TYPE_DEFAULT, "Will attempt reactivation of ambient scene in %0.3f seconds.", buf, 0xCu);
    }

    v15 = dispatch_time(0, (v13 * 1000000000.0));
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __65__PRUISAmbientPosterViewController_sceneDidDeactivate_withError___block_invoke;
    block[3] = &unk_1E83A72F8;
    block[4] = self;
    dispatch_after(v15, MEMORY[0x1E69E96A0], block);
  }

  else
  {
    v16 = PRUISLogCommon();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1CAE63000, v16, OS_LOG_TYPE_DEFAULT, "Not attempting reactivation of ambient scene at this time.", buf, 2u);
    }

    [(PRUISAmbientPosterViewController *)self _teardownScene];
  }

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __65__PRUISAmbientPosterViewController_sceneDidDeactivate_withError___block_invoke_117;
  v18[3] = &unk_1E83A7900;
  v18[4] = self;
  v19 = deactivateCopy;
  v17 = deactivateCopy;
  [(PRUISAmbientPosterViewController *)self _enumerateSceneObserversRespondingToSelector:sel_ambientPosterViewController_didDeactivateScene_ usingBlock:v18];
}

- (void)scene:(id)scene didUpdateClientSettingsWithDiff:(id)diff oldClientSettings:(id)settings transitionContext:(id)context
{
  sceneCopy = scene;
  diffCopy = diff;
  contextCopy = context;
  if ([contextCopy pr_updateSnapshot])
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __110__PRUISAmbientPosterViewController_scene_didUpdateClientSettingsWithDiff_oldClientSettings_transitionContext___block_invoke;
    block[3] = &unk_1E83A72F8;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __110__PRUISAmbientPosterViewController_scene_didUpdateClientSettingsWithDiff_oldClientSettings_transitionContext___block_invoke_2;
  v21[3] = &unk_1E83A7900;
  v21[4] = self;
  v12 = sceneCopy;
  v22 = v12;
  [(PRUISAmbientPosterViewController *)self _enumerateSceneObserversRespondingToSelector:sel_ambientPosterViewController_didUpdateClientSettingsForScene_ usingBlock:v21];
  if ([diffCopy pr_hideChromeDidChange])
  {
    clientSettings = [v12 clientSettings];
    pr_hideChrome = [clientSettings pr_hideChrome];

    delegate = [(PRUISAmbientPosterViewController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      animationSettings = [contextCopy animationSettings];
      animationFence = [contextCopy animationFence];
      [delegate ambientPosterViewController:self setChromeVisibility:pr_hideChrome withAnimationSettings:animationSettings animationFence:animationFence];
    }
  }

  if ([diffCopy pui_significantEventsDidChange])
  {
    clientSettings2 = [v12 clientSettings];
    [clientSettings2 pui_significantEventOptions];

    [(PRUISAmbientPosterViewController *)self _setClientWantsScreenWakeEvents:PUIPosterSignificantEventOptionsContainsEvent()];
  }

  v19 = objc_alloc_init(MEMORY[0x1E699FBF0]);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __110__PRUISAmbientPosterViewController_scene_didUpdateClientSettingsWithDiff_oldClientSettings_transitionContext___block_invoke_3;
  v20[3] = &unk_1E83A7928;
  v20[4] = self;
  [v19 observeLayersWithBlock:v20];
  [v19 inspectDiff:diffCopy withContext:{objc_msgSend(v12, "clientSettings")}];
  [v19 removeAllObservers];
}

- (void)setShouldShareTouchesWithHost:(BOOL)host
{
  if (self->_shouldShareTouchesWithHost != host)
  {
    self->_shouldShareTouchesWithHost = host;
    if (host)
    {
      [(PRUISAmbientPosterViewController *)self _updateTouchDeliveryPolicies];
    }

    else
    {
      [(PRUISAmbientPosterViewController *)self _clearTouchDeliveryPolicies];
    }
  }
}

- (id)cancelTouchesForCurrentEventInHostedContent
{
  v30 = *MEMORY[0x1E69E9840];
  BSDispatchQueueAssertMain();
  objc_initWeak(&location, self);
  v19[1] = MEMORY[0x1E69E9820];
  v19[2] = 3221225472;
  v19[3] = __79__PRUISAmbientPosterViewController_cancelTouchesForCurrentEventInHostedContent__block_invoke;
  v19[4] = &unk_1E83A7500;
  objc_copyWeak(&v20, &location);
  v3 = BKSTouchDeliveryPolicyServerGetProxyWithErrorHandler();
  view = [(PRUISAmbientPosterViewController *)self view];
  _window = [view _window];

  if (v3 && _window)
  {
    [*MEMORY[0x1E69DDA98] _initialTouchTimestampForWindow:_window];
    v7 = v6;
    layerManager = [(FBScene *)self->_scene layerManager];
    layers = [layerManager layers];

    [(PRUISAmbientPosterViewController *)self _createCancelTouchesAssertionsForLayers:layers withInitialTouchTimestamp:v3 server:v7];
    v10 = objc_alloc(MEMORY[0x1E698E778]);
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    v13 = MEMORY[0x1E69E96A0];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __79__PRUISAmbientPosterViewController_cancelTouchesForCurrentEventInHostedContent__block_invoke_129;
    v18[3] = &unk_1E83A7950;
    objc_copyWeak(v19, &location);
    v14 = [v10 initWithIdentifier:uUIDString forReason:@"cancel touches in poster" queue:MEMORY[0x1E69E96A0] invalidationBlock:v18];

    v15 = PRUISLogCommon();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy2 = self;
      v24 = 2114;
      v25 = v14;
      _os_log_impl(&dword_1CAE63000, v15, OS_LOG_TYPE_DEFAULT, "[%{public}@] Made cancel touches group assertion: %{public}@", buf, 0x16u);
    }

    objc_destroyWeak(v19);
  }

  else
  {
    layers = PRUISLogCommon();
    if (os_log_type_enabled(layers, OS_LOG_TYPE_DEFAULT))
    {
      isActive = [(FBScene *)self->_scene isActive];
      *buf = 138544130;
      selfCopy2 = self;
      v24 = 2114;
      v25 = v3;
      v26 = 2114;
      v27 = _window;
      v28 = 1024;
      v29 = isActive;
      _os_log_impl(&dword_1CAE63000, layers, OS_LOG_TYPE_DEFAULT, "[%{public}@] Did not make cancel touches group assertion because of server: %{public}@, window: %{public}@, or [scene isActive]: %{BOOL}u", buf, 0x26u);
    }

    v14 = 0;
  }

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);

  return v14;
}

void __79__PRUISAmbientPosterViewController_cancelTouchesForCurrentEventInHostedContent__block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = PRUISLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138543618;
      v7 = WeakRetained;
      v8 = 2114;
      v9 = v3;
      _os_log_impl(&dword_1CAE63000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Sending cancellation touch delivery policy failed with error: %{public}@", &v6, 0x16u);
    }
  }
}

void __79__PRUISAmbientPosterViewController_cancelTouchesForCurrentEventInHostedContent__block_invoke_129(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = WeakRetained[147];
    if (v3)
    {
      v12 = 0u;
      v13 = 0u;
      v10 = 0u;
      v11 = 0u;
      v4 = [v3 allKeys];
      v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v5)
      {
        v6 = v5;
        v7 = *v11;
        do
        {
          v8 = 0;
          do
          {
            if (*v11 != v7)
            {
              objc_enumerationMutation(v4);
            }

            v9 = [v2[147] objectForKeyedSubscript:*(*(&v10 + 1) + 8 * v8)];
            [v9 invalidate];

            ++v8;
          }

          while (v6 != v8);
          v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
        }

        while (v6);
      }

      [v2[147] removeAllObjects];
    }
  }
}

- (void)_createCancelTouchesAssertionsForLayers:(id)layers withInitialTouchTimestamp:(double)timestamp server:(id)server
{
  v39 = *MEMORY[0x1E69E9840];
  layersCopy = layers;
  serverCopy = server;
  if (!self->_cancelTouchesAssertions)
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    cancelTouchesAssertions = self->_cancelTouchesAssertions;
    self->_cancelTouchesAssertions = v10;
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = layersCopy;
  v12 = [obj countByEnumeratingWithState:&v26 objects:v38 count:16];
  if (v12)
  {
    v14 = v12;
    v15 = *v27;
    *&v13 = 138544130;
    v24 = v13;
    do
    {
      v16 = 0;
      do
      {
        if (*v27 != v15)
        {
          objc_enumerationMutation(obj);
        }

        contextID = [*(*(&v26 + 1) + 8 * v16) contextID];
        v18 = objc_alloc_init(MEMORY[0x1E698E440]);
        v19 = [MEMORY[0x1E698E438] policyCancelingTouchesDeliveredToContextId:contextID withInitialTouchTimestamp:timestamp];
        endpoint = [v18 endpoint];
        [v19 setAssertionEndpoint:endpoint];

        [serverCopy ipc_addPolicy:v19];
        v21 = PRUISLogCommon();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v24;
          selfCopy = self;
          v32 = 2114;
          v33 = v18;
          v34 = 2050;
          v35 = contextID;
          v36 = 2114;
          v37 = v19;
          _os_log_impl(&dword_1CAE63000, v21, OS_LOG_TYPE_DEFAULT, "[%{public}@] Acquired cancel touches assertion: %{public}@ (context id: 0x%{public}llx, policy: %{public}@)", buf, 0x2Au);
        }

        v22 = self->_cancelTouchesAssertions;
        v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:contextID];
        [(NSMutableDictionary *)v22 setObject:v18 forKey:v23];

        ++v16;
      }

      while (v14 != v16);
      v14 = [obj countByEnumeratingWithState:&v26 objects:v38 count:16];
    }

    while (v14);
  }
}

- (void)_updateSceneWithCompletion:(id)completion
{
  completionCopy = completion;
  viewIfLoaded = [(PRUISAmbientPosterViewController *)self viewIfLoaded];
  window = [viewIfLoaded window];
  [(PRUISAmbientPosterViewController *)self _updateSceneWithCompletion:completionCopy window:window];
}

- (void)_updateSceneWithCompletion:(id)completion window:(id)window
{
  windowCopy = window;
  completionCopy = completion;
  -[PRUISAmbientPosterViewController _updateSceneWithCompletion:window:orientation:](self, "_updateSceneWithCompletion:window:orientation:", completionCopy, windowCopy, [windowCopy _windowInterfaceOrientation]);
}

- (void)_updateSceneWithCompletion:(id)completion window:(id)window orientation:(int64_t)orientation
{
  completionCopy = completion;
  windowCopy = window;
  _appearState = [(PRUISAmbientPosterViewController *)self _appearState];
  presentationMode = self->_presentationMode;
  v12 = [(PRUISAmbientPosterViewController *)self _renderingModeForVisibility:self->_visibility];
  if (self->_scene)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __82__PRUISAmbientPosterViewController__updateSceneWithCompletion_window_orientation___block_invoke;
    aBlock[3] = &unk_1E83A7978;
    if (_appearState)
    {
      v13 = presentationMode == 2;
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;
    v26 = v14;
    aBlock[4] = self;
    v24 = v12;
    orientationCopy = orientation;
    v23 = windowCopy;
    v15 = _Block_copy(aBlock);
    scene = self->_scene;
    if (v14 == 1)
    {
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __82__PRUISAmbientPosterViewController__updateSceneWithCompletion_window_orientation___block_invoke_2;
      v20[3] = &unk_1E83A79A0;
      v17 = &v21;
      v21 = completionCopy;
      [(FBScene *)scene performUpdate:v15 withCompletion:v20];
    }

    else
    {
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __82__PRUISAmbientPosterViewController__updateSceneWithCompletion_window_orientation___block_invoke_3;
      v18[3] = &unk_1E83A79A0;
      v17 = &v19;
      v19 = completionCopy;
      [(FBScene *)scene pruis_updateWithoutActivating:v15 withCompletion:v18];
      if ([(FBScene *)self->_scene isActive])
      {
        [(FBScene *)self->_scene deactivate:&__block_literal_global_138];
      }
    }
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }
}

void __82__PRUISAmbientPosterViewController__updateSceneWithCompletion_window_orientation___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  v5 = a3;
  if (*(a1 + 64))
  {
    v6 = 0;
  }

  else
  {
    v6 = 4294967246;
  }

  [v14 setActivityMode:v6];
  [v14 pui_setIdle:{objc_msgSend(*(a1 + 32), "isIdle")}];
  [v14 pui_setMode:*(a1 + 48)];
  [v14 pui_setContent:{objc_msgSend(*(a1 + 32), "isPreview")}];
  [v14 pui_setPosterBoundingShape:{objc_msgSend(*(a1 + 32), "boundingShape")}];
  v7 = *(a1 + 56);
  v8 = [v14 interfaceOrientation];
  if (v7)
  {
    if (v8 != v7)
    {
      [v14 setInterfaceOrientation:v7];
      [v14 pr_setTitleAlignment:{objc_msgSend(*(a1 + 32), "_titleAlignmentForInterfaceOrientation:", v7)}];
      if (v5)
      {
        if ([*(*(a1 + 32) + 1000) isActive])
        {
          v9 = *(a1 + 40);
          if (v9)
          {
            v10 = [v9 windowScene];
            [v10 _synchronizeDrawing];
            v11 = [v10 _synchronizedDrawingFence];
            [v5 setAnimationFence:v11];

            v12 = MEMORY[0x1E698E608];
            [MEMORY[0x1E69DD250] inheritedAnimationDuration];
            v13 = [v12 settingsWithDuration:?];
            [v5 setAnimationSettings:v13];
          }
        }
      }
    }
  }

  [v14 pui_setExtensionUserInteractionEnabled:{objc_msgSend(*(a1 + 32), "isExtensionUserInteractionEnabled")}];
  [*(a1 + 32) _updateAmbientPresentationSettingsForSceneSettings:v14];
}

uint64_t __82__PRUISAmbientPosterViewController__updateSceneWithCompletion_window_orientation___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __82__PRUISAmbientPosterViewController__updateSceneWithCompletion_window_orientation___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (unint64_t)_titleAlignmentForInterfaceOrientation:(int64_t)orientation
{
  delegate = [(PRUISAmbientPosterViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [delegate ambientPosterViewController:self titleAlignmentForInterfaceOrientation:orientation];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)_effectivePresentationMode
{
  result = self->_presentationMode;
  if (result >= 2)
  {
    if (result == 2)
    {
      scene = self->_scene;
      if (!scene)
      {
        return 1;
      }

      result = [(FBScene *)scene contentState:v2];
      if (result != 2)
      {
        return 1;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (int64_t)_renderingModeForVisibility:(unint64_t)visibility
{
  v3 = 2;
  if (visibility != 1)
  {
    v3 = 3;
  }

  if (visibility == 2)
  {
    return 1;
  }

  else
  {
    return v3;
  }
}

- (void)_updateForCurrentPresentationMode
{
  _effectivePresentationMode = [(PRUISAmbientPosterViewController *)self _effectivePresentationMode];
  if (!_effectivePresentationMode)
  {
    [(UIView *)self->_sceneView setHidden:1];
    [(PRUISAmbientPosterSceneLayerHostView *)self->_backgroundSceneLayerView setHidden:1];
    [(PRUISAmbientPosterSceneLayerHostView *)self->_foregroundSceneLayerView setHidden:1];
    [(PRUISAmbientPosterSceneLayerHostView *)self->_floatingSceneLayerView setHidden:1];
    snapshotContainerView = self->_snapshotContainerView;
    v6 = 1;
    goto LABEL_7;
  }

  if (_effectivePresentationMode == 1)
  {
    [(UIView *)self->_sceneView setHidden:1];
    [(PRUISAmbientPosterSceneLayerHostView *)self->_backgroundSceneLayerView setHidden:1];
    [(PRUISAmbientPosterSceneLayerHostView *)self->_foregroundSceneLayerView setHidden:1];
    [(PRUISAmbientPosterSceneLayerHostView *)self->_floatingSceneLayerView setHidden:1];
    snapshotContainerView = self->_snapshotContainerView;
    v6 = 0;
LABEL_7:
    [(UIView *)snapshotContainerView setHidden:v6];
    goto LABEL_8;
  }

  if (_effectivePresentationMode != 2)
  {
LABEL_8:
    v4 = 0;
    goto LABEL_9;
  }

  [(UIView *)self->_sceneView setHidden:0];
  [(PRUISAmbientPosterSceneLayerHostView *)self->_backgroundSceneLayerView setHidden:0];
  [(PRUISAmbientPosterSceneLayerHostView *)self->_foregroundSceneLayerView setHidden:0];
  [(PRUISAmbientPosterSceneLayerHostView *)self->_floatingSceneLayerView setHidden:0];
  [(UIView *)self->_snapshotContainerView setHidden:0];
  objc_initWeak(&location, self);
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __69__PRUISAmbientPosterViewController__updateForCurrentPresentationMode__block_invoke;
  v10 = &unk_1E83A72A8;
  objc_copyWeak(&v11, &location);
  v4 = _Block_copy(&v7);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
LABEL_9:
  [(PRUISAmbientPosterViewController *)self _updateSceneWithCompletion:v4, v7, v8, v9, v10];
}

void __69__PRUISAmbientPosterViewController__updateForCurrentPresentationMode__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateTouchDeliveryPolicies];
}

- (void)_enumerateSnapshotLayerViews:(id)views
{
  v4 = (views + 16);
  v5 = *(views + 2);
  viewsCopy = views;
  v5();
  (*v4)(viewsCopy, self->_snapshotForegroundLayerView, 2);
  (*v4)(viewsCopy, self->_snapshotFloatingLayerView, 4);
}

- (id)_snapshotBundle:(id)bundle imageForLayer:(unint64_t)layer
{
  bundleCopy = bundle;
  v6 = bundleCopy;
  v7 = 0;
  if (layer > 1)
  {
    if (layer == 2)
    {
      foregroundSnapshot = [bundleCopy foregroundSnapshot];
    }

    else
    {
      if (layer != 4)
      {
        goto LABEL_11;
      }

      foregroundSnapshot = [bundleCopy floatingSnapshot];
    }
  }

  else if (layer == -1)
  {
    foregroundSnapshot = [bundleCopy compositeSnapshot];
  }

  else
  {
    if (layer != 1)
    {
      goto LABEL_11;
    }

    foregroundSnapshot = [bundleCopy backgroundSnapshot];
  }

  v7 = foregroundSnapshot;
LABEL_11:

  return v7;
}

- (void)_updateForSnapshotBundle:(id)bundle
{
  bundleCopy = bundle;
  self->_loadedPosterSnapshotLayers = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __61__PRUISAmbientPosterViewController__updateForSnapshotBundle___block_invoke;
  v6[3] = &unk_1E83A79E8;
  v6[4] = self;
  v7 = bundleCopy;
  v5 = bundleCopy;
  [(PRUISAmbientPosterViewController *)self _enumerateSnapshotLayerViews:v6];
}

void __61__PRUISAmbientPosterViewController__updateForSnapshotBundle___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if ((v3[152] & a3) != 0)
  {
    v6 = *(a1 + 40);
    v7 = a2;
    v8 = [v3 _snapshotBundle:v6 imageForLayer:a3];
    [v7 setImage:?];

    *(*(a1 + 32) + 1056) |= a3;
  }

  else
  {
    v8 = a2;
    [v8 setImage:0];
  }
}

- (void)_updateSnapshotLayerVisibility
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __66__PRUISAmbientPosterViewController__updateSnapshotLayerVisibility__block_invoke;
  v2[3] = &unk_1E83A78B8;
  v2[4] = self;
  [(PRUISAmbientPosterViewController *)self _enumerateSnapshotLayerViews:v2];
}

- (id)_currentSnapshotDefinition
{
  scene = self->_scene;
  if (scene && (-[FBScene settings](scene, "settings"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 conformsToProtocol:&unk_1F4AFBE60], v4, v5))
  {
    settings = [(FBScene *)self->_scene settings];
  }

  else
  {
    settings = [(PRUISAmbientPosterViewController *)self traitCollection];
  }

  v7 = settings;
  [settings ambientDisplayStyle];

  if (AMUIAmbientDisplayStyleIsRedMode())
  {
    v8 = 2;
  }

  else
  {
    v8 = 0;
  }

  isPreview = self->_isPreview;
  isShowingIdealizedTime = self->_isShowingIdealizedTime;
  isIdle = self->_isIdle;
  v12 = MEMORY[0x1E69C5338];

  return [v12 defaultAmbientPosterSnapshotDefinitionWithRenderingContent:isPreview ambientDisplayStyle:v8 idealizedTime:isShowingIdealizedTime isIdle:isIdle];
}

- (int64_t)_currentOrientation
{
  viewIfLoaded = [(PRUISAmbientPosterViewController *)self viewIfLoaded];
  window = [viewIfLoaded window];

  if (window)
  {
    _windowInterfaceOrientation = [window _windowInterfaceOrientation];
  }

  else
  {
    _windowInterfaceOrientation = 4;
  }

  return _windowInterfaceOrientation;
}

- (id)_makeSnapshotRequest
{
  v3 = [PRUISPosterSnapshotDescriptor alloc];
  _currentOrientation = [(PRUISAmbientPosterViewController *)self _currentOrientation];
  _currentSnapshotDefinition = [(PRUISAmbientPosterViewController *)self _currentSnapshotDefinition];
  v6 = [(PRUISPosterSnapshotDescriptor *)v3 initWithUserInterfaceStyle:2 interfaceOrientation:_currentOrientation snapshotDefinition:_currentSnapshotDefinition];

  v7 = [[PRUISPosterSnapshotRequest alloc] initWithPoster:self->_configuration snapshotDescriptor:v6];

  return v7;
}

- (void)_updateSnapshotsAnimated:(BOOL)animated
{
  animatedCopy = animated;
  if ([(PRUISAmbientPosterViewController *)self _shouldSnapshot])
  {
    _makeSnapshotRequest = [(PRUISAmbientPosterViewController *)self _makeSnapshotRequest];
    snapshotController = [(PRUISAmbientPosterViewController *)self snapshotController];
    v6 = [snapshotController currentSnapshotBundleForRequest:_makeSnapshotRequest error:0];

    if (v6)
    {
      [(PRUISAmbientPosterViewController *)self _updateForSnapshotBundle:v6];
    }

    else
    {
      [(PRUISAmbientPosterViewController *)self _fetchSnapshotsWithRequest:_makeSnapshotRequest animated:animatedCopy];
    }
  }
}

- (void)_takeNewSnapshots
{
  if ([(PRUISAmbientPosterViewController *)self _shouldSnapshot])
  {
    v3 = self->_configuration;
    _makeSnapshotRequest = [(PRUISAmbientPosterViewController *)self _makeSnapshotRequest];
    snapshotController = [(PRUISAmbientPosterViewController *)self snapshotController];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __53__PRUISAmbientPosterViewController__takeNewSnapshots__block_invoke;
    v7[3] = &unk_1E83A7A10;
    v8 = v3;
    v6 = v3;
    [snapshotController executeSnapshotRequest:_makeSnapshotRequest completion:v7];
  }
}

void __53__PRUISAmbientPosterViewController__takeNewSnapshots__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v12 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = PRUISLogCommon();
  v8 = v7;
  if (!a3 || v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __53__PRUISAmbientPosterViewController__takeNewSnapshots__block_invoke_cold_1();
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    v10 = 138543362;
    v11 = v9;
    _os_log_impl(&dword_1CAE63000, v8, OS_LOG_TYPE_DEFAULT, "Regenerate snapshot for configuration %{public}@", &v10, 0xCu);
  }
}

- (void)_fetchSnapshotsWithRequest:(id)request animated:(BOOL)animated
{
  requestCopy = request;
  configuration = self->_configuration;
  if (configuration)
  {
    v8 = configuration;
    objc_initWeak(&location, self);
    snapshotController = [(PRUISAmbientPosterViewController *)self snapshotController];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __72__PRUISAmbientPosterViewController__fetchSnapshotsWithRequest_animated___block_invoke;
    v11[3] = &unk_1E83A7A80;
    objc_copyWeak(&v13, &location);
    v10 = v8;
    v12 = v10;
    animatedCopy = animated;
    [snapshotController executeSnapshotRequest:requestCopy completion:v11];

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }
}

void __72__PRUISAmbientPosterViewController__fetchSnapshotsWithRequest_animated___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v9 = WeakRetained;
  if (!v6 || v7)
  {
    v10 = PRUISLogCommon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __72__PRUISAmbientPosterViewController__fetchSnapshotsWithRequest_animated___block_invoke_cold_1();
    }
  }

  else if (WeakRetained)
  {
    v11 = v6;
    BSDispatchMain();
  }
}

void __72__PRUISAmbientPosterViewController__fetchSnapshotsWithRequest_animated___block_invoke_198(uint64_t a1)
{
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __72__PRUISAmbientPosterViewController__fetchSnapshotsWithRequest_animated___block_invoke_2;
  v10 = &unk_1E83A7100;
  v2 = *(a1 + 40);
  v11 = *(a1 + 32);
  v12 = v2;
  v3 = _Block_copy(&v7);
  v4 = v3;
  if (*(a1 + 48) == 1)
  {
    v5 = MEMORY[0x1E69DD250];
    v6 = [*(a1 + 32) view];
    [v5 transitionWithView:v6 duration:5242880 options:v4 animations:&__block_literal_global_201 completion:0.25];
  }

  else
  {
    (*(v3 + 2))(v3);
  }
}

void __72__PRUISAmbientPosterViewController__fetchSnapshotsWithRequest_animated___block_invoke_2(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 1072);
  v3 = [*(a1 + 40) backgroundLayerImage];
  [v2 setImage:v3];

  v4 = *(*(a1 + 32) + 1080);
  v5 = [*(a1 + 40) foregroundLayerImage];
  [v4 setImage:v5];

  v6 = *(a1 + 40);
  v7 = *(*(a1 + 32) + 1088);
  v8 = [v6 floatingLayerImage];
  [v7 setImage:v8];
}

- (void)_noteWindowWillRotate:(id)rotate
{
  userInfo = [rotate userInfo];
  v5 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E69DE7F8]];
  v6 = objc_opt_class();
  v7 = v5;
  if (v6)
  {
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  viewIfLoaded = [(PRUISAmbientPosterViewController *)self viewIfLoaded];
  window = [viewIfLoaded window];
  integerValue = [v9 integerValue];

  [(PRUISAmbientPosterViewController *)self _updateSceneWithCompletion:0 window:window orientation:integerValue];
}

- (void)_registerForAmbientPresentationTraitChanges
{
  v8[2] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_self();
  v8[0] = v3;
  v4 = objc_opt_self();
  v8[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:2];
  v6 = [(PRUISAmbientPosterViewController *)self registerForTraitChanges:v5 withHandler:&__block_literal_global_206];
  ambientPresentationTraitChangeRegistration = self->_ambientPresentationTraitChangeRegistration;
  self->_ambientPresentationTraitChangeRegistration = v6;
}

void __79__PRUISAmbientPosterViewController__registerForAmbientPresentationTraitChanges__block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = [v2 traitCollection];
  v4 = PRUISLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v2[125] pui_shortDescription];
    v6 = [v3 isAmbientPresented];
    [v3 ambientDisplayStyle];
    v7 = AMUIAmbientDisplayStyleString();
    v8 = 138543874;
    v9 = v5;
    v10 = 1024;
    v11 = v6;
    v12 = 2114;
    v13 = v7;
    _os_log_impl(&dword_1CAE63000, v4, OS_LOG_TYPE_DEFAULT, "Updated ambient presentation traits for scene %{public}@ [ isAmbientPresented=%{BOOL}d ; ambientDisplayStyle=%{public}@ ]", &v8, 0x1Cu);
  }

  [v2 _updateSceneWithCompletion:0];
}

- (void)_updateAmbientPresentationSettingsForSceneSettings:(id)settings
{
  settingsCopy = settings;
  traitCollection = [(PRUISAmbientPosterViewController *)self traitCollection];
  if (objc_opt_respondsToSelector())
  {
    [settingsCopy setAmbientPresented:{objc_msgSend(traitCollection, "isAmbientPresented")}];
  }

  if (objc_opt_respondsToSelector())
  {
    [settingsCopy setAmbientDisplayStyle:{objc_msgSend(traitCollection, "ambientDisplayStyle")}];
  }
}

- (id)_posterProviderForPosterPath:(id)path
{
  pathCopy = path;
  delegate = [(PRUISAmbientPosterViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [delegate ambientPosterViewControllerRequestExtensionInstanceIdentifier:self];
  }

  else
  {
    v6 = 0;
  }

  v7 = [MEMORY[0x1E69C5160] extensionInstanceForPath:pathCopy instanceIdentifier:v6];

  return v7;
}

- (void)_setupScene
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __47__PRUISAmbientPosterViewController__setupScene__block_invoke;
  aBlock[3] = &unk_1E83A7AF0;
  objc_copyWeak(&v16, &location);
  aBlock[4] = self;
  aBlock[5] = &v18;
  v3 = _Block_copy(aBlock);
  v3[2]();
  scene = self->_scene;
  if (!scene)
  {
    v5 = PRUISLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&dword_1CAE63000, v5, OS_LOG_TYPE_DEFAULT, "Failed to create new ambient poster scene. Trying again.", v14, 2u);
    }

    *(v19 + 24) = 1;
    (v3[2])(v3);
    scene = self->_scene;
  }

  uiPresentationManager = [(FBScene *)scene uiPresentationManager];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = [uiPresentationManager createPresenterWithIdentifier:v8];
  scenePresenter = self->_scenePresenter;
  self->_scenePresenter = v9;

  [(UIScenePresenter *)self->_scenePresenter modifyPresentationContext:&__block_literal_global_217];
  [(UIScenePresenter *)self->_scenePresenter activate];
  presentationView = [(UIScenePresenter *)self->_scenePresenter presentationView];
  view = [(PRUISAmbientPosterViewController *)self view];
  [view bounds];
  [(UIView *)presentationView setFrame:?];
  [(UIView *)presentationView setAutoresizingMask:18];
  [view insertSubview:presentationView belowSubview:self->_backgroundSceneLayerView];
  [(PRUISAmbientPosterViewController *)self _updateSceneLayerPresenters];
  [(PRUISAmbientPosterViewController *)self _updateTouchDeliveryPolicies];
  sceneView = self->_sceneView;
  self->_sceneView = presentationView;

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
  _Block_object_dispose(&v18, 8);
}

void __47__PRUISAmbientPosterViewController__setupScene__block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained[124] _path];
    v5 = [v3 _posterProviderForPosterPath:v4];
    v6 = [v3 _currentOrientation];
    v7 = MEMORY[0x1E699F7C8];
    v8 = *MEMORY[0x1E69C5670];
    v9 = [v3[124] _path];
    v10 = [v7 pr_createPosterSceneWithRole:v8 path:v9 instance:v5];

    [v10 addExtension:objc_opt_class()];
    [v10 setDelegate:v3];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __47__PRUISAmbientPosterViewController__setupScene__block_invoke_2;
    v16[3] = &unk_1E83A7AC8;
    v11 = *(a1 + 32);
    v16[5] = v3;
    v16[6] = v6;
    v16[4] = v11;
    [v10 pruis_updateWithoutActivating:v16];
    objc_storeStrong(v3 + 125, v10);
    v12 = [v5 instanceIdentifier];
    v13 = v3[128];
    v3[128] = v12;

    if (v10)
    {
      v14 = PRUISLogCommon();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [v10 pui_shortDescription];
        *buf = 138412290;
        v18 = v15;
        _os_log_impl(&dword_1CAE63000, v14, OS_LOG_TYPE_DEFAULT, "Created new ambient poster scene: %@", buf, 0xCu);
      }
    }

    else
    {
      if (*(*(*(a1 + 40) + 8) + 24) != 1)
      {
LABEL_9:

        goto LABEL_10;
      }

      v14 = PRUISLogCommon();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1CAE63000, v14, OS_LOG_TYPE_DEFAULT, "Failed to create new ambient poster scene again.", buf, 2u);
      }
    }

    goto LABEL_9;
  }

LABEL_10:
}

void __47__PRUISAmbientPosterViewController__setupScene__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v6 = [v3 displayConfiguration];
  [v4 setForeground:1];
  [v6 bounds];
  [v4 setFrame:?];
  [v4 setInterfaceOrientation:*(a1 + 48)];
  [v4 pr_setTitleAlignment:{objc_msgSend(*(a1 + 32), "_titleAlignmentForInterfaceOrientation:", *(a1 + 48))}];
  [v4 setDisplayConfiguration:v6];
  v5 = [*(a1 + 40) traitCollection];
  [v4 setUserInterfaceStyle:{objc_msgSend(v5, "userInterfaceStyle")}];

  [v4 setActivityMode:4294967246];
  [v4 pui_setExtensionUserInteractionEnabled:{objc_msgSend(*(a1 + 32), "isExtensionUserInteractionEnabled")}];
  [*(a1 + 40) _updateAmbientPresentationSettingsForSceneSettings:v4];
}

void __47__PRUISAmbientPosterViewController__setupScene__block_invoke_214(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setAppearanceStyle:2];
  [v2 setClippingDisabled:0];
  v3 = [MEMORY[0x1E69DC888] blackColor];
  [v2 setBackgroundColorWhileHosting:v3];
}

- (void)_teardownScene
{
  [(FBScene *)self->_scene pui_invalidateWithCompletion:0];
  scene = self->_scene;
  self->_scene = 0;

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (self->_sceneExtensionInstanceIdentifier && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [WeakRetained ambientPosterViewController:self relinquishExtensionInstanceIdentifier:self->_sceneExtensionInstanceIdentifier];
    sceneExtensionInstanceIdentifier = self->_sceneExtensionInstanceIdentifier;
    self->_sceneExtensionInstanceIdentifier = 0;
  }

  [(UIView *)self->_sceneView removeFromSuperview];
  sceneView = self->_sceneView;
  self->_sceneView = 0;

  [(UIScenePresenter *)self->_scenePresenter deactivate];
  scenePresenter = self->_scenePresenter;
  self->_scenePresenter = 0;

  [(PRUISAmbientPosterViewController *)self _resetScreenWakeStateForTeardown:1];
  [(PRUISAmbientPosterSceneLayerHostView *)self->_backgroundSceneLayerView invalidate];
  [(PRUISAmbientPosterSceneLayerHostView *)self->_foregroundSceneLayerView invalidate];
  [(PRUISAmbientPosterSceneLayerHostView *)self->_floatingSceneLayerView invalidate];
}

- (void)_updateSnapshotOpacities
{
  [(UIImageView *)self->_snapshotBackgroundLayerView setAlpha:self->_backgroundOpacity];
  [(UIImageView *)self->_snapshotForegroundLayerView setAlpha:self->_foregroundOpacity];
  snapshotFloatingLayerView = self->_snapshotFloatingLayerView;
  floatingOpacity = self->_floatingOpacity;

  [(UIImageView *)snapshotFloatingLayerView setAlpha:floatingOpacity];
}

- (void)_updateSeparatedLayerHosting
{
  if (BSFloatIsOne() && BSFloatIsOne() && BSFloatIsOne())
  {
    v3 = 0;
  }

  else
  {
    [(PRUISAmbientPosterSceneLayerHostView *)self->_backgroundSceneLayerView setAlpha:self->_backgroundOpacity];
    [(PRUISAmbientPosterSceneLayerHostView *)self->_foregroundSceneLayerView setAlpha:self->_foregroundOpacity];
    [(PRUISAmbientPosterSceneLayerHostView *)self->_floatingSceneLayerView setAlpha:self->_floatingOpacity];
    v3 = 1;
  }

  [(PRUISAmbientPosterSceneLayerHostView *)self->_backgroundSceneLayerView setActive:v3];
  [(PRUISAmbientPosterSceneLayerHostView *)self->_foregroundSceneLayerView setActive:v3];
  floatingSceneLayerView = self->_floatingSceneLayerView;

  [(PRUISAmbientPosterSceneLayerHostView *)floatingSceneLayerView setActive:v3];
}

- (void)_updateSceneLayerPresenters
{
  v23 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  layerManager = [(FBScene *)self->_scene layerManager];
  layers = [layerManager layers];

  v5 = [layers countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    contextID3 = 0;
    contextID2 = 0;
    contextID = 0;
    v10 = *v19;
    v11 = *MEMORY[0x1E69C5380];
    v12 = *MEMORY[0x1E69C53A0];
    v13 = *MEMORY[0x1E69C5390];
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(layers);
        }

        v15 = *(*(&v18 + 1) + 8 * i);
        [v15 level];
        v17 = v16;
        if ([v15 type] == 1)
        {
          if (v17 == v11)
          {
            contextID = [v15 contextID];
          }

          else if (v17 == v12)
          {
            contextID2 = [v15 contextID];
          }

          else if (v17 == v13)
          {
            contextID3 = [v15 contextID];
          }
        }
      }

      v6 = [layers countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  else
  {
    contextID3 = 0;
    contextID2 = 0;
    contextID = 0;
  }

  if ([(PRUISAmbientPosterSceneLayerHostView *)self->_backgroundSceneLayerView setContextID:contextID scene:self->_scene]|| [(PRUISAmbientPosterSceneLayerHostView *)self->_foregroundSceneLayerView setContextID:contextID2 scene:self->_scene]|| [(PRUISAmbientPosterSceneLayerHostView *)self->_floatingSceneLayerView setContextID:contextID3 scene:self->_scene])
  {
    [(PRUISAmbientPosterViewController *)self _updateSeparatedLayerHosting];
  }
}

- (void)_updateTouchDeliveryPolicies
{
  v75 = *MEMORY[0x1E69E9840];
  BSDispatchQueueAssertMain();
  if (self->_shouldShareTouchesWithHost && self->_presentationMode == 2 && self->_scene && (-[PRUISAmbientPosterViewController view](self, "view"), v3 = objc_claimAutoreleasedReturnValue(), [v3 _window], v4 = objc_claimAutoreleasedReturnValue(), v4, v3, v4))
  {
    layerManager = [(FBScene *)self->_scene layerManager];
    layers = [layerManager layers];

    v7 = objc_alloc(MEMORY[0x1E695DFA8]);
    allKeys = [(NSMutableDictionary *)self->_touchDeliveryPolicyAssertions allKeys];
    v47 = [v7 initWithArray:allKeys];

    view = [(PRUISAmbientPosterViewController *)self view];
    _window = [view _window];
    _contextId = [_window _contextId];

    v11 = PRUISLogCommon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      selfCopy4 = self;
      v65 = 2114;
      v66 = layers;
      _os_log_impl(&dword_1CAE63000, v11, OS_LOG_TYPE_DEFAULT, "[%@] Updating touch delivery policies for layers: %{public}@", buf, 0x16u);
    }

    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    obj = layers;
    v12 = [obj countByEnumeratingWithState:&v59 objects:v74 count:16];
    if (v12)
    {
      v46 = *v60;
      *&v13 = 138412802;
      v43 = v13;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v60 != v46)
          {
            objc_enumerationMutation(obj);
          }

          contextID = [*(*(&v59 + 1) + 8 * i) contextID];
          v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:contextID];
          [v47 removeObject:v16];

          touchDeliveryPolicyAssertions = self->_touchDeliveryPolicyAssertions;
          v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:contextID];
          v19 = [(NSMutableDictionary *)touchDeliveryPolicyAssertions objectForKey:v18];
          LODWORD(touchDeliveryPolicyAssertions) = v19 == 0;

          if (touchDeliveryPolicyAssertions)
          {
            v20 = objc_alloc_init(MEMORY[0x1E698E440]);
            v21 = [MEMORY[0x1E698E438] policyRequiringSharingOfTouchesDeliveredToChildContextId:contextID withHostContextId:_contextId];
            endpoint = [(__CFString *)v20 endpoint];
            [v21 setAssertionEndpoint:endpoint];

            objc_initWeak(&location, self);
            v52 = MEMORY[0x1E69E9820];
            v53 = 3221225472;
            v54 = __64__PRUISAmbientPosterViewController__updateTouchDeliveryPolicies__block_invoke;
            v55 = &unk_1E83A7B18;
            objc_copyWeak(&v57, &location);
            v23 = v21;
            v56 = v23;
            v24 = BKSTouchDeliveryPolicyServerGetProxyWithErrorHandler();
            if (v24)
            {
              v25 = PRUISLogCommon();
              if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
              {
                *buf = v43;
                selfCopy4 = self;
                v65 = 2114;
                v66 = v20;
                v67 = 2050;
                v68 = contextID;
                _os_log_impl(&dword_1CAE63000, v25, OS_LOG_TYPE_DEFAULT, "[%@] Saving touch policy assertion %{public}@ for context id 0x%{public}llx", buf, 0x20u);
              }

              v26 = self->_touchDeliveryPolicyAssertions;
              if (!v26)
              {
                v27 = objc_alloc_init(MEMORY[0x1E695DF90]);
                v28 = self->_touchDeliveryPolicyAssertions;
                self->_touchDeliveryPolicyAssertions = v27;

                v26 = self->_touchDeliveryPolicyAssertions;
              }

              v29 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:contextID];
              [(NSMutableDictionary *)v26 setObject:v20 forKey:v29];

              [v24 ipc_addPolicy:v23];
            }

            objc_destroyWeak(&v57);
            objc_destroyWeak(&location);
          }
        }

        v12 = [obj countByEnumeratingWithState:&v59 objects:v74 count:16];
      }

      while (v12);
    }

    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v30 = v47;
    v31 = [v30 countByEnumeratingWithState:&v48 objects:v73 count:16];
    if (v31)
    {
      v32 = *v49;
      do
      {
        for (j = 0; j != v31; ++j)
        {
          if (*v49 != v32)
          {
            objc_enumerationMutation(v30);
          }

          v34 = *(*(&v48 + 1) + 8 * j);
          v35 = [(NSMutableDictionary *)self->_touchDeliveryPolicyAssertions objectForKey:v34];
          [(__CFString *)v35 invalidate];
          [(NSMutableDictionary *)self->_touchDeliveryPolicyAssertions removeObjectForKey:v34];
          v36 = PRUISLogCommon();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
          {
            unsignedIntValue = [v34 unsignedIntValue];
            *buf = 138412802;
            selfCopy4 = self;
            v65 = 2114;
            v66 = v35;
            v67 = 2050;
            v68 = unsignedIntValue;
            _os_log_impl(&dword_1CAE63000, v36, OS_LOG_TYPE_DEFAULT, "[%@] Invalidating assertion %{public}@ for context id 0x%{public}llx", buf, 0x20u);
          }
        }

        v31 = [v30 countByEnumeratingWithState:&v48 objects:v73 count:16];
      }

      while (v31);
    }
  }

  else
  {
    obj = PRUISLogCommon();
    if (os_log_type_enabled(obj, OS_LOG_TYPE_DEFAULT))
    {
      if (self->_shouldShareTouchesWithHost)
      {
        v38 = @"YES";
      }

      else
      {
        v38 = @"NO";
      }

      presentationMode = self->_presentationMode;
      scene = self->_scene;
      view2 = [(PRUISAmbientPosterViewController *)self view];
      _window2 = [view2 _window];
      *buf = 138413314;
      selfCopy4 = self;
      v65 = 2114;
      v66 = v38;
      v67 = 2050;
      v68 = presentationMode;
      v69 = 2114;
      v70 = scene;
      v71 = 2114;
      v72 = _window2;
      _os_log_impl(&dword_1CAE63000, obj, OS_LOG_TYPE_DEFAULT, "[%@] Couldn't update touch delivery policies: _shouldShareTouchesWithHost=%{public}@; _presentationMode=%{public}ld; _scene=%{public}@; window=%{public}@", buf, 0x34u);
    }
  }
}

void __64__PRUISAmbientPosterViewController__updateTouchDeliveryPolicies__block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = PRUISLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v7 = 138412802;
      v8 = WeakRetained;
      v9 = 2114;
      v10 = v6;
      v11 = 2114;
      v12 = v3;
      _os_log_impl(&dword_1CAE63000, v5, OS_LOG_TYPE_DEFAULT, "[%@] Sending touch delivery policy %{public}@ failed with error: %{public}@", &v7, 0x20u);
    }
  }
}

- (void)_clearTouchDeliveryPolicies
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = PRUISLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_1CAE63000, v3, OS_LOG_TYPE_DEFAULT, "[%@] Clearing any touch delivery policies", &v4, 0xCu);
  }

  [(NSMutableDictionary *)self->_touchDeliveryPolicyAssertions enumerateKeysAndObjectsUsingBlock:&__block_literal_global_230];
  [(NSMutableDictionary *)self->_touchDeliveryPolicyAssertions removeAllObjects];
}

- (void)_windowDidAttachContext:(id)context
{
  viewIfLoaded = [(PRUISAmbientPosterViewController *)self viewIfLoaded];
  window = [viewIfLoaded window];

  if (!window)
  {

    [(PRUISAmbientPosterViewController *)self _updateTouchDeliveryPolicies];
  }
}

- (void)_windowDidDetachContext:(id)context
{
  contextCopy = context;
  viewIfLoaded = [(PRUISAmbientPosterViewController *)self viewIfLoaded];
  window = [viewIfLoaded window];

  if (!window || ([contextCopy object], v6 = objc_claimAutoreleasedReturnValue(), v6, window == v6))
  {
    [(PRUISAmbientPosterViewController *)self _clearTouchDeliveryPolicies];
  }
}

- (void)_enumerateSceneObserversRespondingToSelector:(SEL)selector usingBlock:(id)block
{
  v17 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  if (blockCopy && [(NSHashTable *)self->_sceneObservers count])
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = [(NSHashTable *)self->_sceneObservers copy];
    v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        v10 = 0;
        do
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v12 + 1) + 8 * v10);
          if (objc_opt_respondsToSelector())
          {
            blockCopy[2](blockCopy, v11);
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }
  }
}

- (void)_backlightLuminanceTraitDidChange:(id)change previousTraitCollection:(id)collection
{
  collectionCopy = collection;
  traitCollection = [change traitCollection];
  _backlightLuminance = [traitCollection _backlightLuminance];

  if (!_backlightLuminance)
  {
    [(PRUISAmbientPosterViewController *)self _screenWillTurnOff];
    v9 = MEMORY[0x1E698E7D0];
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __94__PRUISAmbientPosterViewController__backlightLuminanceTraitDidChange_previousTraitCollection___block_invoke;
    v19 = &unk_1E83A7490;
    selfCopy = self;
    v10 = &v16;
    goto LABEL_5;
  }

  if (![collectionCopy _backlightLuminance])
  {
    [(PRUISAmbientPosterViewController *)self _screenWillTurnOn];
    v9 = MEMORY[0x1E698E7D0];
    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __94__PRUISAmbientPosterViewController__backlightLuminanceTraitDidChange_previousTraitCollection___block_invoke_2;
    v14 = &unk_1E83A7490;
    selfCopy2 = self;
    v10 = &v11;
LABEL_5:
    [v9 addAlongsideAnimations:0 completion:{v10, v11, v12, v13, v14, selfCopy2, v16, v17, v18, v19, selfCopy}];
  }
}

uint64_t __94__PRUISAmbientPosterViewController__backlightLuminanceTraitDidChange_previousTraitCollection___block_invoke(uint64_t result, int a2)
{
  if (a2)
  {
    return [*(result + 32) _screenDidTurnOff];
  }

  return result;
}

uint64_t __94__PRUISAmbientPosterViewController__backlightLuminanceTraitDidChange_previousTraitCollection___block_invoke_2(uint64_t result, int a2)
{
  if (a2)
  {
    return [*(result + 32) _screenDidTurnOn];
  }

  return result;
}

- (void)_screenDidTurnOn
{
  v16 = *MEMORY[0x1E69E9840];
  bs_isAppearingOrAppeared = [(PRUISAmbientPosterViewController *)self bs_isAppearingOrAppeared];
  v4 = PRUISLogCommon();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (!bs_isAppearingOrAppeared)
  {
    if (v5)
    {
      LOWORD(v12) = 0;
      _os_log_impl(&dword_1CAE63000, v4, OS_LOG_TYPE_DEFAULT, "Ignoring screen turn on because we're not active", &v12, 2u);
    }

    goto LABEL_10;
  }

  if (v5)
  {
    pui_shortDescription = [(FBScene *)self->_scene pui_shortDescription];
    v12 = 138543362;
    v13 = pui_shortDescription;
    _os_log_impl(&dword_1CAE63000, v4, OS_LOG_TYPE_DEFAULT, "Scene %{public}@ observed screen turn on", &v12, 0xCu);
  }

  if (!self->_clientWantsScreenWakeEvents)
  {
    if (self->_clientEverWantedScreenWakeEvents)
    {
      v4 = PRUISLogCommon();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        pui_shortDescription2 = [(FBScene *)self->_scene pui_shortDescription];
        v12 = 138543362;
        v13 = pui_shortDescription2;
        _os_log_impl(&dword_1CAE63000, v4, OS_LOG_TYPE_DEFAULT, "Ignoring screen wake event because scene %{public}@ wanted them and later disabled them", &v12, 0xCu);
      }
    }

    else
    {
      ++self->_pendingScreenWakeCount;
      v4 = PRUISLogCommon();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        pui_shortDescription3 = [(FBScene *)self->_scene pui_shortDescription];
        v11 = [MEMORY[0x1E696AD98] numberWithInteger:self->_pendingScreenWakeCount];
        v12 = 138543618;
        v13 = pui_shortDescription3;
        v14 = 2112;
        v15 = v11;
        _os_log_impl(&dword_1CAE63000, v4, OS_LOG_TYPE_DEFAULT, "Deferring screen wake event for scene %{public}@. total deferred: %@", &v12, 0x16u);
      }
    }

LABEL_10:

    return;
  }

  v7 = PRUISLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    pui_shortDescription4 = [(FBScene *)self->_scene pui_shortDescription];
    v12 = 138543362;
    v13 = pui_shortDescription4;
    _os_log_impl(&dword_1CAE63000, v7, OS_LOG_TYPE_DEFAULT, "Sending prompt screen wake event to scene %{public}@", &v12, 0xCu);
  }

  [(FBScene *)self->_scene pui_postSignificantEvent:3];
}

- (void)_resetScreenWakeStateForTeardown:(BOOL)teardown
{
  self->_pendingScreenWakeCount = 0;
  self->_clientWantsScreenWakeEvents = 0;
  self->_clientEverWantedScreenWakeEvents = 0;
}

- (void)_setClientWantsScreenWakeEvents:(BOOL)events
{
  v20 = *MEMORY[0x1E69E9840];
  if (self->_clientWantsScreenWakeEvents != events)
  {
    eventsCopy = events;
    self->_clientWantsScreenWakeEvents = events;
    v5 = PRUISLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      pui_shortDescription = [(FBScene *)self->_scene pui_shortDescription];
      clientWantsScreenWakeEvents = self->_clientWantsScreenWakeEvents;
      clientEverWantedScreenWakeEvents = self->_clientEverWantedScreenWakeEvents;
      v9 = [MEMORY[0x1E696AD98] numberWithInteger:self->_pendingScreenWakeCount];
      v12 = 138544130;
      v13 = pui_shortDescription;
      v14 = 1024;
      v15 = clientWantsScreenWakeEvents;
      v16 = 1024;
      v17 = clientEverWantedScreenWakeEvents;
      v18 = 2112;
      v19 = v9;
      _os_log_impl(&dword_1CAE63000, v5, OS_LOG_TYPE_DEFAULT, "Scene %{public}@ wants screen wake events: %{BOOL}u  ever wanted screen wake events: %{BOOL}u  pending wake events: %@", &v12, 0x22u);
    }

    if (self->_clientWantsScreenWakeEvents && !self->_clientEverWantedScreenWakeEvents && self->_pendingScreenWakeCount)
    {
      v10 = PRUISLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        pui_shortDescription2 = [(FBScene *)self->_scene pui_shortDescription];
        v12 = 138543362;
        v13 = pui_shortDescription2;
        _os_log_impl(&dword_1CAE63000, v10, OS_LOG_TYPE_DEFAULT, "Sending deferred screen wake event to scene %{public}@", &v12, 0xCu);
      }

      [(FBScene *)self->_scene pui_postSignificantEvent:3];
      self->_pendingScreenWakeCount = 0;
    }

    if (eventsCopy)
    {
      self->_clientEverWantedScreenWakeEvents = 1;
    }
  }
}

- (PRUISAmbientPosterViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)addSceneObserver:(id)observer
{
  observerCopy = observer;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  sceneObservers = selfCopy->_sceneObservers;
  if (!sceneObservers)
  {
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v7 = selfCopy->_sceneObservers;
    selfCopy->_sceneObservers = weakObjectsHashTable;

    sceneObservers = selfCopy->_sceneObservers;
  }

  [(NSHashTable *)sceneObservers addObject:observerCopy];
  objc_sync_exit(selfCopy);
}

- (void)removeSceneObserver:(id)observer
{
  observerCopy = observer;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSHashTable *)selfCopy->_sceneObservers removeObject:observerCopy];
  objc_sync_exit(selfCopy);
}

- (void)initWithBoundingShape:(const char *)a1 .cold.1(const char *a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"PUIPosterBoundingShapeIsValid(puiBoundingShape)"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a1);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138544642;
    v9 = v5;
    v10 = 2114;
    v11 = v7;
    v12 = 2048;
    v13 = a2;
    v14 = 2114;
    v15 = @"PRUISAmbientPosterViewController.m";
    v16 = 1024;
    v17 = 142;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_1CAE63000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end