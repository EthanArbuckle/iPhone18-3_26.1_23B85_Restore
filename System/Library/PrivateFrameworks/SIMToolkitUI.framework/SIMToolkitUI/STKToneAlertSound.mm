@interface STKToneAlertSound
- (STKToneAlertSound)initWithType:(int64_t)type duration:(double)duration;
- (void)_reallyPlaySound;
- (void)_reallyStopSound;
@end

@implementation STKToneAlertSound

- (STKToneAlertSound)initWithType:(int64_t)type duration:(double)duration
{
  v6.receiver = self;
  v6.super_class = STKToneAlertSound;
  result = [(STKBaseSound *)&v6 initWithDuration:duration];
  if (result)
  {
    result->_alertType = type;
  }

  return result;
}

- (void)_reallyPlaySound
{
  v18 = *MEMORY[0x277D85DE8];
  playsOnce = [(STKBaseSound *)self playsOnce];
  v4 = [objc_alloc(MEMORY[0x277D71F58]) initWithType:self->_alertType];
  [v4 setVibrationIdentifier:*MEMORY[0x277D72070]];
  [v4 setShouldRepeat:!playsOnce];
  objc_initWeak(&location, self);
  v5 = [MEMORY[0x277D71F50] alertWithConfiguration:v4];
  alert = self->_alert;
  self->_alert = v5;

  v7 = STKCommonLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = self->_alert;
    *buf = 134218240;
    selfCopy = self;
    v16 = 2048;
    v17 = v8;
    _os_log_impl(&dword_262BB4000, v7, OS_LOG_TYPE_DEFAULT, "<STKSound:%p> - Tone sound: %p", buf, 0x16u);
  }

  v9 = self->_alert;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __37__STKToneAlertSound__reallyPlaySound__block_invoke;
  v11[3] = &unk_279B4C980;
  v11[4] = self;
  objc_copyWeak(&v12, &location);
  [(TLAlert *)v9 playWithCompletionHandler:v11];
  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);

  v10 = *MEMORY[0x277D85DE8];
}

void __37__STKToneAlertSound__reallyPlaySound__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = STKCommonLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v11 = 134218498;
    v12 = v7;
    v13 = 2048;
    v14 = a2;
    v15 = 2114;
    v16 = v5;
    _os_log_impl(&dword_262BB4000, v6, OS_LOG_TYPE_DEFAULT, "<STKSound:%p> - Tone sound completion fired:  type:%ld, error:%{public}@", &v11, 0x20u);
  }

  v8 = *(a1 + 32);
  objc_sync_enter(v8);
  *(*(a1 + 32) + 48) = 1;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _sync_stopSound];

  objc_sync_exit(v8);
  v10 = *MEMORY[0x277D85DE8];
}

- (void)_reallyStopSound
{
  v8 = *MEMORY[0x277D85DE8];
  alert = self->_alert;
  if (alert)
  {
    if (!self->_finishedSoundNormally)
    {
      v4 = STKCommonLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v6 = 134217984;
        selfCopy = self;
        _os_log_impl(&dword_262BB4000, v4, OS_LOG_TYPE_DEFAULT, "<STKSound:%p> - Actually stopping TL sound explicitly.", &v6, 0xCu);
      }

      [(TLAlert *)self->_alert stop];
      alert = self->_alert;
    }

    self->_alert = 0;
  }

  v5 = *MEMORY[0x277D85DE8];
}

@end