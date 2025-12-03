@interface PRDeviceMotionRenderer
- (PRDeviceMotionRenderer)initWithIdentifier:(id)identifier renderingServiceEndpoint:(id)endpoint motionUpdateHandler:(id)handler;
- (void)dealloc;
- (void)deviceMotionEventGenerationDidStop;
- (void)deviceMotionEventGenerationWillStart;
- (void)invalidate;
- (void)serverDidUpdateMotionWithRotation:(_OWORD *)rotation;
- (void)setDeviceMotionUpdateInterval:(double)interval;
- (void)setupMotionUpdateRenderingTimerForceReset:(BOOL)reset;
@end

@implementation PRDeviceMotionRenderer

- (PRDeviceMotionRenderer)initWithIdentifier:(id)identifier renderingServiceEndpoint:(id)endpoint motionUpdateHandler:(id)handler
{
  identifierCopy = identifier;
  endpointCopy = endpoint;
  handlerCopy = handler;
  v19.receiver = self;
  v19.super_class = PRDeviceMotionRenderer;
  v12 = [(PRDeviceMotionRenderer *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_identifier, identifier);
    objc_storeStrong(&v13->_renderingServiceEndpoint, endpoint);
    v14 = [[PRRenderingServiceClient alloc] initWithEndpoint:endpointCopy];
    renderingServiceClient = v13->_renderingServiceClient;
    v13->_renderingServiceClient = v14;

    v16 = MEMORY[0x1AC574C60](handlerCopy);
    motionUpdateHandler = v13->_motionUpdateHandler;
    v13->_motionUpdateHandler = v16;

    v13->_deviceMotionEventGenerationActive = 1;
    [(PRRenderingServiceClient *)v13->_renderingServiceClient setDelegate:v13];
  }

  return v13;
}

- (void)dealloc
{
  [(PRDeviceMotionRenderer *)self invalidate];
  v3.receiver = self;
  v3.super_class = PRDeviceMotionRenderer;
  [(PRDeviceMotionRenderer *)&v3 dealloc];
}

- (void)invalidate
{
  [(PRRenderingServiceClient *)self->_renderingServiceClient invalidate];
  [(BSAbsoluteMachTimer *)self->_motionUpdateRenderingTimer invalidate];
  motionUpdateRenderingTimer = self->_motionUpdateRenderingTimer;
  self->_motionUpdateRenderingTimer = 0;

  motionUpdateHandler = self->_motionUpdateHandler;
  self->_motionUpdateHandler = 0;
}

- (void)setDeviceMotionUpdateInterval:(double)interval
{
  if (self->_deviceMotionUpdateInterval == interval)
  {
    self->_deviceMotionUpdateInterval = interval;
    if (self->_motionUpdateRenderingTimer)
    {
      [(PRDeviceMotionRenderer *)self setupMotionUpdateRenderingTimerForceReset:1];
    }
  }
}

- (void)setupMotionUpdateRenderingTimerForceReset:(BOOL)reset
{
  if (reset)
  {
    [(BSAbsoluteMachTimer *)self->_motionUpdateRenderingTimer invalidate];
    motionUpdateRenderingTimer = self->_motionUpdateRenderingTimer;
    self->_motionUpdateRenderingTimer = 0;
  }

  if (!self->_motionUpdateRenderingTimer)
  {
    v5 = [objc_alloc(MEMORY[0x1E698E5E8]) initWithIdentifier:self->_identifier];
    v6 = self->_motionUpdateRenderingTimer;
    self->_motionUpdateRenderingTimer = v5;

    [(PRDeviceMotionRenderer *)self deviceMotionUpdateInterval];
    v8 = v7;
    objc_initWeak(&location, self);
    v9 = self->_motionUpdateRenderingTimer;
    v10 = MEMORY[0x1E69E96A0];
    v11 = MEMORY[0x1E69E96A0];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __68__PRDeviceMotionRenderer_setupMotionUpdateRenderingTimerForceReset___block_invoke;
    v12[3] = &unk_1E7844798;
    objc_copyWeak(&v13, &location);
    [(BSAbsoluteMachTimer *)v9 scheduleRepeatingWithFireInterval:v10 repeatInterval:v12 leewayInterval:v8 queue:v8 handler:0.0];

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }
}

void __68__PRDeviceMotionRenderer_setupMotionUpdateRenderingTimerForceReset___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v7 = 0u;
    v8 = 0u;
    v3 = WeakRetained[1];
    if (v3)
    {
      [v3 readLatestRotation];
    }

    v4 = v2[8];
    if (v4)
    {
      v5 = *(v4 + 16);
      v6[0] = v7;
      v6[1] = v8;
      v5(v4, v6);
    }
  }
}

- (void)deviceMotionEventGenerationWillStart
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = PRLogRenderingService();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    identifier = self->_identifier;
    v5 = 138412290;
    v6 = identifier;
    _os_log_impl(&dword_1A8AA7000, v3, OS_LOG_TYPE_DEFAULT, "<%@>: Device motion event generation will start", &v5, 0xCu);
  }
}

- (void)deviceMotionEventGenerationDidStop
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = PRLogRenderingService();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    identifier = self->_identifier;
    v5 = 138412290;
    v6 = identifier;
    _os_log_impl(&dword_1A8AA7000, v3, OS_LOG_TYPE_DEFAULT, "<%@>: Device motion event generation did stop", &v5, 0xCu);
  }
}

- (void)serverDidUpdateMotionWithRotation:(_OWORD *)rotation
{
  v5 = PRLogRenderingService();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [PRDeviceMotionRenderer serverDidUpdateMotionWithRotation:];
  }

  if (*(self + 8))
  {
    v6 = PRLogRenderingService();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [PRDeviceMotionRenderer serverDidUpdateMotionWithRotation:];
    }

    v7 = *(self + 8);
    v8 = rotation[1];
    v14[0] = *rotation;
    v14[1] = v8;
    [v7 writeRotation:v14];
  }

  else
  {
    v9 = [*(self + 64) copy];
    v10 = [*(self + 48) copy];
    if (v9)
    {
      v11 = PRLogRenderingService();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        [PRDeviceMotionRenderer serverDidUpdateMotionWithRotation:];
      }

      v12 = v10;
      v13 = v9;
      BSDispatchMain();
    }
  }
}

uint64_t __60__PRDeviceMotionRenderer_serverDidUpdateMotionWithRotation___block_invoke(uint64_t a1)
{
  v2 = PRLogRenderingService();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __60__PRDeviceMotionRenderer_serverDidUpdateMotionWithRotation___block_invoke_cold_1();
  }

  v3 = *(a1 + 72);
  v4 = *(v3 + 16);
  v5 = *(a1 + 48);
  v9[0] = *(a1 + 32);
  v9[1] = v5;
  return v4(v3, v9, v6, v7);
}

- (void)serverDidUpdateMotionWithRotation:.cold.1()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_6();
  v3 = 1024;
  v4 = v0;
  _os_log_debug_impl(&dword_1A8AA7000, v1, OS_LOG_TYPE_DEBUG, "<%@>: Received motion event with generation active: %{BOOL}u", v2, 0x12u);
}

@end