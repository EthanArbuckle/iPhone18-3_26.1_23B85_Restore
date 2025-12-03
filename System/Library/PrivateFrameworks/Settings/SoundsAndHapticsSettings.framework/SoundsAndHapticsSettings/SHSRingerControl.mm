@interface SHSRingerControl
- (BOOL)canChangeRingtoneWithButtons;
- (SHSRingerControl)init;
- (SHSRingerControlDelegate)delegate;
- (void)_handleEffectiveVolumeDidChangeNotification:(id)notification;
- (void)_handleServerConnectionDiedNotification:(id)notification;
- (void)_setup;
- (void)_tearDown;
- (void)_updateVolume:(float)volume;
- (void)dealloc;
- (void)reload;
- (void)setVolume:(float)volume;
@end

@implementation SHSRingerControl

- (SHSRingerControl)init
{
  v5.receiver = self;
  v5.super_class = SHSRingerControl;
  v2 = [(SHSRingerControl *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(SHSRingerControl *)v2 _setup];
    [(SHSRingerControl *)v3 reload];
  }

  return v3;
}

- (void)dealloc
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = SHSLogForCategory(1uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v7 = "[SHSRingerControl dealloc]";
    _os_log_impl(&dword_265896000, v3, OS_LOG_TYPE_DEFAULT, "%s: Start.", buf, 0xCu);
  }

  [(SHSRingerControl *)self _tearDown];
  __27__SHSRingerControl_dealloc__block_invoke();
  v5.receiver = self;
  v5.super_class = SHSRingerControl;
  [(SHSRingerControl *)&v5 dealloc];
  v4 = *MEMORY[0x277D85DE8];
}

void __27__SHSRingerControl_dealloc__block_invoke()
{
  v4 = *MEMORY[0x277D85DE8];
  v0 = SHSLogForCategory(1uLL);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    v2 = 136315138;
    v3 = "[SHSRingerControl dealloc]_block_invoke";
    _os_log_impl(&dword_265896000, v0, OS_LOG_TYPE_DEFAULT, "%s: Finish.", &v2, 0xCu);
  }

  v1 = *MEMORY[0x277D85DE8];
}

- (void)_setup
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = SHSLogForCategory(1uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v14 = "[SHSRingerControl _setup]";
    _os_log_impl(&dword_265896000, v3, OS_LOG_TYPE_DEFAULT, "%s: Start.", buf, 0xCu);
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  mEMORY[0x277D26E58] = [MEMORY[0x277D26E58] sharedAVSystemController];
  systemController = self->__systemController;
  self->__systemController = mEMORY[0x277D26E58];

  v7 = MEMORY[0x277D26BA8];
  v12 = *MEMORY[0x277D26BA8];
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v12 count:1];
  [(AVSystemController *)self->__systemController setAttribute:v8 forKey:*MEMORY[0x277D26DD0] error:0];
  v9 = *v7;
  _systemController = [(SHSRingerControl *)self _systemController];
  [defaultCenter addObserver:self selector:sel__handleEffectiveVolumeDidChangeNotification_ name:v9 object:_systemController];

  [defaultCenter addObserver:self selector:sel__handleServerConnectionDiedNotification_ name:*MEMORY[0x277D26D40] object:0];
  __26__SHSRingerControl__setup__block_invoke();
  v11 = *MEMORY[0x277D85DE8];
}

void __26__SHSRingerControl__setup__block_invoke()
{
  v4 = *MEMORY[0x277D85DE8];
  v0 = SHSLogForCategory(1uLL);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    v2 = 136315138;
    v3 = "[SHSRingerControl _setup]_block_invoke";
    _os_log_impl(&dword_265896000, v0, OS_LOG_TYPE_DEFAULT, "%s: Finish.", &v2, 0xCu);
  }

  v1 = *MEMORY[0x277D85DE8];
}

