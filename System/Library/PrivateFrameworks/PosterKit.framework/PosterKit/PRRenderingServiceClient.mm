@interface PRRenderingServiceClient
- (PRRenderingServiceClient)initWithEndpoint:(id)a3;
- (PRRenderingServiceClientDelegate)delegate;
- (void)_sendAcknowledgment;
- (void)dealloc;
- (void)deviceMotionEventGenerationDidStop;
- (void)deviceMotionEventGenerationWillStart;
- (void)invalidate;
- (void)sendMotionEvent:(id)a3;
@end

@implementation PRRenderingServiceClient

- (PRRenderingServiceClient)initWithEndpoint:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v19.receiver = self;
  v19.super_class = PRRenderingServiceClient;
  v6 = [(PRRenderingServiceClient *)&v19 init];
  v7 = v6;
  if (v5 && v6)
  {
    v8 = BSDispatchQueueCreateWithQualityOfService();
    connectionQueue = v7->_connectionQueue;
    v7->_connectionQueue = v8;

    v10 = [MEMORY[0x1E698F490] connectionWithEndpoint:v5];
    connection = v7->_connection;
    v7->_connection = v10;

    v7->_pid = getpid();
    objc_storeStrong(&v7->_endpoint, a3);
    v12 = v7->_connection;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __45__PRRenderingServiceClient_initWithEndpoint___block_invoke;
    v17[3] = &unk_1E7843970;
    v18 = v7;
    [(BSServiceConnection *)v12 configureConnection:v17];
    [(BSServiceConnection *)v7->_connection activate];
    v13 = PRLogRenderingService();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = [(BSServiceConnectionEndpoint *)v7->_endpoint debugDescription];
      pid = v7->_pid;
      *buf = 138412546;
      v21 = v14;
      v22 = 1024;
      v23 = pid;
      _os_log_impl(&dword_1A8AA7000, v13, OS_LOG_TYPE_INFO, "PRRenderingServiceClient: Connection activated with endpoint: %@, pid: %d", buf, 0x12u);
    }
  }

  return v7;
}

void __45__PRRenderingServiceClient_initWithEndpoint___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[PRRenderingServiceSpecification interface];
  [v3 setInterface:v4];

  [v3 setInterfaceTarget:*(a1 + 32)];
  [v3 setTargetQueue:*(*(a1 + 32) + 16)];
  v5 = +[PRRenderingServiceSpecification serviceQuality];
  [v3 setServiceQuality:v5];

  objc_initWeak(&location, *(a1 + 32));
  v6 = MEMORY[0x1E69E9820];
  v7 = 3221225472;
  v8 = __45__PRRenderingServiceClient_initWithEndpoint___block_invoke_2;
  v9 = &unk_1E7843928;
  objc_copyWeak(&v10, &location);
  [v3 setInterruptionHandler:&v6];
  [v3 setInvalidationHandler:{&__block_literal_global_13, v6, v7, v8, v9}];
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __45__PRRenderingServiceClient_initWithEndpoint___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PRLogRenderingService();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_1A8AA7000, v4, OS_LOG_TYPE_INFO, "PRRenderingServiceClient: interrupted - resyncing state", v6, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    [v3 activate];
  }
}

void __45__PRRenderingServiceClient_initWithEndpoint___block_invoke_3()
{
  v0 = PRLogRenderingService();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    *v1 = 0;
    _os_log_impl(&dword_1A8AA7000, v0, OS_LOG_TYPE_INFO, "PRRenderingServiceClient: invalidated remotely", v1, 2u);
  }
}

- (void)dealloc
{
  v1 = [*(a1 + 40) debugDescription];
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_1_3(&dword_1A8AA7000, v2, v3, "PRRenderingServiceClient: Dealloc endpoint: %@, pid: %d", v4, v5, v6, v7, v8);
}

- (void)invalidate
{
  v1 = [*(a1 + 40) debugDescription];
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_1_3(&dword_1A8AA7000, v2, v3, "PRRenderingServiceClient: Connection invalidated with endpoint: %@, pid: %d", v4, v5, v6, v7, v8);
}

- (void)deviceMotionEventGenerationWillStart
{
  self->_motionEventsReceivedSinceLastAck = 0;
  v2 = [(PRRenderingServiceClient *)self delegate];
  [v2 deviceMotionEventGenerationWillStart];
}

- (void)deviceMotionEventGenerationDidStop
{
  self->_motionEventsReceivedSinceLastAck = 0;
  v2 = [(PRRenderingServiceClient *)self delegate];
  [v2 deviceMotionEventGenerationDidStop];
}

- (void)sendMotionEvent:(id)a3
{
  v4 = a3;
  v5 = [(PRRenderingServiceClient *)self delegate];
  if (v4)
  {
    [v4 rotation];
  }

  else
  {
    memset(v7, 0, sizeof(v7));
  }

  [v5 serverDidUpdateMotionWithRotation:v7];

  v6 = self->_motionEventsReceivedSinceLastAck + 1;
  self->_motionEventsReceivedSinceLastAck = v6;
  if (v6 >= 0xA)
  {
    self->_motionEventsReceivedSinceLastAck = 0;
    [(PRRenderingServiceClient *)self _sendAcknowledgment];
  }
}

- (void)_sendAcknowledgment
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 24);
  v3[0] = 67109120;
  v3[1] = v2;
  _os_log_debug_impl(&dword_1A8AA7000, a2, OS_LOG_TYPE_DEBUG, "PRRenderingServiceClient: Sent motion events ack, pid: %d", v3, 8u);
}

- (PRRenderingServiceClientDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end