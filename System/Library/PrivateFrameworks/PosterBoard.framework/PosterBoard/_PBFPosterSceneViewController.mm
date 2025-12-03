@interface _PBFPosterSceneViewController
- (CGRect)salientContentRectangle;
- (_PBFPosterSceneViewController)initWithPath:(id)path definition:(id)definition extensionInstance:(id)instance uniqueIdentifier:(id)identifier configurableOptions:(id)options configuredProperties:(id)properties salientContentRectangle:(CGRect)rectangle;
- (_PBFPosterSceneViewControllerDelegate)delegate;
- (id)executeScript:(id)script;
- (void)_configureInitialSceneSettings:(id)settings;
- (void)_failWithFatalError:(id)error;
- (void)_myUpdateSettings:(id)settings;
- (void)_sceneContentReadinessDidChange;
- (void)_scriptFinishedExecuting;
- (void)_teardown;
- (void)dealloc;
- (void)invalidate;
- (void)setDelegate:(id)delegate;
- (void)setDisplayContext:(id)context;
- (void)setDisplayContext:(id)context animationSettings:(id)settings fence:(id)fence;
- (void)setSalientContentRectangle:(CGRect)rectangle;
- (void)setScenePresenterIsValid:(BOOL)valid;
- (void)setShowsComplications:(BOOL)complications;
- (void)setShowsHeaderElements:(BOOL)elements;
- (void)setState:(unint64_t)state;
@end

@implementation _PBFPosterSceneViewController

- (_PBFPosterSceneViewController)initWithPath:(id)path definition:(id)definition extensionInstance:(id)instance uniqueIdentifier:(id)identifier configurableOptions:(id)options configuredProperties:(id)properties salientContentRectangle:(CGRect)rectangle
{
  height = rectangle.size.height;
  width = rectangle.size.width;
  y = rectangle.origin.y;
  x = rectangle.origin.x;
  pathCopy = path;
  definitionCopy = definition;
  instanceCopy = instance;
  identifierCopy = identifier;
  optionsCopy = options;
  propertiesCopy = properties;
  if (!identifierCopy)
  {
    [_PBFPosterSceneViewController initWithPath:a2 definition:? extensionInstance:? uniqueIdentifier:? configurableOptions:? configuredProperties:? salientContentRectangle:?];
  }

  if (!instanceCopy)
  {
    [_PBFPosterSceneViewController initWithPath:a2 definition:? extensionInstance:? uniqueIdentifier:? configurableOptions:? configuredProperties:? salientContentRectangle:?];
  }

  if (!pathCopy)
  {
    [_PBFPosterSceneViewController initWithPath:a2 definition:? extensionInstance:? uniqueIdentifier:? configurableOptions:? configuredProperties:? salientContentRectangle:?];
  }

  if (!definitionCopy)
  {
    [_PBFPosterSceneViewController initWithPath:a2 definition:? extensionInstance:? uniqueIdentifier:? configurableOptions:? configuredProperties:? salientContentRectangle:?];
  }

  v26 = propertiesCopy;
  v27 = [identifierCopy copy];
  uniqueIdentifier = self->_uniqueIdentifier;
  self->_uniqueIdentifier = v27;

  objc_storeStrong(&self->_definition, definition);
  objc_storeStrong(&self->_extensionInstance, instance);
  -[_PBFPosterSceneViewController setShowsHeaderElements:](self, "setShowsHeaderElements:", [definitionCopy includesHeaderElements]);
  -[_PBFPosterSceneViewController setShowsComplications:](self, "setShowsComplications:", [definitionCopy includesComplications]);
  [(_PBFPosterSceneViewController *)self setSalientContentRectangle:x, y, width, height];
  v36.receiver = self;
  v36.super_class = _PBFPosterSceneViewController;
  v29 = [(PRSceneViewController *)&v36 initWithProvider:instanceCopy contents:pathCopy configurableOptions:optionsCopy configuredProperties:v26 additionalInfo:0];
  v30 = v29;
  if (v29)
  {
    [(PRSceneViewController *)v29 setSceneUserInteractionEnabled:0];
    [(PRRenderingSceneViewController *)v30 setShowDebugGear:0];
    processIdentity = [instanceCopy processIdentity];
    v32 = [MEMORY[0x277D47008] targetWithProcessIdentity:processIdentity];
    v33 = [MEMORY[0x277D46DB8] pf_posterEditingRuntimeAssertionForTarget:v32 explanation:identifierCopy];
    posterRuntimeAssertion = v30->_posterRuntimeAssertion;
    v30->_posterRuntimeAssertion = v33;

    [(RBSAssertion *)v30->_posterRuntimeAssertion acquireWithInvalidationHandler:0];
  }

  return v30;
}