- (void)_tearDown
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = SHSLogForCategory(1uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[SHSRingerControl _tearDown]";
    _os_log_impl(&dword_265896000, v3, OS_LOG_TYPE_DEFAULT, "%s: Start.", &v8, 0xCu);
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [(SHSRingerControl *)self set_volumeInitialized:0];
  v5 = *MEMORY[0x277D26DE8];
  _systemController = [(SHSRingerControl *)self _systemController];
  [defaultCenter removeObserver:self name:v5 object:_systemController];

  [defaultCenter removeObserver:self name:*MEMORY[0x277D26D40] object:0];
  __29__SHSRingerControl__tearDown__block_invoke();
  v7 = *MEMORY[0x277D85DE8];
}

void __29__SHSRingerControl__tearDown__block_invoke()
{
  v4 = *MEMORY[0x277D85DE8];
  v0 = SHSLogForCategory(1uLL);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    v2 = 136315138;
    v3 = "[SHSRingerControl _tearDown]_block_invoke";
    _os_log_impl(&dword_265896000, v0, OS_LOG_TYPE_DEFAULT, "%s: Finish.", &v2, 0xCu);
  }

  v1 = *MEMORY[0x277D85DE8];
}

- (BOOL)canChangeRingtoneWithButtons
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = SHSLogForCategory(1uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[SHSRingerControl canChangeRingtoneWithButtons]";
    _os_log_impl(&dword_265896000, v3, OS_LOG_TYPE_DEFAULT, "%s: Start.", &v8, 0xCu);
  }

  LOBYTE(v8) = 0;
  if (CFPreferencesGetAppBooleanValue(@"buttons-can-change-ringer-volume", @"com.apple.preferences.sounds", &v8))
  {
    v4 = v8 == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = !v4;
  [(SHSRingerControl *)self setAppWantsVolumeChangeEvents:v5];
  __48__SHSRingerControl_canChangeRingtoneWithButtons__block_invoke();
  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

void __48__SHSRingerControl_canChangeRingtoneWithButtons__block_invoke()
{
  v4 = *MEMORY[0x277D85DE8];
  v0 = SHSLogForCategory(1uLL);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    v2 = 136315138;
    v3 = "[SHSRingerControl canChangeRingtoneWithButtons]_block_invoke";
    _os_log_impl(&dword_265896000, v0, OS_LOG_TYPE_DEFAULT, "%s: Finish.", &v2, 0xCu);
  }

  v1 = *MEMORY[0x277D85DE8];
}

void __52__SHSRingerControl_setCanChangeRingtoneWithButtons___block_invoke()
{
  v4 = *MEMORY[0x277D85DE8];
  v0 = SHSLogForCategory(1uLL);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    v2 = 136315138;
    v3 = "[SHSRingerControl setCanChangeRingtoneWithButtons:]_block_invoke";
    _os_log_impl(&dword_265896000, v0, OS_LOG_TYPE_DEFAULT, "%s: Finish.", &v2, 0xCu);
  }

  v1 = *MEMORY[0x277D85DE8];
}

- (void)reload
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = SHSLogForCategory(1uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v10 = "[SHSRingerControl reload]";
    _os_log_impl(&dword_265896000, v3, OS_LOG_TYPE_DEFAULT, "%s: Start.", buf, 0xCu);
  }

  [(SHSRingerControl *)self set_volumeInitialized:0];
  v8 = 0.0;
  _systemController = [(SHSRingerControl *)self _systemController];
  [_systemController getVolume:&v8 forCategory:@"RingtonePreview"];

  v5 = SHSLogForCategory(1uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v10 = "[SHSRingerControl reload]";
    v11 = 2048;
    v12 = v8;
    _os_log_impl(&dword_265896000, v5, OS_LOG_TYPE_DEFAULT, "%s: Retrieved AVSystemController volume: %f.", buf, 0x16u);
  }

  if (![(SHSRingerControl *)self _volumeInitialized])
  {
    *&v6 = v8;
    [(SHSRingerControl *)self _updateVolume:v6];
  }

  __26__SHSRingerControl_reload__block_invoke();
  v7 = *MEMORY[0x277D85DE8];
}

