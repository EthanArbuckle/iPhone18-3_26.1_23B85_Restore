@interface PRUISPosterRenderingViewController
+ (id)_defaultExtensionProvider;
- ($04E7BC5D857DAB0C87BC5F8C0E9AAC02)renderingMetrics;
- (BOOL)_buildSnapshotImageViewsFromBundle:(id)bundle;
- (BOOL)_isSceneContentReady;
- (BOOL)addEvent:(id)event outError:(id *)error;
- (CGRect)salientContentRectangle;
- (PRSPosterConfiguration)configuration;
- (PRUISPosterContentViewCoordinator)contentViewCoordinator;
- (PRUISPosterMotionEventsDelegate)motionEventsDelegate;
- (PRUISPosterRenderingViewController)initWithArchivedConfigurationURL:(id)l context:(id)context boundingShape:(int64_t)shape;
- (PRUISPosterRenderingViewController)initWithPosterContents:(id)contents context:(id)context boundingShape:(int64_t)shape extensionInstance:(id)instance snapshotController:(id)controller initialSnapshotBundle:(id)bundle renderingMode:(unint64_t)mode snapshotDefinition:(id)self0;
- (PRUISPosterRenderingViewControllerDelegate)delegate;
- (UIView)obscurableContentView;
- (id)_cachedImageForRequest:(id)request;
- (id)_contentViewCoordinator;
- (id)_currentAppearance;
- (id)_extensionProvider;
- (id)_levelSetForSnapshotOptions:(unint64_t)options;
- (id)_obscurableContentView;
- (id)_presentationContextModifier;
- (id)_providerBundleIdentifier;
- (id)_snapshotRequestForDefinition:(id)definition screen:(id)screen;
- (id)_snapshotRequestForOptions:(unint64_t)options screen:(id)screen levelSet:(id)set;
- (id)_updateContentStyleWithAppearance:(id)appearance;
- (id)executeSceneSnapshotForDefinition:(id)definition options:(unint64_t)options;
- (uint64_t)deviceMotionController:(uint64_t)controller didUpdateMotionWithRotation:(_OWORD *)rotation;
- (uint64_t)updateMotionWithRotation:(_OWORD *)rotation;
- (unint64_t)supportedInterfaceOrientations;
- (void)_beginExecutingSnapshotsIfNeeded;
- (void)_createPosterScene;
- (void)_currentAppearance;
- (void)_loadTitleStyleConfigurationIfNeeded;
- (void)_notifySceneOfTransitionState:(id)state;
- (void)_processNextSnapshot;
- (void)_sceneContentReadinessDidChange;
- (void)_setRenderingMode:(unint64_t)mode canUseInitialSnapshotBundle:(BOOL)bundle;
- (void)_setSceneContentHidden:(BOOL)hidden animated:(BOOL)animated completion:(id)completion;
- (void)_setSceneContentHidden:(BOOL)hidden animationSettings:(id)settings completion:(id)completion;
- (void)_snapshotWithRequest:(id)request completionBlock:(id)block;
- (void)_teardownPosterScene;
- (void)_teardownSnapshotImageViews;
- (void)_updateBackgroundSceneToSize:(CGSize)size orientation:(int64_t)orientation withAnimationSettings:(id)settings;
- (void)_updateEffectiveMotionEffectsModeWithMode:(unint64_t)mode;
- (void)_updateFloatingLayer;
- (void)addTransition:(id)transition;
- (void)applyVisualEffect:(id)effect;
- (void)dealloc;
- (void)didMoveToParentViewController:(id)controller;
- (void)registerPosterAppearanceObserver:(id)observer;
- (void)scene:(id)scene clientDidConnect:(id)connect;
- (void)scene:(id)scene didReceiveActions:(id)actions;
- (void)scene:(id)scene didUpdateClientSettingsWithDiff:(id)diff oldClientSettings:(id)settings transitionContext:(id)context;
- (void)scene:(id)scene willUpdateSettings:(id)settings withTransitionContext:(id)context;
- (void)sceneContentStateDidChange:(id)change;
- (void)sceneDidActivate:(id)activate;
- (void)sceneDidDeactivate:(id)deactivate withError:(id)error;
- (void)setContentOcclusionRectangles:(id)rectangles;
- (void)setDeviceMotionEventGenerationActive:(BOOL)active;
- (void)setDeviceMotionUpdateInterval:(double)interval;
- (void)setFloatingSceneView:(id)view;
- (void)setForcesSceneForeground:(BOOL)foreground;
- (void)setSalientContentRectangle:(CGRect)rectangle;
- (void)setSceneViewBackgroundColor:(id)color;
- (void)setShowsContentWhenReady:(BOOL)ready;
- (void)setViewBackgroundColor:(id)color;
- (void)snapshotWithOptions:(unint64_t)options forScreen:(id)screen completionBlock:(id)block;
- (void)startGeneratingMotionEvents;
- (void)startSendingMotionEvents;
- (void)stopGeneratingMotionEvents;
- (void)stopSendingMotionEvents;
- (void)transitionDidBegin:(id)begin;
- (void)transitionDidEnd:(id)end;
- (void)transitionDidUpdate:(id)update;
- (void)updateLayoutForChangedObscuredSubviewBounds;
- (void)userTapEventOccurredWithLocation:(CGPoint)location;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation PRUISPosterRenderingViewController

- (PRUISPosterRenderingViewController)initWithArchivedConfigurationURL:(id)l context:(id)context boundingShape:(int64_t)shape
{
  lCopy = l;
  v9 = MEMORY[0x1E69C4FF8];
  v16 = 0;
  contextCopy = context;
  v11 = [v9 unarchiveConfigurationAtURL:lCopy format:-1 error:&v16];
  v12 = v16;
  v13 = PRUISLogRendering();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    [PRUISPosterRenderingViewController initWithArchivedConfigurationURL:context:boundingShape:];
  }

  v14 = [(PRUISPosterRenderingViewController *)self initWithPosterContents:v11 context:contextCopy boundingShape:shape];
  return v14;
}

- (PRUISPosterRenderingViewController)initWithPosterContents:(id)contents context:(id)context boundingShape:(int64_t)shape extensionInstance:(id)instance snapshotController:(id)controller initialSnapshotBundle:(id)bundle renderingMode:(unint64_t)mode snapshotDefinition:(id)self0
{
  v55 = *MEMORY[0x1E69E9840];
  contentsCopy = contents;
  contextCopy = context;
  instanceCopy = instance;
  controllerCopy = controller;
  bundleCopy = bundle;
  v20 = contentsCopy;
  v21 = bundleCopy;
  definitionCopy = definition;
  v48.receiver = self;
  v48.super_class = PRUISPosterRenderingViewController;
  v22 = [(PRUISPosterRenderingViewController *)&v48 initWithNibName:0 bundle:0];
  if (!v22)
  {
    goto LABEL_26;
  }

  v44 = v20;
  _path = [v20 _path];
  NSClassFromString(&cfstr_Pfserverposter.isa);
  if (!_path)
  {
    [PRUISPosterRenderingViewController initWithPosterContents:a2 context:? boundingShape:? extensionInstance:? snapshotController:? initialSnapshotBundle:? renderingMode:? snapshotDefinition:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PRUISPosterRenderingViewController initWithPosterContents:a2 context:? boundingShape:? extensionInstance:? snapshotController:? initialSnapshotBundle:? renderingMode:? snapshotDefinition:?];
  }

  v24 = PUIPosterBoundingShapeFromInt();
  if ((PUIPosterBoundingShapeIsValid() & 1) == 0)
  {
    [PRUISPosterRenderingViewController initWithPosterContents:a2 context:? boundingShape:? extensionInstance:? snapshotController:? initialSnapshotBundle:? renderingMode:? snapshotDefinition:?];
  }

  objc_storeStrong(&v22->_extensionInstance, instance);
  v22->_shouldRelinquishExtensionInstanceOnSceneTeardown = instanceCopy == 0;
  objc_storeStrong(&v22->_posterContents, contents);
  objc_storeStrong(&v22->_context, context);
  v22->_renderingMode = mode;
  v22->_activeOrientation = [*MEMORY[0x1E69DDA98] activeInterfaceOrientation];
  array = [MEMORY[0x1E695DF70] array];
  enqueuedSnapshotRequests = v22->_enqueuedSnapshotRequests;
  v22->_enqueuedSnapshotRequests = array;

  v22->_boundingShape = v24;
  if (controllerCopy)
  {
    v27 = 0;
    v28 = controllerCopy;
  }

  else
  {
    instance = [v44 role];
    if ([instance isEqualToString:*MEMORY[0x1E69C5218]])
    {
      v28 = +[PRUISPosterSnapshotController sharedIncomingCallSnapshotController];
      v27 = 1;
    }

    else
    {
      v27 = 0;
      v28 = 0;
    }
  }

  objc_storeStrong(&v22->_snapshotController, v28);
  if (v27)
  {
  }

  if (!controllerCopy)
  {
  }

  v29 = [objc_alloc(MEMORY[0x1E69C5108]) initWithDebounceAfterEvents:1 withinTimeInterval:6.0];
  jetsamDebounceFilter = v22->_jetsamDebounceFilter;
  v22->_jetsamDebounceFilter = v29;

  underlyingSnapshotBundle = [v21 underlyingSnapshotBundle];
  initialSnapshotBundle = v22->_initialSnapshotBundle;
  v22->_initialSnapshotBundle = underlyingSnapshotBundle;

  objc_storeStrong(&v22->_snapshotDefinition, definition);
  blackColor = [MEMORY[0x1E69DC888] blackColor];
  sceneViewBackgroundColor = v22->_sceneViewBackgroundColor;
  v22->_sceneViewBackgroundColor = blackColor;

  objc_storeStrong(&v22->_viewBackgroundColor, blackColor);
  v35 = objc_alloc_init(PRUISDeviceMotionController);
  deviceMotionController = v22->_deviceMotionController;
  v22->_deviceMotionController = v35;

  [(PRUISDeviceMotionController *)v22->_deviceMotionController setDelegate:v22];
  if (v21)
  {
    v37 = [(PRUISPosterRenderingViewController *)v22 _buildSnapshotImageViewsFromBundle:v22->_initialSnapshotBundle];
    if (mode == 3)
    {
      if (v37)
      {
        goto LABEL_23;
      }

      goto LABEL_21;
    }

LABEL_22:
    v22->_renderingMode = mode;
    [(PRUISPosterRenderingViewController *)v22 _createPosterScene];
    goto LABEL_23;
  }

  v38 = PRUISLogRendering();
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1CAE63000, v38, OS_LOG_TYPE_DEFAULT, "Initial snapshot bundle was nil, not building snapshot image views", buf, 2u);
  }

  if (mode != 3)
  {
    goto LABEL_22;
  }

LABEL_21:
  v22->_renderingMode = 2;
  pendTransitionToRenderingModeOnViewDidAppear = v22->_pendTransitionToRenderingModeOnViewDidAppear;
  v22->_pendTransitionToRenderingModeOnViewDidAppear = &unk_1F4AE1E20;

LABEL_23:
  v40 = PRUISLogRendering();
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
  {
    v41 = objc_opt_class();
    v42 = NSStringFromClass(v41);
    *buf = 138543874;
    v50 = v42;
    v51 = 2050;
    v52 = v22;
    v53 = 2048;
    v54 = v44;
    _os_log_impl(&dword_1CAE63000, v40, OS_LOG_TYPE_DEFAULT, "<%{public}@:%{public}p> init. contents: <%p>", buf, 0x20u);
  }

  v20 = v44;
LABEL_26:

  return v22;
}

- (PRSPosterConfiguration)configuration
{
  posterContents = self->_posterContents;
  v3 = objc_opt_class();
  v4 = posterContents;
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v3 = v4;
    }

    else
    {
      v3 = 0;
    }
  }

  v5 = v3;

  return v3;
}

- (unint64_t)supportedInterfaceOrientations
{
  if (!PUIDynamicRotationIsActive())
  {
    return 2;
  }

  v4.receiver = self;
  v4.super_class = PRUISPosterRenderingViewController;
  return [(PRUISPosterRenderingViewController *)&v4 supportedInterfaceOrientations];
}

- ($04E7BC5D857DAB0C87BC5F8C0E9AAC02)renderingMetrics
{
  view = [(PRUISPosterRenderingViewController *)self view];
  [view bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  supportedInterfaceOrientations = [(PRUISPosterRenderingViewController *)self supportedInterfaceOrientations];
  activeOrientation = self->_activeOrientation;
  if ((supportedInterfaceOrientations & 0x18) == 0)
  {
    v15 = _os_feature_enabled_impl();
    if (v10 <= v12)
    {
      v16 = 1;
    }

    else
    {
      v16 = v15;
    }

    if (v16)
    {
      v17 = v10;
    }

    else
    {
      v17 = v12;
    }

    if (!v16)
    {
      v12 = v10;
    }

    if ((activeOrientation - 3) < 2)
    {
      activeOrientation = 1;
    }

    v10 = v17;
  }

  retstr->var0.origin.x = v6;
  retstr->var0.origin.y = v8;
  retstr->var0.size.width = v10;
  retstr->var0.size.height = v12;
  retstr->var1 = supportedInterfaceOrientations;
  retstr->var2 = activeOrientation;

  return result;
}

- (void)dealloc
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = PRUISLogRendering();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    posterContents = self->_posterContents;
    *buf = 138543874;
    v9 = v5;
    v10 = 2050;
    selfCopy = self;
    v12 = 2048;
    v13 = posterContents;
    _os_log_impl(&dword_1CAE63000, v3, OS_LOG_TYPE_DEFAULT, "<%{public}@:%{public}p> dealloc. contents: <%p>", buf, 0x20u);
  }

  [(PRUISPosterRenderingViewController *)self _teardownPosterScene];
  [(PRUISPosterRenderingViewController *)self _teardownSnapshotImageViews];
  [(PRUISPosterRenderingViewController *)self stopGeneratingMotionEvents];
  [(PRUISDeviceMotionController *)self->_deviceMotionController invalidate];
  [(PRRenderingServiceSceneComponent *)self->_renderingServiceSceneComponent invalidate];
  v7.receiver = self;
  v7.super_class = PRUISPosterRenderingViewController;
  [(PRUISPosterRenderingViewController *)&v7 dealloc];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v12 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = PRUISPosterRenderingViewController;
  [(PRUISPosterRenderingViewController *)&v7 viewDidDisappear:disappear];
  v4 = PRUISLogRendering();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    *buf = 138543618;
    v9 = v6;
    v10 = 2050;
    selfCopy = self;
    _os_log_impl(&dword_1CAE63000, v4, OS_LOG_TYPE_DEFAULT, "<%{public}@:%{public}p> viewDidDisappear", buf, 0x16u);
  }
}

