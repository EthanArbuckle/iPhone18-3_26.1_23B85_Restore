@interface SVXClientSessionStateService
- (SVXClientSessionStateService)initWithClientServiceProvider:(id)provider analytics:(id)analytics performer:(id)performer;
- (SVXClientSessionStateServiceDelegate)delegate;
- (void)_setCurrentState:(int64_t)state;
- (void)fetchStateWithCompletion:(id)completion;
- (void)handleDidChangeSessionStateFrom:(int64_t)from to:(int64_t)to;
- (void)handleWillChangeSessionStateFrom:(int64_t)from to:(int64_t)to;
@end

@implementation SVXClientSessionStateService

- (SVXClientSessionStateServiceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_setCurrentState:(int64_t)state
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CEF098];
  v6 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v7 = v6;
    if (state > 4)
    {
      v8 = @"(unknown)";
    }

    else
    {
      v8 = off_279C68A18[state];
    }

    v9 = v8;
    v22 = 136315394;
    v23 = "[SVXClientSessionStateService _setCurrentState:]";
    v24 = 2112;
    v25 = v9;
    _os_log_impl(&dword_2695B9000, v7, OS_LOG_TYPE_INFO, "%s currentState = %@", &v22, 0x16u);
  }

  currentState = self->_currentState;
  if (currentState != state)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained sessionStateService:self willChangeStateFrom:currentState to:state];

    v12 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_INFO))
    {
      v13 = self->_currentState;
      v14 = v12;
      if (v13 > 4)
      {
        v15 = @"(unknown)";
      }

      else
      {
        v15 = off_279C68A18[v13];
      }

      v16 = v15;
      v22 = 136315394;
      v23 = "[SVXClientSessionStateService _setCurrentState:]";
      v24 = 2112;
      v25 = v16;
      _os_log_impl(&dword_2695B9000, v14, OS_LOG_TYPE_INFO, "%s _currentState = %@", &v22, 0x16u);

      v12 = *v5;
    }

    self->_currentState = state;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v17 = v12;
      if (state > 4)
      {
        v18 = @"(unknown)";
      }

      else
      {
        v18 = off_279C68A18[state];
      }

      v19 = v18;
      v22 = 136315394;
      v23 = "[SVXClientSessionStateService _setCurrentState:]";
      v24 = 2112;
      v25 = v19;
      _os_log_impl(&dword_2695B9000, v17, OS_LOG_TYPE_INFO, "%s _currentState = %@", &v22, 0x16u);
    }

    v20 = objc_loadWeakRetained(&self->_delegate);
    [v20 sessionStateService:self didChangeStateFrom:currentState to:state];
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)fetchStateWithCompletion:(id)completion
{
  v15 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v14 = "[SVXClientSessionStateService fetchStateWithCompletion:]";
    _os_log_impl(&dword_2695B9000, v5, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  clientServiceProvider = self->_clientServiceProvider;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __57__SVXClientSessionStateService_fetchStateWithCompletion___block_invoke;
  v11[3] = &unk_279C67F98;
  v11[4] = self;
  v12 = completionCopy;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __57__SVXClientSessionStateService_fetchStateWithCompletion___block_invoke_4;
  v9[3] = &unk_279C68310;
  v9[4] = self;
  v10 = v12;
  v7 = v12;
  [(SVXClientServiceProviding *)clientServiceProvider getClientServiceUsingBlock:v11 errorHandler:v9];

  v8 = *MEMORY[0x277D85DE8];
}

void __57__SVXClientSessionStateService_fetchStateWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __57__SVXClientSessionStateService_fetchStateWithCompletion___block_invoke_2;
  v4[3] = &unk_279C67F70;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [a2 fetchSessionStateWithCompletion:v4];
}

void __57__SVXClientSessionStateService_fetchStateWithCompletion___block_invoke_4(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v10 = "[SVXClientSessionStateService fetchStateWithCompletion:]_block_invoke_4";
    v11 = 2112;
    v12 = v3;
    _os_log_error_impl(&dword_2695B9000, v4, OS_LOG_TYPE_ERROR, "%s error = %@", buf, 0x16u);
  }

  v5 = *(*(a1 + 32) + 8);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__SVXClientSessionStateService_fetchStateWithCompletion___block_invoke_3;
  v7[3] = &unk_279C68220;
  v8 = *(a1 + 40);
  [v5 performBlock:v7];

  v6 = *MEMORY[0x277D85DE8];
}

uint64_t __57__SVXClientSessionStateService_fetchStateWithCompletion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void __57__SVXClientSessionStateService_fetchStateWithCompletion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    a2 = 0;
  }

  v5 = *(a1 + 32);
  v6 = *(v5 + 8);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __57__SVXClientSessionStateService_fetchStateWithCompletion___block_invoke_3;
  v8[3] = &unk_279C68D70;
  v8[4] = v5;
  v10 = a2;
  v9 = *(a1 + 40);
  v7 = a3;
  [v6 performBlock:v8];
}

