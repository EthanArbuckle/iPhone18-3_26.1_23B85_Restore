@interface SVXClientSessionService
- (SVXClientSessionService)initWithClientServiceProvider:(id)provider analytics:(id)analytics performer:(id)performer;
- (SVXClientSessionServiceDelegate)delegate;
- (void)_setCurrentState:(int64_t)state;
- (void)clientServiceDidChange:(BOOL)change;
- (void)fetchAlarmAndTimerFiringContextWithCompletion:(id)completion;
- (void)fetchStateWithCompletion:(id)completion;
- (void)handleDidBecomeActiveWithActivationContext:(id)context turnID:(id)d;
- (void)handleDidChangeStateFrom:(int64_t)from to:(int64_t)to;
- (void)handleDidResignActiveWithDeactivationContext:(id)context;
- (void)handleDidStartSoundWithID:(int64_t)d;
- (void)handleDidStopSoundWithID:(int64_t)d error:(id)error;
- (void)handleWillBecomeActiveWithActivationContext:(id)context turnID:(id)d;
- (void)handleWillChangeStateFrom:(int64_t)from to:(int64_t)to;
- (void)handleWillPresentFeedbackWithDialogIdentifier:(id)identifier;
- (void)handleWillResignActiveWithOptions:(unint64_t)options duration:(double)duration;
- (void)handleWillStartSoundWithID:(int64_t)d;
@end

@implementation SVXClientSessionService

- (SVXClientSessionServiceDelegate)delegate
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
    v23 = "[SVXClientSessionService _setCurrentState:]";
    v24 = 2112;
    v25 = v9;
    _os_log_impl(&dword_2695B9000, v7, OS_LOG_TYPE_INFO, "%s currentState = %@", &v22, 0x16u);
  }

  currentState = self->_currentState;
  if (currentState != state)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained sessionService:self willChangeStateFrom:currentState to:state];

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
      v23 = "[SVXClientSessionService _setCurrentState:]";
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
      v23 = "[SVXClientSessionService _setCurrentState:]";
      v24 = 2112;
      v25 = v19;
      _os_log_impl(&dword_2695B9000, v17, OS_LOG_TYPE_INFO, "%s _currentState = %@", &v22, 0x16u);
    }

    v20 = objc_loadWeakRetained(&self->_delegate);
    [v20 sessionService:self didChangeStateFrom:currentState to:state];
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)fetchAlarmAndTimerFiringContextWithCompletion:(id)completion
{
  v15 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v14 = "[SVXClientSessionService fetchAlarmAndTimerFiringContextWithCompletion:]";
    _os_log_impl(&dword_2695B9000, v5, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  clientServiceProvider = self->_clientServiceProvider;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __73__SVXClientSessionService_fetchAlarmAndTimerFiringContextWithCompletion___block_invoke;
  v11[3] = &unk_279C67DC8;
  v12 = completionCopy;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __73__SVXClientSessionService_fetchAlarmAndTimerFiringContextWithCompletion___block_invoke_25;
  v9[3] = &unk_279C680E0;
  v10 = v12;
  v7 = v12;
  [(SVXClientServiceProviding *)clientServiceProvider getClientServiceUsingBlock:v11 errorHandler:v9];

  v8 = *MEMORY[0x277D85DE8];
}

void __73__SVXClientSessionService_fetchAlarmAndTimerFiringContextWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __73__SVXClientSessionService_fetchAlarmAndTimerFiringContextWithCompletion___block_invoke_2;
  v3[3] = &unk_279C67DF0;
  v4 = *(a1 + 32);
  [a2 fetchAlarmAndTimerFiringContextWithCompletion:v3];
}