- (void)viewDidLayoutSubviews
{
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  view = [self view];
  [view frame];
  v5 = NSStringFromCGRect(v15);
  view2 = [self view];
  [view2 bounds];
  v7 = NSStringFromCGRect(v16);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_13(&dword_1CAE63000, v8, v9, "<%{public}@:%{public}p> begin viewDidLayoutSubviews, view.frame: %{public}@, view.bounds: %{public}@", v10, v11, v12, v13, v14);
}

void __59__PRUISPosterRenderingViewController_viewDidLayoutSubviews__block_invoke(uint64_t a1)
{
  v2 = PRUISLogRendering();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __59__PRUISPosterRenderingViewController_viewDidLayoutSubviews__block_invoke_cold_1(a1);
  }
}

- (void)viewDidLoad
{
  v15.receiver = self;
  v15.super_class = PRUISPosterRenderingViewController;
  [(PRUISPosterRenderingViewController *)&v15 viewDidLoad];
  view = [(PRUISPosterRenderingViewController *)self view];
  [view setBackgroundColor:self->_viewBackgroundColor];
  [(PRUISPosterRenderingViewController *)self renderingMetrics];
  _contentViewCoordinator = [(PRUISPosterRenderingViewController *)self _contentViewCoordinator];
  obscurableContentView = [_contentViewCoordinator obscurableContentView];

  [obscurableContentView setFrame:{v11, v12, v13, v14}];
  sceneView = self->_sceneView;
  view2 = [(PRUISPosterRenderingViewController *)self view];
  v8 = view2;
  if (sceneView)
  {
    [view2 insertSubview:obscurableContentView aboveSubview:self->_sceneView];
  }

  else
  {
    [view2 addSubview:obscurableContentView];
  }

  if (self->_floatingSceneView)
  {
    view3 = [(PRUISPosterRenderingViewController *)self view];
    [view3 addSubview:self->_floatingSceneView];

    view4 = [(PRUISPosterRenderingViewController *)self view];
    [view4 bringSubviewToFront:self->_floatingSceneView];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = PRUISPosterRenderingViewController;
  [(PRUISPosterRenderingViewController *)&v4 viewWillAppear:appear];
  [(PRUISPosterRenderingViewController *)self _updateBackgroundScene];
}

- (void)viewDidAppear:(BOOL)appear
{
  v10.receiver = self;
  v10.super_class = PRUISPosterRenderingViewController;
  [(PRUISPosterRenderingViewController *)&v10 viewDidAppear:appear];
  pendTransitionToRenderingModeOnViewDidAppear = self->_pendTransitionToRenderingModeOnViewDidAppear;
  if (pendTransitionToRenderingModeOnViewDidAppear)
  {
    unsignedIntegerValue = [(NSNumber *)pendTransitionToRenderingModeOnViewDidAppear unsignedIntegerValue];
    v6 = self->_pendTransitionToRenderingModeOnViewDidAppear;
    self->_pendTransitionToRenderingModeOnViewDidAppear = 0;

    if (unsignedIntegerValue == 3 && ([(PRUISPosterRenderingViewController *)self snapshotDefinition], v7 = objc_claimAutoreleasedReturnValue(), v7, !v7))
    {
      currentRunLoop = [MEMORY[0x1E695DFD0] currentRunLoop];
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __52__PRUISPosterRenderingViewController_viewDidAppear___block_invoke;
      v9[3] = &unk_1E83A7828;
      v9[4] = self;
      v9[5] = 3;
      [currentRunLoop performBlock:v9];
    }

    else
    {
      [(PRUISPosterRenderingViewController *)self setRenderingMode:unsignedIntegerValue];
    }
  }

  [(PRUISPosterRenderingViewController *)self _updateBackgroundScene];
}

- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = PRUISPosterRenderingViewController;
  [(PRUISPosterRenderingViewController *)&v5 viewDidMoveToWindow:window shouldAppearOrDisappear:disappear];
  [(PRUISPosterRenderingViewController *)self _updateBackgroundScene];
}

- (void)didMoveToParentViewController:(id)controller
{
  v4.receiver = self;
  v4.super_class = PRUISPosterRenderingViewController;
  [(PRUISPosterRenderingViewController *)&v4 didMoveToParentViewController:controller];
  [(PRUISPosterRenderingViewController *)self _updateBackgroundScene];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  v24.receiver = self;
  v24.super_class = PRUISPosterRenderingViewController;
  [(PRUISPosterRenderingViewController *)&v24 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  containerView = [coordinatorCopy containerView];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    window = containerView;
  }

  else
  {
    window = [containerView window];
  }

  v10 = window;
  if (coordinatorCopy)
  {
    _toWindowOrientation = [window _toWindowOrientation];
    v12 = MEMORY[0x1E698E608];
    [coordinatorCopy transitionDuration];
    v13 = [v12 settingsWithDuration:?];
  }

  else
  {
    _toWindowOrientation = [(PRUISPosterRenderingViewController *)self interfaceOrientation];
    v13 = 0;
  }

  self->_activeOrientation = _toWindowOrientation;
  [(PRUISPosterRenderingViewController *)self renderingMetrics];
  v15 = v22;
  v14 = v23;
  if (coordinatorCopy)
  {
    v14 = height;
    v15 = width;
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __89__PRUISPosterRenderingViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v17[3] = &unk_1E83A7BA8;
  v19 = v15;
  v20 = v14;
  v21 = _toWindowOrientation;
  v17[4] = self;
  v18 = v13;
  v16 = v13;
  [coordinatorCopy animateAlongsideTransition:v17 completion:&__block_literal_global_11];
}

- (PRUISPosterContentViewCoordinator)contentViewCoordinator
{
  _contentViewCoordinator = [(PRUISPosterRenderingViewController *)self _contentViewCoordinator];
  if (!self->_hasAccessedContentViewCoordinator)
  {
    self->_hasAccessedContentViewCoordinator = 1;
    _currentAppearance = [(PRUISPosterRenderingViewController *)self _currentAppearance];
    v5 = [(PRUISPosterRenderingViewController *)self _updateContentStyleWithAppearance:_currentAppearance];
  }

  return _contentViewCoordinator;
}

- (id)_contentViewCoordinator
{
  contentViewCoordinator = self->_contentViewCoordinator;
  if (!contentViewCoordinator)
  {
    [(PRUISPosterRenderingViewController *)self renderingMetrics];
    v4 = [[PRUISPosterContentViewCoordinator alloc] initWithBounds:v8, v9, v10, v11];
    v5 = self->_contentViewCoordinator;
    self->_contentViewCoordinator = v4;

    obscurableContentView = [(PRUISPosterContentViewCoordinator *)self->_contentViewCoordinator obscurableContentView];
    [obscurableContentView setFrame:{v8, v9, v10, v11}];

    contentViewCoordinator = self->_contentViewCoordinator;
  }

  return contentViewCoordinator;
}

- (void)registerPosterAppearanceObserver:(id)observer
{
  observerCopy = observer;
  _currentAppearance = [(PRUISPosterRenderingViewController *)self _currentAppearance];
  v5 = [(PRUISPosterRenderingViewController *)self _updateContentStyleWithAppearance:_currentAppearance];
  [observerCopy posterAppearanceDidChange:v5];
}

- (void)updateLayoutForChangedObscuredSubviewBounds
{
  _contentViewCoordinator = [(PRUISPosterRenderingViewController *)self _contentViewCoordinator];
  [_contentViewCoordinator updateLayoutForChangedVibrantObscuredSubviewBounds];
}

- (void)setViewBackgroundColor:(id)color
{
  colorCopy = color;
  if ((BSEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_viewBackgroundColor, color);
    viewIfLoaded = [(PRUISPosterRenderingViewController *)self viewIfLoaded];
    [viewIfLoaded setBackgroundColor:self->_viewBackgroundColor];
  }
}

- (void)setSceneViewBackgroundColor:(id)color
{
  colorCopy = color;
  if ((BSEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_sceneViewBackgroundColor, color);
    scenePresenter = self->_scenePresenter;
    if (scenePresenter)
    {
      _presentationContextModifier = [(PRUISPosterRenderingViewController *)self _presentationContextModifier];
      [(UIScenePresenter *)scenePresenter modifyPresentationContext:_presentationContextModifier];
    }
  }
}

- (id)_presentationContextModifier
{
  v2 = self->_sceneViewBackgroundColor;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __66__PRUISPosterRenderingViewController__presentationContextModifier__block_invoke;
  aBlock[3] = &unk_1E83A7BF0;
  v7 = v2;
  v3 = v2;
  v4 = _Block_copy(aBlock);

  return v4;
}

void __66__PRUISPosterRenderingViewController__presentationContextModifier__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setAppearanceStyle:2];
  [v3 setClippingDisabled:PUIDynamicRotationIsActive()];
  [v3 setBackgroundColorWhileHosting:*(a1 + 32)];
}

- (void)_setRenderingMode:(unint64_t)mode canUseInitialSnapshotBundle:(BOOL)bundle
{
  v47 = *MEMORY[0x1E69E9840];
  if (mode >= 4)
  {
    v8 = PRUISLogRendering();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [PRUISPosterRenderingViewController _setRenderingMode:canUseInitialSnapshotBundle:];
    }

    goto LABEL_8;
  }

  bundleCopy = bundle;
  pendTransitionToRenderingModeOnViewDidAppear = self->_pendTransitionToRenderingModeOnViewDidAppear;
  if (pendTransitionToRenderingModeOnViewDidAppear)
  {
    if ([(NSNumber *)pendTransitionToRenderingModeOnViewDidAppear unsignedIntegerValue]== mode)
    {
      v8 = PRUISLogRendering();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [PRUISPosterRenderingViewController _setRenderingMode:canUseInitialSnapshotBundle:];
      }

      goto LABEL_8;
    }

    v9 = self->_pendTransitionToRenderingModeOnViewDidAppear;
  }

  else
  {
    v9 = 0;
  }

  self->_pendTransitionToRenderingModeOnViewDidAppear = 0;

  if (self->_renderingMode != mode || v9 != 0)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __84__PRUISPosterRenderingViewController__setRenderingMode_canUseInitialSnapshotBundle___block_invoke;
    aBlock[3] = &unk_1E83A7C18;
    aBlock[4] = self;
    v11 = _Block_copy(aBlock);
    v8 = v11;
    if (mode != 3)
    {
      if (!self->_scene)
      {
        [(PRUISPosterRenderingViewController *)self _createPosterScene];
      }

      (*(v8 + 16))(v8, mode);
      goto LABEL_8;
    }

    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __84__PRUISPosterRenderingViewController__setRenderingMode_canUseInitialSnapshotBundle___block_invoke_88;
    v39[3] = &unk_1E83A7C40;
    v39[4] = self;
    v12 = v11;
    v40 = v12;
    v41 = 3;
    v13 = _Block_copy(v39);
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __84__PRUISPosterRenderingViewController__setRenderingMode_canUseInitialSnapshotBundle___block_invoke_90;
    v38[3] = &unk_1E83A7C68;
    v38[4] = self;
    v14 = _Block_copy(v38);
    if (bundleCopy)
    {
      initialSnapshotBundle = self->_initialSnapshotBundle;
      if (initialSnapshotBundle)
      {
        if ((*(v13 + 2))(v13, initialSnapshotBundle, @"Will continue by trying to take a snapshot..."))
        {

          goto LABEL_41;
        }
      }
    }

    snapshotDefinition = [(PRUISPosterRenderingViewController *)self snapshotDefinition];
    if (snapshotDefinition)
    {
      if ([(PRUISPosterRenderingViewController *)self _isSceneContentReady])
      {
        v17 = PRUISLogRendering();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v18 = objc_opt_class();
          v19 = NSStringFromClass(v18);
          *buf = 138543618;
          v44 = v19;
          v45 = 2050;
          selfCopy2 = self;
          _os_log_impl(&dword_1CAE63000, v17, OS_LOG_TYPE_DEFAULT, "<%{public}@:%{public}p> Capturing snapshot using the content-ready scene.", buf, 0x16u);
        }

        v20 = [(PRUISPosterRenderingViewController *)self executeSceneSnapshotForDefinition:snapshotDefinition options:2];
        v35[0] = MEMORY[0x1E69E9820];
        v35[1] = 3221225472;
        v35[2] = __84__PRUISPosterRenderingViewController__setRenderingMode_canUseInitialSnapshotBundle___block_invoke_99;
        v35[3] = &unk_1E83A7C90;
        v35[4] = self;
        v36 = v13;
        v37 = v14;
        v33[0] = MEMORY[0x1E69E9820];
        v33[1] = 3221225472;
        v33[2] = __84__PRUISPosterRenderingViewController__setRenderingMode_canUseInitialSnapshotBundle___block_invoke_107;
        v33[3] = &unk_1E83A7CB8;
        v33[4] = self;
        v34 = v37;
        mainThreadScheduler = [MEMORY[0x1E69C5268] mainThreadScheduler];
        [v20 addSuccessBlock:v35 andFailureBlock:v33 scheduler:mainThreadScheduler];

        v22 = v36;
LABEL_36:

        goto LABEL_40;
      }

      snapshotController = self->_snapshotController;
      v25 = PRUISLogRendering();
      v26 = v25;
      if (snapshotController)
      {
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          v27 = objc_opt_class();
          v28 = NSStringFromClass(v27);
          *buf = 138543618;
          v44 = v28;
          v45 = 2050;
          selfCopy2 = self;
          _os_log_impl(&dword_1CAE63000, v26, OS_LOG_TYPE_DEFAULT, "<%{public}@:%{public}p> Capturing snapshot using the snapshot controller.", buf, 0x16u);
        }

        v20 = [(UIViewController *)self pruis_snapshotRequestForDefinition:snapshotDefinition interfaceOrientation:self->_activeOrientation bounds:0 screen:self->_posterContents posterContents:*MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24)];
        [v20 setRetryCount:2];
        v29 = self->_snapshotController;
        v30[0] = MEMORY[0x1E69E9820];
        v30[1] = 3221225472;
        v30[2] = __84__PRUISPosterRenderingViewController__setRenderingMode_canUseInitialSnapshotBundle___block_invoke_112;
        v30[3] = &unk_1E83A7D08;
        v30[4] = self;
        v31 = v14;
        v32 = v13;
        [(PRUISPosterSnapshotController *)v29 executeSnapshotRequest:v20 completionBlock:v30];

        v22 = v31;
        goto LABEL_36;
      }

      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        [PRUISPosterRenderingViewController _setRenderingMode:canUseInitialSnapshotBundle:];
      }

      (*(v14 + 2))(v14, @"Scene content was not ready and there is no snapshotController.");
    }

    else
    {
      v23 = PRUISLogRendering();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        [PRUISPosterRenderingViewController _setRenderingMode:canUseInitialSnapshotBundle:];
      }

      (*(v14 + 2))(v14, @"nil snapshot definition");
    }

