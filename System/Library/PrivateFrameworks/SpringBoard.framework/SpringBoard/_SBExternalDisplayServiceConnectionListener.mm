@interface _SBExternalDisplayServiceConnectionListener
- (_SBExternalDisplayServiceConnectionListener)initWithServiceQueue:(id)queue;
- (_SBExternalDisplayServiceConnectionListenerDelegate)delegate;
- (id)_clientForConnection:(id)connection;
- (id)_createClientForConnection:(id)connection;
- (void)_handleDisconnectForServiceConnection:(id)connection;
- (void)_removeClientForConnection:(id)connection;
- (void)getConnectedDisplayInfoWithCompletion:(id)completion;
- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context;
- (void)notifyObserversExternalDisplayDidConnect:(id)connect;
- (void)notifyObserversExternalDisplayDidUpdateProperties:(id)properties requestingClient:(id)client;
- (void)notifyObserversExternalDisplayWillDisconnect:(id)disconnect;
- (void)setDisplayArrangement:(id)arrangement forDisplay:(id)display;
- (void)setDisplayMirroringEnabled:(id)enabled forDisplay:(id)display;
- (void)setDisplayModeSettings:(id)settings forDisplay:(id)display options:(id)options completionHandler:(id)handler;
@end

@implementation _SBExternalDisplayServiceConnectionListener

- (_SBExternalDisplayServiceConnectionListener)initWithServiceQueue:(id)queue
{
  queueCopy = queue;
  v19.receiver = self;
  v19.super_class = _SBExternalDisplayServiceConnectionListener;
  v6 = [(_SBExternalDisplayServiceConnectionListener *)&v19 init];
  v7 = v6;
  if (v6)
  {
    v6->_lock._os_unfair_lock_opaque = 0;
    strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    lock_connectionToClientMap = v7->_lock_connectionToClientMap;
    v7->_lock_connectionToClientMap = strongToStrongObjectsMapTable;

    v10 = [objc_alloc(MEMORY[0x277D0AAF8]) initWithEntitlement:@"com.apple.springboard.externaldisplay.displayArrangements"];
    serviceClientAuthenticator = v7->_serviceClientAuthenticator;
    v7->_serviceClientAuthenticator = v10;

    objc_storeStrong(&v7->_serviceQueue, queue);
    v12 = MEMORY[0x277CF32A0];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __68___SBExternalDisplayServiceConnectionListener_initWithServiceQueue___block_invoke;
    v17[3] = &unk_2783A9A18;
    v13 = v7;
    v18 = v13;
    v14 = [v12 listenerWithConfigurator:v17];
    connectionListener = v13->_connectionListener;
    v13->_connectionListener = v14;
  }

  return v7;
}

- (void)notifyObserversExternalDisplayDidUpdateProperties:(id)properties requestingClient:(id)client
{
  propertiesCopy = properties;
  clientCopy = client;
  serviceQueue = self->_serviceQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __114___SBExternalDisplayServiceConnectionListener_notifyObserversExternalDisplayDidUpdateProperties_requestingClient___block_invoke;
  block[3] = &unk_2783A8ED8;
  block[4] = self;
  v12 = clientCopy;
  v13 = propertiesCopy;
  v9 = propertiesCopy;
  v10 = clientCopy;
  dispatch_async(serviceQueue, block);
}

- (void)notifyObserversExternalDisplayDidConnect:(id)connect
{
  connectCopy = connect;
  serviceQueue = self->_serviceQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __88___SBExternalDisplayServiceConnectionListener_notifyObserversExternalDisplayDidConnect___block_invoke;
  v7[3] = &unk_2783A92D8;
  v7[4] = self;
  v8 = connectCopy;
  v6 = connectCopy;
  dispatch_async(serviceQueue, v7);
}

- (void)notifyObserversExternalDisplayWillDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  serviceQueue = self->_serviceQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __92___SBExternalDisplayServiceConnectionListener_notifyObserversExternalDisplayWillDisconnect___block_invoke;
  v7[3] = &unk_2783A92D8;
  v7[4] = self;
  v8 = disconnectCopy;
  v6 = disconnectCopy;
  dispatch_async(serviceQueue, v7);
}

