@interface HKSPXPCConnectionListener
+ (id)listenerWithConnectionInfo:(id)a3;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (HKSPXPCClient)currentClient;
- (HKSPXPCConnectionListener)initWithConnectionInfo:(id)a3;
- (HKSPXPCConnectionListener)initWithConnectionInfo:(id)a3 connectionListener:(id)a4 heartbeatGenerator:(id)a5;
- (HKSPXPCConnectionListenerDelegate)delegate;
- (NSArray)connectedClients;
- (id)_clientIdentifierProviderForClientLink:(id)a3;
- (id)_clientWithConnection:(id)a3 clientLink:(id)a4;
- (id)_currentClientForConnection:(id)a3;
- (id)connectedClientsWithPID:(int)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (void)_didInterruptConnection;
- (void)_didInvalidateConnection:(id)a3;
- (void)_logConnectedClients;
- (void)_withLock:(id)a3;
- (void)addClientConnection:(id)a3 clientLink:(id)a4;
- (void)dealloc;
- (void)performRemoteBlock:(id)a3 onClient:(id)a4;
- (void)performRemoteBlockOnClients:(id)a3 passingTest:(id)a4;
- (void)removeClientConnection:(id)a3;
- (void)startListening;
@end

@implementation HKSPXPCConnectionListener

- (HKSPXPCClient)currentClient
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__7;
  v14 = __Block_byref_object_dispose__7;
  v15 = 0;
  v3 = [MEMORY[0x277CCAE80] currentConnection];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__HKSPXPCConnectionListener_currentClient__block_invoke;
  v7[3] = &unk_279C74230;
  v9 = &v10;
  v7[4] = self;
  v4 = v3;
  v8 = v4;
  [(HKSPXPCConnectionListener *)self _withLock:v7];
  v5 = v11[5];

  _Block_object_dispose(&v10, 8);

  return v5;
}

uint64_t __42__HKSPXPCConnectionListener_currentClient__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _currentClientForConnection:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (HKSPXPCConnectionListenerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

+ (id)listenerWithConnectionInfo:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithConnectionInfo:v3];

  return v4;
}

- (HKSPXPCConnectionListener)initWithConnectionInfo:(id)a3
{
  v4 = MEMORY[0x277CCAE98];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = [v5 machServiceName];
  v8 = [v6 initWithMachServiceName:v7];
  v9 = HKSPStandardHeartbeatGenerator(v5);
  v10 = [(HKSPXPCConnectionListener *)self initWithConnectionInfo:v5 connectionListener:v8 heartbeatGenerator:v9];

  return v10;
}

- (HKSPXPCConnectionListener)initWithConnectionInfo:(id)a3 connectionListener:(id)a4 heartbeatGenerator:(id)a5
{
  v31 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v26.receiver = self;
  v26.super_class = HKSPXPCConnectionListener;
  v12 = [(HKSPXPCConnectionListener *)&v26 init];
  if (v12)
  {
    v13 = HKSPLogForCategory(4uLL);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = objc_opt_class();
      *buf = 138543618;
      v28 = v14;
      v29 = 2114;
      v30 = v9;
      v15 = v14;
      _os_log_impl(&dword_269A84000, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@] initializing with %{public}@", buf, 0x16u);
    }

    objc_storeStrong(&v12->_connectionInfo, a3);
    objc_storeStrong(&v12->_heartbeatGenerator, a5);
    v16 = objc_alloc_init(MEMORY[0x277CBEB58]);
    connectedClientSet = v12->_connectedClientSet;
    v12->_connectedClientSet = v16;

    v12->_clientLock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v12->_connectionListener, a4);
    [(NSXPCListener *)v12->_connectionListener setDelegate:v12];
    objc_initWeak(buf, v12);
    v18 = [HKSPThrottler alloc];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __90__HKSPXPCConnectionListener_initWithConnectionInfo_connectionListener_heartbeatGenerator___block_invoke;
    v24[3] = &unk_279C74E70;
    objc_copyWeak(&v25, buf);
    v19 = [(HKSPThrottler *)v18 initWithInterval:v24 executeBlock:1.0];
    logThrottler = v12->_logThrottler;
    v12->_logThrottler = v19;

    v21 = v12;
    objc_destroyWeak(&v25);
    objc_destroyWeak(buf);
  }

  v22 = *MEMORY[0x277D85DE8];
  return v12;
}

