@interface SRUIFAudioPowerLevelUpdater
- (SRUIFAudioPowerLevelUpdater)initWithDelegate:(id)a3;
- (SRUIFAudioPowerLevelUpdaterDelegate)_delegate;
- (void)audioPowerDidUpdateWithType:(unint64_t)a3 averagePower:(float)a4 peakPower:(float)a5;
- (void)dealloc;
- (void)sessionStateDidChangeTo:(int64_t)a3 isAttending:(BOOL)a4;
- (void)startObservingUpdates;
- (void)stopObservingUpdates;
@end

@implementation SRUIFAudioPowerLevelUpdater

- (void)startObservingUpdates
{
  inputAudioPowerUpdater = self->_inputAudioPowerUpdater;
  if (!inputAudioPowerUpdater)
  {
    v4 = objc_alloc(MEMORY[0x277D01638]);
    v5 = [v4 initWithQueue:MEMORY[0x277D85CD0] frequency:1 delegate:self];
    v6 = self->_inputAudioPowerUpdater;
    self->_inputAudioPowerUpdater = v5;

    inputAudioPowerUpdater = self->_inputAudioPowerUpdater;
  }

  [(CSAudioPowerServiceClient *)inputAudioPowerUpdater beginUpdate];
}

- (void)stopObservingUpdates
{
  [(CSAudioPowerServiceClient *)self->_inputAudioPowerUpdater endUpdate];
  [(CSAudioPowerServiceClient *)self->_inputAudioPowerUpdater invalidate];
  inputAudioPowerUpdater = self->_inputAudioPowerUpdater;
  self->_inputAudioPowerUpdater = 0;

  self->_averageAudioPower = 0.0;
}

- (SRUIFAudioPowerLevelUpdater)initWithDelegate:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SRUIFAudioPowerLevelUpdater;
  v5 = [(SRUIFAudioPowerLevelUpdater *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
  }

  return v6;
}

- (void)sessionStateDidChangeTo:(int64_t)a3 isAttending:(BOOL)a4
{
  v4 = a4;
  v17 = *MEMORY[0x277D85DE8];
  v7 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v9 = SRUIFSiriSessionStateGetDescription(a3);
    v11 = 136315650;
    v12 = "[SRUIFAudioPowerLevelUpdater sessionStateDidChangeTo:isAttending:]";
    v13 = 2112;
    v14 = v9;
    v15 = 1024;
    v16 = v4;
    _os_log_impl(&dword_26951F000, v8, OS_LOG_TYPE_DEFAULT, "%s #IntuitiveConversation state=%@ attending=%d", &v11, 0x1Cu);
  }

  if (a3 != 3)
  {
    if (a3 != 1 && (a3 || !v4))
    {
      goto LABEL_7;
    }

LABEL_9:
    [(SRUIFAudioPowerLevelUpdater *)self startObservingUpdates];
    goto LABEL_10;
  }

  if (v4)
  {
    goto LABEL_9;
  }

LABEL_7:
  [(SRUIFAudioPowerLevelUpdater *)self stopObservingUpdates];
LABEL_10:
  v10 = *MEMORY[0x277D85DE8];
}

- (void)audioPowerDidUpdateWithType:(unint64_t)a3 averagePower:(float)a4 peakPower:(float)a5
{
  self->_averageAudioPower = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  *&v8 = a4;
  *&v9 = a5;
  [WeakRetained audioPowerUpdaterDidUpdate:self averagePower:v8 peakPower:v9];
}

- (void)dealloc
{
  [(CSAudioPowerServiceClient *)self->_inputAudioPowerUpdater endUpdate];
  [(CSAudioPowerServiceClient *)self->_inputAudioPowerUpdater invalidate];
  inputAudioPowerUpdater = self->_inputAudioPowerUpdater;
  self->_inputAudioPowerUpdater = 0;

  v4.receiver = self;
  v4.super_class = SRUIFAudioPowerLevelUpdater;
  [(SRUIFAudioPowerLevelUpdater *)&v4 dealloc];
}

- (SRUIFAudioPowerLevelUpdaterDelegate)_delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end