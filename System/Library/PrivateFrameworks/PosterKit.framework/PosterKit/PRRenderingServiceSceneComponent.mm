@interface PRRenderingServiceSceneComponent
- (PRRenderingServiceSceneComponent)initWithScene:(id)scene;
- (void)_acquireDeviceMotionActiveAssertion;
- (void)_invalidateDeviceMotionActiveAssertion;
- (void)_sceneContentReadinessDidChange;
- (void)dealloc;
- (void)deviceMotionEventGenerationDidStop;
- (void)deviceMotionEventGenerationWillStart;
- (void)invalidate;
- (void)renderingServiceServer:(id)server didActivateConnection:(id)connection;
- (void)renderingServiceServer:(id)server didInvalidateConnection:(id)connection;
- (void)renderingServiceServerKeepAliveAssertionManager:(id)manager didActivateRenderingServiceServer:(id)server;
- (void)scene:(id)scene didUpdateClientSettingsWithDiff:(id)diff oldClientSettings:(id)settings transitionContext:(id)context;
- (void)sceneDidActivate:(id)activate;
- (void)sceneWillDeactivate:(id)deactivate withError:(id)error;
- (void)setDeviceMotionEventGenerationActive:(BOOL)active;
- (void)setRenderingServiceEndpoint:(id)endpoint;
- (void)updateMotionWithRotation:(_OWORD *)rotation;
@end

@implementation PRRenderingServiceSceneComponent

- (PRRenderingServiceSceneComponent)initWithScene:(id)scene
{
  sceneCopy = scene;
  v11.receiver = self;
  v11.super_class = PRRenderingServiceSceneComponent;
  v6 = [(PRRenderingServiceSceneComponent *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_scene, scene);
    v8 = +[PRRenderingServiceServerKeepAliveAssertionManager sharedInstance];
    renderingServiceServerKeepAliveAssertionManager = v7->_renderingServiceServerKeepAliveAssertionManager;
    v7->_renderingServiceServerKeepAliveAssertionManager = v8;

    [(PRRenderingServiceServerKeepAliveAssertionManager *)v7->_renderingServiceServerKeepAliveAssertionManager addObserver:v7];
    [(FBScene *)v7->_scene addObserver:v7];
  }

  return v7;
}

- (void)dealloc
{
  [(PRRenderingServiceSceneComponent *)self invalidate];
  v3.receiver = self;
  v3.super_class = PRRenderingServiceSceneComponent;
  [(PRRenderingServiceSceneComponent *)&v3 dealloc];
}

- (void)invalidate
{
  [(BSInvalidatable *)self->_renderingServiceServerKeepAliveAssertion invalidate];
  renderingServiceServerKeepAliveAssertion = self->_renderingServiceServerKeepAliveAssertion;
  self->_renderingServiceServerKeepAliveAssertion = 0;

  [(PRRenderingServiceSceneComponent *)self _invalidateDeviceMotionActiveAssertion];
  scene = self->_scene;
  if (scene)
  {
    [(FBScene *)scene removeObserver:self];
    v5 = self->_scene;
    self->_scene = 0;
  }

  renderingServiceServer = self->_renderingServiceServer;
  if (renderingServiceServer)
  {
    [(PRRenderingServiceServer *)renderingServiceServer removeObserver:self];
    v7 = self->_renderingServiceServer;
    self->_renderingServiceServer = 0;
  }

  renderingServiceServerKeepAliveAssertionManager = self->_renderingServiceServerKeepAliveAssertionManager;
  if (renderingServiceServerKeepAliveAssertionManager)
  {
    [(PRRenderingServiceServerKeepAliveAssertionManager *)renderingServiceServerKeepAliveAssertionManager removeObserver:self];
    v9 = self->_renderingServiceServerKeepAliveAssertionManager;
    self->_renderingServiceServerKeepAliveAssertionManager = 0;
  }

  activeRenderingServiceConnection = self->_activeRenderingServiceConnection;
  self->_activeRenderingServiceConnection = 0;
}

- (void)setRenderingServiceEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  if (([(BSServiceConnectionEndpoint *)self->_renderingServiceEndpoint isEqualToServiceEndpoint:?]& 1) == 0)
  {
    objc_storeStrong(&self->_renderingServiceEndpoint, endpoint);
    if (self->_scene)
    {
      v5 = [[PRRenderingServiceEndpointDidChangeAction alloc] initWithEndpoint:endpointCopy];
      scene = self->_scene;
      v7 = [MEMORY[0x1E695DFD8] setWithObject:v5];
      [(FBScene *)scene pui_safelySendActions:v7 outError:0];
    }
  }
}