- (id)_clientForConnection:(id)connection
{
  connectionCopy = connection;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMapTable *)self->_lock_connectionToClientMap objectForKey:connectionCopy];

  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (id)_createClientForConnection:(id)connection
{
  connectionCopy = connection;
  if (!connectionCopy)
  {
    [_SBExternalDisplayServiceConnectionListener _createClientForConnection:];
  }

  remoteProcess = [connectionCopy remoteProcess];

  if (!remoteProcess)
  {
    [_SBExternalDisplayServiceConnectionListener _createClientForConnection:];
  }

  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  v7 = [(NSMapTable *)self->_lock_connectionToClientMap objectForKey:connectionCopy];

  if (v7)
  {
    [(_SBExternalDisplayServiceConnectionListener *)a2 _createClientForConnection:connectionCopy];
  }

  v8 = [_SBExternalDisplayServiceClient alloc];
  remoteProcess2 = [connectionCopy remoteProcess];
  v10 = [(_SBExternalDisplayServiceClient *)v8 initWithConnection:connectionCopy remoteProcess:remoteProcess2];

  [(NSMapTable *)self->_lock_connectionToClientMap setObject:v10 forKey:connectionCopy];
  os_unfair_lock_unlock(&self->_lock);

  return v10;
}

- (void)_removeClientForConnection:(id)connection
{
  connectionCopy = connection;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  [(NSMapTable *)self->_lock_connectionToClientMap removeObjectForKey:connectionCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)getConnectedDisplayInfoWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_serviceQueue);
  currentContext = [MEMORY[0x277CF3280] currentContext];
  v5 = [(_SBExternalDisplayServiceConnectionListener *)self _clientForConnection:currentContext];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = WeakRetained;
  if (v5)
  {
    if (WeakRetained)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [_SBExternalDisplayServiceConnectionListener getConnectedDisplayInfoWithCompletion:];
    if (v7)
    {
      goto LABEL_3;
    }
  }

  [_SBExternalDisplayServiceConnectionListener getConnectedDisplayInfoWithCompletion:];
LABEL_3:
  [v7 client:v5 getConnectedDisplayInfoWithCompletion:completionCopy];
}

- (void)setDisplayArrangement:(id)arrangement forDisplay:(id)display
{
  arrangementCopy = arrangement;
  displayCopy = display;
  dispatch_assert_queue_V2(self->_serviceQueue);
  currentContext = [MEMORY[0x277CF3280] currentContext];
  v8 = [(_SBExternalDisplayServiceConnectionListener *)self _clientForConnection:currentContext];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v10 = WeakRetained;
  if (v8)
  {
    if (WeakRetained)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [_SBExternalDisplayServiceConnectionListener setDisplayArrangement:forDisplay:];
    if (v10)
    {
      goto LABEL_3;
    }
  }

  [_SBExternalDisplayServiceConnectionListener setDisplayArrangement:forDisplay:];
LABEL_3:
  [v10 client:v8 setDisplayArrangement:arrangementCopy forDisplay:displayCopy];
}

- (void)setDisplayMirroringEnabled:(id)enabled forDisplay:(id)display
{
  enabledCopy = enabled;
  displayCopy = display;
  dispatch_assert_queue_V2(self->_serviceQueue);
  currentContext = [MEMORY[0x277CF3280] currentContext];
  v8 = [(_SBExternalDisplayServiceConnectionListener *)self _clientForConnection:currentContext];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v10 = WeakRetained;
  if (v8)
  {
    if (WeakRetained)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [_SBExternalDisplayServiceConnectionListener setDisplayMirroringEnabled:forDisplay:];
    if (v10)
    {
      goto LABEL_3;
    }
  }

  [_SBExternalDisplayServiceConnectionListener setDisplayMirroringEnabled:forDisplay:];
LABEL_3:
  [v10 client:v8 setDisplayMirroringEnabled:enabledCopy forDisplay:displayCopy];
}

- (void)setDisplayModeSettings:(id)settings forDisplay:(id)display options:(id)options completionHandler:(id)handler
{
  settingsCopy = settings;
  displayCopy = display;
  optionsCopy = options;
  handlerCopy = handler;
  dispatch_assert_queue_V2(self->_serviceQueue);
  currentContext = [MEMORY[0x277CF3280] currentContext];
  v14 = [(_SBExternalDisplayServiceConnectionListener *)self _clientForConnection:currentContext];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v16 = WeakRetained;
  if (v14)
  {
    if (WeakRetained)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [_SBExternalDisplayServiceConnectionListener setDisplayModeSettings:forDisplay:options:completionHandler:];
    if (v16)
    {
      goto LABEL_3;
    }
  }

  [_SBExternalDisplayServiceConnectionListener setDisplayModeSettings:forDisplay:options:completionHandler:];
LABEL_3:
  [v16 client:v14 setDisplayModeSettings:settingsCopy forDisplay:displayCopy options:optionsCopy completionHandler:handlerCopy];
}

- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context
{
  v20 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  v7 = SBLogDisplayControlling();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v19 = connectionCopy;
    _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_INFO, "SBExternalDisplayService: Received Connection: %{public}@", buf, 0xCu);
  }

  serviceClientAuthenticator = self->_serviceClientAuthenticator;
  remoteProcess = [connectionCopy remoteProcess];
  auditToken = [remoteProcess auditToken];
  v17 = 0;
  v11 = [(FBServiceClientAuthenticator *)serviceClientAuthenticator authenticateAuditToken:auditToken error:&v17];
  v12 = v17;

  if ((v11 & 1) == 0)
  {
    v15 = SBLogDisplayControlling();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [_SBExternalDisplayServiceConnectionListener listener:v12 didReceiveConnection:connectionCopy withContext:v15];
    }

    goto LABEL_14;
  }

  if ((SBFIsChamoisExternalDisplayControllerAvailable() & 1) == 0)
  {
    v15 = SBLogDisplayControlling();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [_SBExternalDisplayServiceConnectionListener listener:v15 didReceiveConnection:? withContext:?];
    }

LABEL_14:

    [connectionCopy invalidate];
    goto LABEL_15;
  }

  v13 = [(_SBExternalDisplayServiceConnectionListener *)self _createClientForConnection:connectionCopy];
  if (!v13)
  {
    [_SBExternalDisplayServiceConnectionListener listener:didReceiveConnection:withContext:];
  }

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __89___SBExternalDisplayServiceConnectionListener_listener_didReceiveConnection_withContext___block_invoke;
  v16[3] = &unk_2783AB730;
  v16[4] = self;
  [connectionCopy configureConnection:v16];
  v14 = SBLogDisplayControlling();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [_SBExternalDisplayServiceConnectionListener listener:v13 didReceiveConnection:v14 withContext:?];
  }

  [connectionCopy activate];
LABEL_15:
}

- (void)_handleDisconnectForServiceConnection:(id)connection
{
  serviceQueue = self->_serviceQueue;
  connectionCopy = connection;
  dispatch_assert_queue_V2(serviceQueue);
  [(_SBExternalDisplayServiceConnectionListener *)self _removeClientForConnection:connectionCopy];
}

- (_SBExternalDisplayServiceConnectionListenerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_createClientForConnection:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"connection" object:? file:? lineNumber:? description:?];
}

- (void)_createClientForConnection:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"[connection remoteProcess]" object:? file:? lineNumber:? description:?];
}

- (void)_createClientForConnection:(uint64_t)a3 .cold.3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"_SBExternalDisplayServiceConnectionListener.m" lineNumber:156 description:{@"Already tracking connection: %@", a3}];
}

- (void)getConnectedDisplayInfoWithCompletion:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"client" object:? file:? lineNumber:? description:?];
}

- (void)getConnectedDisplayInfoWithCompletion:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"delegate" object:? file:? lineNumber:? description:?];
}

- (void)setDisplayArrangement:forDisplay:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"client" object:? file:? lineNumber:? description:?];
}

- (void)setDisplayArrangement:forDisplay:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"delegate" object:? file:? lineNumber:? description:?];
}

- (void)setDisplayMirroringEnabled:forDisplay:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"client" object:? file:? lineNumber:? description:?];
}

- (void)setDisplayMirroringEnabled:forDisplay:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"delegate" object:? file:? lineNumber:? description:?];
}

- (void)setDisplayModeSettings:forDisplay:options:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"client" object:? file:? lineNumber:? description:?];
}

- (void)setDisplayModeSettings:forDisplay:options:completionHandler:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"delegate" object:? file:? lineNumber:? description:?];
}

- (void)listener:(uint64_t)a1 didReceiveConnection:(uint64_t)a2 withContext:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_error_impl(&dword_21ED4E000, log, OS_LOG_TYPE_ERROR, "SBExternalDisplayService: Connection did not pass entitlement validation: %{public}@\n %{public}@", &v3, 0x16u);
}

- (void)listener:didReceiveConnection:withContext:.cold.3()
{
  OUTLINED_FUNCTION_1_2();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v1 handleFailureInMethod:@"client" object:? file:? lineNumber:? description:?];
}

- (void)listener:(uint64_t)a1 didReceiveConnection:(NSObject *)a2 withContext:.cold.4(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_debug_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_DEBUG, "SBExternalDisplayService: connecting client %{public}@", &v2, 0xCu);
}

@end