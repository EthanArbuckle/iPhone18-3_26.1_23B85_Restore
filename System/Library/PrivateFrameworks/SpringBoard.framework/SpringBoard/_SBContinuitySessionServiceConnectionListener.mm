@interface _SBContinuitySessionServiceConnectionListener
- (_SBContinuitySessionServiceConnectionListener)initWithServiceQueue:(id)queue;
- (_SBContinuitySessionServiceConnectionListenerDelegate)delegate;
- (id)_clientForConnection:(id)connection;
- (id)_lock_clientForConnection:(id)connection;
- (id)_sessionServiceClientWithConnectionContext:(id)context;
- (void)_removeClientForConnection:(id)connection;
- (void)clientActivated;
- (void)clientHasAdoptedScreenCaptureNotifications;
- (void)didCaptureScreenshot;
- (void)didStartScreenRecording;
- (void)didStopScreenRecording;
- (void)didUpdateExternalBlockedReasons:(id)reasons;
- (void)handleContinuityButtonEvent:(id)event;
- (void)handleLaunchEventOfType:(id)type payload:(id)payload;
- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context;
- (void)noteHIDServicesConfigured;
- (void)setHostedInterfaceOrientation:(id)orientation;
- (void)updatedAppearanceSettings:(id)settings transitionContext:(id)context completion:(id)completion;
@end

@implementation _SBContinuitySessionServiceConnectionListener

