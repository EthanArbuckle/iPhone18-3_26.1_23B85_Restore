@interface SVXClientAudioPowerService
- (SVXClientAudioPowerService)initWithType:(int64_t)a3 clientServiceProvider:(id)a4 analytics:(id)a5 performer:(id)a6;
- (SVXClientAudioPowerServiceDelegate)delegate;
- (float)averagePower;
- (float)peakPower;
- (id)_provider;
- (void)_beginUpdateWithFrequency:(int64_t)a3;
- (void)_createUpdater;
- (void)_destroyUpdater;
- (void)_endUpdate;
- (void)_handleDidEndUpdateAudioPower;
- (void)_handleWillBeginUpdateAudioPowerWithProvider:(id)a3;
- (void)_setProvider:(id)a3;
- (void)audioPowerUpdaterDidUpdate:(id)a3 averagePower:(float)a4 peakPower:(float)a5;
- (void)beginUpdateWithFrequency:(int64_t)a3;
- (void)clientServiceDidChange:(BOOL)a3;
- (void)endUpdate;
- (void)handleDidEndUpdateAudioPower;
- (void)handleWillBeginUpdateAudioPowerWithProvider:(id)a3;
@end

@implementation SVXClientAudioPowerService

- (SVXClientAudioPowerServiceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_setProvider:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_providerLock);
  provider = self->_provider;
  self->_provider = v4;

  os_unfair_lock_unlock(&self->_providerLock);
}

- (id)_provider
{
  os_unfair_lock_lock(&self->_providerLock);
  v3 = self->_provider;
  os_unfair_lock_unlock(&self->_providerLock);

  return v3;
}

- (void)_destroyUpdater
{
  updater = self->_updater;
  if (updater)
  {
    [(AFAudioPowerUpdater *)updater endUpdate];
    [(AFAudioPowerUpdater *)self->_updater invalidate];
    v4 = self->_updater;
    self->_updater = 0;

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained audioPowerServiceDidEndUpdate:self];
  }
}

- (void)_createUpdater
{
  [(SVXClientAudioPowerService *)self _destroyUpdater];
  if ((self->_type - 1) <= 1 && self->_wantsUpdate && self->_provider)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained audioPowerServiceWillBeginUpdate:self];

    performer = self->_performer;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [(SVXPerforming *)self->_performer queue];
    }

    else
    {
      v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v6 = dispatch_queue_attr_make_with_qos_class(v5, QOS_CLASS_USER_INTERACTIVE, 0);

      v9 = dispatch_queue_create("com.apple.SiriVOX.client.audio-power-updater", v6);
    }

    v7 = [objc_alloc(MEMORY[0x277CEF190]) initWithProvider:self->_provider queue:v9 frequency:self->_frequency delegate:self];
    updater = self->_updater;
    self->_updater = v7;

    [(AFAudioPowerUpdater *)self->_updater beginUpdate];
  }
}

- (void)_handleDidEndUpdateAudioPower
{
  [(SVXClientAudioPowerService *)self _destroyUpdater];

  [(SVXClientAudioPowerService *)self _setProvider:0];
}

- (void)_handleWillBeginUpdateAudioPowerWithProvider:(id)a3
{
  v4 = a3;
  [(SVXClientAudioPowerService *)self _handleDidEndUpdateAudioPower];
  [(SVXClientAudioPowerService *)self _setProvider:v4];

  [(SVXClientAudioPowerService *)self _createUpdater];
}

- (void)_endUpdate
{
  [(SVXClientAudioPowerService *)self _destroyUpdater];
  self->_frequency = 0;
  self->_wantsUpdate = 0;
}

- (void)_beginUpdateWithFrequency:(int64_t)a3
{
  [(SVXClientAudioPowerService *)self _endUpdate];
  self->_wantsUpdate = 1;
  if ((a3 - 1) >= 3)
  {
    v5 = 0;
  }

  else
  {
    v5 = a3;
  }

  self->_frequency = v5;

  [(SVXClientAudioPowerService *)self _createUpdater];
}

- (void)audioPowerUpdaterDidUpdate:(id)a3 averagePower:(float)a4 peakPower:(float)a5
{
  v8 = a3;
  performer = self->_performer;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __80__SVXClientAudioPowerService_audioPowerUpdaterDidUpdate_averagePower_peakPower___block_invoke;
  v11[3] = &unk_279C68E58;
  v11[4] = self;
  v12 = v8;
  v13 = a4;
  v14 = a5;
  v10 = v8;
  [(SVXPerforming *)performer performBlock:v11 withOptions:2];
}

void __80__SVXClientAudioPowerService_audioPowerUpdaterDidUpdate_averagePower_peakPower___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 64) == *(a1 + 40))
  {
    WeakRetained = objc_loadWeakRetained((v2 + 72));
    LODWORD(v4) = *(a1 + 48);
    LODWORD(v5) = *(a1 + 52);
    [WeakRetained audioPowerServiceDidUpdate:*(a1 + 32) averagePower:v4 peakPower:v5];
  }
}

- (float)peakPower
{
  v5 = 0.0;
  v2 = [(SVXClientAudioPowerService *)self _provider];
  if ([v2 getAveragePower:0 andPeakPower:&v5])
  {
    v3 = v5;
  }

  else
  {
    v3 = 0.0;
  }

  return v3;
}

