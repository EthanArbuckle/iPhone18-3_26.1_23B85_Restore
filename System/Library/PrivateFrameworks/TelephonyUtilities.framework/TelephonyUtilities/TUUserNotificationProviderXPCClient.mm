@interface TUUserNotificationProviderXPCClient
+ (NSXPCInterface)userNotificationProviderServerXPCInterface;
+ (TUUserNotificationsProviderXPCServer)asynchronousServer;
+ (TUUserNotificationsProviderXPCServer)synchronousServer;
- (NSXPCConnection)xpcConnection;
- (TUUserNotificationProviderXPCClient)init;
- (id)serverWithErrorHandler:(id)a3;
- (id)synchronousServerWithErrorHandler:(id)a3;
- (void)dealloc;
- (void)momentCapturedForStreamToken:(int64_t)a3 requesterID:(id)a4 reply:(id)a5;
@end

@implementation TUUserNotificationProviderXPCClient

+ (TUUserNotificationsProviderXPCServer)asynchronousServer
{
  WeakRetained = objc_loadWeakRetained(&sAsynchronousServer_0);

  return WeakRetained;
}

+ (TUUserNotificationsProviderXPCServer)synchronousServer
{
  WeakRetained = objc_loadWeakRetained(&sSynchronousServer_0);

  return WeakRetained;
}

- (TUUserNotificationProviderXPCClient)init
{
  v6.receiver = self;
  v6.super_class = TUUserNotificationProviderXPCClient;
  v2 = [(TUUserNotificationProviderXPCClient *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.telephonyutilities.usernotificationproviderxpcclient", 0);
    queue = v2->_queue;
    v2->_queue = v3;
  }

  return v2;
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_xpcConnection invalidate];
  v3.receiver = self;
  v3.super_class = TUUserNotificationProviderXPCClient;
  [(TUUserNotificationProviderXPCClient *)&v3 dealloc];
}

- (void)momentCapturedForStreamToken:(int64_t)a3 requesterID:(id)a4 reply:(id)a5
{
  v23 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v10 = TUDefaultLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v20 = a3;
    v21 = 2112;
    v22 = v8;
    _os_log_impl(&dword_1956FD000, v10, OS_LOG_TYPE_DEFAULT, "momentCapturedForStreamToken: %ld requesterID: %@", buf, 0x16u);
  }

  v11 = [(TUUserNotificationProviderXPCClient *)self queue];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __86__TUUserNotificationProviderXPCClient_momentCapturedForStreamToken_requesterID_reply___block_invoke;
  v15[3] = &unk_1E7425090;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = a3;
  v12 = v9;
  v13 = v8;
  dispatch_async(v11, v15);

  v14 = *MEMORY[0x1E69E9840];
}

void __86__TUUserNotificationProviderXPCClient_momentCapturedForStreamToken_requesterID_reply___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) serverWithErrorHandler:&__block_literal_global_4];
  [v2 momentCapturedForStreamToken:*(a1 + 56) requesterID:*(a1 + 40) reply:*(a1 + 48)];
}

void __86__TUUserNotificationProviderXPCClient_momentCapturedForStreamToken_requesterID_reply___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = TUDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __86__TUUserNotificationProviderXPCClient_momentCapturedForStreamToken_requesterID_reply___block_invoke_2_cold_1(v2, v3);
  }
}

