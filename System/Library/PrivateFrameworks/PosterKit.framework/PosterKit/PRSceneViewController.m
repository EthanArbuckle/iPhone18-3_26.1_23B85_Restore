@interface PRSceneViewController
+ (NSString)role;
- (BOOL)_depthEffectDisallowed;
- (BOOL)isSceneContentReady;
- (BOOL)scenePresenterIsValid;
- (CGSize)sceneSize;
- (FBSDisplayConfiguration)displayConfiguration;
- (PRPosterConfigurableOptions)configurableOptions;
- (PRSceneViewController)initWithProvider:(id)a3 contents:(id)a4 configurableOptions:(id)a5 configuredProperties:(id)a6 additionalInfo:(id)a7;
- (id)_acquireLocalKeyboardFocusAssertion;
- (id)_defaultDisplayConfigurationForScreen:(id)a3;
- (id)_initWithProvider:(id)a3 contents:(id)a4 configurableOptions:(id)a5 configuredProperties:(id)a6 previewing:(BOOL)a7;
- (id)_presentationBackgroundColor;
- (id)scene:(id)a3 handleActions:(id)a4;
- (unint64_t)significantEventsCounter;
- (void)_acquireKeyboardFocusDeferringRuleIfNecessary;
- (void)_addScenePresentationView:(id)a3;
- (void)_adjustParentScene;
- (void)_configureInitialSceneClientSettings:(id)a3;
- (void)_configureInitialSceneSettings:(id)a3;
- (void)_teardown;
- (void)_update;
- (void)_updatePresentationBackgroundColor;
- (void)_updateSceneToSize:(CGSize)a3 orientation:(int64_t)a4 withAnimationSettings:(id)a5 fence:(id)a6;
- (void)dealloc;
- (void)didMoveToParentViewController:(id)a3;
- (void)invalidate;
- (void)scene:(id)a3 clientDidConnect:(id)a4;
- (void)scene:(id)a3 didUpdateClientSettingsWithDiff:(id)a4 oldClientSettings:(id)a5 transitionContext:(id)a6;
- (void)sceneContentStateDidChange:(id)a3;
- (void)sceneDidActivate:(id)a3;
- (void)sceneDidDeactivate:(id)a3 withError:(id)a4;
- (void)setConfiguredProperties:(id)a3;
- (void)setDeviceMotionEventGenerationActive:(BOOL)a3;
- (void)setDisplayConfiguration:(id)a3;
- (void)setForcesSceneForeground:(BOOL)a3;
- (void)setSceneUserInteractionEnabled:(BOOL)a3;
- (void)updateMotionWithRotation:(_OWORD *)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation PRSceneViewController

- (id)_initWithProvider:(id)a3 contents:(id)a4 configurableOptions:(id)a5 configuredProperties:(id)a6 previewing:(BOOL)a7
{
  v7 = a7;
  v20[1] = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if (v7)
  {
    v19 = @"PRSceneViewControllerAdditionalInfoKeyPreviewing";
    v20[0] = MEMORY[0x1E695E118];
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
  }

  else
  {
    v16 = 0;
  }

  v17 = [(PRSceneViewController *)self initWithProvider:v12 contents:v13 configurableOptions:v14 configuredProperties:v15 additionalInfo:v16];

  return v17;
}

