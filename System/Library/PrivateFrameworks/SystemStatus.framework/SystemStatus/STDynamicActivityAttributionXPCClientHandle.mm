@interface STDynamicActivityAttributionXPCClientHandle
- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken;
- (STDynamicActivityAttributionServerHandle)serverHandle;
- (STDynamicActivityAttributionXPCClientHandle)initWithXPCConnection:(id)connection serverHandle:(id)handle;
- (void)currentAttributionsDidChange:(id)change;
- (void)setCurrentAttributionKey:(id)key application:(id)application reply:(id)reply;
- (void)setCurrentAttributionLocalizableKey:(id)key maskingClientAuditToken:(id *)token reply:(id)reply;
- (void)setCurrentAttributionStringWithFormat:(id)format maskingClientAuditToken:(id *)token reply:(id)reply;
- (void)setCurrentAttributionWebsiteString:(id)string maskingClientAuditToken:(id *)token reply:(id)reply;
- (void)subscribeToUpdates;
@end

@implementation STDynamicActivityAttributionXPCClientHandle

- (STDynamicActivityAttributionXPCClientHandle)initWithXPCConnection:(id)connection serverHandle:(id)handle
{
  v30 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  handleCopy = handle;
  v9 = [connectionCopy valueForEntitlement:@"com.apple.systemstatus.activityattribution"];
  bOOLValue = [v9 BOOLValue];

  if (bOOLValue)
  {
    v27.receiver = self;
    v27.super_class = STDynamicActivityAttributionXPCClientHandle;
    v11 = [(STDynamicActivityAttributionXPCClientHandle *)&v27 init];
    v12 = v11;
    if (v11)
    {
      objc_storeStrong(&v11->_connection, connection);
      objc_storeWeak(&v12->_serverHandle, handleCopy);
      if (connectionCopy)
      {
        [connectionCopy auditToken];
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
      [connectionCopy setRemoteObjectInterface:v16];

      v17 = STDynamicAttributionXPCServerInterface();
      [connectionCopy setExportedInterface:v17];

      [connectionCopy setExportedObject:v12];
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __82__STDynamicActivityAttributionXPCClientHandle_initWithXPCConnection_serverHandle___block_invoke;
      v25[3] = &unk_1E85DDD78;
      objc_copyWeak(&v26, location);
      [connectionCopy setInterruptionHandler:v25];
      v20 = MEMORY[0x1E69E9820];
      v21 = 3221225472;
      v22 = __82__STDynamicActivityAttributionXPCClientHandle_initWithXPCConnection_serverHandle___block_invoke_2;
      v23 = &unk_1E85DDD78;
      objc_copyWeak(&v24, location);
      [connectionCopy setInvalidationHandler:&v20];
      [connectionCopy resume];
      objc_destroyWeak(&v24);
      objc_destroyWeak(&v26);
      objc_destroyWeak(location);
    }

    self = v12;
    selfCopy = self;
  }

  else
  {
    v13 = STSystemStatusLogDynamicAttribution();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      LODWORD(location[0]) = 138412290;
      *(location + 4) = connectionCopy;
      _os_log_error_impl(&dword_1DA9C2000, v13, OS_LOG_TYPE_ERROR, "Client (%@) attempting to access dynamic attribution without entitlement", location, 0xCu);
    }

    selfCopy = 0;
  }

  v18 = *MEMORY[0x1E69E9840];
  return selfCopy;
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

- (void)currentAttributionsDidChange:(id)change
{
  connection = self->_connection;
  changeCopy = change;
  remoteObjectProxy = [(NSXPCConnection *)connection remoteObjectProxy];
  [remoteObjectProxy currentAttributionsDidChange:changeCopy];
}

- (void)setCurrentAttributionKey:(id)key application:(id)application reply:(id)reply
{
  replyCopy = reply;
  applicationCopy = application;
  keyCopy = key;
  WeakRetained = objc_loadWeakRetained(&self->_serverHandle);
  [WeakRetained setLocalizableAttributionKey:keyCopy andApplication:applicationCopy forClient:self];

  replyCopy[2](replyCopy, 1);
}

- (void)setCurrentAttributionLocalizableKey:(id)key maskingClientAuditToken:(id *)token reply:(id)reply
{
  replyCopy = reply;
  keyCopy = key;
  WeakRetained = objc_loadWeakRetained(&self->_serverHandle);
  v11 = *&token->var0[4];
  v12[0] = *token->var0;
  v12[1] = v11;
  [WeakRetained setAttributionLocalizableKey:keyCopy maskingClientAuditToken:v12 forClient:self];

  replyCopy[2](replyCopy, 1);
}

- (void)setCurrentAttributionStringWithFormat:(id)format maskingClientAuditToken:(id *)token reply:(id)reply
{
  replyCopy = reply;
  formatCopy = format;
  WeakRetained = objc_loadWeakRetained(&self->_serverHandle);
  v11 = *&token->var0[4];
  v12[0] = *token->var0;
  v12[1] = v11;
  [WeakRetained setAttributionStringWithFormat:formatCopy maskingClientAuditToken:v12 forClient:self];

  replyCopy[2](replyCopy, 1);
}

- (void)setCurrentAttributionWebsiteString:(id)string maskingClientAuditToken:(id *)token reply:(id)reply
{
  replyCopy = reply;
  stringCopy = string;
  WeakRetained = objc_loadWeakRetained(&self->_serverHandle);
  v11 = *&token->var0[4];
  v12[0] = *token->var0;
  v12[1] = v11;
  [WeakRetained setAttributionWebsiteString:stringCopy maskingClientAuditToken:v12 forClient:self];

  replyCopy[2](replyCopy, 1);
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