void __90__HKSPXPCConnectionListener_initWithConnectionInfo_connectionListener_heartbeatGenerator___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _logConnectedClients];
}

- (void)_withLock:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_clientLock);
  v4[2](v4);

  os_unfair_lock_unlock(&self->_clientLock);
}

- (void)startListening
{
  v8 = *MEMORY[0x277D85DE8];
  [(NSXPCListener *)self->_connectionListener resume];
  v3 = HKSPLogForCategory(4uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = objc_opt_class();
    v4 = v7;
    _os_log_impl(&dword_269A84000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] sending heartbeat", &v6, 0xCu);
  }

  [(HKSPXPCHeartbeatGenerator *)self->_heartbeatGenerator sendHeartbeat];
  v5 = *MEMORY[0x277D85DE8];
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v41 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HKSPXPCConnectionInfo *)self->_connectionInfo requiredEntitlement];
  if (!v8)
  {
    goto LABEL_3;
  }

  v9 = [(HKSPXPCConnectionInfo *)self->_connectionInfo requiredEntitlement];
  v10 = [v7 valueForEntitlement:v9];
  v11 = [v10 BOOLValue];

  if (!v11)
  {
    v17 = HKSPLogForCategory(4uLL);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v20 = objc_opt_class();
      connectionInfo = self->_connectionInfo;
      v22 = v20;
      v23 = [(HKSPXPCConnectionInfo *)connectionInfo requiredEntitlement];
      *location = 138543874;
      *&location[4] = v20;
      v37 = 2114;
      v38 = v7;
      v39 = 2114;
      v40 = v23;
      _os_log_error_impl(&dword_269A84000, v17, OS_LOG_TYPE_ERROR, "[%{public}@] connection %{public}@ not entitled (%{public}@)", location, 0x20u);
    }

    v16 = 0;
  }

  else
  {
LABEL_3:
    v12 = [(HKSPXPCConnectionInfo *)self->_connectionInfo exportedObjectInterface];
    [v7 setExportedInterface:v12];

    v13 = [(HKSPXPCConnectionInfo *)self->_connectionInfo exportedObject];
    [v7 setExportedObject:v13];

    v14 = [(HKSPXPCConnectionInfo *)self->_connectionInfo remoteObjectInterface];
    [v7 setRemoteObjectInterface:v14];

    objc_initWeak(location, self);
    objc_initWeak(&from, v7);
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __64__HKSPXPCConnectionListener_listener_shouldAcceptNewConnection___block_invoke;
    v32[3] = &unk_279C75D10;
    objc_copyWeak(&v33, location);
    objc_copyWeak(&v34, &from);
    v15 = [v7 remoteObjectProxyWithErrorHandler:v32];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __64__HKSPXPCConnectionListener_listener_shouldAcceptNewConnection___block_invoke_2;
    v29[3] = &unk_279C75D38;
    objc_copyWeak(&v30, location);
    objc_copyWeak(&v31, &from);
    [v7 setInvalidationHandler:v29];
    v24 = MEMORY[0x277D85DD0];
    v25 = 3221225472;
    v26 = __64__HKSPXPCConnectionListener_listener_shouldAcceptNewConnection___block_invoke_296;
    v27 = &unk_279C74E70;
    objc_copyWeak(&v28, location);
    [v7 setInterruptionHandler:&v24];
    [(HKSPXPCConnectionListener *)self addClientConnection:v7 clientLink:v15, v24, v25, v26, v27];
    [v7 resume];
    objc_destroyWeak(&v28);
    objc_destroyWeak(&v31);
    objc_destroyWeak(&v30);

    objc_destroyWeak(&v34);
    objc_destroyWeak(&v33);
    objc_destroyWeak(&from);
    objc_destroyWeak(location);
    v16 = 1;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v16;
}

void __64__HKSPXPCConnectionListener_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _didInvalidateConnection:v2];
}