LABEL_40:

    if (snapshotDefinition)
    {
LABEL_8:

      return;
    }

LABEL_41:
  }
}

uint64_t __84__PRUISPosterRenderingViewController__setRenderingMode_canUseInitialSnapshotBundle___block_invoke(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = PRUISLogRendering();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = v6;
    v8 = *(a1 + 32);
    if ((a2 - 1) > 2)
    {
      v9 = @"default";
    }

    else
    {
      v9 = off_1E83A7F78[a2 - 1];
    }

    v11 = 138543874;
    v12 = v6;
    v13 = 2050;
    v14 = v8;
    v15 = 2112;
    v16 = v9;
    _os_log_impl(&dword_1CAE63000, v4, OS_LOG_TYPE_DEFAULT, "<%{public}@:%{public}p> Updating to rendering mode: %@", &v11, 0x20u);
  }

  *(*(a1 + 32) + 1232) = a2;
  return [*(a1 + 32) _updateBackgroundScene];
}

uint64_t __84__PRUISPosterRenderingViewController__setRenderingMode_canUseInitialSnapshotBundle___block_invoke_88(uint64_t a1, uint64_t a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [*(a1 + 32) _buildSnapshotImageViewsFromBundle:a2];
  v7 = PRUISLogRendering();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = *(a1 + 32);
      v13 = 138543618;
      v14 = v10;
      v15 = 2050;
      v16 = v11;
      _os_log_impl(&dword_1CAE63000, v8, OS_LOG_TYPE_DEFAULT, "<%{public}@:%{public}p> Successfully set up snapshot image views. Tearing down poster scene.", &v13, 0x16u);
    }

    [*(a1 + 32) _teardownPosterScene];
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __84__PRUISPosterRenderingViewController__setRenderingMode_canUseInitialSnapshotBundle___block_invoke_88_cold_1();
    }
  }

  return v6;
}

void __84__PRUISPosterRenderingViewController__setRenderingMode_canUseInitialSnapshotBundle___block_invoke_90(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!*(*(a1 + 32) + 1032))
  {
    v4 = [MEMORY[0x1E69C5268] mainThreadScheduler];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __84__PRUISPosterRenderingViewController__setRenderingMode_canUseInitialSnapshotBundle___block_invoke_2;
    v5[3] = &unk_1E83A7100;
    v5[4] = *(a1 + 32);
    v6 = v3;
    [v4 performBlock:v5];
  }
}

uint64_t __84__PRUISPosterRenderingViewController__setRenderingMode_canUseInitialSnapshotBundle___block_invoke_2(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = PRUISLogRendering();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v8 = 138543874;
    v9 = v4;
    v10 = 2050;
    v11 = v5;
    v12 = 2114;
    v13 = v6;
    _os_log_impl(&dword_1CAE63000, v2, OS_LOG_TYPE_DEFAULT, "<%{public}@:%{public}p> Spinning up a live scene because %{public}@", &v8, 0x20u);
  }

  [*(a1 + 32) _createPosterScene];
  return [*(a1 + 32) _updateBackgroundScene];
}

void __84__PRUISPosterRenderingViewController__setRenderingMode_canUseInitialSnapshotBundle___block_invoke_99(void *a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PRUISLogRendering();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = a1[4];
    *buf = 138543618;
    v15 = v6;
    v16 = 2050;
    v17 = v7;
    _os_log_impl(&dword_1CAE63000, v4, OS_LOG_TYPE_DEFAULT, "<%{public}@:%{public}p> Successfully captured snapshot and got snapshot bundle. Attempting to set up snapshot image views.", buf, 0x16u);
  }

  v8 = a1[5];
  v9 = [v3 underlyingSnapshotBundle];

  v10 = *(a1[4] + 1232) - 1;
  if (v10 > 2)
  {
    v11 = @"default";
  }

  else
  {
    v11 = off_1E83A7F78[v10];
  }

  v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Not updating rendering mode. Keeping mode as '%@'", v11];
  v13 = (*(v8 + 16))(v8, v9, v12);

  if ((v13 & 1) == 0)
  {
    (*(a1[6] + 16))();
  }
}

void __84__PRUISPosterRenderingViewController__setRenderingMode_canUseInitialSnapshotBundle___block_invoke_107(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PRUISLogRendering();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __84__PRUISPosterRenderingViewController__setRenderingMode_canUseInitialSnapshotBundle___block_invoke_107_cold_1(a1, v3);
  }

  (*(*(a1 + 40) + 16))();
}

void __84__PRUISPosterRenderingViewController__setRenderingMode_canUseInitialSnapshotBundle___block_invoke_112(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v43 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = PRUISLogRendering();
  v12 = v11;
  if (v8)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      v15 = *(a1 + 32);
      *buf = 138543618;
      v34 = v14;
      v35 = 2050;
      v36 = v15;
      _os_log_impl(&dword_1CAE63000, v12, OS_LOG_TYPE_DEFAULT, "<%{public}@:%{public}p> Successfully captured snapshot and got snapshot bundle. Attempting to set up snapshot image views.", buf, 0x16u);
    }

    v16 = [MEMORY[0x1E69C5268] mainThreadScheduler];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __84__PRUISPosterRenderingViewController__setRenderingMode_canUseInitialSnapshotBundle___block_invoke_116;
    v28[3] = &unk_1E83A7CE0;
    v31 = *(a1 + 48);
    v17 = v8;
    v18 = *(a1 + 32);
    v19 = *(a1 + 40);
    v29 = v17;
    v30 = v18;
    v32 = v19;
    [v16 performBlock:v28];
  }

  else
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v20 = objc_opt_class();
      v21 = NSStringFromClass(v20);
      v22 = *(a1 + 32);
      v23 = [v9 pf_description];
      v24 = [v10 pf_description];
      v25 = v24;
      v26 = *(*(a1 + 32) + 1232) - 1;
      if (v26 > 2)
      {
        v27 = @"default";
      }

      else
      {
        v27 = off_1E83A7F78[v26];
      }

      *buf = 138544386;
      v34 = v21;
      v35 = 2050;
      v36 = v22;
      v37 = 2114;
      v38 = v23;
      v39 = 2114;
      v40 = v24;
      v41 = 2114;
      v42 = v27;
      _os_log_error_impl(&dword_1CAE63000, v12, OS_LOG_TYPE_ERROR, "<%{public}@:%{public}p> Failed to capture snapshot with resultError: %{public}@, cacheError: %{public}@. Not updating rendering mode. Keeping mode as '%{public}@'", buf, 0x34u);
    }

    (*(*(a1 + 40) + 16))();
  }
}

void __84__PRUISPosterRenderingViewController__setRenderingMode_canUseInitialSnapshotBundle___block_invoke_116(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) posterSnapshotBundle];
  v4 = [v3 underlyingSnapshotBundle];
  v5 = *(*(a1 + 40) + 1232) - 1;
  if (v5 > 2)
  {
    v6 = @"default";
  }

  else
  {
    v6 = off_1E83A7F78[v5];
  }

  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Not updating rendering mode. Keeping mode as '%@'", v6];
  v8 = (*(v2 + 16))(v2, v4, v7);

  if ((v8 & 1) == 0)
  {
    v9 = *(*(a1 + 56) + 16);

    v9();
  }
}

- (void)setShowsContentWhenReady:(BOOL)ready
{
  if (self->_showsContentWhenReady != ready)
  {
    self->_showsContentWhenReady = ready;
    if (ready)
    {
      [(PRUISPosterRenderingViewController *)self _setSceneContentHidden:[(PRUISPosterRenderingViewController *)self _isSceneContentReady]^ 1 animated:0 completion:0];

      [(PRUISPosterRenderingViewController *)self _updateBackgroundScene];
    }
  }
}

- (void)setForcesSceneForeground:(BOOL)foreground
{
  if (self->_forcesSceneForeground != foreground)
  {
    self->_forcesSceneForeground = foreground;
    [(PRUISPosterRenderingViewController *)self _updateBackgroundScene];
  }
}

- (void)startSendingMotionEvents
{
  clientSettings = [(FBScene *)self->_scene clientSettings];
  if ([clientSettings pr_deviceMotionEventsRequested])
  {
  }

  else
  {
    clientSettings2 = [(FBScene *)self->_scene clientSettings];
    pr_deviceMotionMode = [clientSettings2 pr_deviceMotionMode];

    if (!pr_deviceMotionMode)
    {
      self->_hostHasRequestedMotionEvents = 1;
      return;
    }
  }

  [(PRUISPosterRenderingViewController *)self startGeneratingMotionEvents];
}

- (void)stopSendingMotionEvents
{
  [(PRUISDeviceMotionController *)self->_deviceMotionController stopGeneratingMotionEvents];
  self->_hostHasRequestedMotionEvents = 0;

  [(PRUISPosterRenderingViewController *)self setDeviceMotionEventGenerationActive:0];
}

- (void)setDeviceMotionUpdateInterval:(double)interval
{
  if (self->_deviceMotionUpdateInterval != interval)
  {
    v6[5] = v3;
    v6[6] = v4;
    self->_deviceMotionUpdateInterval = interval;
    scene = self->_scene;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __68__PRUISPosterRenderingViewController_setDeviceMotionUpdateInterval___block_invoke;
    v6[3] = &__block_descriptor_40_e33_v16__0__FBSMutableSceneSettings_8l;
    *&v6[4] = interval;
    [(FBScene *)scene updateSettings:v6];
  }
}

- (void)setSalientContentRectangle:(CGRect)rectangle
{
  height = rectangle.size.height;
  width = rectangle.size.width;
  y = rectangle.origin.y;
  x = rectangle.origin.x;
  p_salientContentRectangle = &self->_salientContentRectangle;
  if (!CGRectEqualToRect(rectangle, self->_salientContentRectangle))
  {
    p_salientContentRectangle->origin.x = x;
    p_salientContentRectangle->origin.y = y;
    p_salientContentRectangle->size.width = width;
    p_salientContentRectangle->size.height = height;
    clientSettings = [(FBScene *)self->_scene clientSettings];
    pui_salientContentRectangleUpdatesRequested = [clientSettings pui_salientContentRectangleUpdatesRequested];

    if (pui_salientContentRectangleUpdatesRequested)
    {
      scene = self->_scene;
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __65__PRUISPosterRenderingViewController_setSalientContentRectangle___block_invoke;
      v12[3] = &__block_descriptor_64_e33_v16__0__FBSMutableSceneSettings_8l;
      *&v12[4] = x;
      *&v12[5] = y;
      *&v12[6] = width;
      *&v12[7] = height;
      [(FBScene *)scene updateSettings:v12];
    }
  }
}

- (void)setContentOcclusionRectangles:(id)rectangles
{
  rectanglesCopy = rectangles;
  if (self->_contentOcclusionRectangles != rectanglesCopy)
  {
    objc_storeStrong(&self->_contentOcclusionRectangles, rectangles);
    clientSettings = [(FBScene *)self->_scene clientSettings];
    pui_contentOcclusionRectangleUpdatesRequested = [clientSettings pui_contentOcclusionRectangleUpdatesRequested];

    if (pui_contentOcclusionRectangleUpdatesRequested)
    {
      scene = self->_scene;
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __68__PRUISPosterRenderingViewController_setContentOcclusionRectangles___block_invoke;
      v9[3] = &unk_1E83A7D50;
      v10 = rectanglesCopy;
      [(FBScene *)scene updateSettings:v9];
    }
  }
}

void __68__PRUISPosterRenderingViewController_setContentOcclusionRectangles___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E69C5580];
  v4 = a2;
  v5 = [v3 alloc];
  v7 = [*(a1 + 32) allRects];
  v6 = [v5 initWithNameToRectMap:v7];
  [v4 pui_setContentOcclusionRectangles:v6];
}

- (void)setDeviceMotionEventGenerationActive:(BOOL)active
{
  if (self->_deviceMotionEventGenerationActive != active)
  {
    self->_deviceMotionEventGenerationActive = active;
    [(PRRenderingServiceSceneComponent *)self->_renderingServiceSceneComponent setDeviceMotionEventGenerationActive:?];
  }
}

- (void)startGeneratingMotionEvents
{
  [(PRUISPosterRenderingViewController *)self setDeviceMotionEventGenerationActive:1];
  deviceMotionController = self->_deviceMotionController;

  [(PRUISDeviceMotionController *)deviceMotionController startGeneratingMotionEvents];
}

- (void)stopGeneratingMotionEvents
{
  [(PRUISDeviceMotionController *)self->_deviceMotionController stopGeneratingMotionEvents];

  [(PRUISPosterRenderingViewController *)self setDeviceMotionEventGenerationActive:0];
}

- (void)setFloatingSceneView:(id)view
{
  viewCopy = view;
  [(UIView *)self->_floatingSceneView removeFromSuperview];
  floatingSceneView = self->_floatingSceneView;
  self->_floatingSceneView = viewCopy;
  v6 = viewCopy;

  viewIfLoaded = [(PRUISPosterRenderingViewController *)self viewIfLoaded];
  [viewIfLoaded addSubview:v6];
}

