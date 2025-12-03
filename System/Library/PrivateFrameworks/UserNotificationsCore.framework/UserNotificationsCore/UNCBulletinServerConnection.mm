@interface UNCBulletinServerConnection
+ (id)clientInterface;
+ (id)serverInterface;
- (UNCBulletinServerConnection)init;
- (UNCBulletinServerConnection)initWithQueue:(id)queue;
- (id)_ensureBBServerSettingsConnection;
- (id)activeSectionIDs;
- (id)asyncServerProxyObject;
- (id)serverProxyObject;
- (void)_resetBBServerSettingsConnection;
- (void)dealloc;
- (void)refreshAnnounceSettings;
- (void)refreshGlobalSettings;
- (void)refreshSectionInfo;
- (void)refreshSectionInfoForID:(id)d;
@end

@implementation UNCBulletinServerConnection

+ (id)clientInterface
{
  if (clientInterface_onceToken_0 != -1)
  {
    +[UNCBulletinServerConnection clientInterface];
  }

  v3 = clientInterface___interface_0;

  return v3;
}

uint64_t __46__UNCBulletinServerConnection_clientInterface__block_invoke()
{
  clientInterface___interface_0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F5681B38];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)serverInterface
{
  if (serverInterface_onceToken_0 != -1)
  {
    +[UNCBulletinServerConnection serverInterface];
  }

  v3 = serverInterface___interface_0;

  return v3;
}

void __46__UNCBulletinServerConnection_serverInterface__block_invoke()
{
  v7[2] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F5681B98];
  v1 = serverInterface___interface_0;
  serverInterface___interface_0 = v0;

  v2 = serverInterface___interface_0;
  v3 = MEMORY[0x1E695DFD8];
  v7[0] = objc_opt_class();
  v7[1] = objc_opt_class();
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];
  v5 = [v3 setWithArray:v4];
  [v2 setClasses:v5 forSelector:sel_getActiveSectionIDsWithHandler_ argumentIndex:0 ofReply:1];

  v6 = *MEMORY[0x1E69E9840];
}

- (UNCBulletinServerConnection)init
{
  v3 = dispatch_queue_create("com.apple.usernotificationscore.bulletinserverconnection", 0);
  v4 = [(UNCBulletinServerConnection *)self initWithQueue:v3];

  return v4;
}

- (UNCBulletinServerConnection)initWithQueue:(id)queue
{
  queueCopy = queue;
  v9.receiver = self;
  v9.super_class = UNCBulletinServerConnection;
  v6 = [(UNCBulletinServerConnection *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, queue);
  }

  return v7;
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_bbServerConnection invalidate];
  v3.receiver = self;
  v3.super_class = UNCBulletinServerConnection;
  [(UNCBulletinServerConnection *)&v3 dealloc];
}

- (id)_ensureBBServerSettingsConnection
{
  v23 = *MEMORY[0x1E69E9840];
  bbServerConnection = self->_bbServerConnection;
  if (!bbServerConnection)
  {
    v4 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.bulletinboard.settingsconnection" options:0];
    v5 = self->_bbServerConnection;
    self->_bbServerConnection = v4;

    v6 = self->_bbServerConnection;
    serverInterface = [objc_opt_class() serverInterface];
    [(NSXPCConnection *)v6 setRemoteObjectInterface:serverInterface];

    v8 = self->_bbServerConnection;
    clientInterface = [objc_opt_class() clientInterface];
    [(NSXPCConnection *)v8 setExportedInterface:clientInterface];

    [(NSXPCConnection *)self->_bbServerConnection setExportedObject:self];
    [(NSXPCConnection *)self->_bbServerConnection setInterruptionHandler:&__block_literal_global_23_0];
    objc_initWeak(&location, self);
    v10 = self->_bbServerConnection;
    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = __64__UNCBulletinServerConnection__ensureBBServerSettingsConnection__block_invoke_24;
    v18 = &unk_1E85D7F30;
    objc_copyWeak(&v19, &location);
    [(NSXPCConnection *)v10 setInvalidationHandler:&v15];
    [(NSXPCConnection *)self->_bbServerConnection resume:v15];
    v11 = *MEMORY[0x1E6983358];
    if (os_log_type_enabled(*MEMORY[0x1E6983358], OS_LOG_TYPE_DEFAULT))
    {
      v12 = self->_bbServerConnection;
      *buf = 138412290;
      v22 = v12;
      _os_log_impl(&dword_1DA7A9000, v11, OS_LOG_TYPE_DEFAULT, "UNCBulletinServerConnection: Connected to BBServer: %@", buf, 0xCu);
    }

    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
    bbServerConnection = self->_bbServerConnection;
  }

  v13 = *MEMORY[0x1E69E9840];

  return bbServerConnection;
}