void __64__HKSPXPCConnectionListener_listener_shouldAcceptNewConnection___block_invoke_2(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  v4 = HKSPLogForCategory(4uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = 138543618;
    v8 = objc_opt_class();
    v9 = 2114;
    v10 = v3;
    v6 = v8;
    _os_log_error_impl(&dword_269A84000, v4, OS_LOG_TYPE_ERROR, "[%{public}@] invalidation handler called for connection %{public}@...", &v7, 0x16u);
  }

  [WeakRetained _didInvalidateConnection:v3];
  v5 = *MEMORY[0x277D85DE8];
}

void __64__HKSPXPCConnectionListener_listener_shouldAcceptNewConnection___block_invoke_296(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _didInterruptConnection];
}

- (void)_didInterruptConnection
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = HKSPLogForCategory(4uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v5 = objc_opt_class();
    connectionInfo = self->_connectionInfo;
    v7 = v5;
    v8 = [(HKSPXPCConnectionInfo *)connectionInfo machServiceName];
    v9 = 138543618;
    v10 = v5;
    v11 = 2114;
    v12 = v8;
    _os_log_error_impl(&dword_269A84000, v3, OS_LOG_TYPE_ERROR, "[%{public}@] connection to server via %{public}@ mach port was interrupted.", &v9, 0x16u);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)_didInvalidateConnection:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = HKSPLogForCategory(4uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v7 = objc_opt_class();
    connectionInfo = self->_connectionInfo;
    v9 = v7;
    v10 = [(HKSPXPCConnectionInfo *)connectionInfo machServiceName];
    v11 = 138543618;
    v12 = v7;
    v13 = 2114;
    v14 = v10;
    _os_log_error_impl(&dword_269A84000, v5, OS_LOG_TYPE_ERROR, "[%{public}@] connection to server via %{public}@ mach port was invalidated.", &v11, 0x16u);
  }

  [(HKSPXPCConnectionListener *)self removeClientConnection:v4];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)addClientConnection:(id)a3 clientLink:(id)a4
{
  v6 = a3;
  v7 = a4;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__7;
  v23 = __Block_byref_object_dispose__7;
  v24 = 0;
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __60__HKSPXPCConnectionListener_addClientConnection_clientLink___block_invoke;
  v14 = &unk_279C75D60;
  v8 = v7;
  v18 = &v19;
  v15 = v8;
  v16 = self;
  v9 = v6;
  v17 = v9;
  [(HKSPXPCConnectionListener *)self _withLock:&v11];
  [(HKSPThrottler *)self->_logThrottler execute:v11];
  if (v20[5])
  {
    v10 = [(HKSPXPCConnectionListener *)self delegate];
    [v10 connectionListenerDidAddClient:v20[5]];
  }

  _Block_object_dispose(&v19, 8);
}

uint64_t __60__HKSPXPCConnectionListener_addClientConnection_clientLink___block_invoke(uint64_t result)
{
  v15 = *MEMORY[0x277D85DE8];
  if (*(result + 32))
  {
    v1 = result;
    v2 = [*(result + 40) _clientWithConnection:*(result + 48) clientLink:?];
    v3 = *(*(v1 + 56) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;

    v5 = HKSPLogForCategory(4uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(v1 + 40);
      v7 = objc_opt_class();
      v8 = *(*(*(v1 + 56) + 8) + 40);
      v11 = 138543618;
      v12 = v7;
      v13 = 2114;
      v14 = v8;
      v9 = v7;
      _os_log_impl(&dword_269A84000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] adding XPC client: %{public}@", &v11, 0x16u);
    }

    result = [*(*(v1 + 40) + 48) addObject:*(*(*(v1 + 56) + 8) + 40)];
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)_clientWithConnection:(id)a3 clientLink:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HKSPXPCConnectionListener *)self _clientIdentifierProviderForClientLink:v7];
  v9 = [HKSPXPCClient clientForConnection:v6 clientIdentifierProvider:v8 clientLink:v7];
  objc_initWeak(&location, self);
  objc_initWeak(&from, v9);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __62__HKSPXPCConnectionListener__clientWithConnection_clientLink___block_invoke;
  v12[3] = &unk_279C75D88;
  objc_copyWeak(&v13, &location);
  objc_copyWeak(&v14, &from);
  v10 = [v8 addSuccessBlock:v12];
  objc_destroyWeak(&v14);
  objc_destroyWeak(&v13);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);

  return v9;
}