- (void)applyVisualEffect:(id)effect
{
  effectCopy = effect;
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __56__PRUISPosterRenderingViewController_applyVisualEffect___block_invoke;
  aBlock[3] = &unk_1E83A7D78;
  objc_copyWeak(&v17, &location);
  v5 = effectCopy;
  v15 = v5;
  selfCopy = self;
  v6 = _Block_copy(aBlock);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __56__PRUISPosterRenderingViewController_applyVisualEffect___block_invoke_126;
  v12[3] = &unk_1E83A7DA0;
  objc_copyWeak(&v13, &location);
  v12[4] = self;
  v10 = _Block_copy(v12);
  v11 = v6;
  if (v5 || (v11 = v10, self->_visualEffectView))
  {
    v11[2](v11, v7, v8, v9);
  }

  objc_destroyWeak(&v13);
  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

void __56__PRUISPosterRenderingViewController_applyVisualEffect___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = PRUISLogRendering();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __56__PRUISPosterRenderingViewController_applyVisualEffect___block_invoke_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }

    v11 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:*(a1 + 32)];
    v12 = WeakRetained[124];
    WeakRetained[124] = v11;

    v13 = [*(a1 + 40) view];
    [v13 bounds];
    [WeakRetained[124] setFrame:?];

    [WeakRetained[124] setAutoresizingMask:18];
    v14 = [*(a1 + 40) viewIfLoaded];
    [v14 addSubview:WeakRetained[124]];

    v15 = [WeakRetained[132] obscurableContentView];
    v16 = [*(a1 + 40) viewIfLoaded];
    [v16 bringSubviewToFront:v15];
  }
}

void __56__PRUISPosterRenderingViewController_applyVisualEffect___block_invoke_126(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = PRUISLogRendering();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __56__PRUISPosterRenderingViewController_applyVisualEffect___block_invoke_126_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }

    [WeakRetained[124] removeFromSuperview];
    v11 = WeakRetained[124];
    WeakRetained[124] = 0;

    if (WeakRetained[131])
    {
      v12 = [*(a1 + 32) viewIfLoaded];
      [v12 addSubview:WeakRetained[131]];

      v13 = [*(a1 + 32) viewIfLoaded];
      [v13 bringSubviewToFront:WeakRetained[131]];
    }
  }
}

+ (id)_defaultExtensionProvider
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__PRUISPosterRenderingViewController__defaultExtensionProvider__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (_defaultExtensionProvider_onceToken != -1)
  {
    dispatch_once(&_defaultExtensionProvider_onceToken, block);
  }

  v2 = _defaultExtensionProvider___extensionProvider;

  return v2;
}

uint64_t __63__PRUISPosterRenderingViewController__defaultExtensionProvider__block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x1E69C5170]);
  v3 = MEMORY[0x1E696AFB0];
  v4 = NSStringFromClass(*(a1 + 32));
  v5 = [v3 pf_UUIDFromArbitraryString:v4];
  v6 = [v2 initWithDefaultInstanceIdentifier:v5];
  v7 = _defaultExtensionProvider___extensionProvider;
  _defaultExtensionProvider___extensionProvider = v6;

  [_defaultExtensionProvider___extensionProvider setSupportedRoles:0];
  v8 = _defaultExtensionProvider___extensionProvider;

  return [v8 start];
}

- (id)_extensionProvider
{
  v12 = *MEMORY[0x1E69E9840];
  extensionProvider = [(PRUISPosterSnapshotController *)self->_snapshotController extensionProvider];
  if (!extensionProvider)
  {
    v4 = PRUISLogRendering();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = objc_opt_class();
      v6 = NSStringFromClass(v5);
      v8 = 138543618;
      v9 = v6;
      v10 = 2050;
      selfCopy = self;
      _os_log_impl(&dword_1CAE63000, v4, OS_LOG_TYPE_DEFAULT, "<%{public}@:%{public}p> Snapshot controller was nil or did not have an extensionProvider. Falling back to default extensionProvider.", &v8, 0x16u);
    }

    extensionProvider = [objc_opt_class() _defaultExtensionProvider];
  }

  return extensionProvider;
}

- (BOOL)_buildSnapshotImageViewsFromBundle:(id)bundle
{
  v51 = *MEMORY[0x1E69E9840];
  bundleCopy = bundle;
  BSDispatchQueueAssertMain();
  if (!bundleCopy)
  {
    [PRUISPosterRenderingViewController _buildSnapshotImageViewsFromBundle:a2];
  }

  floatingLevelSet = [MEMORY[0x1E69C5590] floatingLevelSet];
  v7 = [bundleCopy snapshotForLevelSet:floatingLevelSet];

  allLevelsExceptFloating = [MEMORY[0x1E69C5590] allLevelsExceptFloating];
  v9 = [bundleCopy snapshotForLevelSet:allLevelsExceptFloating];

  if (!v9)
  {
    defaultLevelSet = [MEMORY[0x1E69C5590] defaultLevelSet];
    v9 = [bundleCopy snapshotForLevelSet:defaultLevelSet];
  }

  if (v7)
  {
    v11 = PRUISLogRendering();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v47 = 138543618;
      v48 = v13;
      v49 = 2050;
      selfCopy2 = self;
      _os_log_impl(&dword_1CAE63000, v11, OS_LOG_TYPE_DEFAULT, "<%{public}@:%{public}p> Showing snapshot image (in front of obscurable content) until Rendering View Controller shows content.", &v47, 0x16u);
    }

    snapshotFloatingImageView = self->_snapshotFloatingImageView;
    if (snapshotFloatingImageView)
    {
      [(UIImageView *)snapshotFloatingImageView removeFromSuperview];
    }

    v15 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v7];
    v16 = self->_snapshotFloatingImageView;
    self->_snapshotFloatingImageView = v15;

    [(UIImageView *)self->_snapshotFloatingImageView setContentMode:2];
    layer = [(UIImageView *)self->_snapshotFloatingImageView layer];
    [layer setName:@"snapshotFloatingImageView"];

    settings = [(FBScene *)self->_scene settings];
    pr_posterConfiguredProperties = [settings pr_posterConfiguredProperties];

    renderingConfiguration = [pr_posterConfiguredProperties renderingConfiguration];
    isDepthEffectDisabled = [renderingConfiguration isDepthEffectDisabled];

    view = [(PRUISPosterRenderingViewController *)self view];
    v23 = view;
    v24 = self->_snapshotFloatingImageView;
    if (isDepthEffectDisabled)
    {
      [view insertSubview:v24 atIndex:0];
    }

    else
    {
      [view addSubview:v24];
    }

    [(UIImageView *)self->_snapshotFloatingImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    v25 = MEMORY[0x1E696ACD8];
    view2 = [(PRUISPosterRenderingViewController *)self view];
    v27 = [view2 pui_constraintsPinningSubview:self->_snapshotFloatingImageView toEdges:15];
    [v25 activateConstraints:v27];

    if (DEBUG_RENDERING_MODE_onceToken != -1)
    {
      [PRUISPosterRenderingViewController _buildSnapshotImageViewsFromBundle:];
    }

    if (DEBUG_RENDERING_MODE___debugRenderingMode == 1)
    {
      layer2 = [(UIImageView *)self->_snapshotFloatingImageView layer];
      [layer2 setBorderWidth:5.0];

      layer3 = [(UIImageView *)self->_snapshotFloatingImageView layer];
      redColor = [MEMORY[0x1E69DC888] redColor];
      [layer3 setBorderColor:{objc_msgSend(redColor, "CGColor")}];
    }
  }

  if (v9)
  {
    v31 = PRUISLogRendering();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = objc_opt_class();
      v33 = NSStringFromClass(v32);
      v47 = 138543618;
      v48 = v33;
      v49 = 2050;
      selfCopy2 = self;
      _os_log_impl(&dword_1CAE63000, v31, OS_LOG_TYPE_DEFAULT, "<%{public}@:%{public}p> Showing snapshot image (behind obscurable content) until Rendering View Controller shows content.", &v47, 0x16u);
    }

    snapshotAllExceptFloatingImageView = self->_snapshotAllExceptFloatingImageView;
    if (snapshotAllExceptFloatingImageView)
    {
      [(UIImageView *)snapshotAllExceptFloatingImageView removeFromSuperview];
    }

    v35 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v9];
    v36 = self->_snapshotAllExceptFloatingImageView;
    self->_snapshotAllExceptFloatingImageView = v35;

    [(UIImageView *)self->_snapshotAllExceptFloatingImageView setContentMode:2];
    [(UIImageView *)self->_snapshotAllExceptFloatingImageView setAutoresizingMask:18];
    layer4 = [(UIImageView *)self->_snapshotAllExceptFloatingImageView layer];
    [layer4 setName:@"snapshotAllExceptFloatingImageView"];

    view3 = [(PRUISPosterRenderingViewController *)self view];
    [view3 insertSubview:self->_snapshotAllExceptFloatingImageView atIndex:0];

    [(UIImageView *)self->_snapshotAllExceptFloatingImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    v39 = MEMORY[0x1E696ACD8];
    view4 = [(PRUISPosterRenderingViewController *)self view];
    v41 = [view4 pui_constraintsPinningSubview:self->_snapshotAllExceptFloatingImageView toEdges:15];
    [v39 activateConstraints:v41];

    if (DEBUG_RENDERING_MODE_onceToken != -1)
    {
      [PRUISPosterRenderingViewController _buildSnapshotImageViewsFromBundle:];
    }

    if (DEBUG_RENDERING_MODE___debugRenderingMode == 1)
    {
      layer5 = [(UIImageView *)self->_snapshotAllExceptFloatingImageView layer];
      [layer5 setBorderWidth:5.0];

      layer6 = [(UIImageView *)self->_snapshotAllExceptFloatingImageView layer];
      redColor2 = [MEMORY[0x1E69DC888] redColor];
      [layer6 setBorderColor:{objc_msgSend(redColor2, "CGColor")}];
    }
  }

  if (self->_snapshotFloatingImageView)
  {
    v45 = 1;
  }

  else
  {
    v45 = self->_snapshotAllExceptFloatingImageView != 0;
  }

  return v45;
}

- (void)_teardownSnapshotImageViews
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = PRUISLogRendering();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v10 = 138543618;
    v11 = v5;
    v12 = 2050;
    selfCopy = self;
    _os_log_impl(&dword_1CAE63000, v3, OS_LOG_TYPE_DEFAULT, "<%{public}@:%{public}p> Tearing down snapshot image views.", &v10, 0x16u);
  }

  snapshotAllExceptFloatingImageView = self->_snapshotAllExceptFloatingImageView;
  if (snapshotAllExceptFloatingImageView)
  {
    [(UIImageView *)snapshotAllExceptFloatingImageView removeFromSuperview];
    v7 = self->_snapshotAllExceptFloatingImageView;
    self->_snapshotAllExceptFloatingImageView = 0;
  }

  snapshotFloatingImageView = self->_snapshotFloatingImageView;
  if (snapshotFloatingImageView)
  {
    [(UIImageView *)snapshotFloatingImageView removeFromSuperview];
    v9 = self->_snapshotFloatingImageView;
    self->_snapshotFloatingImageView = 0;
  }
}

- (id)_providerBundleIdentifier
{
  _path = [(PFPosterContents *)self->_posterContents _path];
  serverIdentity = [_path serverIdentity];
  provider = [serverIdentity provider];

  return provider;
}

- (id)_currentAppearance
{
  [(PRUISPosterRenderingViewController *)self _loadTitleStyleConfigurationIfNeeded];
  if (self->_titleStyleConfiguration)
  {
    _path = [(PFPosterContents *)self->_posterContents _path];
    serverIdentity = [_path serverIdentity];
    provider = [serverIdentity provider];

    if (provider)
    {
      v6 = [objc_alloc(MEMORY[0x1E69635D0]) initWithBundleIdentifier:provider error:0];
      v7 = [v6 URL];
    }

    else
    {
      v9 = PRUISLogRendering();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [(PRUISPosterRenderingViewController *)self _currentAppearance];
      }

      v7 = 0;
    }

    role = [(PFPosterContents *)self->_posterContents role];
    if (v7)
    {
      v11 = [(PRPosterTitleStyleConfiguration *)self->_titleStyleConfiguration effectiveTimeFontWithExtensionBundleURL:v7 forRole:role];
    }

    else
    {
      v12 = PRUISLogRendering();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [(PRUISPosterRenderingViewController *)self _currentAppearance];
      }

      v11 = [MEMORY[0x1E69C5340] defaultTitleFontForRole:role];
    }

    v13 = v11;

    v14 = [v13 fontWithSize:84.0];

    v15 = objc_alloc(MEMORY[0x1E69C52D0]);
    v16 = objc_alloc(MEMORY[0x1E69C52D8]);
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    v18 = [v16 initWithColor:whiteColor];
    v8 = [v15 initWithFont:v14 labelColor:v18 preferredTitleAlignment:-[PRPosterTitleStyleConfiguration preferredTitleAlignment](self->_titleStyleConfiguration preferredTitleLayout:{"preferredTitleAlignment"), -[PRPosterTitleStyleConfiguration preferredTitleLayout](self->_titleStyleConfiguration, "preferredTitleLayout")}];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_obscurableContentView
{
  _contentViewCoordinator = [(PRUISPosterRenderingViewController *)self _contentViewCoordinator];
  obscurableContentView = [_contentViewCoordinator obscurableContentView];

  return obscurableContentView;
}

- (id)_updateContentStyleWithAppearance:(id)appearance
{
  appearanceCopy = appearance;
  _contentViewCoordinator = [(PRUISPosterRenderingViewController *)self _contentViewCoordinator];
  titleStyleConfiguration = self->_titleStyleConfiguration;
  role = [(PFPosterContents *)self->_posterContents role];
  v8 = [(PRPosterTitleStyleConfiguration *)titleStyleConfiguration effectiveTitleContentStyleForRole:role];
  v9 = [_contentViewCoordinator updateContentViewsWithContentStyle:v8 initialAppearance:appearanceCopy];

  return v9;
}

- (void)_loadTitleStyleConfigurationIfNeeded
{
  if (!self->_titleStyleConfiguration)
  {
    configuration = [(PRUISPosterRenderingViewController *)self configuration];
    v3 = [configuration pr_loadTitleStyleConfigurationWithError:0];
    v4 = v3;
    if (v3)
    {
      v5 = v3;
    }

    else
    {
      v5 = objc_alloc_init(MEMORY[0x1E69C5340]);
    }

    titleStyleConfiguration = self->_titleStyleConfiguration;
    self->_titleStyleConfiguration = v5;
  }
}