- (void)setDeviceMotionEventGenerationActive:(BOOL)active
{
  if (self->_deviceMotionEventGenerationActive != active)
  {
    self->_deviceMotionEventGenerationActive = active;
    if (active)
    {
      [(PRRenderingServiceSceneComponent *)self deviceMotionEventGenerationWillStart];
    }

    else
    {
      [(PRRenderingServiceSceneComponent *)self deviceMotionEventGenerationDidStop];
    }
  }
}

- (void)deviceMotionEventGenerationWillStart
{
  if (self->_activeRenderingServiceConnection)
  {
    [(PRRenderingServiceSceneComponent *)self _acquireDeviceMotionActiveAssertion];
    activeRenderingServiceConnection = self->_activeRenderingServiceConnection;

    [(PRRenderingServiceConnection *)activeRenderingServiceConnection deviceMotionEventGenerationWillStart];
  }

  else
  {
    v4 = PRLogRenderingService();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [(PRRenderingServiceSceneComponent *)v4 deviceMotionEventGenerationWillStart:v5];
    }
  }
}

- (void)deviceMotionEventGenerationDidStop
{
  activeRenderingServiceConnection = self->_activeRenderingServiceConnection;
  if (activeRenderingServiceConnection)
  {
    [(PRRenderingServiceConnection *)activeRenderingServiceConnection deviceMotionEventGenerationDidStop];

    [(PRRenderingServiceSceneComponent *)self _invalidateDeviceMotionActiveAssertion];
  }

  else
  {
    v4 = PRLogRenderingService();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [(PRRenderingServiceSceneComponent *)v4 deviceMotionEventGenerationDidStop:v5];
    }
  }
}

- (void)updateMotionWithRotation:(_OWORD *)rotation
{
  v3 = *(self + 24);
  if (v3)
  {
    v4 = rotation[1];
    v13[0] = *rotation;
    v13[1] = v4;
    [v3 updateMotionWithRotation:v13];
  }

  else
  {
    v5 = PRLogRenderingService();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [(PRRenderingServiceSceneComponent *)v5 updateMotionWithRotation:v6, v7, v8, v9, v10, v11, v12];
    }
  }
}

- (void)_sceneContentReadinessDidChange
{
  BSDispatchQueueAssertMain();
  isActive = [(FBScene *)self->_scene isActive];
  contentState = [(FBScene *)self->_scene contentState];
  clientSettings = [(FBScene *)self->_scene clientSettings];
  pui_didFinishInitialization = [clientSettings pui_didFinishInitialization];

  renderingServiceServer = [(PRRenderingServiceServerKeepAliveAssertionManager *)self->_renderingServiceServerKeepAliveAssertionManager renderingServiceServer];
  renderingServiceServer = self->_renderingServiceServer;
  self->_renderingServiceServer = renderingServiceServer;

  if (isActive)
  {
    if (contentState == 2)
    {
      if (pui_didFinishInitialization)
      {
        v9 = self->_renderingServiceServer;
        if (v9)
        {
          [(PRRenderingServiceServer *)v9 addObserver:self];
          endpoint = [(PRRenderingServiceServer *)self->_renderingServiceServer endpoint];
          [(PRRenderingServiceSceneComponent *)self setRenderingServiceEndpoint:endpoint];
        }
      }
    }
  }
}

- (void)_acquireDeviceMotionActiveAssertion
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138543618;
  selfCopy = self;
  v5 = 2114;
  v6 = a2;
  _os_log_error_impl(&dword_1A8AA7000, log, OS_LOG_TYPE_ERROR, "FAILURE acquireDeviceMotionActiveAssertion target:'%{public}@': %{public}@", &v3, 0x16u);
}

- (void)_invalidateDeviceMotionActiveAssertion
{
  deviceMotionActiveAssertion = self->_deviceMotionActiveAssertion;
  if (deviceMotionActiveAssertion)
  {
    [(RBSAssertion *)deviceMotionActiveAssertion invalidate];
    v4 = self->_deviceMotionActiveAssertion;
    self->_deviceMotionActiveAssertion = 0;

    v5 = PRLogRenderingService();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_1A8AA7000, v5, OS_LOG_TYPE_DEFAULT, "Device motion active assertion is invalidated", v6, 2u);
    }
  }
}

- (void)scene:(id)scene didUpdateClientSettingsWithDiff:(id)diff oldClientSettings:(id)settings transitionContext:(id)context
{
  settingsCopy = settings;
  clientSettings = [scene clientSettings];
  LODWORD(scene) = [clientSettings pui_didFinishInitialization];
  pui_didFinishInitialization = [settingsCopy pui_didFinishInitialization];

  if (scene != pui_didFinishInitialization)
  {
    [(PRRenderingServiceSceneComponent *)self _sceneContentReadinessDidChange];
  }
}

