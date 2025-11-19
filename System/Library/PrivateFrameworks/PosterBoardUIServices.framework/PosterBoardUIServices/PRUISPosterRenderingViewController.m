@interface PRUISPosterRenderingViewController
+ (id)_defaultExtensionProvider;
- ($04E7BC5D857DAB0C87BC5F8C0E9AAC02)renderingMetrics;
- (BOOL)_buildSnapshotImageViewsFromBundle:(id)a3;
- (BOOL)_isSceneContentReady;
- (BOOL)addEvent:(id)a3 outError:(id *)a4;
- (CGRect)salientContentRectangle;
- (PRSPosterConfiguration)configuration;
- (PRUISPosterContentViewCoordinator)contentViewCoordinator;
- (PRUISPosterMotionEventsDelegate)motionEventsDelegate;
- (PRUISPosterRenderingViewController)initWithArchivedConfigurationURL:(id)a3 context:(id)a4 boundingShape:(int64_t)a5;
- (PRUISPosterRenderingViewController)initWithPosterContents:(id)a3 context:(id)a4 boundingShape:(int64_t)a5 extensionInstance:(id)a6 snapshotController:(id)a7 initialSnapshotBundle:(id)a8 renderingMode:(unint64_t)a9 snapshotDefinition:(id)a10;
- (PRUISPosterRenderingViewControllerDelegate)delegate;
- (UIView)obscurableContentView;
- (id)_cachedImageForRequest:(id)a3;
- (id)_contentViewCoordinator;
- (id)_currentAppearance;
- (id)_extensionProvider;
- (id)_levelSetForSnapshotOptions:(unint64_t)a3;
- (id)_obscurableContentView;
- (id)_presentationContextModifier;
- (id)_providerBundleIdentifier;
- (id)_snapshotRequestForDefinition:(id)a3 screen:(id)a4;
- (id)_snapshotRequestForOptions:(unint64_t)a3 screen:(id)a4 levelSet:(id)a5;
- (id)_updateContentStyleWithAppearance:(id)a3;
- (id)executeSceneSnapshotForDefinition:(id)a3 options:(unint64_t)a4;
- (uint64_t)deviceMotionController:(uint64_t)a3 didUpdateMotionWithRotation:(_OWORD *)a4;
- (uint64_t)updateMotionWithRotation:(_OWORD *)a3;
- (unint64_t)supportedInterfaceOrientations;
- (void)_beginExecutingSnapshotsIfNeeded;
- (void)_createPosterScene;
- (void)_currentAppearance;
- (void)_loadTitleStyleConfigurationIfNeeded;
- (void)_notifySceneOfTransitionState:(id)a3;
- (void)_processNextSnapshot;
- (void)_sceneContentReadinessDidChange;
- (void)_setRenderingMode:(unint64_t)a3 canUseInitialSnapshotBundle:(BOOL)a4;
- (void)_setSceneContentHidden:(BOOL)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)_setSceneContentHidden:(BOOL)a3 animationSettings:(id)a4 completion:(id)a5;
- (void)_snapshotWithRequest:(id)a3 completionBlock:(id)a4;
- (void)_teardownPosterScene;
- (void)_teardownSnapshotImageViews;
- (void)_updateBackgroundSceneToSize:(CGSize)a3 orientation:(int64_t)a4 withAnimationSettings:(id)a5;
- (void)_updateEffectiveMotionEffectsModeWithMode:(unint64_t)a3;
- (void)_updateFloatingLayer;
- (void)addTransition:(id)a3;
- (void)applyVisualEffect:(id)a3;
- (void)dealloc;
- (void)didMoveToParentViewController:(id)a3;
- (void)registerPosterAppearanceObserver:(id)a3;
- (void)scene:(id)a3 clientDidConnect:(id)a4;
- (void)scene:(id)a3 didReceiveActions:(id)a4;
- (void)scene:(id)a3 didUpdateClientSettingsWithDiff:(id)a4 oldClientSettings:(id)a5 transitionContext:(id)a6;
- (void)scene:(id)a3 willUpdateSettings:(id)a4 withTransitionContext:(id)a5;
- (void)sceneContentStateDidChange:(id)a3;
- (void)sceneDidActivate:(id)a3;
- (void)sceneDidDeactivate:(id)a3 withError:(id)a4;
- (void)setContentOcclusionRectangles:(id)a3;
- (void)setDeviceMotionEventGenerationActive:(BOOL)a3;
- (void)setDeviceMotionUpdateInterval:(double)a3;
- (void)setFloatingSceneView:(id)a3;
- (void)setForcesSceneForeground:(BOOL)a3;
- (void)setSalientContentRectangle:(CGRect)a3;
- (void)setSceneViewBackgroundColor:(id)a3;
- (void)setShowsContentWhenReady:(BOOL)a3;
- (void)setViewBackgroundColor:(id)a3;
- (void)snapshotWithOptions:(unint64_t)a3 forScreen:(id)a4 completionBlock:(id)a5;
- (void)startGeneratingMotionEvents;
- (void)startSendingMotionEvents;
- (void)stopGeneratingMotionEvents;
- (void)stopSendingMotionEvents;
- (void)transitionDidBegin:(id)a3;
- (void)transitionDidEnd:(id)a3;
- (void)transitionDidUpdate:(id)a3;
- (void)updateLayoutForChangedObscuredSubviewBounds;
- (void)userTapEventOccurredWithLocation:(CGPoint)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation PRUISPosterRenderingViewController

- (PRUISPosterRenderingViewController)initWithArchivedConfigurationURL:(id)a3 context:(id)a4 boundingShape:(int64_t)a5
{
  v8 = a3;
  v9 = MEMORY[0x1E69C4FF8];
  v16 = 0;
  v10 = a4;
  v11 = [v9 unarchiveConfigurationAtURL:v8 format:-1 error:&v16];
  v12 = v16;
  v13 = PRUISLogRendering();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    [PRUISPosterRenderingViewController initWithArchivedConfigurationURL:context:boundingShape:];
  }

  v14 = [(PRUISPosterRenderingViewController *)self initWithPosterContents:v11 context:v10 boundingShape:a5];
  return v14;
}

