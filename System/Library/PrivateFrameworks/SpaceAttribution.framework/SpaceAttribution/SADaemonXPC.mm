@interface SADaemonXPC
+ (id)newWithInvalidationHandler:(id)handler;
- (SADaemonXPC)init;
- (SADaemonXPC)initWithInvalidationHandler:(id)handler;
- (id)remoteObjectProxyWithErrorHandler:(id)handler;
- (id)synchronousRemoteObjectProxyWithErrorHandler:(id)handler;
- (void)invalidate;
- (void)setInvalidationHandler:(id)handler;
@end

@implementation SADaemonXPC

- (SADaemonXPC)init
{
  v12.receiver = self;
  v12.super_class = SADaemonXPC;
  v2 = [(SADaemonXPC *)&v12 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_287BD0B88];
    remoteInterface = v2->remoteInterface;
    v2->remoteInterface = v3;

    v5 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_287BCE848];
    [(NSXPCInterface *)v2->remoteInterface setInterface:v5 forSelector:sel_addAppSizerHandler_reply_ argumentIndex:0 ofReply:0];
    [(NSXPCInterface *)v2->remoteInterface setInterface:v5 forSelector:sel_addURLSizerHandler_withURLs_reply_ argumentIndex:0 ofReply:0];
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    [(NSXPCInterface *)v2->remoteInterface setClasses:v8 forSelector:sel_addURLSizerHandler_withURLs_reply_ argumentIndex:1 ofReply:0];
    v9 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.spaceattributiond" options:0];
    xpcConnection = v2->xpcConnection;
    v2->xpcConnection = v9;

    [(NSXPCConnection *)v2->xpcConnection setRemoteObjectInterface:v2->remoteInterface];
    [(NSXPCConnection *)v2->xpcConnection resume];
  }

  return v2;
}

- (SADaemonXPC)initWithInvalidationHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [(SADaemonXPC *)self init];
  v6 = v5;
  if (v5)
  {
    [(SADaemonXPC *)v5 setInvalidationHandler:handlerCopy];
  }

  return v6;
}

+ (id)newWithInvalidationHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [[self alloc] initWithInvalidationHandler:handlerCopy];

  return v5;
}

- (void)setInvalidationHandler:(id)handler
{
  handlerCopy = handler;
  v5 = handlerCopy;
  if (handlerCopy)
  {
    xpcConnection = self->xpcConnection;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __38__SADaemonXPC_setInvalidationHandler___block_invoke;
    v11[3] = &unk_279CD6DE8;
    v7 = handlerCopy;
    v12 = v7;
    [(NSXPCConnection *)xpcConnection setInvalidationHandler:v11];
    v8 = self->xpcConnection;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __38__SADaemonXPC_setInvalidationHandler___block_invoke_112;
    v9[3] = &unk_279CD6DE8;
    v10 = v7;
    [(NSXPCConnection *)v8 setInterruptionHandler:v9];
  }
}

void __38__SADaemonXPC_setInvalidationHandler___block_invoke(uint64_t a1)
{
  v2 = SALog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __38__SADaemonXPC_setInvalidationHandler___block_invoke_cold_1();
  }

  v3 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:4099 userInfo:0];
  (*(*(a1 + 32) + 16))();
}

void __38__SADaemonXPC_setInvalidationHandler___block_invoke_112(uint64_t a1)
{
  v2 = SALog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __38__SADaemonXPC_setInvalidationHandler___block_invoke_112_cold_1();
  }

  v3 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:4099 userInfo:0];
  (*(*(a1 + 32) + 16))();
}

- (void)invalidate
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "[SADaemonXPC invalidate]";
  _os_log_debug_impl(&dword_26B26B000, log, OS_LOG_TYPE_DEBUG, "%s: end", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (id)remoteObjectProxyWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  xpcConnection = self->xpcConnection;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __49__SADaemonXPC_remoteObjectProxyWithErrorHandler___block_invoke;
  v9[3] = &unk_279CD6E10;
  v10 = handlerCopy;
  v6 = handlerCopy;
  v7 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v9];

  return v7;
}

void __49__SADaemonXPC_remoteObjectProxyWithErrorHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = SALog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __49__SADaemonXPC_remoteObjectProxyWithErrorHandler___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (id)synchronousRemoteObjectProxyWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  xpcConnection = self->xpcConnection;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __60__SADaemonXPC_synchronousRemoteObjectProxyWithErrorHandler___block_invoke;
  v9[3] = &unk_279CD6E10;
  v10 = handlerCopy;
  v6 = handlerCopy;
  v7 = [(NSXPCConnection *)xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v9];

  return v7;
}

void __60__SADaemonXPC_synchronousRemoteObjectProxyWithErrorHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = SALog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __60__SADaemonXPC_synchronousRemoteObjectProxyWithErrorHandler___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __49__SADaemonXPC_remoteObjectProxyWithErrorHandler___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __60__SADaemonXPC_synchronousRemoteObjectProxyWithErrorHandler___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end