void __26__SHSRingerControl_reload__block_invoke()
{
  v4 = *MEMORY[0x277D85DE8];
  v0 = SHSLogForCategory(1uLL);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    v2 = 136315138;
    v3 = "[SHSRingerControl reload]_block_invoke";
    _os_log_impl(&dword_265896000, v0, OS_LOG_TYPE_DEFAULT, "%s: Finish.", &v2, 0xCu);
  }

  v1 = *MEMORY[0x277D85DE8];
}

- (void)setVolume:(float)volume
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = SHSLogForCategory(1uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v26 = "[SHSRingerControl setVolume:]";
    _os_log_impl(&dword_265896000, v5, OS_LOG_TYPE_DEFAULT, "%s: Start.", buf, 0xCu);
  }

  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  applicationState = [mEMORY[0x277D75128] applicationState];

  switch(applicationState)
  {
    case 0:
      v8 = SHSLogForCategory(1uLL);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        volume = self->_volume;
        _volumeChangeCoalescingCount = [(SHSRingerControl *)self _volumeChangeCoalescingCount];
        *buf = 136315906;
        v26 = "[SHSRingerControl setVolume:]";
        v27 = 2048;
        volumeCopy = volume;
        v29 = 2048;
        volumeCopy6 = volume;
        v31 = 2048;
        v32 = _volumeChangeCoalescingCount;
        _os_log_impl(&dword_265896000, v8, OS_LOG_TYPE_DEFAULT, "%s: (current: %f, newVolume: %f, coalescingCount: %ld).", buf, 0x2Au);
      }

      goto LABEL_15;
    case 1:
      if ([(SHSRingerControl *)self _logFaultCalledForInactive])
      {
        v8 = SHSLogForCategory(1uLL);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          v12 = self->_volume;
          _volumeChangeCoalescingCount2 = [(SHSRingerControl *)self _volumeChangeCoalescingCount];
          *buf = 136315906;
          v26 = "[SHSRingerControl setVolume:]";
          v27 = 2048;
          volumeCopy = v12;
          v29 = 2048;
          volumeCopy6 = volume;
          v31 = 2048;
          v32 = _volumeChangeCoalescingCount2;
          v11 = "%s: Called while application state is 'Inactive' (current: %f, newVolume: %f, coalescingCount: %ld).";
          goto LABEL_12;
        }

LABEL_15:

        break;
      }

      v17 = SHSLogForCategory(1uLL);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        v19 = self->_volume;
        _volumeChangeCoalescingCount3 = [(SHSRingerControl *)self _volumeChangeCoalescingCount];
        *buf = 136315906;
        v26 = "[SHSRingerControl setVolume:]";
        v27 = 2048;
        volumeCopy = v19;
        v29 = 2048;
        volumeCopy6 = volume;
        v31 = 2048;
        v32 = _volumeChangeCoalescingCount3;
        _os_log_fault_impl(&dword_265896000, v17, OS_LOG_TYPE_FAULT, "%s: Called while application state is 'Inactive' (current: %f, newVolume: %f, coalescingCount: %ld).", buf, 0x2Au);
      }

      [(SHSRingerControl *)self set_logFaultCalledForInactive:1];
      break;
    case 2:
      if ([(SHSRingerControl *)self _logFaultCalledForBackground])
      {
        v8 = SHSLogForCategory(1uLL);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          v9 = self->_volume;
          _volumeChangeCoalescingCount4 = [(SHSRingerControl *)self _volumeChangeCoalescingCount];
          *buf = 136315906;
          v26 = "[SHSRingerControl setVolume:]";
          v27 = 2048;
          volumeCopy = v9;
          v29 = 2048;
          volumeCopy6 = volume;
          v31 = 2048;
          v32 = _volumeChangeCoalescingCount4;
          v11 = "%s: Called while application state is 'Background' (current: %f, newVolume: %f, coalescingCount: %ld).";
LABEL_12:
          _os_log_error_impl(&dword_265896000, v8, OS_LOG_TYPE_ERROR, v11, buf, 0x2Au);
          goto LABEL_15;
        }

        goto LABEL_15;
      }

      v18 = SHSLogForCategory(1uLL);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
      {
        v21 = self->_volume;
        _volumeChangeCoalescingCount5 = [(SHSRingerControl *)self _volumeChangeCoalescingCount];
        *buf = 136315906;
        v26 = "[SHSRingerControl setVolume:]";
        v27 = 2048;
        volumeCopy = v21;
        v29 = 2048;
        volumeCopy6 = volume;
        v31 = 2048;
        v32 = _volumeChangeCoalescingCount5;
        _os_log_fault_impl(&dword_265896000, v18, OS_LOG_TYPE_FAULT, "%s: Called while application state is 'Background' (current: %f, newVolume: %f, coalescingCount: %ld).", buf, 0x2Au);
      }

      [(SHSRingerControl *)self set_logFaultCalledForBackground:1];
      break;
  }

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __30__SHSRingerControl_setVolume___block_invoke_27;
  v23[3] = &unk_279BA6720;
  v23[4] = self;
  volumeCopy7 = volume;
  dispatch_async(MEMORY[0x277D85CD0], v23);
  __30__SHSRingerControl_setVolume___block_invoke();
  v16 = *MEMORY[0x277D85DE8];
}

