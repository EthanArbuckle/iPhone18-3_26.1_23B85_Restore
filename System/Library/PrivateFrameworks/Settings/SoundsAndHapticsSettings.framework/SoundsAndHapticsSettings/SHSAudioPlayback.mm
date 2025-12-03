@interface SHSAudioPlayback
- (BOOL)isPlayingRingtone;
- (SHSAudioPlayback)init;
- (void)dealloc;
- (void)playRingtoneWithIdentifier:(id)identifier loop:(BOOL)loop;
- (void)setAudioSessionCategory;
- (void)stopPlayback;
- (void)stopRingtoneWithFadeOut:(float)out;
@end

@implementation SHSAudioPlayback

- (SHSAudioPlayback)init
{
  v15.receiver = self;
  v15.super_class = SHSAudioPlayback;
  v2 = [(SHSAudioPlayback *)&v15 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CE65F8]);
    queuePlayer = v2->__queuePlayer;
    v2->__queuePlayer = v3;

    mEMORY[0x277CB83F8] = [MEMORY[0x277CB83F8] sharedInstance];
    audioSession = v2->__audioSession;
    v2->__audioSession = mEMORY[0x277CB83F8];

    objc_initWeak(&location, v2);
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v8 = *MEMORY[0x277D26D40];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __24__SHSAudioPlayback_init__block_invoke;
    v12[3] = &unk_279BA66A8;
    objc_copyWeak(&v13, &location);
    v9 = [defaultCenter addObserverForName:v8 object:0 queue:0 usingBlock:v12];
    serverConnectionDiedToken = v2->__serverConnectionDiedToken;
    v2->__serverConnectionDiedToken = v9;

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __24__SHSAudioPlayback_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained _playerLooper];
  [v1 disableLooping];

  [WeakRetained set_playerLooper:0];
  v2 = [WeakRetained _queuePlayer];
  [v2 removeAllItems];

  [WeakRetained set_queuePlayer:0];
  [WeakRetained set_currentItem:0];
  [WeakRetained setRingtoneIdentifier:0];
  [WeakRetained set_audioSession:0];
  v3 = objc_alloc_init(MEMORY[0x277CE65F8]);
  [WeakRetained set_queuePlayer:v3];

  v4 = [MEMORY[0x277CB83F8] sharedInstance];
  [WeakRetained set_audioSession:v4];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self->__serverConnectionDiedToken];

  _playerLooper = [(SHSAudioPlayback *)self _playerLooper];
  [_playerLooper disableLooping];

  [(SHSAudioPlayback *)self set_playerLooper:0];
  _queuePlayer = [(SHSAudioPlayback *)self _queuePlayer];
  [_queuePlayer removeAllItems];

  [(SHSAudioPlayback *)self set_queuePlayer:0];
  [(SHSAudioPlayback *)self set_currentItem:0];
  [(SHSAudioPlayback *)self setRingtoneIdentifier:0];
  [(SHSAudioPlayback *)self set_audioSession:0];
  v6.receiver = self;
  v6.super_class = SHSAudioPlayback;
  [(SHSAudioPlayback *)&v6 dealloc];
}

- (void)setAudioSessionCategory
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 136315650;
  OUTLINED_FUNCTION_0();
  v5 = v0;
  v6 = v1;
  _os_log_error_impl(&dword_265896000, v2, OS_LOG_TYPE_ERROR, "%s: Failed to set the audio session category to '%{public}@' with error '%{public}@'.", v4, 0x20u);
  v3 = *MEMORY[0x277D85DE8];
}

- (BOOL)isPlayingRingtone
{
  _queuePlayer = [(SHSAudioPlayback *)self _queuePlayer];
  [_queuePlayer rate];
  v4 = v3 > 0.0;

  return v4;
}