- (SVXClientSessionStateService)initWithClientServiceProvider:(id)provider analytics:(id)analytics performer:(id)performer
{
  providerCopy = provider;
  performerCopy = performer;
  v13.receiver = self;
  v13.super_class = SVXClientSessionStateService;
  v10 = [(SVXClientSessionStateService *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_performer, performer);
    objc_storeStrong(&v11->_clientServiceProvider, provider);
  }

  return v11;
}

- (void)handleDidChangeSessionStateFrom:(int64_t)from to:(int64_t)to
{
  v22 = *MEMORY[0x277D85DE8];
  v7 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v8 = v7;
    if (from > 4)
    {
      v9 = @"(unknown)";
    }

    else
    {
      v9 = off_279C68A18[from];
    }

    v10 = v9;
    if (to > 4)
    {
      v11 = @"(unknown)";
    }

    else
    {
      v11 = off_279C68A18[to];
    }

    v12 = v11;
    *buf = 136315650;
    v17 = "[SVXClientSessionStateService handleDidChangeSessionStateFrom:to:]";
    v18 = 2112;
    v19 = v10;
    v20 = 2112;
    v21 = v12;
    _os_log_impl(&dword_2695B9000, v8, OS_LOG_TYPE_INFO, "%s fromState = %@, toState = %@", buf, 0x20u);
  }

  performer = self->_performer;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __67__SVXClientSessionStateService_handleDidChangeSessionStateFrom_to___block_invoke;
  v15[3] = &unk_279C68E80;
  v15[4] = self;
  v15[5] = from;
  v15[6] = to;
  [(SVXPerforming *)performer performBlock:v15];
  v14 = *MEMORY[0x277D85DE8];
}

uint64_t __67__SVXClientSessionStateService_handleDidChangeSessionStateFrom_to___block_invoke(void *a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v3 = v2[3];
  if (v3 == a1[5])
  {
    v4 = MEMORY[0x277CEF098];
    v5 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
    {
      v6 = v5;
      if (v3 > 4)
      {
        v7 = @"(unknown)";
      }

      else
      {
        v7 = off_279C68A18[v3];
      }

      v8 = v7;
      v16 = 136315394;
      v17 = "[SVXClientSessionStateService handleDidChangeSessionStateFrom:to:]_block_invoke";
      v18 = 2112;
      v19 = v8;
      _os_log_impl(&dword_2695B9000, v6, OS_LOG_TYPE_INFO, "%s _currentState = %@", &v16, 0x16u);

      v2 = a1[4];
      v5 = *v4;
    }

    v2[3] = a1[6];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v9 = *(a1[4] + 24);
      v10 = v5;
      if (v9 > 4)
      {
        v11 = @"(unknown)";
      }

      else
      {
        v11 = off_279C68A18[v9];
      }

      v12 = v11;
      v16 = 136315394;
      v17 = "[SVXClientSessionStateService handleDidChangeSessionStateFrom:to:]_block_invoke";
      v18 = 2112;
      v19 = v12;
      _os_log_impl(&dword_2695B9000, v10, OS_LOG_TYPE_INFO, "%s _currentState = %@", &v16, 0x16u);
    }

    WeakRetained = objc_loadWeakRetained((a1[4] + 32));
    [WeakRetained sessionStateService:a1[4] didChangeStateFrom:a1[5] to:a1[6]];

    v2 = a1[4];
  }

  result = [v2 _setCurrentState:a1[6]];
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)handleWillChangeSessionStateFrom:(int64_t)from to:(int64_t)to
{
  v22 = *MEMORY[0x277D85DE8];
  v7 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v8 = v7;
    if (from > 4)
    {
      v9 = @"(unknown)";
    }

    else
    {
      v9 = off_279C68A18[from];
    }

    v10 = v9;
    if (to > 4)
    {
      v11 = @"(unknown)";
    }

    else
    {
      v11 = off_279C68A18[to];
    }

    v12 = v11;
    *buf = 136315650;
    v17 = "[SVXClientSessionStateService handleWillChangeSessionStateFrom:to:]";
    v18 = 2112;
    v19 = v10;
    v20 = 2112;
    v21 = v12;
    _os_log_impl(&dword_2695B9000, v8, OS_LOG_TYPE_INFO, "%s fromState = %@, toState = %@", buf, 0x20u);
  }

  performer = self->_performer;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __68__SVXClientSessionStateService_handleWillChangeSessionStateFrom_to___block_invoke;
  v15[3] = &unk_279C68E80;
  v15[4] = self;
  v15[5] = from;
  v15[6] = to;
  [(SVXPerforming *)performer performBlock:v15];
  v14 = *MEMORY[0x277D85DE8];
}

void __68__SVXClientSessionStateService_handleWillChangeSessionStateFrom_to___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _setCurrentState:*(a1 + 40)];
  v2 = *(a1 + 32);
  if (*(v2 + 24) == *(a1 + 40))
  {
    WeakRetained = objc_loadWeakRetained((v2 + 32));
    [WeakRetained sessionStateService:*(a1 + 32) willChangeStateFrom:*(a1 + 40) to:*(a1 + 48)];
  }
}

@end