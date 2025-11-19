@interface SBSCardItemsController
- (SBSCardItemsController)initWithIdentifier:(id)a3;
- (id)_remoteInterfaceWithErrorHandler:(id)a3;
- (void)_connectToServerIfNecessary;
- (void)_invalidateConnection;
- (void)_noteConnectionDropped;
- (void)dealloc;
- (void)getCardItemsWithHandler:(id)a3;
- (void)setCardItems:(id)a3;
@end

@implementation SBSCardItemsController

- (SBSCardItemsController)initWithIdentifier:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SBSCardItemsController;
  v5 = [(SBSCardItemsController *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    identifier = v5->_identifier;
    v5->_identifier = v6;
  }

  return v5;
}

- (void)dealloc
{
  [(SBSCardItemsController *)self _invalidateConnection];
  v3.receiver = self;
  v3.super_class = SBSCardItemsController;
  [(SBSCardItemsController *)&v3 dealloc];
}

- (void)setCardItems:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = SBLogWallet();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 134217984;
    v8 = [v4 count];
    _os_log_impl(&dword_19169D000, v5, OS_LOG_TYPE_INFO, "Set %ld SBSCardItems", &v7, 0xCu);
  }

  v6 = [(SBSCardItemsController *)self _remoteInterfaceWithErrorHandler:&__block_literal_global_36];
  [v6 setCardItems:v4 forControllerWithIdentifier:self->_identifier];
}

void __39__SBSCardItemsController_setCardItems___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = SBLogWallet();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __39__SBSCardItemsController_setCardItems___block_invoke_cold_1();
  }
}

- (void)getCardItemsWithHandler:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = SBLogWallet();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19169D000, v5, OS_LOG_TYPE_INFO, "Get SBSCardItems", buf, 2u);
    }

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __50__SBSCardItemsController_getCardItemsWithHandler___block_invoke;
    v11[3] = &unk_1E735F0F8;
    v6 = v4;
    v12 = v6;
    v7 = [(SBSCardItemsController *)self _remoteInterfaceWithErrorHandler:v11];
    identifier = self->_identifier;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __50__SBSCardItemsController_getCardItemsWithHandler___block_invoke_175;
    v9[3] = &unk_1E7361158;
    v10 = v6;
    [v7 getCardItemsForControllerWithIdentifier:identifier withHandler:v9];
  }
}

void __50__SBSCardItemsController_getCardItemsWithHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = SBLogWallet();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __50__SBSCardItemsController_getCardItemsWithHandler___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __50__SBSCardItemsController_getCardItemsWithHandler___block_invoke_175(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = SBLogWallet();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v10 = 134217984;
      v11 = [v5 count];
      _os_log_impl(&dword_19169D000, v7, OS_LOG_TYPE_INFO, "Got %ld SBSCardItems", &v10, 0xCu);
    }

    v8 = *(*(a1 + 32) + 16);
  }

  else
  {
    v9 = SBLogWallet();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __50__SBSCardItemsController_getCardItemsWithHandler___block_invoke_175_cold_1(v5, v9);
    }

    v8 = *(*(a1 + 32) + 16);
  }

  v8();
}

- (id)_remoteInterfaceWithErrorHandler:(id)a3
{
  v4 = a3;
  [(SBSCardItemsController *)self _connectToServerIfNecessary];
  connection = self->_connection;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __59__SBSCardItemsController__remoteInterfaceWithErrorHandler___block_invoke;
  v9[3] = &unk_1E735F0F8;
  v10 = v4;
  v6 = v4;
  v7 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v9];

  return v7;
}

void __59__SBSCardItemsController__remoteInterfaceWithErrorHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = SBLogWallet();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __59__SBSCardItemsController__remoteInterfaceWithErrorHandler___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

- (void)_connectToServerIfNecessary
{
  if (!self->_connected)
  {
    [(SBSCardItemsController *)self _invalidateConnection];
    v3 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.springboard.carditemscontroller" options:0];
    connection = self->_connection;
    self->_connection = v3;

    v5 = self->_connection;
    v6 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F05C2688];
    [(NSXPCConnection *)v5 setExportedInterface:v6];

    [(NSXPCConnection *)self->_connection setExportedObject:self];
    v7 = self->_connection;
    v8 = SBCardItemsControllerServerInterface();
    [(NSXPCConnection *)v7 setRemoteObjectInterface:v8];

    objc_initWeak(&location, self);
    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = __53__SBSCardItemsController__connectToServerIfNecessary__block_invoke;
    v13 = &unk_1E7361180;
    objc_copyWeak(&v14, &location);
    v9 = MEMORY[0x193AFFB30](&v10);
    [(NSXPCConnection *)self->_connection setInvalidationHandler:v9, v10, v11, v12, v13];
    [(NSXPCConnection *)self->_connection setInterruptionHandler:v9];
    [(NSXPCConnection *)self->_connection resume];
    self->_connected = 1;

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }
}

void __53__SBSCardItemsController__connectToServerIfNecessary__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _noteConnectionDropped];
}

- (void)_noteConnectionDropped
{
  v3 = SBLogWallet();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    [(SBSCardItemsController *)v3 _noteConnectionDropped];
  }

  self->_connected = 0;
}

- (void)_invalidateConnection
{
  connection = self->_connection;
  if (connection)
  {
    [(NSXPCConnection *)connection setInvalidationHandler:0];
    [(NSXPCConnection *)self->_connection setInterruptionHandler:0];
    [(NSXPCConnection *)self->_connection invalidate];
    v4 = self->_connection;
    self->_connection = 0;

    self->_connected = 0;
  }
}

void __50__SBSCardItemsController_getCardItemsWithHandler___block_invoke_175_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  OUTLINED_FUNCTION_4();
  v4 = v3;
  _os_log_error_impl(&dword_19169D000, a2, OS_LOG_TYPE_ERROR, "Got unexpected type %{public}@ of SBSCardItems", v5, 0xCu);
}

@end