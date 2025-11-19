@interface SLDServiceListenerMultiplex
+ (id)emptyMultiplex;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (NSString)description;
- (SLDServiceListenerMultiplex)init;
- (SLDServiceMultiplexDelegate)delegate;
- (id)_listenerForService:(id)a3;
- (id)endpointForServiceClass:(Class)a3;
- (void)_acceptConnection:(id)a3 forService:(id)a4;
- (void)_logFullDescription;
- (void)_notifyDelegateIfEmpty;
- (void)_service:(id)a3 lostConnection:(id)a4;
@end

@implementation SLDServiceListenerMultiplex

+ (id)emptyMultiplex
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

- (SLDServiceListenerMultiplex)init
{
  v10.receiver = self;
  v10.super_class = SLDServiceListenerMultiplex;
  v2 = [(SLDServiceListenerMultiplex *)&v10 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    serviceToListenerTable = v2->_serviceToListenerTable;
    v2->_serviceToListenerTable = v3;

    v5 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    listenerToServiceTable = v2->_listenerToServiceTable;
    v2->_listenerToServiceTable = v5;

    v7 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    serviceToConnectionsTable = v2->_serviceToConnectionsTable;
    v2->_serviceToConnectionsTable = v7;
  }

  return v2;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = SLDServiceListenerMultiplex;
  v4 = [(SLDServiceListenerMultiplex *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@ :::\n Services->Listeners: %@, Listeners->Services: %@, Services->Connections:%@", v4, self->_serviceToListenerTable, self->_listenerToServiceTable, self->_serviceToConnectionsTable];

  return v5;
}

- (void)_logFullDescription
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 description];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (id)endpointForServiceClass:(Class)a3
{
  if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    v5 = [(objc_class *)a3 sharedService];
    v6 = [(SLDServiceListenerMultiplex *)self _listenerForService:v5];
  }

  else
  {
    v7 = SLDaemonLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [SLDServiceListenerMultiplex endpointForServiceClass:];
    }

    v6 = 0;
  }

  v8 = [v6 endpoint];

  return v8;
}

- (id)_listenerForService:(id)a3
{
  v4 = a3;
  v5 = [(NSMapTable *)self->_serviceToListenerTable objectForKey:v4];
  if (!v5)
  {
    v5 = [MEMORY[0x277CCAE98] anonymousListener];
    [(NSMapTable *)self->_serviceToListenerTable setObject:v5 forKey:v4];
    [(NSMapTable *)self->_listenerToServiceTable setObject:v4 forKey:v5];
    [v5 setDelegate:self];
    v6 = SLDGlobalWorkloop();
    [v5 _setQueue:v6];

    [v5 resume];
  }

  v7 = SLDaemonLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [SLDServiceListenerMultiplex _listenerForService:];
  }

  return v5;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a4;
  v7 = [(NSMapTable *)self->_listenerToServiceTable objectForKey:a3];
  if ((SLDConnectionIsEntitled(v6) & 1) == 0)
  {
    v10 = SLDaemonLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [SLDServiceListenerMultiplex listener:shouldAcceptNewConnection:];
    }

    goto LABEL_14;
  }

  if (!v7)
  {
    v10 = SLDaemonLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [SLDServiceListenerMultiplex listener:shouldAcceptNewConnection:];
    }

    goto LABEL_14;
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && ([v7 allowsConnection:v6] & 1) == 0)
  {
    v10 = SLDaemonLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [SLDServiceListenerMultiplex listener:shouldAcceptNewConnection:];
    }

LABEL_14:

    v9 = 0;
    goto LABEL_15;
  }

  v8 = SLDaemonLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [SLDServiceListenerMultiplex listener:shouldAcceptNewConnection:];
  }

  [(SLDServiceListenerMultiplex *)self _acceptConnection:v6 forService:v7];
  [(SLDServiceListenerMultiplex *)self _logFullDescription];
  v9 = 1;
LABEL_15:

  return v9;
}