- (void)_createPosterScene
{
  OUTLINED_FUNCTION_2_0();
  v1 = objc_opt_class();
  v2 = NSStringFromClass(v1);
  pf_description = [v0 pf_description];
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x20u);
}

- (void)_teardownPosterScene
{
  if (self->_shouldRelinquishExtensionInstanceOnSceneTeardown && self->_extensionInstance)
  {
    _extensionProvider = [(PRUISPosterRenderingViewController *)self _extensionProvider];
    instancePool = [_extensionProvider instancePool];
    [instancePool relinquishExtensionInstance:self->_extensionInstance];

    extensionInstance = self->_extensionInstance;
    self->_extensionInstance = 0;
  }

  [(FBScene *)self->_scene pui_invalidateWithCompletion:0];
  scene = self->_scene;
  self->_scene = 0;

  [(UIView *)self->_sceneView removeFromSuperview];
  sceneView = self->_sceneView;
  self->_sceneView = 0;

  [(UIView *)self->_floatingSceneView removeFromSuperview];
  floatingSceneView = self->_floatingSceneView;
  self->_floatingSceneView = 0;

  [(UIScenePresenter *)self->_scenePresenter invalidate];
  scenePresenter = self->_scenePresenter;
  self->_scenePresenter = 0;

  [(UIScenePresenter *)self->_floatingPresenter invalidate];
  floatingPresenter = self->_floatingPresenter;
  self->_floatingPresenter = 0;
}

- (void)_updateBackgroundSceneToSize:(CGSize)size orientation:(int64_t)orientation withAnimationSettings:(id)settings
{
  v7 = [(PRUISPosterRenderingViewController *)self _screen:orientation];
  v8 = v7;
  if (v7)
  {
    mainScreen = v7;
  }

  else
  {
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  }

  v10 = mainScreen;

  displayConfiguration = [v10 displayConfiguration];
  [displayConfiguration bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  view = [(PRUISPosterRenderingViewController *)self view];
  [view bounds];

  v56 = v10;
  if ((BSSizeEqualToSize() & 1) == 0)
  {
    BSSizeSwap();
    if ((BSSizeEqualToSize() & 1) == 0)
    {
      PUIContentFrameForDisplayConfigurationAndOrientation();
      v13 = v21;
      v15 = v22;
      v17 = v23;
      v19 = v24;
    }
  }

  _shouldSceneBeForeground = [(PRUISPosterRenderingViewController *)self _shouldSceneBeForeground];
  traitCollection = [(PRUISPosterRenderingViewController *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  v28 = [(PRUISPosterRenderingViewController *)self supportedInterfaceOrientations]!= 2;
  boundingShape = [(PRUISPosterRenderingViewController *)self boundingShape];
  if ([(PRUISPosterRenderingViewController *)self renderingMode]== 2)
  {
    v30 = 0;
  }

  else
  {
    v30 = -50;
  }

  size = self->_salientContentRectangle.size;
  origin = self->_salientContentRectangle.origin;
  sizeCopy = size;
  scene = self->_scene;
  v57[0] = MEMORY[0x1E69E9820];
  v57[1] = 3221225472;
  v57[2] = __101__PRUISPosterRenderingViewController__updateBackgroundSceneToSize_orientation_withAnimationSettings___block_invoke;
  v57[3] = &unk_1E83A7DE8;
  v69 = _shouldSceneBeForeground;
  v33 = displayConfiguration;
  v63 = origin;
  orientationCopy = orientation;
  v61 = userInterfaceStyle;
  v70 = v28;
  v62 = boundingShape;
  v71 = v30;
  v64 = sizeCopy;
  v65 = v13;
  v66 = v15;
  v67 = v17;
  v68 = v19;
  v58 = v33;
  selfCopy = self;
  [(FBScene *)scene performUpdate:v57];
  if (!self->_scenePresenter)
  {
    viewIfLoaded = [(PRUISPosterRenderingViewController *)self viewIfLoaded];
    window = [viewIfLoaded window];

    if (window)
    {
      uiPresentationManager = [(FBScene *)self->_scene uiPresentationManager];
      v37 = objc_opt_class();
      v38 = NSStringFromClass(v37);
      v39 = [uiPresentationManager createPresenterWithIdentifier:v38];
      scenePresenter = self->_scenePresenter;
      self->_scenePresenter = v39;

      v41 = self->_scenePresenter;
      _presentationContextModifier = [(PRUISPosterRenderingViewController *)self _presentationContextModifier];
      [(UIScenePresenter *)v41 modifyPresentationContext:_presentationContextModifier];

      [(UIScenePresenter *)self->_scenePresenter activate];
      presentationView = [(UIScenePresenter *)self->_scenePresenter presentationView];
      sceneView = self->_sceneView;
      self->_sceneView = presentationView;

      v45 = self->_sceneView;
      BSRectWithSize();
      [(UIView *)v45 setFrame:?];
      [(UIView *)self->_sceneView setTranslatesAutoresizingMaskIntoConstraints:0];
      v46 = 1.0;
      if (self->_sceneContentHidden)
      {
        v46 = 0.0;
      }

      [(UIView *)self->_sceneView setAlpha:v46];
      snapshotAllExceptFloatingImageView = self->_snapshotAllExceptFloatingImageView;
      view2 = [(PRUISPosterRenderingViewController *)self view];
      view3 = view2;
      v50 = self->_sceneView;
      if (snapshotAllExceptFloatingImageView)
      {
        [view2 insertSubview:v50 aboveSubview:self->_snapshotAllExceptFloatingImageView];
      }

      else
      {
        [view2 addSubview:v50];

        view3 = [(PRUISPosterRenderingViewController *)self view];
        [view3 sendSubviewToBack:self->_sceneView];
      }
    }
  }

  if (DEBUG_RENDERING_MODE_onceToken != -1)
  {
    [PRUISPosterRenderingViewController _buildSnapshotImageViewsFromBundle:];
  }

  if (DEBUG_RENDERING_MODE___debugRenderingMode == 1 && self->_sceneView)
  {
    renderingMode = self->_renderingMode;
    if (renderingMode == 2)
    {
      greenColor = [MEMORY[0x1E69DC888] greenColor];
      goto LABEL_26;
    }

    if (renderingMode != 3)
    {
      greenColor = [MEMORY[0x1E69DC888] orangeColor];
LABEL_26:
      v53 = greenColor;
      layer = [(UIView *)self->_sceneView layer];
      [layer setBorderWidth:5.0];

      layer2 = [(UIView *)self->_sceneView layer];
      [layer2 setBorderColor:{objc_msgSend(v53, "CGColor")}];
    }
  }
}

void __101__PRUISPosterRenderingViewController__updateBackgroundSceneToSize_orientation_withAnimationSettings___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = a2;
  v5 = a3;
  [v17 setForeground:*(a1 + 136)];
  [v17 setDisplayConfiguration:*(a1 + 32)];
  [v17 pui_setDeviceOrientation:*(a1 + 48)];
  [v17 pui_setUserInterfaceStyle:*(a1 + 56)];
  [v17 pr_setAppliesCountertransformForRotation:*(a1 + 137)];
  [v17 pui_setPosterBoundingShape:*(a1 + 64)];
  [v17 setActivityMode:*(a1 + 138)];
  [v17 pui_setSalientContentRectangle:{*(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96)}];
  v6 = [v17 interfaceOrientation];
  v7 = *(a1 + 48);
  v8 = v6 == v7 || v7 == 0;
  v9 = !v8;
  if (!v8)
  {
    [v17 setInterfaceOrientation:?];
  }

  [v17 frame];
  if (CGRectEqualToRect(v19, *(a1 + 104)))
  {
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  else
  {
    [v17 setFrame:{*(a1 + 104), *(a1 + 112), *(a1 + 120), *(a1 + 128)}];
  }

  v10 = [*(a1 + 40) viewIfLoaded];
  v11 = [v10 window];
  v12 = [v11 windowScene];

  if (v5 && [*(*(a1 + 40) + 1032) isActive] && v12)
  {
    v13 = [v12 _synchronizedDrawingFence];
    [MEMORY[0x1E69DD250] inheritedAnimationDuration];
    v15 = v14;
    [v12 _synchronizeDrawing];
    [v5 setAnimationFence:v13];
    v16 = [MEMORY[0x1E698E608] settingsWithDuration:v15];
    [v5 setAnimationSettings:v16];
  }

LABEL_18:
}

- (void)_updateFloatingLayer
{
  v37 = *MEMORY[0x1E69E9840];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  layerManager = [(FBScene *)self->_scene layerManager];
  layers = [layerManager layers];

  v5 = [layers countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v5)
  {
    v6 = *MEMORY[0x1E69C5390];
    v7 = *v33;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v33 != v7)
        {
          objc_enumerationMutation(layers);
        }

        v9 = *(*(&v32 + 1) + 8 * i);
        [v9 level];
        v11 = v10;
        if ([v9 type] == 1 && v11 == v6)
        {
          LODWORD(v5) = [v9 contextID];
          goto LABEL_14;
        }
      }

      v5 = [layers countByEnumeratingWithState:&v32 objects:v36 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:

  if (v5 != self->_floatingContextID)
  {
    self->_floatingContextID = v5;
    [(UIScenePresenter *)self->_floatingPresenter invalidate];
    floatingPresenter = self->_floatingPresenter;
    self->_floatingPresenter = 0;

    if (self->_floatingContextID)
    {
      v14 = MEMORY[0x1E696AEC0];
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      v17 = [v14 stringWithFormat:@"%@-floating", v16];

      v18 = [MEMORY[0x1E69DCE98] targetForContextID:self->_floatingContextID];
      uiPresentationManager = [(FBScene *)self->_scene uiPresentationManager];
      v20 = [uiPresentationManager createPresenterForLayerTarget:v18 identifier:v17 priority:100];
      v21 = self->_floatingPresenter;
      self->_floatingPresenter = v20;

      [(UIScenePresenter *)self->_floatingPresenter modifyPresentationContext:&__block_literal_global_156];
      [(UIScenePresenter *)self->_floatingPresenter activate];
      [(PRUISPosterRenderingViewController *)self renderingMetrics];
      presentationView = [(UIScenePresenter *)self->_floatingPresenter presentationView];
      floatingSceneView = self->_floatingSceneView;
      self->_floatingSceneView = presentationView;

      [(UIView *)self->_floatingSceneView setFrame:0, 0];
      v24 = 1.0;
      if (self->_sceneContentHidden)
      {
        v24 = 0.0;
      }

      [(UIView *)self->_floatingSceneView setAlpha:v24];
      if ([(PRUISPosterRenderingViewController *)self isViewLoaded])
      {
        _contentViewCoordinator = [(PRUISPosterRenderingViewController *)self _contentViewCoordinator];
        obscurableContentView = [_contentViewCoordinator obscurableContentView];

        if (obscurableContentView)
        {
          snapshotAllExceptFloatingImageView = self->_snapshotAllExceptFloatingImageView;
          view = [(PRUISPosterRenderingViewController *)self view];
          v29 = view;
          v30 = self->_floatingSceneView;
          if (snapshotAllExceptFloatingImageView)
          {
            sceneView = self->_snapshotAllExceptFloatingImageView;
          }

          else
          {
            sceneView = obscurableContentView;
          }
        }

        else
        {
          view = [(PRUISPosterRenderingViewController *)self view];
          v29 = view;
          v30 = self->_floatingSceneView;
          sceneView = self->_sceneView;
        }

        [view insertSubview:v30 aboveSubview:sceneView];
      }
    }
  }
}

void __58__PRUISPosterRenderingViewController__updateFloatingLayer__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setAppearanceStyle:2];
  [v2 setClippingDisabled:1];
}

- (BOOL)_isSceneContentReady
{
  scene = self->_scene;
  if (scene)
  {
    clientSettings = [(FBScene *)scene clientSettings];
    pui_didFinishInitialization = [clientSettings pui_didFinishInitialization];

    if (pui_didFinishInitialization)
    {
      LOBYTE(scene) = [(FBScene *)self->_scene contentState]== 2;
    }

    else
    {
      LOBYTE(scene) = 0;
    }
  }

  return scene;
}

- (void)_sceneContentReadinessDidChange
{
  _isSceneContentReady = [(PRUISPosterRenderingViewController *)self _isSceneContentReady];
  if ([(PRUISPosterRenderingViewController *)self showsContentWhenReady])
  {
    objc_initWeak(&location, self);
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __69__PRUISPosterRenderingViewController__sceneContentReadinessDidChange__block_invoke;
    v4[3] = &unk_1E83A7E10;
    objc_copyWeak(&v5, &location);
    v6 = _isSceneContentReady;
    [(PRUISPosterRenderingViewController *)self _setSceneContentHidden:_isSceneContentReady ^ 1 animated:_isSceneContentReady completion:v4];
    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }

  else if (_isSceneContentReady)
  {

    [(PRUISPosterRenderingViewController *)self _teardownSnapshotImageViews];
  }
}

void __69__PRUISPosterRenderingViewController__sceneContentReadinessDidChange__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && *(a1 + 40) == 1)
  {
    v4 = WeakRetained;
    [WeakRetained _teardownSnapshotImageViews];
    v3 = [v4 delegate];
    if (objc_opt_respondsToSelector())
    {
      [v3 renderingViewControllerDidFinishShowingContent:v4];
    }

    WeakRetained = v4;
  }
}

- (void)_setSceneContentHidden:(BOOL)hidden animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  hiddenCopy = hidden;
  completionCopy = completion;
  if (animatedCopy)
  {
    v8 = [MEMORY[0x1E698E608] settingsWithDuration:0.25];
  }

  else
  {
    v8 = 0;
  }

  [(PRUISPosterRenderingViewController *)self _setSceneContentHidden:hiddenCopy animationSettings:v8 completion:completionCopy];
}