- (void)sceneDidActivate:(id)activate
{
  v15 = *MEMORY[0x1E69E9840];
  activateCopy = activate;
  v5 = PRLogRenderingService();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [activateCopy identifier];
    *buf = 138412290;
    v14 = identifier;
    _os_log_impl(&dword_1A8AA7000, v5, OS_LOG_TYPE_DEFAULT, "PRRenderingServiceSceneComponent: Acquiring rendering service server keep alive assertion for scene activation (scene identifier: %@)", buf, 0xCu);
  }

  renderingServiceServerKeepAliveAssertionManager = self->_renderingServiceServerKeepAliveAssertionManager;
  v8 = MEMORY[0x1E696AEC0];
  identifier2 = [activateCopy identifier];
  v10 = [v8 stringWithFormat:@"Scene-%@", identifier2];
  v11 = [(PRRenderingServiceServerKeepAliveAssertionManager *)renderingServiceServerKeepAliveAssertionManager acquireRenderingServiceServerKeepAliveAssertionForReason:v10];
  renderingServiceServerKeepAliveAssertion = self->_renderingServiceServerKeepAliveAssertion;
  self->_renderingServiceServerKeepAliveAssertion = v11;

  [(PRRenderingServiceSceneComponent *)self _sceneContentReadinessDidChange];
}

- (void)sceneWillDeactivate:(id)deactivate withError:(id)error
{
  v16 = *MEMORY[0x1E69E9840];
  deactivateCopy = deactivate;
  clientHandle = [deactivateCopy clientHandle];
  processHandle = [clientHandle processHandle];
  v8 = [processHandle pid];

  v9 = PRLogRenderingService();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [deactivateCopy identifier];
    v12 = 138412546;
    v13 = identifier;
    v14 = 1024;
    v15 = v8;
    _os_log_impl(&dword_1A8AA7000, v9, OS_LOG_TYPE_DEFAULT, "PRRenderingServiceSceneComponent: Invalidating rendering service server keep alive assertion because scene will deactivate (scene identifier: %@, PID: %d)", &v12, 0x12u);
  }

  [(BSInvalidatable *)self->_renderingServiceServerKeepAliveAssertion invalidate];
  renderingServiceServerKeepAliveAssertion = self->_renderingServiceServerKeepAliveAssertion;
  self->_renderingServiceServerKeepAliveAssertion = 0;
}

- (void)renderingServiceServer:(id)server didActivateConnection:(id)connection
{
  serverCopy = server;
  connectionCopy = connection;
  objc_initWeak(&location, self);
  objc_copyWeak(&v9, &location);
  v8 = connectionCopy;
  BSDispatchMain();

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __81__PRRenderingServiceSceneComponent_renderingServiceServer_didActivateConnection___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained[1] clientHandle];
    v5 = [v4 processHandle];
    v6 = [v5 pid];
    v7 = [*(a1 + 32) pid];

    if (v6 == v7)
    {
      v8 = PRLogRenderingService();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [*(a1 + 32) pid];
        v10[0] = 67109120;
        v10[1] = v9;
        _os_log_impl(&dword_1A8AA7000, v8, OS_LOG_TYPE_DEFAULT, "PRRenderingServiceSceneComponent: Rendering service connection activated for PID %d", v10, 8u);
      }

      objc_storeStrong(v3 + 3, *(a1 + 32));
      if (*(v3 + 48) == 1)
      {
        [v3 deviceMotionEventGenerationWillStart];
      }

      else
      {
        [v3 deviceMotionEventGenerationDidStop];
      }
    }
  }
}

- (void)renderingServiceServer:(id)server didInvalidateConnection:(id)connection
{
  serverCopy = server;
  connectionCopy = connection;
  objc_initWeak(&location, self);
  objc_copyWeak(&v9, &location);
  v8 = connectionCopy;
  BSDispatchMain();

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __83__PRRenderingServiceSceneComponent_renderingServiceServer_didInvalidateConnection___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[3];
    if (v4)
    {
      if ([v4 isEqual:*(a1 + 32)])
      {
        v5 = PRLogRenderingService();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          v6 = [*(a1 + 32) pid];
          v8[0] = 67109120;
          v8[1] = v6;
          _os_log_impl(&dword_1A8AA7000, v5, OS_LOG_TYPE_DEFAULT, "PRRenderingServiceSceneComponent: Active rendering service connection invalidated for PID %d", v8, 8u);
        }

        v7 = v3[3];
        v3[3] = 0;

        [v3 _invalidateDeviceMotionActiveAssertion];
      }
    }
  }
}

- (void)renderingServiceServerKeepAliveAssertionManager:(id)manager didActivateRenderingServiceServer:(id)server
{
  managerCopy = manager;
  serverCopy = server;
  objc_initWeak(&location, self);
  objc_copyWeak(&v8, &location);
  BSDispatchMain();
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __118__PRRenderingServiceSceneComponent_renderingServiceServerKeepAliveAssertionManager_didActivateRenderingServiceServer___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _sceneContentReadinessDidChange];
    WeakRetained = v2;
  }
}

@end