- (void)dealloc
{
  [(RBSAssertion *)self->_posterRuntimeAssertion invalidate];
  posterRuntimeAssertion = self->_posterRuntimeAssertion;
  self->_posterRuntimeAssertion = 0;

  [(_PBFPosterSceneViewController *)self invalidate];
  v4.receiver = self;
  v4.super_class = _PBFPosterSceneViewController;
  [(PRSceneViewController *)&v4 dealloc];
}

- (void)invalidate
{
  v3.receiver = self;
  v3.super_class = _PBFPosterSceneViewController;
  [(PRSceneViewController *)&v3 invalidate];
  [(_PBFPosterSceneViewController *)self setState:2];
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = [obj isEqual:WeakRetained];

  if ((v5 & 1) == 0)
  {
    objc_storeWeak(&self->_delegate, obj);
    if (self->_state == 2)
    {
      v6 = objc_loadWeakRetained(&self->_delegate);
      v7 = objc_opt_respondsToSelector();

      if (v7)
      {
        v8 = objc_loadWeakRetained(&self->_delegate);
        [v8 sceneViewController:self stateChangedTo:2];
      }
    }
  }
}

- (void)setState:(unint64_t)state
{
  state = self->_state;
  if (state != state && state != 2)
  {
    delegate = [(_PBFPosterSceneViewController *)self delegate];
    self->_state = state;
    v9 = delegate;
    [delegate sceneViewController:self stateChangedTo:state];
    [(_PBFPosterSceneViewController *)self _sceneContentReadinessDidChange];
    if (self->_state == 2)
    {
      [(RBSAssertion *)self->_posterRuntimeAssertion invalidate];
      posterRuntimeAssertion = self->_posterRuntimeAssertion;
      self->_posterRuntimeAssertion = 0;
    }
  }
}

- (void)setDisplayContext:(id)context
{
  contextCopy = context;
  if (([contextCopy isEqualToDisplayContext:self->_displayContext] & 1) == 0)
  {
    [(_PBFPosterSceneViewController *)self setDisplayContext:contextCopy animationSettings:0 fence:0];
  }
}

- (void)setDisplayContext:(id)context animationSettings:(id)settings fence:(id)fence
{
  objc_storeStrong(&self->_displayContext, context);
  contextCopy = context;
  fenceCopy = fence;
  settingsCopy = settings;
  [contextCopy pbf_referenceBounds];
  -[PRSceneViewController _updateSceneToSize:orientation:withAnimationSettings:fence:](self, "_updateSceneToSize:orientation:withAnimationSettings:fence:", [contextCopy pbf_interfaceOrientation], settingsCopy, fenceCopy, v12, v13);

  [contextCopy pbf_referenceBounds];
  v15 = v14;
  v17 = v16;

  [(_PBFPosterSceneViewController *)self setPreferredContentSize:v15, v17];
}

- (void)setShowsComplications:(BOOL)complications
{
  if (self->_showsComplications != complications)
  {
    self->_showsComplications = complications;
    scene = [(PRSceneViewController *)self scene];
    if ([scene isActive])
    {
      scene2 = [(PRSceneViewController *)self scene];
      isValid = [scene2 isValid];

      if (isValid)
      {
        scene3 = [(PRSceneViewController *)self scene];
        v8[0] = MEMORY[0x277D85DD0];
        v8[1] = 3221225472;
        v8[2] = __55___PBFPosterSceneViewController_setShowsComplications___block_invoke;
        v8[3] = &unk_2782C7CC0;
        v8[4] = self;
        [scene3 updateSettings:v8];
      }
    }

    else
    {
    }
  }
}

- (void)setShowsHeaderElements:(BOOL)elements
{
  if (self->_showsHeaderElements != elements)
  {
    self->_showsHeaderElements = elements;
    scene = [(PRSceneViewController *)self scene];
    if ([scene isActive])
    {
      scene2 = [(PRSceneViewController *)self scene];
      isValid = [scene2 isValid];

      if (isValid)
      {
        scene3 = [(PRSceneViewController *)self scene];
        v8[0] = MEMORY[0x277D85DD0];
        v8[1] = 3221225472;
        v8[2] = __56___PBFPosterSceneViewController_setShowsHeaderElements___block_invoke;
        v8[3] = &unk_2782C7CC0;
        v8[4] = self;
        [scene3 updateSettings:v8];
      }
    }

    else
    {
    }
  }
}

