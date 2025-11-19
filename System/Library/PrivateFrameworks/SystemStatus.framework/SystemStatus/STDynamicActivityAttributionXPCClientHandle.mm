@interface STDynamicActivityAttributionXPCClientHandle
- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken;
- (STDynamicActivityAttributionServerHandle)serverHandle;
- (STDynamicActivityAttributionXPCClientHandle)initWithXPCConnection:(id)a3 serverHandle:(id)a4;
- (void)currentAttributionsDidChange:(id)a3;
- (void)setCurrentAttributionKey:(id)a3 application:(id)a4 reply:(id)a5;
- (void)setCurrentAttributionLocalizableKey:(id)a3 maskingClientAuditToken:(id *)a4 reply:(id)a5;
- (void)setCurrentAttributionStringWithFormat:(id)a3 maskingClientAuditToken:(id *)a4 reply:(id)a5;
- (void)setCurrentAttributionWebsiteString:(id)a3 maskingClientAuditToken:(id *)a4 reply:(id)a5;
- (void)subscribeToUpdates;
@end

@implementation STDynamicActivityAttributionXPCClientHandle

- (STDynamicActivityAttributionXPCClientHandle)initWithXPCConnection:(id)a3 serverHandle:(id)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = [v7 valueForEntitlement:@"com.apple.systemstatus.activityattribution"];
  v10 = [v9 BOOLValue];

  if (v10)
  {
    v27.receiver = self;
    v27.super_class = STDynamicActivityAttributionXPCClientHandle;
    v11 = [(STDynamicActivityAttributionXPCClientHandle *)&v27 init];
    v12 = v11;
    if (v11)
    {
      objc_storeStrong(&v11->_connection, a3);
      objc_storeWeak(&v12->_serverHandle, v8);
      if (v7)
      {
        [v7 auditToken];
      }

      else
      {
        *location = 0u;
        v29 = 0u;
      }

      v15 = *location;
      *&v12->_auditToken.val[4] = v29;
      *v12->_auditToken.val = v15;
      objc_initWeak(location, v12);
      v16 = STDynamicAttributionXPCClientInterface();
      [v7 setRemoteObjectInterface:v16];

      v17 = STDynamicAttributionXPCServerInterface();
      [v7 setExportedInterface:v17];

      [v7 setExportedObject:v12];
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __82__STDynamicActivityAttributionXPCClientHandle_initWithXPCConnection_serverHandle___block_invoke;
      v25[3] = &unk_1E85DDD78;
      objc_copyWeak(&v26, location);
      [v7 setInterruptionHandler:v25];
      v20 = MEMORY[0x1E69E9820];
      v21 = 3221225472;
      v22 = __82__STDynamicActivityAttributionXPCClientHandle_initWithXPCConnection_serverHandle___block_invoke_2;
      v23 = &unk_1E85DDD78;
      objc_copyWeak(&v24, location);
      [v7 setInvalidationHandler:&v20];
      [v7 resume];
      objc_destroyWeak(&v24);
      objc_destroyWeak(&v26);
      objc_destroyWeak(location);
    }

    self = v12;
    v14 = self;
  }

  else
  {
    v13 = STSystemStatusLogDynamicAttribution();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      LODWORD(location[0]) = 138412290;
      *(location + 4) = v7;
      _os_log_error_impl(&dword_1DA9C2000, v13, OS_LOG_TYPE_ERROR, "Client (%@) attempting to access dynamic attribution without entitlement", location, 0xCu);
    }

    v14 = 0;
  }

  v18 = *MEMORY[0x1E69E9840];
  return v14;
}

void __82__STDynamicActivityAttributionXPCClientHandle_initWithXPCConnection_serverHandle___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v2 = objc_loadWeakRetained(WeakRetained + 5);
    [v2 unsubscribeFromUpdates:v4];

    [v4[6] invalidate];
    v3 = v4[6];
    v4[6] = 0;

    WeakRetained = v4;
  }
}

void __82__STDynamicActivityAttributionXPCClientHandle_initWithXPCConnection_serverHandle___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v2 = objc_loadWeakRetained(WeakRetained + 5);
    [v2 unsubscribeFromUpdates:v4];

    [v4[6] invalidate];
    v3 = v4[6];
    v4[6] = 0;

    WeakRetained = v4;
  }
}

- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken
{
  v3 = *&self->var0[6];
  *retstr->var0 = *&self->var0[2];
  *&retstr->var0[4] = v3;
  return self;
}

- (void)currentAttributionsDidChange:(id)a3
{
  connection = self->_connection;
  v4 = a3;
  v5 = [(NSXPCConnection *)connection remoteObjectProxy];
  [v5 currentAttributionsDidChange:v4];
}

- (void)setCurrentAttributionKey:(id)a3 application:(id)a4 reply:(id)a5
{
  v11 = a5;
  v8 = a4;
  v9 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_serverHandle);
  [WeakRetained setLocalizableAttributionKey:v9 andApplication:v8 forClient:self];

  v11[2](v11, 1);
}

- (void)setCurrentAttributionLocalizableKey:(id)a3 maskingClientAuditToken:(id *)a4 reply:(id)a5
{
  v8 = a5;
  v9 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_serverHandle);
  v11 = *&a4->var0[4];
  v12[0] = *a4->var0;
  v12[1] = v11;
  [WeakRetained setAttributionLocalizableKey:v9 maskingClientAuditToken:v12 forClient:self];

  v8[2](v8, 1);
}

- (void)setCurrentAttributionStringWithFormat:(id)a3 maskingClientAuditToken:(id *)a4 reply:(id)a5
{
  v8 = a5;
  v9 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_serverHandle);
  v11 = *&a4->var0[4];
  v12[0] = *a4->var0;
  v12[1] = v11;
  [WeakRetained setAttributionStringWithFormat:v9 maskingClientAuditToken:v12 forClient:self];

  v8[2](v8, 1);
}

- (void)setCurrentAttributionWebsiteString:(id)a3 maskingClientAuditToken:(id *)a4 reply:(id)a5
{
  v8 = a5;
  v9 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_serverHandle);
  v11 = *&a4->var0[4];
  v12[0] = *a4->var0;
  v12[1] = v11;
  [WeakRetained setAttributionWebsiteString:v9 maskingClientAuditToken:v12 forClient:self];

  v8[2](v8, 1);
}

- (void)subscribeToUpdates
{
  WeakRetained = objc_loadWeakRetained(&self->_serverHandle);
  [WeakRetained subscribeToUpdates:self];
}

- (STDynamicActivityAttributionServerHandle)serverHandle
{
  WeakRetained = objc_loadWeakRetained(&self->_serverHandle);

  return WeakRetained;
}

@end