void __62__HKSPXPCConnectionListener__clientWithConnection_clientLink___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  v4 = HKSPLogForCategory(4uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543618;
    v8 = objc_opt_class();
    v9 = 2114;
    v10 = v3;
    v5 = v8;
    _os_log_impl(&dword_269A84000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] determined identity of client: %{public}@", &v7, 0x16u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (id)_clientIdentifierProviderForClientLink:(id)a3
{
  v3 = MEMORY[0x277D2C900];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __68__HKSPXPCConnectionListener__clientIdentifierProviderForClientLink___block_invoke;
  v8[3] = &unk_279C75DB0;
  v6 = v5;
  v9 = v6;
  [v4 getClientIdentifierWithCompletion:v8];

  return v6;
}

- (void)removeClientConnection:(id)a3
{
  v4 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__7;
  v14 = __Block_byref_object_dispose__7;
  v15 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__HKSPXPCConnectionListener_removeClientConnection___block_invoke;
  v7[3] = &unk_279C75DD8;
  v7[4] = self;
  v5 = v4;
  v8 = v5;
  v9 = &v10;
  [(HKSPXPCConnectionListener *)self _withLock:v7];
  [(HKSPThrottler *)self->_logThrottler execute];
  if (v11[5])
  {
    v6 = [(HKSPXPCConnectionListener *)self delegate];
    [v6 connectionListenerDidRemoveClient:v11[5]];
  }

  _Block_object_dispose(&v10, 8);
}

void __52__HKSPXPCConnectionListener_removeClientConnection___block_invoke(void *a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = [*(a1[4] + 48) allObjects];
  v3 = [v2 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v16;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v15 + 1) + 8 * i);
        v8 = [v7 connection];
        v9 = a1[5];

        if (v8 == v9)
        {
          v10 = HKSPLogForCategory(4uLL);
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            v11 = a1[4];
            v12 = objc_opt_class();
            *buf = 138543618;
            v20 = v12;
            v21 = 2114;
            v22 = v7;
            v13 = v12;
            _os_log_impl(&dword_269A84000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] removing XPC client: %{public}@", buf, 0x16u);
          }

          [*(a1[4] + 48) removeObject:v7];
          objc_storeStrong((*(a1[6] + 8) + 40), v7);
          goto LABEL_13;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v15 objects:v23 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_logConnectedClients
{
  *&v22[13] = *MEMORY[0x277D85DE8];
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__7;
  v17 = __Block_byref_object_dispose__7;
  v18 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __49__HKSPXPCConnectionListener__logConnectedClients__block_invoke;
  v12[3] = &unk_279C741E0;
  v12[4] = self;
  v12[5] = &v13;
  [(HKSPXPCConnectionListener *)self _withLock:v12];
  v2 = HKSPLogForCategory(4uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = objc_opt_class();
    v4 = [v14[5] count];
    *buf = 138543618;
    v20 = v3;
    v21 = 2048;
    *v22 = v4;
    _os_log_impl(&dword_269A84000, v2, OS_LOG_TYPE_DEFAULT, "[%{public}@] current XPC clients: %lu", buf, 0x16u);
  }

  v5 = 0;
  *&v6 = 138543874;
  v11 = v6;
  while ([v14[5] count] > v5)
  {
    v7 = HKSPLogForCategory(4uLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_opt_class();
      v9 = [v14[5] objectAtIndexedSubscript:v5];
      *buf = v11;
      v20 = v8;
      v21 = 1024;
      *v22 = v5;
      v22[2] = 2114;
      *&v22[3] = v9;
      _os_log_impl(&dword_269A84000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] connected client[%i]: %{public}@", buf, 0x1Cu);
    }

    ++v5;
  }

  _Block_object_dispose(&v13, 8);

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __49__HKSPXPCConnectionListener__logConnectedClients__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 48) allObjects];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (NSArray)connectedClients
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__7;
  v9 = __Block_byref_object_dispose__7;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __45__HKSPXPCConnectionListener_connectedClients__block_invoke;
  v4[3] = &unk_279C741E0;
  v4[4] = self;
  v4[5] = &v5;
  [(HKSPXPCConnectionListener *)self _withLock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

uint64_t __45__HKSPXPCConnectionListener_connectedClients__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 48) allObjects];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (id)connectedClientsWithPID:(int)a3
{
  v4 = [(HKSPXPCConnectionListener *)self connectedClients];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__HKSPXPCConnectionListener_connectedClientsWithPID___block_invoke;
  v7[3] = &__block_descriptor_36_e23_B16__0__HKSPXPCClient_8l;
  v8 = a3;
  v5 = [v4 na_filter:v7];

  return v5;
}

