@interface SUSUIControllerClient
- (BOOL)createKeybagWithSecret:(id)a3;
- (SUSUIControllerClient)init;
- (id)_remoteInterfaceWithErrorHandler:(id)a3;
- (void)_connectToServerIfNecessary;
- (void)_invalidateConnection;
- (void)_noteConnectionDropped;
- (void)dealloc;
- (void)getPasscodePolicy:(id)a3;
@end

@implementation SUSUIControllerClient

- (SUSUIControllerClient)init
{
  v6 = a2;
  v7 = 0;
  v5.receiver = self;
  v5.super_class = SUSUIControllerClient;
  v4 = [(SUSUIControllerClient *)&v5 init];
  v7 = v4;
  objc_storeStrong(&v7, v4);
  if (v4)
  {
    [(SUSUIControllerClient *)v7 _connectToServerIfNecessary];
  }

  v3 = MEMORY[0x277D82BE0](v7);
  objc_storeStrong(&v7, 0);
  return v3;
}

- (void)dealloc
{
  v4 = self;
  v3 = a2;
  [(SUSUIControllerClient *)self _invalidateConnection];
  v2.receiver = v4;
  v2.super_class = SUSUIControllerClient;
  [(SUSUIControllerClient *)&v2 dealloc];
}

- (BOOL)createKeybagWithSecret:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8 = 0;
  v5 = objc_alloc(MEMORY[0x277D648B8]);
  v6 = dispatch_get_global_queue(21, 0);
  v7 = [v5 initWithDelegate:0 queue:? clientType:?];
  MEMORY[0x277D82BD8](v6);
  if (v7 && location[0])
  {
    v8 = [v7 createInstallationKeybag:location[0] forUnattendedInstall:1];
  }

  if (v7)
  {
    [v7 invalidate];
  }

  v4 = v8;
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
  return v4 & 1;
}