- (PRSceneViewController)initWithProvider:(id)a3 contents:(id)a4 configurableOptions:(id)a5 configuredProperties:(id)a6 additionalInfo:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v90 = v13;
  if (!v13)
  {
    [PRSceneViewController initWithProvider:a2 contents:? configurableOptions:? configuredProperties:? additionalInfo:?];
  }

  v18 = v17;
  v19 = v14;
  NSClassFromString(&cfstr_Pfposterpath.isa);
  if (!v19)
  {
    [PRSceneViewController initWithProvider:a2 contents:? configurableOptions:? configuredProperties:? additionalInfo:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PRSceneViewController initWithProvider:a2 contents:? configurableOptions:? configuredProperties:? additionalInfo:?];
  }

  v20 = objc_opt_class();
  v21 = v19;
  obj = a3;
  if (v20)
  {
    if (objc_opt_isKindOfClass())
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v22 = 0;
  }

  v23 = v22;
  v89 = v21;

  if (v23)
  {
    v24 = [v13 extension];
    v25 = [v24 posterExtensionBundleIdentifier];
    v26 = [v23 identity];
    v27 = [v26 provider];
    v28 = BSEqualStrings();

    if ((v28 & 1) == 0)
    {
      v73 = [MEMORY[0x1E696AEC0] stringWithFormat:@"provider and path mismatch! provider=%@ path=%@", v90, v23];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        [PRSceneViewController initWithProvider:a2 contents:self configurableOptions:v73 configuredProperties:? additionalInfo:?];
      }

      [v73 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x1A8B1D2D8);
    }
  }

  v29 = v15;
  if (v29)
  {
    NSClassFromString(&cfstr_Prposterconfig_3.isa);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [PRSceneViewController initWithProvider:a2 contents:? configurableOptions:? configuredProperties:? additionalInfo:?];
    }
  }

  v30 = v16;
  if (v30)
  {
    NSClassFromString(&cfstr_Prposterconfig_0.isa);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [PRSceneViewController initWithProvider:a2 contents:? configurableOptions:? configuredProperties:? additionalInfo:?];
    }
  }

  v88 = [objc_opt_class() role];
  if (!v88)
  {
    [PRSceneViewController initWithProvider:a2 contents:? configurableOptions:? configuredProperties:? additionalInfo:?];
  }

  v31 = [PRPosterPathModelObjectCache modelObjectCacheForPath:v23];
  v32 = v31;
  v33 = v89;
  if (!v30)
  {
    v34 = [v31 configuredProperties];
    v35 = v34;
    if (v34)
    {
      v36 = v34;
    }

    else
    {
      v36 = [PRPosterPathUtilities loadConfiguredPropertiesForPath:v23 error:0];
    }

    v30 = v36;
  }

  v37 = [v30 mutableCopy];
  v38 = [v30 complicationLayout];
  if (!v38)
  {
    v39 = [v32 complicationLayout];
    v40 = v39;
    if (v39)
    {
      v41 = v39;
    }

    else
    {
      v41 = [PRPosterPathUtilities loadComplicationLayoutForPath:v23 error:0];
    }

    v38 = v41;

    [v37 setComplicationLayout:v38];
  }

  v79 = v38;
  v42 = [v30 renderingConfiguration];
  if (!v42)
  {
    v43 = [v32 renderingConfiguration];
    v44 = v43;
    if (v43)
    {
      v45 = v43;
    }

    else
    {
      v45 = [PRPosterPathUtilities loadRenderingConfigurationForPath:v23 error:0];
    }

    v42 = v45;

    [v37 setRenderingConfiguration:v42];
  }

  v87 = [v37 copy];
  v46 = [v18 objectForKey:@"PRSceneViewControllerAdditionalInfoKeyPreviewing"];
  v76 = [v46 BOOLValue];

  v47 = [v18 objectForKey:@"PRSceneViewControllerAdditionalInfoKeySignificantEventsCounter"];
  v77 = [v47 unsignedIntegerValue];

  v86 = [v18 objectForKey:@"PRSceneViewControllerAdditionalInfoKeyShowHeaderElements"];
  v85 = [v18 objectForKey:@"PRSceneViewControllerAdditionalInfoKeyShowComplications"];
  v84 = [v18 objectForKey:@"PRSceneViewControllerAdditionalInfoKeyRenderingMode"];
  v83 = [v18 objectForKey:@"PRSceneViewControllerAdditionalInfoKeyCreateSceneInCurrentProcess"];
  v48 = [v18 objectForKey:@"PRSceneViewControllerAdditionalInfoKeyBoundingShape"];
  [v48 integerValue];
  v75 = PUIPosterBoundingShapeFromInt();

  v82 = [v18 objectForKey:@"PRSceneViewControllerAdditionalInfoKeyCreateRenderingServiceSceneComponent"];
  v49 = [v18 objectForKey:@"PRSceneViewControllerAdditionalInfoKeyHostedContentSettings"];
  v50 = objc_opt_class();
  v51 = v49;
  v80 = v37;
  if (v50)
  {
    if (objc_opt_isKindOfClass())
    {
      v52 = v51;
    }

    else
    {
      v52 = 0;
    }
  }

  else
  {
    v52 = 0;
  }

  v53 = v52;

  v54 = [v18 objectForKey:@"PRSceneViewControllerAdditionalInfoKeyUserInterfaceStyleLuminanceThreshold"];
  v55 = objc_opt_class();
  v56 = v54;
  v81 = v32;
  if (v55)
  {
    if (objc_opt_isKindOfClass())
    {
      v57 = v56;
    }

    else
    {
      v57 = 0;
    }
  }

  else
  {
    v57 = 0;
  }

  v58 = v57;

  v103.receiver = self;
  v103.super_class = PRSceneViewController;
  v59 = [(PRSceneViewController *)&v103 initWithNibName:0 bundle:0];
  v60 = v59;
  if (v59)
  {
    objc_storeStrong(&v59->_extensionInstance, obj);
    v61 = [v23 identity];
    contentsIdentity = v60->_contentsIdentity;
    v60->_contentsIdentity = v61;

    v63 = [v87 copy];
    configuredProperties = v60->_configuredProperties;
    v60->_configuredProperties = v63;

    v60->_sceneUserInteractionEnabled = 1;
    [(PRSceneViewController *)v60 _configureUsingPath:v89];
    v74 = v23;
    if ([v83 BOOLValue])
    {
      [MEMORY[0x1E699F7C8] pr_createPosterSceneWithinCurrentProcessForRole:v88 path:v89];
    }

    else
    {
      [MEMORY[0x1E699F7C8] pr_createPosterSceneWithRole:v88 path:v89 instance:v90];
    }
    v65 = ;
    scene = v60->_scene;
    v60->_scene = v65;

    [(FBScene *)v60->_scene setDelegate:v60];
    v67 = v60->_scene;
    v92[0] = MEMORY[0x1E69E9820];
    v92[1] = 3221225472;
    v92[2] = __107__PRSceneViewController_initWithProvider_contents_configurableOptions_configuredProperties_additionalInfo___block_invoke;
    v92[3] = &unk_1E78448A8;
    v93 = v84;
    v102 = v76;
    v94 = v86;
    v95 = v85;
    v100 = v75;
    v96 = v53;
    v97 = v58;
    v68 = v29;
    v98 = v29;
    v69 = v60;
    v99 = v69;
    v101 = v77;
    [(FBScene *)v67 configureParameters:v92];
    if ([v82 BOOLValue])
    {
      v70 = [[PRRenderingServiceSceneComponent alloc] initWithScene:v60->_scene];
      renderingServiceSceneComponent = v69->_renderingServiceSceneComponent;
      v69->_renderingServiceSceneComponent = v70;
    }

    v33 = v89;
    v29 = v68;
    v23 = v74;
  }

  return v60;
}