void __73__SVXClientSessionService_fetchAlarmAndTimerFiringContextWithCompletion___block_invoke_25(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[SVXClientSessionService fetchAlarmAndTimerFiringContextWithCompletion:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_error_impl(&dword_2695B9000, v4, OS_LOG_TYPE_ERROR, "%s error = %@", &v7, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __73__SVXClientSessionService_fetchAlarmAndTimerFiringContextWithCompletion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = MEMORY[0x277CEF098];
  if (v6 && (v8 = *MEMORY[0x277CEF098], os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR)))
  {
    v12 = 136315394;
    v13 = "[SVXClientSessionService fetchAlarmAndTimerFiringContextWithCompletion:]_block_invoke_2";
    v14 = 2112;
    v15 = v6;
    _os_log_error_impl(&dword_2695B9000, v8, OS_LOG_TYPE_ERROR, "%s error = %@", &v12, 0x16u);
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  else if (!v5)
  {
    goto LABEL_6;
  }

  v9 = *v7;
  if (os_log_type_enabled(*v7, OS_LOG_TYPE_INFO))
  {
    v12 = 136315394;
    v13 = "[SVXClientSessionService fetchAlarmAndTimerFiringContextWithCompletion:]_block_invoke";
    v14 = 2112;
    v15 = v5;
    _os_log_impl(&dword_2695B9000, v9, OS_LOG_TYPE_INFO, "%s alarmAndTimerFiringContext = %@", &v12, 0x16u);
  }

LABEL_6:
  v10 = *(a1 + 32);
  if (v10)
  {
    (*(v10 + 16))(v10, v5);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)fetchStateWithCompletion:(id)completion
{
  v15 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v14 = "[SVXClientSessionService fetchStateWithCompletion:]";
    _os_log_impl(&dword_2695B9000, v5, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  clientServiceProvider = self->_clientServiceProvider;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __52__SVXClientSessionService_fetchStateWithCompletion___block_invoke;
  v11[3] = &unk_279C67F98;
  v11[4] = self;
  v12 = completionCopy;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __52__SVXClientSessionService_fetchStateWithCompletion___block_invoke_4;
  v9[3] = &unk_279C680E0;
  v10 = v12;
  v7 = v12;
  [(SVXClientServiceProviding *)clientServiceProvider getClientServiceUsingBlock:v11 errorHandler:v9];

  v8 = *MEMORY[0x277D85DE8];
}

void __52__SVXClientSessionService_fetchStateWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __52__SVXClientSessionService_fetchStateWithCompletion___block_invoke_2;
  v4[3] = &unk_279C67F70;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [a2 fetchSessionStateWithCompletion:v4];
}

void __52__SVXClientSessionService_fetchStateWithCompletion___block_invoke_4(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[SVXClientSessionService fetchStateWithCompletion:]_block_invoke_4";
    v9 = 2112;
    v10 = v3;
    _os_log_error_impl(&dword_2695B9000, v4, OS_LOG_TYPE_ERROR, "%s error = %@", &v7, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __52__SVXClientSessionService_fetchStateWithCompletion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    a2 = 0;
  }

  v5 = *(a1 + 32);
  v6 = *(v5 + 8);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __52__SVXClientSessionService_fetchStateWithCompletion___block_invoke_3;
  v8[3] = &unk_279C68D70;
  v8[4] = v5;
  v10 = a2;
  v9 = *(a1 + 40);
  v7 = a3;
  [v6 performBlock:v8];
}

uint64_t __52__SVXClientSessionService_fetchStateWithCompletion___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) _setCurrentState:*(a1 + 48)];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(a1 + 48);
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

- (void)clientServiceDidChange:(BOOL)change
{
  [(SVXClientSessionService *)self fetchStateWithCompletion:0];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __50__SVXClientSessionService_clientServiceDidChange___block_invoke;
  v11[3] = &unk_279C68CD8;
  v11[4] = self;
  v4 = MEMORY[0x26D642680](v11);
  clientServiceProvider = self->_clientServiceProvider;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __50__SVXClientSessionService_clientServiceDidChange___block_invoke_3;
  v9[3] = &unk_279C67DC8;
  v10 = v4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__SVXClientSessionService_clientServiceDidChange___block_invoke_20;
  v7[3] = &unk_279C680E0;
  v8 = v10;
  v6 = v10;
  [(SVXClientServiceProviding *)clientServiceProvider getClientServiceUsingBlock:v9 errorHandler:v7];
}

uint64_t __50__SVXClientSessionService_clientServiceDidChange___block_invoke(uint64_t a1, char a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __50__SVXClientSessionService_clientServiceDidChange___block_invoke_2;
  v5[3] = &unk_279C681F8;
  v5[4] = v2;
  v6 = a2;
  return [v3 performBlock:v5];
}

void __50__SVXClientSessionService_clientServiceDidChange___block_invoke_3(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __50__SVXClientSessionService_clientServiceDidChange___block_invoke_4;
  v3[3] = &unk_279C67DA0;
  v4 = *(a1 + 32);
  [a2 fetchSessionActivityStateWithCompletion:v3];
}

void __50__SVXClientSessionService_clientServiceDidChange___block_invoke_20(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    v6 = 136315394;
    v7 = "[SVXClientSessionService clientServiceDidChange:]_block_invoke";
    v8 = 2112;
    v9 = v3;
    _os_log_error_impl(&dword_2695B9000, v4, OS_LOG_TYPE_ERROR, "%s error = %@", &v6, 0x16u);
  }

  (*(*(a1 + 32) + 16))();

  v5 = *MEMORY[0x277D85DE8];
}

