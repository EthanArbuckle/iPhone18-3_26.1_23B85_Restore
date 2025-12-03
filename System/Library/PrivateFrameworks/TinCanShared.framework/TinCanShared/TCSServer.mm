@interface TCSServer
- (BOOL)hasValidConnection;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (TCSServer)init;
- (TCSServerXPC)delegate;
- (void)_addConnection:(id)connection;
- (void)_enumerateConnectionsWithBlock:(id)block;
- (void)_removeConnection:(id)connection;
- (void)callConnected:(id)connected;
- (void)callStatusChanged:(id)changed;
- (void)completeInvitationFlowForContact:(id)contact;
- (void)disconnectCall:(id)call;
- (void)getCall:(id)call;
- (void)getLogEntryForCallWithUniqueProxyIdentifier:(id)identifier completion:(id)completion;
- (void)queryIsTinCannable:(id)cannable;
- (void)remoteUplinkMuteChanged:(id)changed;
- (void)sessionViewControllerViewDidAppear;
@end

@implementation TCSServer

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  v8 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_287F2AB80];
  [connectionCopy setExportedInterface:v8];

  [connectionCopy setExportedObject:self];
  v9 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_287F2ADC8];
  [connectionCopy setRemoteObjectInterface:v9];

  objc_initWeak(&location, self);
  objc_initWeak(&from, connectionCopy);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __48__TCSServer_listener_shouldAcceptNewConnection___block_invoke;
  v13[3] = &unk_279DC1CE8;
  objc_copyWeak(&v14, &location);
  objc_copyWeak(&v15, &from);
  [connectionCopy setInvalidationHandler:v13];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __48__TCSServer_listener_shouldAcceptNewConnection___block_invoke_64;
  v11[3] = &unk_279DC1990;
  objc_copyWeak(&v12, &from);
  [connectionCopy setInterruptionHandler:v11];
  [(TCSServer *)self _addConnection:connectionCopy];
  [connectionCopy resume];
  objc_destroyWeak(&v12);
  objc_destroyWeak(&v15);
  objc_destroyWeak(&v14);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);

  return 1;
}

void __48__TCSServer_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  if (v3)
  {
    _TCSInitializeLogging();
    v4 = TCSLogDefault;
    if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138412290;
      v7 = v3;
      _os_log_impl(&dword_26F110000, v4, OS_LOG_TYPE_DEFAULT, "TCSServer connection invalidation handler called for %@", &v6, 0xCu);
    }

    [WeakRetained _removeConnection:v3];
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __48__TCSServer_listener_shouldAcceptNewConnection___block_invoke_64(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    _TCSInitializeLogging();
    v2 = TCSLogDefault;
    if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 138412290;
      v5 = WeakRetained;
      _os_log_impl(&dword_26F110000, v2, OS_LOG_TYPE_DEFAULT, "TCSServer connection interruption handler called for %@", &v4, 0xCu);
    }

    [WeakRetained invalidate];
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (TCSServer)init
{
  v9.receiver = self;
  v9.super_class = TCSServer;
  v2 = [(TCSServer *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v2->_connectionsLock._os_unfair_lock_opaque = 0;
    array = [MEMORY[0x277CBEB18] array];
    connections = v3->_connections;
    v3->_connections = array;

    v6 = [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:@"com.apple.tincan.server"];
    listener = v3->_listener;
    v3->_listener = v6;

    [(NSXPCListener *)v3->_listener setDelegate:v3];
    [(NSXPCListener *)v3->_listener resume];
  }

  return v3;
}

- (BOOL)hasValidConnection
{
  os_unfair_lock_lock(&self->_connectionsLock);
  v3 = [(NSMutableArray *)self->_connections count];
  os_unfair_lock_unlock(&self->_connectionsLock);
  return v3 != 0;
}

- (void)callStatusChanged:(id)changed
{
  changedCopy = changed;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __31__TCSServer_callStatusChanged___block_invoke;
  v6[3] = &unk_279DC1D10;
  v7 = changedCopy;
  v5 = changedCopy;
  [(TCSServer *)self _enumerateConnectionsWithBlock:v6];
}

void __31__TCSServer_callStatusChanged___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 remoteObjectProxy];
  [v3 callStatusChanged:*(a1 + 32)];
}

- (void)callConnected:(id)connected
{
  connectedCopy = connected;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __27__TCSServer_callConnected___block_invoke;
  v6[3] = &unk_279DC1D10;
  v7 = connectedCopy;
  v5 = connectedCopy;
  [(TCSServer *)self _enumerateConnectionsWithBlock:v6];
}

void __27__TCSServer_callConnected___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 remoteObjectProxy];
  [v3 callConnected:*(a1 + 32)];
}

- (void)remoteUplinkMuteChanged:(id)changed
{
  changedCopy = changed;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __37__TCSServer_remoteUplinkMuteChanged___block_invoke;
  v6[3] = &unk_279DC1D10;
  v7 = changedCopy;
  v5 = changedCopy;
  [(TCSServer *)self _enumerateConnectionsWithBlock:v6];
}

void __37__TCSServer_remoteUplinkMuteChanged___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 remoteObjectProxy];
  [v3 remoteUplinkMuteChanged:*(a1 + 32)];
}

- (void)sessionViewControllerViewDidAppear
{
  delegate = [(TCSServer *)self delegate];
  [delegate sessionViewControllerViewDidAppear];
}

- (void)getCall:(id)call
{
  callCopy = call;
  delegate = [(TCSServer *)self delegate];
  [delegate getCall:callCopy];
}

- (void)disconnectCall:(id)call
{
  callCopy = call;
  delegate = [(TCSServer *)self delegate];
  [delegate disconnectCall:callCopy];
}

- (void)queryIsTinCannable:(id)cannable
{
  cannableCopy = cannable;
  delegate = [(TCSServer *)self delegate];
  [delegate queryIsTinCannable:cannableCopy];
}

- (void)completeInvitationFlowForContact:(id)contact
{
  contactCopy = contact;
  delegate = [(TCSServer *)self delegate];
  [delegate completeInvitationFlowForContact:contactCopy];
}

- (void)getLogEntryForCallWithUniqueProxyIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  identifierCopy = identifier;
  delegate = [(TCSServer *)self delegate];
  [delegate getLogEntryForCallWithUniqueProxyIdentifier:identifierCopy completion:completionCopy];
}

- (void)_addConnection:(id)connection
{
  connectionCopy = connection;
  os_unfair_lock_lock(&self->_connectionsLock);
  [(NSMutableArray *)self->_connections addObject:connectionCopy];

  os_unfair_lock_unlock(&self->_connectionsLock);
}

- (void)_enumerateConnectionsWithBlock:(id)block
{
  blockCopy = block;
  os_unfair_lock_lock(&self->_connectionsLock);
  connections = self->_connections;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__TCSServer__enumerateConnectionsWithBlock___block_invoke;
  v7[3] = &unk_279DC1D38;
  v8 = blockCopy;
  v6 = blockCopy;
  [(NSMutableArray *)connections enumerateObjectsUsingBlock:v7];
  os_unfair_lock_unlock(&self->_connectionsLock);
}

- (void)_removeConnection:(id)connection
{
  connectionCopy = connection;
  os_unfair_lock_lock(&self->_connectionsLock);
  [(NSMutableArray *)self->_connections removeObject:connectionCopy];

  [(NSMutableArray *)self->_connections count];

  os_unfair_lock_unlock(&self->_connectionsLock);
}

- (TCSServerXPC)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end