- (NSXPCConnection)xpcConnection
{
  v3 = [(TUUserNotificationProviderXPCClient *)self queue];
  dispatch_assert_queue_V2(v3);

  xpcConnection = self->_xpcConnection;
  if (!xpcConnection)
  {
    v5 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.telephonyutilities.callservicesdaemon.usernotificationprovider" options:0];
    v6 = self->_xpcConnection;
    self->_xpcConnection = v5;

    v7 = +[TUUserNotificationProviderXPCClient userNotificationProviderServerXPCInterface];
    [(NSXPCConnection *)self->_xpcConnection setRemoteObjectInterface:v7];

    objc_initWeak(&location, self);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __52__TUUserNotificationProviderXPCClient_xpcConnection__block_invoke;
    v11[3] = &unk_1E7424998;
    objc_copyWeak(&v12, &location);
    [(NSXPCConnection *)self->_xpcConnection setInvalidationHandler:v11];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __52__TUUserNotificationProviderXPCClient_xpcConnection__block_invoke_7;
    v9[3] = &unk_1E7424998;
    objc_copyWeak(&v10, &location);
    [(NSXPCConnection *)self->_xpcConnection setInterruptionHandler:v9];
    [(NSXPCConnection *)self->_xpcConnection resume];
    objc_destroyWeak(&v10);
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
    xpcConnection = self->_xpcConnection;
  }

  return xpcConnection;
}

void __52__TUUserNotificationProviderXPCClient_xpcConnection__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __52__TUUserNotificationProviderXPCClient_xpcConnection__block_invoke_2;
    block[3] = &unk_1E7424950;
    block[4] = v2;
    dispatch_async(v3, block);
  }
}

void __52__TUUserNotificationProviderXPCClient_xpcConnection__block_invoke_2(uint64_t a1)
{
  v2 = TUDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1956FD000, v2, OS_LOG_TYPE_DEFAULT, "user notification provider xpc connection invalidated (client side)", v5, 2u);
  }

  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  *(v3 + 16) = 0;
}

void __52__TUUserNotificationProviderXPCClient_xpcConnection__block_invoke_7(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained queue];
    dispatch_async(v2, &__block_literal_global_10);

    WeakRetained = v3;
  }
}

void __52__TUUserNotificationProviderXPCClient_xpcConnection__block_invoke_2_8()
{
  v0 = TUDefaultLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_1956FD000, v0, OS_LOG_TYPE_DEFAULT, "user notification provider XPC connection interrupted (client side)", v1, 2u);
  }
}

- (id)serverWithErrorHandler:(id)a3
{
  v4 = a3;
  v5 = [(TUUserNotificationProviderXPCClient *)self queue];
  dispatch_assert_queue_V2(v5);

  WeakRetained = objc_loadWeakRetained(&sAsynchronousServer_0);
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = WeakRetained;
  }

  else
  {
    v9 = [(TUUserNotificationProviderXPCClient *)self xpcConnection];
    v8 = [v9 remoteObjectProxyWithErrorHandler:v4];
  }

  return v8;
}

- (id)synchronousServerWithErrorHandler:(id)a3
{
  v4 = a3;
  v5 = [(TUUserNotificationProviderXPCClient *)self queue];
  dispatch_assert_queue_V2(v5);

  WeakRetained = objc_loadWeakRetained(&sSynchronousServer_0);
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = WeakRetained;
  }

  else
  {
    v9 = [(TUUserNotificationProviderXPCClient *)self xpcConnection];
    v8 = [v9 synchronousRemoteObjectProxyWithErrorHandler:v4];
  }

  return v8;
}

+ (NSXPCInterface)userNotificationProviderServerXPCInterface
{
  if (userNotificationProviderServerXPCInterface_onceToken != -1)
  {
    +[TUUserNotificationProviderXPCClient userNotificationProviderServerXPCInterface];
  }

  v3 = userNotificationProviderServerXPCInterface_userNotificationProviderServerXPCInterface;

  return v3;
}

uint64_t __81__TUUserNotificationProviderXPCClient_userNotificationProviderServerXPCInterface__block_invoke()
{
  userNotificationProviderServerXPCInterface_userNotificationProviderServerXPCInterface = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F09CD400];

  return MEMORY[0x1EEE66BB8]();
}

void __86__TUUserNotificationProviderXPCClient_momentCapturedForStreamToken_requesterID_reply___block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1956FD000, a2, OS_LOG_TYPE_ERROR, "Error registering moments captured stream token: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end