void __107__PRSceneViewController_initWithProvider_contents_configurableOptions_configuredProperties_additionalInfo___block_invoke(uint64_t a1, void *a2)
{
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __107__PRSceneViewController_initWithProvider_contents_configurableOptions_configuredProperties_additionalInfo___block_invoke_2;
  v15[3] = &unk_1E7844880;
  v4 = *(a1 + 32);
  v23 = *(a1 + 104);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v21 = *(a1 + 88);
  v7 = *(a1 + 56);
  *&v8 = v6;
  *(&v8 + 1) = v7;
  *&v9 = v4;
  *(&v9 + 1) = v5;
  v16 = v9;
  v17 = v8;
  v18 = *(a1 + 64);
  v19 = *(a1 + 72);
  v10 = *(a1 + 80);
  v11 = *(a1 + 96);
  v20 = v10;
  v22 = v11;
  v12 = a2;
  [v12 updateSettingsWithBlock:v15];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __107__PRSceneViewController_initWithProvider_contents_configurableOptions_configuredProperties_additionalInfo___block_invoke_3;
  v13[3] = &unk_1E7843DD0;
  v14 = *(a1 + 80);
  [v12 updateClientSettingsWithBlock:v13];
}

void __107__PRSceneViewController_initWithProvider_contents_configurableOptions_configuredProperties_additionalInfo___block_invoke_2(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = [v3 unsignedIntValue];
  }

  else
  {
    v4 = *(a1 + 104);
  }

  [v10 pui_setContent:v4];
  v5 = *(a1 + 40);
  if (v5)
  {
    [v10 pui_setShowsHeaderElements:{objc_msgSend(v5, "BOOLValue")}];
  }

  v6 = *(a1 + 48);
  if (v6)
  {
    [v10 pui_setShowsHeaderElements:{objc_msgSend(v6, "BOOLValue")}];
  }

  if (*(a1 + 88))
  {
    [v10 pui_setPosterBoundingShape:?];
  }

  v7 = v10;
  if (*(a1 + 56))
  {
    [v10 pr_setPosterHostedContentSettings:?];
    v7 = v10;
  }

  if (*(a1 + 64))
  {
    [v10 pr_setUserInterfaceStyleLuminanceThreshold:?];
    v7 = v10;
  }

  [v7 pr_setPosterConfigurableOptions:*(a1 + 72)];
  v8 = [*(*(a1 + 80) + 1080) titleStyleConfiguration];
  [v10 pr_setPosterTitleStyleConfiguration:v8];

  v9 = [*(*(a1 + 80) + 1080) ambientConfiguration];
  [v10 pr_setPosterAmbientConfiguration:v9];

  if (*(a1 + 96))
  {
    [v10 pui_setSignificantEventsCounter:?];
  }

  [*(a1 + 80) _configureInitialSceneSettings:v10];
}

- (void)dealloc
{
  extensionInstance = self->_extensionInstance;
  self->_extensionInstance = 0;

  [(PRSceneViewController *)self invalidate];
  v4.receiver = self;
  v4.super_class = PRSceneViewController;
  [(PRSceneViewController *)&v4 dealloc];
}

- (PRPosterConfigurableOptions)configurableOptions
{
  v2 = [(FBScene *)self->_scene settings];
  v3 = [v2 pr_posterConfigurableOptions];

  return v3;
}

- (void)setConfiguredProperties:(id)a3
{
  v5 = a3;
  if (![(PRPosterConfiguredProperties *)self->_configuredProperties isEqualToConfiguredProperties:v5])
  {
    objc_storeStrong(&self->_configuredProperties, a3);
    scene = self->_scene;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __49__PRSceneViewController_setConfiguredProperties___block_invoke;
    v7[3] = &unk_1E78448D0;
    v8 = v5;
    [(FBScene *)scene updateSettingsWithBlock:v7];
  }
}

void __49__PRSceneViewController_setConfiguredProperties___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 titleStyleConfiguration];
  [v4 pr_setPosterTitleStyleConfiguration:v5];

  v6 = [*(a1 + 32) ambientConfiguration];
  [v4 pr_setPosterAmbientConfiguration:v6];
}