void __30__SHSRingerControl_setVolume___block_invoke()
{
  v4 = *MEMORY[0x277D85DE8];
  v0 = SHSLogForCategory(1uLL);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    v2 = 136315138;
    v3 = "[SHSRingerControl setVolume:]_block_invoke";
    _os_log_impl(&dword_265896000, v0, OS_LOG_TYPE_DEFAULT, "%s: Finish.", &v2, 0xCu);
  }

  v1 = *MEMORY[0x277D85DE8];
}

float __30__SHSRingerControl_setVolume___block_invoke_27(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = v1[3];
  if (result != *(a1 + 40))
  {
    [v1 set_volumeChangeCoalescingCount:{objc_msgSend(*(a1 + 32), "_volumeChangeCoalescingCount") + 1}];
    v4 = dispatch_time(0, 70000000);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __30__SHSRingerControl_setVolume___block_invoke_2;
    v5[3] = &unk_279BA6720;
    v5[4] = *(a1 + 32);
    v6 = *(a1 + 40);
    dispatch_after(v4, MEMORY[0x277D85CD0], v5);
    result = *(a1 + 40);
    *(*(a1 + 32) + 12) = result;
  }

  return result;
}

void __30__SHSRingerControl_setVolume___block_invoke_2(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) set_volumeChangeCoalescingCount:{objc_msgSend(*(a1 + 32), "_volumeChangeCoalescingCount") - 1}];
  if (![*(a1 + 32) _volumeChangeCoalescingCount])
  {
    v2 = SHSLogForCategory(1uLL);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 40);
      v14 = 136315394;
      v15 = "[SHSRingerControl setVolume:]_block_invoke_2";
      v16 = 2048;
      v17 = v3;
      _os_log_impl(&dword_265896000, v2, OS_LOG_TYPE_DEFAULT, "%s: Setting AVSystemController volume to: %f.", &v14, 0x16u);
    }

    v4 = [*(a1 + 32) _systemController];
    LODWORD(v5) = *(*(a1 + 32) + 12);
    [v4 setVolumeTo:@"RingtonePreview" forCategory:v5];

    v6 = [*(a1 + 32) delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = SHSLogForCategory(1uLL);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [*(a1 + 32) delegate];
        v10 = *(a1 + 40);
        v14 = 136315650;
        v15 = "[SHSRingerControl setVolume:]_block_invoke";
        v16 = 2114;
        v17 = *&v9;
        v18 = 2048;
        v19 = v10;
        _os_log_impl(&dword_265896000, v8, OS_LOG_TYPE_DEFAULT, "%s: Calling delegate %{public}@ with new volume value: %f.", &v14, 0x20u);
      }

      v11 = [*(a1 + 32) delegate];
      LODWORD(v12) = *(*(a1 + 32) + 12);
      [v11 ringerControl:v12 volumeValueDidChange:?];
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_updateVolume:(float)volume
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = SHSLogForCategory(1uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136315394;
    v15 = "[SHSRingerControl _updateVolume:]";
    v16 = 2048;
    volumeCopy = volume;
    _os_log_impl(&dword_265896000, v5, OS_LOG_TYPE_DEFAULT, "%s: Start (volume %f).", &v14, 0x16u);
  }

  v6 = self->_volume - volume;
  if (v6 < 0.0)
  {
    v6 = -v6;
  }

  if (v6 > 0.00000011921)
  {
    [(SHSRingerControl *)self set_volumeInitialized:1];
    self->_volume = volume;
    delegate = [(SHSRingerControl *)self delegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      v9 = SHSLogForCategory(1uLL);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        delegate2 = [(SHSRingerControl *)self delegate];
        v14 = 136315650;
        v15 = "[SHSRingerControl _updateVolume:]";
        v16 = 2114;
        volumeCopy = *&delegate2;
        v18 = 2048;
        volumeCopy2 = volume;
        _os_log_impl(&dword_265896000, v9, OS_LOG_TYPE_DEFAULT, "%s: Calling delegate %{public}@ with new volume value: %f.", &v14, 0x20u);
      }

      delegate3 = [(SHSRingerControl *)self delegate];
      *&v12 = volume;
      [delegate3 ringerControl:self volumeValueDidChange:v12];
    }
  }

  __34__SHSRingerControl__updateVolume___block_invoke();
  v13 = *MEMORY[0x277D85DE8];
}

