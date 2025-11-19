@interface SVXPowerLevelManager
- (SVXPowerLevelManager)initWithModule:(id)a3 audioPowerProvider:(id)a4;
- (SVXPowerLevelManager)initWithModule:(id)a3 audioPowerProvider:(id)a4 powerLevelListener:(id)a5;
- (void)_beginUpdateAudioPowerWithCompletion:(id)a3;
- (void)_endUpdateAudioPower;
- (void)beginUpdateAudioPowerWithCompletion:(id)a3;
- (void)endUpdateAudioPower;
@end

@implementation SVXPowerLevelManager

- (void)_endUpdateAudioPower
{
  v3 = [(SVXModule *)self->_module instanceContext];
  v4 = [v3 supportsAudioPowerUpdate];

  if (v4)
  {
    powerLevelListener = self->_powerLevelListener;

    [(SVXPowerLevelListener *)powerLevelListener endListening];
  }
}

- (void)_beginUpdateAudioPowerWithCompletion:(id)a3
{
  v7 = a3;
  v4 = [(SVXModule *)self->_module instanceContext];
  if ([v4 supportsAudioPowerUpdate])
  {
    audioPowerProvider = self->_audioPowerProvider;

    if (audioPowerProvider)
    {
      [(SVXPowerLevelListener *)self->_powerLevelListener beginListeningToAudioPowerProvider:self->_audioPowerProvider completion:v7];
      goto LABEL_7;
    }
  }

  else
  {
  }

  v6 = v7;
  if (!v7)
  {
    goto LABEL_8;
  }

  (*(v7 + 2))(v7, 0);
LABEL_7:
  v6 = v7;
LABEL_8:
}

- (void)endUpdateAudioPower
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v8 = "[SVXPowerLevelManager endUpdateAudioPower]";
    _os_log_impl(&dword_2695B9000, v3, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  v4 = [(SVXModule *)self->_module performer];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __43__SVXPowerLevelManager_endUpdateAudioPower__block_invoke;
  v6[3] = &unk_279C68FC0;
  v6[4] = self;
  [v4 performBlock:v6];

  v5 = *MEMORY[0x277D85DE8];
}

- (void)beginUpdateAudioPowerWithCompletion:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v12 = "[SVXPowerLevelManager beginUpdateAudioPowerWithCompletion:]";
    _os_log_impl(&dword_2695B9000, v5, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  v6 = [(SVXModule *)self->_module performer];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __60__SVXPowerLevelManager_beginUpdateAudioPowerWithCompletion___block_invoke;
  v9[3] = &unk_279C68EF8;
  v9[4] = self;
  v10 = v4;
  v7 = v4;
  [v6 performBlock:v9];

  v8 = *MEMORY[0x277D85DE8];
}

- (SVXPowerLevelManager)initWithModule:(id)a3 audioPowerProvider:(id)a4 powerLevelListener:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = SVXPowerLevelManager;
  v12 = [(SVXPowerLevelManager *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_module, a3);
    objc_storeStrong(&v13->_audioPowerProvider, a4);
    objc_storeStrong(&v13->_powerLevelListener, a5);
  }

  return v13;
}

- (SVXPowerLevelManager)initWithModule:(id)a3 audioPowerProvider:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(SVXPowerLevelListener);
  v9 = [(SVXPowerLevelManager *)self initWithModule:v7 audioPowerProvider:v6 powerLevelListener:v8];

  return v9;
}

@end