- (void)setSceneUserInteractionEnabled:(BOOL)a3
{
  if (self->_sceneUserInteractionEnabled != a3)
  {
    self->_sceneUserInteractionEnabled = a3;
    if (a3)
    {
      [(UIView *)self->_touchBlockingView removeFromSuperview];
      touchBlockingView = self->_touchBlockingView;
      self->_touchBlockingView = 0;
    }

    else
    {
      v10 = [(PRSceneViewController *)self view];
      v6 = objc_alloc(MEMORY[0x1E69DD250]);
      [(UIView *)v10 bounds];
      v7 = [v6 initWithFrame:?];
      [(UIView *)v7 setAutoresizingMask:18];
      v8 = [(UIView *)v7 layer];
      [v8 setHitTestsAsOpaque:1];

      [(UIView *)v10 addSubview:v7];
      v9 = self->_touchBlockingView;
      self->_touchBlockingView = v7;

      touchBlockingView = v10;
    }
  }
}

- (void)setForcesSceneForeground:(BOOL)a3
{
  if (self->_forcesSceneForeground != a3)
  {
    self->_forcesSceneForeground = a3;
    [(PRSceneViewController *)self _update];
  }
}

- (BOOL)isSceneContentReady
{
  v3 = [(FBScene *)self->_scene clientSettings];
  v4 = [v3 pui_didFinishInitialization];

  return v4 && [(FBScene *)self->_scene contentState]== 2;
}

- (unint64_t)significantEventsCounter
{
  v2 = [(FBScene *)self->_scene settings];
  v3 = [v2 pui_significantEventsCounter];

  return v3;
}

- (id)_defaultDisplayConfigurationForScreen:(id)a3
{
  if (a3)
  {
    [a3 displayConfiguration];
  }

  else
  {
    [MEMORY[0x1E699F7A8] mainConfiguration];
  }
  v3 = ;

  return v3;
}

- (void)setDisplayConfiguration:(id)a3
{
  v5 = a3;
  if (([(FBSDisplayConfiguration *)self->_displayConfiguration isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_displayConfiguration, a3);
    [(PRSceneViewController *)self _update];
  }
}

- (FBSDisplayConfiguration)displayConfiguration
{
  displayConfiguration = self->_displayConfiguration;
  if (displayConfiguration)
  {
    v3 = displayConfiguration;
  }

  else
  {
    v5 = [(PRSceneViewController *)self _screen];
    v3 = [(PRSceneViewController *)self _defaultDisplayConfigurationForScreen:v5];
  }

  return v3;
}

- (void)setDeviceMotionEventGenerationActive:(BOOL)a3
{
  if (self->_deviceMotionEventGenerationActive != a3)
  {
    self->_deviceMotionEventGenerationActive = a3;
    renderingServiceSceneComponent = self->_renderingServiceSceneComponent;
    if (renderingServiceSceneComponent)
    {
      [(PRRenderingServiceSceneComponent *)renderingServiceSceneComponent setDeviceMotionEventGenerationActive:?];
    }
  }
}

- (void)updateMotionWithRotation:(_OWORD *)a3
{
  result = *(a1 + 1048);
  if (result)
  {
    v4 = a3[1];
    v5[0] = *a3;
    v5[1] = v4;
    return [result updateMotionWithRotation:v5];
  }

  return result;
}

- (void)invalidate
{
  v8 = *MEMORY[0x1E69E9840];
  BSDispatchQueueAssertMain();
  if (!self->_invalidated)
  {
    self->_invalidated = 1;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      invalidated = self->_invalidated;
      v4 = 134218240;
      v5 = self;
      v6 = 1024;
      v7 = invalidated;
      _os_log_impl(&dword_1A8AA7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "SceneViewController-%p: invalidated is now %{BOOL}i", &v4, 0x12u);
    }

    [(PRSceneViewController *)self _teardown];
  }
}

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = PRSceneViewController;
  [(PRSceneViewController *)&v2 viewDidLoad];
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PRSceneViewController;
  [(PRSceneViewController *)&v4 viewWillAppear:a3];
  [(PRSceneViewController *)self _update];
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PRSceneViewController;
  [(PRSceneViewController *)&v4 viewDidAppear:a3];
  [(PRSceneViewController *)self _update];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PRSceneViewController;
  [(PRSceneViewController *)&v4 viewWillDisappear:a3];
  if ([(FBScene *)self->_scene isActive])
  {
    [(PRSceneViewController *)self _update];
  }
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PRSceneViewController;
  [(PRSceneViewController *)&v4 viewDidDisappear:a3];
  if ([(FBScene *)self->_scene isActive])
  {
    [(PRSceneViewController *)self _update];
  }
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v26.receiver = self;
  v26.super_class = PRSceneViewController;
  [(PRSceneViewController *)&v26 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
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
  v11 = [(PRSceneViewController *)self interfaceOrientation];
  if (v7)
  {
    v12 = [v10 _toWindowOrientation];
    v13 = [(UIScene *)self->_uiParentScene _synchronizedDrawingFence];
    v14 = MEMORY[0x1E698E608];
    [v7 transitionDuration];
    v15 = [v14 settingsWithDuration:?];
  }

  else
  {
    v12 = v11;
    v15 = 0;
    v13 = 0;
  }

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __76__PRSceneViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v19[3] = &unk_1E78448F8;
  v19[4] = self;
  v20 = v7;
  v23 = width;
  v24 = height;
  v25 = v12;
  v21 = v15;
  v22 = v13;
  v16 = v13;
  v17 = v15;
  v18 = v7;
  [v18 animateAlongsideTransition:v19 completion:0];
}

