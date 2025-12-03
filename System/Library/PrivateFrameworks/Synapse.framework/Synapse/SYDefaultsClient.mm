@interface SYDefaultsClient
- (SYDefaultsClient)init;
- (void)_configureConnectionAndResume;
- (void)_createConnectionIfNeeded;
- (void)_invalidateConnection;
- (void)dealloc;
- (void)indicatorCoverageWithCompletion:(id)completion;
- (void)setIndicatorCoverage:(int64_t)coverage completion:(id)completion;
@end

@implementation SYDefaultsClient

- (void)_createConnectionIfNeeded
{
  _connection = [(SYDefaultsClient *)self _connection];

  if (!_connection)
  {
    v4 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.synapse.backlink-service" options:0];
    [(SYDefaultsClient *)self set_connection:v4];

    _connection2 = [(SYDefaultsClient *)self _connection];
    _clientQueue = [(SYDefaultsClient *)self _clientQueue];
    [_connection2 _setQueue:_clientQueue];

    [(SYDefaultsClient *)self _configureConnectionAndResume];
  }
}

- (void)_configureConnectionAndResume
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"SYDefaultsClient.m" lineNumber:102 description:@"the XPC connection is unexpectedly nil"];
}

- (SYDefaultsClient)init
{
  v7.receiver = self;
  v7.super_class = SYDefaultsClient;
  v2 = [(SYDefaultsClient *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v4 = dispatch_queue_create("com.apple.synapse.defaults", v3);
    clientQueue = v2->__clientQueue;
    v2->__clientQueue = v4;
  }

  return v2;
}

- (void)dealloc
{
  _connection = [(SYDefaultsClient *)self _connection];
  [_connection invalidate];

  [(SYDefaultsClient *)self set_connection:0];
  v4.receiver = self;
  v4.super_class = SYDefaultsClient;
  [(SYDefaultsClient *)&v4 dealloc];
}

- (void)setIndicatorCoverage:(int64_t)coverage completion:(id)completion
{
  completionCopy = completion;
  _clientQueue = [(SYDefaultsClient *)self _clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__SYDefaultsClient_setIndicatorCoverage_completion___block_invoke;
  block[3] = &unk_27856B928;
  block[4] = self;
  v10 = completionCopy;
  coverageCopy = coverage;
  v8 = completionCopy;
  dispatch_async(_clientQueue, block);
}

void __52__SYDefaultsClient_setIndicatorCoverage_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _createConnectionIfNeeded];
  v2 = [*(a1 + 32) _connection];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __52__SYDefaultsClient_setIndicatorCoverage_completion___block_invoke_2;
  v6[3] = &unk_27856B4C0;
  v7 = *(a1 + 40);
  v3 = [v2 remoteObjectProxyWithErrorHandler:v6];

  if (v3)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 48)];
    [v3 setIndicatorCoverage:v4];

    v5 = *(a1 + 40);
    if (v5)
    {
      (*(v5 + 16))();
    }
  }
}

void __52__SYDefaultsClient_setIndicatorCoverage_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = os_log_create("com.apple.synapse", "SYDefaultsClient");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __52__SYDefaultsClient_setIndicatorCoverage_completion___block_invoke_2_cold_1(v3, v4);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))();
  }
}

- (void)indicatorCoverageWithCompletion:(id)completion
{
  completionCopy = completion;
  _clientQueue = [(SYDefaultsClient *)self _clientQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__SYDefaultsClient_indicatorCoverageWithCompletion___block_invoke;
  v7[3] = &unk_27856B978;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(_clientQueue, v7);
}

void __52__SYDefaultsClient_indicatorCoverageWithCompletion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _createConnectionIfNeeded];
  v2 = [*(a1 + 32) _connection];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__SYDefaultsClient_indicatorCoverageWithCompletion___block_invoke_2;
  v7[3] = &unk_27856B4C0;
  v8 = *(a1 + 40);
  v3 = [v2 remoteObjectProxyWithErrorHandler:v7];

  if (v3)
  {
    v4 = *(a1 + 40);
    if (v4)
    {
      v5[0] = MEMORY[0x277D85DD0];
      v5[1] = 3221225472;
      v5[2] = __52__SYDefaultsClient_indicatorCoverageWithCompletion___block_invoke_7;
      v5[3] = &unk_27856B950;
      v6 = v4;
      [v3 indicatorCoverageWithCompletion:v5];
    }
  }
}

void __52__SYDefaultsClient_indicatorCoverageWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = os_log_create("com.apple.synapse", "SYDefaultsClient");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __52__SYDefaultsClient_setIndicatorCoverage_completion___block_invoke_2_cold_1(v3, v4);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0);
  }
}

uint64_t __52__SYDefaultsClient_indicatorCoverageWithCompletion___block_invoke_7(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 integerValue];
  v4 = *(v2 + 16);

  return v4(v2, v3);
}

void __49__SYDefaultsClient__configureConnectionAndResume__block_invoke(uint64_t a1)
{
  v2 = os_log_create("com.apple.synapse", "SYDefaultsClient");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_225901000, v2, OS_LOG_TYPE_INFO, "Connection was invalidated.", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _invalidateConnection];
}

void __49__SYDefaultsClient__configureConnectionAndResume__block_invoke_18(uint64_t a1)
{
  v2 = os_log_create("com.apple.synapse", "SYDefaultsClient");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_225901000, v2, OS_LOG_TYPE_INFO, "Connection was interrupted.", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _invalidateConnection];
}

- (void)_invalidateConnection
{
  _clientQueue = [(SYDefaultsClient *)self _clientQueue];
  dispatch_assert_queue_V2(_clientQueue);

  _connection = [(SYDefaultsClient *)self _connection];

  if (_connection)
  {
    v5 = os_log_create("com.apple.synapse", "SYDefaultsClient");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_225901000, v5, OS_LOG_TYPE_INFO, "Invalidating connection.", v7, 2u);
    }

    _connection2 = [(SYDefaultsClient *)self _connection];
    [(SYDefaultsClient *)self set_connection:0];
    [_connection2 invalidate];
  }
}

void __52__SYDefaultsClient_setIndicatorCoverage_completion___block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_225901000, a2, OS_LOG_TYPE_ERROR, "Error creating remote service proxy: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end