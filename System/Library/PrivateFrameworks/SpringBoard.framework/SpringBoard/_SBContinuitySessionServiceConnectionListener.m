@interface _SBContinuitySessionServiceConnectionListener
- (_SBContinuitySessionServiceConnectionListener)initWithServiceQueue:(id)a3;
- (_SBContinuitySessionServiceConnectionListenerDelegate)delegate;
- (id)_clientForConnection:(id)a3;
- (id)_lock_clientForConnection:(id)a3;
- (id)_sessionServiceClientWithConnectionContext:(id)a3;
- (void)_removeClientForConnection:(id)a3;
- (void)clientActivated;
- (void)clientHasAdoptedScreenCaptureNotifications;
- (void)didCaptureScreenshot;
- (void)didStartScreenRecording;
- (void)didStopScreenRecording;
- (void)didUpdateExternalBlockedReasons:(id)a3;
- (void)handleContinuityButtonEvent:(id)a3;
- (void)handleLaunchEventOfType:(id)a3 payload:(id)a4;
- (void)listener:(id)a3 didReceiveConnection:(id)a4 withContext:(id)a5;
- (void)noteHIDServicesConfigured;
- (void)setHostedInterfaceOrientation:(id)a3;
- (void)updatedAppearanceSettings:(id)a3 transitionContext:(id)a4 completion:(id)a5;
@end

@implementation _SBContinuitySessionServiceConnectionListener

- (_SBContinuitySessionServiceConnectionListener)initWithServiceQueue:(id)a3
{
  v5 = a3;
  v20.receiver = self;
  v20.super_class = _SBContinuitySessionServiceConnectionListener;
  v6 = [(_SBContinuitySessionServiceConnectionListener *)&v20 init];
  v7 = v6;
  if (v6)
  {
    v6->_lock._os_unfair_lock_opaque = 0;
    v8 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    lock_connectionToClientMap = v7->_lock_connectionToClientMap;
    v7->_lock_connectionToClientMap = v8;

    v10 = objc_alloc(MEMORY[0x277D0AAF8]);
    v11 = [v10 initWithEntitlement:*MEMORY[0x277D67F48]];
    serviceClientAuthenticator = v7->_serviceClientAuthenticator;
    v7->_serviceClientAuthenticator = v11;

    objc_storeStrong(&v7->_connectionQueue, a3);
    v13 = MEMORY[0x277CF32A0];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __70___SBContinuitySessionServiceConnectionListener_initWithServiceQueue___block_invoke;
    v18[3] = &unk_2783A9A18;
    v14 = v7;
    v19 = v14;
    v15 = [v13 listenerWithConfigurator:v18];
    connectionListener = v14->_connectionListener;
    v14->_connectionListener = v15;
  }

  return v7;
}

- (id)_clientForConnection:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(_SBContinuitySessionServiceConnectionListener *)self _lock_clientForConnection:v4];

  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (id)_lock_clientForConnection:(id)a3
{
  v4 = a3;
  os_unfair_lock_assert_owner(&self->_lock);
  v5 = [(NSMapTable *)self->_lock_connectionToClientMap objectForKey:v4];

  return v5;
}

- (void)_removeClientForConnection:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(NSMapTable *)self->_lock_connectionToClientMap removeObjectForKey:v4];

  os_unfair_lock_unlock(&self->_lock);
}

- (id)_sessionServiceClientWithConnectionContext:(id)a3
{
  v5 = a3;
  serviceClientAuthenticator = self->_serviceClientAuthenticator;
  v7 = [v5 remoteToken];
  v13 = 0;
  v8 = [(FBServiceClientAuthenticator *)serviceClientAuthenticator authenticateAuditToken:v7 error:&v13];
  v9 = v13;

  if (v8)
  {
    v10 = [(_SBContinuitySessionServiceConnectionListener *)self _clientForConnection:v5];
    if (v10)
    {
      goto LABEL_7;
    }

    [(_SBContinuitySessionServiceConnectionListener *)a2 _sessionServiceClientWithConnectionContext:&v14];
    v11 = v14;
  }

  else
  {
    v11 = SBLogContinuitySessionService();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [_SBContinuitySessionServiceConnectionListener _sessionServiceClientWithConnectionContext:v5];
    }
  }

  v10 = 0;
LABEL_7:

  return v10;
}