void __34__SHSRingerControl__updateVolume___block_invoke()
{
  v4 = *MEMORY[0x277D85DE8];
  v0 = SHSLogForCategory(1uLL);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    v2 = 136315138;
    v3 = "[SHSRingerControl _updateVolume:]_block_invoke";
    _os_log_impl(&dword_265896000, v0, OS_LOG_TYPE_DEFAULT, "%s: Finish.", &v2, 0xCu);
  }

  v1 = *MEMORY[0x277D85DE8];
}

- (void)_handleEffectiveVolumeDidChangeNotification:(id)notification
{
  v36 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  v5 = SHSLogForCategory(1uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v28 = 136315138;
    v29 = "[SHSRingerControl _handleEffectiveVolumeDidChangeNotification:]";
    _os_log_impl(&dword_265896000, v5, OS_LOG_TYPE_DEFAULT, "%s Start.", &v28, 0xCu);
  }

  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  v7 = [mEMORY[0x277D75128] applicationState] == 1;

  if (v7)
  {
    userInfo = SHSLogForCategory(1uLL);
    if (os_log_type_enabled(userInfo, OS_LOG_TYPE_DEFAULT))
    {
      v28 = 136315138;
      v29 = "[SHSRingerControl _handleEffectiveVolumeDidChangeNotification:]";
      v9 = "%s: App is not active, ignoring.";
LABEL_11:
      _os_log_impl(&dword_265896000, userInfo, OS_LOG_TYPE_DEFAULT, v9, &v28, 0xCu);
    }
  }

  else if ([(SHSRingerControl *)self canChangeRingtoneWithButtons])
  {
    userInfo = [notificationCopy userInfo];
    v10 = [userInfo objectForKeyedSubscript:*MEMORY[0x277D26BD0]];
    v11 = [v10 isEqualToString:@"ExplicitVolumeChange"];
    v12 = [userInfo objectForKeyedSubscript:*MEMORY[0x277D26BB8]];
    if ([v12 isEqualToString:@"RingtonePreview"])
    {
      v13 = 1;
    }

    else
    {
      v13 = [v12 isEqualToString:@"Ringtone"];
    }

    v14 = SHSLogForCategory(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [MEMORY[0x277CCABB0] numberWithBool:v11];
      v16 = [MEMORY[0x277CCABB0] numberWithBool:v13];
      v28 = 136315906;
      v29 = "[SHSRingerControl _handleEffectiveVolumeDidChangeNotification:]";
      v30 = 2114;
      v31 = v15;
      v32 = 2114;
      v33 = v16;
      v34 = 2114;
      v35 = v12;
      _os_log_impl(&dword_265896000, v14, OS_LOG_TYPE_DEFAULT, "%s: Is volume change '%{public}@', is ringtone related category '%{public}@', category '%{public}@'.", &v28, 0x2Au);
    }

    if (v11)
    {
      delegate = [(SHSRingerControl *)self delegate];
      v18 = objc_opt_respondsToSelector();

      if (v18)
      {
        v19 = SHSLogForCategory(1uLL);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = NSStringFromSelector(sel_ringerControlDidObserveEffectiveSystemVolumeChange_);
          delegate2 = [(SHSRingerControl *)self delegate];
          v28 = 136315650;
          v29 = "[SHSRingerControl _handleEffectiveVolumeDidChangeNotification:]";
          v30 = 2114;
          v31 = v20;
          v32 = 2114;
          v33 = delegate2;
          _os_log_impl(&dword_265896000, v19, OS_LOG_TYPE_DEFAULT, "%s: Calling '%{public}@' delegate %{public}@.", &v28, 0x20u);
        }

        delegate3 = [(SHSRingerControl *)self delegate];
        [delegate3 ringerControlDidObserveEffectiveSystemVolumeChange:self];
      }

      if (v13)
      {
        v23 = [userInfo objectForKey:*MEMORY[0x277D26BC8]];
        [v23 floatValue];
        v25 = v24;

        LODWORD(v26) = v25;
        [(SHSRingerControl *)self _updateVolume:v26];
      }
    }
  }

  else
  {
    userInfo = SHSLogForCategory(0);
    if (os_log_type_enabled(userInfo, OS_LOG_TYPE_DEFAULT))
    {
      v28 = 136315138;
      v29 = "[SHSRingerControl _handleEffectiveVolumeDidChangeNotification:]";
      v9 = "%s: 'Change with Buttons' is not active, ignoring.";
      goto LABEL_11;
    }
  }

  __64__SHSRingerControl__handleEffectiveVolumeDidChangeNotification___block_invoke();
  v27 = *MEMORY[0x277D85DE8];
}