void __76__PRSceneViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (v5)
  {
    v6 = *(a1 + 64);
    v7 = *(a1 + 72);
  }

  else
  {
    v2 = [*(a1 + 32) view];
    [v2 bounds];
    v6 = v8;
    v7 = v9;
  }

  [v4 _updateSceneToSize:*(a1 + 80) orientation:*(a1 + 48) withAnimationSettings:*(a1 + 56) fence:{v6, v7}];
  if (!v5)
  {
  }
}

- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4
{
  v5.receiver = self;
  v5.super_class = PRSceneViewController;
  [(PRSceneViewController *)&v5 viewDidMoveToWindow:a3 shouldAppearOrDisappear:a4];
  [(PRSceneViewController *)self _update];
}

- (void)didMoveToParentViewController:(id)a3
{
  v4.receiver = self;
  v4.super_class = PRSceneViewController;
  [(PRSceneViewController *)&v4 didMoveToParentViewController:a3];
  [(PRSceneViewController *)self _update];
}

- (void)_teardown
{
  v23 = *MEMORY[0x1E69E9840];
  scenePresenter = self->_scenePresenter;
  if (scenePresenter)
  {
    [(UIScenePresenter *)scenePresenter invalidate];
    v4 = self->_scenePresenter;
    self->_scenePresenter = 0;
  }

  scene = self->_scene;
  if (scene)
  {
    v6 = [(FBScene *)scene identityToken];
    v7 = [v6 stringRepresentation];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      *&buf[4] = self;
      *&buf[12] = 2112;
      *&buf[14] = v7;
      _os_log_impl(&dword_1A8AA7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "SceneViewController-%p: invalidating scene %@", buf, 0x16u);
    }

    [(FBScene *)self->_scene setDelegate:0];
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v20 = __Block_byref_object_copy__3;
    v21 = __Block_byref_object_dispose__3;
    v22 = self->_scene;
    v8 = *(*&buf[8] + 40);
    v13 = MEMORY[0x1E69E9820];
    v14 = 3221225472;
    v15 = __34__PRSceneViewController__teardown__block_invoke;
    v16 = &unk_1E7844920;
    v9 = v7;
    v17 = v9;
    v18 = buf;
    [v8 pui_invalidateWithCompletion:&v13];
    v10 = self->_scene;
    self->_scene = 0;

    _Block_object_dispose(buf, 8);
  }

  [(BSInvalidatable *)self->_keyboardFocusDeferringRule invalidate:v13];
  keyboardFocusDeferringRule = self->_keyboardFocusDeferringRule;
  self->_keyboardFocusDeferringRule = 0;

  [(PRRenderingServiceSceneComponent *)self->_renderingServiceSceneComponent invalidate];
  renderingServiceSceneComponent = self->_renderingServiceSceneComponent;
  self->_renderingServiceSceneComponent = 0;
}

void __34__PRSceneViewController__teardown__block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v2 = *(a1 + 32);
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_1A8AA7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "SceneViewController: invalidated scene %@", &v5, 0xCu);
  }

  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;
}

- (void)_update
{
  BSDispatchQueueAssertMain();
  if (!self->_invalidated)
  {
    [(PRSceneViewController *)self _adjustParentScene];
    if ([(PRSceneViewController *)self scenePresenterIsValid])
    {
      v3 = [(PRSceneViewController *)self interfaceOrientation];
      v4 = [(PRSceneViewController *)self traitCollection];
      v5 = [v4 userInterfaceIdiom];

      v6 = [(PRSceneViewController *)self contentsIdentity];
      v7 = [v6 role];
      v8 = [v7 isEqual:@"PRPosterRoleLockScreen"];
      if (v5 == 1)
      {
        v9 = v3;
      }

      else
      {
        v9 = 1;
      }

      if (v8)
      {
        v3 = v9;
      }

      [(PRSceneViewController *)self sceneSize];
      [(PRSceneViewController *)self _updateSceneToSize:v3 orientation:0 withAnimationSettings:0 fence:?];
      if (!self->_scenePresenter)
      {
        v10 = [(FBScene *)self->_scene uiPresentationManager];
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        v13 = [v10 createPresenterWithIdentifier:v12];
        scenePresenter = self->_scenePresenter;
        self->_scenePresenter = v13;

        v15 = [(PRSceneViewController *)self _presentationBackgroundColor];
        v16 = self->_scenePresenter;
        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 3221225472;
        v20[2] = __32__PRSceneViewController__update__block_invoke;
        v20[3] = &unk_1E7844948;
        v21 = v15;
        v17 = v15;
        [(UIScenePresenter *)v16 modifyPresentationContext:v20];
        [(UIScenePresenter *)self->_scenePresenter activate];
        v18 = [(UIScenePresenter *)self->_scenePresenter presentationView];
        [(PRSceneViewController *)self _addScenePresentationView:v18];
      }
    }

    else
    {
      [(UIScenePresenter *)self->_scenePresenter invalidate];
      v19 = self->_scenePresenter;
      self->_scenePresenter = 0;
    }
  }
}