- (void)handleLaunchEventOfType:(id)a3 payload:(id)a4
{
  v9 = a3;
  v6 = a4;
  dispatch_assert_queue_V2(self->_connectionQueue);
  v7 = [MEMORY[0x277CF3280] currentContext];
  v8 = [(_SBContinuitySessionServiceConnectionListener *)self _sessionServiceClientWithConnectionContext:v7];

  if (v8)
  {
    [v8 _connectionQueue_handleLaunchEventOfType:v9 payload:v6];
  }
}

- (void)handleContinuityButtonEvent:(id)a3
{
  v6 = a3;
  dispatch_assert_queue_V2(self->_connectionQueue);
  v4 = [MEMORY[0x277CF3280] currentContext];
  v5 = [(_SBContinuitySessionServiceConnectionListener *)self _sessionServiceClientWithConnectionContext:v4];

  if (v5)
  {
    [v5 _connectionQueue_handleContinuityButtonEvent:{objc_msgSend(v6, "unsignedIntValue")}];
  }
}

- (void)setHostedInterfaceOrientation:(id)a3
{
  v6 = a3;
  dispatch_assert_queue_V2(self->_connectionQueue);
  v4 = [MEMORY[0x277CF3280] currentContext];
  v5 = [(_SBContinuitySessionServiceConnectionListener *)self _sessionServiceClientWithConnectionContext:v4];

  if (v5)
  {
    [v5 _connectionQueue_setHostedInterfaceOrientation:{objc_msgSend(v6, "unsignedIntValue")}];
  }
}

- (void)didUpdateExternalBlockedReasons:(id)a3
{
  v6 = a3;
  dispatch_assert_queue_V2(self->_connectionQueue);
  v4 = [MEMORY[0x277CF3280] currentContext];
  v5 = [(_SBContinuitySessionServiceConnectionListener *)self _sessionServiceClientWithConnectionContext:v4];

  if (v5)
  {
    [v5 _connectionQueue_handleUpdatedExternallyBlockedReasons:v6];
  }
}

- (void)noteHIDServicesConfigured
{
  dispatch_assert_queue_V2(self->_connectionQueue);
  v3 = [MEMORY[0x277CF3280] currentContext];
  v5 = [(_SBContinuitySessionServiceConnectionListener *)self _sessionServiceClientWithConnectionContext:v3];

  v4 = v5;
  if (v5)
  {
    [v5 _connectionQueue_handleHIDServicesConfigured];
    v4 = v5;
  }
}

- (void)updatedAppearanceSettings:(id)a3 transitionContext:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  dispatch_assert_queue_V2(self->_connectionQueue);
  v11 = [MEMORY[0x277CF3280] currentContext];
  v12 = [(_SBContinuitySessionServiceConnectionListener *)self _sessionServiceClientWithConnectionContext:v11];

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __104___SBContinuitySessionServiceConnectionListener_updatedAppearanceSettings_transitionContext_completion___block_invoke;
  v16[3] = &unk_2783B7568;
  v17 = v10;
  v13 = v10;
  v14 = MEMORY[0x223D6F7F0](v16);
  if (v12)
  {
    [v12 _connectionQueue_updatedAppearanceSettings:v8 transitionContext:v9 completion:v14];
  }

  else
  {
    v15 = SBUIContinuitySessionErrorCreate();
    (v14)[2](v14, 0, v15);
  }
}

- (void)clientActivated
{
  dispatch_assert_queue_V2(self->_connectionQueue);
  v3 = [MEMORY[0x277CF3280] currentContext];
  v5 = [(_SBContinuitySessionServiceConnectionListener *)self _sessionServiceClientWithConnectionContext:v3];

  v4 = v5;
  if (v5)
  {
    [v5 _connectionQueue_handleActivated];
    v4 = v5;
  }
}

- (void)didCaptureScreenshot
{
  dispatch_assert_queue_V2(self->_connectionQueue);
  v3 = [MEMORY[0x277CF3280] currentContext];
  v5 = [(_SBContinuitySessionServiceConnectionListener *)self _sessionServiceClientWithConnectionContext:v3];

  v4 = v5;
  if (v5)
  {
    [v5 _connectionQueue_didCaptureScreenshot];
    v4 = v5;
  }
}

- (void)didStartScreenRecording
{
  dispatch_assert_queue_V2(self->_connectionQueue);
  v3 = [MEMORY[0x277CF3280] currentContext];
  v5 = [(_SBContinuitySessionServiceConnectionListener *)self _sessionServiceClientWithConnectionContext:v3];

  v4 = v5;
  if (v5)
  {
    [v5 _connectionQueue_didStartScreenRecording];
    v4 = v5;
  }
}