- (void)_setSceneContentHidden:(BOOL)hidden animationSettings:(id)settings completion:(id)completion
{
  hiddenCopy = hidden;
  settingsCopy = settings;
  completionCopy = completion;
  if (self->_sceneContentHidden != hiddenCopy)
  {
    self->_sceneContentHidden = hiddenCopy;
    viewIfLoaded = [(PRUISPosterRenderingViewController *)self viewIfLoaded];
    if (viewIfLoaded)
    {
      v11 = viewIfLoaded;
      v12 = objc_opt_new();
      v13 = v12;
      snapshotAllExceptFloatingImageView = self->_snapshotAllExceptFloatingImageView;
      if (hiddenCopy)
      {
        if (!snapshotAllExceptFloatingImageView && !self->_snapshotFloatingImageView)
        {
          v16 = v11;
          goto LABEL_9;
        }

        [v12 bs_safeAddObject:self->_sceneView];
        v15 = 1048;
      }

      else
      {
        [v12 bs_safeAddObject:snapshotAllExceptFloatingImageView];
        v15 = 1120;
      }

      v16 = *(&self->super.super.super.isa + v15);
      v12 = v13;
LABEL_9:
      [v12 bs_safeAddObject:v16];
      v17 = MEMORY[0x1E695DFA8];
      subviews = [v11 subviews];
      v19 = [v17 setWithArray:subviews];

      [v19 bs_safeAddObject:v11];
      v20 = [MEMORY[0x1E695DFD8] setWithArray:v13];
      [v19 minusSet:v20];

      v21 = MEMORY[0x1E698E7D0];
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __90__PRUISPosterRenderingViewController__setSceneContentHidden_animationSettings_completion___block_invoke;
      v27[3] = &unk_1E83A72F8;
      v28 = v19;
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __90__PRUISPosterRenderingViewController__setSceneContentHidden_animationSettings_completion___block_invoke_3;
      v24[3] = &unk_1E83A7E58;
      v25 = v13;
      v26 = completionCopy;
      v22 = v13;
      v23 = v19;
      [v21 animateWithSettings:settingsCopy actions:v27 completion:v24];
    }
  }
}

uint64_t __90__PRUISPosterRenderingViewController__setSceneContentHidden_animationSettings_completion___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) bs_each:&__block_literal_global_167];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)_updateEffectiveMotionEffectsModeWithMode:(unint64_t)mode
{
  settings = [(FBScene *)self->_scene settings];
  pr_effectiveMotionEffectsMode = [settings pr_effectiveMotionEffectsMode];

  if (pr_effectiveMotionEffectsMode != mode)
  {
    scene = self->_scene;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __80__PRUISPosterRenderingViewController__updateEffectiveMotionEffectsModeWithMode___block_invoke;
    v8[3] = &__block_descriptor_40_e33_v16__0__FBSMutableSceneSettings_8l;
    v8[4] = mode;
    [(FBScene *)scene updateSettings:v8];
  }
}

- (uint64_t)updateMotionWithRotation:(_OWORD *)rotation
{
  v3 = *(self + 1192);
  v4 = rotation[1];
  v6[0] = *rotation;
  v6[1] = v4;
  return [v3 updateMotionWithRotation:v6];
}

- (void)scene:(id)scene willUpdateSettings:(id)settings withTransitionContext:(id)context
{
  settingsCopy = settings;
  contextCopy = context;
  v8 = PRUISLogRendering();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [PRUISPosterRenderingViewController scene:willUpdateSettings:withTransitionContext:];
  }
}

- (void)scene:(id)scene didReceiveActions:(id)actions
{
  v21 = *MEMORY[0x1E69E9840];
  sceneCopy = scene;
  actionsCopy = actions;
  v8 = PRUISLogRendering();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    identityToken = [sceneCopy identityToken];
    stringRepresentation = [identityToken stringRepresentation];
    v13 = 138544130;
    v14 = v10;
    v15 = 2050;
    selfCopy = self;
    v17 = 2112;
    v18 = stringRepresentation;
    v19 = 2112;
    v20 = actionsCopy;
    _os_log_impl(&dword_1CAE63000, v8, OS_LOG_TYPE_DEFAULT, "<%{public}@:%{public}p> scene %@ did receive actions %@", &v13, 0x2Au);
  }
}

- (void)sceneContentStateDidChange:(id)change
{
  v19 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  v5 = PRUISLogRendering();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    identityToken = [changeCopy identityToken];
    stringRepresentation = [identityToken stringRepresentation];
    [changeCopy contentState];
    v10 = NSStringFromFBSceneContentState();
    v11 = 138544130;
    v12 = v7;
    v13 = 2050;
    selfCopy = self;
    v15 = 2112;
    v16 = stringRepresentation;
    v17 = 2112;
    v18 = v10;
    _os_log_impl(&dword_1CAE63000, v5, OS_LOG_TYPE_DEFAULT, "<%{public}@:%{public}p> scene %@ did change content state to %@", &v11, 0x2Au);
  }

  [(PRUISPosterRenderingViewController *)self _sceneContentReadinessDidChange];
}

- (void)sceneDidActivate:(id)activate
{
  v16 = *MEMORY[0x1E69E9840];
  activateCopy = activate;
  v5 = PRUISLogRendering();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    identityToken = [activateCopy identityToken];
    stringRepresentation = [identityToken stringRepresentation];
    v10 = 138543874;
    v11 = v7;
    v12 = 2050;
    selfCopy = self;
    v14 = 2112;
    v15 = stringRepresentation;
    _os_log_impl(&dword_1CAE63000, v5, OS_LOG_TYPE_DEFAULT, "<%{public}@:%{public}p> scene %@ did activate", &v10, 0x20u);
  }
}

- (void)scene:(id)scene clientDidConnect:(id)connect
{
  sceneCopy = scene;
  settings = [(FBScene *)self->_scene settings];
  pr_posterConfiguredProperties = [settings pr_posterConfiguredProperties];

  renderingConfiguration = [pr_posterConfiguredProperties renderingConfiguration];
  isDepthEffectDisabled = [renderingConfiguration isDepthEffectDisabled];

  renderingConfiguration2 = [pr_posterConfiguredProperties renderingConfiguration];
  areMotionEffectsDisabled = [renderingConfiguration2 areMotionEffectsDisabled];

  if (areMotionEffectsDisabled)
  {
    pr_supportedMotionEffectsMode = 0;
  }

  else
  {
    clientSettings = [sceneCopy clientSettings];
    pr_supportedMotionEffectsMode = [clientSettings pr_supportedMotionEffectsMode];
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __61__PRUISPosterRenderingViewController_scene_clientDidConnect___block_invoke;
  v14[3] = &__block_descriptor_41_e33_v16__0__FBSMutableSceneSettings_8l;
  v15 = isDepthEffectDisabled;
  v14[4] = pr_supportedMotionEffectsMode;
  [sceneCopy updateSettings:v14];
}

void __61__PRUISPosterRenderingViewController_scene_clientDidConnect___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  [v4 pr_setDepthEffectDisallowed:v3];
  [v4 pr_setEffectiveMotionEffectsMode:*(a1 + 32)];
}

- (void)sceneDidDeactivate:(id)deactivate withError:(id)error
{
  v36 = *MEMORY[0x1E69E9840];
  deactivateCopy = deactivate;
  errorCopy = error;
  domain = [errorCopy domain];
  if ([domain isEqualToString:*MEMORY[0x1E699F798]])
  {
    code = [errorCopy code];

    if (code == 1)
    {
      pf_jetsamReason = PRUISLogRendering();
      if (os_log_type_enabled(pf_jetsamReason, OS_LOG_TYPE_ERROR))
      {
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        identityToken = [deactivateCopy identityToken];
        stringRepresentation = [identityToken stringRepresentation];
        v28 = 138544130;
        v29 = v12;
        v30 = 2050;
        selfCopy4 = self;
        v32 = 2112;
        v33 = stringRepresentation;
        v34 = 2112;
        v35 = errorCopy;
        _os_log_error_impl(&dword_1CAE63000, pf_jetsamReason, OS_LOG_TYPE_ERROR, "<%{public}@:%{public}p> scene %@ did deactivate with fatal error %@", &v28, 0x2Au);
      }

      goto LABEL_15;
    }
  }

  else
  {
  }

  pf_jetsamReason = [errorCopy pf_jetsamReason];
  if (!pf_jetsamReason)
  {
    v16 = PRUISLogRendering();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v23 = objc_opt_class();
      v19 = NSStringFromClass(v23);
      identityToken2 = [deactivateCopy identityToken];
      stringRepresentation2 = [identityToken2 stringRepresentation];
      v28 = 138544130;
      v29 = v19;
      v30 = 2050;
      selfCopy4 = self;
      v32 = 2112;
      v33 = stringRepresentation2;
      v34 = 2112;
      v35 = errorCopy;
      v22 = "<%{public}@:%{public}p> scene %@ did deactivate with transient error %@";
      goto LABEL_17;
    }

LABEL_11:

    [(PRUISPosterRenderingViewController *)self _updateBackgroundScene];
    goto LABEL_15;
  }

  allowEvent = [(PFDebounceFilter *)self->_jetsamDebounceFilter allowEvent];
  v16 = PRUISLogRendering();
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
  if (allowEvent)
  {
    if (v17)
    {
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      identityToken2 = [deactivateCopy identityToken];
      stringRepresentation2 = [identityToken2 stringRepresentation];
      v28 = 138544130;
      v29 = v19;
      v30 = 2050;
      selfCopy4 = self;
      v32 = 2112;
      v33 = stringRepresentation2;
      v34 = 2112;
      v35 = pf_jetsamReason;
      v22 = "<%{public}@:%{public}p> scene %@ did deactivate with jetsam error with reason %@. Trying to activate live again.";
LABEL_17:
      _os_log_error_impl(&dword_1CAE63000, v16, OS_LOG_TYPE_ERROR, v22, &v28, 0x2Au);

      goto LABEL_11;
    }

    goto LABEL_11;
  }

  if (v17)
  {
    v24 = objc_opt_class();
    v25 = NSStringFromClass(v24);
    identityToken3 = [deactivateCopy identityToken];
    stringRepresentation3 = [identityToken3 stringRepresentation];
    v28 = 138544130;
    v29 = v25;
    v30 = 2050;
    selfCopy4 = self;
    v32 = 2112;
    v33 = stringRepresentation3;
    v34 = 2112;
    v35 = pf_jetsamReason;
    _os_log_error_impl(&dword_1CAE63000, v16, OS_LOG_TYPE_ERROR, "<%{public}@:%{public}p> scene %@ did deactivate with jetsam error with reason %@. Transitioning to snapshot.", &v28, 0x2Au);
  }

  [(PRUISPosterRenderingViewController *)self _setRenderingMode:3 canUseInitialSnapshotBundle:1];
LABEL_15:
}

- (void)scene:(id)scene didUpdateClientSettingsWithDiff:(id)diff oldClientSettings:(id)settings transitionContext:(id)context
{
  v48 = *MEMORY[0x1E69E9840];
  sceneCopy = scene;
  diffCopy = diff;
  contextCopy = context;
  v12 = PRUISLogRendering();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v30 = objc_opt_class();
    v31 = NSStringFromClass(v30);
    identityToken = [sceneCopy identityToken];
    stringRepresentation = [identityToken stringRepresentation];
    *buf = 138544386;
    v39 = v31;
    v40 = 2050;
    selfCopy = self;
    v42 = 2112;
    v43 = stringRepresentation;
    v44 = 2112;
    v45 = diffCopy;
    v46 = 2112;
    v47 = contextCopy;
    _os_log_debug_impl(&dword_1CAE63000, v12, OS_LOG_TYPE_DEBUG, "<%{public}@:%{public}p> scene %@ did update client settings with diff %@, transition %@", buf, 0x34u);
  }

  v13 = objc_alloc_init(MEMORY[0x1E699FBF0]);
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __112__PRUISPosterRenderingViewController_scene_didUpdateClientSettingsWithDiff_oldClientSettings_transitionContext___block_invoke;
  v37[3] = &unk_1E83A7928;
  v37[4] = self;
  [v13 observeLayersWithBlock:v37];
  [v13 inspectDiff:diffCopy withContext:{objc_msgSend(sceneCopy, "clientSettings")}];
  [v13 removeAllObservers];
  settings = [(FBScene *)self->_scene settings];
  pr_posterConfiguredProperties = [settings pr_posterConfiguredProperties];

  renderingConfiguration = [pr_posterConfiguredProperties renderingConfiguration];
  areMotionEffectsDisabled = [renderingConfiguration areMotionEffectsDisabled];

  if ((areMotionEffectsDisabled & 1) == 0)
  {
    if ([diffCopy pr_supportedMotionEffectsModeDidChange])
    {
      clientSettings = [sceneCopy clientSettings];
      pr_supportedMotionEffectsMode = [clientSettings pr_supportedMotionEffectsMode];

      [(PRUISPosterRenderingViewController *)self _updateEffectiveMotionEffectsModeWithMode:pr_supportedMotionEffectsMode];
    }

    if ([diffCopy pr_deviceMotionEventsRequestedDidChange])
    {
      clientSettings2 = [sceneCopy clientSettings];
      pr_deviceMotionEventsRequested = [clientSettings2 pr_deviceMotionEventsRequested];

      if (self->_hostHasRequestedMotionEvents && pr_deviceMotionEventsRequested)
      {
        [(PRUISPosterRenderingViewController *)self startGeneratingMotionEvents];
      }

      else
      {
        [(PRUISPosterRenderingViewController *)self stopGeneratingMotionEvents];
      }
    }

    if ([diffCopy pr_preferredDeviceMotionUpdateIntervalDidChange])
    {
      clientSettings3 = [sceneCopy clientSettings];
      [clientSettings3 pr_preferredDeviceMotionUpdateInterval];
      v24 = v23;

      motionEventsDelegate = [(PRUISPosterRenderingViewController *)self motionEventsDelegate];
      if (objc_opt_respondsToSelector())
      {
        [motionEventsDelegate posterMotionEventsController:self preferredDeviceMotionUpdateIntervalDidChange:v24];
      }
    }
  }

  if ([diffCopy pui_salientContentRectangleUpdatesRequestedDidChange])
  {
    clientSettings4 = [sceneCopy clientSettings];
    pui_salientContentRectangleUpdatesRequested = [clientSettings4 pui_salientContentRectangleUpdatesRequested];
  }

  else
  {
    pui_salientContentRectangleUpdatesRequested = 0;
  }

  if ([diffCopy pui_contentOcclusionRectangleUpdatesRequestedDidChange])
  {
    clientSettings5 = [sceneCopy clientSettings];
    pui_contentOcclusionRectangleUpdatesRequested = [clientSettings5 pui_contentOcclusionRectangleUpdatesRequested];

    if (pui_salientContentRectangleUpdatesRequested)
    {
      goto LABEL_23;
    }
  }

  else
  {
    pui_contentOcclusionRectangleUpdatesRequested = 0;
    if (pui_salientContentRectangleUpdatesRequested)
    {
LABEL_23:
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __112__PRUISPosterRenderingViewController_scene_didUpdateClientSettingsWithDiff_oldClientSettings_transitionContext___block_invoke_2;
      v34[3] = &unk_1E83A7EA0;
      v35 = pui_salientContentRectangleUpdatesRequested;
      v34[4] = self;
      v36 = pui_contentOcclusionRectangleUpdatesRequested;
      [sceneCopy updateSettings:v34];
      goto LABEL_24;
    }
  }

  if (pui_contentOcclusionRectangleUpdatesRequested)
  {
    goto LABEL_23;
  }

