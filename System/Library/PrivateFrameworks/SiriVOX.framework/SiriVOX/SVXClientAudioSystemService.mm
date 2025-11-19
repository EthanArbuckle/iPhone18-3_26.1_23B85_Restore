@interface SVXClientAudioSystemService
- (SVXClientAudioSystemService)initWithClientServiceProvider:(id)a3 analytics:(id)a4 performer:(id)a5;
- (SVXClientAudioSystemServiceDelegate)delegate;
- (void)handleAudioSessionDidBecomeActive:(BOOL)a3 activationContext:(id)a4 deactivationContext:(id)a5;
- (void)handleAudioSessionIDDidChange:(unsigned int)a3;
- (void)handleAudioSessionWillBecomeActive:(BOOL)a3 activationContext:(id)a4 deactivationContext:(id)a5;
@end

@implementation SVXClientAudioSystemService

- (SVXClientAudioSystemServiceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (SVXClientAudioSystemService)initWithClientServiceProvider:(id)a3 analytics:(id)a4 performer:(id)a5
{
  v8 = a3;
  v9 = a5;
  v13.receiver = self;
  v13.super_class = SVXClientAudioSystemService;
  v10 = [(SVXClientAudioSystemService *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_performer, a5);
    objc_storeStrong(&v11->_clientServiceProvider, a3);
  }

  return v11;
}

- (void)handleAudioSessionIDDidChange:(unsigned int)a3
{
  performer = self->_performer;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __61__SVXClientAudioSystemService_handleAudioSessionIDDidChange___block_invoke;
  v4[3] = &unk_279C69128;
  v4[4] = self;
  v5 = a3;
  [(SVXPerforming *)performer performBlock:v4];
}

void __61__SVXClientAudioSystemService_handleAudioSessionIDDidChange___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 32));
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = objc_loadWeakRetained((*(a1 + 32) + 32));
    [v4 audioSystemService:*(a1 + 32) audioSessionIDDidChange:*(a1 + 40)];
  }
}

- (void)handleAudioSessionDidBecomeActive:(BOOL)a3 activationContext:(id)a4 deactivationContext:(id)a5
{
  v8 = a4;
  v9 = a5;
  performer = self->_performer;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __103__SVXClientAudioSystemService_handleAudioSessionDidBecomeActive_activationContext_deactivationContext___block_invoke;
  v13[3] = &unk_279C69100;
  v17 = a3;
  v14 = v8;
  v15 = v9;
  v16 = self;
  v11 = v9;
  v12 = v8;
  [(SVXPerforming *)performer performBlock:v13];
}

void __103__SVXClientAudioSystemService_handleAudioSessionDidBecomeActive_activationContext_deactivationContext___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CEF098];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 56);
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v20 = 136315906;
    v21 = "[SVXClientAudioSystemService handleAudioSessionDidBecomeActive:activationContext:deactivationContext:]_block_invoke";
    v22 = 1024;
    v23 = v4;
    v24 = 2112;
    v25 = v5;
    v26 = 2112;
    v27 = v6;
    _os_log_impl(&dword_2695B9000, v3, OS_LOG_TYPE_INFO, "%s flag = %d, activationContext = %@, deactivationContext = %@", &v20, 0x26u);
  }

  v7 = *(a1 + 48);
  v8 = *(v7 + 24);
  v9 = *(a1 + 56);
  if (v8 != v9)
  {
    *(v7 + 24) = v9;
    WeakRetained = objc_loadWeakRetained((*(a1 + 48) + 32));
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      v13 = objc_loadWeakRetained((*(a1 + 48) + 32));
      [v13 audioSystemService:*(a1 + 48) audioSessionDidBecomeActive:*(a1 + 56)];
    }

    v14 = *(a1 + 56);
    v15 = objc_loadWeakRetained((*(a1 + 48) + 32));
    if (v14 == 1)
    {
      v16 = objc_opt_respondsToSelector();

      if ((v16 & 1) == 0)
      {
        goto LABEL_14;
      }

      v17 = objc_loadWeakRetained((*(a1 + 48) + 32));
      [v17 audioSystemService:*(a1 + 48) audioSessionDidBecomeActiveWithActivationContext:*(a1 + 32)];
    }

    else
    {
      v18 = objc_opt_respondsToSelector();

      if ((v18 & 1) == 0)
      {
        goto LABEL_14;
      }

      v17 = objc_loadWeakRetained((*(a1 + 48) + 32));
      [v17 audioSystemService:*(a1 + 48) audioSessionDidBecomeInactiveWithDeactivationContext:*(a1 + 40)];
    }

    goto LABEL_14;
  }

  v10 = *v2;
  if (os_log_type_enabled(*v2, OS_LOG_TYPE_ERROR))
  {
    v20 = 136315394;
    v21 = "[SVXClientAudioSystemService handleAudioSessionDidBecomeActive:activationContext:deactivationContext:]_block_invoke";
    v22 = 1024;
    v23 = v8;
    _os_log_error_impl(&dword_2695B9000, v10, OS_LOG_TYPE_ERROR, "%s _isAudioSessionActive = %d, no need to deliver the delegate callbacka again.", &v20, 0x12u);
  }

LABEL_14:
  v19 = *MEMORY[0x277D85DE8];
}

- (void)handleAudioSessionWillBecomeActive:(BOOL)a3 activationContext:(id)a4 deactivationContext:(id)a5
{
  v8 = a4;
  v9 = a5;
  performer = self->_performer;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __104__SVXClientAudioSystemService_handleAudioSessionWillBecomeActive_activationContext_deactivationContext___block_invoke;
  v13[3] = &unk_279C69100;
  v17 = a3;
  v14 = v8;
  v15 = v9;
  v16 = self;
  v11 = v9;
  v12 = v8;
  [(SVXPerforming *)performer performBlock:v13];
}

void __104__SVXClientAudioSystemService_handleAudioSessionWillBecomeActive_activationContext_deactivationContext___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 56);
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v15 = 136315906;
    v16 = "[SVXClientAudioSystemService handleAudioSessionWillBecomeActive:activationContext:deactivationContext:]_block_invoke";
    v17 = 1024;
    v18 = v3;
    v19 = 2112;
    v20 = v4;
    v21 = 2112;
    v22 = v5;
    _os_log_impl(&dword_2695B9000, v2, OS_LOG_TYPE_INFO, "%s flag = %d, activationContext = %@, deactivationContext = %@", &v15, 0x26u);
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 48) + 32));
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = objc_loadWeakRetained((*(a1 + 48) + 32));
    [v8 audioSystemService:*(a1 + 48) audioSessionWillBecomeActive:*(a1 + 56)];
  }

  v9 = *(a1 + 56);
  v10 = objc_loadWeakRetained((*(a1 + 48) + 32));
  if (v9 == 1)
  {
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      v12 = objc_loadWeakRetained((*(a1 + 48) + 32));
      [v12 audioSystemService:*(a1 + 48) audioSessionWillBecomeActiveWithActivationContext:*(a1 + 32)];
LABEL_10:
    }
  }

  else
  {
    v13 = objc_opt_respondsToSelector();

    if (v13)
    {
      v12 = objc_loadWeakRetained((*(a1 + 48) + 32));
      [v12 audioSystemService:*(a1 + 48) audioSessionWillBecomeInactiveWithDeactivationContext:*(a1 + 40)];
      goto LABEL_10;
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

@end