- (_SBContinuitySessionServiceConnectionListener)initWithServiceQueue:(id)queue
{
  queueCopy = queue;
  v20.receiver = self;
  v20.super_class = _SBContinuitySessionServiceConnectionListener;
  v6 = [(_SBContinuitySessionServiceConnectionListener *)&v20 init];
  v7 = v6;
  if (v6)
  {
    v6->_lock._os_unfair_lock_opaque = 0;
    strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    lock_connectionToClientMap = v7->_lock_connectionToClientMap;
    v7->_lock_connectionToClientMap = strongToStrongObjectsMapTable;

    v10 = objc_alloc(MEMORY[0x277D0AAF8]);
    v11 = [v10 initWithEntitlement:*MEMORY[0x277D67F48]];
    serviceClientAuthenticator = v7->_serviceClientAuthenticator;
    v7->_serviceClientAuthenticator = v11;

    objc_storeStrong(&v7->_connectionQueue, queue);
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

- (id)_clientForConnection:(id)connection
{
  connectionCopy = connection;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(_SBContinuitySessionServiceConnectionListener *)self _lock_clientForConnection:connectionCopy];

  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (id)_lock_clientForConnection:(id)connection
{
  connectionCopy = connection;
  os_unfair_lock_assert_owner(&self->_lock);
  v5 = [(NSMapTable *)self->_lock_connectionToClientMap objectForKey:connectionCopy];

  return v5;
}

- (void)_removeClientForConnection:(id)connection
{
  connectionCopy = connection;
  os_unfair_lock_lock(&self->_lock);
  [(NSMapTable *)self->_lock_connectionToClientMap removeObjectForKey:connectionCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (id)_sessionServiceClientWithConnectionContext:(id)context
{
  contextCopy = context;
  serviceClientAuthenticator = self->_serviceClientAuthenticator;
  remoteToken = [contextCopy remoteToken];
  v13 = 0;
  v8 = [(FBServiceClientAuthenticator *)serviceClientAuthenticator authenticateAuditToken:remoteToken error:&v13];
  v9 = v13;

  if (v8)
  {
    v10 = [(_SBContinuitySessionServiceConnectionListener *)self _clientForConnection:contextCopy];
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
      [_SBContinuitySessionServiceConnectionListener _sessionServiceClientWithConnectionContext:contextCopy];
    }
  }

  v10 = 0;
LABEL_7:

  return v10;
}

- (void)handleLaunchEventOfType:(id)type payload:(id)payload
{
  typeCopy = type;
  payloadCopy = payload;
  dispatch_assert_queue_V2(self->_connectionQueue);
  currentContext = [MEMORY[0x277CF3280] currentContext];
  v8 = [(_SBContinuitySessionServiceConnectionListener *)self _sessionServiceClientWithConnectionContext:currentContext];

  if (v8)
  {
    [v8 _connectionQueue_handleLaunchEventOfType:typeCopy payload:payloadCopy];
  }
}

- (void)handleContinuityButtonEvent:(id)event
{
  eventCopy = event;
  dispatch_assert_queue_V2(self->_connectionQueue);
  currentContext = [MEMORY[0x277CF3280] currentContext];
  v5 = [(_SBContinuitySessionServiceConnectionListener *)self _sessionServiceClientWithConnectionContext:currentContext];

  if (v5)
  {
    [v5 _connectionQueue_handleContinuityButtonEvent:{objc_msgSend(eventCopy, "unsignedIntValue")}];
  }
}

- (void)setHostedInterfaceOrientation:(id)orientation
{
  orientationCopy = orientation;
  dispatch_assert_queue_V2(self->_connectionQueue);
  currentContext = [MEMORY[0x277CF3280] currentContext];
  v5 = [(_SBContinuitySessionServiceConnectionListener *)self _sessionServiceClientWithConnectionContext:currentContext];

  if (v5)
  {
    [v5 _connectionQueue_setHostedInterfaceOrientation:{objc_msgSend(orientationCopy, "unsignedIntValue")}];
  }
}

- (void)didUpdateExternalBlockedReasons:(id)reasons
{
  reasonsCopy = reasons;
  dispatch_assert_queue_V2(self->_connectionQueue);
  currentContext = [MEMORY[0x277CF3280] currentContext];
  v5 = [(_SBContinuitySessionServiceConnectionListener *)self _sessionServiceClientWithConnectionContext:currentContext];

  if (v5)
  {
    [v5 _connectionQueue_handleUpdatedExternallyBlockedReasons:reasonsCopy];
  }
}

- (void)noteHIDServicesConfigured
{
  dispatch_assert_queue_V2(self->_connectionQueue);
  currentContext = [MEMORY[0x277CF3280] currentContext];
  v5 = [(_SBContinuitySessionServiceConnectionListener *)self _sessionServiceClientWithConnectionContext:currentContext];

  v4 = v5;
  if (v5)
  {
    [v5 _connectionQueue_handleHIDServicesConfigured];
    v4 = v5;
  }
}

- (void)updatedAppearanceSettings:(id)settings transitionContext:(id)context completion:(id)completion
{
  settingsCopy = settings;
  contextCopy = context;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_connectionQueue);
  currentContext = [MEMORY[0x277CF3280] currentContext];
  v12 = [(_SBContinuitySessionServiceConnectionListener *)self _sessionServiceClientWithConnectionContext:currentContext];

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __104___SBContinuitySessionServiceConnectionListener_updatedAppearanceSettings_transitionContext_completion___block_invoke;
  v16[3] = &unk_2783B7568;
  v17 = completionCopy;
  v13 = completionCopy;
  v14 = MEMORY[0x223D6F7F0](v16);
  if (v12)
  {
    [v12 _connectionQueue_updatedAppearanceSettings:settingsCopy transitionContext:contextCopy completion:v14];
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
  currentContext = [MEMORY[0x277CF3280] currentContext];
  v5 = [(_SBContinuitySessionServiceConnectionListener *)self _sessionServiceClientWithConnectionContext:currentContext];

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
  currentContext = [MEMORY[0x277CF3280] currentContext];
  v5 = [(_SBContinuitySessionServiceConnectionListener *)self _sessionServiceClientWithConnectionContext:currentContext];

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
  currentContext = [MEMORY[0x277CF3280] currentContext];
  v5 = [(_SBContinuitySessionServiceConnectionListener *)self _sessionServiceClientWithConnectionContext:currentContext];

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
  currentContext = [MEMORY[0x277CF3280] currentContext];
  v5 = [(_SBContinuitySessionServiceConnectionListener *)self _sessionServiceClientWithConnectionContext:currentContext];

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
  currentContext = [MEMORY[0x277CF3280] currentContext];
  v5 = [(_SBContinuitySessionServiceConnectionListener *)self _sessionServiceClientWithConnectionContext:currentContext];

  v4 = v5;
  if (v5)
  {
    [v5 _connectionQueue_clientHasAdoptedScreenCaptureNotifications];
    v4 = v5;
  }
}

- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context
{
  connectionCopy = connection;
  serviceClientAuthenticator = self->_serviceClientAuthenticator;
  remoteToken = [connectionCopy remoteToken];
  v19 = 0;
  v10 = [(FBServiceClientAuthenticator *)serviceClientAuthenticator authenticateAuditToken:remoteToken error:&v19];
  v11 = v19;

  if ((v10 & 1) == 0)
  {
    v17 = SBLogContinuitySessionService();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [_SBContinuitySessionServiceConnectionListener _sessionServiceClientWithConnectionContext:connectionCopy];
    }

    goto LABEL_13;
  }

  if ((SBFIsOnenessAvailable() & 1) == 0)
  {
    v17 = SBLogContinuitySessionService();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [_SBContinuitySessionServiceConnectionListener listener:connectionCopy didReceiveConnection:? withContext:?];
    }

    goto LABEL_13;
  }

  if (!+[SBContinuitySessionManager areContinuitySessionsAllowed])
  {
    v17 = SBLogContinuitySessionService();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [_SBContinuitySessionServiceConnectionListener listener:connectionCopy didReceiveConnection:? withContext:?];
    }

LABEL_13:

    [connectionCopy invalidate];
    goto LABEL_14;
  }

  v12 = [(_SBContinuitySessionServiceConnectionListener *)self _clientForConnection:connectionCopy];

  if (v12)
  {
    [_SBContinuitySessionServiceConnectionListener listener:a2 didReceiveConnection:self withContext:?];
  }

  v13 = [_SBContinuitySessionServiceClient alloc];
  remoteToken2 = [connectionCopy remoteToken];
  v15 = -[_SBContinuitySessionServiceClient initWithConnection:pid:](v13, "initWithConnection:pid:", connectionCopy, [remoteToken2 pid]);

  os_unfair_lock_lock(&self->_lock);
  [(NSMapTable *)self->_lock_connectionToClientMap setObject:v15 forKey:connectionCopy];
  os_unfair_lock_unlock(&self->_lock);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __91___SBContinuitySessionServiceConnectionListener_listener_didReceiveConnection_withContext___block_invoke;
  v18[3] = &unk_2783AB730;
  v18[4] = self;
  [connectionCopy configureConnection:v18];
  [connectionCopy activate];
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