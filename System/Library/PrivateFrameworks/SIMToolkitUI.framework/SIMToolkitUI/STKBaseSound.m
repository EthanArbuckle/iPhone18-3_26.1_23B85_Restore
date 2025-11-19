@interface STKBaseSound
- (STKBaseSound)initWithDuration:(double)a3;
- (void)_sync_playSound;
- (void)_sync_stopSound;
- (void)dealloc;
- (void)playSound;
- (void)stopSound;
@end

@implementation STKBaseSound

- (STKBaseSound)initWithDuration:(double)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v10.receiver = self;
  v10.super_class = STKBaseSound;
  v4 = [(STKBaseSound *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v4->_duration = a3;
    v4->_playsOnce = BSFloatLessThanOrEqualToFloat();
    v6 = STKCommonLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      playsOnce = v5->_playsOnce;
      *buf = 134218496;
      v12 = v5;
      v13 = 2048;
      v14 = a3;
      v15 = 1024;
      v16 = playsOnce;
      _os_log_impl(&dword_262BB4000, v6, OS_LOG_TYPE_DEFAULT, "<STKSound:%p> - Created sound with duration: %f, playsOnce: %d", buf, 0x1Cu);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)dealloc
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = STKCommonLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v7 = self;
    _os_log_impl(&dword_262BB4000, v3, OS_LOG_TYPE_DEFAULT, "<STKSound:%p> - Dealloc.", buf, 0xCu);
  }

  [(STKBaseSound *)self stopSound];
  v5.receiver = self;
  v5.super_class = STKBaseSound;
  [(STKBaseSound *)&v5 dealloc];
  v4 = *MEMORY[0x277D85DE8];
}

- (void)playSound
{
  obj = self;
  objc_sync_enter(obj);
  [(STKBaseSound *)obj _sync_playSound];
  objc_sync_exit(obj);
}

- (void)stopSound
{
  obj = self;
  objc_sync_enter(obj);
  [(STKBaseSound *)obj _sync_stopSound];
  objc_sync_exit(obj);
}

- (void)_sync_playSound
{
  v18 = *MEMORY[0x277D85DE8];
  [(STKBaseSound *)self _sync_stopSound];
  if (!self->_isPlaying)
  {
    v3 = STKCommonLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v15 = self;
      _os_log_impl(&dword_262BB4000, v3, OS_LOG_TYPE_DEFAULT, "<STKSound:%p> - Playing sound.", buf, 0xCu);
    }

    self->_isPlaying = 1;
    [(STKBaseSound *)self _reallyPlaySound];
    if (!self->_playsOnce)
    {
      v4 = STKCommonLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        duration = self->_duration;
        *buf = 134218240;
        v15 = self;
        v16 = 2048;
        v17 = duration;
        _os_log_impl(&dword_262BB4000, v4, OS_LOG_TYPE_DEFAULT, "<STKSound:%p> - Scheduling sound stop timer with interval duration: %f.", buf, 0x16u);
      }

      objc_initWeak(buf, self);
      v6 = MEMORY[0x277CF0D00];
      v7 = self->_duration;
      v8 = dispatch_get_global_queue(33, 0);
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __31__STKBaseSound__sync_playSound__block_invoke;
      v12[3] = &unk_279B4C958;
      v12[4] = self;
      objc_copyWeak(&v13, buf);
      v9 = [v6 scheduledTimerWithFireInterval:v8 queue:v12 handler:v7];
      timer = self->_timer;
      self->_timer = v9;

      objc_destroyWeak(&v13);
      objc_destroyWeak(buf);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __31__STKBaseSound__sync_playSound__block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = STKCommonLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 134217984;
    v7 = v3;
    _os_log_impl(&dword_262BB4000, v2, OS_LOG_TYPE_DEFAULT, "<STKSound:%p> - Stop timer fired!.", &v6, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained stopSound];

  v5 = *MEMORY[0x277D85DE8];
}

- (void)_sync_stopSound
{
  v8 = *MEMORY[0x277D85DE8];
  if (self->_isPlaying)
  {
    v3 = STKCommonLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 134217984;
      v7 = self;
      _os_log_impl(&dword_262BB4000, v3, OS_LOG_TYPE_DEFAULT, "<STKSound:%p> - Stopping sound explicitly.", &v6, 0xCu);
    }

    [(STKBaseSound *)self _reallyStopSound];
    self->_isPlaying = 0;
    [(BSTimer *)self->_timer cancel];
    timer = self->_timer;
    self->_timer = 0;
  }

  v5 = *MEMORY[0x277D85DE8];
}

@end