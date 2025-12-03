@interface PRSceneViewController
+ (NSString)role;
- (BOOL)_depthEffectDisallowed;
- (BOOL)isSceneContentReady;
- (BOOL)scenePresenterIsValid;
- (CGSize)sceneSize;
- (FBSDisplayConfiguration)displayConfiguration;
- (PRPosterConfigurableOptions)configurableOptions;
- (PRSceneViewController)initWithProvider:(id)provider contents:(id)contents configurableOptions:(id)options configuredProperties:(id)properties additionalInfo:(id)info;
- (id)_acquireLocalKeyboardFocusAssertion;
- (id)_defaultDisplayConfigurationForScreen:(id)screen;
- (id)_initWithProvider:(id)provider contents:(id)contents configurableOptions:(id)options configuredProperties:(id)properties previewing:(BOOL)previewing;
- (id)_presentationBackgroundColor;
- (id)scene:(id)scene handleActions:(id)actions;
- (unint64_t)significantEventsCounter;
- (void)_acquireKeyboardFocusDeferringRuleIfNecessary;
- (void)_addScenePresentationView:(id)view;
- (void)_adjustParentScene;
- (void)_configureInitialSceneClientSettings:(id)settings;
- (void)_configureInitialSceneSettings:(id)settings;
- (void)_teardown;
- (void)_update;
- (void)_updatePresentationBackgroundColor;
- (void)_updateSceneToSize:(CGSize)size orientation:(int64_t)orientation withAnimationSettings:(id)settings fence:(id)fence;
- (void)dealloc;
- (void)didMoveToParentViewController:(id)controller;
- (void)invalidate;
- (void)scene:(id)scene clientDidConnect:(id)connect;
- (void)scene:(id)scene didUpdateClientSettingsWithDiff:(id)diff oldClientSettings:(id)settings transitionContext:(id)context;
- (void)sceneContentStateDidChange:(id)change;
- (void)sceneDidActivate:(id)activate;
- (void)sceneDidDeactivate:(id)deactivate withError:(id)error;
- (void)setConfiguredProperties:(id)properties;
- (void)setDeviceMotionEventGenerationActive:(BOOL)active;
- (void)setDisplayConfiguration:(id)configuration;
- (void)setForcesSceneForeground:(BOOL)foreground;
- (void)setSceneUserInteractionEnabled:(BOOL)enabled;
- (void)updateMotionWithRotation:(_OWORD *)rotation;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation PRSceneViewController

- (id)_initWithProvider:(id)provider contents:(id)contents configurableOptions:(id)options configuredProperties:(id)properties previewing:(BOOL)previewing
{
  previewingCopy = previewing;
  v20[1] = *MEMORY[0x1E69E9840];
  providerCopy = provider;
  contentsCopy = contents;
  optionsCopy = options;
  propertiesCopy = properties;
  if (previewingCopy)
  {
    v19 = @"PRSceneViewControllerAdditionalInfoKeyPreviewing";
    v20[0] = MEMORY[0x1E695E118];
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
  }

  else
  {
    v16 = 0;
  }

  v17 = [(PRSceneViewController *)self initWithProvider:providerCopy contents:contentsCopy configurableOptions:optionsCopy configuredProperties:propertiesCopy additionalInfo:v16];

  return v17;
}