void __50__SVXClientSessionService_clientServiceDidChange___block_invoke_4(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "[SVXClientSessionService clientServiceDidChange:]_block_invoke_4";
      v9 = 2112;
      v10 = v4;
      _os_log_error_impl(&dword_2695B9000, v5, OS_LOG_TYPE_ERROR, "%s error = %@", &v7, 0x16u);
    }
  }

  (*(*(a1 + 32) + 16))();

  v6 = *MEMORY[0x277D85DE8];
}

void __50__SVXClientSessionService_clientServiceDidChange___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (*(v1 + 24) != v2)
  {
    WeakRetained = objc_loadWeakRetained((v1 + 40));
    if (v2)
    {
      v5 = objc_opt_respondsToSelector();

      if (v5)
      {
        v6 = objc_loadWeakRetained((*(a1 + 32) + 40));
        [v6 sessionService:*(a1 + 32) didBecomeActiveWithActivationContext:0];
LABEL_7:
      }
    }

    else
    {
      v7 = objc_opt_respondsToSelector();

      if (v7)
      {
        v6 = objc_loadWeakRetained((*(a1 + 32) + 40));
        [v6 sessionService:*(a1 + 32) didResignActiveWithDeactivationContext:0];
        goto LABEL_7;
      }
    }

    *(*(a1 + 32) + 24) = *(a1 + 40);
  }
}

- (SVXClientSessionService)initWithClientServiceProvider:(id)provider analytics:(id)analytics performer:(id)performer
{
  providerCopy = provider;
  performerCopy = performer;
  v13.receiver = self;
  v13.super_class = SVXClientSessionService;
  v10 = [(SVXClientSessionService *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_performer, performer);
    objc_storeStrong(&v11->_clientServiceProvider, provider);
  }

  return v11;
}

- (void)handleDidResignActiveWithDeactivationContext:(id)context
{
  v15 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v12 = "[SVXClientSessionService handleDidResignActiveWithDeactivationContext:]";
    v13 = 2112;
    v14 = contextCopy;
    _os_log_impl(&dword_2695B9000, v5, OS_LOG_TYPE_INFO, "%s deactivationContext = %@", buf, 0x16u);
  }

  performer = self->_performer;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __72__SVXClientSessionService_handleDidResignActiveWithDeactivationContext___block_invoke;
  v9[3] = &unk_279C68FE8;
  v9[4] = self;
  v10 = contextCopy;
  v7 = contextCopy;
  [(SVXPerforming *)performer performBlock:v9];

  v8 = *MEMORY[0x277D85DE8];
}

void __72__SVXClientSessionService_handleDidResignActiveWithDeactivationContext___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (*(v2 + 24) == 1)
  {
    *(v2 + 24) = 0;
  }

  else
  {
    v3 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      v8 = 136315138;
      v9 = "[SVXClientSessionService handleDidResignActiveWithDeactivationContext:]_block_invoke";
      _os_log_error_impl(&dword_2695B9000, v3, OS_LOG_TYPE_ERROR, "%s Client session activity state is inactive when end resigning active.", &v8, 0xCu);
    }
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 40));
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained((*(a1 + 32) + 40));
    [v6 sessionService:*(a1 + 32) didResignActiveWithDeactivationContext:*(a1 + 40)];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)handleWillResignActiveWithOptions:(unint64_t)options duration:(double)duration
{
  v19 = *MEMORY[0x277D85DE8];
  v7 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v8 = v7;
    v9 = SVXSessionResignActiveOptionsGetNames(options);
    *buf = 136315650;
    v14 = "[SVXClientSessionService handleWillResignActiveWithOptions:duration:]";
    v15 = 2112;
    v16 = v9;
    v17 = 2048;
    durationCopy = duration;
    _os_log_impl(&dword_2695B9000, v8, OS_LOG_TYPE_INFO, "%s options = %@, duration = %f", buf, 0x20u);
  }

  performer = self->_performer;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __70__SVXClientSessionService_handleWillResignActiveWithOptions_duration___block_invoke;
  v12[3] = &unk_279C68E80;
  v12[4] = self;
  v12[5] = options;
  *&v12[6] = duration;
  [(SVXPerforming *)performer performBlock:v12];
  v11 = *MEMORY[0x277D85DE8];
}