- (float)averagePower
{
  v5 = 0.0;
  v2 = [(SVXClientAudioPowerService *)self _provider];
  if ([v2 getAveragePower:&v5 andPeakPower:0])
  {
    v3 = v5;
  }

  else
  {
    v3 = 0.0;
  }

  return v3;
}

- (void)endUpdate
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v8 = "[SVXClientAudioPowerService endUpdate]";
    _os_log_impl(&dword_2695B9000, v3, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  performer = self->_performer;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __39__SVXClientAudioPowerService_endUpdate__block_invoke;
  v6[3] = &unk_279C68FC0;
  v6[4] = self;
  [(SVXPerforming *)performer performBlock:v6];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)beginUpdateWithFrequency:(int64_t)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v6 = v5;
    if (a3 > 3)
    {
      v7 = @"(unknown)";
    }

    else
    {
      v7 = off_279C68A60[a3];
    }

    v8 = v7;
    *buf = 136315394;
    v13 = "[SVXClientAudioPowerService beginUpdateWithFrequency:]";
    v14 = 2112;
    v15 = v8;
    _os_log_impl(&dword_2695B9000, v6, OS_LOG_TYPE_INFO, "%s frequency = %@", buf, 0x16u);
  }

  performer = self->_performer;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __55__SVXClientAudioPowerService_beginUpdateWithFrequency___block_invoke;
  v11[3] = &unk_279C68C68;
  v11[4] = self;
  v11[5] = a3;
  [(SVXPerforming *)performer performBlock:v11];
  v10 = *MEMORY[0x277D85DE8];
}

- (void)clientServiceDidChange:(BOOL)a3
{
  performer = self->_performer;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__SVXClientAudioPowerService_clientServiceDidChange___block_invoke;
  v7[3] = &unk_279C68FC0;
  v7[4] = self;
  [(SVXPerforming *)performer performBlock:v7];
  clientServiceProvider = self->_clientServiceProvider;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __53__SVXClientAudioPowerService_clientServiceDidChange___block_invoke_2;
  v6[3] = &unk_279C67900;
  v6[4] = self;
  [(SVXClientServiceProviding *)clientServiceProvider getClientServiceUsingBlock:v6 errorHandler:&__block_literal_global_8548];
}

uint64_t __53__SVXClientAudioPowerService_clientServiceDidChange___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __53__SVXClientAudioPowerService_clientServiceDidChange___block_invoke_3;
  v5[3] = &unk_279C678D8;
  v5[4] = v2;
  return [a2 fetchAudioPowerWithType:v3 completion:v5];
}

void __53__SVXClientAudioPowerService_clientServiceDidChange___block_invoke_5(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[SVXClientAudioPowerService clientServiceDidChange:]_block_invoke_5";
    v7 = 2112;
    v8 = v2;
    _os_log_error_impl(&dword_2695B9000, v3, OS_LOG_TYPE_ERROR, "%s error = %@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void __53__SVXClientAudioPowerService_clientServiceDidChange___block_invoke_3(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = MEMORY[0x277CEF198];
    v4 = a2;
    v5 = [[v3 alloc] initWithXPCWrapper:v4];

    v6 = *(a1 + 32);
    v7 = *(v6 + 8);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __53__SVXClientAudioPowerService_clientServiceDidChange___block_invoke_4;
    v9[3] = &unk_279C68FE8;
    v9[4] = v6;
    v10 = v5;
    v8 = v5;
    [v7 performBlock:v9];
  }
}

- (void)handleDidEndUpdateAudioPower
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v8 = "[SVXClientAudioPowerService handleDidEndUpdateAudioPower]";
    _os_log_impl(&dword_2695B9000, v3, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  performer = self->_performer;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __58__SVXClientAudioPowerService_handleDidEndUpdateAudioPower__block_invoke;
  v6[3] = &unk_279C68FC0;
  v6[4] = self;
  [(SVXPerforming *)performer performBlock:v6];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)handleWillBeginUpdateAudioPowerWithProvider:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v12 = "[SVXClientAudioPowerService handleWillBeginUpdateAudioPowerWithProvider:]";
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_2695B9000, v5, OS_LOG_TYPE_INFO, "%s provider = %@", buf, 0x16u);
  }

  performer = self->_performer;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __74__SVXClientAudioPowerService_handleWillBeginUpdateAudioPowerWithProvider___block_invoke;
  v9[3] = &unk_279C68FE8;
  v9[4] = self;
  v10 = v4;
  v7 = v4;
  [(SVXPerforming *)performer performBlock:v9];

  v8 = *MEMORY[0x277D85DE8];
}

- (SVXClientAudioPowerService)initWithType:(int64_t)a3 clientServiceProvider:(id)a4 analytics:(id)a5 performer:(id)a6
{
  v10 = a4;
  v11 = a6;
  v15.receiver = self;
  v15.super_class = SVXClientAudioPowerService;
  v12 = [(SVXClientAudioPowerService *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_performer, a6);
    v13->_type = a3;
    objc_storeStrong(&v13->_clientServiceProvider, a4);
    v13->_providerLock._os_unfair_lock_opaque = 0;
  }

  return v13;
}

@end