void __32__PRSceneViewController__update__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setAppearanceStyle:2];
  [v3 setClippingDisabled:PUIDynamicRotationIsActive()];
  [v3 setBackgroundColorWhileHosting:*(a1 + 32)];
}

- (BOOL)scenePresenterIsValid
{
  v2 = [(PRSceneViewController *)self view];
  v3 = [v2 window];
  v4 = v3 != 0;

  return v4;
}

- (CGSize)sceneSize
{
  v2 = [(PRSceneViewController *)self view];
  v3 = [v2 window];
  [v3 bounds];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (id)_presentationBackgroundColor
{
  if ([(PRSceneViewController *)self isSceneContentReady])
  {
    has_internal_content = os_variant_has_internal_content();
    v3 = MEMORY[0x1E69DC888];
    if (has_internal_content)
    {
      v4 = [MEMORY[0x1E69DC888] systemPinkColor];
      goto LABEL_6;
    }
  }

  else
  {
    v3 = MEMORY[0x1E69DC888];
  }

  v4 = [v3 blackColor];
LABEL_6:

  return v4;
}

- (void)_addScenePresentationView:(id)a3
{
  v4 = a3;
  v5 = [(PRSceneViewController *)self view];
  [v5 addSubview:v4];

  v6 = [(PRSceneViewController *)self view];
  [v6 sendSubviewToBack:v4];
}

- (void)_adjustParentScene
{
  v3 = [(PRSceneViewController *)self view];
  v4 = [v3 window];
  obj = [v4 windowScene];

  v5 = obj;
  if (self->_uiParentScene != obj)
  {
    objc_storeStrong(&self->_uiParentScene, obj);
    v5 = obj;
  }
}

- (void)_updateSceneToSize:(CGSize)a3 orientation:(int64_t)a4 withAnimationSettings:(id)a5 fence:(id)a6
{
  v9 = a5;
  v10 = a6;
  v11 = [(PRSceneViewController *)self displayConfiguration];
  [v11 bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = [(PRSceneViewController *)self view];
  [v20 bounds];

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

  scene = self->_scene;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __84__PRSceneViewController__updateSceneToSize_orientation_withAnimationSettings_fence___block_invoke;
  v29[3] = &unk_1E7844970;
  v29[4] = self;
  v30 = v11;
  v33 = v13;
  v34 = v15;
  v35 = v17;
  v36 = v19;
  v37 = a4;
  v31 = v10;
  v32 = v9;
  v26 = v9;
  v27 = v10;
  v28 = v11;
  [(FBScene *)scene performUpdate:v29];
}

void __84__PRSceneViewController__updateSceneToSize_orientation_withAnimationSettings_fence___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  [v7 setForeground:{objc_msgSend(v5, "_shouldSceneBeForeground")}];
  [v7 setDisplayConfiguration:*(a1 + 40)];
  [v7 setFrame:{*(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88)}];
  [v7 setInterfaceOrientation:*(a1 + 96)];
  [v6 setAnimationFence:*(a1 + 48)];
  [v6 setAnimationSettings:*(a1 + 56)];
  [v7 pr_setDepthEffectDisallowed:{objc_msgSend(*(a1 + 32), "_depthEffectDisallowed")}];
  [*(a1 + 32) _updateSceneSettings:v7 transitionContext:v6];
}

- (BOOL)_depthEffectDisallowed
{
  v2 = self;
  v3 = [(PRSceneViewController *)self view];
  v4 = [v3 window];
  v5 = [v4 windowScene];
  v6 = [v5 effectiveGeometry];
  v7 = [v6 interfaceOrientation];

  LODWORD(v6) = (v7 - 1) < 2;
  v8 = [(PRSceneViewController *)v2 configuredProperties];
  v9 = [v8 complicationLayout];
  v10 = [v9 complications];
  v11 = [v10 count] != 0;

  v12 = [v8 titleStyleConfiguration];
  v13 = [v12 prefersVerticalTitleLayout];

  LOBYTE(v2) = PRIsDepthEffectDisallowedWithRowMode(v6, v11, v13, [(PRSceneViewController *)v2 complicationRowMode]);
  return v2;
}

- (void)_configureInitialSceneSettings:(id)a3
{
  v4 = a3;
  v5 = [(PRSceneViewController *)self configuredProperties];
  v11 = [v5 complicationLayout];

  v6 = [v11 complications];
  v7 = [v6 count] != 0;

  v8 = [v11 sidebarComplications];
  v9 = [v8 count] != 0;

  v10 = [v11 complicationsUseBottomLayout];
  [v4 pui_setComplicationRowConfigured:v7];
  [v4 pui_setComplicationSidebarConfigured:v9];
  [v4 pui_setComplicationRowAtBottom:v10];
}

- (void)_configureInitialSceneClientSettings:(id)a3
{
  v4 = a3;
  v5 = [(PRSceneViewController *)self configuredProperties];
  v6 = [v5 renderingConfiguration];
  v7 = v6;
  if (v6)
  {
    v12 = v6;
  }

  else
  {
    v8 = [(PRSceneViewController *)self configurableOptions];
    v9 = [v8 preferredRenderingConfiguration];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = objc_alloc_init(PRPosterRenderingConfiguration);
    }

    v12 = v11;
  }

  [v4 pr_setDepthEffectDisabled:{-[PRPosterRenderingConfiguration isDepthEffectDisabled](v12, "isDepthEffectDisabled")}];
  [v4 pr_setMotionEffectsDisabled:{-[PRPosterRenderingConfiguration areMotionEffectsDisabled](v12, "areMotionEffectsDisabled")}];
  [v4 pr_setSupportedMotionEffectsMode:0];
}