void __70__SVXClientSessionService_handleWillResignActiveWithOptions_duration___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if ((*(v2 + 24) & 1) == 0)
  {
    v3 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      v6 = 136315138;
      v7 = "[SVXClientSessionService handleWillResignActiveWithOptions:duration:]_block_invoke";
      _os_log_error_impl(&dword_2695B9000, v3, OS_LOG_TYPE_ERROR, "%s Client session activity state is inactive when begin resigning active.", &v6, 0xCu);
      v2 = *(a1 + 32);
    }
  }

  WeakRetained = objc_loadWeakRetained((v2 + 40));
  [WeakRetained sessionService:*(a1 + 32) willResignActiveWithOptions:*(a1 + 40) duration:*(a1 + 48)];

  v5 = *MEMORY[0x277D85DE8];
}

- (void)handleDidBecomeActiveWithActivationContext:(id)context turnID:(id)d
{
  v22 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  dCopy = d;
  v8 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v17 = "[SVXClientSessionService handleDidBecomeActiveWithActivationContext:turnID:]";
    v18 = 2112;
    v19 = contextCopy;
    v20 = 2112;
    v21 = dCopy;
    _os_log_impl(&dword_2695B9000, v8, OS_LOG_TYPE_INFO, "%s activationContext = %@, turnID = %@", buf, 0x20u);
  }

  performer = self->_performer;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __77__SVXClientSessionService_handleDidBecomeActiveWithActivationContext_turnID___block_invoke;
  v13[3] = &unk_279C68ED0;
  v13[4] = self;
  v14 = contextCopy;
  v15 = dCopy;
  v10 = dCopy;
  v11 = contextCopy;
  [(SVXPerforming *)performer performBlock:v13];

  v12 = *MEMORY[0x277D85DE8];
}

void __77__SVXClientSessionService_handleDidBecomeActiveWithActivationContext_turnID___block_invoke(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  if (*(v2 + 24))
  {
    v3 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      v10 = 136315138;
      v11 = "[SVXClientSessionService handleDidBecomeActiveWithActivationContext:turnID:]_block_invoke";
      _os_log_error_impl(&dword_2695B9000, v3, OS_LOG_TYPE_ERROR, "%s Client session activity state is active when end becoming active.", &v10, 0xCu);
    }
  }

  else
  {
    *(v2 + 24) = 1;
  }

  WeakRetained = objc_loadWeakRetained((a1[4] + 40));
  v5 = objc_opt_respondsToSelector();

  v6 = objc_loadWeakRetained((a1[4] + 40));
  v7 = v6;
  if (v5)
  {
    [v6 sessionService:a1[4] didBecomeActiveWithActivationContext:a1[5] turnID:a1[6]];
LABEL_9:

    goto LABEL_10;
  }

  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v7 = objc_loadWeakRetained((a1[4] + 40));
    [v7 sessionService:a1[4] didBecomeActiveWithActivationContext:a1[5]];
    goto LABEL_9;
  }

LABEL_10:
  v9 = *MEMORY[0x277D85DE8];
}

- (void)handleWillBecomeActiveWithActivationContext:(id)context turnID:(id)d
{
  v22 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  dCopy = d;
  v8 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v17 = "[SVXClientSessionService handleWillBecomeActiveWithActivationContext:turnID:]";
    v18 = 2112;
    v19 = contextCopy;
    v20 = 2112;
    v21 = dCopy;
    _os_log_impl(&dword_2695B9000, v8, OS_LOG_TYPE_INFO, "%s activationContext = %@, turnID = %@", buf, 0x20u);
  }

  performer = self->_performer;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __78__SVXClientSessionService_handleWillBecomeActiveWithActivationContext_turnID___block_invoke;
  v13[3] = &unk_279C68ED0;
  v13[4] = self;
  v14 = contextCopy;
  v15 = dCopy;
  v10 = dCopy;
  v11 = contextCopy;
  [(SVXPerforming *)performer performBlock:v13];

  v12 = *MEMORY[0x277D85DE8];
}

