@interface SVXPowerLevelManager
- (SVXPowerLevelManager)initWithModule:(id)module audioPowerProvider:(id)provider;
- (SVXPowerLevelManager)initWithModule:(id)module audioPowerProvider:(id)provider powerLevelListener:(id)listener;
- (void)_beginUpdateAudioPowerWithCompletion:(id)completion;
- (void)_endUpdateAudioPower;
- (void)beginUpdateAudioPowerWithCompletion:(id)completion;
- (void)endUpdateAudioPower;
@end

@implementation SVXPowerLevelManager

- (void)_endUpdateAudioPower
{
  instanceContext = [(SVXModule *)self->_module instanceContext];
  supportsAudioPowerUpdate = [instanceContext supportsAudioPowerUpdate];

  if (supportsAudioPowerUpdate)
  {
    powerLevelListener = self->_powerLevelListener;

    [(SVXPowerLevelListener *)powerLevelListener endListening];
  }
}

- (void)_beginUpdateAudioPowerWithCompletion:(id)completion
{
  completionCopy = completion;
  instanceContext = [(SVXModule *)self->_module instanceContext];
  if ([instanceContext supportsAudioPowerUpdate])
  {
    audioPowerProvider = self->_audioPowerProvider;

    if (audioPowerProvider)
    {
      [(SVXPowerLevelListener *)self->_powerLevelListener beginListeningToAudioPowerProvider:self->_audioPowerProvider completion:completionCopy];
      goto LABEL_7;
    }
  }

  else
  {
  }

  v6 = completionCopy;
  if (!completionCopy)
  {
    goto LABEL_8;
  }

  (*(completionCopy + 2))(completionCopy, 0);
LABEL_7:
  v6 = completionCopy;
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

  performer = [(SVXModule *)self->_module performer];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __43__SVXPowerLevelManager_endUpdateAudioPower__block_invoke;
  v6[3] = &unk_279C68FC0;
  v6[4] = self;
  [performer performBlock:v6];

  v5 = *MEMORY[0x277D85DE8];
}

- (void)beginUpdateAudioPowerWithCompletion:(id)completion
{
  v13 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v12 = "[SVXPowerLevelManager beginUpdateAudioPowerWithCompletion:]";
    _os_log_impl(&dword_2695B9000, v5, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  performer = [(SVXModule *)self->_module performer];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __60__SVXPowerLevelManager_beginUpdateAudioPowerWithCompletion___block_invoke;
  v9[3] = &unk_279C68EF8;
  v9[4] = self;
  v10 = completionCopy;
  v7 = completionCopy;
  [performer performBlock:v9];

  v8 = *MEMORY[0x277D85DE8];
}

- (SVXPowerLevelManager)initWithModule:(id)module audioPowerProvider:(id)provider powerLevelListener:(id)listener
{
  moduleCopy = module;
  providerCopy = provider;
  listenerCopy = listener;
  v15.receiver = self;
  v15.super_class = SVXPowerLevelManager;
  v12 = [(SVXPowerLevelManager *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_module, module);
    objc_storeStrong(&v13->_audioPowerProvider, provider);
    objc_storeStrong(&v13->_powerLevelListener, listener);
  }

  return v13;
}

- (SVXPowerLevelManager)initWithModule:(id)module audioPowerProvider:(id)provider
{
  providerCopy = provider;
  moduleCopy = module;
  v8 = objc_alloc_init(SVXPowerLevelListener);
  v9 = [(SVXPowerLevelManager *)self initWithModule:moduleCopy audioPowerProvider:providerCopy powerLevelListener:v8];

  return v9;
}

@end