- (void)_updatePresentationBackgroundColor
{
  v3 = [(PRSceneViewController *)self _presentationBackgroundColor];
  scenePresenter = self->_scenePresenter;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __59__PRSceneViewController__updatePresentationBackgroundColor__block_invoke;
  v6[3] = &unk_1E7844948;
  v7 = v3;
  v5 = v3;
  [(UIScenePresenter *)scenePresenter modifyPresentationContext:v6];
}

- (void)_acquireKeyboardFocusDeferringRuleIfNecessary
{
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_0_3(&dword_1A8AA7000, v2, v3, "%{public}@-%{public}p: Cannot acquire keyboard focus deferring assertion because parent scene is nil", v4, v5, v6, v7, v8);
}

- (id)_acquireLocalKeyboardFocusAssertion
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = PRLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    *buf = 138412546;
    v15 = v5;
    v16 = 2048;
    v17 = self;
    _os_log_impl(&dword_1A8AA7000, v3, OS_LOG_TYPE_DEFAULT, "%@-%p: acquiring local keyboard focus assertion and invalidating remote deferring rule", buf, 0x16u);
  }

  [(BSInvalidatable *)self->_keyboardFocusDeferringRule invalidate];
  keyboardFocusDeferringRule = self->_keyboardFocusDeferringRule;
  self->_keyboardFocusDeferringRule = 0;

  objc_initWeak(buf, self);
  v7 = objc_alloc(MEMORY[0x1E698E778]);
  v8 = [MEMORY[0x1E696AFB0] UUID];
  v9 = [v8 UUIDString];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __60__PRSceneViewController__acquireLocalKeyboardFocusAssertion__block_invoke;
  v12[3] = &unk_1E7844998;
  objc_copyWeak(&v13, buf);
  v10 = [v7 initWithIdentifier:v9 forReason:@"localKeyboardFocus" invalidationBlock:v12];

  objc_destroyWeak(&v13);
  objc_destroyWeak(buf);

  return v10;
}

void __60__PRSceneViewController__acquireLocalKeyboardFocusAssertion__block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  objc_copyWeak(&to, (a1 + 32));
  v4 = objc_loadWeakRetained(&to);

  if (v4)
  {
    v5 = PRLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_loadWeakRetained(&to);
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = objc_loadWeakRetained(&to);
      *buf = 138412546;
      v13 = v8;
      v14 = 2048;
      v15 = v9;
      _os_log_impl(&dword_1A8AA7000, v5, OS_LOG_TYPE_DEFAULT, "%@-%p: invalidating local keyboard focus assertion", buf, 0x16u);
    }

    v10 = objc_loadWeakRetained(&to);
    [v10 _acquireKeyboardFocusDeferringRuleIfNecessary];
  }

  objc_destroyWeak(&to);
}

- (id)scene:(id)a3 handleActions:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v7 = a4;
    v8 = [a3 identityToken];
    v9 = [v8 stringRepresentation];

    v11 = 134218498;
    v12 = self;
    v13 = 2112;
    v14 = v9;
    v15 = 2112;
    v16 = v7;
    _os_log_impl(&dword_1A8AA7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "SceneViewController-%p: scene %@ handle actions %@", &v11, 0x20u);
  }

  return 0;
}

- (void)sceneContentStateDidChange:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v5 = a3;
    v6 = [v5 identityToken];
    v7 = [v6 stringRepresentation];
    [v5 contentState];

    v8 = NSStringFromFBSceneContentState();
    v9 = 134218498;
    v10 = self;
    v11 = 2112;
    v12 = v7;
    v13 = 2112;
    v14 = v8;
    _os_log_impl(&dword_1A8AA7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "SceneViewController-%p: scene %@ did change content state to %@", &v9, 0x20u);
  }

  [(PRSceneViewController *)self _sceneContentReadinessDidChange];
}

- (void)sceneDidActivate:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v5 = [a3 identityToken];
    v6 = [v5 stringRepresentation];
    v7 = 134218242;
    v8 = self;
    v9 = 2112;
    v10 = v6;
    _os_log_impl(&dword_1A8AA7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "SceneViewController-%p: scene %@ did activate", &v7, 0x16u);
  }
}