void __78__SVXClientSessionService_handleWillBecomeActiveWithActivationContext_turnID___block_invoke(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  if (*(v2 + 24) == 1)
  {
    v3 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      v10 = 136315138;
      v11 = "[SVXClientSessionService handleWillBecomeActiveWithActivationContext:turnID:]_block_invoke";
      _os_log_error_impl(&dword_2695B9000, v3, OS_LOG_TYPE_ERROR, "%s Client session activity state is active when begin becoming active.", &v10, 0xCu);
      v2 = a1[4];
    }
  }

  WeakRetained = objc_loadWeakRetained((v2 + 40));
  v5 = objc_opt_respondsToSelector();

  v6 = objc_loadWeakRetained((a1[4] + 40));
  v7 = v6;
  if (v5)
  {
    [v6 sessionService:a1[4] willBecomeActiveWithActivationContext:a1[5] turnID:a1[6]];
LABEL_8:

    goto LABEL_9;
  }

  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v7 = objc_loadWeakRetained((a1[4] + 40));
    [v7 sessionService:a1[4] willBecomeActiveWithActivationContext:a1[5]];
    goto LABEL_8;
  }

LABEL_9:
  v9 = *MEMORY[0x277D85DE8];
}

- (void)handleDidStopSoundWithID:(int64_t)d error:(id)error
{
  v23 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v7 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v8 = v7;
    if (d > 6)
    {
      v9 = @"(unknown)";
    }

    else
    {
      v9 = off_279C677F8[d];
    }

    v10 = v9;
    *buf = 136315650;
    v18 = "[SVXClientSessionService handleDidStopSoundWithID:error:]";
    v19 = 2112;
    v20 = v10;
    v21 = 2112;
    v22 = errorCopy;
    _os_log_impl(&dword_2695B9000, v8, OS_LOG_TYPE_INFO, "%s soundID = %@, error = %@", buf, 0x20u);
  }

  performer = self->_performer;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __58__SVXClientSessionService_handleDidStopSoundWithID_error___block_invoke;
  v14[3] = &unk_279C68E58;
  v15 = errorCopy;
  dCopy = d;
  v14[4] = self;
  v12 = errorCopy;
  [(SVXPerforming *)performer performBlock:v14];

  v13 = *MEMORY[0x277D85DE8];
}

void __58__SVXClientSessionService_handleDidStopSoundWithID_error___block_invoke(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 40));
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = objc_loadWeakRetained((a1[4] + 40));
    [v4 sessionService:a1[4] didStopSoundWithID:a1[6] error:a1[5]];
  }
}

- (void)handleDidStartSoundWithID:(int64_t)d
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v6 = v5;
    if (d > 6)
    {
      v7 = @"(unknown)";
    }

    else
    {
      v7 = off_279C677F8[d];
    }

    v8 = v7;
    *buf = 136315394;
    v13 = "[SVXClientSessionService handleDidStartSoundWithID:]";
    v14 = 2112;
    v15 = v8;
    _os_log_impl(&dword_2695B9000, v6, OS_LOG_TYPE_INFO, "%s soundID = %@", buf, 0x16u);
  }

  performer = self->_performer;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __53__SVXClientSessionService_handleDidStartSoundWithID___block_invoke;
  v11[3] = &unk_279C68C68;
  v11[4] = self;
  v11[5] = d;
  [(SVXPerforming *)performer performBlock:v11];
  v10 = *MEMORY[0x277D85DE8];
}

void __53__SVXClientSessionService_handleDidStartSoundWithID___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 40));
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = objc_loadWeakRetained((*(a1 + 32) + 40));
    [v4 sessionService:*(a1 + 32) didStartSoundWithID:*(a1 + 40)];
  }
}

- (void)handleWillStartSoundWithID:(int64_t)d
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v6 = v5;
    if (d > 6)
    {
      v7 = @"(unknown)";
    }

    else
    {
      v7 = off_279C677F8[d];
    }

    v8 = v7;
    *buf = 136315394;
    v13 = "[SVXClientSessionService handleWillStartSoundWithID:]";
    v14 = 2112;
    v15 = v8;
    _os_log_impl(&dword_2695B9000, v6, OS_LOG_TYPE_INFO, "%s soundID = %@", buf, 0x16u);
  }

  performer = self->_performer;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __54__SVXClientSessionService_handleWillStartSoundWithID___block_invoke;
  v11[3] = &unk_279C68C68;
  v11[4] = self;
  v11[5] = d;
  [(SVXPerforming *)performer performBlock:v11];
  v10 = *MEMORY[0x277D85DE8];
}