- (void)setSalientContentRectangle:(CGRect)rectangle
{
  height = rectangle.size.height;
  width = rectangle.size.width;
  y = rectangle.origin.y;
  x = rectangle.origin.x;
  p_salientContentRectangle = &self->_salientContentRectangle;
  if (!CGRectEqualToRect(self->_salientContentRectangle, rectangle))
  {
    p_salientContentRectangle->origin.x = x;
    p_salientContentRectangle->origin.y = y;
    p_salientContentRectangle->size.width = width;
    p_salientContentRectangle->size.height = height;
    scene = [(PRSceneViewController *)self scene];
    if ([scene isActive])
    {
      scene2 = [(PRSceneViewController *)self scene];
      isValid = [scene2 isValid];

      if (isValid)
      {
        scene3 = [(PRSceneViewController *)self scene];
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = __60___PBFPosterSceneViewController_setSalientContentRectangle___block_invoke;
        v13[3] = &unk_2782C7CC0;
        v13[4] = self;
        [scene3 updateSettings:v13];
      }
    }

    else
    {
    }
  }
}

- (void)setScenePresenterIsValid:(BOOL)valid
{
  if (self->_scenePresenterIsValid != valid)
  {
    self->_scenePresenterIsValid = valid;
    [(PRSceneViewController *)self _update];
  }
}

- (void)_failWithFatalError:(id)error
{
  v4.receiver = self;
  v4.super_class = _PBFPosterSceneViewController;
  [(PRSceneViewController *)&v4 _failWithFatalError:error];
  [(_PBFPosterSceneViewController *)self invalidate];
}

- (void)_configureInitialSceneSettings:(id)settings
{
  v5.receiver = self;
  v5.super_class = _PBFPosterSceneViewController;
  settingsCopy = settings;
  [(PRSceneViewController *)&v5 _configureInitialSceneSettings:settingsCopy];
  [(_PBFPosterSceneViewController *)self _myUpdateSettings:settingsCopy, v5.receiver, v5.super_class];
}