LABEL_24:
}

void __112__PRUISPosterRenderingViewController_scene_didUpdateClientSettingsWithDiff_oldClientSettings_transitionContext___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = v3;
  if (*(a1 + 40) == 1)
  {
    [v3 pui_setSalientContentRectangle:{*(*(a1 + 32) + 1152), *(*(a1 + 32) + 1160), *(*(a1 + 32) + 1168), *(*(a1 + 32) + 1176)}];
    v3 = v7;
  }

  if (*(a1 + 41) == 1)
  {
    if (*(*(a1 + 32) + 1184))
    {
      v4 = objc_alloc(MEMORY[0x1E69C5580]);
      v5 = [*(*(a1 + 32) + 1184) allRects];
      v6 = [v4 initWithNameToRectMap:v5];
    }

    else
    {
      v6 = 0;
    }

    [v7 pui_setContentOcclusionRectangles:v6];

    v3 = v7;
  }
}

- (uint64_t)deviceMotionController:(uint64_t)controller didUpdateMotionWithRotation:(_OWORD *)rotation
{
  v4 = rotation[1];
  v6[0] = *rotation;
  v6[1] = v4;
  return [self updateMotionWithRotation:v6];
}

- (id)executeSceneSnapshotForDefinition:(id)definition options:(unint64_t)options
{
  optionsCopy = options;
  definitionCopy = definition;
  scene = [(PRUISPosterRenderingViewController *)self scene];
  if (([scene isValid] & 1) == 0)
  {
    v12 = MEMORY[0x1E69C5258];
    v13 = PFFunctionNameForAddress();
    v14 = PFGeneralErrorFromObjectWithLocalizedFailureReason();
    v15 = [v12 futureWithError:{v14, 0}];

    goto LABEL_21;
  }

  v8 = MEMORY[0x1E698E620];
  clientHandle = [scene clientHandle];
  processHandle = [clientHandle processHandle];
  v11 = processHandle;
  if (processHandle)
  {
    [processHandle auditToken];
  }

  else
  {
    memset(v31, 0, sizeof(v31));
  }

  v13 = [v8 tokenFromAuditToken:v31];

  if ((optionsCopy & 2) != 0)
  {
    cache = [(PRUISPosterSnapshotController *)self->_snapshotController cache];
    if ((objc_opt_respondsToSelector() & 1) != 0 && (v17 = [cache performSelector:sel_underlyingCache]) != 0)
    {
      v18 = v17;
      v19 = [MEMORY[0x1E69C55E0] destinationForCache:v17 clientAuditToken:v13 error:0];

      if (v19)
      {
        goto LABEL_14;
      }
    }

    else
    {
    }
  }

  v30 = 0;
  v19 = [MEMORY[0x1E69C55E0] destinationWithTemporaryDirectoryWithAuditToken:v13 error:&v30];
  v20 = v30;
  if (!v20)
  {
LABEL_14:
    if (definitionCopy)
    {
      levelSets = [definitionCopy levelSets];
      v23 = [levelSets bs_map:&__block_literal_global_192];

      v24 = objc_alloc(MEMORY[0x1E69C55F0]);
      uniqueIdentifier = [definitionCopy uniqueIdentifier];
      v26 = [v24 initWithLevelSets:v23 snapshotDefinitionIdentifier:uniqueIdentifier];

      if (v26)
      {
        v21 = [objc_alloc(MEMORY[0x1E69C55D8]) initWithOutputDescriptor:v26 sceneDescriptor:0 attachments:0 analysis:0];
LABEL_19:
        scene2 = [(PRUISPosterRenderingViewController *)self scene];
        v28 = [scene2 pui_executeSnapshotForDescriptor:v21 outputDestination:v19];
        v15 = [v28 flatMap:&__block_literal_global_197];

        goto LABEL_20;
      }
    }

    else
    {
      v26 = 0;
    }

    v21 = 0;
    goto LABEL_19;
  }

  v21 = v20;
  v15 = [MEMORY[0x1E69C5258] futureWithError:v20];
LABEL_20:

LABEL_21:

  return v15;
}

id __80__PRUISPosterRenderingViewController_executeSceneSnapshotForDefinition_options___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E69C5590];
  v3 = a2;
  v4 = [v2 alloc];
  v5 = [v3 levels];

  v6 = [v4 initWithSet:v5];

  return v6;
}

id __80__PRUISPosterRenderingViewController_executeSceneSnapshotForDefinition_options___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = MEMORY[0x1E69C5258];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __80__PRUISPosterRenderingViewController_executeSceneSnapshotForDefinition_options___block_invoke_3;
  v7[3] = &unk_1E83A7F08;
  v8 = v2;
  v4 = v2;
  v5 = [v3 futureWithBlock:v7];

  return v5;
}

- (BOOL)addEvent:(id)event outError:(id *)error
{
  v30 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  type = [eventCopy type];
  if ((PRRenderingEventTypeIsValid() & 1) == 0)
  {
    newAction = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid PRRenderingEventType: %@", type];
    v17 = PFFunctionNameForAddress();
    v15 = PFGeneralErrorFromObjectWithLocalizedFailureReason();

    v18 = PRUISLogRendering();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [PRUISPosterRenderingViewController addEvent:outError:];
    }

    goto LABEL_9;
  }

  clientSettings = [(FBScene *)self->_scene clientSettings];
  pr_requestedRenderingEventTypes = [clientSettings pr_requestedRenderingEventTypes];
  v10 = [pr_requestedRenderingEventTypes containsObject:type];

  if ((v10 & 1) == 0 && (PRRenderingEventTypeIsGrandfathered() & 1) == 0)
  {
    newAction = [MEMORY[0x1E696AEC0] stringWithFormat:@"Client has not requested to receive PRRenderingEvents of type: %@", type];
    v21 = PFFunctionNameForAddress();
    v15 = PFGeneralErrorFromObjectWithLocalizedFailureReason();

    v18 = PRUISLogRendering();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v22 = objc_opt_class();
      v23 = NSStringFromClass(v22);
      *buf = 138543874;
      v25 = v23;
      v26 = 2050;
      selfCopy2 = self;
      v28 = 2114;
      v29 = v15;
      _os_log_impl(&dword_1CAE63000, v18, OS_LOG_TYPE_DEFAULT, "<%{public}@:%{public}p> %{public}@", buf, 0x20u);
    }

LABEL_9:

    if (error)
    {
      v19 = v15;
      v16 = 0;
      *error = v15;
    }

    else
    {
      v16 = 0;
    }

    goto LABEL_12;
  }

  v11 = PRUISLogRendering();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    *buf = 138543874;
    v25 = v13;
    v26 = 2050;
    selfCopy2 = self;
    v28 = 2114;
    v29 = eventCopy;
    _os_log_impl(&dword_1CAE63000, v11, OS_LOG_TYPE_DEFAULT, "<%{public}@:%{public}p> adding PRRenderingEvent: %{public}@", buf, 0x20u);
  }

  newAction = [eventCopy newAction];
  v15 = [MEMORY[0x1E695DFD8] setWithObject:newAction];
  v16 = [(FBScene *)self->_scene pui_safelySendActions:v15 outError:error];
LABEL_12:

  return v16;
}

- (void)userTapEventOccurredWithLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  clientSettings = [(FBScene *)self->_scene clientSettings];
  pui_userTapEventsRequested = [clientSettings pui_userTapEventsRequested];
  v8 = MEMORY[0x1E69C53D0];
  if (pui_userTapEventsRequested)
  {

LABEL_4:
    v12 = PRUISLogRendering();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v23 = 0;
      _os_log_impl(&dword_1CAE63000, v12, OS_LOG_TYPE_DEFAULT, "Sending user tap event to client scene", v23, 2u);
    }

    v13 = [objc_alloc(MEMORY[0x1E69C5350]) initWithType:*v8 location:{x, y}];
    newAction = [v13 newAction];
    v15 = [MEMORY[0x1E695DFD8] setWithObject:newAction];
    [(FBScene *)self->_scene sendActions:v15];

    goto LABEL_9;
  }

  clientSettings2 = [(FBScene *)self->_scene clientSettings];
  pr_requestedRenderingEventTypes = [clientSettings2 pr_requestedRenderingEventTypes];
  v11 = [pr_requestedRenderingEventTypes containsObject:*v8];

  if (v11)
  {
    goto LABEL_4;
  }

  v13 = PRUISLogRendering();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    [(PRUISPosterRenderingViewController *)v13 userTapEventOccurredWithLocation:v16, v17, v18, v19, v20, v21, v22];
  }

LABEL_9:
}

- (void)addTransition:(id)transition
{
  v21 = *MEMORY[0x1E69E9840];
  transitionCopy = transition;
  type = [transitionCopy type];
  if ((PRRenderingTransitionTypeIsValid() & 1) == 0)
  {
    v9 = PRUISLogRendering();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [PRUISPosterRenderingViewController addTransition:];
    }

    goto LABEL_10;
  }

  clientSettings = [(FBScene *)self->_scene clientSettings];
  pr_requestedRenderingTransitionTypes = [clientSettings pr_requestedRenderingTransitionTypes];
  v8 = [pr_requestedRenderingTransitionTypes containsObject:type];

  v9 = PRUISLogRendering();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if ((v8 & 1) == 0)
  {
    if (v10)
    {
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      v15 = 138543874;
      v16 = v14;
      v17 = 2050;
      selfCopy2 = self;
      v19 = 2114;
      v20 = type;
      _os_log_impl(&dword_1CAE63000, v9, OS_LOG_TYPE_DEFAULT, "<%{public}@:%{public}p> Client has not requested to receive PRRenderingTransitions of type: %{public}@", &v15, 0x20u);
    }

LABEL_10:

    goto LABEL_11;
  }

  if (v10)
  {
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v15 = 138543874;
    v16 = v12;
    v17 = 2050;
    selfCopy2 = self;
    v19 = 2114;
    v20 = transitionCopy;
    _os_log_impl(&dword_1CAE63000, v9, OS_LOG_TYPE_DEFAULT, "<%{public}@:%{public}p> adding PRRenderingTransition: %{public}@", &v15, 0x20u);
  }

  [transitionCopy addObserver:self];
LABEL_11:
}

- (void)_notifySceneOfTransitionState:(id)state
{
  stateCopy = state;
  v5 = PRUISLogRendering();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [PRUISPosterRenderingViewController _notifySceneOfTransitionState:];
  }

  scene = self->_scene;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __68__PRUISPosterRenderingViewController__notifySceneOfTransitionState___block_invoke;
  v8[3] = &unk_1E83A7260;
  v9 = stateCopy;
  v7 = stateCopy;
  [(FBScene *)scene performUpdate:v8];
}

void __68__PRUISPosterRenderingViewController__notifySceneOfTransitionState___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 type];
  v6 = SceneSettingForPRRenderingTransitionType();

  v7 = [v4 otherSettings];

  [v7 setObject:*(a1 + 32) forSetting:v6];
}

- (void)transitionDidBegin:(id)begin
{
  v15 = *MEMORY[0x1E69E9840];
  beginCopy = begin;
  v5 = PRUISLogRendering();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v9 = 138543874;
    v10 = v7;
    v11 = 2050;
    selfCopy = self;
    v13 = 2114;
    v14 = beginCopy;
    _os_log_impl(&dword_1CAE63000, v5, OS_LOG_TYPE_DEFAULT, "<%{public}@:%{public}p> transitionDidBegin: %{public}@", &v9, 0x20u);
  }

  v8 = [MEMORY[0x1E69C5368] stateFromTransition:beginCopy phase:0];
  [(PRUISPosterRenderingViewController *)self _notifySceneOfTransitionState:v8];
}

- (void)transitionDidUpdate:(id)update
{
  updateCopy = update;
  v5 = PRUISLogRendering();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [PRUISPosterRenderingViewController transitionDidUpdate:];
  }

  v6 = [MEMORY[0x1E69C5368] stateFromTransition:updateCopy phase:1];
  [(PRUISPosterRenderingViewController *)self _notifySceneOfTransitionState:v6];
}

- (void)transitionDidEnd:(id)end
{
  v15 = *MEMORY[0x1E69E9840];
  endCopy = end;
  v5 = PRUISLogRendering();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v9 = 138543874;
    v10 = v7;
    v11 = 2050;
    selfCopy = self;
    v13 = 2114;
    v14 = endCopy;
    _os_log_impl(&dword_1CAE63000, v5, OS_LOG_TYPE_DEFAULT, "<%{public}@:%{public}p> transitionDidEnd: %{public}@", &v9, 0x20u);
  }

  v8 = [MEMORY[0x1E69C5368] stateFromTransition:endCopy phase:2];
  [(PRUISPosterRenderingViewController *)self _notifySceneOfTransitionState:v8];
}

- (CGRect)salientContentRectangle
{
  x = self->_salientContentRectangle.origin.x;
  y = self->_salientContentRectangle.origin.y;
  width = self->_salientContentRectangle.size.width;
  height = self->_salientContentRectangle.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (PRUISPosterMotionEventsDelegate)motionEventsDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_motionEventsDelegate);

  return WeakRetained;
}

- (PRUISPosterRenderingViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UIView)obscurableContentView
{
  _contentViewCoordinator = [(PRUISPosterRenderingViewController *)self _contentViewCoordinator];
  vibrantObscurableContentView = [_contentViewCoordinator vibrantObscurableContentView];

  return vibrantObscurableContentView;
}