- (id)_currentClientForConnection:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(NSMutableSet *)self->_connectedClientSet allObjects];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __57__HKSPXPCConnectionListener__currentClientForConnection___block_invoke;
    v8[3] = &unk_279C75E20;
    v9 = v4;
    v6 = [v5 na_firstObjectPassingTest:v8];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

BOOL __57__HKSPXPCConnectionListener__currentClientForConnection___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 connection];
  v4 = v3 == *(a1 + 32);

  return v4;
}

- (void)performRemoteBlockOnClients:(id)a3 passingTest:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HKSPXPCConnectionListener *)self connectedClients];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __69__HKSPXPCConnectionListener_performRemoteBlockOnClients_passingTest___block_invoke;
  v11[3] = &unk_279C75E68;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  [v8 na_each:v11];
}

void __69__HKSPXPCConnectionListener_performRemoteBlockOnClients_passingTest___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  if ((*(*(a1 + 32) + 16))())
  {
    v3 = *(a1 + 40);
    v4 = [v5 clientLink];
    (*(v3 + 16))(v3, v4);
  }
}

- (void)performRemoteBlock:(id)a3 onClient:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __57__HKSPXPCConnectionListener_performRemoteBlock_onClient___block_invoke;
  v13[3] = &unk_279C74230;
  v15 = &v16;
  v13[4] = self;
  v8 = v7;
  v14 = v8;
  [(HKSPXPCConnectionListener *)self _withLock:v13];
  if (*(v17 + 24) == 1)
  {
    v9 = [v8 clientLink];
    v6[2](v6, v9);
  }

  else
  {
    v9 = HKSPLogForCategory(4uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = objc_opt_class();
      *buf = 138543618;
      v21 = v11;
      v22 = 2114;
      v23 = v8;
      v12 = v11;
      _os_log_error_impl(&dword_269A84000, v9, OS_LOG_TYPE_ERROR, "[%{public}@] client doesn't exist: %{public}@", buf, 0x16u);
    }
  }

  _Block_object_dispose(&v16, 8);
  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __57__HKSPXPCConnectionListener_performRemoteBlock_onClient___block_invoke(void *a1)
{
  result = [*(a1[4] + 48) containsObject:a1[5]];
  *(*(a1[6] + 8) + 24) = result;
  return result;
}

- (void)dealloc
{
  [(NSXPCListener *)self->_connectionListener setDelegate:0];
  [(NSXPCListener *)self->_connectionListener invalidate];
  connectionListener = self->_connectionListener;
  self->_connectionListener = 0;

  v4.receiver = self;
  v4.super_class = HKSPXPCConnectionListener;
  [(HKSPXPCConnectionListener *)&v4 dealloc];
}

- (id)succinctDescription
{
  v2 = [(HKSPXPCConnectionListener *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(HKSPXPCConnectionListener *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v5 = [(HKSPXPCConnectionListener *)self connectionInfo];
  v6 = [v4 appendObject:v5 withName:@"connectionInfo"];

  v7 = [(HKSPXPCConnectionListener *)self connectedClients];
  [v4 appendArraySection:v7 withName:@"connectedClients" skipIfEmpty:0];

  return v4;
}

@end