- (void)scene:(id)a3 clientDidConnect:(id)a4
{
  v5 = a3;
  v6 = [v5 clientSettings];
  v7 = [v6 pr_areMotionEffectsDisabled];

  v8 = [PRPosterRenderingConfiguration alloc];
  v9 = [v5 clientSettings];
  v10 = -[PRPosterRenderingConfiguration initWithDepthEffectDisabled:motionEffectsDisabled:](v8, "initWithDepthEffectDisabled:motionEffectsDisabled:", [v9 pr_isDepthEffectDisabled], v7);

  v11 = [(PRPosterConfiguredProperties *)self->_configuredProperties mutableCopy];
  [v11 setRenderingConfiguration:v10];
  [(PRSceneViewController *)self setConfiguredProperties:v11];
  [(PRSceneViewController *)self _acquireKeyboardFocusDeferringRuleIfNecessary];
  if (v7)
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
  v14[2] = __48__PRSceneViewController_scene_clientDidConnect___block_invoke;
  v14[3] = &__block_descriptor_40_e33_v16__0__FBSMutableSceneSettings_8l;
  v14[4] = v12;
  [v5 updateSettings:v14];
}

- (void)sceneDidDeactivate:(id)a3 withError:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v6 identityToken];
    v9 = [v8 stringRepresentation];
    v17 = 134218498;
    v18 = self;
    v19 = 2112;
    v20 = v9;
    v21 = 2112;
    v22 = v7;
    _os_log_impl(&dword_1A8AA7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "SceneViewController-%p: scene %@ did deactivate with error %@", &v17, 0x20u);
  }

  v10 = [v7 domain];
  if ([v10 isEqualToString:*MEMORY[0x1E699F798]])
  {
    v11 = [v7 code];

    if (v11 == 1)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        v12 = [v6 identityToken];
        v13 = [v12 stringRepresentation];
        v17 = 134218498;
        v18 = self;
        v19 = 2112;
        v20 = v13;
        v21 = 2112;
        v22 = v7;
        _os_log_impl(&dword_1A8AA7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "SceneViewController-%p: scene %@ did deactivate with fatal error %@", &v17, 0x20u);
      }

      [(PRSceneViewController *)self _failWithFatalError:v7];
      goto LABEL_12;
    }
  }

  else
  {
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v14 = [v6 identityToken];
    v15 = [v14 stringRepresentation];
    v17 = 134218498;
    v18 = self;
    v19 = 2112;
    v20 = v15;
    v21 = 2112;
    v22 = v7;
    _os_log_impl(&dword_1A8AA7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "SceneViewController-%p: scene %@ did deactivate with transient error %@", &v17, 0x20u);
  }

  [(PRSceneViewController *)self _update];
LABEL_12:
  [(BSInvalidatable *)self->_keyboardFocusDeferringRule invalidate];
  keyboardFocusDeferringRule = self->_keyboardFocusDeferringRule;
  self->_keyboardFocusDeferringRule = 0;
}

- (void)scene:(id)a3 didUpdateClientSettingsWithDiff:(id)a4 oldClientSettings:(id)a5 transitionContext:(id)a6
{
  v26 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v14 = [v10 identityToken];
    v15 = [v14 stringRepresentation];
    v18 = 134218754;
    v19 = self;
    v20 = 2112;
    v21 = v15;
    v22 = 2112;
    v23 = v11;
    v24 = 2112;
    v25 = v13;
    _os_log_impl(&dword_1A8AA7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "SceneViewController-%p: scene %@ did update client settings with diff %@, transition %@", &v18, 0x2Au);
  }

  v16 = [v10 clientSettings];
  v17 = [v16 pui_didFinishInitialization];
  if (v17 != [v12 pui_didFinishInitialization])
  {
    [(PRSceneViewController *)self _sceneContentReadinessDidChange];
  }
}

+ (NSString)role
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

- (void)initWithProvider:(char *)a1 contents:configurableOptions:configuredProperties:additionalInfo:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_2(&dword_1A8AA7000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:PFPosterPathClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithProvider:(uint64_t)a3 contents:configurableOptions:configuredProperties:additionalInfo:.cold.2(const char *a1, uint64_t a2, uint64_t a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = NSStringFromSelector(a1);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = 138544642;
  v9 = v5;
  v10 = 2114;
  v11 = v7;
  v12 = 2048;
  v13 = a2;
  v14 = 2114;
  v15 = @"PRSceneViewController.m";
  v16 = 1024;
  v17 = 126;
  v18 = 2114;
  v19 = a3;
  _os_log_error_impl(&dword_1A8AA7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v8, 0x3Au);
}

- (void)initWithProvider:(char *)a1 contents:configurableOptions:configuredProperties:additionalInfo:.cold.3(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_2(&dword_1A8AA7000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:PRPosterConfigurableOptionsClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithProvider:(char *)a1 contents:configurableOptions:configuredProperties:additionalInfo:.cold.4(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_2(&dword_1A8AA7000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:PRPosterConfiguredPropertiesClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithProvider:(char *)a1 contents:configurableOptions:configuredProperties:additionalInfo:.cold.5(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_2(&dword_1A8AA7000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"role != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithProvider:(char *)a1 contents:configurableOptions:configuredProperties:additionalInfo:.cold.6(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_2(&dword_1A8AA7000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithProvider:(char *)a1 contents:configurableOptions:configuredProperties:additionalInfo:.cold.7(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_2(&dword_1A8AA7000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"provider", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end