- (PRUISPosterRenderingViewController)initWithPosterContents:(id)a3 context:(id)a4 boundingShape:(int64_t)a5 extensionInstance:(id)a6 snapshotController:(id)a7 initialSnapshotBundle:(id)a8 renderingMode:(unint64_t)a9 snapshotDefinition:(id)a10
{
  v55 = *MEMORY[0x1E69E9840];
  v17 = a3;
  v46 = a4;
  v47 = a6;
  v18 = a7;
  v19 = a8;
  v20 = v17;
  v21 = v19;
  v45 = a10;
  v48.receiver = self;
  v48.super_class = PRUISPosterRenderingViewController;
  v22 = [(PRUISPosterRenderingViewController *)&v48 initWithNibName:0 bundle:0];
  if (!v22)
  {
    goto LABEL_26;
  }

  v44 = v20;
  v23 = [v20 _path];
  NSClassFromString(&cfstr_Pfserverposter.isa);
  if (!v23)
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

  objc_storeStrong(&v22->_extensionInstance, a6);
  v22->_shouldRelinquishExtensionInstanceOnSceneTeardown = v47 == 0;
  objc_storeStrong(&v22->_posterContents, a3);
  objc_storeStrong(&v22->_context, a4);
  v22->_renderingMode = a9;
  v22->_activeOrientation = [*MEMORY[0x1E69DDA98] activeInterfaceOrientation];
  v25 = [MEMORY[0x1E695DF70] array];
  enqueuedSnapshotRequests = v22->_enqueuedSnapshotRequests;
  v22->_enqueuedSnapshotRequests = v25;

  v22->_boundingShape = v24;
  if (v18)
  {
    v27 = 0;
    v28 = v18;
  }

  else
  {
    a6 = [v44 role];
    if ([a6 isEqualToString:*MEMORY[0x1E69C5218]])
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

  if (!v18)
  {
  }

  v29 = [objc_alloc(MEMORY[0x1E69C5108]) initWithDebounceAfterEvents:1 withinTimeInterval:6.0];
  jetsamDebounceFilter = v22->_jetsamDebounceFilter;
  v22->_jetsamDebounceFilter = v29;

  v31 = [v21 underlyingSnapshotBundle];
  initialSnapshotBundle = v22->_initialSnapshotBundle;
  v22->_initialSnapshotBundle = v31;

  objc_storeStrong(&v22->_snapshotDefinition, a10);
  v33 = [MEMORY[0x1E69DC888] blackColor];
  sceneViewBackgroundColor = v22->_sceneViewBackgroundColor;
  v22->_sceneViewBackgroundColor = v33;

  objc_storeStrong(&v22->_viewBackgroundColor, v33);
  v35 = objc_alloc_init(PRUISDeviceMotionController);
  deviceMotionController = v22->_deviceMotionController;
  v22->_deviceMotionController = v35;

  [(PRUISDeviceMotionController *)v22->_deviceMotionController setDelegate:v22];
  if (v21)
  {
    v37 = [(PRUISPosterRenderingViewController *)v22 _buildSnapshotImageViewsFromBundle:v22->_initialSnapshotBundle];
    if (a9 == 3)
    {
      if (v37)
      {
        goto LABEL_23;
      }

      goto LABEL_21;
    }

LABEL_22:
    v22->_renderingMode = a9;
    [(PRUISPosterRenderingViewController *)v22 _createPosterScene];
    goto LABEL_23;
  }

  v38 = PRUISLogRendering();
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1CAE63000, v38, OS_LOG_TYPE_DEFAULT, "Initial snapshot bundle was nil, not building snapshot image views", buf, 2u);
  }

  if (a9 != 3)
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
  v19 = [(PRUISPosterRenderingViewController *)self view];
  [v19 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [(PRUISPosterRenderingViewController *)self supportedInterfaceOrientations];
  activeOrientation = self->_activeOrientation;
  if ((v13 & 0x18) == 0)
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
  retstr->var1 = v13;
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
    v11 = self;
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

- (void)viewDidDisappear:(BOOL)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = PRUISPosterRenderingViewController;
  [(PRUISPosterRenderingViewController *)&v7 viewDidDisappear:a3];
  v4 = PRUISLogRendering();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    *buf = 138543618;
    v9 = v6;
    v10 = 2050;
    v11 = self;
    _os_log_impl(&dword_1CAE63000, v4, OS_LOG_TYPE_DEFAULT, "<%{public}@:%{public}p> viewDidDisappear", buf, 0x16u);
  }
}

- (void)viewDidLayoutSubviews
{
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v4 = [a1 view];
  [v4 frame];
  v5 = NSStringFromCGRect(v15);
  v6 = [a1 view];
  [v6 bounds];
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
  v3 = [(PRUISPosterRenderingViewController *)self view];
  [v3 setBackgroundColor:self->_viewBackgroundColor];
  [(PRUISPosterRenderingViewController *)self renderingMetrics];
  v4 = [(PRUISPosterRenderingViewController *)self _contentViewCoordinator];
  v5 = [v4 obscurableContentView];

  [v5 setFrame:{v11, v12, v13, v14}];
  sceneView = self->_sceneView;
  v7 = [(PRUISPosterRenderingViewController *)self view];
  v8 = v7;
  if (sceneView)
  {
    [v7 insertSubview:v5 aboveSubview:self->_sceneView];
  }

  else
  {
    [v7 addSubview:v5];
  }

  if (self->_floatingSceneView)
  {
    v9 = [(PRUISPosterRenderingViewController *)self view];
    [v9 addSubview:self->_floatingSceneView];

    v10 = [(PRUISPosterRenderingViewController *)self view];
    [v10 bringSubviewToFront:self->_floatingSceneView];
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PRUISPosterRenderingViewController;
  [(PRUISPosterRenderingViewController *)&v4 viewWillAppear:a3];
  [(PRUISPosterRenderingViewController *)self _updateBackgroundScene];
}

- (void)viewDidAppear:(BOOL)a3
{
  v10.receiver = self;
  v10.super_class = PRUISPosterRenderingViewController;
  [(PRUISPosterRenderingViewController *)&v10 viewDidAppear:a3];
  pendTransitionToRenderingModeOnViewDidAppear = self->_pendTransitionToRenderingModeOnViewDidAppear;
  if (pendTransitionToRenderingModeOnViewDidAppear)
  {
    v5 = [(NSNumber *)pendTransitionToRenderingModeOnViewDidAppear unsignedIntegerValue];
    v6 = self->_pendTransitionToRenderingModeOnViewDidAppear;
    self->_pendTransitionToRenderingModeOnViewDidAppear = 0;

    if (v5 == 3 && ([(PRUISPosterRenderingViewController *)self snapshotDefinition], v7 = objc_claimAutoreleasedReturnValue(), v7, !v7))
    {
      v8 = [MEMORY[0x1E695DFD0] currentRunLoop];
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __52__PRUISPosterRenderingViewController_viewDidAppear___block_invoke;
      v9[3] = &unk_1E83A7828;
      v9[4] = self;
      v9[5] = 3;
      [v8 performBlock:v9];
    }

    else
    {
      [(PRUISPosterRenderingViewController *)self setRenderingMode:v5];
    }
  }

  [(PRUISPosterRenderingViewController *)self _updateBackgroundScene];
}

- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4
{
  v5.receiver = self;
  v5.super_class = PRUISPosterRenderingViewController;
  [(PRUISPosterRenderingViewController *)&v5 viewDidMoveToWindow:a3 shouldAppearOrDisappear:a4];
  [(PRUISPosterRenderingViewController *)self _updateBackgroundScene];
}

- (void)didMoveToParentViewController:(id)a3
{
  v4.receiver = self;
  v4.super_class = PRUISPosterRenderingViewController;
  [(PRUISPosterRenderingViewController *)&v4 didMoveToParentViewController:a3];
  [(PRUISPosterRenderingViewController *)self _updateBackgroundScene];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v24.receiver = self;
  v24.super_class = PRUISPosterRenderingViewController;
  [(PRUISPosterRenderingViewController *)&v24 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8 = [v7 containerView];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = [v8 window];
  }

  v10 = v9;
  if (v7)
  {
    v11 = [v9 _toWindowOrientation];
    v12 = MEMORY[0x1E698E608];
    [v7 transitionDuration];
    v13 = [v12 settingsWithDuration:?];
  }

  else
  {
    v11 = [(PRUISPosterRenderingViewController *)self interfaceOrientation];
    v13 = 0;
  }

  self->_activeOrientation = v11;
  [(PRUISPosterRenderingViewController *)self renderingMetrics];
  v15 = v22;
  v14 = v23;
  if (v7)
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
  v21 = v11;
  v17[4] = self;
  v18 = v13;
  v16 = v13;
  [v7 animateAlongsideTransition:v17 completion:&__block_literal_global_11];
}

- (PRUISPosterContentViewCoordinator)contentViewCoordinator
{
  v3 = [(PRUISPosterRenderingViewController *)self _contentViewCoordinator];
  if (!self->_hasAccessedContentViewCoordinator)
  {
    self->_hasAccessedContentViewCoordinator = 1;
    v4 = [(PRUISPosterRenderingViewController *)self _currentAppearance];
    v5 = [(PRUISPosterRenderingViewController *)self _updateContentStyleWithAppearance:v4];
  }

  return v3;
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

    v6 = [(PRUISPosterContentViewCoordinator *)self->_contentViewCoordinator obscurableContentView];
    [v6 setFrame:{v8, v9, v10, v11}];

    contentViewCoordinator = self->_contentViewCoordinator;
  }

  return contentViewCoordinator;
}