- (void)snapshotWithOptions:(unint64_t)options forScreen:(id)screen completionBlock:(id)block
{
  blockCopy = block;
  screenCopy = screen;
  _contentViewCoordinator = [(PRUISPosterRenderingViewController *)self _contentViewCoordinator];
  obscurableContentView = [_contentViewCoordinator obscurableContentView];
  [obscurableContentView removeFromSuperview];

  v13 = [(PRUISPosterRenderingViewController *)self _levelSetForSnapshotOptions:options];
  v12 = [(PRUISPosterRenderingViewController *)self _snapshotRequestForOptions:options screen:screenCopy levelSet:v13];

  [(PRUISPosterRenderingViewController *)self _snapshotWithRequest:v12 completionBlock:blockCopy];
}

- (id)_snapshotRequestForOptions:(unint64_t)options screen:(id)screen levelSet:(id)set
{
  v31[1] = *MEMORY[0x1E69E9840];
  setCopy = set;
  v9 = MEMORY[0x1E69C52E8];
  screenCopy = screen;
  v11 = [v9 alloc];
  _serverPath = [(PRUISPosterRenderingViewController *)self _serverPath];
  v13 = [v11 _initWithPath:_serverPath];

  role = [v13 role];
  v16 = v15 = role;

  v17 = PFPosterRoleSupportsComplications();
  v18 = objc_alloc(MEMORY[0x1E69C5338]);
  v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:options];
  stringValue = [v19 stringValue];
  v29 = setCopy;
  v31[0] = setCopy;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:1];
  v22 = [v18 initWithUniqueIdentifier:stringValue includeHeaderElements:1 includesComplications:v17 levelSets:v21 isUnlocked:0 renderingContent:0 renderingMode:1 previewContent:1 boundingShape:self->_boundingShape];

  v23 = [(PRUISPosterSnapshotRequest *)[PRUISMutablePosterSnapshotRequest alloc] initWithPoster:v13 definition:v22 interfaceOrientation:self->_activeOrientation];
  [(PRUISMutablePosterSnapshotRequest *)v23 setScreen:screenCopy];

  _obscurableContentView = [(PRUISPosterRenderingViewController *)self _obscurableContentView];
  if (_obscurableContentView)
  {
    v25 = [PRUISPosterAttachment attachmentWithView:_obscurableContentView level:*MEMORY[0x1E69C5390] - 1];
    v30 = v25;
    v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v30 count:1];
    [(PRUISMutablePosterSnapshotRequest *)v23 setAttachments:v26];
  }

  v27 = [(PRUISMutablePosterSnapshotRequest *)v23 copy];

  return v27;
}

- (id)_levelSetForSnapshotOptions:(unint64_t)options
{
  optionsCopy = options;
  if (options)
  {
    v6 = [PRUISPosterLevelSet alloc];
    v5 = [(PRUISPosterLevelSet *)v6 initWithLevel:*MEMORY[0x1E69C5390]];
  }

  else if ((options & 4) != 0)
  {
    v7 = [PRUISPosterLevelSet alloc];
    if ((optionsCopy & 2) != 0)
    {
      v5 = [(PRUISPosterLevelSet *)v7 initWithNumberOfLevels:2, *MEMORY[0x1E69C5390], *MEMORY[0x1E69C53A0], v9, v10];
    }

    else
    {
      v5 = [(PRUISPosterLevelSet *)v7 initWithNumberOfLevels:3, *MEMORY[0x1E69C5390], *MEMORY[0x1E69C53A0], *MEMORY[0x1E69C5390] - 1, v10];
    }
  }

  else if ((options & 2) != 0)
  {
    v5 = +[PRUISPosterLevelSet defaultLevelSet];
  }

  else
  {
    v4 = [PRUISPosterLevelSet alloc];
    v5 = [(PRUISPosterLevelSet *)v4 initWithNumberOfLevels:4, *MEMORY[0x1E69C5380], *MEMORY[0x1E69C53A0], *MEMORY[0x1E69C5390], *MEMORY[0x1E69C5390] - 1];
  }

  return v5;
}

- (void)_snapshotWithRequest:(id)request completionBlock:(id)block
{
  requestCopy = request;
  blockCopy = block;
  v8 = [(PRUISPosterRenderingViewController *)self _cachedImageForRequest:requestCopy];
  if (v8)
  {
    blockCopy[2](blockCopy, v8, 0);
  }

  else
  {
    v9 = PRUISLogRendering();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_1CAE63000, v9, OS_LOG_TYPE_DEFAULT, "Enqueuing snapshot request", v12, 2u);
    }

    enqueuedSnapshotRequests = self->_enqueuedSnapshotRequests;
    v11 = [[_PRUISPosterRenderingEnqueuedSnapshot alloc] initWithSnapshotRequest:requestCopy completionBlock:blockCopy];
    [(NSMutableArray *)enqueuedSnapshotRequests addObject:v11];

    [(PRUISPosterRenderingViewController *)self _beginExecutingSnapshotsIfNeeded];
  }
}

- (void)_beginExecutingSnapshotsIfNeeded
{
  if (!self->_isSnapshotting)
  {
    self->_isSnapshotting = 1;
    [(PRUISPosterRenderingViewController *)self _processNextSnapshot];
  }
}

- (void)_processNextSnapshot
{
  if ([(NSMutableArray *)self->_enqueuedSnapshotRequests count])
  {
    firstObject = [(NSMutableArray *)self->_enqueuedSnapshotRequests firstObject];
    [(NSMutableArray *)self->_enqueuedSnapshotRequests removeObject:firstObject];
    snapshotRequest = [firstObject snapshotRequest];
    v5 = [(PRUISPosterRenderingViewController *)self _cachedImageForRequest:snapshotRequest];
    if (v5)
    {
      completionBlock = [firstObject completionBlock];
      (completionBlock)[2](completionBlock, v5, 0);
    }

    else
    {
      v10 = PRUISLogRendering();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&dword_1CAE63000, v10, OS_LOG_TYPE_DEFAULT, "Executing snapshot request", buf, 2u);
      }

      objc_initWeak(buf, self);
      snapshotController = self->_snapshotController;
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __70__PRUISPosterRenderingViewController_Deprecated___processNextSnapshot__block_invoke;
      v13[3] = &unk_1E83A7F58;
      v14 = firstObject;
      objc_copyWeak(&v16, buf);
      selfCopy = self;
      [(PRUISPosterSnapshotController *)snapshotController executeSnapshotRequest:snapshotRequest completion:v13];
      objc_destroyWeak(&v16);

      objc_destroyWeak(buf);
    }
  }

  else
  {
    self->_isSnapshotting = 0;
    _obscurableContentView = [(PRUISPosterRenderingViewController *)self _obscurableContentView];
    superview = [_obscurableContentView superview];
    viewIfLoaded = [(PRUISPosterRenderingViewController *)self viewIfLoaded];

    if (superview != viewIfLoaded)
    {
      viewIfLoaded2 = [(PRUISPosterRenderingViewController *)self viewIfLoaded];
      [viewIfLoaded2 insertSubview:_obscurableContentView aboveSubview:self->_sceneView];
    }
  }
}

void __70__PRUISPosterRenderingViewController_Deprecated___processNextSnapshot__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a2;
  v9 = [a3 posterSnapshotBundle];
  v10 = [v8 definition];

  v11 = [v10 levelSets];
  v12 = [v11 firstObject];
  v13 = [v9 snapshotForLevelSet:v12];

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__PRUISPosterRenderingViewController_Deprecated___processNextSnapshot__block_invoke_2;
  block[3] = &unk_1E83A7F30;
  v17 = *(a1 + 32);
  v18 = v13;
  v19 = v7;
  v14 = v7;
  v15 = v13;
  objc_copyWeak(&v21, (a1 + 48));
  v20 = *(a1 + 40);
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v21);
}

void __70__PRUISPosterRenderingViewController_Deprecated___processNextSnapshot__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) completionBlock];
  v4 = v2;
  if (v2)
  {
    (*(v2 + 16))(v2, *(a1 + 40), *(a1 + 48));
  }

  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    [*(a1 + 56) _processNextSnapshot];
  }
}

- (id)_cachedImageForRequest:(id)request
{
  requestCopy = request;
  snapshotController = self->_snapshotController;
  v17 = 0;
  v6 = [(PRUISPosterSnapshotController *)snapshotController currentSnapshotBundleForRequest:requestCopy error:&v17];
  v7 = v17;
  if (v6)
  {
    definition = [requestCopy definition];
    levelSets = [definition levelSets];
    firstObject = [levelSets firstObject];

    v11 = [v6 snapshotForLevelSet:firstObject];
    if (!v11)
    {
      v12 = PRUISLogRendering();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1CAE63000, v12, OS_LOG_TYPE_DEFAULT, "Snapshot bundle did not contain desired levelSet", buf, 2u);
      }
    }
  }

  else
  {
    v13 = PRUISLogRendering();
    firstObject = v13;
    if (v7)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [PRUISPosterRenderingViewController(Deprecated) _cachedImageForRequest:];
      }
    }

    else if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&dword_1CAE63000, firstObject, OS_LOG_TYPE_DEFAULT, "Unable to fetch latest snapshot bundle", v15, 2u);
    }

    v11 = 0;
  }

  return v11;
}

- (id)_snapshotRequestForDefinition:(id)definition screen:(id)screen
{
  v18[1] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E69C52E8];
  screenCopy = screen;
  definitionCopy = definition;
  v9 = [v6 alloc];
  _serverPath = [(PRUISPosterRenderingViewController *)self _serverPath];
  v11 = [v9 _initWithPath:_serverPath];

  v12 = [(PRUISPosterSnapshotRequest *)[PRUISMutablePosterSnapshotRequest alloc] initWithPoster:v11 definition:definitionCopy interfaceOrientation:self->_activeOrientation];
  [(PRUISMutablePosterSnapshotRequest *)v12 setScreen:screenCopy];

  _obscurableContentView = [(PRUISPosterRenderingViewController *)self _obscurableContentView];
  if (_obscurableContentView)
  {
    v14 = [PRUISPosterAttachment attachmentWithView:_obscurableContentView level:*MEMORY[0x1E69C5390] - 1];
    v18[0] = v14;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
    [(PRUISMutablePosterSnapshotRequest *)v12 setAttachments:v15];
  }

  v16 = [(PRUISMutablePosterSnapshotRequest *)v12 copy];

  return v16;
}

- (void)initWithArchivedConfigurationURL:context:boundingShape:.cold.1()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  v3 = 2114;
  v4 = v0;
  _os_log_error_impl(&dword_1CAE63000, v1, OS_LOG_TYPE_ERROR, "Unable to unarchive configuration from URL %{public}@: %{public}@", v2, 0x16u);
}

- (void)initWithPosterContents:(char *)a1 context:boundingShape:extensionInstance:snapshotController:initialSnapshotBundle:renderingMode:snapshotDefinition:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_4();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1CAE63000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:PFServerPosterPathClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithPosterContents:(char *)a1 context:boundingShape:extensionInstance:snapshotController:initialSnapshotBundle:renderingMode:snapshotDefinition:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_4();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1CAE63000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"PUIPosterBoundingShapeIsValid(puiBoundingShape)", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithPosterContents:(char *)a1 context:boundingShape:extensionInstance:snapshotController:initialSnapshotBundle:renderingMode:snapshotDefinition:.cold.3(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_4();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1CAE63000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

void __59__PRUISPosterRenderingViewController_viewDidLayoutSubviews__block_invoke_cold_1(uint64_t a1)
{
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v4 = [*(a1 + 32) view];
  [v4 frame];
  v5 = NSStringFromCGRect(v15);
  v6 = [*(a1 + 32) view];
  [v6 bounds];
  v7 = NSStringFromCGRect(v16);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_13(&dword_1CAE63000, v8, v9, "<%{public}@:%{public}p> [PRUISPosterRenderingViewController] end viewDidLayoutSubviews, view.frame: %{public}@, view.bounds: %{public}@", v10, v11, v12, v13, v14);
}

- (void)_setRenderingMode:canUseInitialSnapshotBundle:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  v1 = objc_opt_class();
  v2 = NSStringFromClass(v1);
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v0];
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x20u);
}

- (void)_setRenderingMode:canUseInitialSnapshotBundle:.cold.2()
{
  OUTLINED_FUNCTION_2_0();
  v1 = objc_opt_class();
  v2 = NSStringFromClass(v1);
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v0];
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x20u);
}

- (void)_setRenderingMode:canUseInitialSnapshotBundle:.cold.3()
{
  v1 = objc_opt_class();
  NSStringFromClass(v1);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);
}

- (void)_setRenderingMode:canUseInitialSnapshotBundle:.cold.4()
{
  v1 = objc_opt_class();
  NSStringFromClass(v1);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);
}

void __84__PRUISPosterRenderingViewController__setRenderingMode_canUseInitialSnapshotBundle___block_invoke_88_cold_1()
{
  OUTLINED_FUNCTION_2_0();
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);
}

void __84__PRUISPosterRenderingViewController__setRenderingMode_canUseInitialSnapshotBundle___block_invoke_107_cold_1(uint64_t a1, void *a2)
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [a2 pf_description];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x2Au);
}

- (void)_buildSnapshotImageViewsFromBundle:(char *)a1 .cold.3(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_4();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1CAE63000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"bundle", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_currentAppearance
{
  configuration = [self configuration];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)scene:willUpdateSettings:withTransitionContext:.cold.1()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  v3 = 2112;
  v4 = v0;
  _os_log_debug_impl(&dword_1CAE63000, v1, OS_LOG_TYPE_DEBUG, "Will receive settings: %@ context: %@", v2, 0x16u);
}

- (void)addEvent:outError:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);
}

- (void)addTransition:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);
}

- (void)_notifySceneOfTransitionState:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_14(&dword_1CAE63000, v2, v3, "<%{public}@:%{public}p> _notifySceneOfTransitionState: %{public}@", v4, v5, v6, v7, v8);
}

- (void)transitionDidUpdate:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_14(&dword_1CAE63000, v2, v3, "<%{public}@:%{public}p> transitionDidUpdate: %{public}@", v4, v5, v6, v7, v8);
}

@end