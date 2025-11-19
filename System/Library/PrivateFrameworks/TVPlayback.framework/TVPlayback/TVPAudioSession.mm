@interface TVPAudioSession
+ (id)sharedInstance;
- (TVPAudioSession)init;
- (void)_mediaServicesReset:(id)a3;
- (void)_updateIfNecessary;
- (void)dealloc;
- (void)setConfigurationBlock:(id)a3;
@end

@implementation TVPAudioSession

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__TVPAudioSession_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_onceToken_0 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_0, block);
  }

  v2 = sharedInstance_sSharedInstance;

  return v2;
}

uint64_t __33__TVPAudioSession_sharedInstance__block_invoke(uint64_t a1)
{
  v2 = os_log_create("com.apple.AppleTV.playback", "TVPAudioSession");
  v3 = sLogObject_6;
  sLogObject_6 = v2;

  sharedInstance_sSharedInstance = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

- (TVPAudioSession)init
{
  v5.receiver = self;
  v5.super_class = TVPAudioSession;
  v2 = [(TVPAudioSession *)&v5 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    [v3 addObserver:v2 selector:sel__mediaServicesReset_ name:*MEMORY[0x277CB80A0] object:0];
  }

  return v2;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = TVPAudioSession;
  [(TVPAudioSession *)&v4 dealloc];
}

- (void)setConfigurationBlock:(id)a3
{
  v4 = [a3 copy];
  configurationBlock = self->_configurationBlock;
  self->_configurationBlock = v4;

  [(TVPAudioSession *)self _updateIfNecessary];
}

- (void)_mediaServicesReset:(id)a3
{
  v4 = sLogObject_6;
  if (os_log_type_enabled(sLogObject_6, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_26CEDD000, v4, OS_LOG_TYPE_DEFAULT, "Received AVAudioSessionMediaServicesWereResetNotification", v5, 2u);
  }

  [(TVPAudioSession *)self _updateIfNecessary];
}

- (void)_updateIfNecessary
{
  configurationBlock = self->_configurationBlock;
  if (configurationBlock)
  {
    v3 = [MEMORY[0x277CB83F8] sharedInstance];
    configurationBlock[2](configurationBlock, v3);
  }
}

@end