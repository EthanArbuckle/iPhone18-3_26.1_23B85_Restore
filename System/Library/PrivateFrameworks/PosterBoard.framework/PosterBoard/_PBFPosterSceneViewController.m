@interface _PBFPosterSceneViewController
- (CGRect)salientContentRectangle;
- (_PBFPosterSceneViewController)initWithPath:(id)a3 definition:(id)a4 extensionInstance:(id)a5 uniqueIdentifier:(id)a6 configurableOptions:(id)a7 configuredProperties:(id)a8 salientContentRectangle:(CGRect)a9;
- (_PBFPosterSceneViewControllerDelegate)delegate;
- (id)executeScript:(id)a3;
- (void)_configureInitialSceneSettings:(id)a3;
- (void)_failWithFatalError:(id)a3;
- (void)_myUpdateSettings:(id)a3;
- (void)_sceneContentReadinessDidChange;
- (void)_scriptFinishedExecuting;
- (void)_teardown;
- (void)dealloc;
- (void)invalidate;
- (void)setDelegate:(id)a3;
- (void)setDisplayContext:(id)a3;
- (void)setDisplayContext:(id)a3 animationSettings:(id)a4 fence:(id)a5;
- (void)setSalientContentRectangle:(CGRect)a3;
- (void)setScenePresenterIsValid:(BOOL)a3;
- (void)setShowsComplications:(BOOL)a3;
- (void)setShowsHeaderElements:(BOOL)a3;
- (void)setState:(unint64_t)a3;
@end

@implementation _PBFPosterSceneViewController

