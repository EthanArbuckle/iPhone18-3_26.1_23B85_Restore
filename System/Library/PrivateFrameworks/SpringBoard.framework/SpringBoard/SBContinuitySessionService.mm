@interface SBContinuitySessionService
- (SBContinuitySessionFactory)sessionFactory;
- (SBContinuitySessionService)init;
- (SBContinuitySessionService)initWithServiceListenerFactory:(id)a3;
- (void)clientDidConnect:(id)a3;
- (void)clientDidDisconnect:(id)a3;
@end

@implementation SBContinuitySessionService

- (SBContinuitySessionService)init
{
  v3 = objc_alloc_init(SBContinuitySessionServiceConnectionListenerFactory);
  v4 = [(SBContinuitySessionService *)self initWithServiceListenerFactory:v3];

  return v4;
}

- (SBContinuitySessionService)initWithServiceListenerFactory:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = SBContinuitySessionService;
  v5 = [(SBContinuitySessionService *)&v12 init];
  if (v5)
  {
    v6 = BSDispatchQueueCreateWithQualityOfService();
    v7 = [v4 newContinuitySessionServiceListenerForDelegate:v5 serviceQueue:v6];
    serviceConnectionListener = v5->_serviceConnectionListener;
    v5->_serviceConnectionListener = v7;

    v9 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    sessions = v5->_sessions;
    v5->_sessions = v9;
  }

  return v5;
}

- (void)clientDidConnect:(id)a3
{
  v4 = a3;
  v3 = v4;
  BSDispatchMain();
}

void __47__SBContinuitySessionService_clientDidConnect___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = SBLogContinuitySessionService();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) succinctDescription];
    v7 = 138543362;
    v8 = v3;
    _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_DEFAULT, "client connected: %{public}@", &v7, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 24));
  v5 = [*(*(a1 + 40) + 16) objectForKey:*(a1 + 32)];

  if (v5)
  {
    __47__SBContinuitySessionService_clientDidConnect___block_invoke_cold_1(a1, (a1 + 40));
    if (WeakRetained)
    {
      goto LABEL_5;
    }

LABEL_7:
    __47__SBContinuitySessionService_clientDidConnect___block_invoke_cold_2(a1, (a1 + 40));
    goto LABEL_5;
  }

  if (!WeakRetained)
  {
    goto LABEL_7;
  }

LABEL_5:
  v6 = [WeakRetained newContinuitySession];
  [*(*(a1 + 40) + 16) setObject:v6 forKey:*(a1 + 32)];
  [*(a1 + 32) setSession:v6];
  [*(a1 + 32) setDelegate:v6];
  [v6 continuitySessionServiceClientConnected:*(a1 + 32)];
  [*(a1 + 32) continuitySessionDidUpdateState:v6];
}

- (void)clientDidDisconnect:(id)a3
{
  v4 = a3;
  v3 = v4;
  BSDispatchMain();
}

void __50__SBContinuitySessionService_clientDidDisconnect___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = SBLogContinuitySessionService();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) succinctDescription];
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_DEFAULT, "client disconnected: %{public}@ invalidating session", &v6, 0xCu);
  }

  v4 = [*(*(a1 + 40) + 16) objectForKey:*(a1 + 32)];
  [*(a1 + 32) setSession:0];
  [*(a1 + 32) setDelegate:0];
  v5 = [MEMORY[0x277CBEB98] setWithObject:@"terminal.client-disconnected"];
  [v4 invalidateForReasons:v5];

  [*(*(a1 + 40) + 16) removeObjectForKey:*(a1 + 32)];
}

- (SBContinuitySessionFactory)sessionFactory
{
  WeakRetained = objc_loadWeakRetained(&self->_sessionFactory);

  return WeakRetained;
}

void __47__SBContinuitySessionService_clientDidConnect___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:*(a1 + 48) object:*a2 file:@"SBContinuitySessionService.m" lineNumber:54 description:@"already have a session for this client"];
}

void __47__SBContinuitySessionService_clientDidConnect___block_invoke_cold_2(uint64_t a1, void *a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:*(a1 + 48) object:*a2 file:@"SBContinuitySessionService.m" lineNumber:55 description:@"client connected but we don't have a session factory to hook him up to"];
}

@end