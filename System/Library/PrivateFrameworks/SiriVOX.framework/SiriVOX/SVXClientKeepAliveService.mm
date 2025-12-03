@interface SVXClientKeepAliveService
- (SVXClientKeepAliveService)initWithClientServiceProvider:(id)provider analytics:(id)analytics performer:(id)performer;
- (void)_connectWithRetryCount:(unint64_t)count completion:(id)completion;
- (void)clientServiceDidChange:(BOOL)change;
- (void)connectWithCompletion:(id)completion;
@end

@implementation SVXClientKeepAliveService

- (void)_connectWithRetryCount:(unint64_t)count completion:(id)completion
{
  v22 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v7 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v19 = "[SVXClientKeepAliveService _connectWithRetryCount:completion:]";
    v20 = 2048;
    countCopy = count;
    _os_log_debug_impl(&dword_2695B9000, v7, OS_LOG_TYPE_DEBUG, "%s retryCount = %tu", buf, 0x16u);
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __63__SVXClientKeepAliveService__connectWithRetryCount_completion___block_invoke;
  v15[3] = &unk_279C67628;
  v16 = completionCopy;
  countCopy2 = count;
  v15[4] = self;
  v8 = completionCopy;
  v9 = MEMORY[0x26D642680](v15);
  clientServiceProvider = self->_clientServiceProvider;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __63__SVXClientKeepAliveService__connectWithRetryCount_completion___block_invoke_2;
  v13[3] = &unk_279C67DC8;
  v14 = v9;
  v11 = v9;
  [(SVXClientServiceProviding *)clientServiceProvider getClientServiceUsingBlock:v13 errorHandler:v11];

  v12 = *MEMORY[0x277D85DE8];
}

void __63__SVXClientKeepAliveService__connectWithRetryCount_completion___block_invoke(void *a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v16 = "[SVXClientKeepAliveService _connectWithRetryCount:completion:]_block_invoke";
    v17 = 2112;
    v18 = v3;
    _os_log_debug_impl(&dword_2695B9000, v4, OS_LOG_TYPE_DEBUG, "%s error = %@", buf, 0x16u);
  }

  v5 = a1[4];
  v6 = *(v5 + 8);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __63__SVXClientKeepAliveService__connectWithRetryCount_completion___block_invoke_3;
  v10[3] = &unk_279C68180;
  v7 = a1[5];
  v14 = a1[6];
  v11 = v3;
  v12 = v5;
  v13 = v7;
  v8 = v3;
  [v6 performBlock:v10];

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t __63__SVXClientKeepAliveService__connectWithRetryCount_completion___block_invoke_3(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v1 = *(a1 + 56);
    if (v1)
    {
      return [*(a1 + 40) _connectWithRetryCount:v1 - 1 completion:*(a1 + 48)];
    }
  }

  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)clientServiceDidChange:(BOOL)change
{
  performer = self->_performer;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __52__SVXClientKeepAliveService_clientServiceDidChange___block_invoke;
  v4[3] = &unk_279C681F8;
  changeCopy = change;
  v4[4] = self;
  [(SVXPerforming *)performer performBlock:v4];
}

uint64_t __52__SVXClientKeepAliveService_clientServiceDidChange___block_invoke(uint64_t result)
{
  if ((*(result + 40) & 1) == 0)
  {
    return [*(result + 32) connectWithCompletion:0];
  }

  return result;
}

- (SVXClientKeepAliveService)initWithClientServiceProvider:(id)provider analytics:(id)analytics performer:(id)performer
{
  providerCopy = provider;
  performerCopy = performer;
  v13.receiver = self;
  v13.super_class = SVXClientKeepAliveService;
  v10 = [(SVXClientKeepAliveService *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_performer, performer);
    objc_storeStrong(&v11->_clientServiceProvider, provider);
  }

  return v11;
}

- (void)connectWithCompletion:(id)completion
{
  v13 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v12 = "[SVXClientKeepAliveService connectWithCompletion:]";
    _os_log_impl(&dword_2695B9000, v5, OS_LOG_TYPE_INFO, "%s Connecting...", buf, 0xCu);
  }

  performer = self->_performer;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __51__SVXClientKeepAliveService_connectWithCompletion___block_invoke;
  v9[3] = &unk_279C68EF8;
  v9[4] = self;
  v10 = completionCopy;
  v7 = completionCopy;
  [(SVXPerforming *)performer performBlock:v9];

  v8 = *MEMORY[0x277D85DE8];
}

void __51__SVXClientKeepAliveService_connectWithCompletion___block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __51__SVXClientKeepAliveService_connectWithCompletion___block_invoke_2;
  v2[3] = &unk_279C680E0;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 _connectWithRetryCount:5 completion:v2];
}

void __51__SVXClientKeepAliveService_connectWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277CEF098];
  if (v3)
  {
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "[SVXClientKeepAliveService connectWithCompletion:]_block_invoke_2";
      v9 = 2112;
      v10 = v3;
      _os_log_error_impl(&dword_2695B9000, v4, OS_LOG_TYPE_ERROR, "%s Failed to connect due to error %@.", &v7, 0x16u);
    }
  }

  else if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v7 = 136315138;
    v8 = "[SVXClientKeepAliveService connectWithCompletion:]_block_invoke";
    _os_log_impl(&dword_2695B9000, v4, OS_LOG_TYPE_INFO, "%s Connected.", &v7, 0xCu);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }

  v6 = *MEMORY[0x277D85DE8];
}

@end