- (PRSceneViewController)initWithProvider:(id)provider contents:(id)contents configurableOptions:(id)options configuredProperties:(id)properties additionalInfo:(id)info
{
  providerCopy = provider;
  contentsCopy = contents;
  optionsCopy = options;
  propertiesCopy = properties;
  infoCopy = info;
  v90 = providerCopy;
  if (!providerCopy)
  {
    [PRSceneViewController initWithProvider:a2 contents:? configurableOptions:? configuredProperties:? additionalInfo:?];
  }

  v18 = infoCopy;
  v19 = contentsCopy;
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
  obj = provider;
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
    extension = [providerCopy extension];
    posterExtensionBundleIdentifier = [extension posterExtensionBundleIdentifier];
    identity = [v23 identity];
    provider = [identity provider];
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

  v29 = optionsCopy;
  if (v29)
  {
    NSClassFromString(&cfstr_Prposterconfig_3.isa);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [PRSceneViewController initWithProvider:a2 contents:? configurableOptions:? configuredProperties:? additionalInfo:?];
    }
  }

  v30 = propertiesCopy;
  if (v30)
  {
    NSClassFromString(&cfstr_Prposterconfig_0.isa);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [PRSceneViewController initWithProvider:a2 contents:? configurableOptions:? configuredProperties:? additionalInfo:?];
    }
  }

  role = [objc_opt_class() role];
  if (!role)
  {
    [PRSceneViewController initWithProvider:a2 contents:? configurableOptions:? configuredProperties:? additionalInfo:?];
  }

  v31 = [PRPosterPathModelObjectCache modelObjectCacheForPath:v23];
  v32 = v31;
  v33 = v89;
  if (!v30)
  {
    configuredProperties = [v31 configuredProperties];
    v35 = configuredProperties;
    if (configuredProperties)
    {
      v36 = configuredProperties;
    }

    else
    {
      v36 = [PRPosterPathUtilities loadConfiguredPropertiesForPath:v23 error:0];
    }

    v30 = v36;
  }

  v37 = [v30 mutableCopy];
  complicationLayout = [v30 complicationLayout];
  if (!complicationLayout)
  {
    complicationLayout2 = [v32 complicationLayout];
    v40 = complicationLayout2;
    if (complicationLayout2)
    {
      v41 = complicationLayout2;
    }

    else
    {
      v41 = [PRPosterPathUtilities loadComplicationLayoutForPath:v23 error:0];
    }

    complicationLayout = v41;

    [v37 setComplicationLayout:complicationLayout];
  }

  v79 = complicationLayout;
  renderingConfiguration = [v30 renderingConfiguration];
  if (!renderingConfiguration)
  {
    renderingConfiguration2 = [v32 renderingConfiguration];
    v44 = renderingConfiguration2;
    if (renderingConfiguration2)
    {
      v45 = renderingConfiguration2;
    }

    else
    {
      v45 = [PRPosterPathUtilities loadRenderingConfigurationForPath:v23 error:0];
    }

    renderingConfiguration = v45;

    [v37 setRenderingConfiguration:renderingConfiguration];
  }

  v87 = [v37 copy];
  v46 = [v18 objectForKey:@"PRSceneViewControllerAdditionalInfoKeyPreviewing"];
  bOOLValue = [v46 BOOLValue];

  v47 = [v18 objectForKey:@"PRSceneViewControllerAdditionalInfoKeySignificantEventsCounter"];
  unsignedIntegerValue = [v47 unsignedIntegerValue];

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
    identity2 = [v23 identity];
    contentsIdentity = v60->_contentsIdentity;
    v60->_contentsIdentity = identity2;

    v63 = [v87 copy];
    configuredProperties = v60->_configuredProperties;
    v60->_configuredProperties = v63;

    v60->_sceneUserInteractionEnabled = 1;
    [(PRSceneViewController *)v60 _configureUsingPath:v89];
    v74 = v23;
    if ([v83 BOOLValue])
    {
      [MEMORY[0x1E699F7C8] pr_createPosterSceneWithinCurrentProcessForRole:role path:v89];
    }

    else
    {
      [MEMORY[0x1E699F7C8] pr_createPosterSceneWithRole:role path:v89 instance:v90];
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
    v102 = bOOLValue;
    v94 = v86;
    v95 = v85;
    v100 = v75;
    v96 = v53;
    v97 = v58;
    v68 = v29;
    v98 = v29;
    v69 = v60;
    v99 = v69;
    v101 = unsignedIntegerValue;
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
  settings = [(FBScene *)self->_scene settings];
  pr_posterConfigurableOptions = [settings pr_posterConfigurableOptions];

  return pr_posterConfigurableOptions;
}