- (_PBFPosterSceneViewController)initWithPath:(id)a3 definition:(id)a4 extensionInstance:(id)a5 uniqueIdentifier:(id)a6 configurableOptions:(id)a7 configuredProperties:(id)a8 salientContentRectangle:(CGRect)a9
{
  height = a9.size.height;
  width = a9.size.width;
  y = a9.origin.y;
  x = a9.origin.x;
  v20 = a3;
  v21 = a4;
  v22 = a5;
  v23 = a6;
  v24 = a7;
  v25 = a8;
  if (!v23)
  {
    [_PBFPosterSceneViewController initWithPath:a2 definition:? extensionInstance:? uniqueIdentifier:? configurableOptions:? configuredProperties:? salientContentRectangle:?];
  }

  if (!v22)
  {
    [_PBFPosterSceneViewController initWithPath:a2 definition:? extensionInstance:? uniqueIdentifier:? configurableOptions:? configuredProperties:? salientContentRectangle:?];
  }

  if (!v20)
  {
    [_PBFPosterSceneViewController initWithPath:a2 definition:? extensionInstance:? uniqueIdentifier:? configurableOptions:? configuredProperties:? salientContentRectangle:?];
  }

  if (!v21)
  {
    [_PBFPosterSceneViewController initWithPath:a2 definition:? extensionInstance:? uniqueIdentifier:? configurableOptions:? configuredProperties:? salientContentRectangle:?];
  }

  v26 = v25;
  v27 = [v23 copy];
  uniqueIdentifier = self->_uniqueIdentifier;
  self->_uniqueIdentifier = v27;

  objc_storeStrong(&self->_definition, a4);
  objc_storeStrong(&self->_extensionInstance, a5);
  -[_PBFPosterSceneViewController setShowsHeaderElements:](self, "setShowsHeaderElements:", [v21 includesHeaderElements]);
  -[_PBFPosterSceneViewController setShowsComplications:](self, "setShowsComplications:", [v21 includesComplications]);
  [(_PBFPosterSceneViewController *)self setSalientContentRectangle:x, y, width, height];
  v36.receiver = self;
  v36.super_class = _PBFPosterSceneViewController;
  v29 = [(PRSceneViewController *)&v36 initWithProvider:v22 contents:v20 configurableOptions:v24 configuredProperties:v26 additionalInfo:0];
  v30 = v29;
  if (v29)
  {
    [(PRSceneViewController *)v29 setSceneUserInteractionEnabled:0];
    [(PRRenderingSceneViewController *)v30 setShowDebugGear:0];
    v31 = [v22 processIdentity];
    v32 = [MEMORY[0x277D47008] targetWithProcessIdentity:v31];
    v33 = [MEMORY[0x277D46DB8] pf_posterEditingRuntimeAssertionForTarget:v32 explanation:v23];
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

- (void)setDelegate:(id)a3
{
  obj = a3;
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

- (void)setState:(unint64_t)a3
{
  state = self->_state;
  if (state != a3 && state != 2)
  {
    v7 = [(_PBFPosterSceneViewController *)self delegate];
    self->_state = a3;
    v9 = v7;
    [v7 sceneViewController:self stateChangedTo:a3];
    [(_PBFPosterSceneViewController *)self _sceneContentReadinessDidChange];
    if (self->_state == 2)
    {
      [(RBSAssertion *)self->_posterRuntimeAssertion invalidate];
      posterRuntimeAssertion = self->_posterRuntimeAssertion;
      self->_posterRuntimeAssertion = 0;
    }
  }
}

- (void)setDisplayContext:(id)a3
{
  v4 = a3;
  if (([v4 isEqualToDisplayContext:self->_displayContext] & 1) == 0)
  {
    [(_PBFPosterSceneViewController *)self setDisplayContext:v4 animationSettings:0 fence:0];
  }
}

- (void)setDisplayContext:(id)a3 animationSettings:(id)a4 fence:(id)a5
{
  objc_storeStrong(&self->_displayContext, a3);
  v9 = a3;
  v10 = a5;
  v11 = a4;
  [v9 pbf_referenceBounds];
  -[PRSceneViewController _updateSceneToSize:orientation:withAnimationSettings:fence:](self, "_updateSceneToSize:orientation:withAnimationSettings:fence:", [v9 pbf_interfaceOrientation], v11, v10, v12, v13);

  [v9 pbf_referenceBounds];
  v15 = v14;
  v17 = v16;

  [(_PBFPosterSceneViewController *)self setPreferredContentSize:v15, v17];
}

- (void)setShowsComplications:(BOOL)a3
{
  if (self->_showsComplications != a3)
  {
    self->_showsComplications = a3;
    v7 = [(PRSceneViewController *)self scene];
    if ([v7 isActive])
    {
      v4 = [(PRSceneViewController *)self scene];
      v5 = [v4 isValid];

      if (v5)
      {
        v6 = [(PRSceneViewController *)self scene];
        v8[0] = MEMORY[0x277D85DD0];
        v8[1] = 3221225472;
        v8[2] = __55___PBFPosterSceneViewController_setShowsComplications___block_invoke;
        v8[3] = &unk_2782C7CC0;
        v8[4] = self;
        [v6 updateSettings:v8];
      }
    }

    else
    {
    }
  }
}

- (void)setShowsHeaderElements:(BOOL)a3
{
  if (self->_showsHeaderElements != a3)
  {
    self->_showsHeaderElements = a3;
    v7 = [(PRSceneViewController *)self scene];
    if ([v7 isActive])
    {
      v4 = [(PRSceneViewController *)self scene];
      v5 = [v4 isValid];

      if (v5)
      {
        v6 = [(PRSceneViewController *)self scene];
        v8[0] = MEMORY[0x277D85DD0];
        v8[1] = 3221225472;
        v8[2] = __56___PBFPosterSceneViewController_setShowsHeaderElements___block_invoke;
        v8[3] = &unk_2782C7CC0;
        v8[4] = self;
        [v6 updateSettings:v8];
      }
    }

    else
    {
    }
  }
}

- (void)setSalientContentRectangle:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  p_salientContentRectangle = &self->_salientContentRectangle;
  if (!CGRectEqualToRect(self->_salientContentRectangle, a3))
  {
    p_salientContentRectangle->origin.x = x;
    p_salientContentRectangle->origin.y = y;
    p_salientContentRectangle->size.width = width;
    p_salientContentRectangle->size.height = height;
    v12 = [(PRSceneViewController *)self scene];
    if ([v12 isActive])
    {
      v9 = [(PRSceneViewController *)self scene];
      v10 = [v9 isValid];

      if (v10)
      {
        v11 = [(PRSceneViewController *)self scene];
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = __60___PBFPosterSceneViewController_setSalientContentRectangle___block_invoke;
        v13[3] = &unk_2782C7CC0;
        v13[4] = self;
        [v11 updateSettings:v13];
      }
    }

    else
    {
    }
  }
}

- (void)setScenePresenterIsValid:(BOOL)a3
{
  if (self->_scenePresenterIsValid != a3)
  {
    self->_scenePresenterIsValid = a3;
    [(PRSceneViewController *)self _update];
  }
}

- (void)_failWithFatalError:(id)a3
{
  v4.receiver = self;
  v4.super_class = _PBFPosterSceneViewController;
  [(PRSceneViewController *)&v4 _failWithFatalError:a3];
  [(_PBFPosterSceneViewController *)self invalidate];
}

- (void)_configureInitialSceneSettings:(id)a3
{
  v5.receiver = self;
  v5.super_class = _PBFPosterSceneViewController;
  v4 = a3;
  [(PRSceneViewController *)&v5 _configureInitialSceneSettings:v4];
  [(_PBFPosterSceneViewController *)self _myUpdateSettings:v4, v5.receiver, v5.super_class];
}

- (void)_myUpdateSettings:(id)a3
{
  v32 = a3;
  v4 = [(_PBFPosterSceneViewController *)self showsComplications];
  v5 = [(_PBFPosterSceneViewController *)self showsHeaderElements];
  if ([(PRPosterSnapshotDefinition *)self->_definition isUnlocked])
  {
    v6 = 1.0;
  }

  else
  {
    v6 = 0.0;
  }

  v7 = [(PRSceneViewController *)self configuredProperties];
  v8 = [v7 complicationLayout];
  v9 = [v8 inlineComplication];
  v10 = v9 != 0;

  v11 = [v7 complicationLayout];
  v12 = [v11 complications];
  v13 = [v12 count] != 0;

  v14 = [v7 complicationLayout];
  v15 = [v14 sidebarComplications];
  v16 = [v15 count] != 0;

  v17 = [v7 titleStyleConfiguration];
  [v17 prefersVerticalTitleLayout];

  v18 = [(_PBFPosterSceneViewController *)self traitCollection];
  v19 = [v18 userInterfaceStyle];

  [v32 pui_setSnapshot:0];
  [v32 pui_setContent:1];
  [v32 pui_setMode:1];
  [v32 pr_setUnlockProgress:v6];
  [v32 pui_setPreviewIdentifier:self->_uniqueIdentifier];
  v20 = [v7 titleStyleConfiguration];
  [v32 pr_setPosterTitleStyleConfiguration:v20];

  v21 = [v7 ambientConfiguration];
  [v32 pr_setPosterAmbientConfiguration:v21];

  [v32 pui_setInlineComplicationConfigured:v10];
  [v32 pui_setComplicationRowConfigured:v13];
  [v32 pui_setComplicationSidebarConfigured:v16];
  [v32 pui_setShowsComplications:v4];
  [v32 pui_setShowsHeaderElements:v5];
  [v32 pui_setUserInterfaceStyle:v19];
  [v32 pui_setSalientContentRectangle:{self->_salientContentRectangle.origin.x, self->_salientContentRectangle.origin.y, self->_salientContentRectangle.size.width, self->_salientContentRectangle.size.height}];
  v22 = [(_PBFPosterSceneViewController *)self displayContext];
  v23 = [v22 pbf_interfaceOrientation];
  v24 = [(PRSceneViewController *)self configuredProperties];
  v25 = [v24 renderingConfiguration];
  v26 = v25;
  if (v25)
  {
    v27 = v25;
  }

  else
  {
    v28 = [(PRSceneViewController *)self configurableOptions];
    v27 = [v28 preferredRenderingConfiguration];
  }

  if ([v27 isDepthEffectDisabled])
  {
    v29 = 1;
  }

  else
  {
    v29 = PRIsDepthEffectDisallowed();
  }

  [v32 pr_setDepthEffectDisallowed:v29];
  if (PUIDynamicRotationIsActive())
  {
    [v32 pui_setDeviceOrientation:v23];
    v30 = 1;
  }

  else
  {
    if (PFCurrentDeviceClass() == 1)
    {
      v31 = v23;
    }

    else
    {
      v31 = 1;
    }

    [v32 pui_setDeviceOrientation:v31];
    v30 = [v22 pbf_interfaceOrientation];
  }

  [v32 setInterfaceOrientation:v30];
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

- (id)executeScript:(id)a3
{
  v4 = a3;
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
    v6 = [(PRSceneViewController *)self scene];
    if ([v6 isActive] && (objc_msgSend(v6, "isValid") & 1) != 0)
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
      v10 = v4;
      v28 = v10;
      objc_copyWeak(&v30, &location);
      v11 = v6;
      v29 = v11;
      v12 = [v8 responderWithHandler:v26];
      v13 = MEMORY[0x277D85CD0];
      v14 = MEMORY[0x277D85CD0];
      [v12 setQueue:v13];

      [v12 setTimeout:{dispatch_time(0, 5000000000)}];
      v15 = [MEMORY[0x277D3EE50] actionWithScript:v10 responder:v12];
      v16 = [MEMORY[0x277CBEB98] setWithObject:v15];
      [v11 sendActions:v16];

      v17 = [v9 future];
      v18 = self->_executeScriptFuture;
      self->_executeScriptFuture = v17;

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