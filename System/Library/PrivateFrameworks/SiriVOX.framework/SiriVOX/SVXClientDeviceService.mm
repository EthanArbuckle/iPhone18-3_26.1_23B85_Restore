@interface SVXClientDeviceService
- (SVXClientDeviceService)initWithClientServiceProvider:(id)provider analytics:(id)analytics performer:(id)performer;
- (void)_beginSetupWithContext:(id)context;
- (void)_endSetup;
- (void)_prepareForSetupWithContext:(id)context completion:(id)completion;
- (void)_updateSetupContext;
- (void)beginSetupWithContext:(id)context;
- (void)clientServiceDidChange:(BOOL)change;
- (void)endSetup;
- (void)prepareForSetupWithContext:(id)context completion:(id)completion;
@end

@implementation SVXClientDeviceService

- (void)_updateSetupContext
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    currentSetupContext = self->_currentSetupContext;
    *buf = 136315394;
    v12 = "[SVXClientDeviceService _updateSetupContext]";
    v13 = 2112;
    v14 = currentSetupContext;
    _os_log_impl(&dword_2695B9000, v3, OS_LOG_TYPE_INFO, "%s _currentSetupContext = %@", buf, 0x16u);
  }

  v5 = self->_currentSetupContext;
  clientServiceProvider = self->_clientServiceProvider;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __45__SVXClientDeviceService__updateSetupContext__block_invoke;
  v9[3] = &unk_279C67900;
  v10 = v5;
  v7 = v5;
  [(SVXClientServiceProviding *)clientServiceProvider getClientServiceUsingBlock:v9 errorHandler:&__block_literal_global_5776];

  v8 = *MEMORY[0x277D85DE8];
}

void __45__SVXClientDeviceService__updateSetupContext__block_invoke_2(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[SVXClientDeviceService _updateSetupContext]_block_invoke_2";
    v7 = 2112;
    v8 = v2;
    _os_log_error_impl(&dword_2695B9000, v3, OS_LOG_TYPE_ERROR, "%s error = %@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)_endSetup
{
  currentSetupContext = self->_currentSetupContext;
  self->_currentSetupContext = 0;

  [(SVXClientDeviceService *)self _updateSetupContext];
}

- (void)_beginSetupWithContext:(id)context
{
  v4 = [context copy];
  currentSetupContext = self->_currentSetupContext;
  self->_currentSetupContext = v4;

  [(SVXClientDeviceService *)self _updateSetupContext];
}

- (void)_prepareForSetupWithContext:(id)context completion:(id)completion
{
  v22 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  completionCopy = completion;
  v8 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v19 = "[SVXClientDeviceService _prepareForSetupWithContext:completion:]";
    v20 = 2112;
    v21 = contextCopy;
    _os_log_impl(&dword_2695B9000, v8, OS_LOG_TYPE_INFO, "%s context = %@", buf, 0x16u);
  }

  clientServiceProvider = self->_clientServiceProvider;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __65__SVXClientDeviceService__prepareForSetupWithContext_completion___block_invoke;
  v15[3] = &unk_279C67F98;
  v16 = contextCopy;
  v17 = completionCopy;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __65__SVXClientDeviceService__prepareForSetupWithContext_completion___block_invoke_4;
  v13[3] = &unk_279C680E0;
  v14 = v17;
  v10 = v17;
  v11 = contextCopy;
  [(SVXClientServiceProviding *)clientServiceProvider getClientServiceUsingBlock:v15 errorHandler:v13];

  v12 = *MEMORY[0x277D85DE8];
}

void __65__SVXClientDeviceService__prepareForSetupWithContext_completion___block_invoke(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __65__SVXClientDeviceService__prepareForSetupWithContext_completion___block_invoke_2;
  v4[3] = &unk_279C68E10;
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  [a2 prepareForDeviceSetupWithContext:v3 completion:v4];
}

void __65__SVXClientDeviceService__prepareForSetupWithContext_completion___block_invoke_4(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[SVXClientDeviceService _prepareForSetupWithContext:completion:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_error_impl(&dword_2695B9000, v4, OS_LOG_TYPE_ERROR, "%s error = %@", &v7, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __65__SVXClientDeviceService__prepareForSetupWithContext_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *MEMORY[0x277CEF098];
  if (v6)
  {
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = "[SVXClientDeviceService _prepareForSetupWithContext:completion:]_block_invoke_2";
      v12 = 2112;
      v13 = v6;
      _os_log_error_impl(&dword_2695B9000, v7, OS_LOG_TYPE_ERROR, "%s error = %@", &v10, 0x16u);
    }
  }

  else if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v10 = 136315394;
    v11 = "[SVXClientDeviceService _prepareForSetupWithContext:completion:]_block_invoke";
    v12 = 2112;
    v13 = v5;
    _os_log_impl(&dword_2695B9000, v7, OS_LOG_TYPE_INFO, "%s flow = %@", &v10, 0x16u);
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, v5, v6);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)endSetup
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v8 = "[SVXClientDeviceService endSetup]";
    _os_log_impl(&dword_2695B9000, v3, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  performer = self->_performer;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __34__SVXClientDeviceService_endSetup__block_invoke;
  v6[3] = &unk_279C68FC0;
  v6[4] = self;
  [(SVXPerforming *)performer performBlock:v6];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)beginSetupWithContext:(id)context
{
  v15 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v12 = "[SVXClientDeviceService beginSetupWithContext:]";
    v13 = 2112;
    v14 = contextCopy;
    _os_log_impl(&dword_2695B9000, v5, OS_LOG_TYPE_INFO, "%s context = %@", buf, 0x16u);
  }

  performer = self->_performer;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __48__SVXClientDeviceService_beginSetupWithContext___block_invoke;
  v9[3] = &unk_279C68FE8;
  v9[4] = self;
  v10 = contextCopy;
  v7 = contextCopy;
  [(SVXPerforming *)performer performBlock:v9];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)prepareForSetupWithContext:(id)context completion:(id)completion
{
  v20 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  completionCopy = completion;
  v8 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v17 = "[SVXClientDeviceService prepareForSetupWithContext:completion:]";
    v18 = 2112;
    v19 = contextCopy;
    _os_log_impl(&dword_2695B9000, v8, OS_LOG_TYPE_INFO, "%s context = %@", buf, 0x16u);
  }

  performer = self->_performer;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __64__SVXClientDeviceService_prepareForSetupWithContext_completion___block_invoke;
  v13[3] = &unk_279C68EA8;
  v13[4] = self;
  v14 = contextCopy;
  v15 = completionCopy;
  v10 = completionCopy;
  v11 = contextCopy;
  [(SVXPerforming *)performer performBlock:v13];

  v12 = *MEMORY[0x277D85DE8];
}