- (void)didStopScreenRecording
{
  dispatch_assert_queue_V2(self->_connectionQueue);
  v3 = [MEMORY[0x277CF3280] currentContext];
  v5 = [(_SBContinuitySessionServiceConnectionListener *)self _sessionServiceClientWithConnectionContext:v3];

  v4 = v5;
  if (v5)
  {
    [v5 _connectionQueue_didStopScreenRecording];
    v4 = v5;
  }
}

- (void)clientHasAdoptedScreenCaptureNotifications
{
  dispatch_assert_queue_V2(self->_connectionQueue);
  v3 = [MEMORY[0x277CF3280] currentContext];
  v5 = [(_SBContinuitySessionServiceConnectionListener *)self _sessionServiceClientWithConnectionContext:v3];

  v4 = v5;
  if (v5)
  {
    [v5 _connectionQueue_clientHasAdoptedScreenCaptureNotifications];
    v4 = v5;
  }
}

- (void)listener:(id)a3 didReceiveConnection:(id)a4 withContext:(id)a5
{
  v7 = a4;
  serviceClientAuthenticator = self->_serviceClientAuthenticator;
  v9 = [v7 remoteToken];
  v19 = 0;
  v10 = [(FBServiceClientAuthenticator *)serviceClientAuthenticator authenticateAuditToken:v9 error:&v19];
  v11 = v19;

  if ((v10 & 1) == 0)
  {
    v17 = SBLogContinuitySessionService();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [_SBContinuitySessionServiceConnectionListener _sessionServiceClientWithConnectionContext:v7];
    }

    goto LABEL_13;
  }

  if ((SBFIsOnenessAvailable() & 1) == 0)
  {
    v17 = SBLogContinuitySessionService();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [_SBContinuitySessionServiceConnectionListener listener:v7 didReceiveConnection:? withContext:?];
    }

    goto LABEL_13;
  }

  if (!+[SBContinuitySessionManager areContinuitySessionsAllowed])
  {
    v17 = SBLogContinuitySessionService();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [_SBContinuitySessionServiceConnectionListener listener:v7 didReceiveConnection:? withContext:?];
    }

LABEL_13:

    [v7 invalidate];
    goto LABEL_14;
  }

  v12 = [(_SBContinuitySessionServiceConnectionListener *)self _clientForConnection:v7];

  if (v12)
  {
    [_SBContinuitySessionServiceConnectionListener listener:a2 didReceiveConnection:self withContext:?];
  }

  v13 = [_SBContinuitySessionServiceClient alloc];
  v14 = [v7 remoteToken];
  v15 = -[_SBContinuitySessionServiceClient initWithConnection:pid:](v13, "initWithConnection:pid:", v7, [v14 pid]);

  os_unfair_lock_lock(&self->_lock);
  [(NSMapTable *)self->_lock_connectionToClientMap setObject:v15 forKey:v7];
  os_unfair_lock_unlock(&self->_lock);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __91___SBContinuitySessionServiceConnectionListener_listener_didReceiveConnection_withContext___block_invoke;
  v18[3] = &unk_2783AB730;
  v18[4] = self;
  [v7 configureConnection:v18];
  [v7 activate];
  v16 = v15;
  BSDispatchMain();

LABEL_14:
}

- (_SBContinuitySessionServiceConnectionListenerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_sessionServiceClientWithConnectionContext:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 remoteToken];
  [v1 pid];
  OUTLINED_FUNCTION_0_27();
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
}

- (uint64_t)_sessionServiceClientWithConnectionContext:(void *)a3 .cold.2(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  *a3 = v6;
  return [v6 handleFailureInMethod:a1 object:a2 file:@"_SBContinuitySessionServiceConnectionListener.m" lineNumber:91 description:{@"Invalid parameter not satisfying: %@", @"serviceClient"}];
}

- (void)listener:(void *)a1 didReceiveConnection:withContext:.cold.2(void *a1)
{
  v1 = [a1 remoteToken];
  [v1 pid];
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 8u);
}

- (void)listener:(void *)a1 didReceiveConnection:withContext:.cold.3(void *a1)
{
  v1 = [a1 remoteToken];
  [v1 pid];
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 8u);
}

- (void)listener:(uint64_t)a1 didReceiveConnection:(uint64_t)a2 withContext:.cold.4(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"_SBContinuitySessionServiceConnectionListener.m" lineNumber:219 description:@"Already tracking a client with this connection.. how???"];
}

@end