- (void)registerPosterAppearanceObserver:(id)a3
{
  v4 = a3;
  v6 = [(PRUISPosterRenderingViewController *)self _currentAppearance];
  v5 = [(PRUISPosterRenderingViewController *)self _updateContentStyleWithAppearance:v6];
  [v4 posterAppearanceDidChange:v5];
}

- (void)updateLayoutForChangedObscuredSubviewBounds
{
  v2 = [(PRUISPosterRenderingViewController *)self _contentViewCoordinator];
  [v2 updateLayoutForChangedVibrantObscuredSubviewBounds];
}

- (void)setViewBackgroundColor:(id)a3
{
  v6 = a3;
  if ((BSEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_viewBackgroundColor, a3);
    v5 = [(PRUISPosterRenderingViewController *)self viewIfLoaded];
    [v5 setBackgroundColor:self->_viewBackgroundColor];
  }
}

- (void)setSceneViewBackgroundColor:(id)a3
{
  v7 = a3;
  if ((BSEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_sceneViewBackgroundColor, a3);
    scenePresenter = self->_scenePresenter;
    if (scenePresenter)
    {
      v6 = [(PRUISPosterRenderingViewController *)self _presentationContextModifier];
      [(UIScenePresenter *)scenePresenter modifyPresentationContext:v6];
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

- (void)_setRenderingMode:(unint64_t)a3 canUseInitialSnapshotBundle:(BOOL)a4
{
  v47 = *MEMORY[0x1E69E9840];
  if (a3 >= 4)
  {
    v8 = PRUISLogRendering();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [PRUISPosterRenderingViewController _setRenderingMode:canUseInitialSnapshotBundle:];
    }

    goto LABEL_8;
  }

  v6 = a4;
  pendTransitionToRenderingModeOnViewDidAppear = self->_pendTransitionToRenderingModeOnViewDidAppear;
  if (pendTransitionToRenderingModeOnViewDidAppear)
  {
    if ([(NSNumber *)pendTransitionToRenderingModeOnViewDidAppear unsignedIntegerValue]== a3)
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

  if (self->_renderingMode != a3 || v9 != 0)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __84__PRUISPosterRenderingViewController__setRenderingMode_canUseInitialSnapshotBundle___block_invoke;
    aBlock[3] = &unk_1E83A7C18;
    aBlock[4] = self;
    v11 = _Block_copy(aBlock);
    v8 = v11;
    if (a3 != 3)
    {
      if (!self->_scene)
      {
        [(PRUISPosterRenderingViewController *)self _createPosterScene];
      }

      (*(v8 + 16))(v8, a3);
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
    if (v6)
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

    v16 = [(PRUISPosterRenderingViewController *)self snapshotDefinition];
    if (v16)
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
          v46 = self;
          _os_log_impl(&dword_1CAE63000, v17, OS_LOG_TYPE_DEFAULT, "<%{public}@:%{public}p> Capturing snapshot using the content-ready scene.", buf, 0x16u);
        }

        v20 = [(PRUISPosterRenderingViewController *)self executeSceneSnapshotForDefinition:v16 options:2];
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
        v21 = [MEMORY[0x1E69C5268] mainThreadScheduler];
        [v20 addSuccessBlock:v35 andFailureBlock:v33 scheduler:v21];

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
          v46 = self;
          _os_log_impl(&dword_1CAE63000, v26, OS_LOG_TYPE_DEFAULT, "<%{public}@:%{public}p> Capturing snapshot using the snapshot controller.", buf, 0x16u);
        }

        v20 = [(UIViewController *)self pruis_snapshotRequestForDefinition:v16 interfaceOrientation:self->_activeOrientation bounds:0 screen:self->_posterContents posterContents:*MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24)];
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

    if (v16)
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

- (void)setShowsContentWhenReady:(BOOL)a3
{
  if (self->_showsContentWhenReady != a3)
  {
    self->_showsContentWhenReady = a3;
    if (a3)
    {
      [(PRUISPosterRenderingViewController *)self _setSceneContentHidden:[(PRUISPosterRenderingViewController *)self _isSceneContentReady]^ 1 animated:0 completion:0];

      [(PRUISPosterRenderingViewController *)self _updateBackgroundScene];
    }
  }
}

- (void)setForcesSceneForeground:(BOOL)a3
{
  if (self->_forcesSceneForeground != a3)
  {
    self->_forcesSceneForeground = a3;
    [(PRUISPosterRenderingViewController *)self _updateBackgroundScene];
  }
}

- (void)startSendingMotionEvents
{
  v3 = [(FBScene *)self->_scene clientSettings];
  if ([v3 pr_deviceMotionEventsRequested])
  {
  }

  else
  {
    v4 = [(FBScene *)self->_scene clientSettings];
    v5 = [v4 pr_deviceMotionMode];

    if (!v5)
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

- (void)setDeviceMotionUpdateInterval:(double)a3
{
  if (self->_deviceMotionUpdateInterval != a3)
  {
    v6[5] = v3;
    v6[6] = v4;
    self->_deviceMotionUpdateInterval = a3;
    scene = self->_scene;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __68__PRUISPosterRenderingViewController_setDeviceMotionUpdateInterval___block_invoke;
    v6[3] = &__block_descriptor_40_e33_v16__0__FBSMutableSceneSettings_8l;
    *&v6[4] = a3;
    [(FBScene *)scene updateSettings:v6];
  }
}

- (void)setSalientContentRectangle:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  p_salientContentRectangle = &self->_salientContentRectangle;
  if (!CGRectEqualToRect(a3, self->_salientContentRectangle))
  {
    p_salientContentRectangle->origin.x = x;
    p_salientContentRectangle->origin.y = y;
    p_salientContentRectangle->size.width = width;
    p_salientContentRectangle->size.height = height;
    v9 = [(FBScene *)self->_scene clientSettings];
    v10 = [v9 pui_salientContentRectangleUpdatesRequested];

    if (v10)
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

- (void)setContentOcclusionRectangles:(id)a3
{
  v5 = a3;
  if (self->_contentOcclusionRectangles != v5)
  {
    objc_storeStrong(&self->_contentOcclusionRectangles, a3);
    v6 = [(FBScene *)self->_scene clientSettings];
    v7 = [v6 pui_contentOcclusionRectangleUpdatesRequested];

    if (v7)
    {
      scene = self->_scene;
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __68__PRUISPosterRenderingViewController_setContentOcclusionRectangles___block_invoke;
      v9[3] = &unk_1E83A7D50;
      v10 = v5;
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

- (void)setDeviceMotionEventGenerationActive:(BOOL)a3
{
  if (self->_deviceMotionEventGenerationActive != a3)
  {
    self->_deviceMotionEventGenerationActive = a3;
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

- (void)setFloatingSceneView:(id)a3
{
  v4 = a3;
  [(UIView *)self->_floatingSceneView removeFromSuperview];
  floatingSceneView = self->_floatingSceneView;
  self->_floatingSceneView = v4;
  v6 = v4;

  v7 = [(PRUISPosterRenderingViewController *)self viewIfLoaded];
  [v7 addSubview:v6];
}

- (void)applyVisualEffect:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __56__PRUISPosterRenderingViewController_applyVisualEffect___block_invoke;
  aBlock[3] = &unk_1E83A7D78;
  objc_copyWeak(&v17, &location);
  v5 = v4;
  v15 = v5;
  v16 = self;
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
  block[4] = a1;
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
  v3 = [(PRUISPosterSnapshotController *)self->_snapshotController extensionProvider];
  if (!v3)
  {
    v4 = PRUISLogRendering();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = objc_opt_class();
      v6 = NSStringFromClass(v5);
      v8 = 138543618;
      v9 = v6;
      v10 = 2050;
      v11 = self;
      _os_log_impl(&dword_1CAE63000, v4, OS_LOG_TYPE_DEFAULT, "<%{public}@:%{public}p> Snapshot controller was nil or did not have an extensionProvider. Falling back to default extensionProvider.", &v8, 0x16u);
    }

    v3 = [objc_opt_class() _defaultExtensionProvider];
  }

  return v3;
}

- (BOOL)_buildSnapshotImageViewsFromBundle:(id)a3
{
  v51 = *MEMORY[0x1E69E9840];
  v5 = a3;
  BSDispatchQueueAssertMain();
  if (!v5)
  {
    [PRUISPosterRenderingViewController _buildSnapshotImageViewsFromBundle:a2];
  }

  v6 = [MEMORY[0x1E69C5590] floatingLevelSet];
  v7 = [v5 snapshotForLevelSet:v6];

  v8 = [MEMORY[0x1E69C5590] allLevelsExceptFloating];
  v9 = [v5 snapshotForLevelSet:v8];

  if (!v9)
  {
    v10 = [MEMORY[0x1E69C5590] defaultLevelSet];
    v9 = [v5 snapshotForLevelSet:v10];
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
      v50 = self;
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
    v17 = [(UIImageView *)self->_snapshotFloatingImageView layer];
    [v17 setName:@"snapshotFloatingImageView"];

    v18 = [(FBScene *)self->_scene settings];
    v19 = [v18 pr_posterConfiguredProperties];

    v20 = [v19 renderingConfiguration];
    v21 = [v20 isDepthEffectDisabled];

    v22 = [(PRUISPosterRenderingViewController *)self view];
    v23 = v22;
    v24 = self->_snapshotFloatingImageView;
    if (v21)
    {
      [v22 insertSubview:v24 atIndex:0];
    }

    else
    {
      [v22 addSubview:v24];
    }

    [(UIImageView *)self->_snapshotFloatingImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    v25 = MEMORY[0x1E696ACD8];
    v26 = [(PRUISPosterRenderingViewController *)self view];
    v27 = [v26 pui_constraintsPinningSubview:self->_snapshotFloatingImageView toEdges:15];
    [v25 activateConstraints:v27];

    if (DEBUG_RENDERING_MODE_onceToken != -1)
    {
      [PRUISPosterRenderingViewController _buildSnapshotImageViewsFromBundle:];
    }

    if (DEBUG_RENDERING_MODE___debugRenderingMode == 1)
    {
      v28 = [(UIImageView *)self->_snapshotFloatingImageView layer];
      [v28 setBorderWidth:5.0];

      v29 = [(UIImageView *)self->_snapshotFloatingImageView layer];
      v30 = [MEMORY[0x1E69DC888] redColor];
      [v29 setBorderColor:{objc_msgSend(v30, "CGColor")}];
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
      v50 = self;
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
    v37 = [(UIImageView *)self->_snapshotAllExceptFloatingImageView layer];
    [v37 setName:@"snapshotAllExceptFloatingImageView"];

    v38 = [(PRUISPosterRenderingViewController *)self view];
    [v38 insertSubview:self->_snapshotAllExceptFloatingImageView atIndex:0];

    [(UIImageView *)self->_snapshotAllExceptFloatingImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    v39 = MEMORY[0x1E696ACD8];
    v40 = [(PRUISPosterRenderingViewController *)self view];
    v41 = [v40 pui_constraintsPinningSubview:self->_snapshotAllExceptFloatingImageView toEdges:15];
    [v39 activateConstraints:v41];

    if (DEBUG_RENDERING_MODE_onceToken != -1)
    {
      [PRUISPosterRenderingViewController _buildSnapshotImageViewsFromBundle:];
    }

    if (DEBUG_RENDERING_MODE___debugRenderingMode == 1)
    {
      v42 = [(UIImageView *)self->_snapshotAllExceptFloatingImageView layer];
      [v42 setBorderWidth:5.0];

      v43 = [(UIImageView *)self->_snapshotAllExceptFloatingImageView layer];
      v44 = [MEMORY[0x1E69DC888] redColor];
      [v43 setBorderColor:{objc_msgSend(v44, "CGColor")}];
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
    v13 = self;
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
  v2 = [(PFPosterContents *)self->_posterContents _path];
  v3 = [v2 serverIdentity];
  v4 = [v3 provider];

  return v4;
}

- (id)_currentAppearance
{
  [(PRUISPosterRenderingViewController *)self _loadTitleStyleConfigurationIfNeeded];
  if (self->_titleStyleConfiguration)
  {
    v3 = [(PFPosterContents *)self->_posterContents _path];
    v4 = [v3 serverIdentity];
    v5 = [v4 provider];

    if (v5)
    {
      v6 = [objc_alloc(MEMORY[0x1E69635D0]) initWithBundleIdentifier:v5 error:0];
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

    v10 = [(PFPosterContents *)self->_posterContents role];
    if (v7)
    {
      v11 = [(PRPosterTitleStyleConfiguration *)self->_titleStyleConfiguration effectiveTimeFontWithExtensionBundleURL:v7 forRole:v10];
    }

    else
    {
      v12 = PRUISLogRendering();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [(PRUISPosterRenderingViewController *)self _currentAppearance];
      }

      v11 = [MEMORY[0x1E69C5340] defaultTitleFontForRole:v10];
    }

    v13 = v11;

    v14 = [v13 fontWithSize:84.0];

    v15 = objc_alloc(MEMORY[0x1E69C52D0]);
    v16 = objc_alloc(MEMORY[0x1E69C52D8]);
    v17 = [MEMORY[0x1E69DC888] whiteColor];
    v18 = [v16 initWithColor:v17];
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
  v2 = [(PRUISPosterRenderingViewController *)self _contentViewCoordinator];
  v3 = [v2 obscurableContentView];

  return v3;
}

- (id)_updateContentStyleWithAppearance:(id)a3
{
  v4 = a3;
  v5 = [(PRUISPosterRenderingViewController *)self _contentViewCoordinator];
  titleStyleConfiguration = self->_titleStyleConfiguration;
  v7 = [(PFPosterContents *)self->_posterContents role];
  v8 = [(PRPosterTitleStyleConfiguration *)titleStyleConfiguration effectiveTitleContentStyleForRole:v7];
  v9 = [v5 updateContentViewsWithContentStyle:v8 initialAppearance:v4];

  return v9;
}

- (void)_loadTitleStyleConfigurationIfNeeded
{
  if (!self->_titleStyleConfiguration)
  {
    v7 = [(PRUISPosterRenderingViewController *)self configuration];
    v3 = [v7 pr_loadTitleStyleConfigurationWithError:0];
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
  v3 = [v0 pf_description];
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x20u);
}

- (void)_teardownPosterScene
{
  if (self->_shouldRelinquishExtensionInstanceOnSceneTeardown && self->_extensionInstance)
  {
    v3 = [(PRUISPosterRenderingViewController *)self _extensionProvider];
    v4 = [v3 instancePool];
    [v4 relinquishExtensionInstance:self->_extensionInstance];

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

- (void)_updateBackgroundSceneToSize:(CGSize)a3 orientation:(int64_t)a4 withAnimationSettings:(id)a5
{
  v7 = [(PRUISPosterRenderingViewController *)self _screen:a4];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = [MEMORY[0x1E69DCEB0] mainScreen];
  }

  v10 = v9;

  v11 = [v10 displayConfiguration];
  [v11 bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = [(PRUISPosterRenderingViewController *)self view];
  [v20 bounds];

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

  v25 = [(PRUISPosterRenderingViewController *)self _shouldSceneBeForeground];
  v26 = [(PRUISPosterRenderingViewController *)self traitCollection];
  v27 = [v26 userInterfaceStyle];

  v28 = [(PRUISPosterRenderingViewController *)self supportedInterfaceOrientations]!= 2;
  v29 = [(PRUISPosterRenderingViewController *)self boundingShape];
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
  v73 = size;
  scene = self->_scene;
  v57[0] = MEMORY[0x1E69E9820];
  v57[1] = 3221225472;
  v57[2] = __101__PRUISPosterRenderingViewController__updateBackgroundSceneToSize_orientation_withAnimationSettings___block_invoke;
  v57[3] = &unk_1E83A7DE8;
  v69 = v25;
  v33 = v11;
  v63 = origin;
  v60 = a4;
  v61 = v27;
  v70 = v28;
  v62 = v29;
  v71 = v30;
  v64 = v73;
  v65 = v13;
  v66 = v15;
  v67 = v17;
  v68 = v19;
  v58 = v33;
  v59 = self;
  [(FBScene *)scene performUpdate:v57];
  if (!self->_scenePresenter)
  {
    v34 = [(PRUISPosterRenderingViewController *)self viewIfLoaded];
    v35 = [v34 window];

    if (v35)
    {
      v36 = [(FBScene *)self->_scene uiPresentationManager];
      v37 = objc_opt_class();
      v38 = NSStringFromClass(v37);
      v39 = [v36 createPresenterWithIdentifier:v38];
      scenePresenter = self->_scenePresenter;
      self->_scenePresenter = v39;

      v41 = self->_scenePresenter;
      v42 = [(PRUISPosterRenderingViewController *)self _presentationContextModifier];
      [(UIScenePresenter *)v41 modifyPresentationContext:v42];

      [(UIScenePresenter *)self->_scenePresenter activate];
      v43 = [(UIScenePresenter *)self->_scenePresenter presentationView];
      sceneView = self->_sceneView;
      self->_sceneView = v43;

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
      v48 = [(PRUISPosterRenderingViewController *)self view];
      v49 = v48;
      v50 = self->_sceneView;
      if (snapshotAllExceptFloatingImageView)
      {
        [v48 insertSubview:v50 aboveSubview:self->_snapshotAllExceptFloatingImageView];
      }

      else
      {
        [v48 addSubview:v50];

        v49 = [(PRUISPosterRenderingViewController *)self view];
        [v49 sendSubviewToBack:self->_sceneView];
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
      v52 = [MEMORY[0x1E69DC888] greenColor];
      goto LABEL_26;
    }

    if (renderingMode != 3)
    {
      v52 = [MEMORY[0x1E69DC888] orangeColor];
LABEL_26:
      v53 = v52;
      v54 = [(UIView *)self->_sceneView layer];
      [v54 setBorderWidth:5.0];

      v55 = [(UIView *)self->_sceneView layer];
      [v55 setBorderColor:{objc_msgSend(v53, "CGColor")}];
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
  v3 = [(FBScene *)self->_scene layerManager];
  v4 = [v3 layers];

  v5 = [v4 countByEnumeratingWithState:&v32 objects:v36 count:16];
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
          objc_enumerationMutation(v4);
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

      v5 = [v4 countByEnumeratingWithState:&v32 objects:v36 count:16];
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
      v19 = [(FBScene *)self->_scene uiPresentationManager];
      v20 = [v19 createPresenterForLayerTarget:v18 identifier:v17 priority:100];
      v21 = self->_floatingPresenter;
      self->_floatingPresenter = v20;

      [(UIScenePresenter *)self->_floatingPresenter modifyPresentationContext:&__block_literal_global_156];
      [(UIScenePresenter *)self->_floatingPresenter activate];
      [(PRUISPosterRenderingViewController *)self renderingMetrics];
      v22 = [(UIScenePresenter *)self->_floatingPresenter presentationView];
      floatingSceneView = self->_floatingSceneView;
      self->_floatingSceneView = v22;

      [(UIView *)self->_floatingSceneView setFrame:0, 0];
      v24 = 1.0;
      if (self->_sceneContentHidden)
      {
        v24 = 0.0;
      }

      [(UIView *)self->_floatingSceneView setAlpha:v24];
      if ([(PRUISPosterRenderingViewController *)self isViewLoaded])
      {
        v25 = [(PRUISPosterRenderingViewController *)self _contentViewCoordinator];
        v26 = [v25 obscurableContentView];

        if (v26)
        {
          snapshotAllExceptFloatingImageView = self->_snapshotAllExceptFloatingImageView;
          v28 = [(PRUISPosterRenderingViewController *)self view];
          v29 = v28;
          v30 = self->_floatingSceneView;
          if (snapshotAllExceptFloatingImageView)
          {
            sceneView = self->_snapshotAllExceptFloatingImageView;
          }

          else
          {
            sceneView = v26;
          }
        }

        else
        {
          v28 = [(PRUISPosterRenderingViewController *)self view];
          v29 = v28;
          v30 = self->_floatingSceneView;
          sceneView = self->_sceneView;
        }

        [v28 insertSubview:v30 aboveSubview:sceneView];
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
    v4 = [(FBScene *)scene clientSettings];
    v5 = [v4 pui_didFinishInitialization];

    if (v5)
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
  v3 = [(PRUISPosterRenderingViewController *)self _isSceneContentReady];
  if ([(PRUISPosterRenderingViewController *)self showsContentWhenReady])
  {
    objc_initWeak(&location, self);
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __69__PRUISPosterRenderingViewController__sceneContentReadinessDidChange__block_invoke;
    v4[3] = &unk_1E83A7E10;
    objc_copyWeak(&v5, &location);
    v6 = v3;
    [(PRUISPosterRenderingViewController *)self _setSceneContentHidden:v3 ^ 1 animated:v3 completion:v4];
    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }

  else if (v3)
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

- (void)_setSceneContentHidden:(BOOL)a3 animated:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v6 = a3;
  v9 = a5;
  if (v5)
  {
    v8 = [MEMORY[0x1E698E608] settingsWithDuration:0.25];
  }

  else
  {
    v8 = 0;
  }

  [(PRUISPosterRenderingViewController *)self _setSceneContentHidden:v6 animationSettings:v8 completion:v9];
}

- (void)_setSceneContentHidden:(BOOL)a3 animationSettings:(id)a4 completion:(id)a5
{
  v6 = a3;
  v8 = a4;
  v9 = a5;
  if (self->_sceneContentHidden != v6)
  {
    self->_sceneContentHidden = v6;
    v10 = [(PRUISPosterRenderingViewController *)self viewIfLoaded];
    if (v10)
    {
      v11 = v10;
      v12 = objc_opt_new();
      v13 = v12;
      snapshotAllExceptFloatingImageView = self->_snapshotAllExceptFloatingImageView;
      if (v6)
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
      v18 = [v11 subviews];
      v19 = [v17 setWithArray:v18];

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
      v26 = v9;
      v22 = v13;
      v23 = v19;
      [v21 animateWithSettings:v8 actions:v27 completion:v24];
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

- (void)_updateEffectiveMotionEffectsModeWithMode:(unint64_t)a3
{
  v5 = [(FBScene *)self->_scene settings];
  v6 = [v5 pr_effectiveMotionEffectsMode];

  if (v6 != a3)
  {
    scene = self->_scene;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __80__PRUISPosterRenderingViewController__updateEffectiveMotionEffectsModeWithMode___block_invoke;
    v8[3] = &__block_descriptor_40_e33_v16__0__FBSMutableSceneSettings_8l;
    v8[4] = a3;
    [(FBScene *)scene updateSettings:v8];
  }
}

- (uint64_t)updateMotionWithRotation:(_OWORD *)a3
{
  v3 = *(a1 + 1192);
  v4 = a3[1];
  v6[0] = *a3;
  v6[1] = v4;
  return [v3 updateMotionWithRotation:v6];
}

- (void)scene:(id)a3 willUpdateSettings:(id)a4 withTransitionContext:(id)a5
{
  v6 = a4;
  v7 = a5;
  v8 = PRUISLogRendering();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [PRUISPosterRenderingViewController scene:willUpdateSettings:withTransitionContext:];
  }
}

- (void)scene:(id)a3 didReceiveActions:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = PRUISLogRendering();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = [v6 identityToken];
    v12 = [v11 stringRepresentation];
    v13 = 138544130;
    v14 = v10;
    v15 = 2050;
    v16 = self;
    v17 = 2112;
    v18 = v12;
    v19 = 2112;
    v20 = v7;
    _os_log_impl(&dword_1CAE63000, v8, OS_LOG_TYPE_DEFAULT, "<%{public}@:%{public}p> scene %@ did receive actions %@", &v13, 0x2Au);
  }
}

- (void)sceneContentStateDidChange:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = PRUISLogRendering();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = [v4 identityToken];
    v9 = [v8 stringRepresentation];
    [v4 contentState];
    v10 = NSStringFromFBSceneContentState();
    v11 = 138544130;
    v12 = v7;
    v13 = 2050;
    v14 = self;
    v15 = 2112;
    v16 = v9;
    v17 = 2112;
    v18 = v10;
    _os_log_impl(&dword_1CAE63000, v5, OS_LOG_TYPE_DEFAULT, "<%{public}@:%{public}p> scene %@ did change content state to %@", &v11, 0x2Au);
  }

  [(PRUISPosterRenderingViewController *)self _sceneContentReadinessDidChange];
}

- (void)sceneDidActivate:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = PRUISLogRendering();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = [v4 identityToken];
    v9 = [v8 stringRepresentation];
    v10 = 138543874;
    v11 = v7;
    v12 = 2050;
    v13 = self;
    v14 = 2112;
    v15 = v9;
    _os_log_impl(&dword_1CAE63000, v5, OS_LOG_TYPE_DEFAULT, "<%{public}@:%{public}p> scene %@ did activate", &v10, 0x20u);
  }
}

- (void)scene:(id)a3 clientDidConnect:(id)a4
{
  v5 = a3;
  v6 = [(FBScene *)self->_scene settings];
  v7 = [v6 pr_posterConfiguredProperties];

  v8 = [v7 renderingConfiguration];
  v9 = [v8 isDepthEffectDisabled];

  v10 = [v7 renderingConfiguration];
  v11 = [v10 areMotionEffectsDisabled];

  if (v11)
  {
    v12 = 0;
  }

  else
  {
    v13 = [v5 clientSettings];
    v12 = [v13 pr_supportedMotionEffectsMode];
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __61__PRUISPosterRenderingViewController_scene_clientDidConnect___block_invoke;
  v14[3] = &__block_descriptor_41_e33_v16__0__FBSMutableSceneSettings_8l;
  v15 = v9;
  v14[4] = v12;
  [v5 updateSettings:v14];
}

void __61__PRUISPosterRenderingViewController_scene_clientDidConnect___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  [v4 pr_setDepthEffectDisallowed:v3];
  [v4 pr_setEffectiveMotionEffectsMode:*(a1 + 32)];
}

- (void)sceneDidDeactivate:(id)a3 withError:(id)a4
{
  v36 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v7 domain];
  if ([v8 isEqualToString:*MEMORY[0x1E699F798]])
  {
    v9 = [v7 code];

    if (v9 == 1)
    {
      v10 = PRUISLogRendering();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        v13 = [v6 identityToken];
        v14 = [v13 stringRepresentation];
        v28 = 138544130;
        v29 = v12;
        v30 = 2050;
        v31 = self;
        v32 = 2112;
        v33 = v14;
        v34 = 2112;
        v35 = v7;
        _os_log_error_impl(&dword_1CAE63000, v10, OS_LOG_TYPE_ERROR, "<%{public}@:%{public}p> scene %@ did deactivate with fatal error %@", &v28, 0x2Au);
      }

      goto LABEL_15;
    }
  }

  else
  {
  }

  v10 = [v7 pf_jetsamReason];
  if (!v10)
  {
    v16 = PRUISLogRendering();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v23 = objc_opt_class();
      v19 = NSStringFromClass(v23);
      v20 = [v6 identityToken];
      v21 = [v20 stringRepresentation];
      v28 = 138544130;
      v29 = v19;
      v30 = 2050;
      v31 = self;
      v32 = 2112;
      v33 = v21;
      v34 = 2112;
      v35 = v7;
      v22 = "<%{public}@:%{public}p> scene %@ did deactivate with transient error %@";
      goto LABEL_17;
    }

LABEL_11:

    [(PRUISPosterRenderingViewController *)self _updateBackgroundScene];
    goto LABEL_15;
  }

  v15 = [(PFDebounceFilter *)self->_jetsamDebounceFilter allowEvent];
  v16 = PRUISLogRendering();
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
  if (v15)
  {
    if (v17)
    {
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      v20 = [v6 identityToken];
      v21 = [v20 stringRepresentation];
      v28 = 138544130;
      v29 = v19;
      v30 = 2050;
      v31 = self;
      v32 = 2112;
      v33 = v21;
      v34 = 2112;
      v35 = v10;
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
    v26 = [v6 identityToken];
    v27 = [v26 stringRepresentation];
    v28 = 138544130;
    v29 = v25;
    v30 = 2050;
    v31 = self;
    v32 = 2112;
    v33 = v27;
    v34 = 2112;
    v35 = v10;
    _os_log_error_impl(&dword_1CAE63000, v16, OS_LOG_TYPE_ERROR, "<%{public}@:%{public}p> scene %@ did deactivate with jetsam error with reason %@. Transitioning to snapshot.", &v28, 0x2Au);
  }

  [(PRUISPosterRenderingViewController *)self _setRenderingMode:3 canUseInitialSnapshotBundle:1];
LABEL_15:
}

- (void)scene:(id)a3 didUpdateClientSettingsWithDiff:(id)a4 oldClientSettings:(id)a5 transitionContext:(id)a6
{
  v48 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v12 = PRUISLogRendering();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v30 = objc_opt_class();
    v31 = NSStringFromClass(v30);
    v32 = [v9 identityToken];
    v33 = [v32 stringRepresentation];
    *buf = 138544386;
    v39 = v31;
    v40 = 2050;
    v41 = self;
    v42 = 2112;
    v43 = v33;
    v44 = 2112;
    v45 = v10;
    v46 = 2112;
    v47 = v11;
    _os_log_debug_impl(&dword_1CAE63000, v12, OS_LOG_TYPE_DEBUG, "<%{public}@:%{public}p> scene %@ did update client settings with diff %@, transition %@", buf, 0x34u);
  }

  v13 = objc_alloc_init(MEMORY[0x1E699FBF0]);
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __112__PRUISPosterRenderingViewController_scene_didUpdateClientSettingsWithDiff_oldClientSettings_transitionContext___block_invoke;
  v37[3] = &unk_1E83A7928;
  v37[4] = self;
  [v13 observeLayersWithBlock:v37];
  [v13 inspectDiff:v10 withContext:{objc_msgSend(v9, "clientSettings")}];
  [v13 removeAllObservers];
  v14 = [(FBScene *)self->_scene settings];
  v15 = [v14 pr_posterConfiguredProperties];

  v16 = [v15 renderingConfiguration];
  v17 = [v16 areMotionEffectsDisabled];

  if ((v17 & 1) == 0)
  {
    if ([v10 pr_supportedMotionEffectsModeDidChange])
    {
      v18 = [v9 clientSettings];
      v19 = [v18 pr_supportedMotionEffectsMode];

      [(PRUISPosterRenderingViewController *)self _updateEffectiveMotionEffectsModeWithMode:v19];
    }

    if ([v10 pr_deviceMotionEventsRequestedDidChange])
    {
      v20 = [v9 clientSettings];
      v21 = [v20 pr_deviceMotionEventsRequested];

      if (self->_hostHasRequestedMotionEvents && v21)
      {
        [(PRUISPosterRenderingViewController *)self startGeneratingMotionEvents];
      }

      else
      {
        [(PRUISPosterRenderingViewController *)self stopGeneratingMotionEvents];
      }
    }

    if ([v10 pr_preferredDeviceMotionUpdateIntervalDidChange])
    {
      v22 = [v9 clientSettings];
      [v22 pr_preferredDeviceMotionUpdateInterval];
      v24 = v23;

      v25 = [(PRUISPosterRenderingViewController *)self motionEventsDelegate];
      if (objc_opt_respondsToSelector())
      {
        [v25 posterMotionEventsController:self preferredDeviceMotionUpdateIntervalDidChange:v24];
      }
    }
  }

  if ([v10 pui_salientContentRectangleUpdatesRequestedDidChange])
  {
    v26 = [v9 clientSettings];
    v27 = [v26 pui_salientContentRectangleUpdatesRequested];
  }

  else
  {
    v27 = 0;
  }

  if ([v10 pui_contentOcclusionRectangleUpdatesRequestedDidChange])
  {
    v28 = [v9 clientSettings];
    v29 = [v28 pui_contentOcclusionRectangleUpdatesRequested];

    if (v27)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v29 = 0;
    if (v27)
    {
LABEL_23:
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __112__PRUISPosterRenderingViewController_scene_didUpdateClientSettingsWithDiff_oldClientSettings_transitionContext___block_invoke_2;
      v34[3] = &unk_1E83A7EA0;
      v35 = v27;
      v34[4] = self;
      v36 = v29;
      [v9 updateSettings:v34];
      goto LABEL_24;
    }
  }

  if (v29)
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

- (uint64_t)deviceMotionController:(uint64_t)a3 didUpdateMotionWithRotation:(_OWORD *)a4
{
  v4 = a4[1];
  v6[0] = *a4;
  v6[1] = v4;
  return [a1 updateMotionWithRotation:v6];
}

- (id)executeSceneSnapshotForDefinition:(id)a3 options:(unint64_t)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(PRUISPosterRenderingViewController *)self scene];
  if (([v7 isValid] & 1) == 0)
  {
    v12 = MEMORY[0x1E69C5258];
    v13 = PFFunctionNameForAddress();
    v14 = PFGeneralErrorFromObjectWithLocalizedFailureReason();
    v15 = [v12 futureWithError:{v14, 0}];

    goto LABEL_21;
  }

  v8 = MEMORY[0x1E698E620];
  v9 = [v7 clientHandle];
  v10 = [v9 processHandle];
  v11 = v10;
  if (v10)
  {
    [v10 auditToken];
  }

  else
  {
    memset(v31, 0, sizeof(v31));
  }

  v13 = [v8 tokenFromAuditToken:v31];

  if ((v4 & 2) != 0)
  {
    v16 = [(PRUISPosterSnapshotController *)self->_snapshotController cache];
    if ((objc_opt_respondsToSelector() & 1) != 0 && (v17 = [v16 performSelector:sel_underlyingCache]) != 0)
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
    if (v6)
    {
      v22 = [v6 levelSets];
      v23 = [v22 bs_map:&__block_literal_global_192];

      v24 = objc_alloc(MEMORY[0x1E69C55F0]);
      v25 = [v6 uniqueIdentifier];
      v26 = [v24 initWithLevelSets:v23 snapshotDefinitionIdentifier:v25];

      if (v26)
      {
        v21 = [objc_alloc(MEMORY[0x1E69C55D8]) initWithOutputDescriptor:v26 sceneDescriptor:0 attachments:0 analysis:0];
LABEL_19:
        v27 = [(PRUISPosterRenderingViewController *)self scene];
        v28 = [v27 pui_executeSnapshotForDescriptor:v21 outputDestination:v19];
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

- (BOOL)addEvent:(id)a3 outError:(id *)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 type];
  if ((PRRenderingEventTypeIsValid() & 1) == 0)
  {
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid PRRenderingEventType: %@", v7];
    v17 = PFFunctionNameForAddress();
    v15 = PFGeneralErrorFromObjectWithLocalizedFailureReason();

    v18 = PRUISLogRendering();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [PRUISPosterRenderingViewController addEvent:outError:];
    }

    goto LABEL_9;
  }

  v8 = [(FBScene *)self->_scene clientSettings];
  v9 = [v8 pr_requestedRenderingEventTypes];
  v10 = [v9 containsObject:v7];

  if ((v10 & 1) == 0 && (PRRenderingEventTypeIsGrandfathered() & 1) == 0)
  {
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Client has not requested to receive PRRenderingEvents of type: %@", v7];
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
      v27 = self;
      v28 = 2114;
      v29 = v15;
      _os_log_impl(&dword_1CAE63000, v18, OS_LOG_TYPE_DEFAULT, "<%{public}@:%{public}p> %{public}@", buf, 0x20u);
    }

LABEL_9:

    if (a4)
    {
      v19 = v15;
      v16 = 0;
      *a4 = v15;
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
    v27 = self;
    v28 = 2114;
    v29 = v6;
    _os_log_impl(&dword_1CAE63000, v11, OS_LOG_TYPE_DEFAULT, "<%{public}@:%{public}p> adding PRRenderingEvent: %{public}@", buf, 0x20u);
  }

  v14 = [v6 newAction];
  v15 = [MEMORY[0x1E695DFD8] setWithObject:v14];
  v16 = [(FBScene *)self->_scene pui_safelySendActions:v15 outError:a4];
LABEL_12:

  return v16;
}

- (void)userTapEventOccurredWithLocation:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(FBScene *)self->_scene clientSettings];
  v7 = [v6 pui_userTapEventsRequested];
  v8 = MEMORY[0x1E69C53D0];
  if (v7)
  {

LABEL_4:
    v12 = PRUISLogRendering();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v23 = 0;
      _os_log_impl(&dword_1CAE63000, v12, OS_LOG_TYPE_DEFAULT, "Sending user tap event to client scene", v23, 2u);
    }

    v13 = [objc_alloc(MEMORY[0x1E69C5350]) initWithType:*v8 location:{x, y}];
    v14 = [v13 newAction];
    v15 = [MEMORY[0x1E695DFD8] setWithObject:v14];
    [(FBScene *)self->_scene sendActions:v15];

    goto LABEL_9;
  }

  v9 = [(FBScene *)self->_scene clientSettings];
  v10 = [v9 pr_requestedRenderingEventTypes];
  v11 = [v10 containsObject:*v8];

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

- (void)addTransition:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 type];
  if ((PRRenderingTransitionTypeIsValid() & 1) == 0)
  {
    v9 = PRUISLogRendering();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [PRUISPosterRenderingViewController addTransition:];
    }

    goto LABEL_10;
  }

  v6 = [(FBScene *)self->_scene clientSettings];
  v7 = [v6 pr_requestedRenderingTransitionTypes];
  v8 = [v7 containsObject:v5];

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
      v18 = self;
      v19 = 2114;
      v20 = v5;
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
    v18 = self;
    v19 = 2114;
    v20 = v4;
    _os_log_impl(&dword_1CAE63000, v9, OS_LOG_TYPE_DEFAULT, "<%{public}@:%{public}p> adding PRRenderingTransition: %{public}@", &v15, 0x20u);
  }

  [v4 addObserver:self];
LABEL_11:
}

- (void)_notifySceneOfTransitionState:(id)a3
{
  v4 = a3;
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
  v9 = v4;
  v7 = v4;
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

- (void)transitionDidBegin:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = PRUISLogRendering();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v9 = 138543874;
    v10 = v7;
    v11 = 2050;
    v12 = self;
    v13 = 2114;
    v14 = v4;
    _os_log_impl(&dword_1CAE63000, v5, OS_LOG_TYPE_DEFAULT, "<%{public}@:%{public}p> transitionDidBegin: %{public}@", &v9, 0x20u);
  }

  v8 = [MEMORY[0x1E69C5368] stateFromTransition:v4 phase:0];
  [(PRUISPosterRenderingViewController *)self _notifySceneOfTransitionState:v8];
}

- (void)transitionDidUpdate:(id)a3
{
  v4 = a3;
  v5 = PRUISLogRendering();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [PRUISPosterRenderingViewController transitionDidUpdate:];
  }

  v6 = [MEMORY[0x1E69C5368] stateFromTransition:v4 phase:1];
  [(PRUISPosterRenderingViewController *)self _notifySceneOfTransitionState:v6];
}

- (void)transitionDidEnd:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = PRUISLogRendering();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v9 = 138543874;
    v10 = v7;
    v11 = 2050;
    v12 = self;
    v13 = 2114;
    v14 = v4;
    _os_log_impl(&dword_1CAE63000, v5, OS_LOG_TYPE_DEFAULT, "<%{public}@:%{public}p> transitionDidEnd: %{public}@", &v9, 0x20u);
  }

  v8 = [MEMORY[0x1E69C5368] stateFromTransition:v4 phase:2];
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
  v2 = [(PRUISPosterRenderingViewController *)self _contentViewCoordinator];
  v3 = [v2 vibrantObscurableContentView];

  return v3;
}

- (void)snapshotWithOptions:(unint64_t)a3 forScreen:(id)a4 completionBlock:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [(PRUISPosterRenderingViewController *)self _contentViewCoordinator];
  v11 = [v10 obscurableContentView];
  [v11 removeFromSuperview];

  v13 = [(PRUISPosterRenderingViewController *)self _levelSetForSnapshotOptions:a3];
  v12 = [(PRUISPosterRenderingViewController *)self _snapshotRequestForOptions:a3 screen:v9 levelSet:v13];

  [(PRUISPosterRenderingViewController *)self _snapshotWithRequest:v12 completionBlock:v8];
}

- (id)_snapshotRequestForOptions:(unint64_t)a3 screen:(id)a4 levelSet:(id)a5
{
  v31[1] = *MEMORY[0x1E69E9840];
  v8 = a5;
  v9 = MEMORY[0x1E69C52E8];
  v10 = a4;
  v11 = [v9 alloc];
  v12 = [(PRUISPosterRenderingViewController *)self _serverPath];
  v13 = [v11 _initWithPath:v12];

  v14 = [v13 role];
  v16 = v15 = v14;

  v17 = PFPosterRoleSupportsComplications();
  v18 = objc_alloc(MEMORY[0x1E69C5338]);
  v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v20 = [v19 stringValue];
  v29 = v8;
  v31[0] = v8;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:1];
  v22 = [v18 initWithUniqueIdentifier:v20 includeHeaderElements:1 includesComplications:v17 levelSets:v21 isUnlocked:0 renderingContent:0 renderingMode:1 previewContent:1 boundingShape:self->_boundingShape];

  v23 = [(PRUISPosterSnapshotRequest *)[PRUISMutablePosterSnapshotRequest alloc] initWithPoster:v13 definition:v22 interfaceOrientation:self->_activeOrientation];
  [(PRUISMutablePosterSnapshotRequest *)v23 setScreen:v10];

  v24 = [(PRUISPosterRenderingViewController *)self _obscurableContentView];
  if (v24)
  {
    v25 = [PRUISPosterAttachment attachmentWithView:v24 level:*MEMORY[0x1E69C5390] - 1];
    v30 = v25;
    v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v30 count:1];
    [(PRUISMutablePosterSnapshotRequest *)v23 setAttachments:v26];
  }

  v27 = [(PRUISMutablePosterSnapshotRequest *)v23 copy];

  return v27;
}

