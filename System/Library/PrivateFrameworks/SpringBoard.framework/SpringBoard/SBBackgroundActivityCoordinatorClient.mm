@interface SBBackgroundActivityCoordinatorClient
- (SBBackgroundActivityCoordinatorClient)initWithConnection:(id)connection andBackgroundActivityIdentifiers:(id)identifiers;
- (void)acquireAssertionAndDeliverTapContextToClient:(id)client;
@end

@implementation SBBackgroundActivityCoordinatorClient

- (SBBackgroundActivityCoordinatorClient)initWithConnection:(id)connection andBackgroundActivityIdentifiers:(id)identifiers
{
  connectionCopy = connection;
  identifiersCopy = identifiers;
  v11.receiver = self;
  v11.super_class = SBBackgroundActivityCoordinatorClient;
  v8 = [(SBBackgroundActivityCoordinatorClient *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(SBBackgroundActivityCoordinatorClient *)v8 setConnection:connectionCopy];
    [(SBBackgroundActivityCoordinatorClient *)v9 setRegisteredBackgroundActivityIdentifiers:identifiersCopy];
  }

  return v9;
}

- (void)acquireAssertionAndDeliverTapContextToClient:(id)client
{
  v4 = MEMORY[0x277CEEEA8];
  clientCopy = client;
  v6 = [[v4 alloc] initWithPID:-[NSXPCConnection processIdentifier](self->_connection flags:"processIdentifier") reason:3 name:{10002, @"SBSStatusBarStyleOverridesCoordinatorTapEventDeliveryAssertion"}];
  if (([v6 acquire] & 1) == 0)
  {
    v7 = SBLogStatusBarish();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_INFO, "Could not acquire assertion to deliver tap event to process.", buf, 2u);
    }
  }

  connection = self->_connection;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __86__SBBackgroundActivityCoordinatorClient_acquireAssertionAndDeliverTapContextToClient___block_invoke;
  v18[3] = &unk_2783B0F28;
  v18[4] = self;
  v9 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v18];
  v10 = dispatch_time(0, 10000000000);
  v11 = dispatch_get_global_queue(25, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __86__SBBackgroundActivityCoordinatorClient_acquireAssertionAndDeliverTapContextToClient___block_invoke_2;
  block[3] = &unk_2783A8C18;
  v12 = v6;
  v17 = v12;
  dispatch_after(v10, v11, block);

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __86__SBBackgroundActivityCoordinatorClient_acquireAssertionAndDeliverTapContextToClient___block_invoke_4;
  v14[3] = &unk_2783A8C18;
  v15 = v12;
  v13 = v12;
  [v9 statusBarTappedWithContext:clientCopy reply:v14];
}

void __86__SBBackgroundActivityCoordinatorClient_acquireAssertionAndDeliverTapContextToClient___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = SBLogStatusBarish();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(*(a1 + 32) + 8);
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_INFO, "Could not send tap event to coordinator (%@) due to xpc error retrieving remote proxy.", &v4, 0xCu);
  }
}

void __86__SBBackgroundActivityCoordinatorClient_acquireAssertionAndDeliverTapContextToClient___block_invoke_2(uint64_t a1)
{
  if ([*(a1 + 32) valid])
  {
    [*(a1 + 32) invalidate];
    v2 = SBLogStatusBarish();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __86__SBBackgroundActivityCoordinatorClient_acquireAssertionAndDeliverTapContextToClient___block_invoke_2_cold_1(v2);
    }
  }
}

uint64_t __86__SBBackgroundActivityCoordinatorClient_acquireAssertionAndDeliverTapContextToClient___block_invoke_4(uint64_t a1)
{
  v2 = SBLogStatusBarish();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_INFO, "tap event reply block received", v4, 2u);
  }

  return [*(a1 + 32) invalidate];
}

@end