void __54__SVXClientSessionService_handleWillStartSoundWithID___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 40));
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = objc_loadWeakRetained((*(a1 + 32) + 40));
    [v4 sessionService:*(a1 + 32) willStartSoundWithID:*(a1 + 40)];
  }
}

- (void)handleWillPresentFeedbackWithDialogIdentifier:(id)identifier
{
  v15 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v12 = "[SVXClientSessionService handleWillPresentFeedbackWithDialogIdentifier:]";
    v13 = 2112;
    v14 = identifierCopy;
    _os_log_impl(&dword_2695B9000, v5, OS_LOG_TYPE_INFO, "%s dialogIdentifier = %@", buf, 0x16u);
  }

  performer = self->_performer;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __73__SVXClientSessionService_handleWillPresentFeedbackWithDialogIdentifier___block_invoke;
  v9[3] = &unk_279C68FE8;
  v9[4] = self;
  v10 = identifierCopy;
  v7 = identifierCopy;
  [(SVXPerforming *)performer performBlock:v9];

  v8 = *MEMORY[0x277D85DE8];
}

void __73__SVXClientSessionService_handleWillPresentFeedbackWithDialogIdentifier___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 40));
  [WeakRetained sessionService:*(a1 + 32) willPresentFeedbackWithDialogIdentifier:*(a1 + 40)];
}

- (void)handleDidChangeStateFrom:(int64_t)from to:(int64_t)to
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
    v17 = "[SVXClientSessionService handleDidChangeStateFrom:to:]";
    v18 = 2112;
    v19 = v10;
    v20 = 2112;
    v21 = v12;
    _os_log_impl(&dword_2695B9000, v8, OS_LOG_TYPE_INFO, "%s fromState = %@, toState = %@", buf, 0x20u);
  }

  performer = self->_performer;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __55__SVXClientSessionService_handleDidChangeStateFrom_to___block_invoke;
  v15[3] = &unk_279C68E80;
  v15[4] = self;
  v15[5] = from;
  v15[6] = to;
  [(SVXPerforming *)performer performBlock:v15];
  v14 = *MEMORY[0x277D85DE8];
}

uint64_t __55__SVXClientSessionService_handleDidChangeStateFrom_to___block_invoke(void *a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v3 = v2[4];
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
      v17 = "[SVXClientSessionService handleDidChangeStateFrom:to:]_block_invoke";
      v18 = 2112;
      v19 = v8;
      _os_log_impl(&dword_2695B9000, v6, OS_LOG_TYPE_INFO, "%s _currentState = %@", &v16, 0x16u);

      v2 = a1[4];
      v5 = *v4;
    }

    v2[4] = a1[6];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v9 = *(a1[4] + 32);
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
      v17 = "[SVXClientSessionService handleDidChangeStateFrom:to:]_block_invoke";
      v18 = 2112;
      v19 = v12;
      _os_log_impl(&dword_2695B9000, v10, OS_LOG_TYPE_INFO, "%s _currentState = %@", &v16, 0x16u);
    }

    WeakRetained = objc_loadWeakRetained((a1[4] + 40));
    [WeakRetained sessionService:a1[4] didChangeStateFrom:a1[5] to:a1[6]];

    v2 = a1[4];
  }

  result = [v2 _setCurrentState:a1[6]];
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)handleWillChangeStateFrom:(int64_t)from to:(int64_t)to
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
    v17 = "[SVXClientSessionService handleWillChangeStateFrom:to:]";
    v18 = 2112;
    v19 = v10;
    v20 = 2112;
    v21 = v12;
    _os_log_impl(&dword_2695B9000, v8, OS_LOG_TYPE_INFO, "%s fromState = %@, toState = %@", buf, 0x20u);
  }

  performer = self->_performer;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __56__SVXClientSessionService_handleWillChangeStateFrom_to___block_invoke;
  v15[3] = &unk_279C68E80;
  v15[4] = self;
  v15[5] = from;
  v15[6] = to;
  [(SVXPerforming *)performer performBlock:v15];
  v14 = *MEMORY[0x277D85DE8];
}

void __56__SVXClientSessionService_handleWillChangeStateFrom_to___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _setCurrentState:*(a1 + 40)];
  v2 = *(a1 + 32);
  if (*(v2 + 32) == *(a1 + 40))
  {
    WeakRetained = objc_loadWeakRetained((v2 + 40));
    [WeakRetained sessionService:*(a1 + 32) willChangeStateFrom:*(a1 + 40) to:*(a1 + 48)];
  }
}

@end