void __64__UNCBulletinServerConnection__ensureBBServerSettingsConnection__block_invoke()
{
  v0 = *MEMORY[0x1E6983358];
  if (os_log_type_enabled(*MEMORY[0x1E6983358], OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_1DA7A9000, v0, OS_LOG_TYPE_DEFAULT, "Connection to BBServer interrupted", v1, 2u);
  }
}

void __64__UNCBulletinServerConnection__ensureBBServerSettingsConnection__block_invoke_24(uint64_t a1)
{
  v2 = *MEMORY[0x1E6983358];
  if (os_log_type_enabled(*MEMORY[0x1E6983358], OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1DA7A9000, v2, OS_LOG_TYPE_DEFAULT, "Connection to BBServer invalidated", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _resetBBServerSettingsConnection];
}

- (void)_resetBBServerSettingsConnection
{
  [(NSXPCConnection *)self->_bbServerConnection invalidate];
  [(NSXPCConnection *)self->_bbServerConnection setInterruptionHandler:0];
  [(NSXPCConnection *)self->_bbServerConnection setInvalidationHandler:0];
  [(NSXPCConnection *)self->_bbServerConnection setExportedObject:0];
  bbServerConnection = self->_bbServerConnection;
  self->_bbServerConnection = 0;
}

- (id)serverProxyObject
{
  _ensureBBServerSettingsConnection = [(UNCBulletinServerConnection *)self _ensureBBServerSettingsConnection];
  v3 = [_ensureBBServerSettingsConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_27];

  return v3;
}

void __48__UNCBulletinServerConnection_serverProxyObject__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = *MEMORY[0x1E6983358];
  if (os_log_type_enabled(*MEMORY[0x1E6983358], OS_LOG_TYPE_ERROR))
  {
    __48__UNCBulletinServerConnection_serverProxyObject__block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
  }
}

- (id)asyncServerProxyObject
{
  _ensureBBServerSettingsConnection = [(UNCBulletinServerConnection *)self _ensureBBServerSettingsConnection];
  v3 = [_ensureBBServerSettingsConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_29_0];

  return v3;
}

void __53__UNCBulletinServerConnection_asyncServerProxyObject__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = *MEMORY[0x1E6983358];
  if (os_log_type_enabled(*MEMORY[0x1E6983358], OS_LOG_TYPE_ERROR))
  {
    __53__UNCBulletinServerConnection_asyncServerProxyObject__block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
  }
}

- (id)activeSectionIDs
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__15;
  v10 = __Block_byref_object_dispose__15;
  v11 = 0;
  serverProxyObject = [(UNCBulletinServerConnection *)self serverProxyObject];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __47__UNCBulletinServerConnection_activeSectionIDs__block_invoke;
  v5[3] = &unk_1E85D7F78;
  v5[4] = &v6;
  [serverProxyObject getActiveSectionIDsWithHandler:v5];

  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __47__UNCBulletinServerConnection_activeSectionIDs__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  if (v7)
  {
    v8 = *MEMORY[0x1E6983358];
    if (os_log_type_enabled(*MEMORY[0x1E6983358], OS_LOG_TYPE_ERROR))
    {
      __47__UNCBulletinServerConnection_activeSectionIDs__block_invoke_cold_1(v7, v8, v9, v10, v11, v12, v13, v14);
    }
  }
}

- (void)refreshAnnounceSettings
{
  asyncServerProxyObject = [(UNCBulletinServerConnection *)self asyncServerProxyObject];
  [asyncServerProxyObject refreshAnnounceSettings];
}

- (void)refreshGlobalSettings
{
  asyncServerProxyObject = [(UNCBulletinServerConnection *)self asyncServerProxyObject];
  [asyncServerProxyObject refreshGlobalSettings];
}

- (void)refreshSectionInfo
{
  asyncServerProxyObject = [(UNCBulletinServerConnection *)self asyncServerProxyObject];
  [asyncServerProxyObject refreshSectionInfo];
}

- (void)refreshSectionInfoForID:(id)d
{
  dCopy = d;
  asyncServerProxyObject = [(UNCBulletinServerConnection *)self asyncServerProxyObject];
  [asyncServerProxyObject refreshSectionInfoForID:dCopy];
}

void __48__UNCBulletinServerConnection_serverProxyObject__block_invoke_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3(&dword_1DA7A9000, a2, a3, "BulletinServerConnection failed to get sync remote proxy: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void __53__UNCBulletinServerConnection_asyncServerProxyObject__block_invoke_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3(&dword_1DA7A9000, a2, a3, "BulletinServerConnection failed to get async remote proxy: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void __47__UNCBulletinServerConnection_activeSectionIDs__block_invoke_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3(&dword_1DA7A9000, a2, a3, "BulletinServerConnection error reading -activeSectionIDs: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

@end