void __64__SHSRingerControl__handleEffectiveVolumeDidChangeNotification___block_invoke()
{
  v4 = *MEMORY[0x277D85DE8];
  v0 = SHSLogForCategory(1uLL);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    v2 = 136315138;
    v3 = "[SHSRingerControl _handleEffectiveVolumeDidChangeNotification:]_block_invoke";
    _os_log_impl(&dword_265896000, v0, OS_LOG_TYPE_DEFAULT, "%s: Finish.", &v2, 0xCu);
  }

  v1 = *MEMORY[0x277D85DE8];
}

- (void)_handleServerConnectionDiedNotification:(id)notification
{
  v9 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  v5 = SHSLogForCategory(1uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[SHSRingerControl _handleServerConnectionDiedNotification:]";
    _os_log_impl(&dword_265896000, v5, OS_LOG_TYPE_DEFAULT, "%s: Start.", &v7, 0xCu);
  }

  [(SHSRingerControl *)self _tearDown];
  [(SHSRingerControl *)self _setup];
  [(SHSRingerControl *)self reload];
  __60__SHSRingerControl__handleServerConnectionDiedNotification___block_invoke();

  v6 = *MEMORY[0x277D85DE8];
}

void __60__SHSRingerControl__handleServerConnectionDiedNotification___block_invoke()
{
  v4 = *MEMORY[0x277D85DE8];
  v0 = SHSLogForCategory(1uLL);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    v2 = 136315138;
    v3 = "[SHSRingerControl _handleServerConnectionDiedNotification:]_block_invoke";
    _os_log_impl(&dword_265896000, v0, OS_LOG_TYPE_DEFAULT, "%s: Finish.", &v2, 0xCu);
  }

  v1 = *MEMORY[0x277D85DE8];
}

- (SHSRingerControlDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end