- (void)playRingtoneWithIdentifier:(id)identifier loop:(BOOL)loop
{
  loopCopy = loop;
  v45 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v7 = SHSLogForCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"NONE";
    v9 = @"NO";
    if (identifierCopy)
    {
      v8 = identifierCopy;
    }

    v40 = "[SHSAudioPlayback playRingtoneWithIdentifier:loop:]";
    *buf = 136315650;
    v42 = v8;
    v41 = 2114;
    if (loopCopy)
    {
      v9 = @"YES";
    }

    v43 = 2114;
    v44 = v9;
    _os_log_impl(&dword_265896000, v7, OS_LOG_TYPE_DEFAULT, "%s: identifier: '%{public}@', loop '%{public}@'.", buf, 0x20u);
  }

  if (identifierCopy)
  {
    [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel_stopPlayback object:0];
  }

  else
  {
    [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self];
  }

  _playerLooper = [(SHSAudioPlayback *)self _playerLooper];
  [_playerLooper disableLooping];

  if (identifierCopy)
  {
    ringtoneIdentifier = [(SHSAudioPlayback *)self ringtoneIdentifier];
    v12 = [(__CFString *)identifierCopy isEqualToString:ringtoneIdentifier];

    if ((v12 & 1) == 0)
    {
      _queuePlayer = [(SHSAudioPlayback *)self _queuePlayer];
      [_queuePlayer removeAllItems];

      mEMORY[0x277D71F78] = [MEMORY[0x277D71F78] sharedToneManager];
      v15 = [mEMORY[0x277D71F78] filePathForToneIdentifier:identifierCopy];

      v16 = MEMORY[0x277CE65B0];
      v17 = [MEMORY[0x277CBEBC0] fileURLWithPath:v15];
      v18 = [v16 playerItemWithURL:v17];
      [(SHSAudioPlayback *)self set_currentItem:v18];

      if (loopCopy)
      {
        v19 = MEMORY[0x277CE65E0];
        _queuePlayer2 = [(SHSAudioPlayback *)self _queuePlayer];
        _currentItem = [(SHSAudioPlayback *)self _currentItem];
        v22 = [v19 playerLooperWithPlayer:_queuePlayer2 templateItem:_currentItem];
        [(SHSAudioPlayback *)self set_playerLooper:v22];
      }

      else
      {
        [(SHSAudioPlayback *)self set_playerLooper:0];
        _queuePlayer3 = [(SHSAudioPlayback *)self _queuePlayer];
        _currentItem2 = [(SHSAudioPlayback *)self _currentItem];
        v28 = [_queuePlayer3 canInsertItem:_currentItem2 afterItem:0];

        if (v28)
        {
          _queuePlayer2 = [(SHSAudioPlayback *)self _queuePlayer];
          _currentItem3 = [(SHSAudioPlayback *)self _currentItem];
          [_queuePlayer2 insertItem:_currentItem3 afterItem:0];
        }

        else
        {
          _queuePlayer2 = SHSLogForCategory(0);
          if (os_log_type_enabled(_queuePlayer2, OS_LOG_TYPE_ERROR))
          {
            [SHSAudioPlayback playRingtoneWithIdentifier:_queuePlayer2 loop:?];
          }
        }
      }

      [(SHSAudioPlayback *)self setRingtoneIdentifier:identifierCopy];
    }

    [(SHSAudioPlayback *)self setAudioSessionCategory];
    v30 = SHSLogForCategory(0);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v40 = "[SHSAudioPlayback playRingtoneWithIdentifier:loop:]";
      _os_log_impl(&dword_265896000, v30, OS_LOG_TYPE_DEFAULT, "%s: Activating audio session prior to playback.", buf, 0xCu);
    }

    _audioSession = [(SHSAudioPlayback *)self _audioSession];
    v37 = 0;
    v32 = [_audioSession setActive:1 error:&v37];
    v33 = v37;

    if ((v32 & 1) == 0)
    {
      v34 = SHSLogForCategory(0);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        [SHSAudioPlayback playRingtoneWithIdentifier:loop:];
      }
    }

    _queuePlayer4 = [(SHSAudioPlayback *)self _queuePlayer];
    [_queuePlayer4 play];
  }

  else
  {
    _queuePlayer5 = [(SHSAudioPlayback *)self _queuePlayer];
    [_queuePlayer5 pause];

    _queuePlayer6 = [(SHSAudioPlayback *)self _queuePlayer];
    [_queuePlayer6 removeAllItems];

    [(SHSAudioPlayback *)self set_currentItem:0];
    [(SHSAudioPlayback *)self setRingtoneIdentifier:0];
    v25 = dispatch_time(0, 150000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __52__SHSAudioPlayback_playRingtoneWithIdentifier_loop___block_invoke;
    block[3] = &unk_279BA66D0;
    block[4] = self;
    dispatch_after(v25, MEMORY[0x277D85CD0], block);
  }

  v36 = *MEMORY[0x277D85DE8];
}