- (void)_acceptConnection:(id)a3 forService:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(NSMapTable *)self->_serviceToConnectionsTable objectForKey:v7];
  if (!v8)
  {
    v8 = [MEMORY[0x277CBEB18] array];
    [(NSMapTable *)self->_serviceToConnectionsTable setObject:v8 forKey:v7];
  }

  [v8 addObject:v6];
  objc_initWeak(&location, v6);
  objc_initWeak(&from, self);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __60__SLDServiceListenerMultiplex__acceptConnection_forService___block_invoke;
  v14[3] = &unk_278927120;
  objc_copyWeak(&v16, &from);
  objc_copyWeak(&v17, &location);
  v9 = v7;
  v15 = v9;
  [v6 setInvalidationHandler:v14];
  if (objc_opt_respondsToSelector())
  {
    [v9 receivedConnection:v6];
  }

  v10 = MEMORY[0x277CCAE90];
  v11 = [objc_opt_class() remoteObjectProtocol];
  v12 = [v10 interfaceWithProtocol:v11];

  objc_opt_class();
  if (objc_opt_respondsToSelector())
  {
    [objc_opt_class() setupInterface:v12];
  }

  [v6 setExportedObject:v9];
  [v6 setExportedInterface:v12];
  v13 = SLDGlobalWorkloop();
  [v6 _setQueue:v13];

  [v6 resume];
  objc_destroyWeak(&v17);
  objc_destroyWeak(&v16);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

void __60__SLDServiceListenerMultiplex__acceptConnection_forService___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = objc_loadWeakRetained((a1 + 48));
  if (v2)
  {
    [WeakRetained _service:*(a1 + 32) lostConnection:v2];
  }
}

- (void)_service:(id)a3 lostConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = SLDaemonLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [SLDServiceListenerMultiplex _service:lostConnection:];
  }

  v9 = [(NSMapTable *)self->_serviceToConnectionsTable objectForKey:v6];
  [v9 removeObject:v7];
  if (![v9 count])
  {
    [(NSMapTable *)self->_serviceToConnectionsTable removeObjectForKey:v6];
    v10 = [(NSMapTable *)self->_serviceToListenerTable objectForKey:v6];
    if (v10)
    {
      [(NSMapTable *)self->_serviceToListenerTable removeObjectForKey:v6];
      [(NSMapTable *)self->_listenerToServiceTable removeObjectForKey:v10];
      [v10 invalidate];
    }
  }

  if (objc_opt_respondsToSelector())
  {
    [v6 lostConnection:v7];
  }

  [(SLDServiceListenerMultiplex *)self _logFullDescription];
  [(SLDServiceListenerMultiplex *)self _notifyDelegateIfEmpty];
}

- (void)_notifyDelegateIfEmpty
{
  v3 = [(SLDServiceListenerMultiplex *)self delegate];

  if (v3 && [(SLDServiceListenerMultiplex *)self isEmpty])
  {
    v4 = [(SLDServiceListenerMultiplex *)self delegate];
    [v4 multiplexDidRemoveAllServices:self];
  }
}

- (SLDServiceMultiplexDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)endpointForServiceClass:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6(&dword_231772000, v0, v1, "Service class does not implement the the required SLDService protocol: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_listenerForService:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = OUTLINED_FUNCTION_1_3(v0);
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)listener:shouldAcceptNewConnection:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6(&dword_231772000, v0, v1, "XPC Connection does not have the proper entitlement: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)listener:shouldAcceptNewConnection:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  v4 = 2112;
  v5 = v0;
  _os_log_error_impl(&dword_231772000, v1, OS_LOG_TYPE_ERROR, "Service: %@ denied connection: %@", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)listener:shouldAcceptNewConnection:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = OUTLINED_FUNCTION_1_3(v0);
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)listener:shouldAcceptNewConnection:.cold.4()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6(&dword_231772000, v0, v1, "There is not a service connected to this listener: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_service:lostConnection:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = OUTLINED_FUNCTION_1_3(v0);
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

@end