void __64__SVXClientDeviceService_prepareForSetupWithContext_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __64__SVXClientDeviceService_prepareForSetupWithContext_completion___block_invoke_2;
  v5[3] = &unk_279C67530;
  v4 = *(a1 + 48);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [v2 _prepareForSetupWithContext:v3 completion:v5];
}

void __64__SVXClientDeviceService_prepareForSetupWithContext_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 40);
  if (v7)
  {
    v8 = *(*(a1 + 32) + 8);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __64__SVXClientDeviceService_prepareForSetupWithContext_completion___block_invoke_3;
    v9[3] = &unk_279C68EA8;
    v12 = v7;
    v10 = v5;
    v11 = v6;
    [v8 performBlock:v9];
  }
}

- (void)clientServiceDidChange:(BOOL)change
{
  performer = self->_performer;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __49__SVXClientDeviceService_clientServiceDidChange___block_invoke;
  v4[3] = &unk_279C681F8;
  changeCopy = change;
  v4[4] = self;
  [(SVXPerforming *)performer performBlock:v4];
}

uint64_t __49__SVXClientDeviceService_clientServiceDidChange___block_invoke(uint64_t result)
{
  if (*(result + 40) == 1)
  {
    return [*(result + 32) _updateSetupContext];
  }

  return result;
}

- (SVXClientDeviceService)initWithClientServiceProvider:(id)provider analytics:(id)analytics performer:(id)performer
{
  providerCopy = provider;
  performerCopy = performer;
  v13.receiver = self;
  v13.super_class = SVXClientDeviceService;
  v10 = [(SVXClientDeviceService *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_performer, performer);
    objc_storeStrong(&v11->_clientServiceProvider, provider);
  }

  return v11;
}

@end