- (id)_levelSetForSnapshotOptions:(unint64_t)a3
{
  v3 = a3;
  if (a3)
  {
    v6 = [PRUISPosterLevelSet alloc];
    v5 = [(PRUISPosterLevelSet *)v6 initWithLevel:*MEMORY[0x1E69C5390]];
  }

  else if ((a3 & 4) != 0)
  {
    v7 = [PRUISPosterLevelSet alloc];
    if ((v3 & 2) != 0)
    {
      v5 = [(PRUISPosterLevelSet *)v7 initWithNumberOfLevels:2, *MEMORY[0x1E69C5390], *MEMORY[0x1E69C53A0], v9, v10];
    }

    else
    {
      v5 = [(PRUISPosterLevelSet *)v7 initWithNumberOfLevels:3, *MEMORY[0x1E69C5390], *MEMORY[0x1E69C53A0], *MEMORY[0x1E69C5390] - 1, v10];
    }
  }

  else if ((a3 & 2) != 0)
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

- (void)_snapshotWithRequest:(id)a3 completionBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PRUISPosterRenderingViewController *)self _cachedImageForRequest:v6];
  if (v8)
  {
    v7[2](v7, v8, 0);
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
    v11 = [[_PRUISPosterRenderingEnqueuedSnapshot alloc] initWithSnapshotRequest:v6 completionBlock:v7];
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
    v3 = [(NSMutableArray *)self->_enqueuedSnapshotRequests firstObject];
    [(NSMutableArray *)self->_enqueuedSnapshotRequests removeObject:v3];
    v4 = [v3 snapshotRequest];
    v5 = [(PRUISPosterRenderingViewController *)self _cachedImageForRequest:v4];
    if (v5)
    {
      v6 = [v3 completionBlock];
      (v6)[2](v6, v5, 0);
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
      v14 = v3;
      objc_copyWeak(&v16, buf);
      v15 = self;
      [(PRUISPosterSnapshotController *)snapshotController executeSnapshotRequest:v4 completion:v13];
      objc_destroyWeak(&v16);

      objc_destroyWeak(buf);
    }
  }

  else
  {
    self->_isSnapshotting = 0;
    v12 = [(PRUISPosterRenderingViewController *)self _obscurableContentView];
    v7 = [v12 superview];
    v8 = [(PRUISPosterRenderingViewController *)self viewIfLoaded];

    if (v7 != v8)
    {
      v9 = [(PRUISPosterRenderingViewController *)self viewIfLoaded];
      [v9 insertSubview:v12 aboveSubview:self->_sceneView];
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

- (id)_cachedImageForRequest:(id)a3
{
  v4 = a3;
  snapshotController = self->_snapshotController;
  v17 = 0;
  v6 = [(PRUISPosterSnapshotController *)snapshotController currentSnapshotBundleForRequest:v4 error:&v17];
  v7 = v17;
  if (v6)
  {
    v8 = [v4 definition];
    v9 = [v8 levelSets];
    v10 = [v9 firstObject];

    v11 = [v6 snapshotForLevelSet:v10];
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
    v10 = v13;
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
      _os_log_impl(&dword_1CAE63000, v10, OS_LOG_TYPE_DEFAULT, "Unable to fetch latest snapshot bundle", v15, 2u);
    }

    v11 = 0;
  }

  return v11;
}

- (id)_snapshotRequestForDefinition:(id)a3 screen:(id)a4
{
  v18[1] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E69C52E8];
  v7 = a4;
  v8 = a3;
  v9 = [v6 alloc];
  v10 = [(PRUISPosterRenderingViewController *)self _serverPath];
  v11 = [v9 _initWithPath:v10];

  v12 = [(PRUISPosterSnapshotRequest *)[PRUISMutablePosterSnapshotRequest alloc] initWithPoster:v11 definition:v8 interfaceOrientation:self->_activeOrientation];
  [(PRUISMutablePosterSnapshotRequest *)v12 setScreen:v7];

  v13 = [(PRUISPosterRenderingViewController *)self _obscurableContentView];
  if (v13)
  {
    v14 = [PRUISPosterAttachment attachmentWithView:v13 level:*MEMORY[0x1E69C5390] - 1];
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
  v1 = [a1 configuration];
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