- (void)_myUpdateSettings:(id)settings
{
  settingsCopy = settings;
  showsComplications = [(_PBFPosterSceneViewController *)self showsComplications];
  showsHeaderElements = [(_PBFPosterSceneViewController *)self showsHeaderElements];
  if ([(PRPosterSnapshotDefinition *)self->_definition isUnlocked])
  {
    v6 = 1.0;
  }

  else
  {
    v6 = 0.0;
  }

  configuredProperties = [(PRSceneViewController *)self configuredProperties];
  complicationLayout = [configuredProperties complicationLayout];
  inlineComplication = [complicationLayout inlineComplication];
  v10 = inlineComplication != 0;

  complicationLayout2 = [configuredProperties complicationLayout];
  complications = [complicationLayout2 complications];
  v13 = [complications count] != 0;

  complicationLayout3 = [configuredProperties complicationLayout];
  sidebarComplications = [complicationLayout3 sidebarComplications];
  v16 = [sidebarComplications count] != 0;

  titleStyleConfiguration = [configuredProperties titleStyleConfiguration];
  [titleStyleConfiguration prefersVerticalTitleLayout];

  traitCollection = [(_PBFPosterSceneViewController *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  [settingsCopy pui_setSnapshot:0];
  [settingsCopy pui_setContent:1];
  [settingsCopy pui_setMode:1];
  [settingsCopy pr_setUnlockProgress:v6];
  [settingsCopy pui_setPreviewIdentifier:self->_uniqueIdentifier];
  titleStyleConfiguration2 = [configuredProperties titleStyleConfiguration];
  [settingsCopy pr_setPosterTitleStyleConfiguration:titleStyleConfiguration2];

  ambientConfiguration = [configuredProperties ambientConfiguration];
  [settingsCopy pr_setPosterAmbientConfiguration:ambientConfiguration];

  [settingsCopy pui_setInlineComplicationConfigured:v10];
  [settingsCopy pui_setComplicationRowConfigured:v13];
  [settingsCopy pui_setComplicationSidebarConfigured:v16];
  [settingsCopy pui_setShowsComplications:showsComplications];
  [settingsCopy pui_setShowsHeaderElements:showsHeaderElements];
  [settingsCopy pui_setUserInterfaceStyle:userInterfaceStyle];
  [settingsCopy pui_setSalientContentRectangle:{self->_salientContentRectangle.origin.x, self->_salientContentRectangle.origin.y, self->_salientContentRectangle.size.width, self->_salientContentRectangle.size.height}];
  displayContext = [(_PBFPosterSceneViewController *)self displayContext];
  pbf_interfaceOrientation = [displayContext pbf_interfaceOrientation];
  configuredProperties2 = [(PRSceneViewController *)self configuredProperties];
  renderingConfiguration = [configuredProperties2 renderingConfiguration];
  v26 = renderingConfiguration;
  if (renderingConfiguration)
  {
    preferredRenderingConfiguration = renderingConfiguration;
  }

  else
  {
    configurableOptions = [(PRSceneViewController *)self configurableOptions];
    preferredRenderingConfiguration = [configurableOptions preferredRenderingConfiguration];
  }

  if ([preferredRenderingConfiguration isDepthEffectDisabled])
  {
    v29 = 1;
  }

  else
  {
    v29 = PRIsDepthEffectDisallowed();
  }

  [settingsCopy pr_setDepthEffectDisallowed:v29];
  if (PUIDynamicRotationIsActive())
  {
    [settingsCopy pui_setDeviceOrientation:pbf_interfaceOrientation];
    pbf_interfaceOrientation2 = 1;
  }

  else
  {
    if (PFCurrentDeviceClass() == 1)
    {
      v31 = pbf_interfaceOrientation;
    }

    else
    {
      v31 = 1;
    }

    [settingsCopy pui_setDeviceOrientation:v31];
    pbf_interfaceOrientation2 = [displayContext pbf_interfaceOrientation];
  }

  [settingsCopy setInterfaceOrientation:pbf_interfaceOrientation2];
}

- (void)_sceneContentReadinessDidChange
{
  v3.receiver = self;
  v3.super_class = _PBFPosterSceneViewController;
  [(PRSceneViewController *)&v3 _sceneContentReadinessDidChange];
  [(_PBFPosterSceneViewController *)self setState:[(PRSceneViewController *)self isSceneContentReady]];
}

- (void)_teardown
{
  v3.receiver = self;
  v3.super_class = _PBFPosterSceneViewController;
  [(PRSceneViewController *)&v3 _teardown];
  [(_PBFPosterSceneViewController *)self setState:0];
}

- (id)executeScript:(id)script
{
  scriptCopy = script;
  BSDispatchQueueAssertMain();
  executeScriptFuture = self->_executeScriptFuture;
  if (executeScriptFuture && ([(PFTFuture *)executeScriptFuture isFinished]& 1) == 0)
  {
    v22 = MEMORY[0x277D3EC50];
    v23 = PFFunctionNameForAddress();
    v24 = PFGeneralErrorFromObjectWithLocalizedFailureReason();
    v19 = [v22 futureWithError:{v24, 0}];
  }

  else
  {
    scene = [(PRSceneViewController *)self scene];
    if ([scene isActive] && (objc_msgSend(scene, "isValid") & 1) != 0)
    {
      v7 = objc_alloc_init(MEMORY[0x277D3EC58]);
      objc_initWeak(&location, self);
      v8 = MEMORY[0x277CF0B60];
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __47___PBFPosterSceneViewController_executeScript___block_invoke;
      v26[3] = &unk_2782C8610;
      v9 = v7;
      v27 = v9;
      v10 = scriptCopy;
      v28 = v10;
      objc_copyWeak(&v30, &location);
      v11 = scene;
      v29 = v11;
      v12 = [v8 responderWithHandler:v26];
      v13 = MEMORY[0x277D85CD0];
      v14 = MEMORY[0x277D85CD0];
      [v12 setQueue:v13];

      [v12 setTimeout:{dispatch_time(0, 5000000000)}];
      v15 = [MEMORY[0x277D3EE50] actionWithScript:v10 responder:v12];
      v16 = [MEMORY[0x277CBEB98] setWithObject:v15];
      [v11 sendActions:v16];

      future = [v9 future];
      v18 = self->_executeScriptFuture;
      self->_executeScriptFuture = future;

      v19 = self->_executeScriptFuture;
      objc_destroyWeak(&v30);

      objc_destroyWeak(&location);
    }

    else
    {
      v20 = MEMORY[0x277D3EC50];
      v9 = PFFunctionNameForAddress();
      v21 = PFGeneralErrorFromObjectWithLocalizedFailureReason();
      v19 = [v20 futureWithError:{v21, 0}];
    }
  }

  return v19;
}

- (void)_scriptFinishedExecuting
{
  [(PFTFuture *)self->_executeScriptFuture cancelWithReason:@"FINISHED"];
  executeScriptFuture = self->_executeScriptFuture;
  self->_executeScriptFuture = 0;
}

- (_PBFPosterSceneViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
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

- (void)initWithPath:(char *)a1 definition:extensionInstance:uniqueIdentifier:configurableOptions:configuredProperties:salientContentRectangle:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"definition", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithPath:(char *)a1 definition:extensionInstance:uniqueIdentifier:configurableOptions:configuredProperties:salientContentRectangle:.cold.2(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"path", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithPath:(char *)a1 definition:extensionInstance:uniqueIdentifier:configurableOptions:configuredProperties:salientContentRectangle:.cold.3(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"extensionInstance", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithPath:(char *)a1 definition:extensionInstance:uniqueIdentifier:configurableOptions:configuredProperties:salientContentRectangle:.cold.4(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"uniqueIdentifier", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end