- (void)setConfiguredProperties:(id)properties
{
  propertiesCopy = properties;
  if (![(PRPosterConfiguredProperties *)self->_configuredProperties isEqualToConfiguredProperties:propertiesCopy])
  {
    objc_storeStrong(&self->_configuredProperties, properties);
    scene = self->_scene;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __49__PRSceneViewController_setConfiguredProperties___block_invoke;
    v7[3] = &unk_1E78448D0;
    v8 = propertiesCopy;
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

- (void)setSceneUserInteractionEnabled:(BOOL)enabled
{
  if (self->_sceneUserInteractionEnabled != enabled)
  {
    self->_sceneUserInteractionEnabled = enabled;
    if (enabled)
    {
      [(UIView *)self->_touchBlockingView removeFromSuperview];
      touchBlockingView = self->_touchBlockingView;
      self->_touchBlockingView = 0;
    }

    else
    {
      view = [(PRSceneViewController *)self view];
      v6 = objc_alloc(MEMORY[0x1E69DD250]);
      [(UIView *)view bounds];
      v7 = [v6 initWithFrame:?];
      [(UIView *)v7 setAutoresizingMask:18];
      layer = [(UIView *)v7 layer];
      [layer setHitTestsAsOpaque:1];

      [(UIView *)view addSubview:v7];
      v9 = self->_touchBlockingView;
      self->_touchBlockingView = v7;

      touchBlockingView = view;
    }
  }
}

- (void)setForcesSceneForeground:(BOOL)foreground
{
  if (self->_forcesSceneForeground != foreground)
  {
    self->_forcesSceneForeground = foreground;
    [(PRSceneViewController *)self _update];
  }
}

- (BOOL)isSceneContentReady
{
  clientSettings = [(FBScene *)self->_scene clientSettings];
  pui_didFinishInitialization = [clientSettings pui_didFinishInitialization];

  return pui_didFinishInitialization && [(FBScene *)self->_scene contentState]== 2;
}

- (unint64_t)significantEventsCounter
{
  settings = [(FBScene *)self->_scene settings];
  pui_significantEventsCounter = [settings pui_significantEventsCounter];

  return pui_significantEventsCounter;
}

- (id)_defaultDisplayConfigurationForScreen:(id)screen
{
  if (screen)
  {
    [screen displayConfiguration];
  }

  else
  {
    [MEMORY[0x1E699F7A8] mainConfiguration];
  }
  v3 = ;

  return v3;
}

- (void)setDisplayConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (([(FBSDisplayConfiguration *)self->_displayConfiguration isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_displayConfiguration, configuration);
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
    _screen = [(PRSceneViewController *)self _screen];
    v3 = [(PRSceneViewController *)self _defaultDisplayConfigurationForScreen:_screen];
  }

  return v3;
}

- (void)setDeviceMotionEventGenerationActive:(BOOL)active
{
  if (self->_deviceMotionEventGenerationActive != active)
  {
    self->_deviceMotionEventGenerationActive = active;
    renderingServiceSceneComponent = self->_renderingServiceSceneComponent;
    if (renderingServiceSceneComponent)
    {
      [(PRRenderingServiceSceneComponent *)renderingServiceSceneComponent setDeviceMotionEventGenerationActive:?];
    }
  }
}

- (void)updateMotionWithRotation:(_OWORD *)rotation
{
  result = *(self + 1048);
  if (result)
  {
    v4 = rotation[1];
    v5[0] = *rotation;
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
      selfCopy = self;
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

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = PRSceneViewController;
  [(PRSceneViewController *)&v4 viewWillAppear:appear];
  [(PRSceneViewController *)self _update];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = PRSceneViewController;
  [(PRSceneViewController *)&v4 viewDidAppear:appear];
  [(PRSceneViewController *)self _update];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = PRSceneViewController;
  [(PRSceneViewController *)&v4 viewWillDisappear:disappear];
  if ([(FBScene *)self->_scene isActive])
  {
    [(PRSceneViewController *)self _update];
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = PRSceneViewController;
  [(PRSceneViewController *)&v4 viewDidDisappear:disappear];
  if ([(FBScene *)self->_scene isActive])
  {
    [(PRSceneViewController *)self _update];
  }
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  v26.receiver = self;
  v26.super_class = PRSceneViewController;
  [(PRSceneViewController *)&v26 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
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
  interfaceOrientation = [(PRSceneViewController *)self interfaceOrientation];
  if (coordinatorCopy)
  {
    _toWindowOrientation = [v10 _toWindowOrientation];
    _synchronizedDrawingFence = [(UIScene *)self->_uiParentScene _synchronizedDrawingFence];
    v14 = MEMORY[0x1E698E608];
    [coordinatorCopy transitionDuration];
    v15 = [v14 settingsWithDuration:?];
  }

  else
  {
    _toWindowOrientation = interfaceOrientation;
    v15 = 0;
    _synchronizedDrawingFence = 0;
  }

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __76__PRSceneViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v19[3] = &unk_1E78448F8;
  v19[4] = self;
  v20 = coordinatorCopy;
  v23 = width;
  v24 = height;
  v25 = _toWindowOrientation;
  v21 = v15;
  v22 = _synchronizedDrawingFence;
  v16 = _synchronizedDrawingFence;
  v17 = v15;
  v18 = coordinatorCopy;
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

- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = PRSceneViewController;
  [(PRSceneViewController *)&v5 viewDidMoveToWindow:window shouldAppearOrDisappear:disappear];
  [(PRSceneViewController *)self _update];
}

- (void)didMoveToParentViewController:(id)controller
{
  v4.receiver = self;
  v4.super_class = PRSceneViewController;
  [(PRSceneViewController *)&v4 didMoveToParentViewController:controller];
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
    identityToken = [(FBScene *)scene identityToken];
    stringRepresentation = [identityToken stringRepresentation];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      *&buf[4] = self;
      *&buf[12] = 2112;
      *&buf[14] = stringRepresentation;
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
    v9 = stringRepresentation;
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
      interfaceOrientation = [(PRSceneViewController *)self interfaceOrientation];
      traitCollection = [(PRSceneViewController *)self traitCollection];
      userInterfaceIdiom = [traitCollection userInterfaceIdiom];

      contentsIdentity = [(PRSceneViewController *)self contentsIdentity];
      role = [contentsIdentity role];
      v8 = [role isEqual:@"PRPosterRoleLockScreen"];
      if (userInterfaceIdiom == 1)
      {
        v9 = interfaceOrientation;
      }

      else
      {
        v9 = 1;
      }

      if (v8)
      {
        interfaceOrientation = v9;
      }

      [(PRSceneViewController *)self sceneSize];
      [(PRSceneViewController *)self _updateSceneToSize:interfaceOrientation orientation:0 withAnimationSettings:0 fence:?];
      if (!self->_scenePresenter)
      {
        uiPresentationManager = [(FBScene *)self->_scene uiPresentationManager];
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        v13 = [uiPresentationManager createPresenterWithIdentifier:v12];
        scenePresenter = self->_scenePresenter;
        self->_scenePresenter = v13;

        _presentationBackgroundColor = [(PRSceneViewController *)self _presentationBackgroundColor];
        v16 = self->_scenePresenter;
        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 3221225472;
        v20[2] = __32__PRSceneViewController__update__block_invoke;
        v20[3] = &unk_1E7844948;
        v21 = _presentationBackgroundColor;
        v17 = _presentationBackgroundColor;
        [(UIScenePresenter *)v16 modifyPresentationContext:v20];
        [(UIScenePresenter *)self->_scenePresenter activate];
        presentationView = [(UIScenePresenter *)self->_scenePresenter presentationView];
        [(PRSceneViewController *)self _addScenePresentationView:presentationView];
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
  view = [(PRSceneViewController *)self view];
  window = [view window];
  v4 = window != 0;

  return v4;
}

- (CGSize)sceneSize
{
  view = [(PRSceneViewController *)self view];
  window = [view window];
  [window bounds];
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
      systemPinkColor = [MEMORY[0x1E69DC888] systemPinkColor];
      goto LABEL_6;
    }
  }

  else
  {
    v3 = MEMORY[0x1E69DC888];
  }

  systemPinkColor = [v3 blackColor];
LABEL_6:

  return systemPinkColor;
}

- (void)_addScenePresentationView:(id)view
{
  viewCopy = view;
  view = [(PRSceneViewController *)self view];
  [view addSubview:viewCopy];

  view2 = [(PRSceneViewController *)self view];
  [view2 sendSubviewToBack:viewCopy];
}

- (void)_adjustParentScene
{
  view = [(PRSceneViewController *)self view];
  window = [view window];
  obj = [window windowScene];

  v5 = obj;
  if (self->_uiParentScene != obj)
  {
    objc_storeStrong(&self->_uiParentScene, obj);
    v5 = obj;
  }
}

- (void)_updateSceneToSize:(CGSize)size orientation:(int64_t)orientation withAnimationSettings:(id)settings fence:(id)fence
{
  settingsCopy = settings;
  fenceCopy = fence;
  displayConfiguration = [(PRSceneViewController *)self displayConfiguration];
  [displayConfiguration bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  view = [(PRSceneViewController *)self view];
  [view bounds];

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
  v30 = displayConfiguration;
  v33 = v13;
  v34 = v15;
  v35 = v17;
  v36 = v19;
  orientationCopy = orientation;
  v31 = fenceCopy;
  v32 = settingsCopy;
  v26 = settingsCopy;
  v27 = fenceCopy;
  v28 = displayConfiguration;
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
  selfCopy = self;
  view = [(PRSceneViewController *)self view];
  window = [view window];
  windowScene = [window windowScene];
  effectiveGeometry = [windowScene effectiveGeometry];
  interfaceOrientation = [effectiveGeometry interfaceOrientation];

  LODWORD(effectiveGeometry) = (interfaceOrientation - 1) < 2;
  configuredProperties = [(PRSceneViewController *)selfCopy configuredProperties];
  complicationLayout = [configuredProperties complicationLayout];
  complications = [complicationLayout complications];
  v11 = [complications count] != 0;

  titleStyleConfiguration = [configuredProperties titleStyleConfiguration];
  prefersVerticalTitleLayout = [titleStyleConfiguration prefersVerticalTitleLayout];

  LOBYTE(selfCopy) = PRIsDepthEffectDisallowedWithRowMode(effectiveGeometry, v11, prefersVerticalTitleLayout, [(PRSceneViewController *)selfCopy complicationRowMode]);
  return selfCopy;
}

- (void)_configureInitialSceneSettings:(id)settings
{
  settingsCopy = settings;
  configuredProperties = [(PRSceneViewController *)self configuredProperties];
  complicationLayout = [configuredProperties complicationLayout];

  complications = [complicationLayout complications];
  v7 = [complications count] != 0;

  sidebarComplications = [complicationLayout sidebarComplications];
  v9 = [sidebarComplications count] != 0;

  complicationsUseBottomLayout = [complicationLayout complicationsUseBottomLayout];
  [settingsCopy pui_setComplicationRowConfigured:v7];
  [settingsCopy pui_setComplicationSidebarConfigured:v9];
  [settingsCopy pui_setComplicationRowAtBottom:complicationsUseBottomLayout];
}

- (void)_configureInitialSceneClientSettings:(id)settings
{
  settingsCopy = settings;
  configuredProperties = [(PRSceneViewController *)self configuredProperties];
  renderingConfiguration = [configuredProperties renderingConfiguration];
  v7 = renderingConfiguration;
  if (renderingConfiguration)
  {
    v12 = renderingConfiguration;
  }

  else
  {
    configurableOptions = [(PRSceneViewController *)self configurableOptions];
    preferredRenderingConfiguration = [configurableOptions preferredRenderingConfiguration];
    v10 = preferredRenderingConfiguration;
    if (preferredRenderingConfiguration)
    {
      v11 = preferredRenderingConfiguration;
    }

    else
    {
      v11 = objc_alloc_init(PRPosterRenderingConfiguration);
    }

    v12 = v11;
  }

  [settingsCopy pr_setDepthEffectDisabled:{-[PRPosterRenderingConfiguration isDepthEffectDisabled](v12, "isDepthEffectDisabled")}];
  [settingsCopy pr_setMotionEffectsDisabled:{-[PRPosterRenderingConfiguration areMotionEffectsDisabled](v12, "areMotionEffectsDisabled")}];
  [settingsCopy pr_setSupportedMotionEffectsMode:0];
}

- (void)_updatePresentationBackgroundColor
{
  _presentationBackgroundColor = [(PRSceneViewController *)self _presentationBackgroundColor];
  scenePresenter = self->_scenePresenter;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __59__PRSceneViewController__updatePresentationBackgroundColor__block_invoke;
  v6[3] = &unk_1E7844948;
  v7 = _presentationBackgroundColor;
  v5 = _presentationBackgroundColor;
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
    selfCopy = self;
    _os_log_impl(&dword_1A8AA7000, v3, OS_LOG_TYPE_DEFAULT, "%@-%p: acquiring local keyboard focus assertion and invalidating remote deferring rule", buf, 0x16u);
  }

  [(BSInvalidatable *)self->_keyboardFocusDeferringRule invalidate];
  keyboardFocusDeferringRule = self->_keyboardFocusDeferringRule;
  self->_keyboardFocusDeferringRule = 0;

  objc_initWeak(buf, self);
  v7 = objc_alloc(MEMORY[0x1E698E778]);
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __60__PRSceneViewController__acquireLocalKeyboardFocusAssertion__block_invoke;
  v12[3] = &unk_1E7844998;
  objc_copyWeak(&v13, buf);
  v10 = [v7 initWithIdentifier:uUIDString forReason:@"localKeyboardFocus" invalidationBlock:v12];

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

- (id)scene:(id)scene handleActions:(id)actions
{
  v17 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    actionsCopy = actions;
    identityToken = [scene identityToken];
    stringRepresentation = [identityToken stringRepresentation];

    v11 = 134218498;
    selfCopy = self;
    v13 = 2112;
    v14 = stringRepresentation;
    v15 = 2112;
    v16 = actionsCopy;
    _os_log_impl(&dword_1A8AA7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "SceneViewController-%p: scene %@ handle actions %@", &v11, 0x20u);
  }

  return 0;
}

- (void)sceneContentStateDidChange:(id)change
{
  v15 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    changeCopy = change;
    identityToken = [changeCopy identityToken];
    stringRepresentation = [identityToken stringRepresentation];
    [changeCopy contentState];

    v8 = NSStringFromFBSceneContentState();
    v9 = 134218498;
    selfCopy = self;
    v11 = 2112;
    v12 = stringRepresentation;
    v13 = 2112;
    v14 = v8;
    _os_log_impl(&dword_1A8AA7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "SceneViewController-%p: scene %@ did change content state to %@", &v9, 0x20u);
  }

  [(PRSceneViewController *)self _sceneContentReadinessDidChange];
}

- (void)sceneDidActivate:(id)activate
{
  v11 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    identityToken = [activate identityToken];
    stringRepresentation = [identityToken stringRepresentation];
    v7 = 134218242;
    selfCopy = self;
    v9 = 2112;
    v10 = stringRepresentation;
    _os_log_impl(&dword_1A8AA7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "SceneViewController-%p: scene %@ did activate", &v7, 0x16u);
  }
}

- (void)scene:(id)scene clientDidConnect:(id)connect
{
  sceneCopy = scene;
  clientSettings = [sceneCopy clientSettings];
  pr_areMotionEffectsDisabled = [clientSettings pr_areMotionEffectsDisabled];

  v8 = [PRPosterRenderingConfiguration alloc];
  clientSettings2 = [sceneCopy clientSettings];
  v10 = -[PRPosterRenderingConfiguration initWithDepthEffectDisabled:motionEffectsDisabled:](v8, "initWithDepthEffectDisabled:motionEffectsDisabled:", [clientSettings2 pr_isDepthEffectDisabled], pr_areMotionEffectsDisabled);

  v11 = [(PRPosterConfiguredProperties *)self->_configuredProperties mutableCopy];
  [v11 setRenderingConfiguration:v10];
  [(PRSceneViewController *)self setConfiguredProperties:v11];
  [(PRSceneViewController *)self _acquireKeyboardFocusDeferringRuleIfNecessary];
  if (pr_areMotionEffectsDisabled)
  {
    pr_supportedMotionEffectsMode = 0;
  }

  else
  {
    clientSettings3 = [sceneCopy clientSettings];
    pr_supportedMotionEffectsMode = [clientSettings3 pr_supportedMotionEffectsMode];
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __48__PRSceneViewController_scene_clientDidConnect___block_invoke;
  v14[3] = &__block_descriptor_40_e33_v16__0__FBSMutableSceneSettings_8l;
  v14[4] = pr_supportedMotionEffectsMode;
  [sceneCopy updateSettings:v14];
}

- (void)sceneDidDeactivate:(id)deactivate withError:(id)error
{
  v23 = *MEMORY[0x1E69E9840];
  deactivateCopy = deactivate;
  errorCopy = error;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    identityToken = [deactivateCopy identityToken];
    stringRepresentation = [identityToken stringRepresentation];
    v17 = 134218498;
    selfCopy3 = self;
    v19 = 2112;
    v20 = stringRepresentation;
    v21 = 2112;
    v22 = errorCopy;
    _os_log_impl(&dword_1A8AA7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "SceneViewController-%p: scene %@ did deactivate with error %@", &v17, 0x20u);
  }

  domain = [errorCopy domain];
  if ([domain isEqualToString:*MEMORY[0x1E699F798]])
  {
    code = [errorCopy code];

    if (code == 1)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        identityToken2 = [deactivateCopy identityToken];
        stringRepresentation2 = [identityToken2 stringRepresentation];
        v17 = 134218498;
        selfCopy3 = self;
        v19 = 2112;
        v20 = stringRepresentation2;
        v21 = 2112;
        v22 = errorCopy;
        _os_log_impl(&dword_1A8AA7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "SceneViewController-%p: scene %@ did deactivate with fatal error %@", &v17, 0x20u);
      }

      [(PRSceneViewController *)self _failWithFatalError:errorCopy];
      goto LABEL_12;
    }
  }

  else
  {
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    identityToken3 = [deactivateCopy identityToken];
    stringRepresentation3 = [identityToken3 stringRepresentation];
    v17 = 134218498;
    selfCopy3 = self;
    v19 = 2112;
    v20 = stringRepresentation3;
    v21 = 2112;
    v22 = errorCopy;
    _os_log_impl(&dword_1A8AA7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "SceneViewController-%p: scene %@ did deactivate with transient error %@", &v17, 0x20u);
  }

  [(PRSceneViewController *)self _update];
LABEL_12:
  [(BSInvalidatable *)self->_keyboardFocusDeferringRule invalidate];
  keyboardFocusDeferringRule = self->_keyboardFocusDeferringRule;
  self->_keyboardFocusDeferringRule = 0;
}

- (void)scene:(id)scene didUpdateClientSettingsWithDiff:(id)diff oldClientSettings:(id)settings transitionContext:(id)context
{
  v26 = *MEMORY[0x1E69E9840];
  sceneCopy = scene;
  diffCopy = diff;
  settingsCopy = settings;
  contextCopy = context;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    identityToken = [sceneCopy identityToken];
    stringRepresentation = [identityToken stringRepresentation];
    v18 = 134218754;
    selfCopy = self;
    v20 = 2112;
    v21 = stringRepresentation;
    v22 = 2112;
    v23 = diffCopy;
    v24 = 2112;
    v25 = contextCopy;
    _os_log_impl(&dword_1A8AA7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "SceneViewController-%p: scene %@ did update client settings with diff %@, transition %@", &v18, 0x2Au);
  }

  clientSettings = [sceneCopy clientSettings];
  pui_didFinishInitialization = [clientSettings pui_didFinishInitialization];
  if (pui_didFinishInitialization != [settingsCopy pui_didFinishInitialization])
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