void __52__SHSAudioPlayback_playRingtoneWithIdentifier_loop___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = SHSLogForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v10 = "[SHSAudioPlayback playRingtoneWithIdentifier:loop:]_block_invoke";
    _os_log_impl(&dword_265896000, v2, OS_LOG_TYPE_DEFAULT, "%s: Deactivating Audio Session.", buf, 0xCu);
  }

  v3 = [*(a1 + 32) _audioSession];
  v8 = 0;
  v4 = [v3 setActive:0 withOptions:1 error:&v8];
  v5 = v8;

  if ((v4 & 1) == 0)
  {
    v6 = SHSLogForCategory(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __52__SHSAudioPlayback_playRingtoneWithIdentifier_loop___block_invoke_cold_1();
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)stopRingtoneWithFadeOut:(float)out
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = SHSLogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *&v6 = out;
    v7 = [MEMORY[0x277CCABB0] numberWithFloat:v6];
    LODWORD(buf.value) = 136315394;
    *(&buf.value + 4) = "[SHSAudioPlayback stopRingtoneWithFadeOut:]";
    LOWORD(buf.flags) = 2114;
    *(&buf.flags + 2) = v7;
    _os_log_impl(&dword_265896000, v5, OS_LOG_TYPE_DEFAULT, "%s: fadeOutDuration '%{public}@'.", &buf, 0x16u);
  }

  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self];
  _queuePlayer = [(SHSAudioPlayback *)self _queuePlayer];
  CMTimeMake(&buf, (out * 100.0), 100);
  [_queuePlayer setRate:&buf withVolumeRampDuration:0.0];

  objc_initWeak(&buf, self);
  v9 = dispatch_time(0, (out * 1000000000.0) + 10);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__SHSAudioPlayback_stopRingtoneWithFadeOut___block_invoke;
  block[3] = &unk_279BA66F8;
  objc_copyWeak(&v12, &buf);
  dispatch_after(v9, MEMORY[0x277D85CD0], block);
  objc_destroyWeak(&v12);
  objc_destroyWeak(&buf);
  v10 = *MEMORY[0x277D85DE8];
}

void __44__SHSAudioPlayback_stopRingtoneWithFadeOut___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _playerLooper];
  [v2 disableLooping];

  [WeakRetained set_playerLooper:0];
  v3 = [WeakRetained _queuePlayer];
  [v3 pause];

  v4 = [WeakRetained _queuePlayer];
  [v4 removeAllItems];

  [WeakRetained setRingtoneIdentifier:0];
  v5 = dispatch_time(0, 150000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__SHSAudioPlayback_stopRingtoneWithFadeOut___block_invoke_2;
  block[3] = &unk_279BA66D0;
  block[4] = WeakRetained;
  dispatch_after(v5, MEMORY[0x277D85CD0], block);
}

void __44__SHSAudioPlayback_stopRingtoneWithFadeOut___block_invoke_2(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = SHSLogForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v10 = "[SHSAudioPlayback stopRingtoneWithFadeOut:]_block_invoke_2";
    _os_log_impl(&dword_265896000, v2, OS_LOG_TYPE_DEFAULT, "%s: Deactivating Audio Session.", buf, 0xCu);
  }

  v3 = [*(a1 + 32) _audioSession];
  v8 = 0;
  v4 = [v3 setActive:0 withOptions:1 error:&v8];
  v5 = v8;

  if ((v4 & 1) == 0)
  {
    v6 = SHSLogForCategory(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __44__SHSAudioPlayback_stopRingtoneWithFadeOut___block_invoke_2_cold_1();
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)stopPlayback
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = SHSLogForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[SHSAudioPlayback stopPlayback]";
    _os_log_impl(&dword_265896000, v3, OS_LOG_TYPE_DEFAULT, "%s", &v6, 0xCu);
  }

  _queuePlayer = [(SHSAudioPlayback *)self _queuePlayer];

  if (_queuePlayer)
  {
    [(SHSAudioPlayback *)self playRingtoneWithIdentifier:0 loop:0];
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)playRingtoneWithIdentifier:(os_log_t)log loop:.cold.1(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "[SHSAudioPlayback playRingtoneWithIdentifier:loop:]";
  _os_log_error_impl(&dword_265896000, log, OS_LOG_TYPE_ERROR, "%s: Player could not insert item.", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)playRingtoneWithIdentifier:loop:.cold.2()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_265896000, v0, v1, "%s: Failed to activate audio session with error '%{public}@'.", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void __52__SHSAudioPlayback_playRingtoneWithIdentifier_loop___block_invoke_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_265896000, v0, v1, "%s: Failed to deactivate audio session with error '%{public}@'.", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void __44__SHSAudioPlayback_stopRingtoneWithFadeOut___block_invoke_2_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_265896000, v0, v1, "%s: Failed to deactivate audio session with error '%{public}@'.", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

@end