- (void)getPasscodePolicy:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v22 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (location[0])
  {
    v19 = SUSUILog();
    v18 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_0_1_8_0(v23, v22);
      _os_log_impl(&dword_26AC54000, v19, v18, "Client <%p>: getPasscodePolicy", v23, 0xCu);
    }

    objc_storeStrong(&v19, 0);
    v3 = v22;
    v11 = MEMORY[0x277D85DD0];
    v12 = -1073741824;
    v13 = 0;
    v14 = __43__SUSUIControllerClient_getPasscodePolicy___block_invoke;
    v15 = &unk_279CB4F68;
    v16 = MEMORY[0x277D82BE0](v22);
    v17 = MEMORY[0x277D82BE0](location[0]);
    v4 = [(SUSUIControllerClient *)v3 _remoteInterfaceWithErrorHandler:&v11];
    v5 = MEMORY[0x277D85DD0];
    v6 = -1073741824;
    v7 = 0;
    v8 = __43__SUSUIControllerClient_getPasscodePolicy___block_invoke_289;
    v9 = &unk_279CB3B60;
    v10 = MEMORY[0x277D82BE0](location[0]);
    [v4 getPasscodePolicy:&v5];
    MEMORY[0x277D82BD8](v4);
    objc_storeStrong(&v10, 0);
    objc_storeStrong(&v17, 0);
    objc_storeStrong(&v16, 0);
    v20 = 0;
  }

  else
  {
    v20 = 1;
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

void __43__SUSUIControllerClient_getPasscodePolicy___block_invoke(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  oslog[0] = SUSUILog();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_1_8_0(v5, *(a1 + 32));
    _os_log_impl(&dword_26AC54000, oslog[0], OS_LOG_TYPE_DEFAULT, "Client <%p>: error communicatin with server, return NotRequired", v5, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  (*(*(a1 + 40) + 16))();
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

uint64_t __43__SUSUIControllerClient_getPasscodePolicy___block_invoke_289(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v2 = suPasscodePolicyToSUSUIPasscodePolicyType(a2);
  return (*(v4 + 16))(v4, v2);
}

- (id)_remoteInterfaceWithErrorHandler:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(SUSUIControllerClient *)v6 _connectToServerIfNecessary];
  v4 = [(NSXPCConnection *)v6->_serverConnection remoteObjectProxyWithErrorHandler:location[0]];
  objc_storeStrong(location, 0);

  return v4;
}

- (void)_invalidateConnection
{
  if (self->_serverConnection)
  {
    [(NSXPCConnection *)self->_serverConnection setInvalidationHandler:?];
    [(NSXPCConnection *)self->_serverConnection setInterruptionHandler:0];
    [(NSXPCConnection *)self->_serverConnection invalidate];
    objc_storeStrong(&self->_serverConnection, 0);
    self->_connected = 0;
  }
}

- (void)_connectToServerIfNecessary
{
  v33 = *MEMORY[0x277D85DE8];
  v30 = self;
  location[1] = a2;
  if (!self->_connected)
  {
    location[0] = SUSUILog();
    v28 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_0_1_8_0(v32, v30);
      _os_log_impl(&dword_26AC54000, location[0], v28, "Client <%p>: establishing connection to softwareupdateservicesui plugin.", v32, 0xCu);
    }

    objc_storeStrong(location, 0);
    [(SUSUIControllerClient *)v30 _invalidateConnection];
    v11 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.softwareupdateservicesui.controller" options:4096];
    serverConnection = v30->_serverConnection;
    v30->_serverConnection = v11;
    MEMORY[0x277D82BD8](serverConnection);
    v10 = v30->_serverConnection;
    v3 = MEMORY[0x277D85CD0];
    v9 = MEMORY[0x277D85CD0];
    [(NSXPCConnection *)v10 _setQueue:?];
    MEMORY[0x277D82BD8](v9);
    v8 = v30->_serverConnection;
    v7 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_287B7A430];
    [(NSXPCConnection *)v8 setRemoteObjectInterface:?];
    MEMORY[0x277D82BD8](v7);
    v6 = v30->_serverConnection;
    v5 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_287B7A430];
    [(NSXPCConnection *)v6 setExportedInterface:?];
    MEMORY[0x277D82BD8](v5);
    [(NSXPCConnection *)v30->_serverConnection setExportedObject:v30];
    objc_initWeak(&from, v30);
    v20 = MEMORY[0x277D85DD0];
    v21 = -1073741824;
    v22 = 0;
    v23 = __52__SUSUIControllerClient__connectToServerIfNecessary__block_invoke;
    v24 = &unk_279CB48D0;
    objc_copyWeak(&v25, &from);
    v26 = MEMORY[0x26D669210](&v20);
    [(NSXPCConnection *)v30->_serverConnection setInvalidationHandler:v26];
    v4 = v30->_serverConnection;
    v13 = MEMORY[0x277D85DD0];
    v14 = -1073741824;
    v15 = 0;
    v16 = __52__SUSUIControllerClient__connectToServerIfNecessary__block_invoke_2;
    v17 = &unk_279CB48F8;
    objc_copyWeak(&v19, &from);
    v18 = MEMORY[0x277D82BE0](v26);
    [(NSXPCConnection *)v4 setInterruptionHandler:&v13];
    [(NSXPCConnection *)v30->_serverConnection resume];
    v30->_connected = 1;
    v30->_serverIsExiting = 0;
    oslog = SUSUILog();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_0_1_8_0(v31, v30);
      _os_log_impl(&dword_26AC54000, oslog, OS_LOG_TYPE_DEFAULT, "Client <%p>: connection established to softwareupdateservicesui plugin.", v31, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    objc_storeStrong(&v18, 0);
    objc_destroyWeak(&v19);
    objc_storeStrong(&v26, 0);
    objc_destroyWeak(&v25);
    objc_destroyWeak(&from);
  }

  *MEMORY[0x277D85DE8];
}

uint64_t __52__SUSUIControllerClient__connectToServerIfNecessary__block_invoke(uint64_t a1)
{
  BSDispatchQueueAssertMain();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _noteConnectionDropped];
  return MEMORY[0x277D82BD8](WeakRetained);
}

uint64_t __52__SUSUIControllerClient__connectToServerIfNecessary__block_invoke_2(NSObject *a1)
{
  v6 = *MEMORY[0x277D85DE8];
  oslog[2] = a1;
  oslog[1] = a1;
  oslog[0] = SUSUILog();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained(&a1[5].isa);
    __os_log_helper_16_0_1_8_0(v5, WeakRetained);
    _os_log_impl(&dword_26AC54000, oslog[0], OS_LOG_TYPE_DEFAULT, "Client <%p>: softwareupdateservicesui plugin exit detected.", v5, 0xCu);
    MEMORY[0x277D82BD8](WeakRetained);
  }

  objc_storeStrong(oslog, 0);
  result = (*(a1[4].isa + 2))();
  *MEMORY[0x277D85DE8];
  return result;
}

- (void)_noteConnectionDropped
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = self;
  oslog[1] = a2;
  oslog[0] = SUSUILog();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_1_8_0(v4, v3);
    _os_log_impl(&dword_26AC54000, oslog[0], OS_LOG_TYPE_DEFAULT, "Client <%p>: disconnected from softwareupdateservicesui plugin.", v4, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  v3->_connected = 0;
  *MEMORY[0x277D85DE8];
}

@end